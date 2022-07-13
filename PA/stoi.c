#include<stdio.h>
#include<stdlib.h>


int main(int argc,char *argv[]){
    if( argc != 2 ){
        fprintf(stderr,"Usage : %s <step n times> \n",argv[0]);
        return EXIT_FAILURE;
    }   
    int sn = atoi(argv[1]);
    /* test atoi()
     *   
     */
    char n[3] = "12";
    char *p = n;
    int tn = atoi(p);
    printf("tn = %d\n",tn);
    if(0< sn && sn <11){
        printf("step %d times\n",sn);
    }
    else 
        printf("invaild number!\n");
    return 0;
}
