#include<string.h>

int parse(char *args){
    int ret = 0 ;
    if(args){
        char *token=strtok(args," ");
        for(;token;ret++){
            token = strtok(NULL," "); 
        }
    }
    return ret;
}

