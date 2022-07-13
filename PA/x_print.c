#include "sdb.h"
static uint8_t pmem[MSIZE];
static const uint32_t img[] = {
    0x800002b7,
    0x0002a023,
    30,31,32,33,34,35,
};
void x_print(int count,char fmt,char size,char *add);
int main(){
    memcpy(pmem,img,sizeof(img));
    //memcpy(pmem,img,ARRLEN(img));//copy n bytes
    //int test[] = {0x8048a9a0,0xb2345678};
    //unsigned char *b = &test;
    //printf("a =%p\n",a);
    //a++;
    //printf("a =%p\n",a);
    //u_int16_t *h = &test;
    //uint32_t *w = &test;
    //unsigned long *g = &test;
    //printf("value b : 0x%02x\n",*b); 
    //printf("value h : 0x%04x\n",*h); 
    //printf("value w : 0x%08x\n",*w); 
    //printf("value g : 0x%016lx\n",*g); 
    //printf("value b : 0%o\n",*b); 
    //printf("value h : 0%o\n",*h); 
    //printf("value w : 0%o\n",*w); 
    //printf("value g : 0%lo\n",*g); 
    unsigned char *haddr =(char *)pmem;
    x_print(10,'x','b',pmem);
    x_print(10,'o','b',pmem);
    x_print(10,'d','b',pmem);
    x_print(10,'u','b',pmem);
    x_print(10,'x','h',pmem);
    x_print(10,'o','h',pmem);
    x_print(10,'d','h',pmem);
    x_print(10,'u','h',pmem);
    x_print(10,'x','w',pmem);
    x_print(10,'o','w',pmem);
    x_print(10,'d','w',pmem);
    x_print(10,'u','w',pmem);
    x_print(5,'x','g',pmem);
    x_print(5,'o','g',pmem);
    x_print(5,'d','g',pmem);
    x_print(5,'u','g',pmem);
    for(int i=0;i<sizeof(img);i++){
        printf("pmem[%02d]=0x%02x",i,(*haddr));
        if((i+1)%4)
            printf("\t");
        else 
            printf("\n");
        haddr++;
    }
    return 0;

}

void x_print(int count,char fmt,char size,char *add){
    //fmt:x,d,u,o   size:b,h,w,g
    int i;
    if((fmt=='x'&&size=='b')){
        unsigned char *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("0x%02x\t",*haddr);
            }
            else{
                printf("0x%02x\n",*haddr);
                
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='o'&&size=='b')){
        unsigned char *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("0%-o\t",*haddr);
            }
            else{
                printf("0%-o\n",*haddr);
                
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='d'&&size=='b')){
        char *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("%d\t",*haddr);
            }
            else{
                printf("%d\n",*haddr);
                
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='u'&&size=='b')){
        unsigned char *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("%u\t",*haddr);
            }
            else{
                printf("%u\n",*haddr);
                
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='x'&&size=='h')){
        unsigned short *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("0x%04x\t",*haddr);
            }
            else{
                printf("0x%04x\n",*haddr);
                
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='o'&&size=='h')){
        unsigned short *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("0%-o\t",*haddr);
            }
            else{
                printf("0%-o\n",*haddr);
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='d'&&size=='h')){
        short *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("%d\t",*haddr);
            }
            else{
                printf("%d\n",*haddr);
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='u'&&size=='h')){
        unsigned short *haddr = add;
        for(i=0;i<count;i++){
            if(i%8 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%8){
                printf("%u\t",*haddr);
            }
            else{
                printf("%u\n",*haddr);
            }
            haddr++;
        }
        if(i%8)
            printf("\n");
    }else if((fmt=='x'&&size=='w')){
        unsigned int *haddr = add;
        for(i=0;i<count;i++){
            if(i%4 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%4){
                printf("0x%08x\t",*haddr);
            }
            else{
                printf("0x%08x\n",*haddr);
            }
            haddr++;
        }
        if(i%4)
            printf("\n");
    }else if((fmt=='o'&&size=='w')){
        unsigned int *haddr = add;
        for(i=0;i<count;i++){
            if(i%4 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%4){
                printf("0%o\t",*haddr);
            }
            else{
                printf("0%o\n",*haddr);
            }
            haddr++;
        }
        if(i%4)
            printf("\n");
    }else if((fmt=='d'&&size=='w')){
        int *haddr = add;
        for(i=0;i<count;i++){
            if(i%4 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%4){
                printf("%d\t",*haddr);
            }
            else{
                printf("%d\n",*haddr);
            }
            haddr++;
        }
        if(i%4)
            printf("\n");
    }else if((fmt=='u'&&size=='w')){
        unsigned int *haddr = add;
        for(i=0;i<count;i++){
            if(i%4 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%4){
                printf("%u\t",*haddr);
            }
            else{
                printf("%u\n",*haddr);
            }
            haddr++;
        }
        if(i%4)
            printf("\n");
    }else if((fmt=='x'&&size=='g')){
        unsigned long int *haddr = add;
        for(i=0;i<count;i++){
            if(i%2 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%2){
                printf("0x%016lx\t",*haddr);
            }
            else{
                printf("0x%016lx\n",*haddr);
            }
            haddr++;
        }
        if(i%2)
            printf("\n");
    }else if((fmt=='o'&&size=='g')){
        unsigned long int *haddr = add;
        for(i=0;i<count;i++){
            if(i%2 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%2){
                printf("0%lo\t",*haddr);
            }
            else{
                printf("0%lo\n",*haddr);
            }
            haddr++;
        }
        if(i%2)
            printf("\n");
    }else if((fmt=='d'&&size=='g')){
        long int *haddr = add;
        for(i=0;i<count;i++){
            if(i%2 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%2){
                printf("%ld\t",*haddr);
            }
            else{
                printf("%ld\n",*haddr);
            }
            haddr++;
        }
        if(i%2)
            printf("\n");
    }else if((fmt=='u'&&size=='g')){
        unsigned long int *haddr = add;
        for(i=0;i<count;i++){
            if(i%2 ==0){
                printf("%p:\t",haddr);
            } 
            if((i+1)%2){
                printf("%lu\t",*haddr);
            }
            else{
                printf("%lu\n",*haddr);
            }
            haddr++;
        }
        if(i%2)
            printf("\n");
    }
    
}
