
#include<stdio.h>
#include<string.h>
#include<stdint.h>
#include<readline/readline.h>
#include<readline/history.h>
#include<stdlib.h>
#include<ctype.h>
#include"parse.c"
#define paddr_t unsigned int 
#define MSIZE  0x8000000
#define MBASE 0x80000000
#define PC_RESET_OFFSET 0x0
#define RESET_VECTOR MBASE+PC_RESET_OFFSET
#define ARRLEN(arr) (int)(sizeof(arr)/sizeof(arr[0]))
#define N_CMD ARRLEN(cmd_table)
