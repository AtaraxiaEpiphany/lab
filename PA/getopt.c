#include<stdio.h>
#include<stdlib.h>
#include<getopt.h>
#include<unistd.h>

int main(int argc,char *argv[]){
    static struct option long_options[] = {
        {"add",     required_argument,   0,   0 },
        {"create",  required_argument,   0, 'c' },
        {"0",       0,                   0,   0 },
    };
    int c = getopt_long(argc,argv,"-ac:",long_options,NULL);
    switch(c){
        case 'a':
            printf("option a \n");
            break;
        case 'c':
            printf("option c with value '%s'\n",optarg);
            break;
        case 1:
            printf("nonoption\n");
            break;
        default:
            printf("?? getopt returned character code 0%o??\n",c);
            break;
    }
    return 0;
}


