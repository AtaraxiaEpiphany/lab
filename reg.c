#include<stdint.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<debug_macro.h>
#include<assert.h>
#include "fmt_print.h"
#include<regex.h>
#include <readline/history.h>
#include <readline/readline.h>
#define bool int
#define true 1
#define false 0
#define NR_REGEX ARRLEN(rules)



enum {
    TK_NOTYPE = 256,
    TK_EQ,
    TK_INT,
    TK_FLT,

    /* TODO: Add more token types */

};

static struct rule {
    const char *regex;
    int token_type;
} rules[] = {

        /* TODO: Add more rules.
         * Pay attention to the precedence level of different rules.      */

        {" +", TK_NOTYPE}, // spaces
        {"[0-9]*\\.[0-9]+",TK_FLT},
        {"[0-9]+\\.?",TK_INT},
        {"\\(", '('},            
        {"\\)", ')'},            
        {"\\+", '+'},            // plus
        {"\\-", '-'},            
        {"\\*", '*'},            
        {"\\/", '/'},            
        {"==", TK_EQ},         // equal
};


static regex_t re[NR_REGEX] = {};

/* Rules are used for many times.
 *    * Therefore we compile them only once before any usage.
 *     */
void init_regex() {
    int i;
    char error_msg[128];
    int ret;

    for (i = 0; i < NR_REGEX; i++) {
        ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
        if (ret != 0) {
            regerror(ret, &re[i], error_msg, 128);
            panic("regex compilation failed: %s: %s", error_msg, rules[i].regex);
        }
    }
}

typedef struct token {
    int type;
    char str[32];
} Token;

static Token tokens[32] __attribute__((used)) = {};
static int nr_token __attribute__((used)) = 0;

static bool make_token(char *e) {
    int position = 0;
    int i;
    regmatch_t pmatch;
    nr_token = 0;

    //printf("String:%s\n",e);
    while (e[position] != '\0') {
        /* Try all rules one by one. */
        for (i = 0; i < NR_REGEX; i++) {
            if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
                char *substr_start = e + position;
                int substr_len = pmatch.rm_eo;

                printf("match rules[%d] = \"%s\" at position %d with len %d: %.*s\n", i,rules[i].regex, position, substr_len, substr_len, substr_start);
                position += substr_len;
                if(rules[i].token_type != TK_NOTYPE){
                    tokens[nr_token++].type = rules[i].token_type;
                }
                switch (rules[i].token_type) {
                    case TK_NOTYPE: //throw away
                        break;
                    case TK_INT:
                        strncpy( tokens[nr_token-1].str, e+position-substr_len, substr_len);
                        printf("tokens[%d]:%.*s with len:%d of int type\n", nr_token-1, substr_len, tokens[nr_token-1].str, substr_len);
                        break;
                    case TK_FLT:
                        strncpy( tokens[nr_token-1].str, e+position-substr_len, substr_len);
                        printf("tokens[%d]:%.*s with len:%d of float type\n", nr_token-1, substr_len, tokens[nr_token-1].str, substr_len);
                        break;
                    case '+':
                        tokens[nr_token-1].str[0] = '+';
                        break;
                    case '-':
                        tokens[nr_token-1].str[0] = '-';
                        break;
                    case '*':
                        tokens[nr_token-1].str[0] = '*';
                        break;
                    case '/':
                        tokens[nr_token-1].str[0] = '/';
                        break;
                default:
                    TODO();
                }

                break;
            }
        }

        if (i == NR_REGEX) {
            printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
            return false;
        }
    }
    return true;
}


//void init_wp_pool(); 
/* We use the `readline' library to provide more flexibility to read from stdin.
 */
static char *rl_gets() {
    static char *line_read = NULL;

    if (line_read) {
        free(line_read);
        line_read = NULL;
    }

    line_read = readline("(nemu) ");

    if ( line_read && *line_read) {
        add_history(line_read);
    }

    return line_read;
}

static int parse_args(char *args) {
    int ret = 0;
    if (args) {
        char *token = strtok(args, " ");
        for (; token; ret++) {
            token = strtok(NULL, " ");
        }
    }
    return ret;
}
static int cmd_c(char *args) {
    printf("cmd_c()\n");
    return 0;
}

static int cmd_q(char *args) { return -1; }

static int cmd_help(char *args);
static int cmd_s(char *args);
static int cmd_info(char *args);
static int cmd_x(char *args);
static int cmd_p(char *args);

static struct {
    const char *name;
    const char *description;
    int (*custom)(char *);
} cmd_table[] = {
        {"help", "Display informations about all supported commands", cmd_help},
        {"c", "Continue the execution of the program", cmd_c},
        {"q", "Exit NEMU", cmd_q},
        {"si", "Step one instruction exactly:si [n]", cmd_s},
        {"info", "Print information of 'subcmd':info [subcommand]", cmd_info},
        {"x", "Examine memory: x FMT ADDRESS.", cmd_x},
        {"p", "print [FMT] [EXP].", cmd_p},
        /* TODO: Add more commands */

};

#define NR_CMD ARRLEN(cmd_table)

static int cmd_help(char *args) {
    /* extract the first argument */
    //char *arg = strtok(args, " ");
    int i;
    int n = parse_args(args);
    if (n == 0) {
        /* no argument given */
        for (i = 0; i < NR_CMD; i++) {
            printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        }
    } else if (n == 1) {
        for (i = 0; i < NR_CMD; i++) {
            if (strcmp(args, cmd_table[i].name) == 0) {
                printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
                return 0;
            }
        }
        printf("Unknown command '%s'\n", args);
    } else {
        printf("A syntax error in expression,near `%s',\n", args);
    }
    return 0;
}


void sdb_mainloop() {

    for (char *str; (str = rl_gets()) != NULL;) {
        printf("readline:%s\n",str);
        char *str_end = str + strlen(str);

        /* extract the first token as the command */
        char *cmd = strtok(str, " ");
        if (cmd == NULL) {
            continue;
        }

        /* treat the remaining string as the arguments,
         * which may need further parsing
         */
        char *args = cmd + strlen(cmd) + 1;
        if (args >= str_end) {
            args = NULL;
        }
        int i = 0;
        for (i = 0; i < NR_CMD; i++) {
            if (strcmp(cmd, cmd_table[i].name) == 0) {
                if (cmd_table[i].custom(args) < 0) {
                    return;
                }
                break;
            }
        }

        if (i == NR_CMD) {
            printf("Unknown command '%s'\n", cmd);
        }
    }
}

static int cmd_s(char *args) {
    int n = parse_args(args);
    if (!n) {
        //n = 0, no args are given.
        printf("cpu_exec(1);\n");
        return 0;
    } else if (n == 1) {
        //si[n] 
        unsigned int sn = atoi(args);
        if (sn > 0 && sn < 11) {
            printf("cpu_exec(sn);\n");
        } else {
            printf("Invalid number.Type \"help si\"\n");
        }
    } else {
        printf("A syntax error in expression,near `%s',\n", args);
    }
    return 0;
}

static int cmd_info(char *args) {
    int n = parse_args(args);
    if (n == 1 && *args == 'r') {
        printf("isa_reg_display();\n");
    } else {
        printf("Undefined info subcommand `%s'.Try \"help info\"\n", args);
    }
    return 0;
}

static int cmd_x(char *args){
    printf("x/FMT ADDRESS.\n");
    return 0;
}

static int cmd_p(char *args){
    make_token( args );
    return 0;
}
void init_sdb() {
    /* Compile the regular expressions. */
    init_regex();

}


int main( int argc, char *agrv[]){
    init_sdb();
    sdb_mainloop();
}
