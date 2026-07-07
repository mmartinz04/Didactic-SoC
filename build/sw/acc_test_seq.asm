
/nas/ei/home/ge87dix/Edu4Chip/Didactic-SoC/build//sw/acc_test_seq.elf:     file format elf32-littleriscv


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
 1000080:	3a40006f          	j	1000424 <reset_handler>

01000084 <loop>:
 1000084:	0000006f          	j	1000084 <loop>

01000088 <default_handler>:
 1000088:	30200073          	mret

0100008c <run_one_test>:
 100008c:	1141                	addi	sp,sp,-16
 100008e:	c622                	sw	s0,12(sp)
 1000090:	c426                	sw	s1,8(sp)
 1000092:	015107b7          	lui	a5,0x1510
 1000096:	4389                	li	t2,2
 1000098:	0077a023          	sw	t2,0(a5) # 1510000 <stack+0x40f400>
 100009c:	4f21                	li	t5,8
 100009e:	03e7a023          	sw	t5,32(a5)
 10000a2:	015107b7          	lui	a5,0x1510
 10000a6:	03e7a223          	sw	t5,36(a5) # 1510024 <stack+0x40f424>
 10000aa:	015107b7          	lui	a5,0x1510
 10000ae:	01510337          	lui	t1,0x1510
 10000b2:	03e7a423          	sw	t5,40(a5) # 1510028 <stack+0x40f428>
 10000b6:	015107b7          	lui	a5,0x1510
 10000ba:	8e2a                	mv	t3,a0
 10000bc:	00c30893          	addi	a7,t1,12 # 151000c <stack+0x40f40c>
 10000c0:	01030813          	addi	a6,t1,16
 10000c4:	03e7a623          	sw	t5,44(a5) # 151002c <stack+0x40f42c>
 10000c8:	937a                	add	t1,t1,t5
 10000ca:	4e81                	li	t4,0
 10000cc:	4501                	li	a0,0
 10000ce:	4491                	li	s1,4
 10000d0:	4285                	li	t0,1
 10000d2:	0ff00413          	li	s0,255
 10000d6:	86f6                	mv	a3,t4
 10000d8:	4781                	li	a5,0
 10000da:	001e8f93          	addi	t6,t4,1
 10000de:	109e0d63          	beq	t3,s1,10001f8 <run_one_test+0x16c>
 10000e2:	00b32023          	sw	a1,0(t1)
 10000e6:	00ff8733          	add	a4,t6,a5
 10000ea:	00d8a023          	sw	a3,0(a7)
 10000ee:	0ff77713          	zext.b	a4,a4
 10000f2:	00e82023          	sw	a4,0(a6)
 10000f6:	02a79d63          	bne	a5,a0,1000130 <run_one_test+0xa4>
 10000fa:	125e0763          	beq	t3,t0,1000228 <run_one_test+0x19c>
 10000fe:	00c32023          	sw	a2,0(t1)
 1000102:	00d8a023          	sw	a3,0(a7)
 1000106:	167e0263          	beq	t3,t2,100026a <run_one_test+0x1de>
 100010a:	00882023          	sw	s0,0(a6)
 100010e:	0785                	addi	a5,a5,1
 1000110:	03e78963          	beq	a5,t5,1000142 <run_one_test+0xb6>
 1000114:	00b32023          	sw	a1,0(t1)
 1000118:	00fe86b3          	add	a3,t4,a5
 100011c:	00ff8733          	add	a4,t6,a5
 1000120:	00d8a023          	sw	a3,0(a7)
 1000124:	0ff77713          	zext.b	a4,a4
 1000128:	00e82023          	sw	a4,0(a6)
 100012c:	fca787e3          	beq	a5,a0,10000fa <run_one_test+0x6e>
 1000130:	00c32023          	sw	a2,0(t1)
 1000134:	00d8a023          	sw	a3,0(a7)
 1000138:	00082023          	sw	zero,0(a6)
 100013c:	0785                	addi	a5,a5,1
 100013e:	fde79be3          	bne	a5,t5,1000114 <run_one_test+0x88>
 1000142:	0505                	addi	a0,a0,1
 1000144:	0ea1                	addi	t4,t4,8
 1000146:	f9e518e3          	bne	a0,t5,10000d6 <run_one_test+0x4a>
 100014a:	01510637          	lui	a2,0x1510
 100014e:	4f85                	li	t6,1
 1000150:	01f62023          	sw	t6,0(a2) # 1510000 <stack+0x40f400>
 1000154:	425c                	lw	a5,4(a2)
 1000156:	00460693          	addi	a3,a2,4
 100015a:	8b91                	andi	a5,a5,4
 100015c:	14079c63          	bnez	a5,10002b4 <run_one_test+0x228>
 1000160:	0006af03          	lw	t5,0(a3)
 1000164:	000f4737          	lui	a4,0xf4
 1000168:	24070713          	addi	a4,a4,576 # f4240 <STACK_SIZE+0xf3640>
 100016c:	002f7f13          	andi	t5,t5,2
 1000170:	000f0563          	beqz	t5,100017a <run_one_test+0xee>
 1000174:	a2a9                	j	10002be <run_one_test+0x232>
 1000176:	12070a63          	beqz	a4,10002aa <run_one_test+0x21e>
 100017a:	429c                	lw	a5,0(a3)
 100017c:	177d                	addi	a4,a4,-1
 100017e:	8b89                	andi	a5,a5,2
 1000180:	dbfd                	beqz	a5,1000176 <run_one_test+0xea>
 1000182:	4f85                	li	t6,1
 1000184:	4625                	li	a2,9
 1000186:	4501                	li	a0,0
 1000188:	01510837          	lui	a6,0x1510
 100018c:	015105b7          	lui	a1,0x1510
 1000190:	0851                	addi	a6,a6,20 # 1510014 <stack+0x40f414>
 1000192:	05e1                	addi	a1,a1,24 # 1510018 <stack+0x40f418>
 1000194:	4885                	li	a7,1
 1000196:	4309                	li	t1,2
 1000198:	4e8d                	li	t4,3
 100019a:	42a1                	li	t0,8
 100019c:	877e                	mv	a4,t6
 100019e:	a829                	j	10001b8 <run_one_test+0x12c>
 10001a0:	006e0563          	beq	t3,t1,10001aa <run_one_test+0x11e>
 10001a4:	4685                	li	a3,1
 10001a6:	0fde0f63          	beq	t3,t4,10002a4 <run_one_test+0x218>
 10001aa:	8f95                	sub	a5,a5,a3
 10001ac:	00f037b3          	snez	a5,a5
 10001b0:	0705                	addi	a4,a4,1
 10001b2:	953e                	add	a0,a0,a5
 10001b4:	02e60363          	beq	a2,a4,10001da <run_one_test+0x14e>
 10001b8:	fff70793          	addi	a5,a4,-1
 10001bc:	00f82023          	sw	a5,0(a6)
 10001c0:	419c                	lw	a5,0(a1)
 10001c2:	00171693          	slli	a3,a4,0x1
 10001c6:	fd1e1de3          	bne	t3,a7,10001a0 <run_one_test+0x114>
 10001ca:	86ba                	mv	a3,a4
 10001cc:	8f95                	sub	a5,a5,a3
 10001ce:	00f037b3          	snez	a5,a5
 10001d2:	0705                	addi	a4,a4,1
 10001d4:	953e                	add	a0,a0,a5
 10001d6:	fee611e3          	bne	a2,a4,10001b8 <run_one_test+0x12c>
 10001da:	0f05                	addi	t5,t5,1
 10001dc:	0621                	addi	a2,a2,8
 10001de:	0fa1                	addi	t6,t6,8
 10001e0:	fa5f1ee3          	bne	t5,t0,100019c <run_one_test+0x110>
 10001e4:	015107b7          	lui	a5,0x1510
 10001e8:	4709                	li	a4,2
 10001ea:	c398                	sw	a4,0(a5)
 10001ec:	4432                	lw	s0,12(sp)
 10001ee:	44a2                	lw	s1,8(sp)
 10001f0:	0141                	addi	sp,sp,16
 10001f2:	8082                	ret
 10001f4:	00fe86b3          	add	a3,t4,a5
 10001f8:	00b32023          	sw	a1,0(t1)
 10001fc:	00d8a023          	sw	a3,0(a7)
 1000200:	00582023          	sw	t0,0(a6)
 1000204:	00c32023          	sw	a2,0(t1)
 1000208:	40f50733          	sub	a4,a0,a5
 100020c:	00d8a023          	sw	a3,0(a7)
 1000210:	00173713          	seqz	a4,a4
 1000214:	00e82023          	sw	a4,0(a6)
 1000218:	0785                	addi	a5,a5,1 # 1510001 <stack+0x40f401>
 100021a:	fde79de3          	bne	a5,t5,10001f4 <run_one_test+0x168>
 100021e:	0505                	addi	a0,a0,1
 1000220:	0ea1                	addi	t4,t4,8
 1000222:	ebe51ae3          	bne	a0,t5,10000d6 <run_one_test+0x4a>
 1000226:	b715                	j	100014a <run_one_test+0xbe>
 1000228:	00c32023          	sw	a2,0(t1)
 100022c:	00d8a023          	sw	a3,0(a7)
 1000230:	0785                	addi	a5,a5,1
 1000232:	00ff8733          	add	a4,t6,a5
 1000236:	00582023          	sw	t0,0(a6)
 100023a:	01d786b3          	add	a3,a5,t4
 100023e:	0ff77713          	zext.b	a4,a4
 1000242:	f1e780e3          	beq	a5,t5,1000142 <run_one_test+0xb6>
 1000246:	00b32023          	sw	a1,0(t1)
 100024a:	00d8a023          	sw	a3,0(a7)
 100024e:	00e82023          	sw	a4,0(a6)
 1000252:	fca78be3          	beq	a5,a0,1000228 <run_one_test+0x19c>
 1000256:	00c32023          	sw	a2,0(t1)
 100025a:	00d8a023          	sw	a3,0(a7)
 100025e:	00082023          	sw	zero,0(a6)
 1000262:	0785                	addi	a5,a5,1
 1000264:	ebe798e3          	bne	a5,t5,1000114 <run_one_test+0x88>
 1000268:	bde9                	j	1000142 <run_one_test+0xb6>
 100026a:	0785                	addi	a5,a5,1
 100026c:	00ff8733          	add	a4,t6,a5
 1000270:	01c82023          	sw	t3,0(a6)
 1000274:	01d786b3          	add	a3,a5,t4
 1000278:	0ff77713          	zext.b	a4,a4
 100027c:	ede783e3          	beq	a5,t5,1000142 <run_one_test+0xb6>
 1000280:	00b32023          	sw	a1,0(t1)
 1000284:	00d8a023          	sw	a3,0(a7)
 1000288:	00e82023          	sw	a4,0(a6)
 100028c:	e6a789e3          	beq	a5,a0,10000fe <run_one_test+0x72>
 1000290:	00c32023          	sw	a2,0(t1)
 1000294:	00d8a023          	sw	a3,0(a7)
 1000298:	00082023          	sw	zero,0(a6)
 100029c:	0785                	addi	a5,a5,1
 100029e:	e7e79be3          	bne	a5,t5,1000114 <run_one_test+0x88>
 10002a2:	b545                	j	1000142 <run_one_test+0xb6>
 10002a4:	40e006b3          	neg	a3,a4
 10002a8:	b709                	j	10001aa <run_one_test+0x11e>
 10002aa:	4789                	li	a5,2
 10002ac:	064e0513          	addi	a0,t3,100
 10002b0:	c21c                	sw	a5,0(a2)
 10002b2:	bf2d                	j	10001ec <run_one_test+0x160>
 10002b4:	4789                	li	a5,2
 10002b6:	0c8e0513          	addi	a0,t3,200
 10002ba:	c21c                	sw	a5,0(a2)
 10002bc:	bf05                	j	10001ec <run_one_test+0x160>
 10002be:	4f01                	li	t5,0
 10002c0:	4625                	li	a2,9
 10002c2:	4501                	li	a0,0
 10002c4:	b5d1                	j	1000188 <run_one_test+0xfc>

010002c6 <ss_init>:
 10002c6:	014007b7          	lui	a5,0x1400
 10002ca:	4bd4                	lw	a3,20(a5)
 10002cc:	1141                	addi	sp,sp,-16
 10002ce:	4705                	li	a4,1
 10002d0:	c636                	sw	a3,12(sp)
 10002d2:	46b2                	lw	a3,12(sp)
 10002d4:	00a71733          	sll	a4,a4,a0
 10002d8:	863e                	mv	a2,a5
 10002da:	8ed9                	or	a3,a3,a4
 10002dc:	cbd4                	sw	a3,20(a5)
 10002de:	43d4                	lw	a3,4(a5)
 10002e0:	4789                	li	a5,2
 10002e2:	00a797b3          	sll	a5,a5,a0
 10002e6:	c636                	sw	a3,12(sp)
 10002e8:	45b2                	lw	a1,12(sp)
 10002ea:	8fcd                	or	a5,a5,a1
 10002ec:	0017e793          	ori	a5,a5,1
 10002f0:	c25c                	sw	a5,4(a2)
 10002f2:	4a1c                	lw	a5,16(a2)
 10002f4:	c63e                	sw	a5,12(sp)
 10002f6:	47b2                	lw	a5,12(sp)
 10002f8:	8f5d                	or	a4,a4,a5
 10002fa:	ca18                	sw	a4,16(a2)
 10002fc:	0141                	addi	sp,sp,16
 10002fe:	8082                	ret

01000300 <uart_init>:
 1000300:	014006b7          	lui	a3,0x1400
 1000304:	5698                	lw	a4,40(a3)
 1000306:	1141                	addi	sp,sp,-16
 1000308:	013007b7          	lui	a5,0x1300
 100030c:	c63a                	sw	a4,12(sp)
 100030e:	4632                	lw	a2,12(sp)
 1000310:	4585                	li	a1,1
 1000312:	4709                	li	a4,2
 1000314:	00366613          	ori	a2,a2,3
 1000318:	d690                	sw	a2,40(a3)
 100031a:	10b7a423          	sw	a1,264(a5) # 1300108 <stack+0x1ff508>
 100031e:	08300693          	li	a3,131
 1000322:	10d7a623          	sw	a3,268(a5)
 1000326:	466d                	li	a2,27
 1000328:	10c7a023          	sw	a2,256(a5)
 100032c:	460d                	li	a2,3
 100032e:	10c7a623          	sw	a2,268(a5)
 1000332:	10b7a223          	sw	a1,260(a5)
 1000336:	10e7a423          	sw	a4,264(a5)
 100033a:	0141                	addi	sp,sp,16
 100033c:	8082                	ret

0100033e <uart_print>:
 100033e:	00054783          	lbu	a5,0(a0)
 1000342:	cf85                	beqz	a5,100037a <uart_print+0x3c>
 1000344:	01300637          	lui	a2,0x1300
 1000348:	1141                	addi	sp,sp,-16
 100034a:	00150693          	addi	a3,a0,1
 100034e:	10060613          	addi	a2,a2,256 # 1300100 <stack+0x1ff500>
 1000352:	1f300713          	li	a4,499
 1000356:	c21c                	sw	a5,0(a2)
 1000358:	c602                	sw	zero,12(sp)
 100035a:	47b2                	lw	a5,12(sp)
 100035c:	00f76963          	bltu	a4,a5,100036e <uart_print+0x30>
 1000360:	0001                	nop
 1000362:	47b2                	lw	a5,12(sp)
 1000364:	0785                	addi	a5,a5,1
 1000366:	c63e                	sw	a5,12(sp)
 1000368:	47b2                	lw	a5,12(sp)
 100036a:	fef77be3          	bgeu	a4,a5,1000360 <uart_print+0x22>
 100036e:	0006c783          	lbu	a5,0(a3) # 1400000 <stack+0x2ff400>
 1000372:	0685                	addi	a3,a3,1
 1000374:	f3ed                	bnez	a5,1000356 <uart_print+0x18>
 1000376:	0141                	addi	sp,sp,16
 1000378:	8082                	ret
 100037a:	8082                	ret

0100037c <main>:
 100037c:	1101                	addi	sp,sp,-32
 100037e:	4505                	li	a0,1
 1000380:	ce06                	sw	ra,28(sp)
 1000382:	cc22                	sw	s0,24(sp)
 1000384:	ca26                	sw	s1,20(sp)
 1000386:	3781                	jal	10002c6 <ss_init>
 1000388:	3fa5                	jal	1000300 <uart_init>
 100038a:	4609                	li	a2,2
 100038c:	4581                	li	a1,0
 100038e:	4505                	li	a0,1
 1000390:	39f5                	jal	100008c <run_one_test>
 1000392:	06300493          	li	s1,99
 1000396:	842a                	mv	s0,a0
 1000398:	06a4c063          	blt	s1,a0,10003f8 <main+0x7c>
 100039c:	460d                	li	a2,3
 100039e:	4585                	li	a1,1
 10003a0:	4509                	li	a0,2
 10003a2:	c84a                	sw	s2,16(sp)
 10003a4:	31e5                	jal	100008c <run_one_test>
 10003a6:	892a                	mv	s2,a0
 10003a8:	02a4cb63          	blt	s1,a0,10003de <main+0x62>
 10003ac:	4609                	li	a2,2
 10003ae:	4581                	li	a1,0
 10003b0:	450d                	li	a0,3
 10003b2:	39e9                	jal	100008c <run_one_test>
 10003b4:	c62a                	sw	a0,12(sp)
 10003b6:	04a4c863          	blt	s1,a0,1000406 <main+0x8a>
 10003ba:	460d                	li	a2,3
 10003bc:	4585                	li	a1,1
 10003be:	4511                	li	a0,4
 10003c0:	31f1                	jal	100008c <run_one_test>
 10003c2:	47b2                	lw	a5,12(sp)
 10003c4:	04a4c063          	blt	s1,a0,1000404 <main+0x88>
 10003c8:	944a                	add	s0,s0,s2
 10003ca:	943e                	add	s0,s0,a5
 10003cc:	942a                	add	s0,s0,a0
 10003ce:	e421                	bnez	s0,1000416 <main+0x9a>
 10003d0:	01000537          	lui	a0,0x1000
 10003d4:	46450513          	addi	a0,a0,1124 # 1000464 <_etext+0x10>
 10003d8:	379d                	jal	100033e <uart_print>
 10003da:	4942                	lw	s2,16(sp)
 10003dc:	a801                	j	10003ec <main+0x70>
 10003de:	01000537          	lui	a0,0x1000
 10003e2:	45450513          	addi	a0,a0,1108 # 1000454 <_etext>
 10003e6:	3fa1                	jal	100033e <uart_print>
 10003e8:	844a                	mv	s0,s2
 10003ea:	4942                	lw	s2,16(sp)
 10003ec:	40f2                	lw	ra,28(sp)
 10003ee:	8522                	mv	a0,s0
 10003f0:	4462                	lw	s0,24(sp)
 10003f2:	44d2                	lw	s1,20(sp)
 10003f4:	6105                	addi	sp,sp,32
 10003f6:	8082                	ret
 10003f8:	01000537          	lui	a0,0x1000
 10003fc:	45450513          	addi	a0,a0,1108 # 1000454 <_etext>
 1000400:	3f3d                	jal	100033e <uart_print>
 1000402:	b7ed                	j	10003ec <main+0x70>
 1000404:	c62a                	sw	a0,12(sp)
 1000406:	01000537          	lui	a0,0x1000
 100040a:	45450513          	addi	a0,a0,1108 # 1000454 <_etext>
 100040e:	3f05                	jal	100033e <uart_print>
 1000410:	4432                	lw	s0,12(sp)
 1000412:	4942                	lw	s2,16(sp)
 1000414:	bfe1                	j	10003ec <main+0x70>
 1000416:	01000537          	lui	a0,0x1000
 100041a:	47450513          	addi	a0,a0,1140 # 1000474 <_etext+0x20>
 100041e:	3705                	jal	100033e <uart_print>
 1000420:	4942                	lw	s2,16(sp)
 1000422:	b7e9                	j	10003ec <main+0x70>

01000424 <reset_handler>:
 1000424:	00100117          	auipc	sp,0x100
 1000428:	7dc10113          	addi	sp,sp,2012 # 1100c00 <stack>
 100042c:	00000097          	auipc	ra,0x0
 1000430:	00c08093          	addi	ra,ra,12 # 1000438 <postMain>
 1000434:	f49ff06f          	j	100037c <main>

01000438 <postMain>:
 1000438:	012002b7          	lui	t0,0x1200
 100043c:	38028293          	addi	t0,t0,896 # 1200380 <stack+0xff780>
 1000440:	80000337          	lui	t1,0x80000
 1000444:	00656533          	or	a0,a0,t1
 1000448:	00a2a023          	sw	a0,0(t0)
 100044c:	c39ff06f          	j	1000084 <loop>

01000450 <changeStack>:
 1000450:	8132                	mv	sp,a2
 1000452:	8582                	jr	a1

01000454 <_etext>:
 1000454:	4341                	li	t1,16
 1000456:	45535f43          	.insn	4, 0x45535f43
 100045a:	5f51                	li	t5,-12
 100045c:	5245                	li	tp,-15
 100045e:	4f52                	lw	t5,20(sp)
 1000460:	0d52                	slli	s10,s10,0x14
 1000462:	000a                	c.slli	zero,0x2
 1000464:	4341                	li	t1,16
 1000466:	45535f43          	.insn	4, 0x45535f43
 100046a:	5f51                	li	t5,-12
 100046c:	4150                	lw	a2,4(a0)
 100046e:	0a0d5353          	.insn	4, 0x0a0d5353
 1000472:	0000                	unimp
 1000474:	4341                	li	t1,16
 1000476:	45535f43          	.insn	4, 0x45535f43
 100047a:	5f51                	li	t5,-12
 100047c:	4146                	lw	sp,80(sp)
 100047e:	4c49                	li	s8,18
 1000480:	0a0d                	addi	s4,s4,3
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	097a                	slli	s2,s2,0x1e
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0401                	addi	s0,s0,0
   8:	0000                	unimp
   a:	0000                	unimp
   c:	091a                	slli	s2,s2,0x6
   e:	0002                	c.slli	zero,0x0
  10:	1d00                	addi	s0,sp,688
  12:	03164703          	lbu	a4,49(a2)
  16:	8c00                	.insn	2, 0x8c00
  18:	0000                	unimp
  1a:	1d00                	addi	s0,sp,688
  1c:	0001                	nop
  1e:	f400                	.insn	2, 0xf400
  20:	0001                	nop
	...
  2a:	0600                	addi	s0,sp,768
  2c:	0708                	addi	a0,sp,896
  2e:	0148                	addi	a0,sp,132
  30:	0000                	unimp
  32:	0406                	slli	s0,s0,0x1
  34:	00015207          	.insn	4, 0x00015207
  38:	0800                	addi	s0,sp,16
  3a:	0172                	slli	sp,sp,0x1c
  3c:	0000                	unimp
  3e:	2904                	.insn	2, 0x2904
  40:	00004517          	auipc	a0,0x4
  44:	0600                	addi	s0,sp,768
  46:	0601                	addi	a2,a2,0
  48:	013c                	addi	a5,sp,136
  4a:	0000                	unimp
  4c:	ce08                	sw	a0,24(a2)
  4e:	0000                	unimp
  50:	0400                	addi	s0,sp,512
  52:	0058182b          	.insn	4, 0x0058182b
  56:	0000                	unimp
  58:	0106                	slli	sp,sp,0x1
  5a:	3a08                	.insn	2, 0x3a08
  5c:	0001                	nop
  5e:	0600                	addi	s0,sp,768
  60:	0502                	c.slli	a0,0x0
  62:	001e                	c.slli	zero,0x7
  64:	0000                	unimp
  66:	0206                	slli	tp,tp,0x1
  68:	00015f07          	.insn	4, 0x00015f07
  6c:	0800                	addi	s0,sp,16
  6e:	01f0                	addi	a2,sp,204
  70:	0000                	unimp
  72:	4d04                	lw	s1,24(a0)
  74:	7918                	.insn	2, 0x7918
  76:	0000                	unimp
  78:	0600                	addi	s0,sp,768
  7a:	0504                	addi	s1,sp,640
  7c:	0098                	addi	a4,sp,64
  7e:	0000                	unimp
  80:	4008                	lw	a0,0(s0)
  82:	0000                	unimp
  84:	0400                	addi	s0,sp,512
  86:	008c194f          	.insn	4, 0x008c194f
  8a:	0000                	unimp
  8c:	0406                	slli	s0,s0,0x1
  8e:	00014d07          	.insn	4, 0x00014d07
  92:	0600                	addi	s0,sp,768
  94:	0508                	addi	a0,sp,640
  96:	00000093          	li	ra,0
  9a:	6905041b          	.insn	4, 0x6905041b
  9e:	746e                	.insn	2, 0x746e
  a0:	0800                	addi	s0,sp,16
  a2:	0174                	addi	a3,sp,140
  a4:	0000                	unimp
  a6:	1405                	addi	s0,s0,-31
  a8:	3912                	.insn	2, 0x3912
  aa:	0000                	unimp
  ac:	0800                	addi	s0,sp,16
  ae:	00d0                	addi	a2,sp,68
  b0:	0000                	unimp
  b2:	1805                	addi	a6,a6,-31
  b4:	00004c13          	xori	s8,zero,0
  b8:	0800                	addi	s0,sp,16
  ba:	01f2                	slli	gp,gp,0x1c
  bc:	0000                	unimp
  be:	2c05                	jal	2ee <__DYNAMIC+0x2ee>
  c0:	00006d13          	ori	s10,zero,0
  c4:	0800                	addi	s0,sp,16
  c6:	0042                	c.slli	zero,0x10
  c8:	0000                	unimp
  ca:	3005                	jal	fffff8ea <stack+0xfeefecea>
  cc:	8014                	.insn	2, 0x8014
  ce:	0000                	unimp
  d0:	1300                	addi	s0,sp,416
  d2:	00c5                	addi	ra,ra,17
  d4:	0000                	unimp
  d6:	c514                	sw	a3,8(a0)
  d8:	0000                	unimp
  da:	1c00                	addi	s0,sp,560
  dc:	0000003b          	.insn	4, 0x003b
  e0:	1001                	c.nop	-32
  e2:	0501                	addi	a0,a0,0 # 4040 <STACK_SIZE+0x3440>
  e4:	009a                	slli	ra,ra,0x6
  e6:	0000                	unimp
  e8:	037c                	addi	a5,sp,396
  ea:	0100                	addi	s0,sp,128
  ec:	00a8                	addi	a0,sp,72
  ee:	0000                	unimp
  f0:	9c01                	.insn	2, 0x9c01
  f2:	00000237          	lui	tp,0x0
  f6:	5615                	li	a2,-27
  f8:	0000                	unimp
  fa:	1200                	addi	s0,sp,288
  fc:	9a01                	andi	a2,a2,-32
  fe:	0000                	unimp
 100:	2200                	.insn	2, 0x2200
 102:	0000                	unimp
 104:	0c00                	addi	s0,sp,528
 106:	0000                	unimp
 108:	1500                	addi	s0,sp,672
 10a:	01c9                	addi	gp,gp,18
 10c:	0000                	unimp
 10e:	009a0113          	addi	sp,s4,9
 112:	0000                	unimp
 114:	00aa                	slli	ra,ra,0xa
 116:	0000                	unimp
 118:	0092                	slli	ra,ra,0x4
 11a:	0000                	unimp
 11c:	961d                	srai	a2,a2,0x27
 11e:	0004                	.insn	2, 0x0004
 120:	8800                	.insn	2, 0x8800
 122:	09010003          	lb	zero,144(sp)
 126:	0388                	addi	a0,sp,448
 128:	0100                	addi	s0,sp,128
 12a:	0002                	c.slli	zero,0x0
 12c:	0000                	unimp
 12e:	1601                	addi	a2,a2,-32
 130:	0501                	addi	a0,a0,0
 132:	0140                	addi	s0,sp,132
 134:	0000                	unimp
 136:	8a1e                	mv	s4,t2
 138:	3d010003          	lb	zero,976(sp)
 13c:	0005                	c.nop	1
 13e:	0000                	unimp
 140:	00038807          	.insn	4, 0x00038807
 144:	b701                	j	44 <__DYNAMIC+0x44>
 146:	0005                	c.nop	1
 148:	5300                	lw	s0,32(a4)
 14a:	0001                	nop
 14c:	0200                	addi	s0,sp,256
 14e:	5a01                	li	s4,-32
 150:	3101                	jal	fffffd50 <stack+0xfeeff150>
 152:	0700                	addi	s0,sp,896
 154:	0392                	slli	t2,t2,0x4
 156:	0100                	addi	s0,sp,128
 158:	00000237          	lui	tp,0x0
 15c:	0170                	addi	a2,sp,140
 15e:	0000                	unimp
 160:	0102                	c.slli	sp,0x0
 162:	015a                	slli	sp,sp,0x16
 164:	0231                	addi	tp,tp,12 # c <__DYNAMIC+0xc>
 166:	5b01                	li	s6,-32
 168:	3001                	jal	fffff968 <stack+0xfeefed68>
 16a:	0102                	c.slli	sp,0x0
 16c:	015c                	addi	a5,sp,132
 16e:	0032                	c.slli	zero,0xc
 170:	0003a607          	.insn	4, 0x0003a607
 174:	3701                	jal	74 <__DYNAMIC+0x74>
 176:	0002                	c.slli	zero,0x0
 178:	8d00                	.insn	2, 0x8d00
 17a:	0001                	nop
 17c:	0200                	addi	s0,sp,256
 17e:	5a01                	li	s4,-32
 180:	3201                	jal	fffffa80 <stack+0xfeefee80>
 182:	0102                	c.slli	sp,0x0
 184:	0231015b          	.insn	4, 0x0231015b
 188:	5c01                	li	s8,-32
 18a:	3301                	jal	fffffe8a <stack+0xfeeff28a>
 18c:	0700                	addi	s0,sp,896
 18e:	03b4                	addi	a3,sp,456
 190:	0100                	addi	s0,sp,128
 192:	00000237          	lui	tp,0x0
 196:	01aa                	slli	gp,gp,0xa
 198:	0000                	unimp
 19a:	0102                	c.slli	sp,0x0
 19c:	015a                	slli	sp,sp,0x16
 19e:	5b010233          	.insn	4, 0x5b010233
 1a2:	3001                	jal	fffff9a2 <stack+0xfeefeda2>
 1a4:	0102                	c.slli	sp,0x0
 1a6:	015c                	addi	a5,sp,132
 1a8:	0032                	c.slli	zero,0xc
 1aa:	0003c207          	.insn	4, 0x0003c207
 1ae:	3701                	jal	ae <__DYNAMIC+0xae>
 1b0:	0002                	c.slli	zero,0x0
 1b2:	c700                	sw	s0,8(a4)
 1b4:	0001                	nop
 1b6:	0200                	addi	s0,sp,256
 1b8:	5a01                	li	s4,-32
 1ba:	3401                	jal	fffffbba <stack+0xfeefefba>
 1bc:	0102                	c.slli	sp,0x0
 1be:	0231015b          	.insn	4, 0x0231015b
 1c2:	5c01                	li	s8,-32
 1c4:	3301                	jal	fffffec4 <stack+0xfeeff2c4>
 1c6:	0700                	addi	s0,sp,896
 1c8:	03da                	slli	t2,t2,0x16
 1ca:	0100                	addi	s0,sp,128
 1cc:	04e6                	slli	s1,s1,0x19
 1ce:	0000                	unimp
 1d0:	01de                	slli	gp,gp,0x17
 1d2:	0000                	unimp
 1d4:	0102                	c.slli	sp,0x0
 1d6:	055a                	slli	a0,a0,0x16
 1d8:	00046403          	.insn	4, 0x00046403
 1dc:	0001                	nop
 1de:	0003e807          	.insn	4, 0x0003e807
 1e2:	e601                	bnez	a2,1ea <__DYNAMIC+0x1ea>
 1e4:	0004                	.insn	2, 0x0004
 1e6:	f500                	.insn	2, 0xf500
 1e8:	0001                	nop
 1ea:	0200                	addi	s0,sp,256
 1ec:	5a01                	li	s4,-32
 1ee:	0305                	addi	t1,t1,1 # 80000001 <stack+0x7eeff401>
 1f0:	0454                	addi	a3,sp,516
 1f2:	0100                	addi	s0,sp,128
 1f4:	0700                	addi	s0,sp,896
 1f6:	0402                	c.slli	s0,0x0
 1f8:	0100                	addi	s0,sp,128
 1fa:	04e6                	slli	s1,s1,0x19
 1fc:	0000                	unimp
 1fe:	020c                	addi	a1,sp,256
 200:	0000                	unimp
 202:	0102                	c.slli	sp,0x0
 204:	055a                	slli	a0,a0,0x16
 206:	00045403          	lhu	s0,0(s0)
 20a:	0001                	nop
 20c:	00041007          	.insn	4, 0x00041007
 210:	e601                	bnez	a2,218 <__DYNAMIC+0x218>
 212:	0004                	.insn	2, 0x0004
 214:	2300                	.insn	2, 0x2300
 216:	0002                	c.slli	zero,0x0
 218:	0200                	addi	s0,sp,256
 21a:	5a01                	li	s4,-32
 21c:	0305                	addi	t1,t1,1
 21e:	0454                	addi	a3,sp,516
 220:	0100                	addi	s0,sp,128
 222:	1f00                	addi	s0,sp,944
 224:	0420                	addi	s0,sp,520
 226:	0100                	addi	s0,sp,128
 228:	04e6                	slli	s1,s1,0x19
 22a:	0000                	unimp
 22c:	0102                	c.slli	sp,0x0
 22e:	055a                	slli	a0,a0,0x16
 230:	00047403          	.insn	4, 0x00047403
 234:	0001                	nop
 236:	0900                	addi	s0,sp,144
 238:	010e                	slli	sp,sp,0x3
 23a:	0000                	unimp
 23c:	0cf2                	slli	s9,s9,0x1c
 23e:	009a                	slli	ra,ra,0x6
 240:	0000                	unimp
 242:	00000273          	.insn	4, 0x0273
 246:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
 24a:	f200                	.insn	2, 0xf200
 24c:	c522                	sw	s0,136(sp)
 24e:	0000                	unimp
 250:	0300                	addi	s0,sp,384
 252:	0000017b          	.insn	4, 0x017b
 256:	00c522f3          	.insn	4, 0x00c522f3
 25a:	0000                	unimp
 25c:	00018403          	lb	s0,0(gp)
 260:	f400                	.insn	2, 0xf400
 262:	c522                	sw	s0,136(sp)
 264:	0000                	unimp
 266:	0a00                	addi	s0,sp,272
 268:	0056                	c.slli	zero,0x15
 26a:	0000                	unimp
 26c:	09f6                	slli	s3,s3,0x1d
 26e:	009a                	slli	ra,ra,0x6
 270:	0000                	unimp
 272:	0900                	addi	s0,sp,144
 274:	01b2                	slli	gp,gp,0xc
 276:	0000                	unimp
 278:	009a0cdb          	.insn	4, 0x009a0cdb
 27c:	0000                	unimp
 27e:	000002c7          	.insn	4, 0x02c7
 282:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
 286:	db00                	sw	s0,48(a4)
 288:	0000c523          	.insn	4, 0xc523
 28c:	0d00                	addi	s0,sp,656
 28e:	6f72                	.insn	2, 0x6f72
 290:	0edd0077          	.insn	4, 0x0edd0077
 294:	00c5                	addi	ra,ra,17
 296:	0000                	unimp
 298:	630d                	lui	t1,0x3
 29a:	de006c6f          	jal	s8,fff0687a <stack+0xfee05c7a>
 29e:	c50e                	sw	gp,136(sp)
 2a0:	0000                	unimp
 2a2:	0a00                	addi	s0,sp,272
 2a4:	0056                	c.slli	zero,0x15
 2a6:	0000                	unimp
 2a8:	09df 009a 0000      	.insn	6, 0x009a09df
 2ae:	0a20                	addi	s0,sp,280
 2b0:	0012                	c.slli	zero,0x4
 2b2:	0000                	unimp
 2b4:	00b915e3          	bne	s2,a1,abe <__DYNAMIC+0xabe>
 2b8:	0000                	unimp
 2ba:	c00a                	sw	sp,0(sp)
 2bc:	0001                	nop
 2be:	e400                	.insn	2, 0xe400
 2c0:	b915                	j	fffffef4 <stack+0xfeeff2f4>
 2c2:	0000                	unimp
 2c4:	0000                	unimp
 2c6:	1000                	addi	s0,sp,32
 2c8:	018d                	addi	gp,gp,3
 2ca:	0000                	unimp
 2cc:	09c5                	addi	s3,s3,17
 2ce:	03000003          	lb	zero,48(zero) # 30 <__DYNAMIC+0x30>
 2d2:	0000                	unimp
 2d4:	0000                	unimp
 2d6:	2bc5                	jal	8c6 <__DYNAMIC+0x8c6>
 2d8:	00c5                	addi	ra,ra,17
 2da:	0000                	unimp
 2dc:	00017b03          	.insn	4, 0x00017b03
 2e0:	c600                	sw	s0,8(a2)
 2e2:	0000c52b          	.insn	4, 0xc52b
 2e6:	0300                	addi	s0,sp,384
 2e8:	0184                	addi	s1,sp,192
 2ea:	0000                	unimp
 2ec:	00c52bc7          	.insn	4, 0x00c52bc7
 2f0:	0000                	unimp
 2f2:	720d                	lui	tp,0xfffe3
 2f4:	c900776f          	jal	a4,fff07784 <stack+0xfee06b84>
 2f8:	c50e                	sw	gp,136(sp)
 2fa:	0000                	unimp
 2fc:	0d00                	addi	s0,sp,656
 2fe:	006c6f63          	bltu	s8,t1,31c <__DYNAMIC+0x31c>
 302:	0eca                	slli	t4,t4,0x12
 304:	00c5                	addi	ra,ra,17
 306:	0000                	unimp
 308:	0900                	addi	s0,sp,144
 30a:	000000e7          	jalr	zero # 0 <__DYNAMIC>
 30e:	10b0                	addi	a2,sp,104
 310:	00b9                	addi	ra,ra,14
 312:	0000                	unimp
 314:	00000343          	.insn	4, 0x0343
 318:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
 31c:	b000                	.insn	2, 0xb000
 31e:	c530                	sw	a2,72(a0)
 320:	0000                	unimp
 322:	0500                	addi	s0,sp,640
 324:	6f72                	.insn	2, 0x6f72
 326:	30b10077          	.insn	4, 0x30b10077
 32a:	00c5                	addi	ra,ra,17
 32c:	0000                	unimp
 32e:	6305                	lui	t1,0x1
 330:	b2006c6f          	jal	s8,fff06650 <stack+0xfee05a50>
 334:	c530                	sw	a2,72(a0)
 336:	0000                	unimp
 338:	0d00                	addi	s0,sp,656
 33a:	0061                	c.nop	24
 33c:	0db4                	addi	a3,sp,728
 33e:	00b9                	addi	ra,ra,14
 340:	0000                	unimp
 342:	0900                	addi	s0,sp,144
 344:	005d                	c.nop	23
 346:	0000                	unimp
 348:	00a10f9b          	.insn	4, 0x00a10f9b
 34c:	0000                	unimp
 34e:	0374                	addi	a3,sp,396
 350:	0000                	unimp
 352:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
 356:	9b00                	.insn	2, 0x9b00
 358:	c528                	sw	a0,72(a0)
 35a:	0000                	unimp
 35c:	0500                	addi	s0,sp,640
 35e:	6f72                	.insn	2, 0x6f72
 360:	399b0077          	.insn	4, 0x399b0077
 364:	00c5                	addi	ra,ra,17
 366:	0000                	unimp
 368:	6305                	lui	t1,0x1
 36a:	9b006c6f          	jal	s8,fff0651a <stack+0xfee0591a>
 36e:	0000c547          	.insn	4, 0xc547
 372:	0000                	unimp
 374:	1b09                	addi	s6,s6,-30
 376:	0001                	nop
 378:	9200                	.insn	2, 0x9200
 37a:	0000a10f          	.insn	4, 0xa10f
 37e:	a500                	.insn	2, 0xa500
 380:	03000003          	lb	zero,48(zero) # 30 <__DYNAMIC+0x30>
 384:	0000                	unimp
 386:	0000                	unimp
 388:	2892                	.insn	2, 0x2892
 38a:	00c5                	addi	ra,ra,17
 38c:	0000                	unimp
 38e:	7205                	lui	tp,0xfffe1
 390:	9200776f          	jal	a4,fff074b0 <stack+0xfee068b0>
 394:	c539                	beqz	a0,3e2 <__DYNAMIC+0x3e2>
 396:	0000                	unimp
 398:	0500                	addi	s0,sp,640
 39a:	006c6f63          	bltu	s8,t1,3b8 <__DYNAMIC+0x3b8>
 39e:	4792                	lw	a5,4(sp)
 3a0:	00c5                	addi	ra,ra,17
 3a2:	0000                	unimp
 3a4:	0900                	addi	s0,sp,144
 3a6:	00a8                	addi	a0,sp,72
 3a8:	0000                	unimp
 3aa:	0f8d                	addi	t6,t6,3
 3ac:	00a1                	addi	ra,ra,8
 3ae:	0000                	unimp
 3b0:	000003cb          	.insn	4, 0x03cb
 3b4:	7205                	lui	tp,0xfffe1
 3b6:	8d00776f          	jal	a4,fff07486 <stack+0xfee06886>
 3ba:	c525                	beqz	a0,422 <__DYNAMIC+0x422>
 3bc:	0000                	unimp
 3be:	0500                	addi	s0,sp,640
 3c0:	006c6f63          	bltu	s8,t1,3de <__DYNAMIC+0x3de>
 3c4:	338d                	jal	126 <__DYNAMIC+0x126>
 3c6:	00c5                	addi	ra,ra,17
 3c8:	0000                	unimp
 3ca:	0900                	addi	s0,sp,144
 3cc:	00fe                	slli	ra,ra,0x1f
 3ce:	0000                	unimp
 3d0:	0c78                	addi	a4,sp,540
 3d2:	009a                	slli	ra,ra,0x6
 3d4:	0000                	unimp
 3d6:	03e6                	slli	t2,t2,0x19
 3d8:	0000                	unimp
 3da:	860a                	mv	a2,sp
 3dc:	0002                	c.slli	zero,0x0
 3de:	7a00                	.insn	2, 0x7a00
 3e0:	c50e                	sw	gp,136(sp)
 3e2:	0000                	unimp
 3e4:	0000                	unimp
 3e6:	0709                	addi	a4,a4,2
 3e8:	0000                	unimp
 3ea:	7000                	.insn	2, 0x7000
 3ec:	b910                	.insn	2, 0xb910
 3ee:	0000                	unimp
 3f0:	1700                	addi	s0,sp,928
 3f2:	0004                	.insn	2, 0x0004
 3f4:	0500                	addi	s0,sp,640
 3f6:	6f72                	.insn	2, 0x6f72
 3f8:	2b700077          	.insn	4, 0x2b700077
 3fc:	00c5                	addi	ra,ra,17
 3fe:	0000                	unimp
 400:	6305                	lui	t1,0x1
 402:	70006c6f          	jal	s8,6b02 <STACK_SIZE+0x5f02>
 406:	c539                	beqz	a0,454 <__DYNAMIC+0x454>
 408:	0000                	unimp
 40a:	0a00                	addi	s0,sp,272
 40c:	00b5                	addi	ra,ra,13
 40e:	0000                	unimp
 410:	0e72                	slli	t3,t3,0x1c
 412:	00c5                	addi	ra,ra,17
 414:	0000                	unimp
 416:	1000                	addi	s0,sp,32
 418:	0028                	addi	a0,sp,8
 41a:	0000                	unimp
 41c:	595f 0004 0300      	.insn	6, 0x03000004595f
 422:	00ba                	slli	ra,ra,0xe
 424:	0000                	unimp
 426:	295f 00c5 0000      	.insn	6, 0x00c5295f
 42c:	7205                	lui	tp,0xfffe1
 42e:	6000776f          	jal	a4,7a2e <STACK_SIZE+0x6e2e>
 432:	c529                	beqz	a0,47c <__DYNAMIC+0x47c>
 434:	0000                	unimp
 436:	0500                	addi	s0,sp,640
 438:	006c6f63          	bltu	s8,t1,456 <__DYNAMIC+0x456>
 43c:	2961                	jal	8d4 <__DYNAMIC+0x8d4>
 43e:	00c5                	addi	ra,ra,17
 440:	0000                	unimp
 442:	0000af03          	lw	t5,0(ra)
 446:	6200                	.insn	2, 0x6200
 448:	0000a127          	.insn	4, 0xa127
 44c:	0a00                	addi	s0,sp,272
 44e:	00b5                	addi	ra,ra,13
 450:	0000                	unimp
 452:	0e64                	addi	s1,sp,796
 454:	00c5                	addi	ra,ra,17
 456:	0000                	unimp
 458:	1000                	addi	s0,sp,32
 45a:	0000012b          	.insn	4, 0x012b
 45e:	9054                	.insn	2, 0x9054
 460:	0004                	.insn	2, 0x0004
 462:	0300                	addi	s0,sp,384
 464:	01fa                	slli	gp,gp,0x1e
 466:	0000                	unimp
 468:	2554                	.insn	2, 0x2554
 46a:	00c5                	addi	ra,ra,17
 46c:	0000                	unimp
 46e:	0001a203          	lw	tp,0(gp)
 472:	5500                	lw	s0,40(a0)
 474:	c525                	beqz	a0,4dc <__DYNAMIC+0x4dc>
 476:	0000                	unimp
 478:	0300                	addi	s0,sp,384
 47a:	006d                	c.nop	27
 47c:	0000                	unimp
 47e:	2556                	.insn	2, 0x2556
 480:	00c5                	addi	ra,ra,17
 482:	0000                	unimp
 484:	0000a103          	lw	sp,0(ra)
 488:	5700                	lw	s0,40(a4)
 48a:	c525                	beqz	a0,4f2 <__DYNAMIC+0x4f2>
 48c:	0000                	unimp
 48e:	0000                	unimp
 490:	dc16                	sw	t0,56(sp)
 492:	0001                	nop
 494:	4f00                	lw	s0,24(a4)
 496:	d816                	sw	t0,48(sp)
 498:	0000                	unimp
 49a:	4600                	lw	s0,8(a2)
 49c:	7421                	lui	s0,0xfffe8
 49e:	0000                	unimp
 4a0:	0300                	addi	s0,sp,384
 4a2:	0545                	addi	a0,a0,17
 4a4:	009a                	slli	ra,ra,0x6
	...
 4ae:	0000                	unimp
 4b0:	9c01                	.insn	2, 0x9c01
 4b2:	04d5                	addi	s1,s1,21
 4b4:	0000                	unimp
 4b6:	0001d40b          	.insn	4, 0x0001d40b
 4ba:	0300                	addi	s0,sp,384
 4bc:	1148                	addi	a0,sp,164
 4be:	04dc                	addi	a5,sp,580
 4c0:	0000                	unimp
 4c2:	9102                	jalr	sp
 4c4:	027c0b7b          	.insn	4, 0x027c0b7b
 4c8:	0000                	unimp
 4ca:	d1154903          	lbu	s2,-751(a0)
 4ce:	0000                	unimp
 4d0:	0200                	addi	s0,sp,256
 4d2:	7c91                	lui	s9,0xfffe4
 4d4:	0600                	addi	s0,sp,768
 4d6:	0801                	addi	a6,a6,0
 4d8:	00000143          	.insn	4, 0x0143
 4dc:	0004d513          	srli	a0,s1,0x0
 4e0:	1400                	addi	s0,sp,544
 4e2:	04d5                	addi	s1,s1,21
 4e4:	0000                	unimp
 4e6:	4b0e                	lw	s6,192(sp)
 4e8:	0000                	unimp
 4ea:	0300                	addi	s0,sp,384
 4ec:	3e2c                	.insn	2, 0x3e2c
 4ee:	3e010003          	lb	zero,992(sp)
 4f2:	0000                	unimp
 4f4:	0100                	addi	s0,sp,128
 4f6:	379c                	.insn	2, 0x379c
 4f8:	0005                	c.nop	1
 4fa:	2200                	.insn	2, 0x2200
 4fc:	00727473          	.insn	4, 0x00727473
 500:	371c2c03          	lw	s8,881(s8)
 504:	0005                	c.nop	1
 506:	0100                	addi	s0,sp,128
 508:	175a                	slli	a4,a4,0x36
 50a:	01dc                	addi	a5,sp,196
 50c:	0000                	unimp
 50e:	03006923          	.insn	4, 0x03006923
 512:	0c2d                	addi	s8,s8,11
 514:	009a                	slli	ra,ra,0x6
 516:	0000                	unimp
 518:	00ff 0000 00f5 0000 	.insn	10, 0xe817000000f5000000ff
 520:	e817 
 522:	0001                	nop
 524:	0b00                	addi	s0,sp,400
 526:	027c                	addi	a5,sp,268
 528:	0000                	unimp
 52a:	d1173d03          	.insn	4, 0xd1173d03
 52e:	0000                	unimp
 530:	0200                	addi	s0,sp,256
 532:	7c91                	lui	s9,0xfffe4
 534:	0000                	unimp
 536:	2400                	.insn	2, 0x2400
 538:	e104                	.insn	2, 0xe104
 53a:	0004                	.insn	2, 0x0004
 53c:	0e00                	addi	s0,sp,784
 53e:	00dd                	addi	ra,ra,23
 540:	0000                	unimp
 542:	03001c03          	lh	s8,48(zero) # 30 <__DYNAMIC+0x30>
 546:	0100                	addi	s0,sp,128
 548:	003e                	c.slli	zero,0xf
 54a:	0000                	unimp
 54c:	9c01                	.insn	2, 0x9c01
 54e:	0562                	slli	a0,a0,0x18
 550:	0000                	unimp
 552:	0000190b          	.insn	4, 0x190b
 556:	0300                	addi	s0,sp,384
 558:	151e                	slli	a0,a0,0x27
 55a:	00d1                	addi	ra,ra,20
 55c:	0000                	unimp
 55e:	9102                	jalr	sp
 560:	007c                	addi	a5,sp,12
 562:	870e                	mv	a4,gp
 564:	0000                	unimp
 566:	0200                	addi	s0,sp,256
 568:	0039                	c.nop	14
 56a:	0000                	unimp
 56c:	0000                	unimp
 56e:	0000                	unimp
 570:	0100                	addi	s0,sp,128
 572:	859c                	.insn	2, 0x859c
 574:	0005                	c.nop	1
 576:	1100                	addi	s0,sp,160
 578:	00c4                	addi	s1,sp,68
 57a:	0000                	unimp
 57c:	2139                	jal	98a <__DYNAMIC+0x98a>
 57e:	00d6                	slli	ra,ra,0x15
 580:	0000                	unimp
 582:	5a01                	li	s4,-32
 584:	0e00                	addi	s0,sp,784
 586:	01a9                	addi	gp,gp,10
 588:	0000                	unimp
 58a:	2d02                	.insn	2, 0x2d02
	...
 594:	9c01                	.insn	2, 0x9c01
 596:	000005b7          	lui	a1,0x0
 59a:	c411                	beqz	s0,5a6 <__DYNAMIC+0x5a6>
 59c:	0000                	unimp
 59e:	2d00                	.insn	2, 0x2d00
 5a0:	d61e                	sw	t2,44(sp)
 5a2:	0000                	unimp
 5a4:	0100                	addi	s0,sp,128
 5a6:	0b5a                	slli	s6,s6,0x16
 5a8:	000001eb          	.insn	4, 0x01eb
 5ac:	2f02                	.insn	2, 0x2f02
 5ae:	d115                	beqz	a0,4d2 <__DYNAMIC+0x4d2>
 5b0:	0000                	unimp
 5b2:	0200                	addi	s0,sp,256
 5b4:	7c91                	lui	s9,0xfffe4
 5b6:	0e00                	addi	s0,sp,784
 5b8:	0201                	addi	tp,tp,0 # fffe1000 <stack+0xfeee0400>
 5ba:	0000                	unimp
 5bc:	1e02                	slli	t3,t3,0x20
 5be:	02c6                	slli	t0,t0,0x11
 5c0:	0100                	addi	s0,sp,128
 5c2:	003a                	c.slli	zero,0xe
 5c4:	0000                	unimp
 5c6:	9c01                	.insn	2, 0x9c01
 5c8:	05e9                	addi	a1,a1,26 # 1a <__DYNAMIC+0x1a>
 5ca:	0000                	unimp
 5cc:	c411                	beqz	s0,5d8 <__DYNAMIC+0x5d8>
 5ce:	0000                	unimp
 5d0:	1e00                	addi	s0,sp,816
 5d2:	d61d                	beqz	a2,500 <__DYNAMIC+0x500>
 5d4:	0000                	unimp
 5d6:	0100                	addi	s0,sp,128
 5d8:	0b5a                	slli	s6,s6,0x16
 5da:	000001eb          	.insn	4, 0x01eb
 5de:	2002                	.insn	2, 0x2002
 5e0:	d115                	beqz	a0,504 <__DYNAMIC+0x504>
 5e2:	0000                	unimp
 5e4:	0200                	addi	s0,sp,256
 5e6:	7c91                	lui	s9,0xfffe4
 5e8:	2500                	.insn	2, 0x2500
 5ea:	00000237          	lui	tp,0x0
 5ee:	008c                	addi	a1,sp,64
 5f0:	0100                	addi	s0,sp,128
 5f2:	023a                	slli	tp,tp,0xe
 5f4:	0000                	unimp
 5f6:	9c01                	.insn	2, 0x9c01
 5f8:	4601                	li	a2,0
 5fa:	0002                	c.slli	zero,0x0
 5fc:	3500                	.insn	2, 0x3500
 5fe:	0001                	nop
 600:	3100                	.insn	2, 0x3100
 602:	0001                	nop
 604:	0100                	addi	s0,sp,128
 606:	0251                	addi	tp,tp,20 # 14 <__DYNAMIC+0x14>
 608:	0000                	unimp
 60a:	0158                	addi	a4,sp,132
 60c:	0000                	unimp
 60e:	0146                	slli	sp,sp,0x11
 610:	0000                	unimp
 612:	5c01                	li	s8,-32
 614:	0002                	c.slli	zero,0x0
 616:	9e00                	.insn	2, 0x9e00
 618:	0001                	nop
 61a:	9200                	.insn	2, 0x9200
 61c:	0001                	nop
 61e:	2600                	.insn	2, 0x2600
 620:	00000267          	jalr	tp,zero # 0 <__DYNAMIC>
 624:	00049027          	.insn	4, 0x00049027
 628:	8c00                	.insn	2, 0x8c00
 62a:	0000                	unimp
 62c:	0301                	addi	t1,t1,0 # 1000 <STACK_SIZE+0x400>
 62e:	000c                	.insn	2, 0x000c
 630:	0000                	unimp
 632:	f801                	bnez	s0,542 <__DYNAMIC+0x542>
 634:	0c05                	addi	s8,s8,1
 636:	0459                	addi	s0,s0,22 # fffe8016 <stack+0xfeee7416>
 638:	0000                	unimp
 63a:	009c                	addi	a5,sp,64
 63c:	0100                	addi	s0,sp,128
 63e:	1808                	addi	a0,sp,48
 640:	0000                	unimp
 642:	f900                	.insn	2, 0xf900
 644:	7e05                	lui	t3,0xfffe1
 646:	0006                	c.slli	zero,0x1
 648:	0100                	addi	s0,sp,128
 64a:	00000463          	beqz	zero,652 <__DYNAMIC+0x652>
 64e:	000001d3          	.insn	4, 0x01d3
 652:	01d1                	addi	gp,gp,20
 654:	0000                	unimp
 656:	6e01                	.insn	2, 0x6e01
 658:	0004                	.insn	2, 0x0004
 65a:	d300                	sw	s0,32(a4)
 65c:	0001                	nop
 65e:	d100                	sw	s0,32(a0)
 660:	0001                	nop
 662:	0100                	addi	s0,sp,128
 664:	0479                	addi	s0,s0,30
 666:	0000                	unimp
 668:	000001d3          	.insn	4, 0x01d3
 66c:	01d1                	addi	gp,gp,20
 66e:	0000                	unimp
 670:	8401                	c.srai	s0,0x0
 672:	0004                	.insn	2, 0x0004
 674:	d300                	sw	s0,32(a4)
 676:	0001                	nop
 678:	d100                	sw	s0,32(a0)
 67a:	0001                	nop
 67c:	0000                	unimp
 67e:	c70c                	sw	a1,8(a4)
 680:	0002                	c.slli	zero,0x0
 682:	c800                	sw	s0,16(s0)
 684:	0000                	unimp
 686:	1901                	addi	s2,s2,-32
 688:	002a                	c.slli	zero,0xa
 68a:	0000                	unimp
 68c:	081705fb          	.insn	4, 0x081705fb
 690:	0000                	unimp
 692:	d101                	beqz	a0,592 <__DYNAMIC+0x592>
 694:	0002                	c.slli	zero,0x0
 696:	e500                	.insn	2, 0xe500
 698:	0001                	nop
 69a:	dd00                	sw	s0,56(a0)
 69c:	0001                	nop
 69e:	0100                	addi	s0,sp,128
 6a0:	02dc                	addi	a5,sp,324
 6a2:	0000                	unimp
 6a4:	00000203          	lb	tp,0(zero) # 0 <__DYNAMIC>
 6a8:	01fd                	addi	gp,gp,31
 6aa:	0000                	unimp
 6ac:	e701                	bnez	a4,6b4 <__DYNAMIC+0x6b4>
 6ae:	0002                	c.slli	zero,0x0
 6b0:	1c00                	addi	s0,sp,560
 6b2:	0002                	c.slli	zero,0x0
 6b4:	1600                	addi	s0,sp,800
 6b6:	0002                	c.slli	zero,0x0
 6b8:	0400                	addi	s0,sp,512
 6ba:	02f2                	slli	t0,t0,0x1c
 6bc:	0000                	unimp
 6be:	00000237          	lui	tp,0x0
 6c2:	0000022f          	.insn	4, 0x022f
 6c6:	fd04                	.insn	2, 0xfd04
 6c8:	0002                	c.slli	zero,0x0
 6ca:	6600                	.insn	2, 0x6600
 6cc:	0002                	c.slli	zero,0x0
 6ce:	5000                	lw	s0,32(s0)
 6d0:	0002                	c.slli	zero,0x0
 6d2:	0c00                	addi	s0,sp,528
 6d4:	00000417          	auipc	s0,0x0
 6d8:	00e2                	slli	ra,ra,0x18
 6da:	0100                	addi	s0,sp,128
 6dc:	422e                	lw	tp,200(sp)
 6de:	0000                	unimp
 6e0:	ce00                	sw	s0,24(a2)
 6e2:	290d                	jal	b14 <__DYNAMIC+0xb14>
 6e4:	01000007          	.insn	4, 0x01000007
 6e8:	0421                	addi	s0,s0,8 # 6dc <__DYNAMIC+0x6dc>
 6ea:	0000                	unimp
 6ec:	02aa                	slli	t0,t0,0xa
 6ee:	0000                	unimp
 6f0:	0298                	addi	a4,sp,320
 6f2:	0000                	unimp
 6f4:	2c01                	jal	904 <__DYNAMIC+0x904>
 6f6:	0004                	.insn	2, 0x0004
 6f8:	e500                	.insn	2, 0xe500
 6fa:	0002                	c.slli	zero,0x0
 6fc:	d500                	sw	s0,40(a0)
 6fe:	0002                	c.slli	zero,0x0
 700:	0100                	addi	s0,sp,128
 702:	00000437          	lui	s0,0x0
 706:	031a                	slli	t1,t1,0x6
 708:	0000                	unimp
 70a:	030a                	slli	t1,t1,0x2
 70c:	0000                	unimp
 70e:	4201                	li	tp,0
 710:	0004                	.insn	2, 0x0004
 712:	4f00                	lw	s0,24(a4)
 714:	3f000003          	lb	zero,1008(zero) # 3f0 <__DYNAMIC+0x3f0>
 718:	04000003          	lb	zero,64(zero) # 40 <__DYNAMIC+0x40>
 71c:	044d                	addi	s0,s0,19 # 13 <__DYNAMIC+0x13>
 71e:	0000                	unimp
 720:	03a1                	addi	t2,t2,8
 722:	0000                	unimp
 724:	0391                	addi	t2,t2,4
 726:	0000                	unimp
 728:	0c00                	addi	s0,sp,528
 72a:	0374                	addi	a3,sp,396
 72c:	0000                	unimp
 72e:	00d6                	slli	ra,ra,0x15
 730:	0100                	addi	s0,sp,128
 732:	00008327          	.insn	4, 0x8327
 736:	ce00                	sw	s0,24(a2)
 738:	900d                	srli	s0,s0,0x23
 73a:	01000007          	.insn	4, 0x01000007
 73e:	00000383          	lb	t2,0(zero) # 0 <__DYNAMIC>
 742:	03f5                	addi	t2,t2,29
 744:	0000                	unimp
 746:	03e1                	addi	t2,t2,24
 748:	0000                	unimp
 74a:	8e01                	sub	a2,a2,s0
 74c:	3b000003          	lb	zero,944(zero) # 3b0 <__DYNAMIC+0x3b0>
 750:	0004                	.insn	2, 0x0004
 752:	2300                	.insn	2, 0x2300
 754:	0004                	.insn	2, 0x0004
 756:	0100                	addi	s0,sp,128
 758:	0399                	addi	t2,t2,6
 75a:	0000                	unimp
 75c:	0484                	addi	s1,sp,576
 75e:	0000                	unimp
 760:	0470                	addi	a2,sp,524
 762:	0000                	unimp
 764:	a512                	.insn	2, 0xa512
 766:	e2000003          	lb	zero,-480(zero) # fffffe20 <stack+0xfeeff220>
 76a:	0000                	unimp
 76c:	2b01                	jal	c7c <STACK_SIZE+0x7c>
 76e:	00be                	slli	ra,ra,0xf
 770:	0000                	unimp
 772:	0c98                	addi	a4,sp,592
 774:	b401                	j	174 <__DYNAMIC+0x174>
 776:	bd000003          	lb	zero,-1072(zero) # fffffbd0 <stack+0xfeefefd0>
 77a:	0004                	.insn	2, 0x0004
 77c:	b100                	.insn	2, 0xb100
 77e:	0004                	.insn	2, 0x0004
 780:	0100                	addi	s0,sp,128
 782:	000003bf 000004ea 	.insn	8, 0x04ea000003bf
 78a:	04de                	slli	s1,s1,0x17
 78c:	0000                	unimp
 78e:	0000                	unimp
 790:	430c                	lw	a1,0(a4)
 792:	f6000003          	lb	zero,-160(zero) # ffffff60 <stack+0xfeeff360>
 796:	0000                	unimp
 798:	3a01                	jal	a8 <__DYNAMIC+0xa8>
 79a:	00e4                	addi	s1,sp,76
 79c:	0000                	unimp
 79e:	07cc0dd3          	.insn	4, 0x07cc0dd3
 7a2:	0000                	unimp
 7a4:	5201                	li	tp,-32
 7a6:	1b000003          	lb	zero,432(zero) # 1b0 <__DYNAMIC+0x1b0>
 7aa:	0005                	c.nop	1
 7ac:	0b00                	addi	s0,sp,400
 7ae:	0005                	c.nop	1
 7b0:	0100                	addi	s0,sp,128
 7b2:	035d                	addi	t1,t1,23
 7b4:	0000                	unimp
 7b6:	0551                	addi	a0,a0,20
 7b8:	0000                	unimp
 7ba:	0541                	addi	a0,a0,16
 7bc:	0000                	unimp
 7be:	6801                	.insn	2, 0x6801
 7c0:	86000003          	lb	zero,-1952(zero) # fffff860 <stack+0xfeefec60>
 7c4:	0005                	c.nop	1
 7c6:	7600                	.insn	2, 0x7600
 7c8:	0005                	c.nop	1
 7ca:	0000                	unimp
 7cc:	1712                	slli	a4,a4,0x24
 7ce:	0004                	.insn	2, 0x0004
 7d0:	0a00                	addi	s0,sp,272
 7d2:	0001                	nop
 7d4:	4501                	li	a0,0
 7d6:	0000010f          	.insn	4, 0x010f
 7da:	21010dd3          	.insn	4, 0x21010dd3
 7de:	0004                	.insn	2, 0x0004
 7e0:	c300                	sw	s0,0(a4)
 7e2:	0005                	c.nop	1
 7e4:	ab00                	.insn	2, 0xab00
 7e6:	0005                	c.nop	1
 7e8:	0100                	addi	s0,sp,128
 7ea:	042c                	addi	a1,sp,520
 7ec:	0000                	unimp
 7ee:	060e                	slli	a2,a2,0x3
 7f0:	0000                	unimp
 7f2:	05f6                	slli	a1,a1,0x1d
 7f4:	0000                	unimp
 7f6:	3701                	jal	6f6 <__DYNAMIC+0x6f6>
 7f8:	0004                	.insn	2, 0x0004
 7fa:	6100                	.insn	2, 0x6100
 7fc:	0006                	c.slli	zero,0x1
 7fe:	4100                	lw	s0,0(a0)
 800:	0006                	c.slli	zero,0x1
 802:	0f00                	addi	s0,sp,912
 804:	0442                	slli	s0,s0,0x10
 806:	0000                	unimp
 808:	4d04                	lw	s1,24(a0)
 80a:	0004                	.insn	2, 0x0004
 80c:	b800                	.insn	2, 0xb800
 80e:	0006                	c.slli	zero,0x1
 810:	a600                	.insn	2, 0xa600
 812:	0006                	c.slli	zero,0x1
 814:	0000                	unimp
 816:	2800                	.insn	2, 0x2800
 818:	00000237          	lui	tp,0x0
 81c:	014e                	slli	sp,sp,0x13
 81e:	0000                	unimp
 820:	f201                	bnez	a2,720 <__DYNAMIC+0x720>
 822:	6b0c                	.insn	2, 0x6b0c
 824:	0009                	c.nop	2
 826:	0f00                	addi	s0,sp,912
 828:	0251                	addi	tp,tp,20 # 14 <__DYNAMIC+0x14>
 82a:	0000                	unimp
 82c:	00025c0f          	.insn	4, 0x00025c0f
 830:	0f00                	addi	s0,sp,912
 832:	0246                	slli	tp,tp,0x11
 834:	0000                	unimp
 836:	6704                	.insn	2, 0x6704
 838:	0002                	c.slli	zero,0x0
 83a:	e300                	.insn	2, 0xe300
 83c:	0006                	c.slli	zero,0x1
 83e:	df00                	sw	s0,56(a4)
 840:	0006                	c.slli	zero,0x1
 842:	1800                	addi	s0,sp,48
 844:	000003cb          	.insn	4, 0x03cb
 848:	0162                	slli	sp,sp,0x18
 84a:	0000                	unimp
 84c:	0104                	addi	s1,sp,128
 84e:	6109                	addi	sp,sp,128
 850:	0008                	.insn	2, 0x0008
 852:	0400                	addi	s0,sp,512
 854:	03da                	slli	t2,t2,0x16
 856:	0000                	unimp
 858:	06f1                	addi	a3,a3,28
 85a:	0000                	unimp
 85c:	06ec                	addi	a1,sp,844
 85e:	0000                	unimp
 860:	1800                	addi	s0,sp,48
 862:	00000273          	.insn	4, 0x0273
 866:	00000173          	.insn	4, 0x0173
 86a:	0109                	addi	sp,sp,2
 86c:	430e                	lw	t1,192(sp)
 86e:	0009                	c.nop	2
 870:	0f00                	addi	s0,sp,912
 872:	0282                	c.slli	t0,0x0
 874:	0000                	unimp
 876:	8d04                	.insn	2, 0x8d04
 878:	0002                	c.slli	zero,0x0
 87a:	1500                	addi	s0,sp,672
 87c:	0d000007          	.insn	4, 0x0d000007
 880:	04000007          	.insn	4, 0x04000007
 884:	0298                	addi	a4,sp,320
 886:	0000                	unimp
 888:	0000073f 00000727 	.insn	8, 0x07270000073f
 890:	a304                	.insn	2, 0xa304
 892:	0002                	c.slli	zero,0x0
 894:	b700                	.insn	2, 0xb700
 896:	a7000007          	.insn	4, 0xa7000007
 89a:	29000007          	.insn	4, 0x29000007
 89e:	02ae                	slli	t0,t0,0xb
 8a0:	0000                	unimp
 8a2:	0184                	addi	s1,sp,192
 8a4:	0000                	unimp
 8a6:	af04                	.insn	2, 0xaf04
 8a8:	0002                	c.slli	zero,0x0
 8aa:	df00                	sw	s0,56(a4)
 8ac:	d3000007          	.insn	4, 0xd3000007
 8b0:	04000007          	.insn	4, 0x04000007
 8b4:	02ba                	slli	t0,t0,0xe
 8b6:	0000                	unimp
 8b8:	0802                	c.slli	a6,0x0
 8ba:	0000                	unimp
 8bc:	07f6                	slli	a5,a5,0x1d
 8be:	0000                	unimp
 8c0:	e60c                	.insn	2, 0xe60c
 8c2:	b8000003          	lb	zero,-1152(zero) # fffffb80 <stack+0xfeefef80>
 8c6:	0001                	nop
 8c8:	a101                	j	cc8 <STACK_SIZE+0xc8>
 8ca:	019e                	slli	gp,gp,0x7
 8cc:	0000                	unimp
 8ce:	18e6                	slli	a7,a7,0x39
 8d0:	08fc                	addi	a5,sp,92
 8d2:	0000                	unimp
 8d4:	f501                	bnez	a0,7dc <__DYNAMIC+0x7dc>
 8d6:	1b000003          	lb	zero,432(zero) # 1b0 <__DYNAMIC+0x1b0>
 8da:	0008                	.insn	2, 0x0008
 8dc:	1700                	addi	s0,sp,928
 8de:	0008                	.insn	2, 0x0008
 8e0:	0100                	addi	s0,sp,128
 8e2:	0400                	addi	s0,sp,512
 8e4:	0000                	unimp
 8e6:	0828                	addi	a0,sp,24
 8e8:	0000                	unimp
 8ea:	0824                	addi	s1,sp,24
 8ec:	0000                	unimp
 8ee:	0b04                	addi	s1,sp,400
 8f0:	0004                	.insn	2, 0x0004
 8f2:	4200                	lw	s0,0(a2)
 8f4:	0008                	.insn	2, 0x0008
 8f6:	3e00                	.insn	2, 0x3e00
 8f8:	0008                	.insn	2, 0x0008
 8fa:	0000                	unimp
 8fc:	0912                	slli	s2,s2,0x4
 8fe:	c2000003          	lb	zero,-992(zero) # fffffc20 <stack+0xfeeff020>
 902:	0001                	nop
 904:	ac01                	j	b14 <__DYNAMIC+0xb14>
 906:	01ad                	addi	gp,gp,11
 908:	0000                	unimp
 90a:	180118e7          	.insn	4, 0x180118e7
 90e:	57000003          	lb	zero,1392(zero) # 570 <__DYNAMIC+0x570>
 912:	0008                	.insn	2, 0x0008
 914:	4b00                	lw	s0,16(a4)
 916:	0008                	.insn	2, 0x0008
 918:	0100                	addi	s0,sp,128
 91a:	00000323          	sb	zero,6(zero) # 6 <__DYNAMIC+0x6>
 91e:	087a                	slli	a6,a6,0x1e
 920:	0000                	unimp
 922:	086e                	slli	a6,a6,0x1b
 924:	0000                	unimp
 926:	2e01                	jal	c36 <STACK_SIZE+0x36>
 928:	9d000003          	lb	zero,-1584(zero) # fffff9d0 <stack+0xfeefedd0>
 92c:	0008                	.insn	2, 0x0008
 92e:	9100                	.insn	2, 0x9100
 930:	0008                	.insn	2, 0x0008
 932:	0400                	addi	s0,sp,512
 934:	0339                	addi	t1,t1,14
 936:	0000                	unimp
 938:	000008e7          	jalr	a7,zero # 0 <__DYNAMIC>
 93c:	000008db          	.insn	4, 0x08db
 940:	0000                	unimp
 942:	2a00                	.insn	2, 0x2a00
 944:	0490                	addi	a2,sp,576
 946:	0000                	unimp
 948:	01e4                	addi	s1,sp,204
 94a:	0100                	addi	s0,sp,128
 94c:	e4c0                	.insn	2, 0xe4c0
 94e:	0001                	nop
 950:	0801                	addi	a6,a6,0
 952:	0000                	unimp
 954:	0100                	addi	s0,sp,128
 956:	1905010b          	.insn	4, 0x1905010b
 95a:	0490                	addi	a2,sp,576
 95c:	0000                	unimp
 95e:	02aa                	slli	t0,t0,0xa
 960:	0100                	addi	s0,sp,128
 962:	014a                	slli	sp,sp,0x12
 964:	01c4                	addi	s1,sp,196
 966:	0000                	unimp
 968:	0105                	addi	sp,sp,1
 96a:	1900                	addi	s0,sp,176
 96c:	0490                	addi	a2,sp,576
 96e:	0000                	unimp
 970:	02b4                	addi	a3,sp,328
 972:	0100                	addi	s0,sp,128
 974:	01d00153          	.insn	4, 0x01d00153
 978:	0000                	unimp
 97a:	0100                	addi	s0,sp,128
 97c:	0000                	unimp
 97e:	001f 0000 0005      	.insn	6, 0x00050000001f
 984:	0401                	addi	s0,s0,0
 986:	02a2                	slli	t0,t0,0x8
 988:	0000                	unimp
 98a:	0c01                	addi	s8,s8,0
 98c:	0010                	.insn	2, 0x0010
 98e:	3300                	.insn	2, 0x3300
 990:	0002                	c.slli	zero,0x0
 992:	8e00                	.insn	2, 0x8e00
 994:	0002                	c.slli	zero,0x0
 996:	9c00                	.insn	2, 0x9c00
 998:	0002                	c.slli	zero,0x0
 99a:	ca00                	sw	s0,16(a2)
 99c:	0002                	c.slli	zero,0x0
 99e:	0100                	addi	s0,sp,128
 9a0:	80                	.byte	0x80

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	0501                	addi	a0,a0,0
   2:	3100                	.insn	2, 0x3100
   4:	b7170213          	addi	tp,a4,-1167
   8:	1742                	slli	a4,a4,0x30
   a:	0000                	unimp
   c:	4902                	lw	s2,0(sp)
   e:	0200                	addi	s0,sp,256
  10:	7e18                	.insn	2, 0x7e18
  12:	0018                	.insn	2, 0x0018
  14:	0300                	addi	s0,sp,384
  16:	0005                	c.nop	1
  18:	213a0e03          	lb	t3,531(s4)
  1c:	3b01                	jal	fffffd2c <stack+0xfeeff12c>
  1e:	490b390b          	.insn	4, 0x490b390b
  22:	04000013          	li	zero,64
  26:	0034                	addi	a3,sp,8
  28:	1331                	addi	t1,t1,-20
  2a:	1702                	slli	a4,a4,0x20
  2c:	001742b7          	lui	t0,0x174
  30:	0500                	addi	s0,sp,640
  32:	0005                	c.nop	1
  34:	213a0803          	lb	a6,531(s4)
  38:	3b01                	jal	fffffd48 <stack+0xfeeff148>
  3a:	490b390b          	.insn	4, 0x490b390b
  3e:	06000013          	li	zero,96
  42:	0024                	addi	s1,sp,8
  44:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
  48:	00000e03          	lb	t3,0(zero) # 0 <__DYNAMIC>
  4c:	7d014807          	.insn	4, 0x7d014807
  50:	7f01                	lui	t5,0xfffe0
  52:	00130113          	addi	sp,t1,1
  56:	0800                	addi	s0,sp,16
  58:	0016                	c.slli	zero,0x5
  5a:	0b3a0e03          	lb	t3,179(s4)
  5e:	0b390b3b          	.insn	4, 0x0b390b3b
  62:	1349                	addi	t1,t1,-14
  64:	0000                	unimp
  66:	2e09                	jal	378 <__DYNAMIC+0x378>
  68:	0301                	addi	t1,t1,0
  6a:	3a0e                	.insn	2, 0x3a0e
  6c:	0121                	addi	sp,sp,8
  6e:	0b390b3b          	.insn	4, 0x0b390b3b
  72:	13491927          	.insn	4, 0x13491927
  76:	2120                	.insn	2, 0x2120
  78:	0101                	addi	sp,sp,0
  7a:	0a000013          	li	zero,160
  7e:	0034                	addi	a3,sp,8
  80:	213a0e03          	lb	t3,531(s4)
  84:	3b01                	jal	fffffd94 <stack+0xfeeff194>
  86:	490b390b          	.insn	4, 0x490b390b
  8a:	0b000013          	li	zero,176
  8e:	0034                	addi	a3,sp,8
  90:	0b3a0e03          	lb	t3,179(s4)
  94:	0b390b3b          	.insn	4, 0x0b390b3b
  98:	1349                	addi	t1,t1,-14
  9a:	1802                	slli	a6,a6,0x20
  9c:	0000                	unimp
  9e:	1d0c                	addi	a1,sp,688
  a0:	3101                	jal	fffffca0 <stack+0xfeeff0a0>
  a2:	b8015213          	.insn	4, 0xb8015213
  a6:	0b42                	slli	s6,s6,0x10
  a8:	1755                	addi	a4,a4,-11
  aa:	2158                	.insn	2, 0x2158
  ac:	5901                	li	s2,-32
  ae:	010b570b          	.insn	4, 0x010b570b
  b2:	0d000013          	li	zero,208
  b6:	0034                	addi	a3,sp,8
  b8:	213a0803          	lb	a6,531(s4)
  bc:	3b01                	jal	fffffdcc <stack+0xfeeff1cc>
  be:	490b390b          	.insn	4, 0x490b390b
  c2:	0e000013          	li	zero,224
  c6:	012e                	slli	sp,sp,0xb
  c8:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
  d0:	2139                	jal	4de <__DYNAMIC+0x4de>
  d2:	2706                	.insn	2, 0x2706
  d4:	1119                	addi	sp,sp,-26
  d6:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
  d8:	4006                	.insn	2, 0x4006
  da:	7a18                	.insn	2, 0x7a18
  dc:	0119                	addi	sp,sp,6
  de:	0f000013          	li	zero,240
  e2:	0005                	c.nop	1
  e4:	1331                	addi	t1,t1,-20
  e6:	0000                	unimp
  e8:	2e10                	.insn	2, 0x2e10
  ea:	0301                	addi	t1,t1,0
  ec:	3a0e                	.insn	2, 0x3a0e
  ee:	0121                	addi	sp,sp,8
  f0:	21390b3b          	.insn	4, 0x21390b3b
  f4:	270d                	jal	816 <__DYNAMIC+0x816>
  f6:	2019                	jal	fc <__DYNAMIC+0xfc>
  f8:	0121                	addi	sp,sp,8
  fa:	1301                	addi	t1,t1,-32
  fc:	0000                	unimp
  fe:	0511                	addi	a0,a0,4
 100:	0300                	addi	s0,sp,384
 102:	3a0e                	.insn	2, 0x3a0e
 104:	0221                	addi	tp,tp,8 # 8 <__DYNAMIC+0x8>
 106:	0b390b3b          	.insn	4, 0x0b390b3b
 10a:	1349                	addi	t1,t1,-14
 10c:	1802                	slli	a6,a6,0x20
 10e:	0000                	unimp
 110:	1d12                	slli	s10,s10,0x24
 112:	3101                	jal	fffffd12 <stack+0xfeeff112>
 114:	b8015213          	.insn	4, 0xb8015213
 118:	0b42                	slli	s6,s6,0x10
 11a:	1755                	addi	a4,a4,-11
 11c:	2158                	.insn	2, 0x2158
 11e:	5901                	li	s2,-32
 120:	000b570b          	.insn	4, 0x000b570b
 124:	1300                	addi	s0,sp,416
 126:	0035                	c.nop	13
 128:	1349                	addi	t1,t1,-14
 12a:	0000                	unimp
 12c:	2614                	.insn	2, 0x2614
 12e:	4900                	lw	s0,16(a0)
 130:	15000013          	li	zero,336
 134:	0034                	addi	a3,sp,8
 136:	213a0e03          	lb	t3,531(s4)
 13a:	3b01                	jal	fffffe4a <stack+0xfeeff24a>
 13c:	3905                	jal	fffffd6c <stack+0xfeeff16c>
 13e:	0921                	addi	s2,s2,8
 140:	1349                	addi	t1,t1,-14
 142:	1702                	slli	a4,a4,0x20
 144:	001742b7          	lui	t0,0x174
 148:	1600                	addi	s0,sp,800
 14a:	002e                	c.slli	zero,0xb
 14c:	213a0e03          	lb	t3,531(s4)
 150:	3b01                	jal	fffffe60 <stack+0xfeeff260>
 152:	0d21390b          	.insn	4, 0x0d21390b
 156:	21201927          	.insn	4, 0x21201927
 15a:	0001                	nop
 15c:	1700                	addi	s0,sp,928
 15e:	1755010b          	.insn	4, 0x1755010b
 162:	0000                	unimp
 164:	1d18                	addi	a4,sp,688
 166:	3101                	jal	fffffd66 <stack+0xfeeff166>
 168:	58175513          	.insn	4, 0x58175513
 16c:	0121                	addi	sp,sp,8
 16e:	0559                	addi	a0,a0,22
 170:	13010b57          	.insn	4, 0x13010b57
 174:	0000                	unimp
 176:	1d19                	addi	s10,s10,-26
 178:	3100                	.insn	2, 0x3100
 17a:	b8015213          	.insn	4, 0xb8015213
 17e:	0542                	slli	a0,a0,0x10
 180:	1755                	addi	a4,a4,-11
 182:	2158                	.insn	2, 0x2158
 184:	5901                	li	s2,-32
 186:	5705                	li	a4,-31
 188:	0921                	addi	s2,s2,8
 18a:	0000                	unimp
 18c:	111a                	slli	sp,sp,0x26
 18e:	2501                	jal	78e <__DYNAMIC+0x78e>
 190:	130e                	slli	t1,t1,0x23
 192:	0b01900b          	.insn	4, 0x0b01900b
 196:	0191                	addi	gp,gp,4
 198:	0306                	slli	t1,t1,0x1
 19a:	1b1f 551f 1117      	.insn	6, 0x1117551f1b1f
 1a0:	1001                	c.nop	-32
 1a2:	1b000017          	auipc	zero,0x1b000
 1a6:	0024                	addi	s1,sp,8
 1a8:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 1ac:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 1b0:	2e1c                	.insn	2, 0x2e1c
 1b2:	3f01                	jal	c2 <__DYNAMIC+0xc2>
 1b4:	0319                	addi	t1,t1,6
 1b6:	3a0e                	.insn	2, 0x3a0e
 1b8:	39053b0b          	.insn	4, 0x39053b0b
 1bc:	4919270b          	.insn	4, 0x4919270b
 1c0:	12011113          	.insn	4, 0x12011113
 1c4:	4006                	.insn	2, 0x4006
 1c6:	7a18                	.insn	2, 0x7a18
 1c8:	0119                	addi	sp,sp,6
 1ca:	1d000013          	li	zero,464
 1ce:	011d                	addi	sp,sp,7
 1d0:	1331                	addi	t1,t1,-20
 1d2:	0152                	slli	sp,sp,0x14
 1d4:	42b8                	lw	a4,64(a3)
 1d6:	1201110b          	.insn	4, 0x1201110b
 1da:	5806                	lw	a6,96(sp)
 1dc:	5705590b          	.insn	4, 0x5705590b
 1e0:	0013010b          	.insn	4, 0x0013010b
 1e4:	1e00                	addi	s0,sp,816
 1e6:	0048                	addi	a0,sp,4
 1e8:	017d                	addi	sp,sp,31
 1ea:	0000137f 7d01481f 	.insn	12, 0x00137f017d01481f0000137f
 1f2:	00137f01 
 1f6:	2000                	.insn	2, 0x2000
 1f8:	0000010b          	.insn	4, 0x010b
 1fc:	2e21                	jal	514 <__DYNAMIC+0x514>
 1fe:	3f01                	jal	10e <__DYNAMIC+0x10e>
 200:	0319                	addi	t1,t1,6
 202:	3a0e                	.insn	2, 0x3a0e
 204:	390b3b0b          	.insn	4, 0x390b3b0b
 208:	4919270b          	.insn	4, 0x4919270b
 20c:	12011113          	.insn	4, 0x12011113
 210:	4006                	.insn	2, 0x4006
 212:	7a18                	.insn	2, 0x7a18
 214:	0119                	addi	sp,sp,6
 216:	22000013          	li	zero,544
 21a:	0005                	c.nop	1
 21c:	0b3a0803          	lb	a6,179(s4)
 220:	0b390b3b          	.insn	4, 0x0b390b3b
 224:	1349                	addi	t1,t1,-14
 226:	1802                	slli	a6,a6,0x20
 228:	0000                	unimp
 22a:	03003423          	.insn	4, 0x03003423
 22e:	3a08                	.insn	2, 0x3a08
 230:	390b3b0b          	.insn	4, 0x390b3b0b
 234:	0213490b          	.insn	4, 0x0213490b
 238:	1742b717          	auipc	a4,0x1742b
 23c:	0000                	unimp
 23e:	0f24                	addi	s1,sp,920
 240:	0b00                	addi	s0,sp,400
 242:	0013490b          	.insn	4, 0x0013490b
 246:	2500                	.insn	2, 0x2500
 248:	012e                	slli	sp,sp,0xb
 24a:	1331                	addi	t1,t1,-20
 24c:	0111                	addi	sp,sp,4
 24e:	0612                	slli	a2,a2,0x4
 250:	1840                	addi	s0,sp,52
 252:	197a                	slli	s2,s2,0x3e
 254:	0000                	unimp
 256:	3426                	.insn	2, 0x3426
 258:	3100                	.insn	2, 0x3100
 25a:	27000013          	li	zero,624
 25e:	001d                	c.nop	7
 260:	1331                	addi	t1,t1,-20
 262:	0152                	slli	sp,sp,0x14
 264:	42b8                	lw	a4,64(a3)
 266:	5817550b          	.insn	4, 0x5817550b
 26a:	570b590b          	.insn	4, 0x570b590b
 26e:	2800000b          	.insn	4, 0x2800000b
 272:	011d                	addi	sp,sp,7
 274:	1331                	addi	t1,t1,-20
 276:	1755                	addi	a4,a4,-11 # 1742b22d <stack+0x1632a62d>
 278:	0b58                	addi	a4,sp,404
 27a:	0b59                	addi	s6,s6,22
 27c:	13010b57          	.insn	4, 0x13010b57
 280:	0000                	unimp
 282:	0b29                	addi	s6,s6,10
 284:	3101                	jal	fffffe84 <stack+0xfeeff284>
 286:	00175513          	srli	a0,a4,0x1
 28a:	2a00                	.insn	2, 0x2a00
 28c:	001d                	c.nop	7
 28e:	1331                	addi	t1,t1,-20
 290:	0152                	slli	sp,sp,0x14
 292:	42b8                	lw	a4,64(a3)
 294:	1201110b          	.insn	4, 0x1201110b
 298:	5806                	lw	a6,96(sp)
 29a:	5705590b          	.insn	4, 0x5705590b
 29e:	0000000b          	.insn	4, 0x000b
 2a2:	1101                	addi	sp,sp,-32
 2a4:	1000                	addi	s0,sp,32
 2a6:	03175517          	auipc	a0,0x3175
 2aa:	1b0e                	slli	s6,s6,0x23
 2ac:	250e                	.insn	2, 0x250e
 2ae:	130e                	slli	t1,t1,0x23
 2b0:	0005                	c.nop	1
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
   0:	08fa                	slli	a7,a7,0x1e
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	1302                	slli	t1,t1,0x20
   e:	1a181813          	.insn	4, 0x1a181813
  12:	1e1a                	slli	t3,t3,0x26
  14:	201e                	.insn	2, 0x201e
  16:	2420                	.insn	2, 0x2420
  18:	2524                	.insn	2, 0x2524
  1a:	34312f27          	.insn	4, 0x34312f27
  1e:	3534                	.insn	2, 0x3534
  20:	0039                	c.nop	14
  22:	7c06                	.insn	2, 0x7c06
  24:	04010003          	lb	zero,64(sp)
  28:	2800                	.insn	2, 0x2800
  2a:	3002                	.insn	2, 0x3002
  2c:	049f 3028 5801      	.insn	6, 0x58013028049f
  32:	3004                	.insn	2, 0x3004
  34:	0636                	slli	a2,a2,0xd
  36:	0078                	addi	a4,sp,12
  38:	007a                	c.slli	zero,0x1e
  3a:	9f22                	add	t5,t5,s0
  3c:	3604                	.insn	2, 0x3604
  3e:	063e                	slli	a2,a2,0xf
  40:	0078                	addi	a4,sp,12
  42:	0082                	c.slli	ra,0x0
  44:	9f22                	add	t5,t5,s0
  46:	3e04                	.insn	2, 0x3e04
  48:	0944                	addi	s1,sp,148
  4a:	0078                	addi	a4,sp,12
  4c:	007a                	c.slli	zero,0x1e
  4e:	8222                	mv	tp,s0
  50:	2200                	.insn	2, 0x2200
  52:	049f 4e44 780a      	.insn	6, 0x780a4e44049f
  58:	8200                	.insn	2, 0x8200
  5a:	2200                	.insn	2, 0x2200
  5c:	6c91                	lui	s9,0x4
  5e:	2206                	.insn	2, 0x2206
  60:	049f 504e 7807      	.insn	6, 0x7807504e049f
  66:	9100                	.insn	2, 0x9100
  68:	066c                	addi	a1,sp,780
  6a:	9f22                	add	t5,t5,s0
  6c:	5204                	lw	s1,32(a2)
  6e:	00ee                	slli	ra,ra,0x1b
  70:	5801                	li	a6,-32
  72:	fc04                	.insn	2, 0xfc04
  74:	8800                	.insn	2, 0x8800
  76:	0201                	addi	tp,tp,0 # 0 <__DYNAMIC>
  78:	9f30                	.insn	2, 0x9f30
  7a:	8804                	.insn	2, 0x8804
  7c:	8a01                	andi	a2,a2,0
  7e:	0a01                	addi	s4,s4,0
  80:	0078                	addi	a4,sp,12
  82:	0082                	c.slli	ra,0x0
  84:	9122                	add	sp,sp,s0
  86:	066c                	addi	a1,sp,780
  88:	9f22                	add	t5,t5,s0
  8a:	9a04                	.insn	2, 0x9a04
  8c:	a801                	j	9c <__DYNAMIC+0x9c>
  8e:	0101                	addi	sp,sp,0
  90:	0058                	addi	a4,sp,4
  92:	1a15150f          	.insn	4, 0x1a15150f
  96:	1b1a                	slli	s6,s6,0x26
  98:	2120201b          	.insn	4, 0x2120201b
  9c:	2a21                	jal	1b4 <__DYNAMIC+0x1b4>
  9e:	302c2c2b          	.insn	4, 0x302c2c2b
  a2:	3431                	jal	fffffaae <stack+0xfeefeeae>
  a4:	3634                	.insn	2, 0x3634
  a6:	3936                	.insn	2, 0x3936
  a8:	3a39                	jal	fffff9c6 <stack+0xfeefedc6>
  aa:	9806                	add	a6,a6,ra
  ac:	04010003          	lb	zero,64(sp)
  b0:	1000                	addi	s0,sp,32
  b2:	5801                	li	a6,-32
  b4:	1004                	addi	s1,sp,32
  b6:	011a                	slli	sp,sp,0x6
  b8:	045a                	slli	s0,s0,0x16
  ba:	1c1a                	slli	s8,s8,0x26
  bc:	6201                	.insn	2, 0x6201
  be:	1c04                	addi	s1,sp,560
  c0:	0128                	addi	a0,sp,136
  c2:	045a                	slli	s0,s0,0x16
  c4:	2a28                	.insn	2, 0x2a28
  c6:	9102                	jalr	sp
  c8:	046c                	addi	a1,sp,524
  ca:	3c2a                	.insn	2, 0x3c2a
  cc:	5a01                	li	s4,-32
  ce:	4604                	lw	s1,8(a2)
  d0:	014a                	slli	sp,sp,0x12
  d2:	045a                	slli	s0,s0,0x16
  d4:	544a                	lw	s0,176(sp)
  d6:	6201                	.insn	2, 0x6201
  d8:	6004                	.insn	2, 0x6004
  da:	00ec                	addi	a1,sp,76
  dc:	5801                	li	a6,-32
  de:	ec04                	.insn	2, 0xec04
  e0:	f200                	.insn	2, 0xf200
  e2:	0100                	addi	s0,sp,128
  e4:	045a                	slli	s0,s0,0x16
  e6:	00f2                	slli	ra,ra,0x1c
  e8:	00fe                	slli	ra,ra,0x1f
  ea:	9102                	jalr	sp
  ec:	046c                	addi	a1,sp,524
  ee:	00fe                	slli	ra,ra,0x1f
  f0:	0182                	c.slli	gp,0x0
  f2:	5a01                	li	s4,-32
  f4:	0300                	addi	s0,sp,384
  f6:	0a0a                	slli	s4,s4,0x2
  f8:	1515                	addi	a0,a0,-27 # 317528b <stack+0x207468b>
  fa:	1818                	addi	a4,sp,48
  fc:	1a1a                	slli	s4,s4,0x26
  fe:	0600                	addi	s0,sp,768
 100:	033e                	slli	t1,t1,0xf
 102:	0100                	addi	s0,sp,128
 104:	0004                	.insn	2, 0x0004
 106:	0218                	addi	a4,sp,256
 108:	9f30                	.insn	2, 0x9f30
 10a:	1804                	addi	s1,sp,48
 10c:	0730                	addi	a2,sp,904
 10e:	007a                	c.slli	zero,0x1e
 110:	7d20                	.insn	2, 0x7d20
 112:	2200                	.insn	2, 0x2200
 114:	049f 3630 7d06      	.insn	6, 0x7d063630049f
 11a:	7a00                	.insn	2, 0x7a00
 11c:	1c00                	addi	s0,sp,560
 11e:	049f 3c36 7a07      	.insn	6, 0x7a073c36049f
 124:	2000                	.insn	2, 0x2000
 126:	007d                	c.nop	31
 128:	9f22                	add	t5,t5,s0
 12a:	3c04                	.insn	2, 0x3c04
 12c:	023e                	slli	tp,tp,0xf
 12e:	9f30                	.insn	2, 0x9f30
 130:	0000                	unimp
 132:	2121                	jal	53a <__DYNAMIC+0x53a>
 134:	0600                	addi	s0,sp,768
 136:	008c                	addi	a1,sp,64
 138:	0100                	addi	s0,sp,128
 13a:	0004                	.insn	2, 0x0004
 13c:	0142                	slli	sp,sp,0x10
 13e:	045a                	slli	s0,s0,0x16
 140:	ba42                	.insn	2, 0xba42
 142:	0104                	addi	s1,sp,128
 144:	006c                	addi	a1,sp,12
 146:	8900                	.insn	2, 0x8900
 148:	8901                	andi	a0,a0,0
 14a:	c601                	beqz	a2,152 <__DYNAMIC+0x152>
 14c:	c601                	beqz	a2,154 <__DYNAMIC+0x154>
 14e:	c501                	beqz	a0,156 <__DYNAMIC+0x156>
 150:	c502                	sw	zero,136(sp)
 152:	c802                	sw	zero,16(sp)
 154:	c802                	sw	zero,16(sp)
 156:	0002                	c.slli	zero,0x0
 158:	8c06                	mv	s8,ra
 15a:	0000                	unimp
 15c:	0401                	addi	s0,s0,0
 15e:	8400                	.insn	2, 0x8400
 160:	0102                	c.slli	sp,0x0
 162:	0284045b          	.insn	4, 0x0284045b
 166:	02e8                	addi	a0,sp,332
 168:	a30a                	.insn	2, 0xa30a
 16a:	2b0ba503          	lw	a0,688(s7)
 16e:	32a8                	.insn	2, 0x32a8
 170:	00a8                	addi	a0,sp,72
 172:	049f 02e8 0498      	.insn	6, 0x049802e8049f
 178:	5b01                	li	s6,-32
 17a:	9804                	.insn	2, 0x9804
 17c:	9e04                	.insn	2, 0x9e04
 17e:	0a04                	addi	s1,sp,272
 180:	0ba503a3          	sb	s10,167(a0)
 184:	a832a82b          	.insn	4, 0xa832a82b
 188:	9f00                	.insn	2, 0x9f00
 18a:	9e04                	.insn	2, 0x9e04
 18c:	ba04                	.insn	2, 0xba04
 18e:	0104                	addi	s1,sp,128
 190:	7500005b          	.insn	4, 0x7500005b
 194:	c675                	beqz	a2,280 <__DYNAMIC+0x280>
 196:	c601                	beqz	a2,19e <__DYNAMIC+0x19e>
 198:	c501                	beqz	a0,1a0 <__DYNAMIC+0x1a0>
 19a:	c502                	sw	zero,136(sp)
 19c:	0002                	c.slli	zero,0x0
 19e:	8c06                	mv	s8,ra
 1a0:	0000                	unimp
 1a2:	0401                	addi	s0,s0,0
 1a4:	c200                	sw	s0,0(a2)
 1a6:	0101                	addi	sp,sp,0
 1a8:	045c                	addi	a5,sp,516
 1aa:	01c2                	slli	gp,gp,0x10
 1ac:	02e8                	addi	a0,sp,332
 1ae:	a30a                	.insn	2, 0xa30a
 1b0:	2b0ca503          	lw	a0,688(s9) # 42b0 <STACK_SIZE+0x36b0>
 1b4:	32a8                	.insn	2, 0x32a8
 1b6:	00a8                	addi	a0,sp,72
 1b8:	049f 02e8 0498      	.insn	6, 0x049802e8049f
 1be:	5c01                	li	s8,-32
 1c0:	9804                	.insn	2, 0x9804
 1c2:	ba04                	.insn	2, 0xba04
 1c4:	0a04                	addi	s1,sp,272
 1c6:	0ca503a3          	sb	a0,199(a0)
 1ca:	a832a82b          	.insn	4, 0xa832a82b
 1ce:	9f00                	.insn	2, 0x9f00
 1d0:	0800                	addi	s0,sp,16
 1d2:	009c0817          	auipc	a6,0x9c0
 1d6:	0100                	addi	s0,sp,128
 1d8:	022c                	addi	a1,sp,264
 1da:	9f38                	.insn	2, 0x9f38
 1dc:	1900                	addi	s0,sp,176
 1de:	2121                	jal	5e6 <__DYNAMIC+0x5e6>
 1e0:	c672                	sw	t3,12(sp)
 1e2:	c501                	beqz	a0,1ea <__DYNAMIC+0x1ea>
 1e4:	0602                	c.slli	a2,0x0
 1e6:	00c8                	addi	a0,sp,68
 1e8:	0100                	addi	s0,sp,128
 1ea:	0004                	.insn	2, 0x0004
 1ec:	0106                	slli	sp,sp,0x1
 1ee:	045a                	slli	s0,s0,0x16
 1f0:	8206                	mv	tp,ra
 1f2:	0101                	addi	sp,sp,0
 1f4:	046c                	addi	a1,sp,524
 1f6:	02ac                	addi	a1,sp,328
 1f8:	03dc                	addi	a5,sp,452
 1fa:	6c01                	.insn	2, 0x6c01
 1fc:	1900                	addi	s0,sp,176
 1fe:	c672                	sw	t3,12(sp)
 200:	c501                	beqz	a0,208 <__DYNAMIC+0x208>
 202:	0602                	c.slli	a2,0x0
 204:	00c8                	addi	a0,sp,68
 206:	0100                	addi	s0,sp,128
 208:	0004                	.insn	2, 0x0004
 20a:	0182                	c.slli	gp,0x0
 20c:	5b01                	li	s6,-32
 20e:	ac04                	.insn	2, 0xac04
 210:	dc02                	sw	zero,56(sp)
 212:	005b0103          	lb	sp,5(s6)
 216:	7219                	lui	tp,0xfffe6
 218:	01c6                	slli	gp,gp,0x11
 21a:	02c5                	addi	t0,t0,17 # 174011 <STACK_SIZE+0x173411>
 21c:	c806                	sw	ra,16(sp)
 21e:	0000                	unimp
 220:	0401                	addi	s0,s0,0
 222:	8200                	.insn	2, 0x8200
 224:	0101                	addi	sp,sp,0
 226:	045c                	addi	a5,sp,516
 228:	02ac                	addi	a1,sp,328
 22a:	03dc                	addi	a5,sp,452
 22c:	5c01                	li	s8,-32
 22e:	1d00                	addi	s0,sp,688
 230:	2424                	.insn	2, 0x2424
 232:	c672                	sw	t3,12(sp)
 234:	c501                	beqz	a0,23c <__DYNAMIC+0x23c>
 236:	0602                	c.slli	a2,0x0
 238:	00c8                	addi	a0,sp,68
 23a:	0100                	addi	s0,sp,128
 23c:	0004                	.insn	2, 0x0004
 23e:	020e                	slli	tp,tp,0x3
 240:	9f30                	.insn	2, 0x9f30
 242:	0e04                	addi	s1,sp,784
 244:	0182                	c.slli	gp,0x0
 246:	5a01                	li	s4,-32
 248:	ac04                	.insn	2, 0xac04
 24a:	dc02                	sw	zero,56(sp)
 24c:	005a0103          	lb	sp,5(s4)
 250:	3d26                	.insn	2, 0x3d26
 252:	644c                	.insn	2, 0x644c
 254:	01c6726f          	jal	tp,67270 <STACK_SIZE+0x66670>
 258:	01e101c7          	.insn	4, 0x01e101c7
 25c:	01e8                	addi	a0,sp,204
 25e:	01f4                	addi	a3,sp,204
 260:	0298                	addi	a4,sp,320
 262:	02a1                	addi	t0,t0,8
 264:	02c5                	addi	t0,t0,17
 266:	d606                	sw	ra,44(sp)
 268:	0000                	unimp
 26a:	0401                	addi	s0,s0,0
 26c:	2400                	.insn	2, 0x2400
 26e:	3002                	.insn	2, 0x3002
 270:	049f 5a3a 5f01      	.insn	6, 0x5f015a3a049f
 276:	6804                	.insn	2, 0x6804
 278:	0174                	addi	a3,sp,140
 27a:	045f 029e 02a2      	.insn	6, 0x02a2029e045f
 280:	5f01                	li	t5,-32
 282:	c404                	sw	s1,8(s0)
 284:	d202                	sw	zero,36(sp)
 286:	0102                	c.slli	sp,0x0
 288:	045f 02e4 0394      	.insn	6, 0x039402e4045f
 28e:	5f01                	li	t5,-32
 290:	9e04                	.insn	2, 0x9e04
 292:	0103ce03          	lbu	t3,16(t2)
 296:	005f 382d 5c55      	.insn	6, 0x5c55382d005f
 29c:	5f5c                	lw	a5,60(a4)
 29e:	01d001c7          	.insn	4, 0x01d001c7
 2a2:	01fc                	addi	a5,sp,204
 2a4:	02a90287          	.insn	4, 0x02a90287
 2a8:	02b4                	addi	a3,sp,328
 2aa:	e206                	.insn	2, 0xe206
 2ac:	0000                	unimp
 2ae:	0401                	addi	s0,s0,0
 2b0:	1400                	addi	s0,sp,544
 2b2:	5b01                	li	s6,-32
 2b4:	3a04                	.insn	2, 0x3a04
 2b6:	0242                	slli	tp,tp,0x10
 2b8:	0076                	c.slli	zero,0x1d
 2ba:	4204                	lw	s1,0(a2)
 2bc:	014a                	slli	sp,sp,0x12
 2be:	0296045b          	.insn	4, 0x0296045b
 2c2:	02a2                	slli	t0,t0,0x8
 2c4:	5b01                	li	s6,-32
 2c6:	dc04                	sw	s1,56(s0)
 2c8:	f002                	.insn	2, 0xf002
 2ca:	0102                	c.slli	sp,0x0
 2cc:	0396045b          	.insn	4, 0x0396045b
 2d0:	03aa                	slli	t2,t2,0xa
 2d2:	5b01                	li	s6,-32
 2d4:	2d00                	.insn	2, 0x2d00
 2d6:	5538                	lw	a4,104(a0)
 2d8:	c75f d001 fc01      	.insn	6, 0xfc01d001c75f
 2de:	8701                	c.srai	a4,0x0
 2e0:	a902                	.insn	2, 0xa902
 2e2:	b402                	.insn	2, 0xb402
 2e4:	0602                	c.slli	a2,0x0
 2e6:	00e2                	slli	ra,ra,0x18
 2e8:	0100                	addi	s0,sp,128
 2ea:	0004                	.insn	2, 0x0004
 2ec:	0114                	addi	a3,sp,128
 2ee:	045a                	slli	s0,s0,0x16
 2f0:	4a3a                	lw	s4,140(sp)
 2f2:	5a01                	li	s4,-32
 2f4:	9604                	.insn	2, 0x9604
 2f6:	a202                	.insn	2, 0xa202
 2f8:	0102                	c.slli	sp,0x0
 2fa:	045a                	slli	s0,s0,0x16
 2fc:	02dc                	addi	a5,sp,324
 2fe:	02f0                	addi	a2,sp,332
 300:	5a01                	li	s4,-32
 302:	9604                	.insn	2, 0x9604
 304:	0103aa03          	lw	s4,16(t2)
 308:	005a                	c.slli	zero,0x16
 30a:	382d                	jal	fffffb44 <stack+0xfeefef44>
 30c:	5f55                	li	t5,-11
 30e:	01d001c7          	.insn	4, 0x01d001c7
 312:	01fc                	addi	a5,sp,204
 314:	02a90287          	.insn	4, 0x02a90287
 318:	02b4                	addi	a3,sp,328
 31a:	e206                	.insn	2, 0xe206
 31c:	0000                	unimp
 31e:	0401                	addi	s0,s0,0
 320:	1400                	addi	s0,sp,544
 322:	5f01                	li	t5,-32
 324:	3a04                	.insn	2, 0x3a04
 326:	014a                	slli	sp,sp,0x12
 328:	045f 0296 02a2      	.insn	6, 0x02a20296045f
 32e:	5f01                	li	t5,-32
 330:	dc04                	sw	s1,56(s0)
 332:	f002                	.insn	2, 0xf002
 334:	0102                	c.slli	sp,0x0
 336:	045f 0396 03aa      	.insn	6, 0x03aa0396045f
 33c:	5f01                	li	t5,-32
 33e:	2d00                	.insn	2, 0x2d00
 340:	5538                	lw	a4,104(a0)
 342:	c75f d001 fc01      	.insn	6, 0xfc01d001c75f
 348:	8701                	c.srai	a4,0x0
 34a:	a902                	.insn	2, 0xa902
 34c:	b402                	.insn	2, 0xb402
 34e:	0602                	c.slli	a2,0x0
 350:	00e2                	slli	ra,ra,0x18
 352:	0100                	addi	s0,sp,128
 354:	0004                	.insn	2, 0x0004
 356:	0814                	addi	a3,sp,16
 358:	007f 008d 2322 9f01 	.insn	10, 0x3a049f012322008d007f
 360:	3a04 
 362:	084a                	slli	a6,a6,0x12
 364:	007f 008d 2322 9f01 	.insn	10, 0x96049f012322008d007f
 36c:	9604 
 36e:	a202                	.insn	2, 0xa202
 370:	0202                	c.slli	tp,0x0
 372:	9f31                	.insn	2, 0x9f31
 374:	dc04                	sw	s1,56(s0)
 376:	f002                	.insn	2, 0xf002
 378:	0802                	c.slli	a6,0x0
 37a:	007f 008d 2322 9f01 	.insn	10, 0x96049f012322008d007f
 382:	9604 
 384:	0803aa03          	lw	s4,128(t2)
 388:	007f 008d 2322 9f01 	.insn	10, 0x30009f012322008d007f
 390:	3000 
 392:	5838                	lw	a4,112(s0)
 394:	ca5f d001 ff01      	.insn	6, 0xff01d001ca5f
 39a:	8701                	c.srai	a4,0x0
 39c:	ac02                	.insn	2, 0xac02
 39e:	b402                	.insn	2, 0xb402
 3a0:	0602                	c.slli	a2,0x0
 3a2:	00e2                	slli	ra,ra,0x18
 3a4:	0100                	addi	s0,sp,128
 3a6:	0004                	.insn	2, 0x0004
 3a8:	0614                	addi	a3,sp,768
 3aa:	007d                	c.nop	31
 3ac:	007f 9f22 3a04 064a 	.insn	10, 0x008d064a3a049f22007f
 3b4:	008d 
 3b6:	007f 9f22 9604 a202 	.insn	10, 0x0802a20296049f22007f
 3be:	0802 
 3c0:	007a                	c.slli	zero,0x1e
 3c2:	007f2433          	slt	s0,t5,t2
 3c6:	9f22                	add	t5,t5,s0
 3c8:	dc04                	sw	s1,56(s0)
 3ca:	f002                	.insn	2, 0xf002
 3cc:	0602                	c.slli	a2,0x0
 3ce:	008d                	addi	ra,ra,3
 3d0:	007f 9f22 9604 aa03 	.insn	10, 0x0603aa0396049f22007f
 3d8:	0603 
 3da:	008d                	addi	ra,ra,3
 3dc:	007f 9f22 2700 4e2d 	.insn	10, 0xc6554e2d27009f22007f
 3e4:	c655 
 3e6:	c701                	beqz	a4,3ee <__DYNAMIC+0x3ee>
 3e8:	e301                	bnez	a4,3e8 <__DYNAMIC+0x3e8>
 3ea:	e801                	bnez	s0,3fa <__DYNAMIC+0x3fa>
 3ec:	f601                	bnez	a2,2f4 <__DYNAMIC+0x2f4>
 3ee:	fc01                	bnez	s0,306 <__DYNAMIC+0x306>
 3f0:	a301                	j	8f0 <__DYNAMIC+0x8f0>
 3f2:	a902                	.insn	2, 0xa902
 3f4:	0602                	c.slli	a2,0x0
 3f6:	00d6                	slli	ra,ra,0x15
 3f8:	0100                	addi	s0,sp,128
 3fa:	0004                	.insn	2, 0x0004
 3fc:	010c                	addi	a1,sp,128
 3fe:	046c                	addi	a1,sp,524
 400:	463e                	lw	a2,204(sp)
 402:	6c01                	.insn	2, 0x6c01
 404:	9e04                	.insn	2, 0x9e04
 406:	a202                	.insn	2, 0xa202
 408:	0102                	c.slli	sp,0x0
 40a:	046c                	addi	a1,sp,524
 40c:	02c4                	addi	s1,sp,324
 40e:	02d2                	slli	t0,t0,0x14
 410:	6c01                	.insn	2, 0x6c01
 412:	e404                	.insn	2, 0xe404
 414:	e802                	.insn	2, 0xe802
 416:	0202                	c.slli	tp,0x0
 418:	9f31                	.insn	2, 0x9f31
 41a:	9e04                	.insn	2, 0x9e04
 41c:	0203a203          	lw	tp,32(t2)
 420:	9f32                	add	t5,t5,a2
 422:	2700                	.insn	2, 0x2700
 424:	4e2d                	li	t3,11
 426:	c655                	beqz	a2,4d2 <__DYNAMIC+0x4d2>
 428:	c701                	beqz	a4,430 <__DYNAMIC+0x430>
 42a:	e301                	bnez	a4,42a <__DYNAMIC+0x42a>
 42c:	e701                	bnez	a4,434 <__DYNAMIC+0x434>
 42e:	e701                	bnez	a4,436 <__DYNAMIC+0x436>
 430:	e801                	bnez	s0,440 <__DYNAMIC+0x440>
 432:	f601                	bnez	a2,33a <__DYNAMIC+0x33a>
 434:	fc01                	bnez	s0,34c <__DYNAMIC+0x34c>
 436:	a301                	j	936 <__DYNAMIC+0x936>
 438:	a902                	.insn	2, 0xa902
 43a:	0602                	c.slli	a2,0x0
 43c:	00d6                	slli	ra,ra,0x15
 43e:	0100                	addi	s0,sp,128
 440:	0004                	.insn	2, 0x0004
 442:	010c                	addi	a1,sp,128
 444:	045a                	slli	s0,s0,0x16
 446:	463e                	lw	a2,204(sp)
 448:	5a01                	li	s4,-32
 44a:	9e04                	.insn	2, 0x9e04
 44c:	a202                	.insn	2, 0xa202
 44e:	0102                	c.slli	sp,0x0
 450:	045a                	slli	s0,s0,0x16
 452:	02c4                	addi	s1,sp,324
 454:	02ca                	slli	t0,t0,0x12
 456:	5a01                	li	s4,-32
 458:	ca04                	sw	s1,16(a2)
 45a:	d202                	sw	zero,36(sp)
 45c:	0302                	c.slli	t1,0x0
 45e:	7f7a                	.insn	2, 0x7f7a
 460:	049f 02e4 02e8      	.insn	6, 0x02e802e4049f
 466:	5a01                	li	s4,-32
 468:	9e04                	.insn	2, 0x9e04
 46a:	0103a203          	lw	tp,16(t2)
 46e:	005a                	c.slli	zero,0x16
 470:	554e2d27          	.insn	4, 0x554e2d27
 474:	01c6                	slli	gp,gp,0x11
 476:	01e301c7          	.insn	4, 0x01e301c7
 47a:	01e8                	addi	a0,sp,204
 47c:	01f6                	slli	gp,gp,0x1d
 47e:	01fc                	addi	a5,sp,204
 480:	02a902a3          	sb	a0,37(s2)
 484:	d606                	sw	ra,44(sp)
 486:	0000                	unimp
 488:	0401                	addi	s0,s0,0
 48a:	0c00                	addi	s0,sp,528
 48c:	3002                	.insn	2, 0x3002
 48e:	049f 463e 5f01      	.insn	6, 0x5f01463e049f
 494:	9e04                	.insn	2, 0x9e04
 496:	a202                	.insn	2, 0xa202
 498:	0102                	c.slli	sp,0x0
 49a:	045f 02c4 02d2      	.insn	6, 0x02d202c4045f
 4a0:	5f01                	li	t5,-32
 4a2:	e404                	.insn	2, 0xe404
 4a4:	e802                	.insn	2, 0xe802
 4a6:	0102                	c.slli	sp,0x0
 4a8:	045f 039e 03a2      	.insn	6, 0x03a2039e045f
 4ae:	5f01                	li	t5,-32
 4b0:	2b00                	.insn	2, 0x2b00
 4b2:	532d                	li	t1,-21
 4b4:	fa55                	bnez	a2,468 <__DYNAMIC+0x468>
 4b6:	fc01                	bnez	s0,3ce <__DYNAMIC+0x3ce>
 4b8:	a701                	j	bb8 <__DYNAMIC+0xbb8>
 4ba:	a902                	.insn	2, 0xa902
 4bc:	0802                	c.slli	a6,0x0
 4be:	00e2                	slli	ra,ra,0x18
 4c0:	0100                	addi	s0,sp,128
 4c2:	0100                	addi	s0,sp,128
 4c4:	085a                	slli	a6,a6,0x16
 4c6:	011c                	addi	a5,sp,128
 4c8:	0100                	addi	s0,sp,128
 4ca:	0100                	addi	s0,sp,128
 4cc:	085a                	slli	a6,a6,0x16
 4ce:	023e                	slli	tp,tp,0xf
 4d0:	0100                	addi	s0,sp,128
 4d2:	0100                	addi	s0,sp,128
 4d4:	085a                	slli	a6,a6,0x16
 4d6:	0278                	addi	a4,sp,268
 4d8:	0100                	addi	s0,sp,128
 4da:	0100                	addi	s0,sp,128
 4dc:	005a                	c.slli	zero,0x16
 4de:	55532d2b          	.insn	4, 0x55532d2b
 4e2:	01fa                	slli	gp,gp,0x1e
 4e4:	01fc                	addi	a5,sp,204
 4e6:	02a902a7          	.insn	4, 0x02a902a7
 4ea:	e208                	.insn	2, 0xe208
 4ec:	0000                	unimp
 4ee:	0001                	nop
 4f0:	5f01                	li	t5,-32
 4f2:	1c08                	addi	a0,sp,560
 4f4:	0001                	nop
 4f6:	0001                	nop
 4f8:	5f01                	li	t5,-32
 4fa:	3e08                	.insn	2, 0x3e08
 4fc:	0002                	c.slli	zero,0x0
 4fe:	0001                	nop
 500:	5f01                	li	t5,-32
 502:	7808                	.insn	2, 0x7808
 504:	0002                	c.slli	zero,0x0
 506:	0001                	nop
 508:	5f01                	li	t5,-32
 50a:	3a00                	.insn	2, 0x3a00
 50c:	6144                	.insn	2, 0x6144
 50e:	d264                	sw	s1,100(a2)
 510:	d801                	beqz	s0,420 <__DYNAMIC+0x420>
 512:	8901                	andi	a0,a0,0
 514:	8c02                	jr	s8
 516:	b602                	.insn	2, 0xb602
 518:	b902                	.insn	2, 0xb902
 51a:	0602                	c.slli	a2,0x0
 51c:	00f6                	slli	ra,ra,0x1d
 51e:	0100                	addi	s0,sp,128
 520:	0004                	.insn	2, 0x0004
 522:	0114                	addi	a3,sp,128
 524:	046c                	addi	a1,sp,524
 526:	3a36                	.insn	2, 0x3a36
 528:	6c01                	.insn	2, 0x6c01
 52a:	8e04                	.insn	2, 0x8e04
 52c:	9e02                	jalr	t3
 52e:	0202                	c.slli	tp,0x0
 530:	9f34                	.insn	2, 0x9f34
 532:	dc04                	sw	s1,56(s0)
 534:	e002                	.insn	2, 0xe002
 536:	0102                	c.slli	sp,0x0
 538:	046c                	addi	a1,sp,524
 53a:	0396                	slli	t2,t2,0x5
 53c:	039a                	slli	t2,t2,0x6
 53e:	6c01                	.insn	2, 0x6c01
 540:	3a00                	.insn	2, 0x3a00
 542:	6144                	.insn	2, 0x6144
 544:	d264                	sw	s1,100(a2)
 546:	d801                	beqz	s0,456 <__DYNAMIC+0x456>
 548:	8901                	andi	a0,a0,0
 54a:	8c02                	jr	s8
 54c:	b602                	.insn	2, 0xb602
 54e:	b902                	.insn	2, 0xb902
 550:	0602                	c.slli	a2,0x0
 552:	00f6                	slli	ra,ra,0x1d
 554:	0100                	addi	s0,sp,128
 556:	0004                	.insn	2, 0x0004
 558:	0114                	addi	a3,sp,128
 55a:	045a                	slli	s0,s0,0x16
 55c:	3a36                	.insn	2, 0x3a36
 55e:	5a01                	li	s4,-32
 560:	8e04                	.insn	2, 0x8e04
 562:	9e02                	jalr	t3
 564:	0102                	c.slli	sp,0x0
 566:	045a                	slli	s0,s0,0x16
 568:	02dc                	addi	a5,sp,324
 56a:	02e0                	addi	s0,sp,332
 56c:	5a01                	li	s4,-32
 56e:	9604                	.insn	2, 0x9604
 570:	01039a03          	lh	s4,16(t2)
 574:	005a                	c.slli	zero,0x16
 576:	443a                	lw	s0,140(sp)
 578:	6461                	lui	s0,0x18
 57a:	01d2                	slli	gp,gp,0x14
 57c:	01d8                	addi	a4,sp,196
 57e:	0289                	addi	t0,t0,2
 580:	028c                	addi	a1,sp,320
 582:	02b6                	slli	t0,t0,0xd
 584:	02b9                	addi	t0,t0,14
 586:	f606                	.insn	2, 0xf606
 588:	0000                	unimp
 58a:	0401                	addi	s0,s0,0 # 18000 <STACK_SIZE+0x17400>
 58c:	1400                	addi	s0,sp,544
 58e:	5f01                	li	t5,-32
 590:	3604                	.insn	2, 0x3604
 592:	013a                	slli	sp,sp,0xe
 594:	045f 028e 029e      	.insn	6, 0x029e028e045f
 59a:	5f01                	li	t5,-32
 59c:	dc04                	sw	s1,56(s0)
 59e:	e002                	.insn	2, 0xe002
 5a0:	0102                	c.slli	sp,0x0
 5a2:	045f 0396 039a      	.insn	6, 0x039a0396045f
 5a8:	5f01                	li	t5,-32
 5aa:	4400                	lw	s0,8(s0)
 5ac:	644a                	.insn	2, 0x644a
 5ae:	d86d                	beqz	s0,5a0 <__DYNAMIC+0x5a0>
 5b0:	df01                	beqz	a4,4c8 <__DYNAMIC+0x4c8>
 5b2:	e801                	bnez	s0,5c2 <__DYNAMIC+0x5c2>
 5b4:	f201                	bnez	a2,4b4 <__DYNAMIC+0x4b4>
 5b6:	8c01                	sub	s0,s0,s0
 5b8:	9502                	jalr	a0
 5ba:	9802                	jalr	a6
 5bc:	9f02                	jalr	t5
 5be:	b902                	.insn	2, 0xb902
 5c0:	c202                	sw	zero,4(sp)
 5c2:	0602                	c.slli	a2,0x0
 5c4:	010a                	slli	sp,sp,0x2
 5c6:	0100                	addi	s0,sp,128
 5c8:	0004                	.insn	2, 0x0004
 5ca:	0104                	addi	s1,sp,128
 5cc:	045c                	addi	a5,sp,516
 5ce:	3226                	.insn	2, 0x3226
 5d0:	5c01                	li	s8,-32
 5d2:	8a04                	.insn	2, 0x8a04
 5d4:	8e02                	jr	t3
 5d6:	0102                	c.slli	sp,0x0
 5d8:	045c                	addi	a5,sp,516
 5da:	029e                	slli	t0,t0,0x7
 5dc:	02b0                	addi	a2,sp,328
 5de:	5c01                	li	s8,-32
 5e0:	cc04                	sw	s1,24(s0)
 5e2:	d802                	sw	zero,48(sp)
 5e4:	0102                	c.slli	sp,0x0
 5e6:	045c                	addi	a5,sp,516
 5e8:	02e0                	addi	s0,sp,332
 5ea:	02ea                	slli	t0,t0,0x1a
 5ec:	5c01                	li	s8,-32
 5ee:	8604                	.insn	2, 0x8604
 5f0:	01039203          	lh	tp,16(t2)
 5f4:	005c                	addi	a5,sp,4
 5f6:	4a44                	lw	s1,20(a2)
 5f8:	6d64                	.insn	2, 0x6d64
 5fa:	01d8                	addi	a4,sp,196
 5fc:	01df 01e8 01f2      	.insn	6, 0x01f201e801df
 602:	028c                	addi	a1,sp,320
 604:	0295                	addi	t0,t0,5
 606:	0298                	addi	a4,sp,320
 608:	029f 02b9 02c2      	.insn	6, 0x02c202b9029f
 60e:	0a06                	slli	s4,s4,0x1
 610:	0001                	nop
 612:	0401                	addi	s0,s0,0
 614:	0400                	addi	s0,sp,512
 616:	5a01                	li	s4,-32
 618:	2604                	.insn	2, 0x2604
 61a:	0132                	slli	sp,sp,0xc
 61c:	045a                	slli	s0,s0,0x16
 61e:	028a                	slli	t0,t0,0x2
 620:	028e                	slli	t0,t0,0x3
 622:	5a01                	li	s4,-32
 624:	9e04                	.insn	2, 0x9e04
 626:	b002                	.insn	2, 0xb002
 628:	0102                	c.slli	sp,0x0
 62a:	045a                	slli	s0,s0,0x16
 62c:	02cc                	addi	a1,sp,324
 62e:	02d8                	addi	a4,sp,324
 630:	5a01                	li	s4,-32
 632:	e004                	.insn	2, 0xe004
 634:	ea02                	.insn	2, 0xea02
 636:	0102                	c.slli	sp,0x0
 638:	045a                	slli	s0,s0,0x16
 63a:	0386                	slli	t2,t2,0x1
 63c:	0392                	slli	t2,t2,0x4
 63e:	5a01                	li	s4,-32
 640:	4400                	lw	s0,8(s0)
 642:	644a                	.insn	2, 0x644a
 644:	d86d                	beqz	s0,636 <__DYNAMIC+0x636>
 646:	df01                	beqz	a4,55e <__DYNAMIC+0x55e>
 648:	e801                	bnez	s0,658 <__DYNAMIC+0x658>
 64a:	f001                	bnez	s0,54a <__DYNAMIC+0x54a>
 64c:	f001                	bnez	s0,54c <__DYNAMIC+0x54c>
 64e:	f201                	bnez	a2,54e <__DYNAMIC+0x54e>
 650:	8c01                	sub	s0,s0,s0
 652:	9502                	jalr	a0
 654:	9802                	jalr	a6
 656:	9d02                	jalr	s10
 658:	9d02                	jalr	s10
 65a:	9f02                	jalr	t5
 65c:	b902                	.insn	2, 0xb902
 65e:	c202                	sw	zero,4(sp)
 660:	0602                	c.slli	a2,0x0
 662:	010a                	slli	sp,sp,0x2
 664:	0100                	addi	s0,sp,128
 666:	0004                	.insn	2, 0x0004
 668:	0104                	addi	s1,sp,128
 66a:	045f 3226 5f01      	.insn	6, 0x5f013226045f
 670:	8a04                	.insn	2, 0x8a04
 672:	8e02                	jr	t3
 674:	0102                	c.slli	sp,0x0
 676:	045f 029e 02a8      	.insn	6, 0x02a8029e045f
 67c:	5f01                	li	t5,-32
 67e:	a804                	.insn	2, 0xa804
 680:	b002                	.insn	2, 0xb002
 682:	0302                	c.slli	t1,0x0
 684:	7f7f                	.insn	2, 0x7f7f
 686:	049f 02cc 02d8      	.insn	6, 0x02d802cc049f
 68c:	5f01                	li	t5,-32
 68e:	e004                	.insn	2, 0xe004
 690:	e202                	.insn	2, 0xe202
 692:	0102                	c.slli	sp,0x0
 694:	045f 02e2 02ea      	.insn	6, 0x02ea02e2045f
 69a:	9f7f7f03          	.insn	4, 0x9f7f7f03
 69e:	8604                	.insn	2, 0x8604
 6a0:	01039203          	lh	tp,16(t2)
 6a4:	005f 6d67 01db      	.insn	6, 0x01db6d67005f
 6aa:	01df 01ea 01f2      	.insn	6, 0x01f201ea01df
 6b0:	0295028f          	.insn	4, 0x0295028f
 6b4:	02bc                	addi	a5,sp,328
 6b6:	02c2                	slli	t0,t0,0x10
 6b8:	3006                	.insn	2, 0x3006
 6ba:	0001                	nop
 6bc:	0401                	addi	s0,s0,0
 6be:	0c00                	addi	s0,sp,528
 6c0:	5d01                	li	s10,-32
 6c2:	e404                	.insn	2, 0xe404
 6c4:	e801                	bnez	s0,6d4 <__DYNAMIC+0x6d4>
 6c6:	0101                	addi	sp,sp,0
 6c8:	045d                	addi	s0,s0,23
 6ca:	01f8                	addi	a4,sp,204
 6cc:	028a                	slli	t0,t0,0x2
 6ce:	5d01                	li	s10,-32
 6d0:	a604                	.insn	2, 0xa604
 6d2:	b202                	.insn	2, 0xb202
 6d4:	0102                	c.slli	sp,0x0
 6d6:	045d                	addi	s0,s0,23
 6d8:	02e0                	addi	s0,sp,332
 6da:	02ec                	addi	a1,sp,332
 6dc:	5d01                	li	s10,-32
 6de:	be00                	.insn	2, 0xbe00
 6e0:	c401                	beqz	s0,6e8 <__DYNAMIC+0x6e8>
 6e2:	0801                	addi	a6,a6,0 # 9c01d2 <STACK_SIZE+0x9bf5d2>
 6e4:	01e4                	addi	s1,sp,204
 6e6:	0100                	addi	s0,sp,128
 6e8:	0108                	addi	a0,sp,128
 6ea:	005a                	c.slli	zero,0x16
 6ec:	7f7a                	.insn	2, 0x7f7a
 6ee:	02da                	slli	t0,t0,0x16
 6f0:	0600                	addi	s0,sp,768
 6f2:	0160                	addi	s0,sp,140
 6f4:	0100                	addi	s0,sp,128
 6f6:	0004                	.insn	2, 0x0004
 6f8:	0616                	slli	a2,a2,0x5
 6fa:	400c                	lw	a1,0(s0)
 6fc:	0f42                	slli	t5,t5,0x10
 6fe:	9f00                	.insn	2, 0x9f00
 700:	de04                	sw	s1,56(a2)
 702:	e602                	.insn	2, 0xe602
 704:	0602                	c.slli	a2,0x0
 706:	400c                	lw	a1,0(s0)
 708:	0f42                	slli	t5,t5,0x10
 70a:	9f00                	.insn	2, 0x9f00
 70c:	8f00                	.insn	2, 0x8f00
 70e:	be01                	j	21e <__DYNAMIC+0x21e>
 710:	c501                	beqz	a0,718 <__DYNAMIC+0x718>
 712:	c802                	sw	zero,16(sp)
 714:	0602                	c.slli	a2,0x0
 716:	019c                	addi	a5,sp,192
 718:	0100                	addi	s0,sp,128
 71a:	0004                	.insn	2, 0x0004
 71c:	0148                	addi	a0,sp,132
 71e:	046e                	slli	s0,s0,0x1b
 720:	0288                	addi	a0,sp,320
 722:	028e                	slli	t0,t0,0x3
 724:	6e01                	.insn	2, 0x6e01
 726:	8f00                	.insn	2, 0x8f00
 728:	9101                	srli	a0,a0,0x20
 72a:	9101                	srli	a0,a0,0x20
 72c:	9a01                	andi	a2,a2,-32
 72e:	9a01                	andi	a2,a2,-32
 730:	9d01                	.insn	2, 0x9d01
 732:	9e01                	.insn	2, 0x9e01
 734:	b701                	j	634 <__DYNAMIC+0x634>
 736:	b701                	j	636 <__DYNAMIC+0x636>
 738:	ba01                	j	48 <__DYNAMIC+0x48>
 73a:	c501                	beqz	a0,742 <__DYNAMIC+0x742>
 73c:	c802                	sw	zero,16(sp)
 73e:	0602                	c.slli	a2,0x0
 740:	019c                	addi	a5,sp,192
 742:	0100                	addi	s0,sp,128
 744:	0004                	.insn	2, 0x0004
 746:	0204                	addi	s1,sp,256
 748:	9f30                	.insn	2, 0x9f30
 74a:	0404                	addi	s1,sp,512
 74c:	0e16                	slli	t3,t3,0x5
 74e:	008e                	slli	ra,ra,0x3
 750:	ff08                	.insn	2, 0xff08
 752:	091a                	slli	s2,s2,0x6
 754:	1ef8                	addi	a4,sp,892
 756:	007e                	c.slli	zero,0x1f
 758:	3122                	.insn	2, 0x3122
 75a:	9f1c                	.insn	2, 0x9f1c
 75c:	1604                	addi	s1,sp,800
 75e:	0e18                	addi	a4,sp,784
 760:	008e                	slli	ra,ra,0x3
 762:	ff08                	.insn	2, 0xff08
 764:	091a                	slli	s2,s2,0x6
 766:	1ef8                	addi	a4,sp,892
 768:	007e                	c.slli	zero,0x1f
 76a:	3222                	.insn	2, 0x3222
 76c:	9f1c                	.insn	2, 0x9f1c
 76e:	1c04                	addi	s1,sp,560
 770:	0e38                	addi	a4,sp,792
 772:	008e                	slli	ra,ra,0x3
 774:	ff08                	.insn	2, 0xff08
 776:	091a                	slli	s2,s2,0x6
 778:	1ef8                	addi	a4,sp,892
 77a:	007e                	c.slli	zero,0x1f
 77c:	3122                	.insn	2, 0x3122
 77e:	9f1c                	.insn	2, 0x9f1c
 780:	3804                	.insn	2, 0x3804
 782:	0e3a                	slli	t3,t3,0xe
 784:	008e                	slli	ra,ra,0x3
 786:	ff08                	.insn	2, 0xff08
 788:	091a                	slli	s2,s2,0x6
 78a:	1ef8                	addi	a4,sp,892
 78c:	007d                	c.nop	31
 78e:	3122                	.insn	2, 0x3122
 790:	9f1c                	.insn	2, 0x9f1c
 792:	8804                	.insn	2, 0x8804
 794:	8e02                	jr	t3
 796:	0e02                	c.slli	t3,0x0
 798:	008e                	slli	ra,ra,0x3
 79a:	ff08                	.insn	2, 0xff08
 79c:	091a                	slli	s2,s2,0x6
 79e:	1ef8                	addi	a4,sp,892
 7a0:	007e                	c.slli	zero,0x1f
 7a2:	3122                	.insn	2, 0x3122
 7a4:	9f1c                	.insn	2, 0x9f1c
 7a6:	8f00                	.insn	2, 0x8f00
 7a8:	9b01                	andi	a4,a4,-32
 7aa:	9d01                	.insn	2, 0x9d01
 7ac:	b801                	j	ffffffbc <stack+0xfeeff3bc>
 7ae:	ba01                	j	be <__DYNAMIC+0xbe>
 7b0:	be01                	j	2c0 <__DYNAMIC+0x2c0>
 7b2:	c501                	beqz	a0,7ba <__DYNAMIC+0x7ba>
 7b4:	c802                	sw	zero,16(sp)
 7b6:	0602                	c.slli	a2,0x0
 7b8:	019c                	addi	a5,sp,192
 7ba:	0100                	addi	s0,sp,128
 7bc:	0004                	.insn	2, 0x0004
 7be:	0118                	addi	a4,sp,128
 7c0:	045a                	slli	s0,s0,0x16
 7c2:	3a18                	.insn	2, 0x3a18
 7c4:	5a01                	li	s4,-32
 7c6:	3a04                	.insn	2, 0x3a04
 7c8:	0148                	addi	a0,sp,132
 7ca:	045a                	slli	s0,s0,0x16
 7cc:	0288                	addi	a0,sp,320
 7ce:	028e                	slli	t0,t0,0x3
 7d0:	5a01                	li	s4,-32
 7d2:	9100                	.insn	2, 0x9100
 7d4:	9801                	andi	s0,s0,-32
 7d6:	aa01                	j	8e6 <__DYNAMIC+0x8e6>
 7d8:	b501                	j	5d8 <__DYNAMIC+0x5d8>
 7da:	c501                	beqz	a0,7e2 <__DYNAMIC+0x7e2>
 7dc:	c802                	sw	zero,16(sp)
 7de:	0602                	c.slli	a2,0x0
 7e0:	01a0                	addi	s0,sp,200
 7e2:	0100                	addi	s0,sp,128
 7e4:	0004                	.insn	2, 0x0004
 7e6:	010c                	addi	a1,sp,128
 7e8:	045f 2e22 5f01      	.insn	6, 0x5f012e22045f
 7ee:	8404                	.insn	2, 0x8404
 7f0:	8a02                	jr	s4
 7f2:	0102                	c.slli	sp,0x0
 7f4:	005f 0195 019e      	.insn	6, 0x019e0195005f
 7fa:	01b2                	slli	gp,gp,0xc
 7fc:	01b701b7          	lui	gp,0x1b70
 800:	01c4                	addi	s1,sp,196
 802:	aa06                	.insn	2, 0xaa06
 804:	0001                	nop
 806:	0401                	addi	s0,s0,0
 808:	0e00                	addi	s0,sp,784
 80a:	5d01                	li	s10,-32
 80c:	2204                	.insn	2, 0x2204
 80e:	012a                	slli	sp,sp,0xa
 810:	045e                	slli	s0,s0,0x17
 812:	422a                	lw	tp,136(sp)
 814:	5d01                	li	s10,-32
 816:	a100                	.insn	2, 0xa100
 818:	aa01                	j	928 <__DYNAMIC+0x928>
 81a:	0801                	addi	a6,a6,0
 81c:	01b8                	addi	a4,sp,200
 81e:	0100                	addi	s0,sp,128
 820:	010a                	slli	sp,sp,0x2
 822:	006e                	c.slli	zero,0x1b
 824:	01a1                	addi	gp,gp,8 # 1b70008 <stack+0xa6f408>
 826:	01aa                	slli	gp,gp,0xa
 828:	b808                	.insn	2, 0xb808
 82a:	0001                	nop
 82c:	0a01                	addi	s4,s4,0
 82e:	8e0e                	mv	t3,gp
 830:	0800                	addi	s0,sp,16
 832:	f8091aff 22007e1e 	.insn	12, 0x009f1c3122007e1ef8091aff
 83a:	009f1c31 
 83e:	01a6                	slli	gp,gp,0x9
 840:	01aa                	slli	gp,gp,0xa
 842:	bc08                	.insn	2, 0xbc08
 844:	0001                	nop
 846:	0601                	addi	a2,a2,0
 848:	5f01                	li	t5,-32
 84a:	9100                	.insn	2, 0x9100
 84c:	9501                	srai	a0,a0,0x20
 84e:	ac01                	j	a5e <__DYNAMIC+0xa5e>
 850:	b201                	j	150 <__DYNAMIC+0x150>
 852:	c501                	beqz	a0,85a <__DYNAMIC+0x85a>
 854:	c802                	sw	zero,16(sp)
 856:	0602                	c.slli	a2,0x0
 858:	01a0                	addi	s0,sp,200
 85a:	0100                	addi	s0,sp,128
 85c:	0004                	.insn	2, 0x0004
 85e:	010a                	slli	sp,sp,0x2
 860:	046c                	addi	a1,sp,524
 862:	2c22                	.insn	2, 0x2c22
 864:	6c01                	.insn	2, 0x6c01
 866:	8404                	.insn	2, 0x8404
 868:	8a02                	jr	s4
 86a:	0102                	c.slli	sp,0x0
 86c:	006c                	addi	a1,sp,12
 86e:	0191                	addi	gp,gp,4
 870:	0195                	addi	gp,gp,5
 872:	01ac                	addi	a1,sp,200
 874:	01b2                	slli	gp,gp,0xc
 876:	02c5                	addi	t0,t0,17
 878:	02c8                	addi	a0,sp,324
 87a:	a006                	.insn	2, 0xa006
 87c:	0001                	nop
 87e:	0401                	addi	s0,s0,0
 880:	0a00                	addi	s0,sp,272
 882:	6e01                	.insn	2, 0x6e01
 884:	2204                	.insn	2, 0x2204
 886:	012c                	addi	a1,sp,136
 888:	046e                	slli	s0,s0,0x1b
 88a:	0284                	addi	s1,sp,320
 88c:	028a                	slli	t0,t0,0x2
 88e:	6e01                	.insn	2, 0x6e01
 890:	9100                	.insn	2, 0x9100
 892:	9501                	srai	a0,a0,0x20
 894:	ac01                	j	aa4 <__DYNAMIC+0xaa4>
 896:	b201                	j	196 <__DYNAMIC+0x196>
 898:	c501                	beqz	a0,8a0 <__DYNAMIC+0x8a0>
 89a:	c802                	sw	zero,16(sp)
 89c:	0602                	c.slli	a2,0x0
 89e:	01a0                	addi	s0,sp,200
 8a0:	0100                	addi	s0,sp,128
 8a2:	0004                	.insn	2, 0x0004
 8a4:	0e0a                	slli	t3,t3,0x2
 8a6:	008e                	slli	ra,ra,0x3
 8a8:	ff08                	.insn	2, 0xff08
 8aa:	091a                	slli	s2,s2,0x6
 8ac:	1ef8                	addi	a4,sp,892
 8ae:	007e                	c.slli	zero,0x1f
 8b0:	3122                	.insn	2, 0x3122
 8b2:	9f1c                	.insn	2, 0x9f1c
 8b4:	2204                	.insn	2, 0x2204
 8b6:	0e2c                	addi	a1,sp,792
 8b8:	008e                	slli	ra,ra,0x3
 8ba:	ff08                	.insn	2, 0xff08
 8bc:	091a                	slli	s2,s2,0x6
 8be:	1ef8                	addi	a4,sp,892
 8c0:	007e                	c.slli	zero,0x1f
 8c2:	3122                	.insn	2, 0x3122
 8c4:	9f1c                	.insn	2, 0x9f1c
 8c6:	8404                	.insn	2, 0x8404
 8c8:	8a02                	jr	s4
 8ca:	0e02                	c.slli	t3,0x0
 8cc:	008e                	slli	ra,ra,0x3
 8ce:	ff08                	.insn	2, 0xff08
 8d0:	091a                	slli	s2,s2,0x6
 8d2:	1ef8                	addi	a4,sp,892
 8d4:	007e                	c.slli	zero,0x1f
 8d6:	3122                	.insn	2, 0x3122
 8d8:	9f1c                	.insn	2, 0x9f1c
 8da:	9100                	.insn	2, 0x9100
 8dc:	9501                	srai	a0,a0,0x20
 8de:	ae01                	j	bee <__DYNAMIC+0xbee>
 8e0:	b201                	j	1e0 <__DYNAMIC+0x1e0>
 8e2:	c501                	beqz	a0,8ea <__DYNAMIC+0x8ea>
 8e4:	c802                	sw	zero,16(sp)
 8e6:	0602                	c.slli	a2,0x0
 8e8:	01a0                	addi	s0,sp,200
 8ea:	0100                	addi	s0,sp,128
 8ec:	0004                	.insn	2, 0x0004
 8ee:	010a                	slli	sp,sp,0x2
 8f0:	045e                	slli	s0,s0,0x17
 8f2:	2c22                	.insn	2, 0x2c22
 8f4:	5e01                	li	t3,-32
 8f6:	8404                	.insn	2, 0x8404
 8f8:	8a02                	jr	s4
 8fa:	0102                	c.slli	sp,0x0
 8fc:	005e                	c.slli	zero,0x17

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0054                	addi	a3,sp,4
   2:	0000                	unimp
   4:	0002                	c.slli	zero,0x0
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0004                	.insn	2, 0x0004
   c:	0000                	unimp
   e:	0000                	unimp
  10:	008c                	addi	a1,sp,64
  12:	0100                	addi	s0,sp,128
  14:	023a                	slli	tp,tp,0xe
  16:	0000                	unimp
  18:	02c6                	slli	t0,t0,0x11
  1a:	0100                	addi	s0,sp,128
  1c:	003a                	c.slli	zero,0xe
	...
  2e:	0000                	unimp
  30:	0300                	addi	s0,sp,384
  32:	0100                	addi	s0,sp,128
  34:	003e                	c.slli	zero,0xf
  36:	0000                	unimp
  38:	033e                	slli	t1,t1,0xf
  3a:	0100                	addi	s0,sp,128
  3c:	003e                	c.slli	zero,0xf
	...
  46:	0000                	unimp
  48:	037c                	addi	a5,sp,396
  4a:	0100                	addi	s0,sp,128
  4c:	00a8                	addi	a0,sp,72
	...
  56:	0000                	unimp
  58:	0024                	addi	s1,sp,8
  5a:	0000                	unimp
  5c:	0002                	c.slli	zero,0x0
  5e:	097e                	slli	s2,s2,0x1f
  60:	0000                	unimp
  62:	0004                	.insn	2, 0x0004
  64:	0000                	unimp
  66:	0000                	unimp
  68:	0424                	addi	s1,sp,520
  6a:	0100                	addi	s0,sp,128
  6c:	0030                	addi	a2,sp,8
  6e:	0000                	unimp
  70:	0000                	unimp
  72:	0100                	addi	s0,sp,128
  74:	008c                	addi	a1,sp,64
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	00000223          	sb	zero,4(zero) # 4 <__DYNAMIC+0x4>
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	8c05                	sub	s0,s0,s1
   e:	0000                	unimp
  10:	0401                	addi	s0,s0,0
  12:	0000                	unimp
  14:	0604                	addi	s1,sp,768
  16:	0010                	.insn	2, 0x0010
  18:	9c05                	.insn	2, 0x9c05
  1a:	0000                	unimp
  1c:	0401                	addi	s0,s0,0
  1e:	1200                	addi	s0,sp,288
  20:	1604                	addi	s1,sp,800
  22:	041e                	slli	s0,s0,0x7
  24:	2c28                	.insn	2, 0x2c28
  26:	2e04                	.insn	2, 0x2e04
  28:	0030                	addi	a2,sp,8
  2a:	ae05                	j	35a <__DYNAMIC+0x35a>
  2c:	0000                	unimp
  2e:	0401                	addi	s0,s0,0
  30:	0400                	addi	s0,sp,512
  32:	0e04                	addi	s1,sp,784
  34:	0416                	slli	s0,s0,0x5
  36:	1c1a                	slli	s8,s8,0x26
  38:	1e04                	addi	s1,sp,816
  3a:	019c                	addi	a5,sp,192
  3c:	c604                	sw	s1,8(a2)
  3e:	f602                	.insn	2, 0xf602
  40:	ae050003          	lb	zero,-1312(a0)
  44:	0000                	unimp
  46:	0401                	addi	s0,s0,0
  48:	0400                	addi	s0,sp,512
  4a:	0e04                	addi	s1,sp,784
  4c:	0416                	slli	s0,s0,0x5
  4e:	1c1a                	slli	s8,s8,0x26
  50:	3404                	.insn	2, 0x3404
  52:	0438                	addi	a4,sp,520
  54:	483c                	lw	a5,80(s0)
  56:	6604                	.insn	2, 0x6604
  58:	046e                	slli	s0,s0,0x1b
  5a:	6e6e                	.insn	2, 0x6e6e
  5c:	7204                	.insn	2, 0x7204
  5e:	047e                	slli	s0,s0,0x1f
  60:	02c6                	slli	t0,t0,0x11
  62:	02d6                	slli	t0,t0,0x15
  64:	8c04                	.insn	2, 0x8c04
  66:	04039003          	lh	zero,64(t2)
  6a:	0390                	addi	a2,sp,448
  6c:	0394                	addi	a3,sp,448
  6e:	9804                	.insn	2, 0x9804
  70:	0403a403          	lw	s0,64(t2)
  74:	03c6                	slli	t2,t2,0x11
  76:	03ca                	slli	t2,t2,0x12
  78:	ca04                	sw	s1,16(a2)
  7a:	0403ce03          	lbu	t3,64(t2)
  7e:	03d2                	slli	t2,t2,0x14
  80:	03de                	slli	t2,t2,0x17
  82:	0500                	addi	s0,sp,640
  84:	00ce                	slli	ra,ra,0x13
  86:	0100                	addi	s0,sp,128
  88:	0004                	.insn	2, 0x0004
  8a:	0402                	c.slli	s0,0x0
  8c:	1408                	addi	a0,sp,544
  8e:	1804                	addi	s1,sp,48
  90:	041c                	addi	a5,sp,512
  92:	4646                	lw	a2,80(sp)
  94:	4e04                	lw	s1,24(a2)
  96:	044e                	slli	s0,s0,0x13
  98:	524e                	lw	tp,240(sp)
  9a:	cc04                	sw	s1,24(s0)
  9c:	cc02                	sw	zero,24(sp)
  9e:	0402                	c.slli	s0,0x0
  a0:	02e4                	addi	s1,sp,332
  a2:	02e8                	addi	a0,sp,332
  a4:	ec04                	.insn	2, 0xec04
  a6:	ec02                	.insn	2, 0xec02
  a8:	0402                	c.slli	s0,0x0
  aa:	02f0                	addi	a2,sp,332
  ac:	02f0                	addi	a2,sp,332
  ae:	9e04                	.insn	2, 0x9e04
  b0:	0403a203          	lw	tp,64(t2)
  b4:	03a6                	slli	t2,t2,0x9
  b6:	03a6                	slli	t2,t2,0x9
  b8:	aa04                	.insn	2, 0xaa04
  ba:	0003aa03          	lw	s4,0(t2)
  be:	e205                	bnez	a2,de <__DYNAMIC+0xde>
  c0:	0000                	unimp
  c2:	0401                	addi	s0,s0,0
  c4:	0000                	unimp
  c6:	0404                	addi	s1,sp,512
  c8:	0408                	addi	a0,sp,512
  ca:	3a3a                	.insn	2, 0x3a3a
  cc:	3a04                	.insn	2, 0x3a04
  ce:	043e                	slli	s0,s0,0xf
  d0:	02d0                	addi	a2,sp,324
  d2:	02d4                	addi	a3,sp,324
  d4:	dc04                	sw	s1,56(s0)
  d6:	dc02                	sw	zero,56(sp)
  d8:	0402                	c.slli	s0,0x0
  da:	038a                	slli	t2,t2,0x2
  dc:	038e                	slli	t2,t2,0x3
  de:	9604                	.insn	2, 0x9604
  e0:	00039603          	lh	a2,0(t2)
  e4:	d005                	beqz	s0,4 <__DYNAMIC+0x4>
  e6:	0000                	unimp
  e8:	0401                	addi	s0,s0,0
  ea:	0200                	addi	s0,sp,256
  ec:	2604                	.insn	2, 0x2604
  ee:	042e                	slli	s0,s0,0xb
  f0:	3a36                	.insn	2, 0x3a36
  f2:	5c04                	lw	s1,56(s0)
  f4:	0460                	addi	s0,sp,524
  f6:	02b4                	addi	a3,sp,328
  f8:	02b4                	addi	a3,sp,328
  fa:	b804                	.insn	2, 0xb804
  fc:	bc02                	.insn	2, 0xbc02
  fe:	0402                	c.slli	s0,0x0
 100:	02c0                	addi	s0,sp,324
 102:	02c4                	addi	s1,sp,324
 104:	8204                	.insn	2, 0x8204
 106:	04038603          	lb	a2,64(t2)
 10a:	03bc                	addi	a5,sp,456
 10c:	03c0                	addi	s0,sp,452
 10e:	0500                	addi	s0,sp,640
 110:	00d2                	slli	ra,ra,0x14
 112:	0100                	addi	s0,sp,128
 114:	0004                	.insn	2, 0x0004
 116:	0404                	addi	s1,sp,512
 118:	342c                	.insn	2, 0x342c
 11a:	3804                	.insn	2, 0x3804
 11c:	043c                	addi	a5,sp,520
 11e:	6a5e                	.insn	2, 0x6a5e
 120:	b204                	.insn	2, 0xb204
 122:	b602                	.insn	2, 0xb602
 124:	0402                	c.slli	s0,0x0
 126:	02ba                	slli	t0,t0,0xe
 128:	02be                	slli	t0,t0,0xf
 12a:	c204                	sw	s1,0(a2)
 12c:	c602                	sw	zero,12(sp)
 12e:	0402                	c.slli	s0,0x0
 130:	02d6                	slli	t0,t0,0x15
 132:	02de                	slli	t0,t0,0x17
 134:	e404                	.insn	2, 0xe404
 136:	e802                	.insn	2, 0xe802
 138:	0402                	c.slli	s0,0x0
 13a:	0384                	addi	s1,sp,448
 13c:	0390                	addi	a2,sp,448
 13e:	9804                	.insn	2, 0x9804
 140:	04039803          	lh	a6,64(t2)
 144:	039e                	slli	t2,t2,0x7
 146:	03a2                	slli	t2,t2,0x8
 148:	be04                	.insn	2, 0xbe04
 14a:	0003ca03          	lbu	s4,0(t2)
 14e:	6005                	c.lui	zero,0x1
 150:	0001                	nop
 152:	0401                	addi	s0,s0,0
 154:	8c00                	.insn	2, 0x8c00
 156:	0401                	addi	s0,s0,0
 158:	02c4                	addi	s1,sp,324
 15a:	02d4                	addi	a3,sp,324
 15c:	de04                	sw	s1,56(a2)
 15e:	e602                	.insn	2, 0xe602
 160:	0002                	c.slli	zero,0x0
 162:	6005                	c.lui	zero,0x1
 164:	0001                	nop
 166:	0401                	addi	s0,s0,0
 168:	2800                	.insn	2, 0x2800
 16a:	3c04                	.insn	2, 0x3c04
 16c:	0440                	addi	s0,sp,516
 16e:	02de                	slli	t0,t0,0x17
 170:	02e6                	slli	t0,t0,0x19
 172:	0500                	addi	s0,sp,640
 174:	0188                	addi	a0,sp,192
 176:	0100                	addi	s0,sp,128
 178:	0004                	.insn	2, 0x0004
 17a:	0414                	addi	a3,sp,512
 17c:	5c18                	lw	a4,56(s0)
 17e:	9c04                	.insn	2, 0x9c04
 180:	a202                	.insn	2, 0xa202
 182:	0002                	c.slli	zero,0x0
 184:	8805                	andi	s0,s0,1
 186:	0001                	nop
 188:	0401                	addi	s0,s0,0
 18a:	1200                	addi	s0,sp,288
 18c:	1804                	addi	s1,sp,48
 18e:	0428                	addi	a0,sp,520
 190:	2c2a                	.insn	2, 0x2c2a
 192:	3004                	.insn	2, 0x3004
 194:	044a                	slli	s0,s0,0x12
 196:	4e4c                	lw	a1,28(a2)
 198:	9c04                	.insn	2, 0x9c04
 19a:	a202                	.insn	2, 0xa202
 19c:	0002                	c.slli	zero,0x0
 19e:	8805                	andi	s0,s0,1
 1a0:	0001                	nop
 1a2:	0401                	addi	s0,s0,0
 1a4:	0c00                	addi	s0,sp,528
 1a6:	3004                	.insn	2, 0x3004
 1a8:	0430                	addi	a2,sp,520
 1aa:	3a30                	.insn	2, 0x3a30
 1ac:	0500                	addi	s0,sp,640
 1ae:	0194                	addi	a3,sp,192
 1b0:	0100                	addi	s0,sp,128
 1b2:	0004                	.insn	2, 0x0004
 1b4:	0406                	slli	s0,s0,0x1
 1b6:	160c                	addi	a1,sp,800
 1b8:	2404                	.insn	2, 0x2404
 1ba:	0424                	addi	s1,sp,520
 1bc:	382e                	.insn	2, 0x382e
 1be:	9004                	.insn	2, 0x9004
 1c0:	9602                	jalr	a2
 1c2:	0002                	c.slli	zero,0x0
 1c4:	aa05                	j	2f4 <__DYNAMIC+0x2f4>
 1c6:	0002                	c.slli	zero,0x0
 1c8:	0401                	addi	s0,s0,0
 1ca:	0200                	addi	s0,sp,256
 1cc:	0604                	addi	s1,sp,768
 1ce:	0008                	.insn	2, 0x0008
 1d0:	b405                	j	fffffbf0 <stack+0xfeefeff0>
 1d2:	0002                	c.slli	zero,0x0
 1d4:	0401                	addi	s0,s0,0
 1d6:	0200                	addi	s0,sp,256
 1d8:	0604                	addi	s1,sp,768
 1da:	0008                	.insn	2, 0x0008
 1dc:	3e05                	jal	fffffd0c <stack+0xfeeff10c>
 1de:	04010003          	lb	zero,64(sp)
 1e2:	0a00                	addi	s0,sp,272
 1e4:	1004                	addi	s1,sp,32
 1e6:	0038                	addi	a4,sp,8
 1e8:	4405                	li	s0,1
 1ea:	04010003          	lb	zero,64(sp)
 1ee:	0400                	addi	s0,sp,512
 1f0:	0a04                	addi	s1,sp,272
 1f2:	002a                	c.slli	zero,0xa
 1f4:	00008c07          	.insn	4, 0x8c07
 1f8:	ba01                	j	fffffb08 <stack+0xfeefef08>
 1fa:	0704                	addi	s1,sp,896
 1fc:	02c6                	slli	t0,t0,0x11
 1fe:	0100                	addi	s0,sp,128
 200:	073a                	slli	a4,a4,0xe
 202:	0000                	unimp
 204:	0000                	unimp
 206:	0744                	addi	s1,sp,900
 208:	0000                	unimp
 20a:	0000                	unimp
 20c:	0708                	addi	a0,sp,896
 20e:	0300                	addi	s0,sp,384
 210:	0100                	addi	s0,sp,128
 212:	073e                	slli	a4,a4,0xf
 214:	033e                	slli	t1,t1,0xf
 216:	0100                	addi	s0,sp,128
 218:	073e                	slli	a4,a4,0xf
 21a:	0000                	unimp
 21c:	0000                	unimp
 21e:	074e                	slli	a4,a4,0x13
 220:	037c                	addi	a5,sp,396
 222:	0100                	addi	s0,sp,128
 224:	01a8                	addi	a0,sp,200
 226:	1600                	addi	s0,sp,800
 228:	0000                	unimp
 22a:	0500                	addi	s0,sp,640
 22c:	0400                	addi	s0,sp,512
 22e:	0000                	unimp
 230:	0000                	unimp
 232:	0700                	addi	s0,sp,896
 234:	0424                	addi	s1,sp,520
 236:	0100                	addi	s0,sp,128
 238:	0730                	addi	a2,sp,904
 23a:	0000                	unimp
 23c:	0100                	addi	s0,sp,128
 23e:	018c                	addi	a1,sp,192
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	1008                	addi	a0,sp,32
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
      20:	051f 011d 0000      	.insn	6, 0x011d051f
      26:	000a                	c.slli	zero,0x2
      28:	0000                	unimp
      2a:	001e                	c.slli	zero,0x7
      2c:	0000                	unimp
      2e:	00a8                	addi	a0,sp,72
      30:	0000                	unimp
      32:	00000017          	auipc	zero,0x0
      36:	0102                	c.slli	sp,0x0
      38:	021f 060b 008c      	.insn	6, 0x008c060b021f
      3e:	0000                	unimp
      40:	9900                	.insn	2, 0x9900
      42:	0000                	unimp
      44:	0100                	addi	s0,sp,128
      46:	0112                	slli	sp,sp,0x4
      48:	0000                	unimp
      4a:	4b04                	lw	s1,16(a4)
      4c:	0001                	nop
      4e:	0400                	addi	s0,sp,512
      50:	0152                	slli	sp,sp,0x14
      52:	0000                	unimp
      54:	0002                	c.slli	zero,0x0
      56:	0000                	unimp
      58:	0300                	addi	s0,sp,384
      5a:	0500                	addi	s0,sp,640
      5c:	8c02                	jr	s8
      5e:	0000                	unimp
      60:	0301                	addi	t1,t1,0
      62:	01f4                	addi	a3,sp,204
      64:	0501                	addi	a0,a0,0
      66:	0901                	addi	s2,s2,0
      68:	0000                	unimp
      6a:	0518                	addi	a4,sp,640
      6c:	0905                	addi	s2,s2,1
      6e:	0000                	unimp
      70:	0519                	addi	a0,a0,6
      72:	0905                	addi	s2,s2,1
      74:	0000                	unimp
      76:	017ed703          	lhu	a4,23(t4)
      7a:	0d05                	addi	s10,s10,1
      7c:	0009                	c.nop	2
      7e:	1900                	addi	s0,sp,176
      80:	0505                	addi	a0,a0,1
      82:	0009                	c.nop	2
      84:	0600                	addi	s0,sp,768
      86:	090105bb          	.insn	4, 0x090105bb
      8a:	0006                	c.slli	zero,0x1
      8c:	017edc03          	lhu	s8,23(t4)
      90:	0d05                	addi	s10,s10,1
      92:	0a09                	addi	s4,s4,2
      94:	0600                	addi	s0,sp,768
      96:	090505bf db030000 	.insn	8, 0xdb030000090505bf
      9e:	017e                	slli	sp,sp,0x1f
      a0:	0d05                	addi	s10,s10,1
      a2:	0009                	c.nop	2
      a4:	1c00                	addi	s0,sp,560
      a6:	0505                	addi	a0,a0,1
      a8:	0009                	c.nop	2
      aa:	0600                	addi	s0,sp,768
      ac:	0501                	addi	a0,a0,0
      ae:	090c                	addi	a1,sp,144
      b0:	0006                	c.slli	zero,0x1
      b2:	1806                	slli	a6,a6,0x21
      b4:	0505                	addi	a0,a0,1
      b6:	0009                	c.nop	2
      b8:	0600                	addi	s0,sp,768
      ba:	0501                	addi	a0,a0,0
      bc:	090c                	addi	a1,sp,144
      be:	0008                	.insn	2, 0x0008
      c0:	1806                	slli	a6,a6,0x21
      c2:	0505                	addi	a0,a0,1
      c4:	0009                	c.nop	2
      c6:	0600                	addi	s0,sp,768
      c8:	0501                	addi	a0,a0,0
      ca:	090c                	addi	a1,sp,144
      cc:	0004                	.insn	2, 0x0004
      ce:	0522                	slli	a0,a0,0x8
      d0:	00040913          	mv	s2,s0
      d4:	05017503          	.insn	4, 0x05017503
      d8:	090c                	addi	a1,sp,144
      da:	0004                	.insn	2, 0x0004
      dc:	1806                	slli	a6,a6,0x21
      de:	0505                	addi	a0,a0,1
      e0:	0009                	c.nop	2
      e2:	0600                	addi	s0,sp,768
      e4:	0501                	addi	a0,a0,0
      e6:	090c                	addi	a1,sp,144
      e8:	0004                	.insn	2, 0x0004
      ea:	05b0                	addi	a2,sp,712
      ec:	0901                	addi	s2,s2,0
      ee:	0002                	c.slli	zero,0x0
      f0:	017ef203          	.insn	4, 0x017ef203
      f4:	1305                	addi	t1,t1,-31
      f6:	0409                	addi	s0,s0,2
      f8:	1d00                	addi	s0,sp,688
      fa:	1305                	addi	t1,t1,-31
      fc:	0409                	addi	s0,s0,2
      fe:	0300                	addi	s0,sp,384
     100:	0c05016f          	jal	sp,501c0 <STACK_SIZE+0x4f5c0>
     104:	0409                	addi	s0,s0,2
     106:	0100                	addi	s0,sp,128
     108:	0c05                	addi	s8,s8,1
     10a:	0009                	c.nop	2
     10c:	0600                	addi	s0,sp,768
     10e:	05b6                	slli	a1,a1,0xd
     110:	0905                	addi	s2,s2,1
     112:	0000                	unimp
     114:	05014a03          	lbu	s4,80(sp)
     118:	090d                	addi	s2,s2,3
     11a:	0000                	unimp
     11c:	0905051b          	.insn	4, 0x0905051b
     120:	0000                	unimp
     122:	0518                	addi	a4,sp,640
     124:	0905                	addi	s2,s2,1
     126:	0000                	unimp
     128:	0519                	addi	a0,a0,6
     12a:	0905                	addi	s2,s2,1
     12c:	0000                	unimp
     12e:	0200                	addi	s0,sp,256
     130:	0104                	addi	s1,sp,128
     132:	0501                	addi	a0,a0,0
     134:	0918                	addi	a4,sp,144
     136:	0000                	unimp
     138:	0200                	addi	s0,sp,256
     13a:	0004                	.insn	2, 0x0004
     13c:	0306                	slli	t1,t1,0x1
     13e:	7f9a                	.insn	2, 0x7f9a
     140:	0501                	addi	a0,a0,0
     142:	00020913          	mv	s2,tp
     146:	050d                	addi	a0,a0,3
     148:	090c                	addi	a1,sp,144
     14a:	0002                	c.slli	zero,0x0
     14c:	090e0587          	.insn	4, 0x090e0587
     150:	0002                	c.slli	zero,0x0
     152:	05014803          	lbu	a6,80(sp)
     156:	0908                	addi	a0,sp,144
     158:	0002                	c.slli	zero,0x0
     15a:	0524                	addi	s1,sp,648
     15c:	0908                	addi	a0,sp,144
     15e:	0002                	c.slli	zero,0x0
     160:	05014c03          	lbu	s8,80(sp)
     164:	00040913          	mv	s2,s0
     168:	0501                	addi	a0,a0,0
     16a:	00000913          	li	s2,0
     16e:	0200                	addi	s0,sp,256
     170:	0104                	addi	s1,sp,128
     172:	7706                	.insn	2, 0x7706
     174:	1c05                	addi	s8,s8,-31
     176:	0009                	c.nop	2
     178:	0000                	unimp
     17a:	0402                	c.slli	s0,0x0
     17c:	1800                	addi	s0,sp,48
     17e:	0d05                	addi	s10,s10,1
     180:	0009                	c.nop	2
     182:	0300                	addi	s0,sp,384
     184:	0144                	addi	s1,sp,132
     186:	0f05                	addi	t5,t5,1 # fffe0001 <stack+0xfeedf401>
     188:	0009                	c.nop	2
     18a:	1900                	addi	s0,sp,176
     18c:	0505                	addi	a0,a0,1
     18e:	0809                	addi	a6,a6,2
     190:	0600                	addi	s0,sp,768
     192:	0501                	addi	a0,a0,0
     194:	0908                	addi	a0,sp,144
     196:	0004                	.insn	2, 0x0004
     198:	1b06                	slli	s6,s6,0x21
     19a:	0505                	addi	a0,a0,1
     19c:	0009                	c.nop	2
     19e:	0300                	addi	s0,sp,384
     1a0:	0175                	addi	sp,sp,29
     1a2:	0f05                	addi	t5,t5,1
     1a4:	0009                	c.nop	2
     1a6:	1900                	addi	s0,sp,176
     1a8:	0505                	addi	a0,a0,1
     1aa:	0009                	c.nop	2
     1ac:	0600                	addi	s0,sp,768
     1ae:	0501                	addi	a0,a0,0
     1b0:	0905                	addi	s2,s2,1
     1b2:	0000                	unimp
     1b4:	0306                	slli	t1,t1,0x1
     1b6:	0150                	addi	a2,sp,132
     1b8:	0d05                	addi	s10,s10,1
     1ba:	0009                	c.nop	2
     1bc:	1c00                	addi	s0,sp,560
     1be:	0505                	addi	a0,a0,1
     1c0:	0009                	c.nop	2
     1c2:	1900                	addi	s0,sp,176
     1c4:	0505                	addi	a0,a0,1
     1c6:	0009                	c.nop	2
     1c8:	0600                	addi	s0,sp,768
     1ca:	0501                	addi	a0,a0,0
     1cc:	00040913          	mv	s2,s0
     1d0:	1806                	slli	a6,a6,0x21
     1d2:	0505                	addi	a0,a0,1
     1d4:	0009                	c.nop	2
     1d6:	0600                	addi	s0,sp,768
     1d8:	092e053f 58030004 	.insn	8, 0x58030004092e053f
     1e0:	0501                	addi	a0,a0,0
     1e2:	00040913          	mv	s2,s0
     1e6:	1d06                	slli	s10,s10,0x21
     1e8:	0505                	addi	a0,a0,1
     1ea:	0009                	c.nop	2
     1ec:	0600                	addi	s0,sp,768
     1ee:	0501                	addi	a0,a0,0
     1f0:	0915                	addi	s2,s2,5
     1f2:	0004                	.insn	2, 0x0004
     1f4:	0501                	addi	a0,a0,0
     1f6:	00040913          	mv	s2,s0
     1fa:	0501                	addi	a0,a0,0
     1fc:	00000913          	li	s2,0
     200:	7d06                	.insn	2, 0x7d06
     202:	0d05                	addi	s10,s10,1
     204:	0009                	c.nop	2
     206:	0300                	addi	s0,sp,384
     208:	0148                	addi	a0,sp,132
     20a:	0f05                	addi	t5,t5,1
     20c:	0009                	c.nop	2
     20e:	1900                	addi	s0,sp,176
     210:	0505                	addi	a0,a0,1
     212:	0009                	c.nop	2
     214:	0600                	addi	s0,sp,768
     216:	0501                	addi	a0,a0,0
     218:	0908                	addi	a0,sp,144
     21a:	0004                	.insn	2, 0x0004
     21c:	1b06                	slli	s6,s6,0x21
     21e:	0505                	addi	a0,a0,1
     220:	0009                	c.nop	2
     222:	0600                	addi	s0,sp,768
     224:	0501                	addi	a0,a0,0
     226:	0908                	addi	a0,sp,144
     228:	0004                	.insn	2, 0x0004
     22a:	1b06                	slli	s6,s6,0x21
     22c:	0505                	addi	a0,a0,1
     22e:	0009                	c.nop	2
     230:	0600                	addi	s0,sp,768
     232:	05014103          	lbu	sp,80(sp)
     236:	00040913          	mv	s2,s0
     23a:	1806                	slli	a6,a6,0x21
     23c:	0505                	addi	a0,a0,1
     23e:	0009                	c.nop	2
     240:	0600                	addi	s0,sp,768
     242:	0501                	addi	a0,a0,0
     244:	00040913          	mv	s2,s0
     248:	0555                	addi	a0,a0,21
     24a:	0908                	addi	a0,sp,144
     24c:	0004                	.insn	2, 0x0004
     24e:	0501                	addi	a0,a0,0
     250:	0908                	addi	a0,sp,144
     252:	0000                	unimp
     254:	0306                	slli	t1,t1,0x1
     256:	7fba                	.insn	2, 0x7fba
     258:	0501                	addi	a0,a0,0
     25a:	090d                	addi	s2,s2,3
     25c:	0000                	unimp
     25e:	051c                	addi	a5,sp,640
     260:	0905                	addi	s2,s2,1
     262:	0000                	unimp
     264:	0519                	addi	a0,a0,6
     266:	0905                	addi	s2,s2,1
     268:	0000                	unimp
     26a:	051e                	slli	a0,a0,0x7
     26c:	0905                	addi	s2,s2,1
     26e:	0000                	unimp
     270:	0106                	slli	sp,sp,0x1
     272:	1305                	addi	t1,t1,-31
     274:	0409                	addi	s0,s0,2
     276:	0100                	addi	s0,sp,128
     278:	1305                	addi	t1,t1,-31
     27a:	0009                	c.nop	2
     27c:	0000                	unimp
     27e:	0402                	c.slli	s0,0x0
     280:	05770603          	lb	a2,87(a4)
     284:	092d                	addi	s2,s2,11
     286:	0002                	c.slli	zero,0x0
     288:	0200                	addi	s0,sp,256
     28a:	0104                	addi	s1,sp,128
     28c:	0501                	addi	a0,a0,0
     28e:	091c                	addi	a5,sp,144
     290:	0004                	.insn	2, 0x0004
     292:	0200                	addi	s0,sp,256
     294:	0004                	.insn	2, 0x0004
     296:	0518                	addi	a4,sp,640
     298:	090d                	addi	s2,s2,3
     29a:	0000                	unimp
     29c:	05014403          	lbu	s0,80(sp)
     2a0:	0000090f          	.insn	4, 0x090f
     2a4:	0519                	addi	a0,a0,6
     2a6:	0905                	addi	s2,s2,1
     2a8:	0000                	unimp
     2aa:	0306                	slli	t1,t1,0x1
     2ac:	0152                	slli	sp,sp,0x14
     2ae:	1305                	addi	t1,t1,-31
     2b0:	0409                	addi	s0,s0,2
     2b2:	1500                	addi	s0,sp,672
     2b4:	0e05                	addi	t3,t3,1 # fffe1001 <stack+0xfeee0401>
     2b6:	0409                	addi	s0,s0,2
     2b8:	0600                	addi	s0,sp,768
     2ba:	0905054b          	.insn	4, 0x0905054b
     2be:	0000                	unimp
     2c0:	05017503          	.insn	4, 0x05017503
     2c4:	0000090f          	.insn	4, 0x090f
     2c8:	0519                	addi	a0,a0,6
     2ca:	0905                	addi	s2,s2,1
     2cc:	0000                	unimp
     2ce:	0106                	slli	sp,sp,0x1
     2d0:	0505                	addi	a0,a0,1
     2d2:	0009                	c.nop	2
     2d4:	0600                	addi	s0,sp,768
     2d6:	05015003          	lhu	zero,80(sp)
     2da:	090d                	addi	s2,s2,3
     2dc:	0000                	unimp
     2de:	051c                	addi	a5,sp,640
     2e0:	0905                	addi	s2,s2,1
     2e2:	0000                	unimp
     2e4:	0519                	addi	a0,a0,6
     2e6:	0905                	addi	s2,s2,1
     2e8:	0000                	unimp
     2ea:	0518                	addi	a4,sp,640
     2ec:	0905                	addi	s2,s2,1
     2ee:	0000                	unimp
     2f0:	3f06                	.insn	2, 0x3f06
     2f2:	2e05                	jal	622 <__DYNAMIC+0x622>
     2f4:	0409                	addi	s0,s0,2
     2f6:	0300                	addi	s0,sp,384
     2f8:	0158                	addi	a4,sp,132
     2fa:	1305                	addi	t1,t1,-31
     2fc:	0409                	addi	s0,s0,2
     2fe:	0600                	addi	s0,sp,768
     300:	051d                	addi	a0,a0,7
     302:	0905                	addi	s2,s2,1
     304:	0000                	unimp
     306:	0106                	slli	sp,sp,0x1
     308:	1505                	addi	a0,a0,-31
     30a:	0409                	addi	s0,s0,2
     30c:	0100                	addi	s0,sp,128
     30e:	1305                	addi	t1,t1,-31
     310:	0409                	addi	s0,s0,2
     312:	0100                	addi	s0,sp,128
     314:	1305                	addi	t1,t1,-31
     316:	0009                	c.nop	2
     318:	0600                	addi	s0,sp,768
     31a:	057d                	addi	a0,a0,31
     31c:	090d                	addi	s2,s2,3
     31e:	0000                	unimp
     320:	05014803          	lbu	a6,80(sp)
     324:	0000090f          	.insn	4, 0x090f
     328:	0519                	addi	a0,a0,6
     32a:	0905                	addi	s2,s2,1
     32c:	0000                	unimp
     32e:	0106                	slli	sp,sp,0x1
     330:	0805                	addi	a6,a6,1
     332:	0409                	addi	s0,s0,2
     334:	0100                	addi	s0,sp,128
     336:	0805                	addi	a6,a6,1
     338:	0009                	c.nop	2
     33a:	0600                	addi	s0,sp,768
     33c:	05014203          	lbu	tp,80(sp)
     340:	090d                	addi	s2,s2,3
     342:	0000                	unimp
     344:	051c                	addi	a5,sp,640
     346:	0905                	addi	s2,s2,1
     348:	0000                	unimp
     34a:	0519                	addi	a0,a0,6
     34c:	0905                	addi	s2,s2,1
     34e:	0000                	unimp
     350:	0106                	slli	sp,sp,0x1
     352:	1305                	addi	t1,t1,-31
     354:	0409                	addi	s0,s0,2
     356:	0600                	addi	s0,sp,768
     358:	0518                	addi	a4,sp,640
     35a:	0905                	addi	s2,s2,1
     35c:	0000                	unimp
     35e:	0106                	slli	sp,sp,0x1
     360:	1305                	addi	t1,t1,-31
     362:	0409                	addi	s0,s0,2
     364:	0600                	addi	s0,sp,768
     366:	051d                	addi	a0,a0,7
     368:	0905                	addi	s2,s2,1
     36a:	0000                	unimp
     36c:	0106                	slli	sp,sp,0x1
     36e:	1305                	addi	t1,t1,-31
     370:	0409                	addi	s0,s0,2
     372:	0100                	addi	s0,sp,128
     374:	1305                	addi	t1,t1,-31
     376:	0009                	c.nop	2
     378:	0000                	unimp
     37a:	0402                	c.slli	s0,0x0
     37c:	05770603          	lb	a2,87(a4)
     380:	092d                	addi	s2,s2,11
     382:	0002                	c.slli	zero,0x0
     384:	0200                	addi	s0,sp,256
     386:	0104                	addi	s1,sp,128
     388:	0501                	addi	a0,a0,0
     38a:	091c                	addi	a5,sp,144
     38c:	0004                	.insn	2, 0x0004
     38e:	0200                	addi	s0,sp,256
     390:	0204                	addi	s1,sp,256
     392:	0516                	slli	a0,a0,0x5
     394:	0929                	addi	s2,s2,10
     396:	0002                	c.slli	zero,0x0
     398:	0200                	addi	s0,sp,256
     39a:	0104                	addi	s1,sp,128
     39c:	0501                	addi	a0,a0,0
     39e:	0918                	addi	a4,sp,144
     3a0:	0006                	c.slli	zero,0x1
     3a2:	0106                	slli	sp,sp,0x1
     3a4:	1805                	addi	a6,a6,-31
     3a6:	0009                	c.nop	2
     3a8:	0000                	unimp
     3aa:	0402                	c.slli	s0,0x0
     3ac:	0600                	addi	s0,sp,768
     3ae:	0548                	addi	a0,sp,644
     3b0:	0905                	addi	s2,s2,1
     3b2:	0000                	unimp
     3b4:	0106                	slli	sp,sp,0x1
     3b6:	0d05                	addi	s10,s10,1
     3b8:	0409                	addi	s0,s0,2
     3ba:	0100                	addi	s0,sp,128
     3bc:	0d05                	addi	s10,s10,1
     3be:	0609                	addi	a2,a2,2
     3c0:	0600                	addi	s0,sp,768
     3c2:	0519                	addi	a0,a0,6
     3c4:	0905                	addi	s2,s2,1
     3c6:	0000                	unimp
     3c8:	0106                	slli	sp,sp,0x1
     3ca:	0a05                	addi	s4,s4,1
     3cc:	0609                	addi	a2,a2,2
     3ce:	0100                	addi	s0,sp,128
     3d0:	1105                	addi	sp,sp,-31
     3d2:	0209                	addi	tp,tp,2 # fffe6002 <stack+0xfeee5402>
     3d4:	0100                	addi	s0,sp,128
     3d6:	0805                	addi	a6,a6,1
     3d8:	0409                	addi	s0,s0,2
     3da:	0600                	addi	s0,sp,768
     3dc:	017efd03          	.insn	4, 0x017efd03
     3e0:	2305                	jal	900 <__DYNAMIC+0x900>
     3e2:	0009                	c.nop	2
     3e4:	0600                	addi	s0,sp,768
     3e6:	0501                	addi	a0,a0,0
     3e8:	090d                	addi	s2,s2,3
     3ea:	0004                	.insn	2, 0x0004
     3ec:	0501                	addi	a0,a0,0
     3ee:	00080923          	sb	zero,18(a6)
     3f2:	0501                	addi	a0,a0,0
     3f4:	0914                	addi	a3,sp,144
     3f6:	0004                	.insn	2, 0x0004
     3f8:	0501                	addi	a0,a0,0
     3fa:	00060923          	sb	zero,18(a2)
     3fe:	0518                	addi	a4,sp,640
     400:	090c                	addi	a1,sp,144
     402:	0004                	.insn	2, 0x0004
     404:	0106                	slli	sp,sp,0x1
     406:	0905                	addi	s2,s2,1
     408:	0009                	c.nop	2
     40a:	1a00                	addi	s0,sp,304
     40c:	0905                	addi	s2,s2,1
     40e:	0009                	c.nop	2
     410:	1300                	addi	s0,sp,416
     412:	2305                	jal	932 <__DYNAMIC+0x932>
     414:	0009                	c.nop	2
     416:	0600                	addi	s0,sp,768
     418:	0501                	addi	a0,a0,0
     41a:	090d                	addi	s2,s2,3
     41c:	0002                	c.slli	zero,0x0
     41e:	0518                	addi	a4,sp,640
     420:	090c                	addi	a1,sp,144
     422:	0002                	c.slli	zero,0x0
     424:	0516                	slli	a0,a0,0x5
     426:	0914                	addi	a3,sp,144
     428:	0002                	c.slli	zero,0x0
     42a:	0501                	addi	a0,a0,0
     42c:	00080923          	sb	zero,18(a6)
     430:	0911050f          	.insn	4, 0x0911050f
     434:	0004                	.insn	2, 0x0004
     436:	0518                	addi	a4,sp,640
     438:	0915                	addi	s2,s2,5
     43a:	0004                	.insn	2, 0x0004
     43c:	0516                	slli	a0,a0,0x5
     43e:	0911                	addi	s2,s2,4
     440:	0002                	c.slli	zero,0x0
     442:	0518                	addi	a4,sp,640
     444:	0915                	addi	s2,s2,5
     446:	0002                	c.slli	zero,0x0
     448:	0558                	addi	a4,sp,644
     44a:	0908                	addi	a0,sp,144
     44c:	0002                	c.slli	zero,0x0
     44e:	0908051b          	.insn	4, 0x0908051b
     452:	0002                	c.slli	zero,0x0
     454:	0908051b          	.insn	4, 0x0908051b
     458:	0002                	c.slli	zero,0x0
     45a:	0200                	addi	s0,sp,256
     45c:	0104                	addi	s1,sp,128
     45e:	053a                	slli	a0,a0,0xe
     460:	0918                	addi	a4,sp,144
     462:	0002                	c.slli	zero,0x0
     464:	1806                	slli	a6,a6,0x21
     466:	1c05                	addi	s8,s8,-31
     468:	0009                	c.nop	2
     46a:	0000                	unimp
     46c:	0402                	c.slli	s0,0x0
     46e:	0600                	addi	s0,sp,768
     470:	017f9a03          	lh	s4,23(t6)
     474:	2305                	jal	994 <__DYNAMIC+0x994>
     476:	0409                	addi	s0,s0,2
     478:	0100                	addi	s0,sp,128
     47a:	2305                	jal	99a <__DYNAMIC+0x99a>
     47c:	0009                	c.nop	2
     47e:	5500                	lw	s0,40(a0)
     480:	0805                	addi	a6,a6,1
     482:	0409                	addi	s0,s0,2
     484:	1f00                	addi	s0,sp,944
     486:	0c05                	addi	s8,s8,1
     488:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     48a:	1300                	addi	s0,sp,416
     48c:	0805                	addi	a6,a6,1
     48e:	0409                	addi	s0,s0,2
     490:	0100                	addi	s0,sp,128
     492:	0805                	addi	a6,a6,1
     494:	0009                	c.nop	2
     496:	0600                	addi	s0,sp,768
     498:	0542                	slli	a0,a0,0x10
     49a:	090d                	addi	s2,s2,3
     49c:	0000                	unimp
     49e:	1806                	slli	a6,a6,0x21
     4a0:	1705                	addi	a4,a4,-31
     4a2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     4a4:	0100                	addi	s0,sp,128
     4a6:	1705                	addi	a4,a4,-31
     4a8:	0409                	addi	s0,s0,2
     4aa:	0000                	unimp
     4ac:	0402                	c.slli	s0,0x0
     4ae:	0f01                	addi	t5,t5,0
     4b0:	1c05                	addi	s8,s8,-31
     4b2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     4b4:	0000                	unimp
     4b6:	0402                	c.slli	s0,0x0
     4b8:	1f00                	addi	s0,sp,944
     4ba:	1705                	addi	a4,a4,-31
     4bc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     4be:	0100                	addi	s0,sp,128
     4c0:	1705                	addi	a4,a4,-31
     4c2:	0009                	c.nop	2
     4c4:	0000                	unimp
     4c6:	0402                	c.slli	s0,0x0
     4c8:	0602                	c.slli	a2,0x0
     4ca:	092d050f          	.insn	4, 0x092d050f
     4ce:	0000                	unimp
     4d0:	0200                	addi	s0,sp,256
     4d2:	0104                	addi	s1,sp,128
     4d4:	0501                	addi	a0,a0,0
     4d6:	091c                	addi	a5,sp,144
     4d8:	0004                	.insn	2, 0x0004
     4da:	0200                	addi	s0,sp,256
     4dc:	0004                	.insn	2, 0x0004
     4de:	0518                	addi	a4,sp,640
     4e0:	090d                	addi	s2,s2,3
     4e2:	0000                	unimp
     4e4:	0518                	addi	a4,sp,640
     4e6:	090d                	addi	s2,s2,3
     4e8:	0000                	unimp
     4ea:	0519                	addi	a0,a0,6
     4ec:	090d                	addi	s2,s2,3
     4ee:	0000                	unimp
     4f0:	017f8a03          	lb	s4,23(t6)
     4f4:	1005                	c.nop	-31
     4f6:	0009                	c.nop	2
     4f8:	1900                	addi	s0,sp,176
     4fa:	0505                	addi	a0,a0,1
     4fc:	0009                	c.nop	2
     4fe:	5f00                	lw	s0,56(a4)
     500:	0505                	addi	a0,a0,1
     502:	0009                	c.nop	2
     504:	1b00                	addi	s0,sp,432
     506:	0505                	addi	a0,a0,1
     508:	0009                	c.nop	2
     50a:	0600                	addi	s0,sp,768
     50c:	017fb403          	.insn	4, 0x017fb403
     510:	0e05                	addi	t3,t3,1
     512:	0409                	addi	s0,s0,2
     514:	0600                	addi	s0,sp,768
     516:	0519                	addi	a0,a0,6
     518:	0905                	addi	s2,s2,1
     51a:	0000                	unimp
     51c:	0106                	slli	sp,sp,0x1
     51e:	1105                	addi	sp,sp,-31
     520:	0409                	addi	s0,s0,2
     522:	0600                	addi	s0,sp,768
     524:	0518                	addi	a4,sp,640
     526:	0905                	addi	s2,s2,1
     528:	0000                	unimp
     52a:	0106                	slli	sp,sp,0x1
     52c:	1505                	addi	a0,a0,-31
     52e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     530:	0100                	addi	s0,sp,128
     532:	1505                	addi	a0,a0,-31
     534:	0009                	c.nop	2
     536:	0600                	addi	s0,sp,768
     538:	0589                	addi	a1,a1,2
     53a:	090d                	addi	s2,s2,3
     53c:	0000                	unimp
     53e:	05014903          	lbu	s2,80(sp)
     542:	0910                	addi	a2,sp,144
     544:	0000                	unimp
     546:	0905051b          	.insn	4, 0x0905051b
     54a:	0000                	unimp
     54c:	0519                	addi	a0,a0,6
     54e:	0905                	addi	s2,s2,1
     550:	0000                	unimp
     552:	1c06                	slli	s8,s8,0x21
     554:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     556:	0409                	addi	s0,s0,2
     558:	1200                	addi	s0,sp,288
     55a:	0805                	addi	a6,a6,1
     55c:	0409                	addi	s0,s0,2
     55e:	0000                	unimp
     560:	0402                	c.slli	s0,0x0
     562:	1501                	addi	a0,a0,-32
     564:	0d05                	addi	s10,s10,1
     566:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     568:	0100                	addi	s0,sp,128
     56a:	0d05                	addi	s10,s10,1
     56c:	0009                	c.nop	2
     56e:	0000                	unimp
     570:	0402                	c.slli	s0,0x0
     572:	0600                	addi	s0,sp,768
     574:	054c                	addi	a1,sp,644
     576:	090d                	addi	s2,s2,3
     578:	0000                	unimp
     57a:	1806                	slli	a6,a6,0x21
     57c:	1705                	addi	a4,a4,-31
     57e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     580:	0100                	addi	s0,sp,128
     582:	1705                	addi	a4,a4,-31
     584:	0409                	addi	s0,s0,2
     586:	0000                	unimp
     588:	0402                	c.slli	s0,0x0
     58a:	0f01                	addi	t5,t5,0
     58c:	1c05                	addi	s8,s8,-31
     58e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     590:	0000                	unimp
     592:	0402                	c.slli	s0,0x0
     594:	1f00                	addi	s0,sp,944
     596:	1705                	addi	a4,a4,-31
     598:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     59a:	0100                	addi	s0,sp,128
     59c:	1705                	addi	a4,a4,-31
     59e:	0009                	c.nop	2
     5a0:	0000                	unimp
     5a2:	0402                	c.slli	s0,0x0
     5a4:	0602                	c.slli	a2,0x0
     5a6:	092d050f          	.insn	4, 0x092d050f
     5aa:	0000                	unimp
     5ac:	0200                	addi	s0,sp,256
     5ae:	0104                	addi	s1,sp,128
     5b0:	0501                	addi	a0,a0,0
     5b2:	091c                	addi	a5,sp,144
     5b4:	0004                	.insn	2, 0x0004
     5b6:	0200                	addi	s0,sp,256
     5b8:	0204                	addi	s1,sp,256
     5ba:	0516                	slli	a0,a0,0x5
     5bc:	0929                	addi	s2,s2,10
     5be:	0002                	c.slli	zero,0x0
     5c0:	0200                	addi	s0,sp,256
     5c2:	0104                	addi	s1,sp,128
     5c4:	0501                	addi	a0,a0,0
     5c6:	0918                	addi	a4,sp,144
     5c8:	0008                	.insn	2, 0x0008
     5ca:	0200                	addi	s0,sp,256
     5cc:	0004                	.insn	2, 0x0004
     5ce:	0525                	addi	a0,a0,9
     5d0:	0905                	addi	s2,s2,1
     5d2:	0000                	unimp
     5d4:	0106                	slli	sp,sp,0x1
     5d6:	0505                	addi	a0,a0,1
     5d8:	0009                	c.nop	2
     5da:	0600                	addi	s0,sp,768
     5dc:	09050533          	.insn	4, 0x09050533
     5e0:	0000                	unimp
     5e2:	017ec403          	lbu	s0,23(t4)
     5e6:	0d05                	addi	s10,s10,1
     5e8:	0009                	c.nop	2
     5ea:	1900                	addi	s0,sp,176
     5ec:	0505                	addi	a0,a0,1
     5ee:	0009                	c.nop	2
     5f0:	0600                	addi	s0,sp,768
     5f2:	0501                	addi	a0,a0,0
     5f4:	090d                	addi	s2,s2,3
     5f6:	0008                	.insn	2, 0x0008
     5f8:	d306                	sw	ra,164(sp)
     5fa:	0505                	addi	a0,a0,1
     5fc:	0009                	c.nop	2
     5fe:	0600                	addi	s0,sp,768
     600:	0501                	addi	a0,a0,0
     602:	0905                	addi	s2,s2,1
     604:	0000                	unimp
     606:	0518                	addi	a4,sp,640
     608:	0901                	addi	s2,s2,0
     60a:	0008                	.insn	2, 0x0008
     60c:	017ed603          	lhu	a2,23(t4)
     610:	0e05                	addi	t3,t3,1
     612:	0409                	addi	s0,s0,2
     614:	0100                	addi	s0,sp,128
     616:	0e05                	addi	t3,t3,1
     618:	0009                	c.nop	2
     61a:	0600                	addi	s0,sp,768
     61c:	0512                	slli	a0,a0,0x4
     61e:	090d                	addi	s2,s2,3
     620:	0000                	unimp
     622:	051c                	addi	a5,sp,640
     624:	0905                	addi	s2,s2,1
     626:	0000                	unimp
     628:	0519                	addi	a0,a0,6
     62a:	0905                	addi	s2,s2,1
     62c:	0000                	unimp
     62e:	0106                	slli	sp,sp,0x1
     630:	1305                	addi	t1,t1,-31
     632:	0409                	addi	s0,s0,2
     634:	0600                	addi	s0,sp,768
     636:	0518                	addi	a4,sp,640
     638:	0905                	addi	s2,s2,1
     63a:	0000                	unimp
     63c:	0106                	slli	sp,sp,0x1
     63e:	1305                	addi	t1,t1,-31
     640:	0409                	addi	s0,s0,2
     642:	0600                	addi	s0,sp,768
     644:	051d                	addi	a0,a0,7
     646:	0905                	addi	s2,s2,1
     648:	0000                	unimp
     64a:	0106                	slli	sp,sp,0x1
     64c:	1305                	addi	t1,t1,-31
     64e:	0409                	addi	s0,s0,2
     650:	0100                	addi	s0,sp,128
     652:	1305                	addi	t1,t1,-31
     654:	0009                	c.nop	2
     656:	0600                	addi	s0,sp,768
     658:	057d                	addi	a0,a0,31
     65a:	090d                	addi	s2,s2,3
     65c:	0000                	unimp
     65e:	05014803          	lbu	a6,80(sp)
     662:	0000090f          	.insn	4, 0x090f
     666:	0519                	addi	a0,a0,6
     668:	0905                	addi	s2,s2,1
     66a:	0000                	unimp
     66c:	0306                	slli	t1,t1,0x1
     66e:	0149                	addi	sp,sp,18
     670:	1305                	addi	t1,t1,-31
     672:	0409                	addi	s0,s0,2
     674:	4e00                	lw	s0,24(a2)
     676:	0805                	addi	a6,a6,1
     678:	0409                	addi	s0,s0,2
     67a:	0300                	addi	s0,sp,384
     67c:	014a                	slli	sp,sp,0x12
     67e:	1305                	addi	t1,t1,-31
     680:	0409                	addi	s0,s0,2
     682:	4d00                	lw	s0,24(a0)
     684:	0805                	addi	a6,a6,1
     686:	0409                	addi	s0,s0,2
     688:	0100                	addi	s0,sp,128
     68a:	0805                	addi	a6,a6,1
     68c:	0009                	c.nop	2
     68e:	0600                	addi	s0,sp,768
     690:	05014203          	lbu	tp,80(sp)
     694:	090d                	addi	s2,s2,3
     696:	0000                	unimp
     698:	051c                	addi	a5,sp,640
     69a:	0905                	addi	s2,s2,1
     69c:	0000                	unimp
     69e:	0519                	addi	a0,a0,6
     6a0:	0905                	addi	s2,s2,1
     6a2:	0000                	unimp
     6a4:	0518                	addi	a4,sp,640
     6a6:	0905                	addi	s2,s2,1
     6a8:	0000                	unimp
     6aa:	051d                	addi	a0,a0,7
     6ac:	0905                	addi	s2,s2,1
     6ae:	0000                	unimp
     6b0:	0106                	slli	sp,sp,0x1
     6b2:	1305                	addi	t1,t1,-31
     6b4:	0409                	addi	s0,s0,2
     6b6:	0100                	addi	s0,sp,128
     6b8:	1305                	addi	t1,t1,-31
     6ba:	0009                	c.nop	2
     6bc:	0000                	unimp
     6be:	0402                	c.slli	s0,0x0
     6c0:	05770603          	lb	a2,87(a4)
     6c4:	092d                	addi	s2,s2,11
     6c6:	0002                	c.slli	zero,0x0
     6c8:	0200                	addi	s0,sp,256
     6ca:	0104                	addi	s1,sp,128
     6cc:	0501                	addi	a0,a0,0
     6ce:	091c                	addi	a5,sp,144
     6d0:	0000                	unimp
     6d2:	0200                	addi	s0,sp,256
     6d4:	0004                	.insn	2, 0x0004
     6d6:	0518                	addi	a4,sp,640
     6d8:	090d                	addi	s2,s2,3
     6da:	0000                	unimp
     6dc:	05014403          	lbu	s0,80(sp)
     6e0:	0000090f          	.insn	4, 0x090f
     6e4:	0519                	addi	a0,a0,6
     6e6:	0905                	addi	s2,s2,1
     6e8:	0000                	unimp
     6ea:	0200                	addi	s0,sp,256
     6ec:	0104                	addi	s1,sp,128
     6ee:	5006                	.insn	2, 0x5006
     6f0:	1c05                	addi	s8,s8,-31
     6f2:	0409                	addi	s0,s0,2
     6f4:	0000                	unimp
     6f6:	0402                	c.slli	s0,0x0
     6f8:	0602                	c.slli	a2,0x0
     6fa:	0516                	slli	a0,a0,0x5
     6fc:	0929                	addi	s2,s2,10
     6fe:	0002                	c.slli	zero,0x0
     700:	0200                	addi	s0,sp,256
     702:	0104                	addi	s1,sp,128
     704:	0501                	addi	a0,a0,0
     706:	0918                	addi	a4,sp,144
     708:	0008                	.insn	2, 0x0008
     70a:	0200                	addi	s0,sp,256
     70c:	0004                	.insn	2, 0x0004
     70e:	017f9303          	lh	t1,23(t6)
     712:	0d05                	addi	s10,s10,1
     714:	0009                	c.nop	2
     716:	1c00                	addi	s0,sp,560
     718:	0505                	addi	a0,a0,1
     71a:	0009                	c.nop	2
     71c:	1900                	addi	s0,sp,176
     71e:	0505                	addi	a0,a0,1
     720:	0009                	c.nop	2
     722:	0600                	addi	s0,sp,768
     724:	0501                	addi	a0,a0,0
     726:	00040913          	mv	s2,s0
     72a:	1806                	slli	a6,a6,0x21
     72c:	0505                	addi	a0,a0,1
     72e:	0009                	c.nop	2
     730:	0600                	addi	s0,sp,768
     732:	0501                	addi	a0,a0,0
     734:	00040913          	mv	s2,s0
     738:	1d06                	slli	s10,s10,0x21
     73a:	0505                	addi	a0,a0,1
     73c:	0009                	c.nop	2
     73e:	0000                	unimp
     740:	0402                	c.slli	s0,0x0
     742:	05770603          	lb	a2,87(a4)
     746:	092d                	addi	s2,s2,11
     748:	0002                	c.slli	zero,0x0
     74a:	0200                	addi	s0,sp,256
     74c:	0004                	.insn	2, 0x0004
     74e:	05014203          	lbu	tp,80(sp)
     752:	092e                	slli	s2,s2,0xb
     754:	0004                	.insn	2, 0x0004
     756:	05015e03          	lhu	t3,80(sp)
     75a:	00040913          	mv	s2,s0
     75e:	0501                	addi	a0,a0,0
     760:	00000913          	li	s2,0
     764:	0200                	addi	s0,sp,256
     766:	0304                	addi	s1,sp,384
     768:	7706                	.insn	2, 0x7706
     76a:	2d05                	jal	d9a <STACK_SIZE+0x19a>
     76c:	0009                	c.nop	2
     76e:	0000                	unimp
     770:	0402                	c.slli	s0,0x0
     772:	0101                	addi	sp,sp,0
     774:	1c05                	addi	s8,s8,-31
     776:	0009                	c.nop	2
     778:	0000                	unimp
     77a:	0402                	c.slli	s0,0x0
     77c:	1800                	addi	s0,sp,48
     77e:	0d05                	addi	s10,s10,1
     780:	0009                	c.nop	2
     782:	0300                	addi	s0,sp,384
     784:	0144                	addi	s1,sp,132
     786:	0f05                	addi	t5,t5,1
     788:	0009                	c.nop	2
     78a:	1900                	addi	s0,sp,176
     78c:	0505                	addi	a0,a0,1
     78e:	0009                	c.nop	2
     790:	0600                	addi	s0,sp,768
     792:	05015003          	lhu	zero,80(sp)
     796:	090e                	slli	s2,s2,0x3
     798:	0004                	.insn	2, 0x0004
     79a:	4b06                	lw	s6,64(sp)
     79c:	0505                	addi	a0,a0,1
     79e:	0009                	c.nop	2
     7a0:	0300                	addi	s0,sp,384
     7a2:	0175                	addi	sp,sp,29
     7a4:	0f05                	addi	t5,t5,1
     7a6:	0009                	c.nop	2
     7a8:	1900                	addi	s0,sp,176
     7aa:	0505                	addi	a0,a0,1
     7ac:	0009                	c.nop	2
     7ae:	0600                	addi	s0,sp,768
     7b0:	0501                	addi	a0,a0,0
     7b2:	0905                	addi	s2,s2,1
     7b4:	0000                	unimp
     7b6:	0306                	slli	t1,t1,0x1
     7b8:	0150                	addi	a2,sp,132
     7ba:	0d05                	addi	s10,s10,1
     7bc:	0009                	c.nop	2
     7be:	1c00                	addi	s0,sp,560
     7c0:	0505                	addi	a0,a0,1
     7c2:	0009                	c.nop	2
     7c4:	1900                	addi	s0,sp,176
     7c6:	0505                	addi	a0,a0,1
     7c8:	0009                	c.nop	2
     7ca:	0600                	addi	s0,sp,768
     7cc:	051e                	slli	a0,a0,0x7
     7ce:	0915                	addi	s2,s2,5
     7d0:	0004                	.insn	2, 0x0004
     7d2:	0200                	addi	s0,sp,256
     7d4:	0104                	addi	s1,sp,128
     7d6:	091c0577          	.insn	4, 0x091c0577
     7da:	0004                	.insn	2, 0x0004
     7dc:	0200                	addi	s0,sp,256
     7de:	0004                	.insn	2, 0x0004
     7e0:	017f9903          	lh	s2,23(t6)
     7e4:	1305                	addi	t1,t1,-31
     7e6:	0409                	addi	s0,s0,2
     7e8:	0600                	addi	s0,sp,768
     7ea:	0518                	addi	a4,sp,640
     7ec:	0905                	addi	s2,s2,1
     7ee:	0000                	unimp
     7f0:	0106                	slli	sp,sp,0x1
     7f2:	1305                	addi	t1,t1,-31
     7f4:	0409                	addi	s0,s0,2
     7f6:	0600                	addi	s0,sp,768
     7f8:	051d                	addi	a0,a0,7
     7fa:	0905                	addi	s2,s2,1
     7fc:	0000                	unimp
     7fe:	0106                	slli	sp,sp,0x1
     800:	1305                	addi	t1,t1,-31
     802:	0409                	addi	s0,s0,2
     804:	0100                	addi	s0,sp,128
     806:	1305                	addi	t1,t1,-31
     808:	0009                	c.nop	2
     80a:	0600                	addi	s0,sp,768
     80c:	057d                	addi	a0,a0,31
     80e:	090d                	addi	s2,s2,3
     810:	0000                	unimp
     812:	05014803          	lbu	a6,80(sp)
     816:	0000090f          	.insn	4, 0x090f
     81a:	0519                	addi	a0,a0,6
     81c:	0905                	addi	s2,s2,1
     81e:	0000                	unimp
     820:	0106                	slli	sp,sp,0x1
     822:	0805                	addi	a6,a6,1
     824:	0409                	addi	s0,s0,2
     826:	0100                	addi	s0,sp,128
     828:	0805                	addi	a6,a6,1
     82a:	0009                	c.nop	2
     82c:	0600                	addi	s0,sp,768
     82e:	05014203          	lbu	tp,80(sp)
     832:	090d                	addi	s2,s2,3
     834:	0000                	unimp
     836:	051c                	addi	a5,sp,640
     838:	0905                	addi	s2,s2,1
     83a:	0000                	unimp
     83c:	0519                	addi	a0,a0,6
     83e:	0905                	addi	s2,s2,1
     840:	0000                	unimp
     842:	0106                	slli	sp,sp,0x1
     844:	1305                	addi	t1,t1,-31
     846:	0409                	addi	s0,s0,2
     848:	0600                	addi	s0,sp,768
     84a:	0518                	addi	a4,sp,640
     84c:	0905                	addi	s2,s2,1
     84e:	0000                	unimp
     850:	0106                	slli	sp,sp,0x1
     852:	1305                	addi	t1,t1,-31
     854:	0409                	addi	s0,s0,2
     856:	0600                	addi	s0,sp,768
     858:	051d                	addi	a0,a0,7
     85a:	0905                	addi	s2,s2,1
     85c:	0000                	unimp
     85e:	0106                	slli	sp,sp,0x1
     860:	1305                	addi	t1,t1,-31
     862:	0409                	addi	s0,s0,2
     864:	0100                	addi	s0,sp,128
     866:	1305                	addi	t1,t1,-31
     868:	0009                	c.nop	2
     86a:	0000                	unimp
     86c:	0402                	c.slli	s0,0x0
     86e:	05770603          	lb	a2,87(a4)
     872:	092d                	addi	s2,s2,11
     874:	0002                	c.slli	zero,0x0
     876:	0200                	addi	s0,sp,256
     878:	0104                	addi	s1,sp,128
     87a:	0501                	addi	a0,a0,0
     87c:	091c                	addi	a5,sp,144
     87e:	0006                	c.slli	zero,0x1
     880:	0200                	addi	s0,sp,256
     882:	0004                	.insn	2, 0x0004
     884:	017f9203          	lh	tp,23(t6)
     888:	0d05                	addi	s10,s10,1
     88a:	0009                	c.nop	2
     88c:	1c00                	addi	s0,sp,560
     88e:	0505                	addi	a0,a0,1
     890:	0009                	c.nop	2
     892:	1900                	addi	s0,sp,176
     894:	0505                	addi	a0,a0,1
     896:	0009                	c.nop	2
     898:	1e00                	addi	s0,sp,816
     89a:	0505                	addi	a0,a0,1
     89c:	0009                	c.nop	2
     89e:	0000                	unimp
     8a0:	0402                	c.slli	s0,0x0
     8a2:	05770603          	lb	a2,87(a4)
     8a6:	092d                	addi	s2,s2,11
     8a8:	0002                	c.slli	zero,0x0
     8aa:	0200                	addi	s0,sp,256
     8ac:	0004                	.insn	2, 0x0004
     8ae:	05014203          	lbu	tp,80(sp)
     8b2:	092e                	slli	s2,s2,0xb
     8b4:	0004                	.insn	2, 0x0004
     8b6:	05015e03          	lhu	t3,80(sp)
     8ba:	00040913          	mv	s2,s0
     8be:	0501                	addi	a0,a0,0
     8c0:	00000913          	li	s2,0
     8c4:	0200                	addi	s0,sp,256
     8c6:	0304                	addi	s1,sp,384
     8c8:	7706                	.insn	2, 0x7706
     8ca:	2d05                	jal	efa <STACK_SIZE+0x2fa>
     8cc:	0009                	c.nop	2
     8ce:	0000                	unimp
     8d0:	0402                	c.slli	s0,0x0
     8d2:	0101                	addi	sp,sp,0
     8d4:	1c05                	addi	s8,s8,-31
     8d6:	0009                	c.nop	2
     8d8:	0000                	unimp
     8da:	0402                	c.slli	s0,0x0
     8dc:	1800                	addi	s0,sp,48
     8de:	0d05                	addi	s10,s10,1
     8e0:	0009                	c.nop	2
     8e2:	0300                	addi	s0,sp,384
     8e4:	0144                	addi	s1,sp,132
     8e6:	0f05                	addi	t5,t5,1
     8e8:	0009                	c.nop	2
     8ea:	1900                	addi	s0,sp,176
     8ec:	0505                	addi	a0,a0,1
     8ee:	0009                	c.nop	2
     8f0:	0600                	addi	s0,sp,768
     8f2:	05015003          	lhu	zero,80(sp)
     8f6:	090e                	slli	s2,s2,0x3
     8f8:	0004                	.insn	2, 0x0004
     8fa:	4b06                	lw	s6,64(sp)
     8fc:	0505                	addi	a0,a0,1
     8fe:	0009                	c.nop	2
     900:	0300                	addi	s0,sp,384
     902:	0175                	addi	sp,sp,29
     904:	0f05                	addi	t5,t5,1
     906:	0009                	c.nop	2
     908:	1900                	addi	s0,sp,176
     90a:	0505                	addi	a0,a0,1
     90c:	0009                	c.nop	2
     90e:	0600                	addi	s0,sp,768
     910:	0501                	addi	a0,a0,0
     912:	0905                	addi	s2,s2,1
     914:	0000                	unimp
     916:	0306                	slli	t1,t1,0x1
     918:	0150                	addi	a2,sp,132
     91a:	0d05                	addi	s10,s10,1
     91c:	0009                	c.nop	2
     91e:	1c00                	addi	s0,sp,560
     920:	0505                	addi	a0,a0,1
     922:	0009                	c.nop	2
     924:	1900                	addi	s0,sp,176
     926:	0505                	addi	a0,a0,1
     928:	0009                	c.nop	2
     92a:	0600                	addi	s0,sp,768
     92c:	051e                	slli	a0,a0,0x7
     92e:	0915                	addi	s2,s2,5
     930:	0004                	.insn	2, 0x0004
     932:	0200                	addi	s0,sp,256
     934:	0104                	addi	s1,sp,128
     936:	091c0577          	.insn	4, 0x091c0577
     93a:	0004                	.insn	2, 0x0004
     93c:	0200                	addi	s0,sp,256
     93e:	0004                	.insn	2, 0x0004
     940:	017f9903          	lh	s2,23(t6)
     944:	1305                	addi	t1,t1,-31
     946:	0409                	addi	s0,s0,2
     948:	0600                	addi	s0,sp,768
     94a:	0518                	addi	a4,sp,640
     94c:	0905                	addi	s2,s2,1
     94e:	0000                	unimp
     950:	0106                	slli	sp,sp,0x1
     952:	1305                	addi	t1,t1,-31
     954:	0409                	addi	s0,s0,2
     956:	0600                	addi	s0,sp,768
     958:	051d                	addi	a0,a0,7
     95a:	0905                	addi	s2,s2,1
     95c:	0000                	unimp
     95e:	0106                	slli	sp,sp,0x1
     960:	1305                	addi	t1,t1,-31
     962:	0409                	addi	s0,s0,2
     964:	0100                	addi	s0,sp,128
     966:	1305                	addi	t1,t1,-31
     968:	0009                	c.nop	2
     96a:	0600                	addi	s0,sp,768
     96c:	057d                	addi	a0,a0,31
     96e:	090d                	addi	s2,s2,3
     970:	0000                	unimp
     972:	05014803          	lbu	a6,80(sp)
     976:	0000090f          	.insn	4, 0x090f
     97a:	0519                	addi	a0,a0,6
     97c:	0905                	addi	s2,s2,1
     97e:	0000                	unimp
     980:	0106                	slli	sp,sp,0x1
     982:	0805                	addi	a6,a6,1
     984:	0409                	addi	s0,s0,2
     986:	0100                	addi	s0,sp,128
     988:	0805                	addi	a6,a6,1
     98a:	0009                	c.nop	2
     98c:	0600                	addi	s0,sp,768
     98e:	05014203          	lbu	tp,80(sp)
     992:	090d                	addi	s2,s2,3
     994:	0000                	unimp
     996:	051c                	addi	a5,sp,640
     998:	0905                	addi	s2,s2,1
     99a:	0000                	unimp
     99c:	0519                	addi	a0,a0,6
     99e:	0905                	addi	s2,s2,1
     9a0:	0000                	unimp
     9a2:	0106                	slli	sp,sp,0x1
     9a4:	1305                	addi	t1,t1,-31
     9a6:	0409                	addi	s0,s0,2
     9a8:	0600                	addi	s0,sp,768
     9aa:	0518                	addi	a4,sp,640
     9ac:	0905                	addi	s2,s2,1
     9ae:	0000                	unimp
     9b0:	0106                	slli	sp,sp,0x1
     9b2:	1305                	addi	t1,t1,-31
     9b4:	0409                	addi	s0,s0,2
     9b6:	0600                	addi	s0,sp,768
     9b8:	051d                	addi	a0,a0,7
     9ba:	0905                	addi	s2,s2,1
     9bc:	0000                	unimp
     9be:	0106                	slli	sp,sp,0x1
     9c0:	1305                	addi	t1,t1,-31
     9c2:	0409                	addi	s0,s0,2
     9c4:	0100                	addi	s0,sp,128
     9c6:	1305                	addi	t1,t1,-31
     9c8:	0009                	c.nop	2
     9ca:	0000                	unimp
     9cc:	0402                	c.slli	s0,0x0
     9ce:	05770603          	lb	a2,87(a4)
     9d2:	092d                	addi	s2,s2,11
     9d4:	0002                	c.slli	zero,0x0
     9d6:	0200                	addi	s0,sp,256
     9d8:	0104                	addi	s1,sp,128
     9da:	0501                	addi	a0,a0,0
     9dc:	091c                	addi	a5,sp,144
     9de:	0006                	c.slli	zero,0x1
     9e0:	0106                	slli	sp,sp,0x1
     9e2:	1c05                	addi	s8,s8,-31
     9e4:	0009                	c.nop	2
     9e6:	0000                	unimp
     9e8:	0402                	c.slli	s0,0x0
     9ea:	0600                	addi	s0,sp,768
     9ec:	05017203          	.insn	4, 0x05017203
     9f0:	0909                	addi	s2,s2,2
     9f2:	0000                	unimp
     9f4:	0106                	slli	sp,sp,0x1
     9f6:	1005                	c.nop	-31
     9f8:	0609                	addi	a2,a2,2
     9fa:	0100                	addi	s0,sp,128
     9fc:	1005                	c.nop	-31
     9fe:	0009                	c.nop	2
     a00:	0600                	addi	s0,sp,768
     a02:	055d                	addi	a0,a0,23
     a04:	0909                	addi	s2,s2,2
     a06:	0000                	unimp
     a08:	017eca03          	lbu	s4,23(t4)
     a0c:	0d05                	addi	s10,s10,1
     a0e:	0009                	c.nop	2
     a10:	1900                	addi	s0,sp,176
     a12:	0505                	addi	a0,a0,1
     a14:	0009                	c.nop	2
     a16:	0600                	addi	s0,sp,768
     a18:	0501                	addi	a0,a0,0
     a1a:	090d                	addi	s2,s2,3
     a1c:	0002                	c.slli	zero,0x0
     a1e:	05cc                	addi	a1,sp,708
     a20:	0921                	addi	s2,s2,8
     a22:	0004                	.insn	2, 0x0004
     a24:	017ecb03          	lbu	s6,23(t4)
     a28:	0d05                	addi	s10,s10,1
     a2a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a2c:	0600                	addi	s0,sp,768
     a2e:	05cc                	addi	a1,sp,708
     a30:	0909                	addi	s2,s2,2
     a32:	0000                	unimp
     a34:	0106                	slli	sp,sp,0x1
     a36:	2105                	jal	e56 <STACK_SIZE+0x256>
     a38:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a3a:	0100                	addi	s0,sp,128
     a3c:	2105                	jal	e5c <STACK_SIZE+0x25c>
     a3e:	0009                	c.nop	2
     a40:	0600                	addi	s0,sp,768
     a42:	0511                	addi	a0,a0,4
     a44:	0909                	addi	s2,s2,2
     a46:	0000                	unimp
     a48:	017ecf03          	lbu	t5,23(t4)
     a4c:	0d05                	addi	s10,s10,1
     a4e:	0009                	c.nop	2
     a50:	1900                	addi	s0,sp,176
     a52:	0505                	addi	a0,a0,1
     a54:	0009                	c.nop	2
     a56:	0600                	addi	s0,sp,768
     a58:	0501                	addi	a0,a0,0
     a5a:	090d                	addi	s2,s2,3
     a5c:	0002                	c.slli	zero,0x0
     a5e:	091d05c7          	.insn	4, 0x091d05c7
     a62:	0004                	.insn	2, 0x0004
     a64:	017ed003          	lhu	zero,23(t4)
     a68:	0d05                	addi	s10,s10,1
     a6a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a6c:	0600                	addi	s0,sp,768
     a6e:	090905c7          	.insn	4, 0x090905c7
     a72:	0000                	unimp
     a74:	0106                	slli	sp,sp,0x1
     a76:	1d05                	addi	s10,s10,-31
     a78:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     a7a:	0300                	addi	s0,sp,384
     a7c:	05017efb          	.insn	4, 0x05017efb
     a80:	02050023          	sb	zero,32(a0)
     a84:	02c6                	slli	t0,t0,0x11
     a86:	0100                	addi	s0,sp,128
     a88:	0100                	addi	s0,sp,128
     a8a:	0001                	nop
     a8c:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     a8e:	02c6                	slli	t0,t0,0x11
     a90:	0100                	addi	s0,sp,128
     a92:	0204                	addi	s1,sp,256
     a94:	0534                	addi	a3,sp,648
     a96:	00000927          	.insn	4, 0x0927
     a9a:	0519                	addi	a0,a0,6
     a9c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     aa0:	0106                	slli	sp,sp,0x1
     aa2:	1c05                	addi	s8,s8,-31
     aa4:	0609                	addi	a2,a2,2
     aa6:	1500                	addi	s0,sp,672
     aa8:	2705                	jal	11c8 <STACK_SIZE+0x5c8>
     aaa:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     aac:	1b00                	addi	s0,sp,432
     aae:	1b05                	addi	s6,s6,-31
     ab0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ab2:	1500                	addi	s0,sp,672
     ab4:	1505                	addi	a0,a0,-31
     ab6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ab8:	0600                	addi	s0,sp,768
     aba:	0519                	addi	a0,a0,6
     abc:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ac0:	0106                	slli	sp,sp,0x1
     ac2:	1705                	addi	a4,a4,-31
     ac4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ac6:	0100                	addi	s0,sp,128
     ac8:	1b05                	addi	s6,s6,-31
     aca:	0409                	addi	s0,s0,2
     acc:	1900                	addi	s0,sp,176
     ace:	0a05                	addi	s4,s4,1
     ad0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ad2:	1500                	addi	s0,sp,672
     ad4:	1705                	addi	a4,a4,-31
     ad6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ad8:	0100                	addi	s0,sp,128
     ada:	0f05                	addi	t5,t5,1
     adc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ade:	0600                	addi	s0,sp,768
     ae0:	0519                	addi	a0,a0,6
     ae2:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ae6:	0106                	slli	sp,sp,0x1
     ae8:	0a05                	addi	s4,s4,1
     aea:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     aec:	1900                	addi	s0,sp,176
     aee:	1805                	addi	a6,a6,-31
     af0:	0609                	addi	a2,a2,2
     af2:	1500                	addi	s0,sp,672
     af4:	0805                	addi	a6,a6,1
     af6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     af8:	0600                	addi	s0,sp,768
     afa:	0519                	addi	a0,a0,6
     afc:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b00:	0106                	slli	sp,sp,0x1
     b02:	1405                	addi	s0,s0,-31
     b04:	0409                	addi	s0,s0,2
     b06:	0100                	addi	s0,sp,128
     b08:	2405                	jal	d28 <STACK_SIZE+0x128>
     b0a:	0409                	addi	s0,s0,2
     b0c:	0100                	addi	s0,sp,128
     b0e:	0c05                	addi	s8,s8,1
     b10:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b12:	0600                	addi	s0,sp,768
     b14:	0519                	addi	a0,a0,6
     b16:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b1a:	0106                	slli	sp,sp,0x1
     b1c:	0a05                	addi	s4,s4,1
     b1e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b20:	0100                	addi	s0,sp,128
     b22:	0805                	addi	a6,a6,1
     b24:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b26:	0600                	addi	s0,sp,768
     b28:	0519                	addi	a0,a0,6
     b2a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b2e:	0106                	slli	sp,sp,0x1
     b30:	1705                	addi	a4,a4,-31
     b32:	0409                	addi	s0,s0,2
     b34:	0100                	addi	s0,sp,128
     b36:	0f05                	addi	t5,t5,1
     b38:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     b3a:	1800                	addi	s0,sp,48
     b3c:	0105                	addi	sp,sp,1
     b3e:	0500                	addi	s0,sp,640
     b40:	0002                	c.slli	zero,0x0
     b42:	00010003          	lb	zero,0(sp)
     b46:	0101                	addi	sp,sp,0
     b48:	0500                	addi	s0,sp,640
     b4a:	0002                	c.slli	zero,0x0
     b4c:	0000                	unimp
     b4e:	0400                	addi	s0,sp,512
     b50:	4302                	lw	t1,0(sp)
     b52:	2805                	jal	b82 <__DYNAMIC+0xb82>
     b54:	0009                	c.nop	2
     b56:	1900                	addi	s0,sp,176
     b58:	0305                	addi	t1,t1,1
     b5a:	0009                	c.nop	2
     b5c:	0600                	addi	s0,sp,768
     b5e:	0515                	addi	a0,a0,5
     b60:	0928                	addi	a0,sp,152
     b62:	0000                	unimp
     b64:	0519                	addi	a0,a0,6
     b66:	0915                	addi	s2,s2,5
     b68:	0000                	unimp
     b6a:	1906                	slli	s2,s2,0x21
     b6c:	0305                	addi	t1,t1,1
     b6e:	0009                	c.nop	2
     b70:	0600                	addi	s0,sp,768
     b72:	0501                	addi	a0,a0,0
     b74:	090a                	slli	s2,s2,0x2
     b76:	0000                	unimp
     b78:	0518                	addi	a4,sp,640
     b7a:	091d                	addi	s2,s2,7
     b7c:	0000                	unimp
     b7e:	0516                	slli	a0,a0,0x5
     b80:	0908                	addi	a0,sp,144
     b82:	0000                	unimp
     b84:	1806                	slli	a6,a6,0x21
     b86:	0305                	addi	t1,t1,1
     b88:	0009                	c.nop	2
     b8a:	0600                	addi	s0,sp,768
     b8c:	0501                	addi	a0,a0,0
     b8e:	00000917          	auipc	s2,0x0
     b92:	0501                	addi	a0,a0,0
     b94:	0919                	addi	s2,s2,6 # b94 <__DYNAMIC+0xb94>
     b96:	0000                	unimp
     b98:	0518                	addi	a4,sp,640
     b9a:	090a                	slli	s2,s2,0x2
     b9c:	0000                	unimp
     b9e:	0516                	slli	a0,a0,0x5
     ba0:	00000917          	auipc	s2,0x0
     ba4:	0501                	addi	a0,a0,0
     ba6:	0000090f          	.insn	4, 0x090f
     baa:	1806                	slli	a6,a6,0x21
     bac:	0305                	addi	t1,t1,1
     bae:	0009                	c.nop	2
     bb0:	0600                	addi	s0,sp,768
     bb2:	0501                	addi	a0,a0,0
     bb4:	090a                	slli	s2,s2,0x2
     bb6:	0000                	unimp
     bb8:	0518                	addi	a4,sp,640
     bba:	0919                	addi	s2,s2,6 # ba6 <__DYNAMIC+0xba6>
     bbc:	0000                	unimp
     bbe:	0516                	slli	a0,a0,0x5
     bc0:	0908                	addi	a0,sp,144
     bc2:	0000                	unimp
     bc4:	1806                	slli	a6,a6,0x21
     bc6:	0305                	addi	t1,t1,1
     bc8:	0009                	c.nop	2
     bca:	0600                	addi	s0,sp,768
     bcc:	0501                	addi	a0,a0,0
     bce:	00000913          	li	s2,0
     bd2:	0501                	addi	a0,a0,0
     bd4:	0915                	addi	s2,s2,5
     bd6:	0000                	unimp
     bd8:	0501                	addi	a0,a0,0
     bda:	00000913          	li	s2,0
     bde:	0501                	addi	a0,a0,0
     be0:	090c                	addi	a1,sp,144
     be2:	0000                	unimp
     be4:	1806                	slli	a6,a6,0x21
     be6:	0305                	addi	t1,t1,1
     be8:	0009                	c.nop	2
     bea:	0600                	addi	s0,sp,768
     bec:	0501                	addi	a0,a0,0
     bee:	090a                	slli	s2,s2,0x2
     bf0:	0000                	unimp
     bf2:	0501                	addi	a0,a0,0
     bf4:	0908                	addi	a0,sp,144
     bf6:	0000                	unimp
     bf8:	1806                	slli	a6,a6,0x21
     bfa:	0305                	addi	t1,t1,1
     bfc:	0009                	c.nop	2
     bfe:	0600                	addi	s0,sp,768
     c00:	0501                	addi	a0,a0,0
     c02:	00000917          	auipc	s2,0x0
     c06:	0501                	addi	a0,a0,0
     c08:	0000090f          	.insn	4, 0x090f
     c0c:	0518                	addi	a4,sp,640
     c0e:	0001                	nop
     c10:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     c12:	0000                	unimp
     c14:	0000                	unimp
     c16:	0100                	addi	s0,sp,128
     c18:	0001                	nop
     c1a:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     c1c:	0000                	unimp
     c1e:	0000                	unimp
     c20:	0204                	addi	s1,sp,256
     c22:	092b054f          	.insn	4, 0x092b054f
     c26:	0000                	unimp
     c28:	0519                	addi	a0,a0,6
     c2a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c2e:	0106                	slli	sp,sp,0x1
     c30:	0d05                	addi	s10,s10,1
     c32:	0009                	c.nop	2
     c34:	1800                	addi	s0,sp,48
     c36:	0105                	addi	sp,sp,1
     c38:	0500                	addi	s0,sp,640
     c3a:	0002                	c.slli	zero,0x0
     c3c:	0000                	unimp
     c3e:	0000                	unimp
     c40:	0101                	addi	sp,sp,0
     c42:	0500                	addi	s0,sp,640
     c44:	0002                	c.slli	zero,0x0
     c46:	04010003          	lb	zero,64(sp)
     c4a:	11053203          	.insn	4, 0x11053203
     c4e:	0009                	c.nop	2
     c50:	1900                	addi	s0,sp,176
     c52:	0305                	addi	t1,t1,1
     c54:	0009                	c.nop	2
     c56:	0600                	addi	s0,sp,768
     c58:	0501                	addi	a0,a0,0
     c5a:	091e                	slli	s2,s2,0x7
     c5c:	0006                	c.slli	zero,0x1
     c5e:	0515                	addi	a0,a0,5
     c60:	0911                	addi	s2,s2,4 # c06 <STACK_SIZE+0x6>
     c62:	0002                	c.slli	zero,0x0
     c64:	051e                	slli	a0,a0,0x7
     c66:	0004090b          	.insn	4, 0x0004090b
     c6a:	0512                	slli	a0,a0,0x4
     c6c:	0915                	addi	s2,s2,5
     c6e:	0002                	c.slli	zero,0x0
     c70:	1806                	slli	a6,a6,0x21
     c72:	0305                	addi	t1,t1,1
     c74:	0009                	c.nop	2
     c76:	0600                	addi	s0,sp,768
     c78:	0501                	addi	a0,a0,0
     c7a:	0002092f          	.insn	4, 0x0002092f
     c7e:	090b051b          	.insn	4, 0x090b051b
     c82:	0002                	c.slli	zero,0x0
     c84:	051c                	addi	a5,sp,640
     c86:	0002090b          	.insn	4, 0x0002090b
     c8a:	050e                	slli	a0,a0,0x3
     c8c:	0004092f          	.insn	4, 0x0004092f
     c90:	0501                	addi	a0,a0,0
     c92:	00020927          	.insn	4, 0x00020927
     c96:	1b06                	slli	s6,s6,0x21
     c98:	0305                	addi	t1,t1,1
     c9a:	0009                	c.nop	2
     c9c:	0600                	addi	s0,sp,768
     c9e:	0501                	addi	a0,a0,0
     ca0:	0004090b          	.insn	4, 0x0004090b
     ca4:	1806                	slli	a6,a6,0x21
     ca6:	0305                	addi	t1,t1,1
     ca8:	0009                	c.nop	2
     caa:	0600                	addi	s0,sp,768
     cac:	0501                	addi	a0,a0,0
     cae:	00080907          	.insn	4, 0x00080907
     cb2:	1806                	slli	a6,a6,0x21
     cb4:	0305                	addi	t1,t1,1
     cb6:	0009                	c.nop	2
     cb8:	0600                	addi	s0,sp,768
     cba:	0501                	addi	a0,a0,0
     cbc:	0006090f          	.insn	4, 0x0006090f
     cc0:	1806                	slli	a6,a6,0x21
     cc2:	0305                	addi	t1,t1,1
     cc4:	0009                	c.nop	2
     cc6:	0600                	addi	s0,sp,768
     cc8:	0501                	addi	a0,a0,0
     cca:	00060907          	.insn	4, 0x00060907
     cce:	1806                	slli	a6,a6,0x21
     cd0:	0305                	addi	t1,t1,1
     cd2:	0009                	c.nop	2
     cd4:	0600                	addi	s0,sp,768
     cd6:	0501                	addi	a0,a0,0
     cd8:	0004090b          	.insn	4, 0x0004090b
     cdc:	1806                	slli	a6,a6,0x21
     cde:	0305                	addi	t1,t1,1
     ce0:	0009                	c.nop	2
     ce2:	0600                	addi	s0,sp,768
     ce4:	0501                	addi	a0,a0,0
     ce6:	0004090b          	.insn	4, 0x0004090b
     cea:	0519                	addi	a0,a0,6
     cec:	0001                	nop
     cee:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     cf0:	033e                	slli	t1,t1,0xf
     cf2:	0100                	addi	s0,sp,128
     cf4:	0100                	addi	s0,sp,128
     cf6:	0001                	nop
     cf8:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     cfa:	033e                	slli	t1,t1,0xf
     cfc:	0100                	addi	s0,sp,128
     cfe:	0304                	addi	s1,sp,384
     d00:	0542                	slli	a0,a0,0x10
     d02:	0922                	slli	s2,s2,0x8
     d04:	0000                	unimp
     d06:	0518                	addi	a4,sp,640
     d08:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d0c:	0501                	addi	a0,a0,0
     d0e:	0908                	addi	a0,sp,144
     d10:	0000                	unimp
     d12:	0200                	addi	s0,sp,256
     d14:	0104                	addi	s1,sp,128
     d16:	0501                	addi	a0,a0,0
     d18:	091a                	slli	s2,s2,0x6
     d1a:	0000                	unimp
     d1c:	0106                	slli	sp,sp,0x1
     d1e:	1605                	addi	a2,a2,-31
     d20:	0409                	addi	s0,s0,2
     d22:	0100                	addi	s0,sp,128
     d24:	1a05                	addi	s4,s4,-31
     d26:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d28:	0000                	unimp
     d2a:	0402                	c.slli	s0,0x0
     d2c:	1900                	addi	s0,sp,176
     d2e:	1105                	addi	sp,sp,-31
     d30:	0409                	addi	s0,s0,2
     d32:	1400                	addi	s0,sp,544
     d34:	2205                	jal	e54 <STACK_SIZE+0x254>
     d36:	0609                	addi	a2,a2,2
     d38:	1a00                	addi	s0,sp,304
     d3a:	1105                	addi	sp,sp,-31
     d3c:	0409                	addi	s0,s0,2
     d3e:	2600                	.insn	2, 0x2600
     d40:	1405                	addi	s0,s0,-31
     d42:	0409                	addi	s0,s0,2
     d44:	0600                	addi	s0,sp,768
     d46:	05017103          	.insn	4, 0x05017103
     d4a:	0905                	addi	s2,s2,1
     d4c:	0000                	unimp
     d4e:	0106                	slli	sp,sp,0x1
     d50:	1105                	addi	sp,sp,-31
     d52:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d54:	0600                	addi	s0,sp,768
     d56:	0525                	addi	a0,a0,9
     d58:	0905                	addi	s2,s2,1
     d5a:	0000                	unimp
     d5c:	0106                	slli	sp,sp,0x1
     d5e:	1705                	addi	a4,a4,-31
     d60:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     d62:	0600                	addi	s0,sp,768
     d64:	0518                	addi	a4,sp,640
     d66:	0905                	addi	s2,s2,1
     d68:	0000                	unimp
     d6a:	0501                	addi	a0,a0,0
     d6c:	0914                	addi	a3,sp,144
     d6e:	0006                	c.slli	zero,0x1
     d70:	0518                	addi	a4,sp,640
     d72:	00020907          	.insn	4, 0x00020907
     d76:	0518                	addi	a4,sp,640
     d78:	00000907          	.insn	4, 0x0907
     d7c:	0106                	slli	sp,sp,0x1
     d7e:	1005                	c.nop	-31
     d80:	0609                	addi	a2,a2,2
     d82:	0600                	addi	s0,sp,768
     d84:	0515                	addi	a0,a0,5
     d86:	0914                	addi	a3,sp,144
     d88:	0006                	c.slli	zero,0x1
     d8a:	0200                	addi	s0,sp,256
     d8c:	0204                	addi	s1,sp,256
     d8e:	05016f03          	.insn	4, 0x05016f03
     d92:	0924                	addi	s1,sp,152
     d94:	0000                	unimp
     d96:	0200                	addi	s0,sp,256
     d98:	0104                	addi	s1,sp,128
     d9a:	0501                	addi	a0,a0,0
     d9c:	091a                	slli	s2,s2,0x6
     d9e:	0000                	unimp
     da0:	0106                	slli	sp,sp,0x1
     da2:	1605                	addi	a2,a2,-31
     da4:	0409                	addi	s0,s0,2
     da6:	0100                	addi	s0,sp,128
     da8:	1a05                	addi	s4,s4,-31
     daa:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     dac:	0100                	addi	s0,sp,128
     dae:	1a05                	addi	s4,s4,-31
     db0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     db2:	0000                	unimp
     db4:	0402                	c.slli	s0,0x0
     db6:	2d00                	.insn	2, 0x2d00
     db8:	0105                	addi	sp,sp,1
     dba:	0409                	addi	s0,s0,2
     dbc:	0100                	addi	s0,sp,128
     dbe:	0105                	addi	sp,sp,1
     dc0:	0500                	addi	s0,sp,640
     dc2:	7c02                	.insn	2, 0x7c02
     dc4:	00010003          	lb	zero,0(sp)
     dc8:	0101                	addi	sp,sp,0
     dca:	0500                	addi	s0,sp,640
     dcc:	0002                	c.slli	zero,0x0
     dce:	0000                	unimp
     dd0:	0400                	addi	s0,sp,512
     dd2:	19055b03          	lhu	s6,400(a0)
     dd6:	0009                	c.nop	2
     dd8:	1900                	addi	s0,sp,176
     dda:	0305                	addi	t1,t1,1
     ddc:	0009                	c.nop	2
     dde:	0600                	addi	s0,sp,768
     de0:	0501                	addi	a0,a0,0
     de2:	0000090f          	.insn	4, 0x090f
     de6:	0515                	addi	a0,a0,5
     de8:	0919                	addi	s2,s2,6
     dea:	0000                	unimp
     dec:	0519                	addi	a0,a0,6
     dee:	0000090f          	.insn	4, 0x090f
     df2:	1806                	slli	a6,a6,0x21
     df4:	0305                	addi	t1,t1,1
     df6:	0009                	c.nop	2
     df8:	0600                	addi	s0,sp,768
     dfa:	0501                	addi	a0,a0,0
     dfc:	0911                	addi	s2,s2,4
     dfe:	0000                	unimp
     e00:	1806                	slli	a6,a6,0x21
     e02:	0305                	addi	t1,t1,1
     e04:	0009                	c.nop	2
     e06:	0600                	addi	s0,sp,768
     e08:	0501                	addi	a0,a0,0
     e0a:	0915                	addi	s2,s2,5
     e0c:	0000                	unimp
     e0e:	1806                	slli	a6,a6,0x21
     e10:	0305                	addi	t1,t1,1
     e12:	0009                	c.nop	2
     e14:	0100                	addi	s0,sp,128
     e16:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     e18:	0009                	c.nop	2
     e1a:	1800                	addi	s0,sp,48
     e1c:	0505                	addi	a0,a0,1
     e1e:	0009                	c.nop	2
     e20:	1800                	addi	s0,sp,48
     e22:	0505                	addi	a0,a0,1
     e24:	0009                	c.nop	2
     e26:	0600                	addi	s0,sp,768
     e28:	0501                	addi	a0,a0,0
     e2a:	090e                	slli	s2,s2,0x3
     e2c:	0000                	unimp
     e2e:	1506                	slli	a0,a0,0x21
     e30:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     e32:	0009                	c.nop	2
     e34:	1c00                	addi	s0,sp,560
     e36:	0305                	addi	t1,t1,1
     e38:	0009                	c.nop	2
     e3a:	0600                	addi	s0,sp,768
     e3c:	0501                	addi	a0,a0,0
     e3e:	090d                	addi	s2,s2,3
     e40:	0000                	unimp
     e42:	0501                	addi	a0,a0,0
     e44:	0000090b          	.insn	4, 0x090b
     e48:	1806                	slli	a6,a6,0x21
     e4a:	0305                	addi	t1,t1,1
     e4c:	0009                	c.nop	2
     e4e:	0600                	addi	s0,sp,768
     e50:	0501                	addi	a0,a0,0
     e52:	0000090f          	.insn	4, 0x090f
     e56:	051c                	addi	a5,sp,640
     e58:	0901                	addi	s2,s2,0
     e5a:	0000                	unimp
     e5c:	0512                	slli	a0,a0,0x4
     e5e:	0906                	slli	s2,s2,0x1
     e60:	0000                	unimp
     e62:	051c                	addi	a5,sp,640
     e64:	0001                	nop
     e66:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     e68:	0000                	unimp
     e6a:	0000                	unimp
     e6c:	0100                	addi	s0,sp,128
     e6e:	0001                	nop
     e70:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     e72:	037c                	addi	a5,sp,396
     e74:	0100                	addi	s0,sp,128
     e76:	01029003          	lh	zero,16(t0)
     e7a:	0105                	addi	sp,sp,1
     e7c:	0009                	c.nop	2
     e7e:	1800                	addi	s0,sp,48
     e80:	0505                	addi	a0,a0,1
     e82:	0009                	c.nop	2
     e84:	1800                	addi	s0,sp,48
     e86:	0505                	addi	a0,a0,1
     e88:	0009                	c.nop	2
     e8a:	1900                	addi	s0,sp,176
     e8c:	0505                	addi	a0,a0,1
     e8e:	0009                	c.nop	2
     e90:	0600                	addi	s0,sp,768
     e92:	09010513          	addi	a0,sp,144
     e96:	0002                	c.slli	zero,0x0
     e98:	0905051b          	.insn	4, 0x0905051b
     e9c:	0002                	c.slli	zero,0x0
     e9e:	09010513          	addi	a0,sp,144
     ea2:	0006                	c.slli	zero,0x1
     ea4:	0905051b          	.insn	4, 0x0905051b
     ea8:	0002                	c.slli	zero,0x0
     eaa:	1806                	slli	a6,a6,0x21
     eac:	0505                	addi	a0,a0,1
     eae:	0009                	c.nop	2
     eb0:	0300                	addi	s0,sp,384
     eb2:	7eb0                	.insn	2, 0x7eb0
     eb4:	0501                	addi	a0,a0,0
     eb6:	090d                	addi	s2,s2,3
     eb8:	0000                	unimp
     eba:	051c                	addi	a5,sp,640
     ebc:	0905                	addi	s2,s2,1
     ebe:	0002                	c.slli	zero,0x0
     ec0:	05ed                	addi	a1,a1,27
     ec2:	0905                	addi	s2,s2,1
     ec4:	0000                	unimp
     ec6:	0106                	slli	sp,sp,0x1
     ec8:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     eca:	0809                	addi	a6,a6,2
     ecc:	1800                	addi	s0,sp,48
     ece:	0805                	addi	a6,a6,1
     ed0:	0409                	addi	s0,s0,2
     ed2:	1600                	addi	s0,sp,800
     ed4:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     ed6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ed8:	0600                	addi	s0,sp,768
     eda:	0518                	addi	a4,sp,640
     edc:	0905                	addi	s2,s2,1
     ede:	0000                	unimp
     ee0:	0106                	slli	sp,sp,0x1
     ee2:	0805                	addi	a6,a6,1
     ee4:	0409                	addi	s0,s0,2
     ee6:	1d00                	addi	s0,sp,688
     ee8:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     eea:	0809                	addi	a6,a6,2
     eec:	0600                	addi	s0,sp,768
     eee:	0515                	addi	a0,a0,5
     ef0:	0905                	addi	s2,s2,1
     ef2:	0000                	unimp
     ef4:	0519                	addi	a0,a0,6
     ef6:	0905                	addi	s2,s2,1
     ef8:	0000                	unimp
     efa:	0106                	slli	sp,sp,0x1
     efc:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     efe:	0409                	addi	s0,s0,2
     f00:	0600                	addi	s0,sp,768
     f02:	0518                	addi	a4,sp,640
     f04:	0905                	addi	s2,s2,1
     f06:	0000                	unimp
     f08:	0106                	slli	sp,sp,0x1
     f0a:	0805                	addi	a6,a6,1
     f0c:	0409                	addi	s0,s0,2
     f0e:	0600                	addi	s0,sp,768
     f10:	0905051b          	.insn	4, 0x0905051b
     f14:	0000                	unimp
     f16:	0519                	addi	a0,a0,6
     f18:	0905                	addi	s2,s2,1
     f1a:	0000                	unimp
     f1c:	0106                	slli	sp,sp,0x1
     f1e:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     f20:	0609                	addi	a2,a2,2
     f22:	0100                	addi	s0,sp,128
     f24:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     f26:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f28:	0600                	addi	s0,sp,768
     f2a:	0518                	addi	a4,sp,640
     f2c:	0905                	addi	s2,s2,1
     f2e:	0002                	c.slli	zero,0x0
     f30:	0106                	slli	sp,sp,0x1
     f32:	0805                	addi	a6,a6,1
     f34:	0409                	addi	s0,s0,2
     f36:	0600                	addi	s0,sp,768
     f38:	0905051b          	.insn	4, 0x0905051b
     f3c:	0000                	unimp
     f3e:	0519                	addi	a0,a0,6
     f40:	0905                	addi	s2,s2,1
     f42:	0000                	unimp
     f44:	0106                	slli	sp,sp,0x1
     f46:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     f48:	0609                	addi	a2,a2,2
     f4a:	0100                	addi	s0,sp,128
     f4c:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     f4e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f50:	0600                	addi	s0,sp,768
     f52:	0518                	addi	a4,sp,640
     f54:	0905                	addi	s2,s2,1
     f56:	0000                	unimp
     f58:	0106                	slli	sp,sp,0x1
     f5a:	0805                	addi	a6,a6,1
     f5c:	0609                	addi	a2,a2,2
     f5e:	0d00                	addi	s0,sp,656
     f60:	0c05                	addi	s8,s8,1
     f62:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f64:	1e00                	addi	s0,sp,816
     f66:	0c05                	addi	s8,s8,1
     f68:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f6a:	0600                	addi	s0,sp,768
     f6c:	051e                	slli	a0,a0,0x7
     f6e:	0905                	addi	s2,s2,1
     f70:	0000                	unimp
     f72:	0106                	slli	sp,sp,0x1
     f74:	0c05                	addi	s8,s8,1
     f76:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f78:	0600                	addi	s0,sp,768
     f7a:	0519                	addi	a0,a0,6
     f7c:	0905                	addi	s2,s2,1
     f7e:	0000                	unimp
     f80:	0106                	slli	sp,sp,0x1
     f82:	0805                	addi	a6,a6,1
     f84:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f86:	0600                	addi	s0,sp,768
     f88:	0518                	addi	a4,sp,640
     f8a:	0909                	addi	s2,s2,2
     f8c:	0004                	.insn	2, 0x0004
     f8e:	0106                	slli	sp,sp,0x1
     f90:	0905                	addi	s2,s2,1
     f92:	0a09                	addi	s4,s4,2
     f94:	0600                	addi	s0,sp,768
     f96:	05016c03          	.insn	4, 0x05016c03
     f9a:	0909                	addi	s2,s2,2
     f9c:	0004                	.insn	2, 0x0004
     f9e:	0106                	slli	sp,sp,0x1
     fa0:	0905                	addi	s2,s2,1
     fa2:	0609                	addi	a2,a2,2
     fa4:	0600                	addi	s0,sp,768
     fa6:	0518                	addi	a4,sp,640
     fa8:	0909                	addi	s2,s2,2
     faa:	0000                	unimp
     fac:	0106                	slli	sp,sp,0x1
     fae:	1005                	c.nop	-31
     fb0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     fb2:	0100                	addi	s0,sp,128
     fb4:	1005                	c.nop	-31
     fb6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     fb8:	3000                	.insn	2, 0x3000
     fba:	0105                	addi	sp,sp,1
     fbc:	0c09                	addi	s8,s8,2
     fbe:	0600                	addi	s0,sp,768
     fc0:	05015f03          	lhu	t5,80(sp)
     fc4:	0909                	addi	s2,s2,2
     fc6:	000a                	c.slli	zero,0x2
     fc8:	0518                	addi	a4,sp,640
     fca:	0909                	addi	s2,s2,2
     fcc:	0000                	unimp
     fce:	0106                	slli	sp,sp,0x1
     fd0:	1005                	c.nop	-31
     fd2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     fd4:	0100                	addi	s0,sp,128
     fd6:	1005                	c.nop	-31
     fd8:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     fda:	0600                	addi	s0,sp,768
     fdc:	0909052b          	.insn	4, 0x0909052b
     fe0:	0004                	.insn	2, 0x0004
     fe2:	0106                	slli	sp,sp,0x1
     fe4:	0905                	addi	s2,s2,1
     fe6:	0609                	addi	a2,a2,2
     fe8:	0600                	addi	s0,sp,768
     fea:	0518                	addi	a4,sp,640
     fec:	0909                	addi	s2,s2,2
     fee:	0000                	unimp
     ff0:	0106                	slli	sp,sp,0x1
     ff2:	1005                	c.nop	-31
     ff4:	0609                	addi	a2,a2,2
     ff6:	0600                	addi	s0,sp,768
     ff8:	051e                	slli	a0,a0,0x7
     ffa:	0909                	addi	s2,s2,2
     ffc:	0004                	.insn	2, 0x0004
     ffe:	0106                	slli	sp,sp,0x1
    1000:	0905                	addi	s2,s2,1
    1002:	0500                	addi	s0,sp,640
    1004:	2402                	.insn	2, 0x2402
    1006:	0004                	.insn	2, 0x0004
    1008:	0001                	nop
    100a:	0101                	addi	sp,sp,0
    100c:	0158                	addi	a4,sp,132
    100e:	0000                	unimp
    1010:	0005                	c.nop	1
    1012:	0004                	.insn	2, 0x0004
    1014:	002e                	c.slli	zero,0xb
    1016:	0000                	unimp
    1018:	0101                	addi	sp,sp,0
    101a:	fb01                	bnez	a4,f2a <STACK_SIZE+0x32a>
    101c:	0d0e                	slli	s10,s10,0x3
    101e:	0100                	addi	s0,sp,128
    1020:	0101                	addi	sp,sp,0
    1022:	0001                	nop
    1024:	0000                	unimp
    1026:	0001                	nop
    1028:	0100                	addi	s0,sp,128
    102a:	0101                	addi	sp,sp,0
    102c:	021f 011d 0000      	.insn	6, 0x011d021f
    1032:	00000017          	auipc	zero,0x0
    1036:	0102                	c.slli	sp,0x0
    1038:	021f 020f 0163      	.insn	6, 0x0163020f021f
    103e:	0000                	unimp
    1040:	6301                	.insn	2, 0x6301
    1042:	0001                	nop
    1044:	0100                	addi	s0,sp,128
    1046:	0500                	addi	s0,sp,640
    1048:	2402                	.insn	2, 0x2402
    104a:	0004                	.insn	2, 0x0004
    104c:	0301                	addi	t1,t1,0
    104e:	0103010f          	.insn	4, 0x0103010f
    1052:	0809                	addi	a6,a6,2
    1054:	0100                	addi	s0,sp,128
    1056:	08090103          	lb	sp,128(s2)
    105a:	0100                	addi	s0,sp,128
    105c:	04090503          	lb	a0,64(s2)
    1060:	0100                	addi	s0,sp,128
    1062:	08090103          	lb	sp,128(s2)
    1066:	0100                	addi	s0,sp,128
    1068:	04090103          	lb	sp,64(s2)
    106c:	0100                	addi	s0,sp,128
    106e:	04090103          	lb	sp,64(s2)
    1072:	0100                	addi	s0,sp,128
    1074:	04090103          	lb	sp,64(s2)
    1078:	0100                	addi	s0,sp,128
    107a:	04090403          	lb	s0,64(s2)
    107e:	0100                	addi	s0,sp,128
    1080:	02090103          	lb	sp,32(s2)
    1084:	0100                	addi	s0,sp,128
    1086:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    1088:	0000                	unimp
    108a:	0101                	addi	sp,sp,0
    108c:	0500                	addi	s0,sp,640
    108e:	0002                	c.slli	zero,0x0
    1090:	0000                	unimp
    1092:	0301                	addi	t1,t1,0
    1094:	0124                	addi	s1,sp,136
    1096:	04090103          	lb	sp,64(s2)
    109a:	0100                	addi	s0,sp,128
    109c:	04090103          	lb	sp,64(s2)
    10a0:	0100                	addi	s0,sp,128
    10a2:	04090103          	lb	sp,64(s2)
    10a6:	0100                	addi	s0,sp,128
    10a8:	04090103          	lb	sp,64(s2)
    10ac:	0100                	addi	s0,sp,128
    10ae:	04090103          	lb	sp,64(s2)
    10b2:	0100                	addi	s0,sp,128
    10b4:	04090103          	lb	sp,64(s2)
    10b8:	0100                	addi	s0,sp,128
    10ba:	04090103          	lb	sp,64(s2)
    10be:	0100                	addi	s0,sp,128
    10c0:	04090103          	lb	sp,64(s2)
    10c4:	0100                	addi	s0,sp,128
    10c6:	04090103          	lb	sp,64(s2)
    10ca:	0100                	addi	s0,sp,128
    10cc:	04090103          	lb	sp,64(s2)
    10d0:	0100                	addi	s0,sp,128
    10d2:	04090103          	lb	sp,64(s2)
    10d6:	0100                	addi	s0,sp,128
    10d8:	04090103          	lb	sp,64(s2)
    10dc:	0100                	addi	s0,sp,128
    10de:	04090103          	lb	sp,64(s2)
    10e2:	0100                	addi	s0,sp,128
    10e4:	04090103          	lb	sp,64(s2)
    10e8:	0100                	addi	s0,sp,128
    10ea:	04090103          	lb	sp,64(s2)
    10ee:	0100                	addi	s0,sp,128
    10f0:	04090103          	lb	sp,64(s2)
    10f4:	0100                	addi	s0,sp,128
    10f6:	04090103          	lb	sp,64(s2)
    10fa:	0100                	addi	s0,sp,128
    10fc:	04090103          	lb	sp,64(s2)
    1100:	0100                	addi	s0,sp,128
    1102:	04090103          	lb	sp,64(s2)
    1106:	0100                	addi	s0,sp,128
    1108:	04090103          	lb	sp,64(s2)
    110c:	0100                	addi	s0,sp,128
    110e:	04090103          	lb	sp,64(s2)
    1112:	0100                	addi	s0,sp,128
    1114:	04090103          	lb	sp,64(s2)
    1118:	0100                	addi	s0,sp,128
    111a:	04090103          	lb	sp,64(s2)
    111e:	0100                	addi	s0,sp,128
    1120:	04090103          	lb	sp,64(s2)
    1124:	0100                	addi	s0,sp,128
    1126:	04090103          	lb	sp,64(s2)
    112a:	0100                	addi	s0,sp,128
    112c:	04090103          	lb	sp,64(s2)
    1130:	0100                	addi	s0,sp,128
    1132:	04090103          	lb	sp,64(s2)
    1136:	0100                	addi	s0,sp,128
    1138:	04090103          	lb	sp,64(s2)
    113c:	0100                	addi	s0,sp,128
    113e:	04090103          	lb	sp,64(s2)
    1142:	0100                	addi	s0,sp,128
    1144:	04090103          	lb	sp,64(s2)
    1148:	0100                	addi	s0,sp,128
    114a:	04090103          	lb	sp,64(s2)
    114e:	0100                	addi	s0,sp,128
    1150:	04090403          	lb	s0,64(s2)
    1154:	0100                	addi	s0,sp,128
    1156:	04090403          	lb	s0,64(s2)
    115a:	0100                	addi	s0,sp,128
    115c:	04090303          	lb	t1,64(s2)
    1160:	0100                	addi	s0,sp,128
    1162:	0409                	addi	s0,s0,2
    1164:	0000                	unimp
    1166:	0101                	addi	sp,sp,0

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	7572                	.insn	2, 0x7572
   2:	5f6e                	lw	t5,248(sp)
   4:	6469                	lui	s0,0x1a
   6:	6100                	.insn	2, 0x6100
   8:	6c656363          	bltu	a0,t1,6ce <__DYNAMIC+0x6ce>
   c:	725f 6165 5f64      	.insn	6, 0x5f646165725f
  12:	6572                	.insn	2, 0x6572
  14:	746c7573          	.insn	4, 0x746c7573
  18:	7400                	.insn	2, 0x7400
  1a:	6d65                	lui	s10,0x19
  1c:	0070                	addi	a2,sp,12
  1e:	726f6873          	.insn	4, 0x726f6873
  22:	2074                	.insn	2, 0x2074
  24:	6e69                	lui	t3,0x1a
  26:	0074                	addi	a3,sp,12
  28:	6361                	lui	t1,0x18
  2a:	5f6c6563          	bltu	s8,s6,614 <__DYNAMIC+0x614>
  2e:	74697277          	.insn	4, 0x74697277
  32:	5f65                	li	t5,-7
  34:	7562                	.insn	2, 0x7562
  36:	6666                	.insn	2, 0x6666
  38:	7265                	lui	tp,0xffff9
  3a:	6d00                	.insn	2, 0x6d00
  3c:	6961                	lui	s2,0x18
  3e:	006e                	c.slli	zero,0x1b
  40:	5f5f 6975 746e      	.insn	6, 0x746e69755f5f
  46:	745f3233          	.insn	4, 0x745f3233
  4a:	7500                	.insn	2, 0x7500
  4c:	7261                	lui	tp,0xffff8
  4e:	5f74                	lw	a3,124(a4)
  50:	7270                	.insn	2, 0x7270
  52:	6e69                	lui	t3,0x1a
  54:	0074                	addi	a3,sp,12
  56:	7265                	lui	tp,0xffff9
  58:	6f72                	.insn	2, 0x6f72
  5a:	7372                	.insn	2, 0x7372
  5c:	6200                	.insn	2, 0x6200
  5e:	765f 6c61 6575      	.insn	6, 0x65756c61765f
  64:	665f 726f 725f      	.insn	6, 0x725f726f665f
  6a:	6e75                	lui	t3,0x1d
  6c:	6200                	.insn	2, 0x6200
  6e:	725f 776f 0073      	.insn	6, 0x0073776f725f
  74:	6175                	addi	sp,sp,368
  76:	7472                	.insn	2, 0x7472
  78:	6c5f 6f6f 6270      	.insn	6, 0x62706f6f6c5f
  7e:	6361                	lui	t1,0x18
  80:	65745f6b          	.insn	4, 0x65745f6b
  84:	70007473          	.insn	4, 0x70007473
  88:	6f6d                	lui	t5,0x1b
  8a:	5f64                	lw	s1,124(a4)
  8c:	6174                	.insn	2, 0x6174
  8e:	6772                	.insn	2, 0x6772
  90:	7465                	lui	s0,0xffff9
  92:	6c00                	.insn	2, 0x6c00
  94:	20676e6f          	jal	t3,7629a <STACK_SIZE+0x7569a>
  98:	6f6c                	.insn	2, 0x6f6c
  9a:	676e                	.insn	2, 0x676e
  9c:	6920                	.insn	2, 0x6920
  9e:	746e                	.insn	2, 0x746e
  a0:	6200                	.insn	2, 0x6200
  a2:	635f 6c6f 0073      	.insn	6, 0x00736c6f635f
  a8:	6162                	.insn	2, 0x6162
  aa:	615f6573          	.insn	4, 0x615f6573
  ae:	765f 6c61 6575      	.insn	6, 0x65756c61765f
  b4:	6100                	.insn	2, 0x6100
  b6:	6464                	.insn	2, 0x6464
  b8:	0072                	c.slli	zero,0x1c
  ba:	7562                	.insn	2, 0x7562
  bc:	6666                	.insn	2, 0x6666
  be:	7265                	lui	tp,0xffff9
  c0:	695f 0064 6174      	.insn	6, 0x61740064695f
  c6:	6772                	.insn	2, 0x6772
  c8:	7465                	lui	s0,0xffff9
  ca:	735f 0073 5f5f      	.insn	6, 0x5f5f0073735f
  d0:	6975                	lui	s2,0x1d
  d2:	746e                	.insn	2, 0x746e
  d4:	5f38                	lw	a4,120(a4)
  d6:	0074                	addi	a3,sp,12
  d8:	6574                	.insn	2, 0x6574
  da:	755f7473          	.insn	4, 0x755f7473
  de:	7261                	lui	tp,0xffff8
  e0:	5f74                	lw	a3,124(a4)
  e2:	6e69                	lui	t3,0x1a
  e4:	7469                	lui	s0,0xffffa
  e6:	6500                	.insn	2, 0x6500
  e8:	7078                	.insn	2, 0x7078
  ea:	6365                	lui	t1,0x19
  ec:	6574                	.insn	2, 0x6574
  ee:	5f64                	lw	s1,124(a4)
  f0:	6176                	.insn	2, 0x6176
  f2:	756c                	.insn	2, 0x756c
  f4:	5f65                	li	t5,-7
  f6:	6f66                	.insn	2, 0x6f66
  f8:	5f72                	lw	t5,60(sp)
  fa:	7572                	.insn	2, 0x7572
  fc:	006e                	c.slli	zero,0x1b
  fe:	6361                	lui	t1,0x18
 100:	5f6c6563          	bltu	s8,s6,6ea <__DYNAMIC+0x6ea>
 104:	74696177          	.insn	4, 0x74696177
 108:	645f 6e6f 0065      	.insn	6, 0x00656e6f645f
 10e:	7572                	.insn	2, 0x7572
 110:	5f6e                	lw	t5,248(sp)
 112:	5f656e6f          	jal	t3,56708 <STACK_SIZE+0x55b08>
 116:	6574                	.insn	2, 0x6574
 118:	61007473          	.insn	4, 0x61007473
 11c:	765f 6c61 6575      	.insn	6, 0x65756c61765f
 122:	665f 726f 725f      	.insn	6, 0x725f726f665f
 128:	6e75                	lui	t3,0x1d
 12a:	6100                	.insn	2, 0x6100
 12c:	6c656363          	bltu	a0,t1,7f2 <__DYNAMIC+0x7f2>
 130:	735f 7465 645f      	.insn	6, 0x645f7465735f
 136:	6d69                	lui	s10,0x1a
 138:	6e750073          	.insn	4, 0x6e750073
 13c:	6e676973          	.insn	4, 0x6e676973
 140:	6465                	lui	s0,0x19
 142:	6320                	.insn	2, 0x6320
 144:	6168                	.insn	2, 0x6168
 146:	0072                	c.slli	zero,0x1c
 148:	6f6c                	.insn	2, 0x6f6c
 14a:	676e                	.insn	2, 0x676e
 14c:	6c20                	.insn	2, 0x6c20
 14e:	20676e6f          	jal	t3,76354 <STACK_SIZE+0x75754>
 152:	6e75                	lui	t3,0x1d
 154:	6e676973          	.insn	4, 0x6e676973
 158:	6465                	lui	s0,0x19
 15a:	6920                	.insn	2, 0x6920
 15c:	746e                	.insn	2, 0x746e
 15e:	7300                	.insn	2, 0x7300
 160:	6f68                	.insn	2, 0x6f68
 162:	7472                	.insn	2, 0x7472
 164:	7520                	.insn	2, 0x7520
 166:	736e                	.insn	2, 0x736e
 168:	6769                	lui	a4,0x1a
 16a:	656e                	.insn	2, 0x656e
 16c:	2064                	.insn	2, 0x2064
 16e:	6e69                	lui	t3,0x1a
 170:	0074                	addi	a3,sp,12
 172:	5f5f 6e69 3874      	.insn	6, 0x38746e695f5f
 178:	745f 6200 6675      	.insn	6, 0x66756200745f
 17e:	6566                	.insn	2, 0x6566
 180:	5f72                	lw	t5,60(sp)
 182:	0061                	c.nop	24
 184:	7562                	.insn	2, 0x7562
 186:	6666                	.insn	2, 0x6666
 188:	7265                	lui	tp,0xffff9
 18a:	625f 7700 6972      	.insn	6, 0x69727700625f
 190:	6574                	.insn	2, 0x6574
 192:	695f 706e 7475      	.insn	6, 0x7475706e695f
 198:	6d5f 7461 6972      	.insn	6, 0x697274616d5f
 19e:	00736563          	bltu	t1,t2,1a8 <__DYNAMIC+0x1a8>
 1a2:	5f61                	li	t5,-8
 1a4:	736c6f63          	bltu	s8,s6,8e2 <__DYNAMIC+0x8e2>
 1a8:	7300                	.insn	2, 0x7300
 1aa:	65725f73          	.insn	4, 0x65725f73
 1ae:	00746573          	.insn	4, 0x00746573
 1b2:	6576                	.insn	2, 0x6576
 1b4:	6972                	.insn	2, 0x6972
 1b6:	7966                	.insn	2, 0x7966
 1b8:	725f 7365 6c75      	.insn	6, 0x6c757365725f
 1be:	0074                	addi	a3,sp,12
 1c0:	7865                	lui	a6,0xffff9
 1c2:	6570                	.insn	2, 0x6570
 1c4:	64657463          	bgeu	a0,t1,80c <__DYNAMIC+0x80c>
 1c8:	7200                	.insn	2, 0x7200
 1ca:	6e75                	lui	t3,0x1d
 1cc:	725f 7365 6c75      	.insn	6, 0x6c757365725f
 1d2:	0074                	addi	a3,sp,12
 1d4:	6d74                	.insn	2, 0x6d74
 1d6:	5f70                	lw	a2,124(a4)
 1d8:	6176                	.insn	2, 0x6176
 1da:	006c                	addi	a1,sp,12
 1dc:	6361                	lui	t1,0x18
 1de:	5f6c6563          	bltu	s8,s6,7c8 <__DYNAMIC+0x7c8>
 1e2:	6361                	lui	t1,0x18
 1e4:	6f645f6b          	.insn	4, 0x6f645f6b
 1e8:	656e                	.insn	2, 0x656e
 1ea:	6d00                	.insn	2, 0x6d00
 1ec:	7361                	lui	t1,0xffff8
 1ee:	5f5f006b          	.insn	4, 0x5f5f006b
 1f2:	6e69                	lui	t3,0x1a
 1f4:	3374                	.insn	2, 0x3374
 1f6:	5f32                	lw	t5,44(sp)
 1f8:	0074                	addi	a3,sp,12
 1fa:	5f61                	li	t5,-8
 1fc:	6f72                	.insn	2, 0x6f72
 1fe:	73007377          	.insn	4, 0x73007377
 202:	6e695f73          	.insn	4, 0x6e695f73
 206:	7469                	lui	s0,0xffffa
 208:	4700                	lw	s0,8(a4)
 20a:	554e                	lw	a0,240(sp)
 20c:	4320                	lw	s0,64(a4)
 20e:	3332                	.insn	2, 0x3332
 210:	3120                	.insn	2, 0x3120
 212:	2e35                	jal	54e <__DYNAMIC+0x54e>
 214:	2e32                	.insn	2, 0x2e32
 216:	2030                	.insn	2, 0x2030
 218:	6d2d                	lui	s10,0xb
 21a:	6261                	lui	tp,0x18
 21c:	3d69                	jal	b6 <__DYNAMIC+0xb6>
 21e:	6c69                	lui	s8,0x1a
 220:	3370                	.insn	2, 0x3370
 222:	2032                	.insn	2, 0x2032
 224:	6d2d                	lui	s10,0xb
 226:	7369                	lui	t1,0xffffa
 228:	2d61                	jal	8c0 <__DYNAMIC+0x8c0>
 22a:	63657073          	.insn	4, 0x63657073
 22e:	323d                	jal	fffffb5c <stack+0xfeefef5c>
 230:	3130                	.insn	2, 0x3130
 232:	3139                	jal	fffffe40 <stack+0xfeeff240>
 234:	3132                	.insn	2, 0x3132
 236:	6d2d2033          	.insn	4, 0x6d2d2033
 23a:	7261                	lui	tp,0xffff8
 23c:	723d6863          	bltu	s10,gp,96c <__DYNAMIC+0x96c>
 240:	3376                	.insn	2, 0x3376
 242:	6932                	.insn	2, 0x6932
 244:	636d                	lui	t1,0x1b
 246:	7a5f 6d6d 6c75      	.insn	6, 0x6c756d6d7a5f
 24c:	7a5f 6163 2d20      	.insn	6, 0x2d2061637a5f
 252:	4f2d2067          	.insn	4, 0x4f2d2067
 256:	2032                	.insn	2, 0x2032
 258:	662d                	lui	a2,0xb
 25a:	7566                	.insn	2, 0x7566
 25c:	636e                	.insn	2, 0x636e
 25e:	6974                	.insn	2, 0x6974
 260:	732d6e6f          	jal	t3,d6992 <STACK_SIZE+0xd5d92>
 264:	6365                	lui	t1,0x19
 266:	6974                	.insn	2, 0x6974
 268:	20736e6f          	jal	t3,36c6e <STACK_SIZE+0x3606e>
 26c:	662d                	lui	a2,0xb
 26e:	6164                	.insn	2, 0x6164
 270:	6174                	.insn	2, 0x6174
 272:	732d                	lui	t1,0xfffeb
 274:	6365                	lui	t1,0x19
 276:	6974                	.insn	2, 0x6974
 278:	00736e6f          	jal	t3,36a7e <STACK_SIZE+0x35e7e>
 27c:	74696177          	.insn	4, 0x74696177
 280:	6c5f 6f6f 0070      	.insn	6, 0x00706f6f6c5f
 286:	6974                	.insn	2, 0x6974
 288:	656d                	lui	a0,0x1b
 28a:	0074756f          	jal	a0,47a90 <STACK_SIZE+0x46e90>
 28e:	6d6d6f63          	bltu	s10,s6,96c <__DYNAMIC+0x96c>
 292:	632f6e6f          	jal	t3,f68c4 <STACK_SIZE+0xf5cc4>
 296:	7472                	.insn	2, 0x7472
 298:	2e30                	.insn	2, 0x2e30
 29a:	6e2f0053          	.insn	4, 0x6e2f0053
 29e:	7361                	lui	t1,0xffff8
 2a0:	2f69652f          	.insn	4, 0x2f69652f
 2a4:	6f68                	.insn	2, 0x6f68
 2a6:	656d                	lui	a0,0x1b
 2a8:	3865672f          	.insn	4, 0x3865672f
 2ac:	78696437          	lui	s0,0x78696
 2b0:	7564452f          	.insn	4, 0x7564452f
 2b4:	4334                	lw	a3,64(a4)
 2b6:	6968                	.insn	2, 0x6968
 2b8:	2f70                	.insn	2, 0x2f70
 2ba:	6944                	.insn	2, 0x6944
 2bc:	6164                	.insn	2, 0x6164
 2be:	63697463          	bgeu	s2,s6,8e6 <__DYNAMIC+0x8e6>
 2c2:	532d                	li	t1,-21
 2c4:	732f436f          	jal	t1,f49f6 <STACK_SIZE+0xf3df6>
 2c8:	4e470077          	.insn	4, 0x4e470077
 2cc:	2055                	jal	370 <__DYNAMIC+0x370>
 2ce:	5341                	li	t1,-16
 2d0:	3220                	.insn	2, 0x3220
 2d2:	342e                	.insn	2, 0x342e
 2d4:	0036                	c.slli	zero,0xd

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	735f 6474 6e69      	.insn	6, 0x6e696474735f
   6:	2e74                	.insn	2, 0x2e74
   8:	0068                	addi	a0,sp,12
   a:	6361                	lui	t1,0x18
   c:	65745f63          	bge	s0,s7,66a <__DYNAMIC+0x66a>
  10:	735f7473          	.insn	4, 0x735f7473
  14:	7165                	addi	sp,sp,-400
  16:	6300                	.insn	2, 0x6300
  18:	6f6d6d6f          	jal	s10,d670e <STACK_SIZE+0xd5b0e>
  1c:	006e                	c.slli	zero,0x1b
  1e:	73616e2f          	.insn	4, 0x73616e2f
  22:	2f69652f          	.insn	4, 0x2f69652f
  26:	72616873          	.insn	4, 0x72616873
  2a:	2f65                	jal	7e2 <__DYNAMIC+0x7e2>
  2c:	6f74                	.insn	2, 0x6f74
  2e:	2f736c6f          	jal	s8,36b24 <STACK_SIZE+0x35f24>
  32:	6465                	lui	s0,0x19
  34:	5f61                	li	t5,-8
  36:	7266                	.insn	2, 0x7266
  38:	6565                	lui	a0,0x19
  3a:	65726177          	.insn	4, 0x65726177
  3e:	7369722f          	.insn	4, 0x7369722f
  42:	362f7663          	bgeu	t5,sp,3ae <__DYNAMIC+0x3ae>
  46:	2d34                	.insn	2, 0x2d34
  48:	6c65                	lui	s8,0x19
  4a:	2d66                	.insn	2, 0x2d66
  4c:	6275                	lui	tp,0x1d
  4e:	6e75                	lui	t3,0x1d
  50:	7574                	.insn	2, 0x7574
  52:	322d                	jal	fffff97c <stack+0xfeefed7c>
  54:	2e34                	.insn	2, 0x2e34
  56:	3430                	.insn	2, 0x3430
  58:	672d                	lui	a4,0xb
  5a:	322f6363          	bltu	t5,sp,380 <__DYNAMIC+0x380>
  5e:	3230                	.insn	2, 0x3230
  60:	2e36                	.insn	2, 0x2e36
  62:	3430                	.insn	2, 0x3430
  64:	302e                	.insn	2, 0x302e
  66:	2f35                	jal	7a2 <__DYNAMIC+0x7a2>
  68:	6972                	.insn	2, 0x6972
  6a:	36766373          	.insn	4, 0x36766373
  6e:	2d34                	.insn	2, 0x2d34
  70:	6e75                	lui	t3,0x1d
  72:	776f6e6b          	.insn	4, 0x776f6e6b
  76:	2d6e                	.insn	2, 0x2d6e
  78:	6c65                	lui	s8,0x19
  7a:	2f66                	.insn	2, 0x2f66
  7c:	6e69                	lui	t3,0x1a
  7e:	64756c63          	bltu	a0,t2,6d6 <__DYNAMIC+0x6d6>
  82:	2f65                	jal	83a <__DYNAMIC+0x83a>
  84:	616d                	addi	sp,sp,240
  86:	6e696863          	bltu	s2,t1,776 <__DYNAMIC+0x776>
  8a:	0065                	c.nop	25
  8c:	6361                	lui	t1,0x18
  8e:	65745f63          	bge	s0,s7,6ec <__DYNAMIC+0x6ec>
  92:	735f7473          	.insn	4, 0x735f7473
  96:	7165                	addi	sp,sp,-400
  98:	6363612f          	.insn	4, 0x6363612f
  9c:	745f 7365 5f74      	.insn	6, 0x5f747365745f
  a2:	2e716573          	.insn	4, 0x2e716573
  a6:	6e2f0063          	beq	t5,sp,786 <__DYNAMIC+0x786>
  aa:	7361                	lui	t1,0xffff8
  ac:	2f69652f          	.insn	4, 0x2f69652f
  b0:	72616873          	.insn	4, 0x72616873
  b4:	2f65                	jal	86c <__DYNAMIC+0x86c>
  b6:	6f74                	.insn	2, 0x6f74
  b8:	2f736c6f          	jal	s8,36bae <STACK_SIZE+0x35fae>
  bc:	6465                	lui	s0,0x19
  be:	5f61                	li	t5,-8
  c0:	7266                	.insn	2, 0x7266
  c2:	6565                	lui	a0,0x19
  c4:	65726177          	.insn	4, 0x65726177
  c8:	7369722f          	.insn	4, 0x7369722f
  cc:	362f7663          	bgeu	t5,sp,438 <__DYNAMIC+0x438>
  d0:	2d34                	.insn	2, 0x2d34
  d2:	6c65                	lui	s8,0x19
  d4:	2d66                	.insn	2, 0x2d66
  d6:	6275                	lui	tp,0x1d
  d8:	6e75                	lui	t3,0x1d
  da:	7574                	.insn	2, 0x7574
  dc:	322d                	jal	fffffa06 <stack+0xfeefee06>
  de:	2e34                	.insn	2, 0x2e34
  e0:	3430                	.insn	2, 0x3430
  e2:	672d                	lui	a4,0xb
  e4:	322f6363          	bltu	t5,sp,40a <__DYNAMIC+0x40a>
  e8:	3230                	.insn	2, 0x3230
  ea:	2e36                	.insn	2, 0x2e36
  ec:	3430                	.insn	2, 0x3430
  ee:	302e                	.insn	2, 0x302e
  f0:	2f35                	jal	82c <__DYNAMIC+0x82c>
  f2:	6972                	.insn	2, 0x6972
  f4:	36766373          	.insn	4, 0x36766373
  f8:	2d34                	.insn	2, 0x2d34
  fa:	6e75                	lui	t3,0x1d
  fc:	776f6e6b          	.insn	4, 0x776f6e6b
 100:	2d6e                	.insn	2, 0x2d6e
 102:	6c65                	lui	s8,0x19
 104:	2f66                	.insn	2, 0x2f66
 106:	6e69                	lui	t3,0x1a
 108:	64756c63          	bltu	a0,t2,760 <__DYNAMIC+0x760>
 10c:	2f65                	jal	8c4 <__DYNAMIC+0x8c4>
 10e:	00737973          	.insn	4, 0x00737973
 112:	5f636f73          	.insn	4, 0x5f636f73
 116:	6c727463          	bgeu	tp,t2,7de <__DYNAMIC+0x7de>
 11a:	682e                	.insn	2, 0x682e
 11c:	2f00                	.insn	2, 0x2f00
 11e:	616e                	.insn	2, 0x616e
 120:	69652f73          	.insn	4, 0x69652f73
 124:	6d6f682f          	.insn	4, 0x6d6f682f
 128:	2f65                	jal	8e0 <__DYNAMIC+0x8e0>
 12a:	37386567          	.insn	4, 0x37386567
 12e:	6964                	.insn	2, 0x6964
 130:	2f78                	.insn	2, 0x2f78
 132:	6445                	lui	s0,0x11
 134:	3475                	jal	fffffbe0 <stack+0xfeefefe0>
 136:	70696843          	.insn	4, 0x70696843
 13a:	6469442f          	.insn	4, 0x6469442f
 13e:	6361                	lui	t1,0x18
 140:	6974                	.insn	2, 0x6974
 142:	6f532d63          	.insn	4, 0x6f532d63
 146:	77732f43          	.insn	4, 0x77732f43
 14a:	7500                	.insn	2, 0x7500
 14c:	7261                	lui	tp,0xffff8
 14e:	2e74                	.insn	2, 0x2e74
 150:	0068                	addi	a0,sp,12
 152:	645f 6665 7561      	.insn	6, 0x75616665645f
 158:	746c                	.insn	2, 0x746c
 15a:	745f 7079 7365      	.insn	6, 0x73657079745f
 160:	682e                	.insn	2, 0x682e
 162:	6300                	.insn	2, 0x6300
 164:	7472                	.insn	2, 0x7472
 166:	2e30                	.insn	2, 0x2e30
 168:	0053                	.short	0x0053

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
   c:	0c01                	addi	s8,s8,0 # 19000 <STACK_SIZE+0x18400>
   e:	0002                	c.slli	zero,0x0
  10:	0020                	addi	s0,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	008c                	addi	a1,sp,64
  1a:	0100                	addi	s0,sp,128
  1c:	023a                	slli	tp,tp,0xe
  1e:	0000                	unimp
  20:	0e42                	slli	t3,t3,0x10
  22:	4410                	lw	a2,8(s0)
  24:	0188                	addi	a0,sp,192
  26:	0289                	addi	t0,t0,2
  28:	0a015c03          	lhu	s8,160(sp)
  2c:	42c8                	lw	a0,4(a3)
  2e:	42c9                	li	t0,18
  30:	000e                	c.slli	zero,0x3
  32:	0b42                	slli	s6,s6,0x10
  34:	0014                	.insn	2, 0x0014
  36:	0000                	unimp
  38:	0000                	unimp
  3a:	0000                	unimp
  3c:	02c6                	slli	t0,t0,0x11
  3e:	0100                	addi	s0,sp,128
  40:	003a                	c.slli	zero,0xe
  42:	0000                	unimp
  44:	0e48                	addi	a0,sp,788
  46:	7010                	.insn	2, 0x7010
  48:	000e                	c.slli	zero,0x3
  4a:	0000                	unimp
  4c:	0014                	.insn	2, 0x0014
	...
  5a:	0000                	unimp
  5c:	0e42                	slli	t3,t3,0x10
  5e:	0210                	addi	a2,sp,256
  60:	0e00                	addi	s0,sp,784
  62:	0000                	unimp
  64:	000c                	.insn	2, 0x000c
	...
  72:	0000                	unimp
  74:	0014                	.insn	2, 0x0014
  76:	0000                	unimp
  78:	0000                	unimp
  7a:	0000                	unimp
  7c:	0300                	addi	s0,sp,384
  7e:	0100                	addi	s0,sp,128
  80:	003e                	c.slli	zero,0xf
  82:	0000                	unimp
  84:	0e48                	addi	a0,sp,788
  86:	7410                	.insn	2, 0x7410
  88:	000e                	c.slli	zero,0x3
  8a:	0000                	unimp
  8c:	0014                	.insn	2, 0x0014
  8e:	0000                	unimp
  90:	0000                	unimp
  92:	0000                	unimp
  94:	033e                	slli	t1,t1,0xf
  96:	0100                	addi	s0,sp,128
  98:	003e                	c.slli	zero,0xf
  9a:	0000                	unimp
  9c:	0e4c                	addi	a1,sp,788
  9e:	6e10                	.insn	2, 0x6e10
  a0:	000e                	c.slli	zero,0x3
  a2:	0000                	unimp
  a4:	0014                	.insn	2, 0x0014
	...
  b2:	0000                	unimp
  b4:	0e40                	addi	s0,sp,788
  b6:	4010                	lw	a2,0(s0)
  b8:	000e                	c.slli	zero,0x3
  ba:	0000                	unimp
  bc:	0038                	addi	a4,sp,8
  be:	0000                	unimp
  c0:	0000                	unimp
  c2:	0000                	unimp
  c4:	037c                	addi	a5,sp,396
  c6:	0100                	addi	s0,sp,128
  c8:	00a8                	addi	a0,sp,72
  ca:	0000                	unimp
  cc:	0e42                	slli	t3,t3,0x10
  ce:	4820                	lw	s0,80(s0)
  d0:	0181                	addi	gp,gp,0
  d2:	0288                	addi	a0,sp,320
  d4:	0389                	addi	t2,t2,2
  d6:	925e                	add	tp,tp,s7
  d8:	0204                	addi	s1,sp,256
  da:	0a38                	addi	a4,sp,280
  dc:	42d2                	lw	t0,20(sp)
  de:	42d24e0b          	.insn	4, 0x42d24e0b
  e2:	c10a                	sw	sp,128(sp)
  e4:	c844                	sw	s1,20(s0)
  e6:	c942                	sw	a6,144(sp)
  e8:	0e42                	slli	t3,t3,0x10
  ea:	4200                	lw	s0,0(a2)
  ec:	04924c0b          	.insn	4, 0x04924c0b
  f0:	0a50                	addi	a2,sp,276
  f2:	42d2                	lw	t0,20(sp)
  f4:	00d24c0b          	.insn	4, 0x00d24c0b
