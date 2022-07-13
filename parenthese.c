#include<stdio.h>
#include<assert.h>
#include<stdlib.h>
#include<debug_macro.h>
#include<test.h>
int main(int argc, char *argv[]){
    //Assert( argc == 2, "Usage:%s [EXP]", argv[0]);
    int i;
    int sp;
    for(char *str ; (str = rl_gets()) ; ){
        printf("readline:%s\n", str);
        if( *str == 'q' )
            break;
        int len = strlen(str);
        Assert( str[0]=='(' && str[len-1]==')' ,"Epresstion is not surrounded by a matched pair of parenthese");
        sp = 0;
        for(i=1; i<len-1; i++){
            if(str[i] == '(')
                sp++;
            else if(str[i] == ')'){
                sp--;
                if( sp < 0 )
                    break;
            }
        }
        Assert( sp == 0 ,"Bad expresstion");
    }
    return 0;
}
