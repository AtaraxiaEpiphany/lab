#include<stdio.h>
#include<ctype.h>
#define uint32_t unsigned int 
#define vaddr_t uint32_t
typedef struct {
    union{
        uint32_t _32;
    }gpr[32];
    vaddr_t pc;
}riscv32_CPU_state;

riscv32_CPU_state cpu;
void cpu_init(){
    cpu.pc = 0x800000;
    for(int i =0;i<32;i++){
        cpu.gpr[i]._32 = 0x11F;
    }
}

void isa_reg_display(void);
int main(){
    cpu_init();
    isa_reg_display();
    return 0;
}

void isa_reg_display(void){
    int i;
    for(i=0;i<32;i++){
        printf("gpr[%d]\t\t\t\t0x%X\n",i,cpu.gpr[i]._32);
    }
    return 0;
}
