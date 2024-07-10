
sum:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	pushq  0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 2f 00 00 	bnd jmpq *0x2f8b(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 2f 00 00 	bnd jmpq *0x2f8d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <__stack_chk_fail@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 2f 00 00 	bnd jmpq *0x2f45(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <printf@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmpq *0x2f3d(%rip)        # 3fc8 <printf@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <atoi@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmpq *0x2f35(%rip)        # 3fd0 <atoi@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	4c 8d 05 66 02 00 00 	lea    0x266(%rip),%r8        # 1320 <__libc_csu_fini>
    10ba:	48 8d 0d ef 01 00 00 	lea    0x1ef(%rip),%rcx        # 12b0 <__libc_csu_init>
    10c1:	48 8d 3d 1b 01 00 00 	lea    0x11b(%rip),%rdi        # 11e3 <main>
    10c8:	ff 15 12 2f 00 00    	callq  *0x2f12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	48 8d 05 32 2f 00 00 	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 2e 00 00 	mov    0x2eee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 2f 00 00 	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	48 8d 35 02 2f 00 00 	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 2e 00 00 	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	callq  1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116c:	c6 05 9d 2e 00 00 01 	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	retq   
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmpq   1100 <register_tm_clones>

0000000000001189 <plus>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	55                   	push   %rbp
    118e:	48 89 e5             	mov    %rsp,%rbp
    1191:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1195:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1199:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    119d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11a1:	48 01 d0             	add    %rdx,%rax
    11a4:	5d                   	pop    %rbp
    11a5:	c3                   	retq   

00000000000011a6 <sumstore>:
    11a6:	f3 0f 1e fa          	endbr64 
    11aa:	55                   	push   %rbp
    11ab:	48 89 e5             	mov    %rsp,%rbp
    11ae:	48 83 ec 28          	sub    $0x28,%rsp
    11b2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    11b6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    11ba:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    11be:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    11c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11c6:	48 89 d6             	mov    %rdx,%rsi
    11c9:	48 89 c7             	mov    %rax,%rdi
    11cc:	e8 b8 ff ff ff       	callq  1189 <plus>
    11d1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11d5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    11d9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11dd:	48 89 10             	mov    %rdx,(%rax)
    11e0:	90                   	nop
    11e1:	c9                   	leaveq 
    11e2:	c3                   	retq   

00000000000011e3 <main>:
    11e3:	f3 0f 1e fa          	endbr64 
    11e7:	55                   	push   %rbp
    11e8:	48 89 e5             	mov    %rsp,%rbp
    11eb:	48 83 ec 30          	sub    $0x30,%rsp
    11ef:	89 7d dc             	mov    %edi,-0x24(%rbp)
    11f2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    11f6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fd:	00 00 
    11ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1203:	31 c0                	xor    %eax,%eax
    1205:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1209:	48 8b 00             	mov    (%rax),%rax
    120c:	48 89 c6             	mov    %rax,%rsi
    120f:	48 8d 3d ee 0d 00 00 	lea    0xdee(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1216:	b8 00 00 00 00       	mov    $0x0,%eax
    121b:	e8 60 fe ff ff       	callq  1080 <printf@plt>
    1220:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1224:	48 83 c0 08          	add    $0x8,%rax
    1228:	48 8b 00             	mov    (%rax),%rax
    122b:	48 89 c7             	mov    %rax,%rdi
    122e:	e8 5d fe ff ff       	callq  1090 <atoi@plt>
    1233:	48 98                	cltq   
    1235:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1239:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    123d:	48 83 c0 10          	add    $0x10,%rax
    1241:	48 8b 00             	mov    (%rax),%rax
    1244:	48 89 c7             	mov    %rax,%rdi
    1247:	e8 44 fe ff ff       	callq  1090 <atoi@plt>
    124c:	48 98                	cltq   
    124e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1252:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1256:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    125a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    125e:	48 89 ce             	mov    %rcx,%rsi
    1261:	48 89 c7             	mov    %rax,%rdi
    1264:	e8 3d ff ff ff       	callq  11a6 <sumstore>
    1269:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    126d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1271:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1275:	48 89 c6             	mov    %rax,%rsi
    1278:	48 8d 3d 8f 0d 00 00 	lea    0xd8f(%rip),%rdi        # 200e <_IO_stdin_used+0xe>
    127f:	b8 00 00 00 00       	mov    $0x0,%eax
    1284:	e8 f7 fd ff ff       	callq  1080 <printf@plt>
    1289:	b8 00 00 00 00       	mov    $0x0,%eax
    128e:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    1292:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    1299:	00 00 
    129b:	74 05                	je     12a2 <main+0xbf>
    129d:	e8 ce fd ff ff       	callq  1070 <__stack_chk_fail@plt>
    12a2:	c9                   	leaveq 
    12a3:	c3                   	retq   
    12a4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ab:	00 00 00 
    12ae:	66 90                	xchg   %ax,%ax

00000000000012b0 <__libc_csu_init>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	41 57                	push   %r15
    12b6:	4c 8d 3d eb 2a 00 00 	lea    0x2aeb(%rip),%r15        # 3da8 <__frame_dummy_init_array_entry>
    12bd:	41 56                	push   %r14
    12bf:	49 89 d6             	mov    %rdx,%r14
    12c2:	41 55                	push   %r13
    12c4:	49 89 f5             	mov    %rsi,%r13
    12c7:	41 54                	push   %r12
    12c9:	41 89 fc             	mov    %edi,%r12d
    12cc:	55                   	push   %rbp
    12cd:	48 8d 2d dc 2a 00 00 	lea    0x2adc(%rip),%rbp        # 3db0 <__do_global_dtors_aux_fini_array_entry>
    12d4:	53                   	push   %rbx
    12d5:	4c 29 fd             	sub    %r15,%rbp
    12d8:	48 83 ec 08          	sub    $0x8,%rsp
    12dc:	e8 1f fd ff ff       	callq  1000 <_init>
    12e1:	48 c1 fd 03          	sar    $0x3,%rbp
    12e5:	74 1f                	je     1306 <__libc_csu_init+0x56>
    12e7:	31 db                	xor    %ebx,%ebx
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12f0:	4c 89 f2             	mov    %r14,%rdx
    12f3:	4c 89 ee             	mov    %r13,%rsi
    12f6:	44 89 e7             	mov    %r12d,%edi
    12f9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12fd:	48 83 c3 01          	add    $0x1,%rbx
    1301:	48 39 dd             	cmp    %rbx,%rbp
    1304:	75 ea                	jne    12f0 <__libc_csu_init+0x40>
    1306:	48 83 c4 08          	add    $0x8,%rsp
    130a:	5b                   	pop    %rbx
    130b:	5d                   	pop    %rbp
    130c:	41 5c                	pop    %r12
    130e:	41 5d                	pop    %r13
    1310:	41 5e                	pop    %r14
    1312:	41 5f                	pop    %r15
    1314:	c3                   	retq   
    1315:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    131c:	00 00 00 00 

0000000000001320 <__libc_csu_fini>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	c3                   	retq   

Disassembly of section .fini:

0000000000001328 <_fini>:
    1328:	f3 0f 1e fa          	endbr64 
    132c:	48 83 ec 08          	sub    $0x8,%rsp
    1330:	48 83 c4 08          	add    $0x8,%rsp
    1334:	c3                   	retq   
