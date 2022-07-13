#include"macro.h"

#define T1(X,...) T(X,__KEEP,__IGNORE)(__VA_ARGS__)
#define A 1
#define Z 0
#define C 2
#undef U
//#define __IGNORE(...)
//#define __KEEP(...) __VA_ARGS__
//#define IFDEF(macro, ...) MUXDEF(macro, __KEEP, __IGNORE)(__VA_ARGS__)
//#define MUXDEF(macro,X,Y) MUX_MACRO_PROPERTY(__P_DEF_,macro,X,Y)
//#define MUX_MACRO_PROPERTY(p,macro,a,b) MUX_WITH_COMMA(concat(p,macro),a,b)
//#define MUX_WITH_COMMA(contain_comma,a,b) CHOOSE2nd(contain_comma a,b)
//__PDEF_0 X,   
//__PDEF_1 X,   
//concat(__P_DEF_,macro)  : when macro is 0 or 1
//concat(__P_DEF_,macro) -> X, 
//CHOOSE2nd(concat(__P_DEF_,macro) a,b)
//macro is defined to 0 or 1,
//CHOOSE2nd(X, a, b) ----> choose a
//else choose b
void Print(){
    printf("is defined\n",);
}
int main(){
    __IGNORE; //__IGNORE;
    __KEEP; // __KEEP;
    __IGNORE(a); // ;
    __KEEP(a); // a ;
    MUXDEF(A,__KEEP,__KEEP(a)); //__KEEP;
    IFDEF(A,Print()); //Print();
    IFDEF(C,Print()); // ;
    T1(A,Print()); //T(1,__KEEP,IGNORE)(Print());
    MUXDEF(A,any,test); //any;
    MUXDEF(C,any,test); //test;
    MUXDEF(A,0,test); //0;
    MUXDEF(C,0,test); //test;

    //test IFDEF(macro,fun());
    MUXDEF(A,__KEEP,__IGNORE)(Print());//Print();
    (Print());     
    MUX_DEF(A,__KEEP,__IGNORE);//__KEEP
    MUX_MACRO_PROPERTY(__P_DEF_,A,__KEEP,__IGNORE); //KEEP
    MUX_MACRO_PROPERTY(__P_DEF_,A,__KEEP,__IGNORE)(Print());//
    //last we will get __KEEP() or __IGNORE()
    MUX_MACRO_PROPERTY(__P_DEF_,U,__KEEP,__IGNORE);//__IGNORE
    MUX_MACRO_PROPERTY(__P_DEF_,C,__KEEP,__IGNORE);//__IGNORE
    MUXDEF(A,__KEEP,__IGNORE); // __KEEP
    MUXDEF(Z,__KEEP,__IGNORE); // __IGNORE
    concat(__P_DEF_,A) // X,
    __P_DEF_
    return 0;
}
