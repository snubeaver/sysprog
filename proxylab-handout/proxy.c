// 2012-11933 stu202    Port: 34308

#include <stdio.h>
#include "cache.h"
#include "csapp.h"
// implemented cache.c in seperate file


/*

  Implementation order

 1. we will build sequential web proxy

 2. Thread-based concurrent proxy

 3. Cache efficient proxy

*/


/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
//User Agent header
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *accept_hdr = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n";
static const char *accept_encoding_hdr = "Accept-Encoding: gzip, deflate\r\n";
static const char *connection_hdr = "Connection: close\r\n";
static const char *proxy_connection_hdr = "Proxy-Connection: close\r\n";


cache_list *list;

void proxy(int *arg);
int readReq(char *request, int client, char *host, char *url, char *port,
   char * protocol, char *method, char *version, char *cache_cnt, char *dir);
void parse_port(host_temp, host, port);


int main(int argc, char *argv [] )
{
  // get port number
  int port;
  if(port<=0||port>65636){
    printf("invalid port number");
  }
  if (argc < 2){
    fprintf(stderr, "Usage: %s [Port]\n", argv[0]);
  }
  port = atoi(argv[1]);
  int listenfd = Open_listenfd(port); //start listening
  signal(SIGPIPE, SIG_IGN); // Ignore Sigpipe

  /*

  now start sequential proxy

  1) listen

  2) connect - accept

  3) pthread create

  */

  list =init_cache_list();
  int connfdp;
  while (1){
    struct sockaddr_in clientaddr;
    socklen_t clientlen = sizeof(clientaddr);
    pthread_t tid;
    // Malloc(csapp) for unique thread addr
    int *threadp = Malloc(sizeof(int));
    // struct socakaddr SA from csapp
    *threadp = Accept(listenfd, (SA *) &clientaddr, &clientlen);
    // controlled create from csapp
    Pthread_create(&tid, NULL, proxy, connfdp);
  }
  del_list(list);
  return 0;
}

void proxy(int *arg){
  // detach pthread to save resources
  Pthread_detach(pthread_self());

  int client = (int) *arg;
  int server = -1;
  char request[MAX_OBJECT_SIZE];
  char host[MAX_OBJECT_SIZE],url[MAX_OBJECT_SIZE], port[MAX_OBJECT_SIZE], protocol[MAX_OBJECT_SIZE],
  version[MAX_OBJECT_SIZE], dir[MAX_OBJECT_SIZE], method[MAX_OBJECT_SIZE];
  unsigned int size;
  char cache_cnt[MAX_OBJECT_SIZE],obj[MAX_OBJECT_SIZE];
  int read_result;
  read_result= readReq(request, client, host, url, port, protocol, method, version, cache_cnt, dir);
  fflush(stdout);

  if(!read_result){
    if(!get_obj(list, cache_cnt, obj, &size)){
      rio_writen(client, obj, size);
      Close(client);
      return;
    }
    else{
      server= Open_clientfd(host, atoi(port));
      if(server<0){
        if(server==-1){
          fprintf(stderr, "%s\n", "connection fail");
        }
        else{
          fprintf(stderr, "%s\n", "dns error");
        }
      }
      rio_writen(server, request, strlen(request));

      // forward response
      rio_t server_rio;
      char temp2[MAXBUF];
      unsigned int size=0, length =0;
      int full =1;
      unsigned int cache_size =0;
      obj[0]='\0';
      Rio_readinitb(&server_rio, server);
      do{
        if(Rio_readlineb(&server_rio, temp2, MAXBUF)==-1) return -1;
        if(full){
          if(strlen(temp2)+cache_size>MAX_OBJECT_SIZE) full=0;
          memcpy(obj+size, temp2, strlen(temp2));
          cache_size+=strlen(temp2);
        }
        if(strstr(temp2, "Content-length")){
          sscanf(temp2, "Content-length: %d", &size);
        }
        if(strstr(temp2, "Content-Length")){
          sscanf(temp2, "Content-Length: %d", &size);
        }
        rio_writen(client, temp2, strlen(temp2));
      }while(strcmp(temp2, "\r\n")!=0&&strlen(temp2));
      if(size){
        while(size>MAXBUF){
          if((length=rio_readnb(&server_rio, temp2, MAXBUF))==-1)
            fprintf(stderr, "%s\n","ln 146: obj not sent to client" );
          if(full){
            if(strlen(temp2)+cache_size>MAX_OBJECT_SIZE) full=0;
            memcpy(obj+size, temp2, strlen(temp2));
            cache_size+=strlen(temp2);
          }
          if(rio_writen(client, temp2, length)==-1){
            fprintf(stderr, "%s\n","ln 153: obj not sent to client" );
          }
          size-=MAXBUF;
        }

        if(size){
          if((length = Rio_readnb(&server_rio, temp2, size))==-1){
            fprintf(stderr, "%s\n","ln 160: obj not sent to client" );
          }
          if (full){
            if(strlen(temp2)+cache_size>MAX_OBJECT_SIZE) full=0;
            memcpy(obj+size, temp2, strlen(temp2));
            cache_size+=strlen(temp2);
          }
          if(rio_writen(client, temp2, length)==-1){
            fprintf(stderr, "%s\n","ln 168: obj not sent to client" );
          }
        }
      }
      else{
        while((length = rio_readnb(&server_rio, temp2, MAXLINE)) > 0) {
    			if(full){
            if(strlen(temp2)+cache_size>MAX_OBJECT_SIZE) full=0;
            memcpy(obj+size, temp2, strlen(temp2));
            cache_size+=strlen(temp2);
          }
    			if (rio_writen(client, temp2, length) == -1)
            fprintf(stderr, "%s\n","ln 180: obj not sent to client" );
    		}
      }
      if(full){
        if(add_obj(list, cache_cnt, obj, cache_size)==-1){
          fprintf(stderr, "%s\n", "ln 185: cache add error");
        }
      }

    }
    return 0;
  }


}

int readReq(char *request, int client, char *host, char *url, char *port,
   char * protocol, char *method, char *version, char *cache_cnt, char *dir){
  char temp[MAXBUF];
  rio_t client_rio;
  char hostport[MAX_OBJECT_SIZE];
  Rio_readinitb(&client_rio, client);
  if(Rio_readlineb(&client_rio, temp, MAXBUF)==-1) return -1;
  if((!strstr(temp,"/"))||!strlen(temp)) return -1;
  strcpy(dir, "/");
  sscanf(temp, "%s %s %s", method, url, version);
  if(strstr(url,"://")){
    sscanf(url, "%[^:]://%[^/]%s", protocol, hostport, dir);
  }
  else sscanf(url, "%[^/]%s", hostport, dir);
  parse_port(hostport, host, port);

  // CASE 1 : GET
  if(strstr(method, "GET")){
    strcpy(request, method);
    strcat(request, " ");
    strcat(request, dir);
    strcat(request, " ");
    strcat(request, "HTTP/1.0\r\n");

    if(strlen(host)){
      strcpy(temp, "Host: ");
      strcat(temp, host);
      strcat(temp, ":");
      strcat(temp, port);
      strcat(temp, "\r\n");
      strcat(request, temp);
    }

    strcat(request, user_agent_hdr);
    strcat(request, accept_hdr);
    strcat(request, accept_encoding_hdr);
    strcat(request, connection_hdr);
    strcat(request, proxy_connection_hdr);

    while(Rio_readlineb(&client_rio, temp, MAXBUF)>0){
      if(!strcmp(temp, "\r\n")){
        strcat(request,"\r\n");
        break;
      }
      else if(strstr(temp, "User-Agent:")||strstr(temp, "Accept:")||
              strstr(temp, "Accept-Encoding:") || strstr(temp, "Connection:") ||
				      strstr(temp, "Proxy Connection:") || strstr(temp, "Cookie:")){
                continue;
              }
      else if (strstr(temp, "Host:")){
        if(!strlen(host)){
          sscanf(temp, "Host: %s", hostport);
          parse_port(hostport, host, port);
          strcpy(temp, "Host: ");
          strcat(temp, host);
					strcat(temp, ":");
					strcat(temp, port);
					strcat(temp, "\r\n");
					strcat(request, temp);
        }
      }
      else{
        strcat(request, temp);
      }
    }

    strcpy(cache_cnt, host);
    strcat(cache_cnt, ":");
    strcat(cache_cnt, port);
    strcat(cache_cnt, dir);
    return 0;
  }

  return 1;

}

void parse_port(hostport, host, port){
  char *host_temp = strstr(hostport,":");
  if(host_temp){
    *host_temp ='\0';
    strcpy(port, host_temp+1);
  }else strcpy(port, "80"); // 80 port as default
  strcpy(host,hostport);
}
