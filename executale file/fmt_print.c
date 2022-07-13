#include<stdio.h>
#define uint8_t   unsigned char 
#define uint16_t  unsigned short 
#define uint32_t  unsigned int 
#define uint64_t  unsigned long
void fmt_print(char fmt,char size,char *haddr){
    switch(fmt){
        case 'x':
            if(size == 'b'){
                printf("0x%02x",*haddr);
                break;
            }else if(size == 'h'){
                printf("0x%04x",*haddr);
                break;
            }else if(size =='w'){
                printf("0x%08x",*haddr);
                break;
            }else if(size =='g'){
                printf("0x%016lx",*haddr);
                break;
            }
        case 'o':
                 if(size == 'g'){
                    printf("0%lo",*haddr);
                    break; 
                 }else {
                    printf("0%-o",*haddr);
                    break;     
                 }
        case 'd':
                 if(size == 'g'){
                    printf("%ld",*haddr);
                    break; 
                 }else {
                    printf("%d",*haddr);
                    break;     
                 }
        case 'u':
                 if(size == 'g'){
                    printf("%lu",*haddr);
                    break; 
                 }else {
                    printf("%u",*haddr);
                    break;     
                 }
    }
}
void fmt_output(int count,char fmt,char size,char *add){
    int i;//loop count times
    int n;
    switch(size){
        case 'b':n=8;break;
        case 'h':n=8;break;
        case 'w':n=4;break;
        case 'g':n=2;break;
    }
    switch(size){
        case 'b':{
        for(i=0;i<count;i++){
                uint8_t *haddr = ( uint8_t *)add;
                if(i%n== 0){
                    printf("%p:\t",haddr);
                }
                if((i+1)%n){
                     fmt_print(fmt,size,haddr); 
                     printf("\t");
                }else{
                    fmt_print(fmt,size,haddr); 
                    printf("\n");
                }
                haddr++;
                if(i%n)
                    printf("\n");
                break;
         }
      }
       case 'h':{
       for(i=0;i<count;i++){
                uint16_t *haddr = ( uint16_t *)add;
                if(i%n== 0){
                    printf("%p:\t",haddr);
                }
                if((i+1)%n){
                     fmt_print(fmt,size,haddr); 
                     printf("\t");
                }else{
                    fmt_print(fmt,size,haddr); 
                    printf("\n");
                }
                haddr++;
                if(i%n)
                    printf("\n");
                break;
            }
        }
       case 'w':{
       for(i=0;i<count;i++){
                uint32_t *haddr = ( uint32_t *)add;
                if(i%n== 0){
                    printf("%p:\t",haddr);
                }
                if((i+1)%n){
                     fmt_print(fmt,size,haddr); 
                     printf("\t");
                }else{
                    fmt_print(fmt,size,haddr); 
                    printf("\n");
                }
                haddr++;
                if(i%n)
                    printf("\n");
                break;
            }
        }
       case 'g':{
       for(i=0;i<count;i++){
                uint64_t *haddr = ( uint64_t *)add;
                if(i%n== 0){
                    printf("%p:\t",haddr);
                }
                if((i+1)%n){
                     fmt_print(fmt,size,haddr); 
                     printf("\t");
                }else{
                    fmt_print(fmt,size,haddr); 
                    printf("\n");
                }
                haddr++;
                if(i%n)
                    printf("\n");
                break;
            }
        }
    }
}
static unsigned int img[] = {
        0x80489000,
        0x12345678,
        30,31,32,33,
};
int main(){
    fmt_output(5,'x','w',img);
    return 0;
}






