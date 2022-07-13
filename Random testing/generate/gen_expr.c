#include<stdio.h>
#include<stdlib.h>
#include<stdint.h>
#include<time.h>
#include<debug_macro.h>

static char buf[65536] = {};
static char code_buf[65536 + 128] = {};
static char *code_format =
"#include<stdio.h>\n"
"int main() { "
"   uint32_t result = %s;"
"   printf(\"%%u\",result);"
"   return 0;"
"}";

static void gen_rand_expr() {
    buf[0] = '\0';
}

int main( int argc, char*argv[]){
    int seed = time(0);
    srand(seed);
    int loop = 1;
    if(argc > 1) {
       sscanf(argv[1],"%d",&loop); // man sscanf & fscanf for more imformation.
    }
    FILE *fp = fopen("/tmp/.code.c","w');
    return 0;
}
