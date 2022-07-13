
phase4.o:     file format elf32-i386


Disassembly of section .text:

00000000 <nndZqWCYPw>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 30             	sub    $0x30,%esp
   6:	c7 45 dc 66 6c 6c 69 	movl   $0x696c6c66,-0x24(%ebp)
   d:	c7 45 e0 54 6f 68 66 	movl   $0x66686f54,-0x20(%ebp)
  14:	c7 45 e4 48 46 74 79 	movl   $0x79744648,-0x1c(%ebp)
  1b:	c7 45 e8 4b 48 6f 7a 	movl   $0x7a6f484b,-0x18(%ebp)
  22:	c7 45 ec 52 68 63 45 	movl   $0x45636852,-0x14(%ebp)
  29:	c7 45 f0 6d 57 4d 47 	movl   $0x474d576d,-0x10(%ebp)
  30:	c7 45 f4 59 41 44 71 	movl   $0x71444159,-0xc(%ebp)
  37:	c7 45 f8 52 71 63 00 	movl   $0x637152,-0x8(%ebp)
  3e:	c7 45 fc 20 00 00 00 	movl   $0x20,-0x4(%ebp)
  45:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  49:	78 15                	js     60 <nndZqWCYPw+0x60>
  4b:	8b 45 08             	mov    0x8(%ebp),%eax
  4e:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  51:	7d 0d                	jge    60 <nndZqWCYPw+0x60>
  53:	8d 55 dc             	lea    -0x24(%ebp),%edx
  56:	8b 45 08             	mov    0x8(%ebp),%eax
  59:	01 d0                	add    %edx,%eax
  5b:	0f b6 00             	movzbl (%eax),%eax
  5e:	eb 05                	jmp    65 <nndZqWCYPw+0x65>
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	c9                   	leave  
  66:	c3                   	ret    

00000067 <transform_code>:
  67:	55                   	push   %ebp
  68:	89 e5                	mov    %esp,%ebp
  6a:	8b 45 0c             	mov    0xc(%ebp),%eax

  6d:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax //

  74:	83 e0 07             	and    $0x7,%eax
  77:	83 f8 07             	cmp    $0x7,%eax
  7a:	77 74                	ja     f0 <transform_code+0x89>

  7c:	8b 04 85 60 00 00 00 	mov    0x60(,%eax,4),%eax //.rodata+0x60

  83:	ff e0                	jmp    *%eax
  85:	f7 55 08             	notl   0x8(%ebp)
  88:	eb 6a                	jmp    f4 <transform_code+0x8d>
  8a:	8b 45 0c             	mov    0xc(%ebp),%eax

  8d:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax //

  94:	83 e0 03             	and    $0x3,%eax
  97:	89 c1                	mov    %eax,%ecx
  99:	d3 7d 08             	sarl   %cl,0x8(%ebp)
  9c:	eb 56                	jmp    f4 <transform_code+0x8d>
  9e:	8b 45 0c             	mov    0xc(%ebp),%eax
  
  a1:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax //

  a8:	f7 d0                	not    %eax
  aa:	21 45 08             	and    %eax,0x8(%ebp)
  ad:	eb 45                	jmp    f4 <transform_code+0x8d>
  af:	8b 45 0c             	mov    0xc(%ebp),%eax
  
  b2:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax  //CMKbeL

  b9:	c1 e0 08             	shl    $0x8,%eax
  bc:	09 45 08             	or     %eax,0x8(%ebp)
  bf:	eb 33                	jmp    f4 <transform_code+0x8d>
  c1:	8b 45 0c             	mov    0xc(%ebp),%eax
  c4:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  cb:	31 45 08             	xor    %eax,0x8(%ebp)
  ce:	eb 24                	jmp    f4 <transform_code+0x8d>
  d0:	8b 45 0c             	mov    0xc(%ebp),%eax
  d3:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  da:	f7 d0                	not    %eax
  dc:	09 45 08             	or     %eax,0x8(%ebp)
  df:	eb 13                	jmp    f4 <transform_code+0x8d>
  e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  e4:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
  eb:	01 45 08             	add    %eax,0x8(%ebp)
  ee:	eb 04                	jmp    f4 <transform_code+0x8d>
  f0:	f7 5d 08             	negl   0x8(%ebp)
  f3:	90                   	nop
  f4:	8b 45 08             	mov    0x8(%ebp),%eax
  f7:	5d                   	pop    %ebp
  f8:	c3                   	ret    

000000f9 <generate_code>:
  f9:	55                   	push   %ebp
  fa:	89 e5                	mov    %esp,%ebp
  fc:	83 ec 10             	sub    $0x10,%esp
  ff:	8b 45 08             	mov    0x8(%ebp),%eax

 102:	a3 00 00 00 00       	mov    %eax,0x0  //vvWaVK

 107:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 10e:	eb 1a                	jmp    12a <generate_code+0x31> 

 110:	a1 00 00 00 00       	mov    0x0,%eax //

 115:	ff 75 fc             	pushl  -0x4(%ebp)
 118:	50                   	push   %eax
 119:	e8 fc ff ff ff       	call   11a <generate_code+0x21> //
 11e:	83 c4 08             	add    $0x8,%esp

 121:	a3 00 00 00 00       	mov    %eax,0x0 // vvWaVK

 126:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 12a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 12d:	83 f8 0f             	cmp    $0xf,%eax
 130:	76 de                	jbe    110 <generate_code+0x17>
 132:	90                   	nop
 133:	c9                   	leave  
 134:	c3                   	ret    

00000135 <encode_1>:
 135:	55                   	push   %ebp
 136:	89 e5                	mov    %esp,%ebp
 138:	83 ec 18             	sub    $0x18,%esp
 13b:	83 ec 0c             	sub    $0xc,%esp
 13e:	ff 75 08             	pushl  0x8(%ebp)
 141:	e8 fc ff ff ff       	call   142 <encode_1+0xd>
 146:	83 c4 10             	add    $0x10,%esp
 149:	89 45 f0             	mov    %eax,-0x10(%ebp)
 14c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 153:	eb 5b                	jmp    1b0 <encode_1+0x7b>
 155:	8b 55 f4             	mov    -0xc(%ebp),%edx
 158:	8b 45 08             	mov    0x8(%ebp),%eax
 15b:	01 d0                	add    %edx,%eax
 15d:	0f b6 00             	movzbl (%eax),%eax
 160:	0f be c0             	movsbl %al,%eax
 163:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
 16a:	8b 15 00 00 00 00    	mov    0x0,%edx
 170:	31 d0                	xor    %edx,%eax
 172:	89 c1                	mov    %eax,%ecx
 174:	8b 55 f4             	mov    -0xc(%ebp),%edx
 177:	8b 45 08             	mov    0x8(%ebp),%eax
 17a:	01 d0                	add    %edx,%eax
 17c:	83 e1 7f             	and    $0x7f,%ecx
 17f:	89 ca                	mov    %ecx,%edx
 181:	88 10                	mov    %dl,(%eax)
 183:	8b 55 f4             	mov    -0xc(%ebp),%edx
 186:	8b 45 08             	mov    0x8(%ebp),%eax
 189:	01 d0                	add    %edx,%eax
 18b:	0f b6 00             	movzbl (%eax),%eax
 18e:	3c 1f                	cmp    $0x1f,%al
 190:	7e 0f                	jle    1a1 <encode_1+0x6c>
 192:	8b 55 f4             	mov    -0xc(%ebp),%edx
 195:	8b 45 08             	mov    0x8(%ebp),%eax
 198:	01 d0                	add    %edx,%eax
 19a:	0f b6 00             	movzbl (%eax),%eax
 19d:	3c 7f                	cmp    $0x7f,%al
 19f:	75 0b                	jne    1ac <encode_1+0x77>
 1a1:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1a4:	8b 45 08             	mov    0x8(%ebp),%eax
 1a7:	01 d0                	add    %edx,%eax
 1a9:	c6 00 3f             	movb   $0x3f,(%eax)
 1ac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 1b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 1b3:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 1b6:	7c 9d                	jl     155 <encode_1+0x20>
 1b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1bb:	c9                   	leave  
 1bc:	c3                   	ret    

000001bd <encode_2>:
 1bd:	55                   	push   %ebp
 1be:	89 e5                	mov    %esp,%ebp
 1c0:	83 ec 18             	sub    $0x18,%esp
 1c3:	83 ec 0c             	sub    $0xc,%esp
 1c6:	ff 75 08             	pushl  0x8(%ebp)
 1c9:	e8 fc ff ff ff       	call   1ca <encode_2+0xd>
 1ce:	83 c4 10             	add    $0x10,%esp
 1d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1d4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 1db:	eb 5a                	jmp    237 <encode_2+0x7a>
 1dd:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	01 d0                	add    %edx,%eax
 1e5:	0f b6 00             	movzbl (%eax),%eax
 1e8:	0f be c0             	movsbl %al,%eax
 1eb:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax

 1f2:	8b 15 00 00 00 00    	mov    0x0,%edx   // vvWaVk+0x0

 1f8:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 1fb:	8b 55 f4             	mov    -0xc(%ebp),%edx
 1fe:	8b 45 08             	mov    0x8(%ebp),%eax
 201:	01 d0                	add    %edx,%eax
 203:	83 e1 7f             	and    $0x7f,%ecx
 206:	89 ca                	mov    %ecx,%edx
 208:	88 10                	mov    %dl,(%eax)
 20a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 20d:	8b 45 08             	mov    0x8(%ebp),%eax
 210:	01 d0                	add    %edx,%eax
 212:	0f b6 00             	movzbl (%eax),%eax
 215:	3c 1f                	cmp    $0x1f,%al
 217:	7e 0f                	jle    228 <encode_2+0x6b>
 219:	8b 55 f4             	mov    -0xc(%ebp),%edx
 21c:	8b 45 08             	mov    0x8(%ebp),%eax
 21f:	01 d0                	add    %edx,%eax
 221:	0f b6 00             	movzbl (%eax),%eax
 224:	3c 7f                	cmp    $0x7f,%al
 226:	75 0b                	jne    233 <encode_2+0x76>
 228:	8b 55 f4             	mov    -0xc(%ebp),%edx
 22b:	8b 45 08             	mov    0x8(%ebp),%eax
 22e:	01 d0                	add    %edx,%eax
 230:	c6 00 2a             	movb   $0x2a,(%eax)
 233:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 237:	8b 45 f4             	mov    -0xc(%ebp),%eax
 23a:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 23d:	7c 9e                	jl     1dd <encode_2+0x20>
 23f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 242:	c9                   	leave  
 243:	c3                   	ret    

00000244 <do_phase>:
 244:	55                   	push   %ebp
 245:	89 e5                	mov    %esp,%ebp
 247:	83 ec 08             	sub    $0x8,%esp
 24a:	68 d1 00 00 00       	push   $0xd1
 24f:	e8 fc ff ff ff       	call   250 <do_phase+0xc> //
 254:	83 c4 04             	add    $0x4,%esp

 257:	a1 00 00 00 00       	mov    0x0,%eax //encoder+0x0

 25c:	83 ec 0c             	sub    $0xc,%esp
 25f:	68 00 00 00 00       	push   $0x0
 264:	ff d0                	call   *%eax
 266:	83 c4 10             	add    $0x10,%esp
 269:	83 ec 0c             	sub    $0xc,%esp
 26c:	68 00 00 00 00       	push   $0x0
 271:	e8 fc ff ff ff       	call   272 <do_phase+0x2e> //puts
 276:	83 c4 10             	add    $0x10,%esp
 279:	90                   	nop
 27a:	c9                   	leave  
 27b:	c3                   	ret    

Disassembly of section .data:

00000000 <BvuGmt>:
   0:	d0 ac d3 3c b1 36 9e 	shrb   -0x61c94ec4(%ebx,%edx,8)
   7:	65 9b                	gs fwait
   9:	e4 58                	in     $0x58,%al
   b:	4e                   	dec    %esi
   c:	3d fe 1a d3 a0       	cmp    $0xa0d31afe,%eax
  11:	47                   	inc    %edi
  12:	b4 c1                	mov    $0xc1,%ah
  14:	b9 a3 5a e1 1d       	mov    $0x1de15aa3,%ecx
  19:	eb 83                	jmp    ffffff9e <do_phase+0xfffffd5a>
  1b:	c7                   	(bad)  
  1c:	f0 6c                	lock insb (%dx),%es:(%edi)
  1e:	a2 26 2a 1d 39       	mov    %al,0x391d2a26
  23:	8b ec                	mov    %esp,%ebp
  25:	04 00                	add    $0x0,%al
	...

00000028 <phase_id>:  //.rodata
  28:	00 00                	add    %al,(%eax)
	...

0000002c <OdZAJybs>:
  2c:	30 38                	xor    %bh,(%eax)
  2e:	30 39                	xor    %bh,(%ecx)
  30:	4e                   	dec    %esi
  31:	4a                   	dec    %edx
  32:	55                   	push   %ebp
  33:	30 36                	xor    %dh,(%esi)
  35:	34 00                	xor    $0x0,%al
	...

00000038 <vvWaVk>:
  38:	ff                   	(bad)  
  39:	ff                   	(bad)  
  3a:	ff                   	(bad)  
  3b:	ff                 	incl   (%eax)

0000003c <encoder>:
	... //

00000044 <phase>:
  44:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rodata:

00000000 <CMKbeL-0x20>:
   0:	34 00                	xor    $0x0,%al
	...

00000020 <CMKbeL>:
  20:	fc                   	cld    
  21:	cf                   	iret   
  22:	ff                   	(bad)  
  23:	ff                   	(bad)  
  24:	3e 63 00             	arpl   %ax,%ds:(%eax)
  27:	00 bb 3a 00 00 62    	add    %bh,0x6200003a(%ebx)
  2d:	28 00                	sub    %al,(%eax)
  2f:	00 85 0f 00 00 33    	add    %al,0x3300000f(%ebp)
  35:	ce                   	into   
  36:	ff                   	(bad)  
  37:	ff                   	(bad)  
  38:	ef                   	out    %eax,(%dx)
  39:	89 ff                	mov    %edi,%edi
  3b:	ff 0e                	decl   (%esi)
  3d:	a8 ff                	test   $0xff,%al
  3f:	ff 5b 08             	lcall  *0x8(%ebx)
  42:	00 00                	add    %al,(%eax)
  44:	ff 69 00             	ljmp   *0x0(%ecx)
  47:	00 ce                	add    %cl,%dh
  49:	2c 00                	sub    $0x0,%al
  4b:	00 d0                	add    %dl,%al
  4d:	ec                   	in     (%dx),%al
  4e:	ff                   	(bad)  
  4f:	ff                   	(bad)  
  50:	7b a1                	jnp    fffffff3 <do_phase+0xfffffdaf>
  52:	ff                   	(bad)  
  53:	ff f0                	push   %eax
  55:	5b                   	pop    %ebx
  56:	00 00                	add    %al,(%eax)
  58:	81 cb ff ff 4e 47    	or     $0x474effff,%ebx
  5e:	00 00                	add    %al,(%eax)
  60:	85 00                	test   %eax,(%eax)
  62:	00 00                	add    %al,(%eax)
  64:	8a 00                	mov    (%eax),%al
  66:	00 00                	add    %al,(%eax)
  68:	9e                   	sahf   
  69:	00 00                	add    %al,(%eax)
  6b:	00 f0                	add    %dh,%al
  6d:	00 00                	add    %al,(%eax)
  6f:	00 af 00 00 00 c1    	add    %ch,-0x3f000000(%edi)
  75:	00 00                	add    %al,(%eax)
  77:	00 d0                	add    %dl,%al
  79:	00 00                	add    %al,(%eax)
  7b:	00 e1                	add    %ah,%cl
  7d:	00 00                	add    %al,(%eax)
	...

00000080 <KvXOBb>:
  80:	00 01                	add    %al,(%ecx)
  82:	02 03                	add    (%ebx),%al
  84:	04 05                	add    $0x5,%al
  86:	06                   	push   %es
  87:	07                   	pop    %es
  88:	08 09                	or     %cl,(%ecx)
  8a:	0a 0b                	or     (%ebx),%cl
  8c:	0c 0d                	or     $0xd,%al
  8e:	0e                   	push   %cs
  8f:	0f 10 11             	movups (%ecx),%xmm2
  92:	12 13                	adc    (%ebx),%dl
  94:	14 15                	adc    $0x15,%al
  96:	16                   	push   %ss
  97:	17                   	pop    %ss
  98:	18 19                	sbb    %bl,(%ecx)
  9a:	1a 1b                	sbb    (%ebx),%bl
  9c:	1c 1d                	sbb    $0x1d,%al
  9e:	1e                   	push   %ds
  9f:	1f                   	pop    %ds
  a0:	23 51 2b             	and    0x2b(%ecx),%edx
  a3:	56                   	push   %esi
  a4:	35 5a 38 5c 2c       	xor    $0x2c5c385a,%eax
  a9:	3c 72                	cmp    $0x72,%al
  ab:	6c                   	insb   (%dx),%es:(%edi)
  ac:	7c 27                	jl     d5 <KvXOBb+0x55>
  ae:	2f                   	das    
  af:	79 26                	jns    d7 <KvXOBb+0x57>
  b1:	4a                   	dec    %edx
  b2:	30 61 4b             	xor    %ah,0x4b(%ecx)
  b5:	5b                   	pop    %ebx
  b6:	32 37                	xor    (%edi),%dh
  b8:	24 66                	and    $0x66,%al
  ba:	29 7b 3a             	sub    %edi,0x3a(%ebx)
  bd:	7e 63                	jle    122 <generate_code+0x29>
  bf:	22 41 4e             	and    0x4e(%ecx),%al
  c2:	5d                   	pop    %ebp
  c3:	71 28                	jno    ed <KvXOBb+0x6d>
  c5:	54                   	push   %esp
  c6:	68 59 50 33 57       	push   $0x57335059
  cb:	4c                   	dec    %esp
  cc:	6d                   	insl   (%dx),%es:(%edi)
  cd:	6b 69 21 65          	imul   $0x65,0x21(%ecx),%ebp
  d1:	3b 74 5e 4f          	cmp    0x4f(%esi,%ebx,2),%esi
  d5:	2e 40                	cs inc %eax
  d7:	76 49                	jbe    122 <generate_code+0x29>
  d9:	3e 64 31 45 60       	ds xor %eax,%fs:0x60(%ebp)
  de:	52                   	push   %edx
  df:	39 3d 55 4d 78 2d    	cmp    %edi,0x2d784d55
  e5:	36 5f                	ss pop %edi
  e7:	2a 73 20             	sub    0x20(%ebx),%dh
  ea:	42                   	inc    %edx
  eb:	3f                   	aas    
  ec:	43                   	inc    %ebx
  ed:	47                   	inc    %edi
  ee:	44                   	inc    %esp
  ef:	70 25                	jo     116 <generate_code+0x1d>
  f1:	67 53                	addr16 push %ebx
  f3:	62 6f 48             	bound  %ebp,0x48(%edi)
  f6:	77 58                	ja     150 <encode_1+0x1b>
  f8:	7d 7a                	jge    174 <encode_1+0x3f>
  fa:	46                   	inc    %esi
  fb:	6a 75                	push   $0x75
  fd:	34 6e                	xor    $0x6e,%al
  ff:	7f                   	.byte 0x7f

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43             	add    %al,0x43(%edi)
   3:	43                   	inc    %ebx
   4:	3a 20                	cmp    (%eax),%ah
   6:	28 44 65 62          	sub    %al,0x62(%ebp,%eiz,2)
   a:	69 61 6e 20 38 2e 33 	imul   $0x332e3820,0x6e(%ecx),%esp
  11:	2e 30 2d 36 29 20 38 	xor    %ch,%cs:0x38202936
  18:	2e 33 2e             	xor    %cs:(%esi),%ebp
  1b:	30 00                	xor    %al,(%eax)

Disassembly of section .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	adc    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	00 00                	add    %al,(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	01 7a 52             	add    %edi,0x52(%edx)
   b:	00 01                	add    %al,(%ecx)
   d:	7c 08                	jl     17 <.eh_frame+0x17>
   f:	01 1b                	add    %ebx,(%ebx)
  11:	0c 04                	or     $0x4,%al
  13:	04 88                	add    $0x88,%al
  15:	01 00                	add    %eax,(%eax)
  17:	00 1c 00             	add    %bl,(%eax,%eax,1)
  1a:	00 00                	add    %al,(%eax)
  1c:	1c 00                	sbb    $0x0,%al
  1e:	00 00                	add    %al,(%eax)
  20:	00 00                	add    %al,(%eax)
  22:	00 00                	add    %al,(%eax)
  24:	67 00 00             	add    %al,(%bx,%si)
  27:	00 00                	add    %al,(%eax)
  29:	41                   	inc    %ecx
  2a:	0e                   	push   %cs
  2b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  31:	02 63 c5             	add    -0x3b(%ebx),%ah
  34:	0c 04                	or     $0x4,%al
  36:	04 00                	add    $0x0,%al
  38:	1c 00                	sbb    $0x0,%al
  3a:	00 00                	add    %al,(%eax)
  3c:	3c 00                	cmp    $0x0,%al
  3e:	00 00                	add    %al,(%eax)
  40:	67 00 00             	add    %al,(%bx,%si)
  43:	00 92 00 00 00 00    	add    %dl,0x0(%edx)
  49:	41                   	inc    %ecx
  4a:	0e                   	push   %cs
  4b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  51:	02 8e c5 0c 04 04    	add    0x4040cc5(%esi),%cl
  57:	00 1c 00             	add    %bl,(%eax,%eax,1)
  5a:	00 00                	add    %al,(%eax)
  5c:	5c                   	pop    %esp
  5d:	00 00                	add    %al,(%eax)
  5f:	00 f9                	add    %bh,%cl
  61:	00 00                	add    %al,(%eax)
  63:	00 3c 00             	add    %bh,(%eax,%eax,1)
  66:	00 00                	add    %al,(%eax)
  68:	00 41 0e             	add    %al,0xe(%ecx)
  6b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  71:	78 c5                	js     38 <.eh_frame+0x38>
  73:	0c 04                	or     $0x4,%al
  75:	04 00                	add    $0x0,%al
  77:	00 1c 00             	add    %bl,(%eax,%eax,1)
  7a:	00 00                	add    %al,(%eax)
  7c:	7c 00                	jl     7e <.eh_frame+0x7e>
  7e:	00 00                	add    %al,(%eax)
  80:	35 01 00 00 88       	xor    $0x88000001,%eax
  85:	00 00                	add    %al,(%eax)
  87:	00 00                	add    %al,(%eax)
  89:	41                   	inc    %ecx
  8a:	0e                   	push   %cs
  8b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  91:	02 84 c5 0c 04 04 00 	add    0x4040c(%ebp,%eax,8),%al
  98:	1c 00                	sbb    $0x0,%al
  9a:	00 00                	add    %al,(%eax)
  9c:	9c                   	pushf  
  9d:	00 00                	add    %al,(%eax)
  9f:	00 bd 01 00 00 87    	add    %bh,-0x78ffffff(%ebp)
  a5:	00 00                	add    %al,(%eax)
  a7:	00 00                	add    %al,(%eax)
  a9:	41                   	inc    %ecx
  aa:	0e                   	push   %cs
  ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  b1:	02 83 c5 0c 04 04    	add    0x4040cc5(%ebx),%al
  b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
  ba:	00 00                	add    %al,(%eax)
  bc:	bc 00 00 00 44       	mov    $0x44000000,%esp
  c1:	02 00                	add    (%eax),%al
  c3:	00 38                	add    %bh,(%eax)
  c5:	00 00                	add    %al,(%eax)
  c7:	00 00                	add    %al,(%eax)
  c9:	41                   	inc    %ecx
  ca:	0e                   	push   %cs
  cb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  d1:	74 c5                	je     98 <.eh_frame+0x98>
  d3:	0c 04                	or     $0x4,%al
  d5:	04 00                	add    $0x0,%al
	...
