
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 33 20 00 	mov    0x2033a5(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 05                	je     400c5d <_init+0x15>
  400c58:	e8 43 02 00 00       	callq  400ea0 <socket@plt+0x10>
  400c5d:	48 83 c4 08          	add    $0x8,%rsp
  400c61:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <strcasecmp@plt-0x10>:
  400c70:	ff 35 92 33 20 00    	pushq  0x203392(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 33 20 00    	jmpq   *0x203394(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cf0 <__stack_chk_fail@plt>:
  400cf0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d00 <mmap@plt>:
  400d00:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d50 <__libc_start_main@plt>:
  400d50:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d60 <signal@plt>:
  400d60:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d70 <gethostbyname@plt>:
  400d70:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d80 <__memmove_chk@plt>:
  400d80:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d90 <strtol@plt>:
  400d90:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400db0 <time@plt>:
  400db0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e00 <__printf_chk@plt>:
  400e00:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e40 <gethostname@plt>:
  400e40:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e50 <exit@plt>:
  400e50:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 604100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e60 <connect@plt>:
  400e60:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 604108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e70 <__fprintf_chk@plt>:
  400e70:	ff 25 9a 32 20 00    	jmpq   *0x20329a(%rip)        # 604110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e76:	68 1f 00 00 00       	pushq  $0x1f
  400e7b:	e9 f0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e80 <__sprintf_chk@plt>:
  400e80:	ff 25 92 32 20 00    	jmpq   *0x203292(%rip)        # 604118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e86:	68 20 00 00 00       	pushq  $0x20
  400e8b:	e9 e0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 8a 32 20 00    	jmpq   *0x20328a(%rip)        # 604120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400e96:	68 21 00 00 00       	pushq  $0x21
  400e9b:	e9 d0 fd ff ff       	jmpq   400c70 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ea0 <.plt.got>:
  400ea0:	ff 25 52 31 20 00    	jmpq   *0x203152(%rip)        # 603ff8 <_DYNAMIC+0x1d0>
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
  400ebf:	49 c7 c0 b0 2e 40 00 	mov    $0x402eb0,%r8
  400ec6:	48 c7 c1 40 2e 40 00 	mov    $0x402e40,%rcx
  400ecd:	48 c7 c7 b5 11 40 00 	mov    $0x4011b5,%rdi
  400ed4:	e8 77 fe ff ff       	callq  400d50 <__libc_start_main@plt>
  400ed9:	f4                   	hlt    
  400eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ee0 <deregister_tm_clones>:
  400ee0:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400ee5:	55                   	push   %rbp
  400ee6:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400eec:	48 83 f8 0e          	cmp    $0xe,%rax
  400ef0:	48 89 e5             	mov    %rsp,%rbp
  400ef3:	76 1b                	jbe    400f10 <deregister_tm_clones+0x30>
  400ef5:	b8 00 00 00 00       	mov    $0x0,%eax
  400efa:	48 85 c0             	test   %rax,%rax
  400efd:	74 11                	je     400f10 <deregister_tm_clones+0x30>
  400eff:	5d                   	pop    %rbp
  400f00:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f05:	ff e0                	jmpq   *%rax
  400f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f0e:	00 00 
  400f10:	5d                   	pop    %rbp
  400f11:	c3                   	retq   
  400f12:	0f 1f 40 00          	nopl   0x0(%rax)
  400f16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f1d:	00 00 00 

0000000000400f20 <register_tm_clones>:
  400f20:	be b0 44 60 00       	mov    $0x6044b0,%esi
  400f25:	55                   	push   %rbp
  400f26:	48 81 ee b0 44 60 00 	sub    $0x6044b0,%rsi
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
  400f4e:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f53:	ff e0                	jmpq   *%rax
  400f55:	0f 1f 00             	nopl   (%rax)
  400f58:	5d                   	pop    %rbp
  400f59:	c3                   	retq   
  400f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 81 35 20 00 00 	cmpb   $0x0,0x203581(%rip)        # 6044e8 <completed.7594>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 6e ff ff ff       	callq  400ee0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 6e 35 20 00 01 	movb   $0x1,0x20356e(%rip)        # 6044e8 <completed.7594>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	bf 20 3e 60 00       	mov    $0x603e20,%edi
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
  400fad:	83 3d 74 35 20 00 00 	cmpl   $0x0,0x203574(%rip)        # 604528 <is_checker>
  400fb4:	74 3e                	je     400ff4 <usage+0x4e>
  400fb6:	be c8 2e 40 00       	mov    $0x402ec8,%esi
  400fbb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc5:	e8 36 fe ff ff       	callq  400e00 <__printf_chk@plt>
  400fca:	bf 00 2f 40 00       	mov    $0x402f00,%edi
  400fcf:	e8 fc fc ff ff       	callq  400cd0 <puts@plt>
  400fd4:	bf 78 30 40 00       	mov    $0x403078,%edi
  400fd9:	e8 f2 fc ff ff       	callq  400cd0 <puts@plt>
  400fde:	bf 28 2f 40 00       	mov    $0x402f28,%edi
  400fe3:	e8 e8 fc ff ff       	callq  400cd0 <puts@plt>
  400fe8:	bf 92 30 40 00       	mov    $0x403092,%edi
  400fed:	e8 de fc ff ff       	callq  400cd0 <puts@plt>
  400ff2:	eb 32                	jmp    401026 <usage+0x80>
  400ff4:	be ae 30 40 00       	mov    $0x4030ae,%esi
  400ff9:	bf 01 00 00 00       	mov    $0x1,%edi
  400ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  401003:	e8 f8 fd ff ff       	callq  400e00 <__printf_chk@plt>
  401008:	bf 50 2f 40 00       	mov    $0x402f50,%edi
  40100d:	e8 be fc ff ff       	callq  400cd0 <puts@plt>
  401012:	bf 78 2f 40 00       	mov    $0x402f78,%edi
  401017:	e8 b4 fc ff ff       	callq  400cd0 <puts@plt>
  40101c:	bf cc 30 40 00       	mov    $0x4030cc,%edi
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
  40104e:	89 3d c4 34 20 00    	mov    %edi,0x2034c4(%rip)        # 604518 <check_level>
  401054:	8b 3d 0e 31 20 00    	mov    0x20310e(%rip),%edi        # 604168 <target_id>
  40105a:	e8 bb 1d 00 00       	callq  402e1a <gencookie>
  40105f:	89 05 bf 34 20 00    	mov    %eax,0x2034bf(%rip)        # 604524 <cookie>
  401065:	89 c7                	mov    %eax,%edi
  401067:	e8 ae 1d 00 00       	callq  402e1a <gencookie>
  40106c:	89 05 ae 34 20 00    	mov    %eax,0x2034ae(%rip)        # 604520 <authkey>
  401072:	8b 05 f0 30 20 00    	mov    0x2030f0(%rip),%eax        # 604168 <target_id>
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
  4010bd:	48 89 05 dc 33 20 00 	mov    %rax,0x2033dc(%rip)        # 6044a0 <buf_offset>
  4010c4:	c6 05 7d 40 20 00 63 	movb   $0x63,0x20407d(%rip)        # 605148 <target_prefix>
  4010cb:	83 3d d6 33 20 00 00 	cmpl   $0x0,0x2033d6(%rip)        # 6044a8 <notify>
  4010d2:	0f 84 bb 00 00 00    	je     401193 <initialize_target+0x163>
  4010d8:	83 3d 49 34 20 00 00 	cmpl   $0x0,0x203449(%rip)        # 604528 <is_checker>
  4010df:	0f 85 ae 00 00 00    	jne    401193 <initialize_target+0x163>
  4010e5:	be 00 01 00 00       	mov    $0x100,%esi
  4010ea:	48 89 e7             	mov    %rsp,%rdi
  4010ed:	e8 4e fd ff ff       	callq  400e40 <gethostname@plt>
  4010f2:	85 c0                	test   %eax,%eax
  4010f4:	74 25                	je     40111b <initialize_target+0xeb>
  4010f6:	bf a8 2f 40 00       	mov    $0x402fa8,%edi
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
  401123:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  40112a:	00 
  40112b:	48 85 ff             	test   %rdi,%rdi
  40112e:	75 da                	jne    40110a <initialize_target+0xda>
  401130:	b8 00 00 00 00       	mov    $0x0,%eax
  401135:	eb 05                	jmp    40113c <initialize_target+0x10c>
  401137:	b8 01 00 00 00       	mov    $0x1,%eax
  40113c:	85 c0                	test   %eax,%eax
  40113e:	75 1c                	jne    40115c <initialize_target+0x12c>
  401140:	48 89 e2             	mov    %rsp,%rdx
  401143:	be e0 2f 40 00       	mov    $0x402fe0,%esi
  401148:	bf 01 00 00 00       	mov    $0x1,%edi
  40114d:	e8 ae fc ff ff       	callq  400e00 <__printf_chk@plt>
  401152:	bf 08 00 00 00       	mov    $0x8,%edi
  401157:	e8 f4 fc ff ff       	callq  400e50 <exit@plt>
  40115c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401163:	00 
  401164:	e8 1b 1a 00 00       	callq  402b84 <init_driver>
  401169:	85 c0                	test   %eax,%eax
  40116b:	79 26                	jns    401193 <initialize_target+0x163>
  40116d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401174:	00 
  401175:	be 20 30 40 00       	mov    $0x403020,%esi
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
  4011c3:	be bf 1e 40 00       	mov    $0x401ebf,%esi
  4011c8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011cd:	e8 8e fb ff ff       	callq  400d60 <signal@plt>
  4011d2:	be 71 1e 40 00       	mov    $0x401e71,%esi
  4011d7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011dc:	e8 7f fb ff ff       	callq  400d60 <signal@plt>
  4011e1:	be 0d 1f 40 00       	mov    $0x401f0d,%esi
  4011e6:	bf 04 00 00 00       	mov    $0x4,%edi
  4011eb:	e8 70 fb ff ff       	callq  400d60 <signal@plt>
  4011f0:	83 3d 31 33 20 00 00 	cmpl   $0x0,0x203331(%rip)        # 604528 <is_checker>
  4011f7:	74 20                	je     401219 <main+0x64>
  4011f9:	be 5b 1f 40 00       	mov    $0x401f5b,%esi
  4011fe:	bf 0e 00 00 00       	mov    $0xe,%edi
  401203:	e8 58 fb ff ff       	callq  400d60 <signal@plt>
  401208:	bf 05 00 00 00       	mov    $0x5,%edi
  40120d:	e8 0e fb ff ff       	callq  400d20 <alarm@plt>
  401212:	bd ea 30 40 00       	mov    $0x4030ea,%ebp
  401217:	eb 05                	jmp    40121e <main+0x69>
  401219:	bd e5 30 40 00       	mov    $0x4030e5,%ebp
  40121e:	48 8b 05 9b 32 20 00 	mov    0x20329b(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401225:	48 89 05 e4 32 20 00 	mov    %rax,0x2032e4(%rip)        # 604510 <infile>
  40122c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401232:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401238:	e9 c6 00 00 00       	jmpq   401303 <main+0x14e>
  40123d:	83 e8 61             	sub    $0x61,%eax
  401240:	3c 10                	cmp    $0x10,%al
  401242:	0f 87 9c 00 00 00    	ja     4012e4 <main+0x12f>
  401248:	0f b6 c0             	movzbl %al,%eax
  40124b:	ff 24 c5 30 31 40 00 	jmpq   *0x403130(,%rax,8)
  401252:	48 8b 3b             	mov    (%rbx),%rdi
  401255:	e8 4c fd ff ff       	callq  400fa6 <usage>
  40125a:	be 95 33 40 00       	mov    $0x403395,%esi
  40125f:	48 8b 3d 62 32 20 00 	mov    0x203262(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  401266:	e8 a5 fb ff ff       	callq  400e10 <fopen@plt>
  40126b:	48 89 05 9e 32 20 00 	mov    %rax,0x20329e(%rip)        # 604510 <infile>
  401272:	48 85 c0             	test   %rax,%rax
  401275:	0f 85 88 00 00 00    	jne    401303 <main+0x14e>
  40127b:	48 8b 0d 46 32 20 00 	mov    0x203246(%rip),%rcx        # 6044c8 <optarg@@GLIBC_2.2.5>
  401282:	ba f2 30 40 00       	mov    $0x4030f2,%edx
  401287:	be 01 00 00 00       	mov    $0x1,%esi
  40128c:	48 8b 3d 4d 32 20 00 	mov    0x20324d(%rip),%rdi        # 6044e0 <stderr@@GLIBC_2.2.5>
  401293:	e8 d8 fb ff ff       	callq  400e70 <__fprintf_chk@plt>
  401298:	b8 01 00 00 00       	mov    $0x1,%eax
  40129d:	e9 e4 00 00 00       	jmpq   401386 <main+0x1d1>
  4012a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012a7:	be 00 00 00 00       	mov    $0x0,%esi
  4012ac:	48 8b 3d 15 32 20 00 	mov    0x203215(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4012b3:	e8 78 fb ff ff       	callq  400e30 <strtoul@plt>
  4012b8:	41 89 c6             	mov    %eax,%r14d
  4012bb:	eb 46                	jmp    401303 <main+0x14e>
  4012bd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012c2:	be 00 00 00 00       	mov    $0x0,%esi
  4012c7:	48 8b 3d fa 31 20 00 	mov    0x2031fa(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4012ce:	e8 bd fa ff ff       	callq  400d90 <strtol@plt>
  4012d3:	41 89 c5             	mov    %eax,%r13d
  4012d6:	eb 2b                	jmp    401303 <main+0x14e>
  4012d8:	c7 05 c6 31 20 00 00 	movl   $0x0,0x2031c6(%rip)        # 6044a8 <notify>
  4012df:	00 00 00 
  4012e2:	eb 1f                	jmp    401303 <main+0x14e>
  4012e4:	0f be d2             	movsbl %dl,%edx
  4012e7:	be 0f 31 40 00       	mov    $0x40310f,%esi
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
  40131b:	be 00 00 00 00       	mov    $0x0,%esi
  401320:	44 89 ef             	mov    %r13d,%edi
  401323:	e8 08 fd ff ff       	callq  401030 <initialize_target>
  401328:	83 3d f9 31 20 00 00 	cmpl   $0x0,0x2031f9(%rip)        # 604528 <is_checker>
  40132f:	74 2a                	je     40135b <main+0x1a6>
  401331:	44 3b 35 e8 31 20 00 	cmp    0x2031e8(%rip),%r14d        # 604520 <authkey>
  401338:	74 21                	je     40135b <main+0x1a6>
  40133a:	44 89 f2             	mov    %r14d,%edx
  40133d:	be 48 30 40 00       	mov    $0x403048,%esi
  401342:	bf 01 00 00 00       	mov    $0x1,%edi
  401347:	b8 00 00 00 00       	mov    $0x0,%eax
  40134c:	e8 af fa ff ff       	callq  400e00 <__printf_chk@plt>
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 b2 07 00 00       	callq  401b0d <check_fail>
  40135b:	8b 15 c3 31 20 00    	mov    0x2031c3(%rip),%edx        # 604524 <cookie>
  401361:	be 22 31 40 00       	mov    $0x403122,%esi
  401366:	bf 01 00 00 00       	mov    $0x1,%edi
  40136b:	b8 00 00 00 00       	mov    $0x0,%eax
  401370:	e8 8b fa ff ff       	callq  400e00 <__printf_chk@plt>
  401375:	48 8b 3d 24 31 20 00 	mov    0x203124(%rip),%rdi        # 6044a0 <buf_offset>
  40137c:	e8 da 0c 00 00       	callq  40205b <stable_launch>
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
  4018bf:	e8 7e 02 00 00       	callq  401b42 <Gets>
  4018c4:	b8 01 00 00 00       	mov    $0x1,%eax
  4018c9:	48 83 c4 28          	add    $0x28,%rsp
  4018cd:	c3                   	retq   

00000000004018ce <touch1>:
  4018ce:	48 83 ec 08          	sub    $0x8,%rsp
  4018d2:	c7 05 40 2c 20 00 01 	movl   $0x1,0x202c40(%rip)        # 60451c <vlevel>
  4018d9:	00 00 00 
  4018dc:	bf e8 31 40 00       	mov    $0x4031e8,%edi
  4018e1:	e8 ea f3 ff ff       	callq  400cd0 <puts@plt>
  4018e6:	bf 01 00 00 00       	mov    $0x1,%edi
  4018eb:	e8 97 04 00 00       	callq  401d87 <validate>
  4018f0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018f5:	e8 56 f5 ff ff       	callq  400e50 <exit@plt>

00000000004018fa <touch2>:
  4018fa:	48 83 ec 08          	sub    $0x8,%rsp
  4018fe:	89 fa                	mov    %edi,%edx
  401900:	c7 05 12 2c 20 00 02 	movl   $0x2,0x202c12(%rip)        # 60451c <vlevel>
  401907:	00 00 00 
  40190a:	39 3d 14 2c 20 00    	cmp    %edi,0x202c14(%rip)        # 604524 <cookie>
  401910:	75 20                	jne    401932 <touch2+0x38>
  401912:	be 10 32 40 00       	mov    $0x403210,%esi
  401917:	bf 01 00 00 00       	mov    $0x1,%edi
  40191c:	b8 00 00 00 00       	mov    $0x0,%eax
  401921:	e8 da f4 ff ff       	callq  400e00 <__printf_chk@plt>
  401926:	bf 02 00 00 00       	mov    $0x2,%edi
  40192b:	e8 57 04 00 00       	callq  401d87 <validate>
  401930:	eb 1e                	jmp    401950 <touch2+0x56>
  401932:	be 38 32 40 00       	mov    $0x403238,%esi
  401937:	bf 01 00 00 00       	mov    $0x1,%edi
  40193c:	b8 00 00 00 00       	mov    $0x0,%eax
  401941:	e8 ba f4 ff ff       	callq  400e00 <__printf_chk@plt>
  401946:	bf 02 00 00 00       	mov    $0x2,%edi
  40194b:	e8 f9 04 00 00       	callq  401e49 <fail>
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
  4019b7:	b9 05 32 40 00       	mov    $0x403205,%ecx
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
  401a0f:	c7 05 03 2b 20 00 03 	movl   $0x3,0x202b03(%rip)        # 60451c <vlevel>
  401a16:	00 00 00 
  401a19:	48 89 fe             	mov    %rdi,%rsi
  401a1c:	8b 3d 02 2b 20 00    	mov    0x202b02(%rip),%edi        # 604524 <cookie>
  401a22:	e8 33 ff ff ff       	callq  40195a <hexmatch>
  401a27:	85 c0                	test   %eax,%eax
  401a29:	74 23                	je     401a4e <touch3+0x43>
  401a2b:	48 89 da             	mov    %rbx,%rdx
  401a2e:	be 60 32 40 00       	mov    $0x403260,%esi
  401a33:	bf 01 00 00 00       	mov    $0x1,%edi
  401a38:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3d:	e8 be f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a42:	bf 03 00 00 00       	mov    $0x3,%edi
  401a47:	e8 3b 03 00 00       	callq  401d87 <validate>
  401a4c:	eb 21                	jmp    401a6f <touch3+0x64>
  401a4e:	48 89 da             	mov    %rbx,%rdx
  401a51:	be 88 32 40 00       	mov    $0x403288,%esi
  401a56:	bf 01 00 00 00       	mov    $0x1,%edi
  401a5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a60:	e8 9b f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a65:	bf 03 00 00 00       	mov    $0x3,%edi
  401a6a:	e8 da 03 00 00       	callq  401e49 <fail>
  401a6f:	bf 00 00 00 00       	mov    $0x0,%edi
  401a74:	e8 d7 f3 ff ff       	callq  400e50 <exit@plt>

0000000000401a79 <test>:
  401a79:	48 83 ec 08          	sub    $0x8,%rsp
  401a7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a82:	e8 31 fe ff ff       	callq  4018b8 <getbuf>
  401a87:	89 c2                	mov    %eax,%edx
  401a89:	be b0 32 40 00       	mov    $0x4032b0,%esi
  401a8e:	bf 01 00 00 00       	mov    $0x1,%edi
  401a93:	b8 00 00 00 00       	mov    $0x0,%eax
  401a98:	e8 63 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401a9d:	48 83 c4 08          	add    $0x8,%rsp
  401aa1:	c3                   	retq   

0000000000401aa2 <save_char>:
  401aa2:	8b 05 9c 36 20 00    	mov    0x20369c(%rip),%eax        # 605144 <gets_cnt>
  401aa8:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401aad:	7f 49                	jg     401af8 <save_char+0x56>
  401aaf:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401ab2:	89 f9                	mov    %edi,%ecx
  401ab4:	c0 e9 04             	shr    $0x4,%cl
  401ab7:	83 e1 0f             	and    $0xf,%ecx
  401aba:	0f b6 b1 d0 35 40 00 	movzbl 0x4035d0(%rcx),%esi
  401ac1:	48 63 ca             	movslq %edx,%rcx
  401ac4:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401acb:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401ace:	83 e7 0f             	and    $0xf,%edi
  401ad1:	0f b6 b7 d0 35 40 00 	movzbl 0x4035d0(%rdi),%esi
  401ad8:	48 63 c9             	movslq %ecx,%rcx
  401adb:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401ae2:	83 c2 02             	add    $0x2,%edx
  401ae5:	48 63 d2             	movslq %edx,%rdx
  401ae8:	c6 82 40 45 60 00 20 	movb   $0x20,0x604540(%rdx)
  401aef:	83 c0 01             	add    $0x1,%eax
  401af2:	89 05 4c 36 20 00    	mov    %eax,0x20364c(%rip)        # 605144 <gets_cnt>
  401af8:	f3 c3                	repz retq 

0000000000401afa <save_term>:
  401afa:	8b 05 44 36 20 00    	mov    0x203644(%rip),%eax        # 605144 <gets_cnt>
  401b00:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b03:	48 98                	cltq   
  401b05:	c6 80 40 45 60 00 00 	movb   $0x0,0x604540(%rax)
  401b0c:	c3                   	retq   

0000000000401b0d <check_fail>:
  401b0d:	48 83 ec 08          	sub    $0x8,%rsp
  401b11:	0f be 15 30 36 20 00 	movsbl 0x203630(%rip),%edx        # 605148 <target_prefix>
  401b18:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401b1e:	8b 0d f4 29 20 00    	mov    0x2029f4(%rip),%ecx        # 604518 <check_level>
  401b24:	be d3 32 40 00       	mov    $0x4032d3,%esi
  401b29:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b33:	e8 c8 f2 ff ff       	callq  400e00 <__printf_chk@plt>
  401b38:	bf 01 00 00 00       	mov    $0x1,%edi
  401b3d:	e8 0e f3 ff ff       	callq  400e50 <exit@plt>

0000000000401b42 <Gets>:
  401b42:	41 54                	push   %r12
  401b44:	55                   	push   %rbp
  401b45:	53                   	push   %rbx
  401b46:	49 89 fc             	mov    %rdi,%r12
  401b49:	c7 05 f1 35 20 00 00 	movl   $0x0,0x2035f1(%rip)        # 605144 <gets_cnt>
  401b50:	00 00 00 
  401b53:	48 89 fb             	mov    %rdi,%rbx
  401b56:	eb 11                	jmp    401b69 <Gets+0x27>
  401b58:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b5c:	88 03                	mov    %al,(%rbx)
  401b5e:	0f b6 f8             	movzbl %al,%edi
  401b61:	e8 3c ff ff ff       	callq  401aa2 <save_char>
  401b66:	48 89 eb             	mov    %rbp,%rbx
  401b69:	48 8b 3d a0 29 20 00 	mov    0x2029a0(%rip),%rdi        # 604510 <infile>
  401b70:	e8 5b f2 ff ff       	callq  400dd0 <_IO_getc@plt>
  401b75:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b78:	74 05                	je     401b7f <Gets+0x3d>
  401b7a:	83 f8 0a             	cmp    $0xa,%eax
  401b7d:	75 d9                	jne    401b58 <Gets+0x16>
  401b7f:	c6 03 00             	movb   $0x0,(%rbx)
  401b82:	b8 00 00 00 00       	mov    $0x0,%eax
  401b87:	e8 6e ff ff ff       	callq  401afa <save_term>
  401b8c:	4c 89 e0             	mov    %r12,%rax
  401b8f:	5b                   	pop    %rbx
  401b90:	5d                   	pop    %rbp
  401b91:	41 5c                	pop    %r12
  401b93:	c3                   	retq   

0000000000401b94 <notify_server>:
  401b94:	53                   	push   %rbx
  401b95:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401b9c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ba3:	00 00 
  401ba5:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401bac:	00 
  401bad:	31 c0                	xor    %eax,%eax
  401baf:	83 3d 72 29 20 00 00 	cmpl   $0x0,0x202972(%rip)        # 604528 <is_checker>
  401bb6:	0f 85 aa 01 00 00    	jne    401d66 <notify_server+0x1d2>
  401bbc:	89 fb                	mov    %edi,%ebx
  401bbe:	8b 05 80 35 20 00    	mov    0x203580(%rip),%eax        # 605144 <gets_cnt>
  401bc4:	83 c0 64             	add    $0x64,%eax
  401bc7:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401bcc:	7e 1e                	jle    401bec <notify_server+0x58>
  401bce:	be 08 34 40 00       	mov    $0x403408,%esi
  401bd3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bdd:	e8 1e f2 ff ff       	callq  400e00 <__printf_chk@plt>
  401be2:	bf 01 00 00 00       	mov    $0x1,%edi
  401be7:	e8 64 f2 ff ff       	callq  400e50 <exit@plt>
  401bec:	0f be 05 55 35 20 00 	movsbl 0x203555(%rip),%eax        # 605148 <target_prefix>
  401bf3:	83 3d ae 28 20 00 00 	cmpl   $0x0,0x2028ae(%rip)        # 6044a8 <notify>
  401bfa:	74 08                	je     401c04 <notify_server+0x70>
  401bfc:	8b 15 1e 29 20 00    	mov    0x20291e(%rip),%edx        # 604520 <authkey>
  401c02:	eb 05                	jmp    401c09 <notify_server+0x75>
  401c04:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401c09:	85 db                	test   %ebx,%ebx
  401c0b:	74 08                	je     401c15 <notify_server+0x81>
  401c0d:	41 b9 e9 32 40 00    	mov    $0x4032e9,%r9d
  401c13:	eb 06                	jmp    401c1b <notify_server+0x87>
  401c15:	41 b9 ee 32 40 00    	mov    $0x4032ee,%r9d
  401c1b:	68 40 45 60 00       	pushq  $0x604540
  401c20:	56                   	push   %rsi
  401c21:	50                   	push   %rax
  401c22:	52                   	push   %rdx
  401c23:	44 8b 05 3e 25 20 00 	mov    0x20253e(%rip),%r8d        # 604168 <target_id>
  401c2a:	b9 f3 32 40 00       	mov    $0x4032f3,%ecx
  401c2f:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c34:	be 01 00 00 00       	mov    $0x1,%esi
  401c39:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401c3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c43:	e8 38 f2 ff ff       	callq  400e80 <__sprintf_chk@plt>
  401c48:	48 83 c4 20          	add    $0x20,%rsp
  401c4c:	83 3d 55 28 20 00 00 	cmpl   $0x0,0x202855(%rip)        # 6044a8 <notify>
  401c53:	0f 84 81 00 00 00    	je     401cda <notify_server+0x146>
  401c59:	85 db                	test   %ebx,%ebx
  401c5b:	74 6e                	je     401ccb <notify_server+0x137>
  401c5d:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401c64:	00 
  401c65:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c6b:	48 89 e1             	mov    %rsp,%rcx
  401c6e:	48 8b 15 fb 24 20 00 	mov    0x2024fb(%rip),%rdx        # 604170 <lab>
  401c75:	48 8b 35 fc 24 20 00 	mov    0x2024fc(%rip),%rsi        # 604178 <course>
  401c7c:	48 8b 3d dd 24 20 00 	mov    0x2024dd(%rip),%rdi        # 604160 <user_id>
  401c83:	e8 ef 10 00 00       	callq  402d77 <driver_post>
  401c88:	85 c0                	test   %eax,%eax
  401c8a:	79 26                	jns    401cb2 <notify_server+0x11e>
  401c8c:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401c93:	00 
  401c94:	be 0f 33 40 00       	mov    $0x40330f,%esi
  401c99:	bf 01 00 00 00       	mov    $0x1,%edi
  401c9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca3:	e8 58 f1 ff ff       	callq  400e00 <__printf_chk@plt>
  401ca8:	bf 01 00 00 00       	mov    $0x1,%edi
  401cad:	e8 9e f1 ff ff       	callq  400e50 <exit@plt>
  401cb2:	bf 38 34 40 00       	mov    $0x403438,%edi
  401cb7:	e8 14 f0 ff ff       	callq  400cd0 <puts@plt>
  401cbc:	bf 1b 33 40 00       	mov    $0x40331b,%edi
  401cc1:	e8 0a f0 ff ff       	callq  400cd0 <puts@plt>
  401cc6:	e9 9b 00 00 00       	jmpq   401d66 <notify_server+0x1d2>
  401ccb:	bf 25 33 40 00       	mov    $0x403325,%edi
  401cd0:	e8 fb ef ff ff       	callq  400cd0 <puts@plt>
  401cd5:	e9 8c 00 00 00       	jmpq   401d66 <notify_server+0x1d2>
  401cda:	85 db                	test   %ebx,%ebx
  401cdc:	74 07                	je     401ce5 <notify_server+0x151>
  401cde:	ba e9 32 40 00       	mov    $0x4032e9,%edx
  401ce3:	eb 05                	jmp    401cea <notify_server+0x156>
  401ce5:	ba ee 32 40 00       	mov    $0x4032ee,%edx
  401cea:	be 70 34 40 00       	mov    $0x403470,%esi
  401cef:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf4:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf9:	e8 02 f1 ff ff       	callq  400e00 <__printf_chk@plt>
  401cfe:	48 8b 15 5b 24 20 00 	mov    0x20245b(%rip),%rdx        # 604160 <user_id>
  401d05:	be 2c 33 40 00       	mov    $0x40332c,%esi
  401d0a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d0f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d14:	e8 e7 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d19:	48 8b 15 58 24 20 00 	mov    0x202458(%rip),%rdx        # 604178 <course>
  401d20:	be 39 33 40 00       	mov    $0x403339,%esi
  401d25:	bf 01 00 00 00       	mov    $0x1,%edi
  401d2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2f:	e8 cc f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d34:	48 8b 15 35 24 20 00 	mov    0x202435(%rip),%rdx        # 604170 <lab>
  401d3b:	be 45 33 40 00       	mov    $0x403345,%esi
  401d40:	bf 01 00 00 00       	mov    $0x1,%edi
  401d45:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4a:	e8 b1 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d4f:	48 89 e2             	mov    %rsp,%rdx
  401d52:	be 4e 33 40 00       	mov    $0x40334e,%esi
  401d57:	bf 01 00 00 00       	mov    $0x1,%edi
  401d5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d61:	e8 9a f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d66:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401d6d:	00 
  401d6e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d75:	00 00 
  401d77:	74 05                	je     401d7e <notify_server+0x1ea>
  401d79:	e8 72 ef ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  401d7e:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401d85:	5b                   	pop    %rbx
  401d86:	c3                   	retq   

0000000000401d87 <validate>:
  401d87:	53                   	push   %rbx
  401d88:	89 fb                	mov    %edi,%ebx
  401d8a:	83 3d 97 27 20 00 00 	cmpl   $0x0,0x202797(%rip)        # 604528 <is_checker>
  401d91:	74 6b                	je     401dfe <validate+0x77>
  401d93:	39 3d 83 27 20 00    	cmp    %edi,0x202783(%rip)        # 60451c <vlevel>
  401d99:	74 14                	je     401daf <validate+0x28>
  401d9b:	bf 5a 33 40 00       	mov    $0x40335a,%edi
  401da0:	e8 2b ef ff ff       	callq  400cd0 <puts@plt>
  401da5:	b8 00 00 00 00       	mov    $0x0,%eax
  401daa:	e8 5e fd ff ff       	callq  401b0d <check_fail>
  401daf:	8b 15 63 27 20 00    	mov    0x202763(%rip),%edx        # 604518 <check_level>
  401db5:	39 d7                	cmp    %edx,%edi
  401db7:	74 20                	je     401dd9 <validate+0x52>
  401db9:	89 f9                	mov    %edi,%ecx
  401dbb:	be 98 34 40 00       	mov    $0x403498,%esi
  401dc0:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dca:	e8 31 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401dcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd4:	e8 34 fd ff ff       	callq  401b0d <check_fail>
  401dd9:	0f be 15 68 33 20 00 	movsbl 0x203368(%rip),%edx        # 605148 <target_prefix>
  401de0:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401de6:	89 f9                	mov    %edi,%ecx
  401de8:	be 78 33 40 00       	mov    $0x403378,%esi
  401ded:	bf 01 00 00 00       	mov    $0x1,%edi
  401df2:	b8 00 00 00 00       	mov    $0x0,%eax
  401df7:	e8 04 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401dfc:	eb 49                	jmp    401e47 <validate+0xc0>
  401dfe:	3b 3d 18 27 20 00    	cmp    0x202718(%rip),%edi        # 60451c <vlevel>
  401e04:	74 18                	je     401e1e <validate+0x97>
  401e06:	bf 5a 33 40 00       	mov    $0x40335a,%edi
  401e0b:	e8 c0 ee ff ff       	callq  400cd0 <puts@plt>
  401e10:	89 de                	mov    %ebx,%esi
  401e12:	bf 00 00 00 00       	mov    $0x0,%edi
  401e17:	e8 78 fd ff ff       	callq  401b94 <notify_server>
  401e1c:	eb 29                	jmp    401e47 <validate+0xc0>
  401e1e:	0f be 0d 23 33 20 00 	movsbl 0x203323(%rip),%ecx        # 605148 <target_prefix>
  401e25:	89 fa                	mov    %edi,%edx
  401e27:	be c0 34 40 00       	mov    $0x4034c0,%esi
  401e2c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e31:	b8 00 00 00 00       	mov    $0x0,%eax
  401e36:	e8 c5 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e3b:	89 de                	mov    %ebx,%esi
  401e3d:	bf 01 00 00 00       	mov    $0x1,%edi
  401e42:	e8 4d fd ff ff       	callq  401b94 <notify_server>
  401e47:	5b                   	pop    %rbx
  401e48:	c3                   	retq   

0000000000401e49 <fail>:
  401e49:	48 83 ec 08          	sub    $0x8,%rsp
  401e4d:	83 3d d4 26 20 00 00 	cmpl   $0x0,0x2026d4(%rip)        # 604528 <is_checker>
  401e54:	74 0a                	je     401e60 <fail+0x17>
  401e56:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5b:	e8 ad fc ff ff       	callq  401b0d <check_fail>
  401e60:	89 fe                	mov    %edi,%esi
  401e62:	bf 00 00 00 00       	mov    $0x0,%edi
  401e67:	e8 28 fd ff ff       	callq  401b94 <notify_server>
  401e6c:	48 83 c4 08          	add    $0x8,%rsp
  401e70:	c3                   	retq   

0000000000401e71 <bushandler>:
  401e71:	48 83 ec 08          	sub    $0x8,%rsp
  401e75:	83 3d ac 26 20 00 00 	cmpl   $0x0,0x2026ac(%rip)        # 604528 <is_checker>
  401e7c:	74 14                	je     401e92 <bushandler+0x21>
  401e7e:	bf 8d 33 40 00       	mov    $0x40338d,%edi
  401e83:	e8 48 ee ff ff       	callq  400cd0 <puts@plt>
  401e88:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8d:	e8 7b fc ff ff       	callq  401b0d <check_fail>
  401e92:	bf f8 34 40 00       	mov    $0x4034f8,%edi
  401e97:	e8 34 ee ff ff       	callq  400cd0 <puts@plt>
  401e9c:	bf 97 33 40 00       	mov    $0x403397,%edi
  401ea1:	e8 2a ee ff ff       	callq  400cd0 <puts@plt>
  401ea6:	be 00 00 00 00       	mov    $0x0,%esi
  401eab:	bf 00 00 00 00       	mov    $0x0,%edi
  401eb0:	e8 df fc ff ff       	callq  401b94 <notify_server>
  401eb5:	bf 01 00 00 00       	mov    $0x1,%edi
  401eba:	e8 91 ef ff ff       	callq  400e50 <exit@plt>

0000000000401ebf <seghandler>:
  401ebf:	48 83 ec 08          	sub    $0x8,%rsp
  401ec3:	83 3d 5e 26 20 00 00 	cmpl   $0x0,0x20265e(%rip)        # 604528 <is_checker>
  401eca:	74 14                	je     401ee0 <seghandler+0x21>
  401ecc:	bf ad 33 40 00       	mov    $0x4033ad,%edi
  401ed1:	e8 fa ed ff ff       	callq  400cd0 <puts@plt>
  401ed6:	b8 00 00 00 00       	mov    $0x0,%eax
  401edb:	e8 2d fc ff ff       	callq  401b0d <check_fail>
  401ee0:	bf 18 35 40 00       	mov    $0x403518,%edi
  401ee5:	e8 e6 ed ff ff       	callq  400cd0 <puts@plt>
  401eea:	bf 97 33 40 00       	mov    $0x403397,%edi
  401eef:	e8 dc ed ff ff       	callq  400cd0 <puts@plt>
  401ef4:	be 00 00 00 00       	mov    $0x0,%esi
  401ef9:	bf 00 00 00 00       	mov    $0x0,%edi
  401efe:	e8 91 fc ff ff       	callq  401b94 <notify_server>
  401f03:	bf 01 00 00 00       	mov    $0x1,%edi
  401f08:	e8 43 ef ff ff       	callq  400e50 <exit@plt>

0000000000401f0d <illegalhandler>:
  401f0d:	48 83 ec 08          	sub    $0x8,%rsp
  401f11:	83 3d 10 26 20 00 00 	cmpl   $0x0,0x202610(%rip)        # 604528 <is_checker>
  401f18:	74 14                	je     401f2e <illegalhandler+0x21>
  401f1a:	bf c0 33 40 00       	mov    $0x4033c0,%edi
  401f1f:	e8 ac ed ff ff       	callq  400cd0 <puts@plt>
  401f24:	b8 00 00 00 00       	mov    $0x0,%eax
  401f29:	e8 df fb ff ff       	callq  401b0d <check_fail>
  401f2e:	bf 40 35 40 00       	mov    $0x403540,%edi
  401f33:	e8 98 ed ff ff       	callq  400cd0 <puts@plt>
  401f38:	bf 97 33 40 00       	mov    $0x403397,%edi
  401f3d:	e8 8e ed ff ff       	callq  400cd0 <puts@plt>
  401f42:	be 00 00 00 00       	mov    $0x0,%esi
  401f47:	bf 00 00 00 00       	mov    $0x0,%edi
  401f4c:	e8 43 fc ff ff       	callq  401b94 <notify_server>
  401f51:	bf 01 00 00 00       	mov    $0x1,%edi
  401f56:	e8 f5 ee ff ff       	callq  400e50 <exit@plt>

0000000000401f5b <sigalrmhandler>:
  401f5b:	48 83 ec 08          	sub    $0x8,%rsp
  401f5f:	83 3d c2 25 20 00 00 	cmpl   $0x0,0x2025c2(%rip)        # 604528 <is_checker>
  401f66:	74 14                	je     401f7c <sigalrmhandler+0x21>
  401f68:	bf d4 33 40 00       	mov    $0x4033d4,%edi
  401f6d:	e8 5e ed ff ff       	callq  400cd0 <puts@plt>
  401f72:	b8 00 00 00 00       	mov    $0x0,%eax
  401f77:	e8 91 fb ff ff       	callq  401b0d <check_fail>
  401f7c:	ba 05 00 00 00       	mov    $0x5,%edx
  401f81:	be 70 35 40 00       	mov    $0x403570,%esi
  401f86:	bf 01 00 00 00       	mov    $0x1,%edi
  401f8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f90:	e8 6b ee ff ff       	callq  400e00 <__printf_chk@plt>
  401f95:	be 00 00 00 00       	mov    $0x0,%esi
  401f9a:	bf 00 00 00 00       	mov    $0x0,%edi
  401f9f:	e8 f0 fb ff ff       	callq  401b94 <notify_server>
  401fa4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa9:	e8 a2 ee ff ff       	callq  400e50 <exit@plt>

0000000000401fae <launch>:
  401fae:	55                   	push   %rbp
  401faf:	48 89 e5             	mov    %rsp,%rbp
  401fb2:	48 83 ec 10          	sub    $0x10,%rsp
  401fb6:	48 89 fa             	mov    %rdi,%rdx
  401fb9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fc0:	00 00 
  401fc2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fc6:	31 c0                	xor    %eax,%eax
  401fc8:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401fcc:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401fd0:	48 29 c4             	sub    %rax,%rsp
  401fd3:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401fd8:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401fdc:	be f4 00 00 00       	mov    $0xf4,%esi
  401fe1:	e8 2a ed ff ff       	callq  400d10 <memset@plt>
  401fe6:	48 8b 05 d3 24 20 00 	mov    0x2024d3(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401fed:	48 39 05 1c 25 20 00 	cmp    %rax,0x20251c(%rip)        # 604510 <infile>
  401ff4:	75 14                	jne    40200a <launch+0x5c>
  401ff6:	be dc 33 40 00       	mov    $0x4033dc,%esi
  401ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  402000:	b8 00 00 00 00       	mov    $0x0,%eax
  402005:	e8 f6 ed ff ff       	callq  400e00 <__printf_chk@plt>
  40200a:	c7 05 08 25 20 00 00 	movl   $0x0,0x202508(%rip)        # 60451c <vlevel>
  402011:	00 00 00 
  402014:	b8 00 00 00 00       	mov    $0x0,%eax
  402019:	e8 5b fa ff ff       	callq  401a79 <test>
  40201e:	83 3d 03 25 20 00 00 	cmpl   $0x0,0x202503(%rip)        # 604528 <is_checker>
  402025:	74 14                	je     40203b <launch+0x8d>
  402027:	bf e9 33 40 00       	mov    $0x4033e9,%edi
  40202c:	e8 9f ec ff ff       	callq  400cd0 <puts@plt>
  402031:	b8 00 00 00 00       	mov    $0x0,%eax
  402036:	e8 d2 fa ff ff       	callq  401b0d <check_fail>
  40203b:	bf f4 33 40 00       	mov    $0x4033f4,%edi
  402040:	e8 8b ec ff ff       	callq  400cd0 <puts@plt>
  402045:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402049:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402050:	00 00 
  402052:	74 05                	je     402059 <launch+0xab>
  402054:	e8 97 ec ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402059:	c9                   	leaveq 
  40205a:	c3                   	retq   

000000000040205b <stable_launch>:
  40205b:	53                   	push   %rbx
  40205c:	48 89 3d a5 24 20 00 	mov    %rdi,0x2024a5(%rip)        # 604508 <global_offset>
  402063:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402069:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40206f:	b9 32 01 00 00       	mov    $0x132,%ecx
  402074:	ba 07 00 00 00       	mov    $0x7,%edx
  402079:	be 00 00 10 00       	mov    $0x100000,%esi
  40207e:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402083:	e8 78 ec ff ff       	callq  400d00 <mmap@plt>
  402088:	48 89 c3             	mov    %rax,%rbx
  40208b:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402091:	74 37                	je     4020ca <stable_launch+0x6f>
  402093:	be 00 00 10 00       	mov    $0x100000,%esi
  402098:	48 89 c7             	mov    %rax,%rdi
  40209b:	e8 50 ed ff ff       	callq  400df0 <munmap@plt>
  4020a0:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4020a5:	ba a8 35 40 00       	mov    $0x4035a8,%edx
  4020aa:	be 01 00 00 00       	mov    $0x1,%esi
  4020af:	48 8b 3d 2a 24 20 00 	mov    0x20242a(%rip),%rdi        # 6044e0 <stderr@@GLIBC_2.2.5>
  4020b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020bb:	e8 b0 ed ff ff       	callq  400e70 <__fprintf_chk@plt>
  4020c0:	bf 01 00 00 00       	mov    $0x1,%edi
  4020c5:	e8 86 ed ff ff       	callq  400e50 <exit@plt>
  4020ca:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4020d1:	48 89 15 78 30 20 00 	mov    %rdx,0x203078(%rip)        # 605150 <stack_top>
  4020d8:	48 89 e0             	mov    %rsp,%rax
  4020db:	48 89 d4             	mov    %rdx,%rsp
  4020de:	48 89 c2             	mov    %rax,%rdx
  4020e1:	48 89 15 18 24 20 00 	mov    %rdx,0x202418(%rip)        # 604500 <global_save_stack>
  4020e8:	48 8b 3d 19 24 20 00 	mov    0x202419(%rip),%rdi        # 604508 <global_offset>
  4020ef:	e8 ba fe ff ff       	callq  401fae <launch>
  4020f4:	48 8b 05 05 24 20 00 	mov    0x202405(%rip),%rax        # 604500 <global_save_stack>
  4020fb:	48 89 c4             	mov    %rax,%rsp
  4020fe:	be 00 00 10 00       	mov    $0x100000,%esi
  402103:	48 89 df             	mov    %rbx,%rdi
  402106:	e8 e5 ec ff ff       	callq  400df0 <munmap@plt>
  40210b:	5b                   	pop    %rbx
  40210c:	c3                   	retq   

000000000040210d <rio_readinitb>:
  40210d:	89 37                	mov    %esi,(%rdi)
  40210f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402116:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40211a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40211e:	c3                   	retq   

000000000040211f <sigalrm_handler>:
  40211f:	48 83 ec 08          	sub    $0x8,%rsp
  402123:	b9 00 00 00 00       	mov    $0x0,%ecx
  402128:	ba e0 35 40 00       	mov    $0x4035e0,%edx
  40212d:	be 01 00 00 00       	mov    $0x1,%esi
  402132:	48 8b 3d a7 23 20 00 	mov    0x2023a7(%rip),%rdi        # 6044e0 <stderr@@GLIBC_2.2.5>
  402139:	b8 00 00 00 00       	mov    $0x0,%eax
  40213e:	e8 2d ed ff ff       	callq  400e70 <__fprintf_chk@plt>
  402143:	bf 01 00 00 00       	mov    $0x1,%edi
  402148:	e8 03 ed ff ff       	callq  400e50 <exit@plt>

000000000040214d <rio_writen>:
  40214d:	41 55                	push   %r13
  40214f:	41 54                	push   %r12
  402151:	55                   	push   %rbp
  402152:	53                   	push   %rbx
  402153:	48 83 ec 08          	sub    $0x8,%rsp
  402157:	41 89 fc             	mov    %edi,%r12d
  40215a:	48 89 f5             	mov    %rsi,%rbp
  40215d:	49 89 d5             	mov    %rdx,%r13
  402160:	48 89 d3             	mov    %rdx,%rbx
  402163:	eb 28                	jmp    40218d <rio_writen+0x40>
  402165:	48 89 da             	mov    %rbx,%rdx
  402168:	48 89 ee             	mov    %rbp,%rsi
  40216b:	44 89 e7             	mov    %r12d,%edi
  40216e:	e8 6d eb ff ff       	callq  400ce0 <write@plt>
  402173:	48 85 c0             	test   %rax,%rax
  402176:	7f 0f                	jg     402187 <rio_writen+0x3a>
  402178:	e8 13 eb ff ff       	callq  400c90 <__errno_location@plt>
  40217d:	83 38 04             	cmpl   $0x4,(%rax)
  402180:	75 15                	jne    402197 <rio_writen+0x4a>
  402182:	b8 00 00 00 00       	mov    $0x0,%eax
  402187:	48 29 c3             	sub    %rax,%rbx
  40218a:	48 01 c5             	add    %rax,%rbp
  40218d:	48 85 db             	test   %rbx,%rbx
  402190:	75 d3                	jne    402165 <rio_writen+0x18>
  402192:	4c 89 e8             	mov    %r13,%rax
  402195:	eb 07                	jmp    40219e <rio_writen+0x51>
  402197:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40219e:	48 83 c4 08          	add    $0x8,%rsp
  4021a2:	5b                   	pop    %rbx
  4021a3:	5d                   	pop    %rbp
  4021a4:	41 5c                	pop    %r12
  4021a6:	41 5d                	pop    %r13
  4021a8:	c3                   	retq   

00000000004021a9 <rio_read>:
  4021a9:	41 55                	push   %r13
  4021ab:	41 54                	push   %r12
  4021ad:	55                   	push   %rbp
  4021ae:	53                   	push   %rbx
  4021af:	48 83 ec 08          	sub    $0x8,%rsp
  4021b3:	48 89 fb             	mov    %rdi,%rbx
  4021b6:	49 89 f5             	mov    %rsi,%r13
  4021b9:	49 89 d4             	mov    %rdx,%r12
  4021bc:	eb 2e                	jmp    4021ec <rio_read+0x43>
  4021be:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4021c2:	8b 3b                	mov    (%rbx),%edi
  4021c4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021c9:	48 89 ee             	mov    %rbp,%rsi
  4021cc:	e8 6f eb ff ff       	callq  400d40 <read@plt>
  4021d1:	89 43 04             	mov    %eax,0x4(%rbx)
  4021d4:	85 c0                	test   %eax,%eax
  4021d6:	79 0c                	jns    4021e4 <rio_read+0x3b>
  4021d8:	e8 b3 ea ff ff       	callq  400c90 <__errno_location@plt>
  4021dd:	83 38 04             	cmpl   $0x4,(%rax)
  4021e0:	74 0a                	je     4021ec <rio_read+0x43>
  4021e2:	eb 37                	jmp    40221b <rio_read+0x72>
  4021e4:	85 c0                	test   %eax,%eax
  4021e6:	74 3c                	je     402224 <rio_read+0x7b>
  4021e8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4021ec:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021ef:	85 ed                	test   %ebp,%ebp
  4021f1:	7e cb                	jle    4021be <rio_read+0x15>
  4021f3:	89 e8                	mov    %ebp,%eax
  4021f5:	49 39 c4             	cmp    %rax,%r12
  4021f8:	77 03                	ja     4021fd <rio_read+0x54>
  4021fa:	44 89 e5             	mov    %r12d,%ebp
  4021fd:	4c 63 e5             	movslq %ebp,%r12
  402200:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402204:	4c 89 e2             	mov    %r12,%rdx
  402207:	4c 89 ef             	mov    %r13,%rdi
  40220a:	e8 91 eb ff ff       	callq  400da0 <memcpy@plt>
  40220f:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402213:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402216:	4c 89 e0             	mov    %r12,%rax
  402219:	eb 0e                	jmp    402229 <rio_read+0x80>
  40221b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402222:	eb 05                	jmp    402229 <rio_read+0x80>
  402224:	b8 00 00 00 00       	mov    $0x0,%eax
  402229:	48 83 c4 08          	add    $0x8,%rsp
  40222d:	5b                   	pop    %rbx
  40222e:	5d                   	pop    %rbp
  40222f:	41 5c                	pop    %r12
  402231:	41 5d                	pop    %r13
  402233:	c3                   	retq   

0000000000402234 <rio_readlineb>:
  402234:	41 55                	push   %r13
  402236:	41 54                	push   %r12
  402238:	55                   	push   %rbp
  402239:	53                   	push   %rbx
  40223a:	48 83 ec 18          	sub    $0x18,%rsp
  40223e:	49 89 fd             	mov    %rdi,%r13
  402241:	48 89 f5             	mov    %rsi,%rbp
  402244:	49 89 d4             	mov    %rdx,%r12
  402247:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40224e:	00 00 
  402250:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402255:	31 c0                	xor    %eax,%eax
  402257:	bb 01 00 00 00       	mov    $0x1,%ebx
  40225c:	eb 3f                	jmp    40229d <rio_readlineb+0x69>
  40225e:	ba 01 00 00 00       	mov    $0x1,%edx
  402263:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402268:	4c 89 ef             	mov    %r13,%rdi
  40226b:	e8 39 ff ff ff       	callq  4021a9 <rio_read>
  402270:	83 f8 01             	cmp    $0x1,%eax
  402273:	75 15                	jne    40228a <rio_readlineb+0x56>
  402275:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402279:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40227e:	88 55 00             	mov    %dl,0x0(%rbp)
  402281:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402286:	75 0e                	jne    402296 <rio_readlineb+0x62>
  402288:	eb 1a                	jmp    4022a4 <rio_readlineb+0x70>
  40228a:	85 c0                	test   %eax,%eax
  40228c:	75 22                	jne    4022b0 <rio_readlineb+0x7c>
  40228e:	48 83 fb 01          	cmp    $0x1,%rbx
  402292:	75 13                	jne    4022a7 <rio_readlineb+0x73>
  402294:	eb 23                	jmp    4022b9 <rio_readlineb+0x85>
  402296:	48 83 c3 01          	add    $0x1,%rbx
  40229a:	48 89 c5             	mov    %rax,%rbp
  40229d:	4c 39 e3             	cmp    %r12,%rbx
  4022a0:	72 bc                	jb     40225e <rio_readlineb+0x2a>
  4022a2:	eb 03                	jmp    4022a7 <rio_readlineb+0x73>
  4022a4:	48 89 c5             	mov    %rax,%rbp
  4022a7:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4022ab:	48 89 d8             	mov    %rbx,%rax
  4022ae:	eb 0e                	jmp    4022be <rio_readlineb+0x8a>
  4022b0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022b7:	eb 05                	jmp    4022be <rio_readlineb+0x8a>
  4022b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022be:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4022c3:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4022ca:	00 00 
  4022cc:	74 05                	je     4022d3 <rio_readlineb+0x9f>
  4022ce:	e8 1d ea ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4022d3:	48 83 c4 18          	add    $0x18,%rsp
  4022d7:	5b                   	pop    %rbx
  4022d8:	5d                   	pop    %rbp
  4022d9:	41 5c                	pop    %r12
  4022db:	41 5d                	pop    %r13
  4022dd:	c3                   	retq   

00000000004022de <urlencode>:
  4022de:	41 54                	push   %r12
  4022e0:	55                   	push   %rbp
  4022e1:	53                   	push   %rbx
  4022e2:	48 83 ec 10          	sub    $0x10,%rsp
  4022e6:	48 89 fb             	mov    %rdi,%rbx
  4022e9:	48 89 f5             	mov    %rsi,%rbp
  4022ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022f3:	00 00 
  4022f5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022fa:	31 c0                	xor    %eax,%eax
  4022fc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402303:	f2 ae                	repnz scas %es:(%rdi),%al
  402305:	48 f7 d1             	not    %rcx
  402308:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40230b:	e9 aa 00 00 00       	jmpq   4023ba <urlencode+0xdc>
  402310:	44 0f b6 03          	movzbl (%rbx),%r8d
  402314:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402318:	0f 94 c2             	sete   %dl
  40231b:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40231f:	0f 94 c0             	sete   %al
  402322:	08 c2                	or     %al,%dl
  402324:	75 24                	jne    40234a <urlencode+0x6c>
  402326:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40232a:	74 1e                	je     40234a <urlencode+0x6c>
  40232c:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402330:	74 18                	je     40234a <urlencode+0x6c>
  402332:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402336:	3c 09                	cmp    $0x9,%al
  402338:	76 10                	jbe    40234a <urlencode+0x6c>
  40233a:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  40233e:	3c 19                	cmp    $0x19,%al
  402340:	76 08                	jbe    40234a <urlencode+0x6c>
  402342:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402346:	3c 19                	cmp    $0x19,%al
  402348:	77 0a                	ja     402354 <urlencode+0x76>
  40234a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40234e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402352:	eb 5f                	jmp    4023b3 <urlencode+0xd5>
  402354:	41 80 f8 20          	cmp    $0x20,%r8b
  402358:	75 0a                	jne    402364 <urlencode+0x86>
  40235a:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40235e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402362:	eb 4f                	jmp    4023b3 <urlencode+0xd5>
  402364:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402368:	3c 5f                	cmp    $0x5f,%al
  40236a:	0f 96 c2             	setbe  %dl
  40236d:	41 80 f8 09          	cmp    $0x9,%r8b
  402371:	0f 94 c0             	sete   %al
  402374:	08 c2                	or     %al,%dl
  402376:	74 50                	je     4023c8 <urlencode+0xea>
  402378:	45 0f b6 c0          	movzbl %r8b,%r8d
  40237c:	b9 78 36 40 00       	mov    $0x403678,%ecx
  402381:	ba 08 00 00 00       	mov    $0x8,%edx
  402386:	be 01 00 00 00       	mov    $0x1,%esi
  40238b:	48 89 e7             	mov    %rsp,%rdi
  40238e:	b8 00 00 00 00       	mov    $0x0,%eax
  402393:	e8 e8 ea ff ff       	callq  400e80 <__sprintf_chk@plt>
  402398:	0f b6 04 24          	movzbl (%rsp),%eax
  40239c:	88 45 00             	mov    %al,0x0(%rbp)
  40239f:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4023a4:	88 45 01             	mov    %al,0x1(%rbp)
  4023a7:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4023ac:	88 45 02             	mov    %al,0x2(%rbp)
  4023af:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4023b3:	48 83 c3 01          	add    $0x1,%rbx
  4023b7:	44 89 e0             	mov    %r12d,%eax
  4023ba:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023be:	85 c0                	test   %eax,%eax
  4023c0:	0f 85 4a ff ff ff    	jne    402310 <urlencode+0x32>
  4023c6:	eb 05                	jmp    4023cd <urlencode+0xef>
  4023c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023cd:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4023d2:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4023d9:	00 00 
  4023db:	74 05                	je     4023e2 <urlencode+0x104>
  4023dd:	e8 0e e9 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4023e2:	48 83 c4 10          	add    $0x10,%rsp
  4023e6:	5b                   	pop    %rbx
  4023e7:	5d                   	pop    %rbp
  4023e8:	41 5c                	pop    %r12
  4023ea:	c3                   	retq   

00000000004023eb <submitr>:
  4023eb:	41 57                	push   %r15
  4023ed:	41 56                	push   %r14
  4023ef:	41 55                	push   %r13
  4023f1:	41 54                	push   %r12
  4023f3:	55                   	push   %rbp
  4023f4:	53                   	push   %rbx
  4023f5:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4023fc:	49 89 fc             	mov    %rdi,%r12
  4023ff:	89 74 24 04          	mov    %esi,0x4(%rsp)
  402403:	49 89 d7             	mov    %rdx,%r15
  402406:	49 89 ce             	mov    %rcx,%r14
  402409:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40240e:	4d 89 cd             	mov    %r9,%r13
  402411:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402418:	00 
  402419:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402420:	00 00 
  402422:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  402429:	00 
  40242a:	31 c0                	xor    %eax,%eax
  40242c:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  402433:	00 
  402434:	ba 00 00 00 00       	mov    $0x0,%edx
  402439:	be 01 00 00 00       	mov    $0x1,%esi
  40243e:	bf 02 00 00 00       	mov    $0x2,%edi
  402443:	e8 48 ea ff ff       	callq  400e90 <socket@plt>
  402448:	85 c0                	test   %eax,%eax
  40244a:	79 4e                	jns    40249a <submitr+0xaf>
  40244c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402453:	3a 20 43 
  402456:	48 89 03             	mov    %rax,(%rbx)
  402459:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402460:	20 75 6e 
  402463:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402467:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40246e:	74 6f 20 
  402471:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402475:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40247c:	65 20 73 
  40247f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402483:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  40248a:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402490:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402495:	e9 97 06 00 00       	jmpq   402b31 <submitr+0x746>
  40249a:	89 c5                	mov    %eax,%ebp
  40249c:	4c 89 e7             	mov    %r12,%rdi
  40249f:	e8 cc e8 ff ff       	callq  400d70 <gethostbyname@plt>
  4024a4:	48 85 c0             	test   %rax,%rax
  4024a7:	75 67                	jne    402510 <submitr+0x125>
  4024a9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024b0:	3a 20 44 
  4024b3:	48 89 03             	mov    %rax,(%rbx)
  4024b6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024bd:	20 75 6e 
  4024c0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024c4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024cb:	74 6f 20 
  4024ce:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024d2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4024d9:	76 65 20 
  4024dc:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024e0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024e7:	72 20 61 
  4024ea:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024ee:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4024f5:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4024fb:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4024ff:	89 ef                	mov    %ebp,%edi
  402501:	e8 2a e8 ff ff       	callq  400d30 <close@plt>
  402506:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40250b:	e9 21 06 00 00       	jmpq   402b31 <submitr+0x746>
  402510:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  402517:	00 00 
  402519:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  402520:	00 00 
  402522:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  402529:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40252d:	48 8b 40 18          	mov    0x18(%rax),%rax
  402531:	48 8b 30             	mov    (%rax),%rsi
  402534:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  402539:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40253e:	e8 3d e8 ff ff       	callq  400d80 <__memmove_chk@plt>
  402543:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402548:	66 c1 c8 08          	ror    $0x8,%ax
  40254c:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  402551:	ba 10 00 00 00       	mov    $0x10,%edx
  402556:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40255b:	89 ef                	mov    %ebp,%edi
  40255d:	e8 fe e8 ff ff       	callq  400e60 <connect@plt>
  402562:	85 c0                	test   %eax,%eax
  402564:	79 59                	jns    4025bf <submitr+0x1d4>
  402566:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40256d:	3a 20 55 
  402570:	48 89 03             	mov    %rax,(%rbx)
  402573:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40257a:	20 74 6f 
  40257d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402581:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402588:	65 63 74 
  40258b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40258f:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402596:	68 65 20 
  402599:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40259d:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4025a4:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4025aa:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4025ae:	89 ef                	mov    %ebp,%edi
  4025b0:	e8 7b e7 ff ff       	callq  400d30 <close@plt>
  4025b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025ba:	e9 72 05 00 00       	jmpq   402b31 <submitr+0x746>
  4025bf:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4025c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025cb:	48 89 f1             	mov    %rsi,%rcx
  4025ce:	4c 89 ef             	mov    %r13,%rdi
  4025d1:	f2 ae                	repnz scas %es:(%rdi),%al
  4025d3:	48 f7 d1             	not    %rcx
  4025d6:	48 89 ca             	mov    %rcx,%rdx
  4025d9:	48 89 f1             	mov    %rsi,%rcx
  4025dc:	4c 89 ff             	mov    %r15,%rdi
  4025df:	f2 ae                	repnz scas %es:(%rdi),%al
  4025e1:	48 f7 d1             	not    %rcx
  4025e4:	49 89 c8             	mov    %rcx,%r8
  4025e7:	48 89 f1             	mov    %rsi,%rcx
  4025ea:	4c 89 f7             	mov    %r14,%rdi
  4025ed:	f2 ae                	repnz scas %es:(%rdi),%al
  4025ef:	48 f7 d1             	not    %rcx
  4025f2:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4025f7:	48 89 f1             	mov    %rsi,%rcx
  4025fa:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4025ff:	f2 ae                	repnz scas %es:(%rdi),%al
  402601:	48 89 c8             	mov    %rcx,%rax
  402604:	48 f7 d0             	not    %rax
  402607:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40260c:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402611:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402618:	00 
  402619:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40261f:	76 72                	jbe    402693 <submitr+0x2a8>
  402621:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402628:	3a 20 52 
  40262b:	48 89 03             	mov    %rax,(%rbx)
  40262e:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402635:	20 73 74 
  402638:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40263c:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402643:	74 6f 6f 
  402646:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40264a:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402651:	65 2e 20 
  402654:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402658:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40265f:	61 73 65 
  402662:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402666:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  40266d:	49 54 52 
  402670:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402674:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40267b:	55 46 00 
  40267e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402682:	89 ef                	mov    %ebp,%edi
  402684:	e8 a7 e6 ff ff       	callq  400d30 <close@plt>
  402689:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40268e:	e9 9e 04 00 00       	jmpq   402b31 <submitr+0x746>
  402693:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40269a:	00 
  40269b:	b9 00 04 00 00       	mov    $0x400,%ecx
  4026a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a5:	48 89 f7             	mov    %rsi,%rdi
  4026a8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026ab:	4c 89 ef             	mov    %r13,%rdi
  4026ae:	e8 2b fc ff ff       	callq  4022de <urlencode>
  4026b3:	85 c0                	test   %eax,%eax
  4026b5:	0f 89 8a 00 00 00    	jns    402745 <submitr+0x35a>
  4026bb:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026c2:	3a 20 52 
  4026c5:	48 89 03             	mov    %rax,(%rbx)
  4026c8:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026cf:	20 73 74 
  4026d2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026d6:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4026dd:	63 6f 6e 
  4026e0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026e4:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4026eb:	20 61 6e 
  4026ee:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026f2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4026f9:	67 61 6c 
  4026fc:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402700:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402707:	6e 70 72 
  40270a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40270e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402715:	6c 65 20 
  402718:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40271c:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402723:	63 74 65 
  402726:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40272a:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402730:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402734:	89 ef                	mov    %ebp,%edi
  402736:	e8 f5 e5 ff ff       	callq  400d30 <close@plt>
  40273b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402740:	e9 ec 03 00 00       	jmpq   402b31 <submitr+0x746>
  402745:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  40274c:	00 
  40274d:	41 54                	push   %r12
  40274f:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  402756:	00 
  402757:	50                   	push   %rax
  402758:	4d 89 f9             	mov    %r15,%r9
  40275b:	4d 89 f0             	mov    %r14,%r8
  40275e:	b9 08 36 40 00       	mov    $0x403608,%ecx
  402763:	ba 00 20 00 00       	mov    $0x2000,%edx
  402768:	be 01 00 00 00       	mov    $0x1,%esi
  40276d:	4c 89 ef             	mov    %r13,%rdi
  402770:	b8 00 00 00 00       	mov    $0x0,%eax
  402775:	e8 06 e7 ff ff       	callq  400e80 <__sprintf_chk@plt>
  40277a:	b8 00 00 00 00       	mov    $0x0,%eax
  40277f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402786:	4c 89 ef             	mov    %r13,%rdi
  402789:	f2 ae                	repnz scas %es:(%rdi),%al
  40278b:	48 f7 d1             	not    %rcx
  40278e:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402792:	4c 89 ee             	mov    %r13,%rsi
  402795:	89 ef                	mov    %ebp,%edi
  402797:	e8 b1 f9 ff ff       	callq  40214d <rio_writen>
  40279c:	48 83 c4 10          	add    $0x10,%rsp
  4027a0:	48 85 c0             	test   %rax,%rax
  4027a3:	79 6e                	jns    402813 <submitr+0x428>
  4027a5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ac:	3a 20 43 
  4027af:	48 89 03             	mov    %rax,(%rbx)
  4027b2:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027b9:	20 75 6e 
  4027bc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027c0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027c7:	74 6f 20 
  4027ca:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027ce:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4027d5:	20 74 6f 
  4027d8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027dc:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4027e3:	72 65 73 
  4027e6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027ea:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4027f1:	65 72 76 
  4027f4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027f8:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4027fe:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402802:	89 ef                	mov    %ebp,%edi
  402804:	e8 27 e5 ff ff       	callq  400d30 <close@plt>
  402809:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40280e:	e9 1e 03 00 00       	jmpq   402b31 <submitr+0x746>
  402813:	89 ee                	mov    %ebp,%esi
  402815:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40281a:	e8 ee f8 ff ff       	callq  40210d <rio_readinitb>
  40281f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402824:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40282b:	00 
  40282c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402831:	e8 fe f9 ff ff       	callq  402234 <rio_readlineb>
  402836:	48 85 c0             	test   %rax,%rax
  402839:	7f 7d                	jg     4028b8 <submitr+0x4cd>
  40283b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402842:	3a 20 43 
  402845:	48 89 03             	mov    %rax,(%rbx)
  402848:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40284f:	20 75 6e 
  402852:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402856:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40285d:	74 6f 20 
  402860:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402864:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  40286b:	66 69 72 
  40286e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402872:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402879:	61 64 65 
  40287c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402880:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402887:	6d 20 72 
  40288a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40288e:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402895:	20 73 65 
  402898:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40289c:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4028a3:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4028a7:	89 ef                	mov    %ebp,%edi
  4028a9:	e8 82 e4 ff ff       	callq  400d30 <close@plt>
  4028ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b3:	e9 79 02 00 00       	jmpq   402b31 <submitr+0x746>
  4028b8:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  4028bf:	00 
  4028c0:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  4028c5:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  4028cc:	00 
  4028cd:	be 7f 36 40 00       	mov    $0x40367f,%esi
  4028d2:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  4028d9:	00 
  4028da:	b8 00 00 00 00       	mov    $0x0,%eax
  4028df:	e8 fc e4 ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  4028e4:	e9 95 00 00 00       	jmpq   40297e <submitr+0x593>
  4028e9:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028ee:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028f5:	00 
  4028f6:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028fb:	e8 34 f9 ff ff       	callq  402234 <rio_readlineb>
  402900:	48 85 c0             	test   %rax,%rax
  402903:	7f 79                	jg     40297e <submitr+0x593>
  402905:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40290c:	3a 20 43 
  40290f:	48 89 03             	mov    %rax,(%rbx)
  402912:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402919:	20 75 6e 
  40291c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402920:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402927:	74 6f 20 
  40292a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40292e:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402935:	68 65 61 
  402938:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40293c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402943:	66 72 6f 
  402946:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40294a:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402951:	20 72 65 
  402954:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402958:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40295f:	73 65 72 
  402962:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402966:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  40296d:	89 ef                	mov    %ebp,%edi
  40296f:	e8 bc e3 ff ff       	callq  400d30 <close@plt>
  402974:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402979:	e9 b3 01 00 00       	jmpq   402b31 <submitr+0x746>
  40297e:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402985:	00 
  402986:	b8 0d 00 00 00       	mov    $0xd,%eax
  40298b:	29 d0                	sub    %edx,%eax
  40298d:	75 1b                	jne    4029aa <submitr+0x5bf>
  40298f:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402996:	00 
  402997:	b8 0a 00 00 00       	mov    $0xa,%eax
  40299c:	29 d0                	sub    %edx,%eax
  40299e:	75 0a                	jne    4029aa <submitr+0x5bf>
  4029a0:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  4029a7:	00 
  4029a8:	f7 d8                	neg    %eax
  4029aa:	85 c0                	test   %eax,%eax
  4029ac:	0f 85 37 ff ff ff    	jne    4028e9 <submitr+0x4fe>
  4029b2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029b7:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029be:	00 
  4029bf:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029c4:	e8 6b f8 ff ff       	callq  402234 <rio_readlineb>
  4029c9:	48 85 c0             	test   %rax,%rax
  4029cc:	0f 8f 83 00 00 00    	jg     402a55 <submitr+0x66a>
  4029d2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029d9:	3a 20 43 
  4029dc:	48 89 03             	mov    %rax,(%rbx)
  4029df:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029e6:	20 75 6e 
  4029e9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029ed:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029f4:	74 6f 20 
  4029f7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029fb:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402a02:	73 74 61 
  402a05:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a09:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402a10:	65 73 73 
  402a13:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a17:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402a1e:	72 6f 6d 
  402a21:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a25:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402a2c:	6c 74 20 
  402a2f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a33:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402a3a:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402a40:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402a44:	89 ef                	mov    %ebp,%edi
  402a46:	e8 e5 e2 ff ff       	callq  400d30 <close@plt>
  402a4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a50:	e9 dc 00 00 00       	jmpq   402b31 <submitr+0x746>
  402a55:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402a5a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402a61:	74 37                	je     402a9a <submitr+0x6af>
  402a63:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402a6a:	00 
  402a6b:	b9 48 36 40 00       	mov    $0x403648,%ecx
  402a70:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402a77:	be 01 00 00 00       	mov    $0x1,%esi
  402a7c:	48 89 df             	mov    %rbx,%rdi
  402a7f:	b8 00 00 00 00       	mov    $0x0,%eax
  402a84:	e8 f7 e3 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402a89:	89 ef                	mov    %ebp,%edi
  402a8b:	e8 a0 e2 ff ff       	callq  400d30 <close@plt>
  402a90:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a95:	e9 97 00 00 00       	jmpq   402b31 <submitr+0x746>
  402a9a:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402aa1:	00 
  402aa2:	48 89 df             	mov    %rbx,%rdi
  402aa5:	e8 16 e2 ff ff       	callq  400cc0 <strcpy@plt>
  402aaa:	89 ef                	mov    %ebp,%edi
  402aac:	e8 7f e2 ff ff       	callq  400d30 <close@plt>
  402ab1:	0f b6 03             	movzbl (%rbx),%eax
  402ab4:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402ab9:	29 c2                	sub    %eax,%edx
  402abb:	75 22                	jne    402adf <submitr+0x6f4>
  402abd:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402ac1:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402ac6:	29 c8                	sub    %ecx,%eax
  402ac8:	75 17                	jne    402ae1 <submitr+0x6f6>
  402aca:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402ace:	b8 0a 00 00 00       	mov    $0xa,%eax
  402ad3:	29 c8                	sub    %ecx,%eax
  402ad5:	75 0a                	jne    402ae1 <submitr+0x6f6>
  402ad7:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402adb:	f7 d8                	neg    %eax
  402add:	eb 02                	jmp    402ae1 <submitr+0x6f6>
  402adf:	89 d0                	mov    %edx,%eax
  402ae1:	85 c0                	test   %eax,%eax
  402ae3:	74 40                	je     402b25 <submitr+0x73a>
  402ae5:	bf 90 36 40 00       	mov    $0x403690,%edi
  402aea:	b9 05 00 00 00       	mov    $0x5,%ecx
  402aef:	48 89 de             	mov    %rbx,%rsi
  402af2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402af4:	0f 97 c0             	seta   %al
  402af7:	0f 92 c1             	setb   %cl
  402afa:	29 c8                	sub    %ecx,%eax
  402afc:	0f be c0             	movsbl %al,%eax
  402aff:	85 c0                	test   %eax,%eax
  402b01:	74 2e                	je     402b31 <submitr+0x746>
  402b03:	85 d2                	test   %edx,%edx
  402b05:	75 13                	jne    402b1a <submitr+0x72f>
  402b07:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402b0b:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402b10:	29 c2                	sub    %eax,%edx
  402b12:	75 06                	jne    402b1a <submitr+0x72f>
  402b14:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402b18:	f7 da                	neg    %edx
  402b1a:	85 d2                	test   %edx,%edx
  402b1c:	75 0e                	jne    402b2c <submitr+0x741>
  402b1e:	b8 00 00 00 00       	mov    $0x0,%eax
  402b23:	eb 0c                	jmp    402b31 <submitr+0x746>
  402b25:	b8 00 00 00 00       	mov    $0x0,%eax
  402b2a:	eb 05                	jmp    402b31 <submitr+0x746>
  402b2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b31:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402b38:	00 
  402b39:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402b40:	00 00 
  402b42:	74 05                	je     402b49 <submitr+0x75e>
  402b44:	e8 a7 e1 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402b49:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402b50:	5b                   	pop    %rbx
  402b51:	5d                   	pop    %rbp
  402b52:	41 5c                	pop    %r12
  402b54:	41 5d                	pop    %r13
  402b56:	41 5e                	pop    %r14
  402b58:	41 5f                	pop    %r15
  402b5a:	c3                   	retq   

0000000000402b5b <init_timeout>:
  402b5b:	85 ff                	test   %edi,%edi
  402b5d:	74 23                	je     402b82 <init_timeout+0x27>
  402b5f:	53                   	push   %rbx
  402b60:	89 fb                	mov    %edi,%ebx
  402b62:	85 ff                	test   %edi,%edi
  402b64:	79 05                	jns    402b6b <init_timeout+0x10>
  402b66:	bb 00 00 00 00       	mov    $0x0,%ebx
  402b6b:	be 1f 21 40 00       	mov    $0x40211f,%esi
  402b70:	bf 0e 00 00 00       	mov    $0xe,%edi
  402b75:	e8 e6 e1 ff ff       	callq  400d60 <signal@plt>
  402b7a:	89 df                	mov    %ebx,%edi
  402b7c:	e8 9f e1 ff ff       	callq  400d20 <alarm@plt>
  402b81:	5b                   	pop    %rbx
  402b82:	f3 c3                	repz retq 

0000000000402b84 <init_driver>:
  402b84:	55                   	push   %rbp
  402b85:	53                   	push   %rbx
  402b86:	48 83 ec 28          	sub    $0x28,%rsp
  402b8a:	48 89 fd             	mov    %rdi,%rbp
  402b8d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b94:	00 00 
  402b96:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b9b:	31 c0                	xor    %eax,%eax
  402b9d:	be 01 00 00 00       	mov    $0x1,%esi
  402ba2:	bf 0d 00 00 00       	mov    $0xd,%edi
  402ba7:	e8 b4 e1 ff ff       	callq  400d60 <signal@plt>
  402bac:	be 01 00 00 00       	mov    $0x1,%esi
  402bb1:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bb6:	e8 a5 e1 ff ff       	callq  400d60 <signal@plt>
  402bbb:	be 01 00 00 00       	mov    $0x1,%esi
  402bc0:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bc5:	e8 96 e1 ff ff       	callq  400d60 <signal@plt>
  402bca:	ba 00 00 00 00       	mov    $0x0,%edx
  402bcf:	be 01 00 00 00       	mov    $0x1,%esi
  402bd4:	bf 02 00 00 00       	mov    $0x2,%edi
  402bd9:	e8 b2 e2 ff ff       	callq  400e90 <socket@plt>
  402bde:	85 c0                	test   %eax,%eax
  402be0:	79 4f                	jns    402c31 <init_driver+0xad>
  402be2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402be9:	3a 20 43 
  402bec:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bf0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402bf7:	20 75 6e 
  402bfa:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402bfe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c05:	74 6f 20 
  402c08:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c0c:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402c13:	65 20 73 
  402c16:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c1a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402c21:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402c27:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c2c:	e9 2a 01 00 00       	jmpq   402d5b <init_driver+0x1d7>
  402c31:	89 c3                	mov    %eax,%ebx
  402c33:	bf d5 31 40 00       	mov    $0x4031d5,%edi
  402c38:	e8 33 e1 ff ff       	callq  400d70 <gethostbyname@plt>
  402c3d:	48 85 c0             	test   %rax,%rax
  402c40:	75 68                	jne    402caa <init_driver+0x126>
  402c42:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402c49:	3a 20 44 
  402c4c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c50:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402c57:	20 75 6e 
  402c5a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c5e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c65:	74 6f 20 
  402c68:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c6c:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402c73:	76 65 20 
  402c76:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c7a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402c81:	72 20 61 
  402c84:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c88:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402c8f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402c95:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402c99:	89 df                	mov    %ebx,%edi
  402c9b:	e8 90 e0 ff ff       	callq  400d30 <close@plt>
  402ca0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ca5:	e9 b1 00 00 00       	jmpq   402d5b <init_driver+0x1d7>
  402caa:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402cb1:	00 
  402cb2:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402cb9:	00 00 
  402cbb:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402cc1:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cc5:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cc9:	48 8b 30             	mov    (%rax),%rsi
  402ccc:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402cd1:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cd6:	e8 a5 e0 ff ff       	callq  400d80 <__memmove_chk@plt>
  402cdb:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402ce2:	ba 10 00 00 00       	mov    $0x10,%edx
  402ce7:	48 89 e6             	mov    %rsp,%rsi
  402cea:	89 df                	mov    %ebx,%edi
  402cec:	e8 6f e1 ff ff       	callq  400e60 <connect@plt>
  402cf1:	85 c0                	test   %eax,%eax
  402cf3:	79 50                	jns    402d45 <init_driver+0x1c1>
  402cf5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402cfc:	3a 20 55 
  402cff:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d03:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402d0a:	20 74 6f 
  402d0d:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d11:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d18:	65 63 74 
  402d1b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d1f:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402d26:	65 72 76 
  402d29:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d2d:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402d33:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402d37:	89 df                	mov    %ebx,%edi
  402d39:	e8 f2 df ff ff       	callq  400d30 <close@plt>
  402d3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d43:	eb 16                	jmp    402d5b <init_driver+0x1d7>
  402d45:	89 df                	mov    %ebx,%edi
  402d47:	e8 e4 df ff ff       	callq  400d30 <close@plt>
  402d4c:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402d52:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402d56:	b8 00 00 00 00       	mov    $0x0,%eax
  402d5b:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d60:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d67:	00 00 
  402d69:	74 05                	je     402d70 <init_driver+0x1ec>
  402d6b:	e8 80 df ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402d70:	48 83 c4 28          	add    $0x28,%rsp
  402d74:	5b                   	pop    %rbx
  402d75:	5d                   	pop    %rbp
  402d76:	c3                   	retq   

0000000000402d77 <driver_post>:
  402d77:	53                   	push   %rbx
  402d78:	4c 89 cb             	mov    %r9,%rbx
  402d7b:	45 85 c0             	test   %r8d,%r8d
  402d7e:	74 27                	je     402da7 <driver_post+0x30>
  402d80:	48 89 ca             	mov    %rcx,%rdx
  402d83:	be 95 36 40 00       	mov    $0x403695,%esi
  402d88:	bf 01 00 00 00       	mov    $0x1,%edi
  402d8d:	b8 00 00 00 00       	mov    $0x0,%eax
  402d92:	e8 69 e0 ff ff       	callq  400e00 <__printf_chk@plt>
  402d97:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d9c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402da0:	b8 00 00 00 00       	mov    $0x0,%eax
  402da5:	eb 3f                	jmp    402de6 <driver_post+0x6f>
  402da7:	48 85 ff             	test   %rdi,%rdi
  402daa:	74 2c                	je     402dd8 <driver_post+0x61>
  402dac:	80 3f 00             	cmpb   $0x0,(%rdi)
  402daf:	74 27                	je     402dd8 <driver_post+0x61>
  402db1:	48 83 ec 08          	sub    $0x8,%rsp
  402db5:	41 51                	push   %r9
  402db7:	49 89 c9             	mov    %rcx,%r9
  402dba:	49 89 d0             	mov    %rdx,%r8
  402dbd:	48 89 f9             	mov    %rdi,%rcx
  402dc0:	48 89 f2             	mov    %rsi,%rdx
  402dc3:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402dc8:	bf d5 31 40 00       	mov    $0x4031d5,%edi
  402dcd:	e8 19 f6 ff ff       	callq  4023eb <submitr>
  402dd2:	48 83 c4 10          	add    $0x10,%rsp
  402dd6:	eb 0e                	jmp    402de6 <driver_post+0x6f>
  402dd8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ddd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402de1:	b8 00 00 00 00       	mov    $0x0,%eax
  402de6:	5b                   	pop    %rbx
  402de7:	c3                   	retq   

0000000000402de8 <check>:
  402de8:	89 f8                	mov    %edi,%eax
  402dea:	c1 e8 1c             	shr    $0x1c,%eax
  402ded:	85 c0                	test   %eax,%eax
  402def:	74 1d                	je     402e0e <check+0x26>
  402df1:	b9 00 00 00 00       	mov    $0x0,%ecx
  402df6:	eb 0b                	jmp    402e03 <check+0x1b>
  402df8:	89 f8                	mov    %edi,%eax
  402dfa:	d3 e8                	shr    %cl,%eax
  402dfc:	3c 0a                	cmp    $0xa,%al
  402dfe:	74 14                	je     402e14 <check+0x2c>
  402e00:	83 c1 08             	add    $0x8,%ecx
  402e03:	83 f9 1f             	cmp    $0x1f,%ecx
  402e06:	7e f0                	jle    402df8 <check+0x10>
  402e08:	b8 01 00 00 00       	mov    $0x1,%eax
  402e0d:	c3                   	retq   
  402e0e:	b8 00 00 00 00       	mov    $0x0,%eax
  402e13:	c3                   	retq   
  402e14:	b8 00 00 00 00       	mov    $0x0,%eax
  402e19:	c3                   	retq   

0000000000402e1a <gencookie>:
  402e1a:	53                   	push   %rbx
  402e1b:	83 c7 01             	add    $0x1,%edi
  402e1e:	e8 7d de ff ff       	callq  400ca0 <srandom@plt>
  402e23:	e8 98 df ff ff       	callq  400dc0 <random@plt>
  402e28:	89 c3                	mov    %eax,%ebx
  402e2a:	89 c7                	mov    %eax,%edi
  402e2c:	e8 b7 ff ff ff       	callq  402de8 <check>
  402e31:	85 c0                	test   %eax,%eax
  402e33:	74 ee                	je     402e23 <gencookie+0x9>
  402e35:	89 d8                	mov    %ebx,%eax
  402e37:	5b                   	pop    %rbx
  402e38:	c3                   	retq   
  402e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402e40 <__libc_csu_init>:
  402e40:	41 57                	push   %r15
  402e42:	41 56                	push   %r14
  402e44:	41 89 ff             	mov    %edi,%r15d
  402e47:	41 55                	push   %r13
  402e49:	41 54                	push   %r12
  402e4b:	4c 8d 25 be 0f 20 00 	lea    0x200fbe(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402e52:	55                   	push   %rbp
  402e53:	48 8d 2d be 0f 20 00 	lea    0x200fbe(%rip),%rbp        # 603e18 <__init_array_end>
  402e5a:	53                   	push   %rbx
  402e5b:	49 89 f6             	mov    %rsi,%r14
  402e5e:	49 89 d5             	mov    %rdx,%r13
  402e61:	4c 29 e5             	sub    %r12,%rbp
  402e64:	48 83 ec 08          	sub    $0x8,%rsp
  402e68:	48 c1 fd 03          	sar    $0x3,%rbp
  402e6c:	e8 d7 dd ff ff       	callq  400c48 <_init>
  402e71:	48 85 ed             	test   %rbp,%rbp
  402e74:	74 20                	je     402e96 <__libc_csu_init+0x56>
  402e76:	31 db                	xor    %ebx,%ebx
  402e78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e7f:	00 
  402e80:	4c 89 ea             	mov    %r13,%rdx
  402e83:	4c 89 f6             	mov    %r14,%rsi
  402e86:	44 89 ff             	mov    %r15d,%edi
  402e89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402e8d:	48 83 c3 01          	add    $0x1,%rbx
  402e91:	48 39 eb             	cmp    %rbp,%rbx
  402e94:	75 ea                	jne    402e80 <__libc_csu_init+0x40>
  402e96:	48 83 c4 08          	add    $0x8,%rsp
  402e9a:	5b                   	pop    %rbx
  402e9b:	5d                   	pop    %rbp
  402e9c:	41 5c                	pop    %r12
  402e9e:	41 5d                	pop    %r13
  402ea0:	41 5e                	pop    %r14
  402ea2:	41 5f                	pop    %r15
  402ea4:	c3                   	retq   
  402ea5:	90                   	nop
  402ea6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ead:	00 00 00 

0000000000402eb0 <__libc_csu_fini>:
  402eb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402eb4 <_fini>:
  402eb4:	48 83 ec 08          	sub    $0x8,%rsp
  402eb8:	48 83 c4 08          	add    $0x8,%rsp
  402ebc:	c3                   	retq   
