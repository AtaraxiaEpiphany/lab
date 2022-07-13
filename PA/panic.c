
#include<stdio.h>
#include<assert.h>
#include<debug_macro.h>


int main(){
    printf("%s \n%s\n","error","failed");
    assert(0);
    MUXDEF(test, printf("yes"), printf("no"));
    panic("please implement me");
    return 0;
}
