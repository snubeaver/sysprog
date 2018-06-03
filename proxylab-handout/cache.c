#include "cache.h"

void init_cache_block(cache_block *block){
  if(block){
    block->next = NULL;
    block->prev = NULL;
    block->block_size =0 ;
  }
}


cache_list *init_cache_list(){
  cache_list *newList = Malloc(sizeof(*newList));
  newList->head =NULL;
  newList->tail =NULL;
  // newList->rmutex = Malloc(sizeof(*newList->rmutex));
  // newList->wmutex = Malloc(sizeof(*newList->wmutex));
  newList->size = MAX_CACHE_SIZE;
  return newList;
}

void set_block(cache_block *block, char *cnt, unsigned int block_size){
  if(block){
    block->cnt = Malloc(sizeof(char)*block_size);
    memcpy(block->cnt, cnt, block_size);
    block->block_size = block_size;
  }
}

void del_block(cache_block *block){
  if(block){
    if(block->cnt) free(block->cnt);
    if(block->obj) free(block->obj);
    free(block);
  }
}

void del_list(cache_list *list){
  if(list){
    cache_block *target = list->head;
    while(target){
      cache_block *cpy = target;
      target = cpy->next;
      del_block(cpy);
    }
    // free(list->rmutex);
    // free(list->wmutex);
    free(list);
  }
}
void add_block(cache_block *block, cache_list *list){
  if(list){
    if(block){
      while(list->size<block->block_size){
        cache_block *target = get_list(list);
        del_block(target);
      }
      if(!list->tail){
        list->head = list->tail = block;
        block->prev = list->tail;
        list->tail = block;
        list->size -= block->block_size;
      }
      else{
        list->tail->next = block;
        block->prev = list->tail;
        list->tail = block;
        list->size -= block->block_size;
      }
    }
  }
}
cache_block *find_cache(cache_list *list, char *cnt){
  if(list){
    cache_block *target = list->head;
    while(target){
      if(!strcmp(target->cnt, cnt)) return target;
      target = target->next;
    }
  }
  return NULL;
}
cache_block *del_cache(cache_list *list, char *cnt){
  if(list){
    cache_block *target = find_cache(list, cnt);
    if(target){
      if(target==list->head) target= get_list(list);
      else{
        if(target->prev){
          target->prev->next =target->next;
        }
        if(target->next){
          target->next->prev = target->prev;
        }
        else{
          list->tail=target->prev;
          list->size += target->block_size;
        }
      }
      target->prev =NULL;
      target->next =NULL;
    }
    return target;
  }
  return NULL;
}
cache_block *get_list(cache_list *list){
  if(list){
    cache_block *block = list->head;
    if(block){
      if(block->next){
        block->next->prev = NULL;
        list->size +=block->block_size;
      }
      if(list->head == list->tail){
        list->tail=NULL;
        list->head = block->next;
        return block;
      }
    }
  }
  return NULL;
}

int get_obj(cache_list *list, char *cnt, char *obj, unsigned int *block_size){
  if(!list){
    return -1;
  }
  // sem_wait(list->rmutex);
  cache_block *target = find_cache(list, cnt);
  if(!target){
    // sem_post(list->rmutex);
    return -1;
  }
  *block_size = target->block_size;
  memcpy(obj, target->obj, *block_size);
  // sem_post(list->rmutex);
  // sem_wait(list->wmutex);
  add_block(del_cache(cnt,list), list);
  // sem_post(list->wmutex);
}
int add_obj(cache_list *list, char *cnt, char *obj, unsigned int block_size){
  if(!list){
    return -1;
  }
  cache_block *target = Malloc(sizeof(*target));
  init_cache_block(target);
  set_block(target, cnt, block_size);
  if(!target) return -1;
  target->obj = Malloc(sizeof(char)*block_size);
  memcpy(target->obj, obj, block_size);
  // sem_wait(list->wmutex);
  add_block(target,list);
  // sem_post(list->wmutex);
  return 0;
}
