#include<stdio.h>
#include"macro.h"
#include<string.h>
#ifndef _AM_
#include<time.h>
#endif

#define T1 100 

#define T2 1

#define TRACE_STRINGIFY(item) "" #item
#define TRACE(macro, message)                          \
        do {                                               \
                    if (strcmp("" #macro, TRACE_STRINGIFY(macro))) \
                         printf("%s\n",#message);             \
                } while (0)
#define PRINT(X) printf("%s\n",X)
int main(){
    ISDEF(_AM_);
    ISNDEF(_AM_);
    ISONE(_AM_);
    ISZERO(_AM_);
//test a macro is defined
    PRINT("TRACE_STRINGIFY(_AM_)"); 
    PRINT("TRACE_STRINGIFY(T1)"); 
    PRINT("TRACE_STRINGIFY(T2)"); 
    T1;
    T2;
    if (strcmp("" "T1", TRACE_STRINGIFY(T1))) \
                         printf("%s\n","yes");             \
    TRACE(_AM_,am); 
    TRACE(T1,t1); 
    TRACE(T2,t2); 
    IFDEF(_AM_,printf("exists 1\n")); 
    IFDEF(T1,printf("exists 2\n")); 
    IFDEF(T2,printf("exists 3\n")); 
    return 0;
}
