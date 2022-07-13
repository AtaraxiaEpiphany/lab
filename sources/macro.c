#include<stdio.h>

// printf add sum
#define TEST(a,b) \
    do{ \
        printf("sum = %d\n",(a+b)); \
        printf("sub = %d\n",(a-b)); \
    }while(0)
int main(){
    int n;
    scanf("%d",&n);
    if (n){
        TEST(1,3);
    }
    else 
//      continue;
        printf("error\n");           
    return 0;
}
