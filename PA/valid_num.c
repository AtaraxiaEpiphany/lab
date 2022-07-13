#include"sdb.h"
#include<ctype.h>
typedef struct {
    int value;
    int base;
    int is_valid;
}Valid_num;
void parse_num(Valid_num *,char *s);
int main(int argc,char *argv[]){
    if(argc != 2){
        fprintf(stderr,"Usage: %s n \n",argv[0]);
        return -1;
    }
    Valid_num vn ;
    parse_num(&vn,argv[1]);
    if( vn.is_valid == 0 ){
        fprintf(stderr,"Invalid number : %s\n",argv[1]);
        return -1;
    }
    int val = vn.value;
    int base = vn.base;
    switch (base){
        case 0:printf("value is %s\n",argv[1]);break;
        case 8:printf("value is 0%o\n",val);break;
        case 10:printf("value is %d\n",val);break;
        case 16:printf("value is 0x%x\n",val);break;
        default:break;
    }
    return 0;
}
void parse_num(Valid_num *vn,char *s){
    char *flag;
    int start = 0;
    vn->is_valid = 1;
    if(s[0] == '0' && (s[1] == 'x' || s[1] == 'X') ){
        vn->value = strtol(s,&flag,16);
        start = 2;
        vn->base = 16;
    }
    else if(s[0] == '0'){
        vn->value = strtol(s,&flag,0);
        vn->base = 8;
    }else{
        vn->value = strtol(s,&flag,0);
        vn->base = 10;
    }
    if(*flag != '\0' ){
        vn->is_valid = 0;
        return ;
    }
    int len = strlen(s);
    if(vn->value == 0){
        for(int i = start;i<len;i++){
             if(s[i] != '0'){
                vn->base = 0;
                break;
             }
        }
    }
}
