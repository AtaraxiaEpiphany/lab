
phase2.o:     file format elf32-i386

#Relocation section '.rel.text' at offset 0x348 contains 4 entries:

 Offset     Info    Type            Sym.Value  Sym. Name
 00000074  00000c02 R_386_PC32        00000000   strlen
 000000aa  00000501 R_386_32          00000000   .rodata
 000000b2  00000d02 R_386_PC32        00000000   strcmp
 000000c4  00000e02 R_386_PC32        00000000   puts



Disassembly of section .text:

00000000 <nndZqWCYPw>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	c7 45 bb 70 76 78 32 	movl   $0x32787670,-0x45(%ebp)
   d:	c7 45 bf 55 37 6b 78 	movl   $0x786b3755,-0x41(%ebp)
  14:	c7 45 c3 6b 4a 37 54 	movl   $0x54374a6b,-0x3d(%ebp)
  1b:	c7 45 c7 51 20 45 64 	movl   $0x64452051,-0x39(%ebp)
  22:	c7 45 cb 79 59 45 6e 	movl   $0x6e455979,-0x35(%ebp)
  29:	c7 45 cf 49 72 73 61 	movl   $0x61737249,-0x31(%ebp)
  30:	c7 45 d3 62 45 4a 78 	movl   $0x784a4562,-0x2d(%ebp)
  37:	c7 45 d7 4d 5a 52 4c 	movl   $0x4c525a4d,-0x29(%ebp)
  3e:	c7 45 db 74 79 4f 4c 	movl   $0x4c4f7974,-0x25(%ebp)
  45:	c7 45 df 61 57 6f 20 	movl   $0x206f5761,-0x21(%ebp)
  4c:	c7 45 e3 73 72 35 68 	movl   $0x68357273,-0x1d(%ebp)
  53:	c7 45 e7 20 7a 65 46 	movl   $0x46657a20,-0x19(%ebp)
  5a:	c7 45 eb 54 50 37 54 	movl   $0x54375054,-0x15(%ebp)
  61:	c7 45 ef 09 5a 73 4c 	movl   $0x4c735a09,-0x11(%ebp)
  68:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  6c:	83 ec 0c             	sub    $0xc,%esp
  6f:	8d 45 bb             	lea    -0x45(%ebp),%eax
  72:	50                   	push   %eax
  73:	e8 fc ff ff ff       	call   74 <nndZqWCYPw+0x74> #<strlen>
  78:	83 c4 10             	add    $0x10,%esp
  7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  7e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  82:	78 15                	js     99 <nndZqWCYPw+0x99>
  84:	8b 45 08             	mov    0x8(%ebp),%eax
  87:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  8a:	7d 0d                	jge    99 <nndZqWCYPw+0x99>
  8c:	8d 55 bb             	lea    -0x45(%ebp),%edx
  8f:	8b 45 08             	mov    0x8(%ebp),%eax
  92:	01 d0                	add    %edx,%eax
  94:	0f b6 00             	movzbl (%eax),%eax
  97:	eb 05                	jmp    9e <nndZqWCYPw+0x9e>
  99:	b8 00 00 00 00       	mov    $0x0,%eax
  9e:	c9                   	leave  
  9f:	c3                   	ret    

000000a0 <AFPQyOcF>:
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	83 ec 08             	sub    $0x8,%esp
  a6:	83 ec 08             	sub    $0x8,%esp
  a9:	68 02 00 00 00       	push   $0x2 #<.rodata>:srtring1
  ae:	ff 75 08             	pushl  0x8(%ebp)#string2
  b1:	e8 fc ff ff ff       	call   b2 <AFPQyOcF+0x12> #<strcmp>
  b6:	83 c4 10             	add    $0x10,%esp
  b9:	85 c0                	test   %eax,%eax//zf=0,eax!=0;jne
  bb:	75 10                	jne    cd <AFPQyOcF+0x2d>
  bd:	83 ec 0c             	sub    $0xc,%esp
  c0:	ff 75 0c             	pushl  0xc(%ebp)
  c3:	e8 fc ff ff ff       	call   c4 <AFPQyOcF+0x24> #<puts>
  c8:	83 c4 10             	add    $0x10,%esp
  cb:	eb 01                	jmp    ce <AFPQyocF+0x2e>
  cd:	90                   	nop
  ce:	c9                   	leave  
  cf:	c3                   	ret    

000000d0 <do_phase>:
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	90                   	nop
  d4:	90                   	nop
  d5:	90                   	nop
  d6:	90                   	nop
  d7:	90                   	nop
  d8:	90                   	nop
  d9:	90                   	nop
  da:	90                   	nop
  db:	90                   	nop
  dc:	90                   	nop
  dd:	90                   	nop
  de:	90                   	nop
  df:	90                   	nop
  e0:	90                   	nop
  e1:	90                   	nop
  e2:	90                   	nop
  e3:	90                   	nop
  e4:	90                   	nop
  e5:	90                   	nop
  e6:	90                   	nop
  e7:	90                   	nop
  e8:	90                   	nop
  e9:	90                   	nop
  ea:	90                   	nop
  eb:	90                   	nop
  ec:	90                   	nop
  ed:	90                   	nop
  ee:	90                   	nop
  ef:	90                   	nop
  f0:	90                   	nop
  f1:	90                   	nop
  f2:	90                   	nop
  f3:	90                   	nop
  f4:	90                   	nop
  f5:	90                   	nop
  f6:	90                   	nop
  f7:	90                   	nop
  f8:	90                   	nop
  f9:	90                   	nop
  fa:	90                   	nop
  fb:	90                   	nop
  fc:	90                   	nop
  fd:	90                   	nop
  fe:	90                   	nop
  ff:	90                   	nop
 100:	90                   	nop
 101:	90                   	nop
 102:	90                   	nop
 103:	90                   	nop
 104:	90                   	nop
 105:	90                   	nop
 106:	90                   	nop
 107:	90                   	nop
 108:	90                   	nop
 109:	90                   	nop
 10a:	90                   	nop
 10b:	90                   	nop
 10c:	90                   	nop
 10d:	90                   	nop
 10e:	90                   	nop
 10f:	90                   	nop
 110:	90                   	nop
 111:	90                   	nop
 112:	90                   	nop
 113:	90                   	nop
 114:	5d                   	pop    %ebp
 115:	c3                   	ret    
