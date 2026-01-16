
0000000000401210 <frame_dummy>:
  401210:	f3 0f 1e fa          	endbr64
  401214:	eb 8a                	jmp    4011a0 <register_tm_clones>

0000000000401216 <func2>:
  401216:	f3 0f 1e fa          	endbr64
  40121a:	55                   	push   %rbp
  40121b:	48 89 e5             	mov    %rsp,%rbp
  40121e:	48 83 ec 10          	sub    $0x10,%rsp
  401222:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401225:	81 7d fc f8 03 00 00 	cmpl   $0x3f8,-0x4(%rbp)
  40122c:	74 1e                	je     40124c <func2+0x36>
  40122e:	48 8d 05 d3 0d 00 00 	lea    0xdd3(%rip),%rax        # 402008 <_IO_stdin_used+0x8>
  401235:	48 89 c7             	mov    %rax,%rdi
  401238:	b8 00 00 00 00       	mov    $0x0,%eax
  40123d:	e8 8e fe ff ff       	call   4010d0 <printf@plt>
  401242:	bf 00 00 00 00       	mov    $0x0,%edi
  401247:	e8 d4 fe ff ff       	call   401120 <exit@plt>
  40124c:	48 8d 05 e8 0d 00 00 	lea    0xde8(%rip),%rax        # 40203b <_IO_stdin_used+0x3b>
  401253:	48 89 c7             	mov    %rax,%rdi
  401256:	b8 00 00 00 00       	mov    $0x0,%eax
  40125b:	e8 70 fe ff ff       	call   4010d0 <printf@plt>
  401260:	bf 00 00 00 00       	mov    $0x0,%edi
  401265:	e8 b6 fe ff ff       	call   401120 <exit@plt>

000000000040126a <fucc>:
  40126a:	f3 0f 1e fa          	endbr64
  40126e:	55                   	push   %rbp
  40126f:	48 89 e5             	mov    %rsp,%rbp
  401272:	48 83 ec 10          	sub    $0x10,%rsp
  401276:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401279:	48 8d 05 cc 0d 00 00 	lea    0xdcc(%rip),%rax        # 40204c <_IO_stdin_used+0x4c>
  401280:	48 89 c7             	mov    %rax,%rdi
  401283:	b8 00 00 00 00       	mov    $0x0,%eax
  401288:	e8 43 fe ff ff       	call   4010d0 <printf@plt>
  40128d:	90                   	nop
  40128e:	c9                   	leave
  40128f:	c3                   	ret

0000000000401290 <func>:
  401290:	f3 0f 1e fa          	endbr64
  401294:	55                   	push   %rbp
  401295:	48 89 e5             	mov    %rsp,%rbp
  401298:	48 83 ec 20          	sub    $0x20,%rsp
  40129c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4012a0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4012a4:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  4012a8:	ba 38 00 00 00       	mov    $0x38,%edx
  4012ad:	48 89 ce             	mov    %rcx,%rsi
  4012b0:	48 89 c7             	mov    %rax,%rdi
  4012b3:	e8 38 fe ff ff       	call   4010f0 <memcpy@plt>
  4012b8:	90                   	nop
  4012b9:	c9                   	leave
  4012ba:	c3                   	ret

00000000004012bb <pop_rdi>:
  4012bb:	f3 0f 1e fa          	endbr64
  4012bf:	55                   	push   %rbp
  4012c0:	48 89 e5             	mov    %rsp,%rbp
  4012c3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4012c7:	5f                   	pop    %rdi
  4012c8:	c3                   	ret
  4012c9:	90                   	nop
  4012ca:	5d                   	pop    %rbp
  4012cb:	c3                   	ret

00000000004012cc <main>:
  4012cc:	f3 0f 1e fa          	endbr64
  4012d0:	55                   	push   %rbp
  4012d1:	48 89 e5             	mov    %rsp,%rbp
  4012d4:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
  4012db:	89 bd dc fe ff ff    	mov    %edi,-0x124(%rbp)
  4012e1:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
  4012e8:	48 8d 05 7b 0d 00 00 	lea    0xd7b(%rip),%rax        # 40206a <_IO_stdin_used+0x6a>
  4012ef:	48 89 c7             	mov    %rax,%rdi
  4012f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f7:	e8 d4 fd ff ff       	call   4010d0 <printf@plt>
  4012fc:	83 bd dc fe ff ff 02 	cmpl   $0x2,-0x124(%rbp)
  401303:	74 32                	je     401337 <main+0x6b>
  401305:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  40130c:	48 8b 10             	mov    (%rax),%rdx
  40130f:	48 8b 05 4a 2d 00 00 	mov    0x2d4a(%rip),%rax        # 404060 <stderr@GLIBC_2.2.5>
  401316:	48 8d 0d 5f 0d 00 00 	lea    0xd5f(%rip),%rcx        # 40207c <_IO_stdin_used+0x7c>
  40131d:	48 89 ce             	mov    %rcx,%rsi
  401320:	48 89 c7             	mov    %rax,%rdi
  401323:	b8 00 00 00 00       	mov    $0x0,%eax
  401328:	e8 b3 fd ff ff       	call   4010e0 <fprintf@plt>
  40132d:	b8 01 00 00 00       	mov    $0x1,%eax
  401332:	e9 e7 00 00 00       	jmp    40141e <main+0x152>
  401337:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
  40133e:	48 83 c0 08          	add    $0x8,%rax
  401342:	48 8b 00             	mov    (%rax),%rax
  401345:	48 8d 15 42 0d 00 00 	lea    0xd42(%rip),%rdx        # 40208e <_IO_stdin_used+0x8e>
  40134c:	48 89 d6             	mov    %rdx,%rsi
  40134f:	48 89 c7             	mov    %rax,%rdi
  401352:	e8 a9 fd ff ff       	call   401100 <fopen@plt>
  401357:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40135b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401360:	75 19                	jne    40137b <main+0xaf>
  401362:	48 8d 05 27 0d 00 00 	lea    0xd27(%rip),%rax        # 402090 <_IO_stdin_used+0x90>
  401369:	48 89 c7             	mov    %rax,%rdi
  40136c:	e8 9f fd ff ff       	call   401110 <perror@plt>
  401371:	b8 01 00 00 00       	mov    $0x1,%eax
  401376:	e9 a3 00 00 00       	jmp    40141e <main+0x152>
  40137b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40137f:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  401386:	48 89 d1             	mov    %rdx,%rcx
  401389:	ba 00 01 00 00       	mov    $0x100,%edx
  40138e:	be 01 00 00 00       	mov    $0x1,%esi
  401393:	48 89 c7             	mov    %rax,%rdi
  401396:	e8 15 fd ff ff       	call   4010b0 <fread@plt>
  40139b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40139f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4013a4:	75 22                	jne    4013c8 <main+0xfc>
  4013a6:	48 8d 05 e9 0c 00 00 	lea    0xce9(%rip),%rax        # 402096 <_IO_stdin_used+0x96>
  4013ad:	48 89 c7             	mov    %rax,%rdi
  4013b0:	e8 5b fd ff ff       	call   401110 <perror@plt>
  4013b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4013b9:	48 89 c7             	mov    %rax,%rdi
  4013bc:	e8 ff fc ff ff       	call   4010c0 <fclose@plt>
  4013c1:	b8 01 00 00 00       	mov    $0x1,%eax
  4013c6:	eb 56                	jmp    40141e <main+0x152>
  4013c8:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4013cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4013d3:	48 01 d0             	add    %rdx,%rax
  4013d6:	c6 00 00             	movb   $0x0,(%rax)
  4013d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4013dd:	48 89 c7             	mov    %rax,%rdi
  4013e0:	e8 db fc ff ff       	call   4010c0 <fclose@plt>
  4013e5:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  4013ec:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4013ef:	89 c7                	mov    %eax,%edi
  4013f1:	e8 74 fe ff ff       	call   40126a <fucc>
  4013f6:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
  4013fd:	48 89 c7             	mov    %rax,%rdi
  401400:	e8 8b fe ff ff       	call   401290 <func>
  401405:	48 8d 05 90 0c 00 00 	lea    0xc90(%rip),%rax        # 40209c <_IO_stdin_used+0x9c>
  40140c:	48 89 c7             	mov    %rax,%rdi
  40140f:	b8 00 00 00 00       	mov    $0x0,%eax
  401414:	e8 b7 fc ff ff       	call   4010d0 <printf@plt>
  401419:	b8 00 00 00 00       	mov    $0x0,%eax
  40141e:	c9                   	leave
  40141f:	c3                   	ret

Disassembly of section .fini:

0000000000401420 <_fini>:
  401420:	f3 0f 1e fa          	endbr64
  401424:	48 83 ec 08          	sub    $0x8,%rsp
  401428:	48 83 c4 08          	add    $0x8,%rsp
  40142c:	c3                   	ret
