
/nas/ei/home/ge87dix/Edu4Chip/Didactic-SoC/build//sw/acc_test_olpd.elf:     file format elf32-littleriscv


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
 1000080:	4420006f          	j	10004c2 <reset_handler>

01000084 <loop>:
 1000084:	0000006f          	j	1000084 <loop>

01000088 <default_handler>:
 1000088:	30200073          	mret

0100008c <load_matrix_pair_for_run>:
 100008c:	1141                	addi	sp,sp,-16
 100008e:	01510337          	lui	t1,0x1510
 1000092:	015108b7          	lui	a7,0x1510
 1000096:	01510837          	lui	a6,0x1510
 100009a:	c622                	sw	s0,12(sp)
 100009c:	c426                	sw	s1,8(sp)
 100009e:	0321                	addi	t1,t1,8 # 1510008 <stack+0x40f408>
 10000a0:	08b1                	addi	a7,a7,12 # 151000c <stack+0x40f40c>
 10000a2:	0841                	addi	a6,a6,16 # 1510010 <stack+0x40f410>
 10000a4:	4e81                	li	t4,0
 10000a6:	4e01                	li	t3,0
 10000a8:	4491                	li	s1,4
 10000aa:	4f21                	li	t5,8
 10000ac:	4285                	li	t0,1
 10000ae:	4389                	li	t2,2
 10000b0:	0ff00413          	li	s0,255
 10000b4:	86f6                	mv	a3,t4
 10000b6:	4781                	li	a5,0
 10000b8:	001e8f93          	addi	t6,t4,1
 10000bc:	06950c63          	beq	a0,s1,1000134 <load_matrix_pair_for_run+0xa8>
 10000c0:	00b32023          	sw	a1,0(t1)
 10000c4:	00ff8733          	add	a4,t6,a5
 10000c8:	00d8a023          	sw	a3,0(a7)
 10000cc:	0ff77713          	zext.b	a4,a4
 10000d0:	00e82023          	sw	a4,0(a6)
 10000d4:	02fe1d63          	bne	t3,a5,100010e <load_matrix_pair_for_run+0x82>
 10000d8:	08550663          	beq	a0,t0,1000164 <load_matrix_pair_for_run+0xd8>
 10000dc:	00c32023          	sw	a2,0(t1)
 10000e0:	00d8a023          	sw	a3,0(a7)
 10000e4:	0c750163          	beq	a0,t2,10001a6 <load_matrix_pair_for_run+0x11a>
 10000e8:	00882023          	sw	s0,0(a6)
 10000ec:	0785                	addi	a5,a5,1
 10000ee:	03e78963          	beq	a5,t5,1000120 <load_matrix_pair_for_run+0x94>
 10000f2:	00b32023          	sw	a1,0(t1)
 10000f6:	00fe86b3          	add	a3,t4,a5
 10000fa:	00ff8733          	add	a4,t6,a5
 10000fe:	00d8a023          	sw	a3,0(a7)
 1000102:	0ff77713          	zext.b	a4,a4
 1000106:	00e82023          	sw	a4,0(a6)
 100010a:	fcfe07e3          	beq	t3,a5,10000d8 <load_matrix_pair_for_run+0x4c>
 100010e:	00c32023          	sw	a2,0(t1)
 1000112:	00d8a023          	sw	a3,0(a7)
 1000116:	00082023          	sw	zero,0(a6)
 100011a:	0785                	addi	a5,a5,1
 100011c:	fde79be3          	bne	a5,t5,10000f2 <load_matrix_pair_for_run+0x66>
 1000120:	0e05                	addi	t3,t3,1
 1000122:	0ea1                	addi	t4,t4,8
 1000124:	f9ee18e3          	bne	t3,t5,10000b4 <load_matrix_pair_for_run+0x28>
 1000128:	4432                	lw	s0,12(sp)
 100012a:	44a2                	lw	s1,8(sp)
 100012c:	0141                	addi	sp,sp,16
 100012e:	8082                	ret
 1000130:	00fe86b3          	add	a3,t4,a5
 1000134:	00b32023          	sw	a1,0(t1)
 1000138:	00d8a023          	sw	a3,0(a7)
 100013c:	00582023          	sw	t0,0(a6)
 1000140:	00c32023          	sw	a2,0(t1)
 1000144:	40fe0733          	sub	a4,t3,a5
 1000148:	00d8a023          	sw	a3,0(a7)
 100014c:	00173713          	seqz	a4,a4
 1000150:	00e82023          	sw	a4,0(a6)
 1000154:	0785                	addi	a5,a5,1
 1000156:	fde79de3          	bne	a5,t5,1000130 <load_matrix_pair_for_run+0xa4>
 100015a:	0e05                	addi	t3,t3,1
 100015c:	0ea1                	addi	t4,t4,8
 100015e:	f5ee1be3          	bne	t3,t5,10000b4 <load_matrix_pair_for_run+0x28>
 1000162:	b7d9                	j	1000128 <load_matrix_pair_for_run+0x9c>
 1000164:	00c32023          	sw	a2,0(t1)
 1000168:	00d8a023          	sw	a3,0(a7)
 100016c:	0785                	addi	a5,a5,1
 100016e:	00ff8733          	add	a4,t6,a5
 1000172:	00582023          	sw	t0,0(a6)
 1000176:	00fe86b3          	add	a3,t4,a5
 100017a:	0ff77713          	zext.b	a4,a4
 100017e:	fbe781e3          	beq	a5,t5,1000120 <load_matrix_pair_for_run+0x94>
 1000182:	00b32023          	sw	a1,0(t1)
 1000186:	00d8a023          	sw	a3,0(a7)
 100018a:	00e82023          	sw	a4,0(a6)
 100018e:	fcfe0be3          	beq	t3,a5,1000164 <load_matrix_pair_for_run+0xd8>
 1000192:	00c32023          	sw	a2,0(t1)
 1000196:	00d8a023          	sw	a3,0(a7)
 100019a:	00082023          	sw	zero,0(a6)
 100019e:	0785                	addi	a5,a5,1
 10001a0:	f5e799e3          	bne	a5,t5,10000f2 <load_matrix_pair_for_run+0x66>
 10001a4:	bfb5                	j	1000120 <load_matrix_pair_for_run+0x94>
 10001a6:	0785                	addi	a5,a5,1
 10001a8:	00ff8733          	add	a4,t6,a5
 10001ac:	00a82023          	sw	a0,0(a6)
 10001b0:	00fe86b3          	add	a3,t4,a5
 10001b4:	0ff77713          	zext.b	a4,a4
 10001b8:	f7e784e3          	beq	a5,t5,1000120 <load_matrix_pair_for_run+0x94>
 10001bc:	00b32023          	sw	a1,0(t1)
 10001c0:	00d8a023          	sw	a3,0(a7)
 10001c4:	00e82023          	sw	a4,0(a6)
 10001c8:	f1c78ae3          	beq	a5,t3,10000dc <load_matrix_pair_for_run+0x50>
 10001cc:	00c32023          	sw	a2,0(t1)
 10001d0:	00d8a023          	sw	a3,0(a7)
 10001d4:	00082023          	sw	zero,0(a6)
 10001d8:	0785                	addi	a5,a5,1
 10001da:	f1e79ce3          	bne	a5,t5,10000f2 <load_matrix_pair_for_run+0x66>
 10001de:	b789                	j	1000120 <load_matrix_pair_for_run+0x94>

010001e0 <wait_and_verify_run>:
 10001e0:	015106b7          	lui	a3,0x1510
 10001e4:	0046af03          	lw	t5,4(a3) # 1510004 <stack+0x40f404>
 10001e8:	000f4737          	lui	a4,0xf4
 10001ec:	0691                	addi	a3,a3,4
 10001ee:	002f7f13          	andi	t5,t5,2
 10001f2:	862a                	mv	a2,a0
 10001f4:	24070713          	addi	a4,a4,576 # f4240 <STACK_SIZE+0xf3640>
 10001f8:	015105b7          	lui	a1,0x1510
 10001fc:	000f0463          	beqz	t5,1000204 <wait_and_verify_run+0x24>
 1000200:	a069                	j	100028a <wait_and_verify_run+0xaa>
 1000202:	cf3d                	beqz	a4,1000280 <wait_and_verify_run+0xa0>
 1000204:	429c                	lw	a5,0(a3)
 1000206:	177d                	addi	a4,a4,-1
 1000208:	8b89                	andi	a5,a5,2
 100020a:	dfe5                	beqz	a5,1000202 <wait_and_verify_run+0x22>
 100020c:	4f85                	li	t6,1
 100020e:	45a5                	li	a1,9
 1000210:	4501                	li	a0,0
 1000212:	015108b7          	lui	a7,0x1510
 1000216:	01510837          	lui	a6,0x1510
 100021a:	08d1                	addi	a7,a7,20 # 1510014 <stack+0x40f414>
 100021c:	0861                	addi	a6,a6,24 # 1510018 <stack+0x40f418>
 100021e:	4305                	li	t1,1
 1000220:	4e09                	li	t3,2
 1000222:	4e8d                	li	t4,3
 1000224:	42a1                	li	t0,8
 1000226:	877e                	mv	a4,t6
 1000228:	a829                	j	1000242 <wait_and_verify_run+0x62>
 100022a:	01c60563          	beq	a2,t3,1000234 <wait_and_verify_run+0x54>
 100022e:	4685                	li	a3,1
 1000230:	05d60563          	beq	a2,t4,100027a <wait_and_verify_run+0x9a>
 1000234:	8f95                	sub	a5,a5,a3
 1000236:	00f037b3          	snez	a5,a5
 100023a:	0705                	addi	a4,a4,1
 100023c:	953e                	add	a0,a0,a5
 100023e:	02e58463          	beq	a1,a4,1000266 <wait_and_verify_run+0x86>
 1000242:	fff70793          	addi	a5,a4,-1
 1000246:	00f8a023          	sw	a5,0(a7)
 100024a:	00082783          	lw	a5,0(a6)
 100024e:	00171693          	slli	a3,a4,0x1
 1000252:	fc661ce3          	bne	a2,t1,100022a <wait_and_verify_run+0x4a>
 1000256:	86ba                	mv	a3,a4
 1000258:	8f95                	sub	a5,a5,a3
 100025a:	00f037b3          	snez	a5,a5
 100025e:	0705                	addi	a4,a4,1
 1000260:	953e                	add	a0,a0,a5
 1000262:	fee590e3          	bne	a1,a4,1000242 <wait_and_verify_run+0x62>
 1000266:	0f05                	addi	t5,t5,1
 1000268:	05a1                	addi	a1,a1,8 # 1510008 <stack+0x40f408>
 100026a:	0fa1                	addi	t6,t6,8
 100026c:	fa5f1de3          	bne	t5,t0,1000226 <wait_and_verify_run+0x46>
 1000270:	015107b7          	lui	a5,0x1510
 1000274:	4709                	li	a4,2
 1000276:	c398                	sw	a4,0(a5)
 1000278:	8082                	ret
 100027a:	40e006b3          	neg	a3,a4
 100027e:	bf5d                	j	1000234 <wait_and_verify_run+0x54>
 1000280:	4789                	li	a5,2
 1000282:	06460513          	addi	a0,a2,100
 1000286:	c19c                	sw	a5,0(a1)
 1000288:	8082                	ret
 100028a:	4f85                	li	t6,1
 100028c:	45a5                	li	a1,9
 100028e:	4501                	li	a0,0
 1000290:	4f01                	li	t5,0
 1000292:	b741                	j	1000212 <wait_and_verify_run+0x32>

01000294 <ss_init>:
 1000294:	014007b7          	lui	a5,0x1400
 1000298:	4bd4                	lw	a3,20(a5)
 100029a:	1141                	addi	sp,sp,-16
 100029c:	4705                	li	a4,1
 100029e:	c636                	sw	a3,12(sp)
 10002a0:	46b2                	lw	a3,12(sp)
 10002a2:	00a71733          	sll	a4,a4,a0
 10002a6:	863e                	mv	a2,a5
 10002a8:	8ed9                	or	a3,a3,a4
 10002aa:	cbd4                	sw	a3,20(a5)
 10002ac:	43d4                	lw	a3,4(a5)
 10002ae:	4789                	li	a5,2
 10002b0:	00a797b3          	sll	a5,a5,a0
 10002b4:	c636                	sw	a3,12(sp)
 10002b6:	45b2                	lw	a1,12(sp)
 10002b8:	8fcd                	or	a5,a5,a1
 10002ba:	0017e793          	ori	a5,a5,1
 10002be:	c25c                	sw	a5,4(a2)
 10002c0:	4a1c                	lw	a5,16(a2)
 10002c2:	c63e                	sw	a5,12(sp)
 10002c4:	47b2                	lw	a5,12(sp)
 10002c6:	8f5d                	or	a4,a4,a5
 10002c8:	ca18                	sw	a4,16(a2)
 10002ca:	0141                	addi	sp,sp,16
 10002cc:	8082                	ret

010002ce <uart_init>:
 10002ce:	014006b7          	lui	a3,0x1400
 10002d2:	5698                	lw	a4,40(a3)
 10002d4:	1141                	addi	sp,sp,-16
 10002d6:	013007b7          	lui	a5,0x1300
 10002da:	c63a                	sw	a4,12(sp)
 10002dc:	4632                	lw	a2,12(sp)
 10002de:	4585                	li	a1,1
 10002e0:	4709                	li	a4,2
 10002e2:	00366613          	ori	a2,a2,3
 10002e6:	d690                	sw	a2,40(a3)
 10002e8:	10b7a423          	sw	a1,264(a5) # 1300108 <stack+0x1ff508>
 10002ec:	08300693          	li	a3,131
 10002f0:	10d7a623          	sw	a3,268(a5)
 10002f4:	466d                	li	a2,27
 10002f6:	10c7a023          	sw	a2,256(a5)
 10002fa:	460d                	li	a2,3
 10002fc:	10c7a623          	sw	a2,268(a5)
 1000300:	10b7a223          	sw	a1,260(a5)
 1000304:	10e7a423          	sw	a4,264(a5)
 1000308:	0141                	addi	sp,sp,16
 100030a:	8082                	ret

0100030c <uart_print>:
 100030c:	00054783          	lbu	a5,0(a0)
 1000310:	cf85                	beqz	a5,1000348 <uart_print+0x3c>
 1000312:	01300637          	lui	a2,0x1300
 1000316:	1141                	addi	sp,sp,-16
 1000318:	00150693          	addi	a3,a0,1
 100031c:	10060613          	addi	a2,a2,256 # 1300100 <stack+0x1ff500>
 1000320:	1f300713          	li	a4,499
 1000324:	c21c                	sw	a5,0(a2)
 1000326:	c602                	sw	zero,12(sp)
 1000328:	47b2                	lw	a5,12(sp)
 100032a:	00f76963          	bltu	a4,a5,100033c <uart_print+0x30>
 100032e:	0001                	nop
 1000330:	47b2                	lw	a5,12(sp)
 1000332:	0785                	addi	a5,a5,1
 1000334:	c63e                	sw	a5,12(sp)
 1000336:	47b2                	lw	a5,12(sp)
 1000338:	fef77be3          	bgeu	a4,a5,100032e <uart_print+0x22>
 100033c:	0006c783          	lbu	a5,0(a3) # 1400000 <stack+0x2ff400>
 1000340:	0685                	addi	a3,a3,1
 1000342:	f3ed                	bnez	a5,1000324 <uart_print+0x18>
 1000344:	0141                	addi	sp,sp,16
 1000346:	8082                	ret
 1000348:	8082                	ret

0100034a <main>:
 100034a:	7179                	addi	sp,sp,-48
 100034c:	4505                	li	a0,1
 100034e:	d606                	sw	ra,44(sp)
 1000350:	d226                	sw	s1,36(sp)
 1000352:	d422                	sw	s0,40(sp)
 1000354:	d04a                	sw	s2,32(sp)
 1000356:	ce4e                	sw	s3,28(sp)
 1000358:	01510937          	lui	s2,0x1510
 100035c:	3f25                	jal	1000294 <ss_init>
 100035e:	4409                	li	s0,2
 1000360:	37bd                	jal	10002ce <uart_init>
 1000362:	47a1                	li	a5,8
 1000364:	00892023          	sw	s0,0(s2) # 1510000 <stack+0x40f400>
 1000368:	02f92023          	sw	a5,32(s2)
 100036c:	02f92223          	sw	a5,36(s2)
 1000370:	02f92423          	sw	a5,40(s2)
 1000374:	02f92623          	sw	a5,44(s2)
 1000378:	8622                	mv	a2,s0
 100037a:	4581                	li	a1,0
 100037c:	4505                	li	a0,1
 100037e:	4985                	li	s3,1
 1000380:	3331                	jal	100008c <load_matrix_pair_for_run>
 1000382:	00490493          	addi	s1,s2,4
 1000386:	01392023          	sw	s3,0(s2)
 100038a:	409c                	lw	a5,0(s1)
 100038c:	8b91                	andi	a5,a5,4
 100038e:	efc9                	bnez	a5,1000428 <main+0xde>
 1000390:	460d                	li	a2,3
 1000392:	85ce                	mv	a1,s3
 1000394:	8522                	mv	a0,s0
 1000396:	39dd                	jal	100008c <load_matrix_pair_for_run>
 1000398:	854e                	mv	a0,s3
 100039a:	3599                	jal	10001e0 <wait_and_verify_run>
 100039c:	06300693          	li	a3,99
 10003a0:	0ca6c963          	blt	a3,a0,1000472 <main+0x128>
 10003a4:	01392023          	sw	s3,0(s2)
 10003a8:	4098                	lw	a4,0(s1)
 10003aa:	8b11                	andi	a4,a4,4
 10003ac:	ef59                	bnez	a4,100044a <main+0x100>
 10003ae:	c22a                	sw	a0,4(sp)
 10003b0:	8622                	mv	a2,s0
 10003b2:	4581                	li	a1,0
 10003b4:	450d                	li	a0,3
 10003b6:	39d9                	jal	100008c <load_matrix_pair_for_run>
 10003b8:	8522                	mv	a0,s0
 10003ba:	351d                	jal	10001e0 <wait_and_verify_run>
 10003bc:	06300693          	li	a3,99
 10003c0:	4792                	lw	a5,4(sp)
 10003c2:	0ca6c063          	blt	a3,a0,1000482 <main+0x138>
 10003c6:	01392023          	sw	s3,0(s2)
 10003ca:	4098                	lw	a4,0(s1)
 10003cc:	8b11                	andi	a4,a4,4
 10003ce:	eb41                	bnez	a4,100045e <main+0x114>
 10003d0:	c42a                	sw	a0,8(sp)
 10003d2:	460d                	li	a2,3
 10003d4:	85ce                	mv	a1,s3
 10003d6:	4511                	li	a0,4
 10003d8:	c23e                	sw	a5,4(sp)
 10003da:	394d                	jal	100008c <load_matrix_pair_for_run>
 10003dc:	450d                	li	a0,3
 10003de:	3509                	jal	10001e0 <wait_and_verify_run>
 10003e0:	06300693          	li	a3,99
 10003e4:	4792                	lw	a5,4(sp)
 10003e6:	4822                	lw	a6,8(sp)
 10003e8:	08a6cd63          	blt	a3,a0,1000482 <main+0x138>
 10003ec:	01392023          	sw	s3,0(s2)
 10003f0:	4098                	lw	a4,0(s1)
 10003f2:	8b11                	andi	a4,a4,4
 10003f4:	e755                	bnez	a4,10004a0 <main+0x156>
 10003f6:	c62a                	sw	a0,12(sp)
 10003f8:	4511                	li	a0,4
 10003fa:	c442                	sw	a6,8(sp)
 10003fc:	c23e                	sw	a5,4(sp)
 10003fe:	33cd                	jal	10001e0 <wait_and_verify_run>
 1000400:	06300693          	li	a3,99
 1000404:	4792                	lw	a5,4(sp)
 1000406:	4822                	lw	a6,8(sp)
 1000408:	4632                	lw	a2,12(sp)
 100040a:	842a                	mv	s0,a0
 100040c:	0aa6c463          	blt	a3,a0,10004b4 <main+0x16a>
 1000410:	97c2                	add	a5,a5,a6
 1000412:	97b2                	add	a5,a5,a2
 1000414:	97aa                	add	a5,a5,a0
 1000416:	c23e                	sw	a5,4(sp)
 1000418:	efad                	bnez	a5,1000492 <main+0x148>
 100041a:	01000537          	lui	a0,0x1000
 100041e:	50450513          	addi	a0,a0,1284 # 1000504 <_etext+0x12>
 1000422:	35ed                	jal	100030c <uart_print>
 1000424:	4792                	lw	a5,4(sp)
 1000426:	a811                	j	100043a <main+0xf0>
 1000428:	01000537          	lui	a0,0x1000
 100042c:	00892023          	sw	s0,0(s2)
 1000430:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 1000434:	3de1                	jal	100030c <uart_print>
 1000436:	0c900793          	li	a5,201
 100043a:	50b2                	lw	ra,44(sp)
 100043c:	5422                	lw	s0,40(sp)
 100043e:	5492                	lw	s1,36(sp)
 1000440:	5902                	lw	s2,32(sp)
 1000442:	49f2                	lw	s3,28(sp)
 1000444:	853e                	mv	a0,a5
 1000446:	6145                	addi	sp,sp,48
 1000448:	8082                	ret
 100044a:	01000537          	lui	a0,0x1000
 100044e:	00892023          	sw	s0,0(s2)
 1000452:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 1000456:	3d5d                	jal	100030c <uart_print>
 1000458:	0ca00793          	li	a5,202
 100045c:	bff9                	j	100043a <main+0xf0>
 100045e:	01000537          	lui	a0,0x1000
 1000462:	00892023          	sw	s0,0(s2)
 1000466:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 100046a:	354d                	jal	100030c <uart_print>
 100046c:	0cb00793          	li	a5,203
 1000470:	b7e9                	j	100043a <main+0xf0>
 1000472:	c22a                	sw	a0,4(sp)
 1000474:	01000537          	lui	a0,0x1000
 1000478:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 100047c:	3d41                	jal	100030c <uart_print>
 100047e:	4792                	lw	a5,4(sp)
 1000480:	bf6d                	j	100043a <main+0xf0>
 1000482:	c22a                	sw	a0,4(sp)
 1000484:	01000537          	lui	a0,0x1000
 1000488:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 100048c:	3541                	jal	100030c <uart_print>
 100048e:	4792                	lw	a5,4(sp)
 1000490:	b76d                	j	100043a <main+0xf0>
 1000492:	01000537          	lui	a0,0x1000
 1000496:	51450513          	addi	a0,a0,1300 # 1000514 <_etext+0x22>
 100049a:	3d8d                	jal	100030c <uart_print>
 100049c:	4792                	lw	a5,4(sp)
 100049e:	bf71                	j	100043a <main+0xf0>
 10004a0:	01000537          	lui	a0,0x1000
 10004a4:	00892023          	sw	s0,0(s2)
 10004a8:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 10004ac:	3585                	jal	100030c <uart_print>
 10004ae:	0cc00793          	li	a5,204
 10004b2:	b761                	j	100043a <main+0xf0>
 10004b4:	01000537          	lui	a0,0x1000
 10004b8:	4f450513          	addi	a0,a0,1268 # 10004f4 <_etext+0x2>
 10004bc:	3d81                	jal	100030c <uart_print>
 10004be:	87a2                	mv	a5,s0
 10004c0:	bfad                	j	100043a <main+0xf0>

010004c2 <reset_handler>:
 10004c2:	00100117          	auipc	sp,0x100
 10004c6:	73e10113          	addi	sp,sp,1854 # 1100c00 <stack>
 10004ca:	00000097          	auipc	ra,0x0
 10004ce:	00c08093          	addi	ra,ra,12 # 10004d6 <postMain>
 10004d2:	e79ff06f          	j	100034a <main>

010004d6 <postMain>:
 10004d6:	012002b7          	lui	t0,0x1200
 10004da:	38028293          	addi	t0,t0,896 # 1200380 <stack+0xff780>
 10004de:	80000337          	lui	t1,0x80000
 10004e2:	00656533          	or	a0,a0,t1
 10004e6:	00a2a023          	sw	a0,0(t0)
 10004ea:	b9bff06f          	j	1000084 <loop>

010004ee <changeStack>:
 10004ee:	8132                	mv	sp,a2
 10004f0:	8582                	jr	a1

010004f2 <_etext>:
 10004f2:	0000                	unimp
 10004f4:	4341                	li	t1,16
 10004f6:	564f5f43          	.insn	4, 0x564f5f43
 10004fa:	5f4c                	lw	a1,60(a4)
 10004fc:	5245                	li	tp,-15
 10004fe:	4f52                	lw	t5,20(sp)
 1000500:	0d52                	slli	s10,s10,0x14
 1000502:	000a                	c.slli	zero,0x2
 1000504:	4341                	li	t1,16
 1000506:	564f5f43          	.insn	4, 0x564f5f43
 100050a:	5f4c                	lw	a1,60(a4)
 100050c:	4150                	lw	a2,4(a0)
 100050e:	0a0d5353          	.insn	4, 0x0a0d5353
 1000512:	0000                	unimp
 1000514:	4341                	li	t1,16
 1000516:	564f5f43          	.insn	4, 0x564f5f43
 100051a:	5f4c                	lw	a1,60(a4)
 100051c:	4146                	lw	sp,80(sp)
 100051e:	4c49                	li	s8,18
 1000520:	0a0d                	addi	s4,s4,3
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0a96                	slli	s5,s5,0x5
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0401                	addi	s0,s0,0
   8:	0000                	unimp
   a:	0000                	unimp
   c:	281c                	.insn	2, 0x281c
   e:	0002                	c.slli	zero,0x0
  10:	1d00                	addi	s0,sp,688
  12:	03164703          	lbu	a4,49(a2)
  16:	1100                	addi	s0,sp,160
  18:	0000                	unimp
  1a:	1200                	addi	s0,sp,288
  1c:	0001                	nop
  1e:	5000                	lw	s0,32(s0)
  20:	0002                	c.slli	zero,0x0
	...
  2a:	0900                	addi	s0,sp,144
  2c:	017e                	slli	sp,sp,0x1f
  2e:	0000                	unimp
  30:	2904                	.insn	2, 0x2904
  32:	00003717          	auipc	a4,0x3
  36:	0700                	addi	s0,sp,896
  38:	0601                	addi	a2,a2,0
  3a:	0148                	addi	a0,sp,132
  3c:	0000                	unimp
  3e:	e709                	bnez	a4,48 <__DYNAMIC+0x48>
  40:	0000                	unimp
  42:	0400                	addi	s0,sp,512
  44:	004a182b          	.insn	4, 0x004a182b
  48:	0000                	unimp
  4a:	46080107          	.insn	4, 0x46080107
  4e:	0001                	nop
  50:	0700                	addi	s0,sp,896
  52:	0502                	c.slli	a0,0x0
  54:	001e                	c.slli	zero,0x7
  56:	0000                	unimp
  58:	6b070207          	.insn	4, 0x6b070207
  5c:	0001                	nop
  5e:	0900                	addi	s0,sp,144
  60:	000001fb          	.insn	4, 0x01fb
  64:	4d04                	lw	s1,24(a0)
  66:	6b18                	.insn	2, 0x6b18
  68:	0000                	unimp
  6a:	0700                	addi	s0,sp,896
  6c:	0504                	addi	s1,sp,640
  6e:	00b1                	addi	ra,ra,12
  70:	0000                	unimp
  72:	5909                	li	s2,-30
  74:	0000                	unimp
  76:	0400                	addi	s0,sp,512
  78:	007e194f          	.insn	4, 0x007e194f
  7c:	0000                	unimp
  7e:	59070407          	.insn	4, 0x59070407
  82:	0001                	nop
  84:	0700                	addi	s0,sp,896
  86:	0508                	addi	a0,sp,640
  88:	00ac                	addi	a1,sp,72
  8a:	0000                	unimp
  8c:	54070807          	.insn	4, 0x54070807
  90:	0001                	nop
  92:	1d00                	addi	s0,sp,688
  94:	0504                	addi	s1,sp,640
  96:	6e69                	lui	t3,0x1a
  98:	0074                	addi	a3,sp,12
  9a:	5e070407          	.insn	4, 0x5e070407
  9e:	0001                	nop
  a0:	0900                	addi	s0,sp,144
  a2:	0180                	addi	s0,sp,192
  a4:	0000                	unimp
  a6:	1405                	addi	s0,s0,-31
  a8:	2b12                	.insn	2, 0x2b12
  aa:	0000                	unimp
  ac:	0900                	addi	s0,sp,144
  ae:	00e9                	addi	ra,ra,26
  b0:	0000                	unimp
  b2:	1805                	addi	a6,a6,-31
  b4:	00003e13          	sltiu	t3,zero,0
  b8:	0900                	addi	s0,sp,144
  ba:	01fd                	addi	gp,gp,31
  bc:	0000                	unimp
  be:	2c05                	jal	2ee <__DYNAMIC+0x2ee>
  c0:	00005f13          	srli	t5,zero,0x0
  c4:	0900                	addi	s0,sp,144
  c6:	0000005b          	.insn	4, 0x005b
  ca:	3005                	jal	fffff8ea <stack+0xfeefecea>
  cc:	7214                	.insn	2, 0x7214
  ce:	0000                	unimp
  d0:	1500                	addi	s0,sp,672
  d2:	00c5                	addi	ra,ra,17
  d4:	0000                	unimp
  d6:	c516                	sw	t0,136(sp)
  d8:	0000                	unimp
  da:	1e00                	addi	s0,sp,816
  dc:	0054                	addi	a3,sp,4
  de:	0000                	unimp
  e0:	1301                	addi	t1,t1,-32 # 7fffffe0 <stack+0x7eeff3e0>
  e2:	0501                	addi	a0,a0,0
  e4:	00000093          	li	ra,0
  e8:	034a                	slli	t1,t1,0x12
  ea:	0100                	addi	s0,sp,128
  ec:	0178                	addi	a4,sp,140
  ee:	0000                	unimp
  f0:	9c01                	.insn	2, 0x9c01
  f2:	0401                	addi	s0,s0,0
  f4:	0000                	unimp
  f6:	00006f17          	auipc	t5,0x6
  fa:	1500                	addi	s0,sp,672
  fc:	9301                	srli	a4,a4,0x20
  fe:	0000                	unimp
 100:	3800                	.insn	2, 0x3800
 102:	0000                	unimp
 104:	0c00                	addi	s0,sp,528
 106:	0000                	unimp
 108:	1700                	addi	s0,sp,928
 10a:	01d4                	addi	a3,sp,196
 10c:	0000                	unimp
 10e:	0116                	slli	sp,sp,0x5
 110:	00000093          	li	ra,0
 114:	0131                	addi	sp,sp,12
 116:	0000                	unimp
 118:	00ee                	slli	ra,ra,0x1b
 11a:	0000                	unimp
 11c:	cb18                	sw	a4,16(a4)
 11e:	62000007          	.insn	4, 0x62000007
 122:	0f010003          	lb	zero,240(sp)
 126:	000001a7          	.insn	4, 0x01a7
 12a:	0135                	addi	sp,sp,13
 12c:	0a05                	addi	s4,s4,1
 12e:	07d1                	addi	a5,a5,20
 130:	0000                	unimp
 132:	035e                	slli	t1,t1,0x17
 134:	0100                	addi	s0,sp,128
 136:	b90a                	.insn	2, 0xb90a
 138:	0001                	nop
 13a:	1900                	addi	s0,sp,176
 13c:	0501                	addi	a0,a0,0
 13e:	014c                	addi	a1,sp,132
 140:	0000                	unimp
 142:	621f 0003 7801      	.insn	6, 0x78010003621f
 148:	0008                	.insn	2, 0x0008
 14a:	0000                	unimp
 14c:	940a                	add	s0,s0,sp
 14e:	68000007          	.insn	4, 0x68000007
 152:	14010003          	lb	zero,320(sp)
 156:	01c5                	addi	gp,gp,17
 158:	0000                	unimp
 15a:	0136                	slli	sp,sp,0xd
 15c:	9605                	srai	a2,a2,0x21
 15e:	0001                	nop
 160:	0100                	addi	s0,sp,128
 162:	079e                	slli	a5,a5,0x7
 164:	0000                	unimp
 166:	01dd                	addi	gp,gp,23
 168:	0000                	unimp
 16a:	000001db          	.insn	4, 0x01db
 16e:	a901                	j	57e <__DYNAMIC+0x57e>
 170:	dd000007          	.insn	4, 0xdd000007
 174:	0001                	nop
 176:	db00                	sw	s0,48(a4)
 178:	0001                	nop
 17a:	0100                	addi	s0,sp,128
 17c:	07b4                	addi	a3,sp,968
 17e:	0000                	unimp
 180:	01dd                	addi	gp,gp,23
 182:	0000                	unimp
 184:	000001db          	.insn	4, 0x01db
 188:	bf01                	j	98 <__DYNAMIC+0x98>
 18a:	dd000007          	.insn	4, 0xdd000007
 18e:	0001                	nop
 190:	db00                	sw	s0,48(a4)
 192:	0001                	nop
 194:	0000                	unimp
 196:	eb0a                	.insn	2, 0xeb0a
 198:	0006                	c.slli	zero,0x1
 19a:	8200                	.insn	2, 0x8200
 19c:	22010003          	lb	zero,544(sp)
 1a0:	01d1                	addi	gp,gp,20
 1a2:	0000                	unimp
 1a4:	0140                	addi	s0,sp,132
 1a6:	c712                	sw	tp,140(sp)
 1a8:	0001                	nop
 1aa:	0100                	addi	s0,sp,128
 1ac:	06fa                	slli	a3,a3,0x1e
 1ae:	0000                	unimp
 1b0:	000001eb          	.insn	4, 0x01eb
 1b4:	000001e7          	jalr	gp,zero # 0 <__DYNAMIC>
 1b8:	0007cb0f          	.insn	4, 0x0007cb0f
 1bc:	2800                	.insn	2, 0x2800
 1be:	0004                	.insn	2, 0x0004
 1c0:	6f01                	.insn	2, 0x6f01
 1c2:	000001e7          	jalr	gp,zero # 0 <__DYNAMIC>
 1c6:	0a00                	addi	s0,sp,272
 1c8:	000006eb          	.insn	4, 0x06eb
 1cc:	03a4                	addi	s1,sp,456
 1ce:	0100                	addi	s0,sp,128
 1d0:	0001f333          	and	t1,gp,zero
 1d4:	5200                	lw	s0,32(a2)
 1d6:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
 1d8:	01f8                	addi	a4,sp,204
 1da:	0000                	unimp
 1dc:	fa01                	bnez	a2,ec <__DYNAMIC+0xec>
 1de:	0006                	c.slli	zero,0x1
 1e0:	0400                	addi	s0,sp,512
 1e2:	0002                	c.slli	zero,0x0
 1e4:	ff00                	.insn	2, 0xff00
 1e6:	0001                	nop
 1e8:	0f00                	addi	s0,sp,912
 1ea:	000007cb          	.insn	4, 0x07cb
 1ee:	044a                	slli	s0,s0,0x12
 1f0:	0100                	addi	s0,sp,128
 1f2:	0002067b          	.insn	4, 0x0002067b
 1f6:	0000                	unimp
 1f8:	eb0a                	.insn	2, 0xeb0a
 1fa:	0006                	c.slli	zero,0x1
 1fc:	c600                	sw	s0,8(a2)
 1fe:	44010003          	lb	zero,1088(sp)
 202:	0212                	slli	tp,tp,0x4
 204:	0000                	unimp
 206:	0164                	addi	s1,sp,140
 208:	2912                	.insn	2, 0x2912
 20a:	0002                	c.slli	zero,0x0
 20c:	0100                	addi	s0,sp,128
 20e:	06fa                	slli	a3,a3,0x1e
 210:	0000                	unimp
 212:	021e                	slli	tp,tp,0x7
 214:	0000                	unimp
 216:	0218                	addi	a4,sp,256
 218:	0000                	unimp
 21a:	0007cb0f          	.insn	4, 0x0007cb0f
 21e:	5e00                	lw	s0,56(a2)
 220:	0004                	.insn	2, 0x0004
 222:	8601                	c.srai	a2,0x0
 224:	0225                	addi	tp,tp,9 # 9 <__DYNAMIC+0x9>
 226:	0000                	unimp
 228:	0a00                	addi	s0,sp,272
 22a:	000006eb          	.insn	4, 0x06eb
 22e:	03ec                	addi	a1,sp,460
 230:	0100                	addi	s0,sp,128
 232:	3155                	jal	fffffed6 <stack+0xfeeff2d6>
 234:	0002                	c.slli	zero,0x0
 236:	7600                	.insn	2, 0x7600
 238:	1201                	addi	tp,tp,-32 # ffffffe0 <stack+0xfeeff3e0>
 23a:	025a                	slli	tp,tp,0x16
 23c:	0000                	unimp
 23e:	fa01                	bnez	a2,14e <__DYNAMIC+0x14e>
 240:	0006                	c.slli	zero,0x1
 242:	3800                	.insn	2, 0x3800
 244:	0002                	c.slli	zero,0x0
 246:	3200                	.insn	2, 0x3200
 248:	0002                	c.slli	zero,0x0
 24a:	0f00                	addi	s0,sp,912
 24c:	000007cb          	.insn	4, 0x07cb
 250:	04a0                	addi	s0,sp,584
 252:	0100                	addi	s0,sp,128
 254:	449d                	li	s1,7
 256:	0002                	c.slli	zero,0x0
 258:	0000                	unimp
 25a:	00035e03          	lhu	t3,0(t1)
 25e:	f401                	bnez	s0,166 <__DYNAMIC+0x166>
 260:	0008                	.insn	2, 0x0008
 262:	6d00                	.insn	2, 0x6d00
 264:	0002                	c.slli	zero,0x0
 266:	0200                	addi	s0,sp,256
 268:	5a01                	li	s4,-32
 26a:	3101                	jal	fffffe6a <stack+0xfeeff26a>
 26c:	0300                	addi	s0,sp,384
 26e:	0382                	c.slli	t2,0x0
 270:	0100                	addi	s0,sp,128
 272:	047d                	addi	s0,s0,31
 274:	0000                	unimp
 276:	028c                	addi	a1,sp,320
 278:	0000                	unimp
 27a:	0102                	c.slli	sp,0x0
 27c:	025a                	slli	tp,tp,0x16
 27e:	01020083          	lb	ra,16(tp) # 10 <__DYNAMIC+0x10>
 282:	0230015b          	.insn	4, 0x0230015b
 286:	5c01                	li	s8,-32
 288:	7802                	.insn	2, 0x7802
 28a:	0000                	unimp
 28c:	00039803          	lh	a6,0(t2)
 290:	7d01                	lui	s10,0xfffe0
 292:	0004                	.insn	2, 0x0004
 294:	ab00                	.insn	2, 0xab00
 296:	0002                	c.slli	zero,0x0
 298:	0200                	addi	s0,sp,256
 29a:	5a01                	li	s4,-32
 29c:	7802                	.insn	2, 0x7802
 29e:	0200                	addi	s0,sp,256
 2a0:	5b01                	li	s6,-32
 2a2:	8302                	jr	t1
 2a4:	0200                	addi	s0,sp,256
 2a6:	5c01                	li	s8,-32
 2a8:	3301                	jal	ffffffa8 <stack+0xfeeff3a8>
 2aa:	0300                	addi	s0,sp,384
 2ac:	039c                	addi	a5,sp,448
 2ae:	0100                	addi	s0,sp,128
 2b0:	0401                	addi	s0,s0,0
 2b2:	0000                	unimp
 2b4:	000002bf 025a0102 	.insn	8, 0x025a0102000002bf
 2bc:	03000083          	lb	ra,48(zero) # 30 <__DYNAMIC+0x30>
 2c0:	03b8                	addi	a4,sp,456
 2c2:	0100                	addi	s0,sp,128
 2c4:	047d                	addi	s0,s0,31
 2c6:	0000                	unimp
 2c8:	02dd                	addi	t0,t0,23
 2ca:	0000                	unimp
 2cc:	0102                	c.slli	sp,0x0
 2ce:	015a                	slli	sp,sp,0x16
 2d0:	5b010233          	.insn	4, 0x5b010233
 2d4:	3001                	jal	fffffad4 <stack+0xfeefeed4>
 2d6:	0102                	c.slli	sp,0x0
 2d8:	025c                	addi	a5,sp,260
 2da:	0078                	addi	a4,sp,12
 2dc:	0300                	addi	s0,sp,384
 2de:	03bc                	addi	a5,sp,456
 2e0:	0100                	addi	s0,sp,128
 2e2:	0401                	addi	s0,s0,0
 2e4:	0000                	unimp
 2e6:	02f1                	addi	t0,t0,28
 2e8:	0000                	unimp
 2ea:	0102                	c.slli	sp,0x0
 2ec:	025a                	slli	tp,tp,0x16
 2ee:	0078                	addi	a4,sp,12
 2f0:	0300                	addi	s0,sp,384
 2f2:	03dc                	addi	a5,sp,452
 2f4:	0100                	addi	s0,sp,128
 2f6:	047d                	addi	s0,s0,31
 2f8:	0000                	unimp
 2fa:	0000030f          	.insn	4, 0x030f
 2fe:	0102                	c.slli	sp,0x0
 300:	015a                	slli	sp,sp,0x16
 302:	0234                	addi	a3,sp,264
 304:	5b01                	li	s6,-32
 306:	8302                	jr	t1
 308:	0200                	addi	s0,sp,256
 30a:	5c01                	li	s8,-32
 30c:	3301                	jal	c <__DYNAMIC+0xc>
 30e:	0300                	addi	s0,sp,384
 310:	03e0                	addi	s0,sp,460
 312:	0100                	addi	s0,sp,128
 314:	0401                	addi	s0,s0,0
 316:	0000                	unimp
 318:	0322                	slli	t1,t1,0x8
 31a:	0000                	unimp
 31c:	0102                	c.slli	sp,0x0
 31e:	015a                	slli	sp,sp,0x16
 320:	00030033          	add	zero,t1,zero
 324:	0004                	.insn	2, 0x0004
 326:	0101                	addi	sp,sp,0
 328:	0004                	.insn	2, 0x0004
 32a:	3500                	.insn	2, 0x3500
 32c:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
 330:	5a01                	li	s4,-32
 332:	3401                	jal	fffffd32 <stack+0xfeeff132>
 334:	0300                	addi	s0,sp,384
 336:	0424                	addi	s1,sp,520
 338:	0100                	addi	s0,sp,128
 33a:	0821                	addi	a6,a6,8
 33c:	0000                	unimp
 33e:	034c                	addi	a1,sp,388
 340:	0000                	unimp
 342:	0102                	c.slli	sp,0x0
 344:	055a                	slli	a0,a0,0x16
 346:	00050403          	lb	s0,0(a0)
 34a:	0001                	nop
 34c:	00043603          	.insn	4, 0x00043603
 350:	2101                	jal	750 <__DYNAMIC+0x750>
 352:	0008                	.insn	2, 0x0008
 354:	6300                	.insn	2, 0x6300
 356:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
 35a:	5a01                	li	s4,-32
 35c:	0305                	addi	t1,t1,1
 35e:	04f4                	addi	a3,sp,588
 360:	0100                	addi	s0,sp,128
 362:	0300                	addi	s0,sp,384
 364:	0458                	addi	a4,sp,516
 366:	0100                	addi	s0,sp,128
 368:	0821                	addi	a6,a6,8
 36a:	0000                	unimp
 36c:	037a                	slli	t1,t1,0x1e
 36e:	0000                	unimp
 370:	0102                	c.slli	sp,0x0
 372:	055a                	slli	a0,a0,0x16
 374:	0004f403          	.insn	4, 0x0004f403
 378:	0001                	nop
 37a:	00046c03          	.insn	4, 0x00046c03
 37e:	2101                	jal	77e <__DYNAMIC+0x77e>
 380:	0008                	.insn	2, 0x0008
 382:	9100                	.insn	2, 0x9100
 384:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
 388:	5a01                	li	s4,-32
 38a:	0305                	addi	t1,t1,1
 38c:	04f4                	addi	a3,sp,588
 38e:	0100                	addi	s0,sp,128
 390:	0300                	addi	s0,sp,384
 392:	047e                	slli	s0,s0,0x1f
 394:	0100                	addi	s0,sp,128
 396:	0821                	addi	a6,a6,8
 398:	0000                	unimp
 39a:	03a8                	addi	a0,sp,456
 39c:	0000                	unimp
 39e:	0102                	c.slli	sp,0x0
 3a0:	055a                	slli	a0,a0,0x16
 3a2:	0004f403          	.insn	4, 0x0004f403
 3a6:	0001                	nop
 3a8:	00048e03          	lb	t3,0(s1)
 3ac:	2101                	jal	7ac <__DYNAMIC+0x7ac>
 3ae:	0008                	.insn	2, 0x0008
 3b0:	bf00                	.insn	2, 0xbf00
 3b2:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
 3b6:	5a01                	li	s4,-32
 3b8:	0305                	addi	t1,t1,1
 3ba:	04f4                	addi	a3,sp,588
 3bc:	0100                	addi	s0,sp,128
 3be:	0300                	addi	s0,sp,384
 3c0:	049c                	addi	a5,sp,576
 3c2:	0100                	addi	s0,sp,128
 3c4:	0821                	addi	a6,a6,8
 3c6:	0000                	unimp
 3c8:	03d6                	slli	t2,t2,0x15
 3ca:	0000                	unimp
 3cc:	0102                	c.slli	sp,0x0
 3ce:	055a                	slli	a0,a0,0x16
 3d0:	00051403          	lh	s0,0(a0)
 3d4:	0001                	nop
 3d6:	0004ae03          	lw	t3,0(s1)
 3da:	2101                	jal	7da <__DYNAMIC+0x7da>
 3dc:	0008                	.insn	2, 0x0008
 3de:	ed00                	.insn	2, 0xed00
 3e0:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
 3e4:	5a01                	li	s4,-32
 3e6:	0305                	addi	t1,t1,1
 3e8:	04f4                	addi	a3,sp,588
 3ea:	0100                	addi	s0,sp,128
 3ec:	2000                	.insn	2, 0x2000
 3ee:	04be                	slli	s1,s1,0xf
 3f0:	0100                	addi	s0,sp,128
 3f2:	0821                	addi	a6,a6,8
 3f4:	0000                	unimp
 3f6:	0102                	c.slli	sp,0x0
 3f8:	055a                	slli	a0,a0,0x16
 3fa:	0004f403          	.insn	4, 0x0004f403
 3fe:	0001                	nop
 400:	0800                	addi	s0,sp,16
 402:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
 404:	0000                	unimp
 406:	0cfe                	slli	s9,s9,0x1f
 408:	00000093          	li	ra,0
 40c:	0429                	addi	s0,s0,10
 40e:	0000                	unimp
 410:	0004                	.insn	2, 0x0004
 412:	0000                	unimp
 414:	fe00                	.insn	2, 0xfe00
 416:	c529                	beqz	a0,460 <__DYNAMIC+0x460>
 418:	0000                	unimp
 41a:	2100                	.insn	2, 0x2100
 41c:	0000006f          	j	41c <__DYNAMIC+0x41c>
 420:	0001                	nop
 422:	0901                	addi	s2,s2,0
 424:	00000093          	li	ra,0
 428:	0800                	addi	s0,sp,16
 42a:	01bd                	addi	gp,gp,15
 42c:	0000                	unimp
 42e:	00930ce7          	jalr	s9,9(t1)
 432:	0000                	unimp
 434:	047d                	addi	s0,s0,31
 436:	0000                	unimp
 438:	0004                	.insn	2, 0x0004
 43a:	0000                	unimp
 43c:	e700                	.insn	2, 0xe700
 43e:	0000c523          	.insn	4, 0xc523
 442:	1100                	addi	s0,sp,160
 444:	6f72                	.insn	2, 0x6f72
 446:	0ee90077          	.insn	4, 0x0ee90077
 44a:	00c5                	addi	ra,ra,17
 44c:	0000                	unimp
 44e:	6311                	lui	t1,0x4
 450:	ea006c6f          	jal	s8,fff06af0 <stack+0xfee05ef0>
 454:	c50e                	sw	gp,136(sp)
 456:	0000                	unimp
 458:	0b00                	addi	s0,sp,400
 45a:	0000006f          	j	45a <__DYNAMIC+0x45a>
 45e:	009309eb          	.insn	4, 0x009309eb
 462:	0000                	unimp
 464:	0b22                	slli	s6,s6,0x8
 466:	0012                	c.slli	zero,0x4
 468:	0000                	unimp
 46a:	00b915ef          	jal	a1,91c74 <STACK_SIZE+0x91074>
 46e:	0000                	unimp
 470:	0001cb0b          	.insn	4, 0x0001cb0b
 474:	f000                	.insn	2, 0xf000
 476:	b915                	j	aa <__DYNAMIC+0xaa>
 478:	0000                	unimp
 47a:	0000                	unimp
 47c:	2300                	.insn	2, 0x2300
 47e:	0028                	addi	a0,sp,8
 480:	0000                	unimp
 482:	d101                	beqz	a0,382 <__DYNAMIC+0x382>
 484:	8c0d                	sub	s0,s0,a1
 486:	0000                	unimp
 488:	5401                	li	s0,-32
 48a:	0001                	nop
 48c:	0100                	addi	s0,sp,128
 48e:	299c                	.insn	2, 0x299c
 490:	0006                	c.slli	zero,0x1
 492:	0c00                	addi	s0,sp,528
 494:	0000                	unimp
 496:	0000                	unimp
 498:	d101                	beqz	a0,398 <__DYNAMIC+0x398>
 49a:	0000c52f          	.insn	4, 0xc52f
 49e:	0100                	addi	s0,sp,128
 4a0:	0c5a                	slli	s8,s8,0x16
 4a2:	00000187          	.insn	4, 0x0187
 4a6:	d201                	beqz	a2,3a6 <__DYNAMIC+0x3a6>
 4a8:	0000c52f          	.insn	4, 0xc52f
 4ac:	0100                	addi	s0,sp,128
 4ae:	01900c5b          	.insn	4, 0x01900c5b
 4b2:	0000                	unimp
 4b4:	d301                	beqz	a4,3b4 <__DYNAMIC+0x3b4>
 4b6:	0000c52f          	.insn	4, 0xc52f
 4ba:	0100                	addi	s0,sp,128
 4bc:	125c                	addi	a5,sp,292
 4be:	6f72                	.insn	2, 0x6f72
 4c0:	d5010077          	.insn	4, 0xd5010077
 4c4:	c50e                	sw	gp,136(sp)
 4c6:	0000                	unimp
 4c8:	5000                	lw	s0,32(s0)
 4ca:	0002                	c.slli	zero,0x0
 4cc:	4c00                	lw	s0,24(s0)
 4ce:	0002                	c.slli	zero,0x0
 4d0:	1200                	addi	s0,sp,288
 4d2:	006c6f63          	bltu	s8,t1,4f0 <__DYNAMIC+0x4f0>
 4d6:	d601                	beqz	a2,3de <__DYNAMIC+0x3de>
 4d8:	c50e                	sw	gp,136(sp)
 4da:	0000                	unimp
 4dc:	7200                	.insn	2, 0x7200
 4de:	0002                	c.slli	zero,0x0
 4e0:	6200                	.insn	2, 0x6200
 4e2:	0002                	c.slli	zero,0x0
 4e4:	1000                	addi	s0,sp,32
 4e6:	0752                	slli	a4,a4,0x14
 4e8:	0000                	unimp
 4ea:	00c0                	addi	s0,sp,68
 4ec:	0100                	addi	s0,sp,128
 4ee:	0c1d                	addi	s8,s8,7
 4f0:	0000                	unimp
 4f2:	da00                	sw	s0,48(a2)
 4f4:	3b0d                	jal	226 <__DYNAMIC+0x226>
 4f6:	0005                	c.nop	1
 4f8:	0100                	addi	s0,sp,128
 4fa:	075c                	addi	a5,sp,900
 4fc:	0000                	unimp
 4fe:	02ae                	slli	t0,t0,0xb
 500:	0000                	unimp
 502:	029e                	slli	t0,t0,0x7
 504:	0000                	unimp
 506:	6701                	.insn	2, 0x6701
 508:	e6000007          	.insn	4, 0xe6000007
 50c:	0002                	c.slli	zero,0x0
 50e:	d800                	sw	s0,48(s0)
 510:	0002                	c.slli	zero,0x0
 512:	0100                	addi	s0,sp,128
 514:	0772                	slli	a4,a4,0x1c
 516:	0000                	unimp
 518:	0318                	addi	a4,sp,384
 51a:	0000                	unimp
 51c:	030a                	slli	t1,t1,0x2
 51e:	0000                	unimp
 520:	7d01                	lui	s10,0xfffe0
 522:	4a000007          	.insn	4, 0x4a000007
 526:	3c000003          	lb	zero,960(zero) # 3c0 <__DYNAMIC+0x3c0>
 52a:	06000003          	lb	zero,96(zero) # 60 <__DYNAMIC+0x60>
 52e:	0788                	addi	a0,sp,960
 530:	0000                	unimp
 532:	0399                	addi	t2,t2,6
 534:	0000                	unimp
 536:	0000038b          	.insn	4, 0x038b
 53a:	1000                	addi	s0,sp,32
 53c:	0694                	addi	a3,sp,832
 53e:	0000                	unimp
 540:	00b4                	addi	a3,sp,72
 542:	0100                	addi	s0,sp,128
 544:	4a16                	lw	s4,68(sp)
 546:	0000                	unimp
 548:	da00                	sw	s0,48(a2)
 54a:	a20d                	j	66c <__DYNAMIC+0x66c>
 54c:	0005                	c.nop	1
 54e:	0100                	addi	s0,sp,128
 550:	000006a3          	sb	zero,13(zero) # d <__DYNAMIC+0xd>
 554:	03e9                	addi	t2,t2,26
 556:	0000                	unimp
 558:	03d8                	addi	a4,sp,452
 55a:	0000                	unimp
 55c:	ae01                	j	86c <__DYNAMIC+0x86c>
 55e:	0006                	c.slli	zero,0x1
 560:	2b00                	.insn	2, 0x2b00
 562:	0004                	.insn	2, 0x0004
 564:	1600                	addi	s0,sp,800
 566:	0004                	.insn	2, 0x0004
 568:	0100                	addi	s0,sp,128
 56a:	06b9                	addi	a3,a3,14
 56c:	0000                	unimp
 56e:	0470                	addi	a2,sp,524
 570:	0000                	unimp
 572:	045f 0000 c513      	.insn	6, 0xc5130000045f
 578:	0006                	c.slli	zero,0x1
 57a:	c000                	sw	s0,0(s0)
 57c:	0000                	unimp
 57e:	1a01                	addi	s4,s4,-32
 580:	0088                	addi	a0,sp,64
 582:	0000                	unimp
 584:	0ca4                	addi	s1,sp,600
 586:	d401                	beqz	s0,48e <__DYNAMIC+0x48e>
 588:	0006                	c.slli	zero,0x1
 58a:	a800                	.insn	2, 0xa800
 58c:	0004                	.insn	2, 0x0004
 58e:	9c00                	.insn	2, 0x9c00
 590:	0004                	.insn	2, 0x0004
 592:	0100                	addi	s0,sp,128
 594:	06df 0000 04d5      	.insn	6, 0x04d5000006df
 59a:	0000                	unimp
 59c:	04c9                	addi	s1,s1,18
 59e:	0000                	unimp
 5a0:	0000                	unimp
 5a2:	6310                	.insn	2, 0x6310
 5a4:	0006                	c.slli	zero,0x1
 5a6:	d400                	sw	s0,40(s0)
 5a8:	0000                	unimp
 5aa:	2901                	jal	9ba <__DYNAMIC+0x9ba>
 5ac:	00ae                	slli	ra,ra,0xb
 5ae:	0000                	unimp
 5b0:	0ddf 05de 0000      	.insn	6, 0x05de0ddf
 5b6:	7201                	lui	tp,0xfffe0
 5b8:	0006                	c.slli	zero,0x1
 5ba:	0400                	addi	s0,sp,512
 5bc:	0005                	c.nop	1
 5be:	f600                	.insn	2, 0xf600
 5c0:	0004                	.insn	2, 0x0004
 5c2:	0100                	addi	s0,sp,128
 5c4:	067d                	addi	a2,a2,31
 5c6:	0000                	unimp
 5c8:	0536                	slli	a0,a0,0xd
 5ca:	0000                	unimp
 5cc:	0528                	addi	a0,sp,648
 5ce:	0000                	unimp
 5d0:	8801                	andi	s0,s0,0
 5d2:	0006                	c.slli	zero,0x1
 5d4:	6700                	.insn	2, 0x6700
 5d6:	0005                	c.nop	1
 5d8:	5900                	lw	s0,48(a0)
 5da:	0005                	c.nop	1
 5dc:	0000                	unimp
 5de:	00075213          	srli	tp,a4,0x0
 5e2:	e800                	.insn	2, 0xe800
 5e4:	0000                	unimp
 5e6:	3401                	jal	ffffffe6 <stack+0xfeeff3e6>
 5e8:	00d9                	addi	ra,ra,22
 5ea:	0000                	unimp
 5ec:	0ddf 5c01 0007      	.insn	6, 0x00075c010ddf
 5f2:	a000                	.insn	2, 0xa000
 5f4:	0005                	c.nop	1
 5f6:	8a00                	.insn	2, 0x8a00
 5f8:	0005                	c.nop	1
 5fa:	0100                	addi	s0,sp,128
 5fc:	00000767          	jalr	a4,zero # 0 <__DYNAMIC>
 600:	05e6                	slli	a1,a1,0x19
 602:	0000                	unimp
 604:	05d0                	addi	a2,sp,708
 606:	0000                	unimp
 608:	7201                	lui	tp,0xfffe0
 60a:	34000007          	.insn	4, 0x34000007
 60e:	0006                	c.slli	zero,0x1
 610:	1600                	addi	s0,sp,800
 612:	0006                	c.slli	zero,0x1
 614:	1400                	addi	s0,sp,544
 616:	077d                	addi	a4,a4,31 # 3051 <STACK_SIZE+0x2451>
 618:	0000                	unimp
 61a:	8806                	mv	a6,ra
 61c:	86000007          	.insn	4, 0x86000007
 620:	0006                	c.slli	zero,0x1
 622:	7600                	.insn	2, 0x7600
 624:	0006                	c.slli	zero,0x1
 626:	0000                	unimp
 628:	0800                	addi	s0,sp,16
 62a:	0100                	addi	s0,sp,128
 62c:	0000                	unimp
 62e:	10bc                	addi	a5,sp,104
 630:	00b9                	addi	ra,ra,14
 632:	0000                	unimp
 634:	00000663          	beqz	zero,640 <__DYNAMIC+0x640>
 638:	0004                	.insn	2, 0x0004
 63a:	0000                	unimp
 63c:	bc00                	.insn	2, 0xbc00
 63e:	c530                	sw	a2,72(a0)
 640:	0000                	unimp
 642:	0500                	addi	s0,sp,640
 644:	6f72                	.insn	2, 0x6f72
 646:	30bd0077          	.insn	4, 0x30bd0077
 64a:	00c5                	addi	ra,ra,17
 64c:	0000                	unimp
 64e:	6305                	lui	t1,0x1
 650:	be006c6f          	jal	s8,fff06a30 <stack+0xfee05e30>
 654:	c530                	sw	a2,72(a0)
 656:	0000                	unimp
 658:	1100                	addi	s0,sp,160
 65a:	0061                	c.nop	24
 65c:	0dc0                	addi	s0,sp,724
 65e:	00b9                	addi	ra,ra,14
 660:	0000                	unimp
 662:	0800                	addi	s0,sp,16
 664:	0076                	c.slli	zero,0x1d
 666:	0000                	unimp
 668:	00a10fa7          	.insn	4, 0x00a10fa7
 66c:	0000                	unimp
 66e:	0694                	addi	a3,sp,832
 670:	0000                	unimp
 672:	0004                	.insn	2, 0x0004
 674:	0000                	unimp
 676:	a700                	.insn	2, 0xa700
 678:	c528                	sw	a0,72(a0)
 67a:	0000                	unimp
 67c:	0500                	addi	s0,sp,640
 67e:	6f72                	.insn	2, 0x6f72
 680:	39a70077          	.insn	4, 0x39a70077
 684:	00c5                	addi	ra,ra,17
 686:	0000                	unimp
 688:	6305                	lui	t1,0x1
 68a:	a7006c6f          	jal	s8,fff068fa <stack+0xfee05cfa>
 68e:	0000c547          	.insn	4, 0xc547
 692:	0000                	unimp
 694:	2708                	.insn	2, 0x2708
 696:	0001                	nop
 698:	9e00                	.insn	2, 0x9e00
 69a:	0000a10f          	.insn	4, 0xa10f
 69e:	c500                	sw	s0,8(a0)
 6a0:	0006                	c.slli	zero,0x1
 6a2:	0400                	addi	s0,sp,512
 6a4:	0000                	unimp
 6a6:	0000                	unimp
 6a8:	289e                	.insn	2, 0x289e
 6aa:	00c5                	addi	ra,ra,17
 6ac:	0000                	unimp
 6ae:	7205                	lui	tp,0xfffe1
 6b0:	9e00776f          	jal	a4,fff07890 <stack+0xfee06c90>
 6b4:	c539                	beqz	a0,702 <__DYNAMIC+0x702>
 6b6:	0000                	unimp
 6b8:	0500                	addi	s0,sp,640
 6ba:	006c6f63          	bltu	s8,t1,6d8 <__DYNAMIC+0x6d8>
 6be:	479e                	lw	a5,196(sp)
 6c0:	00c5                	addi	ra,ra,17
 6c2:	0000                	unimp
 6c4:	0800                	addi	s0,sp,16
 6c6:	00c1                	addi	ra,ra,16
 6c8:	0000                	unimp
 6ca:	0f99                	addi	t6,t6,6
 6cc:	00a1                	addi	ra,ra,8
 6ce:	0000                	unimp
 6d0:	000006eb          	.insn	4, 0x06eb
 6d4:	7205                	lui	tp,0xfffe1
 6d6:	9900776f          	jal	a4,fff07866 <stack+0xfee06c66>
 6da:	c525                	beqz	a0,742 <__DYNAMIC+0x742>
 6dc:	0000                	unimp
 6de:	0500                	addi	s0,sp,640
 6e0:	006c6f63          	bltu	s8,t1,6fe <__DYNAMIC+0x6fe>
 6e4:	3399                	jal	42a <__DYNAMIC+0x42a>
 6e6:	00c5                	addi	ra,ra,17
 6e8:	0000                	unimp
 6ea:	0800                	addi	s0,sp,16
 6ec:	0199                	addi	gp,gp,6
 6ee:	0000                	unimp
 6f0:	0c86                	slli	s9,s9,0x1
 6f2:	00000093          	li	ra,0
 6f6:	0706                	slli	a4,a4,0x1
 6f8:	0000                	unimp
 6fa:	0004                	.insn	2, 0x0004
 6fc:	0000                	unimp
 6fe:	8600                	.insn	2, 0x8600
 700:	c529                	beqz	a0,74a <__DYNAMIC+0x74a>
 702:	0000                	unimp
 704:	0000                	unimp
 706:	1708                	addi	a0,sp,928
 708:	0001                	nop
 70a:	7800                	.insn	2, 0x7800
 70c:	930c                	.insn	2, 0x930c
 70e:	0000                	unimp
 710:	2100                	.insn	2, 0x2100
 712:	0b000007          	.insn	4, 0x0b000007
 716:	02a5                	addi	t0,t0,9
 718:	0000                	unimp
 71a:	0e7a                	slli	t3,t3,0x1e
 71c:	00c5                	addi	ra,ra,17
 71e:	0000                	unimp
 720:	0800                	addi	s0,sp,16
 722:	00000007          	.insn	4, 0x0007
 726:	1070                	addi	a2,sp,44
 728:	00b9                	addi	ra,ra,14
 72a:	0000                	unimp
 72c:	0752                	slli	a4,a4,0x14
 72e:	0000                	unimp
 730:	7205                	lui	tp,0xfffe1
 732:	7000776f          	jal	a4,7e32 <STACK_SIZE+0x7232>
 736:	0000c52b          	.insn	4, 0xc52b
 73a:	0500                	addi	s0,sp,640
 73c:	006c6f63          	bltu	s8,t1,75a <__DYNAMIC+0x75a>
 740:	3970                	.insn	2, 0x3970
 742:	00c5                	addi	ra,ra,17
 744:	0000                	unimp
 746:	0000ce0b          	.insn	4, 0xce0b
 74a:	7200                	.insn	2, 0x7200
 74c:	c50e                	sw	gp,136(sp)
 74e:	0000                	unimp
 750:	0000                	unimp
 752:	4119                	li	sp,6
 754:	0000                	unimp
 756:	5f00                	lw	s0,56(a4)
 758:	0794                	addi	a3,sp,960
 75a:	0000                	unimp
 75c:	d304                	sw	s1,32(a4)
 75e:	0000                	unimp
 760:	5f00                	lw	s0,56(a4)
 762:	c529                	beqz	a0,7ac <__DYNAMIC+0x7ac>
 764:	0000                	unimp
 766:	0500                	addi	s0,sp,640
 768:	6f72                	.insn	2, 0x6f72
 76a:	29600077          	.insn	4, 0x29600077
 76e:	00c5                	addi	ra,ra,17
 770:	0000                	unimp
 772:	6305                	lui	t1,0x1
 774:	61006c6f          	jal	s8,6d84 <STACK_SIZE+0x6184>
 778:	c529                	beqz	a0,7c2 <__DYNAMIC+0x7c2>
 77a:	0000                	unimp
 77c:	0400                	addi	s0,sp,512
 77e:	00c8                	addi	a0,sp,68
 780:	0000                	unimp
 782:	2762                	.insn	2, 0x2762
 784:	00a1                	addi	ra,ra,8
 786:	0000                	unimp
 788:	0000ce0b          	.insn	4, 0xce0b
 78c:	6400                	.insn	2, 0x6400
 78e:	c50e                	sw	gp,136(sp)
 790:	0000                	unimp
 792:	0000                	unimp
 794:	3719                	jal	69a <__DYNAMIC+0x69a>
 796:	0001                	nop
 798:	5400                	lw	s0,40(s0)
 79a:	000007cb          	.insn	4, 0x07cb
 79e:	1904                	addi	s1,sp,176
 7a0:	0002                	c.slli	zero,0x0
 7a2:	5400                	lw	s0,40(s0)
 7a4:	c525                	beqz	a0,80c <__DYNAMIC+0x80c>
 7a6:	0000                	unimp
 7a8:	0400                	addi	s0,sp,512
 7aa:	01ad                	addi	gp,gp,11
 7ac:	0000                	unimp
 7ae:	2555                	jal	e52 <STACK_SIZE+0x252>
 7b0:	00c5                	addi	ra,ra,17
 7b2:	0000                	unimp
 7b4:	8604                	.insn	2, 0x8604
 7b6:	0000                	unimp
 7b8:	5600                	lw	s0,40(a2)
 7ba:	c525                	beqz	a0,822 <__DYNAMIC+0x822>
 7bc:	0000                	unimp
 7be:	0400                	addi	s0,sp,512
 7c0:	00ba                	slli	ra,ra,0xe
 7c2:	0000                	unimp
 7c4:	00c52557          	.insn	4, 0x00c52557
 7c8:	0000                	unimp
 7ca:	1a00                	addi	s0,sp,304
 7cc:	000001e7          	jalr	gp,zero # 0 <__DYNAMIC>
 7d0:	00f11a4f          	.insn	4, 0x00f11a4f
 7d4:	0000                	unimp
 7d6:	2446                	.insn	2, 0x2446
 7d8:	008d                	addi	ra,ra,3
 7da:	0000                	unimp
 7dc:	93054503          	lbu	a0,-1744(a0)
	...
 7e8:	0000                	unimp
 7ea:	0100                	addi	s0,sp,128
 7ec:	109c                	addi	a5,sp,96
 7ee:	0008                	.insn	2, 0x0008
 7f0:	0d00                	addi	s0,sp,656
 7f2:	01df 0000 4803      	.insn	6, 0x4803000001df
 7f8:	1711                	addi	a4,a4,-28
 7fa:	0008                	.insn	2, 0x0008
 7fc:	0200                	addi	s0,sp,256
 7fe:	7b91                	lui	s7,0xfffe4
 800:	9b0d                	andi	a4,a4,-29
 802:	0002                	c.slli	zero,0x0
 804:	0300                	addi	s0,sp,384
 806:	1549                	addi	a0,a0,-14
 808:	00d1                	addi	ra,ra,20
 80a:	0000                	unimp
 80c:	9102                	jalr	sp
 80e:	007c                	addi	a5,sp,12
 810:	4f080107          	.insn	4, 0x4f080107
 814:	0001                	nop
 816:	1500                	addi	s0,sp,672
 818:	0810                	addi	a2,sp,16
 81a:	0000                	unimp
 81c:	1016                	c.slli	zero,0x25
 81e:	0008                	.insn	2, 0x0008
 820:	0e00                	addi	s0,sp,784
 822:	0064                	addi	s1,sp,12
 824:	0000                	unimp
 826:	030c2c03          	lw	s8,48(s8)
 82a:	0100                	addi	s0,sp,128
 82c:	003e                	c.slli	zero,0xf
 82e:	0000                	unimp
 830:	9c01                	.insn	2, 0x9c01
 832:	0872                	slli	a6,a6,0x1c
 834:	0000                	unimp
 836:	7325                	lui	t1,0xfffe9
 838:	7274                	.insn	2, 0x7274
 83a:	0300                	addi	s0,sp,384
 83c:	1c2c                	addi	a1,sp,568
 83e:	0872                	slli	a6,a6,0x1c
 840:	0000                	unimp
 842:	5a01                	li	s4,-32
 844:	00018f1b          	.insn	4, 0x00018f1b
 848:	1200                	addi	s0,sp,288
 84a:	0069                	c.nop	26
 84c:	930c2d03          	lw	s10,-1744(s8)
 850:	0000                	unimp
 852:	b300                	.insn	2, 0xb300
 854:	0006                	c.slli	zero,0x1
 856:	a900                	.insn	2, 0xa900
 858:	0006                	c.slli	zero,0x1
 85a:	1b00                	addi	s0,sp,432
 85c:	0000019b          	.insn	4, 0x019b
 860:	9b0d                	andi	a4,a4,-29
 862:	0002                	c.slli	zero,0x0
 864:	0300                	addi	s0,sp,384
 866:	173d                	addi	a4,a4,-17
 868:	00d1                	addi	ra,ra,20
 86a:	0000                	unimp
 86c:	9102                	jalr	sp
 86e:	007c                	addi	a5,sp,12
 870:	0000                	unimp
 872:	0426                	slli	s0,s0,0x9
 874:	081c                	addi	a5,sp,16
 876:	0000                	unimp
 878:	f60e                	.insn	2, 0xf60e
 87a:	0000                	unimp
 87c:	0300                	addi	s0,sp,384
 87e:	ce1c                	sw	a5,24(a2)
 880:	0002                	c.slli	zero,0x0
 882:	3e01                	jal	392 <__DYNAMIC+0x392>
 884:	0000                	unimp
 886:	0100                	addi	s0,sp,128
 888:	9d9c                	.insn	2, 0x9d9c
 88a:	0008                	.insn	2, 0x0008
 88c:	0d00                	addi	s0,sp,656
 88e:	0019                	c.nop	6
 890:	0000                	unimp
 892:	d1151e03          	lh	t3,-751(a0)
 896:	0000                	unimp
 898:	0200                	addi	s0,sp,256
 89a:	7c91                	lui	s9,0xfffe4
 89c:	0e00                	addi	s0,sp,784
 89e:	00a0                	addi	s0,sp,72
 8a0:	0000                	unimp
 8a2:	3902                	.insn	2, 0x3902
	...
 8ac:	9c01                	.insn	2, 0x9c01
 8ae:	08c1                	addi	a7,a7,16
 8b0:	0000                	unimp
 8b2:	dd0c                	sw	a1,56(a0)
 8b4:	0000                	unimp
 8b6:	0200                	addi	s0,sp,256
 8b8:	2139                	jal	cc6 <STACK_SIZE+0xc6>
 8ba:	00d6                	slli	ra,ra,0x15
 8bc:	0000                	unimp
 8be:	5a01                	li	s4,-32
 8c0:	0e00                	addi	s0,sp,784
 8c2:	01b4                	addi	a3,sp,200
 8c4:	0000                	unimp
 8c6:	2d02                	.insn	2, 0x2d02
	...
 8d0:	9c01                	.insn	2, 0x9c01
 8d2:	08f4                	addi	a3,sp,92
 8d4:	0000                	unimp
 8d6:	dd0c                	sw	a1,56(a0)
 8d8:	0000                	unimp
 8da:	0200                	addi	s0,sp,256
 8dc:	1e2d                	addi	t3,t3,-21 # 19feb <STACK_SIZE+0x193eb>
 8de:	00d6                	slli	ra,ra,0x15
 8e0:	0000                	unimp
 8e2:	5a01                	li	s4,-32
 8e4:	f60d                	bnez	a2,80e <__DYNAMIC+0x80e>
 8e6:	0001                	nop
 8e8:	0200                	addi	s0,sp,256
 8ea:	00d1152f          	.insn	4, 0x00d1152f
 8ee:	0000                	unimp
 8f0:	9102                	jalr	sp
 8f2:	007c                	addi	a5,sp,12
 8f4:	200e                	.insn	2, 0x200e
 8f6:	0002                	c.slli	zero,0x0
 8f8:	0200                	addi	s0,sp,256
 8fa:	941e                	add	s0,s0,t2
 8fc:	0002                	c.slli	zero,0x0
 8fe:	3a01                	jal	20e <__DYNAMIC+0x20e>
 900:	0000                	unimp
 902:	0100                	addi	s0,sp,128
 904:	279c                	.insn	2, 0x279c
 906:	0009                	c.nop	2
 908:	0c00                	addi	s0,sp,528
 90a:	00dd                	addi	ra,ra,23
 90c:	0000                	unimp
 90e:	1e02                	slli	t3,t3,0x20
 910:	d61d                	beqz	a2,83e <__DYNAMIC+0x83e>
 912:	0000                	unimp
 914:	0100                	addi	s0,sp,128
 916:	0d5a                	slli	s10,s10,0x16
 918:	01f6                	slli	gp,gp,0x1d
 91a:	0000                	unimp
 91c:	2002                	.insn	2, 0x2002
 91e:	d115                	beqz	a0,842 <__DYNAMIC+0x842>
 920:	0000                	unimp
 922:	0200                	addi	s0,sp,256
 924:	7c91                	lui	s9,0xfffe4
 926:	2700                	.insn	2, 0x2700
 928:	0401                	addi	s0,s0,0
 92a:	0000                	unimp
 92c:	01e0                	addi	s0,sp,204
 92e:	0100                	addi	s0,sp,128
 930:	00b4                	addi	a3,sp,72
 932:	0000                	unimp
 934:	9c01                	.insn	2, 0x9c01
 936:	1001                	c.nop	-32
 938:	0004                	.insn	2, 0x0004
 93a:	f100                	.insn	2, 0xf100
 93c:	0006                	c.slli	zero,0x1
 93e:	e500                	.insn	2, 0xe500
 940:	0006                	c.slli	zero,0x1
 942:	2800                	.insn	2, 0x2800
 944:	0000041b          	.insn	4, 0x041b
 948:	060a                	slli	a2,a2,0x2
 94a:	e0000007          	.insn	4, 0xe0000007
 94e:	0001                	nop
 950:	0301                	addi	t1,t1,0 # fffe9000 <stack+0xfeee8400>
 952:	0118                	addi	a4,sp,128
 954:	0000                	unimp
 956:	0102                	c.slli	sp,0x0
 958:	6b09                	lui	s6,0x2
 95a:	0009                	c.nop	2
 95c:	0600                	addi	s0,sp,768
 95e:	0715                	addi	a4,a4,5
 960:	0000                	unimp
 962:	0722                	slli	a4,a4,0x8
 964:	0000                	unimp
 966:	071e                	slli	a4,a4,0x7
 968:	0000                	unimp
 96a:	2900                	.insn	2, 0x2900
 96c:	0401                	addi	s0,s0,0
 96e:	0000                	unimp
 970:	012c                	addi	a1,sp,136
 972:	0000                	unimp
 974:	fe01                	bnez	a2,88c <__DYNAMIC+0x88c>
 976:	870c                	.insn	2, 0x870c
 978:	000a                	c.slli	zero,0x2
 97a:	1400                	addi	s0,sp,544
 97c:	0410                	addi	a2,sp,512
 97e:	0000                	unimp
 980:	1b06                	slli	s6,s6,0x21
 982:	0004                	.insn	2, 0x0004
 984:	4000                	lw	s0,0(s0)
 986:	3e000007          	.insn	4, 0x3e000007
 98a:	2a000007          	.insn	4, 0x2a000007
 98e:	0429                	addi	s0,s0,10
 990:	0000                	unimp
 992:	0138                	addi	a4,sp,136
 994:	0000                	unimp
 996:	0c01                	addi	s8,s8,0
 998:	0e01                	addi	t3,t3,0
 99a:	0a70                	addi	a2,sp,284
 99c:	0000                	unimp
 99e:	3814                	.insn	2, 0x3814
 9a0:	0004                	.insn	2, 0x0004
 9a2:	0600                	addi	s0,sp,768
 9a4:	00000443          	.insn	4, 0x0443
 9a8:	074d                	addi	a4,a4,19
 9aa:	0000                	unimp
 9ac:	0749                	addi	a4,a4,18
 9ae:	0000                	unimp
 9b0:	4e06                	lw	t3,64(sp)
 9b2:	0004                	.insn	2, 0x0004
 9b4:	6900                	.insn	2, 0x6900
 9b6:	5d000007          	.insn	4, 0x5d000007
 9ba:	06000007          	.insn	4, 0x06000007
 9be:	0459                	addi	s0,s0,22
 9c0:	0000                	unimp
 9c2:	000007d7          	.insn	4, 0x07d7
 9c6:	000007cf          	.insn	4, 0x07cf
 9ca:	0004642b          	.insn	4, 0x0004642b
 9ce:	4700                	lw	s0,8(a4)
 9d0:	0001                	nop
 9d2:	0600                	addi	s0,sp,768
 9d4:	0465                	addi	s0,s0,25
 9d6:	0000                	unimp
 9d8:	000007f7          	.insn	4, 0x07f7
 9dc:	07f1                	addi	a5,a5,28
 9de:	0000                	unimp
 9e0:	7006                	.insn	2, 0x7006
 9e2:	0004                	.insn	2, 0x0004
 9e4:	1200                	addi	s0,sp,288
 9e6:	0008                	.insn	2, 0x0008
 9e8:	0c00                	addi	s0,sp,528
 9ea:	0008                	.insn	2, 0x0008
 9ec:	1000                	addi	s0,sp,32
 9ee:	0721                	addi	a4,a4,8
 9f0:	0000                	unimp
 9f2:	0242                	slli	tp,tp,0x10
 9f4:	0100                	addi	s0,sp,128
 9f6:	5f32                	lw	t5,44(sp)
 9f8:	0001                	nop
 9fa:	f200                	.insn	2, 0xf200
 9fc:	2918                	.insn	2, 0x2918
 9fe:	000a                	c.slli	zero,0x2
 a00:	0100                	addi	s0,sp,128
 a02:	0730                	addi	a2,sp,904
 a04:	0000                	unimp
 a06:	0829                	addi	a6,a6,10
 a08:	0000                	unimp
 a0a:	00000827          	.insn	4, 0x0827
 a0e:	3b01                	jal	71e <__DYNAMIC+0x71e>
 a10:	34000007          	.insn	4, 0x34000007
 a14:	0008                	.insn	2, 0x0008
 a16:	3200                	.insn	2, 0x3200
 a18:	0008                	.insn	2, 0x0008
 a1a:	0600                	addi	s0,sp,768
 a1c:	0746                	slli	a4,a4,0x11
 a1e:	0000                	unimp
 a20:	084c                	addi	a1,sp,20
 a22:	0000                	unimp
 a24:	084a                	slli	a6,a6,0x12
 a26:	0000                	unimp
 a28:	1300                	addi	s0,sp,416
 a2a:	0629                	addi	a2,a2,10
 a2c:	0000                	unimp
 a2e:	024e                	slli	tp,tp,0x13
 a30:	0100                	addi	s0,sp,128
 a32:	6e3d                	lui	t3,0xf
 a34:	0001                	nop
 a36:	f300                	.insn	2, 0xf300
 a38:	0118                	addi	a4,sp,128
 a3a:	0638                	addi	a4,sp,776
 a3c:	0000                	unimp
 a3e:	0000085b          	.insn	4, 0x085b
 a42:	0855                	addi	a6,a6,21
 a44:	0000                	unimp
 a46:	4301                	li	t1,0
 a48:	0006                	c.slli	zero,0x1
 a4a:	7600                	.insn	2, 0x7600
 a4c:	0008                	.insn	2, 0x0008
 a4e:	7000                	.insn	2, 0x7000
 a50:	0008                	.insn	2, 0x0008
 a52:	0100                	addi	s0,sp,128
 a54:	064e                	slli	a2,a2,0x13
 a56:	0000                	unimp
 a58:	0891                	addi	a7,a7,4
 a5a:	0000                	unimp
 a5c:	0000088b          	.insn	4, 0x088b
 a60:	5906                	lw	s2,96(sp)
 a62:	0006                	c.slli	zero,0x1
 a64:	d300                	sw	s0,32(a4)
 a66:	0008                	.insn	2, 0x0008
 a68:	cd00                	sw	s0,24(a0)
 a6a:	0008                	.insn	2, 0x0008
 a6c:	0000                	unimp
 a6e:	0000                	unimp
 a70:	cb2c                	sw	a1,80(a4)
 a72:	70000007          	.insn	4, 0x70000007
 a76:	0002                	c.slli	zero,0x0
 a78:	5101                	li	sp,-32
 a7a:	0270                	addi	a2,sp,268
 a7c:	0100                	addi	s0,sp,128
 a7e:	0008                	.insn	2, 0x0008
 a80:	0000                	unimp
 a82:	0e01                	addi	t3,t3,0 # f000 <STACK_SIZE+0xe400>
 a84:	0501                	addi	a0,a0,0
 a86:	1800                	addi	s0,sp,48
 a88:	000007cb          	.insn	4, 0x07cb
 a8c:	0280                	addi	s0,sp,320
 a8e:	0100                	addi	s0,sp,128
 a90:	835a                	mv	t1,s6
 a92:	0001                	nop
 a94:	0300                	addi	s0,sp,384
 a96:	0901                	addi	s2,s2,0
 a98:	0000                	unimp
 a9a:	001f 0000 0005      	.insn	6, 0x00050000001f
 aa0:	0401                	addi	s0,s0,0
 aa2:	02ca                	slli	t0,t0,0x12
 aa4:	0000                	unimp
 aa6:	9801                	andi	s0,s0,-32
 aa8:	0012                	c.slli	zero,0x4
 aaa:	9600                	.insn	2, 0x9600
 aac:	0002                	c.slli	zero,0x0
 aae:	ad00                	.insn	2, 0xad00
 ab0:	0002                	c.slli	zero,0x0
 ab2:	bb00                	.insn	2, 0xbb00
 ab4:	0002                	c.slli	zero,0x0
 ab6:	e900                	.insn	2, 0xe900
 ab8:	0002                	c.slli	zero,0x0
 aba:	0100                	addi	s0,sp,128
 abc:	80                	.byte	0x80

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
  16:	0148                	addi	a0,sp,132
  18:	017d                	addi	sp,sp,31
  1a:	1301137f 05040000 	.insn	12, 0x3a0e0300050400001301137f
  22:	3a0e0300 
  26:	0121                	addi	sp,sp,8
  28:	0b390b3b          	.insn	4, 0x0b390b3b
  2c:	1349                	addi	t1,t1,-14
  2e:	0000                	unimp
  30:	0505                	addi	a0,a0,1
  32:	0300                	addi	s0,sp,384
  34:	3a08                	.insn	2, 0x3a08
  36:	0121                	addi	sp,sp,8
  38:	0b390b3b          	.insn	4, 0x0b390b3b
  3c:	1349                	addi	t1,t1,-14
  3e:	0000                	unimp
  40:	3406                	.insn	2, 0x3406
  42:	3100                	.insn	2, 0x3100
  44:	b7170213          	addi	tp,a4,-1167
  48:	1742                	slli	a4,a4,0x30
  4a:	0000                	unimp
  4c:	0b002407          	.insn	4, 0x0b002407
  50:	030b3e0b          	.insn	4, 0x030b3e0b
  54:	000e                	c.slli	zero,0x3
  56:	0800                	addi	s0,sp,16
  58:	012e                	slli	sp,sp,0xb
  5a:	213a0e03          	lb	t3,531(s4)
  5e:	3b01                	jal	fffffd6e <stack+0xfeeff16e>
  60:	270b390b          	.insn	4, 0x270b390b
  64:	4919                	li	s2,6
  66:	01212013          	slti	zero,sp,18
  6a:	1301                	addi	t1,t1,-32
  6c:	0000                	unimp
  6e:	1609                	addi	a2,a2,-30
  70:	0300                	addi	s0,sp,384
  72:	3a0e                	.insn	2, 0x3a0e
  74:	390b3b0b          	.insn	4, 0x390b3b0b
  78:	0013490b          	.insn	4, 0x0013490b
  7c:	0a00                	addi	s0,sp,272
  7e:	011d                	addi	sp,sp,7
  80:	1331                	addi	t1,t1,-20
  82:	0152                	slli	sp,sp,0x14
  84:	42b8                	lw	a4,64(a3)
  86:	5817550b          	.insn	4, 0x5817550b
  8a:	0121                	addi	sp,sp,8
  8c:	0559                	addi	a0,a0,22
  8e:	13010b57          	.insn	4, 0x13010b57
  92:	0000                	unimp
  94:	0300340b          	.insn	4, 0x0300340b
  98:	3a0e                	.insn	2, 0x3a0e
  9a:	0121                	addi	sp,sp,8
  9c:	0b390b3b          	.insn	4, 0x0b390b3b
  a0:	1349                	addi	t1,t1,-14
  a2:	0000                	unimp
  a4:	050c                	addi	a1,sp,640
  a6:	0300                	addi	s0,sp,384
  a8:	3a0e                	.insn	2, 0x3a0e
  aa:	390b3b0b          	.insn	4, 0x390b3b0b
  ae:	0213490b          	.insn	4, 0x0213490b
  b2:	0018                	.insn	2, 0x0018
  b4:	0d00                	addi	s0,sp,656
  b6:	0034                	addi	a3,sp,8
  b8:	0b3a0e03          	lb	t3,179(s4)
  bc:	0b390b3b          	.insn	4, 0x0b390b3b
  c0:	1349                	addi	t1,t1,-14
  c2:	1802                	slli	a6,a6,0x20
  c4:	0000                	unimp
  c6:	2e0e                	.insn	2, 0x2e0e
  c8:	3f01                	jal	ffffffd8 <stack+0xfeeff3d8>
  ca:	0319                	addi	t1,t1,6
  cc:	3a0e                	.insn	2, 0x3a0e
  ce:	390b3b0b          	.insn	4, 0x390b3b0b
  d2:	0621                	addi	a2,a2,8
  d4:	01111927          	.insn	4, 0x01111927
  d8:	0612                	slli	a2,a2,0x4
  da:	1840                	addi	s0,sp,52
  dc:	197a                	slli	s2,s2,0x3e
  de:	1301                	addi	t1,t1,-32
  e0:	0000                	unimp
  e2:	31001d0f          	.insn	4, 0x31001d0f
  e6:	b8015213          	.insn	4, 0xb8015213
  ea:	0b42                	slli	s6,s6,0x10
  ec:	1755                	addi	a4,a4,-11
  ee:	2158                	.insn	2, 0x2158
  f0:	5901                	li	s2,-32
  f2:	8b21                	andi	a4,a4,8
  f4:	5701                	li	a4,-32
  f6:	0921                	addi	s2,s2,8
  f8:	0000                	unimp
  fa:	1d10                	addi	a2,sp,688
  fc:	3101                	jal	fffffcfc <stack+0xfeeff0fc>
  fe:	b8015213          	.insn	4, 0xb8015213
 102:	0b42                	slli	s6,s6,0x10
 104:	1755                	addi	a4,a4,-11
 106:	2158                	.insn	2, 0x2158
 108:	5901                	li	s2,-32
 10a:	010b570b          	.insn	4, 0x010b570b
 10e:	11000013          	li	zero,272
 112:	0034                	addi	a3,sp,8
 114:	213a0803          	lb	a6,531(s4)
 118:	3b01                	jal	fffffe28 <stack+0xfeeff228>
 11a:	490b390b          	.insn	4, 0x490b390b
 11e:	12000013          	li	zero,288
 122:	0034                	addi	a3,sp,8
 124:	0b3a0803          	lb	a6,179(s4)
 128:	0b390b3b          	.insn	4, 0x0b390b3b
 12c:	1349                	addi	t1,t1,-14
 12e:	1702                	slli	a4,a4,0x20
 130:	001742b7          	lui	t0,0x174
 134:	1300                	addi	s0,sp,416
 136:	011d                	addi	sp,sp,7
 138:	1331                	addi	t1,t1,-20
 13a:	0152                	slli	sp,sp,0x14
 13c:	42b8                	lw	a4,64(a3)
 13e:	5817550b          	.insn	4, 0x5817550b
 142:	0121                	addi	sp,sp,8
 144:	0b59                	addi	s6,s6,22 # 2016 <STACK_SIZE+0x1416>
 146:	00000b57          	.insn	4, 0x0b57
 14a:	0514                	addi	a3,sp,640
 14c:	3100                	.insn	2, 0x3100
 14e:	15000013          	li	zero,336
 152:	0035                	c.nop	13
 154:	1349                	addi	t1,t1,-14
 156:	0000                	unimp
 158:	2616                	.insn	2, 0x2616
 15a:	4900                	lw	s0,16(a0)
 15c:	17000013          	li	zero,368
 160:	0034                	addi	a3,sp,8
 162:	213a0e03          	lb	t3,531(s4)
 166:	3b01                	jal	fffffe76 <stack+0xfeeff276>
 168:	3905                	jal	fffffd98 <stack+0xfeeff198>
 16a:	0921                	addi	s2,s2,8
 16c:	1349                	addi	t1,t1,-14
 16e:	1702                	slli	a4,a4,0x20
 170:	001742b7          	lui	t0,0x174
 174:	1800                	addi	s0,sp,48
 176:	001d                	c.nop	7
 178:	1331                	addi	t1,t1,-20
 17a:	0152                	slli	sp,sp,0x14
 17c:	42b8                	lw	a4,64(a3)
 17e:	5817550b          	.insn	4, 0x5817550b
 182:	0121                	addi	sp,sp,8
 184:	0559                	addi	a0,a0,22
 186:	00000b57          	.insn	4, 0x0b57
 18a:	2e19                	jal	4a0 <__DYNAMIC+0x4a0>
 18c:	0301                	addi	t1,t1,0
 18e:	3a0e                	.insn	2, 0x3a0e
 190:	0121                	addi	sp,sp,8
 192:	21390b3b          	.insn	4, 0x21390b3b
 196:	270d                	jal	8b8 <__DYNAMIC+0x8b8>
 198:	2019                	jal	19e <__DYNAMIC+0x19e>
 19a:	0121                	addi	sp,sp,8
 19c:	1301                	addi	t1,t1,-32
 19e:	0000                	unimp
 1a0:	2e1a                	.insn	2, 0x2e1a
 1a2:	0300                	addi	s0,sp,384
 1a4:	3a0e                	.insn	2, 0x3a0e
 1a6:	0121                	addi	sp,sp,8
 1a8:	21390b3b          	.insn	4, 0x21390b3b
 1ac:	270d                	jal	8ce <__DYNAMIC+0x8ce>
 1ae:	2019                	jal	1b4 <__DYNAMIC+0x1b4>
 1b0:	0121                	addi	sp,sp,8
 1b2:	0000                	unimp
 1b4:	55010b1b          	.insn	4, 0x55010b1b
 1b8:	1c000017          	auipc	zero,0x1c000
 1bc:	0111                	addi	sp,sp,4
 1be:	0e25                	addi	t3,t3,9
 1c0:	01900b13          	li	s6,25
 1c4:	0601910b          	.insn	4, 0x0601910b
 1c8:	1f1b1f03          	lh	t5,497(s6)
 1cc:	1755                	addi	a4,a4,-11
 1ce:	0111                	addi	sp,sp,4
 1d0:	1710                	addi	a2,sp,928
 1d2:	0000                	unimp
 1d4:	241d                	jal	3fa <__DYNAMIC+0x3fa>
 1d6:	0b00                	addi	s0,sp,400
 1d8:	030b3e0b          	.insn	4, 0x030b3e0b
 1dc:	0008                	.insn	2, 0x0008
 1de:	1e00                	addi	s0,sp,816
 1e0:	012e                	slli	sp,sp,0xb
 1e2:	0e03193f 053b0b3a 	.insn	8, 0x053b0b3a0e03193f
 1ea:	0b39                	addi	s6,s6,14
 1ec:	13491927          	.insn	4, 0x13491927
 1f0:	0111                	addi	sp,sp,4
 1f2:	0612                	slli	a2,a2,0x4
 1f4:	1840                	addi	s0,sp,52
 1f6:	197a                	slli	s2,s2,0x3e
 1f8:	1301                	addi	t1,t1,-32
 1fa:	0000                	unimp
 1fc:	481f 7d00 7f01      	.insn	6, 0x7f017d00481f
 202:	20000013          	li	zero,512
 206:	0148                	addi	a0,sp,132
 208:	017d                	addi	sp,sp,31
 20a:	0000137f 03003421 	.insn	12, 0x3b0b3a0e030034210000137f
 212:	3b0b3a0e 
 216:	3905                	jal	fffffe46 <stack+0xfeeff246>
 218:	0013490b          	.insn	4, 0x0013490b
 21c:	2200                	.insn	2, 0x2200
 21e:	0000010b          	.insn	4, 0x010b
 222:	03012e23          	sw	a6,60(sp)
 226:	3a0e                	.insn	2, 0x3a0e
 228:	390b3b0b          	.insn	4, 0x390b3b0b
 22c:	1119270b          	.insn	4, 0x1119270b
 230:	1201                	addi	tp,tp,-32 # fffe0fe0 <stack+0xfeee03e0>
 232:	4006                	.insn	2, 0x4006
 234:	7a18                	.insn	2, 0x7a18
 236:	0119                	addi	sp,sp,6
 238:	24000013          	li	zero,576
 23c:	012e                	slli	sp,sp,0xb
 23e:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 246:	0b39                	addi	s6,s6,14
 248:	13491927          	.insn	4, 0x13491927
 24c:	0111                	addi	sp,sp,4
 24e:	0612                	slli	a2,a2,0x4
 250:	1840                	addi	s0,sp,52
 252:	197a                	slli	s2,s2,0x3e
 254:	1301                	addi	t1,t1,-32
 256:	0000                	unimp
 258:	0525                	addi	a0,a0,9
 25a:	0300                	addi	s0,sp,384
 25c:	3a08                	.insn	2, 0x3a08
 25e:	390b3b0b          	.insn	4, 0x390b3b0b
 262:	0213490b          	.insn	4, 0x0213490b
 266:	0018                	.insn	2, 0x0018
 268:	2600                	.insn	2, 0x2600
 26a:	0b0b000f          	.insn	4, 0x0b0b000f
 26e:	1349                	addi	t1,t1,-14
 270:	0000                	unimp
 272:	31012e27          	.insn	4, 0x31012e27
 276:	12011113          	.insn	4, 0x12011113
 27a:	4006                	.insn	2, 0x4006
 27c:	7a18                	.insn	2, 0x7a18
 27e:	0019                	c.nop	6
 280:	2800                	.insn	2, 0x2800
 282:	0034                	addi	a3,sp,8
 284:	1331                	addi	t1,t1,-20
 286:	0000                	unimp
 288:	1d29                	addi	s10,s10,-22 # fffdffea <stack+0xfeedf3ea>
 28a:	3101                	jal	fffffe8a <stack+0xfeeff28a>
 28c:	58175513          	.insn	4, 0x58175513
 290:	570b590b          	.insn	4, 0x570b590b
 294:	0013010b          	.insn	4, 0x0013010b
 298:	2a00                	.insn	2, 0x2a00
 29a:	011d                	addi	sp,sp,7
 29c:	1331                	addi	t1,t1,-20
 29e:	1755                	addi	a4,a4,-11
 2a0:	0b58                	addi	a4,sp,404
 2a2:	0559                	addi	a0,a0,22
 2a4:	13010b57          	.insn	4, 0x13010b57
 2a8:	0000                	unimp
 2aa:	31010b2b          	.insn	4, 0x31010b2b
 2ae:	00175513          	srli	a0,a4,0x1
 2b2:	2c00                	.insn	2, 0x2c00
 2b4:	001d                	c.nop	7
 2b6:	1331                	addi	t1,t1,-20
 2b8:	0152                	slli	sp,sp,0x14
 2ba:	42b8                	lw	a4,64(a3)
 2bc:	1201110b          	.insn	4, 0x1201110b
 2c0:	5806                	lw	a6,96(sp)
 2c2:	5705590b          	.insn	4, 0x5705590b
 2c6:	0000000b          	.insn	4, 0x000b
 2ca:	1101                	addi	sp,sp,-32
 2cc:	1000                	addi	s0,sp,32
 2ce:	03175517          	auipc	a0,0x3175
 2d2:	1b0e                	slli	s6,s6,0x23
 2d4:	250e                	.insn	2, 0x250e
 2d6:	130e                	slli	t1,t1,0x23
 2d8:	0005                	c.nop	1
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
   0:	08e4                	addi	s1,sp,92
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	3202                	.insn	2, 0x3202
   e:	3d32                	.insn	2, 0x3d32
  10:	433d                	li	t1,15
  12:	4f4c4c43          	.insn	4, 0x4f4c4c43
  16:	5d54544f          	.insn	4, 0x5d54544f
  1a:	5e5d                	li	t3,-9
  1c:	6d6a                	.insn	2, 0x6d6a
  1e:	6e6d                	lui	t3,0x1b
  20:	796e                	.insn	2, 0x796e
  22:	7e7a                	.insn	2, 0x7e7a
  24:	0185                	addi	gp,gp,1
  26:	0189                	addi	gp,gp,2
  28:	0190                	addi	a2,sp,192
  2a:	0195                	addi	gp,gp,5
  2c:	019a                	slli	gp,gp,0x6
  2e:	019b019b          	.insn	4, 0x019b019b
  32:	019c                	addi	a5,sp,192
  34:	019c                	addi	a5,sp,192
  36:	01a0                	addi	s0,sp,200
  38:	4a06                	lw	s4,64(sp)
  3a:	04010003          	lb	zero,64(sp)
  3e:	5a00                	lw	s0,48(a2)
  40:	3002                	.insn	2, 0x3002
  42:	049f ec5a 0100      	.insn	6, 0x0100ec5a049f
  48:	045a                	slli	s0,s0,0x16
  4a:	00ec                	addi	a1,sp,76
  4c:	00fc                	addi	a5,sp,76
  4e:	9102                	jalr	sp
  50:	0454                	addi	a3,sp,516
  52:	00fc                	addi	a5,sp,76
  54:	018e                	slli	gp,gp,0x3
  56:	7f06                	.insn	2, 0x7f06
  58:	7a00                	.insn	2, 0x7a00
  5a:	2200                	.insn	2, 0x2200
  5c:	049f 018e 0191      	.insn	6, 0x0191018e049f
  62:	91007f07          	.insn	4, 0x91007f07
  66:	0658                	addi	a4,sp,772
  68:	9f22                	add	t5,t5,s0
  6a:	9104                	.insn	2, 0x9104
  6c:	a201                	j	16c <__DYNAMIC+0x16c>
  6e:	0801                	addi	a6,a6,0
  70:	5491                	li	s1,-28
  72:	9106                	add	sp,sp,ra
  74:	0658                	addi	a4,sp,772
  76:	9f22                	add	t5,t5,s0
  78:	a204                	.insn	2, 0xa204
  7a:	b001                	j	fffff87a <stack+0xfeefec7a>
  7c:	0b01                	addi	s6,s6,0
  7e:	5491                	li	s1,-28
  80:	7a06                	.insn	2, 0x7a06
  82:	2200                	.insn	2, 0x2200
  84:	5891                	li	a7,-28
  86:	2206                	.insn	2, 0x2206
  88:	049f 01b0 01b2      	.insn	6, 0x01b201b0049f
  8e:	910c                	.insn	2, 0x910c
  90:	0654                	addi	a3,sp,772
  92:	5c91                	li	s9,-28
  94:	2206                	.insn	2, 0x2206
  96:	5891                	li	a7,-28
  98:	2206                	.insn	2, 0x2206
  9a:	049f 01cc 01d9      	.insn	6, 0x01d901cc049f
  a0:	5f01                	li	t5,-32
  a2:	d904                	sw	s1,48(a0)
  a4:	de01                	beqz	a2,ffffffbc <stack+0xfeeff3bc>
  a6:	0201                	addi	tp,tp,0 # 0 <__DYNAMIC>
  a8:	5491                	li	s1,-28
  aa:	de04                	sw	s1,56(a2)
  ac:	f001                	bnez	s0,ffffffac <stack+0xfeeff3ac>
  ae:	0201                	addi	tp,tp,0 # 0 <__DYNAMIC>
  b0:	9f30                	.insn	2, 0x9f30
  b2:	8004                	.insn	2, 0x8004
  b4:	8402                	jr	s0
  b6:	0102                	c.slli	sp,0x0
  b8:	045a                	slli	s0,s0,0x16
  ba:	0294                	addi	a3,sp,320
  bc:	0298                	addi	a4,sp,320
  be:	7f06                	.insn	2, 0x7f06
  c0:	7a00                	.insn	2, 0x7a00
  c2:	2200                	.insn	2, 0x2200
  c4:	049f 02a8 02b8      	.insn	6, 0x02b802a8049f
  ca:	3002                	.insn	2, 0x3002
  cc:	049f 02c8 02d1      	.insn	6, 0x02d102c8049f
  d2:	5f01                	li	t5,-32
  d4:	d104                	sw	s1,32(a0)
  d6:	d602                	sw	zero,44(sp)
  d8:	0202                	c.slli	tp,0x0
  da:	5491                	li	s1,-28
  dc:	d604                	sw	s1,40(a2)
  de:	da02                	sw	zero,52(sp)
  e0:	0b02                	c.slli	s6,0x0
  e2:	5491                	li	s1,-28
  e4:	7a06                	.insn	2, 0x7a06
  e6:	2200                	.insn	2, 0x2200
  e8:	5891                	li	a7,-28
  ea:	2206                	.insn	2, 0x2206
  ec:	009f 2f2a 3a2f      	.insn	6, 0x3a2f2f2a009f
  f2:	403a                	.insn	2, 0x403a
  f4:	4c40                	lw	s0,28(s0)
  f6:	4d4c                	lw	a1,28(a0)
  f8:	514d                	li	sp,-13
  fa:	5d51                	li	s10,-12
  fc:	5f5d                	li	t5,-9
  fe:	645f 6e64 7974      	.insn	6, 0x79746e64645f
 104:	7e7a                	.insn	2, 0x7e7a
 106:	0180                	addi	s0,sp,192
 108:	0185                	addi	gp,gp,1
 10a:	0185                	addi	gp,gp,1
 10c:	0189                	addi	gp,gp,2
 10e:	0190018b          	.insn	4, 0x0190018b
 112:	0190                	addi	a2,sp,192
 114:	0192                	slli	gp,gp,0x4
 116:	0192                	slli	gp,gp,0x4
 118:	0195                	addi	gp,gp,5
 11a:	0195                	addi	gp,gp,5
 11c:	01970197          	auipc	gp,0x1970
 120:	019a                	slli	gp,gp,0x6
 122:	019a                	slli	gp,gp,0x6
 124:	019c                	addi	a5,sp,192
 126:	019c                	addi	a5,sp,192
 128:	01a0                	addi	s0,sp,200
 12a:	01a2                	slli	gp,gp,0x8
 12c:	01a701a7          	.insn	4, 0x01a701a7
 130:	0600                	addi	s0,sp,768
 132:	0390                	addi	a2,sp,448
 134:	0100                	addi	s0,sp,128
 136:	0004                	.insn	2, 0x0004
 138:	020c                	addi	a1,sp,256
 13a:	9f30                	.insn	2, 0x9f30
 13c:	0c04                	addi	s1,sp,528
 13e:	0120                	addi	s0,sp,136
 140:	045a                	slli	s0,s0,0x16
 142:	2c20                	.insn	2, 0x2c20
 144:	3002                	.insn	2, 0x3002
 146:	049f 482c 5a01      	.insn	6, 0x5a01482c049f
 14c:	4804                	lw	s1,16(s0)
 14e:	024a                	slli	tp,tp,0x12
 150:	5891                	li	a7,-28
 152:	4a04                	lw	s1,16(a2)
 154:	0250                	addi	a2,sp,260
 156:	9f30                	.insn	2, 0x9f30
 158:	5004                	lw	s1,32(s0)
 15a:	00ea                	slli	ra,ra,0x1a
 15c:	5a01                	li	s4,-32
 15e:	ea04                	.insn	2, 0xea04
 160:	ee00                	.insn	2, 0xee00
 162:	0200                	addi	s0,sp,256
 164:	5c91                	li	s9,-28
 166:	ee04                	.insn	2, 0xee04
 168:	fc00                	.insn	2, 0xfc00
 16a:	0200                	addi	s0,sp,256
 16c:	9f30                	.insn	2, 0x9f30
 16e:	fc04                	.insn	2, 0xfc04
 170:	9800                	.insn	2, 0x9800
 172:	0101                	addi	sp,sp,0
 174:	0458                	addi	a4,sp,516
 176:	01a0                	addi	s0,sp,200
 178:	01aa                	slli	gp,gp,0xa
 17a:	9fc90803          	lb	a6,-1540(s2)
 17e:	ba04                	.insn	2, 0xba04
 180:	be01                	j	fffffc90 <stack+0xfeeff090>
 182:	0101                	addi	sp,sp,0
 184:	045a                	slli	s0,s0,0x16
 186:	01c2                	slli	gp,gp,0x10
 188:	01ce                	slli	gp,gp,0x13
 18a:	9fca0803          	lb	a6,-1540(s4)
 18e:	ce04                	sw	s1,24(a2)
 190:	d201                	beqz	a2,90 <__DYNAMIC+0x90>
 192:	0101                	addi	sp,sp,0
 194:	045a                	slli	s0,s0,0x16
 196:	01d6                	slli	gp,gp,0x15
 198:	01e2                	slli	gp,gp,0x18
 19a:	9fcb0803          	lb	a6,-1540(s6)
 19e:	e204                	.insn	2, 0xe204
 1a0:	e801                	bnez	s0,1b0 <__DYNAMIC+0x1b0>
 1a2:	0101                	addi	sp,sp,0
 1a4:	045a                	slli	s0,s0,0x16
 1a6:	01e8                	addi	a0,sp,204
 1a8:	01f2                	slli	gp,gp,0x1c
 1aa:	9102                	jalr	sp
 1ac:	0454                	addi	a3,sp,516
 1ae:	01f2                	slli	gp,gp,0x1c
 1b0:	01f8                	addi	a4,sp,204
 1b2:	5a01                	li	s4,-32
 1b4:	f804                	.insn	2, 0xf804
 1b6:	8201                	c.srli	a2,0x0
 1b8:	0202                	c.slli	tp,0x0
 1ba:	5491                	li	s1,-28
 1bc:	8204                	.insn	2, 0x8204
 1be:	9002                	ebreak
 1c0:	0102                	c.slli	sp,0x0
 1c2:	0458                	addi	a4,sp,516
 1c4:	0290                	addi	a2,sp,320
 1c6:	0294                	addi	a3,sp,320
 1c8:	5a01                	li	s4,-32
 1ca:	9804                	.insn	2, 0x9804
 1cc:	a402                	.insn	2, 0xa402
 1ce:	0302                	c.slli	t1,0x0
 1d0:	cc08                	sw	a0,24(s0)
 1d2:	049f 02a4 02b2      	.insn	6, 0x02b202a4049f
 1d8:	5801                	li	a6,-32
 1da:	1400                	addi	s0,sp,544
 1dc:	081d                	addi	a6,a6,7
 1de:	0368                	addi	a0,sp,396
 1e0:	0100                	addi	s0,sp,128
 1e2:	0210                	addi	a2,sp,256
 1e4:	9f38                	.insn	2, 0x9f38
 1e6:	2200                	.insn	2, 0x2200
 1e8:	6e2a                	.insn	2, 0x6e2a
 1ea:	0674                	addi	a3,sp,780
 1ec:	0382                	c.slli	t2,0x0
 1ee:	0100                	addi	s0,sp,128
 1f0:	0004                	.insn	2, 0x0004
 1f2:	020e                	slli	tp,tp,0x3
 1f4:	9f31                	.insn	2, 0x9f31
 1f6:	a604                	.insn	2, 0xa604
 1f8:	ae01                	j	508 <__DYNAMIC+0x508>
 1fa:	0201                	addi	tp,tp,0 # 0 <__DYNAMIC>
 1fc:	9f31                	.insn	2, 0x9f31
 1fe:	3300                	.insn	2, 0x3300
 200:	7a3a                	.insn	2, 0x7a3a
 202:	0180                	addi	s0,sp,192
 204:	a406                	.insn	2, 0xa406
 206:	04010003          	lb	zero,64(sp)
 20a:	0c00                	addi	s0,sp,528
 20c:	3202                	.insn	2, 0x3202
 20e:	049f 01a6 01ae      	.insn	6, 0x01ae01a6049f
 214:	3202                	.insn	2, 0x3202
 216:	009f 4d44 0185      	.insn	6, 0x01854d44009f
 21c:	c606018b          	.insn	4, 0xc606018b
 220:	04010003          	lb	zero,64(sp)
 224:	1400                	addi	s0,sp,544
 226:	3302                	.insn	2, 0x3302
 228:	049f 0198 01a0      	.insn	6, 0x01a00198049f
 22e:	3302                	.insn	2, 0x3302
 230:	009f 5f55 019c      	.insn	6, 0x019c5f55009f
 236:	01a2                	slli	gp,gp,0x8
 238:	ec06                	.insn	2, 0xec06
 23a:	04010003          	lb	zero,64(sp)
 23e:	1200                	addi	s0,sp,288
 240:	3402                	.insn	2, 0x3402
 242:	049f 01b4 01bc      	.insn	6, 0x01bc01b4049f
 248:	3402                	.insn	2, 0x3402
 24a:	009f 1304 0013      	.insn	6, 0x00131304009f
 250:	8c06                	mv	s8,ra
 252:	0000                	unimp
 254:	0401                	addi	s0,s0,0
 256:	2800                	.insn	2, 0x2800
 258:	3002                	.insn	2, 0x3002
 25a:	049f d428 0102      	.insn	6, 0x0102d428049f
 260:	006c                	addi	a1,sp,12
 262:	2c15                	jal	496 <__DYNAMIC+0x496>
 264:	635e533b          	.insn	4, 0x635e533b
 268:	847d                	srai	s0,s0,0x1f
 26a:	9001                	srli	s0,s0,0x20
 26c:	b401                	j	fffffc6c <stack+0xfeeff06c>
 26e:	bd01                	j	7e <__DYNAMIC+0x7e>
 270:	0001                	nop
 272:	b406                	.insn	2, 0xb406
 274:	0000                	unimp
 276:	0401                	addi	s0,s0,0
 278:	2400                	.insn	2, 0x2400
 27a:	3002                	.insn	2, 0x3002
 27c:	049f 5a3a 5f01      	.insn	6, 0x5f015a3a049f
 282:	6804                	.insn	2, 0x6804
 284:	0180                	addi	s0,sp,192
 286:	5f01                	li	t5,-32
 288:	a204                	.insn	2, 0xa204
 28a:	b001                	j	fffffa8a <stack+0xfeefee8a>
 28c:	0101                	addi	sp,sp,0
 28e:	045f 01c2 01f2      	.insn	6, 0x01f201c2045f
 294:	5f01                	li	t5,-32
 296:	fc04                	.insn	2, 0xfc04
 298:	ac01                	j	4a8 <__DYNAMIC+0x4a8>
 29a:	0102                	c.slli	sp,0x0
 29c:	005f 271c 4b44      	.insn	6, 0x4b44271c005f
 2a2:	6c634e4b          	.insn	4, 0x6c634e4b
 2a6:	0198                	addi	a4,sp,192
 2a8:	01c501a3          	sb	t3,3(a0) # 31752d1 <stack+0x20746d1>
 2ac:	01d0                	addi	a2,sp,196
 2ae:	c006                	sw	ra,0(sp)
 2b0:	0000                	unimp
 2b2:	0401                	addi	s0,s0,0
 2b4:	1400                	addi	s0,sp,544
 2b6:	5b01                	li	s6,-32
 2b8:	3a04                	.insn	2, 0x3a04
 2ba:	0242                	slli	tp,tp,0x10
 2bc:	0076                	c.slli	zero,0x1d
 2be:	4204                	lw	s1,0(a2)
 2c0:	014a                	slli	sp,sp,0x12
 2c2:	8074045b          	.insn	4, 0x8074045b
 2c6:	0101                	addi	sp,sp,0
 2c8:	01ba045b          	.insn	4, 0x01ba045b
 2cc:	01ce                	slli	gp,gp,0x13
 2ce:	5b01                	li	s6,-32
 2d0:	f404                	.insn	2, 0xf404
 2d2:	8801                	andi	s0,s0,0
 2d4:	0102                	c.slli	sp,0x0
 2d6:	271c005b          	.insn	4, 0x271c005b
 2da:	4e44                	lw	s1,28(a2)
 2dc:	01986c63          	bltu	a6,s9,2f4 <__DYNAMIC+0x2f4>
 2e0:	01c501a3          	sb	t3,3(a0)
 2e4:	01d0                	addi	a2,sp,196
 2e6:	c006                	sw	ra,0(sp)
 2e8:	0000                	unimp
 2ea:	0401                	addi	s0,s0,0
 2ec:	1400                	addi	s0,sp,544
 2ee:	6c01                	.insn	2, 0x6c01
 2f0:	3a04                	.insn	2, 0x3a04
 2f2:	014a                	slli	sp,sp,0x12
 2f4:	046c                	addi	a1,sp,524
 2f6:	8074                	.insn	2, 0x8074
 2f8:	0101                	addi	sp,sp,0
 2fa:	046c                	addi	a1,sp,524
 2fc:	01ba                	slli	gp,gp,0xe
 2fe:	01ce                	slli	gp,gp,0x13
 300:	6c01                	.insn	2, 0x6c01
 302:	f404                	.insn	2, 0xf404
 304:	8801                	andi	s0,s0,0
 306:	0102                	c.slli	sp,0x0
 308:	006c                	addi	a1,sp,12
 30a:	271c                	.insn	2, 0x271c
 30c:	4e44                	lw	s1,28(a2)
 30e:	01986c63          	bltu	a6,s9,326 <__DYNAMIC+0x326>
 312:	01c501a3          	sb	t3,3(a0)
 316:	01d0                	addi	a2,sp,196
 318:	c006                	sw	ra,0(sp)
 31a:	0000                	unimp
 31c:	0401                	addi	s0,s0,0
 31e:	1400                	addi	s0,sp,544
 320:	5f01                	li	t5,-32
 322:	3a04                	.insn	2, 0x3a04
 324:	014a                	slli	sp,sp,0x12
 326:	045f 8074 0101      	.insn	6, 0x01018074045f
 32c:	045f 01ba 01ce      	.insn	6, 0x01ce01ba045f
 332:	5f01                	li	t5,-32
 334:	f404                	.insn	2, 0xf404
 336:	8801                	andi	s0,s0,0
 338:	0102                	c.slli	sp,0x0
 33a:	005f 271c 4e44      	.insn	6, 0x4e44271c005f
 340:	01986c63          	bltu	a6,s9,358 <__DYNAMIC+0x358>
 344:	01c501a3          	sb	t3,3(a0)
 348:	01d0                	addi	a2,sp,196
 34a:	c006                	sw	ra,0(sp)
 34c:	0000                	unimp
 34e:	0401                	addi	s0,s0,0
 350:	1400                	addi	s0,sp,544
 352:	7f08                	.insn	2, 0x7f08
 354:	8d00                	.insn	2, 0x8d00
 356:	2200                	.insn	2, 0x2200
 358:	049f0123          	sb	s1,66(t5) # 6138 <STACK_SIZE+0x5538>
 35c:	4a3a                	lw	s4,140(sp)
 35e:	7f08                	.insn	2, 0x7f08
 360:	8d00                	.insn	2, 0x8d00
 362:	2200                	.insn	2, 0x2200
 364:	049f0123          	sb	s1,66(t5)
 368:	8074                	.insn	2, 0x8074
 36a:	0201                	addi	tp,tp,0 # 0 <__DYNAMIC>
 36c:	9f31                	.insn	2, 0x9f31
 36e:	ba04                	.insn	2, 0xba04
 370:	ce01                	beqz	a2,388 <__DYNAMIC+0x388>
 372:	0801                	addi	a6,a6,0
 374:	007f 008d 2322 9f01 	.insn	10, 0xf4049f012322008d007f
 37c:	f404 
 37e:	8801                	andi	s0,s0,0
 380:	0802                	c.slli	a6,0x0
 382:	007f 008d 2322 9f01 	.insn	10, 0x1f009f012322008d007f
 38a:	1f00 
 38c:	664e4727          	.insn	4, 0x664e4727
 390:	9b6c                	.insn	2, 0x9b6c
 392:	a301                	j	892 <__DYNAMIC+0x892>
 394:	c801                	beqz	s0,3a4 <__DYNAMIC+0x3a4>
 396:	d001                	beqz	s0,296 <__DYNAMIC+0x296>
 398:	0601                	addi	a2,a2,0
 39a:	00c0                	addi	s0,sp,68
 39c:	0100                	addi	s0,sp,128
 39e:	0004                	.insn	2, 0x0004
 3a0:	0614                	addi	a3,sp,768
 3a2:	007d                	c.nop	31
 3a4:	007f 9f22 3a04 064a 	.insn	10, 0x008d064a3a049f22007f
 3ac:	008d 
 3ae:	007f 9f22 7404 0180 	.insn	10, 0x8c08018074049f22007f
 3b6:	8c08 
 3b8:	3300                	.insn	2, 0x3300
 3ba:	7f24                	.insn	2, 0x7f24
 3bc:	2200                	.insn	2, 0x2200
 3be:	049f 01ba 01ce      	.insn	6, 0x01ce01ba049f
 3c4:	8d06                	mv	s10,ra
 3c6:	7f00                	.insn	2, 0x7f00
 3c8:	2200                	.insn	2, 0x2200
 3ca:	049f 01f4 0288      	.insn	6, 0x028801f4049f
 3d0:	8d06                	mv	s10,ra
 3d2:	7f00                	.insn	2, 0x7f00
 3d4:	2200                	.insn	2, 0x2200
 3d6:	009f 1c16 443d      	.insn	6, 0x443d1c16009f
 3dc:	6362                	.insn	2, 0x6362
 3de:	847f 9201 9801 bf01 	.insn	10, 0xc501bf0198019201847f
 3e6:	c501 
 3e8:	0601                	addi	a2,a2,0
 3ea:	00b4                	addi	a3,sp,72
 3ec:	0100                	addi	s0,sp,128
 3ee:	0004                	.insn	2, 0x0004
 3f0:	010c                	addi	a1,sp,128
 3f2:	045a                	slli	s0,s0,0x16
 3f4:	463e                	lw	a2,204(sp)
 3f6:	5a01                	li	s4,-32
 3f8:	7c04                	.insn	2, 0x7c04
 3fa:	0180                	addi	s0,sp,192
 3fc:	5a01                	li	s4,-32
 3fe:	a204                	.insn	2, 0xa204
 400:	b001                	j	fffffc00 <stack+0xfeeff000>
 402:	0101                	addi	sp,sp,0
 404:	045a                	slli	s0,s0,0x16
 406:	01c2                	slli	gp,gp,0x10
 408:	01c6                	slli	gp,gp,0x11
 40a:	3102                	.insn	2, 0x3102
 40c:	049f 01fc 0280      	.insn	6, 0x028001fc049f
 412:	3202                	.insn	2, 0x3202
 414:	009f 1c16 443d      	.insn	6, 0x443d1c16009f
 41a:	6362                	.insn	2, 0x6362
 41c:	837f 8301 8401 9201 	.insn	10, 0x9801920184018301837f
 424:	9801 
 426:	bf01                	j	336 <__DYNAMIC+0x336>
 428:	c501                	beqz	a0,430 <__DYNAMIC+0x430>
 42a:	0601                	addi	a2,a2,0
 42c:	00b4                	addi	a3,sp,72
 42e:	0100                	addi	s0,sp,128
 430:	0004                	.insn	2, 0x0004
 432:	010c                	addi	a1,sp,128
 434:	046c                	addi	a1,sp,524
 436:	463e                	lw	a2,204(sp)
 438:	6c01                	.insn	2, 0x6c01
 43a:	7c04                	.insn	2, 0x7c04
 43c:	0180                	addi	s0,sp,192
 43e:	6c01                	.insn	2, 0x6c01
 440:	a204                	.insn	2, 0xa204
 442:	a801                	j	452 <__DYNAMIC+0x452>
 444:	0101                	addi	sp,sp,0
 446:	046c                	addi	a1,sp,524
 448:	01a8                	addi	a0,sp,200
 44a:	01b0                	addi	a2,sp,200
 44c:	9f7f8c03          	lb	s8,-1545(t6)
 450:	c204                	sw	s1,0(a2)
 452:	c601                	beqz	a2,45a <__DYNAMIC+0x45a>
 454:	0101                	addi	sp,sp,0
 456:	046c                	addi	a1,sp,524
 458:	01fc                	addi	a5,sp,204
 45a:	0280                	addi	s0,sp,320
 45c:	6c01                	.insn	2, 0x6c01
 45e:	1600                	addi	s0,sp,800
 460:	3d1c                	.insn	2, 0x3d1c
 462:	6244                	.insn	2, 0x6244
 464:	01847f63          	bgeu	s0,s8,482 <__DYNAMIC+0x482>
 468:	0192                	slli	gp,gp,0x4
 46a:	0198                	addi	a4,sp,192
 46c:	01c501bf 0000b406 	.insn	8, 0xb40601c501bf
 474:	0401                	addi	s0,s0,0
 476:	0c00                	addi	s0,sp,528
 478:	3002                	.insn	2, 0x3002
 47a:	049f 463e 5f01      	.insn	6, 0x5f01463e049f
 480:	7c04                	.insn	2, 0x7c04
 482:	0180                	addi	s0,sp,192
 484:	5f01                	li	t5,-32
 486:	a204                	.insn	2, 0xa204
 488:	b001                	j	fffffc88 <stack+0xfeeff088>
 48a:	0101                	addi	sp,sp,0
 48c:	045f 01c2 01c6      	.insn	6, 0x01c601c2045f
 492:	5f01                	li	t5,-32
 494:	fc04                	.insn	2, 0xfc04
 496:	8001                	c.srli	s0,0x0
 498:	0102                	c.slli	sp,0x0
 49a:	005f 1c1a 4442      	.insn	6, 0x44421c1a005f
 4a0:	0196                	slli	gp,gp,0x5
 4a2:	0198                	addi	a4,sp,192
 4a4:	01c501c3          	.insn	4, 0x01c501c3
 4a8:	c008                	sw	a0,0(s0)
 4aa:	0000                	unimp
 4ac:	0001                	nop
 4ae:	6c01                	.insn	2, 0x6c01
 4b0:	fa08                	.insn	2, 0xfa08
 4b2:	0000                	unimp
 4b4:	0001                	nop
 4b6:	6c01                	.insn	2, 0x6c01
 4b8:	7a08                	.insn	2, 0x7a08
 4ba:	0001                	nop
 4bc:	0001                	nop
 4be:	6c01                	.insn	2, 0x6c01
 4c0:	b408                	.insn	2, 0xb408
 4c2:	0001                	nop
 4c4:	0001                	nop
 4c6:	6c01                	.insn	2, 0x6c01
 4c8:	1a00                	addi	s0,sp,304
 4ca:	421c                	lw	a5,0(a2)
 4cc:	9644                	.insn	2, 0x9644
 4ce:	9801                	andi	s0,s0,-32
 4d0:	c301                	beqz	a4,4d0 <__DYNAMIC+0x4d0>
 4d2:	c501                	beqz	a0,4da <__DYNAMIC+0x4da>
 4d4:	0801                	addi	a6,a6,0
 4d6:	00c0                	addi	s0,sp,68
 4d8:	0100                	addi	s0,sp,128
 4da:	0100                	addi	s0,sp,128
 4dc:	085f 00fa 0100      	.insn	6, 0x010000fa085f
 4e2:	0100                	addi	s0,sp,128
 4e4:	085f 017a 0100      	.insn	6, 0x0100017a085f
 4ea:	0100                	addi	s0,sp,128
 4ec:	085f 01b4 0100      	.insn	6, 0x010001b4085f
 4f2:	0100                	addi	s0,sp,128
 4f4:	005f 3329 5350      	.insn	6, 0x53503329005f
 4fa:	746e                	.insn	2, 0x746e
 4fc:	01a5                	addi	gp,gp,9 # 1970125 <stack+0x86f525>
 4fe:	01a8                	addi	a0,sp,200
 500:	01d2                	slli	gp,gp,0x14
 502:	01d5                	addi	gp,gp,21
 504:	d406                	sw	ra,40(sp)
 506:	0000                	unimp
 508:	0401                	addi	s0,s0,0
 50a:	1400                	addi	s0,sp,544
 50c:	5a01                	li	s4,-32
 50e:	3604                	.insn	2, 0x3604
 510:	013a                	slli	sp,sp,0xe
 512:	045a                	slli	s0,s0,0x16
 514:	7c6c                	.insn	2, 0x7c6c
 516:	3402                	.insn	2, 0x3402
 518:	049f 01ba 01be      	.insn	6, 0x01be01ba049f
 51e:	5a01                	li	s4,-32
 520:	f404                	.insn	2, 0xf404
 522:	f801                	bnez	s0,432 <__DYNAMIC+0x432>
 524:	0101                	addi	sp,sp,0
 526:	005a                	c.slli	zero,0x16
 528:	3329                	jal	232 <__DYNAMIC+0x232>
 52a:	5350                	lw	a2,36(a4)
 52c:	746e                	.insn	2, 0x746e
 52e:	01a5                	addi	gp,gp,9
 530:	01a8                	addi	a0,sp,200
 532:	01d2                	slli	gp,gp,0x14
 534:	01d5                	addi	gp,gp,21
 536:	d406                	sw	ra,40(sp)
 538:	0000                	unimp
 53a:	0401                	addi	s0,s0,0
 53c:	1400                	addi	s0,sp,544
 53e:	6c01                	.insn	2, 0x6c01
 540:	3604                	.insn	2, 0x3604
 542:	013a                	slli	sp,sp,0xe
 544:	046c                	addi	a1,sp,524
 546:	7c6c                	.insn	2, 0x7c6c
 548:	6c01                	.insn	2, 0x6c01
 54a:	ba04                	.insn	2, 0xba04
 54c:	be01                	j	5c <__DYNAMIC+0x5c>
 54e:	0101                	addi	sp,sp,0
 550:	046c                	addi	a1,sp,524
 552:	01f4                	addi	a3,sp,204
 554:	01f8                	addi	a4,sp,204
 556:	6c01                	.insn	2, 0x6c01
 558:	2900                	.insn	2, 0x2900
 55a:	6e535033          	.insn	4, 0x6e535033
 55e:	a574                	.insn	2, 0xa574
 560:	a801                	j	570 <__DYNAMIC+0x570>
 562:	d201                	beqz	a2,462 <__DYNAMIC+0x462>
 564:	d501                	beqz	a0,46c <__DYNAMIC+0x46c>
 566:	0601                	addi	a2,a2,0
 568:	00d4                	addi	a3,sp,68
 56a:	0100                	addi	s0,sp,128
 56c:	0004                	.insn	2, 0x0004
 56e:	0114                	addi	a3,sp,128
 570:	045f 3a36 5f01      	.insn	6, 0x5f013a36045f
 576:	6c04                	.insn	2, 0x6c04
 578:	017c                	addi	a5,sp,140
 57a:	045f 01ba 01be      	.insn	6, 0x01be01ba045f
 580:	5f01                	li	t5,-32
 582:	f404                	.insn	2, 0xf404
 584:	f801                	bnez	s0,494 <__DYNAMIC+0x494>
 586:	0101                	addi	sp,sp,0
 588:	005f 3933 5c53      	.insn	6, 0x5c533933005f
 58e:	7b74                	.insn	2, 0x7b74
 590:	0184                	addi	s1,sp,192
 592:	018e                	slli	gp,gp,0x3
 594:	01a8                	addi	a0,sp,200
 596:	01b1                	addi	gp,gp,12
 598:	01b4                	addi	a3,sp,200
 59a:	01d501bb          	.insn	4, 0x01d501bb
 59e:	01de                	slli	gp,gp,0x17
 5a0:	e806                	.insn	2, 0xe806
 5a2:	0000                	unimp
 5a4:	0401                	addi	s0,s0,0
 5a6:	0400                	addi	s0,sp,512
 5a8:	5c01                	li	s8,-32
 5aa:	2604                	.insn	2, 0x2604
 5ac:	0132                	slli	sp,sp,0xc
 5ae:	045c                	addi	a5,sp,516
 5b0:	6c68                	.insn	2, 0x6c68
 5b2:	5c01                	li	s8,-32
 5b4:	7c04                	.insn	2, 0x7c04
 5b6:	018e                	slli	gp,gp,0x3
 5b8:	5c01                	li	s8,-32
 5ba:	aa04                	.insn	2, 0xaa04
 5bc:	b601                	j	bc <__DYNAMIC+0xbc>
 5be:	0101                	addi	sp,sp,0
 5c0:	045c                	addi	a5,sp,516
 5c2:	01be                	slli	gp,gp,0xf
 5c4:	01c8                	addi	a0,sp,196
 5c6:	5c01                	li	s8,-32
 5c8:	e404                	.insn	2, 0xe404
 5ca:	f001                	bnez	s0,4ca <__DYNAMIC+0x4ca>
 5cc:	0101                	addi	sp,sp,0
 5ce:	005c                	addi	a5,sp,4
 5d0:	5c533933          	.insn	4, 0x5c533933
 5d4:	7b74                	.insn	2, 0x7b74
 5d6:	0184                	addi	s1,sp,192
 5d8:	018e                	slli	gp,gp,0x3
 5da:	01a8                	addi	a0,sp,200
 5dc:	01b1                	addi	gp,gp,12
 5de:	01b4                	addi	a3,sp,200
 5e0:	01d501bb          	.insn	4, 0x01d501bb
 5e4:	01de                	slli	gp,gp,0x17
 5e6:	e806                	.insn	2, 0xe806
 5e8:	0000                	unimp
 5ea:	0401                	addi	s0,s0,0
 5ec:	0400                	addi	s0,sp,512
 5ee:	6c01                	.insn	2, 0x6c01
 5f0:	2604                	.insn	2, 0x2604
 5f2:	0132                	slli	sp,sp,0xc
 5f4:	046c                	addi	a1,sp,524
 5f6:	6c68                	.insn	2, 0x6c68
 5f8:	6c01                	.insn	2, 0x6c01
 5fa:	7c04                	.insn	2, 0x7c04
 5fc:	018e                	slli	gp,gp,0x3
 5fe:	6c01                	.insn	2, 0x6c01
 600:	aa04                	.insn	2, 0xaa04
 602:	b601                	j	102 <__DYNAMIC+0x102>
 604:	0101                	addi	sp,sp,0
 606:	046c                	addi	a1,sp,524
 608:	01be                	slli	gp,gp,0xf
 60a:	01c8                	addi	a0,sp,196
 60c:	6c01                	.insn	2, 0x6c01
 60e:	e404                	.insn	2, 0xe404
 610:	f001                	bnez	s0,510 <__DYNAMIC+0x510>
 612:	0101                	addi	sp,sp,0
 614:	006c                	addi	a1,sp,12
 616:	5c533933          	.insn	4, 0x5c533933
 61a:	7b74                	.insn	2, 0x7b74
 61c:	0184                	addi	s1,sp,192
 61e:	018c                	addi	a1,sp,192
 620:	018c                	addi	a1,sp,192
 622:	018e                	slli	gp,gp,0x3
 624:	01a8                	addi	a0,sp,200
 626:	01b1                	addi	gp,gp,12
 628:	01b4                	addi	a3,sp,200
 62a:	01b9                	addi	gp,gp,14
 62c:	01b9                	addi	gp,gp,14
 62e:	01d501bb          	.insn	4, 0x01d501bb
 632:	01de                	slli	gp,gp,0x17
 634:	e806                	.insn	2, 0xe806
 636:	0000                	unimp
 638:	0401                	addi	s0,s0,0
 63a:	0400                	addi	s0,sp,512
 63c:	5f01                	li	t5,-32
 63e:	2604                	.insn	2, 0x2604
 640:	0132                	slli	sp,sp,0xc
 642:	045f 6c68 5f01      	.insn	6, 0x5f016c68045f
 648:	7c04                	.insn	2, 0x7c04
 64a:	0186                	slli	gp,gp,0x1
 64c:	5f01                	li	t5,-32
 64e:	8604                	.insn	2, 0x8604
 650:	8e01                	sub	a2,a2,s0
 652:	0301                	addi	t1,t1,0
 654:	7f7f                	.insn	2, 0x7f7f
 656:	049f 01aa 01b6      	.insn	6, 0x01b601aa049f
 65c:	5f01                	li	t5,-32
 65e:	be04                	.insn	2, 0xbe04
 660:	c001                	beqz	s0,660 <__DYNAMIC+0x660>
 662:	0101                	addi	sp,sp,0
 664:	045f 01c0 01c8      	.insn	6, 0x01c801c0045f
 66a:	9f7f7f03          	.insn	4, 0x9f7f7f03
 66e:	e404                	.insn	2, 0xe404
 670:	f001                	bnez	s0,570 <__DYNAMIC+0x570>
 672:	0101                	addi	sp,sp,0
 674:	005f 5c56 7b77      	.insn	6, 0x7b775c56005f
 67a:	0186                	slli	gp,gp,0x1
 67c:	018e                	slli	gp,gp,0x3
 67e:	01b101ab          	.insn	4, 0x01b101ab
 682:	01d8                	addi	a4,sp,196
 684:	01de                	slli	gp,gp,0x17
 686:	0e06                	slli	t3,t3,0x1
 688:	0001                	nop
 68a:	0401                	addi	s0,s0,0
 68c:	0c00                	addi	s0,sp,528
 68e:	5d01                	li	s10,-32
 690:	4204                	lw	s1,0(a2)
 692:	0146                	slli	sp,sp,0x11
 694:	045d                	addi	s0,s0,23
 696:	6856                	.insn	2, 0x6856
 698:	5d01                	li	s10,-32
 69a:	8404                	.insn	2, 0x8404
 69c:	9001                	srli	s0,s0,0x20
 69e:	0101                	addi	sp,sp,0
 6a0:	045d                	addi	s0,s0,23
 6a2:	01be                	slli	gp,gp,0xf
 6a4:	01ca                	slli	gp,gp,0x12
 6a6:	5d01                	li	s10,-32
 6a8:	0300                	addi	s0,sp,384
 6aa:	0a0a                	slli	s4,s4,0x2
 6ac:	1515                	addi	a0,a0,-27
 6ae:	1818                	addi	a4,sp,48
 6b0:	1a1a                	slli	s4,s4,0x26
 6b2:	0600                	addi	s0,sp,768
 6b4:	030c                	addi	a1,sp,384
 6b6:	0100                	addi	s0,sp,128
 6b8:	0004                	.insn	2, 0x0004
 6ba:	0218                	addi	a4,sp,256
 6bc:	9f30                	.insn	2, 0x9f30
 6be:	1804                	addi	s1,sp,48
 6c0:	0730                	addi	a2,sp,904
 6c2:	007a                	c.slli	zero,0x1e
 6c4:	7d20                	.insn	2, 0x7d20
 6c6:	2200                	.insn	2, 0x2200
 6c8:	049f 3630 7d06      	.insn	6, 0x7d063630049f
 6ce:	7a00                	.insn	2, 0x7a00
 6d0:	1c00                	addi	s0,sp,560
 6d2:	049f 3c36 7a07      	.insn	6, 0x7a073c36049f
 6d8:	2000                	.insn	2, 0x2000
 6da:	007d                	c.nop	31
 6dc:	9f22                	add	t5,t5,s0
 6de:	3c04                	.insn	2, 0x3c04
 6e0:	023e                	slli	tp,tp,0xf
 6e2:	9f30                	.insn	2, 0x9f30
 6e4:	0000                	unimp
 6e6:	58581717          	auipc	a4,0x58581
 6ea:	5e5e                	lw	t3,244(sp)
 6ec:	6161                	addi	sp,sp,80
 6ee:	6262                	.insn	2, 0x6262
 6f0:	0600                	addi	s0,sp,768
 6f2:	01e0                	addi	s0,sp,204
 6f4:	0100                	addi	s0,sp,128
 6f6:	0004                	.insn	2, 0x0004
 6f8:	0132                	slli	sp,sp,0xc
 6fa:	045a                	slli	s0,s0,0x16
 6fc:	a032                	.insn	2, 0xa032
 6fe:	0101                	addi	sp,sp,0
 700:	045c                	addi	a5,sp,516
 702:	01a0                	addi	s0,sp,200
 704:	01a6                	slli	gp,gp,0x9
 706:	5a01                	li	s4,-32
 708:	a604                	.insn	2, 0xa604
 70a:	aa01                	j	81a <__DYNAMIC+0x81a>
 70c:	0101                	addi	sp,sp,0
 70e:	045c                	addi	a5,sp,516
 710:	01aa                	slli	gp,gp,0xa
 712:	01b0                	addi	a2,sp,200
 714:	5a01                	li	s4,-32
 716:	b004                	.insn	2, 0xb004
 718:	b401                	j	118 <__DYNAMIC+0x118>
 71a:	0101                	addi	sp,sp,0
 71c:	005c                	addi	a5,sp,4
 71e:	0f06                	slli	t5,t5,0x1
 720:	0061                	c.nop	24
 722:	e006                	.insn	2, 0xe006
 724:	0001                	nop
 726:	0401                	addi	s0,s0,0
 728:	2200                	.insn	2, 0x2200
 72a:	0c06                	slli	s8,s8,0x1
 72c:	4240                	lw	s0,4(a2)
 72e:	049f000f          	.insn	4, 0x049f000f
 732:	01aa                	slli	gp,gp,0xa
 734:	01b4                	addi	a3,sp,200
 736:	0c06                	slli	s8,s8,0x1
 738:	4240                	lw	s0,4(a2)
 73a:	009f000f          	.insn	4, 0x009f000f
 73e:	7008554f          	.insn	4, 0x7008554f
 742:	0002                	c.slli	zero,0x0
 744:	0801                	addi	a6,a6,0
 746:	5a01                	li	s4,-32
 748:	2000                	.insn	2, 0x2000
 74a:	0658564f          	.insn	4, 0x0658564f
 74e:	0226                	slli	tp,tp,0x9
 750:	0100                	addi	s0,sp,128
 752:	0004                	.insn	2, 0x0004
 754:	014a                	slli	sp,sp,0x12
 756:	046e                	slli	s0,s0,0x1b
 758:	5a54                	lw	a3,52(a2)
 75a:	6e01                	.insn	2, 0x6e01
 75c:	2000                	.insn	2, 0x2000
 75e:	2222                	.insn	2, 0x2222
 760:	2f2e2b2b          	.insn	4, 0x2f2e2b2b
 764:	4848                	lw	a0,20(s0)
 766:	0658564b          	.insn	4, 0x0658564b
 76a:	0226                	slli	tp,tp,0x9
 76c:	0100                	addi	s0,sp,128
 76e:	0004                	.insn	2, 0x0004
 770:	0204                	addi	s1,sp,256
 772:	9f30                	.insn	2, 0x9f30
 774:	0404                	addi	s1,sp,512
 776:	0e16                	slli	t3,t3,0x5
 778:	008e                	slli	ra,ra,0x3
 77a:	ff08                	.insn	2, 0xff08
 77c:	091a                	slli	s2,s2,0x6
 77e:	1ef8                	addi	a4,sp,892
 780:	007e                	c.slli	zero,0x1f
 782:	3122                	.insn	2, 0x3122
 784:	9f1c                	.insn	2, 0x9f1c
 786:	1604                	addi	s1,sp,800
 788:	0e18                	addi	a4,sp,784
 78a:	008e                	slli	ra,ra,0x3
 78c:	ff08                	.insn	2, 0xff08
 78e:	091a                	slli	s2,s2,0x6
 790:	1ef8                	addi	a4,sp,892
 792:	007e                	c.slli	zero,0x1f
 794:	3222                	.insn	2, 0x3222
 796:	9f1c                	.insn	2, 0x9f1c
 798:	1c04                	addi	s1,sp,560
 79a:	0e3a                	slli	t3,t3,0xe
 79c:	008e                	slli	ra,ra,0x3
 79e:	ff08                	.insn	2, 0xff08
 7a0:	091a                	slli	s2,s2,0x6
 7a2:	1ef8                	addi	a4,sp,892
 7a4:	007e                	c.slli	zero,0x1f
 7a6:	3122                	.insn	2, 0x3122
 7a8:	9f1c                	.insn	2, 0x9f1c
 7aa:	3a04                	.insn	2, 0x3a04
 7ac:	0e3c                	addi	a5,sp,792
 7ae:	008e                	slli	ra,ra,0x3
 7b0:	ff08                	.insn	2, 0xff08
 7b2:	091a                	slli	s2,s2,0x6
 7b4:	1ef8                	addi	a4,sp,892
 7b6:	007d                	c.nop	31
 7b8:	3122                	.insn	2, 0x3122
 7ba:	9f1c                	.insn	2, 0x9f1c
 7bc:	5404                	lw	s1,40(s0)
 7be:	0e5a                	slli	t3,t3,0x16
 7c0:	008e                	slli	ra,ra,0x3
 7c2:	ff08                	.insn	2, 0xff08
 7c4:	091a                	slli	s2,s2,0x6
 7c6:	1ef8                	addi	a4,sp,892
 7c8:	007e                	c.slli	zero,0x1f
 7ca:	3122                	.insn	2, 0x3122
 7cc:	9f1c                	.insn	2, 0x9f1c
 7ce:	2000                	.insn	2, 0x2000
 7d0:	2e2c                	.insn	2, 0x2e2c
 7d2:	4b49                	li	s6,18
 7d4:	0658564f          	.insn	4, 0x0658564f
 7d8:	0226                	slli	tp,tp,0x9
 7da:	0100                	addi	s0,sp,128
 7dc:	0004                	.insn	2, 0x0004
 7de:	0118                	addi	a4,sp,128
 7e0:	045a                	slli	s0,s0,0x16
 7e2:	3c18                	.insn	2, 0x3c18
 7e4:	5a01                	li	s4,-32
 7e6:	3c04                	.insn	2, 0x3c04
 7e8:	014a                	slli	sp,sp,0x12
 7ea:	045a                	slli	s0,s0,0x16
 7ec:	5a54                	lw	a3,52(a2)
 7ee:	5a01                	li	s4,-32
 7f0:	2200                	.insn	2, 0x2200
 7f2:	3b29                	jal	50c <__DYNAMIC+0x50c>
 7f4:	5646                	lw	a2,112(sp)
 7f6:	0658                	addi	a4,sp,772
 7f8:	022a                	slli	tp,tp,0xa
 7fa:	0100                	addi	s0,sp,128
 7fc:	0004                	.insn	2, 0x0004
 7fe:	010c                	addi	a1,sp,128
 800:	045f 3024 5f01      	.insn	6, 0x5f013024045f
 806:	5004                	lw	s1,32(s0)
 808:	0156                	slli	sp,sp,0x15
 80a:	005f 2f26 4843      	.insn	6, 0x48432f26005f
 810:	5648                	lw	a0,44(a2)
 812:	3406                	.insn	2, 0x3406
 814:	0002                	c.slli	zero,0x0
 816:	0401                	addi	s0,s0,0
 818:	0e00                	addi	s0,sp,784
 81a:	5d01                	li	s10,-32
 81c:	2404                	.insn	2, 0x2404
 81e:	012c                	addi	a1,sp,136
 820:	045e                	slli	s0,s0,0x17
 822:	462c                	lw	a1,72(a2)
 824:	5d01                	li	s10,-32
 826:	3200                	.insn	2, 0x3200
 828:	0242083b          	.insn	4, 0x0242083b
 82c:	0100                	addi	s0,sp,128
 82e:	010c                	addi	a1,sp,128
 830:	006e                	c.slli	zero,0x1b
 832:	3b32                	.insn	2, 0x3b32
 834:	4208                	lw	a0,0(a2)
 836:	0002                	c.slli	zero,0x0
 838:	0c01                	addi	s8,s8,0
 83a:	8e0e                	mv	t3,gp
 83c:	0800                	addi	s0,sp,16
 83e:	f8091aff 22007e1e 	.insn	12, 0x009f1c3122007e1ef8091aff
 846:	009f1c31 
 84a:	46083b37          	lui	s6,0x46083
 84e:	0002                	c.slli	zero,0x0
 850:	0801                	addi	a6,a6,0
 852:	5f01                	li	t5,-32
 854:	2200                	.insn	2, 0x2200
 856:	3d26                	.insn	2, 0x3d26
 858:	06585643          	.insn	4, 0x06585643
 85c:	022a                	slli	tp,tp,0xa
 85e:	0100                	addi	s0,sp,128
 860:	0004                	.insn	2, 0x0004
 862:	010a                	slli	sp,sp,0x2
 864:	045c                	addi	a5,sp,516
 866:	2e24                	.insn	2, 0x2e24
 868:	5c01                	li	s8,-32
 86a:	5004                	lw	s1,32(s0)
 86c:	0156                	slli	sp,sp,0x15
 86e:	005c                	addi	a5,sp,4
 870:	2622                	.insn	2, 0x2622
 872:	433d                	li	t1,15
 874:	5856                	lw	a6,116(sp)
 876:	2a06                	.insn	2, 0x2a06
 878:	0002                	c.slli	zero,0x0
 87a:	0401                	addi	s0,s0,0
 87c:	0a00                	addi	s0,sp,272
 87e:	6e01                	.insn	2, 0x6e01
 880:	2404                	.insn	2, 0x2404
 882:	012e                	slli	sp,sp,0xb
 884:	046e                	slli	s0,s0,0x1b
 886:	5650                	lw	a2,44(a2)
 888:	6e01                	.insn	2, 0x6e01
 88a:	2200                	.insn	2, 0x2200
 88c:	3d26                	.insn	2, 0x3d26
 88e:	06585643          	.insn	4, 0x06585643
 892:	022a                	slli	tp,tp,0xa
 894:	0100                	addi	s0,sp,128
 896:	0004                	.insn	2, 0x0004
 898:	0e0a                	slli	t3,t3,0x2
 89a:	008e                	slli	ra,ra,0x3
 89c:	ff08                	.insn	2, 0xff08
 89e:	091a                	slli	s2,s2,0x6
 8a0:	1ef8                	addi	a4,sp,892
 8a2:	007e                	c.slli	zero,0x1f
 8a4:	3122                	.insn	2, 0x3122
 8a6:	9f1c                	.insn	2, 0x9f1c
 8a8:	2404                	.insn	2, 0x2404
 8aa:	0e2e                	slli	t3,t3,0xb
 8ac:	008e                	slli	ra,ra,0x3
 8ae:	ff08                	.insn	2, 0xff08
 8b0:	091a                	slli	s2,s2,0x6
 8b2:	1ef8                	addi	a4,sp,892
 8b4:	007e                	c.slli	zero,0x1f
 8b6:	3122                	.insn	2, 0x3122
 8b8:	9f1c                	.insn	2, 0x9f1c
 8ba:	5004                	lw	s1,32(s0)
 8bc:	0e56                	slli	t3,t3,0x15
 8be:	008e                	slli	ra,ra,0x3
 8c0:	ff08                	.insn	2, 0xff08
 8c2:	091a                	slli	s2,s2,0x6
 8c4:	1ef8                	addi	a4,sp,892
 8c6:	007e                	c.slli	zero,0x1f
 8c8:	3122                	.insn	2, 0x3122
 8ca:	9f1c                	.insn	2, 0x9f1c
 8cc:	2200                	.insn	2, 0x2200
 8ce:	3f26                	.insn	2, 0x3f26
 8d0:	06585643          	.insn	4, 0x06585643
 8d4:	022a                	slli	tp,tp,0xa
 8d6:	0100                	addi	s0,sp,128
 8d8:	0004                	.insn	2, 0x0004
 8da:	010a                	slli	sp,sp,0x2
 8dc:	045e                	slli	s0,s0,0x17
 8de:	2e24                	.insn	2, 0x2e24
 8e0:	5e01                	li	t3,-32
 8e2:	5004                	lw	s1,32(s0)
 8e4:	0156                	slli	sp,sp,0x15
 8e6:	005e                	c.slli	zero,0x17

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	005c                	addi	a5,sp,4
   2:	0000                	unimp
   4:	0002                	c.slli	zero,0x0
   6:	0000                	unimp
   8:	0000                	unimp
   a:	0004                	.insn	2, 0x0004
   c:	0000                	unimp
   e:	0000                	unimp
  10:	008c                	addi	a1,sp,64
  12:	0100                	addi	s0,sp,128
  14:	0154                	addi	a3,sp,132
  16:	0000                	unimp
  18:	01e0                	addi	s0,sp,204
  1a:	0100                	addi	s0,sp,128
  1c:	00b4                	addi	a3,sp,72
  1e:	0000                	unimp
  20:	0294                	addi	a3,sp,320
  22:	0100                	addi	s0,sp,128
  24:	003a                	c.slli	zero,0xe
	...
  36:	0000                	unimp
  38:	02ce                	slli	t0,t0,0x13
  3a:	0100                	addi	s0,sp,128
  3c:	003e                	c.slli	zero,0xf
  3e:	0000                	unimp
  40:	030c                	addi	a1,sp,384
  42:	0100                	addi	s0,sp,128
  44:	003e                	c.slli	zero,0xf
	...
  4e:	0000                	unimp
  50:	034a                	slli	t1,t1,0x12
  52:	0100                	addi	s0,sp,128
  54:	0178                	addi	a4,sp,140
	...
  5e:	0000                	unimp
  60:	0024                	addi	s1,sp,8
  62:	0000                	unimp
  64:	0002                	c.slli	zero,0x0
  66:	0a9a                	slli	s5,s5,0x6
  68:	0000                	unimp
  6a:	0004                	.insn	2, 0x0004
  6c:	0000                	unimp
  6e:	0000                	unimp
  70:	04c2                	slli	s1,s1,0x10
  72:	0100                	addi	s0,sp,128
  74:	0030                	addi	a2,sp,8
  76:	0000                	unimp
  78:	0000                	unimp
  7a:	0100                	addi	s0,sp,128
  7c:	008c                	addi	a1,sp,64
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	0286                	slli	t0,t0,0x1
   2:	0000                	unimp
   4:	0005                	c.nop	1
   6:	0004                	.insn	2, 0x0004
   8:	0000                	unimp
   a:	0000                	unimp
   c:	8e05                	sub	a2,a2,s1
   e:	0000                	unimp
  10:	0401                	addi	s0,s0,0
  12:	0c00                	addi	s0,sp,528
  14:	1004                	addi	s1,sp,32
  16:	0416                	slli	s0,s0,0x5
  18:	3632                	.insn	2, 0x3632
  1a:	3a04                	.insn	2, 0x3a04
  1c:	0446                	slli	s0,s0,0x11
  1e:	6c64                	.insn	2, 0x6c64
  20:	6c04                	.insn	2, 0x6c04
  22:	046c                	addi	a1,sp,524
  24:	7c70                	.insn	2, 0x7c70
  26:	a204                	.insn	2, 0xa204
  28:	b201                	j	fffff928 <stack+0xfeefed28>
  2a:	0401                	addi	s0,s0,0
  2c:	01e8                	addi	a0,sp,204
  2e:	01ec                	addi	a1,sp,204
  30:	ec04                	.insn	2, 0xec04
  32:	f001                	bnez	s0,ffffff32 <stack+0xfeeff332>
  34:	0401                	addi	s0,s0,0
  36:	01f4                	addi	a3,sp,204
  38:	0280                	addi	s0,sp,320
  3a:	a204                	.insn	2, 0xa204
  3c:	a602                	.insn	2, 0xa602
  3e:	0402                	c.slli	s0,0x0
  40:	02a6                	slli	t0,t0,0x9
  42:	02aa                	slli	t0,t0,0xa
  44:	ae04                	.insn	2, 0xae04
  46:	ba02                	.insn	2, 0xba02
  48:	0002                	c.slli	zero,0x0
  4a:	a405                	j	26a <__DYNAMIC+0x26a>
  4c:	0000                	unimp
  4e:	0401                	addi	s0,s0,0
  50:	0200                	addi	s0,sp,256
  52:	0404                	addi	s1,sp,512
  54:	0406                	slli	s0,s0,0x1
  56:	1c10                	addi	a2,sp,560
  58:	2004                	.insn	2, 0x2004
  5a:	0424                	addi	s1,sp,520
  5c:	4e4e                	lw	t3,208(sp)
  5e:	5604                	lw	s1,40(a2)
  60:	0456                	slli	s0,s0,0x15
  62:	5a56                	lw	s4,116(sp)
  64:	b204                	.insn	2, 0xb204
  66:	b201                	j	fffff966 <stack+0xfeefed66>
  68:	0401                	addi	s0,s0,0
  6a:	01ca                	slli	gp,gp,0x12
  6c:	01ce                	slli	gp,gp,0x13
  6e:	d204                	sw	s1,32(a2)
  70:	d201                	beqz	a2,ffffff70 <stack+0xfeeff370>
  72:	0401                	addi	s0,s0,0
  74:	01d6                	slli	gp,gp,0x15
  76:	01d6                	slli	gp,gp,0x15
  78:	8404                	.insn	2, 0x8404
  7a:	8802                	jr	a6
  7c:	0402                	c.slli	s0,0x0
  7e:	028c                	addi	a1,sp,320
  80:	028c                	addi	a1,sp,320
  82:	9004                	.insn	2, 0x9004
  84:	9002                	ebreak
  86:	0002                	c.slli	zero,0x0
  88:	c005                	beqz	s0,a8 <__DYNAMIC+0xa8>
  8a:	0000                	unimp
  8c:	0401                	addi	s0,s0,0
  8e:	0000                	unimp
  90:	0404                	addi	s1,sp,512
  92:	0408                	addi	a0,sp,512
  94:	3a3a                	.insn	2, 0x3a3a
  96:	3a04                	.insn	2, 0x3a04
  98:	043e                	slli	s0,s0,0xf
  9a:	01ae                	slli	gp,gp,0xb
  9c:	01b2                	slli	gp,gp,0xc
  9e:	ba04                	.insn	2, 0xba04
  a0:	ba01                	j	fffff9b0 <stack+0xfeefedb0>
  a2:	0401                	addi	s0,s0,0
  a4:	01e8                	addi	a0,sp,204
  a6:	01ec                	addi	a1,sp,204
  a8:	f404                	.insn	2, 0xf404
  aa:	f401                	bnez	s0,ffffffb2 <stack+0xfeeff3b2>
  ac:	0001                	nop
  ae:	ac05                	j	2de <__DYNAMIC+0x2de>
  b0:	0000                	unimp
  b2:	0401                	addi	s0,s0,0
  b4:	0400                	addi	s0,sp,512
  b6:	2804                	.insn	2, 0x2804
  b8:	0430                	addi	a2,sp,520
  ba:	3c38                	.insn	2, 0x3c38
  bc:	5e04                	lw	s1,56(a2)
  be:	0462                	slli	s0,s0,0x18
  c0:	0194                	addi	a3,sp,192
  c2:	0194                	addi	a3,sp,192
  c4:	9804                	.insn	2, 0x9804
  c6:	9c01                	.insn	2, 0x9c01
  c8:	0401                	addi	s0,s0,0
  ca:	01a0                	addi	s0,sp,200
  cc:	01a4                	addi	s1,sp,200
  ce:	e204                	.insn	2, 0xe204
  d0:	e601                	bnez	a2,d8 <__DYNAMIC+0xd8>
  d2:	0401                	addi	s0,s0,0
  d4:	029c                	addi	a5,sp,320
  d6:	02a0                	addi	s0,sp,328
  d8:	0500                	addi	s0,sp,640
  da:	00b0                	addi	a2,sp,72
  dc:	0100                	addi	s0,sp,128
  de:	0004                	.insn	2, 0x0004
  e0:	0404                	addi	s1,sp,512
  e2:	342c                	.insn	2, 0x342c
  e4:	3804                	.insn	2, 0x3804
  e6:	043c                	addi	a5,sp,520
  e8:	6a5e                	.insn	2, 0x6a5e
  ea:	9004                	.insn	2, 0x9004
  ec:	9401                	srai	s0,s0,0x20
  ee:	0401                	addi	s0,s0,0
  f0:	0198                	addi	a4,sp,192
  f2:	019c                	addi	a5,sp,192
  f4:	a004                	.insn	2, 0xa004
  f6:	a401                	j	2f6 <__DYNAMIC+0x2f6>
  f8:	0401                	addi	s0,s0,0
  fa:	01b4                	addi	a3,sp,200
  fc:	01bc                	addi	a5,sp,200
  fe:	c204                	sw	s1,0(a2)
 100:	c601                	beqz	a2,108 <__DYNAMIC+0x108>
 102:	0401                	addi	s0,s0,0
 104:	01e2                	slli	gp,gp,0x18
 106:	01ee                	slli	gp,gp,0x1b
 108:	f604                	.insn	2, 0xf604
 10a:	f601                	bnez	a2,12 <__DYNAMIC+0x12>
 10c:	0401                	addi	s0,s0,0
 10e:	01fc                	addi	a5,sp,204
 110:	0280                	addi	s0,sp,320
 112:	9c04                	.insn	2, 0x9c04
 114:	a802                	.insn	2, 0xa802
 116:	0002                	c.slli	zero,0x0
 118:	e005                	bnez	s0,138 <__DYNAMIC+0x138>
 11a:	0001                	nop
 11c:	0401                	addi	s0,s0,0
 11e:	1200                	addi	s0,sp,288
 120:	1404                	addi	s1,sp,544
 122:	0432                	slli	s0,s0,0xc
 124:	4a46                	lw	s4,80(sp)
 126:	aa04                	.insn	2, 0xaa04
 128:	b401                	j	fffffb28 <stack+0xfeefef28>
 12a:	0001                	nop
 12c:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
 12e:	0002                	c.slli	zero,0x0
 130:	0401                	addi	s0,s0,0
 132:	1400                	addi	s0,sp,544
 134:	1804                	addi	s1,sp,48
 136:	006e                	c.slli	zero,0x1b
 138:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
 13a:	0002                	c.slli	zero,0x0
 13c:	0401                	addi	s0,s0,0
 13e:	1400                	addi	s0,sp,544
 140:	1804                	addi	s1,sp,48
 142:	045e                	slli	s0,s0,0x17
 144:	6e68                	.insn	2, 0x6e68
 146:	0500                	addi	s0,sp,640
 148:	0212                	slli	tp,tp,0x4
 14a:	0100                	addi	s0,sp,128
 14c:	0004                	.insn	2, 0x0004
 14e:	0412                	slli	s0,s0,0x4
 150:	2818                	.insn	2, 0x2818
 152:	2a04                	.insn	2, 0x2a04
 154:	042c                	addi	a1,sp,520
 156:	4c30                	lw	a2,88(s0)
 158:	4e04                	lw	s1,24(a2)
 15a:	0450                	addi	a2,sp,516
 15c:	6e68                	.insn	2, 0x6e68
 15e:	0500                	addi	s0,sp,640
 160:	0212                	slli	tp,tp,0x4
 162:	0100                	addi	s0,sp,128
 164:	0004                	.insn	2, 0x0004
 166:	040c                	addi	a1,sp,512
 168:	3030                	.insn	2, 0x3030
 16a:	3004                	.insn	2, 0x3004
 16c:	003c                	addi	a5,sp,8
 16e:	1e05                	addi	t3,t3,-31 # 1afe1 <STACK_SIZE+0x1a3e1>
 170:	0002                	c.slli	zero,0x0
 172:	0401                	addi	s0,s0,0
 174:	0600                	addi	s0,sp,768
 176:	0c04                	addi	s1,sp,528
 178:	0416                	slli	s0,s0,0x5
 17a:	2424                	.insn	2, 0x2424
 17c:	3004                	.insn	2, 0x3004
 17e:	043a                	slli	s0,s0,0xe
 180:	625c                	.insn	2, 0x625c
 182:	0500                	addi	s0,sp,640
 184:	0280                	addi	s0,sp,320
 186:	0100                	addi	s0,sp,128
 188:	0004                	.insn	2, 0x0004
 18a:	0402                	c.slli	s0,0x0
 18c:	0806                	slli	a6,a6,0x1
 18e:	0500                	addi	s0,sp,640
 190:	030c                	addi	a1,sp,384
 192:	0100                	addi	s0,sp,128
 194:	0004                	.insn	2, 0x0004
 196:	040a                	slli	s0,s0,0x2
 198:	3810                	.insn	2, 0x3810
 19a:	0500                	addi	s0,sp,640
 19c:	0312                	slli	t1,t1,0x4
 19e:	0100                	addi	s0,sp,128
 1a0:	0004                	.insn	2, 0x0004
 1a2:	0404                	addi	s1,sp,512
 1a4:	2a0a                	.insn	2, 0x2a0a
 1a6:	0500                	addi	s0,sp,640
 1a8:	0358                	addi	a4,sp,388
 1aa:	0100                	addi	s0,sp,128
 1ac:	0004                	.insn	2, 0x0004
 1ae:	0404                	addi	s1,sp,512
 1b0:	0806                	slli	a6,a6,0x1
 1b2:	0a04                	addi	s1,sp,272
 1b4:	040a                	slli	s0,s0,0x2
 1b6:	100c                	addi	a1,sp,32
 1b8:	0500                	addi	s0,sp,640
 1ba:	035e                	slli	t1,t1,0x17
 1bc:	0100                	addi	s0,sp,128
 1be:	0004                	.insn	2, 0x0004
 1c0:	0400                	addi	s0,sp,512
 1c2:	0402                	c.slli	s0,0x0
 1c4:	0500                	addi	s0,sp,640
 1c6:	0362                	slli	t1,t1,0x18
 1c8:	0100                	addi	s0,sp,128
 1ca:	0004                	.insn	2, 0x0004
 1cc:	0402                	c.slli	s0,0x0
 1ce:	1606                	slli	a2,a2,0x21
 1d0:	0500                	addi	s0,sp,640
 1d2:	037e                	slli	t1,t1,0x1f
 1d4:	0100                	addi	s0,sp,128
 1d6:	0004                	.insn	2, 0x0004
 1d8:	0402                	c.slli	s0,0x0
 1da:	1204                	addi	s1,sp,288
 1dc:	aa04                	.insn	2, 0xaa04
 1de:	aa01                	j	2ee <__DYNAMIC+0x2ee>
 1e0:	0401                	addi	s0,s0,0
 1e2:	01ae                	slli	gp,gp,0xb
 1e4:	01b2                	slli	gp,gp,0xc
 1e6:	0500                	addi	s0,sp,640
 1e8:	0428                	addi	a0,sp,520
 1ea:	0100                	addi	s0,sp,128
 1ec:	0004                	.insn	2, 0x0004
 1ee:	0400                	addi	s0,sp,512
 1f0:	0804                	addi	s1,sp,16
 1f2:	0500                	addi	s0,sp,640
 1f4:	03a4                	addi	s1,sp,456
 1f6:	0100                	addi	s0,sp,128
 1f8:	0004                	.insn	2, 0x0004
 1fa:	040c                	addi	a1,sp,512
 1fc:	01a6                	slli	gp,gp,0x9
 1fe:	01a6                	slli	gp,gp,0x9
 200:	aa04                	.insn	2, 0xaa04
 202:	ae01                	j	512 <__DYNAMIC+0x512>
 204:	0001                	nop
 206:	4a05                	li	s4,1
 208:	0004                	.insn	2, 0x0004
 20a:	0401                	addi	s0,s0,0
 20c:	0000                	unimp
 20e:	0404                	addi	s1,sp,512
 210:	0008                	.insn	2, 0x0008
 212:	c605                	beqz	a2,23a <__DYNAMIC+0x23a>
 214:	04010003          	lb	zero,64(sp)
 218:	0c00                	addi	s0,sp,528
 21a:	9804                	.insn	2, 0x9804
 21c:	9801                	andi	s0,s0,-32
 21e:	0401                	addi	s0,s0,0
 220:	019c                	addi	a5,sp,192
 222:	01a0                	addi	s0,sp,200
 224:	0500                	addi	s0,sp,640
 226:	045e                	slli	s0,s0,0x17
 228:	0100                	addi	s0,sp,128
 22a:	0004                	.insn	2, 0x0004
 22c:	0400                	addi	s0,sp,512
 22e:	0804                	addi	s1,sp,16
 230:	0500                	addi	s0,sp,640
 232:	03ec                	addi	a1,sp,460
 234:	0100                	addi	s0,sp,128
 236:	0004                	.insn	2, 0x0004
 238:	040c                	addi	a1,sp,512
 23a:	01b4                	addi	a3,sp,200
 23c:	01b4                	addi	a3,sp,200
 23e:	b804                	.insn	2, 0xb804
 240:	bc01                	j	fffffc50 <stack+0xfeeff050>
 242:	0001                	nop
 244:	a005                	j	264 <__DYNAMIC+0x264>
 246:	0004                	.insn	2, 0x0004
 248:	0401                	addi	s0,s0,0
 24a:	0000                	unimp
 24c:	0404                	addi	s1,sp,512
 24e:	0008                	.insn	2, 0x0008
 250:	00008c07          	.insn	4, 0x8c07
 254:	d401                	beqz	s0,15c <__DYNAMIC+0x15c>
 256:	0702                	c.slli	a4,0x0
 258:	01e0                	addi	s0,sp,204
 25a:	0100                	addi	s0,sp,128
 25c:	01b4                	addi	a3,sp,200
 25e:	00029407          	.insn	4, 0x00029407
 262:	3a01                	jal	fffffb72 <stack+0xfeefef72>
 264:	00000007          	.insn	4, 0x0007
 268:	4400                	lw	s0,8(s0)
 26a:	00000007          	.insn	4, 0x0007
 26e:	0800                	addi	s0,sp,16
 270:	0002ce07          	.insn	4, 0x0002ce07
 274:	3e01                	jal	fffffd84 <stack+0xfeeff184>
 276:	00030c07          	.insn	4, 0x00030c07
 27a:	3e01                	jal	fffffd8a <stack+0xfeeff18a>
 27c:	00000007          	.insn	4, 0x0007
 280:	4e00                	lw	s0,24(a2)
 282:	00034a07          	.insn	4, 0x00034a07
 286:	f801                	bnez	s0,196 <__DYNAMIC+0x196>
 288:	0002                	c.slli	zero,0x0
 28a:	0016                	c.slli	zero,0x5
 28c:	0000                	unimp
 28e:	0005                	c.nop	1
 290:	0004                	.insn	2, 0x0004
 292:	0000                	unimp
 294:	0000                	unimp
 296:	0004c207          	.insn	4, 0x0004c207
 29a:	3001                	jal	fffffa9a <stack+0xfeefee9a>
 29c:	00000007          	.insn	4, 0x0007
 2a0:	8c01                	sub	s0,s0,s0
 2a2:	0001                	nop

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	1294                	addi	a3,sp,352
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
      20:	051f 0112 0000      	.insn	6, 0x0112051f
      26:	0140                	addi	s0,sp,132
      28:	0000                	unimp
      2a:	0000002f          	.insn	4, 0x002f
      2e:	009d                	addi	ra,ra,7
      30:	0000                	unimp
      32:	000a                	c.slli	zero,0x2
      34:	0000                	unimp
      36:	0102                	c.slli	sp,0x0
      38:	021f 060b 0011      	.insn	6, 0x0011060b021f
      3e:	0000                	unimp
      40:	1f00                	addi	s0,sp,944
      42:	0000                	unimp
      44:	0100                	addi	s0,sp,128
      46:	00000107          	.insn	4, 0x0107
      4a:	4e04                	lw	s1,24(a2)
      4c:	0001                	nop
      4e:	0400                	addi	s0,sp,512
      50:	0155                	addi	sp,sp,21
      52:	0000                	unimp
      54:	0002                	c.slli	zero,0x0
      56:	0000                	unimp
      58:	0300                	addi	s0,sp,384
      5a:	0500                	addi	s0,sp,640
      5c:	8c02                	jr	s8
      5e:	0000                	unimp
      60:	ea01                	bnez	a2,70 <__DYNAMIC+0x70>
      62:	0105                	addi	sp,sp,1
      64:	0009                	c.nop	2
      66:	1800                	addi	s0,sp,48
      68:	0505                	addi	a0,a0,1
      6a:	0009                	c.nop	2
      6c:	1800                	addi	s0,sp,48
      6e:	0505                	addi	a0,a0,1
      70:	0009                	c.nop	2
      72:	1900                	addi	s0,sp,176
      74:	0505                	addi	a0,a0,1
      76:	0009                	c.nop	2
      78:	0000                	unimp
      7a:	0402                	c.slli	s0,0x0
      7c:	0101                	addi	sp,sp,0
      7e:	1805                	addi	a6,a6,-31
      80:	0009                	c.nop	2
      82:	0000                	unimp
      84:	0402                	c.slli	s0,0x0
      86:	0600                	addi	s0,sp,768
      88:	09010513          	addi	a0,sp,144
      8c:	0002                	c.slli	zero,0x0
      8e:	017f9203          	lh	tp,23(t6)
      92:	1305                	addi	t1,t1,-31
      94:	0409                	addi	s0,s0,2
      96:	1800                	addi	s0,sp,48
      98:	1305                	addi	t1,t1,-31
      9a:	0409                	addi	s0,s0,2
      9c:	1d00                	addi	s0,sp,688
      9e:	1305                	addi	t1,t1,-31
      a0:	0409                	addi	s0,s0,2
      a2:	7e00                	.insn	2, 0x7e00
      a4:	0105                	addi	sp,sp,1
      a6:	0409                	addi	s0,s0,2
      a8:	0300                	addi	s0,sp,384
      aa:	7f92                	.insn	2, 0x7f92
      ac:	0501                	addi	a0,a0,0
      ae:	00020913          	mv	s2,tp
      b2:	0518                	addi	a4,sp,640
      b4:	00020913          	mv	s2,tp
      b8:	051d                	addi	a0,a0,7
      ba:	00040913          	mv	s2,s0
      be:	0582                	c.slli	a1,0x0
      c0:	090e                	slli	s2,s2,0x3
      c2:	0002                	c.slli	zero,0x0
      c4:	05014803          	lbu	a6,80(sp)
      c8:	0908                	addi	a0,sp,144
      ca:	0002                	c.slli	zero,0x0
      cc:	0200                	addi	s0,sp,256
      ce:	0104                	addi	s1,sp,128
      d0:	0550                	addi	a2,sp,644
      d2:	091c                	addi	a5,sp,144
      d4:	0002                	c.slli	zero,0x0
      d6:	0200                	addi	s0,sp,256
      d8:	0004                	.insn	2, 0x0004
      da:	05015403          	lhu	s0,80(sp)
      de:	0908                	addi	a0,sp,144
      e0:	0002                	c.slli	zero,0x0
      e2:	0908051b          	.insn	4, 0x0908051b
      e6:	0002                	c.slli	zero,0x0
      e8:	017fbc03          	.insn	4, 0x017fbc03
      ec:	1305                	addi	t1,t1,-31
      ee:	0409                	addi	s0,s0,2
      f0:	0100                	addi	s0,sp,128
      f2:	1305                	addi	t1,t1,-31
      f4:	0009                	c.nop	2
      f6:	0000                	unimp
      f8:	0402                	c.slli	s0,0x0
      fa:	0601                	addi	a2,a2,0
      fc:	091c0583          	lb	a1,145(s8)
     100:	0000                	unimp
     102:	0200                	addi	s0,sp,256
     104:	0004                	.insn	2, 0x0004
     106:	0518                	addi	a4,sp,640
     108:	090d                	addi	s2,s2,3
     10a:	0000                	unimp
     10c:	05014403          	lbu	s0,80(sp)
     110:	0000090f          	.insn	4, 0x090f
     114:	0519                	addi	a0,a0,6
     116:	0905                	addi	s2,s2,1
     118:	0008                	.insn	2, 0x0008
     11a:	0106                	slli	sp,sp,0x1
     11c:	0805                	addi	a6,a6,1
     11e:	0409                	addi	s0,s0,2
     120:	0600                	addi	s0,sp,768
     122:	0905051b          	.insn	4, 0x0905051b
     126:	0000                	unimp
     128:	05017503          	.insn	4, 0x05017503
     12c:	0000090f          	.insn	4, 0x090f
     130:	0519                	addi	a0,a0,6
     132:	0905                	addi	s2,s2,1
     134:	0000                	unimp
     136:	0106                	slli	sp,sp,0x1
     138:	0505                	addi	a0,a0,1
     13a:	0009                	c.nop	2
     13c:	0600                	addi	s0,sp,768
     13e:	05014403          	lbu	s0,80(sp)
     142:	090d                	addi	s2,s2,3
     144:	0000                	unimp
     146:	051c                	addi	a5,sp,640
     148:	0905                	addi	s2,s2,1
     14a:	0000                	unimp
     14c:	0519                	addi	a0,a0,6
     14e:	0905                	addi	s2,s2,1
     150:	0000                	unimp
     152:	0106                	slli	sp,sp,0x1
     154:	1305                	addi	t1,t1,-31
     156:	0409                	addi	s0,s0,2
     158:	0600                	addi	s0,sp,768
     15a:	0518                	addi	a4,sp,640
     15c:	0905                	addi	s2,s2,1
     15e:	0000                	unimp
     160:	4b06                	lw	s6,64(sp)
     162:	2e05                	jal	492 <__DYNAMIC+0x492>
     164:	0409                	addi	s0,s0,2
     166:	0300                	addi	s0,sp,384
     168:	014c                	addi	a1,sp,132
     16a:	1305                	addi	t1,t1,-31
     16c:	0409                	addi	s0,s0,2
     16e:	0600                	addi	s0,sp,768
     170:	051d                	addi	a0,a0,7
     172:	0905                	addi	s2,s2,1
     174:	0000                	unimp
     176:	0106                	slli	sp,sp,0x1
     178:	1505                	addi	a0,a0,-31
     17a:	0409                	addi	s0,s0,2
     17c:	0100                	addi	s0,sp,128
     17e:	1305                	addi	t1,t1,-31
     180:	0409                	addi	s0,s0,2
     182:	0100                	addi	s0,sp,128
     184:	1305                	addi	t1,t1,-31
     186:	0009                	c.nop	2
     188:	0600                	addi	s0,sp,768
     18a:	0589                	addi	a1,a1,2
     18c:	090d                	addi	s2,s2,3
     18e:	0000                	unimp
     190:	05014803          	lbu	a6,80(sp)
     194:	0000090f          	.insn	4, 0x090f
     198:	0519                	addi	a0,a0,6
     19a:	0905                	addi	s2,s2,1
     19c:	0000                	unimp
     19e:	0106                	slli	sp,sp,0x1
     1a0:	0805                	addi	a6,a6,1
     1a2:	0409                	addi	s0,s0,2
     1a4:	0600                	addi	s0,sp,768
     1a6:	0905051b          	.insn	4, 0x0905051b
     1aa:	0000                	unimp
     1ac:	0106                	slli	sp,sp,0x1
     1ae:	0805                	addi	a6,a6,1
     1b0:	0409                	addi	s0,s0,2
     1b2:	0600                	addi	s0,sp,768
     1b4:	0905051b          	.insn	4, 0x0905051b
     1b8:	0000                	unimp
     1ba:	0306                	slli	t1,t1,0x1
     1bc:	7fb5                	lui	t6,0xfffed
     1be:	0501                	addi	a0,a0,0
     1c0:	00040913          	mv	s2,s0
     1c4:	1806                	slli	a6,a6,0x21
     1c6:	0505                	addi	a0,a0,1
     1c8:	0009                	c.nop	2
     1ca:	0600                	addi	s0,sp,768
     1cc:	0501                	addi	a0,a0,0
     1ce:	00040913          	mv	s2,s0
     1d2:	0561                	addi	a0,a0,24
     1d4:	0908                	addi	a0,sp,144
     1d6:	0004                	.insn	2, 0x0004
     1d8:	0501                	addi	a0,a0,0
     1da:	0908                	addi	a0,sp,144
     1dc:	0000                	unimp
     1de:	0306                	slli	t1,t1,0x1
     1e0:	7fae                	.insn	2, 0x7fae
     1e2:	0501                	addi	a0,a0,0
     1e4:	090d                	addi	s2,s2,3
     1e6:	0000                	unimp
     1e8:	051c                	addi	a5,sp,640
     1ea:	0905                	addi	s2,s2,1
     1ec:	0000                	unimp
     1ee:	0519                	addi	a0,a0,6
     1f0:	0905                	addi	s2,s2,1
     1f2:	0000                	unimp
     1f4:	051e                	slli	a0,a0,0x7
     1f6:	0905                	addi	s2,s2,1
     1f8:	0000                	unimp
     1fa:	0106                	slli	sp,sp,0x1
     1fc:	1305                	addi	t1,t1,-31
     1fe:	0409                	addi	s0,s0,2
     200:	0100                	addi	s0,sp,128
     202:	1305                	addi	t1,t1,-31
     204:	0009                	c.nop	2
     206:	0000                	unimp
     208:	0402                	c.slli	s0,0x0
     20a:	05830603          	lb	a2,88(t1)
     20e:	092d                	addi	s2,s2,11
     210:	0002                	c.slli	zero,0x0
     212:	0200                	addi	s0,sp,256
     214:	0104                	addi	s1,sp,128
     216:	0501                	addi	a0,a0,0
     218:	091c                	addi	a5,sp,144
     21a:	0004                	.insn	2, 0x0004
     21c:	0200                	addi	s0,sp,256
     21e:	0004                	.insn	2, 0x0004
     220:	0518                	addi	a4,sp,640
     222:	090d                	addi	s2,s2,3
     224:	0000                	unimp
     226:	05014403          	lbu	s0,80(sp)
     22a:	0000090f          	.insn	4, 0x090f
     22e:	0519                	addi	a0,a0,6
     230:	0905                	addi	s2,s2,1
     232:	0000                	unimp
     234:	0306                	slli	t1,t1,0x1
     236:	0146                	slli	sp,sp,0x11
     238:	1305                	addi	t1,t1,-31
     23a:	0409                	addi	s0,s0,2
     23c:	1500                	addi	s0,sp,672
     23e:	0e05                	addi	t3,t3,1
     240:	0409                	addi	s0,s0,2
     242:	0600                	addi	s0,sp,768
     244:	09050557          	.insn	4, 0x09050557
     248:	0000                	unimp
     24a:	05017503          	.insn	4, 0x05017503
     24e:	0000090f          	.insn	4, 0x090f
     252:	0519                	addi	a0,a0,6
     254:	0905                	addi	s2,s2,1
     256:	0000                	unimp
     258:	0106                	slli	sp,sp,0x1
     25a:	0505                	addi	a0,a0,1
     25c:	0009                	c.nop	2
     25e:	0600                	addi	s0,sp,768
     260:	05014403          	lbu	s0,80(sp)
     264:	090d                	addi	s2,s2,3
     266:	0000                	unimp
     268:	051c                	addi	a5,sp,640
     26a:	0905                	addi	s2,s2,1
     26c:	0000                	unimp
     26e:	0519                	addi	a0,a0,6
     270:	0905                	addi	s2,s2,1
     272:	0000                	unimp
     274:	0518                	addi	a4,sp,640
     276:	0905                	addi	s2,s2,1
     278:	0000                	unimp
     27a:	4b06                	lw	s6,64(sp)
     27c:	2e05                	jal	5ac <__DYNAMIC+0x5ac>
     27e:	0409                	addi	s0,s0,2
     280:	0300                	addi	s0,sp,384
     282:	014c                	addi	a1,sp,132
     284:	1305                	addi	t1,t1,-31
     286:	0409                	addi	s0,s0,2
     288:	0600                	addi	s0,sp,768
     28a:	051d                	addi	a0,a0,7
     28c:	0905                	addi	s2,s2,1
     28e:	0000                	unimp
     290:	0106                	slli	sp,sp,0x1
     292:	1505                	addi	a0,a0,-31
     294:	0409                	addi	s0,s0,2
     296:	0100                	addi	s0,sp,128
     298:	1305                	addi	t1,t1,-31
     29a:	0409                	addi	s0,s0,2
     29c:	0100                	addi	s0,sp,128
     29e:	1305                	addi	t1,t1,-31
     2a0:	0009                	c.nop	2
     2a2:	0600                	addi	s0,sp,768
     2a4:	0589                	addi	a1,a1,2
     2a6:	090d                	addi	s2,s2,3
     2a8:	0000                	unimp
     2aa:	05014803          	lbu	a6,80(sp)
     2ae:	0000090f          	.insn	4, 0x090f
     2b2:	0519                	addi	a0,a0,6
     2b4:	0905                	addi	s2,s2,1
     2b6:	0000                	unimp
     2b8:	0106                	slli	sp,sp,0x1
     2ba:	0805                	addi	a6,a6,1
     2bc:	0409                	addi	s0,s0,2
     2be:	0100                	addi	s0,sp,128
     2c0:	0805                	addi	a6,a6,1
     2c2:	0009                	c.nop	2
     2c4:	0600                	addi	s0,sp,768
     2c6:	017fb603          	.insn	4, 0x017fb603
     2ca:	0d05                	addi	s10,s10,1
     2cc:	0009                	c.nop	2
     2ce:	1c00                	addi	s0,sp,560
     2d0:	0505                	addi	a0,a0,1
     2d2:	0009                	c.nop	2
     2d4:	1900                	addi	s0,sp,176
     2d6:	0505                	addi	a0,a0,1
     2d8:	0009                	c.nop	2
     2da:	0600                	addi	s0,sp,768
     2dc:	0501                	addi	a0,a0,0
     2de:	00040913          	mv	s2,s0
     2e2:	1806                	slli	a6,a6,0x21
     2e4:	0505                	addi	a0,a0,1
     2e6:	0009                	c.nop	2
     2e8:	0600                	addi	s0,sp,768
     2ea:	0501                	addi	a0,a0,0
     2ec:	00040913          	mv	s2,s0
     2f0:	1d06                	slli	s10,s10,0x21
     2f2:	0505                	addi	a0,a0,1
     2f4:	0009                	c.nop	2
     2f6:	0600                	addi	s0,sp,768
     2f8:	0501                	addi	a0,a0,0
     2fa:	00040913          	mv	s2,s0
     2fe:	0501                	addi	a0,a0,0
     300:	00000913          	li	s2,0
     304:	0200                	addi	s0,sp,256
     306:	0304                	addi	s1,sp,384
     308:	8306                	mv	t1,ra
     30a:	2d05                	jal	93a <__DYNAMIC+0x93a>
     30c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     30e:	0000                	unimp
     310:	0402                	c.slli	s0,0x0
     312:	0101                	addi	sp,sp,0
     314:	1c05                	addi	s8,s8,-31
     316:	0409                	addi	s0,s0,2
     318:	0000                	unimp
     31a:	0402                	c.slli	s0,0x0
     31c:	1602                	slli	a2,a2,0x20
     31e:	2905                	jal	74e <__DYNAMIC+0x74e>
     320:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     322:	0000                	unimp
     324:	0402                	c.slli	s0,0x0
     326:	0101                	addi	sp,sp,0
     328:	1805                	addi	a6,a6,-31
     32a:	0609                	addi	a2,a2,2
     32c:	0000                	unimp
     32e:	0402                	c.slli	s0,0x0
     330:	0600                	addi	s0,sp,768
     332:	0524                	addi	s1,sp,648
     334:	0901                	addi	s2,s2,0
     336:	0008                	.insn	2, 0x0008
     338:	017eff03          	.insn	4, 0x017eff03
     33c:	0e05                	addi	t3,t3,1
     33e:	0409                	addi	s0,s0,2
     340:	0100                	addi	s0,sp,128
     342:	0e05                	addi	t3,t3,1
     344:	0009                	c.nop	2
     346:	0600                	addi	s0,sp,768
     348:	0512                	slli	a0,a0,0x4
     34a:	090d                	addi	s2,s2,3
     34c:	0000                	unimp
     34e:	051c                	addi	a5,sp,640
     350:	0905                	addi	s2,s2,1
     352:	0000                	unimp
     354:	0519                	addi	a0,a0,6
     356:	0905                	addi	s2,s2,1
     358:	0000                	unimp
     35a:	0106                	slli	sp,sp,0x1
     35c:	1305                	addi	t1,t1,-31
     35e:	0409                	addi	s0,s0,2
     360:	0600                	addi	s0,sp,768
     362:	0518                	addi	a4,sp,640
     364:	0905                	addi	s2,s2,1
     366:	0000                	unimp
     368:	0106                	slli	sp,sp,0x1
     36a:	1305                	addi	t1,t1,-31
     36c:	0409                	addi	s0,s0,2
     36e:	0600                	addi	s0,sp,768
     370:	051d                	addi	a0,a0,7
     372:	0905                	addi	s2,s2,1
     374:	0000                	unimp
     376:	0106                	slli	sp,sp,0x1
     378:	1305                	addi	t1,t1,-31
     37a:	0409                	addi	s0,s0,2
     37c:	0100                	addi	s0,sp,128
     37e:	1305                	addi	t1,t1,-31
     380:	0009                	c.nop	2
     382:	0600                	addi	s0,sp,768
     384:	0589                	addi	a1,a1,2
     386:	090d                	addi	s2,s2,3
     388:	0000                	unimp
     38a:	05014803          	lbu	a6,80(sp)
     38e:	0000090f          	.insn	4, 0x090f
     392:	0519                	addi	a0,a0,6
     394:	0905                	addi	s2,s2,1
     396:	0000                	unimp
     398:	0306                	slli	t1,t1,0x1
     39a:	7fbd                	lui	t6,0xfffef
     39c:	0501                	addi	a0,a0,0
     39e:	00040913          	mv	s2,s0
     3a2:	055a                	slli	a0,a0,0x16
     3a4:	0908                	addi	a0,sp,144
     3a6:	0004                	.insn	2, 0x0004
     3a8:	017fbe03          	.insn	4, 0x017fbe03
     3ac:	1305                	addi	t1,t1,-31
     3ae:	0409                	addi	s0,s0,2
     3b0:	5900                	lw	s0,48(a0)
     3b2:	0805                	addi	a6,a6,1
     3b4:	0409                	addi	s0,s0,2
     3b6:	0100                	addi	s0,sp,128
     3b8:	0805                	addi	a6,a6,1
     3ba:	0009                	c.nop	2
     3bc:	0600                	addi	s0,sp,768
     3be:	017fb603          	.insn	4, 0x017fb603
     3c2:	0d05                	addi	s10,s10,1
     3c4:	0009                	c.nop	2
     3c6:	1c00                	addi	s0,sp,560
     3c8:	0505                	addi	a0,a0,1
     3ca:	0009                	c.nop	2
     3cc:	1900                	addi	s0,sp,176
     3ce:	0505                	addi	a0,a0,1
     3d0:	0009                	c.nop	2
     3d2:	1800                	addi	s0,sp,48
     3d4:	0505                	addi	a0,a0,1
     3d6:	0009                	c.nop	2
     3d8:	1d00                	addi	s0,sp,688
     3da:	0505                	addi	a0,a0,1
     3dc:	0009                	c.nop	2
     3de:	0600                	addi	s0,sp,768
     3e0:	0501                	addi	a0,a0,0
     3e2:	00040913          	mv	s2,s0
     3e6:	0501                	addi	a0,a0,0
     3e8:	00000913          	li	s2,0
     3ec:	0200                	addi	s0,sp,256
     3ee:	0304                	addi	s1,sp,384
     3f0:	8306                	mv	t1,ra
     3f2:	2d05                	jal	a22 <__DYNAMIC+0xa22>
     3f4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     3f6:	0000                	unimp
     3f8:	0402                	c.slli	s0,0x0
     3fa:	0101                	addi	sp,sp,0
     3fc:	1c05                	addi	s8,s8,-31
     3fe:	0009                	c.nop	2
     400:	0000                	unimp
     402:	0402                	c.slli	s0,0x0
     404:	1800                	addi	s0,sp,48
     406:	0d05                	addi	s10,s10,1
     408:	0009                	c.nop	2
     40a:	0300                	addi	s0,sp,384
     40c:	0144                	addi	s1,sp,132
     40e:	0f05                	addi	t5,t5,1
     410:	0009                	c.nop	2
     412:	1900                	addi	s0,sp,176
     414:	0505                	addi	a0,a0,1
     416:	0009                	c.nop	2
     418:	0000                	unimp
     41a:	0402                	c.slli	s0,0x0
     41c:	0601                	addi	a2,a2,0
     41e:	0550                	addi	a2,sp,644
     420:	091c                	addi	a5,sp,144
     422:	0004                	.insn	2, 0x0004
     424:	0200                	addi	s0,sp,256
     426:	0204                	addi	s1,sp,256
     428:	1606                	slli	a2,a2,0x21
     42a:	2905                	jal	85a <__DYNAMIC+0x85a>
     42c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     42e:	0000                	unimp
     430:	0402                	c.slli	s0,0x0
     432:	0101                	addi	sp,sp,0
     434:	1805                	addi	a6,a6,-31
     436:	0809                	addi	a6,a6,2
     438:	0000                	unimp
     43a:	0402                	c.slli	s0,0x0
     43c:	0300                	addi	s0,sp,384
     43e:	05017f87          	.insn	4, 0x05017f87
     442:	090d                	addi	s2,s2,3
     444:	0000                	unimp
     446:	051c                	addi	a5,sp,640
     448:	0905                	addi	s2,s2,1
     44a:	0000                	unimp
     44c:	0519                	addi	a0,a0,6
     44e:	0905                	addi	s2,s2,1
     450:	0000                	unimp
     452:	0106                	slli	sp,sp,0x1
     454:	1305                	addi	t1,t1,-31
     456:	0409                	addi	s0,s0,2
     458:	0600                	addi	s0,sp,768
     45a:	0518                	addi	a4,sp,640
     45c:	0905                	addi	s2,s2,1
     45e:	0000                	unimp
     460:	0106                	slli	sp,sp,0x1
     462:	1305                	addi	t1,t1,-31
     464:	0409                	addi	s0,s0,2
     466:	0600                	addi	s0,sp,768
     468:	051d                	addi	a0,a0,7
     46a:	0905                	addi	s2,s2,1
     46c:	0000                	unimp
     46e:	0200                	addi	s0,sp,256
     470:	0304                	addi	s1,sp,384
     472:	8306                	mv	t1,ra
     474:	2d05                	jal	aa4 <__DYNAMIC+0xaa4>
     476:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     478:	0000                	unimp
     47a:	0402                	c.slli	s0,0x0
     47c:	0300                	addi	s0,sp,384
     47e:	0142                	slli	sp,sp,0x10
     480:	2e05                	jal	7b0 <__DYNAMIC+0x7b0>
     482:	0409                	addi	s0,s0,2
     484:	0300                	addi	s0,sp,384
     486:	0152                	slli	sp,sp,0x14
     488:	1305                	addi	t1,t1,-31
     48a:	0409                	addi	s0,s0,2
     48c:	0100                	addi	s0,sp,128
     48e:	1305                	addi	t1,t1,-31
     490:	0009                	c.nop	2
     492:	0000                	unimp
     494:	0402                	c.slli	s0,0x0
     496:	05830603          	lb	a2,88(t1)
     49a:	092d                	addi	s2,s2,11
     49c:	0000                	unimp
     49e:	0200                	addi	s0,sp,256
     4a0:	0104                	addi	s1,sp,128
     4a2:	0501                	addi	a0,a0,0
     4a4:	091c                	addi	a5,sp,144
     4a6:	0000                	unimp
     4a8:	0200                	addi	s0,sp,256
     4aa:	0004                	.insn	2, 0x0004
     4ac:	0518                	addi	a4,sp,640
     4ae:	090d                	addi	s2,s2,3
     4b0:	0000                	unimp
     4b2:	05014403          	lbu	s0,80(sp)
     4b6:	0000090f          	.insn	4, 0x090f
     4ba:	0519                	addi	a0,a0,6
     4bc:	0905                	addi	s2,s2,1
     4be:	0000                	unimp
     4c0:	0306                	slli	t1,t1,0x1
     4c2:	0144                	addi	s1,sp,132
     4c4:	0e05                	addi	t3,t3,1
     4c6:	0409                	addi	s0,s0,2
     4c8:	0600                	addi	s0,sp,768
     4ca:	09050557          	.insn	4, 0x09050557
     4ce:	0000                	unimp
     4d0:	05017503          	.insn	4, 0x05017503
     4d4:	0000090f          	.insn	4, 0x090f
     4d8:	0519                	addi	a0,a0,6
     4da:	0905                	addi	s2,s2,1
     4dc:	0000                	unimp
     4de:	0106                	slli	sp,sp,0x1
     4e0:	0505                	addi	a0,a0,1
     4e2:	0009                	c.nop	2
     4e4:	0600                	addi	s0,sp,768
     4e6:	05014403          	lbu	s0,80(sp)
     4ea:	090d                	addi	s2,s2,3
     4ec:	0000                	unimp
     4ee:	051c                	addi	a5,sp,640
     4f0:	0905                	addi	s2,s2,1
     4f2:	0000                	unimp
     4f4:	0519                	addi	a0,a0,6
     4f6:	0905                	addi	s2,s2,1
     4f8:	0000                	unimp
     4fa:	1e06                	slli	t3,t3,0x21
     4fc:	1505                	addi	a0,a0,-31
     4fe:	0409                	addi	s0,s0,2
     500:	0000                	unimp
     502:	0402                	c.slli	s0,0x0
     504:	8301                	c.srli	a4,0x0
     506:	1c05                	addi	s8,s8,-31
     508:	0409                	addi	s0,s0,2
     50a:	0000                	unimp
     50c:	0402                	c.slli	s0,0x0
     50e:	0300                	addi	s0,sp,384
     510:	7f8d                	lui	t6,0xfffe3
     512:	0501                	addi	a0,a0,0
     514:	00040913          	mv	s2,s0
     518:	1806                	slli	a6,a6,0x21
     51a:	0505                	addi	a0,a0,1
     51c:	0009                	c.nop	2
     51e:	0600                	addi	s0,sp,768
     520:	0501                	addi	a0,a0,0
     522:	00040913          	mv	s2,s0
     526:	1d06                	slli	s10,s10,0x21
     528:	0505                	addi	a0,a0,1
     52a:	0009                	c.nop	2
     52c:	0600                	addi	s0,sp,768
     52e:	0501                	addi	a0,a0,0
     530:	00040913          	mv	s2,s0
     534:	0501                	addi	a0,a0,0
     536:	00000913          	li	s2,0
     53a:	8906                	mv	s2,ra
     53c:	0d05                	addi	s10,s10,1
     53e:	0009                	c.nop	2
     540:	0300                	addi	s0,sp,384
     542:	0148                	addi	a0,sp,132
     544:	0f05                	addi	t5,t5,1
     546:	0009                	c.nop	2
     548:	1900                	addi	s0,sp,176
     54a:	0505                	addi	a0,a0,1
     54c:	0009                	c.nop	2
     54e:	0600                	addi	s0,sp,768
     550:	0501                	addi	a0,a0,0
     552:	0908                	addi	a0,sp,144
     554:	0004                	.insn	2, 0x0004
     556:	0501                	addi	a0,a0,0
     558:	0908                	addi	a0,sp,144
     55a:	0000                	unimp
     55c:	0306                	slli	t1,t1,0x1
     55e:	7fb6                	.insn	2, 0x7fb6
     560:	0501                	addi	a0,a0,0
     562:	090d                	addi	s2,s2,3
     564:	0000                	unimp
     566:	051c                	addi	a5,sp,640
     568:	0905                	addi	s2,s2,1
     56a:	0000                	unimp
     56c:	0519                	addi	a0,a0,6
     56e:	0905                	addi	s2,s2,1
     570:	0000                	unimp
     572:	0106                	slli	sp,sp,0x1
     574:	1305                	addi	t1,t1,-31
     576:	0409                	addi	s0,s0,2
     578:	0600                	addi	s0,sp,768
     57a:	0518                	addi	a4,sp,640
     57c:	0905                	addi	s2,s2,1
     57e:	0000                	unimp
     580:	0106                	slli	sp,sp,0x1
     582:	1305                	addi	t1,t1,-31
     584:	0409                	addi	s0,s0,2
     586:	0600                	addi	s0,sp,768
     588:	051d                	addi	a0,a0,7
     58a:	0905                	addi	s2,s2,1
     58c:	0000                	unimp
     58e:	0106                	slli	sp,sp,0x1
     590:	1305                	addi	t1,t1,-31
     592:	0409                	addi	s0,s0,2
     594:	0100                	addi	s0,sp,128
     596:	1305                	addi	t1,t1,-31
     598:	0009                	c.nop	2
     59a:	0000                	unimp
     59c:	0402                	c.slli	s0,0x0
     59e:	05830603          	lb	a2,88(t1)
     5a2:	092d                	addi	s2,s2,11
     5a4:	0002                	c.slli	zero,0x0
     5a6:	0200                	addi	s0,sp,256
     5a8:	0104                	addi	s1,sp,128
     5aa:	0501                	addi	a0,a0,0
     5ac:	091c                	addi	a5,sp,144
     5ae:	0006                	c.slli	zero,0x1
     5b0:	0200                	addi	s0,sp,256
     5b2:	0004                	.insn	2, 0x0004
     5b4:	017f8603          	lb	a2,23(t6) # fffe3017 <stack+0xfeee2417>
     5b8:	0d05                	addi	s10,s10,1
     5ba:	0009                	c.nop	2
     5bc:	1c00                	addi	s0,sp,560
     5be:	0505                	addi	a0,a0,1
     5c0:	0009                	c.nop	2
     5c2:	1900                	addi	s0,sp,176
     5c4:	0505                	addi	a0,a0,1
     5c6:	0009                	c.nop	2
     5c8:	1e00                	addi	s0,sp,816
     5ca:	0505                	addi	a0,a0,1
     5cc:	0009                	c.nop	2
     5ce:	0000                	unimp
     5d0:	0402                	c.slli	s0,0x0
     5d2:	05830603          	lb	a2,88(t1)
     5d6:	092d                	addi	s2,s2,11
     5d8:	0002                	c.slli	zero,0x0
     5da:	0200                	addi	s0,sp,256
     5dc:	0004                	.insn	2, 0x0004
     5de:	05014203          	lbu	tp,80(sp)
     5e2:	092e                	slli	s2,s2,0xb
     5e4:	0004                	.insn	2, 0x0004
     5e6:	05015203          	lhu	tp,80(sp)
     5ea:	00040913          	mv	s2,s0
     5ee:	0501                	addi	a0,a0,0
     5f0:	00000913          	li	s2,0
     5f4:	0200                	addi	s0,sp,256
     5f6:	0304                	addi	s1,sp,384
     5f8:	8306                	mv	t1,ra
     5fa:	2d05                	jal	c2a <STACK_SIZE+0x2a>
     5fc:	0009                	c.nop	2
     5fe:	0000                	unimp
     600:	0402                	c.slli	s0,0x0
     602:	0101                	addi	sp,sp,0
     604:	1c05                	addi	s8,s8,-31
     606:	0009                	c.nop	2
     608:	0000                	unimp
     60a:	0402                	c.slli	s0,0x0
     60c:	1800                	addi	s0,sp,48
     60e:	0d05                	addi	s10,s10,1
     610:	0009                	c.nop	2
     612:	0300                	addi	s0,sp,384
     614:	0144                	addi	s1,sp,132
     616:	0f05                	addi	t5,t5,1
     618:	0009                	c.nop	2
     61a:	1900                	addi	s0,sp,176
     61c:	0505                	addi	a0,a0,1
     61e:	0009                	c.nop	2
     620:	0600                	addi	s0,sp,768
     622:	05014403          	lbu	s0,80(sp)
     626:	090e                	slli	s2,s2,0x3
     628:	0004                	.insn	2, 0x0004
     62a:	5706                	lw	a4,96(sp)
     62c:	0505                	addi	a0,a0,1
     62e:	0009                	c.nop	2
     630:	0300                	addi	s0,sp,384
     632:	0175                	addi	sp,sp,29
     634:	0f05                	addi	t5,t5,1
     636:	0009                	c.nop	2
     638:	1900                	addi	s0,sp,176
     63a:	0505                	addi	a0,a0,1
     63c:	0009                	c.nop	2
     63e:	0600                	addi	s0,sp,768
     640:	0501                	addi	a0,a0,0
     642:	0905                	addi	s2,s2,1
     644:	0000                	unimp
     646:	0306                	slli	t1,t1,0x1
     648:	0144                	addi	s1,sp,132
     64a:	0d05                	addi	s10,s10,1
     64c:	0009                	c.nop	2
     64e:	1c00                	addi	s0,sp,560
     650:	0505                	addi	a0,a0,1
     652:	0009                	c.nop	2
     654:	1900                	addi	s0,sp,176
     656:	0505                	addi	a0,a0,1
     658:	0009                	c.nop	2
     65a:	0600                	addi	s0,sp,768
     65c:	051e                	slli	a0,a0,0x7
     65e:	0915                	addi	s2,s2,5
     660:	0004                	.insn	2, 0x0004
     662:	0200                	addi	s0,sp,256
     664:	0104                	addi	s1,sp,128
     666:	091c0583          	lb	a1,145(s8)
     66a:	0004                	.insn	2, 0x0004
     66c:	0200                	addi	s0,sp,256
     66e:	0004                	.insn	2, 0x0004
     670:	017f8d03          	lb	s10,23(t6)
     674:	1305                	addi	t1,t1,-31
     676:	0409                	addi	s0,s0,2
     678:	0600                	addi	s0,sp,768
     67a:	0518                	addi	a4,sp,640
     67c:	0905                	addi	s2,s2,1
     67e:	0000                	unimp
     680:	0106                	slli	sp,sp,0x1
     682:	1305                	addi	t1,t1,-31
     684:	0409                	addi	s0,s0,2
     686:	0600                	addi	s0,sp,768
     688:	051d                	addi	a0,a0,7
     68a:	0905                	addi	s2,s2,1
     68c:	0000                	unimp
     68e:	0106                	slli	sp,sp,0x1
     690:	1305                	addi	t1,t1,-31
     692:	0409                	addi	s0,s0,2
     694:	0100                	addi	s0,sp,128
     696:	1305                	addi	t1,t1,-31
     698:	0009                	c.nop	2
     69a:	0600                	addi	s0,sp,768
     69c:	0589                	addi	a1,a1,2
     69e:	090d                	addi	s2,s2,3
     6a0:	0000                	unimp
     6a2:	05014803          	lbu	a6,80(sp)
     6a6:	0000090f          	.insn	4, 0x090f
     6aa:	0519                	addi	a0,a0,6
     6ac:	0905                	addi	s2,s2,1
     6ae:	0000                	unimp
     6b0:	0106                	slli	sp,sp,0x1
     6b2:	0805                	addi	a6,a6,1
     6b4:	0409                	addi	s0,s0,2
     6b6:	0100                	addi	s0,sp,128
     6b8:	0805                	addi	a6,a6,1
     6ba:	0009                	c.nop	2
     6bc:	0600                	addi	s0,sp,768
     6be:	017fb603          	.insn	4, 0x017fb603
     6c2:	0d05                	addi	s10,s10,1
     6c4:	0009                	c.nop	2
     6c6:	1c00                	addi	s0,sp,560
     6c8:	0505                	addi	a0,a0,1
     6ca:	0009                	c.nop	2
     6cc:	1900                	addi	s0,sp,176
     6ce:	0505                	addi	a0,a0,1
     6d0:	0009                	c.nop	2
     6d2:	0600                	addi	s0,sp,768
     6d4:	0501                	addi	a0,a0,0
     6d6:	00040913          	mv	s2,s0
     6da:	1806                	slli	a6,a6,0x21
     6dc:	0505                	addi	a0,a0,1
     6de:	0009                	c.nop	2
     6e0:	0600                	addi	s0,sp,768
     6e2:	0501                	addi	a0,a0,0
     6e4:	00040913          	mv	s2,s0
     6e8:	1d06                	slli	s10,s10,0x21
     6ea:	0505                	addi	a0,a0,1
     6ec:	0009                	c.nop	2
     6ee:	0600                	addi	s0,sp,768
     6f0:	0501                	addi	a0,a0,0
     6f2:	00040913          	mv	s2,s0
     6f6:	0501                	addi	a0,a0,0
     6f8:	00000913          	li	s2,0
     6fc:	0200                	addi	s0,sp,256
     6fe:	0304                	addi	s1,sp,384
     700:	8306                	mv	t1,ra
     702:	2d05                	jal	d32 <STACK_SIZE+0x132>
     704:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     706:	0000                	unimp
     708:	0402                	c.slli	s0,0x0
     70a:	0101                	addi	sp,sp,0
     70c:	1c05                	addi	s8,s8,-31
     70e:	0500                	addi	s0,sp,640
     710:	e002                	.insn	2, 0xe002
     712:	0001                	nop
     714:	0001                	nop
     716:	0101                	addi	sp,sp,0
     718:	0500                	addi	s0,sp,640
     71a:	e002                	.insn	2, 0xe002
     71c:	0001                	nop
     71e:	0301                	addi	t1,t1,0
     720:	01fe                	slli	gp,gp,0x1f
     722:	0501                	addi	a0,a0,0
     724:	0901                	addi	s2,s2,0
     726:	0000                	unimp
     728:	0518                	addi	a4,sp,640
     72a:	0905                	addi	s2,s2,1
     72c:	0000                	unimp
     72e:	0519                	addi	a0,a0,6
     730:	0905                	addi	s2,s2,1
     732:	0000                	unimp
     734:	017ef603          	.insn	4, 0x017ef603
     738:	0c05                	addi	s8,s8,1
     73a:	0009                	c.nop	2
     73c:	1900                	addi	s0,sp,176
     73e:	0505                	addi	a0,a0,1
     740:	0009                	c.nop	2
     742:	1900                	addi	s0,sp,176
     744:	0505                	addi	a0,a0,1
     746:	0009                	c.nop	2
     748:	0100                	addi	s0,sp,128
     74a:	2305                	jal	c6a <STACK_SIZE+0x6a>
     74c:	0009                	c.nop	2
     74e:	0600                	addi	s0,sp,768
     750:	0501                	addi	a0,a0,0
     752:	090d                	addi	s2,s2,3
     754:	0008                	.insn	2, 0x0008
     756:	0501                	addi	a0,a0,0
     758:	00040923          	sb	zero,18(s0)
     75c:	0501                	addi	a0,a0,0
     75e:	090d                	addi	s2,s2,3
     760:	0002                	c.slli	zero,0x0
     762:	0501                	addi	a0,a0,0
     764:	0914                	addi	a3,sp,144
     766:	0004                	.insn	2, 0x0004
     768:	059a                	slli	a1,a1,0x6
     76a:	0901                	addi	s2,s2,0
     76c:	0002                	c.slli	zero,0x0
     76e:	017efd03          	.insn	4, 0x017efd03
     772:	2305                	jal	c92 <STACK_SIZE+0x92>
     774:	0409                	addi	s0,s0,2
     776:	0100                	addi	s0,sp,128
     778:	0d05                	addi	s10,s10,1
     77a:	0409                	addi	s0,s0,2
     77c:	0100                	addi	s0,sp,128
     77e:	2305                	jal	c9e <STACK_SIZE+0x9e>
     780:	0609                	addi	a2,a2,2
     782:	1800                	addi	s0,sp,48
     784:	0c05                	addi	s8,s8,1
     786:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     788:	0600                	addi	s0,sp,768
     78a:	0501                	addi	a0,a0,0
     78c:	0909                	addi	s2,s2,2
     78e:	0000                	unimp
     790:	051a                	slli	a0,a0,0x6
     792:	0909                	addi	s2,s2,2
     794:	0000                	unimp
     796:	09230513          	addi	a0,t1,146
     79a:	0000                	unimp
     79c:	0106                	slli	sp,sp,0x1
     79e:	0d05                	addi	s10,s10,1
     7a0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7a2:	1800                	addi	s0,sp,48
     7a4:	0c05                	addi	s8,s8,1
     7a6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7a8:	1600                	addi	s0,sp,800
     7aa:	1405                	addi	s0,s0,-31
     7ac:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7ae:	0100                	addi	s0,sp,128
     7b0:	2305                	jal	cd0 <STACK_SIZE+0xd0>
     7b2:	0809                	addi	a6,a6,2
     7b4:	0100                	addi	s0,sp,128
     7b6:	2305                	jal	cd6 <STACK_SIZE+0xd6>
     7b8:	0009                	c.nop	2
     7ba:	0f00                	addi	s0,sp,912
     7bc:	1105                	addi	sp,sp,-31
     7be:	0409                	addi	s0,s0,2
     7c0:	1800                	addi	s0,sp,48
     7c2:	1505                	addi	a0,a0,-31
     7c4:	0409                	addi	s0,s0,2
     7c6:	1600                	addi	s0,sp,800
     7c8:	1105                	addi	sp,sp,-31
     7ca:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7cc:	1800                	addi	s0,sp,48
     7ce:	1505                	addi	a0,a0,-31
     7d0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7d2:	6400                	.insn	2, 0x6400
     7d4:	0805                	addi	a6,a6,1
     7d6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7d8:	1b00                	addi	s0,sp,432
     7da:	0805                	addi	a6,a6,1
     7dc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7de:	1b00                	addi	s0,sp,432
     7e0:	0805                	addi	a6,a6,1
     7e2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7e4:	0000                	unimp
     7e6:	0402                	c.slli	s0,0x0
     7e8:	3a01                	jal	f8 <__DYNAMIC+0xf8>
     7ea:	1805                	addi	a6,a6,-31
     7ec:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     7ee:	0600                	addi	s0,sp,768
     7f0:	0518                	addi	a4,sp,640
     7f2:	091c                	addi	a5,sp,144
     7f4:	0000                	unimp
     7f6:	0200                	addi	s0,sp,256
     7f8:	0004                	.insn	2, 0x0004
     7fa:	0306                	slli	t1,t1,0x1
     7fc:	7f8e                	.insn	2, 0x7f8e
     7fe:	0501                	addi	a0,a0,0
     800:	00040923          	sb	zero,18(s0)
     804:	0501                	addi	a0,a0,0
     806:	00000923          	sb	zero,18(zero) # 12 <__DYNAMIC+0x12>
     80a:	0561                	addi	a0,a0,24
     80c:	0908                	addi	a0,sp,144
     80e:	0004                	.insn	2, 0x0004
     810:	051f 090c 0002      	.insn	6, 0x0002090c051f
     816:	09080513          	addi	a0,a6,144
     81a:	0004                	.insn	2, 0x0004
     81c:	0501                	addi	a0,a0,0
     81e:	0908                	addi	a0,sp,144
     820:	0000                	unimp
     822:	4206                	lw	tp,64(sp)
     824:	0d05                	addi	s10,s10,1
     826:	0009                	c.nop	2
     828:	0600                	addi	s0,sp,768
     82a:	0518                	addi	a4,sp,640
     82c:	00020917          	auipc	s2,0x20
     830:	0501                	addi	a0,a0,0
     832:	00040917          	auipc	s2,0x40
     836:	0200                	addi	s0,sp,256
     838:	0104                	addi	s1,sp,128
     83a:	091c050f          	.insn	4, 0x091c050f
     83e:	0002                	c.slli	zero,0x0
     840:	0200                	addi	s0,sp,256
     842:	0004                	.insn	2, 0x0004
     844:	051f 0917 0002      	.insn	6, 0x00020917051f
     84a:	0501                	addi	a0,a0,0
     84c:	00000917          	auipc	s2,0x0
     850:	0200                	addi	s0,sp,256
     852:	0204                	addi	s1,sp,256
     854:	0f06                	slli	t5,t5,0x1
     856:	2d05                	jal	e86 <STACK_SIZE+0x286>
     858:	0009                	c.nop	2
     85a:	0000                	unimp
     85c:	0402                	c.slli	s0,0x0
     85e:	0101                	addi	sp,sp,0
     860:	1c05                	addi	s8,s8,-31
     862:	0409                	addi	s0,s0,2
     864:	0000                	unimp
     866:	0402                	c.slli	s0,0x0
     868:	1800                	addi	s0,sp,48
     86a:	0d05                	addi	s10,s10,1
     86c:	0009                	c.nop	2
     86e:	1800                	addi	s0,sp,48
     870:	0d05                	addi	s10,s10,1
     872:	0009                	c.nop	2
     874:	1900                	addi	s0,sp,176
     876:	0d05                	addi	s10,s10,1
     878:	0009                	c.nop	2
     87a:	0300                	addi	s0,sp,384
     87c:	7efe                	.insn	2, 0x7efe
     87e:	0501                	addi	a0,a0,0
     880:	0910                	addi	a2,sp,144
     882:	0000                	unimp
     884:	0519                	addi	a0,a0,6
     886:	0905                	addi	s2,s2,1 # 84d <__DYNAMIC+0x84d>
     888:	0000                	unimp
     88a:	0905056b          	.insn	4, 0x0905056b
     88e:	0000                	unimp
     890:	0905051b          	.insn	4, 0x0905051b
     894:	0000                	unimp
     896:	0306                	slli	t1,t1,0x1
     898:	7fa8                	.insn	2, 0x7fa8
     89a:	0501                	addi	a0,a0,0
     89c:	090e                	slli	s2,s2,0x3
     89e:	0004                	.insn	2, 0x0004
     8a0:	1906                	slli	s2,s2,0x21
     8a2:	0505                	addi	a0,a0,1
     8a4:	0009                	c.nop	2
     8a6:	0600                	addi	s0,sp,768
     8a8:	0501                	addi	a0,a0,0
     8aa:	0911                	addi	s2,s2,4
     8ac:	0004                	.insn	2, 0x0004
     8ae:	1806                	slli	a6,a6,0x21
     8b0:	0505                	addi	a0,a0,1
     8b2:	0009                	c.nop	2
     8b4:	0600                	addi	s0,sp,768
     8b6:	0501                	addi	a0,a0,0
     8b8:	0915                	addi	s2,s2,5
     8ba:	0004                	.insn	2, 0x0004
     8bc:	0501                	addi	a0,a0,0
     8be:	0915                	addi	s2,s2,5
     8c0:	0000                	unimp
     8c2:	9506                	add	a0,a0,ra
     8c4:	0d05                	addi	s10,s10,1
     8c6:	0009                	c.nop	2
     8c8:	0300                	addi	s0,sp,384
     8ca:	0149                	addi	sp,sp,18
     8cc:	1005                	c.nop	-31
     8ce:	0009                	c.nop	2
     8d0:	1b00                	addi	s0,sp,432
     8d2:	0505                	addi	a0,a0,1
     8d4:	0009                	c.nop	2
     8d6:	1900                	addi	s0,sp,176
     8d8:	0505                	addi	a0,a0,1
     8da:	0009                	c.nop	2
     8dc:	0600                	addi	s0,sp,768
     8de:	051c                	addi	a5,sp,640
     8e0:	0912                	slli	s2,s2,0x4
     8e2:	0004                	.insn	2, 0x0004
     8e4:	0512                	slli	a0,a0,0x4
     8e6:	0908                	addi	a0,sp,144
     8e8:	0004                	.insn	2, 0x0004
     8ea:	0200                	addi	s0,sp,256
     8ec:	0104                	addi	s1,sp,128
     8ee:	0515                	addi	a0,a0,5
     8f0:	090d                	addi	s2,s2,3
     8f2:	0002                	c.slli	zero,0x0
     8f4:	0501                	addi	a0,a0,0
     8f6:	090d                	addi	s2,s2,3
     8f8:	0000                	unimp
     8fa:	0200                	addi	s0,sp,256
     8fc:	0004                	.insn	2, 0x0004
     8fe:	4c06                	lw	s8,64(sp)
     900:	0d05                	addi	s10,s10,1
     902:	0009                	c.nop	2
     904:	0600                	addi	s0,sp,768
     906:	0518                	addi	a4,sp,640
     908:	00020917          	auipc	s2,0x20
     90c:	0501                	addi	a0,a0,0
     90e:	00040917          	auipc	s2,0x40
     912:	0200                	addi	s0,sp,256
     914:	0104                	addi	s1,sp,128
     916:	091c050f          	.insn	4, 0x091c050f
     91a:	0002                	c.slli	zero,0x0
     91c:	0200                	addi	s0,sp,256
     91e:	0004                	.insn	2, 0x0004
     920:	051f 0917 0002      	.insn	6, 0x00020917051f
     926:	0501                	addi	a0,a0,0
     928:	00000917          	auipc	s2,0x0
     92c:	0200                	addi	s0,sp,256
     92e:	0204                	addi	s1,sp,256
     930:	0f06                	slli	t5,t5,0x1
     932:	2d05                	jal	f62 <STACK_SIZE+0x362>
     934:	0009                	c.nop	2
     936:	0000                	unimp
     938:	0402                	c.slli	s0,0x0
     93a:	0101                	addi	sp,sp,0
     93c:	1c05                	addi	s8,s8,-31
     93e:	0409                	addi	s0,s0,2
     940:	0000                	unimp
     942:	0402                	c.slli	s0,0x0
     944:	1602                	slli	a2,a2,0x20
     946:	2905                	jal	d76 <STACK_SIZE+0x176>
     948:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     94a:	0000                	unimp
     94c:	0402                	c.slli	s0,0x0
     94e:	0101                	addi	sp,sp,0
     950:	1805                	addi	a6,a6,-31
     952:	0809                	addi	a6,a6,2
     954:	0000                	unimp
     956:	0402                	c.slli	s0,0x0
     958:	2500                	.insn	2, 0x2500
     95a:	0505                	addi	a0,a0,1
     95c:	0009                	c.nop	2
     95e:	0600                	addi	s0,sp,768
     960:	0501                	addi	a0,a0,0
     962:	0905                	addi	s2,s2,1 # 929 <__DYNAMIC+0x929>
     964:	0000                	unimp
     966:	2a06                	.insn	2, 0x2a06
     968:	0505                	addi	a0,a0,1
     96a:	0009                	c.nop	2
     96c:	0300                	addi	s0,sp,384
     96e:	7ec1                	lui	t4,0xffff0
     970:	0501                	addi	a0,a0,0
     972:	090d                	addi	s2,s2,3
     974:	0000                	unimp
     976:	0519                	addi	a0,a0,6
     978:	0905                	addi	s2,s2,1
     97a:	0000                	unimp
     97c:	0106                	slli	sp,sp,0x1
     97e:	0d05                	addi	s10,s10,1
     980:	0809                	addi	a6,a6,2
     982:	0600                	addi	s0,sp,768
     984:	05d6                	slli	a1,a1,0x15
     986:	0905                	addi	s2,s2,1
     988:	0000                	unimp
     98a:	0106                	slli	sp,sp,0x1
     98c:	0505                	addi	a0,a0,1
     98e:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     990:	0600                	addi	s0,sp,768
     992:	017fbb03          	.insn	4, 0x017fbb03
     996:	0905                	addi	s2,s2,1
     998:	0009                	c.nop	2
     99a:	0600                	addi	s0,sp,768
     99c:	0501                	addi	a0,a0,0
     99e:	0910                	addi	a2,sp,144
     9a0:	0006                	c.slli	zero,0x1
     9a2:	0501                	addi	a0,a0,0
     9a4:	0910                	addi	a2,sp,144
     9a6:	0000                	unimp
     9a8:	4f06                	lw	t5,64(sp)
     9aa:	0905                	addi	s2,s2,1
     9ac:	0009                	c.nop	2
     9ae:	0300                	addi	s0,sp,384
     9b0:	7ecc                	.insn	2, 0x7ecc
     9b2:	0501                	addi	a0,a0,0
     9b4:	090d                	addi	s2,s2,3
     9b6:	0000                	unimp
     9b8:	0519                	addi	a0,a0,6
     9ba:	0905                	addi	s2,s2,1
     9bc:	0000                	unimp
     9be:	0106                	slli	sp,sp,0x1
     9c0:	0d05                	addi	s10,s10,1
     9c2:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     9c4:	ca00                	sw	s0,16(a2)
     9c6:	2105                	jal	de6 <STACK_SIZE+0x1e6>
     9c8:	0409                	addi	s0,s0,2
     9ca:	0300                	addi	s0,sp,384
     9cc:	7ecd                	lui	t4,0xffff3
     9ce:	0501                	addi	a0,a0,0
     9d0:	090d                	addi	s2,s2,3
     9d2:	0002                	c.slli	zero,0x0
     9d4:	ca06                	sw	ra,20(sp)
     9d6:	0905                	addi	s2,s2,1
     9d8:	0009                	c.nop	2
     9da:	0600                	addi	s0,sp,768
     9dc:	0524                	addi	s1,sp,648
     9de:	0901                	addi	s2,s2,0
     9e0:	0002                	c.slli	zero,0x0
     9e2:	017eeb03          	.insn	4, 0x017eeb03
     9e6:	2305                	jal	f06 <STACK_SIZE+0x306>
     9e8:	0609                	addi	a2,a2,2
     9ea:	0100                	addi	s0,sp,128
     9ec:	2305                	jal	f0c <STACK_SIZE+0x30c>
     9ee:	0500                	addi	s0,sp,640
     9f0:	9402                	jalr	s0
     9f2:	0002                	c.slli	zero,0x0
     9f4:	0001                	nop
     9f6:	0101                	addi	sp,sp,0
     9f8:	0500                	addi	s0,sp,640
     9fa:	9402                	jalr	s0
     9fc:	0002                	c.slli	zero,0x0
     9fe:	0401                	addi	s0,s0,0
     a00:	3402                	.insn	2, 0x3402
     a02:	2705                	jal	1122 <STACK_SIZE+0x522>
     a04:	0009                	c.nop	2
     a06:	1900                	addi	s0,sp,176
     a08:	0305                	addi	t1,t1,1
     a0a:	0009                	c.nop	2
     a0c:	0600                	addi	s0,sp,768
     a0e:	0501                	addi	a0,a0,0
     a10:	091c                	addi	a5,sp,144
     a12:	0006                	c.slli	zero,0x1
     a14:	0515                	addi	a0,a0,5
     a16:	00020927          	.insn	4, 0x00020927
     a1a:	091b051b          	.insn	4, 0x091b051b
     a1e:	0002                	c.slli	zero,0x0
     a20:	0515                	addi	a0,a0,5
     a22:	0915                	addi	s2,s2,5
     a24:	0002                	c.slli	zero,0x0
     a26:	1906                	slli	s2,s2,0x21
     a28:	0305                	addi	t1,t1,1
     a2a:	0009                	c.nop	2
     a2c:	0600                	addi	s0,sp,768
     a2e:	0501                	addi	a0,a0,0
     a30:	00020917          	auipc	s2,0x20
     a34:	0501                	addi	a0,a0,0
     a36:	0004091b          	.insn	4, 0x0004091b
     a3a:	0519                	addi	a0,a0,6
     a3c:	090a                	slli	s2,s2,0x2
     a3e:	0002                	c.slli	zero,0x0
     a40:	0515                	addi	a0,a0,5
     a42:	00020917          	auipc	s2,0x20
     a46:	0501                	addi	a0,a0,0
     a48:	0002090f          	.insn	4, 0x0002090f
     a4c:	1906                	slli	s2,s2,0x21
     a4e:	0305                	addi	t1,t1,1
     a50:	0009                	c.nop	2
     a52:	0600                	addi	s0,sp,768
     a54:	0501                	addi	a0,a0,0
     a56:	090a                	slli	s2,s2,0x2
     a58:	0002                	c.slli	zero,0x0
     a5a:	0519                	addi	a0,a0,6
     a5c:	0918                	addi	a4,sp,144
     a5e:	0006                	c.slli	zero,0x1
     a60:	0515                	addi	a0,a0,5
     a62:	0908                	addi	a0,sp,144
     a64:	0002                	c.slli	zero,0x0
     a66:	1906                	slli	s2,s2,0x21
     a68:	0305                	addi	t1,t1,1
     a6a:	0009                	c.nop	2
     a6c:	0600                	addi	s0,sp,768
     a6e:	0501                	addi	a0,a0,0
     a70:	0914                	addi	a3,sp,144
     a72:	0004                	.insn	2, 0x0004
     a74:	0501                	addi	a0,a0,0
     a76:	0924                	addi	s1,sp,152
     a78:	0004                	.insn	2, 0x0004
     a7a:	0501                	addi	a0,a0,0
     a7c:	090c                	addi	a1,sp,144
     a7e:	0002                	c.slli	zero,0x0
     a80:	1906                	slli	s2,s2,0x21
     a82:	0305                	addi	t1,t1,1
     a84:	0009                	c.nop	2
     a86:	0600                	addi	s0,sp,768
     a88:	0501                	addi	a0,a0,0
     a8a:	090a                	slli	s2,s2,0x2
     a8c:	0002                	c.slli	zero,0x0
     a8e:	0501                	addi	a0,a0,0
     a90:	0908                	addi	a0,sp,144
     a92:	0002                	c.slli	zero,0x0
     a94:	1906                	slli	s2,s2,0x21
     a96:	0305                	addi	t1,t1,1
     a98:	0009                	c.nop	2
     a9a:	0600                	addi	s0,sp,768
     a9c:	0501                	addi	a0,a0,0
     a9e:	00040917          	auipc	s2,0x40
     aa2:	0501                	addi	a0,a0,0
     aa4:	0002090f          	.insn	4, 0x0002090f
     aa8:	0518                	addi	a4,sp,640
     aaa:	0001                	nop
     aac:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     aae:	02ce                	slli	t0,t0,0x13
     ab0:	0100                	addi	s0,sp,128
     ab2:	0100                	addi	s0,sp,128
     ab4:	0001                	nop
     ab6:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     ab8:	0000                	unimp
     aba:	0000                	unimp
     abc:	0204                	addi	s1,sp,256
     abe:	09280543          	.insn	4, 0x09280543
     ac2:	0000                	unimp
     ac4:	0519                	addi	a0,a0,6
     ac6:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     aca:	1506                	slli	a0,a0,0x21
     acc:	2805                	jal	afc <__DYNAMIC+0xafc>
     ace:	0009                	c.nop	2
     ad0:	1900                	addi	s0,sp,176
     ad2:	1505                	addi	a0,a0,-31
     ad4:	0009                	c.nop	2
     ad6:	0600                	addi	s0,sp,768
     ad8:	0519                	addi	a0,a0,6
     ada:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     ade:	0106                	slli	sp,sp,0x1
     ae0:	0a05                	addi	s4,s4,1
     ae2:	0009                	c.nop	2
     ae4:	1800                	addi	s0,sp,48
     ae6:	1d05                	addi	s10,s10,-31
     ae8:	0009                	c.nop	2
     aea:	1600                	addi	s0,sp,800
     aec:	0805                	addi	a6,a6,1
     aee:	0009                	c.nop	2
     af0:	0600                	addi	s0,sp,768
     af2:	0518                	addi	a4,sp,640
     af4:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     af8:	0106                	slli	sp,sp,0x1
     afa:	1705                	addi	a4,a4,-31 # 585816c7 <stack+0x57480ac7>
     afc:	0009                	c.nop	2
     afe:	0100                	addi	s0,sp,128
     b00:	1905                	addi	s2,s2,-31 # 40a7f <STACK_SIZE+0x3fe7f>
     b02:	0009                	c.nop	2
     b04:	1800                	addi	s0,sp,48
     b06:	0a05                	addi	s4,s4,1
     b08:	0009                	c.nop	2
     b0a:	1600                	addi	s0,sp,800
     b0c:	1705                	addi	a4,a4,-31
     b0e:	0009                	c.nop	2
     b10:	0100                	addi	s0,sp,128
     b12:	0f05                	addi	t5,t5,1
     b14:	0009                	c.nop	2
     b16:	0600                	addi	s0,sp,768
     b18:	0518                	addi	a4,sp,640
     b1a:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b1e:	0106                	slli	sp,sp,0x1
     b20:	0a05                	addi	s4,s4,1
     b22:	0009                	c.nop	2
     b24:	1800                	addi	s0,sp,48
     b26:	1905                	addi	s2,s2,-31
     b28:	0009                	c.nop	2
     b2a:	1600                	addi	s0,sp,800
     b2c:	0805                	addi	a6,a6,1
     b2e:	0009                	c.nop	2
     b30:	0600                	addi	s0,sp,768
     b32:	0518                	addi	a4,sp,640
     b34:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b38:	0106                	slli	sp,sp,0x1
     b3a:	1305                	addi	t1,t1,-31
     b3c:	0009                	c.nop	2
     b3e:	0100                	addi	s0,sp,128
     b40:	1505                	addi	a0,a0,-31
     b42:	0009                	c.nop	2
     b44:	0100                	addi	s0,sp,128
     b46:	1305                	addi	t1,t1,-31
     b48:	0009                	c.nop	2
     b4a:	0100                	addi	s0,sp,128
     b4c:	0c05                	addi	s8,s8,1
     b4e:	0009                	c.nop	2
     b50:	0600                	addi	s0,sp,768
     b52:	0518                	addi	a4,sp,640
     b54:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b58:	0106                	slli	sp,sp,0x1
     b5a:	0a05                	addi	s4,s4,1
     b5c:	0009                	c.nop	2
     b5e:	0100                	addi	s0,sp,128
     b60:	0805                	addi	a6,a6,1
     b62:	0009                	c.nop	2
     b64:	0600                	addi	s0,sp,768
     b66:	0518                	addi	a4,sp,640
     b68:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     b6c:	0106                	slli	sp,sp,0x1
     b6e:	1705                	addi	a4,a4,-31
     b70:	0009                	c.nop	2
     b72:	0100                	addi	s0,sp,128
     b74:	0f05                	addi	t5,t5,1
     b76:	0009                	c.nop	2
     b78:	1800                	addi	s0,sp,48
     b7a:	0105                	addi	sp,sp,1
     b7c:	0500                	addi	s0,sp,640
     b7e:	0002                	c.slli	zero,0x0
     b80:	0000                	unimp
     b82:	0000                	unimp
     b84:	0101                	addi	sp,sp,0
     b86:	0500                	addi	s0,sp,640
     b88:	0002                	c.slli	zero,0x0
     b8a:	0000                	unimp
     b8c:	0400                	addi	s0,sp,512
     b8e:	4f02                	lw	t5,0(sp)
     b90:	2b05                	jal	10c0 <STACK_SIZE+0x4c0>
     b92:	0009                	c.nop	2
     b94:	1900                	addi	s0,sp,176
     b96:	0305                	addi	t1,t1,1
     b98:	0009                	c.nop	2
     b9a:	0600                	addi	s0,sp,768
     b9c:	0501                	addi	a0,a0,0
     b9e:	090d                	addi	s2,s2,3
     ba0:	0000                	unimp
     ba2:	0518                	addi	a4,sp,640
     ba4:	0001                	nop
     ba6:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     ba8:	0000                	unimp
     baa:	0000                	unimp
     bac:	0100                	addi	s0,sp,128
     bae:	0001                	nop
     bb0:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     bb2:	02ce                	slli	t0,t0,0x13
     bb4:	0100                	addi	s0,sp,128
     bb6:	0304                	addi	s1,sp,384
     bb8:	0532                	slli	a0,a0,0xc
     bba:	0911                	addi	s2,s2,4
     bbc:	0000                	unimp
     bbe:	0519                	addi	a0,a0,6
     bc0:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     bc4:	0106                	slli	sp,sp,0x1
     bc6:	1e05                	addi	t3,t3,-31
     bc8:	0609                	addi	a2,a2,2
     bca:	1500                	addi	s0,sp,672
     bcc:	1105                	addi	sp,sp,-31
     bce:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bd0:	1e00                	addi	s0,sp,816
     bd2:	0b05                	addi	s6,s6,1 # 46083001 <stack+0x44f82401>
     bd4:	0409                	addi	s0,s0,2
     bd6:	1200                	addi	s0,sp,288
     bd8:	1505                	addi	a0,a0,-31
     bda:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bdc:	0600                	addi	s0,sp,768
     bde:	0518                	addi	a4,sp,640
     be0:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     be4:	0106                	slli	sp,sp,0x1
     be6:	2f05                	jal	1316 <STACK_SIZE+0x716>
     be8:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bea:	1b00                	addi	s0,sp,432
     bec:	0b05                	addi	s6,s6,1
     bee:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bf0:	1c00                	addi	s0,sp,560
     bf2:	0b05                	addi	s6,s6,1
     bf4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     bf6:	0e00                	addi	s0,sp,784
     bf8:	2f05                	jal	1328 <STACK_SIZE+0x728>
     bfa:	0409                	addi	s0,s0,2
     bfc:	0100                	addi	s0,sp,128
     bfe:	2705                	jal	131e <STACK_SIZE+0x71e>
     c00:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     c02:	0600                	addi	s0,sp,768
     c04:	0903051b          	.insn	4, 0x0903051b
     c08:	0000                	unimp
     c0a:	0106                	slli	sp,sp,0x1
     c0c:	0b05                	addi	s6,s6,1
     c0e:	0409                	addi	s0,s0,2
     c10:	0600                	addi	s0,sp,768
     c12:	0518                	addi	a4,sp,640
     c14:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c18:	0106                	slli	sp,sp,0x1
     c1a:	0705                	addi	a4,a4,1
     c1c:	0809                	addi	a6,a6,2
     c1e:	0600                	addi	s0,sp,768
     c20:	0518                	addi	a4,sp,640
     c22:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c26:	0106                	slli	sp,sp,0x1
     c28:	0f05                	addi	t5,t5,1
     c2a:	0609                	addi	a2,a2,2
     c2c:	0600                	addi	s0,sp,768
     c2e:	0518                	addi	a4,sp,640
     c30:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c34:	0106                	slli	sp,sp,0x1
     c36:	0705                	addi	a4,a4,1
     c38:	0609                	addi	a2,a2,2
     c3a:	0600                	addi	s0,sp,768
     c3c:	0518                	addi	a4,sp,640
     c3e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c42:	0106                	slli	sp,sp,0x1
     c44:	0b05                	addi	s6,s6,1
     c46:	0409                	addi	s0,s0,2
     c48:	0600                	addi	s0,sp,768
     c4a:	0518                	addi	a4,sp,640
     c4c:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     c50:	0106                	slli	sp,sp,0x1
     c52:	0b05                	addi	s6,s6,1
     c54:	0409                	addi	s0,s0,2
     c56:	1900                	addi	s0,sp,176
     c58:	0105                	addi	sp,sp,1
     c5a:	0500                	addi	s0,sp,640
     c5c:	0c02                	c.slli	s8,0x0
     c5e:	00010003          	lb	zero,0(sp)
     c62:	0101                	addi	sp,sp,0
     c64:	0500                	addi	s0,sp,640
     c66:	0c02                	c.slli	s8,0x0
     c68:	04010003          	lb	zero,64(sp)
     c6c:	22054203          	lbu	tp,544(a0)
     c70:	0009                	c.nop	2
     c72:	1800                	addi	s0,sp,48
     c74:	0305                	addi	t1,t1,1
     c76:	0009                	c.nop	2
     c78:	0100                	addi	s0,sp,128
     c7a:	0805                	addi	a6,a6,1
     c7c:	0009                	c.nop	2
     c7e:	0000                	unimp
     c80:	0402                	c.slli	s0,0x0
     c82:	0101                	addi	sp,sp,0
     c84:	1a05                	addi	s4,s4,-31
     c86:	0009                	c.nop	2
     c88:	0600                	addi	s0,sp,768
     c8a:	0501                	addi	a0,a0,0
     c8c:	0916                	slli	s2,s2,0x5
     c8e:	0004                	.insn	2, 0x0004
     c90:	0501                	addi	a0,a0,0
     c92:	091a                	slli	s2,s2,0x6
     c94:	0002                	c.slli	zero,0x0
     c96:	0200                	addi	s0,sp,256
     c98:	0004                	.insn	2, 0x0004
     c9a:	0519                	addi	a0,a0,6
     c9c:	0911                	addi	s2,s2,4
     c9e:	0004                	.insn	2, 0x0004
     ca0:	0514                	addi	a3,sp,640
     ca2:	0922                	slli	s2,s2,0x8
     ca4:	0006                	c.slli	zero,0x1
     ca6:	051a                	slli	a0,a0,0x6
     ca8:	0911                	addi	s2,s2,4
     caa:	0004                	.insn	2, 0x0004
     cac:	0526                	slli	a0,a0,0x9
     cae:	0914                	addi	a3,sp,144
     cb0:	0004                	.insn	2, 0x0004
     cb2:	0306                	slli	t1,t1,0x1
     cb4:	0171                	addi	sp,sp,28
     cb6:	0505                	addi	a0,a0,1
     cb8:	0009                	c.nop	2
     cba:	0600                	addi	s0,sp,768
     cbc:	0501                	addi	a0,a0,0
     cbe:	0911                	addi	s2,s2,4
     cc0:	0002                	c.slli	zero,0x0
     cc2:	2506                	.insn	2, 0x2506
     cc4:	0505                	addi	a0,a0,1
     cc6:	0009                	c.nop	2
     cc8:	0600                	addi	s0,sp,768
     cca:	0501                	addi	a0,a0,0
     ccc:	00020917          	auipc	s2,0x20
     cd0:	1806                	slli	a6,a6,0x21
     cd2:	0505                	addi	a0,a0,1
     cd4:	0009                	c.nop	2
     cd6:	0100                	addi	s0,sp,128
     cd8:	1405                	addi	s0,s0,-31
     cda:	0609                	addi	a2,a2,2
     cdc:	1800                	addi	s0,sp,48
     cde:	0705                	addi	a4,a4,1
     ce0:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ce2:	1800                	addi	s0,sp,48
     ce4:	0705                	addi	a4,a4,1
     ce6:	0009                	c.nop	2
     ce8:	0600                	addi	s0,sp,768
     cea:	0501                	addi	a0,a0,0
     cec:	0910                	addi	a2,sp,144
     cee:	0006                	c.slli	zero,0x1
     cf0:	1506                	slli	a0,a0,0x21
     cf2:	1405                	addi	s0,s0,-31
     cf4:	0609                	addi	a2,a2,2
     cf6:	0000                	unimp
     cf8:	0402                	c.slli	s0,0x0
     cfa:	0302                	c.slli	t1,0x0
     cfc:	2405016f          	jal	sp,50f3c <STACK_SIZE+0x5033c>
     d00:	0009                	c.nop	2
     d02:	0000                	unimp
     d04:	0402                	c.slli	s0,0x0
     d06:	0101                	addi	sp,sp,0
     d08:	1a05                	addi	s4,s4,-31
     d0a:	0009                	c.nop	2
     d0c:	0600                	addi	s0,sp,768
     d0e:	0501                	addi	a0,a0,0
     d10:	0916                	slli	s2,s2,0x5
     d12:	0004                	.insn	2, 0x0004
     d14:	0501                	addi	a0,a0,0
     d16:	091a                	slli	s2,s2,0x6
     d18:	0002                	c.slli	zero,0x0
     d1a:	0501                	addi	a0,a0,0
     d1c:	091a                	slli	s2,s2,0x6
     d1e:	0002                	c.slli	zero,0x0
     d20:	0200                	addi	s0,sp,256
     d22:	0004                	.insn	2, 0x0004
     d24:	052d                	addi	a0,a0,11
     d26:	0901                	addi	s2,s2,0 # 20ccc <STACK_SIZE+0x200cc>
     d28:	0004                	.insn	2, 0x0004
     d2a:	0501                	addi	a0,a0,0
     d2c:	0001                	nop
     d2e:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     d30:	034a                	slli	t1,t1,0x12
     d32:	0100                	addi	s0,sp,128
     d34:	0100                	addi	s0,sp,128
     d36:	0001                	nop
     d38:	0205                	addi	tp,tp,1 # 1 <__DYNAMIC+0x1>
     d3a:	0000                	unimp
     d3c:	0000                	unimp
     d3e:	0304                	addi	s1,sp,384
     d40:	0919055b          	.insn	4, 0x0919055b
     d44:	0000                	unimp
     d46:	0519                	addi	a0,a0,6
     d48:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d4c:	0106                	slli	sp,sp,0x1
     d4e:	0f05                	addi	t5,t5,1
     d50:	0009                	c.nop	2
     d52:	1500                	addi	s0,sp,672
     d54:	1905                	addi	s2,s2,-31
     d56:	0009                	c.nop	2
     d58:	1900                	addi	s0,sp,176
     d5a:	0f05                	addi	t5,t5,1
     d5c:	0009                	c.nop	2
     d5e:	0600                	addi	s0,sp,768
     d60:	0518                	addi	a4,sp,640
     d62:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d66:	0106                	slli	sp,sp,0x1
     d68:	1105                	addi	sp,sp,-31
     d6a:	0009                	c.nop	2
     d6c:	0600                	addi	s0,sp,768
     d6e:	0518                	addi	a4,sp,640
     d70:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d74:	0106                	slli	sp,sp,0x1
     d76:	1505                	addi	a0,a0,-31
     d78:	0009                	c.nop	2
     d7a:	0600                	addi	s0,sp,768
     d7c:	0518                	addi	a4,sp,640
     d7e:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     d82:	0501                	addi	a0,a0,0
     d84:	0912                	slli	s2,s2,0x4
     d86:	0000                	unimp
     d88:	0518                	addi	a4,sp,640
     d8a:	0905                	addi	s2,s2,1
     d8c:	0000                	unimp
     d8e:	0518                	addi	a4,sp,640
     d90:	0905                	addi	s2,s2,1
     d92:	0000                	unimp
     d94:	0106                	slli	sp,sp,0x1
     d96:	0e05                	addi	t3,t3,1
     d98:	0009                	c.nop	2
     d9a:	0600                	addi	s0,sp,768
     d9c:	0515                	addi	a0,a0,5
     d9e:	0912                	slli	s2,s2,0x4
     da0:	0000                	unimp
     da2:	051c                	addi	a5,sp,640
     da4:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     da8:	0106                	slli	sp,sp,0x1
     daa:	0d05                	addi	s10,s10,1
     dac:	0009                	c.nop	2
     dae:	0100                	addi	s0,sp,128
     db0:	0b05                	addi	s6,s6,1
     db2:	0009                	c.nop	2
     db4:	0600                	addi	s0,sp,768
     db6:	0518                	addi	a4,sp,640
     db8:	00000903          	lb	s2,0(zero) # 0 <__DYNAMIC>
     dbc:	0106                	slli	sp,sp,0x1
     dbe:	0f05                	addi	t5,t5,1
     dc0:	0009                	c.nop	2
     dc2:	1c00                	addi	s0,sp,560
     dc4:	0105                	addi	sp,sp,1
     dc6:	0009                	c.nop	2
     dc8:	1200                	addi	s0,sp,288
     dca:	0605                	addi	a2,a2,1
     dcc:	0009                	c.nop	2
     dce:	1c00                	addi	s0,sp,560
     dd0:	0105                	addi	sp,sp,1
     dd2:	0500                	addi	s0,sp,640
     dd4:	0002                	c.slli	zero,0x0
     dd6:	0000                	unimp
     dd8:	0000                	unimp
     dda:	0101                	addi	sp,sp,0
     ddc:	0500                	addi	s0,sp,640
     dde:	4a02                	lw	s4,0(sp)
     de0:	03010003          	lb	zero,48(sp)
     de4:	05010293          	addi	t0,sp,80
     de8:	0901                	addi	s2,s2,0
     dea:	0000                	unimp
     dec:	0518                	addi	a4,sp,640
     dee:	0905                	addi	s2,s2,1
     df0:	0000                	unimp
     df2:	0518                	addi	a4,sp,640
     df4:	0905                	addi	s2,s2,1
     df6:	0000                	unimp
     df8:	0519                	addi	a0,a0,6
     dfa:	0905                	addi	s2,s2,1
     dfc:	0000                	unimp
     dfe:	1306                	slli	t1,t1,0x21
     e00:	0105                	addi	sp,sp,1
     e02:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e04:	1b00                	addi	s0,sp,432
     e06:	0505                	addi	a0,a0,1
     e08:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e0a:	1300                	addi	s0,sp,416
     e0c:	0105                	addi	sp,sp,1
     e0e:	0a09                	addi	s4,s4,2
     e10:	0300                	addi	s0,sp,384
     e12:	7ebd                	lui	t4,0xfffef
     e14:	0501                	addi	a0,a0,0
     e16:	090d                	addi	s2,s2,3
     e18:	0004                	.insn	2, 0x0004
     e1a:	05de                	slli	a1,a1,0x17
     e1c:	0905                	addi	s2,s2,1
     e1e:	0002                	c.slli	zero,0x0
     e20:	1806                	slli	a6,a6,0x21
     e22:	0505                	addi	a0,a0,1
     e24:	0009                	c.nop	2
     e26:	0300                	addi	s0,sp,384
     e28:	7ead                	lui	t4,0xfffeb
     e2a:	0501                	addi	a0,a0,0
     e2c:	090d                	addi	s2,s2,3
     e2e:	0000                	unimp
     e30:	051c                	addi	a5,sp,640
     e32:	0905                	addi	s2,s2,1
     e34:	0000                	unimp
     e36:	1d06                	slli	s10,s10,0x21
     e38:	0d05                	addi	s10,s10,1
     e3a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e3c:	1100                	addi	s0,sp,160
     e3e:	0505                	addi	a0,a0,1
     e40:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e42:	0600                	addi	s0,sp,768
     e44:	0101ea03          	.insn	4, 0x0101ea03
     e48:	0505                	addi	a0,a0,1
     e4a:	0009                	c.nop	2
     e4c:	0300                	addi	s0,sp,384
     e4e:	7e9a                	.insn	2, 0x7e9a
     e50:	0501                	addi	a0,a0,0
     e52:	090d                	addi	s2,s2,3
     e54:	0000                	unimp
     e56:	0519                	addi	a0,a0,6
     e58:	0905                	addi	s2,s2,1
     e5a:	0000                	unimp
     e5c:	1f06                	slli	t5,t5,0x21
     e5e:	0c05                	addi	s8,s8,1
     e60:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     e62:	0f00                	addi	s0,sp,912
     e64:	0d05                	addi	s10,s10,1
     e66:	0409                	addi	s0,s0,2
     e68:	0600                	addi	s0,sp,768
     e6a:	05fc                	addi	a5,sp,716
     e6c:	0905                	addi	s2,s2,1
     e6e:	0000                	unimp
     e70:	017e9e03          	lh	t3,23(t4) # fffeb017 <stack+0xfeeea417>
     e74:	0d05                	addi	s10,s10,1
     e76:	0009                	c.nop	2
     e78:	1c00                	addi	s0,sp,560
     e7a:	0505                	addi	a0,a0,1
     e7c:	0009                	c.nop	2
     e7e:	0600                	addi	s0,sp,768
     e80:	0501                	addi	a0,a0,0
     e82:	090c                	addi	a1,sp,144
     e84:	0004                	.insn	2, 0x0004
     e86:	1806                	slli	a6,a6,0x21
     e88:	0505                	addi	a0,a0,1
     e8a:	0009                	c.nop	2
     e8c:	0600                	addi	s0,sp,768
     e8e:	0501                	addi	a0,a0,0
     e90:	090c                	addi	a1,sp,144
     e92:	0004                	.insn	2, 0x0004
     e94:	1806                	slli	a6,a6,0x21
     e96:	0505                	addi	a0,a0,1
     e98:	0009                	c.nop	2
     e9a:	0600                	addi	s0,sp,768
     e9c:	0501                	addi	a0,a0,0
     e9e:	090c                	addi	a1,sp,144
     ea0:	0004                	.insn	2, 0x0004
     ea2:	1806                	slli	a6,a6,0x21
     ea4:	0505                	addi	a0,a0,1
     ea6:	0009                	c.nop	2
     ea8:	0600                	addi	s0,sp,768
     eaa:	0501                	addi	a0,a0,0
     eac:	090c                	addi	a1,sp,144
     eae:	0004                	.insn	2, 0x0004
     eb0:	0501                	addi	a0,a0,0
     eb2:	090c                	addi	a1,sp,144
     eb4:	0000                	unimp
     eb6:	f606                	.insn	2, 0xf606
     eb8:	0505                	addi	a0,a0,1
     eba:	0609                	addi	a2,a2,2
     ebc:	0600                	addi	s0,sp,768
     ebe:	017ecd03          	lbu	s10,23(t4)
     ec2:	0d05                	addi	s10,s10,1
     ec4:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ec6:	ca00                	sw	s0,16(a2)
     ec8:	0505                	addi	a0,a0,1
     eca:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     ecc:	0600                	addi	s0,sp,768
     ece:	051c                	addi	a5,sp,640
     ed0:	0905                	addi	s2,s2,1
     ed2:	0000                	unimp
     ed4:	017ec603          	lbu	a2,23(t4)
     ed8:	0c05                	addi	s8,s8,1
     eda:	0009                	c.nop	2
     edc:	1900                	addi	s0,sp,176
     ede:	0505                	addi	a0,a0,1
     ee0:	0009                	c.nop	2
     ee2:	0600                	addi	s0,sp,768
     ee4:	0519                	addi	a0,a0,6
     ee6:	090a                	slli	s2,s2,0x2
     ee8:	0004                	.insn	2, 0x0004
     eea:	0515                	addi	a0,a0,5
     eec:	090d                	addi	s2,s2,3
     eee:	0004                	.insn	2, 0x0004
     ef0:	1906                	slli	s2,s2,0x21
     ef2:	0505                	addi	a0,a0,1
     ef4:	0009                	c.nop	2
     ef6:	0600                	addi	s0,sp,768
     ef8:	0501                	addi	a0,a0,0
     efa:	090a                	slli	s2,s2,0x2
     efc:	0002                	c.slli	zero,0x0
     efe:	0501                	addi	a0,a0,0
     f00:	0911                	addi	s2,s2,4
     f02:	0002                	c.slli	zero,0x0
     f04:	0501                	addi	a0,a0,0
     f06:	0908                	addi	a0,sp,144
     f08:	0002                	c.slli	zero,0x0
     f0a:	0501                	addi	a0,a0,0
     f0c:	0908                	addi	a0,sp,144
     f0e:	0000                	unimp
     f10:	ce06                	sw	ra,28(sp)
     f12:	0505                	addi	a0,a0,1
     f14:	0009                	c.nop	2
     f16:	1c00                	addi	s0,sp,560
     f18:	0505                	addi	a0,a0,1
     f1a:	0809                	addi	a6,a6,2
     f1c:	1900                	addi	s0,sp,176
     f1e:	0505                	addi	a0,a0,1
     f20:	0009                	c.nop	2
     f22:	0600                	addi	s0,sp,768
     f24:	0501                	addi	a0,a0,0
     f26:	0912                	slli	s2,s2,0x4
     f28:	0004                	.insn	2, 0x0004
     f2a:	1806                	slli	a6,a6,0x21
     f2c:	0505                	addi	a0,a0,1
     f2e:	0009                	c.nop	2
     f30:	0600                	addi	s0,sp,768
     f32:	0501                	addi	a0,a0,0
     f34:	0908                	addi	a0,sp,144
     f36:	0008                	.insn	2, 0x0008
     f38:	1b06                	slli	s6,s6,0x21
     f3a:	0505                	addi	a0,a0,1
     f3c:	0009                	c.nop	2
     f3e:	1c00                	addi	s0,sp,560
     f40:	0505                	addi	a0,a0,1
     f42:	0009                	c.nop	2
     f44:	0300                	addi	s0,sp,384
     f46:	7eb4                	.insn	2, 0x7eb4
     f48:	0501                	addi	a0,a0,0
     f4a:	090c                	addi	a1,sp,144
     f4c:	0000                	unimp
     f4e:	0519                	addi	a0,a0,6
     f50:	0905                	addi	s2,s2,1
     f52:	0000                	unimp
     f54:	0106                	slli	sp,sp,0x1
     f56:	0d05                	addi	s10,s10,1
     f58:	0409                	addi	s0,s0,2
     f5a:	0600                	addi	s0,sp,768
     f5c:	0519                	addi	a0,a0,6
     f5e:	0905                	addi	s2,s2,1
     f60:	0000                	unimp
     f62:	0106                	slli	sp,sp,0x1
     f64:	0a05                	addi	s4,s4,1
     f66:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f68:	0100                	addi	s0,sp,128
     f6a:	1105                	addi	sp,sp,-31
     f6c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f6e:	0100                	addi	s0,sp,128
     f70:	0805                	addi	a6,a6,1
     f72:	0409                	addi	s0,s0,2
     f74:	0100                	addi	s0,sp,128
     f76:	0805                	addi	a6,a6,1
     f78:	0009                	c.nop	2
     f7a:	0600                	addi	s0,sp,768
     f7c:	05e0                	addi	s0,sp,716
     f7e:	0905                	addi	s2,s2,1
     f80:	0000                	unimp
     f82:	051c                	addi	a5,sp,640
     f84:	0905                	addi	s2,s2,1
     f86:	0006                	c.slli	zero,0x1
     f88:	0106                	slli	sp,sp,0x1
     f8a:	0505                	addi	a0,a0,1
     f8c:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
     f8e:	0600                	addi	s0,sp,768
     f90:	0519                	addi	a0,a0,6
     f92:	0905                	addi	s2,s2,1
     f94:	0000                	unimp
     f96:	0106                	slli	sp,sp,0x1
     f98:	1205                	addi	tp,tp,-31 # ffffffe1 <stack+0xfeeff3e1>
     f9a:	0409                	addi	s0,s0,2
     f9c:	0600                	addi	s0,sp,768
     f9e:	0518                	addi	a4,sp,640
     fa0:	0905                	addi	s2,s2,1
     fa2:	0000                	unimp
     fa4:	0106                	slli	sp,sp,0x1
     fa6:	0805                	addi	a6,a6,1
     fa8:	0a09                	addi	s4,s4,2
     faa:	0600                	addi	s0,sp,768
     fac:	0905051b          	.insn	4, 0x0905051b
     fb0:	0000                	unimp
     fb2:	051c                	addi	a5,sp,640
     fb4:	0905                	addi	s2,s2,1
     fb6:	0000                	unimp
     fb8:	017ea203          	lw	tp,23(t4)
     fbc:	0c05                	addi	s8,s8,1
     fbe:	0009                	c.nop	2
     fc0:	1900                	addi	s0,sp,176
     fc2:	0505                	addi	a0,a0,1
     fc4:	0009                	c.nop	2
     fc6:	0600                	addi	s0,sp,768
     fc8:	0501                	addi	a0,a0,0
     fca:	090d                	addi	s2,s2,3
     fcc:	0004                	.insn	2, 0x0004
     fce:	1906                	slli	s2,s2,0x21
     fd0:	0505                	addi	a0,a0,1
     fd2:	0009                	c.nop	2
     fd4:	0600                	addi	s0,sp,768
     fd6:	0501                	addi	a0,a0,0
     fd8:	090a                	slli	s2,s2,0x2
     fda:	0002                	c.slli	zero,0x0
     fdc:	0501                	addi	a0,a0,0
     fde:	0911                	addi	s2,s2,4
     fe0:	0002                	c.slli	zero,0x0
     fe2:	0501                	addi	a0,a0,0
     fe4:	0908                	addi	a0,sp,144
     fe6:	0004                	.insn	2, 0x0004
     fe8:	090505f7          	.insn	4, 0x090505f7
     fec:	0006                	c.slli	zero,0x1
     fee:	0501                	addi	a0,a0,0
     ff0:	0905                	addi	s2,s2,1
     ff2:	0002                	c.slli	zero,0x0
     ff4:	1206                	slli	tp,tp,0x21
     ff6:	0505                	addi	a0,a0,1
     ff8:	0009                	c.nop	2
     ffa:	1c00                	addi	s0,sp,560
     ffc:	0505                	addi	a0,a0,1
     ffe:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    1000:	1900                	addi	s0,sp,176
    1002:	0505                	addi	a0,a0,1
    1004:	0009                	c.nop	2
    1006:	0600                	addi	s0,sp,768
    1008:	0501                	addi	a0,a0,0
    100a:	0912                	slli	s2,s2,0x4
    100c:	0004                	.insn	2, 0x0004
    100e:	1806                	slli	a6,a6,0x21
    1010:	0505                	addi	a0,a0,1
    1012:	0009                	c.nop	2
    1014:	0600                	addi	s0,sp,768
    1016:	0501                	addi	a0,a0,0
    1018:	0908                	addi	a0,sp,144
    101a:	000c                	.insn	2, 0x000c
    101c:	1b06                	slli	s6,s6,0x21
    101e:	0505                	addi	a0,a0,1
    1020:	0009                	c.nop	2
    1022:	1c00                	addi	s0,sp,560
    1024:	0505                	addi	a0,a0,1
    1026:	0009                	c.nop	2
    1028:	0300                	addi	s0,sp,384
    102a:	7e90                	.insn	2, 0x7e90
    102c:	0501                	addi	a0,a0,0
    102e:	090c                	addi	a1,sp,144
    1030:	0000                	unimp
    1032:	0519                	addi	a0,a0,6
    1034:	0905                	addi	s2,s2,1
    1036:	0000                	unimp
    1038:	0106                	slli	sp,sp,0x1
    103a:	0d05                	addi	s10,s10,1
    103c:	0409                	addi	s0,s0,2
    103e:	0600                	addi	s0,sp,768
    1040:	0519                	addi	a0,a0,6
    1042:	0905                	addi	s2,s2,1
    1044:	0000                	unimp
    1046:	0106                	slli	sp,sp,0x1
    1048:	0a05                	addi	s4,s4,1
    104a:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    104c:	0100                	addi	s0,sp,128
    104e:	1105                	addi	sp,sp,-31
    1050:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    1052:	0100                	addi	s0,sp,128
    1054:	0805                	addi	a6,a6,1
    1056:	0409                	addi	s0,s0,2
    1058:	0300                	addi	s0,sp,384
    105a:	01f2                	slli	gp,gp,0x1c
    105c:	0501                	addi	a0,a0,0
    105e:	0912                	slli	s2,s2,0x4
    1060:	0002                	c.slli	zero,0x0
    1062:	0501                	addi	a0,a0,0
    1064:	0912                	slli	s2,s2,0x4
    1066:	0002                	c.slli	zero,0x0
    1068:	0501                	addi	a0,a0,0
    106a:	0912                	slli	s2,s2,0x4
    106c:	0002                	c.slli	zero,0x0
    106e:	1206                	slli	tp,tp,0x21
    1070:	0505                	addi	a0,a0,1
    1072:	0009                	c.nop	2
    1074:	1c00                	addi	s0,sp,560
    1076:	0505                	addi	a0,a0,1
    1078:	0009                	c.nop	2
    107a:	0600                	addi	s0,sp,768
    107c:	0501                	addi	a0,a0,0
    107e:	0912                	slli	s2,s2,0x4
    1080:	0002                	c.slli	zero,0x0
    1082:	0518                	addi	a4,sp,640
    1084:	0908                	addi	a0,sp,144
    1086:	000a                	c.slli	zero,0x2
    1088:	0516                	slli	a0,a0,0x5
    108a:	0912                	slli	s2,s2,0x4
    108c:	0002                	c.slli	zero,0x0
    108e:	1806                	slli	a6,a6,0x21
    1090:	0505                	addi	a0,a0,1
    1092:	0009                	c.nop	2
    1094:	0600                	addi	s0,sp,768
    1096:	0501                	addi	a0,a0,0
    1098:	0908                	addi	a0,sp,144
    109a:	0004                	.insn	2, 0x0004
    109c:	05016203          	.insn	4, 0x05016203
    10a0:	090c                	addi	a1,sp,144
    10a2:	0002                	c.slli	zero,0x0
    10a4:	0529                	addi	a0,a0,10
    10a6:	090c                	addi	a1,sp,144
    10a8:	0002                	c.slli	zero,0x0
    10aa:	2706                	.insn	2, 0x2706
    10ac:	0505                	addi	a0,a0,1
    10ae:	0009                	c.nop	2
    10b0:	0600                	addi	s0,sp,768
    10b2:	0501                	addi	a0,a0,0
    10b4:	090c                	addi	a1,sp,144
    10b6:	0002                	c.slli	zero,0x0
    10b8:	1906                	slli	s2,s2,0x21
    10ba:	0505                	addi	a0,a0,1
    10bc:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    10be:	0600                	addi	s0,sp,768
    10c0:	0501                	addi	a0,a0,0
    10c2:	0908                	addi	a0,sp,144
    10c4:	0002                	c.slli	zero,0x0
    10c6:	1806                	slli	a6,a6,0x21
    10c8:	0905                	addi	s2,s2,1
    10ca:	0a09                	addi	s4,s4,2
    10cc:	0600                	addi	s0,sp,768
    10ce:	0501                	addi	a0,a0,0
    10d0:	0909                	addi	s2,s2,2
    10d2:	0004                	.insn	2, 0x0004
    10d4:	0306                	slli	t1,t1,0x1
    10d6:	05017e87          	.insn	4, 0x05017e87
    10da:	0909                	addi	s2,s2,2
    10dc:	0000                	unimp
    10de:	05014403          	lbu	s0,80(sp)
    10e2:	090d                	addi	s2,s2,3
    10e4:	0000                	unimp
    10e6:	0519                	addi	a0,a0,6
    10e8:	0905                	addi	s2,s2,1
    10ea:	0000                	unimp
    10ec:	0306                	slli	t1,t1,0x1
    10ee:	01f1                	addi	gp,gp,28
    10f0:	0501                	addi	a0,a0,0
    10f2:	0909                	addi	s2,s2,2
    10f4:	0004                	.insn	2, 0x0004
    10f6:	017e8f03          	lb	t5,23(t4)
    10fa:	0d05                	addi	s10,s10,1
    10fc:	0409                	addi	s0,s0,2
    10fe:	0600                	addi	s0,sp,768
    1100:	0552                	slli	a0,a0,0x14
    1102:	0909                	addi	s2,s2,2
    1104:	0000                	unimp
    1106:	0106                	slli	sp,sp,0x1
    1108:	0905                	addi	s2,s2,1
    110a:	0009                	c.nop	2
    110c:	0600                	addi	s0,sp,768
    110e:	05cc                	addi	a1,sp,708
    1110:	0905                	addi	s2,s2,1
    1112:	0000                	unimp
    1114:	0518                	addi	a4,sp,640
    1116:	0909                	addi	s2,s2,2
    1118:	0006                	c.slli	zero,0x1
    111a:	0518                	addi	a4,sp,640
    111c:	0909                	addi	s2,s2,2
    111e:	0000                	unimp
    1120:	0106                	slli	sp,sp,0x1
    1122:	1005                	c.nop	-31
    1124:	0409                	addi	s0,s0,2
    1126:	5e00                	lw	s0,56(a2)
    1128:	0105                	addi	sp,sp,1
    112a:	1009                	c.nop	-30
    112c:	0600                	addi	s0,sp,768
    112e:	017e8103          	lb	sp,23(t4)
    1132:	0905                	addi	s2,s2,1
    1134:	0009                	c.nop	2
    1136:	0300                	addi	s0,sp,384
    1138:	0144                	addi	s1,sp,132
    113a:	0d05                	addi	s10,s10,1
    113c:	0009                	c.nop	2
    113e:	1900                	addi	s0,sp,176
    1140:	0505                	addi	a0,a0,1
    1142:	0009                	c.nop	2
    1144:	0600                	addi	s0,sp,768
    1146:	01028303          	lb	t1,16(t0) # 174010 <STACK_SIZE+0x173410>
    114a:	0905                	addi	s2,s2,1
    114c:	0409                	addi	s0,s0,2
    114e:	0300                	addi	s0,sp,384
    1150:	7dfd                	lui	s11,0xfffff
    1152:	0501                	addi	a0,a0,0
    1154:	090d                	addi	s2,s2,3
    1156:	0004                	.insn	2, 0x0004
    1158:	5206                	lw	tp,96(sp)
    115a:	0905                	addi	s2,s2,1
    115c:	0009                	c.nop	2
    115e:	0600                	addi	s0,sp,768
    1160:	0501                	addi	a0,a0,0
    1162:	0909                	addi	s2,s2,2
    1164:	0000                	unimp
    1166:	de06                	sw	ra,60(sp)
    1168:	0505                	addi	a0,a0,1
    116a:	0009                	c.nop	2
    116c:	1800                	addi	s0,sp,48
    116e:	0905                	addi	s2,s2,1
    1170:	0609                	addi	a2,a2,2
    1172:	1800                	addi	s0,sp,48
    1174:	0905                	addi	s2,s2,1
    1176:	0009                	c.nop	2
    1178:	0600                	addi	s0,sp,768
    117a:	0501                	addi	a0,a0,0
    117c:	0910                	addi	a2,sp,144
    117e:	0006                	c.slli	zero,0x1
    1180:	0306                	slli	t1,t1,0x1
    1182:	7eb6                	.insn	2, 0x7eb6
    1184:	0501                	addi	a0,a0,0
    1186:	0909                	addi	s2,s2,2
    1188:	0000                	unimp
    118a:	05014403          	lbu	s0,80(sp)
    118e:	090d                	addi	s2,s2,3
    1190:	0000                	unimp
    1192:	0519                	addi	a0,a0,6
    1194:	0905                	addi	s2,s2,1
    1196:	0000                	unimp
    1198:	0306                	slli	t1,t1,0x1
    119a:	0295                	addi	t0,t0,5
    119c:	0501                	addi	a0,a0,0
    119e:	0909                	addi	s2,s2,2
    11a0:	0004                	.insn	2, 0x0004
    11a2:	017deb03          	.insn	4, 0x017deb03
    11a6:	0d05                	addi	s10,s10,1
    11a8:	0409                	addi	s0,s0,2
    11aa:	0600                	addi	s0,sp,768
    11ac:	0552                	slli	a0,a0,0x14
    11ae:	0909                	addi	s2,s2,2
    11b0:	0000                	unimp
    11b2:	0106                	slli	sp,sp,0x1
    11b4:	0905                	addi	s2,s2,1
    11b6:	0009                	c.nop	2
    11b8:	0600                	addi	s0,sp,768
    11ba:	05f0                	addi	a2,sp,716
    11bc:	0905                	addi	s2,s2,1
    11be:	0000                	unimp
    11c0:	0518                	addi	a4,sp,640
    11c2:	0909                	addi	s2,s2,2
    11c4:	0006                	c.slli	zero,0x1
    11c6:	0518                	addi	a4,sp,640
    11c8:	0909                	addi	s2,s2,2
    11ca:	0000                	unimp
    11cc:	0106                	slli	sp,sp,0x1
    11ce:	1005                	c.nop	-31
    11d0:	0609                	addi	a2,a2,2
    11d2:	0100                	addi	s0,sp,128
    11d4:	1005                	c.nop	-31
    11d6:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    11d8:	0600                	addi	s0,sp,768
    11da:	05016303          	.insn	4, 0x05016303
    11de:	0909                	addi	s2,s2,2
    11e0:	0004                	.insn	2, 0x0004
    11e2:	0106                	slli	sp,sp,0x1
    11e4:	0905                	addi	s2,s2,1
    11e6:	0609                	addi	a2,a2,2
    11e8:	0600                	addi	s0,sp,768
    11ea:	0518                	addi	a4,sp,640
    11ec:	0909                	addi	s2,s2,2
    11ee:	0000                	unimp
    11f0:	0106                	slli	sp,sp,0x1
    11f2:	1005                	c.nop	-31
    11f4:	0409                	addi	s0,s0,2
    11f6:	0100                	addi	s0,sp,128
    11f8:	1005                	c.nop	-31
    11fa:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    11fc:	0600                	addi	s0,sp,768
    11fe:	053a                	slli	a0,a0,0xe
    1200:	0909                	addi	s2,s2,2
    1202:	0004                	.insn	2, 0x0004
    1204:	0106                	slli	sp,sp,0x1
    1206:	0905                	addi	s2,s2,1
    1208:	0609                	addi	a2,a2,2
    120a:	0600                	addi	s0,sp,768
    120c:	0518                	addi	a4,sp,640
    120e:	0909                	addi	s2,s2,2
    1210:	0000                	unimp
    1212:	0106                	slli	sp,sp,0x1
    1214:	1005                	c.nop	-31
    1216:	0409                	addi	s0,s0,2
    1218:	0600                	addi	s0,sp,768
    121a:	052e                	slli	a0,a0,0xb
    121c:	0909                	addi	s2,s2,2
    121e:	000a                	c.slli	zero,0x2
    1220:	0106                	slli	sp,sp,0x1
    1222:	0905                	addi	s2,s2,1
    1224:	0409                	addi	s0,s0,2
    1226:	0600                	addi	s0,sp,768
    1228:	017e8503          	lb	a0,23(t4)
    122c:	0905                	addi	s2,s2,1
    122e:	0009                	c.nop	2
    1230:	0300                	addi	s0,sp,384
    1232:	0144                	addi	s1,sp,132
    1234:	0d05                	addi	s10,s10,1
    1236:	0009                	c.nop	2
    1238:	1900                	addi	s0,sp,176
    123a:	0505                	addi	a0,a0,1
    123c:	0009                	c.nop	2
    123e:	0600                	addi	s0,sp,768
    1240:	0102a703          	lw	a4,16(t0)
    1244:	0905                	addi	s2,s2,1
    1246:	0409                	addi	s0,s0,2
    1248:	0300                	addi	s0,sp,384
    124a:	7dd9                	lui	s11,0xffff6
    124c:	0501                	addi	a0,a0,0
    124e:	090d                	addi	s2,s2,3
    1250:	0004                	.insn	2, 0x0004
    1252:	5206                	lw	tp,96(sp)
    1254:	0905                	addi	s2,s2,1
    1256:	0009                	c.nop	2
    1258:	0600                	addi	s0,sp,768
    125a:	0501                	addi	a0,a0,0
    125c:	0909                	addi	s2,s2,2
    125e:	0000                	unimp
    1260:	0306                	slli	t1,t1,0x1
    1262:	050101eb          	.insn	4, 0x050101eb
    1266:	0905                	addi	s2,s2,1
    1268:	0000                	unimp
    126a:	0518                	addi	a4,sp,640
    126c:	0909                	addi	s2,s2,2
    126e:	0006                	c.slli	zero,0x1
    1270:	0518                	addi	a4,sp,640
    1272:	0909                	addi	s2,s2,2
    1274:	0000                	unimp
    1276:	0106                	slli	sp,sp,0x1
    1278:	1005                	c.nop	-31
    127a:	0609                	addi	a2,a2,2
    127c:	0600                	addi	s0,sp,768
    127e:	051c                	addi	a5,sp,640
    1280:	0909                	addi	s2,s2,2
    1282:	000a                	c.slli	zero,0x2
    1284:	0518                	addi	a4,sp,640
    1286:	0909                	addi	s2,s2,2
    1288:	0000                	unimp
    128a:	0106                	slli	sp,sp,0x1
    128c:	1005                	c.nop	-31
    128e:	0500                	addi	s0,sp,640
    1290:	c202                	sw	zero,4(sp)
    1292:	0004                	.insn	2, 0x0004
    1294:	0001                	nop
    1296:	0101                	addi	sp,sp,0
    1298:	0158                	addi	a4,sp,132
    129a:	0000                	unimp
    129c:	0005                	c.nop	1
    129e:	0004                	.insn	2, 0x0004
    12a0:	002e                	c.slli	zero,0xb
    12a2:	0000                	unimp
    12a4:	0101                	addi	sp,sp,0
    12a6:	fb01                	bnez	a4,11b6 <STACK_SIZE+0x5b6>
    12a8:	0d0e                	slli	s10,s10,0x3
    12aa:	0100                	addi	s0,sp,128
    12ac:	0101                	addi	sp,sp,0
    12ae:	0001                	nop
    12b0:	0000                	unimp
    12b2:	0001                	nop
    12b4:	0100                	addi	s0,sp,128
    12b6:	0101                	addi	sp,sp,0
    12b8:	021f 0112 0000      	.insn	6, 0x0112021f
    12be:	000a                	c.slli	zero,0x2
    12c0:	0000                	unimp
    12c2:	0102                	c.slli	sp,0x0
    12c4:	021f 020f 0166      	.insn	6, 0x0166020f021f
    12ca:	0000                	unimp
    12cc:	6601                	.insn	2, 0x6601
    12ce:	0001                	nop
    12d0:	0100                	addi	s0,sp,128
    12d2:	0500                	addi	s0,sp,640
    12d4:	c202                	sw	zero,4(sp)
    12d6:	0004                	.insn	2, 0x0004
    12d8:	0301                	addi	t1,t1,0
    12da:	0103010f          	.insn	4, 0x0103010f
    12de:	0809                	addi	a6,a6,2
    12e0:	0100                	addi	s0,sp,128
    12e2:	08090103          	lb	sp,128(s2)
    12e6:	0100                	addi	s0,sp,128
    12e8:	04090503          	lb	a0,64(s2)
    12ec:	0100                	addi	s0,sp,128
    12ee:	08090103          	lb	sp,128(s2)
    12f2:	0100                	addi	s0,sp,128
    12f4:	04090103          	lb	sp,64(s2)
    12f8:	0100                	addi	s0,sp,128
    12fa:	04090103          	lb	sp,64(s2)
    12fe:	0100                	addi	s0,sp,128
    1300:	04090103          	lb	sp,64(s2)
    1304:	0100                	addi	s0,sp,128
    1306:	04090403          	lb	s0,64(s2)
    130a:	0100                	addi	s0,sp,128
    130c:	02090103          	lb	sp,32(s2)
    1310:	0100                	addi	s0,sp,128
    1312:	0209                	addi	tp,tp,2 # 2 <__DYNAMIC+0x2>
    1314:	0000                	unimp
    1316:	0101                	addi	sp,sp,0
    1318:	0500                	addi	s0,sp,640
    131a:	0002                	c.slli	zero,0x0
    131c:	0000                	unimp
    131e:	0301                	addi	t1,t1,0
    1320:	0124                	addi	s1,sp,136
    1322:	04090103          	lb	sp,64(s2)
    1326:	0100                	addi	s0,sp,128
    1328:	04090103          	lb	sp,64(s2)
    132c:	0100                	addi	s0,sp,128
    132e:	04090103          	lb	sp,64(s2)
    1332:	0100                	addi	s0,sp,128
    1334:	04090103          	lb	sp,64(s2)
    1338:	0100                	addi	s0,sp,128
    133a:	04090103          	lb	sp,64(s2)
    133e:	0100                	addi	s0,sp,128
    1340:	04090103          	lb	sp,64(s2)
    1344:	0100                	addi	s0,sp,128
    1346:	04090103          	lb	sp,64(s2)
    134a:	0100                	addi	s0,sp,128
    134c:	04090103          	lb	sp,64(s2)
    1350:	0100                	addi	s0,sp,128
    1352:	04090103          	lb	sp,64(s2)
    1356:	0100                	addi	s0,sp,128
    1358:	04090103          	lb	sp,64(s2)
    135c:	0100                	addi	s0,sp,128
    135e:	04090103          	lb	sp,64(s2)
    1362:	0100                	addi	s0,sp,128
    1364:	04090103          	lb	sp,64(s2)
    1368:	0100                	addi	s0,sp,128
    136a:	04090103          	lb	sp,64(s2)
    136e:	0100                	addi	s0,sp,128
    1370:	04090103          	lb	sp,64(s2)
    1374:	0100                	addi	s0,sp,128
    1376:	04090103          	lb	sp,64(s2)
    137a:	0100                	addi	s0,sp,128
    137c:	04090103          	lb	sp,64(s2)
    1380:	0100                	addi	s0,sp,128
    1382:	04090103          	lb	sp,64(s2)
    1386:	0100                	addi	s0,sp,128
    1388:	04090103          	lb	sp,64(s2)
    138c:	0100                	addi	s0,sp,128
    138e:	04090103          	lb	sp,64(s2)
    1392:	0100                	addi	s0,sp,128
    1394:	04090103          	lb	sp,64(s2)
    1398:	0100                	addi	s0,sp,128
    139a:	04090103          	lb	sp,64(s2)
    139e:	0100                	addi	s0,sp,128
    13a0:	04090103          	lb	sp,64(s2)
    13a4:	0100                	addi	s0,sp,128
    13a6:	04090103          	lb	sp,64(s2)
    13aa:	0100                	addi	s0,sp,128
    13ac:	04090103          	lb	sp,64(s2)
    13b0:	0100                	addi	s0,sp,128
    13b2:	04090103          	lb	sp,64(s2)
    13b6:	0100                	addi	s0,sp,128
    13b8:	04090103          	lb	sp,64(s2)
    13bc:	0100                	addi	s0,sp,128
    13be:	04090103          	lb	sp,64(s2)
    13c2:	0100                	addi	s0,sp,128
    13c4:	04090103          	lb	sp,64(s2)
    13c8:	0100                	addi	s0,sp,128
    13ca:	04090103          	lb	sp,64(s2)
    13ce:	0100                	addi	s0,sp,128
    13d0:	04090103          	lb	sp,64(s2)
    13d4:	0100                	addi	s0,sp,128
    13d6:	04090103          	lb	sp,64(s2)
    13da:	0100                	addi	s0,sp,128
    13dc:	04090403          	lb	s0,64(s2)
    13e0:	0100                	addi	s0,sp,128
    13e2:	04090403          	lb	s0,64(s2)
    13e6:	0100                	addi	s0,sp,128
    13e8:	04090303          	lb	t1,64(s2)
    13ec:	0100                	addi	s0,sp,128
    13ee:	0409                	addi	s0,s0,2
    13f0:	0000                	unimp
    13f2:	0101                	addi	sp,sp,0

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
  28:	6f6c                	.insn	2, 0x6f6c
  2a:	6461                	lui	s0,0x18
  2c:	6d5f 7461 6972      	.insn	6, 0x697274616d5f
  32:	5f78                	lw	a4,124(a4)
  34:	6170                	.insn	2, 0x6170
  36:	7269                	lui	tp,0xffffa
  38:	665f 726f 725f      	.insn	6, 0x725f726f665f
  3e:	6e75                	lui	t3,0x1d
  40:	6100                	.insn	2, 0x6100
  42:	6c656363          	bltu	a0,t1,708 <__DYNAMIC+0x708>
  46:	775f 6972 6574      	.insn	6, 0x65746972775f
  4c:	625f 6675 6566      	.insn	6, 0x65666675625f
  52:	0072                	c.slli	zero,0x1c
  54:	616d                	addi	sp,sp,240
  56:	6e69                	lui	t3,0x1a
  58:	5f00                	lw	s0,56(a4)
  5a:	755f 6e69 3374      	.insn	6, 0x33746e69755f
  60:	5f32                	lw	t5,44(sp)
  62:	0074                	addi	a3,sp,12
  64:	6175                	addi	sp,sp,368
  66:	7472                	.insn	2, 0x7472
  68:	705f 6972 746e      	.insn	6, 0x746e6972705f
  6e:	6500                	.insn	2, 0x6500
  70:	7272                	.insn	2, 0x7272
  72:	0073726f          	jal	tp,37878 <STACK_SIZE+0x36c78>
  76:	5f62                	lw	t5,56(sp)
  78:	6176                	.insn	2, 0x6176
  7a:	756c                	.insn	2, 0x756c
  7c:	5f65                	li	t5,-7
  7e:	6f66                	.insn	2, 0x6f66
  80:	5f72                	lw	t5,60(sp)
  82:	7572                	.insn	2, 0x7572
  84:	006e                	c.slli	zero,0x1b
  86:	5f62                	lw	t5,56(sp)
  88:	6f72                	.insn	2, 0x6f72
  8a:	75007377          	.insn	4, 0x75007377
  8e:	7261                	lui	tp,0xffff8
  90:	5f74                	lw	a3,124(a4)
  92:	6f6c                	.insn	2, 0x6f6c
  94:	6162706f          	j	276aa <STACK_SIZE+0x26aaa>
  98:	745f6b63          	bltu	t5,t0,7ee <__DYNAMIC+0x7ee>
  9c:	7365                	lui	t1,0xffff9
  9e:	0074                	addi	a3,sp,12
  a0:	6d70                	.insn	2, 0x6d70
  a2:	745f646f          	jal	s0,f6fe6 <STACK_SIZE+0xf63e6>
  a6:	7261                	lui	tp,0xffff8
  a8:	00746567          	.insn	4, 0x00746567
  ac:	6f6c                	.insn	2, 0x6f6c
  ae:	676e                	.insn	2, 0x676e
  b0:	6c20                	.insn	2, 0x6c20
  b2:	20676e6f          	jal	t3,762b8 <STACK_SIZE+0x756b8>
  b6:	6e69                	lui	t3,0x1a
  b8:	0074                	addi	a3,sp,12
  ba:	5f62                	lw	t5,56(sp)
  bc:	736c6f63          	bltu	s8,s6,7fa <__DYNAMIC+0x7fa>
  c0:	6200                	.insn	2, 0x6200
  c2:	7361                	lui	t1,0xffff8
  c4:	5f65                	li	t5,-7
  c6:	5f61                	li	t5,-8
  c8:	6176                	.insn	2, 0x6176
  ca:	756c                	.insn	2, 0x756c
  cc:	0065                	c.nop	25
  ce:	6461                	lui	s0,0x18
  d0:	7264                	.insn	2, 0x7264
  d2:	6200                	.insn	2, 0x6200
  d4:	6675                	lui	a2,0x1d
  d6:	6566                	.insn	2, 0x6566
  d8:	5f72                	lw	t5,60(sp)
  da:	6469                	lui	s0,0x1a
  dc:	7400                	.insn	2, 0x7400
  de:	7261                	lui	tp,0xffff8
  e0:	5f746567          	.insn	4, 0x5f746567
  e4:	5f007373          	.insn	4, 0x5f007373
  e8:	755f 6e69 3874      	.insn	6, 0x38746e69755f
  ee:	745f 7400 7365      	.insn	6, 0x73657400745f
  f4:	5f74                	lw	a3,124(a4)
  f6:	6175                	addi	sp,sp,368
  f8:	7472                	.insn	2, 0x7472
  fa:	695f 696e 0074      	.insn	6, 0x0074696e695f
 100:	7865                	lui	a6,0xffff9
 102:	6570                	.insn	2, 0x6570
 104:	64657463          	bgeu	a0,t1,74c <__DYNAMIC+0x74c>
 108:	765f 6c61 6575      	.insn	6, 0x65756c61765f
 10e:	665f 726f 725f      	.insn	6, 0x725f726f665f
 114:	6e75                	lui	t3,0x1d
 116:	6100                	.insn	2, 0x6100
 118:	6c656363          	bltu	a0,t1,7de <__DYNAMIC+0x7de>
 11c:	775f 6961 5f74      	.insn	6, 0x5f746961775f
 122:	6f64                	.insn	2, 0x6f64
 124:	656e                	.insn	2, 0x656e
 126:	6100                	.insn	2, 0x6100
 128:	765f 6c61 6575      	.insn	6, 0x65756c61765f
 12e:	665f 726f 725f      	.insn	6, 0x725f726f665f
 134:	6e75                	lui	t3,0x1d
 136:	6100                	.insn	2, 0x6100
 138:	6c656363          	bltu	a0,t1,7fe <__DYNAMIC+0x7fe>
 13c:	735f 7465 645f      	.insn	6, 0x645f7465735f
 142:	6d69                	lui	s10,0x1a
 144:	6e750073          	.insn	4, 0x6e750073
 148:	6e676973          	.insn	4, 0x6e676973
 14c:	6465                	lui	s0,0x19
 14e:	6320                	.insn	2, 0x6320
 150:	6168                	.insn	2, 0x6168
 152:	0072                	c.slli	zero,0x1c
 154:	6f6c                	.insn	2, 0x6f6c
 156:	676e                	.insn	2, 0x676e
 158:	6c20                	.insn	2, 0x6c20
 15a:	20676e6f          	jal	t3,76360 <STACK_SIZE+0x75760>
 15e:	6e75                	lui	t3,0x1d
 160:	6e676973          	.insn	4, 0x6e676973
 164:	6465                	lui	s0,0x19
 166:	6920                	.insn	2, 0x6920
 168:	746e                	.insn	2, 0x746e
 16a:	7300                	.insn	2, 0x7300
 16c:	6f68                	.insn	2, 0x6f68
 16e:	7472                	.insn	2, 0x7472
 170:	7520                	.insn	2, 0x7520
 172:	736e                	.insn	2, 0x736e
 174:	6769                	lui	a4,0x1a
 176:	656e                	.insn	2, 0x656e
 178:	2064                	.insn	2, 0x2064
 17a:	6e69                	lui	t3,0x1a
 17c:	0074                	addi	a3,sp,12
 17e:	5f5f 6e69 3874      	.insn	6, 0x38746e695f5f
 184:	745f 6200 6675      	.insn	6, 0x66756200745f
 18a:	6566                	.insn	2, 0x6566
 18c:	5f72                	lw	t5,60(sp)
 18e:	0061                	c.nop	24
 190:	7562                	.insn	2, 0x7562
 192:	6666                	.insn	2, 0x6666
 194:	7265                	lui	tp,0xffff9
 196:	625f 6100 6363      	.insn	6, 0x63636100625f
 19c:	6c65                	lui	s8,0x19
 19e:	735f 6174 7472      	.insn	6, 0x74726174735f
 1a4:	635f 6568 6b63      	.insn	6, 0x6b636568635f
 1aa:	6465                	lui	s0,0x19
 1ac:	6100                	.insn	2, 0x6100
 1ae:	635f 6c6f 0073      	.insn	6, 0x00736c6f635f
 1b4:	725f7373          	.insn	4, 0x725f7373
 1b8:	7365                	lui	t1,0xffff9
 1ba:	7465                	lui	s0,0xffff9
 1bc:	7600                	.insn	2, 0x7600
 1be:	7265                	lui	tp,0xffff9
 1c0:	6669                	lui	a2,0x1a
 1c2:	5f79                	li	t5,-2
 1c4:	6572                	.insn	2, 0x6572
 1c6:	746c7573          	.insn	4, 0x746c7573
 1ca:	6500                	.insn	2, 0x6500
 1cc:	7078                	.insn	2, 0x7078
 1ce:	6365                	lui	t1,0x19
 1d0:	6574                	.insn	2, 0x6574
 1d2:	0064                	addi	s1,sp,12
 1d4:	7572                	.insn	2, 0x7572
 1d6:	5f6e                	lw	t5,248(sp)
 1d8:	6572                	.insn	2, 0x6572
 1da:	746c7573          	.insn	4, 0x746c7573
 1de:	7400                	.insn	2, 0x7400
 1e0:	706d                	c.lui	zero,0xffffb
 1e2:	765f 6c61 6100      	.insn	6, 0x61006c61765f
 1e8:	6c656363          	bltu	a0,t1,8ae <__DYNAMIC+0x8ae>
 1ec:	615f 6b63 645f      	.insn	6, 0x645f6b63615f
 1f2:	00656e6f          	jal	t3,561f8 <STACK_SIZE+0x555f8>
 1f6:	616d                	addi	sp,sp,240
 1f8:	5f006b73          	.insn	4, 0x5f006b73
 1fc:	695f 746e 3233      	.insn	6, 0x3233746e695f
 202:	745f 7700 6961      	.insn	6, 0x69617700745f
 208:	5f74                	lw	a3,124(a4)
 20a:	6e61                	lui	t3,0x18
 20c:	5f64                	lw	s1,124(a4)
 20e:	6576                	.insn	2, 0x6576
 210:	6972                	.insn	2, 0x6972
 212:	7966                	.insn	2, 0x7966
 214:	725f 6e75 6100      	.insn	6, 0x61006e75725f
 21a:	725f 776f 0073      	.insn	6, 0x0073776f725f
 220:	695f7373          	.insn	4, 0x695f7373
 224:	696e                	.insn	2, 0x696e
 226:	0074                	addi	a3,sp,12
 228:	20554e47          	.insn	4, 0x20554e47
 22c:	20333243          	.insn	4, 0x20333243
 230:	3531                	jal	3c <__DYNAMIC+0x3c>
 232:	322e                	.insn	2, 0x322e
 234:	302e                	.insn	2, 0x302e
 236:	2d20                	.insn	2, 0x2d20
 238:	616d                	addi	sp,sp,240
 23a:	6962                	.insn	2, 0x6962
 23c:	693d                	lui	s2,0xf
 23e:	706c                	.insn	2, 0x706c
 240:	2d203233          	.insn	4, 0x2d203233
 244:	696d                	lui	s2,0x1b
 246:	732d6173          	.insn	4, 0x732d6173
 24a:	6570                	.insn	2, 0x6570
 24c:	30323d63          	.insn	4, 0x30323d63
 250:	3931                	jal	fffffe6c <stack+0xfeeff26c>
 252:	3231                	jal	fffffb5e <stack+0xfeefef5e>
 254:	3331                	jal	ffffff60 <stack+0xfeeff360>
 256:	2d20                	.insn	2, 0x2d20
 258:	616d                	addi	sp,sp,240
 25a:	6372                	.insn	2, 0x6372
 25c:	3d68                	.insn	2, 0x3d68
 25e:	7672                	.insn	2, 0x7672
 260:	6d693233          	.insn	4, 0x6d693233
 264:	6d7a5f63          	bge	s4,s7,942 <__DYNAMIC+0x942>
 268:	756d                	lui	a0,0xffffb
 26a:	5f6c                	lw	a1,124(a4)
 26c:	637a                	.insn	2, 0x637a
 26e:	2061                	jal	2f6 <__DYNAMIC+0x2f6>
 270:	672d                	lui	a4,0xb
 272:	2d20                	.insn	2, 0x2d20
 274:	2d20324f          	.insn	4, 0x2d20324f
 278:	6666                	.insn	2, 0x6666
 27a:	6e75                	lui	t3,0x1d
 27c:	6f697463          	bgeu	s2,s6,964 <__DYNAMIC+0x964>
 280:	2d6e                	.insn	2, 0x2d6e
 282:	74636573          	.insn	4, 0x74636573
 286:	6f69                	lui	t5,0x1a
 288:	736e                	.insn	2, 0x736e
 28a:	2d20                	.insn	2, 0x2d20
 28c:	6466                	.insn	2, 0x6466
 28e:	7461                	lui	s0,0xffff8
 290:	2d61                	jal	928 <__DYNAMIC+0x928>
 292:	74636573          	.insn	4, 0x74636573
 296:	6f69                	lui	t5,0x1a
 298:	736e                	.insn	2, 0x736e
 29a:	7700                	.insn	2, 0x7700
 29c:	6961                	lui	s2,0x18
 29e:	5f74                	lw	a3,124(a4)
 2a0:	6f6c                	.insn	2, 0x6f6c
 2a2:	7400706f          	j	79e2 <STACK_SIZE+0x6de2>
 2a6:	6d69                	lui	s10,0x1a
 2a8:	6f65                	lui	t5,0x19
 2aa:	7475                	lui	s0,0xffffd
 2ac:	6300                	.insn	2, 0x6300
 2ae:	6f6d6d6f          	jal	s10,d69a4 <STACK_SIZE+0xd5da4>
 2b2:	2f6e                	.insn	2, 0x2f6e
 2b4:	30747263          	bgeu	s0,t2,5b8 <__DYNAMIC+0x5b8>
 2b8:	532e                	lw	t1,232(sp)
 2ba:	2f00                	.insn	2, 0x2f00
 2bc:	616e                	.insn	2, 0x616e
 2be:	69652f73          	.insn	4, 0x69652f73
 2c2:	6d6f682f          	.insn	4, 0x6d6f682f
 2c6:	2f65                	jal	a7e <__DYNAMIC+0xa7e>
 2c8:	37386567          	.insn	4, 0x37386567
 2cc:	6964                	.insn	2, 0x6964
 2ce:	2f78                	.insn	2, 0x2f78
 2d0:	6445                	lui	s0,0x11
 2d2:	3475                	jal	fffffd7e <stack+0xfeeff17e>
 2d4:	70696843          	.insn	4, 0x70696843
 2d8:	6469442f          	.insn	4, 0x6469442f
 2dc:	6361                	lui	t1,0x18
 2de:	6974                	.insn	2, 0x6974
 2e0:	6f532d63          	.insn	4, 0x6f532d63
 2e4:	77732f43          	.insn	4, 0x77732f43
 2e8:	4700                	lw	s0,8(a4)
 2ea:	554e                	lw	a0,240(sp)
 2ec:	4120                	lw	s0,64(a0)
 2ee:	2e322053          	.insn	4, 0x2e322053
 2f2:	3634                	.insn	2, 0x3634
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	735f 6474 6e69      	.insn	6, 0x6e696474735f
   6:	2e74                	.insn	2, 0x2e74
   8:	0068                	addi	a0,sp,12
   a:	6d6d6f63          	bltu	s10,s6,6e8 <__DYNAMIC+0x6e8>
   e:	61006e6f          	jal	t3,661e <STACK_SIZE+0x5a1e>
  12:	745f6363          	bltu	t5,t0,758 <__DYNAMIC+0x758>
  16:	7365                	lui	t1,0xffff9
  18:	5f74                	lw	a3,124(a4)
  1a:	64706c6f          	jal	s8,6e60 <STACK_SIZE+0x6260>
  1e:	6363612f          	.insn	4, 0x6363612f
  22:	745f 7365 5f74      	.insn	6, 0x5f747365745f
  28:	64706c6f          	jal	s8,6e6e <STACK_SIZE+0x626e>
  2c:	632e                	.insn	2, 0x632e
  2e:	2f00                	.insn	2, 0x2f00
  30:	616e                	.insn	2, 0x616e
  32:	69652f73          	.insn	4, 0x69652f73
  36:	6168732f          	.insn	4, 0x6168732f
  3a:	6572                	.insn	2, 0x6572
  3c:	6f6f742f          	.insn	4, 0x6f6f742f
  40:	736c                	.insn	2, 0x736c
  42:	6164652f          	.insn	4, 0x6164652f
  46:	665f 6572 7765      	.insn	6, 0x77656572665f
  4c:	7261                	lui	tp,0xffff8
  4e:	2f65                	jal	806 <__DYNAMIC+0x806>
  50:	6972                	.insn	2, 0x6972
  52:	2f766373          	.insn	4, 0x2f766373
  56:	3436                	.insn	2, 0x3436
  58:	652d                	lui	a0,0xb
  5a:	666c                	.insn	2, 0x666c
  5c:	752d                	lui	a0,0xfffeb
  5e:	7562                	.insn	2, 0x7562
  60:	746e                	.insn	2, 0x746e
  62:	2d75                	jal	71e <__DYNAMIC+0x71e>
  64:	3432                	.insn	2, 0x3432
  66:	302e                	.insn	2, 0x302e
  68:	2d34                	.insn	2, 0x2d34
  6a:	2f636367          	.insn	4, 0x2f636367
  6e:	3032                	.insn	2, 0x3032
  70:	3632                	.insn	2, 0x3632
  72:	302e                	.insn	2, 0x302e
  74:	2e34                	.insn	2, 0x2e34
  76:	3530                	.insn	2, 0x3530
  78:	7369722f          	.insn	4, 0x7369722f
  7c:	34367663          	bgeu	a2,gp,3c8 <__DYNAMIC+0x3c8>
  80:	752d                	lui	a0,0xfffeb
  82:	6b6e                	.insn	2, 0x6b6e
  84:	6f6e                	.insn	2, 0x6f6e
  86:	652d6e77          	.insn	4, 0x652d6e77
  8a:	666c                	.insn	2, 0x666c
  8c:	636e692f          	.insn	4, 0x636e692f
  90:	756c                	.insn	2, 0x756c
  92:	6564                	.insn	2, 0x6564
  94:	63616d2f          	.insn	4, 0x63616d2f
  98:	6968                	.insn	2, 0x6968
  9a:	656e                	.insn	2, 0x656e
  9c:	2f00                	.insn	2, 0x2f00
  9e:	616e                	.insn	2, 0x616e
  a0:	69652f73          	.insn	4, 0x69652f73
  a4:	6168732f          	.insn	4, 0x6168732f
  a8:	6572                	.insn	2, 0x6572
  aa:	6f6f742f          	.insn	4, 0x6f6f742f
  ae:	736c                	.insn	2, 0x736c
  b0:	6164652f          	.insn	4, 0x6164652f
  b4:	665f 6572 7765      	.insn	6, 0x77656572665f
  ba:	7261                	lui	tp,0xffff8
  bc:	2f65                	jal	874 <__DYNAMIC+0x874>
  be:	6972                	.insn	2, 0x6972
  c0:	2f766373          	.insn	4, 0x2f766373
  c4:	3436                	.insn	2, 0x3436
  c6:	652d                	lui	a0,0xb
  c8:	666c                	.insn	2, 0x666c
  ca:	752d                	lui	a0,0xfffeb
  cc:	7562                	.insn	2, 0x7562
  ce:	746e                	.insn	2, 0x746e
  d0:	2d75                	jal	78c <__DYNAMIC+0x78c>
  d2:	3432                	.insn	2, 0x3432
  d4:	302e                	.insn	2, 0x302e
  d6:	2d34                	.insn	2, 0x2d34
  d8:	2f636367          	.insn	4, 0x2f636367
  dc:	3032                	.insn	2, 0x3032
  de:	3632                	.insn	2, 0x3632
  e0:	302e                	.insn	2, 0x302e
  e2:	2e34                	.insn	2, 0x2e34
  e4:	3530                	.insn	2, 0x3530
  e6:	7369722f          	.insn	4, 0x7369722f
  ea:	34367663          	bgeu	a2,gp,436 <__DYNAMIC+0x436>
  ee:	752d                	lui	a0,0xfffeb
  f0:	6b6e                	.insn	2, 0x6b6e
  f2:	6f6e                	.insn	2, 0x6f6e
  f4:	652d6e77          	.insn	4, 0x652d6e77
  f8:	666c                	.insn	2, 0x666c
  fa:	636e692f          	.insn	4, 0x636e692f
  fe:	756c                	.insn	2, 0x756c
 100:	6564                	.insn	2, 0x6564
 102:	7379732f          	.insn	4, 0x7379732f
 106:	7300                	.insn	2, 0x7300
 108:	635f636f          	jal	t1,f6f3c <STACK_SIZE+0xf633c>
 10c:	7274                	.insn	2, 0x7274
 10e:	2e6c                	.insn	2, 0x2e6c
 110:	0068                	addi	a0,sp,12
 112:	73616e2f          	.insn	4, 0x73616e2f
 116:	2f69652f          	.insn	4, 0x2f69652f
 11a:	6f68                	.insn	2, 0x6f68
 11c:	656d                	lui	a0,0x1b
 11e:	3865672f          	.insn	4, 0x3865672f
 122:	78696437          	lui	s0,0x78696
 126:	7564452f          	.insn	4, 0x7564452f
 12a:	4334                	lw	a3,64(a4)
 12c:	6968                	.insn	2, 0x6968
 12e:	2f70                	.insn	2, 0x2f70
 130:	6944                	.insn	2, 0x6944
 132:	6164                	.insn	2, 0x6164
 134:	63697463          	bgeu	s2,s6,75c <__DYNAMIC+0x75c>
 138:	532d                	li	t1,-21
 13a:	732f436f          	jal	t1,f486c <STACK_SIZE+0xf3c6c>
 13e:	63610077          	.insn	4, 0x63610077
 142:	65745f63          	bge	s0,s7,7a0 <__DYNAMIC+0x7a0>
 146:	6f5f7473          	.insn	4, 0x6f5f7473
 14a:	706c                	.insn	2, 0x706c
 14c:	0064                	addi	s1,sp,12
 14e:	6175                	addi	sp,sp,368
 150:	7472                	.insn	2, 0x7472
 152:	682e                	.insn	2, 0x682e
 154:	5f00                	lw	s0,56(a4)
 156:	6564                	.insn	2, 0x6564
 158:	6166                	.insn	2, 0x6166
 15a:	6c75                	lui	s8,0x1d
 15c:	5f74                	lw	a3,124(a4)
 15e:	7974                	.insn	2, 0x7974
 160:	6570                	.insn	2, 0x6570
 162:	00682e73          	.insn	4, 0x00682e73
 166:	30747263          	bgeu	s0,t2,46a <__DYNAMIC+0x46a>
 16a:	532e                	lw	t1,232(sp)
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
  10:	0020                	addi	s0,sp,8
  12:	0000                	unimp
  14:	0000                	unimp
  16:	0000                	unimp
  18:	008c                	addi	a1,sp,64
  1a:	0100                	addi	s0,sp,128
  1c:	0154                	addi	a3,sp,132
  1e:	0000                	unimp
  20:	0e42                	slli	t3,t3,0x10
  22:	5010                	lw	a2,32(s0)
  24:	0188                	addi	a0,sp,192
  26:	0289                	addi	t0,t0,2
  28:	8c02                	jr	s8
  2a:	c80a                	sw	sp,16(sp)
  2c:	c942                	sw	a6,144(sp)
  2e:	0e42                	slli	t3,t3,0x10
  30:	4200                	lw	s0,0(a2)
  32:	000c000b          	.insn	4, 0x000c000b
  36:	0000                	unimp
  38:	0000                	unimp
  3a:	0000                	unimp
  3c:	01e0                	addi	s0,sp,204
  3e:	0100                	addi	s0,sp,128
  40:	00b4                	addi	a3,sp,72
  42:	0000                	unimp
  44:	0014                	.insn	2, 0x0014
  46:	0000                	unimp
  48:	0000                	unimp
  4a:	0000                	unimp
  4c:	0294                	addi	a3,sp,320
  4e:	0100                	addi	s0,sp,128
  50:	003a                	c.slli	zero,0xe
  52:	0000                	unimp
  54:	0e48                	addi	a0,sp,788
  56:	7010                	.insn	2, 0x7010
  58:	000e                	c.slli	zero,0x3
  5a:	0000                	unimp
  5c:	0014                	.insn	2, 0x0014
	...
  6a:	0000                	unimp
  6c:	0e42                	slli	t3,t3,0x10
  6e:	0210                	addi	a2,sp,256
  70:	0e00                	addi	s0,sp,784
  72:	0000                	unimp
  74:	000c                	.insn	2, 0x000c
	...
  82:	0000                	unimp
  84:	0014                	.insn	2, 0x0014
  86:	0000                	unimp
  88:	0000                	unimp
  8a:	0000                	unimp
  8c:	02ce                	slli	t0,t0,0x13
  8e:	0100                	addi	s0,sp,128
  90:	003e                	c.slli	zero,0xf
  92:	0000                	unimp
  94:	0e48                	addi	a0,sp,788
  96:	7410                	.insn	2, 0x7410
  98:	000e                	c.slli	zero,0x3
  9a:	0000                	unimp
  9c:	0014                	.insn	2, 0x0014
  9e:	0000                	unimp
  a0:	0000                	unimp
  a2:	0000                	unimp
  a4:	030c                	addi	a1,sp,384
  a6:	0100                	addi	s0,sp,128
  a8:	003e                	c.slli	zero,0xf
  aa:	0000                	unimp
  ac:	0e4c                	addi	a1,sp,788
  ae:	6e10                	.insn	2, 0x6e10
  b0:	000e                	c.slli	zero,0x3
  b2:	0000                	unimp
  b4:	0014                	.insn	2, 0x0014
	...
  c2:	0000                	unimp
  c4:	0e40                	addi	s0,sp,788
  c6:	4010                	lw	a2,0(s0)
  c8:	000e                	c.slli	zero,0x3
  ca:	0000                	unimp
  cc:	002c                	addi	a1,sp,8
  ce:	0000                	unimp
  d0:	0000                	unimp
  d2:	0000                	unimp
  d4:	034a                	slli	t1,t1,0x12
  d6:	0100                	addi	s0,sp,128
  d8:	0178                	addi	a4,sp,140
  da:	0000                	unimp
  dc:	0e42                	slli	t3,t3,0x10
  de:	4c30                	lw	a2,88(s0)
  e0:	0181                	addi	gp,gp,0
  e2:	0389                	addi	t2,t2,2
  e4:	0288                	addi	a0,sp,320
  e6:	0492                	slli	s1,s1,0x4
  e8:	e4030593          	addi	a1,t1,-448 # ffff9e40 <stack+0xfeef9240>
  ec:	0a00                	addi	s0,sp,272
  ee:	42c1                	li	t0,16
  f0:	42c8                	lw	a0,4(a3)
  f2:	42c9                	li	t0,18
  f4:	42d2                	lw	t0,20(sp)
  f6:	000e44d3          	.insn	4, 0x000e44d3
  fa:	0b42                	slli	s6,s6,0x10
