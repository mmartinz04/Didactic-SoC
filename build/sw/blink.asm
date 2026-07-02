
/nas/ei/home/ge87dix/Edu4Chip/Didactic-SoC/build//sw/blink.elf:     file format elf32-littleriscv


Disassembly of section .text:

01000000 <loop-0x84>:
 1000000:	0880006f          	j	1000088 <default_handler>
 1000004:	0840006f          	j	1000088 <default_handler>
 1000008:	0800006f          	j	1000088 <default_handler>
 100000c:	07c0006f          	j	1000088 <default_handler>
 1000010:	0780006f          	j	1000088 <default_handler>
 1000014:	0740006f          	j	1000088 <default_handler>
 1000018:	0700006f          	j	1000088 <default_handler>
 100001c:	06c0006f          	j	1000088 <default_handler>
 1000020:	0680006f          	j	1000088 <default_handler>
 1000024:	0640006f          	j	1000088 <default_handler>
 1000028:	0600006f          	j	1000088 <default_handler>
 100002c:	05c0006f          	j	1000088 <default_handler>
 1000030:	0580006f          	j	1000088 <default_handler>
 1000034:	0540006f          	j	1000088 <default_handler>
 1000038:	0500006f          	j	1000088 <default_handler>
 100003c:	04c0006f          	j	1000088 <default_handler>
 1000040:	0480006f          	j	1000088 <default_handler>
 1000044:	0440006f          	j	1000088 <default_handler>
 1000048:	0400006f          	j	1000088 <default_handler>
 100004c:	03c0006f          	j	1000088 <default_handler>
 1000050:	0380006f          	j	1000088 <default_handler>
 1000054:	0340006f          	j	1000088 <default_handler>
 1000058:	0300006f          	j	1000088 <default_handler>
 100005c:	02c0006f          	j	1000088 <default_handler>
 1000060:	0280006f          	j	1000088 <default_handler>
 1000064:	0240006f          	j	1000088 <default_handler>
 1000068:	0200006f          	j	1000088 <default_handler>
 100006c:	01c0006f          	j	1000088 <default_handler>
 1000070:	0180006f          	j	1000088 <default_handler>
 1000074:	0140006f          	j	1000088 <default_handler>
 1000078:	0100006f          	j	1000088 <default_handler>
 100007c:	00c0006f          	j	1000088 <default_handler>
 1000080:	14a0006f          	j	10001ca <reset_handler>

01000084 <loop>:
 1000084:	0000006f          	j	1000084 <loop>

01000088 <default_handler>:
 1000088:	30200073          	mret

0100008c <main>:
 100008c:	014007b7          	lui	a5,0x1400
 1000090:	5efd                	li	t4,-1
 1000092:	715d                	addi	sp,sp,-80
 1000094:	03d7a223          	sw	t4,36(a5) # 1400024 <stack+0x2ff424>
 1000098:	c682                	sw	zero,76(sp)
 100009a:	014006b7          	lui	a3,0x1400
 100009e:	56fc                	lw	a5,108(a3)
 10000a0:	8736                	mv	a4,a3
 10000a2:	c6be                	sw	a5,76(sp)
 10000a4:	4636                	lw	a2,76(sp)
 10000a6:	87b6                	mv	a5,a3
 10000a8:	8e3e                	mv	t3,a5
 10000aa:	9a79                	andi	a2,a2,-2
 10000ac:	d6f0                	sw	a2,108(a3)
 10000ae:	c482                	sw	zero,72(sp)
 10000b0:	5ab4                	lw	a3,112(a3)
 10000b2:	833e                	mv	t1,a5
 10000b4:	88be                	mv	a7,a5
 10000b6:	c4b6                	sw	a3,72(sp)
 10000b8:	46a6                	lw	a3,72(sp)
 10000ba:	883e                	mv	a6,a5
 10000bc:	9af9                	andi	a3,a3,-2
 10000be:	db34                	sw	a3,112(a4)
 10000c0:	c282                	sw	zero,68(sp)
 10000c2:	5b78                	lw	a4,116(a4)
 10000c4:	c2ba                	sw	a4,68(sp)
 10000c6:	4516                	lw	a0,68(sp)
 10000c8:	9979                	andi	a0,a0,-2
 10000ca:	dbe8                	sw	a0,116(a5)
 10000cc:	c082                	sw	zero,64(sp)
 10000ce:	5fa8                	lw	a0,120(a5)
 10000d0:	c0aa                	sw	a0,64(sp)
 10000d2:	4506                	lw	a0,64(sp)
 10000d4:	9979                	andi	a0,a0,-2
 10000d6:	dfa8                	sw	a0,120(a5)
 10000d8:	de02                	sw	zero,60(sp)
 10000da:	5fec                	lw	a1,124(a5)
 10000dc:	853e                	mv	a0,a5
 10000de:	de2e                	sw	a1,60(sp)
 10000e0:	55f2                	lw	a1,60(sp)
 10000e2:	99f9                	andi	a1,a1,-2
 10000e4:	dfec                	sw	a1,124(a5)
 10000e6:	dc02                	sw	zero,56(sp)
 10000e8:	0807a603          	lw	a2,128(a5)
 10000ec:	85be                	mv	a1,a5
 10000ee:	dc32                	sw	a2,56(sp)
 10000f0:	5662                	lw	a2,56(sp)
 10000f2:	9a79                	andi	a2,a2,-2
 10000f4:	08c7a023          	sw	a2,128(a5)
 10000f8:	da02                	sw	zero,52(sp)
 10000fa:	0847a683          	lw	a3,132(a5)
 10000fe:	863e                	mv	a2,a5
 1000100:	da36                	sw	a3,52(sp)
 1000102:	56d2                	lw	a3,52(sp)
 1000104:	9af9                	andi	a3,a3,-2
 1000106:	08d7a223          	sw	a3,132(a5)
 100010a:	d802                	sw	zero,48(sp)
 100010c:	0887a703          	lw	a4,136(a5)
 1000110:	86be                	mv	a3,a5
 1000112:	d83a                	sw	a4,48(sp)
 1000114:	5f42                	lw	t5,48(sp)
 1000116:	01300737          	lui	a4,0x1300
 100011a:	0731                	addi	a4,a4,12 # 130000c <stack+0x1ff40c>
 100011c:	ffef7f13          	andi	t5,t5,-2
 1000120:	09e7a423          	sw	t5,136(a5)
 1000124:	d602                	sw	zero,44(sp)
 1000126:	08c7af03          	lw	t5,140(a5)
 100012a:	47a9                	li	a5,10
 100012c:	d67a                	sw	t5,44(sp)
 100012e:	5f32                	lw	t5,44(sp)
 1000130:	ffef7f13          	andi	t5,t5,-2
 1000134:	09ee2623          	sw	t5,140(t3)
 1000138:	d402                	sw	zero,40(sp)
 100013a:	090e2e03          	lw	t3,144(t3)
 100013e:	d472                	sw	t3,40(sp)
 1000140:	5e22                	lw	t3,40(sp)
 1000142:	ffee7e13          	andi	t3,t3,-2
 1000146:	09c32823          	sw	t3,144(t1)
 100014a:	d202                	sw	zero,36(sp)
 100014c:	09432303          	lw	t1,148(t1)
 1000150:	d21a                	sw	t1,36(sp)
 1000152:	5312                	lw	t1,36(sp)
 1000154:	ffe37313          	andi	t1,t1,-2
 1000158:	0868aa23          	sw	t1,148(a7)
 100015c:	d002                	sw	zero,32(sp)
 100015e:	0988a883          	lw	a7,152(a7)
 1000162:	d046                	sw	a7,32(sp)
 1000164:	5882                	lw	a7,32(sp)
 1000166:	ffe8f893          	andi	a7,a7,-2
 100016a:	09182c23          	sw	a7,152(a6)
 100016e:	ce02                	sw	zero,28(sp)
 1000170:	09c82803          	lw	a6,156(a6)
 1000174:	ce42                	sw	a6,28(sp)
 1000176:	4872                	lw	a6,28(sp)
 1000178:	ffe87813          	andi	a6,a6,-2
 100017c:	09052e23          	sw	a6,156(a0)
 1000180:	cc02                	sw	zero,24(sp)
 1000182:	0a052503          	lw	a0,160(a0)
 1000186:	cc2a                	sw	a0,24(sp)
 1000188:	4562                	lw	a0,24(sp)
 100018a:	9979                	andi	a0,a0,-2
 100018c:	0aa5a023          	sw	a0,160(a1)
 1000190:	ca02                	sw	zero,20(sp)
 1000192:	0a45a583          	lw	a1,164(a1)
 1000196:	ca2e                	sw	a1,20(sp)
 1000198:	45d2                	lw	a1,20(sp)
 100019a:	99f9                	andi	a1,a1,-2
 100019c:	0ab62223          	sw	a1,164(a2)
 10001a0:	c802                	sw	zero,16(sp)
 10001a2:	0a862603          	lw	a2,168(a2)
 10001a6:	c832                	sw	a2,16(sp)
 10001a8:	4642                	lw	a2,16(sp)
 10001aa:	9a79                	andi	a2,a2,-2
 10001ac:	0ac6a423          	sw	a2,168(a3) # 14000a8 <stack+0x2ff4a8>
 10001b0:	c476                	sw	t4,8(sp)
 10001b2:	c602                	sw	zero,12(sp)
 10001b4:	46b2                	lw	a3,12(sp)
 10001b6:	c314                	sw	a3,0(a4)
 10001b8:	46a2                	lw	a3,8(sp)
 10001ba:	17fd                	addi	a5,a5,-1
 10001bc:	c314                	sw	a3,0(a4)
 10001be:	46b2                	lw	a3,12(sp)
 10001c0:	c314                	sw	a3,0(a4)
 10001c2:	fbfd                	bnez	a5,10001b8 <main+0x12c>
 10001c4:	4501                	li	a0,0
 10001c6:	6161                	addi	sp,sp,80
 10001c8:	8082                	ret

010001ca <reset_handler>:
 10001ca:	00101117          	auipc	sp,0x101
 10001ce:	a3610113          	addi	sp,sp,-1482 # 1100c00 <stack>
 10001d2:	00000097          	auipc	ra,0x0
 10001d6:	00c08093          	addi	ra,ra,12 # 10001de <postMain>
 10001da:	eb3ff06f          	j	100008c <main>

010001de <postMain>:
 10001de:	012002b7          	lui	t0,0x1200
 10001e2:	38028293          	addi	t0,t0,896 # 1200380 <stack+0xff780>
 10001e6:	80000337          	lui	t1,0x80000
 10001ea:	00656533          	or	a0,a0,t1
 10001ee:	00a2a023          	sw	a0,0(t0)
 10001f2:	e93ff06f          	j	1000084 <loop>

010001f6 <changeStack>:
 10001f6:	8132                	mv	sp,a2
 10001f8:	8582                	jr	a1

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	04e0                	addi	s0,sp,588
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0401                	addi	s0,s0,0
   8:	0000                	unimp
   a:	0000                	unimp
   c:	0000960b          	.insn	4, 0x960b
  10:	1d00                	addi	s0,sp,688
  12:	03164703          	lbu	a4,49(a2)
  16:	1e00                	addi	s0,sp,816
  18:	0000                	unimp
  1a:	0f00                	addi	s0,sp,912
  1c:	0001                	nop
  1e:	ec00                	.insn	2, 0xec00
	...
  28:	0000                	unimp
  2a:	0400                	addi	s0,sp,512
  2c:	0708                	addi	a0,sp,896
  2e:	007f 0000 0404 8907 	.insn	10, 0x890704040000007f
  36:	0000 
  38:	0400                	addi	s0,sp,512
  3a:	0601                	addi	a2,a2,0
  3c:	0035                	c.nop	13
  3e:	0000                	unimp
  40:	0104                	addi	s1,sp,128
  42:	3308                	.insn	2, 0x3308
  44:	0000                	unimp
  46:	0400                	addi	s0,sp,512
  48:	0502                	c.slli	a0,0x0
  4a:	013a                	slli	sp,sp,0xe
  4c:	0000                	unimp
  4e:	0204                	addi	s1,sp,256
  50:	00004907          	.insn	4, 0x4907
  54:	0400                	addi	s0,sp,512
  56:	0504                	addi	s1,sp,640
  58:	011c                	addi	a5,sp,128
  5a:	0000                	unimp
  5c:	00006307          	.insn	4, 0x6307
  60:	0400                	addi	s0,sp,512
  62:	0068194f          	.insn	4, 0x0068194f
  66:	0000                	unimp
  68:	0404                	addi	s1,sp,512
  6a:	00008407          	.insn	4, 0x8407
  6e:	0400                	addi	s0,sp,512
  70:	0508                	addi	a0,sp,640
  72:	00000117          	auipc	sp,0x0
  76:	040c                	addi	a1,sp,512
  78:	6905                	lui	s2,0x1
  7a:	746e                	.insn	2, 0x746e
  7c:	0700                	addi	s0,sp,896
  7e:	0065                	c.nop	25
  80:	0000                	unimp
  82:	3005                	jal	fffff8a2 <stack+0xfeefeca2>
  84:	5c14                	lw	a3,56(s0)
  86:	0000                	unimp
  88:	0d00                	addi	s0,sp,656
  8a:	007d                	c.nop	31
  8c:	0000                	unimp
  8e:	7d0e                	.insn	2, 0x7d0e
  90:	0000                	unimp
  92:	0f00                	addi	s0,sp,912
  94:	007a                	c.slli	zero,0x1e
  96:	0000                	unimp
  98:	1101                	addi	sp,sp,-32 # 52 <__DYNAMIC+0x52>
  9a:	7605                	lui	a2,0xfffe1
  9c:	0000                	unimp
  9e:	8c00                	.insn	2, 0x8c00
  a0:	0000                	unimp
  a2:	3e01                	jal	fffffbb2 <stack+0xfeefefb2>
  a4:	0001                	nop
  a6:	0100                	addi	s0,sp,128
  a8:	939c                	.insn	2, 0x939c
  aa:	05000003          	lb	zero,80(zero) # 50 <__DYNAMIC+0x50>
  ae:	005c                	addi	a5,sp,4
  b0:	0000                	unimp
  b2:	2601                	jal	3b2 <__DYNAMIC+0x3b2>
  b4:	0089                	addi	ra,ra,2
  b6:	0000                	unimp
  b8:	7fb89103          	lh	sp,2043(a7)
  bc:	4105                	li	sp,1
  be:	0000                	unimp
  c0:	0100                	addi	s0,sp,128
  c2:	00008927          	.insn	4, 0x8927
  c6:	0300                	addi	s0,sp,384
  c8:	bc91                	j	fffffb1c <stack+0xfeefef1c>
  ca:	0069107f 76072a01 	.insn	12, 0x1000000076072a010069107f
  d2:	10000000 
  d6:	0000                	unimp
  d8:	0c00                	addi	s0,sp,528
  da:	0000                	unimp
  dc:	0300                	addi	s0,sp,384
  de:	0429                	addi	s0,s0,10
  e0:	0000                	unimp
  e2:	008c                	addi	a1,sp,64
  e4:	0100                	addi	s0,sp,128
  e6:	0c02                	c.slli	s8,0x0
  e8:	0000                	unimp
  ea:	1300                	addi	s0,sp,416
  ec:	00fe                	slli	ra,ra,0x1f
  ee:	0000                	unimp
  f0:	3401                	jal	fffffaf0 <stack+0xfeefeef0>
  f2:	0004                	.insn	2, 0x0004
  f4:	1c00                	addi	s0,sp,560
  f6:	0000                	unimp
  f8:	1a00                	addi	s0,sp,304
  fa:	0000                	unimp
  fc:	0000                	unimp
  fe:	00040503          	lb	a0,0(s0)
 102:	9800                	.insn	2, 0x9800
 104:	0000                	unimp
 106:	0901                	addi	s2,s2,0 # 1000 <STACK_SIZE+0x400>
 108:	0018                	.insn	2, 0x0018
 10a:	0000                	unimp
 10c:	2715                	jal	830 <__DYNAMIC+0x830>
 10e:	0001                	nop
 110:	0100                	addi	s0,sp,128
 112:	0410                	addi	a2,sp,512
 114:	0000                	unimp
 116:	0029                	c.nop	10
 118:	0000                	unimp
 11a:	00000027          	.insn	4, 0x0027
 11e:	1c02                	slli	s8,s8,0x20
 120:	0004                	.insn	2, 0x0004
 122:	0200                	addi	s0,sp,256
 124:	7c91                	lui	s9,0xfffe4
 126:	0300                	addi	s0,sp,384
 128:	0405                	addi	s0,s0,1
 12a:	0000                	unimp
 12c:	00ae                	slli	ra,ra,0xb
 12e:	0100                	addi	s0,sp,128
 130:	271a                	.insn	2, 0x271a
 132:	0000                	unimp
 134:	1600                	addi	s0,sp,800
 136:	0150                	addi	a2,sp,132
 138:	0000                	unimp
 13a:	1001                	c.nop	-32
 13c:	0004                	.insn	2, 0x0004
 13e:	3500                	.insn	2, 0x3500
 140:	0000                	unimp
 142:	3300                	.insn	2, 0x3300
 144:	0000                	unimp
 146:	0200                	addi	s0,sp,256
 148:	041c                	addi	a5,sp,512
 14a:	0000                	unimp
 14c:	9102                	jalr	sp
 14e:	0078                	addi	a4,sp,12
 150:	00040503          	lb	a0,0(s0)
 154:	c000                	sw	s0,0(s0)
 156:	0000                	unimp
 158:	2b01                	jal	668 <__DYNAMIC+0x668>
 15a:	0039                	c.nop	14
 15c:	0000                	unimp
 15e:	00017917          	auipc	s2,0x17
 162:	0100                	addi	s0,sp,128
 164:	0410                	addi	a2,sp,512
 166:	0000                	unimp
 168:	0041                	c.nop	16
 16a:	0000                	unimp
 16c:	0000003f 00041c02 	.insn	8, 0x00041c020000003f
 174:	0200                	addi	s0,sp,256
 176:	7491                	lui	s1,0xfffe4
 178:	0300                	addi	s0,sp,384
 17a:	0405                	addi	s0,s0,1
 17c:	0000                	unimp
 17e:	0124                	addi	s1,sp,136
 180:	0100                	addi	s0,sp,128
 182:	457f 0000 1d00 01a2 	.insn	18, 0x4e0000041001000001a21d000000457f
 18a:	0000 1001 0004 4e00 
 192:	0000 
 194:	4b00                	lw	s0,16(a4)
 196:	0000                	unimp
 198:	0200                	addi	s0,sp,256
 19a:	041c                	addi	a5,sp,512
 19c:	0000                	unimp
 19e:	9102                	jalr	sp
 1a0:	005c                	addi	a5,sp,4
 1a2:	00040503          	lb	a0,0(s0)
 1a6:	3800                	.insn	2, 0x3800
 1a8:	0001                	nop
 1aa:	8d01                	sub	a0,a0,s0
 1ac:	00000057          	.insn	4, 0x0057
 1b0:	cb1e                	sw	t2,148(sp)
 1b2:	0001                	nop
 1b4:	0100                	addi	s0,sp,128
 1b6:	0410                	addi	a2,sp,512
 1b8:	0000                	unimp
 1ba:	005c                	addi	a5,sp,4
 1bc:	0000                	unimp
 1be:	0058                	addi	a4,sp,4
 1c0:	0000                	unimp
 1c2:	1c02                	slli	s8,s8,0x20
 1c4:	0004                	.insn	2, 0x0004
 1c6:	0200                	addi	s0,sp,256
 1c8:	5891                	li	a7,-28
 1ca:	0300                	addi	s0,sp,384
 1cc:	0405                	addi	s0,s0,1
 1ce:	0000                	unimp
 1d0:	014a                	slli	sp,sp,0x12
 1d2:	0100                	addi	s0,sp,128
 1d4:	659a                	.insn	2, 0x659a
 1d6:	0000                	unimp
 1d8:	1f00                	addi	s0,sp,944
 1da:	01f4                	addi	a3,sp,204
 1dc:	0000                	unimp
 1de:	1001                	c.nop	-32
 1e0:	0004                	.insn	2, 0x0004
 1e2:	6a00                	.insn	2, 0x6a00
 1e4:	0000                	unimp
 1e6:	6600                	.insn	2, 0x6600
 1e8:	0000                	unimp
 1ea:	0200                	addi	s0,sp,256
 1ec:	041c                	addi	a5,sp,512
 1ee:	0000                	unimp
 1f0:	9102                	jalr	sp
 1f2:	0054                	addi	a3,sp,4
 1f4:	00040503          	lb	a0,0(s0)
 1f8:	5c00                	lw	s0,56(s0)
 1fa:	0001                	nop
 1fc:	a701                	j	8fc <__DYNAMIC+0x8fc>
 1fe:	00000073          	ecall
 202:	1d20                	addi	s0,sp,696
 204:	0002                	c.slli	zero,0x0
 206:	0100                	addi	s0,sp,128
 208:	0410                	addi	a2,sp,512
 20a:	0000                	unimp
 20c:	0078                	addi	a4,sp,12
 20e:	0000                	unimp
 210:	0074                	addi	a3,sp,12
 212:	0000                	unimp
 214:	1c02                	slli	s8,s8,0x20
 216:	0004                	.insn	2, 0x0004
 218:	0200                	addi	s0,sp,256
 21a:	5091                	li	ra,-28
 21c:	1100                	addi	s0,sp,160
 21e:	0405                	addi	s0,s0,1
 220:	0000                	unimp
 222:	00cc                	addi	a1,sp,68
 224:	0100                	addi	s0,sp,128
 226:	cc38                	sw	a4,88(s0)
 228:	0000                	unimp
 22a:	0c01                	addi	s8,s8,0
 22c:	0000                	unimp
 22e:	0100                	addi	s0,sp,128
 230:	0318                	addi	a4,sp,384
 232:	024c                	addi	a1,sp,260
 234:	0000                	unimp
 236:	1001                	c.nop	-32
 238:	0004                	.insn	2, 0x0004
 23a:	8400                	.insn	2, 0x8400
 23c:	0000                	unimp
 23e:	8200                	.insn	2, 0x8200
 240:	0000                	unimp
 242:	0200                	addi	s0,sp,256
 244:	041c                	addi	a5,sp,512
 246:	0000                	unimp
 248:	9102                	jalr	sp
 24a:	0070                	addi	a2,sp,12
 24c:	00040503          	lb	a0,0(s0)
 250:	d800                	sw	s0,48(s0)
 252:	0000                	unimp
 254:	4501                	li	a0,0
 256:	0081                	addi	ra,ra,0
 258:	0000                	unimp
 25a:	7519                	lui	a0,0xfffe6
 25c:	0002                	c.slli	zero,0x0
 25e:	0100                	addi	s0,sp,128
 260:	0410                	addi	a2,sp,512
 262:	0000                	unimp
 264:	0090                	addi	a2,sp,64
 266:	0000                	unimp
 268:	008e                	slli	ra,ra,0x3
 26a:	0000                	unimp
 26c:	1c02                	slli	s8,s8,0x20
 26e:	0004                	.insn	2, 0x0004
 270:	0200                	addi	s0,sp,256
 272:	6c91                	lui	s9,0x4
 274:	0300                	addi	s0,sp,384
 276:	0405                	addi	s0,s0,1
 278:	0000                	unimp
 27a:	016e                	slli	sp,sp,0x1b
 27c:	0100                	addi	s0,sp,128
 27e:	8db4                	.insn	2, 0x8db4
 280:	0000                	unimp
 282:	2100                	.insn	2, 0x2100
 284:	029e                	slli	t0,t0,0x7
 286:	0000                	unimp
 288:	1001                	c.nop	-32
 28a:	0004                	.insn	2, 0x0004
 28c:	9e00                	.insn	2, 0x9e00
 28e:	0000                	unimp
 290:	9a00                	.insn	2, 0x9a00
 292:	0000                	unimp
 294:	0200                	addi	s0,sp,256
 296:	041c                	addi	a5,sp,512
 298:	0000                	unimp
 29a:	9102                	jalr	sp
 29c:	004c                	addi	a1,sp,4
 29e:	00040503          	lb	a0,0(s0)
 2a2:	e600                	.insn	2, 0xe600
 2a4:	0000                	unimp
 2a6:	5301                	li	t1,-32
 2a8:	0000009b          	.insn	4, 0x009b
 2ac:	c71a                	sw	t1,140(sp)
 2ae:	0002                	c.slli	zero,0x0
 2b0:	0100                	addi	s0,sp,128
 2b2:	0410                	addi	a2,sp,512
 2b4:	0000                	unimp
 2b6:	00aa                	slli	ra,ra,0xa
 2b8:	0000                	unimp
 2ba:	00a8                	addi	a0,sp,72
 2bc:	0000                	unimp
 2be:	1c02                	slli	s8,s8,0x20
 2c0:	0004                	.insn	2, 0x0004
 2c2:	0200                	addi	s0,sp,256
 2c4:	6891                	lui	a7,0x4
 2c6:	0300                	addi	s0,sp,384
 2c8:	0405                	addi	s0,s0,1
 2ca:	0000                	unimp
 2cc:	0180                	addi	s0,sp,192
 2ce:	0100                	addi	s0,sp,128
 2d0:	a7c1                	j	a90 <__DYNAMIC+0xa90>
 2d2:	0000                	unimp
 2d4:	2200                	.insn	2, 0x2200
 2d6:	02f0                	addi	a2,sp,332
 2d8:	0000                	unimp
 2da:	1001                	c.nop	-32
 2dc:	0004                	.insn	2, 0x0004
 2de:	b800                	.insn	2, 0xb800
 2e0:	0000                	unimp
 2e2:	b400                	.insn	2, 0xb400
 2e4:	0000                	unimp
 2e6:	0200                	addi	s0,sp,256
 2e8:	041c                	addi	a5,sp,512
 2ea:	0000                	unimp
 2ec:	9102                	jalr	sp
 2ee:	0048                	addi	a0,sp,4
 2f0:	00040503          	lb	a0,0(s0)
 2f4:	f800                	.insn	2, 0xf800
 2f6:	0000                	unimp
 2f8:	6101                	addi	sp,sp,0
 2fa:	00b5                	addi	ra,ra,13
 2fc:	0000                	unimp
 2fe:	0003191b          	.insn	4, 0x0003191b
 302:	0100                	addi	s0,sp,128
 304:	0410                	addi	a2,sp,512
 306:	0000                	unimp
 308:	00c4                	addi	s1,sp,68
 30a:	0000                	unimp
 30c:	00c2                	slli	ra,ra,0x10
 30e:	0000                	unimp
 310:	1c02                	slli	s8,s8,0x20
 312:	0004                	.insn	2, 0x0004
 314:	0200                	addi	s0,sp,256
 316:	6491                	lui	s1,0x4
 318:	0300                	addi	s0,sp,384
 31a:	0405                	addi	s0,s0,1
 31c:	0000                	unimp
 31e:	0190                	addi	a2,sp,192
 320:	0100                	addi	s0,sp,128
 322:	c1ce                	sw	s3,192(sp)
 324:	0000                	unimp
 326:	2300                	.insn	2, 0x2300
 328:	0342                	slli	t1,t1,0x10
 32a:	0000                	unimp
 32c:	1001                	c.nop	-32
 32e:	0004                	.insn	2, 0x0004
 330:	d200                	sw	s0,32(a2)
 332:	0000                	unimp
 334:	ce00                	sw	s0,24(a2)
 336:	0000                	unimp
 338:	0200                	addi	s0,sp,256
 33a:	041c                	addi	a5,sp,512
 33c:	0000                	unimp
 33e:	9102                	jalr	sp
 340:	0044                	addi	s1,sp,4
 342:	00040503          	lb	a0,0(s0)
 346:	0a00                	addi	s0,sp,272
 348:	0001                	nop
 34a:	6f01                	.insn	2, 0x6f01
 34c:	000000cf          	.insn	4, 0x00cf
 350:	6b1c                	.insn	2, 0x6b1c
 352:	01000003          	lb	zero,16(zero) # 10 <__DYNAMIC+0x10>
 356:	0410                	addi	a2,sp,512
 358:	0000                	unimp
 35a:	00de                	slli	ra,ra,0x17
 35c:	0000                	unimp
 35e:	00dc                	addi	a5,sp,68
 360:	0000                	unimp
 362:	1c02                	slli	s8,s8,0x20
 364:	0004                	.insn	2, 0x0004
 366:	0200                	addi	s0,sp,256
 368:	6091                	lui	ra,0x4
 36a:	1200                	addi	s0,sp,288
 36c:	0405                	addi	s0,s0,1
 36e:	0000                	unimp
 370:	01a0                	addi	s0,sp,200
 372:	0100                	addi	s0,sp,128
 374:	0000dedb          	.insn	4, 0xdedb
 378:	0100                	addi	s0,sp,128
 37a:	0324                	addi	s1,sp,392
 37c:	1001                	c.nop	-32
 37e:	0004                	.insn	2, 0x0004
 380:	ec00                	.insn	2, 0xec00
 382:	0000                	unimp
 384:	e800                	.insn	2, 0xe800
 386:	0000                	unimp
 388:	0200                	addi	s0,sp,256
 38a:	041c                	addi	a5,sp,512
 38c:	0000                	unimp
 38e:	9102                	jalr	sp
 390:	0040                	addi	s0,sp,4
 392:	0600                	addi	s0,sp,768
 394:	0000                	unimp
 396:	0000                	unimp
 398:	0000c003          	lbu	zero,0(ra) # 4000 <STACK_SIZE+0x3400>
 39c:	0000                	unimp
 39e:	0000                	unimp
 3a0:	0000                	unimp
 3a2:	9c01                	.insn	2, 0x9c01
 3a4:	000003b7          	lui	t2,0x0
 3a8:	6c617613          	andi	a2,sp,1734
 3ac:	0300                	addi	s0,sp,384
 3ae:	20c0                	.insn	2, 0x20c0
 3b0:	008e                	slli	ra,ra,0x3
 3b2:	0000                	unimp
 3b4:	5a01                	li	s4,-32
 3b6:	1400                	addi	s0,sp,544
 3b8:	0000000b          	.insn	4, 0x000b
 3bc:	7d13bc03          	.insn	4, 0x7d13bc03
	...
 3c8:	0000                	unimp
 3ca:	0100                	addi	s0,sp,128
 3cc:	069c                	addi	a5,sp,832
 3ce:	001d                	c.nop	7
 3d0:	0000                	unimp
 3d2:	00007103          	.insn	4, 0x7103
 3d6:	0000                	unimp
 3d8:	0000                	unimp
 3da:	0000                	unimp
 3dc:	9c01                	.insn	2, 0x9c01
 3de:	0405                	addi	s0,s0,1
 3e0:	0000                	unimp
 3e2:	2a15                	jal	516 <__DYNAMIC+0x516>
 3e4:	0001                	nop
 3e6:	0300                	addi	s0,sp,384
 3e8:	2271                	jal	574 <__DYNAMIC+0x574>
 3ea:	008e                	slli	ra,ra,0x3
 3ec:	0000                	unimp
 3ee:	00fc                	addi	a5,sp,76
 3f0:	0000                	unimp
 3f2:	00f6                	slli	ra,ra,0x1d
 3f4:	0000                	unimp
 3f6:	2505                	jal	a16 <__DYNAMIC+0xa16>
 3f8:	0001                	nop
 3fa:	0300                	addi	s0,sp,384
 3fc:	8972                	mv	s2,t3
 3fe:	0000                	unimp
 400:	0200                	addi	s0,sp,256
 402:	7c91                	lui	s9,0xfffe4
 404:	0800                	addi	s0,sp,16
 406:	0109                	addi	sp,sp,2
 408:	0000                	unimp
 40a:	04292703          	lw	a4,66(s2) # 171a0 <STACK_SIZE+0x165a0>
 40e:	0000                	unimp
 410:	2a09                	jal	522 <__DYNAMIC+0x522>
 412:	0001                	nop
 414:	0300                	addi	s0,sp,384
 416:	008e2327          	.insn	4, 0x008e2327
 41a:	0000                	unimp
 41c:	2516                	.insn	2, 0x2516
 41e:	0001                	nop
 420:	0300                	addi	s0,sp,384
 422:	1528                	addi	a0,sp,680
 424:	0089                	addi	ra,ra,2
 426:	0000                	unimp
 428:	0800                	addi	s0,sp,16
 42a:	006e                	c.slli	zero,0x1b
 42c:	0000                	unimp
 42e:	3902                	.insn	2, 0x3902
 430:	0441                	addi	s0,s0,16
 432:	0000                	unimp
 434:	3009                	jal	fffffc36 <stack+0xfeeff036>
 436:	0001                	nop
 438:	0200                	addi	s0,sp,256
 43a:	2139                	jal	848 <__DYNAMIC+0x848>
 43c:	008e                	slli	ra,ra,0x3
 43e:	0000                	unimp
 440:	0600                	addi	s0,sp,768
 442:	002a                	c.slli	zero,0xa
 444:	0000                	unimp
 446:	2d02                	.insn	2, 0x2d02
	...
 450:	9c01                	.insn	2, 0x9c01
 452:	0472                	slli	s0,s0,0x1c
 454:	0000                	unimp
 456:	300a                	.insn	2, 0x300a
 458:	0001                	nop
 45a:	2d00                	.insn	2, 0x2d00
 45c:	8e1e                	mv	t3,t2
 45e:	0000                	unimp
 460:	0100                	addi	s0,sp,128
 462:	055a                	slli	a0,a0,0x16
 464:	0125                	addi	sp,sp,9
 466:	0000                	unimp
 468:	2f02                	.insn	2, 0x2f02
 46a:	0089                	addi	ra,ra,2
 46c:	0000                	unimp
 46e:	9102                	jalr	sp
 470:	007c                	addi	a5,sp,12
 472:	1506                	slli	a0,a0,0x21
 474:	0000                	unimp
 476:	0200                	addi	s0,sp,256
 478:	001e                	c.slli	zero,0x7
 47a:	0000                	unimp
 47c:	0000                	unimp
 47e:	0000                	unimp
 480:	0100                	addi	s0,sp,128
 482:	a39c                	.insn	2, 0xa39c
 484:	0004                	.insn	2, 0x0004
 486:	0a00                	addi	s0,sp,272
 488:	0130                	addi	a2,sp,136
 48a:	0000                	unimp
 48c:	1d1e                	slli	s10,s10,0x27
 48e:	008e                	slli	ra,ra,0x3
 490:	0000                	unimp
 492:	5a01                	li	s4,-32
 494:	2505                	jal	ab4 <__DYNAMIC+0xab4>
 496:	0001                	nop
 498:	0200                	addi	s0,sp,256
 49a:	8920                	.insn	2, 0x8920
 49c:	0000                	unimp
 49e:	0200                	addi	s0,sp,256
 4a0:	7c91                	lui	s9,0xfffe4
 4a2:	1700                	addi	s0,sp,928
 4a4:	0429                	addi	s0,s0,10
	...
 4ae:	0000                	unimp
 4b0:	9c01                	.insn	2, 0x9c01
 4b2:	04be                	slli	s1,s1,0xf
 4b4:	0000                	unimp
 4b6:	3418                	.insn	2, 0x3418
 4b8:	0004                	.insn	2, 0x0004
 4ba:	0100                	addi	s0,sp,128
 4bc:	005a                	c.slli	zero,0x16
 4be:	0519                	addi	a0,a0,6 # fffe6006 <stack+0xfeee5406>
 4c0:	0004                	.insn	2, 0x0004
	...
 4ca:	0100                	addi	s0,sp,128
 4cc:	019c                	addi	a5,sp,192
 4ce:	0410                	addi	a2,sp,512
 4d0:	0000                	unimp
 4d2:	00000123          	sb	zero,2(zero) # 2 <__DYNAMIC+0x2>
 4d6:	011d                	addi	sp,sp,7
 4d8:	0000                	unimp
 4da:	1c02                	slli	s8,s8,0x20
 4dc:	0004                	.insn	2, 0x0004
 4de:	0200                	addi	s0,sp,256
 4e0:	7c91                	lui	s9,0xfffe4
 4e2:	0000                	unimp
 4e4:	001f 0000 0005      	.insn	6, 0x00050000001f
 4ea:	0401                	addi	s0,s0,0
 4ec:	01b5                	addi	gp,gp,13
 4ee:	0000                	unimp
 4f0:	cc01                	beqz	s0,508 <__DYNAMIC+0x508>
 4f2:	2c00000f          	.insn	4, 0x2c00000f
 4f6:	0001                	nop
 4f8:	4400                	lw	s0,8(s0)
 4fa:	0001                	nop
 4fc:	5200                	lw	s0,32(a2)
 4fe:	0001                	nop
 500:	8000                	.insn	2, 0x8000
 502:	0001                	nop
 504:	0100                	addi	s0,sp,128
 506:	80                	.byte	0x80

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	0501                	addi	a0,a0,0
   2:	3100                	.insn	2, 0x3100
   4:	b7170213          	addi	tp,a4,-1167
   8:	1742                	slli	a4,a4,0x30
   a:	0000                	unimp
   c:	3402                	.insn	2, 0x3402
   e:	3100                	.insn	2, 0x3100
  10:	00180213          	addi	tp,a6,1
  14:	0300                	addi	s0,sp,384
  16:	011d                	addi	sp,sp,7
  18:	1331                	addi	t1,t1,-20 # 7fffffec <stack+0x7eeff3ec>
  1a:	0152                	slli	sp,sp,0x14
  1c:	42b8                	lw	a4,64(a3)
  1e:	5817550b          	.insn	4, 0x5817550b
  22:	0121                	addi	sp,sp,8
  24:	0b59                	addi	s6,s6,22
  26:	01032157          	.insn	4, 0x01032157
  2a:	04000013          	li	zero,64
  2e:	0024                	addi	s1,sp,8
  30:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
  34:	00000e03          	lb	t3,0(zero) # 0 <__DYNAMIC>
  38:	3405                	jal	fffffa58 <stack+0xfeefee58>
  3a:	0300                	addi	s0,sp,384
  3c:	3a0e                	.insn	2, 0x3a0e
  3e:	390b3b0b          	.insn	4, 0x390b3b0b
  42:	1521                	addi	a0,a0,-24
  44:	1349                	addi	t1,t1,-14
  46:	1802                	slli	a6,a6,0x20
  48:	0000                	unimp
  4a:	2e06                	.insn	2, 0x2e06
  4c:	3f01                	jal	ffffff5c <stack+0xfeeff35c>
  4e:	0319                	addi	t1,t1,6
  50:	3a0e                	.insn	2, 0x3a0e
  52:	390b3b0b          	.insn	4, 0x390b3b0b
  56:	0621                	addi	a2,a2,8 # fffe1008 <stack+0xfeee0408>
  58:	01111927          	.insn	4, 0x01111927
  5c:	0612                	slli	a2,a2,0x4
  5e:	1840                	addi	s0,sp,52
  60:	197a                	slli	s2,s2,0x3e
  62:	1301                	addi	t1,t1,-32
  64:	0000                	unimp
  66:	03001607          	.insn	4, 0x03001607
  6a:	3a0e                	.insn	2, 0x3a0e
  6c:	390b3b0b          	.insn	4, 0x390b3b0b
  70:	0013490b          	.insn	4, 0x0013490b
  74:	0800                	addi	s0,sp,16
  76:	012e                	slli	sp,sp,0xb
  78:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
  80:	2139                	jal	48e <__DYNAMIC+0x48e>
  82:	2706                	.insn	2, 0x2706
  84:	2019                	jal	8a <__DYNAMIC+0x8a>
  86:	0121                	addi	sp,sp,8
  88:	1301                	addi	t1,t1,-32
  8a:	0000                	unimp
  8c:	0509                	addi	a0,a0,2
  8e:	0300                	addi	s0,sp,384
  90:	3a0e                	.insn	2, 0x3a0e
  92:	390b3b0b          	.insn	4, 0x390b3b0b
  96:	0013490b          	.insn	4, 0x0013490b
  9a:	0a00                	addi	s0,sp,272
  9c:	0005                	c.nop	1
  9e:	213a0e03          	lb	t3,531(s4)
  a2:	3b02                	.insn	2, 0x3b02
  a4:	490b390b          	.insn	4, 0x490b390b
  a8:	00180213          	addi	tp,a6,1
  ac:	0b00                	addi	s0,sp,400
  ae:	0111                	addi	sp,sp,4
  b0:	0e25                	addi	t3,t3,9
  b2:	01900b13          	li	s6,25
  b6:	0601910b          	.insn	4, 0x0601910b
  ba:	1f1b1f03          	lh	t5,497(s6)
  be:	1755                	addi	a4,a4,-11
  c0:	0111                	addi	sp,sp,4
  c2:	1710                	addi	a2,sp,928
  c4:	0000                	unimp
  c6:	240c                	.insn	2, 0x240c
  c8:	0b00                	addi	s0,sp,400
  ca:	030b3e0b          	.insn	4, 0x030b3e0b
  ce:	0008                	.insn	2, 0x0008
  d0:	0d00                	addi	s0,sp,656
  d2:	0035                	c.nop	13
  d4:	1349                	addi	t1,t1,-14
  d6:	0000                	unimp
  d8:	260e                	.insn	2, 0x260e
  da:	4900                	lw	s0,16(a0)
  dc:	0f000013          	li	zero,240
  e0:	012e                	slli	sp,sp,0xb
  e2:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
  ea:	0b39                	addi	s6,s6,14
  ec:	13491927          	.insn	4, 0x13491927
  f0:	0111                	addi	sp,sp,4
  f2:	0612                	slli	a2,a2,0x4
  f4:	1840                	addi	s0,sp,52
  f6:	197a                	slli	s2,s2,0x3e
  f8:	1301                	addi	t1,t1,-32
  fa:	0000                	unimp
  fc:	3410                	.insn	2, 0x3410
  fe:	0300                	addi	s0,sp,384
 100:	3a08                	.insn	2, 0x3a08
 102:	390b3b0b          	.insn	4, 0x390b3b0b
 106:	0213490b          	.insn	4, 0x0213490b
 10a:	1742b717          	auipc	a4,0x1742b
 10e:	0000                	unimp
 110:	1d11                	addi	s10,s10,-28
 112:	3101                	jal	fffffd12 <stack+0xfeeff112>
 114:	b8015213          	.insn	4, 0xb8015213
 118:	0b42                	slli	s6,s6,0x10
 11a:	0111                	addi	sp,sp,4
 11c:	0612                	slli	a2,a2,0x4
 11e:	0b58                	addi	a4,sp,404
 120:	0b59                	addi	s6,s6,22
 122:	13010b57          	.insn	4, 0x13010b57
 126:	0000                	unimp
 128:	1d12                	slli	s10,s10,0x24
 12a:	3101                	jal	fffffd2a <stack+0xfeeff12a>
 12c:	b8015213          	.insn	4, 0xb8015213
 130:	0b42                	slli	s6,s6,0x10
 132:	1755                	addi	a4,a4,-11 # 1742b0ff <stack+0x1632a4ff>
 134:	0b58                	addi	a4,sp,404
 136:	0b59                	addi	s6,s6,22
 138:	00000b57          	.insn	4, 0x0b57
 13c:	03000513          	li	a0,48
 140:	3a08                	.insn	2, 0x3a08
 142:	390b3b0b          	.insn	4, 0x390b3b0b
 146:	0213490b          	.insn	4, 0x0213490b
 14a:	0018                	.insn	2, 0x0018
 14c:	1400                	addi	s0,sp,544
 14e:	002e                	c.slli	zero,0xb
 150:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 158:	0b39                	addi	s6,s6,14
 15a:	13491927          	.insn	4, 0x13491927
 15e:	0111                	addi	sp,sp,4
 160:	0612                	slli	a2,a2,0x4
 162:	1840                	addi	s0,sp,52
 164:	197a                	slli	s2,s2,0x3e
 166:	0000                	unimp
 168:	0515                	addi	a0,a0,5
 16a:	0300                	addi	s0,sp,384
 16c:	3a0e                	.insn	2, 0x3a0e
 16e:	390b3b0b          	.insn	4, 0x390b3b0b
 172:	0213490b          	.insn	4, 0x0213490b
 176:	1742b717          	auipc	a4,0x1742b
 17a:	0000                	unimp
 17c:	3416                	.insn	2, 0x3416
 17e:	0300                	addi	s0,sp,384
 180:	3a0e                	.insn	2, 0x3a0e
 182:	390b3b0b          	.insn	4, 0x390b3b0b
 186:	0013490b          	.insn	4, 0x0013490b
 18a:	1700                	addi	s0,sp,928
 18c:	012e                	slli	sp,sp,0xb
 18e:	1331                	addi	t1,t1,-20
 190:	0111                	addi	sp,sp,4
 192:	0612                	slli	a2,a2,0x4
 194:	1840                	addi	s0,sp,52
 196:	197a                	slli	s2,s2,0x3e
 198:	1301                	addi	t1,t1,-32
 19a:	0000                	unimp
 19c:	0518                	addi	a4,sp,640
 19e:	3100                	.insn	2, 0x3100
 1a0:	00180213          	addi	tp,a6,1
 1a4:	1900                	addi	s0,sp,176
 1a6:	012e                	slli	sp,sp,0xb
 1a8:	1331                	addi	t1,t1,-20
 1aa:	0111                	addi	sp,sp,4
 1ac:	0612                	slli	a2,a2,0x4
 1ae:	1840                	addi	s0,sp,52
 1b0:	197a                	slli	s2,s2,0x3e
 1b2:	0000                	unimp
 1b4:	0100                	addi	s0,sp,128
 1b6:	0011                	c.nop	4
 1b8:	1710                	addi	a2,sp,928
 1ba:	1755                	addi	a4,a4,-11 # 1742b16b <stack+0x1632a56b>
 1bc:	0e1b0e03          	lb	t3,225(s6)
 1c0:	0e25                	addi	t3,t3,9
 1c2:	00000513          	li	a0,0
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
   0:	0140                	addi	s0,sp,132
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	01f001ef          	jal	gp,82a <__DYNAMIC+0x82a>
  10:	b808                	.insn	2, 0xb808
  12:	0001                	nop
  14:	0001                	nop
  16:	3002                	.insn	2, 0x3002
  18:	009f 0702 8c08      	.insn	6, 0x8c080702009f
  1e:	0000                	unimp
  20:	0c01                	addi	s8,s8,0
  22:	9fff0903          	lb	s2,-1537(t5)
  26:	0900                	addi	s0,sp,144
  28:	0818                	addi	a4,sp,16
  2a:	0098                	addi	a4,sp,64
  2c:	0100                	addi	s0,sp,128
  2e:	0216                	slli	tp,tp,0x5
  30:	9f30                	.insn	2, 0x9f30
  32:	1a00                	addi	s0,sp,304
  34:	0829                	addi	a6,a6,10
  36:	00ae                	slli	ra,ra,0xb
  38:	0100                	addi	s0,sp,128
  3a:	0212                	slli	tp,tp,0x4
  3c:	9f31                	.insn	2, 0x9f31
  3e:	2b00                	.insn	2, 0x2b00
  40:	0836                	slli	a6,a6,0xd
  42:	00c0                	addi	s0,sp,68
  44:	0100                	addi	s0,sp,128
  46:	020c                	addi	a1,sp,256
  48:	9f32                	add	t5,t5,a2
  4a:	7f00                	.insn	2, 0x7f00
  4c:	2408018b          	.insn	4, 0x2408018b
  50:	0001                	nop
  52:	1401                	addi	s0,s0,-32
  54:	3802                	.insn	2, 0x3802
  56:	009f 018d 0198      	.insn	6, 0x0198018d009f
  5c:	3808                	.insn	2, 0x3808
  5e:	0001                	nop
  60:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  62:	3902                	.insn	2, 0x3902
  64:	009f 019a 01a5      	.insn	6, 0x01a5019a009f
  6a:	4a08                	lw	a0,16(a2)
  6c:	0001                	nop
  6e:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  70:	3a02                	.insn	2, 0x3a02
  72:	009f 01a7 01b2      	.insn	6, 0x01b201a7009f
  78:	5c08                	lw	a0,56(s0)
  7a:	0001                	nop
  7c:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  7e:	3b02                	.insn	2, 0x3b02
  80:	009f 4338 cc08      	.insn	6, 0xcc084338009f
  86:	0000                	unimp
  88:	0c01                	addi	s8,s8,0
  8a:	3302                	.insn	2, 0x3302
  8c:	009f 5145 d808      	.insn	6, 0xd8085145009f
  92:	0000                	unimp
  94:	0e01                	addi	t3,t3,0
  96:	3402                	.insn	2, 0x3402
  98:	009f 01b4 01bf      	.insn	6, 0x01bf01b4009f
  9e:	6e08                	.insn	2, 0x6e08
  a0:	0001                	nop
  a2:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  a4:	3c02                	.insn	2, 0x3c02
  a6:	009f 5f53 e608      	.insn	6, 0xe6085f53009f
  ac:	0000                	unimp
  ae:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  b0:	3502                	.insn	2, 0x3502
  b2:	009f 01c1 01cc      	.insn	6, 0x01cc01c1009f
  b8:	8008                	.insn	2, 0x8008
  ba:	0001                	nop
  bc:	1001                	c.nop	-32
  be:	3d02                	.insn	2, 0x3d02
  c0:	009f 6d61 f808      	.insn	6, 0xf8086d61009f
  c6:	0000                	unimp
  c8:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  ca:	3602                	.insn	2, 0x3602
  cc:	009f 01ce 01d9      	.insn	6, 0x01d901ce009f
  d2:	9008                	.insn	2, 0x9008
  d4:	0001                	nop
  d6:	1001                	c.nop	-32
  d8:	3e02                	.insn	2, 0x3e02
  da:	009f 7d6f 0a08      	.insn	6, 0x0a087d6f009f
  e0:	0001                	nop
  e2:	1a01                	addi	s4,s4,-32
  e4:	3702                	.insn	2, 0x3702
  e6:	009f 01db 01e6      	.insn	6, 0x01e601db009f
  ec:	a008                	.insn	2, 0xa008
  ee:	0001                	nop
  f0:	1001                	c.nop	-32
  f2:	3f02                	.insn	2, 0x3f02
  f4:	009f 0500 7705      	.insn	6, 0x77050500009f
  fa:	00060077          	.insn	4, 0x00060077
  fe:	0000                	unimp
 100:	0400                	addi	s0,sp,512
 102:	1400                	addi	s0,sp,544
 104:	5a01                	li	s4,-32
 106:	1404                	addi	s1,sp,544
 108:	02e8                	addi	a0,sp,332
 10a:	a30a                	.insn	2, 0xa30a
 10c:	2b0aa503          	lw	a0,688(s5)
 110:	32a8                	.insn	2, 0x32a8
 112:	00a8                	addi	a0,sp,72
 114:	049f 02e8 02ec      	.insn	6, 0x02ec02e8049f
 11a:	5a01                	li	s4,-32
 11c:	0000                	unimp
 11e:	0505                	addi	a0,a0,1
 120:	06007777          	.insn	4, 0x06007777
 124:	0000                	unimp
 126:	0000                	unimp
 128:	0004                	.insn	2, 0x0004
 12a:	0114                	addi	a3,sp,128
 12c:	045a                	slli	s0,s0,0x16
 12e:	c814                	sw	a3,16(s0)
 130:	0a02                	c.slli	s4,0x0
 132:	0aa503a3          	sb	a0,167(a0)
 136:	a832a82b          	.insn	4, 0xa832a82b
 13a:	9f00                	.insn	2, 0x9f00
 13c:	c804                	sw	s1,16(s0)
 13e:	cc02                	sw	zero,24(sp)
 140:	0102                	c.slli	sp,0x0
 142:	005a                	c.slli	zero,0x16

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0054                	addi	a3,sp,4
   2:	0000                	unimp
   4:	0002                	c.slli	zero,0x0
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0004                	.insn	2, 0x0004
	...
  48:	008c                	addi	a1,sp,64
  4a:	0100                	addi	s0,sp,128
  4c:	013e                	slli	sp,sp,0xf
	...
  56:	0000                	unimp
  58:	0024                	addi	s1,sp,8
  5a:	0000                	unimp
  5c:	0002                	c.slli	zero,0x0
  5e:	04e4                	addi	s1,sp,588
  60:	0000                	unimp
  62:	0004                	.insn	2, 0x0004
  64:	0000                	unimp
  66:	0000                	unimp
  68:	01ca                	slli	gp,gp,0x12
  6a:	0100                	addi	s0,sp,128
  6c:	0030                	addi	a2,sp,8
  6e:	0000                	unimp
  70:	0000                	unimp
  72:	0100                	addi	s0,sp,128
  74:	008c                	addi	a1,sp,64
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	011c                	addi	a5,sp,128
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	8c05                	sub	s0,s0,s1
   e:	0000                	unimp
  10:	0401                	addi	s0,s0,0
  12:	0600                	addi	s0,sp,768
  14:	0804                	addi	s1,sp,16
  16:	000c                	.insn	2, 0x000c
  18:	9805                	andi	s0,s0,-31
  1a:	0000                	unimp
  1c:	0401                	addi	s0,s0,0
  1e:	0800                	addi	s0,sp,16
  20:	0a04                	addi	s1,sp,272
  22:	040e                	slli	s0,s0,0x3
  24:	1612                	slli	a2,a2,0x24
  26:	0500                	addi	s0,sp,640
  28:	00a0                	addi	s0,sp,72
  2a:	0100                	addi	s0,sp,128
  2c:	0004                	.insn	2, 0x0004
  2e:	0402                	c.slli	s0,0x0
  30:	120e                	slli	tp,tp,0x23
  32:	1604                	addi	s1,sp,800
  34:	041a                	slli	s0,s0,0x6
  36:	201c                	.insn	2, 0x201c
  38:	0500                	addi	s0,sp,640
  3a:	00a6                	slli	ra,ra,0x9
  3c:	0100                	addi	s0,sp,128
  3e:	0004                	.insn	2, 0x0004
  40:	0402                	c.slli	s0,0x0
  42:	261a                	.insn	2, 0x261a
  44:	0500                	addi	s0,sp,640
  46:	00a8                	addi	a0,sp,72
  48:	0100                	addi	s0,sp,128
  4a:	0004                	.insn	2, 0x0004
  4c:	0402                	c.slli	s0,0x0
  4e:	827c                	.insn	2, 0x827c
  50:	0401                	addi	s0,s0,0
  52:	0184                	addi	s1,sp,192
  54:	0190                	addi	a2,sp,192
  56:	0500                	addi	s0,sp,640
  58:	00b2                	slli	ra,ra,0xc
  5a:	0100                	addi	s0,sp,128
  5c:	0004                	.insn	2, 0x0004
  5e:	0402                	c.slli	s0,0x0
  60:	0186                	slli	gp,gp,0x1
  62:	0198                	addi	a4,sp,192
  64:	0500                	addi	s0,sp,640
  66:	00b4                	addi	a3,sp,72
  68:	0100                	addi	s0,sp,128
  6a:	0004                	.insn	2, 0x0004
  6c:	0402                	c.slli	s0,0x0
  6e:	0196                	slli	gp,gp,0x5
  70:	01a8                	addi	a0,sp,200
  72:	0500                	addi	s0,sp,640
  74:	00ba                	slli	ra,ra,0xe
  76:	0100                	addi	s0,sp,128
  78:	0004                	.insn	2, 0x0004
  7a:	0402                	c.slli	s0,0x0
  7c:	01a2                	slli	gp,gp,0x8
  7e:	01b4                	addi	a3,sp,200
  80:	0500                	addi	s0,sp,640
  82:	00d8                	addi	a4,sp,68
  84:	0100                	addi	s0,sp,128
  86:	0004                	.insn	2, 0x0004
  88:	0404                	addi	s1,sp,512
  8a:	0e06                	slli	t3,t3,0x1
  8c:	0500                	addi	s0,sp,640
  8e:	00dc                	addi	a5,sp,68
  90:	0100                	addi	s0,sp,128
  92:	0004                	.insn	2, 0x0004
  94:	0402                	c.slli	s0,0x0
  96:	0192                	slli	gp,gp,0x4
  98:	01a4                	addi	s1,sp,200
  9a:	0500                	addi	s0,sp,640
  9c:	00e6                	slli	ra,ra,0x19
  9e:	0100                	addi	s0,sp,128
  a0:	0004                	.insn	2, 0x0004
  a2:	0406                	slli	s0,s0,0x1
  a4:	1208                	addi	a0,sp,288
  a6:	0500                	addi	s0,sp,640
  a8:	00ec                	addi	a1,sp,76
  aa:	0100                	addi	s0,sp,128
  ac:	0004                	.insn	2, 0x0004
  ae:	0402                	c.slli	s0,0x0
  b0:	0194                	addi	a3,sp,192
  b2:	01a4                	addi	s1,sp,200
  b4:	0500                	addi	s0,sp,640
  b6:	00f8                	addi	a4,sp,76
  b8:	0100                	addi	s0,sp,128
  ba:	0004                	.insn	2, 0x0004
  bc:	0406                	slli	s0,s0,0x1
  be:	1208                	addi	a0,sp,288
  c0:	0500                	addi	s0,sp,640
  c2:	00fe                	slli	ra,ra,0x1f
  c4:	0100                	addi	s0,sp,128
  c6:	0004                	.insn	2, 0x0004
  c8:	0402                	c.slli	s0,0x0
  ca:	0192                	slli	gp,gp,0x4
  cc:	01a2                	slli	gp,gp,0x8
  ce:	0500                	addi	s0,sp,640
  d0:	010a                	slli	sp,sp,0x2
  d2:	0100                	addi	s0,sp,128
  d4:	0004                	.insn	2, 0x0004
  d6:	0406                	slli	s0,s0,0x1
  d8:	0c08                	addi	a0,sp,528
  da:	1204                	addi	s1,sp,288
  dc:	001a                	c.slli	zero,0x6
  de:	1005                	c.nop	-31
  e0:	0001                	nop
  e2:	0401                	addi	s0,s0,0
  e4:	0200                	addi	s0,sp,256
  e6:	9004                	.insn	2, 0x9004
  e8:	a001                	j	e8 <__DYNAMIC+0xe8>
  ea:	0001                	nop
  ec:	00000007          	.insn	4, 0x0007
  f0:	3a00                	.insn	2, 0x3a00
  f2:	00000007          	.insn	4, 0x0007
  f6:	4400                	lw	s0,8(s0)
  f8:	00000007          	.insn	4, 0x0007
  fc:	0800                	addi	s0,sp,16
  fe:	00000007          	.insn	4, 0x0007
 102:	cc00                	sw	s0,24(s0)
 104:	0702                	c.slli	a4,0x0
 106:	0000                	unimp
 108:	0000                	unimp
 10a:	02ec                	addi	a1,sp,332
 10c:	00000007          	.insn	4, 0x0007
 110:	0800                	addi	s0,sp,16
 112:	00000007          	.insn	4, 0x0007
 116:	0800                	addi	s0,sp,16
 118:	00008c07          	.insn	4, 0x8c07
 11c:	be01                	j	fffffc2c <stack+0xfeeff02c>
 11e:	0002                	c.slli	zero,0x0
 120:	0016                	c.slli	zero,0x5
 122:	0000                	unimp
 124:	0005                	c.nop	1
 126:	0004                	.insn	2, 0x0004
 128:	0000                	unimp
 12a:	0000                	unimp
 12c:	0001ca07          	.insn	4, 0x0001ca07
 130:	3001                	jal	fffff930 <stack+0xfeefed30>
 132:	00000007          	.insn	4, 0x0007
 136:	8c01                	sub	s0,s0,s0
 138:	0001                	nop

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0fc8                	addi	a0,sp,980
       2:	0000                	unimp
       4:	0005                	c.nop	1
       6:	0004                	.insn	2, 0x0004
       8:	004e                	c.slli	zero,0x13
       a:	0000                	unimp
       c:	0101                	addi	sp,sp,0
       e:	f601                	bnez	a2,ffffff16 <stack+0xfeeff316>
      10:	0df2                	slli	s11,s11,0x1c
      12:	0100                	addi	s0,sp,128
      14:	0101                	addi	sp,sp,0
      16:	0001                	nop
      18:	0000                	unimp
      1a:	0001                	nop
      1c:	0100                	addi	s0,sp,128
      1e:	0101                	addi	sp,sp,0
      20:	051f 010f 0000      	.insn	6, 0x010f051f
      26:	000a                	c.slli	zero,0x2
      28:	0000                	unimp
      2a:	002c                	addi	a1,sp,8
      2c:	0000                	unimp
      2e:	009a                	slli	ra,ra,0x6
      30:	0000                	unimp
      32:	0010                	.insn	2, 0x0010
      34:	0000                	unimp
      36:	0102                	c.slli	sp,0x0
      38:	021f 060b 001e      	.insn	6, 0x001e060b021f
      3e:	0000                	unimp
      40:	2400                	.insn	2, 0x2400
      42:	0000                	unimp
      44:	0100                	addi	s0,sp,128
      46:	0104                	addi	s1,sp,128
      48:	0000                	unimp
      4a:	1704                	addi	s1,sp,928
      4c:	0000                	unimp
      4e:	0400                	addi	s0,sp,512
      50:	013d                	addi	sp,sp,15
      52:	0000                	unimp
      54:	0002                	c.slli	zero,0x0
      56:	0000                	unimp
      58:	0300                	addi	s0,sp,384
      5a:	0500                	addi	s0,sp,640
      5c:	0002                	c.slli	zero,0x0
      5e:	0000                	unimp
      60:	0400                	addi	s0,sp,512
      62:	3402                	.insn	2, 0x3402
      64:	2705                	jal	784 <__DYNAMIC+0x784>
      66:	0009                	c.nop	2
      68:	1900                	addi	s0,sp,176
      6a:	0305                	addi	t1,t1,1
      6c:	0009                	c.nop	2
      6e:	0600                	addi	s0,sp,768
      70:	0501                	addi	a0,a0,0
      72:	091c                	addi	a5,sp,144
      74:	0000                	unimp
      76:	0515                	addi	a0,a0,5
      78:	00000927          	.insn	4, 0x0927
      7c:	091b051b          	.insn	4, 0x091b051b
      80:	0000                	unimp
      82:	0515                	addi	a0,a0,5
      84:	0915                	addi	s2,s2,5
      86:	0000                	unimp
      88:	1906                	slli	s2,s2,0x21
      8a:	0305                	addi	t1,t1,1
      8c:	0009                	c.nop	2
      8e:	0600                	addi	s0,sp,768
      90:	0501                	addi	a0,a0,0
      92:	00000917          	auipc	s2,0x0
      96:	0501                	addi	a0,a0,0
      98:	0000091b          	.insn	4, 0x091b
      9c:	0519                	addi	a0,a0,6
      9e:	090a                	slli	s2,s2,0x2
      a0:	0000                	unimp
      a2:	0515                	addi	a0,a0,5
      a4:	00000917          	auipc	s2,0x0
      a8:	0501                	addi	a0,a0,0
      aa:	0000090f          	.insn	4, 0x090f
      ae:	1906                	slli	s2,s2,0x21
      b0:	0305                	addi	t1,t1,1
      b2:	0009                	c.nop	2
      b4:	0600                	addi	s0,sp,768
      b6:	0501                	addi	a0,a0,0
      b8:	090a                	slli	s2,s2,0x2
      ba:	0000                	unimp
      bc:	0519                	addi	a0,a0,6
      be:	0918                	addi	a4,sp,144
      c0:	0000                	unimp
      c2:	0515                	addi	a0,a0,5
      c4:	0908                	addi	a0,sp,144
      c6:	0000                	unimp
      c8:	1906                	slli	s2,s2,0x21
      ca:	0305                	addi	t1,t1,1
      cc:	0009                	c.nop	2
      ce:	0600                	addi	s0,sp,768
      d0:	0501                	addi	a0,a0,0
      d2:	0914                	addi	a3,sp,144
      d4:	0000                	unimp
      d6:	0501                	addi	a0,a0,0
      d8:	0924                	addi	s1,sp,152
      da:	0000                	unimp
      dc:	0501                	addi	a0,a0,0
      de:	090c                	addi	a1,sp,144
      e0:	0000                	unimp
      e2:	1906                	slli	s2,s2,0x21
      e4:	0305                	addi	t1,t1,1
      e6:	0009                	c.nop	2
      e8:	0600                	addi	s0,sp,768
      ea:	0501                	addi	a0,a0,0
      ec:	090a                	slli	s2,s2,0x2
      ee:	0000                	unimp
      f0:	0501                	addi	a0,a0,0
      f2:	0908                	addi	a0,sp,144
      f4:	0000                	unimp
      f6:	1906                	slli	s2,s2,0x21
      f8:	0305                	addi	t1,t1,1
      fa:	0009                	c.nop	2
      fc:	0600                	addi	s0,sp,768
      fe:	0501                	addi	a0,a0,0
     100:	00000917          	auipc	s2,0x0
     104:	0501                	addi	a0,a0,0
     106:	0000090f          	.insn	4, 0x090f
     10a:	0518                	addi	a4,sp,640
     10c:	0001                	nop
     10e:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     110:	0000                	unimp
     112:	0000                	unimp
     114:	0100                	addi	s0,sp,128
     116:	0001                	nop
     118:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     11a:	0000                	unimp
     11c:	0000                	unimp
     11e:	0204                	addi	s1,sp,256
     120:	09280543          	.insn	4, 0x09280543
     124:	0000                	unimp
     126:	0519                	addi	a0,a0,6
     128:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     12c:	1506                	slli	a0,a0,0x21
     12e:	2805                	jal	15e <__DYNAMIC+0x15e>
     130:	0009                	c.nop	2
     132:	1900                	addi	s0,sp,176
     134:	1505                	addi	a0,a0,-31
     136:	0009                	c.nop	2
     138:	0600                	addi	s0,sp,768
     13a:	0519                	addi	a0,a0,6
     13c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     140:	0106                	slli	sp,sp,0x1
     142:	0a05                	addi	s4,s4,1
     144:	0009                	c.nop	2
     146:	1800                	addi	s0,sp,48
     148:	1d05                	addi	s10,s10,-31
     14a:	0009                	c.nop	2
     14c:	1600                	addi	s0,sp,800
     14e:	0805                	addi	a6,a6,1
     150:	0009                	c.nop	2
     152:	0600                	addi	s0,sp,768
     154:	0518                	addi	a4,sp,640
     156:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     15a:	0106                	slli	sp,sp,0x1
     15c:	1705                	addi	a4,a4,-31
     15e:	0009                	c.nop	2
     160:	0100                	addi	s0,sp,128
     162:	1905                	addi	s2,s2,-31 # e1 <__DYNAMIC+0xe1>
     164:	0009                	c.nop	2
     166:	1800                	addi	s0,sp,48
     168:	0a05                	addi	s4,s4,1
     16a:	0009                	c.nop	2
     16c:	1600                	addi	s0,sp,800
     16e:	1705                	addi	a4,a4,-31
     170:	0009                	c.nop	2
     172:	0100                	addi	s0,sp,128
     174:	0f05                	addi	t5,t5,1
     176:	0009                	c.nop	2
     178:	0600                	addi	s0,sp,768
     17a:	0518                	addi	a4,sp,640
     17c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     180:	0106                	slli	sp,sp,0x1
     182:	0a05                	addi	s4,s4,1
     184:	0009                	c.nop	2
     186:	1800                	addi	s0,sp,48
     188:	1905                	addi	s2,s2,-31
     18a:	0009                	c.nop	2
     18c:	1600                	addi	s0,sp,800
     18e:	0805                	addi	a6,a6,1
     190:	0009                	c.nop	2
     192:	0600                	addi	s0,sp,768
     194:	0518                	addi	a4,sp,640
     196:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     19a:	0106                	slli	sp,sp,0x1
     19c:	1305                	addi	t1,t1,-31
     19e:	0009                	c.nop	2
     1a0:	0100                	addi	s0,sp,128
     1a2:	1505                	addi	a0,a0,-31
     1a4:	0009                	c.nop	2
     1a6:	0100                	addi	s0,sp,128
     1a8:	1305                	addi	t1,t1,-31
     1aa:	0009                	c.nop	2
     1ac:	0100                	addi	s0,sp,128
     1ae:	0c05                	addi	s8,s8,1
     1b0:	0009                	c.nop	2
     1b2:	0600                	addi	s0,sp,768
     1b4:	0518                	addi	a4,sp,640
     1b6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     1ba:	0106                	slli	sp,sp,0x1
     1bc:	0a05                	addi	s4,s4,1
     1be:	0009                	c.nop	2
     1c0:	0100                	addi	s0,sp,128
     1c2:	0805                	addi	a6,a6,1
     1c4:	0009                	c.nop	2
     1c6:	0600                	addi	s0,sp,768
     1c8:	0518                	addi	a4,sp,640
     1ca:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     1ce:	0106                	slli	sp,sp,0x1
     1d0:	1705                	addi	a4,a4,-31
     1d2:	0009                	c.nop	2
     1d4:	0100                	addi	s0,sp,128
     1d6:	0f05                	addi	t5,t5,1
     1d8:	0009                	c.nop	2
     1da:	1800                	addi	s0,sp,48
     1dc:	0105                	addi	sp,sp,1
     1de:	0500                	addi	s0,sp,640
     1e0:	0002                	c.slli	zero,0x0
     1e2:	0000                	unimp
     1e4:	0000                	unimp
     1e6:	0101                	addi	sp,sp,0
     1e8:	0500                	addi	s0,sp,640
     1ea:	0002                	c.slli	zero,0x0
     1ec:	0000                	unimp
     1ee:	0400                	addi	s0,sp,512
     1f0:	4f02                	lw	t5,0(sp)
     1f2:	2b05                	jal	722 <__DYNAMIC+0x722>
     1f4:	0009                	c.nop	2
     1f6:	1900                	addi	s0,sp,176
     1f8:	0305                	addi	t1,t1,1
     1fa:	0009                	c.nop	2
     1fc:	0600                	addi	s0,sp,768
     1fe:	0501                	addi	a0,a0,0
     200:	090d                	addi	s2,s2,3
     202:	0000                	unimp
     204:	0518                	addi	a4,sp,640
     206:	0001                	nop
     208:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     20a:	0000                	unimp
     20c:	0000                	unimp
     20e:	0100                	addi	s0,sp,128
     210:	0001                	nop
     212:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     214:	0000                	unimp
     216:	0000                	unimp
     218:	0304                	addi	s1,sp,384
     21a:	053d                	addi	a0,a0,15
     21c:	0929                	addi	s2,s2,10
     21e:	0000                	unimp
     220:	0518                	addi	a4,sp,640
     222:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     226:	1606                	slli	a2,a2,0x21
     228:	2905                	jal	658 <__DYNAMIC+0x658>
     22a:	0009                	c.nop	2
     22c:	1800                	addi	s0,sp,48
     22e:	1505                	addi	a0,a0,-31
     230:	0009                	c.nop	2
     232:	0600                	addi	s0,sp,768
     234:	0518                	addi	a4,sp,640
     236:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     23a:	0106                	slli	sp,sp,0x1
     23c:	0305                	addi	t1,t1,1
     23e:	0009                	c.nop	2
     240:	0600                	addi	s0,sp,768
     242:	0552                	slli	a0,a0,0x14
     244:	00000907          	.insn	4, 0x0907
     248:	0106                	slli	sp,sp,0x1
     24a:	0e05                	addi	t3,t3,1
     24c:	0009                	c.nop	2
     24e:	0100                	addi	s0,sp,128
     250:	0c05                	addi	s8,s8,1
     252:	0009                	c.nop	2
     254:	0600                	addi	s0,sp,768
     256:	0518                	addi	a4,sp,640
     258:	00000907          	.insn	4, 0x0907
     25c:	0106                	slli	sp,sp,0x1
     25e:	1e05                	addi	t3,t3,-31
     260:	0009                	c.nop	2
     262:	0100                	addi	s0,sp,128
     264:	1605                	addi	a2,a2,-31
     266:	0009                	c.nop	2
     268:	0600                	addi	s0,sp,768
     26a:	0518                	addi	a4,sp,640
     26c:	00000907          	.insn	4, 0x0907
     270:	2006                	.insn	2, 0x2006
     272:	0105                	addi	sp,sp,1
     274:	0009                	c.nop	2
     276:	0600                	addi	s0,sp,768
     278:	0510                	addi	a2,sp,640
     27a:	00000907          	.insn	4, 0x0907
     27e:	0106                	slli	sp,sp,0x1
     280:	0e05                	addi	t3,t3,1
     282:	0009                	c.nop	2
     284:	0100                	addi	s0,sp,128
     286:	0c05                	addi	s8,s8,1
     288:	0009                	c.nop	2
     28a:	0600                	addi	s0,sp,768
     28c:	0518                	addi	a4,sp,640
     28e:	00000907          	.insn	4, 0x0907
     292:	0106                	slli	sp,sp,0x1
     294:	1e05                	addi	t3,t3,-31
     296:	0009                	c.nop	2
     298:	0100                	addi	s0,sp,128
     29a:	1605                	addi	a2,a2,-31
     29c:	0009                	c.nop	2
     29e:	0600                	addi	s0,sp,768
     2a0:	0518                	addi	a4,sp,640
     2a2:	00000907          	.insn	4, 0x0907
     2a6:	05014203          	lbu	tp,80(sp)
     2aa:	00000907          	.insn	4, 0x0907
     2ae:	0106                	slli	sp,sp,0x1
     2b0:	0e05                	addi	t3,t3,1
     2b2:	0009                	c.nop	2
     2b4:	0100                	addi	s0,sp,128
     2b6:	0c05                	addi	s8,s8,1
     2b8:	0009                	c.nop	2
     2ba:	0600                	addi	s0,sp,768
     2bc:	0518                	addi	a4,sp,640
     2be:	00000907          	.insn	4, 0x0907
     2c2:	0106                	slli	sp,sp,0x1
     2c4:	1d05                	addi	s10,s10,-31
     2c6:	0009                	c.nop	2
     2c8:	0100                	addi	s0,sp,128
     2ca:	1505                	addi	a0,a0,-31
     2cc:	0009                	c.nop	2
     2ce:	0600                	addi	s0,sp,768
     2d0:	0518                	addi	a4,sp,640
     2d2:	00000907          	.insn	4, 0x0907
     2d6:	0519                	addi	a0,a0,6
     2d8:	00000907          	.insn	4, 0x0907
     2dc:	0106                	slli	sp,sp,0x1
     2de:	0e05                	addi	t3,t3,1
     2e0:	0009                	c.nop	2
     2e2:	0100                	addi	s0,sp,128
     2e4:	0c05                	addi	s8,s8,1
     2e6:	0009                	c.nop	2
     2e8:	0600                	addi	s0,sp,768
     2ea:	0518                	addi	a4,sp,640
     2ec:	00000907          	.insn	4, 0x0907
     2f0:	0106                	slli	sp,sp,0x1
     2f2:	1d05                	addi	s10,s10,-31
     2f4:	0009                	c.nop	2
     2f6:	0100                	addi	s0,sp,128
     2f8:	1505                	addi	a0,a0,-31
     2fa:	0009                	c.nop	2
     2fc:	0600                	addi	s0,sp,768
     2fe:	0518                	addi	a4,sp,640
     300:	00000907          	.insn	4, 0x0907
     304:	0519                	addi	a0,a0,6
     306:	00000907          	.insn	4, 0x0907
     30a:	0106                	slli	sp,sp,0x1
     30c:	0e05                	addi	t3,t3,1
     30e:	0009                	c.nop	2
     310:	0100                	addi	s0,sp,128
     312:	0c05                	addi	s8,s8,1
     314:	0009                	c.nop	2
     316:	0600                	addi	s0,sp,768
     318:	0518                	addi	a4,sp,640
     31a:	00000907          	.insn	4, 0x0907
     31e:	0106                	slli	sp,sp,0x1
     320:	1d05                	addi	s10,s10,-31
     322:	0009                	c.nop	2
     324:	0100                	addi	s0,sp,128
     326:	1505                	addi	a0,a0,-31
     328:	0009                	c.nop	2
     32a:	0600                	addi	s0,sp,768
     32c:	0518                	addi	a4,sp,640
     32e:	00000907          	.insn	4, 0x0907
     332:	0519                	addi	a0,a0,6
     334:	00000907          	.insn	4, 0x0907
     338:	0106                	slli	sp,sp,0x1
     33a:	0e05                	addi	t3,t3,1
     33c:	0009                	c.nop	2
     33e:	0100                	addi	s0,sp,128
     340:	0c05                	addi	s8,s8,1
     342:	0009                	c.nop	2
     344:	0600                	addi	s0,sp,768
     346:	0518                	addi	a4,sp,640
     348:	00000907          	.insn	4, 0x0907
     34c:	0106                	slli	sp,sp,0x1
     34e:	1d05                	addi	s10,s10,-31
     350:	0009                	c.nop	2
     352:	0100                	addi	s0,sp,128
     354:	1505                	addi	a0,a0,-31
     356:	0009                	c.nop	2
     358:	0600                	addi	s0,sp,768
     35a:	0518                	addi	a4,sp,640
     35c:	00000907          	.insn	4, 0x0907
     360:	0519                	addi	a0,a0,6
     362:	00000907          	.insn	4, 0x0907
     366:	0106                	slli	sp,sp,0x1
     368:	0e05                	addi	t3,t3,1
     36a:	0009                	c.nop	2
     36c:	0100                	addi	s0,sp,128
     36e:	0c05                	addi	s8,s8,1
     370:	0009                	c.nop	2
     372:	0600                	addi	s0,sp,768
     374:	0518                	addi	a4,sp,640
     376:	00000907          	.insn	4, 0x0907
     37a:	0106                	slli	sp,sp,0x1
     37c:	1d05                	addi	s10,s10,-31
     37e:	0009                	c.nop	2
     380:	0100                	addi	s0,sp,128
     382:	1505                	addi	a0,a0,-31
     384:	0009                	c.nop	2
     386:	0600                	addi	s0,sp,768
     388:	0518                	addi	a4,sp,640
     38a:	00000907          	.insn	4, 0x0907
     38e:	0519                	addi	a0,a0,6
     390:	00000907          	.insn	4, 0x0907
     394:	0106                	slli	sp,sp,0x1
     396:	0e05                	addi	t3,t3,1
     398:	0009                	c.nop	2
     39a:	0100                	addi	s0,sp,128
     39c:	0c05                	addi	s8,s8,1
     39e:	0009                	c.nop	2
     3a0:	0600                	addi	s0,sp,768
     3a2:	0518                	addi	a4,sp,640
     3a4:	00000907          	.insn	4, 0x0907
     3a8:	0106                	slli	sp,sp,0x1
     3aa:	1d05                	addi	s10,s10,-31
     3ac:	0009                	c.nop	2
     3ae:	0100                	addi	s0,sp,128
     3b0:	1505                	addi	a0,a0,-31
     3b2:	0009                	c.nop	2
     3b4:	0600                	addi	s0,sp,768
     3b6:	0518                	addi	a4,sp,640
     3b8:	00000907          	.insn	4, 0x0907
     3bc:	0519                	addi	a0,a0,6
     3be:	00000907          	.insn	4, 0x0907
     3c2:	0106                	slli	sp,sp,0x1
     3c4:	0e05                	addi	t3,t3,1
     3c6:	0009                	c.nop	2
     3c8:	0100                	addi	s0,sp,128
     3ca:	0c05                	addi	s8,s8,1
     3cc:	0009                	c.nop	2
     3ce:	0600                	addi	s0,sp,768
     3d0:	0518                	addi	a4,sp,640
     3d2:	00000907          	.insn	4, 0x0907
     3d6:	0106                	slli	sp,sp,0x1
     3d8:	1d05                	addi	s10,s10,-31
     3da:	0009                	c.nop	2
     3dc:	0100                	addi	s0,sp,128
     3de:	1505                	addi	a0,a0,-31
     3e0:	0009                	c.nop	2
     3e2:	0600                	addi	s0,sp,768
     3e4:	0518                	addi	a4,sp,640
     3e6:	00000907          	.insn	4, 0x0907
     3ea:	0519                	addi	a0,a0,6
     3ec:	00000907          	.insn	4, 0x0907
     3f0:	0106                	slli	sp,sp,0x1
     3f2:	0e05                	addi	t3,t3,1
     3f4:	0009                	c.nop	2
     3f6:	0100                	addi	s0,sp,128
     3f8:	0c05                	addi	s8,s8,1
     3fa:	0009                	c.nop	2
     3fc:	0600                	addi	s0,sp,768
     3fe:	0518                	addi	a4,sp,640
     400:	00000907          	.insn	4, 0x0907
     404:	0106                	slli	sp,sp,0x1
     406:	1d05                	addi	s10,s10,-31
     408:	0009                	c.nop	2
     40a:	0100                	addi	s0,sp,128
     40c:	1505                	addi	a0,a0,-31
     40e:	0009                	c.nop	2
     410:	0600                	addi	s0,sp,768
     412:	0518                	addi	a4,sp,640
     414:	00000907          	.insn	4, 0x0907
     418:	0519                	addi	a0,a0,6
     41a:	00000907          	.insn	4, 0x0907
     41e:	0106                	slli	sp,sp,0x1
     420:	0e05                	addi	t3,t3,1
     422:	0009                	c.nop	2
     424:	0100                	addi	s0,sp,128
     426:	0c05                	addi	s8,s8,1
     428:	0009                	c.nop	2
     42a:	0600                	addi	s0,sp,768
     42c:	0518                	addi	a4,sp,640
     42e:	00000907          	.insn	4, 0x0907
     432:	0106                	slli	sp,sp,0x1
     434:	1d05                	addi	s10,s10,-31
     436:	0009                	c.nop	2
     438:	0100                	addi	s0,sp,128
     43a:	1505                	addi	a0,a0,-31
     43c:	0009                	c.nop	2
     43e:	0600                	addi	s0,sp,768
     440:	0518                	addi	a4,sp,640
     442:	00000907          	.insn	4, 0x0907
     446:	0519                	addi	a0,a0,6
     448:	00000907          	.insn	4, 0x0907
     44c:	0106                	slli	sp,sp,0x1
     44e:	0e05                	addi	t3,t3,1
     450:	0009                	c.nop	2
     452:	0100                	addi	s0,sp,128
     454:	0c05                	addi	s8,s8,1
     456:	0009                	c.nop	2
     458:	0600                	addi	s0,sp,768
     45a:	0518                	addi	a4,sp,640
     45c:	00000907          	.insn	4, 0x0907
     460:	0106                	slli	sp,sp,0x1
     462:	1d05                	addi	s10,s10,-31
     464:	0009                	c.nop	2
     466:	0100                	addi	s0,sp,128
     468:	1505                	addi	a0,a0,-31
     46a:	0009                	c.nop	2
     46c:	0600                	addi	s0,sp,768
     46e:	0518                	addi	a4,sp,640
     470:	00000907          	.insn	4, 0x0907
     474:	0519                	addi	a0,a0,6
     476:	00000907          	.insn	4, 0x0907
     47a:	0106                	slli	sp,sp,0x1
     47c:	0e05                	addi	t3,t3,1
     47e:	0009                	c.nop	2
     480:	0100                	addi	s0,sp,128
     482:	0c05                	addi	s8,s8,1
     484:	0009                	c.nop	2
     486:	0600                	addi	s0,sp,768
     488:	0518                	addi	a4,sp,640
     48a:	00000907          	.insn	4, 0x0907
     48e:	0106                	slli	sp,sp,0x1
     490:	1e05                	addi	t3,t3,-31
     492:	0009                	c.nop	2
     494:	0100                	addi	s0,sp,128
     496:	1605                	addi	a2,a2,-31
     498:	0009                	c.nop	2
     49a:	0600                	addi	s0,sp,768
     49c:	0518                	addi	a4,sp,640
     49e:	00000907          	.insn	4, 0x0907
     4a2:	0519                	addi	a0,a0,6
     4a4:	00000907          	.insn	4, 0x0907
     4a8:	0106                	slli	sp,sp,0x1
     4aa:	0e05                	addi	t3,t3,1
     4ac:	0009                	c.nop	2
     4ae:	0100                	addi	s0,sp,128
     4b0:	0c05                	addi	s8,s8,1
     4b2:	0009                	c.nop	2
     4b4:	0600                	addi	s0,sp,768
     4b6:	0518                	addi	a4,sp,640
     4b8:	00000907          	.insn	4, 0x0907
     4bc:	0106                	slli	sp,sp,0x1
     4be:	1e05                	addi	t3,t3,-31
     4c0:	0009                	c.nop	2
     4c2:	0100                	addi	s0,sp,128
     4c4:	1605                	addi	a2,a2,-31
     4c6:	0009                	c.nop	2
     4c8:	0600                	addi	s0,sp,768
     4ca:	0518                	addi	a4,sp,640
     4cc:	00000907          	.insn	4, 0x0907
     4d0:	0519                	addi	a0,a0,6
     4d2:	00000907          	.insn	4, 0x0907
     4d6:	0106                	slli	sp,sp,0x1
     4d8:	0e05                	addi	t3,t3,1
     4da:	0009                	c.nop	2
     4dc:	0100                	addi	s0,sp,128
     4de:	0c05                	addi	s8,s8,1
     4e0:	0009                	c.nop	2
     4e2:	0600                	addi	s0,sp,768
     4e4:	0518                	addi	a4,sp,640
     4e6:	00000907          	.insn	4, 0x0907
     4ea:	0106                	slli	sp,sp,0x1
     4ec:	1e05                	addi	t3,t3,-31
     4ee:	0009                	c.nop	2
     4f0:	0100                	addi	s0,sp,128
     4f2:	1605                	addi	a2,a2,-31
     4f4:	0009                	c.nop	2
     4f6:	0600                	addi	s0,sp,768
     4f8:	0518                	addi	a4,sp,640
     4fa:	00000907          	.insn	4, 0x0907
     4fe:	0519                	addi	a0,a0,6
     500:	00000907          	.insn	4, 0x0907
     504:	0106                	slli	sp,sp,0x1
     506:	0e05                	addi	t3,t3,1
     508:	0009                	c.nop	2
     50a:	0100                	addi	s0,sp,128
     50c:	0c05                	addi	s8,s8,1
     50e:	0009                	c.nop	2
     510:	0600                	addi	s0,sp,768
     512:	0518                	addi	a4,sp,640
     514:	00000907          	.insn	4, 0x0907
     518:	0106                	slli	sp,sp,0x1
     51a:	1e05                	addi	t3,t3,-31
     51c:	0009                	c.nop	2
     51e:	0100                	addi	s0,sp,128
     520:	1605                	addi	a2,a2,-31
     522:	0009                	c.nop	2
     524:	0600                	addi	s0,sp,768
     526:	0518                	addi	a4,sp,640
     528:	00000907          	.insn	4, 0x0907
     52c:	0521                	addi	a0,a0,8
     52e:	00000907          	.insn	4, 0x0907
     532:	0518                	addi	a4,sp,640
     534:	00000907          	.insn	4, 0x0907
     538:	1906                	slli	s2,s2,0x21
     53a:	0105                	addi	sp,sp,1
     53c:	0500                	addi	s0,sp,640
     53e:	0002                	c.slli	zero,0x0
     540:	0000                	unimp
     542:	0000                	unimp
     544:	0101                	addi	sp,sp,0
     546:	0500                	addi	s0,sp,640
     548:	0002                	c.slli	zero,0x0
     54a:	0000                	unimp
     54c:	0400                	addi	s0,sp,512
     54e:	28058703          	lb	a4,640(a1)
     552:	0009                	c.nop	2
     554:	1800                	addi	s0,sp,48
     556:	0305                	addi	t1,t1,1
     558:	0009                	c.nop	2
     55a:	0600                	addi	s0,sp,768
     55c:	0516                	slli	a0,a0,0x5
     55e:	0928                	addi	a0,sp,152
     560:	0000                	unimp
     562:	0518                	addi	a4,sp,640
     564:	0915                	addi	s2,s2,5
     566:	0000                	unimp
     568:	1806                	slli	a6,a6,0x21
     56a:	0305                	addi	t1,t1,1
     56c:	0009                	c.nop	2
     56e:	0600                	addi	s0,sp,768
     570:	0501                	addi	a0,a0,0
     572:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     576:	5206                	lw	tp,96(sp)
     578:	0705                	addi	a4,a4,1
     57a:	0009                	c.nop	2
     57c:	0600                	addi	s0,sp,768
     57e:	0501                	addi	a0,a0,0
     580:	090e                	slli	s2,s2,0x3
     582:	0000                	unimp
     584:	0501                	addi	a0,a0,0
     586:	090c                	addi	a1,sp,144
     588:	0000                	unimp
     58a:	1806                	slli	a6,a6,0x21
     58c:	0705                	addi	a4,a4,1
     58e:	0009                	c.nop	2
     590:	0600                	addi	s0,sp,768
     592:	0501                	addi	a0,a0,0
     594:	091e                	slli	s2,s2,0x7
     596:	0000                	unimp
     598:	0501                	addi	a0,a0,0
     59a:	0916                	slli	s2,s2,0x5
     59c:	0000                	unimp
     59e:	1806                	slli	a6,a6,0x21
     5a0:	0705                	addi	a4,a4,1
     5a2:	0009                	c.nop	2
     5a4:	0600                	addi	s0,sp,768
     5a6:	0521                	addi	a0,a0,8
     5a8:	0901                	addi	s2,s2,0
     5aa:	0000                	unimp
     5ac:	0f06                	slli	t5,t5,0x1
     5ae:	0705                	addi	a4,a4,1
     5b0:	0009                	c.nop	2
     5b2:	0600                	addi	s0,sp,768
     5b4:	0501                	addi	a0,a0,0
     5b6:	090e                	slli	s2,s2,0x3
     5b8:	0000                	unimp
     5ba:	0501                	addi	a0,a0,0
     5bc:	090c                	addi	a1,sp,144
     5be:	0000                	unimp
     5c0:	1806                	slli	a6,a6,0x21
     5c2:	0705                	addi	a4,a4,1
     5c4:	0009                	c.nop	2
     5c6:	0600                	addi	s0,sp,768
     5c8:	0501                	addi	a0,a0,0
     5ca:	091e                	slli	s2,s2,0x7
     5cc:	0000                	unimp
     5ce:	0501                	addi	a0,a0,0
     5d0:	0916                	slli	s2,s2,0x5
     5d2:	0000                	unimp
     5d4:	1806                	slli	a6,a6,0x21
     5d6:	0705                	addi	a4,a4,1
     5d8:	0009                	c.nop	2
     5da:	0300                	addi	s0,sp,384
     5dc:	0142                	slli	sp,sp,0x10
     5de:	0705                	addi	a4,a4,1
     5e0:	0009                	c.nop	2
     5e2:	0600                	addi	s0,sp,768
     5e4:	0501                	addi	a0,a0,0
     5e6:	090e                	slli	s2,s2,0x3
     5e8:	0000                	unimp
     5ea:	0501                	addi	a0,a0,0
     5ec:	090c                	addi	a1,sp,144
     5ee:	0000                	unimp
     5f0:	1806                	slli	a6,a6,0x21
     5f2:	0705                	addi	a4,a4,1
     5f4:	0009                	c.nop	2
     5f6:	0600                	addi	s0,sp,768
     5f8:	0501                	addi	a0,a0,0
     5fa:	091d                	addi	s2,s2,7
     5fc:	0000                	unimp
     5fe:	0501                	addi	a0,a0,0
     600:	0915                	addi	s2,s2,5
     602:	0000                	unimp
     604:	1806                	slli	a6,a6,0x21
     606:	0705                	addi	a4,a4,1
     608:	0009                	c.nop	2
     60a:	1900                	addi	s0,sp,176
     60c:	0705                	addi	a4,a4,1
     60e:	0009                	c.nop	2
     610:	0600                	addi	s0,sp,768
     612:	0501                	addi	a0,a0,0
     614:	090e                	slli	s2,s2,0x3
     616:	0000                	unimp
     618:	0501                	addi	a0,a0,0
     61a:	090c                	addi	a1,sp,144
     61c:	0000                	unimp
     61e:	1806                	slli	a6,a6,0x21
     620:	0705                	addi	a4,a4,1
     622:	0009                	c.nop	2
     624:	0600                	addi	s0,sp,768
     626:	0501                	addi	a0,a0,0
     628:	091d                	addi	s2,s2,7
     62a:	0000                	unimp
     62c:	0501                	addi	a0,a0,0
     62e:	0915                	addi	s2,s2,5
     630:	0000                	unimp
     632:	1806                	slli	a6,a6,0x21
     634:	0705                	addi	a4,a4,1
     636:	0009                	c.nop	2
     638:	1900                	addi	s0,sp,176
     63a:	0705                	addi	a4,a4,1
     63c:	0009                	c.nop	2
     63e:	0600                	addi	s0,sp,768
     640:	0501                	addi	a0,a0,0
     642:	090e                	slli	s2,s2,0x3
     644:	0000                	unimp
     646:	0501                	addi	a0,a0,0
     648:	090c                	addi	a1,sp,144
     64a:	0000                	unimp
     64c:	1806                	slli	a6,a6,0x21
     64e:	0705                	addi	a4,a4,1
     650:	0009                	c.nop	2
     652:	0600                	addi	s0,sp,768
     654:	0501                	addi	a0,a0,0
     656:	091d                	addi	s2,s2,7
     658:	0000                	unimp
     65a:	0501                	addi	a0,a0,0
     65c:	0915                	addi	s2,s2,5
     65e:	0000                	unimp
     660:	1806                	slli	a6,a6,0x21
     662:	0705                	addi	a4,a4,1
     664:	0009                	c.nop	2
     666:	1900                	addi	s0,sp,176
     668:	0705                	addi	a4,a4,1
     66a:	0009                	c.nop	2
     66c:	0600                	addi	s0,sp,768
     66e:	0501                	addi	a0,a0,0
     670:	090e                	slli	s2,s2,0x3
     672:	0000                	unimp
     674:	0501                	addi	a0,a0,0
     676:	090c                	addi	a1,sp,144
     678:	0000                	unimp
     67a:	1806                	slli	a6,a6,0x21
     67c:	0705                	addi	a4,a4,1
     67e:	0009                	c.nop	2
     680:	0600                	addi	s0,sp,768
     682:	0501                	addi	a0,a0,0
     684:	091d                	addi	s2,s2,7
     686:	0000                	unimp
     688:	0501                	addi	a0,a0,0
     68a:	0915                	addi	s2,s2,5
     68c:	0000                	unimp
     68e:	1806                	slli	a6,a6,0x21
     690:	0705                	addi	a4,a4,1
     692:	0009                	c.nop	2
     694:	1900                	addi	s0,sp,176
     696:	0705                	addi	a4,a4,1
     698:	0009                	c.nop	2
     69a:	0600                	addi	s0,sp,768
     69c:	0501                	addi	a0,a0,0
     69e:	090e                	slli	s2,s2,0x3
     6a0:	0000                	unimp
     6a2:	0501                	addi	a0,a0,0
     6a4:	090c                	addi	a1,sp,144
     6a6:	0000                	unimp
     6a8:	1806                	slli	a6,a6,0x21
     6aa:	0705                	addi	a4,a4,1
     6ac:	0009                	c.nop	2
     6ae:	0600                	addi	s0,sp,768
     6b0:	0501                	addi	a0,a0,0
     6b2:	091d                	addi	s2,s2,7
     6b4:	0000                	unimp
     6b6:	0501                	addi	a0,a0,0
     6b8:	0915                	addi	s2,s2,5
     6ba:	0000                	unimp
     6bc:	1806                	slli	a6,a6,0x21
     6be:	0705                	addi	a4,a4,1
     6c0:	0009                	c.nop	2
     6c2:	1900                	addi	s0,sp,176
     6c4:	0705                	addi	a4,a4,1
     6c6:	0009                	c.nop	2
     6c8:	0600                	addi	s0,sp,768
     6ca:	0501                	addi	a0,a0,0
     6cc:	090e                	slli	s2,s2,0x3
     6ce:	0000                	unimp
     6d0:	0501                	addi	a0,a0,0
     6d2:	090c                	addi	a1,sp,144
     6d4:	0000                	unimp
     6d6:	1806                	slli	a6,a6,0x21
     6d8:	0705                	addi	a4,a4,1
     6da:	0009                	c.nop	2
     6dc:	0600                	addi	s0,sp,768
     6de:	0501                	addi	a0,a0,0
     6e0:	091d                	addi	s2,s2,7
     6e2:	0000                	unimp
     6e4:	0501                	addi	a0,a0,0
     6e6:	0915                	addi	s2,s2,5
     6e8:	0000                	unimp
     6ea:	1806                	slli	a6,a6,0x21
     6ec:	0705                	addi	a4,a4,1
     6ee:	0009                	c.nop	2
     6f0:	1900                	addi	s0,sp,176
     6f2:	0705                	addi	a4,a4,1
     6f4:	0009                	c.nop	2
     6f6:	0600                	addi	s0,sp,768
     6f8:	0501                	addi	a0,a0,0
     6fa:	090e                	slli	s2,s2,0x3
     6fc:	0000                	unimp
     6fe:	0501                	addi	a0,a0,0
     700:	090c                	addi	a1,sp,144
     702:	0000                	unimp
     704:	1806                	slli	a6,a6,0x21
     706:	0705                	addi	a4,a4,1
     708:	0009                	c.nop	2
     70a:	0600                	addi	s0,sp,768
     70c:	0501                	addi	a0,a0,0
     70e:	091d                	addi	s2,s2,7
     710:	0000                	unimp
     712:	0501                	addi	a0,a0,0
     714:	0915                	addi	s2,s2,5
     716:	0000                	unimp
     718:	1806                	slli	a6,a6,0x21
     71a:	0705                	addi	a4,a4,1
     71c:	0009                	c.nop	2
     71e:	1900                	addi	s0,sp,176
     720:	0705                	addi	a4,a4,1
     722:	0009                	c.nop	2
     724:	0600                	addi	s0,sp,768
     726:	0501                	addi	a0,a0,0
     728:	090e                	slli	s2,s2,0x3
     72a:	0000                	unimp
     72c:	0501                	addi	a0,a0,0
     72e:	090c                	addi	a1,sp,144
     730:	0000                	unimp
     732:	1806                	slli	a6,a6,0x21
     734:	0705                	addi	a4,a4,1
     736:	0009                	c.nop	2
     738:	0600                	addi	s0,sp,768
     73a:	0501                	addi	a0,a0,0
     73c:	091d                	addi	s2,s2,7
     73e:	0000                	unimp
     740:	0501                	addi	a0,a0,0
     742:	0915                	addi	s2,s2,5
     744:	0000                	unimp
     746:	1806                	slli	a6,a6,0x21
     748:	0705                	addi	a4,a4,1
     74a:	0009                	c.nop	2
     74c:	1900                	addi	s0,sp,176
     74e:	0705                	addi	a4,a4,1
     750:	0009                	c.nop	2
     752:	0600                	addi	s0,sp,768
     754:	0501                	addi	a0,a0,0
     756:	090e                	slli	s2,s2,0x3
     758:	0000                	unimp
     75a:	0501                	addi	a0,a0,0
     75c:	090c                	addi	a1,sp,144
     75e:	0000                	unimp
     760:	1806                	slli	a6,a6,0x21
     762:	0705                	addi	a4,a4,1
     764:	0009                	c.nop	2
     766:	0600                	addi	s0,sp,768
     768:	0501                	addi	a0,a0,0
     76a:	091d                	addi	s2,s2,7
     76c:	0000                	unimp
     76e:	0501                	addi	a0,a0,0
     770:	0915                	addi	s2,s2,5
     772:	0000                	unimp
     774:	1806                	slli	a6,a6,0x21
     776:	0705                	addi	a4,a4,1
     778:	0009                	c.nop	2
     77a:	1900                	addi	s0,sp,176
     77c:	0705                	addi	a4,a4,1
     77e:	0009                	c.nop	2
     780:	0600                	addi	s0,sp,768
     782:	0501                	addi	a0,a0,0
     784:	090e                	slli	s2,s2,0x3
     786:	0000                	unimp
     788:	0501                	addi	a0,a0,0
     78a:	090c                	addi	a1,sp,144
     78c:	0000                	unimp
     78e:	1806                	slli	a6,a6,0x21
     790:	0705                	addi	a4,a4,1
     792:	0009                	c.nop	2
     794:	0600                	addi	s0,sp,768
     796:	0501                	addi	a0,a0,0
     798:	091d                	addi	s2,s2,7
     79a:	0000                	unimp
     79c:	0501                	addi	a0,a0,0
     79e:	0915                	addi	s2,s2,5
     7a0:	0000                	unimp
     7a2:	1806                	slli	a6,a6,0x21
     7a4:	0705                	addi	a4,a4,1
     7a6:	0009                	c.nop	2
     7a8:	1900                	addi	s0,sp,176
     7aa:	0705                	addi	a4,a4,1
     7ac:	0009                	c.nop	2
     7ae:	0600                	addi	s0,sp,768
     7b0:	0501                	addi	a0,a0,0
     7b2:	090e                	slli	s2,s2,0x3
     7b4:	0000                	unimp
     7b6:	0501                	addi	a0,a0,0
     7b8:	090c                	addi	a1,sp,144
     7ba:	0000                	unimp
     7bc:	1806                	slli	a6,a6,0x21
     7be:	0705                	addi	a4,a4,1
     7c0:	0009                	c.nop	2
     7c2:	0600                	addi	s0,sp,768
     7c4:	0501                	addi	a0,a0,0
     7c6:	091e                	slli	s2,s2,0x7
     7c8:	0000                	unimp
     7ca:	0501                	addi	a0,a0,0
     7cc:	0916                	slli	s2,s2,0x5
     7ce:	0000                	unimp
     7d0:	1806                	slli	a6,a6,0x21
     7d2:	0705                	addi	a4,a4,1
     7d4:	0009                	c.nop	2
     7d6:	1900                	addi	s0,sp,176
     7d8:	0705                	addi	a4,a4,1
     7da:	0009                	c.nop	2
     7dc:	0600                	addi	s0,sp,768
     7de:	0501                	addi	a0,a0,0
     7e0:	090e                	slli	s2,s2,0x3
     7e2:	0000                	unimp
     7e4:	0501                	addi	a0,a0,0
     7e6:	090c                	addi	a1,sp,144
     7e8:	0000                	unimp
     7ea:	1806                	slli	a6,a6,0x21
     7ec:	0705                	addi	a4,a4,1
     7ee:	0009                	c.nop	2
     7f0:	0600                	addi	s0,sp,768
     7f2:	0501                	addi	a0,a0,0
     7f4:	091e                	slli	s2,s2,0x7
     7f6:	0000                	unimp
     7f8:	0501                	addi	a0,a0,0
     7fa:	0916                	slli	s2,s2,0x5
     7fc:	0000                	unimp
     7fe:	1806                	slli	a6,a6,0x21
     800:	0705                	addi	a4,a4,1
     802:	0009                	c.nop	2
     804:	1900                	addi	s0,sp,176
     806:	0705                	addi	a4,a4,1
     808:	0009                	c.nop	2
     80a:	0600                	addi	s0,sp,768
     80c:	0501                	addi	a0,a0,0
     80e:	090e                	slli	s2,s2,0x3
     810:	0000                	unimp
     812:	0501                	addi	a0,a0,0
     814:	090c                	addi	a1,sp,144
     816:	0000                	unimp
     818:	1806                	slli	a6,a6,0x21
     81a:	0705                	addi	a4,a4,1
     81c:	0009                	c.nop	2
     81e:	0600                	addi	s0,sp,768
     820:	0501                	addi	a0,a0,0
     822:	091e                	slli	s2,s2,0x7
     824:	0000                	unimp
     826:	0501                	addi	a0,a0,0
     828:	0916                	slli	s2,s2,0x5
     82a:	0000                	unimp
     82c:	1806                	slli	a6,a6,0x21
     82e:	0705                	addi	a4,a4,1
     830:	0009                	c.nop	2
     832:	1900                	addi	s0,sp,176
     834:	0705                	addi	a4,a4,1
     836:	0009                	c.nop	2
     838:	0600                	addi	s0,sp,768
     83a:	0501                	addi	a0,a0,0
     83c:	090e                	slli	s2,s2,0x3
     83e:	0000                	unimp
     840:	0501                	addi	a0,a0,0
     842:	090c                	addi	a1,sp,144
     844:	0000                	unimp
     846:	1806                	slli	a6,a6,0x21
     848:	0705                	addi	a4,a4,1
     84a:	0009                	c.nop	2
     84c:	0600                	addi	s0,sp,768
     84e:	0501                	addi	a0,a0,0
     850:	091e                	slli	s2,s2,0x7
     852:	0000                	unimp
     854:	0501                	addi	a0,a0,0
     856:	0916                	slli	s2,s2,0x5
     858:	0000                	unimp
     85a:	1806                	slli	a6,a6,0x21
     85c:	0705                	addi	a4,a4,1
     85e:	0009                	c.nop	2
     860:	2100                	.insn	2, 0x2100
     862:	0705                	addi	a4,a4,1
     864:	0009                	c.nop	2
     866:	1800                	addi	s0,sp,48
     868:	0705                	addi	a4,a4,1
     86a:	0009                	c.nop	2
     86c:	0600                	addi	s0,sp,768
     86e:	051a                	slli	a0,a0,0x6
     870:	0001                	nop
     872:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     874:	0000                	unimp
     876:	0000                	unimp
     878:	0100                	addi	s0,sp,128
     87a:	0001                	nop
     87c:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     87e:	0000                	unimp
     880:	0000                	unimp
     882:	0304                	addi	s1,sp,384
     884:	05d2                	slli	a1,a1,0x14
     886:	091e                	slli	s2,s2,0x7
     888:	0000                	unimp
     88a:	0518                	addi	a4,sp,640
     88c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     890:	0106                	slli	sp,sp,0x1
     892:	0a05                	addi	s4,s4,1
     894:	0009                	c.nop	2
     896:	1800                	addi	s0,sp,48
     898:	0105                	addi	sp,sp,1
     89a:	0500                	addi	s0,sp,640
     89c:	0002                	c.slli	zero,0x0
     89e:	0000                	unimp
     8a0:	0000                	unimp
     8a2:	0101                	addi	sp,sp,0
     8a4:	0500                	addi	s0,sp,640
     8a6:	0002                	c.slli	zero,0x0
     8a8:	0000                	unimp
     8aa:	0400                	addi	s0,sp,512
     8ac:	2405d603          	lhu	a2,576(a1)
     8b0:	0009                	c.nop	2
     8b2:	1800                	addi	s0,sp,48
     8b4:	0305                	addi	t1,t1,1
     8b6:	0009                	c.nop	2
     8b8:	0600                	addi	s0,sp,768
     8ba:	0501                	addi	a0,a0,0
     8bc:	0000090b          	.insn	4, 0x090b
     8c0:	0518                	addi	a4,sp,640
     8c2:	0001                	nop
     8c4:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     8c6:	0000                	unimp
     8c8:	0000                	unimp
     8ca:	0100                	addi	s0,sp,128
     8cc:	0001                	nop
     8ce:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     8d0:	008c                	addi	a1,sp,64
     8d2:	0100                	addi	s0,sp,128
     8d4:	090c0527          	.insn	4, 0x090c0527
     8d8:	0000                	unimp
     8da:	0519                	addi	a0,a0,6
     8dc:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     8e0:	0204                	addi	s1,sp,256
     8e2:	053d                	addi	a0,a0,15
     8e4:	0906                	slli	s2,s2,0x1
     8e6:	0000                	unimp
     8e8:	0519                	addi	a0,a0,6
     8ea:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     8ee:	0106                	slli	sp,sp,0x1
     8f0:	0d05                	addi	s10,s10,1
     8f2:	0609                	addi	a2,a2,2
     8f4:	0400                	addi	s0,sp,512
     8f6:	0301                	addi	t1,t1,0
     8f8:	0156                	slli	sp,sp,0x15
     8fa:	0c05                	addi	s8,s8,1
     8fc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     8fe:	0400                	addi	s0,sp,512
     900:	4102                	lw	sp,0(sp)
     902:	0d05                	addi	s10,s10,1
     904:	0409                	addi	s0,s0,2
     906:	0100                	addi	s0,sp,128
     908:	0d05                	addi	s10,s10,1
     90a:	0009                	c.nop	2
     90c:	0400                	addi	s0,sp,512
     90e:	0601                	addi	a2,a2,0
     910:	05015a03          	lhu	s4,80(sp)
     914:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     918:	0304                	addi	s1,sp,384
     91a:	0529                	addi	a0,a0,10
     91c:	0906                	slli	s2,s2,0x1
     91e:	0000                	unimp
     920:	0518                	addi	a4,sp,640
     922:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     926:	0106                	slli	sp,sp,0x1
     928:	1505                	addi	a0,a0,-31
     92a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     92c:	0600                	addi	s0,sp,768
     92e:	0518                	addi	a4,sp,640
     930:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     934:	051a                	slli	a0,a0,0x6
     936:	00000907          	.insn	4, 0x0907
     93a:	0106                	slli	sp,sp,0x1
     93c:	0e05                	addi	t3,t3,1
     93e:	0609                	addi	a2,a2,2
     940:	1b00                	addi	s0,sp,432
     942:	0e05                	addi	t3,t3,1
     944:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     946:	1300                	addi	s0,sp,416
     948:	0c05                	addi	s8,s8,1
     94a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     94c:	0600                	addi	s0,sp,768
     94e:	0518                	addi	a4,sp,640
     950:	00000907          	.insn	4, 0x0907
     954:	0106                	slli	sp,sp,0x1
     956:	1d05                	addi	s10,s10,-31
     958:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     95a:	1e00                	addi	s0,sp,816
     95c:	0e05                	addi	t3,t3,1
     95e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     960:	2f00                	.insn	2, 0x2f00
     962:	0e05                	addi	t3,t3,1
     964:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     966:	0300                	addi	s0,sp,384
     968:	0161                	addi	sp,sp,24
     96a:	1d05                	addi	s10,s10,-31
     96c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     96e:	0100                	addi	s0,sp,128
     970:	1505                	addi	a0,a0,-31
     972:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     974:	0600                	addi	s0,sp,768
     976:	0518                	addi	a4,sp,640
     978:	00000907          	.insn	4, 0x0907
     97c:	0106                	slli	sp,sp,0x1
     97e:	0705                	addi	a4,a4,1
     980:	0009                	c.nop	2
     982:	0400                	addi	s0,sp,512
     984:	0601                	addi	a2,a2,0
     986:	05016803          	.insn	4, 0x05016803
     98a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     98e:	0304                	addi	s1,sp,384
     990:	0528                	addi	a0,sp,648
     992:	0906                	slli	s2,s2,0x1
     994:	0000                	unimp
     996:	0518                	addi	a4,sp,640
     998:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     99c:	0106                	slli	sp,sp,0x1
     99e:	1505                	addi	a0,a0,-31
     9a0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9a2:	0600                	addi	s0,sp,768
     9a4:	0518                	addi	a4,sp,640
     9a6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     9aa:	051e                	slli	a0,a0,0x7
     9ac:	00000907          	.insn	4, 0x0907
     9b0:	0106                	slli	sp,sp,0x1
     9b2:	0e05                	addi	t3,t3,1
     9b4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9b6:	3700                	.insn	2, 0x3700
     9b8:	0e05                	addi	t3,t3,1
     9ba:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9bc:	1b00                	addi	s0,sp,432
     9be:	0e05                	addi	t3,t3,1
     9c0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9c2:	0300                	addi	s0,sp,384
     9c4:	015c                	addi	a5,sp,132
     9c6:	0c05                	addi	s8,s8,1
     9c8:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9ca:	0600                	addi	s0,sp,768
     9cc:	0518                	addi	a4,sp,640
     9ce:	00000907          	.insn	4, 0x0907
     9d2:	0106                	slli	sp,sp,0x1
     9d4:	1d05                	addi	s10,s10,-31
     9d6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9d8:	3e00                	.insn	2, 0x3e00
     9da:	0e05                	addi	t3,t3,1
     9dc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9de:	0300                	addi	s0,sp,384
     9e0:	0159                	addi	sp,sp,22
     9e2:	1d05                	addi	s10,s10,-31
     9e4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9e6:	0100                	addi	s0,sp,128
     9e8:	1505                	addi	a0,a0,-31
     9ea:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9ec:	0600                	addi	s0,sp,768
     9ee:	0518                	addi	a4,sp,640
     9f0:	00000907          	.insn	4, 0x0907
     9f4:	0106                	slli	sp,sp,0x1
     9f6:	0705                	addi	a4,a4,1
     9f8:	0009                	c.nop	2
     9fa:	0400                	addi	s0,sp,512
     9fc:	0601                	addi	a2,a2,0
     9fe:	05016503          	.insn	4, 0x05016503
     a02:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a06:	0304                	addi	s1,sp,384
     a08:	09060527          	.insn	4, 0x09060527
     a0c:	0000                	unimp
     a0e:	0518                	addi	a4,sp,640
     a10:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a14:	0106                	slli	sp,sp,0x1
     a16:	1505                	addi	a0,a0,-31
     a18:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a1a:	0600                	addi	s0,sp,768
     a1c:	0518                	addi	a4,sp,640
     a1e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a22:	0522                	slli	a0,a0,0x8
     a24:	00000907          	.insn	4, 0x0907
     a28:	0106                	slli	sp,sp,0x1
     a2a:	0e05                	addi	t3,t3,1
     a2c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a2e:	0100                	addi	s0,sp,128
     a30:	0c05                	addi	s8,s8,1
     a32:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a34:	0600                	addi	s0,sp,768
     a36:	0518                	addi	a4,sp,640
     a38:	00000907          	.insn	4, 0x0907
     a3c:	0106                	slli	sp,sp,0x1
     a3e:	1d05                	addi	s10,s10,-31
     a40:	0409                	addi	s0,s0,2
     a42:	0100                	addi	s0,sp,128
     a44:	1505                	addi	a0,a0,-31
     a46:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a48:	0600                	addi	s0,sp,768
     a4a:	0518                	addi	a4,sp,640
     a4c:	00000907          	.insn	4, 0x0907
     a50:	0106                	slli	sp,sp,0x1
     a52:	0705                	addi	a4,a4,1
     a54:	0009                	c.nop	2
     a56:	0400                	addi	s0,sp,512
     a58:	0601                	addi	a2,a2,0
     a5a:	05016203          	.insn	4, 0x05016203
     a5e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a62:	0304                	addi	s1,sp,384
     a64:	0526                	slli	a0,a0,0x9
     a66:	0906                	slli	s2,s2,0x1
     a68:	0000                	unimp
     a6a:	0518                	addi	a4,sp,640
     a6c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a70:	0106                	slli	sp,sp,0x1
     a72:	1505                	addi	a0,a0,-31
     a74:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a76:	0600                	addi	s0,sp,768
     a78:	0518                	addi	a4,sp,640
     a7a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     a7e:	0526                	slli	a0,a0,0x9
     a80:	00000907          	.insn	4, 0x0907
     a84:	0106                	slli	sp,sp,0x1
     a86:	0e05                	addi	t3,t3,1
     a88:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a8a:	0100                	addi	s0,sp,128
     a8c:	0c05                	addi	s8,s8,1
     a8e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a90:	0600                	addi	s0,sp,768
     a92:	0518                	addi	a4,sp,640
     a94:	00000907          	.insn	4, 0x0907
     a98:	0106                	slli	sp,sp,0x1
     a9a:	1d05                	addi	s10,s10,-31
     a9c:	0409                	addi	s0,s0,2
     a9e:	0100                	addi	s0,sp,128
     aa0:	1505                	addi	a0,a0,-31
     aa2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     aa4:	0600                	addi	s0,sp,768
     aa6:	0518                	addi	a4,sp,640
     aa8:	00000907          	.insn	4, 0x0907
     aac:	0106                	slli	sp,sp,0x1
     aae:	0705                	addi	a4,a4,1
     ab0:	0009                	c.nop	2
     ab2:	0400                	addi	s0,sp,512
     ab4:	0601                	addi	a2,a2,0
     ab6:	05015f03          	lhu	t5,80(sp)
     aba:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     abe:	0304                	addi	s1,sp,384
     ac0:	0525                	addi	a0,a0,9
     ac2:	0906                	slli	s2,s2,0x1
     ac4:	0000                	unimp
     ac6:	0518                	addi	a4,sp,640
     ac8:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     acc:	0106                	slli	sp,sp,0x1
     ace:	1505                	addi	a0,a0,-31
     ad0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ad2:	0600                	addi	s0,sp,768
     ad4:	0518                	addi	a4,sp,640
     ad6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ada:	052a                	slli	a0,a0,0xa
     adc:	00000907          	.insn	4, 0x0907
     ae0:	0106                	slli	sp,sp,0x1
     ae2:	0e05                	addi	t3,t3,1
     ae4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ae6:	3700                	.insn	2, 0x3700
     ae8:	0e05                	addi	t3,t3,1
     aea:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     aec:	0300                	addi	s0,sp,384
     aee:	0160                	addi	s0,sp,140
     af0:	0c05                	addi	s8,s8,1
     af2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     af4:	0600                	addi	s0,sp,768
     af6:	0518                	addi	a4,sp,640
     af8:	00000907          	.insn	4, 0x0907
     afc:	0106                	slli	sp,sp,0x1
     afe:	1d05                	addi	s10,s10,-31
     b00:	0409                	addi	s0,s0,2
     b02:	0100                	addi	s0,sp,128
     b04:	1505                	addi	a0,a0,-31
     b06:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b08:	0600                	addi	s0,sp,768
     b0a:	0518                	addi	a4,sp,640
     b0c:	00000907          	.insn	4, 0x0907
     b10:	0106                	slli	sp,sp,0x1
     b12:	0705                	addi	a4,a4,1
     b14:	0009                	c.nop	2
     b16:	0400                	addi	s0,sp,512
     b18:	0601                	addi	a2,a2,0
     b1a:	05015c03          	lhu	s8,80(sp)
     b1e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b22:	0304                	addi	s1,sp,384
     b24:	0524                	addi	s1,sp,648
     b26:	0906                	slli	s2,s2,0x1
     b28:	0000                	unimp
     b2a:	0518                	addi	a4,sp,640
     b2c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b30:	0106                	slli	sp,sp,0x1
     b32:	1505                	addi	a0,a0,-31
     b34:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b36:	0600                	addi	s0,sp,768
     b38:	0518                	addi	a4,sp,640
     b3a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b3e:	052e                	slli	a0,a0,0xb
     b40:	00000907          	.insn	4, 0x0907
     b44:	0106                	slli	sp,sp,0x1
     b46:	0e05                	addi	t3,t3,1
     b48:	0409                	addi	s0,s0,2
     b4a:	3700                	.insn	2, 0x3700
     b4c:	0e05                	addi	t3,t3,1
     b4e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b50:	0300                	addi	s0,sp,384
     b52:	0160                	addi	s0,sp,140
     b54:	0c05                	addi	s8,s8,1
     b56:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b58:	0600                	addi	s0,sp,768
     b5a:	0518                	addi	a4,sp,640
     b5c:	00000907          	.insn	4, 0x0907
     b60:	0106                	slli	sp,sp,0x1
     b62:	1d05                	addi	s10,s10,-31
     b64:	0409                	addi	s0,s0,2
     b66:	0100                	addi	s0,sp,128
     b68:	1505                	addi	a0,a0,-31
     b6a:	0409                	addi	s0,s0,2
     b6c:	0600                	addi	s0,sp,768
     b6e:	0518                	addi	a4,sp,640
     b70:	00000907          	.insn	4, 0x0907
     b74:	0106                	slli	sp,sp,0x1
     b76:	0705                	addi	a4,a4,1
     b78:	0009                	c.nop	2
     b7a:	0400                	addi	s0,sp,512
     b7c:	0601                	addi	a2,a2,0
     b7e:	05015903          	lhu	s2,80(sp)
     b82:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b86:	0304                	addi	s1,sp,384
     b88:	09060523          	sb	a6,138(a2)
     b8c:	0000                	unimp
     b8e:	0518                	addi	a4,sp,640
     b90:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b94:	0106                	slli	sp,sp,0x1
     b96:	1505                	addi	a0,a0,-31
     b98:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b9a:	0600                	addi	s0,sp,768
     b9c:	0518                	addi	a4,sp,640
     b9e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ba2:	0532                	slli	a0,a0,0xc
     ba4:	00000907          	.insn	4, 0x0907
     ba8:	0106                	slli	sp,sp,0x1
     baa:	0e05                	addi	t3,t3,1
     bac:	0409                	addi	s0,s0,2
     bae:	3700                	.insn	2, 0x3700
     bb0:	0e05                	addi	t3,t3,1
     bb2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bb4:	0300                	addi	s0,sp,384
     bb6:	0160                	addi	s0,sp,140
     bb8:	0c05                	addi	s8,s8,1
     bba:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bbc:	0600                	addi	s0,sp,768
     bbe:	0518                	addi	a4,sp,640
     bc0:	00000907          	.insn	4, 0x0907
     bc4:	0106                	slli	sp,sp,0x1
     bc6:	1d05                	addi	s10,s10,-31
     bc8:	0409                	addi	s0,s0,2
     bca:	0100                	addi	s0,sp,128
     bcc:	1505                	addi	a0,a0,-31
     bce:	0409                	addi	s0,s0,2
     bd0:	0600                	addi	s0,sp,768
     bd2:	0518                	addi	a4,sp,640
     bd4:	00000907          	.insn	4, 0x0907
     bd8:	0106                	slli	sp,sp,0x1
     bda:	0705                	addi	a4,a4,1
     bdc:	0009                	c.nop	2
     bde:	0400                	addi	s0,sp,512
     be0:	0601                	addi	a2,a2,0
     be2:	05015603          	lhu	a2,80(sp)
     be6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     bea:	0304                	addi	s1,sp,384
     bec:	0522                	slli	a0,a0,0x8
     bee:	0906                	slli	s2,s2,0x1
     bf0:	0000                	unimp
     bf2:	0518                	addi	a4,sp,640
     bf4:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     bf8:	0106                	slli	sp,sp,0x1
     bfa:	1505                	addi	a0,a0,-31
     bfc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bfe:	0600                	addi	s0,sp,768
     c00:	0518                	addi	a4,sp,640
     c02:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c06:	0536                	slli	a0,a0,0xd
     c08:	00000907          	.insn	4, 0x0907
     c0c:	0106                	slli	sp,sp,0x1
     c0e:	0e05                	addi	t3,t3,1
     c10:	0409                	addi	s0,s0,2
     c12:	3700                	.insn	2, 0x3700
     c14:	0e05                	addi	t3,t3,1
     c16:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c18:	0300                	addi	s0,sp,384
     c1a:	0160                	addi	s0,sp,140
     c1c:	0c05                	addi	s8,s8,1
     c1e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c20:	0600                	addi	s0,sp,768
     c22:	0518                	addi	a4,sp,640
     c24:	00000907          	.insn	4, 0x0907
     c28:	0106                	slli	sp,sp,0x1
     c2a:	1d05                	addi	s10,s10,-31
     c2c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c2e:	0400                	addi	s0,sp,512
     c30:	0301                	addi	t1,t1,0
     c32:	0160                	addi	s0,sp,140
     c34:	2805                	jal	c64 <STACK_SIZE+0x64>
     c36:	0609                	addi	a2,a2,2
     c38:	0400                	addi	s0,sp,512
     c3a:	1d053703          	.insn	4, 0x1d053703
     c3e:	0409                	addi	s0,s0,2
     c40:	0100                	addi	s0,sp,128
     c42:	1505                	addi	a0,a0,-31
     c44:	0409                	addi	s0,s0,2
     c46:	0600                	addi	s0,sp,768
     c48:	0518                	addi	a4,sp,640
     c4a:	00000907          	.insn	4, 0x0907
     c4e:	0106                	slli	sp,sp,0x1
     c50:	0705                	addi	a4,a4,1
     c52:	0009                	c.nop	2
     c54:	0400                	addi	s0,sp,512
     c56:	0601                	addi	a2,a2,0
     c58:	05015303          	lhu	t1,80(sp)
     c5c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c60:	0304                	addi	s1,sp,384
     c62:	0521                	addi	a0,a0,8
     c64:	0906                	slli	s2,s2,0x1
     c66:	0000                	unimp
     c68:	0518                	addi	a4,sp,640
     c6a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c6e:	0106                	slli	sp,sp,0x1
     c70:	1505                	addi	a0,a0,-31
     c72:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c74:	0600                	addi	s0,sp,768
     c76:	0518                	addi	a4,sp,640
     c78:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c7c:	053a                	slli	a0,a0,0xe
     c7e:	00000907          	.insn	4, 0x0907
     c82:	0106                	slli	sp,sp,0x1
     c84:	0e05                	addi	t3,t3,1
     c86:	0409                	addi	s0,s0,2
     c88:	0400                	addi	s0,sp,512
     c8a:	0301                	addi	t1,t1,0
     c8c:	015d                	addi	sp,sp,23
     c8e:	2805                	jal	cbe <STACK_SIZE+0xbe>
     c90:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c92:	0400                	addi	s0,sp,512
     c94:	0c053a03          	.insn	4, 0x0c053a03
     c98:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c9a:	0600                	addi	s0,sp,768
     c9c:	0518                	addi	a4,sp,640
     c9e:	00000907          	.insn	4, 0x0907
     ca2:	0106                	slli	sp,sp,0x1
     ca4:	1d05                	addi	s10,s10,-31
     ca6:	0609                	addi	a2,a2,2
     ca8:	0100                	addi	s0,sp,128
     caa:	1505                	addi	a0,a0,-31
     cac:	0409                	addi	s0,s0,2
     cae:	0600                	addi	s0,sp,768
     cb0:	0518                	addi	a4,sp,640
     cb2:	00000907          	.insn	4, 0x0907
     cb6:	0106                	slli	sp,sp,0x1
     cb8:	0705                	addi	a4,a4,1
     cba:	0009                	c.nop	2
     cbc:	0400                	addi	s0,sp,512
     cbe:	0601                	addi	a2,a2,0
     cc0:	05015003          	lhu	zero,80(sp)
     cc4:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     cc8:	0304                	addi	s1,sp,384
     cca:	0520                	addi	s0,sp,648
     ccc:	0906                	slli	s2,s2,0x1
     cce:	0000                	unimp
     cd0:	0518                	addi	a4,sp,640
     cd2:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     cd6:	0106                	slli	sp,sp,0x1
     cd8:	1505                	addi	a0,a0,-31
     cda:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     cdc:	0600                	addi	s0,sp,768
     cde:	0518                	addi	a4,sp,640
     ce0:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ce4:	053e                	slli	a0,a0,0xf
     ce6:	00000907          	.insn	4, 0x0907
     cea:	0106                	slli	sp,sp,0x1
     cec:	0e05                	addi	t3,t3,1
     cee:	0409                	addi	s0,s0,2
     cf0:	0100                	addi	s0,sp,128
     cf2:	0c05                	addi	s8,s8,1
     cf4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     cf6:	0600                	addi	s0,sp,768
     cf8:	0518                	addi	a4,sp,640
     cfa:	00000907          	.insn	4, 0x0907
     cfe:	0106                	slli	sp,sp,0x1
     d00:	1d05                	addi	s10,s10,-31
     d02:	0609                	addi	a2,a2,2
     d04:	0100                	addi	s0,sp,128
     d06:	1505                	addi	a0,a0,-31
     d08:	0409                	addi	s0,s0,2
     d0a:	0600                	addi	s0,sp,768
     d0c:	0518                	addi	a4,sp,640
     d0e:	00000907          	.insn	4, 0x0907
     d12:	0106                	slli	sp,sp,0x1
     d14:	0705                	addi	a4,a4,1
     d16:	0009                	c.nop	2
     d18:	0400                	addi	s0,sp,512
     d1a:	0601                	addi	a2,a2,0
     d1c:	05014d03          	lbu	s10,80(sp)
     d20:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d24:	0304                	addi	s1,sp,384
     d26:	051f 0906 0000      	.insn	6, 0x0906051f
     d2c:	0518                	addi	a4,sp,640
     d2e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d32:	0106                	slli	sp,sp,0x1
     d34:	1505                	addi	a0,a0,-31
     d36:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d38:	0600                	addi	s0,sp,768
     d3a:	0518                	addi	a4,sp,640
     d3c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d40:	0542                	slli	a0,a0,0x10
     d42:	00000907          	.insn	4, 0x0907
     d46:	0106                	slli	sp,sp,0x1
     d48:	0e05                	addi	t3,t3,1
     d4a:	0409                	addi	s0,s0,2
     d4c:	0100                	addi	s0,sp,128
     d4e:	0c05                	addi	s8,s8,1
     d50:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d52:	0600                	addi	s0,sp,768
     d54:	0518                	addi	a4,sp,640
     d56:	00000907          	.insn	4, 0x0907
     d5a:	0106                	slli	sp,sp,0x1
     d5c:	1e05                	addi	t3,t3,-31
     d5e:	0609                	addi	a2,a2,2
     d60:	0100                	addi	s0,sp,128
     d62:	1605                	addi	a2,a2,-31
     d64:	0409                	addi	s0,s0,2
     d66:	0600                	addi	s0,sp,768
     d68:	0518                	addi	a4,sp,640
     d6a:	00000907          	.insn	4, 0x0907
     d6e:	0106                	slli	sp,sp,0x1
     d70:	0705                	addi	a4,a4,1
     d72:	0009                	c.nop	2
     d74:	0400                	addi	s0,sp,512
     d76:	0601                	addi	a2,a2,0
     d78:	05014a03          	lbu	s4,80(sp)
     d7c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d80:	0304                	addi	s1,sp,384
     d82:	051e                	slli	a0,a0,0x7
     d84:	0906                	slli	s2,s2,0x1
     d86:	0000                	unimp
     d88:	0518                	addi	a4,sp,640
     d8a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d8e:	0106                	slli	sp,sp,0x1
     d90:	1505                	addi	a0,a0,-31
     d92:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d94:	0600                	addi	s0,sp,768
     d96:	0518                	addi	a4,sp,640
     d98:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d9c:	0546                	slli	a0,a0,0x11
     d9e:	00000907          	.insn	4, 0x0907
     da2:	0106                	slli	sp,sp,0x1
     da4:	0e05                	addi	t3,t3,1
     da6:	0409                	addi	s0,s0,2
     da8:	0100                	addi	s0,sp,128
     daa:	0c05                	addi	s8,s8,1
     dac:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     dae:	0600                	addi	s0,sp,768
     db0:	0518                	addi	a4,sp,640
     db2:	00000907          	.insn	4, 0x0907
     db6:	0106                	slli	sp,sp,0x1
     db8:	1e05                	addi	t3,t3,-31
     dba:	0609                	addi	a2,a2,2
     dbc:	0100                	addi	s0,sp,128
     dbe:	1605                	addi	a2,a2,-31
     dc0:	0409                	addi	s0,s0,2
     dc2:	0600                	addi	s0,sp,768
     dc4:	0518                	addi	a4,sp,640
     dc6:	00000907          	.insn	4, 0x0907
     dca:	0106                	slli	sp,sp,0x1
     dcc:	0705                	addi	a4,a4,1
     dce:	0009                	c.nop	2
     dd0:	0400                	addi	s0,sp,512
     dd2:	0601                	addi	a2,a2,0
     dd4:	05014703          	lbu	a4,80(sp)
     dd8:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ddc:	0304                	addi	s1,sp,384
     dde:	051d                	addi	a0,a0,7
     de0:	0906                	slli	s2,s2,0x1
     de2:	0000                	unimp
     de4:	0518                	addi	a4,sp,640
     de6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     dea:	0106                	slli	sp,sp,0x1
     dec:	1505                	addi	a0,a0,-31
     dee:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     df0:	0600                	addi	s0,sp,768
     df2:	0518                	addi	a4,sp,640
     df4:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     df8:	054a                	slli	a0,a0,0x12
     dfa:	00000907          	.insn	4, 0x0907
     dfe:	0106                	slli	sp,sp,0x1
     e00:	0e05                	addi	t3,t3,1
     e02:	0409                	addi	s0,s0,2
     e04:	0100                	addi	s0,sp,128
     e06:	0c05                	addi	s8,s8,1
     e08:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e0a:	0600                	addi	s0,sp,768
     e0c:	0518                	addi	a4,sp,640
     e0e:	00000907          	.insn	4, 0x0907
     e12:	0106                	slli	sp,sp,0x1
     e14:	1e05                	addi	t3,t3,-31
     e16:	0609                	addi	a2,a2,2
     e18:	0100                	addi	s0,sp,128
     e1a:	1605                	addi	a2,a2,-31
     e1c:	0409                	addi	s0,s0,2
     e1e:	0600                	addi	s0,sp,768
     e20:	0518                	addi	a4,sp,640
     e22:	00000907          	.insn	4, 0x0907
     e26:	0106                	slli	sp,sp,0x1
     e28:	0705                	addi	a4,a4,1
     e2a:	0009                	c.nop	2
     e2c:	0400                	addi	s0,sp,512
     e2e:	0601                	addi	a2,a2,0
     e30:	05014403          	lbu	s0,80(sp)
     e34:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     e38:	0304                	addi	s1,sp,384
     e3a:	051c                	addi	a5,sp,640
     e3c:	0906                	slli	s2,s2,0x1
     e3e:	0000                	unimp
     e40:	0518                	addi	a4,sp,640
     e42:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     e46:	0106                	slli	sp,sp,0x1
     e48:	1505                	addi	a0,a0,-31
     e4a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e4c:	0600                	addi	s0,sp,768
     e4e:	0518                	addi	a4,sp,640
     e50:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     e54:	054e                	slli	a0,a0,0x13
     e56:	00000907          	.insn	4, 0x0907
     e5a:	0106                	slli	sp,sp,0x1
     e5c:	0e05                	addi	t3,t3,1
     e5e:	0409                	addi	s0,s0,2
     e60:	0100                	addi	s0,sp,128
     e62:	0c05                	addi	s8,s8,1
     e64:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e66:	0600                	addi	s0,sp,768
     e68:	0518                	addi	a4,sp,640
     e6a:	00000907          	.insn	4, 0x0907
     e6e:	0106                	slli	sp,sp,0x1
     e70:	1e05                	addi	t3,t3,-31
     e72:	0409                	addi	s0,s0,2
     e74:	0100                	addi	s0,sp,128
     e76:	1605                	addi	a2,a2,-31
     e78:	0409                	addi	s0,s0,2
     e7a:	0600                	addi	s0,sp,768
     e7c:	0518                	addi	a4,sp,640
     e7e:	00000907          	.insn	4, 0x0907
     e82:	0106                	slli	sp,sp,0x1
     e84:	0705                	addi	a4,a4,1
     e86:	0009                	c.nop	2
     e88:	0400                	addi	s0,sp,512
     e8a:	0601                	addi	a2,a2,0
     e8c:	05014103          	lbu	sp,80(sp)
     e90:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     e94:	0304                	addi	s1,sp,384
     e96:	0906051b          	.insn	4, 0x0906051b
     e9a:	0000                	unimp
     e9c:	0518                	addi	a4,sp,640
     e9e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ea2:	0106                	slli	sp,sp,0x1
     ea4:	1505                	addi	a0,a0,-31
     ea6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ea8:	0600                	addi	s0,sp,768
     eaa:	0518                	addi	a4,sp,640
     eac:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     eb0:	0552                	slli	a0,a0,0x14
     eb2:	00000907          	.insn	4, 0x0907
     eb6:	0106                	slli	sp,sp,0x1
     eb8:	0e05                	addi	t3,t3,1
     eba:	0409                	addi	s0,s0,2
     ebc:	0100                	addi	s0,sp,128
     ebe:	0c05                	addi	s8,s8,1
     ec0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ec2:	0600                	addi	s0,sp,768
     ec4:	0518                	addi	a4,sp,640
     ec6:	00000907          	.insn	4, 0x0907
     eca:	0106                	slli	sp,sp,0x1
     ecc:	1e05                	addi	t3,t3,-31
     ece:	0409                	addi	s0,s0,2
     ed0:	0100                	addi	s0,sp,128
     ed2:	1605                	addi	a2,a2,-31
     ed4:	0409                	addi	s0,s0,2
     ed6:	0600                	addi	s0,sp,768
     ed8:	0518                	addi	a4,sp,640
     eda:	00000907          	.insn	4, 0x0907
     ede:	0106                	slli	sp,sp,0x1
     ee0:	0705                	addi	a4,a4,1
     ee2:	0009                	c.nop	2
     ee4:	0400                	addi	s0,sp,512
     ee6:	0601                	addi	a2,a2,0
     ee8:	017fbe03          	.insn	4, 0x017fbe03
     eec:	0305                	addi	t1,t1,1
     eee:	0009                	c.nop	2
     ef0:	0400                	addi	s0,sp,512
     ef2:	06051a03          	lh	s4,96(a0)
     ef6:	0009                	c.nop	2
     ef8:	1800                	addi	s0,sp,48
     efa:	0305                	addi	t1,t1,1
     efc:	0009                	c.nop	2
     efe:	0600                	addi	s0,sp,768
     f00:	0501                	addi	a0,a0,0
     f02:	0915                	addi	s2,s2,5
     f04:	0002                	c.slli	zero,0x0
     f06:	1806                	slli	a6,a6,0x21
     f08:	0305                	addi	t1,t1,1
     f0a:	0009                	c.nop	2
     f0c:	5600                	lw	s0,40(a2)
     f0e:	0705                	addi	a4,a4,1
     f10:	0009                	c.nop	2
     f12:	0600                	addi	s0,sp,768
     f14:	0501                	addi	a0,a0,0
     f16:	090e                	slli	s2,s2,0x3
     f18:	0004                	.insn	2, 0x0004
     f1a:	0501                	addi	a0,a0,0
     f1c:	090c                	addi	a1,sp,144
     f1e:	0002                	c.slli	zero,0x0
     f20:	1806                	slli	a6,a6,0x21
     f22:	0705                	addi	a4,a4,1
     f24:	0009                	c.nop	2
     f26:	0600                	addi	s0,sp,768
     f28:	0501                	addi	a0,a0,0
     f2a:	091e                	slli	s2,s2,0x7
     f2c:	0004                	.insn	2, 0x0004
     f2e:	0501                	addi	a0,a0,0
     f30:	0916                	slli	s2,s2,0x5
     f32:	0004                	.insn	2, 0x0004
     f34:	1806                	slli	a6,a6,0x21
     f36:	0705                	addi	a4,a4,1
     f38:	0009                	c.nop	2
     f3a:	0600                	addi	s0,sp,768
     f3c:	0501                	addi	a0,a0,0
     f3e:	00000907          	.insn	4, 0x0907
     f42:	0104                	addi	s1,sp,128
     f44:	0306                	slli	t1,t1,0x1
     f46:	7fbc                	.insn	2, 0x7fbc
     f48:	0501                	addi	a0,a0,0
     f4a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     f4e:	0106                	slli	sp,sp,0x1
     f50:	1505                	addi	a0,a0,-31
     f52:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f54:	0600                	addi	s0,sp,768
     f56:	0518                	addi	a4,sp,640
     f58:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     f5c:	0106                	slli	sp,sp,0x1
     f5e:	1505                	addi	a0,a0,-31
     f60:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f62:	0600                	addi	s0,sp,768
     f64:	0519                	addi	a0,a0,6
     f66:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     f6a:	0106                	slli	sp,sp,0x1
     f6c:	2805                	jal	f9c <STACK_SIZE+0x39c>
     f6e:	0409                	addi	s0,s0,2
     f70:	0600                	addi	s0,sp,768
     f72:	0518                	addi	a4,sp,640
     f74:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     f78:	0518                	addi	a4,sp,640
     f7a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     f7e:	0501                	addi	a0,a0,0
     f80:	090a                	slli	s2,s2,0x2
     f82:	0000                	unimp
     f84:	0518                	addi	a4,sp,640
     f86:	0905                	addi	s2,s2,1
     f88:	0000                	unimp
     f8a:	0106                	slli	sp,sp,0x1
     f8c:	2a05                	jal	10bc <STACK_SIZE+0x4bc>
     f8e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f90:	1600                	addi	s0,sp,800
     f92:	0a05                	addi	s4,s4,1
     f94:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f96:	1800                	addi	s0,sp,48
     f98:	2a05                	jal	10c8 <STACK_SIZE+0x4c8>
     f9a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f9c:	0600                	addi	s0,sp,768
     f9e:	0518                	addi	a4,sp,640
     fa0:	0905                	addi	s2,s2,1
     fa2:	0000                	unimp
     fa4:	0106                	slli	sp,sp,0x1
     fa6:	2a05                	jal	10d6 <STACK_SIZE+0x4d6>
     fa8:	0409                	addi	s0,s0,2
     faa:	0600                	addi	s0,sp,768
     fac:	0518                	addi	a4,sp,640
     fae:	0905                	addi	s2,s2,1
     fb0:	0000                	unimp
     fb2:	0514                	addi	a3,sp,640
     fb4:	090a                	slli	s2,s2,0x2
     fb6:	0002                	c.slli	zero,0x0
     fb8:	051d                	addi	a0,a0,7
     fba:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     fbe:	1806                	slli	a6,a6,0x21
     fc0:	0105                	addi	sp,sp,1
     fc2:	0500                	addi	s0,sp,640
     fc4:	ca02                	sw	zero,20(sp)
     fc6:	0001                	nop
     fc8:	0001                	nop
     fca:	0101                	addi	sp,sp,0
     fcc:	0158                	addi	a4,sp,132
     fce:	0000                	unimp
     fd0:	0005                	c.nop	1
     fd2:	0004                	.insn	2, 0x0004
     fd4:	002e                	c.slli	zero,0xb
     fd6:	0000                	unimp
     fd8:	0101                	addi	sp,sp,0
     fda:	fb01                	bnez	a4,eea <STACK_SIZE+0x2ea>
     fdc:	0d0e                	slli	s10,s10,0x3
     fde:	0100                	addi	s0,sp,128
     fe0:	0101                	addi	sp,sp,0
     fe2:	0001                	nop
     fe4:	0000                	unimp
     fe6:	0001                	nop
     fe8:	0100                	addi	s0,sp,128
     fea:	0101                	addi	sp,sp,0
     fec:	021f 010f 0000      	.insn	6, 0x010f021f
     ff2:	0010                	.insn	2, 0x0010
     ff4:	0000                	unimp
     ff6:	0102                	c.slli	sp,0x0
     ff8:	021f 020f 014e      	.insn	6, 0x014e020f021f
     ffe:	0000                	unimp
    1000:	4e01                	li	t3,0
    1002:	0001                	nop
    1004:	0100                	addi	s0,sp,128
    1006:	0500                	addi	s0,sp,640
    1008:	ca02                	sw	zero,20(sp)
    100a:	0001                	nop
    100c:	0301                	addi	t1,t1,0
    100e:	0103010f          	.insn	4, 0x0103010f
    1012:	0809                	addi	a6,a6,2
    1014:	0100                	addi	s0,sp,128
    1016:	08090103          	lb	sp,128(s2)
    101a:	0100                	addi	s0,sp,128
    101c:	04090503          	lb	a0,64(s2)
    1020:	0100                	addi	s0,sp,128
    1022:	08090103          	lb	sp,128(s2)
    1026:	0100                	addi	s0,sp,128
    1028:	04090103          	lb	sp,64(s2)
    102c:	0100                	addi	s0,sp,128
    102e:	04090103          	lb	sp,64(s2)
    1032:	0100                	addi	s0,sp,128
    1034:	04090103          	lb	sp,64(s2)
    1038:	0100                	addi	s0,sp,128
    103a:	04090403          	lb	s0,64(s2)
    103e:	0100                	addi	s0,sp,128
    1040:	02090103          	lb	sp,32(s2)
    1044:	0100                	addi	s0,sp,128
    1046:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    1048:	0000                	unimp
    104a:	0101                	addi	sp,sp,0
    104c:	0500                	addi	s0,sp,640
    104e:	0002                	c.slli	zero,0x0
    1050:	0000                	unimp
    1052:	0301                	addi	t1,t1,0
    1054:	0124                	addi	s1,sp,136
    1056:	04090103          	lb	sp,64(s2)
    105a:	0100                	addi	s0,sp,128
    105c:	04090103          	lb	sp,64(s2)
    1060:	0100                	addi	s0,sp,128
    1062:	04090103          	lb	sp,64(s2)
    1066:	0100                	addi	s0,sp,128
    1068:	04090103          	lb	sp,64(s2)
    106c:	0100                	addi	s0,sp,128
    106e:	04090103          	lb	sp,64(s2)
    1072:	0100                	addi	s0,sp,128
    1074:	04090103          	lb	sp,64(s2)
    1078:	0100                	addi	s0,sp,128
    107a:	04090103          	lb	sp,64(s2)
    107e:	0100                	addi	s0,sp,128
    1080:	04090103          	lb	sp,64(s2)
    1084:	0100                	addi	s0,sp,128
    1086:	04090103          	lb	sp,64(s2)
    108a:	0100                	addi	s0,sp,128
    108c:	04090103          	lb	sp,64(s2)
    1090:	0100                	addi	s0,sp,128
    1092:	04090103          	lb	sp,64(s2)
    1096:	0100                	addi	s0,sp,128
    1098:	04090103          	lb	sp,64(s2)
    109c:	0100                	addi	s0,sp,128
    109e:	04090103          	lb	sp,64(s2)
    10a2:	0100                	addi	s0,sp,128
    10a4:	04090103          	lb	sp,64(s2)
    10a8:	0100                	addi	s0,sp,128
    10aa:	04090103          	lb	sp,64(s2)
    10ae:	0100                	addi	s0,sp,128
    10b0:	04090103          	lb	sp,64(s2)
    10b4:	0100                	addi	s0,sp,128
    10b6:	04090103          	lb	sp,64(s2)
    10ba:	0100                	addi	s0,sp,128
    10bc:	04090103          	lb	sp,64(s2)
    10c0:	0100                	addi	s0,sp,128
    10c2:	04090103          	lb	sp,64(s2)
    10c6:	0100                	addi	s0,sp,128
    10c8:	04090103          	lb	sp,64(s2)
    10cc:	0100                	addi	s0,sp,128
    10ce:	04090103          	lb	sp,64(s2)
    10d2:	0100                	addi	s0,sp,128
    10d4:	04090103          	lb	sp,64(s2)
    10d8:	0100                	addi	s0,sp,128
    10da:	04090103          	lb	sp,64(s2)
    10de:	0100                	addi	s0,sp,128
    10e0:	04090103          	lb	sp,64(s2)
    10e4:	0100                	addi	s0,sp,128
    10e6:	04090103          	lb	sp,64(s2)
    10ea:	0100                	addi	s0,sp,128
    10ec:	04090103          	lb	sp,64(s2)
    10f0:	0100                	addi	s0,sp,128
    10f2:	04090103          	lb	sp,64(s2)
    10f6:	0100                	addi	s0,sp,128
    10f8:	04090103          	lb	sp,64(s2)
    10fc:	0100                	addi	s0,sp,128
    10fe:	04090103          	lb	sp,64(s2)
    1102:	0100                	addi	s0,sp,128
    1104:	04090103          	lb	sp,64(s2)
    1108:	0100                	addi	s0,sp,128
    110a:	04090103          	lb	sp,64(s2)
    110e:	0100                	addi	s0,sp,128
    1110:	04090403          	lb	s0,64(s2)
    1114:	0100                	addi	s0,sp,128
    1116:	04090403          	lb	s0,64(s2)
    111a:	0100                	addi	s0,sp,128
    111c:	04090303          	lb	t1,64(s2)
    1120:	0100                	addi	s0,sp,128
    1122:	0409                	addi	s0,s0,2
    1124:	0000                	unimp
    1126:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f697067          	.insn	4, 0x6f697067
   4:	775f 6972 6574      	.insn	6, 0x65746972775f
   a:	6700                	.insn	2, 0x6700
   c:	6970                	.insn	2, 0x6970
   e:	65725f6f          	jal	t5,25e64 <STACK_SIZE+0x25264>
  12:	6461                	lui	s0,0x18
  14:	7300                	.insn	2, 0x7300
  16:	6e695f73          	.insn	4, 0x6e695f73
  1a:	7469                	lui	s0,0xffffa
  1c:	6700                	.insn	2, 0x6700
  1e:	6970                	.insn	2, 0x6970
  20:	6e695f6f          	jal	t5,95706 <STACK_SIZE+0x94b06>
  24:	7469                	lui	s0,0xffffa
  26:	695f 006e 7373      	.insn	6, 0x7373006e695f
  2c:	725f 7365 7465      	.insn	6, 0x74657365725f
  32:	7500                	.insn	2, 0x7500
  34:	736e                	.insn	2, 0x736e
  36:	6769                	lui	a4,0x1a
  38:	656e                	.insn	2, 0x656e
  3a:	2064                	.insn	2, 0x2064
  3c:	72616863          	bltu	sp,t1,76c <__DYNAMIC+0x76c>
  40:	6c00                	.insn	2, 0x6c00
  42:	6465                	lui	s0,0x19
  44:	6f5f 6666 7300      	.insn	6, 0x730066666f5f
  4a:	6f68                	.insn	2, 0x6f68
  4c:	7472                	.insn	2, 0x7472
  4e:	7520                	.insn	2, 0x7520
  50:	736e                	.insn	2, 0x736e
  52:	6769                	lui	a4,0x1a
  54:	656e                	.insn	2, 0x656e
  56:	2064                	.insn	2, 0x2064
  58:	6e69                	lui	t3,0x1a
  5a:	0074                	addi	a3,sp,12
  5c:	656c                	.insn	2, 0x656c
  5e:	5f64                	lw	s1,124(a4)
  60:	5f006e6f          	jal	t3,6650 <STACK_SIZE+0x5a50>
  64:	755f 6e69 3374      	.insn	6, 0x33746e69755f
  6a:	5f32                	lw	t5,44(sp)
  6c:	0074                	addi	a3,sp,12
  6e:	6d70                	.insn	2, 0x6d70
  70:	745f646f          	jal	s0,f6fb4 <STACK_SIZE+0xf63b4>
  74:	7261                	lui	tp,0xffff8
  76:	00746567          	.insn	4, 0x00746567
  7a:	616d                	addi	sp,sp,240
  7c:	6e69                	lui	t3,0x1a
  7e:	6c00                	.insn	2, 0x6c00
  80:	20676e6f          	jal	t3,76286 <STACK_SIZE+0x75686>
  84:	6f6c                	.insn	2, 0x6f6c
  86:	676e                	.insn	2, 0x676e
  88:	7520                	.insn	2, 0x7520
  8a:	736e                	.insn	2, 0x736e
  8c:	6769                	lui	a4,0x1a
  8e:	656e                	.insn	2, 0x656e
  90:	2064                	.insn	2, 0x2064
  92:	6e69                	lui	t3,0x1a
  94:	0074                	addi	a3,sp,12
  96:	20554e47          	.insn	4, 0x20554e47
  9a:	20333243          	.insn	4, 0x20333243
  9e:	3531                	jal	fffffeaa <stack+0xfeeff2aa>
  a0:	322e                	.insn	2, 0x322e
  a2:	302e                	.insn	2, 0x302e
  a4:	2d20                	.insn	2, 0x2d20
  a6:	616d                	addi	sp,sp,240
  a8:	6962                	.insn	2, 0x6962
  aa:	693d                	lui	s2,0xf
  ac:	706c                	.insn	2, 0x706c
  ae:	2d203233          	.insn	4, 0x2d203233
  b2:	696d                	lui	s2,0x1b
  b4:	732d6173          	.insn	4, 0x732d6173
  b8:	6570                	.insn	2, 0x6570
  ba:	30323d63          	.insn	4, 0x30323d63
  be:	3931                	jal	fffffcda <stack+0xfeeff0da>
  c0:	3231                	jal	fffff9cc <stack+0xfeefedcc>
  c2:	3331                	jal	fffffdce <stack+0xfeeff1ce>
  c4:	2d20                	.insn	2, 0x2d20
  c6:	616d                	addi	sp,sp,240
  c8:	6372                	.insn	2, 0x6372
  ca:	3d68                	.insn	2, 0x3d68
  cc:	7672                	.insn	2, 0x7672
  ce:	6d693233          	.insn	4, 0x6d693233
  d2:	6d7a5f63          	bge	s4,s7,7b0 <__DYNAMIC+0x7b0>
  d6:	756d                	lui	a0,0xffffb
  d8:	5f6c                	lw	a1,124(a4)
  da:	637a                	.insn	2, 0x637a
  dc:	2061                	jal	164 <__DYNAMIC+0x164>
  de:	672d                	lui	a4,0xb
  e0:	2d20                	.insn	2, 0x2d20
  e2:	2d20324f          	.insn	4, 0x2d20324f
  e6:	6666                	.insn	2, 0x6666
  e8:	6e75                	lui	t3,0x1d
  ea:	6f697463          	bgeu	s2,s6,7d2 <__DYNAMIC+0x7d2>
  ee:	2d6e                	.insn	2, 0x2d6e
  f0:	74636573          	.insn	4, 0x74636573
  f4:	6f69                	lui	t5,0x1a
  f6:	736e                	.insn	2, 0x736e
  f8:	2d20                	.insn	2, 0x2d20
  fa:	6466                	.insn	2, 0x6466
  fc:	7461                	lui	s0,0xffff8
  fe:	2d61                	jal	796 <__DYNAMIC+0x796>
 100:	74636573          	.insn	4, 0x74636573
 104:	6f69                	lui	t5,0x1a
 106:	736e                	.insn	2, 0x736e
 108:	6700                	.insn	2, 0x6700
 10a:	6970                	.insn	2, 0x6970
 10c:	6e695f6f          	jal	t5,957f2 <STACK_SIZE+0x94bf2>
 110:	7469                	lui	s0,0xffffa
 112:	6f5f 7475 6c00      	.insn	6, 0x6c0074756f5f
 118:	20676e6f          	jal	t3,7631e <STACK_SIZE+0x7571e>
 11c:	6f6c                	.insn	2, 0x6f6c
 11e:	676e                	.insn	2, 0x676e
 120:	6920                	.insn	2, 0x6920
 122:	746e                	.insn	2, 0x746e
 124:	6d00                	.insn	2, 0x6d00
 126:	7361                	lui	t1,0xffff8
 128:	6e69006b          	.insn	4, 0x6e69006b
 12c:	6564                	.insn	2, 0x6564
 12e:	0078                	addi	a4,sp,12
 130:	6174                	.insn	2, 0x6174
 132:	6772                	.insn	2, 0x6772
 134:	7465                	lui	s0,0xffff9
 136:	735f 0073 6873      	.insn	6, 0x68730073735f
 13c:	2074726f          	jal	tp,47b42 <STACK_SIZE+0x46f42>
 140:	6e69                	lui	t3,0x1a
 142:	0074                	addi	a3,sp,12
 144:	6d6d6f63          	bltu	s10,s6,822 <__DYNAMIC+0x822>
 148:	632f6e6f          	jal	t3,f677a <STACK_SIZE+0xf5b7a>
 14c:	7472                	.insn	2, 0x7472
 14e:	2e30                	.insn	2, 0x2e30
 150:	6e2f0053          	.insn	4, 0x6e2f0053
 154:	7361                	lui	t1,0xffff8
 156:	2f69652f          	.insn	4, 0x2f69652f
 15a:	6f68                	.insn	2, 0x6f68
 15c:	656d                	lui	a0,0x1b
 15e:	3865672f          	.insn	4, 0x3865672f
 162:	78696437          	lui	s0,0x78696
 166:	7564452f          	.insn	4, 0x7564452f
 16a:	4334                	lw	a3,64(a4)
 16c:	6968                	.insn	2, 0x6968
 16e:	2f70                	.insn	2, 0x2f70
 170:	6944                	.insn	2, 0x6944
 172:	6164                	.insn	2, 0x6164
 174:	63697463          	bgeu	s2,s6,79c <__DYNAMIC+0x79c>
 178:	532d                	li	t1,-21
 17a:	732f436f          	jal	t1,f48ac <STACK_SIZE+0xf3cac>
 17e:	4e470077          	.insn	4, 0x4e470077
 182:	2055                	jal	226 <__DYNAMIC+0x226>
 184:	5341                	li	t1,-16
 186:	3220                	.insn	2, 0x3220
 188:	342e                	.insn	2, 0x342e
 18a:	0036                	c.slli	zero,0xd

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	735f 6474 6e69      	.insn	6, 0x6e696474735f
   6:	2e74                	.insn	2, 0x2e74
   8:	0068                	addi	a0,sp,12
   a:	6c62                	.insn	2, 0x6c62
   c:	6e69                	lui	t3,0x1a
   e:	6f63006b          	.insn	4, 0x6f63006b
  12:	6d6d                	lui	s10,0x1b
  14:	67006e6f          	jal	t3,6684 <STACK_SIZE+0x5a84>
  18:	6970                	.insn	2, 0x6970
  1a:	00682e6f          	jal	t3,82020 <STACK_SIZE+0x81420>
  1e:	6c62                	.insn	2, 0x6c62
  20:	6e69                	lui	t3,0x1a
  22:	6c622f6b          	.insn	4, 0x6c622f6b
  26:	6e69                	lui	t3,0x1a
  28:	00632e6b          	.insn	4, 0x00632e6b
  2c:	73616e2f          	.insn	4, 0x73616e2f
  30:	2f69652f          	.insn	4, 0x2f69652f
  34:	72616873          	.insn	4, 0x72616873
  38:	2f65                	jal	7f0 <__DYNAMIC+0x7f0>
  3a:	6f74                	.insn	2, 0x6f74
  3c:	2f736c6f          	jal	s8,36b32 <STACK_SIZE+0x35f32>
  40:	6465                	lui	s0,0x19
  42:	5f61                	li	t5,-8
  44:	7266                	.insn	2, 0x7266
  46:	6565                	lui	a0,0x19
  48:	65726177          	.insn	4, 0x65726177
  4c:	7369722f          	.insn	4, 0x7369722f
  50:	362f7663          	bgeu	t5,sp,3bc <__DYNAMIC+0x3bc>
  54:	2d34                	.insn	2, 0x2d34
  56:	6c65                	lui	s8,0x19
  58:	2d66                	.insn	2, 0x2d66
  5a:	6275                	lui	tp,0x1d
  5c:	6e75                	lui	t3,0x1d
  5e:	7574                	.insn	2, 0x7574
  60:	322d                	jal	fffff98a <stack+0xfeefed8a>
  62:	2e34                	.insn	2, 0x2e34
  64:	3430                	.insn	2, 0x3430
  66:	672d                	lui	a4,0xb
  68:	322f6363          	bltu	t5,sp,38e <__DYNAMIC+0x38e>
  6c:	3230                	.insn	2, 0x3230
  6e:	2e36                	.insn	2, 0x2e36
  70:	3430                	.insn	2, 0x3430
  72:	302e                	.insn	2, 0x302e
  74:	2f35                	jal	7b0 <__DYNAMIC+0x7b0>
  76:	6972                	.insn	2, 0x6972
  78:	36766373          	.insn	4, 0x36766373
  7c:	2d34                	.insn	2, 0x2d34
  7e:	6e75                	lui	t3,0x1d
  80:	776f6e6b          	.insn	4, 0x776f6e6b
  84:	2d6e                	.insn	2, 0x2d6e
  86:	6c65                	lui	s8,0x19
  88:	2f66                	.insn	2, 0x2f66
  8a:	6e69                	lui	t3,0x1a
  8c:	64756c63          	bltu	a0,t2,6e4 <__DYNAMIC+0x6e4>
  90:	2f65                	jal	848 <__DYNAMIC+0x848>
  92:	616d                	addi	sp,sp,240
  94:	6e696863          	bltu	s2,t1,784 <__DYNAMIC+0x784>
  98:	0065                	c.nop	25
  9a:	73616e2f          	.insn	4, 0x73616e2f
  9e:	2f69652f          	.insn	4, 0x2f69652f
  a2:	72616873          	.insn	4, 0x72616873
  a6:	2f65                	jal	85e <__DYNAMIC+0x85e>
  a8:	6f74                	.insn	2, 0x6f74
  aa:	2f736c6f          	jal	s8,36ba0 <STACK_SIZE+0x35fa0>
  ae:	6465                	lui	s0,0x19
  b0:	5f61                	li	t5,-8
  b2:	7266                	.insn	2, 0x7266
  b4:	6565                	lui	a0,0x19
  b6:	65726177          	.insn	4, 0x65726177
  ba:	7369722f          	.insn	4, 0x7369722f
  be:	362f7663          	bgeu	t5,sp,42a <__DYNAMIC+0x42a>
  c2:	2d34                	.insn	2, 0x2d34
  c4:	6c65                	lui	s8,0x19
  c6:	2d66                	.insn	2, 0x2d66
  c8:	6275                	lui	tp,0x1d
  ca:	6e75                	lui	t3,0x1d
  cc:	7574                	.insn	2, 0x7574
  ce:	322d                	jal	fffff9f8 <stack+0xfeefedf8>
  d0:	2e34                	.insn	2, 0x2e34
  d2:	3430                	.insn	2, 0x3430
  d4:	672d                	lui	a4,0xb
  d6:	322f6363          	bltu	t5,sp,3fc <__DYNAMIC+0x3fc>
  da:	3230                	.insn	2, 0x3230
  dc:	2e36                	.insn	2, 0x2e36
  de:	3430                	.insn	2, 0x3430
  e0:	302e                	.insn	2, 0x302e
  e2:	2f35                	jal	81e <__DYNAMIC+0x81e>
  e4:	6972                	.insn	2, 0x6972
  e6:	36766373          	.insn	4, 0x36766373
  ea:	2d34                	.insn	2, 0x2d34
  ec:	6e75                	lui	t3,0x1d
  ee:	776f6e6b          	.insn	4, 0x776f6e6b
  f2:	2d6e                	.insn	2, 0x2d6e
  f4:	6c65                	lui	s8,0x19
  f6:	2f66                	.insn	2, 0x2f66
  f8:	6e69                	lui	t3,0x1a
  fa:	64756c63          	bltu	a0,t2,752 <__DYNAMIC+0x752>
  fe:	2f65                	jal	8b6 <__DYNAMIC+0x8b6>
 100:	00737973          	.insn	4, 0x00737973
 104:	5f636f73          	.insn	4, 0x5f636f73
 108:	6c727463          	bgeu	tp,t2,7d0 <__DYNAMIC+0x7d0>
 10c:	682e                	.insn	2, 0x682e
 10e:	2f00                	.insn	2, 0x2f00
 110:	616e                	.insn	2, 0x616e
 112:	69652f73          	.insn	4, 0x69652f73
 116:	6d6f682f          	.insn	4, 0x6d6f682f
 11a:	2f65                	jal	8d2 <__DYNAMIC+0x8d2>
 11c:	37386567          	.insn	4, 0x37386567
 120:	6964                	.insn	2, 0x6964
 122:	2f78                	.insn	2, 0x2f78
 124:	6445                	lui	s0,0x11
 126:	3475                	jal	fffffbd2 <stack+0xfeefefd2>
 128:	70696843          	.insn	4, 0x70696843
 12c:	6469442f          	.insn	4, 0x6469442f
 130:	6361                	lui	t1,0x18
 132:	6974                	.insn	2, 0x6974
 134:	6f532d63          	.insn	4, 0x6f532d63
 138:	77732f43          	.insn	4, 0x77732f43
 13c:	5f00                	lw	s0,56(a4)
 13e:	6564                	.insn	2, 0x6564
 140:	6166                	.insn	2, 0x6166
 142:	6c75                	lui	s8,0x1d
 144:	5f74                	lw	a3,124(a4)
 146:	7974                	.insn	2, 0x7974
 148:	6570                	.insn	2, 0x6570
 14a:	00682e73          	.insn	4, 0x00682e73
 14e:	30747263          	bgeu	s0,t2,452 <__DYNAMIC+0x452>
 152:	532e                	lw	t1,232(sp)
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	31313567          	.insn	4, 0x31313567
   a:	6335                	lui	t1,0xd
   c:	34346537          	lui	a0,0x34346
  10:	2029                	jal	1a <__DYNAMIC+0x1a>
  12:	3531                	jal	fffffe1e <stack+0xfeeff21e>
  14:	322e                	.insn	2, 0x322e
  16:	302e                	.insn	2, 0x302e
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	3941                	jal	fffffc90 <stack+0xfeeff090>
   2:	0000                	unimp
   4:	7200                	.insn	2, 0x7200
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <__DYNAMIC+0x14>
   c:	0000002f          	.insn	4, 0x002f
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	li	t5,-20
  1c:	326d                	jal	fffff9c6 <stack+0xfeefedc6>
  1e:	3070                	.insn	2, 0x3070
  20:	635f 7032 5f30      	.insn	6, 0x5f307032635f
  26:	6d7a                	.insn	2, 0x6d7a
  28:	756d                	lui	a0,0xffffb
  2a:	316c                	.insn	2, 0x316c
  2c:	3070                	.insn	2, 0x3070
  2e:	7a5f 6163 7031      	.insn	6, 0x703161637a5f
  34:	0030                	addi	a2,sp,8
  36:	0108                	addi	a0,sp,128
  38:	0b0a                	slli	s6,s6,0x2

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	unimp
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0c01                	addi	s8,s8,0 # 1d000 <STACK_SIZE+0x1c400>
   e:	0002                	c.slli	zero,0x0
  10:	0014                	.insn	2, 0x0014
	...
  1e:	0000                	unimp
  20:	0e40                	addi	s0,sp,788
  22:	7010                	.insn	2, 0x7010
  24:	000e                	c.slli	zero,0x3
  26:	0000                	unimp
  28:	0014                	.insn	2, 0x0014
	...
  36:	0000                	unimp
  38:	0e42                	slli	t3,t3,0x10
  3a:	0210                	addi	a2,sp,256
  3c:	0e00                	addi	s0,sp,784
  3e:	0000                	unimp
  40:	000c                	.insn	2, 0x000c
	...
  4e:	0000                	unimp
  50:	0018                	.insn	2, 0x0018
	...
  5e:	0000                	unimp
  60:	0e42                	slli	t3,t3,0x10
  62:	4010                	lw	a2,0(s0)
  64:	0e0a                	slli	t3,t3,0x2
  66:	4200                	lw	s0,0(a2)
  68:	0000000b          	.insn	4, 0x000b
  6c:	0018                	.insn	2, 0x0018
	...
  7a:	0000                	unimp
  7c:	0e42                	slli	t3,t3,0x10
  7e:	4010                	lw	a2,0(s0)
  80:	0e0a                	slli	t3,t3,0x2
  82:	4200                	lw	s0,0(a2)
  84:	0000000b          	.insn	4, 0x000b
  88:	000c                	.insn	2, 0x000c
	...
  96:	0000                	unimp
  98:	000c                	.insn	2, 0x000c
	...
  a6:	0000                	unimp
  a8:	0014                	.insn	2, 0x0014
  aa:	0000                	unimp
  ac:	0000                	unimp
  ae:	0000                	unimp
  b0:	008c                	addi	a1,sp,64
  b2:	0100                	addi	s0,sp,128
  b4:	013e                	slli	sp,sp,0xf
  b6:	0000                	unimp
  b8:	0e48                	addi	a0,sp,788
  ba:	0350                	addi	a2,sp,388
  bc:	0134                	addi	a3,sp,136
  be:	000e                	c.slli	zero,0x3
