#include<stdio.h>
#include<string.h>
#define str_temp(x) #x
#define str(x) str_temp(x)

#define isdef(macro) \
    do{ \
        if( strcmp("" #macro,"" str(macro)) != 0 )\
            printf(#macro" is defined\n");              \
        else                                      \
            printf(#macro" is undefined\n");            \
    }while(0) 
#define test 
#define test1 1
#define test2 2  
#define test3 3 
#define test4 4 

int main(){
    isdef(test);
    isdef(test1);
    isdef(test2);
    isdef(test3);
    isdef(test4);
    isdef(est4);
    return 0;
}
