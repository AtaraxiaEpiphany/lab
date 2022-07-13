//#include<stdlib.h>
//#include<string.h>

typedef struct {
    int value; //the number's decimal value.
    int base; //the base of the original number.
    int valid;
}ValidN;

//long int strtol(const char * nptr,char **endprt,int base);
void judgeValidity(ValidN *n,char* s){
    n->valid = 1;
    char *endptr;
    int start = 0;
    if( (s[0] == '0' && s[1] =='x') || (s[0] == '0' && s[1] =='X') ){
        n->value = strtol(s,&endptr,16);
        n->base = 16;
        start = 2;
    }
    else if(s[0] == '0'){
        n->value = strtol(s,&endptr,0);
        n->base = 8;
        start = 1;
    }else{
        n->value = strtol(s,&endptr,0);
        n->base = 10;
    }
    if(*endptr != '\0'){
        n->valid = 0;
        return;
    }
    if(n->value ==0){
        for(int i=start;i<strlen(s);i++){
            if(s[i] != '0'){
                n->valid = 0;
                break;
            }
        }
    }
}


