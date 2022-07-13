#include <regex.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
#define NR_REGEX  ARRAY_SIZE( rules )

enum { 
    TK_NOTYPE = 256,
    TK_EQ,
    TK_NUM,
    /* TODO:Add more token types */
};

static struct rule {
    const char *regex;
    int token_type;
} rules[] = {
    /*
     *TODO: Add more rules.
     *Pay attention to the precedence level of diffierent rules.
     */
    {" +", TK_NOTYPE},
    {"[0-9]+\\.?[0-9]+", TK_NUM},
    {"\\++", '+'},
    {"\\-", '-'},
    {"\\*", '*'},
    {"\\/", '/'},
    {"==", TK_EQ},

};

//static const char *const re = "su+";
static regex_t regex[ NR_REGEX ] = {};
//memset( regex, 0, NR_REGEX*sizeof( regex_t) );

int main(int argc, char *argv[]) {
    if(argc < 2){
        fprintf(stderr,"Uasge:%s [EXP].\n",argv[0] );
        exit(EXIT_FAILURE);
    }
    //static const char *s = str;
    char *s = argv[1];
    // the pointer to the patter buff storage area.
    char error_msg[128];
    for(int i=0; i<NR_REGEX; i++){
        int ret =regcomp( &regex[i], rules[i].regex,REG_EXTENDED);
        if ( ret ) {//return zero for a successful compilation.
            regerror(ret, &regex[i], error_msg, 128);
            printf("regex compilation failed :%s\n%s", error_msg, rules[i].regex);
            exit(EXIT_FAILURE);
        }
    }

    printf("String = \"%s\"\n", s);
    printf("Matches:\n");

/*Byte offset
 *typedef struct {
 *     regoff_t rm_so, ->start of the next largest substring.
 *     regoff_t rm_eo, ->the end offset of the match string.
 *}
 */
    regmatch_t pmatch[1];
    regoff_t off, len;
    for( int i=0; i<NR_REGEX; i++){
        int position = 0;
        while( *(s+position) ) {
            if( regexec(&regex[i], s + position, 1, pmatch, 0)== 0 ){
                // A new token is recognized witl rules[i].
                off = pmatch->rm_so;
                len = pmatch->rm_eo - pmatch->rm_so;
                printf("offset= %d; length= %d\n", off, len);
                printf("substring = \"%.*s\"\n", len,s + pmatch->rm_so);
                position += pmatch->rm_eo;
            }
            else
                break;
        }
    }
    //for (int i = 0;; i++) {
        //if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
            ////return zero for a successful match.
            //break;
//
        //off = pmatch[0].rm_so;
        //len = pmatch[0].rm_eo - pmatch[0].rm_so;
        //printf("#%d:\n", i);
        //printf("offset = %jd; length = %jd\n", (intmax_t)off, (intmax_t)len);
        //printf("s[%d]:%c\n",off,s[off]);
        //printf("s[%d]:%c\n",pmatch->rm_eo,s[pmatch[0].rm_eo]);
        //printf("substring = \"%.*s\"\n", len, s + pmatch[0].rm_so) ; 
        //s += pmatch[0].rm_eo;   
    //}

    exit(EXIT_SUCCESS);
}
