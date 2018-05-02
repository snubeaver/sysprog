
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d0>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 05                	je     400c5d <_init+0x15>
  400c58:	e8 43 02 00 00       	callq  400ea0 <socket@plt+0x10>
  400c5d:	48 83 c4 08          	add    $0x8,%rsp
  400c61:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <strcasecmp@plt-0x10>:
  400c70:	ff 35 92 43 20 00    	pushq  0x204392(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 43 20 00    	jmpq   *0x204394(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cf0 <__stack_chk_fail@plt>:
  400cf0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d00 <mmap@plt>:
  400d00:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d50 <__libc_start_main@plt>:
  400d50:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d60 <signal@plt>:
  400d60:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d70 <gethostbyname@plt>:
  400d70:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d80 <__memmove_chk@plt>:
  400d80:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d90 <strtol@plt>:
  400d90:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400db0 <time@plt>:
  400db0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e00 <__printf_chk@plt>:
  400e00:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e40 <gethostname@plt>:
  400e40:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e50 <exit@plt>:
  400e50:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e60 <connect@plt>:
  400e60:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e70 <__fprintf_chk@plt>:
  400e70:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e76:	68 1f 00 00 00       	pushq  $0x1f
  400e7b:	e9 f0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e80 <__sprintf_chk@plt>:
  400e80:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e86:	68 20 00 00 00       	pushq  $0x20
  400e8b:	e9 e0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400e96:	68 21 00 00 00       	pushq  $0x21
  400e9b:	e9 d0 fd ff ff       	jmpq   400c70 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ea0 <.plt.got>:
  400ea0:	ff 25 52 41 20 00    	jmpq   *0x204152(%rip)        # 604ff8 <_DYNAMIC+0x1d0>
  400ea6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400eb0 <_start>:
  400eb0:	31 ed                	xor    %ebp,%ebp
  400eb2:	49 89 d1             	mov    %rdx,%r9
  400eb5:	5e                   	pop    %rsi
  400eb6:	48 89 e2             	mov    %rsp,%rdx
  400eb9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ebd:	50                   	push   %rax
  400ebe:	54                   	push   %rsp
  400ebf:	49 c7 c0 d0 2f 40 00 	mov    $0x402fd0,%r8
  400ec6:	48 c7 c1 60 2f 40 00 	mov    $0x402f60,%rcx
  400ecd:	48 c7 c7 b5 11 40 00 	mov    $0x4011b5,%rdi
  400ed4:	e8 77 fe ff ff       	callq  400d50 <__libc_start_main@plt>
  400ed9:	f4                   	hlt    
  400eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ee0 <deregister_tm_clones>:
  400ee0:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400ee5:	55                   	push   %rbp
  400ee6:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400eec:	48 83 f8 0e          	cmp    $0xe,%rax
  400ef0:	48 89 e5             	mov    %rsp,%rbp
  400ef3:	76 1b                	jbe    400f10 <deregister_tm_clones+0x30>
  400ef5:	b8 00 00 00 00       	mov    $0x0,%eax
  400efa:	48 85 c0             	test   %rax,%rax
  400efd:	74 11                	je     400f10 <deregister_tm_clones+0x30>
  400eff:	5d                   	pop    %rbp
  400f00:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f05:	ff e0                	jmpq   *%rax
  400f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f0e:	00 00 
  400f10:	5d                   	pop    %rbp
  400f11:	c3                   	retq   
  400f12:	0f 1f 40 00          	nopl   0x0(%rax)
  400f16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f1d:	00 00 00 

0000000000400f20 <register_tm_clones>:
  400f20:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f25:	55                   	push   %rbp
  400f26:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f2d:	48 c1 fe 03          	sar    $0x3,%rsi
  400f31:	48 89 e5             	mov    %rsp,%rbp
  400f34:	48 89 f0             	mov    %rsi,%rax
  400f37:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f3b:	48 01 c6             	add    %rax,%rsi
  400f3e:	48 d1 fe             	sar    %rsi
  400f41:	74 15                	je     400f58 <register_tm_clones+0x38>
  400f43:	b8 00 00 00 00       	mov    $0x0,%eax
  400f48:	48 85 c0             	test   %rax,%rax
  400f4b:	74 0b                	je     400f58 <register_tm_clones+0x38>
  400f4d:	5d                   	pop    %rbp
  400f4e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f53:	ff e0                	jmpq   *%rax
  400f55:	0f 1f 00             	nopl   (%rax)
  400f58:	5d                   	pop    %rbp
  400f59:	c3                   	retq   
  400f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 81 45 20 00 00 	cmpb   $0x0,0x204581(%rip)        # 6054e8 <completed.7594>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 6e ff ff ff       	callq  400ee0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 6e 45 20 00 01 	movb   $0x1,0x20456e(%rip)        # 6054e8 <completed.7594>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	bf 20 4e 60 00       	mov    $0x604e20,%edi
  400f85:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400f89:	75 05                	jne    400f90 <frame_dummy+0x10>
  400f8b:	eb 93                	jmp    400f20 <register_tm_clones>
  400f8d:	0f 1f 00             	nopl   (%rax)
  400f90:	b8 00 00 00 00       	mov    $0x0,%eax
  400f95:	48 85 c0             	test   %rax,%rax
  400f98:	74 f1                	je     400f8b <frame_dummy+0xb>
  400f9a:	55                   	push   %rbp
  400f9b:	48 89 e5             	mov    %rsp,%rbp
  400f9e:	ff d0                	callq  *%rax
  400fa0:	5d                   	pop    %rbp
  400fa1:	e9 7a ff ff ff       	jmpq   400f20 <register_tm_clones>

0000000000400fa6 <usage>:
  400fa6:	48 83 ec 08          	sub    $0x8,%rsp
  400faa:	48 89 fa             	mov    %rdi,%rdx
  400fad:	83 3d 74 45 20 00 00 	cmpl   $0x0,0x204574(%rip)        # 605528 <is_checker>
  400fb4:	74 3e                	je     400ff4 <usage+0x4e>
  400fb6:	be e8 2f 40 00       	mov    $0x402fe8,%esi
  400fbb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc5:	e8 36 fe ff ff       	callq  400e00 <__printf_chk@plt>
  400fca:	bf 20 30 40 00       	mov    $0x403020,%edi
  400fcf:	e8 fc fc ff ff       	callq  400cd0 <puts@plt>
  400fd4:	bf 98 31 40 00       	mov    $0x403198,%edi
  400fd9:	e8 f2 fc ff ff       	callq  400cd0 <puts@plt>
  400fde:	bf 48 30 40 00       	mov    $0x403048,%edi
  400fe3:	e8 e8 fc ff ff       	callq  400cd0 <puts@plt>
  400fe8:	bf b2 31 40 00       	mov    $0x4031b2,%edi
  400fed:	e8 de fc ff ff       	callq  400cd0 <puts@plt>
  400ff2:	eb 32                	jmp    401026 <usage+0x80>
  400ff4:	be ce 31 40 00       	mov    $0x4031ce,%esi
  400ff9:	bf 01 00 00 00       	mov    $0x1,%edi
  400ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  401003:	e8 f8 fd ff ff       	callq  400e00 <__printf_chk@plt>
  401008:	bf 70 30 40 00       	mov    $0x403070,%edi
  40100d:	e8 be fc ff ff       	callq  400cd0 <puts@plt>
  401012:	bf 98 30 40 00       	mov    $0x403098,%edi
  401017:	e8 b4 fc ff ff       	callq  400cd0 <puts@plt>
  40101c:	bf ec 31 40 00       	mov    $0x4031ec,%edi
  401021:	e8 aa fc ff ff       	callq  400cd0 <puts@plt>
  401026:	bf 00 00 00 00       	mov    $0x0,%edi
  40102b:	e8 20 fe ff ff       	callq  400e50 <exit@plt>

0000000000401030 <initialize_target>:
  401030:	55                   	push   %rbp
  401031:	53                   	push   %rbx
  401032:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401039:	89 f5                	mov    %esi,%ebp
  40103b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401042:	00 00 
  401044:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40104b:	00 
  40104c:	31 c0                	xor    %eax,%eax
  40104e:	89 3d c4 44 20 00    	mov    %edi,0x2044c4(%rip)        # 605518 <check_level>
  401054:	8b 3d 0e 41 20 00    	mov    0x20410e(%rip),%edi        # 605168 <target_id>
  40105a:	e8 dc 1e 00 00       	callq  402f3b <gencookie>
  40105f:	89 05 bf 44 20 00    	mov    %eax,0x2044bf(%rip)        # 605524 <cookie>
  401065:	89 c7                	mov    %eax,%edi
  401067:	e8 cf 1e 00 00       	callq  402f3b <gencookie>
  40106c:	89 05 ae 44 20 00    	mov    %eax,0x2044ae(%rip)        # 605520 <authkey>
  401072:	8b 05 f0 40 20 00    	mov    0x2040f0(%rip),%eax        # 605168 <target_id>
  401078:	8d 78 01             	lea    0x1(%rax),%edi
  40107b:	e8 20 fc ff ff       	callq  400ca0 <srandom@plt>
  401080:	e8 3b fd ff ff       	callq  400dc0 <random@plt>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 03 03 00 00       	callq  40138f <scramble>
  40108c:	89 c3                	mov    %eax,%ebx
  40108e:	85 ed                	test   %ebp,%ebp
  401090:	74 18                	je     4010aa <initialize_target+0x7a>
  401092:	bf 00 00 00 00       	mov    $0x0,%edi
  401097:	e8 14 fd ff ff       	callq  400db0 <time@plt>
  40109c:	89 c7                	mov    %eax,%edi
  40109e:	e8 fd fb ff ff       	callq  400ca0 <srandom@plt>
  4010a3:	e8 18 fd ff ff       	callq  400dc0 <random@plt>
  4010a8:	eb 05                	jmp    4010af <initialize_target+0x7f>
  4010aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4010af:	01 c3                	add    %eax,%ebx
  4010b1:	0f b7 db             	movzwl %bx,%ebx
  4010b4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010bb:	89 c0                	mov    %eax,%eax
  4010bd:	48 89 05 dc 43 20 00 	mov    %rax,0x2043dc(%rip)        # 6054a0 <buf_offset>
  4010c4:	c6 05 7d 50 20 00 72 	movb   $0x72,0x20507d(%rip)        # 606148 <target_prefix>
  4010cb:	83 3d d6 43 20 00 00 	cmpl   $0x0,0x2043d6(%rip)        # 6054a8 <notify>
  4010d2:	0f 84 bb 00 00 00    	je     401193 <initialize_target+0x163>
  4010d8:	83 3d 49 44 20 00 00 	cmpl   $0x0,0x204449(%rip)        # 605528 <is_checker>
  4010df:	0f 85 ae 00 00 00    	jne    401193 <initialize_target+0x163>
  4010e5:	be 00 01 00 00       	mov    $0x100,%esi
  4010ea:	48 89 e7             	mov    %rsp,%rdi
  4010ed:	e8 4e fd ff ff       	callq  400e40 <gethostname@plt>
  4010f2:	85 c0                	test   %eax,%eax
  4010f4:	74 25                	je     40111b <initialize_target+0xeb>
  4010f6:	bf c8 30 40 00       	mov    $0x4030c8,%edi
  4010fb:	e8 d0 fb ff ff       	callq  400cd0 <puts@plt>
  401100:	bf 08 00 00 00       	mov    $0x8,%edi
  401105:	e8 46 fd ff ff       	callq  400e50 <exit@plt>
  40110a:	48 89 e6             	mov    %rsp,%rsi
  40110d:	e8 6e fb ff ff       	callq  400c80 <strcasecmp@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 21                	je     401137 <initialize_target+0x107>
  401116:	83 c3 01             	add    $0x1,%ebx
  401119:	eb 05                	jmp    401120 <initialize_target+0xf0>
  40111b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401120:	48 63 c3             	movslq %ebx,%rax
  401123:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40112a:	00 
  40112b:	48 85 ff             	test   %rdi,%rdi
  40112e:	75 da                	jne    40110a <initialize_target+0xda>
  401130:	b8 00 00 00 00       	mov    $0x0,%eax
  401135:	eb 05                	jmp    40113c <initialize_target+0x10c>
  401137:	b8 01 00 00 00       	mov    $0x1,%eax
  40113c:	85 c0                	test   %eax,%eax
  40113e:	75 1c                	jne    40115c <initialize_target+0x12c>
  401140:	48 89 e2             	mov    %rsp,%rdx
  401143:	be 00 31 40 00       	mov    $0x403100,%esi
  401148:	bf 01 00 00 00       	mov    $0x1,%edi
  40114d:	e8 ae fc ff ff       	callq  400e00 <__printf_chk@plt>
  401152:	bf 08 00 00 00       	mov    $0x8,%edi
  401157:	e8 f4 fc ff ff       	callq  400e50 <exit@plt>
  40115c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401163:	00 
  401164:	e8 3c 1b 00 00       	callq  402ca5 <init_driver>
  401169:	85 c0                	test   %eax,%eax
  40116b:	79 26                	jns    401193 <initialize_target+0x163>
  40116d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401174:	00 
  401175:	be 40 31 40 00       	mov    $0x403140,%esi
  40117a:	bf 01 00 00 00       	mov    $0x1,%edi
  40117f:	b8 00 00 00 00       	mov    $0x0,%eax
  401184:	e8 77 fc ff ff       	callq  400e00 <__printf_chk@plt>
  401189:	bf 08 00 00 00       	mov    $0x8,%edi
  40118e:	e8 bd fc ff ff       	callq  400e50 <exit@plt>
  401193:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40119a:	00 
  40119b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011a2:	00 00 
  4011a4:	74 05                	je     4011ab <initialize_target+0x17b>
  4011a6:	e8 45 fb ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4011ab:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011b2:	5b                   	pop    %rbx
  4011b3:	5d                   	pop    %rbp
  4011b4:	c3                   	retq   

00000000004011b5 <main>:
  4011b5:	41 56                	push   %r14
  4011b7:	41 55                	push   %r13
  4011b9:	41 54                	push   %r12
  4011bb:	55                   	push   %rbp
  4011bc:	53                   	push   %rbx
  4011bd:	41 89 fc             	mov    %edi,%r12d
  4011c0:	48 89 f3             	mov    %rsi,%rbx
  4011c3:	be e0 1f 40 00       	mov    $0x401fe0,%esi
  4011c8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011cd:	e8 8e fb ff ff       	callq  400d60 <signal@plt>
  4011d2:	be 92 1f 40 00       	mov    $0x401f92,%esi
  4011d7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011dc:	e8 7f fb ff ff       	callq  400d60 <signal@plt>
  4011e1:	be 2e 20 40 00       	mov    $0x40202e,%esi
  4011e6:	bf 04 00 00 00       	mov    $0x4,%edi
  4011eb:	e8 70 fb ff ff       	callq  400d60 <signal@plt>
  4011f0:	83 3d 31 43 20 00 00 	cmpl   $0x0,0x204331(%rip)        # 605528 <is_checker>
  4011f7:	74 20                	je     401219 <main+0x64>
  4011f9:	be 7c 20 40 00       	mov    $0x40207c,%esi
  4011fe:	bf 0e 00 00 00       	mov    $0xe,%edi
  401203:	e8 58 fb ff ff       	callq  400d60 <signal@plt>
  401208:	bf 05 00 00 00       	mov    $0x5,%edi
  40120d:	e8 0e fb ff ff       	callq  400d20 <alarm@plt>
  401212:	bd 0a 32 40 00       	mov    $0x40320a,%ebp
  401217:	eb 05                	jmp    40121e <main+0x69>
  401219:	bd 05 32 40 00       	mov    $0x403205,%ebp
  40121e:	48 8b 05 9b 42 20 00 	mov    0x20429b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401225:	48 89 05 e4 42 20 00 	mov    %rax,0x2042e4(%rip)        # 605510 <infile>
  40122c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401232:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401238:	e9 c6 00 00 00       	jmpq   401303 <main+0x14e>
  40123d:	83 e8 61             	sub    $0x61,%eax
  401240:	3c 10                	cmp    $0x10,%al
  401242:	0f 87 9c 00 00 00    	ja     4012e4 <main+0x12f>
  401248:	0f b6 c0             	movzbl %al,%eax
  40124b:	ff 24 c5 50 32 40 00 	jmpq   *0x403250(,%rax,8)
  401252:	48 8b 3b             	mov    (%rbx),%rdi
  401255:	e8 4c fd ff ff       	callq  400fa6 <usage>
  40125a:	be b5 34 40 00       	mov    $0x4034b5,%esi
  40125f:	48 8b 3d 62 42 20 00 	mov    0x204262(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401266:	e8 a5 fb ff ff       	callq  400e10 <fopen@plt>
  40126b:	48 89 05 9e 42 20 00 	mov    %rax,0x20429e(%rip)        # 605510 <infile>
  401272:	48 85 c0             	test   %rax,%rax
  401275:	0f 85 88 00 00 00    	jne    401303 <main+0x14e>
  40127b:	48 8b 0d 46 42 20 00 	mov    0x204246(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401282:	ba 12 32 40 00       	mov    $0x403212,%edx
  401287:	be 01 00 00 00       	mov    $0x1,%esi
  40128c:	48 8b 3d 4d 42 20 00 	mov    0x20424d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401293:	e8 d8 fb ff ff       	callq  400e70 <__fprintf_chk@plt>
  401298:	b8 01 00 00 00       	mov    $0x1,%eax
  40129d:	e9 e4 00 00 00       	jmpq   401386 <main+0x1d1>
  4012a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012a7:	be 00 00 00 00       	mov    $0x0,%esi
  4012ac:	48 8b 3d 15 42 20 00 	mov    0x204215(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012b3:	e8 78 fb ff ff       	callq  400e30 <strtoul@plt>
  4012b8:	41 89 c6             	mov    %eax,%r14d
  4012bb:	eb 46                	jmp    401303 <main+0x14e>
  4012bd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012c2:	be 00 00 00 00       	mov    $0x0,%esi
  4012c7:	48 8b 3d fa 41 20 00 	mov    0x2041fa(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ce:	e8 bd fa ff ff       	callq  400d90 <strtol@plt>
  4012d3:	41 89 c5             	mov    %eax,%r13d
  4012d6:	eb 2b                	jmp    401303 <main+0x14e>
  4012d8:	c7 05 c6 41 20 00 00 	movl   $0x0,0x2041c6(%rip)        # 6054a8 <notify>
  4012df:	00 00 00 
  4012e2:	eb 1f                	jmp    401303 <main+0x14e>
  4012e4:	0f be d2             	movsbl %dl,%edx
  4012e7:	be 2f 32 40 00       	mov    $0x40322f,%esi
  4012ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f6:	e8 05 fb ff ff       	callq  400e00 <__printf_chk@plt>
  4012fb:	48 8b 3b             	mov    (%rbx),%rdi
  4012fe:	e8 a3 fc ff ff       	callq  400fa6 <usage>
  401303:	48 89 ea             	mov    %rbp,%rdx
  401306:	48 89 de             	mov    %rbx,%rsi
  401309:	44 89 e7             	mov    %r12d,%edi
  40130c:	e8 0f fb ff ff       	callq  400e20 <getopt@plt>
  401311:	89 c2                	mov    %eax,%edx
  401313:	3c ff                	cmp    $0xff,%al
  401315:	0f 85 22 ff ff ff    	jne    40123d <main+0x88>
  40131b:	be 01 00 00 00       	mov    $0x1,%esi
  401320:	44 89 ef             	mov    %r13d,%edi
  401323:	e8 08 fd ff ff       	callq  401030 <initialize_target>
  401328:	83 3d f9 41 20 00 00 	cmpl   $0x0,0x2041f9(%rip)        # 605528 <is_checker>
  40132f:	74 2a                	je     40135b <main+0x1a6>
  401331:	44 3b 35 e8 41 20 00 	cmp    0x2041e8(%rip),%r14d        # 605520 <authkey>
  401338:	74 21                	je     40135b <main+0x1a6>
  40133a:	44 89 f2             	mov    %r14d,%edx
  40133d:	be 68 31 40 00       	mov    $0x403168,%esi
  401342:	bf 01 00 00 00       	mov    $0x1,%edi
  401347:	b8 00 00 00 00       	mov    $0x0,%eax
  40134c:	e8 af fa ff ff       	callq  400e00 <__printf_chk@plt>
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 d3 08 00 00       	callq  401c2e <check_fail>
  40135b:	8b 15 c3 41 20 00    	mov    0x2041c3(%rip),%edx        # 605524 <cookie>
  401361:	be 42 32 40 00       	mov    $0x403242,%esi
  401366:	bf 01 00 00 00       	mov    $0x1,%edi
  40136b:	b8 00 00 00 00       	mov    $0x0,%eax
  401370:	e8 8b fa ff ff       	callq  400e00 <__printf_chk@plt>
  401375:	48 8b 3d 24 41 20 00 	mov    0x204124(%rip),%rdi        # 6054a0 <buf_offset>
  40137c:	e8 4e 0d 00 00       	callq  4020cf <launch>
  401381:	b8 00 00 00 00       	mov    $0x0,%eax
  401386:	5b                   	pop    %rbx
  401387:	5d                   	pop    %rbp
  401388:	41 5c                	pop    %r12
  40138a:	41 5d                	pop    %r13
  40138c:	41 5e                	pop    %r14
  40138e:	c3                   	retq   

000000000040138f <scramble>:
  40138f:	48 83 ec 38          	sub    $0x38,%rsp
  401393:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40139a:	00 00 
  40139c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4013a1:	31 c0                	xor    %eax,%eax
  4013a3:	eb 10                	jmp    4013b5 <scramble+0x26>
  4013a5:	69 d0 34 17 00 00    	imul   $0x1734,%eax,%edx
  4013ab:	01 fa                	add    %edi,%edx
  4013ad:	89 c1                	mov    %eax,%ecx
  4013af:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4013b2:	83 c0 01             	add    $0x1,%eax
  4013b5:	83 f8 09             	cmp    $0x9,%eax
  4013b8:	76 eb                	jbe    4013a5 <scramble+0x16>
  4013ba:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013be:	69 c0 03 c2 00 00    	imul   $0xc203,%eax,%eax
  4013c4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4013c8:	8b 04 24             	mov    (%rsp),%eax
  4013cb:	69 c0 3a c3 00 00    	imul   $0xc33a,%eax,%eax
  4013d1:	89 04 24             	mov    %eax,(%rsp)
  4013d4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013d8:	69 c0 d9 e2 00 00    	imul   $0xe2d9,%eax,%eax
  4013de:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013e2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013e6:	69 c0 c4 6b 00 00    	imul   $0x6bc4,%eax,%eax
  4013ec:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013f0:	8b 04 24             	mov    (%rsp),%eax
  4013f3:	69 c0 03 e4 00 00    	imul   $0xe403,%eax,%eax
  4013f9:	89 04 24             	mov    %eax,(%rsp)
  4013fc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401400:	69 c0 ed 00 00 00    	imul   $0xed,%eax,%eax
  401406:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40140a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40140e:	69 c0 66 ec 00 00    	imul   $0xec66,%eax,%eax
  401414:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401418:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40141c:	69 c0 53 ac 00 00    	imul   $0xac53,%eax,%eax
  401422:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401426:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40142a:	69 c0 a0 6e 00 00    	imul   $0x6ea0,%eax,%eax
  401430:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401434:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401438:	69 c0 f2 12 00 00    	imul   $0x12f2,%eax,%eax
  40143e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401442:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401446:	69 c0 5f 7a 00 00    	imul   $0x7a5f,%eax,%eax
  40144c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401450:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401454:	69 c0 2e 2a 00 00    	imul   $0x2a2e,%eax,%eax
  40145a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40145e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401462:	69 c0 3a 71 00 00    	imul   $0x713a,%eax,%eax
  401468:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40146c:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401470:	69 c0 49 14 00 00    	imul   $0x1449,%eax,%eax
  401476:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40147a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40147e:	69 c0 89 b5 00 00    	imul   $0xb589,%eax,%eax
  401484:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401488:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40148c:	69 c0 49 f9 00 00    	imul   $0xf949,%eax,%eax
  401492:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401496:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40149a:	69 c0 19 c3 00 00    	imul   $0xc319,%eax,%eax
  4014a0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014a4:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014a8:	69 c0 62 97 00 00    	imul   $0x9762,%eax,%eax
  4014ae:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014b2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014b6:	69 c0 be c7 00 00    	imul   $0xc7be,%eax,%eax
  4014bc:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014c0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014c4:	69 c0 7c f9 00 00    	imul   $0xf97c,%eax,%eax
  4014ca:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ce:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4014d2:	69 c0 d5 01 00 00    	imul   $0x1d5,%eax,%eax
  4014d8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4014dc:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014e0:	69 c0 ff c4 00 00    	imul   $0xc4ff,%eax,%eax
  4014e6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014ea:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014ee:	69 c0 b3 bb 00 00    	imul   $0xbbb3,%eax,%eax
  4014f4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014f8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014fc:	69 c0 86 14 00 00    	imul   $0x1486,%eax,%eax
  401502:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401506:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40150a:	69 c0 2d f2 00 00    	imul   $0xf22d,%eax,%eax
  401510:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401514:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401518:	69 c0 75 6a 00 00    	imul   $0x6a75,%eax,%eax
  40151e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401522:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401526:	69 c0 9d 27 00 00    	imul   $0x279d,%eax,%eax
  40152c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401530:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401534:	69 c0 db 2a 00 00    	imul   $0x2adb,%eax,%eax
  40153a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40153e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401542:	69 c0 d4 7e 00 00    	imul   $0x7ed4,%eax,%eax
  401548:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40154c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401550:	69 c0 ec 7a 00 00    	imul   $0x7aec,%eax,%eax
  401556:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40155a:	8b 04 24             	mov    (%rsp),%eax
  40155d:	69 c0 02 fd 00 00    	imul   $0xfd02,%eax,%eax
  401563:	89 04 24             	mov    %eax,(%rsp)
  401566:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40156a:	69 c0 ea ab 00 00    	imul   $0xabea,%eax,%eax
  401570:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401574:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401578:	69 c0 ba 30 00 00    	imul   $0x30ba,%eax,%eax
  40157e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401582:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401586:	69 c0 0d 66 00 00    	imul   $0x660d,%eax,%eax
  40158c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401590:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401594:	69 c0 73 46 00 00    	imul   $0x4673,%eax,%eax
  40159a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40159e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015a2:	69 c0 3a a4 00 00    	imul   $0xa43a,%eax,%eax
  4015a8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015ac:	8b 04 24             	mov    (%rsp),%eax
  4015af:	69 c0 f3 59 00 00    	imul   $0x59f3,%eax,%eax
  4015b5:	89 04 24             	mov    %eax,(%rsp)
  4015b8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015bc:	69 c0 83 36 00 00    	imul   $0x3683,%eax,%eax
  4015c2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015c6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015ca:	69 c0 8c da 00 00    	imul   $0xda8c,%eax,%eax
  4015d0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015d4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015d8:	69 c0 f9 3f 00 00    	imul   $0x3ff9,%eax,%eax
  4015de:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015e2:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015e6:	69 c0 81 72 00 00    	imul   $0x7281,%eax,%eax
  4015ec:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015f0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015f4:	69 c0 45 39 00 00    	imul   $0x3945,%eax,%eax
  4015fa:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015fe:	8b 04 24             	mov    (%rsp),%eax
  401601:	69 c0 13 3f 00 00    	imul   $0x3f13,%eax,%eax
  401607:	89 04 24             	mov    %eax,(%rsp)
  40160a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40160e:	69 c0 f6 32 00 00    	imul   $0x32f6,%eax,%eax
  401614:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401618:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40161c:	69 c0 45 a3 00 00    	imul   $0xa345,%eax,%eax
  401622:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401626:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40162a:	69 c0 44 f2 00 00    	imul   $0xf244,%eax,%eax
  401630:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401634:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401638:	69 c0 18 22 00 00    	imul   $0x2218,%eax,%eax
  40163e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401642:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401646:	69 c0 62 60 00 00    	imul   $0x6062,%eax,%eax
  40164c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401650:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401654:	69 c0 7b e1 00 00    	imul   $0xe17b,%eax,%eax
  40165a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40165e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401662:	69 c0 4b 4b 00 00    	imul   $0x4b4b,%eax,%eax
  401668:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40166c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401670:	69 c0 f9 25 00 00    	imul   $0x25f9,%eax,%eax
  401676:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40167a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40167e:	69 c0 36 70 00 00    	imul   $0x7036,%eax,%eax
  401684:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401688:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40168c:	69 c0 bf 58 00 00    	imul   $0x58bf,%eax,%eax
  401692:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401696:	8b 04 24             	mov    (%rsp),%eax
  401699:	69 c0 93 95 00 00    	imul   $0x9593,%eax,%eax
  40169f:	89 04 24             	mov    %eax,(%rsp)
  4016a2:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016a6:	69 c0 c2 f1 00 00    	imul   $0xf1c2,%eax,%eax
  4016ac:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016b0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016b4:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4016b7:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016bb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016bf:	8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%edx
  4016c6:	c1 e0 0f             	shl    $0xf,%eax
  4016c9:	29 d0                	sub    %edx,%eax
  4016cb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016cf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016d3:	69 c0 61 fe 00 00    	imul   $0xfe61,%eax,%eax
  4016d9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016dd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016e1:	69 c0 6b 9d 00 00    	imul   $0x9d6b,%eax,%eax
  4016e7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016eb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016ef:	69 c0 f6 7c 00 00    	imul   $0x7cf6,%eax,%eax
  4016f5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016f9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016fd:	69 c0 3a df 00 00    	imul   $0xdf3a,%eax,%eax
  401703:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401707:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40170b:	69 c0 f7 e0 00 00    	imul   $0xe0f7,%eax,%eax
  401711:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401715:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401719:	69 c0 69 0d 00 00    	imul   $0xd69,%eax,%eax
  40171f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401723:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401727:	69 c0 25 54 00 00    	imul   $0x5425,%eax,%eax
  40172d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401731:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401735:	69 c0 c9 07 00 00    	imul   $0x7c9,%eax,%eax
  40173b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40173f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401743:	69 c0 d2 16 00 00    	imul   $0x16d2,%eax,%eax
  401749:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40174d:	8b 04 24             	mov    (%rsp),%eax
  401750:	69 c0 f5 8e 00 00    	imul   $0x8ef5,%eax,%eax
  401756:	89 04 24             	mov    %eax,(%rsp)
  401759:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40175d:	69 c0 af ad 00 00    	imul   $0xadaf,%eax,%eax
  401763:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401767:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40176b:	69 c0 c1 2d 00 00    	imul   $0x2dc1,%eax,%eax
  401771:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401775:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401779:	69 c0 01 1b 00 00    	imul   $0x1b01,%eax,%eax
  40177f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401783:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401787:	69 c0 d0 18 00 00    	imul   $0x18d0,%eax,%eax
  40178d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401791:	8b 04 24             	mov    (%rsp),%eax
  401794:	69 c0 c6 83 00 00    	imul   $0x83c6,%eax,%eax
  40179a:	89 04 24             	mov    %eax,(%rsp)
  40179d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017a1:	69 c0 51 54 00 00    	imul   $0x5451,%eax,%eax
  4017a7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017ab:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017af:	69 c0 db 57 00 00    	imul   $0x57db,%eax,%eax
  4017b5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4017b9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017bd:	69 c0 7f b3 00 00    	imul   $0xb37f,%eax,%eax
  4017c3:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017c7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017cb:	69 c0 6d 32 00 00    	imul   $0x326d,%eax,%eax
  4017d1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017d5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017d9:	69 c0 0b 44 00 00    	imul   $0x440b,%eax,%eax
  4017df:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017e3:	8b 04 24             	mov    (%rsp),%eax
  4017e6:	69 c0 0b 94 00 00    	imul   $0x940b,%eax,%eax
  4017ec:	89 04 24             	mov    %eax,(%rsp)
  4017ef:	8b 04 24             	mov    (%rsp),%eax
  4017f2:	69 c0 be 54 00 00    	imul   $0x54be,%eax,%eax
  4017f8:	89 04 24             	mov    %eax,(%rsp)
  4017fb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017ff:	69 c0 58 40 00 00    	imul   $0x4058,%eax,%eax
  401805:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401809:	8b 04 24             	mov    (%rsp),%eax
  40180c:	69 c0 a0 87 00 00    	imul   $0x87a0,%eax,%eax
  401812:	89 04 24             	mov    %eax,(%rsp)
  401815:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401819:	69 c0 4a 8a 00 00    	imul   $0x8a4a,%eax,%eax
  40181f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401823:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401827:	69 c0 32 de 00 00    	imul   $0xde32,%eax,%eax
  40182d:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401831:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401835:	69 c0 4b fe 00 00    	imul   $0xfe4b,%eax,%eax
  40183b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40183f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401843:	69 c0 3c 7b 00 00    	imul   $0x7b3c,%eax,%eax
  401849:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40184d:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401851:	69 c0 76 2b 00 00    	imul   $0x2b76,%eax,%eax
  401857:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40185b:	8b 04 24             	mov    (%rsp),%eax
  40185e:	69 c0 52 34 00 00    	imul   $0x3452,%eax,%eax
  401864:	89 04 24             	mov    %eax,(%rsp)
  401867:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40186b:	69 c0 d8 2c 00 00    	imul   $0x2cd8,%eax,%eax
  401871:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401875:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401879:	69 c0 64 31 00 00    	imul   $0x3164,%eax,%eax
  40187f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401883:	ba 00 00 00 00       	mov    $0x0,%edx
  401888:	b8 00 00 00 00       	mov    $0x0,%eax
  40188d:	eb 0a                	jmp    401899 <scramble+0x50a>
  40188f:	89 d1                	mov    %edx,%ecx
  401891:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401894:	01 c8                	add    %ecx,%eax
  401896:	83 c2 01             	add    $0x1,%edx
  401899:	83 fa 09             	cmp    $0x9,%edx
  40189c:	76 f1                	jbe    40188f <scramble+0x500>
  40189e:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4018a3:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4018aa:	00 00 
  4018ac:	74 05                	je     4018b3 <scramble+0x524>
  4018ae:	e8 3d f4 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4018b3:	48 83 c4 38          	add    $0x38,%rsp
  4018b7:	c3                   	retq   

00000000004018b8 <getbuf>:
  4018b8:	48 83 ec 28          	sub    $0x28,%rsp
  4018bc:	48 89 e7             	mov    %rsp,%rdi
  4018bf:	e8 9f 03 00 00       	callq  401c63 <Gets>
  4018c4:	b8 01 00 00 00       	mov    $0x1,%eax
  4018c9:	48 83 c4 28          	add    $0x28,%rsp
  4018cd:	c3                   	retq   

00000000004018ce <touch1>:
  4018ce:	48 83 ec 08          	sub    $0x8,%rsp
  4018d2:	c7 05 40 3c 20 00 01 	movl   $0x1,0x203c40(%rip)        # 60551c <vlevel>
  4018d9:	00 00 00 
  4018dc:	bf 08 33 40 00       	mov    $0x403308,%edi
  4018e1:	e8 ea f3 ff ff       	callq  400cd0 <puts@plt>
  4018e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4018eb:	e8 b8 05 00 00       	callq  401ea8 <validate>
  4018f0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018f5:	e8 56 f5 ff ff       	callq  400e50 <exit@plt>

00000000004018fa <touch2>:
  4018fa:	48 83 ec 08          	sub    $0x8,%rsp
  4018fe:	89 fa                	mov    %edi,%edx
  401900:	c7 05 12 3c 20 00 02 	movl   $0x2,0x203c12(%rip)        # 60551c <vlevel>
  401907:	00 00 00 
  40190a:	39 3d 14 3c 20 00    	cmp    %edi,0x203c14(%rip)        # 605524 <cookie>
  401910:	75 20                	jne    401932 <touch2+0x38>
  401912:	be 30 33 40 00       	mov    $0x403330,%esi
  401917:	bf 01 00 00 00       	mov    $0x1,%edi
  40191c:	b8 00 00 00 00       	mov    $0x0,%eax
  401921:	e8 da f4 ff ff       	callq  400e00 <__printf_chk@plt>
  401926:	bf 02 00 00 00       	mov    $0x2,%edi
  40192b:	e8 78 05 00 00       	callq  401ea8 <validate>
  401930:	eb 1e                	jmp    401950 <touch2+0x56>
  401932:	be 58 33 40 00       	mov    $0x403358,%esi
  401937:	bf 01 00 00 00       	mov    $0x1,%edi
  40193c:	b8 00 00 00 00       	mov    $0x0,%eax
  401941:	e8 ba f4 ff ff       	callq  400e00 <__printf_chk@plt>
  401946:	bf 02 00 00 00       	mov    $0x2,%edi
  40194b:	e8 1a 06 00 00       	callq  401f6a <fail>
  401950:	bf 00 00 00 00       	mov    $0x0,%edi
  401955:	e8 f6 f4 ff ff       	callq  400e50 <exit@plt>

000000000040195a <hexmatch>:
  40195a:	41 54                	push   %r12
  40195c:	55                   	push   %rbp
  40195d:	53                   	push   %rbx
  40195e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401962:	89 fd                	mov    %edi,%ebp
  401964:	48 89 f3             	mov    %rsi,%rbx
  401967:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40196e:	00 00 
  401970:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401975:	31 c0                	xor    %eax,%eax
  401977:	e8 44 f4 ff ff       	callq  400dc0 <random@plt>
  40197c:	48 89 c1             	mov    %rax,%rcx
  40197f:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401986:	0a d7 a3 
  401989:	48 f7 ea             	imul   %rdx
  40198c:	48 01 ca             	add    %rcx,%rdx
  40198f:	48 c1 fa 06          	sar    $0x6,%rdx
  401993:	48 89 c8             	mov    %rcx,%rax
  401996:	48 c1 f8 3f          	sar    $0x3f,%rax
  40199a:	48 29 c2             	sub    %rax,%rdx
  40199d:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4019a1:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4019a5:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  4019ac:	00 
  4019ad:	48 29 c1             	sub    %rax,%rcx
  4019b0:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  4019b4:	41 89 e8             	mov    %ebp,%r8d
  4019b7:	b9 25 33 40 00       	mov    $0x403325,%ecx
  4019bc:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4019c3:	be 01 00 00 00       	mov    $0x1,%esi
  4019c8:	4c 89 e7             	mov    %r12,%rdi
  4019cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d0:	e8 ab f4 ff ff       	callq  400e80 <__sprintf_chk@plt>
  4019d5:	ba 09 00 00 00       	mov    $0x9,%edx
  4019da:	4c 89 e6             	mov    %r12,%rsi
  4019dd:	48 89 df             	mov    %rbx,%rdi
  4019e0:	e8 cb f2 ff ff       	callq  400cb0 <strncmp@plt>
  4019e5:	85 c0                	test   %eax,%eax
  4019e7:	0f 94 c0             	sete   %al
  4019ea:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  4019ef:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4019f6:	00 00 
  4019f8:	74 05                	je     4019ff <hexmatch+0xa5>
  4019fa:	e8 f1 f2 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4019ff:	0f b6 c0             	movzbl %al,%eax
  401a02:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a06:	5b                   	pop    %rbx
  401a07:	5d                   	pop    %rbp
  401a08:	41 5c                	pop    %r12
  401a0a:	c3                   	retq   

0000000000401a0b <touch3>:
  401a0b:	53                   	push   %rbx
  401a0c:	48 89 fb             	mov    %rdi,%rbx
  401a0f:	c7 05 03 3b 20 00 03 	movl   $0x3,0x203b03(%rip)        # 60551c <vlevel>
  401a16:	00 00 00 
  401a19:	48 89 fe             	mov    %rdi,%rsi
  401a1c:	8b 3d 02 3b 20 00    	mov    0x203b02(%rip),%edi        # 605524 <cookie>
  401a22:	e8 33 ff ff ff       	callq  40195a <hexmatch>
  401a27:	85 c0                	test   %eax,%eax
  401a29:	74 23                	je     401a4e <touch3+0x43>
  401a2b:	48 89 da             	mov    %rbx,%rdx
  401a2e:	be 80 33 40 00       	mov    $0x403380,%esi
  401a33:	bf 01 00 00 00       	mov    $0x1,%edi
  401a38:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3d:	e8 be f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a42:	bf 03 00 00 00       	mov    $0x3,%edi
  401a47:	e8 5c 04 00 00       	callq  401ea8 <validate>
  401a4c:	eb 21                	jmp    401a6f <touch3+0x64>
  401a4e:	48 89 da             	mov    %rbx,%rdx
  401a51:	be a8 33 40 00       	mov    $0x4033a8,%esi
  401a56:	bf 01 00 00 00       	mov    $0x1,%edi
  401a5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a60:	e8 9b f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a65:	bf 03 00 00 00       	mov    $0x3,%edi
  401a6a:	e8 fb 04 00 00       	callq  401f6a <fail>
  401a6f:	bf 00 00 00 00       	mov    $0x0,%edi
  401a74:	e8 d7 f3 ff ff       	callq  400e50 <exit@plt>

0000000000401a79 <test>:
  401a79:	48 83 ec 08          	sub    $0x8,%rsp
  401a7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a82:	e8 31 fe ff ff       	callq  4018b8 <getbuf>
  401a87:	89 c2                	mov    %eax,%edx
  401a89:	be d0 33 40 00       	mov    $0x4033d0,%esi
  401a8e:	bf 01 00 00 00       	mov    $0x1,%edi
  401a93:	b8 00 00 00 00       	mov    $0x0,%eax
  401a98:	e8 63 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a9d:	48 83 c4 08          	add    $0x8,%rsp
  401aa1:	c3                   	retq   

0000000000401aa2 <start_farm>:
  401aa2:	b8 01 00 00 00       	mov    $0x1,%eax
  401aa7:	c3                   	retq   

0000000000401aa8 <addval_334>:
  401aa8:	8d 87 0f 58 58 90    	lea    -0x6fa7a7f1(%rdi),%eax
  401aae:	c3                   	retq   

0000000000401aaf <addval_451>:
  401aaf:	8d 87 e5 72 58 90    	lea    -0x6fa78d1b(%rdi),%eax
  401ab5:	c3                   	retq   

0000000000401ab6 <getval_471>:
  401ab6:	b8 58 91 c3 43       	mov    $0x43c39158,%eax
  401abb:	c3                   	retq   

0000000000401abc <addval_154>:
  401abc:	8d 87 4a 89 c7 c3    	lea    -0x3c3876b6(%rdi),%eax
  401ac2:	c3                   	retq   

0000000000401ac3 <setval_392>:
  401ac3:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401ac9:	c3                   	retq   

0000000000401aca <getval_283>:
  401aca:	b8 3b e8 f4 50       	mov    $0x50f4e83b,%eax
  401acf:	c3                   	retq   

0000000000401ad0 <getval_162>:
  401ad0:	b8 68 89 c7 90       	mov    $0x90c78968,%eax
  401ad5:	c3                   	retq   

0000000000401ad6 <setval_490>:
  401ad6:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401adc:	c3                   	retq   

0000000000401add <mid_farm>:
  401add:	b8 01 00 00 00       	mov    $0x1,%eax
  401ae2:	c3                   	retq   

0000000000401ae3 <add_xy>:
  401ae3:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401ae7:	c3                   	retq   

0000000000401ae8 <getval_376>:
  401ae8:	b8 89 c1 08 c9       	mov    $0xc908c189,%eax
  401aed:	c3                   	retq   

0000000000401aee <setval_439>:
  401aee:	c7 07 a9 d6 38 c9    	movl   $0xc938d6a9,(%rdi)
  401af4:	c3                   	retq   

0000000000401af5 <addval_311>:
  401af5:	8d 87 09 ca 84 db    	lea    -0x247b35f7(%rdi),%eax
  401afb:	c3                   	retq   

0000000000401afc <getval_436>:
  401afc:	b8 89 c1 18 c0       	mov    $0xc018c189,%eax
  401b01:	c3                   	retq   

0000000000401b02 <addval_353>:
  401b02:	8d 87 89 c1 00 c9    	lea    -0x36ff3e77(%rdi),%eax
  401b08:	c3                   	retq   

0000000000401b09 <addval_366>:
  401b09:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401b0f:	c3                   	retq   

0000000000401b10 <addval_378>:
  401b10:	8d 87 09 d6 38 d2    	lea    -0x2dc729f7(%rdi),%eax
  401b16:	c3                   	retq   

0000000000401b17 <addval_483>:
  401b17:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
  401b1d:	c3                   	retq   

0000000000401b1e <getval_385>:
  401b1e:	b8 48 c9 e0 c3       	mov    $0xc3e0c948,%eax
  401b23:	c3                   	retq   

0000000000401b24 <setval_325>:
  401b24:	c7 07 81 ca 84 db    	movl   $0xdb84ca81,(%rdi)
  401b2a:	c3                   	retq   

0000000000401b2b <setval_102>:
  401b2b:	c7 07 89 d6 90 c2    	movl   $0xc290d689,(%rdi)
  401b31:	c3                   	retq   

0000000000401b32 <setval_321>:
  401b32:	c7 07 89 ca 91 90    	movl   $0x9091ca89,(%rdi)
  401b38:	c3                   	retq   

0000000000401b39 <setval_449>:
  401b39:	c7 07 89 d6 c1 66    	movl   $0x66c1d689,(%rdi)
  401b3f:	c3                   	retq   

0000000000401b40 <getval_493>:
  401b40:	b8 a9 d6 20 db       	mov    $0xdb20d6a9,%eax
  401b45:	c3                   	retq   

0000000000401b46 <setval_478>:
  401b46:	c7 07 48 99 e0 90    	movl   $0x90e09948,(%rdi)
  401b4c:	c3                   	retq   

0000000000401b4d <getval_180>:
  401b4d:	b8 4a 89 e0 c3       	mov    $0xc3e0894a,%eax
  401b52:	c3                   	retq   

0000000000401b53 <addval_109>:
  401b53:	8d 87 35 89 c1 92    	lea    -0x6d3e76cb(%rdi),%eax
  401b59:	c3                   	retq   

0000000000401b5a <setval_374>:
  401b5a:	c7 07 89 c1 94 c0    	movl   $0xc094c189,(%rdi)
  401b60:	c3                   	retq   

0000000000401b61 <setval_181>:
  401b61:	c7 07 89 ca c3 e2    	movl   $0xe2c3ca89,(%rdi)
  401b67:	c3                   	retq   

0000000000401b68 <setval_259>:
  401b68:	c7 07 89 ca 30 c9    	movl   $0xc930ca89,(%rdi)
  401b6e:	c3                   	retq   

0000000000401b6f <getval_105>:
  401b6f:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  401b74:	c3                   	retq   

0000000000401b75 <addval_494>:
  401b75:	8d 87 89 c1 20 db    	lea    -0x24df3e77(%rdi),%eax
  401b7b:	c3                   	retq   

0000000000401b7c <setval_137>:
  401b7c:	c7 07 f2 89 d6 c3    	movl   $0xc3d689f2,(%rdi)
  401b82:	c3                   	retq   

0000000000401b83 <getval_243>:
  401b83:	b8 5b 99 d6 c3       	mov    $0xc3d6995b,%eax
  401b88:	c3                   	retq   

0000000000401b89 <getval_335>:
  401b89:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  401b8e:	c3                   	retq   

0000000000401b8f <getval_115>:
  401b8f:	b8 68 89 e0 c3       	mov    $0xc3e08968,%eax
  401b94:	c3                   	retq   

0000000000401b95 <addval_158>:
  401b95:	8d 87 89 d6 84 c0    	lea    -0x3f7b2977(%rdi),%eax
  401b9b:	c3                   	retq   

0000000000401b9c <getval_457>:
  401b9c:	b8 89 c1 94 c3       	mov    $0xc394c189,%eax
  401ba1:	c3                   	retq   

0000000000401ba2 <addval_400>:
  401ba2:	8d 87 89 ca 94 db    	lea    -0x246b3577(%rdi),%eax
  401ba8:	c3                   	retq   

0000000000401ba9 <getval_202>:
  401ba9:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401bae:	c3                   	retq   

0000000000401baf <addval_293>:
  401baf:	8d 87 89 c1 c2 18    	lea    0x18c2c189(%rdi),%eax
  401bb5:	c3                   	retq   

0000000000401bb6 <setval_479>:
  401bb6:	c7 07 89 ca 28 db    	movl   $0xdb28ca89,(%rdi)
  401bbc:	c3                   	retq   

0000000000401bbd <end_farm>:
  401bbd:	b8 01 00 00 00       	mov    $0x1,%eax
  401bc2:	c3                   	retq   

0000000000401bc3 <save_char>:
  401bc3:	8b 05 7b 45 20 00    	mov    0x20457b(%rip),%eax        # 606144 <gets_cnt>
  401bc9:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401bce:	7f 49                	jg     401c19 <save_char+0x56>
  401bd0:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401bd3:	89 f9                	mov    %edi,%ecx
  401bd5:	c0 e9 04             	shr    $0x4,%cl
  401bd8:	83 e1 0f             	and    $0xf,%ecx
  401bdb:	0f b6 b1 f0 36 40 00 	movzbl 0x4036f0(%rcx),%esi
  401be2:	48 63 ca             	movslq %edx,%rcx
  401be5:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401bec:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401bef:	83 e7 0f             	and    $0xf,%edi
  401bf2:	0f b6 b7 f0 36 40 00 	movzbl 0x4036f0(%rdi),%esi
  401bf9:	48 63 c9             	movslq %ecx,%rcx
  401bfc:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c03:	83 c2 02             	add    $0x2,%edx
  401c06:	48 63 d2             	movslq %edx,%rdx
  401c09:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401c10:	83 c0 01             	add    $0x1,%eax
  401c13:	89 05 2b 45 20 00    	mov    %eax,0x20452b(%rip)        # 606144 <gets_cnt>
  401c19:	f3 c3                	repz retq 

0000000000401c1b <save_term>:
  401c1b:	8b 05 23 45 20 00    	mov    0x204523(%rip),%eax        # 606144 <gets_cnt>
  401c21:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c24:	48 98                	cltq   
  401c26:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401c2d:	c3                   	retq   

0000000000401c2e <check_fail>:
  401c2e:	48 83 ec 08          	sub    $0x8,%rsp
  401c32:	0f be 15 0f 45 20 00 	movsbl 0x20450f(%rip),%edx        # 606148 <target_prefix>
  401c39:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401c3f:	8b 0d d3 38 20 00    	mov    0x2038d3(%rip),%ecx        # 605518 <check_level>
  401c45:	be f3 33 40 00       	mov    $0x4033f3,%esi
  401c4a:	bf 01 00 00 00       	mov    $0x1,%edi
  401c4f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c54:	e8 a7 f1 ff ff       	callq  400e00 <__printf_chk@plt>
  401c59:	bf 01 00 00 00       	mov    $0x1,%edi
  401c5e:	e8 ed f1 ff ff       	callq  400e50 <exit@plt>

0000000000401c63 <Gets>:
  401c63:	41 54                	push   %r12
  401c65:	55                   	push   %rbp
  401c66:	53                   	push   %rbx
  401c67:	49 89 fc             	mov    %rdi,%r12
  401c6a:	c7 05 d0 44 20 00 00 	movl   $0x0,0x2044d0(%rip)        # 606144 <gets_cnt>
  401c71:	00 00 00 
  401c74:	48 89 fb             	mov    %rdi,%rbx
  401c77:	eb 11                	jmp    401c8a <Gets+0x27>
  401c79:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401c7d:	88 03                	mov    %al,(%rbx)
  401c7f:	0f b6 f8             	movzbl %al,%edi
  401c82:	e8 3c ff ff ff       	callq  401bc3 <save_char>
  401c87:	48 89 eb             	mov    %rbp,%rbx
  401c8a:	48 8b 3d 7f 38 20 00 	mov    0x20387f(%rip),%rdi        # 605510 <infile>
  401c91:	e8 3a f1 ff ff       	callq  400dd0 <_IO_getc@plt>
  401c96:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c99:	74 05                	je     401ca0 <Gets+0x3d>
  401c9b:	83 f8 0a             	cmp    $0xa,%eax
  401c9e:	75 d9                	jne    401c79 <Gets+0x16>
  401ca0:	c6 03 00             	movb   $0x0,(%rbx)
  401ca3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca8:	e8 6e ff ff ff       	callq  401c1b <save_term>
  401cad:	4c 89 e0             	mov    %r12,%rax
  401cb0:	5b                   	pop    %rbx
  401cb1:	5d                   	pop    %rbp
  401cb2:	41 5c                	pop    %r12
  401cb4:	c3                   	retq   

0000000000401cb5 <notify_server>:
  401cb5:	53                   	push   %rbx
  401cb6:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401cbd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401cc4:	00 00 
  401cc6:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401ccd:	00 
  401cce:	31 c0                	xor    %eax,%eax
  401cd0:	83 3d 51 38 20 00 00 	cmpl   $0x0,0x203851(%rip)        # 605528 <is_checker>
  401cd7:	0f 85 aa 01 00 00    	jne    401e87 <notify_server+0x1d2>
  401cdd:	89 fb                	mov    %edi,%ebx
  401cdf:	8b 05 5f 44 20 00    	mov    0x20445f(%rip),%eax        # 606144 <gets_cnt>
  401ce5:	83 c0 64             	add    $0x64,%eax
  401ce8:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401ced:	7e 1e                	jle    401d0d <notify_server+0x58>
  401cef:	be 28 35 40 00       	mov    $0x403528,%esi
  401cf4:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfe:	e8 fd f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d03:	bf 01 00 00 00       	mov    $0x1,%edi
  401d08:	e8 43 f1 ff ff       	callq  400e50 <exit@plt>
  401d0d:	0f be 05 34 44 20 00 	movsbl 0x204434(%rip),%eax        # 606148 <target_prefix>
  401d14:	83 3d 8d 37 20 00 00 	cmpl   $0x0,0x20378d(%rip)        # 6054a8 <notify>
  401d1b:	74 08                	je     401d25 <notify_server+0x70>
  401d1d:	8b 15 fd 37 20 00    	mov    0x2037fd(%rip),%edx        # 605520 <authkey>
  401d23:	eb 05                	jmp    401d2a <notify_server+0x75>
  401d25:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401d2a:	85 db                	test   %ebx,%ebx
  401d2c:	74 08                	je     401d36 <notify_server+0x81>
  401d2e:	41 b9 09 34 40 00    	mov    $0x403409,%r9d
  401d34:	eb 06                	jmp    401d3c <notify_server+0x87>
  401d36:	41 b9 0e 34 40 00    	mov    $0x40340e,%r9d
  401d3c:	68 40 55 60 00       	pushq  $0x605540
  401d41:	56                   	push   %rsi
  401d42:	50                   	push   %rax
  401d43:	52                   	push   %rdx
  401d44:	44 8b 05 1d 34 20 00 	mov    0x20341d(%rip),%r8d        # 605168 <target_id>
  401d4b:	b9 13 34 40 00       	mov    $0x403413,%ecx
  401d50:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d55:	be 01 00 00 00       	mov    $0x1,%esi
  401d5a:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d64:	e8 17 f1 ff ff       	callq  400e80 <__sprintf_chk@plt>
  401d69:	48 83 c4 20          	add    $0x20,%rsp
  401d6d:	83 3d 34 37 20 00 00 	cmpl   $0x0,0x203734(%rip)        # 6054a8 <notify>
  401d74:	0f 84 81 00 00 00    	je     401dfb <notify_server+0x146>
  401d7a:	85 db                	test   %ebx,%ebx
  401d7c:	74 6e                	je     401dec <notify_server+0x137>
  401d7e:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401d85:	00 
  401d86:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d8c:	48 89 e1             	mov    %rsp,%rcx
  401d8f:	48 8b 15 da 33 20 00 	mov    0x2033da(%rip),%rdx        # 605170 <lab>
  401d96:	48 8b 35 db 33 20 00 	mov    0x2033db(%rip),%rsi        # 605178 <course>
  401d9d:	48 8b 3d bc 33 20 00 	mov    0x2033bc(%rip),%rdi        # 605160 <user_id>
  401da4:	e8 ef 10 00 00       	callq  402e98 <driver_post>
  401da9:	85 c0                	test   %eax,%eax
  401dab:	79 26                	jns    401dd3 <notify_server+0x11e>
  401dad:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401db4:	00 
  401db5:	be 2f 34 40 00       	mov    $0x40342f,%esi
  401dba:	bf 01 00 00 00       	mov    $0x1,%edi
  401dbf:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc4:	e8 37 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401dc9:	bf 01 00 00 00       	mov    $0x1,%edi
  401dce:	e8 7d f0 ff ff       	callq  400e50 <exit@plt>
  401dd3:	bf 58 35 40 00       	mov    $0x403558,%edi
  401dd8:	e8 f3 ee ff ff       	callq  400cd0 <puts@plt>
  401ddd:	bf 3b 34 40 00       	mov    $0x40343b,%edi
  401de2:	e8 e9 ee ff ff       	callq  400cd0 <puts@plt>
  401de7:	e9 9b 00 00 00       	jmpq   401e87 <notify_server+0x1d2>
  401dec:	bf 45 34 40 00       	mov    $0x403445,%edi
  401df1:	e8 da ee ff ff       	callq  400cd0 <puts@plt>
  401df6:	e9 8c 00 00 00       	jmpq   401e87 <notify_server+0x1d2>
  401dfb:	85 db                	test   %ebx,%ebx
  401dfd:	74 07                	je     401e06 <notify_server+0x151>
  401dff:	ba 09 34 40 00       	mov    $0x403409,%edx
  401e04:	eb 05                	jmp    401e0b <notify_server+0x156>
  401e06:	ba 0e 34 40 00       	mov    $0x40340e,%edx
  401e0b:	be 90 35 40 00       	mov    $0x403590,%esi
  401e10:	bf 01 00 00 00       	mov    $0x1,%edi
  401e15:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1a:	e8 e1 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e1f:	48 8b 15 3a 33 20 00 	mov    0x20333a(%rip),%rdx        # 605160 <user_id>
  401e26:	be 4c 34 40 00       	mov    $0x40344c,%esi
  401e2b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e30:	b8 00 00 00 00       	mov    $0x0,%eax
  401e35:	e8 c6 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e3a:	48 8b 15 37 33 20 00 	mov    0x203337(%rip),%rdx        # 605178 <course>
  401e41:	be 59 34 40 00       	mov    $0x403459,%esi
  401e46:	bf 01 00 00 00       	mov    $0x1,%edi
  401e4b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e50:	e8 ab ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e55:	48 8b 15 14 33 20 00 	mov    0x203314(%rip),%rdx        # 605170 <lab>
  401e5c:	be 65 34 40 00       	mov    $0x403465,%esi
  401e61:	bf 01 00 00 00       	mov    $0x1,%edi
  401e66:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6b:	e8 90 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e70:	48 89 e2             	mov    %rsp,%rdx
  401e73:	be 6e 34 40 00       	mov    $0x40346e,%esi
  401e78:	bf 01 00 00 00       	mov    $0x1,%edi
  401e7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e82:	e8 79 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e87:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401e8e:	00 
  401e8f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e96:	00 00 
  401e98:	74 05                	je     401e9f <notify_server+0x1ea>
  401e9a:	e8 51 ee ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  401e9f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401ea6:	5b                   	pop    %rbx
  401ea7:	c3                   	retq   

0000000000401ea8 <validate>:
  401ea8:	53                   	push   %rbx
  401ea9:	89 fb                	mov    %edi,%ebx
  401eab:	83 3d 76 36 20 00 00 	cmpl   $0x0,0x203676(%rip)        # 605528 <is_checker>
  401eb2:	74 6b                	je     401f1f <validate+0x77>
  401eb4:	39 3d 62 36 20 00    	cmp    %edi,0x203662(%rip)        # 60551c <vlevel>
  401eba:	74 14                	je     401ed0 <validate+0x28>
  401ebc:	bf 7a 34 40 00       	mov    $0x40347a,%edi
  401ec1:	e8 0a ee ff ff       	callq  400cd0 <puts@plt>
  401ec6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecb:	e8 5e fd ff ff       	callq  401c2e <check_fail>
  401ed0:	8b 15 42 36 20 00    	mov    0x203642(%rip),%edx        # 605518 <check_level>
  401ed6:	39 d7                	cmp    %edx,%edi
  401ed8:	74 20                	je     401efa <validate+0x52>
  401eda:	89 f9                	mov    %edi,%ecx
  401edc:	be b8 35 40 00       	mov    $0x4035b8,%esi
  401ee1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee6:	b8 00 00 00 00       	mov    $0x0,%eax
  401eeb:	e8 10 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401ef0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef5:	e8 34 fd ff ff       	callq  401c2e <check_fail>
  401efa:	0f be 15 47 42 20 00 	movsbl 0x204247(%rip),%edx        # 606148 <target_prefix>
  401f01:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401f07:	89 f9                	mov    %edi,%ecx
  401f09:	be 98 34 40 00       	mov    $0x403498,%esi
  401f0e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f13:	b8 00 00 00 00       	mov    $0x0,%eax
  401f18:	e8 e3 ee ff ff       	callq  400e00 <__printf_chk@plt>
  401f1d:	eb 49                	jmp    401f68 <validate+0xc0>
  401f1f:	3b 3d f7 35 20 00    	cmp    0x2035f7(%rip),%edi        # 60551c <vlevel>
  401f25:	74 18                	je     401f3f <validate+0x97>
  401f27:	bf 7a 34 40 00       	mov    $0x40347a,%edi
  401f2c:	e8 9f ed ff ff       	callq  400cd0 <puts@plt>
  401f31:	89 de                	mov    %ebx,%esi
  401f33:	bf 00 00 00 00       	mov    $0x0,%edi
  401f38:	e8 78 fd ff ff       	callq  401cb5 <notify_server>
  401f3d:	eb 29                	jmp    401f68 <validate+0xc0>
  401f3f:	0f be 0d 02 42 20 00 	movsbl 0x204202(%rip),%ecx        # 606148 <target_prefix>
  401f46:	89 fa                	mov    %edi,%edx
  401f48:	be e0 35 40 00       	mov    $0x4035e0,%esi
  401f4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f52:	b8 00 00 00 00       	mov    $0x0,%eax
  401f57:	e8 a4 ee ff ff       	callq  400e00 <__printf_chk@plt>
  401f5c:	89 de                	mov    %ebx,%esi
  401f5e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f63:	e8 4d fd ff ff       	callq  401cb5 <notify_server>
  401f68:	5b                   	pop    %rbx
  401f69:	c3                   	retq   

0000000000401f6a <fail>:
  401f6a:	48 83 ec 08          	sub    $0x8,%rsp
  401f6e:	83 3d b3 35 20 00 00 	cmpl   $0x0,0x2035b3(%rip)        # 605528 <is_checker>
  401f75:	74 0a                	je     401f81 <fail+0x17>
  401f77:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7c:	e8 ad fc ff ff       	callq  401c2e <check_fail>
  401f81:	89 fe                	mov    %edi,%esi
  401f83:	bf 00 00 00 00       	mov    $0x0,%edi
  401f88:	e8 28 fd ff ff       	callq  401cb5 <notify_server>
  401f8d:	48 83 c4 08          	add    $0x8,%rsp
  401f91:	c3                   	retq   

0000000000401f92 <bushandler>:
  401f92:	48 83 ec 08          	sub    $0x8,%rsp
  401f96:	83 3d 8b 35 20 00 00 	cmpl   $0x0,0x20358b(%rip)        # 605528 <is_checker>
  401f9d:	74 14                	je     401fb3 <bushandler+0x21>
  401f9f:	bf ad 34 40 00       	mov    $0x4034ad,%edi
  401fa4:	e8 27 ed ff ff       	callq  400cd0 <puts@plt>
  401fa9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fae:	e8 7b fc ff ff       	callq  401c2e <check_fail>
  401fb3:	bf 18 36 40 00       	mov    $0x403618,%edi
  401fb8:	e8 13 ed ff ff       	callq  400cd0 <puts@plt>
  401fbd:	bf b7 34 40 00       	mov    $0x4034b7,%edi
  401fc2:	e8 09 ed ff ff       	callq  400cd0 <puts@plt>
  401fc7:	be 00 00 00 00       	mov    $0x0,%esi
  401fcc:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd1:	e8 df fc ff ff       	callq  401cb5 <notify_server>
  401fd6:	bf 01 00 00 00       	mov    $0x1,%edi
  401fdb:	e8 70 ee ff ff       	callq  400e50 <exit@plt>

0000000000401fe0 <seghandler>:
  401fe0:	48 83 ec 08          	sub    $0x8,%rsp
  401fe4:	83 3d 3d 35 20 00 00 	cmpl   $0x0,0x20353d(%rip)        # 605528 <is_checker>
  401feb:	74 14                	je     402001 <seghandler+0x21>
  401fed:	bf cd 34 40 00       	mov    $0x4034cd,%edi
  401ff2:	e8 d9 ec ff ff       	callq  400cd0 <puts@plt>
  401ff7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffc:	e8 2d fc ff ff       	callq  401c2e <check_fail>
  402001:	bf 38 36 40 00       	mov    $0x403638,%edi
  402006:	e8 c5 ec ff ff       	callq  400cd0 <puts@plt>
  40200b:	bf b7 34 40 00       	mov    $0x4034b7,%edi
  402010:	e8 bb ec ff ff       	callq  400cd0 <puts@plt>
  402015:	be 00 00 00 00       	mov    $0x0,%esi
  40201a:	bf 00 00 00 00       	mov    $0x0,%edi
  40201f:	e8 91 fc ff ff       	callq  401cb5 <notify_server>
  402024:	bf 01 00 00 00       	mov    $0x1,%edi
  402029:	e8 22 ee ff ff       	callq  400e50 <exit@plt>

000000000040202e <illegalhandler>:
  40202e:	48 83 ec 08          	sub    $0x8,%rsp
  402032:	83 3d ef 34 20 00 00 	cmpl   $0x0,0x2034ef(%rip)        # 605528 <is_checker>
  402039:	74 14                	je     40204f <illegalhandler+0x21>
  40203b:	bf e0 34 40 00       	mov    $0x4034e0,%edi
  402040:	e8 8b ec ff ff       	callq  400cd0 <puts@plt>
  402045:	b8 00 00 00 00       	mov    $0x0,%eax
  40204a:	e8 df fb ff ff       	callq  401c2e <check_fail>
  40204f:	bf 60 36 40 00       	mov    $0x403660,%edi
  402054:	e8 77 ec ff ff       	callq  400cd0 <puts@plt>
  402059:	bf b7 34 40 00       	mov    $0x4034b7,%edi
  40205e:	e8 6d ec ff ff       	callq  400cd0 <puts@plt>
  402063:	be 00 00 00 00       	mov    $0x0,%esi
  402068:	bf 00 00 00 00       	mov    $0x0,%edi
  40206d:	e8 43 fc ff ff       	callq  401cb5 <notify_server>
  402072:	bf 01 00 00 00       	mov    $0x1,%edi
  402077:	e8 d4 ed ff ff       	callq  400e50 <exit@plt>

000000000040207c <sigalrmhandler>:
  40207c:	48 83 ec 08          	sub    $0x8,%rsp
  402080:	83 3d a1 34 20 00 00 	cmpl   $0x0,0x2034a1(%rip)        # 605528 <is_checker>
  402087:	74 14                	je     40209d <sigalrmhandler+0x21>
  402089:	bf f4 34 40 00       	mov    $0x4034f4,%edi
  40208e:	e8 3d ec ff ff       	callq  400cd0 <puts@plt>
  402093:	b8 00 00 00 00       	mov    $0x0,%eax
  402098:	e8 91 fb ff ff       	callq  401c2e <check_fail>
  40209d:	ba 05 00 00 00       	mov    $0x5,%edx
  4020a2:	be 90 36 40 00       	mov    $0x403690,%esi
  4020a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b1:	e8 4a ed ff ff       	callq  400e00 <__printf_chk@plt>
  4020b6:	be 00 00 00 00       	mov    $0x0,%esi
  4020bb:	bf 00 00 00 00       	mov    $0x0,%edi
  4020c0:	e8 f0 fb ff ff       	callq  401cb5 <notify_server>
  4020c5:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ca:	e8 81 ed ff ff       	callq  400e50 <exit@plt>

00000000004020cf <launch>:
  4020cf:	55                   	push   %rbp
  4020d0:	48 89 e5             	mov    %rsp,%rbp
  4020d3:	48 83 ec 10          	sub    $0x10,%rsp
  4020d7:	48 89 fa             	mov    %rdi,%rdx
  4020da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020e1:	00 00 
  4020e3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020e7:	31 c0                	xor    %eax,%eax
  4020e9:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4020ed:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020f1:	48 29 c4             	sub    %rax,%rsp
  4020f4:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020f9:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020fd:	be f4 00 00 00       	mov    $0xf4,%esi
  402102:	e8 09 ec ff ff       	callq  400d10 <memset@plt>
  402107:	48 8b 05 b2 33 20 00 	mov    0x2033b2(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40210e:	48 39 05 fb 33 20 00 	cmp    %rax,0x2033fb(%rip)        # 605510 <infile>
  402115:	75 14                	jne    40212b <launch+0x5c>
  402117:	be fc 34 40 00       	mov    $0x4034fc,%esi
  40211c:	bf 01 00 00 00       	mov    $0x1,%edi
  402121:	b8 00 00 00 00       	mov    $0x0,%eax
  402126:	e8 d5 ec ff ff       	callq  400e00 <__printf_chk@plt>
  40212b:	c7 05 e7 33 20 00 00 	movl   $0x0,0x2033e7(%rip)        # 60551c <vlevel>
  402132:	00 00 00 
  402135:	b8 00 00 00 00       	mov    $0x0,%eax
  40213a:	e8 3a f9 ff ff       	callq  401a79 <test>
  40213f:	83 3d e2 33 20 00 00 	cmpl   $0x0,0x2033e2(%rip)        # 605528 <is_checker>
  402146:	74 14                	je     40215c <launch+0x8d>
  402148:	bf 09 35 40 00       	mov    $0x403509,%edi
  40214d:	e8 7e eb ff ff       	callq  400cd0 <puts@plt>
  402152:	b8 00 00 00 00       	mov    $0x0,%eax
  402157:	e8 d2 fa ff ff       	callq  401c2e <check_fail>
  40215c:	bf 14 35 40 00       	mov    $0x403514,%edi
  402161:	e8 6a eb ff ff       	callq  400cd0 <puts@plt>
  402166:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40216a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402171:	00 00 
  402173:	74 05                	je     40217a <launch+0xab>
  402175:	e8 76 eb ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  40217a:	c9                   	leaveq 
  40217b:	c3                   	retq   

000000000040217c <stable_launch>:
  40217c:	53                   	push   %rbx
  40217d:	48 89 3d 84 33 20 00 	mov    %rdi,0x203384(%rip)        # 605508 <global_offset>
  402184:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40218a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402190:	b9 32 01 00 00       	mov    $0x132,%ecx
  402195:	ba 07 00 00 00       	mov    $0x7,%edx
  40219a:	be 00 00 10 00       	mov    $0x100000,%esi
  40219f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4021a4:	e8 57 eb ff ff       	callq  400d00 <mmap@plt>
  4021a9:	48 89 c3             	mov    %rax,%rbx
  4021ac:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4021b2:	74 37                	je     4021eb <stable_launch+0x6f>
  4021b4:	be 00 00 10 00       	mov    $0x100000,%esi
  4021b9:	48 89 c7             	mov    %rax,%rdi
  4021bc:	e8 2f ec ff ff       	callq  400df0 <munmap@plt>
  4021c1:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4021c6:	ba c8 36 40 00       	mov    $0x4036c8,%edx
  4021cb:	be 01 00 00 00       	mov    $0x1,%esi
  4021d0:	48 8b 3d 09 33 20 00 	mov    0x203309(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4021d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021dc:	e8 8f ec ff ff       	callq  400e70 <__fprintf_chk@plt>
  4021e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e6:	e8 65 ec ff ff       	callq  400e50 <exit@plt>
  4021eb:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4021f2:	48 89 15 57 3f 20 00 	mov    %rdx,0x203f57(%rip)        # 606150 <stack_top>
  4021f9:	48 89 e0             	mov    %rsp,%rax
  4021fc:	48 89 d4             	mov    %rdx,%rsp
  4021ff:	48 89 c2             	mov    %rax,%rdx
  402202:	48 89 15 f7 32 20 00 	mov    %rdx,0x2032f7(%rip)        # 605500 <global_save_stack>
  402209:	48 8b 3d f8 32 20 00 	mov    0x2032f8(%rip),%rdi        # 605508 <global_offset>
  402210:	e8 ba fe ff ff       	callq  4020cf <launch>
  402215:	48 8b 05 e4 32 20 00 	mov    0x2032e4(%rip),%rax        # 605500 <global_save_stack>
  40221c:	48 89 c4             	mov    %rax,%rsp
  40221f:	be 00 00 10 00       	mov    $0x100000,%esi
  402224:	48 89 df             	mov    %rbx,%rdi
  402227:	e8 c4 eb ff ff       	callq  400df0 <munmap@plt>
  40222c:	5b                   	pop    %rbx
  40222d:	c3                   	retq   

000000000040222e <rio_readinitb>:
  40222e:	89 37                	mov    %esi,(%rdi)
  402230:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402237:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40223b:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40223f:	c3                   	retq   

0000000000402240 <sigalrm_handler>:
  402240:	48 83 ec 08          	sub    $0x8,%rsp
  402244:	b9 00 00 00 00       	mov    $0x0,%ecx
  402249:	ba 00 37 40 00       	mov    $0x403700,%edx
  40224e:	be 01 00 00 00       	mov    $0x1,%esi
  402253:	48 8b 3d 86 32 20 00 	mov    0x203286(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40225a:	b8 00 00 00 00       	mov    $0x0,%eax
  40225f:	e8 0c ec ff ff       	callq  400e70 <__fprintf_chk@plt>
  402264:	bf 01 00 00 00       	mov    $0x1,%edi
  402269:	e8 e2 eb ff ff       	callq  400e50 <exit@plt>

000000000040226e <rio_writen>:
  40226e:	41 55                	push   %r13
  402270:	41 54                	push   %r12
  402272:	55                   	push   %rbp
  402273:	53                   	push   %rbx
  402274:	48 83 ec 08          	sub    $0x8,%rsp
  402278:	41 89 fc             	mov    %edi,%r12d
  40227b:	48 89 f5             	mov    %rsi,%rbp
  40227e:	49 89 d5             	mov    %rdx,%r13
  402281:	48 89 d3             	mov    %rdx,%rbx
  402284:	eb 28                	jmp    4022ae <rio_writen+0x40>
  402286:	48 89 da             	mov    %rbx,%rdx
  402289:	48 89 ee             	mov    %rbp,%rsi
  40228c:	44 89 e7             	mov    %r12d,%edi
  40228f:	e8 4c ea ff ff       	callq  400ce0 <write@plt>
  402294:	48 85 c0             	test   %rax,%rax
  402297:	7f 0f                	jg     4022a8 <rio_writen+0x3a>
  402299:	e8 f2 e9 ff ff       	callq  400c90 <__errno_location@plt>
  40229e:	83 38 04             	cmpl   $0x4,(%rax)
  4022a1:	75 15                	jne    4022b8 <rio_writen+0x4a>
  4022a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a8:	48 29 c3             	sub    %rax,%rbx
  4022ab:	48 01 c5             	add    %rax,%rbp
  4022ae:	48 85 db             	test   %rbx,%rbx
  4022b1:	75 d3                	jne    402286 <rio_writen+0x18>
  4022b3:	4c 89 e8             	mov    %r13,%rax
  4022b6:	eb 07                	jmp    4022bf <rio_writen+0x51>
  4022b8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022bf:	48 83 c4 08          	add    $0x8,%rsp
  4022c3:	5b                   	pop    %rbx
  4022c4:	5d                   	pop    %rbp
  4022c5:	41 5c                	pop    %r12
  4022c7:	41 5d                	pop    %r13
  4022c9:	c3                   	retq   

00000000004022ca <rio_read>:
  4022ca:	41 55                	push   %r13
  4022cc:	41 54                	push   %r12
  4022ce:	55                   	push   %rbp
  4022cf:	53                   	push   %rbx
  4022d0:	48 83 ec 08          	sub    $0x8,%rsp
  4022d4:	48 89 fb             	mov    %rdi,%rbx
  4022d7:	49 89 f5             	mov    %rsi,%r13
  4022da:	49 89 d4             	mov    %rdx,%r12
  4022dd:	eb 2e                	jmp    40230d <rio_read+0x43>
  4022df:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4022e3:	8b 3b                	mov    (%rbx),%edi
  4022e5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022ea:	48 89 ee             	mov    %rbp,%rsi
  4022ed:	e8 4e ea ff ff       	callq  400d40 <read@plt>
  4022f2:	89 43 04             	mov    %eax,0x4(%rbx)
  4022f5:	85 c0                	test   %eax,%eax
  4022f7:	79 0c                	jns    402305 <rio_read+0x3b>
  4022f9:	e8 92 e9 ff ff       	callq  400c90 <__errno_location@plt>
  4022fe:	83 38 04             	cmpl   $0x4,(%rax)
  402301:	74 0a                	je     40230d <rio_read+0x43>
  402303:	eb 37                	jmp    40233c <rio_read+0x72>
  402305:	85 c0                	test   %eax,%eax
  402307:	74 3c                	je     402345 <rio_read+0x7b>
  402309:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40230d:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402310:	85 ed                	test   %ebp,%ebp
  402312:	7e cb                	jle    4022df <rio_read+0x15>
  402314:	89 e8                	mov    %ebp,%eax
  402316:	49 39 c4             	cmp    %rax,%r12
  402319:	77 03                	ja     40231e <rio_read+0x54>
  40231b:	44 89 e5             	mov    %r12d,%ebp
  40231e:	4c 63 e5             	movslq %ebp,%r12
  402321:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402325:	4c 89 e2             	mov    %r12,%rdx
  402328:	4c 89 ef             	mov    %r13,%rdi
  40232b:	e8 70 ea ff ff       	callq  400da0 <memcpy@plt>
  402330:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402334:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402337:	4c 89 e0             	mov    %r12,%rax
  40233a:	eb 0e                	jmp    40234a <rio_read+0x80>
  40233c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402343:	eb 05                	jmp    40234a <rio_read+0x80>
  402345:	b8 00 00 00 00       	mov    $0x0,%eax
  40234a:	48 83 c4 08          	add    $0x8,%rsp
  40234e:	5b                   	pop    %rbx
  40234f:	5d                   	pop    %rbp
  402350:	41 5c                	pop    %r12
  402352:	41 5d                	pop    %r13
  402354:	c3                   	retq   

0000000000402355 <rio_readlineb>:
  402355:	41 55                	push   %r13
  402357:	41 54                	push   %r12
  402359:	55                   	push   %rbp
  40235a:	53                   	push   %rbx
  40235b:	48 83 ec 18          	sub    $0x18,%rsp
  40235f:	49 89 fd             	mov    %rdi,%r13
  402362:	48 89 f5             	mov    %rsi,%rbp
  402365:	49 89 d4             	mov    %rdx,%r12
  402368:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40236f:	00 00 
  402371:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402376:	31 c0                	xor    %eax,%eax
  402378:	bb 01 00 00 00       	mov    $0x1,%ebx
  40237d:	eb 3f                	jmp    4023be <rio_readlineb+0x69>
  40237f:	ba 01 00 00 00       	mov    $0x1,%edx
  402384:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402389:	4c 89 ef             	mov    %r13,%rdi
  40238c:	e8 39 ff ff ff       	callq  4022ca <rio_read>
  402391:	83 f8 01             	cmp    $0x1,%eax
  402394:	75 15                	jne    4023ab <rio_readlineb+0x56>
  402396:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40239a:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40239f:	88 55 00             	mov    %dl,0x0(%rbp)
  4023a2:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4023a7:	75 0e                	jne    4023b7 <rio_readlineb+0x62>
  4023a9:	eb 1a                	jmp    4023c5 <rio_readlineb+0x70>
  4023ab:	85 c0                	test   %eax,%eax
  4023ad:	75 22                	jne    4023d1 <rio_readlineb+0x7c>
  4023af:	48 83 fb 01          	cmp    $0x1,%rbx
  4023b3:	75 13                	jne    4023c8 <rio_readlineb+0x73>
  4023b5:	eb 23                	jmp    4023da <rio_readlineb+0x85>
  4023b7:	48 83 c3 01          	add    $0x1,%rbx
  4023bb:	48 89 c5             	mov    %rax,%rbp
  4023be:	4c 39 e3             	cmp    %r12,%rbx
  4023c1:	72 bc                	jb     40237f <rio_readlineb+0x2a>
  4023c3:	eb 03                	jmp    4023c8 <rio_readlineb+0x73>
  4023c5:	48 89 c5             	mov    %rax,%rbp
  4023c8:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4023cc:	48 89 d8             	mov    %rbx,%rax
  4023cf:	eb 0e                	jmp    4023df <rio_readlineb+0x8a>
  4023d1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023d8:	eb 05                	jmp    4023df <rio_readlineb+0x8a>
  4023da:	b8 00 00 00 00       	mov    $0x0,%eax
  4023df:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4023e4:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4023eb:	00 00 
  4023ed:	74 05                	je     4023f4 <rio_readlineb+0x9f>
  4023ef:	e8 fc e8 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4023f4:	48 83 c4 18          	add    $0x18,%rsp
  4023f8:	5b                   	pop    %rbx
  4023f9:	5d                   	pop    %rbp
  4023fa:	41 5c                	pop    %r12
  4023fc:	41 5d                	pop    %r13
  4023fe:	c3                   	retq   

00000000004023ff <urlencode>:
  4023ff:	41 54                	push   %r12
  402401:	55                   	push   %rbp
  402402:	53                   	push   %rbx
  402403:	48 83 ec 10          	sub    $0x10,%rsp
  402407:	48 89 fb             	mov    %rdi,%rbx
  40240a:	48 89 f5             	mov    %rsi,%rbp
  40240d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402414:	00 00 
  402416:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40241b:	31 c0                	xor    %eax,%eax
  40241d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402424:	f2 ae                	repnz scas %es:(%rdi),%al
  402426:	48 f7 d1             	not    %rcx
  402429:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40242c:	e9 aa 00 00 00       	jmpq   4024db <urlencode+0xdc>
  402431:	44 0f b6 03          	movzbl (%rbx),%r8d
  402435:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402439:	0f 94 c2             	sete   %dl
  40243c:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402440:	0f 94 c0             	sete   %al
  402443:	08 c2                	or     %al,%dl
  402445:	75 24                	jne    40246b <urlencode+0x6c>
  402447:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40244b:	74 1e                	je     40246b <urlencode+0x6c>
  40244d:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402451:	74 18                	je     40246b <urlencode+0x6c>
  402453:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402457:	3c 09                	cmp    $0x9,%al
  402459:	76 10                	jbe    40246b <urlencode+0x6c>
  40245b:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40245f:	3c 19                	cmp    $0x19,%al
  402461:	76 08                	jbe    40246b <urlencode+0x6c>
  402463:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402467:	3c 19                	cmp    $0x19,%al
  402469:	77 0a                	ja     402475 <urlencode+0x76>
  40246b:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40246f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402473:	eb 5f                	jmp    4024d4 <urlencode+0xd5>
  402475:	41 80 f8 20          	cmp    $0x20,%r8b
  402479:	75 0a                	jne    402485 <urlencode+0x86>
  40247b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40247f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402483:	eb 4f                	jmp    4024d4 <urlencode+0xd5>
  402485:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402489:	3c 5f                	cmp    $0x5f,%al
  40248b:	0f 96 c2             	setbe  %dl
  40248e:	41 80 f8 09          	cmp    $0x9,%r8b
  402492:	0f 94 c0             	sete   %al
  402495:	08 c2                	or     %al,%dl
  402497:	74 50                	je     4024e9 <urlencode+0xea>
  402499:	45 0f b6 c0          	movzbl %r8b,%r8d
  40249d:	b9 98 37 40 00       	mov    $0x403798,%ecx
  4024a2:	ba 08 00 00 00       	mov    $0x8,%edx
  4024a7:	be 01 00 00 00       	mov    $0x1,%esi
  4024ac:	48 89 e7             	mov    %rsp,%rdi
  4024af:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b4:	e8 c7 e9 ff ff       	callq  400e80 <__sprintf_chk@plt>
  4024b9:	0f b6 04 24          	movzbl (%rsp),%eax
  4024bd:	88 45 00             	mov    %al,0x0(%rbp)
  4024c0:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4024c5:	88 45 01             	mov    %al,0x1(%rbp)
  4024c8:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4024cd:	88 45 02             	mov    %al,0x2(%rbp)
  4024d0:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4024d4:	48 83 c3 01          	add    $0x1,%rbx
  4024d8:	44 89 e0             	mov    %r12d,%eax
  4024db:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4024df:	85 c0                	test   %eax,%eax
  4024e1:	0f 85 4a ff ff ff    	jne    402431 <urlencode+0x32>
  4024e7:	eb 05                	jmp    4024ee <urlencode+0xef>
  4024e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024ee:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4024f3:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4024fa:	00 00 
  4024fc:	74 05                	je     402503 <urlencode+0x104>
  4024fe:	e8 ed e7 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402503:	48 83 c4 10          	add    $0x10,%rsp
  402507:	5b                   	pop    %rbx
  402508:	5d                   	pop    %rbp
  402509:	41 5c                	pop    %r12
  40250b:	c3                   	retq   

000000000040250c <submitr>:
  40250c:	41 57                	push   %r15
  40250e:	41 56                	push   %r14
  402510:	41 55                	push   %r13
  402512:	41 54                	push   %r12
  402514:	55                   	push   %rbp
  402515:	53                   	push   %rbx
  402516:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40251d:	49 89 fc             	mov    %rdi,%r12
  402520:	89 74 24 04          	mov    %esi,0x4(%rsp)
  402524:	49 89 d7             	mov    %rdx,%r15
  402527:	49 89 ce             	mov    %rcx,%r14
  40252a:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40252f:	4d 89 cd             	mov    %r9,%r13
  402532:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402539:	00 
  40253a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402541:	00 00 
  402543:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  40254a:	00 
  40254b:	31 c0                	xor    %eax,%eax
  40254d:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402554:	00 
  402555:	ba 00 00 00 00       	mov    $0x0,%edx
  40255a:	be 01 00 00 00       	mov    $0x1,%esi
  40255f:	bf 02 00 00 00       	mov    $0x2,%edi
  402564:	e8 27 e9 ff ff       	callq  400e90 <socket@plt>
  402569:	85 c0                	test   %eax,%eax
  40256b:	79 4e                	jns    4025bb <submitr+0xaf>
  40256d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402574:	3a 20 43 
  402577:	48 89 03             	mov    %rax,(%rbx)
  40257a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402581:	20 75 6e 
  402584:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402588:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40258f:	74 6f 20 
  402592:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402596:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40259d:	65 20 73 
  4025a0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025a4:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4025ab:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4025b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b6:	e9 97 06 00 00       	jmpq   402c52 <submitr+0x746>
  4025bb:	89 c5                	mov    %eax,%ebp
  4025bd:	4c 89 e7             	mov    %r12,%rdi
  4025c0:	e8 ab e7 ff ff       	callq  400d70 <gethostbyname@plt>
  4025c5:	48 85 c0             	test   %rax,%rax
  4025c8:	75 67                	jne    402631 <submitr+0x125>
  4025ca:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4025d1:	3a 20 44 
  4025d4:	48 89 03             	mov    %rax,(%rbx)
  4025d7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4025de:	20 75 6e 
  4025e1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025e5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025ec:	74 6f 20 
  4025ef:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025f3:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4025fa:	76 65 20 
  4025fd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402601:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402608:	72 20 61 
  40260b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40260f:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402616:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  40261c:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402620:	89 ef                	mov    %ebp,%edi
  402622:	e8 09 e7 ff ff       	callq  400d30 <close@plt>
  402627:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40262c:	e9 21 06 00 00       	jmpq   402c52 <submitr+0x746>
  402631:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402638:	00 00 
  40263a:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402641:	00 00 
  402643:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  40264a:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40264e:	48 8b 40 18          	mov    0x18(%rax),%rax
  402652:	48 8b 30             	mov    (%rax),%rsi
  402655:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  40265a:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40265f:	e8 1c e7 ff ff       	callq  400d80 <__memmove_chk@plt>
  402664:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402669:	66 c1 c8 08          	ror    $0x8,%ax
  40266d:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402672:	ba 10 00 00 00       	mov    $0x10,%edx
  402677:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40267c:	89 ef                	mov    %ebp,%edi
  40267e:	e8 dd e7 ff ff       	callq  400e60 <connect@plt>
  402683:	85 c0                	test   %eax,%eax
  402685:	79 59                	jns    4026e0 <submitr+0x1d4>
  402687:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40268e:	3a 20 55 
  402691:	48 89 03             	mov    %rax,(%rbx)
  402694:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40269b:	20 74 6f 
  40269e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026a2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4026a9:	65 63 74 
  4026ac:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026b0:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4026b7:	68 65 20 
  4026ba:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026be:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4026c5:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4026cb:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4026cf:	89 ef                	mov    %ebp,%edi
  4026d1:	e8 5a e6 ff ff       	callq  400d30 <close@plt>
  4026d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026db:	e9 72 05 00 00       	jmpq   402c52 <submitr+0x746>
  4026e0:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4026e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ec:	48 89 f1             	mov    %rsi,%rcx
  4026ef:	4c 89 ef             	mov    %r13,%rdi
  4026f2:	f2 ae                	repnz scas %es:(%rdi),%al
  4026f4:	48 f7 d1             	not    %rcx
  4026f7:	48 89 ca             	mov    %rcx,%rdx
  4026fa:	48 89 f1             	mov    %rsi,%rcx
  4026fd:	4c 89 ff             	mov    %r15,%rdi
  402700:	f2 ae                	repnz scas %es:(%rdi),%al
  402702:	48 f7 d1             	not    %rcx
  402705:	49 89 c8             	mov    %rcx,%r8
  402708:	48 89 f1             	mov    %rsi,%rcx
  40270b:	4c 89 f7             	mov    %r14,%rdi
  40270e:	f2 ae                	repnz scas %es:(%rdi),%al
  402710:	48 f7 d1             	not    %rcx
  402713:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402718:	48 89 f1             	mov    %rsi,%rcx
  40271b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402720:	f2 ae                	repnz scas %es:(%rdi),%al
  402722:	48 89 c8             	mov    %rcx,%rax
  402725:	48 f7 d0             	not    %rax
  402728:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40272d:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402732:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402739:	00 
  40273a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402740:	76 72                	jbe    4027b4 <submitr+0x2a8>
  402742:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402749:	3a 20 52 
  40274c:	48 89 03             	mov    %rax,(%rbx)
  40274f:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402756:	20 73 74 
  402759:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40275d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402764:	74 6f 6f 
  402767:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40276b:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402772:	65 2e 20 
  402775:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402779:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402780:	61 73 65 
  402783:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402787:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  40278e:	49 54 52 
  402791:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402795:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40279c:	55 46 00 
  40279f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027a3:	89 ef                	mov    %ebp,%edi
  4027a5:	e8 86 e5 ff ff       	callq  400d30 <close@plt>
  4027aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027af:	e9 9e 04 00 00       	jmpq   402c52 <submitr+0x746>
  4027b4:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  4027bb:	00 
  4027bc:	b9 00 04 00 00       	mov    $0x400,%ecx
  4027c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c6:	48 89 f7             	mov    %rsi,%rdi
  4027c9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027cc:	4c 89 ef             	mov    %r13,%rdi
  4027cf:	e8 2b fc ff ff       	callq  4023ff <urlencode>
  4027d4:	85 c0                	test   %eax,%eax
  4027d6:	0f 89 8a 00 00 00    	jns    402866 <submitr+0x35a>
  4027dc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027e3:	3a 20 52 
  4027e6:	48 89 03             	mov    %rax,(%rbx)
  4027e9:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4027f0:	20 73 74 
  4027f3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027f7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4027fe:	63 6f 6e 
  402801:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402805:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40280c:	20 61 6e 
  40280f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402813:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40281a:	67 61 6c 
  40281d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402821:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402828:	6e 70 72 
  40282b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40282f:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402836:	6c 65 20 
  402839:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40283d:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402844:	63 74 65 
  402847:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40284b:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402851:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402855:	89 ef                	mov    %ebp,%edi
  402857:	e8 d4 e4 ff ff       	callq  400d30 <close@plt>
  40285c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402861:	e9 ec 03 00 00       	jmpq   402c52 <submitr+0x746>
  402866:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  40286d:	00 
  40286e:	41 54                	push   %r12
  402870:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  402877:	00 
  402878:	50                   	push   %rax
  402879:	4d 89 f9             	mov    %r15,%r9
  40287c:	4d 89 f0             	mov    %r14,%r8
  40287f:	b9 28 37 40 00       	mov    $0x403728,%ecx
  402884:	ba 00 20 00 00       	mov    $0x2000,%edx
  402889:	be 01 00 00 00       	mov    $0x1,%esi
  40288e:	4c 89 ef             	mov    %r13,%rdi
  402891:	b8 00 00 00 00       	mov    $0x0,%eax
  402896:	e8 e5 e5 ff ff       	callq  400e80 <__sprintf_chk@plt>
  40289b:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4028a7:	4c 89 ef             	mov    %r13,%rdi
  4028aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4028ac:	48 f7 d1             	not    %rcx
  4028af:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4028b3:	4c 89 ee             	mov    %r13,%rsi
  4028b6:	89 ef                	mov    %ebp,%edi
  4028b8:	e8 b1 f9 ff ff       	callq  40226e <rio_writen>
  4028bd:	48 83 c4 10          	add    $0x10,%rsp
  4028c1:	48 85 c0             	test   %rax,%rax
  4028c4:	79 6e                	jns    402934 <submitr+0x428>
  4028c6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028cd:	3a 20 43 
  4028d0:	48 89 03             	mov    %rax,(%rbx)
  4028d3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028da:	20 75 6e 
  4028dd:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028e1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028e8:	74 6f 20 
  4028eb:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028ef:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4028f6:	20 74 6f 
  4028f9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028fd:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402904:	72 65 73 
  402907:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40290b:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402912:	65 72 76 
  402915:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402919:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  40291f:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402923:	89 ef                	mov    %ebp,%edi
  402925:	e8 06 e4 ff ff       	callq  400d30 <close@plt>
  40292a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40292f:	e9 1e 03 00 00       	jmpq   402c52 <submitr+0x746>
  402934:	89 ee                	mov    %ebp,%esi
  402936:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40293b:	e8 ee f8 ff ff       	callq  40222e <rio_readinitb>
  402940:	ba 00 20 00 00       	mov    $0x2000,%edx
  402945:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40294c:	00 
  40294d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402952:	e8 fe f9 ff ff       	callq  402355 <rio_readlineb>
  402957:	48 85 c0             	test   %rax,%rax
  40295a:	7f 7d                	jg     4029d9 <submitr+0x4cd>
  40295c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402963:	3a 20 43 
  402966:	48 89 03             	mov    %rax,(%rbx)
  402969:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402970:	20 75 6e 
  402973:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402977:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40297e:	74 6f 20 
  402981:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402985:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  40298c:	66 69 72 
  40298f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402993:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40299a:	61 64 65 
  40299d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029a1:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  4029a8:	6d 20 72 
  4029ab:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029af:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4029b6:	20 73 65 
  4029b9:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029bd:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4029c4:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4029c8:	89 ef                	mov    %ebp,%edi
  4029ca:	e8 61 e3 ff ff       	callq  400d30 <close@plt>
  4029cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029d4:	e9 79 02 00 00       	jmpq   402c52 <submitr+0x746>
  4029d9:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4029e0:	00 
  4029e1:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4029e6:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4029ed:	00 
  4029ee:	be 9f 37 40 00       	mov    $0x40379f,%esi
  4029f3:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4029fa:	00 
  4029fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402a00:	e8 db e3 ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  402a05:	e9 95 00 00 00       	jmpq   402a9f <submitr+0x593>
  402a0a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a0f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a16:	00 
  402a17:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a1c:	e8 34 f9 ff ff       	callq  402355 <rio_readlineb>
  402a21:	48 85 c0             	test   %rax,%rax
  402a24:	7f 79                	jg     402a9f <submitr+0x593>
  402a26:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a2d:	3a 20 43 
  402a30:	48 89 03             	mov    %rax,(%rbx)
  402a33:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a3a:	20 75 6e 
  402a3d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a41:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a48:	74 6f 20 
  402a4b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a4f:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402a56:	68 65 61 
  402a59:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a5d:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a64:	66 72 6f 
  402a67:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a6b:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402a72:	20 72 65 
  402a75:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a79:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402a80:	73 65 72 
  402a83:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a87:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402a8e:	89 ef                	mov    %ebp,%edi
  402a90:	e8 9b e2 ff ff       	callq  400d30 <close@plt>
  402a95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a9a:	e9 b3 01 00 00       	jmpq   402c52 <submitr+0x746>
  402a9f:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402aa6:	00 
  402aa7:	b8 0d 00 00 00       	mov    $0xd,%eax
  402aac:	29 d0                	sub    %edx,%eax
  402aae:	75 1b                	jne    402acb <submitr+0x5bf>
  402ab0:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402ab7:	00 
  402ab8:	b8 0a 00 00 00       	mov    $0xa,%eax
  402abd:	29 d0                	sub    %edx,%eax
  402abf:	75 0a                	jne    402acb <submitr+0x5bf>
  402ac1:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402ac8:	00 
  402ac9:	f7 d8                	neg    %eax
  402acb:	85 c0                	test   %eax,%eax
  402acd:	0f 85 37 ff ff ff    	jne    402a0a <submitr+0x4fe>
  402ad3:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ad8:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402adf:	00 
  402ae0:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402ae5:	e8 6b f8 ff ff       	callq  402355 <rio_readlineb>
  402aea:	48 85 c0             	test   %rax,%rax
  402aed:	0f 8f 83 00 00 00    	jg     402b76 <submitr+0x66a>
  402af3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402afa:	3a 20 43 
  402afd:	48 89 03             	mov    %rax,(%rbx)
  402b00:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b07:	20 75 6e 
  402b0a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402b0e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b15:	74 6f 20 
  402b18:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402b1c:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402b23:	73 74 61 
  402b26:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402b2a:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402b31:	65 73 73 
  402b34:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402b38:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402b3f:	72 6f 6d 
  402b42:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402b46:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402b4d:	6c 74 20 
  402b50:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402b54:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402b5b:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402b61:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402b65:	89 ef                	mov    %ebp,%edi
  402b67:	e8 c4 e1 ff ff       	callq  400d30 <close@plt>
  402b6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b71:	e9 dc 00 00 00       	jmpq   402c52 <submitr+0x746>
  402b76:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402b7b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402b82:	74 37                	je     402bbb <submitr+0x6af>
  402b84:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402b8b:	00 
  402b8c:	b9 68 37 40 00       	mov    $0x403768,%ecx
  402b91:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b98:	be 01 00 00 00       	mov    $0x1,%esi
  402b9d:	48 89 df             	mov    %rbx,%rdi
  402ba0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba5:	e8 d6 e2 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402baa:	89 ef                	mov    %ebp,%edi
  402bac:	e8 7f e1 ff ff       	callq  400d30 <close@plt>
  402bb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bb6:	e9 97 00 00 00       	jmpq   402c52 <submitr+0x746>
  402bbb:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402bc2:	00 
  402bc3:	48 89 df             	mov    %rbx,%rdi
  402bc6:	e8 f5 e0 ff ff       	callq  400cc0 <strcpy@plt>
  402bcb:	89 ef                	mov    %ebp,%edi
  402bcd:	e8 5e e1 ff ff       	callq  400d30 <close@plt>
  402bd2:	0f b6 03             	movzbl (%rbx),%eax
  402bd5:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402bda:	29 c2                	sub    %eax,%edx
  402bdc:	75 22                	jne    402c00 <submitr+0x6f4>
  402bde:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402be2:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402be7:	29 c8                	sub    %ecx,%eax
  402be9:	75 17                	jne    402c02 <submitr+0x6f6>
  402beb:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402bef:	b8 0a 00 00 00       	mov    $0xa,%eax
  402bf4:	29 c8                	sub    %ecx,%eax
  402bf6:	75 0a                	jne    402c02 <submitr+0x6f6>
  402bf8:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402bfc:	f7 d8                	neg    %eax
  402bfe:	eb 02                	jmp    402c02 <submitr+0x6f6>
  402c00:	89 d0                	mov    %edx,%eax
  402c02:	85 c0                	test   %eax,%eax
  402c04:	74 40                	je     402c46 <submitr+0x73a>
  402c06:	bf b0 37 40 00       	mov    $0x4037b0,%edi
  402c0b:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c10:	48 89 de             	mov    %rbx,%rsi
  402c13:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c15:	0f 97 c0             	seta   %al
  402c18:	0f 92 c1             	setb   %cl
  402c1b:	29 c8                	sub    %ecx,%eax
  402c1d:	0f be c0             	movsbl %al,%eax
  402c20:	85 c0                	test   %eax,%eax
  402c22:	74 2e                	je     402c52 <submitr+0x746>
  402c24:	85 d2                	test   %edx,%edx
  402c26:	75 13                	jne    402c3b <submitr+0x72f>
  402c28:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402c2c:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402c31:	29 c2                	sub    %eax,%edx
  402c33:	75 06                	jne    402c3b <submitr+0x72f>
  402c35:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402c39:	f7 da                	neg    %edx
  402c3b:	85 d2                	test   %edx,%edx
  402c3d:	75 0e                	jne    402c4d <submitr+0x741>
  402c3f:	b8 00 00 00 00       	mov    $0x0,%eax
  402c44:	eb 0c                	jmp    402c52 <submitr+0x746>
  402c46:	b8 00 00 00 00       	mov    $0x0,%eax
  402c4b:	eb 05                	jmp    402c52 <submitr+0x746>
  402c4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c52:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402c59:	00 
  402c5a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402c61:	00 00 
  402c63:	74 05                	je     402c6a <submitr+0x75e>
  402c65:	e8 86 e0 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402c6a:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402c71:	5b                   	pop    %rbx
  402c72:	5d                   	pop    %rbp
  402c73:	41 5c                	pop    %r12
  402c75:	41 5d                	pop    %r13
  402c77:	41 5e                	pop    %r14
  402c79:	41 5f                	pop    %r15
  402c7b:	c3                   	retq   

0000000000402c7c <init_timeout>:
  402c7c:	85 ff                	test   %edi,%edi
  402c7e:	74 23                	je     402ca3 <init_timeout+0x27>
  402c80:	53                   	push   %rbx
  402c81:	89 fb                	mov    %edi,%ebx
  402c83:	85 ff                	test   %edi,%edi
  402c85:	79 05                	jns    402c8c <init_timeout+0x10>
  402c87:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c8c:	be 40 22 40 00       	mov    $0x402240,%esi
  402c91:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c96:	e8 c5 e0 ff ff       	callq  400d60 <signal@plt>
  402c9b:	89 df                	mov    %ebx,%edi
  402c9d:	e8 7e e0 ff ff       	callq  400d20 <alarm@plt>
  402ca2:	5b                   	pop    %rbx
  402ca3:	f3 c3                	repz retq 

0000000000402ca5 <init_driver>:
  402ca5:	55                   	push   %rbp
  402ca6:	53                   	push   %rbx
  402ca7:	48 83 ec 28          	sub    $0x28,%rsp
  402cab:	48 89 fd             	mov    %rdi,%rbp
  402cae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cb5:	00 00 
  402cb7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402cbc:	31 c0                	xor    %eax,%eax
  402cbe:	be 01 00 00 00       	mov    $0x1,%esi
  402cc3:	bf 0d 00 00 00       	mov    $0xd,%edi
  402cc8:	e8 93 e0 ff ff       	callq  400d60 <signal@plt>
  402ccd:	be 01 00 00 00       	mov    $0x1,%esi
  402cd2:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402cd7:	e8 84 e0 ff ff       	callq  400d60 <signal@plt>
  402cdc:	be 01 00 00 00       	mov    $0x1,%esi
  402ce1:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ce6:	e8 75 e0 ff ff       	callq  400d60 <signal@plt>
  402ceb:	ba 00 00 00 00       	mov    $0x0,%edx
  402cf0:	be 01 00 00 00       	mov    $0x1,%esi
  402cf5:	bf 02 00 00 00       	mov    $0x2,%edi
  402cfa:	e8 91 e1 ff ff       	callq  400e90 <socket@plt>
  402cff:	85 c0                	test   %eax,%eax
  402d01:	79 4f                	jns    402d52 <init_driver+0xad>
  402d03:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d0a:	3a 20 43 
  402d0d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d11:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402d18:	20 75 6e 
  402d1b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d1f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d26:	74 6f 20 
  402d29:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d2d:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402d34:	65 20 73 
  402d37:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d3b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402d42:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402d48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d4d:	e9 2a 01 00 00       	jmpq   402e7c <init_driver+0x1d7>
  402d52:	89 c3                	mov    %eax,%ebx
  402d54:	bf f5 32 40 00       	mov    $0x4032f5,%edi
  402d59:	e8 12 e0 ff ff       	callq  400d70 <gethostbyname@plt>
  402d5e:	48 85 c0             	test   %rax,%rax
  402d61:	75 68                	jne    402dcb <init_driver+0x126>
  402d63:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d6a:	3a 20 44 
  402d6d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d71:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402d78:	20 75 6e 
  402d7b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d7f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d86:	74 6f 20 
  402d89:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d8d:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d94:	76 65 20 
  402d97:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d9b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402da2:	72 20 61 
  402da5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402da9:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402db0:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402db6:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402dba:	89 df                	mov    %ebx,%edi
  402dbc:	e8 6f df ff ff       	callq  400d30 <close@plt>
  402dc1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dc6:	e9 b1 00 00 00       	jmpq   402e7c <init_driver+0x1d7>
  402dcb:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402dd2:	00 
  402dd3:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402dda:	00 00 
  402ddc:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402de2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402de6:	48 8b 40 18          	mov    0x18(%rax),%rax
  402dea:	48 8b 30             	mov    (%rax),%rsi
  402ded:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402df2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402df7:	e8 84 df ff ff       	callq  400d80 <__memmove_chk@plt>
  402dfc:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402e03:	ba 10 00 00 00       	mov    $0x10,%edx
  402e08:	48 89 e6             	mov    %rsp,%rsi
  402e0b:	89 df                	mov    %ebx,%edi
  402e0d:	e8 4e e0 ff ff       	callq  400e60 <connect@plt>
  402e12:	85 c0                	test   %eax,%eax
  402e14:	79 50                	jns    402e66 <init_driver+0x1c1>
  402e16:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e1d:	3a 20 55 
  402e20:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e24:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402e2b:	20 74 6f 
  402e2e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e32:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e39:	65 63 74 
  402e3c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e40:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402e47:	65 72 76 
  402e4a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402e4e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402e54:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402e58:	89 df                	mov    %ebx,%edi
  402e5a:	e8 d1 de ff ff       	callq  400d30 <close@plt>
  402e5f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e64:	eb 16                	jmp    402e7c <init_driver+0x1d7>
  402e66:	89 df                	mov    %ebx,%edi
  402e68:	e8 c3 de ff ff       	callq  400d30 <close@plt>
  402e6d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402e73:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402e77:	b8 00 00 00 00       	mov    $0x0,%eax
  402e7c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402e81:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402e88:	00 00 
  402e8a:	74 05                	je     402e91 <init_driver+0x1ec>
  402e8c:	e8 5f de ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402e91:	48 83 c4 28          	add    $0x28,%rsp
  402e95:	5b                   	pop    %rbx
  402e96:	5d                   	pop    %rbp
  402e97:	c3                   	retq   

0000000000402e98 <driver_post>:
  402e98:	53                   	push   %rbx
  402e99:	4c 89 cb             	mov    %r9,%rbx
  402e9c:	45 85 c0             	test   %r8d,%r8d
  402e9f:	74 27                	je     402ec8 <driver_post+0x30>
  402ea1:	48 89 ca             	mov    %rcx,%rdx
  402ea4:	be b5 37 40 00       	mov    $0x4037b5,%esi
  402ea9:	bf 01 00 00 00       	mov    $0x1,%edi
  402eae:	b8 00 00 00 00       	mov    $0x0,%eax
  402eb3:	e8 48 df ff ff       	callq  400e00 <__printf_chk@plt>
  402eb8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ebd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ec1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ec6:	eb 3f                	jmp    402f07 <driver_post+0x6f>
  402ec8:	48 85 ff             	test   %rdi,%rdi
  402ecb:	74 2c                	je     402ef9 <driver_post+0x61>
  402ecd:	80 3f 00             	cmpb   $0x0,(%rdi)
  402ed0:	74 27                	je     402ef9 <driver_post+0x61>
  402ed2:	48 83 ec 08          	sub    $0x8,%rsp
  402ed6:	41 51                	push   %r9
  402ed8:	49 89 c9             	mov    %rcx,%r9
  402edb:	49 89 d0             	mov    %rdx,%r8
  402ede:	48 89 f9             	mov    %rdi,%rcx
  402ee1:	48 89 f2             	mov    %rsi,%rdx
  402ee4:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402ee9:	bf f5 32 40 00       	mov    $0x4032f5,%edi
  402eee:	e8 19 f6 ff ff       	callq  40250c <submitr>
  402ef3:	48 83 c4 10          	add    $0x10,%rsp
  402ef7:	eb 0e                	jmp    402f07 <driver_post+0x6f>
  402ef9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402efe:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f02:	b8 00 00 00 00       	mov    $0x0,%eax
  402f07:	5b                   	pop    %rbx
  402f08:	c3                   	retq   

0000000000402f09 <check>:
  402f09:	89 f8                	mov    %edi,%eax
  402f0b:	c1 e8 1c             	shr    $0x1c,%eax
  402f0e:	85 c0                	test   %eax,%eax
  402f10:	74 1d                	je     402f2f <check+0x26>
  402f12:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f17:	eb 0b                	jmp    402f24 <check+0x1b>
  402f19:	89 f8                	mov    %edi,%eax
  402f1b:	d3 e8                	shr    %cl,%eax
  402f1d:	3c 0a                	cmp    $0xa,%al
  402f1f:	74 14                	je     402f35 <check+0x2c>
  402f21:	83 c1 08             	add    $0x8,%ecx
  402f24:	83 f9 1f             	cmp    $0x1f,%ecx
  402f27:	7e f0                	jle    402f19 <check+0x10>
  402f29:	b8 01 00 00 00       	mov    $0x1,%eax
  402f2e:	c3                   	retq   
  402f2f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f34:	c3                   	retq   
  402f35:	b8 00 00 00 00       	mov    $0x0,%eax
  402f3a:	c3                   	retq   

0000000000402f3b <gencookie>:
  402f3b:	53                   	push   %rbx
  402f3c:	83 c7 01             	add    $0x1,%edi
  402f3f:	e8 5c dd ff ff       	callq  400ca0 <srandom@plt>
  402f44:	e8 77 de ff ff       	callq  400dc0 <random@plt>
  402f49:	89 c3                	mov    %eax,%ebx
  402f4b:	89 c7                	mov    %eax,%edi
  402f4d:	e8 b7 ff ff ff       	callq  402f09 <check>
  402f52:	85 c0                	test   %eax,%eax
  402f54:	74 ee                	je     402f44 <gencookie+0x9>
  402f56:	89 d8                	mov    %ebx,%eax
  402f58:	5b                   	pop    %rbx
  402f59:	c3                   	retq   
  402f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402f60 <__libc_csu_init>:
  402f60:	41 57                	push   %r15
  402f62:	41 56                	push   %r14
  402f64:	41 89 ff             	mov    %edi,%r15d
  402f67:	41 55                	push   %r13
  402f69:	41 54                	push   %r12
  402f6b:	4c 8d 25 9e 1e 20 00 	lea    0x201e9e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402f72:	55                   	push   %rbp
  402f73:	48 8d 2d 9e 1e 20 00 	lea    0x201e9e(%rip),%rbp        # 604e18 <__init_array_end>
  402f7a:	53                   	push   %rbx
  402f7b:	49 89 f6             	mov    %rsi,%r14
  402f7e:	49 89 d5             	mov    %rdx,%r13
  402f81:	4c 29 e5             	sub    %r12,%rbp
  402f84:	48 83 ec 08          	sub    $0x8,%rsp
  402f88:	48 c1 fd 03          	sar    $0x3,%rbp
  402f8c:	e8 b7 dc ff ff       	callq  400c48 <_init>
  402f91:	48 85 ed             	test   %rbp,%rbp
  402f94:	74 20                	je     402fb6 <__libc_csu_init+0x56>
  402f96:	31 db                	xor    %ebx,%ebx
  402f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f9f:	00 
  402fa0:	4c 89 ea             	mov    %r13,%rdx
  402fa3:	4c 89 f6             	mov    %r14,%rsi
  402fa6:	44 89 ff             	mov    %r15d,%edi
  402fa9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402fad:	48 83 c3 01          	add    $0x1,%rbx
  402fb1:	48 39 eb             	cmp    %rbp,%rbx
  402fb4:	75 ea                	jne    402fa0 <__libc_csu_init+0x40>
  402fb6:	48 83 c4 08          	add    $0x8,%rsp
  402fba:	5b                   	pop    %rbx
  402fbb:	5d                   	pop    %rbp
  402fbc:	41 5c                	pop    %r12
  402fbe:	41 5d                	pop    %r13
  402fc0:	41 5e                	pop    %r14
  402fc2:	41 5f                	pop    %r15
  402fc4:	c3                   	retq   
  402fc5:	90                   	nop
  402fc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fcd:	00 00 00 

0000000000402fd0 <__libc_csu_fini>:
  402fd0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402fd4 <_fini>:
  402fd4:	48 83 ec 08          	sub    $0x8,%rsp
  402fd8:	48 83 c4 08          	add    $0x8,%rsp
  402fdc:	c3                   	retq   
