#include<stdio.h>
#include<stdlib.h>
//#include<test.h>

typedef int (*handle)(char*) 


int main( int argc, char *argv[]){
    printf("%s:%p\n",__func__,main);
    return 0;
}
