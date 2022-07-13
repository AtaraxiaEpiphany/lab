
#include<time.h>
#include "sdb.h"
#include<limits.h>
#include<errno.h>
typedef struct {
    int pc,n;
    char from,to,via;
} Frame;

static uint8_t pmem[MSIZE];
uint8_t* guest_to_host(paddr_t paddr){
    return pmem + paddr - MBASE;
}
paddr_t host_to_guest(uint8_t* haddr){
    return haddr - pmem + MBASE;
}
//long strtol(const char *restrict nptr,char **restrict endptr,int base)
int main(int argc,char *argv[]){
    int base;
    char *endptr,*str;
    long val;
    if(argc <2){
        fprintf(stderr,"Usage: %s str [base]\n",argv[0]);
        exit(EXIT_FAILURE);
    }
    str = argv[1];
    base = (argc>2) ? atoi(argv[2]):0;
    errno =0;
    val = strtol(str,&endptr,base);
    if(errno !=0){
        perror("strtol");
        exit(EXIT_FAILURE);
    }
    if(endptr == str){
        fprintf(stderr,"No digits were found\n");
        exit(EXIT_FAILURE);
    }
    printf("strtol() returned %ld \n",val);
    if(*endptr != '\0'){
        printf("Further characters after number: \"%s\"\n",endptr);
    }
    exit(EXIT_FAILURE);
}

