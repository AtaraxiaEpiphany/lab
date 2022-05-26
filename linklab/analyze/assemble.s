#phase 2

    #+----------+
    #|puts:str  |  w9660527 
    #|cmp:str   |  
    #|  eip     |
 #ebp|  ebp     |  <AFPQyOcF>
    #|          |
    #|          |
    #|          |
    #+----------+

sub   $0x20,%esp
movb  $0x0,-0x4(%ebp)
movl  $0x37323530,-0x8(%ebp)
movl  $0x36363977,-0xc(%ebp)  #puts(str)
movb  $0x0,-0x10(%ebp)
movl  $0x00614a48,-0x14(%ebp)
movl  $0x50534b79,-0x18(%ebp) #cmp:str
lea   -0xc(%ebp),%eax
pushl %eax
lea   -0x18(%ebp),%eax
pushl %eax
call  0x9cffffff    #<d0> do_phase offset=0xa0-pc:0x34
leave
ret



