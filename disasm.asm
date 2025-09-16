
build/Debug/Loader.elf:     file format elf32-littlearm


Disassembly of section .text:

080001d0 <__do_global_dtors_aux>:
 80001d0:	b510      	push	{r4, lr}
 80001d2:	4c05      	ldr	r4, [pc, #20]	@ (80001e8 <__do_global_dtors_aux+0x18>)
 80001d4:	7823      	ldrb	r3, [r4, #0]
 80001d6:	b933      	cbnz	r3, 80001e6 <__do_global_dtors_aux+0x16>
 80001d8:	4b04      	ldr	r3, [pc, #16]	@ (80001ec <__do_global_dtors_aux+0x1c>)
 80001da:	b113      	cbz	r3, 80001e2 <__do_global_dtors_aux+0x12>
 80001dc:	4804      	ldr	r0, [pc, #16]	@ (80001f0 <__do_global_dtors_aux+0x20>)
 80001de:	f3af 8000 	nop.w
 80001e2:	2301      	movs	r3, #1
 80001e4:	7023      	strb	r3, [r4, #0]
 80001e6:	bd10      	pop	{r4, pc}
 80001e8:	20000064 	.word	0x20000064
 80001ec:	00000000 	.word	0x00000000
 80001f0:	0800d990 	.word	0x0800d990

080001f4 <frame_dummy>:
 80001f4:	b508      	push	{r3, lr}
 80001f6:	4b03      	ldr	r3, [pc, #12]	@ (8000204 <frame_dummy+0x10>)
 80001f8:	b11b      	cbz	r3, 8000202 <frame_dummy+0xe>
 80001fa:	4903      	ldr	r1, [pc, #12]	@ (8000208 <frame_dummy+0x14>)
 80001fc:	4803      	ldr	r0, [pc, #12]	@ (800020c <frame_dummy+0x18>)
 80001fe:	f3af 8000 	nop.w
 8000202:	bd08      	pop	{r3, pc}
 8000204:	00000000 	.word	0x00000000
 8000208:	20000068 	.word	0x20000068
 800020c:	0800d990 	.word	0x0800d990

08000210 <__aeabi_uldivmod>:
 8000210:	b953      	cbnz	r3, 8000228 <__aeabi_uldivmod+0x18>
 8000212:	b94a      	cbnz	r2, 8000228 <__aeabi_uldivmod+0x18>
 8000214:	2900      	cmp	r1, #0
 8000216:	bf08      	it	eq
 8000218:	2800      	cmpeq	r0, #0
 800021a:	bf1c      	itt	ne
 800021c:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
 8000220:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
 8000224:	f000 b96a 	b.w	80004fc <__aeabi_idiv0>
 8000228:	f1ad 0c08 	sub.w	ip, sp, #8
 800022c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000230:	f000 f806 	bl	8000240 <__udivmoddi4>
 8000234:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000238:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800023c:	b004      	add	sp, #16
 800023e:	4770      	bx	lr

08000240 <__udivmoddi4>:
 8000240:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000244:	9d08      	ldr	r5, [sp, #32]
 8000246:	460c      	mov	r4, r1
 8000248:	2b00      	cmp	r3, #0
 800024a:	d14e      	bne.n	80002ea <__udivmoddi4+0xaa>
 800024c:	4694      	mov	ip, r2
 800024e:	458c      	cmp	ip, r1
 8000250:	4686      	mov	lr, r0
 8000252:	fab2 f282 	clz	r2, r2
 8000256:	d962      	bls.n	800031e <__udivmoddi4+0xde>
 8000258:	b14a      	cbz	r2, 800026e <__udivmoddi4+0x2e>
 800025a:	f1c2 0320 	rsb	r3, r2, #32
 800025e:	4091      	lsls	r1, r2
 8000260:	fa20 f303 	lsr.w	r3, r0, r3
 8000264:	fa0c fc02 	lsl.w	ip, ip, r2
 8000268:	4319      	orrs	r1, r3
 800026a:	fa00 fe02 	lsl.w	lr, r0, r2
 800026e:	ea4f 471c 	mov.w	r7, ip, lsr #16
 8000272:	fa1f f68c 	uxth.w	r6, ip
 8000276:	fbb1 f4f7 	udiv	r4, r1, r7
 800027a:	ea4f 431e 	mov.w	r3, lr, lsr #16
 800027e:	fb07 1114 	mls	r1, r7, r4, r1
 8000282:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000286:	fb04 f106 	mul.w	r1, r4, r6
 800028a:	4299      	cmp	r1, r3
 800028c:	d90a      	bls.n	80002a4 <__udivmoddi4+0x64>
 800028e:	eb1c 0303 	adds.w	r3, ip, r3
 8000292:	f104 30ff 	add.w	r0, r4, #4294967295	@ 0xffffffff
 8000296:	f080 8112 	bcs.w	80004be <__udivmoddi4+0x27e>
 800029a:	4299      	cmp	r1, r3
 800029c:	f240 810f 	bls.w	80004be <__udivmoddi4+0x27e>
 80002a0:	3c02      	subs	r4, #2
 80002a2:	4463      	add	r3, ip
 80002a4:	1a59      	subs	r1, r3, r1
 80002a6:	fa1f f38e 	uxth.w	r3, lr
 80002aa:	fbb1 f0f7 	udiv	r0, r1, r7
 80002ae:	fb07 1110 	mls	r1, r7, r0, r1
 80002b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80002b6:	fb00 f606 	mul.w	r6, r0, r6
 80002ba:	429e      	cmp	r6, r3
 80002bc:	d90a      	bls.n	80002d4 <__udivmoddi4+0x94>
 80002be:	eb1c 0303 	adds.w	r3, ip, r3
 80002c2:	f100 31ff 	add.w	r1, r0, #4294967295	@ 0xffffffff
 80002c6:	f080 80fc 	bcs.w	80004c2 <__udivmoddi4+0x282>
 80002ca:	429e      	cmp	r6, r3
 80002cc:	f240 80f9 	bls.w	80004c2 <__udivmoddi4+0x282>
 80002d0:	4463      	add	r3, ip
 80002d2:	3802      	subs	r0, #2
 80002d4:	1b9b      	subs	r3, r3, r6
 80002d6:	ea40 4004 	orr.w	r0, r0, r4, lsl #16
 80002da:	2100      	movs	r1, #0
 80002dc:	b11d      	cbz	r5, 80002e6 <__udivmoddi4+0xa6>
 80002de:	40d3      	lsrs	r3, r2
 80002e0:	2200      	movs	r2, #0
 80002e2:	e9c5 3200 	strd	r3, r2, [r5]
 80002e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002ea:	428b      	cmp	r3, r1
 80002ec:	d905      	bls.n	80002fa <__udivmoddi4+0xba>
 80002ee:	b10d      	cbz	r5, 80002f4 <__udivmoddi4+0xb4>
 80002f0:	e9c5 0100 	strd	r0, r1, [r5]
 80002f4:	2100      	movs	r1, #0
 80002f6:	4608      	mov	r0, r1
 80002f8:	e7f5      	b.n	80002e6 <__udivmoddi4+0xa6>
 80002fa:	fab3 f183 	clz	r1, r3
 80002fe:	2900      	cmp	r1, #0
 8000300:	d146      	bne.n	8000390 <__udivmoddi4+0x150>
 8000302:	42a3      	cmp	r3, r4
 8000304:	d302      	bcc.n	800030c <__udivmoddi4+0xcc>
 8000306:	4290      	cmp	r0, r2
 8000308:	f0c0 80f0 	bcc.w	80004ec <__udivmoddi4+0x2ac>
 800030c:	1a86      	subs	r6, r0, r2
 800030e:	eb64 0303 	sbc.w	r3, r4, r3
 8000312:	2001      	movs	r0, #1
 8000314:	2d00      	cmp	r5, #0
 8000316:	d0e6      	beq.n	80002e6 <__udivmoddi4+0xa6>
 8000318:	e9c5 6300 	strd	r6, r3, [r5]
 800031c:	e7e3      	b.n	80002e6 <__udivmoddi4+0xa6>
 800031e:	2a00      	cmp	r2, #0
 8000320:	f040 8090 	bne.w	8000444 <__udivmoddi4+0x204>
 8000324:	eba1 040c 	sub.w	r4, r1, ip
 8000328:	ea4f 481c 	mov.w	r8, ip, lsr #16
 800032c:	fa1f f78c 	uxth.w	r7, ip
 8000330:	2101      	movs	r1, #1
 8000332:	fbb4 f6f8 	udiv	r6, r4, r8
 8000336:	ea4f 431e 	mov.w	r3, lr, lsr #16
 800033a:	fb08 4416 	mls	r4, r8, r6, r4
 800033e:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8000342:	fb07 f006 	mul.w	r0, r7, r6
 8000346:	4298      	cmp	r0, r3
 8000348:	d908      	bls.n	800035c <__udivmoddi4+0x11c>
 800034a:	eb1c 0303 	adds.w	r3, ip, r3
 800034e:	f106 34ff 	add.w	r4, r6, #4294967295	@ 0xffffffff
 8000352:	d202      	bcs.n	800035a <__udivmoddi4+0x11a>
 8000354:	4298      	cmp	r0, r3
 8000356:	f200 80cd 	bhi.w	80004f4 <__udivmoddi4+0x2b4>
 800035a:	4626      	mov	r6, r4
 800035c:	1a1c      	subs	r4, r3, r0
 800035e:	fa1f f38e 	uxth.w	r3, lr
 8000362:	fbb4 f0f8 	udiv	r0, r4, r8
 8000366:	fb08 4410 	mls	r4, r8, r0, r4
 800036a:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 800036e:	fb00 f707 	mul.w	r7, r0, r7
 8000372:	429f      	cmp	r7, r3
 8000374:	d908      	bls.n	8000388 <__udivmoddi4+0x148>
 8000376:	eb1c 0303 	adds.w	r3, ip, r3
 800037a:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
 800037e:	d202      	bcs.n	8000386 <__udivmoddi4+0x146>
 8000380:	429f      	cmp	r7, r3
 8000382:	f200 80b0 	bhi.w	80004e6 <__udivmoddi4+0x2a6>
 8000386:	4620      	mov	r0, r4
 8000388:	1bdb      	subs	r3, r3, r7
 800038a:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 800038e:	e7a5      	b.n	80002dc <__udivmoddi4+0x9c>
 8000390:	f1c1 0620 	rsb	r6, r1, #32
 8000394:	408b      	lsls	r3, r1
 8000396:	fa22 f706 	lsr.w	r7, r2, r6
 800039a:	431f      	orrs	r7, r3
 800039c:	fa20 fc06 	lsr.w	ip, r0, r6
 80003a0:	fa04 f301 	lsl.w	r3, r4, r1
 80003a4:	ea43 030c 	orr.w	r3, r3, ip
 80003a8:	40f4      	lsrs	r4, r6
 80003aa:	fa00 f801 	lsl.w	r8, r0, r1
 80003ae:	0c38      	lsrs	r0, r7, #16
 80003b0:	ea4f 4913 	mov.w	r9, r3, lsr #16
 80003b4:	fbb4 fef0 	udiv	lr, r4, r0
 80003b8:	fa1f fc87 	uxth.w	ip, r7
 80003bc:	fb00 441e 	mls	r4, r0, lr, r4
 80003c0:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 80003c4:	fb0e f90c 	mul.w	r9, lr, ip
 80003c8:	45a1      	cmp	r9, r4
 80003ca:	fa02 f201 	lsl.w	r2, r2, r1
 80003ce:	d90a      	bls.n	80003e6 <__udivmoddi4+0x1a6>
 80003d0:	193c      	adds	r4, r7, r4
 80003d2:	f10e 3aff 	add.w	sl, lr, #4294967295	@ 0xffffffff
 80003d6:	f080 8084 	bcs.w	80004e2 <__udivmoddi4+0x2a2>
 80003da:	45a1      	cmp	r9, r4
 80003dc:	f240 8081 	bls.w	80004e2 <__udivmoddi4+0x2a2>
 80003e0:	f1ae 0e02 	sub.w	lr, lr, #2
 80003e4:	443c      	add	r4, r7
 80003e6:	eba4 0409 	sub.w	r4, r4, r9
 80003ea:	fa1f f983 	uxth.w	r9, r3
 80003ee:	fbb4 f3f0 	udiv	r3, r4, r0
 80003f2:	fb00 4413 	mls	r4, r0, r3, r4
 80003f6:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 80003fa:	fb03 fc0c 	mul.w	ip, r3, ip
 80003fe:	45a4      	cmp	ip, r4
 8000400:	d907      	bls.n	8000412 <__udivmoddi4+0x1d2>
 8000402:	193c      	adds	r4, r7, r4
 8000404:	f103 30ff 	add.w	r0, r3, #4294967295	@ 0xffffffff
 8000408:	d267      	bcs.n	80004da <__udivmoddi4+0x29a>
 800040a:	45a4      	cmp	ip, r4
 800040c:	d965      	bls.n	80004da <__udivmoddi4+0x29a>
 800040e:	3b02      	subs	r3, #2
 8000410:	443c      	add	r4, r7
 8000412:	ea43 400e 	orr.w	r0, r3, lr, lsl #16
 8000416:	fba0 9302 	umull	r9, r3, r0, r2
 800041a:	eba4 040c 	sub.w	r4, r4, ip
 800041e:	429c      	cmp	r4, r3
 8000420:	46ce      	mov	lr, r9
 8000422:	469c      	mov	ip, r3
 8000424:	d351      	bcc.n	80004ca <__udivmoddi4+0x28a>
 8000426:	d04e      	beq.n	80004c6 <__udivmoddi4+0x286>
 8000428:	b155      	cbz	r5, 8000440 <__udivmoddi4+0x200>
 800042a:	ebb8 030e 	subs.w	r3, r8, lr
 800042e:	eb64 040c 	sbc.w	r4, r4, ip
 8000432:	fa04 f606 	lsl.w	r6, r4, r6
 8000436:	40cb      	lsrs	r3, r1
 8000438:	431e      	orrs	r6, r3
 800043a:	40cc      	lsrs	r4, r1
 800043c:	e9c5 6400 	strd	r6, r4, [r5]
 8000440:	2100      	movs	r1, #0
 8000442:	e750      	b.n	80002e6 <__udivmoddi4+0xa6>
 8000444:	f1c2 0320 	rsb	r3, r2, #32
 8000448:	fa20 f103 	lsr.w	r1, r0, r3
 800044c:	fa0c fc02 	lsl.w	ip, ip, r2
 8000450:	fa24 f303 	lsr.w	r3, r4, r3
 8000454:	4094      	lsls	r4, r2
 8000456:	430c      	orrs	r4, r1
 8000458:	ea4f 481c 	mov.w	r8, ip, lsr #16
 800045c:	fa00 fe02 	lsl.w	lr, r0, r2
 8000460:	fa1f f78c 	uxth.w	r7, ip
 8000464:	fbb3 f0f8 	udiv	r0, r3, r8
 8000468:	fb08 3110 	mls	r1, r8, r0, r3
 800046c:	0c23      	lsrs	r3, r4, #16
 800046e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000472:	fb00 f107 	mul.w	r1, r0, r7
 8000476:	4299      	cmp	r1, r3
 8000478:	d908      	bls.n	800048c <__udivmoddi4+0x24c>
 800047a:	eb1c 0303 	adds.w	r3, ip, r3
 800047e:	f100 36ff 	add.w	r6, r0, #4294967295	@ 0xffffffff
 8000482:	d22c      	bcs.n	80004de <__udivmoddi4+0x29e>
 8000484:	4299      	cmp	r1, r3
 8000486:	d92a      	bls.n	80004de <__udivmoddi4+0x29e>
 8000488:	3802      	subs	r0, #2
 800048a:	4463      	add	r3, ip
 800048c:	1a5b      	subs	r3, r3, r1
 800048e:	b2a4      	uxth	r4, r4
 8000490:	fbb3 f1f8 	udiv	r1, r3, r8
 8000494:	fb08 3311 	mls	r3, r8, r1, r3
 8000498:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 800049c:	fb01 f307 	mul.w	r3, r1, r7
 80004a0:	42a3      	cmp	r3, r4
 80004a2:	d908      	bls.n	80004b6 <__udivmoddi4+0x276>
 80004a4:	eb1c 0404 	adds.w	r4, ip, r4
 80004a8:	f101 36ff 	add.w	r6, r1, #4294967295	@ 0xffffffff
 80004ac:	d213      	bcs.n	80004d6 <__udivmoddi4+0x296>
 80004ae:	42a3      	cmp	r3, r4
 80004b0:	d911      	bls.n	80004d6 <__udivmoddi4+0x296>
 80004b2:	3902      	subs	r1, #2
 80004b4:	4464      	add	r4, ip
 80004b6:	1ae4      	subs	r4, r4, r3
 80004b8:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 80004bc:	e739      	b.n	8000332 <__udivmoddi4+0xf2>
 80004be:	4604      	mov	r4, r0
 80004c0:	e6f0      	b.n	80002a4 <__udivmoddi4+0x64>
 80004c2:	4608      	mov	r0, r1
 80004c4:	e706      	b.n	80002d4 <__udivmoddi4+0x94>
 80004c6:	45c8      	cmp	r8, r9
 80004c8:	d2ae      	bcs.n	8000428 <__udivmoddi4+0x1e8>
 80004ca:	ebb9 0e02 	subs.w	lr, r9, r2
 80004ce:	eb63 0c07 	sbc.w	ip, r3, r7
 80004d2:	3801      	subs	r0, #1
 80004d4:	e7a8      	b.n	8000428 <__udivmoddi4+0x1e8>
 80004d6:	4631      	mov	r1, r6
 80004d8:	e7ed      	b.n	80004b6 <__udivmoddi4+0x276>
 80004da:	4603      	mov	r3, r0
 80004dc:	e799      	b.n	8000412 <__udivmoddi4+0x1d2>
 80004de:	4630      	mov	r0, r6
 80004e0:	e7d4      	b.n	800048c <__udivmoddi4+0x24c>
 80004e2:	46d6      	mov	lr, sl
 80004e4:	e77f      	b.n	80003e6 <__udivmoddi4+0x1a6>
 80004e6:	4463      	add	r3, ip
 80004e8:	3802      	subs	r0, #2
 80004ea:	e74d      	b.n	8000388 <__udivmoddi4+0x148>
 80004ec:	4606      	mov	r6, r0
 80004ee:	4623      	mov	r3, r4
 80004f0:	4608      	mov	r0, r1
 80004f2:	e70f      	b.n	8000314 <__udivmoddi4+0xd4>
 80004f4:	3e02      	subs	r6, #2
 80004f6:	4463      	add	r3, ip
 80004f8:	e730      	b.n	800035c <__udivmoddi4+0x11c>
 80004fa:	bf00      	nop

080004fc <__aeabi_idiv0>:
 80004fc:	4770      	bx	lr
 80004fe:	bf00      	nop

08000500 <strcmp>:
 8000500:	f810 2b01 	ldrb.w	r2, [r0], #1
 8000504:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000508:	2a01      	cmp	r2, #1
 800050a:	bf28      	it	cs
 800050c:	429a      	cmpcs	r2, r3
 800050e:	d0f7      	beq.n	8000500 <strcmp>
 8000510:	1ad0      	subs	r0, r2, r3
 8000512:	4770      	bx	lr

08000514 <strlen>:
 8000514:	4603      	mov	r3, r0
 8000516:	f813 2b01 	ldrb.w	r2, [r3], #1
 800051a:	2a00      	cmp	r2, #0
 800051c:	d1fb      	bne.n	8000516 <strlen+0x2>
 800051e:	1a18      	subs	r0, r3, r0
 8000520:	3801      	subs	r0, #1
 8000522:	4770      	bx	lr
	...

08000530 <memchr>:
 8000530:	f001 01ff 	and.w	r1, r1, #255	@ 0xff
 8000534:	2a10      	cmp	r2, #16
 8000536:	db2b      	blt.n	8000590 <memchr+0x60>
 8000538:	f010 0f07 	tst.w	r0, #7
 800053c:	d008      	beq.n	8000550 <memchr+0x20>
 800053e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000542:	3a01      	subs	r2, #1
 8000544:	428b      	cmp	r3, r1
 8000546:	d02d      	beq.n	80005a4 <memchr+0x74>
 8000548:	f010 0f07 	tst.w	r0, #7
 800054c:	b342      	cbz	r2, 80005a0 <memchr+0x70>
 800054e:	d1f6      	bne.n	800053e <memchr+0xe>
 8000550:	b4f0      	push	{r4, r5, r6, r7}
 8000552:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000556:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800055a:	f022 0407 	bic.w	r4, r2, #7
 800055e:	f07f 0700 	mvns.w	r7, #0
 8000562:	2300      	movs	r3, #0
 8000564:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000568:	3c08      	subs	r4, #8
 800056a:	ea85 0501 	eor.w	r5, r5, r1
 800056e:	ea86 0601 	eor.w	r6, r6, r1
 8000572:	fa85 f547 	uadd8	r5, r5, r7
 8000576:	faa3 f587 	sel	r5, r3, r7
 800057a:	fa86 f647 	uadd8	r6, r6, r7
 800057e:	faa5 f687 	sel	r6, r5, r7
 8000582:	b98e      	cbnz	r6, 80005a8 <memchr+0x78>
 8000584:	d1ee      	bne.n	8000564 <memchr+0x34>
 8000586:	bcf0      	pop	{r4, r5, r6, r7}
 8000588:	f001 01ff 	and.w	r1, r1, #255	@ 0xff
 800058c:	f002 0207 	and.w	r2, r2, #7
 8000590:	b132      	cbz	r2, 80005a0 <memchr+0x70>
 8000592:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000596:	3a01      	subs	r2, #1
 8000598:	ea83 0301 	eor.w	r3, r3, r1
 800059c:	b113      	cbz	r3, 80005a4 <memchr+0x74>
 800059e:	d1f8      	bne.n	8000592 <memchr+0x62>
 80005a0:	2000      	movs	r0, #0
 80005a2:	4770      	bx	lr
 80005a4:	3801      	subs	r0, #1
 80005a6:	4770      	bx	lr
 80005a8:	2d00      	cmp	r5, #0
 80005aa:	bf06      	itte	eq
 80005ac:	4635      	moveq	r5, r6
 80005ae:	3803      	subeq	r0, #3
 80005b0:	3807      	subne	r0, #7
 80005b2:	f015 0f01 	tst.w	r5, #1
 80005b6:	d107      	bne.n	80005c8 <memchr+0x98>
 80005b8:	3001      	adds	r0, #1
 80005ba:	f415 7f80 	tst.w	r5, #256	@ 0x100
 80005be:	bf02      	ittt	eq
 80005c0:	3001      	addeq	r0, #1
 80005c2:	f415 3fc0 	tsteq.w	r5, #98304	@ 0x18000
 80005c6:	3001      	addeq	r0, #1
 80005c8:	bcf0      	pop	{r4, r5, r6, r7}
 80005ca:	3801      	subs	r0, #1
 80005cc:	4770      	bx	lr
 80005ce:	bf00      	nop

080005d0 <SystemInit>:
 80005d0:	b480      	push	{r7}
 80005d2:	af00      	add	r7, sp, #0
 80005d4:	4b06      	ldr	r3, [pc, #24]	@ (80005f0 <SystemInit+0x20>)
 80005d6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80005da:	4a05      	ldr	r2, [pc, #20]	@ (80005f0 <SystemInit+0x20>)
 80005dc:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 80005e0:	f8c2 3088 	str.w	r3, [r2, #136]	@ 0x88
 80005e4:	bf00      	nop
 80005e6:	46bd      	mov	sp, r7
 80005e8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005ec:	4770      	bx	lr
 80005ee:	bf00      	nop
 80005f0:	e000ed00 	.word	0xe000ed00

080005f4 <__NVIC_SetPriorityGrouping>:
 80005f4:	b480      	push	{r7}
 80005f6:	b085      	sub	sp, #20
 80005f8:	af00      	add	r7, sp, #0
 80005fa:	6078      	str	r0, [r7, #4]
 80005fc:	687b      	ldr	r3, [r7, #4]
 80005fe:	f003 0307 	and.w	r3, r3, #7
 8000602:	60fb      	str	r3, [r7, #12]
 8000604:	4b0b      	ldr	r3, [pc, #44]	@ (8000634 <__NVIC_SetPriorityGrouping+0x40>)
 8000606:	68db      	ldr	r3, [r3, #12]
 8000608:	60bb      	str	r3, [r7, #8]
 800060a:	68ba      	ldr	r2, [r7, #8]
 800060c:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 8000610:	4013      	ands	r3, r2
 8000612:	60bb      	str	r3, [r7, #8]
 8000614:	68fb      	ldr	r3, [r7, #12]
 8000616:	021a      	lsls	r2, r3, #8
 8000618:	68bb      	ldr	r3, [r7, #8]
 800061a:	431a      	orrs	r2, r3
 800061c:	4b06      	ldr	r3, [pc, #24]	@ (8000638 <__NVIC_SetPriorityGrouping+0x44>)
 800061e:	4313      	orrs	r3, r2
 8000620:	60bb      	str	r3, [r7, #8]
 8000622:	4a04      	ldr	r2, [pc, #16]	@ (8000634 <__NVIC_SetPriorityGrouping+0x40>)
 8000624:	68bb      	ldr	r3, [r7, #8]
 8000626:	60d3      	str	r3, [r2, #12]
 8000628:	bf00      	nop
 800062a:	3714      	adds	r7, #20
 800062c:	46bd      	mov	sp, r7
 800062e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000632:	4770      	bx	lr
 8000634:	e000ed00 	.word	0xe000ed00
 8000638:	05fa0000 	.word	0x05fa0000

0800063c <__NVIC_GetPriorityGrouping>:
 800063c:	b480      	push	{r7}
 800063e:	af00      	add	r7, sp, #0
 8000640:	4b04      	ldr	r3, [pc, #16]	@ (8000654 <__NVIC_GetPriorityGrouping+0x18>)
 8000642:	68db      	ldr	r3, [r3, #12]
 8000644:	0a1b      	lsrs	r3, r3, #8
 8000646:	f003 0307 	and.w	r3, r3, #7
 800064a:	4618      	mov	r0, r3
 800064c:	46bd      	mov	sp, r7
 800064e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000652:	4770      	bx	lr
 8000654:	e000ed00 	.word	0xe000ed00

08000658 <__NVIC_EnableIRQ>:
 8000658:	b480      	push	{r7}
 800065a:	b083      	sub	sp, #12
 800065c:	af00      	add	r7, sp, #0
 800065e:	4603      	mov	r3, r0
 8000660:	71fb      	strb	r3, [r7, #7]
 8000662:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000666:	2b00      	cmp	r3, #0
 8000668:	db0b      	blt.n	8000682 <__NVIC_EnableIRQ+0x2a>
 800066a:	79fb      	ldrb	r3, [r7, #7]
 800066c:	f003 021f 	and.w	r2, r3, #31
 8000670:	4907      	ldr	r1, [pc, #28]	@ (8000690 <__NVIC_EnableIRQ+0x38>)
 8000672:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000676:	095b      	lsrs	r3, r3, #5
 8000678:	2001      	movs	r0, #1
 800067a:	fa00 f202 	lsl.w	r2, r0, r2
 800067e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000682:	bf00      	nop
 8000684:	370c      	adds	r7, #12
 8000686:	46bd      	mov	sp, r7
 8000688:	f85d 7b04 	ldr.w	r7, [sp], #4
 800068c:	4770      	bx	lr
 800068e:	bf00      	nop
 8000690:	e000e100 	.word	0xe000e100

08000694 <__NVIC_SetPriority>:
 8000694:	b480      	push	{r7}
 8000696:	b083      	sub	sp, #12
 8000698:	af00      	add	r7, sp, #0
 800069a:	4603      	mov	r3, r0
 800069c:	6039      	str	r1, [r7, #0]
 800069e:	71fb      	strb	r3, [r7, #7]
 80006a0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80006a4:	2b00      	cmp	r3, #0
 80006a6:	db0a      	blt.n	80006be <__NVIC_SetPriority+0x2a>
 80006a8:	683b      	ldr	r3, [r7, #0]
 80006aa:	b2da      	uxtb	r2, r3
 80006ac:	490c      	ldr	r1, [pc, #48]	@ (80006e0 <__NVIC_SetPriority+0x4c>)
 80006ae:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80006b2:	0112      	lsls	r2, r2, #4
 80006b4:	b2d2      	uxtb	r2, r2
 80006b6:	440b      	add	r3, r1
 80006b8:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 80006bc:	e00a      	b.n	80006d4 <__NVIC_SetPriority+0x40>
 80006be:	683b      	ldr	r3, [r7, #0]
 80006c0:	b2da      	uxtb	r2, r3
 80006c2:	4908      	ldr	r1, [pc, #32]	@ (80006e4 <__NVIC_SetPriority+0x50>)
 80006c4:	79fb      	ldrb	r3, [r7, #7]
 80006c6:	f003 030f 	and.w	r3, r3, #15
 80006ca:	3b04      	subs	r3, #4
 80006cc:	0112      	lsls	r2, r2, #4
 80006ce:	b2d2      	uxtb	r2, r2
 80006d0:	440b      	add	r3, r1
 80006d2:	761a      	strb	r2, [r3, #24]
 80006d4:	bf00      	nop
 80006d6:	370c      	adds	r7, #12
 80006d8:	46bd      	mov	sp, r7
 80006da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006de:	4770      	bx	lr
 80006e0:	e000e100 	.word	0xe000e100
 80006e4:	e000ed00 	.word	0xe000ed00

080006e8 <NVIC_EncodePriority>:
 80006e8:	b480      	push	{r7}
 80006ea:	b089      	sub	sp, #36	@ 0x24
 80006ec:	af00      	add	r7, sp, #0
 80006ee:	60f8      	str	r0, [r7, #12]
 80006f0:	60b9      	str	r1, [r7, #8]
 80006f2:	607a      	str	r2, [r7, #4]
 80006f4:	68fb      	ldr	r3, [r7, #12]
 80006f6:	f003 0307 	and.w	r3, r3, #7
 80006fa:	61fb      	str	r3, [r7, #28]
 80006fc:	69fb      	ldr	r3, [r7, #28]
 80006fe:	f1c3 0307 	rsb	r3, r3, #7
 8000702:	2b04      	cmp	r3, #4
 8000704:	bf28      	it	cs
 8000706:	2304      	movcs	r3, #4
 8000708:	61bb      	str	r3, [r7, #24]
 800070a:	69fb      	ldr	r3, [r7, #28]
 800070c:	3304      	adds	r3, #4
 800070e:	2b06      	cmp	r3, #6
 8000710:	d902      	bls.n	8000718 <NVIC_EncodePriority+0x30>
 8000712:	69fb      	ldr	r3, [r7, #28]
 8000714:	3b03      	subs	r3, #3
 8000716:	e000      	b.n	800071a <NVIC_EncodePriority+0x32>
 8000718:	2300      	movs	r3, #0
 800071a:	617b      	str	r3, [r7, #20]
 800071c:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8000720:	69bb      	ldr	r3, [r7, #24]
 8000722:	fa02 f303 	lsl.w	r3, r2, r3
 8000726:	43da      	mvns	r2, r3
 8000728:	68bb      	ldr	r3, [r7, #8]
 800072a:	401a      	ands	r2, r3
 800072c:	697b      	ldr	r3, [r7, #20]
 800072e:	409a      	lsls	r2, r3
 8000730:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
 8000734:	697b      	ldr	r3, [r7, #20]
 8000736:	fa01 f303 	lsl.w	r3, r1, r3
 800073a:	43d9      	mvns	r1, r3
 800073c:	687b      	ldr	r3, [r7, #4]
 800073e:	400b      	ands	r3, r1
 8000740:	4313      	orrs	r3, r2
 8000742:	4618      	mov	r0, r3
 8000744:	3724      	adds	r7, #36	@ 0x24
 8000746:	46bd      	mov	sp, r7
 8000748:	f85d 7b04 	ldr.w	r7, [sp], #4
 800074c:	4770      	bx	lr
	...

08000750 <SysTick_Config>:
 8000750:	b580      	push	{r7, lr}
 8000752:	b082      	sub	sp, #8
 8000754:	af00      	add	r7, sp, #0
 8000756:	6078      	str	r0, [r7, #4]
 8000758:	687b      	ldr	r3, [r7, #4]
 800075a:	3b01      	subs	r3, #1
 800075c:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8000760:	d301      	bcc.n	8000766 <SysTick_Config+0x16>
 8000762:	2301      	movs	r3, #1
 8000764:	e00f      	b.n	8000786 <SysTick_Config+0x36>
 8000766:	4a0a      	ldr	r2, [pc, #40]	@ (8000790 <SysTick_Config+0x40>)
 8000768:	687b      	ldr	r3, [r7, #4]
 800076a:	3b01      	subs	r3, #1
 800076c:	6053      	str	r3, [r2, #4]
 800076e:	210f      	movs	r1, #15
 8000770:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 8000774:	f7ff ff8e 	bl	8000694 <__NVIC_SetPriority>
 8000778:	4b05      	ldr	r3, [pc, #20]	@ (8000790 <SysTick_Config+0x40>)
 800077a:	2200      	movs	r2, #0
 800077c:	609a      	str	r2, [r3, #8]
 800077e:	4b04      	ldr	r3, [pc, #16]	@ (8000790 <SysTick_Config+0x40>)
 8000780:	2207      	movs	r2, #7
 8000782:	601a      	str	r2, [r3, #0]
 8000784:	2300      	movs	r3, #0
 8000786:	4618      	mov	r0, r3
 8000788:	3708      	adds	r7, #8
 800078a:	46bd      	mov	sp, r7
 800078c:	bd80      	pop	{r7, pc}
 800078e:	bf00      	nop
 8000790:	e000e010 	.word	0xe000e010

08000794 <HAL_NVIC_SetPriorityGrouping>:
 8000794:	b580      	push	{r7, lr}
 8000796:	b082      	sub	sp, #8
 8000798:	af00      	add	r7, sp, #0
 800079a:	6078      	str	r0, [r7, #4]
 800079c:	6878      	ldr	r0, [r7, #4]
 800079e:	f7ff ff29 	bl	80005f4 <__NVIC_SetPriorityGrouping>
 80007a2:	bf00      	nop
 80007a4:	3708      	adds	r7, #8
 80007a6:	46bd      	mov	sp, r7
 80007a8:	bd80      	pop	{r7, pc}

080007aa <HAL_NVIC_SetPriority>:
 80007aa:	b580      	push	{r7, lr}
 80007ac:	b086      	sub	sp, #24
 80007ae:	af00      	add	r7, sp, #0
 80007b0:	4603      	mov	r3, r0
 80007b2:	60b9      	str	r1, [r7, #8]
 80007b4:	607a      	str	r2, [r7, #4]
 80007b6:	73fb      	strb	r3, [r7, #15]
 80007b8:	2300      	movs	r3, #0
 80007ba:	617b      	str	r3, [r7, #20]
 80007bc:	f7ff ff3e 	bl	800063c <__NVIC_GetPriorityGrouping>
 80007c0:	6178      	str	r0, [r7, #20]
 80007c2:	687a      	ldr	r2, [r7, #4]
 80007c4:	68b9      	ldr	r1, [r7, #8]
 80007c6:	6978      	ldr	r0, [r7, #20]
 80007c8:	f7ff ff8e 	bl	80006e8 <NVIC_EncodePriority>
 80007cc:	4602      	mov	r2, r0
 80007ce:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80007d2:	4611      	mov	r1, r2
 80007d4:	4618      	mov	r0, r3
 80007d6:	f7ff ff5d 	bl	8000694 <__NVIC_SetPriority>
 80007da:	bf00      	nop
 80007dc:	3718      	adds	r7, #24
 80007de:	46bd      	mov	sp, r7
 80007e0:	bd80      	pop	{r7, pc}

080007e2 <HAL_NVIC_EnableIRQ>:
 80007e2:	b580      	push	{r7, lr}
 80007e4:	b082      	sub	sp, #8
 80007e6:	af00      	add	r7, sp, #0
 80007e8:	4603      	mov	r3, r0
 80007ea:	71fb      	strb	r3, [r7, #7]
 80007ec:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80007f0:	4618      	mov	r0, r3
 80007f2:	f7ff ff31 	bl	8000658 <__NVIC_EnableIRQ>
 80007f6:	bf00      	nop
 80007f8:	3708      	adds	r7, #8
 80007fa:	46bd      	mov	sp, r7
 80007fc:	bd80      	pop	{r7, pc}

080007fe <HAL_SYSTICK_Config>:
 80007fe:	b580      	push	{r7, lr}
 8000800:	b082      	sub	sp, #8
 8000802:	af00      	add	r7, sp, #0
 8000804:	6078      	str	r0, [r7, #4]
 8000806:	6878      	ldr	r0, [r7, #4]
 8000808:	f7ff ffa2 	bl	8000750 <SysTick_Config>
 800080c:	4603      	mov	r3, r0
 800080e:	4618      	mov	r0, r3
 8000810:	3708      	adds	r7, #8
 8000812:	46bd      	mov	sp, r7
 8000814:	bd80      	pop	{r7, pc}
	...

08000818 <HAL_RCC_OscConfig>:
 8000818:	b580      	push	{r7, lr}
 800081a:	b086      	sub	sp, #24
 800081c:	af00      	add	r7, sp, #0
 800081e:	6078      	str	r0, [r7, #4]
 8000820:	2300      	movs	r3, #0
 8000822:	75fb      	strb	r3, [r7, #23]
 8000824:	687b      	ldr	r3, [r7, #4]
 8000826:	2b00      	cmp	r3, #0
 8000828:	d101      	bne.n	800082e <HAL_RCC_OscConfig+0x16>
 800082a:	2301      	movs	r3, #1
 800082c:	e291      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 800082e:	687b      	ldr	r3, [r7, #4]
 8000830:	681b      	ldr	r3, [r3, #0]
 8000832:	f003 0301 	and.w	r3, r3, #1
 8000836:	2b00      	cmp	r3, #0
 8000838:	f000 8087 	beq.w	800094a <HAL_RCC_OscConfig+0x132>
 800083c:	4b96      	ldr	r3, [pc, #600]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800083e:	689b      	ldr	r3, [r3, #8]
 8000840:	f003 030c 	and.w	r3, r3, #12
 8000844:	2b04      	cmp	r3, #4
 8000846:	d00c      	beq.n	8000862 <HAL_RCC_OscConfig+0x4a>
 8000848:	4b93      	ldr	r3, [pc, #588]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800084a:	689b      	ldr	r3, [r3, #8]
 800084c:	f003 030c 	and.w	r3, r3, #12
 8000850:	2b08      	cmp	r3, #8
 8000852:	d112      	bne.n	800087a <HAL_RCC_OscConfig+0x62>
 8000854:	4b90      	ldr	r3, [pc, #576]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000856:	685b      	ldr	r3, [r3, #4]
 8000858:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 800085c:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 8000860:	d10b      	bne.n	800087a <HAL_RCC_OscConfig+0x62>
 8000862:	4b8d      	ldr	r3, [pc, #564]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000864:	681b      	ldr	r3, [r3, #0]
 8000866:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800086a:	2b00      	cmp	r3, #0
 800086c:	d06c      	beq.n	8000948 <HAL_RCC_OscConfig+0x130>
 800086e:	687b      	ldr	r3, [r7, #4]
 8000870:	685b      	ldr	r3, [r3, #4]
 8000872:	2b00      	cmp	r3, #0
 8000874:	d168      	bne.n	8000948 <HAL_RCC_OscConfig+0x130>
 8000876:	2301      	movs	r3, #1
 8000878:	e26b      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 800087a:	687b      	ldr	r3, [r7, #4]
 800087c:	685b      	ldr	r3, [r3, #4]
 800087e:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8000882:	d106      	bne.n	8000892 <HAL_RCC_OscConfig+0x7a>
 8000884:	4b84      	ldr	r3, [pc, #528]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000886:	681b      	ldr	r3, [r3, #0]
 8000888:	4a83      	ldr	r2, [pc, #524]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800088a:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 800088e:	6013      	str	r3, [r2, #0]
 8000890:	e02e      	b.n	80008f0 <HAL_RCC_OscConfig+0xd8>
 8000892:	687b      	ldr	r3, [r7, #4]
 8000894:	685b      	ldr	r3, [r3, #4]
 8000896:	2b00      	cmp	r3, #0
 8000898:	d10c      	bne.n	80008b4 <HAL_RCC_OscConfig+0x9c>
 800089a:	4b7f      	ldr	r3, [pc, #508]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800089c:	681b      	ldr	r3, [r3, #0]
 800089e:	4a7e      	ldr	r2, [pc, #504]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008a0:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80008a4:	6013      	str	r3, [r2, #0]
 80008a6:	4b7c      	ldr	r3, [pc, #496]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008a8:	681b      	ldr	r3, [r3, #0]
 80008aa:	4a7b      	ldr	r2, [pc, #492]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008ac:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 80008b0:	6013      	str	r3, [r2, #0]
 80008b2:	e01d      	b.n	80008f0 <HAL_RCC_OscConfig+0xd8>
 80008b4:	687b      	ldr	r3, [r7, #4]
 80008b6:	685b      	ldr	r3, [r3, #4]
 80008b8:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 80008bc:	d10c      	bne.n	80008d8 <HAL_RCC_OscConfig+0xc0>
 80008be:	4b76      	ldr	r3, [pc, #472]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008c0:	681b      	ldr	r3, [r3, #0]
 80008c2:	4a75      	ldr	r2, [pc, #468]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008c4:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 80008c8:	6013      	str	r3, [r2, #0]
 80008ca:	4b73      	ldr	r3, [pc, #460]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008cc:	681b      	ldr	r3, [r3, #0]
 80008ce:	4a72      	ldr	r2, [pc, #456]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008d0:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80008d4:	6013      	str	r3, [r2, #0]
 80008d6:	e00b      	b.n	80008f0 <HAL_RCC_OscConfig+0xd8>
 80008d8:	4b6f      	ldr	r3, [pc, #444]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008da:	681b      	ldr	r3, [r3, #0]
 80008dc:	4a6e      	ldr	r2, [pc, #440]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008de:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80008e2:	6013      	str	r3, [r2, #0]
 80008e4:	4b6c      	ldr	r3, [pc, #432]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008e6:	681b      	ldr	r3, [r3, #0]
 80008e8:	4a6b      	ldr	r2, [pc, #428]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80008ea:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 80008ee:	6013      	str	r3, [r2, #0]
 80008f0:	687b      	ldr	r3, [r7, #4]
 80008f2:	685b      	ldr	r3, [r3, #4]
 80008f4:	2b00      	cmp	r3, #0
 80008f6:	d013      	beq.n	8000920 <HAL_RCC_OscConfig+0x108>
 80008f8:	f001 fe88 	bl	800260c <HAL_GetTick>
 80008fc:	6138      	str	r0, [r7, #16]
 80008fe:	e008      	b.n	8000912 <HAL_RCC_OscConfig+0xfa>
 8000900:	f001 fe84 	bl	800260c <HAL_GetTick>
 8000904:	4602      	mov	r2, r0
 8000906:	693b      	ldr	r3, [r7, #16]
 8000908:	1ad3      	subs	r3, r2, r3
 800090a:	2b64      	cmp	r3, #100	@ 0x64
 800090c:	d901      	bls.n	8000912 <HAL_RCC_OscConfig+0xfa>
 800090e:	2303      	movs	r3, #3
 8000910:	e21f      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000912:	4b61      	ldr	r3, [pc, #388]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000914:	681b      	ldr	r3, [r3, #0]
 8000916:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 800091a:	2b00      	cmp	r3, #0
 800091c:	d0f0      	beq.n	8000900 <HAL_RCC_OscConfig+0xe8>
 800091e:	e014      	b.n	800094a <HAL_RCC_OscConfig+0x132>
 8000920:	f001 fe74 	bl	800260c <HAL_GetTick>
 8000924:	6138      	str	r0, [r7, #16]
 8000926:	e008      	b.n	800093a <HAL_RCC_OscConfig+0x122>
 8000928:	f001 fe70 	bl	800260c <HAL_GetTick>
 800092c:	4602      	mov	r2, r0
 800092e:	693b      	ldr	r3, [r7, #16]
 8000930:	1ad3      	subs	r3, r2, r3
 8000932:	2b64      	cmp	r3, #100	@ 0x64
 8000934:	d901      	bls.n	800093a <HAL_RCC_OscConfig+0x122>
 8000936:	2303      	movs	r3, #3
 8000938:	e20b      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 800093a:	4b57      	ldr	r3, [pc, #348]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800093c:	681b      	ldr	r3, [r3, #0]
 800093e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8000942:	2b00      	cmp	r3, #0
 8000944:	d1f0      	bne.n	8000928 <HAL_RCC_OscConfig+0x110>
 8000946:	e000      	b.n	800094a <HAL_RCC_OscConfig+0x132>
 8000948:	bf00      	nop
 800094a:	687b      	ldr	r3, [r7, #4]
 800094c:	681b      	ldr	r3, [r3, #0]
 800094e:	f003 0302 	and.w	r3, r3, #2
 8000952:	2b00      	cmp	r3, #0
 8000954:	d069      	beq.n	8000a2a <HAL_RCC_OscConfig+0x212>
 8000956:	4b50      	ldr	r3, [pc, #320]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000958:	689b      	ldr	r3, [r3, #8]
 800095a:	f003 030c 	and.w	r3, r3, #12
 800095e:	2b00      	cmp	r3, #0
 8000960:	d00b      	beq.n	800097a <HAL_RCC_OscConfig+0x162>
 8000962:	4b4d      	ldr	r3, [pc, #308]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000964:	689b      	ldr	r3, [r3, #8]
 8000966:	f003 030c 	and.w	r3, r3, #12
 800096a:	2b08      	cmp	r3, #8
 800096c:	d11c      	bne.n	80009a8 <HAL_RCC_OscConfig+0x190>
 800096e:	4b4a      	ldr	r3, [pc, #296]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000970:	685b      	ldr	r3, [r3, #4]
 8000972:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8000976:	2b00      	cmp	r3, #0
 8000978:	d116      	bne.n	80009a8 <HAL_RCC_OscConfig+0x190>
 800097a:	4b47      	ldr	r3, [pc, #284]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 800097c:	681b      	ldr	r3, [r3, #0]
 800097e:	f003 0302 	and.w	r3, r3, #2
 8000982:	2b00      	cmp	r3, #0
 8000984:	d005      	beq.n	8000992 <HAL_RCC_OscConfig+0x17a>
 8000986:	687b      	ldr	r3, [r7, #4]
 8000988:	68db      	ldr	r3, [r3, #12]
 800098a:	2b01      	cmp	r3, #1
 800098c:	d001      	beq.n	8000992 <HAL_RCC_OscConfig+0x17a>
 800098e:	2301      	movs	r3, #1
 8000990:	e1df      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000992:	4b41      	ldr	r3, [pc, #260]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000994:	681b      	ldr	r3, [r3, #0]
 8000996:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 800099a:	687b      	ldr	r3, [r7, #4]
 800099c:	691b      	ldr	r3, [r3, #16]
 800099e:	00db      	lsls	r3, r3, #3
 80009a0:	493d      	ldr	r1, [pc, #244]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009a2:	4313      	orrs	r3, r2
 80009a4:	600b      	str	r3, [r1, #0]
 80009a6:	e040      	b.n	8000a2a <HAL_RCC_OscConfig+0x212>
 80009a8:	687b      	ldr	r3, [r7, #4]
 80009aa:	68db      	ldr	r3, [r3, #12]
 80009ac:	2b00      	cmp	r3, #0
 80009ae:	d023      	beq.n	80009f8 <HAL_RCC_OscConfig+0x1e0>
 80009b0:	4b39      	ldr	r3, [pc, #228]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009b2:	681b      	ldr	r3, [r3, #0]
 80009b4:	4a38      	ldr	r2, [pc, #224]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009b6:	f043 0301 	orr.w	r3, r3, #1
 80009ba:	6013      	str	r3, [r2, #0]
 80009bc:	f001 fe26 	bl	800260c <HAL_GetTick>
 80009c0:	6138      	str	r0, [r7, #16]
 80009c2:	e008      	b.n	80009d6 <HAL_RCC_OscConfig+0x1be>
 80009c4:	f001 fe22 	bl	800260c <HAL_GetTick>
 80009c8:	4602      	mov	r2, r0
 80009ca:	693b      	ldr	r3, [r7, #16]
 80009cc:	1ad3      	subs	r3, r2, r3
 80009ce:	2b02      	cmp	r3, #2
 80009d0:	d901      	bls.n	80009d6 <HAL_RCC_OscConfig+0x1be>
 80009d2:	2303      	movs	r3, #3
 80009d4:	e1bd      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 80009d6:	4b30      	ldr	r3, [pc, #192]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009d8:	681b      	ldr	r3, [r3, #0]
 80009da:	f003 0302 	and.w	r3, r3, #2
 80009de:	2b00      	cmp	r3, #0
 80009e0:	d0f0      	beq.n	80009c4 <HAL_RCC_OscConfig+0x1ac>
 80009e2:	4b2d      	ldr	r3, [pc, #180]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009e4:	681b      	ldr	r3, [r3, #0]
 80009e6:	f023 02f8 	bic.w	r2, r3, #248	@ 0xf8
 80009ea:	687b      	ldr	r3, [r7, #4]
 80009ec:	691b      	ldr	r3, [r3, #16]
 80009ee:	00db      	lsls	r3, r3, #3
 80009f0:	4929      	ldr	r1, [pc, #164]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009f2:	4313      	orrs	r3, r2
 80009f4:	600b      	str	r3, [r1, #0]
 80009f6:	e018      	b.n	8000a2a <HAL_RCC_OscConfig+0x212>
 80009f8:	4b27      	ldr	r3, [pc, #156]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009fa:	681b      	ldr	r3, [r3, #0]
 80009fc:	4a26      	ldr	r2, [pc, #152]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 80009fe:	f023 0301 	bic.w	r3, r3, #1
 8000a02:	6013      	str	r3, [r2, #0]
 8000a04:	f001 fe02 	bl	800260c <HAL_GetTick>
 8000a08:	6138      	str	r0, [r7, #16]
 8000a0a:	e008      	b.n	8000a1e <HAL_RCC_OscConfig+0x206>
 8000a0c:	f001 fdfe 	bl	800260c <HAL_GetTick>
 8000a10:	4602      	mov	r2, r0
 8000a12:	693b      	ldr	r3, [r7, #16]
 8000a14:	1ad3      	subs	r3, r2, r3
 8000a16:	2b02      	cmp	r3, #2
 8000a18:	d901      	bls.n	8000a1e <HAL_RCC_OscConfig+0x206>
 8000a1a:	2303      	movs	r3, #3
 8000a1c:	e199      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000a1e:	4b1e      	ldr	r3, [pc, #120]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a20:	681b      	ldr	r3, [r3, #0]
 8000a22:	f003 0302 	and.w	r3, r3, #2
 8000a26:	2b00      	cmp	r3, #0
 8000a28:	d1f0      	bne.n	8000a0c <HAL_RCC_OscConfig+0x1f4>
 8000a2a:	687b      	ldr	r3, [r7, #4]
 8000a2c:	681b      	ldr	r3, [r3, #0]
 8000a2e:	f003 0308 	and.w	r3, r3, #8
 8000a32:	2b00      	cmp	r3, #0
 8000a34:	d038      	beq.n	8000aa8 <HAL_RCC_OscConfig+0x290>
 8000a36:	687b      	ldr	r3, [r7, #4]
 8000a38:	695b      	ldr	r3, [r3, #20]
 8000a3a:	2b00      	cmp	r3, #0
 8000a3c:	d019      	beq.n	8000a72 <HAL_RCC_OscConfig+0x25a>
 8000a3e:	4b16      	ldr	r3, [pc, #88]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a40:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8000a42:	4a15      	ldr	r2, [pc, #84]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a44:	f043 0301 	orr.w	r3, r3, #1
 8000a48:	6753      	str	r3, [r2, #116]	@ 0x74
 8000a4a:	f001 fddf 	bl	800260c <HAL_GetTick>
 8000a4e:	6138      	str	r0, [r7, #16]
 8000a50:	e008      	b.n	8000a64 <HAL_RCC_OscConfig+0x24c>
 8000a52:	f001 fddb 	bl	800260c <HAL_GetTick>
 8000a56:	4602      	mov	r2, r0
 8000a58:	693b      	ldr	r3, [r7, #16]
 8000a5a:	1ad3      	subs	r3, r2, r3
 8000a5c:	2b02      	cmp	r3, #2
 8000a5e:	d901      	bls.n	8000a64 <HAL_RCC_OscConfig+0x24c>
 8000a60:	2303      	movs	r3, #3
 8000a62:	e176      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000a64:	4b0c      	ldr	r3, [pc, #48]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a66:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8000a68:	f003 0302 	and.w	r3, r3, #2
 8000a6c:	2b00      	cmp	r3, #0
 8000a6e:	d0f0      	beq.n	8000a52 <HAL_RCC_OscConfig+0x23a>
 8000a70:	e01a      	b.n	8000aa8 <HAL_RCC_OscConfig+0x290>
 8000a72:	4b09      	ldr	r3, [pc, #36]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a74:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8000a76:	4a08      	ldr	r2, [pc, #32]	@ (8000a98 <HAL_RCC_OscConfig+0x280>)
 8000a78:	f023 0301 	bic.w	r3, r3, #1
 8000a7c:	6753      	str	r3, [r2, #116]	@ 0x74
 8000a7e:	f001 fdc5 	bl	800260c <HAL_GetTick>
 8000a82:	6138      	str	r0, [r7, #16]
 8000a84:	e00a      	b.n	8000a9c <HAL_RCC_OscConfig+0x284>
 8000a86:	f001 fdc1 	bl	800260c <HAL_GetTick>
 8000a8a:	4602      	mov	r2, r0
 8000a8c:	693b      	ldr	r3, [r7, #16]
 8000a8e:	1ad3      	subs	r3, r2, r3
 8000a90:	2b02      	cmp	r3, #2
 8000a92:	d903      	bls.n	8000a9c <HAL_RCC_OscConfig+0x284>
 8000a94:	2303      	movs	r3, #3
 8000a96:	e15c      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000a98:	40023800 	.word	0x40023800
 8000a9c:	4b91      	ldr	r3, [pc, #580]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000a9e:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8000aa0:	f003 0302 	and.w	r3, r3, #2
 8000aa4:	2b00      	cmp	r3, #0
 8000aa6:	d1ee      	bne.n	8000a86 <HAL_RCC_OscConfig+0x26e>
 8000aa8:	687b      	ldr	r3, [r7, #4]
 8000aaa:	681b      	ldr	r3, [r3, #0]
 8000aac:	f003 0304 	and.w	r3, r3, #4
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	f000 80a4 	beq.w	8000bfe <HAL_RCC_OscConfig+0x3e6>
 8000ab6:	4b8b      	ldr	r3, [pc, #556]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000ab8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000aba:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000abe:	2b00      	cmp	r3, #0
 8000ac0:	d10d      	bne.n	8000ade <HAL_RCC_OscConfig+0x2c6>
 8000ac2:	4b88      	ldr	r3, [pc, #544]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000ac4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000ac6:	4a87      	ldr	r2, [pc, #540]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000ac8:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8000acc:	6413      	str	r3, [r2, #64]	@ 0x40
 8000ace:	4b85      	ldr	r3, [pc, #532]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000ad0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000ad2:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8000ad6:	60bb      	str	r3, [r7, #8]
 8000ad8:	68bb      	ldr	r3, [r7, #8]
 8000ada:	2301      	movs	r3, #1
 8000adc:	75fb      	strb	r3, [r7, #23]
 8000ade:	4b82      	ldr	r3, [pc, #520]	@ (8000ce8 <HAL_RCC_OscConfig+0x4d0>)
 8000ae0:	681b      	ldr	r3, [r3, #0]
 8000ae2:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8000ae6:	2b00      	cmp	r3, #0
 8000ae8:	d118      	bne.n	8000b1c <HAL_RCC_OscConfig+0x304>
 8000aea:	4b7f      	ldr	r3, [pc, #508]	@ (8000ce8 <HAL_RCC_OscConfig+0x4d0>)
 8000aec:	681b      	ldr	r3, [r3, #0]
 8000aee:	4a7e      	ldr	r2, [pc, #504]	@ (8000ce8 <HAL_RCC_OscConfig+0x4d0>)
 8000af0:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8000af4:	6013      	str	r3, [r2, #0]
 8000af6:	f001 fd89 	bl	800260c <HAL_GetTick>
 8000afa:	6138      	str	r0, [r7, #16]
 8000afc:	e008      	b.n	8000b10 <HAL_RCC_OscConfig+0x2f8>
 8000afe:	f001 fd85 	bl	800260c <HAL_GetTick>
 8000b02:	4602      	mov	r2, r0
 8000b04:	693b      	ldr	r3, [r7, #16]
 8000b06:	1ad3      	subs	r3, r2, r3
 8000b08:	2b64      	cmp	r3, #100	@ 0x64
 8000b0a:	d901      	bls.n	8000b10 <HAL_RCC_OscConfig+0x2f8>
 8000b0c:	2303      	movs	r3, #3
 8000b0e:	e120      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000b10:	4b75      	ldr	r3, [pc, #468]	@ (8000ce8 <HAL_RCC_OscConfig+0x4d0>)
 8000b12:	681b      	ldr	r3, [r3, #0]
 8000b14:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8000b18:	2b00      	cmp	r3, #0
 8000b1a:	d0f0      	beq.n	8000afe <HAL_RCC_OscConfig+0x2e6>
 8000b1c:	687b      	ldr	r3, [r7, #4]
 8000b1e:	689b      	ldr	r3, [r3, #8]
 8000b20:	2b01      	cmp	r3, #1
 8000b22:	d106      	bne.n	8000b32 <HAL_RCC_OscConfig+0x31a>
 8000b24:	4b6f      	ldr	r3, [pc, #444]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b26:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b28:	4a6e      	ldr	r2, [pc, #440]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b2a:	f043 0301 	orr.w	r3, r3, #1
 8000b2e:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b30:	e02d      	b.n	8000b8e <HAL_RCC_OscConfig+0x376>
 8000b32:	687b      	ldr	r3, [r7, #4]
 8000b34:	689b      	ldr	r3, [r3, #8]
 8000b36:	2b00      	cmp	r3, #0
 8000b38:	d10c      	bne.n	8000b54 <HAL_RCC_OscConfig+0x33c>
 8000b3a:	4b6a      	ldr	r3, [pc, #424]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b3c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b3e:	4a69      	ldr	r2, [pc, #420]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b40:	f023 0301 	bic.w	r3, r3, #1
 8000b44:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b46:	4b67      	ldr	r3, [pc, #412]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b48:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b4a:	4a66      	ldr	r2, [pc, #408]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b4c:	f023 0304 	bic.w	r3, r3, #4
 8000b50:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b52:	e01c      	b.n	8000b8e <HAL_RCC_OscConfig+0x376>
 8000b54:	687b      	ldr	r3, [r7, #4]
 8000b56:	689b      	ldr	r3, [r3, #8]
 8000b58:	2b05      	cmp	r3, #5
 8000b5a:	d10c      	bne.n	8000b76 <HAL_RCC_OscConfig+0x35e>
 8000b5c:	4b61      	ldr	r3, [pc, #388]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b5e:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b60:	4a60      	ldr	r2, [pc, #384]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b62:	f043 0304 	orr.w	r3, r3, #4
 8000b66:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b68:	4b5e      	ldr	r3, [pc, #376]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b6a:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b6c:	4a5d      	ldr	r2, [pc, #372]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b6e:	f043 0301 	orr.w	r3, r3, #1
 8000b72:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b74:	e00b      	b.n	8000b8e <HAL_RCC_OscConfig+0x376>
 8000b76:	4b5b      	ldr	r3, [pc, #364]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b78:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b7a:	4a5a      	ldr	r2, [pc, #360]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b7c:	f023 0301 	bic.w	r3, r3, #1
 8000b80:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b82:	4b58      	ldr	r3, [pc, #352]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b84:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000b86:	4a57      	ldr	r2, [pc, #348]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000b88:	f023 0304 	bic.w	r3, r3, #4
 8000b8c:	6713      	str	r3, [r2, #112]	@ 0x70
 8000b8e:	687b      	ldr	r3, [r7, #4]
 8000b90:	689b      	ldr	r3, [r3, #8]
 8000b92:	2b00      	cmp	r3, #0
 8000b94:	d015      	beq.n	8000bc2 <HAL_RCC_OscConfig+0x3aa>
 8000b96:	f001 fd39 	bl	800260c <HAL_GetTick>
 8000b9a:	6138      	str	r0, [r7, #16]
 8000b9c:	e00a      	b.n	8000bb4 <HAL_RCC_OscConfig+0x39c>
 8000b9e:	f001 fd35 	bl	800260c <HAL_GetTick>
 8000ba2:	4602      	mov	r2, r0
 8000ba4:	693b      	ldr	r3, [r7, #16]
 8000ba6:	1ad3      	subs	r3, r2, r3
 8000ba8:	f241 3288 	movw	r2, #5000	@ 0x1388
 8000bac:	4293      	cmp	r3, r2
 8000bae:	d901      	bls.n	8000bb4 <HAL_RCC_OscConfig+0x39c>
 8000bb0:	2303      	movs	r3, #3
 8000bb2:	e0ce      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000bb4:	4b4b      	ldr	r3, [pc, #300]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000bb6:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000bb8:	f003 0302 	and.w	r3, r3, #2
 8000bbc:	2b00      	cmp	r3, #0
 8000bbe:	d0ee      	beq.n	8000b9e <HAL_RCC_OscConfig+0x386>
 8000bc0:	e014      	b.n	8000bec <HAL_RCC_OscConfig+0x3d4>
 8000bc2:	f001 fd23 	bl	800260c <HAL_GetTick>
 8000bc6:	6138      	str	r0, [r7, #16]
 8000bc8:	e00a      	b.n	8000be0 <HAL_RCC_OscConfig+0x3c8>
 8000bca:	f001 fd1f 	bl	800260c <HAL_GetTick>
 8000bce:	4602      	mov	r2, r0
 8000bd0:	693b      	ldr	r3, [r7, #16]
 8000bd2:	1ad3      	subs	r3, r2, r3
 8000bd4:	f241 3288 	movw	r2, #5000	@ 0x1388
 8000bd8:	4293      	cmp	r3, r2
 8000bda:	d901      	bls.n	8000be0 <HAL_RCC_OscConfig+0x3c8>
 8000bdc:	2303      	movs	r3, #3
 8000bde:	e0b8      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000be0:	4b40      	ldr	r3, [pc, #256]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000be2:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8000be4:	f003 0302 	and.w	r3, r3, #2
 8000be8:	2b00      	cmp	r3, #0
 8000bea:	d1ee      	bne.n	8000bca <HAL_RCC_OscConfig+0x3b2>
 8000bec:	7dfb      	ldrb	r3, [r7, #23]
 8000bee:	2b01      	cmp	r3, #1
 8000bf0:	d105      	bne.n	8000bfe <HAL_RCC_OscConfig+0x3e6>
 8000bf2:	4b3c      	ldr	r3, [pc, #240]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000bf4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8000bf6:	4a3b      	ldr	r2, [pc, #236]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000bf8:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8000bfc:	6413      	str	r3, [r2, #64]	@ 0x40
 8000bfe:	687b      	ldr	r3, [r7, #4]
 8000c00:	699b      	ldr	r3, [r3, #24]
 8000c02:	2b00      	cmp	r3, #0
 8000c04:	f000 80a4 	beq.w	8000d50 <HAL_RCC_OscConfig+0x538>
 8000c08:	4b36      	ldr	r3, [pc, #216]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c0a:	689b      	ldr	r3, [r3, #8]
 8000c0c:	f003 030c 	and.w	r3, r3, #12
 8000c10:	2b08      	cmp	r3, #8
 8000c12:	d06b      	beq.n	8000cec <HAL_RCC_OscConfig+0x4d4>
 8000c14:	687b      	ldr	r3, [r7, #4]
 8000c16:	699b      	ldr	r3, [r3, #24]
 8000c18:	2b02      	cmp	r3, #2
 8000c1a:	d149      	bne.n	8000cb0 <HAL_RCC_OscConfig+0x498>
 8000c1c:	4b31      	ldr	r3, [pc, #196]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c1e:	681b      	ldr	r3, [r3, #0]
 8000c20:	4a30      	ldr	r2, [pc, #192]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c22:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8000c26:	6013      	str	r3, [r2, #0]
 8000c28:	f001 fcf0 	bl	800260c <HAL_GetTick>
 8000c2c:	6138      	str	r0, [r7, #16]
 8000c2e:	e008      	b.n	8000c42 <HAL_RCC_OscConfig+0x42a>
 8000c30:	f001 fcec 	bl	800260c <HAL_GetTick>
 8000c34:	4602      	mov	r2, r0
 8000c36:	693b      	ldr	r3, [r7, #16]
 8000c38:	1ad3      	subs	r3, r2, r3
 8000c3a:	2b02      	cmp	r3, #2
 8000c3c:	d901      	bls.n	8000c42 <HAL_RCC_OscConfig+0x42a>
 8000c3e:	2303      	movs	r3, #3
 8000c40:	e087      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000c42:	4b28      	ldr	r3, [pc, #160]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c44:	681b      	ldr	r3, [r3, #0]
 8000c46:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8000c4a:	2b00      	cmp	r3, #0
 8000c4c:	d1f0      	bne.n	8000c30 <HAL_RCC_OscConfig+0x418>
 8000c4e:	687b      	ldr	r3, [r7, #4]
 8000c50:	69da      	ldr	r2, [r3, #28]
 8000c52:	687b      	ldr	r3, [r7, #4]
 8000c54:	6a1b      	ldr	r3, [r3, #32]
 8000c56:	431a      	orrs	r2, r3
 8000c58:	687b      	ldr	r3, [r7, #4]
 8000c5a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8000c5c:	019b      	lsls	r3, r3, #6
 8000c5e:	431a      	orrs	r2, r3
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8000c64:	085b      	lsrs	r3, r3, #1
 8000c66:	3b01      	subs	r3, #1
 8000c68:	041b      	lsls	r3, r3, #16
 8000c6a:	431a      	orrs	r2, r3
 8000c6c:	687b      	ldr	r3, [r7, #4]
 8000c6e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8000c70:	061b      	lsls	r3, r3, #24
 8000c72:	4313      	orrs	r3, r2
 8000c74:	4a1b      	ldr	r2, [pc, #108]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c76:	f043 5300 	orr.w	r3, r3, #536870912	@ 0x20000000
 8000c7a:	6053      	str	r3, [r2, #4]
 8000c7c:	4b19      	ldr	r3, [pc, #100]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c7e:	681b      	ldr	r3, [r3, #0]
 8000c80:	4a18      	ldr	r2, [pc, #96]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000c82:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8000c86:	6013      	str	r3, [r2, #0]
 8000c88:	f001 fcc0 	bl	800260c <HAL_GetTick>
 8000c8c:	6138      	str	r0, [r7, #16]
 8000c8e:	e008      	b.n	8000ca2 <HAL_RCC_OscConfig+0x48a>
 8000c90:	f001 fcbc 	bl	800260c <HAL_GetTick>
 8000c94:	4602      	mov	r2, r0
 8000c96:	693b      	ldr	r3, [r7, #16]
 8000c98:	1ad3      	subs	r3, r2, r3
 8000c9a:	2b02      	cmp	r3, #2
 8000c9c:	d901      	bls.n	8000ca2 <HAL_RCC_OscConfig+0x48a>
 8000c9e:	2303      	movs	r3, #3
 8000ca0:	e057      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000ca2:	4b10      	ldr	r3, [pc, #64]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000ca4:	681b      	ldr	r3, [r3, #0]
 8000ca6:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8000caa:	2b00      	cmp	r3, #0
 8000cac:	d0f0      	beq.n	8000c90 <HAL_RCC_OscConfig+0x478>
 8000cae:	e04f      	b.n	8000d50 <HAL_RCC_OscConfig+0x538>
 8000cb0:	4b0c      	ldr	r3, [pc, #48]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000cb2:	681b      	ldr	r3, [r3, #0]
 8000cb4:	4a0b      	ldr	r2, [pc, #44]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000cb6:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8000cba:	6013      	str	r3, [r2, #0]
 8000cbc:	f001 fca6 	bl	800260c <HAL_GetTick>
 8000cc0:	6138      	str	r0, [r7, #16]
 8000cc2:	e008      	b.n	8000cd6 <HAL_RCC_OscConfig+0x4be>
 8000cc4:	f001 fca2 	bl	800260c <HAL_GetTick>
 8000cc8:	4602      	mov	r2, r0
 8000cca:	693b      	ldr	r3, [r7, #16]
 8000ccc:	1ad3      	subs	r3, r2, r3
 8000cce:	2b02      	cmp	r3, #2
 8000cd0:	d901      	bls.n	8000cd6 <HAL_RCC_OscConfig+0x4be>
 8000cd2:	2303      	movs	r3, #3
 8000cd4:	e03d      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000cd6:	4b03      	ldr	r3, [pc, #12]	@ (8000ce4 <HAL_RCC_OscConfig+0x4cc>)
 8000cd8:	681b      	ldr	r3, [r3, #0]
 8000cda:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8000cde:	2b00      	cmp	r3, #0
 8000ce0:	d1f0      	bne.n	8000cc4 <HAL_RCC_OscConfig+0x4ac>
 8000ce2:	e035      	b.n	8000d50 <HAL_RCC_OscConfig+0x538>
 8000ce4:	40023800 	.word	0x40023800
 8000ce8:	40007000 	.word	0x40007000
 8000cec:	4b1b      	ldr	r3, [pc, #108]	@ (8000d5c <HAL_RCC_OscConfig+0x544>)
 8000cee:	685b      	ldr	r3, [r3, #4]
 8000cf0:	60fb      	str	r3, [r7, #12]
 8000cf2:	687b      	ldr	r3, [r7, #4]
 8000cf4:	699b      	ldr	r3, [r3, #24]
 8000cf6:	2b01      	cmp	r3, #1
 8000cf8:	d028      	beq.n	8000d4c <HAL_RCC_OscConfig+0x534>
 8000cfa:	68fb      	ldr	r3, [r7, #12]
 8000cfc:	f403 0280 	and.w	r2, r3, #4194304	@ 0x400000
 8000d00:	687b      	ldr	r3, [r7, #4]
 8000d02:	69db      	ldr	r3, [r3, #28]
 8000d04:	429a      	cmp	r2, r3
 8000d06:	d121      	bne.n	8000d4c <HAL_RCC_OscConfig+0x534>
 8000d08:	68fb      	ldr	r3, [r7, #12]
 8000d0a:	f003 023f 	and.w	r2, r3, #63	@ 0x3f
 8000d0e:	687b      	ldr	r3, [r7, #4]
 8000d10:	6a1b      	ldr	r3, [r3, #32]
 8000d12:	429a      	cmp	r2, r3
 8000d14:	d11a      	bne.n	8000d4c <HAL_RCC_OscConfig+0x534>
 8000d16:	68fa      	ldr	r2, [r7, #12]
 8000d18:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 8000d1c:	4013      	ands	r3, r2
 8000d1e:	687a      	ldr	r2, [r7, #4]
 8000d20:	6a52      	ldr	r2, [r2, #36]	@ 0x24
 8000d22:	0192      	lsls	r2, r2, #6
 8000d24:	4293      	cmp	r3, r2
 8000d26:	d111      	bne.n	8000d4c <HAL_RCC_OscConfig+0x534>
 8000d28:	68fb      	ldr	r3, [r7, #12]
 8000d2a:	f403 3240 	and.w	r2, r3, #196608	@ 0x30000
 8000d2e:	687b      	ldr	r3, [r7, #4]
 8000d30:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8000d32:	085b      	lsrs	r3, r3, #1
 8000d34:	3b01      	subs	r3, #1
 8000d36:	041b      	lsls	r3, r3, #16
 8000d38:	429a      	cmp	r2, r3
 8000d3a:	d107      	bne.n	8000d4c <HAL_RCC_OscConfig+0x534>
 8000d3c:	68fb      	ldr	r3, [r7, #12]
 8000d3e:	f003 6270 	and.w	r2, r3, #251658240	@ 0xf000000
 8000d42:	687b      	ldr	r3, [r7, #4]
 8000d44:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8000d46:	061b      	lsls	r3, r3, #24
 8000d48:	429a      	cmp	r2, r3
 8000d4a:	d001      	beq.n	8000d50 <HAL_RCC_OscConfig+0x538>
 8000d4c:	2301      	movs	r3, #1
 8000d4e:	e000      	b.n	8000d52 <HAL_RCC_OscConfig+0x53a>
 8000d50:	2300      	movs	r3, #0
 8000d52:	4618      	mov	r0, r3
 8000d54:	3718      	adds	r7, #24
 8000d56:	46bd      	mov	sp, r7
 8000d58:	bd80      	pop	{r7, pc}
 8000d5a:	bf00      	nop
 8000d5c:	40023800 	.word	0x40023800

08000d60 <HAL_RCC_ClockConfig>:
 8000d60:	b580      	push	{r7, lr}
 8000d62:	b084      	sub	sp, #16
 8000d64:	af00      	add	r7, sp, #0
 8000d66:	6078      	str	r0, [r7, #4]
 8000d68:	6039      	str	r1, [r7, #0]
 8000d6a:	2300      	movs	r3, #0
 8000d6c:	60fb      	str	r3, [r7, #12]
 8000d6e:	687b      	ldr	r3, [r7, #4]
 8000d70:	2b00      	cmp	r3, #0
 8000d72:	d101      	bne.n	8000d78 <HAL_RCC_ClockConfig+0x18>
 8000d74:	2301      	movs	r3, #1
 8000d76:	e0d0      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000d78:	4b6a      	ldr	r3, [pc, #424]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000d7a:	681b      	ldr	r3, [r3, #0]
 8000d7c:	f003 030f 	and.w	r3, r3, #15
 8000d80:	683a      	ldr	r2, [r7, #0]
 8000d82:	429a      	cmp	r2, r3
 8000d84:	d910      	bls.n	8000da8 <HAL_RCC_ClockConfig+0x48>
 8000d86:	4b67      	ldr	r3, [pc, #412]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000d88:	681b      	ldr	r3, [r3, #0]
 8000d8a:	f023 020f 	bic.w	r2, r3, #15
 8000d8e:	4965      	ldr	r1, [pc, #404]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000d90:	683b      	ldr	r3, [r7, #0]
 8000d92:	4313      	orrs	r3, r2
 8000d94:	600b      	str	r3, [r1, #0]
 8000d96:	4b63      	ldr	r3, [pc, #396]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000d98:	681b      	ldr	r3, [r3, #0]
 8000d9a:	f003 030f 	and.w	r3, r3, #15
 8000d9e:	683a      	ldr	r2, [r7, #0]
 8000da0:	429a      	cmp	r2, r3
 8000da2:	d001      	beq.n	8000da8 <HAL_RCC_ClockConfig+0x48>
 8000da4:	2301      	movs	r3, #1
 8000da6:	e0b8      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000da8:	687b      	ldr	r3, [r7, #4]
 8000daa:	681b      	ldr	r3, [r3, #0]
 8000dac:	f003 0302 	and.w	r3, r3, #2
 8000db0:	2b00      	cmp	r3, #0
 8000db2:	d020      	beq.n	8000df6 <HAL_RCC_ClockConfig+0x96>
 8000db4:	687b      	ldr	r3, [r7, #4]
 8000db6:	681b      	ldr	r3, [r3, #0]
 8000db8:	f003 0304 	and.w	r3, r3, #4
 8000dbc:	2b00      	cmp	r3, #0
 8000dbe:	d005      	beq.n	8000dcc <HAL_RCC_ClockConfig+0x6c>
 8000dc0:	4b59      	ldr	r3, [pc, #356]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000dc2:	689b      	ldr	r3, [r3, #8]
 8000dc4:	4a58      	ldr	r2, [pc, #352]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000dc6:	f443 53e0 	orr.w	r3, r3, #7168	@ 0x1c00
 8000dca:	6093      	str	r3, [r2, #8]
 8000dcc:	687b      	ldr	r3, [r7, #4]
 8000dce:	681b      	ldr	r3, [r3, #0]
 8000dd0:	f003 0308 	and.w	r3, r3, #8
 8000dd4:	2b00      	cmp	r3, #0
 8000dd6:	d005      	beq.n	8000de4 <HAL_RCC_ClockConfig+0x84>
 8000dd8:	4b53      	ldr	r3, [pc, #332]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000dda:	689b      	ldr	r3, [r3, #8]
 8000ddc:	4a52      	ldr	r2, [pc, #328]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000dde:	f443 4360 	orr.w	r3, r3, #57344	@ 0xe000
 8000de2:	6093      	str	r3, [r2, #8]
 8000de4:	4b50      	ldr	r3, [pc, #320]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000de6:	689b      	ldr	r3, [r3, #8]
 8000de8:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8000dec:	687b      	ldr	r3, [r7, #4]
 8000dee:	689b      	ldr	r3, [r3, #8]
 8000df0:	494d      	ldr	r1, [pc, #308]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000df2:	4313      	orrs	r3, r2
 8000df4:	608b      	str	r3, [r1, #8]
 8000df6:	687b      	ldr	r3, [r7, #4]
 8000df8:	681b      	ldr	r3, [r3, #0]
 8000dfa:	f003 0301 	and.w	r3, r3, #1
 8000dfe:	2b00      	cmp	r3, #0
 8000e00:	d040      	beq.n	8000e84 <HAL_RCC_ClockConfig+0x124>
 8000e02:	687b      	ldr	r3, [r7, #4]
 8000e04:	685b      	ldr	r3, [r3, #4]
 8000e06:	2b01      	cmp	r3, #1
 8000e08:	d107      	bne.n	8000e1a <HAL_RCC_ClockConfig+0xba>
 8000e0a:	4b47      	ldr	r3, [pc, #284]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e0c:	681b      	ldr	r3, [r3, #0]
 8000e0e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8000e12:	2b00      	cmp	r3, #0
 8000e14:	d115      	bne.n	8000e42 <HAL_RCC_ClockConfig+0xe2>
 8000e16:	2301      	movs	r3, #1
 8000e18:	e07f      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000e1a:	687b      	ldr	r3, [r7, #4]
 8000e1c:	685b      	ldr	r3, [r3, #4]
 8000e1e:	2b02      	cmp	r3, #2
 8000e20:	d107      	bne.n	8000e32 <HAL_RCC_ClockConfig+0xd2>
 8000e22:	4b41      	ldr	r3, [pc, #260]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e24:	681b      	ldr	r3, [r3, #0]
 8000e26:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8000e2a:	2b00      	cmp	r3, #0
 8000e2c:	d109      	bne.n	8000e42 <HAL_RCC_ClockConfig+0xe2>
 8000e2e:	2301      	movs	r3, #1
 8000e30:	e073      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000e32:	4b3d      	ldr	r3, [pc, #244]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e34:	681b      	ldr	r3, [r3, #0]
 8000e36:	f003 0302 	and.w	r3, r3, #2
 8000e3a:	2b00      	cmp	r3, #0
 8000e3c:	d101      	bne.n	8000e42 <HAL_RCC_ClockConfig+0xe2>
 8000e3e:	2301      	movs	r3, #1
 8000e40:	e06b      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000e42:	4b39      	ldr	r3, [pc, #228]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e44:	689b      	ldr	r3, [r3, #8]
 8000e46:	f023 0203 	bic.w	r2, r3, #3
 8000e4a:	687b      	ldr	r3, [r7, #4]
 8000e4c:	685b      	ldr	r3, [r3, #4]
 8000e4e:	4936      	ldr	r1, [pc, #216]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e50:	4313      	orrs	r3, r2
 8000e52:	608b      	str	r3, [r1, #8]
 8000e54:	f001 fbda 	bl	800260c <HAL_GetTick>
 8000e58:	60f8      	str	r0, [r7, #12]
 8000e5a:	e00a      	b.n	8000e72 <HAL_RCC_ClockConfig+0x112>
 8000e5c:	f001 fbd6 	bl	800260c <HAL_GetTick>
 8000e60:	4602      	mov	r2, r0
 8000e62:	68fb      	ldr	r3, [r7, #12]
 8000e64:	1ad3      	subs	r3, r2, r3
 8000e66:	f241 3288 	movw	r2, #5000	@ 0x1388
 8000e6a:	4293      	cmp	r3, r2
 8000e6c:	d901      	bls.n	8000e72 <HAL_RCC_ClockConfig+0x112>
 8000e6e:	2303      	movs	r3, #3
 8000e70:	e053      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000e72:	4b2d      	ldr	r3, [pc, #180]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000e74:	689b      	ldr	r3, [r3, #8]
 8000e76:	f003 020c 	and.w	r2, r3, #12
 8000e7a:	687b      	ldr	r3, [r7, #4]
 8000e7c:	685b      	ldr	r3, [r3, #4]
 8000e7e:	009b      	lsls	r3, r3, #2
 8000e80:	429a      	cmp	r2, r3
 8000e82:	d1eb      	bne.n	8000e5c <HAL_RCC_ClockConfig+0xfc>
 8000e84:	4b27      	ldr	r3, [pc, #156]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000e86:	681b      	ldr	r3, [r3, #0]
 8000e88:	f003 030f 	and.w	r3, r3, #15
 8000e8c:	683a      	ldr	r2, [r7, #0]
 8000e8e:	429a      	cmp	r2, r3
 8000e90:	d210      	bcs.n	8000eb4 <HAL_RCC_ClockConfig+0x154>
 8000e92:	4b24      	ldr	r3, [pc, #144]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000e94:	681b      	ldr	r3, [r3, #0]
 8000e96:	f023 020f 	bic.w	r2, r3, #15
 8000e9a:	4922      	ldr	r1, [pc, #136]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000e9c:	683b      	ldr	r3, [r7, #0]
 8000e9e:	4313      	orrs	r3, r2
 8000ea0:	600b      	str	r3, [r1, #0]
 8000ea2:	4b20      	ldr	r3, [pc, #128]	@ (8000f24 <HAL_RCC_ClockConfig+0x1c4>)
 8000ea4:	681b      	ldr	r3, [r3, #0]
 8000ea6:	f003 030f 	and.w	r3, r3, #15
 8000eaa:	683a      	ldr	r2, [r7, #0]
 8000eac:	429a      	cmp	r2, r3
 8000eae:	d001      	beq.n	8000eb4 <HAL_RCC_ClockConfig+0x154>
 8000eb0:	2301      	movs	r3, #1
 8000eb2:	e032      	b.n	8000f1a <HAL_RCC_ClockConfig+0x1ba>
 8000eb4:	687b      	ldr	r3, [r7, #4]
 8000eb6:	681b      	ldr	r3, [r3, #0]
 8000eb8:	f003 0304 	and.w	r3, r3, #4
 8000ebc:	2b00      	cmp	r3, #0
 8000ebe:	d008      	beq.n	8000ed2 <HAL_RCC_ClockConfig+0x172>
 8000ec0:	4b19      	ldr	r3, [pc, #100]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000ec2:	689b      	ldr	r3, [r3, #8]
 8000ec4:	f423 52e0 	bic.w	r2, r3, #7168	@ 0x1c00
 8000ec8:	687b      	ldr	r3, [r7, #4]
 8000eca:	68db      	ldr	r3, [r3, #12]
 8000ecc:	4916      	ldr	r1, [pc, #88]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000ece:	4313      	orrs	r3, r2
 8000ed0:	608b      	str	r3, [r1, #8]
 8000ed2:	687b      	ldr	r3, [r7, #4]
 8000ed4:	681b      	ldr	r3, [r3, #0]
 8000ed6:	f003 0308 	and.w	r3, r3, #8
 8000eda:	2b00      	cmp	r3, #0
 8000edc:	d009      	beq.n	8000ef2 <HAL_RCC_ClockConfig+0x192>
 8000ede:	4b12      	ldr	r3, [pc, #72]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000ee0:	689b      	ldr	r3, [r3, #8]
 8000ee2:	f423 4260 	bic.w	r2, r3, #57344	@ 0xe000
 8000ee6:	687b      	ldr	r3, [r7, #4]
 8000ee8:	691b      	ldr	r3, [r3, #16]
 8000eea:	00db      	lsls	r3, r3, #3
 8000eec:	490e      	ldr	r1, [pc, #56]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000eee:	4313      	orrs	r3, r2
 8000ef0:	608b      	str	r3, [r1, #8]
 8000ef2:	f000 f821 	bl	8000f38 <HAL_RCC_GetSysClockFreq>
 8000ef6:	4602      	mov	r2, r0
 8000ef8:	4b0b      	ldr	r3, [pc, #44]	@ (8000f28 <HAL_RCC_ClockConfig+0x1c8>)
 8000efa:	689b      	ldr	r3, [r3, #8]
 8000efc:	091b      	lsrs	r3, r3, #4
 8000efe:	f003 030f 	and.w	r3, r3, #15
 8000f02:	490a      	ldr	r1, [pc, #40]	@ (8000f2c <HAL_RCC_ClockConfig+0x1cc>)
 8000f04:	5ccb      	ldrb	r3, [r1, r3]
 8000f06:	fa22 f303 	lsr.w	r3, r2, r3
 8000f0a:	4a09      	ldr	r2, [pc, #36]	@ (8000f30 <HAL_RCC_ClockConfig+0x1d0>)
 8000f0c:	6013      	str	r3, [r2, #0]
 8000f0e:	4b09      	ldr	r3, [pc, #36]	@ (8000f34 <HAL_RCC_ClockConfig+0x1d4>)
 8000f10:	681b      	ldr	r3, [r3, #0]
 8000f12:	4618      	mov	r0, r3
 8000f14:	f001 fb36 	bl	8002584 <HAL_InitTick>
 8000f18:	2300      	movs	r3, #0
 8000f1a:	4618      	mov	r0, r3
 8000f1c:	3710      	adds	r7, #16
 8000f1e:	46bd      	mov	sp, r7
 8000f20:	bd80      	pop	{r7, pc}
 8000f22:	bf00      	nop
 8000f24:	40023c00 	.word	0x40023c00
 8000f28:	40023800 	.word	0x40023800
 8000f2c:	0800da40 	.word	0x0800da40
 8000f30:	20000000 	.word	0x20000000
 8000f34:	20000004 	.word	0x20000004

08000f38 <HAL_RCC_GetSysClockFreq>:
 8000f38:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8000f3c:	b094      	sub	sp, #80	@ 0x50
 8000f3e:	af00      	add	r7, sp, #0
 8000f40:	2300      	movs	r3, #0
 8000f42:	647b      	str	r3, [r7, #68]	@ 0x44
 8000f44:	2300      	movs	r3, #0
 8000f46:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8000f48:	2300      	movs	r3, #0
 8000f4a:	643b      	str	r3, [r7, #64]	@ 0x40
 8000f4c:	2300      	movs	r3, #0
 8000f4e:	64bb      	str	r3, [r7, #72]	@ 0x48
 8000f50:	4b79      	ldr	r3, [pc, #484]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 8000f52:	689b      	ldr	r3, [r3, #8]
 8000f54:	f003 030c 	and.w	r3, r3, #12
 8000f58:	2b08      	cmp	r3, #8
 8000f5a:	d00d      	beq.n	8000f78 <HAL_RCC_GetSysClockFreq+0x40>
 8000f5c:	2b08      	cmp	r3, #8
 8000f5e:	f200 80e1 	bhi.w	8001124 <HAL_RCC_GetSysClockFreq+0x1ec>
 8000f62:	2b00      	cmp	r3, #0
 8000f64:	d002      	beq.n	8000f6c <HAL_RCC_GetSysClockFreq+0x34>
 8000f66:	2b04      	cmp	r3, #4
 8000f68:	d003      	beq.n	8000f72 <HAL_RCC_GetSysClockFreq+0x3a>
 8000f6a:	e0db      	b.n	8001124 <HAL_RCC_GetSysClockFreq+0x1ec>
 8000f6c:	4b73      	ldr	r3, [pc, #460]	@ (800113c <HAL_RCC_GetSysClockFreq+0x204>)
 8000f6e:	64bb      	str	r3, [r7, #72]	@ 0x48
 8000f70:	e0db      	b.n	800112a <HAL_RCC_GetSysClockFreq+0x1f2>
 8000f72:	4b73      	ldr	r3, [pc, #460]	@ (8001140 <HAL_RCC_GetSysClockFreq+0x208>)
 8000f74:	64bb      	str	r3, [r7, #72]	@ 0x48
 8000f76:	e0d8      	b.n	800112a <HAL_RCC_GetSysClockFreq+0x1f2>
 8000f78:	4b6f      	ldr	r3, [pc, #444]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 8000f7a:	685b      	ldr	r3, [r3, #4]
 8000f7c:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 8000f80:	647b      	str	r3, [r7, #68]	@ 0x44
 8000f82:	4b6d      	ldr	r3, [pc, #436]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 8000f84:	685b      	ldr	r3, [r3, #4]
 8000f86:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8000f8a:	2b00      	cmp	r3, #0
 8000f8c:	d063      	beq.n	8001056 <HAL_RCC_GetSysClockFreq+0x11e>
 8000f8e:	4b6a      	ldr	r3, [pc, #424]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 8000f90:	685b      	ldr	r3, [r3, #4]
 8000f92:	099b      	lsrs	r3, r3, #6
 8000f94:	2200      	movs	r2, #0
 8000f96:	63bb      	str	r3, [r7, #56]	@ 0x38
 8000f98:	63fa      	str	r2, [r7, #60]	@ 0x3c
 8000f9a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8000f9c:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8000fa0:	633b      	str	r3, [r7, #48]	@ 0x30
 8000fa2:	2300      	movs	r3, #0
 8000fa4:	637b      	str	r3, [r7, #52]	@ 0x34
 8000fa6:	e9d7 450c 	ldrd	r4, r5, [r7, #48]	@ 0x30
 8000faa:	4622      	mov	r2, r4
 8000fac:	462b      	mov	r3, r5
 8000fae:	f04f 0000 	mov.w	r0, #0
 8000fb2:	f04f 0100 	mov.w	r1, #0
 8000fb6:	0159      	lsls	r1, r3, #5
 8000fb8:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8000fbc:	0150      	lsls	r0, r2, #5
 8000fbe:	4602      	mov	r2, r0
 8000fc0:	460b      	mov	r3, r1
 8000fc2:	4621      	mov	r1, r4
 8000fc4:	1a51      	subs	r1, r2, r1
 8000fc6:	6139      	str	r1, [r7, #16]
 8000fc8:	4629      	mov	r1, r5
 8000fca:	eb63 0301 	sbc.w	r3, r3, r1
 8000fce:	617b      	str	r3, [r7, #20]
 8000fd0:	f04f 0200 	mov.w	r2, #0
 8000fd4:	f04f 0300 	mov.w	r3, #0
 8000fd8:	e9d7 ab04 	ldrd	sl, fp, [r7, #16]
 8000fdc:	4659      	mov	r1, fp
 8000fde:	018b      	lsls	r3, r1, #6
 8000fe0:	4651      	mov	r1, sl
 8000fe2:	ea43 6391 	orr.w	r3, r3, r1, lsr #26
 8000fe6:	4651      	mov	r1, sl
 8000fe8:	018a      	lsls	r2, r1, #6
 8000fea:	4651      	mov	r1, sl
 8000fec:	ebb2 0801 	subs.w	r8, r2, r1
 8000ff0:	4659      	mov	r1, fp
 8000ff2:	eb63 0901 	sbc.w	r9, r3, r1
 8000ff6:	f04f 0200 	mov.w	r2, #0
 8000ffa:	f04f 0300 	mov.w	r3, #0
 8000ffe:	ea4f 03c9 	mov.w	r3, r9, lsl #3
 8001002:	ea43 7358 	orr.w	r3, r3, r8, lsr #29
 8001006:	ea4f 02c8 	mov.w	r2, r8, lsl #3
 800100a:	4690      	mov	r8, r2
 800100c:	4699      	mov	r9, r3
 800100e:	4623      	mov	r3, r4
 8001010:	eb18 0303 	adds.w	r3, r8, r3
 8001014:	60bb      	str	r3, [r7, #8]
 8001016:	462b      	mov	r3, r5
 8001018:	eb49 0303 	adc.w	r3, r9, r3
 800101c:	60fb      	str	r3, [r7, #12]
 800101e:	f04f 0200 	mov.w	r2, #0
 8001022:	f04f 0300 	mov.w	r3, #0
 8001026:	e9d7 4502 	ldrd	r4, r5, [r7, #8]
 800102a:	4629      	mov	r1, r5
 800102c:	024b      	lsls	r3, r1, #9
 800102e:	4621      	mov	r1, r4
 8001030:	ea43 53d1 	orr.w	r3, r3, r1, lsr #23
 8001034:	4621      	mov	r1, r4
 8001036:	024a      	lsls	r2, r1, #9
 8001038:	4610      	mov	r0, r2
 800103a:	4619      	mov	r1, r3
 800103c:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800103e:	2200      	movs	r2, #0
 8001040:	62bb      	str	r3, [r7, #40]	@ 0x28
 8001042:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8001044:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	@ 0x28
 8001048:	f7ff f8e2 	bl	8000210 <__aeabi_uldivmod>
 800104c:	4602      	mov	r2, r0
 800104e:	460b      	mov	r3, r1
 8001050:	4613      	mov	r3, r2
 8001052:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8001054:	e058      	b.n	8001108 <HAL_RCC_GetSysClockFreq+0x1d0>
 8001056:	4b38      	ldr	r3, [pc, #224]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 8001058:	685b      	ldr	r3, [r3, #4]
 800105a:	099b      	lsrs	r3, r3, #6
 800105c:	2200      	movs	r2, #0
 800105e:	4618      	mov	r0, r3
 8001060:	4611      	mov	r1, r2
 8001062:	f3c0 0308 	ubfx	r3, r0, #0, #9
 8001066:	623b      	str	r3, [r7, #32]
 8001068:	2300      	movs	r3, #0
 800106a:	627b      	str	r3, [r7, #36]	@ 0x24
 800106c:	e9d7 8908 	ldrd	r8, r9, [r7, #32]
 8001070:	4642      	mov	r2, r8
 8001072:	464b      	mov	r3, r9
 8001074:	f04f 0000 	mov.w	r0, #0
 8001078:	f04f 0100 	mov.w	r1, #0
 800107c:	0159      	lsls	r1, r3, #5
 800107e:	ea41 61d2 	orr.w	r1, r1, r2, lsr #27
 8001082:	0150      	lsls	r0, r2, #5
 8001084:	4602      	mov	r2, r0
 8001086:	460b      	mov	r3, r1
 8001088:	4641      	mov	r1, r8
 800108a:	ebb2 0a01 	subs.w	sl, r2, r1
 800108e:	4649      	mov	r1, r9
 8001090:	eb63 0b01 	sbc.w	fp, r3, r1
 8001094:	f04f 0200 	mov.w	r2, #0
 8001098:	f04f 0300 	mov.w	r3, #0
 800109c:	ea4f 138b 	mov.w	r3, fp, lsl #6
 80010a0:	ea43 639a 	orr.w	r3, r3, sl, lsr #26
 80010a4:	ea4f 128a 	mov.w	r2, sl, lsl #6
 80010a8:	ebb2 040a 	subs.w	r4, r2, sl
 80010ac:	eb63 050b 	sbc.w	r5, r3, fp
 80010b0:	f04f 0200 	mov.w	r2, #0
 80010b4:	f04f 0300 	mov.w	r3, #0
 80010b8:	00eb      	lsls	r3, r5, #3
 80010ba:	ea43 7354 	orr.w	r3, r3, r4, lsr #29
 80010be:	00e2      	lsls	r2, r4, #3
 80010c0:	4614      	mov	r4, r2
 80010c2:	461d      	mov	r5, r3
 80010c4:	4643      	mov	r3, r8
 80010c6:	18e3      	adds	r3, r4, r3
 80010c8:	603b      	str	r3, [r7, #0]
 80010ca:	464b      	mov	r3, r9
 80010cc:	eb45 0303 	adc.w	r3, r5, r3
 80010d0:	607b      	str	r3, [r7, #4]
 80010d2:	f04f 0200 	mov.w	r2, #0
 80010d6:	f04f 0300 	mov.w	r3, #0
 80010da:	e9d7 4500 	ldrd	r4, r5, [r7]
 80010de:	4629      	mov	r1, r5
 80010e0:	028b      	lsls	r3, r1, #10
 80010e2:	4621      	mov	r1, r4
 80010e4:	ea43 5391 	orr.w	r3, r3, r1, lsr #22
 80010e8:	4621      	mov	r1, r4
 80010ea:	028a      	lsls	r2, r1, #10
 80010ec:	4610      	mov	r0, r2
 80010ee:	4619      	mov	r1, r3
 80010f0:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 80010f2:	2200      	movs	r2, #0
 80010f4:	61bb      	str	r3, [r7, #24]
 80010f6:	61fa      	str	r2, [r7, #28]
 80010f8:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 80010fc:	f7ff f888 	bl	8000210 <__aeabi_uldivmod>
 8001100:	4602      	mov	r2, r0
 8001102:	460b      	mov	r3, r1
 8001104:	4613      	mov	r3, r2
 8001106:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8001108:	4b0b      	ldr	r3, [pc, #44]	@ (8001138 <HAL_RCC_GetSysClockFreq+0x200>)
 800110a:	685b      	ldr	r3, [r3, #4]
 800110c:	0c1b      	lsrs	r3, r3, #16
 800110e:	f003 0303 	and.w	r3, r3, #3
 8001112:	3301      	adds	r3, #1
 8001114:	005b      	lsls	r3, r3, #1
 8001116:	643b      	str	r3, [r7, #64]	@ 0x40
 8001118:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800111a:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800111c:	fbb2 f3f3 	udiv	r3, r2, r3
 8001120:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001122:	e002      	b.n	800112a <HAL_RCC_GetSysClockFreq+0x1f2>
 8001124:	4b05      	ldr	r3, [pc, #20]	@ (800113c <HAL_RCC_GetSysClockFreq+0x204>)
 8001126:	64bb      	str	r3, [r7, #72]	@ 0x48
 8001128:	bf00      	nop
 800112a:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800112c:	4618      	mov	r0, r3
 800112e:	3750      	adds	r7, #80	@ 0x50
 8001130:	46bd      	mov	sp, r7
 8001132:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
 8001136:	bf00      	nop
 8001138:	40023800 	.word	0x40023800
 800113c:	00f42400 	.word	0x00f42400
 8001140:	007a1200 	.word	0x007a1200

08001144 <HAL_RCC_GetHCLKFreq>:
 8001144:	b480      	push	{r7}
 8001146:	af00      	add	r7, sp, #0
 8001148:	4b03      	ldr	r3, [pc, #12]	@ (8001158 <HAL_RCC_GetHCLKFreq+0x14>)
 800114a:	681b      	ldr	r3, [r3, #0]
 800114c:	4618      	mov	r0, r3
 800114e:	46bd      	mov	sp, r7
 8001150:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001154:	4770      	bx	lr
 8001156:	bf00      	nop
 8001158:	20000000 	.word	0x20000000

0800115c <HAL_RCC_GetPCLK1Freq>:
 800115c:	b580      	push	{r7, lr}
 800115e:	af00      	add	r7, sp, #0
 8001160:	f7ff fff0 	bl	8001144 <HAL_RCC_GetHCLKFreq>
 8001164:	4602      	mov	r2, r0
 8001166:	4b05      	ldr	r3, [pc, #20]	@ (800117c <HAL_RCC_GetPCLK1Freq+0x20>)
 8001168:	689b      	ldr	r3, [r3, #8]
 800116a:	0a9b      	lsrs	r3, r3, #10
 800116c:	f003 0307 	and.w	r3, r3, #7
 8001170:	4903      	ldr	r1, [pc, #12]	@ (8001180 <HAL_RCC_GetPCLK1Freq+0x24>)
 8001172:	5ccb      	ldrb	r3, [r1, r3]
 8001174:	fa22 f303 	lsr.w	r3, r2, r3
 8001178:	4618      	mov	r0, r3
 800117a:	bd80      	pop	{r7, pc}
 800117c:	40023800 	.word	0x40023800
 8001180:	0800da50 	.word	0x0800da50

08001184 <HAL_RCC_GetPCLK2Freq>:
 8001184:	b580      	push	{r7, lr}
 8001186:	af00      	add	r7, sp, #0
 8001188:	f7ff ffdc 	bl	8001144 <HAL_RCC_GetHCLKFreq>
 800118c:	4602      	mov	r2, r0
 800118e:	4b05      	ldr	r3, [pc, #20]	@ (80011a4 <HAL_RCC_GetPCLK2Freq+0x20>)
 8001190:	689b      	ldr	r3, [r3, #8]
 8001192:	0b5b      	lsrs	r3, r3, #13
 8001194:	f003 0307 	and.w	r3, r3, #7
 8001198:	4903      	ldr	r1, [pc, #12]	@ (80011a8 <HAL_RCC_GetPCLK2Freq+0x24>)
 800119a:	5ccb      	ldrb	r3, [r1, r3]
 800119c:	fa22 f303 	lsr.w	r3, r2, r3
 80011a0:	4618      	mov	r0, r3
 80011a2:	bd80      	pop	{r7, pc}
 80011a4:	40023800 	.word	0x40023800
 80011a8:	0800da50 	.word	0x0800da50

080011ac <HAL_RCCEx_PeriphCLKConfig>:
 80011ac:	b580      	push	{r7, lr}
 80011ae:	b088      	sub	sp, #32
 80011b0:	af00      	add	r7, sp, #0
 80011b2:	6078      	str	r0, [r7, #4]
 80011b4:	2300      	movs	r3, #0
 80011b6:	617b      	str	r3, [r7, #20]
 80011b8:	2300      	movs	r3, #0
 80011ba:	613b      	str	r3, [r7, #16]
 80011bc:	2300      	movs	r3, #0
 80011be:	60fb      	str	r3, [r7, #12]
 80011c0:	2300      	movs	r3, #0
 80011c2:	61fb      	str	r3, [r7, #28]
 80011c4:	2300      	movs	r3, #0
 80011c6:	61bb      	str	r3, [r7, #24]
 80011c8:	687b      	ldr	r3, [r7, #4]
 80011ca:	681b      	ldr	r3, [r3, #0]
 80011cc:	f003 0301 	and.w	r3, r3, #1
 80011d0:	2b00      	cmp	r3, #0
 80011d2:	d012      	beq.n	80011fa <HAL_RCCEx_PeriphCLKConfig+0x4e>
 80011d4:	4b69      	ldr	r3, [pc, #420]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80011d6:	689b      	ldr	r3, [r3, #8]
 80011d8:	4a68      	ldr	r2, [pc, #416]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80011da:	f423 0300 	bic.w	r3, r3, #8388608	@ 0x800000
 80011de:	6093      	str	r3, [r2, #8]
 80011e0:	4b66      	ldr	r3, [pc, #408]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80011e2:	689a      	ldr	r2, [r3, #8]
 80011e4:	687b      	ldr	r3, [r7, #4]
 80011e6:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80011e8:	4964      	ldr	r1, [pc, #400]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80011ea:	4313      	orrs	r3, r2
 80011ec:	608b      	str	r3, [r1, #8]
 80011ee:	687b      	ldr	r3, [r7, #4]
 80011f0:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80011f2:	2b00      	cmp	r3, #0
 80011f4:	d101      	bne.n	80011fa <HAL_RCCEx_PeriphCLKConfig+0x4e>
 80011f6:	2301      	movs	r3, #1
 80011f8:	61fb      	str	r3, [r7, #28]
 80011fa:	687b      	ldr	r3, [r7, #4]
 80011fc:	681b      	ldr	r3, [r3, #0]
 80011fe:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 8001202:	2b00      	cmp	r3, #0
 8001204:	d017      	beq.n	8001236 <HAL_RCCEx_PeriphCLKConfig+0x8a>
 8001206:	4b5d      	ldr	r3, [pc, #372]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001208:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 800120c:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 8001210:	687b      	ldr	r3, [r7, #4]
 8001212:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8001214:	4959      	ldr	r1, [pc, #356]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001216:	4313      	orrs	r3, r2
 8001218:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 800121c:	687b      	ldr	r3, [r7, #4]
 800121e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8001220:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 8001224:	d101      	bne.n	800122a <HAL_RCCEx_PeriphCLKConfig+0x7e>
 8001226:	2301      	movs	r3, #1
 8001228:	61fb      	str	r3, [r7, #28]
 800122a:	687b      	ldr	r3, [r7, #4]
 800122c:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800122e:	2b00      	cmp	r3, #0
 8001230:	d101      	bne.n	8001236 <HAL_RCCEx_PeriphCLKConfig+0x8a>
 8001232:	2301      	movs	r3, #1
 8001234:	61bb      	str	r3, [r7, #24]
 8001236:	687b      	ldr	r3, [r7, #4]
 8001238:	681b      	ldr	r3, [r3, #0]
 800123a:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 800123e:	2b00      	cmp	r3, #0
 8001240:	d017      	beq.n	8001272 <HAL_RCCEx_PeriphCLKConfig+0xc6>
 8001242:	4b4e      	ldr	r3, [pc, #312]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001244:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8001248:	f423 0240 	bic.w	r2, r3, #12582912	@ 0xc00000
 800124c:	687b      	ldr	r3, [r7, #4]
 800124e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001250:	494a      	ldr	r1, [pc, #296]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001252:	4313      	orrs	r3, r2
 8001254:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 8001258:	687b      	ldr	r3, [r7, #4]
 800125a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800125c:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 8001260:	d101      	bne.n	8001266 <HAL_RCCEx_PeriphCLKConfig+0xba>
 8001262:	2301      	movs	r3, #1
 8001264:	61fb      	str	r3, [r7, #28]
 8001266:	687b      	ldr	r3, [r7, #4]
 8001268:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800126a:	2b00      	cmp	r3, #0
 800126c:	d101      	bne.n	8001272 <HAL_RCCEx_PeriphCLKConfig+0xc6>
 800126e:	2301      	movs	r3, #1
 8001270:	61bb      	str	r3, [r7, #24]
 8001272:	687b      	ldr	r3, [r7, #4]
 8001274:	681b      	ldr	r3, [r3, #0]
 8001276:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800127a:	2b00      	cmp	r3, #0
 800127c:	d001      	beq.n	8001282 <HAL_RCCEx_PeriphCLKConfig+0xd6>
 800127e:	2301      	movs	r3, #1
 8001280:	61fb      	str	r3, [r7, #28]
 8001282:	687b      	ldr	r3, [r7, #4]
 8001284:	681b      	ldr	r3, [r3, #0]
 8001286:	f003 0320 	and.w	r3, r3, #32
 800128a:	2b00      	cmp	r3, #0
 800128c:	f000 808b 	beq.w	80013a6 <HAL_RCCEx_PeriphCLKConfig+0x1fa>
 8001290:	4b3a      	ldr	r3, [pc, #232]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001292:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001294:	4a39      	ldr	r2, [pc, #228]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001296:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 800129a:	6413      	str	r3, [r2, #64]	@ 0x40
 800129c:	4b37      	ldr	r3, [pc, #220]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 800129e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80012a0:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80012a4:	60bb      	str	r3, [r7, #8]
 80012a6:	68bb      	ldr	r3, [r7, #8]
 80012a8:	4b35      	ldr	r3, [pc, #212]	@ (8001380 <HAL_RCCEx_PeriphCLKConfig+0x1d4>)
 80012aa:	681b      	ldr	r3, [r3, #0]
 80012ac:	4a34      	ldr	r2, [pc, #208]	@ (8001380 <HAL_RCCEx_PeriphCLKConfig+0x1d4>)
 80012ae:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 80012b2:	6013      	str	r3, [r2, #0]
 80012b4:	f001 f9aa 	bl	800260c <HAL_GetTick>
 80012b8:	6178      	str	r0, [r7, #20]
 80012ba:	e008      	b.n	80012ce <HAL_RCCEx_PeriphCLKConfig+0x122>
 80012bc:	f001 f9a6 	bl	800260c <HAL_GetTick>
 80012c0:	4602      	mov	r2, r0
 80012c2:	697b      	ldr	r3, [r7, #20]
 80012c4:	1ad3      	subs	r3, r2, r3
 80012c6:	2b64      	cmp	r3, #100	@ 0x64
 80012c8:	d901      	bls.n	80012ce <HAL_RCCEx_PeriphCLKConfig+0x122>
 80012ca:	2303      	movs	r3, #3
 80012cc:	e357      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 80012ce:	4b2c      	ldr	r3, [pc, #176]	@ (8001380 <HAL_RCCEx_PeriphCLKConfig+0x1d4>)
 80012d0:	681b      	ldr	r3, [r3, #0]
 80012d2:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80012d6:	2b00      	cmp	r3, #0
 80012d8:	d0f0      	beq.n	80012bc <HAL_RCCEx_PeriphCLKConfig+0x110>
 80012da:	4b28      	ldr	r3, [pc, #160]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80012dc:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80012de:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 80012e2:	613b      	str	r3, [r7, #16]
 80012e4:	693b      	ldr	r3, [r7, #16]
 80012e6:	2b00      	cmp	r3, #0
 80012e8:	d035      	beq.n	8001356 <HAL_RCCEx_PeriphCLKConfig+0x1aa>
 80012ea:	687b      	ldr	r3, [r7, #4]
 80012ec:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80012ee:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 80012f2:	693a      	ldr	r2, [r7, #16]
 80012f4:	429a      	cmp	r2, r3
 80012f6:	d02e      	beq.n	8001356 <HAL_RCCEx_PeriphCLKConfig+0x1aa>
 80012f8:	4b20      	ldr	r3, [pc, #128]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 80012fa:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80012fc:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8001300:	613b      	str	r3, [r7, #16]
 8001302:	4b1e      	ldr	r3, [pc, #120]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001304:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001306:	4a1d      	ldr	r2, [pc, #116]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001308:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 800130c:	6713      	str	r3, [r2, #112]	@ 0x70
 800130e:	4b1b      	ldr	r3, [pc, #108]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001310:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001312:	4a1a      	ldr	r2, [pc, #104]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001314:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001318:	6713      	str	r3, [r2, #112]	@ 0x70
 800131a:	4a18      	ldr	r2, [pc, #96]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 800131c:	693b      	ldr	r3, [r7, #16]
 800131e:	6713      	str	r3, [r2, #112]	@ 0x70
 8001320:	4b16      	ldr	r3, [pc, #88]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001322:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001324:	f003 0301 	and.w	r3, r3, #1
 8001328:	2b01      	cmp	r3, #1
 800132a:	d114      	bne.n	8001356 <HAL_RCCEx_PeriphCLKConfig+0x1aa>
 800132c:	f001 f96e 	bl	800260c <HAL_GetTick>
 8001330:	6178      	str	r0, [r7, #20]
 8001332:	e00a      	b.n	800134a <HAL_RCCEx_PeriphCLKConfig+0x19e>
 8001334:	f001 f96a 	bl	800260c <HAL_GetTick>
 8001338:	4602      	mov	r2, r0
 800133a:	697b      	ldr	r3, [r7, #20]
 800133c:	1ad3      	subs	r3, r2, r3
 800133e:	f241 3288 	movw	r2, #5000	@ 0x1388
 8001342:	4293      	cmp	r3, r2
 8001344:	d901      	bls.n	800134a <HAL_RCCEx_PeriphCLKConfig+0x19e>
 8001346:	2303      	movs	r3, #3
 8001348:	e319      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 800134a:	4b0c      	ldr	r3, [pc, #48]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 800134c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 800134e:	f003 0302 	and.w	r3, r3, #2
 8001352:	2b00      	cmp	r3, #0
 8001354:	d0ee      	beq.n	8001334 <HAL_RCCEx_PeriphCLKConfig+0x188>
 8001356:	687b      	ldr	r3, [r7, #4]
 8001358:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800135a:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 800135e:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8001362:	d111      	bne.n	8001388 <HAL_RCCEx_PeriphCLKConfig+0x1dc>
 8001364:	4b05      	ldr	r3, [pc, #20]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001366:	689b      	ldr	r3, [r3, #8]
 8001368:	f423 12f8 	bic.w	r2, r3, #2031616	@ 0x1f0000
 800136c:	687b      	ldr	r3, [r7, #4]
 800136e:	6b19      	ldr	r1, [r3, #48]	@ 0x30
 8001370:	4b04      	ldr	r3, [pc, #16]	@ (8001384 <HAL_RCCEx_PeriphCLKConfig+0x1d8>)
 8001372:	400b      	ands	r3, r1
 8001374:	4901      	ldr	r1, [pc, #4]	@ (800137c <HAL_RCCEx_PeriphCLKConfig+0x1d0>)
 8001376:	4313      	orrs	r3, r2
 8001378:	608b      	str	r3, [r1, #8]
 800137a:	e00b      	b.n	8001394 <HAL_RCCEx_PeriphCLKConfig+0x1e8>
 800137c:	40023800 	.word	0x40023800
 8001380:	40007000 	.word	0x40007000
 8001384:	0ffffcff 	.word	0x0ffffcff
 8001388:	4baa      	ldr	r3, [pc, #680]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800138a:	689b      	ldr	r3, [r3, #8]
 800138c:	4aa9      	ldr	r2, [pc, #676]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800138e:	f423 13f8 	bic.w	r3, r3, #2031616	@ 0x1f0000
 8001392:	6093      	str	r3, [r2, #8]
 8001394:	4ba7      	ldr	r3, [pc, #668]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001396:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
 8001398:	687b      	ldr	r3, [r7, #4]
 800139a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800139c:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80013a0:	49a4      	ldr	r1, [pc, #656]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013a2:	4313      	orrs	r3, r2
 80013a4:	670b      	str	r3, [r1, #112]	@ 0x70
 80013a6:	687b      	ldr	r3, [r7, #4]
 80013a8:	681b      	ldr	r3, [r3, #0]
 80013aa:	f003 0310 	and.w	r3, r3, #16
 80013ae:	2b00      	cmp	r3, #0
 80013b0:	d010      	beq.n	80013d4 <HAL_RCCEx_PeriphCLKConfig+0x228>
 80013b2:	4ba0      	ldr	r3, [pc, #640]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013b4:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 80013b8:	4a9e      	ldr	r2, [pc, #632]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013ba:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 80013be:	f8c2 308c 	str.w	r3, [r2, #140]	@ 0x8c
 80013c2:	4b9c      	ldr	r3, [pc, #624]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013c4:	f8d3 208c 	ldr.w	r2, [r3, #140]	@ 0x8c
 80013c8:	687b      	ldr	r3, [r7, #4]
 80013ca:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80013cc:	4999      	ldr	r1, [pc, #612]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013ce:	4313      	orrs	r3, r2
 80013d0:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 80013d4:	687b      	ldr	r3, [r7, #4]
 80013d6:	681b      	ldr	r3, [r3, #0]
 80013d8:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 80013dc:	2b00      	cmp	r3, #0
 80013de:	d00a      	beq.n	80013f6 <HAL_RCCEx_PeriphCLKConfig+0x24a>
 80013e0:	4b94      	ldr	r3, [pc, #592]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013e2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80013e6:	f423 3240 	bic.w	r2, r3, #196608	@ 0x30000
 80013ea:	687b      	ldr	r3, [r7, #4]
 80013ec:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80013ee:	4991      	ldr	r1, [pc, #580]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80013f0:	4313      	orrs	r3, r2
 80013f2:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80013f6:	687b      	ldr	r3, [r7, #4]
 80013f8:	681b      	ldr	r3, [r3, #0]
 80013fa:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 80013fe:	2b00      	cmp	r3, #0
 8001400:	d00a      	beq.n	8001418 <HAL_RCCEx_PeriphCLKConfig+0x26c>
 8001402:	4b8c      	ldr	r3, [pc, #560]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001404:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8001408:	f423 2240 	bic.w	r2, r3, #786432	@ 0xc0000
 800140c:	687b      	ldr	r3, [r7, #4]
 800140e:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8001410:	4988      	ldr	r1, [pc, #544]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001412:	4313      	orrs	r3, r2
 8001414:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8001418:	687b      	ldr	r3, [r7, #4]
 800141a:	681b      	ldr	r3, [r3, #0]
 800141c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8001420:	2b00      	cmp	r3, #0
 8001422:	d00a      	beq.n	800143a <HAL_RCCEx_PeriphCLKConfig+0x28e>
 8001424:	4b83      	ldr	r3, [pc, #524]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001426:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800142a:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 800142e:	687b      	ldr	r3, [r7, #4]
 8001430:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8001432:	4980      	ldr	r1, [pc, #512]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001434:	4313      	orrs	r3, r2
 8001436:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800143a:	687b      	ldr	r3, [r7, #4]
 800143c:	681b      	ldr	r3, [r3, #0]
 800143e:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001442:	2b00      	cmp	r3, #0
 8001444:	d00a      	beq.n	800145c <HAL_RCCEx_PeriphCLKConfig+0x2b0>
 8001446:	4b7b      	ldr	r3, [pc, #492]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001448:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800144c:	f423 0240 	bic.w	r2, r3, #12582912	@ 0xc00000
 8001450:	687b      	ldr	r3, [r7, #4]
 8001452:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8001454:	4977      	ldr	r1, [pc, #476]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001456:	4313      	orrs	r3, r2
 8001458:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800145c:	687b      	ldr	r3, [r7, #4]
 800145e:	681b      	ldr	r3, [r3, #0]
 8001460:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8001464:	2b00      	cmp	r3, #0
 8001466:	d00a      	beq.n	800147e <HAL_RCCEx_PeriphCLKConfig+0x2d2>
 8001468:	4b72      	ldr	r3, [pc, #456]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800146a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800146e:	f023 0203 	bic.w	r2, r3, #3
 8001472:	687b      	ldr	r3, [r7, #4]
 8001474:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001476:	496f      	ldr	r1, [pc, #444]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001478:	4313      	orrs	r3, r2
 800147a:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800147e:	687b      	ldr	r3, [r7, #4]
 8001480:	681b      	ldr	r3, [r3, #0]
 8001482:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8001486:	2b00      	cmp	r3, #0
 8001488:	d00a      	beq.n	80014a0 <HAL_RCCEx_PeriphCLKConfig+0x2f4>
 800148a:	4b6a      	ldr	r3, [pc, #424]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800148c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8001490:	f023 020c 	bic.w	r2, r3, #12
 8001494:	687b      	ldr	r3, [r7, #4]
 8001496:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8001498:	4966      	ldr	r1, [pc, #408]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800149a:	4313      	orrs	r3, r2
 800149c:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80014a0:	687b      	ldr	r3, [r7, #4]
 80014a2:	681b      	ldr	r3, [r3, #0]
 80014a4:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80014a8:	2b00      	cmp	r3, #0
 80014aa:	d00a      	beq.n	80014c2 <HAL_RCCEx_PeriphCLKConfig+0x316>
 80014ac:	4b61      	ldr	r3, [pc, #388]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80014ae:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80014b2:	f023 0230 	bic.w	r2, r3, #48	@ 0x30
 80014b6:	687b      	ldr	r3, [r7, #4]
 80014b8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80014ba:	495e      	ldr	r1, [pc, #376]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80014bc:	4313      	orrs	r3, r2
 80014be:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80014c2:	687b      	ldr	r3, [r7, #4]
 80014c4:	681b      	ldr	r3, [r3, #0]
 80014c6:	f403 7300 	and.w	r3, r3, #512	@ 0x200
 80014ca:	2b00      	cmp	r3, #0
 80014cc:	d00a      	beq.n	80014e4 <HAL_RCCEx_PeriphCLKConfig+0x338>
 80014ce:	4b59      	ldr	r3, [pc, #356]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80014d0:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80014d4:	f023 02c0 	bic.w	r2, r3, #192	@ 0xc0
 80014d8:	687b      	ldr	r3, [r7, #4]
 80014da:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80014dc:	4955      	ldr	r1, [pc, #340]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80014de:	4313      	orrs	r3, r2
 80014e0:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80014e4:	687b      	ldr	r3, [r7, #4]
 80014e6:	681b      	ldr	r3, [r3, #0]
 80014e8:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80014ec:	2b00      	cmp	r3, #0
 80014ee:	d00a      	beq.n	8001506 <HAL_RCCEx_PeriphCLKConfig+0x35a>
 80014f0:	4b50      	ldr	r3, [pc, #320]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80014f2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80014f6:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 80014fa:	687b      	ldr	r3, [r7, #4]
 80014fc:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80014fe:	494d      	ldr	r1, [pc, #308]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001500:	4313      	orrs	r3, r2
 8001502:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8001506:	687b      	ldr	r3, [r7, #4]
 8001508:	681b      	ldr	r3, [r3, #0]
 800150a:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 800150e:	2b00      	cmp	r3, #0
 8001510:	d00a      	beq.n	8001528 <HAL_RCCEx_PeriphCLKConfig+0x37c>
 8001512:	4b48      	ldr	r3, [pc, #288]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001514:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8001518:	f423 6240 	bic.w	r2, r3, #3072	@ 0xc00
 800151c:	687b      	ldr	r3, [r7, #4]
 800151e:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8001520:	4944      	ldr	r1, [pc, #272]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001522:	4313      	orrs	r3, r2
 8001524:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8001528:	687b      	ldr	r3, [r7, #4]
 800152a:	681b      	ldr	r3, [r3, #0]
 800152c:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 8001530:	2b00      	cmp	r3, #0
 8001532:	d00a      	beq.n	800154a <HAL_RCCEx_PeriphCLKConfig+0x39e>
 8001534:	4b3f      	ldr	r3, [pc, #252]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001536:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800153a:	f423 5240 	bic.w	r2, r3, #12288	@ 0x3000
 800153e:	687b      	ldr	r3, [r7, #4]
 8001540:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8001542:	493c      	ldr	r1, [pc, #240]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001544:	4313      	orrs	r3, r2
 8001546:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800154a:	687b      	ldr	r3, [r7, #4]
 800154c:	681b      	ldr	r3, [r3, #0]
 800154e:	f403 5300 	and.w	r3, r3, #8192	@ 0x2000
 8001552:	2b00      	cmp	r3, #0
 8001554:	d00a      	beq.n	800156c <HAL_RCCEx_PeriphCLKConfig+0x3c0>
 8001556:	4b37      	ldr	r3, [pc, #220]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001558:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800155c:	f423 4240 	bic.w	r2, r3, #49152	@ 0xc000
 8001560:	687b      	ldr	r3, [r7, #4]
 8001562:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8001564:	4933      	ldr	r1, [pc, #204]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001566:	4313      	orrs	r3, r2
 8001568:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800156c:	687b      	ldr	r3, [r7, #4]
 800156e:	681b      	ldr	r3, [r3, #0]
 8001570:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8001574:	2b00      	cmp	r3, #0
 8001576:	d00a      	beq.n	800158e <HAL_RCCEx_PeriphCLKConfig+0x3e2>
 8001578:	4b2e      	ldr	r3, [pc, #184]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800157a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 800157e:	f023 6280 	bic.w	r2, r3, #67108864	@ 0x4000000
 8001582:	687b      	ldr	r3, [r7, #4]
 8001584:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 8001586:	492b      	ldr	r1, [pc, #172]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 8001588:	4313      	orrs	r3, r2
 800158a:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 800158e:	687b      	ldr	r3, [r7, #4]
 8001590:	681b      	ldr	r3, [r3, #0]
 8001592:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8001596:	2b00      	cmp	r3, #0
 8001598:	d011      	beq.n	80015be <HAL_RCCEx_PeriphCLKConfig+0x412>
 800159a:	4b26      	ldr	r3, [pc, #152]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800159c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80015a0:	f023 6200 	bic.w	r2, r3, #134217728	@ 0x8000000
 80015a4:	687b      	ldr	r3, [r7, #4]
 80015a6:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 80015a8:	4922      	ldr	r1, [pc, #136]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80015aa:	4313      	orrs	r3, r2
 80015ac:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80015b0:	687b      	ldr	r3, [r7, #4]
 80015b2:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 80015b4:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 80015b8:	d101      	bne.n	80015be <HAL_RCCEx_PeriphCLKConfig+0x412>
 80015ba:	2301      	movs	r3, #1
 80015bc:	61bb      	str	r3, [r7, #24]
 80015be:	687b      	ldr	r3, [r7, #4]
 80015c0:	681b      	ldr	r3, [r3, #0]
 80015c2:	f003 0308 	and.w	r3, r3, #8
 80015c6:	2b00      	cmp	r3, #0
 80015c8:	d001      	beq.n	80015ce <HAL_RCCEx_PeriphCLKConfig+0x422>
 80015ca:	2301      	movs	r3, #1
 80015cc:	61bb      	str	r3, [r7, #24]
 80015ce:	687b      	ldr	r3, [r7, #4]
 80015d0:	681b      	ldr	r3, [r3, #0]
 80015d2:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 80015d6:	2b00      	cmp	r3, #0
 80015d8:	d00a      	beq.n	80015f0 <HAL_RCCEx_PeriphCLKConfig+0x444>
 80015da:	4b16      	ldr	r3, [pc, #88]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80015dc:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80015e0:	f023 7240 	bic.w	r2, r3, #50331648	@ 0x3000000
 80015e4:	687b      	ldr	r3, [r7, #4]
 80015e6:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 80015e8:	4912      	ldr	r1, [pc, #72]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80015ea:	4313      	orrs	r3, r2
 80015ec:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 80015f0:	687b      	ldr	r3, [r7, #4]
 80015f2:	681b      	ldr	r3, [r3, #0]
 80015f4:	f403 0300 	and.w	r3, r3, #8388608	@ 0x800000
 80015f8:	2b00      	cmp	r3, #0
 80015fa:	d00b      	beq.n	8001614 <HAL_RCCEx_PeriphCLKConfig+0x468>
 80015fc:	4b0d      	ldr	r3, [pc, #52]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 80015fe:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8001602:	f023 5280 	bic.w	r2, r3, #268435456	@ 0x10000000
 8001606:	687b      	ldr	r3, [r7, #4]
 8001608:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 800160c:	4909      	ldr	r1, [pc, #36]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800160e:	4313      	orrs	r3, r2
 8001610:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8001614:	69fb      	ldr	r3, [r7, #28]
 8001616:	2b01      	cmp	r3, #1
 8001618:	d006      	beq.n	8001628 <HAL_RCCEx_PeriphCLKConfig+0x47c>
 800161a:	687b      	ldr	r3, [r7, #4]
 800161c:	681b      	ldr	r3, [r3, #0]
 800161e:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8001622:	2b00      	cmp	r3, #0
 8001624:	f000 80d9 	beq.w	80017da <HAL_RCCEx_PeriphCLKConfig+0x62e>
 8001628:	4b02      	ldr	r3, [pc, #8]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800162a:	681b      	ldr	r3, [r3, #0]
 800162c:	4a01      	ldr	r2, [pc, #4]	@ (8001634 <HAL_RCCEx_PeriphCLKConfig+0x488>)
 800162e:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 8001632:	e001      	b.n	8001638 <HAL_RCCEx_PeriphCLKConfig+0x48c>
 8001634:	40023800 	.word	0x40023800
 8001638:	6013      	str	r3, [r2, #0]
 800163a:	f000 ffe7 	bl	800260c <HAL_GetTick>
 800163e:	6178      	str	r0, [r7, #20]
 8001640:	e008      	b.n	8001654 <HAL_RCCEx_PeriphCLKConfig+0x4a8>
 8001642:	f000 ffe3 	bl	800260c <HAL_GetTick>
 8001646:	4602      	mov	r2, r0
 8001648:	697b      	ldr	r3, [r7, #20]
 800164a:	1ad3      	subs	r3, r2, r3
 800164c:	2b64      	cmp	r3, #100	@ 0x64
 800164e:	d901      	bls.n	8001654 <HAL_RCCEx_PeriphCLKConfig+0x4a8>
 8001650:	2303      	movs	r3, #3
 8001652:	e194      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 8001654:	4b6c      	ldr	r3, [pc, #432]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 8001656:	681b      	ldr	r3, [r3, #0]
 8001658:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 800165c:	2b00      	cmp	r3, #0
 800165e:	d1f0      	bne.n	8001642 <HAL_RCCEx_PeriphCLKConfig+0x496>
 8001660:	687b      	ldr	r3, [r7, #4]
 8001662:	681b      	ldr	r3, [r3, #0]
 8001664:	f003 0301 	and.w	r3, r3, #1
 8001668:	2b00      	cmp	r3, #0
 800166a:	d021      	beq.n	80016b0 <HAL_RCCEx_PeriphCLKConfig+0x504>
 800166c:	687b      	ldr	r3, [r7, #4]
 800166e:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8001670:	2b00      	cmp	r3, #0
 8001672:	d11d      	bne.n	80016b0 <HAL_RCCEx_PeriphCLKConfig+0x504>
 8001674:	4b64      	ldr	r3, [pc, #400]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 8001676:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 800167a:	0c1b      	lsrs	r3, r3, #16
 800167c:	f003 0303 	and.w	r3, r3, #3
 8001680:	613b      	str	r3, [r7, #16]
 8001682:	4b61      	ldr	r3, [pc, #388]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 8001684:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8001688:	0e1b      	lsrs	r3, r3, #24
 800168a:	f003 030f 	and.w	r3, r3, #15
 800168e:	60fb      	str	r3, [r7, #12]
 8001690:	687b      	ldr	r3, [r7, #4]
 8001692:	685b      	ldr	r3, [r3, #4]
 8001694:	019a      	lsls	r2, r3, #6
 8001696:	693b      	ldr	r3, [r7, #16]
 8001698:	041b      	lsls	r3, r3, #16
 800169a:	431a      	orrs	r2, r3
 800169c:	68fb      	ldr	r3, [r7, #12]
 800169e:	061b      	lsls	r3, r3, #24
 80016a0:	431a      	orrs	r2, r3
 80016a2:	687b      	ldr	r3, [r7, #4]
 80016a4:	689b      	ldr	r3, [r3, #8]
 80016a6:	071b      	lsls	r3, r3, #28
 80016a8:	4957      	ldr	r1, [pc, #348]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80016aa:	4313      	orrs	r3, r2
 80016ac:	f8c1 3084 	str.w	r3, [r1, #132]	@ 0x84
 80016b0:	687b      	ldr	r3, [r7, #4]
 80016b2:	681b      	ldr	r3, [r3, #0]
 80016b4:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 80016b8:	2b00      	cmp	r3, #0
 80016ba:	d004      	beq.n	80016c6 <HAL_RCCEx_PeriphCLKConfig+0x51a>
 80016bc:	687b      	ldr	r3, [r7, #4]
 80016be:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80016c0:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 80016c4:	d00a      	beq.n	80016dc <HAL_RCCEx_PeriphCLKConfig+0x530>
 80016c6:	687b      	ldr	r3, [r7, #4]
 80016c8:	681b      	ldr	r3, [r3, #0]
 80016ca:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 80016ce:	2b00      	cmp	r3, #0
 80016d0:	d02e      	beq.n	8001730 <HAL_RCCEx_PeriphCLKConfig+0x584>
 80016d2:	687b      	ldr	r3, [r7, #4]
 80016d4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80016d6:	f5b3 0f80 	cmp.w	r3, #4194304	@ 0x400000
 80016da:	d129      	bne.n	8001730 <HAL_RCCEx_PeriphCLKConfig+0x584>
 80016dc:	4b4a      	ldr	r3, [pc, #296]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80016de:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 80016e2:	0c1b      	lsrs	r3, r3, #16
 80016e4:	f003 0303 	and.w	r3, r3, #3
 80016e8:	613b      	str	r3, [r7, #16]
 80016ea:	4b47      	ldr	r3, [pc, #284]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80016ec:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 80016f0:	0f1b      	lsrs	r3, r3, #28
 80016f2:	f003 0307 	and.w	r3, r3, #7
 80016f6:	60fb      	str	r3, [r7, #12]
 80016f8:	687b      	ldr	r3, [r7, #4]
 80016fa:	685b      	ldr	r3, [r3, #4]
 80016fc:	019a      	lsls	r2, r3, #6
 80016fe:	693b      	ldr	r3, [r7, #16]
 8001700:	041b      	lsls	r3, r3, #16
 8001702:	431a      	orrs	r2, r3
 8001704:	687b      	ldr	r3, [r7, #4]
 8001706:	68db      	ldr	r3, [r3, #12]
 8001708:	061b      	lsls	r3, r3, #24
 800170a:	431a      	orrs	r2, r3
 800170c:	68fb      	ldr	r3, [r7, #12]
 800170e:	071b      	lsls	r3, r3, #28
 8001710:	493d      	ldr	r1, [pc, #244]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 8001712:	4313      	orrs	r3, r2
 8001714:	f8c1 3084 	str.w	r3, [r1, #132]	@ 0x84
 8001718:	4b3b      	ldr	r3, [pc, #236]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 800171a:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 800171e:	f023 021f 	bic.w	r2, r3, #31
 8001722:	687b      	ldr	r3, [r7, #4]
 8001724:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001726:	3b01      	subs	r3, #1
 8001728:	4937      	ldr	r1, [pc, #220]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 800172a:	4313      	orrs	r3, r2
 800172c:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 8001730:	687b      	ldr	r3, [r7, #4]
 8001732:	681b      	ldr	r3, [r3, #0]
 8001734:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8001738:	2b00      	cmp	r3, #0
 800173a:	d01d      	beq.n	8001778 <HAL_RCCEx_PeriphCLKConfig+0x5cc>
 800173c:	4b32      	ldr	r3, [pc, #200]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 800173e:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8001742:	0e1b      	lsrs	r3, r3, #24
 8001744:	f003 030f 	and.w	r3, r3, #15
 8001748:	613b      	str	r3, [r7, #16]
 800174a:	4b2f      	ldr	r3, [pc, #188]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 800174c:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8001750:	0f1b      	lsrs	r3, r3, #28
 8001752:	f003 0307 	and.w	r3, r3, #7
 8001756:	60fb      	str	r3, [r7, #12]
 8001758:	687b      	ldr	r3, [r7, #4]
 800175a:	685b      	ldr	r3, [r3, #4]
 800175c:	019a      	lsls	r2, r3, #6
 800175e:	687b      	ldr	r3, [r7, #4]
 8001760:	691b      	ldr	r3, [r3, #16]
 8001762:	041b      	lsls	r3, r3, #16
 8001764:	431a      	orrs	r2, r3
 8001766:	693b      	ldr	r3, [r7, #16]
 8001768:	061b      	lsls	r3, r3, #24
 800176a:	431a      	orrs	r2, r3
 800176c:	68fb      	ldr	r3, [r7, #12]
 800176e:	071b      	lsls	r3, r3, #28
 8001770:	4925      	ldr	r1, [pc, #148]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 8001772:	4313      	orrs	r3, r2
 8001774:	f8c1 3084 	str.w	r3, [r1, #132]	@ 0x84
 8001778:	687b      	ldr	r3, [r7, #4]
 800177a:	681b      	ldr	r3, [r3, #0]
 800177c:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8001780:	2b00      	cmp	r3, #0
 8001782:	d011      	beq.n	80017a8 <HAL_RCCEx_PeriphCLKConfig+0x5fc>
 8001784:	687b      	ldr	r3, [r7, #4]
 8001786:	685b      	ldr	r3, [r3, #4]
 8001788:	019a      	lsls	r2, r3, #6
 800178a:	687b      	ldr	r3, [r7, #4]
 800178c:	691b      	ldr	r3, [r3, #16]
 800178e:	041b      	lsls	r3, r3, #16
 8001790:	431a      	orrs	r2, r3
 8001792:	687b      	ldr	r3, [r7, #4]
 8001794:	68db      	ldr	r3, [r3, #12]
 8001796:	061b      	lsls	r3, r3, #24
 8001798:	431a      	orrs	r2, r3
 800179a:	687b      	ldr	r3, [r7, #4]
 800179c:	689b      	ldr	r3, [r3, #8]
 800179e:	071b      	lsls	r3, r3, #28
 80017a0:	4919      	ldr	r1, [pc, #100]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017a2:	4313      	orrs	r3, r2
 80017a4:	f8c1 3084 	str.w	r3, [r1, #132]	@ 0x84
 80017a8:	4b17      	ldr	r3, [pc, #92]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017aa:	681b      	ldr	r3, [r3, #0]
 80017ac:	4a16      	ldr	r2, [pc, #88]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017ae:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 80017b2:	6013      	str	r3, [r2, #0]
 80017b4:	f000 ff2a 	bl	800260c <HAL_GetTick>
 80017b8:	6178      	str	r0, [r7, #20]
 80017ba:	e008      	b.n	80017ce <HAL_RCCEx_PeriphCLKConfig+0x622>
 80017bc:	f000 ff26 	bl	800260c <HAL_GetTick>
 80017c0:	4602      	mov	r2, r0
 80017c2:	697b      	ldr	r3, [r7, #20]
 80017c4:	1ad3      	subs	r3, r2, r3
 80017c6:	2b64      	cmp	r3, #100	@ 0x64
 80017c8:	d901      	bls.n	80017ce <HAL_RCCEx_PeriphCLKConfig+0x622>
 80017ca:	2303      	movs	r3, #3
 80017cc:	e0d7      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 80017ce:	4b0e      	ldr	r3, [pc, #56]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017d0:	681b      	ldr	r3, [r3, #0]
 80017d2:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 80017d6:	2b00      	cmp	r3, #0
 80017d8:	d0f0      	beq.n	80017bc <HAL_RCCEx_PeriphCLKConfig+0x610>
 80017da:	69bb      	ldr	r3, [r7, #24]
 80017dc:	2b01      	cmp	r3, #1
 80017de:	f040 80cd 	bne.w	800197c <HAL_RCCEx_PeriphCLKConfig+0x7d0>
 80017e2:	4b09      	ldr	r3, [pc, #36]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017e4:	681b      	ldr	r3, [r3, #0]
 80017e6:	4a08      	ldr	r2, [pc, #32]	@ (8001808 <HAL_RCCEx_PeriphCLKConfig+0x65c>)
 80017e8:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 80017ec:	6013      	str	r3, [r2, #0]
 80017ee:	f000 ff0d 	bl	800260c <HAL_GetTick>
 80017f2:	6178      	str	r0, [r7, #20]
 80017f4:	e00a      	b.n	800180c <HAL_RCCEx_PeriphCLKConfig+0x660>
 80017f6:	f000 ff09 	bl	800260c <HAL_GetTick>
 80017fa:	4602      	mov	r2, r0
 80017fc:	697b      	ldr	r3, [r7, #20]
 80017fe:	1ad3      	subs	r3, r2, r3
 8001800:	2b64      	cmp	r3, #100	@ 0x64
 8001802:	d903      	bls.n	800180c <HAL_RCCEx_PeriphCLKConfig+0x660>
 8001804:	2303      	movs	r3, #3
 8001806:	e0ba      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 8001808:	40023800 	.word	0x40023800
 800180c:	4b5e      	ldr	r3, [pc, #376]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 800180e:	681b      	ldr	r3, [r3, #0]
 8001810:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8001814:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 8001818:	d0ed      	beq.n	80017f6 <HAL_RCCEx_PeriphCLKConfig+0x64a>
 800181a:	687b      	ldr	r3, [r7, #4]
 800181c:	681b      	ldr	r3, [r3, #0]
 800181e:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 8001822:	2b00      	cmp	r3, #0
 8001824:	d003      	beq.n	800182e <HAL_RCCEx_PeriphCLKConfig+0x682>
 8001826:	687b      	ldr	r3, [r7, #4]
 8001828:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800182a:	2b00      	cmp	r3, #0
 800182c:	d009      	beq.n	8001842 <HAL_RCCEx_PeriphCLKConfig+0x696>
 800182e:	687b      	ldr	r3, [r7, #4]
 8001830:	681b      	ldr	r3, [r3, #0]
 8001832:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8001836:	2b00      	cmp	r3, #0
 8001838:	d02e      	beq.n	8001898 <HAL_RCCEx_PeriphCLKConfig+0x6ec>
 800183a:	687b      	ldr	r3, [r7, #4]
 800183c:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800183e:	2b00      	cmp	r3, #0
 8001840:	d12a      	bne.n	8001898 <HAL_RCCEx_PeriphCLKConfig+0x6ec>
 8001842:	4b51      	ldr	r3, [pc, #324]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001844:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8001848:	0c1b      	lsrs	r3, r3, #16
 800184a:	f003 0303 	and.w	r3, r3, #3
 800184e:	613b      	str	r3, [r7, #16]
 8001850:	4b4d      	ldr	r3, [pc, #308]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001852:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8001856:	0f1b      	lsrs	r3, r3, #28
 8001858:	f003 0307 	and.w	r3, r3, #7
 800185c:	60fb      	str	r3, [r7, #12]
 800185e:	687b      	ldr	r3, [r7, #4]
 8001860:	695b      	ldr	r3, [r3, #20]
 8001862:	019a      	lsls	r2, r3, #6
 8001864:	693b      	ldr	r3, [r7, #16]
 8001866:	041b      	lsls	r3, r3, #16
 8001868:	431a      	orrs	r2, r3
 800186a:	687b      	ldr	r3, [r7, #4]
 800186c:	699b      	ldr	r3, [r3, #24]
 800186e:	061b      	lsls	r3, r3, #24
 8001870:	431a      	orrs	r2, r3
 8001872:	68fb      	ldr	r3, [r7, #12]
 8001874:	071b      	lsls	r3, r3, #28
 8001876:	4944      	ldr	r1, [pc, #272]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001878:	4313      	orrs	r3, r2
 800187a:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 800187e:	4b42      	ldr	r3, [pc, #264]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001880:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8001884:	f423 52f8 	bic.w	r2, r3, #7936	@ 0x1f00
 8001888:	687b      	ldr	r3, [r7, #4]
 800188a:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 800188c:	3b01      	subs	r3, #1
 800188e:	021b      	lsls	r3, r3, #8
 8001890:	493d      	ldr	r1, [pc, #244]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001892:	4313      	orrs	r3, r2
 8001894:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 8001898:	687b      	ldr	r3, [r7, #4]
 800189a:	681b      	ldr	r3, [r3, #0]
 800189c:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 80018a0:	2b00      	cmp	r3, #0
 80018a2:	d022      	beq.n	80018ea <HAL_RCCEx_PeriphCLKConfig+0x73e>
 80018a4:	687b      	ldr	r3, [r7, #4]
 80018a6:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 80018a8:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 80018ac:	d11d      	bne.n	80018ea <HAL_RCCEx_PeriphCLKConfig+0x73e>
 80018ae:	4b36      	ldr	r3, [pc, #216]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 80018b0:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80018b4:	0e1b      	lsrs	r3, r3, #24
 80018b6:	f003 030f 	and.w	r3, r3, #15
 80018ba:	613b      	str	r3, [r7, #16]
 80018bc:	4b32      	ldr	r3, [pc, #200]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 80018be:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80018c2:	0f1b      	lsrs	r3, r3, #28
 80018c4:	f003 0307 	and.w	r3, r3, #7
 80018c8:	60fb      	str	r3, [r7, #12]
 80018ca:	687b      	ldr	r3, [r7, #4]
 80018cc:	695b      	ldr	r3, [r3, #20]
 80018ce:	019a      	lsls	r2, r3, #6
 80018d0:	687b      	ldr	r3, [r7, #4]
 80018d2:	6a1b      	ldr	r3, [r3, #32]
 80018d4:	041b      	lsls	r3, r3, #16
 80018d6:	431a      	orrs	r2, r3
 80018d8:	693b      	ldr	r3, [r7, #16]
 80018da:	061b      	lsls	r3, r3, #24
 80018dc:	431a      	orrs	r2, r3
 80018de:	68fb      	ldr	r3, [r7, #12]
 80018e0:	071b      	lsls	r3, r3, #28
 80018e2:	4929      	ldr	r1, [pc, #164]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 80018e4:	4313      	orrs	r3, r2
 80018e6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80018ea:	687b      	ldr	r3, [r7, #4]
 80018ec:	681b      	ldr	r3, [r3, #0]
 80018ee:	f003 0308 	and.w	r3, r3, #8
 80018f2:	2b00      	cmp	r3, #0
 80018f4:	d028      	beq.n	8001948 <HAL_RCCEx_PeriphCLKConfig+0x79c>
 80018f6:	4b24      	ldr	r3, [pc, #144]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 80018f8:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80018fc:	0e1b      	lsrs	r3, r3, #24
 80018fe:	f003 030f 	and.w	r3, r3, #15
 8001902:	613b      	str	r3, [r7, #16]
 8001904:	4b20      	ldr	r3, [pc, #128]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001906:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 800190a:	0c1b      	lsrs	r3, r3, #16
 800190c:	f003 0303 	and.w	r3, r3, #3
 8001910:	60fb      	str	r3, [r7, #12]
 8001912:	687b      	ldr	r3, [r7, #4]
 8001914:	695b      	ldr	r3, [r3, #20]
 8001916:	019a      	lsls	r2, r3, #6
 8001918:	68fb      	ldr	r3, [r7, #12]
 800191a:	041b      	lsls	r3, r3, #16
 800191c:	431a      	orrs	r2, r3
 800191e:	693b      	ldr	r3, [r7, #16]
 8001920:	061b      	lsls	r3, r3, #24
 8001922:	431a      	orrs	r2, r3
 8001924:	687b      	ldr	r3, [r7, #4]
 8001926:	69db      	ldr	r3, [r3, #28]
 8001928:	071b      	lsls	r3, r3, #28
 800192a:	4917      	ldr	r1, [pc, #92]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 800192c:	4313      	orrs	r3, r2
 800192e:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8001932:	4b15      	ldr	r3, [pc, #84]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001934:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8001938:	f423 3240 	bic.w	r2, r3, #196608	@ 0x30000
 800193c:	687b      	ldr	r3, [r7, #4]
 800193e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001940:	4911      	ldr	r1, [pc, #68]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001942:	4313      	orrs	r3, r2
 8001944:	f8c1 308c 	str.w	r3, [r1, #140]	@ 0x8c
 8001948:	4b0f      	ldr	r3, [pc, #60]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 800194a:	681b      	ldr	r3, [r3, #0]
 800194c:	4a0e      	ldr	r2, [pc, #56]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 800194e:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8001952:	6013      	str	r3, [r2, #0]
 8001954:	f000 fe5a 	bl	800260c <HAL_GetTick>
 8001958:	6178      	str	r0, [r7, #20]
 800195a:	e008      	b.n	800196e <HAL_RCCEx_PeriphCLKConfig+0x7c2>
 800195c:	f000 fe56 	bl	800260c <HAL_GetTick>
 8001960:	4602      	mov	r2, r0
 8001962:	697b      	ldr	r3, [r7, #20]
 8001964:	1ad3      	subs	r3, r2, r3
 8001966:	2b64      	cmp	r3, #100	@ 0x64
 8001968:	d901      	bls.n	800196e <HAL_RCCEx_PeriphCLKConfig+0x7c2>
 800196a:	2303      	movs	r3, #3
 800196c:	e007      	b.n	800197e <HAL_RCCEx_PeriphCLKConfig+0x7d2>
 800196e:	4b06      	ldr	r3, [pc, #24]	@ (8001988 <HAL_RCCEx_PeriphCLKConfig+0x7dc>)
 8001970:	681b      	ldr	r3, [r3, #0]
 8001972:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8001976:	f1b3 5f00 	cmp.w	r3, #536870912	@ 0x20000000
 800197a:	d1ef      	bne.n	800195c <HAL_RCCEx_PeriphCLKConfig+0x7b0>
 800197c:	2300      	movs	r3, #0
 800197e:	4618      	mov	r0, r3
 8001980:	3720      	adds	r7, #32
 8001982:	46bd      	mov	sp, r7
 8001984:	bd80      	pop	{r7, pc}
 8001986:	bf00      	nop
 8001988:	40023800 	.word	0x40023800

0800198c <HAL_GPIO_Init>:
 800198c:	b480      	push	{r7}
 800198e:	b089      	sub	sp, #36	@ 0x24
 8001990:	af00      	add	r7, sp, #0
 8001992:	6078      	str	r0, [r7, #4]
 8001994:	6039      	str	r1, [r7, #0]
 8001996:	2300      	movs	r3, #0
 8001998:	61fb      	str	r3, [r7, #28]
 800199a:	2300      	movs	r3, #0
 800199c:	617b      	str	r3, [r7, #20]
 800199e:	2300      	movs	r3, #0
 80019a0:	613b      	str	r3, [r7, #16]
 80019a2:	2300      	movs	r3, #0
 80019a4:	61bb      	str	r3, [r7, #24]
 80019a6:	2300      	movs	r3, #0
 80019a8:	61fb      	str	r3, [r7, #28]
 80019aa:	e175      	b.n	8001c98 <HAL_GPIO_Init+0x30c>
 80019ac:	2201      	movs	r2, #1
 80019ae:	69fb      	ldr	r3, [r7, #28]
 80019b0:	fa02 f303 	lsl.w	r3, r2, r3
 80019b4:	617b      	str	r3, [r7, #20]
 80019b6:	683b      	ldr	r3, [r7, #0]
 80019b8:	681b      	ldr	r3, [r3, #0]
 80019ba:	697a      	ldr	r2, [r7, #20]
 80019bc:	4013      	ands	r3, r2
 80019be:	613b      	str	r3, [r7, #16]
 80019c0:	693a      	ldr	r2, [r7, #16]
 80019c2:	697b      	ldr	r3, [r7, #20]
 80019c4:	429a      	cmp	r2, r3
 80019c6:	f040 8164 	bne.w	8001c92 <HAL_GPIO_Init+0x306>
 80019ca:	683b      	ldr	r3, [r7, #0]
 80019cc:	685b      	ldr	r3, [r3, #4]
 80019ce:	f003 0303 	and.w	r3, r3, #3
 80019d2:	2b01      	cmp	r3, #1
 80019d4:	d005      	beq.n	80019e2 <HAL_GPIO_Init+0x56>
 80019d6:	683b      	ldr	r3, [r7, #0]
 80019d8:	685b      	ldr	r3, [r3, #4]
 80019da:	f003 0303 	and.w	r3, r3, #3
 80019de:	2b02      	cmp	r3, #2
 80019e0:	d130      	bne.n	8001a44 <HAL_GPIO_Init+0xb8>
 80019e2:	687b      	ldr	r3, [r7, #4]
 80019e4:	689b      	ldr	r3, [r3, #8]
 80019e6:	61bb      	str	r3, [r7, #24]
 80019e8:	69fb      	ldr	r3, [r7, #28]
 80019ea:	005b      	lsls	r3, r3, #1
 80019ec:	2203      	movs	r2, #3
 80019ee:	fa02 f303 	lsl.w	r3, r2, r3
 80019f2:	43db      	mvns	r3, r3
 80019f4:	69ba      	ldr	r2, [r7, #24]
 80019f6:	4013      	ands	r3, r2
 80019f8:	61bb      	str	r3, [r7, #24]
 80019fa:	683b      	ldr	r3, [r7, #0]
 80019fc:	68da      	ldr	r2, [r3, #12]
 80019fe:	69fb      	ldr	r3, [r7, #28]
 8001a00:	005b      	lsls	r3, r3, #1
 8001a02:	fa02 f303 	lsl.w	r3, r2, r3
 8001a06:	69ba      	ldr	r2, [r7, #24]
 8001a08:	4313      	orrs	r3, r2
 8001a0a:	61bb      	str	r3, [r7, #24]
 8001a0c:	687b      	ldr	r3, [r7, #4]
 8001a0e:	69ba      	ldr	r2, [r7, #24]
 8001a10:	609a      	str	r2, [r3, #8]
 8001a12:	687b      	ldr	r3, [r7, #4]
 8001a14:	685b      	ldr	r3, [r3, #4]
 8001a16:	61bb      	str	r3, [r7, #24]
 8001a18:	2201      	movs	r2, #1
 8001a1a:	69fb      	ldr	r3, [r7, #28]
 8001a1c:	fa02 f303 	lsl.w	r3, r2, r3
 8001a20:	43db      	mvns	r3, r3
 8001a22:	69ba      	ldr	r2, [r7, #24]
 8001a24:	4013      	ands	r3, r2
 8001a26:	61bb      	str	r3, [r7, #24]
 8001a28:	683b      	ldr	r3, [r7, #0]
 8001a2a:	685b      	ldr	r3, [r3, #4]
 8001a2c:	091b      	lsrs	r3, r3, #4
 8001a2e:	f003 0201 	and.w	r2, r3, #1
 8001a32:	69fb      	ldr	r3, [r7, #28]
 8001a34:	fa02 f303 	lsl.w	r3, r2, r3
 8001a38:	69ba      	ldr	r2, [r7, #24]
 8001a3a:	4313      	orrs	r3, r2
 8001a3c:	61bb      	str	r3, [r7, #24]
 8001a3e:	687b      	ldr	r3, [r7, #4]
 8001a40:	69ba      	ldr	r2, [r7, #24]
 8001a42:	605a      	str	r2, [r3, #4]
 8001a44:	683b      	ldr	r3, [r7, #0]
 8001a46:	685b      	ldr	r3, [r3, #4]
 8001a48:	f003 0303 	and.w	r3, r3, #3
 8001a4c:	2b03      	cmp	r3, #3
 8001a4e:	d017      	beq.n	8001a80 <HAL_GPIO_Init+0xf4>
 8001a50:	687b      	ldr	r3, [r7, #4]
 8001a52:	68db      	ldr	r3, [r3, #12]
 8001a54:	61bb      	str	r3, [r7, #24]
 8001a56:	69fb      	ldr	r3, [r7, #28]
 8001a58:	005b      	lsls	r3, r3, #1
 8001a5a:	2203      	movs	r2, #3
 8001a5c:	fa02 f303 	lsl.w	r3, r2, r3
 8001a60:	43db      	mvns	r3, r3
 8001a62:	69ba      	ldr	r2, [r7, #24]
 8001a64:	4013      	ands	r3, r2
 8001a66:	61bb      	str	r3, [r7, #24]
 8001a68:	683b      	ldr	r3, [r7, #0]
 8001a6a:	689a      	ldr	r2, [r3, #8]
 8001a6c:	69fb      	ldr	r3, [r7, #28]
 8001a6e:	005b      	lsls	r3, r3, #1
 8001a70:	fa02 f303 	lsl.w	r3, r2, r3
 8001a74:	69ba      	ldr	r2, [r7, #24]
 8001a76:	4313      	orrs	r3, r2
 8001a78:	61bb      	str	r3, [r7, #24]
 8001a7a:	687b      	ldr	r3, [r7, #4]
 8001a7c:	69ba      	ldr	r2, [r7, #24]
 8001a7e:	60da      	str	r2, [r3, #12]
 8001a80:	683b      	ldr	r3, [r7, #0]
 8001a82:	685b      	ldr	r3, [r3, #4]
 8001a84:	f003 0303 	and.w	r3, r3, #3
 8001a88:	2b02      	cmp	r3, #2
 8001a8a:	d123      	bne.n	8001ad4 <HAL_GPIO_Init+0x148>
 8001a8c:	69fb      	ldr	r3, [r7, #28]
 8001a8e:	08da      	lsrs	r2, r3, #3
 8001a90:	687b      	ldr	r3, [r7, #4]
 8001a92:	3208      	adds	r2, #8
 8001a94:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001a98:	61bb      	str	r3, [r7, #24]
 8001a9a:	69fb      	ldr	r3, [r7, #28]
 8001a9c:	f003 0307 	and.w	r3, r3, #7
 8001aa0:	009b      	lsls	r3, r3, #2
 8001aa2:	220f      	movs	r2, #15
 8001aa4:	fa02 f303 	lsl.w	r3, r2, r3
 8001aa8:	43db      	mvns	r3, r3
 8001aaa:	69ba      	ldr	r2, [r7, #24]
 8001aac:	4013      	ands	r3, r2
 8001aae:	61bb      	str	r3, [r7, #24]
 8001ab0:	683b      	ldr	r3, [r7, #0]
 8001ab2:	691a      	ldr	r2, [r3, #16]
 8001ab4:	69fb      	ldr	r3, [r7, #28]
 8001ab6:	f003 0307 	and.w	r3, r3, #7
 8001aba:	009b      	lsls	r3, r3, #2
 8001abc:	fa02 f303 	lsl.w	r3, r2, r3
 8001ac0:	69ba      	ldr	r2, [r7, #24]
 8001ac2:	4313      	orrs	r3, r2
 8001ac4:	61bb      	str	r3, [r7, #24]
 8001ac6:	69fb      	ldr	r3, [r7, #28]
 8001ac8:	08da      	lsrs	r2, r3, #3
 8001aca:	687b      	ldr	r3, [r7, #4]
 8001acc:	3208      	adds	r2, #8
 8001ace:	69b9      	ldr	r1, [r7, #24]
 8001ad0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001ad4:	687b      	ldr	r3, [r7, #4]
 8001ad6:	681b      	ldr	r3, [r3, #0]
 8001ad8:	61bb      	str	r3, [r7, #24]
 8001ada:	69fb      	ldr	r3, [r7, #28]
 8001adc:	005b      	lsls	r3, r3, #1
 8001ade:	2203      	movs	r2, #3
 8001ae0:	fa02 f303 	lsl.w	r3, r2, r3
 8001ae4:	43db      	mvns	r3, r3
 8001ae6:	69ba      	ldr	r2, [r7, #24]
 8001ae8:	4013      	ands	r3, r2
 8001aea:	61bb      	str	r3, [r7, #24]
 8001aec:	683b      	ldr	r3, [r7, #0]
 8001aee:	685b      	ldr	r3, [r3, #4]
 8001af0:	f003 0203 	and.w	r2, r3, #3
 8001af4:	69fb      	ldr	r3, [r7, #28]
 8001af6:	005b      	lsls	r3, r3, #1
 8001af8:	fa02 f303 	lsl.w	r3, r2, r3
 8001afc:	69ba      	ldr	r2, [r7, #24]
 8001afe:	4313      	orrs	r3, r2
 8001b00:	61bb      	str	r3, [r7, #24]
 8001b02:	687b      	ldr	r3, [r7, #4]
 8001b04:	69ba      	ldr	r2, [r7, #24]
 8001b06:	601a      	str	r2, [r3, #0]
 8001b08:	683b      	ldr	r3, [r7, #0]
 8001b0a:	685b      	ldr	r3, [r3, #4]
 8001b0c:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8001b10:	2b00      	cmp	r3, #0
 8001b12:	f000 80be 	beq.w	8001c92 <HAL_GPIO_Init+0x306>
 8001b16:	4b66      	ldr	r3, [pc, #408]	@ (8001cb0 <HAL_GPIO_Init+0x324>)
 8001b18:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001b1a:	4a65      	ldr	r2, [pc, #404]	@ (8001cb0 <HAL_GPIO_Init+0x324>)
 8001b1c:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8001b20:	6453      	str	r3, [r2, #68]	@ 0x44
 8001b22:	4b63      	ldr	r3, [pc, #396]	@ (8001cb0 <HAL_GPIO_Init+0x324>)
 8001b24:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8001b26:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8001b2a:	60fb      	str	r3, [r7, #12]
 8001b2c:	68fb      	ldr	r3, [r7, #12]
 8001b2e:	4a61      	ldr	r2, [pc, #388]	@ (8001cb4 <HAL_GPIO_Init+0x328>)
 8001b30:	69fb      	ldr	r3, [r7, #28]
 8001b32:	089b      	lsrs	r3, r3, #2
 8001b34:	3302      	adds	r3, #2
 8001b36:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001b3a:	61bb      	str	r3, [r7, #24]
 8001b3c:	69fb      	ldr	r3, [r7, #28]
 8001b3e:	f003 0303 	and.w	r3, r3, #3
 8001b42:	009b      	lsls	r3, r3, #2
 8001b44:	220f      	movs	r2, #15
 8001b46:	fa02 f303 	lsl.w	r3, r2, r3
 8001b4a:	43db      	mvns	r3, r3
 8001b4c:	69ba      	ldr	r2, [r7, #24]
 8001b4e:	4013      	ands	r3, r2
 8001b50:	61bb      	str	r3, [r7, #24]
 8001b52:	687b      	ldr	r3, [r7, #4]
 8001b54:	4a58      	ldr	r2, [pc, #352]	@ (8001cb8 <HAL_GPIO_Init+0x32c>)
 8001b56:	4293      	cmp	r3, r2
 8001b58:	d037      	beq.n	8001bca <HAL_GPIO_Init+0x23e>
 8001b5a:	687b      	ldr	r3, [r7, #4]
 8001b5c:	4a57      	ldr	r2, [pc, #348]	@ (8001cbc <HAL_GPIO_Init+0x330>)
 8001b5e:	4293      	cmp	r3, r2
 8001b60:	d031      	beq.n	8001bc6 <HAL_GPIO_Init+0x23a>
 8001b62:	687b      	ldr	r3, [r7, #4]
 8001b64:	4a56      	ldr	r2, [pc, #344]	@ (8001cc0 <HAL_GPIO_Init+0x334>)
 8001b66:	4293      	cmp	r3, r2
 8001b68:	d02b      	beq.n	8001bc2 <HAL_GPIO_Init+0x236>
 8001b6a:	687b      	ldr	r3, [r7, #4]
 8001b6c:	4a55      	ldr	r2, [pc, #340]	@ (8001cc4 <HAL_GPIO_Init+0x338>)
 8001b6e:	4293      	cmp	r3, r2
 8001b70:	d025      	beq.n	8001bbe <HAL_GPIO_Init+0x232>
 8001b72:	687b      	ldr	r3, [r7, #4]
 8001b74:	4a54      	ldr	r2, [pc, #336]	@ (8001cc8 <HAL_GPIO_Init+0x33c>)
 8001b76:	4293      	cmp	r3, r2
 8001b78:	d01f      	beq.n	8001bba <HAL_GPIO_Init+0x22e>
 8001b7a:	687b      	ldr	r3, [r7, #4]
 8001b7c:	4a53      	ldr	r2, [pc, #332]	@ (8001ccc <HAL_GPIO_Init+0x340>)
 8001b7e:	4293      	cmp	r3, r2
 8001b80:	d019      	beq.n	8001bb6 <HAL_GPIO_Init+0x22a>
 8001b82:	687b      	ldr	r3, [r7, #4]
 8001b84:	4a52      	ldr	r2, [pc, #328]	@ (8001cd0 <HAL_GPIO_Init+0x344>)
 8001b86:	4293      	cmp	r3, r2
 8001b88:	d013      	beq.n	8001bb2 <HAL_GPIO_Init+0x226>
 8001b8a:	687b      	ldr	r3, [r7, #4]
 8001b8c:	4a51      	ldr	r2, [pc, #324]	@ (8001cd4 <HAL_GPIO_Init+0x348>)
 8001b8e:	4293      	cmp	r3, r2
 8001b90:	d00d      	beq.n	8001bae <HAL_GPIO_Init+0x222>
 8001b92:	687b      	ldr	r3, [r7, #4]
 8001b94:	4a50      	ldr	r2, [pc, #320]	@ (8001cd8 <HAL_GPIO_Init+0x34c>)
 8001b96:	4293      	cmp	r3, r2
 8001b98:	d007      	beq.n	8001baa <HAL_GPIO_Init+0x21e>
 8001b9a:	687b      	ldr	r3, [r7, #4]
 8001b9c:	4a4f      	ldr	r2, [pc, #316]	@ (8001cdc <HAL_GPIO_Init+0x350>)
 8001b9e:	4293      	cmp	r3, r2
 8001ba0:	d101      	bne.n	8001ba6 <HAL_GPIO_Init+0x21a>
 8001ba2:	2309      	movs	r3, #9
 8001ba4:	e012      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001ba6:	230a      	movs	r3, #10
 8001ba8:	e010      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001baa:	2308      	movs	r3, #8
 8001bac:	e00e      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bae:	2307      	movs	r3, #7
 8001bb0:	e00c      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bb2:	2306      	movs	r3, #6
 8001bb4:	e00a      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bb6:	2305      	movs	r3, #5
 8001bb8:	e008      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bba:	2304      	movs	r3, #4
 8001bbc:	e006      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bbe:	2303      	movs	r3, #3
 8001bc0:	e004      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bc2:	2302      	movs	r3, #2
 8001bc4:	e002      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bc6:	2301      	movs	r3, #1
 8001bc8:	e000      	b.n	8001bcc <HAL_GPIO_Init+0x240>
 8001bca:	2300      	movs	r3, #0
 8001bcc:	69fa      	ldr	r2, [r7, #28]
 8001bce:	f002 0203 	and.w	r2, r2, #3
 8001bd2:	0092      	lsls	r2, r2, #2
 8001bd4:	4093      	lsls	r3, r2
 8001bd6:	69ba      	ldr	r2, [r7, #24]
 8001bd8:	4313      	orrs	r3, r2
 8001bda:	61bb      	str	r3, [r7, #24]
 8001bdc:	4935      	ldr	r1, [pc, #212]	@ (8001cb4 <HAL_GPIO_Init+0x328>)
 8001bde:	69fb      	ldr	r3, [r7, #28]
 8001be0:	089b      	lsrs	r3, r3, #2
 8001be2:	3302      	adds	r3, #2
 8001be4:	69ba      	ldr	r2, [r7, #24]
 8001be6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001bea:	4b3d      	ldr	r3, [pc, #244]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001bec:	689b      	ldr	r3, [r3, #8]
 8001bee:	61bb      	str	r3, [r7, #24]
 8001bf0:	693b      	ldr	r3, [r7, #16]
 8001bf2:	43db      	mvns	r3, r3
 8001bf4:	69ba      	ldr	r2, [r7, #24]
 8001bf6:	4013      	ands	r3, r2
 8001bf8:	61bb      	str	r3, [r7, #24]
 8001bfa:	683b      	ldr	r3, [r7, #0]
 8001bfc:	685b      	ldr	r3, [r3, #4]
 8001bfe:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8001c02:	2b00      	cmp	r3, #0
 8001c04:	d003      	beq.n	8001c0e <HAL_GPIO_Init+0x282>
 8001c06:	69ba      	ldr	r2, [r7, #24]
 8001c08:	693b      	ldr	r3, [r7, #16]
 8001c0a:	4313      	orrs	r3, r2
 8001c0c:	61bb      	str	r3, [r7, #24]
 8001c0e:	4a34      	ldr	r2, [pc, #208]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c10:	69bb      	ldr	r3, [r7, #24]
 8001c12:	6093      	str	r3, [r2, #8]
 8001c14:	4b32      	ldr	r3, [pc, #200]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c16:	68db      	ldr	r3, [r3, #12]
 8001c18:	61bb      	str	r3, [r7, #24]
 8001c1a:	693b      	ldr	r3, [r7, #16]
 8001c1c:	43db      	mvns	r3, r3
 8001c1e:	69ba      	ldr	r2, [r7, #24]
 8001c20:	4013      	ands	r3, r2
 8001c22:	61bb      	str	r3, [r7, #24]
 8001c24:	683b      	ldr	r3, [r7, #0]
 8001c26:	685b      	ldr	r3, [r3, #4]
 8001c28:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8001c2c:	2b00      	cmp	r3, #0
 8001c2e:	d003      	beq.n	8001c38 <HAL_GPIO_Init+0x2ac>
 8001c30:	69ba      	ldr	r2, [r7, #24]
 8001c32:	693b      	ldr	r3, [r7, #16]
 8001c34:	4313      	orrs	r3, r2
 8001c36:	61bb      	str	r3, [r7, #24]
 8001c38:	4a29      	ldr	r2, [pc, #164]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c3a:	69bb      	ldr	r3, [r7, #24]
 8001c3c:	60d3      	str	r3, [r2, #12]
 8001c3e:	4b28      	ldr	r3, [pc, #160]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c40:	685b      	ldr	r3, [r3, #4]
 8001c42:	61bb      	str	r3, [r7, #24]
 8001c44:	693b      	ldr	r3, [r7, #16]
 8001c46:	43db      	mvns	r3, r3
 8001c48:	69ba      	ldr	r2, [r7, #24]
 8001c4a:	4013      	ands	r3, r2
 8001c4c:	61bb      	str	r3, [r7, #24]
 8001c4e:	683b      	ldr	r3, [r7, #0]
 8001c50:	685b      	ldr	r3, [r3, #4]
 8001c52:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8001c56:	2b00      	cmp	r3, #0
 8001c58:	d003      	beq.n	8001c62 <HAL_GPIO_Init+0x2d6>
 8001c5a:	69ba      	ldr	r2, [r7, #24]
 8001c5c:	693b      	ldr	r3, [r7, #16]
 8001c5e:	4313      	orrs	r3, r2
 8001c60:	61bb      	str	r3, [r7, #24]
 8001c62:	4a1f      	ldr	r2, [pc, #124]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c64:	69bb      	ldr	r3, [r7, #24]
 8001c66:	6053      	str	r3, [r2, #4]
 8001c68:	4b1d      	ldr	r3, [pc, #116]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c6a:	681b      	ldr	r3, [r3, #0]
 8001c6c:	61bb      	str	r3, [r7, #24]
 8001c6e:	693b      	ldr	r3, [r7, #16]
 8001c70:	43db      	mvns	r3, r3
 8001c72:	69ba      	ldr	r2, [r7, #24]
 8001c74:	4013      	ands	r3, r2
 8001c76:	61bb      	str	r3, [r7, #24]
 8001c78:	683b      	ldr	r3, [r7, #0]
 8001c7a:	685b      	ldr	r3, [r3, #4]
 8001c7c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8001c80:	2b00      	cmp	r3, #0
 8001c82:	d003      	beq.n	8001c8c <HAL_GPIO_Init+0x300>
 8001c84:	69ba      	ldr	r2, [r7, #24]
 8001c86:	693b      	ldr	r3, [r7, #16]
 8001c88:	4313      	orrs	r3, r2
 8001c8a:	61bb      	str	r3, [r7, #24]
 8001c8c:	4a14      	ldr	r2, [pc, #80]	@ (8001ce0 <HAL_GPIO_Init+0x354>)
 8001c8e:	69bb      	ldr	r3, [r7, #24]
 8001c90:	6013      	str	r3, [r2, #0]
 8001c92:	69fb      	ldr	r3, [r7, #28]
 8001c94:	3301      	adds	r3, #1
 8001c96:	61fb      	str	r3, [r7, #28]
 8001c98:	69fb      	ldr	r3, [r7, #28]
 8001c9a:	2b0f      	cmp	r3, #15
 8001c9c:	f67f ae86 	bls.w	80019ac <HAL_GPIO_Init+0x20>
 8001ca0:	bf00      	nop
 8001ca2:	bf00      	nop
 8001ca4:	3724      	adds	r7, #36	@ 0x24
 8001ca6:	46bd      	mov	sp, r7
 8001ca8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001cac:	4770      	bx	lr
 8001cae:	bf00      	nop
 8001cb0:	40023800 	.word	0x40023800
 8001cb4:	40013800 	.word	0x40013800
 8001cb8:	40020000 	.word	0x40020000
 8001cbc:	40020400 	.word	0x40020400
 8001cc0:	40020800 	.word	0x40020800
 8001cc4:	40020c00 	.word	0x40020c00
 8001cc8:	40021000 	.word	0x40021000
 8001ccc:	40021400 	.word	0x40021400
 8001cd0:	40021800 	.word	0x40021800
 8001cd4:	40021c00 	.word	0x40021c00
 8001cd8:	40022000 	.word	0x40022000
 8001cdc:	40022400 	.word	0x40022400
 8001ce0:	40013c00 	.word	0x40013c00

08001ce4 <HAL_GPIO_ReadPin>:
 8001ce4:	b480      	push	{r7}
 8001ce6:	b085      	sub	sp, #20
 8001ce8:	af00      	add	r7, sp, #0
 8001cea:	6078      	str	r0, [r7, #4]
 8001cec:	460b      	mov	r3, r1
 8001cee:	807b      	strh	r3, [r7, #2]
 8001cf0:	687b      	ldr	r3, [r7, #4]
 8001cf2:	691a      	ldr	r2, [r3, #16]
 8001cf4:	887b      	ldrh	r3, [r7, #2]
 8001cf6:	4013      	ands	r3, r2
 8001cf8:	2b00      	cmp	r3, #0
 8001cfa:	d002      	beq.n	8001d02 <HAL_GPIO_ReadPin+0x1e>
 8001cfc:	2301      	movs	r3, #1
 8001cfe:	73fb      	strb	r3, [r7, #15]
 8001d00:	e001      	b.n	8001d06 <HAL_GPIO_ReadPin+0x22>
 8001d02:	2300      	movs	r3, #0
 8001d04:	73fb      	strb	r3, [r7, #15]
 8001d06:	7bfb      	ldrb	r3, [r7, #15]
 8001d08:	4618      	mov	r0, r3
 8001d0a:	3714      	adds	r7, #20
 8001d0c:	46bd      	mov	sp, r7
 8001d0e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d12:	4770      	bx	lr

08001d14 <HAL_GPIO_WritePin>:
 8001d14:	b480      	push	{r7}
 8001d16:	b083      	sub	sp, #12
 8001d18:	af00      	add	r7, sp, #0
 8001d1a:	6078      	str	r0, [r7, #4]
 8001d1c:	460b      	mov	r3, r1
 8001d1e:	807b      	strh	r3, [r7, #2]
 8001d20:	4613      	mov	r3, r2
 8001d22:	707b      	strb	r3, [r7, #1]
 8001d24:	787b      	ldrb	r3, [r7, #1]
 8001d26:	2b00      	cmp	r3, #0
 8001d28:	d003      	beq.n	8001d32 <HAL_GPIO_WritePin+0x1e>
 8001d2a:	887a      	ldrh	r2, [r7, #2]
 8001d2c:	687b      	ldr	r3, [r7, #4]
 8001d2e:	619a      	str	r2, [r3, #24]
 8001d30:	e003      	b.n	8001d3a <HAL_GPIO_WritePin+0x26>
 8001d32:	887b      	ldrh	r3, [r7, #2]
 8001d34:	041a      	lsls	r2, r3, #16
 8001d36:	687b      	ldr	r3, [r7, #4]
 8001d38:	619a      	str	r2, [r3, #24]
 8001d3a:	bf00      	nop
 8001d3c:	370c      	adds	r7, #12
 8001d3e:	46bd      	mov	sp, r7
 8001d40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d44:	4770      	bx	lr

08001d46 <HAL_GPIO_TogglePin>:
 8001d46:	b480      	push	{r7}
 8001d48:	b085      	sub	sp, #20
 8001d4a:	af00      	add	r7, sp, #0
 8001d4c:	6078      	str	r0, [r7, #4]
 8001d4e:	460b      	mov	r3, r1
 8001d50:	807b      	strh	r3, [r7, #2]
 8001d52:	687b      	ldr	r3, [r7, #4]
 8001d54:	695b      	ldr	r3, [r3, #20]
 8001d56:	60fb      	str	r3, [r7, #12]
 8001d58:	887a      	ldrh	r2, [r7, #2]
 8001d5a:	68fb      	ldr	r3, [r7, #12]
 8001d5c:	4013      	ands	r3, r2
 8001d5e:	041a      	lsls	r2, r3, #16
 8001d60:	68fb      	ldr	r3, [r7, #12]
 8001d62:	43d9      	mvns	r1, r3
 8001d64:	887b      	ldrh	r3, [r7, #2]
 8001d66:	400b      	ands	r3, r1
 8001d68:	431a      	orrs	r2, r3
 8001d6a:	687b      	ldr	r3, [r7, #4]
 8001d6c:	619a      	str	r2, [r3, #24]
 8001d6e:	bf00      	nop
 8001d70:	3714      	adds	r7, #20
 8001d72:	46bd      	mov	sp, r7
 8001d74:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001d78:	4770      	bx	lr
	...

08001d7c <HAL_DMA_Init>:
 8001d7c:	b580      	push	{r7, lr}
 8001d7e:	b086      	sub	sp, #24
 8001d80:	af00      	add	r7, sp, #0
 8001d82:	6078      	str	r0, [r7, #4]
 8001d84:	2300      	movs	r3, #0
 8001d86:	617b      	str	r3, [r7, #20]
 8001d88:	f000 fc40 	bl	800260c <HAL_GetTick>
 8001d8c:	6138      	str	r0, [r7, #16]
 8001d8e:	687b      	ldr	r3, [r7, #4]
 8001d90:	2b00      	cmp	r3, #0
 8001d92:	d101      	bne.n	8001d98 <HAL_DMA_Init+0x1c>
 8001d94:	2301      	movs	r3, #1
 8001d96:	e099      	b.n	8001ecc <HAL_DMA_Init+0x150>
 8001d98:	687b      	ldr	r3, [r7, #4]
 8001d9a:	2202      	movs	r2, #2
 8001d9c:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001da0:	687b      	ldr	r3, [r7, #4]
 8001da2:	2200      	movs	r2, #0
 8001da4:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8001da8:	687b      	ldr	r3, [r7, #4]
 8001daa:	681b      	ldr	r3, [r3, #0]
 8001dac:	681a      	ldr	r2, [r3, #0]
 8001dae:	687b      	ldr	r3, [r7, #4]
 8001db0:	681b      	ldr	r3, [r3, #0]
 8001db2:	f022 0201 	bic.w	r2, r2, #1
 8001db6:	601a      	str	r2, [r3, #0]
 8001db8:	e00f      	b.n	8001dda <HAL_DMA_Init+0x5e>
 8001dba:	f000 fc27 	bl	800260c <HAL_GetTick>
 8001dbe:	4602      	mov	r2, r0
 8001dc0:	693b      	ldr	r3, [r7, #16]
 8001dc2:	1ad3      	subs	r3, r2, r3
 8001dc4:	2b05      	cmp	r3, #5
 8001dc6:	d908      	bls.n	8001dda <HAL_DMA_Init+0x5e>
 8001dc8:	687b      	ldr	r3, [r7, #4]
 8001dca:	2220      	movs	r2, #32
 8001dcc:	655a      	str	r2, [r3, #84]	@ 0x54
 8001dce:	687b      	ldr	r3, [r7, #4]
 8001dd0:	2203      	movs	r2, #3
 8001dd2:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001dd6:	2303      	movs	r3, #3
 8001dd8:	e078      	b.n	8001ecc <HAL_DMA_Init+0x150>
 8001dda:	687b      	ldr	r3, [r7, #4]
 8001ddc:	681b      	ldr	r3, [r3, #0]
 8001dde:	681b      	ldr	r3, [r3, #0]
 8001de0:	f003 0301 	and.w	r3, r3, #1
 8001de4:	2b00      	cmp	r3, #0
 8001de6:	d1e8      	bne.n	8001dba <HAL_DMA_Init+0x3e>
 8001de8:	687b      	ldr	r3, [r7, #4]
 8001dea:	681b      	ldr	r3, [r3, #0]
 8001dec:	681b      	ldr	r3, [r3, #0]
 8001dee:	617b      	str	r3, [r7, #20]
 8001df0:	697a      	ldr	r2, [r7, #20]
 8001df2:	4b38      	ldr	r3, [pc, #224]	@ (8001ed4 <HAL_DMA_Init+0x158>)
 8001df4:	4013      	ands	r3, r2
 8001df6:	617b      	str	r3, [r7, #20]
 8001df8:	687b      	ldr	r3, [r7, #4]
 8001dfa:	685a      	ldr	r2, [r3, #4]
 8001dfc:	687b      	ldr	r3, [r7, #4]
 8001dfe:	689b      	ldr	r3, [r3, #8]
 8001e00:	431a      	orrs	r2, r3
 8001e02:	687b      	ldr	r3, [r7, #4]
 8001e04:	68db      	ldr	r3, [r3, #12]
 8001e06:	431a      	orrs	r2, r3
 8001e08:	687b      	ldr	r3, [r7, #4]
 8001e0a:	691b      	ldr	r3, [r3, #16]
 8001e0c:	431a      	orrs	r2, r3
 8001e0e:	687b      	ldr	r3, [r7, #4]
 8001e10:	695b      	ldr	r3, [r3, #20]
 8001e12:	431a      	orrs	r2, r3
 8001e14:	687b      	ldr	r3, [r7, #4]
 8001e16:	699b      	ldr	r3, [r3, #24]
 8001e18:	431a      	orrs	r2, r3
 8001e1a:	687b      	ldr	r3, [r7, #4]
 8001e1c:	69db      	ldr	r3, [r3, #28]
 8001e1e:	431a      	orrs	r2, r3
 8001e20:	687b      	ldr	r3, [r7, #4]
 8001e22:	6a1b      	ldr	r3, [r3, #32]
 8001e24:	4313      	orrs	r3, r2
 8001e26:	697a      	ldr	r2, [r7, #20]
 8001e28:	4313      	orrs	r3, r2
 8001e2a:	617b      	str	r3, [r7, #20]
 8001e2c:	687b      	ldr	r3, [r7, #4]
 8001e2e:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001e30:	2b04      	cmp	r3, #4
 8001e32:	d107      	bne.n	8001e44 <HAL_DMA_Init+0xc8>
 8001e34:	687b      	ldr	r3, [r7, #4]
 8001e36:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8001e38:	687b      	ldr	r3, [r7, #4]
 8001e3a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8001e3c:	4313      	orrs	r3, r2
 8001e3e:	697a      	ldr	r2, [r7, #20]
 8001e40:	4313      	orrs	r3, r2
 8001e42:	617b      	str	r3, [r7, #20]
 8001e44:	687b      	ldr	r3, [r7, #4]
 8001e46:	681b      	ldr	r3, [r3, #0]
 8001e48:	697a      	ldr	r2, [r7, #20]
 8001e4a:	601a      	str	r2, [r3, #0]
 8001e4c:	687b      	ldr	r3, [r7, #4]
 8001e4e:	681b      	ldr	r3, [r3, #0]
 8001e50:	695b      	ldr	r3, [r3, #20]
 8001e52:	617b      	str	r3, [r7, #20]
 8001e54:	697b      	ldr	r3, [r7, #20]
 8001e56:	f023 0307 	bic.w	r3, r3, #7
 8001e5a:	617b      	str	r3, [r7, #20]
 8001e5c:	687b      	ldr	r3, [r7, #4]
 8001e5e:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001e60:	697a      	ldr	r2, [r7, #20]
 8001e62:	4313      	orrs	r3, r2
 8001e64:	617b      	str	r3, [r7, #20]
 8001e66:	687b      	ldr	r3, [r7, #4]
 8001e68:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8001e6a:	2b04      	cmp	r3, #4
 8001e6c:	d117      	bne.n	8001e9e <HAL_DMA_Init+0x122>
 8001e6e:	687b      	ldr	r3, [r7, #4]
 8001e70:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8001e72:	697a      	ldr	r2, [r7, #20]
 8001e74:	4313      	orrs	r3, r2
 8001e76:	617b      	str	r3, [r7, #20]
 8001e78:	687b      	ldr	r3, [r7, #4]
 8001e7a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8001e7c:	2b00      	cmp	r3, #0
 8001e7e:	d00e      	beq.n	8001e9e <HAL_DMA_Init+0x122>
 8001e80:	6878      	ldr	r0, [r7, #4]
 8001e82:	f000 faa5 	bl	80023d0 <DMA_CheckFifoParam>
 8001e86:	4603      	mov	r3, r0
 8001e88:	2b00      	cmp	r3, #0
 8001e8a:	d008      	beq.n	8001e9e <HAL_DMA_Init+0x122>
 8001e8c:	687b      	ldr	r3, [r7, #4]
 8001e8e:	2240      	movs	r2, #64	@ 0x40
 8001e90:	655a      	str	r2, [r3, #84]	@ 0x54
 8001e92:	687b      	ldr	r3, [r7, #4]
 8001e94:	2200      	movs	r2, #0
 8001e96:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001e9a:	2301      	movs	r3, #1
 8001e9c:	e016      	b.n	8001ecc <HAL_DMA_Init+0x150>
 8001e9e:	687b      	ldr	r3, [r7, #4]
 8001ea0:	681b      	ldr	r3, [r3, #0]
 8001ea2:	697a      	ldr	r2, [r7, #20]
 8001ea4:	615a      	str	r2, [r3, #20]
 8001ea6:	6878      	ldr	r0, [r7, #4]
 8001ea8:	f000 fa5c 	bl	8002364 <DMA_CalcBaseAndBitshift>
 8001eac:	4603      	mov	r3, r0
 8001eae:	60fb      	str	r3, [r7, #12]
 8001eb0:	687b      	ldr	r3, [r7, #4]
 8001eb2:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8001eb4:	223f      	movs	r2, #63	@ 0x3f
 8001eb6:	409a      	lsls	r2, r3
 8001eb8:	68fb      	ldr	r3, [r7, #12]
 8001eba:	609a      	str	r2, [r3, #8]
 8001ebc:	687b      	ldr	r3, [r7, #4]
 8001ebe:	2200      	movs	r2, #0
 8001ec0:	655a      	str	r2, [r3, #84]	@ 0x54
 8001ec2:	687b      	ldr	r3, [r7, #4]
 8001ec4:	2201      	movs	r2, #1
 8001ec6:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001eca:	2300      	movs	r3, #0
 8001ecc:	4618      	mov	r0, r3
 8001ece:	3718      	adds	r7, #24
 8001ed0:	46bd      	mov	sp, r7
 8001ed2:	bd80      	pop	{r7, pc}
 8001ed4:	f010803f 	.word	0xf010803f

08001ed8 <HAL_DMA_Start_IT>:
 8001ed8:	b580      	push	{r7, lr}
 8001eda:	b086      	sub	sp, #24
 8001edc:	af00      	add	r7, sp, #0
 8001ede:	60f8      	str	r0, [r7, #12]
 8001ee0:	60b9      	str	r1, [r7, #8]
 8001ee2:	607a      	str	r2, [r7, #4]
 8001ee4:	603b      	str	r3, [r7, #0]
 8001ee6:	2300      	movs	r3, #0
 8001ee8:	75fb      	strb	r3, [r7, #23]
 8001eea:	68fb      	ldr	r3, [r7, #12]
 8001eec:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8001eee:	613b      	str	r3, [r7, #16]
 8001ef0:	68fb      	ldr	r3, [r7, #12]
 8001ef2:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8001ef6:	2b01      	cmp	r3, #1
 8001ef8:	d101      	bne.n	8001efe <HAL_DMA_Start_IT+0x26>
 8001efa:	2302      	movs	r3, #2
 8001efc:	e048      	b.n	8001f90 <HAL_DMA_Start_IT+0xb8>
 8001efe:	68fb      	ldr	r3, [r7, #12]
 8001f00:	2201      	movs	r2, #1
 8001f02:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8001f06:	68fb      	ldr	r3, [r7, #12]
 8001f08:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8001f0c:	b2db      	uxtb	r3, r3
 8001f0e:	2b01      	cmp	r3, #1
 8001f10:	d137      	bne.n	8001f82 <HAL_DMA_Start_IT+0xaa>
 8001f12:	68fb      	ldr	r3, [r7, #12]
 8001f14:	2202      	movs	r2, #2
 8001f16:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001f1a:	68fb      	ldr	r3, [r7, #12]
 8001f1c:	2200      	movs	r2, #0
 8001f1e:	655a      	str	r2, [r3, #84]	@ 0x54
 8001f20:	683b      	ldr	r3, [r7, #0]
 8001f22:	687a      	ldr	r2, [r7, #4]
 8001f24:	68b9      	ldr	r1, [r7, #8]
 8001f26:	68f8      	ldr	r0, [r7, #12]
 8001f28:	f000 f9ee 	bl	8002308 <DMA_SetConfig>
 8001f2c:	68fb      	ldr	r3, [r7, #12]
 8001f2e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8001f30:	223f      	movs	r2, #63	@ 0x3f
 8001f32:	409a      	lsls	r2, r3
 8001f34:	693b      	ldr	r3, [r7, #16]
 8001f36:	609a      	str	r2, [r3, #8]
 8001f38:	68fb      	ldr	r3, [r7, #12]
 8001f3a:	681b      	ldr	r3, [r3, #0]
 8001f3c:	681a      	ldr	r2, [r3, #0]
 8001f3e:	68fb      	ldr	r3, [r7, #12]
 8001f40:	681b      	ldr	r3, [r3, #0]
 8001f42:	f042 0216 	orr.w	r2, r2, #22
 8001f46:	601a      	str	r2, [r3, #0]
 8001f48:	68fb      	ldr	r3, [r7, #12]
 8001f4a:	681b      	ldr	r3, [r3, #0]
 8001f4c:	695a      	ldr	r2, [r3, #20]
 8001f4e:	68fb      	ldr	r3, [r7, #12]
 8001f50:	681b      	ldr	r3, [r3, #0]
 8001f52:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
 8001f56:	615a      	str	r2, [r3, #20]
 8001f58:	68fb      	ldr	r3, [r7, #12]
 8001f5a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8001f5c:	2b00      	cmp	r3, #0
 8001f5e:	d007      	beq.n	8001f70 <HAL_DMA_Start_IT+0x98>
 8001f60:	68fb      	ldr	r3, [r7, #12]
 8001f62:	681b      	ldr	r3, [r3, #0]
 8001f64:	681a      	ldr	r2, [r3, #0]
 8001f66:	68fb      	ldr	r3, [r7, #12]
 8001f68:	681b      	ldr	r3, [r3, #0]
 8001f6a:	f042 0208 	orr.w	r2, r2, #8
 8001f6e:	601a      	str	r2, [r3, #0]
 8001f70:	68fb      	ldr	r3, [r7, #12]
 8001f72:	681b      	ldr	r3, [r3, #0]
 8001f74:	681a      	ldr	r2, [r3, #0]
 8001f76:	68fb      	ldr	r3, [r7, #12]
 8001f78:	681b      	ldr	r3, [r3, #0]
 8001f7a:	f042 0201 	orr.w	r2, r2, #1
 8001f7e:	601a      	str	r2, [r3, #0]
 8001f80:	e005      	b.n	8001f8e <HAL_DMA_Start_IT+0xb6>
 8001f82:	68fb      	ldr	r3, [r7, #12]
 8001f84:	2200      	movs	r2, #0
 8001f86:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8001f8a:	2302      	movs	r3, #2
 8001f8c:	75fb      	strb	r3, [r7, #23]
 8001f8e:	7dfb      	ldrb	r3, [r7, #23]
 8001f90:	4618      	mov	r0, r3
 8001f92:	3718      	adds	r7, #24
 8001f94:	46bd      	mov	sp, r7
 8001f96:	bd80      	pop	{r7, pc}

08001f98 <HAL_DMA_Abort_IT>:
 8001f98:	b480      	push	{r7}
 8001f9a:	b083      	sub	sp, #12
 8001f9c:	af00      	add	r7, sp, #0
 8001f9e:	6078      	str	r0, [r7, #4]
 8001fa0:	687b      	ldr	r3, [r7, #4]
 8001fa2:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8001fa6:	b2db      	uxtb	r3, r3
 8001fa8:	2b02      	cmp	r3, #2
 8001faa:	d004      	beq.n	8001fb6 <HAL_DMA_Abort_IT+0x1e>
 8001fac:	687b      	ldr	r3, [r7, #4]
 8001fae:	2280      	movs	r2, #128	@ 0x80
 8001fb0:	655a      	str	r2, [r3, #84]	@ 0x54
 8001fb2:	2301      	movs	r3, #1
 8001fb4:	e00c      	b.n	8001fd0 <HAL_DMA_Abort_IT+0x38>
 8001fb6:	687b      	ldr	r3, [r7, #4]
 8001fb8:	2205      	movs	r2, #5
 8001fba:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8001fbe:	687b      	ldr	r3, [r7, #4]
 8001fc0:	681b      	ldr	r3, [r3, #0]
 8001fc2:	681a      	ldr	r2, [r3, #0]
 8001fc4:	687b      	ldr	r3, [r7, #4]
 8001fc6:	681b      	ldr	r3, [r3, #0]
 8001fc8:	f022 0201 	bic.w	r2, r2, #1
 8001fcc:	601a      	str	r2, [r3, #0]
 8001fce:	2300      	movs	r3, #0
 8001fd0:	4618      	mov	r0, r3
 8001fd2:	370c      	adds	r7, #12
 8001fd4:	46bd      	mov	sp, r7
 8001fd6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001fda:	4770      	bx	lr

08001fdc <HAL_DMA_IRQHandler>:
 8001fdc:	b580      	push	{r7, lr}
 8001fde:	b086      	sub	sp, #24
 8001fe0:	af00      	add	r7, sp, #0
 8001fe2:	6078      	str	r0, [r7, #4]
 8001fe4:	2300      	movs	r3, #0
 8001fe6:	60bb      	str	r3, [r7, #8]
 8001fe8:	4b8e      	ldr	r3, [pc, #568]	@ (8002224 <HAL_DMA_IRQHandler+0x248>)
 8001fea:	681b      	ldr	r3, [r3, #0]
 8001fec:	4a8e      	ldr	r2, [pc, #568]	@ (8002228 <HAL_DMA_IRQHandler+0x24c>)
 8001fee:	fba2 2303 	umull	r2, r3, r2, r3
 8001ff2:	0a9b      	lsrs	r3, r3, #10
 8001ff4:	617b      	str	r3, [r7, #20]
 8001ff6:	687b      	ldr	r3, [r7, #4]
 8001ff8:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8001ffa:	613b      	str	r3, [r7, #16]
 8001ffc:	693b      	ldr	r3, [r7, #16]
 8001ffe:	681b      	ldr	r3, [r3, #0]
 8002000:	60fb      	str	r3, [r7, #12]
 8002002:	687b      	ldr	r3, [r7, #4]
 8002004:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002006:	2208      	movs	r2, #8
 8002008:	409a      	lsls	r2, r3
 800200a:	68fb      	ldr	r3, [r7, #12]
 800200c:	4013      	ands	r3, r2
 800200e:	2b00      	cmp	r3, #0
 8002010:	d01a      	beq.n	8002048 <HAL_DMA_IRQHandler+0x6c>
 8002012:	687b      	ldr	r3, [r7, #4]
 8002014:	681b      	ldr	r3, [r3, #0]
 8002016:	681b      	ldr	r3, [r3, #0]
 8002018:	f003 0304 	and.w	r3, r3, #4
 800201c:	2b00      	cmp	r3, #0
 800201e:	d013      	beq.n	8002048 <HAL_DMA_IRQHandler+0x6c>
 8002020:	687b      	ldr	r3, [r7, #4]
 8002022:	681b      	ldr	r3, [r3, #0]
 8002024:	681a      	ldr	r2, [r3, #0]
 8002026:	687b      	ldr	r3, [r7, #4]
 8002028:	681b      	ldr	r3, [r3, #0]
 800202a:	f022 0204 	bic.w	r2, r2, #4
 800202e:	601a      	str	r2, [r3, #0]
 8002030:	687b      	ldr	r3, [r7, #4]
 8002032:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002034:	2208      	movs	r2, #8
 8002036:	409a      	lsls	r2, r3
 8002038:	693b      	ldr	r3, [r7, #16]
 800203a:	609a      	str	r2, [r3, #8]
 800203c:	687b      	ldr	r3, [r7, #4]
 800203e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8002040:	f043 0201 	orr.w	r2, r3, #1
 8002044:	687b      	ldr	r3, [r7, #4]
 8002046:	655a      	str	r2, [r3, #84]	@ 0x54
 8002048:	687b      	ldr	r3, [r7, #4]
 800204a:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800204c:	2201      	movs	r2, #1
 800204e:	409a      	lsls	r2, r3
 8002050:	68fb      	ldr	r3, [r7, #12]
 8002052:	4013      	ands	r3, r2
 8002054:	2b00      	cmp	r3, #0
 8002056:	d012      	beq.n	800207e <HAL_DMA_IRQHandler+0xa2>
 8002058:	687b      	ldr	r3, [r7, #4]
 800205a:	681b      	ldr	r3, [r3, #0]
 800205c:	695b      	ldr	r3, [r3, #20]
 800205e:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8002062:	2b00      	cmp	r3, #0
 8002064:	d00b      	beq.n	800207e <HAL_DMA_IRQHandler+0xa2>
 8002066:	687b      	ldr	r3, [r7, #4]
 8002068:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800206a:	2201      	movs	r2, #1
 800206c:	409a      	lsls	r2, r3
 800206e:	693b      	ldr	r3, [r7, #16]
 8002070:	609a      	str	r2, [r3, #8]
 8002072:	687b      	ldr	r3, [r7, #4]
 8002074:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8002076:	f043 0202 	orr.w	r2, r3, #2
 800207a:	687b      	ldr	r3, [r7, #4]
 800207c:	655a      	str	r2, [r3, #84]	@ 0x54
 800207e:	687b      	ldr	r3, [r7, #4]
 8002080:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002082:	2204      	movs	r2, #4
 8002084:	409a      	lsls	r2, r3
 8002086:	68fb      	ldr	r3, [r7, #12]
 8002088:	4013      	ands	r3, r2
 800208a:	2b00      	cmp	r3, #0
 800208c:	d012      	beq.n	80020b4 <HAL_DMA_IRQHandler+0xd8>
 800208e:	687b      	ldr	r3, [r7, #4]
 8002090:	681b      	ldr	r3, [r3, #0]
 8002092:	681b      	ldr	r3, [r3, #0]
 8002094:	f003 0302 	and.w	r3, r3, #2
 8002098:	2b00      	cmp	r3, #0
 800209a:	d00b      	beq.n	80020b4 <HAL_DMA_IRQHandler+0xd8>
 800209c:	687b      	ldr	r3, [r7, #4]
 800209e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020a0:	2204      	movs	r2, #4
 80020a2:	409a      	lsls	r2, r3
 80020a4:	693b      	ldr	r3, [r7, #16]
 80020a6:	609a      	str	r2, [r3, #8]
 80020a8:	687b      	ldr	r3, [r7, #4]
 80020aa:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80020ac:	f043 0204 	orr.w	r2, r3, #4
 80020b0:	687b      	ldr	r3, [r7, #4]
 80020b2:	655a      	str	r2, [r3, #84]	@ 0x54
 80020b4:	687b      	ldr	r3, [r7, #4]
 80020b6:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020b8:	2210      	movs	r2, #16
 80020ba:	409a      	lsls	r2, r3
 80020bc:	68fb      	ldr	r3, [r7, #12]
 80020be:	4013      	ands	r3, r2
 80020c0:	2b00      	cmp	r3, #0
 80020c2:	d043      	beq.n	800214c <HAL_DMA_IRQHandler+0x170>
 80020c4:	687b      	ldr	r3, [r7, #4]
 80020c6:	681b      	ldr	r3, [r3, #0]
 80020c8:	681b      	ldr	r3, [r3, #0]
 80020ca:	f003 0308 	and.w	r3, r3, #8
 80020ce:	2b00      	cmp	r3, #0
 80020d0:	d03c      	beq.n	800214c <HAL_DMA_IRQHandler+0x170>
 80020d2:	687b      	ldr	r3, [r7, #4]
 80020d4:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80020d6:	2210      	movs	r2, #16
 80020d8:	409a      	lsls	r2, r3
 80020da:	693b      	ldr	r3, [r7, #16]
 80020dc:	609a      	str	r2, [r3, #8]
 80020de:	687b      	ldr	r3, [r7, #4]
 80020e0:	681b      	ldr	r3, [r3, #0]
 80020e2:	681b      	ldr	r3, [r3, #0]
 80020e4:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 80020e8:	2b00      	cmp	r3, #0
 80020ea:	d018      	beq.n	800211e <HAL_DMA_IRQHandler+0x142>
 80020ec:	687b      	ldr	r3, [r7, #4]
 80020ee:	681b      	ldr	r3, [r3, #0]
 80020f0:	681b      	ldr	r3, [r3, #0]
 80020f2:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 80020f6:	2b00      	cmp	r3, #0
 80020f8:	d108      	bne.n	800210c <HAL_DMA_IRQHandler+0x130>
 80020fa:	687b      	ldr	r3, [r7, #4]
 80020fc:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80020fe:	2b00      	cmp	r3, #0
 8002100:	d024      	beq.n	800214c <HAL_DMA_IRQHandler+0x170>
 8002102:	687b      	ldr	r3, [r7, #4]
 8002104:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002106:	6878      	ldr	r0, [r7, #4]
 8002108:	4798      	blx	r3
 800210a:	e01f      	b.n	800214c <HAL_DMA_IRQHandler+0x170>
 800210c:	687b      	ldr	r3, [r7, #4]
 800210e:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8002110:	2b00      	cmp	r3, #0
 8002112:	d01b      	beq.n	800214c <HAL_DMA_IRQHandler+0x170>
 8002114:	687b      	ldr	r3, [r7, #4]
 8002116:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8002118:	6878      	ldr	r0, [r7, #4]
 800211a:	4798      	blx	r3
 800211c:	e016      	b.n	800214c <HAL_DMA_IRQHandler+0x170>
 800211e:	687b      	ldr	r3, [r7, #4]
 8002120:	681b      	ldr	r3, [r3, #0]
 8002122:	681b      	ldr	r3, [r3, #0]
 8002124:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8002128:	2b00      	cmp	r3, #0
 800212a:	d107      	bne.n	800213c <HAL_DMA_IRQHandler+0x160>
 800212c:	687b      	ldr	r3, [r7, #4]
 800212e:	681b      	ldr	r3, [r3, #0]
 8002130:	681a      	ldr	r2, [r3, #0]
 8002132:	687b      	ldr	r3, [r7, #4]
 8002134:	681b      	ldr	r3, [r3, #0]
 8002136:	f022 0208 	bic.w	r2, r2, #8
 800213a:	601a      	str	r2, [r3, #0]
 800213c:	687b      	ldr	r3, [r7, #4]
 800213e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002140:	2b00      	cmp	r3, #0
 8002142:	d003      	beq.n	800214c <HAL_DMA_IRQHandler+0x170>
 8002144:	687b      	ldr	r3, [r7, #4]
 8002146:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8002148:	6878      	ldr	r0, [r7, #4]
 800214a:	4798      	blx	r3
 800214c:	687b      	ldr	r3, [r7, #4]
 800214e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002150:	2220      	movs	r2, #32
 8002152:	409a      	lsls	r2, r3
 8002154:	68fb      	ldr	r3, [r7, #12]
 8002156:	4013      	ands	r3, r2
 8002158:	2b00      	cmp	r3, #0
 800215a:	f000 808f 	beq.w	800227c <HAL_DMA_IRQHandler+0x2a0>
 800215e:	687b      	ldr	r3, [r7, #4]
 8002160:	681b      	ldr	r3, [r3, #0]
 8002162:	681b      	ldr	r3, [r3, #0]
 8002164:	f003 0310 	and.w	r3, r3, #16
 8002168:	2b00      	cmp	r3, #0
 800216a:	f000 8087 	beq.w	800227c <HAL_DMA_IRQHandler+0x2a0>
 800216e:	687b      	ldr	r3, [r7, #4]
 8002170:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8002172:	2220      	movs	r2, #32
 8002174:	409a      	lsls	r2, r3
 8002176:	693b      	ldr	r3, [r7, #16]
 8002178:	609a      	str	r2, [r3, #8]
 800217a:	687b      	ldr	r3, [r7, #4]
 800217c:	f893 3035 	ldrb.w	r3, [r3, #53]	@ 0x35
 8002180:	b2db      	uxtb	r3, r3
 8002182:	2b05      	cmp	r3, #5
 8002184:	d136      	bne.n	80021f4 <HAL_DMA_IRQHandler+0x218>
 8002186:	687b      	ldr	r3, [r7, #4]
 8002188:	681b      	ldr	r3, [r3, #0]
 800218a:	681a      	ldr	r2, [r3, #0]
 800218c:	687b      	ldr	r3, [r7, #4]
 800218e:	681b      	ldr	r3, [r3, #0]
 8002190:	f022 0216 	bic.w	r2, r2, #22
 8002194:	601a      	str	r2, [r3, #0]
 8002196:	687b      	ldr	r3, [r7, #4]
 8002198:	681b      	ldr	r3, [r3, #0]
 800219a:	695a      	ldr	r2, [r3, #20]
 800219c:	687b      	ldr	r3, [r7, #4]
 800219e:	681b      	ldr	r3, [r3, #0]
 80021a0:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
 80021a4:	615a      	str	r2, [r3, #20]
 80021a6:	687b      	ldr	r3, [r7, #4]
 80021a8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80021aa:	2b00      	cmp	r3, #0
 80021ac:	d103      	bne.n	80021b6 <HAL_DMA_IRQHandler+0x1da>
 80021ae:	687b      	ldr	r3, [r7, #4]
 80021b0:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80021b2:	2b00      	cmp	r3, #0
 80021b4:	d007      	beq.n	80021c6 <HAL_DMA_IRQHandler+0x1ea>
 80021b6:	687b      	ldr	r3, [r7, #4]
 80021b8:	681b      	ldr	r3, [r3, #0]
 80021ba:	681a      	ldr	r2, [r3, #0]
 80021bc:	687b      	ldr	r3, [r7, #4]
 80021be:	681b      	ldr	r3, [r3, #0]
 80021c0:	f022 0208 	bic.w	r2, r2, #8
 80021c4:	601a      	str	r2, [r3, #0]
 80021c6:	687b      	ldr	r3, [r7, #4]
 80021c8:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80021ca:	223f      	movs	r2, #63	@ 0x3f
 80021cc:	409a      	lsls	r2, r3
 80021ce:	693b      	ldr	r3, [r7, #16]
 80021d0:	609a      	str	r2, [r3, #8]
 80021d2:	687b      	ldr	r3, [r7, #4]
 80021d4:	2201      	movs	r2, #1
 80021d6:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 80021da:	687b      	ldr	r3, [r7, #4]
 80021dc:	2200      	movs	r2, #0
 80021de:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80021e2:	687b      	ldr	r3, [r7, #4]
 80021e4:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80021e6:	2b00      	cmp	r3, #0
 80021e8:	d07e      	beq.n	80022e8 <HAL_DMA_IRQHandler+0x30c>
 80021ea:	687b      	ldr	r3, [r7, #4]
 80021ec:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80021ee:	6878      	ldr	r0, [r7, #4]
 80021f0:	4798      	blx	r3
 80021f2:	e079      	b.n	80022e8 <HAL_DMA_IRQHandler+0x30c>
 80021f4:	687b      	ldr	r3, [r7, #4]
 80021f6:	681b      	ldr	r3, [r3, #0]
 80021f8:	681b      	ldr	r3, [r3, #0]
 80021fa:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 80021fe:	2b00      	cmp	r3, #0
 8002200:	d01d      	beq.n	800223e <HAL_DMA_IRQHandler+0x262>
 8002202:	687b      	ldr	r3, [r7, #4]
 8002204:	681b      	ldr	r3, [r3, #0]
 8002206:	681b      	ldr	r3, [r3, #0]
 8002208:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 800220c:	2b00      	cmp	r3, #0
 800220e:	d10d      	bne.n	800222c <HAL_DMA_IRQHandler+0x250>
 8002210:	687b      	ldr	r3, [r7, #4]
 8002212:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8002214:	2b00      	cmp	r3, #0
 8002216:	d031      	beq.n	800227c <HAL_DMA_IRQHandler+0x2a0>
 8002218:	687b      	ldr	r3, [r7, #4]
 800221a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800221c:	6878      	ldr	r0, [r7, #4]
 800221e:	4798      	blx	r3
 8002220:	e02c      	b.n	800227c <HAL_DMA_IRQHandler+0x2a0>
 8002222:	bf00      	nop
 8002224:	20000000 	.word	0x20000000
 8002228:	1b4e81b5 	.word	0x1b4e81b5
 800222c:	687b      	ldr	r3, [r7, #4]
 800222e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8002230:	2b00      	cmp	r3, #0
 8002232:	d023      	beq.n	800227c <HAL_DMA_IRQHandler+0x2a0>
 8002234:	687b      	ldr	r3, [r7, #4]
 8002236:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8002238:	6878      	ldr	r0, [r7, #4]
 800223a:	4798      	blx	r3
 800223c:	e01e      	b.n	800227c <HAL_DMA_IRQHandler+0x2a0>
 800223e:	687b      	ldr	r3, [r7, #4]
 8002240:	681b      	ldr	r3, [r3, #0]
 8002242:	681b      	ldr	r3, [r3, #0]
 8002244:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8002248:	2b00      	cmp	r3, #0
 800224a:	d10f      	bne.n	800226c <HAL_DMA_IRQHandler+0x290>
 800224c:	687b      	ldr	r3, [r7, #4]
 800224e:	681b      	ldr	r3, [r3, #0]
 8002250:	681a      	ldr	r2, [r3, #0]
 8002252:	687b      	ldr	r3, [r7, #4]
 8002254:	681b      	ldr	r3, [r3, #0]
 8002256:	f022 0210 	bic.w	r2, r2, #16
 800225a:	601a      	str	r2, [r3, #0]
 800225c:	687b      	ldr	r3, [r7, #4]
 800225e:	2201      	movs	r2, #1
 8002260:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8002264:	687b      	ldr	r3, [r7, #4]
 8002266:	2200      	movs	r2, #0
 8002268:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800226c:	687b      	ldr	r3, [r7, #4]
 800226e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8002270:	2b00      	cmp	r3, #0
 8002272:	d003      	beq.n	800227c <HAL_DMA_IRQHandler+0x2a0>
 8002274:	687b      	ldr	r3, [r7, #4]
 8002276:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8002278:	6878      	ldr	r0, [r7, #4]
 800227a:	4798      	blx	r3
 800227c:	687b      	ldr	r3, [r7, #4]
 800227e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8002280:	2b00      	cmp	r3, #0
 8002282:	d032      	beq.n	80022ea <HAL_DMA_IRQHandler+0x30e>
 8002284:	687b      	ldr	r3, [r7, #4]
 8002286:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8002288:	f003 0301 	and.w	r3, r3, #1
 800228c:	2b00      	cmp	r3, #0
 800228e:	d022      	beq.n	80022d6 <HAL_DMA_IRQHandler+0x2fa>
 8002290:	687b      	ldr	r3, [r7, #4]
 8002292:	2205      	movs	r2, #5
 8002294:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 8002298:	687b      	ldr	r3, [r7, #4]
 800229a:	681b      	ldr	r3, [r3, #0]
 800229c:	681a      	ldr	r2, [r3, #0]
 800229e:	687b      	ldr	r3, [r7, #4]
 80022a0:	681b      	ldr	r3, [r3, #0]
 80022a2:	f022 0201 	bic.w	r2, r2, #1
 80022a6:	601a      	str	r2, [r3, #0]
 80022a8:	68bb      	ldr	r3, [r7, #8]
 80022aa:	3301      	adds	r3, #1
 80022ac:	60bb      	str	r3, [r7, #8]
 80022ae:	697a      	ldr	r2, [r7, #20]
 80022b0:	429a      	cmp	r2, r3
 80022b2:	d307      	bcc.n	80022c4 <HAL_DMA_IRQHandler+0x2e8>
 80022b4:	687b      	ldr	r3, [r7, #4]
 80022b6:	681b      	ldr	r3, [r3, #0]
 80022b8:	681b      	ldr	r3, [r3, #0]
 80022ba:	f003 0301 	and.w	r3, r3, #1
 80022be:	2b00      	cmp	r3, #0
 80022c0:	d1f2      	bne.n	80022a8 <HAL_DMA_IRQHandler+0x2cc>
 80022c2:	e000      	b.n	80022c6 <HAL_DMA_IRQHandler+0x2ea>
 80022c4:	bf00      	nop
 80022c6:	687b      	ldr	r3, [r7, #4]
 80022c8:	2201      	movs	r2, #1
 80022ca:	f883 2035 	strb.w	r2, [r3, #53]	@ 0x35
 80022ce:	687b      	ldr	r3, [r7, #4]
 80022d0:	2200      	movs	r2, #0
 80022d2:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80022d6:	687b      	ldr	r3, [r7, #4]
 80022d8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80022da:	2b00      	cmp	r3, #0
 80022dc:	d005      	beq.n	80022ea <HAL_DMA_IRQHandler+0x30e>
 80022de:	687b      	ldr	r3, [r7, #4]
 80022e0:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80022e2:	6878      	ldr	r0, [r7, #4]
 80022e4:	4798      	blx	r3
 80022e6:	e000      	b.n	80022ea <HAL_DMA_IRQHandler+0x30e>
 80022e8:	bf00      	nop
 80022ea:	3718      	adds	r7, #24
 80022ec:	46bd      	mov	sp, r7
 80022ee:	bd80      	pop	{r7, pc}

080022f0 <HAL_DMA_GetError>:
 80022f0:	b480      	push	{r7}
 80022f2:	b083      	sub	sp, #12
 80022f4:	af00      	add	r7, sp, #0
 80022f6:	6078      	str	r0, [r7, #4]
 80022f8:	687b      	ldr	r3, [r7, #4]
 80022fa:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80022fc:	4618      	mov	r0, r3
 80022fe:	370c      	adds	r7, #12
 8002300:	46bd      	mov	sp, r7
 8002302:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002306:	4770      	bx	lr

08002308 <DMA_SetConfig>:
 8002308:	b480      	push	{r7}
 800230a:	b085      	sub	sp, #20
 800230c:	af00      	add	r7, sp, #0
 800230e:	60f8      	str	r0, [r7, #12]
 8002310:	60b9      	str	r1, [r7, #8]
 8002312:	607a      	str	r2, [r7, #4]
 8002314:	603b      	str	r3, [r7, #0]
 8002316:	68fb      	ldr	r3, [r7, #12]
 8002318:	681b      	ldr	r3, [r3, #0]
 800231a:	681a      	ldr	r2, [r3, #0]
 800231c:	68fb      	ldr	r3, [r7, #12]
 800231e:	681b      	ldr	r3, [r3, #0]
 8002320:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
 8002324:	601a      	str	r2, [r3, #0]
 8002326:	68fb      	ldr	r3, [r7, #12]
 8002328:	681b      	ldr	r3, [r3, #0]
 800232a:	683a      	ldr	r2, [r7, #0]
 800232c:	605a      	str	r2, [r3, #4]
 800232e:	68fb      	ldr	r3, [r7, #12]
 8002330:	689b      	ldr	r3, [r3, #8]
 8002332:	2b40      	cmp	r3, #64	@ 0x40
 8002334:	d108      	bne.n	8002348 <DMA_SetConfig+0x40>
 8002336:	68fb      	ldr	r3, [r7, #12]
 8002338:	681b      	ldr	r3, [r3, #0]
 800233a:	687a      	ldr	r2, [r7, #4]
 800233c:	609a      	str	r2, [r3, #8]
 800233e:	68fb      	ldr	r3, [r7, #12]
 8002340:	681b      	ldr	r3, [r3, #0]
 8002342:	68ba      	ldr	r2, [r7, #8]
 8002344:	60da      	str	r2, [r3, #12]
 8002346:	e007      	b.n	8002358 <DMA_SetConfig+0x50>
 8002348:	68fb      	ldr	r3, [r7, #12]
 800234a:	681b      	ldr	r3, [r3, #0]
 800234c:	68ba      	ldr	r2, [r7, #8]
 800234e:	609a      	str	r2, [r3, #8]
 8002350:	68fb      	ldr	r3, [r7, #12]
 8002352:	681b      	ldr	r3, [r3, #0]
 8002354:	687a      	ldr	r2, [r7, #4]
 8002356:	60da      	str	r2, [r3, #12]
 8002358:	bf00      	nop
 800235a:	3714      	adds	r7, #20
 800235c:	46bd      	mov	sp, r7
 800235e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002362:	4770      	bx	lr

08002364 <DMA_CalcBaseAndBitshift>:
 8002364:	b480      	push	{r7}
 8002366:	b085      	sub	sp, #20
 8002368:	af00      	add	r7, sp, #0
 800236a:	6078      	str	r0, [r7, #4]
 800236c:	687b      	ldr	r3, [r7, #4]
 800236e:	681b      	ldr	r3, [r3, #0]
 8002370:	b2db      	uxtb	r3, r3
 8002372:	3b10      	subs	r3, #16
 8002374:	4a13      	ldr	r2, [pc, #76]	@ (80023c4 <DMA_CalcBaseAndBitshift+0x60>)
 8002376:	fba2 2303 	umull	r2, r3, r2, r3
 800237a:	091b      	lsrs	r3, r3, #4
 800237c:	60fb      	str	r3, [r7, #12]
 800237e:	4a12      	ldr	r2, [pc, #72]	@ (80023c8 <DMA_CalcBaseAndBitshift+0x64>)
 8002380:	68fb      	ldr	r3, [r7, #12]
 8002382:	4413      	add	r3, r2
 8002384:	781b      	ldrb	r3, [r3, #0]
 8002386:	461a      	mov	r2, r3
 8002388:	687b      	ldr	r3, [r7, #4]
 800238a:	65da      	str	r2, [r3, #92]	@ 0x5c
 800238c:	68fb      	ldr	r3, [r7, #12]
 800238e:	2b03      	cmp	r3, #3
 8002390:	d908      	bls.n	80023a4 <DMA_CalcBaseAndBitshift+0x40>
 8002392:	687b      	ldr	r3, [r7, #4]
 8002394:	681b      	ldr	r3, [r3, #0]
 8002396:	461a      	mov	r2, r3
 8002398:	4b0c      	ldr	r3, [pc, #48]	@ (80023cc <DMA_CalcBaseAndBitshift+0x68>)
 800239a:	4013      	ands	r3, r2
 800239c:	1d1a      	adds	r2, r3, #4
 800239e:	687b      	ldr	r3, [r7, #4]
 80023a0:	659a      	str	r2, [r3, #88]	@ 0x58
 80023a2:	e006      	b.n	80023b2 <DMA_CalcBaseAndBitshift+0x4e>
 80023a4:	687b      	ldr	r3, [r7, #4]
 80023a6:	681b      	ldr	r3, [r3, #0]
 80023a8:	461a      	mov	r2, r3
 80023aa:	4b08      	ldr	r3, [pc, #32]	@ (80023cc <DMA_CalcBaseAndBitshift+0x68>)
 80023ac:	4013      	ands	r3, r2
 80023ae:	687a      	ldr	r2, [r7, #4]
 80023b0:	6593      	str	r3, [r2, #88]	@ 0x58
 80023b2:	687b      	ldr	r3, [r7, #4]
 80023b4:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80023b6:	4618      	mov	r0, r3
 80023b8:	3714      	adds	r7, #20
 80023ba:	46bd      	mov	sp, r7
 80023bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80023c0:	4770      	bx	lr
 80023c2:	bf00      	nop
 80023c4:	aaaaaaab 	.word	0xaaaaaaab
 80023c8:	0800da58 	.word	0x0800da58
 80023cc:	fffffc00 	.word	0xfffffc00

080023d0 <DMA_CheckFifoParam>:
 80023d0:	b480      	push	{r7}
 80023d2:	b085      	sub	sp, #20
 80023d4:	af00      	add	r7, sp, #0
 80023d6:	6078      	str	r0, [r7, #4]
 80023d8:	2300      	movs	r3, #0
 80023da:	73fb      	strb	r3, [r7, #15]
 80023dc:	687b      	ldr	r3, [r7, #4]
 80023de:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80023e0:	60bb      	str	r3, [r7, #8]
 80023e2:	687b      	ldr	r3, [r7, #4]
 80023e4:	699b      	ldr	r3, [r3, #24]
 80023e6:	2b00      	cmp	r3, #0
 80023e8:	d11f      	bne.n	800242a <DMA_CheckFifoParam+0x5a>
 80023ea:	68bb      	ldr	r3, [r7, #8]
 80023ec:	2b03      	cmp	r3, #3
 80023ee:	d856      	bhi.n	800249e <DMA_CheckFifoParam+0xce>
 80023f0:	a201      	add	r2, pc, #4	@ (adr r2, 80023f8 <DMA_CheckFifoParam+0x28>)
 80023f2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80023f6:	bf00      	nop
 80023f8:	08002409 	.word	0x08002409
 80023fc:	0800241b 	.word	0x0800241b
 8002400:	08002409 	.word	0x08002409
 8002404:	0800249f 	.word	0x0800249f
 8002408:	687b      	ldr	r3, [r7, #4]
 800240a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800240c:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8002410:	2b00      	cmp	r3, #0
 8002412:	d046      	beq.n	80024a2 <DMA_CheckFifoParam+0xd2>
 8002414:	2301      	movs	r3, #1
 8002416:	73fb      	strb	r3, [r7, #15]
 8002418:	e043      	b.n	80024a2 <DMA_CheckFifoParam+0xd2>
 800241a:	687b      	ldr	r3, [r7, #4]
 800241c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800241e:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 8002422:	d140      	bne.n	80024a6 <DMA_CheckFifoParam+0xd6>
 8002424:	2301      	movs	r3, #1
 8002426:	73fb      	strb	r3, [r7, #15]
 8002428:	e03d      	b.n	80024a6 <DMA_CheckFifoParam+0xd6>
 800242a:	687b      	ldr	r3, [r7, #4]
 800242c:	699b      	ldr	r3, [r3, #24]
 800242e:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8002432:	d121      	bne.n	8002478 <DMA_CheckFifoParam+0xa8>
 8002434:	68bb      	ldr	r3, [r7, #8]
 8002436:	2b03      	cmp	r3, #3
 8002438:	d837      	bhi.n	80024aa <DMA_CheckFifoParam+0xda>
 800243a:	a201      	add	r2, pc, #4	@ (adr r2, 8002440 <DMA_CheckFifoParam+0x70>)
 800243c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002440:	08002451 	.word	0x08002451
 8002444:	08002457 	.word	0x08002457
 8002448:	08002451 	.word	0x08002451
 800244c:	08002469 	.word	0x08002469
 8002450:	2301      	movs	r3, #1
 8002452:	73fb      	strb	r3, [r7, #15]
 8002454:	e030      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 8002456:	687b      	ldr	r3, [r7, #4]
 8002458:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800245a:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 800245e:	2b00      	cmp	r3, #0
 8002460:	d025      	beq.n	80024ae <DMA_CheckFifoParam+0xde>
 8002462:	2301      	movs	r3, #1
 8002464:	73fb      	strb	r3, [r7, #15]
 8002466:	e022      	b.n	80024ae <DMA_CheckFifoParam+0xde>
 8002468:	687b      	ldr	r3, [r7, #4]
 800246a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800246c:	f1b3 7fc0 	cmp.w	r3, #25165824	@ 0x1800000
 8002470:	d11f      	bne.n	80024b2 <DMA_CheckFifoParam+0xe2>
 8002472:	2301      	movs	r3, #1
 8002474:	73fb      	strb	r3, [r7, #15]
 8002476:	e01c      	b.n	80024b2 <DMA_CheckFifoParam+0xe2>
 8002478:	68bb      	ldr	r3, [r7, #8]
 800247a:	2b02      	cmp	r3, #2
 800247c:	d903      	bls.n	8002486 <DMA_CheckFifoParam+0xb6>
 800247e:	68bb      	ldr	r3, [r7, #8]
 8002480:	2b03      	cmp	r3, #3
 8002482:	d003      	beq.n	800248c <DMA_CheckFifoParam+0xbc>
 8002484:	e018      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 8002486:	2301      	movs	r3, #1
 8002488:	73fb      	strb	r3, [r7, #15]
 800248a:	e015      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 800248c:	687b      	ldr	r3, [r7, #4]
 800248e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8002490:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8002494:	2b00      	cmp	r3, #0
 8002496:	d00e      	beq.n	80024b6 <DMA_CheckFifoParam+0xe6>
 8002498:	2301      	movs	r3, #1
 800249a:	73fb      	strb	r3, [r7, #15]
 800249c:	e00b      	b.n	80024b6 <DMA_CheckFifoParam+0xe6>
 800249e:	bf00      	nop
 80024a0:	e00a      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024a2:	bf00      	nop
 80024a4:	e008      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024a6:	bf00      	nop
 80024a8:	e006      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024aa:	bf00      	nop
 80024ac:	e004      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024ae:	bf00      	nop
 80024b0:	e002      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024b2:	bf00      	nop
 80024b4:	e000      	b.n	80024b8 <DMA_CheckFifoParam+0xe8>
 80024b6:	bf00      	nop
 80024b8:	7bfb      	ldrb	r3, [r7, #15]
 80024ba:	4618      	mov	r0, r3
 80024bc:	3714      	adds	r7, #20
 80024be:	46bd      	mov	sp, r7
 80024c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80024c4:	4770      	bx	lr
 80024c6:	bf00      	nop

080024c8 <HAL_PWREx_EnableOverDrive>:
 80024c8:	b580      	push	{r7, lr}
 80024ca:	b082      	sub	sp, #8
 80024cc:	af00      	add	r7, sp, #0
 80024ce:	2300      	movs	r3, #0
 80024d0:	607b      	str	r3, [r7, #4]
 80024d2:	4b23      	ldr	r3, [pc, #140]	@ (8002560 <HAL_PWREx_EnableOverDrive+0x98>)
 80024d4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80024d6:	4a22      	ldr	r2, [pc, #136]	@ (8002560 <HAL_PWREx_EnableOverDrive+0x98>)
 80024d8:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 80024dc:	6413      	str	r3, [r2, #64]	@ 0x40
 80024de:	4b20      	ldr	r3, [pc, #128]	@ (8002560 <HAL_PWREx_EnableOverDrive+0x98>)
 80024e0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80024e2:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80024e6:	603b      	str	r3, [r7, #0]
 80024e8:	683b      	ldr	r3, [r7, #0]
 80024ea:	4b1e      	ldr	r3, [pc, #120]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 80024ec:	681b      	ldr	r3, [r3, #0]
 80024ee:	4a1d      	ldr	r2, [pc, #116]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 80024f0:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80024f4:	6013      	str	r3, [r2, #0]
 80024f6:	f000 f889 	bl	800260c <HAL_GetTick>
 80024fa:	6078      	str	r0, [r7, #4]
 80024fc:	e009      	b.n	8002512 <HAL_PWREx_EnableOverDrive+0x4a>
 80024fe:	f000 f885 	bl	800260c <HAL_GetTick>
 8002502:	4602      	mov	r2, r0
 8002504:	687b      	ldr	r3, [r7, #4]
 8002506:	1ad3      	subs	r3, r2, r3
 8002508:	f5b3 7f7a 	cmp.w	r3, #1000	@ 0x3e8
 800250c:	d901      	bls.n	8002512 <HAL_PWREx_EnableOverDrive+0x4a>
 800250e:	2303      	movs	r3, #3
 8002510:	e022      	b.n	8002558 <HAL_PWREx_EnableOverDrive+0x90>
 8002512:	4b14      	ldr	r3, [pc, #80]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 8002514:	685b      	ldr	r3, [r3, #4]
 8002516:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 800251a:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 800251e:	d1ee      	bne.n	80024fe <HAL_PWREx_EnableOverDrive+0x36>
 8002520:	4b10      	ldr	r3, [pc, #64]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 8002522:	681b      	ldr	r3, [r3, #0]
 8002524:	4a0f      	ldr	r2, [pc, #60]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 8002526:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 800252a:	6013      	str	r3, [r2, #0]
 800252c:	f000 f86e 	bl	800260c <HAL_GetTick>
 8002530:	6078      	str	r0, [r7, #4]
 8002532:	e009      	b.n	8002548 <HAL_PWREx_EnableOverDrive+0x80>
 8002534:	f000 f86a 	bl	800260c <HAL_GetTick>
 8002538:	4602      	mov	r2, r0
 800253a:	687b      	ldr	r3, [r7, #4]
 800253c:	1ad3      	subs	r3, r2, r3
 800253e:	f5b3 7f7a 	cmp.w	r3, #1000	@ 0x3e8
 8002542:	d901      	bls.n	8002548 <HAL_PWREx_EnableOverDrive+0x80>
 8002544:	2303      	movs	r3, #3
 8002546:	e007      	b.n	8002558 <HAL_PWREx_EnableOverDrive+0x90>
 8002548:	4b06      	ldr	r3, [pc, #24]	@ (8002564 <HAL_PWREx_EnableOverDrive+0x9c>)
 800254a:	685b      	ldr	r3, [r3, #4]
 800254c:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002550:	f5b3 3f00 	cmp.w	r3, #131072	@ 0x20000
 8002554:	d1ee      	bne.n	8002534 <HAL_PWREx_EnableOverDrive+0x6c>
 8002556:	2300      	movs	r3, #0
 8002558:	4618      	mov	r0, r3
 800255a:	3708      	adds	r7, #8
 800255c:	46bd      	mov	sp, r7
 800255e:	bd80      	pop	{r7, pc}
 8002560:	40023800 	.word	0x40023800
 8002564:	40007000 	.word	0x40007000

08002568 <HAL_Init>:
 8002568:	b580      	push	{r7, lr}
 800256a:	af00      	add	r7, sp, #0
 800256c:	2003      	movs	r0, #3
 800256e:	f7fe f911 	bl	8000794 <HAL_NVIC_SetPriorityGrouping>
 8002572:	200f      	movs	r0, #15
 8002574:	f000 f806 	bl	8002584 <HAL_InitTick>
 8002578:	f00a f8aa 	bl	800c6d0 <HAL_MspInit>
 800257c:	2300      	movs	r3, #0
 800257e:	4618      	mov	r0, r3
 8002580:	bd80      	pop	{r7, pc}
	...

08002584 <HAL_InitTick>:
 8002584:	b580      	push	{r7, lr}
 8002586:	b082      	sub	sp, #8
 8002588:	af00      	add	r7, sp, #0
 800258a:	6078      	str	r0, [r7, #4]
 800258c:	4b12      	ldr	r3, [pc, #72]	@ (80025d8 <HAL_InitTick+0x54>)
 800258e:	681a      	ldr	r2, [r3, #0]
 8002590:	4b12      	ldr	r3, [pc, #72]	@ (80025dc <HAL_InitTick+0x58>)
 8002592:	781b      	ldrb	r3, [r3, #0]
 8002594:	4619      	mov	r1, r3
 8002596:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 800259a:	fbb3 f3f1 	udiv	r3, r3, r1
 800259e:	fbb2 f3f3 	udiv	r3, r2, r3
 80025a2:	4618      	mov	r0, r3
 80025a4:	f7fe f92b 	bl	80007fe <HAL_SYSTICK_Config>
 80025a8:	4603      	mov	r3, r0
 80025aa:	2b00      	cmp	r3, #0
 80025ac:	d001      	beq.n	80025b2 <HAL_InitTick+0x2e>
 80025ae:	2301      	movs	r3, #1
 80025b0:	e00e      	b.n	80025d0 <HAL_InitTick+0x4c>
 80025b2:	687b      	ldr	r3, [r7, #4]
 80025b4:	2b0f      	cmp	r3, #15
 80025b6:	d80a      	bhi.n	80025ce <HAL_InitTick+0x4a>
 80025b8:	2200      	movs	r2, #0
 80025ba:	6879      	ldr	r1, [r7, #4]
 80025bc:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80025c0:	f7fe f8f3 	bl	80007aa <HAL_NVIC_SetPriority>
 80025c4:	4a06      	ldr	r2, [pc, #24]	@ (80025e0 <HAL_InitTick+0x5c>)
 80025c6:	687b      	ldr	r3, [r7, #4]
 80025c8:	6013      	str	r3, [r2, #0]
 80025ca:	2300      	movs	r3, #0
 80025cc:	e000      	b.n	80025d0 <HAL_InitTick+0x4c>
 80025ce:	2301      	movs	r3, #1
 80025d0:	4618      	mov	r0, r3
 80025d2:	3708      	adds	r7, #8
 80025d4:	46bd      	mov	sp, r7
 80025d6:	bd80      	pop	{r7, pc}
 80025d8:	20000000 	.word	0x20000000
 80025dc:	20000008 	.word	0x20000008
 80025e0:	20000004 	.word	0x20000004

080025e4 <HAL_IncTick>:
 80025e4:	b480      	push	{r7}
 80025e6:	af00      	add	r7, sp, #0
 80025e8:	4b06      	ldr	r3, [pc, #24]	@ (8002604 <HAL_IncTick+0x20>)
 80025ea:	781b      	ldrb	r3, [r3, #0]
 80025ec:	461a      	mov	r2, r3
 80025ee:	4b06      	ldr	r3, [pc, #24]	@ (8002608 <HAL_IncTick+0x24>)
 80025f0:	681b      	ldr	r3, [r3, #0]
 80025f2:	4413      	add	r3, r2
 80025f4:	4a04      	ldr	r2, [pc, #16]	@ (8002608 <HAL_IncTick+0x24>)
 80025f6:	6013      	str	r3, [r2, #0]
 80025f8:	bf00      	nop
 80025fa:	46bd      	mov	sp, r7
 80025fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002600:	4770      	bx	lr
 8002602:	bf00      	nop
 8002604:	20000008 	.word	0x20000008
 8002608:	20000080 	.word	0x20000080

0800260c <HAL_GetTick>:
 800260c:	b480      	push	{r7}
 800260e:	af00      	add	r7, sp, #0
 8002610:	4b03      	ldr	r3, [pc, #12]	@ (8002620 <HAL_GetTick+0x14>)
 8002612:	681b      	ldr	r3, [r3, #0]
 8002614:	4618      	mov	r0, r3
 8002616:	46bd      	mov	sp, r7
 8002618:	f85d 7b04 	ldr.w	r7, [sp], #4
 800261c:	4770      	bx	lr
 800261e:	bf00      	nop
 8002620:	20000080 	.word	0x20000080

08002624 <HAL_Delay>:
 8002624:	b580      	push	{r7, lr}
 8002626:	b084      	sub	sp, #16
 8002628:	af00      	add	r7, sp, #0
 800262a:	6078      	str	r0, [r7, #4]
 800262c:	f7ff ffee 	bl	800260c <HAL_GetTick>
 8002630:	60b8      	str	r0, [r7, #8]
 8002632:	687b      	ldr	r3, [r7, #4]
 8002634:	60fb      	str	r3, [r7, #12]
 8002636:	68fb      	ldr	r3, [r7, #12]
 8002638:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800263c:	d005      	beq.n	800264a <HAL_Delay+0x26>
 800263e:	4b0a      	ldr	r3, [pc, #40]	@ (8002668 <HAL_Delay+0x44>)
 8002640:	781b      	ldrb	r3, [r3, #0]
 8002642:	461a      	mov	r2, r3
 8002644:	68fb      	ldr	r3, [r7, #12]
 8002646:	4413      	add	r3, r2
 8002648:	60fb      	str	r3, [r7, #12]
 800264a:	bf00      	nop
 800264c:	f7ff ffde 	bl	800260c <HAL_GetTick>
 8002650:	4602      	mov	r2, r0
 8002652:	68bb      	ldr	r3, [r7, #8]
 8002654:	1ad3      	subs	r3, r2, r3
 8002656:	68fa      	ldr	r2, [r7, #12]
 8002658:	429a      	cmp	r2, r3
 800265a:	d8f7      	bhi.n	800264c <HAL_Delay+0x28>
 800265c:	bf00      	nop
 800265e:	bf00      	nop
 8002660:	3710      	adds	r7, #16
 8002662:	46bd      	mov	sp, r7
 8002664:	bd80      	pop	{r7, pc}
 8002666:	bf00      	nop
 8002668:	20000008 	.word	0x20000008

0800266c <SDMMC_Init>:
 800266c:	b084      	sub	sp, #16
 800266e:	b480      	push	{r7}
 8002670:	b085      	sub	sp, #20
 8002672:	af00      	add	r7, sp, #0
 8002674:	6078      	str	r0, [r7, #4]
 8002676:	f107 001c 	add.w	r0, r7, #28
 800267a:	e880 000e 	stmia.w	r0, {r1, r2, r3}
 800267e:	2300      	movs	r3, #0
 8002680:	60fb      	str	r3, [r7, #12]
 8002682:	69fa      	ldr	r2, [r7, #28]
 8002684:	6a3b      	ldr	r3, [r7, #32]
 8002686:	431a      	orrs	r2, r3
 8002688:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800268a:	431a      	orrs	r2, r3
 800268c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800268e:	431a      	orrs	r2, r3
 8002690:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8002692:	431a      	orrs	r2, r3
 8002694:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8002696:	4313      	orrs	r3, r2
 8002698:	68fa      	ldr	r2, [r7, #12]
 800269a:	4313      	orrs	r3, r2
 800269c:	60fb      	str	r3, [r7, #12]
 800269e:	687b      	ldr	r3, [r7, #4]
 80026a0:	685a      	ldr	r2, [r3, #4]
 80026a2:	4b07      	ldr	r3, [pc, #28]	@ (80026c0 <SDMMC_Init+0x54>)
 80026a4:	4013      	ands	r3, r2
 80026a6:	68fa      	ldr	r2, [r7, #12]
 80026a8:	431a      	orrs	r2, r3
 80026aa:	687b      	ldr	r3, [r7, #4]
 80026ac:	605a      	str	r2, [r3, #4]
 80026ae:	2300      	movs	r3, #0
 80026b0:	4618      	mov	r0, r3
 80026b2:	3714      	adds	r7, #20
 80026b4:	46bd      	mov	sp, r7
 80026b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026ba:	b004      	add	sp, #16
 80026bc:	4770      	bx	lr
 80026be:	bf00      	nop
 80026c0:	ffff8100 	.word	0xffff8100

080026c4 <SDMMC_ReadFIFO>:
 80026c4:	b480      	push	{r7}
 80026c6:	b083      	sub	sp, #12
 80026c8:	af00      	add	r7, sp, #0
 80026ca:	6078      	str	r0, [r7, #4]
 80026cc:	687b      	ldr	r3, [r7, #4]
 80026ce:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 80026d2:	4618      	mov	r0, r3
 80026d4:	370c      	adds	r7, #12
 80026d6:	46bd      	mov	sp, r7
 80026d8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026dc:	4770      	bx	lr

080026de <SDMMC_WriteFIFO>:
 80026de:	b480      	push	{r7}
 80026e0:	b083      	sub	sp, #12
 80026e2:	af00      	add	r7, sp, #0
 80026e4:	6078      	str	r0, [r7, #4]
 80026e6:	6039      	str	r1, [r7, #0]
 80026e8:	683b      	ldr	r3, [r7, #0]
 80026ea:	681a      	ldr	r2, [r3, #0]
 80026ec:	687b      	ldr	r3, [r7, #4]
 80026ee:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
 80026f2:	2300      	movs	r3, #0
 80026f4:	4618      	mov	r0, r3
 80026f6:	370c      	adds	r7, #12
 80026f8:	46bd      	mov	sp, r7
 80026fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026fe:	4770      	bx	lr

08002700 <SDMMC_PowerState_ON>:
 8002700:	b480      	push	{r7}
 8002702:	b083      	sub	sp, #12
 8002704:	af00      	add	r7, sp, #0
 8002706:	6078      	str	r0, [r7, #4]
 8002708:	687b      	ldr	r3, [r7, #4]
 800270a:	2203      	movs	r2, #3
 800270c:	601a      	str	r2, [r3, #0]
 800270e:	2300      	movs	r3, #0
 8002710:	4618      	mov	r0, r3
 8002712:	370c      	adds	r7, #12
 8002714:	46bd      	mov	sp, r7
 8002716:	f85d 7b04 	ldr.w	r7, [sp], #4
 800271a:	4770      	bx	lr

0800271c <SDMMC_GetPowerState>:
 800271c:	b480      	push	{r7}
 800271e:	b083      	sub	sp, #12
 8002720:	af00      	add	r7, sp, #0
 8002722:	6078      	str	r0, [r7, #4]
 8002724:	687b      	ldr	r3, [r7, #4]
 8002726:	681b      	ldr	r3, [r3, #0]
 8002728:	f003 0303 	and.w	r3, r3, #3
 800272c:	4618      	mov	r0, r3
 800272e:	370c      	adds	r7, #12
 8002730:	46bd      	mov	sp, r7
 8002732:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002736:	4770      	bx	lr

08002738 <SDMMC_SendCommand>:
 8002738:	b480      	push	{r7}
 800273a:	b085      	sub	sp, #20
 800273c:	af00      	add	r7, sp, #0
 800273e:	6078      	str	r0, [r7, #4]
 8002740:	6039      	str	r1, [r7, #0]
 8002742:	2300      	movs	r3, #0
 8002744:	60fb      	str	r3, [r7, #12]
 8002746:	683b      	ldr	r3, [r7, #0]
 8002748:	681a      	ldr	r2, [r3, #0]
 800274a:	687b      	ldr	r3, [r7, #4]
 800274c:	609a      	str	r2, [r3, #8]
 800274e:	683b      	ldr	r3, [r7, #0]
 8002750:	685a      	ldr	r2, [r3, #4]
 8002752:	683b      	ldr	r3, [r7, #0]
 8002754:	689b      	ldr	r3, [r3, #8]
 8002756:	431a      	orrs	r2, r3
 8002758:	683b      	ldr	r3, [r7, #0]
 800275a:	68db      	ldr	r3, [r3, #12]
 800275c:	431a      	orrs	r2, r3
 800275e:	683b      	ldr	r3, [r7, #0]
 8002760:	691b      	ldr	r3, [r3, #16]
 8002762:	4313      	orrs	r3, r2
 8002764:	68fa      	ldr	r2, [r7, #12]
 8002766:	4313      	orrs	r3, r2
 8002768:	60fb      	str	r3, [r7, #12]
 800276a:	687b      	ldr	r3, [r7, #4]
 800276c:	68da      	ldr	r2, [r3, #12]
 800276e:	4b06      	ldr	r3, [pc, #24]	@ (8002788 <SDMMC_SendCommand+0x50>)
 8002770:	4013      	ands	r3, r2
 8002772:	68fa      	ldr	r2, [r7, #12]
 8002774:	431a      	orrs	r2, r3
 8002776:	687b      	ldr	r3, [r7, #4]
 8002778:	60da      	str	r2, [r3, #12]
 800277a:	2300      	movs	r3, #0
 800277c:	4618      	mov	r0, r3
 800277e:	3714      	adds	r7, #20
 8002780:	46bd      	mov	sp, r7
 8002782:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002786:	4770      	bx	lr
 8002788:	fffff000 	.word	0xfffff000

0800278c <SDMMC_GetCommandResponse>:
 800278c:	b480      	push	{r7}
 800278e:	b083      	sub	sp, #12
 8002790:	af00      	add	r7, sp, #0
 8002792:	6078      	str	r0, [r7, #4]
 8002794:	687b      	ldr	r3, [r7, #4]
 8002796:	691b      	ldr	r3, [r3, #16]
 8002798:	b2db      	uxtb	r3, r3
 800279a:	4618      	mov	r0, r3
 800279c:	370c      	adds	r7, #12
 800279e:	46bd      	mov	sp, r7
 80027a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027a4:	4770      	bx	lr

080027a6 <SDMMC_GetResponse>:
 80027a6:	b480      	push	{r7}
 80027a8:	b085      	sub	sp, #20
 80027aa:	af00      	add	r7, sp, #0
 80027ac:	6078      	str	r0, [r7, #4]
 80027ae:	6039      	str	r1, [r7, #0]
 80027b0:	687b      	ldr	r3, [r7, #4]
 80027b2:	3314      	adds	r3, #20
 80027b4:	461a      	mov	r2, r3
 80027b6:	683b      	ldr	r3, [r7, #0]
 80027b8:	4413      	add	r3, r2
 80027ba:	60fb      	str	r3, [r7, #12]
 80027bc:	68fb      	ldr	r3, [r7, #12]
 80027be:	681b      	ldr	r3, [r3, #0]
 80027c0:	4618      	mov	r0, r3
 80027c2:	3714      	adds	r7, #20
 80027c4:	46bd      	mov	sp, r7
 80027c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027ca:	4770      	bx	lr

080027cc <SDMMC_ConfigData>:
 80027cc:	b480      	push	{r7}
 80027ce:	b085      	sub	sp, #20
 80027d0:	af00      	add	r7, sp, #0
 80027d2:	6078      	str	r0, [r7, #4]
 80027d4:	6039      	str	r1, [r7, #0]
 80027d6:	2300      	movs	r3, #0
 80027d8:	60fb      	str	r3, [r7, #12]
 80027da:	683b      	ldr	r3, [r7, #0]
 80027dc:	681a      	ldr	r2, [r3, #0]
 80027de:	687b      	ldr	r3, [r7, #4]
 80027e0:	625a      	str	r2, [r3, #36]	@ 0x24
 80027e2:	683b      	ldr	r3, [r7, #0]
 80027e4:	685a      	ldr	r2, [r3, #4]
 80027e6:	687b      	ldr	r3, [r7, #4]
 80027e8:	629a      	str	r2, [r3, #40]	@ 0x28
 80027ea:	683b      	ldr	r3, [r7, #0]
 80027ec:	689a      	ldr	r2, [r3, #8]
 80027ee:	683b      	ldr	r3, [r7, #0]
 80027f0:	68db      	ldr	r3, [r3, #12]
 80027f2:	431a      	orrs	r2, r3
 80027f4:	683b      	ldr	r3, [r7, #0]
 80027f6:	691b      	ldr	r3, [r3, #16]
 80027f8:	431a      	orrs	r2, r3
 80027fa:	683b      	ldr	r3, [r7, #0]
 80027fc:	695b      	ldr	r3, [r3, #20]
 80027fe:	4313      	orrs	r3, r2
 8002800:	68fa      	ldr	r2, [r7, #12]
 8002802:	4313      	orrs	r3, r2
 8002804:	60fb      	str	r3, [r7, #12]
 8002806:	687b      	ldr	r3, [r7, #4]
 8002808:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800280a:	f023 02f7 	bic.w	r2, r3, #247	@ 0xf7
 800280e:	68fb      	ldr	r3, [r7, #12]
 8002810:	431a      	orrs	r2, r3
 8002812:	687b      	ldr	r3, [r7, #4]
 8002814:	62da      	str	r2, [r3, #44]	@ 0x2c
 8002816:	2300      	movs	r3, #0
 8002818:	4618      	mov	r0, r3
 800281a:	3714      	adds	r7, #20
 800281c:	46bd      	mov	sp, r7
 800281e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002822:	4770      	bx	lr

08002824 <SDMMC_CmdBlockLength>:
 8002824:	b580      	push	{r7, lr}
 8002826:	b088      	sub	sp, #32
 8002828:	af00      	add	r7, sp, #0
 800282a:	6078      	str	r0, [r7, #4]
 800282c:	6039      	str	r1, [r7, #0]
 800282e:	683b      	ldr	r3, [r7, #0]
 8002830:	60bb      	str	r3, [r7, #8]
 8002832:	2310      	movs	r3, #16
 8002834:	60fb      	str	r3, [r7, #12]
 8002836:	2340      	movs	r3, #64	@ 0x40
 8002838:	613b      	str	r3, [r7, #16]
 800283a:	2300      	movs	r3, #0
 800283c:	617b      	str	r3, [r7, #20]
 800283e:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002842:	61bb      	str	r3, [r7, #24]
 8002844:	f107 0308 	add.w	r3, r7, #8
 8002848:	4619      	mov	r1, r3
 800284a:	6878      	ldr	r0, [r7, #4]
 800284c:	f7ff ff74 	bl	8002738 <SDMMC_SendCommand>
 8002850:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002854:	2110      	movs	r1, #16
 8002856:	6878      	ldr	r0, [r7, #4]
 8002858:	f000 f9d6 	bl	8002c08 <SDMMC_GetCmdResp1>
 800285c:	61f8      	str	r0, [r7, #28]
 800285e:	69fb      	ldr	r3, [r7, #28]
 8002860:	4618      	mov	r0, r3
 8002862:	3720      	adds	r7, #32
 8002864:	46bd      	mov	sp, r7
 8002866:	bd80      	pop	{r7, pc}

08002868 <SDMMC_CmdReadSingleBlock>:
 8002868:	b580      	push	{r7, lr}
 800286a:	b088      	sub	sp, #32
 800286c:	af00      	add	r7, sp, #0
 800286e:	6078      	str	r0, [r7, #4]
 8002870:	6039      	str	r1, [r7, #0]
 8002872:	683b      	ldr	r3, [r7, #0]
 8002874:	60bb      	str	r3, [r7, #8]
 8002876:	2311      	movs	r3, #17
 8002878:	60fb      	str	r3, [r7, #12]
 800287a:	2340      	movs	r3, #64	@ 0x40
 800287c:	613b      	str	r3, [r7, #16]
 800287e:	2300      	movs	r3, #0
 8002880:	617b      	str	r3, [r7, #20]
 8002882:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002886:	61bb      	str	r3, [r7, #24]
 8002888:	f107 0308 	add.w	r3, r7, #8
 800288c:	4619      	mov	r1, r3
 800288e:	6878      	ldr	r0, [r7, #4]
 8002890:	f7ff ff52 	bl	8002738 <SDMMC_SendCommand>
 8002894:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002898:	2111      	movs	r1, #17
 800289a:	6878      	ldr	r0, [r7, #4]
 800289c:	f000 f9b4 	bl	8002c08 <SDMMC_GetCmdResp1>
 80028a0:	61f8      	str	r0, [r7, #28]
 80028a2:	69fb      	ldr	r3, [r7, #28]
 80028a4:	4618      	mov	r0, r3
 80028a6:	3720      	adds	r7, #32
 80028a8:	46bd      	mov	sp, r7
 80028aa:	bd80      	pop	{r7, pc}

080028ac <SDMMC_CmdReadMultiBlock>:
 80028ac:	b580      	push	{r7, lr}
 80028ae:	b088      	sub	sp, #32
 80028b0:	af00      	add	r7, sp, #0
 80028b2:	6078      	str	r0, [r7, #4]
 80028b4:	6039      	str	r1, [r7, #0]
 80028b6:	683b      	ldr	r3, [r7, #0]
 80028b8:	60bb      	str	r3, [r7, #8]
 80028ba:	2312      	movs	r3, #18
 80028bc:	60fb      	str	r3, [r7, #12]
 80028be:	2340      	movs	r3, #64	@ 0x40
 80028c0:	613b      	str	r3, [r7, #16]
 80028c2:	2300      	movs	r3, #0
 80028c4:	617b      	str	r3, [r7, #20]
 80028c6:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80028ca:	61bb      	str	r3, [r7, #24]
 80028cc:	f107 0308 	add.w	r3, r7, #8
 80028d0:	4619      	mov	r1, r3
 80028d2:	6878      	ldr	r0, [r7, #4]
 80028d4:	f7ff ff30 	bl	8002738 <SDMMC_SendCommand>
 80028d8:	f241 3288 	movw	r2, #5000	@ 0x1388
 80028dc:	2112      	movs	r1, #18
 80028de:	6878      	ldr	r0, [r7, #4]
 80028e0:	f000 f992 	bl	8002c08 <SDMMC_GetCmdResp1>
 80028e4:	61f8      	str	r0, [r7, #28]
 80028e6:	69fb      	ldr	r3, [r7, #28]
 80028e8:	4618      	mov	r0, r3
 80028ea:	3720      	adds	r7, #32
 80028ec:	46bd      	mov	sp, r7
 80028ee:	bd80      	pop	{r7, pc}

080028f0 <SDMMC_CmdWriteSingleBlock>:
 80028f0:	b580      	push	{r7, lr}
 80028f2:	b088      	sub	sp, #32
 80028f4:	af00      	add	r7, sp, #0
 80028f6:	6078      	str	r0, [r7, #4]
 80028f8:	6039      	str	r1, [r7, #0]
 80028fa:	683b      	ldr	r3, [r7, #0]
 80028fc:	60bb      	str	r3, [r7, #8]
 80028fe:	2318      	movs	r3, #24
 8002900:	60fb      	str	r3, [r7, #12]
 8002902:	2340      	movs	r3, #64	@ 0x40
 8002904:	613b      	str	r3, [r7, #16]
 8002906:	2300      	movs	r3, #0
 8002908:	617b      	str	r3, [r7, #20]
 800290a:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 800290e:	61bb      	str	r3, [r7, #24]
 8002910:	f107 0308 	add.w	r3, r7, #8
 8002914:	4619      	mov	r1, r3
 8002916:	6878      	ldr	r0, [r7, #4]
 8002918:	f7ff ff0e 	bl	8002738 <SDMMC_SendCommand>
 800291c:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002920:	2118      	movs	r1, #24
 8002922:	6878      	ldr	r0, [r7, #4]
 8002924:	f000 f970 	bl	8002c08 <SDMMC_GetCmdResp1>
 8002928:	61f8      	str	r0, [r7, #28]
 800292a:	69fb      	ldr	r3, [r7, #28]
 800292c:	4618      	mov	r0, r3
 800292e:	3720      	adds	r7, #32
 8002930:	46bd      	mov	sp, r7
 8002932:	bd80      	pop	{r7, pc}

08002934 <SDMMC_CmdWriteMultiBlock>:
 8002934:	b580      	push	{r7, lr}
 8002936:	b088      	sub	sp, #32
 8002938:	af00      	add	r7, sp, #0
 800293a:	6078      	str	r0, [r7, #4]
 800293c:	6039      	str	r1, [r7, #0]
 800293e:	683b      	ldr	r3, [r7, #0]
 8002940:	60bb      	str	r3, [r7, #8]
 8002942:	2319      	movs	r3, #25
 8002944:	60fb      	str	r3, [r7, #12]
 8002946:	2340      	movs	r3, #64	@ 0x40
 8002948:	613b      	str	r3, [r7, #16]
 800294a:	2300      	movs	r3, #0
 800294c:	617b      	str	r3, [r7, #20]
 800294e:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002952:	61bb      	str	r3, [r7, #24]
 8002954:	f107 0308 	add.w	r3, r7, #8
 8002958:	4619      	mov	r1, r3
 800295a:	6878      	ldr	r0, [r7, #4]
 800295c:	f7ff feec 	bl	8002738 <SDMMC_SendCommand>
 8002960:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002964:	2119      	movs	r1, #25
 8002966:	6878      	ldr	r0, [r7, #4]
 8002968:	f000 f94e 	bl	8002c08 <SDMMC_GetCmdResp1>
 800296c:	61f8      	str	r0, [r7, #28]
 800296e:	69fb      	ldr	r3, [r7, #28]
 8002970:	4618      	mov	r0, r3
 8002972:	3720      	adds	r7, #32
 8002974:	46bd      	mov	sp, r7
 8002976:	bd80      	pop	{r7, pc}

08002978 <SDMMC_CmdStopTransfer>:
 8002978:	b580      	push	{r7, lr}
 800297a:	b088      	sub	sp, #32
 800297c:	af00      	add	r7, sp, #0
 800297e:	6078      	str	r0, [r7, #4]
 8002980:	2300      	movs	r3, #0
 8002982:	60bb      	str	r3, [r7, #8]
 8002984:	230c      	movs	r3, #12
 8002986:	60fb      	str	r3, [r7, #12]
 8002988:	2340      	movs	r3, #64	@ 0x40
 800298a:	613b      	str	r3, [r7, #16]
 800298c:	2300      	movs	r3, #0
 800298e:	617b      	str	r3, [r7, #20]
 8002990:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002994:	61bb      	str	r3, [r7, #24]
 8002996:	f107 0308 	add.w	r3, r7, #8
 800299a:	4619      	mov	r1, r3
 800299c:	6878      	ldr	r0, [r7, #4]
 800299e:	f7ff fecb 	bl	8002738 <SDMMC_SendCommand>
 80029a2:	4a05      	ldr	r2, [pc, #20]	@ (80029b8 <SDMMC_CmdStopTransfer+0x40>)
 80029a4:	210c      	movs	r1, #12
 80029a6:	6878      	ldr	r0, [r7, #4]
 80029a8:	f000 f92e 	bl	8002c08 <SDMMC_GetCmdResp1>
 80029ac:	61f8      	str	r0, [r7, #28]
 80029ae:	69fb      	ldr	r3, [r7, #28]
 80029b0:	4618      	mov	r0, r3
 80029b2:	3720      	adds	r7, #32
 80029b4:	46bd      	mov	sp, r7
 80029b6:	bd80      	pop	{r7, pc}
 80029b8:	05f5e100 	.word	0x05f5e100

080029bc <SDMMC_CmdSelDesel>:
 80029bc:	b580      	push	{r7, lr}
 80029be:	b08a      	sub	sp, #40	@ 0x28
 80029c0:	af00      	add	r7, sp, #0
 80029c2:	60f8      	str	r0, [r7, #12]
 80029c4:	e9c7 2300 	strd	r2, r3, [r7]
 80029c8:	683b      	ldr	r3, [r7, #0]
 80029ca:	613b      	str	r3, [r7, #16]
 80029cc:	2307      	movs	r3, #7
 80029ce:	617b      	str	r3, [r7, #20]
 80029d0:	2340      	movs	r3, #64	@ 0x40
 80029d2:	61bb      	str	r3, [r7, #24]
 80029d4:	2300      	movs	r3, #0
 80029d6:	61fb      	str	r3, [r7, #28]
 80029d8:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 80029dc:	623b      	str	r3, [r7, #32]
 80029de:	f107 0310 	add.w	r3, r7, #16
 80029e2:	4619      	mov	r1, r3
 80029e4:	68f8      	ldr	r0, [r7, #12]
 80029e6:	f7ff fea7 	bl	8002738 <SDMMC_SendCommand>
 80029ea:	f241 3288 	movw	r2, #5000	@ 0x1388
 80029ee:	2107      	movs	r1, #7
 80029f0:	68f8      	ldr	r0, [r7, #12]
 80029f2:	f000 f909 	bl	8002c08 <SDMMC_GetCmdResp1>
 80029f6:	6278      	str	r0, [r7, #36]	@ 0x24
 80029f8:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80029fa:	4618      	mov	r0, r3
 80029fc:	3728      	adds	r7, #40	@ 0x28
 80029fe:	46bd      	mov	sp, r7
 8002a00:	bd80      	pop	{r7, pc}

08002a02 <SDMMC_CmdGoIdleState>:
 8002a02:	b580      	push	{r7, lr}
 8002a04:	b088      	sub	sp, #32
 8002a06:	af00      	add	r7, sp, #0
 8002a08:	6078      	str	r0, [r7, #4]
 8002a0a:	2300      	movs	r3, #0
 8002a0c:	60bb      	str	r3, [r7, #8]
 8002a0e:	2300      	movs	r3, #0
 8002a10:	60fb      	str	r3, [r7, #12]
 8002a12:	2300      	movs	r3, #0
 8002a14:	613b      	str	r3, [r7, #16]
 8002a16:	2300      	movs	r3, #0
 8002a18:	617b      	str	r3, [r7, #20]
 8002a1a:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002a1e:	61bb      	str	r3, [r7, #24]
 8002a20:	f107 0308 	add.w	r3, r7, #8
 8002a24:	4619      	mov	r1, r3
 8002a26:	6878      	ldr	r0, [r7, #4]
 8002a28:	f7ff fe86 	bl	8002738 <SDMMC_SendCommand>
 8002a2c:	6878      	ldr	r0, [r7, #4]
 8002a2e:	f000 fb23 	bl	8003078 <SDMMC_GetCmdError>
 8002a32:	61f8      	str	r0, [r7, #28]
 8002a34:	69fb      	ldr	r3, [r7, #28]
 8002a36:	4618      	mov	r0, r3
 8002a38:	3720      	adds	r7, #32
 8002a3a:	46bd      	mov	sp, r7
 8002a3c:	bd80      	pop	{r7, pc}

08002a3e <SDMMC_CmdOperCond>:
 8002a3e:	b580      	push	{r7, lr}
 8002a40:	b088      	sub	sp, #32
 8002a42:	af00      	add	r7, sp, #0
 8002a44:	6078      	str	r0, [r7, #4]
 8002a46:	f44f 73d5 	mov.w	r3, #426	@ 0x1aa
 8002a4a:	60bb      	str	r3, [r7, #8]
 8002a4c:	2308      	movs	r3, #8
 8002a4e:	60fb      	str	r3, [r7, #12]
 8002a50:	2340      	movs	r3, #64	@ 0x40
 8002a52:	613b      	str	r3, [r7, #16]
 8002a54:	2300      	movs	r3, #0
 8002a56:	617b      	str	r3, [r7, #20]
 8002a58:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002a5c:	61bb      	str	r3, [r7, #24]
 8002a5e:	f107 0308 	add.w	r3, r7, #8
 8002a62:	4619      	mov	r1, r3
 8002a64:	6878      	ldr	r0, [r7, #4]
 8002a66:	f7ff fe67 	bl	8002738 <SDMMC_SendCommand>
 8002a6a:	6878      	ldr	r0, [r7, #4]
 8002a6c:	f000 fab6 	bl	8002fdc <SDMMC_GetCmdResp7>
 8002a70:	61f8      	str	r0, [r7, #28]
 8002a72:	69fb      	ldr	r3, [r7, #28]
 8002a74:	4618      	mov	r0, r3
 8002a76:	3720      	adds	r7, #32
 8002a78:	46bd      	mov	sp, r7
 8002a7a:	bd80      	pop	{r7, pc}

08002a7c <SDMMC_CmdAppCommand>:
 8002a7c:	b580      	push	{r7, lr}
 8002a7e:	b088      	sub	sp, #32
 8002a80:	af00      	add	r7, sp, #0
 8002a82:	6078      	str	r0, [r7, #4]
 8002a84:	6039      	str	r1, [r7, #0]
 8002a86:	683b      	ldr	r3, [r7, #0]
 8002a88:	60bb      	str	r3, [r7, #8]
 8002a8a:	2337      	movs	r3, #55	@ 0x37
 8002a8c:	60fb      	str	r3, [r7, #12]
 8002a8e:	2340      	movs	r3, #64	@ 0x40
 8002a90:	613b      	str	r3, [r7, #16]
 8002a92:	2300      	movs	r3, #0
 8002a94:	617b      	str	r3, [r7, #20]
 8002a96:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002a9a:	61bb      	str	r3, [r7, #24]
 8002a9c:	f107 0308 	add.w	r3, r7, #8
 8002aa0:	4619      	mov	r1, r3
 8002aa2:	6878      	ldr	r0, [r7, #4]
 8002aa4:	f7ff fe48 	bl	8002738 <SDMMC_SendCommand>
 8002aa8:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002aac:	2137      	movs	r1, #55	@ 0x37
 8002aae:	6878      	ldr	r0, [r7, #4]
 8002ab0:	f000 f8aa 	bl	8002c08 <SDMMC_GetCmdResp1>
 8002ab4:	61f8      	str	r0, [r7, #28]
 8002ab6:	69fb      	ldr	r3, [r7, #28]
 8002ab8:	4618      	mov	r0, r3
 8002aba:	3720      	adds	r7, #32
 8002abc:	46bd      	mov	sp, r7
 8002abe:	bd80      	pop	{r7, pc}

08002ac0 <SDMMC_CmdAppOperCommand>:
 8002ac0:	b580      	push	{r7, lr}
 8002ac2:	b088      	sub	sp, #32
 8002ac4:	af00      	add	r7, sp, #0
 8002ac6:	6078      	str	r0, [r7, #4]
 8002ac8:	6039      	str	r1, [r7, #0]
 8002aca:	683a      	ldr	r2, [r7, #0]
 8002acc:	4b0d      	ldr	r3, [pc, #52]	@ (8002b04 <SDMMC_CmdAppOperCommand+0x44>)
 8002ace:	4313      	orrs	r3, r2
 8002ad0:	60bb      	str	r3, [r7, #8]
 8002ad2:	2329      	movs	r3, #41	@ 0x29
 8002ad4:	60fb      	str	r3, [r7, #12]
 8002ad6:	2340      	movs	r3, #64	@ 0x40
 8002ad8:	613b      	str	r3, [r7, #16]
 8002ada:	2300      	movs	r3, #0
 8002adc:	617b      	str	r3, [r7, #20]
 8002ade:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002ae2:	61bb      	str	r3, [r7, #24]
 8002ae4:	f107 0308 	add.w	r3, r7, #8
 8002ae8:	4619      	mov	r1, r3
 8002aea:	6878      	ldr	r0, [r7, #4]
 8002aec:	f7ff fe24 	bl	8002738 <SDMMC_SendCommand>
 8002af0:	6878      	ldr	r0, [r7, #4]
 8002af2:	f000 f9bf 	bl	8002e74 <SDMMC_GetCmdResp3>
 8002af6:	61f8      	str	r0, [r7, #28]
 8002af8:	69fb      	ldr	r3, [r7, #28]
 8002afa:	4618      	mov	r0, r3
 8002afc:	3720      	adds	r7, #32
 8002afe:	46bd      	mov	sp, r7
 8002b00:	bd80      	pop	{r7, pc}
 8002b02:	bf00      	nop
 8002b04:	80100000 	.word	0x80100000

08002b08 <SDMMC_CmdSendCID>:
 8002b08:	b580      	push	{r7, lr}
 8002b0a:	b088      	sub	sp, #32
 8002b0c:	af00      	add	r7, sp, #0
 8002b0e:	6078      	str	r0, [r7, #4]
 8002b10:	2300      	movs	r3, #0
 8002b12:	60bb      	str	r3, [r7, #8]
 8002b14:	2302      	movs	r3, #2
 8002b16:	60fb      	str	r3, [r7, #12]
 8002b18:	23c0      	movs	r3, #192	@ 0xc0
 8002b1a:	613b      	str	r3, [r7, #16]
 8002b1c:	2300      	movs	r3, #0
 8002b1e:	617b      	str	r3, [r7, #20]
 8002b20:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002b24:	61bb      	str	r3, [r7, #24]
 8002b26:	f107 0308 	add.w	r3, r7, #8
 8002b2a:	4619      	mov	r1, r3
 8002b2c:	6878      	ldr	r0, [r7, #4]
 8002b2e:	f7ff fe03 	bl	8002738 <SDMMC_SendCommand>
 8002b32:	6878      	ldr	r0, [r7, #4]
 8002b34:	f000 f956 	bl	8002de4 <SDMMC_GetCmdResp2>
 8002b38:	61f8      	str	r0, [r7, #28]
 8002b3a:	69fb      	ldr	r3, [r7, #28]
 8002b3c:	4618      	mov	r0, r3
 8002b3e:	3720      	adds	r7, #32
 8002b40:	46bd      	mov	sp, r7
 8002b42:	bd80      	pop	{r7, pc}

08002b44 <SDMMC_CmdSendCSD>:
 8002b44:	b580      	push	{r7, lr}
 8002b46:	b088      	sub	sp, #32
 8002b48:	af00      	add	r7, sp, #0
 8002b4a:	6078      	str	r0, [r7, #4]
 8002b4c:	6039      	str	r1, [r7, #0]
 8002b4e:	683b      	ldr	r3, [r7, #0]
 8002b50:	60bb      	str	r3, [r7, #8]
 8002b52:	2309      	movs	r3, #9
 8002b54:	60fb      	str	r3, [r7, #12]
 8002b56:	23c0      	movs	r3, #192	@ 0xc0
 8002b58:	613b      	str	r3, [r7, #16]
 8002b5a:	2300      	movs	r3, #0
 8002b5c:	617b      	str	r3, [r7, #20]
 8002b5e:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002b62:	61bb      	str	r3, [r7, #24]
 8002b64:	f107 0308 	add.w	r3, r7, #8
 8002b68:	4619      	mov	r1, r3
 8002b6a:	6878      	ldr	r0, [r7, #4]
 8002b6c:	f7ff fde4 	bl	8002738 <SDMMC_SendCommand>
 8002b70:	6878      	ldr	r0, [r7, #4]
 8002b72:	f000 f937 	bl	8002de4 <SDMMC_GetCmdResp2>
 8002b76:	61f8      	str	r0, [r7, #28]
 8002b78:	69fb      	ldr	r3, [r7, #28]
 8002b7a:	4618      	mov	r0, r3
 8002b7c:	3720      	adds	r7, #32
 8002b7e:	46bd      	mov	sp, r7
 8002b80:	bd80      	pop	{r7, pc}

08002b82 <SDMMC_CmdSetRelAdd>:
 8002b82:	b580      	push	{r7, lr}
 8002b84:	b088      	sub	sp, #32
 8002b86:	af00      	add	r7, sp, #0
 8002b88:	6078      	str	r0, [r7, #4]
 8002b8a:	6039      	str	r1, [r7, #0]
 8002b8c:	2300      	movs	r3, #0
 8002b8e:	60bb      	str	r3, [r7, #8]
 8002b90:	2303      	movs	r3, #3
 8002b92:	60fb      	str	r3, [r7, #12]
 8002b94:	2340      	movs	r3, #64	@ 0x40
 8002b96:	613b      	str	r3, [r7, #16]
 8002b98:	2300      	movs	r3, #0
 8002b9a:	617b      	str	r3, [r7, #20]
 8002b9c:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002ba0:	61bb      	str	r3, [r7, #24]
 8002ba2:	f107 0308 	add.w	r3, r7, #8
 8002ba6:	4619      	mov	r1, r3
 8002ba8:	6878      	ldr	r0, [r7, #4]
 8002baa:	f7ff fdc5 	bl	8002738 <SDMMC_SendCommand>
 8002bae:	683a      	ldr	r2, [r7, #0]
 8002bb0:	2103      	movs	r1, #3
 8002bb2:	6878      	ldr	r0, [r7, #4]
 8002bb4:	f000 f99c 	bl	8002ef0 <SDMMC_GetCmdResp6>
 8002bb8:	61f8      	str	r0, [r7, #28]
 8002bba:	69fb      	ldr	r3, [r7, #28]
 8002bbc:	4618      	mov	r0, r3
 8002bbe:	3720      	adds	r7, #32
 8002bc0:	46bd      	mov	sp, r7
 8002bc2:	bd80      	pop	{r7, pc}

08002bc4 <SDMMC_CmdSendStatus>:
 8002bc4:	b580      	push	{r7, lr}
 8002bc6:	b088      	sub	sp, #32
 8002bc8:	af00      	add	r7, sp, #0
 8002bca:	6078      	str	r0, [r7, #4]
 8002bcc:	6039      	str	r1, [r7, #0]
 8002bce:	683b      	ldr	r3, [r7, #0]
 8002bd0:	60bb      	str	r3, [r7, #8]
 8002bd2:	230d      	movs	r3, #13
 8002bd4:	60fb      	str	r3, [r7, #12]
 8002bd6:	2340      	movs	r3, #64	@ 0x40
 8002bd8:	613b      	str	r3, [r7, #16]
 8002bda:	2300      	movs	r3, #0
 8002bdc:	617b      	str	r3, [r7, #20]
 8002bde:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002be2:	61bb      	str	r3, [r7, #24]
 8002be4:	f107 0308 	add.w	r3, r7, #8
 8002be8:	4619      	mov	r1, r3
 8002bea:	6878      	ldr	r0, [r7, #4]
 8002bec:	f7ff fda4 	bl	8002738 <SDMMC_SendCommand>
 8002bf0:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002bf4:	210d      	movs	r1, #13
 8002bf6:	6878      	ldr	r0, [r7, #4]
 8002bf8:	f000 f806 	bl	8002c08 <SDMMC_GetCmdResp1>
 8002bfc:	61f8      	str	r0, [r7, #28]
 8002bfe:	69fb      	ldr	r3, [r7, #28]
 8002c00:	4618      	mov	r0, r3
 8002c02:	3720      	adds	r7, #32
 8002c04:	46bd      	mov	sp, r7
 8002c06:	bd80      	pop	{r7, pc}

08002c08 <SDMMC_GetCmdResp1>:
 8002c08:	b580      	push	{r7, lr}
 8002c0a:	b088      	sub	sp, #32
 8002c0c:	af00      	add	r7, sp, #0
 8002c0e:	60f8      	str	r0, [r7, #12]
 8002c10:	460b      	mov	r3, r1
 8002c12:	607a      	str	r2, [r7, #4]
 8002c14:	72fb      	strb	r3, [r7, #11]
 8002c16:	4b70      	ldr	r3, [pc, #448]	@ (8002dd8 <SDMMC_GetCmdResp1+0x1d0>)
 8002c18:	681b      	ldr	r3, [r3, #0]
 8002c1a:	4a70      	ldr	r2, [pc, #448]	@ (8002ddc <SDMMC_GetCmdResp1+0x1d4>)
 8002c1c:	fba2 2303 	umull	r2, r3, r2, r3
 8002c20:	0a5a      	lsrs	r2, r3, #9
 8002c22:	687b      	ldr	r3, [r7, #4]
 8002c24:	fb02 f303 	mul.w	r3, r2, r3
 8002c28:	61fb      	str	r3, [r7, #28]
 8002c2a:	69fb      	ldr	r3, [r7, #28]
 8002c2c:	1e5a      	subs	r2, r3, #1
 8002c2e:	61fa      	str	r2, [r7, #28]
 8002c30:	2b00      	cmp	r3, #0
 8002c32:	d102      	bne.n	8002c3a <SDMMC_GetCmdResp1+0x32>
 8002c34:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 8002c38:	e0c9      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002c3a:	68fb      	ldr	r3, [r7, #12]
 8002c3c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002c3e:	61bb      	str	r3, [r7, #24]
 8002c40:	69bb      	ldr	r3, [r7, #24]
 8002c42:	f003 0345 	and.w	r3, r3, #69	@ 0x45
 8002c46:	2b00      	cmp	r3, #0
 8002c48:	d0ef      	beq.n	8002c2a <SDMMC_GetCmdResp1+0x22>
 8002c4a:	69bb      	ldr	r3, [r7, #24]
 8002c4c:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8002c50:	2b00      	cmp	r3, #0
 8002c52:	d1ea      	bne.n	8002c2a <SDMMC_GetCmdResp1+0x22>
 8002c54:	68fb      	ldr	r3, [r7, #12]
 8002c56:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002c58:	f003 0304 	and.w	r3, r3, #4
 8002c5c:	2b00      	cmp	r3, #0
 8002c5e:	d004      	beq.n	8002c6a <SDMMC_GetCmdResp1+0x62>
 8002c60:	68fb      	ldr	r3, [r7, #12]
 8002c62:	2204      	movs	r2, #4
 8002c64:	639a      	str	r2, [r3, #56]	@ 0x38
 8002c66:	2304      	movs	r3, #4
 8002c68:	e0b1      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002c6a:	68fb      	ldr	r3, [r7, #12]
 8002c6c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002c6e:	f003 0301 	and.w	r3, r3, #1
 8002c72:	2b00      	cmp	r3, #0
 8002c74:	d004      	beq.n	8002c80 <SDMMC_GetCmdResp1+0x78>
 8002c76:	68fb      	ldr	r3, [r7, #12]
 8002c78:	2201      	movs	r2, #1
 8002c7a:	639a      	str	r2, [r3, #56]	@ 0x38
 8002c7c:	2301      	movs	r3, #1
 8002c7e:	e0a6      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002c80:	68fb      	ldr	r3, [r7, #12]
 8002c82:	22c5      	movs	r2, #197	@ 0xc5
 8002c84:	639a      	str	r2, [r3, #56]	@ 0x38
 8002c86:	68f8      	ldr	r0, [r7, #12]
 8002c88:	f7ff fd80 	bl	800278c <SDMMC_GetCommandResponse>
 8002c8c:	4603      	mov	r3, r0
 8002c8e:	461a      	mov	r2, r3
 8002c90:	7afb      	ldrb	r3, [r7, #11]
 8002c92:	4293      	cmp	r3, r2
 8002c94:	d001      	beq.n	8002c9a <SDMMC_GetCmdResp1+0x92>
 8002c96:	2301      	movs	r3, #1
 8002c98:	e099      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002c9a:	2100      	movs	r1, #0
 8002c9c:	68f8      	ldr	r0, [r7, #12]
 8002c9e:	f7ff fd82 	bl	80027a6 <SDMMC_GetResponse>
 8002ca2:	6178      	str	r0, [r7, #20]
 8002ca4:	697a      	ldr	r2, [r7, #20]
 8002ca6:	4b4e      	ldr	r3, [pc, #312]	@ (8002de0 <SDMMC_GetCmdResp1+0x1d8>)
 8002ca8:	4013      	ands	r3, r2
 8002caa:	2b00      	cmp	r3, #0
 8002cac:	d101      	bne.n	8002cb2 <SDMMC_GetCmdResp1+0xaa>
 8002cae:	2300      	movs	r3, #0
 8002cb0:	e08d      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002cb2:	697b      	ldr	r3, [r7, #20]
 8002cb4:	2b00      	cmp	r3, #0
 8002cb6:	da02      	bge.n	8002cbe <SDMMC_GetCmdResp1+0xb6>
 8002cb8:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
 8002cbc:	e087      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002cbe:	697b      	ldr	r3, [r7, #20]
 8002cc0:	f003 4380 	and.w	r3, r3, #1073741824	@ 0x40000000
 8002cc4:	2b00      	cmp	r3, #0
 8002cc6:	d001      	beq.n	8002ccc <SDMMC_GetCmdResp1+0xc4>
 8002cc8:	2340      	movs	r3, #64	@ 0x40
 8002cca:	e080      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002ccc:	697b      	ldr	r3, [r7, #20]
 8002cce:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8002cd2:	2b00      	cmp	r3, #0
 8002cd4:	d001      	beq.n	8002cda <SDMMC_GetCmdResp1+0xd2>
 8002cd6:	2380      	movs	r3, #128	@ 0x80
 8002cd8:	e079      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002cda:	697b      	ldr	r3, [r7, #20]
 8002cdc:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8002ce0:	2b00      	cmp	r3, #0
 8002ce2:	d002      	beq.n	8002cea <SDMMC_GetCmdResp1+0xe2>
 8002ce4:	f44f 7380 	mov.w	r3, #256	@ 0x100
 8002ce8:	e071      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002cea:	697b      	ldr	r3, [r7, #20]
 8002cec:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8002cf0:	2b00      	cmp	r3, #0
 8002cf2:	d002      	beq.n	8002cfa <SDMMC_GetCmdResp1+0xf2>
 8002cf4:	f44f 7300 	mov.w	r3, #512	@ 0x200
 8002cf8:	e069      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002cfa:	697b      	ldr	r3, [r7, #20]
 8002cfc:	f003 6380 	and.w	r3, r3, #67108864	@ 0x4000000
 8002d00:	2b00      	cmp	r3, #0
 8002d02:	d002      	beq.n	8002d0a <SDMMC_GetCmdResp1+0x102>
 8002d04:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8002d08:	e061      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d0a:	697b      	ldr	r3, [r7, #20]
 8002d0c:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8002d10:	2b00      	cmp	r3, #0
 8002d12:	d002      	beq.n	8002d1a <SDMMC_GetCmdResp1+0x112>
 8002d14:	f44f 6300 	mov.w	r3, #2048	@ 0x800
 8002d18:	e059      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d1a:	697b      	ldr	r3, [r7, #20]
 8002d1c:	f403 0300 	and.w	r3, r3, #8388608	@ 0x800000
 8002d20:	2b00      	cmp	r3, #0
 8002d22:	d002      	beq.n	8002d2a <SDMMC_GetCmdResp1+0x122>
 8002d24:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8002d28:	e051      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d2a:	697b      	ldr	r3, [r7, #20]
 8002d2c:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8002d30:	2b00      	cmp	r3, #0
 8002d32:	d002      	beq.n	8002d3a <SDMMC_GetCmdResp1+0x132>
 8002d34:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 8002d38:	e049      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d3a:	697b      	ldr	r3, [r7, #20]
 8002d3c:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8002d40:	2b00      	cmp	r3, #0
 8002d42:	d002      	beq.n	8002d4a <SDMMC_GetCmdResp1+0x142>
 8002d44:	f44f 4380 	mov.w	r3, #16384	@ 0x4000
 8002d48:	e041      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d4a:	697b      	ldr	r3, [r7, #20]
 8002d4c:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8002d50:	2b00      	cmp	r3, #0
 8002d52:	d002      	beq.n	8002d5a <SDMMC_GetCmdResp1+0x152>
 8002d54:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8002d58:	e039      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d5a:	697b      	ldr	r3, [r7, #20]
 8002d5c:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 8002d60:	2b00      	cmp	r3, #0
 8002d62:	d002      	beq.n	8002d6a <SDMMC_GetCmdResp1+0x162>
 8002d64:	f44f 3300 	mov.w	r3, #131072	@ 0x20000
 8002d68:	e031      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d6a:	697b      	ldr	r3, [r7, #20]
 8002d6c:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002d70:	2b00      	cmp	r3, #0
 8002d72:	d002      	beq.n	8002d7a <SDMMC_GetCmdResp1+0x172>
 8002d74:	f44f 2380 	mov.w	r3, #262144	@ 0x40000
 8002d78:	e029      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d7a:	697b      	ldr	r3, [r7, #20]
 8002d7c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8002d80:	2b00      	cmp	r3, #0
 8002d82:	d002      	beq.n	8002d8a <SDMMC_GetCmdResp1+0x182>
 8002d84:	f44f 2300 	mov.w	r3, #524288	@ 0x80000
 8002d88:	e021      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d8a:	697b      	ldr	r3, [r7, #20]
 8002d8c:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8002d90:	2b00      	cmp	r3, #0
 8002d92:	d002      	beq.n	8002d9a <SDMMC_GetCmdResp1+0x192>
 8002d94:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
 8002d98:	e019      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002d9a:	697b      	ldr	r3, [r7, #20]
 8002d9c:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8002da0:	2b00      	cmp	r3, #0
 8002da2:	d002      	beq.n	8002daa <SDMMC_GetCmdResp1+0x1a2>
 8002da4:	f44f 1300 	mov.w	r3, #2097152	@ 0x200000
 8002da8:	e011      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002daa:	697b      	ldr	r3, [r7, #20]
 8002dac:	f403 5300 	and.w	r3, r3, #8192	@ 0x2000
 8002db0:	2b00      	cmp	r3, #0
 8002db2:	d002      	beq.n	8002dba <SDMMC_GetCmdResp1+0x1b2>
 8002db4:	f44f 0380 	mov.w	r3, #4194304	@ 0x400000
 8002db8:	e009      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002dba:	697b      	ldr	r3, [r7, #20]
 8002dbc:	f003 0308 	and.w	r3, r3, #8
 8002dc0:	2b00      	cmp	r3, #0
 8002dc2:	d002      	beq.n	8002dca <SDMMC_GetCmdResp1+0x1c2>
 8002dc4:	f44f 0300 	mov.w	r3, #8388608	@ 0x800000
 8002dc8:	e001      	b.n	8002dce <SDMMC_GetCmdResp1+0x1c6>
 8002dca:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
 8002dce:	4618      	mov	r0, r3
 8002dd0:	3720      	adds	r7, #32
 8002dd2:	46bd      	mov	sp, r7
 8002dd4:	bd80      	pop	{r7, pc}
 8002dd6:	bf00      	nop
 8002dd8:	20000000 	.word	0x20000000
 8002ddc:	10624dd3 	.word	0x10624dd3
 8002de0:	fdffe008 	.word	0xfdffe008

08002de4 <SDMMC_GetCmdResp2>:
 8002de4:	b480      	push	{r7}
 8002de6:	b085      	sub	sp, #20
 8002de8:	af00      	add	r7, sp, #0
 8002dea:	6078      	str	r0, [r7, #4]
 8002dec:	4b1f      	ldr	r3, [pc, #124]	@ (8002e6c <SDMMC_GetCmdResp2+0x88>)
 8002dee:	681b      	ldr	r3, [r3, #0]
 8002df0:	4a1f      	ldr	r2, [pc, #124]	@ (8002e70 <SDMMC_GetCmdResp2+0x8c>)
 8002df2:	fba2 2303 	umull	r2, r3, r2, r3
 8002df6:	0a5b      	lsrs	r3, r3, #9
 8002df8:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002dfc:	fb02 f303 	mul.w	r3, r2, r3
 8002e00:	60fb      	str	r3, [r7, #12]
 8002e02:	68fb      	ldr	r3, [r7, #12]
 8002e04:	1e5a      	subs	r2, r3, #1
 8002e06:	60fa      	str	r2, [r7, #12]
 8002e08:	2b00      	cmp	r3, #0
 8002e0a:	d102      	bne.n	8002e12 <SDMMC_GetCmdResp2+0x2e>
 8002e0c:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 8002e10:	e026      	b.n	8002e60 <SDMMC_GetCmdResp2+0x7c>
 8002e12:	687b      	ldr	r3, [r7, #4]
 8002e14:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002e16:	60bb      	str	r3, [r7, #8]
 8002e18:	68bb      	ldr	r3, [r7, #8]
 8002e1a:	f003 0345 	and.w	r3, r3, #69	@ 0x45
 8002e1e:	2b00      	cmp	r3, #0
 8002e20:	d0ef      	beq.n	8002e02 <SDMMC_GetCmdResp2+0x1e>
 8002e22:	68bb      	ldr	r3, [r7, #8]
 8002e24:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8002e28:	2b00      	cmp	r3, #0
 8002e2a:	d1ea      	bne.n	8002e02 <SDMMC_GetCmdResp2+0x1e>
 8002e2c:	687b      	ldr	r3, [r7, #4]
 8002e2e:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002e30:	f003 0304 	and.w	r3, r3, #4
 8002e34:	2b00      	cmp	r3, #0
 8002e36:	d004      	beq.n	8002e42 <SDMMC_GetCmdResp2+0x5e>
 8002e38:	687b      	ldr	r3, [r7, #4]
 8002e3a:	2204      	movs	r2, #4
 8002e3c:	639a      	str	r2, [r3, #56]	@ 0x38
 8002e3e:	2304      	movs	r3, #4
 8002e40:	e00e      	b.n	8002e60 <SDMMC_GetCmdResp2+0x7c>
 8002e42:	687b      	ldr	r3, [r7, #4]
 8002e44:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002e46:	f003 0301 	and.w	r3, r3, #1
 8002e4a:	2b00      	cmp	r3, #0
 8002e4c:	d004      	beq.n	8002e58 <SDMMC_GetCmdResp2+0x74>
 8002e4e:	687b      	ldr	r3, [r7, #4]
 8002e50:	2201      	movs	r2, #1
 8002e52:	639a      	str	r2, [r3, #56]	@ 0x38
 8002e54:	2301      	movs	r3, #1
 8002e56:	e003      	b.n	8002e60 <SDMMC_GetCmdResp2+0x7c>
 8002e58:	687b      	ldr	r3, [r7, #4]
 8002e5a:	22c5      	movs	r2, #197	@ 0xc5
 8002e5c:	639a      	str	r2, [r3, #56]	@ 0x38
 8002e5e:	2300      	movs	r3, #0
 8002e60:	4618      	mov	r0, r3
 8002e62:	3714      	adds	r7, #20
 8002e64:	46bd      	mov	sp, r7
 8002e66:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e6a:	4770      	bx	lr
 8002e6c:	20000000 	.word	0x20000000
 8002e70:	10624dd3 	.word	0x10624dd3

08002e74 <SDMMC_GetCmdResp3>:
 8002e74:	b480      	push	{r7}
 8002e76:	b085      	sub	sp, #20
 8002e78:	af00      	add	r7, sp, #0
 8002e7a:	6078      	str	r0, [r7, #4]
 8002e7c:	4b1a      	ldr	r3, [pc, #104]	@ (8002ee8 <SDMMC_GetCmdResp3+0x74>)
 8002e7e:	681b      	ldr	r3, [r3, #0]
 8002e80:	4a1a      	ldr	r2, [pc, #104]	@ (8002eec <SDMMC_GetCmdResp3+0x78>)
 8002e82:	fba2 2303 	umull	r2, r3, r2, r3
 8002e86:	0a5b      	lsrs	r3, r3, #9
 8002e88:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002e8c:	fb02 f303 	mul.w	r3, r2, r3
 8002e90:	60fb      	str	r3, [r7, #12]
 8002e92:	68fb      	ldr	r3, [r7, #12]
 8002e94:	1e5a      	subs	r2, r3, #1
 8002e96:	60fa      	str	r2, [r7, #12]
 8002e98:	2b00      	cmp	r3, #0
 8002e9a:	d102      	bne.n	8002ea2 <SDMMC_GetCmdResp3+0x2e>
 8002e9c:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 8002ea0:	e01b      	b.n	8002eda <SDMMC_GetCmdResp3+0x66>
 8002ea2:	687b      	ldr	r3, [r7, #4]
 8002ea4:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002ea6:	60bb      	str	r3, [r7, #8]
 8002ea8:	68bb      	ldr	r3, [r7, #8]
 8002eaa:	f003 0345 	and.w	r3, r3, #69	@ 0x45
 8002eae:	2b00      	cmp	r3, #0
 8002eb0:	d0ef      	beq.n	8002e92 <SDMMC_GetCmdResp3+0x1e>
 8002eb2:	68bb      	ldr	r3, [r7, #8]
 8002eb4:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8002eb8:	2b00      	cmp	r3, #0
 8002eba:	d1ea      	bne.n	8002e92 <SDMMC_GetCmdResp3+0x1e>
 8002ebc:	687b      	ldr	r3, [r7, #4]
 8002ebe:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002ec0:	f003 0304 	and.w	r3, r3, #4
 8002ec4:	2b00      	cmp	r3, #0
 8002ec6:	d004      	beq.n	8002ed2 <SDMMC_GetCmdResp3+0x5e>
 8002ec8:	687b      	ldr	r3, [r7, #4]
 8002eca:	2204      	movs	r2, #4
 8002ecc:	639a      	str	r2, [r3, #56]	@ 0x38
 8002ece:	2304      	movs	r3, #4
 8002ed0:	e003      	b.n	8002eda <SDMMC_GetCmdResp3+0x66>
 8002ed2:	687b      	ldr	r3, [r7, #4]
 8002ed4:	22c5      	movs	r2, #197	@ 0xc5
 8002ed6:	639a      	str	r2, [r3, #56]	@ 0x38
 8002ed8:	2300      	movs	r3, #0
 8002eda:	4618      	mov	r0, r3
 8002edc:	3714      	adds	r7, #20
 8002ede:	46bd      	mov	sp, r7
 8002ee0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002ee4:	4770      	bx	lr
 8002ee6:	bf00      	nop
 8002ee8:	20000000 	.word	0x20000000
 8002eec:	10624dd3 	.word	0x10624dd3

08002ef0 <SDMMC_GetCmdResp6>:
 8002ef0:	b580      	push	{r7, lr}
 8002ef2:	b088      	sub	sp, #32
 8002ef4:	af00      	add	r7, sp, #0
 8002ef6:	60f8      	str	r0, [r7, #12]
 8002ef8:	460b      	mov	r3, r1
 8002efa:	607a      	str	r2, [r7, #4]
 8002efc:	72fb      	strb	r3, [r7, #11]
 8002efe:	4b35      	ldr	r3, [pc, #212]	@ (8002fd4 <SDMMC_GetCmdResp6+0xe4>)
 8002f00:	681b      	ldr	r3, [r3, #0]
 8002f02:	4a35      	ldr	r2, [pc, #212]	@ (8002fd8 <SDMMC_GetCmdResp6+0xe8>)
 8002f04:	fba2 2303 	umull	r2, r3, r2, r3
 8002f08:	0a5b      	lsrs	r3, r3, #9
 8002f0a:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002f0e:	fb02 f303 	mul.w	r3, r2, r3
 8002f12:	61fb      	str	r3, [r7, #28]
 8002f14:	69fb      	ldr	r3, [r7, #28]
 8002f16:	1e5a      	subs	r2, r3, #1
 8002f18:	61fa      	str	r2, [r7, #28]
 8002f1a:	2b00      	cmp	r3, #0
 8002f1c:	d102      	bne.n	8002f24 <SDMMC_GetCmdResp6+0x34>
 8002f1e:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 8002f22:	e052      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002f24:	68fb      	ldr	r3, [r7, #12]
 8002f26:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002f28:	61bb      	str	r3, [r7, #24]
 8002f2a:	69bb      	ldr	r3, [r7, #24]
 8002f2c:	f003 0345 	and.w	r3, r3, #69	@ 0x45
 8002f30:	2b00      	cmp	r3, #0
 8002f32:	d0ef      	beq.n	8002f14 <SDMMC_GetCmdResp6+0x24>
 8002f34:	69bb      	ldr	r3, [r7, #24]
 8002f36:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8002f3a:	2b00      	cmp	r3, #0
 8002f3c:	d1ea      	bne.n	8002f14 <SDMMC_GetCmdResp6+0x24>
 8002f3e:	68fb      	ldr	r3, [r7, #12]
 8002f40:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002f42:	f003 0304 	and.w	r3, r3, #4
 8002f46:	2b00      	cmp	r3, #0
 8002f48:	d004      	beq.n	8002f54 <SDMMC_GetCmdResp6+0x64>
 8002f4a:	68fb      	ldr	r3, [r7, #12]
 8002f4c:	2204      	movs	r2, #4
 8002f4e:	639a      	str	r2, [r3, #56]	@ 0x38
 8002f50:	2304      	movs	r3, #4
 8002f52:	e03a      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002f54:	68fb      	ldr	r3, [r7, #12]
 8002f56:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8002f58:	f003 0301 	and.w	r3, r3, #1
 8002f5c:	2b00      	cmp	r3, #0
 8002f5e:	d004      	beq.n	8002f6a <SDMMC_GetCmdResp6+0x7a>
 8002f60:	68fb      	ldr	r3, [r7, #12]
 8002f62:	2201      	movs	r2, #1
 8002f64:	639a      	str	r2, [r3, #56]	@ 0x38
 8002f66:	2301      	movs	r3, #1
 8002f68:	e02f      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002f6a:	68f8      	ldr	r0, [r7, #12]
 8002f6c:	f7ff fc0e 	bl	800278c <SDMMC_GetCommandResponse>
 8002f70:	4603      	mov	r3, r0
 8002f72:	461a      	mov	r2, r3
 8002f74:	7afb      	ldrb	r3, [r7, #11]
 8002f76:	4293      	cmp	r3, r2
 8002f78:	d001      	beq.n	8002f7e <SDMMC_GetCmdResp6+0x8e>
 8002f7a:	2301      	movs	r3, #1
 8002f7c:	e025      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002f7e:	68fb      	ldr	r3, [r7, #12]
 8002f80:	22c5      	movs	r2, #197	@ 0xc5
 8002f82:	639a      	str	r2, [r3, #56]	@ 0x38
 8002f84:	2100      	movs	r1, #0
 8002f86:	68f8      	ldr	r0, [r7, #12]
 8002f88:	f7ff fc0d 	bl	80027a6 <SDMMC_GetResponse>
 8002f8c:	6178      	str	r0, [r7, #20]
 8002f8e:	697b      	ldr	r3, [r7, #20]
 8002f90:	f403 4360 	and.w	r3, r3, #57344	@ 0xe000
 8002f94:	2b00      	cmp	r3, #0
 8002f96:	d106      	bne.n	8002fa6 <SDMMC_GetCmdResp6+0xb6>
 8002f98:	697b      	ldr	r3, [r7, #20]
 8002f9a:	0c1b      	lsrs	r3, r3, #16
 8002f9c:	b29a      	uxth	r2, r3
 8002f9e:	687b      	ldr	r3, [r7, #4]
 8002fa0:	801a      	strh	r2, [r3, #0]
 8002fa2:	2300      	movs	r3, #0
 8002fa4:	e011      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002fa6:	697b      	ldr	r3, [r7, #20]
 8002fa8:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8002fac:	2b00      	cmp	r3, #0
 8002fae:	d002      	beq.n	8002fb6 <SDMMC_GetCmdResp6+0xc6>
 8002fb0:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 8002fb4:	e009      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002fb6:	697b      	ldr	r3, [r7, #20]
 8002fb8:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8002fbc:	2b00      	cmp	r3, #0
 8002fbe:	d002      	beq.n	8002fc6 <SDMMC_GetCmdResp6+0xd6>
 8002fc0:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8002fc4:	e001      	b.n	8002fca <SDMMC_GetCmdResp6+0xda>
 8002fc6:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
 8002fca:	4618      	mov	r0, r3
 8002fcc:	3720      	adds	r7, #32
 8002fce:	46bd      	mov	sp, r7
 8002fd0:	bd80      	pop	{r7, pc}
 8002fd2:	bf00      	nop
 8002fd4:	20000000 	.word	0x20000000
 8002fd8:	10624dd3 	.word	0x10624dd3

08002fdc <SDMMC_GetCmdResp7>:
 8002fdc:	b480      	push	{r7}
 8002fde:	b085      	sub	sp, #20
 8002fe0:	af00      	add	r7, sp, #0
 8002fe2:	6078      	str	r0, [r7, #4]
 8002fe4:	4b22      	ldr	r3, [pc, #136]	@ (8003070 <SDMMC_GetCmdResp7+0x94>)
 8002fe6:	681b      	ldr	r3, [r3, #0]
 8002fe8:	4a22      	ldr	r2, [pc, #136]	@ (8003074 <SDMMC_GetCmdResp7+0x98>)
 8002fea:	fba2 2303 	umull	r2, r3, r2, r3
 8002fee:	0a5b      	lsrs	r3, r3, #9
 8002ff0:	f241 3288 	movw	r2, #5000	@ 0x1388
 8002ff4:	fb02 f303 	mul.w	r3, r2, r3
 8002ff8:	60fb      	str	r3, [r7, #12]
 8002ffa:	68fb      	ldr	r3, [r7, #12]
 8002ffc:	1e5a      	subs	r2, r3, #1
 8002ffe:	60fa      	str	r2, [r7, #12]
 8003000:	2b00      	cmp	r3, #0
 8003002:	d102      	bne.n	800300a <SDMMC_GetCmdResp7+0x2e>
 8003004:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 8003008:	e02c      	b.n	8003064 <SDMMC_GetCmdResp7+0x88>
 800300a:	687b      	ldr	r3, [r7, #4]
 800300c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800300e:	60bb      	str	r3, [r7, #8]
 8003010:	68bb      	ldr	r3, [r7, #8]
 8003012:	f003 0345 	and.w	r3, r3, #69	@ 0x45
 8003016:	2b00      	cmp	r3, #0
 8003018:	d0ef      	beq.n	8002ffa <SDMMC_GetCmdResp7+0x1e>
 800301a:	68bb      	ldr	r3, [r7, #8]
 800301c:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8003020:	2b00      	cmp	r3, #0
 8003022:	d1ea      	bne.n	8002ffa <SDMMC_GetCmdResp7+0x1e>
 8003024:	687b      	ldr	r3, [r7, #4]
 8003026:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8003028:	f003 0304 	and.w	r3, r3, #4
 800302c:	2b00      	cmp	r3, #0
 800302e:	d004      	beq.n	800303a <SDMMC_GetCmdResp7+0x5e>
 8003030:	687b      	ldr	r3, [r7, #4]
 8003032:	2204      	movs	r2, #4
 8003034:	639a      	str	r2, [r3, #56]	@ 0x38
 8003036:	2304      	movs	r3, #4
 8003038:	e014      	b.n	8003064 <SDMMC_GetCmdResp7+0x88>
 800303a:	687b      	ldr	r3, [r7, #4]
 800303c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800303e:	f003 0301 	and.w	r3, r3, #1
 8003042:	2b00      	cmp	r3, #0
 8003044:	d004      	beq.n	8003050 <SDMMC_GetCmdResp7+0x74>
 8003046:	687b      	ldr	r3, [r7, #4]
 8003048:	2201      	movs	r2, #1
 800304a:	639a      	str	r2, [r3, #56]	@ 0x38
 800304c:	2301      	movs	r3, #1
 800304e:	e009      	b.n	8003064 <SDMMC_GetCmdResp7+0x88>
 8003050:	687b      	ldr	r3, [r7, #4]
 8003052:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8003054:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8003058:	2b00      	cmp	r3, #0
 800305a:	d002      	beq.n	8003062 <SDMMC_GetCmdResp7+0x86>
 800305c:	687b      	ldr	r3, [r7, #4]
 800305e:	2240      	movs	r2, #64	@ 0x40
 8003060:	639a      	str	r2, [r3, #56]	@ 0x38
 8003062:	2300      	movs	r3, #0
 8003064:	4618      	mov	r0, r3
 8003066:	3714      	adds	r7, #20
 8003068:	46bd      	mov	sp, r7
 800306a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800306e:	4770      	bx	lr
 8003070:	20000000 	.word	0x20000000
 8003074:	10624dd3 	.word	0x10624dd3

08003078 <SDMMC_GetCmdError>:
 8003078:	b480      	push	{r7}
 800307a:	b085      	sub	sp, #20
 800307c:	af00      	add	r7, sp, #0
 800307e:	6078      	str	r0, [r7, #4]
 8003080:	4b11      	ldr	r3, [pc, #68]	@ (80030c8 <SDMMC_GetCmdError+0x50>)
 8003082:	681b      	ldr	r3, [r3, #0]
 8003084:	4a11      	ldr	r2, [pc, #68]	@ (80030cc <SDMMC_GetCmdError+0x54>)
 8003086:	fba2 2303 	umull	r2, r3, r2, r3
 800308a:	0a5b      	lsrs	r3, r3, #9
 800308c:	f241 3288 	movw	r2, #5000	@ 0x1388
 8003090:	fb02 f303 	mul.w	r3, r2, r3
 8003094:	60fb      	str	r3, [r7, #12]
 8003096:	68fb      	ldr	r3, [r7, #12]
 8003098:	1e5a      	subs	r2, r3, #1
 800309a:	60fa      	str	r2, [r7, #12]
 800309c:	2b00      	cmp	r3, #0
 800309e:	d102      	bne.n	80030a6 <SDMMC_GetCmdError+0x2e>
 80030a0:	f04f 4300 	mov.w	r3, #2147483648	@ 0x80000000
 80030a4:	e009      	b.n	80030ba <SDMMC_GetCmdError+0x42>
 80030a6:	687b      	ldr	r3, [r7, #4]
 80030a8:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80030aa:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80030ae:	2b00      	cmp	r3, #0
 80030b0:	d0f1      	beq.n	8003096 <SDMMC_GetCmdError+0x1e>
 80030b2:	687b      	ldr	r3, [r7, #4]
 80030b4:	22c5      	movs	r2, #197	@ 0xc5
 80030b6:	639a      	str	r2, [r3, #56]	@ 0x38
 80030b8:	2300      	movs	r3, #0
 80030ba:	4618      	mov	r0, r3
 80030bc:	3714      	adds	r7, #20
 80030be:	46bd      	mov	sp, r7
 80030c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80030c4:	4770      	bx	lr
 80030c6:	bf00      	nop
 80030c8:	20000000 	.word	0x20000000
 80030cc:	10624dd3 	.word	0x10624dd3

080030d0 <HAL_SD_Init>:
 80030d0:	b580      	push	{r7, lr}
 80030d2:	b082      	sub	sp, #8
 80030d4:	af00      	add	r7, sp, #0
 80030d6:	6078      	str	r0, [r7, #4]
 80030d8:	687b      	ldr	r3, [r7, #4]
 80030da:	2b00      	cmp	r3, #0
 80030dc:	d101      	bne.n	80030e2 <HAL_SD_Init+0x12>
 80030de:	2301      	movs	r3, #1
 80030e0:	e022      	b.n	8003128 <HAL_SD_Init+0x58>
 80030e2:	687b      	ldr	r3, [r7, #4]
 80030e4:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 80030e8:	b2db      	uxtb	r3, r3
 80030ea:	2b00      	cmp	r3, #0
 80030ec:	d105      	bne.n	80030fa <HAL_SD_Init+0x2a>
 80030ee:	687b      	ldr	r3, [r7, #4]
 80030f0:	2200      	movs	r2, #0
 80030f2:	771a      	strb	r2, [r3, #28]
 80030f4:	6878      	ldr	r0, [r7, #4]
 80030f6:	f009 f855 	bl	800c1a4 <HAL_SD_MspInit>
 80030fa:	687b      	ldr	r3, [r7, #4]
 80030fc:	2203      	movs	r2, #3
 80030fe:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003102:	6878      	ldr	r0, [r7, #4]
 8003104:	f000 f814 	bl	8003130 <HAL_SD_InitCard>
 8003108:	4603      	mov	r3, r0
 800310a:	2b00      	cmp	r3, #0
 800310c:	d001      	beq.n	8003112 <HAL_SD_Init+0x42>
 800310e:	2301      	movs	r3, #1
 8003110:	e00a      	b.n	8003128 <HAL_SD_Init+0x58>
 8003112:	687b      	ldr	r3, [r7, #4]
 8003114:	2200      	movs	r2, #0
 8003116:	639a      	str	r2, [r3, #56]	@ 0x38
 8003118:	687b      	ldr	r3, [r7, #4]
 800311a:	2200      	movs	r2, #0
 800311c:	631a      	str	r2, [r3, #48]	@ 0x30
 800311e:	687b      	ldr	r3, [r7, #4]
 8003120:	2201      	movs	r2, #1
 8003122:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003126:	2300      	movs	r3, #0
 8003128:	4618      	mov	r0, r3
 800312a:	3708      	adds	r7, #8
 800312c:	46bd      	mov	sp, r7
 800312e:	bd80      	pop	{r7, pc}

08003130 <HAL_SD_InitCard>:
 8003130:	b5b0      	push	{r4, r5, r7, lr}
 8003132:	b08e      	sub	sp, #56	@ 0x38
 8003134:	af04      	add	r7, sp, #16
 8003136:	6078      	str	r0, [r7, #4]
 8003138:	2300      	movs	r3, #0
 800313a:	60fb      	str	r3, [r7, #12]
 800313c:	2300      	movs	r3, #0
 800313e:	613b      	str	r3, [r7, #16]
 8003140:	2300      	movs	r3, #0
 8003142:	617b      	str	r3, [r7, #20]
 8003144:	2300      	movs	r3, #0
 8003146:	61bb      	str	r3, [r7, #24]
 8003148:	2300      	movs	r3, #0
 800314a:	61fb      	str	r3, [r7, #28]
 800314c:	2376      	movs	r3, #118	@ 0x76
 800314e:	623b      	str	r3, [r7, #32]
 8003150:	687b      	ldr	r3, [r7, #4]
 8003152:	681d      	ldr	r5, [r3, #0]
 8003154:	466c      	mov	r4, sp
 8003156:	f107 0318 	add.w	r3, r7, #24
 800315a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
 800315e:	e884 0007 	stmia.w	r4, {r0, r1, r2}
 8003162:	f107 030c 	add.w	r3, r7, #12
 8003166:	cb0e      	ldmia	r3, {r1, r2, r3}
 8003168:	4628      	mov	r0, r5
 800316a:	f7ff fa7f 	bl	800266c <SDMMC_Init>
 800316e:	687b      	ldr	r3, [r7, #4]
 8003170:	681b      	ldr	r3, [r3, #0]
 8003172:	685a      	ldr	r2, [r3, #4]
 8003174:	687b      	ldr	r3, [r7, #4]
 8003176:	681b      	ldr	r3, [r3, #0]
 8003178:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 800317c:	605a      	str	r2, [r3, #4]
 800317e:	687b      	ldr	r3, [r7, #4]
 8003180:	681b      	ldr	r3, [r3, #0]
 8003182:	4618      	mov	r0, r3
 8003184:	f7ff fabc 	bl	8002700 <SDMMC_PowerState_ON>
 8003188:	687b      	ldr	r3, [r7, #4]
 800318a:	681b      	ldr	r3, [r3, #0]
 800318c:	685a      	ldr	r2, [r3, #4]
 800318e:	687b      	ldr	r3, [r7, #4]
 8003190:	681b      	ldr	r3, [r3, #0]
 8003192:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8003196:	605a      	str	r2, [r3, #4]
 8003198:	2002      	movs	r0, #2
 800319a:	f7ff fa43 	bl	8002624 <HAL_Delay>
 800319e:	6878      	ldr	r0, [r7, #4]
 80031a0:	f000 ff5a 	bl	8004058 <SD_PowerON>
 80031a4:	6278      	str	r0, [r7, #36]	@ 0x24
 80031a6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80031a8:	2b00      	cmp	r3, #0
 80031aa:	d00b      	beq.n	80031c4 <HAL_SD_InitCard+0x94>
 80031ac:	687b      	ldr	r3, [r7, #4]
 80031ae:	2201      	movs	r2, #1
 80031b0:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80031b4:	687b      	ldr	r3, [r7, #4]
 80031b6:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80031b8:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80031ba:	431a      	orrs	r2, r3
 80031bc:	687b      	ldr	r3, [r7, #4]
 80031be:	639a      	str	r2, [r3, #56]	@ 0x38
 80031c0:	2301      	movs	r3, #1
 80031c2:	e02e      	b.n	8003222 <HAL_SD_InitCard+0xf2>
 80031c4:	6878      	ldr	r0, [r7, #4]
 80031c6:	f000 fe79 	bl	8003ebc <SD_InitCard>
 80031ca:	6278      	str	r0, [r7, #36]	@ 0x24
 80031cc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80031ce:	2b00      	cmp	r3, #0
 80031d0:	d00b      	beq.n	80031ea <HAL_SD_InitCard+0xba>
 80031d2:	687b      	ldr	r3, [r7, #4]
 80031d4:	2201      	movs	r2, #1
 80031d6:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80031da:	687b      	ldr	r3, [r7, #4]
 80031dc:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80031de:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80031e0:	431a      	orrs	r2, r3
 80031e2:	687b      	ldr	r3, [r7, #4]
 80031e4:	639a      	str	r2, [r3, #56]	@ 0x38
 80031e6:	2301      	movs	r3, #1
 80031e8:	e01b      	b.n	8003222 <HAL_SD_InitCard+0xf2>
 80031ea:	687b      	ldr	r3, [r7, #4]
 80031ec:	681b      	ldr	r3, [r3, #0]
 80031ee:	f44f 7100 	mov.w	r1, #512	@ 0x200
 80031f2:	4618      	mov	r0, r3
 80031f4:	f7ff fb16 	bl	8002824 <SDMMC_CmdBlockLength>
 80031f8:	6278      	str	r0, [r7, #36]	@ 0x24
 80031fa:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80031fc:	2b00      	cmp	r3, #0
 80031fe:	d00f      	beq.n	8003220 <HAL_SD_InitCard+0xf0>
 8003200:	687b      	ldr	r3, [r7, #4]
 8003202:	681b      	ldr	r3, [r3, #0]
 8003204:	4a09      	ldr	r2, [pc, #36]	@ (800322c <HAL_SD_InitCard+0xfc>)
 8003206:	639a      	str	r2, [r3, #56]	@ 0x38
 8003208:	687b      	ldr	r3, [r7, #4]
 800320a:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 800320c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800320e:	431a      	orrs	r2, r3
 8003210:	687b      	ldr	r3, [r7, #4]
 8003212:	639a      	str	r2, [r3, #56]	@ 0x38
 8003214:	687b      	ldr	r3, [r7, #4]
 8003216:	2201      	movs	r2, #1
 8003218:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800321c:	2301      	movs	r3, #1
 800321e:	e000      	b.n	8003222 <HAL_SD_InitCard+0xf2>
 8003220:	2300      	movs	r3, #0
 8003222:	4618      	mov	r0, r3
 8003224:	3728      	adds	r7, #40	@ 0x28
 8003226:	46bd      	mov	sp, r7
 8003228:	bdb0      	pop	{r4, r5, r7, pc}
 800322a:	bf00      	nop
 800322c:	004005ff 	.word	0x004005ff

08003230 <HAL_SD_ReadBlocks_DMA>:
 8003230:	b580      	push	{r7, lr}
 8003232:	b08c      	sub	sp, #48	@ 0x30
 8003234:	af00      	add	r7, sp, #0
 8003236:	60f8      	str	r0, [r7, #12]
 8003238:	60b9      	str	r1, [r7, #8]
 800323a:	607a      	str	r2, [r7, #4]
 800323c:	603b      	str	r3, [r7, #0]
 800323e:	687b      	ldr	r3, [r7, #4]
 8003240:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003242:	68bb      	ldr	r3, [r7, #8]
 8003244:	2b00      	cmp	r3, #0
 8003246:	d107      	bne.n	8003258 <HAL_SD_ReadBlocks_DMA+0x28>
 8003248:	68fb      	ldr	r3, [r7, #12]
 800324a:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 800324c:	f043 6200 	orr.w	r2, r3, #134217728	@ 0x8000000
 8003250:	68fb      	ldr	r3, [r7, #12]
 8003252:	639a      	str	r2, [r3, #56]	@ 0x38
 8003254:	2301      	movs	r3, #1
 8003256:	e0c3      	b.n	80033e0 <HAL_SD_ReadBlocks_DMA+0x1b0>
 8003258:	68fb      	ldr	r3, [r7, #12]
 800325a:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800325e:	b2db      	uxtb	r3, r3
 8003260:	2b01      	cmp	r3, #1
 8003262:	f040 80bc 	bne.w	80033de <HAL_SD_ReadBlocks_DMA+0x1ae>
 8003266:	68fb      	ldr	r3, [r7, #12]
 8003268:	2200      	movs	r2, #0
 800326a:	639a      	str	r2, [r3, #56]	@ 0x38
 800326c:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800326e:	683b      	ldr	r3, [r7, #0]
 8003270:	441a      	add	r2, r3
 8003272:	68fb      	ldr	r3, [r7, #12]
 8003274:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8003276:	429a      	cmp	r2, r3
 8003278:	d907      	bls.n	800328a <HAL_SD_ReadBlocks_DMA+0x5a>
 800327a:	68fb      	ldr	r3, [r7, #12]
 800327c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 800327e:	f043 7200 	orr.w	r2, r3, #33554432	@ 0x2000000
 8003282:	68fb      	ldr	r3, [r7, #12]
 8003284:	639a      	str	r2, [r3, #56]	@ 0x38
 8003286:	2301      	movs	r3, #1
 8003288:	e0aa      	b.n	80033e0 <HAL_SD_ReadBlocks_DMA+0x1b0>
 800328a:	68fb      	ldr	r3, [r7, #12]
 800328c:	2203      	movs	r2, #3
 800328e:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003292:	68fb      	ldr	r3, [r7, #12]
 8003294:	681b      	ldr	r3, [r3, #0]
 8003296:	2200      	movs	r2, #0
 8003298:	62da      	str	r2, [r3, #44]	@ 0x2c
 800329a:	68fb      	ldr	r3, [r7, #12]
 800329c:	681b      	ldr	r3, [r3, #0]
 800329e:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 80032a0:	68fb      	ldr	r3, [r7, #12]
 80032a2:	681b      	ldr	r3, [r3, #0]
 80032a4:	f442 7295 	orr.w	r2, r2, #298	@ 0x12a
 80032a8:	63da      	str	r2, [r3, #60]	@ 0x3c
 80032aa:	68fb      	ldr	r3, [r7, #12]
 80032ac:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032ae:	4a4e      	ldr	r2, [pc, #312]	@ (80033e8 <HAL_SD_ReadBlocks_DMA+0x1b8>)
 80032b0:	63da      	str	r2, [r3, #60]	@ 0x3c
 80032b2:	68fb      	ldr	r3, [r7, #12]
 80032b4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032b6:	4a4d      	ldr	r2, [pc, #308]	@ (80033ec <HAL_SD_ReadBlocks_DMA+0x1bc>)
 80032b8:	64da      	str	r2, [r3, #76]	@ 0x4c
 80032ba:	68fb      	ldr	r3, [r7, #12]
 80032bc:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032be:	2200      	movs	r2, #0
 80032c0:	651a      	str	r2, [r3, #80]	@ 0x50
 80032c2:	68fb      	ldr	r3, [r7, #12]
 80032c4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032c6:	2200      	movs	r2, #0
 80032c8:	609a      	str	r2, [r3, #8]
 80032ca:	68fb      	ldr	r3, [r7, #12]
 80032cc:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032ce:	681b      	ldr	r3, [r3, #0]
 80032d0:	681b      	ldr	r3, [r3, #0]
 80032d2:	f023 01c0 	bic.w	r1, r3, #192	@ 0xc0
 80032d6:	68fb      	ldr	r3, [r7, #12]
 80032d8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032da:	689a      	ldr	r2, [r3, #8]
 80032dc:	68fb      	ldr	r3, [r7, #12]
 80032de:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80032e0:	681b      	ldr	r3, [r3, #0]
 80032e2:	430a      	orrs	r2, r1
 80032e4:	601a      	str	r2, [r3, #0]
 80032e6:	68fb      	ldr	r3, [r7, #12]
 80032e8:	6c18      	ldr	r0, [r3, #64]	@ 0x40
 80032ea:	68fb      	ldr	r3, [r7, #12]
 80032ec:	681b      	ldr	r3, [r3, #0]
 80032ee:	3380      	adds	r3, #128	@ 0x80
 80032f0:	4619      	mov	r1, r3
 80032f2:	68ba      	ldr	r2, [r7, #8]
 80032f4:	683b      	ldr	r3, [r7, #0]
 80032f6:	025b      	lsls	r3, r3, #9
 80032f8:	089b      	lsrs	r3, r3, #2
 80032fa:	f7fe fded 	bl	8001ed8 <HAL_DMA_Start_IT>
 80032fe:	4603      	mov	r3, r0
 8003300:	2b00      	cmp	r3, #0
 8003302:	d017      	beq.n	8003334 <HAL_SD_ReadBlocks_DMA+0x104>
 8003304:	68fb      	ldr	r3, [r7, #12]
 8003306:	681b      	ldr	r3, [r3, #0]
 8003308:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 800330a:	68fb      	ldr	r3, [r7, #12]
 800330c:	681b      	ldr	r3, [r3, #0]
 800330e:	f422 7295 	bic.w	r2, r2, #298	@ 0x12a
 8003312:	63da      	str	r2, [r3, #60]	@ 0x3c
 8003314:	68fb      	ldr	r3, [r7, #12]
 8003316:	681b      	ldr	r3, [r3, #0]
 8003318:	4a35      	ldr	r2, [pc, #212]	@ (80033f0 <HAL_SD_ReadBlocks_DMA+0x1c0>)
 800331a:	639a      	str	r2, [r3, #56]	@ 0x38
 800331c:	68fb      	ldr	r3, [r7, #12]
 800331e:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003320:	f043 4280 	orr.w	r2, r3, #1073741824	@ 0x40000000
 8003324:	68fb      	ldr	r3, [r7, #12]
 8003326:	639a      	str	r2, [r3, #56]	@ 0x38
 8003328:	68fb      	ldr	r3, [r7, #12]
 800332a:	2201      	movs	r2, #1
 800332c:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003330:	2301      	movs	r3, #1
 8003332:	e055      	b.n	80033e0 <HAL_SD_ReadBlocks_DMA+0x1b0>
 8003334:	68fb      	ldr	r3, [r7, #12]
 8003336:	681b      	ldr	r3, [r3, #0]
 8003338:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800333a:	68fb      	ldr	r3, [r7, #12]
 800333c:	681b      	ldr	r3, [r3, #0]
 800333e:	f042 0208 	orr.w	r2, r2, #8
 8003342:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003344:	68fb      	ldr	r3, [r7, #12]
 8003346:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8003348:	2b01      	cmp	r3, #1
 800334a:	d002      	beq.n	8003352 <HAL_SD_ReadBlocks_DMA+0x122>
 800334c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800334e:	025b      	lsls	r3, r3, #9
 8003350:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003352:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8003356:	613b      	str	r3, [r7, #16]
 8003358:	683b      	ldr	r3, [r7, #0]
 800335a:	025b      	lsls	r3, r3, #9
 800335c:	617b      	str	r3, [r7, #20]
 800335e:	2390      	movs	r3, #144	@ 0x90
 8003360:	61bb      	str	r3, [r7, #24]
 8003362:	2302      	movs	r3, #2
 8003364:	61fb      	str	r3, [r7, #28]
 8003366:	2300      	movs	r3, #0
 8003368:	623b      	str	r3, [r7, #32]
 800336a:	2301      	movs	r3, #1
 800336c:	627b      	str	r3, [r7, #36]	@ 0x24
 800336e:	68fb      	ldr	r3, [r7, #12]
 8003370:	681b      	ldr	r3, [r3, #0]
 8003372:	f107 0210 	add.w	r2, r7, #16
 8003376:	4611      	mov	r1, r2
 8003378:	4618      	mov	r0, r3
 800337a:	f7ff fa27 	bl	80027cc <SDMMC_ConfigData>
 800337e:	683b      	ldr	r3, [r7, #0]
 8003380:	2b01      	cmp	r3, #1
 8003382:	d90a      	bls.n	800339a <HAL_SD_ReadBlocks_DMA+0x16a>
 8003384:	68fb      	ldr	r3, [r7, #12]
 8003386:	2282      	movs	r2, #130	@ 0x82
 8003388:	631a      	str	r2, [r3, #48]	@ 0x30
 800338a:	68fb      	ldr	r3, [r7, #12]
 800338c:	681b      	ldr	r3, [r3, #0]
 800338e:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8003390:	4618      	mov	r0, r3
 8003392:	f7ff fa8b 	bl	80028ac <SDMMC_CmdReadMultiBlock>
 8003396:	62f8      	str	r0, [r7, #44]	@ 0x2c
 8003398:	e009      	b.n	80033ae <HAL_SD_ReadBlocks_DMA+0x17e>
 800339a:	68fb      	ldr	r3, [r7, #12]
 800339c:	2281      	movs	r2, #129	@ 0x81
 800339e:	631a      	str	r2, [r3, #48]	@ 0x30
 80033a0:	68fb      	ldr	r3, [r7, #12]
 80033a2:	681b      	ldr	r3, [r3, #0]
 80033a4:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 80033a6:	4618      	mov	r0, r3
 80033a8:	f7ff fa5e 	bl	8002868 <SDMMC_CmdReadSingleBlock>
 80033ac:	62f8      	str	r0, [r7, #44]	@ 0x2c
 80033ae:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80033b0:	2b00      	cmp	r3, #0
 80033b2:	d012      	beq.n	80033da <HAL_SD_ReadBlocks_DMA+0x1aa>
 80033b4:	68fb      	ldr	r3, [r7, #12]
 80033b6:	681b      	ldr	r3, [r3, #0]
 80033b8:	4a0d      	ldr	r2, [pc, #52]	@ (80033f0 <HAL_SD_ReadBlocks_DMA+0x1c0>)
 80033ba:	639a      	str	r2, [r3, #56]	@ 0x38
 80033bc:	68fb      	ldr	r3, [r7, #12]
 80033be:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80033c0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80033c2:	431a      	orrs	r2, r3
 80033c4:	68fb      	ldr	r3, [r7, #12]
 80033c6:	639a      	str	r2, [r3, #56]	@ 0x38
 80033c8:	68fb      	ldr	r3, [r7, #12]
 80033ca:	2201      	movs	r2, #1
 80033cc:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80033d0:	68fb      	ldr	r3, [r7, #12]
 80033d2:	2200      	movs	r2, #0
 80033d4:	631a      	str	r2, [r3, #48]	@ 0x30
 80033d6:	2301      	movs	r3, #1
 80033d8:	e002      	b.n	80033e0 <HAL_SD_ReadBlocks_DMA+0x1b0>
 80033da:	2300      	movs	r3, #0
 80033dc:	e000      	b.n	80033e0 <HAL_SD_ReadBlocks_DMA+0x1b0>
 80033de:	2302      	movs	r3, #2
 80033e0:	4618      	mov	r0, r3
 80033e2:	3730      	adds	r7, #48	@ 0x30
 80033e4:	46bd      	mov	sp, r7
 80033e6:	bd80      	pop	{r7, pc}
 80033e8:	08003ccb 	.word	0x08003ccb
 80033ec:	08003d3d 	.word	0x08003d3d
 80033f0:	004005ff 	.word	0x004005ff

080033f4 <HAL_SD_WriteBlocks_DMA>:
 80033f4:	b580      	push	{r7, lr}
 80033f6:	b08c      	sub	sp, #48	@ 0x30
 80033f8:	af00      	add	r7, sp, #0
 80033fa:	60f8      	str	r0, [r7, #12]
 80033fc:	60b9      	str	r1, [r7, #8]
 80033fe:	607a      	str	r2, [r7, #4]
 8003400:	603b      	str	r3, [r7, #0]
 8003402:	687b      	ldr	r3, [r7, #4]
 8003404:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003406:	68bb      	ldr	r3, [r7, #8]
 8003408:	2b00      	cmp	r3, #0
 800340a:	d107      	bne.n	800341c <HAL_SD_WriteBlocks_DMA+0x28>
 800340c:	68fb      	ldr	r3, [r7, #12]
 800340e:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003410:	f043 6200 	orr.w	r2, r3, #134217728	@ 0x8000000
 8003414:	68fb      	ldr	r3, [r7, #12]
 8003416:	639a      	str	r2, [r3, #56]	@ 0x38
 8003418:	2301      	movs	r3, #1
 800341a:	e0c6      	b.n	80035aa <HAL_SD_WriteBlocks_DMA+0x1b6>
 800341c:	68fb      	ldr	r3, [r7, #12]
 800341e:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8003422:	b2db      	uxtb	r3, r3
 8003424:	2b01      	cmp	r3, #1
 8003426:	f040 80bf 	bne.w	80035a8 <HAL_SD_WriteBlocks_DMA+0x1b4>
 800342a:	68fb      	ldr	r3, [r7, #12]
 800342c:	2200      	movs	r2, #0
 800342e:	639a      	str	r2, [r3, #56]	@ 0x38
 8003430:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8003432:	683b      	ldr	r3, [r7, #0]
 8003434:	441a      	add	r2, r3
 8003436:	68fb      	ldr	r3, [r7, #12]
 8003438:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 800343a:	429a      	cmp	r2, r3
 800343c:	d907      	bls.n	800344e <HAL_SD_WriteBlocks_DMA+0x5a>
 800343e:	68fb      	ldr	r3, [r7, #12]
 8003440:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003442:	f043 7200 	orr.w	r2, r3, #33554432	@ 0x2000000
 8003446:	68fb      	ldr	r3, [r7, #12]
 8003448:	639a      	str	r2, [r3, #56]	@ 0x38
 800344a:	2301      	movs	r3, #1
 800344c:	e0ad      	b.n	80035aa <HAL_SD_WriteBlocks_DMA+0x1b6>
 800344e:	68fb      	ldr	r3, [r7, #12]
 8003450:	2203      	movs	r2, #3
 8003452:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003456:	68fb      	ldr	r3, [r7, #12]
 8003458:	681b      	ldr	r3, [r3, #0]
 800345a:	2200      	movs	r2, #0
 800345c:	62da      	str	r2, [r3, #44]	@ 0x2c
 800345e:	68fb      	ldr	r3, [r7, #12]
 8003460:	681b      	ldr	r3, [r3, #0]
 8003462:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8003464:	68fb      	ldr	r3, [r7, #12]
 8003466:	681b      	ldr	r3, [r3, #0]
 8003468:	f042 021a 	orr.w	r2, r2, #26
 800346c:	63da      	str	r2, [r3, #60]	@ 0x3c
 800346e:	68fb      	ldr	r3, [r7, #12]
 8003470:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003472:	4a50      	ldr	r2, [pc, #320]	@ (80035b4 <HAL_SD_WriteBlocks_DMA+0x1c0>)
 8003474:	63da      	str	r2, [r3, #60]	@ 0x3c
 8003476:	68fb      	ldr	r3, [r7, #12]
 8003478:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800347a:	4a4f      	ldr	r2, [pc, #316]	@ (80035b8 <HAL_SD_WriteBlocks_DMA+0x1c4>)
 800347c:	64da      	str	r2, [r3, #76]	@ 0x4c
 800347e:	68fb      	ldr	r3, [r7, #12]
 8003480:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003482:	2200      	movs	r2, #0
 8003484:	651a      	str	r2, [r3, #80]	@ 0x50
 8003486:	68fb      	ldr	r3, [r7, #12]
 8003488:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800348a:	2b01      	cmp	r3, #1
 800348c:	d002      	beq.n	8003494 <HAL_SD_WriteBlocks_DMA+0xa0>
 800348e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8003490:	025b      	lsls	r3, r3, #9
 8003492:	62bb      	str	r3, [r7, #40]	@ 0x28
 8003494:	683b      	ldr	r3, [r7, #0]
 8003496:	2b01      	cmp	r3, #1
 8003498:	d90a      	bls.n	80034b0 <HAL_SD_WriteBlocks_DMA+0xbc>
 800349a:	68fb      	ldr	r3, [r7, #12]
 800349c:	22a0      	movs	r2, #160	@ 0xa0
 800349e:	631a      	str	r2, [r3, #48]	@ 0x30
 80034a0:	68fb      	ldr	r3, [r7, #12]
 80034a2:	681b      	ldr	r3, [r3, #0]
 80034a4:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 80034a6:	4618      	mov	r0, r3
 80034a8:	f7ff fa44 	bl	8002934 <SDMMC_CmdWriteMultiBlock>
 80034ac:	62f8      	str	r0, [r7, #44]	@ 0x2c
 80034ae:	e009      	b.n	80034c4 <HAL_SD_WriteBlocks_DMA+0xd0>
 80034b0:	68fb      	ldr	r3, [r7, #12]
 80034b2:	2290      	movs	r2, #144	@ 0x90
 80034b4:	631a      	str	r2, [r3, #48]	@ 0x30
 80034b6:	68fb      	ldr	r3, [r7, #12]
 80034b8:	681b      	ldr	r3, [r3, #0]
 80034ba:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 80034bc:	4618      	mov	r0, r3
 80034be:	f7ff fa17 	bl	80028f0 <SDMMC_CmdWriteSingleBlock>
 80034c2:	62f8      	str	r0, [r7, #44]	@ 0x2c
 80034c4:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80034c6:	2b00      	cmp	r3, #0
 80034c8:	d012      	beq.n	80034f0 <HAL_SD_WriteBlocks_DMA+0xfc>
 80034ca:	68fb      	ldr	r3, [r7, #12]
 80034cc:	681b      	ldr	r3, [r3, #0]
 80034ce:	4a3b      	ldr	r2, [pc, #236]	@ (80035bc <HAL_SD_WriteBlocks_DMA+0x1c8>)
 80034d0:	639a      	str	r2, [r3, #56]	@ 0x38
 80034d2:	68fb      	ldr	r3, [r7, #12]
 80034d4:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80034d6:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80034d8:	431a      	orrs	r2, r3
 80034da:	68fb      	ldr	r3, [r7, #12]
 80034dc:	639a      	str	r2, [r3, #56]	@ 0x38
 80034de:	68fb      	ldr	r3, [r7, #12]
 80034e0:	2201      	movs	r2, #1
 80034e2:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80034e6:	68fb      	ldr	r3, [r7, #12]
 80034e8:	2200      	movs	r2, #0
 80034ea:	631a      	str	r2, [r3, #48]	@ 0x30
 80034ec:	2301      	movs	r3, #1
 80034ee:	e05c      	b.n	80035aa <HAL_SD_WriteBlocks_DMA+0x1b6>
 80034f0:	68fb      	ldr	r3, [r7, #12]
 80034f2:	681b      	ldr	r3, [r3, #0]
 80034f4:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80034f6:	68fb      	ldr	r3, [r7, #12]
 80034f8:	681b      	ldr	r3, [r3, #0]
 80034fa:	f042 0208 	orr.w	r2, r2, #8
 80034fe:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003500:	68fb      	ldr	r3, [r7, #12]
 8003502:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003504:	2240      	movs	r2, #64	@ 0x40
 8003506:	609a      	str	r2, [r3, #8]
 8003508:	68fb      	ldr	r3, [r7, #12]
 800350a:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800350c:	681b      	ldr	r3, [r3, #0]
 800350e:	681b      	ldr	r3, [r3, #0]
 8003510:	f023 01c0 	bic.w	r1, r3, #192	@ 0xc0
 8003514:	68fb      	ldr	r3, [r7, #12]
 8003516:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003518:	689a      	ldr	r2, [r3, #8]
 800351a:	68fb      	ldr	r3, [r7, #12]
 800351c:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800351e:	681b      	ldr	r3, [r3, #0]
 8003520:	430a      	orrs	r2, r1
 8003522:	601a      	str	r2, [r3, #0]
 8003524:	68fb      	ldr	r3, [r7, #12]
 8003526:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
 8003528:	68b9      	ldr	r1, [r7, #8]
 800352a:	68fb      	ldr	r3, [r7, #12]
 800352c:	681b      	ldr	r3, [r3, #0]
 800352e:	3380      	adds	r3, #128	@ 0x80
 8003530:	461a      	mov	r2, r3
 8003532:	683b      	ldr	r3, [r7, #0]
 8003534:	025b      	lsls	r3, r3, #9
 8003536:	089b      	lsrs	r3, r3, #2
 8003538:	f7fe fcce 	bl	8001ed8 <HAL_DMA_Start_IT>
 800353c:	4603      	mov	r3, r0
 800353e:	2b00      	cmp	r3, #0
 8003540:	d01a      	beq.n	8003578 <HAL_SD_WriteBlocks_DMA+0x184>
 8003542:	68fb      	ldr	r3, [r7, #12]
 8003544:	681b      	ldr	r3, [r3, #0]
 8003546:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8003548:	68fb      	ldr	r3, [r7, #12]
 800354a:	681b      	ldr	r3, [r3, #0]
 800354c:	f022 021a 	bic.w	r2, r2, #26
 8003550:	63da      	str	r2, [r3, #60]	@ 0x3c
 8003552:	68fb      	ldr	r3, [r7, #12]
 8003554:	681b      	ldr	r3, [r3, #0]
 8003556:	4a19      	ldr	r2, [pc, #100]	@ (80035bc <HAL_SD_WriteBlocks_DMA+0x1c8>)
 8003558:	639a      	str	r2, [r3, #56]	@ 0x38
 800355a:	68fb      	ldr	r3, [r7, #12]
 800355c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 800355e:	f043 4280 	orr.w	r2, r3, #1073741824	@ 0x40000000
 8003562:	68fb      	ldr	r3, [r7, #12]
 8003564:	639a      	str	r2, [r3, #56]	@ 0x38
 8003566:	68fb      	ldr	r3, [r7, #12]
 8003568:	2201      	movs	r2, #1
 800356a:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800356e:	68fb      	ldr	r3, [r7, #12]
 8003570:	2200      	movs	r2, #0
 8003572:	631a      	str	r2, [r3, #48]	@ 0x30
 8003574:	2301      	movs	r3, #1
 8003576:	e018      	b.n	80035aa <HAL_SD_WriteBlocks_DMA+0x1b6>
 8003578:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800357c:	613b      	str	r3, [r7, #16]
 800357e:	683b      	ldr	r3, [r7, #0]
 8003580:	025b      	lsls	r3, r3, #9
 8003582:	617b      	str	r3, [r7, #20]
 8003584:	2390      	movs	r3, #144	@ 0x90
 8003586:	61bb      	str	r3, [r7, #24]
 8003588:	2300      	movs	r3, #0
 800358a:	61fb      	str	r3, [r7, #28]
 800358c:	2300      	movs	r3, #0
 800358e:	623b      	str	r3, [r7, #32]
 8003590:	2301      	movs	r3, #1
 8003592:	627b      	str	r3, [r7, #36]	@ 0x24
 8003594:	68fb      	ldr	r3, [r7, #12]
 8003596:	681b      	ldr	r3, [r3, #0]
 8003598:	f107 0210 	add.w	r2, r7, #16
 800359c:	4611      	mov	r1, r2
 800359e:	4618      	mov	r0, r3
 80035a0:	f7ff f914 	bl	80027cc <SDMMC_ConfigData>
 80035a4:	2300      	movs	r3, #0
 80035a6:	e000      	b.n	80035aa <HAL_SD_WriteBlocks_DMA+0x1b6>
 80035a8:	2302      	movs	r3, #2
 80035aa:	4618      	mov	r0, r3
 80035ac:	3730      	adds	r7, #48	@ 0x30
 80035ae:	46bd      	mov	sp, r7
 80035b0:	bd80      	pop	{r7, pc}
 80035b2:	bf00      	nop
 80035b4:	08003ca1 	.word	0x08003ca1
 80035b8:	08003d3d 	.word	0x08003d3d
 80035bc:	004005ff 	.word	0x004005ff

080035c0 <HAL_SD_IRQHandler>:
 80035c0:	b580      	push	{r7, lr}
 80035c2:	b084      	sub	sp, #16
 80035c4:	af00      	add	r7, sp, #0
 80035c6:	6078      	str	r0, [r7, #4]
 80035c8:	687b      	ldr	r3, [r7, #4]
 80035ca:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80035cc:	60fb      	str	r3, [r7, #12]
 80035ce:	687b      	ldr	r3, [r7, #4]
 80035d0:	681b      	ldr	r3, [r3, #0]
 80035d2:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80035d4:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 80035d8:	2b00      	cmp	r3, #0
 80035da:	d008      	beq.n	80035ee <HAL_SD_IRQHandler+0x2e>
 80035dc:	68fb      	ldr	r3, [r7, #12]
 80035de:	f003 0308 	and.w	r3, r3, #8
 80035e2:	2b00      	cmp	r3, #0
 80035e4:	d003      	beq.n	80035ee <HAL_SD_IRQHandler+0x2e>
 80035e6:	6878      	ldr	r0, [r7, #4]
 80035e8:	f000 fdec 	bl	80041c4 <SD_Read_IT>
 80035ec:	e15a      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80035ee:	687b      	ldr	r3, [r7, #4]
 80035f0:	681b      	ldr	r3, [r3, #0]
 80035f2:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 80035f4:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80035f8:	2b00      	cmp	r3, #0
 80035fa:	f000 808d 	beq.w	8003718 <HAL_SD_IRQHandler+0x158>
 80035fe:	687b      	ldr	r3, [r7, #4]
 8003600:	681b      	ldr	r3, [r3, #0]
 8003602:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8003606:	639a      	str	r2, [r3, #56]	@ 0x38
 8003608:	687b      	ldr	r3, [r7, #4]
 800360a:	681b      	ldr	r3, [r3, #0]
 800360c:	6bd9      	ldr	r1, [r3, #60]	@ 0x3c
 800360e:	687b      	ldr	r3, [r7, #4]
 8003610:	681a      	ldr	r2, [r3, #0]
 8003612:	4b9a      	ldr	r3, [pc, #616]	@ (800387c <HAL_SD_IRQHandler+0x2bc>)
 8003614:	400b      	ands	r3, r1
 8003616:	63d3      	str	r3, [r2, #60]	@ 0x3c
 8003618:	687b      	ldr	r3, [r7, #4]
 800361a:	681b      	ldr	r3, [r3, #0]
 800361c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800361e:	687b      	ldr	r3, [r7, #4]
 8003620:	681b      	ldr	r3, [r3, #0]
 8003622:	f022 0201 	bic.w	r2, r2, #1
 8003626:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003628:	68fb      	ldr	r3, [r7, #12]
 800362a:	f003 0308 	and.w	r3, r3, #8
 800362e:	2b00      	cmp	r3, #0
 8003630:	d039      	beq.n	80036a6 <HAL_SD_IRQHandler+0xe6>
 8003632:	68fb      	ldr	r3, [r7, #12]
 8003634:	f003 0302 	and.w	r3, r3, #2
 8003638:	2b00      	cmp	r3, #0
 800363a:	d104      	bne.n	8003646 <HAL_SD_IRQHandler+0x86>
 800363c:	68fb      	ldr	r3, [r7, #12]
 800363e:	f003 0320 	and.w	r3, r3, #32
 8003642:	2b00      	cmp	r3, #0
 8003644:	d011      	beq.n	800366a <HAL_SD_IRQHandler+0xaa>
 8003646:	687b      	ldr	r3, [r7, #4]
 8003648:	681b      	ldr	r3, [r3, #0]
 800364a:	4618      	mov	r0, r3
 800364c:	f7ff f994 	bl	8002978 <SDMMC_CmdStopTransfer>
 8003650:	60b8      	str	r0, [r7, #8]
 8003652:	68bb      	ldr	r3, [r7, #8]
 8003654:	2b00      	cmp	r3, #0
 8003656:	d008      	beq.n	800366a <HAL_SD_IRQHandler+0xaa>
 8003658:	687b      	ldr	r3, [r7, #4]
 800365a:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 800365c:	68bb      	ldr	r3, [r7, #8]
 800365e:	431a      	orrs	r2, r3
 8003660:	687b      	ldr	r3, [r7, #4]
 8003662:	639a      	str	r2, [r3, #56]	@ 0x38
 8003664:	6878      	ldr	r0, [r7, #4]
 8003666:	f000 f921 	bl	80038ac <HAL_SD_ErrorCallback>
 800366a:	687b      	ldr	r3, [r7, #4]
 800366c:	681b      	ldr	r3, [r3, #0]
 800366e:	f240 523a 	movw	r2, #1338	@ 0x53a
 8003672:	639a      	str	r2, [r3, #56]	@ 0x38
 8003674:	687b      	ldr	r3, [r7, #4]
 8003676:	2201      	movs	r2, #1
 8003678:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 800367c:	687b      	ldr	r3, [r7, #4]
 800367e:	2200      	movs	r2, #0
 8003680:	631a      	str	r2, [r3, #48]	@ 0x30
 8003682:	68fb      	ldr	r3, [r7, #12]
 8003684:	f003 0301 	and.w	r3, r3, #1
 8003688:	2b00      	cmp	r3, #0
 800368a:	d104      	bne.n	8003696 <HAL_SD_IRQHandler+0xd6>
 800368c:	68fb      	ldr	r3, [r7, #12]
 800368e:	f003 0302 	and.w	r3, r3, #2
 8003692:	2b00      	cmp	r3, #0
 8003694:	d003      	beq.n	800369e <HAL_SD_IRQHandler+0xde>
 8003696:	6878      	ldr	r0, [r7, #4]
 8003698:	f008 f95c 	bl	800b954 <HAL_SD_RxCpltCallback>
 800369c:	e102      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 800369e:	6878      	ldr	r0, [r7, #4]
 80036a0:	f008 f94e 	bl	800b940 <HAL_SD_TxCpltCallback>
 80036a4:	e0fe      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80036a6:	68fb      	ldr	r3, [r7, #12]
 80036a8:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80036ac:	2b00      	cmp	r3, #0
 80036ae:	f000 80f9 	beq.w	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80036b2:	68fb      	ldr	r3, [r7, #12]
 80036b4:	f003 0320 	and.w	r3, r3, #32
 80036b8:	2b00      	cmp	r3, #0
 80036ba:	d011      	beq.n	80036e0 <HAL_SD_IRQHandler+0x120>
 80036bc:	687b      	ldr	r3, [r7, #4]
 80036be:	681b      	ldr	r3, [r3, #0]
 80036c0:	4618      	mov	r0, r3
 80036c2:	f7ff f959 	bl	8002978 <SDMMC_CmdStopTransfer>
 80036c6:	60b8      	str	r0, [r7, #8]
 80036c8:	68bb      	ldr	r3, [r7, #8]
 80036ca:	2b00      	cmp	r3, #0
 80036cc:	d008      	beq.n	80036e0 <HAL_SD_IRQHandler+0x120>
 80036ce:	687b      	ldr	r3, [r7, #4]
 80036d0:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80036d2:	68bb      	ldr	r3, [r7, #8]
 80036d4:	431a      	orrs	r2, r3
 80036d6:	687b      	ldr	r3, [r7, #4]
 80036d8:	639a      	str	r2, [r3, #56]	@ 0x38
 80036da:	6878      	ldr	r0, [r7, #4]
 80036dc:	f000 f8e6 	bl	80038ac <HAL_SD_ErrorCallback>
 80036e0:	68fb      	ldr	r3, [r7, #12]
 80036e2:	f003 0301 	and.w	r3, r3, #1
 80036e6:	2b00      	cmp	r3, #0
 80036e8:	f040 80dc 	bne.w	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80036ec:	68fb      	ldr	r3, [r7, #12]
 80036ee:	f003 0302 	and.w	r3, r3, #2
 80036f2:	2b00      	cmp	r3, #0
 80036f4:	f040 80d6 	bne.w	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80036f8:	687b      	ldr	r3, [r7, #4]
 80036fa:	681b      	ldr	r3, [r3, #0]
 80036fc:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80036fe:	687b      	ldr	r3, [r7, #4]
 8003700:	681b      	ldr	r3, [r3, #0]
 8003702:	f022 0208 	bic.w	r2, r2, #8
 8003706:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003708:	687b      	ldr	r3, [r7, #4]
 800370a:	2201      	movs	r2, #1
 800370c:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003710:	6878      	ldr	r0, [r7, #4]
 8003712:	f008 f915 	bl	800b940 <HAL_SD_TxCpltCallback>
 8003716:	e0c5      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003718:	687b      	ldr	r3, [r7, #4]
 800371a:	681b      	ldr	r3, [r3, #0]
 800371c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800371e:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8003722:	2b00      	cmp	r3, #0
 8003724:	d008      	beq.n	8003738 <HAL_SD_IRQHandler+0x178>
 8003726:	68fb      	ldr	r3, [r7, #12]
 8003728:	f003 0308 	and.w	r3, r3, #8
 800372c:	2b00      	cmp	r3, #0
 800372e:	d003      	beq.n	8003738 <HAL_SD_IRQHandler+0x178>
 8003730:	6878      	ldr	r0, [r7, #4]
 8003732:	f000 fd98 	bl	8004266 <SD_Write_IT>
 8003736:	e0b5      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003738:	687b      	ldr	r3, [r7, #4]
 800373a:	681b      	ldr	r3, [r3, #0]
 800373c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800373e:	f003 033a 	and.w	r3, r3, #58	@ 0x3a
 8003742:	2b00      	cmp	r3, #0
 8003744:	f000 80ae 	beq.w	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003748:	687b      	ldr	r3, [r7, #4]
 800374a:	681b      	ldr	r3, [r3, #0]
 800374c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800374e:	f003 0302 	and.w	r3, r3, #2
 8003752:	2b00      	cmp	r3, #0
 8003754:	d005      	beq.n	8003762 <HAL_SD_IRQHandler+0x1a2>
 8003756:	687b      	ldr	r3, [r7, #4]
 8003758:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 800375a:	f043 0202 	orr.w	r2, r3, #2
 800375e:	687b      	ldr	r3, [r7, #4]
 8003760:	639a      	str	r2, [r3, #56]	@ 0x38
 8003762:	687b      	ldr	r3, [r7, #4]
 8003764:	681b      	ldr	r3, [r3, #0]
 8003766:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8003768:	f003 0308 	and.w	r3, r3, #8
 800376c:	2b00      	cmp	r3, #0
 800376e:	d005      	beq.n	800377c <HAL_SD_IRQHandler+0x1bc>
 8003770:	687b      	ldr	r3, [r7, #4]
 8003772:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003774:	f043 0208 	orr.w	r2, r3, #8
 8003778:	687b      	ldr	r3, [r7, #4]
 800377a:	639a      	str	r2, [r3, #56]	@ 0x38
 800377c:	687b      	ldr	r3, [r7, #4]
 800377e:	681b      	ldr	r3, [r3, #0]
 8003780:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8003782:	f003 0320 	and.w	r3, r3, #32
 8003786:	2b00      	cmp	r3, #0
 8003788:	d005      	beq.n	8003796 <HAL_SD_IRQHandler+0x1d6>
 800378a:	687b      	ldr	r3, [r7, #4]
 800378c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 800378e:	f043 0220 	orr.w	r2, r3, #32
 8003792:	687b      	ldr	r3, [r7, #4]
 8003794:	639a      	str	r2, [r3, #56]	@ 0x38
 8003796:	687b      	ldr	r3, [r7, #4]
 8003798:	681b      	ldr	r3, [r3, #0]
 800379a:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800379c:	f003 0310 	and.w	r3, r3, #16
 80037a0:	2b00      	cmp	r3, #0
 80037a2:	d005      	beq.n	80037b0 <HAL_SD_IRQHandler+0x1f0>
 80037a4:	687b      	ldr	r3, [r7, #4]
 80037a6:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80037a8:	f043 0210 	orr.w	r2, r3, #16
 80037ac:	687b      	ldr	r3, [r7, #4]
 80037ae:	639a      	str	r2, [r3, #56]	@ 0x38
 80037b0:	687b      	ldr	r3, [r7, #4]
 80037b2:	681b      	ldr	r3, [r3, #0]
 80037b4:	f240 523a 	movw	r2, #1338	@ 0x53a
 80037b8:	639a      	str	r2, [r3, #56]	@ 0x38
 80037ba:	687b      	ldr	r3, [r7, #4]
 80037bc:	681b      	ldr	r3, [r3, #0]
 80037be:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 80037c0:	687b      	ldr	r3, [r7, #4]
 80037c2:	681b      	ldr	r3, [r3, #0]
 80037c4:	f422 729d 	bic.w	r2, r2, #314	@ 0x13a
 80037c8:	63da      	str	r2, [r3, #60]	@ 0x3c
 80037ca:	687b      	ldr	r3, [r7, #4]
 80037cc:	681b      	ldr	r3, [r3, #0]
 80037ce:	4618      	mov	r0, r3
 80037d0:	f7ff f8d2 	bl	8002978 <SDMMC_CmdStopTransfer>
 80037d4:	4602      	mov	r2, r0
 80037d6:	687b      	ldr	r3, [r7, #4]
 80037d8:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80037da:	431a      	orrs	r2, r3
 80037dc:	687b      	ldr	r3, [r7, #4]
 80037de:	639a      	str	r2, [r3, #56]	@ 0x38
 80037e0:	68fb      	ldr	r3, [r7, #12]
 80037e2:	f003 0308 	and.w	r3, r3, #8
 80037e6:	2b00      	cmp	r3, #0
 80037e8:	d00a      	beq.n	8003800 <HAL_SD_IRQHandler+0x240>
 80037ea:	687b      	ldr	r3, [r7, #4]
 80037ec:	2201      	movs	r2, #1
 80037ee:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 80037f2:	687b      	ldr	r3, [r7, #4]
 80037f4:	2200      	movs	r2, #0
 80037f6:	631a      	str	r2, [r3, #48]	@ 0x30
 80037f8:	6878      	ldr	r0, [r7, #4]
 80037fa:	f000 f857 	bl	80038ac <HAL_SD_ErrorCallback>
 80037fe:	e051      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003800:	68fb      	ldr	r3, [r7, #12]
 8003802:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8003806:	2b00      	cmp	r3, #0
 8003808:	d04c      	beq.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 800380a:	68fb      	ldr	r3, [r7, #12]
 800380c:	f003 0310 	and.w	r3, r3, #16
 8003810:	2b00      	cmp	r3, #0
 8003812:	d104      	bne.n	800381e <HAL_SD_IRQHandler+0x25e>
 8003814:	68fb      	ldr	r3, [r7, #12]
 8003816:	f003 0320 	and.w	r3, r3, #32
 800381a:	2b00      	cmp	r3, #0
 800381c:	d011      	beq.n	8003842 <HAL_SD_IRQHandler+0x282>
 800381e:	687b      	ldr	r3, [r7, #4]
 8003820:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003822:	4a17      	ldr	r2, [pc, #92]	@ (8003880 <HAL_SD_IRQHandler+0x2c0>)
 8003824:	651a      	str	r2, [r3, #80]	@ 0x50
 8003826:	687b      	ldr	r3, [r7, #4]
 8003828:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800382a:	4618      	mov	r0, r3
 800382c:	f7fe fbb4 	bl	8001f98 <HAL_DMA_Abort_IT>
 8003830:	4603      	mov	r3, r0
 8003832:	2b00      	cmp	r3, #0
 8003834:	d036      	beq.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003836:	687b      	ldr	r3, [r7, #4]
 8003838:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 800383a:	4618      	mov	r0, r3
 800383c:	f000 fad0 	bl	8003de0 <SD_DMATxAbort>
 8003840:	e030      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 8003842:	68fb      	ldr	r3, [r7, #12]
 8003844:	f003 0301 	and.w	r3, r3, #1
 8003848:	2b00      	cmp	r3, #0
 800384a:	d104      	bne.n	8003856 <HAL_SD_IRQHandler+0x296>
 800384c:	68fb      	ldr	r3, [r7, #12]
 800384e:	f003 0302 	and.w	r3, r3, #2
 8003852:	2b00      	cmp	r3, #0
 8003854:	d018      	beq.n	8003888 <HAL_SD_IRQHandler+0x2c8>
 8003856:	687b      	ldr	r3, [r7, #4]
 8003858:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800385a:	4a0a      	ldr	r2, [pc, #40]	@ (8003884 <HAL_SD_IRQHandler+0x2c4>)
 800385c:	651a      	str	r2, [r3, #80]	@ 0x50
 800385e:	687b      	ldr	r3, [r7, #4]
 8003860:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8003862:	4618      	mov	r0, r3
 8003864:	f7fe fb98 	bl	8001f98 <HAL_DMA_Abort_IT>
 8003868:	4603      	mov	r3, r0
 800386a:	2b00      	cmp	r3, #0
 800386c:	d01a      	beq.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 800386e:	687b      	ldr	r3, [r7, #4]
 8003870:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8003872:	4618      	mov	r0, r3
 8003874:	f000 faeb 	bl	8003e4e <SD_DMARxAbort>
 8003878:	e014      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 800387a:	bf00      	nop
 800387c:	ffff3ec5 	.word	0xffff3ec5
 8003880:	08003de1 	.word	0x08003de1
 8003884:	08003e4f 	.word	0x08003e4f
 8003888:	687b      	ldr	r3, [r7, #4]
 800388a:	2200      	movs	r2, #0
 800388c:	639a      	str	r2, [r3, #56]	@ 0x38
 800388e:	687b      	ldr	r3, [r7, #4]
 8003890:	2201      	movs	r2, #1
 8003892:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003896:	687b      	ldr	r3, [r7, #4]
 8003898:	2200      	movs	r2, #0
 800389a:	631a      	str	r2, [r3, #48]	@ 0x30
 800389c:	6878      	ldr	r0, [r7, #4]
 800389e:	f008 f845 	bl	800b92c <HAL_SD_AbortCallback>
 80038a2:	e7ff      	b.n	80038a4 <HAL_SD_IRQHandler+0x2e4>
 80038a4:	bf00      	nop
 80038a6:	3710      	adds	r7, #16
 80038a8:	46bd      	mov	sp, r7
 80038aa:	bd80      	pop	{r7, pc}

080038ac <HAL_SD_ErrorCallback>:
 80038ac:	b480      	push	{r7}
 80038ae:	b083      	sub	sp, #12
 80038b0:	af00      	add	r7, sp, #0
 80038b2:	6078      	str	r0, [r7, #4]
 80038b4:	bf00      	nop
 80038b6:	370c      	adds	r7, #12
 80038b8:	46bd      	mov	sp, r7
 80038ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038be:	4770      	bx	lr

080038c0 <HAL_SD_GetCardCSD>:
 80038c0:	b480      	push	{r7}
 80038c2:	b083      	sub	sp, #12
 80038c4:	af00      	add	r7, sp, #0
 80038c6:	6078      	str	r0, [r7, #4]
 80038c8:	6039      	str	r1, [r7, #0]
 80038ca:	687b      	ldr	r3, [r7, #4]
 80038cc:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80038ce:	0f9b      	lsrs	r3, r3, #30
 80038d0:	b2da      	uxtb	r2, r3
 80038d2:	683b      	ldr	r3, [r7, #0]
 80038d4:	701a      	strb	r2, [r3, #0]
 80038d6:	687b      	ldr	r3, [r7, #4]
 80038d8:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80038da:	0e9b      	lsrs	r3, r3, #26
 80038dc:	b2db      	uxtb	r3, r3
 80038de:	f003 030f 	and.w	r3, r3, #15
 80038e2:	b2da      	uxtb	r2, r3
 80038e4:	683b      	ldr	r3, [r7, #0]
 80038e6:	705a      	strb	r2, [r3, #1]
 80038e8:	687b      	ldr	r3, [r7, #4]
 80038ea:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80038ec:	0e1b      	lsrs	r3, r3, #24
 80038ee:	b2db      	uxtb	r3, r3
 80038f0:	f003 0303 	and.w	r3, r3, #3
 80038f4:	b2da      	uxtb	r2, r3
 80038f6:	683b      	ldr	r3, [r7, #0]
 80038f8:	709a      	strb	r2, [r3, #2]
 80038fa:	687b      	ldr	r3, [r7, #4]
 80038fc:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80038fe:	0c1b      	lsrs	r3, r3, #16
 8003900:	b2da      	uxtb	r2, r3
 8003902:	683b      	ldr	r3, [r7, #0]
 8003904:	70da      	strb	r2, [r3, #3]
 8003906:	687b      	ldr	r3, [r7, #4]
 8003908:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 800390a:	0a1b      	lsrs	r3, r3, #8
 800390c:	b2da      	uxtb	r2, r3
 800390e:	683b      	ldr	r3, [r7, #0]
 8003910:	711a      	strb	r2, [r3, #4]
 8003912:	687b      	ldr	r3, [r7, #4]
 8003914:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 8003916:	b2da      	uxtb	r2, r3
 8003918:	683b      	ldr	r3, [r7, #0]
 800391a:	715a      	strb	r2, [r3, #5]
 800391c:	687b      	ldr	r3, [r7, #4]
 800391e:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003920:	0d1b      	lsrs	r3, r3, #20
 8003922:	b29a      	uxth	r2, r3
 8003924:	683b      	ldr	r3, [r7, #0]
 8003926:	80da      	strh	r2, [r3, #6]
 8003928:	687b      	ldr	r3, [r7, #4]
 800392a:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 800392c:	0c1b      	lsrs	r3, r3, #16
 800392e:	b2db      	uxtb	r3, r3
 8003930:	f003 030f 	and.w	r3, r3, #15
 8003934:	b2da      	uxtb	r2, r3
 8003936:	683b      	ldr	r3, [r7, #0]
 8003938:	721a      	strb	r2, [r3, #8]
 800393a:	687b      	ldr	r3, [r7, #4]
 800393c:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 800393e:	0bdb      	lsrs	r3, r3, #15
 8003940:	b2db      	uxtb	r3, r3
 8003942:	f003 0301 	and.w	r3, r3, #1
 8003946:	b2da      	uxtb	r2, r3
 8003948:	683b      	ldr	r3, [r7, #0]
 800394a:	725a      	strb	r2, [r3, #9]
 800394c:	687b      	ldr	r3, [r7, #4]
 800394e:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003950:	0b9b      	lsrs	r3, r3, #14
 8003952:	b2db      	uxtb	r3, r3
 8003954:	f003 0301 	and.w	r3, r3, #1
 8003958:	b2da      	uxtb	r2, r3
 800395a:	683b      	ldr	r3, [r7, #0]
 800395c:	729a      	strb	r2, [r3, #10]
 800395e:	687b      	ldr	r3, [r7, #4]
 8003960:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003962:	0b5b      	lsrs	r3, r3, #13
 8003964:	b2db      	uxtb	r3, r3
 8003966:	f003 0301 	and.w	r3, r3, #1
 800396a:	b2da      	uxtb	r2, r3
 800396c:	683b      	ldr	r3, [r7, #0]
 800396e:	72da      	strb	r2, [r3, #11]
 8003970:	687b      	ldr	r3, [r7, #4]
 8003972:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003974:	0b1b      	lsrs	r3, r3, #12
 8003976:	b2db      	uxtb	r3, r3
 8003978:	f003 0301 	and.w	r3, r3, #1
 800397c:	b2da      	uxtb	r2, r3
 800397e:	683b      	ldr	r3, [r7, #0]
 8003980:	731a      	strb	r2, [r3, #12]
 8003982:	683b      	ldr	r3, [r7, #0]
 8003984:	2200      	movs	r2, #0
 8003986:	735a      	strb	r2, [r3, #13]
 8003988:	687b      	ldr	r3, [r7, #4]
 800398a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800398c:	2b00      	cmp	r3, #0
 800398e:	d163      	bne.n	8003a58 <HAL_SD_GetCardCSD+0x198>
 8003990:	687b      	ldr	r3, [r7, #4]
 8003992:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003994:	009a      	lsls	r2, r3, #2
 8003996:	f640 73fc 	movw	r3, #4092	@ 0xffc
 800399a:	4013      	ands	r3, r2
 800399c:	687a      	ldr	r2, [r7, #4]
 800399e:	6ed2      	ldr	r2, [r2, #108]	@ 0x6c
 80039a0:	0f92      	lsrs	r2, r2, #30
 80039a2:	431a      	orrs	r2, r3
 80039a4:	683b      	ldr	r3, [r7, #0]
 80039a6:	611a      	str	r2, [r3, #16]
 80039a8:	687b      	ldr	r3, [r7, #4]
 80039aa:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80039ac:	0edb      	lsrs	r3, r3, #27
 80039ae:	b2db      	uxtb	r3, r3
 80039b0:	f003 0307 	and.w	r3, r3, #7
 80039b4:	b2da      	uxtb	r2, r3
 80039b6:	683b      	ldr	r3, [r7, #0]
 80039b8:	751a      	strb	r2, [r3, #20]
 80039ba:	687b      	ldr	r3, [r7, #4]
 80039bc:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80039be:	0e1b      	lsrs	r3, r3, #24
 80039c0:	b2db      	uxtb	r3, r3
 80039c2:	f003 0307 	and.w	r3, r3, #7
 80039c6:	b2da      	uxtb	r2, r3
 80039c8:	683b      	ldr	r3, [r7, #0]
 80039ca:	755a      	strb	r2, [r3, #21]
 80039cc:	687b      	ldr	r3, [r7, #4]
 80039ce:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80039d0:	0d5b      	lsrs	r3, r3, #21
 80039d2:	b2db      	uxtb	r3, r3
 80039d4:	f003 0307 	and.w	r3, r3, #7
 80039d8:	b2da      	uxtb	r2, r3
 80039da:	683b      	ldr	r3, [r7, #0]
 80039dc:	759a      	strb	r2, [r3, #22]
 80039de:	687b      	ldr	r3, [r7, #4]
 80039e0:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80039e2:	0c9b      	lsrs	r3, r3, #18
 80039e4:	b2db      	uxtb	r3, r3
 80039e6:	f003 0307 	and.w	r3, r3, #7
 80039ea:	b2da      	uxtb	r2, r3
 80039ec:	683b      	ldr	r3, [r7, #0]
 80039ee:	75da      	strb	r2, [r3, #23]
 80039f0:	687b      	ldr	r3, [r7, #4]
 80039f2:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80039f4:	0bdb      	lsrs	r3, r3, #15
 80039f6:	b2db      	uxtb	r3, r3
 80039f8:	f003 0307 	and.w	r3, r3, #7
 80039fc:	b2da      	uxtb	r2, r3
 80039fe:	683b      	ldr	r3, [r7, #0]
 8003a00:	761a      	strb	r2, [r3, #24]
 8003a02:	683b      	ldr	r3, [r7, #0]
 8003a04:	691b      	ldr	r3, [r3, #16]
 8003a06:	1c5a      	adds	r2, r3, #1
 8003a08:	687b      	ldr	r3, [r7, #4]
 8003a0a:	655a      	str	r2, [r3, #84]	@ 0x54
 8003a0c:	683b      	ldr	r3, [r7, #0]
 8003a0e:	7e1b      	ldrb	r3, [r3, #24]
 8003a10:	b2db      	uxtb	r3, r3
 8003a12:	f003 0307 	and.w	r3, r3, #7
 8003a16:	3302      	adds	r3, #2
 8003a18:	2201      	movs	r2, #1
 8003a1a:	fa02 f303 	lsl.w	r3, r2, r3
 8003a1e:	687a      	ldr	r2, [r7, #4]
 8003a20:	6d52      	ldr	r2, [r2, #84]	@ 0x54
 8003a22:	fb03 f202 	mul.w	r2, r3, r2
 8003a26:	687b      	ldr	r3, [r7, #4]
 8003a28:	655a      	str	r2, [r3, #84]	@ 0x54
 8003a2a:	683b      	ldr	r3, [r7, #0]
 8003a2c:	7a1b      	ldrb	r3, [r3, #8]
 8003a2e:	b2db      	uxtb	r3, r3
 8003a30:	f003 030f 	and.w	r3, r3, #15
 8003a34:	2201      	movs	r2, #1
 8003a36:	409a      	lsls	r2, r3
 8003a38:	687b      	ldr	r3, [r7, #4]
 8003a3a:	659a      	str	r2, [r3, #88]	@ 0x58
 8003a3c:	687b      	ldr	r3, [r7, #4]
 8003a3e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8003a40:	687a      	ldr	r2, [r7, #4]
 8003a42:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 8003a44:	0a52      	lsrs	r2, r2, #9
 8003a46:	fb03 f202 	mul.w	r2, r3, r2
 8003a4a:	687b      	ldr	r3, [r7, #4]
 8003a4c:	65da      	str	r2, [r3, #92]	@ 0x5c
 8003a4e:	687b      	ldr	r3, [r7, #4]
 8003a50:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8003a54:	661a      	str	r2, [r3, #96]	@ 0x60
 8003a56:	e031      	b.n	8003abc <HAL_SD_GetCardCSD+0x1fc>
 8003a58:	687b      	ldr	r3, [r7, #4]
 8003a5a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8003a5c:	2b01      	cmp	r3, #1
 8003a5e:	d11d      	bne.n	8003a9c <HAL_SD_GetCardCSD+0x1dc>
 8003a60:	687b      	ldr	r3, [r7, #4]
 8003a62:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8003a64:	041b      	lsls	r3, r3, #16
 8003a66:	f403 127c 	and.w	r2, r3, #4128768	@ 0x3f0000
 8003a6a:	687b      	ldr	r3, [r7, #4]
 8003a6c:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8003a6e:	0c1b      	lsrs	r3, r3, #16
 8003a70:	431a      	orrs	r2, r3
 8003a72:	683b      	ldr	r3, [r7, #0]
 8003a74:	611a      	str	r2, [r3, #16]
 8003a76:	683b      	ldr	r3, [r7, #0]
 8003a78:	691b      	ldr	r3, [r3, #16]
 8003a7a:	3301      	adds	r3, #1
 8003a7c:	029a      	lsls	r2, r3, #10
 8003a7e:	687b      	ldr	r3, [r7, #4]
 8003a80:	655a      	str	r2, [r3, #84]	@ 0x54
 8003a82:	687b      	ldr	r3, [r7, #4]
 8003a84:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8003a86:	687b      	ldr	r3, [r7, #4]
 8003a88:	65da      	str	r2, [r3, #92]	@ 0x5c
 8003a8a:	687b      	ldr	r3, [r7, #4]
 8003a8c:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8003a90:	659a      	str	r2, [r3, #88]	@ 0x58
 8003a92:	687b      	ldr	r3, [r7, #4]
 8003a94:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8003a96:	687b      	ldr	r3, [r7, #4]
 8003a98:	661a      	str	r2, [r3, #96]	@ 0x60
 8003a9a:	e00f      	b.n	8003abc <HAL_SD_GetCardCSD+0x1fc>
 8003a9c:	687b      	ldr	r3, [r7, #4]
 8003a9e:	681b      	ldr	r3, [r3, #0]
 8003aa0:	4a58      	ldr	r2, [pc, #352]	@ (8003c04 <HAL_SD_GetCardCSD+0x344>)
 8003aa2:	639a      	str	r2, [r3, #56]	@ 0x38
 8003aa4:	687b      	ldr	r3, [r7, #4]
 8003aa6:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003aa8:	f043 5280 	orr.w	r2, r3, #268435456	@ 0x10000000
 8003aac:	687b      	ldr	r3, [r7, #4]
 8003aae:	639a      	str	r2, [r3, #56]	@ 0x38
 8003ab0:	687b      	ldr	r3, [r7, #4]
 8003ab2:	2201      	movs	r2, #1
 8003ab4:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003ab8:	2301      	movs	r3, #1
 8003aba:	e09d      	b.n	8003bf8 <HAL_SD_GetCardCSD+0x338>
 8003abc:	687b      	ldr	r3, [r7, #4]
 8003abe:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8003ac0:	0b9b      	lsrs	r3, r3, #14
 8003ac2:	b2db      	uxtb	r3, r3
 8003ac4:	f003 0301 	and.w	r3, r3, #1
 8003ac8:	b2da      	uxtb	r2, r3
 8003aca:	683b      	ldr	r3, [r7, #0]
 8003acc:	765a      	strb	r2, [r3, #25]
 8003ace:	687b      	ldr	r3, [r7, #4]
 8003ad0:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8003ad2:	09db      	lsrs	r3, r3, #7
 8003ad4:	b2db      	uxtb	r3, r3
 8003ad6:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
 8003ada:	b2da      	uxtb	r2, r3
 8003adc:	683b      	ldr	r3, [r7, #0]
 8003ade:	769a      	strb	r2, [r3, #26]
 8003ae0:	687b      	ldr	r3, [r7, #4]
 8003ae2:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8003ae4:	b2db      	uxtb	r3, r3
 8003ae6:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
 8003aea:	b2da      	uxtb	r2, r3
 8003aec:	683b      	ldr	r3, [r7, #0]
 8003aee:	76da      	strb	r2, [r3, #27]
 8003af0:	687b      	ldr	r3, [r7, #4]
 8003af2:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003af4:	0fdb      	lsrs	r3, r3, #31
 8003af6:	b2da      	uxtb	r2, r3
 8003af8:	683b      	ldr	r3, [r7, #0]
 8003afa:	771a      	strb	r2, [r3, #28]
 8003afc:	687b      	ldr	r3, [r7, #4]
 8003afe:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b00:	0f5b      	lsrs	r3, r3, #29
 8003b02:	b2db      	uxtb	r3, r3
 8003b04:	f003 0303 	and.w	r3, r3, #3
 8003b08:	b2da      	uxtb	r2, r3
 8003b0a:	683b      	ldr	r3, [r7, #0]
 8003b0c:	775a      	strb	r2, [r3, #29]
 8003b0e:	687b      	ldr	r3, [r7, #4]
 8003b10:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b12:	0e9b      	lsrs	r3, r3, #26
 8003b14:	b2db      	uxtb	r3, r3
 8003b16:	f003 0307 	and.w	r3, r3, #7
 8003b1a:	b2da      	uxtb	r2, r3
 8003b1c:	683b      	ldr	r3, [r7, #0]
 8003b1e:	779a      	strb	r2, [r3, #30]
 8003b20:	687b      	ldr	r3, [r7, #4]
 8003b22:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b24:	0d9b      	lsrs	r3, r3, #22
 8003b26:	b2db      	uxtb	r3, r3
 8003b28:	f003 030f 	and.w	r3, r3, #15
 8003b2c:	b2da      	uxtb	r2, r3
 8003b2e:	683b      	ldr	r3, [r7, #0]
 8003b30:	77da      	strb	r2, [r3, #31]
 8003b32:	687b      	ldr	r3, [r7, #4]
 8003b34:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b36:	0d5b      	lsrs	r3, r3, #21
 8003b38:	b2db      	uxtb	r3, r3
 8003b3a:	f003 0301 	and.w	r3, r3, #1
 8003b3e:	b2da      	uxtb	r2, r3
 8003b40:	683b      	ldr	r3, [r7, #0]
 8003b42:	f883 2020 	strb.w	r2, [r3, #32]
 8003b46:	683b      	ldr	r3, [r7, #0]
 8003b48:	2200      	movs	r2, #0
 8003b4a:	f883 2021 	strb.w	r2, [r3, #33]	@ 0x21
 8003b4e:	687b      	ldr	r3, [r7, #4]
 8003b50:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b52:	0c1b      	lsrs	r3, r3, #16
 8003b54:	b2db      	uxtb	r3, r3
 8003b56:	f003 0301 	and.w	r3, r3, #1
 8003b5a:	b2da      	uxtb	r2, r3
 8003b5c:	683b      	ldr	r3, [r7, #0]
 8003b5e:	f883 2022 	strb.w	r2, [r3, #34]	@ 0x22
 8003b62:	687b      	ldr	r3, [r7, #4]
 8003b64:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b66:	0bdb      	lsrs	r3, r3, #15
 8003b68:	b2db      	uxtb	r3, r3
 8003b6a:	f003 0301 	and.w	r3, r3, #1
 8003b6e:	b2da      	uxtb	r2, r3
 8003b70:	683b      	ldr	r3, [r7, #0]
 8003b72:	f883 2023 	strb.w	r2, [r3, #35]	@ 0x23
 8003b76:	687b      	ldr	r3, [r7, #4]
 8003b78:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b7a:	0b9b      	lsrs	r3, r3, #14
 8003b7c:	b2db      	uxtb	r3, r3
 8003b7e:	f003 0301 	and.w	r3, r3, #1
 8003b82:	b2da      	uxtb	r2, r3
 8003b84:	683b      	ldr	r3, [r7, #0]
 8003b86:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8003b8a:	687b      	ldr	r3, [r7, #4]
 8003b8c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003b8e:	0b5b      	lsrs	r3, r3, #13
 8003b90:	b2db      	uxtb	r3, r3
 8003b92:	f003 0301 	and.w	r3, r3, #1
 8003b96:	b2da      	uxtb	r2, r3
 8003b98:	683b      	ldr	r3, [r7, #0]
 8003b9a:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8003b9e:	687b      	ldr	r3, [r7, #4]
 8003ba0:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003ba2:	0b1b      	lsrs	r3, r3, #12
 8003ba4:	b2db      	uxtb	r3, r3
 8003ba6:	f003 0301 	and.w	r3, r3, #1
 8003baa:	b2da      	uxtb	r2, r3
 8003bac:	683b      	ldr	r3, [r7, #0]
 8003bae:	f883 2026 	strb.w	r2, [r3, #38]	@ 0x26
 8003bb2:	687b      	ldr	r3, [r7, #4]
 8003bb4:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003bb6:	0a9b      	lsrs	r3, r3, #10
 8003bb8:	b2db      	uxtb	r3, r3
 8003bba:	f003 0303 	and.w	r3, r3, #3
 8003bbe:	b2da      	uxtb	r2, r3
 8003bc0:	683b      	ldr	r3, [r7, #0]
 8003bc2:	f883 2027 	strb.w	r2, [r3, #39]	@ 0x27
 8003bc6:	687b      	ldr	r3, [r7, #4]
 8003bc8:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003bca:	0a1b      	lsrs	r3, r3, #8
 8003bcc:	b2db      	uxtb	r3, r3
 8003bce:	f003 0303 	and.w	r3, r3, #3
 8003bd2:	b2da      	uxtb	r2, r3
 8003bd4:	683b      	ldr	r3, [r7, #0]
 8003bd6:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 8003bda:	687b      	ldr	r3, [r7, #4]
 8003bdc:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 8003bde:	085b      	lsrs	r3, r3, #1
 8003be0:	b2db      	uxtb	r3, r3
 8003be2:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
 8003be6:	b2da      	uxtb	r2, r3
 8003be8:	683b      	ldr	r3, [r7, #0]
 8003bea:	f883 2029 	strb.w	r2, [r3, #41]	@ 0x29
 8003bee:	683b      	ldr	r3, [r7, #0]
 8003bf0:	2201      	movs	r2, #1
 8003bf2:	f883 202a 	strb.w	r2, [r3, #42]	@ 0x2a
 8003bf6:	2300      	movs	r3, #0
 8003bf8:	4618      	mov	r0, r3
 8003bfa:	370c      	adds	r7, #12
 8003bfc:	46bd      	mov	sp, r7
 8003bfe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003c02:	4770      	bx	lr
 8003c04:	004005ff 	.word	0x004005ff

08003c08 <HAL_SD_GetCardInfo>:
 8003c08:	b480      	push	{r7}
 8003c0a:	b083      	sub	sp, #12
 8003c0c:	af00      	add	r7, sp, #0
 8003c0e:	6078      	str	r0, [r7, #4]
 8003c10:	6039      	str	r1, [r7, #0]
 8003c12:	687b      	ldr	r3, [r7, #4]
 8003c14:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
 8003c16:	683b      	ldr	r3, [r7, #0]
 8003c18:	601a      	str	r2, [r3, #0]
 8003c1a:	687b      	ldr	r3, [r7, #4]
 8003c1c:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
 8003c1e:	683b      	ldr	r3, [r7, #0]
 8003c20:	605a      	str	r2, [r3, #4]
 8003c22:	687b      	ldr	r3, [r7, #4]
 8003c24:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8003c26:	683b      	ldr	r3, [r7, #0]
 8003c28:	609a      	str	r2, [r3, #8]
 8003c2a:	687b      	ldr	r3, [r7, #4]
 8003c2c:	6d1a      	ldr	r2, [r3, #80]	@ 0x50
 8003c2e:	683b      	ldr	r3, [r7, #0]
 8003c30:	60da      	str	r2, [r3, #12]
 8003c32:	687b      	ldr	r3, [r7, #4]
 8003c34:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
 8003c36:	683b      	ldr	r3, [r7, #0]
 8003c38:	611a      	str	r2, [r3, #16]
 8003c3a:	687b      	ldr	r3, [r7, #4]
 8003c3c:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
 8003c3e:	683b      	ldr	r3, [r7, #0]
 8003c40:	615a      	str	r2, [r3, #20]
 8003c42:	687b      	ldr	r3, [r7, #4]
 8003c44:	6dda      	ldr	r2, [r3, #92]	@ 0x5c
 8003c46:	683b      	ldr	r3, [r7, #0]
 8003c48:	619a      	str	r2, [r3, #24]
 8003c4a:	687b      	ldr	r3, [r7, #4]
 8003c4c:	6e1a      	ldr	r2, [r3, #96]	@ 0x60
 8003c4e:	683b      	ldr	r3, [r7, #0]
 8003c50:	61da      	str	r2, [r3, #28]
 8003c52:	2300      	movs	r3, #0
 8003c54:	4618      	mov	r0, r3
 8003c56:	370c      	adds	r7, #12
 8003c58:	46bd      	mov	sp, r7
 8003c5a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003c5e:	4770      	bx	lr

08003c60 <HAL_SD_GetCardState>:
 8003c60:	b580      	push	{r7, lr}
 8003c62:	b086      	sub	sp, #24
 8003c64:	af00      	add	r7, sp, #0
 8003c66:	6078      	str	r0, [r7, #4]
 8003c68:	2300      	movs	r3, #0
 8003c6a:	60fb      	str	r3, [r7, #12]
 8003c6c:	f107 030c 	add.w	r3, r7, #12
 8003c70:	4619      	mov	r1, r3
 8003c72:	6878      	ldr	r0, [r7, #4]
 8003c74:	f000 fa7e 	bl	8004174 <SD_SendStatus>
 8003c78:	6178      	str	r0, [r7, #20]
 8003c7a:	697b      	ldr	r3, [r7, #20]
 8003c7c:	2b00      	cmp	r3, #0
 8003c7e:	d005      	beq.n	8003c8c <HAL_SD_GetCardState+0x2c>
 8003c80:	687b      	ldr	r3, [r7, #4]
 8003c82:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 8003c84:	697b      	ldr	r3, [r7, #20]
 8003c86:	431a      	orrs	r2, r3
 8003c88:	687b      	ldr	r3, [r7, #4]
 8003c8a:	639a      	str	r2, [r3, #56]	@ 0x38
 8003c8c:	68fb      	ldr	r3, [r7, #12]
 8003c8e:	0a5b      	lsrs	r3, r3, #9
 8003c90:	f003 030f 	and.w	r3, r3, #15
 8003c94:	613b      	str	r3, [r7, #16]
 8003c96:	693b      	ldr	r3, [r7, #16]
 8003c98:	4618      	mov	r0, r3
 8003c9a:	3718      	adds	r7, #24
 8003c9c:	46bd      	mov	sp, r7
 8003c9e:	bd80      	pop	{r7, pc}

08003ca0 <SD_DMATransmitCplt>:
 8003ca0:	b480      	push	{r7}
 8003ca2:	b085      	sub	sp, #20
 8003ca4:	af00      	add	r7, sp, #0
 8003ca6:	6078      	str	r0, [r7, #4]
 8003ca8:	687b      	ldr	r3, [r7, #4]
 8003caa:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003cac:	60fb      	str	r3, [r7, #12]
 8003cae:	68fb      	ldr	r3, [r7, #12]
 8003cb0:	681b      	ldr	r3, [r3, #0]
 8003cb2:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8003cb4:	68fb      	ldr	r3, [r7, #12]
 8003cb6:	681b      	ldr	r3, [r3, #0]
 8003cb8:	f442 7280 	orr.w	r2, r2, #256	@ 0x100
 8003cbc:	63da      	str	r2, [r3, #60]	@ 0x3c
 8003cbe:	bf00      	nop
 8003cc0:	3714      	adds	r7, #20
 8003cc2:	46bd      	mov	sp, r7
 8003cc4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003cc8:	4770      	bx	lr

08003cca <SD_DMAReceiveCplt>:
 8003cca:	b580      	push	{r7, lr}
 8003ccc:	b084      	sub	sp, #16
 8003cce:	af00      	add	r7, sp, #0
 8003cd0:	6078      	str	r0, [r7, #4]
 8003cd2:	687b      	ldr	r3, [r7, #4]
 8003cd4:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003cd6:	60fb      	str	r3, [r7, #12]
 8003cd8:	68fb      	ldr	r3, [r7, #12]
 8003cda:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8003cdc:	2b82      	cmp	r3, #130	@ 0x82
 8003cde:	d111      	bne.n	8003d04 <SD_DMAReceiveCplt+0x3a>
 8003ce0:	68fb      	ldr	r3, [r7, #12]
 8003ce2:	681b      	ldr	r3, [r3, #0]
 8003ce4:	4618      	mov	r0, r3
 8003ce6:	f7fe fe47 	bl	8002978 <SDMMC_CmdStopTransfer>
 8003cea:	60b8      	str	r0, [r7, #8]
 8003cec:	68bb      	ldr	r3, [r7, #8]
 8003cee:	2b00      	cmp	r3, #0
 8003cf0:	d008      	beq.n	8003d04 <SD_DMAReceiveCplt+0x3a>
 8003cf2:	68fb      	ldr	r3, [r7, #12]
 8003cf4:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 8003cf6:	68bb      	ldr	r3, [r7, #8]
 8003cf8:	431a      	orrs	r2, r3
 8003cfa:	68fb      	ldr	r3, [r7, #12]
 8003cfc:	639a      	str	r2, [r3, #56]	@ 0x38
 8003cfe:	68f8      	ldr	r0, [r7, #12]
 8003d00:	f7ff fdd4 	bl	80038ac <HAL_SD_ErrorCallback>
 8003d04:	68fb      	ldr	r3, [r7, #12]
 8003d06:	681b      	ldr	r3, [r3, #0]
 8003d08:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8003d0a:	68fb      	ldr	r3, [r7, #12]
 8003d0c:	681b      	ldr	r3, [r3, #0]
 8003d0e:	f022 0208 	bic.w	r2, r2, #8
 8003d12:	62da      	str	r2, [r3, #44]	@ 0x2c
 8003d14:	68fb      	ldr	r3, [r7, #12]
 8003d16:	681b      	ldr	r3, [r3, #0]
 8003d18:	f240 523a 	movw	r2, #1338	@ 0x53a
 8003d1c:	639a      	str	r2, [r3, #56]	@ 0x38
 8003d1e:	68fb      	ldr	r3, [r7, #12]
 8003d20:	2201      	movs	r2, #1
 8003d22:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003d26:	68fb      	ldr	r3, [r7, #12]
 8003d28:	2200      	movs	r2, #0
 8003d2a:	631a      	str	r2, [r3, #48]	@ 0x30
 8003d2c:	68f8      	ldr	r0, [r7, #12]
 8003d2e:	f007 fe11 	bl	800b954 <HAL_SD_RxCpltCallback>
 8003d32:	bf00      	nop
 8003d34:	3710      	adds	r7, #16
 8003d36:	46bd      	mov	sp, r7
 8003d38:	bd80      	pop	{r7, pc}
	...

08003d3c <SD_DMAError>:
 8003d3c:	b580      	push	{r7, lr}
 8003d3e:	b086      	sub	sp, #24
 8003d40:	af00      	add	r7, sp, #0
 8003d42:	6078      	str	r0, [r7, #4]
 8003d44:	687b      	ldr	r3, [r7, #4]
 8003d46:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003d48:	617b      	str	r3, [r7, #20]
 8003d4a:	6878      	ldr	r0, [r7, #4]
 8003d4c:	f7fe fad0 	bl	80022f0 <HAL_DMA_GetError>
 8003d50:	4603      	mov	r3, r0
 8003d52:	2b02      	cmp	r3, #2
 8003d54:	d03e      	beq.n	8003dd4 <SD_DMAError+0x98>
 8003d56:	697b      	ldr	r3, [r7, #20]
 8003d58:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8003d5a:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8003d5c:	613b      	str	r3, [r7, #16]
 8003d5e:	697b      	ldr	r3, [r7, #20]
 8003d60:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8003d62:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8003d64:	60fb      	str	r3, [r7, #12]
 8003d66:	693b      	ldr	r3, [r7, #16]
 8003d68:	2b01      	cmp	r3, #1
 8003d6a:	d002      	beq.n	8003d72 <SD_DMAError+0x36>
 8003d6c:	68fb      	ldr	r3, [r7, #12]
 8003d6e:	2b01      	cmp	r3, #1
 8003d70:	d12d      	bne.n	8003dce <SD_DMAError+0x92>
 8003d72:	697b      	ldr	r3, [r7, #20]
 8003d74:	681b      	ldr	r3, [r3, #0]
 8003d76:	4a19      	ldr	r2, [pc, #100]	@ (8003ddc <SD_DMAError+0xa0>)
 8003d78:	639a      	str	r2, [r3, #56]	@ 0x38
 8003d7a:	697b      	ldr	r3, [r7, #20]
 8003d7c:	681b      	ldr	r3, [r3, #0]
 8003d7e:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8003d80:	697b      	ldr	r3, [r7, #20]
 8003d82:	681b      	ldr	r3, [r3, #0]
 8003d84:	f422 729d 	bic.w	r2, r2, #314	@ 0x13a
 8003d88:	63da      	str	r2, [r3, #60]	@ 0x3c
 8003d8a:	697b      	ldr	r3, [r7, #20]
 8003d8c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003d8e:	f043 4280 	orr.w	r2, r3, #1073741824	@ 0x40000000
 8003d92:	697b      	ldr	r3, [r7, #20]
 8003d94:	639a      	str	r2, [r3, #56]	@ 0x38
 8003d96:	6978      	ldr	r0, [r7, #20]
 8003d98:	f7ff ff62 	bl	8003c60 <HAL_SD_GetCardState>
 8003d9c:	60b8      	str	r0, [r7, #8]
 8003d9e:	68bb      	ldr	r3, [r7, #8]
 8003da0:	2b06      	cmp	r3, #6
 8003da2:	d002      	beq.n	8003daa <SD_DMAError+0x6e>
 8003da4:	68bb      	ldr	r3, [r7, #8]
 8003da6:	2b05      	cmp	r3, #5
 8003da8:	d10a      	bne.n	8003dc0 <SD_DMAError+0x84>
 8003daa:	697b      	ldr	r3, [r7, #20]
 8003dac:	681b      	ldr	r3, [r3, #0]
 8003dae:	4618      	mov	r0, r3
 8003db0:	f7fe fde2 	bl	8002978 <SDMMC_CmdStopTransfer>
 8003db4:	4602      	mov	r2, r0
 8003db6:	697b      	ldr	r3, [r7, #20]
 8003db8:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003dba:	431a      	orrs	r2, r3
 8003dbc:	697b      	ldr	r3, [r7, #20]
 8003dbe:	639a      	str	r2, [r3, #56]	@ 0x38
 8003dc0:	697b      	ldr	r3, [r7, #20]
 8003dc2:	2201      	movs	r2, #1
 8003dc4:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003dc8:	697b      	ldr	r3, [r7, #20]
 8003dca:	2200      	movs	r2, #0
 8003dcc:	631a      	str	r2, [r3, #48]	@ 0x30
 8003dce:	6978      	ldr	r0, [r7, #20]
 8003dd0:	f7ff fd6c 	bl	80038ac <HAL_SD_ErrorCallback>
 8003dd4:	bf00      	nop
 8003dd6:	3718      	adds	r7, #24
 8003dd8:	46bd      	mov	sp, r7
 8003dda:	bd80      	pop	{r7, pc}
 8003ddc:	004005ff 	.word	0x004005ff

08003de0 <SD_DMATxAbort>:
 8003de0:	b580      	push	{r7, lr}
 8003de2:	b084      	sub	sp, #16
 8003de4:	af00      	add	r7, sp, #0
 8003de6:	6078      	str	r0, [r7, #4]
 8003de8:	687b      	ldr	r3, [r7, #4]
 8003dea:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003dec:	60fb      	str	r3, [r7, #12]
 8003dee:	68fb      	ldr	r3, [r7, #12]
 8003df0:	681b      	ldr	r3, [r3, #0]
 8003df2:	f240 523a 	movw	r2, #1338	@ 0x53a
 8003df6:	639a      	str	r2, [r3, #56]	@ 0x38
 8003df8:	68f8      	ldr	r0, [r7, #12]
 8003dfa:	f7ff ff31 	bl	8003c60 <HAL_SD_GetCardState>
 8003dfe:	60b8      	str	r0, [r7, #8]
 8003e00:	68fb      	ldr	r3, [r7, #12]
 8003e02:	2201      	movs	r2, #1
 8003e04:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003e08:	68fb      	ldr	r3, [r7, #12]
 8003e0a:	2200      	movs	r2, #0
 8003e0c:	631a      	str	r2, [r3, #48]	@ 0x30
 8003e0e:	68bb      	ldr	r3, [r7, #8]
 8003e10:	2b06      	cmp	r3, #6
 8003e12:	d002      	beq.n	8003e1a <SD_DMATxAbort+0x3a>
 8003e14:	68bb      	ldr	r3, [r7, #8]
 8003e16:	2b05      	cmp	r3, #5
 8003e18:	d10a      	bne.n	8003e30 <SD_DMATxAbort+0x50>
 8003e1a:	68fb      	ldr	r3, [r7, #12]
 8003e1c:	681b      	ldr	r3, [r3, #0]
 8003e1e:	4618      	mov	r0, r3
 8003e20:	f7fe fdaa 	bl	8002978 <SDMMC_CmdStopTransfer>
 8003e24:	4602      	mov	r2, r0
 8003e26:	68fb      	ldr	r3, [r7, #12]
 8003e28:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003e2a:	431a      	orrs	r2, r3
 8003e2c:	68fb      	ldr	r3, [r7, #12]
 8003e2e:	639a      	str	r2, [r3, #56]	@ 0x38
 8003e30:	68fb      	ldr	r3, [r7, #12]
 8003e32:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003e34:	2b00      	cmp	r3, #0
 8003e36:	d103      	bne.n	8003e40 <SD_DMATxAbort+0x60>
 8003e38:	68f8      	ldr	r0, [r7, #12]
 8003e3a:	f007 fd77 	bl	800b92c <HAL_SD_AbortCallback>
 8003e3e:	e002      	b.n	8003e46 <SD_DMATxAbort+0x66>
 8003e40:	68f8      	ldr	r0, [r7, #12]
 8003e42:	f7ff fd33 	bl	80038ac <HAL_SD_ErrorCallback>
 8003e46:	bf00      	nop
 8003e48:	3710      	adds	r7, #16
 8003e4a:	46bd      	mov	sp, r7
 8003e4c:	bd80      	pop	{r7, pc}

08003e4e <SD_DMARxAbort>:
 8003e4e:	b580      	push	{r7, lr}
 8003e50:	b084      	sub	sp, #16
 8003e52:	af00      	add	r7, sp, #0
 8003e54:	6078      	str	r0, [r7, #4]
 8003e56:	687b      	ldr	r3, [r7, #4]
 8003e58:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003e5a:	60fb      	str	r3, [r7, #12]
 8003e5c:	68fb      	ldr	r3, [r7, #12]
 8003e5e:	681b      	ldr	r3, [r3, #0]
 8003e60:	f240 523a 	movw	r2, #1338	@ 0x53a
 8003e64:	639a      	str	r2, [r3, #56]	@ 0x38
 8003e66:	68f8      	ldr	r0, [r7, #12]
 8003e68:	f7ff fefa 	bl	8003c60 <HAL_SD_GetCardState>
 8003e6c:	60b8      	str	r0, [r7, #8]
 8003e6e:	68fb      	ldr	r3, [r7, #12]
 8003e70:	2201      	movs	r2, #1
 8003e72:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8003e76:	68fb      	ldr	r3, [r7, #12]
 8003e78:	2200      	movs	r2, #0
 8003e7a:	631a      	str	r2, [r3, #48]	@ 0x30
 8003e7c:	68bb      	ldr	r3, [r7, #8]
 8003e7e:	2b06      	cmp	r3, #6
 8003e80:	d002      	beq.n	8003e88 <SD_DMARxAbort+0x3a>
 8003e82:	68bb      	ldr	r3, [r7, #8]
 8003e84:	2b05      	cmp	r3, #5
 8003e86:	d10a      	bne.n	8003e9e <SD_DMARxAbort+0x50>
 8003e88:	68fb      	ldr	r3, [r7, #12]
 8003e8a:	681b      	ldr	r3, [r3, #0]
 8003e8c:	4618      	mov	r0, r3
 8003e8e:	f7fe fd73 	bl	8002978 <SDMMC_CmdStopTransfer>
 8003e92:	4602      	mov	r2, r0
 8003e94:	68fb      	ldr	r3, [r7, #12]
 8003e96:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003e98:	431a      	orrs	r2, r3
 8003e9a:	68fb      	ldr	r3, [r7, #12]
 8003e9c:	639a      	str	r2, [r3, #56]	@ 0x38
 8003e9e:	68fb      	ldr	r3, [r7, #12]
 8003ea0:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8003ea2:	2b00      	cmp	r3, #0
 8003ea4:	d103      	bne.n	8003eae <SD_DMARxAbort+0x60>
 8003ea6:	68f8      	ldr	r0, [r7, #12]
 8003ea8:	f007 fd40 	bl	800b92c <HAL_SD_AbortCallback>
 8003eac:	e002      	b.n	8003eb4 <SD_DMARxAbort+0x66>
 8003eae:	68f8      	ldr	r0, [r7, #12]
 8003eb0:	f7ff fcfc 	bl	80038ac <HAL_SD_ErrorCallback>
 8003eb4:	bf00      	nop
 8003eb6:	3710      	adds	r7, #16
 8003eb8:	46bd      	mov	sp, r7
 8003eba:	bd80      	pop	{r7, pc}

08003ebc <SD_InitCard>:
 8003ebc:	b5b0      	push	{r4, r5, r7, lr}
 8003ebe:	b094      	sub	sp, #80	@ 0x50
 8003ec0:	af04      	add	r7, sp, #16
 8003ec2:	6078      	str	r0, [r7, #4]
 8003ec4:	2301      	movs	r3, #1
 8003ec6:	81fb      	strh	r3, [r7, #14]
 8003ec8:	687b      	ldr	r3, [r7, #4]
 8003eca:	681b      	ldr	r3, [r3, #0]
 8003ecc:	4618      	mov	r0, r3
 8003ece:	f7fe fc25 	bl	800271c <SDMMC_GetPowerState>
 8003ed2:	4603      	mov	r3, r0
 8003ed4:	2b00      	cmp	r3, #0
 8003ed6:	d102      	bne.n	8003ede <SD_InitCard+0x22>
 8003ed8:	f04f 6380 	mov.w	r3, #67108864	@ 0x4000000
 8003edc:	e0b8      	b.n	8004050 <SD_InitCard+0x194>
 8003ede:	687b      	ldr	r3, [r7, #4]
 8003ee0:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8003ee2:	2b03      	cmp	r3, #3
 8003ee4:	d02f      	beq.n	8003f46 <SD_InitCard+0x8a>
 8003ee6:	687b      	ldr	r3, [r7, #4]
 8003ee8:	681b      	ldr	r3, [r3, #0]
 8003eea:	4618      	mov	r0, r3
 8003eec:	f7fe fe0c 	bl	8002b08 <SDMMC_CmdSendCID>
 8003ef0:	63f8      	str	r0, [r7, #60]	@ 0x3c
 8003ef2:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003ef4:	2b00      	cmp	r3, #0
 8003ef6:	d001      	beq.n	8003efc <SD_InitCard+0x40>
 8003ef8:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003efa:	e0a9      	b.n	8004050 <SD_InitCard+0x194>
 8003efc:	687b      	ldr	r3, [r7, #4]
 8003efe:	681b      	ldr	r3, [r3, #0]
 8003f00:	2100      	movs	r1, #0
 8003f02:	4618      	mov	r0, r3
 8003f04:	f7fe fc4f 	bl	80027a6 <SDMMC_GetResponse>
 8003f08:	4602      	mov	r2, r0
 8003f0a:	687b      	ldr	r3, [r7, #4]
 8003f0c:	675a      	str	r2, [r3, #116]	@ 0x74
 8003f0e:	687b      	ldr	r3, [r7, #4]
 8003f10:	681b      	ldr	r3, [r3, #0]
 8003f12:	2104      	movs	r1, #4
 8003f14:	4618      	mov	r0, r3
 8003f16:	f7fe fc46 	bl	80027a6 <SDMMC_GetResponse>
 8003f1a:	4602      	mov	r2, r0
 8003f1c:	687b      	ldr	r3, [r7, #4]
 8003f1e:	679a      	str	r2, [r3, #120]	@ 0x78
 8003f20:	687b      	ldr	r3, [r7, #4]
 8003f22:	681b      	ldr	r3, [r3, #0]
 8003f24:	2108      	movs	r1, #8
 8003f26:	4618      	mov	r0, r3
 8003f28:	f7fe fc3d 	bl	80027a6 <SDMMC_GetResponse>
 8003f2c:	4602      	mov	r2, r0
 8003f2e:	687b      	ldr	r3, [r7, #4]
 8003f30:	67da      	str	r2, [r3, #124]	@ 0x7c
 8003f32:	687b      	ldr	r3, [r7, #4]
 8003f34:	681b      	ldr	r3, [r3, #0]
 8003f36:	210c      	movs	r1, #12
 8003f38:	4618      	mov	r0, r3
 8003f3a:	f7fe fc34 	bl	80027a6 <SDMMC_GetResponse>
 8003f3e:	4602      	mov	r2, r0
 8003f40:	687b      	ldr	r3, [r7, #4]
 8003f42:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
 8003f46:	687b      	ldr	r3, [r7, #4]
 8003f48:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8003f4a:	2b03      	cmp	r3, #3
 8003f4c:	d00d      	beq.n	8003f6a <SD_InitCard+0xae>
 8003f4e:	687b      	ldr	r3, [r7, #4]
 8003f50:	681b      	ldr	r3, [r3, #0]
 8003f52:	f107 020e 	add.w	r2, r7, #14
 8003f56:	4611      	mov	r1, r2
 8003f58:	4618      	mov	r0, r3
 8003f5a:	f7fe fe12 	bl	8002b82 <SDMMC_CmdSetRelAdd>
 8003f5e:	63f8      	str	r0, [r7, #60]	@ 0x3c
 8003f60:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003f62:	2b00      	cmp	r3, #0
 8003f64:	d001      	beq.n	8003f6a <SD_InitCard+0xae>
 8003f66:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003f68:	e072      	b.n	8004050 <SD_InitCard+0x194>
 8003f6a:	687b      	ldr	r3, [r7, #4]
 8003f6c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8003f6e:	2b03      	cmp	r3, #3
 8003f70:	d036      	beq.n	8003fe0 <SD_InitCard+0x124>
 8003f72:	89fb      	ldrh	r3, [r7, #14]
 8003f74:	461a      	mov	r2, r3
 8003f76:	687b      	ldr	r3, [r7, #4]
 8003f78:	651a      	str	r2, [r3, #80]	@ 0x50
 8003f7a:	687b      	ldr	r3, [r7, #4]
 8003f7c:	681a      	ldr	r2, [r3, #0]
 8003f7e:	687b      	ldr	r3, [r7, #4]
 8003f80:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8003f82:	041b      	lsls	r3, r3, #16
 8003f84:	4619      	mov	r1, r3
 8003f86:	4610      	mov	r0, r2
 8003f88:	f7fe fddc 	bl	8002b44 <SDMMC_CmdSendCSD>
 8003f8c:	63f8      	str	r0, [r7, #60]	@ 0x3c
 8003f8e:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003f90:	2b00      	cmp	r3, #0
 8003f92:	d001      	beq.n	8003f98 <SD_InitCard+0xdc>
 8003f94:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8003f96:	e05b      	b.n	8004050 <SD_InitCard+0x194>
 8003f98:	687b      	ldr	r3, [r7, #4]
 8003f9a:	681b      	ldr	r3, [r3, #0]
 8003f9c:	2100      	movs	r1, #0
 8003f9e:	4618      	mov	r0, r3
 8003fa0:	f7fe fc01 	bl	80027a6 <SDMMC_GetResponse>
 8003fa4:	4602      	mov	r2, r0
 8003fa6:	687b      	ldr	r3, [r7, #4]
 8003fa8:	665a      	str	r2, [r3, #100]	@ 0x64
 8003faa:	687b      	ldr	r3, [r7, #4]
 8003fac:	681b      	ldr	r3, [r3, #0]
 8003fae:	2104      	movs	r1, #4
 8003fb0:	4618      	mov	r0, r3
 8003fb2:	f7fe fbf8 	bl	80027a6 <SDMMC_GetResponse>
 8003fb6:	4602      	mov	r2, r0
 8003fb8:	687b      	ldr	r3, [r7, #4]
 8003fba:	669a      	str	r2, [r3, #104]	@ 0x68
 8003fbc:	687b      	ldr	r3, [r7, #4]
 8003fbe:	681b      	ldr	r3, [r3, #0]
 8003fc0:	2108      	movs	r1, #8
 8003fc2:	4618      	mov	r0, r3
 8003fc4:	f7fe fbef 	bl	80027a6 <SDMMC_GetResponse>
 8003fc8:	4602      	mov	r2, r0
 8003fca:	687b      	ldr	r3, [r7, #4]
 8003fcc:	66da      	str	r2, [r3, #108]	@ 0x6c
 8003fce:	687b      	ldr	r3, [r7, #4]
 8003fd0:	681b      	ldr	r3, [r3, #0]
 8003fd2:	210c      	movs	r1, #12
 8003fd4:	4618      	mov	r0, r3
 8003fd6:	f7fe fbe6 	bl	80027a6 <SDMMC_GetResponse>
 8003fda:	4602      	mov	r2, r0
 8003fdc:	687b      	ldr	r3, [r7, #4]
 8003fde:	671a      	str	r2, [r3, #112]	@ 0x70
 8003fe0:	687b      	ldr	r3, [r7, #4]
 8003fe2:	681b      	ldr	r3, [r3, #0]
 8003fe4:	2104      	movs	r1, #4
 8003fe6:	4618      	mov	r0, r3
 8003fe8:	f7fe fbdd 	bl	80027a6 <SDMMC_GetResponse>
 8003fec:	4603      	mov	r3, r0
 8003fee:	0d1a      	lsrs	r2, r3, #20
 8003ff0:	687b      	ldr	r3, [r7, #4]
 8003ff2:	64da      	str	r2, [r3, #76]	@ 0x4c
 8003ff4:	f107 0310 	add.w	r3, r7, #16
 8003ff8:	4619      	mov	r1, r3
 8003ffa:	6878      	ldr	r0, [r7, #4]
 8003ffc:	f7ff fc60 	bl	80038c0 <HAL_SD_GetCardCSD>
 8004000:	4603      	mov	r3, r0
 8004002:	2b00      	cmp	r3, #0
 8004004:	d002      	beq.n	800400c <SD_InitCard+0x150>
 8004006:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
 800400a:	e021      	b.n	8004050 <SD_InitCard+0x194>
 800400c:	687b      	ldr	r3, [r7, #4]
 800400e:	6819      	ldr	r1, [r3, #0]
 8004010:	687b      	ldr	r3, [r7, #4]
 8004012:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8004014:	041b      	lsls	r3, r3, #16
 8004016:	2200      	movs	r2, #0
 8004018:	461c      	mov	r4, r3
 800401a:	4615      	mov	r5, r2
 800401c:	4622      	mov	r2, r4
 800401e:	462b      	mov	r3, r5
 8004020:	4608      	mov	r0, r1
 8004022:	f7fe fccb 	bl	80029bc <SDMMC_CmdSelDesel>
 8004026:	63f8      	str	r0, [r7, #60]	@ 0x3c
 8004028:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800402a:	2b00      	cmp	r3, #0
 800402c:	d001      	beq.n	8004032 <SD_InitCard+0x176>
 800402e:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8004030:	e00e      	b.n	8004050 <SD_InitCard+0x194>
 8004032:	687b      	ldr	r3, [r7, #4]
 8004034:	681d      	ldr	r5, [r3, #0]
 8004036:	687b      	ldr	r3, [r7, #4]
 8004038:	466c      	mov	r4, sp
 800403a:	f103 0210 	add.w	r2, r3, #16
 800403e:	ca07      	ldmia	r2, {r0, r1, r2}
 8004040:	e884 0007 	stmia.w	r4, {r0, r1, r2}
 8004044:	3304      	adds	r3, #4
 8004046:	cb0e      	ldmia	r3, {r1, r2, r3}
 8004048:	4628      	mov	r0, r5
 800404a:	f7fe fb0f 	bl	800266c <SDMMC_Init>
 800404e:	2300      	movs	r3, #0
 8004050:	4618      	mov	r0, r3
 8004052:	3740      	adds	r7, #64	@ 0x40
 8004054:	46bd      	mov	sp, r7
 8004056:	bdb0      	pop	{r4, r5, r7, pc}

08004058 <SD_PowerON>:
 8004058:	b580      	push	{r7, lr}
 800405a:	b086      	sub	sp, #24
 800405c:	af00      	add	r7, sp, #0
 800405e:	6078      	str	r0, [r7, #4]
 8004060:	2300      	movs	r3, #0
 8004062:	60bb      	str	r3, [r7, #8]
 8004064:	2300      	movs	r3, #0
 8004066:	617b      	str	r3, [r7, #20]
 8004068:	2300      	movs	r3, #0
 800406a:	613b      	str	r3, [r7, #16]
 800406c:	687b      	ldr	r3, [r7, #4]
 800406e:	681b      	ldr	r3, [r3, #0]
 8004070:	4618      	mov	r0, r3
 8004072:	f7fe fcc6 	bl	8002a02 <SDMMC_CmdGoIdleState>
 8004076:	60f8      	str	r0, [r7, #12]
 8004078:	68fb      	ldr	r3, [r7, #12]
 800407a:	2b00      	cmp	r3, #0
 800407c:	d001      	beq.n	8004082 <SD_PowerON+0x2a>
 800407e:	68fb      	ldr	r3, [r7, #12]
 8004080:	e072      	b.n	8004168 <SD_PowerON+0x110>
 8004082:	687b      	ldr	r3, [r7, #4]
 8004084:	681b      	ldr	r3, [r3, #0]
 8004086:	4618      	mov	r0, r3
 8004088:	f7fe fcd9 	bl	8002a3e <SDMMC_CmdOperCond>
 800408c:	60f8      	str	r0, [r7, #12]
 800408e:	68fb      	ldr	r3, [r7, #12]
 8004090:	2b00      	cmp	r3, #0
 8004092:	d00d      	beq.n	80040b0 <SD_PowerON+0x58>
 8004094:	687b      	ldr	r3, [r7, #4]
 8004096:	2200      	movs	r2, #0
 8004098:	649a      	str	r2, [r3, #72]	@ 0x48
 800409a:	687b      	ldr	r3, [r7, #4]
 800409c:	681b      	ldr	r3, [r3, #0]
 800409e:	4618      	mov	r0, r3
 80040a0:	f7fe fcaf 	bl	8002a02 <SDMMC_CmdGoIdleState>
 80040a4:	60f8      	str	r0, [r7, #12]
 80040a6:	68fb      	ldr	r3, [r7, #12]
 80040a8:	2b00      	cmp	r3, #0
 80040aa:	d004      	beq.n	80040b6 <SD_PowerON+0x5e>
 80040ac:	68fb      	ldr	r3, [r7, #12]
 80040ae:	e05b      	b.n	8004168 <SD_PowerON+0x110>
 80040b0:	687b      	ldr	r3, [r7, #4]
 80040b2:	2201      	movs	r2, #1
 80040b4:	649a      	str	r2, [r3, #72]	@ 0x48
 80040b6:	687b      	ldr	r3, [r7, #4]
 80040b8:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80040ba:	2b01      	cmp	r3, #1
 80040bc:	d137      	bne.n	800412e <SD_PowerON+0xd6>
 80040be:	687b      	ldr	r3, [r7, #4]
 80040c0:	681b      	ldr	r3, [r3, #0]
 80040c2:	2100      	movs	r1, #0
 80040c4:	4618      	mov	r0, r3
 80040c6:	f7fe fcd9 	bl	8002a7c <SDMMC_CmdAppCommand>
 80040ca:	60f8      	str	r0, [r7, #12]
 80040cc:	68fb      	ldr	r3, [r7, #12]
 80040ce:	2b00      	cmp	r3, #0
 80040d0:	d02d      	beq.n	800412e <SD_PowerON+0xd6>
 80040d2:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
 80040d6:	e047      	b.n	8004168 <SD_PowerON+0x110>
 80040d8:	687b      	ldr	r3, [r7, #4]
 80040da:	681b      	ldr	r3, [r3, #0]
 80040dc:	2100      	movs	r1, #0
 80040de:	4618      	mov	r0, r3
 80040e0:	f7fe fccc 	bl	8002a7c <SDMMC_CmdAppCommand>
 80040e4:	60f8      	str	r0, [r7, #12]
 80040e6:	68fb      	ldr	r3, [r7, #12]
 80040e8:	2b00      	cmp	r3, #0
 80040ea:	d001      	beq.n	80040f0 <SD_PowerON+0x98>
 80040ec:	68fb      	ldr	r3, [r7, #12]
 80040ee:	e03b      	b.n	8004168 <SD_PowerON+0x110>
 80040f0:	687b      	ldr	r3, [r7, #4]
 80040f2:	681b      	ldr	r3, [r3, #0]
 80040f4:	491e      	ldr	r1, [pc, #120]	@ (8004170 <SD_PowerON+0x118>)
 80040f6:	4618      	mov	r0, r3
 80040f8:	f7fe fce2 	bl	8002ac0 <SDMMC_CmdAppOperCommand>
 80040fc:	60f8      	str	r0, [r7, #12]
 80040fe:	68fb      	ldr	r3, [r7, #12]
 8004100:	2b00      	cmp	r3, #0
 8004102:	d002      	beq.n	800410a <SD_PowerON+0xb2>
 8004104:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
 8004108:	e02e      	b.n	8004168 <SD_PowerON+0x110>
 800410a:	687b      	ldr	r3, [r7, #4]
 800410c:	681b      	ldr	r3, [r3, #0]
 800410e:	2100      	movs	r1, #0
 8004110:	4618      	mov	r0, r3
 8004112:	f7fe fb48 	bl	80027a6 <SDMMC_GetResponse>
 8004116:	6178      	str	r0, [r7, #20]
 8004118:	697b      	ldr	r3, [r7, #20]
 800411a:	0fdb      	lsrs	r3, r3, #31
 800411c:	2b01      	cmp	r3, #1
 800411e:	d101      	bne.n	8004124 <SD_PowerON+0xcc>
 8004120:	2301      	movs	r3, #1
 8004122:	e000      	b.n	8004126 <SD_PowerON+0xce>
 8004124:	2300      	movs	r3, #0
 8004126:	613b      	str	r3, [r7, #16]
 8004128:	68bb      	ldr	r3, [r7, #8]
 800412a:	3301      	adds	r3, #1
 800412c:	60bb      	str	r3, [r7, #8]
 800412e:	68bb      	ldr	r3, [r7, #8]
 8004130:	f64f 72fe 	movw	r2, #65534	@ 0xfffe
 8004134:	4293      	cmp	r3, r2
 8004136:	d802      	bhi.n	800413e <SD_PowerON+0xe6>
 8004138:	693b      	ldr	r3, [r7, #16]
 800413a:	2b00      	cmp	r3, #0
 800413c:	d0cc      	beq.n	80040d8 <SD_PowerON+0x80>
 800413e:	68bb      	ldr	r3, [r7, #8]
 8004140:	f64f 72fe 	movw	r2, #65534	@ 0xfffe
 8004144:	4293      	cmp	r3, r2
 8004146:	d902      	bls.n	800414e <SD_PowerON+0xf6>
 8004148:	f04f 7380 	mov.w	r3, #16777216	@ 0x1000000
 800414c:	e00c      	b.n	8004168 <SD_PowerON+0x110>
 800414e:	697b      	ldr	r3, [r7, #20]
 8004150:	f003 4380 	and.w	r3, r3, #1073741824	@ 0x40000000
 8004154:	2b00      	cmp	r3, #0
 8004156:	d003      	beq.n	8004160 <SD_PowerON+0x108>
 8004158:	687b      	ldr	r3, [r7, #4]
 800415a:	2201      	movs	r2, #1
 800415c:	645a      	str	r2, [r3, #68]	@ 0x44
 800415e:	e002      	b.n	8004166 <SD_PowerON+0x10e>
 8004160:	687b      	ldr	r3, [r7, #4]
 8004162:	2200      	movs	r2, #0
 8004164:	645a      	str	r2, [r3, #68]	@ 0x44
 8004166:	2300      	movs	r3, #0
 8004168:	4618      	mov	r0, r3
 800416a:	3718      	adds	r7, #24
 800416c:	46bd      	mov	sp, r7
 800416e:	bd80      	pop	{r7, pc}
 8004170:	c1100000 	.word	0xc1100000

08004174 <SD_SendStatus>:
 8004174:	b580      	push	{r7, lr}
 8004176:	b084      	sub	sp, #16
 8004178:	af00      	add	r7, sp, #0
 800417a:	6078      	str	r0, [r7, #4]
 800417c:	6039      	str	r1, [r7, #0]
 800417e:	683b      	ldr	r3, [r7, #0]
 8004180:	2b00      	cmp	r3, #0
 8004182:	d102      	bne.n	800418a <SD_SendStatus+0x16>
 8004184:	f04f 6300 	mov.w	r3, #134217728	@ 0x8000000
 8004188:	e018      	b.n	80041bc <SD_SendStatus+0x48>
 800418a:	687b      	ldr	r3, [r7, #4]
 800418c:	681a      	ldr	r2, [r3, #0]
 800418e:	687b      	ldr	r3, [r7, #4]
 8004190:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8004192:	041b      	lsls	r3, r3, #16
 8004194:	4619      	mov	r1, r3
 8004196:	4610      	mov	r0, r2
 8004198:	f7fe fd14 	bl	8002bc4 <SDMMC_CmdSendStatus>
 800419c:	60f8      	str	r0, [r7, #12]
 800419e:	68fb      	ldr	r3, [r7, #12]
 80041a0:	2b00      	cmp	r3, #0
 80041a2:	d001      	beq.n	80041a8 <SD_SendStatus+0x34>
 80041a4:	68fb      	ldr	r3, [r7, #12]
 80041a6:	e009      	b.n	80041bc <SD_SendStatus+0x48>
 80041a8:	687b      	ldr	r3, [r7, #4]
 80041aa:	681b      	ldr	r3, [r3, #0]
 80041ac:	2100      	movs	r1, #0
 80041ae:	4618      	mov	r0, r3
 80041b0:	f7fe faf9 	bl	80027a6 <SDMMC_GetResponse>
 80041b4:	4602      	mov	r2, r0
 80041b6:	683b      	ldr	r3, [r7, #0]
 80041b8:	601a      	str	r2, [r3, #0]
 80041ba:	2300      	movs	r3, #0
 80041bc:	4618      	mov	r0, r3
 80041be:	3710      	adds	r7, #16
 80041c0:	46bd      	mov	sp, r7
 80041c2:	bd80      	pop	{r7, pc}

080041c4 <SD_Read_IT>:
 80041c4:	b580      	push	{r7, lr}
 80041c6:	b086      	sub	sp, #24
 80041c8:	af00      	add	r7, sp, #0
 80041ca:	6078      	str	r0, [r7, #4]
 80041cc:	687b      	ldr	r3, [r7, #4]
 80041ce:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80041d0:	60fb      	str	r3, [r7, #12]
 80041d2:	687b      	ldr	r3, [r7, #4]
 80041d4:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80041d6:	613b      	str	r3, [r7, #16]
 80041d8:	693b      	ldr	r3, [r7, #16]
 80041da:	2b00      	cmp	r3, #0
 80041dc:	d03f      	beq.n	800425e <SD_Read_IT+0x9a>
 80041de:	2300      	movs	r3, #0
 80041e0:	617b      	str	r3, [r7, #20]
 80041e2:	e033      	b.n	800424c <SD_Read_IT+0x88>
 80041e4:	687b      	ldr	r3, [r7, #4]
 80041e6:	681b      	ldr	r3, [r3, #0]
 80041e8:	4618      	mov	r0, r3
 80041ea:	f7fe fa6b 	bl	80026c4 <SDMMC_ReadFIFO>
 80041ee:	60b8      	str	r0, [r7, #8]
 80041f0:	68bb      	ldr	r3, [r7, #8]
 80041f2:	b2da      	uxtb	r2, r3
 80041f4:	68fb      	ldr	r3, [r7, #12]
 80041f6:	701a      	strb	r2, [r3, #0]
 80041f8:	68fb      	ldr	r3, [r7, #12]
 80041fa:	3301      	adds	r3, #1
 80041fc:	60fb      	str	r3, [r7, #12]
 80041fe:	693b      	ldr	r3, [r7, #16]
 8004200:	3b01      	subs	r3, #1
 8004202:	613b      	str	r3, [r7, #16]
 8004204:	68bb      	ldr	r3, [r7, #8]
 8004206:	0a1b      	lsrs	r3, r3, #8
 8004208:	b2da      	uxtb	r2, r3
 800420a:	68fb      	ldr	r3, [r7, #12]
 800420c:	701a      	strb	r2, [r3, #0]
 800420e:	68fb      	ldr	r3, [r7, #12]
 8004210:	3301      	adds	r3, #1
 8004212:	60fb      	str	r3, [r7, #12]
 8004214:	693b      	ldr	r3, [r7, #16]
 8004216:	3b01      	subs	r3, #1
 8004218:	613b      	str	r3, [r7, #16]
 800421a:	68bb      	ldr	r3, [r7, #8]
 800421c:	0c1b      	lsrs	r3, r3, #16
 800421e:	b2da      	uxtb	r2, r3
 8004220:	68fb      	ldr	r3, [r7, #12]
 8004222:	701a      	strb	r2, [r3, #0]
 8004224:	68fb      	ldr	r3, [r7, #12]
 8004226:	3301      	adds	r3, #1
 8004228:	60fb      	str	r3, [r7, #12]
 800422a:	693b      	ldr	r3, [r7, #16]
 800422c:	3b01      	subs	r3, #1
 800422e:	613b      	str	r3, [r7, #16]
 8004230:	68bb      	ldr	r3, [r7, #8]
 8004232:	0e1b      	lsrs	r3, r3, #24
 8004234:	b2da      	uxtb	r2, r3
 8004236:	68fb      	ldr	r3, [r7, #12]
 8004238:	701a      	strb	r2, [r3, #0]
 800423a:	68fb      	ldr	r3, [r7, #12]
 800423c:	3301      	adds	r3, #1
 800423e:	60fb      	str	r3, [r7, #12]
 8004240:	693b      	ldr	r3, [r7, #16]
 8004242:	3b01      	subs	r3, #1
 8004244:	613b      	str	r3, [r7, #16]
 8004246:	697b      	ldr	r3, [r7, #20]
 8004248:	3301      	adds	r3, #1
 800424a:	617b      	str	r3, [r7, #20]
 800424c:	697b      	ldr	r3, [r7, #20]
 800424e:	2b07      	cmp	r3, #7
 8004250:	d9c8      	bls.n	80041e4 <SD_Read_IT+0x20>
 8004252:	687b      	ldr	r3, [r7, #4]
 8004254:	68fa      	ldr	r2, [r7, #12]
 8004256:	629a      	str	r2, [r3, #40]	@ 0x28
 8004258:	687b      	ldr	r3, [r7, #4]
 800425a:	693a      	ldr	r2, [r7, #16]
 800425c:	62da      	str	r2, [r3, #44]	@ 0x2c
 800425e:	bf00      	nop
 8004260:	3718      	adds	r7, #24
 8004262:	46bd      	mov	sp, r7
 8004264:	bd80      	pop	{r7, pc}

08004266 <SD_Write_IT>:
 8004266:	b580      	push	{r7, lr}
 8004268:	b086      	sub	sp, #24
 800426a:	af00      	add	r7, sp, #0
 800426c:	6078      	str	r0, [r7, #4]
 800426e:	687b      	ldr	r3, [r7, #4]
 8004270:	6a1b      	ldr	r3, [r3, #32]
 8004272:	60fb      	str	r3, [r7, #12]
 8004274:	687b      	ldr	r3, [r7, #4]
 8004276:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8004278:	613b      	str	r3, [r7, #16]
 800427a:	693b      	ldr	r3, [r7, #16]
 800427c:	2b00      	cmp	r3, #0
 800427e:	d043      	beq.n	8004308 <SD_Write_IT+0xa2>
 8004280:	2300      	movs	r3, #0
 8004282:	617b      	str	r3, [r7, #20]
 8004284:	e037      	b.n	80042f6 <SD_Write_IT+0x90>
 8004286:	68fb      	ldr	r3, [r7, #12]
 8004288:	781b      	ldrb	r3, [r3, #0]
 800428a:	60bb      	str	r3, [r7, #8]
 800428c:	68fb      	ldr	r3, [r7, #12]
 800428e:	3301      	adds	r3, #1
 8004290:	60fb      	str	r3, [r7, #12]
 8004292:	693b      	ldr	r3, [r7, #16]
 8004294:	3b01      	subs	r3, #1
 8004296:	613b      	str	r3, [r7, #16]
 8004298:	68fb      	ldr	r3, [r7, #12]
 800429a:	781b      	ldrb	r3, [r3, #0]
 800429c:	021a      	lsls	r2, r3, #8
 800429e:	68bb      	ldr	r3, [r7, #8]
 80042a0:	4313      	orrs	r3, r2
 80042a2:	60bb      	str	r3, [r7, #8]
 80042a4:	68fb      	ldr	r3, [r7, #12]
 80042a6:	3301      	adds	r3, #1
 80042a8:	60fb      	str	r3, [r7, #12]
 80042aa:	693b      	ldr	r3, [r7, #16]
 80042ac:	3b01      	subs	r3, #1
 80042ae:	613b      	str	r3, [r7, #16]
 80042b0:	68fb      	ldr	r3, [r7, #12]
 80042b2:	781b      	ldrb	r3, [r3, #0]
 80042b4:	041a      	lsls	r2, r3, #16
 80042b6:	68bb      	ldr	r3, [r7, #8]
 80042b8:	4313      	orrs	r3, r2
 80042ba:	60bb      	str	r3, [r7, #8]
 80042bc:	68fb      	ldr	r3, [r7, #12]
 80042be:	3301      	adds	r3, #1
 80042c0:	60fb      	str	r3, [r7, #12]
 80042c2:	693b      	ldr	r3, [r7, #16]
 80042c4:	3b01      	subs	r3, #1
 80042c6:	613b      	str	r3, [r7, #16]
 80042c8:	68fb      	ldr	r3, [r7, #12]
 80042ca:	781b      	ldrb	r3, [r3, #0]
 80042cc:	061a      	lsls	r2, r3, #24
 80042ce:	68bb      	ldr	r3, [r7, #8]
 80042d0:	4313      	orrs	r3, r2
 80042d2:	60bb      	str	r3, [r7, #8]
 80042d4:	68fb      	ldr	r3, [r7, #12]
 80042d6:	3301      	adds	r3, #1
 80042d8:	60fb      	str	r3, [r7, #12]
 80042da:	693b      	ldr	r3, [r7, #16]
 80042dc:	3b01      	subs	r3, #1
 80042de:	613b      	str	r3, [r7, #16]
 80042e0:	687b      	ldr	r3, [r7, #4]
 80042e2:	681b      	ldr	r3, [r3, #0]
 80042e4:	f107 0208 	add.w	r2, r7, #8
 80042e8:	4611      	mov	r1, r2
 80042ea:	4618      	mov	r0, r3
 80042ec:	f7fe f9f7 	bl	80026de <SDMMC_WriteFIFO>
 80042f0:	697b      	ldr	r3, [r7, #20]
 80042f2:	3301      	adds	r3, #1
 80042f4:	617b      	str	r3, [r7, #20]
 80042f6:	697b      	ldr	r3, [r7, #20]
 80042f8:	2b07      	cmp	r3, #7
 80042fa:	d9c4      	bls.n	8004286 <SD_Write_IT+0x20>
 80042fc:	687b      	ldr	r3, [r7, #4]
 80042fe:	68fa      	ldr	r2, [r7, #12]
 8004300:	621a      	str	r2, [r3, #32]
 8004302:	687b      	ldr	r3, [r7, #4]
 8004304:	693a      	ldr	r2, [r7, #16]
 8004306:	625a      	str	r2, [r3, #36]	@ 0x24
 8004308:	bf00      	nop
 800430a:	3718      	adds	r7, #24
 800430c:	46bd      	mov	sp, r7
 800430e:	bd80      	pop	{r7, pc}

08004310 <HAL_SPI_Init>:
 8004310:	b580      	push	{r7, lr}
 8004312:	b084      	sub	sp, #16
 8004314:	af00      	add	r7, sp, #0
 8004316:	6078      	str	r0, [r7, #4]
 8004318:	687b      	ldr	r3, [r7, #4]
 800431a:	2b00      	cmp	r3, #0
 800431c:	d101      	bne.n	8004322 <HAL_SPI_Init+0x12>
 800431e:	2301      	movs	r3, #1
 8004320:	e09d      	b.n	800445e <HAL_SPI_Init+0x14e>
 8004322:	687b      	ldr	r3, [r7, #4]
 8004324:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8004326:	2b00      	cmp	r3, #0
 8004328:	d108      	bne.n	800433c <HAL_SPI_Init+0x2c>
 800432a:	687b      	ldr	r3, [r7, #4]
 800432c:	685b      	ldr	r3, [r3, #4]
 800432e:	f5b3 7f82 	cmp.w	r3, #260	@ 0x104
 8004332:	d009      	beq.n	8004348 <HAL_SPI_Init+0x38>
 8004334:	687b      	ldr	r3, [r7, #4]
 8004336:	2200      	movs	r2, #0
 8004338:	61da      	str	r2, [r3, #28]
 800433a:	e005      	b.n	8004348 <HAL_SPI_Init+0x38>
 800433c:	687b      	ldr	r3, [r7, #4]
 800433e:	2200      	movs	r2, #0
 8004340:	611a      	str	r2, [r3, #16]
 8004342:	687b      	ldr	r3, [r7, #4]
 8004344:	2200      	movs	r2, #0
 8004346:	615a      	str	r2, [r3, #20]
 8004348:	687b      	ldr	r3, [r7, #4]
 800434a:	2200      	movs	r2, #0
 800434c:	629a      	str	r2, [r3, #40]	@ 0x28
 800434e:	687b      	ldr	r3, [r7, #4]
 8004350:	f893 305d 	ldrb.w	r3, [r3, #93]	@ 0x5d
 8004354:	b2db      	uxtb	r3, r3
 8004356:	2b00      	cmp	r3, #0
 8004358:	d106      	bne.n	8004368 <HAL_SPI_Init+0x58>
 800435a:	687b      	ldr	r3, [r7, #4]
 800435c:	2200      	movs	r2, #0
 800435e:	f883 205c 	strb.w	r2, [r3, #92]	@ 0x5c
 8004362:	6878      	ldr	r0, [r7, #4]
 8004364:	f008 f86a 	bl	800c43c <HAL_SPI_MspInit>
 8004368:	687b      	ldr	r3, [r7, #4]
 800436a:	2202      	movs	r2, #2
 800436c:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 8004370:	687b      	ldr	r3, [r7, #4]
 8004372:	681b      	ldr	r3, [r3, #0]
 8004374:	681a      	ldr	r2, [r3, #0]
 8004376:	687b      	ldr	r3, [r7, #4]
 8004378:	681b      	ldr	r3, [r3, #0]
 800437a:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 800437e:	601a      	str	r2, [r3, #0]
 8004380:	687b      	ldr	r3, [r7, #4]
 8004382:	68db      	ldr	r3, [r3, #12]
 8004384:	f5b3 6fe0 	cmp.w	r3, #1792	@ 0x700
 8004388:	d902      	bls.n	8004390 <HAL_SPI_Init+0x80>
 800438a:	2300      	movs	r3, #0
 800438c:	60fb      	str	r3, [r7, #12]
 800438e:	e002      	b.n	8004396 <HAL_SPI_Init+0x86>
 8004390:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8004394:	60fb      	str	r3, [r7, #12]
 8004396:	687b      	ldr	r3, [r7, #4]
 8004398:	68db      	ldr	r3, [r3, #12]
 800439a:	f5b3 6f70 	cmp.w	r3, #3840	@ 0xf00
 800439e:	d007      	beq.n	80043b0 <HAL_SPI_Init+0xa0>
 80043a0:	687b      	ldr	r3, [r7, #4]
 80043a2:	68db      	ldr	r3, [r3, #12]
 80043a4:	f5b3 6fe0 	cmp.w	r3, #1792	@ 0x700
 80043a8:	d002      	beq.n	80043b0 <HAL_SPI_Init+0xa0>
 80043aa:	687b      	ldr	r3, [r7, #4]
 80043ac:	2200      	movs	r2, #0
 80043ae:	629a      	str	r2, [r3, #40]	@ 0x28
 80043b0:	687b      	ldr	r3, [r7, #4]
 80043b2:	685b      	ldr	r3, [r3, #4]
 80043b4:	f403 7282 	and.w	r2, r3, #260	@ 0x104
 80043b8:	687b      	ldr	r3, [r7, #4]
 80043ba:	689b      	ldr	r3, [r3, #8]
 80043bc:	f403 4304 	and.w	r3, r3, #33792	@ 0x8400
 80043c0:	431a      	orrs	r2, r3
 80043c2:	687b      	ldr	r3, [r7, #4]
 80043c4:	691b      	ldr	r3, [r3, #16]
 80043c6:	f003 0302 	and.w	r3, r3, #2
 80043ca:	431a      	orrs	r2, r3
 80043cc:	687b      	ldr	r3, [r7, #4]
 80043ce:	695b      	ldr	r3, [r3, #20]
 80043d0:	f003 0301 	and.w	r3, r3, #1
 80043d4:	431a      	orrs	r2, r3
 80043d6:	687b      	ldr	r3, [r7, #4]
 80043d8:	699b      	ldr	r3, [r3, #24]
 80043da:	f403 7300 	and.w	r3, r3, #512	@ 0x200
 80043de:	431a      	orrs	r2, r3
 80043e0:	687b      	ldr	r3, [r7, #4]
 80043e2:	69db      	ldr	r3, [r3, #28]
 80043e4:	f003 0338 	and.w	r3, r3, #56	@ 0x38
 80043e8:	431a      	orrs	r2, r3
 80043ea:	687b      	ldr	r3, [r7, #4]
 80043ec:	6a1b      	ldr	r3, [r3, #32]
 80043ee:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80043f2:	ea42 0103 	orr.w	r1, r2, r3
 80043f6:	687b      	ldr	r3, [r7, #4]
 80043f8:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80043fa:	f403 5200 	and.w	r2, r3, #8192	@ 0x2000
 80043fe:	687b      	ldr	r3, [r7, #4]
 8004400:	681b      	ldr	r3, [r3, #0]
 8004402:	430a      	orrs	r2, r1
 8004404:	601a      	str	r2, [r3, #0]
 8004406:	687b      	ldr	r3, [r7, #4]
 8004408:	699b      	ldr	r3, [r3, #24]
 800440a:	0c1b      	lsrs	r3, r3, #16
 800440c:	f003 0204 	and.w	r2, r3, #4
 8004410:	687b      	ldr	r3, [r7, #4]
 8004412:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8004414:	f003 0310 	and.w	r3, r3, #16
 8004418:	431a      	orrs	r2, r3
 800441a:	687b      	ldr	r3, [r7, #4]
 800441c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 800441e:	f003 0308 	and.w	r3, r3, #8
 8004422:	431a      	orrs	r2, r3
 8004424:	687b      	ldr	r3, [r7, #4]
 8004426:	68db      	ldr	r3, [r3, #12]
 8004428:	f403 6370 	and.w	r3, r3, #3840	@ 0xf00
 800442c:	ea42 0103 	orr.w	r1, r2, r3
 8004430:	68fb      	ldr	r3, [r7, #12]
 8004432:	f403 5280 	and.w	r2, r3, #4096	@ 0x1000
 8004436:	687b      	ldr	r3, [r7, #4]
 8004438:	681b      	ldr	r3, [r3, #0]
 800443a:	430a      	orrs	r2, r1
 800443c:	605a      	str	r2, [r3, #4]
 800443e:	687b      	ldr	r3, [r7, #4]
 8004440:	681b      	ldr	r3, [r3, #0]
 8004442:	69da      	ldr	r2, [r3, #28]
 8004444:	687b      	ldr	r3, [r7, #4]
 8004446:	681b      	ldr	r3, [r3, #0]
 8004448:	f422 6200 	bic.w	r2, r2, #2048	@ 0x800
 800444c:	61da      	str	r2, [r3, #28]
 800444e:	687b      	ldr	r3, [r7, #4]
 8004450:	2200      	movs	r2, #0
 8004452:	661a      	str	r2, [r3, #96]	@ 0x60
 8004454:	687b      	ldr	r3, [r7, #4]
 8004456:	2201      	movs	r2, #1
 8004458:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 800445c:	2300      	movs	r3, #0
 800445e:	4618      	mov	r0, r3
 8004460:	3710      	adds	r7, #16
 8004462:	46bd      	mov	sp, r7
 8004464:	bd80      	pop	{r7, pc}
	...

08004468 <HAL_SPI_Transmit_IT>:
 8004468:	b480      	push	{r7}
 800446a:	b085      	sub	sp, #20
 800446c:	af00      	add	r7, sp, #0
 800446e:	60f8      	str	r0, [r7, #12]
 8004470:	60b9      	str	r1, [r7, #8]
 8004472:	4613      	mov	r3, r2
 8004474:	80fb      	strh	r3, [r7, #6]
 8004476:	68bb      	ldr	r3, [r7, #8]
 8004478:	2b00      	cmp	r3, #0
 800447a:	d002      	beq.n	8004482 <HAL_SPI_Transmit_IT+0x1a>
 800447c:	88fb      	ldrh	r3, [r7, #6]
 800447e:	2b00      	cmp	r3, #0
 8004480:	d101      	bne.n	8004486 <HAL_SPI_Transmit_IT+0x1e>
 8004482:	2301      	movs	r3, #1
 8004484:	e06d      	b.n	8004562 <HAL_SPI_Transmit_IT+0xfa>
 8004486:	68fb      	ldr	r3, [r7, #12]
 8004488:	f893 305d 	ldrb.w	r3, [r3, #93]	@ 0x5d
 800448c:	b2db      	uxtb	r3, r3
 800448e:	2b01      	cmp	r3, #1
 8004490:	d001      	beq.n	8004496 <HAL_SPI_Transmit_IT+0x2e>
 8004492:	2302      	movs	r3, #2
 8004494:	e065      	b.n	8004562 <HAL_SPI_Transmit_IT+0xfa>
 8004496:	68fb      	ldr	r3, [r7, #12]
 8004498:	f893 305c 	ldrb.w	r3, [r3, #92]	@ 0x5c
 800449c:	2b01      	cmp	r3, #1
 800449e:	d101      	bne.n	80044a4 <HAL_SPI_Transmit_IT+0x3c>
 80044a0:	2302      	movs	r3, #2
 80044a2:	e05e      	b.n	8004562 <HAL_SPI_Transmit_IT+0xfa>
 80044a4:	68fb      	ldr	r3, [r7, #12]
 80044a6:	2201      	movs	r2, #1
 80044a8:	f883 205c 	strb.w	r2, [r3, #92]	@ 0x5c
 80044ac:	68fb      	ldr	r3, [r7, #12]
 80044ae:	2203      	movs	r2, #3
 80044b0:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 80044b4:	68fb      	ldr	r3, [r7, #12]
 80044b6:	2200      	movs	r2, #0
 80044b8:	661a      	str	r2, [r3, #96]	@ 0x60
 80044ba:	68fb      	ldr	r3, [r7, #12]
 80044bc:	68ba      	ldr	r2, [r7, #8]
 80044be:	639a      	str	r2, [r3, #56]	@ 0x38
 80044c0:	68fb      	ldr	r3, [r7, #12]
 80044c2:	88fa      	ldrh	r2, [r7, #6]
 80044c4:	879a      	strh	r2, [r3, #60]	@ 0x3c
 80044c6:	68fb      	ldr	r3, [r7, #12]
 80044c8:	88fa      	ldrh	r2, [r7, #6]
 80044ca:	87da      	strh	r2, [r3, #62]	@ 0x3e
 80044cc:	68fb      	ldr	r3, [r7, #12]
 80044ce:	2200      	movs	r2, #0
 80044d0:	641a      	str	r2, [r3, #64]	@ 0x40
 80044d2:	68fb      	ldr	r3, [r7, #12]
 80044d4:	2200      	movs	r2, #0
 80044d6:	f8a3 2044 	strh.w	r2, [r3, #68]	@ 0x44
 80044da:	68fb      	ldr	r3, [r7, #12]
 80044dc:	2200      	movs	r2, #0
 80044de:	f8a3 2046 	strh.w	r2, [r3, #70]	@ 0x46
 80044e2:	68fb      	ldr	r3, [r7, #12]
 80044e4:	2200      	movs	r2, #0
 80044e6:	64da      	str	r2, [r3, #76]	@ 0x4c
 80044e8:	68fb      	ldr	r3, [r7, #12]
 80044ea:	68db      	ldr	r3, [r3, #12]
 80044ec:	f5b3 6fe0 	cmp.w	r3, #1792	@ 0x700
 80044f0:	d903      	bls.n	80044fa <HAL_SPI_Transmit_IT+0x92>
 80044f2:	68fb      	ldr	r3, [r7, #12]
 80044f4:	4a1e      	ldr	r2, [pc, #120]	@ (8004570 <HAL_SPI_Transmit_IT+0x108>)
 80044f6:	651a      	str	r2, [r3, #80]	@ 0x50
 80044f8:	e002      	b.n	8004500 <HAL_SPI_Transmit_IT+0x98>
 80044fa:	68fb      	ldr	r3, [r7, #12]
 80044fc:	4a1d      	ldr	r2, [pc, #116]	@ (8004574 <HAL_SPI_Transmit_IT+0x10c>)
 80044fe:	651a      	str	r2, [r3, #80]	@ 0x50
 8004500:	68fb      	ldr	r3, [r7, #12]
 8004502:	689b      	ldr	r3, [r3, #8]
 8004504:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8004508:	d10f      	bne.n	800452a <HAL_SPI_Transmit_IT+0xc2>
 800450a:	68fb      	ldr	r3, [r7, #12]
 800450c:	681b      	ldr	r3, [r3, #0]
 800450e:	681a      	ldr	r2, [r3, #0]
 8004510:	68fb      	ldr	r3, [r7, #12]
 8004512:	681b      	ldr	r3, [r3, #0]
 8004514:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8004518:	601a      	str	r2, [r3, #0]
 800451a:	68fb      	ldr	r3, [r7, #12]
 800451c:	681b      	ldr	r3, [r3, #0]
 800451e:	681a      	ldr	r2, [r3, #0]
 8004520:	68fb      	ldr	r3, [r7, #12]
 8004522:	681b      	ldr	r3, [r3, #0]
 8004524:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 8004528:	601a      	str	r2, [r3, #0]
 800452a:	68fb      	ldr	r3, [r7, #12]
 800452c:	681b      	ldr	r3, [r3, #0]
 800452e:	681b      	ldr	r3, [r3, #0]
 8004530:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8004534:	2b40      	cmp	r3, #64	@ 0x40
 8004536:	d007      	beq.n	8004548 <HAL_SPI_Transmit_IT+0xe0>
 8004538:	68fb      	ldr	r3, [r7, #12]
 800453a:	681b      	ldr	r3, [r3, #0]
 800453c:	681a      	ldr	r2, [r3, #0]
 800453e:	68fb      	ldr	r3, [r7, #12]
 8004540:	681b      	ldr	r3, [r3, #0]
 8004542:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
 8004546:	601a      	str	r2, [r3, #0]
 8004548:	68fb      	ldr	r3, [r7, #12]
 800454a:	2200      	movs	r2, #0
 800454c:	f883 205c 	strb.w	r2, [r3, #92]	@ 0x5c
 8004550:	68fb      	ldr	r3, [r7, #12]
 8004552:	681b      	ldr	r3, [r3, #0]
 8004554:	685a      	ldr	r2, [r3, #4]
 8004556:	68fb      	ldr	r3, [r7, #12]
 8004558:	681b      	ldr	r3, [r3, #0]
 800455a:	f042 02a0 	orr.w	r2, r2, #160	@ 0xa0
 800455e:	605a      	str	r2, [r3, #4]
 8004560:	2300      	movs	r3, #0
 8004562:	4618      	mov	r0, r3
 8004564:	3714      	adds	r7, #20
 8004566:	46bd      	mov	sp, r7
 8004568:	f85d 7b04 	ldr.w	r7, [sp], #4
 800456c:	4770      	bx	lr
 800456e:	bf00      	nop
 8004570:	080047e5 	.word	0x080047e5
 8004574:	0800479f 	.word	0x0800479f

08004578 <HAL_SPI_IRQHandler>:
 8004578:	b580      	push	{r7, lr}
 800457a:	b088      	sub	sp, #32
 800457c:	af00      	add	r7, sp, #0
 800457e:	6078      	str	r0, [r7, #4]
 8004580:	687b      	ldr	r3, [r7, #4]
 8004582:	681b      	ldr	r3, [r3, #0]
 8004584:	685b      	ldr	r3, [r3, #4]
 8004586:	61fb      	str	r3, [r7, #28]
 8004588:	687b      	ldr	r3, [r7, #4]
 800458a:	681b      	ldr	r3, [r3, #0]
 800458c:	689b      	ldr	r3, [r3, #8]
 800458e:	61bb      	str	r3, [r7, #24]
 8004590:	69bb      	ldr	r3, [r7, #24]
 8004592:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8004596:	2b00      	cmp	r3, #0
 8004598:	d10e      	bne.n	80045b8 <HAL_SPI_IRQHandler+0x40>
 800459a:	69bb      	ldr	r3, [r7, #24]
 800459c:	f003 0301 	and.w	r3, r3, #1
 80045a0:	2b00      	cmp	r3, #0
 80045a2:	d009      	beq.n	80045b8 <HAL_SPI_IRQHandler+0x40>
 80045a4:	69fb      	ldr	r3, [r7, #28]
 80045a6:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80045aa:	2b00      	cmp	r3, #0
 80045ac:	d004      	beq.n	80045b8 <HAL_SPI_IRQHandler+0x40>
 80045ae:	687b      	ldr	r3, [r7, #4]
 80045b0:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80045b2:	6878      	ldr	r0, [r7, #4]
 80045b4:	4798      	blx	r3
 80045b6:	e0ce      	b.n	8004756 <HAL_SPI_IRQHandler+0x1de>
 80045b8:	69bb      	ldr	r3, [r7, #24]
 80045ba:	f003 0302 	and.w	r3, r3, #2
 80045be:	2b00      	cmp	r3, #0
 80045c0:	d009      	beq.n	80045d6 <HAL_SPI_IRQHandler+0x5e>
 80045c2:	69fb      	ldr	r3, [r7, #28]
 80045c4:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80045c8:	2b00      	cmp	r3, #0
 80045ca:	d004      	beq.n	80045d6 <HAL_SPI_IRQHandler+0x5e>
 80045cc:	687b      	ldr	r3, [r7, #4]
 80045ce:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80045d0:	6878      	ldr	r0, [r7, #4]
 80045d2:	4798      	blx	r3
 80045d4:	e0bf      	b.n	8004756 <HAL_SPI_IRQHandler+0x1de>
 80045d6:	69bb      	ldr	r3, [r7, #24]
 80045d8:	f003 0320 	and.w	r3, r3, #32
 80045dc:	2b00      	cmp	r3, #0
 80045de:	d10a      	bne.n	80045f6 <HAL_SPI_IRQHandler+0x7e>
 80045e0:	69bb      	ldr	r3, [r7, #24]
 80045e2:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80045e6:	2b00      	cmp	r3, #0
 80045e8:	d105      	bne.n	80045f6 <HAL_SPI_IRQHandler+0x7e>
 80045ea:	69bb      	ldr	r3, [r7, #24]
 80045ec:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 80045f0:	2b00      	cmp	r3, #0
 80045f2:	f000 80b0 	beq.w	8004756 <HAL_SPI_IRQHandler+0x1de>
 80045f6:	69fb      	ldr	r3, [r7, #28]
 80045f8:	f003 0320 	and.w	r3, r3, #32
 80045fc:	2b00      	cmp	r3, #0
 80045fe:	f000 80aa 	beq.w	8004756 <HAL_SPI_IRQHandler+0x1de>
 8004602:	69bb      	ldr	r3, [r7, #24]
 8004604:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8004608:	2b00      	cmp	r3, #0
 800460a:	d023      	beq.n	8004654 <HAL_SPI_IRQHandler+0xdc>
 800460c:	687b      	ldr	r3, [r7, #4]
 800460e:	f893 305d 	ldrb.w	r3, [r3, #93]	@ 0x5d
 8004612:	b2db      	uxtb	r3, r3
 8004614:	2b03      	cmp	r3, #3
 8004616:	d011      	beq.n	800463c <HAL_SPI_IRQHandler+0xc4>
 8004618:	687b      	ldr	r3, [r7, #4]
 800461a:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 800461c:	f043 0204 	orr.w	r2, r3, #4
 8004620:	687b      	ldr	r3, [r7, #4]
 8004622:	661a      	str	r2, [r3, #96]	@ 0x60
 8004624:	2300      	movs	r3, #0
 8004626:	617b      	str	r3, [r7, #20]
 8004628:	687b      	ldr	r3, [r7, #4]
 800462a:	681b      	ldr	r3, [r3, #0]
 800462c:	68db      	ldr	r3, [r3, #12]
 800462e:	617b      	str	r3, [r7, #20]
 8004630:	687b      	ldr	r3, [r7, #4]
 8004632:	681b      	ldr	r3, [r3, #0]
 8004634:	689b      	ldr	r3, [r3, #8]
 8004636:	617b      	str	r3, [r7, #20]
 8004638:	697b      	ldr	r3, [r7, #20]
 800463a:	e00b      	b.n	8004654 <HAL_SPI_IRQHandler+0xdc>
 800463c:	2300      	movs	r3, #0
 800463e:	613b      	str	r3, [r7, #16]
 8004640:	687b      	ldr	r3, [r7, #4]
 8004642:	681b      	ldr	r3, [r3, #0]
 8004644:	68db      	ldr	r3, [r3, #12]
 8004646:	613b      	str	r3, [r7, #16]
 8004648:	687b      	ldr	r3, [r7, #4]
 800464a:	681b      	ldr	r3, [r3, #0]
 800464c:	689b      	ldr	r3, [r3, #8]
 800464e:	613b      	str	r3, [r7, #16]
 8004650:	693b      	ldr	r3, [r7, #16]
 8004652:	e080      	b.n	8004756 <HAL_SPI_IRQHandler+0x1de>
 8004654:	69bb      	ldr	r3, [r7, #24]
 8004656:	f003 0320 	and.w	r3, r3, #32
 800465a:	2b00      	cmp	r3, #0
 800465c:	d014      	beq.n	8004688 <HAL_SPI_IRQHandler+0x110>
 800465e:	687b      	ldr	r3, [r7, #4]
 8004660:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004662:	f043 0201 	orr.w	r2, r3, #1
 8004666:	687b      	ldr	r3, [r7, #4]
 8004668:	661a      	str	r2, [r3, #96]	@ 0x60
 800466a:	2300      	movs	r3, #0
 800466c:	60fb      	str	r3, [r7, #12]
 800466e:	687b      	ldr	r3, [r7, #4]
 8004670:	681b      	ldr	r3, [r3, #0]
 8004672:	689b      	ldr	r3, [r3, #8]
 8004674:	60fb      	str	r3, [r7, #12]
 8004676:	687b      	ldr	r3, [r7, #4]
 8004678:	681b      	ldr	r3, [r3, #0]
 800467a:	681a      	ldr	r2, [r3, #0]
 800467c:	687b      	ldr	r3, [r7, #4]
 800467e:	681b      	ldr	r3, [r3, #0]
 8004680:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8004684:	601a      	str	r2, [r3, #0]
 8004686:	68fb      	ldr	r3, [r7, #12]
 8004688:	69bb      	ldr	r3, [r7, #24]
 800468a:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 800468e:	2b00      	cmp	r3, #0
 8004690:	d00c      	beq.n	80046ac <HAL_SPI_IRQHandler+0x134>
 8004692:	687b      	ldr	r3, [r7, #4]
 8004694:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004696:	f043 0208 	orr.w	r2, r3, #8
 800469a:	687b      	ldr	r3, [r7, #4]
 800469c:	661a      	str	r2, [r3, #96]	@ 0x60
 800469e:	2300      	movs	r3, #0
 80046a0:	60bb      	str	r3, [r7, #8]
 80046a2:	687b      	ldr	r3, [r7, #4]
 80046a4:	681b      	ldr	r3, [r3, #0]
 80046a6:	689b      	ldr	r3, [r3, #8]
 80046a8:	60bb      	str	r3, [r7, #8]
 80046aa:	68bb      	ldr	r3, [r7, #8]
 80046ac:	687b      	ldr	r3, [r7, #4]
 80046ae:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 80046b0:	2b00      	cmp	r3, #0
 80046b2:	d04f      	beq.n	8004754 <HAL_SPI_IRQHandler+0x1dc>
 80046b4:	687b      	ldr	r3, [r7, #4]
 80046b6:	681b      	ldr	r3, [r3, #0]
 80046b8:	685a      	ldr	r2, [r3, #4]
 80046ba:	687b      	ldr	r3, [r7, #4]
 80046bc:	681b      	ldr	r3, [r3, #0]
 80046be:	f022 02e0 	bic.w	r2, r2, #224	@ 0xe0
 80046c2:	605a      	str	r2, [r3, #4]
 80046c4:	687b      	ldr	r3, [r7, #4]
 80046c6:	2201      	movs	r2, #1
 80046c8:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 80046cc:	69fb      	ldr	r3, [r7, #28]
 80046ce:	f003 0302 	and.w	r3, r3, #2
 80046d2:	2b00      	cmp	r3, #0
 80046d4:	d104      	bne.n	80046e0 <HAL_SPI_IRQHandler+0x168>
 80046d6:	69fb      	ldr	r3, [r7, #28]
 80046d8:	f003 0301 	and.w	r3, r3, #1
 80046dc:	2b00      	cmp	r3, #0
 80046de:	d034      	beq.n	800474a <HAL_SPI_IRQHandler+0x1d2>
 80046e0:	687b      	ldr	r3, [r7, #4]
 80046e2:	681b      	ldr	r3, [r3, #0]
 80046e4:	685a      	ldr	r2, [r3, #4]
 80046e6:	687b      	ldr	r3, [r7, #4]
 80046e8:	681b      	ldr	r3, [r3, #0]
 80046ea:	f022 0203 	bic.w	r2, r2, #3
 80046ee:	605a      	str	r2, [r3, #4]
 80046f0:	687b      	ldr	r3, [r7, #4]
 80046f2:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80046f4:	2b00      	cmp	r3, #0
 80046f6:	d011      	beq.n	800471c <HAL_SPI_IRQHandler+0x1a4>
 80046f8:	687b      	ldr	r3, [r7, #4]
 80046fa:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80046fc:	4a17      	ldr	r2, [pc, #92]	@ (800475c <HAL_SPI_IRQHandler+0x1e4>)
 80046fe:	651a      	str	r2, [r3, #80]	@ 0x50
 8004700:	687b      	ldr	r3, [r7, #4]
 8004702:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8004704:	4618      	mov	r0, r3
 8004706:	f7fd fc47 	bl	8001f98 <HAL_DMA_Abort_IT>
 800470a:	4603      	mov	r3, r0
 800470c:	2b00      	cmp	r3, #0
 800470e:	d005      	beq.n	800471c <HAL_SPI_IRQHandler+0x1a4>
 8004710:	687b      	ldr	r3, [r7, #4]
 8004712:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004714:	f043 0240 	orr.w	r2, r3, #64	@ 0x40
 8004718:	687b      	ldr	r3, [r7, #4]
 800471a:	661a      	str	r2, [r3, #96]	@ 0x60
 800471c:	687b      	ldr	r3, [r7, #4]
 800471e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8004720:	2b00      	cmp	r3, #0
 8004722:	d016      	beq.n	8004752 <HAL_SPI_IRQHandler+0x1da>
 8004724:	687b      	ldr	r3, [r7, #4]
 8004726:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8004728:	4a0c      	ldr	r2, [pc, #48]	@ (800475c <HAL_SPI_IRQHandler+0x1e4>)
 800472a:	651a      	str	r2, [r3, #80]	@ 0x50
 800472c:	687b      	ldr	r3, [r7, #4]
 800472e:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8004730:	4618      	mov	r0, r3
 8004732:	f7fd fc31 	bl	8001f98 <HAL_DMA_Abort_IT>
 8004736:	4603      	mov	r3, r0
 8004738:	2b00      	cmp	r3, #0
 800473a:	d00a      	beq.n	8004752 <HAL_SPI_IRQHandler+0x1da>
 800473c:	687b      	ldr	r3, [r7, #4]
 800473e:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004740:	f043 0240 	orr.w	r2, r3, #64	@ 0x40
 8004744:	687b      	ldr	r3, [r7, #4]
 8004746:	661a      	str	r2, [r3, #96]	@ 0x60
 8004748:	e003      	b.n	8004752 <HAL_SPI_IRQHandler+0x1da>
 800474a:	6878      	ldr	r0, [r7, #4]
 800474c:	f000 f808 	bl	8004760 <HAL_SPI_ErrorCallback>
 8004750:	e000      	b.n	8004754 <HAL_SPI_IRQHandler+0x1dc>
 8004752:	bf00      	nop
 8004754:	bf00      	nop
 8004756:	3720      	adds	r7, #32
 8004758:	46bd      	mov	sp, r7
 800475a:	bd80      	pop	{r7, pc}
 800475c:	08004775 	.word	0x08004775

08004760 <HAL_SPI_ErrorCallback>:
 8004760:	b480      	push	{r7}
 8004762:	b083      	sub	sp, #12
 8004764:	af00      	add	r7, sp, #0
 8004766:	6078      	str	r0, [r7, #4]
 8004768:	bf00      	nop
 800476a:	370c      	adds	r7, #12
 800476c:	46bd      	mov	sp, r7
 800476e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8004772:	4770      	bx	lr

08004774 <SPI_DMAAbortOnError>:
 8004774:	b580      	push	{r7, lr}
 8004776:	b084      	sub	sp, #16
 8004778:	af00      	add	r7, sp, #0
 800477a:	6078      	str	r0, [r7, #4]
 800477c:	687b      	ldr	r3, [r7, #4]
 800477e:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8004780:	60fb      	str	r3, [r7, #12]
 8004782:	68fb      	ldr	r3, [r7, #12]
 8004784:	2200      	movs	r2, #0
 8004786:	f8a3 2046 	strh.w	r2, [r3, #70]	@ 0x46
 800478a:	68fb      	ldr	r3, [r7, #12]
 800478c:	2200      	movs	r2, #0
 800478e:	87da      	strh	r2, [r3, #62]	@ 0x3e
 8004790:	68f8      	ldr	r0, [r7, #12]
 8004792:	f7ff ffe5 	bl	8004760 <HAL_SPI_ErrorCallback>
 8004796:	bf00      	nop
 8004798:	3710      	adds	r7, #16
 800479a:	46bd      	mov	sp, r7
 800479c:	bd80      	pop	{r7, pc}

0800479e <SPI_TxISR_8BIT>:
 800479e:	b580      	push	{r7, lr}
 80047a0:	b082      	sub	sp, #8
 80047a2:	af00      	add	r7, sp, #0
 80047a4:	6078      	str	r0, [r7, #4]
 80047a6:	687b      	ldr	r3, [r7, #4]
 80047a8:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80047aa:	687b      	ldr	r3, [r7, #4]
 80047ac:	681b      	ldr	r3, [r3, #0]
 80047ae:	330c      	adds	r3, #12
 80047b0:	7812      	ldrb	r2, [r2, #0]
 80047b2:	701a      	strb	r2, [r3, #0]
 80047b4:	687b      	ldr	r3, [r7, #4]
 80047b6:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80047b8:	1c5a      	adds	r2, r3, #1
 80047ba:	687b      	ldr	r3, [r7, #4]
 80047bc:	639a      	str	r2, [r3, #56]	@ 0x38
 80047be:	687b      	ldr	r3, [r7, #4]
 80047c0:	8fdb      	ldrh	r3, [r3, #62]	@ 0x3e
 80047c2:	b29b      	uxth	r3, r3
 80047c4:	3b01      	subs	r3, #1
 80047c6:	b29a      	uxth	r2, r3
 80047c8:	687b      	ldr	r3, [r7, #4]
 80047ca:	87da      	strh	r2, [r3, #62]	@ 0x3e
 80047cc:	687b      	ldr	r3, [r7, #4]
 80047ce:	8fdb      	ldrh	r3, [r3, #62]	@ 0x3e
 80047d0:	b29b      	uxth	r3, r3
 80047d2:	2b00      	cmp	r3, #0
 80047d4:	d102      	bne.n	80047dc <SPI_TxISR_8BIT+0x3e>
 80047d6:	6878      	ldr	r0, [r7, #4]
 80047d8:	f000 f9ae 	bl	8004b38 <SPI_CloseTx_ISR>
 80047dc:	bf00      	nop
 80047de:	3708      	adds	r7, #8
 80047e0:	46bd      	mov	sp, r7
 80047e2:	bd80      	pop	{r7, pc}

080047e4 <SPI_TxISR_16BIT>:
 80047e4:	b580      	push	{r7, lr}
 80047e6:	b082      	sub	sp, #8
 80047e8:	af00      	add	r7, sp, #0
 80047ea:	6078      	str	r0, [r7, #4]
 80047ec:	687b      	ldr	r3, [r7, #4]
 80047ee:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80047f0:	881a      	ldrh	r2, [r3, #0]
 80047f2:	687b      	ldr	r3, [r7, #4]
 80047f4:	681b      	ldr	r3, [r3, #0]
 80047f6:	60da      	str	r2, [r3, #12]
 80047f8:	687b      	ldr	r3, [r7, #4]
 80047fa:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80047fc:	1c9a      	adds	r2, r3, #2
 80047fe:	687b      	ldr	r3, [r7, #4]
 8004800:	639a      	str	r2, [r3, #56]	@ 0x38
 8004802:	687b      	ldr	r3, [r7, #4]
 8004804:	8fdb      	ldrh	r3, [r3, #62]	@ 0x3e
 8004806:	b29b      	uxth	r3, r3
 8004808:	3b01      	subs	r3, #1
 800480a:	b29a      	uxth	r2, r3
 800480c:	687b      	ldr	r3, [r7, #4]
 800480e:	87da      	strh	r2, [r3, #62]	@ 0x3e
 8004810:	687b      	ldr	r3, [r7, #4]
 8004812:	8fdb      	ldrh	r3, [r3, #62]	@ 0x3e
 8004814:	b29b      	uxth	r3, r3
 8004816:	2b00      	cmp	r3, #0
 8004818:	d102      	bne.n	8004820 <SPI_TxISR_16BIT+0x3c>
 800481a:	6878      	ldr	r0, [r7, #4]
 800481c:	f000 f98c 	bl	8004b38 <SPI_CloseTx_ISR>
 8004820:	bf00      	nop
 8004822:	3708      	adds	r7, #8
 8004824:	46bd      	mov	sp, r7
 8004826:	bd80      	pop	{r7, pc}

08004828 <SPI_WaitFlagStateUntilTimeout>:
 8004828:	b580      	push	{r7, lr}
 800482a:	b088      	sub	sp, #32
 800482c:	af00      	add	r7, sp, #0
 800482e:	60f8      	str	r0, [r7, #12]
 8004830:	60b9      	str	r1, [r7, #8]
 8004832:	603b      	str	r3, [r7, #0]
 8004834:	4613      	mov	r3, r2
 8004836:	71fb      	strb	r3, [r7, #7]
 8004838:	f7fd fee8 	bl	800260c <HAL_GetTick>
 800483c:	4602      	mov	r2, r0
 800483e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8004840:	1a9b      	subs	r3, r3, r2
 8004842:	683a      	ldr	r2, [r7, #0]
 8004844:	4413      	add	r3, r2
 8004846:	61fb      	str	r3, [r7, #28]
 8004848:	f7fd fee0 	bl	800260c <HAL_GetTick>
 800484c:	61b8      	str	r0, [r7, #24]
 800484e:	4b39      	ldr	r3, [pc, #228]	@ (8004934 <SPI_WaitFlagStateUntilTimeout+0x10c>)
 8004850:	681b      	ldr	r3, [r3, #0]
 8004852:	015b      	lsls	r3, r3, #5
 8004854:	0d1b      	lsrs	r3, r3, #20
 8004856:	69fa      	ldr	r2, [r7, #28]
 8004858:	fb02 f303 	mul.w	r3, r2, r3
 800485c:	617b      	str	r3, [r7, #20]
 800485e:	e055      	b.n	800490c <SPI_WaitFlagStateUntilTimeout+0xe4>
 8004860:	683b      	ldr	r3, [r7, #0]
 8004862:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8004866:	d051      	beq.n	800490c <SPI_WaitFlagStateUntilTimeout+0xe4>
 8004868:	f7fd fed0 	bl	800260c <HAL_GetTick>
 800486c:	4602      	mov	r2, r0
 800486e:	69bb      	ldr	r3, [r7, #24]
 8004870:	1ad3      	subs	r3, r2, r3
 8004872:	69fa      	ldr	r2, [r7, #28]
 8004874:	429a      	cmp	r2, r3
 8004876:	d902      	bls.n	800487e <SPI_WaitFlagStateUntilTimeout+0x56>
 8004878:	69fb      	ldr	r3, [r7, #28]
 800487a:	2b00      	cmp	r3, #0
 800487c:	d13d      	bne.n	80048fa <SPI_WaitFlagStateUntilTimeout+0xd2>
 800487e:	68fb      	ldr	r3, [r7, #12]
 8004880:	681b      	ldr	r3, [r3, #0]
 8004882:	685a      	ldr	r2, [r3, #4]
 8004884:	68fb      	ldr	r3, [r7, #12]
 8004886:	681b      	ldr	r3, [r3, #0]
 8004888:	f022 02e0 	bic.w	r2, r2, #224	@ 0xe0
 800488c:	605a      	str	r2, [r3, #4]
 800488e:	68fb      	ldr	r3, [r7, #12]
 8004890:	685b      	ldr	r3, [r3, #4]
 8004892:	f5b3 7f82 	cmp.w	r3, #260	@ 0x104
 8004896:	d111      	bne.n	80048bc <SPI_WaitFlagStateUntilTimeout+0x94>
 8004898:	68fb      	ldr	r3, [r7, #12]
 800489a:	689b      	ldr	r3, [r3, #8]
 800489c:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 80048a0:	d004      	beq.n	80048ac <SPI_WaitFlagStateUntilTimeout+0x84>
 80048a2:	68fb      	ldr	r3, [r7, #12]
 80048a4:	689b      	ldr	r3, [r3, #8]
 80048a6:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 80048aa:	d107      	bne.n	80048bc <SPI_WaitFlagStateUntilTimeout+0x94>
 80048ac:	68fb      	ldr	r3, [r7, #12]
 80048ae:	681b      	ldr	r3, [r3, #0]
 80048b0:	681a      	ldr	r2, [r3, #0]
 80048b2:	68fb      	ldr	r3, [r7, #12]
 80048b4:	681b      	ldr	r3, [r3, #0]
 80048b6:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 80048ba:	601a      	str	r2, [r3, #0]
 80048bc:	68fb      	ldr	r3, [r7, #12]
 80048be:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80048c0:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80048c4:	d10f      	bne.n	80048e6 <SPI_WaitFlagStateUntilTimeout+0xbe>
 80048c6:	68fb      	ldr	r3, [r7, #12]
 80048c8:	681b      	ldr	r3, [r3, #0]
 80048ca:	681a      	ldr	r2, [r3, #0]
 80048cc:	68fb      	ldr	r3, [r7, #12]
 80048ce:	681b      	ldr	r3, [r3, #0]
 80048d0:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 80048d4:	601a      	str	r2, [r3, #0]
 80048d6:	68fb      	ldr	r3, [r7, #12]
 80048d8:	681b      	ldr	r3, [r3, #0]
 80048da:	681a      	ldr	r2, [r3, #0]
 80048dc:	68fb      	ldr	r3, [r7, #12]
 80048de:	681b      	ldr	r3, [r3, #0]
 80048e0:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 80048e4:	601a      	str	r2, [r3, #0]
 80048e6:	68fb      	ldr	r3, [r7, #12]
 80048e8:	2201      	movs	r2, #1
 80048ea:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 80048ee:	68fb      	ldr	r3, [r7, #12]
 80048f0:	2200      	movs	r2, #0
 80048f2:	f883 205c 	strb.w	r2, [r3, #92]	@ 0x5c
 80048f6:	2303      	movs	r3, #3
 80048f8:	e018      	b.n	800492c <SPI_WaitFlagStateUntilTimeout+0x104>
 80048fa:	697b      	ldr	r3, [r7, #20]
 80048fc:	2b00      	cmp	r3, #0
 80048fe:	d102      	bne.n	8004906 <SPI_WaitFlagStateUntilTimeout+0xde>
 8004900:	2300      	movs	r3, #0
 8004902:	61fb      	str	r3, [r7, #28]
 8004904:	e002      	b.n	800490c <SPI_WaitFlagStateUntilTimeout+0xe4>
 8004906:	697b      	ldr	r3, [r7, #20]
 8004908:	3b01      	subs	r3, #1
 800490a:	617b      	str	r3, [r7, #20]
 800490c:	68fb      	ldr	r3, [r7, #12]
 800490e:	681b      	ldr	r3, [r3, #0]
 8004910:	689a      	ldr	r2, [r3, #8]
 8004912:	68bb      	ldr	r3, [r7, #8]
 8004914:	4013      	ands	r3, r2
 8004916:	68ba      	ldr	r2, [r7, #8]
 8004918:	429a      	cmp	r2, r3
 800491a:	bf0c      	ite	eq
 800491c:	2301      	moveq	r3, #1
 800491e:	2300      	movne	r3, #0
 8004920:	b2db      	uxtb	r3, r3
 8004922:	461a      	mov	r2, r3
 8004924:	79fb      	ldrb	r3, [r7, #7]
 8004926:	429a      	cmp	r2, r3
 8004928:	d19a      	bne.n	8004860 <SPI_WaitFlagStateUntilTimeout+0x38>
 800492a:	2300      	movs	r3, #0
 800492c:	4618      	mov	r0, r3
 800492e:	3720      	adds	r7, #32
 8004930:	46bd      	mov	sp, r7
 8004932:	bd80      	pop	{r7, pc}
 8004934:	20000000 	.word	0x20000000

08004938 <SPI_WaitFifoStateUntilTimeout>:
 8004938:	b580      	push	{r7, lr}
 800493a:	b08a      	sub	sp, #40	@ 0x28
 800493c:	af00      	add	r7, sp, #0
 800493e:	60f8      	str	r0, [r7, #12]
 8004940:	60b9      	str	r1, [r7, #8]
 8004942:	607a      	str	r2, [r7, #4]
 8004944:	603b      	str	r3, [r7, #0]
 8004946:	2300      	movs	r3, #0
 8004948:	75fb      	strb	r3, [r7, #23]
 800494a:	f7fd fe5f 	bl	800260c <HAL_GetTick>
 800494e:	4602      	mov	r2, r0
 8004950:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8004952:	1a9b      	subs	r3, r3, r2
 8004954:	683a      	ldr	r2, [r7, #0]
 8004956:	4413      	add	r3, r2
 8004958:	627b      	str	r3, [r7, #36]	@ 0x24
 800495a:	f7fd fe57 	bl	800260c <HAL_GetTick>
 800495e:	6238      	str	r0, [r7, #32]
 8004960:	68fb      	ldr	r3, [r7, #12]
 8004962:	681b      	ldr	r3, [r3, #0]
 8004964:	330c      	adds	r3, #12
 8004966:	61fb      	str	r3, [r7, #28]
 8004968:	4b3d      	ldr	r3, [pc, #244]	@ (8004a60 <SPI_WaitFifoStateUntilTimeout+0x128>)
 800496a:	681a      	ldr	r2, [r3, #0]
 800496c:	4613      	mov	r3, r2
 800496e:	009b      	lsls	r3, r3, #2
 8004970:	4413      	add	r3, r2
 8004972:	00da      	lsls	r2, r3, #3
 8004974:	1ad3      	subs	r3, r2, r3
 8004976:	0d1b      	lsrs	r3, r3, #20
 8004978:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 800497a:	fb02 f303 	mul.w	r3, r2, r3
 800497e:	61bb      	str	r3, [r7, #24]
 8004980:	e061      	b.n	8004a46 <SPI_WaitFifoStateUntilTimeout+0x10e>
 8004982:	68bb      	ldr	r3, [r7, #8]
 8004984:	f5b3 6fc0 	cmp.w	r3, #1536	@ 0x600
 8004988:	d107      	bne.n	800499a <SPI_WaitFifoStateUntilTimeout+0x62>
 800498a:	687b      	ldr	r3, [r7, #4]
 800498c:	2b00      	cmp	r3, #0
 800498e:	d104      	bne.n	800499a <SPI_WaitFifoStateUntilTimeout+0x62>
 8004990:	69fb      	ldr	r3, [r7, #28]
 8004992:	781b      	ldrb	r3, [r3, #0]
 8004994:	b2db      	uxtb	r3, r3
 8004996:	75fb      	strb	r3, [r7, #23]
 8004998:	7dfb      	ldrb	r3, [r7, #23]
 800499a:	683b      	ldr	r3, [r7, #0]
 800499c:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 80049a0:	d051      	beq.n	8004a46 <SPI_WaitFifoStateUntilTimeout+0x10e>
 80049a2:	f7fd fe33 	bl	800260c <HAL_GetTick>
 80049a6:	4602      	mov	r2, r0
 80049a8:	6a3b      	ldr	r3, [r7, #32]
 80049aa:	1ad3      	subs	r3, r2, r3
 80049ac:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 80049ae:	429a      	cmp	r2, r3
 80049b0:	d902      	bls.n	80049b8 <SPI_WaitFifoStateUntilTimeout+0x80>
 80049b2:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80049b4:	2b00      	cmp	r3, #0
 80049b6:	d13d      	bne.n	8004a34 <SPI_WaitFifoStateUntilTimeout+0xfc>
 80049b8:	68fb      	ldr	r3, [r7, #12]
 80049ba:	681b      	ldr	r3, [r3, #0]
 80049bc:	685a      	ldr	r2, [r3, #4]
 80049be:	68fb      	ldr	r3, [r7, #12]
 80049c0:	681b      	ldr	r3, [r3, #0]
 80049c2:	f022 02e0 	bic.w	r2, r2, #224	@ 0xe0
 80049c6:	605a      	str	r2, [r3, #4]
 80049c8:	68fb      	ldr	r3, [r7, #12]
 80049ca:	685b      	ldr	r3, [r3, #4]
 80049cc:	f5b3 7f82 	cmp.w	r3, #260	@ 0x104
 80049d0:	d111      	bne.n	80049f6 <SPI_WaitFifoStateUntilTimeout+0xbe>
 80049d2:	68fb      	ldr	r3, [r7, #12]
 80049d4:	689b      	ldr	r3, [r3, #8]
 80049d6:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 80049da:	d004      	beq.n	80049e6 <SPI_WaitFifoStateUntilTimeout+0xae>
 80049dc:	68fb      	ldr	r3, [r7, #12]
 80049de:	689b      	ldr	r3, [r3, #8]
 80049e0:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 80049e4:	d107      	bne.n	80049f6 <SPI_WaitFifoStateUntilTimeout+0xbe>
 80049e6:	68fb      	ldr	r3, [r7, #12]
 80049e8:	681b      	ldr	r3, [r3, #0]
 80049ea:	681a      	ldr	r2, [r3, #0]
 80049ec:	68fb      	ldr	r3, [r7, #12]
 80049ee:	681b      	ldr	r3, [r3, #0]
 80049f0:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 80049f4:	601a      	str	r2, [r3, #0]
 80049f6:	68fb      	ldr	r3, [r7, #12]
 80049f8:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 80049fa:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 80049fe:	d10f      	bne.n	8004a20 <SPI_WaitFifoStateUntilTimeout+0xe8>
 8004a00:	68fb      	ldr	r3, [r7, #12]
 8004a02:	681b      	ldr	r3, [r3, #0]
 8004a04:	681a      	ldr	r2, [r3, #0]
 8004a06:	68fb      	ldr	r3, [r7, #12]
 8004a08:	681b      	ldr	r3, [r3, #0]
 8004a0a:	f422 5200 	bic.w	r2, r2, #8192	@ 0x2000
 8004a0e:	601a      	str	r2, [r3, #0]
 8004a10:	68fb      	ldr	r3, [r7, #12]
 8004a12:	681b      	ldr	r3, [r3, #0]
 8004a14:	681a      	ldr	r2, [r3, #0]
 8004a16:	68fb      	ldr	r3, [r7, #12]
 8004a18:	681b      	ldr	r3, [r3, #0]
 8004a1a:	f442 5200 	orr.w	r2, r2, #8192	@ 0x2000
 8004a1e:	601a      	str	r2, [r3, #0]
 8004a20:	68fb      	ldr	r3, [r7, #12]
 8004a22:	2201      	movs	r2, #1
 8004a24:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 8004a28:	68fb      	ldr	r3, [r7, #12]
 8004a2a:	2200      	movs	r2, #0
 8004a2c:	f883 205c 	strb.w	r2, [r3, #92]	@ 0x5c
 8004a30:	2303      	movs	r3, #3
 8004a32:	e011      	b.n	8004a58 <SPI_WaitFifoStateUntilTimeout+0x120>
 8004a34:	69bb      	ldr	r3, [r7, #24]
 8004a36:	2b00      	cmp	r3, #0
 8004a38:	d102      	bne.n	8004a40 <SPI_WaitFifoStateUntilTimeout+0x108>
 8004a3a:	2300      	movs	r3, #0
 8004a3c:	627b      	str	r3, [r7, #36]	@ 0x24
 8004a3e:	e002      	b.n	8004a46 <SPI_WaitFifoStateUntilTimeout+0x10e>
 8004a40:	69bb      	ldr	r3, [r7, #24]
 8004a42:	3b01      	subs	r3, #1
 8004a44:	61bb      	str	r3, [r7, #24]
 8004a46:	68fb      	ldr	r3, [r7, #12]
 8004a48:	681b      	ldr	r3, [r3, #0]
 8004a4a:	689a      	ldr	r2, [r3, #8]
 8004a4c:	68bb      	ldr	r3, [r7, #8]
 8004a4e:	4013      	ands	r3, r2
 8004a50:	687a      	ldr	r2, [r7, #4]
 8004a52:	429a      	cmp	r2, r3
 8004a54:	d195      	bne.n	8004982 <SPI_WaitFifoStateUntilTimeout+0x4a>
 8004a56:	2300      	movs	r3, #0
 8004a58:	4618      	mov	r0, r3
 8004a5a:	3728      	adds	r7, #40	@ 0x28
 8004a5c:	46bd      	mov	sp, r7
 8004a5e:	bd80      	pop	{r7, pc}
 8004a60:	20000000 	.word	0x20000000

08004a64 <SPI_EndRxTxTransaction>:
 8004a64:	b580      	push	{r7, lr}
 8004a66:	b088      	sub	sp, #32
 8004a68:	af02      	add	r7, sp, #8
 8004a6a:	60f8      	str	r0, [r7, #12]
 8004a6c:	60b9      	str	r1, [r7, #8]
 8004a6e:	607a      	str	r2, [r7, #4]
 8004a70:	687b      	ldr	r3, [r7, #4]
 8004a72:	9300      	str	r3, [sp, #0]
 8004a74:	68bb      	ldr	r3, [r7, #8]
 8004a76:	2200      	movs	r2, #0
 8004a78:	f44f 51c0 	mov.w	r1, #6144	@ 0x1800
 8004a7c:	68f8      	ldr	r0, [r7, #12]
 8004a7e:	f7ff ff5b 	bl	8004938 <SPI_WaitFifoStateUntilTimeout>
 8004a82:	4603      	mov	r3, r0
 8004a84:	2b00      	cmp	r3, #0
 8004a86:	d007      	beq.n	8004a98 <SPI_EndRxTxTransaction+0x34>
 8004a88:	68fb      	ldr	r3, [r7, #12]
 8004a8a:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004a8c:	f043 0220 	orr.w	r2, r3, #32
 8004a90:	68fb      	ldr	r3, [r7, #12]
 8004a92:	661a      	str	r2, [r3, #96]	@ 0x60
 8004a94:	2303      	movs	r3, #3
 8004a96:	e046      	b.n	8004b26 <SPI_EndRxTxTransaction+0xc2>
 8004a98:	4b25      	ldr	r3, [pc, #148]	@ (8004b30 <SPI_EndRxTxTransaction+0xcc>)
 8004a9a:	681b      	ldr	r3, [r3, #0]
 8004a9c:	4a25      	ldr	r2, [pc, #148]	@ (8004b34 <SPI_EndRxTxTransaction+0xd0>)
 8004a9e:	fba2 2303 	umull	r2, r3, r2, r3
 8004aa2:	0d5b      	lsrs	r3, r3, #21
 8004aa4:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
 8004aa8:	fb02 f303 	mul.w	r3, r2, r3
 8004aac:	617b      	str	r3, [r7, #20]
 8004aae:	68fb      	ldr	r3, [r7, #12]
 8004ab0:	685b      	ldr	r3, [r3, #4]
 8004ab2:	f5b3 7f82 	cmp.w	r3, #260	@ 0x104
 8004ab6:	d112      	bne.n	8004ade <SPI_EndRxTxTransaction+0x7a>
 8004ab8:	687b      	ldr	r3, [r7, #4]
 8004aba:	9300      	str	r3, [sp, #0]
 8004abc:	68bb      	ldr	r3, [r7, #8]
 8004abe:	2200      	movs	r2, #0
 8004ac0:	2180      	movs	r1, #128	@ 0x80
 8004ac2:	68f8      	ldr	r0, [r7, #12]
 8004ac4:	f7ff feb0 	bl	8004828 <SPI_WaitFlagStateUntilTimeout>
 8004ac8:	4603      	mov	r3, r0
 8004aca:	2b00      	cmp	r3, #0
 8004acc:	d016      	beq.n	8004afc <SPI_EndRxTxTransaction+0x98>
 8004ace:	68fb      	ldr	r3, [r7, #12]
 8004ad0:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004ad2:	f043 0220 	orr.w	r2, r3, #32
 8004ad6:	68fb      	ldr	r3, [r7, #12]
 8004ad8:	661a      	str	r2, [r3, #96]	@ 0x60
 8004ada:	2303      	movs	r3, #3
 8004adc:	e023      	b.n	8004b26 <SPI_EndRxTxTransaction+0xc2>
 8004ade:	697b      	ldr	r3, [r7, #20]
 8004ae0:	2b00      	cmp	r3, #0
 8004ae2:	d00a      	beq.n	8004afa <SPI_EndRxTxTransaction+0x96>
 8004ae4:	697b      	ldr	r3, [r7, #20]
 8004ae6:	3b01      	subs	r3, #1
 8004ae8:	617b      	str	r3, [r7, #20]
 8004aea:	68fb      	ldr	r3, [r7, #12]
 8004aec:	681b      	ldr	r3, [r3, #0]
 8004aee:	689b      	ldr	r3, [r3, #8]
 8004af0:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8004af4:	2b80      	cmp	r3, #128	@ 0x80
 8004af6:	d0f2      	beq.n	8004ade <SPI_EndRxTxTransaction+0x7a>
 8004af8:	e000      	b.n	8004afc <SPI_EndRxTxTransaction+0x98>
 8004afa:	bf00      	nop
 8004afc:	687b      	ldr	r3, [r7, #4]
 8004afe:	9300      	str	r3, [sp, #0]
 8004b00:	68bb      	ldr	r3, [r7, #8]
 8004b02:	2200      	movs	r2, #0
 8004b04:	f44f 61c0 	mov.w	r1, #1536	@ 0x600
 8004b08:	68f8      	ldr	r0, [r7, #12]
 8004b0a:	f7ff ff15 	bl	8004938 <SPI_WaitFifoStateUntilTimeout>
 8004b0e:	4603      	mov	r3, r0
 8004b10:	2b00      	cmp	r3, #0
 8004b12:	d007      	beq.n	8004b24 <SPI_EndRxTxTransaction+0xc0>
 8004b14:	68fb      	ldr	r3, [r7, #12]
 8004b16:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004b18:	f043 0220 	orr.w	r2, r3, #32
 8004b1c:	68fb      	ldr	r3, [r7, #12]
 8004b1e:	661a      	str	r2, [r3, #96]	@ 0x60
 8004b20:	2303      	movs	r3, #3
 8004b22:	e000      	b.n	8004b26 <SPI_EndRxTxTransaction+0xc2>
 8004b24:	2300      	movs	r3, #0
 8004b26:	4618      	mov	r0, r3
 8004b28:	3718      	adds	r7, #24
 8004b2a:	46bd      	mov	sp, r7
 8004b2c:	bd80      	pop	{r7, pc}
 8004b2e:	bf00      	nop
 8004b30:	20000000 	.word	0x20000000
 8004b34:	165e9f81 	.word	0x165e9f81

08004b38 <SPI_CloseTx_ISR>:
 8004b38:	b580      	push	{r7, lr}
 8004b3a:	b084      	sub	sp, #16
 8004b3c:	af00      	add	r7, sp, #0
 8004b3e:	6078      	str	r0, [r7, #4]
 8004b40:	f7fd fd64 	bl	800260c <HAL_GetTick>
 8004b44:	60f8      	str	r0, [r7, #12]
 8004b46:	687b      	ldr	r3, [r7, #4]
 8004b48:	681b      	ldr	r3, [r3, #0]
 8004b4a:	685a      	ldr	r2, [r3, #4]
 8004b4c:	687b      	ldr	r3, [r7, #4]
 8004b4e:	681b      	ldr	r3, [r3, #0]
 8004b50:	f022 02a0 	bic.w	r2, r2, #160	@ 0xa0
 8004b54:	605a      	str	r2, [r3, #4]
 8004b56:	68fa      	ldr	r2, [r7, #12]
 8004b58:	2164      	movs	r1, #100	@ 0x64
 8004b5a:	6878      	ldr	r0, [r7, #4]
 8004b5c:	f7ff ff82 	bl	8004a64 <SPI_EndRxTxTransaction>
 8004b60:	4603      	mov	r3, r0
 8004b62:	2b00      	cmp	r3, #0
 8004b64:	d005      	beq.n	8004b72 <SPI_CloseTx_ISR+0x3a>
 8004b66:	687b      	ldr	r3, [r7, #4]
 8004b68:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004b6a:	f043 0220 	orr.w	r2, r3, #32
 8004b6e:	687b      	ldr	r3, [r7, #4]
 8004b70:	661a      	str	r2, [r3, #96]	@ 0x60
 8004b72:	687b      	ldr	r3, [r7, #4]
 8004b74:	689b      	ldr	r3, [r3, #8]
 8004b76:	2b00      	cmp	r3, #0
 8004b78:	d10a      	bne.n	8004b90 <SPI_CloseTx_ISR+0x58>
 8004b7a:	2300      	movs	r3, #0
 8004b7c:	60bb      	str	r3, [r7, #8]
 8004b7e:	687b      	ldr	r3, [r7, #4]
 8004b80:	681b      	ldr	r3, [r3, #0]
 8004b82:	68db      	ldr	r3, [r3, #12]
 8004b84:	60bb      	str	r3, [r7, #8]
 8004b86:	687b      	ldr	r3, [r7, #4]
 8004b88:	681b      	ldr	r3, [r3, #0]
 8004b8a:	689b      	ldr	r3, [r3, #8]
 8004b8c:	60bb      	str	r3, [r7, #8]
 8004b8e:	68bb      	ldr	r3, [r7, #8]
 8004b90:	687b      	ldr	r3, [r7, #4]
 8004b92:	2201      	movs	r2, #1
 8004b94:	f883 205d 	strb.w	r2, [r3, #93]	@ 0x5d
 8004b98:	687b      	ldr	r3, [r7, #4]
 8004b9a:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8004b9c:	2b00      	cmp	r3, #0
 8004b9e:	d003      	beq.n	8004ba8 <SPI_CloseTx_ISR+0x70>
 8004ba0:	6878      	ldr	r0, [r7, #4]
 8004ba2:	f7ff fddd 	bl	8004760 <HAL_SPI_ErrorCallback>
 8004ba6:	e002      	b.n	8004bae <SPI_CloseTx_ISR+0x76>
 8004ba8:	6878      	ldr	r0, [r7, #4]
 8004baa:	f008 f9c5 	bl	800cf38 <HAL_SPI_TxCpltCallback>
 8004bae:	bf00      	nop
 8004bb0:	3710      	adds	r7, #16
 8004bb2:	46bd      	mov	sp, r7
 8004bb4:	bd80      	pop	{r7, pc}

08004bb6 <HAL_UART_Init>:
 8004bb6:	b580      	push	{r7, lr}
 8004bb8:	b082      	sub	sp, #8
 8004bba:	af00      	add	r7, sp, #0
 8004bbc:	6078      	str	r0, [r7, #4]
 8004bbe:	687b      	ldr	r3, [r7, #4]
 8004bc0:	2b00      	cmp	r3, #0
 8004bc2:	d101      	bne.n	8004bc8 <HAL_UART_Init+0x12>
 8004bc4:	2301      	movs	r3, #1
 8004bc6:	e040      	b.n	8004c4a <HAL_UART_Init+0x94>
 8004bc8:	687b      	ldr	r3, [r7, #4]
 8004bca:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8004bcc:	2b00      	cmp	r3, #0
 8004bce:	d106      	bne.n	8004bde <HAL_UART_Init+0x28>
 8004bd0:	687b      	ldr	r3, [r7, #4]
 8004bd2:	2200      	movs	r2, #0
 8004bd4:	f883 2078 	strb.w	r2, [r3, #120]	@ 0x78
 8004bd8:	6878      	ldr	r0, [r7, #4]
 8004bda:	f007 fcc9 	bl	800c570 <HAL_UART_MspInit>
 8004bde:	687b      	ldr	r3, [r7, #4]
 8004be0:	2224      	movs	r2, #36	@ 0x24
 8004be2:	67da      	str	r2, [r3, #124]	@ 0x7c
 8004be4:	687b      	ldr	r3, [r7, #4]
 8004be6:	681b      	ldr	r3, [r3, #0]
 8004be8:	681a      	ldr	r2, [r3, #0]
 8004bea:	687b      	ldr	r3, [r7, #4]
 8004bec:	681b      	ldr	r3, [r3, #0]
 8004bee:	f022 0201 	bic.w	r2, r2, #1
 8004bf2:	601a      	str	r2, [r3, #0]
 8004bf4:	687b      	ldr	r3, [r7, #4]
 8004bf6:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8004bf8:	2b00      	cmp	r3, #0
 8004bfa:	d002      	beq.n	8004c02 <HAL_UART_Init+0x4c>
 8004bfc:	6878      	ldr	r0, [r7, #4]
 8004bfe:	f000 fa8d 	bl	800511c <UART_AdvFeatureConfig>
 8004c02:	6878      	ldr	r0, [r7, #4]
 8004c04:	f000 f826 	bl	8004c54 <UART_SetConfig>
 8004c08:	4603      	mov	r3, r0
 8004c0a:	2b01      	cmp	r3, #1
 8004c0c:	d101      	bne.n	8004c12 <HAL_UART_Init+0x5c>
 8004c0e:	2301      	movs	r3, #1
 8004c10:	e01b      	b.n	8004c4a <HAL_UART_Init+0x94>
 8004c12:	687b      	ldr	r3, [r7, #4]
 8004c14:	681b      	ldr	r3, [r3, #0]
 8004c16:	685a      	ldr	r2, [r3, #4]
 8004c18:	687b      	ldr	r3, [r7, #4]
 8004c1a:	681b      	ldr	r3, [r3, #0]
 8004c1c:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 8004c20:	605a      	str	r2, [r3, #4]
 8004c22:	687b      	ldr	r3, [r7, #4]
 8004c24:	681b      	ldr	r3, [r3, #0]
 8004c26:	689a      	ldr	r2, [r3, #8]
 8004c28:	687b      	ldr	r3, [r7, #4]
 8004c2a:	681b      	ldr	r3, [r3, #0]
 8004c2c:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 8004c30:	609a      	str	r2, [r3, #8]
 8004c32:	687b      	ldr	r3, [r7, #4]
 8004c34:	681b      	ldr	r3, [r3, #0]
 8004c36:	681a      	ldr	r2, [r3, #0]
 8004c38:	687b      	ldr	r3, [r7, #4]
 8004c3a:	681b      	ldr	r3, [r3, #0]
 8004c3c:	f042 0201 	orr.w	r2, r2, #1
 8004c40:	601a      	str	r2, [r3, #0]
 8004c42:	6878      	ldr	r0, [r7, #4]
 8004c44:	f000 fb0c 	bl	8005260 <UART_CheckIdleState>
 8004c48:	4603      	mov	r3, r0
 8004c4a:	4618      	mov	r0, r3
 8004c4c:	3708      	adds	r7, #8
 8004c4e:	46bd      	mov	sp, r7
 8004c50:	bd80      	pop	{r7, pc}
	...

08004c54 <UART_SetConfig>:
 8004c54:	b580      	push	{r7, lr}
 8004c56:	b088      	sub	sp, #32
 8004c58:	af00      	add	r7, sp, #0
 8004c5a:	6078      	str	r0, [r7, #4]
 8004c5c:	2300      	movs	r3, #0
 8004c5e:	77bb      	strb	r3, [r7, #30]
 8004c60:	687b      	ldr	r3, [r7, #4]
 8004c62:	689a      	ldr	r2, [r3, #8]
 8004c64:	687b      	ldr	r3, [r7, #4]
 8004c66:	691b      	ldr	r3, [r3, #16]
 8004c68:	431a      	orrs	r2, r3
 8004c6a:	687b      	ldr	r3, [r7, #4]
 8004c6c:	695b      	ldr	r3, [r3, #20]
 8004c6e:	431a      	orrs	r2, r3
 8004c70:	687b      	ldr	r3, [r7, #4]
 8004c72:	69db      	ldr	r3, [r3, #28]
 8004c74:	4313      	orrs	r3, r2
 8004c76:	617b      	str	r3, [r7, #20]
 8004c78:	687b      	ldr	r3, [r7, #4]
 8004c7a:	681b      	ldr	r3, [r3, #0]
 8004c7c:	681a      	ldr	r2, [r3, #0]
 8004c7e:	4ba6      	ldr	r3, [pc, #664]	@ (8004f18 <UART_SetConfig+0x2c4>)
 8004c80:	4013      	ands	r3, r2
 8004c82:	687a      	ldr	r2, [r7, #4]
 8004c84:	6812      	ldr	r2, [r2, #0]
 8004c86:	6979      	ldr	r1, [r7, #20]
 8004c88:	430b      	orrs	r3, r1
 8004c8a:	6013      	str	r3, [r2, #0]
 8004c8c:	687b      	ldr	r3, [r7, #4]
 8004c8e:	681b      	ldr	r3, [r3, #0]
 8004c90:	685b      	ldr	r3, [r3, #4]
 8004c92:	f423 5140 	bic.w	r1, r3, #12288	@ 0x3000
 8004c96:	687b      	ldr	r3, [r7, #4]
 8004c98:	68da      	ldr	r2, [r3, #12]
 8004c9a:	687b      	ldr	r3, [r7, #4]
 8004c9c:	681b      	ldr	r3, [r3, #0]
 8004c9e:	430a      	orrs	r2, r1
 8004ca0:	605a      	str	r2, [r3, #4]
 8004ca2:	687b      	ldr	r3, [r7, #4]
 8004ca4:	699b      	ldr	r3, [r3, #24]
 8004ca6:	617b      	str	r3, [r7, #20]
 8004ca8:	687b      	ldr	r3, [r7, #4]
 8004caa:	6a1b      	ldr	r3, [r3, #32]
 8004cac:	697a      	ldr	r2, [r7, #20]
 8004cae:	4313      	orrs	r3, r2
 8004cb0:	617b      	str	r3, [r7, #20]
 8004cb2:	687b      	ldr	r3, [r7, #4]
 8004cb4:	681b      	ldr	r3, [r3, #0]
 8004cb6:	689b      	ldr	r3, [r3, #8]
 8004cb8:	f423 6130 	bic.w	r1, r3, #2816	@ 0xb00
 8004cbc:	687b      	ldr	r3, [r7, #4]
 8004cbe:	681b      	ldr	r3, [r3, #0]
 8004cc0:	697a      	ldr	r2, [r7, #20]
 8004cc2:	430a      	orrs	r2, r1
 8004cc4:	609a      	str	r2, [r3, #8]
 8004cc6:	687b      	ldr	r3, [r7, #4]
 8004cc8:	681b      	ldr	r3, [r3, #0]
 8004cca:	4a94      	ldr	r2, [pc, #592]	@ (8004f1c <UART_SetConfig+0x2c8>)
 8004ccc:	4293      	cmp	r3, r2
 8004cce:	d120      	bne.n	8004d12 <UART_SetConfig+0xbe>
 8004cd0:	4b93      	ldr	r3, [pc, #588]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004cd2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004cd6:	f003 0303 	and.w	r3, r3, #3
 8004cda:	2b03      	cmp	r3, #3
 8004cdc:	d816      	bhi.n	8004d0c <UART_SetConfig+0xb8>
 8004cde:	a201      	add	r2, pc, #4	@ (adr r2, 8004ce4 <UART_SetConfig+0x90>)
 8004ce0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8004ce4:	08004cf5 	.word	0x08004cf5
 8004ce8:	08004d01 	.word	0x08004d01
 8004cec:	08004cfb 	.word	0x08004cfb
 8004cf0:	08004d07 	.word	0x08004d07
 8004cf4:	2301      	movs	r3, #1
 8004cf6:	77fb      	strb	r3, [r7, #31]
 8004cf8:	e150      	b.n	8004f9c <UART_SetConfig+0x348>
 8004cfa:	2302      	movs	r3, #2
 8004cfc:	77fb      	strb	r3, [r7, #31]
 8004cfe:	e14d      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d00:	2304      	movs	r3, #4
 8004d02:	77fb      	strb	r3, [r7, #31]
 8004d04:	e14a      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d06:	2308      	movs	r3, #8
 8004d08:	77fb      	strb	r3, [r7, #31]
 8004d0a:	e147      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d0c:	2310      	movs	r3, #16
 8004d0e:	77fb      	strb	r3, [r7, #31]
 8004d10:	e144      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d12:	687b      	ldr	r3, [r7, #4]
 8004d14:	681b      	ldr	r3, [r3, #0]
 8004d16:	4a83      	ldr	r2, [pc, #524]	@ (8004f24 <UART_SetConfig+0x2d0>)
 8004d18:	4293      	cmp	r3, r2
 8004d1a:	d132      	bne.n	8004d82 <UART_SetConfig+0x12e>
 8004d1c:	4b80      	ldr	r3, [pc, #512]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004d1e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004d22:	f003 030c 	and.w	r3, r3, #12
 8004d26:	2b0c      	cmp	r3, #12
 8004d28:	d828      	bhi.n	8004d7c <UART_SetConfig+0x128>
 8004d2a:	a201      	add	r2, pc, #4	@ (adr r2, 8004d30 <UART_SetConfig+0xdc>)
 8004d2c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8004d30:	08004d65 	.word	0x08004d65
 8004d34:	08004d7d 	.word	0x08004d7d
 8004d38:	08004d7d 	.word	0x08004d7d
 8004d3c:	08004d7d 	.word	0x08004d7d
 8004d40:	08004d71 	.word	0x08004d71
 8004d44:	08004d7d 	.word	0x08004d7d
 8004d48:	08004d7d 	.word	0x08004d7d
 8004d4c:	08004d7d 	.word	0x08004d7d
 8004d50:	08004d6b 	.word	0x08004d6b
 8004d54:	08004d7d 	.word	0x08004d7d
 8004d58:	08004d7d 	.word	0x08004d7d
 8004d5c:	08004d7d 	.word	0x08004d7d
 8004d60:	08004d77 	.word	0x08004d77
 8004d64:	2300      	movs	r3, #0
 8004d66:	77fb      	strb	r3, [r7, #31]
 8004d68:	e118      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d6a:	2302      	movs	r3, #2
 8004d6c:	77fb      	strb	r3, [r7, #31]
 8004d6e:	e115      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d70:	2304      	movs	r3, #4
 8004d72:	77fb      	strb	r3, [r7, #31]
 8004d74:	e112      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d76:	2308      	movs	r3, #8
 8004d78:	77fb      	strb	r3, [r7, #31]
 8004d7a:	e10f      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d7c:	2310      	movs	r3, #16
 8004d7e:	77fb      	strb	r3, [r7, #31]
 8004d80:	e10c      	b.n	8004f9c <UART_SetConfig+0x348>
 8004d82:	687b      	ldr	r3, [r7, #4]
 8004d84:	681b      	ldr	r3, [r3, #0]
 8004d86:	4a68      	ldr	r2, [pc, #416]	@ (8004f28 <UART_SetConfig+0x2d4>)
 8004d88:	4293      	cmp	r3, r2
 8004d8a:	d120      	bne.n	8004dce <UART_SetConfig+0x17a>
 8004d8c:	4b64      	ldr	r3, [pc, #400]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004d8e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004d92:	f003 0330 	and.w	r3, r3, #48	@ 0x30
 8004d96:	2b30      	cmp	r3, #48	@ 0x30
 8004d98:	d013      	beq.n	8004dc2 <UART_SetConfig+0x16e>
 8004d9a:	2b30      	cmp	r3, #48	@ 0x30
 8004d9c:	d814      	bhi.n	8004dc8 <UART_SetConfig+0x174>
 8004d9e:	2b20      	cmp	r3, #32
 8004da0:	d009      	beq.n	8004db6 <UART_SetConfig+0x162>
 8004da2:	2b20      	cmp	r3, #32
 8004da4:	d810      	bhi.n	8004dc8 <UART_SetConfig+0x174>
 8004da6:	2b00      	cmp	r3, #0
 8004da8:	d002      	beq.n	8004db0 <UART_SetConfig+0x15c>
 8004daa:	2b10      	cmp	r3, #16
 8004dac:	d006      	beq.n	8004dbc <UART_SetConfig+0x168>
 8004dae:	e00b      	b.n	8004dc8 <UART_SetConfig+0x174>
 8004db0:	2300      	movs	r3, #0
 8004db2:	77fb      	strb	r3, [r7, #31]
 8004db4:	e0f2      	b.n	8004f9c <UART_SetConfig+0x348>
 8004db6:	2302      	movs	r3, #2
 8004db8:	77fb      	strb	r3, [r7, #31]
 8004dba:	e0ef      	b.n	8004f9c <UART_SetConfig+0x348>
 8004dbc:	2304      	movs	r3, #4
 8004dbe:	77fb      	strb	r3, [r7, #31]
 8004dc0:	e0ec      	b.n	8004f9c <UART_SetConfig+0x348>
 8004dc2:	2308      	movs	r3, #8
 8004dc4:	77fb      	strb	r3, [r7, #31]
 8004dc6:	e0e9      	b.n	8004f9c <UART_SetConfig+0x348>
 8004dc8:	2310      	movs	r3, #16
 8004dca:	77fb      	strb	r3, [r7, #31]
 8004dcc:	e0e6      	b.n	8004f9c <UART_SetConfig+0x348>
 8004dce:	687b      	ldr	r3, [r7, #4]
 8004dd0:	681b      	ldr	r3, [r3, #0]
 8004dd2:	4a56      	ldr	r2, [pc, #344]	@ (8004f2c <UART_SetConfig+0x2d8>)
 8004dd4:	4293      	cmp	r3, r2
 8004dd6:	d120      	bne.n	8004e1a <UART_SetConfig+0x1c6>
 8004dd8:	4b51      	ldr	r3, [pc, #324]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004dda:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004dde:	f003 03c0 	and.w	r3, r3, #192	@ 0xc0
 8004de2:	2bc0      	cmp	r3, #192	@ 0xc0
 8004de4:	d013      	beq.n	8004e0e <UART_SetConfig+0x1ba>
 8004de6:	2bc0      	cmp	r3, #192	@ 0xc0
 8004de8:	d814      	bhi.n	8004e14 <UART_SetConfig+0x1c0>
 8004dea:	2b80      	cmp	r3, #128	@ 0x80
 8004dec:	d009      	beq.n	8004e02 <UART_SetConfig+0x1ae>
 8004dee:	2b80      	cmp	r3, #128	@ 0x80
 8004df0:	d810      	bhi.n	8004e14 <UART_SetConfig+0x1c0>
 8004df2:	2b00      	cmp	r3, #0
 8004df4:	d002      	beq.n	8004dfc <UART_SetConfig+0x1a8>
 8004df6:	2b40      	cmp	r3, #64	@ 0x40
 8004df8:	d006      	beq.n	8004e08 <UART_SetConfig+0x1b4>
 8004dfa:	e00b      	b.n	8004e14 <UART_SetConfig+0x1c0>
 8004dfc:	2300      	movs	r3, #0
 8004dfe:	77fb      	strb	r3, [r7, #31]
 8004e00:	e0cc      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e02:	2302      	movs	r3, #2
 8004e04:	77fb      	strb	r3, [r7, #31]
 8004e06:	e0c9      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e08:	2304      	movs	r3, #4
 8004e0a:	77fb      	strb	r3, [r7, #31]
 8004e0c:	e0c6      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e0e:	2308      	movs	r3, #8
 8004e10:	77fb      	strb	r3, [r7, #31]
 8004e12:	e0c3      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e14:	2310      	movs	r3, #16
 8004e16:	77fb      	strb	r3, [r7, #31]
 8004e18:	e0c0      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e1a:	687b      	ldr	r3, [r7, #4]
 8004e1c:	681b      	ldr	r3, [r3, #0]
 8004e1e:	4a44      	ldr	r2, [pc, #272]	@ (8004f30 <UART_SetConfig+0x2dc>)
 8004e20:	4293      	cmp	r3, r2
 8004e22:	d125      	bne.n	8004e70 <UART_SetConfig+0x21c>
 8004e24:	4b3e      	ldr	r3, [pc, #248]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004e26:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004e2a:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8004e2e:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8004e32:	d017      	beq.n	8004e64 <UART_SetConfig+0x210>
 8004e34:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8004e38:	d817      	bhi.n	8004e6a <UART_SetConfig+0x216>
 8004e3a:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8004e3e:	d00b      	beq.n	8004e58 <UART_SetConfig+0x204>
 8004e40:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8004e44:	d811      	bhi.n	8004e6a <UART_SetConfig+0x216>
 8004e46:	2b00      	cmp	r3, #0
 8004e48:	d003      	beq.n	8004e52 <UART_SetConfig+0x1fe>
 8004e4a:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8004e4e:	d006      	beq.n	8004e5e <UART_SetConfig+0x20a>
 8004e50:	e00b      	b.n	8004e6a <UART_SetConfig+0x216>
 8004e52:	2300      	movs	r3, #0
 8004e54:	77fb      	strb	r3, [r7, #31]
 8004e56:	e0a1      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e58:	2302      	movs	r3, #2
 8004e5a:	77fb      	strb	r3, [r7, #31]
 8004e5c:	e09e      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e5e:	2304      	movs	r3, #4
 8004e60:	77fb      	strb	r3, [r7, #31]
 8004e62:	e09b      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e64:	2308      	movs	r3, #8
 8004e66:	77fb      	strb	r3, [r7, #31]
 8004e68:	e098      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e6a:	2310      	movs	r3, #16
 8004e6c:	77fb      	strb	r3, [r7, #31]
 8004e6e:	e095      	b.n	8004f9c <UART_SetConfig+0x348>
 8004e70:	687b      	ldr	r3, [r7, #4]
 8004e72:	681b      	ldr	r3, [r3, #0]
 8004e74:	4a2f      	ldr	r2, [pc, #188]	@ (8004f34 <UART_SetConfig+0x2e0>)
 8004e76:	4293      	cmp	r3, r2
 8004e78:	d125      	bne.n	8004ec6 <UART_SetConfig+0x272>
 8004e7a:	4b29      	ldr	r3, [pc, #164]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004e7c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004e80:	f403 6340 	and.w	r3, r3, #3072	@ 0xc00
 8004e84:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8004e88:	d017      	beq.n	8004eba <UART_SetConfig+0x266>
 8004e8a:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8004e8e:	d817      	bhi.n	8004ec0 <UART_SetConfig+0x26c>
 8004e90:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8004e94:	d00b      	beq.n	8004eae <UART_SetConfig+0x25a>
 8004e96:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8004e9a:	d811      	bhi.n	8004ec0 <UART_SetConfig+0x26c>
 8004e9c:	2b00      	cmp	r3, #0
 8004e9e:	d003      	beq.n	8004ea8 <UART_SetConfig+0x254>
 8004ea0:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8004ea4:	d006      	beq.n	8004eb4 <UART_SetConfig+0x260>
 8004ea6:	e00b      	b.n	8004ec0 <UART_SetConfig+0x26c>
 8004ea8:	2301      	movs	r3, #1
 8004eaa:	77fb      	strb	r3, [r7, #31]
 8004eac:	e076      	b.n	8004f9c <UART_SetConfig+0x348>
 8004eae:	2302      	movs	r3, #2
 8004eb0:	77fb      	strb	r3, [r7, #31]
 8004eb2:	e073      	b.n	8004f9c <UART_SetConfig+0x348>
 8004eb4:	2304      	movs	r3, #4
 8004eb6:	77fb      	strb	r3, [r7, #31]
 8004eb8:	e070      	b.n	8004f9c <UART_SetConfig+0x348>
 8004eba:	2308      	movs	r3, #8
 8004ebc:	77fb      	strb	r3, [r7, #31]
 8004ebe:	e06d      	b.n	8004f9c <UART_SetConfig+0x348>
 8004ec0:	2310      	movs	r3, #16
 8004ec2:	77fb      	strb	r3, [r7, #31]
 8004ec4:	e06a      	b.n	8004f9c <UART_SetConfig+0x348>
 8004ec6:	687b      	ldr	r3, [r7, #4]
 8004ec8:	681b      	ldr	r3, [r3, #0]
 8004eca:	4a1b      	ldr	r2, [pc, #108]	@ (8004f38 <UART_SetConfig+0x2e4>)
 8004ecc:	4293      	cmp	r3, r2
 8004ece:	d138      	bne.n	8004f42 <UART_SetConfig+0x2ee>
 8004ed0:	4b13      	ldr	r3, [pc, #76]	@ (8004f20 <UART_SetConfig+0x2cc>)
 8004ed2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004ed6:	f403 5340 	and.w	r3, r3, #12288	@ 0x3000
 8004eda:	f5b3 5f40 	cmp.w	r3, #12288	@ 0x3000
 8004ede:	d017      	beq.n	8004f10 <UART_SetConfig+0x2bc>
 8004ee0:	f5b3 5f40 	cmp.w	r3, #12288	@ 0x3000
 8004ee4:	d82a      	bhi.n	8004f3c <UART_SetConfig+0x2e8>
 8004ee6:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8004eea:	d00b      	beq.n	8004f04 <UART_SetConfig+0x2b0>
 8004eec:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8004ef0:	d824      	bhi.n	8004f3c <UART_SetConfig+0x2e8>
 8004ef2:	2b00      	cmp	r3, #0
 8004ef4:	d003      	beq.n	8004efe <UART_SetConfig+0x2aa>
 8004ef6:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8004efa:	d006      	beq.n	8004f0a <UART_SetConfig+0x2b6>
 8004efc:	e01e      	b.n	8004f3c <UART_SetConfig+0x2e8>
 8004efe:	2300      	movs	r3, #0
 8004f00:	77fb      	strb	r3, [r7, #31]
 8004f02:	e04b      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f04:	2302      	movs	r3, #2
 8004f06:	77fb      	strb	r3, [r7, #31]
 8004f08:	e048      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f0a:	2304      	movs	r3, #4
 8004f0c:	77fb      	strb	r3, [r7, #31]
 8004f0e:	e045      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f10:	2308      	movs	r3, #8
 8004f12:	77fb      	strb	r3, [r7, #31]
 8004f14:	e042      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f16:	bf00      	nop
 8004f18:	efff69f3 	.word	0xefff69f3
 8004f1c:	40011000 	.word	0x40011000
 8004f20:	40023800 	.word	0x40023800
 8004f24:	40004400 	.word	0x40004400
 8004f28:	40004800 	.word	0x40004800
 8004f2c:	40004c00 	.word	0x40004c00
 8004f30:	40005000 	.word	0x40005000
 8004f34:	40011400 	.word	0x40011400
 8004f38:	40007800 	.word	0x40007800
 8004f3c:	2310      	movs	r3, #16
 8004f3e:	77fb      	strb	r3, [r7, #31]
 8004f40:	e02c      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f42:	687b      	ldr	r3, [r7, #4]
 8004f44:	681b      	ldr	r3, [r3, #0]
 8004f46:	4a72      	ldr	r2, [pc, #456]	@ (8005110 <UART_SetConfig+0x4bc>)
 8004f48:	4293      	cmp	r3, r2
 8004f4a:	d125      	bne.n	8004f98 <UART_SetConfig+0x344>
 8004f4c:	4b71      	ldr	r3, [pc, #452]	@ (8005114 <UART_SetConfig+0x4c0>)
 8004f4e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8004f52:	f403 4340 	and.w	r3, r3, #49152	@ 0xc000
 8004f56:	f5b3 4f40 	cmp.w	r3, #49152	@ 0xc000
 8004f5a:	d017      	beq.n	8004f8c <UART_SetConfig+0x338>
 8004f5c:	f5b3 4f40 	cmp.w	r3, #49152	@ 0xc000
 8004f60:	d817      	bhi.n	8004f92 <UART_SetConfig+0x33e>
 8004f62:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8004f66:	d00b      	beq.n	8004f80 <UART_SetConfig+0x32c>
 8004f68:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8004f6c:	d811      	bhi.n	8004f92 <UART_SetConfig+0x33e>
 8004f6e:	2b00      	cmp	r3, #0
 8004f70:	d003      	beq.n	8004f7a <UART_SetConfig+0x326>
 8004f72:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 8004f76:	d006      	beq.n	8004f86 <UART_SetConfig+0x332>
 8004f78:	e00b      	b.n	8004f92 <UART_SetConfig+0x33e>
 8004f7a:	2300      	movs	r3, #0
 8004f7c:	77fb      	strb	r3, [r7, #31]
 8004f7e:	e00d      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f80:	2302      	movs	r3, #2
 8004f82:	77fb      	strb	r3, [r7, #31]
 8004f84:	e00a      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f86:	2304      	movs	r3, #4
 8004f88:	77fb      	strb	r3, [r7, #31]
 8004f8a:	e007      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f8c:	2308      	movs	r3, #8
 8004f8e:	77fb      	strb	r3, [r7, #31]
 8004f90:	e004      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f92:	2310      	movs	r3, #16
 8004f94:	77fb      	strb	r3, [r7, #31]
 8004f96:	e001      	b.n	8004f9c <UART_SetConfig+0x348>
 8004f98:	2310      	movs	r3, #16
 8004f9a:	77fb      	strb	r3, [r7, #31]
 8004f9c:	687b      	ldr	r3, [r7, #4]
 8004f9e:	69db      	ldr	r3, [r3, #28]
 8004fa0:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8004fa4:	d15b      	bne.n	800505e <UART_SetConfig+0x40a>
 8004fa6:	7ffb      	ldrb	r3, [r7, #31]
 8004fa8:	2b08      	cmp	r3, #8
 8004faa:	d828      	bhi.n	8004ffe <UART_SetConfig+0x3aa>
 8004fac:	a201      	add	r2, pc, #4	@ (adr r2, 8004fb4 <UART_SetConfig+0x360>)
 8004fae:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8004fb2:	bf00      	nop
 8004fb4:	08004fd9 	.word	0x08004fd9
 8004fb8:	08004fe1 	.word	0x08004fe1
 8004fbc:	08004fe9 	.word	0x08004fe9
 8004fc0:	08004fff 	.word	0x08004fff
 8004fc4:	08004fef 	.word	0x08004fef
 8004fc8:	08004fff 	.word	0x08004fff
 8004fcc:	08004fff 	.word	0x08004fff
 8004fd0:	08004fff 	.word	0x08004fff
 8004fd4:	08004ff7 	.word	0x08004ff7
 8004fd8:	f7fc f8c0 	bl	800115c <HAL_RCC_GetPCLK1Freq>
 8004fdc:	61b8      	str	r0, [r7, #24]
 8004fde:	e013      	b.n	8005008 <UART_SetConfig+0x3b4>
 8004fe0:	f7fc f8d0 	bl	8001184 <HAL_RCC_GetPCLK2Freq>
 8004fe4:	61b8      	str	r0, [r7, #24]
 8004fe6:	e00f      	b.n	8005008 <UART_SetConfig+0x3b4>
 8004fe8:	4b4b      	ldr	r3, [pc, #300]	@ (8005118 <UART_SetConfig+0x4c4>)
 8004fea:	61bb      	str	r3, [r7, #24]
 8004fec:	e00c      	b.n	8005008 <UART_SetConfig+0x3b4>
 8004fee:	f7fb ffa3 	bl	8000f38 <HAL_RCC_GetSysClockFreq>
 8004ff2:	61b8      	str	r0, [r7, #24]
 8004ff4:	e008      	b.n	8005008 <UART_SetConfig+0x3b4>
 8004ff6:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8004ffa:	61bb      	str	r3, [r7, #24]
 8004ffc:	e004      	b.n	8005008 <UART_SetConfig+0x3b4>
 8004ffe:	2300      	movs	r3, #0
 8005000:	61bb      	str	r3, [r7, #24]
 8005002:	2301      	movs	r3, #1
 8005004:	77bb      	strb	r3, [r7, #30]
 8005006:	bf00      	nop
 8005008:	69bb      	ldr	r3, [r7, #24]
 800500a:	2b00      	cmp	r3, #0
 800500c:	d074      	beq.n	80050f8 <UART_SetConfig+0x4a4>
 800500e:	69bb      	ldr	r3, [r7, #24]
 8005010:	005a      	lsls	r2, r3, #1
 8005012:	687b      	ldr	r3, [r7, #4]
 8005014:	685b      	ldr	r3, [r3, #4]
 8005016:	085b      	lsrs	r3, r3, #1
 8005018:	441a      	add	r2, r3
 800501a:	687b      	ldr	r3, [r7, #4]
 800501c:	685b      	ldr	r3, [r3, #4]
 800501e:	fbb2 f3f3 	udiv	r3, r2, r3
 8005022:	613b      	str	r3, [r7, #16]
 8005024:	693b      	ldr	r3, [r7, #16]
 8005026:	2b0f      	cmp	r3, #15
 8005028:	d916      	bls.n	8005058 <UART_SetConfig+0x404>
 800502a:	693b      	ldr	r3, [r7, #16]
 800502c:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8005030:	d212      	bcs.n	8005058 <UART_SetConfig+0x404>
 8005032:	693b      	ldr	r3, [r7, #16]
 8005034:	b29b      	uxth	r3, r3
 8005036:	f023 030f 	bic.w	r3, r3, #15
 800503a:	81fb      	strh	r3, [r7, #14]
 800503c:	693b      	ldr	r3, [r7, #16]
 800503e:	085b      	lsrs	r3, r3, #1
 8005040:	b29b      	uxth	r3, r3
 8005042:	f003 0307 	and.w	r3, r3, #7
 8005046:	b29a      	uxth	r2, r3
 8005048:	89fb      	ldrh	r3, [r7, #14]
 800504a:	4313      	orrs	r3, r2
 800504c:	81fb      	strh	r3, [r7, #14]
 800504e:	687b      	ldr	r3, [r7, #4]
 8005050:	681b      	ldr	r3, [r3, #0]
 8005052:	89fa      	ldrh	r2, [r7, #14]
 8005054:	60da      	str	r2, [r3, #12]
 8005056:	e04f      	b.n	80050f8 <UART_SetConfig+0x4a4>
 8005058:	2301      	movs	r3, #1
 800505a:	77bb      	strb	r3, [r7, #30]
 800505c:	e04c      	b.n	80050f8 <UART_SetConfig+0x4a4>
 800505e:	7ffb      	ldrb	r3, [r7, #31]
 8005060:	2b08      	cmp	r3, #8
 8005062:	d828      	bhi.n	80050b6 <UART_SetConfig+0x462>
 8005064:	a201      	add	r2, pc, #4	@ (adr r2, 800506c <UART_SetConfig+0x418>)
 8005066:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800506a:	bf00      	nop
 800506c:	08005091 	.word	0x08005091
 8005070:	08005099 	.word	0x08005099
 8005074:	080050a1 	.word	0x080050a1
 8005078:	080050b7 	.word	0x080050b7
 800507c:	080050a7 	.word	0x080050a7
 8005080:	080050b7 	.word	0x080050b7
 8005084:	080050b7 	.word	0x080050b7
 8005088:	080050b7 	.word	0x080050b7
 800508c:	080050af 	.word	0x080050af
 8005090:	f7fc f864 	bl	800115c <HAL_RCC_GetPCLK1Freq>
 8005094:	61b8      	str	r0, [r7, #24]
 8005096:	e013      	b.n	80050c0 <UART_SetConfig+0x46c>
 8005098:	f7fc f874 	bl	8001184 <HAL_RCC_GetPCLK2Freq>
 800509c:	61b8      	str	r0, [r7, #24]
 800509e:	e00f      	b.n	80050c0 <UART_SetConfig+0x46c>
 80050a0:	4b1d      	ldr	r3, [pc, #116]	@ (8005118 <UART_SetConfig+0x4c4>)
 80050a2:	61bb      	str	r3, [r7, #24]
 80050a4:	e00c      	b.n	80050c0 <UART_SetConfig+0x46c>
 80050a6:	f7fb ff47 	bl	8000f38 <HAL_RCC_GetSysClockFreq>
 80050aa:	61b8      	str	r0, [r7, #24]
 80050ac:	e008      	b.n	80050c0 <UART_SetConfig+0x46c>
 80050ae:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 80050b2:	61bb      	str	r3, [r7, #24]
 80050b4:	e004      	b.n	80050c0 <UART_SetConfig+0x46c>
 80050b6:	2300      	movs	r3, #0
 80050b8:	61bb      	str	r3, [r7, #24]
 80050ba:	2301      	movs	r3, #1
 80050bc:	77bb      	strb	r3, [r7, #30]
 80050be:	bf00      	nop
 80050c0:	69bb      	ldr	r3, [r7, #24]
 80050c2:	2b00      	cmp	r3, #0
 80050c4:	d018      	beq.n	80050f8 <UART_SetConfig+0x4a4>
 80050c6:	687b      	ldr	r3, [r7, #4]
 80050c8:	685b      	ldr	r3, [r3, #4]
 80050ca:	085a      	lsrs	r2, r3, #1
 80050cc:	69bb      	ldr	r3, [r7, #24]
 80050ce:	441a      	add	r2, r3
 80050d0:	687b      	ldr	r3, [r7, #4]
 80050d2:	685b      	ldr	r3, [r3, #4]
 80050d4:	fbb2 f3f3 	udiv	r3, r2, r3
 80050d8:	613b      	str	r3, [r7, #16]
 80050da:	693b      	ldr	r3, [r7, #16]
 80050dc:	2b0f      	cmp	r3, #15
 80050de:	d909      	bls.n	80050f4 <UART_SetConfig+0x4a0>
 80050e0:	693b      	ldr	r3, [r7, #16]
 80050e2:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 80050e6:	d205      	bcs.n	80050f4 <UART_SetConfig+0x4a0>
 80050e8:	693b      	ldr	r3, [r7, #16]
 80050ea:	b29a      	uxth	r2, r3
 80050ec:	687b      	ldr	r3, [r7, #4]
 80050ee:	681b      	ldr	r3, [r3, #0]
 80050f0:	60da      	str	r2, [r3, #12]
 80050f2:	e001      	b.n	80050f8 <UART_SetConfig+0x4a4>
 80050f4:	2301      	movs	r3, #1
 80050f6:	77bb      	strb	r3, [r7, #30]
 80050f8:	687b      	ldr	r3, [r7, #4]
 80050fa:	2200      	movs	r2, #0
 80050fc:	669a      	str	r2, [r3, #104]	@ 0x68
 80050fe:	687b      	ldr	r3, [r7, #4]
 8005100:	2200      	movs	r2, #0
 8005102:	66da      	str	r2, [r3, #108]	@ 0x6c
 8005104:	7fbb      	ldrb	r3, [r7, #30]
 8005106:	4618      	mov	r0, r3
 8005108:	3720      	adds	r7, #32
 800510a:	46bd      	mov	sp, r7
 800510c:	bd80      	pop	{r7, pc}
 800510e:	bf00      	nop
 8005110:	40007c00 	.word	0x40007c00
 8005114:	40023800 	.word	0x40023800
 8005118:	00f42400 	.word	0x00f42400

0800511c <UART_AdvFeatureConfig>:
 800511c:	b480      	push	{r7}
 800511e:	b083      	sub	sp, #12
 8005120:	af00      	add	r7, sp, #0
 8005122:	6078      	str	r0, [r7, #4]
 8005124:	687b      	ldr	r3, [r7, #4]
 8005126:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8005128:	f003 0308 	and.w	r3, r3, #8
 800512c:	2b00      	cmp	r3, #0
 800512e:	d00a      	beq.n	8005146 <UART_AdvFeatureConfig+0x2a>
 8005130:	687b      	ldr	r3, [r7, #4]
 8005132:	681b      	ldr	r3, [r3, #0]
 8005134:	685b      	ldr	r3, [r3, #4]
 8005136:	f423 4100 	bic.w	r1, r3, #32768	@ 0x8000
 800513a:	687b      	ldr	r3, [r7, #4]
 800513c:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 800513e:	687b      	ldr	r3, [r7, #4]
 8005140:	681b      	ldr	r3, [r3, #0]
 8005142:	430a      	orrs	r2, r1
 8005144:	605a      	str	r2, [r3, #4]
 8005146:	687b      	ldr	r3, [r7, #4]
 8005148:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 800514a:	f003 0301 	and.w	r3, r3, #1
 800514e:	2b00      	cmp	r3, #0
 8005150:	d00a      	beq.n	8005168 <UART_AdvFeatureConfig+0x4c>
 8005152:	687b      	ldr	r3, [r7, #4]
 8005154:	681b      	ldr	r3, [r3, #0]
 8005156:	685b      	ldr	r3, [r3, #4]
 8005158:	f423 3100 	bic.w	r1, r3, #131072	@ 0x20000
 800515c:	687b      	ldr	r3, [r7, #4]
 800515e:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8005160:	687b      	ldr	r3, [r7, #4]
 8005162:	681b      	ldr	r3, [r3, #0]
 8005164:	430a      	orrs	r2, r1
 8005166:	605a      	str	r2, [r3, #4]
 8005168:	687b      	ldr	r3, [r7, #4]
 800516a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 800516c:	f003 0302 	and.w	r3, r3, #2
 8005170:	2b00      	cmp	r3, #0
 8005172:	d00a      	beq.n	800518a <UART_AdvFeatureConfig+0x6e>
 8005174:	687b      	ldr	r3, [r7, #4]
 8005176:	681b      	ldr	r3, [r3, #0]
 8005178:	685b      	ldr	r3, [r3, #4]
 800517a:	f423 3180 	bic.w	r1, r3, #65536	@ 0x10000
 800517e:	687b      	ldr	r3, [r7, #4]
 8005180:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8005182:	687b      	ldr	r3, [r7, #4]
 8005184:	681b      	ldr	r3, [r3, #0]
 8005186:	430a      	orrs	r2, r1
 8005188:	605a      	str	r2, [r3, #4]
 800518a:	687b      	ldr	r3, [r7, #4]
 800518c:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 800518e:	f003 0304 	and.w	r3, r3, #4
 8005192:	2b00      	cmp	r3, #0
 8005194:	d00a      	beq.n	80051ac <UART_AdvFeatureConfig+0x90>
 8005196:	687b      	ldr	r3, [r7, #4]
 8005198:	681b      	ldr	r3, [r3, #0]
 800519a:	685b      	ldr	r3, [r3, #4]
 800519c:	f423 2180 	bic.w	r1, r3, #262144	@ 0x40000
 80051a0:	687b      	ldr	r3, [r7, #4]
 80051a2:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 80051a4:	687b      	ldr	r3, [r7, #4]
 80051a6:	681b      	ldr	r3, [r3, #0]
 80051a8:	430a      	orrs	r2, r1
 80051aa:	605a      	str	r2, [r3, #4]
 80051ac:	687b      	ldr	r3, [r7, #4]
 80051ae:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80051b0:	f003 0310 	and.w	r3, r3, #16
 80051b4:	2b00      	cmp	r3, #0
 80051b6:	d00a      	beq.n	80051ce <UART_AdvFeatureConfig+0xb2>
 80051b8:	687b      	ldr	r3, [r7, #4]
 80051ba:	681b      	ldr	r3, [r3, #0]
 80051bc:	689b      	ldr	r3, [r3, #8]
 80051be:	f423 5180 	bic.w	r1, r3, #4096	@ 0x1000
 80051c2:	687b      	ldr	r3, [r7, #4]
 80051c4:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80051c6:	687b      	ldr	r3, [r7, #4]
 80051c8:	681b      	ldr	r3, [r3, #0]
 80051ca:	430a      	orrs	r2, r1
 80051cc:	609a      	str	r2, [r3, #8]
 80051ce:	687b      	ldr	r3, [r7, #4]
 80051d0:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80051d2:	f003 0320 	and.w	r3, r3, #32
 80051d6:	2b00      	cmp	r3, #0
 80051d8:	d00a      	beq.n	80051f0 <UART_AdvFeatureConfig+0xd4>
 80051da:	687b      	ldr	r3, [r7, #4]
 80051dc:	681b      	ldr	r3, [r3, #0]
 80051de:	689b      	ldr	r3, [r3, #8]
 80051e0:	f423 5100 	bic.w	r1, r3, #8192	@ 0x2000
 80051e4:	687b      	ldr	r3, [r7, #4]
 80051e6:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 80051e8:	687b      	ldr	r3, [r7, #4]
 80051ea:	681b      	ldr	r3, [r3, #0]
 80051ec:	430a      	orrs	r2, r1
 80051ee:	609a      	str	r2, [r3, #8]
 80051f0:	687b      	ldr	r3, [r7, #4]
 80051f2:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80051f4:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80051f8:	2b00      	cmp	r3, #0
 80051fa:	d01a      	beq.n	8005232 <UART_AdvFeatureConfig+0x116>
 80051fc:	687b      	ldr	r3, [r7, #4]
 80051fe:	681b      	ldr	r3, [r3, #0]
 8005200:	685b      	ldr	r3, [r3, #4]
 8005202:	f423 1180 	bic.w	r1, r3, #1048576	@ 0x100000
 8005206:	687b      	ldr	r3, [r7, #4]
 8005208:	6c1a      	ldr	r2, [r3, #64]	@ 0x40
 800520a:	687b      	ldr	r3, [r7, #4]
 800520c:	681b      	ldr	r3, [r3, #0]
 800520e:	430a      	orrs	r2, r1
 8005210:	605a      	str	r2, [r3, #4]
 8005212:	687b      	ldr	r3, [r7, #4]
 8005214:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8005216:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 800521a:	d10a      	bne.n	8005232 <UART_AdvFeatureConfig+0x116>
 800521c:	687b      	ldr	r3, [r7, #4]
 800521e:	681b      	ldr	r3, [r3, #0]
 8005220:	685b      	ldr	r3, [r3, #4]
 8005222:	f423 01c0 	bic.w	r1, r3, #6291456	@ 0x600000
 8005226:	687b      	ldr	r3, [r7, #4]
 8005228:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
 800522a:	687b      	ldr	r3, [r7, #4]
 800522c:	681b      	ldr	r3, [r3, #0]
 800522e:	430a      	orrs	r2, r1
 8005230:	605a      	str	r2, [r3, #4]
 8005232:	687b      	ldr	r3, [r7, #4]
 8005234:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8005236:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 800523a:	2b00      	cmp	r3, #0
 800523c:	d00a      	beq.n	8005254 <UART_AdvFeatureConfig+0x138>
 800523e:	687b      	ldr	r3, [r7, #4]
 8005240:	681b      	ldr	r3, [r3, #0]
 8005242:	685b      	ldr	r3, [r3, #4]
 8005244:	f423 2100 	bic.w	r1, r3, #524288	@ 0x80000
 8005248:	687b      	ldr	r3, [r7, #4]
 800524a:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
 800524c:	687b      	ldr	r3, [r7, #4]
 800524e:	681b      	ldr	r3, [r3, #0]
 8005250:	430a      	orrs	r2, r1
 8005252:	605a      	str	r2, [r3, #4]
 8005254:	bf00      	nop
 8005256:	370c      	adds	r7, #12
 8005258:	46bd      	mov	sp, r7
 800525a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800525e:	4770      	bx	lr

08005260 <UART_CheckIdleState>:
 8005260:	b580      	push	{r7, lr}
 8005262:	b08c      	sub	sp, #48	@ 0x30
 8005264:	af02      	add	r7, sp, #8
 8005266:	6078      	str	r0, [r7, #4]
 8005268:	687b      	ldr	r3, [r7, #4]
 800526a:	2200      	movs	r2, #0
 800526c:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 8005270:	f7fd f9cc 	bl	800260c <HAL_GetTick>
 8005274:	6278      	str	r0, [r7, #36]	@ 0x24
 8005276:	687b      	ldr	r3, [r7, #4]
 8005278:	681b      	ldr	r3, [r3, #0]
 800527a:	681b      	ldr	r3, [r3, #0]
 800527c:	f003 0308 	and.w	r3, r3, #8
 8005280:	2b08      	cmp	r3, #8
 8005282:	d12e      	bne.n	80052e2 <UART_CheckIdleState+0x82>
 8005284:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8005288:	9300      	str	r3, [sp, #0]
 800528a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800528c:	2200      	movs	r2, #0
 800528e:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 8005292:	6878      	ldr	r0, [r7, #4]
 8005294:	f000 f83b 	bl	800530e <UART_WaitOnFlagUntilTimeout>
 8005298:	4603      	mov	r3, r0
 800529a:	2b00      	cmp	r3, #0
 800529c:	d021      	beq.n	80052e2 <UART_CheckIdleState+0x82>
 800529e:	687b      	ldr	r3, [r7, #4]
 80052a0:	681b      	ldr	r3, [r3, #0]
 80052a2:	613b      	str	r3, [r7, #16]
 80052a4:	693b      	ldr	r3, [r7, #16]
 80052a6:	e853 3f00 	ldrex	r3, [r3]
 80052aa:	60fb      	str	r3, [r7, #12]
 80052ac:	68fb      	ldr	r3, [r7, #12]
 80052ae:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80052b2:	623b      	str	r3, [r7, #32]
 80052b4:	687b      	ldr	r3, [r7, #4]
 80052b6:	681b      	ldr	r3, [r3, #0]
 80052b8:	461a      	mov	r2, r3
 80052ba:	6a3b      	ldr	r3, [r7, #32]
 80052bc:	61fb      	str	r3, [r7, #28]
 80052be:	61ba      	str	r2, [r7, #24]
 80052c0:	69b9      	ldr	r1, [r7, #24]
 80052c2:	69fa      	ldr	r2, [r7, #28]
 80052c4:	e841 2300 	strex	r3, r2, [r1]
 80052c8:	617b      	str	r3, [r7, #20]
 80052ca:	697b      	ldr	r3, [r7, #20]
 80052cc:	2b00      	cmp	r3, #0
 80052ce:	d1e6      	bne.n	800529e <UART_CheckIdleState+0x3e>
 80052d0:	687b      	ldr	r3, [r7, #4]
 80052d2:	2220      	movs	r2, #32
 80052d4:	67da      	str	r2, [r3, #124]	@ 0x7c
 80052d6:	687b      	ldr	r3, [r7, #4]
 80052d8:	2200      	movs	r2, #0
 80052da:	f883 2078 	strb.w	r2, [r3, #120]	@ 0x78
 80052de:	2303      	movs	r3, #3
 80052e0:	e011      	b.n	8005306 <UART_CheckIdleState+0xa6>
 80052e2:	687b      	ldr	r3, [r7, #4]
 80052e4:	2220      	movs	r2, #32
 80052e6:	67da      	str	r2, [r3, #124]	@ 0x7c
 80052e8:	687b      	ldr	r3, [r7, #4]
 80052ea:	2220      	movs	r2, #32
 80052ec:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
 80052f0:	687b      	ldr	r3, [r7, #4]
 80052f2:	2200      	movs	r2, #0
 80052f4:	661a      	str	r2, [r3, #96]	@ 0x60
 80052f6:	687b      	ldr	r3, [r7, #4]
 80052f8:	2200      	movs	r2, #0
 80052fa:	665a      	str	r2, [r3, #100]	@ 0x64
 80052fc:	687b      	ldr	r3, [r7, #4]
 80052fe:	2200      	movs	r2, #0
 8005300:	f883 2078 	strb.w	r2, [r3, #120]	@ 0x78
 8005304:	2300      	movs	r3, #0
 8005306:	4618      	mov	r0, r3
 8005308:	3728      	adds	r7, #40	@ 0x28
 800530a:	46bd      	mov	sp, r7
 800530c:	bd80      	pop	{r7, pc}

0800530e <UART_WaitOnFlagUntilTimeout>:
 800530e:	b580      	push	{r7, lr}
 8005310:	b084      	sub	sp, #16
 8005312:	af00      	add	r7, sp, #0
 8005314:	60f8      	str	r0, [r7, #12]
 8005316:	60b9      	str	r1, [r7, #8]
 8005318:	603b      	str	r3, [r7, #0]
 800531a:	4613      	mov	r3, r2
 800531c:	71fb      	strb	r3, [r7, #7]
 800531e:	e04f      	b.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 8005320:	69bb      	ldr	r3, [r7, #24]
 8005322:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005326:	d04b      	beq.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 8005328:	f7fd f970 	bl	800260c <HAL_GetTick>
 800532c:	4602      	mov	r2, r0
 800532e:	683b      	ldr	r3, [r7, #0]
 8005330:	1ad3      	subs	r3, r2, r3
 8005332:	69ba      	ldr	r2, [r7, #24]
 8005334:	429a      	cmp	r2, r3
 8005336:	d302      	bcc.n	800533e <UART_WaitOnFlagUntilTimeout+0x30>
 8005338:	69bb      	ldr	r3, [r7, #24]
 800533a:	2b00      	cmp	r3, #0
 800533c:	d101      	bne.n	8005342 <UART_WaitOnFlagUntilTimeout+0x34>
 800533e:	2303      	movs	r3, #3
 8005340:	e04e      	b.n	80053e0 <UART_WaitOnFlagUntilTimeout+0xd2>
 8005342:	68fb      	ldr	r3, [r7, #12]
 8005344:	681b      	ldr	r3, [r3, #0]
 8005346:	681b      	ldr	r3, [r3, #0]
 8005348:	f003 0304 	and.w	r3, r3, #4
 800534c:	2b00      	cmp	r3, #0
 800534e:	d037      	beq.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 8005350:	68bb      	ldr	r3, [r7, #8]
 8005352:	2b80      	cmp	r3, #128	@ 0x80
 8005354:	d034      	beq.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 8005356:	68bb      	ldr	r3, [r7, #8]
 8005358:	2b40      	cmp	r3, #64	@ 0x40
 800535a:	d031      	beq.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 800535c:	68fb      	ldr	r3, [r7, #12]
 800535e:	681b      	ldr	r3, [r3, #0]
 8005360:	69db      	ldr	r3, [r3, #28]
 8005362:	f003 0308 	and.w	r3, r3, #8
 8005366:	2b08      	cmp	r3, #8
 8005368:	d110      	bne.n	800538c <UART_WaitOnFlagUntilTimeout+0x7e>
 800536a:	68fb      	ldr	r3, [r7, #12]
 800536c:	681b      	ldr	r3, [r3, #0]
 800536e:	2208      	movs	r2, #8
 8005370:	621a      	str	r2, [r3, #32]
 8005372:	68f8      	ldr	r0, [r7, #12]
 8005374:	f000 f838 	bl	80053e8 <UART_EndRxTransfer>
 8005378:	68fb      	ldr	r3, [r7, #12]
 800537a:	2208      	movs	r2, #8
 800537c:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 8005380:	68fb      	ldr	r3, [r7, #12]
 8005382:	2200      	movs	r2, #0
 8005384:	f883 2078 	strb.w	r2, [r3, #120]	@ 0x78
 8005388:	2301      	movs	r3, #1
 800538a:	e029      	b.n	80053e0 <UART_WaitOnFlagUntilTimeout+0xd2>
 800538c:	68fb      	ldr	r3, [r7, #12]
 800538e:	681b      	ldr	r3, [r3, #0]
 8005390:	69db      	ldr	r3, [r3, #28]
 8005392:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8005396:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 800539a:	d111      	bne.n	80053c0 <UART_WaitOnFlagUntilTimeout+0xb2>
 800539c:	68fb      	ldr	r3, [r7, #12]
 800539e:	681b      	ldr	r3, [r3, #0]
 80053a0:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 80053a4:	621a      	str	r2, [r3, #32]
 80053a6:	68f8      	ldr	r0, [r7, #12]
 80053a8:	f000 f81e 	bl	80053e8 <UART_EndRxTransfer>
 80053ac:	68fb      	ldr	r3, [r7, #12]
 80053ae:	2220      	movs	r2, #32
 80053b0:	f8c3 2084 	str.w	r2, [r3, #132]	@ 0x84
 80053b4:	68fb      	ldr	r3, [r7, #12]
 80053b6:	2200      	movs	r2, #0
 80053b8:	f883 2078 	strb.w	r2, [r3, #120]	@ 0x78
 80053bc:	2303      	movs	r3, #3
 80053be:	e00f      	b.n	80053e0 <UART_WaitOnFlagUntilTimeout+0xd2>
 80053c0:	68fb      	ldr	r3, [r7, #12]
 80053c2:	681b      	ldr	r3, [r3, #0]
 80053c4:	69da      	ldr	r2, [r3, #28]
 80053c6:	68bb      	ldr	r3, [r7, #8]
 80053c8:	4013      	ands	r3, r2
 80053ca:	68ba      	ldr	r2, [r7, #8]
 80053cc:	429a      	cmp	r2, r3
 80053ce:	bf0c      	ite	eq
 80053d0:	2301      	moveq	r3, #1
 80053d2:	2300      	movne	r3, #0
 80053d4:	b2db      	uxtb	r3, r3
 80053d6:	461a      	mov	r2, r3
 80053d8:	79fb      	ldrb	r3, [r7, #7]
 80053da:	429a      	cmp	r2, r3
 80053dc:	d0a0      	beq.n	8005320 <UART_WaitOnFlagUntilTimeout+0x12>
 80053de:	2300      	movs	r3, #0
 80053e0:	4618      	mov	r0, r3
 80053e2:	3710      	adds	r7, #16
 80053e4:	46bd      	mov	sp, r7
 80053e6:	bd80      	pop	{r7, pc}

080053e8 <UART_EndRxTransfer>:
 80053e8:	b480      	push	{r7}
 80053ea:	b095      	sub	sp, #84	@ 0x54
 80053ec:	af00      	add	r7, sp, #0
 80053ee:	6078      	str	r0, [r7, #4]
 80053f0:	687b      	ldr	r3, [r7, #4]
 80053f2:	681b      	ldr	r3, [r3, #0]
 80053f4:	637b      	str	r3, [r7, #52]	@ 0x34
 80053f6:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 80053f8:	e853 3f00 	ldrex	r3, [r3]
 80053fc:	633b      	str	r3, [r7, #48]	@ 0x30
 80053fe:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005400:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8005404:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8005406:	687b      	ldr	r3, [r7, #4]
 8005408:	681b      	ldr	r3, [r3, #0]
 800540a:	461a      	mov	r2, r3
 800540c:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800540e:	643b      	str	r3, [r7, #64]	@ 0x40
 8005410:	63fa      	str	r2, [r7, #60]	@ 0x3c
 8005412:	6bf9      	ldr	r1, [r7, #60]	@ 0x3c
 8005414:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 8005416:	e841 2300 	strex	r3, r2, [r1]
 800541a:	63bb      	str	r3, [r7, #56]	@ 0x38
 800541c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800541e:	2b00      	cmp	r3, #0
 8005420:	d1e6      	bne.n	80053f0 <UART_EndRxTransfer+0x8>
 8005422:	687b      	ldr	r3, [r7, #4]
 8005424:	681b      	ldr	r3, [r3, #0]
 8005426:	3308      	adds	r3, #8
 8005428:	623b      	str	r3, [r7, #32]
 800542a:	6a3b      	ldr	r3, [r7, #32]
 800542c:	e853 3f00 	ldrex	r3, [r3]
 8005430:	61fb      	str	r3, [r7, #28]
 8005432:	69fb      	ldr	r3, [r7, #28]
 8005434:	f023 0301 	bic.w	r3, r3, #1
 8005438:	64bb      	str	r3, [r7, #72]	@ 0x48
 800543a:	687b      	ldr	r3, [r7, #4]
 800543c:	681b      	ldr	r3, [r3, #0]
 800543e:	3308      	adds	r3, #8
 8005440:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 8005442:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8005444:	62bb      	str	r3, [r7, #40]	@ 0x28
 8005446:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8005448:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800544a:	e841 2300 	strex	r3, r2, [r1]
 800544e:	627b      	str	r3, [r7, #36]	@ 0x24
 8005450:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8005452:	2b00      	cmp	r3, #0
 8005454:	d1e5      	bne.n	8005422 <UART_EndRxTransfer+0x3a>
 8005456:	687b      	ldr	r3, [r7, #4]
 8005458:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 800545a:	2b01      	cmp	r3, #1
 800545c:	d118      	bne.n	8005490 <UART_EndRxTransfer+0xa8>
 800545e:	687b      	ldr	r3, [r7, #4]
 8005460:	681b      	ldr	r3, [r3, #0]
 8005462:	60fb      	str	r3, [r7, #12]
 8005464:	68fb      	ldr	r3, [r7, #12]
 8005466:	e853 3f00 	ldrex	r3, [r3]
 800546a:	60bb      	str	r3, [r7, #8]
 800546c:	68bb      	ldr	r3, [r7, #8]
 800546e:	f023 0310 	bic.w	r3, r3, #16
 8005472:	647b      	str	r3, [r7, #68]	@ 0x44
 8005474:	687b      	ldr	r3, [r7, #4]
 8005476:	681b      	ldr	r3, [r3, #0]
 8005478:	461a      	mov	r2, r3
 800547a:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800547c:	61bb      	str	r3, [r7, #24]
 800547e:	617a      	str	r2, [r7, #20]
 8005480:	6979      	ldr	r1, [r7, #20]
 8005482:	69ba      	ldr	r2, [r7, #24]
 8005484:	e841 2300 	strex	r3, r2, [r1]
 8005488:	613b      	str	r3, [r7, #16]
 800548a:	693b      	ldr	r3, [r7, #16]
 800548c:	2b00      	cmp	r3, #0
 800548e:	d1e6      	bne.n	800545e <UART_EndRxTransfer+0x76>
 8005490:	687b      	ldr	r3, [r7, #4]
 8005492:	2220      	movs	r2, #32
 8005494:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
 8005498:	687b      	ldr	r3, [r7, #4]
 800549a:	2200      	movs	r2, #0
 800549c:	661a      	str	r2, [r3, #96]	@ 0x60
 800549e:	687b      	ldr	r3, [r7, #4]
 80054a0:	2200      	movs	r2, #0
 80054a2:	669a      	str	r2, [r3, #104]	@ 0x68
 80054a4:	bf00      	nop
 80054a6:	3754      	adds	r7, #84	@ 0x54
 80054a8:	46bd      	mov	sp, r7
 80054aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80054ae:	4770      	bx	lr

080054b0 <vListInitialise>:
 80054b0:	b480      	push	{r7}
 80054b2:	b083      	sub	sp, #12
 80054b4:	af00      	add	r7, sp, #0
 80054b6:	6078      	str	r0, [r7, #4]
 80054b8:	687b      	ldr	r3, [r7, #4]
 80054ba:	f103 0208 	add.w	r2, r3, #8
 80054be:	687b      	ldr	r3, [r7, #4]
 80054c0:	605a      	str	r2, [r3, #4]
 80054c2:	687b      	ldr	r3, [r7, #4]
 80054c4:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 80054c8:	609a      	str	r2, [r3, #8]
 80054ca:	687b      	ldr	r3, [r7, #4]
 80054cc:	f103 0208 	add.w	r2, r3, #8
 80054d0:	687b      	ldr	r3, [r7, #4]
 80054d2:	60da      	str	r2, [r3, #12]
 80054d4:	687b      	ldr	r3, [r7, #4]
 80054d6:	f103 0208 	add.w	r2, r3, #8
 80054da:	687b      	ldr	r3, [r7, #4]
 80054dc:	611a      	str	r2, [r3, #16]
 80054de:	687b      	ldr	r3, [r7, #4]
 80054e0:	2200      	movs	r2, #0
 80054e2:	601a      	str	r2, [r3, #0]
 80054e4:	bf00      	nop
 80054e6:	370c      	adds	r7, #12
 80054e8:	46bd      	mov	sp, r7
 80054ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80054ee:	4770      	bx	lr

080054f0 <vListInitialiseItem>:
 80054f0:	b480      	push	{r7}
 80054f2:	b083      	sub	sp, #12
 80054f4:	af00      	add	r7, sp, #0
 80054f6:	6078      	str	r0, [r7, #4]
 80054f8:	687b      	ldr	r3, [r7, #4]
 80054fa:	2200      	movs	r2, #0
 80054fc:	611a      	str	r2, [r3, #16]
 80054fe:	bf00      	nop
 8005500:	370c      	adds	r7, #12
 8005502:	46bd      	mov	sp, r7
 8005504:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005508:	4770      	bx	lr

0800550a <vListInsertEnd>:
 800550a:	b480      	push	{r7}
 800550c:	b085      	sub	sp, #20
 800550e:	af00      	add	r7, sp, #0
 8005510:	6078      	str	r0, [r7, #4]
 8005512:	6039      	str	r1, [r7, #0]
 8005514:	687b      	ldr	r3, [r7, #4]
 8005516:	685b      	ldr	r3, [r3, #4]
 8005518:	60fb      	str	r3, [r7, #12]
 800551a:	683b      	ldr	r3, [r7, #0]
 800551c:	68fa      	ldr	r2, [r7, #12]
 800551e:	605a      	str	r2, [r3, #4]
 8005520:	68fb      	ldr	r3, [r7, #12]
 8005522:	689a      	ldr	r2, [r3, #8]
 8005524:	683b      	ldr	r3, [r7, #0]
 8005526:	609a      	str	r2, [r3, #8]
 8005528:	68fb      	ldr	r3, [r7, #12]
 800552a:	689b      	ldr	r3, [r3, #8]
 800552c:	683a      	ldr	r2, [r7, #0]
 800552e:	605a      	str	r2, [r3, #4]
 8005530:	68fb      	ldr	r3, [r7, #12]
 8005532:	683a      	ldr	r2, [r7, #0]
 8005534:	609a      	str	r2, [r3, #8]
 8005536:	683b      	ldr	r3, [r7, #0]
 8005538:	687a      	ldr	r2, [r7, #4]
 800553a:	611a      	str	r2, [r3, #16]
 800553c:	687b      	ldr	r3, [r7, #4]
 800553e:	681b      	ldr	r3, [r3, #0]
 8005540:	1c5a      	adds	r2, r3, #1
 8005542:	687b      	ldr	r3, [r7, #4]
 8005544:	601a      	str	r2, [r3, #0]
 8005546:	bf00      	nop
 8005548:	3714      	adds	r7, #20
 800554a:	46bd      	mov	sp, r7
 800554c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005550:	4770      	bx	lr

08005552 <vListInsert>:
 8005552:	b480      	push	{r7}
 8005554:	b085      	sub	sp, #20
 8005556:	af00      	add	r7, sp, #0
 8005558:	6078      	str	r0, [r7, #4]
 800555a:	6039      	str	r1, [r7, #0]
 800555c:	683b      	ldr	r3, [r7, #0]
 800555e:	681b      	ldr	r3, [r3, #0]
 8005560:	60bb      	str	r3, [r7, #8]
 8005562:	68bb      	ldr	r3, [r7, #8]
 8005564:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005568:	d103      	bne.n	8005572 <vListInsert+0x20>
 800556a:	687b      	ldr	r3, [r7, #4]
 800556c:	691b      	ldr	r3, [r3, #16]
 800556e:	60fb      	str	r3, [r7, #12]
 8005570:	e00c      	b.n	800558c <vListInsert+0x3a>
 8005572:	687b      	ldr	r3, [r7, #4]
 8005574:	3308      	adds	r3, #8
 8005576:	60fb      	str	r3, [r7, #12]
 8005578:	e002      	b.n	8005580 <vListInsert+0x2e>
 800557a:	68fb      	ldr	r3, [r7, #12]
 800557c:	685b      	ldr	r3, [r3, #4]
 800557e:	60fb      	str	r3, [r7, #12]
 8005580:	68fb      	ldr	r3, [r7, #12]
 8005582:	685b      	ldr	r3, [r3, #4]
 8005584:	681b      	ldr	r3, [r3, #0]
 8005586:	68ba      	ldr	r2, [r7, #8]
 8005588:	429a      	cmp	r2, r3
 800558a:	d2f6      	bcs.n	800557a <vListInsert+0x28>
 800558c:	68fb      	ldr	r3, [r7, #12]
 800558e:	685a      	ldr	r2, [r3, #4]
 8005590:	683b      	ldr	r3, [r7, #0]
 8005592:	605a      	str	r2, [r3, #4]
 8005594:	683b      	ldr	r3, [r7, #0]
 8005596:	685b      	ldr	r3, [r3, #4]
 8005598:	683a      	ldr	r2, [r7, #0]
 800559a:	609a      	str	r2, [r3, #8]
 800559c:	683b      	ldr	r3, [r7, #0]
 800559e:	68fa      	ldr	r2, [r7, #12]
 80055a0:	609a      	str	r2, [r3, #8]
 80055a2:	68fb      	ldr	r3, [r7, #12]
 80055a4:	683a      	ldr	r2, [r7, #0]
 80055a6:	605a      	str	r2, [r3, #4]
 80055a8:	683b      	ldr	r3, [r7, #0]
 80055aa:	687a      	ldr	r2, [r7, #4]
 80055ac:	611a      	str	r2, [r3, #16]
 80055ae:	687b      	ldr	r3, [r7, #4]
 80055b0:	681b      	ldr	r3, [r3, #0]
 80055b2:	1c5a      	adds	r2, r3, #1
 80055b4:	687b      	ldr	r3, [r7, #4]
 80055b6:	601a      	str	r2, [r3, #0]
 80055b8:	bf00      	nop
 80055ba:	3714      	adds	r7, #20
 80055bc:	46bd      	mov	sp, r7
 80055be:	f85d 7b04 	ldr.w	r7, [sp], #4
 80055c2:	4770      	bx	lr

080055c4 <uxListRemove>:
 80055c4:	b480      	push	{r7}
 80055c6:	b085      	sub	sp, #20
 80055c8:	af00      	add	r7, sp, #0
 80055ca:	6078      	str	r0, [r7, #4]
 80055cc:	687b      	ldr	r3, [r7, #4]
 80055ce:	691b      	ldr	r3, [r3, #16]
 80055d0:	60fb      	str	r3, [r7, #12]
 80055d2:	687b      	ldr	r3, [r7, #4]
 80055d4:	685b      	ldr	r3, [r3, #4]
 80055d6:	687a      	ldr	r2, [r7, #4]
 80055d8:	6892      	ldr	r2, [r2, #8]
 80055da:	609a      	str	r2, [r3, #8]
 80055dc:	687b      	ldr	r3, [r7, #4]
 80055de:	689b      	ldr	r3, [r3, #8]
 80055e0:	687a      	ldr	r2, [r7, #4]
 80055e2:	6852      	ldr	r2, [r2, #4]
 80055e4:	605a      	str	r2, [r3, #4]
 80055e6:	68fb      	ldr	r3, [r7, #12]
 80055e8:	685b      	ldr	r3, [r3, #4]
 80055ea:	687a      	ldr	r2, [r7, #4]
 80055ec:	429a      	cmp	r2, r3
 80055ee:	d103      	bne.n	80055f8 <uxListRemove+0x34>
 80055f0:	687b      	ldr	r3, [r7, #4]
 80055f2:	689a      	ldr	r2, [r3, #8]
 80055f4:	68fb      	ldr	r3, [r7, #12]
 80055f6:	605a      	str	r2, [r3, #4]
 80055f8:	687b      	ldr	r3, [r7, #4]
 80055fa:	2200      	movs	r2, #0
 80055fc:	611a      	str	r2, [r3, #16]
 80055fe:	68fb      	ldr	r3, [r7, #12]
 8005600:	681b      	ldr	r3, [r3, #0]
 8005602:	1e5a      	subs	r2, r3, #1
 8005604:	68fb      	ldr	r3, [r7, #12]
 8005606:	601a      	str	r2, [r3, #0]
 8005608:	68fb      	ldr	r3, [r7, #12]
 800560a:	681b      	ldr	r3, [r3, #0]
 800560c:	4618      	mov	r0, r3
 800560e:	3714      	adds	r7, #20
 8005610:	46bd      	mov	sp, r7
 8005612:	f85d 7b04 	ldr.w	r7, [sp], #4
 8005616:	4770      	bx	lr

08005618 <xQueueGenericReset>:
 8005618:	b580      	push	{r7, lr}
 800561a:	b084      	sub	sp, #16
 800561c:	af00      	add	r7, sp, #0
 800561e:	6078      	str	r0, [r7, #4]
 8005620:	6039      	str	r1, [r7, #0]
 8005622:	687b      	ldr	r3, [r7, #4]
 8005624:	60fb      	str	r3, [r7, #12]
 8005626:	68fb      	ldr	r3, [r7, #12]
 8005628:	2b00      	cmp	r3, #0
 800562a:	d10d      	bne.n	8005648 <xQueueGenericReset+0x30>
 800562c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005630:	b672      	cpsid	i
 8005632:	f383 8811 	msr	BASEPRI, r3
 8005636:	f3bf 8f6f 	isb	sy
 800563a:	f3bf 8f4f 	dsb	sy
 800563e:	b662      	cpsie	i
 8005640:	60bb      	str	r3, [r7, #8]
 8005642:	bf00      	nop
 8005644:	bf00      	nop
 8005646:	e7fd      	b.n	8005644 <xQueueGenericReset+0x2c>
 8005648:	f003 fbc0 	bl	8008dcc <vPortEnterCritical>
 800564c:	68fb      	ldr	r3, [r7, #12]
 800564e:	681a      	ldr	r2, [r3, #0]
 8005650:	68fb      	ldr	r3, [r7, #12]
 8005652:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005654:	68f9      	ldr	r1, [r7, #12]
 8005656:	6c09      	ldr	r1, [r1, #64]	@ 0x40
 8005658:	fb01 f303 	mul.w	r3, r1, r3
 800565c:	441a      	add	r2, r3
 800565e:	68fb      	ldr	r3, [r7, #12]
 8005660:	609a      	str	r2, [r3, #8]
 8005662:	68fb      	ldr	r3, [r7, #12]
 8005664:	2200      	movs	r2, #0
 8005666:	639a      	str	r2, [r3, #56]	@ 0x38
 8005668:	68fb      	ldr	r3, [r7, #12]
 800566a:	681a      	ldr	r2, [r3, #0]
 800566c:	68fb      	ldr	r3, [r7, #12]
 800566e:	605a      	str	r2, [r3, #4]
 8005670:	68fb      	ldr	r3, [r7, #12]
 8005672:	681a      	ldr	r2, [r3, #0]
 8005674:	68fb      	ldr	r3, [r7, #12]
 8005676:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005678:	3b01      	subs	r3, #1
 800567a:	68f9      	ldr	r1, [r7, #12]
 800567c:	6c09      	ldr	r1, [r1, #64]	@ 0x40
 800567e:	fb01 f303 	mul.w	r3, r1, r3
 8005682:	441a      	add	r2, r3
 8005684:	68fb      	ldr	r3, [r7, #12]
 8005686:	60da      	str	r2, [r3, #12]
 8005688:	68fb      	ldr	r3, [r7, #12]
 800568a:	22ff      	movs	r2, #255	@ 0xff
 800568c:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8005690:	68fb      	ldr	r3, [r7, #12]
 8005692:	22ff      	movs	r2, #255	@ 0xff
 8005694:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8005698:	683b      	ldr	r3, [r7, #0]
 800569a:	2b00      	cmp	r3, #0
 800569c:	d114      	bne.n	80056c8 <xQueueGenericReset+0xb0>
 800569e:	68fb      	ldr	r3, [r7, #12]
 80056a0:	691b      	ldr	r3, [r3, #16]
 80056a2:	2b00      	cmp	r3, #0
 80056a4:	d01a      	beq.n	80056dc <xQueueGenericReset+0xc4>
 80056a6:	68fb      	ldr	r3, [r7, #12]
 80056a8:	3310      	adds	r3, #16
 80056aa:	4618      	mov	r0, r3
 80056ac:	f001 fcbc 	bl	8007028 <xTaskRemoveFromEventList>
 80056b0:	4603      	mov	r3, r0
 80056b2:	2b00      	cmp	r3, #0
 80056b4:	d012      	beq.n	80056dc <xQueueGenericReset+0xc4>
 80056b6:	4b0d      	ldr	r3, [pc, #52]	@ (80056ec <xQueueGenericReset+0xd4>)
 80056b8:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80056bc:	601a      	str	r2, [r3, #0]
 80056be:	f3bf 8f4f 	dsb	sy
 80056c2:	f3bf 8f6f 	isb	sy
 80056c6:	e009      	b.n	80056dc <xQueueGenericReset+0xc4>
 80056c8:	68fb      	ldr	r3, [r7, #12]
 80056ca:	3310      	adds	r3, #16
 80056cc:	4618      	mov	r0, r3
 80056ce:	f7ff feef 	bl	80054b0 <vListInitialise>
 80056d2:	68fb      	ldr	r3, [r7, #12]
 80056d4:	3324      	adds	r3, #36	@ 0x24
 80056d6:	4618      	mov	r0, r3
 80056d8:	f7ff feea 	bl	80054b0 <vListInitialise>
 80056dc:	f003 fbac 	bl	8008e38 <vPortExitCritical>
 80056e0:	2301      	movs	r3, #1
 80056e2:	4618      	mov	r0, r3
 80056e4:	3710      	adds	r7, #16
 80056e6:	46bd      	mov	sp, r7
 80056e8:	bd80      	pop	{r7, pc}
 80056ea:	bf00      	nop
 80056ec:	e000ed04 	.word	0xe000ed04

080056f0 <xQueueGenericCreateStatic>:
 80056f0:	b580      	push	{r7, lr}
 80056f2:	b08e      	sub	sp, #56	@ 0x38
 80056f4:	af02      	add	r7, sp, #8
 80056f6:	60f8      	str	r0, [r7, #12]
 80056f8:	60b9      	str	r1, [r7, #8]
 80056fa:	607a      	str	r2, [r7, #4]
 80056fc:	603b      	str	r3, [r7, #0]
 80056fe:	68fb      	ldr	r3, [r7, #12]
 8005700:	2b00      	cmp	r3, #0
 8005702:	d10d      	bne.n	8005720 <xQueueGenericCreateStatic+0x30>
 8005704:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005708:	b672      	cpsid	i
 800570a:	f383 8811 	msr	BASEPRI, r3
 800570e:	f3bf 8f6f 	isb	sy
 8005712:	f3bf 8f4f 	dsb	sy
 8005716:	b662      	cpsie	i
 8005718:	62bb      	str	r3, [r7, #40]	@ 0x28
 800571a:	bf00      	nop
 800571c:	bf00      	nop
 800571e:	e7fd      	b.n	800571c <xQueueGenericCreateStatic+0x2c>
 8005720:	683b      	ldr	r3, [r7, #0]
 8005722:	2b00      	cmp	r3, #0
 8005724:	d10d      	bne.n	8005742 <xQueueGenericCreateStatic+0x52>
 8005726:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800572a:	b672      	cpsid	i
 800572c:	f383 8811 	msr	BASEPRI, r3
 8005730:	f3bf 8f6f 	isb	sy
 8005734:	f3bf 8f4f 	dsb	sy
 8005738:	b662      	cpsie	i
 800573a:	627b      	str	r3, [r7, #36]	@ 0x24
 800573c:	bf00      	nop
 800573e:	bf00      	nop
 8005740:	e7fd      	b.n	800573e <xQueueGenericCreateStatic+0x4e>
 8005742:	687b      	ldr	r3, [r7, #4]
 8005744:	2b00      	cmp	r3, #0
 8005746:	d002      	beq.n	800574e <xQueueGenericCreateStatic+0x5e>
 8005748:	68bb      	ldr	r3, [r7, #8]
 800574a:	2b00      	cmp	r3, #0
 800574c:	d001      	beq.n	8005752 <xQueueGenericCreateStatic+0x62>
 800574e:	2301      	movs	r3, #1
 8005750:	e000      	b.n	8005754 <xQueueGenericCreateStatic+0x64>
 8005752:	2300      	movs	r3, #0
 8005754:	2b00      	cmp	r3, #0
 8005756:	d10d      	bne.n	8005774 <xQueueGenericCreateStatic+0x84>
 8005758:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800575c:	b672      	cpsid	i
 800575e:	f383 8811 	msr	BASEPRI, r3
 8005762:	f3bf 8f6f 	isb	sy
 8005766:	f3bf 8f4f 	dsb	sy
 800576a:	b662      	cpsie	i
 800576c:	623b      	str	r3, [r7, #32]
 800576e:	bf00      	nop
 8005770:	bf00      	nop
 8005772:	e7fd      	b.n	8005770 <xQueueGenericCreateStatic+0x80>
 8005774:	687b      	ldr	r3, [r7, #4]
 8005776:	2b00      	cmp	r3, #0
 8005778:	d102      	bne.n	8005780 <xQueueGenericCreateStatic+0x90>
 800577a:	68bb      	ldr	r3, [r7, #8]
 800577c:	2b00      	cmp	r3, #0
 800577e:	d101      	bne.n	8005784 <xQueueGenericCreateStatic+0x94>
 8005780:	2301      	movs	r3, #1
 8005782:	e000      	b.n	8005786 <xQueueGenericCreateStatic+0x96>
 8005784:	2300      	movs	r3, #0
 8005786:	2b00      	cmp	r3, #0
 8005788:	d10d      	bne.n	80057a6 <xQueueGenericCreateStatic+0xb6>
 800578a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800578e:	b672      	cpsid	i
 8005790:	f383 8811 	msr	BASEPRI, r3
 8005794:	f3bf 8f6f 	isb	sy
 8005798:	f3bf 8f4f 	dsb	sy
 800579c:	b662      	cpsie	i
 800579e:	61fb      	str	r3, [r7, #28]
 80057a0:	bf00      	nop
 80057a2:	bf00      	nop
 80057a4:	e7fd      	b.n	80057a2 <xQueueGenericCreateStatic+0xb2>
 80057a6:	2350      	movs	r3, #80	@ 0x50
 80057a8:	617b      	str	r3, [r7, #20]
 80057aa:	697b      	ldr	r3, [r7, #20]
 80057ac:	2b50      	cmp	r3, #80	@ 0x50
 80057ae:	d00d      	beq.n	80057cc <xQueueGenericCreateStatic+0xdc>
 80057b0:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80057b4:	b672      	cpsid	i
 80057b6:	f383 8811 	msr	BASEPRI, r3
 80057ba:	f3bf 8f6f 	isb	sy
 80057be:	f3bf 8f4f 	dsb	sy
 80057c2:	b662      	cpsie	i
 80057c4:	61bb      	str	r3, [r7, #24]
 80057c6:	bf00      	nop
 80057c8:	bf00      	nop
 80057ca:	e7fd      	b.n	80057c8 <xQueueGenericCreateStatic+0xd8>
 80057cc:	697b      	ldr	r3, [r7, #20]
 80057ce:	683b      	ldr	r3, [r7, #0]
 80057d0:	62fb      	str	r3, [r7, #44]	@ 0x2c
 80057d2:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80057d4:	2b00      	cmp	r3, #0
 80057d6:	d00d      	beq.n	80057f4 <xQueueGenericCreateStatic+0x104>
 80057d8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80057da:	2201      	movs	r2, #1
 80057dc:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 80057e0:	f897 2038 	ldrb.w	r2, [r7, #56]	@ 0x38
 80057e4:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80057e6:	9300      	str	r3, [sp, #0]
 80057e8:	4613      	mov	r3, r2
 80057ea:	687a      	ldr	r2, [r7, #4]
 80057ec:	68b9      	ldr	r1, [r7, #8]
 80057ee:	68f8      	ldr	r0, [r7, #12]
 80057f0:	f000 f848 	bl	8005884 <prvInitialiseNewQueue>
 80057f4:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80057f6:	4618      	mov	r0, r3
 80057f8:	3730      	adds	r7, #48	@ 0x30
 80057fa:	46bd      	mov	sp, r7
 80057fc:	bd80      	pop	{r7, pc}

080057fe <xQueueGenericCreate>:
 80057fe:	b580      	push	{r7, lr}
 8005800:	b08a      	sub	sp, #40	@ 0x28
 8005802:	af02      	add	r7, sp, #8
 8005804:	60f8      	str	r0, [r7, #12]
 8005806:	60b9      	str	r1, [r7, #8]
 8005808:	4613      	mov	r3, r2
 800580a:	71fb      	strb	r3, [r7, #7]
 800580c:	68fb      	ldr	r3, [r7, #12]
 800580e:	2b00      	cmp	r3, #0
 8005810:	d10d      	bne.n	800582e <xQueueGenericCreate+0x30>
 8005812:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005816:	b672      	cpsid	i
 8005818:	f383 8811 	msr	BASEPRI, r3
 800581c:	f3bf 8f6f 	isb	sy
 8005820:	f3bf 8f4f 	dsb	sy
 8005824:	b662      	cpsie	i
 8005826:	613b      	str	r3, [r7, #16]
 8005828:	bf00      	nop
 800582a:	bf00      	nop
 800582c:	e7fd      	b.n	800582a <xQueueGenericCreate+0x2c>
 800582e:	68bb      	ldr	r3, [r7, #8]
 8005830:	2b00      	cmp	r3, #0
 8005832:	d102      	bne.n	800583a <xQueueGenericCreate+0x3c>
 8005834:	2300      	movs	r3, #0
 8005836:	61fb      	str	r3, [r7, #28]
 8005838:	e004      	b.n	8005844 <xQueueGenericCreate+0x46>
 800583a:	68fb      	ldr	r3, [r7, #12]
 800583c:	68ba      	ldr	r2, [r7, #8]
 800583e:	fb02 f303 	mul.w	r3, r2, r3
 8005842:	61fb      	str	r3, [r7, #28]
 8005844:	69fb      	ldr	r3, [r7, #28]
 8005846:	3350      	adds	r3, #80	@ 0x50
 8005848:	4618      	mov	r0, r3
 800584a:	f002 ffc7 	bl	80087dc <pvPortMalloc>
 800584e:	61b8      	str	r0, [r7, #24]
 8005850:	69bb      	ldr	r3, [r7, #24]
 8005852:	2b00      	cmp	r3, #0
 8005854:	d011      	beq.n	800587a <xQueueGenericCreate+0x7c>
 8005856:	69bb      	ldr	r3, [r7, #24]
 8005858:	617b      	str	r3, [r7, #20]
 800585a:	697b      	ldr	r3, [r7, #20]
 800585c:	3350      	adds	r3, #80	@ 0x50
 800585e:	617b      	str	r3, [r7, #20]
 8005860:	69bb      	ldr	r3, [r7, #24]
 8005862:	2200      	movs	r2, #0
 8005864:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 8005868:	79fa      	ldrb	r2, [r7, #7]
 800586a:	69bb      	ldr	r3, [r7, #24]
 800586c:	9300      	str	r3, [sp, #0]
 800586e:	4613      	mov	r3, r2
 8005870:	697a      	ldr	r2, [r7, #20]
 8005872:	68b9      	ldr	r1, [r7, #8]
 8005874:	68f8      	ldr	r0, [r7, #12]
 8005876:	f000 f805 	bl	8005884 <prvInitialiseNewQueue>
 800587a:	69bb      	ldr	r3, [r7, #24]
 800587c:	4618      	mov	r0, r3
 800587e:	3720      	adds	r7, #32
 8005880:	46bd      	mov	sp, r7
 8005882:	bd80      	pop	{r7, pc}

08005884 <prvInitialiseNewQueue>:
 8005884:	b580      	push	{r7, lr}
 8005886:	b084      	sub	sp, #16
 8005888:	af00      	add	r7, sp, #0
 800588a:	60f8      	str	r0, [r7, #12]
 800588c:	60b9      	str	r1, [r7, #8]
 800588e:	607a      	str	r2, [r7, #4]
 8005890:	70fb      	strb	r3, [r7, #3]
 8005892:	68bb      	ldr	r3, [r7, #8]
 8005894:	2b00      	cmp	r3, #0
 8005896:	d103      	bne.n	80058a0 <prvInitialiseNewQueue+0x1c>
 8005898:	69bb      	ldr	r3, [r7, #24]
 800589a:	69ba      	ldr	r2, [r7, #24]
 800589c:	601a      	str	r2, [r3, #0]
 800589e:	e002      	b.n	80058a6 <prvInitialiseNewQueue+0x22>
 80058a0:	69bb      	ldr	r3, [r7, #24]
 80058a2:	687a      	ldr	r2, [r7, #4]
 80058a4:	601a      	str	r2, [r3, #0]
 80058a6:	69bb      	ldr	r3, [r7, #24]
 80058a8:	68fa      	ldr	r2, [r7, #12]
 80058aa:	63da      	str	r2, [r3, #60]	@ 0x3c
 80058ac:	69bb      	ldr	r3, [r7, #24]
 80058ae:	68ba      	ldr	r2, [r7, #8]
 80058b0:	641a      	str	r2, [r3, #64]	@ 0x40
 80058b2:	2101      	movs	r1, #1
 80058b4:	69b8      	ldr	r0, [r7, #24]
 80058b6:	f7ff feaf 	bl	8005618 <xQueueGenericReset>
 80058ba:	69bb      	ldr	r3, [r7, #24]
 80058bc:	78fa      	ldrb	r2, [r7, #3]
 80058be:	f883 204c 	strb.w	r2, [r3, #76]	@ 0x4c
 80058c2:	bf00      	nop
 80058c4:	3710      	adds	r7, #16
 80058c6:	46bd      	mov	sp, r7
 80058c8:	bd80      	pop	{r7, pc}

080058ca <xQueueCreateCountingSemaphoreStatic>:
 80058ca:	b580      	push	{r7, lr}
 80058cc:	b08a      	sub	sp, #40	@ 0x28
 80058ce:	af02      	add	r7, sp, #8
 80058d0:	60f8      	str	r0, [r7, #12]
 80058d2:	60b9      	str	r1, [r7, #8]
 80058d4:	607a      	str	r2, [r7, #4]
 80058d6:	68fb      	ldr	r3, [r7, #12]
 80058d8:	2b00      	cmp	r3, #0
 80058da:	d10d      	bne.n	80058f8 <xQueueCreateCountingSemaphoreStatic+0x2e>
 80058dc:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80058e0:	b672      	cpsid	i
 80058e2:	f383 8811 	msr	BASEPRI, r3
 80058e6:	f3bf 8f6f 	isb	sy
 80058ea:	f3bf 8f4f 	dsb	sy
 80058ee:	b662      	cpsie	i
 80058f0:	61bb      	str	r3, [r7, #24]
 80058f2:	bf00      	nop
 80058f4:	bf00      	nop
 80058f6:	e7fd      	b.n	80058f4 <xQueueCreateCountingSemaphoreStatic+0x2a>
 80058f8:	68ba      	ldr	r2, [r7, #8]
 80058fa:	68fb      	ldr	r3, [r7, #12]
 80058fc:	429a      	cmp	r2, r3
 80058fe:	d90d      	bls.n	800591c <xQueueCreateCountingSemaphoreStatic+0x52>
 8005900:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005904:	b672      	cpsid	i
 8005906:	f383 8811 	msr	BASEPRI, r3
 800590a:	f3bf 8f6f 	isb	sy
 800590e:	f3bf 8f4f 	dsb	sy
 8005912:	b662      	cpsie	i
 8005914:	617b      	str	r3, [r7, #20]
 8005916:	bf00      	nop
 8005918:	bf00      	nop
 800591a:	e7fd      	b.n	8005918 <xQueueCreateCountingSemaphoreStatic+0x4e>
 800591c:	2302      	movs	r3, #2
 800591e:	9300      	str	r3, [sp, #0]
 8005920:	687b      	ldr	r3, [r7, #4]
 8005922:	2200      	movs	r2, #0
 8005924:	2100      	movs	r1, #0
 8005926:	68f8      	ldr	r0, [r7, #12]
 8005928:	f7ff fee2 	bl	80056f0 <xQueueGenericCreateStatic>
 800592c:	61f8      	str	r0, [r7, #28]
 800592e:	69fb      	ldr	r3, [r7, #28]
 8005930:	2b00      	cmp	r3, #0
 8005932:	d002      	beq.n	800593a <xQueueCreateCountingSemaphoreStatic+0x70>
 8005934:	69fb      	ldr	r3, [r7, #28]
 8005936:	68ba      	ldr	r2, [r7, #8]
 8005938:	639a      	str	r2, [r3, #56]	@ 0x38
 800593a:	69fb      	ldr	r3, [r7, #28]
 800593c:	4618      	mov	r0, r3
 800593e:	3720      	adds	r7, #32
 8005940:	46bd      	mov	sp, r7
 8005942:	bd80      	pop	{r7, pc}

08005944 <xQueueCreateCountingSemaphore>:
 8005944:	b580      	push	{r7, lr}
 8005946:	b086      	sub	sp, #24
 8005948:	af00      	add	r7, sp, #0
 800594a:	6078      	str	r0, [r7, #4]
 800594c:	6039      	str	r1, [r7, #0]
 800594e:	687b      	ldr	r3, [r7, #4]
 8005950:	2b00      	cmp	r3, #0
 8005952:	d10d      	bne.n	8005970 <xQueueCreateCountingSemaphore+0x2c>
 8005954:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005958:	b672      	cpsid	i
 800595a:	f383 8811 	msr	BASEPRI, r3
 800595e:	f3bf 8f6f 	isb	sy
 8005962:	f3bf 8f4f 	dsb	sy
 8005966:	b662      	cpsie	i
 8005968:	613b      	str	r3, [r7, #16]
 800596a:	bf00      	nop
 800596c:	bf00      	nop
 800596e:	e7fd      	b.n	800596c <xQueueCreateCountingSemaphore+0x28>
 8005970:	683a      	ldr	r2, [r7, #0]
 8005972:	687b      	ldr	r3, [r7, #4]
 8005974:	429a      	cmp	r2, r3
 8005976:	d90d      	bls.n	8005994 <xQueueCreateCountingSemaphore+0x50>
 8005978:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800597c:	b672      	cpsid	i
 800597e:	f383 8811 	msr	BASEPRI, r3
 8005982:	f3bf 8f6f 	isb	sy
 8005986:	f3bf 8f4f 	dsb	sy
 800598a:	b662      	cpsie	i
 800598c:	60fb      	str	r3, [r7, #12]
 800598e:	bf00      	nop
 8005990:	bf00      	nop
 8005992:	e7fd      	b.n	8005990 <xQueueCreateCountingSemaphore+0x4c>
 8005994:	2202      	movs	r2, #2
 8005996:	2100      	movs	r1, #0
 8005998:	6878      	ldr	r0, [r7, #4]
 800599a:	f7ff ff30 	bl	80057fe <xQueueGenericCreate>
 800599e:	6178      	str	r0, [r7, #20]
 80059a0:	697b      	ldr	r3, [r7, #20]
 80059a2:	2b00      	cmp	r3, #0
 80059a4:	d002      	beq.n	80059ac <xQueueCreateCountingSemaphore+0x68>
 80059a6:	697b      	ldr	r3, [r7, #20]
 80059a8:	683a      	ldr	r2, [r7, #0]
 80059aa:	639a      	str	r2, [r3, #56]	@ 0x38
 80059ac:	697b      	ldr	r3, [r7, #20]
 80059ae:	4618      	mov	r0, r3
 80059b0:	3718      	adds	r7, #24
 80059b2:	46bd      	mov	sp, r7
 80059b4:	bd80      	pop	{r7, pc}
	...

080059b8 <xQueueGenericSend>:
 80059b8:	b580      	push	{r7, lr}
 80059ba:	b08e      	sub	sp, #56	@ 0x38
 80059bc:	af00      	add	r7, sp, #0
 80059be:	60f8      	str	r0, [r7, #12]
 80059c0:	60b9      	str	r1, [r7, #8]
 80059c2:	607a      	str	r2, [r7, #4]
 80059c4:	603b      	str	r3, [r7, #0]
 80059c6:	2300      	movs	r3, #0
 80059c8:	637b      	str	r3, [r7, #52]	@ 0x34
 80059ca:	68fb      	ldr	r3, [r7, #12]
 80059cc:	633b      	str	r3, [r7, #48]	@ 0x30
 80059ce:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80059d0:	2b00      	cmp	r3, #0
 80059d2:	d10d      	bne.n	80059f0 <xQueueGenericSend+0x38>
 80059d4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80059d8:	b672      	cpsid	i
 80059da:	f383 8811 	msr	BASEPRI, r3
 80059de:	f3bf 8f6f 	isb	sy
 80059e2:	f3bf 8f4f 	dsb	sy
 80059e6:	b662      	cpsie	i
 80059e8:	62bb      	str	r3, [r7, #40]	@ 0x28
 80059ea:	bf00      	nop
 80059ec:	bf00      	nop
 80059ee:	e7fd      	b.n	80059ec <xQueueGenericSend+0x34>
 80059f0:	68bb      	ldr	r3, [r7, #8]
 80059f2:	2b00      	cmp	r3, #0
 80059f4:	d103      	bne.n	80059fe <xQueueGenericSend+0x46>
 80059f6:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80059f8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80059fa:	2b00      	cmp	r3, #0
 80059fc:	d101      	bne.n	8005a02 <xQueueGenericSend+0x4a>
 80059fe:	2301      	movs	r3, #1
 8005a00:	e000      	b.n	8005a04 <xQueueGenericSend+0x4c>
 8005a02:	2300      	movs	r3, #0
 8005a04:	2b00      	cmp	r3, #0
 8005a06:	d10d      	bne.n	8005a24 <xQueueGenericSend+0x6c>
 8005a08:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005a0c:	b672      	cpsid	i
 8005a0e:	f383 8811 	msr	BASEPRI, r3
 8005a12:	f3bf 8f6f 	isb	sy
 8005a16:	f3bf 8f4f 	dsb	sy
 8005a1a:	b662      	cpsie	i
 8005a1c:	627b      	str	r3, [r7, #36]	@ 0x24
 8005a1e:	bf00      	nop
 8005a20:	bf00      	nop
 8005a22:	e7fd      	b.n	8005a20 <xQueueGenericSend+0x68>
 8005a24:	683b      	ldr	r3, [r7, #0]
 8005a26:	2b02      	cmp	r3, #2
 8005a28:	d103      	bne.n	8005a32 <xQueueGenericSend+0x7a>
 8005a2a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005a2c:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005a2e:	2b01      	cmp	r3, #1
 8005a30:	d101      	bne.n	8005a36 <xQueueGenericSend+0x7e>
 8005a32:	2301      	movs	r3, #1
 8005a34:	e000      	b.n	8005a38 <xQueueGenericSend+0x80>
 8005a36:	2300      	movs	r3, #0
 8005a38:	2b00      	cmp	r3, #0
 8005a3a:	d10d      	bne.n	8005a58 <xQueueGenericSend+0xa0>
 8005a3c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005a40:	b672      	cpsid	i
 8005a42:	f383 8811 	msr	BASEPRI, r3
 8005a46:	f3bf 8f6f 	isb	sy
 8005a4a:	f3bf 8f4f 	dsb	sy
 8005a4e:	b662      	cpsie	i
 8005a50:	623b      	str	r3, [r7, #32]
 8005a52:	bf00      	nop
 8005a54:	bf00      	nop
 8005a56:	e7fd      	b.n	8005a54 <xQueueGenericSend+0x9c>
 8005a58:	f001 fcae 	bl	80073b8 <xTaskGetSchedulerState>
 8005a5c:	4603      	mov	r3, r0
 8005a5e:	2b00      	cmp	r3, #0
 8005a60:	d102      	bne.n	8005a68 <xQueueGenericSend+0xb0>
 8005a62:	687b      	ldr	r3, [r7, #4]
 8005a64:	2b00      	cmp	r3, #0
 8005a66:	d101      	bne.n	8005a6c <xQueueGenericSend+0xb4>
 8005a68:	2301      	movs	r3, #1
 8005a6a:	e000      	b.n	8005a6e <xQueueGenericSend+0xb6>
 8005a6c:	2300      	movs	r3, #0
 8005a6e:	2b00      	cmp	r3, #0
 8005a70:	d10d      	bne.n	8005a8e <xQueueGenericSend+0xd6>
 8005a72:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005a76:	b672      	cpsid	i
 8005a78:	f383 8811 	msr	BASEPRI, r3
 8005a7c:	f3bf 8f6f 	isb	sy
 8005a80:	f3bf 8f4f 	dsb	sy
 8005a84:	b662      	cpsie	i
 8005a86:	61fb      	str	r3, [r7, #28]
 8005a88:	bf00      	nop
 8005a8a:	bf00      	nop
 8005a8c:	e7fd      	b.n	8005a8a <xQueueGenericSend+0xd2>
 8005a8e:	f003 f99d 	bl	8008dcc <vPortEnterCritical>
 8005a92:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005a94:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 8005a96:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005a98:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005a9a:	429a      	cmp	r2, r3
 8005a9c:	d302      	bcc.n	8005aa4 <xQueueGenericSend+0xec>
 8005a9e:	683b      	ldr	r3, [r7, #0]
 8005aa0:	2b02      	cmp	r3, #2
 8005aa2:	d129      	bne.n	8005af8 <xQueueGenericSend+0x140>
 8005aa4:	683a      	ldr	r2, [r7, #0]
 8005aa6:	68b9      	ldr	r1, [r7, #8]
 8005aa8:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005aaa:	f000 fc91 	bl	80063d0 <prvCopyDataToQueue>
 8005aae:	62f8      	str	r0, [r7, #44]	@ 0x2c
 8005ab0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005ab2:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8005ab4:	2b00      	cmp	r3, #0
 8005ab6:	d010      	beq.n	8005ada <xQueueGenericSend+0x122>
 8005ab8:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005aba:	3324      	adds	r3, #36	@ 0x24
 8005abc:	4618      	mov	r0, r3
 8005abe:	f001 fab3 	bl	8007028 <xTaskRemoveFromEventList>
 8005ac2:	4603      	mov	r3, r0
 8005ac4:	2b00      	cmp	r3, #0
 8005ac6:	d013      	beq.n	8005af0 <xQueueGenericSend+0x138>
 8005ac8:	4b3f      	ldr	r3, [pc, #252]	@ (8005bc8 <xQueueGenericSend+0x210>)
 8005aca:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8005ace:	601a      	str	r2, [r3, #0]
 8005ad0:	f3bf 8f4f 	dsb	sy
 8005ad4:	f3bf 8f6f 	isb	sy
 8005ad8:	e00a      	b.n	8005af0 <xQueueGenericSend+0x138>
 8005ada:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8005adc:	2b00      	cmp	r3, #0
 8005ade:	d007      	beq.n	8005af0 <xQueueGenericSend+0x138>
 8005ae0:	4b39      	ldr	r3, [pc, #228]	@ (8005bc8 <xQueueGenericSend+0x210>)
 8005ae2:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8005ae6:	601a      	str	r2, [r3, #0]
 8005ae8:	f3bf 8f4f 	dsb	sy
 8005aec:	f3bf 8f6f 	isb	sy
 8005af0:	f003 f9a2 	bl	8008e38 <vPortExitCritical>
 8005af4:	2301      	movs	r3, #1
 8005af6:	e063      	b.n	8005bc0 <xQueueGenericSend+0x208>
 8005af8:	687b      	ldr	r3, [r7, #4]
 8005afa:	2b00      	cmp	r3, #0
 8005afc:	d103      	bne.n	8005b06 <xQueueGenericSend+0x14e>
 8005afe:	f003 f99b 	bl	8008e38 <vPortExitCritical>
 8005b02:	2300      	movs	r3, #0
 8005b04:	e05c      	b.n	8005bc0 <xQueueGenericSend+0x208>
 8005b06:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8005b08:	2b00      	cmp	r3, #0
 8005b0a:	d106      	bne.n	8005b1a <xQueueGenericSend+0x162>
 8005b0c:	f107 0314 	add.w	r3, r7, #20
 8005b10:	4618      	mov	r0, r3
 8005b12:	f001 faef 	bl	80070f4 <vTaskInternalSetTimeOutState>
 8005b16:	2301      	movs	r3, #1
 8005b18:	637b      	str	r3, [r7, #52]	@ 0x34
 8005b1a:	f003 f98d 	bl	8008e38 <vPortExitCritical>
 8005b1e:	f001 f841 	bl	8006ba4 <vTaskSuspendAll>
 8005b22:	f003 f953 	bl	8008dcc <vPortEnterCritical>
 8005b26:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005b28:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 8005b2c:	b25b      	sxtb	r3, r3
 8005b2e:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005b32:	d103      	bne.n	8005b3c <xQueueGenericSend+0x184>
 8005b34:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005b36:	2200      	movs	r2, #0
 8005b38:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8005b3c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005b3e:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 8005b42:	b25b      	sxtb	r3, r3
 8005b44:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005b48:	d103      	bne.n	8005b52 <xQueueGenericSend+0x19a>
 8005b4a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005b4c:	2200      	movs	r2, #0
 8005b4e:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8005b52:	f003 f971 	bl	8008e38 <vPortExitCritical>
 8005b56:	1d3a      	adds	r2, r7, #4
 8005b58:	f107 0314 	add.w	r3, r7, #20
 8005b5c:	4611      	mov	r1, r2
 8005b5e:	4618      	mov	r0, r3
 8005b60:	f001 fade 	bl	8007120 <xTaskCheckForTimeOut>
 8005b64:	4603      	mov	r3, r0
 8005b66:	2b00      	cmp	r3, #0
 8005b68:	d124      	bne.n	8005bb4 <xQueueGenericSend+0x1fc>
 8005b6a:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005b6c:	f000 fd28 	bl	80065c0 <prvIsQueueFull>
 8005b70:	4603      	mov	r3, r0
 8005b72:	2b00      	cmp	r3, #0
 8005b74:	d018      	beq.n	8005ba8 <xQueueGenericSend+0x1f0>
 8005b76:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005b78:	3310      	adds	r3, #16
 8005b7a:	687a      	ldr	r2, [r7, #4]
 8005b7c:	4611      	mov	r1, r2
 8005b7e:	4618      	mov	r0, r3
 8005b80:	f001 f9fc 	bl	8006f7c <vTaskPlaceOnEventList>
 8005b84:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005b86:	f000 fcb3 	bl	80064f0 <prvUnlockQueue>
 8005b8a:	f001 f819 	bl	8006bc0 <xTaskResumeAll>
 8005b8e:	4603      	mov	r3, r0
 8005b90:	2b00      	cmp	r3, #0
 8005b92:	f47f af7c 	bne.w	8005a8e <xQueueGenericSend+0xd6>
 8005b96:	4b0c      	ldr	r3, [pc, #48]	@ (8005bc8 <xQueueGenericSend+0x210>)
 8005b98:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8005b9c:	601a      	str	r2, [r3, #0]
 8005b9e:	f3bf 8f4f 	dsb	sy
 8005ba2:	f3bf 8f6f 	isb	sy
 8005ba6:	e772      	b.n	8005a8e <xQueueGenericSend+0xd6>
 8005ba8:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005baa:	f000 fca1 	bl	80064f0 <prvUnlockQueue>
 8005bae:	f001 f807 	bl	8006bc0 <xTaskResumeAll>
 8005bb2:	e76c      	b.n	8005a8e <xQueueGenericSend+0xd6>
 8005bb4:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005bb6:	f000 fc9b 	bl	80064f0 <prvUnlockQueue>
 8005bba:	f001 f801 	bl	8006bc0 <xTaskResumeAll>
 8005bbe:	2300      	movs	r3, #0
 8005bc0:	4618      	mov	r0, r3
 8005bc2:	3738      	adds	r7, #56	@ 0x38
 8005bc4:	46bd      	mov	sp, r7
 8005bc6:	bd80      	pop	{r7, pc}
 8005bc8:	e000ed04 	.word	0xe000ed04

08005bcc <xQueueGenericSendFromISR>:
 8005bcc:	b580      	push	{r7, lr}
 8005bce:	b08e      	sub	sp, #56	@ 0x38
 8005bd0:	af00      	add	r7, sp, #0
 8005bd2:	60f8      	str	r0, [r7, #12]
 8005bd4:	60b9      	str	r1, [r7, #8]
 8005bd6:	607a      	str	r2, [r7, #4]
 8005bd8:	603b      	str	r3, [r7, #0]
 8005bda:	68fb      	ldr	r3, [r7, #12]
 8005bdc:	633b      	str	r3, [r7, #48]	@ 0x30
 8005bde:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005be0:	2b00      	cmp	r3, #0
 8005be2:	d10d      	bne.n	8005c00 <xQueueGenericSendFromISR+0x34>
 8005be4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005be8:	b672      	cpsid	i
 8005bea:	f383 8811 	msr	BASEPRI, r3
 8005bee:	f3bf 8f6f 	isb	sy
 8005bf2:	f3bf 8f4f 	dsb	sy
 8005bf6:	b662      	cpsie	i
 8005bf8:	627b      	str	r3, [r7, #36]	@ 0x24
 8005bfa:	bf00      	nop
 8005bfc:	bf00      	nop
 8005bfe:	e7fd      	b.n	8005bfc <xQueueGenericSendFromISR+0x30>
 8005c00:	68bb      	ldr	r3, [r7, #8]
 8005c02:	2b00      	cmp	r3, #0
 8005c04:	d103      	bne.n	8005c0e <xQueueGenericSendFromISR+0x42>
 8005c06:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005c08:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8005c0a:	2b00      	cmp	r3, #0
 8005c0c:	d101      	bne.n	8005c12 <xQueueGenericSendFromISR+0x46>
 8005c0e:	2301      	movs	r3, #1
 8005c10:	e000      	b.n	8005c14 <xQueueGenericSendFromISR+0x48>
 8005c12:	2300      	movs	r3, #0
 8005c14:	2b00      	cmp	r3, #0
 8005c16:	d10d      	bne.n	8005c34 <xQueueGenericSendFromISR+0x68>
 8005c18:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005c1c:	b672      	cpsid	i
 8005c1e:	f383 8811 	msr	BASEPRI, r3
 8005c22:	f3bf 8f6f 	isb	sy
 8005c26:	f3bf 8f4f 	dsb	sy
 8005c2a:	b662      	cpsie	i
 8005c2c:	623b      	str	r3, [r7, #32]
 8005c2e:	bf00      	nop
 8005c30:	bf00      	nop
 8005c32:	e7fd      	b.n	8005c30 <xQueueGenericSendFromISR+0x64>
 8005c34:	683b      	ldr	r3, [r7, #0]
 8005c36:	2b02      	cmp	r3, #2
 8005c38:	d103      	bne.n	8005c42 <xQueueGenericSendFromISR+0x76>
 8005c3a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005c3c:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005c3e:	2b01      	cmp	r3, #1
 8005c40:	d101      	bne.n	8005c46 <xQueueGenericSendFromISR+0x7a>
 8005c42:	2301      	movs	r3, #1
 8005c44:	e000      	b.n	8005c48 <xQueueGenericSendFromISR+0x7c>
 8005c46:	2300      	movs	r3, #0
 8005c48:	2b00      	cmp	r3, #0
 8005c4a:	d10d      	bne.n	8005c68 <xQueueGenericSendFromISR+0x9c>
 8005c4c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005c50:	b672      	cpsid	i
 8005c52:	f383 8811 	msr	BASEPRI, r3
 8005c56:	f3bf 8f6f 	isb	sy
 8005c5a:	f3bf 8f4f 	dsb	sy
 8005c5e:	b662      	cpsie	i
 8005c60:	61fb      	str	r3, [r7, #28]
 8005c62:	bf00      	nop
 8005c64:	bf00      	nop
 8005c66:	e7fd      	b.n	8005c64 <xQueueGenericSendFromISR+0x98>
 8005c68:	f003 f998 	bl	8008f9c <vPortValidateInterruptPriority>
 8005c6c:	f3ef 8211 	mrs	r2, BASEPRI
 8005c70:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005c74:	b672      	cpsid	i
 8005c76:	f383 8811 	msr	BASEPRI, r3
 8005c7a:	f3bf 8f6f 	isb	sy
 8005c7e:	f3bf 8f4f 	dsb	sy
 8005c82:	b662      	cpsie	i
 8005c84:	61ba      	str	r2, [r7, #24]
 8005c86:	617b      	str	r3, [r7, #20]
 8005c88:	69bb      	ldr	r3, [r7, #24]
 8005c8a:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8005c8c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005c8e:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 8005c90:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005c92:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005c94:	429a      	cmp	r2, r3
 8005c96:	d302      	bcc.n	8005c9e <xQueueGenericSendFromISR+0xd2>
 8005c98:	683b      	ldr	r3, [r7, #0]
 8005c9a:	2b02      	cmp	r3, #2
 8005c9c:	d12c      	bne.n	8005cf8 <xQueueGenericSendFromISR+0x12c>
 8005c9e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005ca0:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 8005ca4:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8005ca8:	683a      	ldr	r2, [r7, #0]
 8005caa:	68b9      	ldr	r1, [r7, #8]
 8005cac:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 8005cae:	f000 fb8f 	bl	80063d0 <prvCopyDataToQueue>
 8005cb2:	f997 302b 	ldrsb.w	r3, [r7, #43]	@ 0x2b
 8005cb6:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005cba:	d112      	bne.n	8005ce2 <xQueueGenericSendFromISR+0x116>
 8005cbc:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005cbe:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8005cc0:	2b00      	cmp	r3, #0
 8005cc2:	d016      	beq.n	8005cf2 <xQueueGenericSendFromISR+0x126>
 8005cc4:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005cc6:	3324      	adds	r3, #36	@ 0x24
 8005cc8:	4618      	mov	r0, r3
 8005cca:	f001 f9ad 	bl	8007028 <xTaskRemoveFromEventList>
 8005cce:	4603      	mov	r3, r0
 8005cd0:	2b00      	cmp	r3, #0
 8005cd2:	d00e      	beq.n	8005cf2 <xQueueGenericSendFromISR+0x126>
 8005cd4:	687b      	ldr	r3, [r7, #4]
 8005cd6:	2b00      	cmp	r3, #0
 8005cd8:	d00b      	beq.n	8005cf2 <xQueueGenericSendFromISR+0x126>
 8005cda:	687b      	ldr	r3, [r7, #4]
 8005cdc:	2201      	movs	r2, #1
 8005cde:	601a      	str	r2, [r3, #0]
 8005ce0:	e007      	b.n	8005cf2 <xQueueGenericSendFromISR+0x126>
 8005ce2:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8005ce6:	3301      	adds	r3, #1
 8005ce8:	b2db      	uxtb	r3, r3
 8005cea:	b25a      	sxtb	r2, r3
 8005cec:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005cee:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8005cf2:	2301      	movs	r3, #1
 8005cf4:	637b      	str	r3, [r7, #52]	@ 0x34
 8005cf6:	e001      	b.n	8005cfc <xQueueGenericSendFromISR+0x130>
 8005cf8:	2300      	movs	r3, #0
 8005cfa:	637b      	str	r3, [r7, #52]	@ 0x34
 8005cfc:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8005cfe:	613b      	str	r3, [r7, #16]
 8005d00:	693b      	ldr	r3, [r7, #16]
 8005d02:	f383 8811 	msr	BASEPRI, r3
 8005d06:	bf00      	nop
 8005d08:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8005d0a:	4618      	mov	r0, r3
 8005d0c:	3738      	adds	r7, #56	@ 0x38
 8005d0e:	46bd      	mov	sp, r7
 8005d10:	bd80      	pop	{r7, pc}

08005d12 <xQueueGiveFromISR>:
 8005d12:	b580      	push	{r7, lr}
 8005d14:	b08e      	sub	sp, #56	@ 0x38
 8005d16:	af00      	add	r7, sp, #0
 8005d18:	6078      	str	r0, [r7, #4]
 8005d1a:	6039      	str	r1, [r7, #0]
 8005d1c:	687b      	ldr	r3, [r7, #4]
 8005d1e:	633b      	str	r3, [r7, #48]	@ 0x30
 8005d20:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005d22:	2b00      	cmp	r3, #0
 8005d24:	d10d      	bne.n	8005d42 <xQueueGiveFromISR+0x30>
 8005d26:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005d2a:	b672      	cpsid	i
 8005d2c:	f383 8811 	msr	BASEPRI, r3
 8005d30:	f3bf 8f6f 	isb	sy
 8005d34:	f3bf 8f4f 	dsb	sy
 8005d38:	b662      	cpsie	i
 8005d3a:	623b      	str	r3, [r7, #32]
 8005d3c:	bf00      	nop
 8005d3e:	bf00      	nop
 8005d40:	e7fd      	b.n	8005d3e <xQueueGiveFromISR+0x2c>
 8005d42:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005d44:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8005d46:	2b00      	cmp	r3, #0
 8005d48:	d00d      	beq.n	8005d66 <xQueueGiveFromISR+0x54>
 8005d4a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005d4e:	b672      	cpsid	i
 8005d50:	f383 8811 	msr	BASEPRI, r3
 8005d54:	f3bf 8f6f 	isb	sy
 8005d58:	f3bf 8f4f 	dsb	sy
 8005d5c:	b662      	cpsie	i
 8005d5e:	61fb      	str	r3, [r7, #28]
 8005d60:	bf00      	nop
 8005d62:	bf00      	nop
 8005d64:	e7fd      	b.n	8005d62 <xQueueGiveFromISR+0x50>
 8005d66:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005d68:	681b      	ldr	r3, [r3, #0]
 8005d6a:	2b00      	cmp	r3, #0
 8005d6c:	d103      	bne.n	8005d76 <xQueueGiveFromISR+0x64>
 8005d6e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005d70:	689b      	ldr	r3, [r3, #8]
 8005d72:	2b00      	cmp	r3, #0
 8005d74:	d101      	bne.n	8005d7a <xQueueGiveFromISR+0x68>
 8005d76:	2301      	movs	r3, #1
 8005d78:	e000      	b.n	8005d7c <xQueueGiveFromISR+0x6a>
 8005d7a:	2300      	movs	r3, #0
 8005d7c:	2b00      	cmp	r3, #0
 8005d7e:	d10d      	bne.n	8005d9c <xQueueGiveFromISR+0x8a>
 8005d80:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005d84:	b672      	cpsid	i
 8005d86:	f383 8811 	msr	BASEPRI, r3
 8005d8a:	f3bf 8f6f 	isb	sy
 8005d8e:	f3bf 8f4f 	dsb	sy
 8005d92:	b662      	cpsie	i
 8005d94:	61bb      	str	r3, [r7, #24]
 8005d96:	bf00      	nop
 8005d98:	bf00      	nop
 8005d9a:	e7fd      	b.n	8005d98 <xQueueGiveFromISR+0x86>
 8005d9c:	f003 f8fe 	bl	8008f9c <vPortValidateInterruptPriority>
 8005da0:	f3ef 8211 	mrs	r2, BASEPRI
 8005da4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005da8:	b672      	cpsid	i
 8005daa:	f383 8811 	msr	BASEPRI, r3
 8005dae:	f3bf 8f6f 	isb	sy
 8005db2:	f3bf 8f4f 	dsb	sy
 8005db6:	b662      	cpsie	i
 8005db8:	617a      	str	r2, [r7, #20]
 8005dba:	613b      	str	r3, [r7, #16]
 8005dbc:	697b      	ldr	r3, [r7, #20]
 8005dbe:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8005dc0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005dc2:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8005dc4:	62bb      	str	r3, [r7, #40]	@ 0x28
 8005dc6:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005dc8:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8005dca:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8005dcc:	429a      	cmp	r2, r3
 8005dce:	d22b      	bcs.n	8005e28 <xQueueGiveFromISR+0x116>
 8005dd0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005dd2:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 8005dd6:	f887 3027 	strb.w	r3, [r7, #39]	@ 0x27
 8005dda:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005ddc:	1c5a      	adds	r2, r3, #1
 8005dde:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005de0:	639a      	str	r2, [r3, #56]	@ 0x38
 8005de2:	f997 3027 	ldrsb.w	r3, [r7, #39]	@ 0x27
 8005de6:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005dea:	d112      	bne.n	8005e12 <xQueueGiveFromISR+0x100>
 8005dec:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005dee:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8005df0:	2b00      	cmp	r3, #0
 8005df2:	d016      	beq.n	8005e22 <xQueueGiveFromISR+0x110>
 8005df4:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005df6:	3324      	adds	r3, #36	@ 0x24
 8005df8:	4618      	mov	r0, r3
 8005dfa:	f001 f915 	bl	8007028 <xTaskRemoveFromEventList>
 8005dfe:	4603      	mov	r3, r0
 8005e00:	2b00      	cmp	r3, #0
 8005e02:	d00e      	beq.n	8005e22 <xQueueGiveFromISR+0x110>
 8005e04:	683b      	ldr	r3, [r7, #0]
 8005e06:	2b00      	cmp	r3, #0
 8005e08:	d00b      	beq.n	8005e22 <xQueueGiveFromISR+0x110>
 8005e0a:	683b      	ldr	r3, [r7, #0]
 8005e0c:	2201      	movs	r2, #1
 8005e0e:	601a      	str	r2, [r3, #0]
 8005e10:	e007      	b.n	8005e22 <xQueueGiveFromISR+0x110>
 8005e12:	f897 3027 	ldrb.w	r3, [r7, #39]	@ 0x27
 8005e16:	3301      	adds	r3, #1
 8005e18:	b2db      	uxtb	r3, r3
 8005e1a:	b25a      	sxtb	r2, r3
 8005e1c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8005e1e:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8005e22:	2301      	movs	r3, #1
 8005e24:	637b      	str	r3, [r7, #52]	@ 0x34
 8005e26:	e001      	b.n	8005e2c <xQueueGiveFromISR+0x11a>
 8005e28:	2300      	movs	r3, #0
 8005e2a:	637b      	str	r3, [r7, #52]	@ 0x34
 8005e2c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8005e2e:	60fb      	str	r3, [r7, #12]
 8005e30:	68fb      	ldr	r3, [r7, #12]
 8005e32:	f383 8811 	msr	BASEPRI, r3
 8005e36:	bf00      	nop
 8005e38:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8005e3a:	4618      	mov	r0, r3
 8005e3c:	3738      	adds	r7, #56	@ 0x38
 8005e3e:	46bd      	mov	sp, r7
 8005e40:	bd80      	pop	{r7, pc}
	...

08005e44 <xQueueReceive>:
 8005e44:	b580      	push	{r7, lr}
 8005e46:	b08c      	sub	sp, #48	@ 0x30
 8005e48:	af00      	add	r7, sp, #0
 8005e4a:	60f8      	str	r0, [r7, #12]
 8005e4c:	60b9      	str	r1, [r7, #8]
 8005e4e:	607a      	str	r2, [r7, #4]
 8005e50:	2300      	movs	r3, #0
 8005e52:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8005e54:	68fb      	ldr	r3, [r7, #12]
 8005e56:	62bb      	str	r3, [r7, #40]	@ 0x28
 8005e58:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005e5a:	2b00      	cmp	r3, #0
 8005e5c:	d10d      	bne.n	8005e7a <xQueueReceive+0x36>
 8005e5e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005e62:	b672      	cpsid	i
 8005e64:	f383 8811 	msr	BASEPRI, r3
 8005e68:	f3bf 8f6f 	isb	sy
 8005e6c:	f3bf 8f4f 	dsb	sy
 8005e70:	b662      	cpsie	i
 8005e72:	623b      	str	r3, [r7, #32]
 8005e74:	bf00      	nop
 8005e76:	bf00      	nop
 8005e78:	e7fd      	b.n	8005e76 <xQueueReceive+0x32>
 8005e7a:	68bb      	ldr	r3, [r7, #8]
 8005e7c:	2b00      	cmp	r3, #0
 8005e7e:	d103      	bne.n	8005e88 <xQueueReceive+0x44>
 8005e80:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005e82:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8005e84:	2b00      	cmp	r3, #0
 8005e86:	d101      	bne.n	8005e8c <xQueueReceive+0x48>
 8005e88:	2301      	movs	r3, #1
 8005e8a:	e000      	b.n	8005e8e <xQueueReceive+0x4a>
 8005e8c:	2300      	movs	r3, #0
 8005e8e:	2b00      	cmp	r3, #0
 8005e90:	d10d      	bne.n	8005eae <xQueueReceive+0x6a>
 8005e92:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005e96:	b672      	cpsid	i
 8005e98:	f383 8811 	msr	BASEPRI, r3
 8005e9c:	f3bf 8f6f 	isb	sy
 8005ea0:	f3bf 8f4f 	dsb	sy
 8005ea4:	b662      	cpsie	i
 8005ea6:	61fb      	str	r3, [r7, #28]
 8005ea8:	bf00      	nop
 8005eaa:	bf00      	nop
 8005eac:	e7fd      	b.n	8005eaa <xQueueReceive+0x66>
 8005eae:	f001 fa83 	bl	80073b8 <xTaskGetSchedulerState>
 8005eb2:	4603      	mov	r3, r0
 8005eb4:	2b00      	cmp	r3, #0
 8005eb6:	d102      	bne.n	8005ebe <xQueueReceive+0x7a>
 8005eb8:	687b      	ldr	r3, [r7, #4]
 8005eba:	2b00      	cmp	r3, #0
 8005ebc:	d101      	bne.n	8005ec2 <xQueueReceive+0x7e>
 8005ebe:	2301      	movs	r3, #1
 8005ec0:	e000      	b.n	8005ec4 <xQueueReceive+0x80>
 8005ec2:	2300      	movs	r3, #0
 8005ec4:	2b00      	cmp	r3, #0
 8005ec6:	d10d      	bne.n	8005ee4 <xQueueReceive+0xa0>
 8005ec8:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8005ecc:	b672      	cpsid	i
 8005ece:	f383 8811 	msr	BASEPRI, r3
 8005ed2:	f3bf 8f6f 	isb	sy
 8005ed6:	f3bf 8f4f 	dsb	sy
 8005eda:	b662      	cpsie	i
 8005edc:	61bb      	str	r3, [r7, #24]
 8005ede:	bf00      	nop
 8005ee0:	bf00      	nop
 8005ee2:	e7fd      	b.n	8005ee0 <xQueueReceive+0x9c>
 8005ee4:	f002 ff72 	bl	8008dcc <vPortEnterCritical>
 8005ee8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005eea:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8005eec:	627b      	str	r3, [r7, #36]	@ 0x24
 8005eee:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8005ef0:	2b00      	cmp	r3, #0
 8005ef2:	d01f      	beq.n	8005f34 <xQueueReceive+0xf0>
 8005ef4:	68b9      	ldr	r1, [r7, #8]
 8005ef6:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005ef8:	f000 fad4 	bl	80064a4 <prvCopyDataFromQueue>
 8005efc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8005efe:	1e5a      	subs	r2, r3, #1
 8005f00:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f02:	639a      	str	r2, [r3, #56]	@ 0x38
 8005f04:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f06:	691b      	ldr	r3, [r3, #16]
 8005f08:	2b00      	cmp	r3, #0
 8005f0a:	d00f      	beq.n	8005f2c <xQueueReceive+0xe8>
 8005f0c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f0e:	3310      	adds	r3, #16
 8005f10:	4618      	mov	r0, r3
 8005f12:	f001 f889 	bl	8007028 <xTaskRemoveFromEventList>
 8005f16:	4603      	mov	r3, r0
 8005f18:	2b00      	cmp	r3, #0
 8005f1a:	d007      	beq.n	8005f2c <xQueueReceive+0xe8>
 8005f1c:	4b3c      	ldr	r3, [pc, #240]	@ (8006010 <xQueueReceive+0x1cc>)
 8005f1e:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8005f22:	601a      	str	r2, [r3, #0]
 8005f24:	f3bf 8f4f 	dsb	sy
 8005f28:	f3bf 8f6f 	isb	sy
 8005f2c:	f002 ff84 	bl	8008e38 <vPortExitCritical>
 8005f30:	2301      	movs	r3, #1
 8005f32:	e069      	b.n	8006008 <xQueueReceive+0x1c4>
 8005f34:	687b      	ldr	r3, [r7, #4]
 8005f36:	2b00      	cmp	r3, #0
 8005f38:	d103      	bne.n	8005f42 <xQueueReceive+0xfe>
 8005f3a:	f002 ff7d 	bl	8008e38 <vPortExitCritical>
 8005f3e:	2300      	movs	r3, #0
 8005f40:	e062      	b.n	8006008 <xQueueReceive+0x1c4>
 8005f42:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8005f44:	2b00      	cmp	r3, #0
 8005f46:	d106      	bne.n	8005f56 <xQueueReceive+0x112>
 8005f48:	f107 0310 	add.w	r3, r7, #16
 8005f4c:	4618      	mov	r0, r3
 8005f4e:	f001 f8d1 	bl	80070f4 <vTaskInternalSetTimeOutState>
 8005f52:	2301      	movs	r3, #1
 8005f54:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8005f56:	f002 ff6f 	bl	8008e38 <vPortExitCritical>
 8005f5a:	f000 fe23 	bl	8006ba4 <vTaskSuspendAll>
 8005f5e:	f002 ff35 	bl	8008dcc <vPortEnterCritical>
 8005f62:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f64:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 8005f68:	b25b      	sxtb	r3, r3
 8005f6a:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005f6e:	d103      	bne.n	8005f78 <xQueueReceive+0x134>
 8005f70:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f72:	2200      	movs	r2, #0
 8005f74:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8005f78:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f7a:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 8005f7e:	b25b      	sxtb	r3, r3
 8005f80:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8005f84:	d103      	bne.n	8005f8e <xQueueReceive+0x14a>
 8005f86:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005f88:	2200      	movs	r2, #0
 8005f8a:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8005f8e:	f002 ff53 	bl	8008e38 <vPortExitCritical>
 8005f92:	1d3a      	adds	r2, r7, #4
 8005f94:	f107 0310 	add.w	r3, r7, #16
 8005f98:	4611      	mov	r1, r2
 8005f9a:	4618      	mov	r0, r3
 8005f9c:	f001 f8c0 	bl	8007120 <xTaskCheckForTimeOut>
 8005fa0:	4603      	mov	r3, r0
 8005fa2:	2b00      	cmp	r3, #0
 8005fa4:	d123      	bne.n	8005fee <xQueueReceive+0x1aa>
 8005fa6:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005fa8:	f000 faf4 	bl	8006594 <prvIsQueueEmpty>
 8005fac:	4603      	mov	r3, r0
 8005fae:	2b00      	cmp	r3, #0
 8005fb0:	d017      	beq.n	8005fe2 <xQueueReceive+0x19e>
 8005fb2:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8005fb4:	3324      	adds	r3, #36	@ 0x24
 8005fb6:	687a      	ldr	r2, [r7, #4]
 8005fb8:	4611      	mov	r1, r2
 8005fba:	4618      	mov	r0, r3
 8005fbc:	f000 ffde 	bl	8006f7c <vTaskPlaceOnEventList>
 8005fc0:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005fc2:	f000 fa95 	bl	80064f0 <prvUnlockQueue>
 8005fc6:	f000 fdfb 	bl	8006bc0 <xTaskResumeAll>
 8005fca:	4603      	mov	r3, r0
 8005fcc:	2b00      	cmp	r3, #0
 8005fce:	d189      	bne.n	8005ee4 <xQueueReceive+0xa0>
 8005fd0:	4b0f      	ldr	r3, [pc, #60]	@ (8006010 <xQueueReceive+0x1cc>)
 8005fd2:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8005fd6:	601a      	str	r2, [r3, #0]
 8005fd8:	f3bf 8f4f 	dsb	sy
 8005fdc:	f3bf 8f6f 	isb	sy
 8005fe0:	e780      	b.n	8005ee4 <xQueueReceive+0xa0>
 8005fe2:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005fe4:	f000 fa84 	bl	80064f0 <prvUnlockQueue>
 8005fe8:	f000 fdea 	bl	8006bc0 <xTaskResumeAll>
 8005fec:	e77a      	b.n	8005ee4 <xQueueReceive+0xa0>
 8005fee:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005ff0:	f000 fa7e 	bl	80064f0 <prvUnlockQueue>
 8005ff4:	f000 fde4 	bl	8006bc0 <xTaskResumeAll>
 8005ff8:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8005ffa:	f000 facb 	bl	8006594 <prvIsQueueEmpty>
 8005ffe:	4603      	mov	r3, r0
 8006000:	2b00      	cmp	r3, #0
 8006002:	f43f af6f 	beq.w	8005ee4 <xQueueReceive+0xa0>
 8006006:	2300      	movs	r3, #0
 8006008:	4618      	mov	r0, r3
 800600a:	3730      	adds	r7, #48	@ 0x30
 800600c:	46bd      	mov	sp, r7
 800600e:	bd80      	pop	{r7, pc}
 8006010:	e000ed04 	.word	0xe000ed04

08006014 <xQueueSemaphoreTake>:
 8006014:	b580      	push	{r7, lr}
 8006016:	b08e      	sub	sp, #56	@ 0x38
 8006018:	af00      	add	r7, sp, #0
 800601a:	6078      	str	r0, [r7, #4]
 800601c:	6039      	str	r1, [r7, #0]
 800601e:	2300      	movs	r3, #0
 8006020:	637b      	str	r3, [r7, #52]	@ 0x34
 8006022:	687b      	ldr	r3, [r7, #4]
 8006024:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8006026:	2300      	movs	r3, #0
 8006028:	633b      	str	r3, [r7, #48]	@ 0x30
 800602a:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800602c:	2b00      	cmp	r3, #0
 800602e:	d10d      	bne.n	800604c <xQueueSemaphoreTake+0x38>
 8006030:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006034:	b672      	cpsid	i
 8006036:	f383 8811 	msr	BASEPRI, r3
 800603a:	f3bf 8f6f 	isb	sy
 800603e:	f3bf 8f4f 	dsb	sy
 8006042:	b662      	cpsie	i
 8006044:	623b      	str	r3, [r7, #32]
 8006046:	bf00      	nop
 8006048:	bf00      	nop
 800604a:	e7fd      	b.n	8006048 <xQueueSemaphoreTake+0x34>
 800604c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800604e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8006050:	2b00      	cmp	r3, #0
 8006052:	d00d      	beq.n	8006070 <xQueueSemaphoreTake+0x5c>
 8006054:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006058:	b672      	cpsid	i
 800605a:	f383 8811 	msr	BASEPRI, r3
 800605e:	f3bf 8f6f 	isb	sy
 8006062:	f3bf 8f4f 	dsb	sy
 8006066:	b662      	cpsie	i
 8006068:	61fb      	str	r3, [r7, #28]
 800606a:	bf00      	nop
 800606c:	bf00      	nop
 800606e:	e7fd      	b.n	800606c <xQueueSemaphoreTake+0x58>
 8006070:	f001 f9a2 	bl	80073b8 <xTaskGetSchedulerState>
 8006074:	4603      	mov	r3, r0
 8006076:	2b00      	cmp	r3, #0
 8006078:	d102      	bne.n	8006080 <xQueueSemaphoreTake+0x6c>
 800607a:	683b      	ldr	r3, [r7, #0]
 800607c:	2b00      	cmp	r3, #0
 800607e:	d101      	bne.n	8006084 <xQueueSemaphoreTake+0x70>
 8006080:	2301      	movs	r3, #1
 8006082:	e000      	b.n	8006086 <xQueueSemaphoreTake+0x72>
 8006084:	2300      	movs	r3, #0
 8006086:	2b00      	cmp	r3, #0
 8006088:	d10d      	bne.n	80060a6 <xQueueSemaphoreTake+0x92>
 800608a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800608e:	b672      	cpsid	i
 8006090:	f383 8811 	msr	BASEPRI, r3
 8006094:	f3bf 8f6f 	isb	sy
 8006098:	f3bf 8f4f 	dsb	sy
 800609c:	b662      	cpsie	i
 800609e:	61bb      	str	r3, [r7, #24]
 80060a0:	bf00      	nop
 80060a2:	bf00      	nop
 80060a4:	e7fd      	b.n	80060a2 <xQueueSemaphoreTake+0x8e>
 80060a6:	f002 fe91 	bl	8008dcc <vPortEnterCritical>
 80060aa:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060ac:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80060ae:	62bb      	str	r3, [r7, #40]	@ 0x28
 80060b0:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80060b2:	2b00      	cmp	r3, #0
 80060b4:	d024      	beq.n	8006100 <xQueueSemaphoreTake+0xec>
 80060b6:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80060b8:	1e5a      	subs	r2, r3, #1
 80060ba:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060bc:	639a      	str	r2, [r3, #56]	@ 0x38
 80060be:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060c0:	681b      	ldr	r3, [r3, #0]
 80060c2:	2b00      	cmp	r3, #0
 80060c4:	d104      	bne.n	80060d0 <xQueueSemaphoreTake+0xbc>
 80060c6:	f001 faf9 	bl	80076bc <pvTaskIncrementMutexHeldCount>
 80060ca:	4602      	mov	r2, r0
 80060cc:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060ce:	609a      	str	r2, [r3, #8]
 80060d0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060d2:	691b      	ldr	r3, [r3, #16]
 80060d4:	2b00      	cmp	r3, #0
 80060d6:	d00f      	beq.n	80060f8 <xQueueSemaphoreTake+0xe4>
 80060d8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80060da:	3310      	adds	r3, #16
 80060dc:	4618      	mov	r0, r3
 80060de:	f000 ffa3 	bl	8007028 <xTaskRemoveFromEventList>
 80060e2:	4603      	mov	r3, r0
 80060e4:	2b00      	cmp	r3, #0
 80060e6:	d007      	beq.n	80060f8 <xQueueSemaphoreTake+0xe4>
 80060e8:	4b55      	ldr	r3, [pc, #340]	@ (8006240 <xQueueSemaphoreTake+0x22c>)
 80060ea:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80060ee:	601a      	str	r2, [r3, #0]
 80060f0:	f3bf 8f4f 	dsb	sy
 80060f4:	f3bf 8f6f 	isb	sy
 80060f8:	f002 fe9e 	bl	8008e38 <vPortExitCritical>
 80060fc:	2301      	movs	r3, #1
 80060fe:	e09a      	b.n	8006236 <xQueueSemaphoreTake+0x222>
 8006100:	683b      	ldr	r3, [r7, #0]
 8006102:	2b00      	cmp	r3, #0
 8006104:	d114      	bne.n	8006130 <xQueueSemaphoreTake+0x11c>
 8006106:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006108:	2b00      	cmp	r3, #0
 800610a:	d00d      	beq.n	8006128 <xQueueSemaphoreTake+0x114>
 800610c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006110:	b672      	cpsid	i
 8006112:	f383 8811 	msr	BASEPRI, r3
 8006116:	f3bf 8f6f 	isb	sy
 800611a:	f3bf 8f4f 	dsb	sy
 800611e:	b662      	cpsie	i
 8006120:	617b      	str	r3, [r7, #20]
 8006122:	bf00      	nop
 8006124:	bf00      	nop
 8006126:	e7fd      	b.n	8006124 <xQueueSemaphoreTake+0x110>
 8006128:	f002 fe86 	bl	8008e38 <vPortExitCritical>
 800612c:	2300      	movs	r3, #0
 800612e:	e082      	b.n	8006236 <xQueueSemaphoreTake+0x222>
 8006130:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8006132:	2b00      	cmp	r3, #0
 8006134:	d106      	bne.n	8006144 <xQueueSemaphoreTake+0x130>
 8006136:	f107 030c 	add.w	r3, r7, #12
 800613a:	4618      	mov	r0, r3
 800613c:	f000 ffda 	bl	80070f4 <vTaskInternalSetTimeOutState>
 8006140:	2301      	movs	r3, #1
 8006142:	637b      	str	r3, [r7, #52]	@ 0x34
 8006144:	f002 fe78 	bl	8008e38 <vPortExitCritical>
 8006148:	f000 fd2c 	bl	8006ba4 <vTaskSuspendAll>
 800614c:	f002 fe3e 	bl	8008dcc <vPortEnterCritical>
 8006150:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006152:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 8006156:	b25b      	sxtb	r3, r3
 8006158:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800615c:	d103      	bne.n	8006166 <xQueueSemaphoreTake+0x152>
 800615e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006160:	2200      	movs	r2, #0
 8006162:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8006166:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006168:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 800616c:	b25b      	sxtb	r3, r3
 800616e:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8006172:	d103      	bne.n	800617c <xQueueSemaphoreTake+0x168>
 8006174:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006176:	2200      	movs	r2, #0
 8006178:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 800617c:	f002 fe5c 	bl	8008e38 <vPortExitCritical>
 8006180:	463a      	mov	r2, r7
 8006182:	f107 030c 	add.w	r3, r7, #12
 8006186:	4611      	mov	r1, r2
 8006188:	4618      	mov	r0, r3
 800618a:	f000 ffc9 	bl	8007120 <xTaskCheckForTimeOut>
 800618e:	4603      	mov	r3, r0
 8006190:	2b00      	cmp	r3, #0
 8006192:	d132      	bne.n	80061fa <xQueueSemaphoreTake+0x1e6>
 8006194:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 8006196:	f000 f9fd 	bl	8006594 <prvIsQueueEmpty>
 800619a:	4603      	mov	r3, r0
 800619c:	2b00      	cmp	r3, #0
 800619e:	d026      	beq.n	80061ee <xQueueSemaphoreTake+0x1da>
 80061a0:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80061a2:	681b      	ldr	r3, [r3, #0]
 80061a4:	2b00      	cmp	r3, #0
 80061a6:	d109      	bne.n	80061bc <xQueueSemaphoreTake+0x1a8>
 80061a8:	f002 fe10 	bl	8008dcc <vPortEnterCritical>
 80061ac:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80061ae:	689b      	ldr	r3, [r3, #8]
 80061b0:	4618      	mov	r0, r3
 80061b2:	f001 f91f 	bl	80073f4 <xTaskPriorityInherit>
 80061b6:	6338      	str	r0, [r7, #48]	@ 0x30
 80061b8:	f002 fe3e 	bl	8008e38 <vPortExitCritical>
 80061bc:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 80061be:	3324      	adds	r3, #36	@ 0x24
 80061c0:	683a      	ldr	r2, [r7, #0]
 80061c2:	4611      	mov	r1, r2
 80061c4:	4618      	mov	r0, r3
 80061c6:	f000 fed9 	bl	8006f7c <vTaskPlaceOnEventList>
 80061ca:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 80061cc:	f000 f990 	bl	80064f0 <prvUnlockQueue>
 80061d0:	f000 fcf6 	bl	8006bc0 <xTaskResumeAll>
 80061d4:	4603      	mov	r3, r0
 80061d6:	2b00      	cmp	r3, #0
 80061d8:	f47f af65 	bne.w	80060a6 <xQueueSemaphoreTake+0x92>
 80061dc:	4b18      	ldr	r3, [pc, #96]	@ (8006240 <xQueueSemaphoreTake+0x22c>)
 80061de:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80061e2:	601a      	str	r2, [r3, #0]
 80061e4:	f3bf 8f4f 	dsb	sy
 80061e8:	f3bf 8f6f 	isb	sy
 80061ec:	e75b      	b.n	80060a6 <xQueueSemaphoreTake+0x92>
 80061ee:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 80061f0:	f000 f97e 	bl	80064f0 <prvUnlockQueue>
 80061f4:	f000 fce4 	bl	8006bc0 <xTaskResumeAll>
 80061f8:	e755      	b.n	80060a6 <xQueueSemaphoreTake+0x92>
 80061fa:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 80061fc:	f000 f978 	bl	80064f0 <prvUnlockQueue>
 8006200:	f000 fcde 	bl	8006bc0 <xTaskResumeAll>
 8006204:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 8006206:	f000 f9c5 	bl	8006594 <prvIsQueueEmpty>
 800620a:	4603      	mov	r3, r0
 800620c:	2b00      	cmp	r3, #0
 800620e:	f43f af4a 	beq.w	80060a6 <xQueueSemaphoreTake+0x92>
 8006212:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006214:	2b00      	cmp	r3, #0
 8006216:	d00d      	beq.n	8006234 <xQueueSemaphoreTake+0x220>
 8006218:	f002 fdd8 	bl	8008dcc <vPortEnterCritical>
 800621c:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 800621e:	f000 f8bf 	bl	80063a0 <prvGetDisinheritPriorityAfterTimeout>
 8006222:	6278      	str	r0, [r7, #36]	@ 0x24
 8006224:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006226:	689b      	ldr	r3, [r3, #8]
 8006228:	6a79      	ldr	r1, [r7, #36]	@ 0x24
 800622a:	4618      	mov	r0, r3
 800622c:	f001 f9be 	bl	80075ac <vTaskPriorityDisinheritAfterTimeout>
 8006230:	f002 fe02 	bl	8008e38 <vPortExitCritical>
 8006234:	2300      	movs	r3, #0
 8006236:	4618      	mov	r0, r3
 8006238:	3738      	adds	r7, #56	@ 0x38
 800623a:	46bd      	mov	sp, r7
 800623c:	bd80      	pop	{r7, pc}
 800623e:	bf00      	nop
 8006240:	e000ed04 	.word	0xe000ed04

08006244 <xQueueReceiveFromISR>:
 8006244:	b580      	push	{r7, lr}
 8006246:	b08e      	sub	sp, #56	@ 0x38
 8006248:	af00      	add	r7, sp, #0
 800624a:	60f8      	str	r0, [r7, #12]
 800624c:	60b9      	str	r1, [r7, #8]
 800624e:	607a      	str	r2, [r7, #4]
 8006250:	68fb      	ldr	r3, [r7, #12]
 8006252:	633b      	str	r3, [r7, #48]	@ 0x30
 8006254:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006256:	2b00      	cmp	r3, #0
 8006258:	d10d      	bne.n	8006276 <xQueueReceiveFromISR+0x32>
 800625a:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800625e:	b672      	cpsid	i
 8006260:	f383 8811 	msr	BASEPRI, r3
 8006264:	f3bf 8f6f 	isb	sy
 8006268:	f3bf 8f4f 	dsb	sy
 800626c:	b662      	cpsie	i
 800626e:	623b      	str	r3, [r7, #32]
 8006270:	bf00      	nop
 8006272:	bf00      	nop
 8006274:	e7fd      	b.n	8006272 <xQueueReceiveFromISR+0x2e>
 8006276:	68bb      	ldr	r3, [r7, #8]
 8006278:	2b00      	cmp	r3, #0
 800627a:	d103      	bne.n	8006284 <xQueueReceiveFromISR+0x40>
 800627c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800627e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8006280:	2b00      	cmp	r3, #0
 8006282:	d101      	bne.n	8006288 <xQueueReceiveFromISR+0x44>
 8006284:	2301      	movs	r3, #1
 8006286:	e000      	b.n	800628a <xQueueReceiveFromISR+0x46>
 8006288:	2300      	movs	r3, #0
 800628a:	2b00      	cmp	r3, #0
 800628c:	d10d      	bne.n	80062aa <xQueueReceiveFromISR+0x66>
 800628e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006292:	b672      	cpsid	i
 8006294:	f383 8811 	msr	BASEPRI, r3
 8006298:	f3bf 8f6f 	isb	sy
 800629c:	f3bf 8f4f 	dsb	sy
 80062a0:	b662      	cpsie	i
 80062a2:	61fb      	str	r3, [r7, #28]
 80062a4:	bf00      	nop
 80062a6:	bf00      	nop
 80062a8:	e7fd      	b.n	80062a6 <xQueueReceiveFromISR+0x62>
 80062aa:	f002 fe77 	bl	8008f9c <vPortValidateInterruptPriority>
 80062ae:	f3ef 8211 	mrs	r2, BASEPRI
 80062b2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80062b6:	b672      	cpsid	i
 80062b8:	f383 8811 	msr	BASEPRI, r3
 80062bc:	f3bf 8f6f 	isb	sy
 80062c0:	f3bf 8f4f 	dsb	sy
 80062c4:	b662      	cpsie	i
 80062c6:	61ba      	str	r2, [r7, #24]
 80062c8:	617b      	str	r3, [r7, #20]
 80062ca:	69bb      	ldr	r3, [r7, #24]
 80062cc:	62fb      	str	r3, [r7, #44]	@ 0x2c
 80062ce:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80062d0:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80062d2:	62bb      	str	r3, [r7, #40]	@ 0x28
 80062d4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80062d6:	2b00      	cmp	r3, #0
 80062d8:	d02f      	beq.n	800633a <xQueueReceiveFromISR+0xf6>
 80062da:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80062dc:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 80062e0:	f887 3027 	strb.w	r3, [r7, #39]	@ 0x27
 80062e4:	68b9      	ldr	r1, [r7, #8]
 80062e6:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 80062e8:	f000 f8dc 	bl	80064a4 <prvCopyDataFromQueue>
 80062ec:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80062ee:	1e5a      	subs	r2, r3, #1
 80062f0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80062f2:	639a      	str	r2, [r3, #56]	@ 0x38
 80062f4:	f997 3027 	ldrsb.w	r3, [r7, #39]	@ 0x27
 80062f8:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 80062fc:	d112      	bne.n	8006324 <xQueueReceiveFromISR+0xe0>
 80062fe:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006300:	691b      	ldr	r3, [r3, #16]
 8006302:	2b00      	cmp	r3, #0
 8006304:	d016      	beq.n	8006334 <xQueueReceiveFromISR+0xf0>
 8006306:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006308:	3310      	adds	r3, #16
 800630a:	4618      	mov	r0, r3
 800630c:	f000 fe8c 	bl	8007028 <xTaskRemoveFromEventList>
 8006310:	4603      	mov	r3, r0
 8006312:	2b00      	cmp	r3, #0
 8006314:	d00e      	beq.n	8006334 <xQueueReceiveFromISR+0xf0>
 8006316:	687b      	ldr	r3, [r7, #4]
 8006318:	2b00      	cmp	r3, #0
 800631a:	d00b      	beq.n	8006334 <xQueueReceiveFromISR+0xf0>
 800631c:	687b      	ldr	r3, [r7, #4]
 800631e:	2201      	movs	r2, #1
 8006320:	601a      	str	r2, [r3, #0]
 8006322:	e007      	b.n	8006334 <xQueueReceiveFromISR+0xf0>
 8006324:	f897 3027 	ldrb.w	r3, [r7, #39]	@ 0x27
 8006328:	3301      	adds	r3, #1
 800632a:	b2db      	uxtb	r3, r3
 800632c:	b25a      	sxtb	r2, r3
 800632e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006330:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8006334:	2301      	movs	r3, #1
 8006336:	637b      	str	r3, [r7, #52]	@ 0x34
 8006338:	e001      	b.n	800633e <xQueueReceiveFromISR+0xfa>
 800633a:	2300      	movs	r3, #0
 800633c:	637b      	str	r3, [r7, #52]	@ 0x34
 800633e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006340:	613b      	str	r3, [r7, #16]
 8006342:	693b      	ldr	r3, [r7, #16]
 8006344:	f383 8811 	msr	BASEPRI, r3
 8006348:	bf00      	nop
 800634a:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800634c:	4618      	mov	r0, r3
 800634e:	3738      	adds	r7, #56	@ 0x38
 8006350:	46bd      	mov	sp, r7
 8006352:	bd80      	pop	{r7, pc}

08006354 <vQueueDelete>:
 8006354:	b580      	push	{r7, lr}
 8006356:	b084      	sub	sp, #16
 8006358:	af00      	add	r7, sp, #0
 800635a:	6078      	str	r0, [r7, #4]
 800635c:	687b      	ldr	r3, [r7, #4]
 800635e:	60fb      	str	r3, [r7, #12]
 8006360:	68fb      	ldr	r3, [r7, #12]
 8006362:	2b00      	cmp	r3, #0
 8006364:	d10d      	bne.n	8006382 <vQueueDelete+0x2e>
 8006366:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800636a:	b672      	cpsid	i
 800636c:	f383 8811 	msr	BASEPRI, r3
 8006370:	f3bf 8f6f 	isb	sy
 8006374:	f3bf 8f4f 	dsb	sy
 8006378:	b662      	cpsie	i
 800637a:	60bb      	str	r3, [r7, #8]
 800637c:	bf00      	nop
 800637e:	bf00      	nop
 8006380:	e7fd      	b.n	800637e <vQueueDelete+0x2a>
 8006382:	68f8      	ldr	r0, [r7, #12]
 8006384:	f000 f95e 	bl	8006644 <vQueueUnregisterQueue>
 8006388:	68fb      	ldr	r3, [r7, #12]
 800638a:	f893 3046 	ldrb.w	r3, [r3, #70]	@ 0x46
 800638e:	2b00      	cmp	r3, #0
 8006390:	d102      	bne.n	8006398 <vQueueDelete+0x44>
 8006392:	68f8      	ldr	r0, [r7, #12]
 8006394:	f002 faf0 	bl	8008978 <vPortFree>
 8006398:	bf00      	nop
 800639a:	3710      	adds	r7, #16
 800639c:	46bd      	mov	sp, r7
 800639e:	bd80      	pop	{r7, pc}

080063a0 <prvGetDisinheritPriorityAfterTimeout>:
 80063a0:	b480      	push	{r7}
 80063a2:	b085      	sub	sp, #20
 80063a4:	af00      	add	r7, sp, #0
 80063a6:	6078      	str	r0, [r7, #4]
 80063a8:	687b      	ldr	r3, [r7, #4]
 80063aa:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80063ac:	2b00      	cmp	r3, #0
 80063ae:	d006      	beq.n	80063be <prvGetDisinheritPriorityAfterTimeout+0x1e>
 80063b0:	687b      	ldr	r3, [r7, #4]
 80063b2:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80063b4:	681b      	ldr	r3, [r3, #0]
 80063b6:	f1c3 0338 	rsb	r3, r3, #56	@ 0x38
 80063ba:	60fb      	str	r3, [r7, #12]
 80063bc:	e001      	b.n	80063c2 <prvGetDisinheritPriorityAfterTimeout+0x22>
 80063be:	2300      	movs	r3, #0
 80063c0:	60fb      	str	r3, [r7, #12]
 80063c2:	68fb      	ldr	r3, [r7, #12]
 80063c4:	4618      	mov	r0, r3
 80063c6:	3714      	adds	r7, #20
 80063c8:	46bd      	mov	sp, r7
 80063ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80063ce:	4770      	bx	lr

080063d0 <prvCopyDataToQueue>:
 80063d0:	b580      	push	{r7, lr}
 80063d2:	b086      	sub	sp, #24
 80063d4:	af00      	add	r7, sp, #0
 80063d6:	60f8      	str	r0, [r7, #12]
 80063d8:	60b9      	str	r1, [r7, #8]
 80063da:	607a      	str	r2, [r7, #4]
 80063dc:	2300      	movs	r3, #0
 80063de:	617b      	str	r3, [r7, #20]
 80063e0:	68fb      	ldr	r3, [r7, #12]
 80063e2:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80063e4:	613b      	str	r3, [r7, #16]
 80063e6:	68fb      	ldr	r3, [r7, #12]
 80063e8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80063ea:	2b00      	cmp	r3, #0
 80063ec:	d10d      	bne.n	800640a <prvCopyDataToQueue+0x3a>
 80063ee:	68fb      	ldr	r3, [r7, #12]
 80063f0:	681b      	ldr	r3, [r3, #0]
 80063f2:	2b00      	cmp	r3, #0
 80063f4:	d14d      	bne.n	8006492 <prvCopyDataToQueue+0xc2>
 80063f6:	68fb      	ldr	r3, [r7, #12]
 80063f8:	689b      	ldr	r3, [r3, #8]
 80063fa:	4618      	mov	r0, r3
 80063fc:	f001 f862 	bl	80074c4 <xTaskPriorityDisinherit>
 8006400:	6178      	str	r0, [r7, #20]
 8006402:	68fb      	ldr	r3, [r7, #12]
 8006404:	2200      	movs	r2, #0
 8006406:	609a      	str	r2, [r3, #8]
 8006408:	e043      	b.n	8006492 <prvCopyDataToQueue+0xc2>
 800640a:	687b      	ldr	r3, [r7, #4]
 800640c:	2b00      	cmp	r3, #0
 800640e:	d119      	bne.n	8006444 <prvCopyDataToQueue+0x74>
 8006410:	68fb      	ldr	r3, [r7, #12]
 8006412:	6858      	ldr	r0, [r3, #4]
 8006414:	68fb      	ldr	r3, [r7, #12]
 8006416:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8006418:	461a      	mov	r2, r3
 800641a:	68b9      	ldr	r1, [r7, #8]
 800641c:	f006 ff2a 	bl	800d274 <memcpy>
 8006420:	68fb      	ldr	r3, [r7, #12]
 8006422:	685a      	ldr	r2, [r3, #4]
 8006424:	68fb      	ldr	r3, [r7, #12]
 8006426:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8006428:	441a      	add	r2, r3
 800642a:	68fb      	ldr	r3, [r7, #12]
 800642c:	605a      	str	r2, [r3, #4]
 800642e:	68fb      	ldr	r3, [r7, #12]
 8006430:	685a      	ldr	r2, [r3, #4]
 8006432:	68fb      	ldr	r3, [r7, #12]
 8006434:	689b      	ldr	r3, [r3, #8]
 8006436:	429a      	cmp	r2, r3
 8006438:	d32b      	bcc.n	8006492 <prvCopyDataToQueue+0xc2>
 800643a:	68fb      	ldr	r3, [r7, #12]
 800643c:	681a      	ldr	r2, [r3, #0]
 800643e:	68fb      	ldr	r3, [r7, #12]
 8006440:	605a      	str	r2, [r3, #4]
 8006442:	e026      	b.n	8006492 <prvCopyDataToQueue+0xc2>
 8006444:	68fb      	ldr	r3, [r7, #12]
 8006446:	68d8      	ldr	r0, [r3, #12]
 8006448:	68fb      	ldr	r3, [r7, #12]
 800644a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800644c:	461a      	mov	r2, r3
 800644e:	68b9      	ldr	r1, [r7, #8]
 8006450:	f006 ff10 	bl	800d274 <memcpy>
 8006454:	68fb      	ldr	r3, [r7, #12]
 8006456:	68da      	ldr	r2, [r3, #12]
 8006458:	68fb      	ldr	r3, [r7, #12]
 800645a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800645c:	425b      	negs	r3, r3
 800645e:	441a      	add	r2, r3
 8006460:	68fb      	ldr	r3, [r7, #12]
 8006462:	60da      	str	r2, [r3, #12]
 8006464:	68fb      	ldr	r3, [r7, #12]
 8006466:	68da      	ldr	r2, [r3, #12]
 8006468:	68fb      	ldr	r3, [r7, #12]
 800646a:	681b      	ldr	r3, [r3, #0]
 800646c:	429a      	cmp	r2, r3
 800646e:	d207      	bcs.n	8006480 <prvCopyDataToQueue+0xb0>
 8006470:	68fb      	ldr	r3, [r7, #12]
 8006472:	689a      	ldr	r2, [r3, #8]
 8006474:	68fb      	ldr	r3, [r7, #12]
 8006476:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8006478:	425b      	negs	r3, r3
 800647a:	441a      	add	r2, r3
 800647c:	68fb      	ldr	r3, [r7, #12]
 800647e:	60da      	str	r2, [r3, #12]
 8006480:	687b      	ldr	r3, [r7, #4]
 8006482:	2b02      	cmp	r3, #2
 8006484:	d105      	bne.n	8006492 <prvCopyDataToQueue+0xc2>
 8006486:	693b      	ldr	r3, [r7, #16]
 8006488:	2b00      	cmp	r3, #0
 800648a:	d002      	beq.n	8006492 <prvCopyDataToQueue+0xc2>
 800648c:	693b      	ldr	r3, [r7, #16]
 800648e:	3b01      	subs	r3, #1
 8006490:	613b      	str	r3, [r7, #16]
 8006492:	693b      	ldr	r3, [r7, #16]
 8006494:	1c5a      	adds	r2, r3, #1
 8006496:	68fb      	ldr	r3, [r7, #12]
 8006498:	639a      	str	r2, [r3, #56]	@ 0x38
 800649a:	697b      	ldr	r3, [r7, #20]
 800649c:	4618      	mov	r0, r3
 800649e:	3718      	adds	r7, #24
 80064a0:	46bd      	mov	sp, r7
 80064a2:	bd80      	pop	{r7, pc}

080064a4 <prvCopyDataFromQueue>:
 80064a4:	b580      	push	{r7, lr}
 80064a6:	b082      	sub	sp, #8
 80064a8:	af00      	add	r7, sp, #0
 80064aa:	6078      	str	r0, [r7, #4]
 80064ac:	6039      	str	r1, [r7, #0]
 80064ae:	687b      	ldr	r3, [r7, #4]
 80064b0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80064b2:	2b00      	cmp	r3, #0
 80064b4:	d018      	beq.n	80064e8 <prvCopyDataFromQueue+0x44>
 80064b6:	687b      	ldr	r3, [r7, #4]
 80064b8:	68da      	ldr	r2, [r3, #12]
 80064ba:	687b      	ldr	r3, [r7, #4]
 80064bc:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80064be:	441a      	add	r2, r3
 80064c0:	687b      	ldr	r3, [r7, #4]
 80064c2:	60da      	str	r2, [r3, #12]
 80064c4:	687b      	ldr	r3, [r7, #4]
 80064c6:	68da      	ldr	r2, [r3, #12]
 80064c8:	687b      	ldr	r3, [r7, #4]
 80064ca:	689b      	ldr	r3, [r3, #8]
 80064cc:	429a      	cmp	r2, r3
 80064ce:	d303      	bcc.n	80064d8 <prvCopyDataFromQueue+0x34>
 80064d0:	687b      	ldr	r3, [r7, #4]
 80064d2:	681a      	ldr	r2, [r3, #0]
 80064d4:	687b      	ldr	r3, [r7, #4]
 80064d6:	60da      	str	r2, [r3, #12]
 80064d8:	687b      	ldr	r3, [r7, #4]
 80064da:	68d9      	ldr	r1, [r3, #12]
 80064dc:	687b      	ldr	r3, [r7, #4]
 80064de:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80064e0:	461a      	mov	r2, r3
 80064e2:	6838      	ldr	r0, [r7, #0]
 80064e4:	f006 fec6 	bl	800d274 <memcpy>
 80064e8:	bf00      	nop
 80064ea:	3708      	adds	r7, #8
 80064ec:	46bd      	mov	sp, r7
 80064ee:	bd80      	pop	{r7, pc}

080064f0 <prvUnlockQueue>:
 80064f0:	b580      	push	{r7, lr}
 80064f2:	b084      	sub	sp, #16
 80064f4:	af00      	add	r7, sp, #0
 80064f6:	6078      	str	r0, [r7, #4]
 80064f8:	f002 fc68 	bl	8008dcc <vPortEnterCritical>
 80064fc:	687b      	ldr	r3, [r7, #4]
 80064fe:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 8006502:	73fb      	strb	r3, [r7, #15]
 8006504:	e011      	b.n	800652a <prvUnlockQueue+0x3a>
 8006506:	687b      	ldr	r3, [r7, #4]
 8006508:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 800650a:	2b00      	cmp	r3, #0
 800650c:	d012      	beq.n	8006534 <prvUnlockQueue+0x44>
 800650e:	687b      	ldr	r3, [r7, #4]
 8006510:	3324      	adds	r3, #36	@ 0x24
 8006512:	4618      	mov	r0, r3
 8006514:	f000 fd88 	bl	8007028 <xTaskRemoveFromEventList>
 8006518:	4603      	mov	r3, r0
 800651a:	2b00      	cmp	r3, #0
 800651c:	d001      	beq.n	8006522 <prvUnlockQueue+0x32>
 800651e:	f000 fe67 	bl	80071f0 <vTaskMissedYield>
 8006522:	7bfb      	ldrb	r3, [r7, #15]
 8006524:	3b01      	subs	r3, #1
 8006526:	b2db      	uxtb	r3, r3
 8006528:	73fb      	strb	r3, [r7, #15]
 800652a:	f997 300f 	ldrsb.w	r3, [r7, #15]
 800652e:	2b00      	cmp	r3, #0
 8006530:	dce9      	bgt.n	8006506 <prvUnlockQueue+0x16>
 8006532:	e000      	b.n	8006536 <prvUnlockQueue+0x46>
 8006534:	bf00      	nop
 8006536:	687b      	ldr	r3, [r7, #4]
 8006538:	22ff      	movs	r2, #255	@ 0xff
 800653a:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 800653e:	f002 fc7b 	bl	8008e38 <vPortExitCritical>
 8006542:	f002 fc43 	bl	8008dcc <vPortEnterCritical>
 8006546:	687b      	ldr	r3, [r7, #4]
 8006548:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 800654c:	73bb      	strb	r3, [r7, #14]
 800654e:	e011      	b.n	8006574 <prvUnlockQueue+0x84>
 8006550:	687b      	ldr	r3, [r7, #4]
 8006552:	691b      	ldr	r3, [r3, #16]
 8006554:	2b00      	cmp	r3, #0
 8006556:	d012      	beq.n	800657e <prvUnlockQueue+0x8e>
 8006558:	687b      	ldr	r3, [r7, #4]
 800655a:	3310      	adds	r3, #16
 800655c:	4618      	mov	r0, r3
 800655e:	f000 fd63 	bl	8007028 <xTaskRemoveFromEventList>
 8006562:	4603      	mov	r3, r0
 8006564:	2b00      	cmp	r3, #0
 8006566:	d001      	beq.n	800656c <prvUnlockQueue+0x7c>
 8006568:	f000 fe42 	bl	80071f0 <vTaskMissedYield>
 800656c:	7bbb      	ldrb	r3, [r7, #14]
 800656e:	3b01      	subs	r3, #1
 8006570:	b2db      	uxtb	r3, r3
 8006572:	73bb      	strb	r3, [r7, #14]
 8006574:	f997 300e 	ldrsb.w	r3, [r7, #14]
 8006578:	2b00      	cmp	r3, #0
 800657a:	dce9      	bgt.n	8006550 <prvUnlockQueue+0x60>
 800657c:	e000      	b.n	8006580 <prvUnlockQueue+0x90>
 800657e:	bf00      	nop
 8006580:	687b      	ldr	r3, [r7, #4]
 8006582:	22ff      	movs	r2, #255	@ 0xff
 8006584:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8006588:	f002 fc56 	bl	8008e38 <vPortExitCritical>
 800658c:	bf00      	nop
 800658e:	3710      	adds	r7, #16
 8006590:	46bd      	mov	sp, r7
 8006592:	bd80      	pop	{r7, pc}

08006594 <prvIsQueueEmpty>:
 8006594:	b580      	push	{r7, lr}
 8006596:	b084      	sub	sp, #16
 8006598:	af00      	add	r7, sp, #0
 800659a:	6078      	str	r0, [r7, #4]
 800659c:	f002 fc16 	bl	8008dcc <vPortEnterCritical>
 80065a0:	687b      	ldr	r3, [r7, #4]
 80065a2:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80065a4:	2b00      	cmp	r3, #0
 80065a6:	d102      	bne.n	80065ae <prvIsQueueEmpty+0x1a>
 80065a8:	2301      	movs	r3, #1
 80065aa:	60fb      	str	r3, [r7, #12]
 80065ac:	e001      	b.n	80065b2 <prvIsQueueEmpty+0x1e>
 80065ae:	2300      	movs	r3, #0
 80065b0:	60fb      	str	r3, [r7, #12]
 80065b2:	f002 fc41 	bl	8008e38 <vPortExitCritical>
 80065b6:	68fb      	ldr	r3, [r7, #12]
 80065b8:	4618      	mov	r0, r3
 80065ba:	3710      	adds	r7, #16
 80065bc:	46bd      	mov	sp, r7
 80065be:	bd80      	pop	{r7, pc}

080065c0 <prvIsQueueFull>:
 80065c0:	b580      	push	{r7, lr}
 80065c2:	b084      	sub	sp, #16
 80065c4:	af00      	add	r7, sp, #0
 80065c6:	6078      	str	r0, [r7, #4]
 80065c8:	f002 fc00 	bl	8008dcc <vPortEnterCritical>
 80065cc:	687b      	ldr	r3, [r7, #4]
 80065ce:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 80065d0:	687b      	ldr	r3, [r7, #4]
 80065d2:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 80065d4:	429a      	cmp	r2, r3
 80065d6:	d102      	bne.n	80065de <prvIsQueueFull+0x1e>
 80065d8:	2301      	movs	r3, #1
 80065da:	60fb      	str	r3, [r7, #12]
 80065dc:	e001      	b.n	80065e2 <prvIsQueueFull+0x22>
 80065de:	2300      	movs	r3, #0
 80065e0:	60fb      	str	r3, [r7, #12]
 80065e2:	f002 fc29 	bl	8008e38 <vPortExitCritical>
 80065e6:	68fb      	ldr	r3, [r7, #12]
 80065e8:	4618      	mov	r0, r3
 80065ea:	3710      	adds	r7, #16
 80065ec:	46bd      	mov	sp, r7
 80065ee:	bd80      	pop	{r7, pc}

080065f0 <vQueueAddToRegistry>:
 80065f0:	b480      	push	{r7}
 80065f2:	b085      	sub	sp, #20
 80065f4:	af00      	add	r7, sp, #0
 80065f6:	6078      	str	r0, [r7, #4]
 80065f8:	6039      	str	r1, [r7, #0]
 80065fa:	2300      	movs	r3, #0
 80065fc:	60fb      	str	r3, [r7, #12]
 80065fe:	e014      	b.n	800662a <vQueueAddToRegistry+0x3a>
 8006600:	4a0f      	ldr	r2, [pc, #60]	@ (8006640 <vQueueAddToRegistry+0x50>)
 8006602:	68fb      	ldr	r3, [r7, #12]
 8006604:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
 8006608:	2b00      	cmp	r3, #0
 800660a:	d10b      	bne.n	8006624 <vQueueAddToRegistry+0x34>
 800660c:	490c      	ldr	r1, [pc, #48]	@ (8006640 <vQueueAddToRegistry+0x50>)
 800660e:	68fb      	ldr	r3, [r7, #12]
 8006610:	683a      	ldr	r2, [r7, #0]
 8006612:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
 8006616:	4a0a      	ldr	r2, [pc, #40]	@ (8006640 <vQueueAddToRegistry+0x50>)
 8006618:	68fb      	ldr	r3, [r7, #12]
 800661a:	00db      	lsls	r3, r3, #3
 800661c:	4413      	add	r3, r2
 800661e:	687a      	ldr	r2, [r7, #4]
 8006620:	605a      	str	r2, [r3, #4]
 8006622:	e006      	b.n	8006632 <vQueueAddToRegistry+0x42>
 8006624:	68fb      	ldr	r3, [r7, #12]
 8006626:	3301      	adds	r3, #1
 8006628:	60fb      	str	r3, [r7, #12]
 800662a:	68fb      	ldr	r3, [r7, #12]
 800662c:	2b07      	cmp	r3, #7
 800662e:	d9e7      	bls.n	8006600 <vQueueAddToRegistry+0x10>
 8006630:	bf00      	nop
 8006632:	bf00      	nop
 8006634:	3714      	adds	r7, #20
 8006636:	46bd      	mov	sp, r7
 8006638:	f85d 7b04 	ldr.w	r7, [sp], #4
 800663c:	4770      	bx	lr
 800663e:	bf00      	nop
 8006640:	20000084 	.word	0x20000084

08006644 <vQueueUnregisterQueue>:
 8006644:	b480      	push	{r7}
 8006646:	b085      	sub	sp, #20
 8006648:	af00      	add	r7, sp, #0
 800664a:	6078      	str	r0, [r7, #4]
 800664c:	2300      	movs	r3, #0
 800664e:	60fb      	str	r3, [r7, #12]
 8006650:	e016      	b.n	8006680 <vQueueUnregisterQueue+0x3c>
 8006652:	4a10      	ldr	r2, [pc, #64]	@ (8006694 <vQueueUnregisterQueue+0x50>)
 8006654:	68fb      	ldr	r3, [r7, #12]
 8006656:	00db      	lsls	r3, r3, #3
 8006658:	4413      	add	r3, r2
 800665a:	685b      	ldr	r3, [r3, #4]
 800665c:	687a      	ldr	r2, [r7, #4]
 800665e:	429a      	cmp	r2, r3
 8006660:	d10b      	bne.n	800667a <vQueueUnregisterQueue+0x36>
 8006662:	4a0c      	ldr	r2, [pc, #48]	@ (8006694 <vQueueUnregisterQueue+0x50>)
 8006664:	68fb      	ldr	r3, [r7, #12]
 8006666:	2100      	movs	r1, #0
 8006668:	f842 1033 	str.w	r1, [r2, r3, lsl #3]
 800666c:	4a09      	ldr	r2, [pc, #36]	@ (8006694 <vQueueUnregisterQueue+0x50>)
 800666e:	68fb      	ldr	r3, [r7, #12]
 8006670:	00db      	lsls	r3, r3, #3
 8006672:	4413      	add	r3, r2
 8006674:	2200      	movs	r2, #0
 8006676:	605a      	str	r2, [r3, #4]
 8006678:	e006      	b.n	8006688 <vQueueUnregisterQueue+0x44>
 800667a:	68fb      	ldr	r3, [r7, #12]
 800667c:	3301      	adds	r3, #1
 800667e:	60fb      	str	r3, [r7, #12]
 8006680:	68fb      	ldr	r3, [r7, #12]
 8006682:	2b07      	cmp	r3, #7
 8006684:	d9e5      	bls.n	8006652 <vQueueUnregisterQueue+0xe>
 8006686:	bf00      	nop
 8006688:	bf00      	nop
 800668a:	3714      	adds	r7, #20
 800668c:	46bd      	mov	sp, r7
 800668e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006692:	4770      	bx	lr
 8006694:	20000084 	.word	0x20000084

08006698 <vQueueWaitForMessageRestricted>:
 8006698:	b580      	push	{r7, lr}
 800669a:	b086      	sub	sp, #24
 800669c:	af00      	add	r7, sp, #0
 800669e:	60f8      	str	r0, [r7, #12]
 80066a0:	60b9      	str	r1, [r7, #8]
 80066a2:	607a      	str	r2, [r7, #4]
 80066a4:	68fb      	ldr	r3, [r7, #12]
 80066a6:	617b      	str	r3, [r7, #20]
 80066a8:	f002 fb90 	bl	8008dcc <vPortEnterCritical>
 80066ac:	697b      	ldr	r3, [r7, #20]
 80066ae:	f893 3044 	ldrb.w	r3, [r3, #68]	@ 0x44
 80066b2:	b25b      	sxtb	r3, r3
 80066b4:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 80066b8:	d103      	bne.n	80066c2 <vQueueWaitForMessageRestricted+0x2a>
 80066ba:	697b      	ldr	r3, [r7, #20]
 80066bc:	2200      	movs	r2, #0
 80066be:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 80066c2:	697b      	ldr	r3, [r7, #20]
 80066c4:	f893 3045 	ldrb.w	r3, [r3, #69]	@ 0x45
 80066c8:	b25b      	sxtb	r3, r3
 80066ca:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 80066ce:	d103      	bne.n	80066d8 <vQueueWaitForMessageRestricted+0x40>
 80066d0:	697b      	ldr	r3, [r7, #20]
 80066d2:	2200      	movs	r2, #0
 80066d4:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 80066d8:	f002 fbae 	bl	8008e38 <vPortExitCritical>
 80066dc:	697b      	ldr	r3, [r7, #20]
 80066de:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 80066e0:	2b00      	cmp	r3, #0
 80066e2:	d106      	bne.n	80066f2 <vQueueWaitForMessageRestricted+0x5a>
 80066e4:	697b      	ldr	r3, [r7, #20]
 80066e6:	3324      	adds	r3, #36	@ 0x24
 80066e8:	687a      	ldr	r2, [r7, #4]
 80066ea:	68b9      	ldr	r1, [r7, #8]
 80066ec:	4618      	mov	r0, r3
 80066ee:	f000 fc6d 	bl	8006fcc <vTaskPlaceOnEventListRestricted>
 80066f2:	6978      	ldr	r0, [r7, #20]
 80066f4:	f7ff fefc 	bl	80064f0 <prvUnlockQueue>
 80066f8:	bf00      	nop
 80066fa:	3718      	adds	r7, #24
 80066fc:	46bd      	mov	sp, r7
 80066fe:	bd80      	pop	{r7, pc}

08006700 <xTaskCreateStatic>:
 8006700:	b580      	push	{r7, lr}
 8006702:	b08e      	sub	sp, #56	@ 0x38
 8006704:	af04      	add	r7, sp, #16
 8006706:	60f8      	str	r0, [r7, #12]
 8006708:	60b9      	str	r1, [r7, #8]
 800670a:	607a      	str	r2, [r7, #4]
 800670c:	603b      	str	r3, [r7, #0]
 800670e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8006710:	2b00      	cmp	r3, #0
 8006712:	d10d      	bne.n	8006730 <xTaskCreateStatic+0x30>
 8006714:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006718:	b672      	cpsid	i
 800671a:	f383 8811 	msr	BASEPRI, r3
 800671e:	f3bf 8f6f 	isb	sy
 8006722:	f3bf 8f4f 	dsb	sy
 8006726:	b662      	cpsie	i
 8006728:	623b      	str	r3, [r7, #32]
 800672a:	bf00      	nop
 800672c:	bf00      	nop
 800672e:	e7fd      	b.n	800672c <xTaskCreateStatic+0x2c>
 8006730:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8006732:	2b00      	cmp	r3, #0
 8006734:	d10d      	bne.n	8006752 <xTaskCreateStatic+0x52>
 8006736:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800673a:	b672      	cpsid	i
 800673c:	f383 8811 	msr	BASEPRI, r3
 8006740:	f3bf 8f6f 	isb	sy
 8006744:	f3bf 8f4f 	dsb	sy
 8006748:	b662      	cpsie	i
 800674a:	61fb      	str	r3, [r7, #28]
 800674c:	bf00      	nop
 800674e:	bf00      	nop
 8006750:	e7fd      	b.n	800674e <xTaskCreateStatic+0x4e>
 8006752:	235c      	movs	r3, #92	@ 0x5c
 8006754:	613b      	str	r3, [r7, #16]
 8006756:	693b      	ldr	r3, [r7, #16]
 8006758:	2b5c      	cmp	r3, #92	@ 0x5c
 800675a:	d00d      	beq.n	8006778 <xTaskCreateStatic+0x78>
 800675c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006760:	b672      	cpsid	i
 8006762:	f383 8811 	msr	BASEPRI, r3
 8006766:	f3bf 8f6f 	isb	sy
 800676a:	f3bf 8f4f 	dsb	sy
 800676e:	b662      	cpsie	i
 8006770:	61bb      	str	r3, [r7, #24]
 8006772:	bf00      	nop
 8006774:	bf00      	nop
 8006776:	e7fd      	b.n	8006774 <xTaskCreateStatic+0x74>
 8006778:	693b      	ldr	r3, [r7, #16]
 800677a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800677c:	2b00      	cmp	r3, #0
 800677e:	d01e      	beq.n	80067be <xTaskCreateStatic+0xbe>
 8006780:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8006782:	2b00      	cmp	r3, #0
 8006784:	d01b      	beq.n	80067be <xTaskCreateStatic+0xbe>
 8006786:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8006788:	627b      	str	r3, [r7, #36]	@ 0x24
 800678a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800678c:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
 800678e:	631a      	str	r2, [r3, #48]	@ 0x30
 8006790:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8006792:	2202      	movs	r2, #2
 8006794:	f883 2059 	strb.w	r2, [r3, #89]	@ 0x59
 8006798:	2300      	movs	r3, #0
 800679a:	9303      	str	r3, [sp, #12]
 800679c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800679e:	9302      	str	r3, [sp, #8]
 80067a0:	f107 0314 	add.w	r3, r7, #20
 80067a4:	9301      	str	r3, [sp, #4]
 80067a6:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80067a8:	9300      	str	r3, [sp, #0]
 80067aa:	683b      	ldr	r3, [r7, #0]
 80067ac:	687a      	ldr	r2, [r7, #4]
 80067ae:	68b9      	ldr	r1, [r7, #8]
 80067b0:	68f8      	ldr	r0, [r7, #12]
 80067b2:	f000 f850 	bl	8006856 <prvInitialiseNewTask>
 80067b6:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 80067b8:	f000 f8e0 	bl	800697c <prvAddNewTaskToReadyList>
 80067bc:	e001      	b.n	80067c2 <xTaskCreateStatic+0xc2>
 80067be:	2300      	movs	r3, #0
 80067c0:	617b      	str	r3, [r7, #20]
 80067c2:	697b      	ldr	r3, [r7, #20]
 80067c4:	4618      	mov	r0, r3
 80067c6:	3728      	adds	r7, #40	@ 0x28
 80067c8:	46bd      	mov	sp, r7
 80067ca:	bd80      	pop	{r7, pc}

080067cc <xTaskCreate>:
 80067cc:	b580      	push	{r7, lr}
 80067ce:	b08c      	sub	sp, #48	@ 0x30
 80067d0:	af04      	add	r7, sp, #16
 80067d2:	60f8      	str	r0, [r7, #12]
 80067d4:	60b9      	str	r1, [r7, #8]
 80067d6:	603b      	str	r3, [r7, #0]
 80067d8:	4613      	mov	r3, r2
 80067da:	80fb      	strh	r3, [r7, #6]
 80067dc:	88fb      	ldrh	r3, [r7, #6]
 80067de:	009b      	lsls	r3, r3, #2
 80067e0:	4618      	mov	r0, r3
 80067e2:	f001 fffb 	bl	80087dc <pvPortMalloc>
 80067e6:	6178      	str	r0, [r7, #20]
 80067e8:	697b      	ldr	r3, [r7, #20]
 80067ea:	2b00      	cmp	r3, #0
 80067ec:	d00e      	beq.n	800680c <xTaskCreate+0x40>
 80067ee:	205c      	movs	r0, #92	@ 0x5c
 80067f0:	f001 fff4 	bl	80087dc <pvPortMalloc>
 80067f4:	61f8      	str	r0, [r7, #28]
 80067f6:	69fb      	ldr	r3, [r7, #28]
 80067f8:	2b00      	cmp	r3, #0
 80067fa:	d003      	beq.n	8006804 <xTaskCreate+0x38>
 80067fc:	69fb      	ldr	r3, [r7, #28]
 80067fe:	697a      	ldr	r2, [r7, #20]
 8006800:	631a      	str	r2, [r3, #48]	@ 0x30
 8006802:	e005      	b.n	8006810 <xTaskCreate+0x44>
 8006804:	6978      	ldr	r0, [r7, #20]
 8006806:	f002 f8b7 	bl	8008978 <vPortFree>
 800680a:	e001      	b.n	8006810 <xTaskCreate+0x44>
 800680c:	2300      	movs	r3, #0
 800680e:	61fb      	str	r3, [r7, #28]
 8006810:	69fb      	ldr	r3, [r7, #28]
 8006812:	2b00      	cmp	r3, #0
 8006814:	d017      	beq.n	8006846 <xTaskCreate+0x7a>
 8006816:	69fb      	ldr	r3, [r7, #28]
 8006818:	2200      	movs	r2, #0
 800681a:	f883 2059 	strb.w	r2, [r3, #89]	@ 0x59
 800681e:	88fa      	ldrh	r2, [r7, #6]
 8006820:	2300      	movs	r3, #0
 8006822:	9303      	str	r3, [sp, #12]
 8006824:	69fb      	ldr	r3, [r7, #28]
 8006826:	9302      	str	r3, [sp, #8]
 8006828:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800682a:	9301      	str	r3, [sp, #4]
 800682c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800682e:	9300      	str	r3, [sp, #0]
 8006830:	683b      	ldr	r3, [r7, #0]
 8006832:	68b9      	ldr	r1, [r7, #8]
 8006834:	68f8      	ldr	r0, [r7, #12]
 8006836:	f000 f80e 	bl	8006856 <prvInitialiseNewTask>
 800683a:	69f8      	ldr	r0, [r7, #28]
 800683c:	f000 f89e 	bl	800697c <prvAddNewTaskToReadyList>
 8006840:	2301      	movs	r3, #1
 8006842:	61bb      	str	r3, [r7, #24]
 8006844:	e002      	b.n	800684c <xTaskCreate+0x80>
 8006846:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800684a:	61bb      	str	r3, [r7, #24]
 800684c:	69bb      	ldr	r3, [r7, #24]
 800684e:	4618      	mov	r0, r3
 8006850:	3720      	adds	r7, #32
 8006852:	46bd      	mov	sp, r7
 8006854:	bd80      	pop	{r7, pc}

08006856 <prvInitialiseNewTask>:
 8006856:	b580      	push	{r7, lr}
 8006858:	b088      	sub	sp, #32
 800685a:	af00      	add	r7, sp, #0
 800685c:	60f8      	str	r0, [r7, #12]
 800685e:	60b9      	str	r1, [r7, #8]
 8006860:	607a      	str	r2, [r7, #4]
 8006862:	603b      	str	r3, [r7, #0]
 8006864:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006866:	6b18      	ldr	r0, [r3, #48]	@ 0x30
 8006868:	687b      	ldr	r3, [r7, #4]
 800686a:	009b      	lsls	r3, r3, #2
 800686c:	461a      	mov	r2, r3
 800686e:	21a5      	movs	r1, #165	@ 0xa5
 8006870:	f006 fcbc 	bl	800d1ec <memset>
 8006874:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006876:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 8006878:	6879      	ldr	r1, [r7, #4]
 800687a:	f06f 4340 	mvn.w	r3, #3221225472	@ 0xc0000000
 800687e:	440b      	add	r3, r1
 8006880:	009b      	lsls	r3, r3, #2
 8006882:	4413      	add	r3, r2
 8006884:	61bb      	str	r3, [r7, #24]
 8006886:	69bb      	ldr	r3, [r7, #24]
 8006888:	f023 0307 	bic.w	r3, r3, #7
 800688c:	61bb      	str	r3, [r7, #24]
 800688e:	69bb      	ldr	r3, [r7, #24]
 8006890:	f003 0307 	and.w	r3, r3, #7
 8006894:	2b00      	cmp	r3, #0
 8006896:	d00d      	beq.n	80068b4 <prvInitialiseNewTask+0x5e>
 8006898:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800689c:	b672      	cpsid	i
 800689e:	f383 8811 	msr	BASEPRI, r3
 80068a2:	f3bf 8f6f 	isb	sy
 80068a6:	f3bf 8f4f 	dsb	sy
 80068aa:	b662      	cpsie	i
 80068ac:	617b      	str	r3, [r7, #20]
 80068ae:	bf00      	nop
 80068b0:	bf00      	nop
 80068b2:	e7fd      	b.n	80068b0 <prvInitialiseNewTask+0x5a>
 80068b4:	68bb      	ldr	r3, [r7, #8]
 80068b6:	2b00      	cmp	r3, #0
 80068b8:	d01f      	beq.n	80068fa <prvInitialiseNewTask+0xa4>
 80068ba:	2300      	movs	r3, #0
 80068bc:	61fb      	str	r3, [r7, #28]
 80068be:	e012      	b.n	80068e6 <prvInitialiseNewTask+0x90>
 80068c0:	68ba      	ldr	r2, [r7, #8]
 80068c2:	69fb      	ldr	r3, [r7, #28]
 80068c4:	4413      	add	r3, r2
 80068c6:	7819      	ldrb	r1, [r3, #0]
 80068c8:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 80068ca:	69fb      	ldr	r3, [r7, #28]
 80068cc:	4413      	add	r3, r2
 80068ce:	3334      	adds	r3, #52	@ 0x34
 80068d0:	460a      	mov	r2, r1
 80068d2:	701a      	strb	r2, [r3, #0]
 80068d4:	68ba      	ldr	r2, [r7, #8]
 80068d6:	69fb      	ldr	r3, [r7, #28]
 80068d8:	4413      	add	r3, r2
 80068da:	781b      	ldrb	r3, [r3, #0]
 80068dc:	2b00      	cmp	r3, #0
 80068de:	d006      	beq.n	80068ee <prvInitialiseNewTask+0x98>
 80068e0:	69fb      	ldr	r3, [r7, #28]
 80068e2:	3301      	adds	r3, #1
 80068e4:	61fb      	str	r3, [r7, #28]
 80068e6:	69fb      	ldr	r3, [r7, #28]
 80068e8:	2b0f      	cmp	r3, #15
 80068ea:	d9e9      	bls.n	80068c0 <prvInitialiseNewTask+0x6a>
 80068ec:	e000      	b.n	80068f0 <prvInitialiseNewTask+0x9a>
 80068ee:	bf00      	nop
 80068f0:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80068f2:	2200      	movs	r2, #0
 80068f4:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 80068f8:	e003      	b.n	8006902 <prvInitialiseNewTask+0xac>
 80068fa:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 80068fc:	2200      	movs	r2, #0
 80068fe:	f883 2034 	strb.w	r2, [r3, #52]	@ 0x34
 8006902:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8006904:	2b37      	cmp	r3, #55	@ 0x37
 8006906:	d901      	bls.n	800690c <prvInitialiseNewTask+0xb6>
 8006908:	2337      	movs	r3, #55	@ 0x37
 800690a:	62bb      	str	r3, [r7, #40]	@ 0x28
 800690c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800690e:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8006910:	62da      	str	r2, [r3, #44]	@ 0x2c
 8006912:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006914:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 8006916:	64da      	str	r2, [r3, #76]	@ 0x4c
 8006918:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800691a:	2200      	movs	r2, #0
 800691c:	651a      	str	r2, [r3, #80]	@ 0x50
 800691e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006920:	3304      	adds	r3, #4
 8006922:	4618      	mov	r0, r3
 8006924:	f7fe fde4 	bl	80054f0 <vListInitialiseItem>
 8006928:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800692a:	3318      	adds	r3, #24
 800692c:	4618      	mov	r0, r3
 800692e:	f7fe fddf 	bl	80054f0 <vListInitialiseItem>
 8006932:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006934:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8006936:	611a      	str	r2, [r3, #16]
 8006938:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800693a:	f1c3 0238 	rsb	r2, r3, #56	@ 0x38
 800693e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006940:	619a      	str	r2, [r3, #24]
 8006942:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006944:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8006946:	625a      	str	r2, [r3, #36]	@ 0x24
 8006948:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800694a:	2200      	movs	r2, #0
 800694c:	655a      	str	r2, [r3, #84]	@ 0x54
 800694e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006950:	2200      	movs	r2, #0
 8006952:	f883 2058 	strb.w	r2, [r3, #88]	@ 0x58
 8006956:	683a      	ldr	r2, [r7, #0]
 8006958:	68f9      	ldr	r1, [r7, #12]
 800695a:	69b8      	ldr	r0, [r7, #24]
 800695c:	f002 f928 	bl	8008bb0 <pxPortInitialiseStack>
 8006960:	4602      	mov	r2, r0
 8006962:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8006964:	601a      	str	r2, [r3, #0]
 8006966:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8006968:	2b00      	cmp	r3, #0
 800696a:	d002      	beq.n	8006972 <prvInitialiseNewTask+0x11c>
 800696c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800696e:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8006970:	601a      	str	r2, [r3, #0]
 8006972:	bf00      	nop
 8006974:	3720      	adds	r7, #32
 8006976:	46bd      	mov	sp, r7
 8006978:	bd80      	pop	{r7, pc}
	...

0800697c <prvAddNewTaskToReadyList>:
 800697c:	b580      	push	{r7, lr}
 800697e:	b082      	sub	sp, #8
 8006980:	af00      	add	r7, sp, #0
 8006982:	6078      	str	r0, [r7, #4]
 8006984:	f002 fa22 	bl	8008dcc <vPortEnterCritical>
 8006988:	4b2d      	ldr	r3, [pc, #180]	@ (8006a40 <prvAddNewTaskToReadyList+0xc4>)
 800698a:	681b      	ldr	r3, [r3, #0]
 800698c:	3301      	adds	r3, #1
 800698e:	4a2c      	ldr	r2, [pc, #176]	@ (8006a40 <prvAddNewTaskToReadyList+0xc4>)
 8006990:	6013      	str	r3, [r2, #0]
 8006992:	4b2c      	ldr	r3, [pc, #176]	@ (8006a44 <prvAddNewTaskToReadyList+0xc8>)
 8006994:	681b      	ldr	r3, [r3, #0]
 8006996:	2b00      	cmp	r3, #0
 8006998:	d109      	bne.n	80069ae <prvAddNewTaskToReadyList+0x32>
 800699a:	4a2a      	ldr	r2, [pc, #168]	@ (8006a44 <prvAddNewTaskToReadyList+0xc8>)
 800699c:	687b      	ldr	r3, [r7, #4]
 800699e:	6013      	str	r3, [r2, #0]
 80069a0:	4b27      	ldr	r3, [pc, #156]	@ (8006a40 <prvAddNewTaskToReadyList+0xc4>)
 80069a2:	681b      	ldr	r3, [r3, #0]
 80069a4:	2b01      	cmp	r3, #1
 80069a6:	d110      	bne.n	80069ca <prvAddNewTaskToReadyList+0x4e>
 80069a8:	f000 fc46 	bl	8007238 <prvInitialiseTaskLists>
 80069ac:	e00d      	b.n	80069ca <prvAddNewTaskToReadyList+0x4e>
 80069ae:	4b26      	ldr	r3, [pc, #152]	@ (8006a48 <prvAddNewTaskToReadyList+0xcc>)
 80069b0:	681b      	ldr	r3, [r3, #0]
 80069b2:	2b00      	cmp	r3, #0
 80069b4:	d109      	bne.n	80069ca <prvAddNewTaskToReadyList+0x4e>
 80069b6:	4b23      	ldr	r3, [pc, #140]	@ (8006a44 <prvAddNewTaskToReadyList+0xc8>)
 80069b8:	681b      	ldr	r3, [r3, #0]
 80069ba:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80069bc:	687b      	ldr	r3, [r7, #4]
 80069be:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80069c0:	429a      	cmp	r2, r3
 80069c2:	d802      	bhi.n	80069ca <prvAddNewTaskToReadyList+0x4e>
 80069c4:	4a1f      	ldr	r2, [pc, #124]	@ (8006a44 <prvAddNewTaskToReadyList+0xc8>)
 80069c6:	687b      	ldr	r3, [r7, #4]
 80069c8:	6013      	str	r3, [r2, #0]
 80069ca:	4b20      	ldr	r3, [pc, #128]	@ (8006a4c <prvAddNewTaskToReadyList+0xd0>)
 80069cc:	681b      	ldr	r3, [r3, #0]
 80069ce:	3301      	adds	r3, #1
 80069d0:	4a1e      	ldr	r2, [pc, #120]	@ (8006a4c <prvAddNewTaskToReadyList+0xd0>)
 80069d2:	6013      	str	r3, [r2, #0]
 80069d4:	4b1d      	ldr	r3, [pc, #116]	@ (8006a4c <prvAddNewTaskToReadyList+0xd0>)
 80069d6:	681a      	ldr	r2, [r3, #0]
 80069d8:	687b      	ldr	r3, [r7, #4]
 80069da:	645a      	str	r2, [r3, #68]	@ 0x44
 80069dc:	687b      	ldr	r3, [r7, #4]
 80069de:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80069e0:	4b1b      	ldr	r3, [pc, #108]	@ (8006a50 <prvAddNewTaskToReadyList+0xd4>)
 80069e2:	681b      	ldr	r3, [r3, #0]
 80069e4:	429a      	cmp	r2, r3
 80069e6:	d903      	bls.n	80069f0 <prvAddNewTaskToReadyList+0x74>
 80069e8:	687b      	ldr	r3, [r7, #4]
 80069ea:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80069ec:	4a18      	ldr	r2, [pc, #96]	@ (8006a50 <prvAddNewTaskToReadyList+0xd4>)
 80069ee:	6013      	str	r3, [r2, #0]
 80069f0:	687b      	ldr	r3, [r7, #4]
 80069f2:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80069f4:	4613      	mov	r3, r2
 80069f6:	009b      	lsls	r3, r3, #2
 80069f8:	4413      	add	r3, r2
 80069fa:	009b      	lsls	r3, r3, #2
 80069fc:	4a15      	ldr	r2, [pc, #84]	@ (8006a54 <prvAddNewTaskToReadyList+0xd8>)
 80069fe:	441a      	add	r2, r3
 8006a00:	687b      	ldr	r3, [r7, #4]
 8006a02:	3304      	adds	r3, #4
 8006a04:	4619      	mov	r1, r3
 8006a06:	4610      	mov	r0, r2
 8006a08:	f7fe fd7f 	bl	800550a <vListInsertEnd>
 8006a0c:	f002 fa14 	bl	8008e38 <vPortExitCritical>
 8006a10:	4b0d      	ldr	r3, [pc, #52]	@ (8006a48 <prvAddNewTaskToReadyList+0xcc>)
 8006a12:	681b      	ldr	r3, [r3, #0]
 8006a14:	2b00      	cmp	r3, #0
 8006a16:	d00e      	beq.n	8006a36 <prvAddNewTaskToReadyList+0xba>
 8006a18:	4b0a      	ldr	r3, [pc, #40]	@ (8006a44 <prvAddNewTaskToReadyList+0xc8>)
 8006a1a:	681b      	ldr	r3, [r3, #0]
 8006a1c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006a1e:	687b      	ldr	r3, [r7, #4]
 8006a20:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006a22:	429a      	cmp	r2, r3
 8006a24:	d207      	bcs.n	8006a36 <prvAddNewTaskToReadyList+0xba>
 8006a26:	4b0c      	ldr	r3, [pc, #48]	@ (8006a58 <prvAddNewTaskToReadyList+0xdc>)
 8006a28:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006a2c:	601a      	str	r2, [r3, #0]
 8006a2e:	f3bf 8f4f 	dsb	sy
 8006a32:	f3bf 8f6f 	isb	sy
 8006a36:	bf00      	nop
 8006a38:	3708      	adds	r7, #8
 8006a3a:	46bd      	mov	sp, r7
 8006a3c:	bd80      	pop	{r7, pc}
 8006a3e:	bf00      	nop
 8006a40:	20000598 	.word	0x20000598
 8006a44:	200000c4 	.word	0x200000c4
 8006a48:	200005a4 	.word	0x200005a4
 8006a4c:	200005b4 	.word	0x200005b4
 8006a50:	200005a0 	.word	0x200005a0
 8006a54:	200000c8 	.word	0x200000c8
 8006a58:	e000ed04 	.word	0xe000ed04

08006a5c <vTaskDelay>:
 8006a5c:	b580      	push	{r7, lr}
 8006a5e:	b084      	sub	sp, #16
 8006a60:	af00      	add	r7, sp, #0
 8006a62:	6078      	str	r0, [r7, #4]
 8006a64:	2300      	movs	r3, #0
 8006a66:	60fb      	str	r3, [r7, #12]
 8006a68:	687b      	ldr	r3, [r7, #4]
 8006a6a:	2b00      	cmp	r3, #0
 8006a6c:	d01a      	beq.n	8006aa4 <vTaskDelay+0x48>
 8006a6e:	4b15      	ldr	r3, [pc, #84]	@ (8006ac4 <vTaskDelay+0x68>)
 8006a70:	681b      	ldr	r3, [r3, #0]
 8006a72:	2b00      	cmp	r3, #0
 8006a74:	d00d      	beq.n	8006a92 <vTaskDelay+0x36>
 8006a76:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006a7a:	b672      	cpsid	i
 8006a7c:	f383 8811 	msr	BASEPRI, r3
 8006a80:	f3bf 8f6f 	isb	sy
 8006a84:	f3bf 8f4f 	dsb	sy
 8006a88:	b662      	cpsie	i
 8006a8a:	60bb      	str	r3, [r7, #8]
 8006a8c:	bf00      	nop
 8006a8e:	bf00      	nop
 8006a90:	e7fd      	b.n	8006a8e <vTaskDelay+0x32>
 8006a92:	f000 f887 	bl	8006ba4 <vTaskSuspendAll>
 8006a96:	2100      	movs	r1, #0
 8006a98:	6878      	ldr	r0, [r7, #4]
 8006a9a:	f000 fe23 	bl	80076e4 <prvAddCurrentTaskToDelayedList>
 8006a9e:	f000 f88f 	bl	8006bc0 <xTaskResumeAll>
 8006aa2:	60f8      	str	r0, [r7, #12]
 8006aa4:	68fb      	ldr	r3, [r7, #12]
 8006aa6:	2b00      	cmp	r3, #0
 8006aa8:	d107      	bne.n	8006aba <vTaskDelay+0x5e>
 8006aaa:	4b07      	ldr	r3, [pc, #28]	@ (8006ac8 <vTaskDelay+0x6c>)
 8006aac:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006ab0:	601a      	str	r2, [r3, #0]
 8006ab2:	f3bf 8f4f 	dsb	sy
 8006ab6:	f3bf 8f6f 	isb	sy
 8006aba:	bf00      	nop
 8006abc:	3710      	adds	r7, #16
 8006abe:	46bd      	mov	sp, r7
 8006ac0:	bd80      	pop	{r7, pc}
 8006ac2:	bf00      	nop
 8006ac4:	200005c0 	.word	0x200005c0
 8006ac8:	e000ed04 	.word	0xe000ed04

08006acc <vTaskStartScheduler>:
 8006acc:	b580      	push	{r7, lr}
 8006ace:	b08a      	sub	sp, #40	@ 0x28
 8006ad0:	af04      	add	r7, sp, #16
 8006ad2:	2300      	movs	r3, #0
 8006ad4:	60bb      	str	r3, [r7, #8]
 8006ad6:	2300      	movs	r3, #0
 8006ad8:	607b      	str	r3, [r7, #4]
 8006ada:	463a      	mov	r2, r7
 8006adc:	1d39      	adds	r1, r7, #4
 8006ade:	f107 0308 	add.w	r3, r7, #8
 8006ae2:	4618      	mov	r0, r3
 8006ae4:	f001 fe46 	bl	8008774 <vApplicationGetIdleTaskMemory>
 8006ae8:	6839      	ldr	r1, [r7, #0]
 8006aea:	687b      	ldr	r3, [r7, #4]
 8006aec:	68ba      	ldr	r2, [r7, #8]
 8006aee:	9202      	str	r2, [sp, #8]
 8006af0:	9301      	str	r3, [sp, #4]
 8006af2:	2300      	movs	r3, #0
 8006af4:	9300      	str	r3, [sp, #0]
 8006af6:	2300      	movs	r3, #0
 8006af8:	460a      	mov	r2, r1
 8006afa:	4924      	ldr	r1, [pc, #144]	@ (8006b8c <vTaskStartScheduler+0xc0>)
 8006afc:	4824      	ldr	r0, [pc, #144]	@ (8006b90 <vTaskStartScheduler+0xc4>)
 8006afe:	f7ff fdff 	bl	8006700 <xTaskCreateStatic>
 8006b02:	4603      	mov	r3, r0
 8006b04:	4a23      	ldr	r2, [pc, #140]	@ (8006b94 <vTaskStartScheduler+0xc8>)
 8006b06:	6013      	str	r3, [r2, #0]
 8006b08:	4b22      	ldr	r3, [pc, #136]	@ (8006b94 <vTaskStartScheduler+0xc8>)
 8006b0a:	681b      	ldr	r3, [r3, #0]
 8006b0c:	2b00      	cmp	r3, #0
 8006b0e:	d002      	beq.n	8006b16 <vTaskStartScheduler+0x4a>
 8006b10:	2301      	movs	r3, #1
 8006b12:	617b      	str	r3, [r7, #20]
 8006b14:	e001      	b.n	8006b1a <vTaskStartScheduler+0x4e>
 8006b16:	2300      	movs	r3, #0
 8006b18:	617b      	str	r3, [r7, #20]
 8006b1a:	697b      	ldr	r3, [r7, #20]
 8006b1c:	2b01      	cmp	r3, #1
 8006b1e:	d102      	bne.n	8006b26 <vTaskStartScheduler+0x5a>
 8006b20:	f000 fe34 	bl	800778c <xTimerCreateTimerTask>
 8006b24:	6178      	str	r0, [r7, #20]
 8006b26:	697b      	ldr	r3, [r7, #20]
 8006b28:	2b01      	cmp	r3, #1
 8006b2a:	d118      	bne.n	8006b5e <vTaskStartScheduler+0x92>
 8006b2c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006b30:	b672      	cpsid	i
 8006b32:	f383 8811 	msr	BASEPRI, r3
 8006b36:	f3bf 8f6f 	isb	sy
 8006b3a:	f3bf 8f4f 	dsb	sy
 8006b3e:	b662      	cpsie	i
 8006b40:	613b      	str	r3, [r7, #16]
 8006b42:	bf00      	nop
 8006b44:	4b14      	ldr	r3, [pc, #80]	@ (8006b98 <vTaskStartScheduler+0xcc>)
 8006b46:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8006b4a:	601a      	str	r2, [r3, #0]
 8006b4c:	4b13      	ldr	r3, [pc, #76]	@ (8006b9c <vTaskStartScheduler+0xd0>)
 8006b4e:	2201      	movs	r2, #1
 8006b50:	601a      	str	r2, [r3, #0]
 8006b52:	4b13      	ldr	r3, [pc, #76]	@ (8006ba0 <vTaskStartScheduler+0xd4>)
 8006b54:	2200      	movs	r2, #0
 8006b56:	601a      	str	r2, [r3, #0]
 8006b58:	f002 f8ba 	bl	8008cd0 <xPortStartScheduler>
 8006b5c:	e011      	b.n	8006b82 <vTaskStartScheduler+0xb6>
 8006b5e:	697b      	ldr	r3, [r7, #20]
 8006b60:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8006b64:	d10d      	bne.n	8006b82 <vTaskStartScheduler+0xb6>
 8006b66:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006b6a:	b672      	cpsid	i
 8006b6c:	f383 8811 	msr	BASEPRI, r3
 8006b70:	f3bf 8f6f 	isb	sy
 8006b74:	f3bf 8f4f 	dsb	sy
 8006b78:	b662      	cpsie	i
 8006b7a:	60fb      	str	r3, [r7, #12]
 8006b7c:	bf00      	nop
 8006b7e:	bf00      	nop
 8006b80:	e7fd      	b.n	8006b7e <vTaskStartScheduler+0xb2>
 8006b82:	bf00      	nop
 8006b84:	3718      	adds	r7, #24
 8006b86:	46bd      	mov	sp, r7
 8006b88:	bd80      	pop	{r7, pc}
 8006b8a:	bf00      	nop
 8006b8c:	0800d9a8 	.word	0x0800d9a8
 8006b90:	08007209 	.word	0x08007209
 8006b94:	200005bc 	.word	0x200005bc
 8006b98:	200005b8 	.word	0x200005b8
 8006b9c:	200005a4 	.word	0x200005a4
 8006ba0:	2000059c 	.word	0x2000059c

08006ba4 <vTaskSuspendAll>:
 8006ba4:	b480      	push	{r7}
 8006ba6:	af00      	add	r7, sp, #0
 8006ba8:	4b04      	ldr	r3, [pc, #16]	@ (8006bbc <vTaskSuspendAll+0x18>)
 8006baa:	681b      	ldr	r3, [r3, #0]
 8006bac:	3301      	adds	r3, #1
 8006bae:	4a03      	ldr	r2, [pc, #12]	@ (8006bbc <vTaskSuspendAll+0x18>)
 8006bb0:	6013      	str	r3, [r2, #0]
 8006bb2:	bf00      	nop
 8006bb4:	46bd      	mov	sp, r7
 8006bb6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006bba:	4770      	bx	lr
 8006bbc:	200005c0 	.word	0x200005c0

08006bc0 <xTaskResumeAll>:
 8006bc0:	b580      	push	{r7, lr}
 8006bc2:	b084      	sub	sp, #16
 8006bc4:	af00      	add	r7, sp, #0
 8006bc6:	2300      	movs	r3, #0
 8006bc8:	60fb      	str	r3, [r7, #12]
 8006bca:	2300      	movs	r3, #0
 8006bcc:	60bb      	str	r3, [r7, #8]
 8006bce:	4b43      	ldr	r3, [pc, #268]	@ (8006cdc <xTaskResumeAll+0x11c>)
 8006bd0:	681b      	ldr	r3, [r3, #0]
 8006bd2:	2b00      	cmp	r3, #0
 8006bd4:	d10d      	bne.n	8006bf2 <xTaskResumeAll+0x32>
 8006bd6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006bda:	b672      	cpsid	i
 8006bdc:	f383 8811 	msr	BASEPRI, r3
 8006be0:	f3bf 8f6f 	isb	sy
 8006be4:	f3bf 8f4f 	dsb	sy
 8006be8:	b662      	cpsie	i
 8006bea:	603b      	str	r3, [r7, #0]
 8006bec:	bf00      	nop
 8006bee:	bf00      	nop
 8006bf0:	e7fd      	b.n	8006bee <xTaskResumeAll+0x2e>
 8006bf2:	f002 f8eb 	bl	8008dcc <vPortEnterCritical>
 8006bf6:	4b39      	ldr	r3, [pc, #228]	@ (8006cdc <xTaskResumeAll+0x11c>)
 8006bf8:	681b      	ldr	r3, [r3, #0]
 8006bfa:	3b01      	subs	r3, #1
 8006bfc:	4a37      	ldr	r2, [pc, #220]	@ (8006cdc <xTaskResumeAll+0x11c>)
 8006bfe:	6013      	str	r3, [r2, #0]
 8006c00:	4b36      	ldr	r3, [pc, #216]	@ (8006cdc <xTaskResumeAll+0x11c>)
 8006c02:	681b      	ldr	r3, [r3, #0]
 8006c04:	2b00      	cmp	r3, #0
 8006c06:	d162      	bne.n	8006cce <xTaskResumeAll+0x10e>
 8006c08:	4b35      	ldr	r3, [pc, #212]	@ (8006ce0 <xTaskResumeAll+0x120>)
 8006c0a:	681b      	ldr	r3, [r3, #0]
 8006c0c:	2b00      	cmp	r3, #0
 8006c0e:	d05e      	beq.n	8006cce <xTaskResumeAll+0x10e>
 8006c10:	e02f      	b.n	8006c72 <xTaskResumeAll+0xb2>
 8006c12:	4b34      	ldr	r3, [pc, #208]	@ (8006ce4 <xTaskResumeAll+0x124>)
 8006c14:	68db      	ldr	r3, [r3, #12]
 8006c16:	68db      	ldr	r3, [r3, #12]
 8006c18:	60fb      	str	r3, [r7, #12]
 8006c1a:	68fb      	ldr	r3, [r7, #12]
 8006c1c:	3318      	adds	r3, #24
 8006c1e:	4618      	mov	r0, r3
 8006c20:	f7fe fcd0 	bl	80055c4 <uxListRemove>
 8006c24:	68fb      	ldr	r3, [r7, #12]
 8006c26:	3304      	adds	r3, #4
 8006c28:	4618      	mov	r0, r3
 8006c2a:	f7fe fccb 	bl	80055c4 <uxListRemove>
 8006c2e:	68fb      	ldr	r3, [r7, #12]
 8006c30:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006c32:	4b2d      	ldr	r3, [pc, #180]	@ (8006ce8 <xTaskResumeAll+0x128>)
 8006c34:	681b      	ldr	r3, [r3, #0]
 8006c36:	429a      	cmp	r2, r3
 8006c38:	d903      	bls.n	8006c42 <xTaskResumeAll+0x82>
 8006c3a:	68fb      	ldr	r3, [r7, #12]
 8006c3c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006c3e:	4a2a      	ldr	r2, [pc, #168]	@ (8006ce8 <xTaskResumeAll+0x128>)
 8006c40:	6013      	str	r3, [r2, #0]
 8006c42:	68fb      	ldr	r3, [r7, #12]
 8006c44:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006c46:	4613      	mov	r3, r2
 8006c48:	009b      	lsls	r3, r3, #2
 8006c4a:	4413      	add	r3, r2
 8006c4c:	009b      	lsls	r3, r3, #2
 8006c4e:	4a27      	ldr	r2, [pc, #156]	@ (8006cec <xTaskResumeAll+0x12c>)
 8006c50:	441a      	add	r2, r3
 8006c52:	68fb      	ldr	r3, [r7, #12]
 8006c54:	3304      	adds	r3, #4
 8006c56:	4619      	mov	r1, r3
 8006c58:	4610      	mov	r0, r2
 8006c5a:	f7fe fc56 	bl	800550a <vListInsertEnd>
 8006c5e:	68fb      	ldr	r3, [r7, #12]
 8006c60:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006c62:	4b23      	ldr	r3, [pc, #140]	@ (8006cf0 <xTaskResumeAll+0x130>)
 8006c64:	681b      	ldr	r3, [r3, #0]
 8006c66:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006c68:	429a      	cmp	r2, r3
 8006c6a:	d302      	bcc.n	8006c72 <xTaskResumeAll+0xb2>
 8006c6c:	4b21      	ldr	r3, [pc, #132]	@ (8006cf4 <xTaskResumeAll+0x134>)
 8006c6e:	2201      	movs	r2, #1
 8006c70:	601a      	str	r2, [r3, #0]
 8006c72:	4b1c      	ldr	r3, [pc, #112]	@ (8006ce4 <xTaskResumeAll+0x124>)
 8006c74:	681b      	ldr	r3, [r3, #0]
 8006c76:	2b00      	cmp	r3, #0
 8006c78:	d1cb      	bne.n	8006c12 <xTaskResumeAll+0x52>
 8006c7a:	68fb      	ldr	r3, [r7, #12]
 8006c7c:	2b00      	cmp	r3, #0
 8006c7e:	d001      	beq.n	8006c84 <xTaskResumeAll+0xc4>
 8006c80:	f000 fb7a 	bl	8007378 <prvResetNextTaskUnblockTime>
 8006c84:	4b1c      	ldr	r3, [pc, #112]	@ (8006cf8 <xTaskResumeAll+0x138>)
 8006c86:	681b      	ldr	r3, [r3, #0]
 8006c88:	607b      	str	r3, [r7, #4]
 8006c8a:	687b      	ldr	r3, [r7, #4]
 8006c8c:	2b00      	cmp	r3, #0
 8006c8e:	d010      	beq.n	8006cb2 <xTaskResumeAll+0xf2>
 8006c90:	f000 f858 	bl	8006d44 <xTaskIncrementTick>
 8006c94:	4603      	mov	r3, r0
 8006c96:	2b00      	cmp	r3, #0
 8006c98:	d002      	beq.n	8006ca0 <xTaskResumeAll+0xe0>
 8006c9a:	4b16      	ldr	r3, [pc, #88]	@ (8006cf4 <xTaskResumeAll+0x134>)
 8006c9c:	2201      	movs	r2, #1
 8006c9e:	601a      	str	r2, [r3, #0]
 8006ca0:	687b      	ldr	r3, [r7, #4]
 8006ca2:	3b01      	subs	r3, #1
 8006ca4:	607b      	str	r3, [r7, #4]
 8006ca6:	687b      	ldr	r3, [r7, #4]
 8006ca8:	2b00      	cmp	r3, #0
 8006caa:	d1f1      	bne.n	8006c90 <xTaskResumeAll+0xd0>
 8006cac:	4b12      	ldr	r3, [pc, #72]	@ (8006cf8 <xTaskResumeAll+0x138>)
 8006cae:	2200      	movs	r2, #0
 8006cb0:	601a      	str	r2, [r3, #0]
 8006cb2:	4b10      	ldr	r3, [pc, #64]	@ (8006cf4 <xTaskResumeAll+0x134>)
 8006cb4:	681b      	ldr	r3, [r3, #0]
 8006cb6:	2b00      	cmp	r3, #0
 8006cb8:	d009      	beq.n	8006cce <xTaskResumeAll+0x10e>
 8006cba:	2301      	movs	r3, #1
 8006cbc:	60bb      	str	r3, [r7, #8]
 8006cbe:	4b0f      	ldr	r3, [pc, #60]	@ (8006cfc <xTaskResumeAll+0x13c>)
 8006cc0:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8006cc4:	601a      	str	r2, [r3, #0]
 8006cc6:	f3bf 8f4f 	dsb	sy
 8006cca:	f3bf 8f6f 	isb	sy
 8006cce:	f002 f8b3 	bl	8008e38 <vPortExitCritical>
 8006cd2:	68bb      	ldr	r3, [r7, #8]
 8006cd4:	4618      	mov	r0, r3
 8006cd6:	3710      	adds	r7, #16
 8006cd8:	46bd      	mov	sp, r7
 8006cda:	bd80      	pop	{r7, pc}
 8006cdc:	200005c0 	.word	0x200005c0
 8006ce0:	20000598 	.word	0x20000598
 8006ce4:	20000558 	.word	0x20000558
 8006ce8:	200005a0 	.word	0x200005a0
 8006cec:	200000c8 	.word	0x200000c8
 8006cf0:	200000c4 	.word	0x200000c4
 8006cf4:	200005ac 	.word	0x200005ac
 8006cf8:	200005a8 	.word	0x200005a8
 8006cfc:	e000ed04 	.word	0xe000ed04

08006d00 <xTaskGetTickCount>:
 8006d00:	b480      	push	{r7}
 8006d02:	b083      	sub	sp, #12
 8006d04:	af00      	add	r7, sp, #0
 8006d06:	4b05      	ldr	r3, [pc, #20]	@ (8006d1c <xTaskGetTickCount+0x1c>)
 8006d08:	681b      	ldr	r3, [r3, #0]
 8006d0a:	607b      	str	r3, [r7, #4]
 8006d0c:	687b      	ldr	r3, [r7, #4]
 8006d0e:	4618      	mov	r0, r3
 8006d10:	370c      	adds	r7, #12
 8006d12:	46bd      	mov	sp, r7
 8006d14:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006d18:	4770      	bx	lr
 8006d1a:	bf00      	nop
 8006d1c:	2000059c 	.word	0x2000059c

08006d20 <xTaskGetTickCountFromISR>:
 8006d20:	b580      	push	{r7, lr}
 8006d22:	b082      	sub	sp, #8
 8006d24:	af00      	add	r7, sp, #0
 8006d26:	f002 f939 	bl	8008f9c <vPortValidateInterruptPriority>
 8006d2a:	2300      	movs	r3, #0
 8006d2c:	607b      	str	r3, [r7, #4]
 8006d2e:	4b04      	ldr	r3, [pc, #16]	@ (8006d40 <xTaskGetTickCountFromISR+0x20>)
 8006d30:	681b      	ldr	r3, [r3, #0]
 8006d32:	603b      	str	r3, [r7, #0]
 8006d34:	683b      	ldr	r3, [r7, #0]
 8006d36:	4618      	mov	r0, r3
 8006d38:	3708      	adds	r7, #8
 8006d3a:	46bd      	mov	sp, r7
 8006d3c:	bd80      	pop	{r7, pc}
 8006d3e:	bf00      	nop
 8006d40:	2000059c 	.word	0x2000059c

08006d44 <xTaskIncrementTick>:
 8006d44:	b580      	push	{r7, lr}
 8006d46:	b086      	sub	sp, #24
 8006d48:	af00      	add	r7, sp, #0
 8006d4a:	2300      	movs	r3, #0
 8006d4c:	617b      	str	r3, [r7, #20]
 8006d4e:	4b50      	ldr	r3, [pc, #320]	@ (8006e90 <xTaskIncrementTick+0x14c>)
 8006d50:	681b      	ldr	r3, [r3, #0]
 8006d52:	2b00      	cmp	r3, #0
 8006d54:	f040 808c 	bne.w	8006e70 <xTaskIncrementTick+0x12c>
 8006d58:	4b4e      	ldr	r3, [pc, #312]	@ (8006e94 <xTaskIncrementTick+0x150>)
 8006d5a:	681b      	ldr	r3, [r3, #0]
 8006d5c:	3301      	adds	r3, #1
 8006d5e:	613b      	str	r3, [r7, #16]
 8006d60:	4a4c      	ldr	r2, [pc, #304]	@ (8006e94 <xTaskIncrementTick+0x150>)
 8006d62:	693b      	ldr	r3, [r7, #16]
 8006d64:	6013      	str	r3, [r2, #0]
 8006d66:	693b      	ldr	r3, [r7, #16]
 8006d68:	2b00      	cmp	r3, #0
 8006d6a:	d123      	bne.n	8006db4 <xTaskIncrementTick+0x70>
 8006d6c:	4b4a      	ldr	r3, [pc, #296]	@ (8006e98 <xTaskIncrementTick+0x154>)
 8006d6e:	681b      	ldr	r3, [r3, #0]
 8006d70:	681b      	ldr	r3, [r3, #0]
 8006d72:	2b00      	cmp	r3, #0
 8006d74:	d00d      	beq.n	8006d92 <xTaskIncrementTick+0x4e>
 8006d76:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006d7a:	b672      	cpsid	i
 8006d7c:	f383 8811 	msr	BASEPRI, r3
 8006d80:	f3bf 8f6f 	isb	sy
 8006d84:	f3bf 8f4f 	dsb	sy
 8006d88:	b662      	cpsie	i
 8006d8a:	603b      	str	r3, [r7, #0]
 8006d8c:	bf00      	nop
 8006d8e:	bf00      	nop
 8006d90:	e7fd      	b.n	8006d8e <xTaskIncrementTick+0x4a>
 8006d92:	4b41      	ldr	r3, [pc, #260]	@ (8006e98 <xTaskIncrementTick+0x154>)
 8006d94:	681b      	ldr	r3, [r3, #0]
 8006d96:	60fb      	str	r3, [r7, #12]
 8006d98:	4b40      	ldr	r3, [pc, #256]	@ (8006e9c <xTaskIncrementTick+0x158>)
 8006d9a:	681b      	ldr	r3, [r3, #0]
 8006d9c:	4a3e      	ldr	r2, [pc, #248]	@ (8006e98 <xTaskIncrementTick+0x154>)
 8006d9e:	6013      	str	r3, [r2, #0]
 8006da0:	4a3e      	ldr	r2, [pc, #248]	@ (8006e9c <xTaskIncrementTick+0x158>)
 8006da2:	68fb      	ldr	r3, [r7, #12]
 8006da4:	6013      	str	r3, [r2, #0]
 8006da6:	4b3e      	ldr	r3, [pc, #248]	@ (8006ea0 <xTaskIncrementTick+0x15c>)
 8006da8:	681b      	ldr	r3, [r3, #0]
 8006daa:	3301      	adds	r3, #1
 8006dac:	4a3c      	ldr	r2, [pc, #240]	@ (8006ea0 <xTaskIncrementTick+0x15c>)
 8006dae:	6013      	str	r3, [r2, #0]
 8006db0:	f000 fae2 	bl	8007378 <prvResetNextTaskUnblockTime>
 8006db4:	4b3b      	ldr	r3, [pc, #236]	@ (8006ea4 <xTaskIncrementTick+0x160>)
 8006db6:	681b      	ldr	r3, [r3, #0]
 8006db8:	693a      	ldr	r2, [r7, #16]
 8006dba:	429a      	cmp	r2, r3
 8006dbc:	d349      	bcc.n	8006e52 <xTaskIncrementTick+0x10e>
 8006dbe:	4b36      	ldr	r3, [pc, #216]	@ (8006e98 <xTaskIncrementTick+0x154>)
 8006dc0:	681b      	ldr	r3, [r3, #0]
 8006dc2:	681b      	ldr	r3, [r3, #0]
 8006dc4:	2b00      	cmp	r3, #0
 8006dc6:	d104      	bne.n	8006dd2 <xTaskIncrementTick+0x8e>
 8006dc8:	4b36      	ldr	r3, [pc, #216]	@ (8006ea4 <xTaskIncrementTick+0x160>)
 8006dca:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8006dce:	601a      	str	r2, [r3, #0]
 8006dd0:	e03f      	b.n	8006e52 <xTaskIncrementTick+0x10e>
 8006dd2:	4b31      	ldr	r3, [pc, #196]	@ (8006e98 <xTaskIncrementTick+0x154>)
 8006dd4:	681b      	ldr	r3, [r3, #0]
 8006dd6:	68db      	ldr	r3, [r3, #12]
 8006dd8:	68db      	ldr	r3, [r3, #12]
 8006dda:	60bb      	str	r3, [r7, #8]
 8006ddc:	68bb      	ldr	r3, [r7, #8]
 8006dde:	685b      	ldr	r3, [r3, #4]
 8006de0:	607b      	str	r3, [r7, #4]
 8006de2:	693a      	ldr	r2, [r7, #16]
 8006de4:	687b      	ldr	r3, [r7, #4]
 8006de6:	429a      	cmp	r2, r3
 8006de8:	d203      	bcs.n	8006df2 <xTaskIncrementTick+0xae>
 8006dea:	4a2e      	ldr	r2, [pc, #184]	@ (8006ea4 <xTaskIncrementTick+0x160>)
 8006dec:	687b      	ldr	r3, [r7, #4]
 8006dee:	6013      	str	r3, [r2, #0]
 8006df0:	e02f      	b.n	8006e52 <xTaskIncrementTick+0x10e>
 8006df2:	68bb      	ldr	r3, [r7, #8]
 8006df4:	3304      	adds	r3, #4
 8006df6:	4618      	mov	r0, r3
 8006df8:	f7fe fbe4 	bl	80055c4 <uxListRemove>
 8006dfc:	68bb      	ldr	r3, [r7, #8]
 8006dfe:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8006e00:	2b00      	cmp	r3, #0
 8006e02:	d004      	beq.n	8006e0e <xTaskIncrementTick+0xca>
 8006e04:	68bb      	ldr	r3, [r7, #8]
 8006e06:	3318      	adds	r3, #24
 8006e08:	4618      	mov	r0, r3
 8006e0a:	f7fe fbdb 	bl	80055c4 <uxListRemove>
 8006e0e:	68bb      	ldr	r3, [r7, #8]
 8006e10:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006e12:	4b25      	ldr	r3, [pc, #148]	@ (8006ea8 <xTaskIncrementTick+0x164>)
 8006e14:	681b      	ldr	r3, [r3, #0]
 8006e16:	429a      	cmp	r2, r3
 8006e18:	d903      	bls.n	8006e22 <xTaskIncrementTick+0xde>
 8006e1a:	68bb      	ldr	r3, [r7, #8]
 8006e1c:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006e1e:	4a22      	ldr	r2, [pc, #136]	@ (8006ea8 <xTaskIncrementTick+0x164>)
 8006e20:	6013      	str	r3, [r2, #0]
 8006e22:	68bb      	ldr	r3, [r7, #8]
 8006e24:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006e26:	4613      	mov	r3, r2
 8006e28:	009b      	lsls	r3, r3, #2
 8006e2a:	4413      	add	r3, r2
 8006e2c:	009b      	lsls	r3, r3, #2
 8006e2e:	4a1f      	ldr	r2, [pc, #124]	@ (8006eac <xTaskIncrementTick+0x168>)
 8006e30:	441a      	add	r2, r3
 8006e32:	68bb      	ldr	r3, [r7, #8]
 8006e34:	3304      	adds	r3, #4
 8006e36:	4619      	mov	r1, r3
 8006e38:	4610      	mov	r0, r2
 8006e3a:	f7fe fb66 	bl	800550a <vListInsertEnd>
 8006e3e:	68bb      	ldr	r3, [r7, #8]
 8006e40:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006e42:	4b1b      	ldr	r3, [pc, #108]	@ (8006eb0 <xTaskIncrementTick+0x16c>)
 8006e44:	681b      	ldr	r3, [r3, #0]
 8006e46:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8006e48:	429a      	cmp	r2, r3
 8006e4a:	d3b8      	bcc.n	8006dbe <xTaskIncrementTick+0x7a>
 8006e4c:	2301      	movs	r3, #1
 8006e4e:	617b      	str	r3, [r7, #20]
 8006e50:	e7b5      	b.n	8006dbe <xTaskIncrementTick+0x7a>
 8006e52:	4b17      	ldr	r3, [pc, #92]	@ (8006eb0 <xTaskIncrementTick+0x16c>)
 8006e54:	681b      	ldr	r3, [r3, #0]
 8006e56:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8006e58:	4914      	ldr	r1, [pc, #80]	@ (8006eac <xTaskIncrementTick+0x168>)
 8006e5a:	4613      	mov	r3, r2
 8006e5c:	009b      	lsls	r3, r3, #2
 8006e5e:	4413      	add	r3, r2
 8006e60:	009b      	lsls	r3, r3, #2
 8006e62:	440b      	add	r3, r1
 8006e64:	681b      	ldr	r3, [r3, #0]
 8006e66:	2b01      	cmp	r3, #1
 8006e68:	d907      	bls.n	8006e7a <xTaskIncrementTick+0x136>
 8006e6a:	2301      	movs	r3, #1
 8006e6c:	617b      	str	r3, [r7, #20]
 8006e6e:	e004      	b.n	8006e7a <xTaskIncrementTick+0x136>
 8006e70:	4b10      	ldr	r3, [pc, #64]	@ (8006eb4 <xTaskIncrementTick+0x170>)
 8006e72:	681b      	ldr	r3, [r3, #0]
 8006e74:	3301      	adds	r3, #1
 8006e76:	4a0f      	ldr	r2, [pc, #60]	@ (8006eb4 <xTaskIncrementTick+0x170>)
 8006e78:	6013      	str	r3, [r2, #0]
 8006e7a:	4b0f      	ldr	r3, [pc, #60]	@ (8006eb8 <xTaskIncrementTick+0x174>)
 8006e7c:	681b      	ldr	r3, [r3, #0]
 8006e7e:	2b00      	cmp	r3, #0
 8006e80:	d001      	beq.n	8006e86 <xTaskIncrementTick+0x142>
 8006e82:	2301      	movs	r3, #1
 8006e84:	617b      	str	r3, [r7, #20]
 8006e86:	697b      	ldr	r3, [r7, #20]
 8006e88:	4618      	mov	r0, r3
 8006e8a:	3718      	adds	r7, #24
 8006e8c:	46bd      	mov	sp, r7
 8006e8e:	bd80      	pop	{r7, pc}
 8006e90:	200005c0 	.word	0x200005c0
 8006e94:	2000059c 	.word	0x2000059c
 8006e98:	20000550 	.word	0x20000550
 8006e9c:	20000554 	.word	0x20000554
 8006ea0:	200005b0 	.word	0x200005b0
 8006ea4:	200005b8 	.word	0x200005b8
 8006ea8:	200005a0 	.word	0x200005a0
 8006eac:	200000c8 	.word	0x200000c8
 8006eb0:	200000c4 	.word	0x200000c4
 8006eb4:	200005a8 	.word	0x200005a8
 8006eb8:	200005ac 	.word	0x200005ac

08006ebc <vTaskSwitchContext>:
 8006ebc:	b480      	push	{r7}
 8006ebe:	b085      	sub	sp, #20
 8006ec0:	af00      	add	r7, sp, #0
 8006ec2:	4b29      	ldr	r3, [pc, #164]	@ (8006f68 <vTaskSwitchContext+0xac>)
 8006ec4:	681b      	ldr	r3, [r3, #0]
 8006ec6:	2b00      	cmp	r3, #0
 8006ec8:	d003      	beq.n	8006ed2 <vTaskSwitchContext+0x16>
 8006eca:	4b28      	ldr	r3, [pc, #160]	@ (8006f6c <vTaskSwitchContext+0xb0>)
 8006ecc:	2201      	movs	r2, #1
 8006ece:	601a      	str	r2, [r3, #0]
 8006ed0:	e044      	b.n	8006f5c <vTaskSwitchContext+0xa0>
 8006ed2:	4b26      	ldr	r3, [pc, #152]	@ (8006f6c <vTaskSwitchContext+0xb0>)
 8006ed4:	2200      	movs	r2, #0
 8006ed6:	601a      	str	r2, [r3, #0]
 8006ed8:	4b25      	ldr	r3, [pc, #148]	@ (8006f70 <vTaskSwitchContext+0xb4>)
 8006eda:	681b      	ldr	r3, [r3, #0]
 8006edc:	60fb      	str	r3, [r7, #12]
 8006ede:	e013      	b.n	8006f08 <vTaskSwitchContext+0x4c>
 8006ee0:	68fb      	ldr	r3, [r7, #12]
 8006ee2:	2b00      	cmp	r3, #0
 8006ee4:	d10d      	bne.n	8006f02 <vTaskSwitchContext+0x46>
 8006ee6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006eea:	b672      	cpsid	i
 8006eec:	f383 8811 	msr	BASEPRI, r3
 8006ef0:	f3bf 8f6f 	isb	sy
 8006ef4:	f3bf 8f4f 	dsb	sy
 8006ef8:	b662      	cpsie	i
 8006efa:	607b      	str	r3, [r7, #4]
 8006efc:	bf00      	nop
 8006efe:	bf00      	nop
 8006f00:	e7fd      	b.n	8006efe <vTaskSwitchContext+0x42>
 8006f02:	68fb      	ldr	r3, [r7, #12]
 8006f04:	3b01      	subs	r3, #1
 8006f06:	60fb      	str	r3, [r7, #12]
 8006f08:	491a      	ldr	r1, [pc, #104]	@ (8006f74 <vTaskSwitchContext+0xb8>)
 8006f0a:	68fa      	ldr	r2, [r7, #12]
 8006f0c:	4613      	mov	r3, r2
 8006f0e:	009b      	lsls	r3, r3, #2
 8006f10:	4413      	add	r3, r2
 8006f12:	009b      	lsls	r3, r3, #2
 8006f14:	440b      	add	r3, r1
 8006f16:	681b      	ldr	r3, [r3, #0]
 8006f18:	2b00      	cmp	r3, #0
 8006f1a:	d0e1      	beq.n	8006ee0 <vTaskSwitchContext+0x24>
 8006f1c:	68fa      	ldr	r2, [r7, #12]
 8006f1e:	4613      	mov	r3, r2
 8006f20:	009b      	lsls	r3, r3, #2
 8006f22:	4413      	add	r3, r2
 8006f24:	009b      	lsls	r3, r3, #2
 8006f26:	4a13      	ldr	r2, [pc, #76]	@ (8006f74 <vTaskSwitchContext+0xb8>)
 8006f28:	4413      	add	r3, r2
 8006f2a:	60bb      	str	r3, [r7, #8]
 8006f2c:	68bb      	ldr	r3, [r7, #8]
 8006f2e:	685b      	ldr	r3, [r3, #4]
 8006f30:	685a      	ldr	r2, [r3, #4]
 8006f32:	68bb      	ldr	r3, [r7, #8]
 8006f34:	605a      	str	r2, [r3, #4]
 8006f36:	68bb      	ldr	r3, [r7, #8]
 8006f38:	685a      	ldr	r2, [r3, #4]
 8006f3a:	68bb      	ldr	r3, [r7, #8]
 8006f3c:	3308      	adds	r3, #8
 8006f3e:	429a      	cmp	r2, r3
 8006f40:	d104      	bne.n	8006f4c <vTaskSwitchContext+0x90>
 8006f42:	68bb      	ldr	r3, [r7, #8]
 8006f44:	685b      	ldr	r3, [r3, #4]
 8006f46:	685a      	ldr	r2, [r3, #4]
 8006f48:	68bb      	ldr	r3, [r7, #8]
 8006f4a:	605a      	str	r2, [r3, #4]
 8006f4c:	68bb      	ldr	r3, [r7, #8]
 8006f4e:	685b      	ldr	r3, [r3, #4]
 8006f50:	68db      	ldr	r3, [r3, #12]
 8006f52:	4a09      	ldr	r2, [pc, #36]	@ (8006f78 <vTaskSwitchContext+0xbc>)
 8006f54:	6013      	str	r3, [r2, #0]
 8006f56:	4a06      	ldr	r2, [pc, #24]	@ (8006f70 <vTaskSwitchContext+0xb4>)
 8006f58:	68fb      	ldr	r3, [r7, #12]
 8006f5a:	6013      	str	r3, [r2, #0]
 8006f5c:	bf00      	nop
 8006f5e:	3714      	adds	r7, #20
 8006f60:	46bd      	mov	sp, r7
 8006f62:	f85d 7b04 	ldr.w	r7, [sp], #4
 8006f66:	4770      	bx	lr
 8006f68:	200005c0 	.word	0x200005c0
 8006f6c:	200005ac 	.word	0x200005ac
 8006f70:	200005a0 	.word	0x200005a0
 8006f74:	200000c8 	.word	0x200000c8
 8006f78:	200000c4 	.word	0x200000c4

08006f7c <vTaskPlaceOnEventList>:
 8006f7c:	b580      	push	{r7, lr}
 8006f7e:	b084      	sub	sp, #16
 8006f80:	af00      	add	r7, sp, #0
 8006f82:	6078      	str	r0, [r7, #4]
 8006f84:	6039      	str	r1, [r7, #0]
 8006f86:	687b      	ldr	r3, [r7, #4]
 8006f88:	2b00      	cmp	r3, #0
 8006f8a:	d10d      	bne.n	8006fa8 <vTaskPlaceOnEventList+0x2c>
 8006f8c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006f90:	b672      	cpsid	i
 8006f92:	f383 8811 	msr	BASEPRI, r3
 8006f96:	f3bf 8f6f 	isb	sy
 8006f9a:	f3bf 8f4f 	dsb	sy
 8006f9e:	b662      	cpsie	i
 8006fa0:	60fb      	str	r3, [r7, #12]
 8006fa2:	bf00      	nop
 8006fa4:	bf00      	nop
 8006fa6:	e7fd      	b.n	8006fa4 <vTaskPlaceOnEventList+0x28>
 8006fa8:	4b07      	ldr	r3, [pc, #28]	@ (8006fc8 <vTaskPlaceOnEventList+0x4c>)
 8006faa:	681b      	ldr	r3, [r3, #0]
 8006fac:	3318      	adds	r3, #24
 8006fae:	4619      	mov	r1, r3
 8006fb0:	6878      	ldr	r0, [r7, #4]
 8006fb2:	f7fe face 	bl	8005552 <vListInsert>
 8006fb6:	2101      	movs	r1, #1
 8006fb8:	6838      	ldr	r0, [r7, #0]
 8006fba:	f000 fb93 	bl	80076e4 <prvAddCurrentTaskToDelayedList>
 8006fbe:	bf00      	nop
 8006fc0:	3710      	adds	r7, #16
 8006fc2:	46bd      	mov	sp, r7
 8006fc4:	bd80      	pop	{r7, pc}
 8006fc6:	bf00      	nop
 8006fc8:	200000c4 	.word	0x200000c4

08006fcc <vTaskPlaceOnEventListRestricted>:
 8006fcc:	b580      	push	{r7, lr}
 8006fce:	b086      	sub	sp, #24
 8006fd0:	af00      	add	r7, sp, #0
 8006fd2:	60f8      	str	r0, [r7, #12]
 8006fd4:	60b9      	str	r1, [r7, #8]
 8006fd6:	607a      	str	r2, [r7, #4]
 8006fd8:	68fb      	ldr	r3, [r7, #12]
 8006fda:	2b00      	cmp	r3, #0
 8006fdc:	d10d      	bne.n	8006ffa <vTaskPlaceOnEventListRestricted+0x2e>
 8006fde:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8006fe2:	b672      	cpsid	i
 8006fe4:	f383 8811 	msr	BASEPRI, r3
 8006fe8:	f3bf 8f6f 	isb	sy
 8006fec:	f3bf 8f4f 	dsb	sy
 8006ff0:	b662      	cpsie	i
 8006ff2:	617b      	str	r3, [r7, #20]
 8006ff4:	bf00      	nop
 8006ff6:	bf00      	nop
 8006ff8:	e7fd      	b.n	8006ff6 <vTaskPlaceOnEventListRestricted+0x2a>
 8006ffa:	4b0a      	ldr	r3, [pc, #40]	@ (8007024 <vTaskPlaceOnEventListRestricted+0x58>)
 8006ffc:	681b      	ldr	r3, [r3, #0]
 8006ffe:	3318      	adds	r3, #24
 8007000:	4619      	mov	r1, r3
 8007002:	68f8      	ldr	r0, [r7, #12]
 8007004:	f7fe fa81 	bl	800550a <vListInsertEnd>
 8007008:	687b      	ldr	r3, [r7, #4]
 800700a:	2b00      	cmp	r3, #0
 800700c:	d002      	beq.n	8007014 <vTaskPlaceOnEventListRestricted+0x48>
 800700e:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8007012:	60bb      	str	r3, [r7, #8]
 8007014:	6879      	ldr	r1, [r7, #4]
 8007016:	68b8      	ldr	r0, [r7, #8]
 8007018:	f000 fb64 	bl	80076e4 <prvAddCurrentTaskToDelayedList>
 800701c:	bf00      	nop
 800701e:	3718      	adds	r7, #24
 8007020:	46bd      	mov	sp, r7
 8007022:	bd80      	pop	{r7, pc}
 8007024:	200000c4 	.word	0x200000c4

08007028 <xTaskRemoveFromEventList>:
 8007028:	b580      	push	{r7, lr}
 800702a:	b086      	sub	sp, #24
 800702c:	af00      	add	r7, sp, #0
 800702e:	6078      	str	r0, [r7, #4]
 8007030:	687b      	ldr	r3, [r7, #4]
 8007032:	68db      	ldr	r3, [r3, #12]
 8007034:	68db      	ldr	r3, [r3, #12]
 8007036:	613b      	str	r3, [r7, #16]
 8007038:	693b      	ldr	r3, [r7, #16]
 800703a:	2b00      	cmp	r3, #0
 800703c:	d10d      	bne.n	800705a <xTaskRemoveFromEventList+0x32>
 800703e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007042:	b672      	cpsid	i
 8007044:	f383 8811 	msr	BASEPRI, r3
 8007048:	f3bf 8f6f 	isb	sy
 800704c:	f3bf 8f4f 	dsb	sy
 8007050:	b662      	cpsie	i
 8007052:	60fb      	str	r3, [r7, #12]
 8007054:	bf00      	nop
 8007056:	bf00      	nop
 8007058:	e7fd      	b.n	8007056 <xTaskRemoveFromEventList+0x2e>
 800705a:	693b      	ldr	r3, [r7, #16]
 800705c:	3318      	adds	r3, #24
 800705e:	4618      	mov	r0, r3
 8007060:	f7fe fab0 	bl	80055c4 <uxListRemove>
 8007064:	4b1d      	ldr	r3, [pc, #116]	@ (80070dc <xTaskRemoveFromEventList+0xb4>)
 8007066:	681b      	ldr	r3, [r3, #0]
 8007068:	2b00      	cmp	r3, #0
 800706a:	d11d      	bne.n	80070a8 <xTaskRemoveFromEventList+0x80>
 800706c:	693b      	ldr	r3, [r7, #16]
 800706e:	3304      	adds	r3, #4
 8007070:	4618      	mov	r0, r3
 8007072:	f7fe faa7 	bl	80055c4 <uxListRemove>
 8007076:	693b      	ldr	r3, [r7, #16]
 8007078:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800707a:	4b19      	ldr	r3, [pc, #100]	@ (80070e0 <xTaskRemoveFromEventList+0xb8>)
 800707c:	681b      	ldr	r3, [r3, #0]
 800707e:	429a      	cmp	r2, r3
 8007080:	d903      	bls.n	800708a <xTaskRemoveFromEventList+0x62>
 8007082:	693b      	ldr	r3, [r7, #16]
 8007084:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007086:	4a16      	ldr	r2, [pc, #88]	@ (80070e0 <xTaskRemoveFromEventList+0xb8>)
 8007088:	6013      	str	r3, [r2, #0]
 800708a:	693b      	ldr	r3, [r7, #16]
 800708c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800708e:	4613      	mov	r3, r2
 8007090:	009b      	lsls	r3, r3, #2
 8007092:	4413      	add	r3, r2
 8007094:	009b      	lsls	r3, r3, #2
 8007096:	4a13      	ldr	r2, [pc, #76]	@ (80070e4 <xTaskRemoveFromEventList+0xbc>)
 8007098:	441a      	add	r2, r3
 800709a:	693b      	ldr	r3, [r7, #16]
 800709c:	3304      	adds	r3, #4
 800709e:	4619      	mov	r1, r3
 80070a0:	4610      	mov	r0, r2
 80070a2:	f7fe fa32 	bl	800550a <vListInsertEnd>
 80070a6:	e005      	b.n	80070b4 <xTaskRemoveFromEventList+0x8c>
 80070a8:	693b      	ldr	r3, [r7, #16]
 80070aa:	3318      	adds	r3, #24
 80070ac:	4619      	mov	r1, r3
 80070ae:	480e      	ldr	r0, [pc, #56]	@ (80070e8 <xTaskRemoveFromEventList+0xc0>)
 80070b0:	f7fe fa2b 	bl	800550a <vListInsertEnd>
 80070b4:	693b      	ldr	r3, [r7, #16]
 80070b6:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 80070b8:	4b0c      	ldr	r3, [pc, #48]	@ (80070ec <xTaskRemoveFromEventList+0xc4>)
 80070ba:	681b      	ldr	r3, [r3, #0]
 80070bc:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80070be:	429a      	cmp	r2, r3
 80070c0:	d905      	bls.n	80070ce <xTaskRemoveFromEventList+0xa6>
 80070c2:	2301      	movs	r3, #1
 80070c4:	617b      	str	r3, [r7, #20]
 80070c6:	4b0a      	ldr	r3, [pc, #40]	@ (80070f0 <xTaskRemoveFromEventList+0xc8>)
 80070c8:	2201      	movs	r2, #1
 80070ca:	601a      	str	r2, [r3, #0]
 80070cc:	e001      	b.n	80070d2 <xTaskRemoveFromEventList+0xaa>
 80070ce:	2300      	movs	r3, #0
 80070d0:	617b      	str	r3, [r7, #20]
 80070d2:	697b      	ldr	r3, [r7, #20]
 80070d4:	4618      	mov	r0, r3
 80070d6:	3718      	adds	r7, #24
 80070d8:	46bd      	mov	sp, r7
 80070da:	bd80      	pop	{r7, pc}
 80070dc:	200005c0 	.word	0x200005c0
 80070e0:	200005a0 	.word	0x200005a0
 80070e4:	200000c8 	.word	0x200000c8
 80070e8:	20000558 	.word	0x20000558
 80070ec:	200000c4 	.word	0x200000c4
 80070f0:	200005ac 	.word	0x200005ac

080070f4 <vTaskInternalSetTimeOutState>:
 80070f4:	b480      	push	{r7}
 80070f6:	b083      	sub	sp, #12
 80070f8:	af00      	add	r7, sp, #0
 80070fa:	6078      	str	r0, [r7, #4]
 80070fc:	4b06      	ldr	r3, [pc, #24]	@ (8007118 <vTaskInternalSetTimeOutState+0x24>)
 80070fe:	681a      	ldr	r2, [r3, #0]
 8007100:	687b      	ldr	r3, [r7, #4]
 8007102:	601a      	str	r2, [r3, #0]
 8007104:	4b05      	ldr	r3, [pc, #20]	@ (800711c <vTaskInternalSetTimeOutState+0x28>)
 8007106:	681a      	ldr	r2, [r3, #0]
 8007108:	687b      	ldr	r3, [r7, #4]
 800710a:	605a      	str	r2, [r3, #4]
 800710c:	bf00      	nop
 800710e:	370c      	adds	r7, #12
 8007110:	46bd      	mov	sp, r7
 8007112:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007116:	4770      	bx	lr
 8007118:	200005b0 	.word	0x200005b0
 800711c:	2000059c 	.word	0x2000059c

08007120 <xTaskCheckForTimeOut>:
 8007120:	b580      	push	{r7, lr}
 8007122:	b088      	sub	sp, #32
 8007124:	af00      	add	r7, sp, #0
 8007126:	6078      	str	r0, [r7, #4]
 8007128:	6039      	str	r1, [r7, #0]
 800712a:	687b      	ldr	r3, [r7, #4]
 800712c:	2b00      	cmp	r3, #0
 800712e:	d10d      	bne.n	800714c <xTaskCheckForTimeOut+0x2c>
 8007130:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007134:	b672      	cpsid	i
 8007136:	f383 8811 	msr	BASEPRI, r3
 800713a:	f3bf 8f6f 	isb	sy
 800713e:	f3bf 8f4f 	dsb	sy
 8007142:	b662      	cpsie	i
 8007144:	613b      	str	r3, [r7, #16]
 8007146:	bf00      	nop
 8007148:	bf00      	nop
 800714a:	e7fd      	b.n	8007148 <xTaskCheckForTimeOut+0x28>
 800714c:	683b      	ldr	r3, [r7, #0]
 800714e:	2b00      	cmp	r3, #0
 8007150:	d10d      	bne.n	800716e <xTaskCheckForTimeOut+0x4e>
 8007152:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007156:	b672      	cpsid	i
 8007158:	f383 8811 	msr	BASEPRI, r3
 800715c:	f3bf 8f6f 	isb	sy
 8007160:	f3bf 8f4f 	dsb	sy
 8007164:	b662      	cpsie	i
 8007166:	60fb      	str	r3, [r7, #12]
 8007168:	bf00      	nop
 800716a:	bf00      	nop
 800716c:	e7fd      	b.n	800716a <xTaskCheckForTimeOut+0x4a>
 800716e:	f001 fe2d 	bl	8008dcc <vPortEnterCritical>
 8007172:	4b1d      	ldr	r3, [pc, #116]	@ (80071e8 <xTaskCheckForTimeOut+0xc8>)
 8007174:	681b      	ldr	r3, [r3, #0]
 8007176:	61bb      	str	r3, [r7, #24]
 8007178:	687b      	ldr	r3, [r7, #4]
 800717a:	685b      	ldr	r3, [r3, #4]
 800717c:	69ba      	ldr	r2, [r7, #24]
 800717e:	1ad3      	subs	r3, r2, r3
 8007180:	617b      	str	r3, [r7, #20]
 8007182:	683b      	ldr	r3, [r7, #0]
 8007184:	681b      	ldr	r3, [r3, #0]
 8007186:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800718a:	d102      	bne.n	8007192 <xTaskCheckForTimeOut+0x72>
 800718c:	2300      	movs	r3, #0
 800718e:	61fb      	str	r3, [r7, #28]
 8007190:	e023      	b.n	80071da <xTaskCheckForTimeOut+0xba>
 8007192:	687b      	ldr	r3, [r7, #4]
 8007194:	681a      	ldr	r2, [r3, #0]
 8007196:	4b15      	ldr	r3, [pc, #84]	@ (80071ec <xTaskCheckForTimeOut+0xcc>)
 8007198:	681b      	ldr	r3, [r3, #0]
 800719a:	429a      	cmp	r2, r3
 800719c:	d007      	beq.n	80071ae <xTaskCheckForTimeOut+0x8e>
 800719e:	687b      	ldr	r3, [r7, #4]
 80071a0:	685b      	ldr	r3, [r3, #4]
 80071a2:	69ba      	ldr	r2, [r7, #24]
 80071a4:	429a      	cmp	r2, r3
 80071a6:	d302      	bcc.n	80071ae <xTaskCheckForTimeOut+0x8e>
 80071a8:	2301      	movs	r3, #1
 80071aa:	61fb      	str	r3, [r7, #28]
 80071ac:	e015      	b.n	80071da <xTaskCheckForTimeOut+0xba>
 80071ae:	683b      	ldr	r3, [r7, #0]
 80071b0:	681b      	ldr	r3, [r3, #0]
 80071b2:	697a      	ldr	r2, [r7, #20]
 80071b4:	429a      	cmp	r2, r3
 80071b6:	d20b      	bcs.n	80071d0 <xTaskCheckForTimeOut+0xb0>
 80071b8:	683b      	ldr	r3, [r7, #0]
 80071ba:	681a      	ldr	r2, [r3, #0]
 80071bc:	697b      	ldr	r3, [r7, #20]
 80071be:	1ad2      	subs	r2, r2, r3
 80071c0:	683b      	ldr	r3, [r7, #0]
 80071c2:	601a      	str	r2, [r3, #0]
 80071c4:	6878      	ldr	r0, [r7, #4]
 80071c6:	f7ff ff95 	bl	80070f4 <vTaskInternalSetTimeOutState>
 80071ca:	2300      	movs	r3, #0
 80071cc:	61fb      	str	r3, [r7, #28]
 80071ce:	e004      	b.n	80071da <xTaskCheckForTimeOut+0xba>
 80071d0:	683b      	ldr	r3, [r7, #0]
 80071d2:	2200      	movs	r2, #0
 80071d4:	601a      	str	r2, [r3, #0]
 80071d6:	2301      	movs	r3, #1
 80071d8:	61fb      	str	r3, [r7, #28]
 80071da:	f001 fe2d 	bl	8008e38 <vPortExitCritical>
 80071de:	69fb      	ldr	r3, [r7, #28]
 80071e0:	4618      	mov	r0, r3
 80071e2:	3720      	adds	r7, #32
 80071e4:	46bd      	mov	sp, r7
 80071e6:	bd80      	pop	{r7, pc}
 80071e8:	2000059c 	.word	0x2000059c
 80071ec:	200005b0 	.word	0x200005b0

080071f0 <vTaskMissedYield>:
 80071f0:	b480      	push	{r7}
 80071f2:	af00      	add	r7, sp, #0
 80071f4:	4b03      	ldr	r3, [pc, #12]	@ (8007204 <vTaskMissedYield+0x14>)
 80071f6:	2201      	movs	r2, #1
 80071f8:	601a      	str	r2, [r3, #0]
 80071fa:	bf00      	nop
 80071fc:	46bd      	mov	sp, r7
 80071fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007202:	4770      	bx	lr
 8007204:	200005ac 	.word	0x200005ac

08007208 <prvIdleTask>:
 8007208:	b580      	push	{r7, lr}
 800720a:	b082      	sub	sp, #8
 800720c:	af00      	add	r7, sp, #0
 800720e:	6078      	str	r0, [r7, #4]
 8007210:	f000 f852 	bl	80072b8 <prvCheckTasksWaitingTermination>
 8007214:	4b06      	ldr	r3, [pc, #24]	@ (8007230 <prvIdleTask+0x28>)
 8007216:	681b      	ldr	r3, [r3, #0]
 8007218:	2b01      	cmp	r3, #1
 800721a:	d9f9      	bls.n	8007210 <prvIdleTask+0x8>
 800721c:	4b05      	ldr	r3, [pc, #20]	@ (8007234 <prvIdleTask+0x2c>)
 800721e:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8007222:	601a      	str	r2, [r3, #0]
 8007224:	f3bf 8f4f 	dsb	sy
 8007228:	f3bf 8f6f 	isb	sy
 800722c:	e7f0      	b.n	8007210 <prvIdleTask+0x8>
 800722e:	bf00      	nop
 8007230:	200000c8 	.word	0x200000c8
 8007234:	e000ed04 	.word	0xe000ed04

08007238 <prvInitialiseTaskLists>:
 8007238:	b580      	push	{r7, lr}
 800723a:	b082      	sub	sp, #8
 800723c:	af00      	add	r7, sp, #0
 800723e:	2300      	movs	r3, #0
 8007240:	607b      	str	r3, [r7, #4]
 8007242:	e00c      	b.n	800725e <prvInitialiseTaskLists+0x26>
 8007244:	687a      	ldr	r2, [r7, #4]
 8007246:	4613      	mov	r3, r2
 8007248:	009b      	lsls	r3, r3, #2
 800724a:	4413      	add	r3, r2
 800724c:	009b      	lsls	r3, r3, #2
 800724e:	4a12      	ldr	r2, [pc, #72]	@ (8007298 <prvInitialiseTaskLists+0x60>)
 8007250:	4413      	add	r3, r2
 8007252:	4618      	mov	r0, r3
 8007254:	f7fe f92c 	bl	80054b0 <vListInitialise>
 8007258:	687b      	ldr	r3, [r7, #4]
 800725a:	3301      	adds	r3, #1
 800725c:	607b      	str	r3, [r7, #4]
 800725e:	687b      	ldr	r3, [r7, #4]
 8007260:	2b37      	cmp	r3, #55	@ 0x37
 8007262:	d9ef      	bls.n	8007244 <prvInitialiseTaskLists+0xc>
 8007264:	480d      	ldr	r0, [pc, #52]	@ (800729c <prvInitialiseTaskLists+0x64>)
 8007266:	f7fe f923 	bl	80054b0 <vListInitialise>
 800726a:	480d      	ldr	r0, [pc, #52]	@ (80072a0 <prvInitialiseTaskLists+0x68>)
 800726c:	f7fe f920 	bl	80054b0 <vListInitialise>
 8007270:	480c      	ldr	r0, [pc, #48]	@ (80072a4 <prvInitialiseTaskLists+0x6c>)
 8007272:	f7fe f91d 	bl	80054b0 <vListInitialise>
 8007276:	480c      	ldr	r0, [pc, #48]	@ (80072a8 <prvInitialiseTaskLists+0x70>)
 8007278:	f7fe f91a 	bl	80054b0 <vListInitialise>
 800727c:	480b      	ldr	r0, [pc, #44]	@ (80072ac <prvInitialiseTaskLists+0x74>)
 800727e:	f7fe f917 	bl	80054b0 <vListInitialise>
 8007282:	4b0b      	ldr	r3, [pc, #44]	@ (80072b0 <prvInitialiseTaskLists+0x78>)
 8007284:	4a05      	ldr	r2, [pc, #20]	@ (800729c <prvInitialiseTaskLists+0x64>)
 8007286:	601a      	str	r2, [r3, #0]
 8007288:	4b0a      	ldr	r3, [pc, #40]	@ (80072b4 <prvInitialiseTaskLists+0x7c>)
 800728a:	4a05      	ldr	r2, [pc, #20]	@ (80072a0 <prvInitialiseTaskLists+0x68>)
 800728c:	601a      	str	r2, [r3, #0]
 800728e:	bf00      	nop
 8007290:	3708      	adds	r7, #8
 8007292:	46bd      	mov	sp, r7
 8007294:	bd80      	pop	{r7, pc}
 8007296:	bf00      	nop
 8007298:	200000c8 	.word	0x200000c8
 800729c:	20000528 	.word	0x20000528
 80072a0:	2000053c 	.word	0x2000053c
 80072a4:	20000558 	.word	0x20000558
 80072a8:	2000056c 	.word	0x2000056c
 80072ac:	20000584 	.word	0x20000584
 80072b0:	20000550 	.word	0x20000550
 80072b4:	20000554 	.word	0x20000554

080072b8 <prvCheckTasksWaitingTermination>:
 80072b8:	b580      	push	{r7, lr}
 80072ba:	b082      	sub	sp, #8
 80072bc:	af00      	add	r7, sp, #0
 80072be:	e019      	b.n	80072f4 <prvCheckTasksWaitingTermination+0x3c>
 80072c0:	f001 fd84 	bl	8008dcc <vPortEnterCritical>
 80072c4:	4b10      	ldr	r3, [pc, #64]	@ (8007308 <prvCheckTasksWaitingTermination+0x50>)
 80072c6:	68db      	ldr	r3, [r3, #12]
 80072c8:	68db      	ldr	r3, [r3, #12]
 80072ca:	607b      	str	r3, [r7, #4]
 80072cc:	687b      	ldr	r3, [r7, #4]
 80072ce:	3304      	adds	r3, #4
 80072d0:	4618      	mov	r0, r3
 80072d2:	f7fe f977 	bl	80055c4 <uxListRemove>
 80072d6:	4b0d      	ldr	r3, [pc, #52]	@ (800730c <prvCheckTasksWaitingTermination+0x54>)
 80072d8:	681b      	ldr	r3, [r3, #0]
 80072da:	3b01      	subs	r3, #1
 80072dc:	4a0b      	ldr	r2, [pc, #44]	@ (800730c <prvCheckTasksWaitingTermination+0x54>)
 80072de:	6013      	str	r3, [r2, #0]
 80072e0:	4b0b      	ldr	r3, [pc, #44]	@ (8007310 <prvCheckTasksWaitingTermination+0x58>)
 80072e2:	681b      	ldr	r3, [r3, #0]
 80072e4:	3b01      	subs	r3, #1
 80072e6:	4a0a      	ldr	r2, [pc, #40]	@ (8007310 <prvCheckTasksWaitingTermination+0x58>)
 80072e8:	6013      	str	r3, [r2, #0]
 80072ea:	f001 fda5 	bl	8008e38 <vPortExitCritical>
 80072ee:	6878      	ldr	r0, [r7, #4]
 80072f0:	f000 f810 	bl	8007314 <prvDeleteTCB>
 80072f4:	4b06      	ldr	r3, [pc, #24]	@ (8007310 <prvCheckTasksWaitingTermination+0x58>)
 80072f6:	681b      	ldr	r3, [r3, #0]
 80072f8:	2b00      	cmp	r3, #0
 80072fa:	d1e1      	bne.n	80072c0 <prvCheckTasksWaitingTermination+0x8>
 80072fc:	bf00      	nop
 80072fe:	bf00      	nop
 8007300:	3708      	adds	r7, #8
 8007302:	46bd      	mov	sp, r7
 8007304:	bd80      	pop	{r7, pc}
 8007306:	bf00      	nop
 8007308:	2000056c 	.word	0x2000056c
 800730c:	20000598 	.word	0x20000598
 8007310:	20000580 	.word	0x20000580

08007314 <prvDeleteTCB>:
 8007314:	b580      	push	{r7, lr}
 8007316:	b084      	sub	sp, #16
 8007318:	af00      	add	r7, sp, #0
 800731a:	6078      	str	r0, [r7, #4]
 800731c:	687b      	ldr	r3, [r7, #4]
 800731e:	f893 3059 	ldrb.w	r3, [r3, #89]	@ 0x59
 8007322:	2b00      	cmp	r3, #0
 8007324:	d108      	bne.n	8007338 <prvDeleteTCB+0x24>
 8007326:	687b      	ldr	r3, [r7, #4]
 8007328:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800732a:	4618      	mov	r0, r3
 800732c:	f001 fb24 	bl	8008978 <vPortFree>
 8007330:	6878      	ldr	r0, [r7, #4]
 8007332:	f001 fb21 	bl	8008978 <vPortFree>
 8007336:	e01b      	b.n	8007370 <prvDeleteTCB+0x5c>
 8007338:	687b      	ldr	r3, [r7, #4]
 800733a:	f893 3059 	ldrb.w	r3, [r3, #89]	@ 0x59
 800733e:	2b01      	cmp	r3, #1
 8007340:	d103      	bne.n	800734a <prvDeleteTCB+0x36>
 8007342:	6878      	ldr	r0, [r7, #4]
 8007344:	f001 fb18 	bl	8008978 <vPortFree>
 8007348:	e012      	b.n	8007370 <prvDeleteTCB+0x5c>
 800734a:	687b      	ldr	r3, [r7, #4]
 800734c:	f893 3059 	ldrb.w	r3, [r3, #89]	@ 0x59
 8007350:	2b02      	cmp	r3, #2
 8007352:	d00d      	beq.n	8007370 <prvDeleteTCB+0x5c>
 8007354:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007358:	b672      	cpsid	i
 800735a:	f383 8811 	msr	BASEPRI, r3
 800735e:	f3bf 8f6f 	isb	sy
 8007362:	f3bf 8f4f 	dsb	sy
 8007366:	b662      	cpsie	i
 8007368:	60fb      	str	r3, [r7, #12]
 800736a:	bf00      	nop
 800736c:	bf00      	nop
 800736e:	e7fd      	b.n	800736c <prvDeleteTCB+0x58>
 8007370:	bf00      	nop
 8007372:	3710      	adds	r7, #16
 8007374:	46bd      	mov	sp, r7
 8007376:	bd80      	pop	{r7, pc}

08007378 <prvResetNextTaskUnblockTime>:
 8007378:	b480      	push	{r7}
 800737a:	b083      	sub	sp, #12
 800737c:	af00      	add	r7, sp, #0
 800737e:	4b0c      	ldr	r3, [pc, #48]	@ (80073b0 <prvResetNextTaskUnblockTime+0x38>)
 8007380:	681b      	ldr	r3, [r3, #0]
 8007382:	681b      	ldr	r3, [r3, #0]
 8007384:	2b00      	cmp	r3, #0
 8007386:	d104      	bne.n	8007392 <prvResetNextTaskUnblockTime+0x1a>
 8007388:	4b0a      	ldr	r3, [pc, #40]	@ (80073b4 <prvResetNextTaskUnblockTime+0x3c>)
 800738a:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 800738e:	601a      	str	r2, [r3, #0]
 8007390:	e008      	b.n	80073a4 <prvResetNextTaskUnblockTime+0x2c>
 8007392:	4b07      	ldr	r3, [pc, #28]	@ (80073b0 <prvResetNextTaskUnblockTime+0x38>)
 8007394:	681b      	ldr	r3, [r3, #0]
 8007396:	68db      	ldr	r3, [r3, #12]
 8007398:	68db      	ldr	r3, [r3, #12]
 800739a:	607b      	str	r3, [r7, #4]
 800739c:	687b      	ldr	r3, [r7, #4]
 800739e:	685b      	ldr	r3, [r3, #4]
 80073a0:	4a04      	ldr	r2, [pc, #16]	@ (80073b4 <prvResetNextTaskUnblockTime+0x3c>)
 80073a2:	6013      	str	r3, [r2, #0]
 80073a4:	bf00      	nop
 80073a6:	370c      	adds	r7, #12
 80073a8:	46bd      	mov	sp, r7
 80073aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80073ae:	4770      	bx	lr
 80073b0:	20000550 	.word	0x20000550
 80073b4:	200005b8 	.word	0x200005b8

080073b8 <xTaskGetSchedulerState>:
 80073b8:	b480      	push	{r7}
 80073ba:	b083      	sub	sp, #12
 80073bc:	af00      	add	r7, sp, #0
 80073be:	4b0b      	ldr	r3, [pc, #44]	@ (80073ec <xTaskGetSchedulerState+0x34>)
 80073c0:	681b      	ldr	r3, [r3, #0]
 80073c2:	2b00      	cmp	r3, #0
 80073c4:	d102      	bne.n	80073cc <xTaskGetSchedulerState+0x14>
 80073c6:	2301      	movs	r3, #1
 80073c8:	607b      	str	r3, [r7, #4]
 80073ca:	e008      	b.n	80073de <xTaskGetSchedulerState+0x26>
 80073cc:	4b08      	ldr	r3, [pc, #32]	@ (80073f0 <xTaskGetSchedulerState+0x38>)
 80073ce:	681b      	ldr	r3, [r3, #0]
 80073d0:	2b00      	cmp	r3, #0
 80073d2:	d102      	bne.n	80073da <xTaskGetSchedulerState+0x22>
 80073d4:	2302      	movs	r3, #2
 80073d6:	607b      	str	r3, [r7, #4]
 80073d8:	e001      	b.n	80073de <xTaskGetSchedulerState+0x26>
 80073da:	2300      	movs	r3, #0
 80073dc:	607b      	str	r3, [r7, #4]
 80073de:	687b      	ldr	r3, [r7, #4]
 80073e0:	4618      	mov	r0, r3
 80073e2:	370c      	adds	r7, #12
 80073e4:	46bd      	mov	sp, r7
 80073e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80073ea:	4770      	bx	lr
 80073ec:	200005a4 	.word	0x200005a4
 80073f0:	200005c0 	.word	0x200005c0

080073f4 <xTaskPriorityInherit>:
 80073f4:	b580      	push	{r7, lr}
 80073f6:	b084      	sub	sp, #16
 80073f8:	af00      	add	r7, sp, #0
 80073fa:	6078      	str	r0, [r7, #4]
 80073fc:	687b      	ldr	r3, [r7, #4]
 80073fe:	60bb      	str	r3, [r7, #8]
 8007400:	2300      	movs	r3, #0
 8007402:	60fb      	str	r3, [r7, #12]
 8007404:	687b      	ldr	r3, [r7, #4]
 8007406:	2b00      	cmp	r3, #0
 8007408:	d051      	beq.n	80074ae <xTaskPriorityInherit+0xba>
 800740a:	68bb      	ldr	r3, [r7, #8]
 800740c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800740e:	4b2a      	ldr	r3, [pc, #168]	@ (80074b8 <xTaskPriorityInherit+0xc4>)
 8007410:	681b      	ldr	r3, [r3, #0]
 8007412:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007414:	429a      	cmp	r2, r3
 8007416:	d241      	bcs.n	800749c <xTaskPriorityInherit+0xa8>
 8007418:	68bb      	ldr	r3, [r7, #8]
 800741a:	699b      	ldr	r3, [r3, #24]
 800741c:	2b00      	cmp	r3, #0
 800741e:	db06      	blt.n	800742e <xTaskPriorityInherit+0x3a>
 8007420:	4b25      	ldr	r3, [pc, #148]	@ (80074b8 <xTaskPriorityInherit+0xc4>)
 8007422:	681b      	ldr	r3, [r3, #0]
 8007424:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007426:	f1c3 0238 	rsb	r2, r3, #56	@ 0x38
 800742a:	68bb      	ldr	r3, [r7, #8]
 800742c:	619a      	str	r2, [r3, #24]
 800742e:	68bb      	ldr	r3, [r7, #8]
 8007430:	6959      	ldr	r1, [r3, #20]
 8007432:	68bb      	ldr	r3, [r7, #8]
 8007434:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007436:	4613      	mov	r3, r2
 8007438:	009b      	lsls	r3, r3, #2
 800743a:	4413      	add	r3, r2
 800743c:	009b      	lsls	r3, r3, #2
 800743e:	4a1f      	ldr	r2, [pc, #124]	@ (80074bc <xTaskPriorityInherit+0xc8>)
 8007440:	4413      	add	r3, r2
 8007442:	4299      	cmp	r1, r3
 8007444:	d122      	bne.n	800748c <xTaskPriorityInherit+0x98>
 8007446:	68bb      	ldr	r3, [r7, #8]
 8007448:	3304      	adds	r3, #4
 800744a:	4618      	mov	r0, r3
 800744c:	f7fe f8ba 	bl	80055c4 <uxListRemove>
 8007450:	4b19      	ldr	r3, [pc, #100]	@ (80074b8 <xTaskPriorityInherit+0xc4>)
 8007452:	681b      	ldr	r3, [r3, #0]
 8007454:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007456:	68bb      	ldr	r3, [r7, #8]
 8007458:	62da      	str	r2, [r3, #44]	@ 0x2c
 800745a:	68bb      	ldr	r3, [r7, #8]
 800745c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800745e:	4b18      	ldr	r3, [pc, #96]	@ (80074c0 <xTaskPriorityInherit+0xcc>)
 8007460:	681b      	ldr	r3, [r3, #0]
 8007462:	429a      	cmp	r2, r3
 8007464:	d903      	bls.n	800746e <xTaskPriorityInherit+0x7a>
 8007466:	68bb      	ldr	r3, [r7, #8]
 8007468:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800746a:	4a15      	ldr	r2, [pc, #84]	@ (80074c0 <xTaskPriorityInherit+0xcc>)
 800746c:	6013      	str	r3, [r2, #0]
 800746e:	68bb      	ldr	r3, [r7, #8]
 8007470:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007472:	4613      	mov	r3, r2
 8007474:	009b      	lsls	r3, r3, #2
 8007476:	4413      	add	r3, r2
 8007478:	009b      	lsls	r3, r3, #2
 800747a:	4a10      	ldr	r2, [pc, #64]	@ (80074bc <xTaskPriorityInherit+0xc8>)
 800747c:	441a      	add	r2, r3
 800747e:	68bb      	ldr	r3, [r7, #8]
 8007480:	3304      	adds	r3, #4
 8007482:	4619      	mov	r1, r3
 8007484:	4610      	mov	r0, r2
 8007486:	f7fe f840 	bl	800550a <vListInsertEnd>
 800748a:	e004      	b.n	8007496 <xTaskPriorityInherit+0xa2>
 800748c:	4b0a      	ldr	r3, [pc, #40]	@ (80074b8 <xTaskPriorityInherit+0xc4>)
 800748e:	681b      	ldr	r3, [r3, #0]
 8007490:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007492:	68bb      	ldr	r3, [r7, #8]
 8007494:	62da      	str	r2, [r3, #44]	@ 0x2c
 8007496:	2301      	movs	r3, #1
 8007498:	60fb      	str	r3, [r7, #12]
 800749a:	e008      	b.n	80074ae <xTaskPriorityInherit+0xba>
 800749c:	68bb      	ldr	r3, [r7, #8]
 800749e:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 80074a0:	4b05      	ldr	r3, [pc, #20]	@ (80074b8 <xTaskPriorityInherit+0xc4>)
 80074a2:	681b      	ldr	r3, [r3, #0]
 80074a4:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80074a6:	429a      	cmp	r2, r3
 80074a8:	d201      	bcs.n	80074ae <xTaskPriorityInherit+0xba>
 80074aa:	2301      	movs	r3, #1
 80074ac:	60fb      	str	r3, [r7, #12]
 80074ae:	68fb      	ldr	r3, [r7, #12]
 80074b0:	4618      	mov	r0, r3
 80074b2:	3710      	adds	r7, #16
 80074b4:	46bd      	mov	sp, r7
 80074b6:	bd80      	pop	{r7, pc}
 80074b8:	200000c4 	.word	0x200000c4
 80074bc:	200000c8 	.word	0x200000c8
 80074c0:	200005a0 	.word	0x200005a0

080074c4 <xTaskPriorityDisinherit>:
 80074c4:	b580      	push	{r7, lr}
 80074c6:	b086      	sub	sp, #24
 80074c8:	af00      	add	r7, sp, #0
 80074ca:	6078      	str	r0, [r7, #4]
 80074cc:	687b      	ldr	r3, [r7, #4]
 80074ce:	613b      	str	r3, [r7, #16]
 80074d0:	2300      	movs	r3, #0
 80074d2:	617b      	str	r3, [r7, #20]
 80074d4:	687b      	ldr	r3, [r7, #4]
 80074d6:	2b00      	cmp	r3, #0
 80074d8:	d05c      	beq.n	8007594 <xTaskPriorityDisinherit+0xd0>
 80074da:	4b31      	ldr	r3, [pc, #196]	@ (80075a0 <xTaskPriorityDisinherit+0xdc>)
 80074dc:	681b      	ldr	r3, [r3, #0]
 80074de:	693a      	ldr	r2, [r7, #16]
 80074e0:	429a      	cmp	r2, r3
 80074e2:	d00d      	beq.n	8007500 <xTaskPriorityDisinherit+0x3c>
 80074e4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80074e8:	b672      	cpsid	i
 80074ea:	f383 8811 	msr	BASEPRI, r3
 80074ee:	f3bf 8f6f 	isb	sy
 80074f2:	f3bf 8f4f 	dsb	sy
 80074f6:	b662      	cpsie	i
 80074f8:	60fb      	str	r3, [r7, #12]
 80074fa:	bf00      	nop
 80074fc:	bf00      	nop
 80074fe:	e7fd      	b.n	80074fc <xTaskPriorityDisinherit+0x38>
 8007500:	693b      	ldr	r3, [r7, #16]
 8007502:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8007504:	2b00      	cmp	r3, #0
 8007506:	d10d      	bne.n	8007524 <xTaskPriorityDisinherit+0x60>
 8007508:	f04f 0350 	mov.w	r3, #80	@ 0x50
 800750c:	b672      	cpsid	i
 800750e:	f383 8811 	msr	BASEPRI, r3
 8007512:	f3bf 8f6f 	isb	sy
 8007516:	f3bf 8f4f 	dsb	sy
 800751a:	b662      	cpsie	i
 800751c:	60bb      	str	r3, [r7, #8]
 800751e:	bf00      	nop
 8007520:	bf00      	nop
 8007522:	e7fd      	b.n	8007520 <xTaskPriorityDisinherit+0x5c>
 8007524:	693b      	ldr	r3, [r7, #16]
 8007526:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 8007528:	1e5a      	subs	r2, r3, #1
 800752a:	693b      	ldr	r3, [r7, #16]
 800752c:	651a      	str	r2, [r3, #80]	@ 0x50
 800752e:	693b      	ldr	r3, [r7, #16]
 8007530:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007532:	693b      	ldr	r3, [r7, #16]
 8007534:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8007536:	429a      	cmp	r2, r3
 8007538:	d02c      	beq.n	8007594 <xTaskPriorityDisinherit+0xd0>
 800753a:	693b      	ldr	r3, [r7, #16]
 800753c:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 800753e:	2b00      	cmp	r3, #0
 8007540:	d128      	bne.n	8007594 <xTaskPriorityDisinherit+0xd0>
 8007542:	693b      	ldr	r3, [r7, #16]
 8007544:	3304      	adds	r3, #4
 8007546:	4618      	mov	r0, r3
 8007548:	f7fe f83c 	bl	80055c4 <uxListRemove>
 800754c:	693b      	ldr	r3, [r7, #16]
 800754e:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8007550:	693b      	ldr	r3, [r7, #16]
 8007552:	62da      	str	r2, [r3, #44]	@ 0x2c
 8007554:	693b      	ldr	r3, [r7, #16]
 8007556:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007558:	f1c3 0238 	rsb	r2, r3, #56	@ 0x38
 800755c:	693b      	ldr	r3, [r7, #16]
 800755e:	619a      	str	r2, [r3, #24]
 8007560:	693b      	ldr	r3, [r7, #16]
 8007562:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007564:	4b0f      	ldr	r3, [pc, #60]	@ (80075a4 <xTaskPriorityDisinherit+0xe0>)
 8007566:	681b      	ldr	r3, [r3, #0]
 8007568:	429a      	cmp	r2, r3
 800756a:	d903      	bls.n	8007574 <xTaskPriorityDisinherit+0xb0>
 800756c:	693b      	ldr	r3, [r7, #16]
 800756e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007570:	4a0c      	ldr	r2, [pc, #48]	@ (80075a4 <xTaskPriorityDisinherit+0xe0>)
 8007572:	6013      	str	r3, [r2, #0]
 8007574:	693b      	ldr	r3, [r7, #16]
 8007576:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8007578:	4613      	mov	r3, r2
 800757a:	009b      	lsls	r3, r3, #2
 800757c:	4413      	add	r3, r2
 800757e:	009b      	lsls	r3, r3, #2
 8007580:	4a09      	ldr	r2, [pc, #36]	@ (80075a8 <xTaskPriorityDisinherit+0xe4>)
 8007582:	441a      	add	r2, r3
 8007584:	693b      	ldr	r3, [r7, #16]
 8007586:	3304      	adds	r3, #4
 8007588:	4619      	mov	r1, r3
 800758a:	4610      	mov	r0, r2
 800758c:	f7fd ffbd 	bl	800550a <vListInsertEnd>
 8007590:	2301      	movs	r3, #1
 8007592:	617b      	str	r3, [r7, #20]
 8007594:	697b      	ldr	r3, [r7, #20]
 8007596:	4618      	mov	r0, r3
 8007598:	3718      	adds	r7, #24
 800759a:	46bd      	mov	sp, r7
 800759c:	bd80      	pop	{r7, pc}
 800759e:	bf00      	nop
 80075a0:	200000c4 	.word	0x200000c4
 80075a4:	200005a0 	.word	0x200005a0
 80075a8:	200000c8 	.word	0x200000c8

080075ac <vTaskPriorityDisinheritAfterTimeout>:
 80075ac:	b580      	push	{r7, lr}
 80075ae:	b088      	sub	sp, #32
 80075b0:	af00      	add	r7, sp, #0
 80075b2:	6078      	str	r0, [r7, #4]
 80075b4:	6039      	str	r1, [r7, #0]
 80075b6:	687b      	ldr	r3, [r7, #4]
 80075b8:	61bb      	str	r3, [r7, #24]
 80075ba:	2301      	movs	r3, #1
 80075bc:	617b      	str	r3, [r7, #20]
 80075be:	687b      	ldr	r3, [r7, #4]
 80075c0:	2b00      	cmp	r3, #0
 80075c2:	d070      	beq.n	80076a6 <vTaskPriorityDisinheritAfterTimeout+0xfa>
 80075c4:	69bb      	ldr	r3, [r7, #24]
 80075c6:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80075c8:	2b00      	cmp	r3, #0
 80075ca:	d10d      	bne.n	80075e8 <vTaskPriorityDisinheritAfterTimeout+0x3c>
 80075cc:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80075d0:	b672      	cpsid	i
 80075d2:	f383 8811 	msr	BASEPRI, r3
 80075d6:	f3bf 8f6f 	isb	sy
 80075da:	f3bf 8f4f 	dsb	sy
 80075de:	b662      	cpsie	i
 80075e0:	60fb      	str	r3, [r7, #12]
 80075e2:	bf00      	nop
 80075e4:	bf00      	nop
 80075e6:	e7fd      	b.n	80075e4 <vTaskPriorityDisinheritAfterTimeout+0x38>
 80075e8:	69bb      	ldr	r3, [r7, #24]
 80075ea:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80075ec:	683a      	ldr	r2, [r7, #0]
 80075ee:	429a      	cmp	r2, r3
 80075f0:	d902      	bls.n	80075f8 <vTaskPriorityDisinheritAfterTimeout+0x4c>
 80075f2:	683b      	ldr	r3, [r7, #0]
 80075f4:	61fb      	str	r3, [r7, #28]
 80075f6:	e002      	b.n	80075fe <vTaskPriorityDisinheritAfterTimeout+0x52>
 80075f8:	69bb      	ldr	r3, [r7, #24]
 80075fa:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80075fc:	61fb      	str	r3, [r7, #28]
 80075fe:	69bb      	ldr	r3, [r7, #24]
 8007600:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007602:	69fa      	ldr	r2, [r7, #28]
 8007604:	429a      	cmp	r2, r3
 8007606:	d04e      	beq.n	80076a6 <vTaskPriorityDisinheritAfterTimeout+0xfa>
 8007608:	69bb      	ldr	r3, [r7, #24]
 800760a:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 800760c:	697a      	ldr	r2, [r7, #20]
 800760e:	429a      	cmp	r2, r3
 8007610:	d149      	bne.n	80076a6 <vTaskPriorityDisinheritAfterTimeout+0xfa>
 8007612:	4b27      	ldr	r3, [pc, #156]	@ (80076b0 <vTaskPriorityDisinheritAfterTimeout+0x104>)
 8007614:	681b      	ldr	r3, [r3, #0]
 8007616:	69ba      	ldr	r2, [r7, #24]
 8007618:	429a      	cmp	r2, r3
 800761a:	d10d      	bne.n	8007638 <vTaskPriorityDisinheritAfterTimeout+0x8c>
 800761c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007620:	b672      	cpsid	i
 8007622:	f383 8811 	msr	BASEPRI, r3
 8007626:	f3bf 8f6f 	isb	sy
 800762a:	f3bf 8f4f 	dsb	sy
 800762e:	b662      	cpsie	i
 8007630:	60bb      	str	r3, [r7, #8]
 8007632:	bf00      	nop
 8007634:	bf00      	nop
 8007636:	e7fd      	b.n	8007634 <vTaskPriorityDisinheritAfterTimeout+0x88>
 8007638:	69bb      	ldr	r3, [r7, #24]
 800763a:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800763c:	613b      	str	r3, [r7, #16]
 800763e:	69bb      	ldr	r3, [r7, #24]
 8007640:	69fa      	ldr	r2, [r7, #28]
 8007642:	62da      	str	r2, [r3, #44]	@ 0x2c
 8007644:	69bb      	ldr	r3, [r7, #24]
 8007646:	699b      	ldr	r3, [r3, #24]
 8007648:	2b00      	cmp	r3, #0
 800764a:	db04      	blt.n	8007656 <vTaskPriorityDisinheritAfterTimeout+0xaa>
 800764c:	69fb      	ldr	r3, [r7, #28]
 800764e:	f1c3 0238 	rsb	r2, r3, #56	@ 0x38
 8007652:	69bb      	ldr	r3, [r7, #24]
 8007654:	619a      	str	r2, [r3, #24]
 8007656:	69bb      	ldr	r3, [r7, #24]
 8007658:	6959      	ldr	r1, [r3, #20]
 800765a:	693a      	ldr	r2, [r7, #16]
 800765c:	4613      	mov	r3, r2
 800765e:	009b      	lsls	r3, r3, #2
 8007660:	4413      	add	r3, r2
 8007662:	009b      	lsls	r3, r3, #2
 8007664:	4a13      	ldr	r2, [pc, #76]	@ (80076b4 <vTaskPriorityDisinheritAfterTimeout+0x108>)
 8007666:	4413      	add	r3, r2
 8007668:	4299      	cmp	r1, r3
 800766a:	d11c      	bne.n	80076a6 <vTaskPriorityDisinheritAfterTimeout+0xfa>
 800766c:	69bb      	ldr	r3, [r7, #24]
 800766e:	3304      	adds	r3, #4
 8007670:	4618      	mov	r0, r3
 8007672:	f7fd ffa7 	bl	80055c4 <uxListRemove>
 8007676:	69bb      	ldr	r3, [r7, #24]
 8007678:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800767a:	4b0f      	ldr	r3, [pc, #60]	@ (80076b8 <vTaskPriorityDisinheritAfterTimeout+0x10c>)
 800767c:	681b      	ldr	r3, [r3, #0]
 800767e:	429a      	cmp	r2, r3
 8007680:	d903      	bls.n	800768a <vTaskPriorityDisinheritAfterTimeout+0xde>
 8007682:	69bb      	ldr	r3, [r7, #24]
 8007684:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8007686:	4a0c      	ldr	r2, [pc, #48]	@ (80076b8 <vTaskPriorityDisinheritAfterTimeout+0x10c>)
 8007688:	6013      	str	r3, [r2, #0]
 800768a:	69bb      	ldr	r3, [r7, #24]
 800768c:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 800768e:	4613      	mov	r3, r2
 8007690:	009b      	lsls	r3, r3, #2
 8007692:	4413      	add	r3, r2
 8007694:	009b      	lsls	r3, r3, #2
 8007696:	4a07      	ldr	r2, [pc, #28]	@ (80076b4 <vTaskPriorityDisinheritAfterTimeout+0x108>)
 8007698:	441a      	add	r2, r3
 800769a:	69bb      	ldr	r3, [r7, #24]
 800769c:	3304      	adds	r3, #4
 800769e:	4619      	mov	r1, r3
 80076a0:	4610      	mov	r0, r2
 80076a2:	f7fd ff32 	bl	800550a <vListInsertEnd>
 80076a6:	bf00      	nop
 80076a8:	3720      	adds	r7, #32
 80076aa:	46bd      	mov	sp, r7
 80076ac:	bd80      	pop	{r7, pc}
 80076ae:	bf00      	nop
 80076b0:	200000c4 	.word	0x200000c4
 80076b4:	200000c8 	.word	0x200000c8
 80076b8:	200005a0 	.word	0x200005a0

080076bc <pvTaskIncrementMutexHeldCount>:
 80076bc:	b480      	push	{r7}
 80076be:	af00      	add	r7, sp, #0
 80076c0:	4b07      	ldr	r3, [pc, #28]	@ (80076e0 <pvTaskIncrementMutexHeldCount+0x24>)
 80076c2:	681b      	ldr	r3, [r3, #0]
 80076c4:	2b00      	cmp	r3, #0
 80076c6:	d004      	beq.n	80076d2 <pvTaskIncrementMutexHeldCount+0x16>
 80076c8:	4b05      	ldr	r3, [pc, #20]	@ (80076e0 <pvTaskIncrementMutexHeldCount+0x24>)
 80076ca:	681b      	ldr	r3, [r3, #0]
 80076cc:	6d1a      	ldr	r2, [r3, #80]	@ 0x50
 80076ce:	3201      	adds	r2, #1
 80076d0:	651a      	str	r2, [r3, #80]	@ 0x50
 80076d2:	4b03      	ldr	r3, [pc, #12]	@ (80076e0 <pvTaskIncrementMutexHeldCount+0x24>)
 80076d4:	681b      	ldr	r3, [r3, #0]
 80076d6:	4618      	mov	r0, r3
 80076d8:	46bd      	mov	sp, r7
 80076da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80076de:	4770      	bx	lr
 80076e0:	200000c4 	.word	0x200000c4

080076e4 <prvAddCurrentTaskToDelayedList>:
 80076e4:	b580      	push	{r7, lr}
 80076e6:	b084      	sub	sp, #16
 80076e8:	af00      	add	r7, sp, #0
 80076ea:	6078      	str	r0, [r7, #4]
 80076ec:	6039      	str	r1, [r7, #0]
 80076ee:	4b21      	ldr	r3, [pc, #132]	@ (8007774 <prvAddCurrentTaskToDelayedList+0x90>)
 80076f0:	681b      	ldr	r3, [r3, #0]
 80076f2:	60fb      	str	r3, [r7, #12]
 80076f4:	4b20      	ldr	r3, [pc, #128]	@ (8007778 <prvAddCurrentTaskToDelayedList+0x94>)
 80076f6:	681b      	ldr	r3, [r3, #0]
 80076f8:	3304      	adds	r3, #4
 80076fa:	4618      	mov	r0, r3
 80076fc:	f7fd ff62 	bl	80055c4 <uxListRemove>
 8007700:	687b      	ldr	r3, [r7, #4]
 8007702:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8007706:	d10a      	bne.n	800771e <prvAddCurrentTaskToDelayedList+0x3a>
 8007708:	683b      	ldr	r3, [r7, #0]
 800770a:	2b00      	cmp	r3, #0
 800770c:	d007      	beq.n	800771e <prvAddCurrentTaskToDelayedList+0x3a>
 800770e:	4b1a      	ldr	r3, [pc, #104]	@ (8007778 <prvAddCurrentTaskToDelayedList+0x94>)
 8007710:	681b      	ldr	r3, [r3, #0]
 8007712:	3304      	adds	r3, #4
 8007714:	4619      	mov	r1, r3
 8007716:	4819      	ldr	r0, [pc, #100]	@ (800777c <prvAddCurrentTaskToDelayedList+0x98>)
 8007718:	f7fd fef7 	bl	800550a <vListInsertEnd>
 800771c:	e026      	b.n	800776c <prvAddCurrentTaskToDelayedList+0x88>
 800771e:	68fa      	ldr	r2, [r7, #12]
 8007720:	687b      	ldr	r3, [r7, #4]
 8007722:	4413      	add	r3, r2
 8007724:	60bb      	str	r3, [r7, #8]
 8007726:	4b14      	ldr	r3, [pc, #80]	@ (8007778 <prvAddCurrentTaskToDelayedList+0x94>)
 8007728:	681b      	ldr	r3, [r3, #0]
 800772a:	68ba      	ldr	r2, [r7, #8]
 800772c:	605a      	str	r2, [r3, #4]
 800772e:	68ba      	ldr	r2, [r7, #8]
 8007730:	68fb      	ldr	r3, [r7, #12]
 8007732:	429a      	cmp	r2, r3
 8007734:	d209      	bcs.n	800774a <prvAddCurrentTaskToDelayedList+0x66>
 8007736:	4b12      	ldr	r3, [pc, #72]	@ (8007780 <prvAddCurrentTaskToDelayedList+0x9c>)
 8007738:	681a      	ldr	r2, [r3, #0]
 800773a:	4b0f      	ldr	r3, [pc, #60]	@ (8007778 <prvAddCurrentTaskToDelayedList+0x94>)
 800773c:	681b      	ldr	r3, [r3, #0]
 800773e:	3304      	adds	r3, #4
 8007740:	4619      	mov	r1, r3
 8007742:	4610      	mov	r0, r2
 8007744:	f7fd ff05 	bl	8005552 <vListInsert>
 8007748:	e010      	b.n	800776c <prvAddCurrentTaskToDelayedList+0x88>
 800774a:	4b0e      	ldr	r3, [pc, #56]	@ (8007784 <prvAddCurrentTaskToDelayedList+0xa0>)
 800774c:	681a      	ldr	r2, [r3, #0]
 800774e:	4b0a      	ldr	r3, [pc, #40]	@ (8007778 <prvAddCurrentTaskToDelayedList+0x94>)
 8007750:	681b      	ldr	r3, [r3, #0]
 8007752:	3304      	adds	r3, #4
 8007754:	4619      	mov	r1, r3
 8007756:	4610      	mov	r0, r2
 8007758:	f7fd fefb 	bl	8005552 <vListInsert>
 800775c:	4b0a      	ldr	r3, [pc, #40]	@ (8007788 <prvAddCurrentTaskToDelayedList+0xa4>)
 800775e:	681b      	ldr	r3, [r3, #0]
 8007760:	68ba      	ldr	r2, [r7, #8]
 8007762:	429a      	cmp	r2, r3
 8007764:	d202      	bcs.n	800776c <prvAddCurrentTaskToDelayedList+0x88>
 8007766:	4a08      	ldr	r2, [pc, #32]	@ (8007788 <prvAddCurrentTaskToDelayedList+0xa4>)
 8007768:	68bb      	ldr	r3, [r7, #8]
 800776a:	6013      	str	r3, [r2, #0]
 800776c:	bf00      	nop
 800776e:	3710      	adds	r7, #16
 8007770:	46bd      	mov	sp, r7
 8007772:	bd80      	pop	{r7, pc}
 8007774:	2000059c 	.word	0x2000059c
 8007778:	200000c4 	.word	0x200000c4
 800777c:	20000584 	.word	0x20000584
 8007780:	20000554 	.word	0x20000554
 8007784:	20000550 	.word	0x20000550
 8007788:	200005b8 	.word	0x200005b8

0800778c <xTimerCreateTimerTask>:
 800778c:	b580      	push	{r7, lr}
 800778e:	b08a      	sub	sp, #40	@ 0x28
 8007790:	af04      	add	r7, sp, #16
 8007792:	2300      	movs	r3, #0
 8007794:	617b      	str	r3, [r7, #20]
 8007796:	f000 fb21 	bl	8007ddc <prvCheckForValidListAndQueue>
 800779a:	4b1e      	ldr	r3, [pc, #120]	@ (8007814 <xTimerCreateTimerTask+0x88>)
 800779c:	681b      	ldr	r3, [r3, #0]
 800779e:	2b00      	cmp	r3, #0
 80077a0:	d021      	beq.n	80077e6 <xTimerCreateTimerTask+0x5a>
 80077a2:	2300      	movs	r3, #0
 80077a4:	60fb      	str	r3, [r7, #12]
 80077a6:	2300      	movs	r3, #0
 80077a8:	60bb      	str	r3, [r7, #8]
 80077aa:	1d3a      	adds	r2, r7, #4
 80077ac:	f107 0108 	add.w	r1, r7, #8
 80077b0:	f107 030c 	add.w	r3, r7, #12
 80077b4:	4618      	mov	r0, r3
 80077b6:	f000 fff7 	bl	80087a8 <vApplicationGetTimerTaskMemory>
 80077ba:	6879      	ldr	r1, [r7, #4]
 80077bc:	68bb      	ldr	r3, [r7, #8]
 80077be:	68fa      	ldr	r2, [r7, #12]
 80077c0:	9202      	str	r2, [sp, #8]
 80077c2:	9301      	str	r3, [sp, #4]
 80077c4:	2302      	movs	r3, #2
 80077c6:	9300      	str	r3, [sp, #0]
 80077c8:	2300      	movs	r3, #0
 80077ca:	460a      	mov	r2, r1
 80077cc:	4912      	ldr	r1, [pc, #72]	@ (8007818 <xTimerCreateTimerTask+0x8c>)
 80077ce:	4813      	ldr	r0, [pc, #76]	@ (800781c <xTimerCreateTimerTask+0x90>)
 80077d0:	f7fe ff96 	bl	8006700 <xTaskCreateStatic>
 80077d4:	4603      	mov	r3, r0
 80077d6:	4a12      	ldr	r2, [pc, #72]	@ (8007820 <xTimerCreateTimerTask+0x94>)
 80077d8:	6013      	str	r3, [r2, #0]
 80077da:	4b11      	ldr	r3, [pc, #68]	@ (8007820 <xTimerCreateTimerTask+0x94>)
 80077dc:	681b      	ldr	r3, [r3, #0]
 80077de:	2b00      	cmp	r3, #0
 80077e0:	d001      	beq.n	80077e6 <xTimerCreateTimerTask+0x5a>
 80077e2:	2301      	movs	r3, #1
 80077e4:	617b      	str	r3, [r7, #20]
 80077e6:	697b      	ldr	r3, [r7, #20]
 80077e8:	2b00      	cmp	r3, #0
 80077ea:	d10d      	bne.n	8007808 <xTimerCreateTimerTask+0x7c>
 80077ec:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80077f0:	b672      	cpsid	i
 80077f2:	f383 8811 	msr	BASEPRI, r3
 80077f6:	f3bf 8f6f 	isb	sy
 80077fa:	f3bf 8f4f 	dsb	sy
 80077fe:	b662      	cpsie	i
 8007800:	613b      	str	r3, [r7, #16]
 8007802:	bf00      	nop
 8007804:	bf00      	nop
 8007806:	e7fd      	b.n	8007804 <xTimerCreateTimerTask+0x78>
 8007808:	697b      	ldr	r3, [r7, #20]
 800780a:	4618      	mov	r0, r3
 800780c:	3718      	adds	r7, #24
 800780e:	46bd      	mov	sp, r7
 8007810:	bd80      	pop	{r7, pc}
 8007812:	bf00      	nop
 8007814:	200005f4 	.word	0x200005f4
 8007818:	0800d9b0 	.word	0x0800d9b0
 800781c:	08007965 	.word	0x08007965
 8007820:	200005f8 	.word	0x200005f8

08007824 <xTimerGenericCommand>:
 8007824:	b580      	push	{r7, lr}
 8007826:	b08a      	sub	sp, #40	@ 0x28
 8007828:	af00      	add	r7, sp, #0
 800782a:	60f8      	str	r0, [r7, #12]
 800782c:	60b9      	str	r1, [r7, #8]
 800782e:	607a      	str	r2, [r7, #4]
 8007830:	603b      	str	r3, [r7, #0]
 8007832:	2300      	movs	r3, #0
 8007834:	627b      	str	r3, [r7, #36]	@ 0x24
 8007836:	68fb      	ldr	r3, [r7, #12]
 8007838:	2b00      	cmp	r3, #0
 800783a:	d10d      	bne.n	8007858 <xTimerGenericCommand+0x34>
 800783c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007840:	b672      	cpsid	i
 8007842:	f383 8811 	msr	BASEPRI, r3
 8007846:	f3bf 8f6f 	isb	sy
 800784a:	f3bf 8f4f 	dsb	sy
 800784e:	b662      	cpsie	i
 8007850:	623b      	str	r3, [r7, #32]
 8007852:	bf00      	nop
 8007854:	bf00      	nop
 8007856:	e7fd      	b.n	8007854 <xTimerGenericCommand+0x30>
 8007858:	4b19      	ldr	r3, [pc, #100]	@ (80078c0 <xTimerGenericCommand+0x9c>)
 800785a:	681b      	ldr	r3, [r3, #0]
 800785c:	2b00      	cmp	r3, #0
 800785e:	d02a      	beq.n	80078b6 <xTimerGenericCommand+0x92>
 8007860:	68bb      	ldr	r3, [r7, #8]
 8007862:	613b      	str	r3, [r7, #16]
 8007864:	687b      	ldr	r3, [r7, #4]
 8007866:	617b      	str	r3, [r7, #20]
 8007868:	68fb      	ldr	r3, [r7, #12]
 800786a:	61bb      	str	r3, [r7, #24]
 800786c:	68bb      	ldr	r3, [r7, #8]
 800786e:	2b05      	cmp	r3, #5
 8007870:	dc18      	bgt.n	80078a4 <xTimerGenericCommand+0x80>
 8007872:	f7ff fda1 	bl	80073b8 <xTaskGetSchedulerState>
 8007876:	4603      	mov	r3, r0
 8007878:	2b02      	cmp	r3, #2
 800787a:	d109      	bne.n	8007890 <xTimerGenericCommand+0x6c>
 800787c:	4b10      	ldr	r3, [pc, #64]	@ (80078c0 <xTimerGenericCommand+0x9c>)
 800787e:	6818      	ldr	r0, [r3, #0]
 8007880:	f107 0110 	add.w	r1, r7, #16
 8007884:	2300      	movs	r3, #0
 8007886:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8007888:	f7fe f896 	bl	80059b8 <xQueueGenericSend>
 800788c:	6278      	str	r0, [r7, #36]	@ 0x24
 800788e:	e012      	b.n	80078b6 <xTimerGenericCommand+0x92>
 8007890:	4b0b      	ldr	r3, [pc, #44]	@ (80078c0 <xTimerGenericCommand+0x9c>)
 8007892:	6818      	ldr	r0, [r3, #0]
 8007894:	f107 0110 	add.w	r1, r7, #16
 8007898:	2300      	movs	r3, #0
 800789a:	2200      	movs	r2, #0
 800789c:	f7fe f88c 	bl	80059b8 <xQueueGenericSend>
 80078a0:	6278      	str	r0, [r7, #36]	@ 0x24
 80078a2:	e008      	b.n	80078b6 <xTimerGenericCommand+0x92>
 80078a4:	4b06      	ldr	r3, [pc, #24]	@ (80078c0 <xTimerGenericCommand+0x9c>)
 80078a6:	6818      	ldr	r0, [r3, #0]
 80078a8:	f107 0110 	add.w	r1, r7, #16
 80078ac:	2300      	movs	r3, #0
 80078ae:	683a      	ldr	r2, [r7, #0]
 80078b0:	f7fe f98c 	bl	8005bcc <xQueueGenericSendFromISR>
 80078b4:	6278      	str	r0, [r7, #36]	@ 0x24
 80078b6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80078b8:	4618      	mov	r0, r3
 80078ba:	3728      	adds	r7, #40	@ 0x28
 80078bc:	46bd      	mov	sp, r7
 80078be:	bd80      	pop	{r7, pc}
 80078c0:	200005f4 	.word	0x200005f4

080078c4 <prvProcessExpiredTimer>:
 80078c4:	b580      	push	{r7, lr}
 80078c6:	b088      	sub	sp, #32
 80078c8:	af02      	add	r7, sp, #8
 80078ca:	6078      	str	r0, [r7, #4]
 80078cc:	6039      	str	r1, [r7, #0]
 80078ce:	4b24      	ldr	r3, [pc, #144]	@ (8007960 <prvProcessExpiredTimer+0x9c>)
 80078d0:	681b      	ldr	r3, [r3, #0]
 80078d2:	68db      	ldr	r3, [r3, #12]
 80078d4:	68db      	ldr	r3, [r3, #12]
 80078d6:	617b      	str	r3, [r7, #20]
 80078d8:	697b      	ldr	r3, [r7, #20]
 80078da:	3304      	adds	r3, #4
 80078dc:	4618      	mov	r0, r3
 80078de:	f7fd fe71 	bl	80055c4 <uxListRemove>
 80078e2:	697b      	ldr	r3, [r7, #20]
 80078e4:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 80078e8:	f003 0304 	and.w	r3, r3, #4
 80078ec:	2b00      	cmp	r3, #0
 80078ee:	d025      	beq.n	800793c <prvProcessExpiredTimer+0x78>
 80078f0:	697b      	ldr	r3, [r7, #20]
 80078f2:	699a      	ldr	r2, [r3, #24]
 80078f4:	687b      	ldr	r3, [r7, #4]
 80078f6:	18d1      	adds	r1, r2, r3
 80078f8:	687b      	ldr	r3, [r7, #4]
 80078fa:	683a      	ldr	r2, [r7, #0]
 80078fc:	6978      	ldr	r0, [r7, #20]
 80078fe:	f000 f8d7 	bl	8007ab0 <prvInsertTimerInActiveList>
 8007902:	4603      	mov	r3, r0
 8007904:	2b00      	cmp	r3, #0
 8007906:	d022      	beq.n	800794e <prvProcessExpiredTimer+0x8a>
 8007908:	2300      	movs	r3, #0
 800790a:	9300      	str	r3, [sp, #0]
 800790c:	2300      	movs	r3, #0
 800790e:	687a      	ldr	r2, [r7, #4]
 8007910:	2100      	movs	r1, #0
 8007912:	6978      	ldr	r0, [r7, #20]
 8007914:	f7ff ff86 	bl	8007824 <xTimerGenericCommand>
 8007918:	6138      	str	r0, [r7, #16]
 800791a:	693b      	ldr	r3, [r7, #16]
 800791c:	2b00      	cmp	r3, #0
 800791e:	d116      	bne.n	800794e <prvProcessExpiredTimer+0x8a>
 8007920:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007924:	b672      	cpsid	i
 8007926:	f383 8811 	msr	BASEPRI, r3
 800792a:	f3bf 8f6f 	isb	sy
 800792e:	f3bf 8f4f 	dsb	sy
 8007932:	b662      	cpsie	i
 8007934:	60fb      	str	r3, [r7, #12]
 8007936:	bf00      	nop
 8007938:	bf00      	nop
 800793a:	e7fd      	b.n	8007938 <prvProcessExpiredTimer+0x74>
 800793c:	697b      	ldr	r3, [r7, #20]
 800793e:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007942:	f023 0301 	bic.w	r3, r3, #1
 8007946:	b2da      	uxtb	r2, r3
 8007948:	697b      	ldr	r3, [r7, #20]
 800794a:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 800794e:	697b      	ldr	r3, [r7, #20]
 8007950:	6a1b      	ldr	r3, [r3, #32]
 8007952:	6978      	ldr	r0, [r7, #20]
 8007954:	4798      	blx	r3
 8007956:	bf00      	nop
 8007958:	3718      	adds	r7, #24
 800795a:	46bd      	mov	sp, r7
 800795c:	bd80      	pop	{r7, pc}
 800795e:	bf00      	nop
 8007960:	200005ec 	.word	0x200005ec

08007964 <prvTimerTask>:
 8007964:	b580      	push	{r7, lr}
 8007966:	b084      	sub	sp, #16
 8007968:	af00      	add	r7, sp, #0
 800796a:	6078      	str	r0, [r7, #4]
 800796c:	f107 0308 	add.w	r3, r7, #8
 8007970:	4618      	mov	r0, r3
 8007972:	f000 f859 	bl	8007a28 <prvGetNextExpireTime>
 8007976:	60f8      	str	r0, [r7, #12]
 8007978:	68bb      	ldr	r3, [r7, #8]
 800797a:	4619      	mov	r1, r3
 800797c:	68f8      	ldr	r0, [r7, #12]
 800797e:	f000 f805 	bl	800798c <prvProcessTimerOrBlockTask>
 8007982:	f000 f8d7 	bl	8007b34 <prvProcessReceivedCommands>
 8007986:	bf00      	nop
 8007988:	e7f0      	b.n	800796c <prvTimerTask+0x8>
	...

0800798c <prvProcessTimerOrBlockTask>:
 800798c:	b580      	push	{r7, lr}
 800798e:	b084      	sub	sp, #16
 8007990:	af00      	add	r7, sp, #0
 8007992:	6078      	str	r0, [r7, #4]
 8007994:	6039      	str	r1, [r7, #0]
 8007996:	f7ff f905 	bl	8006ba4 <vTaskSuspendAll>
 800799a:	f107 0308 	add.w	r3, r7, #8
 800799e:	4618      	mov	r0, r3
 80079a0:	f000 f866 	bl	8007a70 <prvSampleTimeNow>
 80079a4:	60f8      	str	r0, [r7, #12]
 80079a6:	68bb      	ldr	r3, [r7, #8]
 80079a8:	2b00      	cmp	r3, #0
 80079aa:	d130      	bne.n	8007a0e <prvProcessTimerOrBlockTask+0x82>
 80079ac:	683b      	ldr	r3, [r7, #0]
 80079ae:	2b00      	cmp	r3, #0
 80079b0:	d10a      	bne.n	80079c8 <prvProcessTimerOrBlockTask+0x3c>
 80079b2:	687a      	ldr	r2, [r7, #4]
 80079b4:	68fb      	ldr	r3, [r7, #12]
 80079b6:	429a      	cmp	r2, r3
 80079b8:	d806      	bhi.n	80079c8 <prvProcessTimerOrBlockTask+0x3c>
 80079ba:	f7ff f901 	bl	8006bc0 <xTaskResumeAll>
 80079be:	68f9      	ldr	r1, [r7, #12]
 80079c0:	6878      	ldr	r0, [r7, #4]
 80079c2:	f7ff ff7f 	bl	80078c4 <prvProcessExpiredTimer>
 80079c6:	e024      	b.n	8007a12 <prvProcessTimerOrBlockTask+0x86>
 80079c8:	683b      	ldr	r3, [r7, #0]
 80079ca:	2b00      	cmp	r3, #0
 80079cc:	d008      	beq.n	80079e0 <prvProcessTimerOrBlockTask+0x54>
 80079ce:	4b13      	ldr	r3, [pc, #76]	@ (8007a1c <prvProcessTimerOrBlockTask+0x90>)
 80079d0:	681b      	ldr	r3, [r3, #0]
 80079d2:	681b      	ldr	r3, [r3, #0]
 80079d4:	2b00      	cmp	r3, #0
 80079d6:	d101      	bne.n	80079dc <prvProcessTimerOrBlockTask+0x50>
 80079d8:	2301      	movs	r3, #1
 80079da:	e000      	b.n	80079de <prvProcessTimerOrBlockTask+0x52>
 80079dc:	2300      	movs	r3, #0
 80079de:	603b      	str	r3, [r7, #0]
 80079e0:	4b0f      	ldr	r3, [pc, #60]	@ (8007a20 <prvProcessTimerOrBlockTask+0x94>)
 80079e2:	6818      	ldr	r0, [r3, #0]
 80079e4:	687a      	ldr	r2, [r7, #4]
 80079e6:	68fb      	ldr	r3, [r7, #12]
 80079e8:	1ad3      	subs	r3, r2, r3
 80079ea:	683a      	ldr	r2, [r7, #0]
 80079ec:	4619      	mov	r1, r3
 80079ee:	f7fe fe53 	bl	8006698 <vQueueWaitForMessageRestricted>
 80079f2:	f7ff f8e5 	bl	8006bc0 <xTaskResumeAll>
 80079f6:	4603      	mov	r3, r0
 80079f8:	2b00      	cmp	r3, #0
 80079fa:	d10a      	bne.n	8007a12 <prvProcessTimerOrBlockTask+0x86>
 80079fc:	4b09      	ldr	r3, [pc, #36]	@ (8007a24 <prvProcessTimerOrBlockTask+0x98>)
 80079fe:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8007a02:	601a      	str	r2, [r3, #0]
 8007a04:	f3bf 8f4f 	dsb	sy
 8007a08:	f3bf 8f6f 	isb	sy
 8007a0c:	e001      	b.n	8007a12 <prvProcessTimerOrBlockTask+0x86>
 8007a0e:	f7ff f8d7 	bl	8006bc0 <xTaskResumeAll>
 8007a12:	bf00      	nop
 8007a14:	3710      	adds	r7, #16
 8007a16:	46bd      	mov	sp, r7
 8007a18:	bd80      	pop	{r7, pc}
 8007a1a:	bf00      	nop
 8007a1c:	200005f0 	.word	0x200005f0
 8007a20:	200005f4 	.word	0x200005f4
 8007a24:	e000ed04 	.word	0xe000ed04

08007a28 <prvGetNextExpireTime>:
 8007a28:	b480      	push	{r7}
 8007a2a:	b085      	sub	sp, #20
 8007a2c:	af00      	add	r7, sp, #0
 8007a2e:	6078      	str	r0, [r7, #4]
 8007a30:	4b0e      	ldr	r3, [pc, #56]	@ (8007a6c <prvGetNextExpireTime+0x44>)
 8007a32:	681b      	ldr	r3, [r3, #0]
 8007a34:	681b      	ldr	r3, [r3, #0]
 8007a36:	2b00      	cmp	r3, #0
 8007a38:	d101      	bne.n	8007a3e <prvGetNextExpireTime+0x16>
 8007a3a:	2201      	movs	r2, #1
 8007a3c:	e000      	b.n	8007a40 <prvGetNextExpireTime+0x18>
 8007a3e:	2200      	movs	r2, #0
 8007a40:	687b      	ldr	r3, [r7, #4]
 8007a42:	601a      	str	r2, [r3, #0]
 8007a44:	687b      	ldr	r3, [r7, #4]
 8007a46:	681b      	ldr	r3, [r3, #0]
 8007a48:	2b00      	cmp	r3, #0
 8007a4a:	d105      	bne.n	8007a58 <prvGetNextExpireTime+0x30>
 8007a4c:	4b07      	ldr	r3, [pc, #28]	@ (8007a6c <prvGetNextExpireTime+0x44>)
 8007a4e:	681b      	ldr	r3, [r3, #0]
 8007a50:	68db      	ldr	r3, [r3, #12]
 8007a52:	681b      	ldr	r3, [r3, #0]
 8007a54:	60fb      	str	r3, [r7, #12]
 8007a56:	e001      	b.n	8007a5c <prvGetNextExpireTime+0x34>
 8007a58:	2300      	movs	r3, #0
 8007a5a:	60fb      	str	r3, [r7, #12]
 8007a5c:	68fb      	ldr	r3, [r7, #12]
 8007a5e:	4618      	mov	r0, r3
 8007a60:	3714      	adds	r7, #20
 8007a62:	46bd      	mov	sp, r7
 8007a64:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007a68:	4770      	bx	lr
 8007a6a:	bf00      	nop
 8007a6c:	200005ec 	.word	0x200005ec

08007a70 <prvSampleTimeNow>:
 8007a70:	b580      	push	{r7, lr}
 8007a72:	b084      	sub	sp, #16
 8007a74:	af00      	add	r7, sp, #0
 8007a76:	6078      	str	r0, [r7, #4]
 8007a78:	f7ff f942 	bl	8006d00 <xTaskGetTickCount>
 8007a7c:	60f8      	str	r0, [r7, #12]
 8007a7e:	4b0b      	ldr	r3, [pc, #44]	@ (8007aac <prvSampleTimeNow+0x3c>)
 8007a80:	681b      	ldr	r3, [r3, #0]
 8007a82:	68fa      	ldr	r2, [r7, #12]
 8007a84:	429a      	cmp	r2, r3
 8007a86:	d205      	bcs.n	8007a94 <prvSampleTimeNow+0x24>
 8007a88:	f000 f940 	bl	8007d0c <prvSwitchTimerLists>
 8007a8c:	687b      	ldr	r3, [r7, #4]
 8007a8e:	2201      	movs	r2, #1
 8007a90:	601a      	str	r2, [r3, #0]
 8007a92:	e002      	b.n	8007a9a <prvSampleTimeNow+0x2a>
 8007a94:	687b      	ldr	r3, [r7, #4]
 8007a96:	2200      	movs	r2, #0
 8007a98:	601a      	str	r2, [r3, #0]
 8007a9a:	4a04      	ldr	r2, [pc, #16]	@ (8007aac <prvSampleTimeNow+0x3c>)
 8007a9c:	68fb      	ldr	r3, [r7, #12]
 8007a9e:	6013      	str	r3, [r2, #0]
 8007aa0:	68fb      	ldr	r3, [r7, #12]
 8007aa2:	4618      	mov	r0, r3
 8007aa4:	3710      	adds	r7, #16
 8007aa6:	46bd      	mov	sp, r7
 8007aa8:	bd80      	pop	{r7, pc}
 8007aaa:	bf00      	nop
 8007aac:	200005fc 	.word	0x200005fc

08007ab0 <prvInsertTimerInActiveList>:
 8007ab0:	b580      	push	{r7, lr}
 8007ab2:	b086      	sub	sp, #24
 8007ab4:	af00      	add	r7, sp, #0
 8007ab6:	60f8      	str	r0, [r7, #12]
 8007ab8:	60b9      	str	r1, [r7, #8]
 8007aba:	607a      	str	r2, [r7, #4]
 8007abc:	603b      	str	r3, [r7, #0]
 8007abe:	2300      	movs	r3, #0
 8007ac0:	617b      	str	r3, [r7, #20]
 8007ac2:	68fb      	ldr	r3, [r7, #12]
 8007ac4:	68ba      	ldr	r2, [r7, #8]
 8007ac6:	605a      	str	r2, [r3, #4]
 8007ac8:	68fb      	ldr	r3, [r7, #12]
 8007aca:	68fa      	ldr	r2, [r7, #12]
 8007acc:	611a      	str	r2, [r3, #16]
 8007ace:	68ba      	ldr	r2, [r7, #8]
 8007ad0:	687b      	ldr	r3, [r7, #4]
 8007ad2:	429a      	cmp	r2, r3
 8007ad4:	d812      	bhi.n	8007afc <prvInsertTimerInActiveList+0x4c>
 8007ad6:	687a      	ldr	r2, [r7, #4]
 8007ad8:	683b      	ldr	r3, [r7, #0]
 8007ada:	1ad2      	subs	r2, r2, r3
 8007adc:	68fb      	ldr	r3, [r7, #12]
 8007ade:	699b      	ldr	r3, [r3, #24]
 8007ae0:	429a      	cmp	r2, r3
 8007ae2:	d302      	bcc.n	8007aea <prvInsertTimerInActiveList+0x3a>
 8007ae4:	2301      	movs	r3, #1
 8007ae6:	617b      	str	r3, [r7, #20]
 8007ae8:	e01b      	b.n	8007b22 <prvInsertTimerInActiveList+0x72>
 8007aea:	4b10      	ldr	r3, [pc, #64]	@ (8007b2c <prvInsertTimerInActiveList+0x7c>)
 8007aec:	681a      	ldr	r2, [r3, #0]
 8007aee:	68fb      	ldr	r3, [r7, #12]
 8007af0:	3304      	adds	r3, #4
 8007af2:	4619      	mov	r1, r3
 8007af4:	4610      	mov	r0, r2
 8007af6:	f7fd fd2c 	bl	8005552 <vListInsert>
 8007afa:	e012      	b.n	8007b22 <prvInsertTimerInActiveList+0x72>
 8007afc:	687a      	ldr	r2, [r7, #4]
 8007afe:	683b      	ldr	r3, [r7, #0]
 8007b00:	429a      	cmp	r2, r3
 8007b02:	d206      	bcs.n	8007b12 <prvInsertTimerInActiveList+0x62>
 8007b04:	68ba      	ldr	r2, [r7, #8]
 8007b06:	683b      	ldr	r3, [r7, #0]
 8007b08:	429a      	cmp	r2, r3
 8007b0a:	d302      	bcc.n	8007b12 <prvInsertTimerInActiveList+0x62>
 8007b0c:	2301      	movs	r3, #1
 8007b0e:	617b      	str	r3, [r7, #20]
 8007b10:	e007      	b.n	8007b22 <prvInsertTimerInActiveList+0x72>
 8007b12:	4b07      	ldr	r3, [pc, #28]	@ (8007b30 <prvInsertTimerInActiveList+0x80>)
 8007b14:	681a      	ldr	r2, [r3, #0]
 8007b16:	68fb      	ldr	r3, [r7, #12]
 8007b18:	3304      	adds	r3, #4
 8007b1a:	4619      	mov	r1, r3
 8007b1c:	4610      	mov	r0, r2
 8007b1e:	f7fd fd18 	bl	8005552 <vListInsert>
 8007b22:	697b      	ldr	r3, [r7, #20]
 8007b24:	4618      	mov	r0, r3
 8007b26:	3718      	adds	r7, #24
 8007b28:	46bd      	mov	sp, r7
 8007b2a:	bd80      	pop	{r7, pc}
 8007b2c:	200005f0 	.word	0x200005f0
 8007b30:	200005ec 	.word	0x200005ec

08007b34 <prvProcessReceivedCommands>:
 8007b34:	b580      	push	{r7, lr}
 8007b36:	b08e      	sub	sp, #56	@ 0x38
 8007b38:	af02      	add	r7, sp, #8
 8007b3a:	e0d4      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007b3c:	687b      	ldr	r3, [r7, #4]
 8007b3e:	2b00      	cmp	r3, #0
 8007b40:	da1b      	bge.n	8007b7a <prvProcessReceivedCommands+0x46>
 8007b42:	1d3b      	adds	r3, r7, #4
 8007b44:	3304      	adds	r3, #4
 8007b46:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8007b48:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8007b4a:	2b00      	cmp	r3, #0
 8007b4c:	d10d      	bne.n	8007b6a <prvProcessReceivedCommands+0x36>
 8007b4e:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007b52:	b672      	cpsid	i
 8007b54:	f383 8811 	msr	BASEPRI, r3
 8007b58:	f3bf 8f6f 	isb	sy
 8007b5c:	f3bf 8f4f 	dsb	sy
 8007b60:	b662      	cpsie	i
 8007b62:	61fb      	str	r3, [r7, #28]
 8007b64:	bf00      	nop
 8007b66:	bf00      	nop
 8007b68:	e7fd      	b.n	8007b66 <prvProcessReceivedCommands+0x32>
 8007b6a:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 8007b6c:	681b      	ldr	r3, [r3, #0]
 8007b6e:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8007b70:	6850      	ldr	r0, [r2, #4]
 8007b72:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8007b74:	6892      	ldr	r2, [r2, #8]
 8007b76:	4611      	mov	r1, r2
 8007b78:	4798      	blx	r3
 8007b7a:	687b      	ldr	r3, [r7, #4]
 8007b7c:	2b00      	cmp	r3, #0
 8007b7e:	f2c0 80b2 	blt.w	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007b82:	68fb      	ldr	r3, [r7, #12]
 8007b84:	62bb      	str	r3, [r7, #40]	@ 0x28
 8007b86:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007b88:	695b      	ldr	r3, [r3, #20]
 8007b8a:	2b00      	cmp	r3, #0
 8007b8c:	d004      	beq.n	8007b98 <prvProcessReceivedCommands+0x64>
 8007b8e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007b90:	3304      	adds	r3, #4
 8007b92:	4618      	mov	r0, r3
 8007b94:	f7fd fd16 	bl	80055c4 <uxListRemove>
 8007b98:	463b      	mov	r3, r7
 8007b9a:	4618      	mov	r0, r3
 8007b9c:	f7ff ff68 	bl	8007a70 <prvSampleTimeNow>
 8007ba0:	6278      	str	r0, [r7, #36]	@ 0x24
 8007ba2:	687b      	ldr	r3, [r7, #4]
 8007ba4:	2b09      	cmp	r3, #9
 8007ba6:	f200 809b 	bhi.w	8007ce0 <prvProcessReceivedCommands+0x1ac>
 8007baa:	a201      	add	r2, pc, #4	@ (adr r2, 8007bb0 <prvProcessReceivedCommands+0x7c>)
 8007bac:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8007bb0:	08007bd9 	.word	0x08007bd9
 8007bb4:	08007bd9 	.word	0x08007bd9
 8007bb8:	08007bd9 	.word	0x08007bd9
 8007bbc:	08007c53 	.word	0x08007c53
 8007bc0:	08007c67 	.word	0x08007c67
 8007bc4:	08007cb7 	.word	0x08007cb7
 8007bc8:	08007bd9 	.word	0x08007bd9
 8007bcc:	08007bd9 	.word	0x08007bd9
 8007bd0:	08007c53 	.word	0x08007c53
 8007bd4:	08007c67 	.word	0x08007c67
 8007bd8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007bda:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007bde:	f043 0301 	orr.w	r3, r3, #1
 8007be2:	b2da      	uxtb	r2, r3
 8007be4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007be6:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 8007bea:	68ba      	ldr	r2, [r7, #8]
 8007bec:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007bee:	699b      	ldr	r3, [r3, #24]
 8007bf0:	18d1      	adds	r1, r2, r3
 8007bf2:	68bb      	ldr	r3, [r7, #8]
 8007bf4:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 8007bf6:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8007bf8:	f7ff ff5a 	bl	8007ab0 <prvInsertTimerInActiveList>
 8007bfc:	4603      	mov	r3, r0
 8007bfe:	2b00      	cmp	r3, #0
 8007c00:	d070      	beq.n	8007ce4 <prvProcessReceivedCommands+0x1b0>
 8007c02:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c04:	6a1b      	ldr	r3, [r3, #32]
 8007c06:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8007c08:	4798      	blx	r3
 8007c0a:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c0c:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007c10:	f003 0304 	and.w	r3, r3, #4
 8007c14:	2b00      	cmp	r3, #0
 8007c16:	d065      	beq.n	8007ce4 <prvProcessReceivedCommands+0x1b0>
 8007c18:	68ba      	ldr	r2, [r7, #8]
 8007c1a:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c1c:	699b      	ldr	r3, [r3, #24]
 8007c1e:	441a      	add	r2, r3
 8007c20:	2300      	movs	r3, #0
 8007c22:	9300      	str	r3, [sp, #0]
 8007c24:	2300      	movs	r3, #0
 8007c26:	2100      	movs	r1, #0
 8007c28:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8007c2a:	f7ff fdfb 	bl	8007824 <xTimerGenericCommand>
 8007c2e:	6238      	str	r0, [r7, #32]
 8007c30:	6a3b      	ldr	r3, [r7, #32]
 8007c32:	2b00      	cmp	r3, #0
 8007c34:	d156      	bne.n	8007ce4 <prvProcessReceivedCommands+0x1b0>
 8007c36:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007c3a:	b672      	cpsid	i
 8007c3c:	f383 8811 	msr	BASEPRI, r3
 8007c40:	f3bf 8f6f 	isb	sy
 8007c44:	f3bf 8f4f 	dsb	sy
 8007c48:	b662      	cpsie	i
 8007c4a:	61bb      	str	r3, [r7, #24]
 8007c4c:	bf00      	nop
 8007c4e:	bf00      	nop
 8007c50:	e7fd      	b.n	8007c4e <prvProcessReceivedCommands+0x11a>
 8007c52:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c54:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007c58:	f023 0301 	bic.w	r3, r3, #1
 8007c5c:	b2da      	uxtb	r2, r3
 8007c5e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c60:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 8007c64:	e03f      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007c66:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c68:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007c6c:	f043 0301 	orr.w	r3, r3, #1
 8007c70:	b2da      	uxtb	r2, r3
 8007c72:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c74:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 8007c78:	68ba      	ldr	r2, [r7, #8]
 8007c7a:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c7c:	619a      	str	r2, [r3, #24]
 8007c7e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007c80:	699b      	ldr	r3, [r3, #24]
 8007c82:	2b00      	cmp	r3, #0
 8007c84:	d10d      	bne.n	8007ca2 <prvProcessReceivedCommands+0x16e>
 8007c86:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007c8a:	b672      	cpsid	i
 8007c8c:	f383 8811 	msr	BASEPRI, r3
 8007c90:	f3bf 8f6f 	isb	sy
 8007c94:	f3bf 8f4f 	dsb	sy
 8007c98:	b662      	cpsie	i
 8007c9a:	617b      	str	r3, [r7, #20]
 8007c9c:	bf00      	nop
 8007c9e:	bf00      	nop
 8007ca0:	e7fd      	b.n	8007c9e <prvProcessReceivedCommands+0x16a>
 8007ca2:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007ca4:	699a      	ldr	r2, [r3, #24]
 8007ca6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8007ca8:	18d1      	adds	r1, r2, r3
 8007caa:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8007cac:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 8007cae:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8007cb0:	f7ff fefe 	bl	8007ab0 <prvInsertTimerInActiveList>
 8007cb4:	e017      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007cb6:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007cb8:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007cbc:	f003 0302 	and.w	r3, r3, #2
 8007cc0:	2b00      	cmp	r3, #0
 8007cc2:	d103      	bne.n	8007ccc <prvProcessReceivedCommands+0x198>
 8007cc4:	6ab8      	ldr	r0, [r7, #40]	@ 0x28
 8007cc6:	f000 fe57 	bl	8008978 <vPortFree>
 8007cca:	e00c      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007ccc:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007cce:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007cd2:	f023 0301 	bic.w	r3, r3, #1
 8007cd6:	b2da      	uxtb	r2, r3
 8007cd8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8007cda:	f883 2028 	strb.w	r2, [r3, #40]	@ 0x28
 8007cde:	e002      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007ce0:	bf00      	nop
 8007ce2:	e000      	b.n	8007ce6 <prvProcessReceivedCommands+0x1b2>
 8007ce4:	bf00      	nop
 8007ce6:	4b08      	ldr	r3, [pc, #32]	@ (8007d08 <prvProcessReceivedCommands+0x1d4>)
 8007ce8:	681b      	ldr	r3, [r3, #0]
 8007cea:	1d39      	adds	r1, r7, #4
 8007cec:	2200      	movs	r2, #0
 8007cee:	4618      	mov	r0, r3
 8007cf0:	f7fe f8a8 	bl	8005e44 <xQueueReceive>
 8007cf4:	4603      	mov	r3, r0
 8007cf6:	2b00      	cmp	r3, #0
 8007cf8:	f47f af20 	bne.w	8007b3c <prvProcessReceivedCommands+0x8>
 8007cfc:	bf00      	nop
 8007cfe:	bf00      	nop
 8007d00:	3730      	adds	r7, #48	@ 0x30
 8007d02:	46bd      	mov	sp, r7
 8007d04:	bd80      	pop	{r7, pc}
 8007d06:	bf00      	nop
 8007d08:	200005f4 	.word	0x200005f4

08007d0c <prvSwitchTimerLists>:
 8007d0c:	b580      	push	{r7, lr}
 8007d0e:	b088      	sub	sp, #32
 8007d10:	af02      	add	r7, sp, #8
 8007d12:	e04b      	b.n	8007dac <prvSwitchTimerLists+0xa0>
 8007d14:	4b2f      	ldr	r3, [pc, #188]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007d16:	681b      	ldr	r3, [r3, #0]
 8007d18:	68db      	ldr	r3, [r3, #12]
 8007d1a:	681b      	ldr	r3, [r3, #0]
 8007d1c:	613b      	str	r3, [r7, #16]
 8007d1e:	4b2d      	ldr	r3, [pc, #180]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007d20:	681b      	ldr	r3, [r3, #0]
 8007d22:	68db      	ldr	r3, [r3, #12]
 8007d24:	68db      	ldr	r3, [r3, #12]
 8007d26:	60fb      	str	r3, [r7, #12]
 8007d28:	68fb      	ldr	r3, [r7, #12]
 8007d2a:	3304      	adds	r3, #4
 8007d2c:	4618      	mov	r0, r3
 8007d2e:	f7fd fc49 	bl	80055c4 <uxListRemove>
 8007d32:	68fb      	ldr	r3, [r7, #12]
 8007d34:	6a1b      	ldr	r3, [r3, #32]
 8007d36:	68f8      	ldr	r0, [r7, #12]
 8007d38:	4798      	blx	r3
 8007d3a:	68fb      	ldr	r3, [r7, #12]
 8007d3c:	f893 3028 	ldrb.w	r3, [r3, #40]	@ 0x28
 8007d40:	f003 0304 	and.w	r3, r3, #4
 8007d44:	2b00      	cmp	r3, #0
 8007d46:	d031      	beq.n	8007dac <prvSwitchTimerLists+0xa0>
 8007d48:	68fb      	ldr	r3, [r7, #12]
 8007d4a:	699b      	ldr	r3, [r3, #24]
 8007d4c:	693a      	ldr	r2, [r7, #16]
 8007d4e:	4413      	add	r3, r2
 8007d50:	60bb      	str	r3, [r7, #8]
 8007d52:	68ba      	ldr	r2, [r7, #8]
 8007d54:	693b      	ldr	r3, [r7, #16]
 8007d56:	429a      	cmp	r2, r3
 8007d58:	d90e      	bls.n	8007d78 <prvSwitchTimerLists+0x6c>
 8007d5a:	68fb      	ldr	r3, [r7, #12]
 8007d5c:	68ba      	ldr	r2, [r7, #8]
 8007d5e:	605a      	str	r2, [r3, #4]
 8007d60:	68fb      	ldr	r3, [r7, #12]
 8007d62:	68fa      	ldr	r2, [r7, #12]
 8007d64:	611a      	str	r2, [r3, #16]
 8007d66:	4b1b      	ldr	r3, [pc, #108]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007d68:	681a      	ldr	r2, [r3, #0]
 8007d6a:	68fb      	ldr	r3, [r7, #12]
 8007d6c:	3304      	adds	r3, #4
 8007d6e:	4619      	mov	r1, r3
 8007d70:	4610      	mov	r0, r2
 8007d72:	f7fd fbee 	bl	8005552 <vListInsert>
 8007d76:	e019      	b.n	8007dac <prvSwitchTimerLists+0xa0>
 8007d78:	2300      	movs	r3, #0
 8007d7a:	9300      	str	r3, [sp, #0]
 8007d7c:	2300      	movs	r3, #0
 8007d7e:	693a      	ldr	r2, [r7, #16]
 8007d80:	2100      	movs	r1, #0
 8007d82:	68f8      	ldr	r0, [r7, #12]
 8007d84:	f7ff fd4e 	bl	8007824 <xTimerGenericCommand>
 8007d88:	6078      	str	r0, [r7, #4]
 8007d8a:	687b      	ldr	r3, [r7, #4]
 8007d8c:	2b00      	cmp	r3, #0
 8007d8e:	d10d      	bne.n	8007dac <prvSwitchTimerLists+0xa0>
 8007d90:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8007d94:	b672      	cpsid	i
 8007d96:	f383 8811 	msr	BASEPRI, r3
 8007d9a:	f3bf 8f6f 	isb	sy
 8007d9e:	f3bf 8f4f 	dsb	sy
 8007da2:	b662      	cpsie	i
 8007da4:	603b      	str	r3, [r7, #0]
 8007da6:	bf00      	nop
 8007da8:	bf00      	nop
 8007daa:	e7fd      	b.n	8007da8 <prvSwitchTimerLists+0x9c>
 8007dac:	4b09      	ldr	r3, [pc, #36]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007dae:	681b      	ldr	r3, [r3, #0]
 8007db0:	681b      	ldr	r3, [r3, #0]
 8007db2:	2b00      	cmp	r3, #0
 8007db4:	d1ae      	bne.n	8007d14 <prvSwitchTimerLists+0x8>
 8007db6:	4b07      	ldr	r3, [pc, #28]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007db8:	681b      	ldr	r3, [r3, #0]
 8007dba:	617b      	str	r3, [r7, #20]
 8007dbc:	4b06      	ldr	r3, [pc, #24]	@ (8007dd8 <prvSwitchTimerLists+0xcc>)
 8007dbe:	681b      	ldr	r3, [r3, #0]
 8007dc0:	4a04      	ldr	r2, [pc, #16]	@ (8007dd4 <prvSwitchTimerLists+0xc8>)
 8007dc2:	6013      	str	r3, [r2, #0]
 8007dc4:	4a04      	ldr	r2, [pc, #16]	@ (8007dd8 <prvSwitchTimerLists+0xcc>)
 8007dc6:	697b      	ldr	r3, [r7, #20]
 8007dc8:	6013      	str	r3, [r2, #0]
 8007dca:	bf00      	nop
 8007dcc:	3718      	adds	r7, #24
 8007dce:	46bd      	mov	sp, r7
 8007dd0:	bd80      	pop	{r7, pc}
 8007dd2:	bf00      	nop
 8007dd4:	200005ec 	.word	0x200005ec
 8007dd8:	200005f0 	.word	0x200005f0

08007ddc <prvCheckForValidListAndQueue>:
 8007ddc:	b580      	push	{r7, lr}
 8007dde:	b082      	sub	sp, #8
 8007de0:	af02      	add	r7, sp, #8
 8007de2:	f000 fff3 	bl	8008dcc <vPortEnterCritical>
 8007de6:	4b15      	ldr	r3, [pc, #84]	@ (8007e3c <prvCheckForValidListAndQueue+0x60>)
 8007de8:	681b      	ldr	r3, [r3, #0]
 8007dea:	2b00      	cmp	r3, #0
 8007dec:	d120      	bne.n	8007e30 <prvCheckForValidListAndQueue+0x54>
 8007dee:	4814      	ldr	r0, [pc, #80]	@ (8007e40 <prvCheckForValidListAndQueue+0x64>)
 8007df0:	f7fd fb5e 	bl	80054b0 <vListInitialise>
 8007df4:	4813      	ldr	r0, [pc, #76]	@ (8007e44 <prvCheckForValidListAndQueue+0x68>)
 8007df6:	f7fd fb5b 	bl	80054b0 <vListInitialise>
 8007dfa:	4b13      	ldr	r3, [pc, #76]	@ (8007e48 <prvCheckForValidListAndQueue+0x6c>)
 8007dfc:	4a10      	ldr	r2, [pc, #64]	@ (8007e40 <prvCheckForValidListAndQueue+0x64>)
 8007dfe:	601a      	str	r2, [r3, #0]
 8007e00:	4b12      	ldr	r3, [pc, #72]	@ (8007e4c <prvCheckForValidListAndQueue+0x70>)
 8007e02:	4a10      	ldr	r2, [pc, #64]	@ (8007e44 <prvCheckForValidListAndQueue+0x68>)
 8007e04:	601a      	str	r2, [r3, #0]
 8007e06:	2300      	movs	r3, #0
 8007e08:	9300      	str	r3, [sp, #0]
 8007e0a:	4b11      	ldr	r3, [pc, #68]	@ (8007e50 <prvCheckForValidListAndQueue+0x74>)
 8007e0c:	4a11      	ldr	r2, [pc, #68]	@ (8007e54 <prvCheckForValidListAndQueue+0x78>)
 8007e0e:	2110      	movs	r1, #16
 8007e10:	200a      	movs	r0, #10
 8007e12:	f7fd fc6d 	bl	80056f0 <xQueueGenericCreateStatic>
 8007e16:	4603      	mov	r3, r0
 8007e18:	4a08      	ldr	r2, [pc, #32]	@ (8007e3c <prvCheckForValidListAndQueue+0x60>)
 8007e1a:	6013      	str	r3, [r2, #0]
 8007e1c:	4b07      	ldr	r3, [pc, #28]	@ (8007e3c <prvCheckForValidListAndQueue+0x60>)
 8007e1e:	681b      	ldr	r3, [r3, #0]
 8007e20:	2b00      	cmp	r3, #0
 8007e22:	d005      	beq.n	8007e30 <prvCheckForValidListAndQueue+0x54>
 8007e24:	4b05      	ldr	r3, [pc, #20]	@ (8007e3c <prvCheckForValidListAndQueue+0x60>)
 8007e26:	681b      	ldr	r3, [r3, #0]
 8007e28:	490b      	ldr	r1, [pc, #44]	@ (8007e58 <prvCheckForValidListAndQueue+0x7c>)
 8007e2a:	4618      	mov	r0, r3
 8007e2c:	f7fe fbe0 	bl	80065f0 <vQueueAddToRegistry>
 8007e30:	f001 f802 	bl	8008e38 <vPortExitCritical>
 8007e34:	bf00      	nop
 8007e36:	46bd      	mov	sp, r7
 8007e38:	bd80      	pop	{r7, pc}
 8007e3a:	bf00      	nop
 8007e3c:	200005f4 	.word	0x200005f4
 8007e40:	200005c4 	.word	0x200005c4
 8007e44:	200005d8 	.word	0x200005d8
 8007e48:	200005ec 	.word	0x200005ec
 8007e4c:	200005f0 	.word	0x200005f0
 8007e50:	200006a0 	.word	0x200006a0
 8007e54:	20000600 	.word	0x20000600
 8007e58:	0800d9b8 	.word	0x0800d9b8

08007e5c <SVC_Setup>:
 8007e5c:	b480      	push	{r7}
 8007e5e:	af00      	add	r7, sp, #0
 8007e60:	bf00      	nop
 8007e62:	46bd      	mov	sp, r7
 8007e64:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007e68:	4770      	bx	lr
	...

08007e6c <osKernelInitialize>:
 8007e6c:	b480      	push	{r7}
 8007e6e:	b085      	sub	sp, #20
 8007e70:	af00      	add	r7, sp, #0
 8007e72:	f3ef 8305 	mrs	r3, IPSR
 8007e76:	60bb      	str	r3, [r7, #8]
 8007e78:	68bb      	ldr	r3, [r7, #8]
 8007e7a:	2b00      	cmp	r3, #0
 8007e7c:	d10f      	bne.n	8007e9e <osKernelInitialize+0x32>
 8007e7e:	f3ef 8310 	mrs	r3, PRIMASK
 8007e82:	607b      	str	r3, [r7, #4]
 8007e84:	687b      	ldr	r3, [r7, #4]
 8007e86:	2b00      	cmp	r3, #0
 8007e88:	d105      	bne.n	8007e96 <osKernelInitialize+0x2a>
 8007e8a:	f3ef 8311 	mrs	r3, BASEPRI
 8007e8e:	603b      	str	r3, [r7, #0]
 8007e90:	683b      	ldr	r3, [r7, #0]
 8007e92:	2b00      	cmp	r3, #0
 8007e94:	d007      	beq.n	8007ea6 <osKernelInitialize+0x3a>
 8007e96:	4b0e      	ldr	r3, [pc, #56]	@ (8007ed0 <osKernelInitialize+0x64>)
 8007e98:	681b      	ldr	r3, [r3, #0]
 8007e9a:	2b02      	cmp	r3, #2
 8007e9c:	d103      	bne.n	8007ea6 <osKernelInitialize+0x3a>
 8007e9e:	f06f 0305 	mvn.w	r3, #5
 8007ea2:	60fb      	str	r3, [r7, #12]
 8007ea4:	e00c      	b.n	8007ec0 <osKernelInitialize+0x54>
 8007ea6:	4b0a      	ldr	r3, [pc, #40]	@ (8007ed0 <osKernelInitialize+0x64>)
 8007ea8:	681b      	ldr	r3, [r3, #0]
 8007eaa:	2b00      	cmp	r3, #0
 8007eac:	d105      	bne.n	8007eba <osKernelInitialize+0x4e>
 8007eae:	4b08      	ldr	r3, [pc, #32]	@ (8007ed0 <osKernelInitialize+0x64>)
 8007eb0:	2201      	movs	r2, #1
 8007eb2:	601a      	str	r2, [r3, #0]
 8007eb4:	2300      	movs	r3, #0
 8007eb6:	60fb      	str	r3, [r7, #12]
 8007eb8:	e002      	b.n	8007ec0 <osKernelInitialize+0x54>
 8007eba:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8007ebe:	60fb      	str	r3, [r7, #12]
 8007ec0:	68fb      	ldr	r3, [r7, #12]
 8007ec2:	4618      	mov	r0, r3
 8007ec4:	3714      	adds	r7, #20
 8007ec6:	46bd      	mov	sp, r7
 8007ec8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8007ecc:	4770      	bx	lr
 8007ece:	bf00      	nop
 8007ed0:	200006f0 	.word	0x200006f0

08007ed4 <osKernelGetState>:
 8007ed4:	b580      	push	{r7, lr}
 8007ed6:	b082      	sub	sp, #8
 8007ed8:	af00      	add	r7, sp, #0
 8007eda:	f7ff fa6d 	bl	80073b8 <xTaskGetSchedulerState>
 8007ede:	4603      	mov	r3, r0
 8007ee0:	2b00      	cmp	r3, #0
 8007ee2:	d004      	beq.n	8007eee <osKernelGetState+0x1a>
 8007ee4:	2b02      	cmp	r3, #2
 8007ee6:	d105      	bne.n	8007ef4 <osKernelGetState+0x20>
 8007ee8:	2302      	movs	r3, #2
 8007eea:	607b      	str	r3, [r7, #4]
 8007eec:	e00c      	b.n	8007f08 <osKernelGetState+0x34>
 8007eee:	2303      	movs	r3, #3
 8007ef0:	607b      	str	r3, [r7, #4]
 8007ef2:	e009      	b.n	8007f08 <osKernelGetState+0x34>
 8007ef4:	4b07      	ldr	r3, [pc, #28]	@ (8007f14 <osKernelGetState+0x40>)
 8007ef6:	681b      	ldr	r3, [r3, #0]
 8007ef8:	2b01      	cmp	r3, #1
 8007efa:	d102      	bne.n	8007f02 <osKernelGetState+0x2e>
 8007efc:	2301      	movs	r3, #1
 8007efe:	607b      	str	r3, [r7, #4]
 8007f00:	e001      	b.n	8007f06 <osKernelGetState+0x32>
 8007f02:	2300      	movs	r3, #0
 8007f04:	607b      	str	r3, [r7, #4]
 8007f06:	bf00      	nop
 8007f08:	687b      	ldr	r3, [r7, #4]
 8007f0a:	4618      	mov	r0, r3
 8007f0c:	3708      	adds	r7, #8
 8007f0e:	46bd      	mov	sp, r7
 8007f10:	bd80      	pop	{r7, pc}
 8007f12:	bf00      	nop
 8007f14:	200006f0 	.word	0x200006f0

08007f18 <osKernelStart>:
 8007f18:	b580      	push	{r7, lr}
 8007f1a:	b084      	sub	sp, #16
 8007f1c:	af00      	add	r7, sp, #0
 8007f1e:	f3ef 8305 	mrs	r3, IPSR
 8007f22:	60bb      	str	r3, [r7, #8]
 8007f24:	68bb      	ldr	r3, [r7, #8]
 8007f26:	2b00      	cmp	r3, #0
 8007f28:	d10f      	bne.n	8007f4a <osKernelStart+0x32>
 8007f2a:	f3ef 8310 	mrs	r3, PRIMASK
 8007f2e:	607b      	str	r3, [r7, #4]
 8007f30:	687b      	ldr	r3, [r7, #4]
 8007f32:	2b00      	cmp	r3, #0
 8007f34:	d105      	bne.n	8007f42 <osKernelStart+0x2a>
 8007f36:	f3ef 8311 	mrs	r3, BASEPRI
 8007f3a:	603b      	str	r3, [r7, #0]
 8007f3c:	683b      	ldr	r3, [r7, #0]
 8007f3e:	2b00      	cmp	r3, #0
 8007f40:	d007      	beq.n	8007f52 <osKernelStart+0x3a>
 8007f42:	4b0f      	ldr	r3, [pc, #60]	@ (8007f80 <osKernelStart+0x68>)
 8007f44:	681b      	ldr	r3, [r3, #0]
 8007f46:	2b02      	cmp	r3, #2
 8007f48:	d103      	bne.n	8007f52 <osKernelStart+0x3a>
 8007f4a:	f06f 0305 	mvn.w	r3, #5
 8007f4e:	60fb      	str	r3, [r7, #12]
 8007f50:	e010      	b.n	8007f74 <osKernelStart+0x5c>
 8007f52:	4b0b      	ldr	r3, [pc, #44]	@ (8007f80 <osKernelStart+0x68>)
 8007f54:	681b      	ldr	r3, [r3, #0]
 8007f56:	2b01      	cmp	r3, #1
 8007f58:	d109      	bne.n	8007f6e <osKernelStart+0x56>
 8007f5a:	f7ff ff7f 	bl	8007e5c <SVC_Setup>
 8007f5e:	4b08      	ldr	r3, [pc, #32]	@ (8007f80 <osKernelStart+0x68>)
 8007f60:	2202      	movs	r2, #2
 8007f62:	601a      	str	r2, [r3, #0]
 8007f64:	f7fe fdb2 	bl	8006acc <vTaskStartScheduler>
 8007f68:	2300      	movs	r3, #0
 8007f6a:	60fb      	str	r3, [r7, #12]
 8007f6c:	e002      	b.n	8007f74 <osKernelStart+0x5c>
 8007f6e:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8007f72:	60fb      	str	r3, [r7, #12]
 8007f74:	68fb      	ldr	r3, [r7, #12]
 8007f76:	4618      	mov	r0, r3
 8007f78:	3710      	adds	r7, #16
 8007f7a:	46bd      	mov	sp, r7
 8007f7c:	bd80      	pop	{r7, pc}
 8007f7e:	bf00      	nop
 8007f80:	200006f0 	.word	0x200006f0

08007f84 <osKernelGetTickCount>:
 8007f84:	b580      	push	{r7, lr}
 8007f86:	b084      	sub	sp, #16
 8007f88:	af00      	add	r7, sp, #0
 8007f8a:	f3ef 8305 	mrs	r3, IPSR
 8007f8e:	60bb      	str	r3, [r7, #8]
 8007f90:	68bb      	ldr	r3, [r7, #8]
 8007f92:	2b00      	cmp	r3, #0
 8007f94:	d10f      	bne.n	8007fb6 <osKernelGetTickCount+0x32>
 8007f96:	f3ef 8310 	mrs	r3, PRIMASK
 8007f9a:	607b      	str	r3, [r7, #4]
 8007f9c:	687b      	ldr	r3, [r7, #4]
 8007f9e:	2b00      	cmp	r3, #0
 8007fa0:	d105      	bne.n	8007fae <osKernelGetTickCount+0x2a>
 8007fa2:	f3ef 8311 	mrs	r3, BASEPRI
 8007fa6:	603b      	str	r3, [r7, #0]
 8007fa8:	683b      	ldr	r3, [r7, #0]
 8007faa:	2b00      	cmp	r3, #0
 8007fac:	d007      	beq.n	8007fbe <osKernelGetTickCount+0x3a>
 8007fae:	4b08      	ldr	r3, [pc, #32]	@ (8007fd0 <osKernelGetTickCount+0x4c>)
 8007fb0:	681b      	ldr	r3, [r3, #0]
 8007fb2:	2b02      	cmp	r3, #2
 8007fb4:	d103      	bne.n	8007fbe <osKernelGetTickCount+0x3a>
 8007fb6:	f7fe feb3 	bl	8006d20 <xTaskGetTickCountFromISR>
 8007fba:	60f8      	str	r0, [r7, #12]
 8007fbc:	e002      	b.n	8007fc4 <osKernelGetTickCount+0x40>
 8007fbe:	f7fe fe9f 	bl	8006d00 <xTaskGetTickCount>
 8007fc2:	60f8      	str	r0, [r7, #12]
 8007fc4:	68fb      	ldr	r3, [r7, #12]
 8007fc6:	4618      	mov	r0, r3
 8007fc8:	3710      	adds	r7, #16
 8007fca:	46bd      	mov	sp, r7
 8007fcc:	bd80      	pop	{r7, pc}
 8007fce:	bf00      	nop
 8007fd0:	200006f0 	.word	0x200006f0

08007fd4 <osThreadNew>:
 8007fd4:	b580      	push	{r7, lr}
 8007fd6:	b090      	sub	sp, #64	@ 0x40
 8007fd8:	af04      	add	r7, sp, #16
 8007fda:	60f8      	str	r0, [r7, #12]
 8007fdc:	60b9      	str	r1, [r7, #8]
 8007fde:	607a      	str	r2, [r7, #4]
 8007fe0:	2300      	movs	r3, #0
 8007fe2:	613b      	str	r3, [r7, #16]
 8007fe4:	f3ef 8305 	mrs	r3, IPSR
 8007fe8:	61fb      	str	r3, [r7, #28]
 8007fea:	69fb      	ldr	r3, [r7, #28]
 8007fec:	2b00      	cmp	r3, #0
 8007fee:	f040 8090 	bne.w	8008112 <osThreadNew+0x13e>
 8007ff2:	f3ef 8310 	mrs	r3, PRIMASK
 8007ff6:	61bb      	str	r3, [r7, #24]
 8007ff8:	69bb      	ldr	r3, [r7, #24]
 8007ffa:	2b00      	cmp	r3, #0
 8007ffc:	d105      	bne.n	800800a <osThreadNew+0x36>
 8007ffe:	f3ef 8311 	mrs	r3, BASEPRI
 8008002:	617b      	str	r3, [r7, #20]
 8008004:	697b      	ldr	r3, [r7, #20]
 8008006:	2b00      	cmp	r3, #0
 8008008:	d003      	beq.n	8008012 <osThreadNew+0x3e>
 800800a:	4b44      	ldr	r3, [pc, #272]	@ (800811c <osThreadNew+0x148>)
 800800c:	681b      	ldr	r3, [r3, #0]
 800800e:	2b02      	cmp	r3, #2
 8008010:	d07f      	beq.n	8008112 <osThreadNew+0x13e>
 8008012:	68fb      	ldr	r3, [r7, #12]
 8008014:	2b00      	cmp	r3, #0
 8008016:	d07c      	beq.n	8008112 <osThreadNew+0x13e>
 8008018:	f44f 7380 	mov.w	r3, #256	@ 0x100
 800801c:	62bb      	str	r3, [r7, #40]	@ 0x28
 800801e:	2318      	movs	r3, #24
 8008020:	627b      	str	r3, [r7, #36]	@ 0x24
 8008022:	2300      	movs	r3, #0
 8008024:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8008026:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800802a:	623b      	str	r3, [r7, #32]
 800802c:	687b      	ldr	r3, [r7, #4]
 800802e:	2b00      	cmp	r3, #0
 8008030:	d045      	beq.n	80080be <osThreadNew+0xea>
 8008032:	687b      	ldr	r3, [r7, #4]
 8008034:	681b      	ldr	r3, [r3, #0]
 8008036:	2b00      	cmp	r3, #0
 8008038:	d002      	beq.n	8008040 <osThreadNew+0x6c>
 800803a:	687b      	ldr	r3, [r7, #4]
 800803c:	681b      	ldr	r3, [r3, #0]
 800803e:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8008040:	687b      	ldr	r3, [r7, #4]
 8008042:	699b      	ldr	r3, [r3, #24]
 8008044:	2b00      	cmp	r3, #0
 8008046:	d002      	beq.n	800804e <osThreadNew+0x7a>
 8008048:	687b      	ldr	r3, [r7, #4]
 800804a:	699b      	ldr	r3, [r3, #24]
 800804c:	627b      	str	r3, [r7, #36]	@ 0x24
 800804e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008050:	2b00      	cmp	r3, #0
 8008052:	d008      	beq.n	8008066 <osThreadNew+0x92>
 8008054:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008056:	2b38      	cmp	r3, #56	@ 0x38
 8008058:	d805      	bhi.n	8008066 <osThreadNew+0x92>
 800805a:	687b      	ldr	r3, [r7, #4]
 800805c:	685b      	ldr	r3, [r3, #4]
 800805e:	f003 0301 	and.w	r3, r3, #1
 8008062:	2b00      	cmp	r3, #0
 8008064:	d001      	beq.n	800806a <osThreadNew+0x96>
 8008066:	2300      	movs	r3, #0
 8008068:	e054      	b.n	8008114 <osThreadNew+0x140>
 800806a:	687b      	ldr	r3, [r7, #4]
 800806c:	695b      	ldr	r3, [r3, #20]
 800806e:	2b00      	cmp	r3, #0
 8008070:	d003      	beq.n	800807a <osThreadNew+0xa6>
 8008072:	687b      	ldr	r3, [r7, #4]
 8008074:	695b      	ldr	r3, [r3, #20]
 8008076:	089b      	lsrs	r3, r3, #2
 8008078:	62bb      	str	r3, [r7, #40]	@ 0x28
 800807a:	687b      	ldr	r3, [r7, #4]
 800807c:	689b      	ldr	r3, [r3, #8]
 800807e:	2b00      	cmp	r3, #0
 8008080:	d00e      	beq.n	80080a0 <osThreadNew+0xcc>
 8008082:	687b      	ldr	r3, [r7, #4]
 8008084:	68db      	ldr	r3, [r3, #12]
 8008086:	2b5b      	cmp	r3, #91	@ 0x5b
 8008088:	d90a      	bls.n	80080a0 <osThreadNew+0xcc>
 800808a:	687b      	ldr	r3, [r7, #4]
 800808c:	691b      	ldr	r3, [r3, #16]
 800808e:	2b00      	cmp	r3, #0
 8008090:	d006      	beq.n	80080a0 <osThreadNew+0xcc>
 8008092:	687b      	ldr	r3, [r7, #4]
 8008094:	695b      	ldr	r3, [r3, #20]
 8008096:	2b00      	cmp	r3, #0
 8008098:	d002      	beq.n	80080a0 <osThreadNew+0xcc>
 800809a:	2301      	movs	r3, #1
 800809c:	623b      	str	r3, [r7, #32]
 800809e:	e010      	b.n	80080c2 <osThreadNew+0xee>
 80080a0:	687b      	ldr	r3, [r7, #4]
 80080a2:	689b      	ldr	r3, [r3, #8]
 80080a4:	2b00      	cmp	r3, #0
 80080a6:	d10c      	bne.n	80080c2 <osThreadNew+0xee>
 80080a8:	687b      	ldr	r3, [r7, #4]
 80080aa:	68db      	ldr	r3, [r3, #12]
 80080ac:	2b00      	cmp	r3, #0
 80080ae:	d108      	bne.n	80080c2 <osThreadNew+0xee>
 80080b0:	687b      	ldr	r3, [r7, #4]
 80080b2:	691b      	ldr	r3, [r3, #16]
 80080b4:	2b00      	cmp	r3, #0
 80080b6:	d104      	bne.n	80080c2 <osThreadNew+0xee>
 80080b8:	2300      	movs	r3, #0
 80080ba:	623b      	str	r3, [r7, #32]
 80080bc:	e001      	b.n	80080c2 <osThreadNew+0xee>
 80080be:	2300      	movs	r3, #0
 80080c0:	623b      	str	r3, [r7, #32]
 80080c2:	6a3b      	ldr	r3, [r7, #32]
 80080c4:	2b01      	cmp	r3, #1
 80080c6:	d110      	bne.n	80080ea <osThreadNew+0x116>
 80080c8:	687b      	ldr	r3, [r7, #4]
 80080ca:	691b      	ldr	r3, [r3, #16]
 80080cc:	687a      	ldr	r2, [r7, #4]
 80080ce:	6892      	ldr	r2, [r2, #8]
 80080d0:	9202      	str	r2, [sp, #8]
 80080d2:	9301      	str	r3, [sp, #4]
 80080d4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80080d6:	9300      	str	r3, [sp, #0]
 80080d8:	68bb      	ldr	r3, [r7, #8]
 80080da:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 80080dc:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 80080de:	68f8      	ldr	r0, [r7, #12]
 80080e0:	f7fe fb0e 	bl	8006700 <xTaskCreateStatic>
 80080e4:	4603      	mov	r3, r0
 80080e6:	613b      	str	r3, [r7, #16]
 80080e8:	e013      	b.n	8008112 <osThreadNew+0x13e>
 80080ea:	6a3b      	ldr	r3, [r7, #32]
 80080ec:	2b00      	cmp	r3, #0
 80080ee:	d110      	bne.n	8008112 <osThreadNew+0x13e>
 80080f0:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 80080f2:	b29a      	uxth	r2, r3
 80080f4:	f107 0310 	add.w	r3, r7, #16
 80080f8:	9301      	str	r3, [sp, #4]
 80080fa:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80080fc:	9300      	str	r3, [sp, #0]
 80080fe:	68bb      	ldr	r3, [r7, #8]
 8008100:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8008102:	68f8      	ldr	r0, [r7, #12]
 8008104:	f7fe fb62 	bl	80067cc <xTaskCreate>
 8008108:	4603      	mov	r3, r0
 800810a:	2b01      	cmp	r3, #1
 800810c:	d001      	beq.n	8008112 <osThreadNew+0x13e>
 800810e:	2300      	movs	r3, #0
 8008110:	613b      	str	r3, [r7, #16]
 8008112:	693b      	ldr	r3, [r7, #16]
 8008114:	4618      	mov	r0, r3
 8008116:	3730      	adds	r7, #48	@ 0x30
 8008118:	46bd      	mov	sp, r7
 800811a:	bd80      	pop	{r7, pc}
 800811c:	200006f0 	.word	0x200006f0

08008120 <osDelay>:
 8008120:	b580      	push	{r7, lr}
 8008122:	b086      	sub	sp, #24
 8008124:	af00      	add	r7, sp, #0
 8008126:	6078      	str	r0, [r7, #4]
 8008128:	f3ef 8305 	mrs	r3, IPSR
 800812c:	613b      	str	r3, [r7, #16]
 800812e:	693b      	ldr	r3, [r7, #16]
 8008130:	2b00      	cmp	r3, #0
 8008132:	d10f      	bne.n	8008154 <osDelay+0x34>
 8008134:	f3ef 8310 	mrs	r3, PRIMASK
 8008138:	60fb      	str	r3, [r7, #12]
 800813a:	68fb      	ldr	r3, [r7, #12]
 800813c:	2b00      	cmp	r3, #0
 800813e:	d105      	bne.n	800814c <osDelay+0x2c>
 8008140:	f3ef 8311 	mrs	r3, BASEPRI
 8008144:	60bb      	str	r3, [r7, #8]
 8008146:	68bb      	ldr	r3, [r7, #8]
 8008148:	2b00      	cmp	r3, #0
 800814a:	d007      	beq.n	800815c <osDelay+0x3c>
 800814c:	4b0a      	ldr	r3, [pc, #40]	@ (8008178 <osDelay+0x58>)
 800814e:	681b      	ldr	r3, [r3, #0]
 8008150:	2b02      	cmp	r3, #2
 8008152:	d103      	bne.n	800815c <osDelay+0x3c>
 8008154:	f06f 0305 	mvn.w	r3, #5
 8008158:	617b      	str	r3, [r7, #20]
 800815a:	e007      	b.n	800816c <osDelay+0x4c>
 800815c:	2300      	movs	r3, #0
 800815e:	617b      	str	r3, [r7, #20]
 8008160:	687b      	ldr	r3, [r7, #4]
 8008162:	2b00      	cmp	r3, #0
 8008164:	d002      	beq.n	800816c <osDelay+0x4c>
 8008166:	6878      	ldr	r0, [r7, #4]
 8008168:	f7fe fc78 	bl	8006a5c <vTaskDelay>
 800816c:	697b      	ldr	r3, [r7, #20]
 800816e:	4618      	mov	r0, r3
 8008170:	3718      	adds	r7, #24
 8008172:	46bd      	mov	sp, r7
 8008174:	bd80      	pop	{r7, pc}
 8008176:	bf00      	nop
 8008178:	200006f0 	.word	0x200006f0

0800817c <osSemaphoreNew>:
 800817c:	b580      	push	{r7, lr}
 800817e:	b08c      	sub	sp, #48	@ 0x30
 8008180:	af02      	add	r7, sp, #8
 8008182:	60f8      	str	r0, [r7, #12]
 8008184:	60b9      	str	r1, [r7, #8]
 8008186:	607a      	str	r2, [r7, #4]
 8008188:	2300      	movs	r3, #0
 800818a:	627b      	str	r3, [r7, #36]	@ 0x24
 800818c:	f3ef 8305 	mrs	r3, IPSR
 8008190:	61bb      	str	r3, [r7, #24]
 8008192:	69bb      	ldr	r3, [r7, #24]
 8008194:	2b00      	cmp	r3, #0
 8008196:	f040 8086 	bne.w	80082a6 <osSemaphoreNew+0x12a>
 800819a:	f3ef 8310 	mrs	r3, PRIMASK
 800819e:	617b      	str	r3, [r7, #20]
 80081a0:	697b      	ldr	r3, [r7, #20]
 80081a2:	2b00      	cmp	r3, #0
 80081a4:	d105      	bne.n	80081b2 <osSemaphoreNew+0x36>
 80081a6:	f3ef 8311 	mrs	r3, BASEPRI
 80081aa:	613b      	str	r3, [r7, #16]
 80081ac:	693b      	ldr	r3, [r7, #16]
 80081ae:	2b00      	cmp	r3, #0
 80081b0:	d003      	beq.n	80081ba <osSemaphoreNew+0x3e>
 80081b2:	4b3f      	ldr	r3, [pc, #252]	@ (80082b0 <osSemaphoreNew+0x134>)
 80081b4:	681b      	ldr	r3, [r3, #0]
 80081b6:	2b02      	cmp	r3, #2
 80081b8:	d075      	beq.n	80082a6 <osSemaphoreNew+0x12a>
 80081ba:	68fb      	ldr	r3, [r7, #12]
 80081bc:	2b00      	cmp	r3, #0
 80081be:	d072      	beq.n	80082a6 <osSemaphoreNew+0x12a>
 80081c0:	68ba      	ldr	r2, [r7, #8]
 80081c2:	68fb      	ldr	r3, [r7, #12]
 80081c4:	429a      	cmp	r2, r3
 80081c6:	d86e      	bhi.n	80082a6 <osSemaphoreNew+0x12a>
 80081c8:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80081cc:	623b      	str	r3, [r7, #32]
 80081ce:	687b      	ldr	r3, [r7, #4]
 80081d0:	2b00      	cmp	r3, #0
 80081d2:	d015      	beq.n	8008200 <osSemaphoreNew+0x84>
 80081d4:	687b      	ldr	r3, [r7, #4]
 80081d6:	689b      	ldr	r3, [r3, #8]
 80081d8:	2b00      	cmp	r3, #0
 80081da:	d006      	beq.n	80081ea <osSemaphoreNew+0x6e>
 80081dc:	687b      	ldr	r3, [r7, #4]
 80081de:	68db      	ldr	r3, [r3, #12]
 80081e0:	2b4f      	cmp	r3, #79	@ 0x4f
 80081e2:	d902      	bls.n	80081ea <osSemaphoreNew+0x6e>
 80081e4:	2301      	movs	r3, #1
 80081e6:	623b      	str	r3, [r7, #32]
 80081e8:	e00c      	b.n	8008204 <osSemaphoreNew+0x88>
 80081ea:	687b      	ldr	r3, [r7, #4]
 80081ec:	689b      	ldr	r3, [r3, #8]
 80081ee:	2b00      	cmp	r3, #0
 80081f0:	d108      	bne.n	8008204 <osSemaphoreNew+0x88>
 80081f2:	687b      	ldr	r3, [r7, #4]
 80081f4:	68db      	ldr	r3, [r3, #12]
 80081f6:	2b00      	cmp	r3, #0
 80081f8:	d104      	bne.n	8008204 <osSemaphoreNew+0x88>
 80081fa:	2300      	movs	r3, #0
 80081fc:	623b      	str	r3, [r7, #32]
 80081fe:	e001      	b.n	8008204 <osSemaphoreNew+0x88>
 8008200:	2300      	movs	r3, #0
 8008202:	623b      	str	r3, [r7, #32]
 8008204:	6a3b      	ldr	r3, [r7, #32]
 8008206:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800820a:	d04c      	beq.n	80082a6 <osSemaphoreNew+0x12a>
 800820c:	68fb      	ldr	r3, [r7, #12]
 800820e:	2b01      	cmp	r3, #1
 8008210:	d128      	bne.n	8008264 <osSemaphoreNew+0xe8>
 8008212:	6a3b      	ldr	r3, [r7, #32]
 8008214:	2b01      	cmp	r3, #1
 8008216:	d10a      	bne.n	800822e <osSemaphoreNew+0xb2>
 8008218:	687b      	ldr	r3, [r7, #4]
 800821a:	689b      	ldr	r3, [r3, #8]
 800821c:	2203      	movs	r2, #3
 800821e:	9200      	str	r2, [sp, #0]
 8008220:	2200      	movs	r2, #0
 8008222:	2100      	movs	r1, #0
 8008224:	2001      	movs	r0, #1
 8008226:	f7fd fa63 	bl	80056f0 <xQueueGenericCreateStatic>
 800822a:	6278      	str	r0, [r7, #36]	@ 0x24
 800822c:	e005      	b.n	800823a <osSemaphoreNew+0xbe>
 800822e:	2203      	movs	r2, #3
 8008230:	2100      	movs	r1, #0
 8008232:	2001      	movs	r0, #1
 8008234:	f7fd fae3 	bl	80057fe <xQueueGenericCreate>
 8008238:	6278      	str	r0, [r7, #36]	@ 0x24
 800823a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800823c:	2b00      	cmp	r3, #0
 800823e:	d022      	beq.n	8008286 <osSemaphoreNew+0x10a>
 8008240:	68bb      	ldr	r3, [r7, #8]
 8008242:	2b00      	cmp	r3, #0
 8008244:	d01f      	beq.n	8008286 <osSemaphoreNew+0x10a>
 8008246:	2300      	movs	r3, #0
 8008248:	2200      	movs	r2, #0
 800824a:	2100      	movs	r1, #0
 800824c:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 800824e:	f7fd fbb3 	bl	80059b8 <xQueueGenericSend>
 8008252:	4603      	mov	r3, r0
 8008254:	2b01      	cmp	r3, #1
 8008256:	d016      	beq.n	8008286 <osSemaphoreNew+0x10a>
 8008258:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 800825a:	f7fe f87b 	bl	8006354 <vQueueDelete>
 800825e:	2300      	movs	r3, #0
 8008260:	627b      	str	r3, [r7, #36]	@ 0x24
 8008262:	e010      	b.n	8008286 <osSemaphoreNew+0x10a>
 8008264:	6a3b      	ldr	r3, [r7, #32]
 8008266:	2b01      	cmp	r3, #1
 8008268:	d108      	bne.n	800827c <osSemaphoreNew+0x100>
 800826a:	687b      	ldr	r3, [r7, #4]
 800826c:	689b      	ldr	r3, [r3, #8]
 800826e:	461a      	mov	r2, r3
 8008270:	68b9      	ldr	r1, [r7, #8]
 8008272:	68f8      	ldr	r0, [r7, #12]
 8008274:	f7fd fb29 	bl	80058ca <xQueueCreateCountingSemaphoreStatic>
 8008278:	6278      	str	r0, [r7, #36]	@ 0x24
 800827a:	e004      	b.n	8008286 <osSemaphoreNew+0x10a>
 800827c:	68b9      	ldr	r1, [r7, #8]
 800827e:	68f8      	ldr	r0, [r7, #12]
 8008280:	f7fd fb60 	bl	8005944 <xQueueCreateCountingSemaphore>
 8008284:	6278      	str	r0, [r7, #36]	@ 0x24
 8008286:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008288:	2b00      	cmp	r3, #0
 800828a:	d00c      	beq.n	80082a6 <osSemaphoreNew+0x12a>
 800828c:	687b      	ldr	r3, [r7, #4]
 800828e:	2b00      	cmp	r3, #0
 8008290:	d003      	beq.n	800829a <osSemaphoreNew+0x11e>
 8008292:	687b      	ldr	r3, [r7, #4]
 8008294:	681b      	ldr	r3, [r3, #0]
 8008296:	61fb      	str	r3, [r7, #28]
 8008298:	e001      	b.n	800829e <osSemaphoreNew+0x122>
 800829a:	2300      	movs	r3, #0
 800829c:	61fb      	str	r3, [r7, #28]
 800829e:	69f9      	ldr	r1, [r7, #28]
 80082a0:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 80082a2:	f7fe f9a5 	bl	80065f0 <vQueueAddToRegistry>
 80082a6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80082a8:	4618      	mov	r0, r3
 80082aa:	3728      	adds	r7, #40	@ 0x28
 80082ac:	46bd      	mov	sp, r7
 80082ae:	bd80      	pop	{r7, pc}
 80082b0:	200006f0 	.word	0x200006f0

080082b4 <osSemaphoreAcquire>:
 80082b4:	b580      	push	{r7, lr}
 80082b6:	b088      	sub	sp, #32
 80082b8:	af00      	add	r7, sp, #0
 80082ba:	6078      	str	r0, [r7, #4]
 80082bc:	6039      	str	r1, [r7, #0]
 80082be:	687b      	ldr	r3, [r7, #4]
 80082c0:	61bb      	str	r3, [r7, #24]
 80082c2:	2300      	movs	r3, #0
 80082c4:	61fb      	str	r3, [r7, #28]
 80082c6:	69bb      	ldr	r3, [r7, #24]
 80082c8:	2b00      	cmp	r3, #0
 80082ca:	d103      	bne.n	80082d4 <osSemaphoreAcquire+0x20>
 80082cc:	f06f 0303 	mvn.w	r3, #3
 80082d0:	61fb      	str	r3, [r7, #28]
 80082d2:	e04b      	b.n	800836c <osSemaphoreAcquire+0xb8>
 80082d4:	f3ef 8305 	mrs	r3, IPSR
 80082d8:	617b      	str	r3, [r7, #20]
 80082da:	697b      	ldr	r3, [r7, #20]
 80082dc:	2b00      	cmp	r3, #0
 80082de:	d10f      	bne.n	8008300 <osSemaphoreAcquire+0x4c>
 80082e0:	f3ef 8310 	mrs	r3, PRIMASK
 80082e4:	613b      	str	r3, [r7, #16]
 80082e6:	693b      	ldr	r3, [r7, #16]
 80082e8:	2b00      	cmp	r3, #0
 80082ea:	d105      	bne.n	80082f8 <osSemaphoreAcquire+0x44>
 80082ec:	f3ef 8311 	mrs	r3, BASEPRI
 80082f0:	60fb      	str	r3, [r7, #12]
 80082f2:	68fb      	ldr	r3, [r7, #12]
 80082f4:	2b00      	cmp	r3, #0
 80082f6:	d026      	beq.n	8008346 <osSemaphoreAcquire+0x92>
 80082f8:	4b1f      	ldr	r3, [pc, #124]	@ (8008378 <osSemaphoreAcquire+0xc4>)
 80082fa:	681b      	ldr	r3, [r3, #0]
 80082fc:	2b02      	cmp	r3, #2
 80082fe:	d122      	bne.n	8008346 <osSemaphoreAcquire+0x92>
 8008300:	683b      	ldr	r3, [r7, #0]
 8008302:	2b00      	cmp	r3, #0
 8008304:	d003      	beq.n	800830e <osSemaphoreAcquire+0x5a>
 8008306:	f06f 0303 	mvn.w	r3, #3
 800830a:	61fb      	str	r3, [r7, #28]
 800830c:	e02d      	b.n	800836a <osSemaphoreAcquire+0xb6>
 800830e:	2300      	movs	r3, #0
 8008310:	60bb      	str	r3, [r7, #8]
 8008312:	f107 0308 	add.w	r3, r7, #8
 8008316:	461a      	mov	r2, r3
 8008318:	2100      	movs	r1, #0
 800831a:	69b8      	ldr	r0, [r7, #24]
 800831c:	f7fd ff92 	bl	8006244 <xQueueReceiveFromISR>
 8008320:	4603      	mov	r3, r0
 8008322:	2b01      	cmp	r3, #1
 8008324:	d003      	beq.n	800832e <osSemaphoreAcquire+0x7a>
 8008326:	f06f 0302 	mvn.w	r3, #2
 800832a:	61fb      	str	r3, [r7, #28]
 800832c:	e01d      	b.n	800836a <osSemaphoreAcquire+0xb6>
 800832e:	68bb      	ldr	r3, [r7, #8]
 8008330:	2b00      	cmp	r3, #0
 8008332:	d01a      	beq.n	800836a <osSemaphoreAcquire+0xb6>
 8008334:	4b11      	ldr	r3, [pc, #68]	@ (800837c <osSemaphoreAcquire+0xc8>)
 8008336:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 800833a:	601a      	str	r2, [r3, #0]
 800833c:	f3bf 8f4f 	dsb	sy
 8008340:	f3bf 8f6f 	isb	sy
 8008344:	e011      	b.n	800836a <osSemaphoreAcquire+0xb6>
 8008346:	6839      	ldr	r1, [r7, #0]
 8008348:	69b8      	ldr	r0, [r7, #24]
 800834a:	f7fd fe63 	bl	8006014 <xQueueSemaphoreTake>
 800834e:	4603      	mov	r3, r0
 8008350:	2b01      	cmp	r3, #1
 8008352:	d00b      	beq.n	800836c <osSemaphoreAcquire+0xb8>
 8008354:	683b      	ldr	r3, [r7, #0]
 8008356:	2b00      	cmp	r3, #0
 8008358:	d003      	beq.n	8008362 <osSemaphoreAcquire+0xae>
 800835a:	f06f 0301 	mvn.w	r3, #1
 800835e:	61fb      	str	r3, [r7, #28]
 8008360:	e004      	b.n	800836c <osSemaphoreAcquire+0xb8>
 8008362:	f06f 0302 	mvn.w	r3, #2
 8008366:	61fb      	str	r3, [r7, #28]
 8008368:	e000      	b.n	800836c <osSemaphoreAcquire+0xb8>
 800836a:	bf00      	nop
 800836c:	69fb      	ldr	r3, [r7, #28]
 800836e:	4618      	mov	r0, r3
 8008370:	3720      	adds	r7, #32
 8008372:	46bd      	mov	sp, r7
 8008374:	bd80      	pop	{r7, pc}
 8008376:	bf00      	nop
 8008378:	200006f0 	.word	0x200006f0
 800837c:	e000ed04 	.word	0xe000ed04

08008380 <osSemaphoreRelease>:
 8008380:	b580      	push	{r7, lr}
 8008382:	b088      	sub	sp, #32
 8008384:	af00      	add	r7, sp, #0
 8008386:	6078      	str	r0, [r7, #4]
 8008388:	687b      	ldr	r3, [r7, #4]
 800838a:	61bb      	str	r3, [r7, #24]
 800838c:	2300      	movs	r3, #0
 800838e:	61fb      	str	r3, [r7, #28]
 8008390:	69bb      	ldr	r3, [r7, #24]
 8008392:	2b00      	cmp	r3, #0
 8008394:	d103      	bne.n	800839e <osSemaphoreRelease+0x1e>
 8008396:	f06f 0303 	mvn.w	r3, #3
 800839a:	61fb      	str	r3, [r7, #28]
 800839c:	e03e      	b.n	800841c <osSemaphoreRelease+0x9c>
 800839e:	f3ef 8305 	mrs	r3, IPSR
 80083a2:	617b      	str	r3, [r7, #20]
 80083a4:	697b      	ldr	r3, [r7, #20]
 80083a6:	2b00      	cmp	r3, #0
 80083a8:	d10f      	bne.n	80083ca <osSemaphoreRelease+0x4a>
 80083aa:	f3ef 8310 	mrs	r3, PRIMASK
 80083ae:	613b      	str	r3, [r7, #16]
 80083b0:	693b      	ldr	r3, [r7, #16]
 80083b2:	2b00      	cmp	r3, #0
 80083b4:	d105      	bne.n	80083c2 <osSemaphoreRelease+0x42>
 80083b6:	f3ef 8311 	mrs	r3, BASEPRI
 80083ba:	60fb      	str	r3, [r7, #12]
 80083bc:	68fb      	ldr	r3, [r7, #12]
 80083be:	2b00      	cmp	r3, #0
 80083c0:	d01e      	beq.n	8008400 <osSemaphoreRelease+0x80>
 80083c2:	4b19      	ldr	r3, [pc, #100]	@ (8008428 <osSemaphoreRelease+0xa8>)
 80083c4:	681b      	ldr	r3, [r3, #0]
 80083c6:	2b02      	cmp	r3, #2
 80083c8:	d11a      	bne.n	8008400 <osSemaphoreRelease+0x80>
 80083ca:	2300      	movs	r3, #0
 80083cc:	60bb      	str	r3, [r7, #8]
 80083ce:	f107 0308 	add.w	r3, r7, #8
 80083d2:	4619      	mov	r1, r3
 80083d4:	69b8      	ldr	r0, [r7, #24]
 80083d6:	f7fd fc9c 	bl	8005d12 <xQueueGiveFromISR>
 80083da:	4603      	mov	r3, r0
 80083dc:	2b01      	cmp	r3, #1
 80083de:	d003      	beq.n	80083e8 <osSemaphoreRelease+0x68>
 80083e0:	f06f 0302 	mvn.w	r3, #2
 80083e4:	61fb      	str	r3, [r7, #28]
 80083e6:	e018      	b.n	800841a <osSemaphoreRelease+0x9a>
 80083e8:	68bb      	ldr	r3, [r7, #8]
 80083ea:	2b00      	cmp	r3, #0
 80083ec:	d015      	beq.n	800841a <osSemaphoreRelease+0x9a>
 80083ee:	4b0f      	ldr	r3, [pc, #60]	@ (800842c <osSemaphoreRelease+0xac>)
 80083f0:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 80083f4:	601a      	str	r2, [r3, #0]
 80083f6:	f3bf 8f4f 	dsb	sy
 80083fa:	f3bf 8f6f 	isb	sy
 80083fe:	e00c      	b.n	800841a <osSemaphoreRelease+0x9a>
 8008400:	2300      	movs	r3, #0
 8008402:	2200      	movs	r2, #0
 8008404:	2100      	movs	r1, #0
 8008406:	69b8      	ldr	r0, [r7, #24]
 8008408:	f7fd fad6 	bl	80059b8 <xQueueGenericSend>
 800840c:	4603      	mov	r3, r0
 800840e:	2b01      	cmp	r3, #1
 8008410:	d004      	beq.n	800841c <osSemaphoreRelease+0x9c>
 8008412:	f06f 0302 	mvn.w	r3, #2
 8008416:	61fb      	str	r3, [r7, #28]
 8008418:	e000      	b.n	800841c <osSemaphoreRelease+0x9c>
 800841a:	bf00      	nop
 800841c:	69fb      	ldr	r3, [r7, #28]
 800841e:	4618      	mov	r0, r3
 8008420:	3720      	adds	r7, #32
 8008422:	46bd      	mov	sp, r7
 8008424:	bd80      	pop	{r7, pc}
 8008426:	bf00      	nop
 8008428:	200006f0 	.word	0x200006f0
 800842c:	e000ed04 	.word	0xe000ed04

08008430 <osSemaphoreDelete>:
 8008430:	b580      	push	{r7, lr}
 8008432:	b088      	sub	sp, #32
 8008434:	af00      	add	r7, sp, #0
 8008436:	6078      	str	r0, [r7, #4]
 8008438:	687b      	ldr	r3, [r7, #4]
 800843a:	61bb      	str	r3, [r7, #24]
 800843c:	f3ef 8305 	mrs	r3, IPSR
 8008440:	617b      	str	r3, [r7, #20]
 8008442:	697b      	ldr	r3, [r7, #20]
 8008444:	2b00      	cmp	r3, #0
 8008446:	d10f      	bne.n	8008468 <osSemaphoreDelete+0x38>
 8008448:	f3ef 8310 	mrs	r3, PRIMASK
 800844c:	613b      	str	r3, [r7, #16]
 800844e:	693b      	ldr	r3, [r7, #16]
 8008450:	2b00      	cmp	r3, #0
 8008452:	d105      	bne.n	8008460 <osSemaphoreDelete+0x30>
 8008454:	f3ef 8311 	mrs	r3, BASEPRI
 8008458:	60fb      	str	r3, [r7, #12]
 800845a:	68fb      	ldr	r3, [r7, #12]
 800845c:	2b00      	cmp	r3, #0
 800845e:	d007      	beq.n	8008470 <osSemaphoreDelete+0x40>
 8008460:	4b0d      	ldr	r3, [pc, #52]	@ (8008498 <osSemaphoreDelete+0x68>)
 8008462:	681b      	ldr	r3, [r3, #0]
 8008464:	2b02      	cmp	r3, #2
 8008466:	d103      	bne.n	8008470 <osSemaphoreDelete+0x40>
 8008468:	f06f 0305 	mvn.w	r3, #5
 800846c:	61fb      	str	r3, [r7, #28]
 800846e:	e00e      	b.n	800848e <osSemaphoreDelete+0x5e>
 8008470:	69bb      	ldr	r3, [r7, #24]
 8008472:	2b00      	cmp	r3, #0
 8008474:	d103      	bne.n	800847e <osSemaphoreDelete+0x4e>
 8008476:	f06f 0303 	mvn.w	r3, #3
 800847a:	61fb      	str	r3, [r7, #28]
 800847c:	e007      	b.n	800848e <osSemaphoreDelete+0x5e>
 800847e:	69b8      	ldr	r0, [r7, #24]
 8008480:	f7fe f8e0 	bl	8006644 <vQueueUnregisterQueue>
 8008484:	2300      	movs	r3, #0
 8008486:	61fb      	str	r3, [r7, #28]
 8008488:	69b8      	ldr	r0, [r7, #24]
 800848a:	f7fd ff63 	bl	8006354 <vQueueDelete>
 800848e:	69fb      	ldr	r3, [r7, #28]
 8008490:	4618      	mov	r0, r3
 8008492:	3720      	adds	r7, #32
 8008494:	46bd      	mov	sp, r7
 8008496:	bd80      	pop	{r7, pc}
 8008498:	200006f0 	.word	0x200006f0

0800849c <osMessageQueueNew>:
 800849c:	b580      	push	{r7, lr}
 800849e:	b08c      	sub	sp, #48	@ 0x30
 80084a0:	af02      	add	r7, sp, #8
 80084a2:	60f8      	str	r0, [r7, #12]
 80084a4:	60b9      	str	r1, [r7, #8]
 80084a6:	607a      	str	r2, [r7, #4]
 80084a8:	2300      	movs	r3, #0
 80084aa:	627b      	str	r3, [r7, #36]	@ 0x24
 80084ac:	f3ef 8305 	mrs	r3, IPSR
 80084b0:	61bb      	str	r3, [r7, #24]
 80084b2:	69bb      	ldr	r3, [r7, #24]
 80084b4:	2b00      	cmp	r3, #0
 80084b6:	d16f      	bne.n	8008598 <osMessageQueueNew+0xfc>
 80084b8:	f3ef 8310 	mrs	r3, PRIMASK
 80084bc:	617b      	str	r3, [r7, #20]
 80084be:	697b      	ldr	r3, [r7, #20]
 80084c0:	2b00      	cmp	r3, #0
 80084c2:	d105      	bne.n	80084d0 <osMessageQueueNew+0x34>
 80084c4:	f3ef 8311 	mrs	r3, BASEPRI
 80084c8:	613b      	str	r3, [r7, #16]
 80084ca:	693b      	ldr	r3, [r7, #16]
 80084cc:	2b00      	cmp	r3, #0
 80084ce:	d003      	beq.n	80084d8 <osMessageQueueNew+0x3c>
 80084d0:	4b34      	ldr	r3, [pc, #208]	@ (80085a4 <osMessageQueueNew+0x108>)
 80084d2:	681b      	ldr	r3, [r3, #0]
 80084d4:	2b02      	cmp	r3, #2
 80084d6:	d05f      	beq.n	8008598 <osMessageQueueNew+0xfc>
 80084d8:	68fb      	ldr	r3, [r7, #12]
 80084da:	2b00      	cmp	r3, #0
 80084dc:	d05c      	beq.n	8008598 <osMessageQueueNew+0xfc>
 80084de:	68bb      	ldr	r3, [r7, #8]
 80084e0:	2b00      	cmp	r3, #0
 80084e2:	d059      	beq.n	8008598 <osMessageQueueNew+0xfc>
 80084e4:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80084e8:	623b      	str	r3, [r7, #32]
 80084ea:	687b      	ldr	r3, [r7, #4]
 80084ec:	2b00      	cmp	r3, #0
 80084ee:	d029      	beq.n	8008544 <osMessageQueueNew+0xa8>
 80084f0:	687b      	ldr	r3, [r7, #4]
 80084f2:	689b      	ldr	r3, [r3, #8]
 80084f4:	2b00      	cmp	r3, #0
 80084f6:	d012      	beq.n	800851e <osMessageQueueNew+0x82>
 80084f8:	687b      	ldr	r3, [r7, #4]
 80084fa:	68db      	ldr	r3, [r3, #12]
 80084fc:	2b4f      	cmp	r3, #79	@ 0x4f
 80084fe:	d90e      	bls.n	800851e <osMessageQueueNew+0x82>
 8008500:	687b      	ldr	r3, [r7, #4]
 8008502:	691b      	ldr	r3, [r3, #16]
 8008504:	2b00      	cmp	r3, #0
 8008506:	d00a      	beq.n	800851e <osMessageQueueNew+0x82>
 8008508:	687b      	ldr	r3, [r7, #4]
 800850a:	695a      	ldr	r2, [r3, #20]
 800850c:	68fb      	ldr	r3, [r7, #12]
 800850e:	68b9      	ldr	r1, [r7, #8]
 8008510:	fb01 f303 	mul.w	r3, r1, r3
 8008514:	429a      	cmp	r2, r3
 8008516:	d302      	bcc.n	800851e <osMessageQueueNew+0x82>
 8008518:	2301      	movs	r3, #1
 800851a:	623b      	str	r3, [r7, #32]
 800851c:	e014      	b.n	8008548 <osMessageQueueNew+0xac>
 800851e:	687b      	ldr	r3, [r7, #4]
 8008520:	689b      	ldr	r3, [r3, #8]
 8008522:	2b00      	cmp	r3, #0
 8008524:	d110      	bne.n	8008548 <osMessageQueueNew+0xac>
 8008526:	687b      	ldr	r3, [r7, #4]
 8008528:	68db      	ldr	r3, [r3, #12]
 800852a:	2b00      	cmp	r3, #0
 800852c:	d10c      	bne.n	8008548 <osMessageQueueNew+0xac>
 800852e:	687b      	ldr	r3, [r7, #4]
 8008530:	691b      	ldr	r3, [r3, #16]
 8008532:	2b00      	cmp	r3, #0
 8008534:	d108      	bne.n	8008548 <osMessageQueueNew+0xac>
 8008536:	687b      	ldr	r3, [r7, #4]
 8008538:	695b      	ldr	r3, [r3, #20]
 800853a:	2b00      	cmp	r3, #0
 800853c:	d104      	bne.n	8008548 <osMessageQueueNew+0xac>
 800853e:	2300      	movs	r3, #0
 8008540:	623b      	str	r3, [r7, #32]
 8008542:	e001      	b.n	8008548 <osMessageQueueNew+0xac>
 8008544:	2300      	movs	r3, #0
 8008546:	623b      	str	r3, [r7, #32]
 8008548:	6a3b      	ldr	r3, [r7, #32]
 800854a:	2b01      	cmp	r3, #1
 800854c:	d10b      	bne.n	8008566 <osMessageQueueNew+0xca>
 800854e:	687b      	ldr	r3, [r7, #4]
 8008550:	691a      	ldr	r2, [r3, #16]
 8008552:	687b      	ldr	r3, [r7, #4]
 8008554:	689b      	ldr	r3, [r3, #8]
 8008556:	2100      	movs	r1, #0
 8008558:	9100      	str	r1, [sp, #0]
 800855a:	68b9      	ldr	r1, [r7, #8]
 800855c:	68f8      	ldr	r0, [r7, #12]
 800855e:	f7fd f8c7 	bl	80056f0 <xQueueGenericCreateStatic>
 8008562:	6278      	str	r0, [r7, #36]	@ 0x24
 8008564:	e008      	b.n	8008578 <osMessageQueueNew+0xdc>
 8008566:	6a3b      	ldr	r3, [r7, #32]
 8008568:	2b00      	cmp	r3, #0
 800856a:	d105      	bne.n	8008578 <osMessageQueueNew+0xdc>
 800856c:	2200      	movs	r2, #0
 800856e:	68b9      	ldr	r1, [r7, #8]
 8008570:	68f8      	ldr	r0, [r7, #12]
 8008572:	f7fd f944 	bl	80057fe <xQueueGenericCreate>
 8008576:	6278      	str	r0, [r7, #36]	@ 0x24
 8008578:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800857a:	2b00      	cmp	r3, #0
 800857c:	d00c      	beq.n	8008598 <osMessageQueueNew+0xfc>
 800857e:	687b      	ldr	r3, [r7, #4]
 8008580:	2b00      	cmp	r3, #0
 8008582:	d003      	beq.n	800858c <osMessageQueueNew+0xf0>
 8008584:	687b      	ldr	r3, [r7, #4]
 8008586:	681b      	ldr	r3, [r3, #0]
 8008588:	61fb      	str	r3, [r7, #28]
 800858a:	e001      	b.n	8008590 <osMessageQueueNew+0xf4>
 800858c:	2300      	movs	r3, #0
 800858e:	61fb      	str	r3, [r7, #28]
 8008590:	69f9      	ldr	r1, [r7, #28]
 8008592:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 8008594:	f7fe f82c 	bl	80065f0 <vQueueAddToRegistry>
 8008598:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800859a:	4618      	mov	r0, r3
 800859c:	3728      	adds	r7, #40	@ 0x28
 800859e:	46bd      	mov	sp, r7
 80085a0:	bd80      	pop	{r7, pc}
 80085a2:	bf00      	nop
 80085a4:	200006f0 	.word	0x200006f0

080085a8 <osMessageQueuePut>:
 80085a8:	b580      	push	{r7, lr}
 80085aa:	b08a      	sub	sp, #40	@ 0x28
 80085ac:	af00      	add	r7, sp, #0
 80085ae:	60f8      	str	r0, [r7, #12]
 80085b0:	60b9      	str	r1, [r7, #8]
 80085b2:	603b      	str	r3, [r7, #0]
 80085b4:	4613      	mov	r3, r2
 80085b6:	71fb      	strb	r3, [r7, #7]
 80085b8:	68fb      	ldr	r3, [r7, #12]
 80085ba:	623b      	str	r3, [r7, #32]
 80085bc:	2300      	movs	r3, #0
 80085be:	627b      	str	r3, [r7, #36]	@ 0x24
 80085c0:	f3ef 8305 	mrs	r3, IPSR
 80085c4:	61fb      	str	r3, [r7, #28]
 80085c6:	69fb      	ldr	r3, [r7, #28]
 80085c8:	2b00      	cmp	r3, #0
 80085ca:	d10f      	bne.n	80085ec <osMessageQueuePut+0x44>
 80085cc:	f3ef 8310 	mrs	r3, PRIMASK
 80085d0:	61bb      	str	r3, [r7, #24]
 80085d2:	69bb      	ldr	r3, [r7, #24]
 80085d4:	2b00      	cmp	r3, #0
 80085d6:	d105      	bne.n	80085e4 <osMessageQueuePut+0x3c>
 80085d8:	f3ef 8311 	mrs	r3, BASEPRI
 80085dc:	617b      	str	r3, [r7, #20]
 80085de:	697b      	ldr	r3, [r7, #20]
 80085e0:	2b00      	cmp	r3, #0
 80085e2:	d02c      	beq.n	800863e <osMessageQueuePut+0x96>
 80085e4:	4b28      	ldr	r3, [pc, #160]	@ (8008688 <osMessageQueuePut+0xe0>)
 80085e6:	681b      	ldr	r3, [r3, #0]
 80085e8:	2b02      	cmp	r3, #2
 80085ea:	d128      	bne.n	800863e <osMessageQueuePut+0x96>
 80085ec:	6a3b      	ldr	r3, [r7, #32]
 80085ee:	2b00      	cmp	r3, #0
 80085f0:	d005      	beq.n	80085fe <osMessageQueuePut+0x56>
 80085f2:	68bb      	ldr	r3, [r7, #8]
 80085f4:	2b00      	cmp	r3, #0
 80085f6:	d002      	beq.n	80085fe <osMessageQueuePut+0x56>
 80085f8:	683b      	ldr	r3, [r7, #0]
 80085fa:	2b00      	cmp	r3, #0
 80085fc:	d003      	beq.n	8008606 <osMessageQueuePut+0x5e>
 80085fe:	f06f 0303 	mvn.w	r3, #3
 8008602:	627b      	str	r3, [r7, #36]	@ 0x24
 8008604:	e039      	b.n	800867a <osMessageQueuePut+0xd2>
 8008606:	2300      	movs	r3, #0
 8008608:	613b      	str	r3, [r7, #16]
 800860a:	f107 0210 	add.w	r2, r7, #16
 800860e:	2300      	movs	r3, #0
 8008610:	68b9      	ldr	r1, [r7, #8]
 8008612:	6a38      	ldr	r0, [r7, #32]
 8008614:	f7fd fada 	bl	8005bcc <xQueueGenericSendFromISR>
 8008618:	4603      	mov	r3, r0
 800861a:	2b01      	cmp	r3, #1
 800861c:	d003      	beq.n	8008626 <osMessageQueuePut+0x7e>
 800861e:	f06f 0302 	mvn.w	r3, #2
 8008622:	627b      	str	r3, [r7, #36]	@ 0x24
 8008624:	e029      	b.n	800867a <osMessageQueuePut+0xd2>
 8008626:	693b      	ldr	r3, [r7, #16]
 8008628:	2b00      	cmp	r3, #0
 800862a:	d026      	beq.n	800867a <osMessageQueuePut+0xd2>
 800862c:	4b17      	ldr	r3, [pc, #92]	@ (800868c <osMessageQueuePut+0xe4>)
 800862e:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8008632:	601a      	str	r2, [r3, #0]
 8008634:	f3bf 8f4f 	dsb	sy
 8008638:	f3bf 8f6f 	isb	sy
 800863c:	e01d      	b.n	800867a <osMessageQueuePut+0xd2>
 800863e:	6a3b      	ldr	r3, [r7, #32]
 8008640:	2b00      	cmp	r3, #0
 8008642:	d002      	beq.n	800864a <osMessageQueuePut+0xa2>
 8008644:	68bb      	ldr	r3, [r7, #8]
 8008646:	2b00      	cmp	r3, #0
 8008648:	d103      	bne.n	8008652 <osMessageQueuePut+0xaa>
 800864a:	f06f 0303 	mvn.w	r3, #3
 800864e:	627b      	str	r3, [r7, #36]	@ 0x24
 8008650:	e014      	b.n	800867c <osMessageQueuePut+0xd4>
 8008652:	2300      	movs	r3, #0
 8008654:	683a      	ldr	r2, [r7, #0]
 8008656:	68b9      	ldr	r1, [r7, #8]
 8008658:	6a38      	ldr	r0, [r7, #32]
 800865a:	f7fd f9ad 	bl	80059b8 <xQueueGenericSend>
 800865e:	4603      	mov	r3, r0
 8008660:	2b01      	cmp	r3, #1
 8008662:	d00b      	beq.n	800867c <osMessageQueuePut+0xd4>
 8008664:	683b      	ldr	r3, [r7, #0]
 8008666:	2b00      	cmp	r3, #0
 8008668:	d003      	beq.n	8008672 <osMessageQueuePut+0xca>
 800866a:	f06f 0301 	mvn.w	r3, #1
 800866e:	627b      	str	r3, [r7, #36]	@ 0x24
 8008670:	e004      	b.n	800867c <osMessageQueuePut+0xd4>
 8008672:	f06f 0302 	mvn.w	r3, #2
 8008676:	627b      	str	r3, [r7, #36]	@ 0x24
 8008678:	e000      	b.n	800867c <osMessageQueuePut+0xd4>
 800867a:	bf00      	nop
 800867c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800867e:	4618      	mov	r0, r3
 8008680:	3728      	adds	r7, #40	@ 0x28
 8008682:	46bd      	mov	sp, r7
 8008684:	bd80      	pop	{r7, pc}
 8008686:	bf00      	nop
 8008688:	200006f0 	.word	0x200006f0
 800868c:	e000ed04 	.word	0xe000ed04

08008690 <osMessageQueueGet>:
 8008690:	b580      	push	{r7, lr}
 8008692:	b08a      	sub	sp, #40	@ 0x28
 8008694:	af00      	add	r7, sp, #0
 8008696:	60f8      	str	r0, [r7, #12]
 8008698:	60b9      	str	r1, [r7, #8]
 800869a:	607a      	str	r2, [r7, #4]
 800869c:	603b      	str	r3, [r7, #0]
 800869e:	68fb      	ldr	r3, [r7, #12]
 80086a0:	623b      	str	r3, [r7, #32]
 80086a2:	2300      	movs	r3, #0
 80086a4:	627b      	str	r3, [r7, #36]	@ 0x24
 80086a6:	f3ef 8305 	mrs	r3, IPSR
 80086aa:	61fb      	str	r3, [r7, #28]
 80086ac:	69fb      	ldr	r3, [r7, #28]
 80086ae:	2b00      	cmp	r3, #0
 80086b0:	d10f      	bne.n	80086d2 <osMessageQueueGet+0x42>
 80086b2:	f3ef 8310 	mrs	r3, PRIMASK
 80086b6:	61bb      	str	r3, [r7, #24]
 80086b8:	69bb      	ldr	r3, [r7, #24]
 80086ba:	2b00      	cmp	r3, #0
 80086bc:	d105      	bne.n	80086ca <osMessageQueueGet+0x3a>
 80086be:	f3ef 8311 	mrs	r3, BASEPRI
 80086c2:	617b      	str	r3, [r7, #20]
 80086c4:	697b      	ldr	r3, [r7, #20]
 80086c6:	2b00      	cmp	r3, #0
 80086c8:	d02c      	beq.n	8008724 <osMessageQueueGet+0x94>
 80086ca:	4b28      	ldr	r3, [pc, #160]	@ (800876c <osMessageQueueGet+0xdc>)
 80086cc:	681b      	ldr	r3, [r3, #0]
 80086ce:	2b02      	cmp	r3, #2
 80086d0:	d128      	bne.n	8008724 <osMessageQueueGet+0x94>
 80086d2:	6a3b      	ldr	r3, [r7, #32]
 80086d4:	2b00      	cmp	r3, #0
 80086d6:	d005      	beq.n	80086e4 <osMessageQueueGet+0x54>
 80086d8:	68bb      	ldr	r3, [r7, #8]
 80086da:	2b00      	cmp	r3, #0
 80086dc:	d002      	beq.n	80086e4 <osMessageQueueGet+0x54>
 80086de:	683b      	ldr	r3, [r7, #0]
 80086e0:	2b00      	cmp	r3, #0
 80086e2:	d003      	beq.n	80086ec <osMessageQueueGet+0x5c>
 80086e4:	f06f 0303 	mvn.w	r3, #3
 80086e8:	627b      	str	r3, [r7, #36]	@ 0x24
 80086ea:	e038      	b.n	800875e <osMessageQueueGet+0xce>
 80086ec:	2300      	movs	r3, #0
 80086ee:	613b      	str	r3, [r7, #16]
 80086f0:	f107 0310 	add.w	r3, r7, #16
 80086f4:	461a      	mov	r2, r3
 80086f6:	68b9      	ldr	r1, [r7, #8]
 80086f8:	6a38      	ldr	r0, [r7, #32]
 80086fa:	f7fd fda3 	bl	8006244 <xQueueReceiveFromISR>
 80086fe:	4603      	mov	r3, r0
 8008700:	2b01      	cmp	r3, #1
 8008702:	d003      	beq.n	800870c <osMessageQueueGet+0x7c>
 8008704:	f06f 0302 	mvn.w	r3, #2
 8008708:	627b      	str	r3, [r7, #36]	@ 0x24
 800870a:	e028      	b.n	800875e <osMessageQueueGet+0xce>
 800870c:	693b      	ldr	r3, [r7, #16]
 800870e:	2b00      	cmp	r3, #0
 8008710:	d025      	beq.n	800875e <osMessageQueueGet+0xce>
 8008712:	4b17      	ldr	r3, [pc, #92]	@ (8008770 <osMessageQueueGet+0xe0>)
 8008714:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8008718:	601a      	str	r2, [r3, #0]
 800871a:	f3bf 8f4f 	dsb	sy
 800871e:	f3bf 8f6f 	isb	sy
 8008722:	e01c      	b.n	800875e <osMessageQueueGet+0xce>
 8008724:	6a3b      	ldr	r3, [r7, #32]
 8008726:	2b00      	cmp	r3, #0
 8008728:	d002      	beq.n	8008730 <osMessageQueueGet+0xa0>
 800872a:	68bb      	ldr	r3, [r7, #8]
 800872c:	2b00      	cmp	r3, #0
 800872e:	d103      	bne.n	8008738 <osMessageQueueGet+0xa8>
 8008730:	f06f 0303 	mvn.w	r3, #3
 8008734:	627b      	str	r3, [r7, #36]	@ 0x24
 8008736:	e013      	b.n	8008760 <osMessageQueueGet+0xd0>
 8008738:	683a      	ldr	r2, [r7, #0]
 800873a:	68b9      	ldr	r1, [r7, #8]
 800873c:	6a38      	ldr	r0, [r7, #32]
 800873e:	f7fd fb81 	bl	8005e44 <xQueueReceive>
 8008742:	4603      	mov	r3, r0
 8008744:	2b01      	cmp	r3, #1
 8008746:	d00b      	beq.n	8008760 <osMessageQueueGet+0xd0>
 8008748:	683b      	ldr	r3, [r7, #0]
 800874a:	2b00      	cmp	r3, #0
 800874c:	d003      	beq.n	8008756 <osMessageQueueGet+0xc6>
 800874e:	f06f 0301 	mvn.w	r3, #1
 8008752:	627b      	str	r3, [r7, #36]	@ 0x24
 8008754:	e004      	b.n	8008760 <osMessageQueueGet+0xd0>
 8008756:	f06f 0302 	mvn.w	r3, #2
 800875a:	627b      	str	r3, [r7, #36]	@ 0x24
 800875c:	e000      	b.n	8008760 <osMessageQueueGet+0xd0>
 800875e:	bf00      	nop
 8008760:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008762:	4618      	mov	r0, r3
 8008764:	3728      	adds	r7, #40	@ 0x28
 8008766:	46bd      	mov	sp, r7
 8008768:	bd80      	pop	{r7, pc}
 800876a:	bf00      	nop
 800876c:	200006f0 	.word	0x200006f0
 8008770:	e000ed04 	.word	0xe000ed04

08008774 <vApplicationGetIdleTaskMemory>:
 8008774:	b480      	push	{r7}
 8008776:	b085      	sub	sp, #20
 8008778:	af00      	add	r7, sp, #0
 800877a:	60f8      	str	r0, [r7, #12]
 800877c:	60b9      	str	r1, [r7, #8]
 800877e:	607a      	str	r2, [r7, #4]
 8008780:	68fb      	ldr	r3, [r7, #12]
 8008782:	4a07      	ldr	r2, [pc, #28]	@ (80087a0 <vApplicationGetIdleTaskMemory+0x2c>)
 8008784:	601a      	str	r2, [r3, #0]
 8008786:	68bb      	ldr	r3, [r7, #8]
 8008788:	4a06      	ldr	r2, [pc, #24]	@ (80087a4 <vApplicationGetIdleTaskMemory+0x30>)
 800878a:	601a      	str	r2, [r3, #0]
 800878c:	687b      	ldr	r3, [r7, #4]
 800878e:	f44f 7280 	mov.w	r2, #256	@ 0x100
 8008792:	601a      	str	r2, [r3, #0]
 8008794:	bf00      	nop
 8008796:	3714      	adds	r7, #20
 8008798:	46bd      	mov	sp, r7
 800879a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800879e:	4770      	bx	lr
 80087a0:	200006f4 	.word	0x200006f4
 80087a4:	20000750 	.word	0x20000750

080087a8 <vApplicationGetTimerTaskMemory>:
 80087a8:	b480      	push	{r7}
 80087aa:	b085      	sub	sp, #20
 80087ac:	af00      	add	r7, sp, #0
 80087ae:	60f8      	str	r0, [r7, #12]
 80087b0:	60b9      	str	r1, [r7, #8]
 80087b2:	607a      	str	r2, [r7, #4]
 80087b4:	68fb      	ldr	r3, [r7, #12]
 80087b6:	4a07      	ldr	r2, [pc, #28]	@ (80087d4 <vApplicationGetTimerTaskMemory+0x2c>)
 80087b8:	601a      	str	r2, [r3, #0]
 80087ba:	68bb      	ldr	r3, [r7, #8]
 80087bc:	4a06      	ldr	r2, [pc, #24]	@ (80087d8 <vApplicationGetTimerTaskMemory+0x30>)
 80087be:	601a      	str	r2, [r3, #0]
 80087c0:	687b      	ldr	r3, [r7, #4]
 80087c2:	f44f 7200 	mov.w	r2, #512	@ 0x200
 80087c6:	601a      	str	r2, [r3, #0]
 80087c8:	bf00      	nop
 80087ca:	3714      	adds	r7, #20
 80087cc:	46bd      	mov	sp, r7
 80087ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80087d2:	4770      	bx	lr
 80087d4:	20000b50 	.word	0x20000b50
 80087d8:	20000bac 	.word	0x20000bac

080087dc <pvPortMalloc>:
 80087dc:	b580      	push	{r7, lr}
 80087de:	b08a      	sub	sp, #40	@ 0x28
 80087e0:	af00      	add	r7, sp, #0
 80087e2:	6078      	str	r0, [r7, #4]
 80087e4:	2300      	movs	r3, #0
 80087e6:	61fb      	str	r3, [r7, #28]
 80087e8:	f7fe f9dc 	bl	8006ba4 <vTaskSuspendAll>
 80087ec:	4b5d      	ldr	r3, [pc, #372]	@ (8008964 <pvPortMalloc+0x188>)
 80087ee:	681b      	ldr	r3, [r3, #0]
 80087f0:	2b00      	cmp	r3, #0
 80087f2:	d101      	bne.n	80087f8 <pvPortMalloc+0x1c>
 80087f4:	f000 f920 	bl	8008a38 <prvHeapInit>
 80087f8:	4b5b      	ldr	r3, [pc, #364]	@ (8008968 <pvPortMalloc+0x18c>)
 80087fa:	681a      	ldr	r2, [r3, #0]
 80087fc:	687b      	ldr	r3, [r7, #4]
 80087fe:	4013      	ands	r3, r2
 8008800:	2b00      	cmp	r3, #0
 8008802:	f040 8094 	bne.w	800892e <pvPortMalloc+0x152>
 8008806:	687b      	ldr	r3, [r7, #4]
 8008808:	2b00      	cmp	r3, #0
 800880a:	d020      	beq.n	800884e <pvPortMalloc+0x72>
 800880c:	2208      	movs	r2, #8
 800880e:	687b      	ldr	r3, [r7, #4]
 8008810:	4413      	add	r3, r2
 8008812:	607b      	str	r3, [r7, #4]
 8008814:	687b      	ldr	r3, [r7, #4]
 8008816:	f003 0307 	and.w	r3, r3, #7
 800881a:	2b00      	cmp	r3, #0
 800881c:	d017      	beq.n	800884e <pvPortMalloc+0x72>
 800881e:	687b      	ldr	r3, [r7, #4]
 8008820:	f023 0307 	bic.w	r3, r3, #7
 8008824:	3308      	adds	r3, #8
 8008826:	607b      	str	r3, [r7, #4]
 8008828:	687b      	ldr	r3, [r7, #4]
 800882a:	f003 0307 	and.w	r3, r3, #7
 800882e:	2b00      	cmp	r3, #0
 8008830:	d00d      	beq.n	800884e <pvPortMalloc+0x72>
 8008832:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008836:	b672      	cpsid	i
 8008838:	f383 8811 	msr	BASEPRI, r3
 800883c:	f3bf 8f6f 	isb	sy
 8008840:	f3bf 8f4f 	dsb	sy
 8008844:	b662      	cpsie	i
 8008846:	617b      	str	r3, [r7, #20]
 8008848:	bf00      	nop
 800884a:	bf00      	nop
 800884c:	e7fd      	b.n	800884a <pvPortMalloc+0x6e>
 800884e:	687b      	ldr	r3, [r7, #4]
 8008850:	2b00      	cmp	r3, #0
 8008852:	d06c      	beq.n	800892e <pvPortMalloc+0x152>
 8008854:	4b45      	ldr	r3, [pc, #276]	@ (800896c <pvPortMalloc+0x190>)
 8008856:	681b      	ldr	r3, [r3, #0]
 8008858:	687a      	ldr	r2, [r7, #4]
 800885a:	429a      	cmp	r2, r3
 800885c:	d867      	bhi.n	800892e <pvPortMalloc+0x152>
 800885e:	4b44      	ldr	r3, [pc, #272]	@ (8008970 <pvPortMalloc+0x194>)
 8008860:	623b      	str	r3, [r7, #32]
 8008862:	4b43      	ldr	r3, [pc, #268]	@ (8008970 <pvPortMalloc+0x194>)
 8008864:	681b      	ldr	r3, [r3, #0]
 8008866:	627b      	str	r3, [r7, #36]	@ 0x24
 8008868:	e004      	b.n	8008874 <pvPortMalloc+0x98>
 800886a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800886c:	623b      	str	r3, [r7, #32]
 800886e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008870:	681b      	ldr	r3, [r3, #0]
 8008872:	627b      	str	r3, [r7, #36]	@ 0x24
 8008874:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008876:	685b      	ldr	r3, [r3, #4]
 8008878:	687a      	ldr	r2, [r7, #4]
 800887a:	429a      	cmp	r2, r3
 800887c:	d903      	bls.n	8008886 <pvPortMalloc+0xaa>
 800887e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008880:	681b      	ldr	r3, [r3, #0]
 8008882:	2b00      	cmp	r3, #0
 8008884:	d1f1      	bne.n	800886a <pvPortMalloc+0x8e>
 8008886:	4b37      	ldr	r3, [pc, #220]	@ (8008964 <pvPortMalloc+0x188>)
 8008888:	681b      	ldr	r3, [r3, #0]
 800888a:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 800888c:	429a      	cmp	r2, r3
 800888e:	d04e      	beq.n	800892e <pvPortMalloc+0x152>
 8008890:	6a3b      	ldr	r3, [r7, #32]
 8008892:	681b      	ldr	r3, [r3, #0]
 8008894:	2208      	movs	r2, #8
 8008896:	4413      	add	r3, r2
 8008898:	61fb      	str	r3, [r7, #28]
 800889a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800889c:	681a      	ldr	r2, [r3, #0]
 800889e:	6a3b      	ldr	r3, [r7, #32]
 80088a0:	601a      	str	r2, [r3, #0]
 80088a2:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80088a4:	685a      	ldr	r2, [r3, #4]
 80088a6:	687b      	ldr	r3, [r7, #4]
 80088a8:	1ad2      	subs	r2, r2, r3
 80088aa:	2308      	movs	r3, #8
 80088ac:	005b      	lsls	r3, r3, #1
 80088ae:	429a      	cmp	r2, r3
 80088b0:	d922      	bls.n	80088f8 <pvPortMalloc+0x11c>
 80088b2:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 80088b4:	687b      	ldr	r3, [r7, #4]
 80088b6:	4413      	add	r3, r2
 80088b8:	61bb      	str	r3, [r7, #24]
 80088ba:	69bb      	ldr	r3, [r7, #24]
 80088bc:	f003 0307 	and.w	r3, r3, #7
 80088c0:	2b00      	cmp	r3, #0
 80088c2:	d00d      	beq.n	80088e0 <pvPortMalloc+0x104>
 80088c4:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80088c8:	b672      	cpsid	i
 80088ca:	f383 8811 	msr	BASEPRI, r3
 80088ce:	f3bf 8f6f 	isb	sy
 80088d2:	f3bf 8f4f 	dsb	sy
 80088d6:	b662      	cpsie	i
 80088d8:	613b      	str	r3, [r7, #16]
 80088da:	bf00      	nop
 80088dc:	bf00      	nop
 80088de:	e7fd      	b.n	80088dc <pvPortMalloc+0x100>
 80088e0:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80088e2:	685a      	ldr	r2, [r3, #4]
 80088e4:	687b      	ldr	r3, [r7, #4]
 80088e6:	1ad2      	subs	r2, r2, r3
 80088e8:	69bb      	ldr	r3, [r7, #24]
 80088ea:	605a      	str	r2, [r3, #4]
 80088ec:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80088ee:	687a      	ldr	r2, [r7, #4]
 80088f0:	605a      	str	r2, [r3, #4]
 80088f2:	69b8      	ldr	r0, [r7, #24]
 80088f4:	f000 f902 	bl	8008afc <prvInsertBlockIntoFreeList>
 80088f8:	4b1c      	ldr	r3, [pc, #112]	@ (800896c <pvPortMalloc+0x190>)
 80088fa:	681a      	ldr	r2, [r3, #0]
 80088fc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80088fe:	685b      	ldr	r3, [r3, #4]
 8008900:	1ad3      	subs	r3, r2, r3
 8008902:	4a1a      	ldr	r2, [pc, #104]	@ (800896c <pvPortMalloc+0x190>)
 8008904:	6013      	str	r3, [r2, #0]
 8008906:	4b19      	ldr	r3, [pc, #100]	@ (800896c <pvPortMalloc+0x190>)
 8008908:	681a      	ldr	r2, [r3, #0]
 800890a:	4b1a      	ldr	r3, [pc, #104]	@ (8008974 <pvPortMalloc+0x198>)
 800890c:	681b      	ldr	r3, [r3, #0]
 800890e:	429a      	cmp	r2, r3
 8008910:	d203      	bcs.n	800891a <pvPortMalloc+0x13e>
 8008912:	4b16      	ldr	r3, [pc, #88]	@ (800896c <pvPortMalloc+0x190>)
 8008914:	681b      	ldr	r3, [r3, #0]
 8008916:	4a17      	ldr	r2, [pc, #92]	@ (8008974 <pvPortMalloc+0x198>)
 8008918:	6013      	str	r3, [r2, #0]
 800891a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800891c:	685a      	ldr	r2, [r3, #4]
 800891e:	4b12      	ldr	r3, [pc, #72]	@ (8008968 <pvPortMalloc+0x18c>)
 8008920:	681b      	ldr	r3, [r3, #0]
 8008922:	431a      	orrs	r2, r3
 8008924:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8008926:	605a      	str	r2, [r3, #4]
 8008928:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800892a:	2200      	movs	r2, #0
 800892c:	601a      	str	r2, [r3, #0]
 800892e:	f7fe f947 	bl	8006bc0 <xTaskResumeAll>
 8008932:	69fb      	ldr	r3, [r7, #28]
 8008934:	f003 0307 	and.w	r3, r3, #7
 8008938:	2b00      	cmp	r3, #0
 800893a:	d00d      	beq.n	8008958 <pvPortMalloc+0x17c>
 800893c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008940:	b672      	cpsid	i
 8008942:	f383 8811 	msr	BASEPRI, r3
 8008946:	f3bf 8f6f 	isb	sy
 800894a:	f3bf 8f4f 	dsb	sy
 800894e:	b662      	cpsie	i
 8008950:	60fb      	str	r3, [r7, #12]
 8008952:	bf00      	nop
 8008954:	bf00      	nop
 8008956:	e7fd      	b.n	8008954 <pvPortMalloc+0x178>
 8008958:	69fb      	ldr	r3, [r7, #28]
 800895a:	4618      	mov	r0, r3
 800895c:	3728      	adds	r7, #40	@ 0x28
 800895e:	46bd      	mov	sp, r7
 8008960:	bd80      	pop	{r7, pc}
 8008962:	bf00      	nop
 8008964:	200413b4 	.word	0x200413b4
 8008968:	200413c0 	.word	0x200413c0
 800896c:	200413b8 	.word	0x200413b8
 8008970:	200413ac 	.word	0x200413ac
 8008974:	200413bc 	.word	0x200413bc

08008978 <vPortFree>:
 8008978:	b580      	push	{r7, lr}
 800897a:	b086      	sub	sp, #24
 800897c:	af00      	add	r7, sp, #0
 800897e:	6078      	str	r0, [r7, #4]
 8008980:	687b      	ldr	r3, [r7, #4]
 8008982:	617b      	str	r3, [r7, #20]
 8008984:	687b      	ldr	r3, [r7, #4]
 8008986:	2b00      	cmp	r3, #0
 8008988:	d04e      	beq.n	8008a28 <vPortFree+0xb0>
 800898a:	2308      	movs	r3, #8
 800898c:	425b      	negs	r3, r3
 800898e:	697a      	ldr	r2, [r7, #20]
 8008990:	4413      	add	r3, r2
 8008992:	617b      	str	r3, [r7, #20]
 8008994:	697b      	ldr	r3, [r7, #20]
 8008996:	613b      	str	r3, [r7, #16]
 8008998:	693b      	ldr	r3, [r7, #16]
 800899a:	685a      	ldr	r2, [r3, #4]
 800899c:	4b24      	ldr	r3, [pc, #144]	@ (8008a30 <vPortFree+0xb8>)
 800899e:	681b      	ldr	r3, [r3, #0]
 80089a0:	4013      	ands	r3, r2
 80089a2:	2b00      	cmp	r3, #0
 80089a4:	d10d      	bne.n	80089c2 <vPortFree+0x4a>
 80089a6:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80089aa:	b672      	cpsid	i
 80089ac:	f383 8811 	msr	BASEPRI, r3
 80089b0:	f3bf 8f6f 	isb	sy
 80089b4:	f3bf 8f4f 	dsb	sy
 80089b8:	b662      	cpsie	i
 80089ba:	60fb      	str	r3, [r7, #12]
 80089bc:	bf00      	nop
 80089be:	bf00      	nop
 80089c0:	e7fd      	b.n	80089be <vPortFree+0x46>
 80089c2:	693b      	ldr	r3, [r7, #16]
 80089c4:	681b      	ldr	r3, [r3, #0]
 80089c6:	2b00      	cmp	r3, #0
 80089c8:	d00d      	beq.n	80089e6 <vPortFree+0x6e>
 80089ca:	f04f 0350 	mov.w	r3, #80	@ 0x50
 80089ce:	b672      	cpsid	i
 80089d0:	f383 8811 	msr	BASEPRI, r3
 80089d4:	f3bf 8f6f 	isb	sy
 80089d8:	f3bf 8f4f 	dsb	sy
 80089dc:	b662      	cpsie	i
 80089de:	60bb      	str	r3, [r7, #8]
 80089e0:	bf00      	nop
 80089e2:	bf00      	nop
 80089e4:	e7fd      	b.n	80089e2 <vPortFree+0x6a>
 80089e6:	693b      	ldr	r3, [r7, #16]
 80089e8:	685a      	ldr	r2, [r3, #4]
 80089ea:	4b11      	ldr	r3, [pc, #68]	@ (8008a30 <vPortFree+0xb8>)
 80089ec:	681b      	ldr	r3, [r3, #0]
 80089ee:	4013      	ands	r3, r2
 80089f0:	2b00      	cmp	r3, #0
 80089f2:	d019      	beq.n	8008a28 <vPortFree+0xb0>
 80089f4:	693b      	ldr	r3, [r7, #16]
 80089f6:	681b      	ldr	r3, [r3, #0]
 80089f8:	2b00      	cmp	r3, #0
 80089fa:	d115      	bne.n	8008a28 <vPortFree+0xb0>
 80089fc:	693b      	ldr	r3, [r7, #16]
 80089fe:	685a      	ldr	r2, [r3, #4]
 8008a00:	4b0b      	ldr	r3, [pc, #44]	@ (8008a30 <vPortFree+0xb8>)
 8008a02:	681b      	ldr	r3, [r3, #0]
 8008a04:	43db      	mvns	r3, r3
 8008a06:	401a      	ands	r2, r3
 8008a08:	693b      	ldr	r3, [r7, #16]
 8008a0a:	605a      	str	r2, [r3, #4]
 8008a0c:	f7fe f8ca 	bl	8006ba4 <vTaskSuspendAll>
 8008a10:	693b      	ldr	r3, [r7, #16]
 8008a12:	685a      	ldr	r2, [r3, #4]
 8008a14:	4b07      	ldr	r3, [pc, #28]	@ (8008a34 <vPortFree+0xbc>)
 8008a16:	681b      	ldr	r3, [r3, #0]
 8008a18:	4413      	add	r3, r2
 8008a1a:	4a06      	ldr	r2, [pc, #24]	@ (8008a34 <vPortFree+0xbc>)
 8008a1c:	6013      	str	r3, [r2, #0]
 8008a1e:	6938      	ldr	r0, [r7, #16]
 8008a20:	f000 f86c 	bl	8008afc <prvInsertBlockIntoFreeList>
 8008a24:	f7fe f8cc 	bl	8006bc0 <xTaskResumeAll>
 8008a28:	bf00      	nop
 8008a2a:	3718      	adds	r7, #24
 8008a2c:	46bd      	mov	sp, r7
 8008a2e:	bd80      	pop	{r7, pc}
 8008a30:	200413c0 	.word	0x200413c0
 8008a34:	200413b8 	.word	0x200413b8

08008a38 <prvHeapInit>:
 8008a38:	b480      	push	{r7}
 8008a3a:	b085      	sub	sp, #20
 8008a3c:	af00      	add	r7, sp, #0
 8008a3e:	f44f 2380 	mov.w	r3, #262144	@ 0x40000
 8008a42:	60bb      	str	r3, [r7, #8]
 8008a44:	4b27      	ldr	r3, [pc, #156]	@ (8008ae4 <prvHeapInit+0xac>)
 8008a46:	60fb      	str	r3, [r7, #12]
 8008a48:	68fb      	ldr	r3, [r7, #12]
 8008a4a:	f003 0307 	and.w	r3, r3, #7
 8008a4e:	2b00      	cmp	r3, #0
 8008a50:	d00c      	beq.n	8008a6c <prvHeapInit+0x34>
 8008a52:	68fb      	ldr	r3, [r7, #12]
 8008a54:	3307      	adds	r3, #7
 8008a56:	60fb      	str	r3, [r7, #12]
 8008a58:	68fb      	ldr	r3, [r7, #12]
 8008a5a:	f023 0307 	bic.w	r3, r3, #7
 8008a5e:	60fb      	str	r3, [r7, #12]
 8008a60:	68ba      	ldr	r2, [r7, #8]
 8008a62:	68fb      	ldr	r3, [r7, #12]
 8008a64:	1ad3      	subs	r3, r2, r3
 8008a66:	4a1f      	ldr	r2, [pc, #124]	@ (8008ae4 <prvHeapInit+0xac>)
 8008a68:	4413      	add	r3, r2
 8008a6a:	60bb      	str	r3, [r7, #8]
 8008a6c:	68fb      	ldr	r3, [r7, #12]
 8008a6e:	607b      	str	r3, [r7, #4]
 8008a70:	4a1d      	ldr	r2, [pc, #116]	@ (8008ae8 <prvHeapInit+0xb0>)
 8008a72:	687b      	ldr	r3, [r7, #4]
 8008a74:	6013      	str	r3, [r2, #0]
 8008a76:	4b1c      	ldr	r3, [pc, #112]	@ (8008ae8 <prvHeapInit+0xb0>)
 8008a78:	2200      	movs	r2, #0
 8008a7a:	605a      	str	r2, [r3, #4]
 8008a7c:	687b      	ldr	r3, [r7, #4]
 8008a7e:	68ba      	ldr	r2, [r7, #8]
 8008a80:	4413      	add	r3, r2
 8008a82:	60fb      	str	r3, [r7, #12]
 8008a84:	2208      	movs	r2, #8
 8008a86:	68fb      	ldr	r3, [r7, #12]
 8008a88:	1a9b      	subs	r3, r3, r2
 8008a8a:	60fb      	str	r3, [r7, #12]
 8008a8c:	68fb      	ldr	r3, [r7, #12]
 8008a8e:	f023 0307 	bic.w	r3, r3, #7
 8008a92:	60fb      	str	r3, [r7, #12]
 8008a94:	68fb      	ldr	r3, [r7, #12]
 8008a96:	4a15      	ldr	r2, [pc, #84]	@ (8008aec <prvHeapInit+0xb4>)
 8008a98:	6013      	str	r3, [r2, #0]
 8008a9a:	4b14      	ldr	r3, [pc, #80]	@ (8008aec <prvHeapInit+0xb4>)
 8008a9c:	681b      	ldr	r3, [r3, #0]
 8008a9e:	2200      	movs	r2, #0
 8008aa0:	605a      	str	r2, [r3, #4]
 8008aa2:	4b12      	ldr	r3, [pc, #72]	@ (8008aec <prvHeapInit+0xb4>)
 8008aa4:	681b      	ldr	r3, [r3, #0]
 8008aa6:	2200      	movs	r2, #0
 8008aa8:	601a      	str	r2, [r3, #0]
 8008aaa:	687b      	ldr	r3, [r7, #4]
 8008aac:	603b      	str	r3, [r7, #0]
 8008aae:	683b      	ldr	r3, [r7, #0]
 8008ab0:	68fa      	ldr	r2, [r7, #12]
 8008ab2:	1ad2      	subs	r2, r2, r3
 8008ab4:	683b      	ldr	r3, [r7, #0]
 8008ab6:	605a      	str	r2, [r3, #4]
 8008ab8:	4b0c      	ldr	r3, [pc, #48]	@ (8008aec <prvHeapInit+0xb4>)
 8008aba:	681a      	ldr	r2, [r3, #0]
 8008abc:	683b      	ldr	r3, [r7, #0]
 8008abe:	601a      	str	r2, [r3, #0]
 8008ac0:	683b      	ldr	r3, [r7, #0]
 8008ac2:	685b      	ldr	r3, [r3, #4]
 8008ac4:	4a0a      	ldr	r2, [pc, #40]	@ (8008af0 <prvHeapInit+0xb8>)
 8008ac6:	6013      	str	r3, [r2, #0]
 8008ac8:	683b      	ldr	r3, [r7, #0]
 8008aca:	685b      	ldr	r3, [r3, #4]
 8008acc:	4a09      	ldr	r2, [pc, #36]	@ (8008af4 <prvHeapInit+0xbc>)
 8008ace:	6013      	str	r3, [r2, #0]
 8008ad0:	4b09      	ldr	r3, [pc, #36]	@ (8008af8 <prvHeapInit+0xc0>)
 8008ad2:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
 8008ad6:	601a      	str	r2, [r3, #0]
 8008ad8:	bf00      	nop
 8008ada:	3714      	adds	r7, #20
 8008adc:	46bd      	mov	sp, r7
 8008ade:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008ae2:	4770      	bx	lr
 8008ae4:	200013ac 	.word	0x200013ac
 8008ae8:	200413ac 	.word	0x200413ac
 8008aec:	200413b4 	.word	0x200413b4
 8008af0:	200413bc 	.word	0x200413bc
 8008af4:	200413b8 	.word	0x200413b8
 8008af8:	200413c0 	.word	0x200413c0

08008afc <prvInsertBlockIntoFreeList>:
 8008afc:	b480      	push	{r7}
 8008afe:	b085      	sub	sp, #20
 8008b00:	af00      	add	r7, sp, #0
 8008b02:	6078      	str	r0, [r7, #4]
 8008b04:	4b28      	ldr	r3, [pc, #160]	@ (8008ba8 <prvInsertBlockIntoFreeList+0xac>)
 8008b06:	60fb      	str	r3, [r7, #12]
 8008b08:	e002      	b.n	8008b10 <prvInsertBlockIntoFreeList+0x14>
 8008b0a:	68fb      	ldr	r3, [r7, #12]
 8008b0c:	681b      	ldr	r3, [r3, #0]
 8008b0e:	60fb      	str	r3, [r7, #12]
 8008b10:	68fb      	ldr	r3, [r7, #12]
 8008b12:	681b      	ldr	r3, [r3, #0]
 8008b14:	687a      	ldr	r2, [r7, #4]
 8008b16:	429a      	cmp	r2, r3
 8008b18:	d8f7      	bhi.n	8008b0a <prvInsertBlockIntoFreeList+0xe>
 8008b1a:	68fb      	ldr	r3, [r7, #12]
 8008b1c:	60bb      	str	r3, [r7, #8]
 8008b1e:	68fb      	ldr	r3, [r7, #12]
 8008b20:	685b      	ldr	r3, [r3, #4]
 8008b22:	68ba      	ldr	r2, [r7, #8]
 8008b24:	4413      	add	r3, r2
 8008b26:	687a      	ldr	r2, [r7, #4]
 8008b28:	429a      	cmp	r2, r3
 8008b2a:	d108      	bne.n	8008b3e <prvInsertBlockIntoFreeList+0x42>
 8008b2c:	68fb      	ldr	r3, [r7, #12]
 8008b2e:	685a      	ldr	r2, [r3, #4]
 8008b30:	687b      	ldr	r3, [r7, #4]
 8008b32:	685b      	ldr	r3, [r3, #4]
 8008b34:	441a      	add	r2, r3
 8008b36:	68fb      	ldr	r3, [r7, #12]
 8008b38:	605a      	str	r2, [r3, #4]
 8008b3a:	68fb      	ldr	r3, [r7, #12]
 8008b3c:	607b      	str	r3, [r7, #4]
 8008b3e:	687b      	ldr	r3, [r7, #4]
 8008b40:	60bb      	str	r3, [r7, #8]
 8008b42:	687b      	ldr	r3, [r7, #4]
 8008b44:	685b      	ldr	r3, [r3, #4]
 8008b46:	68ba      	ldr	r2, [r7, #8]
 8008b48:	441a      	add	r2, r3
 8008b4a:	68fb      	ldr	r3, [r7, #12]
 8008b4c:	681b      	ldr	r3, [r3, #0]
 8008b4e:	429a      	cmp	r2, r3
 8008b50:	d118      	bne.n	8008b84 <prvInsertBlockIntoFreeList+0x88>
 8008b52:	68fb      	ldr	r3, [r7, #12]
 8008b54:	681a      	ldr	r2, [r3, #0]
 8008b56:	4b15      	ldr	r3, [pc, #84]	@ (8008bac <prvInsertBlockIntoFreeList+0xb0>)
 8008b58:	681b      	ldr	r3, [r3, #0]
 8008b5a:	429a      	cmp	r2, r3
 8008b5c:	d00d      	beq.n	8008b7a <prvInsertBlockIntoFreeList+0x7e>
 8008b5e:	687b      	ldr	r3, [r7, #4]
 8008b60:	685a      	ldr	r2, [r3, #4]
 8008b62:	68fb      	ldr	r3, [r7, #12]
 8008b64:	681b      	ldr	r3, [r3, #0]
 8008b66:	685b      	ldr	r3, [r3, #4]
 8008b68:	441a      	add	r2, r3
 8008b6a:	687b      	ldr	r3, [r7, #4]
 8008b6c:	605a      	str	r2, [r3, #4]
 8008b6e:	68fb      	ldr	r3, [r7, #12]
 8008b70:	681b      	ldr	r3, [r3, #0]
 8008b72:	681a      	ldr	r2, [r3, #0]
 8008b74:	687b      	ldr	r3, [r7, #4]
 8008b76:	601a      	str	r2, [r3, #0]
 8008b78:	e008      	b.n	8008b8c <prvInsertBlockIntoFreeList+0x90>
 8008b7a:	4b0c      	ldr	r3, [pc, #48]	@ (8008bac <prvInsertBlockIntoFreeList+0xb0>)
 8008b7c:	681a      	ldr	r2, [r3, #0]
 8008b7e:	687b      	ldr	r3, [r7, #4]
 8008b80:	601a      	str	r2, [r3, #0]
 8008b82:	e003      	b.n	8008b8c <prvInsertBlockIntoFreeList+0x90>
 8008b84:	68fb      	ldr	r3, [r7, #12]
 8008b86:	681a      	ldr	r2, [r3, #0]
 8008b88:	687b      	ldr	r3, [r7, #4]
 8008b8a:	601a      	str	r2, [r3, #0]
 8008b8c:	68fa      	ldr	r2, [r7, #12]
 8008b8e:	687b      	ldr	r3, [r7, #4]
 8008b90:	429a      	cmp	r2, r3
 8008b92:	d002      	beq.n	8008b9a <prvInsertBlockIntoFreeList+0x9e>
 8008b94:	68fb      	ldr	r3, [r7, #12]
 8008b96:	687a      	ldr	r2, [r7, #4]
 8008b98:	601a      	str	r2, [r3, #0]
 8008b9a:	bf00      	nop
 8008b9c:	3714      	adds	r7, #20
 8008b9e:	46bd      	mov	sp, r7
 8008ba0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008ba4:	4770      	bx	lr
 8008ba6:	bf00      	nop
 8008ba8:	200413ac 	.word	0x200413ac
 8008bac:	200413b4 	.word	0x200413b4

08008bb0 <pxPortInitialiseStack>:
 8008bb0:	b480      	push	{r7}
 8008bb2:	b085      	sub	sp, #20
 8008bb4:	af00      	add	r7, sp, #0
 8008bb6:	60f8      	str	r0, [r7, #12]
 8008bb8:	60b9      	str	r1, [r7, #8]
 8008bba:	607a      	str	r2, [r7, #4]
 8008bbc:	68fb      	ldr	r3, [r7, #12]
 8008bbe:	3b04      	subs	r3, #4
 8008bc0:	60fb      	str	r3, [r7, #12]
 8008bc2:	68fb      	ldr	r3, [r7, #12]
 8008bc4:	f04f 7280 	mov.w	r2, #16777216	@ 0x1000000
 8008bc8:	601a      	str	r2, [r3, #0]
 8008bca:	68fb      	ldr	r3, [r7, #12]
 8008bcc:	3b04      	subs	r3, #4
 8008bce:	60fb      	str	r3, [r7, #12]
 8008bd0:	68bb      	ldr	r3, [r7, #8]
 8008bd2:	f023 0201 	bic.w	r2, r3, #1
 8008bd6:	68fb      	ldr	r3, [r7, #12]
 8008bd8:	601a      	str	r2, [r3, #0]
 8008bda:	68fb      	ldr	r3, [r7, #12]
 8008bdc:	3b04      	subs	r3, #4
 8008bde:	60fb      	str	r3, [r7, #12]
 8008be0:	4a0c      	ldr	r2, [pc, #48]	@ (8008c14 <pxPortInitialiseStack+0x64>)
 8008be2:	68fb      	ldr	r3, [r7, #12]
 8008be4:	601a      	str	r2, [r3, #0]
 8008be6:	68fb      	ldr	r3, [r7, #12]
 8008be8:	3b14      	subs	r3, #20
 8008bea:	60fb      	str	r3, [r7, #12]
 8008bec:	687a      	ldr	r2, [r7, #4]
 8008bee:	68fb      	ldr	r3, [r7, #12]
 8008bf0:	601a      	str	r2, [r3, #0]
 8008bf2:	68fb      	ldr	r3, [r7, #12]
 8008bf4:	3b04      	subs	r3, #4
 8008bf6:	60fb      	str	r3, [r7, #12]
 8008bf8:	68fb      	ldr	r3, [r7, #12]
 8008bfa:	f06f 0202 	mvn.w	r2, #2
 8008bfe:	601a      	str	r2, [r3, #0]
 8008c00:	68fb      	ldr	r3, [r7, #12]
 8008c02:	3b20      	subs	r3, #32
 8008c04:	60fb      	str	r3, [r7, #12]
 8008c06:	68fb      	ldr	r3, [r7, #12]
 8008c08:	4618      	mov	r0, r3
 8008c0a:	3714      	adds	r7, #20
 8008c0c:	46bd      	mov	sp, r7
 8008c0e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008c12:	4770      	bx	lr
 8008c14:	08008c19 	.word	0x08008c19

08008c18 <prvTaskExitError>:
 8008c18:	b480      	push	{r7}
 8008c1a:	b085      	sub	sp, #20
 8008c1c:	af00      	add	r7, sp, #0
 8008c1e:	2300      	movs	r3, #0
 8008c20:	607b      	str	r3, [r7, #4]
 8008c22:	4b15      	ldr	r3, [pc, #84]	@ (8008c78 <prvTaskExitError+0x60>)
 8008c24:	681b      	ldr	r3, [r3, #0]
 8008c26:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8008c2a:	d00d      	beq.n	8008c48 <prvTaskExitError+0x30>
 8008c2c:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008c30:	b672      	cpsid	i
 8008c32:	f383 8811 	msr	BASEPRI, r3
 8008c36:	f3bf 8f6f 	isb	sy
 8008c3a:	f3bf 8f4f 	dsb	sy
 8008c3e:	b662      	cpsie	i
 8008c40:	60fb      	str	r3, [r7, #12]
 8008c42:	bf00      	nop
 8008c44:	bf00      	nop
 8008c46:	e7fd      	b.n	8008c44 <prvTaskExitError+0x2c>
 8008c48:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008c4c:	b672      	cpsid	i
 8008c4e:	f383 8811 	msr	BASEPRI, r3
 8008c52:	f3bf 8f6f 	isb	sy
 8008c56:	f3bf 8f4f 	dsb	sy
 8008c5a:	b662      	cpsie	i
 8008c5c:	60bb      	str	r3, [r7, #8]
 8008c5e:	bf00      	nop
 8008c60:	bf00      	nop
 8008c62:	687b      	ldr	r3, [r7, #4]
 8008c64:	2b00      	cmp	r3, #0
 8008c66:	d0fc      	beq.n	8008c62 <prvTaskExitError+0x4a>
 8008c68:	bf00      	nop
 8008c6a:	bf00      	nop
 8008c6c:	3714      	adds	r7, #20
 8008c6e:	46bd      	mov	sp, r7
 8008c70:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008c74:	4770      	bx	lr
 8008c76:	bf00      	nop
 8008c78:	2000000c 	.word	0x2000000c
 8008c7c:	00000000 	.word	0x00000000

08008c80 <SVC_Handler>:
 8008c80:	4b07      	ldr	r3, [pc, #28]	@ (8008ca0 <pxCurrentTCBConst2>)
 8008c82:	6819      	ldr	r1, [r3, #0]
 8008c84:	6808      	ldr	r0, [r1, #0]
 8008c86:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008c8a:	f380 8809 	msr	PSP, r0
 8008c8e:	f3bf 8f6f 	isb	sy
 8008c92:	f04f 0000 	mov.w	r0, #0
 8008c96:	f380 8811 	msr	BASEPRI, r0
 8008c9a:	4770      	bx	lr
 8008c9c:	f3af 8000 	nop.w

08008ca0 <pxCurrentTCBConst2>:
 8008ca0:	200000c4 	.word	0x200000c4
 8008ca4:	bf00      	nop
 8008ca6:	bf00      	nop

08008ca8 <prvPortStartFirstTask>:
 8008ca8:	4808      	ldr	r0, [pc, #32]	@ (8008ccc <prvPortStartFirstTask+0x24>)
 8008caa:	6800      	ldr	r0, [r0, #0]
 8008cac:	6800      	ldr	r0, [r0, #0]
 8008cae:	f380 8808 	msr	MSP, r0
 8008cb2:	f04f 0000 	mov.w	r0, #0
 8008cb6:	f380 8814 	msr	CONTROL, r0
 8008cba:	b662      	cpsie	i
 8008cbc:	b661      	cpsie	f
 8008cbe:	f3bf 8f4f 	dsb	sy
 8008cc2:	f3bf 8f6f 	isb	sy
 8008cc6:	df00      	svc	0
 8008cc8:	bf00      	nop
 8008cca:	bf00      	nop
 8008ccc:	e000ed08 	.word	0xe000ed08

08008cd0 <xPortStartScheduler>:
 8008cd0:	b580      	push	{r7, lr}
 8008cd2:	b084      	sub	sp, #16
 8008cd4:	af00      	add	r7, sp, #0
 8008cd6:	4b37      	ldr	r3, [pc, #220]	@ (8008db4 <xPortStartScheduler+0xe4>)
 8008cd8:	60fb      	str	r3, [r7, #12]
 8008cda:	68fb      	ldr	r3, [r7, #12]
 8008cdc:	781b      	ldrb	r3, [r3, #0]
 8008cde:	b2db      	uxtb	r3, r3
 8008ce0:	607b      	str	r3, [r7, #4]
 8008ce2:	68fb      	ldr	r3, [r7, #12]
 8008ce4:	22ff      	movs	r2, #255	@ 0xff
 8008ce6:	701a      	strb	r2, [r3, #0]
 8008ce8:	68fb      	ldr	r3, [r7, #12]
 8008cea:	781b      	ldrb	r3, [r3, #0]
 8008cec:	b2db      	uxtb	r3, r3
 8008cee:	70fb      	strb	r3, [r7, #3]
 8008cf0:	78fb      	ldrb	r3, [r7, #3]
 8008cf2:	b2db      	uxtb	r3, r3
 8008cf4:	f003 0350 	and.w	r3, r3, #80	@ 0x50
 8008cf8:	b2da      	uxtb	r2, r3
 8008cfa:	4b2f      	ldr	r3, [pc, #188]	@ (8008db8 <xPortStartScheduler+0xe8>)
 8008cfc:	701a      	strb	r2, [r3, #0]
 8008cfe:	4b2f      	ldr	r3, [pc, #188]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d00:	2207      	movs	r2, #7
 8008d02:	601a      	str	r2, [r3, #0]
 8008d04:	e009      	b.n	8008d1a <xPortStartScheduler+0x4a>
 8008d06:	4b2d      	ldr	r3, [pc, #180]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d08:	681b      	ldr	r3, [r3, #0]
 8008d0a:	3b01      	subs	r3, #1
 8008d0c:	4a2b      	ldr	r2, [pc, #172]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d0e:	6013      	str	r3, [r2, #0]
 8008d10:	78fb      	ldrb	r3, [r7, #3]
 8008d12:	b2db      	uxtb	r3, r3
 8008d14:	005b      	lsls	r3, r3, #1
 8008d16:	b2db      	uxtb	r3, r3
 8008d18:	70fb      	strb	r3, [r7, #3]
 8008d1a:	78fb      	ldrb	r3, [r7, #3]
 8008d1c:	b2db      	uxtb	r3, r3
 8008d1e:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8008d22:	2b80      	cmp	r3, #128	@ 0x80
 8008d24:	d0ef      	beq.n	8008d06 <xPortStartScheduler+0x36>
 8008d26:	4b25      	ldr	r3, [pc, #148]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d28:	681b      	ldr	r3, [r3, #0]
 8008d2a:	f1c3 0307 	rsb	r3, r3, #7
 8008d2e:	2b04      	cmp	r3, #4
 8008d30:	d00d      	beq.n	8008d4e <xPortStartScheduler+0x7e>
 8008d32:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008d36:	b672      	cpsid	i
 8008d38:	f383 8811 	msr	BASEPRI, r3
 8008d3c:	f3bf 8f6f 	isb	sy
 8008d40:	f3bf 8f4f 	dsb	sy
 8008d44:	b662      	cpsie	i
 8008d46:	60bb      	str	r3, [r7, #8]
 8008d48:	bf00      	nop
 8008d4a:	bf00      	nop
 8008d4c:	e7fd      	b.n	8008d4a <xPortStartScheduler+0x7a>
 8008d4e:	4b1b      	ldr	r3, [pc, #108]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d50:	681b      	ldr	r3, [r3, #0]
 8008d52:	021b      	lsls	r3, r3, #8
 8008d54:	4a19      	ldr	r2, [pc, #100]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d56:	6013      	str	r3, [r2, #0]
 8008d58:	4b18      	ldr	r3, [pc, #96]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d5a:	681b      	ldr	r3, [r3, #0]
 8008d5c:	f403 63e0 	and.w	r3, r3, #1792	@ 0x700
 8008d60:	4a16      	ldr	r2, [pc, #88]	@ (8008dbc <xPortStartScheduler+0xec>)
 8008d62:	6013      	str	r3, [r2, #0]
 8008d64:	687b      	ldr	r3, [r7, #4]
 8008d66:	b2da      	uxtb	r2, r3
 8008d68:	68fb      	ldr	r3, [r7, #12]
 8008d6a:	701a      	strb	r2, [r3, #0]
 8008d6c:	4b14      	ldr	r3, [pc, #80]	@ (8008dc0 <xPortStartScheduler+0xf0>)
 8008d6e:	681b      	ldr	r3, [r3, #0]
 8008d70:	4a13      	ldr	r2, [pc, #76]	@ (8008dc0 <xPortStartScheduler+0xf0>)
 8008d72:	f443 0370 	orr.w	r3, r3, #15728640	@ 0xf00000
 8008d76:	6013      	str	r3, [r2, #0]
 8008d78:	4b11      	ldr	r3, [pc, #68]	@ (8008dc0 <xPortStartScheduler+0xf0>)
 8008d7a:	681b      	ldr	r3, [r3, #0]
 8008d7c:	4a10      	ldr	r2, [pc, #64]	@ (8008dc0 <xPortStartScheduler+0xf0>)
 8008d7e:	f043 4370 	orr.w	r3, r3, #4026531840	@ 0xf0000000
 8008d82:	6013      	str	r3, [r2, #0]
 8008d84:	f000 f8dc 	bl	8008f40 <vPortSetupTimerInterrupt>
 8008d88:	4b0e      	ldr	r3, [pc, #56]	@ (8008dc4 <xPortStartScheduler+0xf4>)
 8008d8a:	2200      	movs	r2, #0
 8008d8c:	601a      	str	r2, [r3, #0]
 8008d8e:	f000 f8fb 	bl	8008f88 <vPortEnableVFP>
 8008d92:	4b0d      	ldr	r3, [pc, #52]	@ (8008dc8 <xPortStartScheduler+0xf8>)
 8008d94:	681b      	ldr	r3, [r3, #0]
 8008d96:	4a0c      	ldr	r2, [pc, #48]	@ (8008dc8 <xPortStartScheduler+0xf8>)
 8008d98:	f043 4340 	orr.w	r3, r3, #3221225472	@ 0xc0000000
 8008d9c:	6013      	str	r3, [r2, #0]
 8008d9e:	f7ff ff83 	bl	8008ca8 <prvPortStartFirstTask>
 8008da2:	f7fe f88b 	bl	8006ebc <vTaskSwitchContext>
 8008da6:	f7ff ff37 	bl	8008c18 <prvTaskExitError>
 8008daa:	2300      	movs	r3, #0
 8008dac:	4618      	mov	r0, r3
 8008dae:	3710      	adds	r7, #16
 8008db0:	46bd      	mov	sp, r7
 8008db2:	bd80      	pop	{r7, pc}
 8008db4:	e000e400 	.word	0xe000e400
 8008db8:	200413c4 	.word	0x200413c4
 8008dbc:	200413c8 	.word	0x200413c8
 8008dc0:	e000ed20 	.word	0xe000ed20
 8008dc4:	2000000c 	.word	0x2000000c
 8008dc8:	e000ef34 	.word	0xe000ef34

08008dcc <vPortEnterCritical>:
 8008dcc:	b480      	push	{r7}
 8008dce:	b083      	sub	sp, #12
 8008dd0:	af00      	add	r7, sp, #0
 8008dd2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008dd6:	b672      	cpsid	i
 8008dd8:	f383 8811 	msr	BASEPRI, r3
 8008ddc:	f3bf 8f6f 	isb	sy
 8008de0:	f3bf 8f4f 	dsb	sy
 8008de4:	b662      	cpsie	i
 8008de6:	607b      	str	r3, [r7, #4]
 8008de8:	bf00      	nop
 8008dea:	4b11      	ldr	r3, [pc, #68]	@ (8008e30 <vPortEnterCritical+0x64>)
 8008dec:	681b      	ldr	r3, [r3, #0]
 8008dee:	3301      	adds	r3, #1
 8008df0:	4a0f      	ldr	r2, [pc, #60]	@ (8008e30 <vPortEnterCritical+0x64>)
 8008df2:	6013      	str	r3, [r2, #0]
 8008df4:	4b0e      	ldr	r3, [pc, #56]	@ (8008e30 <vPortEnterCritical+0x64>)
 8008df6:	681b      	ldr	r3, [r3, #0]
 8008df8:	2b01      	cmp	r3, #1
 8008dfa:	d112      	bne.n	8008e22 <vPortEnterCritical+0x56>
 8008dfc:	4b0d      	ldr	r3, [pc, #52]	@ (8008e34 <vPortEnterCritical+0x68>)
 8008dfe:	681b      	ldr	r3, [r3, #0]
 8008e00:	b2db      	uxtb	r3, r3
 8008e02:	2b00      	cmp	r3, #0
 8008e04:	d00d      	beq.n	8008e22 <vPortEnterCritical+0x56>
 8008e06:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008e0a:	b672      	cpsid	i
 8008e0c:	f383 8811 	msr	BASEPRI, r3
 8008e10:	f3bf 8f6f 	isb	sy
 8008e14:	f3bf 8f4f 	dsb	sy
 8008e18:	b662      	cpsie	i
 8008e1a:	603b      	str	r3, [r7, #0]
 8008e1c:	bf00      	nop
 8008e1e:	bf00      	nop
 8008e20:	e7fd      	b.n	8008e1e <vPortEnterCritical+0x52>
 8008e22:	bf00      	nop
 8008e24:	370c      	adds	r7, #12
 8008e26:	46bd      	mov	sp, r7
 8008e28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008e2c:	4770      	bx	lr
 8008e2e:	bf00      	nop
 8008e30:	2000000c 	.word	0x2000000c
 8008e34:	e000ed04 	.word	0xe000ed04

08008e38 <vPortExitCritical>:
 8008e38:	b480      	push	{r7}
 8008e3a:	b083      	sub	sp, #12
 8008e3c:	af00      	add	r7, sp, #0
 8008e3e:	4b13      	ldr	r3, [pc, #76]	@ (8008e8c <vPortExitCritical+0x54>)
 8008e40:	681b      	ldr	r3, [r3, #0]
 8008e42:	2b00      	cmp	r3, #0
 8008e44:	d10d      	bne.n	8008e62 <vPortExitCritical+0x2a>
 8008e46:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008e4a:	b672      	cpsid	i
 8008e4c:	f383 8811 	msr	BASEPRI, r3
 8008e50:	f3bf 8f6f 	isb	sy
 8008e54:	f3bf 8f4f 	dsb	sy
 8008e58:	b662      	cpsie	i
 8008e5a:	607b      	str	r3, [r7, #4]
 8008e5c:	bf00      	nop
 8008e5e:	bf00      	nop
 8008e60:	e7fd      	b.n	8008e5e <vPortExitCritical+0x26>
 8008e62:	4b0a      	ldr	r3, [pc, #40]	@ (8008e8c <vPortExitCritical+0x54>)
 8008e64:	681b      	ldr	r3, [r3, #0]
 8008e66:	3b01      	subs	r3, #1
 8008e68:	4a08      	ldr	r2, [pc, #32]	@ (8008e8c <vPortExitCritical+0x54>)
 8008e6a:	6013      	str	r3, [r2, #0]
 8008e6c:	4b07      	ldr	r3, [pc, #28]	@ (8008e8c <vPortExitCritical+0x54>)
 8008e6e:	681b      	ldr	r3, [r3, #0]
 8008e70:	2b00      	cmp	r3, #0
 8008e72:	d105      	bne.n	8008e80 <vPortExitCritical+0x48>
 8008e74:	2300      	movs	r3, #0
 8008e76:	603b      	str	r3, [r7, #0]
 8008e78:	683b      	ldr	r3, [r7, #0]
 8008e7a:	f383 8811 	msr	BASEPRI, r3
 8008e7e:	bf00      	nop
 8008e80:	bf00      	nop
 8008e82:	370c      	adds	r7, #12
 8008e84:	46bd      	mov	sp, r7
 8008e86:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008e8a:	4770      	bx	lr
 8008e8c:	2000000c 	.word	0x2000000c

08008e90 <PendSV_Handler>:
 8008e90:	f3ef 8009 	mrs	r0, PSP
 8008e94:	f3bf 8f6f 	isb	sy
 8008e98:	4b15      	ldr	r3, [pc, #84]	@ (8008ef0 <pxCurrentTCBConst>)
 8008e9a:	681a      	ldr	r2, [r3, #0]
 8008e9c:	f01e 0f10 	tst.w	lr, #16
 8008ea0:	bf08      	it	eq
 8008ea2:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 8008ea6:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008eaa:	6010      	str	r0, [r2, #0]
 8008eac:	e92d 0009 	stmdb	sp!, {r0, r3}
 8008eb0:	f04f 0050 	mov.w	r0, #80	@ 0x50
 8008eb4:	b672      	cpsid	i
 8008eb6:	f380 8811 	msr	BASEPRI, r0
 8008eba:	f3bf 8f4f 	dsb	sy
 8008ebe:	f3bf 8f6f 	isb	sy
 8008ec2:	b662      	cpsie	i
 8008ec4:	f7fd fffa 	bl	8006ebc <vTaskSwitchContext>
 8008ec8:	f04f 0000 	mov.w	r0, #0
 8008ecc:	f380 8811 	msr	BASEPRI, r0
 8008ed0:	bc09      	pop	{r0, r3}
 8008ed2:	6819      	ldr	r1, [r3, #0]
 8008ed4:	6808      	ldr	r0, [r1, #0]
 8008ed6:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008eda:	f01e 0f10 	tst.w	lr, #16
 8008ede:	bf08      	it	eq
 8008ee0:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 8008ee4:	f380 8809 	msr	PSP, r0
 8008ee8:	f3bf 8f6f 	isb	sy
 8008eec:	4770      	bx	lr
 8008eee:	bf00      	nop

08008ef0 <pxCurrentTCBConst>:
 8008ef0:	200000c4 	.word	0x200000c4
 8008ef4:	bf00      	nop
 8008ef6:	bf00      	nop

08008ef8 <xPortSysTickHandler>:
 8008ef8:	b580      	push	{r7, lr}
 8008efa:	b082      	sub	sp, #8
 8008efc:	af00      	add	r7, sp, #0
 8008efe:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008f02:	b672      	cpsid	i
 8008f04:	f383 8811 	msr	BASEPRI, r3
 8008f08:	f3bf 8f6f 	isb	sy
 8008f0c:	f3bf 8f4f 	dsb	sy
 8008f10:	b662      	cpsie	i
 8008f12:	607b      	str	r3, [r7, #4]
 8008f14:	bf00      	nop
 8008f16:	f7fd ff15 	bl	8006d44 <xTaskIncrementTick>
 8008f1a:	4603      	mov	r3, r0
 8008f1c:	2b00      	cmp	r3, #0
 8008f1e:	d003      	beq.n	8008f28 <xPortSysTickHandler+0x30>
 8008f20:	4b06      	ldr	r3, [pc, #24]	@ (8008f3c <xPortSysTickHandler+0x44>)
 8008f22:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 8008f26:	601a      	str	r2, [r3, #0]
 8008f28:	2300      	movs	r3, #0
 8008f2a:	603b      	str	r3, [r7, #0]
 8008f2c:	683b      	ldr	r3, [r7, #0]
 8008f2e:	f383 8811 	msr	BASEPRI, r3
 8008f32:	bf00      	nop
 8008f34:	bf00      	nop
 8008f36:	3708      	adds	r7, #8
 8008f38:	46bd      	mov	sp, r7
 8008f3a:	bd80      	pop	{r7, pc}
 8008f3c:	e000ed04 	.word	0xe000ed04

08008f40 <vPortSetupTimerInterrupt>:
 8008f40:	b480      	push	{r7}
 8008f42:	af00      	add	r7, sp, #0
 8008f44:	4b0b      	ldr	r3, [pc, #44]	@ (8008f74 <vPortSetupTimerInterrupt+0x34>)
 8008f46:	2200      	movs	r2, #0
 8008f48:	601a      	str	r2, [r3, #0]
 8008f4a:	4b0b      	ldr	r3, [pc, #44]	@ (8008f78 <vPortSetupTimerInterrupt+0x38>)
 8008f4c:	2200      	movs	r2, #0
 8008f4e:	601a      	str	r2, [r3, #0]
 8008f50:	4b0a      	ldr	r3, [pc, #40]	@ (8008f7c <vPortSetupTimerInterrupt+0x3c>)
 8008f52:	681b      	ldr	r3, [r3, #0]
 8008f54:	4a0a      	ldr	r2, [pc, #40]	@ (8008f80 <vPortSetupTimerInterrupt+0x40>)
 8008f56:	fba2 2303 	umull	r2, r3, r2, r3
 8008f5a:	099b      	lsrs	r3, r3, #6
 8008f5c:	4a09      	ldr	r2, [pc, #36]	@ (8008f84 <vPortSetupTimerInterrupt+0x44>)
 8008f5e:	3b01      	subs	r3, #1
 8008f60:	6013      	str	r3, [r2, #0]
 8008f62:	4b04      	ldr	r3, [pc, #16]	@ (8008f74 <vPortSetupTimerInterrupt+0x34>)
 8008f64:	2207      	movs	r2, #7
 8008f66:	601a      	str	r2, [r3, #0]
 8008f68:	bf00      	nop
 8008f6a:	46bd      	mov	sp, r7
 8008f6c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8008f70:	4770      	bx	lr
 8008f72:	bf00      	nop
 8008f74:	e000e010 	.word	0xe000e010
 8008f78:	e000e018 	.word	0xe000e018
 8008f7c:	20000000 	.word	0x20000000
 8008f80:	10624dd3 	.word	0x10624dd3
 8008f84:	e000e014 	.word	0xe000e014

08008f88 <vPortEnableVFP>:
 8008f88:	f8df 000c 	ldr.w	r0, [pc, #12]	@ 8008f98 <vPortEnableVFP+0x10>
 8008f8c:	6801      	ldr	r1, [r0, #0]
 8008f8e:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
 8008f92:	6001      	str	r1, [r0, #0]
 8008f94:	4770      	bx	lr
 8008f96:	bf00      	nop
 8008f98:	e000ed88 	.word	0xe000ed88

08008f9c <vPortValidateInterruptPriority>:
 8008f9c:	b480      	push	{r7}
 8008f9e:	b085      	sub	sp, #20
 8008fa0:	af00      	add	r7, sp, #0
 8008fa2:	f3ef 8305 	mrs	r3, IPSR
 8008fa6:	60fb      	str	r3, [r7, #12]
 8008fa8:	68fb      	ldr	r3, [r7, #12]
 8008faa:	2b0f      	cmp	r3, #15
 8008fac:	d917      	bls.n	8008fde <vPortValidateInterruptPriority+0x42>
 8008fae:	4a1a      	ldr	r2, [pc, #104]	@ (8009018 <vPortValidateInterruptPriority+0x7c>)
 8008fb0:	68fb      	ldr	r3, [r7, #12]
 8008fb2:	4413      	add	r3, r2
 8008fb4:	781b      	ldrb	r3, [r3, #0]
 8008fb6:	72fb      	strb	r3, [r7, #11]
 8008fb8:	4b18      	ldr	r3, [pc, #96]	@ (800901c <vPortValidateInterruptPriority+0x80>)
 8008fba:	781b      	ldrb	r3, [r3, #0]
 8008fbc:	7afa      	ldrb	r2, [r7, #11]
 8008fbe:	429a      	cmp	r2, r3
 8008fc0:	d20d      	bcs.n	8008fde <vPortValidateInterruptPriority+0x42>
 8008fc2:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008fc6:	b672      	cpsid	i
 8008fc8:	f383 8811 	msr	BASEPRI, r3
 8008fcc:	f3bf 8f6f 	isb	sy
 8008fd0:	f3bf 8f4f 	dsb	sy
 8008fd4:	b662      	cpsie	i
 8008fd6:	607b      	str	r3, [r7, #4]
 8008fd8:	bf00      	nop
 8008fda:	bf00      	nop
 8008fdc:	e7fd      	b.n	8008fda <vPortValidateInterruptPriority+0x3e>
 8008fde:	4b10      	ldr	r3, [pc, #64]	@ (8009020 <vPortValidateInterruptPriority+0x84>)
 8008fe0:	681b      	ldr	r3, [r3, #0]
 8008fe2:	f403 62e0 	and.w	r2, r3, #1792	@ 0x700
 8008fe6:	4b0f      	ldr	r3, [pc, #60]	@ (8009024 <vPortValidateInterruptPriority+0x88>)
 8008fe8:	681b      	ldr	r3, [r3, #0]
 8008fea:	429a      	cmp	r2, r3
 8008fec:	d90d      	bls.n	800900a <vPortValidateInterruptPriority+0x6e>
 8008fee:	f04f 0350 	mov.w	r3, #80	@ 0x50
 8008ff2:	b672      	cpsid	i
 8008ff4:	f383 8811 	msr	BASEPRI, r3
 8008ff8:	f3bf 8f6f 	isb	sy
 8008ffc:	f3bf 8f4f 	dsb	sy
 8009000:	b662      	cpsie	i
 8009002:	603b      	str	r3, [r7, #0]
 8009004:	bf00      	nop
 8009006:	bf00      	nop
 8009008:	e7fd      	b.n	8009006 <vPortValidateInterruptPriority+0x6a>
 800900a:	bf00      	nop
 800900c:	3714      	adds	r7, #20
 800900e:	46bd      	mov	sp, r7
 8009010:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009014:	4770      	bx	lr
 8009016:	bf00      	nop
 8009018:	e000e3f0 	.word	0xe000e3f0
 800901c:	200413c4 	.word	0x200413c4
 8009020:	e000ed0c 	.word	0xe000ed0c
 8009024:	200413c8 	.word	0x200413c8

08009028 <disk_status>:
 8009028:	b580      	push	{r7, lr}
 800902a:	b084      	sub	sp, #16
 800902c:	af00      	add	r7, sp, #0
 800902e:	4603      	mov	r3, r0
 8009030:	71fb      	strb	r3, [r7, #7]
 8009032:	79fb      	ldrb	r3, [r7, #7]
 8009034:	4a08      	ldr	r2, [pc, #32]	@ (8009058 <disk_status+0x30>)
 8009036:	009b      	lsls	r3, r3, #2
 8009038:	4413      	add	r3, r2
 800903a:	685b      	ldr	r3, [r3, #4]
 800903c:	685b      	ldr	r3, [r3, #4]
 800903e:	79fa      	ldrb	r2, [r7, #7]
 8009040:	4905      	ldr	r1, [pc, #20]	@ (8009058 <disk_status+0x30>)
 8009042:	440a      	add	r2, r1
 8009044:	7a12      	ldrb	r2, [r2, #8]
 8009046:	4610      	mov	r0, r2
 8009048:	4798      	blx	r3
 800904a:	4603      	mov	r3, r0
 800904c:	73fb      	strb	r3, [r7, #15]
 800904e:	7bfb      	ldrb	r3, [r7, #15]
 8009050:	4618      	mov	r0, r3
 8009052:	3710      	adds	r7, #16
 8009054:	46bd      	mov	sp, r7
 8009056:	bd80      	pop	{r7, pc}
 8009058:	200413f4 	.word	0x200413f4

0800905c <disk_initialize>:
 800905c:	b580      	push	{r7, lr}
 800905e:	b084      	sub	sp, #16
 8009060:	af00      	add	r7, sp, #0
 8009062:	4603      	mov	r3, r0
 8009064:	71fb      	strb	r3, [r7, #7]
 8009066:	2300      	movs	r3, #0
 8009068:	73fb      	strb	r3, [r7, #15]
 800906a:	79fb      	ldrb	r3, [r7, #7]
 800906c:	4a0d      	ldr	r2, [pc, #52]	@ (80090a4 <disk_initialize+0x48>)
 800906e:	5cd3      	ldrb	r3, [r2, r3]
 8009070:	2b00      	cmp	r3, #0
 8009072:	d111      	bne.n	8009098 <disk_initialize+0x3c>
 8009074:	79fb      	ldrb	r3, [r7, #7]
 8009076:	4a0b      	ldr	r2, [pc, #44]	@ (80090a4 <disk_initialize+0x48>)
 8009078:	2101      	movs	r1, #1
 800907a:	54d1      	strb	r1, [r2, r3]
 800907c:	79fb      	ldrb	r3, [r7, #7]
 800907e:	4a09      	ldr	r2, [pc, #36]	@ (80090a4 <disk_initialize+0x48>)
 8009080:	009b      	lsls	r3, r3, #2
 8009082:	4413      	add	r3, r2
 8009084:	685b      	ldr	r3, [r3, #4]
 8009086:	681b      	ldr	r3, [r3, #0]
 8009088:	79fa      	ldrb	r2, [r7, #7]
 800908a:	4906      	ldr	r1, [pc, #24]	@ (80090a4 <disk_initialize+0x48>)
 800908c:	440a      	add	r2, r1
 800908e:	7a12      	ldrb	r2, [r2, #8]
 8009090:	4610      	mov	r0, r2
 8009092:	4798      	blx	r3
 8009094:	4603      	mov	r3, r0
 8009096:	73fb      	strb	r3, [r7, #15]
 8009098:	7bfb      	ldrb	r3, [r7, #15]
 800909a:	4618      	mov	r0, r3
 800909c:	3710      	adds	r7, #16
 800909e:	46bd      	mov	sp, r7
 80090a0:	bd80      	pop	{r7, pc}
 80090a2:	bf00      	nop
 80090a4:	200413f4 	.word	0x200413f4

080090a8 <disk_read>:
 80090a8:	b590      	push	{r4, r7, lr}
 80090aa:	b087      	sub	sp, #28
 80090ac:	af00      	add	r7, sp, #0
 80090ae:	60b9      	str	r1, [r7, #8]
 80090b0:	607a      	str	r2, [r7, #4]
 80090b2:	603b      	str	r3, [r7, #0]
 80090b4:	4603      	mov	r3, r0
 80090b6:	73fb      	strb	r3, [r7, #15]
 80090b8:	7bfb      	ldrb	r3, [r7, #15]
 80090ba:	4a0a      	ldr	r2, [pc, #40]	@ (80090e4 <disk_read+0x3c>)
 80090bc:	009b      	lsls	r3, r3, #2
 80090be:	4413      	add	r3, r2
 80090c0:	685b      	ldr	r3, [r3, #4]
 80090c2:	689c      	ldr	r4, [r3, #8]
 80090c4:	7bfb      	ldrb	r3, [r7, #15]
 80090c6:	4a07      	ldr	r2, [pc, #28]	@ (80090e4 <disk_read+0x3c>)
 80090c8:	4413      	add	r3, r2
 80090ca:	7a18      	ldrb	r0, [r3, #8]
 80090cc:	683b      	ldr	r3, [r7, #0]
 80090ce:	687a      	ldr	r2, [r7, #4]
 80090d0:	68b9      	ldr	r1, [r7, #8]
 80090d2:	47a0      	blx	r4
 80090d4:	4603      	mov	r3, r0
 80090d6:	75fb      	strb	r3, [r7, #23]
 80090d8:	7dfb      	ldrb	r3, [r7, #23]
 80090da:	4618      	mov	r0, r3
 80090dc:	371c      	adds	r7, #28
 80090de:	46bd      	mov	sp, r7
 80090e0:	bd90      	pop	{r4, r7, pc}
 80090e2:	bf00      	nop
 80090e4:	200413f4 	.word	0x200413f4

080090e8 <disk_write>:
 80090e8:	b590      	push	{r4, r7, lr}
 80090ea:	b087      	sub	sp, #28
 80090ec:	af00      	add	r7, sp, #0
 80090ee:	60b9      	str	r1, [r7, #8]
 80090f0:	607a      	str	r2, [r7, #4]
 80090f2:	603b      	str	r3, [r7, #0]
 80090f4:	4603      	mov	r3, r0
 80090f6:	73fb      	strb	r3, [r7, #15]
 80090f8:	7bfb      	ldrb	r3, [r7, #15]
 80090fa:	4a0a      	ldr	r2, [pc, #40]	@ (8009124 <disk_write+0x3c>)
 80090fc:	009b      	lsls	r3, r3, #2
 80090fe:	4413      	add	r3, r2
 8009100:	685b      	ldr	r3, [r3, #4]
 8009102:	68dc      	ldr	r4, [r3, #12]
 8009104:	7bfb      	ldrb	r3, [r7, #15]
 8009106:	4a07      	ldr	r2, [pc, #28]	@ (8009124 <disk_write+0x3c>)
 8009108:	4413      	add	r3, r2
 800910a:	7a18      	ldrb	r0, [r3, #8]
 800910c:	683b      	ldr	r3, [r7, #0]
 800910e:	687a      	ldr	r2, [r7, #4]
 8009110:	68b9      	ldr	r1, [r7, #8]
 8009112:	47a0      	blx	r4
 8009114:	4603      	mov	r3, r0
 8009116:	75fb      	strb	r3, [r7, #23]
 8009118:	7dfb      	ldrb	r3, [r7, #23]
 800911a:	4618      	mov	r0, r3
 800911c:	371c      	adds	r7, #28
 800911e:	46bd      	mov	sp, r7
 8009120:	bd90      	pop	{r4, r7, pc}
 8009122:	bf00      	nop
 8009124:	200413f4 	.word	0x200413f4

08009128 <disk_ioctl>:
 8009128:	b580      	push	{r7, lr}
 800912a:	b084      	sub	sp, #16
 800912c:	af00      	add	r7, sp, #0
 800912e:	4603      	mov	r3, r0
 8009130:	603a      	str	r2, [r7, #0]
 8009132:	71fb      	strb	r3, [r7, #7]
 8009134:	460b      	mov	r3, r1
 8009136:	71bb      	strb	r3, [r7, #6]
 8009138:	79fb      	ldrb	r3, [r7, #7]
 800913a:	4a09      	ldr	r2, [pc, #36]	@ (8009160 <disk_ioctl+0x38>)
 800913c:	009b      	lsls	r3, r3, #2
 800913e:	4413      	add	r3, r2
 8009140:	685b      	ldr	r3, [r3, #4]
 8009142:	691b      	ldr	r3, [r3, #16]
 8009144:	79fa      	ldrb	r2, [r7, #7]
 8009146:	4906      	ldr	r1, [pc, #24]	@ (8009160 <disk_ioctl+0x38>)
 8009148:	440a      	add	r2, r1
 800914a:	7a10      	ldrb	r0, [r2, #8]
 800914c:	79b9      	ldrb	r1, [r7, #6]
 800914e:	683a      	ldr	r2, [r7, #0]
 8009150:	4798      	blx	r3
 8009152:	4603      	mov	r3, r0
 8009154:	73fb      	strb	r3, [r7, #15]
 8009156:	7bfb      	ldrb	r3, [r7, #15]
 8009158:	4618      	mov	r0, r3
 800915a:	3710      	adds	r7, #16
 800915c:	46bd      	mov	sp, r7
 800915e:	bd80      	pop	{r7, pc}
 8009160:	200413f4 	.word	0x200413f4

08009164 <ld_word>:
 8009164:	b480      	push	{r7}
 8009166:	b085      	sub	sp, #20
 8009168:	af00      	add	r7, sp, #0
 800916a:	6078      	str	r0, [r7, #4]
 800916c:	687b      	ldr	r3, [r7, #4]
 800916e:	3301      	adds	r3, #1
 8009170:	781b      	ldrb	r3, [r3, #0]
 8009172:	81fb      	strh	r3, [r7, #14]
 8009174:	89fb      	ldrh	r3, [r7, #14]
 8009176:	021b      	lsls	r3, r3, #8
 8009178:	b21a      	sxth	r2, r3
 800917a:	687b      	ldr	r3, [r7, #4]
 800917c:	781b      	ldrb	r3, [r3, #0]
 800917e:	b21b      	sxth	r3, r3
 8009180:	4313      	orrs	r3, r2
 8009182:	b21b      	sxth	r3, r3
 8009184:	81fb      	strh	r3, [r7, #14]
 8009186:	89fb      	ldrh	r3, [r7, #14]
 8009188:	4618      	mov	r0, r3
 800918a:	3714      	adds	r7, #20
 800918c:	46bd      	mov	sp, r7
 800918e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009192:	4770      	bx	lr

08009194 <ld_dword>:
 8009194:	b480      	push	{r7}
 8009196:	b085      	sub	sp, #20
 8009198:	af00      	add	r7, sp, #0
 800919a:	6078      	str	r0, [r7, #4]
 800919c:	687b      	ldr	r3, [r7, #4]
 800919e:	3303      	adds	r3, #3
 80091a0:	781b      	ldrb	r3, [r3, #0]
 80091a2:	60fb      	str	r3, [r7, #12]
 80091a4:	68fb      	ldr	r3, [r7, #12]
 80091a6:	021b      	lsls	r3, r3, #8
 80091a8:	687a      	ldr	r2, [r7, #4]
 80091aa:	3202      	adds	r2, #2
 80091ac:	7812      	ldrb	r2, [r2, #0]
 80091ae:	4313      	orrs	r3, r2
 80091b0:	60fb      	str	r3, [r7, #12]
 80091b2:	68fb      	ldr	r3, [r7, #12]
 80091b4:	021b      	lsls	r3, r3, #8
 80091b6:	687a      	ldr	r2, [r7, #4]
 80091b8:	3201      	adds	r2, #1
 80091ba:	7812      	ldrb	r2, [r2, #0]
 80091bc:	4313      	orrs	r3, r2
 80091be:	60fb      	str	r3, [r7, #12]
 80091c0:	68fb      	ldr	r3, [r7, #12]
 80091c2:	021b      	lsls	r3, r3, #8
 80091c4:	687a      	ldr	r2, [r7, #4]
 80091c6:	7812      	ldrb	r2, [r2, #0]
 80091c8:	4313      	orrs	r3, r2
 80091ca:	60fb      	str	r3, [r7, #12]
 80091cc:	68fb      	ldr	r3, [r7, #12]
 80091ce:	4618      	mov	r0, r3
 80091d0:	3714      	adds	r7, #20
 80091d2:	46bd      	mov	sp, r7
 80091d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80091d8:	4770      	bx	lr

080091da <st_word>:
 80091da:	b480      	push	{r7}
 80091dc:	b083      	sub	sp, #12
 80091de:	af00      	add	r7, sp, #0
 80091e0:	6078      	str	r0, [r7, #4]
 80091e2:	460b      	mov	r3, r1
 80091e4:	807b      	strh	r3, [r7, #2]
 80091e6:	687b      	ldr	r3, [r7, #4]
 80091e8:	1c5a      	adds	r2, r3, #1
 80091ea:	607a      	str	r2, [r7, #4]
 80091ec:	887a      	ldrh	r2, [r7, #2]
 80091ee:	b2d2      	uxtb	r2, r2
 80091f0:	701a      	strb	r2, [r3, #0]
 80091f2:	887b      	ldrh	r3, [r7, #2]
 80091f4:	0a1b      	lsrs	r3, r3, #8
 80091f6:	807b      	strh	r3, [r7, #2]
 80091f8:	687b      	ldr	r3, [r7, #4]
 80091fa:	1c5a      	adds	r2, r3, #1
 80091fc:	607a      	str	r2, [r7, #4]
 80091fe:	887a      	ldrh	r2, [r7, #2]
 8009200:	b2d2      	uxtb	r2, r2
 8009202:	701a      	strb	r2, [r3, #0]
 8009204:	bf00      	nop
 8009206:	370c      	adds	r7, #12
 8009208:	46bd      	mov	sp, r7
 800920a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800920e:	4770      	bx	lr

08009210 <st_dword>:
 8009210:	b480      	push	{r7}
 8009212:	b083      	sub	sp, #12
 8009214:	af00      	add	r7, sp, #0
 8009216:	6078      	str	r0, [r7, #4]
 8009218:	6039      	str	r1, [r7, #0]
 800921a:	687b      	ldr	r3, [r7, #4]
 800921c:	1c5a      	adds	r2, r3, #1
 800921e:	607a      	str	r2, [r7, #4]
 8009220:	683a      	ldr	r2, [r7, #0]
 8009222:	b2d2      	uxtb	r2, r2
 8009224:	701a      	strb	r2, [r3, #0]
 8009226:	683b      	ldr	r3, [r7, #0]
 8009228:	0a1b      	lsrs	r3, r3, #8
 800922a:	603b      	str	r3, [r7, #0]
 800922c:	687b      	ldr	r3, [r7, #4]
 800922e:	1c5a      	adds	r2, r3, #1
 8009230:	607a      	str	r2, [r7, #4]
 8009232:	683a      	ldr	r2, [r7, #0]
 8009234:	b2d2      	uxtb	r2, r2
 8009236:	701a      	strb	r2, [r3, #0]
 8009238:	683b      	ldr	r3, [r7, #0]
 800923a:	0a1b      	lsrs	r3, r3, #8
 800923c:	603b      	str	r3, [r7, #0]
 800923e:	687b      	ldr	r3, [r7, #4]
 8009240:	1c5a      	adds	r2, r3, #1
 8009242:	607a      	str	r2, [r7, #4]
 8009244:	683a      	ldr	r2, [r7, #0]
 8009246:	b2d2      	uxtb	r2, r2
 8009248:	701a      	strb	r2, [r3, #0]
 800924a:	683b      	ldr	r3, [r7, #0]
 800924c:	0a1b      	lsrs	r3, r3, #8
 800924e:	603b      	str	r3, [r7, #0]
 8009250:	687b      	ldr	r3, [r7, #4]
 8009252:	1c5a      	adds	r2, r3, #1
 8009254:	607a      	str	r2, [r7, #4]
 8009256:	683a      	ldr	r2, [r7, #0]
 8009258:	b2d2      	uxtb	r2, r2
 800925a:	701a      	strb	r2, [r3, #0]
 800925c:	bf00      	nop
 800925e:	370c      	adds	r7, #12
 8009260:	46bd      	mov	sp, r7
 8009262:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009266:	4770      	bx	lr

08009268 <mem_cpy>:
 8009268:	b480      	push	{r7}
 800926a:	b087      	sub	sp, #28
 800926c:	af00      	add	r7, sp, #0
 800926e:	60f8      	str	r0, [r7, #12]
 8009270:	60b9      	str	r1, [r7, #8]
 8009272:	607a      	str	r2, [r7, #4]
 8009274:	68fb      	ldr	r3, [r7, #12]
 8009276:	617b      	str	r3, [r7, #20]
 8009278:	68bb      	ldr	r3, [r7, #8]
 800927a:	613b      	str	r3, [r7, #16]
 800927c:	687b      	ldr	r3, [r7, #4]
 800927e:	2b00      	cmp	r3, #0
 8009280:	d00d      	beq.n	800929e <mem_cpy+0x36>
 8009282:	693a      	ldr	r2, [r7, #16]
 8009284:	1c53      	adds	r3, r2, #1
 8009286:	613b      	str	r3, [r7, #16]
 8009288:	697b      	ldr	r3, [r7, #20]
 800928a:	1c59      	adds	r1, r3, #1
 800928c:	6179      	str	r1, [r7, #20]
 800928e:	7812      	ldrb	r2, [r2, #0]
 8009290:	701a      	strb	r2, [r3, #0]
 8009292:	687b      	ldr	r3, [r7, #4]
 8009294:	3b01      	subs	r3, #1
 8009296:	607b      	str	r3, [r7, #4]
 8009298:	687b      	ldr	r3, [r7, #4]
 800929a:	2b00      	cmp	r3, #0
 800929c:	d1f1      	bne.n	8009282 <mem_cpy+0x1a>
 800929e:	bf00      	nop
 80092a0:	371c      	adds	r7, #28
 80092a2:	46bd      	mov	sp, r7
 80092a4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80092a8:	4770      	bx	lr

080092aa <mem_set>:
 80092aa:	b480      	push	{r7}
 80092ac:	b087      	sub	sp, #28
 80092ae:	af00      	add	r7, sp, #0
 80092b0:	60f8      	str	r0, [r7, #12]
 80092b2:	60b9      	str	r1, [r7, #8]
 80092b4:	607a      	str	r2, [r7, #4]
 80092b6:	68fb      	ldr	r3, [r7, #12]
 80092b8:	617b      	str	r3, [r7, #20]
 80092ba:	697b      	ldr	r3, [r7, #20]
 80092bc:	1c5a      	adds	r2, r3, #1
 80092be:	617a      	str	r2, [r7, #20]
 80092c0:	68ba      	ldr	r2, [r7, #8]
 80092c2:	b2d2      	uxtb	r2, r2
 80092c4:	701a      	strb	r2, [r3, #0]
 80092c6:	687b      	ldr	r3, [r7, #4]
 80092c8:	3b01      	subs	r3, #1
 80092ca:	607b      	str	r3, [r7, #4]
 80092cc:	687b      	ldr	r3, [r7, #4]
 80092ce:	2b00      	cmp	r3, #0
 80092d0:	d1f3      	bne.n	80092ba <mem_set+0x10>
 80092d2:	bf00      	nop
 80092d4:	bf00      	nop
 80092d6:	371c      	adds	r7, #28
 80092d8:	46bd      	mov	sp, r7
 80092da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80092de:	4770      	bx	lr

080092e0 <mem_cmp>:
 80092e0:	b480      	push	{r7}
 80092e2:	b089      	sub	sp, #36	@ 0x24
 80092e4:	af00      	add	r7, sp, #0
 80092e6:	60f8      	str	r0, [r7, #12]
 80092e8:	60b9      	str	r1, [r7, #8]
 80092ea:	607a      	str	r2, [r7, #4]
 80092ec:	68fb      	ldr	r3, [r7, #12]
 80092ee:	61fb      	str	r3, [r7, #28]
 80092f0:	68bb      	ldr	r3, [r7, #8]
 80092f2:	61bb      	str	r3, [r7, #24]
 80092f4:	2300      	movs	r3, #0
 80092f6:	617b      	str	r3, [r7, #20]
 80092f8:	69fb      	ldr	r3, [r7, #28]
 80092fa:	1c5a      	adds	r2, r3, #1
 80092fc:	61fa      	str	r2, [r7, #28]
 80092fe:	781b      	ldrb	r3, [r3, #0]
 8009300:	4619      	mov	r1, r3
 8009302:	69bb      	ldr	r3, [r7, #24]
 8009304:	1c5a      	adds	r2, r3, #1
 8009306:	61ba      	str	r2, [r7, #24]
 8009308:	781b      	ldrb	r3, [r3, #0]
 800930a:	1acb      	subs	r3, r1, r3
 800930c:	617b      	str	r3, [r7, #20]
 800930e:	687b      	ldr	r3, [r7, #4]
 8009310:	3b01      	subs	r3, #1
 8009312:	607b      	str	r3, [r7, #4]
 8009314:	687b      	ldr	r3, [r7, #4]
 8009316:	2b00      	cmp	r3, #0
 8009318:	d002      	beq.n	8009320 <mem_cmp+0x40>
 800931a:	697b      	ldr	r3, [r7, #20]
 800931c:	2b00      	cmp	r3, #0
 800931e:	d0eb      	beq.n	80092f8 <mem_cmp+0x18>
 8009320:	697b      	ldr	r3, [r7, #20]
 8009322:	4618      	mov	r0, r3
 8009324:	3724      	adds	r7, #36	@ 0x24
 8009326:	46bd      	mov	sp, r7
 8009328:	f85d 7b04 	ldr.w	r7, [sp], #4
 800932c:	4770      	bx	lr

0800932e <chk_chr>:
 800932e:	b480      	push	{r7}
 8009330:	b083      	sub	sp, #12
 8009332:	af00      	add	r7, sp, #0
 8009334:	6078      	str	r0, [r7, #4]
 8009336:	6039      	str	r1, [r7, #0]
 8009338:	e002      	b.n	8009340 <chk_chr+0x12>
 800933a:	687b      	ldr	r3, [r7, #4]
 800933c:	3301      	adds	r3, #1
 800933e:	607b      	str	r3, [r7, #4]
 8009340:	687b      	ldr	r3, [r7, #4]
 8009342:	781b      	ldrb	r3, [r3, #0]
 8009344:	2b00      	cmp	r3, #0
 8009346:	d005      	beq.n	8009354 <chk_chr+0x26>
 8009348:	687b      	ldr	r3, [r7, #4]
 800934a:	781b      	ldrb	r3, [r3, #0]
 800934c:	461a      	mov	r2, r3
 800934e:	683b      	ldr	r3, [r7, #0]
 8009350:	4293      	cmp	r3, r2
 8009352:	d1f2      	bne.n	800933a <chk_chr+0xc>
 8009354:	687b      	ldr	r3, [r7, #4]
 8009356:	781b      	ldrb	r3, [r3, #0]
 8009358:	4618      	mov	r0, r3
 800935a:	370c      	adds	r7, #12
 800935c:	46bd      	mov	sp, r7
 800935e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009362:	4770      	bx	lr

08009364 <lock_fs>:
 8009364:	b580      	push	{r7, lr}
 8009366:	b082      	sub	sp, #8
 8009368:	af00      	add	r7, sp, #0
 800936a:	6078      	str	r0, [r7, #4]
 800936c:	687b      	ldr	r3, [r7, #4]
 800936e:	2b00      	cmp	r3, #0
 8009370:	d009      	beq.n	8009386 <lock_fs+0x22>
 8009372:	687b      	ldr	r3, [r7, #4]
 8009374:	68db      	ldr	r3, [r3, #12]
 8009376:	4618      	mov	r0, r3
 8009378:	f002 fa4e 	bl	800b818 <ff_req_grant>
 800937c:	4603      	mov	r3, r0
 800937e:	2b00      	cmp	r3, #0
 8009380:	d001      	beq.n	8009386 <lock_fs+0x22>
 8009382:	2301      	movs	r3, #1
 8009384:	e000      	b.n	8009388 <lock_fs+0x24>
 8009386:	2300      	movs	r3, #0
 8009388:	4618      	mov	r0, r3
 800938a:	3708      	adds	r7, #8
 800938c:	46bd      	mov	sp, r7
 800938e:	bd80      	pop	{r7, pc}

08009390 <unlock_fs>:
 8009390:	b580      	push	{r7, lr}
 8009392:	b082      	sub	sp, #8
 8009394:	af00      	add	r7, sp, #0
 8009396:	6078      	str	r0, [r7, #4]
 8009398:	460b      	mov	r3, r1
 800939a:	70fb      	strb	r3, [r7, #3]
 800939c:	687b      	ldr	r3, [r7, #4]
 800939e:	2b00      	cmp	r3, #0
 80093a0:	d00d      	beq.n	80093be <unlock_fs+0x2e>
 80093a2:	78fb      	ldrb	r3, [r7, #3]
 80093a4:	2b0c      	cmp	r3, #12
 80093a6:	d00a      	beq.n	80093be <unlock_fs+0x2e>
 80093a8:	78fb      	ldrb	r3, [r7, #3]
 80093aa:	2b0b      	cmp	r3, #11
 80093ac:	d007      	beq.n	80093be <unlock_fs+0x2e>
 80093ae:	78fb      	ldrb	r3, [r7, #3]
 80093b0:	2b0f      	cmp	r3, #15
 80093b2:	d004      	beq.n	80093be <unlock_fs+0x2e>
 80093b4:	687b      	ldr	r3, [r7, #4]
 80093b6:	68db      	ldr	r3, [r3, #12]
 80093b8:	4618      	mov	r0, r3
 80093ba:	f002 fa42 	bl	800b842 <ff_rel_grant>
 80093be:	bf00      	nop
 80093c0:	3708      	adds	r7, #8
 80093c2:	46bd      	mov	sp, r7
 80093c4:	bd80      	pop	{r7, pc}
	...

080093c8 <chk_lock>:
 80093c8:	b480      	push	{r7}
 80093ca:	b085      	sub	sp, #20
 80093cc:	af00      	add	r7, sp, #0
 80093ce:	6078      	str	r0, [r7, #4]
 80093d0:	6039      	str	r1, [r7, #0]
 80093d2:	2300      	movs	r3, #0
 80093d4:	60bb      	str	r3, [r7, #8]
 80093d6:	68bb      	ldr	r3, [r7, #8]
 80093d8:	60fb      	str	r3, [r7, #12]
 80093da:	e029      	b.n	8009430 <chk_lock+0x68>
 80093dc:	4a27      	ldr	r2, [pc, #156]	@ (800947c <chk_lock+0xb4>)
 80093de:	68fb      	ldr	r3, [r7, #12]
 80093e0:	011b      	lsls	r3, r3, #4
 80093e2:	4413      	add	r3, r2
 80093e4:	681b      	ldr	r3, [r3, #0]
 80093e6:	2b00      	cmp	r3, #0
 80093e8:	d01d      	beq.n	8009426 <chk_lock+0x5e>
 80093ea:	4a24      	ldr	r2, [pc, #144]	@ (800947c <chk_lock+0xb4>)
 80093ec:	68fb      	ldr	r3, [r7, #12]
 80093ee:	011b      	lsls	r3, r3, #4
 80093f0:	4413      	add	r3, r2
 80093f2:	681a      	ldr	r2, [r3, #0]
 80093f4:	687b      	ldr	r3, [r7, #4]
 80093f6:	681b      	ldr	r3, [r3, #0]
 80093f8:	429a      	cmp	r2, r3
 80093fa:	d116      	bne.n	800942a <chk_lock+0x62>
 80093fc:	4a1f      	ldr	r2, [pc, #124]	@ (800947c <chk_lock+0xb4>)
 80093fe:	68fb      	ldr	r3, [r7, #12]
 8009400:	011b      	lsls	r3, r3, #4
 8009402:	4413      	add	r3, r2
 8009404:	3304      	adds	r3, #4
 8009406:	681a      	ldr	r2, [r3, #0]
 8009408:	687b      	ldr	r3, [r7, #4]
 800940a:	689b      	ldr	r3, [r3, #8]
 800940c:	429a      	cmp	r2, r3
 800940e:	d10c      	bne.n	800942a <chk_lock+0x62>
 8009410:	4a1a      	ldr	r2, [pc, #104]	@ (800947c <chk_lock+0xb4>)
 8009412:	68fb      	ldr	r3, [r7, #12]
 8009414:	011b      	lsls	r3, r3, #4
 8009416:	4413      	add	r3, r2
 8009418:	3308      	adds	r3, #8
 800941a:	681a      	ldr	r2, [r3, #0]
 800941c:	687b      	ldr	r3, [r7, #4]
 800941e:	695b      	ldr	r3, [r3, #20]
 8009420:	429a      	cmp	r2, r3
 8009422:	d102      	bne.n	800942a <chk_lock+0x62>
 8009424:	e007      	b.n	8009436 <chk_lock+0x6e>
 8009426:	2301      	movs	r3, #1
 8009428:	60bb      	str	r3, [r7, #8]
 800942a:	68fb      	ldr	r3, [r7, #12]
 800942c:	3301      	adds	r3, #1
 800942e:	60fb      	str	r3, [r7, #12]
 8009430:	68fb      	ldr	r3, [r7, #12]
 8009432:	2b01      	cmp	r3, #1
 8009434:	d9d2      	bls.n	80093dc <chk_lock+0x14>
 8009436:	68fb      	ldr	r3, [r7, #12]
 8009438:	2b02      	cmp	r3, #2
 800943a:	d109      	bne.n	8009450 <chk_lock+0x88>
 800943c:	68bb      	ldr	r3, [r7, #8]
 800943e:	2b00      	cmp	r3, #0
 8009440:	d102      	bne.n	8009448 <chk_lock+0x80>
 8009442:	683b      	ldr	r3, [r7, #0]
 8009444:	2b02      	cmp	r3, #2
 8009446:	d101      	bne.n	800944c <chk_lock+0x84>
 8009448:	2300      	movs	r3, #0
 800944a:	e010      	b.n	800946e <chk_lock+0xa6>
 800944c:	2312      	movs	r3, #18
 800944e:	e00e      	b.n	800946e <chk_lock+0xa6>
 8009450:	683b      	ldr	r3, [r7, #0]
 8009452:	2b00      	cmp	r3, #0
 8009454:	d108      	bne.n	8009468 <chk_lock+0xa0>
 8009456:	4a09      	ldr	r2, [pc, #36]	@ (800947c <chk_lock+0xb4>)
 8009458:	68fb      	ldr	r3, [r7, #12]
 800945a:	011b      	lsls	r3, r3, #4
 800945c:	4413      	add	r3, r2
 800945e:	330c      	adds	r3, #12
 8009460:	881b      	ldrh	r3, [r3, #0]
 8009462:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8009466:	d101      	bne.n	800946c <chk_lock+0xa4>
 8009468:	2310      	movs	r3, #16
 800946a:	e000      	b.n	800946e <chk_lock+0xa6>
 800946c:	2300      	movs	r3, #0
 800946e:	4618      	mov	r0, r3
 8009470:	3714      	adds	r7, #20
 8009472:	46bd      	mov	sp, r7
 8009474:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009478:	4770      	bx	lr
 800947a:	bf00      	nop
 800947c:	200413d4 	.word	0x200413d4

08009480 <enq_lock>:
 8009480:	b480      	push	{r7}
 8009482:	b083      	sub	sp, #12
 8009484:	af00      	add	r7, sp, #0
 8009486:	2300      	movs	r3, #0
 8009488:	607b      	str	r3, [r7, #4]
 800948a:	e002      	b.n	8009492 <enq_lock+0x12>
 800948c:	687b      	ldr	r3, [r7, #4]
 800948e:	3301      	adds	r3, #1
 8009490:	607b      	str	r3, [r7, #4]
 8009492:	687b      	ldr	r3, [r7, #4]
 8009494:	2b01      	cmp	r3, #1
 8009496:	d806      	bhi.n	80094a6 <enq_lock+0x26>
 8009498:	4a09      	ldr	r2, [pc, #36]	@ (80094c0 <enq_lock+0x40>)
 800949a:	687b      	ldr	r3, [r7, #4]
 800949c:	011b      	lsls	r3, r3, #4
 800949e:	4413      	add	r3, r2
 80094a0:	681b      	ldr	r3, [r3, #0]
 80094a2:	2b00      	cmp	r3, #0
 80094a4:	d1f2      	bne.n	800948c <enq_lock+0xc>
 80094a6:	687b      	ldr	r3, [r7, #4]
 80094a8:	2b02      	cmp	r3, #2
 80094aa:	bf14      	ite	ne
 80094ac:	2301      	movne	r3, #1
 80094ae:	2300      	moveq	r3, #0
 80094b0:	b2db      	uxtb	r3, r3
 80094b2:	4618      	mov	r0, r3
 80094b4:	370c      	adds	r7, #12
 80094b6:	46bd      	mov	sp, r7
 80094b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80094bc:	4770      	bx	lr
 80094be:	bf00      	nop
 80094c0:	200413d4 	.word	0x200413d4

080094c4 <inc_lock>:
 80094c4:	b480      	push	{r7}
 80094c6:	b085      	sub	sp, #20
 80094c8:	af00      	add	r7, sp, #0
 80094ca:	6078      	str	r0, [r7, #4]
 80094cc:	6039      	str	r1, [r7, #0]
 80094ce:	2300      	movs	r3, #0
 80094d0:	60fb      	str	r3, [r7, #12]
 80094d2:	e01f      	b.n	8009514 <inc_lock+0x50>
 80094d4:	4a41      	ldr	r2, [pc, #260]	@ (80095dc <inc_lock+0x118>)
 80094d6:	68fb      	ldr	r3, [r7, #12]
 80094d8:	011b      	lsls	r3, r3, #4
 80094da:	4413      	add	r3, r2
 80094dc:	681a      	ldr	r2, [r3, #0]
 80094de:	687b      	ldr	r3, [r7, #4]
 80094e0:	681b      	ldr	r3, [r3, #0]
 80094e2:	429a      	cmp	r2, r3
 80094e4:	d113      	bne.n	800950e <inc_lock+0x4a>
 80094e6:	4a3d      	ldr	r2, [pc, #244]	@ (80095dc <inc_lock+0x118>)
 80094e8:	68fb      	ldr	r3, [r7, #12]
 80094ea:	011b      	lsls	r3, r3, #4
 80094ec:	4413      	add	r3, r2
 80094ee:	3304      	adds	r3, #4
 80094f0:	681a      	ldr	r2, [r3, #0]
 80094f2:	687b      	ldr	r3, [r7, #4]
 80094f4:	689b      	ldr	r3, [r3, #8]
 80094f6:	429a      	cmp	r2, r3
 80094f8:	d109      	bne.n	800950e <inc_lock+0x4a>
 80094fa:	4a38      	ldr	r2, [pc, #224]	@ (80095dc <inc_lock+0x118>)
 80094fc:	68fb      	ldr	r3, [r7, #12]
 80094fe:	011b      	lsls	r3, r3, #4
 8009500:	4413      	add	r3, r2
 8009502:	3308      	adds	r3, #8
 8009504:	681a      	ldr	r2, [r3, #0]
 8009506:	687b      	ldr	r3, [r7, #4]
 8009508:	695b      	ldr	r3, [r3, #20]
 800950a:	429a      	cmp	r2, r3
 800950c:	d006      	beq.n	800951c <inc_lock+0x58>
 800950e:	68fb      	ldr	r3, [r7, #12]
 8009510:	3301      	adds	r3, #1
 8009512:	60fb      	str	r3, [r7, #12]
 8009514:	68fb      	ldr	r3, [r7, #12]
 8009516:	2b01      	cmp	r3, #1
 8009518:	d9dc      	bls.n	80094d4 <inc_lock+0x10>
 800951a:	e000      	b.n	800951e <inc_lock+0x5a>
 800951c:	bf00      	nop
 800951e:	68fb      	ldr	r3, [r7, #12]
 8009520:	2b02      	cmp	r3, #2
 8009522:	d132      	bne.n	800958a <inc_lock+0xc6>
 8009524:	2300      	movs	r3, #0
 8009526:	60fb      	str	r3, [r7, #12]
 8009528:	e002      	b.n	8009530 <inc_lock+0x6c>
 800952a:	68fb      	ldr	r3, [r7, #12]
 800952c:	3301      	adds	r3, #1
 800952e:	60fb      	str	r3, [r7, #12]
 8009530:	68fb      	ldr	r3, [r7, #12]
 8009532:	2b01      	cmp	r3, #1
 8009534:	d806      	bhi.n	8009544 <inc_lock+0x80>
 8009536:	4a29      	ldr	r2, [pc, #164]	@ (80095dc <inc_lock+0x118>)
 8009538:	68fb      	ldr	r3, [r7, #12]
 800953a:	011b      	lsls	r3, r3, #4
 800953c:	4413      	add	r3, r2
 800953e:	681b      	ldr	r3, [r3, #0]
 8009540:	2b00      	cmp	r3, #0
 8009542:	d1f2      	bne.n	800952a <inc_lock+0x66>
 8009544:	68fb      	ldr	r3, [r7, #12]
 8009546:	2b02      	cmp	r3, #2
 8009548:	d101      	bne.n	800954e <inc_lock+0x8a>
 800954a:	2300      	movs	r3, #0
 800954c:	e040      	b.n	80095d0 <inc_lock+0x10c>
 800954e:	687b      	ldr	r3, [r7, #4]
 8009550:	681a      	ldr	r2, [r3, #0]
 8009552:	4922      	ldr	r1, [pc, #136]	@ (80095dc <inc_lock+0x118>)
 8009554:	68fb      	ldr	r3, [r7, #12]
 8009556:	011b      	lsls	r3, r3, #4
 8009558:	440b      	add	r3, r1
 800955a:	601a      	str	r2, [r3, #0]
 800955c:	687b      	ldr	r3, [r7, #4]
 800955e:	689a      	ldr	r2, [r3, #8]
 8009560:	491e      	ldr	r1, [pc, #120]	@ (80095dc <inc_lock+0x118>)
 8009562:	68fb      	ldr	r3, [r7, #12]
 8009564:	011b      	lsls	r3, r3, #4
 8009566:	440b      	add	r3, r1
 8009568:	3304      	adds	r3, #4
 800956a:	601a      	str	r2, [r3, #0]
 800956c:	687b      	ldr	r3, [r7, #4]
 800956e:	695a      	ldr	r2, [r3, #20]
 8009570:	491a      	ldr	r1, [pc, #104]	@ (80095dc <inc_lock+0x118>)
 8009572:	68fb      	ldr	r3, [r7, #12]
 8009574:	011b      	lsls	r3, r3, #4
 8009576:	440b      	add	r3, r1
 8009578:	3308      	adds	r3, #8
 800957a:	601a      	str	r2, [r3, #0]
 800957c:	4a17      	ldr	r2, [pc, #92]	@ (80095dc <inc_lock+0x118>)
 800957e:	68fb      	ldr	r3, [r7, #12]
 8009580:	011b      	lsls	r3, r3, #4
 8009582:	4413      	add	r3, r2
 8009584:	330c      	adds	r3, #12
 8009586:	2200      	movs	r2, #0
 8009588:	801a      	strh	r2, [r3, #0]
 800958a:	683b      	ldr	r3, [r7, #0]
 800958c:	2b00      	cmp	r3, #0
 800958e:	d009      	beq.n	80095a4 <inc_lock+0xe0>
 8009590:	4a12      	ldr	r2, [pc, #72]	@ (80095dc <inc_lock+0x118>)
 8009592:	68fb      	ldr	r3, [r7, #12]
 8009594:	011b      	lsls	r3, r3, #4
 8009596:	4413      	add	r3, r2
 8009598:	330c      	adds	r3, #12
 800959a:	881b      	ldrh	r3, [r3, #0]
 800959c:	2b00      	cmp	r3, #0
 800959e:	d001      	beq.n	80095a4 <inc_lock+0xe0>
 80095a0:	2300      	movs	r3, #0
 80095a2:	e015      	b.n	80095d0 <inc_lock+0x10c>
 80095a4:	683b      	ldr	r3, [r7, #0]
 80095a6:	2b00      	cmp	r3, #0
 80095a8:	d108      	bne.n	80095bc <inc_lock+0xf8>
 80095aa:	4a0c      	ldr	r2, [pc, #48]	@ (80095dc <inc_lock+0x118>)
 80095ac:	68fb      	ldr	r3, [r7, #12]
 80095ae:	011b      	lsls	r3, r3, #4
 80095b0:	4413      	add	r3, r2
 80095b2:	330c      	adds	r3, #12
 80095b4:	881b      	ldrh	r3, [r3, #0]
 80095b6:	3301      	adds	r3, #1
 80095b8:	b29a      	uxth	r2, r3
 80095ba:	e001      	b.n	80095c0 <inc_lock+0xfc>
 80095bc:	f44f 7280 	mov.w	r2, #256	@ 0x100
 80095c0:	4906      	ldr	r1, [pc, #24]	@ (80095dc <inc_lock+0x118>)
 80095c2:	68fb      	ldr	r3, [r7, #12]
 80095c4:	011b      	lsls	r3, r3, #4
 80095c6:	440b      	add	r3, r1
 80095c8:	330c      	adds	r3, #12
 80095ca:	801a      	strh	r2, [r3, #0]
 80095cc:	68fb      	ldr	r3, [r7, #12]
 80095ce:	3301      	adds	r3, #1
 80095d0:	4618      	mov	r0, r3
 80095d2:	3714      	adds	r7, #20
 80095d4:	46bd      	mov	sp, r7
 80095d6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80095da:	4770      	bx	lr
 80095dc:	200413d4 	.word	0x200413d4

080095e0 <dec_lock>:
 80095e0:	b480      	push	{r7}
 80095e2:	b085      	sub	sp, #20
 80095e4:	af00      	add	r7, sp, #0
 80095e6:	6078      	str	r0, [r7, #4]
 80095e8:	687b      	ldr	r3, [r7, #4]
 80095ea:	3b01      	subs	r3, #1
 80095ec:	607b      	str	r3, [r7, #4]
 80095ee:	687b      	ldr	r3, [r7, #4]
 80095f0:	2b01      	cmp	r3, #1
 80095f2:	d825      	bhi.n	8009640 <dec_lock+0x60>
 80095f4:	4a17      	ldr	r2, [pc, #92]	@ (8009654 <dec_lock+0x74>)
 80095f6:	687b      	ldr	r3, [r7, #4]
 80095f8:	011b      	lsls	r3, r3, #4
 80095fa:	4413      	add	r3, r2
 80095fc:	330c      	adds	r3, #12
 80095fe:	881b      	ldrh	r3, [r3, #0]
 8009600:	81fb      	strh	r3, [r7, #14]
 8009602:	89fb      	ldrh	r3, [r7, #14]
 8009604:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 8009608:	d101      	bne.n	800960e <dec_lock+0x2e>
 800960a:	2300      	movs	r3, #0
 800960c:	81fb      	strh	r3, [r7, #14]
 800960e:	89fb      	ldrh	r3, [r7, #14]
 8009610:	2b00      	cmp	r3, #0
 8009612:	d002      	beq.n	800961a <dec_lock+0x3a>
 8009614:	89fb      	ldrh	r3, [r7, #14]
 8009616:	3b01      	subs	r3, #1
 8009618:	81fb      	strh	r3, [r7, #14]
 800961a:	4a0e      	ldr	r2, [pc, #56]	@ (8009654 <dec_lock+0x74>)
 800961c:	687b      	ldr	r3, [r7, #4]
 800961e:	011b      	lsls	r3, r3, #4
 8009620:	4413      	add	r3, r2
 8009622:	330c      	adds	r3, #12
 8009624:	89fa      	ldrh	r2, [r7, #14]
 8009626:	801a      	strh	r2, [r3, #0]
 8009628:	89fb      	ldrh	r3, [r7, #14]
 800962a:	2b00      	cmp	r3, #0
 800962c:	d105      	bne.n	800963a <dec_lock+0x5a>
 800962e:	4a09      	ldr	r2, [pc, #36]	@ (8009654 <dec_lock+0x74>)
 8009630:	687b      	ldr	r3, [r7, #4]
 8009632:	011b      	lsls	r3, r3, #4
 8009634:	4413      	add	r3, r2
 8009636:	2200      	movs	r2, #0
 8009638:	601a      	str	r2, [r3, #0]
 800963a:	2300      	movs	r3, #0
 800963c:	737b      	strb	r3, [r7, #13]
 800963e:	e001      	b.n	8009644 <dec_lock+0x64>
 8009640:	2302      	movs	r3, #2
 8009642:	737b      	strb	r3, [r7, #13]
 8009644:	7b7b      	ldrb	r3, [r7, #13]
 8009646:	4618      	mov	r0, r3
 8009648:	3714      	adds	r7, #20
 800964a:	46bd      	mov	sp, r7
 800964c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009650:	4770      	bx	lr
 8009652:	bf00      	nop
 8009654:	200413d4 	.word	0x200413d4

08009658 <clear_lock>:
 8009658:	b480      	push	{r7}
 800965a:	b085      	sub	sp, #20
 800965c:	af00      	add	r7, sp, #0
 800965e:	6078      	str	r0, [r7, #4]
 8009660:	2300      	movs	r3, #0
 8009662:	60fb      	str	r3, [r7, #12]
 8009664:	e010      	b.n	8009688 <clear_lock+0x30>
 8009666:	4a0d      	ldr	r2, [pc, #52]	@ (800969c <clear_lock+0x44>)
 8009668:	68fb      	ldr	r3, [r7, #12]
 800966a:	011b      	lsls	r3, r3, #4
 800966c:	4413      	add	r3, r2
 800966e:	681b      	ldr	r3, [r3, #0]
 8009670:	687a      	ldr	r2, [r7, #4]
 8009672:	429a      	cmp	r2, r3
 8009674:	d105      	bne.n	8009682 <clear_lock+0x2a>
 8009676:	4a09      	ldr	r2, [pc, #36]	@ (800969c <clear_lock+0x44>)
 8009678:	68fb      	ldr	r3, [r7, #12]
 800967a:	011b      	lsls	r3, r3, #4
 800967c:	4413      	add	r3, r2
 800967e:	2200      	movs	r2, #0
 8009680:	601a      	str	r2, [r3, #0]
 8009682:	68fb      	ldr	r3, [r7, #12]
 8009684:	3301      	adds	r3, #1
 8009686:	60fb      	str	r3, [r7, #12]
 8009688:	68fb      	ldr	r3, [r7, #12]
 800968a:	2b01      	cmp	r3, #1
 800968c:	d9eb      	bls.n	8009666 <clear_lock+0xe>
 800968e:	bf00      	nop
 8009690:	bf00      	nop
 8009692:	3714      	adds	r7, #20
 8009694:	46bd      	mov	sp, r7
 8009696:	f85d 7b04 	ldr.w	r7, [sp], #4
 800969a:	4770      	bx	lr
 800969c:	200413d4 	.word	0x200413d4

080096a0 <sync_window>:
 80096a0:	b580      	push	{r7, lr}
 80096a2:	b086      	sub	sp, #24
 80096a4:	af00      	add	r7, sp, #0
 80096a6:	6078      	str	r0, [r7, #4]
 80096a8:	2300      	movs	r3, #0
 80096aa:	73fb      	strb	r3, [r7, #15]
 80096ac:	687b      	ldr	r3, [r7, #4]
 80096ae:	78db      	ldrb	r3, [r3, #3]
 80096b0:	2b00      	cmp	r3, #0
 80096b2:	d034      	beq.n	800971e <sync_window+0x7e>
 80096b4:	687b      	ldr	r3, [r7, #4]
 80096b6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80096b8:	617b      	str	r3, [r7, #20]
 80096ba:	687b      	ldr	r3, [r7, #4]
 80096bc:	7858      	ldrb	r0, [r3, #1]
 80096be:	687b      	ldr	r3, [r7, #4]
 80096c0:	f103 0134 	add.w	r1, r3, #52	@ 0x34
 80096c4:	2301      	movs	r3, #1
 80096c6:	697a      	ldr	r2, [r7, #20]
 80096c8:	f7ff fd0e 	bl	80090e8 <disk_write>
 80096cc:	4603      	mov	r3, r0
 80096ce:	2b00      	cmp	r3, #0
 80096d0:	d002      	beq.n	80096d8 <sync_window+0x38>
 80096d2:	2301      	movs	r3, #1
 80096d4:	73fb      	strb	r3, [r7, #15]
 80096d6:	e022      	b.n	800971e <sync_window+0x7e>
 80096d8:	687b      	ldr	r3, [r7, #4]
 80096da:	2200      	movs	r2, #0
 80096dc:	70da      	strb	r2, [r3, #3]
 80096de:	687b      	ldr	r3, [r7, #4]
 80096e0:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80096e2:	697a      	ldr	r2, [r7, #20]
 80096e4:	1ad2      	subs	r2, r2, r3
 80096e6:	687b      	ldr	r3, [r7, #4]
 80096e8:	69db      	ldr	r3, [r3, #28]
 80096ea:	429a      	cmp	r2, r3
 80096ec:	d217      	bcs.n	800971e <sync_window+0x7e>
 80096ee:	687b      	ldr	r3, [r7, #4]
 80096f0:	789b      	ldrb	r3, [r3, #2]
 80096f2:	613b      	str	r3, [r7, #16]
 80096f4:	e010      	b.n	8009718 <sync_window+0x78>
 80096f6:	687b      	ldr	r3, [r7, #4]
 80096f8:	69db      	ldr	r3, [r3, #28]
 80096fa:	697a      	ldr	r2, [r7, #20]
 80096fc:	4413      	add	r3, r2
 80096fe:	617b      	str	r3, [r7, #20]
 8009700:	687b      	ldr	r3, [r7, #4]
 8009702:	7858      	ldrb	r0, [r3, #1]
 8009704:	687b      	ldr	r3, [r7, #4]
 8009706:	f103 0134 	add.w	r1, r3, #52	@ 0x34
 800970a:	2301      	movs	r3, #1
 800970c:	697a      	ldr	r2, [r7, #20]
 800970e:	f7ff fceb 	bl	80090e8 <disk_write>
 8009712:	693b      	ldr	r3, [r7, #16]
 8009714:	3b01      	subs	r3, #1
 8009716:	613b      	str	r3, [r7, #16]
 8009718:	693b      	ldr	r3, [r7, #16]
 800971a:	2b01      	cmp	r3, #1
 800971c:	d8eb      	bhi.n	80096f6 <sync_window+0x56>
 800971e:	7bfb      	ldrb	r3, [r7, #15]
 8009720:	4618      	mov	r0, r3
 8009722:	3718      	adds	r7, #24
 8009724:	46bd      	mov	sp, r7
 8009726:	bd80      	pop	{r7, pc}

08009728 <move_window>:
 8009728:	b580      	push	{r7, lr}
 800972a:	b084      	sub	sp, #16
 800972c:	af00      	add	r7, sp, #0
 800972e:	6078      	str	r0, [r7, #4]
 8009730:	6039      	str	r1, [r7, #0]
 8009732:	2300      	movs	r3, #0
 8009734:	73fb      	strb	r3, [r7, #15]
 8009736:	687b      	ldr	r3, [r7, #4]
 8009738:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800973a:	683a      	ldr	r2, [r7, #0]
 800973c:	429a      	cmp	r2, r3
 800973e:	d01b      	beq.n	8009778 <move_window+0x50>
 8009740:	6878      	ldr	r0, [r7, #4]
 8009742:	f7ff ffad 	bl	80096a0 <sync_window>
 8009746:	4603      	mov	r3, r0
 8009748:	73fb      	strb	r3, [r7, #15]
 800974a:	7bfb      	ldrb	r3, [r7, #15]
 800974c:	2b00      	cmp	r3, #0
 800974e:	d113      	bne.n	8009778 <move_window+0x50>
 8009750:	687b      	ldr	r3, [r7, #4]
 8009752:	7858      	ldrb	r0, [r3, #1]
 8009754:	687b      	ldr	r3, [r7, #4]
 8009756:	f103 0134 	add.w	r1, r3, #52	@ 0x34
 800975a:	2301      	movs	r3, #1
 800975c:	683a      	ldr	r2, [r7, #0]
 800975e:	f7ff fca3 	bl	80090a8 <disk_read>
 8009762:	4603      	mov	r3, r0
 8009764:	2b00      	cmp	r3, #0
 8009766:	d004      	beq.n	8009772 <move_window+0x4a>
 8009768:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800976c:	603b      	str	r3, [r7, #0]
 800976e:	2301      	movs	r3, #1
 8009770:	73fb      	strb	r3, [r7, #15]
 8009772:	687b      	ldr	r3, [r7, #4]
 8009774:	683a      	ldr	r2, [r7, #0]
 8009776:	631a      	str	r2, [r3, #48]	@ 0x30
 8009778:	7bfb      	ldrb	r3, [r7, #15]
 800977a:	4618      	mov	r0, r3
 800977c:	3710      	adds	r7, #16
 800977e:	46bd      	mov	sp, r7
 8009780:	bd80      	pop	{r7, pc}
	...

08009784 <sync_fs>:
 8009784:	b580      	push	{r7, lr}
 8009786:	b084      	sub	sp, #16
 8009788:	af00      	add	r7, sp, #0
 800978a:	6078      	str	r0, [r7, #4]
 800978c:	6878      	ldr	r0, [r7, #4]
 800978e:	f7ff ff87 	bl	80096a0 <sync_window>
 8009792:	4603      	mov	r3, r0
 8009794:	73fb      	strb	r3, [r7, #15]
 8009796:	7bfb      	ldrb	r3, [r7, #15]
 8009798:	2b00      	cmp	r3, #0
 800979a:	d158      	bne.n	800984e <sync_fs+0xca>
 800979c:	687b      	ldr	r3, [r7, #4]
 800979e:	781b      	ldrb	r3, [r3, #0]
 80097a0:	2b03      	cmp	r3, #3
 80097a2:	d148      	bne.n	8009836 <sync_fs+0xb2>
 80097a4:	687b      	ldr	r3, [r7, #4]
 80097a6:	791b      	ldrb	r3, [r3, #4]
 80097a8:	2b01      	cmp	r3, #1
 80097aa:	d144      	bne.n	8009836 <sync_fs+0xb2>
 80097ac:	687b      	ldr	r3, [r7, #4]
 80097ae:	3334      	adds	r3, #52	@ 0x34
 80097b0:	f44f 7200 	mov.w	r2, #512	@ 0x200
 80097b4:	2100      	movs	r1, #0
 80097b6:	4618      	mov	r0, r3
 80097b8:	f7ff fd77 	bl	80092aa <mem_set>
 80097bc:	687b      	ldr	r3, [r7, #4]
 80097be:	3334      	adds	r3, #52	@ 0x34
 80097c0:	f503 73ff 	add.w	r3, r3, #510	@ 0x1fe
 80097c4:	f64a 2155 	movw	r1, #43605	@ 0xaa55
 80097c8:	4618      	mov	r0, r3
 80097ca:	f7ff fd06 	bl	80091da <st_word>
 80097ce:	687b      	ldr	r3, [r7, #4]
 80097d0:	3334      	adds	r3, #52	@ 0x34
 80097d2:	4921      	ldr	r1, [pc, #132]	@ (8009858 <sync_fs+0xd4>)
 80097d4:	4618      	mov	r0, r3
 80097d6:	f7ff fd1b 	bl	8009210 <st_dword>
 80097da:	687b      	ldr	r3, [r7, #4]
 80097dc:	3334      	adds	r3, #52	@ 0x34
 80097de:	f503 73f2 	add.w	r3, r3, #484	@ 0x1e4
 80097e2:	491e      	ldr	r1, [pc, #120]	@ (800985c <sync_fs+0xd8>)
 80097e4:	4618      	mov	r0, r3
 80097e6:	f7ff fd13 	bl	8009210 <st_dword>
 80097ea:	687b      	ldr	r3, [r7, #4]
 80097ec:	3334      	adds	r3, #52	@ 0x34
 80097ee:	f503 72f4 	add.w	r2, r3, #488	@ 0x1e8
 80097f2:	687b      	ldr	r3, [r7, #4]
 80097f4:	695b      	ldr	r3, [r3, #20]
 80097f6:	4619      	mov	r1, r3
 80097f8:	4610      	mov	r0, r2
 80097fa:	f7ff fd09 	bl	8009210 <st_dword>
 80097fe:	687b      	ldr	r3, [r7, #4]
 8009800:	3334      	adds	r3, #52	@ 0x34
 8009802:	f503 72f6 	add.w	r2, r3, #492	@ 0x1ec
 8009806:	687b      	ldr	r3, [r7, #4]
 8009808:	691b      	ldr	r3, [r3, #16]
 800980a:	4619      	mov	r1, r3
 800980c:	4610      	mov	r0, r2
 800980e:	f7ff fcff 	bl	8009210 <st_dword>
 8009812:	687b      	ldr	r3, [r7, #4]
 8009814:	6a1b      	ldr	r3, [r3, #32]
 8009816:	1c5a      	adds	r2, r3, #1
 8009818:	687b      	ldr	r3, [r7, #4]
 800981a:	631a      	str	r2, [r3, #48]	@ 0x30
 800981c:	687b      	ldr	r3, [r7, #4]
 800981e:	7858      	ldrb	r0, [r3, #1]
 8009820:	687b      	ldr	r3, [r7, #4]
 8009822:	f103 0134 	add.w	r1, r3, #52	@ 0x34
 8009826:	687b      	ldr	r3, [r7, #4]
 8009828:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 800982a:	2301      	movs	r3, #1
 800982c:	f7ff fc5c 	bl	80090e8 <disk_write>
 8009830:	687b      	ldr	r3, [r7, #4]
 8009832:	2200      	movs	r2, #0
 8009834:	711a      	strb	r2, [r3, #4]
 8009836:	687b      	ldr	r3, [r7, #4]
 8009838:	785b      	ldrb	r3, [r3, #1]
 800983a:	2200      	movs	r2, #0
 800983c:	2100      	movs	r1, #0
 800983e:	4618      	mov	r0, r3
 8009840:	f7ff fc72 	bl	8009128 <disk_ioctl>
 8009844:	4603      	mov	r3, r0
 8009846:	2b00      	cmp	r3, #0
 8009848:	d001      	beq.n	800984e <sync_fs+0xca>
 800984a:	2301      	movs	r3, #1
 800984c:	73fb      	strb	r3, [r7, #15]
 800984e:	7bfb      	ldrb	r3, [r7, #15]
 8009850:	4618      	mov	r0, r3
 8009852:	3710      	adds	r7, #16
 8009854:	46bd      	mov	sp, r7
 8009856:	bd80      	pop	{r7, pc}
 8009858:	41615252 	.word	0x41615252
 800985c:	61417272 	.word	0x61417272

08009860 <clust2sect>:
 8009860:	b480      	push	{r7}
 8009862:	b083      	sub	sp, #12
 8009864:	af00      	add	r7, sp, #0
 8009866:	6078      	str	r0, [r7, #4]
 8009868:	6039      	str	r1, [r7, #0]
 800986a:	683b      	ldr	r3, [r7, #0]
 800986c:	3b02      	subs	r3, #2
 800986e:	603b      	str	r3, [r7, #0]
 8009870:	687b      	ldr	r3, [r7, #4]
 8009872:	699b      	ldr	r3, [r3, #24]
 8009874:	3b02      	subs	r3, #2
 8009876:	683a      	ldr	r2, [r7, #0]
 8009878:	429a      	cmp	r2, r3
 800987a:	d301      	bcc.n	8009880 <clust2sect+0x20>
 800987c:	2300      	movs	r3, #0
 800987e:	e008      	b.n	8009892 <clust2sect+0x32>
 8009880:	687b      	ldr	r3, [r7, #4]
 8009882:	895b      	ldrh	r3, [r3, #10]
 8009884:	461a      	mov	r2, r3
 8009886:	683b      	ldr	r3, [r7, #0]
 8009888:	fb03 f202 	mul.w	r2, r3, r2
 800988c:	687b      	ldr	r3, [r7, #4]
 800988e:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8009890:	4413      	add	r3, r2
 8009892:	4618      	mov	r0, r3
 8009894:	370c      	adds	r7, #12
 8009896:	46bd      	mov	sp, r7
 8009898:	f85d 7b04 	ldr.w	r7, [sp], #4
 800989c:	4770      	bx	lr

0800989e <get_fat>:
 800989e:	b580      	push	{r7, lr}
 80098a0:	b086      	sub	sp, #24
 80098a2:	af00      	add	r7, sp, #0
 80098a4:	6078      	str	r0, [r7, #4]
 80098a6:	6039      	str	r1, [r7, #0]
 80098a8:	687b      	ldr	r3, [r7, #4]
 80098aa:	681b      	ldr	r3, [r3, #0]
 80098ac:	613b      	str	r3, [r7, #16]
 80098ae:	683b      	ldr	r3, [r7, #0]
 80098b0:	2b01      	cmp	r3, #1
 80098b2:	d904      	bls.n	80098be <get_fat+0x20>
 80098b4:	693b      	ldr	r3, [r7, #16]
 80098b6:	699b      	ldr	r3, [r3, #24]
 80098b8:	683a      	ldr	r2, [r7, #0]
 80098ba:	429a      	cmp	r2, r3
 80098bc:	d302      	bcc.n	80098c4 <get_fat+0x26>
 80098be:	2301      	movs	r3, #1
 80098c0:	617b      	str	r3, [r7, #20]
 80098c2:	e08e      	b.n	80099e2 <get_fat+0x144>
 80098c4:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80098c8:	617b      	str	r3, [r7, #20]
 80098ca:	693b      	ldr	r3, [r7, #16]
 80098cc:	781b      	ldrb	r3, [r3, #0]
 80098ce:	2b03      	cmp	r3, #3
 80098d0:	d061      	beq.n	8009996 <get_fat+0xf8>
 80098d2:	2b03      	cmp	r3, #3
 80098d4:	dc7b      	bgt.n	80099ce <get_fat+0x130>
 80098d6:	2b01      	cmp	r3, #1
 80098d8:	d002      	beq.n	80098e0 <get_fat+0x42>
 80098da:	2b02      	cmp	r3, #2
 80098dc:	d041      	beq.n	8009962 <get_fat+0xc4>
 80098de:	e076      	b.n	80099ce <get_fat+0x130>
 80098e0:	683b      	ldr	r3, [r7, #0]
 80098e2:	60fb      	str	r3, [r7, #12]
 80098e4:	68fb      	ldr	r3, [r7, #12]
 80098e6:	085b      	lsrs	r3, r3, #1
 80098e8:	68fa      	ldr	r2, [r7, #12]
 80098ea:	4413      	add	r3, r2
 80098ec:	60fb      	str	r3, [r7, #12]
 80098ee:	693b      	ldr	r3, [r7, #16]
 80098f0:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 80098f2:	68fb      	ldr	r3, [r7, #12]
 80098f4:	0a5b      	lsrs	r3, r3, #9
 80098f6:	4413      	add	r3, r2
 80098f8:	4619      	mov	r1, r3
 80098fa:	6938      	ldr	r0, [r7, #16]
 80098fc:	f7ff ff14 	bl	8009728 <move_window>
 8009900:	4603      	mov	r3, r0
 8009902:	2b00      	cmp	r3, #0
 8009904:	d166      	bne.n	80099d4 <get_fat+0x136>
 8009906:	68fb      	ldr	r3, [r7, #12]
 8009908:	1c5a      	adds	r2, r3, #1
 800990a:	60fa      	str	r2, [r7, #12]
 800990c:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009910:	693a      	ldr	r2, [r7, #16]
 8009912:	4413      	add	r3, r2
 8009914:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8009918:	60bb      	str	r3, [r7, #8]
 800991a:	693b      	ldr	r3, [r7, #16]
 800991c:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 800991e:	68fb      	ldr	r3, [r7, #12]
 8009920:	0a5b      	lsrs	r3, r3, #9
 8009922:	4413      	add	r3, r2
 8009924:	4619      	mov	r1, r3
 8009926:	6938      	ldr	r0, [r7, #16]
 8009928:	f7ff fefe 	bl	8009728 <move_window>
 800992c:	4603      	mov	r3, r0
 800992e:	2b00      	cmp	r3, #0
 8009930:	d152      	bne.n	80099d8 <get_fat+0x13a>
 8009932:	68fb      	ldr	r3, [r7, #12]
 8009934:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009938:	693a      	ldr	r2, [r7, #16]
 800993a:	4413      	add	r3, r2
 800993c:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 8009940:	021b      	lsls	r3, r3, #8
 8009942:	68ba      	ldr	r2, [r7, #8]
 8009944:	4313      	orrs	r3, r2
 8009946:	60bb      	str	r3, [r7, #8]
 8009948:	683b      	ldr	r3, [r7, #0]
 800994a:	f003 0301 	and.w	r3, r3, #1
 800994e:	2b00      	cmp	r3, #0
 8009950:	d002      	beq.n	8009958 <get_fat+0xba>
 8009952:	68bb      	ldr	r3, [r7, #8]
 8009954:	091b      	lsrs	r3, r3, #4
 8009956:	e002      	b.n	800995e <get_fat+0xc0>
 8009958:	68bb      	ldr	r3, [r7, #8]
 800995a:	f3c3 030b 	ubfx	r3, r3, #0, #12
 800995e:	617b      	str	r3, [r7, #20]
 8009960:	e03f      	b.n	80099e2 <get_fat+0x144>
 8009962:	693b      	ldr	r3, [r7, #16]
 8009964:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8009966:	683b      	ldr	r3, [r7, #0]
 8009968:	0a1b      	lsrs	r3, r3, #8
 800996a:	4413      	add	r3, r2
 800996c:	4619      	mov	r1, r3
 800996e:	6938      	ldr	r0, [r7, #16]
 8009970:	f7ff feda 	bl	8009728 <move_window>
 8009974:	4603      	mov	r3, r0
 8009976:	2b00      	cmp	r3, #0
 8009978:	d130      	bne.n	80099dc <get_fat+0x13e>
 800997a:	693b      	ldr	r3, [r7, #16]
 800997c:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009980:	683b      	ldr	r3, [r7, #0]
 8009982:	005b      	lsls	r3, r3, #1
 8009984:	f403 73ff 	and.w	r3, r3, #510	@ 0x1fe
 8009988:	4413      	add	r3, r2
 800998a:	4618      	mov	r0, r3
 800998c:	f7ff fbea 	bl	8009164 <ld_word>
 8009990:	4603      	mov	r3, r0
 8009992:	617b      	str	r3, [r7, #20]
 8009994:	e025      	b.n	80099e2 <get_fat+0x144>
 8009996:	693b      	ldr	r3, [r7, #16]
 8009998:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 800999a:	683b      	ldr	r3, [r7, #0]
 800999c:	09db      	lsrs	r3, r3, #7
 800999e:	4413      	add	r3, r2
 80099a0:	4619      	mov	r1, r3
 80099a2:	6938      	ldr	r0, [r7, #16]
 80099a4:	f7ff fec0 	bl	8009728 <move_window>
 80099a8:	4603      	mov	r3, r0
 80099aa:	2b00      	cmp	r3, #0
 80099ac:	d118      	bne.n	80099e0 <get_fat+0x142>
 80099ae:	693b      	ldr	r3, [r7, #16]
 80099b0:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 80099b4:	683b      	ldr	r3, [r7, #0]
 80099b6:	009b      	lsls	r3, r3, #2
 80099b8:	f403 73fe 	and.w	r3, r3, #508	@ 0x1fc
 80099bc:	4413      	add	r3, r2
 80099be:	4618      	mov	r0, r3
 80099c0:	f7ff fbe8 	bl	8009194 <ld_dword>
 80099c4:	4603      	mov	r3, r0
 80099c6:	f023 4370 	bic.w	r3, r3, #4026531840	@ 0xf0000000
 80099ca:	617b      	str	r3, [r7, #20]
 80099cc:	e009      	b.n	80099e2 <get_fat+0x144>
 80099ce:	2301      	movs	r3, #1
 80099d0:	617b      	str	r3, [r7, #20]
 80099d2:	e006      	b.n	80099e2 <get_fat+0x144>
 80099d4:	bf00      	nop
 80099d6:	e004      	b.n	80099e2 <get_fat+0x144>
 80099d8:	bf00      	nop
 80099da:	e002      	b.n	80099e2 <get_fat+0x144>
 80099dc:	bf00      	nop
 80099de:	e000      	b.n	80099e2 <get_fat+0x144>
 80099e0:	bf00      	nop
 80099e2:	697b      	ldr	r3, [r7, #20]
 80099e4:	4618      	mov	r0, r3
 80099e6:	3718      	adds	r7, #24
 80099e8:	46bd      	mov	sp, r7
 80099ea:	bd80      	pop	{r7, pc}

080099ec <put_fat>:
 80099ec:	b590      	push	{r4, r7, lr}
 80099ee:	b089      	sub	sp, #36	@ 0x24
 80099f0:	af00      	add	r7, sp, #0
 80099f2:	60f8      	str	r0, [r7, #12]
 80099f4:	60b9      	str	r1, [r7, #8]
 80099f6:	607a      	str	r2, [r7, #4]
 80099f8:	2302      	movs	r3, #2
 80099fa:	77fb      	strb	r3, [r7, #31]
 80099fc:	68bb      	ldr	r3, [r7, #8]
 80099fe:	2b01      	cmp	r3, #1
 8009a00:	f240 80d9 	bls.w	8009bb6 <put_fat+0x1ca>
 8009a04:	68fb      	ldr	r3, [r7, #12]
 8009a06:	699b      	ldr	r3, [r3, #24]
 8009a08:	68ba      	ldr	r2, [r7, #8]
 8009a0a:	429a      	cmp	r2, r3
 8009a0c:	f080 80d3 	bcs.w	8009bb6 <put_fat+0x1ca>
 8009a10:	68fb      	ldr	r3, [r7, #12]
 8009a12:	781b      	ldrb	r3, [r3, #0]
 8009a14:	2b03      	cmp	r3, #3
 8009a16:	f000 8096 	beq.w	8009b46 <put_fat+0x15a>
 8009a1a:	2b03      	cmp	r3, #3
 8009a1c:	f300 80cb 	bgt.w	8009bb6 <put_fat+0x1ca>
 8009a20:	2b01      	cmp	r3, #1
 8009a22:	d002      	beq.n	8009a2a <put_fat+0x3e>
 8009a24:	2b02      	cmp	r3, #2
 8009a26:	d06e      	beq.n	8009b06 <put_fat+0x11a>
 8009a28:	e0c5      	b.n	8009bb6 <put_fat+0x1ca>
 8009a2a:	68bb      	ldr	r3, [r7, #8]
 8009a2c:	61bb      	str	r3, [r7, #24]
 8009a2e:	69bb      	ldr	r3, [r7, #24]
 8009a30:	085b      	lsrs	r3, r3, #1
 8009a32:	69ba      	ldr	r2, [r7, #24]
 8009a34:	4413      	add	r3, r2
 8009a36:	61bb      	str	r3, [r7, #24]
 8009a38:	68fb      	ldr	r3, [r7, #12]
 8009a3a:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8009a3c:	69bb      	ldr	r3, [r7, #24]
 8009a3e:	0a5b      	lsrs	r3, r3, #9
 8009a40:	4413      	add	r3, r2
 8009a42:	4619      	mov	r1, r3
 8009a44:	68f8      	ldr	r0, [r7, #12]
 8009a46:	f7ff fe6f 	bl	8009728 <move_window>
 8009a4a:	4603      	mov	r3, r0
 8009a4c:	77fb      	strb	r3, [r7, #31]
 8009a4e:	7ffb      	ldrb	r3, [r7, #31]
 8009a50:	2b00      	cmp	r3, #0
 8009a52:	f040 80a9 	bne.w	8009ba8 <put_fat+0x1bc>
 8009a56:	68fb      	ldr	r3, [r7, #12]
 8009a58:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009a5c:	69bb      	ldr	r3, [r7, #24]
 8009a5e:	1c59      	adds	r1, r3, #1
 8009a60:	61b9      	str	r1, [r7, #24]
 8009a62:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009a66:	4413      	add	r3, r2
 8009a68:	617b      	str	r3, [r7, #20]
 8009a6a:	68bb      	ldr	r3, [r7, #8]
 8009a6c:	f003 0301 	and.w	r3, r3, #1
 8009a70:	2b00      	cmp	r3, #0
 8009a72:	d00d      	beq.n	8009a90 <put_fat+0xa4>
 8009a74:	697b      	ldr	r3, [r7, #20]
 8009a76:	781b      	ldrb	r3, [r3, #0]
 8009a78:	b25b      	sxtb	r3, r3
 8009a7a:	f003 030f 	and.w	r3, r3, #15
 8009a7e:	b25a      	sxtb	r2, r3
 8009a80:	687b      	ldr	r3, [r7, #4]
 8009a82:	b2db      	uxtb	r3, r3
 8009a84:	011b      	lsls	r3, r3, #4
 8009a86:	b25b      	sxtb	r3, r3
 8009a88:	4313      	orrs	r3, r2
 8009a8a:	b25b      	sxtb	r3, r3
 8009a8c:	b2db      	uxtb	r3, r3
 8009a8e:	e001      	b.n	8009a94 <put_fat+0xa8>
 8009a90:	687b      	ldr	r3, [r7, #4]
 8009a92:	b2db      	uxtb	r3, r3
 8009a94:	697a      	ldr	r2, [r7, #20]
 8009a96:	7013      	strb	r3, [r2, #0]
 8009a98:	68fb      	ldr	r3, [r7, #12]
 8009a9a:	2201      	movs	r2, #1
 8009a9c:	70da      	strb	r2, [r3, #3]
 8009a9e:	68fb      	ldr	r3, [r7, #12]
 8009aa0:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8009aa2:	69bb      	ldr	r3, [r7, #24]
 8009aa4:	0a5b      	lsrs	r3, r3, #9
 8009aa6:	4413      	add	r3, r2
 8009aa8:	4619      	mov	r1, r3
 8009aaa:	68f8      	ldr	r0, [r7, #12]
 8009aac:	f7ff fe3c 	bl	8009728 <move_window>
 8009ab0:	4603      	mov	r3, r0
 8009ab2:	77fb      	strb	r3, [r7, #31]
 8009ab4:	7ffb      	ldrb	r3, [r7, #31]
 8009ab6:	2b00      	cmp	r3, #0
 8009ab8:	d178      	bne.n	8009bac <put_fat+0x1c0>
 8009aba:	68fb      	ldr	r3, [r7, #12]
 8009abc:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009ac0:	69bb      	ldr	r3, [r7, #24]
 8009ac2:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009ac6:	4413      	add	r3, r2
 8009ac8:	617b      	str	r3, [r7, #20]
 8009aca:	68bb      	ldr	r3, [r7, #8]
 8009acc:	f003 0301 	and.w	r3, r3, #1
 8009ad0:	2b00      	cmp	r3, #0
 8009ad2:	d003      	beq.n	8009adc <put_fat+0xf0>
 8009ad4:	687b      	ldr	r3, [r7, #4]
 8009ad6:	091b      	lsrs	r3, r3, #4
 8009ad8:	b2db      	uxtb	r3, r3
 8009ada:	e00e      	b.n	8009afa <put_fat+0x10e>
 8009adc:	697b      	ldr	r3, [r7, #20]
 8009ade:	781b      	ldrb	r3, [r3, #0]
 8009ae0:	b25b      	sxtb	r3, r3
 8009ae2:	f023 030f 	bic.w	r3, r3, #15
 8009ae6:	b25a      	sxtb	r2, r3
 8009ae8:	687b      	ldr	r3, [r7, #4]
 8009aea:	0a1b      	lsrs	r3, r3, #8
 8009aec:	b25b      	sxtb	r3, r3
 8009aee:	f003 030f 	and.w	r3, r3, #15
 8009af2:	b25b      	sxtb	r3, r3
 8009af4:	4313      	orrs	r3, r2
 8009af6:	b25b      	sxtb	r3, r3
 8009af8:	b2db      	uxtb	r3, r3
 8009afa:	697a      	ldr	r2, [r7, #20]
 8009afc:	7013      	strb	r3, [r2, #0]
 8009afe:	68fb      	ldr	r3, [r7, #12]
 8009b00:	2201      	movs	r2, #1
 8009b02:	70da      	strb	r2, [r3, #3]
 8009b04:	e057      	b.n	8009bb6 <put_fat+0x1ca>
 8009b06:	68fb      	ldr	r3, [r7, #12]
 8009b08:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8009b0a:	68bb      	ldr	r3, [r7, #8]
 8009b0c:	0a1b      	lsrs	r3, r3, #8
 8009b0e:	4413      	add	r3, r2
 8009b10:	4619      	mov	r1, r3
 8009b12:	68f8      	ldr	r0, [r7, #12]
 8009b14:	f7ff fe08 	bl	8009728 <move_window>
 8009b18:	4603      	mov	r3, r0
 8009b1a:	77fb      	strb	r3, [r7, #31]
 8009b1c:	7ffb      	ldrb	r3, [r7, #31]
 8009b1e:	2b00      	cmp	r3, #0
 8009b20:	d146      	bne.n	8009bb0 <put_fat+0x1c4>
 8009b22:	68fb      	ldr	r3, [r7, #12]
 8009b24:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009b28:	68bb      	ldr	r3, [r7, #8]
 8009b2a:	005b      	lsls	r3, r3, #1
 8009b2c:	f403 73ff 	and.w	r3, r3, #510	@ 0x1fe
 8009b30:	4413      	add	r3, r2
 8009b32:	687a      	ldr	r2, [r7, #4]
 8009b34:	b292      	uxth	r2, r2
 8009b36:	4611      	mov	r1, r2
 8009b38:	4618      	mov	r0, r3
 8009b3a:	f7ff fb4e 	bl	80091da <st_word>
 8009b3e:	68fb      	ldr	r3, [r7, #12]
 8009b40:	2201      	movs	r2, #1
 8009b42:	70da      	strb	r2, [r3, #3]
 8009b44:	e037      	b.n	8009bb6 <put_fat+0x1ca>
 8009b46:	68fb      	ldr	r3, [r7, #12]
 8009b48:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8009b4a:	68bb      	ldr	r3, [r7, #8]
 8009b4c:	09db      	lsrs	r3, r3, #7
 8009b4e:	4413      	add	r3, r2
 8009b50:	4619      	mov	r1, r3
 8009b52:	68f8      	ldr	r0, [r7, #12]
 8009b54:	f7ff fde8 	bl	8009728 <move_window>
 8009b58:	4603      	mov	r3, r0
 8009b5a:	77fb      	strb	r3, [r7, #31]
 8009b5c:	7ffb      	ldrb	r3, [r7, #31]
 8009b5e:	2b00      	cmp	r3, #0
 8009b60:	d128      	bne.n	8009bb4 <put_fat+0x1c8>
 8009b62:	687b      	ldr	r3, [r7, #4]
 8009b64:	f023 4470 	bic.w	r4, r3, #4026531840	@ 0xf0000000
 8009b68:	68fb      	ldr	r3, [r7, #12]
 8009b6a:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009b6e:	68bb      	ldr	r3, [r7, #8]
 8009b70:	009b      	lsls	r3, r3, #2
 8009b72:	f403 73fe 	and.w	r3, r3, #508	@ 0x1fc
 8009b76:	4413      	add	r3, r2
 8009b78:	4618      	mov	r0, r3
 8009b7a:	f7ff fb0b 	bl	8009194 <ld_dword>
 8009b7e:	4603      	mov	r3, r0
 8009b80:	f003 4370 	and.w	r3, r3, #4026531840	@ 0xf0000000
 8009b84:	4323      	orrs	r3, r4
 8009b86:	607b      	str	r3, [r7, #4]
 8009b88:	68fb      	ldr	r3, [r7, #12]
 8009b8a:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009b8e:	68bb      	ldr	r3, [r7, #8]
 8009b90:	009b      	lsls	r3, r3, #2
 8009b92:	f403 73fe 	and.w	r3, r3, #508	@ 0x1fc
 8009b96:	4413      	add	r3, r2
 8009b98:	6879      	ldr	r1, [r7, #4]
 8009b9a:	4618      	mov	r0, r3
 8009b9c:	f7ff fb38 	bl	8009210 <st_dword>
 8009ba0:	68fb      	ldr	r3, [r7, #12]
 8009ba2:	2201      	movs	r2, #1
 8009ba4:	70da      	strb	r2, [r3, #3]
 8009ba6:	e006      	b.n	8009bb6 <put_fat+0x1ca>
 8009ba8:	bf00      	nop
 8009baa:	e004      	b.n	8009bb6 <put_fat+0x1ca>
 8009bac:	bf00      	nop
 8009bae:	e002      	b.n	8009bb6 <put_fat+0x1ca>
 8009bb0:	bf00      	nop
 8009bb2:	e000      	b.n	8009bb6 <put_fat+0x1ca>
 8009bb4:	bf00      	nop
 8009bb6:	7ffb      	ldrb	r3, [r7, #31]
 8009bb8:	4618      	mov	r0, r3
 8009bba:	3724      	adds	r7, #36	@ 0x24
 8009bbc:	46bd      	mov	sp, r7
 8009bbe:	bd90      	pop	{r4, r7, pc}

08009bc0 <remove_chain>:
 8009bc0:	b580      	push	{r7, lr}
 8009bc2:	b088      	sub	sp, #32
 8009bc4:	af00      	add	r7, sp, #0
 8009bc6:	60f8      	str	r0, [r7, #12]
 8009bc8:	60b9      	str	r1, [r7, #8]
 8009bca:	607a      	str	r2, [r7, #4]
 8009bcc:	2300      	movs	r3, #0
 8009bce:	77fb      	strb	r3, [r7, #31]
 8009bd0:	68fb      	ldr	r3, [r7, #12]
 8009bd2:	681b      	ldr	r3, [r3, #0]
 8009bd4:	61bb      	str	r3, [r7, #24]
 8009bd6:	68bb      	ldr	r3, [r7, #8]
 8009bd8:	2b01      	cmp	r3, #1
 8009bda:	d904      	bls.n	8009be6 <remove_chain+0x26>
 8009bdc:	69bb      	ldr	r3, [r7, #24]
 8009bde:	699b      	ldr	r3, [r3, #24]
 8009be0:	68ba      	ldr	r2, [r7, #8]
 8009be2:	429a      	cmp	r2, r3
 8009be4:	d301      	bcc.n	8009bea <remove_chain+0x2a>
 8009be6:	2302      	movs	r3, #2
 8009be8:	e04b      	b.n	8009c82 <remove_chain+0xc2>
 8009bea:	687b      	ldr	r3, [r7, #4]
 8009bec:	2b00      	cmp	r3, #0
 8009bee:	d00c      	beq.n	8009c0a <remove_chain+0x4a>
 8009bf0:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8009bf4:	6879      	ldr	r1, [r7, #4]
 8009bf6:	69b8      	ldr	r0, [r7, #24]
 8009bf8:	f7ff fef8 	bl	80099ec <put_fat>
 8009bfc:	4603      	mov	r3, r0
 8009bfe:	77fb      	strb	r3, [r7, #31]
 8009c00:	7ffb      	ldrb	r3, [r7, #31]
 8009c02:	2b00      	cmp	r3, #0
 8009c04:	d001      	beq.n	8009c0a <remove_chain+0x4a>
 8009c06:	7ffb      	ldrb	r3, [r7, #31]
 8009c08:	e03b      	b.n	8009c82 <remove_chain+0xc2>
 8009c0a:	68b9      	ldr	r1, [r7, #8]
 8009c0c:	68f8      	ldr	r0, [r7, #12]
 8009c0e:	f7ff fe46 	bl	800989e <get_fat>
 8009c12:	6178      	str	r0, [r7, #20]
 8009c14:	697b      	ldr	r3, [r7, #20]
 8009c16:	2b00      	cmp	r3, #0
 8009c18:	d031      	beq.n	8009c7e <remove_chain+0xbe>
 8009c1a:	697b      	ldr	r3, [r7, #20]
 8009c1c:	2b01      	cmp	r3, #1
 8009c1e:	d101      	bne.n	8009c24 <remove_chain+0x64>
 8009c20:	2302      	movs	r3, #2
 8009c22:	e02e      	b.n	8009c82 <remove_chain+0xc2>
 8009c24:	697b      	ldr	r3, [r7, #20]
 8009c26:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009c2a:	d101      	bne.n	8009c30 <remove_chain+0x70>
 8009c2c:	2301      	movs	r3, #1
 8009c2e:	e028      	b.n	8009c82 <remove_chain+0xc2>
 8009c30:	2200      	movs	r2, #0
 8009c32:	68b9      	ldr	r1, [r7, #8]
 8009c34:	69b8      	ldr	r0, [r7, #24]
 8009c36:	f7ff fed9 	bl	80099ec <put_fat>
 8009c3a:	4603      	mov	r3, r0
 8009c3c:	77fb      	strb	r3, [r7, #31]
 8009c3e:	7ffb      	ldrb	r3, [r7, #31]
 8009c40:	2b00      	cmp	r3, #0
 8009c42:	d001      	beq.n	8009c48 <remove_chain+0x88>
 8009c44:	7ffb      	ldrb	r3, [r7, #31]
 8009c46:	e01c      	b.n	8009c82 <remove_chain+0xc2>
 8009c48:	69bb      	ldr	r3, [r7, #24]
 8009c4a:	695a      	ldr	r2, [r3, #20]
 8009c4c:	69bb      	ldr	r3, [r7, #24]
 8009c4e:	699b      	ldr	r3, [r3, #24]
 8009c50:	3b02      	subs	r3, #2
 8009c52:	429a      	cmp	r2, r3
 8009c54:	d20b      	bcs.n	8009c6e <remove_chain+0xae>
 8009c56:	69bb      	ldr	r3, [r7, #24]
 8009c58:	695b      	ldr	r3, [r3, #20]
 8009c5a:	1c5a      	adds	r2, r3, #1
 8009c5c:	69bb      	ldr	r3, [r7, #24]
 8009c5e:	615a      	str	r2, [r3, #20]
 8009c60:	69bb      	ldr	r3, [r7, #24]
 8009c62:	791b      	ldrb	r3, [r3, #4]
 8009c64:	f043 0301 	orr.w	r3, r3, #1
 8009c68:	b2da      	uxtb	r2, r3
 8009c6a:	69bb      	ldr	r3, [r7, #24]
 8009c6c:	711a      	strb	r2, [r3, #4]
 8009c6e:	697b      	ldr	r3, [r7, #20]
 8009c70:	60bb      	str	r3, [r7, #8]
 8009c72:	69bb      	ldr	r3, [r7, #24]
 8009c74:	699b      	ldr	r3, [r3, #24]
 8009c76:	68ba      	ldr	r2, [r7, #8]
 8009c78:	429a      	cmp	r2, r3
 8009c7a:	d3c6      	bcc.n	8009c0a <remove_chain+0x4a>
 8009c7c:	e000      	b.n	8009c80 <remove_chain+0xc0>
 8009c7e:	bf00      	nop
 8009c80:	2300      	movs	r3, #0
 8009c82:	4618      	mov	r0, r3
 8009c84:	3720      	adds	r7, #32
 8009c86:	46bd      	mov	sp, r7
 8009c88:	bd80      	pop	{r7, pc}

08009c8a <create_chain>:
 8009c8a:	b580      	push	{r7, lr}
 8009c8c:	b088      	sub	sp, #32
 8009c8e:	af00      	add	r7, sp, #0
 8009c90:	6078      	str	r0, [r7, #4]
 8009c92:	6039      	str	r1, [r7, #0]
 8009c94:	687b      	ldr	r3, [r7, #4]
 8009c96:	681b      	ldr	r3, [r3, #0]
 8009c98:	613b      	str	r3, [r7, #16]
 8009c9a:	683b      	ldr	r3, [r7, #0]
 8009c9c:	2b00      	cmp	r3, #0
 8009c9e:	d10d      	bne.n	8009cbc <create_chain+0x32>
 8009ca0:	693b      	ldr	r3, [r7, #16]
 8009ca2:	691b      	ldr	r3, [r3, #16]
 8009ca4:	61bb      	str	r3, [r7, #24]
 8009ca6:	69bb      	ldr	r3, [r7, #24]
 8009ca8:	2b00      	cmp	r3, #0
 8009caa:	d004      	beq.n	8009cb6 <create_chain+0x2c>
 8009cac:	693b      	ldr	r3, [r7, #16]
 8009cae:	699b      	ldr	r3, [r3, #24]
 8009cb0:	69ba      	ldr	r2, [r7, #24]
 8009cb2:	429a      	cmp	r2, r3
 8009cb4:	d31b      	bcc.n	8009cee <create_chain+0x64>
 8009cb6:	2301      	movs	r3, #1
 8009cb8:	61bb      	str	r3, [r7, #24]
 8009cba:	e018      	b.n	8009cee <create_chain+0x64>
 8009cbc:	6839      	ldr	r1, [r7, #0]
 8009cbe:	6878      	ldr	r0, [r7, #4]
 8009cc0:	f7ff fded 	bl	800989e <get_fat>
 8009cc4:	60f8      	str	r0, [r7, #12]
 8009cc6:	68fb      	ldr	r3, [r7, #12]
 8009cc8:	2b01      	cmp	r3, #1
 8009cca:	d801      	bhi.n	8009cd0 <create_chain+0x46>
 8009ccc:	2301      	movs	r3, #1
 8009cce:	e070      	b.n	8009db2 <create_chain+0x128>
 8009cd0:	68fb      	ldr	r3, [r7, #12]
 8009cd2:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009cd6:	d101      	bne.n	8009cdc <create_chain+0x52>
 8009cd8:	68fb      	ldr	r3, [r7, #12]
 8009cda:	e06a      	b.n	8009db2 <create_chain+0x128>
 8009cdc:	693b      	ldr	r3, [r7, #16]
 8009cde:	699b      	ldr	r3, [r3, #24]
 8009ce0:	68fa      	ldr	r2, [r7, #12]
 8009ce2:	429a      	cmp	r2, r3
 8009ce4:	d201      	bcs.n	8009cea <create_chain+0x60>
 8009ce6:	68fb      	ldr	r3, [r7, #12]
 8009ce8:	e063      	b.n	8009db2 <create_chain+0x128>
 8009cea:	683b      	ldr	r3, [r7, #0]
 8009cec:	61bb      	str	r3, [r7, #24]
 8009cee:	69bb      	ldr	r3, [r7, #24]
 8009cf0:	61fb      	str	r3, [r7, #28]
 8009cf2:	69fb      	ldr	r3, [r7, #28]
 8009cf4:	3301      	adds	r3, #1
 8009cf6:	61fb      	str	r3, [r7, #28]
 8009cf8:	693b      	ldr	r3, [r7, #16]
 8009cfa:	699b      	ldr	r3, [r3, #24]
 8009cfc:	69fa      	ldr	r2, [r7, #28]
 8009cfe:	429a      	cmp	r2, r3
 8009d00:	d307      	bcc.n	8009d12 <create_chain+0x88>
 8009d02:	2302      	movs	r3, #2
 8009d04:	61fb      	str	r3, [r7, #28]
 8009d06:	69fa      	ldr	r2, [r7, #28]
 8009d08:	69bb      	ldr	r3, [r7, #24]
 8009d0a:	429a      	cmp	r2, r3
 8009d0c:	d901      	bls.n	8009d12 <create_chain+0x88>
 8009d0e:	2300      	movs	r3, #0
 8009d10:	e04f      	b.n	8009db2 <create_chain+0x128>
 8009d12:	69f9      	ldr	r1, [r7, #28]
 8009d14:	6878      	ldr	r0, [r7, #4]
 8009d16:	f7ff fdc2 	bl	800989e <get_fat>
 8009d1a:	60f8      	str	r0, [r7, #12]
 8009d1c:	68fb      	ldr	r3, [r7, #12]
 8009d1e:	2b00      	cmp	r3, #0
 8009d20:	d00e      	beq.n	8009d40 <create_chain+0xb6>
 8009d22:	68fb      	ldr	r3, [r7, #12]
 8009d24:	2b01      	cmp	r3, #1
 8009d26:	d003      	beq.n	8009d30 <create_chain+0xa6>
 8009d28:	68fb      	ldr	r3, [r7, #12]
 8009d2a:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009d2e:	d101      	bne.n	8009d34 <create_chain+0xaa>
 8009d30:	68fb      	ldr	r3, [r7, #12]
 8009d32:	e03e      	b.n	8009db2 <create_chain+0x128>
 8009d34:	69fa      	ldr	r2, [r7, #28]
 8009d36:	69bb      	ldr	r3, [r7, #24]
 8009d38:	429a      	cmp	r2, r3
 8009d3a:	d1da      	bne.n	8009cf2 <create_chain+0x68>
 8009d3c:	2300      	movs	r3, #0
 8009d3e:	e038      	b.n	8009db2 <create_chain+0x128>
 8009d40:	bf00      	nop
 8009d42:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8009d46:	69f9      	ldr	r1, [r7, #28]
 8009d48:	6938      	ldr	r0, [r7, #16]
 8009d4a:	f7ff fe4f 	bl	80099ec <put_fat>
 8009d4e:	4603      	mov	r3, r0
 8009d50:	75fb      	strb	r3, [r7, #23]
 8009d52:	7dfb      	ldrb	r3, [r7, #23]
 8009d54:	2b00      	cmp	r3, #0
 8009d56:	d109      	bne.n	8009d6c <create_chain+0xe2>
 8009d58:	683b      	ldr	r3, [r7, #0]
 8009d5a:	2b00      	cmp	r3, #0
 8009d5c:	d006      	beq.n	8009d6c <create_chain+0xe2>
 8009d5e:	69fa      	ldr	r2, [r7, #28]
 8009d60:	6839      	ldr	r1, [r7, #0]
 8009d62:	6938      	ldr	r0, [r7, #16]
 8009d64:	f7ff fe42 	bl	80099ec <put_fat>
 8009d68:	4603      	mov	r3, r0
 8009d6a:	75fb      	strb	r3, [r7, #23]
 8009d6c:	7dfb      	ldrb	r3, [r7, #23]
 8009d6e:	2b00      	cmp	r3, #0
 8009d70:	d116      	bne.n	8009da0 <create_chain+0x116>
 8009d72:	693b      	ldr	r3, [r7, #16]
 8009d74:	69fa      	ldr	r2, [r7, #28]
 8009d76:	611a      	str	r2, [r3, #16]
 8009d78:	693b      	ldr	r3, [r7, #16]
 8009d7a:	695a      	ldr	r2, [r3, #20]
 8009d7c:	693b      	ldr	r3, [r7, #16]
 8009d7e:	699b      	ldr	r3, [r3, #24]
 8009d80:	3b02      	subs	r3, #2
 8009d82:	429a      	cmp	r2, r3
 8009d84:	d804      	bhi.n	8009d90 <create_chain+0x106>
 8009d86:	693b      	ldr	r3, [r7, #16]
 8009d88:	695b      	ldr	r3, [r3, #20]
 8009d8a:	1e5a      	subs	r2, r3, #1
 8009d8c:	693b      	ldr	r3, [r7, #16]
 8009d8e:	615a      	str	r2, [r3, #20]
 8009d90:	693b      	ldr	r3, [r7, #16]
 8009d92:	791b      	ldrb	r3, [r3, #4]
 8009d94:	f043 0301 	orr.w	r3, r3, #1
 8009d98:	b2da      	uxtb	r2, r3
 8009d9a:	693b      	ldr	r3, [r7, #16]
 8009d9c:	711a      	strb	r2, [r3, #4]
 8009d9e:	e007      	b.n	8009db0 <create_chain+0x126>
 8009da0:	7dfb      	ldrb	r3, [r7, #23]
 8009da2:	2b01      	cmp	r3, #1
 8009da4:	d102      	bne.n	8009dac <create_chain+0x122>
 8009da6:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8009daa:	e000      	b.n	8009dae <create_chain+0x124>
 8009dac:	2301      	movs	r3, #1
 8009dae:	61fb      	str	r3, [r7, #28]
 8009db0:	69fb      	ldr	r3, [r7, #28]
 8009db2:	4618      	mov	r0, r3
 8009db4:	3720      	adds	r7, #32
 8009db6:	46bd      	mov	sp, r7
 8009db8:	bd80      	pop	{r7, pc}

08009dba <clmt_clust>:
 8009dba:	b480      	push	{r7}
 8009dbc:	b087      	sub	sp, #28
 8009dbe:	af00      	add	r7, sp, #0
 8009dc0:	6078      	str	r0, [r7, #4]
 8009dc2:	6039      	str	r1, [r7, #0]
 8009dc4:	687b      	ldr	r3, [r7, #4]
 8009dc6:	681b      	ldr	r3, [r3, #0]
 8009dc8:	60fb      	str	r3, [r7, #12]
 8009dca:	687b      	ldr	r3, [r7, #4]
 8009dcc:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8009dce:	3304      	adds	r3, #4
 8009dd0:	613b      	str	r3, [r7, #16]
 8009dd2:	683b      	ldr	r3, [r7, #0]
 8009dd4:	0a5b      	lsrs	r3, r3, #9
 8009dd6:	68fa      	ldr	r2, [r7, #12]
 8009dd8:	8952      	ldrh	r2, [r2, #10]
 8009dda:	fbb3 f3f2 	udiv	r3, r3, r2
 8009dde:	617b      	str	r3, [r7, #20]
 8009de0:	693b      	ldr	r3, [r7, #16]
 8009de2:	1d1a      	adds	r2, r3, #4
 8009de4:	613a      	str	r2, [r7, #16]
 8009de6:	681b      	ldr	r3, [r3, #0]
 8009de8:	60bb      	str	r3, [r7, #8]
 8009dea:	68bb      	ldr	r3, [r7, #8]
 8009dec:	2b00      	cmp	r3, #0
 8009dee:	d101      	bne.n	8009df4 <clmt_clust+0x3a>
 8009df0:	2300      	movs	r3, #0
 8009df2:	e010      	b.n	8009e16 <clmt_clust+0x5c>
 8009df4:	697a      	ldr	r2, [r7, #20]
 8009df6:	68bb      	ldr	r3, [r7, #8]
 8009df8:	429a      	cmp	r2, r3
 8009dfa:	d307      	bcc.n	8009e0c <clmt_clust+0x52>
 8009dfc:	697a      	ldr	r2, [r7, #20]
 8009dfe:	68bb      	ldr	r3, [r7, #8]
 8009e00:	1ad3      	subs	r3, r2, r3
 8009e02:	617b      	str	r3, [r7, #20]
 8009e04:	693b      	ldr	r3, [r7, #16]
 8009e06:	3304      	adds	r3, #4
 8009e08:	613b      	str	r3, [r7, #16]
 8009e0a:	e7e9      	b.n	8009de0 <clmt_clust+0x26>
 8009e0c:	bf00      	nop
 8009e0e:	693b      	ldr	r3, [r7, #16]
 8009e10:	681a      	ldr	r2, [r3, #0]
 8009e12:	697b      	ldr	r3, [r7, #20]
 8009e14:	4413      	add	r3, r2
 8009e16:	4618      	mov	r0, r3
 8009e18:	371c      	adds	r7, #28
 8009e1a:	46bd      	mov	sp, r7
 8009e1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8009e20:	4770      	bx	lr

08009e22 <dir_sdi>:
 8009e22:	b580      	push	{r7, lr}
 8009e24:	b086      	sub	sp, #24
 8009e26:	af00      	add	r7, sp, #0
 8009e28:	6078      	str	r0, [r7, #4]
 8009e2a:	6039      	str	r1, [r7, #0]
 8009e2c:	687b      	ldr	r3, [r7, #4]
 8009e2e:	681b      	ldr	r3, [r3, #0]
 8009e30:	613b      	str	r3, [r7, #16]
 8009e32:	683b      	ldr	r3, [r7, #0]
 8009e34:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 8009e38:	d204      	bcs.n	8009e44 <dir_sdi+0x22>
 8009e3a:	683b      	ldr	r3, [r7, #0]
 8009e3c:	f003 031f 	and.w	r3, r3, #31
 8009e40:	2b00      	cmp	r3, #0
 8009e42:	d001      	beq.n	8009e48 <dir_sdi+0x26>
 8009e44:	2302      	movs	r3, #2
 8009e46:	e063      	b.n	8009f10 <dir_sdi+0xee>
 8009e48:	687b      	ldr	r3, [r7, #4]
 8009e4a:	683a      	ldr	r2, [r7, #0]
 8009e4c:	615a      	str	r2, [r3, #20]
 8009e4e:	687b      	ldr	r3, [r7, #4]
 8009e50:	689b      	ldr	r3, [r3, #8]
 8009e52:	617b      	str	r3, [r7, #20]
 8009e54:	697b      	ldr	r3, [r7, #20]
 8009e56:	2b00      	cmp	r3, #0
 8009e58:	d106      	bne.n	8009e68 <dir_sdi+0x46>
 8009e5a:	693b      	ldr	r3, [r7, #16]
 8009e5c:	781b      	ldrb	r3, [r3, #0]
 8009e5e:	2b02      	cmp	r3, #2
 8009e60:	d902      	bls.n	8009e68 <dir_sdi+0x46>
 8009e62:	693b      	ldr	r3, [r7, #16]
 8009e64:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8009e66:	617b      	str	r3, [r7, #20]
 8009e68:	697b      	ldr	r3, [r7, #20]
 8009e6a:	2b00      	cmp	r3, #0
 8009e6c:	d10c      	bne.n	8009e88 <dir_sdi+0x66>
 8009e6e:	683b      	ldr	r3, [r7, #0]
 8009e70:	095b      	lsrs	r3, r3, #5
 8009e72:	693a      	ldr	r2, [r7, #16]
 8009e74:	8912      	ldrh	r2, [r2, #8]
 8009e76:	4293      	cmp	r3, r2
 8009e78:	d301      	bcc.n	8009e7e <dir_sdi+0x5c>
 8009e7a:	2302      	movs	r3, #2
 8009e7c:	e048      	b.n	8009f10 <dir_sdi+0xee>
 8009e7e:	693b      	ldr	r3, [r7, #16]
 8009e80:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
 8009e82:	687b      	ldr	r3, [r7, #4]
 8009e84:	61da      	str	r2, [r3, #28]
 8009e86:	e029      	b.n	8009edc <dir_sdi+0xba>
 8009e88:	693b      	ldr	r3, [r7, #16]
 8009e8a:	895b      	ldrh	r3, [r3, #10]
 8009e8c:	025b      	lsls	r3, r3, #9
 8009e8e:	60fb      	str	r3, [r7, #12]
 8009e90:	e019      	b.n	8009ec6 <dir_sdi+0xa4>
 8009e92:	687b      	ldr	r3, [r7, #4]
 8009e94:	6979      	ldr	r1, [r7, #20]
 8009e96:	4618      	mov	r0, r3
 8009e98:	f7ff fd01 	bl	800989e <get_fat>
 8009e9c:	6178      	str	r0, [r7, #20]
 8009e9e:	697b      	ldr	r3, [r7, #20]
 8009ea0:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009ea4:	d101      	bne.n	8009eaa <dir_sdi+0x88>
 8009ea6:	2301      	movs	r3, #1
 8009ea8:	e032      	b.n	8009f10 <dir_sdi+0xee>
 8009eaa:	697b      	ldr	r3, [r7, #20]
 8009eac:	2b01      	cmp	r3, #1
 8009eae:	d904      	bls.n	8009eba <dir_sdi+0x98>
 8009eb0:	693b      	ldr	r3, [r7, #16]
 8009eb2:	699b      	ldr	r3, [r3, #24]
 8009eb4:	697a      	ldr	r2, [r7, #20]
 8009eb6:	429a      	cmp	r2, r3
 8009eb8:	d301      	bcc.n	8009ebe <dir_sdi+0x9c>
 8009eba:	2302      	movs	r3, #2
 8009ebc:	e028      	b.n	8009f10 <dir_sdi+0xee>
 8009ebe:	683a      	ldr	r2, [r7, #0]
 8009ec0:	68fb      	ldr	r3, [r7, #12]
 8009ec2:	1ad3      	subs	r3, r2, r3
 8009ec4:	603b      	str	r3, [r7, #0]
 8009ec6:	683a      	ldr	r2, [r7, #0]
 8009ec8:	68fb      	ldr	r3, [r7, #12]
 8009eca:	429a      	cmp	r2, r3
 8009ecc:	d2e1      	bcs.n	8009e92 <dir_sdi+0x70>
 8009ece:	6979      	ldr	r1, [r7, #20]
 8009ed0:	6938      	ldr	r0, [r7, #16]
 8009ed2:	f7ff fcc5 	bl	8009860 <clust2sect>
 8009ed6:	4602      	mov	r2, r0
 8009ed8:	687b      	ldr	r3, [r7, #4]
 8009eda:	61da      	str	r2, [r3, #28]
 8009edc:	687b      	ldr	r3, [r7, #4]
 8009ede:	697a      	ldr	r2, [r7, #20]
 8009ee0:	619a      	str	r2, [r3, #24]
 8009ee2:	687b      	ldr	r3, [r7, #4]
 8009ee4:	69db      	ldr	r3, [r3, #28]
 8009ee6:	2b00      	cmp	r3, #0
 8009ee8:	d101      	bne.n	8009eee <dir_sdi+0xcc>
 8009eea:	2302      	movs	r3, #2
 8009eec:	e010      	b.n	8009f10 <dir_sdi+0xee>
 8009eee:	687b      	ldr	r3, [r7, #4]
 8009ef0:	69da      	ldr	r2, [r3, #28]
 8009ef2:	683b      	ldr	r3, [r7, #0]
 8009ef4:	0a5b      	lsrs	r3, r3, #9
 8009ef6:	441a      	add	r2, r3
 8009ef8:	687b      	ldr	r3, [r7, #4]
 8009efa:	61da      	str	r2, [r3, #28]
 8009efc:	693b      	ldr	r3, [r7, #16]
 8009efe:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 8009f02:	683b      	ldr	r3, [r7, #0]
 8009f04:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009f08:	441a      	add	r2, r3
 8009f0a:	687b      	ldr	r3, [r7, #4]
 8009f0c:	621a      	str	r2, [r3, #32]
 8009f0e:	2300      	movs	r3, #0
 8009f10:	4618      	mov	r0, r3
 8009f12:	3718      	adds	r7, #24
 8009f14:	46bd      	mov	sp, r7
 8009f16:	bd80      	pop	{r7, pc}

08009f18 <dir_next>:
 8009f18:	b580      	push	{r7, lr}
 8009f1a:	b086      	sub	sp, #24
 8009f1c:	af00      	add	r7, sp, #0
 8009f1e:	6078      	str	r0, [r7, #4]
 8009f20:	6039      	str	r1, [r7, #0]
 8009f22:	687b      	ldr	r3, [r7, #4]
 8009f24:	681b      	ldr	r3, [r3, #0]
 8009f26:	60fb      	str	r3, [r7, #12]
 8009f28:	687b      	ldr	r3, [r7, #4]
 8009f2a:	695b      	ldr	r3, [r3, #20]
 8009f2c:	3320      	adds	r3, #32
 8009f2e:	60bb      	str	r3, [r7, #8]
 8009f30:	687b      	ldr	r3, [r7, #4]
 8009f32:	69db      	ldr	r3, [r3, #28]
 8009f34:	2b00      	cmp	r3, #0
 8009f36:	d003      	beq.n	8009f40 <dir_next+0x28>
 8009f38:	68bb      	ldr	r3, [r7, #8]
 8009f3a:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 8009f3e:	d301      	bcc.n	8009f44 <dir_next+0x2c>
 8009f40:	2304      	movs	r3, #4
 8009f42:	e0aa      	b.n	800a09a <dir_next+0x182>
 8009f44:	68bb      	ldr	r3, [r7, #8]
 8009f46:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8009f4a:	2b00      	cmp	r3, #0
 8009f4c:	f040 8098 	bne.w	800a080 <dir_next+0x168>
 8009f50:	687b      	ldr	r3, [r7, #4]
 8009f52:	69db      	ldr	r3, [r3, #28]
 8009f54:	1c5a      	adds	r2, r3, #1
 8009f56:	687b      	ldr	r3, [r7, #4]
 8009f58:	61da      	str	r2, [r3, #28]
 8009f5a:	687b      	ldr	r3, [r7, #4]
 8009f5c:	699b      	ldr	r3, [r3, #24]
 8009f5e:	2b00      	cmp	r3, #0
 8009f60:	d10b      	bne.n	8009f7a <dir_next+0x62>
 8009f62:	68bb      	ldr	r3, [r7, #8]
 8009f64:	095b      	lsrs	r3, r3, #5
 8009f66:	68fa      	ldr	r2, [r7, #12]
 8009f68:	8912      	ldrh	r2, [r2, #8]
 8009f6a:	4293      	cmp	r3, r2
 8009f6c:	f0c0 8088 	bcc.w	800a080 <dir_next+0x168>
 8009f70:	687b      	ldr	r3, [r7, #4]
 8009f72:	2200      	movs	r2, #0
 8009f74:	61da      	str	r2, [r3, #28]
 8009f76:	2304      	movs	r3, #4
 8009f78:	e08f      	b.n	800a09a <dir_next+0x182>
 8009f7a:	68bb      	ldr	r3, [r7, #8]
 8009f7c:	0a5b      	lsrs	r3, r3, #9
 8009f7e:	68fa      	ldr	r2, [r7, #12]
 8009f80:	8952      	ldrh	r2, [r2, #10]
 8009f82:	3a01      	subs	r2, #1
 8009f84:	4013      	ands	r3, r2
 8009f86:	2b00      	cmp	r3, #0
 8009f88:	d17a      	bne.n	800a080 <dir_next+0x168>
 8009f8a:	687a      	ldr	r2, [r7, #4]
 8009f8c:	687b      	ldr	r3, [r7, #4]
 8009f8e:	699b      	ldr	r3, [r3, #24]
 8009f90:	4619      	mov	r1, r3
 8009f92:	4610      	mov	r0, r2
 8009f94:	f7ff fc83 	bl	800989e <get_fat>
 8009f98:	6178      	str	r0, [r7, #20]
 8009f9a:	697b      	ldr	r3, [r7, #20]
 8009f9c:	2b01      	cmp	r3, #1
 8009f9e:	d801      	bhi.n	8009fa4 <dir_next+0x8c>
 8009fa0:	2302      	movs	r3, #2
 8009fa2:	e07a      	b.n	800a09a <dir_next+0x182>
 8009fa4:	697b      	ldr	r3, [r7, #20]
 8009fa6:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009faa:	d101      	bne.n	8009fb0 <dir_next+0x98>
 8009fac:	2301      	movs	r3, #1
 8009fae:	e074      	b.n	800a09a <dir_next+0x182>
 8009fb0:	68fb      	ldr	r3, [r7, #12]
 8009fb2:	699b      	ldr	r3, [r3, #24]
 8009fb4:	697a      	ldr	r2, [r7, #20]
 8009fb6:	429a      	cmp	r2, r3
 8009fb8:	d358      	bcc.n	800a06c <dir_next+0x154>
 8009fba:	683b      	ldr	r3, [r7, #0]
 8009fbc:	2b00      	cmp	r3, #0
 8009fbe:	d104      	bne.n	8009fca <dir_next+0xb2>
 8009fc0:	687b      	ldr	r3, [r7, #4]
 8009fc2:	2200      	movs	r2, #0
 8009fc4:	61da      	str	r2, [r3, #28]
 8009fc6:	2304      	movs	r3, #4
 8009fc8:	e067      	b.n	800a09a <dir_next+0x182>
 8009fca:	687a      	ldr	r2, [r7, #4]
 8009fcc:	687b      	ldr	r3, [r7, #4]
 8009fce:	699b      	ldr	r3, [r3, #24]
 8009fd0:	4619      	mov	r1, r3
 8009fd2:	4610      	mov	r0, r2
 8009fd4:	f7ff fe59 	bl	8009c8a <create_chain>
 8009fd8:	6178      	str	r0, [r7, #20]
 8009fda:	697b      	ldr	r3, [r7, #20]
 8009fdc:	2b00      	cmp	r3, #0
 8009fde:	d101      	bne.n	8009fe4 <dir_next+0xcc>
 8009fe0:	2307      	movs	r3, #7
 8009fe2:	e05a      	b.n	800a09a <dir_next+0x182>
 8009fe4:	697b      	ldr	r3, [r7, #20]
 8009fe6:	2b01      	cmp	r3, #1
 8009fe8:	d101      	bne.n	8009fee <dir_next+0xd6>
 8009fea:	2302      	movs	r3, #2
 8009fec:	e055      	b.n	800a09a <dir_next+0x182>
 8009fee:	697b      	ldr	r3, [r7, #20]
 8009ff0:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 8009ff4:	d101      	bne.n	8009ffa <dir_next+0xe2>
 8009ff6:	2301      	movs	r3, #1
 8009ff8:	e04f      	b.n	800a09a <dir_next+0x182>
 8009ffa:	68f8      	ldr	r0, [r7, #12]
 8009ffc:	f7ff fb50 	bl	80096a0 <sync_window>
 800a000:	4603      	mov	r3, r0
 800a002:	2b00      	cmp	r3, #0
 800a004:	d001      	beq.n	800a00a <dir_next+0xf2>
 800a006:	2301      	movs	r3, #1
 800a008:	e047      	b.n	800a09a <dir_next+0x182>
 800a00a:	68fb      	ldr	r3, [r7, #12]
 800a00c:	3334      	adds	r3, #52	@ 0x34
 800a00e:	f44f 7200 	mov.w	r2, #512	@ 0x200
 800a012:	2100      	movs	r1, #0
 800a014:	4618      	mov	r0, r3
 800a016:	f7ff f948 	bl	80092aa <mem_set>
 800a01a:	2300      	movs	r3, #0
 800a01c:	613b      	str	r3, [r7, #16]
 800a01e:	6979      	ldr	r1, [r7, #20]
 800a020:	68f8      	ldr	r0, [r7, #12]
 800a022:	f7ff fc1d 	bl	8009860 <clust2sect>
 800a026:	4602      	mov	r2, r0
 800a028:	68fb      	ldr	r3, [r7, #12]
 800a02a:	631a      	str	r2, [r3, #48]	@ 0x30
 800a02c:	e012      	b.n	800a054 <dir_next+0x13c>
 800a02e:	68fb      	ldr	r3, [r7, #12]
 800a030:	2201      	movs	r2, #1
 800a032:	70da      	strb	r2, [r3, #3]
 800a034:	68f8      	ldr	r0, [r7, #12]
 800a036:	f7ff fb33 	bl	80096a0 <sync_window>
 800a03a:	4603      	mov	r3, r0
 800a03c:	2b00      	cmp	r3, #0
 800a03e:	d001      	beq.n	800a044 <dir_next+0x12c>
 800a040:	2301      	movs	r3, #1
 800a042:	e02a      	b.n	800a09a <dir_next+0x182>
 800a044:	693b      	ldr	r3, [r7, #16]
 800a046:	3301      	adds	r3, #1
 800a048:	613b      	str	r3, [r7, #16]
 800a04a:	68fb      	ldr	r3, [r7, #12]
 800a04c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800a04e:	1c5a      	adds	r2, r3, #1
 800a050:	68fb      	ldr	r3, [r7, #12]
 800a052:	631a      	str	r2, [r3, #48]	@ 0x30
 800a054:	68fb      	ldr	r3, [r7, #12]
 800a056:	895b      	ldrh	r3, [r3, #10]
 800a058:	461a      	mov	r2, r3
 800a05a:	693b      	ldr	r3, [r7, #16]
 800a05c:	4293      	cmp	r3, r2
 800a05e:	d3e6      	bcc.n	800a02e <dir_next+0x116>
 800a060:	68fb      	ldr	r3, [r7, #12]
 800a062:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 800a064:	693b      	ldr	r3, [r7, #16]
 800a066:	1ad2      	subs	r2, r2, r3
 800a068:	68fb      	ldr	r3, [r7, #12]
 800a06a:	631a      	str	r2, [r3, #48]	@ 0x30
 800a06c:	687b      	ldr	r3, [r7, #4]
 800a06e:	697a      	ldr	r2, [r7, #20]
 800a070:	619a      	str	r2, [r3, #24]
 800a072:	6979      	ldr	r1, [r7, #20]
 800a074:	68f8      	ldr	r0, [r7, #12]
 800a076:	f7ff fbf3 	bl	8009860 <clust2sect>
 800a07a:	4602      	mov	r2, r0
 800a07c:	687b      	ldr	r3, [r7, #4]
 800a07e:	61da      	str	r2, [r3, #28]
 800a080:	687b      	ldr	r3, [r7, #4]
 800a082:	68ba      	ldr	r2, [r7, #8]
 800a084:	615a      	str	r2, [r3, #20]
 800a086:	68fb      	ldr	r3, [r7, #12]
 800a088:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 800a08c:	68bb      	ldr	r3, [r7, #8]
 800a08e:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800a092:	441a      	add	r2, r3
 800a094:	687b      	ldr	r3, [r7, #4]
 800a096:	621a      	str	r2, [r3, #32]
 800a098:	2300      	movs	r3, #0
 800a09a:	4618      	mov	r0, r3
 800a09c:	3718      	adds	r7, #24
 800a09e:	46bd      	mov	sp, r7
 800a0a0:	bd80      	pop	{r7, pc}

0800a0a2 <dir_alloc>:
 800a0a2:	b580      	push	{r7, lr}
 800a0a4:	b086      	sub	sp, #24
 800a0a6:	af00      	add	r7, sp, #0
 800a0a8:	6078      	str	r0, [r7, #4]
 800a0aa:	6039      	str	r1, [r7, #0]
 800a0ac:	687b      	ldr	r3, [r7, #4]
 800a0ae:	681b      	ldr	r3, [r3, #0]
 800a0b0:	60fb      	str	r3, [r7, #12]
 800a0b2:	2100      	movs	r1, #0
 800a0b4:	6878      	ldr	r0, [r7, #4]
 800a0b6:	f7ff feb4 	bl	8009e22 <dir_sdi>
 800a0ba:	4603      	mov	r3, r0
 800a0bc:	75fb      	strb	r3, [r7, #23]
 800a0be:	7dfb      	ldrb	r3, [r7, #23]
 800a0c0:	2b00      	cmp	r3, #0
 800a0c2:	d12b      	bne.n	800a11c <dir_alloc+0x7a>
 800a0c4:	2300      	movs	r3, #0
 800a0c6:	613b      	str	r3, [r7, #16]
 800a0c8:	687b      	ldr	r3, [r7, #4]
 800a0ca:	69db      	ldr	r3, [r3, #28]
 800a0cc:	4619      	mov	r1, r3
 800a0ce:	68f8      	ldr	r0, [r7, #12]
 800a0d0:	f7ff fb2a 	bl	8009728 <move_window>
 800a0d4:	4603      	mov	r3, r0
 800a0d6:	75fb      	strb	r3, [r7, #23]
 800a0d8:	7dfb      	ldrb	r3, [r7, #23]
 800a0da:	2b00      	cmp	r3, #0
 800a0dc:	d11d      	bne.n	800a11a <dir_alloc+0x78>
 800a0de:	687b      	ldr	r3, [r7, #4]
 800a0e0:	6a1b      	ldr	r3, [r3, #32]
 800a0e2:	781b      	ldrb	r3, [r3, #0]
 800a0e4:	2be5      	cmp	r3, #229	@ 0xe5
 800a0e6:	d004      	beq.n	800a0f2 <dir_alloc+0x50>
 800a0e8:	687b      	ldr	r3, [r7, #4]
 800a0ea:	6a1b      	ldr	r3, [r3, #32]
 800a0ec:	781b      	ldrb	r3, [r3, #0]
 800a0ee:	2b00      	cmp	r3, #0
 800a0f0:	d107      	bne.n	800a102 <dir_alloc+0x60>
 800a0f2:	693b      	ldr	r3, [r7, #16]
 800a0f4:	3301      	adds	r3, #1
 800a0f6:	613b      	str	r3, [r7, #16]
 800a0f8:	693a      	ldr	r2, [r7, #16]
 800a0fa:	683b      	ldr	r3, [r7, #0]
 800a0fc:	429a      	cmp	r2, r3
 800a0fe:	d102      	bne.n	800a106 <dir_alloc+0x64>
 800a100:	e00c      	b.n	800a11c <dir_alloc+0x7a>
 800a102:	2300      	movs	r3, #0
 800a104:	613b      	str	r3, [r7, #16]
 800a106:	2101      	movs	r1, #1
 800a108:	6878      	ldr	r0, [r7, #4]
 800a10a:	f7ff ff05 	bl	8009f18 <dir_next>
 800a10e:	4603      	mov	r3, r0
 800a110:	75fb      	strb	r3, [r7, #23]
 800a112:	7dfb      	ldrb	r3, [r7, #23]
 800a114:	2b00      	cmp	r3, #0
 800a116:	d0d7      	beq.n	800a0c8 <dir_alloc+0x26>
 800a118:	e000      	b.n	800a11c <dir_alloc+0x7a>
 800a11a:	bf00      	nop
 800a11c:	7dfb      	ldrb	r3, [r7, #23]
 800a11e:	2b04      	cmp	r3, #4
 800a120:	d101      	bne.n	800a126 <dir_alloc+0x84>
 800a122:	2307      	movs	r3, #7
 800a124:	75fb      	strb	r3, [r7, #23]
 800a126:	7dfb      	ldrb	r3, [r7, #23]
 800a128:	4618      	mov	r0, r3
 800a12a:	3718      	adds	r7, #24
 800a12c:	46bd      	mov	sp, r7
 800a12e:	bd80      	pop	{r7, pc}

0800a130 <ld_clust>:
 800a130:	b580      	push	{r7, lr}
 800a132:	b084      	sub	sp, #16
 800a134:	af00      	add	r7, sp, #0
 800a136:	6078      	str	r0, [r7, #4]
 800a138:	6039      	str	r1, [r7, #0]
 800a13a:	683b      	ldr	r3, [r7, #0]
 800a13c:	331a      	adds	r3, #26
 800a13e:	4618      	mov	r0, r3
 800a140:	f7ff f810 	bl	8009164 <ld_word>
 800a144:	4603      	mov	r3, r0
 800a146:	60fb      	str	r3, [r7, #12]
 800a148:	687b      	ldr	r3, [r7, #4]
 800a14a:	781b      	ldrb	r3, [r3, #0]
 800a14c:	2b03      	cmp	r3, #3
 800a14e:	d109      	bne.n	800a164 <ld_clust+0x34>
 800a150:	683b      	ldr	r3, [r7, #0]
 800a152:	3314      	adds	r3, #20
 800a154:	4618      	mov	r0, r3
 800a156:	f7ff f805 	bl	8009164 <ld_word>
 800a15a:	4603      	mov	r3, r0
 800a15c:	041b      	lsls	r3, r3, #16
 800a15e:	68fa      	ldr	r2, [r7, #12]
 800a160:	4313      	orrs	r3, r2
 800a162:	60fb      	str	r3, [r7, #12]
 800a164:	68fb      	ldr	r3, [r7, #12]
 800a166:	4618      	mov	r0, r3
 800a168:	3710      	adds	r7, #16
 800a16a:	46bd      	mov	sp, r7
 800a16c:	bd80      	pop	{r7, pc}

0800a16e <st_clust>:
 800a16e:	b580      	push	{r7, lr}
 800a170:	b084      	sub	sp, #16
 800a172:	af00      	add	r7, sp, #0
 800a174:	60f8      	str	r0, [r7, #12]
 800a176:	60b9      	str	r1, [r7, #8]
 800a178:	607a      	str	r2, [r7, #4]
 800a17a:	68bb      	ldr	r3, [r7, #8]
 800a17c:	331a      	adds	r3, #26
 800a17e:	687a      	ldr	r2, [r7, #4]
 800a180:	b292      	uxth	r2, r2
 800a182:	4611      	mov	r1, r2
 800a184:	4618      	mov	r0, r3
 800a186:	f7ff f828 	bl	80091da <st_word>
 800a18a:	68fb      	ldr	r3, [r7, #12]
 800a18c:	781b      	ldrb	r3, [r3, #0]
 800a18e:	2b03      	cmp	r3, #3
 800a190:	d109      	bne.n	800a1a6 <st_clust+0x38>
 800a192:	68bb      	ldr	r3, [r7, #8]
 800a194:	f103 0214 	add.w	r2, r3, #20
 800a198:	687b      	ldr	r3, [r7, #4]
 800a19a:	0c1b      	lsrs	r3, r3, #16
 800a19c:	b29b      	uxth	r3, r3
 800a19e:	4619      	mov	r1, r3
 800a1a0:	4610      	mov	r0, r2
 800a1a2:	f7ff f81a 	bl	80091da <st_word>
 800a1a6:	bf00      	nop
 800a1a8:	3710      	adds	r7, #16
 800a1aa:	46bd      	mov	sp, r7
 800a1ac:	bd80      	pop	{r7, pc}

0800a1ae <dir_read>:
 800a1ae:	b580      	push	{r7, lr}
 800a1b0:	b086      	sub	sp, #24
 800a1b2:	af00      	add	r7, sp, #0
 800a1b4:	6078      	str	r0, [r7, #4]
 800a1b6:	6039      	str	r1, [r7, #0]
 800a1b8:	2304      	movs	r3, #4
 800a1ba:	75fb      	strb	r3, [r7, #23]
 800a1bc:	687b      	ldr	r3, [r7, #4]
 800a1be:	681b      	ldr	r3, [r3, #0]
 800a1c0:	613b      	str	r3, [r7, #16]
 800a1c2:	e03c      	b.n	800a23e <dir_read+0x90>
 800a1c4:	687b      	ldr	r3, [r7, #4]
 800a1c6:	69db      	ldr	r3, [r3, #28]
 800a1c8:	4619      	mov	r1, r3
 800a1ca:	6938      	ldr	r0, [r7, #16]
 800a1cc:	f7ff faac 	bl	8009728 <move_window>
 800a1d0:	4603      	mov	r3, r0
 800a1d2:	75fb      	strb	r3, [r7, #23]
 800a1d4:	7dfb      	ldrb	r3, [r7, #23]
 800a1d6:	2b00      	cmp	r3, #0
 800a1d8:	d136      	bne.n	800a248 <dir_read+0x9a>
 800a1da:	687b      	ldr	r3, [r7, #4]
 800a1dc:	6a1b      	ldr	r3, [r3, #32]
 800a1de:	781b      	ldrb	r3, [r3, #0]
 800a1e0:	73fb      	strb	r3, [r7, #15]
 800a1e2:	7bfb      	ldrb	r3, [r7, #15]
 800a1e4:	2b00      	cmp	r3, #0
 800a1e6:	d102      	bne.n	800a1ee <dir_read+0x40>
 800a1e8:	2304      	movs	r3, #4
 800a1ea:	75fb      	strb	r3, [r7, #23]
 800a1ec:	e031      	b.n	800a252 <dir_read+0xa4>
 800a1ee:	687b      	ldr	r3, [r7, #4]
 800a1f0:	6a1b      	ldr	r3, [r3, #32]
 800a1f2:	330b      	adds	r3, #11
 800a1f4:	781b      	ldrb	r3, [r3, #0]
 800a1f6:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 800a1fa:	73bb      	strb	r3, [r7, #14]
 800a1fc:	687b      	ldr	r3, [r7, #4]
 800a1fe:	7bba      	ldrb	r2, [r7, #14]
 800a200:	719a      	strb	r2, [r3, #6]
 800a202:	7bfb      	ldrb	r3, [r7, #15]
 800a204:	2be5      	cmp	r3, #229	@ 0xe5
 800a206:	d011      	beq.n	800a22c <dir_read+0x7e>
 800a208:	7bfb      	ldrb	r3, [r7, #15]
 800a20a:	2b2e      	cmp	r3, #46	@ 0x2e
 800a20c:	d00e      	beq.n	800a22c <dir_read+0x7e>
 800a20e:	7bbb      	ldrb	r3, [r7, #14]
 800a210:	2b0f      	cmp	r3, #15
 800a212:	d00b      	beq.n	800a22c <dir_read+0x7e>
 800a214:	7bbb      	ldrb	r3, [r7, #14]
 800a216:	f023 0320 	bic.w	r3, r3, #32
 800a21a:	2b08      	cmp	r3, #8
 800a21c:	bf0c      	ite	eq
 800a21e:	2301      	moveq	r3, #1
 800a220:	2300      	movne	r3, #0
 800a222:	b2db      	uxtb	r3, r3
 800a224:	461a      	mov	r2, r3
 800a226:	683b      	ldr	r3, [r7, #0]
 800a228:	4293      	cmp	r3, r2
 800a22a:	d00f      	beq.n	800a24c <dir_read+0x9e>
 800a22c:	2100      	movs	r1, #0
 800a22e:	6878      	ldr	r0, [r7, #4]
 800a230:	f7ff fe72 	bl	8009f18 <dir_next>
 800a234:	4603      	mov	r3, r0
 800a236:	75fb      	strb	r3, [r7, #23]
 800a238:	7dfb      	ldrb	r3, [r7, #23]
 800a23a:	2b00      	cmp	r3, #0
 800a23c:	d108      	bne.n	800a250 <dir_read+0xa2>
 800a23e:	687b      	ldr	r3, [r7, #4]
 800a240:	69db      	ldr	r3, [r3, #28]
 800a242:	2b00      	cmp	r3, #0
 800a244:	d1be      	bne.n	800a1c4 <dir_read+0x16>
 800a246:	e004      	b.n	800a252 <dir_read+0xa4>
 800a248:	bf00      	nop
 800a24a:	e002      	b.n	800a252 <dir_read+0xa4>
 800a24c:	bf00      	nop
 800a24e:	e000      	b.n	800a252 <dir_read+0xa4>
 800a250:	bf00      	nop
 800a252:	7dfb      	ldrb	r3, [r7, #23]
 800a254:	2b00      	cmp	r3, #0
 800a256:	d002      	beq.n	800a25e <dir_read+0xb0>
 800a258:	687b      	ldr	r3, [r7, #4]
 800a25a:	2200      	movs	r2, #0
 800a25c:	61da      	str	r2, [r3, #28]
 800a25e:	7dfb      	ldrb	r3, [r7, #23]
 800a260:	4618      	mov	r0, r3
 800a262:	3718      	adds	r7, #24
 800a264:	46bd      	mov	sp, r7
 800a266:	bd80      	pop	{r7, pc}

0800a268 <dir_find>:
 800a268:	b580      	push	{r7, lr}
 800a26a:	b086      	sub	sp, #24
 800a26c:	af00      	add	r7, sp, #0
 800a26e:	6078      	str	r0, [r7, #4]
 800a270:	687b      	ldr	r3, [r7, #4]
 800a272:	681b      	ldr	r3, [r3, #0]
 800a274:	613b      	str	r3, [r7, #16]
 800a276:	2100      	movs	r1, #0
 800a278:	6878      	ldr	r0, [r7, #4]
 800a27a:	f7ff fdd2 	bl	8009e22 <dir_sdi>
 800a27e:	4603      	mov	r3, r0
 800a280:	75fb      	strb	r3, [r7, #23]
 800a282:	7dfb      	ldrb	r3, [r7, #23]
 800a284:	2b00      	cmp	r3, #0
 800a286:	d001      	beq.n	800a28c <dir_find+0x24>
 800a288:	7dfb      	ldrb	r3, [r7, #23]
 800a28a:	e03e      	b.n	800a30a <dir_find+0xa2>
 800a28c:	687b      	ldr	r3, [r7, #4]
 800a28e:	69db      	ldr	r3, [r3, #28]
 800a290:	4619      	mov	r1, r3
 800a292:	6938      	ldr	r0, [r7, #16]
 800a294:	f7ff fa48 	bl	8009728 <move_window>
 800a298:	4603      	mov	r3, r0
 800a29a:	75fb      	strb	r3, [r7, #23]
 800a29c:	7dfb      	ldrb	r3, [r7, #23]
 800a29e:	2b00      	cmp	r3, #0
 800a2a0:	d12f      	bne.n	800a302 <dir_find+0x9a>
 800a2a2:	687b      	ldr	r3, [r7, #4]
 800a2a4:	6a1b      	ldr	r3, [r3, #32]
 800a2a6:	781b      	ldrb	r3, [r3, #0]
 800a2a8:	73fb      	strb	r3, [r7, #15]
 800a2aa:	7bfb      	ldrb	r3, [r7, #15]
 800a2ac:	2b00      	cmp	r3, #0
 800a2ae:	d102      	bne.n	800a2b6 <dir_find+0x4e>
 800a2b0:	2304      	movs	r3, #4
 800a2b2:	75fb      	strb	r3, [r7, #23]
 800a2b4:	e028      	b.n	800a308 <dir_find+0xa0>
 800a2b6:	687b      	ldr	r3, [r7, #4]
 800a2b8:	6a1b      	ldr	r3, [r3, #32]
 800a2ba:	330b      	adds	r3, #11
 800a2bc:	781b      	ldrb	r3, [r3, #0]
 800a2be:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 800a2c2:	b2da      	uxtb	r2, r3
 800a2c4:	687b      	ldr	r3, [r7, #4]
 800a2c6:	719a      	strb	r2, [r3, #6]
 800a2c8:	687b      	ldr	r3, [r7, #4]
 800a2ca:	6a1b      	ldr	r3, [r3, #32]
 800a2cc:	330b      	adds	r3, #11
 800a2ce:	781b      	ldrb	r3, [r3, #0]
 800a2d0:	f003 0308 	and.w	r3, r3, #8
 800a2d4:	2b00      	cmp	r3, #0
 800a2d6:	d10a      	bne.n	800a2ee <dir_find+0x86>
 800a2d8:	687b      	ldr	r3, [r7, #4]
 800a2da:	6a18      	ldr	r0, [r3, #32]
 800a2dc:	687b      	ldr	r3, [r7, #4]
 800a2de:	3324      	adds	r3, #36	@ 0x24
 800a2e0:	220b      	movs	r2, #11
 800a2e2:	4619      	mov	r1, r3
 800a2e4:	f7fe fffc 	bl	80092e0 <mem_cmp>
 800a2e8:	4603      	mov	r3, r0
 800a2ea:	2b00      	cmp	r3, #0
 800a2ec:	d00b      	beq.n	800a306 <dir_find+0x9e>
 800a2ee:	2100      	movs	r1, #0
 800a2f0:	6878      	ldr	r0, [r7, #4]
 800a2f2:	f7ff fe11 	bl	8009f18 <dir_next>
 800a2f6:	4603      	mov	r3, r0
 800a2f8:	75fb      	strb	r3, [r7, #23]
 800a2fa:	7dfb      	ldrb	r3, [r7, #23]
 800a2fc:	2b00      	cmp	r3, #0
 800a2fe:	d0c5      	beq.n	800a28c <dir_find+0x24>
 800a300:	e002      	b.n	800a308 <dir_find+0xa0>
 800a302:	bf00      	nop
 800a304:	e000      	b.n	800a308 <dir_find+0xa0>
 800a306:	bf00      	nop
 800a308:	7dfb      	ldrb	r3, [r7, #23]
 800a30a:	4618      	mov	r0, r3
 800a30c:	3718      	adds	r7, #24
 800a30e:	46bd      	mov	sp, r7
 800a310:	bd80      	pop	{r7, pc}

0800a312 <dir_register>:
 800a312:	b580      	push	{r7, lr}
 800a314:	b084      	sub	sp, #16
 800a316:	af00      	add	r7, sp, #0
 800a318:	6078      	str	r0, [r7, #4]
 800a31a:	687b      	ldr	r3, [r7, #4]
 800a31c:	681b      	ldr	r3, [r3, #0]
 800a31e:	60bb      	str	r3, [r7, #8]
 800a320:	2101      	movs	r1, #1
 800a322:	6878      	ldr	r0, [r7, #4]
 800a324:	f7ff febd 	bl	800a0a2 <dir_alloc>
 800a328:	4603      	mov	r3, r0
 800a32a:	73fb      	strb	r3, [r7, #15]
 800a32c:	7bfb      	ldrb	r3, [r7, #15]
 800a32e:	2b00      	cmp	r3, #0
 800a330:	d11c      	bne.n	800a36c <dir_register+0x5a>
 800a332:	687b      	ldr	r3, [r7, #4]
 800a334:	69db      	ldr	r3, [r3, #28]
 800a336:	4619      	mov	r1, r3
 800a338:	68b8      	ldr	r0, [r7, #8]
 800a33a:	f7ff f9f5 	bl	8009728 <move_window>
 800a33e:	4603      	mov	r3, r0
 800a340:	73fb      	strb	r3, [r7, #15]
 800a342:	7bfb      	ldrb	r3, [r7, #15]
 800a344:	2b00      	cmp	r3, #0
 800a346:	d111      	bne.n	800a36c <dir_register+0x5a>
 800a348:	687b      	ldr	r3, [r7, #4]
 800a34a:	6a1b      	ldr	r3, [r3, #32]
 800a34c:	2220      	movs	r2, #32
 800a34e:	2100      	movs	r1, #0
 800a350:	4618      	mov	r0, r3
 800a352:	f7fe ffaa 	bl	80092aa <mem_set>
 800a356:	687b      	ldr	r3, [r7, #4]
 800a358:	6a18      	ldr	r0, [r3, #32]
 800a35a:	687b      	ldr	r3, [r7, #4]
 800a35c:	3324      	adds	r3, #36	@ 0x24
 800a35e:	220b      	movs	r2, #11
 800a360:	4619      	mov	r1, r3
 800a362:	f7fe ff81 	bl	8009268 <mem_cpy>
 800a366:	68bb      	ldr	r3, [r7, #8]
 800a368:	2201      	movs	r2, #1
 800a36a:	70da      	strb	r2, [r3, #3]
 800a36c:	7bfb      	ldrb	r3, [r7, #15]
 800a36e:	4618      	mov	r0, r3
 800a370:	3710      	adds	r7, #16
 800a372:	46bd      	mov	sp, r7
 800a374:	bd80      	pop	{r7, pc}

0800a376 <get_fileinfo>:
 800a376:	b580      	push	{r7, lr}
 800a378:	b086      	sub	sp, #24
 800a37a:	af00      	add	r7, sp, #0
 800a37c:	6078      	str	r0, [r7, #4]
 800a37e:	6039      	str	r1, [r7, #0]
 800a380:	683b      	ldr	r3, [r7, #0]
 800a382:	2200      	movs	r2, #0
 800a384:	725a      	strb	r2, [r3, #9]
 800a386:	687b      	ldr	r3, [r7, #4]
 800a388:	69db      	ldr	r3, [r3, #28]
 800a38a:	2b00      	cmp	r3, #0
 800a38c:	d04f      	beq.n	800a42e <get_fileinfo+0xb8>
 800a38e:	2300      	movs	r3, #0
 800a390:	613b      	str	r3, [r7, #16]
 800a392:	693b      	ldr	r3, [r7, #16]
 800a394:	617b      	str	r3, [r7, #20]
 800a396:	e022      	b.n	800a3de <get_fileinfo+0x68>
 800a398:	687b      	ldr	r3, [r7, #4]
 800a39a:	6a1a      	ldr	r2, [r3, #32]
 800a39c:	697b      	ldr	r3, [r7, #20]
 800a39e:	1c59      	adds	r1, r3, #1
 800a3a0:	6179      	str	r1, [r7, #20]
 800a3a2:	4413      	add	r3, r2
 800a3a4:	781b      	ldrb	r3, [r3, #0]
 800a3a6:	73fb      	strb	r3, [r7, #15]
 800a3a8:	7bfb      	ldrb	r3, [r7, #15]
 800a3aa:	2b20      	cmp	r3, #32
 800a3ac:	d016      	beq.n	800a3dc <get_fileinfo+0x66>
 800a3ae:	7bfb      	ldrb	r3, [r7, #15]
 800a3b0:	2b05      	cmp	r3, #5
 800a3b2:	d101      	bne.n	800a3b8 <get_fileinfo+0x42>
 800a3b4:	23e5      	movs	r3, #229	@ 0xe5
 800a3b6:	73fb      	strb	r3, [r7, #15]
 800a3b8:	697b      	ldr	r3, [r7, #20]
 800a3ba:	2b09      	cmp	r3, #9
 800a3bc:	d106      	bne.n	800a3cc <get_fileinfo+0x56>
 800a3be:	693b      	ldr	r3, [r7, #16]
 800a3c0:	1c5a      	adds	r2, r3, #1
 800a3c2:	613a      	str	r2, [r7, #16]
 800a3c4:	683a      	ldr	r2, [r7, #0]
 800a3c6:	4413      	add	r3, r2
 800a3c8:	222e      	movs	r2, #46	@ 0x2e
 800a3ca:	725a      	strb	r2, [r3, #9]
 800a3cc:	693b      	ldr	r3, [r7, #16]
 800a3ce:	1c5a      	adds	r2, r3, #1
 800a3d0:	613a      	str	r2, [r7, #16]
 800a3d2:	683a      	ldr	r2, [r7, #0]
 800a3d4:	4413      	add	r3, r2
 800a3d6:	7bfa      	ldrb	r2, [r7, #15]
 800a3d8:	725a      	strb	r2, [r3, #9]
 800a3da:	e000      	b.n	800a3de <get_fileinfo+0x68>
 800a3dc:	bf00      	nop
 800a3de:	697b      	ldr	r3, [r7, #20]
 800a3e0:	2b0a      	cmp	r3, #10
 800a3e2:	d9d9      	bls.n	800a398 <get_fileinfo+0x22>
 800a3e4:	683a      	ldr	r2, [r7, #0]
 800a3e6:	693b      	ldr	r3, [r7, #16]
 800a3e8:	4413      	add	r3, r2
 800a3ea:	3309      	adds	r3, #9
 800a3ec:	2200      	movs	r2, #0
 800a3ee:	701a      	strb	r2, [r3, #0]
 800a3f0:	687b      	ldr	r3, [r7, #4]
 800a3f2:	6a1b      	ldr	r3, [r3, #32]
 800a3f4:	7ada      	ldrb	r2, [r3, #11]
 800a3f6:	683b      	ldr	r3, [r7, #0]
 800a3f8:	721a      	strb	r2, [r3, #8]
 800a3fa:	687b      	ldr	r3, [r7, #4]
 800a3fc:	6a1b      	ldr	r3, [r3, #32]
 800a3fe:	331c      	adds	r3, #28
 800a400:	4618      	mov	r0, r3
 800a402:	f7fe fec7 	bl	8009194 <ld_dword>
 800a406:	4602      	mov	r2, r0
 800a408:	683b      	ldr	r3, [r7, #0]
 800a40a:	601a      	str	r2, [r3, #0]
 800a40c:	687b      	ldr	r3, [r7, #4]
 800a40e:	6a1b      	ldr	r3, [r3, #32]
 800a410:	3316      	adds	r3, #22
 800a412:	4618      	mov	r0, r3
 800a414:	f7fe febe 	bl	8009194 <ld_dword>
 800a418:	60b8      	str	r0, [r7, #8]
 800a41a:	68bb      	ldr	r3, [r7, #8]
 800a41c:	b29a      	uxth	r2, r3
 800a41e:	683b      	ldr	r3, [r7, #0]
 800a420:	80da      	strh	r2, [r3, #6]
 800a422:	68bb      	ldr	r3, [r7, #8]
 800a424:	0c1b      	lsrs	r3, r3, #16
 800a426:	b29a      	uxth	r2, r3
 800a428:	683b      	ldr	r3, [r7, #0]
 800a42a:	809a      	strh	r2, [r3, #4]
 800a42c:	e000      	b.n	800a430 <get_fileinfo+0xba>
 800a42e:	bf00      	nop
 800a430:	3718      	adds	r7, #24
 800a432:	46bd      	mov	sp, r7
 800a434:	bd80      	pop	{r7, pc}
	...

0800a438 <create_name>:
 800a438:	b580      	push	{r7, lr}
 800a43a:	b088      	sub	sp, #32
 800a43c:	af00      	add	r7, sp, #0
 800a43e:	6078      	str	r0, [r7, #4]
 800a440:	6039      	str	r1, [r7, #0]
 800a442:	683b      	ldr	r3, [r7, #0]
 800a444:	681b      	ldr	r3, [r3, #0]
 800a446:	60fb      	str	r3, [r7, #12]
 800a448:	687b      	ldr	r3, [r7, #4]
 800a44a:	3324      	adds	r3, #36	@ 0x24
 800a44c:	60bb      	str	r3, [r7, #8]
 800a44e:	220b      	movs	r2, #11
 800a450:	2120      	movs	r1, #32
 800a452:	68b8      	ldr	r0, [r7, #8]
 800a454:	f7fe ff29 	bl	80092aa <mem_set>
 800a458:	2300      	movs	r3, #0
 800a45a:	613b      	str	r3, [r7, #16]
 800a45c:	693b      	ldr	r3, [r7, #16]
 800a45e:	61fb      	str	r3, [r7, #28]
 800a460:	2308      	movs	r3, #8
 800a462:	617b      	str	r3, [r7, #20]
 800a464:	69fb      	ldr	r3, [r7, #28]
 800a466:	1c5a      	adds	r2, r3, #1
 800a468:	61fa      	str	r2, [r7, #28]
 800a46a:	68fa      	ldr	r2, [r7, #12]
 800a46c:	4413      	add	r3, r2
 800a46e:	781b      	ldrb	r3, [r3, #0]
 800a470:	76fb      	strb	r3, [r7, #27]
 800a472:	7efb      	ldrb	r3, [r7, #27]
 800a474:	2b20      	cmp	r3, #32
 800a476:	d94e      	bls.n	800a516 <create_name+0xde>
 800a478:	7efb      	ldrb	r3, [r7, #27]
 800a47a:	2b2f      	cmp	r3, #47	@ 0x2f
 800a47c:	d006      	beq.n	800a48c <create_name+0x54>
 800a47e:	7efb      	ldrb	r3, [r7, #27]
 800a480:	2b5c      	cmp	r3, #92	@ 0x5c
 800a482:	d110      	bne.n	800a4a6 <create_name+0x6e>
 800a484:	e002      	b.n	800a48c <create_name+0x54>
 800a486:	69fb      	ldr	r3, [r7, #28]
 800a488:	3301      	adds	r3, #1
 800a48a:	61fb      	str	r3, [r7, #28]
 800a48c:	68fa      	ldr	r2, [r7, #12]
 800a48e:	69fb      	ldr	r3, [r7, #28]
 800a490:	4413      	add	r3, r2
 800a492:	781b      	ldrb	r3, [r3, #0]
 800a494:	2b2f      	cmp	r3, #47	@ 0x2f
 800a496:	d0f6      	beq.n	800a486 <create_name+0x4e>
 800a498:	68fa      	ldr	r2, [r7, #12]
 800a49a:	69fb      	ldr	r3, [r7, #28]
 800a49c:	4413      	add	r3, r2
 800a49e:	781b      	ldrb	r3, [r3, #0]
 800a4a0:	2b5c      	cmp	r3, #92	@ 0x5c
 800a4a2:	d0f0      	beq.n	800a486 <create_name+0x4e>
 800a4a4:	e038      	b.n	800a518 <create_name+0xe0>
 800a4a6:	7efb      	ldrb	r3, [r7, #27]
 800a4a8:	2b2e      	cmp	r3, #46	@ 0x2e
 800a4aa:	d003      	beq.n	800a4b4 <create_name+0x7c>
 800a4ac:	693a      	ldr	r2, [r7, #16]
 800a4ae:	697b      	ldr	r3, [r7, #20]
 800a4b0:	429a      	cmp	r2, r3
 800a4b2:	d30c      	bcc.n	800a4ce <create_name+0x96>
 800a4b4:	697b      	ldr	r3, [r7, #20]
 800a4b6:	2b0b      	cmp	r3, #11
 800a4b8:	d002      	beq.n	800a4c0 <create_name+0x88>
 800a4ba:	7efb      	ldrb	r3, [r7, #27]
 800a4bc:	2b2e      	cmp	r3, #46	@ 0x2e
 800a4be:	d001      	beq.n	800a4c4 <create_name+0x8c>
 800a4c0:	2306      	movs	r3, #6
 800a4c2:	e044      	b.n	800a54e <create_name+0x116>
 800a4c4:	2308      	movs	r3, #8
 800a4c6:	613b      	str	r3, [r7, #16]
 800a4c8:	230b      	movs	r3, #11
 800a4ca:	617b      	str	r3, [r7, #20]
 800a4cc:	e022      	b.n	800a514 <create_name+0xdc>
 800a4ce:	f997 301b 	ldrsb.w	r3, [r7, #27]
 800a4d2:	2b00      	cmp	r3, #0
 800a4d4:	da04      	bge.n	800a4e0 <create_name+0xa8>
 800a4d6:	7efb      	ldrb	r3, [r7, #27]
 800a4d8:	3b80      	subs	r3, #128	@ 0x80
 800a4da:	4a1f      	ldr	r2, [pc, #124]	@ (800a558 <create_name+0x120>)
 800a4dc:	5cd3      	ldrb	r3, [r2, r3]
 800a4de:	76fb      	strb	r3, [r7, #27]
 800a4e0:	7efb      	ldrb	r3, [r7, #27]
 800a4e2:	4619      	mov	r1, r3
 800a4e4:	481d      	ldr	r0, [pc, #116]	@ (800a55c <create_name+0x124>)
 800a4e6:	f7fe ff22 	bl	800932e <chk_chr>
 800a4ea:	4603      	mov	r3, r0
 800a4ec:	2b00      	cmp	r3, #0
 800a4ee:	d001      	beq.n	800a4f4 <create_name+0xbc>
 800a4f0:	2306      	movs	r3, #6
 800a4f2:	e02c      	b.n	800a54e <create_name+0x116>
 800a4f4:	7efb      	ldrb	r3, [r7, #27]
 800a4f6:	2b60      	cmp	r3, #96	@ 0x60
 800a4f8:	d905      	bls.n	800a506 <create_name+0xce>
 800a4fa:	7efb      	ldrb	r3, [r7, #27]
 800a4fc:	2b7a      	cmp	r3, #122	@ 0x7a
 800a4fe:	d802      	bhi.n	800a506 <create_name+0xce>
 800a500:	7efb      	ldrb	r3, [r7, #27]
 800a502:	3b20      	subs	r3, #32
 800a504:	76fb      	strb	r3, [r7, #27]
 800a506:	693b      	ldr	r3, [r7, #16]
 800a508:	1c5a      	adds	r2, r3, #1
 800a50a:	613a      	str	r2, [r7, #16]
 800a50c:	68ba      	ldr	r2, [r7, #8]
 800a50e:	4413      	add	r3, r2
 800a510:	7efa      	ldrb	r2, [r7, #27]
 800a512:	701a      	strb	r2, [r3, #0]
 800a514:	e7a6      	b.n	800a464 <create_name+0x2c>
 800a516:	bf00      	nop
 800a518:	68fa      	ldr	r2, [r7, #12]
 800a51a:	69fb      	ldr	r3, [r7, #28]
 800a51c:	441a      	add	r2, r3
 800a51e:	683b      	ldr	r3, [r7, #0]
 800a520:	601a      	str	r2, [r3, #0]
 800a522:	693b      	ldr	r3, [r7, #16]
 800a524:	2b00      	cmp	r3, #0
 800a526:	d101      	bne.n	800a52c <create_name+0xf4>
 800a528:	2306      	movs	r3, #6
 800a52a:	e010      	b.n	800a54e <create_name+0x116>
 800a52c:	68bb      	ldr	r3, [r7, #8]
 800a52e:	781b      	ldrb	r3, [r3, #0]
 800a530:	2be5      	cmp	r3, #229	@ 0xe5
 800a532:	d102      	bne.n	800a53a <create_name+0x102>
 800a534:	68bb      	ldr	r3, [r7, #8]
 800a536:	2205      	movs	r2, #5
 800a538:	701a      	strb	r2, [r3, #0]
 800a53a:	7efb      	ldrb	r3, [r7, #27]
 800a53c:	2b20      	cmp	r3, #32
 800a53e:	d801      	bhi.n	800a544 <create_name+0x10c>
 800a540:	2204      	movs	r2, #4
 800a542:	e000      	b.n	800a546 <create_name+0x10e>
 800a544:	2200      	movs	r2, #0
 800a546:	68bb      	ldr	r3, [r7, #8]
 800a548:	330b      	adds	r3, #11
 800a54a:	701a      	strb	r2, [r3, #0]
 800a54c:	2300      	movs	r3, #0
 800a54e:	4618      	mov	r0, r3
 800a550:	3720      	adds	r7, #32
 800a552:	46bd      	mov	sp, r7
 800a554:	bd80      	pop	{r7, pc}
 800a556:	bf00      	nop
 800a558:	0800da60 	.word	0x0800da60
 800a55c:	0800d9c0 	.word	0x0800d9c0

0800a560 <follow_path>:
 800a560:	b580      	push	{r7, lr}
 800a562:	b086      	sub	sp, #24
 800a564:	af00      	add	r7, sp, #0
 800a566:	6078      	str	r0, [r7, #4]
 800a568:	6039      	str	r1, [r7, #0]
 800a56a:	687b      	ldr	r3, [r7, #4]
 800a56c:	613b      	str	r3, [r7, #16]
 800a56e:	693b      	ldr	r3, [r7, #16]
 800a570:	681b      	ldr	r3, [r3, #0]
 800a572:	60fb      	str	r3, [r7, #12]
 800a574:	e002      	b.n	800a57c <follow_path+0x1c>
 800a576:	683b      	ldr	r3, [r7, #0]
 800a578:	3301      	adds	r3, #1
 800a57a:	603b      	str	r3, [r7, #0]
 800a57c:	683b      	ldr	r3, [r7, #0]
 800a57e:	781b      	ldrb	r3, [r3, #0]
 800a580:	2b2f      	cmp	r3, #47	@ 0x2f
 800a582:	d0f8      	beq.n	800a576 <follow_path+0x16>
 800a584:	683b      	ldr	r3, [r7, #0]
 800a586:	781b      	ldrb	r3, [r3, #0]
 800a588:	2b5c      	cmp	r3, #92	@ 0x5c
 800a58a:	d0f4      	beq.n	800a576 <follow_path+0x16>
 800a58c:	693b      	ldr	r3, [r7, #16]
 800a58e:	2200      	movs	r2, #0
 800a590:	609a      	str	r2, [r3, #8]
 800a592:	683b      	ldr	r3, [r7, #0]
 800a594:	781b      	ldrb	r3, [r3, #0]
 800a596:	2b1f      	cmp	r3, #31
 800a598:	d80a      	bhi.n	800a5b0 <follow_path+0x50>
 800a59a:	687b      	ldr	r3, [r7, #4]
 800a59c:	2280      	movs	r2, #128	@ 0x80
 800a59e:	f883 202f 	strb.w	r2, [r3, #47]	@ 0x2f
 800a5a2:	2100      	movs	r1, #0
 800a5a4:	6878      	ldr	r0, [r7, #4]
 800a5a6:	f7ff fc3c 	bl	8009e22 <dir_sdi>
 800a5aa:	4603      	mov	r3, r0
 800a5ac:	75fb      	strb	r3, [r7, #23]
 800a5ae:	e043      	b.n	800a638 <follow_path+0xd8>
 800a5b0:	463b      	mov	r3, r7
 800a5b2:	4619      	mov	r1, r3
 800a5b4:	6878      	ldr	r0, [r7, #4]
 800a5b6:	f7ff ff3f 	bl	800a438 <create_name>
 800a5ba:	4603      	mov	r3, r0
 800a5bc:	75fb      	strb	r3, [r7, #23]
 800a5be:	7dfb      	ldrb	r3, [r7, #23]
 800a5c0:	2b00      	cmp	r3, #0
 800a5c2:	d134      	bne.n	800a62e <follow_path+0xce>
 800a5c4:	6878      	ldr	r0, [r7, #4]
 800a5c6:	f7ff fe4f 	bl	800a268 <dir_find>
 800a5ca:	4603      	mov	r3, r0
 800a5cc:	75fb      	strb	r3, [r7, #23]
 800a5ce:	687b      	ldr	r3, [r7, #4]
 800a5d0:	f893 302f 	ldrb.w	r3, [r3, #47]	@ 0x2f
 800a5d4:	72fb      	strb	r3, [r7, #11]
 800a5d6:	7dfb      	ldrb	r3, [r7, #23]
 800a5d8:	2b00      	cmp	r3, #0
 800a5da:	d00a      	beq.n	800a5f2 <follow_path+0x92>
 800a5dc:	7dfb      	ldrb	r3, [r7, #23]
 800a5de:	2b04      	cmp	r3, #4
 800a5e0:	d127      	bne.n	800a632 <follow_path+0xd2>
 800a5e2:	7afb      	ldrb	r3, [r7, #11]
 800a5e4:	f003 0304 	and.w	r3, r3, #4
 800a5e8:	2b00      	cmp	r3, #0
 800a5ea:	d122      	bne.n	800a632 <follow_path+0xd2>
 800a5ec:	2305      	movs	r3, #5
 800a5ee:	75fb      	strb	r3, [r7, #23]
 800a5f0:	e01f      	b.n	800a632 <follow_path+0xd2>
 800a5f2:	7afb      	ldrb	r3, [r7, #11]
 800a5f4:	f003 0304 	and.w	r3, r3, #4
 800a5f8:	2b00      	cmp	r3, #0
 800a5fa:	d11c      	bne.n	800a636 <follow_path+0xd6>
 800a5fc:	693b      	ldr	r3, [r7, #16]
 800a5fe:	799b      	ldrb	r3, [r3, #6]
 800a600:	f003 0310 	and.w	r3, r3, #16
 800a604:	2b00      	cmp	r3, #0
 800a606:	d102      	bne.n	800a60e <follow_path+0xae>
 800a608:	2305      	movs	r3, #5
 800a60a:	75fb      	strb	r3, [r7, #23]
 800a60c:	e014      	b.n	800a638 <follow_path+0xd8>
 800a60e:	68fb      	ldr	r3, [r7, #12]
 800a610:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 800a614:	687b      	ldr	r3, [r7, #4]
 800a616:	695b      	ldr	r3, [r3, #20]
 800a618:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800a61c:	4413      	add	r3, r2
 800a61e:	4619      	mov	r1, r3
 800a620:	68f8      	ldr	r0, [r7, #12]
 800a622:	f7ff fd85 	bl	800a130 <ld_clust>
 800a626:	4602      	mov	r2, r0
 800a628:	693b      	ldr	r3, [r7, #16]
 800a62a:	609a      	str	r2, [r3, #8]
 800a62c:	e7c0      	b.n	800a5b0 <follow_path+0x50>
 800a62e:	bf00      	nop
 800a630:	e002      	b.n	800a638 <follow_path+0xd8>
 800a632:	bf00      	nop
 800a634:	e000      	b.n	800a638 <follow_path+0xd8>
 800a636:	bf00      	nop
 800a638:	7dfb      	ldrb	r3, [r7, #23]
 800a63a:	4618      	mov	r0, r3
 800a63c:	3718      	adds	r7, #24
 800a63e:	46bd      	mov	sp, r7
 800a640:	bd80      	pop	{r7, pc}

0800a642 <get_ldnumber>:
 800a642:	b480      	push	{r7}
 800a644:	b087      	sub	sp, #28
 800a646:	af00      	add	r7, sp, #0
 800a648:	6078      	str	r0, [r7, #4]
 800a64a:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800a64e:	613b      	str	r3, [r7, #16]
 800a650:	687b      	ldr	r3, [r7, #4]
 800a652:	681b      	ldr	r3, [r3, #0]
 800a654:	2b00      	cmp	r3, #0
 800a656:	d031      	beq.n	800a6bc <get_ldnumber+0x7a>
 800a658:	687b      	ldr	r3, [r7, #4]
 800a65a:	681b      	ldr	r3, [r3, #0]
 800a65c:	617b      	str	r3, [r7, #20]
 800a65e:	e002      	b.n	800a666 <get_ldnumber+0x24>
 800a660:	697b      	ldr	r3, [r7, #20]
 800a662:	3301      	adds	r3, #1
 800a664:	617b      	str	r3, [r7, #20]
 800a666:	697b      	ldr	r3, [r7, #20]
 800a668:	781b      	ldrb	r3, [r3, #0]
 800a66a:	2b20      	cmp	r3, #32
 800a66c:	d903      	bls.n	800a676 <get_ldnumber+0x34>
 800a66e:	697b      	ldr	r3, [r7, #20]
 800a670:	781b      	ldrb	r3, [r3, #0]
 800a672:	2b3a      	cmp	r3, #58	@ 0x3a
 800a674:	d1f4      	bne.n	800a660 <get_ldnumber+0x1e>
 800a676:	697b      	ldr	r3, [r7, #20]
 800a678:	781b      	ldrb	r3, [r3, #0]
 800a67a:	2b3a      	cmp	r3, #58	@ 0x3a
 800a67c:	d11c      	bne.n	800a6b8 <get_ldnumber+0x76>
 800a67e:	687b      	ldr	r3, [r7, #4]
 800a680:	681b      	ldr	r3, [r3, #0]
 800a682:	60fb      	str	r3, [r7, #12]
 800a684:	68fb      	ldr	r3, [r7, #12]
 800a686:	1c5a      	adds	r2, r3, #1
 800a688:	60fa      	str	r2, [r7, #12]
 800a68a:	781b      	ldrb	r3, [r3, #0]
 800a68c:	3b30      	subs	r3, #48	@ 0x30
 800a68e:	60bb      	str	r3, [r7, #8]
 800a690:	68bb      	ldr	r3, [r7, #8]
 800a692:	2b09      	cmp	r3, #9
 800a694:	d80e      	bhi.n	800a6b4 <get_ldnumber+0x72>
 800a696:	68fa      	ldr	r2, [r7, #12]
 800a698:	697b      	ldr	r3, [r7, #20]
 800a69a:	429a      	cmp	r2, r3
 800a69c:	d10a      	bne.n	800a6b4 <get_ldnumber+0x72>
 800a69e:	68bb      	ldr	r3, [r7, #8]
 800a6a0:	2b00      	cmp	r3, #0
 800a6a2:	d107      	bne.n	800a6b4 <get_ldnumber+0x72>
 800a6a4:	68bb      	ldr	r3, [r7, #8]
 800a6a6:	613b      	str	r3, [r7, #16]
 800a6a8:	697b      	ldr	r3, [r7, #20]
 800a6aa:	3301      	adds	r3, #1
 800a6ac:	617b      	str	r3, [r7, #20]
 800a6ae:	687b      	ldr	r3, [r7, #4]
 800a6b0:	697a      	ldr	r2, [r7, #20]
 800a6b2:	601a      	str	r2, [r3, #0]
 800a6b4:	693b      	ldr	r3, [r7, #16]
 800a6b6:	e002      	b.n	800a6be <get_ldnumber+0x7c>
 800a6b8:	2300      	movs	r3, #0
 800a6ba:	613b      	str	r3, [r7, #16]
 800a6bc:	693b      	ldr	r3, [r7, #16]
 800a6be:	4618      	mov	r0, r3
 800a6c0:	371c      	adds	r7, #28
 800a6c2:	46bd      	mov	sp, r7
 800a6c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 800a6c8:	4770      	bx	lr
	...

0800a6cc <check_fs>:
 800a6cc:	b580      	push	{r7, lr}
 800a6ce:	b082      	sub	sp, #8
 800a6d0:	af00      	add	r7, sp, #0
 800a6d2:	6078      	str	r0, [r7, #4]
 800a6d4:	6039      	str	r1, [r7, #0]
 800a6d6:	687b      	ldr	r3, [r7, #4]
 800a6d8:	2200      	movs	r2, #0
 800a6da:	70da      	strb	r2, [r3, #3]
 800a6dc:	687b      	ldr	r3, [r7, #4]
 800a6de:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 800a6e2:	631a      	str	r2, [r3, #48]	@ 0x30
 800a6e4:	6839      	ldr	r1, [r7, #0]
 800a6e6:	6878      	ldr	r0, [r7, #4]
 800a6e8:	f7ff f81e 	bl	8009728 <move_window>
 800a6ec:	4603      	mov	r3, r0
 800a6ee:	2b00      	cmp	r3, #0
 800a6f0:	d001      	beq.n	800a6f6 <check_fs+0x2a>
 800a6f2:	2304      	movs	r3, #4
 800a6f4:	e038      	b.n	800a768 <check_fs+0x9c>
 800a6f6:	687b      	ldr	r3, [r7, #4]
 800a6f8:	3334      	adds	r3, #52	@ 0x34
 800a6fa:	f503 73ff 	add.w	r3, r3, #510	@ 0x1fe
 800a6fe:	4618      	mov	r0, r3
 800a700:	f7fe fd30 	bl	8009164 <ld_word>
 800a704:	4603      	mov	r3, r0
 800a706:	461a      	mov	r2, r3
 800a708:	f64a 2355 	movw	r3, #43605	@ 0xaa55
 800a70c:	429a      	cmp	r2, r3
 800a70e:	d001      	beq.n	800a714 <check_fs+0x48>
 800a710:	2303      	movs	r3, #3
 800a712:	e029      	b.n	800a768 <check_fs+0x9c>
 800a714:	687b      	ldr	r3, [r7, #4]
 800a716:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800a71a:	2be9      	cmp	r3, #233	@ 0xe9
 800a71c:	d009      	beq.n	800a732 <check_fs+0x66>
 800a71e:	687b      	ldr	r3, [r7, #4]
 800a720:	f893 3034 	ldrb.w	r3, [r3, #52]	@ 0x34
 800a724:	2beb      	cmp	r3, #235	@ 0xeb
 800a726:	d11e      	bne.n	800a766 <check_fs+0x9a>
 800a728:	687b      	ldr	r3, [r7, #4]
 800a72a:	f893 3036 	ldrb.w	r3, [r3, #54]	@ 0x36
 800a72e:	2b90      	cmp	r3, #144	@ 0x90
 800a730:	d119      	bne.n	800a766 <check_fs+0x9a>
 800a732:	687b      	ldr	r3, [r7, #4]
 800a734:	3334      	adds	r3, #52	@ 0x34
 800a736:	3336      	adds	r3, #54	@ 0x36
 800a738:	4618      	mov	r0, r3
 800a73a:	f7fe fd2b 	bl	8009194 <ld_dword>
 800a73e:	4603      	mov	r3, r0
 800a740:	f023 437f 	bic.w	r3, r3, #4278190080	@ 0xff000000
 800a744:	4a0a      	ldr	r2, [pc, #40]	@ (800a770 <check_fs+0xa4>)
 800a746:	4293      	cmp	r3, r2
 800a748:	d101      	bne.n	800a74e <check_fs+0x82>
 800a74a:	2300      	movs	r3, #0
 800a74c:	e00c      	b.n	800a768 <check_fs+0x9c>
 800a74e:	687b      	ldr	r3, [r7, #4]
 800a750:	3334      	adds	r3, #52	@ 0x34
 800a752:	3352      	adds	r3, #82	@ 0x52
 800a754:	4618      	mov	r0, r3
 800a756:	f7fe fd1d 	bl	8009194 <ld_dword>
 800a75a:	4603      	mov	r3, r0
 800a75c:	4a05      	ldr	r2, [pc, #20]	@ (800a774 <check_fs+0xa8>)
 800a75e:	4293      	cmp	r3, r2
 800a760:	d101      	bne.n	800a766 <check_fs+0x9a>
 800a762:	2300      	movs	r3, #0
 800a764:	e000      	b.n	800a768 <check_fs+0x9c>
 800a766:	2302      	movs	r3, #2
 800a768:	4618      	mov	r0, r3
 800a76a:	3708      	adds	r7, #8
 800a76c:	46bd      	mov	sp, r7
 800a76e:	bd80      	pop	{r7, pc}
 800a770:	00544146 	.word	0x00544146
 800a774:	33544146 	.word	0x33544146

0800a778 <find_volume>:
 800a778:	b580      	push	{r7, lr}
 800a77a:	b096      	sub	sp, #88	@ 0x58
 800a77c:	af00      	add	r7, sp, #0
 800a77e:	60f8      	str	r0, [r7, #12]
 800a780:	60b9      	str	r1, [r7, #8]
 800a782:	4613      	mov	r3, r2
 800a784:	71fb      	strb	r3, [r7, #7]
 800a786:	68bb      	ldr	r3, [r7, #8]
 800a788:	2200      	movs	r2, #0
 800a78a:	601a      	str	r2, [r3, #0]
 800a78c:	68f8      	ldr	r0, [r7, #12]
 800a78e:	f7ff ff58 	bl	800a642 <get_ldnumber>
 800a792:	63f8      	str	r0, [r7, #60]	@ 0x3c
 800a794:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800a796:	2b00      	cmp	r3, #0
 800a798:	da01      	bge.n	800a79e <find_volume+0x26>
 800a79a:	230b      	movs	r3, #11
 800a79c:	e235      	b.n	800ac0a <find_volume+0x492>
 800a79e:	4aa5      	ldr	r2, [pc, #660]	@ (800aa34 <find_volume+0x2bc>)
 800a7a0:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800a7a2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800a7a6:	63bb      	str	r3, [r7, #56]	@ 0x38
 800a7a8:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a7aa:	2b00      	cmp	r3, #0
 800a7ac:	d101      	bne.n	800a7b2 <find_volume+0x3a>
 800a7ae:	230c      	movs	r3, #12
 800a7b0:	e22b      	b.n	800ac0a <find_volume+0x492>
 800a7b2:	6bb8      	ldr	r0, [r7, #56]	@ 0x38
 800a7b4:	f7fe fdd6 	bl	8009364 <lock_fs>
 800a7b8:	4603      	mov	r3, r0
 800a7ba:	2b00      	cmp	r3, #0
 800a7bc:	d101      	bne.n	800a7c2 <find_volume+0x4a>
 800a7be:	230f      	movs	r3, #15
 800a7c0:	e223      	b.n	800ac0a <find_volume+0x492>
 800a7c2:	68bb      	ldr	r3, [r7, #8]
 800a7c4:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800a7c6:	601a      	str	r2, [r3, #0]
 800a7c8:	79fb      	ldrb	r3, [r7, #7]
 800a7ca:	f023 0301 	bic.w	r3, r3, #1
 800a7ce:	71fb      	strb	r3, [r7, #7]
 800a7d0:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a7d2:	781b      	ldrb	r3, [r3, #0]
 800a7d4:	2b00      	cmp	r3, #0
 800a7d6:	d01a      	beq.n	800a80e <find_volume+0x96>
 800a7d8:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a7da:	785b      	ldrb	r3, [r3, #1]
 800a7dc:	4618      	mov	r0, r3
 800a7de:	f7fe fc23 	bl	8009028 <disk_status>
 800a7e2:	4603      	mov	r3, r0
 800a7e4:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 800a7e8:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800a7ec:	f003 0301 	and.w	r3, r3, #1
 800a7f0:	2b00      	cmp	r3, #0
 800a7f2:	d10c      	bne.n	800a80e <find_volume+0x96>
 800a7f4:	79fb      	ldrb	r3, [r7, #7]
 800a7f6:	2b00      	cmp	r3, #0
 800a7f8:	d007      	beq.n	800a80a <find_volume+0x92>
 800a7fa:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800a7fe:	f003 0304 	and.w	r3, r3, #4
 800a802:	2b00      	cmp	r3, #0
 800a804:	d001      	beq.n	800a80a <find_volume+0x92>
 800a806:	230a      	movs	r3, #10
 800a808:	e1ff      	b.n	800ac0a <find_volume+0x492>
 800a80a:	2300      	movs	r3, #0
 800a80c:	e1fd      	b.n	800ac0a <find_volume+0x492>
 800a80e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a810:	2200      	movs	r2, #0
 800a812:	701a      	strb	r2, [r3, #0]
 800a814:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800a816:	b2da      	uxtb	r2, r3
 800a818:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a81a:	705a      	strb	r2, [r3, #1]
 800a81c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a81e:	785b      	ldrb	r3, [r3, #1]
 800a820:	4618      	mov	r0, r3
 800a822:	f7fe fc1b 	bl	800905c <disk_initialize>
 800a826:	4603      	mov	r3, r0
 800a828:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 800a82c:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800a830:	f003 0301 	and.w	r3, r3, #1
 800a834:	2b00      	cmp	r3, #0
 800a836:	d001      	beq.n	800a83c <find_volume+0xc4>
 800a838:	2303      	movs	r3, #3
 800a83a:	e1e6      	b.n	800ac0a <find_volume+0x492>
 800a83c:	79fb      	ldrb	r3, [r7, #7]
 800a83e:	2b00      	cmp	r3, #0
 800a840:	d007      	beq.n	800a852 <find_volume+0xda>
 800a842:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800a846:	f003 0304 	and.w	r3, r3, #4
 800a84a:	2b00      	cmp	r3, #0
 800a84c:	d001      	beq.n	800a852 <find_volume+0xda>
 800a84e:	230a      	movs	r3, #10
 800a850:	e1db      	b.n	800ac0a <find_volume+0x492>
 800a852:	2300      	movs	r3, #0
 800a854:	653b      	str	r3, [r7, #80]	@ 0x50
 800a856:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800a858:	6bb8      	ldr	r0, [r7, #56]	@ 0x38
 800a85a:	f7ff ff37 	bl	800a6cc <check_fs>
 800a85e:	4603      	mov	r3, r0
 800a860:	f887 3057 	strb.w	r3, [r7, #87]	@ 0x57
 800a864:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800a868:	2b02      	cmp	r3, #2
 800a86a:	d149      	bne.n	800a900 <find_volume+0x188>
 800a86c:	2300      	movs	r3, #0
 800a86e:	643b      	str	r3, [r7, #64]	@ 0x40
 800a870:	e01e      	b.n	800a8b0 <find_volume+0x138>
 800a872:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a874:	f103 0234 	add.w	r2, r3, #52	@ 0x34
 800a878:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a87a:	011b      	lsls	r3, r3, #4
 800a87c:	f503 73df 	add.w	r3, r3, #446	@ 0x1be
 800a880:	4413      	add	r3, r2
 800a882:	633b      	str	r3, [r7, #48]	@ 0x30
 800a884:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800a886:	3304      	adds	r3, #4
 800a888:	781b      	ldrb	r3, [r3, #0]
 800a88a:	2b00      	cmp	r3, #0
 800a88c:	d006      	beq.n	800a89c <find_volume+0x124>
 800a88e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800a890:	3308      	adds	r3, #8
 800a892:	4618      	mov	r0, r3
 800a894:	f7fe fc7e 	bl	8009194 <ld_dword>
 800a898:	4602      	mov	r2, r0
 800a89a:	e000      	b.n	800a89e <find_volume+0x126>
 800a89c:	2200      	movs	r2, #0
 800a89e:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8a0:	009b      	lsls	r3, r3, #2
 800a8a2:	3358      	adds	r3, #88	@ 0x58
 800a8a4:	443b      	add	r3, r7
 800a8a6:	f843 2c44 	str.w	r2, [r3, #-68]
 800a8aa:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8ac:	3301      	adds	r3, #1
 800a8ae:	643b      	str	r3, [r7, #64]	@ 0x40
 800a8b0:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8b2:	2b03      	cmp	r3, #3
 800a8b4:	d9dd      	bls.n	800a872 <find_volume+0xfa>
 800a8b6:	2300      	movs	r3, #0
 800a8b8:	643b      	str	r3, [r7, #64]	@ 0x40
 800a8ba:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8bc:	2b00      	cmp	r3, #0
 800a8be:	d002      	beq.n	800a8c6 <find_volume+0x14e>
 800a8c0:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8c2:	3b01      	subs	r3, #1
 800a8c4:	643b      	str	r3, [r7, #64]	@ 0x40
 800a8c6:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8c8:	009b      	lsls	r3, r3, #2
 800a8ca:	3358      	adds	r3, #88	@ 0x58
 800a8cc:	443b      	add	r3, r7
 800a8ce:	f853 3c44 	ldr.w	r3, [r3, #-68]
 800a8d2:	653b      	str	r3, [r7, #80]	@ 0x50
 800a8d4:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800a8d6:	2b00      	cmp	r3, #0
 800a8d8:	d005      	beq.n	800a8e6 <find_volume+0x16e>
 800a8da:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800a8dc:	6bb8      	ldr	r0, [r7, #56]	@ 0x38
 800a8de:	f7ff fef5 	bl	800a6cc <check_fs>
 800a8e2:	4603      	mov	r3, r0
 800a8e4:	e000      	b.n	800a8e8 <find_volume+0x170>
 800a8e6:	2303      	movs	r3, #3
 800a8e8:	f887 3057 	strb.w	r3, [r7, #87]	@ 0x57
 800a8ec:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800a8f0:	2b01      	cmp	r3, #1
 800a8f2:	d905      	bls.n	800a900 <find_volume+0x188>
 800a8f4:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8f6:	3301      	adds	r3, #1
 800a8f8:	643b      	str	r3, [r7, #64]	@ 0x40
 800a8fa:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
 800a8fc:	2b03      	cmp	r3, #3
 800a8fe:	d9e2      	bls.n	800a8c6 <find_volume+0x14e>
 800a900:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800a904:	2b04      	cmp	r3, #4
 800a906:	d101      	bne.n	800a90c <find_volume+0x194>
 800a908:	2301      	movs	r3, #1
 800a90a:	e17e      	b.n	800ac0a <find_volume+0x492>
 800a90c:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800a910:	2b01      	cmp	r3, #1
 800a912:	d901      	bls.n	800a918 <find_volume+0x1a0>
 800a914:	230d      	movs	r3, #13
 800a916:	e178      	b.n	800ac0a <find_volume+0x492>
 800a918:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a91a:	3334      	adds	r3, #52	@ 0x34
 800a91c:	330b      	adds	r3, #11
 800a91e:	4618      	mov	r0, r3
 800a920:	f7fe fc20 	bl	8009164 <ld_word>
 800a924:	4603      	mov	r3, r0
 800a926:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 800a92a:	d001      	beq.n	800a930 <find_volume+0x1b8>
 800a92c:	230d      	movs	r3, #13
 800a92e:	e16c      	b.n	800ac0a <find_volume+0x492>
 800a930:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a932:	3334      	adds	r3, #52	@ 0x34
 800a934:	3316      	adds	r3, #22
 800a936:	4618      	mov	r0, r3
 800a938:	f7fe fc14 	bl	8009164 <ld_word>
 800a93c:	4603      	mov	r3, r0
 800a93e:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800a940:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800a942:	2b00      	cmp	r3, #0
 800a944:	d106      	bne.n	800a954 <find_volume+0x1dc>
 800a946:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a948:	3334      	adds	r3, #52	@ 0x34
 800a94a:	3324      	adds	r3, #36	@ 0x24
 800a94c:	4618      	mov	r0, r3
 800a94e:	f7fe fc21 	bl	8009194 <ld_dword>
 800a952:	64f8      	str	r0, [r7, #76]	@ 0x4c
 800a954:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a956:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800a958:	61da      	str	r2, [r3, #28]
 800a95a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a95c:	f893 2044 	ldrb.w	r2, [r3, #68]	@ 0x44
 800a960:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a962:	709a      	strb	r2, [r3, #2]
 800a964:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a966:	789b      	ldrb	r3, [r3, #2]
 800a968:	2b01      	cmp	r3, #1
 800a96a:	d005      	beq.n	800a978 <find_volume+0x200>
 800a96c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a96e:	789b      	ldrb	r3, [r3, #2]
 800a970:	2b02      	cmp	r3, #2
 800a972:	d001      	beq.n	800a978 <find_volume+0x200>
 800a974:	230d      	movs	r3, #13
 800a976:	e148      	b.n	800ac0a <find_volume+0x492>
 800a978:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a97a:	789b      	ldrb	r3, [r3, #2]
 800a97c:	461a      	mov	r2, r3
 800a97e:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800a980:	fb02 f303 	mul.w	r3, r2, r3
 800a984:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800a986:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a988:	f893 3041 	ldrb.w	r3, [r3, #65]	@ 0x41
 800a98c:	461a      	mov	r2, r3
 800a98e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a990:	815a      	strh	r2, [r3, #10]
 800a992:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a994:	895b      	ldrh	r3, [r3, #10]
 800a996:	2b00      	cmp	r3, #0
 800a998:	d008      	beq.n	800a9ac <find_volume+0x234>
 800a99a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a99c:	895b      	ldrh	r3, [r3, #10]
 800a99e:	461a      	mov	r2, r3
 800a9a0:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9a2:	895b      	ldrh	r3, [r3, #10]
 800a9a4:	3b01      	subs	r3, #1
 800a9a6:	4013      	ands	r3, r2
 800a9a8:	2b00      	cmp	r3, #0
 800a9aa:	d001      	beq.n	800a9b0 <find_volume+0x238>
 800a9ac:	230d      	movs	r3, #13
 800a9ae:	e12c      	b.n	800ac0a <find_volume+0x492>
 800a9b0:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9b2:	3334      	adds	r3, #52	@ 0x34
 800a9b4:	3311      	adds	r3, #17
 800a9b6:	4618      	mov	r0, r3
 800a9b8:	f7fe fbd4 	bl	8009164 <ld_word>
 800a9bc:	4603      	mov	r3, r0
 800a9be:	461a      	mov	r2, r3
 800a9c0:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9c2:	811a      	strh	r2, [r3, #8]
 800a9c4:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9c6:	891b      	ldrh	r3, [r3, #8]
 800a9c8:	f003 030f 	and.w	r3, r3, #15
 800a9cc:	b29b      	uxth	r3, r3
 800a9ce:	2b00      	cmp	r3, #0
 800a9d0:	d001      	beq.n	800a9d6 <find_volume+0x25e>
 800a9d2:	230d      	movs	r3, #13
 800a9d4:	e119      	b.n	800ac0a <find_volume+0x492>
 800a9d6:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9d8:	3334      	adds	r3, #52	@ 0x34
 800a9da:	3313      	adds	r3, #19
 800a9dc:	4618      	mov	r0, r3
 800a9de:	f7fe fbc1 	bl	8009164 <ld_word>
 800a9e2:	4603      	mov	r3, r0
 800a9e4:	64bb      	str	r3, [r7, #72]	@ 0x48
 800a9e6:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800a9e8:	2b00      	cmp	r3, #0
 800a9ea:	d106      	bne.n	800a9fa <find_volume+0x282>
 800a9ec:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9ee:	3334      	adds	r3, #52	@ 0x34
 800a9f0:	3320      	adds	r3, #32
 800a9f2:	4618      	mov	r0, r3
 800a9f4:	f7fe fbce 	bl	8009194 <ld_dword>
 800a9f8:	64b8      	str	r0, [r7, #72]	@ 0x48
 800a9fa:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800a9fc:	3334      	adds	r3, #52	@ 0x34
 800a9fe:	330e      	adds	r3, #14
 800aa00:	4618      	mov	r0, r3
 800aa02:	f7fe fbaf 	bl	8009164 <ld_word>
 800aa06:	4603      	mov	r3, r0
 800aa08:	85fb      	strh	r3, [r7, #46]	@ 0x2e
 800aa0a:	8dfb      	ldrh	r3, [r7, #46]	@ 0x2e
 800aa0c:	2b00      	cmp	r3, #0
 800aa0e:	d101      	bne.n	800aa14 <find_volume+0x29c>
 800aa10:	230d      	movs	r3, #13
 800aa12:	e0fa      	b.n	800ac0a <find_volume+0x492>
 800aa14:	8dfa      	ldrh	r2, [r7, #46]	@ 0x2e
 800aa16:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800aa18:	4413      	add	r3, r2
 800aa1a:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800aa1c:	8912      	ldrh	r2, [r2, #8]
 800aa1e:	0912      	lsrs	r2, r2, #4
 800aa20:	b292      	uxth	r2, r2
 800aa22:	4413      	add	r3, r2
 800aa24:	62bb      	str	r3, [r7, #40]	@ 0x28
 800aa26:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 800aa28:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800aa2a:	429a      	cmp	r2, r3
 800aa2c:	d204      	bcs.n	800aa38 <find_volume+0x2c0>
 800aa2e:	230d      	movs	r3, #13
 800aa30:	e0eb      	b.n	800ac0a <find_volume+0x492>
 800aa32:	bf00      	nop
 800aa34:	200413cc 	.word	0x200413cc
 800aa38:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 800aa3a:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800aa3c:	1ad3      	subs	r3, r2, r3
 800aa3e:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800aa40:	8952      	ldrh	r2, [r2, #10]
 800aa42:	fbb3 f3f2 	udiv	r3, r3, r2
 800aa46:	627b      	str	r3, [r7, #36]	@ 0x24
 800aa48:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800aa4a:	2b00      	cmp	r3, #0
 800aa4c:	d101      	bne.n	800aa52 <find_volume+0x2da>
 800aa4e:	230d      	movs	r3, #13
 800aa50:	e0db      	b.n	800ac0a <find_volume+0x492>
 800aa52:	2303      	movs	r3, #3
 800aa54:	f887 3057 	strb.w	r3, [r7, #87]	@ 0x57
 800aa58:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800aa5a:	f64f 72f5 	movw	r2, #65525	@ 0xfff5
 800aa5e:	4293      	cmp	r3, r2
 800aa60:	d802      	bhi.n	800aa68 <find_volume+0x2f0>
 800aa62:	2302      	movs	r3, #2
 800aa64:	f887 3057 	strb.w	r3, [r7, #87]	@ 0x57
 800aa68:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800aa6a:	f640 72f5 	movw	r2, #4085	@ 0xff5
 800aa6e:	4293      	cmp	r3, r2
 800aa70:	d802      	bhi.n	800aa78 <find_volume+0x300>
 800aa72:	2301      	movs	r3, #1
 800aa74:	f887 3057 	strb.w	r3, [r7, #87]	@ 0x57
 800aa78:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800aa7a:	1c9a      	adds	r2, r3, #2
 800aa7c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aa7e:	619a      	str	r2, [r3, #24]
 800aa80:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aa82:	6d3a      	ldr	r2, [r7, #80]	@ 0x50
 800aa84:	621a      	str	r2, [r3, #32]
 800aa86:	8dfa      	ldrh	r2, [r7, #46]	@ 0x2e
 800aa88:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800aa8a:	441a      	add	r2, r3
 800aa8c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aa8e:	625a      	str	r2, [r3, #36]	@ 0x24
 800aa90:	6d3a      	ldr	r2, [r7, #80]	@ 0x50
 800aa92:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800aa94:	441a      	add	r2, r3
 800aa96:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aa98:	62da      	str	r2, [r3, #44]	@ 0x2c
 800aa9a:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800aa9e:	2b03      	cmp	r3, #3
 800aaa0:	d11e      	bne.n	800aae0 <find_volume+0x368>
 800aaa2:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aaa4:	3334      	adds	r3, #52	@ 0x34
 800aaa6:	332a      	adds	r3, #42	@ 0x2a
 800aaa8:	4618      	mov	r0, r3
 800aaaa:	f7fe fb5b 	bl	8009164 <ld_word>
 800aaae:	4603      	mov	r3, r0
 800aab0:	2b00      	cmp	r3, #0
 800aab2:	d001      	beq.n	800aab8 <find_volume+0x340>
 800aab4:	230d      	movs	r3, #13
 800aab6:	e0a8      	b.n	800ac0a <find_volume+0x492>
 800aab8:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aaba:	891b      	ldrh	r3, [r3, #8]
 800aabc:	2b00      	cmp	r3, #0
 800aabe:	d001      	beq.n	800aac4 <find_volume+0x34c>
 800aac0:	230d      	movs	r3, #13
 800aac2:	e0a2      	b.n	800ac0a <find_volume+0x492>
 800aac4:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aac6:	3334      	adds	r3, #52	@ 0x34
 800aac8:	332c      	adds	r3, #44	@ 0x2c
 800aaca:	4618      	mov	r0, r3
 800aacc:	f7fe fb62 	bl	8009194 <ld_dword>
 800aad0:	4602      	mov	r2, r0
 800aad2:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aad4:	629a      	str	r2, [r3, #40]	@ 0x28
 800aad6:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aad8:	699b      	ldr	r3, [r3, #24]
 800aada:	009b      	lsls	r3, r3, #2
 800aadc:	647b      	str	r3, [r7, #68]	@ 0x44
 800aade:	e01f      	b.n	800ab20 <find_volume+0x3a8>
 800aae0:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aae2:	891b      	ldrh	r3, [r3, #8]
 800aae4:	2b00      	cmp	r3, #0
 800aae6:	d101      	bne.n	800aaec <find_volume+0x374>
 800aae8:	230d      	movs	r3, #13
 800aaea:	e08e      	b.n	800ac0a <find_volume+0x492>
 800aaec:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aaee:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 800aaf0:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800aaf2:	441a      	add	r2, r3
 800aaf4:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800aaf6:	629a      	str	r2, [r3, #40]	@ 0x28
 800aaf8:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800aafc:	2b02      	cmp	r3, #2
 800aafe:	d103      	bne.n	800ab08 <find_volume+0x390>
 800ab00:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab02:	699b      	ldr	r3, [r3, #24]
 800ab04:	005b      	lsls	r3, r3, #1
 800ab06:	e00a      	b.n	800ab1e <find_volume+0x3a6>
 800ab08:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab0a:	699a      	ldr	r2, [r3, #24]
 800ab0c:	4613      	mov	r3, r2
 800ab0e:	005b      	lsls	r3, r3, #1
 800ab10:	4413      	add	r3, r2
 800ab12:	085a      	lsrs	r2, r3, #1
 800ab14:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab16:	699b      	ldr	r3, [r3, #24]
 800ab18:	f003 0301 	and.w	r3, r3, #1
 800ab1c:	4413      	add	r3, r2
 800ab1e:	647b      	str	r3, [r7, #68]	@ 0x44
 800ab20:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab22:	69da      	ldr	r2, [r3, #28]
 800ab24:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800ab26:	f203 13ff 	addw	r3, r3, #511	@ 0x1ff
 800ab2a:	0a5b      	lsrs	r3, r3, #9
 800ab2c:	429a      	cmp	r2, r3
 800ab2e:	d201      	bcs.n	800ab34 <find_volume+0x3bc>
 800ab30:	230d      	movs	r3, #13
 800ab32:	e06a      	b.n	800ac0a <find_volume+0x492>
 800ab34:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab36:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 800ab3a:	615a      	str	r2, [r3, #20]
 800ab3c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab3e:	695a      	ldr	r2, [r3, #20]
 800ab40:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab42:	611a      	str	r2, [r3, #16]
 800ab44:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab46:	2280      	movs	r2, #128	@ 0x80
 800ab48:	711a      	strb	r2, [r3, #4]
 800ab4a:	f897 3057 	ldrb.w	r3, [r7, #87]	@ 0x57
 800ab4e:	2b03      	cmp	r3, #3
 800ab50:	d149      	bne.n	800abe6 <find_volume+0x46e>
 800ab52:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab54:	3334      	adds	r3, #52	@ 0x34
 800ab56:	3330      	adds	r3, #48	@ 0x30
 800ab58:	4618      	mov	r0, r3
 800ab5a:	f7fe fb03 	bl	8009164 <ld_word>
 800ab5e:	4603      	mov	r3, r0
 800ab60:	2b01      	cmp	r3, #1
 800ab62:	d140      	bne.n	800abe6 <find_volume+0x46e>
 800ab64:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ab66:	3301      	adds	r3, #1
 800ab68:	4619      	mov	r1, r3
 800ab6a:	6bb8      	ldr	r0, [r7, #56]	@ 0x38
 800ab6c:	f7fe fddc 	bl	8009728 <move_window>
 800ab70:	4603      	mov	r3, r0
 800ab72:	2b00      	cmp	r3, #0
 800ab74:	d137      	bne.n	800abe6 <find_volume+0x46e>
 800ab76:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab78:	2200      	movs	r2, #0
 800ab7a:	711a      	strb	r2, [r3, #4]
 800ab7c:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab7e:	3334      	adds	r3, #52	@ 0x34
 800ab80:	f503 73ff 	add.w	r3, r3, #510	@ 0x1fe
 800ab84:	4618      	mov	r0, r3
 800ab86:	f7fe faed 	bl	8009164 <ld_word>
 800ab8a:	4603      	mov	r3, r0
 800ab8c:	461a      	mov	r2, r3
 800ab8e:	f64a 2355 	movw	r3, #43605	@ 0xaa55
 800ab92:	429a      	cmp	r2, r3
 800ab94:	d127      	bne.n	800abe6 <find_volume+0x46e>
 800ab96:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ab98:	3334      	adds	r3, #52	@ 0x34
 800ab9a:	4618      	mov	r0, r3
 800ab9c:	f7fe fafa 	bl	8009194 <ld_dword>
 800aba0:	4603      	mov	r3, r0
 800aba2:	4a1c      	ldr	r2, [pc, #112]	@ (800ac14 <find_volume+0x49c>)
 800aba4:	4293      	cmp	r3, r2
 800aba6:	d11e      	bne.n	800abe6 <find_volume+0x46e>
 800aba8:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abaa:	3334      	adds	r3, #52	@ 0x34
 800abac:	f503 73f2 	add.w	r3, r3, #484	@ 0x1e4
 800abb0:	4618      	mov	r0, r3
 800abb2:	f7fe faef 	bl	8009194 <ld_dword>
 800abb6:	4603      	mov	r3, r0
 800abb8:	4a17      	ldr	r2, [pc, #92]	@ (800ac18 <find_volume+0x4a0>)
 800abba:	4293      	cmp	r3, r2
 800abbc:	d113      	bne.n	800abe6 <find_volume+0x46e>
 800abbe:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abc0:	3334      	adds	r3, #52	@ 0x34
 800abc2:	f503 73f4 	add.w	r3, r3, #488	@ 0x1e8
 800abc6:	4618      	mov	r0, r3
 800abc8:	f7fe fae4 	bl	8009194 <ld_dword>
 800abcc:	4602      	mov	r2, r0
 800abce:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abd0:	615a      	str	r2, [r3, #20]
 800abd2:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abd4:	3334      	adds	r3, #52	@ 0x34
 800abd6:	f503 73f6 	add.w	r3, r3, #492	@ 0x1ec
 800abda:	4618      	mov	r0, r3
 800abdc:	f7fe fada 	bl	8009194 <ld_dword>
 800abe0:	4602      	mov	r2, r0
 800abe2:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abe4:	611a      	str	r2, [r3, #16]
 800abe6:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800abe8:	f897 2057 	ldrb.w	r2, [r7, #87]	@ 0x57
 800abec:	701a      	strb	r2, [r3, #0]
 800abee:	4b0b      	ldr	r3, [pc, #44]	@ (800ac1c <find_volume+0x4a4>)
 800abf0:	881b      	ldrh	r3, [r3, #0]
 800abf2:	3301      	adds	r3, #1
 800abf4:	b29a      	uxth	r2, r3
 800abf6:	4b09      	ldr	r3, [pc, #36]	@ (800ac1c <find_volume+0x4a4>)
 800abf8:	801a      	strh	r2, [r3, #0]
 800abfa:	4b08      	ldr	r3, [pc, #32]	@ (800ac1c <find_volume+0x4a4>)
 800abfc:	881a      	ldrh	r2, [r3, #0]
 800abfe:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 800ac00:	80da      	strh	r2, [r3, #6]
 800ac02:	6bb8      	ldr	r0, [r7, #56]	@ 0x38
 800ac04:	f7fe fd28 	bl	8009658 <clear_lock>
 800ac08:	2300      	movs	r3, #0
 800ac0a:	4618      	mov	r0, r3
 800ac0c:	3758      	adds	r7, #88	@ 0x58
 800ac0e:	46bd      	mov	sp, r7
 800ac10:	bd80      	pop	{r7, pc}
 800ac12:	bf00      	nop
 800ac14:	41615252 	.word	0x41615252
 800ac18:	61417272 	.word	0x61417272
 800ac1c:	200413d0 	.word	0x200413d0

0800ac20 <validate>:
 800ac20:	b580      	push	{r7, lr}
 800ac22:	b084      	sub	sp, #16
 800ac24:	af00      	add	r7, sp, #0
 800ac26:	6078      	str	r0, [r7, #4]
 800ac28:	6039      	str	r1, [r7, #0]
 800ac2a:	2309      	movs	r3, #9
 800ac2c:	73fb      	strb	r3, [r7, #15]
 800ac2e:	687b      	ldr	r3, [r7, #4]
 800ac30:	2b00      	cmp	r3, #0
 800ac32:	d02e      	beq.n	800ac92 <validate+0x72>
 800ac34:	687b      	ldr	r3, [r7, #4]
 800ac36:	681b      	ldr	r3, [r3, #0]
 800ac38:	2b00      	cmp	r3, #0
 800ac3a:	d02a      	beq.n	800ac92 <validate+0x72>
 800ac3c:	687b      	ldr	r3, [r7, #4]
 800ac3e:	681b      	ldr	r3, [r3, #0]
 800ac40:	781b      	ldrb	r3, [r3, #0]
 800ac42:	2b00      	cmp	r3, #0
 800ac44:	d025      	beq.n	800ac92 <validate+0x72>
 800ac46:	687b      	ldr	r3, [r7, #4]
 800ac48:	889a      	ldrh	r2, [r3, #4]
 800ac4a:	687b      	ldr	r3, [r7, #4]
 800ac4c:	681b      	ldr	r3, [r3, #0]
 800ac4e:	88db      	ldrh	r3, [r3, #6]
 800ac50:	429a      	cmp	r2, r3
 800ac52:	d11e      	bne.n	800ac92 <validate+0x72>
 800ac54:	687b      	ldr	r3, [r7, #4]
 800ac56:	681b      	ldr	r3, [r3, #0]
 800ac58:	4618      	mov	r0, r3
 800ac5a:	f7fe fb83 	bl	8009364 <lock_fs>
 800ac5e:	4603      	mov	r3, r0
 800ac60:	2b00      	cmp	r3, #0
 800ac62:	d014      	beq.n	800ac8e <validate+0x6e>
 800ac64:	687b      	ldr	r3, [r7, #4]
 800ac66:	681b      	ldr	r3, [r3, #0]
 800ac68:	785b      	ldrb	r3, [r3, #1]
 800ac6a:	4618      	mov	r0, r3
 800ac6c:	f7fe f9dc 	bl	8009028 <disk_status>
 800ac70:	4603      	mov	r3, r0
 800ac72:	f003 0301 	and.w	r3, r3, #1
 800ac76:	2b00      	cmp	r3, #0
 800ac78:	d102      	bne.n	800ac80 <validate+0x60>
 800ac7a:	2300      	movs	r3, #0
 800ac7c:	73fb      	strb	r3, [r7, #15]
 800ac7e:	e008      	b.n	800ac92 <validate+0x72>
 800ac80:	687b      	ldr	r3, [r7, #4]
 800ac82:	681b      	ldr	r3, [r3, #0]
 800ac84:	2100      	movs	r1, #0
 800ac86:	4618      	mov	r0, r3
 800ac88:	f7fe fb82 	bl	8009390 <unlock_fs>
 800ac8c:	e001      	b.n	800ac92 <validate+0x72>
 800ac8e:	230f      	movs	r3, #15
 800ac90:	73fb      	strb	r3, [r7, #15]
 800ac92:	7bfb      	ldrb	r3, [r7, #15]
 800ac94:	2b00      	cmp	r3, #0
 800ac96:	d102      	bne.n	800ac9e <validate+0x7e>
 800ac98:	687b      	ldr	r3, [r7, #4]
 800ac9a:	681b      	ldr	r3, [r3, #0]
 800ac9c:	e000      	b.n	800aca0 <validate+0x80>
 800ac9e:	2300      	movs	r3, #0
 800aca0:	683a      	ldr	r2, [r7, #0]
 800aca2:	6013      	str	r3, [r2, #0]
 800aca4:	7bfb      	ldrb	r3, [r7, #15]
 800aca6:	4618      	mov	r0, r3
 800aca8:	3710      	adds	r7, #16
 800acaa:	46bd      	mov	sp, r7
 800acac:	bd80      	pop	{r7, pc}
	...

0800acb0 <f_mount>:
 800acb0:	b580      	push	{r7, lr}
 800acb2:	b088      	sub	sp, #32
 800acb4:	af00      	add	r7, sp, #0
 800acb6:	60f8      	str	r0, [r7, #12]
 800acb8:	60b9      	str	r1, [r7, #8]
 800acba:	4613      	mov	r3, r2
 800acbc:	71fb      	strb	r3, [r7, #7]
 800acbe:	68bb      	ldr	r3, [r7, #8]
 800acc0:	613b      	str	r3, [r7, #16]
 800acc2:	f107 0310 	add.w	r3, r7, #16
 800acc6:	4618      	mov	r0, r3
 800acc8:	f7ff fcbb 	bl	800a642 <get_ldnumber>
 800accc:	61f8      	str	r0, [r7, #28]
 800acce:	69fb      	ldr	r3, [r7, #28]
 800acd0:	2b00      	cmp	r3, #0
 800acd2:	da01      	bge.n	800acd8 <f_mount+0x28>
 800acd4:	230b      	movs	r3, #11
 800acd6:	e048      	b.n	800ad6a <f_mount+0xba>
 800acd8:	4a26      	ldr	r2, [pc, #152]	@ (800ad74 <f_mount+0xc4>)
 800acda:	69fb      	ldr	r3, [r7, #28]
 800acdc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800ace0:	61bb      	str	r3, [r7, #24]
 800ace2:	69bb      	ldr	r3, [r7, #24]
 800ace4:	2b00      	cmp	r3, #0
 800ace6:	d00f      	beq.n	800ad08 <f_mount+0x58>
 800ace8:	69b8      	ldr	r0, [r7, #24]
 800acea:	f7fe fcb5 	bl	8009658 <clear_lock>
 800acee:	69bb      	ldr	r3, [r7, #24]
 800acf0:	68db      	ldr	r3, [r3, #12]
 800acf2:	4618      	mov	r0, r3
 800acf4:	f000 fd84 	bl	800b800 <ff_del_syncobj>
 800acf8:	4603      	mov	r3, r0
 800acfa:	2b00      	cmp	r3, #0
 800acfc:	d101      	bne.n	800ad02 <f_mount+0x52>
 800acfe:	2302      	movs	r3, #2
 800ad00:	e033      	b.n	800ad6a <f_mount+0xba>
 800ad02:	69bb      	ldr	r3, [r7, #24]
 800ad04:	2200      	movs	r2, #0
 800ad06:	701a      	strb	r2, [r3, #0]
 800ad08:	68fb      	ldr	r3, [r7, #12]
 800ad0a:	2b00      	cmp	r3, #0
 800ad0c:	d00f      	beq.n	800ad2e <f_mount+0x7e>
 800ad0e:	68fb      	ldr	r3, [r7, #12]
 800ad10:	2200      	movs	r2, #0
 800ad12:	701a      	strb	r2, [r3, #0]
 800ad14:	69fb      	ldr	r3, [r7, #28]
 800ad16:	b2da      	uxtb	r2, r3
 800ad18:	68fb      	ldr	r3, [r7, #12]
 800ad1a:	330c      	adds	r3, #12
 800ad1c:	4619      	mov	r1, r3
 800ad1e:	4610      	mov	r0, r2
 800ad20:	f000 fd53 	bl	800b7ca <ff_cre_syncobj>
 800ad24:	4603      	mov	r3, r0
 800ad26:	2b00      	cmp	r3, #0
 800ad28:	d101      	bne.n	800ad2e <f_mount+0x7e>
 800ad2a:	2302      	movs	r3, #2
 800ad2c:	e01d      	b.n	800ad6a <f_mount+0xba>
 800ad2e:	68fa      	ldr	r2, [r7, #12]
 800ad30:	4910      	ldr	r1, [pc, #64]	@ (800ad74 <f_mount+0xc4>)
 800ad32:	69fb      	ldr	r3, [r7, #28]
 800ad34:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800ad38:	68fb      	ldr	r3, [r7, #12]
 800ad3a:	2b00      	cmp	r3, #0
 800ad3c:	d002      	beq.n	800ad44 <f_mount+0x94>
 800ad3e:	79fb      	ldrb	r3, [r7, #7]
 800ad40:	2b01      	cmp	r3, #1
 800ad42:	d001      	beq.n	800ad48 <f_mount+0x98>
 800ad44:	2300      	movs	r3, #0
 800ad46:	e010      	b.n	800ad6a <f_mount+0xba>
 800ad48:	f107 010c 	add.w	r1, r7, #12
 800ad4c:	f107 0308 	add.w	r3, r7, #8
 800ad50:	2200      	movs	r2, #0
 800ad52:	4618      	mov	r0, r3
 800ad54:	f7ff fd10 	bl	800a778 <find_volume>
 800ad58:	4603      	mov	r3, r0
 800ad5a:	75fb      	strb	r3, [r7, #23]
 800ad5c:	68fb      	ldr	r3, [r7, #12]
 800ad5e:	7dfa      	ldrb	r2, [r7, #23]
 800ad60:	4611      	mov	r1, r2
 800ad62:	4618      	mov	r0, r3
 800ad64:	f7fe fb14 	bl	8009390 <unlock_fs>
 800ad68:	7dfb      	ldrb	r3, [r7, #23]
 800ad6a:	4618      	mov	r0, r3
 800ad6c:	3720      	adds	r7, #32
 800ad6e:	46bd      	mov	sp, r7
 800ad70:	bd80      	pop	{r7, pc}
 800ad72:	bf00      	nop
 800ad74:	200413cc 	.word	0x200413cc

0800ad78 <f_open>:
 800ad78:	b580      	push	{r7, lr}
 800ad7a:	b098      	sub	sp, #96	@ 0x60
 800ad7c:	af00      	add	r7, sp, #0
 800ad7e:	60f8      	str	r0, [r7, #12]
 800ad80:	60b9      	str	r1, [r7, #8]
 800ad82:	4613      	mov	r3, r2
 800ad84:	71fb      	strb	r3, [r7, #7]
 800ad86:	68fb      	ldr	r3, [r7, #12]
 800ad88:	2b00      	cmp	r3, #0
 800ad8a:	d101      	bne.n	800ad90 <f_open+0x18>
 800ad8c:	2309      	movs	r3, #9
 800ad8e:	e1b0      	b.n	800b0f2 <f_open+0x37a>
 800ad90:	79fb      	ldrb	r3, [r7, #7]
 800ad92:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
 800ad96:	71fb      	strb	r3, [r7, #7]
 800ad98:	79fa      	ldrb	r2, [r7, #7]
 800ad9a:	f107 0110 	add.w	r1, r7, #16
 800ad9e:	f107 0308 	add.w	r3, r7, #8
 800ada2:	4618      	mov	r0, r3
 800ada4:	f7ff fce8 	bl	800a778 <find_volume>
 800ada8:	4603      	mov	r3, r0
 800adaa:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800adae:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800adb2:	2b00      	cmp	r3, #0
 800adb4:	f040 818d 	bne.w	800b0d2 <f_open+0x35a>
 800adb8:	693b      	ldr	r3, [r7, #16]
 800adba:	617b      	str	r3, [r7, #20]
 800adbc:	68ba      	ldr	r2, [r7, #8]
 800adbe:	f107 0314 	add.w	r3, r7, #20
 800adc2:	4611      	mov	r1, r2
 800adc4:	4618      	mov	r0, r3
 800adc6:	f7ff fbcb 	bl	800a560 <follow_path>
 800adca:	4603      	mov	r3, r0
 800adcc:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800add0:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800add4:	2b00      	cmp	r3, #0
 800add6:	d118      	bne.n	800ae0a <f_open+0x92>
 800add8:	f897 3043 	ldrb.w	r3, [r7, #67]	@ 0x43
 800addc:	b25b      	sxtb	r3, r3
 800adde:	2b00      	cmp	r3, #0
 800ade0:	da03      	bge.n	800adea <f_open+0x72>
 800ade2:	2306      	movs	r3, #6
 800ade4:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800ade8:	e00f      	b.n	800ae0a <f_open+0x92>
 800adea:	79fb      	ldrb	r3, [r7, #7]
 800adec:	2b01      	cmp	r3, #1
 800adee:	bf8c      	ite	hi
 800adf0:	2301      	movhi	r3, #1
 800adf2:	2300      	movls	r3, #0
 800adf4:	b2db      	uxtb	r3, r3
 800adf6:	461a      	mov	r2, r3
 800adf8:	f107 0314 	add.w	r3, r7, #20
 800adfc:	4611      	mov	r1, r2
 800adfe:	4618      	mov	r0, r3
 800ae00:	f7fe fae2 	bl	80093c8 <chk_lock>
 800ae04:	4603      	mov	r3, r0
 800ae06:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800ae0a:	79fb      	ldrb	r3, [r7, #7]
 800ae0c:	f003 031c 	and.w	r3, r3, #28
 800ae10:	2b00      	cmp	r3, #0
 800ae12:	d07f      	beq.n	800af14 <f_open+0x19c>
 800ae14:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800ae18:	2b00      	cmp	r3, #0
 800ae1a:	d017      	beq.n	800ae4c <f_open+0xd4>
 800ae1c:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800ae20:	2b04      	cmp	r3, #4
 800ae22:	d10e      	bne.n	800ae42 <f_open+0xca>
 800ae24:	f7fe fb2c 	bl	8009480 <enq_lock>
 800ae28:	4603      	mov	r3, r0
 800ae2a:	2b00      	cmp	r3, #0
 800ae2c:	d006      	beq.n	800ae3c <f_open+0xc4>
 800ae2e:	f107 0314 	add.w	r3, r7, #20
 800ae32:	4618      	mov	r0, r3
 800ae34:	f7ff fa6d 	bl	800a312 <dir_register>
 800ae38:	4603      	mov	r3, r0
 800ae3a:	e000      	b.n	800ae3e <f_open+0xc6>
 800ae3c:	2312      	movs	r3, #18
 800ae3e:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800ae42:	79fb      	ldrb	r3, [r7, #7]
 800ae44:	f043 0308 	orr.w	r3, r3, #8
 800ae48:	71fb      	strb	r3, [r7, #7]
 800ae4a:	e010      	b.n	800ae6e <f_open+0xf6>
 800ae4c:	7ebb      	ldrb	r3, [r7, #26]
 800ae4e:	f003 0311 	and.w	r3, r3, #17
 800ae52:	2b00      	cmp	r3, #0
 800ae54:	d003      	beq.n	800ae5e <f_open+0xe6>
 800ae56:	2307      	movs	r3, #7
 800ae58:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800ae5c:	e007      	b.n	800ae6e <f_open+0xf6>
 800ae5e:	79fb      	ldrb	r3, [r7, #7]
 800ae60:	f003 0304 	and.w	r3, r3, #4
 800ae64:	2b00      	cmp	r3, #0
 800ae66:	d002      	beq.n	800ae6e <f_open+0xf6>
 800ae68:	2308      	movs	r3, #8
 800ae6a:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800ae6e:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800ae72:	2b00      	cmp	r3, #0
 800ae74:	d168      	bne.n	800af48 <f_open+0x1d0>
 800ae76:	79fb      	ldrb	r3, [r7, #7]
 800ae78:	f003 0308 	and.w	r3, r3, #8
 800ae7c:	2b00      	cmp	r3, #0
 800ae7e:	d063      	beq.n	800af48 <f_open+0x1d0>
 800ae80:	f000 ff4c 	bl	800bd1c <get_fattime>
 800ae84:	6538      	str	r0, [r7, #80]	@ 0x50
 800ae86:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800ae88:	330e      	adds	r3, #14
 800ae8a:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800ae8c:	4618      	mov	r0, r3
 800ae8e:	f7fe f9bf 	bl	8009210 <st_dword>
 800ae92:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800ae94:	3316      	adds	r3, #22
 800ae96:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800ae98:	4618      	mov	r0, r3
 800ae9a:	f7fe f9b9 	bl	8009210 <st_dword>
 800ae9e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800aea0:	330b      	adds	r3, #11
 800aea2:	2220      	movs	r2, #32
 800aea4:	701a      	strb	r2, [r3, #0]
 800aea6:	693b      	ldr	r3, [r7, #16]
 800aea8:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
 800aeaa:	4611      	mov	r1, r2
 800aeac:	4618      	mov	r0, r3
 800aeae:	f7ff f93f 	bl	800a130 <ld_clust>
 800aeb2:	64f8      	str	r0, [r7, #76]	@ 0x4c
 800aeb4:	693b      	ldr	r3, [r7, #16]
 800aeb6:	6b79      	ldr	r1, [r7, #52]	@ 0x34
 800aeb8:	2200      	movs	r2, #0
 800aeba:	4618      	mov	r0, r3
 800aebc:	f7ff f957 	bl	800a16e <st_clust>
 800aec0:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800aec2:	331c      	adds	r3, #28
 800aec4:	2100      	movs	r1, #0
 800aec6:	4618      	mov	r0, r3
 800aec8:	f7fe f9a2 	bl	8009210 <st_dword>
 800aecc:	693b      	ldr	r3, [r7, #16]
 800aece:	2201      	movs	r2, #1
 800aed0:	70da      	strb	r2, [r3, #3]
 800aed2:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800aed4:	2b00      	cmp	r3, #0
 800aed6:	d037      	beq.n	800af48 <f_open+0x1d0>
 800aed8:	693b      	ldr	r3, [r7, #16]
 800aeda:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800aedc:	653b      	str	r3, [r7, #80]	@ 0x50
 800aede:	f107 0314 	add.w	r3, r7, #20
 800aee2:	2200      	movs	r2, #0
 800aee4:	6cf9      	ldr	r1, [r7, #76]	@ 0x4c
 800aee6:	4618      	mov	r0, r3
 800aee8:	f7fe fe6a 	bl	8009bc0 <remove_chain>
 800aeec:	4603      	mov	r3, r0
 800aeee:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800aef2:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800aef6:	2b00      	cmp	r3, #0
 800aef8:	d126      	bne.n	800af48 <f_open+0x1d0>
 800aefa:	693b      	ldr	r3, [r7, #16]
 800aefc:	6d39      	ldr	r1, [r7, #80]	@ 0x50
 800aefe:	4618      	mov	r0, r3
 800af00:	f7fe fc12 	bl	8009728 <move_window>
 800af04:	4603      	mov	r3, r0
 800af06:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800af0a:	693b      	ldr	r3, [r7, #16]
 800af0c:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800af0e:	3a01      	subs	r2, #1
 800af10:	611a      	str	r2, [r3, #16]
 800af12:	e019      	b.n	800af48 <f_open+0x1d0>
 800af14:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800af18:	2b00      	cmp	r3, #0
 800af1a:	d115      	bne.n	800af48 <f_open+0x1d0>
 800af1c:	7ebb      	ldrb	r3, [r7, #26]
 800af1e:	f003 0310 	and.w	r3, r3, #16
 800af22:	2b00      	cmp	r3, #0
 800af24:	d003      	beq.n	800af2e <f_open+0x1b6>
 800af26:	2304      	movs	r3, #4
 800af28:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800af2c:	e00c      	b.n	800af48 <f_open+0x1d0>
 800af2e:	79fb      	ldrb	r3, [r7, #7]
 800af30:	f003 0302 	and.w	r3, r3, #2
 800af34:	2b00      	cmp	r3, #0
 800af36:	d007      	beq.n	800af48 <f_open+0x1d0>
 800af38:	7ebb      	ldrb	r3, [r7, #26]
 800af3a:	f003 0301 	and.w	r3, r3, #1
 800af3e:	2b00      	cmp	r3, #0
 800af40:	d002      	beq.n	800af48 <f_open+0x1d0>
 800af42:	2307      	movs	r3, #7
 800af44:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800af48:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800af4c:	2b00      	cmp	r3, #0
 800af4e:	d126      	bne.n	800af9e <f_open+0x226>
 800af50:	79fb      	ldrb	r3, [r7, #7]
 800af52:	f003 0308 	and.w	r3, r3, #8
 800af56:	2b00      	cmp	r3, #0
 800af58:	d003      	beq.n	800af62 <f_open+0x1ea>
 800af5a:	79fb      	ldrb	r3, [r7, #7]
 800af5c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800af60:	71fb      	strb	r3, [r7, #7]
 800af62:	693b      	ldr	r3, [r7, #16]
 800af64:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 800af66:	68fb      	ldr	r3, [r7, #12]
 800af68:	625a      	str	r2, [r3, #36]	@ 0x24
 800af6a:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
 800af6c:	68fb      	ldr	r3, [r7, #12]
 800af6e:	629a      	str	r2, [r3, #40]	@ 0x28
 800af70:	79fb      	ldrb	r3, [r7, #7]
 800af72:	2b01      	cmp	r3, #1
 800af74:	bf8c      	ite	hi
 800af76:	2301      	movhi	r3, #1
 800af78:	2300      	movls	r3, #0
 800af7a:	b2db      	uxtb	r3, r3
 800af7c:	461a      	mov	r2, r3
 800af7e:	f107 0314 	add.w	r3, r7, #20
 800af82:	4611      	mov	r1, r2
 800af84:	4618      	mov	r0, r3
 800af86:	f7fe fa9d 	bl	80094c4 <inc_lock>
 800af8a:	4602      	mov	r2, r0
 800af8c:	68fb      	ldr	r3, [r7, #12]
 800af8e:	611a      	str	r2, [r3, #16]
 800af90:	68fb      	ldr	r3, [r7, #12]
 800af92:	691b      	ldr	r3, [r3, #16]
 800af94:	2b00      	cmp	r3, #0
 800af96:	d102      	bne.n	800af9e <f_open+0x226>
 800af98:	2302      	movs	r3, #2
 800af9a:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800af9e:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800afa2:	2b00      	cmp	r3, #0
 800afa4:	f040 8095 	bne.w	800b0d2 <f_open+0x35a>
 800afa8:	693b      	ldr	r3, [r7, #16]
 800afaa:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
 800afac:	4611      	mov	r1, r2
 800afae:	4618      	mov	r0, r3
 800afb0:	f7ff f8be 	bl	800a130 <ld_clust>
 800afb4:	4602      	mov	r2, r0
 800afb6:	68fb      	ldr	r3, [r7, #12]
 800afb8:	609a      	str	r2, [r3, #8]
 800afba:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800afbc:	331c      	adds	r3, #28
 800afbe:	4618      	mov	r0, r3
 800afc0:	f7fe f8e8 	bl	8009194 <ld_dword>
 800afc4:	4602      	mov	r2, r0
 800afc6:	68fb      	ldr	r3, [r7, #12]
 800afc8:	60da      	str	r2, [r3, #12]
 800afca:	68fb      	ldr	r3, [r7, #12]
 800afcc:	2200      	movs	r2, #0
 800afce:	62da      	str	r2, [r3, #44]	@ 0x2c
 800afd0:	693a      	ldr	r2, [r7, #16]
 800afd2:	68fb      	ldr	r3, [r7, #12]
 800afd4:	601a      	str	r2, [r3, #0]
 800afd6:	693b      	ldr	r3, [r7, #16]
 800afd8:	88da      	ldrh	r2, [r3, #6]
 800afda:	68fb      	ldr	r3, [r7, #12]
 800afdc:	809a      	strh	r2, [r3, #4]
 800afde:	68fb      	ldr	r3, [r7, #12]
 800afe0:	79fa      	ldrb	r2, [r7, #7]
 800afe2:	751a      	strb	r2, [r3, #20]
 800afe4:	68fb      	ldr	r3, [r7, #12]
 800afe6:	2200      	movs	r2, #0
 800afe8:	755a      	strb	r2, [r3, #21]
 800afea:	68fb      	ldr	r3, [r7, #12]
 800afec:	2200      	movs	r2, #0
 800afee:	621a      	str	r2, [r3, #32]
 800aff0:	68fb      	ldr	r3, [r7, #12]
 800aff2:	2200      	movs	r2, #0
 800aff4:	619a      	str	r2, [r3, #24]
 800aff6:	68fb      	ldr	r3, [r7, #12]
 800aff8:	3330      	adds	r3, #48	@ 0x30
 800affa:	f44f 7200 	mov.w	r2, #512	@ 0x200
 800affe:	2100      	movs	r1, #0
 800b000:	4618      	mov	r0, r3
 800b002:	f7fe f952 	bl	80092aa <mem_set>
 800b006:	79fb      	ldrb	r3, [r7, #7]
 800b008:	f003 0320 	and.w	r3, r3, #32
 800b00c:	2b00      	cmp	r3, #0
 800b00e:	d060      	beq.n	800b0d2 <f_open+0x35a>
 800b010:	68fb      	ldr	r3, [r7, #12]
 800b012:	68db      	ldr	r3, [r3, #12]
 800b014:	2b00      	cmp	r3, #0
 800b016:	d05c      	beq.n	800b0d2 <f_open+0x35a>
 800b018:	68fb      	ldr	r3, [r7, #12]
 800b01a:	68da      	ldr	r2, [r3, #12]
 800b01c:	68fb      	ldr	r3, [r7, #12]
 800b01e:	619a      	str	r2, [r3, #24]
 800b020:	693b      	ldr	r3, [r7, #16]
 800b022:	895b      	ldrh	r3, [r3, #10]
 800b024:	025b      	lsls	r3, r3, #9
 800b026:	64bb      	str	r3, [r7, #72]	@ 0x48
 800b028:	68fb      	ldr	r3, [r7, #12]
 800b02a:	689b      	ldr	r3, [r3, #8]
 800b02c:	65bb      	str	r3, [r7, #88]	@ 0x58
 800b02e:	68fb      	ldr	r3, [r7, #12]
 800b030:	68db      	ldr	r3, [r3, #12]
 800b032:	657b      	str	r3, [r7, #84]	@ 0x54
 800b034:	e016      	b.n	800b064 <f_open+0x2ec>
 800b036:	68fb      	ldr	r3, [r7, #12]
 800b038:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 800b03a:	4618      	mov	r0, r3
 800b03c:	f7fe fc2f 	bl	800989e <get_fat>
 800b040:	65b8      	str	r0, [r7, #88]	@ 0x58
 800b042:	6dbb      	ldr	r3, [r7, #88]	@ 0x58
 800b044:	2b01      	cmp	r3, #1
 800b046:	d802      	bhi.n	800b04e <f_open+0x2d6>
 800b048:	2302      	movs	r3, #2
 800b04a:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800b04e:	6dbb      	ldr	r3, [r7, #88]	@ 0x58
 800b050:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800b054:	d102      	bne.n	800b05c <f_open+0x2e4>
 800b056:	2301      	movs	r3, #1
 800b058:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800b05c:	6d7a      	ldr	r2, [r7, #84]	@ 0x54
 800b05e:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800b060:	1ad3      	subs	r3, r2, r3
 800b062:	657b      	str	r3, [r7, #84]	@ 0x54
 800b064:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800b068:	2b00      	cmp	r3, #0
 800b06a:	d103      	bne.n	800b074 <f_open+0x2fc>
 800b06c:	6d7a      	ldr	r2, [r7, #84]	@ 0x54
 800b06e:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
 800b070:	429a      	cmp	r2, r3
 800b072:	d8e0      	bhi.n	800b036 <f_open+0x2be>
 800b074:	68fb      	ldr	r3, [r7, #12]
 800b076:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800b078:	61da      	str	r2, [r3, #28]
 800b07a:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800b07e:	2b00      	cmp	r3, #0
 800b080:	d127      	bne.n	800b0d2 <f_open+0x35a>
 800b082:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800b084:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800b088:	2b00      	cmp	r3, #0
 800b08a:	d022      	beq.n	800b0d2 <f_open+0x35a>
 800b08c:	693b      	ldr	r3, [r7, #16]
 800b08e:	6db9      	ldr	r1, [r7, #88]	@ 0x58
 800b090:	4618      	mov	r0, r3
 800b092:	f7fe fbe5 	bl	8009860 <clust2sect>
 800b096:	6478      	str	r0, [r7, #68]	@ 0x44
 800b098:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800b09a:	2b00      	cmp	r3, #0
 800b09c:	d103      	bne.n	800b0a6 <f_open+0x32e>
 800b09e:	2302      	movs	r3, #2
 800b0a0:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800b0a4:	e015      	b.n	800b0d2 <f_open+0x35a>
 800b0a6:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800b0a8:	0a5a      	lsrs	r2, r3, #9
 800b0aa:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800b0ac:	441a      	add	r2, r3
 800b0ae:	68fb      	ldr	r3, [r7, #12]
 800b0b0:	621a      	str	r2, [r3, #32]
 800b0b2:	693b      	ldr	r3, [r7, #16]
 800b0b4:	7858      	ldrb	r0, [r3, #1]
 800b0b6:	68fb      	ldr	r3, [r7, #12]
 800b0b8:	f103 0130 	add.w	r1, r3, #48	@ 0x30
 800b0bc:	68fb      	ldr	r3, [r7, #12]
 800b0be:	6a1a      	ldr	r2, [r3, #32]
 800b0c0:	2301      	movs	r3, #1
 800b0c2:	f7fd fff1 	bl	80090a8 <disk_read>
 800b0c6:	4603      	mov	r3, r0
 800b0c8:	2b00      	cmp	r3, #0
 800b0ca:	d002      	beq.n	800b0d2 <f_open+0x35a>
 800b0cc:	2301      	movs	r3, #1
 800b0ce:	f887 305f 	strb.w	r3, [r7, #95]	@ 0x5f
 800b0d2:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800b0d6:	2b00      	cmp	r3, #0
 800b0d8:	d002      	beq.n	800b0e0 <f_open+0x368>
 800b0da:	68fb      	ldr	r3, [r7, #12]
 800b0dc:	2200      	movs	r2, #0
 800b0de:	601a      	str	r2, [r3, #0]
 800b0e0:	693b      	ldr	r3, [r7, #16]
 800b0e2:	f897 205f 	ldrb.w	r2, [r7, #95]	@ 0x5f
 800b0e6:	4611      	mov	r1, r2
 800b0e8:	4618      	mov	r0, r3
 800b0ea:	f7fe f951 	bl	8009390 <unlock_fs>
 800b0ee:	f897 305f 	ldrb.w	r3, [r7, #95]	@ 0x5f
 800b0f2:	4618      	mov	r0, r3
 800b0f4:	3760      	adds	r7, #96	@ 0x60
 800b0f6:	46bd      	mov	sp, r7
 800b0f8:	bd80      	pop	{r7, pc}

0800b0fa <f_read>:
 800b0fa:	b580      	push	{r7, lr}
 800b0fc:	b08e      	sub	sp, #56	@ 0x38
 800b0fe:	af00      	add	r7, sp, #0
 800b100:	60f8      	str	r0, [r7, #12]
 800b102:	60b9      	str	r1, [r7, #8]
 800b104:	607a      	str	r2, [r7, #4]
 800b106:	603b      	str	r3, [r7, #0]
 800b108:	68bb      	ldr	r3, [r7, #8]
 800b10a:	627b      	str	r3, [r7, #36]	@ 0x24
 800b10c:	683b      	ldr	r3, [r7, #0]
 800b10e:	2200      	movs	r2, #0
 800b110:	601a      	str	r2, [r3, #0]
 800b112:	68fb      	ldr	r3, [r7, #12]
 800b114:	f107 0214 	add.w	r2, r7, #20
 800b118:	4611      	mov	r1, r2
 800b11a:	4618      	mov	r0, r3
 800b11c:	f7ff fd80 	bl	800ac20 <validate>
 800b120:	4603      	mov	r3, r0
 800b122:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 800b126:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800b12a:	2b00      	cmp	r3, #0
 800b12c:	d107      	bne.n	800b13e <f_read+0x44>
 800b12e:	68fb      	ldr	r3, [r7, #12]
 800b130:	7d5b      	ldrb	r3, [r3, #21]
 800b132:	f887 3037 	strb.w	r3, [r7, #55]	@ 0x37
 800b136:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800b13a:	2b00      	cmp	r3, #0
 800b13c:	d009      	beq.n	800b152 <f_read+0x58>
 800b13e:	697b      	ldr	r3, [r7, #20]
 800b140:	f897 2037 	ldrb.w	r2, [r7, #55]	@ 0x37
 800b144:	4611      	mov	r1, r2
 800b146:	4618      	mov	r0, r3
 800b148:	f7fe f922 	bl	8009390 <unlock_fs>
 800b14c:	f897 3037 	ldrb.w	r3, [r7, #55]	@ 0x37
 800b150:	e13d      	b.n	800b3ce <f_read+0x2d4>
 800b152:	68fb      	ldr	r3, [r7, #12]
 800b154:	7d1b      	ldrb	r3, [r3, #20]
 800b156:	f003 0301 	and.w	r3, r3, #1
 800b15a:	2b00      	cmp	r3, #0
 800b15c:	d106      	bne.n	800b16c <f_read+0x72>
 800b15e:	697b      	ldr	r3, [r7, #20]
 800b160:	2107      	movs	r1, #7
 800b162:	4618      	mov	r0, r3
 800b164:	f7fe f914 	bl	8009390 <unlock_fs>
 800b168:	2307      	movs	r3, #7
 800b16a:	e130      	b.n	800b3ce <f_read+0x2d4>
 800b16c:	68fb      	ldr	r3, [r7, #12]
 800b16e:	68da      	ldr	r2, [r3, #12]
 800b170:	68fb      	ldr	r3, [r7, #12]
 800b172:	699b      	ldr	r3, [r3, #24]
 800b174:	1ad3      	subs	r3, r2, r3
 800b176:	623b      	str	r3, [r7, #32]
 800b178:	687a      	ldr	r2, [r7, #4]
 800b17a:	6a3b      	ldr	r3, [r7, #32]
 800b17c:	429a      	cmp	r2, r3
 800b17e:	f240 811c 	bls.w	800b3ba <f_read+0x2c0>
 800b182:	6a3b      	ldr	r3, [r7, #32]
 800b184:	607b      	str	r3, [r7, #4]
 800b186:	e118      	b.n	800b3ba <f_read+0x2c0>
 800b188:	68fb      	ldr	r3, [r7, #12]
 800b18a:	699b      	ldr	r3, [r3, #24]
 800b18c:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800b190:	2b00      	cmp	r3, #0
 800b192:	f040 80e4 	bne.w	800b35e <f_read+0x264>
 800b196:	68fb      	ldr	r3, [r7, #12]
 800b198:	699b      	ldr	r3, [r3, #24]
 800b19a:	0a5b      	lsrs	r3, r3, #9
 800b19c:	697a      	ldr	r2, [r7, #20]
 800b19e:	8952      	ldrh	r2, [r2, #10]
 800b1a0:	3a01      	subs	r2, #1
 800b1a2:	4013      	ands	r3, r2
 800b1a4:	61fb      	str	r3, [r7, #28]
 800b1a6:	69fb      	ldr	r3, [r7, #28]
 800b1a8:	2b00      	cmp	r3, #0
 800b1aa:	d139      	bne.n	800b220 <f_read+0x126>
 800b1ac:	68fb      	ldr	r3, [r7, #12]
 800b1ae:	699b      	ldr	r3, [r3, #24]
 800b1b0:	2b00      	cmp	r3, #0
 800b1b2:	d103      	bne.n	800b1bc <f_read+0xc2>
 800b1b4:	68fb      	ldr	r3, [r7, #12]
 800b1b6:	689b      	ldr	r3, [r3, #8]
 800b1b8:	633b      	str	r3, [r7, #48]	@ 0x30
 800b1ba:	e013      	b.n	800b1e4 <f_read+0xea>
 800b1bc:	68fb      	ldr	r3, [r7, #12]
 800b1be:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 800b1c0:	2b00      	cmp	r3, #0
 800b1c2:	d007      	beq.n	800b1d4 <f_read+0xda>
 800b1c4:	68fb      	ldr	r3, [r7, #12]
 800b1c6:	699b      	ldr	r3, [r3, #24]
 800b1c8:	4619      	mov	r1, r3
 800b1ca:	68f8      	ldr	r0, [r7, #12]
 800b1cc:	f7fe fdf5 	bl	8009dba <clmt_clust>
 800b1d0:	6338      	str	r0, [r7, #48]	@ 0x30
 800b1d2:	e007      	b.n	800b1e4 <f_read+0xea>
 800b1d4:	68fa      	ldr	r2, [r7, #12]
 800b1d6:	68fb      	ldr	r3, [r7, #12]
 800b1d8:	69db      	ldr	r3, [r3, #28]
 800b1da:	4619      	mov	r1, r3
 800b1dc:	4610      	mov	r0, r2
 800b1de:	f7fe fb5e 	bl	800989e <get_fat>
 800b1e2:	6338      	str	r0, [r7, #48]	@ 0x30
 800b1e4:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800b1e6:	2b01      	cmp	r3, #1
 800b1e8:	d809      	bhi.n	800b1fe <f_read+0x104>
 800b1ea:	68fb      	ldr	r3, [r7, #12]
 800b1ec:	2202      	movs	r2, #2
 800b1ee:	755a      	strb	r2, [r3, #21]
 800b1f0:	697b      	ldr	r3, [r7, #20]
 800b1f2:	2102      	movs	r1, #2
 800b1f4:	4618      	mov	r0, r3
 800b1f6:	f7fe f8cb 	bl	8009390 <unlock_fs>
 800b1fa:	2302      	movs	r3, #2
 800b1fc:	e0e7      	b.n	800b3ce <f_read+0x2d4>
 800b1fe:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800b200:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800b204:	d109      	bne.n	800b21a <f_read+0x120>
 800b206:	68fb      	ldr	r3, [r7, #12]
 800b208:	2201      	movs	r2, #1
 800b20a:	755a      	strb	r2, [r3, #21]
 800b20c:	697b      	ldr	r3, [r7, #20]
 800b20e:	2101      	movs	r1, #1
 800b210:	4618      	mov	r0, r3
 800b212:	f7fe f8bd 	bl	8009390 <unlock_fs>
 800b216:	2301      	movs	r3, #1
 800b218:	e0d9      	b.n	800b3ce <f_read+0x2d4>
 800b21a:	68fb      	ldr	r3, [r7, #12]
 800b21c:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 800b21e:	61da      	str	r2, [r3, #28]
 800b220:	697a      	ldr	r2, [r7, #20]
 800b222:	68fb      	ldr	r3, [r7, #12]
 800b224:	69db      	ldr	r3, [r3, #28]
 800b226:	4619      	mov	r1, r3
 800b228:	4610      	mov	r0, r2
 800b22a:	f7fe fb19 	bl	8009860 <clust2sect>
 800b22e:	61b8      	str	r0, [r7, #24]
 800b230:	69bb      	ldr	r3, [r7, #24]
 800b232:	2b00      	cmp	r3, #0
 800b234:	d109      	bne.n	800b24a <f_read+0x150>
 800b236:	68fb      	ldr	r3, [r7, #12]
 800b238:	2202      	movs	r2, #2
 800b23a:	755a      	strb	r2, [r3, #21]
 800b23c:	697b      	ldr	r3, [r7, #20]
 800b23e:	2102      	movs	r1, #2
 800b240:	4618      	mov	r0, r3
 800b242:	f7fe f8a5 	bl	8009390 <unlock_fs>
 800b246:	2302      	movs	r3, #2
 800b248:	e0c1      	b.n	800b3ce <f_read+0x2d4>
 800b24a:	69ba      	ldr	r2, [r7, #24]
 800b24c:	69fb      	ldr	r3, [r7, #28]
 800b24e:	4413      	add	r3, r2
 800b250:	61bb      	str	r3, [r7, #24]
 800b252:	687b      	ldr	r3, [r7, #4]
 800b254:	0a5b      	lsrs	r3, r3, #9
 800b256:	62bb      	str	r3, [r7, #40]	@ 0x28
 800b258:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800b25a:	2b00      	cmp	r3, #0
 800b25c:	d03e      	beq.n	800b2dc <f_read+0x1e2>
 800b25e:	69fa      	ldr	r2, [r7, #28]
 800b260:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800b262:	4413      	add	r3, r2
 800b264:	697a      	ldr	r2, [r7, #20]
 800b266:	8952      	ldrh	r2, [r2, #10]
 800b268:	4293      	cmp	r3, r2
 800b26a:	d905      	bls.n	800b278 <f_read+0x17e>
 800b26c:	697b      	ldr	r3, [r7, #20]
 800b26e:	895b      	ldrh	r3, [r3, #10]
 800b270:	461a      	mov	r2, r3
 800b272:	69fb      	ldr	r3, [r7, #28]
 800b274:	1ad3      	subs	r3, r2, r3
 800b276:	62bb      	str	r3, [r7, #40]	@ 0x28
 800b278:	697b      	ldr	r3, [r7, #20]
 800b27a:	7858      	ldrb	r0, [r3, #1]
 800b27c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800b27e:	69ba      	ldr	r2, [r7, #24]
 800b280:	6a79      	ldr	r1, [r7, #36]	@ 0x24
 800b282:	f7fd ff11 	bl	80090a8 <disk_read>
 800b286:	4603      	mov	r3, r0
 800b288:	2b00      	cmp	r3, #0
 800b28a:	d009      	beq.n	800b2a0 <f_read+0x1a6>
 800b28c:	68fb      	ldr	r3, [r7, #12]
 800b28e:	2201      	movs	r2, #1
 800b290:	755a      	strb	r2, [r3, #21]
 800b292:	697b      	ldr	r3, [r7, #20]
 800b294:	2101      	movs	r1, #1
 800b296:	4618      	mov	r0, r3
 800b298:	f7fe f87a 	bl	8009390 <unlock_fs>
 800b29c:	2301      	movs	r3, #1
 800b29e:	e096      	b.n	800b3ce <f_read+0x2d4>
 800b2a0:	68fb      	ldr	r3, [r7, #12]
 800b2a2:	7d1b      	ldrb	r3, [r3, #20]
 800b2a4:	b25b      	sxtb	r3, r3
 800b2a6:	2b00      	cmp	r3, #0
 800b2a8:	da14      	bge.n	800b2d4 <f_read+0x1da>
 800b2aa:	68fb      	ldr	r3, [r7, #12]
 800b2ac:	6a1a      	ldr	r2, [r3, #32]
 800b2ae:	69bb      	ldr	r3, [r7, #24]
 800b2b0:	1ad3      	subs	r3, r2, r3
 800b2b2:	6aba      	ldr	r2, [r7, #40]	@ 0x28
 800b2b4:	429a      	cmp	r2, r3
 800b2b6:	d90d      	bls.n	800b2d4 <f_read+0x1da>
 800b2b8:	68fb      	ldr	r3, [r7, #12]
 800b2ba:	6a1a      	ldr	r2, [r3, #32]
 800b2bc:	69bb      	ldr	r3, [r7, #24]
 800b2be:	1ad3      	subs	r3, r2, r3
 800b2c0:	025b      	lsls	r3, r3, #9
 800b2c2:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 800b2c4:	18d0      	adds	r0, r2, r3
 800b2c6:	68fb      	ldr	r3, [r7, #12]
 800b2c8:	3330      	adds	r3, #48	@ 0x30
 800b2ca:	f44f 7200 	mov.w	r2, #512	@ 0x200
 800b2ce:	4619      	mov	r1, r3
 800b2d0:	f7fd ffca 	bl	8009268 <mem_cpy>
 800b2d4:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800b2d6:	025b      	lsls	r3, r3, #9
 800b2d8:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800b2da:	e05a      	b.n	800b392 <f_read+0x298>
 800b2dc:	68fb      	ldr	r3, [r7, #12]
 800b2de:	6a1b      	ldr	r3, [r3, #32]
 800b2e0:	69ba      	ldr	r2, [r7, #24]
 800b2e2:	429a      	cmp	r2, r3
 800b2e4:	d038      	beq.n	800b358 <f_read+0x25e>
 800b2e6:	68fb      	ldr	r3, [r7, #12]
 800b2e8:	7d1b      	ldrb	r3, [r3, #20]
 800b2ea:	b25b      	sxtb	r3, r3
 800b2ec:	2b00      	cmp	r3, #0
 800b2ee:	da1d      	bge.n	800b32c <f_read+0x232>
 800b2f0:	697b      	ldr	r3, [r7, #20]
 800b2f2:	7858      	ldrb	r0, [r3, #1]
 800b2f4:	68fb      	ldr	r3, [r7, #12]
 800b2f6:	f103 0130 	add.w	r1, r3, #48	@ 0x30
 800b2fa:	68fb      	ldr	r3, [r7, #12]
 800b2fc:	6a1a      	ldr	r2, [r3, #32]
 800b2fe:	2301      	movs	r3, #1
 800b300:	f7fd fef2 	bl	80090e8 <disk_write>
 800b304:	4603      	mov	r3, r0
 800b306:	2b00      	cmp	r3, #0
 800b308:	d009      	beq.n	800b31e <f_read+0x224>
 800b30a:	68fb      	ldr	r3, [r7, #12]
 800b30c:	2201      	movs	r2, #1
 800b30e:	755a      	strb	r2, [r3, #21]
 800b310:	697b      	ldr	r3, [r7, #20]
 800b312:	2101      	movs	r1, #1
 800b314:	4618      	mov	r0, r3
 800b316:	f7fe f83b 	bl	8009390 <unlock_fs>
 800b31a:	2301      	movs	r3, #1
 800b31c:	e057      	b.n	800b3ce <f_read+0x2d4>
 800b31e:	68fb      	ldr	r3, [r7, #12]
 800b320:	7d1b      	ldrb	r3, [r3, #20]
 800b322:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
 800b326:	b2da      	uxtb	r2, r3
 800b328:	68fb      	ldr	r3, [r7, #12]
 800b32a:	751a      	strb	r2, [r3, #20]
 800b32c:	697b      	ldr	r3, [r7, #20]
 800b32e:	7858      	ldrb	r0, [r3, #1]
 800b330:	68fb      	ldr	r3, [r7, #12]
 800b332:	f103 0130 	add.w	r1, r3, #48	@ 0x30
 800b336:	2301      	movs	r3, #1
 800b338:	69ba      	ldr	r2, [r7, #24]
 800b33a:	f7fd feb5 	bl	80090a8 <disk_read>
 800b33e:	4603      	mov	r3, r0
 800b340:	2b00      	cmp	r3, #0
 800b342:	d009      	beq.n	800b358 <f_read+0x25e>
 800b344:	68fb      	ldr	r3, [r7, #12]
 800b346:	2201      	movs	r2, #1
 800b348:	755a      	strb	r2, [r3, #21]
 800b34a:	697b      	ldr	r3, [r7, #20]
 800b34c:	2101      	movs	r1, #1
 800b34e:	4618      	mov	r0, r3
 800b350:	f7fe f81e 	bl	8009390 <unlock_fs>
 800b354:	2301      	movs	r3, #1
 800b356:	e03a      	b.n	800b3ce <f_read+0x2d4>
 800b358:	68fb      	ldr	r3, [r7, #12]
 800b35a:	69ba      	ldr	r2, [r7, #24]
 800b35c:	621a      	str	r2, [r3, #32]
 800b35e:	68fb      	ldr	r3, [r7, #12]
 800b360:	699b      	ldr	r3, [r3, #24]
 800b362:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800b366:	f5c3 7300 	rsb	r3, r3, #512	@ 0x200
 800b36a:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800b36c:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800b36e:	687b      	ldr	r3, [r7, #4]
 800b370:	429a      	cmp	r2, r3
 800b372:	d901      	bls.n	800b378 <f_read+0x27e>
 800b374:	687b      	ldr	r3, [r7, #4]
 800b376:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800b378:	68fb      	ldr	r3, [r7, #12]
 800b37a:	f103 0230 	add.w	r2, r3, #48	@ 0x30
 800b37e:	68fb      	ldr	r3, [r7, #12]
 800b380:	699b      	ldr	r3, [r3, #24]
 800b382:	f3c3 0308 	ubfx	r3, r3, #0, #9
 800b386:	4413      	add	r3, r2
 800b388:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800b38a:	4619      	mov	r1, r3
 800b38c:	6a78      	ldr	r0, [r7, #36]	@ 0x24
 800b38e:	f7fd ff6b 	bl	8009268 <mem_cpy>
 800b392:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 800b394:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800b396:	4413      	add	r3, r2
 800b398:	627b      	str	r3, [r7, #36]	@ 0x24
 800b39a:	68fb      	ldr	r3, [r7, #12]
 800b39c:	699a      	ldr	r2, [r3, #24]
 800b39e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800b3a0:	441a      	add	r2, r3
 800b3a2:	68fb      	ldr	r3, [r7, #12]
 800b3a4:	619a      	str	r2, [r3, #24]
 800b3a6:	683b      	ldr	r3, [r7, #0]
 800b3a8:	681a      	ldr	r2, [r3, #0]
 800b3aa:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800b3ac:	441a      	add	r2, r3
 800b3ae:	683b      	ldr	r3, [r7, #0]
 800b3b0:	601a      	str	r2, [r3, #0]
 800b3b2:	687a      	ldr	r2, [r7, #4]
 800b3b4:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800b3b6:	1ad3      	subs	r3, r2, r3
 800b3b8:	607b      	str	r3, [r7, #4]
 800b3ba:	687b      	ldr	r3, [r7, #4]
 800b3bc:	2b00      	cmp	r3, #0
 800b3be:	f47f aee3 	bne.w	800b188 <f_read+0x8e>
 800b3c2:	697b      	ldr	r3, [r7, #20]
 800b3c4:	2100      	movs	r1, #0
 800b3c6:	4618      	mov	r0, r3
 800b3c8:	f7fd ffe2 	bl	8009390 <unlock_fs>
 800b3cc:	2300      	movs	r3, #0
 800b3ce:	4618      	mov	r0, r3
 800b3d0:	3738      	adds	r7, #56	@ 0x38
 800b3d2:	46bd      	mov	sp, r7
 800b3d4:	bd80      	pop	{r7, pc}

0800b3d6 <f_sync>:
 800b3d6:	b580      	push	{r7, lr}
 800b3d8:	b086      	sub	sp, #24
 800b3da:	af00      	add	r7, sp, #0
 800b3dc:	6078      	str	r0, [r7, #4]
 800b3de:	687b      	ldr	r3, [r7, #4]
 800b3e0:	f107 0208 	add.w	r2, r7, #8
 800b3e4:	4611      	mov	r1, r2
 800b3e6:	4618      	mov	r0, r3
 800b3e8:	f7ff fc1a 	bl	800ac20 <validate>
 800b3ec:	4603      	mov	r3, r0
 800b3ee:	75fb      	strb	r3, [r7, #23]
 800b3f0:	7dfb      	ldrb	r3, [r7, #23]
 800b3f2:	2b00      	cmp	r3, #0
 800b3f4:	d16d      	bne.n	800b4d2 <f_sync+0xfc>
 800b3f6:	687b      	ldr	r3, [r7, #4]
 800b3f8:	7d1b      	ldrb	r3, [r3, #20]
 800b3fa:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 800b3fe:	2b00      	cmp	r3, #0
 800b400:	d067      	beq.n	800b4d2 <f_sync+0xfc>
 800b402:	687b      	ldr	r3, [r7, #4]
 800b404:	7d1b      	ldrb	r3, [r3, #20]
 800b406:	b25b      	sxtb	r3, r3
 800b408:	2b00      	cmp	r3, #0
 800b40a:	da1a      	bge.n	800b442 <f_sync+0x6c>
 800b40c:	68bb      	ldr	r3, [r7, #8]
 800b40e:	7858      	ldrb	r0, [r3, #1]
 800b410:	687b      	ldr	r3, [r7, #4]
 800b412:	f103 0130 	add.w	r1, r3, #48	@ 0x30
 800b416:	687b      	ldr	r3, [r7, #4]
 800b418:	6a1a      	ldr	r2, [r3, #32]
 800b41a:	2301      	movs	r3, #1
 800b41c:	f7fd fe64 	bl	80090e8 <disk_write>
 800b420:	4603      	mov	r3, r0
 800b422:	2b00      	cmp	r3, #0
 800b424:	d006      	beq.n	800b434 <f_sync+0x5e>
 800b426:	68bb      	ldr	r3, [r7, #8]
 800b428:	2101      	movs	r1, #1
 800b42a:	4618      	mov	r0, r3
 800b42c:	f7fd ffb0 	bl	8009390 <unlock_fs>
 800b430:	2301      	movs	r3, #1
 800b432:	e055      	b.n	800b4e0 <f_sync+0x10a>
 800b434:	687b      	ldr	r3, [r7, #4]
 800b436:	7d1b      	ldrb	r3, [r3, #20]
 800b438:	f003 037f 	and.w	r3, r3, #127	@ 0x7f
 800b43c:	b2da      	uxtb	r2, r3
 800b43e:	687b      	ldr	r3, [r7, #4]
 800b440:	751a      	strb	r2, [r3, #20]
 800b442:	f000 fc6b 	bl	800bd1c <get_fattime>
 800b446:	6138      	str	r0, [r7, #16]
 800b448:	68ba      	ldr	r2, [r7, #8]
 800b44a:	687b      	ldr	r3, [r7, #4]
 800b44c:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 800b44e:	4619      	mov	r1, r3
 800b450:	4610      	mov	r0, r2
 800b452:	f7fe f969 	bl	8009728 <move_window>
 800b456:	4603      	mov	r3, r0
 800b458:	75fb      	strb	r3, [r7, #23]
 800b45a:	7dfb      	ldrb	r3, [r7, #23]
 800b45c:	2b00      	cmp	r3, #0
 800b45e:	d138      	bne.n	800b4d2 <f_sync+0xfc>
 800b460:	687b      	ldr	r3, [r7, #4]
 800b462:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 800b464:	60fb      	str	r3, [r7, #12]
 800b466:	68fb      	ldr	r3, [r7, #12]
 800b468:	330b      	adds	r3, #11
 800b46a:	781a      	ldrb	r2, [r3, #0]
 800b46c:	68fb      	ldr	r3, [r7, #12]
 800b46e:	330b      	adds	r3, #11
 800b470:	f042 0220 	orr.w	r2, r2, #32
 800b474:	b2d2      	uxtb	r2, r2
 800b476:	701a      	strb	r2, [r3, #0]
 800b478:	687b      	ldr	r3, [r7, #4]
 800b47a:	6818      	ldr	r0, [r3, #0]
 800b47c:	687b      	ldr	r3, [r7, #4]
 800b47e:	689b      	ldr	r3, [r3, #8]
 800b480:	461a      	mov	r2, r3
 800b482:	68f9      	ldr	r1, [r7, #12]
 800b484:	f7fe fe73 	bl	800a16e <st_clust>
 800b488:	68fb      	ldr	r3, [r7, #12]
 800b48a:	f103 021c 	add.w	r2, r3, #28
 800b48e:	687b      	ldr	r3, [r7, #4]
 800b490:	68db      	ldr	r3, [r3, #12]
 800b492:	4619      	mov	r1, r3
 800b494:	4610      	mov	r0, r2
 800b496:	f7fd febb 	bl	8009210 <st_dword>
 800b49a:	68fb      	ldr	r3, [r7, #12]
 800b49c:	3316      	adds	r3, #22
 800b49e:	6939      	ldr	r1, [r7, #16]
 800b4a0:	4618      	mov	r0, r3
 800b4a2:	f7fd feb5 	bl	8009210 <st_dword>
 800b4a6:	68fb      	ldr	r3, [r7, #12]
 800b4a8:	3312      	adds	r3, #18
 800b4aa:	2100      	movs	r1, #0
 800b4ac:	4618      	mov	r0, r3
 800b4ae:	f7fd fe94 	bl	80091da <st_word>
 800b4b2:	68bb      	ldr	r3, [r7, #8]
 800b4b4:	2201      	movs	r2, #1
 800b4b6:	70da      	strb	r2, [r3, #3]
 800b4b8:	68bb      	ldr	r3, [r7, #8]
 800b4ba:	4618      	mov	r0, r3
 800b4bc:	f7fe f962 	bl	8009784 <sync_fs>
 800b4c0:	4603      	mov	r3, r0
 800b4c2:	75fb      	strb	r3, [r7, #23]
 800b4c4:	687b      	ldr	r3, [r7, #4]
 800b4c6:	7d1b      	ldrb	r3, [r3, #20]
 800b4c8:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 800b4cc:	b2da      	uxtb	r2, r3
 800b4ce:	687b      	ldr	r3, [r7, #4]
 800b4d0:	751a      	strb	r2, [r3, #20]
 800b4d2:	68bb      	ldr	r3, [r7, #8]
 800b4d4:	7dfa      	ldrb	r2, [r7, #23]
 800b4d6:	4611      	mov	r1, r2
 800b4d8:	4618      	mov	r0, r3
 800b4da:	f7fd ff59 	bl	8009390 <unlock_fs>
 800b4de:	7dfb      	ldrb	r3, [r7, #23]
 800b4e0:	4618      	mov	r0, r3
 800b4e2:	3718      	adds	r7, #24
 800b4e4:	46bd      	mov	sp, r7
 800b4e6:	bd80      	pop	{r7, pc}

0800b4e8 <f_close>:
 800b4e8:	b580      	push	{r7, lr}
 800b4ea:	b084      	sub	sp, #16
 800b4ec:	af00      	add	r7, sp, #0
 800b4ee:	6078      	str	r0, [r7, #4]
 800b4f0:	6878      	ldr	r0, [r7, #4]
 800b4f2:	f7ff ff70 	bl	800b3d6 <f_sync>
 800b4f6:	4603      	mov	r3, r0
 800b4f8:	73fb      	strb	r3, [r7, #15]
 800b4fa:	7bfb      	ldrb	r3, [r7, #15]
 800b4fc:	2b00      	cmp	r3, #0
 800b4fe:	d11d      	bne.n	800b53c <f_close+0x54>
 800b500:	687b      	ldr	r3, [r7, #4]
 800b502:	f107 0208 	add.w	r2, r7, #8
 800b506:	4611      	mov	r1, r2
 800b508:	4618      	mov	r0, r3
 800b50a:	f7ff fb89 	bl	800ac20 <validate>
 800b50e:	4603      	mov	r3, r0
 800b510:	73fb      	strb	r3, [r7, #15]
 800b512:	7bfb      	ldrb	r3, [r7, #15]
 800b514:	2b00      	cmp	r3, #0
 800b516:	d111      	bne.n	800b53c <f_close+0x54>
 800b518:	687b      	ldr	r3, [r7, #4]
 800b51a:	691b      	ldr	r3, [r3, #16]
 800b51c:	4618      	mov	r0, r3
 800b51e:	f7fe f85f 	bl	80095e0 <dec_lock>
 800b522:	4603      	mov	r3, r0
 800b524:	73fb      	strb	r3, [r7, #15]
 800b526:	7bfb      	ldrb	r3, [r7, #15]
 800b528:	2b00      	cmp	r3, #0
 800b52a:	d102      	bne.n	800b532 <f_close+0x4a>
 800b52c:	687b      	ldr	r3, [r7, #4]
 800b52e:	2200      	movs	r2, #0
 800b530:	601a      	str	r2, [r3, #0]
 800b532:	68bb      	ldr	r3, [r7, #8]
 800b534:	2100      	movs	r1, #0
 800b536:	4618      	mov	r0, r3
 800b538:	f7fd ff2a 	bl	8009390 <unlock_fs>
 800b53c:	7bfb      	ldrb	r3, [r7, #15]
 800b53e:	4618      	mov	r0, r3
 800b540:	3710      	adds	r7, #16
 800b542:	46bd      	mov	sp, r7
 800b544:	bd80      	pop	{r7, pc}

0800b546 <f_opendir>:
 800b546:	b580      	push	{r7, lr}
 800b548:	b086      	sub	sp, #24
 800b54a:	af00      	add	r7, sp, #0
 800b54c:	6078      	str	r0, [r7, #4]
 800b54e:	6039      	str	r1, [r7, #0]
 800b550:	687b      	ldr	r3, [r7, #4]
 800b552:	2b00      	cmp	r3, #0
 800b554:	d101      	bne.n	800b55a <f_opendir+0x14>
 800b556:	2309      	movs	r3, #9
 800b558:	e06a      	b.n	800b630 <f_opendir+0xea>
 800b55a:	687b      	ldr	r3, [r7, #4]
 800b55c:	613b      	str	r3, [r7, #16]
 800b55e:	f107 010c 	add.w	r1, r7, #12
 800b562:	463b      	mov	r3, r7
 800b564:	2200      	movs	r2, #0
 800b566:	4618      	mov	r0, r3
 800b568:	f7ff f906 	bl	800a778 <find_volume>
 800b56c:	4603      	mov	r3, r0
 800b56e:	75fb      	strb	r3, [r7, #23]
 800b570:	7dfb      	ldrb	r3, [r7, #23]
 800b572:	2b00      	cmp	r3, #0
 800b574:	d14f      	bne.n	800b616 <f_opendir+0xd0>
 800b576:	68fa      	ldr	r2, [r7, #12]
 800b578:	693b      	ldr	r3, [r7, #16]
 800b57a:	601a      	str	r2, [r3, #0]
 800b57c:	683b      	ldr	r3, [r7, #0]
 800b57e:	4619      	mov	r1, r3
 800b580:	6878      	ldr	r0, [r7, #4]
 800b582:	f7fe ffed 	bl	800a560 <follow_path>
 800b586:	4603      	mov	r3, r0
 800b588:	75fb      	strb	r3, [r7, #23]
 800b58a:	7dfb      	ldrb	r3, [r7, #23]
 800b58c:	2b00      	cmp	r3, #0
 800b58e:	d13d      	bne.n	800b60c <f_opendir+0xc6>
 800b590:	687b      	ldr	r3, [r7, #4]
 800b592:	f893 302f 	ldrb.w	r3, [r3, #47]	@ 0x2f
 800b596:	b25b      	sxtb	r3, r3
 800b598:	2b00      	cmp	r3, #0
 800b59a:	db12      	blt.n	800b5c2 <f_opendir+0x7c>
 800b59c:	693b      	ldr	r3, [r7, #16]
 800b59e:	799b      	ldrb	r3, [r3, #6]
 800b5a0:	f003 0310 	and.w	r3, r3, #16
 800b5a4:	2b00      	cmp	r3, #0
 800b5a6:	d00a      	beq.n	800b5be <f_opendir+0x78>
 800b5a8:	68fa      	ldr	r2, [r7, #12]
 800b5aa:	687b      	ldr	r3, [r7, #4]
 800b5ac:	6a1b      	ldr	r3, [r3, #32]
 800b5ae:	4619      	mov	r1, r3
 800b5b0:	4610      	mov	r0, r2
 800b5b2:	f7fe fdbd 	bl	800a130 <ld_clust>
 800b5b6:	4602      	mov	r2, r0
 800b5b8:	693b      	ldr	r3, [r7, #16]
 800b5ba:	609a      	str	r2, [r3, #8]
 800b5bc:	e001      	b.n	800b5c2 <f_opendir+0x7c>
 800b5be:	2305      	movs	r3, #5
 800b5c0:	75fb      	strb	r3, [r7, #23]
 800b5c2:	7dfb      	ldrb	r3, [r7, #23]
 800b5c4:	2b00      	cmp	r3, #0
 800b5c6:	d121      	bne.n	800b60c <f_opendir+0xc6>
 800b5c8:	68fb      	ldr	r3, [r7, #12]
 800b5ca:	88da      	ldrh	r2, [r3, #6]
 800b5cc:	693b      	ldr	r3, [r7, #16]
 800b5ce:	809a      	strh	r2, [r3, #4]
 800b5d0:	2100      	movs	r1, #0
 800b5d2:	6878      	ldr	r0, [r7, #4]
 800b5d4:	f7fe fc25 	bl	8009e22 <dir_sdi>
 800b5d8:	4603      	mov	r3, r0
 800b5da:	75fb      	strb	r3, [r7, #23]
 800b5dc:	7dfb      	ldrb	r3, [r7, #23]
 800b5de:	2b00      	cmp	r3, #0
 800b5e0:	d114      	bne.n	800b60c <f_opendir+0xc6>
 800b5e2:	693b      	ldr	r3, [r7, #16]
 800b5e4:	689b      	ldr	r3, [r3, #8]
 800b5e6:	2b00      	cmp	r3, #0
 800b5e8:	d00d      	beq.n	800b606 <f_opendir+0xc0>
 800b5ea:	2100      	movs	r1, #0
 800b5ec:	6878      	ldr	r0, [r7, #4]
 800b5ee:	f7fd ff69 	bl	80094c4 <inc_lock>
 800b5f2:	4602      	mov	r2, r0
 800b5f4:	693b      	ldr	r3, [r7, #16]
 800b5f6:	611a      	str	r2, [r3, #16]
 800b5f8:	693b      	ldr	r3, [r7, #16]
 800b5fa:	691b      	ldr	r3, [r3, #16]
 800b5fc:	2b00      	cmp	r3, #0
 800b5fe:	d105      	bne.n	800b60c <f_opendir+0xc6>
 800b600:	2312      	movs	r3, #18
 800b602:	75fb      	strb	r3, [r7, #23]
 800b604:	e002      	b.n	800b60c <f_opendir+0xc6>
 800b606:	693b      	ldr	r3, [r7, #16]
 800b608:	2200      	movs	r2, #0
 800b60a:	611a      	str	r2, [r3, #16]
 800b60c:	7dfb      	ldrb	r3, [r7, #23]
 800b60e:	2b04      	cmp	r3, #4
 800b610:	d101      	bne.n	800b616 <f_opendir+0xd0>
 800b612:	2305      	movs	r3, #5
 800b614:	75fb      	strb	r3, [r7, #23]
 800b616:	7dfb      	ldrb	r3, [r7, #23]
 800b618:	2b00      	cmp	r3, #0
 800b61a:	d002      	beq.n	800b622 <f_opendir+0xdc>
 800b61c:	693b      	ldr	r3, [r7, #16]
 800b61e:	2200      	movs	r2, #0
 800b620:	601a      	str	r2, [r3, #0]
 800b622:	68fb      	ldr	r3, [r7, #12]
 800b624:	7dfa      	ldrb	r2, [r7, #23]
 800b626:	4611      	mov	r1, r2
 800b628:	4618      	mov	r0, r3
 800b62a:	f7fd feb1 	bl	8009390 <unlock_fs>
 800b62e:	7dfb      	ldrb	r3, [r7, #23]
 800b630:	4618      	mov	r0, r3
 800b632:	3718      	adds	r7, #24
 800b634:	46bd      	mov	sp, r7
 800b636:	bd80      	pop	{r7, pc}

0800b638 <f_closedir>:
 800b638:	b580      	push	{r7, lr}
 800b63a:	b084      	sub	sp, #16
 800b63c:	af00      	add	r7, sp, #0
 800b63e:	6078      	str	r0, [r7, #4]
 800b640:	687b      	ldr	r3, [r7, #4]
 800b642:	f107 0208 	add.w	r2, r7, #8
 800b646:	4611      	mov	r1, r2
 800b648:	4618      	mov	r0, r3
 800b64a:	f7ff fae9 	bl	800ac20 <validate>
 800b64e:	4603      	mov	r3, r0
 800b650:	73fb      	strb	r3, [r7, #15]
 800b652:	7bfb      	ldrb	r3, [r7, #15]
 800b654:	2b00      	cmp	r3, #0
 800b656:	d115      	bne.n	800b684 <f_closedir+0x4c>
 800b658:	687b      	ldr	r3, [r7, #4]
 800b65a:	691b      	ldr	r3, [r3, #16]
 800b65c:	2b00      	cmp	r3, #0
 800b65e:	d006      	beq.n	800b66e <f_closedir+0x36>
 800b660:	687b      	ldr	r3, [r7, #4]
 800b662:	691b      	ldr	r3, [r3, #16]
 800b664:	4618      	mov	r0, r3
 800b666:	f7fd ffbb 	bl	80095e0 <dec_lock>
 800b66a:	4603      	mov	r3, r0
 800b66c:	73fb      	strb	r3, [r7, #15]
 800b66e:	7bfb      	ldrb	r3, [r7, #15]
 800b670:	2b00      	cmp	r3, #0
 800b672:	d102      	bne.n	800b67a <f_closedir+0x42>
 800b674:	687b      	ldr	r3, [r7, #4]
 800b676:	2200      	movs	r2, #0
 800b678:	601a      	str	r2, [r3, #0]
 800b67a:	68bb      	ldr	r3, [r7, #8]
 800b67c:	2100      	movs	r1, #0
 800b67e:	4618      	mov	r0, r3
 800b680:	f7fd fe86 	bl	8009390 <unlock_fs>
 800b684:	7bfb      	ldrb	r3, [r7, #15]
 800b686:	4618      	mov	r0, r3
 800b688:	3710      	adds	r7, #16
 800b68a:	46bd      	mov	sp, r7
 800b68c:	bd80      	pop	{r7, pc}

0800b68e <f_readdir>:
 800b68e:	b580      	push	{r7, lr}
 800b690:	b084      	sub	sp, #16
 800b692:	af00      	add	r7, sp, #0
 800b694:	6078      	str	r0, [r7, #4]
 800b696:	6039      	str	r1, [r7, #0]
 800b698:	687b      	ldr	r3, [r7, #4]
 800b69a:	f107 0208 	add.w	r2, r7, #8
 800b69e:	4611      	mov	r1, r2
 800b6a0:	4618      	mov	r0, r3
 800b6a2:	f7ff fabd 	bl	800ac20 <validate>
 800b6a6:	4603      	mov	r3, r0
 800b6a8:	73fb      	strb	r3, [r7, #15]
 800b6aa:	7bfb      	ldrb	r3, [r7, #15]
 800b6ac:	2b00      	cmp	r3, #0
 800b6ae:	d126      	bne.n	800b6fe <f_readdir+0x70>
 800b6b0:	683b      	ldr	r3, [r7, #0]
 800b6b2:	2b00      	cmp	r3, #0
 800b6b4:	d106      	bne.n	800b6c4 <f_readdir+0x36>
 800b6b6:	2100      	movs	r1, #0
 800b6b8:	6878      	ldr	r0, [r7, #4]
 800b6ba:	f7fe fbb2 	bl	8009e22 <dir_sdi>
 800b6be:	4603      	mov	r3, r0
 800b6c0:	73fb      	strb	r3, [r7, #15]
 800b6c2:	e01c      	b.n	800b6fe <f_readdir+0x70>
 800b6c4:	2100      	movs	r1, #0
 800b6c6:	6878      	ldr	r0, [r7, #4]
 800b6c8:	f7fe fd71 	bl	800a1ae <dir_read>
 800b6cc:	4603      	mov	r3, r0
 800b6ce:	73fb      	strb	r3, [r7, #15]
 800b6d0:	7bfb      	ldrb	r3, [r7, #15]
 800b6d2:	2b04      	cmp	r3, #4
 800b6d4:	d101      	bne.n	800b6da <f_readdir+0x4c>
 800b6d6:	2300      	movs	r3, #0
 800b6d8:	73fb      	strb	r3, [r7, #15]
 800b6da:	7bfb      	ldrb	r3, [r7, #15]
 800b6dc:	2b00      	cmp	r3, #0
 800b6de:	d10e      	bne.n	800b6fe <f_readdir+0x70>
 800b6e0:	6839      	ldr	r1, [r7, #0]
 800b6e2:	6878      	ldr	r0, [r7, #4]
 800b6e4:	f7fe fe47 	bl	800a376 <get_fileinfo>
 800b6e8:	2100      	movs	r1, #0
 800b6ea:	6878      	ldr	r0, [r7, #4]
 800b6ec:	f7fe fc14 	bl	8009f18 <dir_next>
 800b6f0:	4603      	mov	r3, r0
 800b6f2:	73fb      	strb	r3, [r7, #15]
 800b6f4:	7bfb      	ldrb	r3, [r7, #15]
 800b6f6:	2b04      	cmp	r3, #4
 800b6f8:	d101      	bne.n	800b6fe <f_readdir+0x70>
 800b6fa:	2300      	movs	r3, #0
 800b6fc:	73fb      	strb	r3, [r7, #15]
 800b6fe:	68bb      	ldr	r3, [r7, #8]
 800b700:	7bfa      	ldrb	r2, [r7, #15]
 800b702:	4611      	mov	r1, r2
 800b704:	4618      	mov	r0, r3
 800b706:	f7fd fe43 	bl	8009390 <unlock_fs>
 800b70a:	7bfb      	ldrb	r3, [r7, #15]
 800b70c:	4618      	mov	r0, r3
 800b70e:	3710      	adds	r7, #16
 800b710:	46bd      	mov	sp, r7
 800b712:	bd80      	pop	{r7, pc}

0800b714 <FATFS_LinkDriverEx>:
 800b714:	b480      	push	{r7}
 800b716:	b087      	sub	sp, #28
 800b718:	af00      	add	r7, sp, #0
 800b71a:	60f8      	str	r0, [r7, #12]
 800b71c:	60b9      	str	r1, [r7, #8]
 800b71e:	4613      	mov	r3, r2
 800b720:	71fb      	strb	r3, [r7, #7]
 800b722:	2301      	movs	r3, #1
 800b724:	75fb      	strb	r3, [r7, #23]
 800b726:	2300      	movs	r3, #0
 800b728:	75bb      	strb	r3, [r7, #22]
 800b72a:	4b1f      	ldr	r3, [pc, #124]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b72c:	7a5b      	ldrb	r3, [r3, #9]
 800b72e:	b2db      	uxtb	r3, r3
 800b730:	2b00      	cmp	r3, #0
 800b732:	d131      	bne.n	800b798 <FATFS_LinkDriverEx+0x84>
 800b734:	4b1c      	ldr	r3, [pc, #112]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b736:	7a5b      	ldrb	r3, [r3, #9]
 800b738:	b2db      	uxtb	r3, r3
 800b73a:	461a      	mov	r2, r3
 800b73c:	4b1a      	ldr	r3, [pc, #104]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b73e:	2100      	movs	r1, #0
 800b740:	5499      	strb	r1, [r3, r2]
 800b742:	4b19      	ldr	r3, [pc, #100]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b744:	7a5b      	ldrb	r3, [r3, #9]
 800b746:	b2db      	uxtb	r3, r3
 800b748:	4a17      	ldr	r2, [pc, #92]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b74a:	009b      	lsls	r3, r3, #2
 800b74c:	4413      	add	r3, r2
 800b74e:	68fa      	ldr	r2, [r7, #12]
 800b750:	605a      	str	r2, [r3, #4]
 800b752:	4b15      	ldr	r3, [pc, #84]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b754:	7a5b      	ldrb	r3, [r3, #9]
 800b756:	b2db      	uxtb	r3, r3
 800b758:	461a      	mov	r2, r3
 800b75a:	4b13      	ldr	r3, [pc, #76]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b75c:	4413      	add	r3, r2
 800b75e:	79fa      	ldrb	r2, [r7, #7]
 800b760:	721a      	strb	r2, [r3, #8]
 800b762:	4b11      	ldr	r3, [pc, #68]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b764:	7a5b      	ldrb	r3, [r3, #9]
 800b766:	b2db      	uxtb	r3, r3
 800b768:	1c5a      	adds	r2, r3, #1
 800b76a:	b2d1      	uxtb	r1, r2
 800b76c:	4a0e      	ldr	r2, [pc, #56]	@ (800b7a8 <FATFS_LinkDriverEx+0x94>)
 800b76e:	7251      	strb	r1, [r2, #9]
 800b770:	75bb      	strb	r3, [r7, #22]
 800b772:	7dbb      	ldrb	r3, [r7, #22]
 800b774:	3330      	adds	r3, #48	@ 0x30
 800b776:	b2da      	uxtb	r2, r3
 800b778:	68bb      	ldr	r3, [r7, #8]
 800b77a:	701a      	strb	r2, [r3, #0]
 800b77c:	68bb      	ldr	r3, [r7, #8]
 800b77e:	3301      	adds	r3, #1
 800b780:	223a      	movs	r2, #58	@ 0x3a
 800b782:	701a      	strb	r2, [r3, #0]
 800b784:	68bb      	ldr	r3, [r7, #8]
 800b786:	3302      	adds	r3, #2
 800b788:	222f      	movs	r2, #47	@ 0x2f
 800b78a:	701a      	strb	r2, [r3, #0]
 800b78c:	68bb      	ldr	r3, [r7, #8]
 800b78e:	3303      	adds	r3, #3
 800b790:	2200      	movs	r2, #0
 800b792:	701a      	strb	r2, [r3, #0]
 800b794:	2300      	movs	r3, #0
 800b796:	75fb      	strb	r3, [r7, #23]
 800b798:	7dfb      	ldrb	r3, [r7, #23]
 800b79a:	4618      	mov	r0, r3
 800b79c:	371c      	adds	r7, #28
 800b79e:	46bd      	mov	sp, r7
 800b7a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 800b7a4:	4770      	bx	lr
 800b7a6:	bf00      	nop
 800b7a8:	200413f4 	.word	0x200413f4

0800b7ac <FATFS_LinkDriver>:
 800b7ac:	b580      	push	{r7, lr}
 800b7ae:	b082      	sub	sp, #8
 800b7b0:	af00      	add	r7, sp, #0
 800b7b2:	6078      	str	r0, [r7, #4]
 800b7b4:	6039      	str	r1, [r7, #0]
 800b7b6:	2200      	movs	r2, #0
 800b7b8:	6839      	ldr	r1, [r7, #0]
 800b7ba:	6878      	ldr	r0, [r7, #4]
 800b7bc:	f7ff ffaa 	bl	800b714 <FATFS_LinkDriverEx>
 800b7c0:	4603      	mov	r3, r0
 800b7c2:	4618      	mov	r0, r3
 800b7c4:	3708      	adds	r7, #8
 800b7c6:	46bd      	mov	sp, r7
 800b7c8:	bd80      	pop	{r7, pc}

0800b7ca <ff_cre_syncobj>:
 800b7ca:	b580      	push	{r7, lr}
 800b7cc:	b084      	sub	sp, #16
 800b7ce:	af00      	add	r7, sp, #0
 800b7d0:	4603      	mov	r3, r0
 800b7d2:	6039      	str	r1, [r7, #0]
 800b7d4:	71fb      	strb	r3, [r7, #7]
 800b7d6:	2200      	movs	r2, #0
 800b7d8:	2101      	movs	r1, #1
 800b7da:	2001      	movs	r0, #1
 800b7dc:	f7fc fcce 	bl	800817c <osSemaphoreNew>
 800b7e0:	4602      	mov	r2, r0
 800b7e2:	683b      	ldr	r3, [r7, #0]
 800b7e4:	601a      	str	r2, [r3, #0]
 800b7e6:	683b      	ldr	r3, [r7, #0]
 800b7e8:	681b      	ldr	r3, [r3, #0]
 800b7ea:	2b00      	cmp	r3, #0
 800b7ec:	bf14      	ite	ne
 800b7ee:	2301      	movne	r3, #1
 800b7f0:	2300      	moveq	r3, #0
 800b7f2:	b2db      	uxtb	r3, r3
 800b7f4:	60fb      	str	r3, [r7, #12]
 800b7f6:	68fb      	ldr	r3, [r7, #12]
 800b7f8:	4618      	mov	r0, r3
 800b7fa:	3710      	adds	r7, #16
 800b7fc:	46bd      	mov	sp, r7
 800b7fe:	bd80      	pop	{r7, pc}

0800b800 <ff_del_syncobj>:
 800b800:	b580      	push	{r7, lr}
 800b802:	b082      	sub	sp, #8
 800b804:	af00      	add	r7, sp, #0
 800b806:	6078      	str	r0, [r7, #4]
 800b808:	6878      	ldr	r0, [r7, #4]
 800b80a:	f7fc fe11 	bl	8008430 <osSemaphoreDelete>
 800b80e:	2301      	movs	r3, #1
 800b810:	4618      	mov	r0, r3
 800b812:	3708      	adds	r7, #8
 800b814:	46bd      	mov	sp, r7
 800b816:	bd80      	pop	{r7, pc}

0800b818 <ff_req_grant>:
 800b818:	b580      	push	{r7, lr}
 800b81a:	b084      	sub	sp, #16
 800b81c:	af00      	add	r7, sp, #0
 800b81e:	6078      	str	r0, [r7, #4]
 800b820:	2300      	movs	r3, #0
 800b822:	60fb      	str	r3, [r7, #12]
 800b824:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
 800b828:	6878      	ldr	r0, [r7, #4]
 800b82a:	f7fc fd43 	bl	80082b4 <osSemaphoreAcquire>
 800b82e:	4603      	mov	r3, r0
 800b830:	2b00      	cmp	r3, #0
 800b832:	d101      	bne.n	800b838 <ff_req_grant+0x20>
 800b834:	2301      	movs	r3, #1
 800b836:	60fb      	str	r3, [r7, #12]
 800b838:	68fb      	ldr	r3, [r7, #12]
 800b83a:	4618      	mov	r0, r3
 800b83c:	3710      	adds	r7, #16
 800b83e:	46bd      	mov	sp, r7
 800b840:	bd80      	pop	{r7, pc}

0800b842 <ff_rel_grant>:
 800b842:	b580      	push	{r7, lr}
 800b844:	b082      	sub	sp, #8
 800b846:	af00      	add	r7, sp, #0
 800b848:	6078      	str	r0, [r7, #4]
 800b84a:	6878      	ldr	r0, [r7, #4]
 800b84c:	f7fc fd98 	bl	8008380 <osSemaphoreRelease>
 800b850:	bf00      	nop
 800b852:	3708      	adds	r7, #8
 800b854:	46bd      	mov	sp, r7
 800b856:	bd80      	pop	{r7, pc}

0800b858 <BSP_SD_Init>:
 800b858:	b580      	push	{r7, lr}
 800b85a:	b082      	sub	sp, #8
 800b85c:	af00      	add	r7, sp, #0
 800b85e:	2300      	movs	r3, #0
 800b860:	71fb      	strb	r3, [r7, #7]
 800b862:	f000 f888 	bl	800b976 <BSP_SD_IsDetected>
 800b866:	4603      	mov	r3, r0
 800b868:	2b01      	cmp	r3, #1
 800b86a:	d001      	beq.n	800b870 <BSP_SD_Init+0x18>
 800b86c:	2302      	movs	r3, #2
 800b86e:	e005      	b.n	800b87c <BSP_SD_Init+0x24>
 800b870:	4804      	ldr	r0, [pc, #16]	@ (800b884 <BSP_SD_Init+0x2c>)
 800b872:	f7f7 fc2d 	bl	80030d0 <HAL_SD_Init>
 800b876:	4603      	mov	r3, r0
 800b878:	71fb      	strb	r3, [r7, #7]
 800b87a:	79fb      	ldrb	r3, [r7, #7]
 800b87c:	4618      	mov	r0, r3
 800b87e:	3708      	adds	r7, #8
 800b880:	46bd      	mov	sp, r7
 800b882:	bd80      	pop	{r7, pc}
 800b884:	20049704 	.word	0x20049704

0800b888 <BSP_SD_ReadBlocks_DMA>:
 800b888:	b580      	push	{r7, lr}
 800b88a:	b086      	sub	sp, #24
 800b88c:	af00      	add	r7, sp, #0
 800b88e:	60f8      	str	r0, [r7, #12]
 800b890:	60b9      	str	r1, [r7, #8]
 800b892:	607a      	str	r2, [r7, #4]
 800b894:	2300      	movs	r3, #0
 800b896:	75fb      	strb	r3, [r7, #23]
 800b898:	687b      	ldr	r3, [r7, #4]
 800b89a:	68ba      	ldr	r2, [r7, #8]
 800b89c:	68f9      	ldr	r1, [r7, #12]
 800b89e:	4806      	ldr	r0, [pc, #24]	@ (800b8b8 <BSP_SD_ReadBlocks_DMA+0x30>)
 800b8a0:	f7f7 fcc6 	bl	8003230 <HAL_SD_ReadBlocks_DMA>
 800b8a4:	4603      	mov	r3, r0
 800b8a6:	2b00      	cmp	r3, #0
 800b8a8:	d001      	beq.n	800b8ae <BSP_SD_ReadBlocks_DMA+0x26>
 800b8aa:	2301      	movs	r3, #1
 800b8ac:	75fb      	strb	r3, [r7, #23]
 800b8ae:	7dfb      	ldrb	r3, [r7, #23]
 800b8b0:	4618      	mov	r0, r3
 800b8b2:	3718      	adds	r7, #24
 800b8b4:	46bd      	mov	sp, r7
 800b8b6:	bd80      	pop	{r7, pc}
 800b8b8:	20049704 	.word	0x20049704

0800b8bc <BSP_SD_WriteBlocks_DMA>:
 800b8bc:	b580      	push	{r7, lr}
 800b8be:	b086      	sub	sp, #24
 800b8c0:	af00      	add	r7, sp, #0
 800b8c2:	60f8      	str	r0, [r7, #12]
 800b8c4:	60b9      	str	r1, [r7, #8]
 800b8c6:	607a      	str	r2, [r7, #4]
 800b8c8:	2300      	movs	r3, #0
 800b8ca:	75fb      	strb	r3, [r7, #23]
 800b8cc:	687b      	ldr	r3, [r7, #4]
 800b8ce:	68ba      	ldr	r2, [r7, #8]
 800b8d0:	68f9      	ldr	r1, [r7, #12]
 800b8d2:	4806      	ldr	r0, [pc, #24]	@ (800b8ec <BSP_SD_WriteBlocks_DMA+0x30>)
 800b8d4:	f7f7 fd8e 	bl	80033f4 <HAL_SD_WriteBlocks_DMA>
 800b8d8:	4603      	mov	r3, r0
 800b8da:	2b00      	cmp	r3, #0
 800b8dc:	d001      	beq.n	800b8e2 <BSP_SD_WriteBlocks_DMA+0x26>
 800b8de:	2301      	movs	r3, #1
 800b8e0:	75fb      	strb	r3, [r7, #23]
 800b8e2:	7dfb      	ldrb	r3, [r7, #23]
 800b8e4:	4618      	mov	r0, r3
 800b8e6:	3718      	adds	r7, #24
 800b8e8:	46bd      	mov	sp, r7
 800b8ea:	bd80      	pop	{r7, pc}
 800b8ec:	20049704 	.word	0x20049704

0800b8f0 <BSP_SD_GetCardState>:
 800b8f0:	b580      	push	{r7, lr}
 800b8f2:	af00      	add	r7, sp, #0
 800b8f4:	4805      	ldr	r0, [pc, #20]	@ (800b90c <BSP_SD_GetCardState+0x1c>)
 800b8f6:	f7f8 f9b3 	bl	8003c60 <HAL_SD_GetCardState>
 800b8fa:	4603      	mov	r3, r0
 800b8fc:	2b04      	cmp	r3, #4
 800b8fe:	bf14      	ite	ne
 800b900:	2301      	movne	r3, #1
 800b902:	2300      	moveq	r3, #0
 800b904:	b2db      	uxtb	r3, r3
 800b906:	4618      	mov	r0, r3
 800b908:	bd80      	pop	{r7, pc}
 800b90a:	bf00      	nop
 800b90c:	20049704 	.word	0x20049704

0800b910 <BSP_SD_GetCardInfo>:
 800b910:	b580      	push	{r7, lr}
 800b912:	b082      	sub	sp, #8
 800b914:	af00      	add	r7, sp, #0
 800b916:	6078      	str	r0, [r7, #4]
 800b918:	6879      	ldr	r1, [r7, #4]
 800b91a:	4803      	ldr	r0, [pc, #12]	@ (800b928 <BSP_SD_GetCardInfo+0x18>)
 800b91c:	f7f8 f974 	bl	8003c08 <HAL_SD_GetCardInfo>
 800b920:	bf00      	nop
 800b922:	3708      	adds	r7, #8
 800b924:	46bd      	mov	sp, r7
 800b926:	bd80      	pop	{r7, pc}
 800b928:	20049704 	.word	0x20049704

0800b92c <HAL_SD_AbortCallback>:
 800b92c:	b580      	push	{r7, lr}
 800b92e:	b082      	sub	sp, #8
 800b930:	af00      	add	r7, sp, #0
 800b932:	6078      	str	r0, [r7, #4]
 800b934:	f000 f818 	bl	800b968 <BSP_SD_AbortCallback>
 800b938:	bf00      	nop
 800b93a:	3708      	adds	r7, #8
 800b93c:	46bd      	mov	sp, r7
 800b93e:	bd80      	pop	{r7, pc}

0800b940 <HAL_SD_TxCpltCallback>:
 800b940:	b580      	push	{r7, lr}
 800b942:	b082      	sub	sp, #8
 800b944:	af00      	add	r7, sp, #0
 800b946:	6078      	str	r0, [r7, #4]
 800b948:	f000 f99c 	bl	800bc84 <BSP_SD_WriteCpltCallback>
 800b94c:	bf00      	nop
 800b94e:	3708      	adds	r7, #8
 800b950:	46bd      	mov	sp, r7
 800b952:	bd80      	pop	{r7, pc}

0800b954 <HAL_SD_RxCpltCallback>:
 800b954:	b580      	push	{r7, lr}
 800b956:	b082      	sub	sp, #8
 800b958:	af00      	add	r7, sp, #0
 800b95a:	6078      	str	r0, [r7, #4]
 800b95c:	f000 f9a4 	bl	800bca8 <BSP_SD_ReadCpltCallback>
 800b960:	bf00      	nop
 800b962:	3708      	adds	r7, #8
 800b964:	46bd      	mov	sp, r7
 800b966:	bd80      	pop	{r7, pc}

0800b968 <BSP_SD_AbortCallback>:
 800b968:	b480      	push	{r7}
 800b96a:	af00      	add	r7, sp, #0
 800b96c:	bf00      	nop
 800b96e:	46bd      	mov	sp, r7
 800b970:	f85d 7b04 	ldr.w	r7, [sp], #4
 800b974:	4770      	bx	lr

0800b976 <BSP_SD_IsDetected>:
 800b976:	b580      	push	{r7, lr}
 800b978:	b082      	sub	sp, #8
 800b97a:	af00      	add	r7, sp, #0
 800b97c:	2301      	movs	r3, #1
 800b97e:	71fb      	strb	r3, [r7, #7]
 800b980:	f000 f9a4 	bl	800bccc <BSP_PlatformIsDetected>
 800b984:	4603      	mov	r3, r0
 800b986:	2b00      	cmp	r3, #0
 800b988:	d101      	bne.n	800b98e <BSP_SD_IsDetected+0x18>
 800b98a:	2300      	movs	r3, #0
 800b98c:	71fb      	strb	r3, [r7, #7]
 800b98e:	79fb      	ldrb	r3, [r7, #7]
 800b990:	b2db      	uxtb	r3, r3
 800b992:	4618      	mov	r0, r3
 800b994:	3708      	adds	r7, #8
 800b996:	46bd      	mov	sp, r7
 800b998:	bd80      	pop	{r7, pc}

0800b99a <SD_CheckStatusWithTimeout>:
 800b99a:	b580      	push	{r7, lr}
 800b99c:	b084      	sub	sp, #16
 800b99e:	af00      	add	r7, sp, #0
 800b9a0:	6078      	str	r0, [r7, #4]
 800b9a2:	f7fc faef 	bl	8007f84 <osKernelGetTickCount>
 800b9a6:	60f8      	str	r0, [r7, #12]
 800b9a8:	e006      	b.n	800b9b8 <SD_CheckStatusWithTimeout+0x1e>
 800b9aa:	f7ff ffa1 	bl	800b8f0 <BSP_SD_GetCardState>
 800b9ae:	4603      	mov	r3, r0
 800b9b0:	2b00      	cmp	r3, #0
 800b9b2:	d101      	bne.n	800b9b8 <SD_CheckStatusWithTimeout+0x1e>
 800b9b4:	2300      	movs	r3, #0
 800b9b6:	e009      	b.n	800b9cc <SD_CheckStatusWithTimeout+0x32>
 800b9b8:	f7fc fae4 	bl	8007f84 <osKernelGetTickCount>
 800b9bc:	4602      	mov	r2, r0
 800b9be:	68fb      	ldr	r3, [r7, #12]
 800b9c0:	1ad3      	subs	r3, r2, r3
 800b9c2:	687a      	ldr	r2, [r7, #4]
 800b9c4:	429a      	cmp	r2, r3
 800b9c6:	d8f0      	bhi.n	800b9aa <SD_CheckStatusWithTimeout+0x10>
 800b9c8:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800b9cc:	4618      	mov	r0, r3
 800b9ce:	3710      	adds	r7, #16
 800b9d0:	46bd      	mov	sp, r7
 800b9d2:	bd80      	pop	{r7, pc}

0800b9d4 <SD_CheckStatus>:
 800b9d4:	b580      	push	{r7, lr}
 800b9d6:	b082      	sub	sp, #8
 800b9d8:	af00      	add	r7, sp, #0
 800b9da:	4603      	mov	r3, r0
 800b9dc:	71fb      	strb	r3, [r7, #7]
 800b9de:	4b0b      	ldr	r3, [pc, #44]	@ (800ba0c <SD_CheckStatus+0x38>)
 800b9e0:	2201      	movs	r2, #1
 800b9e2:	701a      	strb	r2, [r3, #0]
 800b9e4:	f7ff ff84 	bl	800b8f0 <BSP_SD_GetCardState>
 800b9e8:	4603      	mov	r3, r0
 800b9ea:	2b00      	cmp	r3, #0
 800b9ec:	d107      	bne.n	800b9fe <SD_CheckStatus+0x2a>
 800b9ee:	4b07      	ldr	r3, [pc, #28]	@ (800ba0c <SD_CheckStatus+0x38>)
 800b9f0:	781b      	ldrb	r3, [r3, #0]
 800b9f2:	b2db      	uxtb	r3, r3
 800b9f4:	f023 0301 	bic.w	r3, r3, #1
 800b9f8:	b2da      	uxtb	r2, r3
 800b9fa:	4b04      	ldr	r3, [pc, #16]	@ (800ba0c <SD_CheckStatus+0x38>)
 800b9fc:	701a      	strb	r2, [r3, #0]
 800b9fe:	4b03      	ldr	r3, [pc, #12]	@ (800ba0c <SD_CheckStatus+0x38>)
 800ba00:	781b      	ldrb	r3, [r3, #0]
 800ba02:	b2db      	uxtb	r3, r3
 800ba04:	4618      	mov	r0, r3
 800ba06:	3708      	adds	r7, #8
 800ba08:	46bd      	mov	sp, r7
 800ba0a:	bd80      	pop	{r7, pc}
 800ba0c:	20000010 	.word	0x20000010

0800ba10 <SD_initialize>:
 800ba10:	b580      	push	{r7, lr}
 800ba12:	b082      	sub	sp, #8
 800ba14:	af00      	add	r7, sp, #0
 800ba16:	4603      	mov	r3, r0
 800ba18:	71fb      	strb	r3, [r7, #7]
 800ba1a:	4b1c      	ldr	r3, [pc, #112]	@ (800ba8c <SD_initialize+0x7c>)
 800ba1c:	2201      	movs	r2, #1
 800ba1e:	701a      	strb	r2, [r3, #0]
 800ba20:	f7fc fa58 	bl	8007ed4 <osKernelGetState>
 800ba24:	4603      	mov	r3, r0
 800ba26:	2b02      	cmp	r3, #2
 800ba28:	d129      	bne.n	800ba7e <SD_initialize+0x6e>
 800ba2a:	f7ff ff15 	bl	800b858 <BSP_SD_Init>
 800ba2e:	4603      	mov	r3, r0
 800ba30:	2b00      	cmp	r3, #0
 800ba32:	d107      	bne.n	800ba44 <SD_initialize+0x34>
 800ba34:	79fb      	ldrb	r3, [r7, #7]
 800ba36:	4618      	mov	r0, r3
 800ba38:	f7ff ffcc 	bl	800b9d4 <SD_CheckStatus>
 800ba3c:	4603      	mov	r3, r0
 800ba3e:	461a      	mov	r2, r3
 800ba40:	4b12      	ldr	r3, [pc, #72]	@ (800ba8c <SD_initialize+0x7c>)
 800ba42:	701a      	strb	r2, [r3, #0]
 800ba44:	4b11      	ldr	r3, [pc, #68]	@ (800ba8c <SD_initialize+0x7c>)
 800ba46:	781b      	ldrb	r3, [r3, #0]
 800ba48:	b2db      	uxtb	r3, r3
 800ba4a:	2b01      	cmp	r3, #1
 800ba4c:	d017      	beq.n	800ba7e <SD_initialize+0x6e>
 800ba4e:	4b10      	ldr	r3, [pc, #64]	@ (800ba90 <SD_initialize+0x80>)
 800ba50:	681b      	ldr	r3, [r3, #0]
 800ba52:	2b00      	cmp	r3, #0
 800ba54:	d107      	bne.n	800ba66 <SD_initialize+0x56>
 800ba56:	2200      	movs	r2, #0
 800ba58:	2102      	movs	r1, #2
 800ba5a:	200a      	movs	r0, #10
 800ba5c:	f7fc fd1e 	bl	800849c <osMessageQueueNew>
 800ba60:	4603      	mov	r3, r0
 800ba62:	4a0b      	ldr	r2, [pc, #44]	@ (800ba90 <SD_initialize+0x80>)
 800ba64:	6013      	str	r3, [r2, #0]
 800ba66:	4b0a      	ldr	r3, [pc, #40]	@ (800ba90 <SD_initialize+0x80>)
 800ba68:	681b      	ldr	r3, [r3, #0]
 800ba6a:	2b00      	cmp	r3, #0
 800ba6c:	d107      	bne.n	800ba7e <SD_initialize+0x6e>
 800ba6e:	4b07      	ldr	r3, [pc, #28]	@ (800ba8c <SD_initialize+0x7c>)
 800ba70:	781b      	ldrb	r3, [r3, #0]
 800ba72:	b2db      	uxtb	r3, r3
 800ba74:	f043 0301 	orr.w	r3, r3, #1
 800ba78:	b2da      	uxtb	r2, r3
 800ba7a:	4b04      	ldr	r3, [pc, #16]	@ (800ba8c <SD_initialize+0x7c>)
 800ba7c:	701a      	strb	r2, [r3, #0]
 800ba7e:	4b03      	ldr	r3, [pc, #12]	@ (800ba8c <SD_initialize+0x7c>)
 800ba80:	781b      	ldrb	r3, [r3, #0]
 800ba82:	b2db      	uxtb	r3, r3
 800ba84:	4618      	mov	r0, r3
 800ba86:	3708      	adds	r7, #8
 800ba88:	46bd      	mov	sp, r7
 800ba8a:	bd80      	pop	{r7, pc}
 800ba8c:	20000010 	.word	0x20000010
 800ba90:	20041400 	.word	0x20041400

0800ba94 <SD_status>:
 800ba94:	b580      	push	{r7, lr}
 800ba96:	b082      	sub	sp, #8
 800ba98:	af00      	add	r7, sp, #0
 800ba9a:	4603      	mov	r3, r0
 800ba9c:	71fb      	strb	r3, [r7, #7]
 800ba9e:	79fb      	ldrb	r3, [r7, #7]
 800baa0:	4618      	mov	r0, r3
 800baa2:	f7ff ff97 	bl	800b9d4 <SD_CheckStatus>
 800baa6:	4603      	mov	r3, r0
 800baa8:	4618      	mov	r0, r3
 800baaa:	3708      	adds	r7, #8
 800baac:	46bd      	mov	sp, r7
 800baae:	bd80      	pop	{r7, pc}

0800bab0 <SD_read>:
 800bab0:	b580      	push	{r7, lr}
 800bab2:	b088      	sub	sp, #32
 800bab4:	af00      	add	r7, sp, #0
 800bab6:	60b9      	str	r1, [r7, #8]
 800bab8:	607a      	str	r2, [r7, #4]
 800baba:	603b      	str	r3, [r7, #0]
 800babc:	4603      	mov	r3, r0
 800babe:	73fb      	strb	r3, [r7, #15]
 800bac0:	2301      	movs	r3, #1
 800bac2:	77fb      	strb	r3, [r7, #31]
 800bac4:	f247 5030 	movw	r0, #30000	@ 0x7530
 800bac8:	f7ff ff67 	bl	800b99a <SD_CheckStatusWithTimeout>
 800bacc:	4603      	mov	r3, r0
 800bace:	2b00      	cmp	r3, #0
 800bad0:	da01      	bge.n	800bad6 <SD_read+0x26>
 800bad2:	7ffb      	ldrb	r3, [r7, #31]
 800bad4:	e02f      	b.n	800bb36 <SD_read+0x86>
 800bad6:	683a      	ldr	r2, [r7, #0]
 800bad8:	6879      	ldr	r1, [r7, #4]
 800bada:	68b8      	ldr	r0, [r7, #8]
 800badc:	f7ff fed4 	bl	800b888 <BSP_SD_ReadBlocks_DMA>
 800bae0:	4603      	mov	r3, r0
 800bae2:	77bb      	strb	r3, [r7, #30]
 800bae4:	7fbb      	ldrb	r3, [r7, #30]
 800bae6:	2b00      	cmp	r3, #0
 800bae8:	d124      	bne.n	800bb34 <SD_read+0x84>
 800baea:	4b15      	ldr	r3, [pc, #84]	@ (800bb40 <SD_read+0x90>)
 800baec:	6818      	ldr	r0, [r3, #0]
 800baee:	f107 0112 	add.w	r1, r7, #18
 800baf2:	f247 5330 	movw	r3, #30000	@ 0x7530
 800baf6:	2200      	movs	r2, #0
 800baf8:	f7fc fdca 	bl	8008690 <osMessageQueueGet>
 800bafc:	61b8      	str	r0, [r7, #24]
 800bafe:	69bb      	ldr	r3, [r7, #24]
 800bb00:	2b00      	cmp	r3, #0
 800bb02:	d117      	bne.n	800bb34 <SD_read+0x84>
 800bb04:	8a7b      	ldrh	r3, [r7, #18]
 800bb06:	2b01      	cmp	r3, #1
 800bb08:	d114      	bne.n	800bb34 <SD_read+0x84>
 800bb0a:	f7fc fa3b 	bl	8007f84 <osKernelGetTickCount>
 800bb0e:	6178      	str	r0, [r7, #20]
 800bb10:	e007      	b.n	800bb22 <SD_read+0x72>
 800bb12:	f7ff feed 	bl	800b8f0 <BSP_SD_GetCardState>
 800bb16:	4603      	mov	r3, r0
 800bb18:	2b00      	cmp	r3, #0
 800bb1a:	d102      	bne.n	800bb22 <SD_read+0x72>
 800bb1c:	2300      	movs	r3, #0
 800bb1e:	77fb      	strb	r3, [r7, #31]
 800bb20:	e008      	b.n	800bb34 <SD_read+0x84>
 800bb22:	f7fc fa2f 	bl	8007f84 <osKernelGetTickCount>
 800bb26:	4602      	mov	r2, r0
 800bb28:	697b      	ldr	r3, [r7, #20]
 800bb2a:	1ad3      	subs	r3, r2, r3
 800bb2c:	f247 522f 	movw	r2, #29999	@ 0x752f
 800bb30:	4293      	cmp	r3, r2
 800bb32:	d9ee      	bls.n	800bb12 <SD_read+0x62>
 800bb34:	7ffb      	ldrb	r3, [r7, #31]
 800bb36:	4618      	mov	r0, r3
 800bb38:	3720      	adds	r7, #32
 800bb3a:	46bd      	mov	sp, r7
 800bb3c:	bd80      	pop	{r7, pc}
 800bb3e:	bf00      	nop
 800bb40:	20041400 	.word	0x20041400

0800bb44 <SD_write>:
 800bb44:	b580      	push	{r7, lr}
 800bb46:	b088      	sub	sp, #32
 800bb48:	af00      	add	r7, sp, #0
 800bb4a:	60b9      	str	r1, [r7, #8]
 800bb4c:	607a      	str	r2, [r7, #4]
 800bb4e:	603b      	str	r3, [r7, #0]
 800bb50:	4603      	mov	r3, r0
 800bb52:	73fb      	strb	r3, [r7, #15]
 800bb54:	2301      	movs	r3, #1
 800bb56:	77fb      	strb	r3, [r7, #31]
 800bb58:	f247 5030 	movw	r0, #30000	@ 0x7530
 800bb5c:	f7ff ff1d 	bl	800b99a <SD_CheckStatusWithTimeout>
 800bb60:	4603      	mov	r3, r0
 800bb62:	2b00      	cmp	r3, #0
 800bb64:	da01      	bge.n	800bb6a <SD_write+0x26>
 800bb66:	7ffb      	ldrb	r3, [r7, #31]
 800bb68:	e02d      	b.n	800bbc6 <SD_write+0x82>
 800bb6a:	683a      	ldr	r2, [r7, #0]
 800bb6c:	6879      	ldr	r1, [r7, #4]
 800bb6e:	68b8      	ldr	r0, [r7, #8]
 800bb70:	f7ff fea4 	bl	800b8bc <BSP_SD_WriteBlocks_DMA>
 800bb74:	4603      	mov	r3, r0
 800bb76:	2b00      	cmp	r3, #0
 800bb78:	d124      	bne.n	800bbc4 <SD_write+0x80>
 800bb7a:	4b15      	ldr	r3, [pc, #84]	@ (800bbd0 <SD_write+0x8c>)
 800bb7c:	6818      	ldr	r0, [r3, #0]
 800bb7e:	f107 0112 	add.w	r1, r7, #18
 800bb82:	f247 5330 	movw	r3, #30000	@ 0x7530
 800bb86:	2200      	movs	r2, #0
 800bb88:	f7fc fd82 	bl	8008690 <osMessageQueueGet>
 800bb8c:	61b8      	str	r0, [r7, #24]
 800bb8e:	69bb      	ldr	r3, [r7, #24]
 800bb90:	2b00      	cmp	r3, #0
 800bb92:	d117      	bne.n	800bbc4 <SD_write+0x80>
 800bb94:	8a7b      	ldrh	r3, [r7, #18]
 800bb96:	2b02      	cmp	r3, #2
 800bb98:	d114      	bne.n	800bbc4 <SD_write+0x80>
 800bb9a:	f7fc f9f3 	bl	8007f84 <osKernelGetTickCount>
 800bb9e:	6178      	str	r0, [r7, #20]
 800bba0:	e007      	b.n	800bbb2 <SD_write+0x6e>
 800bba2:	f7ff fea5 	bl	800b8f0 <BSP_SD_GetCardState>
 800bba6:	4603      	mov	r3, r0
 800bba8:	2b00      	cmp	r3, #0
 800bbaa:	d102      	bne.n	800bbb2 <SD_write+0x6e>
 800bbac:	2300      	movs	r3, #0
 800bbae:	77fb      	strb	r3, [r7, #31]
 800bbb0:	e008      	b.n	800bbc4 <SD_write+0x80>
 800bbb2:	f7fc f9e7 	bl	8007f84 <osKernelGetTickCount>
 800bbb6:	4602      	mov	r2, r0
 800bbb8:	697b      	ldr	r3, [r7, #20]
 800bbba:	1ad3      	subs	r3, r2, r3
 800bbbc:	f247 522f 	movw	r2, #29999	@ 0x752f
 800bbc0:	4293      	cmp	r3, r2
 800bbc2:	d9ee      	bls.n	800bba2 <SD_write+0x5e>
 800bbc4:	7ffb      	ldrb	r3, [r7, #31]
 800bbc6:	4618      	mov	r0, r3
 800bbc8:	3720      	adds	r7, #32
 800bbca:	46bd      	mov	sp, r7
 800bbcc:	bd80      	pop	{r7, pc}
 800bbce:	bf00      	nop
 800bbd0:	20041400 	.word	0x20041400

0800bbd4 <SD_ioctl>:
 800bbd4:	b580      	push	{r7, lr}
 800bbd6:	b08c      	sub	sp, #48	@ 0x30
 800bbd8:	af00      	add	r7, sp, #0
 800bbda:	4603      	mov	r3, r0
 800bbdc:	603a      	str	r2, [r7, #0]
 800bbde:	71fb      	strb	r3, [r7, #7]
 800bbe0:	460b      	mov	r3, r1
 800bbe2:	71bb      	strb	r3, [r7, #6]
 800bbe4:	2301      	movs	r3, #1
 800bbe6:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bbea:	4b25      	ldr	r3, [pc, #148]	@ (800bc80 <SD_ioctl+0xac>)
 800bbec:	781b      	ldrb	r3, [r3, #0]
 800bbee:	b2db      	uxtb	r3, r3
 800bbf0:	f003 0301 	and.w	r3, r3, #1
 800bbf4:	2b00      	cmp	r3, #0
 800bbf6:	d001      	beq.n	800bbfc <SD_ioctl+0x28>
 800bbf8:	2303      	movs	r3, #3
 800bbfa:	e03c      	b.n	800bc76 <SD_ioctl+0xa2>
 800bbfc:	79bb      	ldrb	r3, [r7, #6]
 800bbfe:	2b03      	cmp	r3, #3
 800bc00:	d834      	bhi.n	800bc6c <SD_ioctl+0x98>
 800bc02:	a201      	add	r2, pc, #4	@ (adr r2, 800bc08 <SD_ioctl+0x34>)
 800bc04:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800bc08:	0800bc19 	.word	0x0800bc19
 800bc0c:	0800bc21 	.word	0x0800bc21
 800bc10:	0800bc39 	.word	0x0800bc39
 800bc14:	0800bc53 	.word	0x0800bc53
 800bc18:	2300      	movs	r3, #0
 800bc1a:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bc1e:	e028      	b.n	800bc72 <SD_ioctl+0x9e>
 800bc20:	f107 030c 	add.w	r3, r7, #12
 800bc24:	4618      	mov	r0, r3
 800bc26:	f7ff fe73 	bl	800b910 <BSP_SD_GetCardInfo>
 800bc2a:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
 800bc2c:	683b      	ldr	r3, [r7, #0]
 800bc2e:	601a      	str	r2, [r3, #0]
 800bc30:	2300      	movs	r3, #0
 800bc32:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bc36:	e01c      	b.n	800bc72 <SD_ioctl+0x9e>
 800bc38:	f107 030c 	add.w	r3, r7, #12
 800bc3c:	4618      	mov	r0, r3
 800bc3e:	f7ff fe67 	bl	800b910 <BSP_SD_GetCardInfo>
 800bc42:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800bc44:	b29a      	uxth	r2, r3
 800bc46:	683b      	ldr	r3, [r7, #0]
 800bc48:	801a      	strh	r2, [r3, #0]
 800bc4a:	2300      	movs	r3, #0
 800bc4c:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bc50:	e00f      	b.n	800bc72 <SD_ioctl+0x9e>
 800bc52:	f107 030c 	add.w	r3, r7, #12
 800bc56:	4618      	mov	r0, r3
 800bc58:	f7ff fe5a 	bl	800b910 <BSP_SD_GetCardInfo>
 800bc5c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800bc5e:	0a5a      	lsrs	r2, r3, #9
 800bc60:	683b      	ldr	r3, [r7, #0]
 800bc62:	601a      	str	r2, [r3, #0]
 800bc64:	2300      	movs	r3, #0
 800bc66:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bc6a:	e002      	b.n	800bc72 <SD_ioctl+0x9e>
 800bc6c:	2304      	movs	r3, #4
 800bc6e:	f887 302f 	strb.w	r3, [r7, #47]	@ 0x2f
 800bc72:	f897 302f 	ldrb.w	r3, [r7, #47]	@ 0x2f
 800bc76:	4618      	mov	r0, r3
 800bc78:	3730      	adds	r7, #48	@ 0x30
 800bc7a:	46bd      	mov	sp, r7
 800bc7c:	bd80      	pop	{r7, pc}
 800bc7e:	bf00      	nop
 800bc80:	20000010 	.word	0x20000010

0800bc84 <BSP_SD_WriteCpltCallback>:
 800bc84:	b580      	push	{r7, lr}
 800bc86:	b082      	sub	sp, #8
 800bc88:	af00      	add	r7, sp, #0
 800bc8a:	2302      	movs	r3, #2
 800bc8c:	80fb      	strh	r3, [r7, #6]
 800bc8e:	4b05      	ldr	r3, [pc, #20]	@ (800bca4 <BSP_SD_WriteCpltCallback+0x20>)
 800bc90:	6818      	ldr	r0, [r3, #0]
 800bc92:	1db9      	adds	r1, r7, #6
 800bc94:	2300      	movs	r3, #0
 800bc96:	2200      	movs	r2, #0
 800bc98:	f7fc fc86 	bl	80085a8 <osMessageQueuePut>
 800bc9c:	bf00      	nop
 800bc9e:	3708      	adds	r7, #8
 800bca0:	46bd      	mov	sp, r7
 800bca2:	bd80      	pop	{r7, pc}
 800bca4:	20041400 	.word	0x20041400

0800bca8 <BSP_SD_ReadCpltCallback>:
 800bca8:	b580      	push	{r7, lr}
 800bcaa:	b082      	sub	sp, #8
 800bcac:	af00      	add	r7, sp, #0
 800bcae:	2301      	movs	r3, #1
 800bcb0:	80fb      	strh	r3, [r7, #6]
 800bcb2:	4b05      	ldr	r3, [pc, #20]	@ (800bcc8 <BSP_SD_ReadCpltCallback+0x20>)
 800bcb4:	6818      	ldr	r0, [r3, #0]
 800bcb6:	1db9      	adds	r1, r7, #6
 800bcb8:	2300      	movs	r3, #0
 800bcba:	2200      	movs	r2, #0
 800bcbc:	f7fc fc74 	bl	80085a8 <osMessageQueuePut>
 800bcc0:	bf00      	nop
 800bcc2:	3708      	adds	r7, #8
 800bcc4:	46bd      	mov	sp, r7
 800bcc6:	bd80      	pop	{r7, pc}
 800bcc8:	20041400 	.word	0x20041400

0800bccc <BSP_PlatformIsDetected>:
 800bccc:	b580      	push	{r7, lr}
 800bcce:	b082      	sub	sp, #8
 800bcd0:	af00      	add	r7, sp, #0
 800bcd2:	2301      	movs	r3, #1
 800bcd4:	71fb      	strb	r3, [r7, #7]
 800bcd6:	2140      	movs	r1, #64	@ 0x40
 800bcd8:	4806      	ldr	r0, [pc, #24]	@ (800bcf4 <BSP_PlatformIsDetected+0x28>)
 800bcda:	f7f6 f803 	bl	8001ce4 <HAL_GPIO_ReadPin>
 800bcde:	4603      	mov	r3, r0
 800bce0:	2b00      	cmp	r3, #0
 800bce2:	d001      	beq.n	800bce8 <BSP_PlatformIsDetected+0x1c>
 800bce4:	2300      	movs	r3, #0
 800bce6:	71fb      	strb	r3, [r7, #7]
 800bce8:	79fb      	ldrb	r3, [r7, #7]
 800bcea:	4618      	mov	r0, r3
 800bcec:	3708      	adds	r7, #8
 800bcee:	46bd      	mov	sp, r7
 800bcf0:	bd80      	pop	{r7, pc}
 800bcf2:	bf00      	nop
 800bcf4:	40020400 	.word	0x40020400

0800bcf8 <MX_FATFS_Init>:
 800bcf8:	b580      	push	{r7, lr}
 800bcfa:	af00      	add	r7, sp, #0
 800bcfc:	4904      	ldr	r1, [pc, #16]	@ (800bd10 <MX_FATFS_Init+0x18>)
 800bcfe:	4805      	ldr	r0, [pc, #20]	@ (800bd14 <MX_FATFS_Init+0x1c>)
 800bd00:	f7ff fd54 	bl	800b7ac <FATFS_LinkDriver>
 800bd04:	4603      	mov	r3, r0
 800bd06:	461a      	mov	r2, r3
 800bd08:	4b03      	ldr	r3, [pc, #12]	@ (800bd18 <MX_FATFS_Init+0x20>)
 800bd0a:	701a      	strb	r2, [r3, #0]
 800bd0c:	bf00      	nop
 800bd0e:	bd80      	pop	{r7, pc}
 800bd10:	20041408 	.word	0x20041408
 800bd14:	0800dae0 	.word	0x0800dae0
 800bd18:	20041404 	.word	0x20041404

0800bd1c <get_fattime>:
 800bd1c:	b480      	push	{r7}
 800bd1e:	af00      	add	r7, sp, #0
 800bd20:	2300      	movs	r3, #0
 800bd22:	4618      	mov	r0, r3
 800bd24:	46bd      	mov	sp, r7
 800bd26:	f85d 7b04 	ldr.w	r7, [sp], #4
 800bd2a:	4770      	bx	lr

0800bd2c <main>:
 800bd2c:	b580      	push	{r7, lr}
 800bd2e:	af00      	add	r7, sp, #0
 800bd30:	f7f6 fc1a 	bl	8002568 <HAL_Init>
 800bd34:	f000 f814 	bl	800bd60 <SystemClock_Config>
 800bd38:	f000 f884 	bl	800be44 <MX_GPIO_Init>
 800bd3c:	f000 f9ec 	bl	800c118 <MX_DMA_Init>
 800bd40:	f000 fbe6 	bl	800c510 <MX_USART3_UART_Init>
 800bd44:	f000 fa0e 	bl	800c164 <MX_SDMMC1_SD_Init>
 800bd48:	f7ff ffd6 	bl	800bcf8 <MX_FATFS_Init>
 800bd4c:	f000 fb38 	bl	800c3c0 <MX_SPI1_Init>
 800bd50:	f7fc f88c 	bl	8007e6c <osKernelInitialize>
 800bd54:	f000 f9ae 	bl	800c0b4 <MX_FREERTOS_Init>
 800bd58:	f7fc f8de 	bl	8007f18 <osKernelStart>
 800bd5c:	bf00      	nop
 800bd5e:	e7fd      	b.n	800bd5c <main+0x30>

0800bd60 <SystemClock_Config>:
 800bd60:	b580      	push	{r7, lr}
 800bd62:	b094      	sub	sp, #80	@ 0x50
 800bd64:	af00      	add	r7, sp, #0
 800bd66:	f107 0320 	add.w	r3, r7, #32
 800bd6a:	2230      	movs	r2, #48	@ 0x30
 800bd6c:	2100      	movs	r1, #0
 800bd6e:	4618      	mov	r0, r3
 800bd70:	f001 fa3c 	bl	800d1ec <memset>
 800bd74:	f107 030c 	add.w	r3, r7, #12
 800bd78:	2200      	movs	r2, #0
 800bd7a:	601a      	str	r2, [r3, #0]
 800bd7c:	605a      	str	r2, [r3, #4]
 800bd7e:	609a      	str	r2, [r3, #8]
 800bd80:	60da      	str	r2, [r3, #12]
 800bd82:	611a      	str	r2, [r3, #16]
 800bd84:	4b2a      	ldr	r3, [pc, #168]	@ (800be30 <SystemClock_Config+0xd0>)
 800bd86:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800bd88:	4a29      	ldr	r2, [pc, #164]	@ (800be30 <SystemClock_Config+0xd0>)
 800bd8a:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 800bd8e:	6413      	str	r3, [r2, #64]	@ 0x40
 800bd90:	4b27      	ldr	r3, [pc, #156]	@ (800be30 <SystemClock_Config+0xd0>)
 800bd92:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800bd94:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 800bd98:	60bb      	str	r3, [r7, #8]
 800bd9a:	68bb      	ldr	r3, [r7, #8]
 800bd9c:	4b25      	ldr	r3, [pc, #148]	@ (800be34 <SystemClock_Config+0xd4>)
 800bd9e:	681b      	ldr	r3, [r3, #0]
 800bda0:	4a24      	ldr	r2, [pc, #144]	@ (800be34 <SystemClock_Config+0xd4>)
 800bda2:	f443 4340 	orr.w	r3, r3, #49152	@ 0xc000
 800bda6:	6013      	str	r3, [r2, #0]
 800bda8:	4b22      	ldr	r3, [pc, #136]	@ (800be34 <SystemClock_Config+0xd4>)
 800bdaa:	681b      	ldr	r3, [r3, #0]
 800bdac:	f403 4340 	and.w	r3, r3, #49152	@ 0xc000
 800bdb0:	607b      	str	r3, [r7, #4]
 800bdb2:	687b      	ldr	r3, [r7, #4]
 800bdb4:	2302      	movs	r3, #2
 800bdb6:	623b      	str	r3, [r7, #32]
 800bdb8:	2301      	movs	r3, #1
 800bdba:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800bdbc:	2310      	movs	r3, #16
 800bdbe:	633b      	str	r3, [r7, #48]	@ 0x30
 800bdc0:	2302      	movs	r3, #2
 800bdc2:	63bb      	str	r3, [r7, #56]	@ 0x38
 800bdc4:	2300      	movs	r3, #0
 800bdc6:	63fb      	str	r3, [r7, #60]	@ 0x3c
 800bdc8:	2308      	movs	r3, #8
 800bdca:	643b      	str	r3, [r7, #64]	@ 0x40
 800bdcc:	23d8      	movs	r3, #216	@ 0xd8
 800bdce:	647b      	str	r3, [r7, #68]	@ 0x44
 800bdd0:	2302      	movs	r3, #2
 800bdd2:	64bb      	str	r3, [r7, #72]	@ 0x48
 800bdd4:	2309      	movs	r3, #9
 800bdd6:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800bdd8:	f107 0320 	add.w	r3, r7, #32
 800bddc:	4618      	mov	r0, r3
 800bdde:	f7f4 fd1b 	bl	8000818 <HAL_RCC_OscConfig>
 800bde2:	4603      	mov	r3, r0
 800bde4:	2b00      	cmp	r3, #0
 800bde6:	d001      	beq.n	800bdec <SystemClock_Config+0x8c>
 800bde8:	f000 f826 	bl	800be38 <Error_Handler>
 800bdec:	f7f6 fb6c 	bl	80024c8 <HAL_PWREx_EnableOverDrive>
 800bdf0:	4603      	mov	r3, r0
 800bdf2:	2b00      	cmp	r3, #0
 800bdf4:	d001      	beq.n	800bdfa <SystemClock_Config+0x9a>
 800bdf6:	f000 f81f 	bl	800be38 <Error_Handler>
 800bdfa:	230f      	movs	r3, #15
 800bdfc:	60fb      	str	r3, [r7, #12]
 800bdfe:	2302      	movs	r3, #2
 800be00:	613b      	str	r3, [r7, #16]
 800be02:	2300      	movs	r3, #0
 800be04:	617b      	str	r3, [r7, #20]
 800be06:	f44f 53a0 	mov.w	r3, #5120	@ 0x1400
 800be0a:	61bb      	str	r3, [r7, #24]
 800be0c:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 800be10:	61fb      	str	r3, [r7, #28]
 800be12:	f107 030c 	add.w	r3, r7, #12
 800be16:	2107      	movs	r1, #7
 800be18:	4618      	mov	r0, r3
 800be1a:	f7f4 ffa1 	bl	8000d60 <HAL_RCC_ClockConfig>
 800be1e:	4603      	mov	r3, r0
 800be20:	2b00      	cmp	r3, #0
 800be22:	d001      	beq.n	800be28 <SystemClock_Config+0xc8>
 800be24:	f000 f808 	bl	800be38 <Error_Handler>
 800be28:	bf00      	nop
 800be2a:	3750      	adds	r7, #80	@ 0x50
 800be2c:	46bd      	mov	sp, r7
 800be2e:	bd80      	pop	{r7, pc}
 800be30:	40023800 	.word	0x40023800
 800be34:	40007000 	.word	0x40007000

0800be38 <Error_Handler>:
 800be38:	b480      	push	{r7}
 800be3a:	af00      	add	r7, sp, #0
 800be3c:	b672      	cpsid	i
 800be3e:	bf00      	nop
 800be40:	bf00      	nop
 800be42:	e7fd      	b.n	800be40 <Error_Handler+0x8>

0800be44 <MX_GPIO_Init>:
 800be44:	b580      	push	{r7, lr}
 800be46:	b08c      	sub	sp, #48	@ 0x30
 800be48:	af00      	add	r7, sp, #0
 800be4a:	f107 031c 	add.w	r3, r7, #28
 800be4e:	2200      	movs	r2, #0
 800be50:	601a      	str	r2, [r3, #0]
 800be52:	605a      	str	r2, [r3, #4]
 800be54:	609a      	str	r2, [r3, #8]
 800be56:	60da      	str	r2, [r3, #12]
 800be58:	611a      	str	r2, [r3, #16]
 800be5a:	4b90      	ldr	r3, [pc, #576]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be5c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be5e:	4a8f      	ldr	r2, [pc, #572]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be60:	f043 0304 	orr.w	r3, r3, #4
 800be64:	6313      	str	r3, [r2, #48]	@ 0x30
 800be66:	4b8d      	ldr	r3, [pc, #564]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be68:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be6a:	f003 0304 	and.w	r3, r3, #4
 800be6e:	61bb      	str	r3, [r7, #24]
 800be70:	69bb      	ldr	r3, [r7, #24]
 800be72:	4b8a      	ldr	r3, [pc, #552]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be74:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be76:	4a89      	ldr	r2, [pc, #548]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be78:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800be7c:	6313      	str	r3, [r2, #48]	@ 0x30
 800be7e:	4b87      	ldr	r3, [pc, #540]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be80:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be82:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 800be86:	617b      	str	r3, [r7, #20]
 800be88:	697b      	ldr	r3, [r7, #20]
 800be8a:	4b84      	ldr	r3, [pc, #528]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be8c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be8e:	4a83      	ldr	r2, [pc, #524]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be90:	f043 0301 	orr.w	r3, r3, #1
 800be94:	6313      	str	r3, [r2, #48]	@ 0x30
 800be96:	4b81      	ldr	r3, [pc, #516]	@ (800c09c <MX_GPIO_Init+0x258>)
 800be98:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800be9a:	f003 0301 	and.w	r3, r3, #1
 800be9e:	613b      	str	r3, [r7, #16]
 800bea0:	693b      	ldr	r3, [r7, #16]
 800bea2:	4b7e      	ldr	r3, [pc, #504]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bea4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800bea6:	4a7d      	ldr	r2, [pc, #500]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bea8:	f043 0302 	orr.w	r3, r3, #2
 800beac:	6313      	str	r3, [r2, #48]	@ 0x30
 800beae:	4b7b      	ldr	r3, [pc, #492]	@ (800c09c <MX_GPIO_Init+0x258>)
 800beb0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800beb2:	f003 0302 	and.w	r3, r3, #2
 800beb6:	60fb      	str	r3, [r7, #12]
 800beb8:	68fb      	ldr	r3, [r7, #12]
 800beba:	4b78      	ldr	r3, [pc, #480]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bebc:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800bebe:	4a77      	ldr	r2, [pc, #476]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bec0:	f043 0308 	orr.w	r3, r3, #8
 800bec4:	6313      	str	r3, [r2, #48]	@ 0x30
 800bec6:	4b75      	ldr	r3, [pc, #468]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bec8:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800beca:	f003 0308 	and.w	r3, r3, #8
 800bece:	60bb      	str	r3, [r7, #8]
 800bed0:	68bb      	ldr	r3, [r7, #8]
 800bed2:	4b72      	ldr	r3, [pc, #456]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bed4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800bed6:	4a71      	ldr	r2, [pc, #452]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bed8:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800bedc:	6313      	str	r3, [r2, #48]	@ 0x30
 800bede:	4b6f      	ldr	r3, [pc, #444]	@ (800c09c <MX_GPIO_Init+0x258>)
 800bee0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800bee2:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 800bee6:	607b      	str	r3, [r7, #4]
 800bee8:	687b      	ldr	r3, [r7, #4]
 800beea:	2200      	movs	r2, #0
 800beec:	2110      	movs	r1, #16
 800beee:	486c      	ldr	r0, [pc, #432]	@ (800c0a0 <MX_GPIO_Init+0x25c>)
 800bef0:	f7f5 ff10 	bl	8001d14 <HAL_GPIO_WritePin>
 800bef4:	2200      	movs	r2, #0
 800bef6:	f244 0181 	movw	r1, #16513	@ 0x4081
 800befa:	486a      	ldr	r0, [pc, #424]	@ (800c0a4 <MX_GPIO_Init+0x260>)
 800befc:	f7f5 ff0a 	bl	8001d14 <HAL_GPIO_WritePin>
 800bf00:	2200      	movs	r2, #0
 800bf02:	2140      	movs	r1, #64	@ 0x40
 800bf04:	4868      	ldr	r0, [pc, #416]	@ (800c0a8 <MX_GPIO_Init+0x264>)
 800bf06:	f7f5 ff05 	bl	8001d14 <HAL_GPIO_WritePin>
 800bf0a:	2200      	movs	r2, #0
 800bf0c:	2103      	movs	r1, #3
 800bf0e:	4867      	ldr	r0, [pc, #412]	@ (800c0ac <MX_GPIO_Init+0x268>)
 800bf10:	f7f5 ff00 	bl	8001d14 <HAL_GPIO_WritePin>
 800bf14:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 800bf18:	61fb      	str	r3, [r7, #28]
 800bf1a:	f44f 1388 	mov.w	r3, #1114112	@ 0x110000
 800bf1e:	623b      	str	r3, [r7, #32]
 800bf20:	2300      	movs	r3, #0
 800bf22:	627b      	str	r3, [r7, #36]	@ 0x24
 800bf24:	f107 031c 	add.w	r3, r7, #28
 800bf28:	4619      	mov	r1, r3
 800bf2a:	4861      	ldr	r0, [pc, #388]	@ (800c0b0 <MX_GPIO_Init+0x26c>)
 800bf2c:	f7f5 fd2e 	bl	800198c <HAL_GPIO_Init>
 800bf30:	2332      	movs	r3, #50	@ 0x32
 800bf32:	61fb      	str	r3, [r7, #28]
 800bf34:	2302      	movs	r3, #2
 800bf36:	623b      	str	r3, [r7, #32]
 800bf38:	2300      	movs	r3, #0
 800bf3a:	627b      	str	r3, [r7, #36]	@ 0x24
 800bf3c:	2303      	movs	r3, #3
 800bf3e:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bf40:	230b      	movs	r3, #11
 800bf42:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800bf44:	f107 031c 	add.w	r3, r7, #28
 800bf48:	4619      	mov	r1, r3
 800bf4a:	4859      	ldr	r0, [pc, #356]	@ (800c0b0 <MX_GPIO_Init+0x26c>)
 800bf4c:	f7f5 fd1e 	bl	800198c <HAL_GPIO_Init>
 800bf50:	2386      	movs	r3, #134	@ 0x86
 800bf52:	61fb      	str	r3, [r7, #28]
 800bf54:	2302      	movs	r3, #2
 800bf56:	623b      	str	r3, [r7, #32]
 800bf58:	2300      	movs	r3, #0
 800bf5a:	627b      	str	r3, [r7, #36]	@ 0x24
 800bf5c:	2303      	movs	r3, #3
 800bf5e:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bf60:	230b      	movs	r3, #11
 800bf62:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800bf64:	f107 031c 	add.w	r3, r7, #28
 800bf68:	4619      	mov	r1, r3
 800bf6a:	484d      	ldr	r0, [pc, #308]	@ (800c0a0 <MX_GPIO_Init+0x25c>)
 800bf6c:	f7f5 fd0e 	bl	800198c <HAL_GPIO_Init>
 800bf70:	2310      	movs	r3, #16
 800bf72:	61fb      	str	r3, [r7, #28]
 800bf74:	2301      	movs	r3, #1
 800bf76:	623b      	str	r3, [r7, #32]
 800bf78:	2300      	movs	r3, #0
 800bf7a:	627b      	str	r3, [r7, #36]	@ 0x24
 800bf7c:	2300      	movs	r3, #0
 800bf7e:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bf80:	f107 031c 	add.w	r3, r7, #28
 800bf84:	4619      	mov	r1, r3
 800bf86:	4846      	ldr	r0, [pc, #280]	@ (800c0a0 <MX_GPIO_Init+0x25c>)
 800bf88:	f7f5 fd00 	bl	800198c <HAL_GPIO_Init>
 800bf8c:	f244 0381 	movw	r3, #16513	@ 0x4081
 800bf90:	61fb      	str	r3, [r7, #28]
 800bf92:	2301      	movs	r3, #1
 800bf94:	623b      	str	r3, [r7, #32]
 800bf96:	2300      	movs	r3, #0
 800bf98:	627b      	str	r3, [r7, #36]	@ 0x24
 800bf9a:	2300      	movs	r3, #0
 800bf9c:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bf9e:	f107 031c 	add.w	r3, r7, #28
 800bfa2:	4619      	mov	r1, r3
 800bfa4:	483f      	ldr	r0, [pc, #252]	@ (800c0a4 <MX_GPIO_Init+0x260>)
 800bfa6:	f7f5 fcf1 	bl	800198c <HAL_GPIO_Init>
 800bfaa:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 800bfae:	61fb      	str	r3, [r7, #28]
 800bfb0:	2302      	movs	r3, #2
 800bfb2:	623b      	str	r3, [r7, #32]
 800bfb4:	2300      	movs	r3, #0
 800bfb6:	627b      	str	r3, [r7, #36]	@ 0x24
 800bfb8:	2303      	movs	r3, #3
 800bfba:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bfbc:	230b      	movs	r3, #11
 800bfbe:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800bfc0:	f107 031c 	add.w	r3, r7, #28
 800bfc4:	4619      	mov	r1, r3
 800bfc6:	4837      	ldr	r0, [pc, #220]	@ (800c0a4 <MX_GPIO_Init+0x260>)
 800bfc8:	f7f5 fce0 	bl	800198c <HAL_GPIO_Init>
 800bfcc:	2340      	movs	r3, #64	@ 0x40
 800bfce:	61fb      	str	r3, [r7, #28]
 800bfd0:	2301      	movs	r3, #1
 800bfd2:	623b      	str	r3, [r7, #32]
 800bfd4:	2300      	movs	r3, #0
 800bfd6:	627b      	str	r3, [r7, #36]	@ 0x24
 800bfd8:	2300      	movs	r3, #0
 800bfda:	62bb      	str	r3, [r7, #40]	@ 0x28
 800bfdc:	f107 031c 	add.w	r3, r7, #28
 800bfe0:	4619      	mov	r1, r3
 800bfe2:	4831      	ldr	r0, [pc, #196]	@ (800c0a8 <MX_GPIO_Init+0x264>)
 800bfe4:	f7f5 fcd2 	bl	800198c <HAL_GPIO_Init>
 800bfe8:	2380      	movs	r3, #128	@ 0x80
 800bfea:	61fb      	str	r3, [r7, #28]
 800bfec:	2300      	movs	r3, #0
 800bfee:	623b      	str	r3, [r7, #32]
 800bff0:	2300      	movs	r3, #0
 800bff2:	627b      	str	r3, [r7, #36]	@ 0x24
 800bff4:	f107 031c 	add.w	r3, r7, #28
 800bff8:	4619      	mov	r1, r3
 800bffa:	482b      	ldr	r0, [pc, #172]	@ (800c0a8 <MX_GPIO_Init+0x264>)
 800bffc:	f7f5 fcc6 	bl	800198c <HAL_GPIO_Init>
 800c000:	f44f 53e8 	mov.w	r3, #7424	@ 0x1d00
 800c004:	61fb      	str	r3, [r7, #28]
 800c006:	2302      	movs	r3, #2
 800c008:	623b      	str	r3, [r7, #32]
 800c00a:	2300      	movs	r3, #0
 800c00c:	627b      	str	r3, [r7, #36]	@ 0x24
 800c00e:	2303      	movs	r3, #3
 800c010:	62bb      	str	r3, [r7, #40]	@ 0x28
 800c012:	230a      	movs	r3, #10
 800c014:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800c016:	f107 031c 	add.w	r3, r7, #28
 800c01a:	4619      	mov	r1, r3
 800c01c:	4820      	ldr	r0, [pc, #128]	@ (800c0a0 <MX_GPIO_Init+0x25c>)
 800c01e:	f7f5 fcb5 	bl	800198c <HAL_GPIO_Init>
 800c022:	f44f 7300 	mov.w	r3, #512	@ 0x200
 800c026:	61fb      	str	r3, [r7, #28]
 800c028:	2300      	movs	r3, #0
 800c02a:	623b      	str	r3, [r7, #32]
 800c02c:	2300      	movs	r3, #0
 800c02e:	627b      	str	r3, [r7, #36]	@ 0x24
 800c030:	f107 031c 	add.w	r3, r7, #28
 800c034:	4619      	mov	r1, r3
 800c036:	481a      	ldr	r0, [pc, #104]	@ (800c0a0 <MX_GPIO_Init+0x25c>)
 800c038:	f7f5 fca8 	bl	800198c <HAL_GPIO_Init>
 800c03c:	2303      	movs	r3, #3
 800c03e:	61fb      	str	r3, [r7, #28]
 800c040:	2301      	movs	r3, #1
 800c042:	623b      	str	r3, [r7, #32]
 800c044:	2300      	movs	r3, #0
 800c046:	627b      	str	r3, [r7, #36]	@ 0x24
 800c048:	2300      	movs	r3, #0
 800c04a:	62bb      	str	r3, [r7, #40]	@ 0x28
 800c04c:	f107 031c 	add.w	r3, r7, #28
 800c050:	4619      	mov	r1, r3
 800c052:	4816      	ldr	r0, [pc, #88]	@ (800c0ac <MX_GPIO_Init+0x268>)
 800c054:	f7f5 fc9a 	bl	800198c <HAL_GPIO_Init>
 800c058:	f44f 5320 	mov.w	r3, #10240	@ 0x2800
 800c05c:	61fb      	str	r3, [r7, #28]
 800c05e:	2302      	movs	r3, #2
 800c060:	623b      	str	r3, [r7, #32]
 800c062:	2300      	movs	r3, #0
 800c064:	627b      	str	r3, [r7, #36]	@ 0x24
 800c066:	2303      	movs	r3, #3
 800c068:	62bb      	str	r3, [r7, #40]	@ 0x28
 800c06a:	230b      	movs	r3, #11
 800c06c:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800c06e:	f107 031c 	add.w	r3, r7, #28
 800c072:	4619      	mov	r1, r3
 800c074:	480c      	ldr	r0, [pc, #48]	@ (800c0a8 <MX_GPIO_Init+0x264>)
 800c076:	f7f5 fc89 	bl	800198c <HAL_GPIO_Init>
 800c07a:	2340      	movs	r3, #64	@ 0x40
 800c07c:	61fb      	str	r3, [r7, #28]
 800c07e:	2300      	movs	r3, #0
 800c080:	623b      	str	r3, [r7, #32]
 800c082:	2302      	movs	r3, #2
 800c084:	627b      	str	r3, [r7, #36]	@ 0x24
 800c086:	f107 031c 	add.w	r3, r7, #28
 800c08a:	4619      	mov	r1, r3
 800c08c:	4805      	ldr	r0, [pc, #20]	@ (800c0a4 <MX_GPIO_Init+0x260>)
 800c08e:	f7f5 fc7d 	bl	800198c <HAL_GPIO_Init>
 800c092:	bf00      	nop
 800c094:	3730      	adds	r7, #48	@ 0x30
 800c096:	46bd      	mov	sp, r7
 800c098:	bd80      	pop	{r7, pc}
 800c09a:	bf00      	nop
 800c09c:	40023800 	.word	0x40023800
 800c0a0:	40020000 	.word	0x40020000
 800c0a4:	40020400 	.word	0x40020400
 800c0a8:	40021800 	.word	0x40021800
 800c0ac:	40020c00 	.word	0x40020c00
 800c0b0:	40020800 	.word	0x40020800

0800c0b4 <MX_FREERTOS_Init>:
 800c0b4:	b580      	push	{r7, lr}
 800c0b6:	af00      	add	r7, sp, #0
 800c0b8:	2203      	movs	r2, #3
 800c0ba:	2100      	movs	r1, #0
 800c0bc:	2001      	movs	r0, #1
 800c0be:	f7f9 fb9e 	bl	80057fe <xQueueGenericCreate>
 800c0c2:	4603      	mov	r3, r0
 800c0c4:	4a09      	ldr	r2, [pc, #36]	@ (800c0ec <MX_FREERTOS_Init+0x38>)
 800c0c6:	6013      	str	r3, [r2, #0]
 800c0c8:	4a09      	ldr	r2, [pc, #36]	@ (800c0f0 <MX_FREERTOS_Init+0x3c>)
 800c0ca:	2100      	movs	r1, #0
 800c0cc:	4809      	ldr	r0, [pc, #36]	@ (800c0f4 <MX_FREERTOS_Init+0x40>)
 800c0ce:	f7fb ff81 	bl	8007fd4 <osThreadNew>
 800c0d2:	4603      	mov	r3, r0
 800c0d4:	4a08      	ldr	r2, [pc, #32]	@ (800c0f8 <MX_FREERTOS_Init+0x44>)
 800c0d6:	6013      	str	r3, [r2, #0]
 800c0d8:	4a08      	ldr	r2, [pc, #32]	@ (800c0fc <MX_FREERTOS_Init+0x48>)
 800c0da:	2100      	movs	r1, #0
 800c0dc:	4808      	ldr	r0, [pc, #32]	@ (800c100 <MX_FREERTOS_Init+0x4c>)
 800c0de:	f7fb ff79 	bl	8007fd4 <osThreadNew>
 800c0e2:	4603      	mov	r3, r0
 800c0e4:	4a07      	ldr	r2, [pc, #28]	@ (800c104 <MX_FREERTOS_Init+0x50>)
 800c0e6:	6013      	str	r3, [r2, #0]
 800c0e8:	bf00      	nop
 800c0ea:	bd80      	pop	{r7, pc}
 800c0ec:	20041640 	.word	0x20041640
 800c0f0:	0800daf4 	.word	0x0800daf4
 800c0f4:	0800c109 	.word	0x0800c109
 800c0f8:	20041644 	.word	0x20041644
 800c0fc:	0800db18 	.word	0x0800db18
 800c100:	0800cd99 	.word	0x0800cd99
 800c104:	200456a4 	.word	0x200456a4

0800c108 <StartDefaultTask>:
 800c108:	b580      	push	{r7, lr}
 800c10a:	b082      	sub	sp, #8
 800c10c:	af00      	add	r7, sp, #0
 800c10e:	6078      	str	r0, [r7, #4]
 800c110:	2001      	movs	r0, #1
 800c112:	f7fc f805 	bl	8008120 <osDelay>
 800c116:	e7fb      	b.n	800c110 <StartDefaultTask+0x8>

0800c118 <MX_DMA_Init>:
 800c118:	b580      	push	{r7, lr}
 800c11a:	b082      	sub	sp, #8
 800c11c:	af00      	add	r7, sp, #0
 800c11e:	4b10      	ldr	r3, [pc, #64]	@ (800c160 <MX_DMA_Init+0x48>)
 800c120:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c122:	4a0f      	ldr	r2, [pc, #60]	@ (800c160 <MX_DMA_Init+0x48>)
 800c124:	f443 0380 	orr.w	r3, r3, #4194304	@ 0x400000
 800c128:	6313      	str	r3, [r2, #48]	@ 0x30
 800c12a:	4b0d      	ldr	r3, [pc, #52]	@ (800c160 <MX_DMA_Init+0x48>)
 800c12c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c12e:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 800c132:	607b      	str	r3, [r7, #4]
 800c134:	687b      	ldr	r3, [r7, #4]
 800c136:	2200      	movs	r2, #0
 800c138:	2105      	movs	r1, #5
 800c13a:	203b      	movs	r0, #59	@ 0x3b
 800c13c:	f7f4 fb35 	bl	80007aa <HAL_NVIC_SetPriority>
 800c140:	203b      	movs	r0, #59	@ 0x3b
 800c142:	f7f4 fb4e 	bl	80007e2 <HAL_NVIC_EnableIRQ>
 800c146:	2200      	movs	r2, #0
 800c148:	2105      	movs	r1, #5
 800c14a:	2045      	movs	r0, #69	@ 0x45
 800c14c:	f7f4 fb2d 	bl	80007aa <HAL_NVIC_SetPriority>
 800c150:	2045      	movs	r0, #69	@ 0x45
 800c152:	f7f4 fb46 	bl	80007e2 <HAL_NVIC_EnableIRQ>
 800c156:	bf00      	nop
 800c158:	3708      	adds	r7, #8
 800c15a:	46bd      	mov	sp, r7
 800c15c:	bd80      	pop	{r7, pc}
 800c15e:	bf00      	nop
 800c160:	40023800 	.word	0x40023800

0800c164 <MX_SDMMC1_SD_Init>:
 800c164:	b480      	push	{r7}
 800c166:	af00      	add	r7, sp, #0
 800c168:	4b0c      	ldr	r3, [pc, #48]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c16a:	4a0d      	ldr	r2, [pc, #52]	@ (800c1a0 <MX_SDMMC1_SD_Init+0x3c>)
 800c16c:	601a      	str	r2, [r3, #0]
 800c16e:	4b0b      	ldr	r3, [pc, #44]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c170:	2200      	movs	r2, #0
 800c172:	605a      	str	r2, [r3, #4]
 800c174:	4b09      	ldr	r3, [pc, #36]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c176:	2200      	movs	r2, #0
 800c178:	609a      	str	r2, [r3, #8]
 800c17a:	4b08      	ldr	r3, [pc, #32]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c17c:	2200      	movs	r2, #0
 800c17e:	60da      	str	r2, [r3, #12]
 800c180:	4b06      	ldr	r3, [pc, #24]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c182:	2200      	movs	r2, #0
 800c184:	611a      	str	r2, [r3, #16]
 800c186:	4b05      	ldr	r3, [pc, #20]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c188:	2200      	movs	r2, #0
 800c18a:	615a      	str	r2, [r3, #20]
 800c18c:	4b03      	ldr	r3, [pc, #12]	@ (800c19c <MX_SDMMC1_SD_Init+0x38>)
 800c18e:	2200      	movs	r2, #0
 800c190:	619a      	str	r2, [r3, #24]
 800c192:	bf00      	nop
 800c194:	46bd      	mov	sp, r7
 800c196:	f85d 7b04 	ldr.w	r7, [sp], #4
 800c19a:	4770      	bx	lr
 800c19c:	20049704 	.word	0x20049704
 800c1a0:	40012c00 	.word	0x40012c00

0800c1a4 <HAL_SD_MspInit>:
 800c1a4:	b580      	push	{r7, lr}
 800c1a6:	b0ac      	sub	sp, #176	@ 0xb0
 800c1a8:	af00      	add	r7, sp, #0
 800c1aa:	6078      	str	r0, [r7, #4]
 800c1ac:	f107 039c 	add.w	r3, r7, #156	@ 0x9c
 800c1b0:	2200      	movs	r2, #0
 800c1b2:	601a      	str	r2, [r3, #0]
 800c1b4:	605a      	str	r2, [r3, #4]
 800c1b6:	609a      	str	r2, [r3, #8]
 800c1b8:	60da      	str	r2, [r3, #12]
 800c1ba:	611a      	str	r2, [r3, #16]
 800c1bc:	f107 0318 	add.w	r3, r7, #24
 800c1c0:	2284      	movs	r2, #132	@ 0x84
 800c1c2:	2100      	movs	r1, #0
 800c1c4:	4618      	mov	r0, r3
 800c1c6:	f001 f811 	bl	800d1ec <memset>
 800c1ca:	687b      	ldr	r3, [r7, #4]
 800c1cc:	681b      	ldr	r3, [r3, #0]
 800c1ce:	4a74      	ldr	r2, [pc, #464]	@ (800c3a0 <HAL_SD_MspInit+0x1fc>)
 800c1d0:	4293      	cmp	r3, r2
 800c1d2:	f040 80e0 	bne.w	800c396 <HAL_SD_MspInit+0x1f2>
 800c1d6:	f44f 0320 	mov.w	r3, #10485760	@ 0xa00000
 800c1da:	61bb      	str	r3, [r7, #24]
 800c1dc:	2300      	movs	r3, #0
 800c1de:	f8c7 3094 	str.w	r3, [r7, #148]	@ 0x94
 800c1e2:	2300      	movs	r3, #0
 800c1e4:	f8c7 3098 	str.w	r3, [r7, #152]	@ 0x98
 800c1e8:	f107 0318 	add.w	r3, r7, #24
 800c1ec:	4618      	mov	r0, r3
 800c1ee:	f7f4 ffdd 	bl	80011ac <HAL_RCCEx_PeriphCLKConfig>
 800c1f2:	4603      	mov	r3, r0
 800c1f4:	2b00      	cmp	r3, #0
 800c1f6:	d001      	beq.n	800c1fc <HAL_SD_MspInit+0x58>
 800c1f8:	f7ff fe1e 	bl	800be38 <Error_Handler>
 800c1fc:	4b69      	ldr	r3, [pc, #420]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c1fe:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c200:	4a68      	ldr	r2, [pc, #416]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c202:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
 800c206:	6453      	str	r3, [r2, #68]	@ 0x44
 800c208:	4b66      	ldr	r3, [pc, #408]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c20a:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c20c:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 800c210:	617b      	str	r3, [r7, #20]
 800c212:	697b      	ldr	r3, [r7, #20]
 800c214:	4b63      	ldr	r3, [pc, #396]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c216:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c218:	4a62      	ldr	r2, [pc, #392]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c21a:	f043 0304 	orr.w	r3, r3, #4
 800c21e:	6313      	str	r3, [r2, #48]	@ 0x30
 800c220:	4b60      	ldr	r3, [pc, #384]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c222:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c224:	f003 0304 	and.w	r3, r3, #4
 800c228:	613b      	str	r3, [r7, #16]
 800c22a:	693b      	ldr	r3, [r7, #16]
 800c22c:	4b5d      	ldr	r3, [pc, #372]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c22e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c230:	4a5c      	ldr	r2, [pc, #368]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c232:	f043 0308 	orr.w	r3, r3, #8
 800c236:	6313      	str	r3, [r2, #48]	@ 0x30
 800c238:	4b5a      	ldr	r3, [pc, #360]	@ (800c3a4 <HAL_SD_MspInit+0x200>)
 800c23a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c23c:	f003 0308 	and.w	r3, r3, #8
 800c240:	60fb      	str	r3, [r7, #12]
 800c242:	68fb      	ldr	r3, [r7, #12]
 800c244:	f44f 5388 	mov.w	r3, #4352	@ 0x1100
 800c248:	f8c7 309c 	str.w	r3, [r7, #156]	@ 0x9c
 800c24c:	2302      	movs	r3, #2
 800c24e:	f8c7 30a0 	str.w	r3, [r7, #160]	@ 0xa0
 800c252:	2301      	movs	r3, #1
 800c254:	f8c7 30a4 	str.w	r3, [r7, #164]	@ 0xa4
 800c258:	2303      	movs	r3, #3
 800c25a:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 800c25e:	230c      	movs	r3, #12
 800c260:	f8c7 30ac 	str.w	r3, [r7, #172]	@ 0xac
 800c264:	f107 039c 	add.w	r3, r7, #156	@ 0x9c
 800c268:	4619      	mov	r1, r3
 800c26a:	484f      	ldr	r0, [pc, #316]	@ (800c3a8 <HAL_SD_MspInit+0x204>)
 800c26c:	f7f5 fb8e 	bl	800198c <HAL_GPIO_Init>
 800c270:	2304      	movs	r3, #4
 800c272:	f8c7 309c 	str.w	r3, [r7, #156]	@ 0x9c
 800c276:	2302      	movs	r3, #2
 800c278:	f8c7 30a0 	str.w	r3, [r7, #160]	@ 0xa0
 800c27c:	2301      	movs	r3, #1
 800c27e:	f8c7 30a4 	str.w	r3, [r7, #164]	@ 0xa4
 800c282:	2303      	movs	r3, #3
 800c284:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 800c288:	230c      	movs	r3, #12
 800c28a:	f8c7 30ac 	str.w	r3, [r7, #172]	@ 0xac
 800c28e:	f107 039c 	add.w	r3, r7, #156	@ 0x9c
 800c292:	4619      	mov	r1, r3
 800c294:	4845      	ldr	r0, [pc, #276]	@ (800c3ac <HAL_SD_MspInit+0x208>)
 800c296:	f7f5 fb79 	bl	800198c <HAL_GPIO_Init>
 800c29a:	4b45      	ldr	r3, [pc, #276]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c29c:	4a45      	ldr	r2, [pc, #276]	@ (800c3b4 <HAL_SD_MspInit+0x210>)
 800c29e:	601a      	str	r2, [r3, #0]
 800c2a0:	4b43      	ldr	r3, [pc, #268]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2a2:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 800c2a6:	605a      	str	r2, [r3, #4]
 800c2a8:	4b41      	ldr	r3, [pc, #260]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2aa:	2200      	movs	r2, #0
 800c2ac:	609a      	str	r2, [r3, #8]
 800c2ae:	4b40      	ldr	r3, [pc, #256]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2b0:	2200      	movs	r2, #0
 800c2b2:	60da      	str	r2, [r3, #12]
 800c2b4:	4b3e      	ldr	r3, [pc, #248]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2b6:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 800c2ba:	611a      	str	r2, [r3, #16]
 800c2bc:	4b3c      	ldr	r3, [pc, #240]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2be:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800c2c2:	615a      	str	r2, [r3, #20]
 800c2c4:	4b3a      	ldr	r3, [pc, #232]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2c6:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 800c2ca:	619a      	str	r2, [r3, #24]
 800c2cc:	4b38      	ldr	r3, [pc, #224]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2ce:	2220      	movs	r2, #32
 800c2d0:	61da      	str	r2, [r3, #28]
 800c2d2:	4b37      	ldr	r3, [pc, #220]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2d4:	2200      	movs	r2, #0
 800c2d6:	621a      	str	r2, [r3, #32]
 800c2d8:	4b35      	ldr	r3, [pc, #212]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2da:	2204      	movs	r2, #4
 800c2dc:	625a      	str	r2, [r3, #36]	@ 0x24
 800c2de:	4b34      	ldr	r3, [pc, #208]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2e0:	2203      	movs	r2, #3
 800c2e2:	629a      	str	r2, [r3, #40]	@ 0x28
 800c2e4:	4b32      	ldr	r3, [pc, #200]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2e6:	f44f 0200 	mov.w	r2, #8388608	@ 0x800000
 800c2ea:	62da      	str	r2, [r3, #44]	@ 0x2c
 800c2ec:	4b30      	ldr	r3, [pc, #192]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2ee:	f44f 1200 	mov.w	r2, #2097152	@ 0x200000
 800c2f2:	631a      	str	r2, [r3, #48]	@ 0x30
 800c2f4:	482e      	ldr	r0, [pc, #184]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c2f6:	f7f5 fd41 	bl	8001d7c <HAL_DMA_Init>
 800c2fa:	4603      	mov	r3, r0
 800c2fc:	2b00      	cmp	r3, #0
 800c2fe:	d001      	beq.n	800c304 <HAL_SD_MspInit+0x160>
 800c300:	f7ff fd9a 	bl	800be38 <Error_Handler>
 800c304:	687b      	ldr	r3, [r7, #4]
 800c306:	4a2a      	ldr	r2, [pc, #168]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c308:	641a      	str	r2, [r3, #64]	@ 0x40
 800c30a:	4a29      	ldr	r2, [pc, #164]	@ (800c3b0 <HAL_SD_MspInit+0x20c>)
 800c30c:	687b      	ldr	r3, [r7, #4]
 800c30e:	6393      	str	r3, [r2, #56]	@ 0x38
 800c310:	4b29      	ldr	r3, [pc, #164]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c312:	4a2a      	ldr	r2, [pc, #168]	@ (800c3bc <HAL_SD_MspInit+0x218>)
 800c314:	601a      	str	r2, [r3, #0]
 800c316:	4b28      	ldr	r3, [pc, #160]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c318:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 800c31c:	605a      	str	r2, [r3, #4]
 800c31e:	4b26      	ldr	r3, [pc, #152]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c320:	2240      	movs	r2, #64	@ 0x40
 800c322:	609a      	str	r2, [r3, #8]
 800c324:	4b24      	ldr	r3, [pc, #144]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c326:	2200      	movs	r2, #0
 800c328:	60da      	str	r2, [r3, #12]
 800c32a:	4b23      	ldr	r3, [pc, #140]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c32c:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 800c330:	611a      	str	r2, [r3, #16]
 800c332:	4b21      	ldr	r3, [pc, #132]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c334:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
 800c338:	615a      	str	r2, [r3, #20]
 800c33a:	4b1f      	ldr	r3, [pc, #124]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c33c:	f44f 4280 	mov.w	r2, #16384	@ 0x4000
 800c340:	619a      	str	r2, [r3, #24]
 800c342:	4b1d      	ldr	r3, [pc, #116]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c344:	2220      	movs	r2, #32
 800c346:	61da      	str	r2, [r3, #28]
 800c348:	4b1b      	ldr	r3, [pc, #108]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c34a:	2200      	movs	r2, #0
 800c34c:	621a      	str	r2, [r3, #32]
 800c34e:	4b1a      	ldr	r3, [pc, #104]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c350:	2204      	movs	r2, #4
 800c352:	625a      	str	r2, [r3, #36]	@ 0x24
 800c354:	4b18      	ldr	r3, [pc, #96]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c356:	2203      	movs	r2, #3
 800c358:	629a      	str	r2, [r3, #40]	@ 0x28
 800c35a:	4b17      	ldr	r3, [pc, #92]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c35c:	f44f 0200 	mov.w	r2, #8388608	@ 0x800000
 800c360:	62da      	str	r2, [r3, #44]	@ 0x2c
 800c362:	4b15      	ldr	r3, [pc, #84]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c364:	f44f 1200 	mov.w	r2, #2097152	@ 0x200000
 800c368:	631a      	str	r2, [r3, #48]	@ 0x30
 800c36a:	4813      	ldr	r0, [pc, #76]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c36c:	f7f5 fd06 	bl	8001d7c <HAL_DMA_Init>
 800c370:	4603      	mov	r3, r0
 800c372:	2b00      	cmp	r3, #0
 800c374:	d001      	beq.n	800c37a <HAL_SD_MspInit+0x1d6>
 800c376:	f7ff fd5f 	bl	800be38 <Error_Handler>
 800c37a:	687b      	ldr	r3, [r7, #4]
 800c37c:	4a0e      	ldr	r2, [pc, #56]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c37e:	63da      	str	r2, [r3, #60]	@ 0x3c
 800c380:	4a0d      	ldr	r2, [pc, #52]	@ (800c3b8 <HAL_SD_MspInit+0x214>)
 800c382:	687b      	ldr	r3, [r7, #4]
 800c384:	6393      	str	r3, [r2, #56]	@ 0x38
 800c386:	2200      	movs	r2, #0
 800c388:	2105      	movs	r1, #5
 800c38a:	2031      	movs	r0, #49	@ 0x31
 800c38c:	f7f4 fa0d 	bl	80007aa <HAL_NVIC_SetPriority>
 800c390:	2031      	movs	r0, #49	@ 0x31
 800c392:	f7f4 fa26 	bl	80007e2 <HAL_NVIC_EnableIRQ>
 800c396:	bf00      	nop
 800c398:	37b0      	adds	r7, #176	@ 0xb0
 800c39a:	46bd      	mov	sp, r7
 800c39c:	bd80      	pop	{r7, pc}
 800c39e:	bf00      	nop
 800c3a0:	40012c00 	.word	0x40012c00
 800c3a4:	40023800 	.word	0x40023800
 800c3a8:	40020800 	.word	0x40020800
 800c3ac:	40020c00 	.word	0x40020c00
 800c3b0:	20049788 	.word	0x20049788
 800c3b4:	40026458 	.word	0x40026458
 800c3b8:	200497e8 	.word	0x200497e8
 800c3bc:	400264a0 	.word	0x400264a0

0800c3c0 <MX_SPI1_Init>:
 800c3c0:	b580      	push	{r7, lr}
 800c3c2:	af00      	add	r7, sp, #0
 800c3c4:	4b1b      	ldr	r3, [pc, #108]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3c6:	4a1c      	ldr	r2, [pc, #112]	@ (800c438 <MX_SPI1_Init+0x78>)
 800c3c8:	601a      	str	r2, [r3, #0]
 800c3ca:	4b1a      	ldr	r3, [pc, #104]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3cc:	f44f 7282 	mov.w	r2, #260	@ 0x104
 800c3d0:	605a      	str	r2, [r3, #4]
 800c3d2:	4b18      	ldr	r3, [pc, #96]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3d4:	2200      	movs	r2, #0
 800c3d6:	609a      	str	r2, [r3, #8]
 800c3d8:	4b16      	ldr	r3, [pc, #88]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3da:	f44f 62e0 	mov.w	r2, #1792	@ 0x700
 800c3de:	60da      	str	r2, [r3, #12]
 800c3e0:	4b14      	ldr	r3, [pc, #80]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3e2:	2200      	movs	r2, #0
 800c3e4:	611a      	str	r2, [r3, #16]
 800c3e6:	4b13      	ldr	r3, [pc, #76]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3e8:	2200      	movs	r2, #0
 800c3ea:	615a      	str	r2, [r3, #20]
 800c3ec:	4b11      	ldr	r3, [pc, #68]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3ee:	f44f 7200 	mov.w	r2, #512	@ 0x200
 800c3f2:	619a      	str	r2, [r3, #24]
 800c3f4:	4b0f      	ldr	r3, [pc, #60]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3f6:	2220      	movs	r2, #32
 800c3f8:	61da      	str	r2, [r3, #28]
 800c3fa:	4b0e      	ldr	r3, [pc, #56]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c3fc:	2200      	movs	r2, #0
 800c3fe:	621a      	str	r2, [r3, #32]
 800c400:	4b0c      	ldr	r3, [pc, #48]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c402:	2200      	movs	r2, #0
 800c404:	625a      	str	r2, [r3, #36]	@ 0x24
 800c406:	4b0b      	ldr	r3, [pc, #44]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c408:	2200      	movs	r2, #0
 800c40a:	629a      	str	r2, [r3, #40]	@ 0x28
 800c40c:	4b09      	ldr	r3, [pc, #36]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c40e:	2207      	movs	r2, #7
 800c410:	62da      	str	r2, [r3, #44]	@ 0x2c
 800c412:	4b08      	ldr	r3, [pc, #32]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c414:	2200      	movs	r2, #0
 800c416:	631a      	str	r2, [r3, #48]	@ 0x30
 800c418:	4b06      	ldr	r3, [pc, #24]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c41a:	2200      	movs	r2, #0
 800c41c:	635a      	str	r2, [r3, #52]	@ 0x34
 800c41e:	4805      	ldr	r0, [pc, #20]	@ (800c434 <MX_SPI1_Init+0x74>)
 800c420:	f7f7 ff76 	bl	8004310 <HAL_SPI_Init>
 800c424:	4603      	mov	r3, r0
 800c426:	2b00      	cmp	r3, #0
 800c428:	d001      	beq.n	800c42e <MX_SPI1_Init+0x6e>
 800c42a:	f7ff fd05 	bl	800be38 <Error_Handler>
 800c42e:	bf00      	nop
 800c430:	bd80      	pop	{r7, pc}
 800c432:	bf00      	nop
 800c434:	20049848 	.word	0x20049848
 800c438:	40013000 	.word	0x40013000

0800c43c <HAL_SPI_MspInit>:
 800c43c:	b580      	push	{r7, lr}
 800c43e:	b08a      	sub	sp, #40	@ 0x28
 800c440:	af00      	add	r7, sp, #0
 800c442:	6078      	str	r0, [r7, #4]
 800c444:	f107 0314 	add.w	r3, r7, #20
 800c448:	2200      	movs	r2, #0
 800c44a:	601a      	str	r2, [r3, #0]
 800c44c:	605a      	str	r2, [r3, #4]
 800c44e:	609a      	str	r2, [r3, #8]
 800c450:	60da      	str	r2, [r3, #12]
 800c452:	611a      	str	r2, [r3, #16]
 800c454:	687b      	ldr	r3, [r7, #4]
 800c456:	681b      	ldr	r3, [r3, #0]
 800c458:	4a29      	ldr	r2, [pc, #164]	@ (800c500 <HAL_SPI_MspInit+0xc4>)
 800c45a:	4293      	cmp	r3, r2
 800c45c:	d14b      	bne.n	800c4f6 <HAL_SPI_MspInit+0xba>
 800c45e:	4b29      	ldr	r3, [pc, #164]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c460:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c462:	4a28      	ldr	r2, [pc, #160]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c464:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
 800c468:	6453      	str	r3, [r2, #68]	@ 0x44
 800c46a:	4b26      	ldr	r3, [pc, #152]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c46c:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c46e:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 800c472:	613b      	str	r3, [r7, #16]
 800c474:	693b      	ldr	r3, [r7, #16]
 800c476:	4b23      	ldr	r3, [pc, #140]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c478:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c47a:	4a22      	ldr	r2, [pc, #136]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c47c:	f043 0301 	orr.w	r3, r3, #1
 800c480:	6313      	str	r3, [r2, #48]	@ 0x30
 800c482:	4b20      	ldr	r3, [pc, #128]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c484:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c486:	f003 0301 	and.w	r3, r3, #1
 800c48a:	60fb      	str	r3, [r7, #12]
 800c48c:	68fb      	ldr	r3, [r7, #12]
 800c48e:	4b1d      	ldr	r3, [pc, #116]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c490:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c492:	4a1c      	ldr	r2, [pc, #112]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c494:	f043 0302 	orr.w	r3, r3, #2
 800c498:	6313      	str	r3, [r2, #48]	@ 0x30
 800c49a:	4b1a      	ldr	r3, [pc, #104]	@ (800c504 <HAL_SPI_MspInit+0xc8>)
 800c49c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c49e:	f003 0302 	and.w	r3, r3, #2
 800c4a2:	60bb      	str	r3, [r7, #8]
 800c4a4:	68bb      	ldr	r3, [r7, #8]
 800c4a6:	2360      	movs	r3, #96	@ 0x60
 800c4a8:	617b      	str	r3, [r7, #20]
 800c4aa:	2302      	movs	r3, #2
 800c4ac:	61bb      	str	r3, [r7, #24]
 800c4ae:	2300      	movs	r3, #0
 800c4b0:	61fb      	str	r3, [r7, #28]
 800c4b2:	2303      	movs	r3, #3
 800c4b4:	623b      	str	r3, [r7, #32]
 800c4b6:	2305      	movs	r3, #5
 800c4b8:	627b      	str	r3, [r7, #36]	@ 0x24
 800c4ba:	f107 0314 	add.w	r3, r7, #20
 800c4be:	4619      	mov	r1, r3
 800c4c0:	4811      	ldr	r0, [pc, #68]	@ (800c508 <HAL_SPI_MspInit+0xcc>)
 800c4c2:	f7f5 fa63 	bl	800198c <HAL_GPIO_Init>
 800c4c6:	2320      	movs	r3, #32
 800c4c8:	617b      	str	r3, [r7, #20]
 800c4ca:	2302      	movs	r3, #2
 800c4cc:	61bb      	str	r3, [r7, #24]
 800c4ce:	2300      	movs	r3, #0
 800c4d0:	61fb      	str	r3, [r7, #28]
 800c4d2:	2303      	movs	r3, #3
 800c4d4:	623b      	str	r3, [r7, #32]
 800c4d6:	2305      	movs	r3, #5
 800c4d8:	627b      	str	r3, [r7, #36]	@ 0x24
 800c4da:	f107 0314 	add.w	r3, r7, #20
 800c4de:	4619      	mov	r1, r3
 800c4e0:	480a      	ldr	r0, [pc, #40]	@ (800c50c <HAL_SPI_MspInit+0xd0>)
 800c4e2:	f7f5 fa53 	bl	800198c <HAL_GPIO_Init>
 800c4e6:	2200      	movs	r2, #0
 800c4e8:	210f      	movs	r1, #15
 800c4ea:	2023      	movs	r0, #35	@ 0x23
 800c4ec:	f7f4 f95d 	bl	80007aa <HAL_NVIC_SetPriority>
 800c4f0:	2023      	movs	r0, #35	@ 0x23
 800c4f2:	f7f4 f976 	bl	80007e2 <HAL_NVIC_EnableIRQ>
 800c4f6:	bf00      	nop
 800c4f8:	3728      	adds	r7, #40	@ 0x28
 800c4fa:	46bd      	mov	sp, r7
 800c4fc:	bd80      	pop	{r7, pc}
 800c4fe:	bf00      	nop
 800c500:	40013000 	.word	0x40013000
 800c504:	40023800 	.word	0x40023800
 800c508:	40020000 	.word	0x40020000
 800c50c:	40020400 	.word	0x40020400

0800c510 <MX_USART3_UART_Init>:
 800c510:	b580      	push	{r7, lr}
 800c512:	af00      	add	r7, sp, #0
 800c514:	4b14      	ldr	r3, [pc, #80]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c516:	4a15      	ldr	r2, [pc, #84]	@ (800c56c <MX_USART3_UART_Init+0x5c>)
 800c518:	601a      	str	r2, [r3, #0]
 800c51a:	4b13      	ldr	r3, [pc, #76]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c51c:	f44f 32e1 	mov.w	r2, #115200	@ 0x1c200
 800c520:	605a      	str	r2, [r3, #4]
 800c522:	4b11      	ldr	r3, [pc, #68]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c524:	2200      	movs	r2, #0
 800c526:	609a      	str	r2, [r3, #8]
 800c528:	4b0f      	ldr	r3, [pc, #60]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c52a:	2200      	movs	r2, #0
 800c52c:	60da      	str	r2, [r3, #12]
 800c52e:	4b0e      	ldr	r3, [pc, #56]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c530:	2200      	movs	r2, #0
 800c532:	611a      	str	r2, [r3, #16]
 800c534:	4b0c      	ldr	r3, [pc, #48]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c536:	220c      	movs	r2, #12
 800c538:	615a      	str	r2, [r3, #20]
 800c53a:	4b0b      	ldr	r3, [pc, #44]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c53c:	2200      	movs	r2, #0
 800c53e:	619a      	str	r2, [r3, #24]
 800c540:	4b09      	ldr	r3, [pc, #36]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c542:	2200      	movs	r2, #0
 800c544:	61da      	str	r2, [r3, #28]
 800c546:	4b08      	ldr	r3, [pc, #32]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c548:	2200      	movs	r2, #0
 800c54a:	621a      	str	r2, [r3, #32]
 800c54c:	4b06      	ldr	r3, [pc, #24]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c54e:	2200      	movs	r2, #0
 800c550:	625a      	str	r2, [r3, #36]	@ 0x24
 800c552:	4805      	ldr	r0, [pc, #20]	@ (800c568 <MX_USART3_UART_Init+0x58>)
 800c554:	f7f8 fb2f 	bl	8004bb6 <HAL_UART_Init>
 800c558:	4603      	mov	r3, r0
 800c55a:	2b00      	cmp	r3, #0
 800c55c:	d001      	beq.n	800c562 <MX_USART3_UART_Init+0x52>
 800c55e:	f7ff fc6b 	bl	800be38 <Error_Handler>
 800c562:	bf00      	nop
 800c564:	bd80      	pop	{r7, pc}
 800c566:	bf00      	nop
 800c568:	200498ac 	.word	0x200498ac
 800c56c:	40004800 	.word	0x40004800

0800c570 <HAL_UART_MspInit>:
 800c570:	b580      	push	{r7, lr}
 800c572:	b0aa      	sub	sp, #168	@ 0xa8
 800c574:	af00      	add	r7, sp, #0
 800c576:	6078      	str	r0, [r7, #4]
 800c578:	f107 0394 	add.w	r3, r7, #148	@ 0x94
 800c57c:	2200      	movs	r2, #0
 800c57e:	601a      	str	r2, [r3, #0]
 800c580:	605a      	str	r2, [r3, #4]
 800c582:	609a      	str	r2, [r3, #8]
 800c584:	60da      	str	r2, [r3, #12]
 800c586:	611a      	str	r2, [r3, #16]
 800c588:	f107 0310 	add.w	r3, r7, #16
 800c58c:	2284      	movs	r2, #132	@ 0x84
 800c58e:	2100      	movs	r1, #0
 800c590:	4618      	mov	r0, r3
 800c592:	f000 fe2b 	bl	800d1ec <memset>
 800c596:	687b      	ldr	r3, [r7, #4]
 800c598:	681b      	ldr	r3, [r3, #0]
 800c59a:	4a22      	ldr	r2, [pc, #136]	@ (800c624 <HAL_UART_MspInit+0xb4>)
 800c59c:	4293      	cmp	r3, r2
 800c59e:	d13c      	bne.n	800c61a <HAL_UART_MspInit+0xaa>
 800c5a0:	f44f 7380 	mov.w	r3, #256	@ 0x100
 800c5a4:	613b      	str	r3, [r7, #16]
 800c5a6:	2300      	movs	r3, #0
 800c5a8:	65fb      	str	r3, [r7, #92]	@ 0x5c
 800c5aa:	f107 0310 	add.w	r3, r7, #16
 800c5ae:	4618      	mov	r0, r3
 800c5b0:	f7f4 fdfc 	bl	80011ac <HAL_RCCEx_PeriphCLKConfig>
 800c5b4:	4603      	mov	r3, r0
 800c5b6:	2b00      	cmp	r3, #0
 800c5b8:	d001      	beq.n	800c5be <HAL_UART_MspInit+0x4e>
 800c5ba:	f7ff fc3d 	bl	800be38 <Error_Handler>
 800c5be:	4b1a      	ldr	r3, [pc, #104]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5c0:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800c5c2:	4a19      	ldr	r2, [pc, #100]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5c4:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 800c5c8:	6413      	str	r3, [r2, #64]	@ 0x40
 800c5ca:	4b17      	ldr	r3, [pc, #92]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5cc:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800c5ce:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 800c5d2:	60fb      	str	r3, [r7, #12]
 800c5d4:	68fb      	ldr	r3, [r7, #12]
 800c5d6:	4b14      	ldr	r3, [pc, #80]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5d8:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c5da:	4a13      	ldr	r2, [pc, #76]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5dc:	f043 0308 	orr.w	r3, r3, #8
 800c5e0:	6313      	str	r3, [r2, #48]	@ 0x30
 800c5e2:	4b11      	ldr	r3, [pc, #68]	@ (800c628 <HAL_UART_MspInit+0xb8>)
 800c5e4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800c5e6:	f003 0308 	and.w	r3, r3, #8
 800c5ea:	60bb      	str	r3, [r7, #8]
 800c5ec:	68bb      	ldr	r3, [r7, #8]
 800c5ee:	f44f 7340 	mov.w	r3, #768	@ 0x300
 800c5f2:	f8c7 3094 	str.w	r3, [r7, #148]	@ 0x94
 800c5f6:	2302      	movs	r3, #2
 800c5f8:	f8c7 3098 	str.w	r3, [r7, #152]	@ 0x98
 800c5fc:	2300      	movs	r3, #0
 800c5fe:	f8c7 309c 	str.w	r3, [r7, #156]	@ 0x9c
 800c602:	2303      	movs	r3, #3
 800c604:	f8c7 30a0 	str.w	r3, [r7, #160]	@ 0xa0
 800c608:	2307      	movs	r3, #7
 800c60a:	f8c7 30a4 	str.w	r3, [r7, #164]	@ 0xa4
 800c60e:	f107 0394 	add.w	r3, r7, #148	@ 0x94
 800c612:	4619      	mov	r1, r3
 800c614:	4805      	ldr	r0, [pc, #20]	@ (800c62c <HAL_UART_MspInit+0xbc>)
 800c616:	f7f5 f9b9 	bl	800198c <HAL_GPIO_Init>
 800c61a:	bf00      	nop
 800c61c:	37a8      	adds	r7, #168	@ 0xa8
 800c61e:	46bd      	mov	sp, r7
 800c620:	bd80      	pop	{r7, pc}
 800c622:	bf00      	nop
 800c624:	40004800 	.word	0x40004800
 800c628:	40023800 	.word	0x40023800
 800c62c:	40020c00 	.word	0x40020c00

0800c630 <NMI_Handler>:
 800c630:	b480      	push	{r7}
 800c632:	af00      	add	r7, sp, #0
 800c634:	bf00      	nop
 800c636:	e7fd      	b.n	800c634 <NMI_Handler+0x4>

0800c638 <HardFault_Handler>:
 800c638:	b480      	push	{r7}
 800c63a:	af00      	add	r7, sp, #0
 800c63c:	bf00      	nop
 800c63e:	e7fd      	b.n	800c63c <HardFault_Handler+0x4>

0800c640 <MemManage_Handler>:
 800c640:	b480      	push	{r7}
 800c642:	af00      	add	r7, sp, #0
 800c644:	bf00      	nop
 800c646:	e7fd      	b.n	800c644 <MemManage_Handler+0x4>

0800c648 <BusFault_Handler>:
 800c648:	b480      	push	{r7}
 800c64a:	af00      	add	r7, sp, #0
 800c64c:	bf00      	nop
 800c64e:	e7fd      	b.n	800c64c <BusFault_Handler+0x4>

0800c650 <UsageFault_Handler>:
 800c650:	b480      	push	{r7}
 800c652:	af00      	add	r7, sp, #0
 800c654:	bf00      	nop
 800c656:	e7fd      	b.n	800c654 <UsageFault_Handler+0x4>

0800c658 <DebugMon_Handler>:
 800c658:	b480      	push	{r7}
 800c65a:	af00      	add	r7, sp, #0
 800c65c:	bf00      	nop
 800c65e:	46bd      	mov	sp, r7
 800c660:	f85d 7b04 	ldr.w	r7, [sp], #4
 800c664:	4770      	bx	lr

0800c666 <SysTick_Handler>:
 800c666:	b580      	push	{r7, lr}
 800c668:	af00      	add	r7, sp, #0
 800c66a:	f7f5 ffbb 	bl	80025e4 <HAL_IncTick>
 800c66e:	f7fa fea3 	bl	80073b8 <xTaskGetSchedulerState>
 800c672:	4603      	mov	r3, r0
 800c674:	2b01      	cmp	r3, #1
 800c676:	d001      	beq.n	800c67c <SysTick_Handler+0x16>
 800c678:	f7fc fc3e 	bl	8008ef8 <xPortSysTickHandler>
 800c67c:	bf00      	nop
 800c67e:	bd80      	pop	{r7, pc}

0800c680 <SPI1_IRQHandler>:
 800c680:	b580      	push	{r7, lr}
 800c682:	af00      	add	r7, sp, #0
 800c684:	4802      	ldr	r0, [pc, #8]	@ (800c690 <SPI1_IRQHandler+0x10>)
 800c686:	f7f7 ff77 	bl	8004578 <HAL_SPI_IRQHandler>
 800c68a:	bf00      	nop
 800c68c:	bd80      	pop	{r7, pc}
 800c68e:	bf00      	nop
 800c690:	20049848 	.word	0x20049848

0800c694 <SDMMC1_IRQHandler>:
 800c694:	b580      	push	{r7, lr}
 800c696:	af00      	add	r7, sp, #0
 800c698:	4802      	ldr	r0, [pc, #8]	@ (800c6a4 <SDMMC1_IRQHandler+0x10>)
 800c69a:	f7f6 ff91 	bl	80035c0 <HAL_SD_IRQHandler>
 800c69e:	bf00      	nop
 800c6a0:	bd80      	pop	{r7, pc}
 800c6a2:	bf00      	nop
 800c6a4:	20049704 	.word	0x20049704

0800c6a8 <DMA2_Stream3_IRQHandler>:
 800c6a8:	b580      	push	{r7, lr}
 800c6aa:	af00      	add	r7, sp, #0
 800c6ac:	4802      	ldr	r0, [pc, #8]	@ (800c6b8 <DMA2_Stream3_IRQHandler+0x10>)
 800c6ae:	f7f5 fc95 	bl	8001fdc <HAL_DMA_IRQHandler>
 800c6b2:	bf00      	nop
 800c6b4:	bd80      	pop	{r7, pc}
 800c6b6:	bf00      	nop
 800c6b8:	20049788 	.word	0x20049788

0800c6bc <DMA2_Stream6_IRQHandler>:
 800c6bc:	b580      	push	{r7, lr}
 800c6be:	af00      	add	r7, sp, #0
 800c6c0:	4802      	ldr	r0, [pc, #8]	@ (800c6cc <DMA2_Stream6_IRQHandler+0x10>)
 800c6c2:	f7f5 fc8b 	bl	8001fdc <HAL_DMA_IRQHandler>
 800c6c6:	bf00      	nop
 800c6c8:	bd80      	pop	{r7, pc}
 800c6ca:	bf00      	nop
 800c6cc:	200497e8 	.word	0x200497e8

0800c6d0 <HAL_MspInit>:
 800c6d0:	b580      	push	{r7, lr}
 800c6d2:	b082      	sub	sp, #8
 800c6d4:	af00      	add	r7, sp, #0
 800c6d6:	4b11      	ldr	r3, [pc, #68]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6d8:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800c6da:	4a10      	ldr	r2, [pc, #64]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6dc:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 800c6e0:	6413      	str	r3, [r2, #64]	@ 0x40
 800c6e2:	4b0e      	ldr	r3, [pc, #56]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6e4:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 800c6e6:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 800c6ea:	607b      	str	r3, [r7, #4]
 800c6ec:	687b      	ldr	r3, [r7, #4]
 800c6ee:	4b0b      	ldr	r3, [pc, #44]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6f0:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c6f2:	4a0a      	ldr	r2, [pc, #40]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6f4:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 800c6f8:	6453      	str	r3, [r2, #68]	@ 0x44
 800c6fa:	4b08      	ldr	r3, [pc, #32]	@ (800c71c <HAL_MspInit+0x4c>)
 800c6fc:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 800c6fe:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 800c702:	603b      	str	r3, [r7, #0]
 800c704:	683b      	ldr	r3, [r7, #0]
 800c706:	2200      	movs	r2, #0
 800c708:	210f      	movs	r1, #15
 800c70a:	f06f 0001 	mvn.w	r0, #1
 800c70e:	f7f4 f84c 	bl	80007aa <HAL_NVIC_SetPriority>
 800c712:	bf00      	nop
 800c714:	3708      	adds	r7, #8
 800c716:	46bd      	mov	sp, r7
 800c718:	bd80      	pop	{r7, pc}
 800c71a:	bf00      	nop
 800c71c:	40023800 	.word	0x40023800

0800c720 <_sbrk>:
 800c720:	b580      	push	{r7, lr}
 800c722:	b086      	sub	sp, #24
 800c724:	af00      	add	r7, sp, #0
 800c726:	6078      	str	r0, [r7, #4]
 800c728:	4a14      	ldr	r2, [pc, #80]	@ (800c77c <_sbrk+0x5c>)
 800c72a:	4b15      	ldr	r3, [pc, #84]	@ (800c780 <_sbrk+0x60>)
 800c72c:	1ad3      	subs	r3, r2, r3
 800c72e:	617b      	str	r3, [r7, #20]
 800c730:	697b      	ldr	r3, [r7, #20]
 800c732:	613b      	str	r3, [r7, #16]
 800c734:	4b13      	ldr	r3, [pc, #76]	@ (800c784 <_sbrk+0x64>)
 800c736:	681b      	ldr	r3, [r3, #0]
 800c738:	2b00      	cmp	r3, #0
 800c73a:	d102      	bne.n	800c742 <_sbrk+0x22>
 800c73c:	4b11      	ldr	r3, [pc, #68]	@ (800c784 <_sbrk+0x64>)
 800c73e:	4a12      	ldr	r2, [pc, #72]	@ (800c788 <_sbrk+0x68>)
 800c740:	601a      	str	r2, [r3, #0]
 800c742:	4b10      	ldr	r3, [pc, #64]	@ (800c784 <_sbrk+0x64>)
 800c744:	681a      	ldr	r2, [r3, #0]
 800c746:	687b      	ldr	r3, [r7, #4]
 800c748:	4413      	add	r3, r2
 800c74a:	693a      	ldr	r2, [r7, #16]
 800c74c:	429a      	cmp	r2, r3
 800c74e:	d207      	bcs.n	800c760 <_sbrk+0x40>
 800c750:	f000 fd64 	bl	800d21c <__errno>
 800c754:	4603      	mov	r3, r0
 800c756:	220c      	movs	r2, #12
 800c758:	601a      	str	r2, [r3, #0]
 800c75a:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800c75e:	e009      	b.n	800c774 <_sbrk+0x54>
 800c760:	4b08      	ldr	r3, [pc, #32]	@ (800c784 <_sbrk+0x64>)
 800c762:	681b      	ldr	r3, [r3, #0]
 800c764:	60fb      	str	r3, [r7, #12]
 800c766:	4b07      	ldr	r3, [pc, #28]	@ (800c784 <_sbrk+0x64>)
 800c768:	681a      	ldr	r2, [r3, #0]
 800c76a:	687b      	ldr	r3, [r7, #4]
 800c76c:	4413      	add	r3, r2
 800c76e:	4a05      	ldr	r2, [pc, #20]	@ (800c784 <_sbrk+0x64>)
 800c770:	6013      	str	r3, [r2, #0]
 800c772:	68fb      	ldr	r3, [r7, #12]
 800c774:	4618      	mov	r0, r3
 800c776:	3718      	adds	r7, #24
 800c778:	46bd      	mov	sp, r7
 800c77a:	bd80      	pop	{r7, pc}
 800c77c:	20050000 	.word	0x20050000
 800c780:	00000b00 	.word	0x00000b00
 800c784:	20049934 	.word	0x20049934
 800c788:	20049a90 	.word	0x20049a90

0800c78c <Reset_Handler>:
 800c78c:	f8df d034 	ldr.w	sp, [pc, #52]	@ 800c7c4 <LoopFillZerobss+0xe>
 800c790:	f7f3 ff1e 	bl	80005d0 <SystemInit>
 800c794:	480c      	ldr	r0, [pc, #48]	@ (800c7c8 <LoopFillZerobss+0x12>)
 800c796:	490d      	ldr	r1, [pc, #52]	@ (800c7cc <LoopFillZerobss+0x16>)
 800c798:	4a0d      	ldr	r2, [pc, #52]	@ (800c7d0 <LoopFillZerobss+0x1a>)
 800c79a:	2300      	movs	r3, #0
 800c79c:	e002      	b.n	800c7a4 <LoopCopyDataInit>

0800c79e <CopyDataInit>:
 800c79e:	58d4      	ldr	r4, [r2, r3]
 800c7a0:	50c4      	str	r4, [r0, r3]
 800c7a2:	3304      	adds	r3, #4

0800c7a4 <LoopCopyDataInit>:
 800c7a4:	18c4      	adds	r4, r0, r3
 800c7a6:	428c      	cmp	r4, r1
 800c7a8:	d3f9      	bcc.n	800c79e <CopyDataInit>
 800c7aa:	4a0a      	ldr	r2, [pc, #40]	@ (800c7d4 <LoopFillZerobss+0x1e>)
 800c7ac:	4c0a      	ldr	r4, [pc, #40]	@ (800c7d8 <LoopFillZerobss+0x22>)
 800c7ae:	2300      	movs	r3, #0
 800c7b0:	e001      	b.n	800c7b6 <LoopFillZerobss>

0800c7b2 <FillZerobss>:
 800c7b2:	6013      	str	r3, [r2, #0]
 800c7b4:	3204      	adds	r2, #4

0800c7b6 <LoopFillZerobss>:
 800c7b6:	42a2      	cmp	r2, r4
 800c7b8:	d3fb      	bcc.n	800c7b2 <FillZerobss>
 800c7ba:	f000 fd35 	bl	800d228 <__libc_init_array>
 800c7be:	f7ff fab5 	bl	800bd2c <main>
 800c7c2:	4770      	bx	lr
 800c7c4:	20050000 	.word	0x20050000
 800c7c8:	20000000 	.word	0x20000000
 800c7cc:	20000064 	.word	0x20000064
 800c7d0:	0800dc80 	.word	0x0800dc80
 800c7d4:	20000064 	.word	0x20000064
 800c7d8:	20049a8c 	.word	0x20049a8c

0800c7dc <ADC_IRQHandler>:
 800c7dc:	e7fe      	b.n	800c7dc <ADC_IRQHandler>
	...

0800c7e0 <loader_turn_led_on>:
 800c7e0:	b580      	push	{r7, lr}
 800c7e2:	af00      	add	r7, sp, #0
 800c7e4:	2101      	movs	r1, #1
 800c7e6:	4802      	ldr	r0, [pc, #8]	@ (800c7f0 <loader_turn_led_on+0x10>)
 800c7e8:	f7f5 faad 	bl	8001d46 <HAL_GPIO_TogglePin>
 800c7ec:	bf00      	nop
 800c7ee:	bd80      	pop	{r7, pc}
 800c7f0:	40020400 	.word	0x40020400

0800c7f4 <debug>:
 800c7f4:	b480      	push	{r7}
 800c7f6:	b083      	sub	sp, #12
 800c7f8:	af00      	add	r7, sp, #0
 800c7fa:	6078      	str	r0, [r7, #4]
 800c7fc:	4b05      	ldr	r3, [pc, #20]	@ (800c814 <debug+0x20>)
 800c7fe:	781b      	ldrb	r3, [r3, #0]
 800c800:	3301      	adds	r3, #1
 800c802:	b2da      	uxtb	r2, r3
 800c804:	4b03      	ldr	r3, [pc, #12]	@ (800c814 <debug+0x20>)
 800c806:	701a      	strb	r2, [r3, #0]
 800c808:	bf00      	nop
 800c80a:	370c      	adds	r7, #12
 800c80c:	46bd      	mov	sp, r7
 800c80e:	f85d 7b04 	ldr.w	r7, [sp], #4
 800c812:	4770      	bx	lr
 800c814:	20049940 	.word	0x20049940

0800c818 <perform_relocations>:
 800c818:	b580      	push	{r7, lr}
 800c81a:	b09e      	sub	sp, #120	@ 0x78
 800c81c:	af00      	add	r7, sp, #0
 800c81e:	60f8      	str	r0, [r7, #12]
 800c820:	60b9      	str	r1, [r7, #8]
 800c822:	607a      	str	r2, [r7, #4]
 800c824:	68fb      	ldr	r3, [r7, #12]
 800c826:	663b      	str	r3, [r7, #96]	@ 0x60
 800c828:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800c82a:	6a1b      	ldr	r3, [r3, #32]
 800c82c:	68fa      	ldr	r2, [r7, #12]
 800c82e:	4413      	add	r3, r2
 800c830:	65fb      	str	r3, [r7, #92]	@ 0x5c
 800c832:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800c834:	8e5b      	ldrh	r3, [r3, #50]	@ 0x32
 800c836:	461a      	mov	r2, r3
 800c838:	4613      	mov	r3, r2
 800c83a:	009b      	lsls	r3, r3, #2
 800c83c:	4413      	add	r3, r2
 800c83e:	00db      	lsls	r3, r3, #3
 800c840:	461a      	mov	r2, r3
 800c842:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c844:	4413      	add	r3, r2
 800c846:	691b      	ldr	r3, [r3, #16]
 800c848:	68fa      	ldr	r2, [r7, #12]
 800c84a:	4413      	add	r3, r2
 800c84c:	65bb      	str	r3, [r7, #88]	@ 0x58
 800c84e:	2300      	movs	r3, #0
 800c850:	677b      	str	r3, [r7, #116]	@ 0x74
 800c852:	2300      	movs	r3, #0
 800c854:	673b      	str	r3, [r7, #112]	@ 0x70
 800c856:	2300      	movs	r3, #0
 800c858:	66fb      	str	r3, [r7, #108]	@ 0x6c
 800c85a:	e02f      	b.n	800c8bc <perform_relocations+0xa4>
 800c85c:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
 800c85e:	4613      	mov	r3, r2
 800c860:	009b      	lsls	r3, r3, #2
 800c862:	4413      	add	r3, r2
 800c864:	00db      	lsls	r3, r3, #3
 800c866:	461a      	mov	r2, r3
 800c868:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c86a:	4413      	add	r3, r2
 800c86c:	681b      	ldr	r3, [r3, #0]
 800c86e:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800c870:	4413      	add	r3, r2
 800c872:	617b      	str	r3, [r7, #20]
 800c874:	4969      	ldr	r1, [pc, #420]	@ (800ca1c <perform_relocations+0x204>)
 800c876:	6978      	ldr	r0, [r7, #20]
 800c878:	f7f3 fe42 	bl	8000500 <strcmp>
 800c87c:	4603      	mov	r3, r0
 800c87e:	2b00      	cmp	r3, #0
 800c880:	d109      	bne.n	800c896 <perform_relocations+0x7e>
 800c882:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
 800c884:	4613      	mov	r3, r2
 800c886:	009b      	lsls	r3, r3, #2
 800c888:	4413      	add	r3, r2
 800c88a:	00db      	lsls	r3, r3, #3
 800c88c:	461a      	mov	r2, r3
 800c88e:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c890:	4413      	add	r3, r2
 800c892:	677b      	str	r3, [r7, #116]	@ 0x74
 800c894:	e00f      	b.n	800c8b6 <perform_relocations+0x9e>
 800c896:	4962      	ldr	r1, [pc, #392]	@ (800ca20 <perform_relocations+0x208>)
 800c898:	6978      	ldr	r0, [r7, #20]
 800c89a:	f7f3 fe31 	bl	8000500 <strcmp>
 800c89e:	4603      	mov	r3, r0
 800c8a0:	2b00      	cmp	r3, #0
 800c8a2:	d108      	bne.n	800c8b6 <perform_relocations+0x9e>
 800c8a4:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
 800c8a6:	4613      	mov	r3, r2
 800c8a8:	009b      	lsls	r3, r3, #2
 800c8aa:	4413      	add	r3, r2
 800c8ac:	00db      	lsls	r3, r3, #3
 800c8ae:	461a      	mov	r2, r3
 800c8b0:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c8b2:	4413      	add	r3, r2
 800c8b4:	673b      	str	r3, [r7, #112]	@ 0x70
 800c8b6:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
 800c8b8:	3301      	adds	r3, #1
 800c8ba:	66fb      	str	r3, [r7, #108]	@ 0x6c
 800c8bc:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800c8be:	8e1b      	ldrh	r3, [r3, #48]	@ 0x30
 800c8c0:	461a      	mov	r2, r3
 800c8c2:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
 800c8c4:	4293      	cmp	r3, r2
 800c8c6:	dbc9      	blt.n	800c85c <perform_relocations+0x44>
 800c8c8:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
 800c8ca:	2b00      	cmp	r3, #0
 800c8cc:	d002      	beq.n	800c8d4 <perform_relocations+0xbc>
 800c8ce:	6f3b      	ldr	r3, [r7, #112]	@ 0x70
 800c8d0:	2b00      	cmp	r3, #0
 800c8d2:	d102      	bne.n	800c8da <perform_relocations+0xc2>
 800c8d4:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800c8d8:	e09b      	b.n	800ca12 <perform_relocations+0x1fa>
 800c8da:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
 800c8dc:	691b      	ldr	r3, [r3, #16]
 800c8de:	68fa      	ldr	r2, [r7, #12]
 800c8e0:	4413      	add	r3, r2
 800c8e2:	657b      	str	r3, [r7, #84]	@ 0x54
 800c8e4:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
 800c8e6:	695b      	ldr	r3, [r3, #20]
 800c8e8:	091b      	lsrs	r3, r3, #4
 800c8ea:	653b      	str	r3, [r7, #80]	@ 0x50
 800c8ec:	2300      	movs	r3, #0
 800c8ee:	66bb      	str	r3, [r7, #104]	@ 0x68
 800c8f0:	e087      	b.n	800ca02 <perform_relocations+0x1ea>
 800c8f2:	6eba      	ldr	r2, [r7, #104]	@ 0x68
 800c8f4:	4613      	mov	r3, r2
 800c8f6:	009b      	lsls	r3, r3, #2
 800c8f8:	4413      	add	r3, r2
 800c8fa:	00db      	lsls	r3, r3, #3
 800c8fc:	461a      	mov	r2, r3
 800c8fe:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c900:	4413      	add	r3, r2
 800c902:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800c904:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800c906:	685b      	ldr	r3, [r3, #4]
 800c908:	2b09      	cmp	r3, #9
 800c90a:	d177      	bne.n	800c9fc <perform_relocations+0x1e4>
 800c90c:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800c90e:	69db      	ldr	r3, [r3, #28]
 800c910:	64bb      	str	r3, [r7, #72]	@ 0x48
 800c912:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 800c914:	4613      	mov	r3, r2
 800c916:	009b      	lsls	r3, r3, #2
 800c918:	4413      	add	r3, r2
 800c91a:	00db      	lsls	r3, r3, #3
 800c91c:	461a      	mov	r2, r3
 800c91e:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800c920:	4413      	add	r3, r2
 800c922:	647b      	str	r3, [r7, #68]	@ 0x44
 800c924:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800c926:	68da      	ldr	r2, [r3, #12]
 800c928:	687b      	ldr	r3, [r7, #4]
 800c92a:	1ad3      	subs	r3, r2, r3
 800c92c:	68ba      	ldr	r2, [r7, #8]
 800c92e:	4413      	add	r3, r2
 800c930:	643b      	str	r3, [r7, #64]	@ 0x40
 800c932:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800c934:	695b      	ldr	r3, [r3, #20]
 800c936:	08db      	lsrs	r3, r3, #3
 800c938:	63fb      	str	r3, [r7, #60]	@ 0x3c
 800c93a:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800c93c:	691b      	ldr	r3, [r3, #16]
 800c93e:	68fa      	ldr	r2, [r7, #12]
 800c940:	4413      	add	r3, r2
 800c942:	63bb      	str	r3, [r7, #56]	@ 0x38
 800c944:	2300      	movs	r3, #0
 800c946:	667b      	str	r3, [r7, #100]	@ 0x64
 800c948:	e054      	b.n	800c9f4 <perform_relocations+0x1dc>
 800c94a:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800c94c:	00db      	lsls	r3, r3, #3
 800c94e:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800c950:	4413      	add	r3, r2
 800c952:	681b      	ldr	r3, [r3, #0]
 800c954:	637b      	str	r3, [r7, #52]	@ 0x34
 800c956:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800c958:	00db      	lsls	r3, r3, #3
 800c95a:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800c95c:	4413      	add	r3, r2
 800c95e:	685b      	ldr	r3, [r3, #4]
 800c960:	633b      	str	r3, [r7, #48]	@ 0x30
 800c962:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800c964:	0a1b      	lsrs	r3, r3, #8
 800c966:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800c968:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 800c96a:	b2db      	uxtb	r3, r3
 800c96c:	62bb      	str	r3, [r7, #40]	@ 0x28
 800c96e:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800c970:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 800c972:	429a      	cmp	r2, r3
 800c974:	d302      	bcc.n	800c97c <perform_relocations+0x164>
 800c976:	f06f 0301 	mvn.w	r3, #1
 800c97a:	e04a      	b.n	800ca12 <perform_relocations+0x1fa>
 800c97c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800c97e:	011b      	lsls	r3, r3, #4
 800c980:	6d7a      	ldr	r2, [r7, #84]	@ 0x54
 800c982:	4413      	add	r3, r2
 800c984:	627b      	str	r3, [r7, #36]	@ 0x24
 800c986:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800c988:	89db      	ldrh	r3, [r3, #14]
 800c98a:	2b00      	cmp	r3, #0
 800c98c:	d006      	beq.n	800c99c <perform_relocations+0x184>
 800c98e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 800c990:	685a      	ldr	r2, [r3, #4]
 800c992:	687b      	ldr	r3, [r7, #4]
 800c994:	1ad2      	subs	r2, r2, r3
 800c996:	68bb      	ldr	r3, [r7, #8]
 800c998:	4413      	add	r3, r2
 800c99a:	e000      	b.n	800c99e <perform_relocations+0x186>
 800c99c:	2300      	movs	r3, #0
 800c99e:	623b      	str	r3, [r7, #32]
 800c9a0:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 800c9a2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 800c9a4:	4413      	add	r3, r2
 800c9a6:	61fb      	str	r3, [r7, #28]
 800c9a8:	69fb      	ldr	r3, [r7, #28]
 800c9aa:	61bb      	str	r3, [r7, #24]
 800c9ac:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800c9ae:	2b0a      	cmp	r3, #10
 800c9b0:	d010      	beq.n	800c9d4 <perform_relocations+0x1bc>
 800c9b2:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800c9b4:	2b0a      	cmp	r3, #10
 800c9b6:	d816      	bhi.n	800c9e6 <perform_relocations+0x1ce>
 800c9b8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800c9ba:	2b02      	cmp	r3, #2
 800c9bc:	d003      	beq.n	800c9c6 <perform_relocations+0x1ae>
 800c9be:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 800c9c0:	2b03      	cmp	r3, #3
 800c9c2:	d013      	beq.n	800c9ec <perform_relocations+0x1d4>
 800c9c4:	e00f      	b.n	800c9e6 <perform_relocations+0x1ce>
 800c9c6:	69bb      	ldr	r3, [r7, #24]
 800c9c8:	681a      	ldr	r2, [r3, #0]
 800c9ca:	6a3b      	ldr	r3, [r7, #32]
 800c9cc:	441a      	add	r2, r3
 800c9ce:	69bb      	ldr	r3, [r7, #24]
 800c9d0:	601a      	str	r2, [r3, #0]
 800c9d2:	e00c      	b.n	800c9ee <perform_relocations+0x1d6>
 800c9d4:	69bb      	ldr	r3, [r7, #24]
 800c9d6:	681a      	ldr	r2, [r3, #0]
 800c9d8:	6a3b      	ldr	r3, [r7, #32]
 800c9da:	441a      	add	r2, r3
 800c9dc:	69bb      	ldr	r3, [r7, #24]
 800c9de:	1ad2      	subs	r2, r2, r3
 800c9e0:	69bb      	ldr	r3, [r7, #24]
 800c9e2:	601a      	str	r2, [r3, #0]
 800c9e4:	e003      	b.n	800c9ee <perform_relocations+0x1d6>
 800c9e6:	f06f 0302 	mvn.w	r3, #2
 800c9ea:	e012      	b.n	800ca12 <perform_relocations+0x1fa>
 800c9ec:	bf00      	nop
 800c9ee:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800c9f0:	3301      	adds	r3, #1
 800c9f2:	667b      	str	r3, [r7, #100]	@ 0x64
 800c9f4:	6e7a      	ldr	r2, [r7, #100]	@ 0x64
 800c9f6:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800c9f8:	429a      	cmp	r2, r3
 800c9fa:	dba6      	blt.n	800c94a <perform_relocations+0x132>
 800c9fc:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
 800c9fe:	3301      	adds	r3, #1
 800ca00:	66bb      	str	r3, [r7, #104]	@ 0x68
 800ca02:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800ca04:	8e1b      	ldrh	r3, [r3, #48]	@ 0x30
 800ca06:	461a      	mov	r2, r3
 800ca08:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
 800ca0a:	4293      	cmp	r3, r2
 800ca0c:	f6ff af71 	blt.w	800c8f2 <perform_relocations+0xda>
 800ca10:	2300      	movs	r3, #0
 800ca12:	4618      	mov	r0, r3
 800ca14:	3778      	adds	r7, #120	@ 0x78
 800ca16:	46bd      	mov	sp, r7
 800ca18:	bd80      	pop	{r7, pc}
 800ca1a:	bf00      	nop
 800ca1c:	0800da1c 	.word	0x0800da1c
 800ca20:	0800da24 	.word	0x0800da24

0800ca24 <load_and_start_app_as_task>:
 800ca24:	b580      	push	{r7, lr}
 800ca26:	b09a      	sub	sp, #104	@ 0x68
 800ca28:	af00      	add	r7, sp, #0
 800ca2a:	6078      	str	r0, [r7, #4]
 800ca2c:	687b      	ldr	r3, [r7, #4]
 800ca2e:	657b      	str	r3, [r7, #84]	@ 0x54
 800ca30:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800ca32:	69db      	ldr	r3, [r3, #28]
 800ca34:	687a      	ldr	r2, [r7, #4]
 800ca36:	4413      	add	r3, r2
 800ca38:	653b      	str	r3, [r7, #80]	@ 0x50
 800ca3a:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800ca3e:	667b      	str	r3, [r7, #100]	@ 0x64
 800ca40:	2300      	movs	r3, #0
 800ca42:	663b      	str	r3, [r7, #96]	@ 0x60
 800ca44:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ca46:	681b      	ldr	r3, [r3, #0]
 800ca48:	2b01      	cmp	r3, #1
 800ca4a:	d113      	bne.n	800ca74 <load_and_start_app_as_task+0x50>
 800ca4c:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ca4e:	689b      	ldr	r3, [r3, #8]
 800ca50:	6e7a      	ldr	r2, [r7, #100]	@ 0x64
 800ca52:	429a      	cmp	r2, r3
 800ca54:	d902      	bls.n	800ca5c <load_and_start_app_as_task+0x38>
 800ca56:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ca58:	689b      	ldr	r3, [r3, #8]
 800ca5a:	667b      	str	r3, [r7, #100]	@ 0x64
 800ca5c:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ca5e:	689a      	ldr	r2, [r3, #8]
 800ca60:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800ca62:	695b      	ldr	r3, [r3, #20]
 800ca64:	4413      	add	r3, r2
 800ca66:	64fb      	str	r3, [r7, #76]	@ 0x4c
 800ca68:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
 800ca6a:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800ca6c:	429a      	cmp	r2, r3
 800ca6e:	d901      	bls.n	800ca74 <load_and_start_app_as_task+0x50>
 800ca70:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 800ca72:	663b      	str	r3, [r7, #96]	@ 0x60
 800ca74:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800ca76:	f1b3 3fff 	cmp.w	r3, #4294967295	@ 0xffffffff
 800ca7a:	d002      	beq.n	800ca82 <load_and_start_app_as_task+0x5e>
 800ca7c:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
 800ca7e:	2b00      	cmp	r3, #0
 800ca80:	d102      	bne.n	800ca88 <load_and_start_app_as_task+0x64>
 800ca82:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800ca86:	e109      	b.n	800cc9c <load_and_start_app_as_task+0x278>
 800ca88:	6e3a      	ldr	r2, [r7, #96]	@ 0x60
 800ca8a:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800ca8c:	1ad3      	subs	r3, r2, r3
 800ca8e:	64bb      	str	r3, [r7, #72]	@ 0x48
 800ca90:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
 800ca92:	f7fb fea3 	bl	80087dc <pvPortMalloc>
 800ca96:	6478      	str	r0, [r7, #68]	@ 0x44
 800ca98:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800ca9a:	2b00      	cmp	r3, #0
 800ca9c:	d102      	bne.n	800caa4 <load_and_start_app_as_task+0x80>
 800ca9e:	f06f 0301 	mvn.w	r3, #1
 800caa2:	e0fb      	b.n	800cc9c <load_and_start_app_as_task+0x278>
 800caa4:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 800caa6:	2100      	movs	r1, #0
 800caa8:	6c78      	ldr	r0, [r7, #68]	@ 0x44
 800caaa:	f000 fb9f 	bl	800d1ec <memset>
 800caae:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800cab0:	681b      	ldr	r3, [r3, #0]
 800cab2:	2b01      	cmp	r3, #1
 800cab4:	d110      	bne.n	800cad8 <load_and_start_app_as_task+0xb4>
 800cab6:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800cab8:	689a      	ldr	r2, [r3, #8]
 800caba:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800cabc:	1ad3      	subs	r3, r2, r3
 800cabe:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 800cac0:	4413      	add	r3, r2
 800cac2:	643b      	str	r3, [r7, #64]	@ 0x40
 800cac4:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800cac6:	685b      	ldr	r3, [r3, #4]
 800cac8:	687a      	ldr	r2, [r7, #4]
 800caca:	18d1      	adds	r1, r2, r3
 800cacc:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 800cace:	691b      	ldr	r3, [r3, #16]
 800cad0:	461a      	mov	r2, r3
 800cad2:	6c38      	ldr	r0, [r7, #64]	@ 0x40
 800cad4:	f000 fbce 	bl	800d274 <memcpy>
 800cad8:	6e7a      	ldr	r2, [r7, #100]	@ 0x64
 800cada:	6c79      	ldr	r1, [r7, #68]	@ 0x44
 800cadc:	6878      	ldr	r0, [r7, #4]
 800cade:	f7ff fe9b 	bl	800c818 <perform_relocations>
 800cae2:	4603      	mov	r3, r0
 800cae4:	2b00      	cmp	r3, #0
 800cae6:	d005      	beq.n	800caf4 <load_and_start_app_as_task+0xd0>
 800cae8:	6c78      	ldr	r0, [r7, #68]	@ 0x44
 800caea:	f7fb ff45 	bl	8008978 <vPortFree>
 800caee:	f06f 0304 	mvn.w	r3, #4
 800caf2:	e0d3      	b.n	800cc9c <load_and_start_app_as_task+0x278>
 800caf4:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800caf6:	6a1b      	ldr	r3, [r3, #32]
 800caf8:	687a      	ldr	r2, [r7, #4]
 800cafa:	4413      	add	r3, r2
 800cafc:	63fb      	str	r3, [r7, #60]	@ 0x3c
 800cafe:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800cb00:	8e5b      	ldrh	r3, [r3, #50]	@ 0x32
 800cb02:	461a      	mov	r2, r3
 800cb04:	4613      	mov	r3, r2
 800cb06:	009b      	lsls	r3, r3, #2
 800cb08:	4413      	add	r3, r2
 800cb0a:	00db      	lsls	r3, r3, #3
 800cb0c:	461a      	mov	r2, r3
 800cb0e:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cb10:	4413      	add	r3, r2
 800cb12:	691b      	ldr	r3, [r3, #16]
 800cb14:	687a      	ldr	r2, [r7, #4]
 800cb16:	4413      	add	r3, r2
 800cb18:	63bb      	str	r3, [r7, #56]	@ 0x38
 800cb1a:	2300      	movs	r3, #0
 800cb1c:	65fb      	str	r3, [r7, #92]	@ 0x5c
 800cb1e:	2300      	movs	r3, #0
 800cb20:	65bb      	str	r3, [r7, #88]	@ 0x58
 800cb22:	e04b      	b.n	800cbbc <load_and_start_app_as_task+0x198>
 800cb24:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800cb26:	4613      	mov	r3, r2
 800cb28:	009b      	lsls	r3, r3, #2
 800cb2a:	4413      	add	r3, r2
 800cb2c:	00db      	lsls	r3, r3, #3
 800cb2e:	461a      	mov	r2, r3
 800cb30:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cb32:	4413      	add	r3, r2
 800cb34:	681b      	ldr	r3, [r3, #0]
 800cb36:	6bba      	ldr	r2, [r7, #56]	@ 0x38
 800cb38:	4413      	add	r3, r2
 800cb3a:	633b      	str	r3, [r7, #48]	@ 0x30
 800cb3c:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800cb3e:	4613      	mov	r3, r2
 800cb40:	009b      	lsls	r3, r3, #2
 800cb42:	4413      	add	r3, r2
 800cb44:	00db      	lsls	r3, r3, #3
 800cb46:	461a      	mov	r2, r3
 800cb48:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cb4a:	4413      	add	r3, r2
 800cb4c:	68da      	ldr	r2, [r3, #12]
 800cb4e:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800cb50:	1ad3      	subs	r3, r2, r3
 800cb52:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 800cb54:	4413      	add	r3, r2
 800cb56:	62fb      	str	r3, [r7, #44]	@ 0x2c
 800cb58:	4952      	ldr	r1, [pc, #328]	@ (800cca4 <load_and_start_app_as_task+0x280>)
 800cb5a:	6b38      	ldr	r0, [r7, #48]	@ 0x30
 800cb5c:	f7f3 fcd0 	bl	8000500 <strcmp>
 800cb60:	4603      	mov	r3, r0
 800cb62:	2b00      	cmp	r3, #0
 800cb64:	d101      	bne.n	800cb6a <load_and_start_app_as_task+0x146>
 800cb66:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
 800cb68:	65fb      	str	r3, [r7, #92]	@ 0x5c
 800cb6a:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800cb6c:	4613      	mov	r3, r2
 800cb6e:	009b      	lsls	r3, r3, #2
 800cb70:	4413      	add	r3, r2
 800cb72:	00db      	lsls	r3, r3, #3
 800cb74:	461a      	mov	r2, r3
 800cb76:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cb78:	4413      	add	r3, r2
 800cb7a:	685b      	ldr	r3, [r3, #4]
 800cb7c:	2b08      	cmp	r3, #8
 800cb7e:	d11a      	bne.n	800cbb6 <load_and_start_app_as_task+0x192>
 800cb80:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800cb82:	4613      	mov	r3, r2
 800cb84:	009b      	lsls	r3, r3, #2
 800cb86:	4413      	add	r3, r2
 800cb88:	00db      	lsls	r3, r3, #3
 800cb8a:	461a      	mov	r2, r3
 800cb8c:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cb8e:	4413      	add	r3, r2
 800cb90:	689b      	ldr	r3, [r3, #8]
 800cb92:	f003 0302 	and.w	r3, r3, #2
 800cb96:	2b00      	cmp	r3, #0
 800cb98:	d00d      	beq.n	800cbb6 <load_and_start_app_as_task+0x192>
 800cb9a:	6dba      	ldr	r2, [r7, #88]	@ 0x58
 800cb9c:	4613      	mov	r3, r2
 800cb9e:	009b      	lsls	r3, r3, #2
 800cba0:	4413      	add	r3, r2
 800cba2:	00db      	lsls	r3, r3, #3
 800cba4:	461a      	mov	r2, r3
 800cba6:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 800cba8:	4413      	add	r3, r2
 800cbaa:	695b      	ldr	r3, [r3, #20]
 800cbac:	461a      	mov	r2, r3
 800cbae:	2100      	movs	r1, #0
 800cbb0:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
 800cbb2:	f000 fb1b 	bl	800d1ec <memset>
 800cbb6:	6dbb      	ldr	r3, [r7, #88]	@ 0x58
 800cbb8:	3301      	adds	r3, #1
 800cbba:	65bb      	str	r3, [r7, #88]	@ 0x58
 800cbbc:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800cbbe:	8e1b      	ldrh	r3, [r3, #48]	@ 0x30
 800cbc0:	461a      	mov	r2, r3
 800cbc2:	6dbb      	ldr	r3, [r7, #88]	@ 0x58
 800cbc4:	4293      	cmp	r3, r2
 800cbc6:	dbad      	blt.n	800cb24 <load_and_start_app_as_task+0x100>
 800cbc8:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbca:	2b00      	cmp	r3, #0
 800cbcc:	d105      	bne.n	800cbda <load_and_start_app_as_task+0x1b6>
 800cbce:	6c78      	ldr	r0, [r7, #68]	@ 0x44
 800cbd0:	f7fb fed2 	bl	8008978 <vPortFree>
 800cbd4:	f06f 0302 	mvn.w	r3, #2
 800cbd8:	e060      	b.n	800cc9c <load_and_start_app_as_task+0x278>
 800cbda:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbdc:	4a32      	ldr	r2, [pc, #200]	@ (800cca8 <load_and_start_app_as_task+0x284>)
 800cbde:	61da      	str	r2, [r3, #28]
 800cbe0:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbe2:	4a32      	ldr	r2, [pc, #200]	@ (800ccac <load_and_start_app_as_task+0x288>)
 800cbe4:	f8c3 20ac 	str.w	r2, [r3, #172]	@ 0xac
 800cbe8:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbea:	4a31      	ldr	r2, [pc, #196]	@ (800ccb0 <load_and_start_app_as_task+0x28c>)
 800cbec:	f8c3 20b0 	str.w	r2, [r3, #176]	@ 0xb0
 800cbf0:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbf2:	4a30      	ldr	r2, [pc, #192]	@ (800ccb4 <load_and_start_app_as_task+0x290>)
 800cbf4:	62da      	str	r2, [r3, #44]	@ 0x2c
 800cbf6:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbf8:	4a2f      	ldr	r2, [pc, #188]	@ (800ccb8 <load_and_start_app_as_task+0x294>)
 800cbfa:	629a      	str	r2, [r3, #40]	@ 0x28
 800cbfc:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cbfe:	4a2f      	ldr	r2, [pc, #188]	@ (800ccbc <load_and_start_app_as_task+0x298>)
 800cc00:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
 800cc04:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc06:	4a2e      	ldr	r2, [pc, #184]	@ (800ccc0 <load_and_start_app_as_task+0x29c>)
 800cc08:	f8c3 20b8 	str.w	r2, [r3, #184]	@ 0xb8
 800cc0c:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc0e:	4a2d      	ldr	r2, [pc, #180]	@ (800ccc4 <load_and_start_app_as_task+0x2a0>)
 800cc10:	f8c3 20bc 	str.w	r2, [r3, #188]	@ 0xbc
 800cc14:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc16:	4a2c      	ldr	r2, [pc, #176]	@ (800ccc8 <load_and_start_app_as_task+0x2a4>)
 800cc18:	f8c3 20b4 	str.w	r2, [r3, #180]	@ 0xb4
 800cc1c:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc1e:	4a2b      	ldr	r2, [pc, #172]	@ (800cccc <load_and_start_app_as_task+0x2a8>)
 800cc20:	625a      	str	r2, [r3, #36]	@ 0x24
 800cc22:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc24:	4a2a      	ldr	r2, [pc, #168]	@ (800ccd0 <load_and_start_app_as_task+0x2ac>)
 800cc26:	621a      	str	r2, [r3, #32]
 800cc28:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc2a:	4a2a      	ldr	r2, [pc, #168]	@ (800ccd4 <load_and_start_app_as_task+0x2b0>)
 800cc2c:	f8c3 20c8 	str.w	r2, [r3, #200]	@ 0xc8
 800cc30:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 800cc32:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 800cc34:	6999      	ldr	r1, [r3, #24]
 800cc36:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
 800cc38:	1acb      	subs	r3, r1, r3
 800cc3a:	4413      	add	r3, r2
 800cc3c:	637b      	str	r3, [r7, #52]	@ 0x34
 800cc3e:	4a26      	ldr	r2, [pc, #152]	@ (800ccd8 <load_and_start_app_as_task+0x2b4>)
 800cc40:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 800cc42:	6013      	str	r3, [r2, #0]
 800cc44:	4b24      	ldr	r3, [pc, #144]	@ (800ccd8 <load_and_start_app_as_task+0x2b4>)
 800cc46:	681b      	ldr	r3, [r3, #0]
 800cc48:	461a      	mov	r2, r3
 800cc4a:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc4c:	615a      	str	r2, [r3, #20]
 800cc4e:	f107 0308 	add.w	r3, r7, #8
 800cc52:	2224      	movs	r2, #36	@ 0x24
 800cc54:	2100      	movs	r1, #0
 800cc56:	4618      	mov	r0, r3
 800cc58:	f000 fac8 	bl	800d1ec <memset>
 800cc5c:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
 800cc5e:	3306      	adds	r3, #6
 800cc60:	60bb      	str	r3, [r7, #8]
 800cc62:	f44f 5300 	mov.w	r3, #8192	@ 0x2000
 800cc66:	61fb      	str	r3, [r7, #28]
 800cc68:	2318      	movs	r3, #24
 800cc6a:	623b      	str	r3, [r7, #32]
 800cc6c:	f107 0308 	add.w	r3, r7, #8
 800cc70:	461a      	mov	r2, r3
 800cc72:	6df9      	ldr	r1, [r7, #92]	@ 0x5c
 800cc74:	6b78      	ldr	r0, [r7, #52]	@ 0x34
 800cc76:	f7fb f9ad 	bl	8007fd4 <osThreadNew>
 800cc7a:	4603      	mov	r3, r0
 800cc7c:	4a17      	ldr	r2, [pc, #92]	@ (800ccdc <load_and_start_app_as_task+0x2b8>)
 800cc7e:	6013      	str	r3, [r2, #0]
 800cc80:	4b16      	ldr	r3, [pc, #88]	@ (800ccdc <load_and_start_app_as_task+0x2b8>)
 800cc82:	681b      	ldr	r3, [r3, #0]
 800cc84:	2b00      	cmp	r3, #0
 800cc86:	d108      	bne.n	800cc9a <load_and_start_app_as_task+0x276>
 800cc88:	6c78      	ldr	r0, [r7, #68]	@ 0x44
 800cc8a:	f7fb fe75 	bl	8008978 <vPortFree>
 800cc8e:	4b12      	ldr	r3, [pc, #72]	@ (800ccd8 <load_and_start_app_as_task+0x2b4>)
 800cc90:	2200      	movs	r2, #0
 800cc92:	601a      	str	r2, [r3, #0]
 800cc94:	f06f 0303 	mvn.w	r3, #3
 800cc98:	e000      	b.n	800cc9c <load_and_start_app_as_task+0x278>
 800cc9a:	2300      	movs	r3, #0
 800cc9c:	4618      	mov	r0, r3
 800cc9e:	3768      	adds	r7, #104	@ 0x68
 800cca0:	46bd      	mov	sp, r7
 800cca2:	bd80      	pop	{r7, pc}
 800cca4:	0800da2c 	.word	0x0800da2c
 800cca8:	0800c7e1 	.word	0x0800c7e1
 800ccac:	08008121 	.word	0x08008121
 800ccb0:	08007f85 	.word	0x08007f85
 800ccb4:	0800b4e9 	.word	0x0800b4e9
 800ccb8:	0800ad79 	.word	0x0800ad79
 800ccbc:	0800cfbd 	.word	0x0800cfbd
 800ccc0:	0800cfe1 	.word	0x0800cfe1
 800ccc4:	0800d005 	.word	0x0800d005
 800ccc8:	0800cf89 	.word	0x0800cf89
 800cccc:	080087dd 	.word	0x080087dd
 800ccd0:	08008979 	.word	0x08008979
 800ccd4:	0800c7f5 	.word	0x0800c7f5
 800ccd8:	20049938 	.word	0x20049938
 800ccdc:	2004993c 	.word	0x2004993c

0800cce0 <is_elf_file>:
 800cce0:	b580      	push	{r7, lr}
 800cce2:	b084      	sub	sp, #16
 800cce4:	af00      	add	r7, sp, #0
 800cce6:	6078      	str	r0, [r7, #4]
 800cce8:	6878      	ldr	r0, [r7, #4]
 800ccea:	f7f3 fc13 	bl	8000514 <strlen>
 800ccee:	60f8      	str	r0, [r7, #12]
 800ccf0:	68fb      	ldr	r3, [r7, #12]
 800ccf2:	2b03      	cmp	r3, #3
 800ccf4:	d801      	bhi.n	800ccfa <is_elf_file+0x1a>
 800ccf6:	2300      	movs	r3, #0
 800ccf8:	e048      	b.n	800cd8c <is_elf_file+0xac>
 800ccfa:	68fb      	ldr	r3, [r7, #12]
 800ccfc:	3b04      	subs	r3, #4
 800ccfe:	687a      	ldr	r2, [r7, #4]
 800cd00:	4413      	add	r3, r2
 800cd02:	781b      	ldrb	r3, [r3, #0]
 800cd04:	2b2e      	cmp	r3, #46	@ 0x2e
 800cd06:	d140      	bne.n	800cd8a <is_elf_file+0xaa>
 800cd08:	68fb      	ldr	r3, [r7, #12]
 800cd0a:	3b03      	subs	r3, #3
 800cd0c:	687a      	ldr	r2, [r7, #4]
 800cd0e:	4413      	add	r3, r2
 800cd10:	781b      	ldrb	r3, [r3, #0]
 800cd12:	72fb      	strb	r3, [r7, #11]
 800cd14:	7afb      	ldrb	r3, [r7, #11]
 800cd16:	3301      	adds	r3, #1
 800cd18:	4a1e      	ldr	r2, [pc, #120]	@ (800cd94 <is_elf_file+0xb4>)
 800cd1a:	4413      	add	r3, r2
 800cd1c:	781b      	ldrb	r3, [r3, #0]
 800cd1e:	f003 0303 	and.w	r3, r3, #3
 800cd22:	2b02      	cmp	r3, #2
 800cd24:	d102      	bne.n	800cd2c <is_elf_file+0x4c>
 800cd26:	7afb      	ldrb	r3, [r7, #11]
 800cd28:	3b20      	subs	r3, #32
 800cd2a:	e000      	b.n	800cd2e <is_elf_file+0x4e>
 800cd2c:	7afb      	ldrb	r3, [r7, #11]
 800cd2e:	2b45      	cmp	r3, #69	@ 0x45
 800cd30:	d12b      	bne.n	800cd8a <is_elf_file+0xaa>
 800cd32:	68fb      	ldr	r3, [r7, #12]
 800cd34:	3b02      	subs	r3, #2
 800cd36:	687a      	ldr	r2, [r7, #4]
 800cd38:	4413      	add	r3, r2
 800cd3a:	781b      	ldrb	r3, [r3, #0]
 800cd3c:	72bb      	strb	r3, [r7, #10]
 800cd3e:	7abb      	ldrb	r3, [r7, #10]
 800cd40:	3301      	adds	r3, #1
 800cd42:	4a14      	ldr	r2, [pc, #80]	@ (800cd94 <is_elf_file+0xb4>)
 800cd44:	4413      	add	r3, r2
 800cd46:	781b      	ldrb	r3, [r3, #0]
 800cd48:	f003 0303 	and.w	r3, r3, #3
 800cd4c:	2b02      	cmp	r3, #2
 800cd4e:	d102      	bne.n	800cd56 <is_elf_file+0x76>
 800cd50:	7abb      	ldrb	r3, [r7, #10]
 800cd52:	3b20      	subs	r3, #32
 800cd54:	e000      	b.n	800cd58 <is_elf_file+0x78>
 800cd56:	7abb      	ldrb	r3, [r7, #10]
 800cd58:	2b4c      	cmp	r3, #76	@ 0x4c
 800cd5a:	d116      	bne.n	800cd8a <is_elf_file+0xaa>
 800cd5c:	68fb      	ldr	r3, [r7, #12]
 800cd5e:	3b01      	subs	r3, #1
 800cd60:	687a      	ldr	r2, [r7, #4]
 800cd62:	4413      	add	r3, r2
 800cd64:	781b      	ldrb	r3, [r3, #0]
 800cd66:	727b      	strb	r3, [r7, #9]
 800cd68:	7a7b      	ldrb	r3, [r7, #9]
 800cd6a:	3301      	adds	r3, #1
 800cd6c:	4a09      	ldr	r2, [pc, #36]	@ (800cd94 <is_elf_file+0xb4>)
 800cd6e:	4413      	add	r3, r2
 800cd70:	781b      	ldrb	r3, [r3, #0]
 800cd72:	f003 0303 	and.w	r3, r3, #3
 800cd76:	2b02      	cmp	r3, #2
 800cd78:	d102      	bne.n	800cd80 <is_elf_file+0xa0>
 800cd7a:	7a7b      	ldrb	r3, [r7, #9]
 800cd7c:	3b20      	subs	r3, #32
 800cd7e:	e000      	b.n	800cd82 <is_elf_file+0xa2>
 800cd80:	7a7b      	ldrb	r3, [r7, #9]
 800cd82:	2b46      	cmp	r3, #70	@ 0x46
 800cd84:	d101      	bne.n	800cd8a <is_elf_file+0xaa>
 800cd86:	2301      	movs	r3, #1
 800cd88:	e000      	b.n	800cd8c <is_elf_file+0xac>
 800cd8a:	2300      	movs	r3, #0
 800cd8c:	4618      	mov	r0, r3
 800cd8e:	3710      	adds	r7, #16
 800cd90:	46bd      	mov	sp, r7
 800cd92:	bd80      	pop	{r7, pc}
 800cd94:	0800db3c 	.word	0x0800db3c

0800cd98 <Loader_Task>:
 800cd98:	b580      	push	{r7, lr}
 800cd9a:	f5ad 7d36 	sub.w	sp, sp, #728	@ 0x2d8
 800cd9e:	af00      	add	r7, sp, #0
 800cda0:	f507 7336 	add.w	r3, r7, #728	@ 0x2d8
 800cda4:	f5a3 7335 	sub.w	r3, r3, #724	@ 0x2d4
 800cda8:	6018      	str	r0, [r3, #0]
 800cdaa:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
 800cdae:	f7fb f9b7 	bl	8008120 <osDelay>
 800cdb2:	2300      	movs	r3, #0
 800cdb4:	f8c7 32d4 	str.w	r3, [r7, #724]	@ 0x2d4
 800cdb8:	2201      	movs	r2, #1
 800cdba:	495b      	ldr	r1, [pc, #364]	@ (800cf28 <Loader_Task+0x190>)
 800cdbc:	485b      	ldr	r0, [pc, #364]	@ (800cf2c <Loader_Task+0x194>)
 800cdbe:	f7fd ff77 	bl	800acb0 <f_mount>
 800cdc2:	4603      	mov	r3, r0
 800cdc4:	f887 32d3 	strb.w	r3, [r7, #723]	@ 0x2d3
 800cdc8:	f897 32d3 	ldrb.w	r3, [r7, #723]	@ 0x2d3
 800cdcc:	2b00      	cmp	r3, #0
 800cdce:	d001      	beq.n	800cdd4 <Loader_Task+0x3c>
 800cdd0:	f7ff f832 	bl	800be38 <Error_Handler>
 800cdd4:	f507 7326 	add.w	r3, r7, #664	@ 0x298
 800cdd8:	4955      	ldr	r1, [pc, #340]	@ (800cf30 <Loader_Task+0x198>)
 800cdda:	4618      	mov	r0, r3
 800cddc:	f7fe fbb3 	bl	800b546 <f_opendir>
 800cde0:	4603      	mov	r3, r0
 800cde2:	f887 32d3 	strb.w	r3, [r7, #723]	@ 0x2d3
 800cde6:	f897 32d3 	ldrb.w	r3, [r7, #723]	@ 0x2d3
 800cdea:	2b00      	cmp	r3, #0
 800cdec:	d002      	beq.n	800cdf4 <Loader_Task+0x5c>
 800cdee:	f7ff f823 	bl	800be38 <Error_Handler>
 800cdf2:	e094      	b.n	800cf1e <Loader_Task+0x186>
 800cdf4:	f507 7220 	add.w	r2, r7, #640	@ 0x280
 800cdf8:	f507 7326 	add.w	r3, r7, #664	@ 0x298
 800cdfc:	4611      	mov	r1, r2
 800cdfe:	4618      	mov	r0, r3
 800ce00:	f7fe fc45 	bl	800b68e <f_readdir>
 800ce04:	4603      	mov	r3, r0
 800ce06:	f887 32d3 	strb.w	r3, [r7, #723]	@ 0x2d3
 800ce0a:	f897 32d3 	ldrb.w	r3, [r7, #723]	@ 0x2d3
 800ce0e:	2b00      	cmp	r3, #0
 800ce10:	d174      	bne.n	800cefc <Loader_Task+0x164>
 800ce12:	f897 3289 	ldrb.w	r3, [r7, #649]	@ 0x289
 800ce16:	2b00      	cmp	r3, #0
 800ce18:	d070      	beq.n	800cefc <Loader_Task+0x164>
 800ce1a:	f897 3288 	ldrb.w	r3, [r7, #648]	@ 0x288
 800ce1e:	f003 0310 	and.w	r3, r3, #16
 800ce22:	2b00      	cmp	r3, #0
 800ce24:	d170      	bne.n	800cf08 <Loader_Task+0x170>
 800ce26:	f507 7320 	add.w	r3, r7, #640	@ 0x280
 800ce2a:	3309      	adds	r3, #9
 800ce2c:	4618      	mov	r0, r3
 800ce2e:	f7ff ff57 	bl	800cce0 <is_elf_file>
 800ce32:	4603      	mov	r3, r0
 800ce34:	2b00      	cmp	r3, #0
 800ce36:	d069      	beq.n	800cf0c <Loader_Task+0x174>
 800ce38:	f507 7320 	add.w	r3, r7, #640	@ 0x280
 800ce3c:	3309      	adds	r3, #9
 800ce3e:	f107 000c 	add.w	r0, r7, #12
 800ce42:	4a3c      	ldr	r2, [pc, #240]	@ (800cf34 <Loader_Task+0x19c>)
 800ce44:	2140      	movs	r1, #64	@ 0x40
 800ce46:	f000 f99d 	bl	800d184 <sniprintf>
 800ce4a:	f107 010c 	add.w	r1, r7, #12
 800ce4e:	f107 0350 	add.w	r3, r7, #80	@ 0x50
 800ce52:	2201      	movs	r2, #1
 800ce54:	4618      	mov	r0, r3
 800ce56:	f7fd ff8f 	bl	800ad78 <f_open>
 800ce5a:	4603      	mov	r3, r0
 800ce5c:	f887 32d3 	strb.w	r3, [r7, #723]	@ 0x2d3
 800ce60:	f897 32d3 	ldrb.w	r3, [r7, #723]	@ 0x2d3
 800ce64:	2b00      	cmp	r3, #0
 800ce66:	d153      	bne.n	800cf10 <Loader_Task+0x178>
 800ce68:	f507 7336 	add.w	r3, r7, #728	@ 0x2d8
 800ce6c:	f5a3 7322 	sub.w	r3, r3, #648	@ 0x288
 800ce70:	68db      	ldr	r3, [r3, #12]
 800ce72:	f8c7 32cc 	str.w	r3, [r7, #716]	@ 0x2cc
 800ce76:	f8d7 02cc 	ldr.w	r0, [r7, #716]	@ 0x2cc
 800ce7a:	f7fb fcaf 	bl	80087dc <pvPortMalloc>
 800ce7e:	f8c7 02d4 	str.w	r0, [r7, #724]	@ 0x2d4
 800ce82:	f8d7 32d4 	ldr.w	r3, [r7, #724]	@ 0x2d4
 800ce86:	2b00      	cmp	r3, #0
 800ce88:	d105      	bne.n	800ce96 <Loader_Task+0xfe>
 800ce8a:	f107 0350 	add.w	r3, r7, #80	@ 0x50
 800ce8e:	4618      	mov	r0, r3
 800ce90:	f7fe fb2a 	bl	800b4e8 <f_close>
 800ce94:	e03d      	b.n	800cf12 <Loader_Task+0x17a>
 800ce96:	f107 034c 	add.w	r3, r7, #76	@ 0x4c
 800ce9a:	f107 0050 	add.w	r0, r7, #80	@ 0x50
 800ce9e:	f8d7 22cc 	ldr.w	r2, [r7, #716]	@ 0x2cc
 800cea2:	f8d7 12d4 	ldr.w	r1, [r7, #724]	@ 0x2d4
 800cea6:	f7fe f928 	bl	800b0fa <f_read>
 800ceaa:	4603      	mov	r3, r0
 800ceac:	f887 32d3 	strb.w	r3, [r7, #723]	@ 0x2d3
 800ceb0:	f107 0350 	add.w	r3, r7, #80	@ 0x50
 800ceb4:	4618      	mov	r0, r3
 800ceb6:	f7fe fb17 	bl	800b4e8 <f_close>
 800ceba:	f897 32d3 	ldrb.w	r3, [r7, #723]	@ 0x2d3
 800cebe:	2b00      	cmp	r3, #0
 800cec0:	d108      	bne.n	800ced4 <Loader_Task+0x13c>
 800cec2:	f507 7336 	add.w	r3, r7, #728	@ 0x2d8
 800cec6:	f5a3 7323 	sub.w	r3, r3, #652	@ 0x28c
 800ceca:	681b      	ldr	r3, [r3, #0]
 800cecc:	f8d7 22cc 	ldr.w	r2, [r7, #716]	@ 0x2cc
 800ced0:	429a      	cmp	r2, r3
 800ced2:	d004      	beq.n	800cede <Loader_Task+0x146>
 800ced4:	f8d7 02d4 	ldr.w	r0, [r7, #724]	@ 0x2d4
 800ced8:	f7fb fd4e 	bl	8008978 <vPortFree>
 800cedc:	e019      	b.n	800cf12 <Loader_Task+0x17a>
 800cede:	f8d7 02d4 	ldr.w	r0, [r7, #724]	@ 0x2d4
 800cee2:	f7ff fd9f 	bl	800ca24 <load_and_start_app_as_task>
 800cee6:	f8c7 02c8 	str.w	r0, [r7, #712]	@ 0x2c8
 800ceea:	f8d7 32c8 	ldr.w	r3, [r7, #712]	@ 0x2c8
 800ceee:	2b00      	cmp	r3, #0
 800cef0:	d080      	beq.n	800cdf4 <Loader_Task+0x5c>
 800cef2:	f8d7 02d4 	ldr.w	r0, [r7, #724]	@ 0x2d4
 800cef6:	f7fb fd3f 	bl	8008978 <vPortFree>
 800cefa:	e00a      	b.n	800cf12 <Loader_Task+0x17a>
 800cefc:	f507 7326 	add.w	r3, r7, #664	@ 0x298
 800cf00:	4618      	mov	r0, r3
 800cf02:	f7fe fb99 	bl	800b638 <f_closedir>
 800cf06:	e005      	b.n	800cf14 <Loader_Task+0x17c>
 800cf08:	bf00      	nop
 800cf0a:	e773      	b.n	800cdf4 <Loader_Task+0x5c>
 800cf0c:	bf00      	nop
 800cf0e:	e771      	b.n	800cdf4 <Loader_Task+0x5c>
 800cf10:	bf00      	nop
 800cf12:	e76f      	b.n	800cdf4 <Loader_Task+0x5c>
 800cf14:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
 800cf18:	f7fb f902 	bl	8008120 <osDelay>
 800cf1c:	e7fa      	b.n	800cf14 <Loader_Task+0x17c>
 800cf1e:	f507 7736 	add.w	r7, r7, #728	@ 0x2d8
 800cf22:	46bd      	mov	sp, r7
 800cf24:	bd80      	pop	{r7, pc}
 800cf26:	bf00      	nop
 800cf28:	20041408 	.word	0x20041408
 800cf2c:	2004140c 	.word	0x2004140c
 800cf30:	0800da34 	.word	0x0800da34
 800cf34:	0800da38 	.word	0x0800da38

0800cf38 <HAL_SPI_TxCpltCallback>:
 800cf38:	b580      	push	{r7, lr}
 800cf3a:	b084      	sub	sp, #16
 800cf3c:	af00      	add	r7, sp, #0
 800cf3e:	6078      	str	r0, [r7, #4]
 800cf40:	2300      	movs	r3, #0
 800cf42:	60fb      	str	r3, [r7, #12]
 800cf44:	687b      	ldr	r3, [r7, #4]
 800cf46:	681b      	ldr	r3, [r3, #0]
 800cf48:	4a0c      	ldr	r2, [pc, #48]	@ (800cf7c <HAL_SPI_TxCpltCallback+0x44>)
 800cf4a:	4293      	cmp	r3, r2
 800cf4c:	d107      	bne.n	800cf5e <HAL_SPI_TxCpltCallback+0x26>
 800cf4e:	4b0c      	ldr	r3, [pc, #48]	@ (800cf80 <HAL_SPI_TxCpltCallback+0x48>)
 800cf50:	681b      	ldr	r3, [r3, #0]
 800cf52:	f107 020c 	add.w	r2, r7, #12
 800cf56:	4611      	mov	r1, r2
 800cf58:	4618      	mov	r0, r3
 800cf5a:	f7f8 feda 	bl	8005d12 <xQueueGiveFromISR>
 800cf5e:	68fb      	ldr	r3, [r7, #12]
 800cf60:	2b00      	cmp	r3, #0
 800cf62:	d007      	beq.n	800cf74 <HAL_SPI_TxCpltCallback+0x3c>
 800cf64:	4b07      	ldr	r3, [pc, #28]	@ (800cf84 <HAL_SPI_TxCpltCallback+0x4c>)
 800cf66:	f04f 5280 	mov.w	r2, #268435456	@ 0x10000000
 800cf6a:	601a      	str	r2, [r3, #0]
 800cf6c:	f3bf 8f4f 	dsb	sy
 800cf70:	f3bf 8f6f 	isb	sy
 800cf74:	bf00      	nop
 800cf76:	3710      	adds	r7, #16
 800cf78:	46bd      	mov	sp, r7
 800cf7a:	bd80      	pop	{r7, pc}
 800cf7c:	40013000 	.word	0x40013000
 800cf80:	20041640 	.word	0x20041640
 800cf84:	e000ed04 	.word	0xe000ed04

0800cf88 <ili9341_spi_send>:
 800cf88:	b580      	push	{r7, lr}
 800cf8a:	b082      	sub	sp, #8
 800cf8c:	af00      	add	r7, sp, #0
 800cf8e:	4603      	mov	r3, r0
 800cf90:	71fb      	strb	r3, [r7, #7]
 800cf92:	4b08      	ldr	r3, [pc, #32]	@ (800cfb4 <ili9341_spi_send+0x2c>)
 800cf94:	681b      	ldr	r3, [r3, #0]
 800cf96:	2101      	movs	r1, #1
 800cf98:	4618      	mov	r0, r3
 800cf9a:	f7f9 f83b 	bl	8006014 <xQueueSemaphoreTake>
 800cf9e:	1dfb      	adds	r3, r7, #7
 800cfa0:	2201      	movs	r2, #1
 800cfa2:	4619      	mov	r1, r3
 800cfa4:	4804      	ldr	r0, [pc, #16]	@ (800cfb8 <ili9341_spi_send+0x30>)
 800cfa6:	f7f7 fa5f 	bl	8004468 <HAL_SPI_Transmit_IT>
 800cfaa:	bf00      	nop
 800cfac:	3708      	adds	r7, #8
 800cfae:	46bd      	mov	sp, r7
 800cfb0:	bd80      	pop	{r7, pc}
 800cfb2:	bf00      	nop
 800cfb4:	20041640 	.word	0x20041640
 800cfb8:	20049848 	.word	0x20049848

0800cfbc <ili9341_chip_select>:
 800cfbc:	b580      	push	{r7, lr}
 800cfbe:	b082      	sub	sp, #8
 800cfc0:	af00      	add	r7, sp, #0
 800cfc2:	4603      	mov	r3, r0
 800cfc4:	71fb      	strb	r3, [r7, #7]
 800cfc6:	79fb      	ldrb	r3, [r7, #7]
 800cfc8:	461a      	mov	r2, r3
 800cfca:	2110      	movs	r1, #16
 800cfcc:	4803      	ldr	r0, [pc, #12]	@ (800cfdc <ili9341_chip_select+0x20>)
 800cfce:	f7f4 fea1 	bl	8001d14 <HAL_GPIO_WritePin>
 800cfd2:	bf00      	nop
 800cfd4:	3708      	adds	r7, #8
 800cfd6:	46bd      	mov	sp, r7
 800cfd8:	bd80      	pop	{r7, pc}
 800cfda:	bf00      	nop
 800cfdc:	40020000 	.word	0x40020000

0800cfe0 <ili9341_data_comand>:
 800cfe0:	b580      	push	{r7, lr}
 800cfe2:	b082      	sub	sp, #8
 800cfe4:	af00      	add	r7, sp, #0
 800cfe6:	4603      	mov	r3, r0
 800cfe8:	71fb      	strb	r3, [r7, #7]
 800cfea:	79fb      	ldrb	r3, [r7, #7]
 800cfec:	461a      	mov	r2, r3
 800cfee:	2101      	movs	r1, #1
 800cff0:	4803      	ldr	r0, [pc, #12]	@ (800d000 <ili9341_data_comand+0x20>)
 800cff2:	f7f4 fe8f 	bl	8001d14 <HAL_GPIO_WritePin>
 800cff6:	bf00      	nop
 800cff8:	3708      	adds	r7, #8
 800cffa:	46bd      	mov	sp, r7
 800cffc:	bd80      	pop	{r7, pc}
 800cffe:	bf00      	nop
 800d000:	40020c00 	.word	0x40020c00

0800d004 <ili9341_reset>:
 800d004:	b580      	push	{r7, lr}
 800d006:	b082      	sub	sp, #8
 800d008:	af00      	add	r7, sp, #0
 800d00a:	4603      	mov	r3, r0
 800d00c:	71fb      	strb	r3, [r7, #7]
 800d00e:	79fb      	ldrb	r3, [r7, #7]
 800d010:	461a      	mov	r2, r3
 800d012:	2102      	movs	r1, #2
 800d014:	4803      	ldr	r0, [pc, #12]	@ (800d024 <ili9341_reset+0x20>)
 800d016:	f7f4 fe7d 	bl	8001d14 <HAL_GPIO_WritePin>
 800d01a:	bf00      	nop
 800d01c:	3708      	adds	r7, #8
 800d01e:	46bd      	mov	sp, r7
 800d020:	bd80      	pop	{r7, pc}
 800d022:	bf00      	nop
 800d024:	40020c00 	.word	0x40020c00

0800d028 <sbrk_aligned>:
 800d028:	b570      	push	{r4, r5, r6, lr}
 800d02a:	4e0f      	ldr	r6, [pc, #60]	@ (800d068 <sbrk_aligned+0x40>)
 800d02c:	460c      	mov	r4, r1
 800d02e:	6831      	ldr	r1, [r6, #0]
 800d030:	4605      	mov	r5, r0
 800d032:	b911      	cbnz	r1, 800d03a <sbrk_aligned+0x12>
 800d034:	f000 f8e2 	bl	800d1fc <_sbrk_r>
 800d038:	6030      	str	r0, [r6, #0]
 800d03a:	4621      	mov	r1, r4
 800d03c:	4628      	mov	r0, r5
 800d03e:	f000 f8dd 	bl	800d1fc <_sbrk_r>
 800d042:	1c43      	adds	r3, r0, #1
 800d044:	d103      	bne.n	800d04e <sbrk_aligned+0x26>
 800d046:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
 800d04a:	4620      	mov	r0, r4
 800d04c:	bd70      	pop	{r4, r5, r6, pc}
 800d04e:	1cc4      	adds	r4, r0, #3
 800d050:	f024 0403 	bic.w	r4, r4, #3
 800d054:	42a0      	cmp	r0, r4
 800d056:	d0f8      	beq.n	800d04a <sbrk_aligned+0x22>
 800d058:	1a21      	subs	r1, r4, r0
 800d05a:	4628      	mov	r0, r5
 800d05c:	f000 f8ce 	bl	800d1fc <_sbrk_r>
 800d060:	3001      	adds	r0, #1
 800d062:	d1f2      	bne.n	800d04a <sbrk_aligned+0x22>
 800d064:	e7ef      	b.n	800d046 <sbrk_aligned+0x1e>
 800d066:	bf00      	nop
 800d068:	20049944 	.word	0x20049944

0800d06c <_malloc_r>:
 800d06c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800d070:	1ccd      	adds	r5, r1, #3
 800d072:	f025 0503 	bic.w	r5, r5, #3
 800d076:	3508      	adds	r5, #8
 800d078:	2d0c      	cmp	r5, #12
 800d07a:	bf38      	it	cc
 800d07c:	250c      	movcc	r5, #12
 800d07e:	2d00      	cmp	r5, #0
 800d080:	4606      	mov	r6, r0
 800d082:	db01      	blt.n	800d088 <_malloc_r+0x1c>
 800d084:	42a9      	cmp	r1, r5
 800d086:	d904      	bls.n	800d092 <_malloc_r+0x26>
 800d088:	230c      	movs	r3, #12
 800d08a:	6033      	str	r3, [r6, #0]
 800d08c:	2000      	movs	r0, #0
 800d08e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800d092:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 800d168 <_malloc_r+0xfc>
 800d096:	f000 f869 	bl	800d16c <__malloc_lock>
 800d09a:	f8d8 3000 	ldr.w	r3, [r8]
 800d09e:	461c      	mov	r4, r3
 800d0a0:	bb44      	cbnz	r4, 800d0f4 <_malloc_r+0x88>
 800d0a2:	4629      	mov	r1, r5
 800d0a4:	4630      	mov	r0, r6
 800d0a6:	f7ff ffbf 	bl	800d028 <sbrk_aligned>
 800d0aa:	1c43      	adds	r3, r0, #1
 800d0ac:	4604      	mov	r4, r0
 800d0ae:	d158      	bne.n	800d162 <_malloc_r+0xf6>
 800d0b0:	f8d8 4000 	ldr.w	r4, [r8]
 800d0b4:	4627      	mov	r7, r4
 800d0b6:	2f00      	cmp	r7, #0
 800d0b8:	d143      	bne.n	800d142 <_malloc_r+0xd6>
 800d0ba:	2c00      	cmp	r4, #0
 800d0bc:	d04b      	beq.n	800d156 <_malloc_r+0xea>
 800d0be:	6823      	ldr	r3, [r4, #0]
 800d0c0:	4639      	mov	r1, r7
 800d0c2:	4630      	mov	r0, r6
 800d0c4:	eb04 0903 	add.w	r9, r4, r3
 800d0c8:	f000 f898 	bl	800d1fc <_sbrk_r>
 800d0cc:	4581      	cmp	r9, r0
 800d0ce:	d142      	bne.n	800d156 <_malloc_r+0xea>
 800d0d0:	6821      	ldr	r1, [r4, #0]
 800d0d2:	1a6d      	subs	r5, r5, r1
 800d0d4:	4629      	mov	r1, r5
 800d0d6:	4630      	mov	r0, r6
 800d0d8:	f7ff ffa6 	bl	800d028 <sbrk_aligned>
 800d0dc:	3001      	adds	r0, #1
 800d0de:	d03a      	beq.n	800d156 <_malloc_r+0xea>
 800d0e0:	6823      	ldr	r3, [r4, #0]
 800d0e2:	442b      	add	r3, r5
 800d0e4:	6023      	str	r3, [r4, #0]
 800d0e6:	f8d8 3000 	ldr.w	r3, [r8]
 800d0ea:	685a      	ldr	r2, [r3, #4]
 800d0ec:	bb62      	cbnz	r2, 800d148 <_malloc_r+0xdc>
 800d0ee:	f8c8 7000 	str.w	r7, [r8]
 800d0f2:	e00f      	b.n	800d114 <_malloc_r+0xa8>
 800d0f4:	6822      	ldr	r2, [r4, #0]
 800d0f6:	1b52      	subs	r2, r2, r5
 800d0f8:	d420      	bmi.n	800d13c <_malloc_r+0xd0>
 800d0fa:	2a0b      	cmp	r2, #11
 800d0fc:	d917      	bls.n	800d12e <_malloc_r+0xc2>
 800d0fe:	1961      	adds	r1, r4, r5
 800d100:	42a3      	cmp	r3, r4
 800d102:	6025      	str	r5, [r4, #0]
 800d104:	bf18      	it	ne
 800d106:	6059      	strne	r1, [r3, #4]
 800d108:	6863      	ldr	r3, [r4, #4]
 800d10a:	bf08      	it	eq
 800d10c:	f8c8 1000 	streq.w	r1, [r8]
 800d110:	5162      	str	r2, [r4, r5]
 800d112:	604b      	str	r3, [r1, #4]
 800d114:	4630      	mov	r0, r6
 800d116:	f000 f82f 	bl	800d178 <__malloc_unlock>
 800d11a:	f104 000b 	add.w	r0, r4, #11
 800d11e:	1d23      	adds	r3, r4, #4
 800d120:	f020 0007 	bic.w	r0, r0, #7
 800d124:	1ac2      	subs	r2, r0, r3
 800d126:	bf1c      	itt	ne
 800d128:	1a1b      	subne	r3, r3, r0
 800d12a:	50a3      	strne	r3, [r4, r2]
 800d12c:	e7af      	b.n	800d08e <_malloc_r+0x22>
 800d12e:	6862      	ldr	r2, [r4, #4]
 800d130:	42a3      	cmp	r3, r4
 800d132:	bf0c      	ite	eq
 800d134:	f8c8 2000 	streq.w	r2, [r8]
 800d138:	605a      	strne	r2, [r3, #4]
 800d13a:	e7eb      	b.n	800d114 <_malloc_r+0xa8>
 800d13c:	4623      	mov	r3, r4
 800d13e:	6864      	ldr	r4, [r4, #4]
 800d140:	e7ae      	b.n	800d0a0 <_malloc_r+0x34>
 800d142:	463c      	mov	r4, r7
 800d144:	687f      	ldr	r7, [r7, #4]
 800d146:	e7b6      	b.n	800d0b6 <_malloc_r+0x4a>
 800d148:	461a      	mov	r2, r3
 800d14a:	685b      	ldr	r3, [r3, #4]
 800d14c:	42a3      	cmp	r3, r4
 800d14e:	d1fb      	bne.n	800d148 <_malloc_r+0xdc>
 800d150:	2300      	movs	r3, #0
 800d152:	6053      	str	r3, [r2, #4]
 800d154:	e7de      	b.n	800d114 <_malloc_r+0xa8>
 800d156:	230c      	movs	r3, #12
 800d158:	6033      	str	r3, [r6, #0]
 800d15a:	4630      	mov	r0, r6
 800d15c:	f000 f80c 	bl	800d178 <__malloc_unlock>
 800d160:	e794      	b.n	800d08c <_malloc_r+0x20>
 800d162:	6005      	str	r5, [r0, #0]
 800d164:	e7d6      	b.n	800d114 <_malloc_r+0xa8>
 800d166:	bf00      	nop
 800d168:	20049948 	.word	0x20049948

0800d16c <__malloc_lock>:
 800d16c:	4801      	ldr	r0, [pc, #4]	@ (800d174 <__malloc_lock+0x8>)
 800d16e:	f000 b87f 	b.w	800d270 <__retarget_lock_acquire_recursive>
 800d172:	bf00      	nop
 800d174:	20049a88 	.word	0x20049a88

0800d178 <__malloc_unlock>:
 800d178:	4801      	ldr	r0, [pc, #4]	@ (800d180 <__malloc_unlock+0x8>)
 800d17a:	f000 b87a 	b.w	800d272 <__retarget_lock_release_recursive>
 800d17e:	bf00      	nop
 800d180:	20049a88 	.word	0x20049a88

0800d184 <sniprintf>:
 800d184:	b40c      	push	{r2, r3}
 800d186:	b530      	push	{r4, r5, lr}
 800d188:	4b17      	ldr	r3, [pc, #92]	@ (800d1e8 <sniprintf+0x64>)
 800d18a:	1e0c      	subs	r4, r1, #0
 800d18c:	681d      	ldr	r5, [r3, #0]
 800d18e:	b09d      	sub	sp, #116	@ 0x74
 800d190:	da08      	bge.n	800d1a4 <sniprintf+0x20>
 800d192:	238b      	movs	r3, #139	@ 0x8b
 800d194:	602b      	str	r3, [r5, #0]
 800d196:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800d19a:	b01d      	add	sp, #116	@ 0x74
 800d19c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800d1a0:	b002      	add	sp, #8
 800d1a2:	4770      	bx	lr
 800d1a4:	f44f 7302 	mov.w	r3, #520	@ 0x208
 800d1a8:	f8ad 3014 	strh.w	r3, [sp, #20]
 800d1ac:	bf14      	ite	ne
 800d1ae:	f104 33ff 	addne.w	r3, r4, #4294967295	@ 0xffffffff
 800d1b2:	4623      	moveq	r3, r4
 800d1b4:	9304      	str	r3, [sp, #16]
 800d1b6:	9307      	str	r3, [sp, #28]
 800d1b8:	f64f 73ff 	movw	r3, #65535	@ 0xffff
 800d1bc:	9002      	str	r0, [sp, #8]
 800d1be:	9006      	str	r0, [sp, #24]
 800d1c0:	f8ad 3016 	strh.w	r3, [sp, #22]
 800d1c4:	9a20      	ldr	r2, [sp, #128]	@ 0x80
 800d1c6:	ab21      	add	r3, sp, #132	@ 0x84
 800d1c8:	a902      	add	r1, sp, #8
 800d1ca:	4628      	mov	r0, r5
 800d1cc:	9301      	str	r3, [sp, #4]
 800d1ce:	f000 f905 	bl	800d3dc <_svfiprintf_r>
 800d1d2:	1c43      	adds	r3, r0, #1
 800d1d4:	bfbc      	itt	lt
 800d1d6:	238b      	movlt	r3, #139	@ 0x8b
 800d1d8:	602b      	strlt	r3, [r5, #0]
 800d1da:	2c00      	cmp	r4, #0
 800d1dc:	d0dd      	beq.n	800d19a <sniprintf+0x16>
 800d1de:	9b02      	ldr	r3, [sp, #8]
 800d1e0:	2200      	movs	r2, #0
 800d1e2:	701a      	strb	r2, [r3, #0]
 800d1e4:	e7d9      	b.n	800d19a <sniprintf+0x16>
 800d1e6:	bf00      	nop
 800d1e8:	20000014 	.word	0x20000014

0800d1ec <memset>:
 800d1ec:	4402      	add	r2, r0
 800d1ee:	4603      	mov	r3, r0
 800d1f0:	4293      	cmp	r3, r2
 800d1f2:	d100      	bne.n	800d1f6 <memset+0xa>
 800d1f4:	4770      	bx	lr
 800d1f6:	f803 1b01 	strb.w	r1, [r3], #1
 800d1fa:	e7f9      	b.n	800d1f0 <memset+0x4>

0800d1fc <_sbrk_r>:
 800d1fc:	b538      	push	{r3, r4, r5, lr}
 800d1fe:	4d06      	ldr	r5, [pc, #24]	@ (800d218 <_sbrk_r+0x1c>)
 800d200:	2300      	movs	r3, #0
 800d202:	4604      	mov	r4, r0
 800d204:	4608      	mov	r0, r1
 800d206:	602b      	str	r3, [r5, #0]
 800d208:	f7ff fa8a 	bl	800c720 <_sbrk>
 800d20c:	1c43      	adds	r3, r0, #1
 800d20e:	d102      	bne.n	800d216 <_sbrk_r+0x1a>
 800d210:	682b      	ldr	r3, [r5, #0]
 800d212:	b103      	cbz	r3, 800d216 <_sbrk_r+0x1a>
 800d214:	6023      	str	r3, [r4, #0]
 800d216:	bd38      	pop	{r3, r4, r5, pc}
 800d218:	20049a84 	.word	0x20049a84

0800d21c <__errno>:
 800d21c:	4b01      	ldr	r3, [pc, #4]	@ (800d224 <__errno+0x8>)
 800d21e:	6818      	ldr	r0, [r3, #0]
 800d220:	4770      	bx	lr
 800d222:	bf00      	nop
 800d224:	20000014 	.word	0x20000014

0800d228 <__libc_init_array>:
 800d228:	b570      	push	{r4, r5, r6, lr}
 800d22a:	4d0d      	ldr	r5, [pc, #52]	@ (800d260 <__libc_init_array+0x38>)
 800d22c:	4c0d      	ldr	r4, [pc, #52]	@ (800d264 <__libc_init_array+0x3c>)
 800d22e:	1b64      	subs	r4, r4, r5
 800d230:	10a4      	asrs	r4, r4, #2
 800d232:	2600      	movs	r6, #0
 800d234:	42a6      	cmp	r6, r4
 800d236:	d109      	bne.n	800d24c <__libc_init_array+0x24>
 800d238:	4d0b      	ldr	r5, [pc, #44]	@ (800d268 <__libc_init_array+0x40>)
 800d23a:	4c0c      	ldr	r4, [pc, #48]	@ (800d26c <__libc_init_array+0x44>)
 800d23c:	f000 fba8 	bl	800d990 <_init>
 800d240:	1b64      	subs	r4, r4, r5
 800d242:	10a4      	asrs	r4, r4, #2
 800d244:	2600      	movs	r6, #0
 800d246:	42a6      	cmp	r6, r4
 800d248:	d105      	bne.n	800d256 <__libc_init_array+0x2e>
 800d24a:	bd70      	pop	{r4, r5, r6, pc}
 800d24c:	f855 3b04 	ldr.w	r3, [r5], #4
 800d250:	4798      	blx	r3
 800d252:	3601      	adds	r6, #1
 800d254:	e7ee      	b.n	800d234 <__libc_init_array+0xc>
 800d256:	f855 3b04 	ldr.w	r3, [r5], #4
 800d25a:	4798      	blx	r3
 800d25c:	3601      	adds	r6, #1
 800d25e:	e7f2      	b.n	800d246 <__libc_init_array+0x1e>
 800d260:	0800dc78 	.word	0x0800dc78
 800d264:	0800dc78 	.word	0x0800dc78
 800d268:	0800dc78 	.word	0x0800dc78
 800d26c:	0800dc7c 	.word	0x0800dc7c

0800d270 <__retarget_lock_acquire_recursive>:
 800d270:	4770      	bx	lr

0800d272 <__retarget_lock_release_recursive>:
 800d272:	4770      	bx	lr

0800d274 <memcpy>:
 800d274:	440a      	add	r2, r1
 800d276:	4291      	cmp	r1, r2
 800d278:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
 800d27c:	d100      	bne.n	800d280 <memcpy+0xc>
 800d27e:	4770      	bx	lr
 800d280:	b510      	push	{r4, lr}
 800d282:	f811 4b01 	ldrb.w	r4, [r1], #1
 800d286:	f803 4f01 	strb.w	r4, [r3, #1]!
 800d28a:	4291      	cmp	r1, r2
 800d28c:	d1f9      	bne.n	800d282 <memcpy+0xe>
 800d28e:	bd10      	pop	{r4, pc}

0800d290 <_free_r>:
 800d290:	b538      	push	{r3, r4, r5, lr}
 800d292:	4605      	mov	r5, r0
 800d294:	2900      	cmp	r1, #0
 800d296:	d041      	beq.n	800d31c <_free_r+0x8c>
 800d298:	f851 3c04 	ldr.w	r3, [r1, #-4]
 800d29c:	1f0c      	subs	r4, r1, #4
 800d29e:	2b00      	cmp	r3, #0
 800d2a0:	bfb8      	it	lt
 800d2a2:	18e4      	addlt	r4, r4, r3
 800d2a4:	f7ff ff62 	bl	800d16c <__malloc_lock>
 800d2a8:	4a1d      	ldr	r2, [pc, #116]	@ (800d320 <_free_r+0x90>)
 800d2aa:	6813      	ldr	r3, [r2, #0]
 800d2ac:	b933      	cbnz	r3, 800d2bc <_free_r+0x2c>
 800d2ae:	6063      	str	r3, [r4, #4]
 800d2b0:	6014      	str	r4, [r2, #0]
 800d2b2:	4628      	mov	r0, r5
 800d2b4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800d2b8:	f7ff bf5e 	b.w	800d178 <__malloc_unlock>
 800d2bc:	42a3      	cmp	r3, r4
 800d2be:	d908      	bls.n	800d2d2 <_free_r+0x42>
 800d2c0:	6820      	ldr	r0, [r4, #0]
 800d2c2:	1821      	adds	r1, r4, r0
 800d2c4:	428b      	cmp	r3, r1
 800d2c6:	bf01      	itttt	eq
 800d2c8:	6819      	ldreq	r1, [r3, #0]
 800d2ca:	685b      	ldreq	r3, [r3, #4]
 800d2cc:	1809      	addeq	r1, r1, r0
 800d2ce:	6021      	streq	r1, [r4, #0]
 800d2d0:	e7ed      	b.n	800d2ae <_free_r+0x1e>
 800d2d2:	461a      	mov	r2, r3
 800d2d4:	685b      	ldr	r3, [r3, #4]
 800d2d6:	b10b      	cbz	r3, 800d2dc <_free_r+0x4c>
 800d2d8:	42a3      	cmp	r3, r4
 800d2da:	d9fa      	bls.n	800d2d2 <_free_r+0x42>
 800d2dc:	6811      	ldr	r1, [r2, #0]
 800d2de:	1850      	adds	r0, r2, r1
 800d2e0:	42a0      	cmp	r0, r4
 800d2e2:	d10b      	bne.n	800d2fc <_free_r+0x6c>
 800d2e4:	6820      	ldr	r0, [r4, #0]
 800d2e6:	4401      	add	r1, r0
 800d2e8:	1850      	adds	r0, r2, r1
 800d2ea:	4283      	cmp	r3, r0
 800d2ec:	6011      	str	r1, [r2, #0]
 800d2ee:	d1e0      	bne.n	800d2b2 <_free_r+0x22>
 800d2f0:	6818      	ldr	r0, [r3, #0]
 800d2f2:	685b      	ldr	r3, [r3, #4]
 800d2f4:	6053      	str	r3, [r2, #4]
 800d2f6:	4408      	add	r0, r1
 800d2f8:	6010      	str	r0, [r2, #0]
 800d2fa:	e7da      	b.n	800d2b2 <_free_r+0x22>
 800d2fc:	d902      	bls.n	800d304 <_free_r+0x74>
 800d2fe:	230c      	movs	r3, #12
 800d300:	602b      	str	r3, [r5, #0]
 800d302:	e7d6      	b.n	800d2b2 <_free_r+0x22>
 800d304:	6820      	ldr	r0, [r4, #0]
 800d306:	1821      	adds	r1, r4, r0
 800d308:	428b      	cmp	r3, r1
 800d30a:	bf04      	itt	eq
 800d30c:	6819      	ldreq	r1, [r3, #0]
 800d30e:	685b      	ldreq	r3, [r3, #4]
 800d310:	6063      	str	r3, [r4, #4]
 800d312:	bf04      	itt	eq
 800d314:	1809      	addeq	r1, r1, r0
 800d316:	6021      	streq	r1, [r4, #0]
 800d318:	6054      	str	r4, [r2, #4]
 800d31a:	e7ca      	b.n	800d2b2 <_free_r+0x22>
 800d31c:	bd38      	pop	{r3, r4, r5, pc}
 800d31e:	bf00      	nop
 800d320:	20049948 	.word	0x20049948

0800d324 <__ssputs_r>:
 800d324:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800d328:	688e      	ldr	r6, [r1, #8]
 800d32a:	461f      	mov	r7, r3
 800d32c:	42be      	cmp	r6, r7
 800d32e:	680b      	ldr	r3, [r1, #0]
 800d330:	4682      	mov	sl, r0
 800d332:	460c      	mov	r4, r1
 800d334:	4690      	mov	r8, r2
 800d336:	d82d      	bhi.n	800d394 <__ssputs_r+0x70>
 800d338:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800d33c:	f412 6f90 	tst.w	r2, #1152	@ 0x480
 800d340:	d026      	beq.n	800d390 <__ssputs_r+0x6c>
 800d342:	6965      	ldr	r5, [r4, #20]
 800d344:	6909      	ldr	r1, [r1, #16]
 800d346:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 800d34a:	eba3 0901 	sub.w	r9, r3, r1
 800d34e:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
 800d352:	1c7b      	adds	r3, r7, #1
 800d354:	444b      	add	r3, r9
 800d356:	106d      	asrs	r5, r5, #1
 800d358:	429d      	cmp	r5, r3
 800d35a:	bf38      	it	cc
 800d35c:	461d      	movcc	r5, r3
 800d35e:	0553      	lsls	r3, r2, #21
 800d360:	d527      	bpl.n	800d3b2 <__ssputs_r+0x8e>
 800d362:	4629      	mov	r1, r5
 800d364:	f7ff fe82 	bl	800d06c <_malloc_r>
 800d368:	4606      	mov	r6, r0
 800d36a:	b360      	cbz	r0, 800d3c6 <__ssputs_r+0xa2>
 800d36c:	6921      	ldr	r1, [r4, #16]
 800d36e:	464a      	mov	r2, r9
 800d370:	f7ff ff80 	bl	800d274 <memcpy>
 800d374:	89a3      	ldrh	r3, [r4, #12]
 800d376:	f423 6390 	bic.w	r3, r3, #1152	@ 0x480
 800d37a:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 800d37e:	81a3      	strh	r3, [r4, #12]
 800d380:	6126      	str	r6, [r4, #16]
 800d382:	6165      	str	r5, [r4, #20]
 800d384:	444e      	add	r6, r9
 800d386:	eba5 0509 	sub.w	r5, r5, r9
 800d38a:	6026      	str	r6, [r4, #0]
 800d38c:	60a5      	str	r5, [r4, #8]
 800d38e:	463e      	mov	r6, r7
 800d390:	42be      	cmp	r6, r7
 800d392:	d900      	bls.n	800d396 <__ssputs_r+0x72>
 800d394:	463e      	mov	r6, r7
 800d396:	6820      	ldr	r0, [r4, #0]
 800d398:	4632      	mov	r2, r6
 800d39a:	4641      	mov	r1, r8
 800d39c:	f000 faa8 	bl	800d8f0 <memmove>
 800d3a0:	68a3      	ldr	r3, [r4, #8]
 800d3a2:	1b9b      	subs	r3, r3, r6
 800d3a4:	60a3      	str	r3, [r4, #8]
 800d3a6:	6823      	ldr	r3, [r4, #0]
 800d3a8:	4433      	add	r3, r6
 800d3aa:	6023      	str	r3, [r4, #0]
 800d3ac:	2000      	movs	r0, #0
 800d3ae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800d3b2:	462a      	mov	r2, r5
 800d3b4:	f000 fab6 	bl	800d924 <_realloc_r>
 800d3b8:	4606      	mov	r6, r0
 800d3ba:	2800      	cmp	r0, #0
 800d3bc:	d1e0      	bne.n	800d380 <__ssputs_r+0x5c>
 800d3be:	6921      	ldr	r1, [r4, #16]
 800d3c0:	4650      	mov	r0, sl
 800d3c2:	f7ff ff65 	bl	800d290 <_free_r>
 800d3c6:	230c      	movs	r3, #12
 800d3c8:	f8ca 3000 	str.w	r3, [sl]
 800d3cc:	89a3      	ldrh	r3, [r4, #12]
 800d3ce:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 800d3d2:	81a3      	strh	r3, [r4, #12]
 800d3d4:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800d3d8:	e7e9      	b.n	800d3ae <__ssputs_r+0x8a>
	...

0800d3dc <_svfiprintf_r>:
 800d3dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800d3e0:	4698      	mov	r8, r3
 800d3e2:	898b      	ldrh	r3, [r1, #12]
 800d3e4:	061b      	lsls	r3, r3, #24
 800d3e6:	b09d      	sub	sp, #116	@ 0x74
 800d3e8:	4607      	mov	r7, r0
 800d3ea:	460d      	mov	r5, r1
 800d3ec:	4614      	mov	r4, r2
 800d3ee:	d510      	bpl.n	800d412 <_svfiprintf_r+0x36>
 800d3f0:	690b      	ldr	r3, [r1, #16]
 800d3f2:	b973      	cbnz	r3, 800d412 <_svfiprintf_r+0x36>
 800d3f4:	2140      	movs	r1, #64	@ 0x40
 800d3f6:	f7ff fe39 	bl	800d06c <_malloc_r>
 800d3fa:	6028      	str	r0, [r5, #0]
 800d3fc:	6128      	str	r0, [r5, #16]
 800d3fe:	b930      	cbnz	r0, 800d40e <_svfiprintf_r+0x32>
 800d400:	230c      	movs	r3, #12
 800d402:	603b      	str	r3, [r7, #0]
 800d404:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800d408:	b01d      	add	sp, #116	@ 0x74
 800d40a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800d40e:	2340      	movs	r3, #64	@ 0x40
 800d410:	616b      	str	r3, [r5, #20]
 800d412:	2300      	movs	r3, #0
 800d414:	9309      	str	r3, [sp, #36]	@ 0x24
 800d416:	2320      	movs	r3, #32
 800d418:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
 800d41c:	f8cd 800c 	str.w	r8, [sp, #12]
 800d420:	2330      	movs	r3, #48	@ 0x30
 800d422:	f8df 819c 	ldr.w	r8, [pc, #412]	@ 800d5c0 <_svfiprintf_r+0x1e4>
 800d426:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
 800d42a:	f04f 0901 	mov.w	r9, #1
 800d42e:	4623      	mov	r3, r4
 800d430:	469a      	mov	sl, r3
 800d432:	f813 2b01 	ldrb.w	r2, [r3], #1
 800d436:	b10a      	cbz	r2, 800d43c <_svfiprintf_r+0x60>
 800d438:	2a25      	cmp	r2, #37	@ 0x25
 800d43a:	d1f9      	bne.n	800d430 <_svfiprintf_r+0x54>
 800d43c:	ebba 0b04 	subs.w	fp, sl, r4
 800d440:	d00b      	beq.n	800d45a <_svfiprintf_r+0x7e>
 800d442:	465b      	mov	r3, fp
 800d444:	4622      	mov	r2, r4
 800d446:	4629      	mov	r1, r5
 800d448:	4638      	mov	r0, r7
 800d44a:	f7ff ff6b 	bl	800d324 <__ssputs_r>
 800d44e:	3001      	adds	r0, #1
 800d450:	f000 80a7 	beq.w	800d5a2 <_svfiprintf_r+0x1c6>
 800d454:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 800d456:	445a      	add	r2, fp
 800d458:	9209      	str	r2, [sp, #36]	@ 0x24
 800d45a:	f89a 3000 	ldrb.w	r3, [sl]
 800d45e:	2b00      	cmp	r3, #0
 800d460:	f000 809f 	beq.w	800d5a2 <_svfiprintf_r+0x1c6>
 800d464:	2300      	movs	r3, #0
 800d466:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 800d46a:	e9cd 2305 	strd	r2, r3, [sp, #20]
 800d46e:	f10a 0a01 	add.w	sl, sl, #1
 800d472:	9304      	str	r3, [sp, #16]
 800d474:	9307      	str	r3, [sp, #28]
 800d476:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
 800d47a:	931a      	str	r3, [sp, #104]	@ 0x68
 800d47c:	4654      	mov	r4, sl
 800d47e:	2205      	movs	r2, #5
 800d480:	f814 1b01 	ldrb.w	r1, [r4], #1
 800d484:	484e      	ldr	r0, [pc, #312]	@ (800d5c0 <_svfiprintf_r+0x1e4>)
 800d486:	f7f3 f853 	bl	8000530 <memchr>
 800d48a:	9a04      	ldr	r2, [sp, #16]
 800d48c:	b9d8      	cbnz	r0, 800d4c6 <_svfiprintf_r+0xea>
 800d48e:	06d0      	lsls	r0, r2, #27
 800d490:	bf44      	itt	mi
 800d492:	2320      	movmi	r3, #32
 800d494:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800d498:	0711      	lsls	r1, r2, #28
 800d49a:	bf44      	itt	mi
 800d49c:	232b      	movmi	r3, #43	@ 0x2b
 800d49e:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 800d4a2:	f89a 3000 	ldrb.w	r3, [sl]
 800d4a6:	2b2a      	cmp	r3, #42	@ 0x2a
 800d4a8:	d015      	beq.n	800d4d6 <_svfiprintf_r+0xfa>
 800d4aa:	9a07      	ldr	r2, [sp, #28]
 800d4ac:	4654      	mov	r4, sl
 800d4ae:	2000      	movs	r0, #0
 800d4b0:	f04f 0c0a 	mov.w	ip, #10
 800d4b4:	4621      	mov	r1, r4
 800d4b6:	f811 3b01 	ldrb.w	r3, [r1], #1
 800d4ba:	3b30      	subs	r3, #48	@ 0x30
 800d4bc:	2b09      	cmp	r3, #9
 800d4be:	d94b      	bls.n	800d558 <_svfiprintf_r+0x17c>
 800d4c0:	b1b0      	cbz	r0, 800d4f0 <_svfiprintf_r+0x114>
 800d4c2:	9207      	str	r2, [sp, #28]
 800d4c4:	e014      	b.n	800d4f0 <_svfiprintf_r+0x114>
 800d4c6:	eba0 0308 	sub.w	r3, r0, r8
 800d4ca:	fa09 f303 	lsl.w	r3, r9, r3
 800d4ce:	4313      	orrs	r3, r2
 800d4d0:	9304      	str	r3, [sp, #16]
 800d4d2:	46a2      	mov	sl, r4
 800d4d4:	e7d2      	b.n	800d47c <_svfiprintf_r+0xa0>
 800d4d6:	9b03      	ldr	r3, [sp, #12]
 800d4d8:	1d19      	adds	r1, r3, #4
 800d4da:	681b      	ldr	r3, [r3, #0]
 800d4dc:	9103      	str	r1, [sp, #12]
 800d4de:	2b00      	cmp	r3, #0
 800d4e0:	bfbb      	ittet	lt
 800d4e2:	425b      	neglt	r3, r3
 800d4e4:	f042 0202 	orrlt.w	r2, r2, #2
 800d4e8:	9307      	strge	r3, [sp, #28]
 800d4ea:	9307      	strlt	r3, [sp, #28]
 800d4ec:	bfb8      	it	lt
 800d4ee:	9204      	strlt	r2, [sp, #16]
 800d4f0:	7823      	ldrb	r3, [r4, #0]
 800d4f2:	2b2e      	cmp	r3, #46	@ 0x2e
 800d4f4:	d10a      	bne.n	800d50c <_svfiprintf_r+0x130>
 800d4f6:	7863      	ldrb	r3, [r4, #1]
 800d4f8:	2b2a      	cmp	r3, #42	@ 0x2a
 800d4fa:	d132      	bne.n	800d562 <_svfiprintf_r+0x186>
 800d4fc:	9b03      	ldr	r3, [sp, #12]
 800d4fe:	1d1a      	adds	r2, r3, #4
 800d500:	681b      	ldr	r3, [r3, #0]
 800d502:	9203      	str	r2, [sp, #12]
 800d504:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 800d508:	3402      	adds	r4, #2
 800d50a:	9305      	str	r3, [sp, #20]
 800d50c:	f8df a0c0 	ldr.w	sl, [pc, #192]	@ 800d5d0 <_svfiprintf_r+0x1f4>
 800d510:	7821      	ldrb	r1, [r4, #0]
 800d512:	2203      	movs	r2, #3
 800d514:	4650      	mov	r0, sl
 800d516:	f7f3 f80b 	bl	8000530 <memchr>
 800d51a:	b138      	cbz	r0, 800d52c <_svfiprintf_r+0x150>
 800d51c:	9b04      	ldr	r3, [sp, #16]
 800d51e:	eba0 000a 	sub.w	r0, r0, sl
 800d522:	2240      	movs	r2, #64	@ 0x40
 800d524:	4082      	lsls	r2, r0
 800d526:	4313      	orrs	r3, r2
 800d528:	3401      	adds	r4, #1
 800d52a:	9304      	str	r3, [sp, #16]
 800d52c:	f814 1b01 	ldrb.w	r1, [r4], #1
 800d530:	4824      	ldr	r0, [pc, #144]	@ (800d5c4 <_svfiprintf_r+0x1e8>)
 800d532:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
 800d536:	2206      	movs	r2, #6
 800d538:	f7f2 fffa 	bl	8000530 <memchr>
 800d53c:	2800      	cmp	r0, #0
 800d53e:	d036      	beq.n	800d5ae <_svfiprintf_r+0x1d2>
 800d540:	4b21      	ldr	r3, [pc, #132]	@ (800d5c8 <_svfiprintf_r+0x1ec>)
 800d542:	bb1b      	cbnz	r3, 800d58c <_svfiprintf_r+0x1b0>
 800d544:	9b03      	ldr	r3, [sp, #12]
 800d546:	3307      	adds	r3, #7
 800d548:	f023 0307 	bic.w	r3, r3, #7
 800d54c:	3308      	adds	r3, #8
 800d54e:	9303      	str	r3, [sp, #12]
 800d550:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 800d552:	4433      	add	r3, r6
 800d554:	9309      	str	r3, [sp, #36]	@ 0x24
 800d556:	e76a      	b.n	800d42e <_svfiprintf_r+0x52>
 800d558:	fb0c 3202 	mla	r2, ip, r2, r3
 800d55c:	460c      	mov	r4, r1
 800d55e:	2001      	movs	r0, #1
 800d560:	e7a8      	b.n	800d4b4 <_svfiprintf_r+0xd8>
 800d562:	2300      	movs	r3, #0
 800d564:	3401      	adds	r4, #1
 800d566:	9305      	str	r3, [sp, #20]
 800d568:	4619      	mov	r1, r3
 800d56a:	f04f 0c0a 	mov.w	ip, #10
 800d56e:	4620      	mov	r0, r4
 800d570:	f810 2b01 	ldrb.w	r2, [r0], #1
 800d574:	3a30      	subs	r2, #48	@ 0x30
 800d576:	2a09      	cmp	r2, #9
 800d578:	d903      	bls.n	800d582 <_svfiprintf_r+0x1a6>
 800d57a:	2b00      	cmp	r3, #0
 800d57c:	d0c6      	beq.n	800d50c <_svfiprintf_r+0x130>
 800d57e:	9105      	str	r1, [sp, #20]
 800d580:	e7c4      	b.n	800d50c <_svfiprintf_r+0x130>
 800d582:	fb0c 2101 	mla	r1, ip, r1, r2
 800d586:	4604      	mov	r4, r0
 800d588:	2301      	movs	r3, #1
 800d58a:	e7f0      	b.n	800d56e <_svfiprintf_r+0x192>
 800d58c:	ab03      	add	r3, sp, #12
 800d58e:	9300      	str	r3, [sp, #0]
 800d590:	462a      	mov	r2, r5
 800d592:	4b0e      	ldr	r3, [pc, #56]	@ (800d5cc <_svfiprintf_r+0x1f0>)
 800d594:	a904      	add	r1, sp, #16
 800d596:	4638      	mov	r0, r7
 800d598:	f3af 8000 	nop.w
 800d59c:	1c42      	adds	r2, r0, #1
 800d59e:	4606      	mov	r6, r0
 800d5a0:	d1d6      	bne.n	800d550 <_svfiprintf_r+0x174>
 800d5a2:	89ab      	ldrh	r3, [r5, #12]
 800d5a4:	065b      	lsls	r3, r3, #25
 800d5a6:	f53f af2d 	bmi.w	800d404 <_svfiprintf_r+0x28>
 800d5aa:	9809      	ldr	r0, [sp, #36]	@ 0x24
 800d5ac:	e72c      	b.n	800d408 <_svfiprintf_r+0x2c>
 800d5ae:	ab03      	add	r3, sp, #12
 800d5b0:	9300      	str	r3, [sp, #0]
 800d5b2:	462a      	mov	r2, r5
 800d5b4:	4b05      	ldr	r3, [pc, #20]	@ (800d5cc <_svfiprintf_r+0x1f0>)
 800d5b6:	a904      	add	r1, sp, #16
 800d5b8:	4638      	mov	r0, r7
 800d5ba:	f000 f879 	bl	800d6b0 <_printf_i>
 800d5be:	e7ed      	b.n	800d59c <_svfiprintf_r+0x1c0>
 800d5c0:	0800dc3d 	.word	0x0800dc3d
 800d5c4:	0800dc47 	.word	0x0800dc47
 800d5c8:	00000000 	.word	0x00000000
 800d5cc:	0800d325 	.word	0x0800d325
 800d5d0:	0800dc43 	.word	0x0800dc43

0800d5d4 <_printf_common>:
 800d5d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800d5d8:	4616      	mov	r6, r2
 800d5da:	4698      	mov	r8, r3
 800d5dc:	688a      	ldr	r2, [r1, #8]
 800d5de:	690b      	ldr	r3, [r1, #16]
 800d5e0:	f8dd 9020 	ldr.w	r9, [sp, #32]
 800d5e4:	4293      	cmp	r3, r2
 800d5e6:	bfb8      	it	lt
 800d5e8:	4613      	movlt	r3, r2
 800d5ea:	6033      	str	r3, [r6, #0]
 800d5ec:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
 800d5f0:	4607      	mov	r7, r0
 800d5f2:	460c      	mov	r4, r1
 800d5f4:	b10a      	cbz	r2, 800d5fa <_printf_common+0x26>
 800d5f6:	3301      	adds	r3, #1
 800d5f8:	6033      	str	r3, [r6, #0]
 800d5fa:	6823      	ldr	r3, [r4, #0]
 800d5fc:	0699      	lsls	r1, r3, #26
 800d5fe:	bf42      	ittt	mi
 800d600:	6833      	ldrmi	r3, [r6, #0]
 800d602:	3302      	addmi	r3, #2
 800d604:	6033      	strmi	r3, [r6, #0]
 800d606:	6825      	ldr	r5, [r4, #0]
 800d608:	f015 0506 	ands.w	r5, r5, #6
 800d60c:	d106      	bne.n	800d61c <_printf_common+0x48>
 800d60e:	f104 0a19 	add.w	sl, r4, #25
 800d612:	68e3      	ldr	r3, [r4, #12]
 800d614:	6832      	ldr	r2, [r6, #0]
 800d616:	1a9b      	subs	r3, r3, r2
 800d618:	42ab      	cmp	r3, r5
 800d61a:	dc26      	bgt.n	800d66a <_printf_common+0x96>
 800d61c:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
 800d620:	6822      	ldr	r2, [r4, #0]
 800d622:	3b00      	subs	r3, #0
 800d624:	bf18      	it	ne
 800d626:	2301      	movne	r3, #1
 800d628:	0692      	lsls	r2, r2, #26
 800d62a:	d42b      	bmi.n	800d684 <_printf_common+0xb0>
 800d62c:	f104 0243 	add.w	r2, r4, #67	@ 0x43
 800d630:	4641      	mov	r1, r8
 800d632:	4638      	mov	r0, r7
 800d634:	47c8      	blx	r9
 800d636:	3001      	adds	r0, #1
 800d638:	d01e      	beq.n	800d678 <_printf_common+0xa4>
 800d63a:	6823      	ldr	r3, [r4, #0]
 800d63c:	6922      	ldr	r2, [r4, #16]
 800d63e:	f003 0306 	and.w	r3, r3, #6
 800d642:	2b04      	cmp	r3, #4
 800d644:	bf02      	ittt	eq
 800d646:	68e5      	ldreq	r5, [r4, #12]
 800d648:	6833      	ldreq	r3, [r6, #0]
 800d64a:	1aed      	subeq	r5, r5, r3
 800d64c:	68a3      	ldr	r3, [r4, #8]
 800d64e:	bf0c      	ite	eq
 800d650:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 800d654:	2500      	movne	r5, #0
 800d656:	4293      	cmp	r3, r2
 800d658:	bfc4      	itt	gt
 800d65a:	1a9b      	subgt	r3, r3, r2
 800d65c:	18ed      	addgt	r5, r5, r3
 800d65e:	2600      	movs	r6, #0
 800d660:	341a      	adds	r4, #26
 800d662:	42b5      	cmp	r5, r6
 800d664:	d11a      	bne.n	800d69c <_printf_common+0xc8>
 800d666:	2000      	movs	r0, #0
 800d668:	e008      	b.n	800d67c <_printf_common+0xa8>
 800d66a:	2301      	movs	r3, #1
 800d66c:	4652      	mov	r2, sl
 800d66e:	4641      	mov	r1, r8
 800d670:	4638      	mov	r0, r7
 800d672:	47c8      	blx	r9
 800d674:	3001      	adds	r0, #1
 800d676:	d103      	bne.n	800d680 <_printf_common+0xac>
 800d678:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800d67c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800d680:	3501      	adds	r5, #1
 800d682:	e7c6      	b.n	800d612 <_printf_common+0x3e>
 800d684:	18e1      	adds	r1, r4, r3
 800d686:	1c5a      	adds	r2, r3, #1
 800d688:	2030      	movs	r0, #48	@ 0x30
 800d68a:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
 800d68e:	4422      	add	r2, r4
 800d690:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
 800d694:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
 800d698:	3302      	adds	r3, #2
 800d69a:	e7c7      	b.n	800d62c <_printf_common+0x58>
 800d69c:	2301      	movs	r3, #1
 800d69e:	4622      	mov	r2, r4
 800d6a0:	4641      	mov	r1, r8
 800d6a2:	4638      	mov	r0, r7
 800d6a4:	47c8      	blx	r9
 800d6a6:	3001      	adds	r0, #1
 800d6a8:	d0e6      	beq.n	800d678 <_printf_common+0xa4>
 800d6aa:	3601      	adds	r6, #1
 800d6ac:	e7d9      	b.n	800d662 <_printf_common+0x8e>
	...

0800d6b0 <_printf_i>:
 800d6b0:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 800d6b4:	7e0f      	ldrb	r7, [r1, #24]
 800d6b6:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 800d6b8:	2f78      	cmp	r7, #120	@ 0x78
 800d6ba:	4691      	mov	r9, r2
 800d6bc:	4680      	mov	r8, r0
 800d6be:	460c      	mov	r4, r1
 800d6c0:	469a      	mov	sl, r3
 800d6c2:	f101 0243 	add.w	r2, r1, #67	@ 0x43
 800d6c6:	d807      	bhi.n	800d6d8 <_printf_i+0x28>
 800d6c8:	2f62      	cmp	r7, #98	@ 0x62
 800d6ca:	d80a      	bhi.n	800d6e2 <_printf_i+0x32>
 800d6cc:	2f00      	cmp	r7, #0
 800d6ce:	f000 80d2 	beq.w	800d876 <_printf_i+0x1c6>
 800d6d2:	2f58      	cmp	r7, #88	@ 0x58
 800d6d4:	f000 80b9 	beq.w	800d84a <_printf_i+0x19a>
 800d6d8:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 800d6dc:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
 800d6e0:	e03a      	b.n	800d758 <_printf_i+0xa8>
 800d6e2:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
 800d6e6:	2b15      	cmp	r3, #21
 800d6e8:	d8f6      	bhi.n	800d6d8 <_printf_i+0x28>
 800d6ea:	a101      	add	r1, pc, #4	@ (adr r1, 800d6f0 <_printf_i+0x40>)
 800d6ec:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 800d6f0:	0800d749 	.word	0x0800d749
 800d6f4:	0800d75d 	.word	0x0800d75d
 800d6f8:	0800d6d9 	.word	0x0800d6d9
 800d6fc:	0800d6d9 	.word	0x0800d6d9
 800d700:	0800d6d9 	.word	0x0800d6d9
 800d704:	0800d6d9 	.word	0x0800d6d9
 800d708:	0800d75d 	.word	0x0800d75d
 800d70c:	0800d6d9 	.word	0x0800d6d9
 800d710:	0800d6d9 	.word	0x0800d6d9
 800d714:	0800d6d9 	.word	0x0800d6d9
 800d718:	0800d6d9 	.word	0x0800d6d9
 800d71c:	0800d85d 	.word	0x0800d85d
 800d720:	0800d787 	.word	0x0800d787
 800d724:	0800d817 	.word	0x0800d817
 800d728:	0800d6d9 	.word	0x0800d6d9
 800d72c:	0800d6d9 	.word	0x0800d6d9
 800d730:	0800d87f 	.word	0x0800d87f
 800d734:	0800d6d9 	.word	0x0800d6d9
 800d738:	0800d787 	.word	0x0800d787
 800d73c:	0800d6d9 	.word	0x0800d6d9
 800d740:	0800d6d9 	.word	0x0800d6d9
 800d744:	0800d81f 	.word	0x0800d81f
 800d748:	6833      	ldr	r3, [r6, #0]
 800d74a:	1d1a      	adds	r2, r3, #4
 800d74c:	681b      	ldr	r3, [r3, #0]
 800d74e:	6032      	str	r2, [r6, #0]
 800d750:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 800d754:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 800d758:	2301      	movs	r3, #1
 800d75a:	e09d      	b.n	800d898 <_printf_i+0x1e8>
 800d75c:	6833      	ldr	r3, [r6, #0]
 800d75e:	6820      	ldr	r0, [r4, #0]
 800d760:	1d19      	adds	r1, r3, #4
 800d762:	6031      	str	r1, [r6, #0]
 800d764:	0606      	lsls	r6, r0, #24
 800d766:	d501      	bpl.n	800d76c <_printf_i+0xbc>
 800d768:	681d      	ldr	r5, [r3, #0]
 800d76a:	e003      	b.n	800d774 <_printf_i+0xc4>
 800d76c:	0645      	lsls	r5, r0, #25
 800d76e:	d5fb      	bpl.n	800d768 <_printf_i+0xb8>
 800d770:	f9b3 5000 	ldrsh.w	r5, [r3]
 800d774:	2d00      	cmp	r5, #0
 800d776:	da03      	bge.n	800d780 <_printf_i+0xd0>
 800d778:	232d      	movs	r3, #45	@ 0x2d
 800d77a:	426d      	negs	r5, r5
 800d77c:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800d780:	4859      	ldr	r0, [pc, #356]	@ (800d8e8 <_printf_i+0x238>)
 800d782:	230a      	movs	r3, #10
 800d784:	e011      	b.n	800d7aa <_printf_i+0xfa>
 800d786:	6821      	ldr	r1, [r4, #0]
 800d788:	6833      	ldr	r3, [r6, #0]
 800d78a:	0608      	lsls	r0, r1, #24
 800d78c:	f853 5b04 	ldr.w	r5, [r3], #4
 800d790:	d402      	bmi.n	800d798 <_printf_i+0xe8>
 800d792:	0649      	lsls	r1, r1, #25
 800d794:	bf48      	it	mi
 800d796:	b2ad      	uxthmi	r5, r5
 800d798:	2f6f      	cmp	r7, #111	@ 0x6f
 800d79a:	4853      	ldr	r0, [pc, #332]	@ (800d8e8 <_printf_i+0x238>)
 800d79c:	6033      	str	r3, [r6, #0]
 800d79e:	bf14      	ite	ne
 800d7a0:	230a      	movne	r3, #10
 800d7a2:	2308      	moveq	r3, #8
 800d7a4:	2100      	movs	r1, #0
 800d7a6:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
 800d7aa:	6866      	ldr	r6, [r4, #4]
 800d7ac:	60a6      	str	r6, [r4, #8]
 800d7ae:	2e00      	cmp	r6, #0
 800d7b0:	bfa2      	ittt	ge
 800d7b2:	6821      	ldrge	r1, [r4, #0]
 800d7b4:	f021 0104 	bicge.w	r1, r1, #4
 800d7b8:	6021      	strge	r1, [r4, #0]
 800d7ba:	b90d      	cbnz	r5, 800d7c0 <_printf_i+0x110>
 800d7bc:	2e00      	cmp	r6, #0
 800d7be:	d04b      	beq.n	800d858 <_printf_i+0x1a8>
 800d7c0:	4616      	mov	r6, r2
 800d7c2:	fbb5 f1f3 	udiv	r1, r5, r3
 800d7c6:	fb03 5711 	mls	r7, r3, r1, r5
 800d7ca:	5dc7      	ldrb	r7, [r0, r7]
 800d7cc:	f806 7d01 	strb.w	r7, [r6, #-1]!
 800d7d0:	462f      	mov	r7, r5
 800d7d2:	42bb      	cmp	r3, r7
 800d7d4:	460d      	mov	r5, r1
 800d7d6:	d9f4      	bls.n	800d7c2 <_printf_i+0x112>
 800d7d8:	2b08      	cmp	r3, #8
 800d7da:	d10b      	bne.n	800d7f4 <_printf_i+0x144>
 800d7dc:	6823      	ldr	r3, [r4, #0]
 800d7de:	07df      	lsls	r7, r3, #31
 800d7e0:	d508      	bpl.n	800d7f4 <_printf_i+0x144>
 800d7e2:	6923      	ldr	r3, [r4, #16]
 800d7e4:	6861      	ldr	r1, [r4, #4]
 800d7e6:	4299      	cmp	r1, r3
 800d7e8:	bfde      	ittt	le
 800d7ea:	2330      	movle	r3, #48	@ 0x30
 800d7ec:	f806 3c01 	strble.w	r3, [r6, #-1]
 800d7f0:	f106 36ff 	addle.w	r6, r6, #4294967295	@ 0xffffffff
 800d7f4:	1b92      	subs	r2, r2, r6
 800d7f6:	6122      	str	r2, [r4, #16]
 800d7f8:	f8cd a000 	str.w	sl, [sp]
 800d7fc:	464b      	mov	r3, r9
 800d7fe:	aa03      	add	r2, sp, #12
 800d800:	4621      	mov	r1, r4
 800d802:	4640      	mov	r0, r8
 800d804:	f7ff fee6 	bl	800d5d4 <_printf_common>
 800d808:	3001      	adds	r0, #1
 800d80a:	d14a      	bne.n	800d8a2 <_printf_i+0x1f2>
 800d80c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 800d810:	b004      	add	sp, #16
 800d812:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800d816:	6823      	ldr	r3, [r4, #0]
 800d818:	f043 0320 	orr.w	r3, r3, #32
 800d81c:	6023      	str	r3, [r4, #0]
 800d81e:	4833      	ldr	r0, [pc, #204]	@ (800d8ec <_printf_i+0x23c>)
 800d820:	2778      	movs	r7, #120	@ 0x78
 800d822:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 800d826:	6823      	ldr	r3, [r4, #0]
 800d828:	6831      	ldr	r1, [r6, #0]
 800d82a:	061f      	lsls	r7, r3, #24
 800d82c:	f851 5b04 	ldr.w	r5, [r1], #4
 800d830:	d402      	bmi.n	800d838 <_printf_i+0x188>
 800d832:	065f      	lsls	r7, r3, #25
 800d834:	bf48      	it	mi
 800d836:	b2ad      	uxthmi	r5, r5
 800d838:	6031      	str	r1, [r6, #0]
 800d83a:	07d9      	lsls	r1, r3, #31
 800d83c:	bf44      	itt	mi
 800d83e:	f043 0320 	orrmi.w	r3, r3, #32
 800d842:	6023      	strmi	r3, [r4, #0]
 800d844:	b11d      	cbz	r5, 800d84e <_printf_i+0x19e>
 800d846:	2310      	movs	r3, #16
 800d848:	e7ac      	b.n	800d7a4 <_printf_i+0xf4>
 800d84a:	4827      	ldr	r0, [pc, #156]	@ (800d8e8 <_printf_i+0x238>)
 800d84c:	e7e9      	b.n	800d822 <_printf_i+0x172>
 800d84e:	6823      	ldr	r3, [r4, #0]
 800d850:	f023 0320 	bic.w	r3, r3, #32
 800d854:	6023      	str	r3, [r4, #0]
 800d856:	e7f6      	b.n	800d846 <_printf_i+0x196>
 800d858:	4616      	mov	r6, r2
 800d85a:	e7bd      	b.n	800d7d8 <_printf_i+0x128>
 800d85c:	6833      	ldr	r3, [r6, #0]
 800d85e:	6825      	ldr	r5, [r4, #0]
 800d860:	6961      	ldr	r1, [r4, #20]
 800d862:	1d18      	adds	r0, r3, #4
 800d864:	6030      	str	r0, [r6, #0]
 800d866:	062e      	lsls	r6, r5, #24
 800d868:	681b      	ldr	r3, [r3, #0]
 800d86a:	d501      	bpl.n	800d870 <_printf_i+0x1c0>
 800d86c:	6019      	str	r1, [r3, #0]
 800d86e:	e002      	b.n	800d876 <_printf_i+0x1c6>
 800d870:	0668      	lsls	r0, r5, #25
 800d872:	d5fb      	bpl.n	800d86c <_printf_i+0x1bc>
 800d874:	8019      	strh	r1, [r3, #0]
 800d876:	2300      	movs	r3, #0
 800d878:	6123      	str	r3, [r4, #16]
 800d87a:	4616      	mov	r6, r2
 800d87c:	e7bc      	b.n	800d7f8 <_printf_i+0x148>
 800d87e:	6833      	ldr	r3, [r6, #0]
 800d880:	1d1a      	adds	r2, r3, #4
 800d882:	6032      	str	r2, [r6, #0]
 800d884:	681e      	ldr	r6, [r3, #0]
 800d886:	6862      	ldr	r2, [r4, #4]
 800d888:	2100      	movs	r1, #0
 800d88a:	4630      	mov	r0, r6
 800d88c:	f7f2 fe50 	bl	8000530 <memchr>
 800d890:	b108      	cbz	r0, 800d896 <_printf_i+0x1e6>
 800d892:	1b80      	subs	r0, r0, r6
 800d894:	6060      	str	r0, [r4, #4]
 800d896:	6863      	ldr	r3, [r4, #4]
 800d898:	6123      	str	r3, [r4, #16]
 800d89a:	2300      	movs	r3, #0
 800d89c:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 800d8a0:	e7aa      	b.n	800d7f8 <_printf_i+0x148>
 800d8a2:	6923      	ldr	r3, [r4, #16]
 800d8a4:	4632      	mov	r2, r6
 800d8a6:	4649      	mov	r1, r9
 800d8a8:	4640      	mov	r0, r8
 800d8aa:	47d0      	blx	sl
 800d8ac:	3001      	adds	r0, #1
 800d8ae:	d0ad      	beq.n	800d80c <_printf_i+0x15c>
 800d8b0:	6823      	ldr	r3, [r4, #0]
 800d8b2:	079b      	lsls	r3, r3, #30
 800d8b4:	d413      	bmi.n	800d8de <_printf_i+0x22e>
 800d8b6:	68e0      	ldr	r0, [r4, #12]
 800d8b8:	9b03      	ldr	r3, [sp, #12]
 800d8ba:	4298      	cmp	r0, r3
 800d8bc:	bfb8      	it	lt
 800d8be:	4618      	movlt	r0, r3
 800d8c0:	e7a6      	b.n	800d810 <_printf_i+0x160>
 800d8c2:	2301      	movs	r3, #1
 800d8c4:	4632      	mov	r2, r6
 800d8c6:	4649      	mov	r1, r9
 800d8c8:	4640      	mov	r0, r8
 800d8ca:	47d0      	blx	sl
 800d8cc:	3001      	adds	r0, #1
 800d8ce:	d09d      	beq.n	800d80c <_printf_i+0x15c>
 800d8d0:	3501      	adds	r5, #1
 800d8d2:	68e3      	ldr	r3, [r4, #12]
 800d8d4:	9903      	ldr	r1, [sp, #12]
 800d8d6:	1a5b      	subs	r3, r3, r1
 800d8d8:	42ab      	cmp	r3, r5
 800d8da:	dcf2      	bgt.n	800d8c2 <_printf_i+0x212>
 800d8dc:	e7eb      	b.n	800d8b6 <_printf_i+0x206>
 800d8de:	2500      	movs	r5, #0
 800d8e0:	f104 0619 	add.w	r6, r4, #25
 800d8e4:	e7f5      	b.n	800d8d2 <_printf_i+0x222>
 800d8e6:	bf00      	nop
 800d8e8:	0800dc4e 	.word	0x0800dc4e
 800d8ec:	0800dc5f 	.word	0x0800dc5f

0800d8f0 <memmove>:
 800d8f0:	4288      	cmp	r0, r1
 800d8f2:	b510      	push	{r4, lr}
 800d8f4:	eb01 0402 	add.w	r4, r1, r2
 800d8f8:	d902      	bls.n	800d900 <memmove+0x10>
 800d8fa:	4284      	cmp	r4, r0
 800d8fc:	4623      	mov	r3, r4
 800d8fe:	d807      	bhi.n	800d910 <memmove+0x20>
 800d900:	1e43      	subs	r3, r0, #1
 800d902:	42a1      	cmp	r1, r4
 800d904:	d008      	beq.n	800d918 <memmove+0x28>
 800d906:	f811 2b01 	ldrb.w	r2, [r1], #1
 800d90a:	f803 2f01 	strb.w	r2, [r3, #1]!
 800d90e:	e7f8      	b.n	800d902 <memmove+0x12>
 800d910:	4402      	add	r2, r0
 800d912:	4601      	mov	r1, r0
 800d914:	428a      	cmp	r2, r1
 800d916:	d100      	bne.n	800d91a <memmove+0x2a>
 800d918:	bd10      	pop	{r4, pc}
 800d91a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800d91e:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800d922:	e7f7      	b.n	800d914 <memmove+0x24>

0800d924 <_realloc_r>:
 800d924:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800d928:	4680      	mov	r8, r0
 800d92a:	4615      	mov	r5, r2
 800d92c:	460c      	mov	r4, r1
 800d92e:	b921      	cbnz	r1, 800d93a <_realloc_r+0x16>
 800d930:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800d934:	4611      	mov	r1, r2
 800d936:	f7ff bb99 	b.w	800d06c <_malloc_r>
 800d93a:	b92a      	cbnz	r2, 800d948 <_realloc_r+0x24>
 800d93c:	f7ff fca8 	bl	800d290 <_free_r>
 800d940:	2400      	movs	r4, #0
 800d942:	4620      	mov	r0, r4
 800d944:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800d948:	f000 f81a 	bl	800d980 <_malloc_usable_size_r>
 800d94c:	4285      	cmp	r5, r0
 800d94e:	4606      	mov	r6, r0
 800d950:	d802      	bhi.n	800d958 <_realloc_r+0x34>
 800d952:	ebb5 0f50 	cmp.w	r5, r0, lsr #1
 800d956:	d8f4      	bhi.n	800d942 <_realloc_r+0x1e>
 800d958:	4629      	mov	r1, r5
 800d95a:	4640      	mov	r0, r8
 800d95c:	f7ff fb86 	bl	800d06c <_malloc_r>
 800d960:	4607      	mov	r7, r0
 800d962:	2800      	cmp	r0, #0
 800d964:	d0ec      	beq.n	800d940 <_realloc_r+0x1c>
 800d966:	42b5      	cmp	r5, r6
 800d968:	462a      	mov	r2, r5
 800d96a:	4621      	mov	r1, r4
 800d96c:	bf28      	it	cs
 800d96e:	4632      	movcs	r2, r6
 800d970:	f7ff fc80 	bl	800d274 <memcpy>
 800d974:	4621      	mov	r1, r4
 800d976:	4640      	mov	r0, r8
 800d978:	f7ff fc8a 	bl	800d290 <_free_r>
 800d97c:	463c      	mov	r4, r7
 800d97e:	e7e0      	b.n	800d942 <_realloc_r+0x1e>

0800d980 <_malloc_usable_size_r>:
 800d980:	f851 3c04 	ldr.w	r3, [r1, #-4]
 800d984:	1f18      	subs	r0, r3, #4
 800d986:	2b00      	cmp	r3, #0
 800d988:	bfbc      	itt	lt
 800d98a:	580b      	ldrlt	r3, [r1, r0]
 800d98c:	18c0      	addlt	r0, r0, r3
 800d98e:	4770      	bx	lr

0800d990 <_init>:
 800d990:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d992:	bf00      	nop
 800d994:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d996:	bc08      	pop	{r3}
 800d998:	469e      	mov	lr, r3
 800d99a:	4770      	bx	lr

0800d99c <_fini>:
 800d99c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d99e:	bf00      	nop
 800d9a0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d9a2:	bc08      	pop	{r3}
 800d9a4:	469e      	mov	lr, r3
 800d9a6:	4770      	bx	lr
