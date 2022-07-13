
makecookie:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	53                   	push   %ebx
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	e8 b7 00 00 00       	call   10c0 <__x86.get_pc_thunk.bx>
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

00001030 <printf@plt>:
    1030:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

00001040 <srand@plt>:
    1040:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1046:	68 08 00 00 00       	push   $0x8
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1056:	68 10 00 00 00       	push   $0x10
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

00001060 <rand@plt>:
    1060:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1066:	68 18 00 00 00       	push   $0x18
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

00001070 <__cxa_finalize@plt>:
    1070:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
    1076:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001080 <_start>:
    1080:	31 ed                	xor    %ebp,%ebp
    1082:	5e                   	pop    %esi
    1083:	89 e1                	mov    %esp,%ecx
    1085:	83 e4 f0             	and    $0xfffffff0,%esp
    1088:	50                   	push   %eax
    1089:	54                   	push   %esp
    108a:	52                   	push   %edx
    108b:	e8 22 00 00 00       	call   10b2 <_start+0x32>
    1090:	81 c3 70 2f 00 00    	add    $0x2f70,%ebx
    1096:	8d 83 50 d3 ff ff    	lea    -0x2cb0(%ebx),%eax
    109c:	50                   	push   %eax
    109d:	8d 83 f0 d2 ff ff    	lea    -0x2d10(%ebx),%eax
    10a3:	50                   	push   %eax
    10a4:	51                   	push   %ecx
    10a5:	56                   	push   %esi
    10a6:	ff b3 f8 ff ff ff    	pushl  -0x8(%ebx)
    10ac:	e8 9f ff ff ff       	call   1050 <__libc_start_main@plt>
    10b1:	f4                   	hlt    
    10b2:	8b 1c 24             	mov    (%esp),%ebx
    10b5:	c3                   	ret    
    10b6:	66 90                	xchg   %ax,%ax
    10b8:	66 90                	xchg   %ax,%ax
    10ba:	66 90                	xchg   %ax,%ax
    10bc:	66 90                	xchg   %ax,%ax
    10be:	66 90                	xchg   %ax,%ax

000010c0 <__x86.get_pc_thunk.bx>:
    10c0:	8b 1c 24             	mov    (%esp),%ebx
    10c3:	c3                   	ret    
    10c4:	66 90                	xchg   %ax,%ax
    10c6:	66 90                	xchg   %ax,%ax
    10c8:	66 90                	xchg   %ax,%ax
    10ca:	66 90                	xchg   %ax,%ax
    10cc:	66 90                	xchg   %ax,%ax
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <deregister_tm_clones>:
    10d0:	e8 e0 00 00 00       	call   11b5 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 2b 2f 00 00    	add    $0x2f2b,%edx
    10db:	8d 8a 24 00 00 00    	lea    0x24(%edx),%ecx
    10e1:	8d 82 24 00 00 00    	lea    0x24(%edx),%eax
    10e7:	39 c8                	cmp    %ecx,%eax
    10e9:	74 1d                	je     1108 <deregister_tm_clones+0x38>
    10eb:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10f1:	85 c0                	test   %eax,%eax
    10f3:	74 13                	je     1108 <deregister_tm_clones+0x38>
    10f5:	55                   	push   %ebp
    10f6:	89 e5                	mov    %esp,%ebp
    10f8:	83 ec 14             	sub    $0x14,%esp
    10fb:	51                   	push   %ecx
    10fc:	ff d0                	call   *%eax
    10fe:	83 c4 10             	add    $0x10,%esp
    1101:	c9                   	leave  
    1102:	c3                   	ret    
    1103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1107:	90                   	nop
    1108:	c3                   	ret    
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001110 <register_tm_clones>:
    1110:	e8 a0 00 00 00       	call   11b5 <__x86.get_pc_thunk.dx>
    1115:	81 c2 eb 2e 00 00    	add    $0x2eeb,%edx
    111b:	55                   	push   %ebp
    111c:	89 e5                	mov    %esp,%ebp
    111e:	53                   	push   %ebx
    111f:	8d 8a 24 00 00 00    	lea    0x24(%edx),%ecx
    1125:	8d 82 24 00 00 00    	lea    0x24(%edx),%eax
    112b:	83 ec 04             	sub    $0x4,%esp
    112e:	29 c8                	sub    %ecx,%eax
    1130:	c1 f8 02             	sar    $0x2,%eax
    1133:	89 c3                	mov    %eax,%ebx
    1135:	c1 eb 1f             	shr    $0x1f,%ebx
    1138:	01 d8                	add    %ebx,%eax
    113a:	d1 f8                	sar    %eax
    113c:	74 14                	je     1152 <register_tm_clones+0x42>
    113e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1144:	85 d2                	test   %edx,%edx
    1146:	74 0a                	je     1152 <register_tm_clones+0x42>
    1148:	83 ec 08             	sub    $0x8,%esp
    114b:	50                   	push   %eax
    114c:	51                   	push   %ecx
    114d:	ff d2                	call   *%edx
    114f:	83 c4 10             	add    $0x10,%esp
    1152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1155:	c9                   	leave  
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax

00001160 <__do_global_dtors_aux>:
    1160:	55                   	push   %ebp
    1161:	89 e5                	mov    %esp,%ebp
    1163:	53                   	push   %ebx
    1164:	e8 57 ff ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1169:	81 c3 97 2e 00 00    	add    $0x2e97,%ebx
    116f:	83 ec 04             	sub    $0x4,%esp
    1172:	80 bb 24 00 00 00 00 	cmpb   $0x0,0x24(%ebx)
    1179:	75 27                	jne    11a2 <__do_global_dtors_aux+0x42>
    117b:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1181:	85 c0                	test   %eax,%eax
    1183:	74 11                	je     1196 <__do_global_dtors_aux+0x36>
    1185:	83 ec 0c             	sub    $0xc,%esp
    1188:	ff b3 20 00 00 00    	pushl  0x20(%ebx)
    118e:	e8 dd fe ff ff       	call   1070 <__cxa_finalize@plt>
    1193:	83 c4 10             	add    $0x10,%esp
    1196:	e8 35 ff ff ff       	call   10d0 <deregister_tm_clones>
    119b:	c6 83 24 00 00 00 01 	movb   $0x1,0x24(%ebx)
    11a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11a5:	c9                   	leave  
    11a6:	c3                   	ret    
    11a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ae:	66 90                	xchg   %ax,%ax

000011b0 <frame_dummy>:
    11b0:	e9 5b ff ff ff       	jmp    1110 <register_tm_clones>

000011b5 <__x86.get_pc_thunk.dx>:
    11b5:	8b 14 24             	mov    (%esp),%edx
    11b8:	c3                   	ret    

000011b9 <main>:
    11b9:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11bd:	83 e4 f0             	and    $0xfffffff0,%esp
    11c0:	ff 71 fc             	pushl  -0x4(%ecx)
    11c3:	55                   	push   %ebp
    11c4:	89 e5                	mov    %esp,%ebp
    11c6:	53                   	push   %ebx
    11c7:	51                   	push   %ecx
    11c8:	83 ec 10             	sub    $0x10,%esp
    11cb:	89 cb                	mov    %ecx,%ebx
    11cd:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
    11d4:	eb 37                	jmp    120d <main+0x54>
    11d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
    11d9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    11e0:	8b 43 04             	mov    0x4(%ebx),%eax
    11e3:	01 d0                	add    %edx,%eax
    11e5:	8b 00                	mov    (%eax),%eax
    11e7:	83 ec 0c             	sub    $0xc,%esp
    11ea:	50                   	push   %eax
    11eb:	e8 b7 00 00 00       	call   12a7 <gencookie>
    11f0:	83 c4 10             	add    $0x10,%esp
    11f3:	89 45 f0             	mov    %eax,-0x10(%ebp)
    11f6:	83 ec 08             	sub    $0x8,%esp
    11f9:	ff 75 f0             	pushl  -0x10(%ebp)
    11fc:	68 08 20 00 00       	push   $0x2008
    1201:	e8 fc ff ff ff       	call   1202 <main+0x49>
    1206:	83 c4 10             	add    $0x10,%esp
    1209:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    120d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1210:	3b 03                	cmp    (%ebx),%eax
    1212:	7c c2                	jl     11d6 <main+0x1d>
    1214:	b8 00 00 00 00       	mov    $0x0,%eax
    1219:	8d 65 f8             	lea    -0x8(%ebp),%esp
    121c:	59                   	pop    %ecx
    121d:	5b                   	pop    %ebx
    121e:	5d                   	pop    %ebp
    121f:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1222:	c3                   	ret    

00001223 <hash>:
    1223:	55                   	push   %ebp
    1224:	89 e5                	mov    %esp,%ebp
    1226:	83 ec 10             	sub    $0x10,%esp
    1229:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    1230:	eb 1a                	jmp    124c <hash+0x29>
    1232:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1235:	6b c8 67             	imul   $0x67,%eax,%ecx
    1238:	8b 45 08             	mov    0x8(%ebp),%eax
    123b:	8d 50 01             	lea    0x1(%eax),%edx
    123e:	89 55 08             	mov    %edx,0x8(%ebp)
    1241:	0f b6 00             	movzbl (%eax),%eax
    1244:	0f be c0             	movsbl %al,%eax
    1247:	01 c8                	add    %ecx,%eax
    1249:	89 45 fc             	mov    %eax,-0x4(%ebp)
    124c:	8b 45 08             	mov    0x8(%ebp),%eax
    124f:	0f b6 00             	movzbl (%eax),%eax
    1252:	84 c0                	test   %al,%al
    1254:	75 dc                	jne    1232 <hash+0xf>
    1256:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1259:	c9                   	leave  
    125a:	c3                   	ret    

0000125b <check>:
    125b:	55                   	push   %ebp
    125c:	89 e5                	mov    %esp,%ebp
    125e:	83 ec 10             	sub    $0x10,%esp
    1261:	8b 45 08             	mov    0x8(%ebp),%eax
    1264:	c1 e8 1c             	shr    $0x1c,%eax
    1267:	85 c0                	test   %eax,%eax
    1269:	75 07                	jne    1272 <check+0x17>
    126b:	b8 00 00 00 00       	mov    $0x0,%eax
    1270:	eb 33                	jmp    12a5 <check+0x4a>
    1272:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    1279:	eb 1f                	jmp    129a <check+0x3f>
    127b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    127e:	8b 55 08             	mov    0x8(%ebp),%edx
    1281:	89 c1                	mov    %eax,%ecx
    1283:	d3 ea                	shr    %cl,%edx
    1285:	89 d0                	mov    %edx,%eax
    1287:	0f b6 c0             	movzbl %al,%eax
    128a:	83 f8 0a             	cmp    $0xa,%eax
    128d:	75 07                	jne    1296 <check+0x3b>
    128f:	b8 00 00 00 00       	mov    $0x0,%eax
    1294:	eb 0f                	jmp    12a5 <check+0x4a>
    1296:	83 45 fc 08          	addl   $0x8,-0x4(%ebp)
    129a:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%ebp)
    129e:	7e db                	jle    127b <check+0x20>
    12a0:	b8 01 00 00 00       	mov    $0x1,%eax
    12a5:	c9                   	leave  
    12a6:	c3                   	ret    

000012a7 <gencookie>:
    12a7:	55                   	push   %ebp
    12a8:	89 e5                	mov    %esp,%ebp
    12aa:	83 ec 18             	sub    $0x18,%esp
    12ad:	ff 75 08             	pushl  0x8(%ebp)
    12b0:	e8 6e ff ff ff       	call   1223 <hash>
    12b5:	83 c4 04             	add    $0x4,%esp
    12b8:	83 ec 0c             	sub    $0xc,%esp
    12bb:	50                   	push   %eax
    12bc:	e8 fc ff ff ff       	call   12bd <gencookie+0x16>
    12c1:	83 c4 10             	add    $0x10,%esp
    12c4:	e8 fc ff ff ff       	call   12c5 <gencookie+0x1e>
    12c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
    12cc:	83 ec 0c             	sub    $0xc,%esp
    12cf:	ff 75 f4             	pushl  -0xc(%ebp)
    12d2:	e8 84 ff ff ff       	call   125b <check>
    12d7:	83 c4 10             	add    $0x10,%esp
    12da:	85 c0                	test   %eax,%eax
    12dc:	74 e6                	je     12c4 <gencookie+0x1d>
    12de:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12e1:	c9                   	leave  
    12e2:	c3                   	ret    
    12e3:	66 90                	xchg   %ax,%ax
    12e5:	66 90                	xchg   %ax,%ax
    12e7:	66 90                	xchg   %ax,%ax
    12e9:	66 90                	xchg   %ax,%ax
    12eb:	66 90                	xchg   %ax,%ax
    12ed:	66 90                	xchg   %ax,%ax
    12ef:	90                   	nop

000012f0 <__libc_csu_init>:
    12f0:	55                   	push   %ebp
    12f1:	57                   	push   %edi
    12f2:	56                   	push   %esi
    12f3:	53                   	push   %ebx
    12f4:	e8 c7 fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    12f9:	81 c3 07 2d 00 00    	add    $0x2d07,%ebx
    12ff:	83 ec 0c             	sub    $0xc,%esp
    1302:	8b 6c 24 28          	mov    0x28(%esp),%ebp
    1306:	e8 f5 fc ff ff       	call   1000 <_init>
    130b:	8d b3 e8 fe ff ff    	lea    -0x118(%ebx),%esi
    1311:	8d 83 e4 fe ff ff    	lea    -0x11c(%ebx),%eax
    1317:	29 c6                	sub    %eax,%esi
    1319:	c1 fe 02             	sar    $0x2,%esi
    131c:	74 1f                	je     133d <__libc_csu_init+0x4d>
    131e:	31 ff                	xor    %edi,%edi
    1320:	83 ec 04             	sub    $0x4,%esp
    1323:	55                   	push   %ebp
    1324:	ff 74 24 2c          	pushl  0x2c(%esp)
    1328:	ff 74 24 2c          	pushl  0x2c(%esp)
    132c:	ff 94 bb e4 fe ff ff 	call   *-0x11c(%ebx,%edi,4)
    1333:	83 c7 01             	add    $0x1,%edi
    1336:	83 c4 10             	add    $0x10,%esp
    1339:	39 fe                	cmp    %edi,%esi
    133b:	75 e3                	jne    1320 <__libc_csu_init+0x30>
    133d:	83 c4 0c             	add    $0xc,%esp
    1340:	5b                   	pop    %ebx
    1341:	5e                   	pop    %esi
    1342:	5f                   	pop    %edi
    1343:	5d                   	pop    %ebp
    1344:	c3                   	ret    
    1345:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    134c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001350 <__libc_csu_fini>:
    1350:	c3                   	ret    

Disassembly of section .fini:

00001354 <_fini>:
    1354:	53                   	push   %ebx
    1355:	83 ec 08             	sub    $0x8,%esp
    1358:	e8 63 fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    135d:	81 c3 a3 2c 00 00    	add    $0x2ca3,%ebx
    1363:	83 c4 08             	add    $0x8,%esp
    1366:	5b                   	pop    %ebx
    1367:	c3                   	ret    
