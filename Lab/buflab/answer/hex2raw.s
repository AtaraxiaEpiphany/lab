
hex2raw:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	53                   	push   %ebx
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	e8 47 01 00 00       	call   1150 <__x86.get_pc_thunk.bx>
    1009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
    100f:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
    1015:	85 c0                	test   %eax,%eax
    1017:	74 02                	je     101b <_init+0x1b>
    1019:	ff d0                	call   *%eax
    101b:	83 c4 08             	add    $0x8,%esp
    101e:	5b                   	pop    %ebx
    101f:	c3                   	ret    

Disassembly of section .plt:

00001020 <.plt>:
    1020:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
    1026:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    102c:	00 00                	add    %al,(%eax)
	...

00001030 <strcmp@plt>:
    1030:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

00001040 <printf@plt>:
    1040:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1046:	68 08 00 00 00       	push   $0x8
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

00001050 <__isoc99_fscanf@plt>:
    1050:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1056:	68 10 00 00 00       	push   $0x10
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

00001060 <free@plt>:
    1060:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1066:	68 18 00 00 00       	push   $0x18
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

00001070 <realloc@plt>:
    1070:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1076:	68 20 00 00 00       	push   $0x20
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

00001080 <malloc@plt>:
    1080:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1086:	68 28 00 00 00       	push   $0x28
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

00001090 <puts@plt>:
    1090:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    1096:	68 30 00 00 00       	push   $0x30
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

000010a0 <__libc_start_main@plt>:
    10a0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    10a6:	68 38 00 00 00       	push   $0x38
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

000010b0 <fprintf@plt>:
    10b0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    10b6:	68 40 00 00 00       	push   $0x40
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

000010c0 <write@plt>:
    10c0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
    10c6:	68 48 00 00 00       	push   $0x48
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

000010d0 <getopt@plt>:
    10d0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
    10d6:	68 50 00 00 00       	push   $0x50
    10db:	e9 40 ff ff ff       	jmp    1020 <.plt>

000010e0 <__isoc99_sscanf@plt>:
    10e0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
    10e6:	68 58 00 00 00       	push   $0x58
    10eb:	e9 30 ff ff ff       	jmp    1020 <.plt>

000010f0 <__ctype_b_loc@plt>:
    10f0:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
    10f6:	68 60 00 00 00       	push   $0x60
    10fb:	e9 20 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00001100 <__cxa_finalize@plt>:
    1100:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
    1106:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001110 <_start>:
    1110:	31 ed                	xor    %ebp,%ebp
    1112:	5e                   	pop    %esi
    1113:	89 e1                	mov    %esp,%ecx
    1115:	83 e4 f0             	and    $0xfffffff0,%esp
    1118:	50                   	push   %eax
    1119:	54                   	push   %esp
    111a:	52                   	push   %edx
    111b:	e8 22 00 00 00       	call   1142 <_start+0x32>
    1120:	81 c3 e0 2e 00 00    	add    $0x2ee0,%ebx
    1126:	8d 83 20 d6 ff ff    	lea    -0x29e0(%ebx),%eax
    112c:	50                   	push   %eax
    112d:	8d 83 c0 d5 ff ff    	lea    -0x2a40(%ebx),%eax
    1133:	50                   	push   %eax
    1134:	51                   	push   %ecx
    1135:	56                   	push   %esi
    1136:	ff b3 f8 ff ff ff    	pushl  -0x8(%ebx)
    113c:	e8 5f ff ff ff       	call   10a0 <__libc_start_main@plt>
    1141:	f4                   	hlt    
    1142:	8b 1c 24             	mov    (%esp),%ebx
    1145:	c3                   	ret    
    1146:	66 90                	xchg   %ax,%ax
    1148:	66 90                	xchg   %ax,%ax
    114a:	66 90                	xchg   %ax,%ax
    114c:	66 90                	xchg   %ax,%ax
    114e:	66 90                	xchg   %ax,%ax

00001150 <__x86.get_pc_thunk.bx>:
    1150:	8b 1c 24             	mov    (%esp),%ebx
    1153:	c3                   	ret    
    1154:	66 90                	xchg   %ax,%ax
    1156:	66 90                	xchg   %ax,%ax
    1158:	66 90                	xchg   %ax,%ax
    115a:	66 90                	xchg   %ax,%ax
    115c:	66 90                	xchg   %ax,%ax
    115e:	66 90                	xchg   %ax,%ax

00001160 <deregister_tm_clones>:
    1160:	e8 e0 00 00 00       	call   1245 <__x86.get_pc_thunk.dx>
    1165:	81 c2 9b 2e 00 00    	add    $0x2e9b,%edx
    116b:	8d 8a 48 00 00 00    	lea    0x48(%edx),%ecx
    1171:	8d 82 48 00 00 00    	lea    0x48(%edx),%eax
    1177:	39 c8                	cmp    %ecx,%eax
    1179:	74 1d                	je     1198 <deregister_tm_clones+0x38>
    117b:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    1181:	85 c0                	test   %eax,%eax
    1183:	74 13                	je     1198 <deregister_tm_clones+0x38>
    1185:	55                   	push   %ebp
    1186:	89 e5                	mov    %esp,%ebp
    1188:	83 ec 14             	sub    $0x14,%esp
    118b:	51                   	push   %ecx
    118c:	ff d0                	call   *%eax
    118e:	83 c4 10             	add    $0x10,%esp
    1191:	c9                   	leave  
    1192:	c3                   	ret    
    1193:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1197:	90                   	nop
    1198:	c3                   	ret    
    1199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000011a0 <register_tm_clones>:
    11a0:	e8 a0 00 00 00       	call   1245 <__x86.get_pc_thunk.dx>
    11a5:	81 c2 5b 2e 00 00    	add    $0x2e5b,%edx
    11ab:	55                   	push   %ebp
    11ac:	89 e5                	mov    %esp,%ebp
    11ae:	53                   	push   %ebx
    11af:	8d 8a 48 00 00 00    	lea    0x48(%edx),%ecx
    11b5:	8d 82 48 00 00 00    	lea    0x48(%edx),%eax
    11bb:	83 ec 04             	sub    $0x4,%esp
    11be:	29 c8                	sub    %ecx,%eax
    11c0:	c1 f8 02             	sar    $0x2,%eax
    11c3:	89 c3                	mov    %eax,%ebx
    11c5:	c1 eb 1f             	shr    $0x1f,%ebx
    11c8:	01 d8                	add    %ebx,%eax
    11ca:	d1 f8                	sar    %eax
    11cc:	74 14                	je     11e2 <register_tm_clones+0x42>
    11ce:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    11d4:	85 d2                	test   %edx,%edx
    11d6:	74 0a                	je     11e2 <register_tm_clones+0x42>
    11d8:	83 ec 08             	sub    $0x8,%esp
    11db:	50                   	push   %eax
    11dc:	51                   	push   %ecx
    11dd:	ff d2                	call   *%edx
    11df:	83 c4 10             	add    $0x10,%esp
    11e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11e5:	c9                   	leave  
    11e6:	c3                   	ret    
    11e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ee:	66 90                	xchg   %ax,%ax

000011f0 <__do_global_dtors_aux>:
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	53                   	push   %ebx
    11f4:	e8 57 ff ff ff       	call   1150 <__x86.get_pc_thunk.bx>
    11f9:	81 c3 07 2e 00 00    	add    $0x2e07,%ebx
    11ff:	83 ec 04             	sub    $0x4,%esp
    1202:	80 bb 84 00 00 00 00 	cmpb   $0x0,0x84(%ebx)
    1209:	75 27                	jne    1232 <__do_global_dtors_aux+0x42>
    120b:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1211:	85 c0                	test   %eax,%eax
    1213:	74 11                	je     1226 <__do_global_dtors_aux+0x36>
    1215:	83 ec 0c             	sub    $0xc,%esp
    1218:	ff b3 44 00 00 00    	pushl  0x44(%ebx)
    121e:	e8 dd fe ff ff       	call   1100 <__cxa_finalize@plt>
    1223:	83 c4 10             	add    $0x10,%esp
    1226:	e8 35 ff ff ff       	call   1160 <deregister_tm_clones>
    122b:	c6 83 84 00 00 00 01 	movb   $0x1,0x84(%ebx)
    1232:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1235:	c9                   	leave  
    1236:	c3                   	ret    
    1237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    123e:	66 90                	xchg   %ax,%ax

00001240 <frame_dummy>:
    1240:	e9 5b ff ff ff       	jmp    11a0 <register_tm_clones>

00001245 <__x86.get_pc_thunk.dx>:
    1245:	8b 14 24             	mov    (%esp),%edx
    1248:	c3                   	ret    

00001249 <convert_to_byte_string>:
    1249:	55                   	push   %ebp
    124a:	89 e5                	mov    %esp,%ebp
    124c:	53                   	push   %ebx
    124d:	83 ec 24             	sub    $0x24,%esp
    1250:	89 e0                	mov    %esp,%eax
    1252:	89 c3                	mov    %eax,%ebx
    1254:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
    125b:	c7 45 e4 00 10 00 00 	movl   $0x1000,-0x1c(%ebp)
    1262:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1265:	8d 50 ff             	lea    -0x1(%eax),%edx
    1268:	89 55 e0             	mov    %edx,-0x20(%ebp)
    126b:	89 c2                	mov    %eax,%edx
    126d:	b8 10 00 00 00       	mov    $0x10,%eax
    1272:	83 e8 01             	sub    $0x1,%eax
    1275:	01 d0                	add    %edx,%eax
    1277:	b9 10 00 00 00       	mov    $0x10,%ecx
    127c:	ba 00 00 00 00       	mov    $0x0,%edx
    1281:	f7 f1                	div    %ecx
    1283:	6b c0 10             	imul   $0x10,%eax,%eax
    1286:	29 c4                	sub    %eax,%esp
    1288:	89 e0                	mov    %esp,%eax
    128a:	83 c0 00             	add    $0x0,%eax
    128d:	89 45 dc             	mov    %eax,-0x24(%ebp)
    1290:	c7 45 ec 00 04 00 00 	movl   $0x400,-0x14(%ebp)
    1297:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    129e:	83 ec 0c             	sub    $0xc,%esp
    12a1:	68 00 04 00 00       	push   $0x400
    12a6:	e8 fc ff ff ff       	call   12a7 <convert_to_byte_string+0x5e>
    12ab:	83 c4 10             	add    $0x10,%esp
    12ae:	89 45 f4             	mov    %eax,-0xc(%ebp)
    12b1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    12b5:	0f 85 6a 01 00 00    	jne    1425 <convert_to_byte_string+0x1dc>
    12bb:	b8 00 00 00 00       	mov    $0x0,%eax
    12c0:	e9 8a 01 00 00       	jmp    144f <convert_to_byte_string+0x206>
    12c5:	8b 45 dc             	mov    -0x24(%ebp),%eax
    12c8:	83 ec 08             	sub    $0x8,%esp
    12cb:	68 08 20 00 00       	push   $0x2008
    12d0:	50                   	push   %eax
    12d1:	e8 fc ff ff ff       	call   12d2 <convert_to_byte_string+0x89>
    12d6:	83 c4 10             	add    $0x10,%esp
    12d9:	85 c0                	test   %eax,%eax
    12db:	75 09                	jne    12e6 <convert_to_byte_string+0x9d>
    12dd:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
    12e1:	e9 3f 01 00 00       	jmp    1425 <convert_to_byte_string+0x1dc>
    12e6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    12e9:	83 ec 08             	sub    $0x8,%esp
    12ec:	68 0b 20 00 00       	push   $0x200b
    12f1:	50                   	push   %eax
    12f2:	e8 fc ff ff ff       	call   12f3 <convert_to_byte_string+0xaa>
    12f7:	83 c4 10             	add    $0x10,%esp
    12fa:	85 c0                	test   %eax,%eax
    12fc:	75 42                	jne    1340 <convert_to_byte_string+0xf7>
    12fe:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1302:	7f 33                	jg     1337 <convert_to_byte_string+0xee>
    1304:	a1 00 00 00 00       	mov    0x0,%eax
    1309:	83 ec 04             	sub    $0x4,%esp
    130c:	68 0b 20 00 00       	push   $0x200b
    1311:	68 0e 20 00 00       	push   $0x200e
    1316:	50                   	push   %eax
    1317:	e8 fc ff ff ff       	call   1318 <convert_to_byte_string+0xcf>
    131c:	83 c4 10             	add    $0x10,%esp
    131f:	83 ec 0c             	sub    $0xc,%esp
    1322:	ff 75 f4             	pushl  -0xc(%ebp)
    1325:	e8 fc ff ff ff       	call   1326 <convert_to_byte_string+0xdd>
    132a:	83 c4 10             	add    $0x10,%esp
    132d:	b8 00 00 00 00       	mov    $0x0,%eax
    1332:	e9 18 01 00 00       	jmp    144f <convert_to_byte_string+0x206>
    1337:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
    133b:	e9 e5 00 00 00       	jmp    1425 <convert_to_byte_string+0x1dc>
    1340:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1344:	0f 85 db 00 00 00    	jne    1425 <convert_to_byte_string+0x1dc>
    134a:	e8 fc ff ff ff       	call   134b <convert_to_byte_string+0x102>
    134f:	8b 10                	mov    (%eax),%edx
    1351:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1354:	0f b6 00             	movzbl (%eax),%eax
    1357:	0f be c0             	movsbl %al,%eax
    135a:	01 c0                	add    %eax,%eax
    135c:	01 d0                	add    %edx,%eax
    135e:	0f b7 00             	movzwl (%eax),%eax
    1361:	0f b7 c0             	movzwl %ax,%eax
    1364:	25 00 10 00 00       	and    $0x1000,%eax
    1369:	85 c0                	test   %eax,%eax
    136b:	74 2f                	je     139c <convert_to_byte_string+0x153>
    136d:	e8 fc ff ff ff       	call   136e <convert_to_byte_string+0x125>
    1372:	8b 10                	mov    (%eax),%edx
    1374:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1377:	0f b6 40 01          	movzbl 0x1(%eax),%eax
    137b:	0f be c0             	movsbl %al,%eax
    137e:	01 c0                	add    %eax,%eax
    1380:	01 d0                	add    %edx,%eax
    1382:	0f b7 00             	movzwl (%eax),%eax
    1385:	0f b7 c0             	movzwl %ax,%eax
    1388:	25 00 10 00 00       	and    $0x1000,%eax
    138d:	85 c0                	test   %eax,%eax
    138f:	74 0b                	je     139c <convert_to_byte_string+0x153>
    1391:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1394:	0f b6 40 02          	movzbl 0x2(%eax),%eax
    1398:	84 c0                	test   %al,%al
    139a:	74 32                	je     13ce <convert_to_byte_string+0x185>
    139c:	8b 55 dc             	mov    -0x24(%ebp),%edx
    139f:	a1 00 00 00 00       	mov    0x0,%eax
    13a4:	83 ec 04             	sub    $0x4,%esp
    13a7:	52                   	push   %edx
    13a8:	68 28 20 00 00       	push   $0x2028
    13ad:	50                   	push   %eax
    13ae:	e8 fc ff ff ff       	call   13af <convert_to_byte_string+0x166>
    13b3:	83 c4 10             	add    $0x10,%esp
    13b6:	83 ec 0c             	sub    $0xc,%esp
    13b9:	ff 75 f4             	pushl  -0xc(%ebp)
    13bc:	e8 fc ff ff ff       	call   13bd <convert_to_byte_string+0x174>
    13c1:	83 c4 10             	add    $0x10,%esp
    13c4:	b8 00 00 00 00       	mov    $0x0,%eax
    13c9:	e9 81 00 00 00       	jmp    144f <convert_to_byte_string+0x206>
    13ce:	8b 45 dc             	mov    -0x24(%ebp),%eax
    13d1:	83 ec 0c             	sub    $0xc,%esp
    13d4:	50                   	push   %eax
    13d5:	e8 b6 01 00 00       	call   1590 <convert_to_hex_value>
    13da:	83 c4 10             	add    $0x10,%esp
    13dd:	88 45 db             	mov    %al,-0x25(%ebp)
    13e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
    13e3:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    13e6:	75 27                	jne    140f <convert_to_byte_string+0x1c6>
    13e8:	8b 45 ec             	mov    -0x14(%ebp),%eax
    13eb:	01 c0                	add    %eax,%eax
    13ed:	83 ec 08             	sub    $0x8,%esp
    13f0:	50                   	push   %eax
    13f1:	ff 75 f4             	pushl  -0xc(%ebp)
    13f4:	e8 fc ff ff ff       	call   13f5 <convert_to_byte_string+0x1ac>
    13f9:	83 c4 10             	add    $0x10,%esp
    13fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    13ff:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    1403:	75 07                	jne    140c <convert_to_byte_string+0x1c3>
    1405:	b8 00 00 00 00       	mov    $0x0,%eax
    140a:	eb 43                	jmp    144f <convert_to_byte_string+0x206>
    140c:	d1 65 ec             	shll   -0x14(%ebp)
    140f:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1412:	8d 50 01             	lea    0x1(%eax),%edx
    1415:	89 55 f0             	mov    %edx,-0x10(%ebp)
    1418:	89 c2                	mov    %eax,%edx
    141a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    141d:	01 c2                	add    %eax,%edx
    141f:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
    1423:	88 02                	mov    %al,(%edx)
    1425:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1428:	83 ec 04             	sub    $0x4,%esp
    142b:	50                   	push   %eax
    142c:	68 85 20 00 00       	push   $0x2085
    1431:	ff 75 08             	pushl  0x8(%ebp)
    1434:	e8 fc ff ff ff       	call   1435 <convert_to_byte_string+0x1ec>
    1439:	83 c4 10             	add    $0x10,%esp
    143c:	85 c0                	test   %eax,%eax
    143e:	0f 8f 81 fe ff ff    	jg     12c5 <convert_to_byte_string+0x7c>
    1444:	8b 45 0c             	mov    0xc(%ebp),%eax
    1447:	8b 55 f0             	mov    -0x10(%ebp),%edx
    144a:	89 10                	mov    %edx,(%eax)
    144c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    144f:	89 dc                	mov    %ebx,%esp
    1451:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1454:	c9                   	leave  
    1455:	c3                   	ret    

00001456 <usage>:
    1456:	55                   	push   %ebp
    1457:	89 e5                	mov    %esp,%ebp
    1459:	83 ec 08             	sub    $0x8,%esp
    145c:	83 ec 08             	sub    $0x8,%esp
    145f:	ff 75 08             	pushl  0x8(%ebp)
    1462:	68 88 20 00 00       	push   $0x2088
    1467:	e8 fc ff ff ff       	call   1468 <usage+0x12>
    146c:	83 c4 10             	add    $0x10,%esp
    146f:	83 ec 0c             	sub    $0xc,%esp
    1472:	68 9d 20 00 00       	push   $0x209d
    1477:	e8 fc ff ff ff       	call   1478 <usage+0x22>
    147c:	83 c4 10             	add    $0x10,%esp
    147f:	83 ec 0c             	sub    $0xc,%esp
    1482:	68 ac 20 00 00       	push   $0x20ac
    1487:	e8 fc ff ff ff       	call   1488 <usage+0x32>
    148c:	83 c4 10             	add    $0x10,%esp
    148f:	90                   	nop
    1490:	c9                   	leave  
    1491:	c3                   	ret    

00001492 <main>:
    1492:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1496:	83 e4 f0             	and    $0xfffffff0,%esp
    1499:	ff 71 fc             	pushl  -0x4(%ecx)
    149c:	55                   	push   %ebp
    149d:	89 e5                	mov    %esp,%ebp
    149f:	53                   	push   %ebx
    14a0:	51                   	push   %ecx
    14a1:	83 ec 20             	sub    $0x20,%esp
    14a4:	89 cb                	mov    %ecx,%ebx
    14a6:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
    14ad:	eb 4f                	jmp    14fe <main+0x6c>
    14af:	0f be 45 ef          	movsbl -0x11(%ebp),%eax
    14b3:	83 f8 68             	cmp    $0x68,%eax
    14b6:	74 07                	je     14bf <main+0x2d>
    14b8:	83 f8 6e             	cmp    $0x6e,%eax
    14bb:	74 1d                	je     14da <main+0x48>
    14bd:	eb 24                	jmp    14e3 <main+0x51>
    14bf:	8b 43 04             	mov    0x4(%ebx),%eax
    14c2:	8b 00                	mov    (%eax),%eax
    14c4:	83 ec 0c             	sub    $0xc,%esp
    14c7:	50                   	push   %eax
    14c8:	e8 89 ff ff ff       	call   1456 <usage>
    14cd:	83 c4 10             	add    $0x10,%esp
    14d0:	b8 00 00 00 00       	mov    $0x0,%eax
    14d5:	e9 ac 00 00 00       	jmp    1586 <main+0xf4>
    14da:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%ebp)
    14e1:	eb 1b                	jmp    14fe <main+0x6c>
    14e3:	8b 43 04             	mov    0x4(%ebx),%eax
    14e6:	8b 00                	mov    (%eax),%eax
    14e8:	83 ec 0c             	sub    $0xc,%esp
    14eb:	50                   	push   %eax
    14ec:	e8 65 ff ff ff       	call   1456 <usage>
    14f1:	83 c4 10             	add    $0x10,%esp
    14f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    14f9:	e9 88 00 00 00       	jmp    1586 <main+0xf4>
    14fe:	83 ec 04             	sub    $0x4,%esp
    1501:	68 c8 20 00 00       	push   $0x20c8
    1506:	ff 73 04             	pushl  0x4(%ebx)
    1509:	ff 33                	pushl  (%ebx)
    150b:	e8 fc ff ff ff       	call   150c <main+0x7a>
    1510:	83 c4 10             	add    $0x10,%esp
    1513:	88 45 ef             	mov    %al,-0x11(%ebp)
    1516:	80 7d ef ff          	cmpb   $0xff,-0x11(%ebp)
    151a:	75 93                	jne    14af <main+0x1d>
    151c:	a1 00 00 00 00       	mov    0x0,%eax
    1521:	83 ec 08             	sub    $0x8,%esp
    1524:	8d 55 e4             	lea    -0x1c(%ebp),%edx
    1527:	52                   	push   %edx
    1528:	50                   	push   %eax
    1529:	e8 1b fd ff ff       	call   1249 <convert_to_byte_string>
    152e:	83 c4 10             	add    $0x10,%esp
    1531:	89 45 e8             	mov    %eax,-0x18(%ebp)
    1534:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
    1538:	75 07                	jne    1541 <main+0xaf>
    153a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    153f:	eb 45                	jmp    1586 <main+0xf4>
    1541:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    1548:	eb 2f                	jmp    1579 <main+0xe7>
    154a:	c6 45 e3 0a          	movb   $0xa,-0x1d(%ebp)
    154e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1551:	83 ec 04             	sub    $0x4,%esp
    1554:	50                   	push   %eax
    1555:	ff 75 e8             	pushl  -0x18(%ebp)
    1558:	6a 01                	push   $0x1
    155a:	e8 fc ff ff ff       	call   155b <main+0xc9>
    155f:	83 c4 10             	add    $0x10,%esp
    1562:	83 ec 04             	sub    $0x4,%esp
    1565:	6a 01                	push   $0x1
    1567:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    156a:	50                   	push   %eax
    156b:	6a 01                	push   $0x1
    156d:	e8 fc ff ff ff       	call   156e <main+0xdc>
    1572:	83 c4 10             	add    $0x10,%esp
    1575:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    1579:	8b 45 f0             	mov    -0x10(%ebp),%eax
    157c:	3b 45 f4             	cmp    -0xc(%ebp),%eax
    157f:	7c c9                	jl     154a <main+0xb8>
    1581:	b8 00 00 00 00       	mov    $0x0,%eax
    1586:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1589:	59                   	pop    %ecx
    158a:	5b                   	pop    %ebx
    158b:	5d                   	pop    %ebp
    158c:	8d 61 fc             	lea    -0x4(%ecx),%esp
    158f:	c3                   	ret    

00001590 <convert_to_hex_value>:
    1590:	55                   	push   %ebp
    1591:	89 e5                	mov    %esp,%ebp
    1593:	83 ec 18             	sub    $0x18,%esp
    1596:	83 ec 04             	sub    $0x4,%esp
    1599:	8d 45 f4             	lea    -0xc(%ebp),%eax
    159c:	50                   	push   %eax
    159d:	68 cb 20 00 00       	push   $0x20cb
    15a2:	ff 75 08             	pushl  0x8(%ebp)
    15a5:	e8 fc ff ff ff       	call   15a6 <convert_to_hex_value+0x16>
    15aa:	83 c4 10             	add    $0x10,%esp
    15ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
    15b0:	c9                   	leave  
    15b1:	c3                   	ret    
    15b2:	66 90                	xchg   %ax,%ax
    15b4:	66 90                	xchg   %ax,%ax
    15b6:	66 90                	xchg   %ax,%ax
    15b8:	66 90                	xchg   %ax,%ax
    15ba:	66 90                	xchg   %ax,%ax
    15bc:	66 90                	xchg   %ax,%ax
    15be:	66 90                	xchg   %ax,%ax

000015c0 <__libc_csu_init>:
    15c0:	55                   	push   %ebp
    15c1:	57                   	push   %edi
    15c2:	56                   	push   %esi
    15c3:	53                   	push   %ebx
    15c4:	e8 87 fb ff ff       	call   1150 <__x86.get_pc_thunk.bx>
    15c9:	81 c3 37 2a 00 00    	add    $0x2a37,%ebx
    15cf:	83 ec 0c             	sub    $0xc,%esp
    15d2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
    15d6:	e8 25 fa ff ff       	call   1000 <_init>
    15db:	8d b3 e8 fe ff ff    	lea    -0x118(%ebx),%esi
    15e1:	8d 83 e4 fe ff ff    	lea    -0x11c(%ebx),%eax
    15e7:	29 c6                	sub    %eax,%esi
    15e9:	c1 fe 02             	sar    $0x2,%esi
    15ec:	74 1f                	je     160d <__libc_csu_init+0x4d>
    15ee:	31 ff                	xor    %edi,%edi
    15f0:	83 ec 04             	sub    $0x4,%esp
    15f3:	55                   	push   %ebp
    15f4:	ff 74 24 2c          	pushl  0x2c(%esp)
    15f8:	ff 74 24 2c          	pushl  0x2c(%esp)
    15fc:	ff 94 bb e4 fe ff ff 	call   *-0x11c(%ebx,%edi,4)
    1603:	83 c7 01             	add    $0x1,%edi
    1606:	83 c4 10             	add    $0x10,%esp
    1609:	39 fe                	cmp    %edi,%esi
    160b:	75 e3                	jne    15f0 <__libc_csu_init+0x30>
    160d:	83 c4 0c             	add    $0xc,%esp
    1610:	5b                   	pop    %ebx
    1611:	5e                   	pop    %esi
    1612:	5f                   	pop    %edi
    1613:	5d                   	pop    %ebp
    1614:	c3                   	ret    
    1615:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    161c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001620 <__libc_csu_fini>:
    1620:	c3                   	ret    

Disassembly of section .fini:

00001624 <_fini>:
    1624:	53                   	push   %ebx
    1625:	83 ec 08             	sub    $0x8,%esp
    1628:	e8 23 fb ff ff       	call   1150 <__x86.get_pc_thunk.bx>
    162d:	81 c3 d3 29 00 00    	add    $0x29d3,%ebx
    1633:	83 c4 08             	add    $0x8,%esp
    1636:	5b                   	pop    %ebx
    1637:	c3                   	ret    
