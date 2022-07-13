#include<validN.h>
#include<stdlib.h>
#include<stdio.h>

int main(int argc, char *argv[]){
    ValidN n;
    judgeValidity(&n,argv[1]);
    if(n.valid==0){
        printf("Invalid number!\n");
        return -1;
    }
    printf("value is %d\n",n.value);
    return 0;
}
