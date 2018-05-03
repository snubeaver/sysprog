// 2012-11933 stu202
#include "cachelab.h"
#include <stdlib.h>
#include <stdio.h>
#include <getopt.h>
#include <strings.h>
#include <math.h>

// need 64bit for mem address
typedef unsigned long long int mem_addr_t;

//struct for cache
typedef struct{
  int s; // cache bits
  int b; // block bits
  int E; // num of cachelines in set
  int S; // num of sets
  int B; //block size in bytes
  int hits;
  int misses;
  int evictions;
} cache_param_t;

//struct for mem address
typedef struct {
  int valid;
  int last_access; //last accessed line
  mem_addr_t tag;
  char *block;
} set_line;

//cache set made of several lines
typedef struct{
  set_line *lines;
} cache_set;

//cache made of several sets
typedef struct{
  cache_set *sets;
} cache;

int verbosity;



//cache = set*lines per set* blocks per line
//build initial set with s,E,b
cache build_cache (long long num_sets, int num_lines, long long block_size){
  cache newCache;
  cache_set set;
  set_line line;
  int set_i;
  int line_i;
  //allocate sets in cache
  newCache.sets = (cache_set *) malloc(sizeof(cache_set)*num_sets);
  for (set_i=0; set_i< num_sets; set_i++){
    //allocate lines for each set
    set.lines = (set_line *) malloc(sizeof(set_line)*num_lines);
    newCache.sets[set_i]=set;
    for (line_i=0; line_i<num_lines;line_i++){
      //allocate block offset bits for each line
      line.last_access =0;
      line.valid =0;
      line.tag =0;
      set.lines[line_i] =line;
    }
  }
  return newCache;
}

//to free malloced mem
void clear_cache(cache target_cache, long long num_sets, int num_lines, long long block_size){
  int set_i;
  for (set_i=0; set_i<num_sets;set_i++){
    cache_set set = target_cache.sets[set_i];
    if(set.lines!=NULL){
      free(set.lines);
    }
  }

  if(target_cache.sets !=NULL){
    free(target_cache.sets);
  }
}

//find empty line in set, empty line has valid tag as 0
int get_empty_line(cache_set set, cache_param_t par){
  set_line line;
  int num_lines = par.E;
  int i;
  for(i=0;i<num_lines;i++){
    line = set.lines[i];
    if(line.valid==0){
      return i;
    }
  }
  return 0;
}

//find least recently used cache and return index
int get_LRU(cache_set target_cache, cache_param_t par, int *used_lines){
  int num_lines=par.E;
  int max_used = target_cache.lines[0].last_access;
  int min_used = target_cache.lines[0].last_access;
  int min_used_i = 0;

  set_line line;
  int line_i;
  for (line_i=1; line_i<num_lines;line_i ++){
    line = target_cache.lines[line_i];
    if(min_used>line.last_access){
      min_used_i=line_i;
      min_used = line.last_access;
    }
    if(max_used<line.last_access){
      max_used=line.last_access;
    }
  }
  used_lines[0] =min_used;
  used_lines[1] =max_used;
  return min_used_i;
}

cache_param_t simulate(cache target_cache, cache_param_t par, mem_addr_t add){
  int line_i;
  //flag bit fof cache full
  int cache_full =1;
  int num_lines = par.E;
  int prev_hits = par.hits;

  int tag_size=(64 - (par.s +par.b));
  mem_addr_t input_tag = add >>(par.s+par.b);
  unsigned long long temp = add << (tag_size);
  unsigned long long set_i = temp >> (tag_size+par.b);

  cache_set query_set = target_cache.sets[set_i];
  for(line_i=0; line_i<num_lines;line_i++){
    set_line line = query_set.lines[line_i];
    if(line.valid){
      if(line.tag==input_tag){
        line.last_access ++;
        par.hits++;
        query_set.lines[line_i]=line;
      }
    }
    else if(!(line.valid)&&(cache_full)){
      cache_full =0;
    }
  }
  if(prev_hits==par.hits){
    par.misses++;
  }
  else{
    return par;
  }

  int *used_lines = (int*) malloc(sizeof(int)*2);
  int min_used_i = get_LRU(query_set,par,used_lines);
  if(cache_full){
    par.evictions++;
    query_set.lines[min_used_i].tag = input_tag;
    query_set.lines[min_used_i].last_access = used_lines[1]+1;

  }
  else{
    int empty_i = get_empty_line(query_set, par);
    query_set.lines[empty_i].tag = input_tag;
    query_set.lines[empty_i].valid =1;
    query_set.lines[empty_i].last_access = used_lines[1]+1;

  }
  free(used_lines);
  return par;
}

long long bit_pow(int exp){
  long long result =1;
  result = result<<exp;
  return result;
}


int main(int argc, char **argv)
{
  cache target_cache;
  cache_param_t par;
  bzero(&par, sizeof(par));

  long long num_set;
  long long block_size;

  FILE *read_trace;
  char cmd;
  mem_addr_t add;
  int size;
  char *trace_file;
  char c;
  while( (c=getopt(argc,argv,"s:E:b:t:vh"))!=-1){
    switch (c) {
      case 's':
        par.s = atoi(optarg);
        break;
      case 'E':
        par.E = atoi(optarg);
        break;
      case 'b':
        par.b = atoi(optarg);
        break;
      case 't':
        trace_file = optarg;
        break;
      case 'v':
        verbosity =1;
        break;

      default:
        exit(1);
    }
  }
    if (par.s == 0 || par.E == 0 || par.b == 0 || trace_file == NULL) {
        printf("%s: Missing required command line argument\n", argv[0]);
        exit(1);
    }
    num_set = pow(2.0, par.s);
    block_size = bit_pow(par.b);
    par.hits = 0;
    par.misses = 0;
    par.evictions = 0;

    target_cache = build_cache(num_set, par.E, block_size); /* build_cache takes as input sets, lines, and blocks */
    read_trace = fopen(trace_file,"r");
    if (read_trace != NULL) {
      while (fscanf(read_trace, " %c %llx,%d", &cmd, &add, &size) == 3) {
        switch(cmd) {
          case 'I':
            break;
          case 'L':
            par = simulate(target_cache, par, add);
            break;
          case 'S':
            par = simulate(target_cache, par, add);
            break;
          case 'M':
            par = simulate(target_cache, par, add);
            par = simulate(target_cache, par, add);
            break;
          default:
            break;
        }
      }
  }

  printSummary(par.hits, par.misses, par.evictions);
  clear_cache(target_cache, num_set, par.E, block_size);
  fclose(read_trace);
  return 0;
}
