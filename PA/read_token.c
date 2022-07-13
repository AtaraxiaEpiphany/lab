#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<readline/readline.h>
#include<readline/history.h>

static char *rl_gets(){
    static char *lr = NULL;
    if(lr){
        free(lr);
        lr = NULL;
    }
    lr = readline("admin$");
    if(lr && *lr){
        add_history(lr);
    }
    return lr;
}
void parse(char *str){
   char *token = strtok(str," ");
   int i;
   for(i=0;token!=NULL;token=strtok(NULL," ")){
       printf("token[%d]= %s\n",i,token);
       i++;
   }
}
int main(int argc,char* argv){
    for(int i =0;i<3;i++){
        char *read_line = rl_gets();
        printf("read_line = %s\n",read_line);
        parse(read_line);
    }
    return 0;
}
