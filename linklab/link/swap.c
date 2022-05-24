extern int buf[];  // UND 

int *bufp0 = &buf[0];  // Ndx =6:.data.rel 

static int *bufp1;   // Ndx = 5: .bss

void swap(){
    int temp;
    bufp1 = &buf[1];
    temp = *bufp0;
    *bufp0 = *bufp1;
    *bufp1 = temp;
}
