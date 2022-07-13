//#include <test.h>
#include <debug_macro.h>
#include<stdio.h>
#include<stdlib.h>

int limited_rand( int limit){
    int r, d = RAND_MAX / limit;
    limit *= d;
    do{
        r = rand();
    } while( r >= limit);
    return r / d;
}

int main( int argc, char*argv[]){

    Assert( argc == 2 , "Usage:%s [n for loop]", argv[0]);
    int n = atoi(argv[1]);
    printf("rand_max:0x%x\n", RAND_MAX);     
    int limit; 
    scanf("%d",&limit);
    for(int i=0; i<n; i++){
        printf("rand:%d\n", limited_rand(limit));     
    }
    return 0;
}
