#include<stdio.h>
#include<reg.c>


int main(int argc,char *argv[]){
    init_sdb();
    sdb_mainloop();
    return 0;
}

