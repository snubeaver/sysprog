/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
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
#define INITCHUNKSIZE (1<<6)
#define CHUNKSIZE (1<<12)

#define LIST 20
#define REALLOC_BUFFER (1<<7)

// Read, write in location p
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val) | GET_TAG(p))
#define PUT_NOTAG(p, val) (*(unsigned int *)(p) = (val))

// set pointer for free block
#define SET_PTR(p, ptr) (*(unsigned int *)(p) = (unsigned int)(ptr))

//get size, alloc bit from address p
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

// modify or get tag from address p
#define GET_TAG(p) (GET(p) & 0x2)
#define SET_RATAG(p) (GET(p) |= 0x2)
#define REMOVE_RATAG(p) (GET(p) &= ~0x2)

//block's header and footer
#define HDRP(ptr) ((char *)(ptr) - WSIZE)
#define FTRP(ptr) ((char *)(ptr) + GET_SIZE(HDRP(ptr)) - DSIZE)

// address for adjacent blocks`
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

// my function implemented
void *free_lists[LIST];
static void *extend_heap(size_t size);
static void *coalesce(void *ptr);
static void *place(void *ptr, size_t asize);
static void insert_node(void *ptr, size_t size);
static void delete_node(void *ptr);

static void *extend_heap(size_t size){
  size_t tempsize=size;
  void * ptr = mem_sbrk(tempsize);
  if(ptr==(void *)-1)
    return NULL;
  //header
  PUT_NOTAG(HDRP(ptr), PACK(tempsize,0));
  //footer
  PUT_NOTAG(FTRP(ptr), PACK(tempsize,0));
  PUT_NOTAG(HDRP(NEXT_BLKP(ptr)), PACK(0,1));

  //add to free
  insert_node(ptr, tempsize);

  return coalesce(ptr);
}


//insert node to freelist
static void insert_node(void *ptr, size_t size){
  int i;
  void *next = ptr;
  void *prev = NULL;
  for (i=0;i<LIST-1; i++){
    if(size>1){
      size =size>>1;
    }
    else break;
  }
  next = free_lists[i];
  //find empty spot in free list
  while(next !=NULL && size <GET_SIZE(HDRP(next))){
    prev = next;
    next = PRED(next);
  }
  // actual insert
  if(next != NULL){
    //between list
    if( prev != NULL){
      SET_PTR(PRED_PTR(ptr),next);
      SET_PTR(SUCC_PTR(next), ptr);
      SET_PTR(PRED_PTR(prev), ptr);
      SET_PTR(SUCC_PTR(ptr), prev);
    }
    // at start of list
    else{
      SET_PTR(PRED_PTR(ptr), next);
      SET_PTR(SUCC_PTR(next), ptr);
      SET_PTR(SUCC_PTR(ptr), NULL);
      free_lists[i]= ptr;
    }
  }
  // actual insert when end of the list
  else{
    if(prev!=NULL){
      SET_PTR(PRED_PTR(ptr),NULL);
      SET_PTR(SUCC_PTR(ptr), prev);
      SET_PTR(PRED_PTR(prev),ptr);
    }
    else{
      SET_PTR(PRED_PTR(ptr),NULL);
      SET_PTR(SUCC_PTR(ptr),NULL);
      free_lists[i]=ptr;
    }
  }
  return ;
}

//delete node in segregated free list
static void delete_node(void *ptr){
  int i;
  int size = GET_SIZE(HDRP(ptr));

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

static void * coalesce(void *ptr){
  // check if near nodes allocated
  size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(ptr)));
  size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
  size_t size = GET_SIZE(HDRP(ptr));

  // if prev is realloced, no coalesce
  if(GET_TAG(HDRP(PREV_BLKP(ptr)))==1){
    prev_alloc = 1;
  }
  /*
  case 1 : prev alloc & next_alloc
   - cannot coalesce anything

  case 2 : prev alloc & !next_alloc
   - coalesce with next block

  case 3 : !prev alloc & next_alloc
   - can coalesce with prev block

  case 4 : !prev_allc & !next_alloc
   - can coalesce both prev, next block
  */

  // case 1
  if(prev_alloc==1 && next_alloc==1){
    return ptr;
  }
  // case 2
  else if(prev_alloc==1 && next_alloc==0){
    delete_node(ptr);
    delete_node(NEXT_BLKP(ptr));
    size += GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
  }
  //case 3
  else if (prev_alloc==0 && next_alloc==1){
    delete_node(ptr);
    delete_node(PREV_BLKP(ptr));
    size += GET_SIZE(HDRP(PREV_BLKP(ptr)));
    ptr = PREV_BLKP(ptr);
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
  }
  //case 4
  else if (prev_alloc==0&&next_alloc==0){
    delete_node(ptr);
    delete_node(PREV_BLKP(ptr));
    delete_node(NEXT_BLKP(ptr));
    size+= GET_SIZE(HDRP(PREV_BLKP(ptr))) + GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    ptr = PREV_BLKP(ptr);
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
  }
  // insert made freelist
  insert_node(ptr, size);
  return ptr;
}

//decide whether to splic the space
static void * place(void * ptr, size_t asize){
  size_t size = GET_SIZE(HDRP(ptr));
  size_t remain = size - asize;
  delete_node(ptr);
  // do not split
  if(remain <= DSIZE*2) {
    PUT(HDRP(ptr), PACK(size,1));
    PUT(FTRP(ptr), PACK(size,1));
  }
  // split
  else if(asize >= 100){
    PUT(HDRP(ptr), PACK(remain,0));
    PUT(FTRP(ptr), PACK(remain,0));
    PUT_NOTAG(HDRP(NEXT_BLKP(ptr)), PACK(asize,1));
    PUT_NOTAG(FTRP(NEXT_BLKP(ptr)), PACK(asize,1));
    //insert splited remain to free list
    insert_node(ptr,remain);
    return NEXT_BLKP(ptr);
  }
  //split, put at the beginning of block
  else{
    PUT(HDRP(ptr), PACK(asize,1));
    PUT(FTRP(ptr), PACK(asize,1));
    PUT_NOTAG(HDRP(NEXT_BLKP(ptr)), PACK(remain,0));
    PUT_NOTAG(FTRP(NEXT_BLKP(ptr)), PACK(remain,0));
    insert_node(NEXT_BLKP(ptr),remain);
  }
  return ptr;
}


/*
 * mm_init - initialize the malloc package.

allocate initial heap area
return -1 if there is any error

 */
int mm_init(void)
{
  int i;
  // initialize free list
  for ( i=0; i<LIST; i++){
    free_lists[i]= NULL;
  }
  char * heap;
  if((long)(heap = mem_sbrk(4*WSIZE))==-1)
    return -1;
  PUT_NOTAG(heap, 0 );
  //header
  PUT_NOTAG(heap + WSIZE, PACK(DSIZE,1));
  PUT_NOTAG(heap + WSIZE *2, PACK(DSIZE,1));
  PUT_NOTAG(heap + WSIZE *3, PACK(0,1));
  if (extend_heap(INITCHUNKSIZE)==NULL)
    return -1;
  return 0;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize;
    size_t extendsize;
    void *ptr = NULL;
    if (size == 0)
        return NULL;
    //align size to DSIZE
    if (size <= DSIZE) {
        asize = 2 * DSIZE;
    }
    else {
        asize = ALIGN(size+DSIZE);
    }
    int i = 0;
    size_t searchsize = asize;
    // Search for free block in segregated list
    while (i < LIST) {
        if ((i == LIST - 1) || ((searchsize <= 1) && (free_lists[i] != NULL))) {
            ptr = free_lists[i];
            // pass blocks that are small or has reallocation bit
            while ((ptr != NULL) && ((asize > GET_SIZE(HDRP(ptr))) || (GET_TAG(HDRP(ptr))))){
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
    ptr = place(ptr, asize);
    return ptr;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    size_t size = GET_SIZE(HDRP(ptr));
    //remove realloc bit
    REMOVE_RATAG(HDRP(NEXT_BLKP(ptr)));
    //init the block
    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size,0));
    insert_node(ptr, size);
    coalesce(ptr);

    //doesnt return anything
    return;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    // void *oldptr = ptr;
    // void *newptr;
    // size_t copySize;
    //
    // newptr = mm_malloc(size);
    // if (newptr == NULL)
    //   return NULL;
    // copySize = *(size_t *)((char *)oldptr - SIZE_T_SIZE);
    // if (size < copySize)
    //   copySize = size;
    // memcpy(newptr, oldptr, copySize);
    // mm_free(oldptr);
    // return newptr;
    if(size == 0 )
        return NULL;
    void * oldptr = ptr;
    size_t newsize =size;   //size of the new block
    int remain; //the remain size after allocation
    int extend; //size of heap extension
    int blockbuff;

    //align block size
    if( size <= DSIZE)
    {
        newsize = 2*DSIZE;
    }
    else
    {
        newsize =ALIGN(size + DSIZE);
    }
    //add overhead requirment for block size
    newsize += REALLOC_BUFFER;
    //calculate the block buffer
    blockbuff = GET_SIZE(HDRP(ptr)) - newsize;
    //not enough space
    if(blockbuff < 0)
    {
        //check if the next block is free or the epilogue block
        if(GET_ALLOC(HDRP(NEXT_BLKP(ptr)))==0 || GET_SIZE(HDRP(NEXT_BLKP(ptr))) == 0)
        {
            //calculate the space missing
            remain = GET_SIZE(HDRP(ptr)) + GET_SIZE(HDRP(NEXT_BLKP(ptr))) - newsize;
            //not enough space
            if(remain < 0)
            {
                extend = MAX ( -remain, CHUNKSIZE);
                //can not extend the heap
                if(extend_heap(extend) == NULL)
                    return NULL;
                remain += extend;
            }

            delete_node(NEXT_BLKP(ptr));

            //do not split block, update the info of the current block
            PUT_NOTAG(HDRP(ptr), PACK(newsize + remain,1));
            PUT_NOTAG(FTRP(ptr), PACK(newsize + remain,1));

        }
        else
        {
            //enough space to allocated into the block
            oldptr = mm_malloc(newsize -DSIZE);
            memcpy( oldptr, ptr, MIN(size,newsize));
            mm_free(ptr);
        }
        blockbuff = GET_SIZE(HDRP(oldptr)) - newsize;
    }

    if(blockbuff < 2 * REALLOC_BUFFER)
    {
        SET_RATAG(HDRP(NEXT_BLKP(oldptr)));
    }
    //return the reallocation block
    return oldptr;
}
