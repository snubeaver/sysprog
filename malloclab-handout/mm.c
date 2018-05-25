/* 2012-11933 stu202

  among three type of lists, {Implicit list, Explicit list, Segregated list}
  we will choose segregated list, since it keeps list of free lists so that we can efficiently allocate memories

    allocated list
  ------------------------------------------------------
  |        |                                   |       |
  | size/a |     payload                       | size/a|
  |        |                                   |       |
  ------------------------------------------------------
    free list
  ------------------------------------------------------
  |        |        |        |                 |       |
  | size/a |  Next  |  Prev  |  (empty space)  | size/a|
  |        |        |        |                 |       |
  ------------------------------------------------------

    free list will be segregated by byte size,
    so in nth free list, the size will be 2^n to c^n+1
    we are going to use shift func to make this happen




 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

// macros
#define WSIZE 4
#define DSIZE 8
// initial page size
#define INITCHUNKSIZE (1<<6)
// page size
#define CHUNKSIZE (1<<12)

// BUFFER for relloc
#define BUFFER (1<<7)

// Read, write in location p
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val) | GET_TAG(p))
// clear put
#define PUT_NOTAG(p, val) (*(unsigned int *)(p) = (val))

// set pointer for free block
#define SET_PTR(p, ptr) (*(unsigned int *)(p) = (unsigned int)(ptr))

//get size, alloc bit from address p
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

// modify or get tag from address p
#define GET_TAG(p) (GET(p) & 0x2)
#define SET_RATAG(p) (GET(p) |= 0x2) //set realloc tag
#define REMOVE_RATAG(p) (GET(p) &= ~0x2) //clear realloc tag

//block's header and footer
#define HEAD(ptr) ((char *)(ptr) - WSIZE)
#define FOOT(ptr) ((char *)(ptr) + GET_SIZE(HEAD(ptr)) - DSIZE)

// address for adjacent blocks`
// we can gain it by adding or subtracting size of a adjacent block to current ptr
#define NEXT_BLKP(ptr) ((char *)(ptr) + GET_SIZE((char *)(ptr) - WSIZE))
#define PREV_BLKP(ptr) ((char *)(ptr) - GET_SIZE((char *)(ptr) - DSIZE))

// for free block list
#define PRED_PTR(ptr) ((char *)(ptr))
#define SUCC_PTR(ptr) ((char *)(ptr) + WSIZE)

// for segregated list
#define PRED(ptr) (*(char **)(ptr))
#define SUCC(ptr) (*(char **)(SUCC_PTR(ptr)))


#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))
#define PACK(size, alloc) ((size) | (alloc))

// segregated list, max to 20
#define LIST 20
void *free_lists[LIST];


//heap checker
#define CHECKER 0
#ifdef DEBUG
# define CHECKER 1
#endif


// my function implemented
static void insert_node(void *ptr, size_t size);
static void delete_node(void *ptr);
static void *extend_heap(size_t size);
static void *coalesce(void *ptr);
static void *place(void *ptr, size_t asize);  // make place function for efficient placement
static void mm_check(int checker);



/*
  insert_node

 insert_node function will insert node to freelist
 for we are using segregated free list, we will check the size
 and check which segregated list we should use

 insertion will be done from the front of the list
*/
static void insert_node(void *ptr, size_t size){
  // i will be the index for which free list we use
  int i;

  // initialize next, prev pointer
  void *next = ptr;
  void *prev = NULL;

  //select size
  for (i=0;i<LIST-1; i++){
    if(size>1){
      size =size>>1;
    }
    else break;
  }
  next = free_lists[i];
  //find empty spot in free list
  while(next !=NULL && size <GET_SIZE(HEAD(next))){
    prev = next;
    next = PRED(next);
  }


  // actual insert
  if(next != NULL){
    //insertion at start of list
    if( prev == NULL){
      SET_PTR(PRED_PTR(ptr), next);
      SET_PTR(SUCC_PTR(next), ptr);
      SET_PTR(SUCC_PTR(ptr), NULL);
      free_lists[i]= ptr;
    }
    // insertion between list
    else{
      SET_PTR(PRED_PTR(ptr),next);
      SET_PTR(SUCC_PTR(next), ptr);
      SET_PTR(PRED_PTR(prev), ptr);
      SET_PTR(SUCC_PTR(ptr), prev);
    }
  }
  // insertion at the end of the list
  else{
    if(prev==NULL){
      SET_PTR(PRED_PTR(ptr),NULL);
      SET_PTR(SUCC_PTR(ptr),NULL);
      free_lists[i]=ptr;
    }
    else{
      SET_PTR(PRED_PTR(ptr),NULL);
      SET_PTR(SUCC_PTR(ptr), prev);
      SET_PTR(PRED_PTR(prev),ptr);
    }
  }
  return ;
}






/*
  delete_node

  delete_node function will lete node from segregated free list

*/
static void delete_node(void *ptr){
  // i will be index for which list to delete
  int i=0;
  int size = GET_SIZE(HEAD(ptr));

  // choose list
  while((i<LIST-1)&&(size>1)){
    size = size>>1;
    i++;
  }
  // if not head of list
  if(PRED(ptr) != NULL){
    // not at end of list
    if(SUCC(ptr)!=NULL){
      SET_PTR(SUCC_PTR(PRED(ptr)) , SUCC(ptr));
      SET_PTR(PRED_PTR(SUCC(ptr)) , PRED(ptr));
    }
    else {
      SET_PTR(SUCC_PTR(PRED(ptr)), NULL);
      free_lists[i]=PRED(ptr);
    }
  }
  // if head of list
  else{
    if(SUCC(ptr)!=NULL){
      SET_PTR(PRED_PTR(SUCC(ptr)), NULL);
    }
    else{
      free_lists[i] =NULL;
    }
  }
  return;
}

/*
  extend_heap

  we will use mem_sbrk func to extend space,
  then we will add it to free list by using insert_node function
*/
static void *extend_heap(size_t size){
  // target_size is size that we would like to extend to
  size_t target_size=size;
  // mem_sbrk will extend area of data segment and return endline address
  void * ptr = mem_sbrk(target_size);

  // if there are not enough space
  if(ptr==(void *)-1)
    return NULL;

  //header
  PUT_NOTAG(HEAD(ptr), PACK(target_size,0));
  //footer
  PUT_NOTAG(FOOT(ptr), PACK(target_size,0));
  PUT_NOTAG(HEAD(NEXT_BLKP(ptr)), PACK(0,1));

  //add to free
  insert_node(ptr, target_size);

  // see if we can coalesce with adjacent blocks
  return coalesce(ptr);
}

/*
  coalesce

  coalesce will join prev block and next block if they are free
  so first we will see if prev, next bock are allocated,
  then we will do certain actions as following cases

  case 1 : prev alloc & next_alloc
   - cannot coalesce anything

  case 2 : prev alloc & !next_alloc
   - coalesce with next block

  case 3 : !prev alloc & next_alloc
   - can coalesce with prev block

  case 4 : !prev_allc & !next_alloc
   - can coalesce both prev, next block
*/

static void * coalesce(void *ptr){
  // check if near nodes allocated
  size_t prev_alloc = GET_ALLOC(HEAD(PREV_BLKP(ptr)));
  size_t next_alloc = GET_ALLOC(HEAD(NEXT_BLKP(ptr)));
  size_t size = GET_SIZE(HEAD(ptr));

  // if prev is realloced, no coalesce
  if(GET_TAG(HEAD(PREV_BLKP(ptr)))==1){
    prev_alloc = 1;
  }

  // case 1
  if(prev_alloc==1 && next_alloc==1){
    return ptr;
  }
  // case 2
  else if(prev_alloc==1 && next_alloc==0){
    delete_node(ptr);
    delete_node(NEXT_BLKP(ptr));
    size += GET_SIZE(HEAD(NEXT_BLKP(ptr)));
    PUT(HEAD(ptr), PACK(size, 0));
    PUT(FOOT(ptr), PACK(size, 0));
  }
  //case 3
  else if (prev_alloc==0 && next_alloc==1){
    delete_node(ptr);
    delete_node(PREV_BLKP(ptr));
    size += GET_SIZE(HEAD(PREV_BLKP(ptr)));
    ptr = PREV_BLKP(ptr);
    PUT(HEAD(ptr), PACK(size, 0));
    PUT(FOOT(ptr), PACK(size, 0));
  }
  //case 4
  else if (prev_alloc==0&&next_alloc==0){
    delete_node(ptr);
    delete_node(PREV_BLKP(ptr));
    delete_node(NEXT_BLKP(ptr));
    size+= GET_SIZE(HEAD(PREV_BLKP(ptr))) + GET_SIZE(HEAD(NEXT_BLKP(ptr)));
    ptr = PREV_BLKP(ptr);
    PUT(HEAD(ptr), PACK(size, 0));
    PUT(FOOT(ptr), PACK(size, 0));
  }
  // insert made freelist
  insert_node(ptr, size);
  return ptr;
}

/*
  place

  place will set header and footer for newly allocated block,
  and also it will split there are enough space left



*/
static void * place(void * ptr, size_t asize){
  // get size of current block and remainder
  size_t size = GET_SIZE(HEAD(ptr));
  size_t remainder = size - asize;

  // delete block from freelist
  delete_node(ptr);

  // if remainder is too small do not split
  if(remainder <= DSIZE*2) {
    PUT(HEAD(ptr), PACK(size,1));
    PUT(FOOT(ptr), PACK(size,1));
  }
  // split
  else if(asize >= 80){
    // set this block to remainder blok if asize is bigger than
    // can have more efficiency from deviding size to two parts
    // and if asize is too big cutting remainder first performs better
    // in range of 110~ 80
    PUT(HEAD(ptr), PACK(remainder,0));
    PUT(FOOT(ptr), PACK(remainder,0));

    // next block to asized block
    PUT_NOTAG(HEAD(NEXT_BLKP(ptr)), PACK(asize,1));
    PUT_NOTAG(FOOT(NEXT_BLKP(ptr)), PACK(asize,1));

    //insert splited remain to free list
    insert_node(ptr,remainder);
    return NEXT_BLKP(ptr);
  }
  //split, put at the beginning of block
  else{
    // vice versa
    PUT(HEAD(ptr), PACK(asize,1));
    PUT(FOOT(ptr), PACK(asize,1));
    PUT_NOTAG(HEAD(NEXT_BLKP(ptr)), PACK(remainder,0));
    PUT_NOTAG(FOOT(NEXT_BLKP(ptr)), PACK(remainder,0));
    insert_node(NEXT_BLKP(ptr),remainder);
  }
  return ptr;
}


/*
mm_init

allocate initial heap area
return -1 if there is any error

 */
int mm_init(void)
{
  // again i will indicate which seg list
  int i;
  // initialize free list
  for ( i=0; i<LIST; i++){
    free_lists[i]= NULL;
  }
  char * heap;

  // get space for initial heap
  if((long)(heap = mem_sbrk(4*WSIZE))==-1)
    return -1;

  // making structure described in the top comment
  PUT_NOTAG(heap, 0 );
  PUT_NOTAG(heap + WSIZE, PACK(DSIZE,1));
  PUT_NOTAG(heap + WSIZE *2, PACK(DSIZE,1));
  PUT_NOTAG(heap + WSIZE *3, PACK(0,1));

  //extend empty heap to initial page size
  if (extend_heap(INITCHUNKSIZE)==NULL)
    return -1;
  return 0;
}

/*
 * mm_malloc

  allocate new block from freelists
  we will extend heap if neccesary
  and finally call place function
 */
void *mm_malloc(size_t size)
{
    mm_check(CHECKER);

    // for extension
    size_t asize;
    size_t extendsize;
    void *ptr = NULL;

    // prevent error
    if (size == 0)
        return NULL;

    //align size to DSIZE
    if (size <= DSIZE) {
        asize = 2 * DSIZE;
    }
    else {
        asize = ALIGN(size+DSIZE);
    }


    // i will indicate which size of block we should choose from segregated list
    int i = 0;
    size_t searchsize = asize;
    // Search for free block in segregated list
    while (i < LIST) {
        if ((i == LIST - 1) || ((searchsize <= 1) && (free_lists[i] != NULL))) {
            ptr = free_lists[i];
            // pass blocks that are small or has reallocation bit
            while ((ptr != NULL) && ((asize > GET_SIZE(HEAD(ptr))) || (GET_TAG(HEAD(ptr))))){
                ptr = PRED(ptr);
            }
            if (ptr != NULL)
                break;
        }
        searchsize >>= 1;
        i++;
    }


    // if cant find enough free space call extend_heap
    if (ptr == NULL) {
        extendsize = MAX(asize, CHUNKSIZE);
        if ((ptr = extend_heap(extendsize)) == NULL)
            return NULL;
    }

    // place the block
    ptr = place(ptr, asize);
    return ptr;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    mm_check(CHECKER);
    size_t size = GET_SIZE(HEAD(ptr));
    //remove realloc bit
    REMOVE_RATAG(HEAD(NEXT_BLKP(ptr)));
    //init the block
    PUT(HEAD(ptr), PACK(size, 0));
    PUT(FOOT(ptr), PACK(size,0));
    insert_node(ptr, size);
    coalesce(ptr);

    //doesnt return anything
    return;
}

/*
 mm_realloc

 we need certain bit to check if next block is safe for reallocation
 if there are not enough heap space for next mm_realloc it will return error
 so in this case we will mark next block with realloc tag, so that
 it will not be used for allocation or coalesce

 if heap is extended, or realloc happens this bit will be cleared

 */
void *mm_realloc(void *ptr, size_t size){


    void * oldptr = ptr;
    // size of new block
    size_t newsize =size;
    // remainder is the leftover when splited
    int remainder;
    // amount of extended space
    int extend;
    // size fo block buffer
    int blockbuff;

    // prevent error
    if(size == 0 )
        return NULL;


    //alignment
    if( size <= DSIZE){
        newsize = 2*DSIZE;
    }
    else{
        newsize =ALIGN(size + DSIZE);
    }
    // add overhead buffer size to newsize and get blockbuff
    newsize += BUFFER;
    blockbuff = GET_SIZE(HEAD(ptr)) - newsize;
    //if overhead gets bigger and lack space
    // allocate more space
    if(blockbuff < 0){
        if(GET_ALLOC(HEAD(NEXT_BLKP(ptr)))==0 || GET_SIZE(HEAD(NEXT_BLKP(ptr))) == 0){
            remainder = GET_SIZE(HEAD(ptr)) + GET_SIZE(HEAD(NEXT_BLKP(ptr))) - newsize;
            // if not enough space
            if(remainder < 0){
                // make extension
                extend = MAX ( -remainder, CHUNKSIZE);
                if(extend_heap(extend) == NULL)
                    return NULL;
                remainder += extend;
            }
            // no split
            delete_node(NEXT_BLKP(ptr));
            PUT_NOTAG(HEAD(ptr), PACK(newsize + remainder,1));
            PUT_NOTAG(FOOT(ptr), PACK(newsize + remainder,1));
        }
        // has space in block
        else{
            oldptr = mm_malloc(newsize -DSIZE);
            memcpy( oldptr, ptr, MIN(size,newsize));
            mm_free(ptr);
        }
        blockbuff = GET_SIZE(HEAD(oldptr)) - newsize;
    }

    if(blockbuff < 2 * BUFFER){
        SET_RATAG(HEAD(NEXT_BLKP(oldptr)));
    }
    // return old pointer
    return oldptr;
}




void mm_check(int checker){
  if(checker==0){
    return ;
  }
  else{
    void *ptr;
    int size;
    for (int i = 0; i < LIST; i++) {
    ptr = free_lists[i];
    while (ptr != NULL) {
      size = GET_SIZE(HEAD(ptr));
      int temp_list = 0;
      int temp_size = size;
      while ((temp_list < LIST - 1) && (temp_size > 1)) {
        temp_size >>= 1;
        temp_list++;
      }
      if (i != temp_list) {
        printf("seg list in size %d is in list %d rather %d\n",
          size, i, temp_list);
      }
      if (GET_ALLOC(HEAD(ptr)) != 0) {
        printf("invalid header : %d\n", GET_ALLOC(FOOT(ptr)));
      }
      if (GET_ALLOC(FOOT(ptr)) != 0) {
        printf("invalid footer : %d\n", GET_ALLOC(FOOT(ptr)));
      }
      ptr = PRED(ptr);
    }
  }

  }


}
