#include "csapp.h"


/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

typedef struct cache_block{
  char *obj;
  unsigned int block_size;
  char *cnt;
  struct cache_block *prev;
  struct cache_block *next;
}cache_block;

typedef struct{
  cache_block *head;
  cache_block *tail;
  unsigned int size;
  sem_t rmutex, wmutex;
}cache_list;

cache_list *init_cache_list();
void init_cache_block(cache_block *block);
void set_block(cache_block *block, char *cnt, unsigned int block_size);
void del_block(cache_block *block);
void del_list(cache_list *list);
void add_block(cache_block *block, cache_list *list);
cache_block *find_cache(cache_list *list, char *cnt);
cache_block *del_cache(cache_list *list, char *cnt);
cache_block *get_list(cache_list *list);

int get_obj(cache_list *list, char *cnt, char *obj, unsigned int *block_size);
int add_obj(cache_list *list, char *cnt, char *obj, unsigned int block_size);
