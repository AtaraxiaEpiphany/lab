#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdint.h>
#include<validN.h>
//#include<fmt_print.h>
#include<overload.h>
#define MBASE 0x80000000
#define MSIZE 0x8000000

static uint32_t img[] = {
    0x80484900,
    0x12345678,
    1,2,3,4,5,6,
};

static uint8_t pmem[MSIZE];

uint8_t* guest_to_host( uint32_t paddr ){return pmem + paddr -MBASE; }

uint32_t host_to_guest( uint8_t *haddr ){return haddr - pmem +MBASE; }

static int  parseAdd(char *addr,ValidN *n ){
    int ret = -1;
    //ValidN n;
    judgeValidity(n,addr);
    if( n->valid != 1 ){
        fprintf(stderr,"Invalid number:%s \n",addr);
        return ret;
    }
    else
        return -ret;
}

static int setFmt(char *cmd ,char *fmt,char *size){
    int index = -1; // find the index of error output format if it occurs.
    char fmt_temp = *fmt;
    char size_temp = *size;
    for(int i =0;i<strlen(cmd);i++){
        switch( cmd[i] ){
            case 'x':
                *fmt = 'x';
                break;
            case 'o':
                *fmt = 'o';
                break;
            case 'd':
                *fmt = 'd';
                break;
            case 'u':
                *fmt = 'u';
                break;
            case 'b':
                *size = 'b';
                break;
            case 'h':
                *size = 'h';
                break;
            case 'w':
                *size = 'w';
                break;
            case 'g':
                *size = 'g';
                break;
            default :
                *fmt = fmt_temp;
                *size = size_temp;
                index = i;
                break;
        }
        if(index >=   0 )
            break;
    }
    return index;
}

int main(int argc,char *argv[]){
    memcpy(pmem,img,sizeof(img));
    int n = 1;
    char fmt = 'x';
    char size = 'w';
    ValidN vn;
    uint32_t paddr;
    switch( argc){
        case 2:
            if( parseAdd( argv[argc - 1], &vn) < 0 )
                break;
            else{
                paddr = vn.value;
                x_print(n,fmt,size, guest_to_host( paddr) );
            }
            break;
        case 3:
            printf("Need to implement!\n");
            if( parseAdd( argv[ argc -1], &vn) < 0 )
                break;
            else{
                paddr = vn.value;
                char *cmd;
                n = strtol( argv[1], &cmd,10);
                int index = setFmt( cmd, &fmt, &size);
                if( cmd == argv[1] ){ 
                    n = 1;
                    //no numbers is given.
                }
                if(index < 0 ){
                    x_print(n,fmt,size, guest_to_host( paddr) );
                    break;
                }
                fprintf(stderr,"Unknown output format: %c.\n",cmd[index] );
                return -1;
            }
            break;
        default:
            fprintf(stderr,"Usage: %s FMT Address.\n",argv[0] );
            return -1;
            break;
    }
    return 0;
}




