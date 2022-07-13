
phase3.o:     file format elf32-i386


Disassembly of section .text:

00000000 <XksEauurKG>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	90                   	nop
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop
  10:	90                   	nop
  11:	90                   	nop
  12:	90                   	nop
  13:	90                   	nop
  14:	90                   	nop
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop
  18:	90                   	nop
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	90                   	nop
  20:	90                   	nop
  21:	90                   	nop
  22:	90                   	nop
  23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  28:	5d                   	pop    %ebp
  29:	c3                   	ret    
#Relocation section '.rel.text' at offset 0x4a4 contains 2 entries:
 #Offset     Info    Type            Sym.Value  Sym. Name
 #00000075  00000701 R_386_32          00000000   .rodata
 #00000153  00000d02 R_386_PC32        00000000   puts

0000002a <do_phase>:
  2a:	55                   	push   %ebp
  2b:	89 e5                	mov    %esp,%ebp
  2d:	83 ec 28             	sub    $0x28,%esp
  30:	c7 45 e5 54 50 44 46 	movl   $0x46445054,-0x1b(%ebp)
  37:	c7 45 e9 4f 43 59 41 	movl   $0x4159434f,-0x17(%ebp)
  3e:	66 c7 45 ed 5a 53    	movw   $0x535a,-0x13(%ebp)
  44:	c6 45 ef 00          	movb   $0x0,-0x11(%ebp)
  48:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  4f:	e9 e0 00 00 00       	jmp    134 <do_phase+0x10a>
  54:	8d 55 e5             	lea    -0x1b(%ebp),%edx
  57:	8b 45 f0             	mov    -0x10(%ebp),%eax
  5a:	01 d0                	add    %edx,%eax
  5c:	0f b6 00             	movzbl (%eax),%eax
  5f:	88 45 f7             	mov    %al,-0x9(%ebp)
  62:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
  66:	83 e8 41             	sub    $0x41,%eax
  69:	83 f8 19             	cmp    $0x19,%eax
  6c:	0f 87 b0 00 00 00    	ja     122 <do_phase+0xf8>
  72:	8b 04 85 04 00 00 00 	mov    0x4(,%eax,4),%eax //.rodata
  79:	ff e0                	jmp    *%eax
  7b:	c6 45 f7 36          	movb   $0x36,-0x9(%ebp) //
  7f:	e9 9e 00 00 00       	jmp    122 <do_phase+0xf8>
  84:	c6 45 f7 22          	movb   $0x22,-0x9(%ebp) //"
  88:	e9 95 00 00 00       	jmp    122 <do_phase+0xf8>
  8d:	c6 45 f7 29          	movb   $0x29,-0x9(%ebp) //)
  91:	e9 8c 00 00 00       	jmp    122 <do_phase+0xf8>
  96:	c6 45 f7 30          	movb   $0x30,-0x9(%ebp) //
  9a:	e9 83 00 00 00       	jmp    122 <do_phase+0xf8>
  9f:	c6 45 f7 23          	movb   $0x23,-0x9(%ebp) //#
  a3:	eb 7d                	jmp    122 <do_phase+0xf8>
  a5:	c6 45 f7 38          	movb   $0x38,-0x9(%ebp) //
  a9:	eb 77                	jmp    122 <do_phase+0xf8>
  ab:	c6 45 f7 64          	movb   $0x64,-0x9(%ebp) //d
  af:	eb 71                	jmp    122 <do_phase+0xf8>
  b1:	c6 45 f7 5a          	movb   $0x5a,-0x9(%ebp) //Z
  b5:	eb 6b                	jmp    122 <do_phase+0xf8>
  b7:	c6 45 f7 4a          	movb   $0x4a,-0x9(%ebp) //J
  bb:	eb 65                	jmp    122 <do_phase+0xf8>
  bd:	c6 45 f7 38          	movb   $0x38,-0x9(%ebp) //
  c1:	eb 5f                	jmp    122 <do_phase+0xf8>
  c3:	c6 45 f7 4e          	movb   $0x4e,-0x9(%ebp) //N
  c7:	eb 59                	jmp    122 <do_phase+0xf8>
  c9:	c6 45 f7 34          	movb   $0x34,-0x9(%ebp)
  cd:	eb 53                	jmp    122 <do_phase+0xf8>
  cf:	c6 45 f7 69          	movb   $0x69,-0x9(%ebp) //i
  d3:	eb 4d                	jmp    122 <do_phase+0xf8>
  d5:	c6 45 f7 72          	movb   $0x72,-0x9(%ebp) //r
  d9:	eb 47                	jmp    122 <do_phase+0xf8>
  db:	c6 45 f7 77          	movb   $0x77,-0x9(%ebp) //w
  df:	eb 41                	jmp    122 <do_phase+0xf8>
  e1:	c6 45 f7 37          	movb   $0x37,-0x9(%ebp)
  e5:	eb 3b                	jmp    122 <do_phase+0xf8>
  e7:	c6 45 f7 2d          	movb   $0x2d,-0x9(%ebp) //-
  eb:	eb 35                	jmp    122 <do_phase+0xf8>
  ed:	c6 45 f7 61          	movb   $0x61,-0x9(%ebp) //a
  f1:	eb 2f                	jmp    122 <do_phase+0xf8>
  f3:	c6 45 f7 38          	movb   $0x38,-0x9(%ebp)
  f7:	eb 29                	jmp    122 <do_phase+0xf8>
  f9:	c6 45 f7 71          	movb   $0x71,-0x9(%ebp)//q
  fd:	eb 23                	jmp    122 <do_phase+0xf8>
  ff:	c6 45 f7 39          	movb   $0x39,-0x9(%ebp)
 103:	eb 1d                	jmp    122 <do_phase+0xf8>
 105:	c6 45 f7 50          	movb   $0x50,-0x9(%ebp) //P
 109:	eb 17                	jmp    122 <do_phase+0xf8>
 10b:	c6 45 f7 67          	movb   $0x67,-0x9(%ebp) //g
 10f:	eb 11                	jmp    122 <do_phase+0xf8>
 111:	c6 45 f7 55          	movb   $0x55,-0x9(%ebp)//U
 115:	eb 0b                	jmp    122 <do_phase+0xf8>
 117:	c6 45 f7 68          	movb   $0x68,-0x9(%ebp)//h
 11b:	eb 05                	jmp    122 <do_phase+0xf8>
 11d:	c6 45 f7 63          	movb   $0x63,-0x9(%ebp)//c
 121:	90                   	nop
 122:	8d 55 da             	lea    -0x26(%ebp),%edx
 125:	8b 45 f0             	mov    -0x10(%ebp),%eax
 128:	01 c2                	add    %eax,%edx
 12a:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 12e:	88 02                	mov    %al,(%edx)
 130:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 134:	8b 45 f0             	mov    -0x10(%ebp),%eax
 137:	83 f8 09             	cmp    $0x9,%eax
 13a:	0f 86 14 ff ff ff    	jbe    54 <do_phase+0x2a>
 140:	8d 55 da             	lea    -0x26(%ebp),%edx
 143:	8b 45 f0             	mov    -0x10(%ebp),%eax
 146:	01 d0                	add    %edx,%eax
 148:	c6 00 00             	movb   $0x0,(%eax)
 14b:	83 ec 0c             	sub    $0xc,%esp
 14e:	8d 45 da             	lea    -0x26(%ebp),%eax
 151:	50                   	push   %eax
 152:	e8 fc ff ff ff       	call   153 <do_phase+0x129> //puts
 157:	83 c4 10             	add    $0x10,%esp
 15a:	90                   	nop
 15b:	c9                   	leave  
 15c:	c3                   	ret    
