#include<stdio.h>

int main(){
    FILE *fp = fopen("test","rb+");
    fseek(fp,0,SEEK_END);
    long size = ftell(fp);
    fprintf(fp,"add something.\n");
    printf("size = %ld\n",size);
    fclose(fp);
    return 0;
}
