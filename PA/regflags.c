#include<regex.h>
#include<stdint.h>
#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[]){
    printf("cflags:\n");
    printf("REG_EXTENDED: %d \n",REG_EXTENDED);
    printf("REG_ICASE: %d \n",REG_ICASE);
    printf("REG_NOSUB: %d \n",REG_NOSUB);
    printf("REG_NEWLINE: %d \n",REG_NEWLINE);
    printf("eflags:\n");
    printf("REG_NOTBOL: %d \n",REG_NOTBOL);
    printf("REG_NOTEOL: %d \n",REG_NOTEOL);
    printf("REG_STARTEND: %d \n",REG_STARTEND);
    return 0;
}
