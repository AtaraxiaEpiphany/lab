#ifndef __MACRO_H__
#define __MACRO_H__

#include<string.h>
#include<assert.h>

//macro stringizing
#define str_temp(x)  #x
#define str(x) str_temp(x)

//strlen() for string constant
#define STRLEN(CONST_STR) (sizeof(CONST_STR) -1)

//calculate the length of an array
#define ARRLEN(arr) (int)(sizeof(arr) / sizeof(arr[0]) )

//macro concatenation
#define concat_temp(x, y) x ## y
#define concat(x, y) concat_temp(x, y)
#define concat3(x, y, z) concat(concat(x, y), z)
#define concat4(x, y, z, w) concat3(concat(x, y), z, w)

//macro testing
#define CHOOSE2nd(a, b, ...) b
#define MUX_WITH_COMMA(contain_comma, a, b) CHOOSE2nd(contain_comma a, b)
#define MUX_MACRO_PROPERTY(p, macro, a, b) MUX_WITH_COMMA(concat(p, macro), a, b)

//define placeholders for some property
#define __P_DEF_0  X,
#define __P_DEF_1  X,
#define __P_ONE_1  X,
#define __P_ZERO_0 X,

//define some selection functions based on the properties of BOOLEAN　macro
#define MUXDEF(macro, X, Y) MUX_MACRO_PROPERTY(__P_DEF_, macro, X, Y)
#define MUXNDEF(macro, X, Y) MUX_MACRO_PROPERTY(__P_DEF_, macro, Y, X)
#define MUXONE(macro, X, Y) MUX_MACRO_PROPERTY(__P_ONE_, macro, X, Y)
#define MUXZERO(macro, X, Y) MUX_MACRO_PROPERTY(__P_ZERO_, macro, X, Y)

//test if a boolean macro is defined
#define ISDEF(macro) MUXDEF(macro, 1, 0) //CHOOSE2nd -> 1 or 0
//test if a boolean macro is undefined
#define ISNDEF(macro) MUXNDEF(macro, 1, 0)//CHOOSE2nd -> 0 or 1
//test if a boolean macro is defined to 1
#define ISONE(macro) MUXONE(macro, 1, 0)
//test if a boolean macro is defined to 0
#define ISZERO(macro) MUXZERO(macro, 1, 0)

//test if a macro of ANY type is defined 
//"" #macro expand to macro name as a string,
//macro will expand the macro first
#define isdef(macro) ( strcmp("" #macro,"" str(macro) != 0 )
// #define test true
//for example:isdef(test) strcmp("" "test","" str(true)) 
//strcmp("" "test","" "true")

//simplification for conditional compilation
#define __IGNORE(...)
#define __KEEP(...) __VA_ARGS__

//keep the code if a boolean macro is defined 
#define IFDEF(macro, ...) MUXDEF(macro, __KEEP, __IGNORE)(__VA_ARGS__)
//keep the code if a boolean macro is undefined 
#define IFNDEF(macro, ...) MUXNDEF(macro, __KEEP, __IGNORE)(__VA_ARGS__)
//keep the code if a boolean macro is defined to 1
#define IFONE(macro, ...) MUXONE(macro, __KEEP, __IGNORE)(__VA_ARGS__)
//keep the code if a boolean macro is defined to 0
#define IFZERO(macro, ...) MUXZERO(macro, __KEEP, __IGNORE)(__VA_ARGS__)

#define Assert(cond, format, ...) \
    do{ \
        if(!(cond)) {\
            MUXDEF( TEST, printf(#format"\n",## __VA_ARGS__ ) \
                , (fflush(stdout),fprintf(stderr, #format "\n", \
                 ## __VA_ARGS__) ) );\
            assert(cond);\
        }\
    }while (0)

#define panic(format, ...) Assert(0, format, ##__VA_ARGS__)

#define TODO() panic("please implement me");

#endif
