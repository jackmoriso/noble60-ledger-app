
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	b08c      	sub	sp, #48	@ 0x30
c0de0004:	b662      	cpsie	i
c0de0006:	f003 fce7 	bl	c0de39d8 <view_init>
c0de000a:	f006 f901 	bl	c0de6210 <os_boot>
c0de000e:	466c      	mov	r4, sp
c0de0010:	4620      	mov	r0, r4
c0de0012:	f006 fd3f 	bl	c0de6a94 <setjmp>
c0de0016:	0401      	lsls	r1, r0, #16
c0de0018:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de001c:	d006      	beq.n	c0de002c <main+0x2c>
c0de001e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0020:	2100      	movs	r1, #0
c0de0022:	f8ad 102c 	strh.w	r1, [sp, #44]	@ 0x2c
c0de0026:	f006 fc94 	bl	c0de6952 <try_context_set>
c0de002a:	e007      	b.n	c0de003c <main+0x3c>
c0de002c:	4668      	mov	r0, sp
c0de002e:	f006 fc90 	bl	c0de6952 <try_context_set>
c0de0032:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0034:	f000 fef8 	bl	c0de0e28 <app_init>
c0de0038:	f000 ff08 	bl	c0de0e4c <app_main>
c0de003c:	f006 fc7f 	bl	c0de693e <try_context_get>
c0de0040:	42a0      	cmp	r0, r4
c0de0042:	d102      	bne.n	c0de004a <main+0x4a>
c0de0044:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0046:	f006 fc84 	bl	c0de6952 <try_context_set>
c0de004a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de004e:	b910      	cbnz	r0, c0de0056 <main+0x56>
c0de0050:	2000      	movs	r0, #0
c0de0052:	b00c      	add	sp, #48	@ 0x30
c0de0054:	bd10      	pop	{r4, pc}
c0de0056:	f006 f8de 	bl	c0de6216 <os_longjmp>

c0de005a <addr_getNumItems>:
c0de005a:	b510      	push	{r4, lr}
c0de005c:	4604      	mov	r4, r0
c0de005e:	f646 7074 	movw	r0, #28532	@ 0x6f74
c0de0062:	f2c0 0000 	movt	r0, #0
c0de0066:	4478      	add	r0, pc
c0de0068:	f004 f86d 	bl	c0de4146 <zemu_log_stack>
c0de006c:	2001      	movs	r0, #1
c0de006e:	7020      	strb	r0, [r4, #0]
c0de0070:	f003 fe16 	bl	c0de3ca0 <app_mode_expert>
c0de0074:	b108      	cbz	r0, c0de007a <addr_getNumItems+0x20>
c0de0076:	2002      	movs	r0, #2
c0de0078:	7020      	strb	r0, [r4, #0]
c0de007a:	2003      	movs	r0, #3
c0de007c:	bd10      	pop	{r4, pc}
	...

c0de0080 <addr_getItem>:
c0de0080:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0084:	b0ce      	sub	sp, #312	@ 0x138
c0de0086:	4616      	mov	r6, r2
c0de0088:	f646 62f1 	movw	r2, #28401	@ 0x6ef1
c0de008c:	e9dd ab57 	ldrd	sl, fp, [sp, #348]	@ 0x15c
c0de0090:	4605      	mov	r5, r0
c0de0092:	f2c0 0200 	movt	r2, #0
c0de0096:	ac03      	add	r4, sp, #12
c0de0098:	4698      	mov	r8, r3
c0de009a:	460f      	mov	r7, r1
c0de009c:	447a      	add	r2, pc
c0de009e:	4620      	mov	r0, r4
c0de00a0:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de00a4:	462b      	mov	r3, r5
c0de00a6:	f8cd a000 	str.w	sl, [sp]
c0de00aa:	f006 f8bf 	bl	c0de622c <snprintf>
c0de00ae:	4620      	mov	r0, r4
c0de00b0:	f004 f849 	bl	c0de4146 <zemu_log_stack>
c0de00b4:	2d01      	cmp	r5, #1
c0de00b6:	d047      	beq.n	c0de0148 <addr_getItem+0xc8>
c0de00b8:	2d00      	cmp	r5, #0
c0de00ba:	f040 8102 	bne.w	c0de02c2 <addr_getItem+0x242>
c0de00be:	f646 628f 	movw	r2, #28303	@ 0x6e8f
c0de00c2:	f2c0 0200 	movt	r2, #0
c0de00c6:	447a      	add	r2, pc
c0de00c8:	4638      	mov	r0, r7
c0de00ca:	4631      	mov	r1, r6
c0de00cc:	f006 f8ae 	bl	c0de622c <snprintf>
c0de00d0:	f246 34b8 	movw	r4, #25528	@ 0x63b8
c0de00d4:	f2c0 0400 	movt	r4, #0
c0de00d8:	eb09 0004 	add.w	r0, r9, r4
c0de00dc:	3021      	adds	r0, #33	@ 0x21
c0de00de:	f006 fcf1 	bl	c0de6ac4 <strlen>
c0de00e2:	9d56      	ldr	r5, [sp, #344]	@ 0x158
c0de00e4:	4606      	mov	r6, r0
c0de00e6:	4640      	mov	r0, r8
c0de00e8:	4629      	mov	r1, r5
c0de00ea:	f006 fc8d 	bl	c0de6a08 <explicit_bzero>
c0de00ee:	1e69      	subs	r1, r5, #1
c0de00f0:	2000      	movs	r0, #0
c0de00f2:	b28b      	uxth	r3, r1
c0de00f4:	f88b 0000 	strb.w	r0, [fp]
c0de00f8:	2b00      	cmp	r3, #0
c0de00fa:	f04f 0003 	mov.w	r0, #3
c0de00fe:	f000 80e1 	beq.w	c0de02c4 <addr_getItem+0x244>
c0de0102:	0432      	lsls	r2, r6, #16
c0de0104:	f000 80de 	beq.w	c0de02c4 <addr_getItem+0x244>
c0de0108:	b2b0      	uxth	r0, r6
c0de010a:	fbb0 f2f3 	udiv	r2, r0, r3
c0de010e:	fb02 6111 	mls	r1, r2, r1, r6
c0de0112:	0408      	lsls	r0, r1, #16
c0de0114:	bf18      	it	ne
c0de0116:	3201      	addne	r2, #1
c0de0118:	b2d0      	uxtb	r0, r2
c0de011a:	4550      	cmp	r0, sl
c0de011c:	f88b 2000 	strb.w	r2, [fp]
c0de0120:	f240 80cd 	bls.w	c0de02be <addr_getItem+0x23e>
c0de0124:	b28f      	uxth	r7, r1
c0de0126:	eb09 0104 	add.w	r1, r9, r4
c0de012a:	fb0a 1103 	mla	r1, sl, r3, r1
c0de012e:	3801      	subs	r0, #1
c0de0130:	461a      	mov	r2, r3
c0de0132:	3121      	adds	r1, #33	@ 0x21
c0de0134:	4550      	cmp	r0, sl
c0de0136:	bf08      	it	eq
c0de0138:	463a      	moveq	r2, r7
c0de013a:	4640      	mov	r0, r8
c0de013c:	2f00      	cmp	r7, #0
c0de013e:	bf08      	it	eq
c0de0140:	461a      	moveq	r2, r3
c0de0142:	f006 fc5a 	bl	c0de69fa <__aeabi_memmove>
c0de0146:	e0ba      	b.n	c0de02be <addr_getItem+0x23e>
c0de0148:	f003 fdaa 	bl	c0de3ca0 <app_mode_expert>
c0de014c:	2800      	cmp	r0, #0
c0de014e:	f000 80b8 	beq.w	c0de02c2 <addr_getItem+0x242>
c0de0152:	f8cd 8008 	str.w	r8, [sp, #8]
c0de0156:	f646 727f 	movw	r2, #28543	@ 0x6f7f
c0de015a:	f2c0 0200 	movt	r2, #0
c0de015e:	447a      	add	r2, pc
c0de0160:	4638      	mov	r0, r7
c0de0162:	4631      	mov	r1, r6
c0de0164:	f006 f862 	bl	c0de622c <snprintf>
c0de0168:	ae03      	add	r6, sp, #12
c0de016a:	4630      	mov	r0, r6
c0de016c:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de0170:	f006 fc4a 	bl	c0de6a08 <explicit_bzero>
c0de0174:	f643 1a5c 	movw	sl, #14684	@ 0x395c
c0de0178:	f2c0 0a00 	movt	sl, #0
c0de017c:	f859 000a 	ldr.w	r0, [r9, sl]
c0de0180:	f646 2268 	movw	r2, #27240	@ 0x6a68
c0de0184:	f2c0 0200 	movt	r2, #0
c0de0188:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
c0de018c:	447a      	add	r2, pc
c0de018e:	4630      	mov	r0, r6
c0de0190:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de0194:	f006 f84a 	bl	c0de622c <snprintf>
c0de0198:	4630      	mov	r0, r6
c0de019a:	f006 fc93 	bl	c0de6ac4 <strlen>
c0de019e:	1e41      	subs	r1, r0, #1
c0de01a0:	f5b1 7f95 	cmp.w	r1, #298	@ 0x12a
c0de01a4:	d852      	bhi.n	c0de024c <addr_getItem+0x1cc>
c0de01a6:	2700      	movs	r7, #0
c0de01a8:	f04f 0800 	mov.w	r8, #0
c0de01ac:	eb09 010a 	add.w	r1, r9, sl
c0de01b0:	f851 1028 	ldr.w	r1, [r1, r8, lsl #2]
c0de01b4:	eb00 0b07 	add.w	fp, r0, r7
c0de01b8:	f1b1 3fff 	cmp.w	r1, #4294967295	@ 0xffffffff
c0de01bc:	dc13      	bgt.n	c0de01e6 <addr_getItem+0x166>
c0de01be:	f646 424a 	movw	r2, #27722	@ 0x6c4a
c0de01c2:	eb06 040b 	add.w	r4, r6, fp
c0de01c6:	f5cb 7596 	rsb	r5, fp, #300	@ 0x12c
c0de01ca:	f2c0 0200 	movt	r2, #0
c0de01ce:	4620      	mov	r0, r4
c0de01d0:	4629      	mov	r1, r5
c0de01d2:	447a      	add	r2, pc
c0de01d4:	f006 f82a 	bl	c0de622c <snprintf>
c0de01d8:	4620      	mov	r0, r4
c0de01da:	f006 fc73 	bl	c0de6ac4 <strlen>
c0de01de:	b3a8      	cbz	r0, c0de024c <addr_getItem+0x1cc>
c0de01e0:	42a8      	cmp	r0, r5
c0de01e2:	d233      	bcs.n	c0de024c <addr_getItem+0x1cc>
c0de01e4:	4483      	add	fp, r0
c0de01e6:	f1b8 0f04 	cmp.w	r8, #4
c0de01ea:	d037      	beq.n	c0de025c <addr_getItem+0x1dc>
c0de01ec:	f646 22b7 	movw	r2, #27319	@ 0x6ab7
c0de01f0:	eb06 040b 	add.w	r4, r6, fp
c0de01f4:	f5cb 7596 	rsb	r5, fp, #300	@ 0x12c
c0de01f8:	f2c0 0200 	movt	r2, #0
c0de01fc:	4620      	mov	r0, r4
c0de01fe:	4629      	mov	r1, r5
c0de0200:	447a      	add	r2, pc
c0de0202:	f006 f813 	bl	c0de622c <snprintf>
c0de0206:	4620      	mov	r0, r4
c0de0208:	f006 fc5c 	bl	c0de6ac4 <strlen>
c0de020c:	b1f0      	cbz	r0, c0de024c <addr_getItem+0x1cc>
c0de020e:	42a8      	cmp	r0, r5
c0de0210:	d21c      	bcs.n	c0de024c <addr_getItem+0x1cc>
c0de0212:	eb00 070b 	add.w	r7, r0, fp
c0de0216:	eb09 000a 	add.w	r0, r9, sl
c0de021a:	eb00 0088 	add.w	r0, r0, r8, lsl #2
c0de021e:	6840      	ldr	r0, [r0, #4]
c0de0220:	f646 12be 	movw	r2, #27070	@ 0x69be
c0de0224:	19f4      	adds	r4, r6, r7
c0de0226:	f5c7 7596 	rsb	r5, r7, #300	@ 0x12c
c0de022a:	f2c0 0200 	movt	r2, #0
c0de022e:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
c0de0232:	4620      	mov	r0, r4
c0de0234:	4629      	mov	r1, r5
c0de0236:	447a      	add	r2, pc
c0de0238:	f005 fff8 	bl	c0de622c <snprintf>
c0de023c:	4620      	mov	r0, r4
c0de023e:	f006 fc41 	bl	c0de6ac4 <strlen>
c0de0242:	b118      	cbz	r0, c0de024c <addr_getItem+0x1cc>
c0de0244:	42a8      	cmp	r0, r5
c0de0246:	f108 0801 	add.w	r8, r8, #1
c0de024a:	d3af      	bcc.n	c0de01ac <addr_getItem+0x12c>
c0de024c:	2052      	movs	r0, #82	@ 0x52
c0de024e:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de0252:	f245 2045 	movw	r0, #21061	@ 0x5245
c0de0256:	f6c4 7052 	movt	r0, #20306	@ 0x4f52
c0de025a:	9003      	str	r0, [sp, #12]
c0de025c:	f10d 080c 	add.w	r8, sp, #12
c0de0260:	4640      	mov	r0, r8
c0de0262:	f006 fc2f 	bl	c0de6ac4 <strlen>
c0de0266:	9c02      	ldr	r4, [sp, #8]
c0de0268:	9d56      	ldr	r5, [sp, #344]	@ 0x158
c0de026a:	4607      	mov	r7, r0
c0de026c:	4620      	mov	r0, r4
c0de026e:	4629      	mov	r1, r5
c0de0270:	f006 fbca 	bl	c0de6a08 <explicit_bzero>
c0de0274:	9e58      	ldr	r6, [sp, #352]	@ 0x160
c0de0276:	1e69      	subs	r1, r5, #1
c0de0278:	2000      	movs	r0, #0
c0de027a:	b28b      	uxth	r3, r1
c0de027c:	7030      	strb	r0, [r6, #0]
c0de027e:	f04f 0003 	mov.w	r0, #3
c0de0282:	b1fb      	cbz	r3, c0de02c4 <addr_getItem+0x244>
c0de0284:	9d57      	ldr	r5, [sp, #348]	@ 0x15c
c0de0286:	043a      	lsls	r2, r7, #16
c0de0288:	d01c      	beq.n	c0de02c4 <addr_getItem+0x244>
c0de028a:	b2b8      	uxth	r0, r7
c0de028c:	fbb0 f2f3 	udiv	r2, r0, r3
c0de0290:	fb02 7011 	mls	r0, r2, r1, r7
c0de0294:	0401      	lsls	r1, r0, #16
c0de0296:	bf18      	it	ne
c0de0298:	3201      	addne	r2, #1
c0de029a:	b2d1      	uxtb	r1, r2
c0de029c:	42a9      	cmp	r1, r5
c0de029e:	7032      	strb	r2, [r6, #0]
c0de02a0:	d90d      	bls.n	c0de02be <addr_getItem+0x23e>
c0de02a2:	1e4a      	subs	r2, r1, #1
c0de02a4:	b280      	uxth	r0, r0
c0de02a6:	fb05 8103 	mla	r1, r5, r3, r8
c0de02aa:	42aa      	cmp	r2, r5
c0de02ac:	461a      	mov	r2, r3
c0de02ae:	bf08      	it	eq
c0de02b0:	4602      	moveq	r2, r0
c0de02b2:	2800      	cmp	r0, #0
c0de02b4:	4620      	mov	r0, r4
c0de02b6:	bf08      	it	eq
c0de02b8:	461a      	moveq	r2, r3
c0de02ba:	f006 fb9c 	bl	c0de69f6 <__aeabi_memcpy>
c0de02be:	2003      	movs	r0, #3
c0de02c0:	e000      	b.n	c0de02c4 <addr_getItem+0x244>
c0de02c2:	2005      	movs	r0, #5
c0de02c4:	b04e      	add	sp, #312	@ 0x138
c0de02c6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de02ca <handleApdu>:
c0de02ca:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de02ce:	b08c      	sub	sp, #48	@ 0x30
c0de02d0:	46e8      	mov	r8, sp
c0de02d2:	4683      	mov	fp, r0
c0de02d4:	4640      	mov	r0, r8
c0de02d6:	4617      	mov	r7, r2
c0de02d8:	460c      	mov	r4, r1
c0de02da:	f006 fbdb 	bl	c0de6a94 <setjmp>
c0de02de:	4605      	mov	r5, r0
c0de02e0:	b280      	uxth	r0, r0
c0de02e2:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de02e6:	b1a0      	cbz	r0, c0de0312 <handleApdu+0x48>
c0de02e8:	2805      	cmp	r0, #5
c0de02ea:	f000 80d7 	beq.w	c0de049c <handleApdu+0x1d2>
c0de02ee:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de02f0:	2100      	movs	r1, #0
c0de02f2:	462e      	mov	r6, r5
c0de02f4:	f8ad 102c 	strh.w	r1, [sp, #44]	@ 0x2c
c0de02f8:	f006 fb2b 	bl	c0de6952 <try_context_set>
c0de02fc:	f405 4070 	and.w	r0, r5, #61440	@ 0xf000
c0de0300:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de0304:	d003      	beq.n	c0de030e <handleApdu+0x44>
c0de0306:	f5b0 4fc0 	cmp.w	r0, #24576	@ 0x6000
c0de030a:	f040 80a6 	bne.w	c0de045a <handleApdu+0x190>
c0de030e:	0a28      	lsrs	r0, r5, #8
c0de0310:	e0a7      	b.n	c0de0462 <handleApdu+0x198>
c0de0312:	4668      	mov	r0, sp
c0de0314:	f006 fb1d 	bl	c0de6952 <try_context_set>
c0de0318:	f246 3ab8 	movw	sl, #25528	@ 0x63b8
c0de031c:	4649      	mov	r1, r9
c0de031e:	f2c0 0a00 	movt	sl, #0
c0de0322:	f819 100a 	ldrb.w	r1, [r9, sl]
c0de0326:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0328:	2955      	cmp	r1, #85	@ 0x55
c0de032a:	f040 80c0 	bne.w	c0de04ae <handleApdu+0x1e4>
c0de032e:	2f04      	cmp	r7, #4
c0de0330:	f240 80c1 	bls.w	c0de04b6 <handleApdu+0x1ec>
c0de0334:	4648      	mov	r0, r9
c0de0336:	eb09 000a 	add.w	r0, r9, sl
c0de033a:	7840      	ldrb	r0, [r0, #1]
c0de033c:	2802      	cmp	r0, #2
c0de033e:	d03d      	beq.n	c0de03bc <handleApdu+0xf2>
c0de0340:	2804      	cmp	r0, #4
c0de0342:	f040 80bc 	bne.w	c0de04be <handleApdu+0x1f4>
c0de0346:	2105      	movs	r1, #5
c0de0348:	4638      	mov	r0, r7
c0de034a:	f000 ff70 	bl	c0de122e <extractHRP>
c0de034e:	1d81      	adds	r1, r0, #6
c0de0350:	4638      	mov	r0, r7
c0de0352:	f000 fcf1 	bl	c0de0d38 <extractHDPath>
c0de0356:	eb09 050a 	add.w	r5, r9, sl
c0de035a:	f895 a002 	ldrb.w	sl, [r5, #2]
c0de035e:	f240 1111 	movw	r1, #273	@ 0x111
c0de0362:	4628      	mov	r0, r5
c0de0364:	464f      	mov	r7, r9
c0de0366:	f006 fb4f 	bl	c0de6a08 <explicit_bzero>
c0de036a:	f240 0600 	movw	r6, #0
c0de036e:	f2c0 0600 	movt	r6, #0
c0de0372:	2000      	movs	r0, #0
c0de0374:	f829 0006 	strh.w	r0, [r9, r6]
c0de0378:	eb09 0206 	add.w	r2, r9, r6
c0de037c:	f240 110f 	movw	r1, #271	@ 0x10f
c0de0380:	4628      	mov	r0, r5
c0de0382:	f000 ff83 	bl	c0de128c <crypto_fillAddress>
c0de0386:	2803      	cmp	r0, #3
c0de0388:	f040 80c5 	bne.w	c0de0516 <handleApdu+0x24c>
c0de038c:	5bb8      	ldrh	r0, [r7, r6]
c0de038e:	2800      	cmp	r0, #0
c0de0390:	f000 80c1 	beq.w	c0de0516 <handleApdu+0x24c>
c0de0394:	f1ba 0f00 	cmp.w	sl, #0
c0de0398:	f000 80b8 	beq.w	c0de050c <handleApdu+0x242>
c0de039c:	f64f 40c9 	movw	r0, #64713	@ 0xfcc9
c0de03a0:	f6cf 70ff 	movt	r0, #65535	@ 0xffff
c0de03a4:	f64f 41a1 	movw	r1, #64673	@ 0xfca1
c0de03a8:	f6cf 71ff 	movt	r1, #65535	@ 0xffff
c0de03ac:	f240 128d 	movw	r2, #397	@ 0x18d
c0de03b0:	f2c0 0200 	movt	r2, #0
c0de03b4:	4478      	add	r0, pc
c0de03b6:	4479      	add	r1, pc
c0de03b8:	447a      	add	r2, pc
c0de03ba:	e043      	b.n	c0de0444 <handleApdu+0x17a>
c0de03bc:	4620      	mov	r0, r4
c0de03be:	4639      	mov	r1, r7
c0de03c0:	f000 fcf7 	bl	c0de0db2 <process_chunk>
c0de03c4:	2800      	cmp	r0, #0
c0de03c6:	f000 80a2 	beq.w	c0de050e <handleApdu+0x244>
c0de03ca:	eb09 050a 	add.w	r5, r9, sl
c0de03ce:	f240 1111 	movw	r1, #273	@ 0x111
c0de03d2:	4628      	mov	r0, r5
c0de03d4:	464f      	mov	r7, r9
c0de03d6:	f006 fb17 	bl	c0de6a08 <explicit_bzero>
c0de03da:	f240 0600 	movw	r6, #0
c0de03de:	f2c0 0600 	movt	r6, #0
c0de03e2:	2000      	movs	r0, #0
c0de03e4:	f829 0006 	strh.w	r0, [r9, r6]
c0de03e8:	eb09 0206 	add.w	r2, r9, r6
c0de03ec:	f240 110f 	movw	r1, #271	@ 0x10f
c0de03f0:	4628      	mov	r0, r5
c0de03f2:	f000 ff4b 	bl	c0de128c <crypto_fillAddress>
c0de03f6:	2803      	cmp	r0, #3
c0de03f8:	f040 808d 	bne.w	c0de0516 <handleApdu+0x24c>
c0de03fc:	5bb8      	ldrh	r0, [r7, r6]
c0de03fe:	2800      	cmp	r0, #0
c0de0400:	f000 8089 	beq.w	c0de0516 <handleApdu+0x24c>
c0de0404:	f643 11c8 	movw	r1, #14792	@ 0x39c8
c0de0408:	f2c0 0100 	movt	r1, #0
c0de040c:	eb09 000a 	add.w	r0, r9, sl
c0de0410:	4449      	add	r1, r9
c0de0412:	3021      	adds	r0, #33	@ 0x21
c0de0414:	f641 0224 	movw	r2, #6180	@ 0x1824
c0de0418:	5088      	str	r0, [r1, r2]
c0de041a:	f000 fdaf 	bl	c0de0f7c <tx_parse>
c0de041e:	2800      	cmp	r0, #0
c0de0420:	d17d      	bne.n	c0de051e <handleApdu+0x254>
c0de0422:	f003 fe82 	bl	c0de412a <check_app_canary>
c0de0426:	f640 30bb 	movw	r0, #3003	@ 0xbbb
c0de042a:	f2c0 0000 	movt	r0, #0
c0de042e:	f640 319b 	movw	r1, #2971	@ 0xb9b
c0de0432:	f2c0 0100 	movt	r1, #0
c0de0436:	f240 1233 	movw	r2, #307	@ 0x133
c0de043a:	f2c0 0200 	movt	r2, #0
c0de043e:	4478      	add	r0, pc
c0de0440:	4479      	add	r1, pc
c0de0442:	447a      	add	r2, pc
c0de0444:	f003 fadc 	bl	c0de3a00 <view_review_init>
c0de0448:	f003 faed 	bl	c0de3a26 <view_review_show>
c0de044c:	f8db 0000 	ldr.w	r0, [fp]
c0de0450:	f040 0010 	orr.w	r0, r0, #16
c0de0454:	f8cb 0000 	str.w	r0, [fp]
c0de0458:	e012      	b.n	c0de0480 <handleApdu+0x1b6>
c0de045a:	0a28      	lsrs	r0, r5, #8
c0de045c:	210d      	movs	r1, #13
c0de045e:	f361 00df 	bfi	r0, r1, #3, #29
c0de0462:	f246 33b8 	movw	r3, #25528	@ 0x63b8
c0de0466:	4649      	mov	r1, r9
c0de0468:	6822      	ldr	r2, [r4, #0]
c0de046a:	f2c0 0300 	movt	r3, #0
c0de046e:	eb09 0103 	add.w	r1, r9, r3
c0de0472:	5488      	strb	r0, [r1, r2]
c0de0474:	6820      	ldr	r0, [r4, #0]
c0de0476:	4408      	add	r0, r1
c0de0478:	7046      	strb	r6, [r0, #1]
c0de047a:	6820      	ldr	r0, [r4, #0]
c0de047c:	3002      	adds	r0, #2
c0de047e:	6020      	str	r0, [r4, #0]
c0de0480:	f006 fa5d 	bl	c0de693e <try_context_get>
c0de0484:	4540      	cmp	r0, r8
c0de0486:	d102      	bne.n	c0de048e <handleApdu+0x1c4>
c0de0488:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de048a:	f006 fa62 	bl	c0de6952 <try_context_set>
c0de048e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de0492:	2800      	cmp	r0, #0
c0de0494:	d152      	bne.n	c0de053c <handleApdu+0x272>
c0de0496:	b00c      	add	sp, #48	@ 0x30
c0de0498:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de049c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de049e:	2100      	movs	r1, #0
c0de04a0:	f8ad 102c 	strh.w	r1, [sp, #44]	@ 0x2c
c0de04a4:	f006 fa55 	bl	c0de6952 <try_context_set>
c0de04a8:	2005      	movs	r0, #5
c0de04aa:	f005 feb4 	bl	c0de6216 <os_longjmp>
c0de04ae:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de04b2:	f005 feb0 	bl	c0de6216 <os_longjmp>
c0de04b6:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de04ba:	f005 feac 	bl	c0de6216 <os_longjmp>
c0de04be:	2800      	cmp	r0, #0
c0de04c0:	d13e      	bne.n	c0de0540 <handleApdu+0x276>
c0de04c2:	eb09 020a 	add.w	r2, r9, sl
c0de04c6:	2302      	movs	r3, #2
c0de04c8:	7053      	strb	r3, [r2, #1]
c0de04ca:	2320      	movs	r3, #32
c0de04cc:	7093      	strb	r3, [r2, #2]
c0de04ce:	f246 3390 	movw	r3, #25488	@ 0x6390
c0de04d2:	f2c0 0300 	movt	r3, #0
c0de04d6:	eb09 0003 	add.w	r0, r9, r3
c0de04da:	6840      	ldr	r0, [r0, #4]
c0de04dc:	2301      	movs	r3, #1
c0de04de:	70d3      	strb	r3, [r2, #3]
c0de04e0:	f1a0 0397 	sub.w	r3, r0, #151	@ 0x97
c0de04e4:	fab3 f383 	clz	r3, r3
c0de04e8:	fab0 f080 	clz	r0, r0
c0de04ec:	095b      	lsrs	r3, r3, #5
c0de04ee:	0940      	lsrs	r0, r0, #5
c0de04f0:	4318      	orrs	r0, r3
c0de04f2:	7110      	strb	r0, [r2, #4]
c0de04f4:	2033      	movs	r0, #51	@ 0x33
c0de04f6:	7150      	strb	r0, [r2, #5]
c0de04f8:	2010      	movs	r0, #16
c0de04fa:	2100      	movs	r1, #0
c0de04fc:	7190      	strb	r0, [r2, #6]
c0de04fe:	2004      	movs	r0, #4
c0de0500:	f809 100a 	strb.w	r1, [r9, sl]
c0de0504:	71d1      	strb	r1, [r2, #7]
c0de0506:	7210      	strb	r0, [r2, #8]
c0de0508:	6820      	ldr	r0, [r4, #0]
c0de050a:	3009      	adds	r0, #9
c0de050c:	6020      	str	r0, [r4, #0]
c0de050e:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de0512:	f005 fe80 	bl	c0de6216 <os_longjmp>
c0de0516:	f44f 40c8 	mov.w	r0, #25600	@ 0x6400
c0de051a:	f005 fe7c 	bl	c0de6216 <os_longjmp>
c0de051e:	4605      	mov	r5, r0
c0de0520:	f006 fad0 	bl	c0de6ac4 <strlen>
c0de0524:	4606      	mov	r6, r0
c0de0526:	eb09 000a 	add.w	r0, r9, sl
c0de052a:	4629      	mov	r1, r5
c0de052c:	4632      	mov	r2, r6
c0de052e:	f006 fa64 	bl	c0de69fa <__aeabi_memmove>
c0de0532:	6820      	ldr	r0, [r4, #0]
c0de0534:	4430      	add	r0, r6
c0de0536:	6020      	str	r0, [r4, #0]
c0de0538:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de053c:	f005 fe6b 	bl	c0de6216 <os_longjmp>
c0de0540:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de0544:	f005 fe67 	bl	c0de6216 <os_longjmp>

c0de0548 <app_reply_address>:
c0de0548:	f240 0000 	movw	r0, #0
c0de054c:	f2c0 0000 	movt	r0, #0
c0de0550:	f839 0000 	ldrh.w	r0, [r9, r0]
c0de0554:	f246 32b8 	movw	r2, #25528	@ 0x63b8
c0de0558:	f2c0 0200 	movt	r2, #0
c0de055c:	b2c1      	uxtb	r1, r0
c0de055e:	444a      	add	r2, r9
c0de0560:	2390      	movs	r3, #144	@ 0x90
c0de0562:	3002      	adds	r0, #2
c0de0564:	eb02 0c01 	add.w	ip, r2, r1
c0de0568:	5453      	strb	r3, [r2, r1]
c0de056a:	2200      	movs	r2, #0
c0de056c:	b281      	uxth	r1, r0
c0de056e:	2020      	movs	r0, #32
c0de0570:	f88c 2001 	strb.w	r2, [ip, #1]
c0de0574:	f003 bf3e 	b.w	c0de43f4 <io_exchange>

c0de0578 <app_sign>:
c0de0578:	b5b0      	push	{r4, r5, r7, lr}
c0de057a:	b082      	sub	sp, #8
c0de057c:	f246 35b8 	movw	r5, #25528	@ 0x63b8
c0de0580:	f2c0 0500 	movt	r5, #0
c0de0584:	2000      	movs	r0, #0
c0de0586:	eb09 0405 	add.w	r4, r9, r5
c0de058a:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de058e:	4620      	mov	r0, r4
c0de0590:	f240 1111 	movw	r1, #273	@ 0x111
c0de0594:	f006 fa38 	bl	c0de6a08 <explicit_bzero>
c0de0598:	f10d 0206 	add.w	r2, sp, #6
c0de059c:	4620      	mov	r0, r4
c0de059e:	f44f 7187 	mov.w	r1, #270	@ 0x10e
c0de05a2:	f000 fddc 	bl	c0de115e <crypto_sign>
c0de05a6:	2803      	cmp	r0, #3
c0de05a8:	d10c      	bne.n	c0de05c4 <app_sign+0x4c>
c0de05aa:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de05ae:	b148      	cbz	r0, c0de05c4 <app_sign+0x4c>
c0de05b0:	b2c1      	uxtb	r1, r0
c0de05b2:	eb09 0205 	add.w	r2, r9, r5
c0de05b6:	2590      	movs	r5, #144	@ 0x90
c0de05b8:	1853      	adds	r3, r2, r1
c0de05ba:	5455      	strb	r5, [r2, r1]
c0de05bc:	2100      	movs	r1, #0
c0de05be:	3002      	adds	r0, #2
c0de05c0:	7059      	strb	r1, [r3, #1]
c0de05c2:	e007      	b.n	c0de05d4 <app_sign+0x5c>
c0de05c4:	206f      	movs	r0, #111	@ 0x6f
c0de05c6:	f809 0005 	strb.w	r0, [r9, r5]
c0de05ca:	eb09 0005 	add.w	r0, r9, r5
c0de05ce:	2101      	movs	r1, #1
c0de05d0:	7041      	strb	r1, [r0, #1]
c0de05d2:	2002      	movs	r0, #2
c0de05d4:	b281      	uxth	r1, r0
c0de05d6:	2020      	movs	r0, #32
c0de05d8:	f003 ff0c 	bl	c0de43f4 <io_exchange>
c0de05dc:	b002      	add	sp, #8
c0de05de:	bdb0      	pop	{r4, r5, r7, pc}

c0de05e0 <io_event>:
c0de05e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de05e2:	b081      	sub	sp, #4
c0de05e4:	f240 0502 	movw	r5, #2
c0de05e8:	f2c0 0500 	movt	r5, #0
c0de05ec:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de05f0:	280c      	cmp	r0, #12
c0de05f2:	dc05      	bgt.n	c0de0600 <io_event+0x20>
c0de05f4:	2805      	cmp	r0, #5
c0de05f6:	d079      	beq.n	c0de06ec <io_event+0x10c>
c0de05f8:	280c      	cmp	r0, #12
c0de05fa:	f000 8334 	beq.w	c0de0c66 <io_event+0x686>
c0de05fe:	e16f      	b.n	c0de08e0 <io_event+0x300>
c0de0600:	280d      	cmp	r0, #13
c0de0602:	f000 80ea 	beq.w	c0de07da <io_event+0x1fa>
c0de0606:	280e      	cmp	r0, #14
c0de0608:	f040 816a 	bne.w	c0de08e0 <io_event+0x300>
c0de060c:	f246 3690 	movw	r6, #25488	@ 0x6390
c0de0610:	f2c0 0600 	movt	r6, #0
c0de0614:	2001      	movs	r0, #1
c0de0616:	eb09 0506 	add.w	r5, r9, r6
c0de061a:	f809 0006 	strb.w	r0, [r9, r6]
c0de061e:	2700      	movs	r7, #0
c0de0620:	4628      	mov	r0, r5
c0de0622:	606f      	str	r7, [r5, #4]
c0de0624:	f006 f92e 	bl	c0de6884 <os_ux>
c0de0628:	2004      	movs	r0, #4
c0de062a:	f006 f9a0 	bl	c0de696e <os_sched_last_status>
c0de062e:	2869      	cmp	r0, #105	@ 0x69
c0de0630:	6068      	str	r0, [r5, #4]
c0de0632:	f040 81c5 	bne.w	c0de09c0 <io_event+0x3e0>
c0de0636:	f003 fe1e 	bl	c0de4276 <io_seph_ux_init_button>
c0de063a:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de063e:	f2c0 0400 	movt	r4, #0
c0de0642:	eb09 0504 	add.w	r5, r9, r4
c0de0646:	2004      	movs	r0, #4
c0de0648:	f8a5 70ca 	strh.w	r7, [r5, #202]	@ 0xca
c0de064c:	f006 f98f 	bl	c0de696e <os_sched_last_status>
c0de0650:	f8d5 10cc 	ldr.w	r1, [r5, #204]	@ 0xcc
c0de0654:	eb09 0206 	add.w	r2, r9, r6
c0de0658:	2900      	cmp	r1, #0
c0de065a:	6050      	str	r0, [r2, #4]
c0de065c:	f000 8303 	beq.w	c0de0c66 <io_event+0x686>
c0de0660:	2800      	cmp	r0, #0
c0de0662:	f000 8300 	beq.w	c0de0c66 <io_event+0x686>
c0de0666:	2897      	cmp	r0, #151	@ 0x97
c0de0668:	f000 82fd 	beq.w	c0de0c66 <io_event+0x686>
c0de066c:	eb09 0004 	add.w	r0, r9, r4
c0de0670:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0674:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0678:	4281      	cmp	r1, r0
c0de067a:	f080 82f4 	bcs.w	c0de0c66 <io_event+0x686>
c0de067e:	f006 f8c0 	bl	c0de6802 <os_perso_isonboarded>
c0de0682:	28aa      	cmp	r0, #170	@ 0xaa
c0de0684:	d104      	bne.n	c0de0690 <io_event+0xb0>
c0de0686:	f006 f8f2 	bl	c0de686e <os_global_pin_is_validated>
c0de068a:	28aa      	cmp	r0, #170	@ 0xaa
c0de068c:	f040 82eb 	bne.w	c0de0c66 <io_event+0x686>
c0de0690:	eb09 0104 	add.w	r1, r9, r4
c0de0694:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0698:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de069c:	4288      	cmp	r0, r1
c0de069e:	f080 82dd 	bcs.w	c0de0c5c <io_event+0x67c>
c0de06a2:	b281      	uxth	r1, r0
c0de06a4:	eb09 0004 	add.w	r0, r9, r4
c0de06a8:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de06ac:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de06b0:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de06b4:	b13b      	cbz	r3, c0de06c6 <io_event+0xe6>
c0de06b6:	4798      	blx	r3
c0de06b8:	b158      	cbz	r0, c0de06d2 <io_event+0xf2>
c0de06ba:	eb09 0104 	add.w	r1, r9, r4
c0de06be:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de06c2:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de06c6:	2801      	cmp	r0, #1
c0de06c8:	bf08      	it	eq
c0de06ca:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de06ce:	f003 fde6 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de06d2:	eb09 0204 	add.w	r2, r9, r4
c0de06d6:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de06da:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de06de:	3001      	adds	r0, #1
c0de06e0:	b283      	uxth	r3, r0
c0de06e2:	428b      	cmp	r3, r1
c0de06e4:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de06e8:	d3db      	bcc.n	c0de06a2 <io_event+0xc2>
c0de06ea:	e2b7      	b.n	c0de0c5c <io_event+0x67c>
c0de06ec:	f246 3690 	movw	r6, #25488	@ 0x6390
c0de06f0:	f2c0 0600 	movt	r6, #0
c0de06f4:	2001      	movs	r0, #1
c0de06f6:	f809 0006 	strb.w	r0, [r9, r6]
c0de06fa:	eb09 0406 	add.w	r4, r9, r6
c0de06fe:	2000      	movs	r0, #0
c0de0700:	6060      	str	r0, [r4, #4]
c0de0702:	4620      	mov	r0, r4
c0de0704:	f006 f8be 	bl	c0de6884 <os_ux>
c0de0708:	2004      	movs	r0, #4
c0de070a:	f006 f930 	bl	c0de696e <os_sched_last_status>
c0de070e:	2800      	cmp	r0, #0
c0de0710:	6060      	str	r0, [r4, #4]
c0de0712:	f000 82a8 	beq.w	c0de0c66 <io_event+0x686>
c0de0716:	2897      	cmp	r0, #151	@ 0x97
c0de0718:	f000 82a5 	beq.w	c0de0c66 <io_event+0x686>
c0de071c:	2869      	cmp	r0, #105	@ 0x69
c0de071e:	f040 8208 	bne.w	c0de0b32 <io_event+0x552>
c0de0722:	f003 fda8 	bl	c0de4276 <io_seph_ux_init_button>
c0de0726:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de072a:	f2c0 0400 	movt	r4, #0
c0de072e:	eb09 0504 	add.w	r5, r9, r4
c0de0732:	2000      	movs	r0, #0
c0de0734:	f8a5 00ca 	strh.w	r0, [r5, #202]	@ 0xca
c0de0738:	2004      	movs	r0, #4
c0de073a:	f006 f918 	bl	c0de696e <os_sched_last_status>
c0de073e:	f8d5 10cc 	ldr.w	r1, [r5, #204]	@ 0xcc
c0de0742:	eb09 0206 	add.w	r2, r9, r6
c0de0746:	2900      	cmp	r1, #0
c0de0748:	6050      	str	r0, [r2, #4]
c0de074a:	f000 828c 	beq.w	c0de0c66 <io_event+0x686>
c0de074e:	2800      	cmp	r0, #0
c0de0750:	f000 8289 	beq.w	c0de0c66 <io_event+0x686>
c0de0754:	2897      	cmp	r0, #151	@ 0x97
c0de0756:	f000 8286 	beq.w	c0de0c66 <io_event+0x686>
c0de075a:	eb09 0004 	add.w	r0, r9, r4
c0de075e:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0762:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0766:	4281      	cmp	r1, r0
c0de0768:	f080 827d 	bcs.w	c0de0c66 <io_event+0x686>
c0de076c:	f006 f849 	bl	c0de6802 <os_perso_isonboarded>
c0de0770:	28aa      	cmp	r0, #170	@ 0xaa
c0de0772:	d104      	bne.n	c0de077e <io_event+0x19e>
c0de0774:	f006 f87b 	bl	c0de686e <os_global_pin_is_validated>
c0de0778:	28aa      	cmp	r0, #170	@ 0xaa
c0de077a:	f040 8274 	bne.w	c0de0c66 <io_event+0x686>
c0de077e:	eb09 0104 	add.w	r1, r9, r4
c0de0782:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0786:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de078a:	4288      	cmp	r0, r1
c0de078c:	f080 8266 	bcs.w	c0de0c5c <io_event+0x67c>
c0de0790:	b281      	uxth	r1, r0
c0de0792:	eb09 0004 	add.w	r0, r9, r4
c0de0796:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de079a:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de079e:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de07a2:	b13b      	cbz	r3, c0de07b4 <io_event+0x1d4>
c0de07a4:	4798      	blx	r3
c0de07a6:	b158      	cbz	r0, c0de07c0 <io_event+0x1e0>
c0de07a8:	eb09 0104 	add.w	r1, r9, r4
c0de07ac:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de07b0:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de07b4:	2801      	cmp	r0, #1
c0de07b6:	bf08      	it	eq
c0de07b8:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de07bc:	f003 fd6f 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de07c0:	eb09 0204 	add.w	r2, r9, r4
c0de07c4:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de07c8:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de07cc:	3001      	adds	r0, #1
c0de07ce:	b283      	uxth	r3, r0
c0de07d0:	428b      	cmp	r3, r1
c0de07d2:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de07d6:	d3db      	bcc.n	c0de0790 <io_event+0x1b0>
c0de07d8:	e240      	b.n	c0de0c5c <io_event+0x67c>
c0de07da:	f246 2580 	movw	r5, #25216	@ 0x6280
c0de07de:	f2c0 0500 	movt	r5, #0
c0de07e2:	eb09 0005 	add.w	r0, r9, r5
c0de07e6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de07ea:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de07ee:	4281      	cmp	r1, r0
c0de07f0:	d206      	bcs.n	c0de0800 <io_event+0x220>
c0de07f2:	f246 3090 	movw	r0, #25488	@ 0x6390
c0de07f6:	f2c0 0000 	movt	r0, #0
c0de07fa:	2101      	movs	r1, #1
c0de07fc:	f809 1000 	strb.w	r1, [r9, r0]
c0de0800:	f246 3690 	movw	r6, #25488	@ 0x6390
c0de0804:	f2c0 0600 	movt	r6, #0
c0de0808:	eb09 0406 	add.w	r4, r9, r6
c0de080c:	2000      	movs	r0, #0
c0de080e:	6060      	str	r0, [r4, #4]
c0de0810:	4620      	mov	r0, r4
c0de0812:	f006 f837 	bl	c0de6884 <os_ux>
c0de0816:	2004      	movs	r0, #4
c0de0818:	f006 f8a9 	bl	c0de696e <os_sched_last_status>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	6060      	str	r0, [r4, #4]
c0de0820:	f000 8221 	beq.w	c0de0c66 <io_event+0x686>
c0de0824:	2897      	cmp	r0, #151	@ 0x97
c0de0826:	f000 821e 	beq.w	c0de0c66 <io_event+0x686>
c0de082a:	2869      	cmp	r0, #105	@ 0x69
c0de082c:	f040 81d4 	bne.w	c0de0bd8 <io_event+0x5f8>
c0de0830:	f003 fd21 	bl	c0de4276 <io_seph_ux_init_button>
c0de0834:	eb09 0405 	add.w	r4, r9, r5
c0de0838:	2000      	movs	r0, #0
c0de083a:	f8a4 00ca 	strh.w	r0, [r4, #202]	@ 0xca
c0de083e:	2004      	movs	r0, #4
c0de0840:	f006 f895 	bl	c0de696e <os_sched_last_status>
c0de0844:	f8d4 10cc 	ldr.w	r1, [r4, #204]	@ 0xcc
c0de0848:	eb09 0206 	add.w	r2, r9, r6
c0de084c:	2900      	cmp	r1, #0
c0de084e:	6050      	str	r0, [r2, #4]
c0de0850:	f000 8209 	beq.w	c0de0c66 <io_event+0x686>
c0de0854:	2800      	cmp	r0, #0
c0de0856:	f000 8206 	beq.w	c0de0c66 <io_event+0x686>
c0de085a:	2897      	cmp	r0, #151	@ 0x97
c0de085c:	f000 8203 	beq.w	c0de0c66 <io_event+0x686>
c0de0860:	eb09 0005 	add.w	r0, r9, r5
c0de0864:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0868:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de086c:	4281      	cmp	r1, r0
c0de086e:	f080 81fa 	bcs.w	c0de0c66 <io_event+0x686>
c0de0872:	f005 ffc6 	bl	c0de6802 <os_perso_isonboarded>
c0de0876:	28aa      	cmp	r0, #170	@ 0xaa
c0de0878:	d104      	bne.n	c0de0884 <io_event+0x2a4>
c0de087a:	f005 fff8 	bl	c0de686e <os_global_pin_is_validated>
c0de087e:	28aa      	cmp	r0, #170	@ 0xaa
c0de0880:	f040 81f1 	bne.w	c0de0c66 <io_event+0x686>
c0de0884:	eb09 0105 	add.w	r1, r9, r5
c0de0888:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de088c:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0890:	4288      	cmp	r0, r1
c0de0892:	f080 81e3 	bcs.w	c0de0c5c <io_event+0x67c>
c0de0896:	b281      	uxth	r1, r0
c0de0898:	eb09 0005 	add.w	r0, r9, r5
c0de089c:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de08a0:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de08a4:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de08a8:	b13b      	cbz	r3, c0de08ba <io_event+0x2da>
c0de08aa:	4798      	blx	r3
c0de08ac:	b158      	cbz	r0, c0de08c6 <io_event+0x2e6>
c0de08ae:	eb09 0105 	add.w	r1, r9, r5
c0de08b2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de08b6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de08ba:	2801      	cmp	r0, #1
c0de08bc:	bf08      	it	eq
c0de08be:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de08c2:	f003 fcec 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de08c6:	eb09 0205 	add.w	r2, r9, r5
c0de08ca:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de08ce:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de08d2:	3001      	adds	r0, #1
c0de08d4:	b283      	uxth	r3, r0
c0de08d6:	428b      	cmp	r3, r1
c0de08d8:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de08dc:	d3db      	bcc.n	c0de0896 <io_event+0x2b6>
c0de08de:	e1bd      	b.n	c0de0c5c <io_event+0x67c>
c0de08e0:	f246 3590 	movw	r5, #25488	@ 0x6390
c0de08e4:	f2c0 0500 	movt	r5, #0
c0de08e8:	2001      	movs	r0, #1
c0de08ea:	eb09 0405 	add.w	r4, r9, r5
c0de08ee:	f809 0005 	strb.w	r0, [r9, r5]
c0de08f2:	2600      	movs	r6, #0
c0de08f4:	4620      	mov	r0, r4
c0de08f6:	6066      	str	r6, [r4, #4]
c0de08f8:	f005 ffc4 	bl	c0de6884 <os_ux>
c0de08fc:	2004      	movs	r0, #4
c0de08fe:	f006 f836 	bl	c0de696e <os_sched_last_status>
c0de0902:	2869      	cmp	r0, #105	@ 0x69
c0de0904:	6060      	str	r0, [r4, #4]
c0de0906:	f040 80c9 	bne.w	c0de0a9c <io_event+0x4bc>
c0de090a:	f003 fcb4 	bl	c0de4276 <io_seph_ux_init_button>
c0de090e:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de0912:	f2c0 0400 	movt	r4, #0
c0de0916:	eb09 0704 	add.w	r7, r9, r4
c0de091a:	2004      	movs	r0, #4
c0de091c:	f8a7 60ca 	strh.w	r6, [r7, #202]	@ 0xca
c0de0920:	f006 f825 	bl	c0de696e <os_sched_last_status>
c0de0924:	f8d7 10cc 	ldr.w	r1, [r7, #204]	@ 0xcc
c0de0928:	eb09 0205 	add.w	r2, r9, r5
c0de092c:	2900      	cmp	r1, #0
c0de092e:	6050      	str	r0, [r2, #4]
c0de0930:	f000 8199 	beq.w	c0de0c66 <io_event+0x686>
c0de0934:	2800      	cmp	r0, #0
c0de0936:	f000 8196 	beq.w	c0de0c66 <io_event+0x686>
c0de093a:	2897      	cmp	r0, #151	@ 0x97
c0de093c:	f000 8193 	beq.w	c0de0c66 <io_event+0x686>
c0de0940:	eb09 0004 	add.w	r0, r9, r4
c0de0944:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0948:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de094c:	4281      	cmp	r1, r0
c0de094e:	f080 818a 	bcs.w	c0de0c66 <io_event+0x686>
c0de0952:	f005 ff56 	bl	c0de6802 <os_perso_isonboarded>
c0de0956:	28aa      	cmp	r0, #170	@ 0xaa
c0de0958:	d104      	bne.n	c0de0964 <io_event+0x384>
c0de095a:	f005 ff88 	bl	c0de686e <os_global_pin_is_validated>
c0de095e:	28aa      	cmp	r0, #170	@ 0xaa
c0de0960:	f040 8181 	bne.w	c0de0c66 <io_event+0x686>
c0de0964:	eb09 0104 	add.w	r1, r9, r4
c0de0968:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de096c:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0970:	4288      	cmp	r0, r1
c0de0972:	f080 8173 	bcs.w	c0de0c5c <io_event+0x67c>
c0de0976:	b281      	uxth	r1, r0
c0de0978:	eb09 0004 	add.w	r0, r9, r4
c0de097c:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0980:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0984:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0988:	b13b      	cbz	r3, c0de099a <io_event+0x3ba>
c0de098a:	4798      	blx	r3
c0de098c:	b158      	cbz	r0, c0de09a6 <io_event+0x3c6>
c0de098e:	eb09 0104 	add.w	r1, r9, r4
c0de0992:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0996:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de099a:	2801      	cmp	r0, #1
c0de099c:	bf08      	it	eq
c0de099e:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de09a2:	f003 fc7c 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de09a6:	eb09 0204 	add.w	r2, r9, r4
c0de09aa:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de09ae:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de09b2:	3001      	adds	r0, #1
c0de09b4:	b283      	uxth	r3, r0
c0de09b6:	428b      	cmp	r3, r1
c0de09b8:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de09bc:	d3db      	bcc.n	c0de0976 <io_event+0x396>
c0de09be:	e14d      	b.n	c0de0c5c <io_event+0x67c>
c0de09c0:	f246 2580 	movw	r5, #25216	@ 0x6280
c0de09c4:	f2c0 0500 	movt	r5, #0
c0de09c8:	4604      	mov	r4, r0
c0de09ca:	eb09 0005 	add.w	r0, r9, r5
c0de09ce:	f8d0 00e4 	ldr.w	r0, [r0, #228]	@ 0xe4
c0de09d2:	b1b0      	cbz	r0, c0de0a02 <io_event+0x422>
c0de09d4:	3864      	subs	r0, #100	@ 0x64
c0de09d6:	eb09 0105 	add.w	r1, r9, r5
c0de09da:	bf38      	it	cc
c0de09dc:	2000      	movcc	r0, #0
c0de09de:	f8c1 00e4 	str.w	r0, [r1, #228]	@ 0xe4
c0de09e2:	d80e      	bhi.n	c0de0a02 <io_event+0x422>
c0de09e4:	eb09 0005 	add.w	r0, r9, r5
c0de09e8:	f8d0 10e0 	ldr.w	r1, [r0, #224]	@ 0xe0
c0de09ec:	2900      	cmp	r1, #0
c0de09ee:	f000 8142 	beq.w	c0de0c76 <io_event+0x696>
c0de09f2:	eb09 0005 	add.w	r0, r9, r5
c0de09f6:	f8d0 20e8 	ldr.w	r2, [r0, #232]	@ 0xe8
c0de09fa:	f8c0 20e4 	str.w	r2, [r0, #228]	@ 0xe4
c0de09fe:	2000      	movs	r0, #0
c0de0a00:	4788      	blx	r1
c0de0a02:	2c00      	cmp	r4, #0
c0de0a04:	f000 812f 	beq.w	c0de0c66 <io_event+0x686>
c0de0a08:	2c97      	cmp	r4, #151	@ 0x97
c0de0a0a:	f000 812c 	beq.w	c0de0c66 <io_event+0x686>
c0de0a0e:	eb09 0005 	add.w	r0, r9, r5
c0de0a12:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de0a16:	2800      	cmp	r0, #0
c0de0a18:	f000 8125 	beq.w	c0de0c66 <io_event+0x686>
c0de0a1c:	eb09 0005 	add.w	r0, r9, r5
c0de0a20:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0a24:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0a28:	4281      	cmp	r1, r0
c0de0a2a:	f080 811c 	bcs.w	c0de0c66 <io_event+0x686>
c0de0a2e:	f005 fee8 	bl	c0de6802 <os_perso_isonboarded>
c0de0a32:	28aa      	cmp	r0, #170	@ 0xaa
c0de0a34:	d104      	bne.n	c0de0a40 <io_event+0x460>
c0de0a36:	f005 ff1a 	bl	c0de686e <os_global_pin_is_validated>
c0de0a3a:	28aa      	cmp	r0, #170	@ 0xaa
c0de0a3c:	f040 8113 	bne.w	c0de0c66 <io_event+0x686>
c0de0a40:	eb09 0105 	add.w	r1, r9, r5
c0de0a44:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0a48:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0a4c:	4288      	cmp	r0, r1
c0de0a4e:	f080 8105 	bcs.w	c0de0c5c <io_event+0x67c>
c0de0a52:	b281      	uxth	r1, r0
c0de0a54:	eb09 0005 	add.w	r0, r9, r5
c0de0a58:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0a5c:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0a60:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0a64:	b13b      	cbz	r3, c0de0a76 <io_event+0x496>
c0de0a66:	4798      	blx	r3
c0de0a68:	b158      	cbz	r0, c0de0a82 <io_event+0x4a2>
c0de0a6a:	eb09 0105 	add.w	r1, r9, r5
c0de0a6e:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0a72:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de0a76:	2801      	cmp	r0, #1
c0de0a78:	bf08      	it	eq
c0de0a7a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0a7e:	f003 fc0e 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de0a82:	eb09 0205 	add.w	r2, r9, r5
c0de0a86:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de0a8a:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de0a8e:	3001      	adds	r0, #1
c0de0a90:	b283      	uxth	r3, r0
c0de0a92:	428b      	cmp	r3, r1
c0de0a94:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de0a98:	d3db      	bcc.n	c0de0a52 <io_event+0x472>
c0de0a9a:	e0df      	b.n	c0de0c5c <io_event+0x67c>
c0de0a9c:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de0aa0:	f2c0 0400 	movt	r4, #0
c0de0aa4:	eb09 0004 	add.w	r0, r9, r4
c0de0aa8:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de0aac:	2800      	cmp	r0, #0
c0de0aae:	f000 80da 	beq.w	c0de0c66 <io_event+0x686>
c0de0ab2:	eb09 0004 	add.w	r0, r9, r4
c0de0ab6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0aba:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0abe:	4281      	cmp	r1, r0
c0de0ac0:	f080 80d1 	bcs.w	c0de0c66 <io_event+0x686>
c0de0ac4:	f005 fe9d 	bl	c0de6802 <os_perso_isonboarded>
c0de0ac8:	28aa      	cmp	r0, #170	@ 0xaa
c0de0aca:	d104      	bne.n	c0de0ad6 <io_event+0x4f6>
c0de0acc:	f005 fecf 	bl	c0de686e <os_global_pin_is_validated>
c0de0ad0:	28aa      	cmp	r0, #170	@ 0xaa
c0de0ad2:	f040 80c8 	bne.w	c0de0c66 <io_event+0x686>
c0de0ad6:	eb09 0104 	add.w	r1, r9, r4
c0de0ada:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0ade:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0ae2:	4288      	cmp	r0, r1
c0de0ae4:	f080 80ba 	bcs.w	c0de0c5c <io_event+0x67c>
c0de0ae8:	b281      	uxth	r1, r0
c0de0aea:	eb09 0004 	add.w	r0, r9, r4
c0de0aee:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0af2:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0af6:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0afa:	b13b      	cbz	r3, c0de0b0c <io_event+0x52c>
c0de0afc:	4798      	blx	r3
c0de0afe:	b158      	cbz	r0, c0de0b18 <io_event+0x538>
c0de0b00:	eb09 0104 	add.w	r1, r9, r4
c0de0b04:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0b08:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de0b0c:	2801      	cmp	r0, #1
c0de0b0e:	bf08      	it	eq
c0de0b10:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0b14:	f003 fbc3 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de0b18:	eb09 0204 	add.w	r2, r9, r4
c0de0b1c:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de0b20:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de0b24:	3001      	adds	r0, #1
c0de0b26:	b283      	uxth	r3, r0
c0de0b28:	428b      	cmp	r3, r1
c0de0b2a:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de0b2e:	d3db      	bcc.n	c0de0ae8 <io_event+0x508>
c0de0b30:	e094      	b.n	c0de0c5c <io_event+0x67c>
c0de0b32:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de0b36:	f2c0 0400 	movt	r4, #0
c0de0b3a:	eb09 0004 	add.w	r0, r9, r4
c0de0b3e:	f8d0 00dc 	ldr.w	r0, [r0, #220]	@ 0xdc
c0de0b42:	b128      	cbz	r0, c0de0b50 <io_event+0x570>
c0de0b44:	eb09 0105 	add.w	r1, r9, r5
c0de0b48:	78c9      	ldrb	r1, [r1, #3]
c0de0b4a:	0849      	lsrs	r1, r1, #1
c0de0b4c:	f003 fbe5 	bl	c0de431a <io_seproxyhal_button_push>
c0de0b50:	eb09 0004 	add.w	r0, r9, r4
c0de0b54:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de0b58:	2800      	cmp	r0, #0
c0de0b5a:	f000 8084 	beq.w	c0de0c66 <io_event+0x686>
c0de0b5e:	eb09 0004 	add.w	r0, r9, r4
c0de0b62:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0b66:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0b6a:	4281      	cmp	r1, r0
c0de0b6c:	d27b      	bcs.n	c0de0c66 <io_event+0x686>
c0de0b6e:	f005 fe48 	bl	c0de6802 <os_perso_isonboarded>
c0de0b72:	28aa      	cmp	r0, #170	@ 0xaa
c0de0b74:	d103      	bne.n	c0de0b7e <io_event+0x59e>
c0de0b76:	f005 fe7a 	bl	c0de686e <os_global_pin_is_validated>
c0de0b7a:	28aa      	cmp	r0, #170	@ 0xaa
c0de0b7c:	d173      	bne.n	c0de0c66 <io_event+0x686>
c0de0b7e:	eb09 0104 	add.w	r1, r9, r4
c0de0b82:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0b86:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0b8a:	4288      	cmp	r0, r1
c0de0b8c:	d266      	bcs.n	c0de0c5c <io_event+0x67c>
c0de0b8e:	b281      	uxth	r1, r0
c0de0b90:	eb09 0004 	add.w	r0, r9, r4
c0de0b94:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0b98:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0b9c:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0ba0:	b13b      	cbz	r3, c0de0bb2 <io_event+0x5d2>
c0de0ba2:	4798      	blx	r3
c0de0ba4:	b158      	cbz	r0, c0de0bbe <io_event+0x5de>
c0de0ba6:	eb09 0104 	add.w	r1, r9, r4
c0de0baa:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0bae:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de0bb2:	2801      	cmp	r0, #1
c0de0bb4:	bf08      	it	eq
c0de0bb6:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0bba:	f003 fb70 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de0bbe:	eb09 0204 	add.w	r2, r9, r4
c0de0bc2:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de0bc6:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de0bca:	3001      	adds	r0, #1
c0de0bcc:	b283      	uxth	r3, r0
c0de0bce:	428b      	cmp	r3, r1
c0de0bd0:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de0bd4:	d3db      	bcc.n	c0de0b8e <io_event+0x5ae>
c0de0bd6:	e041      	b.n	c0de0c5c <io_event+0x67c>
c0de0bd8:	eb09 0005 	add.w	r0, r9, r5
c0de0bdc:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de0be0:	2800      	cmp	r0, #0
c0de0be2:	d040      	beq.n	c0de0c66 <io_event+0x686>
c0de0be4:	eb09 0005 	add.w	r0, r9, r5
c0de0be8:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0bec:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0bf0:	4281      	cmp	r1, r0
c0de0bf2:	d238      	bcs.n	c0de0c66 <io_event+0x686>
c0de0bf4:	f005 fe05 	bl	c0de6802 <os_perso_isonboarded>
c0de0bf8:	28aa      	cmp	r0, #170	@ 0xaa
c0de0bfa:	d103      	bne.n	c0de0c04 <io_event+0x624>
c0de0bfc:	f005 fe37 	bl	c0de686e <os_global_pin_is_validated>
c0de0c00:	28aa      	cmp	r0, #170	@ 0xaa
c0de0c02:	d130      	bne.n	c0de0c66 <io_event+0x686>
c0de0c04:	eb09 0105 	add.w	r1, r9, r5
c0de0c08:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0c0c:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0c10:	4288      	cmp	r0, r1
c0de0c12:	d223      	bcs.n	c0de0c5c <io_event+0x67c>
c0de0c14:	b281      	uxth	r1, r0
c0de0c16:	eb09 0005 	add.w	r0, r9, r5
c0de0c1a:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0c1e:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0c22:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0c26:	b13b      	cbz	r3, c0de0c38 <io_event+0x658>
c0de0c28:	4798      	blx	r3
c0de0c2a:	b158      	cbz	r0, c0de0c44 <io_event+0x664>
c0de0c2c:	eb09 0105 	add.w	r1, r9, r5
c0de0c30:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0c34:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de0c38:	2801      	cmp	r0, #1
c0de0c3a:	bf08      	it	eq
c0de0c3c:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0c40:	f003 fb2d 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de0c44:	eb09 0205 	add.w	r2, r9, r5
c0de0c48:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de0c4c:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de0c50:	3001      	adds	r0, #1
c0de0c52:	b283      	uxth	r3, r0
c0de0c54:	428b      	cmp	r3, r1
c0de0c56:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de0c5a:	d3db      	bcc.n	c0de0c14 <io_event+0x634>
c0de0c5c:	b280      	uxth	r0, r0
c0de0c5e:	4288      	cmp	r0, r1
c0de0c60:	bf08      	it	eq
c0de0c62:	f005 fe92 	bleq	c0de698a <screen_update>
c0de0c66:	f003 fb96 	bl	c0de4396 <io_seph_is_status_sent>
c0de0c6a:	b908      	cbnz	r0, c0de0c70 <io_event+0x690>
c0de0c6c:	f003 fb8f 	bl	c0de438e <io_seproxyhal_general_status>
c0de0c70:	2001      	movs	r0, #1
c0de0c72:	b001      	add	sp, #4
c0de0c74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0c76:	2c00      	cmp	r4, #0
c0de0c78:	d0f5      	beq.n	c0de0c66 <io_event+0x686>
c0de0c7a:	2c97      	cmp	r4, #151	@ 0x97
c0de0c7c:	d0f3      	beq.n	c0de0c66 <io_event+0x686>
c0de0c7e:	f003 fafa 	bl	c0de4276 <io_seph_ux_init_button>
c0de0c82:	eb09 0705 	add.w	r7, r9, r5
c0de0c86:	2000      	movs	r0, #0
c0de0c88:	f8a7 00ca 	strh.w	r0, [r7, #202]	@ 0xca
c0de0c8c:	2004      	movs	r0, #4
c0de0c8e:	f005 fe6e 	bl	c0de696e <os_sched_last_status>
c0de0c92:	f8d7 10cc 	ldr.w	r1, [r7, #204]	@ 0xcc
c0de0c96:	eb09 0206 	add.w	r2, r9, r6
c0de0c9a:	2900      	cmp	r1, #0
c0de0c9c:	6050      	str	r0, [r2, #4]
c0de0c9e:	f43f aeb0 	beq.w	c0de0a02 <io_event+0x422>
c0de0ca2:	2800      	cmp	r0, #0
c0de0ca4:	f43f aead 	beq.w	c0de0a02 <io_event+0x422>
c0de0ca8:	2897      	cmp	r0, #151	@ 0x97
c0de0caa:	f43f aeaa 	beq.w	c0de0a02 <io_event+0x422>
c0de0cae:	eb09 0005 	add.w	r0, r9, r5
c0de0cb2:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0cb6:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0cba:	4281      	cmp	r1, r0
c0de0cbc:	f4bf aea1 	bcs.w	c0de0a02 <io_event+0x422>
c0de0cc0:	f005 fd9f 	bl	c0de6802 <os_perso_isonboarded>
c0de0cc4:	28aa      	cmp	r0, #170	@ 0xaa
c0de0cc6:	d104      	bne.n	c0de0cd2 <io_event+0x6f2>
c0de0cc8:	f005 fdd1 	bl	c0de686e <os_global_pin_is_validated>
c0de0ccc:	28aa      	cmp	r0, #170	@ 0xaa
c0de0cce:	f47f ae98 	bne.w	c0de0a02 <io_event+0x422>
c0de0cd2:	eb09 0105 	add.w	r1, r9, r5
c0de0cd6:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de0cda:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de0cde:	4288      	cmp	r0, r1
c0de0ce0:	d223      	bcs.n	c0de0d2a <io_event+0x74a>
c0de0ce2:	b281      	uxth	r1, r0
c0de0ce4:	eb09 0005 	add.w	r0, r9, r5
c0de0ce8:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de0cec:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de0cf0:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de0cf4:	b13b      	cbz	r3, c0de0d06 <io_event+0x726>
c0de0cf6:	4798      	blx	r3
c0de0cf8:	b158      	cbz	r0, c0de0d12 <io_event+0x732>
c0de0cfa:	eb09 0105 	add.w	r1, r9, r5
c0de0cfe:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de0d02:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de0d06:	2801      	cmp	r0, #1
c0de0d08:	bf08      	it	eq
c0de0d0a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0d0e:	f003 fac6 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de0d12:	eb09 0205 	add.w	r2, r9, r5
c0de0d16:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de0d1a:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de0d1e:	3001      	adds	r0, #1
c0de0d20:	b283      	uxth	r3, r0
c0de0d22:	428b      	cmp	r3, r1
c0de0d24:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de0d28:	d3db      	bcc.n	c0de0ce2 <io_event+0x702>
c0de0d2a:	b280      	uxth	r0, r0
c0de0d2c:	4288      	cmp	r0, r1
c0de0d2e:	f47f ae68 	bne.w	c0de0a02 <io_event+0x422>
c0de0d32:	f005 fe2a 	bl	c0de698a <screen_update>
c0de0d36:	e664      	b.n	c0de0a02 <io_event+0x422>

c0de0d38 <extractHDPath>:
c0de0d38:	b5b0      	push	{r4, r5, r7, lr}
c0de0d3a:	1a40      	subs	r0, r0, r1
c0de0d3c:	2813      	cmp	r0, #19
c0de0d3e:	d930      	bls.n	c0de0da2 <extractHDPath+0x6a>
c0de0d40:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de0d44:	f643 155c 	movw	r5, #14684	@ 0x395c
c0de0d48:	f2c0 0000 	movt	r0, #0
c0de0d4c:	f2c0 0500 	movt	r5, #0
c0de0d50:	4448      	add	r0, r9
c0de0d52:	eb09 0405 	add.w	r4, r9, r5
c0de0d56:	4401      	add	r1, r0
c0de0d58:	4620      	mov	r0, r4
c0de0d5a:	2214      	movs	r2, #20
c0de0d5c:	f005 fe4b 	bl	c0de69f6 <__aeabi_memcpy>
c0de0d60:	f859 1005 	ldr.w	r1, [r9, r5]
c0de0d64:	202c      	movs	r0, #44	@ 0x2c
c0de0d66:	f2c8 0000 	movt	r0, #32768	@ 0x8000
c0de0d6a:	4281      	cmp	r1, r0
c0de0d6c:	d11d      	bne.n	c0de0daa <extractHDPath+0x72>
c0de0d6e:	6861      	ldr	r1, [r4, #4]
c0de0d70:	3010      	adds	r0, #16
c0de0d72:	4281      	cmp	r1, r0
c0de0d74:	d119      	bne.n	c0de0daa <extractHDPath+0x72>
c0de0d76:	f002 ff93 	bl	c0de3ca0 <app_mode_expert>
c0de0d7a:	b968      	cbnz	r0, c0de0d98 <extractHDPath+0x60>
c0de0d7c:	2000      	movs	r0, #0
c0de0d7e:	bf00      	nop
c0de0d80:	eb09 0105 	add.w	r1, r9, r5
c0de0d84:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de0d88:	6889      	ldr	r1, [r1, #8]
c0de0d8a:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
c0de0d8e:	2965      	cmp	r1, #101	@ 0x65
c0de0d90:	d203      	bcs.n	c0de0d9a <extractHDPath+0x62>
c0de0d92:	3001      	adds	r0, #1
c0de0d94:	2803      	cmp	r0, #3
c0de0d96:	d1f3      	bne.n	c0de0d80 <extractHDPath+0x48>
c0de0d98:	bdb0      	pop	{r4, r5, r7, pc}
c0de0d9a:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0d9e:	f005 fa3a 	bl	c0de6216 <os_longjmp>
c0de0da2:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de0da6:	f005 fa36 	bl	c0de6216 <os_longjmp>
c0de0daa:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de0dae:	f005 fa32 	bl	c0de6216 <os_longjmp>

c0de0db2 <process_chunk>:
c0de0db2:	b510      	push	{r4, lr}
c0de0db4:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de0db8:	f2c0 0000 	movt	r0, #0
c0de0dbc:	eb09 0200 	add.w	r2, r9, r0
c0de0dc0:	78d3      	ldrb	r3, [r2, #3]
c0de0dc2:	bb4b      	cbnz	r3, c0de0e18 <process_chunk+0x66>
c0de0dc4:	460c      	mov	r4, r1
c0de0dc6:	2904      	cmp	r1, #4
c0de0dc8:	d92a      	bls.n	c0de0e20 <process_chunk+0x6e>
c0de0dca:	7891      	ldrb	r1, [r2, #2]
c0de0dcc:	2902      	cmp	r1, #2
c0de0dce:	d015      	beq.n	c0de0dfc <process_chunk+0x4a>
c0de0dd0:	2901      	cmp	r1, #1
c0de0dd2:	d009      	beq.n	c0de0de8 <process_chunk+0x36>
c0de0dd4:	bb01      	cbnz	r1, c0de0e18 <process_chunk+0x66>
c0de0dd6:	f000 f8ad 	bl	c0de0f34 <tx_initialize>
c0de0dda:	f000 f8c1 	bl	c0de0f60 <tx_reset>
c0de0dde:	4620      	mov	r0, r4
c0de0de0:	2105      	movs	r1, #5
c0de0de2:	f7ff ffa9 	bl	c0de0d38 <extractHDPath>
c0de0de6:	e007      	b.n	c0de0df8 <process_chunk+0x46>
c0de0de8:	3c05      	subs	r4, #5
c0de0dea:	4448      	add	r0, r9
c0de0dec:	3005      	adds	r0, #5
c0de0dee:	4621      	mov	r1, r4
c0de0df0:	f000 f8b8 	bl	c0de0f64 <tx_append>
c0de0df4:	42a0      	cmp	r0, r4
c0de0df6:	d10b      	bne.n	c0de0e10 <process_chunk+0x5e>
c0de0df8:	2000      	movs	r0, #0
c0de0dfa:	bd10      	pop	{r4, pc}
c0de0dfc:	3c05      	subs	r4, #5
c0de0dfe:	4448      	add	r0, r9
c0de0e00:	3005      	adds	r0, #5
c0de0e02:	4621      	mov	r1, r4
c0de0e04:	f000 f8ae 	bl	c0de0f64 <tx_append>
c0de0e08:	42a0      	cmp	r0, r4
c0de0e0a:	bf04      	itt	eq
c0de0e0c:	2001      	moveq	r0, #1
c0de0e0e:	bd10      	popeq	{r4, pc}
c0de0e10:	f646 1083 	movw	r0, #27011	@ 0x6983
c0de0e14:	f005 f9ff 	bl	c0de6216 <os_longjmp>
c0de0e18:	f44f 40d6 	mov.w	r0, #27392	@ 0x6b00
c0de0e1c:	f005 f9fb 	bl	c0de6216 <os_longjmp>
c0de0e20:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de0e24:	f005 f9f7 	bl	c0de6216 <os_longjmp>

c0de0e28 <app_init>:
c0de0e28:	b580      	push	{r7, lr}
c0de0e2a:	f003 fc23 	bl	c0de4674 <io_seproxyhal_init>
c0de0e2e:	2000      	movs	r0, #0
c0de0e30:	f003 fc48 	bl	c0de46c4 <USB_power>
c0de0e34:	2001      	movs	r0, #1
c0de0e36:	f003 fc45 	bl	c0de46c4 <USB_power>
c0de0e3a:	f002 ff29 	bl	c0de3c90 <app_mode_reset>
c0de0e3e:	2000      	movs	r0, #0
c0de0e40:	2100      	movs	r1, #0
c0de0e42:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de0e46:	f002 bb11 	b.w	c0de346c <view_idle_show>
	...

c0de0e4c <app_main>:
c0de0e4c:	b090      	sub	sp, #64	@ 0x40
c0de0e4e:	2500      	movs	r5, #0
c0de0e50:	950f      	str	r5, [sp, #60]	@ 0x3c
c0de0e52:	950e      	str	r5, [sp, #56]	@ 0x38
c0de0e54:	950d      	str	r5, [sp, #52]	@ 0x34
c0de0e56:	f000 f86d 	bl	c0de0f34 <tx_initialize>
c0de0e5a:	f246 3ab8 	movw	sl, #25528	@ 0x63b8
c0de0e5e:	466c      	mov	r4, sp
c0de0e60:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
c0de0e64:	ae0e      	add	r6, sp, #56	@ 0x38
c0de0e66:	f2c0 0a00 	movt	sl, #0
c0de0e6a:	f04f 0b0d 	mov.w	fp, #13
c0de0e6e:	bf00      	nop
c0de0e70:	4620      	mov	r0, r4
c0de0e72:	f8ad 5032 	strh.w	r5, [sp, #50]	@ 0x32
c0de0e76:	f005 fe0d 	bl	c0de6a94 <setjmp>
c0de0e7a:	4607      	mov	r7, r0
c0de0e7c:	b280      	uxth	r0, r0
c0de0e7e:	2805      	cmp	r0, #5
c0de0e80:	f8ad 702c 	strh.w	r7, [sp, #44]	@ 0x2c
c0de0e84:	d01c      	beq.n	c0de0ec0 <app_main+0x74>
c0de0e86:	bb18      	cbnz	r0, c0de0ed0 <app_main+0x84>
c0de0e88:	4620      	mov	r0, r4
c0de0e8a:	f005 fd62 	bl	c0de6952 <try_context_set>
c0de0e8e:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0e90:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de0e92:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de0e94:	950e      	str	r5, [sp, #56]	@ 0x38
c0de0e96:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0e98:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de0e9a:	b2c0      	uxtb	r0, r0
c0de0e9c:	b289      	uxth	r1, r1
c0de0e9e:	f003 faa9 	bl	c0de43f4 <io_exchange>
c0de0ea2:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de0ea4:	950d      	str	r5, [sp, #52]	@ 0x34
c0de0ea6:	f003 f940 	bl	c0de412a <check_app_canary>
c0de0eaa:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de0eac:	2800      	cmp	r0, #0
c0de0eae:	d03d      	beq.n	c0de0f2c <app_main+0xe0>
c0de0eb0:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
c0de0eb2:	4640      	mov	r0, r8
c0de0eb4:	4631      	mov	r1, r6
c0de0eb6:	f7ff fa08 	bl	c0de02ca <handleApdu>
c0de0eba:	f003 f936 	bl	c0de412a <check_app_canary>
c0de0ebe:	e028      	b.n	c0de0f12 <app_main+0xc6>
c0de0ec0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ec2:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de0ec6:	f005 fd44 	bl	c0de6952 <try_context_set>
c0de0eca:	f7ff ffad 	bl	c0de0e28 <app_init>
c0de0ece:	e7cf      	b.n	c0de0e70 <app_main+0x24>
c0de0ed0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ed2:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de0ed6:	f005 fd3c 	bl	c0de6952 <try_context_set>
c0de0eda:	f407 4070 	and.w	r0, r7, #61440	@ 0xf000
c0de0ede:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de0ee2:	d004      	beq.n	c0de0eee <app_main+0xa2>
c0de0ee4:	f5b0 4fc0 	cmp.w	r0, #24576	@ 0x6000
c0de0ee8:	bf18      	it	ne
c0de0eea:	f36b 27df 	bfine	r7, fp, #11, #21
c0de0eee:	f8ad 7032 	strh.w	r7, [sp, #50]	@ 0x32
c0de0ef2:	f8bd 0032 	ldrh.w	r0, [sp, #50]	@ 0x32
c0de0ef6:	4649      	mov	r1, r9
c0de0ef8:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
c0de0efa:	0a00      	lsrs	r0, r0, #8
c0de0efc:	eb09 010a 	add.w	r1, r9, sl
c0de0f00:	5488      	strb	r0, [r1, r2]
c0de0f02:	f8bd 0032 	ldrh.w	r0, [sp, #50]	@ 0x32
c0de0f06:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
c0de0f08:	4411      	add	r1, r2
c0de0f0a:	7048      	strb	r0, [r1, #1]
c0de0f0c:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de0f0e:	3002      	adds	r0, #2
c0de0f10:	900e      	str	r0, [sp, #56]	@ 0x38
c0de0f12:	f005 fd14 	bl	c0de693e <try_context_get>
c0de0f16:	42a0      	cmp	r0, r4
c0de0f18:	d102      	bne.n	c0de0f20 <app_main+0xd4>
c0de0f1a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f1c:	f005 fd19 	bl	c0de6952 <try_context_set>
c0de0f20:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de0f24:	2800      	cmp	r0, #0
c0de0f26:	d0a3      	beq.n	c0de0e70 <app_main+0x24>
c0de0f28:	f005 f975 	bl	c0de6216 <os_longjmp>
c0de0f2c:	f646 1082 	movw	r0, #27010	@ 0x6982
c0de0f30:	f005 f971 	bl	c0de6216 <os_longjmp>

c0de0f34 <tx_initialize>:
c0de0f34:	b580      	push	{r7, lr}
c0de0f36:	f248 20be 	movw	r0, #33470	@ 0x82be
c0de0f3a:	f2c0 0000 	movt	r0, #0
c0de0f3e:	4478      	add	r0, pc
c0de0f40:	f005 fc26 	bl	c0de6790 <pic>
c0de0f44:	4602      	mov	r2, r0
c0de0f46:	f240 1012 	movw	r0, #274	@ 0x112
c0de0f4a:	f2c0 0000 	movt	r0, #0
c0de0f4e:	4448      	add	r0, r9
c0de0f50:	f44f 5100 	mov.w	r1, #8192	@ 0x2000
c0de0f54:	f44f 4380 	mov.w	r3, #16384	@ 0x4000
c0de0f58:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de0f5c:	f002 bef4 	b.w	c0de3d48 <buffering_init>

c0de0f60 <tx_reset>:
c0de0f60:	f002 bf12 	b.w	c0de3d88 <buffering_reset>

c0de0f64 <tx_append>:
c0de0f64:	f002 bf26 	b.w	c0de3db4 <buffering_append>

c0de0f68 <tx_get_buffer_length>:
c0de0f68:	b580      	push	{r7, lr}
c0de0f6a:	f002 ff77 	bl	c0de3e5c <buffering_get_buffer>
c0de0f6e:	88c0      	ldrh	r0, [r0, #6]
c0de0f70:	bd80      	pop	{r7, pc}

c0de0f72 <tx_get_buffer>:
c0de0f72:	b580      	push	{r7, lr}
c0de0f74:	f002 ff72 	bl	c0de3e5c <buffering_get_buffer>
c0de0f78:	6800      	ldr	r0, [r0, #0]
c0de0f7a:	bd80      	pop	{r7, pc}

c0de0f7c <tx_parse>:
c0de0f7c:	b5b0      	push	{r4, r5, r7, lr}
c0de0f7e:	f242 1014 	movw	r0, #8468	@ 0x2114
c0de0f82:	f2c0 0000 	movt	r0, #0
c0de0f86:	4448      	add	r0, r9
c0de0f88:	f44f 51c2 	mov.w	r1, #6208	@ 0x1840
c0de0f8c:	f005 fd3c 	bl	c0de6a08 <explicit_bzero>
c0de0f90:	f002 ff64 	bl	c0de3e5c <buffering_get_buffer>
c0de0f94:	6804      	ldr	r4, [r0, #0]
c0de0f96:	f002 ff61 	bl	c0de3e5c <buffering_get_buffer>
c0de0f9a:	f643 1554 	movw	r5, #14676	@ 0x3954
c0de0f9e:	88c2      	ldrh	r2, [r0, #6]
c0de0fa0:	f2c0 0500 	movt	r5, #0
c0de0fa4:	eb09 0005 	add.w	r0, r9, r5
c0de0fa8:	4621      	mov	r1, r4
c0de0faa:	f000 fb1d 	bl	c0de15e8 <parser_parse>
c0de0fae:	4604      	mov	r4, r0
c0de0fb0:	f246 0063 	movw	r0, #24675	@ 0x6063
c0de0fb4:	f2c0 0000 	movt	r0, #0
c0de0fb8:	4478      	add	r0, pc
c0de0fba:	f003 f8c4 	bl	c0de4146 <zemu_log_stack>
c0de0fbe:	b93c      	cbnz	r4, c0de0fd0 <tx_parse+0x54>
c0de0fc0:	eb09 0005 	add.w	r0, r9, r5
c0de0fc4:	f000 fb18 	bl	c0de15f8 <parser_validate>
c0de0fc8:	4604      	mov	r4, r0
c0de0fca:	f003 f8ae 	bl	c0de412a <check_app_canary>
c0de0fce:	b124      	cbz	r4, c0de0fda <tx_parse+0x5e>
c0de0fd0:	4620      	mov	r0, r4
c0de0fd2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de0fd6:	f000 bdca 	b.w	c0de1b6e <parser_getErrorDescription>
c0de0fda:	2000      	movs	r0, #0
c0de0fdc:	bdb0      	pop	{r4, r5, r7, pc}

c0de0fde <tx_getNumItems>:
c0de0fde:	b580      	push	{r7, lr}
c0de0fe0:	4601      	mov	r1, r0
c0de0fe2:	f643 1054 	movw	r0, #14676	@ 0x3954
c0de0fe6:	f2c0 0000 	movt	r0, #0
c0de0fea:	4448      	add	r0, r9
c0de0fec:	f000 fb49 	bl	c0de1682 <parser_getNumItems>
c0de0ff0:	2105      	movs	r1, #5
c0de0ff2:	2800      	cmp	r0, #0
c0de0ff4:	bf08      	it	eq
c0de0ff6:	2103      	moveq	r1, #3
c0de0ff8:	4608      	mov	r0, r1
c0de0ffa:	bd80      	pop	{r7, pc}

c0de0ffc <tx_getItem>:
c0de0ffc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1000:	b086      	sub	sp, #24
c0de1002:	f643 1854 	movw	r8, #14676	@ 0x3954
c0de1006:	4607      	mov	r7, r0
c0de1008:	2000      	movs	r0, #0
c0de100a:	f2c0 0800 	movt	r8, #0
c0de100e:	460d      	mov	r5, r1
c0de1010:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1014:	eb09 0008 	add.w	r0, r9, r8
c0de1018:	f10d 0117 	add.w	r1, sp, #23
c0de101c:	461e      	mov	r6, r3
c0de101e:	4614      	mov	r4, r2
c0de1020:	f000 fb2f 	bl	c0de1682 <parser_getNumItems>
c0de1024:	4601      	mov	r1, r0
c0de1026:	2f00      	cmp	r7, #0
c0de1028:	f04f 0005 	mov.w	r0, #5
c0de102c:	d41e      	bmi.n	c0de106c <tx_getItem+0x70>
c0de102e:	b9e9      	cbnz	r1, c0de106c <tx_getItem+0x70>
c0de1030:	f89d 2017 	ldrb.w	r2, [sp, #23]
c0de1034:	b2f9      	uxtb	r1, r7
c0de1036:	428a      	cmp	r2, r1
c0de1038:	d318      	bcc.n	c0de106c <tx_getItem+0x70>
c0de103a:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	@ 0x30
c0de103e:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de1040:	e9cd 6200 	strd	r6, r2, [sp]
c0de1044:	9002      	str	r0, [sp, #8]
c0de1046:	eb09 0008 	add.w	r0, r9, r8
c0de104a:	462a      	mov	r2, r5
c0de104c:	4623      	mov	r3, r4
c0de104e:	9703      	str	r7, [sp, #12]
c0de1050:	f000 fb1c 	bl	c0de168c <parser_getItem>
c0de1054:	4601      	mov	r1, r0
c0de1056:	3803      	subs	r0, #3
c0de1058:	2802      	cmp	r0, #2
c0de105a:	f04f 0005 	mov.w	r0, #5
c0de105e:	d305      	bcc.n	c0de106c <tx_getItem+0x70>
c0de1060:	b119      	cbz	r1, c0de106a <tx_getItem+0x6e>
c0de1062:	2901      	cmp	r1, #1
c0de1064:	bf18      	it	ne
c0de1066:	2000      	movne	r0, #0
c0de1068:	e000      	b.n	c0de106c <tx_getItem+0x70>
c0de106a:	2003      	movs	r0, #3
c0de106c:	b006      	add	sp, #24
c0de106e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1074 <crypto_extractPublicKey>:
c0de1074:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1078:	b0b3      	sub	sp, #204	@ 0xcc
c0de107a:	2a21      	cmp	r2, #33	@ 0x21
c0de107c:	d201      	bcs.n	c0de1082 <crypto_extractPublicKey+0xe>
c0de107e:	200c      	movs	r0, #12
c0de1080:	e068      	b.n	c0de1154 <crypto_extractPublicKey+0xe0>
c0de1082:	4606      	mov	r6, r0
c0de1084:	a802      	add	r0, sp, #8
c0de1086:	460c      	mov	r4, r1
c0de1088:	f005 fd04 	bl	c0de6a94 <setjmp>
c0de108c:	0401      	lsls	r1, r0, #16
c0de108e:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de1092:	d00a      	beq.n	c0de10aa <crypto_extractPublicKey+0x36>
c0de1094:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de1096:	2100      	movs	r1, #0
c0de1098:	f8ad 1034 	strh.w	r1, [sp, #52]	@ 0x34
c0de109c:	f005 fc59 	bl	c0de6952 <try_context_set>
c0de10a0:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de10a2:	f005 fc56 	bl	c0de6952 <try_context_set>
c0de10a6:	200f      	movs	r0, #15
c0de10a8:	e054      	b.n	c0de1154 <crypto_extractPublicKey+0xe0>
c0de10aa:	f10d 0808 	add.w	r8, sp, #8
c0de10ae:	4640      	mov	r0, r8
c0de10b0:	f005 fc4f 	bl	c0de6952 <try_context_set>
c0de10b4:	f04f 0a21 	mov.w	sl, #33	@ 0x21
c0de10b8:	ad0e      	add	r5, sp, #56	@ 0x38
c0de10ba:	900c      	str	r0, [sp, #48]	@ 0x30
c0de10bc:	466f      	mov	r7, sp
c0de10be:	f04f 0c00 	mov.w	ip, #0
c0de10c2:	2205      	movs	r2, #5
c0de10c4:	4650      	mov	r0, sl
c0de10c6:	4631      	mov	r1, r6
c0de10c8:	462b      	mov	r3, r5
c0de10ca:	f8c7 c000 	str.w	ip, [r7]
c0de10ce:	f005 fba3 	bl	c0de6818 <os_perso_derive_node_bip32>
c0de10d2:	2220      	movs	r2, #32
c0de10d4:	ab16      	add	r3, sp, #88	@ 0x58
c0de10d6:	4650      	mov	r0, sl
c0de10d8:	4629      	mov	r1, r5
c0de10da:	f005 f87c 	bl	c0de61d6 <cx_ecfp_init_private_key_no_throw>
c0de10de:	bbe0      	cbnz	r0, c0de115a <crypto_extractPublicKey+0xe6>
c0de10e0:	2100      	movs	r1, #0
c0de10e2:	2021      	movs	r0, #33	@ 0x21
c0de10e4:	ab20      	add	r3, sp, #128	@ 0x80
c0de10e6:	460a      	mov	r2, r1
c0de10e8:	f005 f879 	bl	c0de61de <cx_ecfp_init_public_key_no_throw>
c0de10ec:	bba8      	cbnz	r0, c0de115a <crypto_extractPublicKey+0xe6>
c0de10ee:	ae20      	add	r6, sp, #128	@ 0x80
c0de10f0:	2021      	movs	r0, #33	@ 0x21
c0de10f2:	aa16      	add	r2, sp, #88	@ 0x58
c0de10f4:	2301      	movs	r3, #1
c0de10f6:	4631      	mov	r1, r6
c0de10f8:	f005 f869 	bl	c0de61ce <cx_ecfp_generate_pair_no_throw>
c0de10fc:	bb68      	cbnz	r0, c0de115a <crypto_extractPublicKey+0xe6>
c0de10fe:	f005 fc1e 	bl	c0de693e <try_context_get>
c0de1102:	4540      	cmp	r0, r8
c0de1104:	d102      	bne.n	c0de110c <crypto_extractPublicKey+0x98>
c0de1106:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de1108:	f005 fc23 	bl	c0de6952 <try_context_set>
c0de110c:	a816      	add	r0, sp, #88	@ 0x58
c0de110e:	2128      	movs	r1, #40	@ 0x28
c0de1110:	f005 fc7a 	bl	c0de6a08 <explicit_bzero>
c0de1114:	a80e      	add	r0, sp, #56	@ 0x38
c0de1116:	2120      	movs	r1, #32
c0de1118:	f005 fc76 	bl	c0de6a08 <explicit_bzero>
c0de111c:	f8bd 0034 	ldrh.w	r0, [sp, #52]	@ 0x34
c0de1120:	b9d8      	cbnz	r0, c0de115a <crypto_extractPublicKey+0xe6>
c0de1122:	2200      	movs	r2, #0
c0de1124:	f106 0148 	add.w	r1, r6, #72	@ 0x48
c0de1128:	4610      	mov	r0, r2
c0de112a:	bf00      	nop
c0de112c:	f811 2901 	ldrb.w	r2, [r1], #-1
c0de1130:	5422      	strb	r2, [r4, r0]
c0de1132:	3001      	adds	r0, #1
c0de1134:	2820      	cmp	r0, #32
c0de1136:	d1f9      	bne.n	c0de112c <crypto_extractPublicKey+0xb8>
c0de1138:	f89d 00c8 	ldrb.w	r0, [sp, #200]	@ 0xc8
c0de113c:	2201      	movs	r2, #1
c0de113e:	f362 005f 	bfi	r0, r2, #1, #31
c0de1142:	f106 0108 	add.w	r1, r6, #8
c0de1146:	f88d 0088 	strb.w	r0, [sp, #136]	@ 0x88
c0de114a:	2221      	movs	r2, #33	@ 0x21
c0de114c:	4620      	mov	r0, r4
c0de114e:	f005 fc52 	bl	c0de69f6 <__aeabi_memcpy>
c0de1152:	2003      	movs	r0, #3
c0de1154:	b033      	add	sp, #204	@ 0xcc
c0de1156:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de115a:	f005 f85c 	bl	c0de6216 <os_longjmp>

c0de115e <crypto_sign>:
c0de115e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1162:	b0ae      	sub	sp, #184	@ 0xb8
c0de1164:	ac24      	add	r4, sp, #144	@ 0x90
c0de1166:	2520      	movs	r5, #32
c0de1168:	4688      	mov	r8, r1
c0de116a:	4682      	mov	sl, r0
c0de116c:	4620      	mov	r0, r4
c0de116e:	4629      	mov	r1, r5
c0de1170:	9205      	str	r2, [sp, #20]
c0de1172:	f005 fc49 	bl	c0de6a08 <explicit_bzero>
c0de1176:	f7ff fefc 	bl	c0de0f72 <tx_get_buffer>
c0de117a:	4606      	mov	r6, r0
c0de117c:	f7ff fef4 	bl	c0de0f68 <tx_get_buffer_length>
c0de1180:	b281      	uxth	r1, r0
c0de1182:	4630      	mov	r0, r6
c0de1184:	4622      	mov	r2, r4
c0de1186:	462b      	mov	r3, r5
c0de1188:	f005 f831 	bl	c0de61ee <cx_hash_sha256>
c0de118c:	f10d 0b18 	add.w	fp, sp, #24
c0de1190:	4658      	mov	r0, fp
c0de1192:	f005 fc7f 	bl	c0de6a94 <setjmp>
c0de1196:	2700      	movs	r7, #0
c0de1198:	f8ad 0044 	strh.w	r0, [sp, #68]	@ 0x44
c0de119c:	463c      	mov	r4, r7
c0de119e:	0400      	lsls	r0, r0, #16
c0de11a0:	d12b      	bne.n	c0de11fa <crypto_sign+0x9c>
c0de11a2:	a806      	add	r0, sp, #24
c0de11a4:	f005 fbd5 	bl	c0de6952 <try_context_set>
c0de11a8:	f643 115c 	movw	r1, #14684	@ 0x395c
c0de11ac:	f2c0 0100 	movt	r1, #0
c0de11b0:	2621      	movs	r6, #33	@ 0x21
c0de11b2:	ac12      	add	r4, sp, #72	@ 0x48
c0de11b4:	9010      	str	r0, [sp, #64]	@ 0x40
c0de11b6:	466d      	mov	r5, sp
c0de11b8:	4449      	add	r1, r9
c0de11ba:	2205      	movs	r2, #5
c0de11bc:	4630      	mov	r0, r6
c0de11be:	4623      	mov	r3, r4
c0de11c0:	602f      	str	r7, [r5, #0]
c0de11c2:	f005 fb29 	bl	c0de6818 <os_perso_derive_node_bip32>
c0de11c6:	2520      	movs	r5, #32
c0de11c8:	ab1a      	add	r3, sp, #104	@ 0x68
c0de11ca:	4630      	mov	r0, r6
c0de11cc:	4621      	mov	r1, r4
c0de11ce:	462a      	mov	r2, r5
c0de11d0:	f005 f801 	bl	c0de61d6 <cx_ecfp_init_private_key_no_throw>
c0de11d4:	bb48      	cbnz	r0, c0de122a <crypto_sign+0xcc>
c0de11d6:	466f      	mov	r7, sp
c0de11d8:	a82d      	add	r0, sp, #180	@ 0xb4
c0de11da:	ae2c      	add	r6, sp, #176	@ 0xb0
c0de11dc:	60b8      	str	r0, [r7, #8]
c0de11de:	a81a      	add	r0, sp, #104	@ 0x68
c0de11e0:	f240 6101 	movw	r1, #1537	@ 0x601
c0de11e4:	2203      	movs	r2, #3
c0de11e6:	ab24      	add	r3, sp, #144	@ 0x90
c0de11e8:	f8cd 80b4 	str.w	r8, [sp, #180]	@ 0xb4
c0de11ec:	e9c7 5a00 	strd	r5, sl, [r7]
c0de11f0:	60fe      	str	r6, [r7, #12]
c0de11f2:	f004 ffe8 	bl	c0de61c6 <cx_ecdsa_sign_no_throw>
c0de11f6:	b9c0      	cbnz	r0, c0de122a <crypto_sign+0xcc>
c0de11f8:	9c2d      	ldr	r4, [sp, #180]	@ 0xb4
c0de11fa:	f005 fba0 	bl	c0de693e <try_context_get>
c0de11fe:	4558      	cmp	r0, fp
c0de1200:	d102      	bne.n	c0de1208 <crypto_sign+0xaa>
c0de1202:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de1204:	f005 fba5 	bl	c0de6952 <try_context_set>
c0de1208:	a81a      	add	r0, sp, #104	@ 0x68
c0de120a:	2128      	movs	r1, #40	@ 0x28
c0de120c:	f005 fbfc 	bl	c0de6a08 <explicit_bzero>
c0de1210:	a812      	add	r0, sp, #72	@ 0x48
c0de1212:	2120      	movs	r1, #32
c0de1214:	f005 fbf8 	bl	c0de6a08 <explicit_bzero>
c0de1218:	f8bd 0044 	ldrh.w	r0, [sp, #68]	@ 0x44
c0de121c:	b928      	cbnz	r0, c0de122a <crypto_sign+0xcc>
c0de121e:	9905      	ldr	r1, [sp, #20]
c0de1220:	2003      	movs	r0, #3
c0de1222:	800c      	strh	r4, [r1, #0]
c0de1224:	b02e      	add	sp, #184	@ 0xb8
c0de1226:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de122a:	f004 fff4 	bl	c0de6216 <os_longjmp>

c0de122e <extractHRP>:
c0de122e:	b570      	push	{r4, r5, r6, lr}
c0de1230:	460c      	mov	r4, r1
c0de1232:	3101      	adds	r1, #1
c0de1234:	4281      	cmp	r1, r0
c0de1236:	d825      	bhi.n	c0de1284 <extractHRP+0x56>
c0de1238:	f643 1670 	movw	r6, #14704	@ 0x3970
c0de123c:	f2c0 0600 	movt	r6, #0
c0de1240:	eb09 0006 	add.w	r0, r9, r6
c0de1244:	2153      	movs	r1, #83	@ 0x53
c0de1246:	f005 fbdf 	bl	c0de6a08 <explicit_bzero>
c0de124a:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de124e:	f2c0 0000 	movt	r0, #0
c0de1252:	4448      	add	r0, r9
c0de1254:	5d05      	ldrb	r5, [r0, r4]
c0de1256:	f1a5 0154 	sub.w	r1, r5, #84	@ 0x54
c0de125a:	f111 0f54 	cmn.w	r1, #84	@ 0x54
c0de125e:	f643 11c4 	movw	r1, #14788	@ 0x39c4
c0de1262:	f2c0 0100 	movt	r1, #0
c0de1266:	f809 5001 	strb.w	r5, [r9, r1]
c0de126a:	d90b      	bls.n	c0de1284 <extractHRP+0x56>
c0de126c:	4420      	add	r0, r4
c0de126e:	eb09 0406 	add.w	r4, r9, r6
c0de1272:	1c41      	adds	r1, r0, #1
c0de1274:	4620      	mov	r0, r4
c0de1276:	462a      	mov	r2, r5
c0de1278:	f005 fbbd 	bl	c0de69f6 <__aeabi_memcpy>
c0de127c:	2100      	movs	r1, #0
c0de127e:	4628      	mov	r0, r5
c0de1280:	5561      	strb	r1, [r4, r5]
c0de1282:	bd70      	pop	{r4, r5, r6, pc}
c0de1284:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de1288:	f004 ffc5 	bl	c0de6216 <os_longjmp>

c0de128c <crypto_fillAddress>:
c0de128c:	2953      	cmp	r1, #83	@ 0x53
c0de128e:	bf3c      	itt	cc
c0de1290:	2006      	movcc	r0, #6
c0de1292:	4770      	bxcc	lr
c0de1294:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1298:	b0a8      	sub	sp, #160	@ 0xa0
c0de129a:	4606      	mov	r6, r0
c0de129c:	f643 105c 	movw	r0, #14684	@ 0x395c
c0de12a0:	460d      	mov	r5, r1
c0de12a2:	f2c0 0000 	movt	r0, #0
c0de12a6:	4693      	mov	fp, r2
c0de12a8:	4448      	add	r0, r9
c0de12aa:	4631      	mov	r1, r6
c0de12ac:	462a      	mov	r2, r5
c0de12ae:	f7ff fee1 	bl	c0de1074 <crypto_extractPublicKey>
c0de12b2:	f10d 0820 	add.w	r8, sp, #32
c0de12b6:	4630      	mov	r0, r6
c0de12b8:	2121      	movs	r1, #33	@ 0x21
c0de12ba:	4642      	mov	r2, r8
c0de12bc:	2320      	movs	r3, #32
c0de12be:	f004 ff96 	bl	c0de61ee <cx_hash_sha256>
c0de12c2:	af10      	add	r7, sp, #64	@ 0x40
c0de12c4:	4638      	mov	r0, r7
c0de12c6:	f004 ff96 	bl	c0de61f6 <cx_ripemd160_init_no_throw>
c0de12ca:	2414      	movs	r4, #20
c0de12cc:	f10d 0a0c 	add.w	sl, sp, #12
c0de12d0:	4638      	mov	r0, r7
c0de12d2:	2101      	movs	r1, #1
c0de12d4:	4642      	mov	r2, r8
c0de12d6:	2320      	movs	r3, #32
c0de12d8:	e9cd a400 	strd	sl, r4, [sp]
c0de12dc:	2701      	movs	r7, #1
c0de12de:	f004 ff82 	bl	c0de61e6 <cx_hash_no_throw>
c0de12e2:	f643 1070 	movw	r0, #14704	@ 0x3970
c0de12e6:	3621      	adds	r6, #33	@ 0x21
c0de12e8:	f2c0 0000 	movt	r0, #0
c0de12ec:	f1a5 0121 	sub.w	r1, r5, #33	@ 0x21
c0de12f0:	eb09 0200 	add.w	r2, r9, r0
c0de12f4:	4630      	mov	r0, r6
c0de12f6:	4653      	mov	r3, sl
c0de12f8:	9400      	str	r4, [sp, #0]
c0de12fa:	9701      	str	r7, [sp, #4]
c0de12fc:	f002 fce7 	bl	c0de3cce <bech32EncodeFromBytes>
c0de1300:	4630      	mov	r0, r6
c0de1302:	f005 fbdf 	bl	c0de6ac4 <strlen>
c0de1306:	3021      	adds	r0, #33	@ 0x21
c0de1308:	f8ab 0000 	strh.w	r0, [fp]
c0de130c:	2003      	movs	r0, #3
c0de130e:	b028      	add	sp, #160	@ 0xa0
c0de1310:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1314 <json_parse>:
c0de1314:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1318:	b083      	sub	sp, #12
c0de131a:	f641 0a08 	movw	sl, #6152	@ 0x1808
c0de131e:	f10d 0804 	add.w	r8, sp, #4
c0de1322:	4604      	mov	r4, r0
c0de1324:	eb00 070a 	add.w	r7, r0, sl
c0de1328:	4640      	mov	r0, r8
c0de132a:	4615      	mov	r5, r2
c0de132c:	460e      	mov	r6, r1
c0de132e:	f002 f806 	bl	c0de333e <jsmn_init>
c0de1332:	4620      	mov	r0, r4
c0de1334:	f641 0110 	movw	r1, #6160	@ 0x1810
c0de1338:	f005 fb66 	bl	c0de6a08 <explicit_bzero>
c0de133c:	80bd      	strh	r5, [r7, #4]
c0de133e:	f104 0308 	add.w	r3, r4, #8
c0de1342:	f44f 7740 	mov.w	r7, #768	@ 0x300
c0de1346:	4640      	mov	r0, r8
c0de1348:	4631      	mov	r1, r6
c0de134a:	462a      	mov	r2, r5
c0de134c:	f844 600a 	str.w	r6, [r4, sl]
c0de1350:	9700      	str	r7, [sp, #0]
c0de1352:	f001 fde5 	bl	c0de2f20 <jsmn_parse>
c0de1356:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de135a:	dd0b      	ble.n	c0de1374 <json_parse+0x60>
c0de135c:	2100      	movs	r1, #0
c0de135e:	6061      	str	r1, [r4, #4]
c0de1360:	7021      	strb	r1, [r4, #0]
c0de1362:	b190      	cbz	r0, c0de138a <json_parse+0x76>
c0de1364:	f5b0 7f40 	cmp.w	r0, #768	@ 0x300
c0de1368:	d80d      	bhi.n	c0de1386 <json_parse+0x72>
c0de136a:	6060      	str	r0, [r4, #4]
c0de136c:	2001      	movs	r0, #1
c0de136e:	7020      	strb	r0, [r4, #0]
c0de1370:	2000      	movs	r0, #0
c0de1372:	e00d      	b.n	c0de1390 <json_parse+0x7c>
c0de1374:	1cc1      	adds	r1, r0, #3
c0de1376:	d00a      	beq.n	c0de138e <json_parse+0x7a>
c0de1378:	1c41      	adds	r1, r0, #1
c0de137a:	d004      	beq.n	c0de1386 <json_parse+0x72>
c0de137c:	3002      	adds	r0, #2
c0de137e:	bf14      	ite	ne
c0de1380:	201f      	movne	r0, #31
c0de1382:	200c      	moveq	r0, #12
c0de1384:	e004      	b.n	c0de1390 <json_parse+0x7c>
c0de1386:	2015      	movs	r0, #21
c0de1388:	e002      	b.n	c0de1390 <json_parse+0x7c>
c0de138a:	2014      	movs	r0, #20
c0de138c:	e000      	b.n	c0de1390 <json_parse+0x7c>
c0de138e:	2016      	movs	r0, #22
c0de1390:	b003      	add	sp, #12
c0de1392:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
	...

c0de1398 <array_get_element_count>:
c0de1398:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de139a:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de139e:	2300      	movs	r3, #0
c0de13a0:	458c      	cmp	ip, r1
c0de13a2:	8013      	strh	r3, [r2, #0]
c0de13a4:	bf3c      	itt	cc
c0de13a6:	2001      	movcc	r0, #1
c0de13a8:	bdf0      	popcc	{r4, r5, r6, r7, pc}
c0de13aa:	1c4b      	adds	r3, r1, #1
c0de13ac:	b29d      	uxth	r5, r3
c0de13ae:	45ac      	cmp	ip, r5
c0de13b0:	d916      	bls.n	c0de13e0 <array_get_element_count+0x48>
c0de13b2:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
c0de13b6:	f9b1 e00c 	ldrsh.w	lr, [r1, #12]
c0de13ba:	894c      	ldrh	r4, [r1, #10]
c0de13bc:	2100      	movs	r1, #0
c0de13be:	bf00      	nop
c0de13c0:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de13c4:	f9b5 600a 	ldrsh.w	r6, [r5, #10]
c0de13c8:	4576      	cmp	r6, lr
c0de13ca:	dc09      	bgt.n	c0de13e0 <array_get_element_count+0x48>
c0de13cc:	b2a7      	uxth	r7, r4
c0de13ce:	42be      	cmp	r6, r7
c0de13d0:	dd02      	ble.n	c0de13d8 <array_get_element_count+0x40>
c0de13d2:	89ac      	ldrh	r4, [r5, #12]
c0de13d4:	3101      	adds	r1, #1
c0de13d6:	8011      	strh	r1, [r2, #0]
c0de13d8:	3301      	adds	r3, #1
c0de13da:	b29d      	uxth	r5, r3
c0de13dc:	45ac      	cmp	ip, r5
c0de13de:	d8ef      	bhi.n	c0de13c0 <array_get_element_count+0x28>
c0de13e0:	2000      	movs	r0, #0
c0de13e2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de13e4 <array_get_nth_element>:
c0de13e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de13e8:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de13ec:	458c      	cmp	ip, r1
c0de13ee:	d320      	bcc.n	c0de1432 <array_get_nth_element+0x4e>
c0de13f0:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de13f4:	3101      	adds	r1, #1
c0de13f6:	f8b7 800a 	ldrh.w	r8, [r7, #10]
c0de13fa:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de13fe:	b28e      	uxth	r6, r1
c0de1400:	45b4      	cmp	ip, r6
c0de1402:	8019      	strh	r1, [r3, #0]
c0de1404:	d915      	bls.n	c0de1432 <array_get_nth_element+0x4e>
c0de1406:	2500      	movs	r5, #0
c0de1408:	eb00 06c6 	add.w	r6, r0, r6, lsl #3
c0de140c:	f9b6 700a 	ldrsh.w	r7, [r6, #10]
c0de1410:	4577      	cmp	r7, lr
c0de1412:	dc0e      	bgt.n	c0de1432 <array_get_nth_element+0x4e>
c0de1414:	fa1f f488 	uxth.w	r4, r8
c0de1418:	42a7      	cmp	r7, r4
c0de141a:	dd05      	ble.n	c0de1428 <array_get_nth_element+0x44>
c0de141c:	b2ac      	uxth	r4, r5
c0de141e:	4294      	cmp	r4, r2
c0de1420:	d00a      	beq.n	c0de1438 <array_get_nth_element+0x54>
c0de1422:	f8b6 800c 	ldrh.w	r8, [r6, #12]
c0de1426:	3501      	adds	r5, #1
c0de1428:	3101      	adds	r1, #1
c0de142a:	b28e      	uxth	r6, r1
c0de142c:	45b4      	cmp	ip, r6
c0de142e:	8019      	strh	r1, [r3, #0]
c0de1430:	d8ea      	bhi.n	c0de1408 <array_get_nth_element+0x24>
c0de1432:	2001      	movs	r0, #1
c0de1434:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1438:	2000      	movs	r0, #0
c0de143a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1440 <object_get_element_count>:
c0de1440:	b570      	push	{r4, r5, r6, lr}
c0de1442:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de1446:	2300      	movs	r3, #0
c0de1448:	458c      	cmp	ip, r1
c0de144a:	8013      	strh	r3, [r2, #0]
c0de144c:	bf3c      	itt	cc
c0de144e:	2001      	movcc	r0, #1
c0de1450:	bd70      	popcc	{r4, r5, r6, pc}
c0de1452:	f101 0e01 	add.w	lr, r1, #1
c0de1456:	fa1f f38e 	uxth.w	r3, lr
c0de145a:	459c      	cmp	ip, r3
c0de145c:	d91a      	bls.n	c0de1494 <object_get_element_count+0x54>
c0de145e:	eb00 04c1 	add.w	r4, r0, r1, lsl #3
c0de1462:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
c0de1466:	8965      	ldrh	r5, [r4, #10]
c0de1468:	2400      	movs	r4, #0
c0de146a:	3008      	adds	r0, #8
c0de146c:	eb00 03c3 	add.w	r3, r0, r3, lsl #3
c0de1470:	f9b3 3002 	ldrsh.w	r3, [r3, #2]
c0de1474:	428b      	cmp	r3, r1
c0de1476:	dc0d      	bgt.n	c0de1494 <object_get_element_count+0x54>
c0de1478:	f10e 0e01 	add.w	lr, lr, #1
c0de147c:	b2ae      	uxth	r6, r5
c0de147e:	42b3      	cmp	r3, r6
c0de1480:	fa1f f38e 	uxth.w	r3, lr
c0de1484:	dd04      	ble.n	c0de1490 <object_get_element_count+0x50>
c0de1486:	eb00 05c3 	add.w	r5, r0, r3, lsl #3
c0de148a:	88ad      	ldrh	r5, [r5, #4]
c0de148c:	3401      	adds	r4, #1
c0de148e:	8014      	strh	r4, [r2, #0]
c0de1490:	459c      	cmp	ip, r3
c0de1492:	d8eb      	bhi.n	c0de146c <object_get_element_count+0x2c>
c0de1494:	2000      	movs	r0, #0
c0de1496:	bd70      	pop	{r4, r5, r6, pc}

c0de1498 <object_get_nth_key>:
c0de1498:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de149c:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de14a0:	8019      	strh	r1, [r3, #0]
c0de14a2:	458c      	cmp	ip, r1
c0de14a4:	d324      	bcc.n	c0de14f0 <object_get_nth_key+0x58>
c0de14a6:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de14aa:	1c4e      	adds	r6, r1, #1
c0de14ac:	897c      	ldrh	r4, [r7, #10]
c0de14ae:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de14b2:	b2b5      	uxth	r5, r6
c0de14b4:	45ac      	cmp	ip, r5
c0de14b6:	801e      	strh	r6, [r3, #0]
c0de14b8:	d91a      	bls.n	c0de14f0 <object_get_nth_key+0x58>
c0de14ba:	f04f 0800 	mov.w	r8, #0
c0de14be:	3008      	adds	r0, #8
c0de14c0:	1c77      	adds	r7, r6, #1
c0de14c2:	801f      	strh	r7, [r3, #0]
c0de14c4:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de14c8:	f9b5 5002 	ldrsh.w	r5, [r5, #2]
c0de14cc:	4575      	cmp	r5, lr
c0de14ce:	dc0f      	bgt.n	c0de14f0 <object_get_nth_key+0x58>
c0de14d0:	b2a1      	uxth	r1, r4
c0de14d2:	428d      	cmp	r5, r1
c0de14d4:	b2bd      	uxth	r5, r7
c0de14d6:	dd08      	ble.n	c0de14ea <object_get_nth_key+0x52>
c0de14d8:	fa1f f188 	uxth.w	r1, r8
c0de14dc:	4291      	cmp	r1, r2
c0de14de:	d00a      	beq.n	c0de14f6 <object_get_nth_key+0x5e>
c0de14e0:	eb00 01c5 	add.w	r1, r0, r5, lsl #3
c0de14e4:	888c      	ldrh	r4, [r1, #4]
c0de14e6:	f108 0801 	add.w	r8, r8, #1
c0de14ea:	45ac      	cmp	ip, r5
c0de14ec:	463e      	mov	r6, r7
c0de14ee:	d8e7      	bhi.n	c0de14c0 <object_get_nth_key+0x28>
c0de14f0:	2001      	movs	r0, #1
c0de14f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de14f6:	2000      	movs	r0, #0
c0de14f8:	801e      	strh	r6, [r3, #0]
c0de14fa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de14fe <object_get_nth_value>:
c0de14fe:	b5b0      	push	{r4, r5, r7, lr}
c0de1500:	461c      	mov	r4, r3
c0de1502:	6843      	ldr	r3, [r0, #4]
c0de1504:	428b      	cmp	r3, r1
c0de1506:	d201      	bcs.n	c0de150c <object_get_nth_value+0xe>
c0de1508:	2501      	movs	r5, #1
c0de150a:	e00a      	b.n	c0de1522 <object_get_nth_value+0x24>
c0de150c:	4623      	mov	r3, r4
c0de150e:	f7ff ffc3 	bl	c0de1498 <object_get_nth_key>
c0de1512:	4605      	mov	r5, r0
c0de1514:	f002 fe09 	bl	c0de412a <check_app_canary>
c0de1518:	b91d      	cbnz	r5, c0de1522 <object_get_nth_value+0x24>
c0de151a:	8820      	ldrh	r0, [r4, #0]
c0de151c:	2500      	movs	r5, #0
c0de151e:	3001      	adds	r0, #1
c0de1520:	8020      	strh	r0, [r4, #0]
c0de1522:	4628      	mov	r0, r5
c0de1524:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de1528 <object_get_value>:
c0de1528:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de152c:	b086      	sub	sp, #24
c0de152e:	6846      	ldr	r6, [r0, #4]
c0de1530:	428e      	cmp	r6, r1
c0de1532:	d353      	bcc.n	c0de15dc <object_get_value+0xb4>
c0de1534:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de1538:	f101 0a01 	add.w	sl, r1, #1
c0de153c:	4690      	mov	r8, r2
c0de153e:	f9b7 200a 	ldrsh.w	r2, [r7, #10]
c0de1542:	f9b7 700c 	ldrsh.w	r7, [r7, #12]
c0de1546:	fa1f fb8a 	uxth.w	fp, sl
c0de154a:	455e      	cmp	r6, fp
c0de154c:	f8a3 a000 	strh.w	sl, [r3]
c0de1550:	d944      	bls.n	c0de15dc <object_get_value+0xb4>
c0de1552:	4605      	mov	r5, r0
c0de1554:	f641 0008 	movw	r0, #6152	@ 0x1808
c0de1558:	4428      	add	r0, r5
c0de155a:	f105 0108 	add.w	r1, r5, #8
c0de155e:	e9cd 5000 	strd	r5, r0, [sp]
c0de1562:	9304      	str	r3, [sp, #16]
c0de1564:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de1568:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de156c:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
c0de1570:	f9b0 5004 	ldrsh.w	r5, [r0, #4]
c0de1574:	f10a 0a01 	add.w	sl, sl, #1
c0de1578:	42bc      	cmp	r4, r7
c0de157a:	f8a3 a000 	strh.w	sl, [r3]
c0de157e:	dc2d      	bgt.n	c0de15dc <object_get_value+0xb4>
c0de1580:	42a2      	cmp	r2, r4
c0de1582:	fa1f fb8a 	uxth.w	fp, sl
c0de1586:	da27      	bge.n	c0de15d8 <object_get_value+0xb0>
c0de1588:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de158c:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de1590:	9005      	str	r0, [sp, #20]
c0de1592:	4640      	mov	r0, r8
c0de1594:	f005 fa96 	bl	c0de6ac4 <strlen>
c0de1598:	b287      	uxth	r7, r0
c0de159a:	1b28      	subs	r0, r5, r4
c0de159c:	4287      	cmp	r7, r0
c0de159e:	d117      	bne.n	c0de15d0 <object_get_value+0xa8>
c0de15a0:	4640      	mov	r0, r8
c0de15a2:	4645      	mov	r5, r8
c0de15a4:	f005 f8f4 	bl	c0de6790 <pic>
c0de15a8:	9901      	ldr	r1, [sp, #4]
c0de15aa:	4606      	mov	r6, r0
c0de15ac:	6809      	ldr	r1, [r1, #0]
c0de15ae:	1908      	adds	r0, r1, r4
c0de15b0:	f005 f8ee 	bl	c0de6790 <pic>
c0de15b4:	4601      	mov	r1, r0
c0de15b6:	4630      	mov	r0, r6
c0de15b8:	463a      	mov	r2, r7
c0de15ba:	f005 fa2b 	bl	c0de6a14 <memcmp>
c0de15be:	b188      	cbz	r0, c0de15e4 <object_get_value+0xbc>
c0de15c0:	9b04      	ldr	r3, [sp, #16]
c0de15c2:	9800      	ldr	r0, [sp, #0]
c0de15c4:	f8b3 b000 	ldrh.w	fp, [r3]
c0de15c8:	6846      	ldr	r6, [r0, #4]
c0de15ca:	46da      	mov	sl, fp
c0de15cc:	46a8      	mov	r8, r5
c0de15ce:	e000      	b.n	c0de15d2 <object_get_value+0xaa>
c0de15d0:	9b04      	ldr	r3, [sp, #16]
c0de15d2:	9a05      	ldr	r2, [sp, #20]
c0de15d4:	e9dd 1702 	ldrd	r1, r7, [sp, #8]
c0de15d8:	455e      	cmp	r6, fp
c0de15da:	d8c5      	bhi.n	c0de1568 <object_get_value+0x40>
c0de15dc:	2001      	movs	r0, #1
c0de15de:	b006      	add	sp, #24
c0de15e0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de15e4:	2000      	movs	r0, #0
c0de15e6:	e7fa      	b.n	c0de15de <object_get_value+0xb6>

c0de15e8 <parser_parse>:
c0de15e8:	b510      	push	{r4, lr}
c0de15ea:	f000 fc08 	bl	c0de1dfe <tx_display_readTx>
c0de15ee:	4604      	mov	r4, r0
c0de15f0:	f002 fd9b 	bl	c0de412a <check_app_canary>
c0de15f4:	4620      	mov	r0, r4
c0de15f6:	bd10      	pop	{r4, pc}

c0de15f8 <parser_validate>:
c0de15f8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de15fc:	b09a      	sub	sp, #104	@ 0x68
c0de15fe:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1602:	f2c0 0000 	movt	r0, #0
c0de1606:	4448      	add	r0, r9
c0de1608:	3004      	adds	r0, #4
c0de160a:	f001 fc23 	bl	c0de2e54 <tx_validate>
c0de160e:	4604      	mov	r4, r0
c0de1610:	f002 fd8b 	bl	c0de412a <check_app_canary>
c0de1614:	b954      	cbnz	r4, c0de162c <parser_validate+0x34>
c0de1616:	2000      	movs	r0, #0
c0de1618:	f88d 0067 	strb.w	r0, [sp, #103]	@ 0x67
c0de161c:	f10d 0067 	add.w	r0, sp, #103	@ 0x67
c0de1620:	f000 fe70 	bl	c0de2304 <tx_display_numItems>
c0de1624:	4604      	mov	r4, r0
c0de1626:	f002 fd80 	bl	c0de412a <check_app_canary>
c0de162a:	b11c      	cbz	r4, c0de1634 <parser_validate+0x3c>
c0de162c:	4620      	mov	r0, r4
c0de162e:	b01a      	add	sp, #104	@ 0x68
c0de1630:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1634:	f89d 0067 	ldrb.w	r0, [sp, #103]	@ 0x67
c0de1638:	2400      	movs	r4, #0
c0de163a:	2800      	cmp	r0, #0
c0de163c:	d0f6      	beq.n	c0de162c <parser_validate+0x34>
c0de163e:	f10d 0816 	add.w	r8, sp, #22
c0de1642:	f04f 0a28 	mov.w	sl, #40	@ 0x28
c0de1646:	f10d 0b17 	add.w	fp, sp, #23
c0de164a:	f10d 053f 	add.w	r5, sp, #63	@ 0x3f
c0de164e:	2700      	movs	r7, #0
c0de1650:	b2f9      	uxtb	r1, r7
c0de1652:	462a      	mov	r2, r5
c0de1654:	2328      	movs	r3, #40	@ 0x28
c0de1656:	f88d 4016 	strb.w	r4, [sp, #22]
c0de165a:	e9cd ba00 	strd	fp, sl, [sp]
c0de165e:	9402      	str	r4, [sp, #8]
c0de1660:	f8cd 800c 	str.w	r8, [sp, #12]
c0de1664:	f000 f812 	bl	c0de168c <parser_getItem>
c0de1668:	4606      	mov	r6, r0
c0de166a:	f002 fd5e 	bl	c0de412a <check_app_canary>
c0de166e:	b936      	cbnz	r6, c0de167e <parser_validate+0x86>
c0de1670:	f89d 0067 	ldrb.w	r0, [sp, #103]	@ 0x67
c0de1674:	3701      	adds	r7, #1
c0de1676:	4287      	cmp	r7, r0
c0de1678:	d3ea      	bcc.n	c0de1650 <parser_validate+0x58>
c0de167a:	2400      	movs	r4, #0
c0de167c:	e7d6      	b.n	c0de162c <parser_validate+0x34>
c0de167e:	4634      	mov	r4, r6
c0de1680:	e7d4      	b.n	c0de162c <parser_validate+0x34>

c0de1682 <parser_getNumItems>:
c0de1682:	4608      	mov	r0, r1
c0de1684:	2100      	movs	r1, #0
c0de1686:	7001      	strb	r1, [r0, #0]
c0de1688:	f000 be3c 	b.w	c0de2304 <tx_display_numItems>

c0de168c <parser_getItem>:
c0de168c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1690:	b0e0      	sub	sp, #384	@ 0x180
c0de1692:	9d6b      	ldr	r5, [sp, #428]	@ 0x1ac
c0de1694:	460f      	mov	r7, r1
c0de1696:	e9dd 4b68 	ldrd	r4, fp, [sp, #416]	@ 0x1a0
c0de169a:	2600      	movs	r6, #0
c0de169c:	4610      	mov	r0, r2
c0de169e:	4619      	mov	r1, r3
c0de16a0:	469a      	mov	sl, r3
c0de16a2:	4690      	mov	r8, r2
c0de16a4:	702e      	strb	r6, [r5, #0]
c0de16a6:	f005 f9af 	bl	c0de6a08 <explicit_bzero>
c0de16aa:	4620      	mov	r0, r4
c0de16ac:	4659      	mov	r1, fp
c0de16ae:	f005 f9ab 	bl	c0de6a08 <explicit_bzero>
c0de16b2:	f10d 000f 	add.w	r0, sp, #15
c0de16b6:	f88d 600f 	strb.w	r6, [sp, #15]
c0de16ba:	f000 fe23 	bl	c0de2304 <tx_display_numItems>
c0de16be:	4606      	mov	r6, r0
c0de16c0:	f002 fd33 	bl	c0de412a <check_app_canary>
c0de16c4:	b11e      	cbz	r6, c0de16ce <parser_getItem+0x42>
c0de16c6:	4630      	mov	r0, r6
c0de16c8:	b060      	add	sp, #384	@ 0x180
c0de16ca:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de16ce:	f002 fd2c 	bl	c0de412a <check_app_canary>
c0de16d2:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de16d6:	2800      	cmp	r0, #0
c0de16d8:	d053      	beq.n	c0de1782 <parser_getItem+0xf6>
c0de16da:	42b8      	cmp	r0, r7
c0de16dc:	d953      	bls.n	c0de1786 <parser_getItem+0xfa>
c0de16de:	2000      	movs	r0, #0
c0de16e0:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de16e4:	a904      	add	r1, sp, #16
c0de16e6:	ab03      	add	r3, sp, #12
c0de16e8:	4638      	mov	r0, r7
c0de16ea:	2264      	movs	r2, #100	@ 0x64
c0de16ec:	f000 fe86 	bl	c0de23fc <tx_display_query>
c0de16f0:	4606      	mov	r6, r0
c0de16f2:	f002 fd1a 	bl	c0de412a <check_app_canary>
c0de16f6:	2e00      	cmp	r6, #0
c0de16f8:	d1e5      	bne.n	c0de16c6 <parser_getItem+0x3a>
c0de16fa:	9f6a      	ldr	r7, [sp, #424]	@ 0x1a8
c0de16fc:	f002 fd15 	bl	c0de412a <check_app_canary>
c0de1700:	f245 620d 	movw	r2, #22029	@ 0x560d
c0de1704:	f2c0 0200 	movt	r2, #0
c0de1708:	ae04      	add	r6, sp, #16
c0de170a:	447a      	add	r2, pc
c0de170c:	4640      	mov	r0, r8
c0de170e:	4651      	mov	r1, sl
c0de1710:	4633      	mov	r3, r6
c0de1712:	f004 fd8b 	bl	c0de622c <snprintf>
c0de1716:	f645 0182 	movw	r1, #22658	@ 0x5882
c0de171a:	f2c0 0100 	movt	r1, #0
c0de171e:	4479      	add	r1, pc
c0de1720:	4630      	mov	r0, r6
c0de1722:	220b      	movs	r2, #11
c0de1724:	f005 f976 	bl	c0de6a14 <memcmp>
c0de1728:	b378      	cbz	r0, c0de178a <parser_getItem+0xfe>
c0de172a:	f245 41c5 	movw	r1, #21701	@ 0x54c5
c0de172e:	f2c0 0100 	movt	r1, #0
c0de1732:	4479      	add	r1, pc
c0de1734:	a804      	add	r0, sp, #16
c0de1736:	2212      	movs	r2, #18
c0de1738:	f005 f96c 	bl	c0de6a14 <memcmp>
c0de173c:	b328      	cbz	r0, c0de178a <parser_getItem+0xfe>
c0de173e:	f645 117c 	movw	r1, #22908	@ 0x597c
c0de1742:	f2c0 0100 	movt	r1, #0
c0de1746:	4479      	add	r1, pc
c0de1748:	a804      	add	r0, sp, #16
c0de174a:	2213      	movs	r2, #19
c0de174c:	f005 f962 	bl	c0de6a14 <memcmp>
c0de1750:	b1d8      	cbz	r0, c0de178a <parser_getItem+0xfe>
c0de1752:	f245 5124 	movw	r1, #21796	@ 0x5524
c0de1756:	f2c0 0100 	movt	r1, #0
c0de175a:	4479      	add	r1, pc
c0de175c:	a804      	add	r0, sp, #16
c0de175e:	2212      	movs	r2, #18
c0de1760:	f005 f958 	bl	c0de6a14 <memcmp>
c0de1764:	b188      	cbz	r0, c0de178a <parser_getItem+0xfe>
c0de1766:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de176a:	4621      	mov	r1, r4
c0de176c:	465a      	mov	r2, fp
c0de176e:	463b      	mov	r3, r7
c0de1770:	9500      	str	r5, [sp, #0]
c0de1772:	f001 f84b 	bl	c0de280c <tx_getToken>
c0de1776:	4606      	mov	r6, r0
c0de1778:	f002 fcd7 	bl	c0de412a <check_app_canary>
c0de177c:	2e00      	cmp	r6, #0
c0de177e:	d1a2      	bne.n	c0de16c6 <parser_getItem+0x3a>
c0de1780:	e037      	b.n	c0de17f2 <parser_getItem+0x166>
c0de1782:	260a      	movs	r6, #10
c0de1784:	e79f      	b.n	c0de16c6 <parser_getItem+0x3a>
c0de1786:	2603      	movs	r6, #3
c0de1788:	e79d      	b.n	c0de16c6 <parser_getItem+0x3a>
c0de178a:	2000      	movs	r0, #0
c0de178c:	7028      	strb	r0, [r5, #0]
c0de178e:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1792:	f2c0 0000 	movt	r0, #0
c0de1796:	465c      	mov	r4, fp
c0de1798:	f8bd b00c 	ldrh.w	fp, [sp, #12]
c0de179c:	4448      	add	r0, r9
c0de179e:	3004      	adds	r0, #4
c0de17a0:	eb00 01cb 	add.w	r1, r0, fp, lsl #3
c0de17a4:	7a09      	ldrb	r1, [r1, #8]
c0de17a6:	f50d 72bf 	add.w	r2, sp, #382	@ 0x17e
c0de17aa:	2902      	cmp	r1, #2
c0de17ac:	bf08      	it	eq
c0de17ae:	f10b 0b01 	addeq.w	fp, fp, #1
c0de17b2:	fa1f f78b 	uxth.w	r7, fp
c0de17b6:	4639      	mov	r1, r7
c0de17b8:	f7ff fdee 	bl	c0de1398 <array_get_element_count>
c0de17bc:	4606      	mov	r6, r0
c0de17be:	f002 fcb4 	bl	c0de412a <check_app_canary>
c0de17c2:	2e00      	cmp	r6, #0
c0de17c4:	f040 8094 	bne.w	c0de18f0 <parser_getItem+0x264>
c0de17c8:	f8bd 017e 	ldrh.w	r0, [sp, #382]	@ 0x17e
c0de17cc:	9702      	str	r7, [sp, #8]
c0de17ce:	2804      	cmp	r0, #4
c0de17d0:	d027      	beq.n	c0de1822 <parser_getItem+0x196>
c0de17d2:	2800      	cmp	r0, #0
c0de17d4:	f040 808b 	bne.w	c0de18ee <parser_getItem+0x262>
c0de17d8:	2001      	movs	r0, #1
c0de17da:	7028      	strb	r0, [r5, #0]
c0de17dc:	f245 627f 	movw	r2, #22143	@ 0x567f
c0de17e0:	f2c0 0200 	movt	r2, #0
c0de17e4:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de17e6:	447a      	add	r2, pc
c0de17e8:	4621      	mov	r1, r4
c0de17ea:	f004 fd1f 	bl	c0de622c <snprintf>
c0de17ee:	f002 fc9c 	bl	c0de412a <check_app_canary>
c0de17f2:	f002 fc9a 	bl	c0de412a <check_app_canary>
c0de17f6:	f000 ffd3 	bl	c0de27a0 <tx_display_make_friendly>
c0de17fa:	4606      	mov	r6, r0
c0de17fc:	f002 fc95 	bl	c0de412a <check_app_canary>
c0de1800:	2e00      	cmp	r6, #0
c0de1802:	f47f af60 	bne.w	c0de16c6 <parser_getItem+0x3a>
c0de1806:	f002 fc90 	bl	c0de412a <check_app_canary>
c0de180a:	f245 5205 	movw	r2, #21765	@ 0x5505
c0de180e:	f2c0 0200 	movt	r2, #0
c0de1812:	447a      	add	r2, pc
c0de1814:	ab04      	add	r3, sp, #16
c0de1816:	4640      	mov	r0, r8
c0de1818:	4651      	mov	r1, sl
c0de181a:	f004 fd07 	bl	c0de622c <snprintf>
c0de181e:	2600      	movs	r6, #0
c0de1820:	e066      	b.n	c0de18f0 <parser_getItem+0x264>
c0de1822:	f643 13c8 	movw	r3, #14792	@ 0x39c8
c0de1826:	f2c0 0300 	movt	r3, #0
c0de182a:	9902      	ldr	r1, [sp, #8]
c0de182c:	eb09 0003 	add.w	r0, r9, r3
c0de1830:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de1834:	7b00      	ldrb	r0, [r0, #12]
c0de1836:	2801      	cmp	r0, #1
c0de1838:	d159      	bne.n	c0de18ee <parser_getItem+0x262>
c0de183a:	f10b 0001 	add.w	r0, fp, #1
c0de183e:	b280      	uxth	r0, r0
c0de1840:	eb09 0103 	add.w	r1, r9, r3
c0de1844:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de1848:	7b09      	ldrb	r1, [r1, #12]
c0de184a:	2903      	cmp	r1, #3
c0de184c:	d14f      	bne.n	c0de18ee <parser_getItem+0x262>
c0de184e:	eb09 0103 	add.w	r1, r9, r3
c0de1852:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de1856:	f9b0 100e 	ldrsh.w	r1, [r0, #14]
c0de185a:	f9b0 0010 	ldrsh.w	r0, [r0, #16]
c0de185e:	1a40      	subs	r0, r0, r1
c0de1860:	2806      	cmp	r0, #6
c0de1862:	d144      	bne.n	c0de18ee <parser_getItem+0x262>
c0de1864:	f859 c003 	ldr.w	ip, [r9, r3]
c0de1868:	f81c 2001 	ldrb.w	r2, [ip, r1]
c0de186c:	2a61      	cmp	r2, #97	@ 0x61
c0de186e:	d13e      	bne.n	c0de18ee <parser_getItem+0x262>
c0de1870:	f245 5e0d 	movw	lr, #21773	@ 0x550d
c0de1874:	4461      	add	r1, ip
c0de1876:	f2c0 0e00 	movt	lr, #0
c0de187a:	1c4a      	adds	r2, r1, #1
c0de187c:	2100      	movs	r1, #0
c0de187e:	44fe      	add	lr, pc
c0de1880:	2905      	cmp	r1, #5
c0de1882:	d008      	beq.n	c0de1896 <parser_getItem+0x20a>
c0de1884:	eb0e 0601 	add.w	r6, lr, r1
c0de1888:	7876      	ldrb	r6, [r6, #1]
c0de188a:	5c50      	ldrb	r0, [r2, r1]
c0de188c:	3101      	adds	r1, #1
c0de188e:	4286      	cmp	r6, r0
c0de1890:	d0f6      	beq.n	c0de1880 <parser_getItem+0x1f4>
c0de1892:	2906      	cmp	r1, #6
c0de1894:	d32b      	bcc.n	c0de18ee <parser_getItem+0x262>
c0de1896:	f10b 0003 	add.w	r0, fp, #3
c0de189a:	b281      	uxth	r1, r0
c0de189c:	eb09 0003 	add.w	r0, r9, r3
c0de18a0:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de18a4:	7b00      	ldrb	r0, [r0, #12]
c0de18a6:	2803      	cmp	r0, #3
c0de18a8:	d121      	bne.n	c0de18ee <parser_getItem+0x262>
c0de18aa:	eb09 0003 	add.w	r0, r9, r3
c0de18ae:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de18b2:	f9b0 100e 	ldrsh.w	r1, [r0, #14]
c0de18b6:	f9b0 0010 	ldrsh.w	r0, [r0, #16]
c0de18ba:	1a40      	subs	r0, r0, r1
c0de18bc:	2805      	cmp	r0, #5
c0de18be:	d116      	bne.n	c0de18ee <parser_getItem+0x262>
c0de18c0:	f81c 0001 	ldrb.w	r0, [ip, r1]
c0de18c4:	2864      	cmp	r0, #100	@ 0x64
c0de18c6:	d112      	bne.n	c0de18ee <parser_getItem+0x262>
c0de18c8:	f245 72bb 	movw	r2, #22459	@ 0x57bb
c0de18cc:	eb01 000c 	add.w	r0, r1, ip
c0de18d0:	f2c0 0200 	movt	r2, #0
c0de18d4:	1c41      	adds	r1, r0, #1
c0de18d6:	2000      	movs	r0, #0
c0de18d8:	447a      	add	r2, pc
c0de18da:	2804      	cmp	r0, #4
c0de18dc:	d00b      	beq.n	c0de18f6 <parser_getItem+0x26a>
c0de18de:	1813      	adds	r3, r2, r0
c0de18e0:	785b      	ldrb	r3, [r3, #1]
c0de18e2:	5c0f      	ldrb	r7, [r1, r0]
c0de18e4:	3001      	adds	r0, #1
c0de18e6:	42bb      	cmp	r3, r7
c0de18e8:	d0f7      	beq.n	c0de18da <parser_getItem+0x24e>
c0de18ea:	2805      	cmp	r0, #5
c0de18ec:	d203      	bcs.n	c0de18f6 <parser_getItem+0x26a>
c0de18ee:	260d      	movs	r6, #13
c0de18f0:	f002 fc1b 	bl	c0de412a <check_app_canary>
c0de18f4:	e6e7      	b.n	c0de16c6 <parser_getItem+0x3a>
c0de18f6:	a82a      	add	r0, sp, #168	@ 0xa8
c0de18f8:	2132      	movs	r1, #50	@ 0x32
c0de18fa:	f005 f885 	bl	c0de6a08 <explicit_bzero>
c0de18fe:	a81d      	add	r0, sp, #116	@ 0x74
c0de1900:	2132      	movs	r1, #50	@ 0x32
c0de1902:	f005 f881 	bl	c0de6a08 <explicit_bzero>
c0de1906:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de1908:	4621      	mov	r1, r4
c0de190a:	f005 f87d 	bl	c0de6a08 <explicit_bzero>
c0de190e:	a837      	add	r0, sp, #220	@ 0xdc
c0de1910:	21a0      	movs	r1, #160	@ 0xa0
c0de1912:	f005 f879 	bl	c0de6a08 <explicit_bzero>
c0de1916:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de191a:	9902      	ldr	r1, [sp, #8]
c0de191c:	f2c0 0000 	movt	r0, #0
c0de1920:	4448      	add	r0, r9
c0de1922:	1c8a      	adds	r2, r1, #2
c0de1924:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
c0de1928:	f9b0 000e 	ldrsh.w	r0, [r0, #14]
c0de192c:	2800      	cmp	r0, #0
c0de192e:	d47d      	bmi.n	c0de1a2c <parser_getItem+0x3a0>
c0de1930:	f643 11c8 	movw	r1, #14792	@ 0x39c8
c0de1934:	f2c0 0100 	movt	r1, #0
c0de1938:	4449      	add	r1, r9
c0de193a:	f101 030c 	add.w	r3, r1, #12
c0de193e:	9902      	ldr	r1, [sp, #8]
c0de1940:	eb03 07c1 	add.w	r7, r3, r1, lsl #3
c0de1944:	f9b7 1022 	ldrsh.w	r1, [r7, #34]	@ 0x22
c0de1948:	f9b7 7024 	ldrsh.w	r7, [r7, #36]	@ 0x24
c0de194c:	1a7f      	subs	r7, r7, r1
c0de194e:	f1a7 0632 	sub.w	r6, r7, #50	@ 0x32
c0de1952:	f116 0f31 	cmn.w	r6, #49	@ 0x31
c0de1956:	f04f 0605 	mov.w	r6, #5
c0de195a:	d3c9      	bcc.n	c0de18f0 <parser_getItem+0x264>
c0de195c:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de1960:	f9b2 2004 	ldrsh.w	r2, [r2, #4]
c0de1964:	1a12      	subs	r2, r2, r0
c0de1966:	4693      	mov	fp, r2
c0de1968:	3a32      	subs	r2, #50	@ 0x32
c0de196a:	f112 0f31 	cmn.w	r2, #49	@ 0x31
c0de196e:	d3bf      	bcc.n	c0de18f0 <parser_getItem+0x264>
c0de1970:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de1974:	f2c0 0200 	movt	r2, #0
c0de1978:	f859 2002 	ldr.w	r2, [r9, r2]
c0de197c:	1816      	adds	r6, r2, r0
c0de197e:	4411      	add	r1, r2
c0de1980:	a82a      	add	r0, sp, #168	@ 0xa8
c0de1982:	463a      	mov	r2, r7
c0de1984:	9102      	str	r1, [sp, #8]
c0de1986:	f005 f838 	bl	c0de69fa <__aeabi_memmove>
c0de198a:	a81d      	add	r0, sp, #116	@ 0x74
c0de198c:	4631      	mov	r1, r6
c0de198e:	465a      	mov	r2, fp
c0de1990:	f005 f833 	bl	c0de69fa <__aeabi_memmove>
c0de1994:	f245 7288 	movw	r2, #22408	@ 0x5788
c0de1998:	f2c0 0200 	movt	r2, #0
c0de199c:	447a      	add	r2, pc
c0de199e:	a837      	add	r0, sp, #220	@ 0xdc
c0de19a0:	21a0      	movs	r1, #160	@ 0xa0
c0de19a2:	ab1d      	add	r3, sp, #116	@ 0x74
c0de19a4:	f004 fc42 	bl	c0de622c <snprintf>
c0de19a8:	b2fe      	uxtb	r6, r7
c0de19aa:	f000 fc94 	bl	c0de22d6 <tx_is_expert_mode>
c0de19ae:	2e05      	cmp	r6, #5
c0de19b0:	bf08      	it	eq
c0de19b2:	2800      	cmpeq	r0, #0
c0de19b4:	d03c      	beq.n	c0de1a30 <parser_getItem+0x3a4>
c0de19b6:	f245 6268 	movw	r2, #22120	@ 0x5668
c0de19ba:	f2c0 0200 	movt	r2, #0
c0de19be:	af37      	add	r7, sp, #220	@ 0xdc
c0de19c0:	447a      	add	r2, pc
c0de19c2:	ab2a      	add	r3, sp, #168	@ 0xa8
c0de19c4:	4638      	mov	r0, r7
c0de19c6:	21a0      	movs	r1, #160	@ 0xa0
c0de19c8:	f002 fb54 	bl	c0de4074 <z_str3join>
c0de19cc:	4638      	mov	r0, r7
c0de19ce:	f005 f879 	bl	c0de6ac4 <strlen>
c0de19d2:	4606      	mov	r6, r0
c0de19d4:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de19d6:	4621      	mov	r1, r4
c0de19d8:	f005 f816 	bl	c0de6a08 <explicit_bzero>
c0de19dc:	1e61      	subs	r1, r4, #1
c0de19de:	b288      	uxth	r0, r1
c0de19e0:	2200      	movs	r2, #0
c0de19e2:	2800      	cmp	r0, #0
c0de19e4:	702a      	strb	r2, [r5, #0]
c0de19e6:	f43f af02 	beq.w	c0de17ee <parser_getItem+0x162>
c0de19ea:	0432      	lsls	r2, r6, #16
c0de19ec:	f43f aeff 	beq.w	c0de17ee <parser_getItem+0x162>
c0de19f0:	b2b2      	uxth	r2, r6
c0de19f2:	fbb2 f3f0 	udiv	r3, r2, r0
c0de19f6:	fb03 6111 	mls	r1, r3, r1, r6
c0de19fa:	9e6a      	ldr	r6, [sp, #424]	@ 0x1a8
c0de19fc:	040a      	lsls	r2, r1, #16
c0de19fe:	bf18      	it	ne
c0de1a00:	3301      	addne	r3, #1
c0de1a02:	b2da      	uxtb	r2, r3
c0de1a04:	42b2      	cmp	r2, r6
c0de1a06:	702b      	strb	r3, [r5, #0]
c0de1a08:	f67f aef1 	bls.w	c0de17ee <parser_getItem+0x162>
c0de1a0c:	9e6a      	ldr	r6, [sp, #424]	@ 0x1a8
c0de1a0e:	3a01      	subs	r2, #1
c0de1a10:	42b2      	cmp	r2, r6
c0de1a12:	4602      	mov	r2, r0
c0de1a14:	b28b      	uxth	r3, r1
c0de1a16:	bf08      	it	eq
c0de1a18:	461a      	moveq	r2, r3
c0de1a1a:	fb06 7100 	mla	r1, r6, r0, r7
c0de1a1e:	2b00      	cmp	r3, #0
c0de1a20:	bf08      	it	eq
c0de1a22:	4602      	moveq	r2, r0
c0de1a24:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de1a26:	f004 ffe6 	bl	c0de69f6 <__aeabi_memcpy>
c0de1a2a:	e6e0      	b.n	c0de17ee <parser_getItem+0x162>
c0de1a2c:	2608      	movs	r6, #8
c0de1a2e:	e75f      	b.n	c0de18f0 <parser_getItem+0x264>
c0de1a30:	f245 3128 	movw	r1, #21288	@ 0x5328
c0de1a34:	f2c0 0100 	movt	r1, #0
c0de1a38:	9802      	ldr	r0, [sp, #8]
c0de1a3a:	4479      	add	r1, pc
c0de1a3c:	2205      	movs	r2, #5
c0de1a3e:	f004 ffe9 	bl	c0de6a14 <memcmp>
c0de1a42:	2800      	cmp	r0, #0
c0de1a44:	d1b7      	bne.n	c0de19b6 <parser_getItem+0x32a>
c0de1a46:	f10d 0bdc 	add.w	fp, sp, #220	@ 0xdc
c0de1a4a:	4658      	mov	r0, fp
c0de1a4c:	21a0      	movs	r1, #160	@ 0xa0
c0de1a4e:	f004 ffdb 	bl	c0de6a08 <explicit_bzero>
c0de1a52:	af1d      	add	r7, sp, #116	@ 0x74
c0de1a54:	4638      	mov	r0, r7
c0de1a56:	f005 f835 	bl	c0de6ac4 <strlen>
c0de1a5a:	4606      	mov	r6, r0
c0de1a5c:	389f      	subs	r0, #159	@ 0x9f
c0de1a5e:	f110 0fa1 	cmn.w	r0, #161	@ 0xa1
c0de1a62:	d201      	bcs.n	c0de1a68 <parser_getItem+0x3dc>
c0de1a64:	2605      	movs	r6, #5
c0de1a66:	e743      	b.n	c0de18f0 <parser_getItem+0x264>
c0de1a68:	2e06      	cmp	r6, #6
c0de1a6a:	d81a      	bhi.n	c0de1aa2 <parser_getItem+0x416>
c0de1a6c:	2000      	movs	r0, #0
c0de1a6e:	f88d 00de 	strb.w	r0, [sp, #222]	@ 0xde
c0de1a72:	f642 6030 	movw	r0, #11824	@ 0x2e30
c0de1a76:	f10b 0b02 	add.w	fp, fp, #2
c0de1a7a:	f1c6 0706 	rsb	r7, r6, #6
c0de1a7e:	f8ad 00dc 	strh.w	r0, [sp, #220]	@ 0xdc
c0de1a82:	4658      	mov	r0, fp
c0de1a84:	4639      	mov	r1, r7
c0de1a86:	2230      	movs	r2, #48	@ 0x30
c0de1a88:	f004 ffb9 	bl	c0de69fe <__aeabi_memset>
c0de1a8c:	f245 227b 	movw	r2, #21115	@ 0x527b
c0de1a90:	f2c0 0200 	movt	r2, #0
c0de1a94:	eb0b 0007 	add.w	r0, fp, r7
c0de1a98:	f106 0198 	add.w	r1, r6, #152	@ 0x98
c0de1a9c:	447a      	add	r2, pc
c0de1a9e:	ab1d      	add	r3, sp, #116	@ 0x74
c0de1aa0:	e018      	b.n	c0de1ad4 <parser_getItem+0x448>
c0de1aa2:	1fb0      	subs	r0, r6, #6
c0de1aa4:	9002      	str	r0, [sp, #8]
c0de1aa6:	f245 2269 	movw	r2, #21097	@ 0x5269
c0de1aaa:	f2c0 0200 	movt	r2, #0
c0de1aae:	447a      	add	r2, pc
c0de1ab0:	4658      	mov	r0, fp
c0de1ab2:	21a0      	movs	r1, #160	@ 0xa0
c0de1ab4:	463b      	mov	r3, r7
c0de1ab6:	f004 fbb9 	bl	c0de622c <snprintf>
c0de1aba:	9802      	ldr	r0, [sp, #8]
c0de1abc:	212e      	movs	r1, #46	@ 0x2e
c0de1abe:	183b      	adds	r3, r7, r0
c0de1ac0:	4458      	add	r0, fp
c0de1ac2:	f800 1b01 	strb.w	r1, [r0], #1
c0de1ac6:	f245 2245 	movw	r2, #21061	@ 0x5245
c0de1aca:	f2c0 0200 	movt	r2, #0
c0de1ace:	f1c6 01a5 	rsb	r1, r6, #165	@ 0xa5
c0de1ad2:	447a      	add	r2, pc
c0de1ad4:	f004 fbaa 	bl	c0de622c <snprintf>
c0de1ad8:	ae37      	add	r6, sp, #220	@ 0xdc
c0de1ada:	4630      	mov	r0, r6
c0de1adc:	f004 fff2 	bl	c0de6ac4 <strlen>
c0de1ae0:	f2a0 4101 	subw	r1, r0, #1025	@ 0x401
c0de1ae4:	f511 6f80 	cmn.w	r1, #1024	@ 0x400
c0de1ae8:	d91c      	bls.n	c0de1b24 <parser_getItem+0x498>
c0de1aea:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de1aee:	2300      	movs	r3, #0
c0de1af0:	2200      	movs	r2, #0
c0de1af2:	5cf3      	ldrb	r3, [r6, r3]
c0de1af4:	2b2e      	cmp	r3, #46	@ 0x2e
c0de1af6:	bf08      	it	eq
c0de1af8:	4611      	moveq	r1, r2
c0de1afa:	3201      	adds	r2, #1
c0de1afc:	b213      	sxth	r3, r2
c0de1afe:	4298      	cmp	r0, r3
c0de1b00:	b209      	sxth	r1, r1
c0de1b02:	dd01      	ble.n	c0de1b08 <parser_getItem+0x47c>
c0de1b04:	2900      	cmp	r1, #0
c0de1b06:	d4f4      	bmi.n	c0de1af2 <parser_getItem+0x466>
c0de1b08:	2900      	cmp	r1, #0
c0de1b0a:	d40b      	bmi.n	c0de1b24 <parser_getItem+0x498>
c0de1b0c:	3106      	adds	r1, #6
c0de1b0e:	3801      	subs	r0, #1
c0de1b10:	4288      	cmp	r0, r1
c0de1b12:	d907      	bls.n	c0de1b24 <parser_getItem+0x498>
c0de1b14:	2200      	movs	r2, #0
c0de1b16:	5c33      	ldrb	r3, [r6, r0]
c0de1b18:	2b30      	cmp	r3, #48	@ 0x30
c0de1b1a:	d103      	bne.n	c0de1b24 <parser_getItem+0x498>
c0de1b1c:	5432      	strb	r2, [r6, r0]
c0de1b1e:	3801      	subs	r0, #1
c0de1b20:	4288      	cmp	r0, r1
c0de1b22:	d8f8      	bhi.n	c0de1b16 <parser_getItem+0x48a>
c0de1b24:	f245 12d1 	movw	r2, #20945	@ 0x51d1
c0de1b28:	f2c0 0200 	movt	r2, #0
c0de1b2c:	f245 4310 	movw	r3, #21520	@ 0x5410
c0de1b30:	f2c0 0300 	movt	r3, #0
c0de1b34:	447a      	add	r2, pc
c0de1b36:	447b      	add	r3, pc
c0de1b38:	a82a      	add	r0, sp, #168	@ 0xa8
c0de1b3a:	2132      	movs	r1, #50	@ 0x32
c0de1b3c:	f004 fb76 	bl	c0de622c <snprintf>
c0de1b40:	e739      	b.n	c0de19b6 <parser_getItem+0x32a>

c0de1b42 <parser_init>:
c0de1b42:	4603      	mov	r3, r0
c0de1b44:	fa1f fc82 	uxth.w	ip, r2
c0de1b48:	2000      	movs	r0, #0
c0de1b4a:	80d8      	strh	r0, [r3, #6]
c0de1b4c:	fabc f08c 	clz	r0, ip
c0de1b50:	ea4f 1c50 	mov.w	ip, r0, lsr #5
c0de1b54:	fab1 f081 	clz	r0, r1
c0de1b58:	0940      	lsrs	r0, r0, #5
c0de1b5a:	ea50 000c 	orrs.w	r0, r0, ip
c0de1b5e:	bf1c      	itt	ne
c0de1b60:	2100      	movne	r1, #0
c0de1b62:	2200      	movne	r2, #0
c0de1b64:	6019      	str	r1, [r3, #0]
c0de1b66:	bf18      	it	ne
c0de1b68:	2002      	movne	r0, #2
c0de1b6a:	809a      	strh	r2, [r3, #4]
c0de1b6c:	4770      	bx	lr

c0de1b6e <parser_getErrorDescription>:
c0de1b6e:	2812      	cmp	r0, #18
c0de1b70:	dc10      	bgt.n	c0de1b94 <parser_getErrorDescription+0x26>
c0de1b72:	280a      	cmp	r0, #10
c0de1b74:	dd1f      	ble.n	c0de1bb6 <parser_getErrorDescription+0x48>
c0de1b76:	280d      	cmp	r0, #13
c0de1b78:	dd3b      	ble.n	c0de1bf2 <parser_getErrorDescription+0x84>
c0de1b7a:	2810      	cmp	r0, #16
c0de1b7c:	dc6c      	bgt.n	c0de1c58 <parser_getErrorDescription+0xea>
c0de1b7e:	280e      	cmp	r0, #14
c0de1b80:	d07e      	beq.n	c0de1c80 <parser_getErrorDescription+0x112>
c0de1b82:	280f      	cmp	r0, #15
c0de1b84:	f040 80dc 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1b88:	f245 2009 	movw	r0, #21001	@ 0x5209
c0de1b8c:	f2c0 0000 	movt	r0, #0
c0de1b90:	4478      	add	r0, pc
c0de1b92:	4770      	bx	lr
c0de1b94:	2818      	cmp	r0, #24
c0de1b96:	dd1d      	ble.n	c0de1bd4 <parser_getErrorDescription+0x66>
c0de1b98:	281b      	cmp	r0, #27
c0de1b9a:	dd37      	ble.n	c0de1c0c <parser_getErrorDescription+0x9e>
c0de1b9c:	281d      	cmp	r0, #29
c0de1b9e:	dc65      	bgt.n	c0de1c6c <parser_getErrorDescription+0xfe>
c0de1ba0:	281c      	cmp	r0, #28
c0de1ba2:	d073      	beq.n	c0de1c8c <parser_getErrorDescription+0x11e>
c0de1ba4:	281d      	cmp	r0, #29
c0de1ba6:	f040 80cb 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1baa:	f245 302b 	movw	r0, #21291	@ 0x532b
c0de1bae:	f2c0 0000 	movt	r0, #0
c0de1bb2:	4478      	add	r0, pc
c0de1bb4:	4770      	bx	lr
c0de1bb6:	2802      	cmp	r0, #2
c0de1bb8:	dc35      	bgt.n	c0de1c26 <parser_getErrorDescription+0xb8>
c0de1bba:	2800      	cmp	r0, #0
c0de1bbc:	d06c      	beq.n	c0de1c98 <parser_getErrorDescription+0x12a>
c0de1bbe:	2801      	cmp	r0, #1
c0de1bc0:	d070      	beq.n	c0de1ca4 <parser_getErrorDescription+0x136>
c0de1bc2:	2802      	cmp	r0, #2
c0de1bc4:	f040 80bc 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1bc8:	f245 30a3 	movw	r0, #21411	@ 0x53a3
c0de1bcc:	f2c0 0000 	movt	r0, #0
c0de1bd0:	4478      	add	r0, pc
c0de1bd2:	4770      	bx	lr
c0de1bd4:	2815      	cmp	r0, #21
c0de1bd6:	dc33      	bgt.n	c0de1c40 <parser_getErrorDescription+0xd2>
c0de1bd8:	2813      	cmp	r0, #19
c0de1bda:	d069      	beq.n	c0de1cb0 <parser_getErrorDescription+0x142>
c0de1bdc:	2814      	cmp	r0, #20
c0de1bde:	d06d      	beq.n	c0de1cbc <parser_getErrorDescription+0x14e>
c0de1be0:	2815      	cmp	r0, #21
c0de1be2:	f040 80ad 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1be6:	f245 00cb 	movw	r0, #20683	@ 0x50cb
c0de1bea:	f2c0 0000 	movt	r0, #0
c0de1bee:	4478      	add	r0, pc
c0de1bf0:	4770      	bx	lr
c0de1bf2:	280b      	cmp	r0, #11
c0de1bf4:	d068      	beq.n	c0de1cc8 <parser_getErrorDescription+0x15a>
c0de1bf6:	280c      	cmp	r0, #12
c0de1bf8:	d06c      	beq.n	c0de1cd4 <parser_getErrorDescription+0x166>
c0de1bfa:	280d      	cmp	r0, #13
c0de1bfc:	f040 80a0 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c00:	f245 009e 	movw	r0, #20638	@ 0x509e
c0de1c04:	f2c0 0000 	movt	r0, #0
c0de1c08:	4478      	add	r0, pc
c0de1c0a:	4770      	bx	lr
c0de1c0c:	2819      	cmp	r0, #25
c0de1c0e:	d067      	beq.n	c0de1ce0 <parser_getErrorDescription+0x172>
c0de1c10:	281a      	cmp	r0, #26
c0de1c12:	d06b      	beq.n	c0de1cec <parser_getErrorDescription+0x17e>
c0de1c14:	281b      	cmp	r0, #27
c0de1c16:	f040 8093 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c1a:	f245 303b 	movw	r0, #21307	@ 0x533b
c0de1c1e:	f2c0 0000 	movt	r0, #0
c0de1c22:	4478      	add	r0, pc
c0de1c24:	4770      	bx	lr
c0de1c26:	2803      	cmp	r0, #3
c0de1c28:	d066      	beq.n	c0de1cf8 <parser_getErrorDescription+0x18a>
c0de1c2a:	2804      	cmp	r0, #4
c0de1c2c:	d06a      	beq.n	c0de1d04 <parser_getErrorDescription+0x196>
c0de1c2e:	2808      	cmp	r0, #8
c0de1c30:	f040 8086 	bne.w	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c34:	f245 405d 	movw	r0, #21597	@ 0x545d
c0de1c38:	f2c0 0000 	movt	r0, #0
c0de1c3c:	4478      	add	r0, pc
c0de1c3e:	4770      	bx	lr
c0de1c40:	2816      	cmp	r0, #22
c0de1c42:	d065      	beq.n	c0de1d10 <parser_getErrorDescription+0x1a2>
c0de1c44:	2817      	cmp	r0, #23
c0de1c46:	d069      	beq.n	c0de1d1c <parser_getErrorDescription+0x1ae>
c0de1c48:	2818      	cmp	r0, #24
c0de1c4a:	d179      	bne.n	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c4c:	f245 203f 	movw	r0, #21055	@ 0x523f
c0de1c50:	f2c0 0000 	movt	r0, #0
c0de1c54:	4478      	add	r0, pc
c0de1c56:	4770      	bx	lr
c0de1c58:	2811      	cmp	r0, #17
c0de1c5a:	d065      	beq.n	c0de1d28 <parser_getErrorDescription+0x1ba>
c0de1c5c:	2812      	cmp	r0, #18
c0de1c5e:	d16f      	bne.n	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c60:	f245 1044 	movw	r0, #20804	@ 0x5144
c0de1c64:	f2c0 0000 	movt	r0, #0
c0de1c68:	4478      	add	r0, pc
c0de1c6a:	4770      	bx	lr
c0de1c6c:	281e      	cmp	r0, #30
c0de1c6e:	d061      	beq.n	c0de1d34 <parser_getErrorDescription+0x1c6>
c0de1c70:	281f      	cmp	r0, #31
c0de1c72:	d165      	bne.n	c0de1d40 <parser_getErrorDescription+0x1d2>
c0de1c74:	f245 006a 	movw	r0, #20586	@ 0x506a
c0de1c78:	f2c0 0000 	movt	r0, #0
c0de1c7c:	4478      	add	r0, pc
c0de1c7e:	4770      	bx	lr
c0de1c80:	f245 30a1 	movw	r0, #21409	@ 0x53a1
c0de1c84:	f2c0 0000 	movt	r0, #0
c0de1c88:	4478      	add	r0, pc
c0de1c8a:	4770      	bx	lr
c0de1c8c:	f245 0040 	movw	r0, #20544	@ 0x5040
c0de1c90:	f2c0 0000 	movt	r0, #0
c0de1c94:	4478      	add	r0, pc
c0de1c96:	4770      	bx	lr
c0de1c98:	f644 7069 	movw	r0, #20329	@ 0x4f69
c0de1c9c:	f2c0 0000 	movt	r0, #0
c0de1ca0:	4478      	add	r0, pc
c0de1ca2:	4770      	bx	lr
c0de1ca4:	f245 20ff 	movw	r0, #21247	@ 0x52ff
c0de1ca8:	f2c0 0000 	movt	r0, #0
c0de1cac:	4478      	add	r0, pc
c0de1cae:	4770      	bx	lr
c0de1cb0:	f245 308d 	movw	r0, #21389	@ 0x538d
c0de1cb4:	f2c0 0000 	movt	r0, #0
c0de1cb8:	4478      	add	r0, pc
c0de1cba:	4770      	bx	lr
c0de1cbc:	f245 30a0 	movw	r0, #21408	@ 0x53a0
c0de1cc0:	f2c0 0000 	movt	r0, #0
c0de1cc4:	4478      	add	r0, pc
c0de1cc6:	4770      	bx	lr
c0de1cc8:	f245 30df 	movw	r0, #21471	@ 0x53df
c0de1ccc:	f2c0 0000 	movt	r0, #0
c0de1cd0:	4478      	add	r0, pc
c0de1cd2:	4770      	bx	lr
c0de1cd4:	f644 70b4 	movw	r0, #20404	@ 0x4fb4
c0de1cd8:	f2c0 0000 	movt	r0, #0
c0de1cdc:	4478      	add	r0, pc
c0de1cde:	4770      	bx	lr
c0de1ce0:	f245 103d 	movw	r0, #20797	@ 0x513d
c0de1ce4:	f2c0 0000 	movt	r0, #0
c0de1ce8:	4478      	add	r0, pc
c0de1cea:	4770      	bx	lr
c0de1cec:	f245 10c6 	movw	r0, #20934	@ 0x51c6
c0de1cf0:	f2c0 0000 	movt	r0, #0
c0de1cf4:	4478      	add	r0, pc
c0de1cf6:	4770      	bx	lr
c0de1cf8:	f245 001a 	movw	r0, #20506	@ 0x501a
c0de1cfc:	f2c0 0000 	movt	r0, #0
c0de1d00:	4478      	add	r0, pc
c0de1d02:	4770      	bx	lr
c0de1d04:	f644 7006 	movw	r0, #20230	@ 0x4f06
c0de1d08:	f2c0 0000 	movt	r0, #0
c0de1d0c:	4478      	add	r0, pc
c0de1d0e:	4770      	bx	lr
c0de1d10:	f245 00ce 	movw	r0, #20686	@ 0x50ce
c0de1d14:	f2c0 0000 	movt	r0, #0
c0de1d18:	4478      	add	r0, pc
c0de1d1a:	4770      	bx	lr
c0de1d1c:	f245 20c7 	movw	r0, #21191	@ 0x52c7
c0de1d20:	f2c0 0000 	movt	r0, #0
c0de1d24:	4478      	add	r0, pc
c0de1d26:	4770      	bx	lr
c0de1d28:	f245 00a5 	movw	r0, #20645	@ 0x50a5
c0de1d2c:	f2c0 0000 	movt	r0, #0
c0de1d30:	4478      	add	r0, pc
c0de1d32:	4770      	bx	lr
c0de1d34:	f245 102f 	movw	r0, #20783	@ 0x512f
c0de1d38:	f2c0 0000 	movt	r0, #0
c0de1d3c:	4478      	add	r0, pc
c0de1d3e:	4770      	bx	lr
c0de1d40:	f245 2070 	movw	r0, #21104	@ 0x5270
c0de1d44:	f2c0 0000 	movt	r0, #0
c0de1d48:	4478      	add	r0, pc
c0de1d4a:	4770      	bx	lr

c0de1d4c <_readTx>:
c0de1d4c:	b5b0      	push	{r4, r5, r7, lr}
c0de1d4e:	f643 15c8 	movw	r5, #14792	@ 0x39c8
c0de1d52:	f2c0 0500 	movt	r5, #0
c0de1d56:	4604      	mov	r4, r0
c0de1d58:	6801      	ldr	r1, [r0, #0]
c0de1d5a:	8882      	ldrh	r2, [r0, #4]
c0de1d5c:	eb09 0005 	add.w	r0, r9, r5
c0de1d60:	3004      	adds	r0, #4
c0de1d62:	f7ff fad7 	bl	c0de1314 <json_parse>
c0de1d66:	b100      	cbz	r0, c0de1d6a <_readTx+0x1e>
c0de1d68:	bdb0      	pop	{r4, r5, r7, pc}
c0de1d6a:	eb09 0205 	add.w	r2, r9, r5
c0de1d6e:	f641 0314 	movw	r3, #6164	@ 0x1814
c0de1d72:	6821      	ldr	r1, [r4, #0]
c0de1d74:	5cd4      	ldrb	r4, [r2, r3]
c0de1d76:	f849 1005 	str.w	r1, [r9, r5]
c0de1d7a:	f004 01fe 	and.w	r1, r4, #254	@ 0xfe
c0de1d7e:	54d1      	strb	r1, [r2, r3]
c0de1d80:	f641 0115 	movw	r1, #6165	@ 0x1815
c0de1d84:	2300      	movs	r3, #0
c0de1d86:	5453      	strb	r3, [r2, r1]
c0de1d88:	f641 011c 	movw	r1, #6172	@ 0x181c
c0de1d8c:	5453      	strb	r3, [r2, r1]
c0de1d8e:	bdb0      	pop	{r4, r5, r7, pc}

c0de1d90 <get_required_root_item>:
c0de1d90:	2802      	cmp	r0, #2
c0de1d92:	dc0a      	bgt.n	c0de1daa <get_required_root_item+0x1a>
c0de1d94:	b1a8      	cbz	r0, c0de1dc2 <get_required_root_item+0x32>
c0de1d96:	2801      	cmp	r0, #1
c0de1d98:	d019      	beq.n	c0de1dce <get_required_root_item+0x3e>
c0de1d9a:	2802      	cmp	r0, #2
c0de1d9c:	d129      	bne.n	c0de1df2 <get_required_root_item+0x62>
c0de1d9e:	f245 0095 	movw	r0, #20629	@ 0x5095
c0de1da2:	f2c0 0000 	movt	r0, #0
c0de1da6:	4478      	add	r0, pc
c0de1da8:	4770      	bx	lr
c0de1daa:	2803      	cmp	r0, #3
c0de1dac:	d015      	beq.n	c0de1dda <get_required_root_item+0x4a>
c0de1dae:	2804      	cmp	r0, #4
c0de1db0:	d019      	beq.n	c0de1de6 <get_required_root_item+0x56>
c0de1db2:	2805      	cmp	r0, #5
c0de1db4:	d11d      	bne.n	c0de1df2 <get_required_root_item+0x62>
c0de1db6:	f644 606e 	movw	r0, #20078	@ 0x4e6e
c0de1dba:	f2c0 0000 	movt	r0, #0
c0de1dbe:	4478      	add	r0, pc
c0de1dc0:	4770      	bx	lr
c0de1dc2:	f644 7032 	movw	r0, #20274	@ 0x4f32
c0de1dc6:	f2c0 0000 	movt	r0, #0
c0de1dca:	4478      	add	r0, pc
c0de1dcc:	4770      	bx	lr
c0de1dce:	f245 300c 	movw	r0, #21260	@ 0x530c
c0de1dd2:	f2c0 0000 	movt	r0, #0
c0de1dd6:	4478      	add	r0, pc
c0de1dd8:	4770      	bx	lr
c0de1dda:	f644 70d8 	movw	r0, #20440	@ 0x4fd8
c0de1dde:	f2c0 0000 	movt	r0, #0
c0de1de2:	4478      	add	r0, pc
c0de1de4:	4770      	bx	lr
c0de1de6:	f245 00e2 	movw	r0, #20706	@ 0x50e2
c0de1dea:	f2c0 0000 	movt	r0, #0
c0de1dee:	4478      	add	r0, pc
c0de1df0:	4770      	bx	lr
c0de1df2:	f245 0008 	movw	r0, #20488	@ 0x5008
c0de1df6:	f2c0 0000 	movt	r0, #0
c0de1dfa:	4478      	add	r0, pc
c0de1dfc:	4770      	bx	lr

c0de1dfe <tx_display_readTx>:
c0de1dfe:	b5b0      	push	{r4, r5, r7, lr}
c0de1e00:	4604      	mov	r4, r0
c0de1e02:	f7ff fe9e 	bl	c0de1b42 <parser_init>
c0de1e06:	4605      	mov	r5, r0
c0de1e08:	f002 f98f 	bl	c0de412a <check_app_canary>
c0de1e0c:	b10d      	cbz	r5, c0de1e12 <tx_display_readTx+0x14>
c0de1e0e:	4628      	mov	r0, r5
c0de1e10:	bdb0      	pop	{r4, r5, r7, pc}
c0de1e12:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1e16:	f2c0 0000 	movt	r0, #0
c0de1e1a:	eb09 0100 	add.w	r1, r9, r0
c0de1e1e:	4620      	mov	r0, r4
c0de1e20:	f7ff ff94 	bl	c0de1d4c <_readTx>
c0de1e24:	4604      	mov	r4, r0
c0de1e26:	f002 f980 	bl	c0de412a <check_app_canary>
c0de1e2a:	4620      	mov	r0, r4
c0de1e2c:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de1e30 <tx_indexRootFields>:
c0de1e30:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e34:	b0d4      	sub	sp, #336	@ 0x150
c0de1e36:	f643 17c8 	movw	r7, #14792	@ 0x39c8
c0de1e3a:	f2c0 0700 	movt	r7, #0
c0de1e3e:	eb09 0007 	add.w	r0, r9, r7
c0de1e42:	f641 0514 	movw	r5, #6164	@ 0x1814
c0de1e46:	5d40      	ldrb	r0, [r0, r5]
c0de1e48:	2600      	movs	r6, #0
c0de1e4a:	07c0      	lsls	r0, r0, #31
c0de1e4c:	f04f 0a00 	mov.w	sl, #0
c0de1e50:	f040 81d5 	bne.w	c0de21fe <tx_indexRootFields+0x3ce>
c0de1e54:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de1e58:	f2c0 0000 	movt	r0, #0
c0de1e5c:	4448      	add	r0, r9
c0de1e5e:	211c      	movs	r1, #28
c0de1e60:	f004 fdd2 	bl	c0de6a08 <explicit_bzero>
c0de1e64:	f10d 0bf0 	add.w	fp, sp, #240	@ 0xf0
c0de1e68:	4658      	mov	r0, fp
c0de1e6a:	2146      	movs	r1, #70	@ 0x46
c0de1e6c:	f004 fdcc 	bl	c0de6a08 <explicit_bzero>
c0de1e70:	f10d 00aa 	add.w	r0, sp, #170	@ 0xaa
c0de1e74:	2146      	movs	r1, #70	@ 0x46
c0de1e76:	f004 fdc7 	bl	c0de6a08 <explicit_bzero>
c0de1e7a:	a819      	add	r0, sp, #100	@ 0x64
c0de1e7c:	2146      	movs	r1, #70	@ 0x46
c0de1e7e:	f004 fdc3 	bl	c0de6a08 <explicit_bzero>
c0de1e82:	f10d 001e 	add.w	r0, sp, #30
c0de1e86:	2146      	movs	r1, #70	@ 0x46
c0de1e88:	f004 fdbe 	bl	c0de6a08 <explicit_bzero>
c0de1e8c:	eb09 0007 	add.w	r0, r9, r7
c0de1e90:	f641 0115 	movw	r1, #6165	@ 0x1815
c0de1e94:	5446      	strb	r6, [r0, r1]
c0de1e96:	5d41      	ldrb	r1, [r0, r5]
c0de1e98:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de1e9c:	f041 0106 	orr.w	r1, r1, #6
c0de1ea0:	5486      	strb	r6, [r0, r2]
c0de1ea2:	5541      	strb	r1, [r0, r5]
c0de1ea4:	f04f 0800 	mov.w	r8, #0
c0de1ea8:	2000      	movs	r0, #0
c0de1eaa:	fa5f f488 	uxtb.w	r4, r8
c0de1eae:	f8ad 013a 	strh.w	r0, [sp, #314]	@ 0x13a
c0de1eb2:	4620      	mov	r0, r4
c0de1eb4:	f7ff ff6c 	bl	c0de1d90 <get_required_root_item>
c0de1eb8:	4602      	mov	r2, r0
c0de1eba:	eb09 0007 	add.w	r0, r9, r7
c0de1ebe:	3004      	adds	r0, #4
c0de1ec0:	2100      	movs	r1, #0
c0de1ec2:	f50d 739d 	add.w	r3, sp, #314	@ 0x13a
c0de1ec6:	9206      	str	r2, [sp, #24]
c0de1ec8:	f7ff fb2e 	bl	c0de1528 <object_get_value>
c0de1ecc:	2801      	cmp	r0, #1
c0de1ece:	f000 813f 	beq.w	c0de2150 <tx_indexRootFields+0x320>
c0de1ed2:	4682      	mov	sl, r0
c0de1ed4:	f002 f929 	bl	c0de412a <check_app_canary>
c0de1ed8:	f1ba 0f00 	cmp.w	sl, #0
c0de1edc:	f040 818f 	bne.w	c0de21fe <tx_indexRootFields+0x3ce>
c0de1ee0:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de1ee4:	f2c0 0000 	movt	r0, #0
c0de1ee8:	4448      	add	r0, r9
c0de1eea:	eb00 0208 	add.w	r2, r0, r8
c0de1eee:	2101      	movs	r1, #1
c0de1ef0:	f802 1b14 	strb.w	r1, [r2], #20
c0de1ef4:	f8bd 113a 	ldrh.w	r1, [sp, #314]	@ 0x13a
c0de1ef8:	eb00 0048 	add.w	r0, r0, r8, lsl #1
c0de1efc:	f820 1f06 	strh.w	r1, [r0, #6]!
c0de1f00:	9004      	str	r0, [sp, #16]
c0de1f02:	f04f 0a00 	mov.w	sl, #0
c0de1f06:	2000      	movs	r0, #0
c0de1f08:	9202      	str	r2, [sp, #8]
c0de1f0a:	9005      	str	r0, [sp, #20]
c0de1f0c:	9403      	str	r4, [sp, #12]
c0de1f0e:	bf00      	nop
c0de1f10:	fa5f f08a 	uxtb.w	r0, sl
c0de1f14:	2800      	cmp	r0, #0
c0de1f16:	f040 810d 	bne.w	c0de2134 <tx_indexRootFields+0x304>
c0de1f1a:	eb09 0007 	add.w	r0, r9, r7
c0de1f1e:	2100      	movs	r1, #0
c0de1f20:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de1f24:	5281      	strh	r1, [r0, r2]
c0de1f26:	4410      	add	r0, r2
c0de1f28:	2c05      	cmp	r4, #5
c0de1f2a:	f04f 0206 	mov.w	r2, #6
c0de1f2e:	70c2      	strb	r2, [r0, #3]
c0de1f30:	d204      	bcs.n	c0de1f3c <tx_indexRootFields+0x10c>
c0de1f32:	2002      	movs	r0, #2
c0de1f34:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de1f38:	e005      	b.n	c0de1f46 <tx_indexRootFields+0x116>
c0de1f3a:	bf00      	nop
c0de1f3c:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de1f40:	bf14      	ite	ne
c0de1f42:	2000      	movne	r0, #0
c0de1f44:	2001      	moveq	r0, #1
c0de1f46:	463e      	mov	r6, r7
c0de1f48:	444f      	add	r7, r9
c0de1f4a:	f641 022a 	movw	r2, #6186	@ 0x182a
c0de1f4e:	f641 042c 	movw	r4, #6188	@ 0x182c
c0de1f52:	54b8      	strb	r0, [r7, r2]
c0de1f54:	5139      	str	r1, [r7, r4]
c0de1f56:	4658      	mov	r0, fp
c0de1f58:	2146      	movs	r1, #70	@ 0x46
c0de1f5a:	f004 fd55 	bl	c0de6a08 <explicit_bzero>
c0de1f5e:	4628      	mov	r0, r5
c0de1f60:	2146      	movs	r1, #70	@ 0x46
c0de1f62:	f004 fd51 	bl	c0de6a08 <explicit_bzero>
c0de1f66:	f641 0030 	movw	r0, #6192	@ 0x1830
c0de1f6a:	f847 b000 	str.w	fp, [r7, r0]
c0de1f6e:	f641 0038 	movw	r0, #6200	@ 0x1838
c0de1f72:	503d      	str	r5, [r7, r0]
c0de1f74:	2046      	movs	r0, #70	@ 0x46
c0de1f76:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de1f7a:	5278      	strh	r0, [r7, r1]
c0de1f7c:	f641 013c 	movw	r1, #6204	@ 0x183c
c0de1f80:	5278      	strh	r0, [r7, r1]
c0de1f82:	9805      	ldr	r0, [sp, #20]
c0de1f84:	2146      	movs	r1, #70	@ 0x46
c0de1f86:	5338      	strh	r0, [r7, r4]
c0de1f88:	4658      	mov	r0, fp
c0de1f8a:	f004 fd3d 	bl	c0de6a08 <explicit_bzero>
c0de1f8e:	9906      	ldr	r1, [sp, #24]
c0de1f90:	4658      	mov	r0, fp
c0de1f92:	2245      	movs	r2, #69	@ 0x45
c0de1f94:	f004 fd9e 	bl	c0de6ad4 <strncpy>
c0de1f98:	9804      	ldr	r0, [sp, #16]
c0de1f9a:	f50d 71a7 	add.w	r1, sp, #334	@ 0x14e
c0de1f9e:	8800      	ldrh	r0, [r0, #0]
c0de1fa0:	f000 fcb6 	bl	c0de2910 <tx_traverse_find>
c0de1fa4:	b118      	cbz	r0, c0de1fae <tx_indexRootFields+0x17e>
c0de1fa6:	9c03      	ldr	r4, [sp, #12]
c0de1fa8:	4682      	mov	sl, r0
c0de1faa:	4637      	mov	r7, r6
c0de1fac:	e7b0      	b.n	c0de1f10 <tx_indexRootFields+0xe0>
c0de1fae:	eb09 0206 	add.w	r2, r9, r6
c0de1fb2:	f641 0138 	movw	r1, #6200	@ 0x1838
c0de1fb6:	f641 033c 	movw	r3, #6204	@ 0x183c
c0de1fba:	f8bd 014e 	ldrh.w	r0, [sp, #334]	@ 0x14e
c0de1fbe:	5851      	ldr	r1, [r2, r1]
c0de1fc0:	5ad2      	ldrh	r2, [r2, r3]
c0de1fc2:	4637      	mov	r7, r6
c0de1fc4:	2300      	movs	r3, #0
c0de1fc6:	f50d 769b 	add.w	r6, sp, #310	@ 0x136
c0de1fca:	9600      	str	r6, [sp, #0]
c0de1fcc:	f000 fc1e 	bl	c0de280c <tx_getToken>
c0de1fd0:	4682      	mov	sl, r0
c0de1fd2:	f002 f8aa 	bl	c0de412a <check_app_canary>
c0de1fd6:	9c03      	ldr	r4, [sp, #12]
c0de1fd8:	f1ba 0f00 	cmp.w	sl, #0
c0de1fdc:	f040 810f 	bne.w	c0de21fe <tx_indexRootFields+0x3ce>
c0de1fe0:	2c03      	cmp	r4, #3
c0de1fe2:	d00e      	beq.n	c0de2002 <tx_indexRootFields+0x1d2>
c0de1fe4:	2c04      	cmp	r4, #4
c0de1fe6:	f040 809b 	bne.w	c0de2120 <tx_indexRootFields+0x2f0>
c0de1fea:	eb09 0007 	add.w	r0, r9, r7
c0de1fee:	f641 0138 	movw	r1, #6200	@ 0x1838
c0de1ff2:	5840      	ldr	r0, [r0, r1]
c0de1ff4:	7800      	ldrb	r0, [r0, #0]
c0de1ff6:	2800      	cmp	r0, #0
c0de1ff8:	f040 8092 	bne.w	c0de2120 <tx_indexRootFields+0x2f0>
c0de1ffc:	f04f 0a13 	mov.w	sl, #19
c0de2000:	e786      	b.n	c0de1f10 <tx_indexRootFields+0xe0>
c0de2002:	eb09 0007 	add.w	r0, r9, r7
c0de2006:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de200a:	f810 a001 	ldrb.w	sl, [r0, r1]
c0de200e:	ea5f 708a 	movs.w	r0, sl, lsl #30
c0de2012:	d547      	bpl.n	c0de20a4 <tx_indexRootFields+0x274>
c0de2014:	f644 615f 	movw	r1, #20063	@ 0x4e5f
c0de2018:	f2c0 0100 	movt	r1, #0
c0de201c:	4658      	mov	r0, fp
c0de201e:	4479      	add	r1, pc
c0de2020:	220a      	movs	r2, #10
c0de2022:	f004 fcf7 	bl	c0de6a14 <memcmp>
c0de2026:	bbe8      	cbnz	r0, c0de20a4 <tx_indexRootFields+0x274>
c0de2028:	eb09 0007 	add.w	r0, r9, r7
c0de202c:	f641 0615 	movw	r6, #6165	@ 0x1815
c0de2030:	5d80      	ldrb	r0, [r0, r6]
c0de2032:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de2036:	b9b0      	cbnz	r0, c0de2066 <tx_indexRootFields+0x236>
c0de2038:	4628      	mov	r0, r5
c0de203a:	f004 fd43 	bl	c0de6ac4 <strlen>
c0de203e:	2845      	cmp	r0, #69	@ 0x45
c0de2040:	f200 8146 	bhi.w	c0de22d0 <tx_indexRootFields+0x4a0>
c0de2044:	f644 42c7 	movw	r2, #19655	@ 0x4cc7
c0de2048:	f2c0 0200 	movt	r2, #0
c0de204c:	a819      	add	r0, sp, #100	@ 0x64
c0de204e:	2146      	movs	r1, #70	@ 0x46
c0de2050:	447a      	add	r2, pc
c0de2052:	462b      	mov	r3, r5
c0de2054:	f004 f8ea 	bl	c0de622c <snprintf>
c0de2058:	9805      	ldr	r0, [sp, #20]
c0de205a:	eb09 0107 	add.w	r1, r9, r7
c0de205e:	b200      	sxth	r0, r0
c0de2060:	f641 0218 	movw	r2, #6168	@ 0x1818
c0de2064:	5088      	str	r0, [r1, r2]
c0de2066:	a819      	add	r0, sp, #100	@ 0x64
c0de2068:	4629      	mov	r1, r5
c0de206a:	f004 fd21 	bl	c0de6ab0 <strcmp>
c0de206e:	b160      	cbz	r0, c0de208a <tx_indexRootFields+0x25a>
c0de2070:	eb09 0007 	add.w	r0, r9, r7
c0de2074:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de2078:	5c81      	ldrb	r1, [r0, r2]
c0de207a:	f641 0315 	movw	r3, #6165	@ 0x1815
c0de207e:	f001 0afd 	and.w	sl, r1, #253	@ 0xfd
c0de2082:	f800 a002 	strb.w	sl, [r0, r2]
c0de2086:	2000      	movs	r0, #0
c0de2088:	e008      	b.n	c0de209c <tx_indexRootFields+0x26c>
c0de208a:	eb09 0107 	add.w	r1, r9, r7
c0de208e:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de2092:	5d88      	ldrb	r0, [r1, r6]
c0de2094:	f811 a002 	ldrb.w	sl, [r1, r2]
c0de2098:	f641 0315 	movw	r3, #6165	@ 0x1815
c0de209c:	3001      	adds	r0, #1
c0de209e:	eb09 0107 	add.w	r1, r9, r7
c0de20a2:	54c8      	strb	r0, [r1, r3]
c0de20a4:	ea5f 704a 	movs.w	r0, sl, lsl #29
c0de20a8:	d53a      	bpl.n	c0de2120 <tx_indexRootFields+0x2f0>
c0de20aa:	f644 71c2 	movw	r1, #20418	@ 0x4fc2
c0de20ae:	f2c0 0100 	movt	r1, #0
c0de20b2:	4658      	mov	r0, fp
c0de20b4:	4479      	add	r1, pc
c0de20b6:	221d      	movs	r2, #29
c0de20b8:	f004 fcac 	bl	c0de6a14 <memcmp>
c0de20bc:	bb80      	cbnz	r0, c0de2120 <tx_indexRootFields+0x2f0>
c0de20be:	eb09 0007 	add.w	r0, r9, r7
c0de20c2:	f641 061c 	movw	r6, #6172	@ 0x181c
c0de20c6:	5d80      	ldrb	r0, [r0, r6]
c0de20c8:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de20cc:	b988      	cbnz	r0, c0de20f2 <tx_indexRootFields+0x2c2>
c0de20ce:	f644 423b 	movw	r2, #19515	@ 0x4c3b
c0de20d2:	f2c0 0200 	movt	r2, #0
c0de20d6:	f10d 001e 	add.w	r0, sp, #30
c0de20da:	2146      	movs	r1, #70	@ 0x46
c0de20dc:	447a      	add	r2, pc
c0de20de:	462b      	mov	r3, r5
c0de20e0:	f004 f8a4 	bl	c0de622c <snprintf>
c0de20e4:	9805      	ldr	r0, [sp, #20]
c0de20e6:	eb09 0107 	add.w	r1, r9, r7
c0de20ea:	b200      	sxth	r0, r0
c0de20ec:	f44f 52c1 	mov.w	r2, #6176	@ 0x1820
c0de20f0:	5088      	str	r0, [r1, r2]
c0de20f2:	f10d 001e 	add.w	r0, sp, #30
c0de20f6:	4629      	mov	r1, r5
c0de20f8:	f004 fcda 	bl	c0de6ab0 <strcmp>
c0de20fc:	b148      	cbz	r0, c0de2112 <tx_indexRootFields+0x2e2>
c0de20fe:	eb09 0007 	add.w	r0, r9, r7
c0de2102:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de2106:	5c81      	ldrb	r1, [r0, r2]
c0de2108:	f001 01fb 	and.w	r1, r1, #251	@ 0xfb
c0de210c:	5481      	strb	r1, [r0, r2]
c0de210e:	2000      	movs	r0, #0
c0de2110:	e002      	b.n	c0de2118 <tx_indexRootFields+0x2e8>
c0de2112:	eb09 0007 	add.w	r0, r9, r7
c0de2116:	5d80      	ldrb	r0, [r0, r6]
c0de2118:	3001      	adds	r0, #1
c0de211a:	eb09 0107 	add.w	r1, r9, r7
c0de211e:	5588      	strb	r0, [r1, r6]
c0de2120:	9902      	ldr	r1, [sp, #8]
c0de2122:	f04f 0a00 	mov.w	sl, #0
c0de2126:	7808      	ldrb	r0, [r1, #0]
c0de2128:	3001      	adds	r0, #1
c0de212a:	7008      	strb	r0, [r1, #0]
c0de212c:	9805      	ldr	r0, [sp, #20]
c0de212e:	3001      	adds	r0, #1
c0de2130:	9005      	str	r0, [sp, #20]
c0de2132:	e6ed      	b.n	c0de1f10 <tx_indexRootFields+0xe0>
c0de2134:	2801      	cmp	r0, #1
c0de2136:	d001      	beq.n	c0de213c <tx_indexRootFields+0x30c>
c0de2138:	2813      	cmp	r0, #19
c0de213a:	d160      	bne.n	c0de21fe <tx_indexRootFields+0x3ce>
c0de213c:	f245 2108 	movw	r1, #21000	@ 0x5208
c0de2140:	9802      	ldr	r0, [sp, #8]
c0de2142:	f2c0 0100 	movt	r1, #0
c0de2146:	4449      	add	r1, r9
c0de2148:	7800      	ldrb	r0, [r0, #0]
c0de214a:	8a4a      	ldrh	r2, [r1, #18]
c0de214c:	4410      	add	r0, r2
c0de214e:	8248      	strh	r0, [r1, #18]
c0de2150:	f108 0801 	add.w	r8, r8, #1
c0de2154:	f1b8 0f06 	cmp.w	r8, #6
c0de2158:	f04f 0000 	mov.w	r0, #0
c0de215c:	f47f aea5 	bne.w	c0de1eaa <tx_indexRootFields+0x7a>
c0de2160:	eb09 0407 	add.w	r4, r9, r7
c0de2164:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de2168:	5c21      	ldrb	r1, [r4, r0]
c0de216a:	f641 0828 	movw	r8, #6184	@ 0x1828
c0de216e:	f041 0101 	orr.w	r1, r1, #1
c0de2172:	5421      	strb	r1, [r4, r0]
c0de2174:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de2178:	f2c0 0000 	movt	r0, #0
c0de217c:	eb09 0500 	add.w	r5, r9, r0
c0de2180:	2000      	movs	r0, #0
c0de2182:	f2c0 6002 	movt	r0, #1538	@ 0x602
c0de2186:	f50d 7ba7 	add.w	fp, sp, #334	@ 0x14e
c0de218a:	2600      	movs	r6, #0
c0de218c:	f844 0008 	str.w	r0, [r4, r8]
c0de2190:	eb04 0708 	add.w	r7, r4, r8
c0de2194:	4658      	mov	r0, fp
c0de2196:	2102      	movs	r1, #2
c0de2198:	76ae      	strb	r6, [r5, #26]
c0de219a:	607e      	str	r6, [r7, #4]
c0de219c:	f004 fc34 	bl	c0de6a08 <explicit_bzero>
c0de21a0:	f50d 7a9d 	add.w	sl, sp, #314	@ 0x13a
c0de21a4:	4650      	mov	r0, sl
c0de21a6:	2114      	movs	r1, #20
c0de21a8:	f004 fc2e 	bl	c0de6a08 <explicit_bzero>
c0de21ac:	2002      	movs	r0, #2
c0de21ae:	81b8      	strh	r0, [r7, #12]
c0de21b0:	2014      	movs	r0, #20
c0de21b2:	82b8      	strh	r0, [r7, #20]
c0de21b4:	88e8      	ldrh	r0, [r5, #6]
c0de21b6:	f50d 719b 	add.w	r1, sp, #310	@ 0x136
c0de21ba:	f8c7 b008 	str.w	fp, [r7, #8]
c0de21be:	f8c7 a010 	str.w	sl, [r7, #16]
c0de21c2:	80be      	strh	r6, [r7, #4]
c0de21c4:	f824 6008 	strh.w	r6, [r4, r8]
c0de21c8:	f000 fba2 	bl	c0de2910 <tx_traverse_find>
c0de21cc:	4682      	mov	sl, r0
c0de21ce:	f001 ffac 	bl	c0de412a <check_app_canary>
c0de21d2:	f1ba 0f00 	cmp.w	sl, #0
c0de21d6:	d110      	bne.n	c0de21fa <tx_indexRootFields+0x3ca>
c0de21d8:	f8bd 0136 	ldrh.w	r0, [sp, #310]	@ 0x136
c0de21dc:	f20d 1739 	addw	r7, sp, #313	@ 0x139
c0de21e0:	f50d 719d 	add.w	r1, sp, #314	@ 0x13a
c0de21e4:	2214      	movs	r2, #20
c0de21e6:	2300      	movs	r3, #0
c0de21e8:	9700      	str	r7, [sp, #0]
c0de21ea:	f000 fb0f 	bl	c0de280c <tx_getToken>
c0de21ee:	4682      	mov	sl, r0
c0de21f0:	f001 ff9b 	bl	c0de412a <check_app_canary>
c0de21f4:	f1ba 0f00 	cmp.w	sl, #0
c0de21f8:	d006      	beq.n	c0de2208 <tx_indexRootFields+0x3d8>
c0de21fa:	f001 ff96 	bl	c0de412a <check_app_canary>
c0de21fe:	fa5f f08a 	uxtb.w	r0, sl
c0de2202:	b054      	add	sp, #336	@ 0x150
c0de2204:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2208:	f50d 749d 	add.w	r4, sp, #314	@ 0x13a
c0de220c:	4620      	mov	r0, r4
c0de220e:	f001 ff9a 	bl	c0de4146 <zemu_log_stack>
c0de2212:	f644 466d 	movw	r6, #19565	@ 0x4c6d
c0de2216:	f2c0 0600 	movt	r6, #0
c0de221a:	447e      	add	r6, pc
c0de221c:	4630      	mov	r0, r6
c0de221e:	f001 ff92 	bl	c0de4146 <zemu_log_stack>
c0de2222:	4620      	mov	r0, r4
c0de2224:	4631      	mov	r1, r6
c0de2226:	220c      	movs	r2, #12
c0de2228:	f004 fbf4 	bl	c0de6a14 <memcmp>
c0de222c:	b128      	cbz	r0, c0de223a <tx_indexRootFields+0x40a>
c0de222e:	f644 3017 	movw	r0, #19223	@ 0x4b17
c0de2232:	f2c0 0000 	movt	r0, #0
c0de2236:	4478      	add	r0, pc
c0de2238:	e00b      	b.n	c0de2252 <tx_indexRootFields+0x422>
c0de223a:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de223e:	f2c0 0000 	movt	r0, #0
c0de2242:	4448      	add	r0, r9
c0de2244:	2101      	movs	r1, #1
c0de2246:	7681      	strb	r1, [r0, #26]
c0de2248:	f644 20e5 	movw	r0, #19173	@ 0x4ae5
c0de224c:	f2c0 0000 	movt	r0, #0
c0de2250:	4478      	add	r0, pc
c0de2252:	f643 15c8 	movw	r5, #14792	@ 0x39c8
c0de2256:	f2c0 0500 	movt	r5, #0
c0de225a:	f001 ff74 	bl	c0de4146 <zemu_log_stack>
c0de225e:	f001 ff64 	bl	c0de412a <check_app_canary>
c0de2262:	f001 fd1d 	bl	c0de3ca0 <app_mode_expert>
c0de2266:	b960      	cbnz	r0, c0de2282 <tx_indexRootFields+0x452>
c0de2268:	f7ff fde2 	bl	c0de1e30 <tx_indexRootFields>
c0de226c:	4604      	mov	r4, r0
c0de226e:	f001 ff5c 	bl	c0de412a <check_app_canary>
c0de2272:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de2276:	f2c0 0000 	movt	r0, #0
c0de227a:	4448      	add	r0, r9
c0de227c:	7e80      	ldrb	r0, [r0, #26]
c0de227e:	4320      	orrs	r0, r4
c0de2280:	d107      	bne.n	c0de2292 <tx_indexRootFields+0x462>
c0de2282:	eb09 0005 	add.w	r0, r9, r5
c0de2286:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de228a:	5c40      	ldrb	r0, [r0, r1]
c0de228c:	f020 0404 	bic.w	r4, r0, #4
c0de2290:	e004      	b.n	c0de229c <tx_indexRootFields+0x46c>
c0de2292:	eb09 0005 	add.w	r0, r9, r5
c0de2296:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de229a:	5c44      	ldrb	r4, [r0, r1]
c0de229c:	eb09 0205 	add.w	r2, r9, r5
c0de22a0:	f641 0024 	movw	r0, #6180	@ 0x1824
c0de22a4:	5810      	ldr	r0, [r2, r0]
c0de22a6:	f004 01f7 	and.w	r1, r4, #247	@ 0xf7
c0de22aa:	f641 0314 	movw	r3, #6164	@ 0x1814
c0de22ae:	54d1      	strb	r1, [r2, r3]
c0de22b0:	b158      	cbz	r0, c0de22ca <tx_indexRootFields+0x49a>
c0de22b2:	f10d 011e 	add.w	r1, sp, #30
c0de22b6:	f004 fbfb 	bl	c0de6ab0 <strcmp>
c0de22ba:	b930      	cbnz	r0, c0de22ca <tx_indexRootFields+0x49a>
c0de22bc:	f044 0008 	orr.w	r0, r4, #8
c0de22c0:	eb09 0105 	add.w	r1, r9, r5
c0de22c4:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de22c8:	5488      	strb	r0, [r1, r2]
c0de22ca:	f04f 0a00 	mov.w	sl, #0
c0de22ce:	e796      	b.n	c0de21fe <tx_indexRootFields+0x3ce>
c0de22d0:	f04f 0a06 	mov.w	sl, #6
c0de22d4:	e793      	b.n	c0de21fe <tx_indexRootFields+0x3ce>

c0de22d6 <tx_is_expert_mode>:
c0de22d6:	b510      	push	{r4, lr}
c0de22d8:	f001 fce2 	bl	c0de3ca0 <app_mode_expert>
c0de22dc:	b108      	cbz	r0, c0de22e2 <tx_is_expert_mode+0xc>
c0de22de:	2001      	movs	r0, #1
c0de22e0:	bd10      	pop	{r4, pc}
c0de22e2:	f7ff fda5 	bl	c0de1e30 <tx_indexRootFields>
c0de22e6:	4604      	mov	r4, r0
c0de22e8:	f001 ff1f 	bl	c0de412a <check_app_canary>
c0de22ec:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de22f0:	f2c0 0000 	movt	r0, #0
c0de22f4:	4448      	add	r0, r9
c0de22f6:	7e80      	ldrb	r0, [r0, #26]
c0de22f8:	4320      	orrs	r0, r4
c0de22fa:	fab0 f080 	clz	r0, r0
c0de22fe:	0940      	lsrs	r0, r0, #5
c0de2300:	bd10      	pop	{r4, pc}
	...

c0de2304 <tx_display_numItems>:
c0de2304:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2308:	2600      	movs	r6, #0
c0de230a:	4604      	mov	r4, r0
c0de230c:	7006      	strb	r6, [r0, #0]
c0de230e:	f7ff fd8f 	bl	c0de1e30 <tx_indexRootFields>
c0de2312:	4605      	mov	r5, r0
c0de2314:	f001 ff09 	bl	c0de412a <check_app_canary>
c0de2318:	2d00      	cmp	r5, #0
c0de231a:	d16b      	bne.n	c0de23f4 <tx_display_numItems+0xf0>
c0de231c:	f245 2708 	movw	r7, #21000	@ 0x5208
c0de2320:	f2c0 0700 	movt	r7, #0
c0de2324:	f641 0b15 	movw	fp, #6165	@ 0x1815
c0de2328:	f04f 0800 	mov.w	r8, #0
c0de232c:	7026      	strb	r6, [r4, #0]
c0de232e:	bf00      	nop
c0de2330:	f7ff fd7e 	bl	c0de1e30 <tx_indexRootFields>
c0de2334:	4605      	mov	r5, r0
c0de2336:	f001 fef8 	bl	c0de412a <check_app_canary>
c0de233a:	bb6d      	cbnz	r5, c0de2398 <tx_display_numItems+0x94>
c0de233c:	eb09 0007 	add.w	r0, r9, r7
c0de2340:	8a40      	ldrh	r0, [r0, #18]
c0de2342:	b1a8      	cbz	r0, c0de2370 <tx_display_numItems+0x6c>
c0de2344:	eb09 0007 	add.w	r0, r9, r7
c0de2348:	4430      	add	r0, r6
c0de234a:	f890 a014 	ldrb.w	sl, [r0, #20]
c0de234e:	f008 007f 	and.w	r0, r8, #127	@ 0x7f
c0de2352:	2803      	cmp	r0, #3
c0de2354:	d20e      	bcs.n	c0de2374 <tx_display_numItems+0x70>
c0de2356:	f001 fca3 	bl	c0de3ca0 <app_mode_expert>
c0de235a:	b9d8      	cbnz	r0, c0de2394 <tx_display_numItems+0x90>
c0de235c:	f7ff fd68 	bl	c0de1e30 <tx_indexRootFields>
c0de2360:	4605      	mov	r5, r0
c0de2362:	f001 fee2 	bl	c0de412a <check_app_canary>
c0de2366:	eb09 0007 	add.w	r0, r9, r7
c0de236a:	7e80      	ldrb	r0, [r0, #26]
c0de236c:	4328      	orrs	r0, r5
c0de236e:	d011      	beq.n	c0de2394 <tx_display_numItems+0x90>
c0de2370:	2500      	movs	r5, #0
c0de2372:	e011      	b.n	c0de2398 <tx_display_numItems+0x94>
c0de2374:	d019      	beq.n	c0de23aa <tx_display_numItems+0xa6>
c0de2376:	2805      	cmp	r0, #5
c0de2378:	d10c      	bne.n	c0de2394 <tx_display_numItems+0x90>
c0de237a:	f001 fc91 	bl	c0de3ca0 <app_mode_expert>
c0de237e:	b948      	cbnz	r0, c0de2394 <tx_display_numItems+0x90>
c0de2380:	f7ff fd56 	bl	c0de1e30 <tx_indexRootFields>
c0de2384:	4605      	mov	r5, r0
c0de2386:	f001 fed0 	bl	c0de412a <check_app_canary>
c0de238a:	eb09 0007 	add.w	r0, r9, r7
c0de238e:	7e80      	ldrb	r0, [r0, #26]
c0de2390:	4328      	orrs	r0, r5
c0de2392:	d12b      	bne.n	c0de23ec <tx_display_numItems+0xe8>
c0de2394:	4655      	mov	r5, sl
c0de2396:	bf00      	nop
c0de2398:	7820      	ldrb	r0, [r4, #0]
c0de239a:	3601      	adds	r6, #1
c0de239c:	4428      	add	r0, r5
c0de239e:	2e06      	cmp	r6, #6
c0de23a0:	f108 0801 	add.w	r8, r8, #1
c0de23a4:	7020      	strb	r0, [r4, #0]
c0de23a6:	d1c3      	bne.n	c0de2330 <tx_display_numItems+0x2c>
c0de23a8:	e023      	b.n	c0de23f2 <tx_display_numItems+0xee>
c0de23aa:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de23ae:	f2c0 0000 	movt	r0, #0
c0de23b2:	eb09 0100 	add.w	r1, r9, r0
c0de23b6:	f811 200b 	ldrb.w	r2, [r1, fp]
c0de23ba:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de23be:	5c08      	ldrb	r0, [r1, r0]
c0de23c0:	2a00      	cmp	r2, #0
c0de23c2:	4655      	mov	r5, sl
c0de23c4:	ebaa 0302 	sub.w	r3, sl, r2
c0de23c8:	bf18      	it	ne
c0de23ca:	1c5d      	addne	r5, r3, #1
c0de23cc:	0782      	lsls	r2, r0, #30
c0de23ce:	bf58      	it	pl
c0de23d0:	4655      	movpl	r5, sl
c0de23d2:	0742      	lsls	r2, r0, #29
c0de23d4:	d5e0      	bpl.n	c0de2398 <tx_display_numItems+0x94>
c0de23d6:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de23da:	5c89      	ldrb	r1, [r1, r2]
c0de23dc:	2900      	cmp	r1, #0
c0de23de:	d0db      	beq.n	c0de2398 <tx_display_numItems+0x94>
c0de23e0:	2201      	movs	r2, #1
c0de23e2:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de23e6:	1a40      	subs	r0, r0, r1
c0de23e8:	4405      	add	r5, r0
c0de23ea:	e7d5      	b.n	c0de2398 <tx_display_numItems+0x94>
c0de23ec:	f1aa 0501 	sub.w	r5, sl, #1
c0de23f0:	e7d2      	b.n	c0de2398 <tx_display_numItems+0x94>
c0de23f2:	2500      	movs	r5, #0
c0de23f4:	4628      	mov	r0, r5
c0de23f6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de23fc <tx_display_query>:
c0de23fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2400:	b086      	sub	sp, #24
c0de2402:	4698      	mov	r8, r3
c0de2404:	4616      	mov	r6, r2
c0de2406:	460f      	mov	r7, r1
c0de2408:	4682      	mov	sl, r0
c0de240a:	f7ff fd11 	bl	c0de1e30 <tx_indexRootFields>
c0de240e:	4604      	mov	r4, r0
c0de2410:	f001 fe8b 	bl	c0de412a <check_app_canary>
c0de2414:	2c00      	cmp	r4, #0
c0de2416:	f040 81bf 	bne.w	c0de2798 <tx_display_query+0x39c>
c0de241a:	f10d 0017 	add.w	r0, sp, #23
c0de241e:	f7ff ff71 	bl	c0de2304 <tx_display_numItems>
c0de2422:	4604      	mov	r4, r0
c0de2424:	f001 fe81 	bl	c0de412a <check_app_canary>
c0de2428:	2c00      	cmp	r4, #0
c0de242a:	f040 81b5 	bne.w	c0de2798 <tx_display_query+0x39c>
c0de242e:	f89d 0017 	ldrb.w	r0, [sp, #23]
c0de2432:	4550      	cmp	r0, sl
c0de2434:	f240 8145 	bls.w	c0de26c2 <tx_display_query+0x2c6>
c0de2438:	f7ff fcfa 	bl	c0de1e30 <tx_indexRootFields>
c0de243c:	4604      	mov	r4, r0
c0de243e:	f001 fe74 	bl	c0de412a <check_app_canary>
c0de2442:	f245 2508 	movw	r5, #21000	@ 0x5208
c0de2446:	2c00      	cmp	r4, #0
c0de2448:	f2c0 0500 	movt	r5, #0
c0de244c:	e9cd 8601 	strd	r8, r6, [sp, #4]
c0de2450:	f04f 0800 	mov.w	r8, #0
c0de2454:	9703      	str	r7, [sp, #12]
c0de2456:	d15b      	bne.n	c0de2510 <tx_display_query+0x114>
c0de2458:	f641 0714 	movw	r7, #6164	@ 0x1814
c0de245c:	f641 0615 	movw	r6, #6165	@ 0x1815
c0de2460:	eb09 0005 	add.w	r0, r9, r5
c0de2464:	8a40      	ldrh	r0, [r0, #18]
c0de2466:	2800      	cmp	r0, #0
c0de2468:	d049      	beq.n	c0de24fe <tx_display_query+0x102>
c0de246a:	fa5f f088 	uxtb.w	r0, r8
c0de246e:	eb09 0105 	add.w	r1, r9, r5
c0de2472:	4401      	add	r1, r0
c0de2474:	f891 b014 	ldrb.w	fp, [r1, #20]
c0de2478:	2803      	cmp	r0, #3
c0de247a:	d20d      	bcs.n	c0de2498 <tx_display_query+0x9c>
c0de247c:	f001 fc10 	bl	c0de3ca0 <app_mode_expert>
c0de2480:	bbd0      	cbnz	r0, c0de24f8 <tx_display_query+0xfc>
c0de2482:	f7ff fcd5 	bl	c0de1e30 <tx_indexRootFields>
c0de2486:	4604      	mov	r4, r0
c0de2488:	f001 fe4f 	bl	c0de412a <check_app_canary>
c0de248c:	eb09 0005 	add.w	r0, r9, r5
c0de2490:	7e80      	ldrb	r0, [r0, #26]
c0de2492:	4320      	orrs	r0, r4
c0de2494:	d030      	beq.n	c0de24f8 <tx_display_query+0xfc>
c0de2496:	e032      	b.n	c0de24fe <tx_display_query+0x102>
c0de2498:	d011      	beq.n	c0de24be <tx_display_query+0xc2>
c0de249a:	2805      	cmp	r0, #5
c0de249c:	d12c      	bne.n	c0de24f8 <tx_display_query+0xfc>
c0de249e:	f001 fbff 	bl	c0de3ca0 <app_mode_expert>
c0de24a2:	bb48      	cbnz	r0, c0de24f8 <tx_display_query+0xfc>
c0de24a4:	f7ff fcc4 	bl	c0de1e30 <tx_indexRootFields>
c0de24a8:	4604      	mov	r4, r0
c0de24aa:	f001 fe3e 	bl	c0de412a <check_app_canary>
c0de24ae:	eb09 0005 	add.w	r0, r9, r5
c0de24b2:	7e80      	ldrb	r0, [r0, #26]
c0de24b4:	4320      	orrs	r0, r4
c0de24b6:	bf18      	it	ne
c0de24b8:	f1ab 0b01 	subne.w	fp, fp, #1
c0de24bc:	e01c      	b.n	c0de24f8 <tx_display_query+0xfc>
c0de24be:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de24c2:	f2c0 0000 	movt	r0, #0
c0de24c6:	eb09 0100 	add.w	r1, r9, r0
c0de24ca:	5d8a      	ldrb	r2, [r1, r6]
c0de24cc:	5dc8      	ldrb	r0, [r1, r7]
c0de24ce:	ebab 0302 	sub.w	r3, fp, r2
c0de24d2:	2a00      	cmp	r2, #0
c0de24d4:	465a      	mov	r2, fp
c0de24d6:	bf18      	it	ne
c0de24d8:	1c5a      	addne	r2, r3, #1
c0de24da:	0783      	lsls	r3, r0, #30
c0de24dc:	bf48      	it	mi
c0de24de:	4693      	movmi	fp, r2
c0de24e0:	0742      	lsls	r2, r0, #29
c0de24e2:	d509      	bpl.n	c0de24f8 <tx_display_query+0xfc>
c0de24e4:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de24e8:	5c89      	ldrb	r1, [r1, r2]
c0de24ea:	b129      	cbz	r1, c0de24f8 <tx_display_query+0xfc>
c0de24ec:	2201      	movs	r2, #1
c0de24ee:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de24f2:	1a40      	subs	r0, r0, r1
c0de24f4:	4483      	add	fp, r0
c0de24f6:	bf00      	nop
c0de24f8:	ea5f 600b 	movs.w	r0, fp, lsl #24
c0de24fc:	d108      	bne.n	c0de2510 <tx_display_query+0x114>
c0de24fe:	f108 0801 	add.w	r8, r8, #1
c0de2502:	f7ff fc95 	bl	c0de1e30 <tx_indexRootFields>
c0de2506:	4604      	mov	r4, r0
c0de2508:	f001 fe0f 	bl	c0de412a <check_app_canary>
c0de250c:	2c00      	cmp	r4, #0
c0de250e:	d0a7      	beq.n	c0de2460 <tx_display_query+0x64>
c0de2510:	fa5f f08a 	uxtb.w	r0, sl
c0de2514:	2600      	movs	r6, #0
c0de2516:	2800      	cmp	r0, #0
c0de2518:	9004      	str	r0, [sp, #16]
c0de251a:	f000 80d4 	beq.w	c0de26c6 <tx_display_query+0x2ca>
c0de251e:	46c3      	mov	fp, r8
c0de2520:	f04f 0a00 	mov.w	sl, #0
c0de2524:	f7ff fc84 	bl	c0de1e30 <tx_indexRootFields>
c0de2528:	4607      	mov	r7, r0
c0de252a:	f001 fdfe 	bl	c0de412a <check_app_canary>
c0de252e:	bb6f      	cbnz	r7, c0de258c <tx_display_query+0x190>
c0de2530:	eb09 0005 	add.w	r0, r9, r5
c0de2534:	8a40      	ldrh	r0, [r0, #18]
c0de2536:	b388      	cbz	r0, c0de259c <tx_display_query+0x1a0>
c0de2538:	fa5f f08b 	uxtb.w	r0, fp
c0de253c:	eb09 0105 	add.w	r1, r9, r5
c0de2540:	4401      	add	r1, r0
c0de2542:	7d0c      	ldrb	r4, [r1, #20]
c0de2544:	2803      	cmp	r0, #3
c0de2546:	d20e      	bcs.n	c0de2566 <tx_display_query+0x16a>
c0de2548:	f001 fbaa 	bl	c0de3ca0 <app_mode_expert>
c0de254c:	b9e8      	cbnz	r0, c0de258a <tx_display_query+0x18e>
c0de254e:	f7ff fc6f 	bl	c0de1e30 <tx_indexRootFields>
c0de2552:	4607      	mov	r7, r0
c0de2554:	f001 fde9 	bl	c0de412a <check_app_canary>
c0de2558:	eb09 0005 	add.w	r0, r9, r5
c0de255c:	7e80      	ldrb	r0, [r0, #26]
c0de255e:	4338      	orrs	r0, r7
c0de2560:	d013      	beq.n	c0de258a <tx_display_query+0x18e>
c0de2562:	2700      	movs	r7, #0
c0de2564:	e012      	b.n	c0de258c <tx_display_query+0x190>
c0de2566:	f000 8086 	beq.w	c0de2676 <tx_display_query+0x27a>
c0de256a:	2805      	cmp	r0, #5
c0de256c:	d10d      	bne.n	c0de258a <tx_display_query+0x18e>
c0de256e:	f001 fb97 	bl	c0de3ca0 <app_mode_expert>
c0de2572:	b950      	cbnz	r0, c0de258a <tx_display_query+0x18e>
c0de2574:	f7ff fc5c 	bl	c0de1e30 <tx_indexRootFields>
c0de2578:	4607      	mov	r7, r0
c0de257a:	f001 fdd6 	bl	c0de412a <check_app_canary>
c0de257e:	eb09 0005 	add.w	r0, r9, r5
c0de2582:	7e80      	ldrb	r0, [r0, #26]
c0de2584:	4338      	orrs	r0, r7
c0de2586:	f040 809a 	bne.w	c0de26be <tx_display_query+0x2c2>
c0de258a:	4627      	mov	r7, r4
c0de258c:	3601      	adds	r6, #1
c0de258e:	b2f8      	uxtb	r0, r7
c0de2590:	b2f1      	uxtb	r1, r6
c0de2592:	4281      	cmp	r1, r0
c0de2594:	d202      	bcs.n	c0de259c <tx_display_query+0x1a0>
c0de2596:	46d8      	mov	r8, fp
c0de2598:	e063      	b.n	c0de2662 <tx_display_query+0x266>
c0de259a:	bf00      	nop
c0de259c:	f643 17c8 	movw	r7, #14792	@ 0x39c8
c0de25a0:	f2c0 0700 	movt	r7, #0
c0de25a4:	f10b 0801 	add.w	r8, fp, #1
c0de25a8:	f7ff fc42 	bl	c0de1e30 <tx_indexRootFields>
c0de25ac:	4604      	mov	r4, r0
c0de25ae:	f001 fdbc 	bl	c0de412a <check_app_canary>
c0de25b2:	2c00      	cmp	r4, #0
c0de25b4:	d154      	bne.n	c0de2660 <tx_display_query+0x264>
c0de25b6:	eb09 0005 	add.w	r0, r9, r5
c0de25ba:	8a40      	ldrh	r0, [r0, #18]
c0de25bc:	b340      	cbz	r0, c0de2610 <tx_display_query+0x214>
c0de25be:	fa5f f088 	uxtb.w	r0, r8
c0de25c2:	eb09 0105 	add.w	r1, r9, r5
c0de25c6:	4408      	add	r0, r1
c0de25c8:	7d06      	ldrb	r6, [r0, #20]
c0de25ca:	fa5f f08b 	uxtb.w	r0, fp
c0de25ce:	2803      	cmp	r0, #3
c0de25d0:	dc20      	bgt.n	c0de2614 <tx_display_query+0x218>
c0de25d2:	2802      	cmp	r0, #2
c0de25d4:	d322      	bcc.n	c0de261c <tx_display_query+0x220>
c0de25d6:	d13f      	bne.n	c0de2658 <tx_display_query+0x25c>
c0de25d8:	eb09 0107 	add.w	r1, r9, r7
c0de25dc:	f641 0015 	movw	r0, #6165	@ 0x1815
c0de25e0:	5c0a      	ldrb	r2, [r1, r0]
c0de25e2:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de25e6:	5c08      	ldrb	r0, [r1, r0]
c0de25e8:	1ab3      	subs	r3, r6, r2
c0de25ea:	2a00      	cmp	r2, #0
c0de25ec:	4632      	mov	r2, r6
c0de25ee:	bf18      	it	ne
c0de25f0:	1c5a      	addne	r2, r3, #1
c0de25f2:	0783      	lsls	r3, r0, #30
c0de25f4:	bf48      	it	mi
c0de25f6:	4616      	movmi	r6, r2
c0de25f8:	0742      	lsls	r2, r0, #29
c0de25fa:	d52d      	bpl.n	c0de2658 <tx_display_query+0x25c>
c0de25fc:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de2600:	5c89      	ldrb	r1, [r1, r2]
c0de2602:	b349      	cbz	r1, c0de2658 <tx_display_query+0x25c>
c0de2604:	2201      	movs	r2, #1
c0de2606:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de260a:	1a40      	subs	r0, r0, r1
c0de260c:	4406      	add	r6, r0
c0de260e:	e023      	b.n	c0de2658 <tx_display_query+0x25c>
c0de2610:	2000      	movs	r0, #0
c0de2612:	e022      	b.n	c0de265a <tx_display_query+0x25e>
c0de2614:	2804      	cmp	r0, #4
c0de2616:	d010      	beq.n	c0de263a <tx_display_query+0x23e>
c0de2618:	28ff      	cmp	r0, #255	@ 0xff
c0de261a:	d11d      	bne.n	c0de2658 <tx_display_query+0x25c>
c0de261c:	f001 fb40 	bl	c0de3ca0 <app_mode_expert>
c0de2620:	b9d0      	cbnz	r0, c0de2658 <tx_display_query+0x25c>
c0de2622:	f7ff fc05 	bl	c0de1e30 <tx_indexRootFields>
c0de2626:	4604      	mov	r4, r0
c0de2628:	f001 fd7f 	bl	c0de412a <check_app_canary>
c0de262c:	eb09 0005 	add.w	r0, r9, r5
c0de2630:	7e80      	ldrb	r0, [r0, #26]
c0de2632:	4320      	orrs	r0, r4
c0de2634:	bf18      	it	ne
c0de2636:	2600      	movne	r6, #0
c0de2638:	e00e      	b.n	c0de2658 <tx_display_query+0x25c>
c0de263a:	f001 fb31 	bl	c0de3ca0 <app_mode_expert>
c0de263e:	b958      	cbnz	r0, c0de2658 <tx_display_query+0x25c>
c0de2640:	f7ff fbf6 	bl	c0de1e30 <tx_indexRootFields>
c0de2644:	4604      	mov	r4, r0
c0de2646:	f001 fd70 	bl	c0de412a <check_app_canary>
c0de264a:	eb09 0005 	add.w	r0, r9, r5
c0de264e:	7e80      	ldrb	r0, [r0, #26]
c0de2650:	4320      	orrs	r0, r4
c0de2652:	bf18      	it	ne
c0de2654:	3e01      	subne	r6, #1
c0de2656:	bf00      	nop
c0de2658:	b2f0      	uxtb	r0, r6
c0de265a:	2800      	cmp	r0, #0
c0de265c:	46c3      	mov	fp, r8
c0de265e:	d0a1      	beq.n	c0de25a4 <tx_display_query+0x1a8>
c0de2660:	2600      	movs	r6, #0
c0de2662:	f10a 0a01 	add.w	sl, sl, #1
c0de2666:	9904      	ldr	r1, [sp, #16]
c0de2668:	fa1f f08a 	uxth.w	r0, sl
c0de266c:	4288      	cmp	r0, r1
c0de266e:	46c3      	mov	fp, r8
c0de2670:	f4ff af58 	bcc.w	c0de2524 <tx_display_query+0x128>
c0de2674:	e027      	b.n	c0de26c6 <tx_display_query+0x2ca>
c0de2676:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de267a:	f2c0 0000 	movt	r0, #0
c0de267e:	eb09 0100 	add.w	r1, r9, r0
c0de2682:	f641 0015 	movw	r0, #6165	@ 0x1815
c0de2686:	5c0a      	ldrb	r2, [r1, r0]
c0de2688:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de268c:	5c08      	ldrb	r0, [r1, r0]
c0de268e:	2a00      	cmp	r2, #0
c0de2690:	4627      	mov	r7, r4
c0de2692:	eba4 0302 	sub.w	r3, r4, r2
c0de2696:	bf18      	it	ne
c0de2698:	1c5f      	addne	r7, r3, #1
c0de269a:	0782      	lsls	r2, r0, #30
c0de269c:	bf58      	it	pl
c0de269e:	4627      	movpl	r7, r4
c0de26a0:	0742      	lsls	r2, r0, #29
c0de26a2:	f57f af73 	bpl.w	c0de258c <tx_display_query+0x190>
c0de26a6:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de26aa:	5c89      	ldrb	r1, [r1, r2]
c0de26ac:	2900      	cmp	r1, #0
c0de26ae:	f43f af6d 	beq.w	c0de258c <tx_display_query+0x190>
c0de26b2:	2201      	movs	r2, #1
c0de26b4:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de26b8:	1a40      	subs	r0, r0, r1
c0de26ba:	4407      	add	r7, r0
c0de26bc:	e766      	b.n	c0de258c <tx_display_query+0x190>
c0de26be:	1e67      	subs	r7, r4, #1
c0de26c0:	e764      	b.n	c0de258c <tx_display_query+0x190>
c0de26c2:	2403      	movs	r4, #3
c0de26c4:	e068      	b.n	c0de2798 <tx_display_query+0x39c>
c0de26c6:	fa5f f788 	uxtb.w	r7, r8
c0de26ca:	f001 fd2e 	bl	c0de412a <check_app_canary>
c0de26ce:	2f06      	cmp	r7, #6
c0de26d0:	d861      	bhi.n	c0de2796 <tx_display_query+0x39a>
c0de26d2:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de26d6:	f2c0 0200 	movt	r2, #0
c0de26da:	eb09 0002 	add.w	r0, r9, r2
c0de26de:	f641 0328 	movw	r3, #6184	@ 0x1828
c0de26e2:	2400      	movs	r4, #0
c0de26e4:	52c4      	strh	r4, [r0, r3]
c0de26e6:	4418      	add	r0, r3
c0de26e8:	2106      	movs	r1, #6
c0de26ea:	70c1      	strb	r1, [r0, #3]
c0de26ec:	2f05      	cmp	r7, #5
c0de26ee:	f04f 0002 	mov.w	r0, #2
c0de26f2:	d306      	bcc.n	c0de2702 <tx_display_query+0x306>
c0de26f4:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de26f8:	f2c0 0200 	movt	r2, #0
c0de26fc:	bf14      	ite	ne
c0de26fe:	2000      	movne	r0, #0
c0de2700:	2001      	moveq	r0, #1
c0de2702:	eb09 0102 	add.w	r1, r9, r2
c0de2706:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de270a:	f8dd b008 	ldr.w	fp, [sp, #8]
c0de270e:	eb01 0a03 	add.w	sl, r1, r3
c0de2712:	9104      	str	r1, [sp, #16]
c0de2714:	f88a 0002 	strb.w	r0, [sl, #2]
c0de2718:	4640      	mov	r0, r8
c0de271a:	4659      	mov	r1, fp
c0de271c:	f8ca 4004 	str.w	r4, [sl, #4]
c0de2720:	f004 f972 	bl	c0de6a08 <explicit_bzero>
c0de2724:	f245 2024 	movw	r0, #21028	@ 0x5224
c0de2728:	f2c0 0000 	movt	r0, #0
c0de272c:	eb09 0400 	add.w	r4, r9, r0
c0de2730:	4620      	mov	r0, r4
c0de2732:	2102      	movs	r1, #2
c0de2734:	f004 f968 	bl	c0de6a08 <explicit_bzero>
c0de2738:	2002      	movs	r0, #2
c0de273a:	f8aa 0014 	strh.w	r0, [sl, #20]
c0de273e:	b2f0      	uxtb	r0, r6
c0de2740:	f8aa 0004 	strh.w	r0, [sl, #4]
c0de2744:	9804      	ldr	r0, [sp, #16]
c0de2746:	f641 0128 	movw	r1, #6184	@ 0x1828
c0de274a:	2200      	movs	r2, #0
c0de274c:	5242      	strh	r2, [r0, r1]
c0de274e:	4638      	mov	r0, r7
c0de2750:	f8ca 8008 	str.w	r8, [sl, #8]
c0de2754:	f8ca 4010 	str.w	r4, [sl, #16]
c0de2758:	f8aa b00c 	strh.w	fp, [sl, #12]
c0de275c:	f7ff fb18 	bl	c0de1d90 <get_required_root_item>
c0de2760:	4604      	mov	r4, r0
c0de2762:	4640      	mov	r0, r8
c0de2764:	4659      	mov	r1, fp
c0de2766:	f004 f94f 	bl	c0de6a08 <explicit_bzero>
c0de276a:	f1ab 0201 	sub.w	r2, fp, #1
c0de276e:	4640      	mov	r0, r8
c0de2770:	4621      	mov	r1, r4
c0de2772:	f004 f9af 	bl	c0de6ad4 <strncpy>
c0de2776:	eb09 0005 	add.w	r0, r9, r5
c0de277a:	5dc0      	ldrb	r0, [r0, r7]
c0de277c:	b158      	cbz	r0, c0de2796 <tx_display_query+0x39a>
c0de277e:	eb09 0005 	add.w	r0, r9, r5
c0de2782:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de2786:	88c0      	ldrh	r0, [r0, #6]
c0de2788:	9901      	ldr	r1, [sp, #4]
c0de278a:	f000 f8c1 	bl	c0de2910 <tx_traverse_find>
c0de278e:	4604      	mov	r4, r0
c0de2790:	f001 fccb 	bl	c0de412a <check_app_canary>
c0de2794:	e000      	b.n	c0de2798 <tx_display_query+0x39c>
c0de2796:	2401      	movs	r4, #1
c0de2798:	4620      	mov	r0, r4
c0de279a:	b006      	add	sp, #24
c0de279c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de27a0 <tx_display_make_friendly>:
c0de27a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de27a2:	b081      	sub	sp, #4
c0de27a4:	f7ff fb44 	bl	c0de1e30 <tx_indexRootFields>
c0de27a8:	4604      	mov	r4, r0
c0de27aa:	f001 fcbe 	bl	c0de412a <check_app_canary>
c0de27ae:	bb4c      	cbnz	r4, c0de2804 <tx_display_make_friendly+0x64>
c0de27b0:	f643 16c8 	movw	r6, #14792	@ 0x39c8
c0de27b4:	f2c0 0600 	movt	r6, #0
c0de27b8:	eb09 0006 	add.w	r0, r9, r6
c0de27bc:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de27c0:	5844      	ldr	r4, [r0, r1]
c0de27c2:	f644 1565 	movw	r5, #18789	@ 0x4965
c0de27c6:	f2c0 0500 	movt	r5, #0
c0de27ca:	447d      	add	r5, pc
c0de27cc:	271d      	movs	r7, #29
c0de27ce:	bf00      	nop
c0de27d0:	4620      	mov	r0, r4
c0de27d2:	4629      	mov	r1, r5
c0de27d4:	f004 f96c 	bl	c0de6ab0 <strcmp>
c0de27d8:	b120      	cbz	r0, c0de27e4 <tx_display_make_friendly+0x44>
c0de27da:	3f01      	subs	r7, #1
c0de27dc:	f105 0564 	add.w	r5, r5, #100	@ 0x64
c0de27e0:	d1f6      	bne.n	c0de27d0 <tx_display_make_friendly+0x30>
c0de27e2:	e00e      	b.n	c0de2802 <tx_display_make_friendly+0x62>
c0de27e4:	eb09 0006 	add.w	r0, r9, r6
c0de27e8:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de27ec:	5a46      	ldrh	r6, [r0, r1]
c0de27ee:	4620      	mov	r0, r4
c0de27f0:	4631      	mov	r1, r6
c0de27f2:	3532      	adds	r5, #50	@ 0x32
c0de27f4:	f004 f908 	bl	c0de6a08 <explicit_bzero>
c0de27f8:	1e72      	subs	r2, r6, #1
c0de27fa:	4620      	mov	r0, r4
c0de27fc:	4629      	mov	r1, r5
c0de27fe:	f004 f969 	bl	c0de6ad4 <strncpy>
c0de2802:	2400      	movs	r4, #0
c0de2804:	4620      	mov	r0, r4
c0de2806:	b001      	add	sp, #4
c0de2808:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de280c <tx_getToken>:
c0de280c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2810:	b082      	sub	sp, #8
c0de2812:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de2814:	4604      	mov	r4, r0
c0de2816:	2000      	movs	r0, #0
c0de2818:	460d      	mov	r5, r1
c0de281a:	7038      	strb	r0, [r7, #0]
c0de281c:	4608      	mov	r0, r1
c0de281e:	4611      	mov	r1, r2
c0de2820:	469a      	mov	sl, r3
c0de2822:	4616      	mov	r6, r2
c0de2824:	f004 f8f0 	bl	c0de6a08 <explicit_bzero>
c0de2828:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de282c:	f2c0 0000 	movt	r0, #0
c0de2830:	eb09 0100 	add.w	r1, r9, r0
c0de2834:	eb01 02c4 	add.w	r2, r1, r4, lsl #3
c0de2838:	f9b2 100e 	ldrsh.w	r1, [r2, #14]
c0de283c:	f9b2 3010 	ldrsh.w	r3, [r2, #16]
c0de2840:	428b      	cmp	r3, r1
c0de2842:	da01      	bge.n	c0de2848 <tx_getToken+0x3c>
c0de2844:	2008      	movs	r0, #8
c0de2846:	e05f      	b.n	c0de2908 <tx_getToken+0xfc>
c0de2848:	f859 2000 	ldr.w	r2, [r9, r0]
c0de284c:	eba3 0b01 	sub.w	fp, r3, r1
c0de2850:	2001      	movs	r0, #1
c0de2852:	ea5f 430b 	movs.w	r3, fp, lsl #16
c0de2856:	7038      	strb	r0, [r7, #0]
c0de2858:	d050      	beq.n	c0de28fc <tx_getToken+0xf0>
c0de285a:	e9cd 5a00 	strd	r5, sl, [sp]
c0de285e:	f245 4a13 	movw	sl, #21523	@ 0x5413
c0de2862:	f2c0 0a00 	movt	sl, #0
c0de2866:	1857      	adds	r7, r2, r1
c0de2868:	fa1f f58b 	uxth.w	r5, fp
c0de286c:	f04f 0800 	mov.w	r8, #0
c0de2870:	44fa      	add	sl, pc
c0de2872:	bf00      	nop
c0de2874:	eb0a 0408 	add.w	r4, sl, r8
c0de2878:	4620      	mov	r0, r4
c0de287a:	f004 f923 	bl	c0de6ac4 <strlen>
c0de287e:	42a8      	cmp	r0, r5
c0de2880:	d105      	bne.n	c0de288e <tx_getToken+0x82>
c0de2882:	4638      	mov	r0, r7
c0de2884:	4621      	mov	r1, r4
c0de2886:	462a      	mov	r2, r5
c0de2888:	f004 f8c4 	bl	c0de6a14 <memcmp>
c0de288c:	b128      	cbz	r0, c0de289a <tx_getToken+0x8e>
c0de288e:	f108 0864 	add.w	r8, r8, #100	@ 0x64
c0de2892:	f5b8 7f48 	cmp.w	r8, #800	@ 0x320
c0de2896:	d1ed      	bne.n	c0de2874 <tx_getToken+0x68>
c0de2898:	e005      	b.n	c0de28a6 <tx_getToken+0x9a>
c0de289a:	f104 0732 	add.w	r7, r4, #50	@ 0x32
c0de289e:	4638      	mov	r0, r7
c0de28a0:	f004 f910 	bl	c0de6ac4 <strlen>
c0de28a4:	4683      	mov	fp, r0
c0de28a6:	e9dd 8a00 	ldrd	r8, sl, [sp]
c0de28aa:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de28ac:	4640      	mov	r0, r8
c0de28ae:	4631      	mov	r1, r6
c0de28b0:	f004 f8aa 	bl	c0de6a08 <explicit_bzero>
c0de28b4:	1e71      	subs	r1, r6, #1
c0de28b6:	b28b      	uxth	r3, r1
c0de28b8:	2000      	movs	r0, #0
c0de28ba:	7020      	strb	r0, [r4, #0]
c0de28bc:	b1f3      	cbz	r3, c0de28fc <tx_getToken+0xf0>
c0de28be:	ea5f 420b 	movs.w	r2, fp, lsl #16
c0de28c2:	d01b      	beq.n	c0de28fc <tx_getToken+0xf0>
c0de28c4:	fa1f f08b 	uxth.w	r0, fp
c0de28c8:	fbb0 f0f3 	udiv	r0, r0, r3
c0de28cc:	fb00 b111 	mls	r1, r0, r1, fp
c0de28d0:	040a      	lsls	r2, r1, #16
c0de28d2:	bf18      	it	ne
c0de28d4:	3001      	addne	r0, #1
c0de28d6:	b2c2      	uxtb	r2, r0
c0de28d8:	4552      	cmp	r2, sl
c0de28da:	7020      	strb	r0, [r4, #0]
c0de28dc:	d90e      	bls.n	c0de28fc <tx_getToken+0xf0>
c0de28de:	3a01      	subs	r2, #1
c0de28e0:	b288      	uxth	r0, r1
c0de28e2:	fb0a 7103 	mla	r1, sl, r3, r7
c0de28e6:	4552      	cmp	r2, sl
c0de28e8:	461a      	mov	r2, r3
c0de28ea:	bf08      	it	eq
c0de28ec:	4602      	moveq	r2, r0
c0de28ee:	2800      	cmp	r0, #0
c0de28f0:	4640      	mov	r0, r8
c0de28f2:	bf08      	it	eq
c0de28f4:	461a      	moveq	r2, r3
c0de28f6:	f004 f880 	bl	c0de69fa <__aeabi_memmove>
c0de28fa:	7820      	ldrb	r0, [r4, #0]
c0de28fc:	b2c0      	uxtb	r0, r0
c0de28fe:	2100      	movs	r1, #0
c0de2900:	4550      	cmp	r0, sl
c0de2902:	bf98      	it	ls
c0de2904:	2101      	movls	r1, #1
c0de2906:	0088      	lsls	r0, r1, #2
c0de2908:	b002      	add	sp, #8
c0de290a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2910 <tx_traverse_find>:
c0de2910:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2914:	b086      	sub	sp, #24
c0de2916:	f643 1bc8 	movw	fp, #14792	@ 0x39c8
c0de291a:	f2c0 0b00 	movt	fp, #0
c0de291e:	4604      	mov	r4, r0
c0de2920:	eb09 000b 	add.w	r0, r9, fp
c0de2924:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
c0de2928:	7b05      	ldrb	r5, [r0, #12]
c0de292a:	4688      	mov	r8, r1
c0de292c:	f001 fbfd 	bl	c0de412a <check_app_canary>
c0de2930:	f859 000b 	ldr.w	r0, [r9, fp]
c0de2934:	2800      	cmp	r0, #0
c0de2936:	d060      	beq.n	c0de29fa <tx_traverse_find+0xea>
c0de2938:	eb09 000b 	add.w	r0, r9, fp
c0de293c:	f641 012a 	movw	r1, #6186	@ 0x182a
c0de2940:	5c41      	ldrb	r1, [r0, r1]
c0de2942:	2900      	cmp	r1, #0
c0de2944:	d05b      	beq.n	c0de29fe <tx_traverse_find+0xee>
c0de2946:	f641 012b 	movw	r1, #6187	@ 0x182b
c0de294a:	5c40      	ldrb	r0, [r0, r1]
c0de294c:	2800      	cmp	r0, #0
c0de294e:	d056      	beq.n	c0de29fe <tx_traverse_find+0xee>
c0de2950:	2d03      	cmp	r5, #3
c0de2952:	d054      	beq.n	c0de29fe <tx_traverse_find+0xee>
c0de2954:	2d04      	cmp	r5, #4
c0de2956:	d052      	beq.n	c0de29fe <tx_traverse_find+0xee>
c0de2958:	eb09 000b 	add.w	r0, r9, fp
c0de295c:	3004      	adds	r0, #4
c0de295e:	f10d 0216 	add.w	r2, sp, #22
c0de2962:	4621      	mov	r1, r4
c0de2964:	f8cd 8008 	str.w	r8, [sp, #8]
c0de2968:	9403      	str	r4, [sp, #12]
c0de296a:	f7fe fd69 	bl	c0de1440 <object_get_element_count>
c0de296e:	4607      	mov	r7, r0
c0de2970:	f001 fbdb 	bl	c0de412a <check_app_canary>
c0de2974:	2f00      	cmp	r7, #0
c0de2976:	f040 80a5 	bne.w	c0de2ac4 <tx_traverse_find+0x1b4>
c0de297a:	2d01      	cmp	r5, #1
c0de297c:	f000 80b2 	beq.w	c0de2ae4 <tx_traverse_find+0x1d4>
c0de2980:	2d02      	cmp	r5, #2
c0de2982:	f040 809e 	bne.w	c0de2ac2 <tx_traverse_find+0x1b2>
c0de2986:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de298a:	2800      	cmp	r0, #0
c0de298c:	f000 8099 	beq.w	c0de2ac2 <tx_traverse_find+0x1b2>
c0de2990:	2600      	movs	r6, #0
c0de2992:	f10d 0810 	add.w	r8, sp, #16
c0de2996:	f641 0a2b 	movw	sl, #6187	@ 0x182b
c0de299a:	bf00      	nop
c0de299c:	eb09 000b 	add.w	r0, r9, fp
c0de29a0:	9903      	ldr	r1, [sp, #12]
c0de29a2:	3004      	adds	r0, #4
c0de29a4:	b2b2      	uxth	r2, r6
c0de29a6:	4643      	mov	r3, r8
c0de29a8:	f7fe fd1c 	bl	c0de13e4 <array_get_nth_element>
c0de29ac:	4607      	mov	r7, r0
c0de29ae:	f001 fbbc 	bl	c0de412a <check_app_canary>
c0de29b2:	2f00      	cmp	r7, #0
c0de29b4:	f040 8086 	bne.w	c0de2ac4 <tx_traverse_find+0x1b4>
c0de29b8:	f001 fbb7 	bl	c0de412a <check_app_canary>
c0de29bc:	eb09 050b 	add.w	r5, r9, fp
c0de29c0:	f815 000a 	ldrb.w	r0, [r5, sl]
c0de29c4:	1e41      	subs	r1, r0, #1
c0de29c6:	f8bd 0010 	ldrh.w	r0, [sp, #16]
c0de29ca:	f805 100a 	strb.w	r1, [r5, sl]
c0de29ce:	9902      	ldr	r1, [sp, #8]
c0de29d0:	f7ff ff9e 	bl	c0de2910 <tx_traverse_find>
c0de29d4:	f815 100a 	ldrb.w	r1, [r5, sl]
c0de29d8:	4607      	mov	r7, r0
c0de29da:	1c48      	adds	r0, r1, #1
c0de29dc:	f805 000a 	strb.w	r0, [r5, sl]
c0de29e0:	f001 fba3 	bl	c0de412a <check_app_canary>
c0de29e4:	2f00      	cmp	r7, #0
c0de29e6:	d055      	beq.n	c0de2a94 <tx_traverse_find+0x184>
c0de29e8:	3601      	adds	r6, #1
c0de29ea:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de29ee:	b231      	sxth	r1, r6
c0de29f0:	4281      	cmp	r1, r0
c0de29f2:	f04f 0713 	mov.w	r7, #19
c0de29f6:	dbd1      	blt.n	c0de299c <tx_traverse_find+0x8c>
c0de29f8:	e064      	b.n	c0de2ac4 <tx_traverse_find+0x1b4>
c0de29fa:	2701      	movs	r7, #1
c0de29fc:	e062      	b.n	c0de2ac4 <tx_traverse_find+0x1b4>
c0de29fe:	eb09 000b 	add.w	r0, r9, fp
c0de2a02:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de2a06:	5c45      	ldrb	r5, [r0, r1]
c0de2a08:	f005 0003 	and.w	r0, r5, #3
c0de2a0c:	2803      	cmp	r0, #3
c0de2a0e:	d10d      	bne.n	c0de2a2c <tx_traverse_find+0x11c>
c0de2a10:	eb09 000b 	add.w	r0, r9, fp
c0de2a14:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2a18:	5840      	ldr	r0, [r0, r1]
c0de2a1a:	f244 415b 	movw	r1, #17499	@ 0x445b
c0de2a1e:	f2c0 0100 	movt	r1, #0
c0de2a22:	4479      	add	r1, pc
c0de2a24:	f004 f844 	bl	c0de6ab0 <strcmp>
c0de2a28:	2800      	cmp	r0, #0
c0de2a2a:	d04f      	beq.n	c0de2acc <tx_traverse_find+0x1bc>
c0de2a2c:	2600      	movs	r6, #0
c0de2a2e:	f005 0005 	and.w	r0, r5, #5
c0de2a32:	2805      	cmp	r0, #5
c0de2a34:	d130      	bne.n	c0de2a98 <tx_traverse_find+0x188>
c0de2a36:	eb09 010b 	add.w	r1, r9, fp
c0de2a3a:	f44f 52c1 	mov.w	r2, #6176	@ 0x1820
c0de2a3e:	f641 0328 	movw	r3, #6184	@ 0x1828
c0de2a42:	588a      	ldr	r2, [r1, r2]
c0de2a44:	5acf      	ldrh	r7, [r1, r3]
c0de2a46:	f005 0008 	and.w	r0, r5, #8
c0de2a4a:	407a      	eors	r2, r7
c0de2a4c:	4419      	add	r1, r3
c0de2a4e:	ea50 0502 	orrs.w	r5, r0, r2
c0de2a52:	6888      	ldr	r0, [r1, #8]
c0de2a54:	bf18      	it	ne
c0de2a56:	2501      	movne	r5, #1
c0de2a58:	f244 6116 	movw	r1, #17942	@ 0x4616
c0de2a5c:	f2c0 0100 	movt	r1, #0
c0de2a60:	4479      	add	r1, pc
c0de2a62:	f004 f825 	bl	c0de6ab0 <strcmp>
c0de2a66:	fab0 f080 	clz	r0, r0
c0de2a6a:	0940      	lsrs	r0, r0, #5
c0de2a6c:	4028      	ands	r0, r5
c0de2a6e:	ea40 0506 	orr.w	r5, r0, r6
c0de2a72:	f001 fb5a 	bl	c0de412a <check_app_canary>
c0de2a76:	b99d      	cbnz	r5, c0de2aa0 <tx_traverse_find+0x190>
c0de2a78:	eb09 010b 	add.w	r1, r9, fp
c0de2a7c:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2a80:	5a88      	ldrh	r0, [r1, r2]
c0de2a82:	4411      	add	r1, r2
c0de2a84:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
c0de2a88:	4288      	cmp	r0, r1
c0de2a8a:	d112      	bne.n	c0de2ab2 <tx_traverse_find+0x1a2>
c0de2a8c:	f8a8 4000 	strh.w	r4, [r8]
c0de2a90:	f001 fb4b 	bl	c0de412a <check_app_canary>
c0de2a94:	2700      	movs	r7, #0
c0de2a96:	e015      	b.n	c0de2ac4 <tx_traverse_find+0x1b4>
c0de2a98:	f001 fb47 	bl	c0de412a <check_app_canary>
c0de2a9c:	2e00      	cmp	r6, #0
c0de2a9e:	d0eb      	beq.n	c0de2a78 <tx_traverse_find+0x168>
c0de2aa0:	eb09 000b 	add.w	r0, r9, fp
c0de2aa4:	f641 0128 	movw	r1, #6184	@ 0x1828
c0de2aa8:	1842      	adds	r2, r0, r1
c0de2aaa:	8893      	ldrh	r3, [r2, #4]
c0de2aac:	5a40      	ldrh	r0, [r0, r1]
c0de2aae:	3301      	adds	r3, #1
c0de2ab0:	8093      	strh	r3, [r2, #4]
c0de2ab2:	3001      	adds	r0, #1
c0de2ab4:	eb09 010b 	add.w	r1, r9, fp
c0de2ab8:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2abc:	5288      	strh	r0, [r1, r2]
c0de2abe:	f001 fb34 	bl	c0de412a <check_app_canary>
c0de2ac2:	2713      	movs	r7, #19
c0de2ac4:	4638      	mov	r0, r7
c0de2ac6:	b006      	add	sp, #24
c0de2ac8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2acc:	eb09 000b 	add.w	r0, r9, fp
c0de2ad0:	f641 0118 	movw	r1, #6168	@ 0x1818
c0de2ad4:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2ad8:	5841      	ldr	r1, [r0, r1]
c0de2ada:	5a80      	ldrh	r0, [r0, r2]
c0de2adc:	1a0e      	subs	r6, r1, r0
c0de2ade:	bf18      	it	ne
c0de2ae0:	2601      	movne	r6, #1
c0de2ae2:	e7a4      	b.n	c0de2a2e <tx_traverse_find+0x11e>
c0de2ae4:	eb09 000b 	add.w	r0, r9, fp
c0de2ae8:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2aec:	5840      	ldr	r0, [r0, r1]
c0de2aee:	f003 ffe9 	bl	c0de6ac4 <strlen>
c0de2af2:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de2af6:	9000      	str	r0, [sp, #0]
c0de2af8:	2900      	cmp	r1, #0
c0de2afa:	d0e2      	beq.n	c0de2ac2 <tx_traverse_find+0x1b2>
c0de2afc:	f04f 0800 	mov.w	r8, #0
c0de2b00:	9c03      	ldr	r4, [sp, #12]
c0de2b02:	eb09 000b 	add.w	r0, r9, fp
c0de2b06:	fa1f f688 	uxth.w	r6, r8
c0de2b0a:	3004      	adds	r0, #4
c0de2b0c:	4621      	mov	r1, r4
c0de2b0e:	4632      	mov	r2, r6
c0de2b10:	ab05      	add	r3, sp, #20
c0de2b12:	f7fe fcc1 	bl	c0de1498 <object_get_nth_key>
c0de2b16:	4607      	mov	r7, r0
c0de2b18:	f001 fb07 	bl	c0de412a <check_app_canary>
c0de2b1c:	2f00      	cmp	r7, #0
c0de2b1e:	d1d1      	bne.n	c0de2ac4 <tx_traverse_find+0x1b4>
c0de2b20:	eb09 000b 	add.w	r0, r9, fp
c0de2b24:	3004      	adds	r0, #4
c0de2b26:	4621      	mov	r1, r4
c0de2b28:	4632      	mov	r2, r6
c0de2b2a:	f10d 0312 	add.w	r3, sp, #18
c0de2b2e:	f7fe fce6 	bl	c0de14fe <object_get_nth_value>
c0de2b32:	4607      	mov	r7, r0
c0de2b34:	f001 faf9 	bl	c0de412a <check_app_canary>
c0de2b38:	2f00      	cmp	r7, #0
c0de2b3a:	d1c3      	bne.n	c0de2ac4 <tx_traverse_find+0x1b4>
c0de2b3c:	eb09 000b 	add.w	r0, r9, fp
c0de2b40:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2b44:	5847      	ldr	r7, [r0, r1]
c0de2b46:	f9bd a014 	ldrsh.w	sl, [sp, #20]
c0de2b4a:	7838      	ldrb	r0, [r7, #0]
c0de2b4c:	2400      	movs	r4, #0
c0de2b4e:	b1e0      	cbz	r0, c0de2b8a <tx_traverse_find+0x27a>
c0de2b50:	eb09 000b 	add.w	r0, r9, fp
c0de2b54:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de2b58:	5a45      	ldrh	r5, [r0, r1]
c0de2b5a:	1978      	adds	r0, r7, r5
c0de2b5c:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de2b60:	4638      	mov	r0, r7
c0de2b62:	f003 ffaf 	bl	c0de6ac4 <strlen>
c0de2b66:	43c1      	mvns	r1, r0
c0de2b68:	426a      	negs	r2, r5
c0de2b6a:	1a8e      	subs	r6, r1, r2
c0de2b6c:	bf18      	it	ne
c0de2b6e:	2601      	movne	r6, #1
c0de2b70:	42e9      	cmn	r1, r5
c0de2b72:	d00a      	beq.n	c0de2b8a <tx_traverse_find+0x27a>
c0de2b74:	f244 1137 	movw	r1, #16695	@ 0x4137
c0de2b78:	4407      	add	r7, r0
c0de2b7a:	f2c0 0100 	movt	r1, #0
c0de2b7e:	4638      	mov	r0, r7
c0de2b80:	4479      	add	r1, pc
c0de2b82:	4632      	mov	r2, r6
c0de2b84:	f003 ff37 	bl	c0de69f6 <__aeabi_memcpy>
c0de2b88:	55bc      	strb	r4, [r7, r6]
c0de2b8a:	f859 200b 	ldr.w	r2, [r9, fp]
c0de2b8e:	eb09 000b 	add.w	r0, r9, fp
c0de2b92:	9201      	str	r2, [sp, #4]
c0de2b94:	f641 0230 	movw	r2, #6192	@ 0x1830
c0de2b98:	eb00 01ca 	add.w	r1, r0, sl, lsl #3
c0de2b9c:	f850 a002 	ldr.w	sl, [r0, r2]
c0de2ba0:	f641 0234 	movw	r2, #6196	@ 0x1834
c0de2ba4:	5a86      	ldrh	r6, [r0, r2]
c0de2ba6:	f9b1 500e 	ldrsh.w	r5, [r1, #14]
c0de2baa:	f9b1 1010 	ldrsh.w	r1, [r1, #16]
c0de2bae:	eb0a 0006 	add.w	r0, sl, r6
c0de2bb2:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de2bb6:	4650      	mov	r0, sl
c0de2bb8:	1b4f      	subs	r7, r1, r5
c0de2bba:	f003 ff83 	bl	c0de6ac4 <strlen>
c0de2bbe:	43c1      	mvns	r1, r0
c0de2bc0:	4431      	add	r1, r6
c0de2bc2:	42b9      	cmp	r1, r7
c0de2bc4:	bf38      	it	cc
c0de2bc6:	460f      	movcc	r7, r1
c0de2bc8:	b147      	cbz	r7, c0de2bdc <tx_traverse_find+0x2cc>
c0de2bca:	9901      	ldr	r1, [sp, #4]
c0de2bcc:	eb0a 0600 	add.w	r6, sl, r0
c0de2bd0:	4429      	add	r1, r5
c0de2bd2:	4630      	mov	r0, r6
c0de2bd4:	463a      	mov	r2, r7
c0de2bd6:	f003 ff10 	bl	c0de69fa <__aeabi_memmove>
c0de2bda:	55f4      	strb	r4, [r6, r7]
c0de2bdc:	f001 faa5 	bl	c0de412a <check_app_canary>
c0de2be0:	eb09 050b 	add.w	r5, r9, fp
c0de2be4:	f641 042a 	movw	r4, #6186	@ 0x182a
c0de2be8:	f641 072b 	movw	r7, #6187	@ 0x182b
c0de2bec:	5d28      	ldrb	r0, [r5, r4]
c0de2bee:	5de9      	ldrb	r1, [r5, r7]
c0de2bf0:	3801      	subs	r0, #1
c0de2bf2:	3901      	subs	r1, #1
c0de2bf4:	5528      	strb	r0, [r5, r4]
c0de2bf6:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de2bfa:	55e9      	strb	r1, [r5, r7]
c0de2bfc:	9902      	ldr	r1, [sp, #8]
c0de2bfe:	f7ff fe87 	bl	c0de2910 <tx_traverse_find>
c0de2c02:	4606      	mov	r6, r0
c0de2c04:	f001 fa91 	bl	c0de412a <check_app_canary>
c0de2c08:	5d28      	ldrb	r0, [r5, r4]
c0de2c0a:	5de9      	ldrb	r1, [r5, r7]
c0de2c0c:	3001      	adds	r0, #1
c0de2c0e:	5528      	strb	r0, [r5, r4]
c0de2c10:	1c48      	adds	r0, r1, #1
c0de2c12:	2e00      	cmp	r6, #0
c0de2c14:	55e8      	strb	r0, [r5, r7]
c0de2c16:	f43f af3d 	beq.w	c0de2a94 <tx_traverse_find+0x184>
c0de2c1a:	eb09 000b 	add.w	r0, r9, fp
c0de2c1e:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2c22:	5840      	ldr	r0, [r0, r1]
c0de2c24:	9900      	ldr	r1, [sp, #0]
c0de2c26:	2200      	movs	r2, #0
c0de2c28:	5442      	strb	r2, [r0, r1]
c0de2c2a:	f001 fa7e 	bl	c0de412a <check_app_canary>
c0de2c2e:	f108 0801 	add.w	r8, r8, #1
c0de2c32:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de2c36:	fa1f f188 	uxth.w	r1, r8
c0de2c3a:	4281      	cmp	r1, r0
c0de2c3c:	f04f 0713 	mov.w	r7, #19
c0de2c40:	f4ff af5e 	bcc.w	c0de2b00 <tx_traverse_find+0x1f0>
c0de2c44:	e73e      	b.n	c0de2ac4 <tx_traverse_find+0x1b4>
	...

c0de2c48 <contains_whitespace>:
c0de2c48:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c4c:	b082      	sub	sp, #8
c0de2c4e:	f8d0 8004 	ldr.w	r8, [r0, #4]
c0de2c52:	f9b0 100c 	ldrsh.w	r1, [r0, #12]
c0de2c56:	f1b8 0f02 	cmp.w	r8, #2
c0de2c5a:	f04f 0200 	mov.w	r2, #0
c0de2c5e:	9100      	str	r1, [sp, #0]
c0de2c60:	d33c      	bcc.n	c0de2cdc <contains_whitespace+0x94>
c0de2c62:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2c66:	4401      	add	r1, r0
c0de2c68:	9101      	str	r1, [sp, #4]
c0de2c6a:	f245 342d 	movw	r4, #21293	@ 0x532d
c0de2c6e:	f2c0 0400 	movt	r4, #0
c0de2c72:	f04f 0b01 	mov.w	fp, #1
c0de2c76:	447c      	add	r4, pc
c0de2c78:	eb00 0acb 	add.w	sl, r0, fp, lsl #3
c0de2c7c:	f89a 1008 	ldrb.w	r1, [sl, #8]
c0de2c80:	2900      	cmp	r1, #0
c0de2c82:	d04b      	beq.n	c0de2d1c <contains_whitespace+0xd4>
c0de2c84:	f9ba e00a 	ldrsh.w	lr, [sl, #10]
c0de2c88:	4572      	cmp	r2, lr
c0de2c8a:	da1f      	bge.n	c0de2ccc <contains_whitespace+0x84>
c0de2c8c:	9901      	ldr	r1, [sp, #4]
c0de2c8e:	680f      	ldr	r7, [r1, #0]
c0de2c90:	5cbd      	ldrb	r5, [r7, r2]
c0de2c92:	2d20      	cmp	r5, #32
c0de2c94:	d044      	beq.n	c0de2d20 <contains_whitespace+0xd8>
c0de2c96:	2301      	movs	r3, #1
c0de2c98:	f04f 0c00 	mov.w	ip, #0
c0de2c9c:	4661      	mov	r1, ip
c0de2c9e:	f1bc 0f05 	cmp.w	ip, #5
c0de2ca2:	d005      	beq.n	c0de2cb0 <contains_whitespace+0x68>
c0de2ca4:	1866      	adds	r6, r4, r1
c0de2ca6:	7876      	ldrb	r6, [r6, #1]
c0de2ca8:	f101 0c01 	add.w	ip, r1, #1
c0de2cac:	42ae      	cmp	r6, r5
c0de2cae:	d1f5      	bne.n	c0de2c9c <contains_whitespace+0x54>
c0de2cb0:	2904      	cmp	r1, #4
c0de2cb2:	d909      	bls.n	c0de2cc8 <contains_whitespace+0x80>
c0de2cb4:	3201      	adds	r2, #1
c0de2cb6:	4572      	cmp	r2, lr
c0de2cb8:	f04f 0300 	mov.w	r3, #0
c0de2cbc:	bfb8      	it	lt
c0de2cbe:	2301      	movlt	r3, #1
c0de2cc0:	d004      	beq.n	c0de2ccc <contains_whitespace+0x84>
c0de2cc2:	5cbd      	ldrb	r5, [r7, r2]
c0de2cc4:	2d20      	cmp	r5, #32
c0de2cc6:	d1e7      	bne.n	c0de2c98 <contains_whitespace+0x50>
c0de2cc8:	07d9      	lsls	r1, r3, #31
c0de2cca:	d129      	bne.n	c0de2d20 <contains_whitespace+0xd8>
c0de2ccc:	f9ba 100c 	ldrsh.w	r1, [sl, #12]
c0de2cd0:	f10b 0b01 	add.w	fp, fp, #1
c0de2cd4:	45c3      	cmp	fp, r8
c0de2cd6:	f101 0201 	add.w	r2, r1, #1
c0de2cda:	d1cd      	bne.n	c0de2c78 <contains_whitespace+0x30>
c0de2cdc:	9d00      	ldr	r5, [sp, #0]
c0de2cde:	42aa      	cmp	r2, r5
c0de2ce0:	da1c      	bge.n	c0de2d1c <contains_whitespace+0xd4>
c0de2ce2:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2ce6:	5841      	ldr	r1, [r0, r1]
c0de2ce8:	f245 23b3 	movw	r3, #21171	@ 0x52b3
c0de2cec:	f2c0 0300 	movt	r3, #0
c0de2cf0:	447b      	add	r3, pc
c0de2cf2:	bf00      	nop
c0de2cf4:	5c88      	ldrb	r0, [r1, r2]
c0de2cf6:	b1a0      	cbz	r0, c0de2d22 <contains_whitespace+0xda>
c0de2cf8:	2820      	cmp	r0, #32
c0de2cfa:	d011      	beq.n	c0de2d20 <contains_whitespace+0xd8>
c0de2cfc:	2600      	movs	r6, #0
c0de2cfe:	bf00      	nop
c0de2d00:	4637      	mov	r7, r6
c0de2d02:	2e05      	cmp	r6, #5
c0de2d04:	d005      	beq.n	c0de2d12 <contains_whitespace+0xca>
c0de2d06:	19de      	adds	r6, r3, r7
c0de2d08:	7876      	ldrb	r6, [r6, #1]
c0de2d0a:	4286      	cmp	r6, r0
c0de2d0c:	f107 0601 	add.w	r6, r7, #1
c0de2d10:	d1f6      	bne.n	c0de2d00 <contains_whitespace+0xb8>
c0de2d12:	2f05      	cmp	r7, #5
c0de2d14:	d304      	bcc.n	c0de2d20 <contains_whitespace+0xd8>
c0de2d16:	3201      	adds	r2, #1
c0de2d18:	42aa      	cmp	r2, r5
c0de2d1a:	d1eb      	bne.n	c0de2cf4 <contains_whitespace+0xac>
c0de2d1c:	2000      	movs	r0, #0
c0de2d1e:	e000      	b.n	c0de2d22 <contains_whitespace+0xda>
c0de2d20:	2001      	movs	r0, #1
c0de2d22:	b240      	sxtb	r0, r0
c0de2d24:	b002      	add	sp, #8
c0de2d26:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2d2a <is_sorted>:
c0de2d2a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d2e:	f5ad 7d00 	sub.w	sp, sp, #512	@ 0x200
c0de2d32:	f50d 7a80 	add.w	sl, sp, #256	@ 0x100
c0de2d36:	460c      	mov	r4, r1
c0de2d38:	4605      	mov	r5, r0
c0de2d3a:	4650      	mov	r0, sl
c0de2d3c:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de2d40:	4617      	mov	r7, r2
c0de2d42:	f003 fe61 	bl	c0de6a08 <explicit_bzero>
c0de2d46:	46e8      	mov	r8, sp
c0de2d48:	4640      	mov	r0, r8
c0de2d4a:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de2d4e:	f003 fe5b 	bl	c0de6a08 <explicit_bzero>
c0de2d52:	eb07 01c5 	add.w	r1, r7, r5, lsl #3
c0de2d56:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de2d5a:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de2d5e:	2500      	movs	r5, #0
c0de2d60:	1a0e      	subs	r6, r1, r0
c0de2d62:	2eff      	cmp	r6, #255	@ 0xff
c0de2d64:	d824      	bhi.n	c0de2db0 <is_sorted+0x86>
c0de2d66:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2d6a:	f857 b001 	ldr.w	fp, [r7, r1]
c0de2d6e:	4632      	mov	r2, r6
c0de2d70:	eb0b 0100 	add.w	r1, fp, r0
c0de2d74:	4650      	mov	r0, sl
c0de2d76:	f003 fead 	bl	c0de6ad4 <strncpy>
c0de2d7a:	eb07 01c4 	add.w	r1, r7, r4, lsl #3
c0de2d7e:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de2d82:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de2d86:	f80a 5006 	strb.w	r5, [sl, r6]
c0de2d8a:	1a0c      	subs	r4, r1, r0
c0de2d8c:	2cff      	cmp	r4, #255	@ 0xff
c0de2d8e:	d80f      	bhi.n	c0de2db0 <is_sorted+0x86>
c0de2d90:	eb0b 0100 	add.w	r1, fp, r0
c0de2d94:	4640      	mov	r0, r8
c0de2d96:	4622      	mov	r2, r4
c0de2d98:	f003 fe9c 	bl	c0de6ad4 <strncpy>
c0de2d9c:	2500      	movs	r5, #0
c0de2d9e:	a840      	add	r0, sp, #256	@ 0x100
c0de2da0:	4641      	mov	r1, r8
c0de2da2:	f808 5004 	strb.w	r5, [r8, r4]
c0de2da6:	f003 fe83 	bl	c0de6ab0 <strcmp>
c0de2daa:	2801      	cmp	r0, #1
c0de2dac:	bfb8      	it	lt
c0de2dae:	2501      	movlt	r5, #1
c0de2db0:	4628      	mov	r0, r5
c0de2db2:	f50d 7d00 	add.w	sp, sp, #512	@ 0x200
c0de2db6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2dbc <dictionaries_sorted>:
c0de2dbc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2dc0:	b082      	sub	sp, #8
c0de2dc2:	4604      	mov	r4, r0
c0de2dc4:	6840      	ldr	r0, [r0, #4]
c0de2dc6:	2800      	cmp	r0, #0
c0de2dc8:	d03e      	beq.n	c0de2e48 <dictionaries_sorted+0x8c>
c0de2dca:	2500      	movs	r5, #0
c0de2dcc:	f10d 0a06 	add.w	sl, sp, #6
c0de2dd0:	f10d 0804 	add.w	r8, sp, #4
c0de2dd4:	f10d 0b02 	add.w	fp, sp, #2
c0de2dd8:	eb04 01c5 	add.w	r1, r4, r5, lsl #3
c0de2ddc:	7a09      	ldrb	r1, [r1, #8]
c0de2dde:	2901      	cmp	r1, #1
c0de2de0:	d12f      	bne.n	c0de2e42 <dictionaries_sorted+0x86>
c0de2de2:	b2ae      	uxth	r6, r5
c0de2de4:	4620      	mov	r0, r4
c0de2de6:	4631      	mov	r1, r6
c0de2de8:	4652      	mov	r2, sl
c0de2dea:	f7fe fb29 	bl	c0de1440 <object_get_element_count>
c0de2dee:	bb68      	cbnz	r0, c0de2e4c <dictionaries_sorted+0x90>
c0de2df0:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de2df4:	2802      	cmp	r0, #2
c0de2df6:	d323      	bcc.n	c0de2e40 <dictionaries_sorted+0x84>
c0de2df8:	4620      	mov	r0, r4
c0de2dfa:	4631      	mov	r1, r6
c0de2dfc:	2200      	movs	r2, #0
c0de2dfe:	4643      	mov	r3, r8
c0de2e00:	f7fe fb4a 	bl	c0de1498 <object_get_nth_key>
c0de2e04:	bb10      	cbnz	r0, c0de2e4c <dictionaries_sorted+0x90>
c0de2e06:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de2e0a:	2802      	cmp	r0, #2
c0de2e0c:	d318      	bcc.n	c0de2e40 <dictionaries_sorted+0x84>
c0de2e0e:	2701      	movs	r7, #1
c0de2e10:	b2ba      	uxth	r2, r7
c0de2e12:	4620      	mov	r0, r4
c0de2e14:	4631      	mov	r1, r6
c0de2e16:	465b      	mov	r3, fp
c0de2e18:	f7fe fb3e 	bl	c0de1498 <object_get_nth_key>
c0de2e1c:	b9b0      	cbnz	r0, c0de2e4c <dictionaries_sorted+0x90>
c0de2e1e:	f8bd 0004 	ldrh.w	r0, [sp, #4]
c0de2e22:	f8bd 1002 	ldrh.w	r1, [sp, #2]
c0de2e26:	4622      	mov	r2, r4
c0de2e28:	f7ff ff7f 	bl	c0de2d2a <is_sorted>
c0de2e2c:	b170      	cbz	r0, c0de2e4c <dictionaries_sorted+0x90>
c0de2e2e:	f8bd 1006 	ldrh.w	r1, [sp, #6]
c0de2e32:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0de2e36:	3701      	adds	r7, #1
c0de2e38:	428f      	cmp	r7, r1
c0de2e3a:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de2e3e:	d3e7      	bcc.n	c0de2e10 <dictionaries_sorted+0x54>
c0de2e40:	6860      	ldr	r0, [r4, #4]
c0de2e42:	3501      	adds	r5, #1
c0de2e44:	4285      	cmp	r5, r0
c0de2e46:	d3c7      	bcc.n	c0de2dd8 <dictionaries_sorted+0x1c>
c0de2e48:	2001      	movs	r0, #1
c0de2e4a:	e000      	b.n	c0de2e4e <dictionaries_sorted+0x92>
c0de2e4c:	2000      	movs	r0, #0
c0de2e4e:	b002      	add	sp, #8
c0de2e50:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2e54 <tx_validate>:
c0de2e54:	b510      	push	{r4, lr}
c0de2e56:	b082      	sub	sp, #8
c0de2e58:	4604      	mov	r4, r0
c0de2e5a:	f7ff fef5 	bl	c0de2c48 <contains_whitespace>
c0de2e5e:	2801      	cmp	r0, #1
c0de2e60:	d101      	bne.n	c0de2e66 <tx_validate+0x12>
c0de2e62:	2017      	movs	r0, #23
c0de2e64:	e013      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2e66:	4620      	mov	r0, r4
c0de2e68:	f7ff ffa8 	bl	c0de2dbc <dictionaries_sorted>
c0de2e6c:	2801      	cmp	r0, #1
c0de2e6e:	d10d      	bne.n	c0de2e8c <tx_validate+0x38>
c0de2e70:	f643 6284 	movw	r2, #16004	@ 0x3e84
c0de2e74:	f2c0 0200 	movt	r2, #0
c0de2e78:	447a      	add	r2, pc
c0de2e7a:	f10d 0306 	add.w	r3, sp, #6
c0de2e7e:	4620      	mov	r0, r4
c0de2e80:	2100      	movs	r1, #0
c0de2e82:	f7fe fb51 	bl	c0de1528 <object_get_value>
c0de2e86:	b120      	cbz	r0, c0de2e92 <tx_validate+0x3e>
c0de2e88:	2019      	movs	r0, #25
c0de2e8a:	e000      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2e8c:	2018      	movs	r0, #24
c0de2e8e:	b002      	add	sp, #8
c0de2e90:	bd10      	pop	{r4, pc}
c0de2e92:	f643 72a1 	movw	r2, #16289	@ 0x3fa1
c0de2e96:	f2c0 0200 	movt	r2, #0
c0de2e9a:	447a      	add	r2, pc
c0de2e9c:	f10d 0306 	add.w	r3, sp, #6
c0de2ea0:	4620      	mov	r0, r4
c0de2ea2:	2100      	movs	r1, #0
c0de2ea4:	f7fe fb40 	bl	c0de1528 <object_get_value>
c0de2ea8:	b108      	cbz	r0, c0de2eae <tx_validate+0x5a>
c0de2eaa:	201a      	movs	r0, #26
c0de2eac:	e7ef      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2eae:	f643 5276 	movw	r2, #15734	@ 0x3d76
c0de2eb2:	f2c0 0200 	movt	r2, #0
c0de2eb6:	447a      	add	r2, pc
c0de2eb8:	f10d 0306 	add.w	r3, sp, #6
c0de2ebc:	4620      	mov	r0, r4
c0de2ebe:	2100      	movs	r1, #0
c0de2ec0:	f7fe fb32 	bl	c0de1528 <object_get_value>
c0de2ec4:	b108      	cbz	r0, c0de2eca <tx_validate+0x76>
c0de2ec6:	201b      	movs	r0, #27
c0de2ec8:	e7e1      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2eca:	f643 62e8 	movw	r2, #16104	@ 0x3ee8
c0de2ece:	f2c0 0200 	movt	r2, #0
c0de2ed2:	447a      	add	r2, pc
c0de2ed4:	f10d 0306 	add.w	r3, sp, #6
c0de2ed8:	4620      	mov	r0, r4
c0de2eda:	2100      	movs	r1, #0
c0de2edc:	f7fe fb24 	bl	c0de1528 <object_get_value>
c0de2ee0:	b108      	cbz	r0, c0de2ee6 <tx_validate+0x92>
c0de2ee2:	201c      	movs	r0, #28
c0de2ee4:	e7d3      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2ee6:	f244 12f4 	movw	r2, #16884	@ 0x41f4
c0de2eea:	f2c0 0200 	movt	r2, #0
c0de2eee:	447a      	add	r2, pc
c0de2ef0:	f10d 0306 	add.w	r3, sp, #6
c0de2ef4:	4620      	mov	r0, r4
c0de2ef6:	2100      	movs	r1, #0
c0de2ef8:	f7fe fb16 	bl	c0de1528 <object_get_value>
c0de2efc:	b108      	cbz	r0, c0de2f02 <tx_validate+0xae>
c0de2efe:	201d      	movs	r0, #29
c0de2f00:	e7c5      	b.n	c0de2e8e <tx_validate+0x3a>
c0de2f02:	f643 72c6 	movw	r2, #16326	@ 0x3fc6
c0de2f06:	f2c0 0200 	movt	r2, #0
c0de2f0a:	447a      	add	r2, pc
c0de2f0c:	f10d 0306 	add.w	r3, sp, #6
c0de2f10:	4620      	mov	r0, r4
c0de2f12:	2100      	movs	r1, #0
c0de2f14:	f7fe fb08 	bl	c0de1528 <object_get_value>
c0de2f18:	2800      	cmp	r0, #0
c0de2f1a:	bf18      	it	ne
c0de2f1c:	201e      	movne	r0, #30
c0de2f1e:	e7b6      	b.n	c0de2e8e <tx_validate+0x3a>

c0de2f20 <jsmn_parse>:
c0de2f20:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f24:	b082      	sub	sp, #8
c0de2f26:	8804      	ldrh	r4, [r0, #0]
c0de2f28:	f8b0 e002 	ldrh.w	lr, [r0, #2]
c0de2f2c:	4294      	cmp	r4, r2
c0de2f2e:	f080 81d1 	bcs.w	c0de32d4 <jsmn_parse+0x3b4>
c0de2f32:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de2f36:	f04f 0b01 	mov.w	fp, #1
c0de2f3a:	46a2      	mov	sl, r4
c0de2f3c:	46f0      	mov	r8, lr
c0de2f3e:	f8cd e004 	str.w	lr, [sp, #4]
c0de2f42:	bf00      	nop
c0de2f44:	5d0c      	ldrb	r4, [r1, r4]
c0de2f46:	2c2b      	cmp	r4, #43	@ 0x2b
c0de2f48:	dd0e      	ble.n	c0de2f68 <jsmn_parse+0x48>
c0de2f4a:	2c5c      	cmp	r4, #92	@ 0x5c
c0de2f4c:	f300 8088 	bgt.w	c0de3060 <jsmn_parse+0x140>
c0de2f50:	2c2c      	cmp	r4, #44	@ 0x2c
c0de2f52:	f000 80e6 	beq.w	c0de3122 <jsmn_parse+0x202>
c0de2f56:	2c3a      	cmp	r4, #58	@ 0x3a
c0de2f58:	f000 810c 	beq.w	c0de3174 <jsmn_parse+0x254>
c0de2f5c:	2c5b      	cmp	r4, #91	@ 0x5b
c0de2f5e:	4657      	mov	r7, sl
c0de2f60:	f000 80a7 	beq.w	c0de30b2 <jsmn_parse+0x192>
c0de2f64:	e10e      	b.n	c0de3184 <jsmn_parse+0x264>
c0de2f66:	bf00      	nop
c0de2f68:	f1a4 0509 	sub.w	r5, r4, #9
c0de2f6c:	2d19      	cmp	r5, #25
c0de2f6e:	f200 8105 	bhi.w	c0de317c <jsmn_parse+0x25c>
c0de2f72:	2713      	movs	r7, #19
c0de2f74:	fa0b f605 	lsl.w	r6, fp, r5
c0de2f78:	f2c0 0780 	movt	r7, #128	@ 0x80
c0de2f7c:	423e      	tst	r6, r7
c0de2f7e:	f040 8199 	bne.w	c0de32b4 <jsmn_parse+0x394>
c0de2f82:	2d19      	cmp	r5, #25
c0de2f84:	f040 80fa 	bne.w	c0de317c <jsmn_parse+0x25c>
c0de2f88:	f8cd 8000 	str.w	r8, [sp]
c0de2f8c:	f10a 0801 	add.w	r8, sl, #1
c0de2f90:	fa1f f688 	uxth.w	r6, r8
c0de2f94:	4296      	cmp	r6, r2
c0de2f96:	f8a0 8000 	strh.w	r8, [r0]
c0de2f9a:	f080 81b6 	bcs.w	c0de330a <jsmn_parse+0x3ea>
c0de2f9e:	4644      	mov	r4, r8
c0de2fa0:	4657      	mov	r7, sl
c0de2fa2:	bf00      	nop
c0de2fa4:	5d8d      	ldrb	r5, [r1, r6]
c0de2fa6:	2d5c      	cmp	r5, #92	@ 0x5c
c0de2fa8:	d006      	beq.n	c0de2fb8 <jsmn_parse+0x98>
c0de2faa:	2d00      	cmp	r5, #0
c0de2fac:	f000 81ad 	beq.w	c0de330a <jsmn_parse+0x3ea>
c0de2fb0:	2d22      	cmp	r5, #34	@ 0x22
c0de2fb2:	d11d      	bne.n	c0de2ff0 <jsmn_parse+0xd0>
c0de2fb4:	e157      	b.n	c0de3266 <jsmn_parse+0x346>
c0de2fb6:	bf00      	nop
c0de2fb8:	1c75      	adds	r5, r6, #1
c0de2fba:	4295      	cmp	r5, r2
c0de2fbc:	d218      	bcs.n	c0de2ff0 <jsmn_parse+0xd0>
c0de2fbe:	1cbc      	adds	r4, r7, #2
c0de2fc0:	8004      	strh	r4, [r0, #0]
c0de2fc2:	b2a5      	uxth	r5, r4
c0de2fc4:	46f4      	mov	ip, lr
c0de2fc6:	f811 e005 	ldrb.w	lr, [r1, r5]
c0de2fca:	f1ae 065c 	sub.w	r6, lr, #92	@ 0x5c
c0de2fce:	2e19      	cmp	r6, #25
c0de2fd0:	d83b      	bhi.n	c0de304a <jsmn_parse+0x12a>
c0de2fd2:	2501      	movs	r5, #1
c0de2fd4:	fa05 fb06 	lsl.w	fp, r5, r6
c0de2fd8:	f240 4541 	movw	r5, #1089	@ 0x441
c0de2fdc:	f2c0 1544 	movt	r5, #324	@ 0x144
c0de2fe0:	ea1b 0f05 	tst.w	fp, r5
c0de2fe4:	d00b      	beq.n	c0de2ffe <jsmn_parse+0xde>
c0de2fe6:	f04f 0b01 	mov.w	fp, #1
c0de2fea:	46e6      	mov	lr, ip
c0de2fec:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de2ff0:	4627      	mov	r7, r4
c0de2ff2:	3401      	adds	r4, #1
c0de2ff4:	b2a6      	uxth	r6, r4
c0de2ff6:	4296      	cmp	r6, r2
c0de2ff8:	8004      	strh	r4, [r0, #0]
c0de2ffa:	d3d3      	bcc.n	c0de2fa4 <jsmn_parse+0x84>
c0de2ffc:	e185      	b.n	c0de330a <jsmn_parse+0x3ea>
c0de2ffe:	2e19      	cmp	r6, #25
c0de3000:	f04f 0b01 	mov.w	fp, #1
c0de3004:	d121      	bne.n	c0de304a <jsmn_parse+0x12a>
c0de3006:	1cfc      	adds	r4, r7, #3
c0de3008:	2700      	movs	r7, #0
c0de300a:	46e6      	mov	lr, ip
c0de300c:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de3010:	8004      	strh	r4, [r0, #0]
c0de3012:	bf00      	nop
c0de3014:	b2a5      	uxth	r5, r4
c0de3016:	4295      	cmp	r5, r2
c0de3018:	d215      	bcs.n	c0de3046 <jsmn_parse+0x126>
c0de301a:	5d4d      	ldrb	r5, [r1, r5]
c0de301c:	b19d      	cbz	r5, c0de3046 <jsmn_parse+0x126>
c0de301e:	f1a5 0630 	sub.w	r6, r5, #48	@ 0x30
c0de3022:	b2f6      	uxtb	r6, r6
c0de3024:	2e0a      	cmp	r6, #10
c0de3026:	d308      	bcc.n	c0de303a <jsmn_parse+0x11a>
c0de3028:	b2ed      	uxtb	r5, r5
c0de302a:	f1a5 0641 	sub.w	r6, r5, #65	@ 0x41
c0de302e:	2e06      	cmp	r6, #6
c0de3030:	d303      	bcc.n	c0de303a <jsmn_parse+0x11a>
c0de3032:	3d61      	subs	r5, #97	@ 0x61
c0de3034:	2d06      	cmp	r5, #6
c0de3036:	f080 8172 	bcs.w	c0de331e <jsmn_parse+0x3fe>
c0de303a:	3401      	adds	r4, #1
c0de303c:	2f03      	cmp	r7, #3
c0de303e:	f107 0701 	add.w	r7, r7, #1
c0de3042:	8004      	strh	r4, [r0, #0]
c0de3044:	d3e6      	bcc.n	c0de3014 <jsmn_parse+0xf4>
c0de3046:	3c01      	subs	r4, #1
c0de3048:	e7d2      	b.n	c0de2ff0 <jsmn_parse+0xd0>
c0de304a:	f1be 0f22 	cmp.w	lr, #34	@ 0x22
c0de304e:	d0cc      	beq.n	c0de2fea <jsmn_parse+0xca>
c0de3050:	f1be 0f2f 	cmp.w	lr, #47	@ 0x2f
c0de3054:	46e6      	mov	lr, ip
c0de3056:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de305a:	d0c9      	beq.n	c0de2ff0 <jsmn_parse+0xd0>
c0de305c:	e15f      	b.n	c0de331e <jsmn_parse+0x3fe>
c0de305e:	bf00      	nop
c0de3060:	2c5d      	cmp	r4, #93	@ 0x5d
c0de3062:	d005      	beq.n	c0de3070 <jsmn_parse+0x150>
c0de3064:	2c7b      	cmp	r4, #123	@ 0x7b
c0de3066:	d024      	beq.n	c0de30b2 <jsmn_parse+0x192>
c0de3068:	2c7d      	cmp	r4, #125	@ 0x7d
c0de306a:	4657      	mov	r7, sl
c0de306c:	f040 808a 	bne.w	c0de3184 <jsmn_parse+0x264>
c0de3070:	2b00      	cmp	r3, #0
c0de3072:	f000 811f 	beq.w	c0de32b4 <jsmn_parse+0x394>
c0de3076:	2c7d      	cmp	r4, #125	@ 0x7d
c0de3078:	f1ae 0401 	sub.w	r4, lr, #1
c0de307c:	46c3      	mov	fp, r8
c0de307e:	f04f 0802 	mov.w	r8, #2
c0de3082:	b226      	sxth	r6, r4
c0de3084:	bf08      	it	eq
c0de3086:	f04f 0801 	moveq.w	r8, #1
c0de308a:	2e00      	cmp	r6, #0
c0de308c:	f100 80c9 	bmi.w	c0de3222 <jsmn_parse+0x302>
c0de3090:	b2b4      	uxth	r4, r6
c0de3092:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de3096:	886f      	ldrh	r7, [r5, #2]
c0de3098:	4567      	cmp	r7, ip
c0de309a:	d004      	beq.n	c0de30a6 <jsmn_parse+0x186>
c0de309c:	f835 7f04 	ldrh.w	r7, [r5, #4]!
c0de30a0:	4567      	cmp	r7, ip
c0de30a2:	f000 80c7 	beq.w	c0de3234 <jsmn_parse+0x314>
c0de30a6:	1e74      	subs	r4, r6, #1
c0de30a8:	b226      	sxth	r6, r4
c0de30aa:	f1b6 3fff 	cmp.w	r6, #4294967295	@ 0xffffffff
c0de30ae:	dcef      	bgt.n	c0de3090 <jsmn_parse+0x170>
c0de30b0:	e137      	b.n	c0de3322 <jsmn_parse+0x402>
c0de30b2:	2b00      	cmp	r3, #0
c0de30b4:	f108 0801 	add.w	r8, r8, #1
c0de30b8:	f000 80fc 	beq.w	c0de32b4 <jsmn_parse+0x394>
c0de30bc:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de30be:	fa1f f78e 	uxth.w	r7, lr
c0de30c2:	42af      	cmp	r7, r5
c0de30c4:	f080 8138 	bcs.w	c0de3338 <jsmn_parse+0x418>
c0de30c8:	f10e 0501 	add.w	r5, lr, #1
c0de30cc:	8886      	ldrh	r6, [r0, #4]
c0de30ce:	9501      	str	r5, [sp, #4]
c0de30d0:	8045      	strh	r5, [r0, #2]
c0de30d2:	eb03 05c7 	add.w	r5, r3, r7, lsl #3
c0de30d6:	f04f 0b00 	mov.w	fp, #0
c0de30da:	4566      	cmp	r6, ip
c0de30dc:	f8a5 b006 	strh.w	fp, [r5, #6]
c0de30e0:	f04f 0b01 	mov.w	fp, #1
c0de30e4:	f8a5 c004 	strh.w	ip, [r5, #4]
c0de30e8:	d00b      	beq.n	c0de3102 <jsmn_parse+0x1e2>
c0de30ea:	b236      	sxth	r6, r6
c0de30ec:	46c3      	mov	fp, r8
c0de30ee:	eb03 08c6 	add.w	r8, r3, r6, lsl #3
c0de30f2:	f8b8 6006 	ldrh.w	r6, [r8, #6]
c0de30f6:	3601      	adds	r6, #1
c0de30f8:	f8a8 6006 	strh.w	r6, [r8, #6]
c0de30fc:	46d8      	mov	r8, fp
c0de30fe:	f04f 0b01 	mov.w	fp, #1
c0de3102:	2c7b      	cmp	r4, #123	@ 0x7b
c0de3104:	f04f 0402 	mov.w	r4, #2
c0de3108:	f105 0502 	add.w	r5, r5, #2
c0de310c:	bf08      	it	eq
c0de310e:	2401      	moveq	r4, #1
c0de3110:	f8a0 e004 	strh.w	lr, [r0, #4]
c0de3114:	f8dd e004 	ldr.w	lr, [sp, #4]
c0de3118:	f803 4037 	strb.w	r4, [r3, r7, lsl #3]
c0de311c:	f8a5 a000 	strh.w	sl, [r5]
c0de3120:	e0c8      	b.n	c0de32b4 <jsmn_parse+0x394>
c0de3122:	2b00      	cmp	r3, #0
c0de3124:	f000 80c6 	beq.w	c0de32b4 <jsmn_parse+0x394>
c0de3128:	8884      	ldrh	r4, [r0, #4]
c0de312a:	4564      	cmp	r4, ip
c0de312c:	f000 80c2 	beq.w	c0de32b4 <jsmn_parse+0x394>
c0de3130:	b224      	sxth	r4, r4
c0de3132:	f813 4034 	ldrb.w	r4, [r3, r4, lsl #3]
c0de3136:	3c03      	subs	r4, #3
c0de3138:	f114 0f03 	cmn.w	r4, #3
c0de313c:	f200 80ba 	bhi.w	c0de32b4 <jsmn_parse+0x394>
c0de3140:	9c01      	ldr	r4, [sp, #4]
c0de3142:	3c01      	subs	r4, #1
c0de3144:	b224      	sxth	r4, r4
c0de3146:	2c00      	cmp	r4, #0
c0de3148:	f100 80b4 	bmi.w	c0de32b4 <jsmn_parse+0x394>
c0de314c:	b2a5      	uxth	r5, r4
c0de314e:	f813 6035 	ldrb.w	r6, [r3, r5, lsl #3]
c0de3152:	3e01      	subs	r6, #1
c0de3154:	2e01      	cmp	r6, #1
c0de3156:	d807      	bhi.n	c0de3168 <jsmn_parse+0x248>
c0de3158:	eb03 05c5 	add.w	r5, r3, r5, lsl #3
c0de315c:	886e      	ldrh	r6, [r5, #2]
c0de315e:	4566      	cmp	r6, ip
c0de3160:	d002      	beq.n	c0de3168 <jsmn_parse+0x248>
c0de3162:	88ad      	ldrh	r5, [r5, #4]
c0de3164:	4565      	cmp	r5, ip
c0de3166:	d007      	beq.n	c0de3178 <jsmn_parse+0x258>
c0de3168:	3c01      	subs	r4, #1
c0de316a:	b224      	sxth	r4, r4
c0de316c:	f1b4 3fff 	cmp.w	r4, #4294967295	@ 0xffffffff
c0de3170:	dcec      	bgt.n	c0de314c <jsmn_parse+0x22c>
c0de3172:	e09f      	b.n	c0de32b4 <jsmn_parse+0x394>
c0de3174:	9c01      	ldr	r4, [sp, #4]
c0de3176:	3c01      	subs	r4, #1
c0de3178:	8084      	strh	r4, [r0, #4]
c0de317a:	e09b      	b.n	c0de32b4 <jsmn_parse+0x394>
c0de317c:	2c00      	cmp	r4, #0
c0de317e:	4657      	mov	r7, sl
c0de3180:	f000 80a9 	beq.w	c0de32d6 <jsmn_parse+0x3b6>
c0de3184:	2c1f      	cmp	r4, #31
c0de3186:	dd11      	ble.n	c0de31ac <jsmn_parse+0x28c>
c0de3188:	f1a4 0520 	sub.w	r5, r4, #32
c0de318c:	2d1a      	cmp	r5, #26
c0de318e:	d807      	bhi.n	c0de31a0 <jsmn_parse+0x280>
c0de3190:	f241 0601 	movw	r6, #4097	@ 0x1001
c0de3194:	fa0b f505 	lsl.w	r5, fp, r5
c0de3198:	f2c0 4600 	movt	r6, #1024	@ 0x400
c0de319c:	4235      	tst	r5, r6
c0de319e:	d119      	bne.n	c0de31d4 <jsmn_parse+0x2b4>
c0de31a0:	2c5d      	cmp	r4, #93	@ 0x5d
c0de31a2:	d017      	beq.n	c0de31d4 <jsmn_parse+0x2b4>
c0de31a4:	2c7d      	cmp	r4, #125	@ 0x7d
c0de31a6:	d109      	bne.n	c0de31bc <jsmn_parse+0x29c>
c0de31a8:	e014      	b.n	c0de31d4 <jsmn_parse+0x2b4>
c0de31aa:	bf00      	nop
c0de31ac:	2c0d      	cmp	r4, #13
c0de31ae:	d805      	bhi.n	c0de31bc <jsmn_parse+0x29c>
c0de31b0:	fa0b f504 	lsl.w	r5, fp, r4
c0de31b4:	f242 6601 	movw	r6, #9729	@ 0x2601
c0de31b8:	4235      	tst	r5, r6
c0de31ba:	d10b      	bne.n	c0de31d4 <jsmn_parse+0x2b4>
c0de31bc:	3c7f      	subs	r4, #127	@ 0x7f
c0de31be:	f114 0f5f 	cmn.w	r4, #95	@ 0x5f
c0de31c2:	f0c0 80a7 	bcc.w	c0de3314 <jsmn_parse+0x3f4>
c0de31c6:	3701      	adds	r7, #1
c0de31c8:	b2bc      	uxth	r4, r7
c0de31ca:	4294      	cmp	r4, r2
c0de31cc:	8007      	strh	r7, [r0, #0]
c0de31ce:	d201      	bcs.n	c0de31d4 <jsmn_parse+0x2b4>
c0de31d0:	5d0c      	ldrb	r4, [r1, r4]
c0de31d2:	e7d7      	b.n	c0de3184 <jsmn_parse+0x264>
c0de31d4:	b1ab      	cbz	r3, c0de3202 <jsmn_parse+0x2e2>
c0de31d6:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de31d8:	fa1f f48e 	uxth.w	r4, lr
c0de31dc:	42ac      	cmp	r4, r5
c0de31de:	f080 80a6 	bcs.w	c0de332e <jsmn_parse+0x40e>
c0de31e2:	2604      	movs	r6, #4
c0de31e4:	f10e 0e01 	add.w	lr, lr, #1
c0de31e8:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de31ec:	f803 6034 	strb.w	r6, [r3, r4, lsl #3]
c0de31f0:	2400      	movs	r4, #0
c0de31f2:	f8a0 e002 	strh.w	lr, [r0, #2]
c0de31f6:	f8a5 a002 	strh.w	sl, [r5, #2]
c0de31fa:	80af      	strh	r7, [r5, #4]
c0de31fc:	80ec      	strh	r4, [r5, #6]
c0de31fe:	f8cd e004 	str.w	lr, [sp, #4]
c0de3202:	f1a7 0a01 	sub.w	sl, r7, #1
c0de3206:	2b00      	cmp	r3, #0
c0de3208:	f108 0801 	add.w	r8, r8, #1
c0de320c:	d052      	beq.n	c0de32b4 <jsmn_parse+0x394>
c0de320e:	8884      	ldrh	r4, [r0, #4]
c0de3210:	4564      	cmp	r4, ip
c0de3212:	d04f      	beq.n	c0de32b4 <jsmn_parse+0x394>
c0de3214:	b224      	sxth	r4, r4
c0de3216:	eb03 04c4 	add.w	r4, r3, r4, lsl #3
c0de321a:	88e5      	ldrh	r5, [r4, #6]
c0de321c:	3501      	adds	r5, #1
c0de321e:	80e5      	strh	r5, [r4, #6]
c0de3220:	e048      	b.n	c0de32b4 <jsmn_parse+0x394>
c0de3222:	ea5f 440e 	movs.w	r4, lr, lsl #16
c0de3226:	46d8      	mov	r8, fp
c0de3228:	f04f 0b01 	mov.w	fp, #1
c0de322c:	f8cd e004 	str.w	lr, [sp, #4]
c0de3230:	d140      	bne.n	c0de32b4 <jsmn_parse+0x394>
c0de3232:	e076      	b.n	c0de3322 <jsmn_parse+0x402>
c0de3234:	f813 6034 	ldrb.w	r6, [r3, r4, lsl #3]
c0de3238:	45b0      	cmp	r8, r6
c0de323a:	d172      	bne.n	c0de3322 <jsmn_parse+0x402>
c0de323c:	f10a 0601 	add.w	r6, sl, #1
c0de3240:	46d8      	mov	r8, fp
c0de3242:	f04f 0b01 	mov.w	fp, #1
c0de3246:	f8a0 c004 	strh.w	ip, [r0, #4]
c0de324a:	802e      	strh	r6, [r5, #0]
c0de324c:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de3250:	886e      	ldrh	r6, [r5, #2]
c0de3252:	4566      	cmp	r6, ip
c0de3254:	d002      	beq.n	c0de325c <jsmn_parse+0x33c>
c0de3256:	88ad      	ldrh	r5, [r5, #4]
c0de3258:	4565      	cmp	r5, ip
c0de325a:	d027      	beq.n	c0de32ac <jsmn_parse+0x38c>
c0de325c:	2c00      	cmp	r4, #0
c0de325e:	f1a4 0401 	sub.w	r4, r4, #1
c0de3262:	dcf3      	bgt.n	c0de324c <jsmn_parse+0x32c>
c0de3264:	e023      	b.n	c0de32ae <jsmn_parse+0x38e>
c0de3266:	b37b      	cbz	r3, c0de32c8 <jsmn_parse+0x3a8>
c0de3268:	9e01      	ldr	r6, [sp, #4]
c0de326a:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de326c:	b2b5      	uxth	r5, r6
c0de326e:	42bd      	cmp	r5, r7
c0de3270:	d260      	bcs.n	c0de3334 <jsmn_parse+0x414>
c0de3272:	f106 0e01 	add.w	lr, r6, #1
c0de3276:	eb03 06c5 	add.w	r6, r3, r5, lsl #3
c0de327a:	2703      	movs	r7, #3
c0de327c:	f803 7035 	strb.w	r7, [r3, r5, lsl #3]
c0de3280:	f8a6 8002 	strh.w	r8, [r6, #2]
c0de3284:	8885      	ldrh	r5, [r0, #4]
c0de3286:	f8dd 8000 	ldr.w	r8, [sp]
c0de328a:	2700      	movs	r7, #0
c0de328c:	4565      	cmp	r5, ip
c0de328e:	f108 0801 	add.w	r8, r8, #1
c0de3292:	f8a0 e002 	strh.w	lr, [r0, #2]
c0de3296:	80b4      	strh	r4, [r6, #4]
c0de3298:	80f7      	strh	r7, [r6, #6]
c0de329a:	d005      	beq.n	c0de32a8 <jsmn_parse+0x388>
c0de329c:	b22d      	sxth	r5, r5
c0de329e:	eb03 05c5 	add.w	r5, r3, r5, lsl #3
c0de32a2:	88ee      	ldrh	r6, [r5, #6]
c0de32a4:	3601      	adds	r6, #1
c0de32a6:	80ee      	strh	r6, [r5, #6]
c0de32a8:	46a2      	mov	sl, r4
c0de32aa:	e000      	b.n	c0de32ae <jsmn_parse+0x38e>
c0de32ac:	8084      	strh	r4, [r0, #4]
c0de32ae:	f8cd e004 	str.w	lr, [sp, #4]
c0de32b2:	bf00      	nop
c0de32b4:	f10a 0a01 	add.w	sl, sl, #1
c0de32b8:	fa1f f48a 	uxth.w	r4, sl
c0de32bc:	4294      	cmp	r4, r2
c0de32be:	f8a0 a000 	strh.w	sl, [r0]
c0de32c2:	f4ff ae3f 	bcc.w	c0de2f44 <jsmn_parse+0x24>
c0de32c6:	e006      	b.n	c0de32d6 <jsmn_parse+0x3b6>
c0de32c8:	f8dd 8000 	ldr.w	r8, [sp]
c0de32cc:	46a2      	mov	sl, r4
c0de32ce:	f108 0801 	add.w	r8, r8, #1
c0de32d2:	e7ef      	b.n	c0de32b4 <jsmn_parse+0x394>
c0de32d4:	46f0      	mov	r8, lr
c0de32d6:	b1ab      	cbz	r3, c0de3304 <jsmn_parse+0x3e4>
c0de32d8:	f1ae 0001 	sub.w	r0, lr, #1
c0de32dc:	b200      	sxth	r0, r0
c0de32de:	2800      	cmp	r0, #0
c0de32e0:	d410      	bmi.n	c0de3304 <jsmn_parse+0x3e4>
c0de32e2:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de32e6:	bf00      	nop
c0de32e8:	b282      	uxth	r2, r0
c0de32ea:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de32ee:	8857      	ldrh	r7, [r2, #2]
c0de32f0:	428f      	cmp	r7, r1
c0de32f2:	d002      	beq.n	c0de32fa <jsmn_parse+0x3da>
c0de32f4:	8892      	ldrh	r2, [r2, #4]
c0de32f6:	428a      	cmp	r2, r1
c0de32f8:	d009      	beq.n	c0de330e <jsmn_parse+0x3ee>
c0de32fa:	3801      	subs	r0, #1
c0de32fc:	b200      	sxth	r0, r0
c0de32fe:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de3302:	dcf1      	bgt.n	c0de32e8 <jsmn_parse+0x3c8>
c0de3304:	fa0f f188 	sxth.w	r1, r8
c0de3308:	e00d      	b.n	c0de3326 <jsmn_parse+0x406>
c0de330a:	f8a0 a000 	strh.w	sl, [r0]
c0de330e:	f06f 0102 	mvn.w	r1, #2
c0de3312:	e008      	b.n	c0de3326 <jsmn_parse+0x406>
c0de3314:	f06f 0101 	mvn.w	r1, #1
c0de3318:	f8a0 a000 	strh.w	sl, [r0]
c0de331c:	e003      	b.n	c0de3326 <jsmn_parse+0x406>
c0de331e:	f8a0 a000 	strh.w	sl, [r0]
c0de3322:	f06f 0101 	mvn.w	r1, #1
c0de3326:	4608      	mov	r0, r1
c0de3328:	b002      	add	sp, #8
c0de332a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de332e:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3332:	e7f1      	b.n	c0de3318 <jsmn_parse+0x3f8>
c0de3334:	f8a0 a000 	strh.w	sl, [r0]
c0de3338:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de333c:	e7f3      	b.n	c0de3326 <jsmn_parse+0x406>

c0de333e <jsmn_init>:
c0de333e:	2100      	movs	r1, #0
c0de3340:	8001      	strh	r1, [r0, #0]
c0de3342:	8041      	strh	r1, [r0, #2]
c0de3344:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3348:	8081      	strh	r1, [r0, #4]
c0de334a:	4770      	bx	lr

c0de334c <h_approve>:
c0de334c:	b5b0      	push	{r4, r5, r7, lr}
c0de334e:	f643 00da 	movw	r0, #14554	@ 0x38da
c0de3352:	f2c0 0000 	movt	r0, #0
c0de3356:	4478      	add	r0, pc
c0de3358:	f000 fef5 	bl	c0de4146 <zemu_log_stack>
c0de335c:	2000      	movs	r0, #0
c0de335e:	2100      	movs	r1, #0
c0de3360:	f000 fc22 	bl	c0de3ba8 <view_idle_show_impl>
c0de3364:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de3368:	f2c0 0400 	movt	r4, #0
c0de336c:	eb09 0004 	add.w	r0, r9, r4
c0de3370:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de3374:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de3378:	f240 0502 	movw	r5, #2
c0de337c:	4281      	cmp	r1, r0
c0de337e:	f2c0 0500 	movt	r5, #0
c0de3382:	d256      	bcs.n	c0de3432 <h_approve+0xe6>
c0de3384:	eb09 0005 	add.w	r0, r9, r5
c0de3388:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de338c:	2200      	movs	r2, #0
c0de338e:	f001 f804 	bl	c0de439a <io_seph_recv>
c0de3392:	eb09 0004 	add.w	r0, r9, r4
c0de3396:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de339a:	2800      	cmp	r0, #0
c0de339c:	d041      	beq.n	c0de3422 <h_approve+0xd6>
c0de339e:	eb09 0004 	add.w	r0, r9, r4
c0de33a2:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de33a6:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de33aa:	4281      	cmp	r1, r0
c0de33ac:	d239      	bcs.n	c0de3422 <h_approve+0xd6>
c0de33ae:	f003 fa28 	bl	c0de6802 <os_perso_isonboarded>
c0de33b2:	28aa      	cmp	r0, #170	@ 0xaa
c0de33b4:	d103      	bne.n	c0de33be <h_approve+0x72>
c0de33b6:	f003 fa5a 	bl	c0de686e <os_global_pin_is_validated>
c0de33ba:	28aa      	cmp	r0, #170	@ 0xaa
c0de33bc:	d131      	bne.n	c0de3422 <h_approve+0xd6>
c0de33be:	eb09 0104 	add.w	r1, r9, r4
c0de33c2:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de33c6:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de33ca:	4288      	cmp	r0, r1
c0de33cc:	d224      	bcs.n	c0de3418 <h_approve+0xcc>
c0de33ce:	bf00      	nop
c0de33d0:	b281      	uxth	r1, r0
c0de33d2:	eb09 0004 	add.w	r0, r9, r4
c0de33d6:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de33da:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de33de:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de33e2:	b13b      	cbz	r3, c0de33f4 <h_approve+0xa8>
c0de33e4:	4798      	blx	r3
c0de33e6:	b158      	cbz	r0, c0de3400 <h_approve+0xb4>
c0de33e8:	eb09 0104 	add.w	r1, r9, r4
c0de33ec:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de33f0:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de33f4:	2801      	cmp	r0, #1
c0de33f6:	bf08      	it	eq
c0de33f8:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de33fc:	f000 ff4f 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de3400:	eb09 0204 	add.w	r2, r9, r4
c0de3404:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de3408:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de340c:	3001      	adds	r0, #1
c0de340e:	b283      	uxth	r3, r0
c0de3410:	428b      	cmp	r3, r1
c0de3412:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de3416:	d3db      	bcc.n	c0de33d0 <h_approve+0x84>
c0de3418:	b280      	uxth	r0, r0
c0de341a:	4288      	cmp	r0, r1
c0de341c:	bf08      	it	eq
c0de341e:	f003 fab4 	bleq	c0de698a <screen_update>
c0de3422:	eb09 0004 	add.w	r0, r9, r4
c0de3426:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de342a:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de342e:	4281      	cmp	r1, r0
c0de3430:	d3a8      	bcc.n	c0de3384 <h_approve+0x38>
c0de3432:	eb09 0405 	add.w	r4, r9, r5
c0de3436:	4620      	mov	r0, r4
c0de3438:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de343c:	2200      	movs	r2, #0
c0de343e:	f000 ffac 	bl	c0de439a <io_seph_recv>
c0de3442:	f000 ffa4 	bl	c0de438e <io_seproxyhal_general_status>
c0de3446:	4620      	mov	r0, r4
c0de3448:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de344c:	2200      	movs	r2, #0
c0de344e:	f000 ffa4 	bl	c0de439a <io_seph_recv>
c0de3452:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3456:	f2c0 0000 	movt	r0, #0
c0de345a:	4448      	add	r0, r9
c0de345c:	f241 0148 	movw	r1, #4168	@ 0x1048
c0de3460:	5840      	ldr	r0, [r0, r1]
c0de3462:	b110      	cbz	r0, c0de346a <h_approve+0x11e>
c0de3464:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3468:	4700      	bx	r0
c0de346a:	bdb0      	pop	{r4, r5, r7, pc}

c0de346c <view_idle_show>:
c0de346c:	f000 bb9c 	b.w	c0de3ba8 <view_idle_show_impl>

c0de3470 <h_reject>:
c0de3470:	b5b0      	push	{r4, r5, r7, lr}
c0de3472:	f643 00ee 	movw	r0, #14574	@ 0x38ee
c0de3476:	f2c0 0000 	movt	r0, #0
c0de347a:	4478      	add	r0, pc
c0de347c:	f000 fe63 	bl	c0de4146 <zemu_log_stack>
c0de3480:	2000      	movs	r0, #0
c0de3482:	2100      	movs	r1, #0
c0de3484:	f000 fb90 	bl	c0de3ba8 <view_idle_show_impl>
c0de3488:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de348c:	f2c0 0400 	movt	r4, #0
c0de3490:	eb09 0004 	add.w	r0, r9, r4
c0de3494:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de3498:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de349c:	f240 0502 	movw	r5, #2
c0de34a0:	4281      	cmp	r1, r0
c0de34a2:	f2c0 0500 	movt	r5, #0
c0de34a6:	d256      	bcs.n	c0de3556 <h_reject+0xe6>
c0de34a8:	eb09 0005 	add.w	r0, r9, r5
c0de34ac:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de34b0:	2200      	movs	r2, #0
c0de34b2:	f000 ff72 	bl	c0de439a <io_seph_recv>
c0de34b6:	eb09 0004 	add.w	r0, r9, r4
c0de34ba:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de34be:	2800      	cmp	r0, #0
c0de34c0:	d041      	beq.n	c0de3546 <h_reject+0xd6>
c0de34c2:	eb09 0004 	add.w	r0, r9, r4
c0de34c6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de34ca:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de34ce:	4281      	cmp	r1, r0
c0de34d0:	d239      	bcs.n	c0de3546 <h_reject+0xd6>
c0de34d2:	f003 f996 	bl	c0de6802 <os_perso_isonboarded>
c0de34d6:	28aa      	cmp	r0, #170	@ 0xaa
c0de34d8:	d103      	bne.n	c0de34e2 <h_reject+0x72>
c0de34da:	f003 f9c8 	bl	c0de686e <os_global_pin_is_validated>
c0de34de:	28aa      	cmp	r0, #170	@ 0xaa
c0de34e0:	d131      	bne.n	c0de3546 <h_reject+0xd6>
c0de34e2:	eb09 0104 	add.w	r1, r9, r4
c0de34e6:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de34ea:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de34ee:	4288      	cmp	r0, r1
c0de34f0:	d224      	bcs.n	c0de353c <h_reject+0xcc>
c0de34f2:	bf00      	nop
c0de34f4:	b281      	uxth	r1, r0
c0de34f6:	eb09 0004 	add.w	r0, r9, r4
c0de34fa:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de34fe:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de3502:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de3506:	b13b      	cbz	r3, c0de3518 <h_reject+0xa8>
c0de3508:	4798      	blx	r3
c0de350a:	b158      	cbz	r0, c0de3524 <h_reject+0xb4>
c0de350c:	eb09 0104 	add.w	r1, r9, r4
c0de3510:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de3514:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de3518:	2801      	cmp	r0, #1
c0de351a:	bf08      	it	eq
c0de351c:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de3520:	f000 febd 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de3524:	eb09 0204 	add.w	r2, r9, r4
c0de3528:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de352c:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de3530:	3001      	adds	r0, #1
c0de3532:	b283      	uxth	r3, r0
c0de3534:	428b      	cmp	r3, r1
c0de3536:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de353a:	d3db      	bcc.n	c0de34f4 <h_reject+0x84>
c0de353c:	b280      	uxth	r0, r0
c0de353e:	4288      	cmp	r0, r1
c0de3540:	bf08      	it	eq
c0de3542:	f003 fa22 	bleq	c0de698a <screen_update>
c0de3546:	eb09 0004 	add.w	r0, r9, r4
c0de354a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de354e:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de3552:	4281      	cmp	r1, r0
c0de3554:	d3a8      	bcc.n	c0de34a8 <h_reject+0x38>
c0de3556:	eb09 0405 	add.w	r4, r9, r5
c0de355a:	4620      	mov	r0, r4
c0de355c:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3560:	2200      	movs	r2, #0
c0de3562:	f000 ff1a 	bl	c0de439a <io_seph_recv>
c0de3566:	f000 ff12 	bl	c0de438e <io_seproxyhal_general_status>
c0de356a:	4620      	mov	r0, r4
c0de356c:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3570:	2200      	movs	r2, #0
c0de3572:	f000 ff12 	bl	c0de439a <io_seph_recv>
c0de3576:	f246 35b8 	movw	r5, #25528	@ 0x63b8
c0de357a:	f2c0 0500 	movt	r5, #0
c0de357e:	eb09 0405 	add.w	r4, r9, r5
c0de3582:	4620      	mov	r0, r4
c0de3584:	f240 1111 	movw	r1, #273	@ 0x111
c0de3588:	f003 fa3e 	bl	c0de6a08 <explicit_bzero>
c0de358c:	2069      	movs	r0, #105	@ 0x69
c0de358e:	2286      	movs	r2, #134	@ 0x86
c0de3590:	f809 0005 	strb.w	r0, [r9, r5]
c0de3594:	2020      	movs	r0, #32
c0de3596:	2102      	movs	r1, #2
c0de3598:	7062      	strb	r2, [r4, #1]
c0de359a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de359e:	f000 bf29 	b.w	c0de43f4 <io_exchange>
	...

c0de35a4 <h_error_accept>:
c0de35a4:	b5b0      	push	{r4, r5, r7, lr}
c0de35a6:	2000      	movs	r0, #0
c0de35a8:	2100      	movs	r1, #0
c0de35aa:	f000 fafd 	bl	c0de3ba8 <view_idle_show_impl>
c0de35ae:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de35b2:	f2c0 0400 	movt	r4, #0
c0de35b6:	eb09 0004 	add.w	r0, r9, r4
c0de35ba:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de35be:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de35c2:	f240 0502 	movw	r5, #2
c0de35c6:	4281      	cmp	r1, r0
c0de35c8:	f2c0 0500 	movt	r5, #0
c0de35cc:	d257      	bcs.n	c0de367e <h_error_accept+0xda>
c0de35ce:	bf00      	nop
c0de35d0:	eb09 0005 	add.w	r0, r9, r5
c0de35d4:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de35d8:	2200      	movs	r2, #0
c0de35da:	f000 fede 	bl	c0de439a <io_seph_recv>
c0de35de:	eb09 0004 	add.w	r0, r9, r4
c0de35e2:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de35e6:	2800      	cmp	r0, #0
c0de35e8:	d041      	beq.n	c0de366e <h_error_accept+0xca>
c0de35ea:	eb09 0004 	add.w	r0, r9, r4
c0de35ee:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de35f2:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de35f6:	4281      	cmp	r1, r0
c0de35f8:	d239      	bcs.n	c0de366e <h_error_accept+0xca>
c0de35fa:	f003 f902 	bl	c0de6802 <os_perso_isonboarded>
c0de35fe:	28aa      	cmp	r0, #170	@ 0xaa
c0de3600:	d103      	bne.n	c0de360a <h_error_accept+0x66>
c0de3602:	f003 f934 	bl	c0de686e <os_global_pin_is_validated>
c0de3606:	28aa      	cmp	r0, #170	@ 0xaa
c0de3608:	d131      	bne.n	c0de366e <h_error_accept+0xca>
c0de360a:	eb09 0104 	add.w	r1, r9, r4
c0de360e:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de3612:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de3616:	4288      	cmp	r0, r1
c0de3618:	d224      	bcs.n	c0de3664 <h_error_accept+0xc0>
c0de361a:	bf00      	nop
c0de361c:	b281      	uxth	r1, r0
c0de361e:	eb09 0004 	add.w	r0, r9, r4
c0de3622:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de3626:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de362a:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de362e:	b13b      	cbz	r3, c0de3640 <h_error_accept+0x9c>
c0de3630:	4798      	blx	r3
c0de3632:	b158      	cbz	r0, c0de364c <h_error_accept+0xa8>
c0de3634:	eb09 0104 	add.w	r1, r9, r4
c0de3638:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de363c:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de3640:	2801      	cmp	r0, #1
c0de3642:	bf08      	it	eq
c0de3644:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de3648:	f000 fe29 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de364c:	eb09 0204 	add.w	r2, r9, r4
c0de3650:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de3654:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de3658:	3001      	adds	r0, #1
c0de365a:	b283      	uxth	r3, r0
c0de365c:	428b      	cmp	r3, r1
c0de365e:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de3662:	d3db      	bcc.n	c0de361c <h_error_accept+0x78>
c0de3664:	b280      	uxth	r0, r0
c0de3666:	4288      	cmp	r0, r1
c0de3668:	bf08      	it	eq
c0de366a:	f003 f98e 	bleq	c0de698a <screen_update>
c0de366e:	eb09 0004 	add.w	r0, r9, r4
c0de3672:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de3676:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de367a:	4281      	cmp	r1, r0
c0de367c:	d3a8      	bcc.n	c0de35d0 <h_error_accept+0x2c>
c0de367e:	eb09 0405 	add.w	r4, r9, r5
c0de3682:	4620      	mov	r0, r4
c0de3684:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3688:	2200      	movs	r2, #0
c0de368a:	f000 fe86 	bl	c0de439a <io_seph_recv>
c0de368e:	f000 fe7e 	bl	c0de438e <io_seproxyhal_general_status>
c0de3692:	4620      	mov	r0, r4
c0de3694:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3698:	2200      	movs	r2, #0
c0de369a:	f000 fe7e 	bl	c0de439a <io_seph_recv>
c0de369e:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de36a2:	f2c0 0000 	movt	r0, #0
c0de36a6:	2169      	movs	r1, #105	@ 0x69
c0de36a8:	eb09 0200 	add.w	r2, r9, r0
c0de36ac:	2384      	movs	r3, #132	@ 0x84
c0de36ae:	f809 1000 	strb.w	r1, [r9, r0]
c0de36b2:	2020      	movs	r0, #32
c0de36b4:	2102      	movs	r1, #2
c0de36b6:	7053      	strb	r3, [r2, #1]
c0de36b8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de36bc:	f000 be9a 	b.w	c0de43f4 <io_exchange>

c0de36c0 <h_paging_init>:
c0de36c0:	b580      	push	{r7, lr}
c0de36c2:	f243 603f 	movw	r0, #13887	@ 0x363f
c0de36c6:	f2c0 0000 	movt	r0, #0
c0de36ca:	4478      	add	r0, pc
c0de36cc:	f000 fd3b 	bl	c0de4146 <zemu_log_stack>
c0de36d0:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de36d4:	f2c0 0000 	movt	r0, #0
c0de36d8:	4448      	add	r0, r9
c0de36da:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de36de:	2200      	movs	r2, #0
c0de36e0:	5442      	strb	r2, [r0, r1]
c0de36e2:	f241 0150 	movw	r1, #4176	@ 0x1050
c0de36e6:	2201      	movs	r2, #1
c0de36e8:	5442      	strb	r2, [r0, r1]
c0de36ea:	f241 014e 	movw	r1, #4174	@ 0x104e
c0de36ee:	22ff      	movs	r2, #255	@ 0xff
c0de36f0:	5242      	strh	r2, [r0, r1]
c0de36f2:	bd80      	pop	{r7, pc}

c0de36f4 <h_paging_increase>:
c0de36f4:	b580      	push	{r7, lr}
c0de36f6:	f243 503c 	movw	r0, #13628	@ 0x353c
c0de36fa:	f2c0 0000 	movt	r0, #0
c0de36fe:	4478      	add	r0, pc
c0de3700:	f000 fd21 	bl	c0de4146 <zemu_log_stack>
c0de3704:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3708:	f2c0 0000 	movt	r0, #0
c0de370c:	eb09 0100 	add.w	r1, r9, r0
c0de3710:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de3714:	5c8a      	ldrb	r2, [r1, r2]
c0de3716:	f241 0350 	movw	r3, #4176	@ 0x1050
c0de371a:	5ccb      	ldrb	r3, [r1, r3]
c0de371c:	1c51      	adds	r1, r2, #1
c0de371e:	4299      	cmp	r1, r3
c0de3720:	d312      	bcc.n	c0de3748 <h_paging_increase+0x54>
c0de3722:	eb09 0100 	add.w	r1, r9, r0
c0de3726:	f241 024e 	movw	r2, #4174	@ 0x104e
c0de372a:	5c8a      	ldrb	r2, [r1, r2]
c0de372c:	b182      	cbz	r2, c0de3750 <h_paging_increase+0x5c>
c0de372e:	eb09 0300 	add.w	r3, r9, r0
c0de3732:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de3736:	5c5b      	ldrb	r3, [r3, r1]
c0de3738:	3a01      	subs	r2, #1
c0de373a:	429a      	cmp	r2, r3
c0de373c:	d908      	bls.n	c0de3750 <h_paging_increase+0x5c>
c0de373e:	1c5a      	adds	r2, r3, #1
c0de3740:	eb09 0300 	add.w	r3, r9, r0
c0de3744:	545a      	strb	r2, [r3, r1]
c0de3746:	2100      	movs	r1, #0
c0de3748:	4448      	add	r0, r9
c0de374a:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de374e:	5481      	strb	r1, [r0, r2]
c0de3750:	bd80      	pop	{r7, pc}

c0de3752 <h_paging_can_decrease>:
c0de3752:	b510      	push	{r4, lr}
c0de3754:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3758:	f2c0 0000 	movt	r0, #0
c0de375c:	4448      	add	r0, r9
c0de375e:	f241 014f 	movw	r1, #4175	@ 0x104f
c0de3762:	f241 024d 	movw	r2, #4173	@ 0x104d
c0de3766:	5c41      	ldrb	r1, [r0, r1]
c0de3768:	5c80      	ldrb	r0, [r0, r2]
c0de376a:	ea51 0400 	orrs.w	r4, r1, r0
c0de376e:	bf18      	it	ne
c0de3770:	2401      	movne	r4, #1
c0de3772:	f243 41c8 	movw	r1, #13512	@ 0x34c8
c0de3776:	f2c0 0100 	movt	r1, #0
c0de377a:	f243 603d 	movw	r0, #13885	@ 0x363d
c0de377e:	f2c0 0000 	movt	r0, #0
c0de3782:	4478      	add	r0, pc
c0de3784:	4479      	add	r1, pc
c0de3786:	bf08      	it	eq
c0de3788:	4608      	moveq	r0, r1
c0de378a:	f000 fcdc 	bl	c0de4146 <zemu_log_stack>
c0de378e:	4620      	mov	r0, r4
c0de3790:	bd10      	pop	{r4, pc}

c0de3792 <h_paging_decrease>:
c0de3792:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3794:	b08d      	sub	sp, #52	@ 0x34
c0de3796:	f245 2528 	movw	r5, #21032	@ 0x5228
c0de379a:	f2c0 0500 	movt	r5, #0
c0de379e:	eb09 0705 	add.w	r7, r9, r5
c0de37a2:	f241 064d 	movw	r6, #4173	@ 0x104d
c0de37a6:	5dbb      	ldrb	r3, [r7, r6]
c0de37a8:	f243 7245 	movw	r2, #14149	@ 0x3745
c0de37ac:	f2c0 0200 	movt	r2, #0
c0de37b0:	f10d 0402 	add.w	r4, sp, #2
c0de37b4:	447a      	add	r2, pc
c0de37b6:	4620      	mov	r0, r4
c0de37b8:	2132      	movs	r1, #50	@ 0x32
c0de37ba:	f002 fd37 	bl	c0de622c <snprintf>
c0de37be:	4620      	mov	r0, r4
c0de37c0:	f000 fcc1 	bl	c0de4146 <zemu_log_stack>
c0de37c4:	f241 004f 	movw	r0, #4175	@ 0x104f
c0de37c8:	5c39      	ldrb	r1, [r7, r0]
c0de37ca:	b159      	cbz	r1, c0de37e4 <h_paging_decrease+0x52>
c0de37cc:	3901      	subs	r1, #1
c0de37ce:	eb09 0205 	add.w	r2, r9, r5
c0de37d2:	5411      	strb	r1, [r2, r0]
c0de37d4:	f243 6028 	movw	r0, #13864	@ 0x3628
c0de37d8:	f2c0 0000 	movt	r0, #0
c0de37dc:	4478      	add	r0, pc
c0de37de:	f000 fcb2 	bl	c0de4146 <zemu_log_stack>
c0de37e2:	e014      	b.n	c0de380e <h_paging_decrease+0x7c>
c0de37e4:	eb09 0005 	add.w	r0, r9, r5
c0de37e8:	5d80      	ldrb	r0, [r0, r6]
c0de37ea:	b180      	cbz	r0, c0de380e <h_paging_decrease+0x7c>
c0de37ec:	3801      	subs	r0, #1
c0de37ee:	eb09 0405 	add.w	r4, r9, r5
c0de37f2:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de37f6:	5460      	strb	r0, [r4, r1]
c0de37f8:	f243 601e 	movw	r0, #13854	@ 0x361e
c0de37fc:	f2c0 0000 	movt	r0, #0
c0de3800:	4478      	add	r0, pc
c0de3802:	f000 fca0 	bl	c0de4146 <zemu_log_stack>
c0de3806:	f241 004f 	movw	r0, #4175	@ 0x104f
c0de380a:	21ff      	movs	r1, #255	@ 0xff
c0de380c:	5421      	strb	r1, [r4, r0]
c0de380e:	b00d      	add	sp, #52	@ 0x34
c0de3810:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de3814 <h_review_update_data>:
c0de3814:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3818:	b088      	sub	sp, #32
c0de381a:	f245 2628 	movw	r6, #21032	@ 0x5228
c0de381e:	f2c0 0600 	movt	r6, #0
c0de3822:	eb09 0006 	add.w	r0, r9, r6
c0de3826:	f241 0144 	movw	r1, #4164	@ 0x1044
c0de382a:	5840      	ldr	r0, [r0, r1]
c0de382c:	2800      	cmp	r0, #0
c0de382e:	f000 80c2 	beq.w	c0de39b6 <h_review_update_data+0x1a2>
c0de3832:	eb09 0006 	add.w	r0, r9, r6
c0de3836:	f44f 5b82 	mov.w	fp, #4160	@ 0x1040
c0de383a:	f850 000b 	ldr.w	r0, [r0, fp]
c0de383e:	2800      	cmp	r0, #0
c0de3840:	f000 80bf 	beq.w	c0de39c2 <h_review_update_data+0x1ae>
c0de3844:	eb09 0006 	add.w	r0, r9, r6
c0de3848:	f241 0a4d 	movw	sl, #4173	@ 0x104d
c0de384c:	f241 014f 	movw	r1, #4175	@ 0x104f
c0de3850:	f810 300a 	ldrb.w	r3, [r0, sl]
c0de3854:	5c45      	ldrb	r5, [r0, r1]
c0de3856:	f243 5211 	movw	r2, #13585	@ 0x3511
c0de385a:	f2c0 0200 	movt	r2, #0
c0de385e:	af03      	add	r7, sp, #12
c0de3860:	447a      	add	r2, pc
c0de3862:	4638      	mov	r0, r7
c0de3864:	2114      	movs	r1, #20
c0de3866:	9500      	str	r5, [sp, #0]
c0de3868:	f002 fce0 	bl	c0de622c <snprintf>
c0de386c:	4638      	mov	r0, r7
c0de386e:	f000 fc6a 	bl	c0de4146 <zemu_log_stack>
c0de3872:	f241 084e 	movw	r8, #4174	@ 0x104e
c0de3876:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de387a:	bf00      	nop
c0de387c:	eb09 0006 	add.w	r0, r9, r6
c0de3880:	f241 0144 	movw	r1, #4164	@ 0x1044
c0de3884:	5841      	ldr	r1, [r0, r1]
c0de3886:	4440      	add	r0, r8
c0de3888:	4788      	blx	r1
c0de388a:	2803      	cmp	r0, #3
c0de388c:	f040 80a1 	bne.w	c0de39d2 <h_review_update_data+0x1be>
c0de3890:	eb09 0106 	add.w	r1, r9, r6
c0de3894:	f851 500b 	ldr.w	r5, [r1, fp]
c0de3898:	f911 000a 	ldrsb.w	r0, [r1, sl]
c0de389c:	19ca      	adds	r2, r1, r7
c0de389e:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
c0de38a2:	9300      	str	r3, [sp, #0]
c0de38a4:	9202      	str	r2, [sp, #8]
c0de38a6:	f101 0340 	add.w	r3, r1, #64	@ 0x40
c0de38aa:	2240      	movs	r2, #64	@ 0x40
c0de38ac:	2400      	movs	r4, #0
c0de38ae:	9401      	str	r4, [sp, #4]
c0de38b0:	47a8      	blx	r5
c0de38b2:	2803      	cmp	r0, #3
c0de38b4:	f040 808d 	bne.w	c0de39d2 <h_review_update_data+0x1be>
c0de38b8:	eb09 0506 	add.w	r5, r9, r6
c0de38bc:	2001      	movs	r0, #1
c0de38be:	55e8      	strb	r0, [r5, r7]
c0de38c0:	eb05 0807 	add.w	r8, r5, r7
c0de38c4:	f000 f96d 	bl	c0de3ba2 <get_max_char_per_line>
c0de38c8:	f915 100a 	ldrsb.w	r1, [r5, sl]
c0de38cc:	f855 700b 	ldr.w	r7, [r5, fp]
c0de38d0:	fa1f fa80 	uxth.w	sl, r0
c0de38d4:	f04f 0c00 	mov.w	ip, #0
c0de38d8:	f105 0340 	add.w	r3, r5, #64	@ 0x40
c0de38dc:	4608      	mov	r0, r1
c0de38de:	4629      	mov	r1, r5
c0de38e0:	2240      	movs	r2, #64	@ 0x40
c0de38e2:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de38e6:	f241 0b4d 	movw	fp, #4173	@ 0x104d
c0de38ea:	f8cd a000 	str.w	sl, [sp]
c0de38ee:	f8cd 8008 	str.w	r8, [sp, #8]
c0de38f2:	f8cd c004 	str.w	ip, [sp, #4]
c0de38f6:	47b8      	blx	r7
c0de38f8:	2803      	cmp	r0, #3
c0de38fa:	d16a      	bne.n	c0de39d2 <h_review_update_data+0x1be>
c0de38fc:	eb09 0106 	add.w	r1, r9, r6
c0de3900:	5d08      	ldrb	r0, [r1, r4]
c0de3902:	f241 034f 	movw	r3, #4175	@ 0x104f
c0de3906:	5cca      	ldrb	r2, [r1, r3]
c0de3908:	b128      	cbz	r0, c0de3916 <h_review_update_data+0x102>
c0de390a:	4282      	cmp	r2, r0
c0de390c:	bf82      	ittt	hi
c0de390e:	1e42      	subhi	r2, r0, #1
c0de3910:	eb09 0006 	addhi.w	r0, r9, r6
c0de3914:	54c2      	strbhi	r2, [r0, r3]
c0de3916:	eb09 0106 	add.w	r1, r9, r6
c0de391a:	f44f 5082 	mov.w	r0, #4160	@ 0x1040
c0de391e:	580f      	ldr	r7, [r1, r0]
c0de3920:	f911 000b 	ldrsb.w	r0, [r1, fp]
c0de3924:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de3928:	b2d2      	uxtb	r2, r2
c0de392a:	190d      	adds	r5, r1, r4
c0de392c:	e9cd a200 	strd	sl, r2, [sp]
c0de3930:	f101 0340 	add.w	r3, r1, #64	@ 0x40
c0de3934:	2240      	movs	r2, #64	@ 0x40
c0de3936:	9502      	str	r5, [sp, #8]
c0de3938:	47b8      	blx	r7
c0de393a:	2803      	cmp	r0, #3
c0de393c:	d149      	bne.n	c0de39d2 <h_review_update_data+0x1be>
c0de393e:	eb09 0006 	add.w	r0, r9, r6
c0de3942:	f241 084e 	movw	r8, #4174	@ 0x104e
c0de3946:	f810 1008 	ldrb.w	r1, [r0, r8]
c0de394a:	5d05      	ldrb	r5, [r0, r4]
c0de394c:	3101      	adds	r1, #1
c0de394e:	2d02      	cmp	r5, #2
c0de3950:	f241 0a4d 	movw	sl, #4173	@ 0x104d
c0de3954:	f44f 5b82 	mov.w	fp, #4160	@ 0x1040
c0de3958:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de395c:	f800 1008 	strb.w	r1, [r0, r8]
c0de3960:	d31c      	bcc.n	c0de399c <h_review_update_data+0x188>
c0de3962:	eb09 0006 	add.w	r0, r9, r6
c0de3966:	f003 f8ad 	bl	c0de6ac4 <strlen>
c0de396a:	b2c1      	uxtb	r1, r0
c0de396c:	293f      	cmp	r1, #63	@ 0x3f
c0de396e:	d81e      	bhi.n	c0de39ae <h_review_update_data+0x19a>
c0de3970:	eb09 0706 	add.w	r7, r9, r6
c0de3974:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de3978:	5cba      	ldrb	r2, [r7, r2]
c0de397a:	1878      	adds	r0, r7, r1
c0de397c:	1c53      	adds	r3, r2, #1
c0de397e:	f243 32f8 	movw	r2, #13304	@ 0x33f8
c0de3982:	f2c0 0200 	movt	r2, #0
c0de3986:	f1c1 0140 	rsb	r1, r1, #64	@ 0x40
c0de398a:	447a      	add	r2, pc
c0de398c:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de3990:	9500      	str	r5, [sp, #0]
c0de3992:	f002 fc4b 	bl	c0de622c <snprintf>
c0de3996:	5d3d      	ldrb	r5, [r7, r4]
c0de3998:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de399c:	b93d      	cbnz	r5, c0de39ae <h_review_update_data+0x19a>
c0de399e:	f7ff fea9 	bl	c0de36f4 <h_paging_increase>
c0de39a2:	eb09 0006 	add.w	r0, r9, r6
c0de39a6:	5dc0      	ldrb	r0, [r0, r7]
c0de39a8:	2800      	cmp	r0, #0
c0de39aa:	f43f af67 	beq.w	c0de387c <h_review_update_data+0x68>
c0de39ae:	f000 f8e5 	bl	c0de3b7c <splitValueAddress>
c0de39b2:	2003      	movs	r0, #3
c0de39b4:	e00d      	b.n	c0de39d2 <h_review_update_data+0x1be>
c0de39b6:	f243 5054 	movw	r0, #13652	@ 0x3554
c0de39ba:	f2c0 0000 	movt	r0, #0
c0de39be:	4478      	add	r0, pc
c0de39c0:	e004      	b.n	c0de39cc <h_review_update_data+0x1b8>
c0de39c2:	f243 7027 	movw	r0, #14119	@ 0x3727
c0de39c6:	f2c0 0000 	movt	r0, #0
c0de39ca:	4478      	add	r0, pc
c0de39cc:	f000 fbbb 	bl	c0de4146 <zemu_log_stack>
c0de39d0:	2005      	movs	r0, #5
c0de39d2:	b008      	add	sp, #32
c0de39d4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de39d8 <view_init>:
c0de39d8:	b580      	push	{r7, lr}
c0de39da:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de39de:	f2c0 0000 	movt	r0, #0
c0de39e2:	4448      	add	r0, r9
c0de39e4:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de39e8:	f003 f802 	bl	c0de69f0 <__aeabi_memclr>
c0de39ec:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de39f0:	f2c0 0000 	movt	r0, #0
c0de39f4:	4448      	add	r0, r9
c0de39f6:	f241 014c 	movw	r1, #4172	@ 0x104c
c0de39fa:	2200      	movs	r2, #0
c0de39fc:	5442      	strb	r2, [r0, r1]
c0de39fe:	bd80      	pop	{r7, pc}

c0de3a00 <view_review_init>:
c0de3a00:	f245 2328 	movw	r3, #21032	@ 0x5228
c0de3a04:	f2c0 0300 	movt	r3, #0
c0de3a08:	eb09 0c03 	add.w	ip, r9, r3
c0de3a0c:	f44f 5382 	mov.w	r3, #4160	@ 0x1040
c0de3a10:	f84c 0003 	str.w	r0, [ip, r3]
c0de3a14:	f241 0044 	movw	r0, #4164	@ 0x1044
c0de3a18:	f84c 1000 	str.w	r1, [ip, r0]
c0de3a1c:	f241 0048 	movw	r0, #4168	@ 0x1048
c0de3a20:	f84c 2000 	str.w	r2, [ip, r0]
c0de3a24:	4770      	bx	lr

c0de3a26 <view_review_show>:
c0de3a26:	f000 b8fc 	b.w	c0de3c22 <view_review_show_impl>

c0de3a2a <view_error_show>:
c0de3a2a:	b510      	push	{r4, lr}
c0de3a2c:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3a30:	f2c0 0000 	movt	r0, #0
c0de3a34:	f243 4174 	movw	r1, #13428	@ 0x3474
c0de3a38:	eb09 0400 	add.w	r4, r9, r0
c0de3a3c:	f2c0 0100 	movt	r1, #0
c0de3a40:	4479      	add	r1, pc
c0de3a42:	4620      	mov	r0, r4
c0de3a44:	2206      	movs	r2, #6
c0de3a46:	f002 ffd6 	bl	c0de69f6 <__aeabi_memcpy>
c0de3a4a:	f244 515a 	movw	r1, #17754	@ 0x455a
c0de3a4e:	f2c0 0100 	movt	r1, #0
c0de3a52:	4479      	add	r1, pc
c0de3a54:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de3a58:	c91c      	ldmia	r1!, {r2, r3, r4}
c0de3a5a:	7809      	ldrb	r1, [r1, #0]
c0de3a5c:	c01c      	stmia	r0!, {r2, r3, r4}
c0de3a5e:	7001      	strb	r1, [r0, #0]
c0de3a60:	f000 f879 	bl	c0de3b56 <splitValueField>
c0de3a64:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3a68:	f000 b8fb 	b.w	c0de3c62 <view_error_show_impl>

c0de3a6c <ux_idle_flow_4_step_validateinit>:
c0de3a6c:	4770      	bx	lr

c0de3a6e <ux_idle_flow_6_step_validateinit>:
c0de3a6e:	20ff      	movs	r0, #255	@ 0xff
c0de3a70:	f002 ff2b 	bl	c0de68ca <os_sched_exit>

c0de3a74 <ux_error_flow_2_step_validateinit>:
c0de3a74:	2000      	movs	r0, #0
c0de3a76:	f7ff bd95 	b.w	c0de35a4 <h_error_accept>

c0de3a7a <ux_review_flow_2_start_step_init>:
c0de3a7a:	f000 b811 	b.w	c0de3aa0 <h_review_loop_start>

c0de3a7e <ux_review_flow_2_step_init>:
c0de3a7e:	f246 217c 	movw	r1, #25212	@ 0x627c
c0de3a82:	f2c0 0100 	movt	r1, #0
c0de3a86:	2201      	movs	r2, #1
c0de3a88:	f809 2001 	strb.w	r2, [r9, r1]
c0de3a8c:	f002 b910 	b.w	c0de5cb0 <ux_layout_bn_paging_init>

c0de3a90 <ux_review_flow_2_end_step_init>:
c0de3a90:	f000 b829 	b.w	c0de3ae6 <h_review_loop_end>

c0de3a94 <ux_review_flow_3_step_validateinit>:
c0de3a94:	2000      	movs	r0, #0
c0de3a96:	f7ff bc59 	b.w	c0de334c <h_approve>

c0de3a9a <ux_review_flow_4_step_validateinit>:
c0de3a9a:	2000      	movs	r0, #0
c0de3a9c:	f7ff bce8 	b.w	c0de3470 <h_reject>

c0de3aa0 <h_review_loop_start>:
c0de3aa0:	b510      	push	{r4, lr}
c0de3aa2:	f246 247c 	movw	r4, #25212	@ 0x627c
c0de3aa6:	f2c0 0400 	movt	r4, #0
c0de3aaa:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de3aae:	b128      	cbz	r0, c0de3abc <h_review_loop_start+0x1c>
c0de3ab0:	f7ff fe4f 	bl	c0de3752 <h_paging_can_decrease>
c0de3ab4:	b180      	cbz	r0, c0de3ad8 <h_review_loop_start+0x38>
c0de3ab6:	f7ff fe6c 	bl	c0de3792 <h_paging_decrease>
c0de3aba:	e001      	b.n	c0de3ac0 <h_review_loop_start+0x20>
c0de3abc:	f7ff fe00 	bl	c0de36c0 <h_paging_init>
c0de3ac0:	f7ff fea8 	bl	c0de3814 <h_review_update_data>
c0de3ac4:	2803      	cmp	r0, #3
c0de3ac6:	d003      	beq.n	c0de3ad0 <h_review_loop_start+0x30>
c0de3ac8:	2805      	cmp	r0, #5
c0de3aca:	d001      	beq.n	c0de3ad0 <h_review_loop_start+0x30>
c0de3acc:	f7ff ffad 	bl	c0de3a2a <view_error_show>
c0de3ad0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3ad4:	f001 bd4b 	b.w	c0de556e <ux_flow_next>
c0de3ad8:	2000      	movs	r0, #0
c0de3ada:	f809 0004 	strb.w	r0, [r9, r4]
c0de3ade:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3ae2:	f001 bd47 	b.w	c0de5574 <ux_flow_prev>

c0de3ae6 <h_review_loop_end>:
c0de3ae6:	b510      	push	{r4, lr}
c0de3ae8:	f246 247c 	movw	r4, #25212	@ 0x627c
c0de3aec:	f2c0 0400 	movt	r4, #0
c0de3af0:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de3af4:	b150      	cbz	r0, c0de3b0c <h_review_loop_end+0x26>
c0de3af6:	f7ff fdfd 	bl	c0de36f4 <h_paging_increase>
c0de3afa:	f7ff fe8b 	bl	c0de3814 <h_review_update_data>
c0de3afe:	2805      	cmp	r0, #5
c0de3b00:	d022      	beq.n	c0de3b48 <h_review_loop_end+0x62>
c0de3b02:	2803      	cmp	r0, #3
c0de3b04:	d10a      	bne.n	c0de3b1c <h_review_loop_end+0x36>
c0de3b06:	f002 f8c8 	bl	c0de5c9a <ux_layout_paging_reset>
c0de3b0a:	e009      	b.n	c0de3b20 <h_review_loop_end+0x3a>
c0de3b0c:	f7ff fe41 	bl	c0de3792 <h_paging_decrease>
c0de3b10:	f7ff fe80 	bl	c0de3814 <h_review_update_data>
c0de3b14:	2803      	cmp	r0, #3
c0de3b16:	d003      	beq.n	c0de3b20 <h_review_loop_end+0x3a>
c0de3b18:	2805      	cmp	r0, #5
c0de3b1a:	d001      	beq.n	c0de3b20 <h_review_loop_end+0x3a>
c0de3b1c:	f7ff ff85 	bl	c0de3a2a <view_error_show>
c0de3b20:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3b24:	f2c0 0000 	movt	r0, #0
c0de3b28:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de3b2c:	4448      	add	r0, r9
c0de3b2e:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de3b32:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de3b36:	8a81      	ldrh	r1, [r0, #20]
c0de3b38:	1e8a      	subs	r2, r1, #2
c0de3b3a:	3901      	subs	r1, #1
c0de3b3c:	82c2      	strh	r2, [r0, #22]
c0de3b3e:	8281      	strh	r1, [r0, #20]
c0de3b40:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3b44:	f001 be9b 	b.w	c0de587e <ux_flow_relayout>
c0de3b48:	2000      	movs	r0, #0
c0de3b4a:	f809 0004 	strb.w	r0, [r9, r4]
c0de3b4e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3b52:	f001 bd0c 	b.w	c0de556e <ux_flow_next>

c0de3b56 <splitValueField>:
c0de3b56:	b510      	push	{r4, lr}
c0de3b58:	f245 2428 	movw	r4, #21032	@ 0x5228
c0de3b5c:	f2c0 0400 	movt	r4, #0
c0de3b60:	eb09 0004 	add.w	r0, r9, r4
c0de3b64:	3040      	adds	r0, #64	@ 0x40
c0de3b66:	f002 ffad 	bl	c0de6ac4 <strlen>
c0de3b6a:	0400      	lsls	r0, r0, #16
c0de3b6c:	bf18      	it	ne
c0de3b6e:	bd10      	popne	{r4, pc}
c0de3b70:	eb09 0004 	add.w	r0, r9, r4
c0de3b74:	2120      	movs	r1, #32
c0de3b76:	f8a0 1040 	strh.w	r1, [r0, #64]	@ 0x40
c0de3b7a:	bd10      	pop	{r4, pc}

c0de3b7c <splitValueAddress>:
c0de3b7c:	b510      	push	{r4, lr}
c0de3b7e:	f245 2428 	movw	r4, #21032	@ 0x5228
c0de3b82:	f2c0 0400 	movt	r4, #0
c0de3b86:	eb09 0004 	add.w	r0, r9, r4
c0de3b8a:	3040      	adds	r0, #64	@ 0x40
c0de3b8c:	f002 ff9a 	bl	c0de6ac4 <strlen>
c0de3b90:	0400      	lsls	r0, r0, #16
c0de3b92:	bf18      	it	ne
c0de3b94:	bd10      	popne	{r4, pc}
c0de3b96:	eb09 0004 	add.w	r0, r9, r4
c0de3b9a:	2120      	movs	r1, #32
c0de3b9c:	f8a0 1040 	strh.w	r1, [r0, #64]	@ 0x40
c0de3ba0:	bd10      	pop	{r4, pc}

c0de3ba2 <get_max_char_per_line>:
c0de3ba2:	f44f 5080 	mov.w	r0, #4096	@ 0x1000
c0de3ba6:	4770      	bx	lr

c0de3ba8 <view_idle_show_impl>:
c0de3ba8:	b580      	push	{r7, lr}
c0de3baa:	b171      	cbz	r1, c0de3bca <view_idle_show_impl+0x22>
c0de3bac:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3bb0:	f243 1257 	movw	r2, #12631	@ 0x3157
c0de3bb4:	f2c0 0000 	movt	r0, #0
c0de3bb8:	f2c0 0200 	movt	r2, #0
c0de3bbc:	460b      	mov	r3, r1
c0de3bbe:	4448      	add	r0, r9
c0de3bc0:	447a      	add	r2, pc
c0de3bc2:	2140      	movs	r1, #64	@ 0x40
c0de3bc4:	f002 fb32 	bl	c0de622c <snprintf>
c0de3bc8:	e017      	b.n	c0de3bfa <view_idle_show_impl+0x52>
c0de3bca:	f000 f876 	bl	c0de3cba <app_mode_secret>
c0de3bce:	b138      	cbz	r0, c0de3be0 <view_idle_show_impl+0x38>
c0de3bd0:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3bd4:	f2c0 0000 	movt	r0, #0
c0de3bd8:	213f      	movs	r1, #63	@ 0x3f
c0de3bda:	f829 1000 	strh.w	r1, [r9, r0]
c0de3bde:	e00c      	b.n	c0de3bfa <view_idle_show_impl+0x52>
c0de3be0:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3be4:	f243 2124 	movw	r1, #12836	@ 0x3224
c0de3be8:	f2c0 0000 	movt	r0, #0
c0de3bec:	f2c0 0100 	movt	r1, #0
c0de3bf0:	4448      	add	r0, r9
c0de3bf2:	4479      	add	r1, pc
c0de3bf4:	2206      	movs	r2, #6
c0de3bf6:	f002 fefe 	bl	c0de69f6 <__aeabi_memcpy>
c0de3bfa:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3bfe:	f2c0 0000 	movt	r0, #0
c0de3c02:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3c06:	b908      	cbnz	r0, c0de3c0c <view_idle_show_impl+0x64>
c0de3c08:	f002 fa09 	bl	c0de601e <ux_stack_push>
c0de3c0c:	f244 4154 	movw	r1, #17492	@ 0x4454
c0de3c10:	f2c0 0100 	movt	r1, #0
c0de3c14:	4479      	add	r1, pc
c0de3c16:	2000      	movs	r0, #0
c0de3c18:	2200      	movs	r2, #0
c0de3c1a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3c1e:	f001 bda3 	b.w	c0de5768 <ux_flow_init>

c0de3c22 <view_review_show_impl>:
c0de3c22:	b580      	push	{r7, lr}
c0de3c24:	f7ff fd4c 	bl	c0de36c0 <h_paging_init>
c0de3c28:	f7ff fdb3 	bl	c0de3792 <h_paging_decrease>
c0de3c2c:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de3c30:	f2c0 0100 	movt	r1, #0
c0de3c34:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de3c38:	f246 207c 	movw	r0, #25212	@ 0x627c
c0de3c3c:	f2c0 0000 	movt	r0, #0
c0de3c40:	2200      	movs	r2, #0
c0de3c42:	f809 2000 	strb.w	r2, [r9, r0]
c0de3c46:	b909      	cbnz	r1, c0de3c4c <view_review_show_impl+0x2a>
c0de3c48:	f002 f9e9 	bl	c0de601e <ux_stack_push>
c0de3c4c:	f244 5134 	movw	r1, #17716	@ 0x4534
c0de3c50:	f2c0 0100 	movt	r1, #0
c0de3c54:	4479      	add	r1, pc
c0de3c56:	2000      	movs	r0, #0
c0de3c58:	2200      	movs	r2, #0
c0de3c5a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3c5e:	f001 bd83 	b.w	c0de5768 <ux_flow_init>

c0de3c62 <view_error_show_impl>:
c0de3c62:	b580      	push	{r7, lr}
c0de3c64:	f002 f819 	bl	c0de5c9a <ux_layout_paging_reset>
c0de3c68:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3c6c:	f2c0 0000 	movt	r0, #0
c0de3c70:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3c74:	b908      	cbnz	r0, c0de3c7a <view_error_show_impl+0x18>
c0de3c76:	f002 f9d2 	bl	c0de601e <ux_stack_push>
c0de3c7a:	f244 4146 	movw	r1, #17478	@ 0x4446
c0de3c7e:	f2c0 0100 	movt	r1, #0
c0de3c82:	4479      	add	r1, pc
c0de3c84:	2000      	movs	r0, #0
c0de3c86:	2200      	movs	r2, #0
c0de3c88:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3c8c:	f001 bd6c 	b.w	c0de5768 <ux_flow_init>

c0de3c90 <app_mode_reset>:
c0de3c90:	f246 309c 	movw	r0, #25500	@ 0x639c
c0de3c94:	f2c0 0000 	movt	r0, #0
c0de3c98:	2100      	movs	r1, #0
c0de3c9a:	f809 1000 	strb.w	r1, [r9, r0]
c0de3c9e:	4770      	bx	lr

c0de3ca0 <app_mode_expert>:
c0de3ca0:	b580      	push	{r7, lr}
c0de3ca2:	f249 5052 	movw	r0, #38226	@ 0x9552
c0de3ca6:	f2c0 0000 	movt	r0, #0
c0de3caa:	4478      	add	r0, pc
c0de3cac:	f002 fd70 	bl	c0de6790 <pic>
c0de3cb0:	7800      	ldrb	r0, [r0, #0]
c0de3cb2:	2800      	cmp	r0, #0
c0de3cb4:	bf18      	it	ne
c0de3cb6:	2001      	movne	r0, #1
c0de3cb8:	bd80      	pop	{r7, pc}

c0de3cba <app_mode_secret>:
c0de3cba:	f246 309c 	movw	r0, #25500	@ 0x639c
c0de3cbe:	f2c0 0000 	movt	r0, #0
c0de3cc2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3cc6:	2800      	cmp	r0, #0
c0de3cc8:	bf18      	it	ne
c0de3cca:	2001      	movne	r0, #1
c0de3ccc:	4770      	bx	lr

c0de3cce <bech32EncodeFromBytes>:
c0de3cce:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3cd2:	b0a4      	sub	sp, #144	@ 0x90
c0de3cd4:	9f2c      	ldr	r7, [sp, #176]	@ 0xb0
c0de3cd6:	469a      	mov	sl, r3
c0de3cd8:	4614      	mov	r4, r2
c0de3cda:	460e      	mov	r6, r1
c0de3cdc:	4605      	mov	r5, r0
c0de3cde:	f002 fe93 	bl	c0de6a08 <explicit_bzero>
c0de3ce2:	2f40      	cmp	r7, #64	@ 0x40
c0de3ce4:	d82c      	bhi.n	c0de3d40 <bech32EncodeFromBytes+0x72>
c0de3ce6:	4620      	mov	r0, r4
c0de3ce8:	f002 feec 	bl	c0de6ac4 <strlen>
c0de3cec:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de3cf0:	3007      	adds	r0, #7
c0de3cf2:	42b0      	cmp	r0, r6
c0de3cf4:	d901      	bls.n	c0de3cfa <bech32EncodeFromBytes+0x2c>
c0de3cf6:	2006      	movs	r0, #6
c0de3cf8:	e023      	b.n	c0de3d42 <bech32EncodeFromBytes+0x74>
c0de3cfa:	2000      	movs	r0, #0
c0de3cfc:	f10d 0810 	add.w	r8, sp, #16
c0de3d00:	f8dd b0b4 	ldr.w	fp, [sp, #180]	@ 0xb4
c0de3d04:	9003      	str	r0, [sp, #12]
c0de3d06:	4640      	mov	r0, r8
c0de3d08:	2180      	movs	r1, #128	@ 0x80
c0de3d0a:	f002 fe7d 	bl	c0de6a08 <explicit_bzero>
c0de3d0e:	2008      	movs	r0, #8
c0de3d10:	e9cd 7000 	strd	r7, r0, [sp]
c0de3d14:	a903      	add	r1, sp, #12
c0de3d16:	4640      	mov	r0, r8
c0de3d18:	2205      	movs	r2, #5
c0de3d1a:	4653      	mov	r3, sl
c0de3d1c:	f8cd b008 	str.w	fp, [sp, #8]
c0de3d20:	f000 f95a 	bl	c0de3fd8 <convert_bits>
c0de3d24:	9b03      	ldr	r3, [sp, #12]
c0de3d26:	42b3      	cmp	r3, r6
c0de3d28:	d20a      	bcs.n	c0de3d40 <bech32EncodeFromBytes+0x72>
c0de3d2a:	aa04      	add	r2, sp, #16
c0de3d2c:	4628      	mov	r0, r5
c0de3d2e:	4621      	mov	r1, r4
c0de3d30:	f000 f8d8 	bl	c0de3ee4 <bech32_encode>
c0de3d34:	4601      	mov	r1, r0
c0de3d36:	2003      	movs	r0, #3
c0de3d38:	2900      	cmp	r1, #0
c0de3d3a:	bf08      	it	eq
c0de3d3c:	200a      	moveq	r0, #10
c0de3d3e:	e000      	b.n	c0de3d42 <bech32EncodeFromBytes+0x74>
c0de3d40:	2009      	movs	r0, #9
c0de3d42:	b024      	add	sp, #144	@ 0x90
c0de3d44:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3d48 <buffering_init>:
c0de3d48:	f246 3ca0 	movw	ip, #25504	@ 0x63a0
c0de3d4c:	f2c0 0c00 	movt	ip, #0
c0de3d50:	f849 000c 	str.w	r0, [r9, ip]
c0de3d54:	eb09 000c 	add.w	r0, r9, ip
c0de3d58:	8081      	strh	r1, [r0, #4]
c0de3d5a:	7a01      	ldrb	r1, [r0, #8]
c0de3d5c:	f04f 0c00 	mov.w	ip, #0
c0de3d60:	f041 0101 	orr.w	r1, r1, #1
c0de3d64:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de3d68:	7201      	strb	r1, [r0, #8]
c0de3d6a:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3d6e:	f2c0 0000 	movt	r0, #0
c0de3d72:	f849 2000 	str.w	r2, [r9, r0]
c0de3d76:	4448      	add	r0, r9
c0de3d78:	7a01      	ldrb	r1, [r0, #8]
c0de3d7a:	8083      	strh	r3, [r0, #4]
c0de3d7c:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de3d80:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de3d84:	7201      	strb	r1, [r0, #8]
c0de3d86:	4770      	bx	lr

c0de3d88 <buffering_reset>:
c0de3d88:	f246 30a0 	movw	r0, #25504	@ 0x63a0
c0de3d8c:	f2c0 0000 	movt	r0, #0
c0de3d90:	4448      	add	r0, r9
c0de3d92:	7a02      	ldrb	r2, [r0, #8]
c0de3d94:	2100      	movs	r1, #0
c0de3d96:	f042 0201 	orr.w	r2, r2, #1
c0de3d9a:	80c1      	strh	r1, [r0, #6]
c0de3d9c:	7202      	strb	r2, [r0, #8]
c0de3d9e:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3da2:	f2c0 0000 	movt	r0, #0
c0de3da6:	4448      	add	r0, r9
c0de3da8:	7a02      	ldrb	r2, [r0, #8]
c0de3daa:	80c1      	strh	r1, [r0, #6]
c0de3dac:	f002 01fe 	and.w	r1, r2, #254	@ 0xfe
c0de3db0:	7201      	strb	r1, [r0, #8]
c0de3db2:	4770      	bx	lr

c0de3db4 <buffering_append>:
c0de3db4:	b570      	push	{r4, r5, r6, lr}
c0de3db6:	f246 36a0 	movw	r6, #25504	@ 0x63a0
c0de3dba:	f2c0 0600 	movt	r6, #0
c0de3dbe:	eb09 0206 	add.w	r2, r9, r6
c0de3dc2:	7a12      	ldrb	r2, [r2, #8]
c0de3dc4:	460c      	mov	r4, r1
c0de3dc6:	07d1      	lsls	r1, r2, #31
c0de3dc8:	4605      	mov	r5, r0
c0de3dca:	d10c      	bne.n	c0de3de6 <buffering_append+0x32>
c0de3dcc:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3dd0:	f2c0 0000 	movt	r0, #0
c0de3dd4:	eb09 0100 	add.w	r1, r9, r0
c0de3dd8:	888a      	ldrh	r2, [r1, #4]
c0de3dda:	88c9      	ldrh	r1, [r1, #6]
c0de3ddc:	1a52      	subs	r2, r2, r1
c0de3dde:	42a2      	cmp	r2, r4
c0de3de0:	da25      	bge.n	c0de3e2e <buffering_append+0x7a>
c0de3de2:	2400      	movs	r4, #0
c0de3de4:	e038      	b.n	c0de3e58 <buffering_append+0xa4>
c0de3de6:	eb09 0006 	add.w	r0, r9, r6
c0de3dea:	8883      	ldrh	r3, [r0, #4]
c0de3dec:	88c1      	ldrh	r1, [r0, #6]
c0de3dee:	1a58      	subs	r0, r3, r1
c0de3df0:	42a0      	cmp	r0, r4
c0de3df2:	da26      	bge.n	c0de3e42 <buffering_append+0x8e>
c0de3df4:	f246 33ac 	movw	r3, #25516	@ 0x63ac
c0de3df8:	f2c0 0300 	movt	r3, #0
c0de3dfc:	444b      	add	r3, r9
c0de3dfe:	7a18      	ldrb	r0, [r3, #8]
c0de3e00:	f002 0cfe 	and.w	ip, r2, #254	@ 0xfe
c0de3e04:	eb09 0206 	add.w	r2, r9, r6
c0de3e08:	f040 0001 	orr.w	r0, r0, #1
c0de3e0c:	f882 c008 	strb.w	ip, [r2, #8]
c0de3e10:	7218      	strb	r0, [r3, #8]
c0de3e12:	b119      	cbz	r1, c0de3e1c <buffering_append+0x68>
c0de3e14:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3e18:	f7ff ffcc 	bl	c0de3db4 <buffering_append>
c0de3e1c:	4628      	mov	r0, r5
c0de3e1e:	4621      	mov	r1, r4
c0de3e20:	f7ff ffc8 	bl	c0de3db4 <buffering_append>
c0de3e24:	eb09 0106 	add.w	r1, r9, r6
c0de3e28:	2200      	movs	r2, #0
c0de3e2a:	80ca      	strh	r2, [r1, #6]
c0de3e2c:	bd70      	pop	{r4, r5, r6, pc}
c0de3e2e:	f859 2000 	ldr.w	r2, [r9, r0]
c0de3e32:	eb09 0600 	add.w	r6, r9, r0
c0de3e36:	1850      	adds	r0, r2, r1
c0de3e38:	4629      	mov	r1, r5
c0de3e3a:	4622      	mov	r2, r4
c0de3e3c:	f002 fcd5 	bl	c0de67ea <nvm_write>
c0de3e40:	e007      	b.n	c0de3e52 <buffering_append+0x9e>
c0de3e42:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3e46:	4622      	mov	r2, r4
c0de3e48:	4408      	add	r0, r1
c0de3e4a:	4629      	mov	r1, r5
c0de3e4c:	444e      	add	r6, r9
c0de3e4e:	f002 fdd4 	bl	c0de69fa <__aeabi_memmove>
c0de3e52:	88f0      	ldrh	r0, [r6, #6]
c0de3e54:	4420      	add	r0, r4
c0de3e56:	80f0      	strh	r0, [r6, #6]
c0de3e58:	4620      	mov	r0, r4
c0de3e5a:	bd70      	pop	{r4, r5, r6, pc}

c0de3e5c <buffering_get_buffer>:
c0de3e5c:	f246 30a0 	movw	r0, #25504	@ 0x63a0
c0de3e60:	f2c0 0000 	movt	r0, #0
c0de3e64:	4448      	add	r0, r9
c0de3e66:	7a01      	ldrb	r1, [r0, #8]
c0de3e68:	f246 32ac 	movw	r2, #25516	@ 0x63ac
c0de3e6c:	f2c0 0200 	movt	r2, #0
c0de3e70:	07c9      	lsls	r1, r1, #31
c0de3e72:	bf08      	it	eq
c0de3e74:	eb09 0002 	addeq.w	r0, r9, r2
c0de3e78:	4770      	bx	lr

c0de3e7a <bech32_polymod_step>:
c0de3e7a:	f64f 71e0 	movw	r1, #65504	@ 0xffe0
c0de3e7e:	f3c0 6240 	ubfx	r2, r0, #25, #1
c0de3e82:	f245 73b2 	movw	r3, #22450	@ 0x57b2
c0de3e86:	f6c3 71ff 	movt	r1, #16383	@ 0x3fff
c0de3e8a:	4252      	negs	r2, r2
c0de3e8c:	f6c3 336a 	movt	r3, #15210	@ 0x3b6a
c0de3e90:	ea01 1140 	and.w	r1, r1, r0, lsl #5
c0de3e94:	401a      	ands	r2, r3
c0de3e96:	4051      	eors	r1, r2
c0de3e98:	f3c0 6280 	ubfx	r2, r0, #26, #1
c0de3e9c:	f648 636d 	movw	r3, #36461	@ 0x8e6d
c0de3ea0:	4252      	negs	r2, r2
c0de3ea2:	f2c2 6350 	movt	r3, #9808	@ 0x2650
c0de3ea6:	401a      	ands	r2, r3
c0de3ea8:	4051      	eors	r1, r2
c0de3eaa:	f3c0 62c0 	ubfx	r2, r0, #27, #1
c0de3eae:	f641 13fa 	movw	r3, #6650	@ 0x19fa
c0de3eb2:	4252      	negs	r2, r2
c0de3eb4:	f6c1 63a1 	movt	r3, #7841	@ 0x1ea1
c0de3eb8:	401a      	ands	r2, r3
c0de3eba:	4051      	eors	r1, r2
c0de3ebc:	f3c0 7200 	ubfx	r2, r0, #28, #1
c0de3ec0:	f243 33dd 	movw	r3, #13277	@ 0x33dd
c0de3ec4:	4252      	negs	r2, r2
c0de3ec6:	f6c3 5342 	movt	r3, #15682	@ 0x3d42
c0de3eca:	401a      	ands	r2, r3
c0de3ecc:	4051      	eors	r1, r2
c0de3ece:	f3c0 7040 	ubfx	r0, r0, #29, #1
c0de3ed2:	f246 22b3 	movw	r2, #25267	@ 0x62b3
c0de3ed6:	4240      	negs	r0, r0
c0de3ed8:	f6c2 2214 	movt	r2, #10772	@ 0x2a14
c0de3edc:	4010      	ands	r0, r2
c0de3ede:	4048      	eors	r0, r1
c0de3ee0:	4770      	bx	lr
	...

c0de3ee4 <bech32_encode>:
c0de3ee4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ee8:	b082      	sub	sp, #8
c0de3eea:	f891 8000 	ldrb.w	r8, [r1]
c0de3eee:	469a      	mov	sl, r3
c0de3ef0:	4693      	mov	fp, r2
c0de3ef2:	f1b8 0f00 	cmp.w	r8, #0
c0de3ef6:	4604      	mov	r4, r0
c0de3ef8:	9101      	str	r1, [sp, #4]
c0de3efa:	d018      	beq.n	c0de3f2e <bech32_encode+0x4a>
c0de3efc:	1c4d      	adds	r5, r1, #1
c0de3efe:	2001      	movs	r0, #1
c0de3f00:	2600      	movs	r6, #0
c0de3f02:	4647      	mov	r7, r8
c0de3f04:	f1a7 017f 	sub.w	r1, r7, #127	@ 0x7f
c0de3f08:	f111 0f5e 	cmn.w	r1, #94	@ 0x5e
c0de3f0c:	f04f 0100 	mov.w	r1, #0
c0de3f10:	d35d      	bcc.n	c0de3fce <bech32_encode+0xea>
c0de3f12:	f1a7 0241 	sub.w	r2, r7, #65	@ 0x41
c0de3f16:	2a1a      	cmp	r2, #26
c0de3f18:	d359      	bcc.n	c0de3fce <bech32_encode+0xea>
c0de3f1a:	f7ff ffae 	bl	c0de3e7a <bech32_polymod_step>
c0de3f1e:	ea80 1057 	eor.w	r0, r0, r7, lsr #5
c0de3f22:	5daf      	ldrb	r7, [r5, r6]
c0de3f24:	1c71      	adds	r1, r6, #1
c0de3f26:	2f00      	cmp	r7, #0
c0de3f28:	460e      	mov	r6, r1
c0de3f2a:	d1eb      	bne.n	c0de3f04 <bech32_encode+0x20>
c0de3f2c:	e001      	b.n	c0de3f32 <bech32_encode+0x4e>
c0de3f2e:	2100      	movs	r1, #0
c0de3f30:	2001      	movs	r0, #1
c0de3f32:	4451      	add	r1, sl
c0de3f34:	3107      	adds	r1, #7
c0de3f36:	295a      	cmp	r1, #90	@ 0x5a
c0de3f38:	d901      	bls.n	c0de3f3e <bech32_encode+0x5a>
c0de3f3a:	2100      	movs	r1, #0
c0de3f3c:	e047      	b.n	c0de3fce <bech32_encode+0xea>
c0de3f3e:	f7ff ff9c 	bl	c0de3e7a <bech32_polymod_step>
c0de3f42:	f1b8 0f00 	cmp.w	r8, #0
c0de3f46:	d00d      	beq.n	c0de3f64 <bech32_encode+0x80>
c0de3f48:	9901      	ldr	r1, [sp, #4]
c0de3f4a:	1c4d      	adds	r5, r1, #1
c0de3f4c:	f7ff ff95 	bl	c0de3e7a <bech32_polymod_step>
c0de3f50:	f804 8b01 	strb.w	r8, [r4], #1
c0de3f54:	f008 011f 	and.w	r1, r8, #31
c0de3f58:	f815 8b01 	ldrb.w	r8, [r5], #1
c0de3f5c:	4048      	eors	r0, r1
c0de3f5e:	f1b8 0f00 	cmp.w	r8, #0
c0de3f62:	d1f3      	bne.n	c0de3f4c <bech32_encode+0x68>
c0de3f64:	2131      	movs	r1, #49	@ 0x31
c0de3f66:	f1ba 0f00 	cmp.w	sl, #0
c0de3f6a:	f804 1b01 	strb.w	r1, [r4], #1
c0de3f6e:	d014      	beq.n	c0de3f9a <bech32_encode+0xb6>
c0de3f70:	f642 65cc 	movw	r5, #11980	@ 0x2ecc
c0de3f74:	f2c0 0500 	movt	r5, #0
c0de3f78:	447d      	add	r5, pc
c0de3f7a:	bf00      	nop
c0de3f7c:	f89b 6000 	ldrb.w	r6, [fp]
c0de3f80:	2e1f      	cmp	r6, #31
c0de3f82:	d8da      	bhi.n	c0de3f3a <bech32_encode+0x56>
c0de3f84:	f7ff ff79 	bl	c0de3e7a <bech32_polymod_step>
c0de3f88:	5da9      	ldrb	r1, [r5, r6]
c0de3f8a:	4070      	eors	r0, r6
c0de3f8c:	f10b 0b01 	add.w	fp, fp, #1
c0de3f90:	f1ba 0a01 	subs.w	sl, sl, #1
c0de3f94:	f804 1b01 	strb.w	r1, [r4], #1
c0de3f98:	d1f0      	bne.n	c0de3f7c <bech32_encode+0x98>
c0de3f9a:	2506      	movs	r5, #6
c0de3f9c:	f7ff ff6d 	bl	c0de3e7a <bech32_polymod_step>
c0de3fa0:	3d01      	subs	r5, #1
c0de3fa2:	d1fb      	bne.n	c0de3f9c <bech32_encode+0xb8>
c0de3fa4:	f642 6292 	movw	r2, #11922	@ 0x2e92
c0de3fa8:	f2c0 0200 	movt	r2, #0
c0de3fac:	f080 0001 	eor.w	r0, r0, #1
c0de3fb0:	2119      	movs	r1, #25
c0de3fb2:	447a      	add	r2, pc
c0de3fb4:	fa20 f301 	lsr.w	r3, r0, r1
c0de3fb8:	f003 031f 	and.w	r3, r3, #31
c0de3fbc:	5cd3      	ldrb	r3, [r2, r3]
c0de3fbe:	3905      	subs	r1, #5
c0de3fc0:	1d4f      	adds	r7, r1, #5
c0de3fc2:	f804 3b01 	strb.w	r3, [r4], #1
c0de3fc6:	d1f5      	bne.n	c0de3fb4 <bech32_encode+0xd0>
c0de3fc8:	2000      	movs	r0, #0
c0de3fca:	2101      	movs	r1, #1
c0de3fcc:	7020      	strb	r0, [r4, #0]
c0de3fce:	4608      	mov	r0, r1
c0de3fd0:	b002      	add	sp, #8
c0de3fd2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de3fd8 <convert_bits>:
c0de3fd8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3fdc:	e9dd ae08 	ldrd	sl, lr, [sp, #32]
c0de3fe0:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de3fe4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de3fe6:	4097      	lsls	r7, r2
c0de3fe8:	f1ba 0f00 	cmp.w	sl, #0
c0de3fec:	ea6f 0c07 	mvn.w	ip, r7
c0de3ff0:	d02d      	beq.n	c0de404e <convert_bits+0x76>
c0de3ff2:	f1c2 0800 	rsb	r8, r2, #0
c0de3ff6:	2600      	movs	r6, #0
c0de3ff8:	f04f 0b00 	mov.w	fp, #0
c0de3ffc:	f813 7b01 	ldrb.w	r7, [r3], #1
c0de4000:	fa0b fb0e 	lsl.w	fp, fp, lr
c0de4004:	eb06 040e 	add.w	r4, r6, lr
c0de4008:	4294      	cmp	r4, r2
c0de400a:	ea4b 0b07 	orr.w	fp, fp, r7
c0de400e:	da01      	bge.n	c0de4014 <convert_bits+0x3c>
c0de4010:	4626      	mov	r6, r4
c0de4012:	e00c      	b.n	c0de402e <convert_bits+0x56>
c0de4014:	1aa6      	subs	r6, r4, r2
c0de4016:	4444      	add	r4, r8
c0de4018:	680d      	ldr	r5, [r1, #0]
c0de401a:	fa2b f404 	lsr.w	r4, fp, r4
c0de401e:	ea04 040c 	and.w	r4, r4, ip
c0de4022:	1c6f      	adds	r7, r5, #1
c0de4024:	600f      	str	r7, [r1, #0]
c0de4026:	5544      	strb	r4, [r0, r5]
c0de4028:	4296      	cmp	r6, r2
c0de402a:	4634      	mov	r4, r6
c0de402c:	daf2      	bge.n	c0de4014 <convert_bits+0x3c>
c0de402e:	f1ba 0a01 	subs.w	sl, sl, #1
c0de4032:	d1e3      	bne.n	c0de3ffc <convert_bits+0x24>
c0de4034:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
c0de4036:	b173      	cbz	r3, c0de4056 <convert_bits+0x7e>
c0de4038:	b1ce      	cbz	r6, c0de406e <convert_bits+0x96>
c0de403a:	1b92      	subs	r2, r2, r6
c0de403c:	680b      	ldr	r3, [r1, #0]
c0de403e:	fa0b f202 	lsl.w	r2, fp, r2
c0de4042:	ea02 020c 	and.w	r2, r2, ip
c0de4046:	1c5f      	adds	r7, r3, #1
c0de4048:	600f      	str	r7, [r1, #0]
c0de404a:	54c2      	strb	r2, [r0, r3]
c0de404c:	e00f      	b.n	c0de406e <convert_bits+0x96>
c0de404e:	b974      	cbnz	r4, c0de406e <convert_bits+0x96>
c0de4050:	2600      	movs	r6, #0
c0de4052:	f04f 0b00 	mov.w	fp, #0
c0de4056:	1b90      	subs	r0, r2, r6
c0de4058:	fa0b f000 	lsl.w	r0, fp, r0
c0de405c:	ea10 0f0c 	tst.w	r0, ip
c0de4060:	f04f 0000 	mov.w	r0, #0
c0de4064:	d104      	bne.n	c0de4070 <convert_bits+0x98>
c0de4066:	4576      	cmp	r6, lr
c0de4068:	bfa8      	it	ge
c0de406a:	e8bd 8df0 	ldmiage.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de406e:	2001      	movs	r0, #1
c0de4070:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4074 <z_str3join>:
c0de4074:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4078:	469a      	mov	sl, r3
c0de407a:	4690      	mov	r8, r2
c0de407c:	4683      	mov	fp, r0
c0de407e:	460d      	mov	r5, r1
c0de4080:	b138      	cbz	r0, c0de4092 <z_str3join+0x1e>
c0de4082:	4658      	mov	r0, fp
c0de4084:	f002 fd1e 	bl	c0de6ac4 <strlen>
c0de4088:	4606      	mov	r6, r0
c0de408a:	42a8      	cmp	r0, r5
c0de408c:	bf28      	it	cs
c0de408e:	462e      	movcs	r6, r5
c0de4090:	e000      	b.n	c0de4094 <z_str3join+0x20>
c0de4092:	2600      	movs	r6, #0
c0de4094:	f1b8 0f00 	cmp.w	r8, #0
c0de4098:	d007      	beq.n	c0de40aa <z_str3join+0x36>
c0de409a:	4640      	mov	r0, r8
c0de409c:	f002 fd12 	bl	c0de6ac4 <strlen>
c0de40a0:	4607      	mov	r7, r0
c0de40a2:	42a8      	cmp	r0, r5
c0de40a4:	bf28      	it	cs
c0de40a6:	462f      	movcs	r7, r5
c0de40a8:	e000      	b.n	c0de40ac <z_str3join+0x38>
c0de40aa:	2700      	movs	r7, #0
c0de40ac:	f1ba 0f00 	cmp.w	sl, #0
c0de40b0:	d01a      	beq.n	c0de40e8 <z_str3join+0x74>
c0de40b2:	4650      	mov	r0, sl
c0de40b4:	f002 fd06 	bl	c0de6ac4 <strlen>
c0de40b8:	4604      	mov	r4, r0
c0de40ba:	42a8      	cmp	r0, r5
c0de40bc:	eb06 0007 	add.w	r0, r6, r7
c0de40c0:	bf28      	it	cs
c0de40c2:	462c      	movcs	r4, r5
c0de40c4:	4420      	add	r0, r4
c0de40c6:	3001      	adds	r0, #1
c0de40c8:	42a8      	cmp	r0, r5
c0de40ca:	d811      	bhi.n	c0de40f0 <z_str3join+0x7c>
c0de40cc:	f04f 0500 	mov.w	r5, #0
c0de40d0:	b1dc      	cbz	r4, c0de410a <z_str3join+0x96>
c0de40d2:	eb0b 0006 	add.w	r0, fp, r6
c0de40d6:	4651      	mov	r1, sl
c0de40d8:	4622      	mov	r2, r4
c0de40da:	f002 fc8e 	bl	c0de69fa <__aeabi_memmove>
c0de40de:	19a0      	adds	r0, r4, r6
c0de40e0:	f80b 5000 	strb.w	r5, [fp, r0]
c0de40e4:	4625      	mov	r5, r4
c0de40e6:	e010      	b.n	c0de410a <z_str3join+0x96>
c0de40e8:	19f0      	adds	r0, r6, r7
c0de40ea:	3001      	adds	r0, #1
c0de40ec:	42a8      	cmp	r0, r5
c0de40ee:	d90b      	bls.n	c0de4108 <z_str3join+0x94>
c0de40f0:	f243 0230 	movw	r2, #12336	@ 0x3030
c0de40f4:	f2c0 0200 	movt	r2, #0
c0de40f8:	447a      	add	r2, pc
c0de40fa:	4658      	mov	r0, fp
c0de40fc:	4629      	mov	r1, r5
c0de40fe:	f002 f895 	bl	c0de622c <snprintf>
c0de4102:	2006      	movs	r0, #6
c0de4104:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4108:	2500      	movs	r5, #0
c0de410a:	b15f      	cbz	r7, c0de4124 <z_str3join+0xb0>
c0de410c:	1971      	adds	r1, r6, r5
c0de410e:	eb0b 0007 	add.w	r0, fp, r7
c0de4112:	1c4a      	adds	r2, r1, #1
c0de4114:	4659      	mov	r1, fp
c0de4116:	f002 fc70 	bl	c0de69fa <__aeabi_memmove>
c0de411a:	4658      	mov	r0, fp
c0de411c:	4641      	mov	r1, r8
c0de411e:	463a      	mov	r2, r7
c0de4120:	f002 fc6b 	bl	c0de69fa <__aeabi_memmove>
c0de4124:	2003      	movs	r0, #3
c0de4126:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de412a <check_app_canary>:
c0de412a:	f246 50f0 	movw	r0, #26096	@ 0x65f0
c0de412e:	f2c0 0000 	movt	r0, #0
c0de4132:	f859 0000 	ldr.w	r0, [r9, r0]
c0de4136:	2131      	movs	r1, #49	@ 0x31
c0de4138:	f6cd 61ad 	movt	r1, #57005	@ 0xdead
c0de413c:	4288      	cmp	r0, r1
c0de413e:	bf18      	it	ne
c0de4140:	f000 b927 	bne.w	c0de4392 <io_seproxyhal_se_reset>
c0de4144:	4770      	bx	lr

c0de4146 <zemu_log_stack>:
c0de4146:	4770      	bx	lr

c0de4148 <os_io_handle_default_apdu>:
c0de4148:	b5b0      	push	{r4, r5, r7, lr}
c0de414a:	b09e      	sub	sp, #120	@ 0x78
c0de414c:	9d22      	ldr	r5, [sp, #136]	@ 0x88
c0de414e:	b1d0      	cbz	r0, c0de4186 <os_io_handle_default_apdu+0x3e>
c0de4150:	b1c9      	cbz	r1, c0de4186 <os_io_handle_default_apdu+0x3e>
c0de4152:	b1c2      	cbz	r2, c0de4186 <os_io_handle_default_apdu+0x3e>
c0de4154:	b1bb      	cbz	r3, c0de4186 <os_io_handle_default_apdu+0x3e>
c0de4156:	b10d      	cbz	r5, c0de415c <os_io_handle_default_apdu+0x14>
c0de4158:	2100      	movs	r1, #0
c0de415a:	7029      	strb	r1, [r5, #0]
c0de415c:	7801      	ldrb	r1, [r0, #0]
c0de415e:	29b0      	cmp	r1, #176	@ 0xb0
c0de4160:	d113      	bne.n	c0de418a <os_io_handle_default_apdu+0x42>
c0de4162:	7841      	ldrb	r1, [r0, #1]
c0de4164:	29a7      	cmp	r1, #167	@ 0xa7
c0de4166:	d013      	beq.n	c0de4190 <os_io_handle_default_apdu+0x48>
c0de4168:	2906      	cmp	r1, #6
c0de416a:	d018      	beq.n	c0de419e <os_io_handle_default_apdu+0x56>
c0de416c:	2901      	cmp	r1, #1
c0de416e:	d113      	bne.n	c0de4198 <os_io_handle_default_apdu+0x50>
c0de4170:	7881      	ldrb	r1, [r0, #2]
c0de4172:	b989      	cbnz	r1, c0de4198 <os_io_handle_default_apdu+0x50>
c0de4174:	78c0      	ldrb	r0, [r0, #3]
c0de4176:	b978      	cbnz	r0, c0de4198 <os_io_handle_default_apdu+0x50>
c0de4178:	4610      	mov	r0, r2
c0de417a:	4619      	mov	r1, r3
c0de417c:	b01e      	add	sp, #120	@ 0x78
c0de417e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4182:	f000 b82d 	b.w	c0de41e0 <get_version>
c0de4186:	782c      	ldrb	r4, [r5, #0]
c0de4188:	e01f      	b.n	c0de41ca <os_io_handle_default_apdu+0x82>
c0de418a:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de418e:	e01c      	b.n	c0de41ca <os_io_handle_default_apdu+0x82>
c0de4190:	7881      	ldrb	r1, [r0, #2]
c0de4192:	b909      	cbnz	r1, c0de4198 <os_io_handle_default_apdu+0x50>
c0de4194:	78c0      	ldrb	r0, [r0, #3]
c0de4196:	b1d8      	cbz	r0, c0de41d0 <os_io_handle_default_apdu+0x88>
c0de4198:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de419c:	e015      	b.n	c0de41ca <os_io_handle_default_apdu+0x82>
c0de419e:	2400      	movs	r4, #0
c0de41a0:	601c      	str	r4, [r3, #0]
c0de41a2:	7883      	ldrb	r3, [r0, #2]
c0de41a4:	7902      	ldrb	r2, [r0, #4]
c0de41a6:	1d41      	adds	r1, r0, #5
c0de41a8:	ad03      	add	r5, sp, #12
c0de41aa:	4618      	mov	r0, r3
c0de41ac:	2300      	movs	r3, #0
c0de41ae:	9400      	str	r4, [sp, #0]
c0de41b0:	9501      	str	r5, [sp, #4]
c0de41b2:	f002 fb41 	bl	c0de6838 <os_pki_load_certificate>
c0de41b6:	4604      	mov	r4, r0
c0de41b8:	2800      	cmp	r0, #0
c0de41ba:	4628      	mov	r0, r5
c0de41bc:	f04f 016c 	mov.w	r1, #108	@ 0x6c
c0de41c0:	bf08      	it	eq
c0de41c2:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de41c6:	f002 fc1f 	bl	c0de6a08 <explicit_bzero>
c0de41ca:	4620      	mov	r0, r4
c0de41cc:	b01e      	add	sp, #120	@ 0x78
c0de41ce:	bdb0      	pop	{r4, r5, r7, pc}
c0de41d0:	2000      	movs	r0, #0
c0de41d2:	6018      	str	r0, [r3, #0]
c0de41d4:	b10d      	cbz	r5, c0de41da <os_io_handle_default_apdu+0x92>
c0de41d6:	2001      	movs	r0, #1
c0de41d8:	7028      	strb	r0, [r5, #0]
c0de41da:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de41de:	e7f4      	b.n	c0de41ca <os_io_handle_default_apdu+0x82>

c0de41e0 <get_version>:
c0de41e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de41e2:	b081      	sub	sp, #4
c0de41e4:	4604      	mov	r4, r0
c0de41e6:	6808      	ldr	r0, [r1, #0]
c0de41e8:	460d      	mov	r5, r1
c0de41ea:	2100      	movs	r1, #0
c0de41ec:	2803      	cmp	r0, #3
c0de41ee:	6029      	str	r1, [r5, #0]
c0de41f0:	d329      	bcc.n	c0de4246 <get_version+0x66>
c0de41f2:	2601      	movs	r6, #1
c0de41f4:	602e      	str	r6, [r5, #0]
c0de41f6:	7026      	strb	r6, [r4, #0]
c0de41f8:	682a      	ldr	r2, [r5, #0]
c0de41fa:	1ec7      	subs	r7, r0, #3
c0de41fc:	1911      	adds	r1, r2, r4
c0de41fe:	3101      	adds	r1, #1
c0de4200:	1aba      	subs	r2, r7, r2
c0de4202:	2001      	movs	r0, #1
c0de4204:	f002 fb55 	bl	c0de68b2 <os_registry_get_current_app_tag>
c0de4208:	6829      	ldr	r1, [r5, #0]
c0de420a:	1c4a      	adds	r2, r1, #1
c0de420c:	602a      	str	r2, [r5, #0]
c0de420e:	5460      	strb	r0, [r4, r1]
c0de4210:	6829      	ldr	r1, [r5, #0]
c0de4212:	4408      	add	r0, r1
c0de4214:	1901      	adds	r1, r0, r4
c0de4216:	6028      	str	r0, [r5, #0]
c0de4218:	3101      	adds	r1, #1
c0de421a:	1a3a      	subs	r2, r7, r0
c0de421c:	2002      	movs	r0, #2
c0de421e:	f002 fb48 	bl	c0de68b2 <os_registry_get_current_app_tag>
c0de4222:	6829      	ldr	r1, [r5, #0]
c0de4224:	1c4a      	adds	r2, r1, #1
c0de4226:	602a      	str	r2, [r5, #0]
c0de4228:	5460      	strb	r0, [r4, r1]
c0de422a:	6829      	ldr	r1, [r5, #0]
c0de422c:	4408      	add	r0, r1
c0de422e:	1c41      	adds	r1, r0, #1
c0de4230:	6029      	str	r1, [r5, #0]
c0de4232:	5426      	strb	r6, [r4, r0]
c0de4234:	f002 fb33 	bl	c0de689e <os_flags>
c0de4238:	6829      	ldr	r1, [r5, #0]
c0de423a:	1c4a      	adds	r2, r1, #1
c0de423c:	602a      	str	r2, [r5, #0]
c0de423e:	5460      	strb	r0, [r4, r1]
c0de4240:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de4244:	e001      	b.n	c0de424a <get_version+0x6a>
c0de4246:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de424a:	b001      	add	sp, #4
c0de424c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de424e <os_io_seph_cmd_general_status>:
c0de424e:	f643 714e 	movw	r1, #16206	@ 0x3f4e
c0de4252:	f2c0 0100 	movt	r1, #0
c0de4256:	4479      	add	r1, pc
c0de4258:	2001      	movs	r0, #1
c0de425a:	2205      	movs	r2, #5
c0de425c:	2300      	movs	r3, #0
c0de425e:	f002 bb56 	b.w	c0de690e <os_io_tx_cmd>

c0de4262 <os_io_seph_cmd_se_reset>:
c0de4262:	f643 713f 	movw	r1, #16191	@ 0x3f3f
c0de4266:	f2c0 0100 	movt	r1, #0
c0de426a:	4479      	add	r1, pc
c0de426c:	2001      	movs	r0, #1
c0de426e:	2203      	movs	r2, #3
c0de4270:	2300      	movs	r3, #0
c0de4272:	f002 bb4c 	b.w	c0de690e <os_io_tx_cmd>

c0de4276 <io_seph_ux_init_button>:
c0de4276:	f246 50dc 	movw	r0, #26076	@ 0x65dc
c0de427a:	f2c0 0000 	movt	r0, #0
c0de427e:	2100      	movs	r1, #0
c0de4280:	f849 1000 	str.w	r1, [r9, r0]
c0de4284:	4448      	add	r0, r9
c0de4286:	6041      	str	r1, [r0, #4]
c0de4288:	4770      	bx	lr

c0de428a <io_process_itc_ux_event>:
c0de428a:	b580      	push	{r7, lr}
c0de428c:	78c0      	ldrb	r0, [r0, #3]
c0de428e:	2820      	cmp	r0, #32
c0de4290:	4608      	mov	r0, r1
c0de4292:	bf18      	it	ne
c0de4294:	bd80      	popne	{r7, pc}
c0de4296:	f001 feda 	bl	c0de604e <ux_stack_redisplay>
c0de429a:	2000      	movs	r0, #0
c0de429c:	bd80      	pop	{r7, pc}

c0de429e <io_seph_ux_display_bagl_element>:
c0de429e:	b570      	push	{r4, r5, r6, lr}
c0de42a0:	b088      	sub	sp, #32
c0de42a2:	f002 fa75 	bl	c0de6790 <pic>
c0de42a6:	4604      	mov	r4, r0
c0de42a8:	7801      	ldrb	r1, [r0, #0]
c0de42aa:	69c0      	ldr	r0, [r0, #28]
c0de42ac:	f001 067f 	and.w	r6, r1, #127	@ 0x7f
c0de42b0:	f002 fa6e 	bl	c0de6790 <pic>
c0de42b4:	b37e      	cbz	r6, c0de4316 <io_seph_ux_display_bagl_element+0x78>
c0de42b6:	4605      	mov	r5, r0
c0de42b8:	b150      	cbz	r0, c0de42d0 <io_seph_ux_display_bagl_element+0x32>
c0de42ba:	2e05      	cmp	r6, #5
c0de42bc:	d101      	bne.n	c0de42c2 <io_seph_ux_display_bagl_element+0x24>
c0de42be:	7ea0      	ldrb	r0, [r4, #26]
c0de42c0:	b178      	cbz	r0, c0de42e2 <io_seph_ux_display_bagl_element+0x44>
c0de42c2:	4628      	mov	r0, r5
c0de42c4:	f002 fbfe 	bl	c0de6ac4 <strlen>
c0de42c8:	b282      	uxth	r2, r0
c0de42ca:	4620      	mov	r0, r4
c0de42cc:	4629      	mov	r1, r5
c0de42ce:	e002      	b.n	c0de42d6 <io_seph_ux_display_bagl_element+0x38>
c0de42d0:	4620      	mov	r0, r4
c0de42d2:	2100      	movs	r1, #0
c0de42d4:	2200      	movs	r2, #0
c0de42d6:	2300      	movs	r3, #0
c0de42d8:	b008      	add	sp, #32
c0de42da:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de42de:	f000 b9f3 	b.w	c0de46c8 <bagl_draw_with_context>
c0de42e2:	4628      	mov	r0, r5
c0de42e4:	f002 fa54 	bl	c0de6790 <pic>
c0de42e8:	b1a8      	cbz	r0, c0de4316 <io_seph_ux_display_bagl_element+0x78>
c0de42ea:	4605      	mov	r5, r0
c0de42ec:	6900      	ldr	r0, [r0, #16]
c0de42ee:	b190      	cbz	r0, c0de4316 <io_seph_ux_display_bagl_element+0x78>
c0de42f0:	4620      	mov	r0, r4
c0de42f2:	f002 fa4d 	bl	c0de6790 <pic>
c0de42f6:	ac01      	add	r4, sp, #4
c0de42f8:	4601      	mov	r1, r0
c0de42fa:	4620      	mov	r0, r4
c0de42fc:	221c      	movs	r2, #28
c0de42fe:	f002 fb7a 	bl	c0de69f6 <__aeabi_memcpy>
c0de4302:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de4306:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de430a:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de430e:	4620      	mov	r0, r4
c0de4310:	4629      	mov	r1, r5
c0de4312:	f001 f81f 	bl	c0de5354 <bagl_draw_glyph>
c0de4316:	b008      	add	sp, #32
c0de4318:	bd70      	pop	{r4, r5, r6, pc}

c0de431a <io_seproxyhal_button_push>:
c0de431a:	b1c0      	cbz	r0, c0de434e <io_seproxyhal_button_push+0x34>
c0de431c:	b510      	push	{r4, lr}
c0de431e:	f246 5edc 	movw	lr, #26076	@ 0x65dc
c0de4322:	f2c0 0e00 	movt	lr, #0
c0de4326:	4684      	mov	ip, r0
c0de4328:	f859 000e 	ldr.w	r0, [r9, lr]
c0de432c:	460b      	mov	r3, r1
c0de432e:	eb09 010e 	add.w	r1, r9, lr
c0de4332:	6849      	ldr	r1, [r1, #4]
c0de4334:	4298      	cmp	r0, r3
c0de4336:	bf02      	ittt	eq
c0de4338:	3101      	addeq	r1, #1
c0de433a:	eb09 020e 	addeq.w	r2, r9, lr
c0de433e:	6051      	streq	r1, [r2, #4]
c0de4340:	ea40 0003 	orr.w	r0, r0, r3
c0de4344:	b123      	cbz	r3, c0de4350 <io_seproxyhal_button_push+0x36>
c0de4346:	4602      	mov	r2, r0
c0de4348:	f849 000e 	str.w	r0, [r9, lr]
c0de434c:	e008      	b.n	c0de4360 <io_seproxyhal_button_push+0x46>
c0de434e:	4770      	bx	lr
c0de4350:	2200      	movs	r2, #0
c0de4352:	eb09 040e 	add.w	r4, r9, lr
c0de4356:	f849 200e 	str.w	r2, [r9, lr]
c0de435a:	6062      	str	r2, [r4, #4]
c0de435c:	f040 4000 	orr.w	r0, r0, #2147483648	@ 0x80000000
c0de4360:	429a      	cmp	r2, r3
c0de4362:	bf1e      	ittt	ne
c0de4364:	eb09 020e 	addne.w	r2, r9, lr
c0de4368:	2300      	movne	r3, #0
c0de436a:	6053      	strne	r3, [r2, #4]
c0de436c:	2908      	cmp	r1, #8
c0de436e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4372:	d30b      	bcc.n	c0de438c <io_seproxyhal_button_push+0x72>
c0de4374:	f64a 22ab 	movw	r2, #43691	@ 0xaaab
c0de4378:	f6ca 22aa 	movt	r2, #43690	@ 0xaaaa
c0de437c:	434a      	muls	r2, r1
c0de437e:	f112 3faa 	cmn.w	r2, #2863311530	@ 0xaaaaaaaa
c0de4382:	bf38      	it	cc
c0de4384:	f040 4080 	orrcc.w	r0, r0, #1073741824	@ 0x40000000
c0de4388:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
c0de438c:	4760      	bx	ip

c0de438e <io_seproxyhal_general_status>:
c0de438e:	f7ff bf5e 	b.w	c0de424e <os_io_seph_cmd_general_status>

c0de4392 <io_seproxyhal_se_reset>:
c0de4392:	f001 ff47 	bl	c0de6224 <os_reset>

c0de4396 <io_seph_is_status_sent>:
c0de4396:	2001      	movs	r0, #1
c0de4398:	4770      	bx	lr

c0de439a <io_seph_recv>:
c0de439a:	b570      	push	{r4, r5, r6, lr}
c0de439c:	f246 46c9 	movw	r6, #25801	@ 0x64c9
c0de43a0:	f2c0 0600 	movt	r6, #0
c0de43a4:	4604      	mov	r4, r0
c0de43a6:	eb09 0006 	add.w	r0, r9, r6
c0de43aa:	f240 1111 	movw	r1, #273	@ 0x111
c0de43ae:	2200      	movs	r2, #0
c0de43b0:	2301      	movs	r3, #1
c0de43b2:	f002 fab8 	bl	c0de6926 <os_io_rx_evt>
c0de43b6:	4605      	mov	r5, r0
c0de43b8:	2801      	cmp	r0, #1
c0de43ba:	db18      	blt.n	c0de43ee <io_seph_recv+0x54>
c0de43bc:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de43c0:	3801      	subs	r0, #1
c0de43c2:	2801      	cmp	r0, #1
c0de43c4:	d813      	bhi.n	c0de43ee <io_seph_recv+0x54>
c0de43c6:	3d01      	subs	r5, #1
c0de43c8:	444e      	add	r6, r9
c0de43ca:	1c71      	adds	r1, r6, #1
c0de43cc:	4620      	mov	r0, r4
c0de43ce:	462a      	mov	r2, r5
c0de43d0:	f002 fb11 	bl	c0de69f6 <__aeabi_memcpy>
c0de43d4:	7870      	ldrb	r0, [r6, #1]
c0de43d6:	281a      	cmp	r0, #26
c0de43d8:	d105      	bne.n	c0de43e6 <io_seph_recv+0x4c>
c0de43da:	4620      	mov	r0, r4
c0de43dc:	4629      	mov	r1, r5
c0de43de:	f7ff ff54 	bl	c0de428a <io_process_itc_ux_event>
c0de43e2:	4605      	mov	r5, r0
c0de43e4:	e003      	b.n	c0de43ee <io_seph_recv+0x54>
c0de43e6:	2000      	movs	r0, #0
c0de43e8:	2500      	movs	r5, #0
c0de43ea:	f7fc f8f9 	bl	c0de05e0 <io_event>
c0de43ee:	b2a8      	uxth	r0, r5
c0de43f0:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de43f4 <io_exchange>:
c0de43f4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de43f8:	f246 56e4 	movw	r6, #26084	@ 0x65e4
c0de43fc:	f2c0 0600 	movt	r6, #0
c0de4400:	f819 2006 	ldrb.w	r2, [r9, r6]
c0de4404:	460d      	mov	r5, r1
c0de4406:	2a01      	cmp	r2, #1
c0de4408:	4604      	mov	r4, r0
c0de440a:	d104      	bne.n	c0de4416 <io_exchange+0x22>
c0de440c:	f002 fa73 	bl	c0de68f6 <os_io_start>
c0de4410:	2000      	movs	r0, #0
c0de4412:	f809 0006 	strb.w	r0, [r9, r6]
c0de4416:	0760      	lsls	r0, r4, #29
c0de4418:	d001      	beq.n	c0de441e <io_exchange+0x2a>
c0de441a:	2500      	movs	r5, #0
c0de441c:	e037      	b.n	c0de448e <io_exchange+0x9a>
c0de441e:	f246 56e6 	movw	r6, #26086	@ 0x65e6
c0de4422:	f004 0710 	and.w	r7, r4, #16
c0de4426:	f2c0 0600 	movt	r6, #0
c0de442a:	b1bd      	cbz	r5, c0de445c <io_exchange+0x68>
c0de442c:	b9b7      	cbnz	r7, c0de445c <io_exchange+0x68>
c0de442e:	f246 58ee 	movw	r8, #26094	@ 0x65ee
c0de4432:	f2c0 0800 	movt	r8, #0
c0de4436:	f246 31b8 	movw	r1, #25528	@ 0x63b8
c0de443a:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de443e:	f2c0 0100 	movt	r1, #0
c0de4442:	4449      	add	r1, r9
c0de4444:	462a      	mov	r2, r5
c0de4446:	2300      	movs	r3, #0
c0de4448:	2500      	movs	r5, #0
c0de444a:	f002 fa60 	bl	c0de690e <os_io_tx_cmd>
c0de444e:	eb09 0006 	add.w	r0, r9, r6
c0de4452:	7185      	strb	r5, [r0, #6]
c0de4454:	06a0      	lsls	r0, r4, #26
c0de4456:	f809 5008 	strb.w	r5, [r9, r8]
c0de445a:	d418      	bmi.n	c0de448e <io_exchange+0x9a>
c0de445c:	b94f      	cbnz	r7, c0de4472 <io_exchange+0x7e>
c0de445e:	eb09 0006 	add.w	r0, r9, r6
c0de4462:	2100      	movs	r1, #0
c0de4464:	7181      	strb	r1, [r0, #6]
c0de4466:	f246 50ee 	movw	r0, #26094	@ 0x65ee
c0de446a:	f2c0 0000 	movt	r0, #0
c0de446e:	f809 1000 	strb.w	r1, [r9, r0]
c0de4472:	eb09 0006 	add.w	r0, r9, r6
c0de4476:	2100      	movs	r1, #0
c0de4478:	8041      	strh	r1, [r0, #2]
c0de447a:	bf00      	nop
c0de447c:	2001      	movs	r0, #1
c0de447e:	f000 f809 	bl	c0de4494 <io_legacy_apdu_rx>
c0de4482:	2801      	cmp	r0, #1
c0de4484:	dbfa      	blt.n	c0de447c <io_exchange+0x88>
c0de4486:	4605      	mov	r5, r0
c0de4488:	eb09 0006 	add.w	r0, r9, r6
c0de448c:	8045      	strh	r5, [r0, #2]
c0de448e:	b2a8      	uxth	r0, r5
c0de4490:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de4494 <io_legacy_apdu_rx>:
c0de4494:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4496:	b083      	sub	sp, #12
c0de4498:	f246 46c9 	movw	r6, #25801	@ 0x64c9
c0de449c:	4605      	mov	r5, r0
c0de449e:	2000      	movs	r0, #0
c0de44a0:	f2c0 0600 	movt	r6, #0
c0de44a4:	f88d 000b 	strb.w	r0, [sp, #11]
c0de44a8:	eb09 0006 	add.w	r0, r9, r6
c0de44ac:	f240 1111 	movw	r1, #273	@ 0x111
c0de44b0:	2200      	movs	r2, #0
c0de44b2:	2301      	movs	r3, #1
c0de44b4:	f002 fa37 	bl	c0de6926 <os_io_rx_evt>
c0de44b8:	4604      	mov	r4, r0
c0de44ba:	2801      	cmp	r0, #1
c0de44bc:	f2c0 80c5 	blt.w	c0de464a <io_legacy_apdu_rx+0x1b6>
c0de44c0:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de44c4:	282f      	cmp	r0, #47	@ 0x2f
c0de44c6:	dc5b      	bgt.n	c0de4580 <io_legacy_apdu_rx+0xec>
c0de44c8:	f1a0 0110 	sub.w	r1, r0, #16
c0de44cc:	2916      	cmp	r1, #22
c0de44ce:	d85f      	bhi.n	c0de4590 <io_legacy_apdu_rx+0xfc>
c0de44d0:	2201      	movs	r2, #1
c0de44d2:	fa02 f101 	lsl.w	r1, r2, r1
c0de44d6:	2201      	movs	r2, #1
c0de44d8:	f2c0 027f 	movt	r2, #127	@ 0x7f
c0de44dc:	4211      	tst	r1, r2
c0de44de:	d057      	beq.n	c0de4590 <io_legacy_apdu_rx+0xfc>
c0de44e0:	f246 55ee 	movw	r5, #26094	@ 0x65ee
c0de44e4:	f2c0 0500 	movt	r5, #0
c0de44e8:	f809 0005 	strb.w	r0, [r9, r5]
c0de44ec:	f002 f9b4 	bl	c0de6858 <os_perso_is_pin_set>
c0de44f0:	28aa      	cmp	r0, #170	@ 0xaa
c0de44f2:	d103      	bne.n	c0de44fc <io_legacy_apdu_rx+0x68>
c0de44f4:	f002 f9bb 	bl	c0de686e <os_global_pin_is_validated>
c0de44f8:	28aa      	cmp	r0, #170	@ 0xaa
c0de44fa:	d163      	bne.n	c0de45c4 <io_legacy_apdu_rx+0x130>
c0de44fc:	eb09 0006 	add.w	r0, r9, r6
c0de4500:	7840      	ldrb	r0, [r0, #1]
c0de4502:	28b0      	cmp	r0, #176	@ 0xb0
c0de4504:	d130      	bne.n	c0de4568 <io_legacy_apdu_rx+0xd4>
c0de4506:	f240 1011 	movw	r0, #273	@ 0x111
c0de450a:	9001      	str	r0, [sp, #4]
c0de450c:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de4510:	f2c0 0000 	movt	r0, #0
c0de4514:	1e61      	subs	r1, r4, #1
c0de4516:	eb09 0400 	add.w	r4, r9, r0
c0de451a:	eb09 0006 	add.w	r0, r9, r6
c0de451e:	f10d 070b 	add.w	r7, sp, #11
c0de4522:	3001      	adds	r0, #1
c0de4524:	ab01      	add	r3, sp, #4
c0de4526:	4622      	mov	r2, r4
c0de4528:	9700      	str	r7, [sp, #0]
c0de452a:	f7ff fe0d 	bl	c0de4148 <os_io_handle_default_apdu>
c0de452e:	9901      	ldr	r1, [sp, #4]
c0de4530:	2600      	movs	r6, #0
c0de4532:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de4536:	bf18      	it	ne
c0de4538:	4631      	movne	r1, r6
c0de453a:	0a02      	lsrs	r2, r0, #8
c0de453c:	1863      	adds	r3, r4, r1
c0de453e:	5462      	strb	r2, [r4, r1]
c0de4540:	3102      	adds	r1, #2
c0de4542:	7058      	strb	r0, [r3, #1]
c0de4544:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de4548:	9101      	str	r1, [sp, #4]
c0de454a:	b28a      	uxth	r2, r1
c0de454c:	4621      	mov	r1, r4
c0de454e:	2300      	movs	r3, #0
c0de4550:	f002 f9dd 	bl	c0de690e <os_io_tx_cmd>
c0de4554:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de4558:	f809 6005 	strb.w	r6, [r9, r5]
c0de455c:	2901      	cmp	r1, #1
c0de455e:	f000 8086 	beq.w	c0de466e <io_legacy_apdu_rx+0x1da>
c0de4562:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de4566:	e070      	b.n	c0de464a <io_legacy_apdu_rx+0x1b6>
c0de4568:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de456c:	2821      	cmp	r0, #33	@ 0x21
c0de456e:	dd3d      	ble.n	c0de45ec <io_legacy_apdu_rx+0x158>
c0de4570:	282f      	cmp	r0, #47	@ 0x2f
c0de4572:	dc43      	bgt.n	c0de45fc <io_legacy_apdu_rx+0x168>
c0de4574:	2822      	cmp	r0, #34	@ 0x22
c0de4576:	d04d      	beq.n	c0de4614 <io_legacy_apdu_rx+0x180>
c0de4578:	2823      	cmp	r0, #35	@ 0x23
c0de457a:	d151      	bne.n	c0de4620 <io_legacy_apdu_rx+0x18c>
c0de457c:	2007      	movs	r0, #7
c0de457e:	e052      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de4580:	2830      	cmp	r0, #48	@ 0x30
c0de4582:	d0ad      	beq.n	c0de44e0 <io_legacy_apdu_rx+0x4c>
c0de4584:	2840      	cmp	r0, #64	@ 0x40
c0de4586:	d0ab      	beq.n	c0de44e0 <io_legacy_apdu_rx+0x4c>
c0de4588:	2842      	cmp	r0, #66	@ 0x42
c0de458a:	bf18      	it	ne
c0de458c:	2400      	movne	r4, #0
c0de458e:	e05c      	b.n	c0de464a <io_legacy_apdu_rx+0x1b6>
c0de4590:	3801      	subs	r0, #1
c0de4592:	2802      	cmp	r0, #2
c0de4594:	d269      	bcs.n	c0de466a <io_legacy_apdu_rx+0x1d6>
c0de4596:	f240 0702 	movw	r7, #2
c0de459a:	3c01      	subs	r4, #1
c0de459c:	f2c0 0700 	movt	r7, #0
c0de45a0:	444e      	add	r6, r9
c0de45a2:	eb09 0007 	add.w	r0, r9, r7
c0de45a6:	1c71      	adds	r1, r6, #1
c0de45a8:	4622      	mov	r2, r4
c0de45aa:	f002 fa24 	bl	c0de69f6 <__aeabi_memcpy>
c0de45ae:	7870      	ldrb	r0, [r6, #1]
c0de45b0:	281a      	cmp	r0, #26
c0de45b2:	d129      	bne.n	c0de4608 <io_legacy_apdu_rx+0x174>
c0de45b4:	eb09 0007 	add.w	r0, r9, r7
c0de45b8:	4621      	mov	r1, r4
c0de45ba:	b003      	add	sp, #12
c0de45bc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de45c0:	f7ff be63 	b.w	c0de428a <io_process_itc_ux_event>
c0de45c4:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de45c8:	f2c0 0000 	movt	r0, #0
c0de45cc:	2155      	movs	r1, #85	@ 0x55
c0de45ce:	f809 1000 	strb.w	r1, [r9, r0]
c0de45d2:	eb09 0100 	add.w	r1, r9, r0
c0de45d6:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de45da:	2715      	movs	r7, #21
c0de45dc:	2202      	movs	r2, #2
c0de45de:	2300      	movs	r3, #0
c0de45e0:	704f      	strb	r7, [r1, #1]
c0de45e2:	b003      	add	sp, #12
c0de45e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de45e8:	f002 b991 	b.w	c0de690e <os_io_tx_cmd>
c0de45ec:	2810      	cmp	r0, #16
c0de45ee:	d013      	beq.n	c0de4618 <io_legacy_apdu_rx+0x184>
c0de45f0:	2820      	cmp	r0, #32
c0de45f2:	d017      	beq.n	c0de4624 <io_legacy_apdu_rx+0x190>
c0de45f4:	2821      	cmp	r0, #33	@ 0x21
c0de45f6:	d113      	bne.n	c0de4620 <io_legacy_apdu_rx+0x18c>
c0de45f8:	2005      	movs	r0, #5
c0de45fa:	e014      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de45fc:	2830      	cmp	r0, #48	@ 0x30
c0de45fe:	d00d      	beq.n	c0de461c <io_legacy_apdu_rx+0x188>
c0de4600:	2840      	cmp	r0, #64	@ 0x40
c0de4602:	d10d      	bne.n	c0de4620 <io_legacy_apdu_rx+0x18c>
c0de4604:	2003      	movs	r0, #3
c0de4606:	e00e      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de4608:	b315      	cbz	r5, c0de4650 <io_legacy_apdu_rx+0x1bc>
c0de460a:	2000      	movs	r0, #0
c0de460c:	2400      	movs	r4, #0
c0de460e:	f7fb ffe7 	bl	c0de05e0 <io_event>
c0de4612:	e01a      	b.n	c0de464a <io_legacy_apdu_rx+0x1b6>
c0de4614:	2004      	movs	r0, #4
c0de4616:	e006      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de4618:	2006      	movs	r0, #6
c0de461a:	e004      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de461c:	2002      	movs	r0, #2
c0de461e:	e002      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de4620:	2000      	movs	r0, #0
c0de4622:	e000      	b.n	c0de4626 <io_legacy_apdu_rx+0x192>
c0de4624:	2001      	movs	r0, #1
c0de4626:	f246 51e6 	movw	r1, #26086	@ 0x65e6
c0de462a:	f2c0 0100 	movt	r1, #0
c0de462e:	4449      	add	r1, r9
c0de4630:	7188      	strb	r0, [r1, #6]
c0de4632:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de4636:	3c01      	subs	r4, #1
c0de4638:	f2c0 0000 	movt	r0, #0
c0de463c:	eb09 0106 	add.w	r1, r9, r6
c0de4640:	4448      	add	r0, r9
c0de4642:	3101      	adds	r1, #1
c0de4644:	4622      	mov	r2, r4
c0de4646:	f002 f9d6 	bl	c0de69f6 <__aeabi_memcpy>
c0de464a:	4620      	mov	r0, r4
c0de464c:	b003      	add	sp, #12
c0de464e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4650:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de4654:	2815      	cmp	r0, #21
c0de4656:	d8d8      	bhi.n	c0de460a <io_legacy_apdu_rx+0x176>
c0de4658:	2101      	movs	r1, #1
c0de465a:	fa01 f000 	lsl.w	r0, r1, r0
c0de465e:	f245 0120 	movw	r1, #20512	@ 0x5020
c0de4662:	f2c0 0120 	movt	r1, #32
c0de4666:	4208      	tst	r0, r1
c0de4668:	d0cf      	beq.n	c0de460a <io_legacy_apdu_rx+0x176>
c0de466a:	2400      	movs	r4, #0
c0de466c:	e7ed      	b.n	c0de464a <io_legacy_apdu_rx+0x1b6>
c0de466e:	20ff      	movs	r0, #255	@ 0xff
c0de4670:	f002 f92b 	bl	c0de68ca <os_sched_exit>

c0de4674 <io_seproxyhal_init>:
c0de4674:	b5b0      	push	{r4, r5, r7, lr}
c0de4676:	b08a      	sub	sp, #40	@ 0x28
c0de4678:	f246 50ee 	movw	r0, #26094	@ 0x65ee
c0de467c:	f2c0 0000 	movt	r0, #0
c0de4680:	2500      	movs	r5, #0
c0de4682:	ac01      	add	r4, sp, #4
c0de4684:	f809 5000 	strb.w	r5, [r9, r0]
c0de4688:	4620      	mov	r0, r4
c0de468a:	2118      	movs	r1, #24
c0de468c:	f002 f9b0 	bl	c0de69f0 <__aeabi_memclr>
c0de4690:	2011      	movs	r0, #17
c0de4692:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4696:	f246 50f0 	movw	r0, #26096	@ 0x65f0
c0de469a:	2131      	movs	r1, #49	@ 0x31
c0de469c:	f2c0 0000 	movt	r0, #0
c0de46a0:	f6cd 61ad 	movt	r1, #57005	@ 0xdead
c0de46a4:	f849 1000 	str.w	r1, [r9, r0]
c0de46a8:	4620      	mov	r0, r4
c0de46aa:	f8ad 5024 	strh.w	r5, [sp, #36]	@ 0x24
c0de46ae:	f002 f917 	bl	c0de68e0 <os_io_init>
c0de46b2:	f246 50e4 	movw	r0, #26084	@ 0x65e4
c0de46b6:	f2c0 0000 	movt	r0, #0
c0de46ba:	2101      	movs	r1, #1
c0de46bc:	f809 1000 	strb.w	r1, [r9, r0]
c0de46c0:	b00a      	add	sp, #40	@ 0x28
c0de46c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de46c4 <USB_power>:
c0de46c4:	4770      	bx	lr
	...

c0de46c8 <bagl_draw_with_context>:
c0de46c8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de46cc:	b08e      	sub	sp, #56	@ 0x38
c0de46ce:	f890 8000 	ldrb.w	r8, [r0]
c0de46d2:	4604      	mov	r4, r0
c0de46d4:	f008 0b7f 	and.w	fp, r8, #127	@ 0x7f
c0de46d8:	f1bb 0f05 	cmp.w	fp, #5
c0de46dc:	910d      	str	r1, [sp, #52]	@ 0x34
c0de46de:	920a      	str	r2, [sp, #40]	@ 0x28
c0de46e0:	f000 80b7 	beq.w	c0de4852 <bagl_draw_with_context+0x18a>
c0de46e4:	8b20      	ldrh	r0, [r4, #24]
c0de46e6:	4616      	mov	r6, r2
c0de46e8:	f000 facc 	bl	c0de4c84 <bagl_get_font>
c0de46ec:	2800      	cmp	r0, #0
c0de46ee:	f000 80b0 	beq.w	c0de4852 <bagl_draw_with_context+0x18a>
c0de46f2:	f890 a005 	ldrb.w	sl, [r0, #5]
c0de46f6:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de46f8:	8921      	ldrh	r1, [r4, #8]
c0de46fa:	2800      	cmp	r0, #0
c0de46fc:	f04f 0c00 	mov.w	ip, #0
c0de4700:	f8cd a02c 	str.w	sl, [sp, #44]	@ 0x2c
c0de4704:	9109      	str	r1, [sp, #36]	@ 0x24
c0de4706:	f000 8179 	beq.w	c0de49fc <bagl_draw_with_context+0x334>
c0de470a:	2e00      	cmp	r6, #0
c0de470c:	f000 8176 	beq.w	c0de49fc <bagl_draw_with_context+0x334>
c0de4710:	88e1      	ldrh	r1, [r4, #6]
c0de4712:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4716:	3164      	adds	r1, #100	@ 0x64
c0de4718:	b289      	uxth	r1, r1
c0de471a:	8b20      	ldrh	r0, [r4, #24]
c0de471c:	e9cd 3100 	strd	r3, r1, [sp]
c0de4720:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de4722:	b2f2      	uxtb	r2, r6
c0de4724:	2500      	movs	r5, #0
c0de4726:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de472a:	2100      	movs	r1, #0
c0de472c:	2200      	movs	r2, #0
c0de472e:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4732:	2700      	movs	r7, #0
c0de4734:	9502      	str	r5, [sp, #8]
c0de4736:	970c      	str	r7, [sp, #48]	@ 0x30
c0de4738:	9505      	str	r5, [sp, #20]
c0de473a:	f000 fae1 	bl	c0de4d00 <bagl_draw_string>
c0de473e:	88e1      	ldrh	r1, [r4, #6]
c0de4740:	2e05      	cmp	r6, #5
c0de4742:	b285      	uxth	r5, r0
c0de4744:	f0c0 81a7 	bcc.w	c0de4a96 <bagl_draw_with_context+0x3ce>
c0de4748:	42a9      	cmp	r1, r5
c0de474a:	f080 81a4 	bcs.w	c0de4a96 <bagl_draw_with_context+0x3ce>
c0de474e:	8b20      	ldrh	r0, [r4, #24]
c0de4750:	f242 72e6 	movw	r2, #10214	@ 0x27e6
c0de4754:	f2c0 0200 	movt	r2, #0
c0de4758:	2700      	movs	r7, #0
c0de475a:	2103      	movs	r1, #3
c0de475c:	447a      	add	r2, pc
c0de475e:	2364      	movs	r3, #100	@ 0x64
c0de4760:	f243 0639 	movw	r6, #12345	@ 0x3039
c0de4764:	9600      	str	r6, [sp, #0]
c0de4766:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
c0de4768:	e9cd 3701 	strd	r3, r7, [sp, #4]
c0de476c:	e9cd 2103 	strd	r2, r1, [sp, #12]
c0de4770:	2100      	movs	r1, #0
c0de4772:	2200      	movs	r2, #0
c0de4774:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4778:	9705      	str	r7, [sp, #20]
c0de477a:	f000 fac1 	bl	c0de4d00 <bagl_draw_string>
c0de477e:	88e1      	ldrh	r1, [r4, #6]
c0de4780:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
c0de4782:	ea4f 0c56 	mov.w	ip, r6, lsr #1
c0de4786:	428d      	cmp	r5, r1
c0de4788:	eb02 0256 	add.w	r2, r2, r6, lsr #1
c0de478c:	920c      	str	r2, [sp, #48]	@ 0x30
c0de478e:	f240 8183 	bls.w	c0de4a98 <bagl_draw_with_context+0x3d0>
c0de4792:	ebb6 0a0c 	subs.w	sl, r6, ip
c0de4796:	f000 817f 	beq.w	c0de4a98 <bagl_draw_with_context+0x3d0>
c0de479a:	b280      	uxth	r0, r0
c0de479c:	9008      	str	r0, [sp, #32]
c0de479e:	2600      	movs	r6, #0
c0de47a0:	f8cd 801c 	str.w	r8, [sp, #28]
c0de47a4:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47a8:	8b20      	ldrh	r0, [r4, #24]
c0de47aa:	e9cd 3100 	strd	r3, r1, [sp]
c0de47ae:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de47b0:	fa5f f28c 	uxtb.w	r2, ip
c0de47b4:	465f      	mov	r7, fp
c0de47b6:	f04f 0b00 	mov.w	fp, #0
c0de47ba:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de47be:	2100      	movs	r1, #0
c0de47c0:	2200      	movs	r2, #0
c0de47c2:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47c6:	46e0      	mov	r8, ip
c0de47c8:	f8cd b008 	str.w	fp, [sp, #8]
c0de47cc:	f8cd b014 	str.w	fp, [sp, #20]
c0de47d0:	f000 fa96 	bl	c0de4d00 <bagl_draw_string>
c0de47d4:	88e1      	ldrh	r1, [r4, #6]
c0de47d6:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47da:	b285      	uxth	r5, r0
c0de47dc:	8b20      	ldrh	r0, [r4, #24]
c0de47de:	e9cd 3100 	strd	r3, r1, [sp]
c0de47e2:	990c      	ldr	r1, [sp, #48]	@ 0x30
c0de47e4:	fa5f f28a 	uxtb.w	r2, sl
c0de47e8:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de47ec:	2100      	movs	r1, #0
c0de47ee:	2200      	movs	r2, #0
c0de47f0:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47f4:	f8cd b008 	str.w	fp, [sp, #8]
c0de47f8:	f8cd b014 	str.w	fp, [sp, #20]
c0de47fc:	f000 fa80 	bl	c0de4d00 <bagl_draw_string>
c0de4800:	9908      	ldr	r1, [sp, #32]
c0de4802:	b280      	uxth	r0, r0
c0de4804:	186a      	adds	r2, r5, r1
c0de4806:	88e1      	ldrh	r1, [r4, #6]
c0de4808:	1815      	adds	r5, r2, r0
c0de480a:	428d      	cmp	r5, r1
c0de480c:	f240 8234 	bls.w	c0de4c78 <bagl_draw_with_context+0x5b0>
c0de4810:	2e01      	cmp	r6, #1
c0de4812:	d007      	beq.n	c0de4824 <bagl_draw_with_context+0x15c>
c0de4814:	46c4      	mov	ip, r8
c0de4816:	46bb      	mov	fp, r7
c0de4818:	b90e      	cbnz	r6, c0de481e <bagl_draw_with_context+0x156>
c0de481a:	f1ac 0c01 	sub.w	ip, ip, #1
c0de481e:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4822:	e006      	b.n	c0de4832 <bagl_draw_with_context+0x16a>
c0de4824:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de4826:	46c4      	mov	ip, r8
c0de4828:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de482c:	3001      	adds	r0, #1
c0de482e:	46bb      	mov	fp, r7
c0de4830:	900c      	str	r0, [sp, #48]	@ 0x30
c0de4832:	f1bc 0f00 	cmp.w	ip, #0
c0de4836:	f000 812f 	beq.w	c0de4a98 <bagl_draw_with_context+0x3d0>
c0de483a:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	@ 0x30
c0de483e:	1a80      	subs	r0, r0, r2
c0de4840:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4842:	eb10 0a02 	adds.w	sl, r0, r2
c0de4846:	f04f 0001 	mov.w	r0, #1
c0de484a:	ea20 0606 	bic.w	r6, r0, r6
c0de484e:	d1a9      	bne.n	c0de47a4 <bagl_draw_with_context+0xdc>
c0de4850:	e122      	b.n	c0de4a98 <bagl_draw_with_context+0x3d0>
c0de4852:	2000      	movs	r0, #0
c0de4854:	900c      	str	r0, [sp, #48]	@ 0x30
c0de4856:	2000      	movs	r0, #0
c0de4858:	9009      	str	r0, [sp, #36]	@ 0x24
c0de485a:	2000      	movs	r0, #0
c0de485c:	f04f 0c00 	mov.w	ip, #0
c0de4860:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de4862:	f04f 0e00 	mov.w	lr, #0
c0de4866:	2500      	movs	r5, #0
c0de4868:	88e3      	ldrh	r3, [r4, #6]
c0de486a:	8926      	ldrh	r6, [r4, #8]
c0de486c:	7ae7      	ldrb	r7, [r4, #11]
c0de486e:	0858      	lsrs	r0, r3, #1
c0de4870:	0871      	lsrs	r1, r6, #1
c0de4872:	ebb0 0f56 	cmp.w	r0, r6, lsr #1
c0de4876:	460a      	mov	r2, r1
c0de4878:	bf38      	it	cc
c0de487a:	085a      	lsrcc	r2, r3, #1
c0de487c:	42ba      	cmp	r2, r7
c0de487e:	46ba      	mov	sl, r7
c0de4880:	d803      	bhi.n	c0de488a <bagl_draw_with_context+0x1c2>
c0de4882:	4288      	cmp	r0, r1
c0de4884:	bf2c      	ite	cs
c0de4886:	468a      	movcs	sl, r1
c0de4888:	4682      	movcc	sl, r0
c0de488a:	f1ab 0001 	sub.w	r0, fp, #1
c0de488e:	2804      	cmp	r0, #4
c0de4890:	d307      	bcc.n	c0de48a2 <bagl_draw_with_context+0x1da>
c0de4892:	f1bb 0f06 	cmp.w	fp, #6
c0de4896:	f000 80b4 	beq.w	c0de4a02 <bagl_draw_with_context+0x33a>
c0de489a:	f1bb 0f07 	cmp.w	fp, #7
c0de489e:	f040 80c8 	bne.w	c0de4a32 <bagl_draw_with_context+0x36a>
c0de48a2:	f1bb 0f04 	cmp.w	fp, #4
c0de48a6:	bf08      	it	eq
c0de48a8:	2f00      	cmpeq	r7, #0
c0de48aa:	d00a      	beq.n	c0de48c2 <bagl_draw_with_context+0x1fa>
c0de48ac:	f1b8 0f81 	cmp.w	r8, #129	@ 0x81
c0de48b0:	9508      	str	r5, [sp, #32]
c0de48b2:	dc0f      	bgt.n	c0de48d4 <bagl_draw_with_context+0x20c>
c0de48b4:	f1b8 0f02 	cmp.w	r8, #2
c0de48b8:	d013      	beq.n	c0de48e2 <bagl_draw_with_context+0x21a>
c0de48ba:	f1b8 0f07 	cmp.w	r8, #7
c0de48be:	d010      	beq.n	c0de48e2 <bagl_draw_with_context+0x21a>
c0de48c0:	e0ba      	b.n	c0de4a38 <bagl_draw_with_context+0x370>
c0de48c2:	6920      	ldr	r0, [r4, #16]
c0de48c4:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de48c8:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de48cc:	9600      	str	r6, [sp, #0]
c0de48ce:	f002 f87f 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de48d2:	e0ae      	b.n	c0de4a32 <bagl_draw_with_context+0x36a>
c0de48d4:	f1b8 0f87 	cmp.w	r8, #135	@ 0x87
c0de48d8:	d003      	beq.n	c0de48e2 <bagl_draw_with_context+0x21a>
c0de48da:	f1b8 0f82 	cmp.w	r8, #130	@ 0x82
c0de48de:	f040 80ab 	bne.w	c0de4a38 <bagl_draw_with_context+0x370>
c0de48e2:	6960      	ldr	r0, [r4, #20]
c0de48e4:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de48e8:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de48ec:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
c0de48ee:	f1bb 0f07 	cmp.w	fp, #7
c0de48f2:	bf08      	it	eq
c0de48f4:	1b52      	subeq	r2, r2, r5
c0de48f6:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de48f8:	bf08      	it	eq
c0de48fa:	462e      	moveq	r6, r5
c0de48fc:	9600      	str	r6, [sp, #0]
c0de48fe:	4665      	mov	r5, ip
c0de4900:	4676      	mov	r6, lr
c0de4902:	f002 f865 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4906:	9f08      	ldr	r7, [sp, #32]
c0de4908:	46ac      	mov	ip, r5
c0de490a:	f1bb 0f04 	cmp.w	fp, #4
c0de490e:	f000 8090 	beq.w	c0de4a32 <bagl_draw_with_context+0x36a>
c0de4912:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de4914:	2800      	cmp	r0, #0
c0de4916:	f000 808c 	beq.w	c0de4a32 <bagl_draw_with_context+0x36a>
c0de491a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de491c:	2800      	cmp	r0, #0
c0de491e:	f000 8088 	beq.w	c0de4a32 <bagl_draw_with_context+0x36a>
c0de4922:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
c0de4926:	e9d4 a204 	ldrd	sl, r2, [r4, #16]
c0de492a:	f008 007d 	and.w	r0, r8, #125	@ 0x7d
c0de492e:	2801      	cmp	r0, #1
c0de4930:	d106      	bne.n	c0de4940 <bagl_draw_with_context+0x278>
c0de4932:	7b20      	ldrb	r0, [r4, #12]
c0de4934:	2801      	cmp	r0, #1
c0de4936:	4650      	mov	r0, sl
c0de4938:	bf04      	itt	eq
c0de493a:	4610      	moveq	r0, r2
c0de493c:	4652      	moveq	r2, sl
c0de493e:	4682      	mov	sl, r0
c0de4940:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4944:	46b0      	mov	r8, r6
c0de4946:	8b20      	ldrh	r0, [r4, #24]
c0de4948:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
c0de494c:	187b      	adds	r3, r7, r1
c0de494e:	f1bb 0f07 	cmp.w	fp, #7
c0de4952:	bf08      	it	eq
c0de4954:	f1ce 0800 	rsbeq	r8, lr, #0
c0de4958:	88e1      	ldrh	r1, [r4, #6]
c0de495a:	eb08 0e05 	add.w	lr, r8, r5
c0de495e:	1bc9      	subs	r1, r1, r7
c0de4960:	f1bb 0707 	subs.w	r7, fp, #7
c0de4964:	8925      	ldrh	r5, [r4, #8]
c0de4966:	bf18      	it	ne
c0de4968:	4637      	movne	r7, r6
c0de496a:	e9cd e100 	strd	lr, r1, [sp]
c0de496e:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de4970:	1bed      	subs	r5, r5, r7
c0de4972:	2600      	movs	r6, #0
c0de4974:	e9cd 1c03 	strd	r1, ip, [sp, #12]
c0de4978:	4651      	mov	r1, sl
c0de497a:	9502      	str	r5, [sp, #8]
c0de497c:	9605      	str	r6, [sp, #20]
c0de497e:	4693      	mov	fp, r2
c0de4980:	f000 f9be 	bl	c0de4d00 <bagl_draw_string>
c0de4984:	990c      	ldr	r1, [sp, #48]	@ 0x30
c0de4986:	9e08      	ldr	r6, [sp, #32]
c0de4988:	2900      	cmp	r1, #0
c0de498a:	d052      	beq.n	c0de4a32 <bagl_draw_with_context+0x36a>
c0de498c:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
c0de4990:	f8b4 e018 	ldrh.w	lr, [r4, #24]
c0de4994:	b283      	uxth	r3, r0
c0de4996:	eb08 0005 	add.w	r0, r8, r5
c0de499a:	88e1      	ldrh	r1, [r4, #6]
c0de499c:	8925      	ldrh	r5, [r4, #8]
c0de499e:	f242 5294 	movw	r2, #9620	@ 0x2594
c0de49a2:	f2c0 0200 	movt	r2, #0
c0de49a6:	1b89      	subs	r1, r1, r6
c0de49a8:	1bed      	subs	r5, r5, r7
c0de49aa:	f04f 0c03 	mov.w	ip, #3
c0de49ae:	447a      	add	r2, pc
c0de49b0:	e88d 0023 	stmia.w	sp, {r0, r1, r5}
c0de49b4:	e9cd 2c03 	strd	r2, ip, [sp, #12]
c0de49b8:	4670      	mov	r0, lr
c0de49ba:	4651      	mov	r1, sl
c0de49bc:	465a      	mov	r2, fp
c0de49be:	2500      	movs	r5, #0
c0de49c0:	9505      	str	r5, [sp, #20]
c0de49c2:	f000 f99d 	bl	c0de4d00 <bagl_draw_string>
c0de49c6:	88e3      	ldrh	r3, [r4, #6]
c0de49c8:	8925      	ldrh	r5, [r4, #8]
c0de49ca:	1b9e      	subs	r6, r3, r6
c0de49cc:	b283      	uxth	r3, r0
c0de49ce:	1be8      	subs	r0, r5, r7
c0de49d0:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de49d2:	9d0d      	ldr	r5, [sp, #52]	@ 0x34
c0de49d4:	f9b4 1004 	ldrsh.w	r1, [r4, #4]
c0de49d8:	442f      	add	r7, r5
c0de49da:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
c0de49dc:	eb08 0201 	add.w	r2, r8, r1
c0de49e0:	8b21      	ldrh	r1, [r4, #24]
c0de49e2:	1b7f      	subs	r7, r7, r5
c0de49e4:	e9cd 2600 	strd	r2, r6, [sp]
c0de49e8:	aa02      	add	r2, sp, #8
c0de49ea:	c2a1      	stmia	r2!, {r0, r5, r7}
c0de49ec:	4608      	mov	r0, r1
c0de49ee:	4651      	mov	r1, sl
c0de49f0:	465a      	mov	r2, fp
c0de49f2:	2700      	movs	r7, #0
c0de49f4:	9705      	str	r7, [sp, #20]
c0de49f6:	f000 f983 	bl	c0de4d00 <bagl_draw_string>
c0de49fa:	e01a      	b.n	c0de4a32 <bagl_draw_with_context+0x36a>
c0de49fc:	2000      	movs	r0, #0
c0de49fe:	900c      	str	r0, [sp, #48]	@ 0x30
c0de4a00:	e72f      	b.n	c0de4862 <bagl_draw_with_context+0x19a>
c0de4a02:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4a06:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4a0a:	7b23      	ldrb	r3, [r4, #12]
c0de4a0c:	6920      	ldr	r0, [r4, #16]
c0de4a0e:	4439      	add	r1, r7
c0de4a10:	2b01      	cmp	r3, #1
c0de4a12:	443a      	add	r2, r7
c0de4a14:	d004      	beq.n	c0de4a20 <bagl_draw_with_context+0x358>
c0de4a16:	7aa3      	ldrb	r3, [r4, #10]
c0de4a18:	429f      	cmp	r7, r3
c0de4a1a:	d901      	bls.n	c0de4a20 <bagl_draw_with_context+0x358>
c0de4a1c:	1afb      	subs	r3, r7, r3
c0de4a1e:	e000      	b.n	c0de4a22 <bagl_draw_with_context+0x35a>
c0de4a20:	2300      	movs	r3, #0
c0de4a22:	6966      	ldr	r6, [r4, #20]
c0de4a24:	25ff      	movs	r5, #255	@ 0xff
c0de4a26:	e9cd 5300 	strd	r5, r3, [sp]
c0de4a2a:	463b      	mov	r3, r7
c0de4a2c:	9602      	str	r6, [sp, #8]
c0de4a2e:	f000 fab7 	bl	c0de4fa0 <bagl_draw_circle_helper>
c0de4a32:	b00e      	add	sp, #56	@ 0x38
c0de4a34:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4a38:	7b20      	ldrb	r0, [r4, #12]
c0de4a3a:	f8cd e018 	str.w	lr, [sp, #24]
c0de4a3e:	2801      	cmp	r0, #1
c0de4a40:	f8cd c024 	str.w	ip, [sp, #36]	@ 0x24
c0de4a44:	d151      	bne.n	c0de4aea <bagl_draw_with_context+0x422>
c0de4a46:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4a4a:	6920      	ldr	r0, [r4, #16]
c0de4a4c:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4a50:	4451      	add	r1, sl
c0de4a52:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4a56:	9600      	str	r6, [sp, #0]
c0de4a58:	f001 ffba 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4a5c:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4a60:	8923      	ldrh	r3, [r4, #8]
c0de4a62:	6920      	ldr	r0, [r4, #16]
c0de4a64:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4a68:	4452      	add	r2, sl
c0de4a6a:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4a6e:	4653      	mov	r3, sl
c0de4a70:	9700      	str	r7, [sp, #0]
c0de4a72:	f001 ffad 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4a76:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4a7a:	88e1      	ldrh	r1, [r4, #6]
c0de4a7c:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4a80:	8927      	ldrh	r7, [r4, #8]
c0de4a82:	6920      	ldr	r0, [r4, #16]
c0de4a84:	eba2 020a 	sub.w	r2, r2, sl
c0de4a88:	4411      	add	r1, r2
c0de4a8a:	eb0a 0203 	add.w	r2, sl, r3
c0de4a8e:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4a92:	4653      	mov	r3, sl
c0de4a94:	e08c      	b.n	c0de4bb0 <bagl_draw_with_context+0x4e8>
c0de4a96:	46b4      	mov	ip, r6
c0de4a98:	8b20      	ldrh	r0, [r4, #24]
c0de4a9a:	f400 4240 	and.w	r2, r0, #49152	@ 0xc000
c0de4a9e:	f5b2 4f00 	cmp.w	r2, #32768	@ 0x8000
c0de4aa2:	d005      	beq.n	c0de4ab0 <bagl_draw_with_context+0x3e8>
c0de4aa4:	f5b2 4f80 	cmp.w	r2, #16384	@ 0x4000
c0de4aa8:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de4aaa:	d108      	bne.n	c0de4abe <bagl_draw_with_context+0x3f6>
c0de4aac:	1b49      	subs	r1, r1, r5
c0de4aae:	e003      	b.n	c0de4ab8 <bagl_draw_with_context+0x3f0>
c0de4ab0:	0849      	lsrs	r1, r1, #1
c0de4ab2:	eba1 0155 	sub.w	r1, r1, r5, lsr #1
c0de4ab6:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de4ab8:	ea21 75e1 	bic.w	r5, r1, r1, asr #31
c0de4abc:	e000      	b.n	c0de4ac0 <bagl_draw_with_context+0x3f8>
c0de4abe:	2500      	movs	r5, #0
c0de4ac0:	f400 5040 	and.w	r0, r0, #12288	@ 0x3000
c0de4ac4:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
c0de4ac8:	d006      	beq.n	c0de4ad8 <bagl_draw_with_context+0x410>
c0de4aca:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
c0de4ace:	d109      	bne.n	c0de4ae4 <bagl_draw_with_context+0x41c>
c0de4ad0:	8920      	ldrh	r0, [r4, #8]
c0de4ad2:	eba0 0e02 	sub.w	lr, r0, r2
c0de4ad6:	e6c7      	b.n	c0de4868 <bagl_draw_with_context+0x1a0>
c0de4ad8:	8920      	ldrh	r0, [r4, #8]
c0de4ada:	ea6f 0152 	mvn.w	r1, r2, lsr #1
c0de4ade:	eb01 0e50 	add.w	lr, r1, r0, lsr #1
c0de4ae2:	e6c1      	b.n	c0de4868 <bagl_draw_with_context+0x1a0>
c0de4ae4:	f04f 0e00 	mov.w	lr, #0
c0de4ae8:	e6be      	b.n	c0de4868 <bagl_draw_with_context+0x1a0>
c0de4aea:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4aee:	6960      	ldr	r0, [r4, #20]
c0de4af0:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4af4:	4451      	add	r1, sl
c0de4af6:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4afa:	9600      	str	r6, [sp, #0]
c0de4afc:	f001 ff68 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b00:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4b04:	8923      	ldrh	r3, [r4, #8]
c0de4b06:	6960      	ldr	r0, [r4, #20]
c0de4b08:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b0c:	4452      	add	r2, sl
c0de4b0e:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4b12:	4653      	mov	r3, sl
c0de4b14:	9700      	str	r7, [sp, #0]
c0de4b16:	f001 ff5b 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b1a:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de4b1e:	ea6f 020a 	mvn.w	r2, sl
c0de4b22:	88e1      	ldrh	r1, [r4, #6]
c0de4b24:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de4b28:	441a      	add	r2, r3
c0de4b2a:	8923      	ldrh	r3, [r4, #8]
c0de4b2c:	6960      	ldr	r0, [r4, #20]
c0de4b2e:	4411      	add	r1, r2
c0de4b30:	eb0a 0207 	add.w	r2, sl, r7
c0de4b34:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4b38:	4653      	mov	r3, sl
c0de4b3a:	9700      	str	r7, [sp, #0]
c0de4b3c:	f001 ff48 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b40:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b44:	88e3      	ldrh	r3, [r4, #6]
c0de4b46:	6920      	ldr	r0, [r4, #16]
c0de4b48:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4b4c:	7aa7      	ldrb	r7, [r4, #10]
c0de4b4e:	4451      	add	r1, sl
c0de4b50:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4b54:	9700      	str	r7, [sp, #0]
c0de4b56:	f001 ff3b 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b5a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4b5e:	8923      	ldrh	r3, [r4, #8]
c0de4b60:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b64:	441a      	add	r2, r3
c0de4b66:	88e3      	ldrh	r3, [r4, #6]
c0de4b68:	6920      	ldr	r0, [r4, #16]
c0de4b6a:	7aa7      	ldrb	r7, [r4, #10]
c0de4b6c:	4451      	add	r1, sl
c0de4b6e:	3a01      	subs	r2, #1
c0de4b70:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4b74:	9700      	str	r7, [sp, #0]
c0de4b76:	f001 ff2b 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b7a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4b7e:	8927      	ldrh	r7, [r4, #8]
c0de4b80:	6920      	ldr	r0, [r4, #16]
c0de4b82:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b86:	7aa3      	ldrb	r3, [r4, #10]
c0de4b88:	4452      	add	r2, sl
c0de4b8a:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4b8e:	9700      	str	r7, [sp, #0]
c0de4b90:	f001 ff1e 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4b94:	88e1      	ldrh	r1, [r4, #6]
c0de4b96:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4b9a:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4b9e:	8927      	ldrh	r7, [r4, #8]
c0de4ba0:	6920      	ldr	r0, [r4, #16]
c0de4ba2:	4411      	add	r1, r2
c0de4ba4:	eb0a 0203 	add.w	r2, sl, r3
c0de4ba8:	7aa3      	ldrb	r3, [r4, #10]
c0de4baa:	3901      	subs	r1, #1
c0de4bac:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4bb0:	9700      	str	r7, [sp, #0]
c0de4bb2:	f001 ff0d 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4bb6:	e9dd 7c08 	ldrd	r7, ip, [sp, #32]
c0de4bba:	9e06      	ldr	r6, [sp, #24]
c0de4bbc:	f1ba 0f02 	cmp.w	sl, #2
c0de4bc0:	f4ff aea3 	bcc.w	c0de490a <bagl_draw_with_context+0x242>
c0de4bc4:	7b20      	ldrb	r0, [r4, #12]
c0de4bc6:	2500      	movs	r5, #0
c0de4bc8:	2801      	cmp	r0, #1
c0de4bca:	d004      	beq.n	c0de4bd6 <bagl_draw_with_context+0x50e>
c0de4bcc:	7aa0      	ldrb	r0, [r4, #10]
c0de4bce:	ebba 0000 	subs.w	r0, sl, r0
c0de4bd2:	bf28      	it	cs
c0de4bd4:	4605      	movcs	r5, r0
c0de4bd6:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4bda:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4bde:	e9d4 0704 	ldrd	r0, r7, [r4, #16]
c0de4be2:	23c0      	movs	r3, #192	@ 0xc0
c0de4be4:	4451      	add	r1, sl
c0de4be6:	4452      	add	r2, sl
c0de4be8:	e9cd 3500 	strd	r3, r5, [sp]
c0de4bec:	4653      	mov	r3, sl
c0de4bee:	9702      	str	r7, [sp, #8]
c0de4bf0:	f000 f9d6 	bl	c0de4fa0 <bagl_draw_circle_helper>
c0de4bf4:	88e1      	ldrh	r1, [r4, #6]
c0de4bf6:	7aa2      	ldrb	r2, [r4, #10]
c0de4bf8:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de4bfc:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de4c00:	6920      	ldr	r0, [r4, #16]
c0de4c02:	4419      	add	r1, r3
c0de4c04:	4452      	add	r2, sl
c0de4c06:	6966      	ldr	r6, [r4, #20]
c0de4c08:	2330      	movs	r3, #48	@ 0x30
c0de4c0a:	1a89      	subs	r1, r1, r2
c0de4c0c:	eb0a 0207 	add.w	r2, sl, r7
c0de4c10:	e9cd 3500 	strd	r3, r5, [sp]
c0de4c14:	4653      	mov	r3, sl
c0de4c16:	9602      	str	r6, [sp, #8]
c0de4c18:	f000 f9c2 	bl	c0de4fa0 <bagl_draw_circle_helper>
c0de4c1c:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4c20:	8923      	ldrh	r3, [r4, #8]
c0de4c22:	7aa7      	ldrb	r7, [r4, #10]
c0de4c24:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4c28:	441a      	add	r2, r3
c0de4c2a:	eb0a 0307 	add.w	r3, sl, r7
c0de4c2e:	6920      	ldr	r0, [r4, #16]
c0de4c30:	6967      	ldr	r7, [r4, #20]
c0de4c32:	1ad2      	subs	r2, r2, r3
c0de4c34:	230c      	movs	r3, #12
c0de4c36:	4451      	add	r1, sl
c0de4c38:	e9cd 3500 	strd	r3, r5, [sp]
c0de4c3c:	4653      	mov	r3, sl
c0de4c3e:	9702      	str	r7, [sp, #8]
c0de4c40:	f000 f9ae 	bl	c0de4fa0 <bagl_draw_circle_helper>
c0de4c44:	88e1      	ldrh	r1, [r4, #6]
c0de4c46:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4c4a:	7aa7      	ldrb	r7, [r4, #10]
c0de4c4c:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4c50:	4411      	add	r1, r2
c0de4c52:	eb0a 0207 	add.w	r2, sl, r7
c0de4c56:	8927      	ldrh	r7, [r4, #8]
c0de4c58:	6920      	ldr	r0, [r4, #16]
c0de4c5a:	1a89      	subs	r1, r1, r2
c0de4c5c:	1a9a      	subs	r2, r3, r2
c0de4c5e:	6966      	ldr	r6, [r4, #20]
c0de4c60:	2303      	movs	r3, #3
c0de4c62:	443a      	add	r2, r7
c0de4c64:	e9cd 3500 	strd	r3, r5, [sp]
c0de4c68:	4653      	mov	r3, sl
c0de4c6a:	9602      	str	r6, [sp, #8]
c0de4c6c:	f000 f998 	bl	c0de4fa0 <bagl_draw_circle_helper>
c0de4c70:	e9dd 7c08 	ldrd	r7, ip, [sp, #32]
c0de4c74:	9e06      	ldr	r6, [sp, #24]
c0de4c76:	e648      	b.n	c0de490a <bagl_draw_with_context+0x242>
c0de4c78:	46c4      	mov	ip, r8
c0de4c7a:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4c7e:	46bb      	mov	fp, r7
c0de4c80:	e70a      	b.n	c0de4a98 <bagl_draw_with_context+0x3d0>
	...

c0de4c84 <bagl_get_font>:
c0de4c84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4c86:	b081      	sub	sp, #4
c0de4c88:	4604      	mov	r4, r0
c0de4c8a:	f244 009a 	movw	r0, #16538	@ 0x409a
c0de4c8e:	f2c0 0000 	movt	r0, #0
c0de4c92:	4478      	add	r0, pc
c0de4c94:	f244 077e 	movw	r7, #16510	@ 0x407e
c0de4c98:	6806      	ldr	r6, [r0, #0]
c0de4c9a:	f2c0 0700 	movt	r7, #0
c0de4c9e:	f36f 341f 	bfc	r4, #12, #20
c0de4ca2:	447f      	add	r7, pc
c0de4ca4:	b186      	cbz	r6, c0de4cc8 <bagl_get_font+0x44>
c0de4ca6:	eb07 0086 	add.w	r0, r7, r6, lsl #2
c0de4caa:	f850 5c04 	ldr.w	r5, [r0, #-4]
c0de4cae:	4628      	mov	r0, r5
c0de4cb0:	f001 fd6e 	bl	c0de6790 <pic>
c0de4cb4:	7880      	ldrb	r0, [r0, #2]
c0de4cb6:	3e01      	subs	r6, #1
c0de4cb8:	4284      	cmp	r4, r0
c0de4cba:	d1f3      	bne.n	c0de4ca4 <bagl_get_font+0x20>
c0de4cbc:	4628      	mov	r0, r5
c0de4cbe:	b001      	add	sp, #4
c0de4cc0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4cc4:	f001 bd64 	b.w	c0de6790 <pic>
c0de4cc8:	2000      	movs	r0, #0
c0de4cca:	b001      	add	sp, #4
c0de4ccc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4cce <bagl_compute_line_width>:
c0de4cce:	b580      	push	{r7, lr}
c0de4cd0:	b086      	sub	sp, #24
c0de4cd2:	469c      	mov	ip, r3
c0de4cd4:	f04f 0e00 	mov.w	lr, #0
c0de4cd8:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4cdc:	e9cd 3100 	strd	r3, r1, [sp]
c0de4ce0:	e9cd e202 	strd	lr, r2, [sp, #8]
c0de4ce4:	2100      	movs	r1, #0
c0de4ce6:	2200      	movs	r2, #0
c0de4ce8:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4cec:	f8cd e014 	str.w	lr, [sp, #20]
c0de4cf0:	f8cd c010 	str.w	ip, [sp, #16]
c0de4cf4:	f000 f804 	bl	c0de4d00 <bagl_draw_string>
c0de4cf8:	b280      	uxth	r0, r0
c0de4cfa:	b006      	add	sp, #24
c0de4cfc:	bd80      	pop	{r7, pc}
	...

c0de4d00 <bagl_draw_string>:
c0de4d00:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d04:	b0a4      	sub	sp, #144	@ 0x90
c0de4d06:	9f2c      	ldr	r7, [sp, #176]	@ 0xb0
c0de4d08:	f243 0539 	movw	r5, #12345	@ 0x3039
c0de4d0c:	ea83 0605 	eor.w	r6, r3, r5
c0de4d10:	407d      	eors	r5, r7
c0de4d12:	4335      	orrs	r5, r6
c0de4d14:	462c      	mov	r4, r5
c0de4d16:	bf08      	it	eq
c0de4d18:	462f      	moveq	r7, r5
c0de4d1a:	9711      	str	r7, [sp, #68]	@ 0x44
c0de4d1c:	9308      	str	r3, [sp, #32]
c0de4d1e:	bf18      	it	ne
c0de4d20:	461c      	movne	r4, r3
c0de4d22:	9206      	str	r2, [sp, #24]
c0de4d24:	e9cd 2114 	strd	r2, r1, [sp, #80]	@ 0x50
c0de4d28:	f7ff ffac 	bl	c0de4c84 <bagl_get_font>
c0de4d2c:	2800      	cmp	r0, #0
c0de4d2e:	f000 8125 	beq.w	c0de4f7c <bagl_draw_string+0x27c>
c0de4d32:	f8dd a0c0 	ldr.w	sl, [sp, #192]	@ 0xc0
c0de4d36:	4606      	mov	r6, r0
c0de4d38:	fab5 f085 	clz	r0, r5
c0de4d3c:	f1ba 0f00 	cmp.w	sl, #0
c0de4d40:	ea4f 1050 	mov.w	r0, r0, lsr #5
c0de4d44:	9010      	str	r0, [sp, #64]	@ 0x40
c0de4d46:	f000 811c 	beq.w	c0de4f82 <bagl_draw_string+0x282>
c0de4d4a:	e9dd 102d 	ldrd	r1, r0, [sp, #180]	@ 0xb4
c0de4d4e:	78f2      	ldrb	r2, [r6, #3]
c0de4d50:	1867      	adds	r7, r4, r1
c0de4d52:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de4d54:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
c0de4d56:	4408      	add	r0, r1
c0de4d58:	9005      	str	r0, [sp, #20]
c0de4d5a:	2001      	movs	r0, #1
c0de4d5c:	46a4      	mov	ip, r4
c0de4d5e:	4090      	lsls	r0, r2
c0de4d60:	920f      	str	r2, [sp, #60]	@ 0x3c
c0de4d62:	9007      	str	r0, [sp, #28]
c0de4d64:	960c      	str	r6, [sp, #48]	@ 0x30
c0de4d66:	970e      	str	r7, [sp, #56]	@ 0x38
c0de4d68:	f813 5b01 	ldrb.w	r5, [r3], #1
c0de4d6c:	79b1      	ldrb	r1, [r6, #6]
c0de4d6e:	f896 e004 	ldrb.w	lr, [r6, #4]
c0de4d72:	428d      	cmp	r5, r1
c0de4d74:	d302      	bcc.n	c0de4d7c <bagl_draw_string+0x7c>
c0de4d76:	79f0      	ldrb	r0, [r6, #7]
c0de4d78:	4285      	cmp	r5, r0
c0de4d7a:	d919      	bls.n	c0de4db0 <bagl_draw_string+0xb0>
c0de4d7c:	2dc0      	cmp	r5, #192	@ 0xc0
c0de4d7e:	d303      	bcc.n	c0de4d88 <bagl_draw_string+0x88>
c0de4d80:	f005 043f 	and.w	r4, r5, #63	@ 0x3f
c0de4d84:	e005      	b.n	c0de4d92 <bagl_draw_string+0x92>
c0de4d86:	bf00      	nop
c0de4d88:	b268      	sxtb	r0, r5
c0de4d8a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de4d8e:	dd25      	ble.n	c0de4ddc <bagl_draw_string+0xdc>
c0de4d90:	2400      	movs	r4, #0
c0de4d92:	2000      	movs	r0, #0
c0de4d94:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4d96:	9012      	str	r0, [sp, #72]	@ 0x48
c0de4d98:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de4d9a:	f04f 0800 	mov.w	r8, #0
c0de4d9e:	fb0e f000 	mul.w	r0, lr, r0
c0de4da2:	fb00 f504 	mul.w	r5, r0, r4
c0de4da6:	2000      	movs	r0, #0
c0de4da8:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de4daa:	f04f 0b00 	mov.w	fp, #0
c0de4dae:	e08d      	b.n	c0de4ecc <bagl_draw_string+0x1cc>
c0de4db0:	68f0      	ldr	r0, [r6, #12]
c0de4db2:	f8cd c034 	str.w	ip, [sp, #52]	@ 0x34
c0de4db6:	e9cd e30a 	strd	lr, r3, [sp, #40]	@ 0x28
c0de4dba:	1a6f      	subs	r7, r5, r1
c0de4dbc:	f001 fce8 	bl	c0de6790 <pic>
c0de4dc0:	68b1      	ldr	r1, [r6, #8]
c0de4dc2:	4680      	mov	r8, r0
c0de4dc4:	4608      	mov	r0, r1
c0de4dc6:	f001 fce3 	bl	c0de6790 <pic>
c0de4dca:	79b1      	ldrb	r1, [r6, #6]
c0de4dcc:	79f2      	ldrb	r2, [r6, #7]
c0de4dce:	f850 5027 	ldr.w	r5, [r0, r7, lsl #2]
c0de4dd2:	1a50      	subs	r0, r2, r1
c0de4dd4:	4287      	cmp	r7, r0
c0de4dd6:	d132      	bne.n	c0de4e3e <bagl_draw_string+0x13e>
c0de4dd8:	8834      	ldrh	r4, [r6, #0]
c0de4dda:	e038      	b.n	c0de4e4e <bagl_draw_string+0x14e>
c0de4ddc:	06a8      	lsls	r0, r5, #26
c0de4dde:	f04f 000f 	mov.w	r0, #15
c0de4de2:	46f3      	mov	fp, lr
c0de4de4:	f8cd c034 	str.w	ip, [sp, #52]	@ 0x34
c0de4de8:	4698      	mov	r8, r3
c0de4dea:	bf58      	it	pl
c0de4dec:	200e      	movpl	r0, #14
c0de4dee:	f7ff ff49 	bl	c0de4c84 <bagl_get_font>
c0de4df2:	2800      	cmp	r0, #0
c0de4df4:	f000 80b9 	beq.w	c0de4f6a <bagl_draw_string+0x26a>
c0de4df8:	4607      	mov	r7, r0
c0de4dfa:	68c0      	ldr	r0, [r0, #12]
c0de4dfc:	f001 fcc8 	bl	c0de6790 <pic>
c0de4e00:	68b9      	ldr	r1, [r7, #8]
c0de4e02:	4604      	mov	r4, r0
c0de4e04:	4608      	mov	r0, r1
c0de4e06:	f001 fcc3 	bl	c0de6790 <pic>
c0de4e0a:	f005 051f 	and.w	r5, r5, #31
c0de4e0e:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
c0de4e12:	f3c0 018b 	ubfx	r1, r0, #2, #12
c0de4e16:	68b8      	ldr	r0, [r7, #8]
c0de4e18:	4421      	add	r1, r4
c0de4e1a:	9112      	str	r1, [sp, #72]	@ 0x48
c0de4e1c:	f001 fcb8 	bl	c0de6790 <pic>
c0de4e20:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
c0de4e24:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4e26:	f3c0 3484 	ubfx	r4, r0, #14, #5
c0de4e2a:	7970      	ldrb	r0, [r6, #5]
c0de4e2c:	7979      	ldrb	r1, [r7, #5]
c0de4e2e:	f897 e004 	ldrb.w	lr, [r7, #4]
c0de4e32:	4410      	add	r0, r2
c0de4e34:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de4e38:	1a42      	subs	r2, r0, r1
c0de4e3a:	4643      	mov	r3, r8
c0de4e3c:	e7ac      	b.n	c0de4d98 <bagl_draw_string+0x98>
c0de4e3e:	68b0      	ldr	r0, [r6, #8]
c0de4e40:	f001 fca6 	bl	c0de6790 <pic>
c0de4e44:	eb00 0087 	add.w	r0, r0, r7, lsl #2
c0de4e48:	6840      	ldr	r0, [r0, #4]
c0de4e4a:	f3c0 048b 	ubfx	r4, r0, #2, #12
c0de4e4e:	f3c5 018b 	ubfx	r1, r5, #2, #12
c0de4e52:	68b0      	ldr	r0, [r6, #8]
c0de4e54:	4441      	add	r1, r8
c0de4e56:	9112      	str	r1, [sp, #72]	@ 0x48
c0de4e58:	f001 fc9a 	bl	c0de6790 <pic>
c0de4e5c:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4e60:	f3c0 008b 	ubfx	r0, r0, #2, #12
c0de4e64:	1a21      	subs	r1, r4, r0
c0de4e66:	68b0      	ldr	r0, [r6, #8]
c0de4e68:	00cd      	lsls	r5, r1, #3
c0de4e6a:	f001 fc91 	bl	c0de6790 <pic>
c0de4e6e:	f850 1027 	ldr.w	r1, [r0, r7, lsl #2]
c0de4e72:	68b0      	ldr	r0, [r6, #8]
c0de4e74:	f3c1 3184 	ubfx	r1, r1, #14, #5
c0de4e78:	9109      	str	r1, [sp, #36]	@ 0x24
c0de4e7a:	f001 fc89 	bl	c0de6790 <pic>
c0de4e7e:	f850 1027 	ldr.w	r1, [r0, r7, lsl #2]
c0de4e82:	68b0      	ldr	r0, [r6, #8]
c0de4e84:	f3c1 48c3 	ubfx	r8, r1, #19, #4
c0de4e88:	f001 fc82 	bl	c0de6790 <pic>
c0de4e8c:	f850 4027 	ldr.w	r4, [r0, r7, lsl #2]
c0de4e90:	68b0      	ldr	r0, [r6, #8]
c0de4e92:	0f21      	lsrs	r1, r4, #28
c0de4e94:	9113      	str	r1, [sp, #76]	@ 0x4c
c0de4e96:	f001 fc7b 	bl	c0de6790 <pic>
c0de4e9a:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4e9e:	7971      	ldrb	r1, [r6, #5]
c0de4ea0:	f3c0 50c4 	ubfx	r0, r0, #23, #5
c0de4ea4:	1a41      	subs	r1, r0, r1
c0de4ea6:	68b0      	ldr	r0, [r6, #8]
c0de4ea8:	f101 0b09 	add.w	fp, r1, #9
c0de4eac:	f001 fc70 	bl	c0de6790 <pic>
c0de4eb0:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4eb4:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de4eb6:	f3c0 40c3 	ubfx	r0, r0, #19, #4
c0de4eba:	eb00 7014 	add.w	r0, r0, r4, lsr #28
c0de4ebe:	1a10      	subs	r0, r2, r0
c0de4ec0:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4ec2:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de4ec6:	e9dd e30a 	ldrd	lr, r3, [sp, #40]	@ 0x28
c0de4eca:	b2c4      	uxtb	r4, r0
c0de4ecc:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de4ece:	b138      	cbz	r0, c0de4ee0 <bagl_draw_string+0x1e0>
c0de4ed0:	2f00      	cmp	r7, #0
c0de4ed2:	dd2f      	ble.n	c0de4f34 <bagl_draw_string+0x234>
c0de4ed4:	eb08 000c 	add.w	r0, r8, ip
c0de4ed8:	1901      	adds	r1, r0, r4
c0de4eda:	42b9      	cmp	r1, r7
c0de4edc:	dd2c      	ble.n	c0de4f38 <bagl_draw_string+0x238>
c0de4ede:	e05a      	b.n	c0de4f96 <bagl_draw_string+0x296>
c0de4ee0:	eb08 000c 	add.w	r0, r8, ip
c0de4ee4:	4420      	add	r0, r4
c0de4ee6:	42b8      	cmp	r0, r7
c0de4ee8:	dd0a      	ble.n	c0de4f00 <bagl_draw_string+0x200>
c0de4eea:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4eec:	9905      	ldr	r1, [sp, #20]
c0de4eee:	320c      	adds	r2, #12
c0de4ef0:	eb02 000e 	add.w	r0, r2, lr
c0de4ef4:	4458      	add	r0, fp
c0de4ef6:	9f08      	ldr	r7, [sp, #32]
c0de4ef8:	4288      	cmp	r0, r1
c0de4efa:	9211      	str	r2, [sp, #68]	@ 0x44
c0de4efc:	dd01      	ble.n	c0de4f02 <bagl_draw_string+0x202>
c0de4efe:	e043      	b.n	c0de4f88 <bagl_draw_string+0x288>
c0de4f00:	4667      	mov	r7, ip
c0de4f02:	9812      	ldr	r0, [sp, #72]	@ 0x48
c0de4f04:	461e      	mov	r6, r3
c0de4f06:	b1e0      	cbz	r0, c0de4f42 <bagl_draw_string+0x242>
c0de4f08:	eb02 010b 	add.w	r1, r2, fp
c0de4f0c:	9a07      	ldr	r2, [sp, #28]
c0de4f0e:	eb07 0008 	add.w	r0, r7, r8
c0de4f12:	9200      	str	r2, [sp, #0]
c0de4f14:	aa14      	add	r2, sp, #80	@ 0x50
c0de4f16:	9201      	str	r2, [sp, #4]
c0de4f18:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
c0de4f1a:	b2ad      	uxth	r5, r5
c0de4f1c:	9202      	str	r2, [sp, #8]
c0de4f1e:	9a12      	ldr	r2, [sp, #72]	@ 0x48
c0de4f20:	4673      	mov	r3, lr
c0de4f22:	9203      	str	r2, [sp, #12]
c0de4f24:	4622      	mov	r2, r4
c0de4f26:	9504      	str	r5, [sp, #16]
c0de4f28:	f001 fd39 	bl	c0de699e <bagl_hal_draw_bitmap_within_rect>
c0de4f2c:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de4f30:	d00e      	beq.n	c0de4f50 <bagl_draw_string+0x250>
c0de4f32:	e02f      	b.n	c0de4f94 <bagl_draw_string+0x294>
c0de4f34:	eb08 000c 	add.w	r0, r8, ip
c0de4f38:	9913      	ldr	r1, [sp, #76]	@ 0x4c
c0de4f3a:	4408      	add	r0, r1
c0de4f3c:	eb00 0c04 	add.w	ip, r0, r4
c0de4f40:	e00e      	b.n	c0de4f60 <bagl_draw_string+0x260>
c0de4f42:	9806      	ldr	r0, [sp, #24]
c0de4f44:	4639      	mov	r1, r7
c0de4f46:	4623      	mov	r3, r4
c0de4f48:	f8cd e000 	str.w	lr, [sp]
c0de4f4c:	f001 fd40 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de4f50:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de4f52:	4633      	mov	r3, r6
c0de4f54:	4440      	add	r0, r8
c0de4f56:	4420      	add	r0, r4
c0de4f58:	eb00 0c07 	add.w	ip, r0, r7
c0de4f5c:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de4f5e:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de4f60:	f1ba 0a01 	subs.w	sl, sl, #1
c0de4f64:	f47f af00 	bne.w	c0de4d68 <bagl_draw_string+0x68>
c0de4f68:	e00c      	b.n	c0de4f84 <bagl_draw_string+0x284>
c0de4f6a:	2000      	movs	r0, #0
c0de4f6c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4f6e:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de4f72:	2400      	movs	r4, #0
c0de4f74:	9012      	str	r0, [sp, #72]	@ 0x48
c0de4f76:	4643      	mov	r3, r8
c0de4f78:	46de      	mov	lr, fp
c0de4f7a:	e70d      	b.n	c0de4d98 <bagl_draw_string+0x98>
c0de4f7c:	f04f 0c00 	mov.w	ip, #0
c0de4f80:	e009      	b.n	c0de4f96 <bagl_draw_string+0x296>
c0de4f82:	46a4      	mov	ip, r4
c0de4f84:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de4f86:	b930      	cbnz	r0, c0de4f96 <bagl_draw_string+0x296>
c0de4f88:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de4f8a:	fa1f f08c 	uxth.w	r0, ip
c0de4f8e:	ea40 4c01 	orr.w	ip, r0, r1, lsl #16
c0de4f92:	e000      	b.n	c0de4f96 <bagl_draw_string+0x296>
c0de4f94:	46bc      	mov	ip, r7
c0de4f96:	4660      	mov	r0, ip
c0de4f98:	b024      	add	sp, #144	@ 0x90
c0de4f9a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de4fa0 <bagl_draw_circle_helper>:
c0de4fa0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4fa4:	b098      	sub	sp, #96	@ 0x60
c0de4fa6:	9217      	str	r2, [sp, #92]	@ 0x5c
c0de4fa8:	9a21      	ldr	r2, [sp, #132]	@ 0x84
c0de4faa:	4607      	mov	r7, r0
c0de4fac:	1a9e      	subs	r6, r3, r2
c0de4fae:	2a00      	cmp	r2, #0
c0de4fb0:	4610      	mov	r0, r2
c0de4fb2:	bf18      	it	ne
c0de4fb4:	2001      	movne	r0, #1
c0de4fb6:	2500      	movs	r5, #0
c0de4fb8:	2e00      	cmp	r6, #0
c0de4fba:	9612      	str	r6, [sp, #72]	@ 0x48
c0de4fbc:	bfc8      	it	gt
c0de4fbe:	2501      	movgt	r5, #1
c0de4fc0:	2b00      	cmp	r3, #0
c0de4fc2:	9313      	str	r3, [sp, #76]	@ 0x4c
c0de4fc4:	9116      	str	r1, [sp, #88]	@ 0x58
c0de4fc6:	f100 81c2 	bmi.w	c0de534e <bagl_draw_circle_helper+0x3ae>
c0de4fca:	9e13      	ldr	r6, [sp, #76]	@ 0x4c
c0de4fcc:	9920      	ldr	r1, [sp, #128]	@ 0x80
c0de4fce:	4028      	ands	r0, r5
c0de4fd0:	9015      	str	r0, [sp, #84]	@ 0x54
c0de4fd2:	f1c6 0001 	rsb	r0, r6, #1
c0de4fd6:	9011      	str	r0, [sp, #68]	@ 0x44
c0de4fd8:	f001 0001 	and.w	r0, r1, #1
c0de4fdc:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de4fde:	9010      	str	r0, [sp, #64]	@ 0x40
c0de4fe0:	f001 0002 	and.w	r0, r1, #2
c0de4fe4:	900c      	str	r0, [sp, #48]	@ 0x30
c0de4fe6:	1e58      	subs	r0, r3, #1
c0de4fe8:	9007      	str	r0, [sp, #28]
c0de4fea:	f001 0004 	and.w	r0, r1, #4
c0de4fee:	900d      	str	r0, [sp, #52]	@ 0x34
c0de4ff0:	f001 0008 	and.w	r0, r1, #8
c0de4ff4:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de4ff6:	f001 0010 	and.w	r0, r1, #16
c0de4ffa:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de4ffc:	f001 0020 	and.w	r0, r1, #32
c0de5000:	900a      	str	r0, [sp, #40]	@ 0x28
c0de5002:	f001 0040 	and.w	r0, r1, #64	@ 0x40
c0de5006:	900e      	str	r0, [sp, #56]	@ 0x38
c0de5008:	f001 0080 	and.w	r0, r1, #128	@ 0x80
c0de500c:	9009      	str	r0, [sp, #36]	@ 0x24
c0de500e:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5010:	1b91      	subs	r1, r2, r6
c0de5012:	4410      	add	r0, r2
c0de5014:	1b80      	subs	r0, r0, r6
c0de5016:	9103      	str	r1, [sp, #12]
c0de5018:	f1c3 0101 	rsb	r1, r3, #1
c0de501c:	e9cd 1005 	strd	r1, r0, [sp, #20]
c0de5020:	3001      	adds	r0, #1
c0de5022:	f04f 0b00 	mov.w	fp, #0
c0de5026:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de502a:	f04f 0a01 	mov.w	sl, #1
c0de502e:	f04f 0800 	mov.w	r8, #0
c0de5032:	9004      	str	r0, [sp, #16]
c0de5034:	9708      	str	r7, [sp, #32]
c0de5036:	bf00      	nop
c0de5038:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de503a:	1c4c      	adds	r4, r1, #1
c0de503c:	9114      	str	r1, [sp, #80]	@ 0x50
c0de503e:	b928      	cbnz	r0, c0de504c <bagl_draw_circle_helper+0xac>
c0de5040:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de5042:	2800      	cmp	r0, #0
c0de5044:	d053      	beq.n	c0de50ee <bagl_draw_circle_helper+0x14e>
c0de5046:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5048:	bb18      	cbnz	r0, c0de5092 <bagl_draw_circle_helper+0xf2>
c0de504a:	e046      	b.n	c0de50da <bagl_draw_circle_helper+0x13a>
c0de504c:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de504e:	b3c8      	cbz	r0, c0de50c4 <bagl_draw_circle_helper+0x124>
c0de5050:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5052:	46a2      	mov	sl, r4
c0de5054:	4408      	add	r0, r1
c0de5056:	1c45      	adds	r5, r0, #1
c0de5058:	9807      	ldr	r0, [sp, #28]
c0de505a:	463c      	mov	r4, r7
c0de505c:	9f16      	ldr	r7, [sp, #88]	@ 0x58
c0de505e:	1a33      	subs	r3, r6, r0
c0de5060:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de5062:	f04f 0c01 	mov.w	ip, #1
c0de5066:	4639      	mov	r1, r7
c0de5068:	462a      	mov	r2, r5
c0de506a:	f8cd c000 	str.w	ip, [sp]
c0de506e:	f001 fcaf 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5072:	9905      	ldr	r1, [sp, #20]
c0de5074:	19f0      	adds	r0, r6, r7
c0de5076:	4627      	mov	r7, r4
c0de5078:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de507a:	4654      	mov	r4, sl
c0de507c:	f04f 0a01 	mov.w	sl, #1
c0de5080:	4401      	add	r1, r0
c0de5082:	4638      	mov	r0, r7
c0de5084:	462a      	mov	r2, r5
c0de5086:	f8cd a000 	str.w	sl, [sp]
c0de508a:	f001 fca1 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de508e:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de5090:	b368      	cbz	r0, c0de50ee <bagl_draw_circle_helper+0x14e>
c0de5092:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de5094:	42b0      	cmp	r0, r6
c0de5096:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5098:	eb06 0500 	add.w	r5, r6, r0
c0de509c:	d00a      	beq.n	c0de50b4 <bagl_draw_circle_helper+0x114>
c0de509e:	9803      	ldr	r0, [sp, #12]
c0de50a0:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de50a2:	462a      	mov	r2, r5
c0de50a4:	4408      	add	r0, r1
c0de50a6:	1c83      	adds	r3, r0, #2
c0de50a8:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de50aa:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de50ac:	f8cd a000 	str.w	sl, [sp]
c0de50b0:	f001 fc8e 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de50b4:	9806      	ldr	r0, [sp, #24]
c0de50b6:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de50b8:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de50ba:	4408      	add	r0, r1
c0de50bc:	1c81      	adds	r1, r0, #2
c0de50be:	4638      	mov	r0, r7
c0de50c0:	462a      	mov	r2, r5
c0de50c2:	e010      	b.n	c0de50e6 <bagl_draw_circle_helper+0x146>
c0de50c4:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de50c6:	4633      	mov	r3, r6
c0de50c8:	1842      	adds	r2, r0, r1
c0de50ca:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de50cc:	4638      	mov	r0, r7
c0de50ce:	f8cd a000 	str.w	sl, [sp]
c0de50d2:	f001 fc7d 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de50d6:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de50d8:	b148      	cbz	r0, c0de50ee <bagl_draw_circle_helper+0x14e>
c0de50da:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de50dc:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de50de:	4430      	add	r0, r6
c0de50e0:	1e42      	subs	r2, r0, #1
c0de50e2:	4638      	mov	r0, r7
c0de50e4:	4623      	mov	r3, r4
c0de50e6:	f8cd a000 	str.w	sl, [sp]
c0de50ea:	f001 fc71 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de50ee:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de50f0:	b930      	cbnz	r0, c0de5100 <bagl_draw_circle_helper+0x160>
c0de50f2:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de50f4:	2800      	cmp	r0, #0
c0de50f6:	d05d      	beq.n	c0de51b4 <bagl_draw_circle_helper+0x214>
c0de50f8:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de50fa:	bb30      	cbnz	r0, c0de514a <bagl_draw_circle_helper+0x1aa>
c0de50fc:	e038      	b.n	c0de5170 <bagl_draw_circle_helper+0x1d0>
c0de50fe:	bf00      	nop
c0de5100:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5102:	2800      	cmp	r0, #0
c0de5104:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5106:	eba0 0506 	sub.w	r5, r0, r6
c0de510a:	d025      	beq.n	c0de5158 <bagl_draw_circle_helper+0x1b8>
c0de510c:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de510e:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de5110:	f8dd a01c 	ldr.w	sl, [sp, #28]
c0de5114:	4408      	add	r0, r1
c0de5116:	1c47      	adds	r7, r0, #1
c0de5118:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de511a:	f04f 0c01 	mov.w	ip, #1
c0de511e:	eba6 030a 	sub.w	r3, r6, sl
c0de5122:	4629      	mov	r1, r5
c0de5124:	463a      	mov	r2, r7
c0de5126:	f8cd c000 	str.w	ip, [sp]
c0de512a:	f001 fc51 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de512e:	9808      	ldr	r0, [sp, #32]
c0de5130:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5132:	eba5 010a 	sub.w	r1, r5, sl
c0de5136:	f04f 0a01 	mov.w	sl, #1
c0de513a:	463a      	mov	r2, r7
c0de513c:	9f08      	ldr	r7, [sp, #32]
c0de513e:	f8cd a000 	str.w	sl, [sp]
c0de5142:	f001 fc45 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5146:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de5148:	b3a0      	cbz	r0, c0de51b4 <bagl_draw_circle_helper+0x214>
c0de514a:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de514c:	42b0      	cmp	r0, r6
c0de514e:	d118      	bne.n	c0de5182 <bagl_draw_circle_helper+0x1e2>
c0de5150:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5152:	1835      	adds	r5, r6, r0
c0de5154:	e024      	b.n	c0de51a0 <bagl_draw_circle_helper+0x200>
c0de5156:	bf00      	nop
c0de5158:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de515a:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de515c:	4633      	mov	r3, r6
c0de515e:	1842      	adds	r2, r0, r1
c0de5160:	4638      	mov	r0, r7
c0de5162:	4629      	mov	r1, r5
c0de5164:	f8cd a000 	str.w	sl, [sp]
c0de5168:	f001 fc32 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de516c:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de516e:	b308      	cbz	r0, c0de51b4 <bagl_draw_circle_helper+0x214>
c0de5170:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5172:	4623      	mov	r3, r4
c0de5174:	eb00 010b 	add.w	r1, r0, fp
c0de5178:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de517a:	4430      	add	r0, r6
c0de517c:	1e42      	subs	r2, r0, #1
c0de517e:	4638      	mov	r0, r7
c0de5180:	e014      	b.n	c0de51ac <bagl_draw_circle_helper+0x20c>
c0de5182:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5184:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de5186:	eb00 010b 	add.w	r1, r0, fp
c0de518a:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de518c:	f8cd a000 	str.w	sl, [sp]
c0de5190:	1835      	adds	r5, r6, r0
c0de5192:	9803      	ldr	r0, [sp, #12]
c0de5194:	4410      	add	r0, r2
c0de5196:	1c83      	adds	r3, r0, #2
c0de5198:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de519a:	462a      	mov	r2, r5
c0de519c:	f001 fc18 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de51a0:	9804      	ldr	r0, [sp, #16]
c0de51a2:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de51a4:	eb00 010b 	add.w	r1, r0, fp
c0de51a8:	4638      	mov	r0, r7
c0de51aa:	462a      	mov	r2, r5
c0de51ac:	f8cd a000 	str.w	sl, [sp]
c0de51b0:	f001 fc0e 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de51b4:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de51b6:	b928      	cbnz	r0, c0de51c4 <bagl_draw_circle_helper+0x224>
c0de51b8:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de51ba:	2800      	cmp	r0, #0
c0de51bc:	d055      	beq.n	c0de526a <bagl_draw_circle_helper+0x2ca>
c0de51be:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de51c0:	bb28      	cbnz	r0, c0de520e <bagl_draw_circle_helper+0x26e>
c0de51c2:	e049      	b.n	c0de5258 <bagl_draw_circle_helper+0x2b8>
c0de51c4:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de51c6:	f8dd a05c 	ldr.w	sl, [sp, #92]	@ 0x5c
c0de51ca:	44da      	add	sl, fp
c0de51cc:	b3c0      	cbz	r0, c0de5240 <bagl_draw_circle_helper+0x2a0>
c0de51ce:	9807      	ldr	r0, [sp, #28]
c0de51d0:	f8cd 8008 	str.w	r8, [sp, #8]
c0de51d4:	46a0      	mov	r8, r4
c0de51d6:	463c      	mov	r4, r7
c0de51d8:	9f16      	ldr	r7, [sp, #88]	@ 0x58
c0de51da:	1a33      	subs	r3, r6, r0
c0de51dc:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de51de:	4639      	mov	r1, r7
c0de51e0:	4652      	mov	r2, sl
c0de51e2:	2501      	movs	r5, #1
c0de51e4:	9500      	str	r5, [sp, #0]
c0de51e6:	f001 fbf3 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de51ea:	9905      	ldr	r1, [sp, #20]
c0de51ec:	19f0      	adds	r0, r6, r7
c0de51ee:	4627      	mov	r7, r4
c0de51f0:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de51f2:	4644      	mov	r4, r8
c0de51f4:	f8dd 8008 	ldr.w	r8, [sp, #8]
c0de51f8:	4401      	add	r1, r0
c0de51fa:	4638      	mov	r0, r7
c0de51fc:	4652      	mov	r2, sl
c0de51fe:	f04f 0a01 	mov.w	sl, #1
c0de5202:	f8cd a000 	str.w	sl, [sp]
c0de5206:	f001 fbe3 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de520a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de520c:	b368      	cbz	r0, c0de526a <bagl_draw_circle_helper+0x2ca>
c0de520e:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de5210:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de5212:	42b0      	cmp	r0, r6
c0de5214:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5216:	eba0 0506 	sub.w	r5, r0, r6
c0de521a:	d00a      	beq.n	c0de5232 <bagl_draw_circle_helper+0x292>
c0de521c:	9803      	ldr	r0, [sp, #12]
c0de521e:	462a      	mov	r2, r5
c0de5220:	4408      	add	r0, r1
c0de5222:	1c83      	adds	r3, r0, #2
c0de5224:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de5226:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de5228:	f8cd a000 	str.w	sl, [sp]
c0de522c:	f001 fbd0 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5230:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de5232:	9806      	ldr	r0, [sp, #24]
c0de5234:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5236:	4408      	add	r0, r1
c0de5238:	1c81      	adds	r1, r0, #2
c0de523a:	4638      	mov	r0, r7
c0de523c:	462a      	mov	r2, r5
c0de523e:	e010      	b.n	c0de5262 <bagl_draw_circle_helper+0x2c2>
c0de5240:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de5242:	4638      	mov	r0, r7
c0de5244:	4652      	mov	r2, sl
c0de5246:	4633      	mov	r3, r6
c0de5248:	f04f 0a01 	mov.w	sl, #1
c0de524c:	f8cd a000 	str.w	sl, [sp]
c0de5250:	f001 fbbe 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5254:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de5256:	b140      	cbz	r0, c0de526a <bagl_draw_circle_helper+0x2ca>
c0de5258:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de525a:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de525c:	1b82      	subs	r2, r0, r6
c0de525e:	4638      	mov	r0, r7
c0de5260:	4623      	mov	r3, r4
c0de5262:	f8cd a000 	str.w	sl, [sp]
c0de5266:	f001 fbb3 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de526a:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de526c:	b930      	cbnz	r0, c0de527c <bagl_draw_circle_helper+0x2dc>
c0de526e:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de5270:	2800      	cmp	r0, #0
c0de5272:	d057      	beq.n	c0de5324 <bagl_draw_circle_helper+0x384>
c0de5274:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5276:	bb18      	cbnz	r0, c0de52c0 <bagl_draw_circle_helper+0x320>
c0de5278:	e033      	b.n	c0de52e2 <bagl_draw_circle_helper+0x342>
c0de527a:	bf00      	nop
c0de527c:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de527e:	1b87      	subs	r7, r0, r6
c0de5280:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5282:	2800      	cmp	r0, #0
c0de5284:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5286:	eb00 050b 	add.w	r5, r0, fp
c0de528a:	d01f      	beq.n	c0de52cc <bagl_draw_circle_helper+0x32c>
c0de528c:	46a2      	mov	sl, r4
c0de528e:	9c07      	ldr	r4, [sp, #28]
c0de5290:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de5292:	f04f 0c01 	mov.w	ip, #1
c0de5296:	1b33      	subs	r3, r6, r4
c0de5298:	4639      	mov	r1, r7
c0de529a:	462a      	mov	r2, r5
c0de529c:	f8cd c000 	str.w	ip, [sp]
c0de52a0:	f001 fb96 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de52a4:	1b39      	subs	r1, r7, r4
c0de52a6:	9f08      	ldr	r7, [sp, #32]
c0de52a8:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de52aa:	4654      	mov	r4, sl
c0de52ac:	f04f 0a01 	mov.w	sl, #1
c0de52b0:	4638      	mov	r0, r7
c0de52b2:	462a      	mov	r2, r5
c0de52b4:	f8cd a000 	str.w	sl, [sp]
c0de52b8:	f001 fb8a 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de52bc:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de52be:	b388      	cbz	r0, c0de5324 <bagl_draw_circle_helper+0x384>
c0de52c0:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de52c2:	42b0      	cmp	r0, r6
c0de52c4:	d115      	bne.n	c0de52f2 <bagl_draw_circle_helper+0x352>
c0de52c6:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de52c8:	1b85      	subs	r5, r0, r6
c0de52ca:	e021      	b.n	c0de5310 <bagl_draw_circle_helper+0x370>
c0de52cc:	9808      	ldr	r0, [sp, #32]
c0de52ce:	4639      	mov	r1, r7
c0de52d0:	462a      	mov	r2, r5
c0de52d2:	4633      	mov	r3, r6
c0de52d4:	4607      	mov	r7, r0
c0de52d6:	f8cd a000 	str.w	sl, [sp]
c0de52da:	f001 fb79 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de52de:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de52e0:	b300      	cbz	r0, c0de5324 <bagl_draw_circle_helper+0x384>
c0de52e2:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de52e4:	4623      	mov	r3, r4
c0de52e6:	eb00 010b 	add.w	r1, r0, fp
c0de52ea:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de52ec:	1b82      	subs	r2, r0, r6
c0de52ee:	4638      	mov	r0, r7
c0de52f0:	e014      	b.n	c0de531c <bagl_draw_circle_helper+0x37c>
c0de52f2:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de52f4:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de52f6:	eb00 010b 	add.w	r1, r0, fp
c0de52fa:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de52fc:	f8cd a000 	str.w	sl, [sp]
c0de5300:	1b85      	subs	r5, r0, r6
c0de5302:	9803      	ldr	r0, [sp, #12]
c0de5304:	4410      	add	r0, r2
c0de5306:	1c83      	adds	r3, r0, #2
c0de5308:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de530a:	462a      	mov	r2, r5
c0de530c:	f001 fb60 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5310:	9804      	ldr	r0, [sp, #16]
c0de5312:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5314:	eb00 010b 	add.w	r1, r0, fp
c0de5318:	4638      	mov	r0, r7
c0de531a:	462a      	mov	r2, r5
c0de531c:	f8cd a000 	str.w	sl, [sp]
c0de5320:	f001 fb56 	bl	c0de69d0 <bagl_hal_draw_rect>
c0de5324:	f108 0801 	add.w	r8, r8, #1
c0de5328:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de532a:	1e70      	subs	r0, r6, #1
c0de532c:	4641      	mov	r1, r8
c0de532e:	2a01      	cmp	r2, #1
c0de5330:	bfac      	ite	ge
c0de5332:	1a09      	subge	r1, r1, r0
c0de5334:	4630      	movlt	r0, r6
c0de5336:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de533a:	3101      	adds	r1, #1
c0de533c:	9111      	str	r1, [sp, #68]	@ 0x44
c0de533e:	f1ab 0b01 	sub.w	fp, fp, #1
c0de5342:	4284      	cmp	r4, r0
c0de5344:	4621      	mov	r1, r4
c0de5346:	9613      	str	r6, [sp, #76]	@ 0x4c
c0de5348:	4606      	mov	r6, r0
c0de534a:	f6ff ae75 	blt.w	c0de5038 <bagl_draw_circle_helper+0x98>
c0de534e:	b018      	add	sp, #96	@ 0x60
c0de5350:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5354 <bagl_draw_glyph>:
c0de5354:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5358:	b088      	sub	sp, #32
c0de535a:	460c      	mov	r4, r1
c0de535c:	6889      	ldr	r1, [r1, #8]
c0de535e:	2902      	cmp	r1, #2
c0de5360:	d826      	bhi.n	c0de53b0 <bagl_draw_glyph+0x5c>
c0de5362:	f9b0 2002 	ldrsh.w	r2, [r0, #2]
c0de5366:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de536a:	9207      	str	r2, [sp, #28]
c0de536c:	9006      	str	r0, [sp, #24]
c0de536e:	68e0      	ldr	r0, [r4, #12]
c0de5370:	2201      	movs	r2, #1
c0de5372:	e9d4 b700 	ldrd	fp, r7, [r4]
c0de5376:	fa02 f801 	lsl.w	r8, r2, r1
c0de537a:	f001 fa09 	bl	c0de6790 <pic>
c0de537e:	6921      	ldr	r1, [r4, #16]
c0de5380:	f8d4 a008 	ldr.w	sl, [r4, #8]
c0de5384:	4605      	mov	r5, r0
c0de5386:	4608      	mov	r0, r1
c0de5388:	f001 fa02 	bl	c0de6790 <pic>
c0de538c:	4606      	mov	r6, r0
c0de538e:	68a1      	ldr	r1, [r4, #8]
c0de5390:	e9d4 0200 	ldrd	r0, r2, [r4]
c0de5394:	463b      	mov	r3, r7
c0de5396:	4348      	muls	r0, r1
c0de5398:	4350      	muls	r0, r2
c0de539a:	9004      	str	r0, [sp, #16]
c0de539c:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de53a0:	465a      	mov	r2, fp
c0de53a2:	e9cd 8500 	strd	r8, r5, [sp]
c0de53a6:	f8cd a008 	str.w	sl, [sp, #8]
c0de53aa:	9603      	str	r6, [sp, #12]
c0de53ac:	f001 faf7 	bl	c0de699e <bagl_hal_draw_bitmap_within_rect>
c0de53b0:	b008      	add	sp, #32
c0de53b2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de53b6 <ux_flow_is_first>:
c0de53b6:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de53ba:	f2c0 0100 	movt	r1, #0
c0de53be:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de53c2:	2801      	cmp	r0, #1
c0de53c4:	d823      	bhi.n	c0de540e <ux_flow_is_first+0x58>
c0de53c6:	3801      	subs	r0, #1
c0de53c8:	eb09 0201 	add.w	r2, r9, r1
c0de53cc:	eb00 0340 	add.w	r3, r0, r0, lsl #1
c0de53d0:	eb02 0083 	add.w	r0, r2, r3, lsl #2
c0de53d4:	8c80      	ldrh	r0, [r0, #36]	@ 0x24
c0de53d6:	b1d0      	cbz	r0, c0de540e <ux_flow_is_first+0x58>
c0de53d8:	eb09 0201 	add.w	r2, r9, r1
c0de53dc:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de53e0:	69d2      	ldr	r2, [r2, #28]
c0de53e2:	b1a2      	cbz	r2, c0de540e <ux_flow_is_first+0x58>
c0de53e4:	4449      	add	r1, r9
c0de53e6:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de53ea:	8c09      	ldrh	r1, [r1, #32]
c0de53ec:	b929      	cbnz	r1, c0de53fa <ux_flow_is_first+0x44>
c0de53ee:	eb02 0380 	add.w	r3, r2, r0, lsl #2
c0de53f2:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de53f6:	3303      	adds	r3, #3
c0de53f8:	d109      	bne.n	c0de540e <ux_flow_is_first+0x58>
c0de53fa:	4281      	cmp	r1, r0
c0de53fc:	d205      	bcs.n	c0de540a <ux_flow_is_first+0x54>
c0de53fe:	eb02 0081 	add.w	r0, r2, r1, lsl #2
c0de5402:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de5406:	3002      	adds	r0, #2
c0de5408:	d001      	beq.n	c0de540e <ux_flow_is_first+0x58>
c0de540a:	2000      	movs	r0, #0
c0de540c:	4770      	bx	lr
c0de540e:	2001      	movs	r0, #1
c0de5410:	4770      	bx	lr

c0de5412 <ux_flow_is_last>:
c0de5412:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5416:	f2c0 0000 	movt	r0, #0
c0de541a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de541e:	2901      	cmp	r1, #1
c0de5420:	d81f      	bhi.n	c0de5462 <ux_flow_is_last+0x50>
c0de5422:	3901      	subs	r1, #1
c0de5424:	eb09 0200 	add.w	r2, r9, r0
c0de5428:	eb01 0341 	add.w	r3, r1, r1, lsl #1
c0de542c:	eb02 0183 	add.w	r1, r2, r3, lsl #2
c0de5430:	8c89      	ldrh	r1, [r1, #36]	@ 0x24
c0de5432:	b1b1      	cbz	r1, c0de5462 <ux_flow_is_last+0x50>
c0de5434:	eb09 0200 	add.w	r2, r9, r0
c0de5438:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de543c:	69d2      	ldr	r2, [r2, #28]
c0de543e:	b182      	cbz	r2, c0de5462 <ux_flow_is_last+0x50>
c0de5440:	4448      	add	r0, r9
c0de5442:	eb00 0083 	add.w	r0, r0, r3, lsl #2
c0de5446:	8c00      	ldrh	r0, [r0, #32]
c0de5448:	1e4b      	subs	r3, r1, #1
c0de544a:	4283      	cmp	r3, r0
c0de544c:	d909      	bls.n	c0de5462 <ux_flow_is_last+0x50>
c0de544e:	3902      	subs	r1, #2
c0de5450:	4281      	cmp	r1, r0
c0de5452:	d904      	bls.n	c0de545e <ux_flow_is_last+0x4c>
c0de5454:	eb02 0080 	add.w	r0, r2, r0, lsl #2
c0de5458:	6840      	ldr	r0, [r0, #4]
c0de545a:	3002      	adds	r0, #2
c0de545c:	d001      	beq.n	c0de5462 <ux_flow_is_last+0x50>
c0de545e:	2000      	movs	r0, #0
c0de5460:	4770      	bx	lr
c0de5462:	2001      	movs	r0, #1
c0de5464:	4770      	bx	lr

c0de5466 <ux_flow_direction>:
c0de5466:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de546a:	f2c0 0000 	movt	r0, #0
c0de546e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5472:	b169      	cbz	r1, c0de5490 <ux_flow_direction+0x2a>
c0de5474:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5478:	4448      	add	r0, r9
c0de547a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de547e:	8a81      	ldrh	r1, [r0, #20]
c0de5480:	8ac0      	ldrh	r0, [r0, #22]
c0de5482:	4281      	cmp	r1, r0
c0de5484:	d901      	bls.n	c0de548a <ux_flow_direction+0x24>
c0de5486:	2001      	movs	r0, #1
c0de5488:	e003      	b.n	c0de5492 <ux_flow_direction+0x2c>
c0de548a:	d201      	bcs.n	c0de5490 <ux_flow_direction+0x2a>
c0de548c:	20ff      	movs	r0, #255	@ 0xff
c0de548e:	e000      	b.n	c0de5492 <ux_flow_direction+0x2c>
c0de5490:	2000      	movs	r0, #0
c0de5492:	b240      	sxtb	r0, r0
c0de5494:	4770      	bx	lr

c0de5496 <ux_flow_get_current>:
c0de5496:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de549a:	f2c0 0000 	movt	r0, #0
c0de549e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de54a2:	2901      	cmp	r1, #1
c0de54a4:	d81b      	bhi.n	c0de54de <ux_flow_get_current+0x48>
c0de54a6:	3901      	subs	r1, #1
c0de54a8:	eb09 0200 	add.w	r2, r9, r0
c0de54ac:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de54b0:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de54b4:	8c92      	ldrh	r2, [r2, #36]	@ 0x24
c0de54b6:	b192      	cbz	r2, c0de54de <ux_flow_get_current+0x48>
c0de54b8:	eb09 0300 	add.w	r3, r9, r0
c0de54bc:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de54c0:	69db      	ldr	r3, [r3, #28]
c0de54c2:	b163      	cbz	r3, c0de54de <ux_flow_get_current+0x48>
c0de54c4:	4448      	add	r0, r9
c0de54c6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de54ca:	8c00      	ldrh	r0, [r0, #32]
c0de54cc:	4290      	cmp	r0, r2
c0de54ce:	d206      	bcs.n	c0de54de <ux_flow_get_current+0x48>
c0de54d0:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
c0de54d4:	f110 0f04 	cmn.w	r0, #4
c0de54d8:	bf98      	it	ls
c0de54da:	f001 b959 	bls.w	c0de6790 <pic>
c0de54de:	2000      	movs	r0, #0
c0de54e0:	4770      	bx	lr

c0de54e2 <ux_flow_next_internal>:
c0de54e2:	b570      	push	{r4, r5, r6, lr}
c0de54e4:	f246 2280 	movw	r2, #25216	@ 0x6280
c0de54e8:	f2c0 0200 	movt	r2, #0
c0de54ec:	f819 1002 	ldrb.w	r1, [r9, r2]
c0de54f0:	f1b1 0e01 	subs.w	lr, r1, #1
c0de54f4:	d83a      	bhi.n	c0de556c <ux_flow_next_internal+0x8a>
c0de54f6:	eb09 0102 	add.w	r1, r9, r2
c0de54fa:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
c0de54fe:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5502:	8c89      	ldrh	r1, [r1, #36]	@ 0x24
c0de5504:	b391      	cbz	r1, c0de556c <ux_flow_next_internal+0x8a>
c0de5506:	eb09 0502 	add.w	r5, r9, r2
c0de550a:	eb05 0583 	add.w	r5, r5, r3, lsl #2
c0de550e:	69ed      	ldr	r5, [r5, #28]
c0de5510:	b365      	cbz	r5, c0de556c <ux_flow_next_internal+0x8a>
c0de5512:	2902      	cmp	r1, #2
c0de5514:	d32a      	bcc.n	c0de556c <ux_flow_next_internal+0x8a>
c0de5516:	eb09 0402 	add.w	r4, r9, r2
c0de551a:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
c0de551e:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de5522:	1e4e      	subs	r6, r1, #1
c0de5524:	42a6      	cmp	r6, r4
c0de5526:	d921      	bls.n	c0de556c <ux_flow_next_internal+0x8a>
c0de5528:	3902      	subs	r1, #2
c0de552a:	42a1      	cmp	r1, r4
c0de552c:	d310      	bcc.n	c0de5550 <ux_flow_next_internal+0x6e>
c0de552e:	eb05 0184 	add.w	r1, r5, r4, lsl #2
c0de5532:	6849      	ldr	r1, [r1, #4]
c0de5534:	1c8d      	adds	r5, r1, #2
c0de5536:	bf08      	it	eq
c0de5538:	bd70      	popeq	{r4, r5, r6, pc}
c0de553a:	3103      	adds	r1, #3
c0de553c:	d108      	bne.n	c0de5550 <ux_flow_next_internal+0x6e>
c0de553e:	eb09 0102 	add.w	r1, r9, r2
c0de5542:	2000      	movs	r0, #0
c0de5544:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5548:	f8ac 0000 	strh.w	r0, [ip]
c0de554c:	8448      	strh	r0, [r1, #34]	@ 0x22
c0de554e:	e008      	b.n	c0de5562 <ux_flow_next_internal+0x80>
c0de5550:	eb09 0102 	add.w	r1, r9, r2
c0de5554:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5558:	844c      	strh	r4, [r1, #34]	@ 0x22
c0de555a:	1c61      	adds	r1, r4, #1
c0de555c:	f8ac 1000 	strh.w	r1, [ip]
c0de5560:	b120      	cbz	r0, c0de556c <ux_flow_next_internal+0x8a>
c0de5562:	4670      	mov	r0, lr
c0de5564:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5568:	f000 b849 	b.w	c0de55fe <ux_flow_engine_init_step>
c0de556c:	bd70      	pop	{r4, r5, r6, pc}

c0de556e <ux_flow_next>:
c0de556e:	2001      	movs	r0, #1
c0de5570:	f7ff bfb7 	b.w	c0de54e2 <ux_flow_next_internal>

c0de5574 <ux_flow_prev>:
c0de5574:	b510      	push	{r4, lr}
c0de5576:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de557a:	f2c0 0100 	movt	r1, #0
c0de557e:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de5582:	3801      	subs	r0, #1
c0de5584:	d812      	bhi.n	c0de55ac <ux_flow_prev+0x38>
c0de5586:	eb09 0301 	add.w	r3, r9, r1
c0de558a:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de558e:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de5592:	8c9b      	ldrh	r3, [r3, #36]	@ 0x24
c0de5594:	b153      	cbz	r3, c0de55ac <ux_flow_prev+0x38>
c0de5596:	eb09 0401 	add.w	r4, r9, r1
c0de559a:	eb04 0482 	add.w	r4, r4, r2, lsl #2
c0de559e:	f8d4 e01c 	ldr.w	lr, [r4, #28]
c0de55a2:	f1be 0f00 	cmp.w	lr, #0
c0de55a6:	d001      	beq.n	c0de55ac <ux_flow_prev+0x38>
c0de55a8:	2b02      	cmp	r3, #2
c0de55aa:	d200      	bcs.n	c0de55ae <ux_flow_prev+0x3a>
c0de55ac:	bd10      	pop	{r4, pc}
c0de55ae:	eb09 0401 	add.w	r4, r9, r1
c0de55b2:	eb04 0c82 	add.w	ip, r4, r2, lsl #2
c0de55b6:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de55ba:	b18c      	cbz	r4, c0de55e0 <ux_flow_prev+0x6c>
c0de55bc:	eb0e 0384 	add.w	r3, lr, r4, lsl #2
c0de55c0:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de55c4:	3302      	adds	r3, #2
c0de55c6:	bf08      	it	eq
c0de55c8:	bd10      	popeq	{r4, pc}
c0de55ca:	4449      	add	r1, r9
c0de55cc:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de55d0:	844c      	strh	r4, [r1, #34]	@ 0x22
c0de55d2:	1e61      	subs	r1, r4, #1
c0de55d4:	f8ac 1000 	strh.w	r1, [ip]
c0de55d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de55dc:	f000 b80f 	b.w	c0de55fe <ux_flow_engine_init_step>
c0de55e0:	eb0e 0483 	add.w	r4, lr, r3, lsl #2
c0de55e4:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de55e8:	3403      	adds	r4, #3
c0de55ea:	d1df      	bne.n	c0de55ac <ux_flow_prev+0x38>
c0de55ec:	4449      	add	r1, r9
c0de55ee:	1e9c      	subs	r4, r3, #2
c0de55f0:	3b01      	subs	r3, #1
c0de55f2:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de55f6:	f8ac 4000 	strh.w	r4, [ip]
c0de55fa:	844b      	strh	r3, [r1, #34]	@ 0x22
c0de55fc:	e7ec      	b.n	c0de55d8 <ux_flow_prev+0x64>

c0de55fe <ux_flow_engine_init_step>:
c0de55fe:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5600:	b081      	sub	sp, #4
c0de5602:	4604      	mov	r4, r0
c0de5604:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5608:	f2c0 0000 	movt	r0, #0
c0de560c:	4448      	add	r0, r9
c0de560e:	eb04 0144 	add.w	r1, r4, r4, lsl #1
c0de5612:	eb00 0581 	add.w	r5, r0, r1, lsl #2
c0de5616:	f855 0f1c 	ldr.w	r0, [r5, #28]!
c0de561a:	462e      	mov	r6, r5
c0de561c:	f836 1f04 	ldrh.w	r1, [r6, #4]!
c0de5620:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de5624:	f110 0f04 	cmn.w	r0, #4
c0de5628:	bf84      	itt	hi
c0de562a:	b001      	addhi	sp, #4
c0de562c:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de562e:	f001 f8af 	bl	c0de6790 <pic>
c0de5632:	6829      	ldr	r1, [r5, #0]
c0de5634:	8832      	ldrh	r2, [r6, #0]
c0de5636:	6807      	ldr	r7, [r0, #0]
c0de5638:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de563c:	f001 f8a8 	bl	c0de6790 <pic>
c0de5640:	b147      	cbz	r7, c0de5654 <ux_flow_engine_init_step+0x56>
c0de5642:	6800      	ldr	r0, [r0, #0]
c0de5644:	f001 f8a4 	bl	c0de6790 <pic>
c0de5648:	4601      	mov	r1, r0
c0de564a:	4620      	mov	r0, r4
c0de564c:	b001      	add	sp, #4
c0de564e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5652:	4708      	bx	r1
c0de5654:	6880      	ldr	r0, [r0, #8]
c0de5656:	f001 f89b 	bl	c0de6790 <pic>
c0de565a:	6829      	ldr	r1, [r5, #0]
c0de565c:	8832      	ldrh	r2, [r6, #0]
c0de565e:	4605      	mov	r5, r0
c0de5660:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
c0de5664:	4608      	mov	r0, r1
c0de5666:	f001 f893 	bl	c0de6790 <pic>
c0de566a:	6840      	ldr	r0, [r0, #4]
c0de566c:	f001 f890 	bl	c0de6790 <pic>
c0de5670:	4602      	mov	r2, r0
c0de5672:	4620      	mov	r0, r4
c0de5674:	4629      	mov	r1, r5
c0de5676:	b001      	add	sp, #4
c0de5678:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de567c:	f000 b874 	b.w	c0de5768 <ux_flow_init>

c0de5680 <ux_flow_validate>:
c0de5680:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5684:	b081      	sub	sp, #4
c0de5686:	f246 2580 	movw	r5, #25216	@ 0x6280
c0de568a:	f2c0 0500 	movt	r5, #0
c0de568e:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de5692:	f1b0 0a01 	subs.w	sl, r0, #1
c0de5696:	d856      	bhi.n	c0de5746 <ux_flow_validate+0xc6>
c0de5698:	eb09 0005 	add.w	r0, r9, r5
c0de569c:	eb0a 064a 	add.w	r6, sl, sl, lsl #1
c0de56a0:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de56a4:	f834 0f24 	ldrh.w	r0, [r4, #36]!
c0de56a8:	2800      	cmp	r0, #0
c0de56aa:	d04c      	beq.n	c0de5746 <ux_flow_validate+0xc6>
c0de56ac:	eb09 0105 	add.w	r1, r9, r5
c0de56b0:	eb01 0786 	add.w	r7, r1, r6, lsl #2
c0de56b4:	f857 1f1c 	ldr.w	r1, [r7, #28]!
c0de56b8:	2900      	cmp	r1, #0
c0de56ba:	d044      	beq.n	c0de5746 <ux_flow_validate+0xc6>
c0de56bc:	eb09 0205 	add.w	r2, r9, r5
c0de56c0:	eb02 0886 	add.w	r8, r2, r6, lsl #2
c0de56c4:	f838 2f20 	ldrh.w	r2, [r8, #32]!
c0de56c8:	4282      	cmp	r2, r0
c0de56ca:	d23c      	bcs.n	c0de5746 <ux_flow_validate+0xc6>
c0de56cc:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de56d0:	f001 f85e 	bl	c0de6790 <pic>
c0de56d4:	6880      	ldr	r0, [r0, #8]
c0de56d6:	b188      	cbz	r0, c0de56fc <ux_flow_validate+0x7c>
c0de56d8:	6838      	ldr	r0, [r7, #0]
c0de56da:	f8b8 1000 	ldrh.w	r1, [r8]
c0de56de:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de56e2:	f001 f855 	bl	c0de6790 <pic>
c0de56e6:	6880      	ldr	r0, [r0, #8]
c0de56e8:	f001 f852 	bl	c0de6790 <pic>
c0de56ec:	4601      	mov	r1, r0
c0de56ee:	4650      	mov	r0, sl
c0de56f0:	2200      	movs	r2, #0
c0de56f2:	b001      	add	sp, #4
c0de56f4:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de56f8:	f000 b836 	b.w	c0de5768 <ux_flow_init>
c0de56fc:	8820      	ldrh	r0, [r4, #0]
c0de56fe:	b310      	cbz	r0, c0de5746 <ux_flow_validate+0xc6>
c0de5700:	f8b8 2000 	ldrh.w	r2, [r8]
c0de5704:	3802      	subs	r0, #2
c0de5706:	4290      	cmp	r0, r2
c0de5708:	db1d      	blt.n	c0de5746 <ux_flow_validate+0xc6>
c0de570a:	6839      	ldr	r1, [r7, #0]
c0de570c:	eb01 0382 	add.w	r3, r1, r2, lsl #2
c0de5710:	685b      	ldr	r3, [r3, #4]
c0de5712:	1cdf      	adds	r7, r3, #3
c0de5714:	d01a      	beq.n	c0de574c <ux_flow_validate+0xcc>
c0de5716:	3302      	adds	r3, #2
c0de5718:	d115      	bne.n	c0de5746 <ux_flow_validate+0xc6>
c0de571a:	4613      	mov	r3, r2
c0de571c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
c0de5720:	6852      	ldr	r2, [r2, #4]
c0de5722:	3202      	adds	r2, #2
c0de5724:	d105      	bne.n	c0de5732 <ux_flow_validate+0xb2>
c0de5726:	3301      	adds	r3, #1
c0de5728:	b29a      	uxth	r2, r3
c0de572a:	4290      	cmp	r0, r2
c0de572c:	f8a8 3000 	strh.w	r3, [r8]
c0de5730:	daf4      	bge.n	c0de571c <ux_flow_validate+0x9c>
c0de5732:	eb09 0005 	add.w	r0, r9, r5
c0de5736:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de573a:	8443      	strh	r3, [r0, #34]	@ 0x22
c0de573c:	1c59      	adds	r1, r3, #1
c0de573e:	4650      	mov	r0, sl
c0de5740:	f8a8 1000 	strh.w	r1, [r8]
c0de5744:	e00b      	b.n	c0de575e <ux_flow_validate+0xde>
c0de5746:	b001      	add	sp, #4
c0de5748:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de574c:	eb09 0005 	add.w	r0, r9, r5
c0de5750:	2100      	movs	r1, #0
c0de5752:	eb00 0286 	add.w	r2, r0, r6, lsl #2
c0de5756:	f8a8 1000 	strh.w	r1, [r8]
c0de575a:	4650      	mov	r0, sl
c0de575c:	8451      	strh	r1, [r2, #34]	@ 0x22
c0de575e:	b001      	add	sp, #4
c0de5760:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5764:	f7ff bf4b 	b.w	c0de55fe <ux_flow_engine_init_step>

c0de5768 <ux_flow_init>:
c0de5768:	b570      	push	{r4, r5, r6, lr}
c0de576a:	b100      	cbz	r0, c0de576e <ux_flow_init+0x6>
c0de576c:	bd70      	pop	{r4, r5, r6, pc}
c0de576e:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5772:	f2c0 0600 	movt	r6, #0
c0de5776:	eb09 0006 	add.w	r0, r9, r6
c0de577a:	460d      	mov	r5, r1
c0de577c:	3004      	adds	r0, #4
c0de577e:	2122      	movs	r1, #34	@ 0x22
c0de5780:	4614      	mov	r4, r2
c0de5782:	f001 f935 	bl	c0de69f0 <__aeabi_memclr>
c0de5786:	2d00      	cmp	r5, #0
c0de5788:	d0f0      	beq.n	c0de576c <ux_flow_init+0x4>
c0de578a:	4628      	mov	r0, r5
c0de578c:	f001 f800 	bl	c0de6790 <pic>
c0de5790:	eb09 0206 	add.w	r2, r9, r6
c0de5794:	8c91      	ldrh	r1, [r2, #36]	@ 0x24
c0de5796:	61d0      	str	r0, [r2, #28]
c0de5798:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de579c:	3201      	adds	r2, #1
c0de579e:	d008      	beq.n	c0de57b2 <ux_flow_init+0x4a>
c0de57a0:	3101      	adds	r1, #1
c0de57a2:	b28a      	uxth	r2, r1
c0de57a4:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
c0de57a8:	3201      	adds	r2, #1
c0de57aa:	d1f9      	bne.n	c0de57a0 <ux_flow_init+0x38>
c0de57ac:	eb09 0006 	add.w	r0, r9, r6
c0de57b0:	8481      	strh	r1, [r0, #36]	@ 0x24
c0de57b2:	b1e4      	cbz	r4, c0de57ee <ux_flow_init+0x86>
c0de57b4:	4620      	mov	r0, r4
c0de57b6:	f000 ffeb 	bl	c0de6790 <pic>
c0de57ba:	eb09 0106 	add.w	r1, r9, r6
c0de57be:	69ca      	ldr	r2, [r1, #28]
c0de57c0:	8c09      	ldrh	r1, [r1, #32]
c0de57c2:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de57c6:	1c4a      	adds	r2, r1, #1
c0de57c8:	d011      	beq.n	c0de57ee <ux_flow_init+0x86>
c0de57ca:	4604      	mov	r4, r0
c0de57cc:	4608      	mov	r0, r1
c0de57ce:	f000 ffdf 	bl	c0de6790 <pic>
c0de57d2:	42a0      	cmp	r0, r4
c0de57d4:	d00b      	beq.n	c0de57ee <ux_flow_init+0x86>
c0de57d6:	eb09 0006 	add.w	r0, r9, r6
c0de57da:	8c02      	ldrh	r2, [r0, #32]
c0de57dc:	69c1      	ldr	r1, [r0, #28]
c0de57de:	1c53      	adds	r3, r2, #1
c0de57e0:	b29d      	uxth	r5, r3
c0de57e2:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
c0de57e6:	8442      	strh	r2, [r0, #34]	@ 0x22
c0de57e8:	1c4a      	adds	r2, r1, #1
c0de57ea:	8403      	strh	r3, [r0, #32]
c0de57ec:	d1ee      	bne.n	c0de57cc <ux_flow_init+0x64>
c0de57ee:	2000      	movs	r0, #0
c0de57f0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de57f4:	f7ff bf03 	b.w	c0de55fe <ux_flow_engine_init_step>

c0de57f8 <ux_flow_button_callback>:
c0de57f8:	b580      	push	{r7, lr}
c0de57fa:	2103      	movs	r1, #3
c0de57fc:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5800:	4288      	cmp	r0, r1
c0de5802:	d00c      	beq.n	c0de581e <ux_flow_button_callback+0x26>
c0de5804:	2102      	movs	r1, #2
c0de5806:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de580a:	4288      	cmp	r0, r1
c0de580c:	d00a      	beq.n	c0de5824 <ux_flow_button_callback+0x2c>
c0de580e:	2101      	movs	r1, #1
c0de5810:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5814:	4288      	cmp	r0, r1
c0de5816:	d108      	bne.n	c0de582a <ux_flow_button_callback+0x32>
c0de5818:	f7ff feac 	bl	c0de5574 <ux_flow_prev>
c0de581c:	e005      	b.n	c0de582a <ux_flow_button_callback+0x32>
c0de581e:	f7ff ff2f 	bl	c0de5680 <ux_flow_validate>
c0de5822:	e002      	b.n	c0de582a <ux_flow_button_callback+0x32>
c0de5824:	2001      	movs	r0, #1
c0de5826:	f7ff fe5c 	bl	c0de54e2 <ux_flow_next_internal>
c0de582a:	2000      	movs	r0, #0
c0de582c:	bd80      	pop	{r7, pc}

c0de582e <ux_stack_get_step_params>:
c0de582e:	b510      	push	{r4, lr}
c0de5830:	b108      	cbz	r0, c0de5836 <ux_stack_get_step_params+0x8>
c0de5832:	2000      	movs	r0, #0
c0de5834:	bd10      	pop	{r4, pc}
c0de5836:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de583a:	f2c0 0000 	movt	r0, #0
c0de583e:	eb09 0100 	add.w	r1, r9, r0
c0de5842:	8c8a      	ldrh	r2, [r1, #36]	@ 0x24
c0de5844:	2a00      	cmp	r2, #0
c0de5846:	d0f4      	beq.n	c0de5832 <ux_stack_get_step_params+0x4>
c0de5848:	8c09      	ldrh	r1, [r1, #32]
c0de584a:	4291      	cmp	r1, r2
c0de584c:	d2f1      	bcs.n	c0de5832 <ux_stack_get_step_params+0x4>
c0de584e:	eb09 0400 	add.w	r4, r9, r0
c0de5852:	69e0      	ldr	r0, [r4, #28]
c0de5854:	f000 ff9c 	bl	c0de6790 <pic>
c0de5858:	8c21      	ldrh	r1, [r4, #32]
c0de585a:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de585e:	f000 ff97 	bl	c0de6790 <pic>
c0de5862:	6840      	ldr	r0, [r0, #4]
c0de5864:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5868:	f000 bf92 	b.w	c0de6790 <pic>

c0de586c <ux_stack_get_current_step_params>:
c0de586c:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5870:	f2c0 0000 	movt	r0, #0
c0de5874:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5878:	3801      	subs	r0, #1
c0de587a:	f7ff bfd8 	b.w	c0de582e <ux_stack_get_step_params>

c0de587e <ux_flow_relayout>:
c0de587e:	b580      	push	{r7, lr}
c0de5880:	f7ff fe09 	bl	c0de5496 <ux_flow_get_current>
c0de5884:	b150      	cbz	r0, c0de589c <ux_flow_relayout+0x1e>
c0de5886:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de588a:	f2c0 0000 	movt	r0, #0
c0de588e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5892:	3801      	subs	r0, #1
c0de5894:	f7ff feb3 	bl	c0de55fe <ux_flow_engine_init_step>
c0de5898:	2001      	movs	r0, #1
c0de589a:	bd80      	pop	{r7, pc}
c0de589c:	2000      	movs	r0, #0
c0de589e:	bd80      	pop	{r7, pc}

c0de58a0 <ux_layout_bb_init_common>:
c0de58a0:	b510      	push	{r4, lr}
c0de58a2:	4604      	mov	r4, r0
c0de58a4:	f000 fc1f 	bl	c0de60e6 <ux_stack_init>
c0de58a8:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de58ac:	f2c0 0000 	movt	r0, #0
c0de58b0:	4448      	add	r0, r9
c0de58b2:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de58b6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de58ba:	f243 416e 	movw	r1, #13422	@ 0x346e
c0de58be:	f2c0 0100 	movt	r1, #0
c0de58c2:	4479      	add	r1, pc
c0de58c4:	f8c0 10cc 	str.w	r1, [r0, #204]	@ 0xcc
c0de58c8:	2105      	movs	r1, #5
c0de58ca:	f880 10d0 	strb.w	r1, [r0, #208]	@ 0xd0
c0de58ce:	2101      	movs	r1, #1
c0de58d0:	f880 10c9 	strb.w	r1, [r0, #201]	@ 0xc9
c0de58d4:	f64f 7119 	movw	r1, #65305	@ 0xff19
c0de58d8:	f6cf 71ff 	movt	r1, #65535	@ 0xffff
c0de58dc:	4479      	add	r1, pc
c0de58de:	f8c0 10dc 	str.w	r1, [r0, #220]	@ 0xdc
c0de58e2:	bd10      	pop	{r4, pc}

c0de58e4 <ux_layout_bn_prepro>:
c0de58e4:	b580      	push	{r7, lr}
c0de58e6:	f000 fb6a 	bl	c0de5fbe <ux_layout_strings_prepro>
c0de58ea:	b170      	cbz	r0, c0de590a <ux_layout_bn_prepro+0x26>
c0de58ec:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de58f0:	f2c0 0100 	movt	r1, #0
c0de58f4:	eb09 0201 	add.w	r2, r9, r1
c0de58f8:	f892 20a9 	ldrb.w	r2, [r2, #169]	@ 0xa9
c0de58fc:	2a11      	cmp	r2, #17
c0de58fe:	bf02      	ittt	eq
c0de5900:	4449      	addeq	r1, r9
c0de5902:	f248 020a 	movweq	r2, #32778	@ 0x800a
c0de5906:	f8a1 20c0 	strheq.w	r2, [r1, #192]	@ 0xc0
c0de590a:	bd80      	pop	{r7, pc}

c0de590c <ux_layout_bn_init>:
c0de590c:	b510      	push	{r4, lr}
c0de590e:	4604      	mov	r4, r0
c0de5910:	f7ff ffc6 	bl	c0de58a0 <ux_layout_bb_init_common>
c0de5914:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5918:	f2c0 0000 	movt	r0, #0
c0de591c:	f64f 72b3 	movw	r2, #65459	@ 0xffb3
c0de5920:	4448      	add	r0, r9
c0de5922:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5926:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de592a:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de592e:	447a      	add	r2, pc
c0de5930:	4620      	mov	r0, r4
c0de5932:	f8c1 20d8 	str.w	r2, [r1, #216]	@ 0xd8
c0de5936:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de593a:	f000 bbaa 	b.w	c0de6092 <ux_stack_display>

c0de593e <ux_layout_paging_prepro_common>:
c0de593e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5942:	b082      	sub	sp, #8
c0de5944:	f246 2880 	movw	r8, #25216	@ 0x6280
c0de5948:	f2c0 0800 	movt	r8, #0
c0de594c:	4606      	mov	r6, r0
c0de594e:	eb09 0008 	add.w	r0, r9, r8
c0de5952:	4614      	mov	r4, r2
c0de5954:	460d      	mov	r5, r1
c0de5956:	30a8      	adds	r0, #168	@ 0xa8
c0de5958:	4631      	mov	r1, r6
c0de595a:	2220      	movs	r2, #32
c0de595c:	f001 f84d 	bl	c0de69fa <__aeabi_memmove>
c0de5960:	7870      	ldrb	r0, [r6, #1]
c0de5962:	2810      	cmp	r0, #16
c0de5964:	dc26      	bgt.n	c0de59b4 <ux_layout_paging_prepro_common+0x76>
c0de5966:	2801      	cmp	r0, #1
c0de5968:	d03c      	beq.n	c0de59e4 <ux_layout_paging_prepro_common+0xa6>
c0de596a:	2802      	cmp	r0, #2
c0de596c:	d043      	beq.n	c0de59f6 <ux_layout_paging_prepro_common+0xb8>
c0de596e:	2810      	cmp	r0, #16
c0de5970:	f040 809b 	bne.w	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de5974:	2d00      	cmp	r5, #0
c0de5976:	d04b      	beq.n	c0de5a10 <ux_layout_paging_prepro_common+0xd2>
c0de5978:	eb09 0608 	add.w	r6, r9, r8
c0de597c:	68b0      	ldr	r0, [r6, #8]
c0de597e:	f241 21df 	movw	r1, #4831	@ 0x12df
c0de5982:	f2c0 0100 	movt	r1, #0
c0de5986:	f241 3489 	movw	r4, #5001	@ 0x1389
c0de598a:	f2c0 0400 	movt	r4, #0
c0de598e:	447c      	add	r4, pc
c0de5990:	2801      	cmp	r0, #1
c0de5992:	4628      	mov	r0, r5
c0de5994:	4479      	add	r1, pc
c0de5996:	bf88      	it	hi
c0de5998:	460c      	movhi	r4, r1
c0de599a:	f000 fef9 	bl	c0de6790 <pic>
c0de599e:	4603      	mov	r3, r0
c0de59a0:	e9d6 0501 	ldrd	r0, r5, [r6, #4]
c0de59a4:	2180      	movs	r1, #128	@ 0x80
c0de59a6:	3001      	adds	r0, #1
c0de59a8:	9000      	str	r0, [sp, #0]
c0de59aa:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de59ae:	4622      	mov	r2, r4
c0de59b0:	9501      	str	r5, [sp, #4]
c0de59b2:	e03a      	b.n	c0de5a2a <ux_layout_paging_prepro_common+0xec>
c0de59b4:	f1a0 0111 	sub.w	r1, r0, #17
c0de59b8:	2903      	cmp	r1, #3
c0de59ba:	d276      	bcs.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59bc:	f000 000f 	and.w	r0, r0, #15
c0de59c0:	1e46      	subs	r6, r0, #1
c0de59c2:	2e02      	cmp	r6, #2
c0de59c4:	d871      	bhi.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59c6:	eb09 0008 	add.w	r0, r9, r8
c0de59ca:	eb00 0046 	add.w	r0, r0, r6, lsl #1
c0de59ce:	8a85      	ldrh	r5, [r0, #20]
c0de59d0:	2d00      	cmp	r5, #0
c0de59d2:	d06a      	beq.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59d4:	2d7f      	cmp	r5, #127	@ 0x7f
c0de59d6:	bf28      	it	cs
c0de59d8:	257f      	movcs	r5, #127	@ 0x7f
c0de59da:	b3ec      	cbz	r4, c0de5a58 <ux_layout_paging_prepro_common+0x11a>
c0de59dc:	4620      	mov	r0, r4
c0de59de:	f000 fed7 	bl	c0de6790 <pic>
c0de59e2:	e03d      	b.n	c0de5a60 <ux_layout_paging_prepro_common+0x122>
c0de59e4:	f7ff fce7 	bl	c0de53b6 <ux_flow_is_first>
c0de59e8:	2800      	cmp	r0, #0
c0de59ea:	d05e      	beq.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59ec:	eb09 0008 	add.w	r0, r9, r8
c0de59f0:	6840      	ldr	r0, [r0, #4]
c0de59f2:	b158      	cbz	r0, c0de5a0c <ux_layout_paging_prepro_common+0xce>
c0de59f4:	e059      	b.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59f6:	f7ff fd0c 	bl	c0de5412 <ux_flow_is_last>
c0de59fa:	2800      	cmp	r0, #0
c0de59fc:	d055      	beq.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de59fe:	eb09 0008 	add.w	r0, r9, r8
c0de5a02:	e9d0 0101 	ldrd	r0, r1, [r0, #4]
c0de5a06:	3901      	subs	r1, #1
c0de5a08:	4288      	cmp	r0, r1
c0de5a0a:	d14e      	bne.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de5a0c:	2000      	movs	r0, #0
c0de5a0e:	e04f      	b.n	c0de5ab0 <ux_layout_paging_prepro_common+0x172>
c0de5a10:	eb09 0008 	add.w	r0, r9, r8
c0de5a14:	e9d0 1601 	ldrd	r1, r6, [r0, #4]
c0de5a18:	f241 62fa 	movw	r2, #5882	@ 0x16fa
c0de5a1c:	f2c0 0200 	movt	r2, #0
c0de5a20:	1c4b      	adds	r3, r1, #1
c0de5a22:	3028      	adds	r0, #40	@ 0x28
c0de5a24:	447a      	add	r2, pc
c0de5a26:	2180      	movs	r1, #128	@ 0x80
c0de5a28:	9600      	str	r6, [sp, #0]
c0de5a2a:	f000 fbff 	bl	c0de622c <snprintf>
c0de5a2e:	eb09 0008 	add.w	r0, r9, r8
c0de5a32:	7b01      	ldrb	r1, [r0, #12]
c0de5a34:	f248 0208 	movw	r2, #32776	@ 0x8008
c0de5a38:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5a3c:	3202      	adds	r2, #2
c0de5a3e:	29ef      	cmp	r1, #239	@ 0xef
c0de5a40:	f100 0128 	add.w	r1, r0, #40	@ 0x28
c0de5a44:	bf84      	itt	hi
c0de5a46:	f248 0208 	movwhi	r2, #32776	@ 0x8008
c0de5a4a:	f6cf 72ff 	movthi	r2, #65535	@ 0xffff
c0de5a4e:	f8a0 20c0 	strh.w	r2, [r0, #192]	@ 0xc0
c0de5a52:	f8c0 10c4 	str.w	r1, [r0, #196]	@ 0xc4
c0de5a56:	e028      	b.n	c0de5aaa <ux_layout_paging_prepro_common+0x16c>
c0de5a58:	eb09 0008 	add.w	r0, r9, r8
c0de5a5c:	f8d0 010c 	ldr.w	r0, [r0, #268]	@ 0x10c
c0de5a60:	eb09 0708 	add.w	r7, r9, r8
c0de5a64:	eb07 0146 	add.w	r1, r7, r6, lsl #1
c0de5a68:	89c9      	ldrh	r1, [r1, #14]
c0de5a6a:	f241 2257 	movw	r2, #4695	@ 0x1257
c0de5a6e:	f107 0428 	add.w	r4, r7, #40	@ 0x28
c0de5a72:	f2c0 0200 	movt	r2, #0
c0de5a76:	1846      	adds	r6, r0, r1
c0de5a78:	447a      	add	r2, pc
c0de5a7a:	4620      	mov	r0, r4
c0de5a7c:	2180      	movs	r1, #128	@ 0x80
c0de5a7e:	462b      	mov	r3, r5
c0de5a80:	9600      	str	r6, [sp, #0]
c0de5a82:	f000 fbd3 	bl	c0de622c <snprintf>
c0de5a86:	7b38      	ldrb	r0, [r7, #12]
c0de5a88:	f248 0108 	movw	r1, #32776	@ 0x8008
c0de5a8c:	f6cf 71ff 	movt	r1, #65535	@ 0xffff
c0de5a90:	f000 000f 	and.w	r0, r0, #15
c0de5a94:	3102      	adds	r1, #2
c0de5a96:	f8c7 40c4 	str.w	r4, [r7, #196]	@ 0xc4
c0de5a9a:	280f      	cmp	r0, #15
c0de5a9c:	bf04      	itt	eq
c0de5a9e:	f248 0108 	movweq	r1, #32776	@ 0x8008
c0de5aa2:	f6cf 71ff 	movteq	r1, #65535	@ 0xffff
c0de5aa6:	f8a7 10c0 	strh.w	r1, [r7, #192]	@ 0xc0
c0de5aaa:	eb09 0008 	add.w	r0, r9, r8
c0de5aae:	30a8      	adds	r0, #168	@ 0xa8
c0de5ab0:	b002      	add	sp, #8
c0de5ab2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de5ab6 <ux_layout_paging_redisplay_common>:
c0de5ab6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5aba:	4606      	mov	r6, r0
c0de5abc:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5ac0:	f2c0 0000 	movt	r0, #0
c0de5ac4:	4690      	mov	r8, r2
c0de5ac6:	eb09 0200 	add.w	r2, r9, r0
c0de5aca:	eb06 00c6 	add.w	r0, r6, r6, lsl #3
c0de5ace:	eb02 0780 	add.w	r7, r2, r0, lsl #2
c0de5ad2:	f243 20f6 	movw	r0, #13046	@ 0x32f6
c0de5ad6:	f2c0 0000 	movt	r0, #0
c0de5ada:	4478      	add	r0, pc
c0de5adc:	f8c7 00cc 	str.w	r0, [r7, #204]	@ 0xcc
c0de5ae0:	2007      	movs	r0, #7
c0de5ae2:	f887 00d0 	strb.w	r0, [r7, #208]	@ 0xd0
c0de5ae6:	2001      	movs	r0, #1
c0de5ae8:	f887 00c9 	strb.w	r0, [r7, #201]	@ 0xc9
c0de5aec:	7b10      	ldrb	r0, [r2, #12]
c0de5aee:	460c      	mov	r4, r1
c0de5af0:	f852 1f04 	ldr.w	r1, [r2, #4]!
c0de5af4:	0700      	lsls	r0, r0, #28
c0de5af6:	461d      	mov	r5, r3
c0de5af8:	f04f 0308 	mov.w	r3, #8
c0de5afc:	4620      	mov	r0, r4
c0de5afe:	bf08      	it	eq
c0de5b00:	230a      	moveq	r3, #10
c0de5b02:	f000 f8ed 	bl	c0de5ce0 <ux_layout_paging_compute>
c0de5b06:	f8c7 50d8 	str.w	r5, [r7, #216]	@ 0xd8
c0de5b0a:	4630      	mov	r0, r6
c0de5b0c:	f8c7 80dc 	str.w	r8, [r7, #220]	@ 0xdc
c0de5b10:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5b14:	f000 babd 	b.w	c0de6092 <ux_stack_display>

c0de5b18 <ux_layout_paging_redisplay_by_addr>:
c0de5b18:	b510      	push	{r4, lr}
c0de5b1a:	4604      	mov	r4, r0
c0de5b1c:	f7ff fea6 	bl	c0de586c <ux_stack_get_current_step_params>
c0de5b20:	b178      	cbz	r0, c0de5b42 <ux_layout_paging_redisplay_by_addr+0x2a>
c0de5b22:	6841      	ldr	r1, [r0, #4]
c0de5b24:	f240 020d 	movw	r2, #13
c0de5b28:	f2c0 0200 	movt	r2, #0
c0de5b2c:	f240 0397 	movw	r3, #151	@ 0x97
c0de5b30:	f2c0 0300 	movt	r3, #0
c0de5b34:	447a      	add	r2, pc
c0de5b36:	447b      	add	r3, pc
c0de5b38:	4620      	mov	r0, r4
c0de5b3a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5b3e:	f7ff bfba 	b.w	c0de5ab6 <ux_layout_paging_redisplay_common>
c0de5b42:	bd10      	pop	{r4, pc}

c0de5b44 <ux_layout_paging_button_callback_by_addr>:
c0de5b44:	b580      	push	{r7, lr}
c0de5b46:	2103      	movs	r1, #3
c0de5b48:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5b4c:	4288      	cmp	r0, r1
c0de5b4e:	d013      	beq.n	c0de5b78 <ux_layout_paging_button_callback_by_addr+0x34>
c0de5b50:	2102      	movs	r1, #2
c0de5b52:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5b56:	4288      	cmp	r0, r1
c0de5b58:	d01e      	beq.n	c0de5b98 <ux_layout_paging_button_callback_by_addr+0x54>
c0de5b5a:	2101      	movs	r1, #1
c0de5b5c:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5b60:	4288      	cmp	r0, r1
c0de5b62:	d133      	bne.n	c0de5bcc <ux_layout_paging_button_callback_by_addr+0x88>
c0de5b64:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5b68:	f2c0 0000 	movt	r0, #0
c0de5b6c:	eb09 0100 	add.w	r1, r9, r0
c0de5b70:	6849      	ldr	r1, [r1, #4]
c0de5b72:	b349      	cbz	r1, c0de5bc8 <ux_layout_paging_button_callback_by_addr+0x84>
c0de5b74:	3901      	subs	r1, #1
c0de5b76:	e01e      	b.n	c0de5bb6 <ux_layout_paging_button_callback_by_addr+0x72>
c0de5b78:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5b7c:	f2c0 0000 	movt	r0, #0
c0de5b80:	eb09 0100 	add.w	r1, r9, r0
c0de5b84:	6889      	ldr	r1, [r1, #8]
c0de5b86:	b121      	cbz	r1, c0de5b92 <ux_layout_paging_button_callback_by_addr+0x4e>
c0de5b88:	4448      	add	r0, r9
c0de5b8a:	6840      	ldr	r0, [r0, #4]
c0de5b8c:	3901      	subs	r1, #1
c0de5b8e:	4281      	cmp	r1, r0
c0de5b90:	d11c      	bne.n	c0de5bcc <ux_layout_paging_button_callback_by_addr+0x88>
c0de5b92:	f7ff fd75 	bl	c0de5680 <ux_flow_validate>
c0de5b96:	e019      	b.n	c0de5bcc <ux_layout_paging_button_callback_by_addr+0x88>
c0de5b98:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5b9c:	f2c0 0000 	movt	r0, #0
c0de5ba0:	eb09 0100 	add.w	r1, r9, r0
c0de5ba4:	e9d1 1201 	ldrd	r1, r2, [r1, #4]
c0de5ba8:	3a01      	subs	r2, #1
c0de5baa:	4291      	cmp	r1, r2
c0de5bac:	d102      	bne.n	c0de5bb4 <ux_layout_paging_button_callback_by_addr+0x70>
c0de5bae:	f7ff fcde 	bl	c0de556e <ux_flow_next>
c0de5bb2:	e00b      	b.n	c0de5bcc <ux_layout_paging_button_callback_by_addr+0x88>
c0de5bb4:	3101      	adds	r1, #1
c0de5bb6:	eb09 0200 	add.w	r2, r9, r0
c0de5bba:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5bbe:	6051      	str	r1, [r2, #4]
c0de5bc0:	3801      	subs	r0, #1
c0de5bc2:	f7ff ffa9 	bl	c0de5b18 <ux_layout_paging_redisplay_by_addr>
c0de5bc6:	e001      	b.n	c0de5bcc <ux_layout_paging_button_callback_by_addr+0x88>
c0de5bc8:	f7ff fcd4 	bl	c0de5574 <ux_flow_prev>
c0de5bcc:	2000      	movs	r0, #0
c0de5bce:	bd80      	pop	{r7, pc}

c0de5bd0 <ux_layout_paging_prepro_by_addr>:
c0de5bd0:	b510      	push	{r4, lr}
c0de5bd2:	4604      	mov	r4, r0
c0de5bd4:	f7ff fe4a 	bl	c0de586c <ux_stack_get_current_step_params>
c0de5bd8:	b130      	cbz	r0, c0de5be8 <ux_layout_paging_prepro_by_addr+0x18>
c0de5bda:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de5bde:	4620      	mov	r0, r4
c0de5be0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5be4:	f7ff beab 	b.w	c0de593e <ux_layout_paging_prepro_common>
c0de5be8:	2000      	movs	r0, #0
c0de5bea:	bd10      	pop	{r4, pc}

c0de5bec <ux_layout_paging_init_common>:
c0de5bec:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5bf0:	b081      	sub	sp, #4
c0de5bf2:	f246 2880 	movw	r8, #25216	@ 0x6280
c0de5bf6:	f2c0 0800 	movt	r8, #0
c0de5bfa:	460d      	mov	r5, r1
c0de5bfc:	eb09 0108 	add.w	r1, r9, r8
c0de5c00:	7b0e      	ldrb	r6, [r1, #12]
c0de5c02:	4692      	mov	sl, r2
c0de5c04:	4604      	mov	r4, r0
c0de5c06:	f7ff fc2e 	bl	c0de5466 <ux_flow_direction>
c0de5c0a:	2801      	cmp	r0, #1
c0de5c0c:	d00c      	beq.n	c0de5c28 <ux_layout_paging_init_common+0x3c>
c0de5c0e:	3001      	adds	r0, #1
c0de5c10:	d110      	bne.n	c0de5c34 <ux_layout_paging_init_common+0x48>
c0de5c12:	eb09 0708 	add.w	r7, r9, r8
c0de5c16:	f107 0008 	add.w	r0, r7, #8
c0de5c1a:	2114      	movs	r1, #20
c0de5c1c:	f000 fee8 	bl	c0de69f0 <__aeabi_memclr>
c0de5c20:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5c24:	6078      	str	r0, [r7, #4]
c0de5c26:	e005      	b.n	c0de5c34 <ux_layout_paging_init_common+0x48>
c0de5c28:	eb09 0008 	add.w	r0, r9, r8
c0de5c2c:	3004      	adds	r0, #4
c0de5c2e:	2118      	movs	r1, #24
c0de5c30:	f000 fede 	bl	c0de69f0 <__aeabi_memclr>
c0de5c34:	eb09 0708 	add.w	r7, r9, r8
c0de5c38:	4620      	mov	r0, r4
c0de5c3a:	733e      	strb	r6, [r7, #12]
c0de5c3c:	1d3e      	adds	r6, r7, #4
c0de5c3e:	f000 fa52 	bl	c0de60e6 <ux_stack_init>
c0de5c42:	f8d7 010c 	ldr.w	r0, [r7, #268]	@ 0x10c
c0de5c46:	2308      	movs	r3, #8
c0de5c48:	4328      	orrs	r0, r5
c0de5c4a:	f241 30d4 	movw	r0, #5076	@ 0x13d4
c0de5c4e:	f2c0 0000 	movt	r0, #0
c0de5c52:	7b39      	ldrb	r1, [r7, #12]
c0de5c54:	4478      	add	r0, pc
c0de5c56:	bf18      	it	ne
c0de5c58:	4628      	movne	r0, r5
c0de5c5a:	0709      	lsls	r1, r1, #28
c0de5c5c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de5c60:	4632      	mov	r2, r6
c0de5c62:	bf08      	it	eq
c0de5c64:	230a      	moveq	r3, #10
c0de5c66:	f000 f83b 	bl	c0de5ce0 <ux_layout_paging_compute>
c0de5c6a:	60b8      	str	r0, [r7, #8]
c0de5c6c:	b148      	cbz	r0, c0de5c82 <ux_layout_paging_init_common+0x96>
c0de5c6e:	eb09 0108 	add.w	r1, r9, r8
c0de5c72:	6849      	ldr	r1, [r1, #4]
c0de5c74:	3801      	subs	r0, #1
c0de5c76:	4281      	cmp	r1, r0
c0de5c78:	bf84      	itt	hi
c0de5c7a:	eb09 0108 	addhi.w	r1, r9, r8
c0de5c7e:	6048      	strhi	r0, [r1, #4]
c0de5c80:	e005      	b.n	c0de5c8e <ux_layout_paging_init_common+0xa2>
c0de5c82:	eb09 0008 	add.w	r0, r9, r8
c0de5c86:	3004      	adds	r0, #4
c0de5c88:	2118      	movs	r1, #24
c0de5c8a:	f000 feb1 	bl	c0de69f0 <__aeabi_memclr>
c0de5c8e:	4620      	mov	r0, r4
c0de5c90:	4651      	mov	r1, sl
c0de5c92:	b001      	add	sp, #4
c0de5c94:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5c98:	4708      	bx	r1

c0de5c9a <ux_layout_paging_reset>:
c0de5c9a:	b580      	push	{r7, lr}
c0de5c9c:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5ca0:	f2c0 0000 	movt	r0, #0
c0de5ca4:	4448      	add	r0, r9
c0de5ca6:	3004      	adds	r0, #4
c0de5ca8:	2118      	movs	r1, #24
c0de5caa:	f000 fea1 	bl	c0de69f0 <__aeabi_memclr>
c0de5cae:	bd80      	pop	{r7, pc}

c0de5cb0 <ux_layout_bn_paging_init>:
c0de5cb0:	b510      	push	{r4, lr}
c0de5cb2:	4604      	mov	r4, r0
c0de5cb4:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5cb8:	f2c0 0000 	movt	r0, #0
c0de5cbc:	4448      	add	r0, r9
c0de5cbe:	21f0      	movs	r1, #240	@ 0xf0
c0de5cc0:	7301      	strb	r1, [r0, #12]
c0de5cc2:	4620      	mov	r0, r4
c0de5cc4:	f7ff fdb3 	bl	c0de582e <ux_stack_get_step_params>
c0de5cc8:	6841      	ldr	r1, [r0, #4]
c0de5cca:	f64f 6243 	movw	r2, #65091	@ 0xfe43
c0de5cce:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5cd2:	447a      	add	r2, pc
c0de5cd4:	4620      	mov	r0, r4
c0de5cd6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5cda:	f7ff bf87 	b.w	c0de5bec <ux_layout_paging_init_common>
	...

c0de5ce0 <ux_layout_paging_compute>:
c0de5ce0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ce4:	b088      	sub	sp, #32
c0de5ce6:	460e      	mov	r6, r1
c0de5ce8:	4607      	mov	r7, r0
c0de5cea:	f102 000a 	add.w	r0, r2, #10
c0de5cee:	210c      	movs	r1, #12
c0de5cf0:	9307      	str	r3, [sp, #28]
c0de5cf2:	4614      	mov	r4, r2
c0de5cf4:	f000 fe7c 	bl	c0de69f0 <__aeabi_memclr>
c0de5cf8:	1c70      	adds	r0, r6, #1
c0de5cfa:	9004      	str	r0, [sp, #16]
c0de5cfc:	d004      	beq.n	c0de5d08 <ux_layout_paging_compute+0x28>
c0de5cfe:	6860      	ldr	r0, [r4, #4]
c0de5d00:	42b0      	cmp	r0, r6
c0de5d02:	d801      	bhi.n	c0de5d08 <ux_layout_paging_compute+0x28>
c0de5d04:	2000      	movs	r0, #0
c0de5d06:	e097      	b.n	c0de5e38 <ux_layout_paging_compute+0x158>
c0de5d08:	b127      	cbz	r7, c0de5d14 <ux_layout_paging_compute+0x34>
c0de5d0a:	4638      	mov	r0, r7
c0de5d0c:	f000 fd40 	bl	c0de6790 <pic>
c0de5d10:	4607      	mov	r7, r0
c0de5d12:	e006      	b.n	c0de5d22 <ux_layout_paging_compute+0x42>
c0de5d14:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5d18:	f2c0 0000 	movt	r0, #0
c0de5d1c:	4448      	add	r0, r9
c0de5d1e:	f8d0 710c 	ldr.w	r7, [r0, #268]	@ 0x10c
c0de5d22:	4638      	mov	r0, r7
c0de5d24:	f000 fece 	bl	c0de6ac4 <strlen>
c0de5d28:	2801      	cmp	r0, #1
c0de5d2a:	f2c0 8082 	blt.w	c0de5e32 <ux_layout_paging_compute+0x152>
c0de5d2e:	eb07 0b00 	add.w	fp, r7, r0
c0de5d32:	2200      	movs	r2, #0
c0de5d34:	2300      	movs	r3, #0
c0de5d36:	2500      	movs	r5, #0
c0de5d38:	9402      	str	r4, [sp, #8]
c0de5d3a:	4638      	mov	r0, r7
c0de5d3c:	9701      	str	r7, [sp, #4]
c0de5d3e:	9603      	str	r6, [sp, #12]
c0de5d40:	2600      	movs	r6, #0
c0de5d42:	46ba      	mov	sl, r7
c0de5d44:	e9cd 3205 	strd	r3, r2, [sp, #20]
c0de5d48:	eb07 0806 	add.w	r8, r7, r6
c0de5d4c:	45d8      	cmp	r8, fp
c0de5d4e:	d21d      	bcs.n	c0de5d8c <ux_layout_paging_compute+0xac>
c0de5d50:	1c74      	adds	r4, r6, #1
c0de5d52:	9807      	ldr	r0, [sp, #28]
c0de5d54:	b2e3      	uxtb	r3, r4
c0de5d56:	2100      	movs	r1, #0
c0de5d58:	463a      	mov	r2, r7
c0de5d5a:	9500      	str	r5, [sp, #0]
c0de5d5c:	f7fe ffb7 	bl	c0de4cce <bagl_compute_line_width>
c0de5d60:	2872      	cmp	r0, #114	@ 0x72
c0de5d62:	d813      	bhi.n	c0de5d8c <ux_layout_paging_compute+0xac>
c0de5d64:	f898 0000 	ldrb.w	r0, [r8]
c0de5d68:	282c      	cmp	r0, #44	@ 0x2c
c0de5d6a:	dc05      	bgt.n	c0de5d78 <ux_layout_paging_compute+0x98>
c0de5d6c:	280a      	cmp	r0, #10
c0de5d6e:	d007      	beq.n	c0de5d80 <ux_layout_paging_compute+0xa0>
c0de5d70:	2820      	cmp	r0, #32
c0de5d72:	bf08      	it	eq
c0de5d74:	46c2      	moveq	sl, r8
c0de5d76:	e004      	b.n	c0de5d82 <ux_layout_paging_compute+0xa2>
c0de5d78:	285f      	cmp	r0, #95	@ 0x5f
c0de5d7a:	d001      	beq.n	c0de5d80 <ux_layout_paging_compute+0xa0>
c0de5d7c:	282d      	cmp	r0, #45	@ 0x2d
c0de5d7e:	d100      	bne.n	c0de5d82 <ux_layout_paging_compute+0xa2>
c0de5d80:	46c2      	mov	sl, r8
c0de5d82:	280a      	cmp	r0, #10
c0de5d84:	4626      	mov	r6, r4
c0de5d86:	d1df      	bne.n	c0de5d48 <ux_layout_paging_compute+0x68>
c0de5d88:	e001      	b.n	c0de5d8e <ux_layout_paging_compute+0xae>
c0de5d8a:	bf00      	nop
c0de5d8c:	4634      	mov	r4, r6
c0de5d8e:	1938      	adds	r0, r7, r4
c0de5d90:	4558      	cmp	r0, fp
c0de5d92:	d203      	bcs.n	c0de5d9c <ux_layout_paging_compute+0xbc>
c0de5d94:	45ba      	cmp	sl, r7
c0de5d96:	bf18      	it	ne
c0de5d98:	2c00      	cmpne	r4, #0
c0de5d9a:	d126      	bne.n	c0de5dea <ux_layout_paging_compute+0x10a>
c0de5d9c:	9e03      	ldr	r6, [sp, #12]
c0de5d9e:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5da2:	9804      	ldr	r0, [sp, #16]
c0de5da4:	b170      	cbz	r0, c0de5dc4 <ux_layout_paging_compute+0xe4>
c0de5da6:	42b2      	cmp	r2, r6
c0de5da8:	d10c      	bne.n	c0de5dc4 <ux_layout_paging_compute+0xe4>
c0de5daa:	9802      	ldr	r0, [sp, #8]
c0de5dac:	6840      	ldr	r0, [r0, #4]
c0de5dae:	42b0      	cmp	r0, r6
c0de5db0:	d908      	bls.n	c0de5dc4 <ux_layout_paging_compute+0xe4>
c0de5db2:	9801      	ldr	r0, [sp, #4]
c0de5db4:	9902      	ldr	r1, [sp, #8]
c0de5db6:	1a38      	subs	r0, r7, r0
c0de5db8:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de5dbc:	2b01      	cmp	r3, #1
c0de5dbe:	8148      	strh	r0, [r1, #10]
c0de5dc0:	820c      	strh	r4, [r1, #16]
c0de5dc2:	d836      	bhi.n	c0de5e32 <ux_layout_paging_compute+0x152>
c0de5dc4:	3301      	adds	r3, #1
c0de5dc6:	4427      	add	r7, r4
c0de5dc8:	2b02      	cmp	r3, #2
c0de5dca:	f04f 0000 	mov.w	r0, #0
c0de5dce:	bf88      	it	hi
c0de5dd0:	2001      	movhi	r0, #1
c0de5dd2:	455f      	cmp	r7, fp
c0de5dd4:	f04f 0100 	mov.w	r1, #0
c0de5dd8:	bf38      	it	cc
c0de5dda:	2101      	movcc	r1, #1
c0de5ddc:	4008      	ands	r0, r1
c0de5dde:	bf18      	it	ne
c0de5de0:	2300      	movne	r3, #0
c0de5de2:	455f      	cmp	r7, fp
c0de5de4:	4402      	add	r2, r0
c0de5de6:	d3ab      	bcc.n	c0de5d40 <ux_layout_paging_compute+0x60>
c0de5de8:	e025      	b.n	c0de5e36 <ux_layout_paging_compute+0x156>
c0de5dea:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de5dee:	292c      	cmp	r1, #44	@ 0x2c
c0de5df0:	dc07      	bgt.n	c0de5e02 <ux_layout_paging_compute+0x122>
c0de5df2:	9e03      	ldr	r6, [sp, #12]
c0de5df4:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5df8:	290a      	cmp	r1, #10
c0de5dfa:	d0d2      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5dfc:	2920      	cmp	r1, #32
c0de5dfe:	d0d0      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e00:	e006      	b.n	c0de5e10 <ux_layout_paging_compute+0x130>
c0de5e02:	9e03      	ldr	r6, [sp, #12]
c0de5e04:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5e08:	292d      	cmp	r1, #45	@ 0x2d
c0de5e0a:	d0ca      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e0c:	295f      	cmp	r1, #95	@ 0x5f
c0de5e0e:	d0c8      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e10:	7800      	ldrb	r0, [r0, #0]
c0de5e12:	282c      	cmp	r0, #44	@ 0x2c
c0de5e14:	dc06      	bgt.n	c0de5e24 <ux_layout_paging_compute+0x144>
c0de5e16:	280a      	cmp	r0, #10
c0de5e18:	d0c3      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e1a:	2820      	cmp	r0, #32
c0de5e1c:	bf18      	it	ne
c0de5e1e:	ebaa 0407 	subne.w	r4, sl, r7
c0de5e22:	e7be      	b.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e24:	282d      	cmp	r0, #45	@ 0x2d
c0de5e26:	d0bc      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e28:	285f      	cmp	r0, #95	@ 0x5f
c0de5e2a:	d0ba      	beq.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e2c:	ebaa 0407 	sub.w	r4, sl, r7
c0de5e30:	e7b7      	b.n	c0de5da2 <ux_layout_paging_compute+0xc2>
c0de5e32:	2001      	movs	r0, #1
c0de5e34:	e000      	b.n	c0de5e38 <ux_layout_paging_compute+0x158>
c0de5e36:	1c50      	adds	r0, r2, #1
c0de5e38:	b008      	add	sp, #32
c0de5e3a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5e3e <ux_layout_pb_prepro>:
c0de5e3e:	b570      	push	{r4, r5, r6, lr}
c0de5e40:	4605      	mov	r5, r0
c0de5e42:	f7ff fd13 	bl	c0de586c <ux_stack_get_current_step_params>
c0de5e46:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5e4a:	f2c0 0600 	movt	r6, #0
c0de5e4e:	4604      	mov	r4, r0
c0de5e50:	eb09 0006 	add.w	r0, r9, r6
c0de5e54:	30a8      	adds	r0, #168	@ 0xa8
c0de5e56:	4629      	mov	r1, r5
c0de5e58:	2220      	movs	r2, #32
c0de5e5a:	f000 fdce 	bl	c0de69fa <__aeabi_memmove>
c0de5e5e:	7868      	ldrb	r0, [r5, #1]
c0de5e60:	280f      	cmp	r0, #15
c0de5e62:	dc06      	bgt.n	c0de5e72 <ux_layout_pb_prepro+0x34>
c0de5e64:	2801      	cmp	r0, #1
c0de5e66:	d00f      	beq.n	c0de5e88 <ux_layout_pb_prepro+0x4a>
c0de5e68:	2802      	cmp	r0, #2
c0de5e6a:	d112      	bne.n	c0de5e92 <ux_layout_pb_prepro+0x54>
c0de5e6c:	f7ff fad1 	bl	c0de5412 <ux_flow_is_last>
c0de5e70:	e00c      	b.n	c0de5e8c <ux_layout_pb_prepro+0x4e>
c0de5e72:	2810      	cmp	r0, #16
c0de5e74:	d002      	beq.n	c0de5e7c <ux_layout_pb_prepro+0x3e>
c0de5e76:	2811      	cmp	r0, #17
c0de5e78:	d10b      	bne.n	c0de5e92 <ux_layout_pb_prepro+0x54>
c0de5e7a:	3404      	adds	r4, #4
c0de5e7c:	6820      	ldr	r0, [r4, #0]
c0de5e7e:	eb09 0106 	add.w	r1, r9, r6
c0de5e82:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de5e86:	e004      	b.n	c0de5e92 <ux_layout_pb_prepro+0x54>
c0de5e88:	f7ff fa95 	bl	c0de53b6 <ux_flow_is_first>
c0de5e8c:	b108      	cbz	r0, c0de5e92 <ux_layout_pb_prepro+0x54>
c0de5e8e:	2000      	movs	r0, #0
c0de5e90:	bd70      	pop	{r4, r5, r6, pc}
c0de5e92:	eb09 0006 	add.w	r0, r9, r6
c0de5e96:	30a8      	adds	r0, #168	@ 0xa8
c0de5e98:	bd70      	pop	{r4, r5, r6, pc}

c0de5e9a <ux_layout_pb_init>:
c0de5e9a:	b510      	push	{r4, lr}
c0de5e9c:	4604      	mov	r4, r0
c0de5e9e:	f000 f922 	bl	c0de60e6 <ux_stack_init>
c0de5ea2:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5ea6:	f2c0 0000 	movt	r0, #0
c0de5eaa:	4448      	add	r0, r9
c0de5eac:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5eb0:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de5eb4:	f642 70f4 	movw	r0, #12276	@ 0x2ff4
c0de5eb8:	f2c0 0000 	movt	r0, #0
c0de5ebc:	4478      	add	r0, pc
c0de5ebe:	f8c1 00cc 	str.w	r0, [r1, #204]	@ 0xcc
c0de5ec2:	2005      	movs	r0, #5
c0de5ec4:	f881 00d0 	strb.w	r0, [r1, #208]	@ 0xd0
c0de5ec8:	2001      	movs	r0, #1
c0de5eca:	f881 00c9 	strb.w	r0, [r1, #201]	@ 0xc9
c0de5ece:	f64f 705d 	movw	r0, #65373	@ 0xff5d
c0de5ed2:	f6cf 70ff 	movt	r0, #65535	@ 0xffff
c0de5ed6:	f64f 1215 	movw	r2, #63765	@ 0xf915
c0de5eda:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5ede:	4478      	add	r0, pc
c0de5ee0:	447a      	add	r2, pc
c0de5ee2:	f8c1 00d8 	str.w	r0, [r1, #216]	@ 0xd8
c0de5ee6:	4620      	mov	r0, r4
c0de5ee8:	f8c1 20dc 	str.w	r2, [r1, #220]	@ 0xdc
c0de5eec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5ef0:	f000 b8cf 	b.w	c0de6092 <ux_stack_display>

c0de5ef4 <ux_layout_pbb_prepro>:
c0de5ef4:	b570      	push	{r4, r5, r6, lr}
c0de5ef6:	4605      	mov	r5, r0
c0de5ef8:	f7ff fcb8 	bl	c0de586c <ux_stack_get_current_step_params>
c0de5efc:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5f00:	f2c0 0600 	movt	r6, #0
c0de5f04:	4604      	mov	r4, r0
c0de5f06:	eb09 0006 	add.w	r0, r9, r6
c0de5f0a:	30a8      	adds	r0, #168	@ 0xa8
c0de5f0c:	4629      	mov	r1, r5
c0de5f0e:	2220      	movs	r2, #32
c0de5f10:	f000 fd73 	bl	c0de69fa <__aeabi_memmove>
c0de5f14:	7868      	ldrb	r0, [r5, #1]
c0de5f16:	280f      	cmp	r0, #15
c0de5f18:	dc06      	bgt.n	c0de5f28 <ux_layout_pbb_prepro+0x34>
c0de5f1a:	2801      	cmp	r0, #1
c0de5f1c:	d019      	beq.n	c0de5f52 <ux_layout_pbb_prepro+0x5e>
c0de5f1e:	2802      	cmp	r0, #2
c0de5f20:	d01a      	beq.n	c0de5f58 <ux_layout_pbb_prepro+0x64>
c0de5f22:	280f      	cmp	r0, #15
c0de5f24:	d00c      	beq.n	c0de5f40 <ux_layout_pbb_prepro+0x4c>
c0de5f26:	e010      	b.n	c0de5f4a <ux_layout_pbb_prepro+0x56>
c0de5f28:	3810      	subs	r0, #16
c0de5f2a:	2802      	cmp	r0, #2
c0de5f2c:	d20d      	bcs.n	c0de5f4a <ux_layout_pbb_prepro+0x56>
c0de5f2e:	eb09 0006 	add.w	r0, r9, r6
c0de5f32:	f890 00a9 	ldrb.w	r0, [r0, #169]	@ 0xa9
c0de5f36:	f000 000f 	and.w	r0, r0, #15
c0de5f3a:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de5f3e:	1d04      	adds	r4, r0, #4
c0de5f40:	6820      	ldr	r0, [r4, #0]
c0de5f42:	eb09 0106 	add.w	r1, r9, r6
c0de5f46:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de5f4a:	eb09 0006 	add.w	r0, r9, r6
c0de5f4e:	30a8      	adds	r0, #168	@ 0xa8
c0de5f50:	bd70      	pop	{r4, r5, r6, pc}
c0de5f52:	f7ff fa30 	bl	c0de53b6 <ux_flow_is_first>
c0de5f56:	e001      	b.n	c0de5f5c <ux_layout_pbb_prepro+0x68>
c0de5f58:	f7ff fa5b 	bl	c0de5412 <ux_flow_is_last>
c0de5f5c:	2800      	cmp	r0, #0
c0de5f5e:	d0f4      	beq.n	c0de5f4a <ux_layout_pbb_prepro+0x56>
c0de5f60:	2000      	movs	r0, #0
c0de5f62:	bd70      	pop	{r4, r5, r6, pc}

c0de5f64 <ux_layout_pbb_init>:
c0de5f64:	b510      	push	{r4, lr}
c0de5f66:	4604      	mov	r4, r0
c0de5f68:	f000 f8bd 	bl	c0de60e6 <ux_stack_init>
c0de5f6c:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5f70:	f2c0 0000 	movt	r0, #0
c0de5f74:	4448      	add	r0, r9
c0de5f76:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5f7a:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de5f7e:	f642 70ca 	movw	r0, #12234	@ 0x2fca
c0de5f82:	f2c0 0000 	movt	r0, #0
c0de5f86:	4478      	add	r0, pc
c0de5f88:	f8c1 00cc 	str.w	r0, [r1, #204]	@ 0xcc
c0de5f8c:	2006      	movs	r0, #6
c0de5f8e:	f881 00d0 	strb.w	r0, [r1, #208]	@ 0xd0
c0de5f92:	2001      	movs	r0, #1
c0de5f94:	f881 00c9 	strb.w	r0, [r1, #201]	@ 0xc9
c0de5f98:	f64f 024d 	movw	r2, #63565	@ 0xf84d
c0de5f9c:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5fa0:	f64f 7047 	movw	r0, #65351	@ 0xff47
c0de5fa4:	f6cf 70ff 	movt	r0, #65535	@ 0xffff
c0de5fa8:	447a      	add	r2, pc
c0de5faa:	4478      	add	r0, pc
c0de5fac:	f8c1 00d8 	str.w	r0, [r1, #216]	@ 0xd8
c0de5fb0:	4620      	mov	r0, r4
c0de5fb2:	f8c1 20dc 	str.w	r2, [r1, #220]	@ 0xdc
c0de5fb6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5fba:	f000 b86a 	b.w	c0de6092 <ux_stack_display>

c0de5fbe <ux_layout_strings_prepro>:
c0de5fbe:	b570      	push	{r4, r5, r6, lr}
c0de5fc0:	4605      	mov	r5, r0
c0de5fc2:	f7ff fc53 	bl	c0de586c <ux_stack_get_current_step_params>
c0de5fc6:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5fca:	f2c0 0600 	movt	r6, #0
c0de5fce:	4604      	mov	r4, r0
c0de5fd0:	eb09 0006 	add.w	r0, r9, r6
c0de5fd4:	30a8      	adds	r0, #168	@ 0xa8
c0de5fd6:	4629      	mov	r1, r5
c0de5fd8:	2220      	movs	r2, #32
c0de5fda:	f000 fd0e 	bl	c0de69fa <__aeabi_memmove>
c0de5fde:	7868      	ldrb	r0, [r5, #1]
c0de5fe0:	2802      	cmp	r0, #2
c0de5fe2:	d004      	beq.n	c0de5fee <ux_layout_strings_prepro+0x30>
c0de5fe4:	2801      	cmp	r0, #1
c0de5fe6:	d107      	bne.n	c0de5ff8 <ux_layout_strings_prepro+0x3a>
c0de5fe8:	f7ff f9e5 	bl	c0de53b6 <ux_flow_is_first>
c0de5fec:	e001      	b.n	c0de5ff2 <ux_layout_strings_prepro+0x34>
c0de5fee:	f7ff fa10 	bl	c0de5412 <ux_flow_is_last>
c0de5ff2:	b180      	cbz	r0, c0de6016 <ux_layout_strings_prepro+0x58>
c0de5ff4:	2000      	movs	r0, #0
c0de5ff6:	bd70      	pop	{r4, r5, r6, pc}
c0de5ff8:	eb09 0006 	add.w	r0, r9, r6
c0de5ffc:	f890 00a9 	ldrb.w	r0, [r0, #169]	@ 0xa9
c0de6000:	f010 0ff0 	tst.w	r0, #240	@ 0xf0
c0de6004:	d007      	beq.n	c0de6016 <ux_layout_strings_prepro+0x58>
c0de6006:	f000 000f 	and.w	r0, r0, #15
c0de600a:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
c0de600e:	eb09 0106 	add.w	r1, r9, r6
c0de6012:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de6016:	eb09 0006 	add.w	r0, r9, r6
c0de601a:	30a8      	adds	r0, #168	@ 0xa8
c0de601c:	bd70      	pop	{r4, r5, r6, pc}

c0de601e <ux_stack_push>:
c0de601e:	b5b0      	push	{r4, r5, r7, lr}
c0de6020:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de6024:	f2c0 0400 	movt	r4, #0
c0de6028:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de602c:	b968      	cbnz	r0, c0de604a <ux_stack_push+0x2c>
c0de602e:	eb09 0504 	add.w	r5, r9, r4
c0de6032:	f105 00c8 	add.w	r0, r5, #200	@ 0xc8
c0de6036:	2124      	movs	r1, #36	@ 0x24
c0de6038:	f000 fcda 	bl	c0de69f0 <__aeabi_memclr>
c0de603c:	2000      	movs	r0, #0
c0de603e:	e9c5 0007 	strd	r0, r0, [r5, #28]
c0de6042:	6268      	str	r0, [r5, #36]	@ 0x24
c0de6044:	2001      	movs	r0, #1
c0de6046:	f809 0004 	strb.w	r0, [r9, r4]
c0de604a:	3801      	subs	r0, #1
c0de604c:	bdb0      	pop	{r4, r5, r7, pc}

c0de604e <ux_stack_redisplay>:
c0de604e:	b580      	push	{r7, lr}
c0de6050:	f7ff fc15 	bl	c0de587e <ux_flow_relayout>
c0de6054:	b100      	cbz	r0, c0de6058 <ux_stack_redisplay+0xa>
c0de6056:	bd80      	pop	{r7, pc}
c0de6058:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de605c:	f2c0 0000 	movt	r0, #0
c0de6060:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6064:	2901      	cmp	r1, #1
c0de6066:	d109      	bne.n	c0de607c <ux_stack_redisplay+0x2e>
c0de6068:	eb09 0100 	add.w	r1, r9, r0
c0de606c:	2200      	movs	r2, #0
c0de606e:	2000      	movs	r0, #0
c0de6070:	f8a1 20ca 	strh.w	r2, [r1, #202]	@ 0xca
c0de6074:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6078:	f000 b80b 	b.w	c0de6092 <ux_stack_display>
c0de607c:	2900      	cmp	r1, #0
c0de607e:	d1ea      	bne.n	c0de6056 <ux_stack_redisplay+0x8>
c0de6080:	eb09 0100 	add.w	r1, r9, r0
c0de6084:	7849      	ldrb	r1, [r1, #1]
c0de6086:	29aa      	cmp	r1, #170	@ 0xaa
c0de6088:	bf02      	ittt	eq
c0de608a:	4448      	addeq	r0, r9
c0de608c:	2169      	moveq	r1, #105	@ 0x69
c0de608e:	7041      	strbeq	r1, [r0, #1]
c0de6090:	bd80      	pop	{r7, pc}

c0de6092 <ux_stack_display>:
c0de6092:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de6096:	f2c0 0100 	movt	r1, #0
c0de609a:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de609e:	1c43      	adds	r3, r0, #1
c0de60a0:	b16a      	cbz	r2, c0de60be <ux_stack_display+0x2c>
c0de60a2:	4293      	cmp	r3, r2
c0de60a4:	d10b      	bne.n	c0de60be <ux_stack_display+0x2c>
c0de60a6:	4449      	add	r1, r9
c0de60a8:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de60ac:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de60b0:	f101 00c8 	add.w	r0, r1, #200	@ 0xc8
c0de60b4:	2200      	movs	r2, #0
c0de60b6:	f8a1 20ca 	strh.w	r2, [r1, #202]	@ 0xca
c0de60ba:	f000 b823 	b.w	c0de6104 <ux_stack_display_elements>
c0de60be:	fab3 f083 	clz	r0, r3
c0de60c2:	fab2 f282 	clz	r2, r2
c0de60c6:	0940      	lsrs	r0, r0, #5
c0de60c8:	0952      	lsrs	r2, r2, #5
c0de60ca:	4310      	orrs	r0, r2
c0de60cc:	2801      	cmp	r0, #1
c0de60ce:	bf18      	it	ne
c0de60d0:	4770      	bxne	lr
c0de60d2:	eb09 0001 	add.w	r0, r9, r1
c0de60d6:	7840      	ldrb	r0, [r0, #1]
c0de60d8:	28aa      	cmp	r0, #170	@ 0xaa
c0de60da:	bf02      	ittt	eq
c0de60dc:	eb09 0001 	addeq.w	r0, r9, r1
c0de60e0:	2169      	moveq	r1, #105	@ 0x69
c0de60e2:	7041      	strbeq	r1, [r0, #1]
c0de60e4:	4770      	bx	lr

c0de60e6 <ux_stack_init>:
c0de60e6:	b100      	cbz	r0, c0de60ea <ux_stack_init+0x4>
c0de60e8:	4770      	bx	lr
c0de60ea:	b580      	push	{r7, lr}
c0de60ec:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de60f0:	f2c0 0000 	movt	r0, #0
c0de60f4:	4448      	add	r0, r9
c0de60f6:	30c8      	adds	r0, #200	@ 0xc8
c0de60f8:	2124      	movs	r1, #36	@ 0x24
c0de60fa:	f000 fc79 	bl	c0de69f0 <__aeabi_memclr>
c0de60fe:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6102:	4770      	bx	lr

c0de6104 <ux_stack_display_elements>:
c0de6104:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6108:	b081      	sub	sp, #4
c0de610a:	4604      	mov	r4, r0
c0de610c:	f000 fb79 	bl	c0de6802 <os_perso_isonboarded>
c0de6110:	28aa      	cmp	r0, #170	@ 0xaa
c0de6112:	d103      	bne.n	c0de611c <ux_stack_display_elements+0x18>
c0de6114:	f000 fbab 	bl	c0de686e <os_global_pin_is_validated>
c0de6118:	28aa      	cmp	r0, #170	@ 0xaa
c0de611a:	d151      	bne.n	c0de61c0 <ux_stack_display_elements+0xbc>
c0de611c:	7860      	ldrb	r0, [r4, #1]
c0de611e:	b3b0      	cbz	r0, c0de618e <ux_stack_display_elements+0x8a>
c0de6120:	8860      	ldrh	r0, [r4, #2]
c0de6122:	f894 8008 	ldrb.w	r8, [r4, #8]
c0de6126:	4540      	cmp	r0, r8
c0de6128:	d233      	bcs.n	c0de6192 <ux_stack_display_elements+0x8e>
c0de612a:	f246 2a80 	movw	sl, #25216	@ 0x6280
c0de612e:	1c47      	adds	r7, r0, #1
c0de6130:	0146      	lsls	r6, r0, #5
c0de6132:	f2c0 0a00 	movt	sl, #0
c0de6136:	bf00      	nop
c0de6138:	3001      	adds	r0, #1
c0de613a:	8060      	strh	r0, [r4, #2]
c0de613c:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de6140:	6861      	ldr	r1, [r4, #4]
c0de6142:	eb01 0506 	add.w	r5, r1, r6
c0de6146:	b168      	cbz	r0, c0de6164 <ux_stack_display_elements+0x60>
c0de6148:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de614c:	eb09 010a 	add.w	r1, r9, sl
c0de6150:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de6154:	f8d0 10b4 	ldr.w	r1, [r0, #180]	@ 0xb4
c0de6158:	b121      	cbz	r1, c0de6164 <ux_stack_display_elements+0x60>
c0de615a:	4628      	mov	r0, r5
c0de615c:	4788      	blx	r1
c0de615e:	b1a0      	cbz	r0, c0de618a <ux_stack_display_elements+0x86>
c0de6160:	2801      	cmp	r0, #1
c0de6162:	d100      	bne.n	c0de6166 <ux_stack_display_elements+0x62>
c0de6164:	4628      	mov	r0, r5
c0de6166:	b128      	cbz	r0, c0de6174 <ux_stack_display_elements+0x70>
c0de6168:	2801      	cmp	r0, #1
c0de616a:	bf08      	it	eq
c0de616c:	4628      	moveq	r0, r5
c0de616e:	f7fe f896 	bl	c0de429e <io_seph_ux_display_bagl_element>
c0de6172:	e003      	b.n	c0de617c <ux_stack_display_elements+0x78>
c0de6174:	eb09 000a 	add.w	r0, r9, sl
c0de6178:	7840      	ldrb	r0, [r0, #1]
c0de617a:	bb08      	cbnz	r0, c0de61c0 <ux_stack_display_elements+0xbc>
c0de617c:	7a20      	ldrb	r0, [r4, #8]
c0de617e:	4287      	cmp	r7, r0
c0de6180:	d207      	bcs.n	c0de6192 <ux_stack_display_elements+0x8e>
c0de6182:	8860      	ldrh	r0, [r4, #2]
c0de6184:	3701      	adds	r7, #1
c0de6186:	3620      	adds	r6, #32
c0de6188:	e7d6      	b.n	c0de6138 <ux_stack_display_elements+0x34>
c0de618a:	2000      	movs	r0, #0
c0de618c:	e7eb      	b.n	c0de6166 <ux_stack_display_elements+0x62>
c0de618e:	f04f 0800 	mov.w	r8, #0
c0de6192:	8860      	ldrh	r0, [r4, #2]
c0de6194:	4540      	cmp	r0, r8
c0de6196:	d113      	bne.n	c0de61c0 <ux_stack_display_elements+0xbc>
c0de6198:	f000 fbf7 	bl	c0de698a <screen_update>
c0de619c:	8860      	ldrh	r0, [r4, #2]
c0de619e:	68e1      	ldr	r1, [r4, #12]
c0de61a0:	3001      	adds	r0, #1
c0de61a2:	8060      	strh	r0, [r4, #2]
c0de61a4:	b119      	cbz	r1, c0de61ae <ux_stack_display_elements+0xaa>
c0de61a6:	2000      	movs	r0, #0
c0de61a8:	2500      	movs	r5, #0
c0de61aa:	4788      	blx	r1
c0de61ac:	b108      	cbz	r0, c0de61b2 <ux_stack_display_elements+0xae>
c0de61ae:	7825      	ldrb	r5, [r4, #0]
c0de61b0:	e000      	b.n	c0de61b4 <ux_stack_display_elements+0xb0>
c0de61b2:	8065      	strh	r5, [r4, #2]
c0de61b4:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de61b8:	f2c0 0000 	movt	r0, #0
c0de61bc:	4448      	add	r0, r9
c0de61be:	7045      	strb	r5, [r0, #1]
c0de61c0:	b001      	add	sp, #4
c0de61c2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de61c6 <cx_ecdsa_sign_no_throw>:
c0de61c6:	b403      	push	{r0, r1}
c0de61c8:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de61cc:	e01c      	b.n	c0de6208 <cx_trampoline_helper>

c0de61ce <cx_ecfp_generate_pair_no_throw>:
c0de61ce:	b403      	push	{r0, r1}
c0de61d0:	f04f 0032 	mov.w	r0, #50	@ 0x32
c0de61d4:	e018      	b.n	c0de6208 <cx_trampoline_helper>

c0de61d6 <cx_ecfp_init_private_key_no_throw>:
c0de61d6:	b403      	push	{r0, r1}
c0de61d8:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de61dc:	e014      	b.n	c0de6208 <cx_trampoline_helper>

c0de61de <cx_ecfp_init_public_key_no_throw>:
c0de61de:	b403      	push	{r0, r1}
c0de61e0:	f04f 0034 	mov.w	r0, #52	@ 0x34
c0de61e4:	e010      	b.n	c0de6208 <cx_trampoline_helper>

c0de61e6 <cx_hash_no_throw>:
c0de61e6:	b403      	push	{r0, r1}
c0de61e8:	f04f 0044 	mov.w	r0, #68	@ 0x44
c0de61ec:	e00c      	b.n	c0de6208 <cx_trampoline_helper>

c0de61ee <cx_hash_sha256>:
c0de61ee:	b403      	push	{r0, r1}
c0de61f0:	f04f 0046 	mov.w	r0, #70	@ 0x46
c0de61f4:	e008      	b.n	c0de6208 <cx_trampoline_helper>

c0de61f6 <cx_ripemd160_init_no_throw>:
c0de61f6:	b403      	push	{r0, r1}
c0de61f8:	f04f 0068 	mov.w	r0, #104	@ 0x68
c0de61fc:	e004      	b.n	c0de6208 <cx_trampoline_helper>
	...

c0de6200 <cx_aes_siv_reset>:
c0de6200:	b403      	push	{r0, r1}
c0de6202:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6206:	e7ff      	b.n	c0de6208 <cx_trampoline_helper>

c0de6208 <cx_trampoline_helper>:
c0de6208:	4900      	ldr	r1, [pc, #0]	@ (c0de620c <cx_trampoline_helper+0x4>)
c0de620a:	4708      	bx	r1
c0de620c:	00808001 	.word	0x00808001

c0de6210 <os_boot>:
c0de6210:	2000      	movs	r0, #0
c0de6212:	f000 bb9e 	b.w	c0de6952 <try_context_set>

c0de6216 <os_longjmp>:
c0de6216:	4604      	mov	r4, r0
c0de6218:	f000 fb91 	bl	c0de693e <try_context_get>
c0de621c:	4621      	mov	r1, r4
c0de621e:	f000 fc3f 	bl	c0de6aa0 <longjmp>
	...

c0de6224 <os_reset>:
c0de6224:	f7fe f81d 	bl	c0de4262 <os_io_seph_cmd_se_reset>
c0de6228:	e7fe      	b.n	c0de6228 <os_reset+0x4>
	...

c0de622c <snprintf>:
c0de622c:	b081      	sub	sp, #4
c0de622e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6232:	b091      	sub	sp, #68	@ 0x44
c0de6234:	2800      	cmp	r0, #0
c0de6236:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de623a:	9319      	str	r3, [sp, #100]	@ 0x64
c0de623c:	f000 82a2 	beq.w	c0de6784 <snprintf+0x558>
c0de6240:	460d      	mov	r5, r1
c0de6242:	2900      	cmp	r1, #0
c0de6244:	f000 829e 	beq.w	c0de6784 <snprintf+0x558>
c0de6248:	4629      	mov	r1, r5
c0de624a:	4614      	mov	r4, r2
c0de624c:	4683      	mov	fp, r0
c0de624e:	f000 fbcf 	bl	c0de69f0 <__aeabi_memclr>
c0de6252:	7820      	ldrb	r0, [r4, #0]
c0de6254:	a919      	add	r1, sp, #100	@ 0x64
c0de6256:	2800      	cmp	r0, #0
c0de6258:	9108      	str	r1, [sp, #32]
c0de625a:	f000 8292 	beq.w	c0de6782 <snprintf+0x556>
c0de625e:	f1a5 0c01 	sub.w	ip, r5, #1
c0de6262:	2600      	movs	r6, #0
c0de6264:	9103      	str	r1, [sp, #12]
c0de6266:	bf00      	nop
c0de6268:	f04f 0a00 	mov.w	sl, #0
c0de626c:	b140      	cbz	r0, c0de6280 <snprintf+0x54>
c0de626e:	2825      	cmp	r0, #37	@ 0x25
c0de6270:	d006      	beq.n	c0de6280 <snprintf+0x54>
c0de6272:	eb04 000a 	add.w	r0, r4, sl
c0de6276:	7840      	ldrb	r0, [r0, #1]
c0de6278:	f10a 0a01 	add.w	sl, sl, #1
c0de627c:	e7f6      	b.n	c0de626c <snprintf+0x40>
c0de627e:	bf00      	nop
c0de6280:	f1ba 0f00 	cmp.w	sl, #0
c0de6284:	d016      	beq.n	c0de62b4 <snprintf+0x88>
c0de6286:	f1bc 0f00 	cmp.w	ip, #0
c0de628a:	4456      	add	r6, sl
c0de628c:	d010      	beq.n	c0de62b0 <snprintf+0x84>
c0de628e:	4665      	mov	r5, ip
c0de6290:	45d4      	cmp	ip, sl
c0de6292:	bf88      	it	hi
c0de6294:	4655      	movhi	r5, sl
c0de6296:	4658      	mov	r0, fp
c0de6298:	4621      	mov	r1, r4
c0de629a:	462a      	mov	r2, r5
c0de629c:	4667      	mov	r7, ip
c0de629e:	f000 fbac 	bl	c0de69fa <__aeabi_memmove>
c0de62a2:	46bc      	mov	ip, r7
c0de62a4:	f814 000a 	ldrb.w	r0, [r4, sl]
c0de62a8:	44ab      	add	fp, r5
c0de62aa:	eba7 0c05 	sub.w	ip, r7, r5
c0de62ae:	e001      	b.n	c0de62b4 <snprintf+0x88>
c0de62b0:	f04f 0c00 	mov.w	ip, #0
c0de62b4:	2825      	cmp	r0, #37	@ 0x25
c0de62b6:	4454      	add	r4, sl
c0de62b8:	f040 824c 	bne.w	c0de6754 <snprintf+0x528>
c0de62bc:	3401      	adds	r4, #1
c0de62be:	f04f 0800 	mov.w	r8, #0
c0de62c2:	2020      	movs	r0, #32
c0de62c4:	2100      	movs	r1, #0
c0de62c6:	2200      	movs	r2, #0
c0de62c8:	3401      	adds	r4, #1
c0de62ca:	f814 3c01 	ldrb.w	r3, [r4, #-1]
c0de62ce:	3401      	adds	r4, #1
c0de62d0:	2b2d      	cmp	r3, #45	@ 0x2d
c0de62d2:	dc0f      	bgt.n	c0de62f4 <snprintf+0xc8>
c0de62d4:	f04f 0200 	mov.w	r2, #0
c0de62d8:	d0f7      	beq.n	c0de62ca <snprintf+0x9e>
c0de62da:	2b25      	cmp	r3, #37	@ 0x25
c0de62dc:	f000 80f1 	beq.w	c0de64c2 <snprintf+0x296>
c0de62e0:	2b2a      	cmp	r3, #42	@ 0x2a
c0de62e2:	f040 824b 	bne.w	c0de677c <snprintf+0x550>
c0de62e6:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
c0de62ea:	2973      	cmp	r1, #115	@ 0x73
c0de62ec:	f040 8246 	bne.w	c0de677c <snprintf+0x550>
c0de62f0:	2202      	movs	r2, #2
c0de62f2:	e024      	b.n	c0de633e <snprintf+0x112>
c0de62f4:	2b47      	cmp	r3, #71	@ 0x47
c0de62f6:	dc27      	bgt.n	c0de6348 <snprintf+0x11c>
c0de62f8:	f1a3 0730 	sub.w	r7, r3, #48	@ 0x30
c0de62fc:	2f0a      	cmp	r7, #10
c0de62fe:	d20d      	bcs.n	c0de631c <snprintf+0xf0>
c0de6300:	f083 0730 	eor.w	r7, r3, #48	@ 0x30
c0de6304:	ea57 0708 	orrs.w	r7, r7, r8
c0de6308:	eb08 0788 	add.w	r7, r8, r8, lsl #2
c0de630c:	eb03 0347 	add.w	r3, r3, r7, lsl #1
c0de6310:	bf08      	it	eq
c0de6312:	2030      	moveq	r0, #48	@ 0x30
c0de6314:	f1a3 0830 	sub.w	r8, r3, #48	@ 0x30
c0de6318:	3c01      	subs	r4, #1
c0de631a:	e7d5      	b.n	c0de62c8 <snprintf+0x9c>
c0de631c:	2b2e      	cmp	r3, #46	@ 0x2e
c0de631e:	f040 822d 	bne.w	c0de677c <snprintf+0x550>
c0de6322:	f814 1c01 	ldrb.w	r1, [r4, #-1]
c0de6326:	292a      	cmp	r1, #42	@ 0x2a
c0de6328:	f040 8228 	bne.w	c0de677c <snprintf+0x550>
c0de632c:	7821      	ldrb	r1, [r4, #0]
c0de632e:	2201      	movs	r2, #1
c0de6330:	2948      	cmp	r1, #72	@ 0x48
c0de6332:	d004      	beq.n	c0de633e <snprintf+0x112>
c0de6334:	2968      	cmp	r1, #104	@ 0x68
c0de6336:	d002      	beq.n	c0de633e <snprintf+0x112>
c0de6338:	2973      	cmp	r1, #115	@ 0x73
c0de633a:	f040 821f 	bne.w	c0de677c <snprintf+0x550>
c0de633e:	9b03      	ldr	r3, [sp, #12]
c0de6340:	f853 1b04 	ldr.w	r1, [r3], #4
c0de6344:	9303      	str	r3, [sp, #12]
c0de6346:	e7bf      	b.n	c0de62c8 <snprintf+0x9c>
c0de6348:	2b67      	cmp	r3, #103	@ 0x67
c0de634a:	dc0b      	bgt.n	c0de6364 <snprintf+0x138>
c0de634c:	2b62      	cmp	r3, #98	@ 0x62
c0de634e:	dc11      	bgt.n	c0de6374 <snprintf+0x148>
c0de6350:	2b48      	cmp	r3, #72	@ 0x48
c0de6352:	f000 80c2 	beq.w	c0de64da <snprintf+0x2ae>
c0de6356:	2b58      	cmp	r3, #88	@ 0x58
c0de6358:	f040 8210 	bne.w	c0de677c <snprintf+0x550>
c0de635c:	f8cd b018 	str.w	fp, [sp, #24]
c0de6360:	2101      	movs	r1, #1
c0de6362:	e025      	b.n	c0de63b0 <snprintf+0x184>
c0de6364:	2b72      	cmp	r3, #114	@ 0x72
c0de6366:	dc1a      	bgt.n	c0de639e <snprintf+0x172>
c0de6368:	2b68      	cmp	r3, #104	@ 0x68
c0de636a:	f000 80be 	beq.w	c0de64ea <snprintf+0x2be>
c0de636e:	2b70      	cmp	r3, #112	@ 0x70
c0de6370:	d01b      	beq.n	c0de63aa <snprintf+0x17e>
c0de6372:	e203      	b.n	c0de677c <snprintf+0x550>
c0de6374:	2b63      	cmp	r3, #99	@ 0x63
c0de6376:	f000 80bb 	beq.w	c0de64f0 <snprintf+0x2c4>
c0de637a:	2b64      	cmp	r3, #100	@ 0x64
c0de637c:	f040 81fe 	bne.w	c0de677c <snprintf+0x550>
c0de6380:	9903      	ldr	r1, [sp, #12]
c0de6382:	f8cd b018 	str.w	fp, [sp, #24]
c0de6386:	6809      	ldr	r1, [r1, #0]
c0de6388:	f1b1 3fff 	cmp.w	r1, #4294967295	@ 0xffffffff
c0de638c:	f340 81e6 	ble.w	c0de675c <snprintf+0x530>
c0de6390:	2200      	movs	r2, #0
c0de6392:	f04f 0b0a 	mov.w	fp, #10
c0de6396:	9202      	str	r2, [sp, #8]
c0de6398:	2200      	movs	r2, #0
c0de639a:	9200      	str	r2, [sp, #0]
c0de639c:	e00f      	b.n	c0de63be <snprintf+0x192>
c0de639e:	2b73      	cmp	r3, #115	@ 0x73
c0de63a0:	f000 80b5 	beq.w	c0de650e <snprintf+0x2e2>
c0de63a4:	2b78      	cmp	r3, #120	@ 0x78
c0de63a6:	f040 81e9 	bne.w	c0de677c <snprintf+0x550>
c0de63aa:	2100      	movs	r1, #0
c0de63ac:	f8cd b018 	str.w	fp, [sp, #24]
c0de63b0:	9100      	str	r1, [sp, #0]
c0de63b2:	9903      	ldr	r1, [sp, #12]
c0de63b4:	f04f 0b10 	mov.w	fp, #16
c0de63b8:	6809      	ldr	r1, [r1, #0]
c0de63ba:	2200      	movs	r2, #0
c0de63bc:	9202      	str	r2, [sp, #8]
c0de63be:	9401      	str	r4, [sp, #4]
c0de63c0:	458b      	cmp	fp, r1
c0de63c2:	460c      	mov	r4, r1
c0de63c4:	d903      	bls.n	c0de63ce <snprintf+0x1a2>
c0de63c6:	f04f 0a01 	mov.w	sl, #1
c0de63ca:	2101      	movs	r1, #1
c0de63cc:	e00f      	b.n	c0de63ee <snprintf+0x1c2>
c0de63ce:	2302      	movs	r3, #2
c0de63d0:	465a      	mov	r2, fp
c0de63d2:	bf00      	nop
c0de63d4:	4692      	mov	sl, r2
c0de63d6:	fbab 2702 	umull	r2, r7, fp, r2
c0de63da:	2f00      	cmp	r7, #0
c0de63dc:	bf18      	it	ne
c0de63de:	2701      	movne	r7, #1
c0de63e0:	42a2      	cmp	r2, r4
c0de63e2:	4619      	mov	r1, r3
c0de63e4:	d803      	bhi.n	c0de63ee <snprintf+0x1c2>
c0de63e6:	2f00      	cmp	r7, #0
c0de63e8:	f101 0301 	add.w	r3, r1, #1
c0de63ec:	d0f2      	beq.n	c0de63d4 <snprintf+0x1a8>
c0de63ee:	9b02      	ldr	r3, [sp, #8]
c0de63f0:	b2c0      	uxtb	r0, r0
c0de63f2:	4419      	add	r1, r3
c0de63f4:	ebb8 0701 	subs.w	r7, r8, r1
c0de63f8:	9607      	str	r6, [sp, #28]
c0de63fa:	f04f 0600 	mov.w	r6, #0
c0de63fe:	bf38      	it	cc
c0de6400:	4637      	movcc	r7, r6
c0de6402:	9004      	str	r0, [sp, #16]
c0de6404:	3830      	subs	r0, #48	@ 0x30
c0de6406:	f083 0201 	eor.w	r2, r3, #1
c0de640a:	bf18      	it	ne
c0de640c:	2001      	movne	r0, #1
c0de640e:	4310      	orrs	r0, r2
c0de6410:	d105      	bne.n	c0de641e <snprintf+0x1f2>
c0de6412:	202d      	movs	r0, #45	@ 0x2d
c0de6414:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de6418:	2000      	movs	r0, #0
c0de641a:	2601      	movs	r6, #1
c0de641c:	9002      	str	r0, [sp, #8]
c0de641e:	4541      	cmp	r1, r8
c0de6420:	9405      	str	r4, [sp, #20]
c0de6422:	d22f      	bcs.n	c0de6484 <snprintf+0x258>
c0de6424:	f1c6 0520 	rsb	r5, r6, #32
c0de6428:	42af      	cmp	r7, r5
c0de642a:	bf98      	it	ls
c0de642c:	463d      	movls	r5, r7
c0de642e:	b145      	cbz	r5, c0de6442 <snprintf+0x216>
c0de6430:	a809      	add	r0, sp, #36	@ 0x24
c0de6432:	9a04      	ldr	r2, [sp, #16]
c0de6434:	4430      	add	r0, r6
c0de6436:	4629      	mov	r1, r5
c0de6438:	46e0      	mov	r8, ip
c0de643a:	f000 fae0 	bl	c0de69fe <__aeabi_memset>
c0de643e:	46c4      	mov	ip, r8
c0de6440:	442e      	add	r6, r5
c0de6442:	2e20      	cmp	r6, #32
c0de6444:	eba7 0705 	sub.w	r7, r7, r5
c0de6448:	d31a      	bcc.n	c0de6480 <snprintf+0x254>
c0de644a:	b1cf      	cbz	r7, c0de6480 <snprintf+0x254>
c0de644c:	9807      	ldr	r0, [sp, #28]
c0de644e:	f1bc 0f00 	cmp.w	ip, #0
c0de6452:	4430      	add	r0, r6
c0de6454:	9007      	str	r0, [sp, #28]
c0de6456:	d010      	beq.n	c0de647a <snprintf+0x24e>
c0de6458:	45b4      	cmp	ip, r6
c0de645a:	bf98      	it	ls
c0de645c:	4666      	movls	r6, ip
c0de645e:	9d06      	ldr	r5, [sp, #24]
c0de6460:	a909      	add	r1, sp, #36	@ 0x24
c0de6462:	4628      	mov	r0, r5
c0de6464:	4632      	mov	r2, r6
c0de6466:	4664      	mov	r4, ip
c0de6468:	f000 fac5 	bl	c0de69f6 <__aeabi_memcpy>
c0de646c:	46a4      	mov	ip, r4
c0de646e:	9c05      	ldr	r4, [sp, #20]
c0de6470:	4435      	add	r5, r6
c0de6472:	ebac 0c06 	sub.w	ip, ip, r6
c0de6476:	9506      	str	r5, [sp, #24]
c0de6478:	e001      	b.n	c0de647e <snprintf+0x252>
c0de647a:	f04f 0c00 	mov.w	ip, #0
c0de647e:	2600      	movs	r6, #0
c0de6480:	2f00      	cmp	r7, #0
c0de6482:	d1cf      	bne.n	c0de6424 <snprintf+0x1f8>
c0de6484:	9802      	ldr	r0, [sp, #8]
c0de6486:	2800      	cmp	r0, #0
c0de6488:	f000 80e3 	beq.w	c0de6652 <snprintf+0x426>
c0de648c:	2e20      	cmp	r6, #32
c0de648e:	f0c0 80dc 	bcc.w	c0de664a <snprintf+0x41e>
c0de6492:	9807      	ldr	r0, [sp, #28]
c0de6494:	f1bc 0f00 	cmp.w	ip, #0
c0de6498:	4430      	add	r0, r6
c0de649a:	9007      	str	r0, [sp, #28]
c0de649c:	f000 80d2 	beq.w	c0de6644 <snprintf+0x418>
c0de64a0:	45b4      	cmp	ip, r6
c0de64a2:	bf98      	it	ls
c0de64a4:	4666      	movls	r6, ip
c0de64a6:	9d06      	ldr	r5, [sp, #24]
c0de64a8:	a909      	add	r1, sp, #36	@ 0x24
c0de64aa:	4628      	mov	r0, r5
c0de64ac:	4632      	mov	r2, r6
c0de64ae:	4664      	mov	r4, ip
c0de64b0:	f000 faa1 	bl	c0de69f6 <__aeabi_memcpy>
c0de64b4:	46a4      	mov	ip, r4
c0de64b6:	9c05      	ldr	r4, [sp, #20]
c0de64b8:	4435      	add	r5, r6
c0de64ba:	ebac 0c06 	sub.w	ip, ip, r6
c0de64be:	9506      	str	r5, [sp, #24]
c0de64c0:	e0c2      	b.n	c0de6648 <snprintf+0x41c>
c0de64c2:	3601      	adds	r6, #1
c0de64c4:	f1bc 0f00 	cmp.w	ip, #0
c0de64c8:	bf0f      	iteee	eq
c0de64ca:	f04f 0c00 	moveq.w	ip, #0
c0de64ce:	2025      	movne	r0, #37	@ 0x25
c0de64d0:	f80b 0b01 	strbne.w	r0, [fp], #1
c0de64d4:	f1ac 0c01 	subne.w	ip, ip, #1
c0de64d8:	e136      	b.n	c0de6748 <snprintf+0x51c>
c0de64da:	9607      	str	r6, [sp, #28]
c0de64dc:	f642 363a 	movw	r6, #11066	@ 0x2b3a
c0de64e0:	f2c0 0600 	movt	r6, #0
c0de64e4:	2001      	movs	r0, #1
c0de64e6:	447e      	add	r6, pc
c0de64e8:	e018      	b.n	c0de651c <snprintf+0x2f0>
c0de64ea:	2001      	movs	r0, #1
c0de64ec:	9607      	str	r6, [sp, #28]
c0de64ee:	e010      	b.n	c0de6512 <snprintf+0x2e6>
c0de64f0:	9803      	ldr	r0, [sp, #12]
c0de64f2:	f1bc 0f00 	cmp.w	ip, #0
c0de64f6:	f100 0804 	add.w	r8, r0, #4
c0de64fa:	f106 0601 	add.w	r6, r6, #1
c0de64fe:	f000 813a 	beq.w	c0de6776 <snprintf+0x54a>
c0de6502:	6800      	ldr	r0, [r0, #0]
c0de6504:	f1ac 0c01 	sub.w	ip, ip, #1
c0de6508:	f80b 0b01 	strb.w	r0, [fp], #1
c0de650c:	e11e      	b.n	c0de674c <snprintf+0x520>
c0de650e:	9607      	str	r6, [sp, #28]
c0de6510:	2000      	movs	r0, #0
c0de6512:	f642 26f6 	movw	r6, #10998	@ 0x2af6
c0de6516:	f2c0 0600 	movt	r6, #0
c0de651a:	447e      	add	r6, pc
c0de651c:	9b03      	ldr	r3, [sp, #12]
c0de651e:	b2d2      	uxtb	r2, r2
c0de6520:	f853 eb04 	ldr.w	lr, [r3], #4
c0de6524:	9303      	str	r3, [sp, #12]
c0de6526:	b1f2      	cbz	r2, c0de6566 <snprintf+0x33a>
c0de6528:	2a01      	cmp	r2, #1
c0de652a:	d025      	beq.n	c0de6578 <snprintf+0x34c>
c0de652c:	2a02      	cmp	r2, #2
c0de652e:	d124      	bne.n	c0de657a <snprintf+0x34e>
c0de6530:	f89e 0000 	ldrb.w	r0, [lr]
c0de6534:	9e07      	ldr	r6, [sp, #28]
c0de6536:	2800      	cmp	r0, #0
c0de6538:	f04f 0520 	mov.w	r5, #32
c0de653c:	f040 811e 	bne.w	c0de677c <snprintf+0x550>
c0de6540:	2900      	cmp	r1, #0
c0de6542:	f000 8101 	beq.w	c0de6748 <snprintf+0x51c>
c0de6546:	4608      	mov	r0, r1
c0de6548:	4662      	mov	r2, ip
c0de654a:	bf00      	nop
c0de654c:	2a00      	cmp	r2, #0
c0de654e:	bf0f      	iteee	eq
c0de6550:	2200      	moveq	r2, #0
c0de6552:	f80b 5b01 	strbne.w	r5, [fp], #1
c0de6556:	f1ac 0c01 	subne.w	ip, ip, #1
c0de655a:	4662      	movne	r2, ip
c0de655c:	3801      	subs	r0, #1
c0de655e:	d1f5      	bne.n	c0de654c <snprintf+0x320>
c0de6560:	440e      	add	r6, r1
c0de6562:	4688      	mov	r8, r1
c0de6564:	e0dc      	b.n	c0de6720 <snprintf+0x4f4>
c0de6566:	2100      	movs	r1, #0
c0de6568:	f81e 2001 	ldrb.w	r2, [lr, r1]
c0de656c:	3101      	adds	r1, #1
c0de656e:	2a00      	cmp	r2, #0
c0de6570:	d1fa      	bne.n	c0de6568 <snprintf+0x33c>
c0de6572:	f1a1 0a01 	sub.w	sl, r1, #1
c0de6576:	e000      	b.n	c0de657a <snprintf+0x34e>
c0de6578:	468a      	mov	sl, r1
c0de657a:	2800      	cmp	r0, #0
c0de657c:	d04a      	beq.n	c0de6614 <snprintf+0x3e8>
c0de657e:	f1ba 0f00 	cmp.w	sl, #0
c0de6582:	f000 80c5 	beq.w	c0de6710 <snprintf+0x4e4>
c0de6586:	2700      	movs	r7, #0
c0de6588:	2500      	movs	r5, #0
c0de658a:	9401      	str	r4, [sp, #4]
c0de658c:	f81e 0005 	ldrb.w	r0, [lr, r5]
c0de6590:	ab09      	add	r3, sp, #36	@ 0x24
c0de6592:	0901      	lsrs	r1, r0, #4
c0de6594:	f000 000f 	and.w	r0, r0, #15
c0de6598:	5c30      	ldrb	r0, [r6, r0]
c0de659a:	5c71      	ldrb	r1, [r6, r1]
c0de659c:	19da      	adds	r2, r3, r7
c0de659e:	7050      	strb	r0, [r2, #1]
c0de65a0:	f1a7 001d 	sub.w	r0, r7, #29
c0de65a4:	55d9      	strb	r1, [r3, r7]
c0de65a6:	f110 0f21 	cmn.w	r0, #33	@ 0x21
c0de65aa:	f107 0702 	add.w	r7, r7, #2
c0de65ae:	d818      	bhi.n	c0de65e2 <snprintf+0x3b6>
c0de65b0:	9807      	ldr	r0, [sp, #28]
c0de65b2:	f1bc 0f00 	cmp.w	ip, #0
c0de65b6:	4438      	add	r0, r7
c0de65b8:	9007      	str	r0, [sp, #28]
c0de65ba:	d00f      	beq.n	c0de65dc <snprintf+0x3b0>
c0de65bc:	45bc      	cmp	ip, r7
c0de65be:	bf98      	it	ls
c0de65c0:	4667      	movls	r7, ip
c0de65c2:	4658      	mov	r0, fp
c0de65c4:	a909      	add	r1, sp, #36	@ 0x24
c0de65c6:	463a      	mov	r2, r7
c0de65c8:	46e0      	mov	r8, ip
c0de65ca:	4674      	mov	r4, lr
c0de65cc:	f000 fa13 	bl	c0de69f6 <__aeabi_memcpy>
c0de65d0:	46c4      	mov	ip, r8
c0de65d2:	46a6      	mov	lr, r4
c0de65d4:	44bb      	add	fp, r7
c0de65d6:	eba8 0c07 	sub.w	ip, r8, r7
c0de65da:	e001      	b.n	c0de65e0 <snprintf+0x3b4>
c0de65dc:	f04f 0c00 	mov.w	ip, #0
c0de65e0:	2700      	movs	r7, #0
c0de65e2:	3501      	adds	r5, #1
c0de65e4:	45aa      	cmp	sl, r5
c0de65e6:	d1d1      	bne.n	c0de658c <snprintf+0x360>
c0de65e8:	2f00      	cmp	r7, #0
c0de65ea:	f04f 0520 	mov.w	r5, #32
c0de65ee:	f000 80bc 	beq.w	c0de676a <snprintf+0x53e>
c0de65f2:	9e07      	ldr	r6, [sp, #28]
c0de65f4:	f1bc 0f00 	cmp.w	ip, #0
c0de65f8:	443e      	add	r6, r7
c0de65fa:	f000 80b9 	beq.w	c0de6770 <snprintf+0x544>
c0de65fe:	45bc      	cmp	ip, r7
c0de6600:	bf98      	it	ls
c0de6602:	4667      	movls	r7, ip
c0de6604:	4658      	mov	r0, fp
c0de6606:	a909      	add	r1, sp, #36	@ 0x24
c0de6608:	463a      	mov	r2, r7
c0de660a:	4664      	mov	r4, ip
c0de660c:	f000 f9f3 	bl	c0de69f6 <__aeabi_memcpy>
c0de6610:	46d0      	mov	r8, sl
c0de6612:	e012      	b.n	c0de663a <snprintf+0x40e>
c0de6614:	9807      	ldr	r0, [sp, #28]
c0de6616:	f1bc 0f00 	cmp.w	ip, #0
c0de661a:	4450      	add	r0, sl
c0de661c:	9007      	str	r0, [sp, #28]
c0de661e:	d07b      	beq.n	c0de6718 <snprintf+0x4ec>
c0de6620:	4667      	mov	r7, ip
c0de6622:	9401      	str	r4, [sp, #4]
c0de6624:	45d4      	cmp	ip, sl
c0de6626:	bf88      	it	hi
c0de6628:	4657      	movhi	r7, sl
c0de662a:	4658      	mov	r0, fp
c0de662c:	4671      	mov	r1, lr
c0de662e:	463a      	mov	r2, r7
c0de6630:	4664      	mov	r4, ip
c0de6632:	f000 f9e2 	bl	c0de69fa <__aeabi_memmove>
c0de6636:	9e07      	ldr	r6, [sp, #28]
c0de6638:	2520      	movs	r5, #32
c0de663a:	eba4 0c07 	sub.w	ip, r4, r7
c0de663e:	9c01      	ldr	r4, [sp, #4]
c0de6640:	44bb      	add	fp, r7
c0de6642:	e06d      	b.n	c0de6720 <snprintf+0x4f4>
c0de6644:	f04f 0c00 	mov.w	ip, #0
c0de6648:	2600      	movs	r6, #0
c0de664a:	a809      	add	r0, sp, #36	@ 0x24
c0de664c:	212d      	movs	r1, #45	@ 0x2d
c0de664e:	5581      	strb	r1, [r0, r6]
c0de6650:	3601      	adds	r6, #1
c0de6652:	9803      	ldr	r0, [sp, #12]
c0de6654:	f1ba 0f00 	cmp.w	sl, #0
c0de6658:	f100 0804 	add.w	r8, r0, #4
c0de665c:	d03a      	beq.n	c0de66d4 <snprintf+0x4a8>
c0de665e:	9800      	ldr	r0, [sp, #0]
c0de6660:	f642 17b2 	movw	r7, #10674	@ 0x29b2
c0de6664:	2800      	cmp	r0, #0
c0de6666:	f2c0 0700 	movt	r7, #0
c0de666a:	f642 109c 	movw	r0, #10652	@ 0x299c
c0de666e:	447f      	add	r7, pc
c0de6670:	f2c0 0000 	movt	r0, #0
c0de6674:	4478      	add	r0, pc
c0de6676:	bf08      	it	eq
c0de6678:	4607      	moveq	r7, r0
c0de667a:	bf00      	nop
c0de667c:	2e20      	cmp	r6, #32
c0de667e:	d319      	bcc.n	c0de66b4 <snprintf+0x488>
c0de6680:	9807      	ldr	r0, [sp, #28]
c0de6682:	f1bc 0f00 	cmp.w	ip, #0
c0de6686:	4430      	add	r0, r6
c0de6688:	9007      	str	r0, [sp, #28]
c0de668a:	d010      	beq.n	c0de66ae <snprintf+0x482>
c0de668c:	45b4      	cmp	ip, r6
c0de668e:	bf98      	it	ls
c0de6690:	4666      	movls	r6, ip
c0de6692:	9d06      	ldr	r5, [sp, #24]
c0de6694:	a909      	add	r1, sp, #36	@ 0x24
c0de6696:	4628      	mov	r0, r5
c0de6698:	4632      	mov	r2, r6
c0de669a:	4664      	mov	r4, ip
c0de669c:	f000 f9ab 	bl	c0de69f6 <__aeabi_memcpy>
c0de66a0:	46a4      	mov	ip, r4
c0de66a2:	9c05      	ldr	r4, [sp, #20]
c0de66a4:	4435      	add	r5, r6
c0de66a6:	ebac 0c06 	sub.w	ip, ip, r6
c0de66aa:	9506      	str	r5, [sp, #24]
c0de66ac:	e001      	b.n	c0de66b2 <snprintf+0x486>
c0de66ae:	f04f 0c00 	mov.w	ip, #0
c0de66b2:	2600      	movs	r6, #0
c0de66b4:	fbb4 f0fa 	udiv	r0, r4, sl
c0de66b8:	45d3      	cmp	fp, sl
c0de66ba:	fbb0 f1fb 	udiv	r1, r0, fp
c0de66be:	fbba fafb 	udiv	sl, sl, fp
c0de66c2:	fb01 001b 	mls	r0, r1, fp, r0
c0de66c6:	a909      	add	r1, sp, #36	@ 0x24
c0de66c8:	5c38      	ldrb	r0, [r7, r0]
c0de66ca:	5588      	strb	r0, [r1, r6]
c0de66cc:	f106 0601 	add.w	r6, r6, #1
c0de66d0:	d9d4      	bls.n	c0de667c <snprintf+0x450>
c0de66d2:	e000      	b.n	c0de66d6 <snprintf+0x4aa>
c0de66d4:	b1be      	cbz	r6, c0de6706 <snprintf+0x4da>
c0de66d6:	9807      	ldr	r0, [sp, #28]
c0de66d8:	f1bc 0f00 	cmp.w	ip, #0
c0de66dc:	4430      	add	r0, r6
c0de66de:	9007      	str	r0, [sp, #28]
c0de66e0:	d00f      	beq.n	c0de6702 <snprintf+0x4d6>
c0de66e2:	45b4      	cmp	ip, r6
c0de66e4:	bf98      	it	ls
c0de66e6:	4666      	movls	r6, ip
c0de66e8:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de66ec:	a909      	add	r1, sp, #36	@ 0x24
c0de66ee:	4658      	mov	r0, fp
c0de66f0:	4632      	mov	r2, r6
c0de66f2:	4664      	mov	r4, ip
c0de66f4:	f000 f97f 	bl	c0de69f6 <__aeabi_memcpy>
c0de66f8:	46a4      	mov	ip, r4
c0de66fa:	44b3      	add	fp, r6
c0de66fc:	eba4 0c06 	sub.w	ip, r4, r6
c0de6700:	e003      	b.n	c0de670a <snprintf+0x4de>
c0de6702:	f04f 0c00 	mov.w	ip, #0
c0de6706:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de670a:	9e07      	ldr	r6, [sp, #28]
c0de670c:	9c01      	ldr	r4, [sp, #4]
c0de670e:	e01d      	b.n	c0de674c <snprintf+0x520>
c0de6710:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de6714:	9e07      	ldr	r6, [sp, #28]
c0de6716:	e019      	b.n	c0de674c <snprintf+0x520>
c0de6718:	9e07      	ldr	r6, [sp, #28]
c0de671a:	f04f 0c00 	mov.w	ip, #0
c0de671e:	2520      	movs	r5, #32
c0de6720:	45d0      	cmp	r8, sl
c0de6722:	d911      	bls.n	c0de6748 <snprintf+0x51c>
c0de6724:	eb08 0006 	add.w	r0, r8, r6
c0de6728:	ebaa 0108 	sub.w	r1, sl, r8
c0de672c:	4662      	mov	r2, ip
c0de672e:	bf00      	nop
c0de6730:	2a00      	cmp	r2, #0
c0de6732:	bf0f      	iteee	eq
c0de6734:	2200      	moveq	r2, #0
c0de6736:	f80b 5b01 	strbne.w	r5, [fp], #1
c0de673a:	f1ac 0c01 	subne.w	ip, ip, #1
c0de673e:	4662      	movne	r2, ip
c0de6740:	3101      	adds	r1, #1
c0de6742:	d3f5      	bcc.n	c0de6730 <snprintf+0x504>
c0de6744:	eba0 060a 	sub.w	r6, r0, sl
c0de6748:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de674c:	f814 0d01 	ldrb.w	r0, [r4, #-1]!
c0de6750:	f8cd 800c 	str.w	r8, [sp, #12]
c0de6754:	2800      	cmp	r0, #0
c0de6756:	f47f ad87 	bne.w	c0de6268 <snprintf+0x3c>
c0de675a:	e013      	b.n	c0de6784 <snprintf+0x558>
c0de675c:	2200      	movs	r2, #0
c0de675e:	4249      	negs	r1, r1
c0de6760:	9200      	str	r2, [sp, #0]
c0de6762:	f04f 0b0a 	mov.w	fp, #10
c0de6766:	2201      	movs	r2, #1
c0de6768:	e628      	b.n	c0de63bc <snprintf+0x190>
c0de676a:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de676e:	e7cc      	b.n	c0de670a <snprintf+0x4de>
c0de6770:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de6774:	9c01      	ldr	r4, [sp, #4]
c0de6776:	f04f 0c00 	mov.w	ip, #0
c0de677a:	e7e7      	b.n	c0de674c <snprintf+0x520>
c0de677c:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de6780:	e000      	b.n	c0de6784 <snprintf+0x558>
c0de6782:	2600      	movs	r6, #0
c0de6784:	4630      	mov	r0, r6
c0de6786:	b011      	add	sp, #68	@ 0x44
c0de6788:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de678c:	b001      	add	sp, #4
c0de678e:	4770      	bx	lr

c0de6790 <pic>:
c0de6790:	490a      	ldr	r1, [pc, #40]	@ (c0de67bc <pic+0x2c>)
c0de6792:	4281      	cmp	r1, r0
c0de6794:	490a      	ldr	r1, [pc, #40]	@ (c0de67c0 <pic+0x30>)
c0de6796:	d806      	bhi.n	c0de67a6 <pic+0x16>
c0de6798:	4281      	cmp	r1, r0
c0de679a:	d304      	bcc.n	c0de67a6 <pic+0x16>
c0de679c:	b580      	push	{r7, lr}
c0de679e:	f000 f815 	bl	c0de67cc <pic_internal>
c0de67a2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de67a6:	4907      	ldr	r1, [pc, #28]	@ (c0de67c4 <pic+0x34>)
c0de67a8:	4288      	cmp	r0, r1
c0de67aa:	4a07      	ldr	r2, [pc, #28]	@ (c0de67c8 <pic+0x38>)
c0de67ac:	d305      	bcc.n	c0de67ba <pic+0x2a>
c0de67ae:	4290      	cmp	r0, r2
c0de67b0:	bf88      	it	hi
c0de67b2:	4770      	bxhi	lr
c0de67b4:	1a40      	subs	r0, r0, r1
c0de67b6:	464a      	mov	r2, r9
c0de67b8:	4410      	add	r0, r2
c0de67ba:	4770      	bx	lr
c0de67bc:	c0de0000 	.word	0xc0de0000
c0de67c0:	c0ded440 	.word	0xc0ded440
c0de67c4:	da7a0000 	.word	0xda7a0000
c0de67c8:	da7aa000 	.word	0xda7aa000

c0de67cc <pic_internal>:
c0de67cc:	467a      	mov	r2, pc
c0de67ce:	4902      	ldr	r1, [pc, #8]	@ (c0de67d8 <pic_internal+0xc>)
c0de67d0:	1cc9      	adds	r1, r1, #3
c0de67d2:	1a89      	subs	r1, r1, r2
c0de67d4:	1a40      	subs	r0, r0, r1
c0de67d6:	4770      	bx	lr
c0de67d8:	c0de67cd 	.word	0xc0de67cd

c0de67dc <SVC_Call>:
c0de67dc:	df01      	svc	1
c0de67de:	2900      	cmp	r1, #0
c0de67e0:	d100      	bne.n	c0de67e4 <exception>
c0de67e2:	4770      	bx	lr

c0de67e4 <exception>:
c0de67e4:	4608      	mov	r0, r1
c0de67e6:	f7ff fd16 	bl	c0de6216 <os_longjmp>

c0de67ea <nvm_write>:
c0de67ea:	b580      	push	{r7, lr}
c0de67ec:	b084      	sub	sp, #16
c0de67ee:	ab01      	add	r3, sp, #4
c0de67f0:	c307      	stmia	r3!, {r0, r1, r2}
c0de67f2:	2003      	movs	r0, #3
c0de67f4:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de67f8:	a901      	add	r1, sp, #4
c0de67fa:	f7ff ffef 	bl	c0de67dc <SVC_Call>
c0de67fe:	b004      	add	sp, #16
c0de6800:	bd80      	pop	{r7, pc}

c0de6802 <os_perso_isonboarded>:
c0de6802:	b580      	push	{r7, lr}
c0de6804:	b082      	sub	sp, #8
c0de6806:	2000      	movs	r0, #0
c0de6808:	9001      	str	r0, [sp, #4]
c0de680a:	4669      	mov	r1, sp
c0de680c:	209f      	movs	r0, #159	@ 0x9f
c0de680e:	f7ff ffe5 	bl	c0de67dc <SVC_Call>
c0de6812:	b2c0      	uxtb	r0, r0
c0de6814:	b002      	add	sp, #8
c0de6816:	bd80      	pop	{r7, pc}

c0de6818 <os_perso_derive_node_bip32>:
c0de6818:	b580      	push	{r7, lr}
c0de681a:	b086      	sub	sp, #24
c0de681c:	f10d 0e04 	add.w	lr, sp, #4
c0de6820:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de6824:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de6828:	2053      	movs	r0, #83	@ 0x53
c0de682a:	f2c0 5000 	movt	r0, #1280	@ 0x500
c0de682e:	a901      	add	r1, sp, #4
c0de6830:	f7ff ffd4 	bl	c0de67dc <SVC_Call>
c0de6834:	b006      	add	sp, #24
c0de6836:	bd80      	pop	{r7, pc}

c0de6838 <os_pki_load_certificate>:
c0de6838:	b580      	push	{r7, lr}
c0de683a:	b086      	sub	sp, #24
c0de683c:	e9dd ec08 	ldrd	lr, ip, [sp, #32]
c0de6840:	e88d 400f 	stmia.w	sp, {r0, r1, r2, r3, lr}
c0de6844:	20aa      	movs	r0, #170	@ 0xaa
c0de6846:	f2c0 6000 	movt	r0, #1536	@ 0x600
c0de684a:	4669      	mov	r1, sp
c0de684c:	f8cd c014 	str.w	ip, [sp, #20]
c0de6850:	f7ff ffc4 	bl	c0de67dc <SVC_Call>
c0de6854:	b006      	add	sp, #24
c0de6856:	bd80      	pop	{r7, pc}

c0de6858 <os_perso_is_pin_set>:
c0de6858:	b580      	push	{r7, lr}
c0de685a:	b082      	sub	sp, #8
c0de685c:	2000      	movs	r0, #0
c0de685e:	9001      	str	r0, [sp, #4]
c0de6860:	4669      	mov	r1, sp
c0de6862:	209e      	movs	r0, #158	@ 0x9e
c0de6864:	f7ff ffba 	bl	c0de67dc <SVC_Call>
c0de6868:	b2c0      	uxtb	r0, r0
c0de686a:	b002      	add	sp, #8
c0de686c:	bd80      	pop	{r7, pc}

c0de686e <os_global_pin_is_validated>:
c0de686e:	b580      	push	{r7, lr}
c0de6870:	b082      	sub	sp, #8
c0de6872:	2000      	movs	r0, #0
c0de6874:	9001      	str	r0, [sp, #4]
c0de6876:	4669      	mov	r1, sp
c0de6878:	20a0      	movs	r0, #160	@ 0xa0
c0de687a:	f7ff ffaf 	bl	c0de67dc <SVC_Call>
c0de687e:	b2c0      	uxtb	r0, r0
c0de6880:	b002      	add	sp, #8
c0de6882:	bd80      	pop	{r7, pc}

c0de6884 <os_ux>:
c0de6884:	b580      	push	{r7, lr}
c0de6886:	b082      	sub	sp, #8
c0de6888:	9000      	str	r0, [sp, #0]
c0de688a:	2000      	movs	r0, #0
c0de688c:	9001      	str	r0, [sp, #4]
c0de688e:	2064      	movs	r0, #100	@ 0x64
c0de6890:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6894:	4669      	mov	r1, sp
c0de6896:	f7ff ffa1 	bl	c0de67dc <SVC_Call>
c0de689a:	b002      	add	sp, #8
c0de689c:	bd80      	pop	{r7, pc}

c0de689e <os_flags>:
c0de689e:	b580      	push	{r7, lr}
c0de68a0:	b082      	sub	sp, #8
c0de68a2:	2000      	movs	r0, #0
c0de68a4:	9001      	str	r0, [sp, #4]
c0de68a6:	4669      	mov	r1, sp
c0de68a8:	206a      	movs	r0, #106	@ 0x6a
c0de68aa:	f7ff ff97 	bl	c0de67dc <SVC_Call>
c0de68ae:	b002      	add	sp, #8
c0de68b0:	bd80      	pop	{r7, pc}

c0de68b2 <os_registry_get_current_app_tag>:
c0de68b2:	b580      	push	{r7, lr}
c0de68b4:	b084      	sub	sp, #16
c0de68b6:	ab01      	add	r3, sp, #4
c0de68b8:	c307      	stmia	r3!, {r0, r1, r2}
c0de68ba:	2074      	movs	r0, #116	@ 0x74
c0de68bc:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de68c0:	a901      	add	r1, sp, #4
c0de68c2:	f7ff ff8b 	bl	c0de67dc <SVC_Call>
c0de68c6:	b004      	add	sp, #16
c0de68c8:	bd80      	pop	{r7, pc}

c0de68ca <os_sched_exit>:
c0de68ca:	b082      	sub	sp, #8
c0de68cc:	9000      	str	r0, [sp, #0]
c0de68ce:	2000      	movs	r0, #0
c0de68d0:	9001      	str	r0, [sp, #4]
c0de68d2:	209a      	movs	r0, #154	@ 0x9a
c0de68d4:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de68d8:	4669      	mov	r1, sp
c0de68da:	f7ff ff7f 	bl	c0de67dc <SVC_Call>
c0de68de:	deff      	udf	#255	@ 0xff

c0de68e0 <os_io_init>:
c0de68e0:	b580      	push	{r7, lr}
c0de68e2:	b082      	sub	sp, #8
c0de68e4:	9001      	str	r0, [sp, #4]
c0de68e6:	2084      	movs	r0, #132	@ 0x84
c0de68e8:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de68ec:	a901      	add	r1, sp, #4
c0de68ee:	f7ff ff75 	bl	c0de67dc <SVC_Call>
c0de68f2:	b002      	add	sp, #8
c0de68f4:	bd80      	pop	{r7, pc}

c0de68f6 <os_io_start>:
c0de68f6:	b580      	push	{r7, lr}
c0de68f8:	b082      	sub	sp, #8
c0de68fa:	2000      	movs	r0, #0
c0de68fc:	9001      	str	r0, [sp, #4]
c0de68fe:	2085      	movs	r0, #133	@ 0x85
c0de6900:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6904:	4669      	mov	r1, sp
c0de6906:	f7ff ff69 	bl	c0de67dc <SVC_Call>
c0de690a:	b002      	add	sp, #8
c0de690c:	bd80      	pop	{r7, pc}

c0de690e <os_io_tx_cmd>:
c0de690e:	b580      	push	{r7, lr}
c0de6910:	b084      	sub	sp, #16
c0de6912:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de6916:	2088      	movs	r0, #136	@ 0x88
c0de6918:	f2c0 4000 	movt	r0, #1024	@ 0x400
c0de691c:	4669      	mov	r1, sp
c0de691e:	f7ff ff5d 	bl	c0de67dc <SVC_Call>
c0de6922:	b004      	add	sp, #16
c0de6924:	bd80      	pop	{r7, pc}

c0de6926 <os_io_rx_evt>:
c0de6926:	b580      	push	{r7, lr}
c0de6928:	b084      	sub	sp, #16
c0de692a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de692e:	2089      	movs	r0, #137	@ 0x89
c0de6930:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de6934:	4669      	mov	r1, sp
c0de6936:	f7ff ff51 	bl	c0de67dc <SVC_Call>
c0de693a:	b004      	add	sp, #16
c0de693c:	bd80      	pop	{r7, pc}

c0de693e <try_context_get>:
c0de693e:	b580      	push	{r7, lr}
c0de6940:	b082      	sub	sp, #8
c0de6942:	2000      	movs	r0, #0
c0de6944:	9001      	str	r0, [sp, #4]
c0de6946:	4669      	mov	r1, sp
c0de6948:	2087      	movs	r0, #135	@ 0x87
c0de694a:	f7ff ff47 	bl	c0de67dc <SVC_Call>
c0de694e:	b002      	add	sp, #8
c0de6950:	bd80      	pop	{r7, pc}

c0de6952 <try_context_set>:
c0de6952:	b580      	push	{r7, lr}
c0de6954:	b082      	sub	sp, #8
c0de6956:	9000      	str	r0, [sp, #0]
c0de6958:	2000      	movs	r0, #0
c0de695a:	9001      	str	r0, [sp, #4]
c0de695c:	f240 100b 	movw	r0, #267	@ 0x10b
c0de6960:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6964:	4669      	mov	r1, sp
c0de6966:	f7ff ff39 	bl	c0de67dc <SVC_Call>
c0de696a:	b002      	add	sp, #8
c0de696c:	bd80      	pop	{r7, pc}

c0de696e <os_sched_last_status>:
c0de696e:	b580      	push	{r7, lr}
c0de6970:	b082      	sub	sp, #8
c0de6972:	9000      	str	r0, [sp, #0]
c0de6974:	2000      	movs	r0, #0
c0de6976:	9001      	str	r0, [sp, #4]
c0de6978:	209c      	movs	r0, #156	@ 0x9c
c0de697a:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de697e:	4669      	mov	r1, sp
c0de6980:	f7ff ff2c 	bl	c0de67dc <SVC_Call>
c0de6984:	b2c0      	uxtb	r0, r0
c0de6986:	b002      	add	sp, #8
c0de6988:	bd80      	pop	{r7, pc}

c0de698a <screen_update>:
c0de698a:	b580      	push	{r7, lr}
c0de698c:	b082      	sub	sp, #8
c0de698e:	2000      	movs	r0, #0
c0de6990:	9001      	str	r0, [sp, #4]
c0de6992:	4669      	mov	r1, sp
c0de6994:	207a      	movs	r0, #122	@ 0x7a
c0de6996:	f7ff ff21 	bl	c0de67dc <SVC_Call>
c0de699a:	b002      	add	sp, #8
c0de699c:	bd80      	pop	{r7, pc}

c0de699e <bagl_hal_draw_bitmap_within_rect>:
c0de699e:	b570      	push	{r4, r5, r6, lr}
c0de69a0:	b08a      	sub	sp, #40	@ 0x28
c0de69a2:	f8dd c048 	ldr.w	ip, [sp, #72]	@ 0x48
c0de69a6:	e9dd 4e10 	ldrd	r4, lr, [sp, #64]	@ 0x40
c0de69aa:	e9dd 650e 	ldrd	r6, r5, [sp, #56]	@ 0x38
c0de69ae:	9001      	str	r0, [sp, #4]
c0de69b0:	207c      	movs	r0, #124	@ 0x7c
c0de69b2:	9102      	str	r1, [sp, #8]
c0de69b4:	f6c0 1000 	movt	r0, #2304	@ 0x900
c0de69b8:	a901      	add	r1, sp, #4
c0de69ba:	9203      	str	r2, [sp, #12]
c0de69bc:	9304      	str	r3, [sp, #16]
c0de69be:	9605      	str	r6, [sp, #20]
c0de69c0:	e9cd 5406 	strd	r5, r4, [sp, #24]
c0de69c4:	e9cd ec08 	strd	lr, ip, [sp, #32]
c0de69c8:	f7ff ff08 	bl	c0de67dc <SVC_Call>
c0de69cc:	b00a      	add	sp, #40	@ 0x28
c0de69ce:	bd70      	pop	{r4, r5, r6, pc}

c0de69d0 <bagl_hal_draw_rect>:
c0de69d0:	b580      	push	{r7, lr}
c0de69d2:	b086      	sub	sp, #24
c0de69d4:	f10d 0e04 	add.w	lr, sp, #4
c0de69d8:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de69dc:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de69e0:	207d      	movs	r0, #125	@ 0x7d
c0de69e2:	f2c0 5000 	movt	r0, #1280	@ 0x500
c0de69e6:	a901      	add	r1, sp, #4
c0de69e8:	f7ff fef8 	bl	c0de67dc <SVC_Call>
c0de69ec:	b006      	add	sp, #24
c0de69ee:	bd80      	pop	{r7, pc}

c0de69f0 <__aeabi_memclr>:
c0de69f0:	2200      	movs	r2, #0
c0de69f2:	f000 b804 	b.w	c0de69fe <__aeabi_memset>

c0de69f6 <__aeabi_memcpy>:
c0de69f6:	f000 b81d 	b.w	c0de6a34 <memcpy>

c0de69fa <__aeabi_memmove>:
c0de69fa:	f000 b829 	b.w	c0de6a50 <memmove>

c0de69fe <__aeabi_memset>:
c0de69fe:	4613      	mov	r3, r2
c0de6a00:	460a      	mov	r2, r1
c0de6a02:	4619      	mov	r1, r3
c0de6a04:	f000 b83e 	b.w	c0de6a84 <memset>

c0de6a08 <explicit_bzero>:
c0de6a08:	f000 b800 	b.w	c0de6a0c <bzero>

c0de6a0c <bzero>:
c0de6a0c:	460a      	mov	r2, r1
c0de6a0e:	2100      	movs	r1, #0
c0de6a10:	f000 b838 	b.w	c0de6a84 <memset>

c0de6a14 <memcmp>:
c0de6a14:	b510      	push	{r4, lr}
c0de6a16:	3901      	subs	r1, #1
c0de6a18:	4402      	add	r2, r0
c0de6a1a:	4290      	cmp	r0, r2
c0de6a1c:	d101      	bne.n	c0de6a22 <memcmp+0xe>
c0de6a1e:	2000      	movs	r0, #0
c0de6a20:	e005      	b.n	c0de6a2e <memcmp+0x1a>
c0de6a22:	7803      	ldrb	r3, [r0, #0]
c0de6a24:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de6a28:	42a3      	cmp	r3, r4
c0de6a2a:	d001      	beq.n	c0de6a30 <memcmp+0x1c>
c0de6a2c:	1b18      	subs	r0, r3, r4
c0de6a2e:	bd10      	pop	{r4, pc}
c0de6a30:	3001      	adds	r0, #1
c0de6a32:	e7f2      	b.n	c0de6a1a <memcmp+0x6>

c0de6a34 <memcpy>:
c0de6a34:	440a      	add	r2, r1
c0de6a36:	4291      	cmp	r1, r2
c0de6a38:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de6a3c:	d100      	bne.n	c0de6a40 <memcpy+0xc>
c0de6a3e:	4770      	bx	lr
c0de6a40:	b510      	push	{r4, lr}
c0de6a42:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de6a46:	4291      	cmp	r1, r2
c0de6a48:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de6a4c:	d1f9      	bne.n	c0de6a42 <memcpy+0xe>
c0de6a4e:	bd10      	pop	{r4, pc}

c0de6a50 <memmove>:
c0de6a50:	4288      	cmp	r0, r1
c0de6a52:	b510      	push	{r4, lr}
c0de6a54:	eb01 0402 	add.w	r4, r1, r2
c0de6a58:	d902      	bls.n	c0de6a60 <memmove+0x10>
c0de6a5a:	4284      	cmp	r4, r0
c0de6a5c:	4623      	mov	r3, r4
c0de6a5e:	d807      	bhi.n	c0de6a70 <memmove+0x20>
c0de6a60:	1e43      	subs	r3, r0, #1
c0de6a62:	42a1      	cmp	r1, r4
c0de6a64:	d008      	beq.n	c0de6a78 <memmove+0x28>
c0de6a66:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de6a6a:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de6a6e:	e7f8      	b.n	c0de6a62 <memmove+0x12>
c0de6a70:	4601      	mov	r1, r0
c0de6a72:	4402      	add	r2, r0
c0de6a74:	428a      	cmp	r2, r1
c0de6a76:	d100      	bne.n	c0de6a7a <memmove+0x2a>
c0de6a78:	bd10      	pop	{r4, pc}
c0de6a7a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de6a7e:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de6a82:	e7f7      	b.n	c0de6a74 <memmove+0x24>

c0de6a84 <memset>:
c0de6a84:	4603      	mov	r3, r0
c0de6a86:	4402      	add	r2, r0
c0de6a88:	4293      	cmp	r3, r2
c0de6a8a:	d100      	bne.n	c0de6a8e <memset+0xa>
c0de6a8c:	4770      	bx	lr
c0de6a8e:	f803 1b01 	strb.w	r1, [r3], #1
c0de6a92:	e7f9      	b.n	c0de6a88 <memset+0x4>

c0de6a94 <setjmp>:
c0de6a94:	46ec      	mov	ip, sp
c0de6a96:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6a9a:	f04f 0000 	mov.w	r0, #0
c0de6a9e:	4770      	bx	lr

c0de6aa0 <longjmp>:
c0de6aa0:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6aa4:	46e5      	mov	sp, ip
c0de6aa6:	0008      	movs	r0, r1
c0de6aa8:	bf08      	it	eq
c0de6aaa:	2001      	moveq	r0, #1
c0de6aac:	4770      	bx	lr
c0de6aae:	bf00      	nop

c0de6ab0 <strcmp>:
c0de6ab0:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de6ab4:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de6ab8:	2a01      	cmp	r2, #1
c0de6aba:	bf28      	it	cs
c0de6abc:	429a      	cmpcs	r2, r3
c0de6abe:	d0f7      	beq.n	c0de6ab0 <strcmp>
c0de6ac0:	1ad0      	subs	r0, r2, r3
c0de6ac2:	4770      	bx	lr

c0de6ac4 <strlen>:
c0de6ac4:	4603      	mov	r3, r0
c0de6ac6:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de6aca:	2a00      	cmp	r2, #0
c0de6acc:	d1fb      	bne.n	c0de6ac6 <strlen+0x2>
c0de6ace:	1a18      	subs	r0, r3, r0
c0de6ad0:	3801      	subs	r0, #1
c0de6ad2:	4770      	bx	lr

c0de6ad4 <strncpy>:
c0de6ad4:	4603      	mov	r3, r0
c0de6ad6:	b510      	push	{r4, lr}
c0de6ad8:	3901      	subs	r1, #1
c0de6ada:	b132      	cbz	r2, c0de6aea <strncpy+0x16>
c0de6adc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de6ae0:	3a01      	subs	r2, #1
c0de6ae2:	f803 4b01 	strb.w	r4, [r3], #1
c0de6ae6:	2c00      	cmp	r4, #0
c0de6ae8:	d1f7      	bne.n	c0de6ada <strncpy+0x6>
c0de6aea:	2100      	movs	r1, #0
c0de6aec:	441a      	add	r2, r3
c0de6aee:	4293      	cmp	r3, r2
c0de6af0:	d100      	bne.n	c0de6af4 <strncpy+0x20>
c0de6af2:	bd10      	pop	{r4, pc}
c0de6af4:	f803 1b01 	strb.w	r1, [r3], #1
c0de6af8:	e7f9      	b.n	c0de6aee <strncpy+0x1a>

c0de6afa <_ecode>:
	...

c0de6afc <C_digit_dot_colors>:
c0de6afc:	0000 0000 ffff 00ff                         ........

c0de6b04 <C_icon_app_bitmap>:
c0de6b04:	ffff ffff ffff e43f e01f f18f e0c7 e467     ......?.......g.
c0de6b14:	e627 e307 f18f f807 fc27 ffff ffff ffff     '.......'.......

c0de6b24 <C_icon_app>:
c0de6b24:	0010 0000 0010 0000 0001 0000 6afc c0de     .............j..
c0de6b34:	6b04 c0de                                   .k..

c0de6b38 <C_icon_crossmark_bitmap>:
c0de6b38:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0de6b48:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0de6b54 <C_icon_crossmark>:
c0de6b54:	000e 0000 000e 0000 0001 0000 6afc c0de     .............j..
c0de6b64:	6b38 c0de                                   8k..

c0de6b68 <C_icon_dashboard_bitmap>:
c0de6b68:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0de6b78:	00cc c033 000c 0000 0000 0000               ..3.........

c0de6b84 <C_icon_dashboard>:
c0de6b84:	000e 0000 000e 0000 0001 0000 6afc c0de     .............j..
c0de6b94:	6b68 c0de                                   hk..

c0de6b98 <C_icon_validate_14_bitmap>:
c0de6b98:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0de6ba8:	007e 800f 0001 0000 0000 0000               ~...........

c0de6bb4 <C_icon_validate_14>:
c0de6bb4:	000e 0000 000e 0000 0001 0000 6afc c0de     .............j..
c0de6bc4:	6b98 c0de                                   .k..

c0de6bc8 <C_icon_left_bitmap>:
c0de6bc8:	1248 0842                                   H.B.

c0de6bcc <C_icon_left>:
c0de6bcc:	0004 0000 0007 0000 0001 0000 6afc c0de     .............j..
c0de6bdc:	6bc8 c0de                                   .k..

c0de6be0 <C_icon_right_bitmap>:
c0de6be0:	8421 0124                                   !.$.

c0de6be4 <C_icon_right>:
c0de6be4:	0004 0000 0007 0000 0001 0000 6afc c0de     .............j..
c0de6bf4:	6be0 c0de 6425 6d00 6773 2f73 6e69 7570     .k..%d.msgs/inpu
c0de6c04:	7374 632f 696f 736e 4e00 206f 7265 6f72     ts/coins.No erro
c0de6c14:	0072 6964 7073 616c 2079 6170 6567 6f20     r.display page o
c0de6c24:	7475 6f20 2066 6172 676e 0065 6566 0065     ut of range.fee.
c0de6c34:	5f68 7061 7270 766f 0065 5f68 6170 6967     h_approve.h_pagi
c0de6c44:	676e 695f 636e 6572 7361 0065 5f68 6170     ng_increase.h_pa
c0de6c54:	6967 676e 635f 6e61 645f 6365 6572 7361     ging_can_decreas
c0de6c64:	2065 4f4e 4400 7665 6c65 706f 6465 6220     e NO.Developed b
c0de6c74:	3a79 2500 2073 2528 2f64 6425 0029 736d     y:.%s (%d/%d).ms
c0de6c84:	7367 762f 6c61 6575 612f 6f6d 6e75 0074     gs/value/amount.
c0de6c94:	6e55 7865 6570 7463 6465 6320 6168 6172     Unexpected chara
c0de6ca4:	7463 7265 0073 6e55 7865 6570 7463 6465     cters.Unexpected
c0de6cb4:	6620 6569 646c 2f00 4a00 4f53 2e4e 5420      field./.JSON. T
c0de6cc4:	6f6f 6d20 6e61 2079 6f74 656b 736e 2500     oo many tokens.%
c0de6cd4:	2a2e 0073 534a 4e4f 4d20 7369 6973 676e     .*s.JSON Missing
c0de6ce4:	6d20 6773 0073 534a 4e4f 5520 656e 7078      msgs.JSON Unexp
c0de6cf4:	6365 6574 2064 7265 6f72 0072 6863 6961     ected error.chai
c0de6d04:	5f6e 6469 2000 7325 6800 705f 6761 6e69     n_id. %s.h_pagin
c0de6d14:	5f67 6e69 7469 2500 0073 6964 7073 616c     g_init.%s.displa
c0de6d24:	2079 6e69 6564 2078 756f 2074 666f 7220     y index out of r
c0de6d34:	6e61 6567 4400 4645 5541 544c 4320 6168     ange.DEFAULT Cha
c0de6d44:	6e69 0020 6556 7372 6f69 3a6e 4300 6168     in .Version:.Cha
c0de6d54:	6e69 6920 2073 4f4e 2054 4544 4146 4c55     in is NOT DEFAUL
c0de6d64:	0054 6175 6f74 006d 5f68 6572 656a 7463     T.uatom.h_reject
c0de6d74:	7500 6470 7461 2065 6449 2078 6425 252f     .update Idx %d/%
c0de6d84:	0064 5b20 6425 252f 5d64 6100 6f6d 6e75     d. [%d/%d].amoun
c0de6d94:	0074 6572 6976 7765 5600 6c61 6575 6f20     t.review.Value o
c0de6da4:	7475 6f20 2066 6172 676e 0065 696d 7373     ut of range.miss
c0de6db4:	6e69 2067 6966 6c65 0064 736d 7367 6800     ing field.msgs.h
c0de6dc4:	705f 6761 6e69 5f67 6163 5f6e 6564 7263     _paging_can_decr
c0de6dd4:	6165 6573 5500 656e 7078 6365 6574 2064     ease.Unexpected 
c0de6de4:	6863 6961 006e 534a 4e4f 7320 7274 6e69     chain.JSON strin
c0de6df4:	2067 7369 6e20 746f 6320 6d6f 6c70 7465     g is not complet
c0de6e04:	0065 003f 6170 6567 2d2d 4100 6170 6863     e.?.page--.Apach
c0de6e14:	2065 2e32 0030 6552 6461 0079 0027 7469     e 2.0.Ready.'.it
c0de6e24:	6d65 2d2d 4a00 4f53 204e 694d 7373 6e69     em--.JSON Missin
c0de6e34:	2067 6863 6961 5f6e 6469 7300 7165 6575     g chain_id.seque
c0de6e44:	636e 0065 7071 727a 3979 3878 6667 7432     nce.qpzry9x8gf2t
c0de6e54:	6476 3077 3373 6e6a 3435 686b 6563 6d36     vdw0s3jn54khce6m
c0de6e64:	6175 6c37 4500 706d 7974 4a00 4f53 204e     ua7l.Empty.JSON 
c0de6e74:	694d 7373 6e69 2067 656d 6f6d 6d00 6773     Missing memo.msg
c0de6e84:	2f73 7974 6570 6300 736f 6f6d 6873 6275     s/type.cosmoshub
c0de6e94:	342d 4a00 4f53 204e 6944 7463 6f69 616e     -4.JSON Dictiona
c0de6ea4:	6972 7365 6120 6572 6e20 746f 7320 726f     ries are not sor
c0de6eb4:	6574 0064 5245 4f52 0052 534a 4e4f 4d20     ted.ERROR.JSON M
c0de6ec4:	7369 6973 676e 7320 7165 6575 636e 0065     issing sequence.
c0de6ed4:	656d 6f6d 4100 5050 4f52 4556 4a00 4f53     memo.APPROVE.JSO
c0de6ee4:	204e 694d 7373 6e69 2067 6361 6f63 6e75     N Missing accoun
c0de6ef4:	2074 756e 626d 7265 6800 705f 6761 6e69     t number.h_pagin
c0de6f04:	5f67 6564 7263 6165 6573 4920 7864 2520     g_decrease Idx %
c0de6f14:	0064 5f68 6572 6976 7765 755f 6470 7461     d.h_review_updat
c0de6f24:	5f65 6164 6174 2d20 4720 7465 754e 496d     e_data - GetNumI
c0de6f34:	6574 736d 3d3d 554e 4c4c 5000 656c 7361     tems==NULL.Pleas
c0de6f44:	0065 2e2e 002e 5441 4d4f 4f00 006b 4552     e.....ATOM.Ok.RE
c0de6f54:	454a 5443 4100 6464 6572 7373 4a00 4f53     JECT.Address.JSO
c0de6f64:	204e 694d 7373 6e69 2067 6566 0065 7551     N Missing fee.Qu
c0de6f74:	7469 4900 696e 6974 6c61 7a69 6465 6520     it.Initialized e
c0de6f84:	706d 7974 6320 6e6f 6574 7478 6100 6464     mpty context.add
c0de6f94:	5f72 6567 4974 6574 206d 6425 252f 0064     r_getItem %d/%d.
c0de6fa4:	6566 2f65 6d61 756f 746e 4e00 206f 6f6d     fee/amount.No mo
c0de6fb4:	6572 6420 7461 0061 6e55 6572 6f63 6e67     re data.Unrecogn
c0de6fc4:	7a69 6465 6520 7272 726f 6320 646f 0065     ized error code.
c0de6fd4:	6f5a 646e 7861 632e 0068 6461 7264 675f     Zondax.ch.addr_g
c0de6fe4:	7465 754e 496d 6574 736d 4a00 4f53 204e     etNumItems.JSON 
c0de6ff4:	6f43 746e 6961 736e 7720 6968 6574 7073     Contains whitesp
c0de7004:	6361 2065 6e69 7420 6568 6320 726f 7570     ace in the corpu
c0de7014:	0073 694c 6563 736e 3a65 7000 7261 6573     s.License:.parse
c0de7024:	707c 7261 6573 0064 5500 656e 7078 6365     |parsed..Unexpec
c0de7034:	6574 2064 7564 6c70 6369 7461 6465 6620     ted duplicated f
c0de7044:	6569 646c 6900 6574 206d 7571 7265 2079     ield.item query 
c0de7054:	6572 7574 6e72 6465 6e20 206f 6572 7573     returned no resu
c0de7064:	746c 0073 534a 4e4f 202e 655a 6f72 7420     lts.JSON. Zero t
c0de7074:	6b6f 6e65 0073 736d 7367 762f 6c61 6575     okens.msgs/value
c0de7084:	642f 6c65 6765 7461 726f 615f 6464 6572     /delegator_addre
c0de7094:	7373 6400 6e65 6d6f 5500 656e 7078 6365     ss.denom.Unexpec
c0de70a4:	6574 2064 7562 6666 7265 6520 646e 5500     ted buffer end.U
c0de70b4:	656e 7078 6365 6574 2064 6576 7372 6f69     nexpected versio
c0de70c4:	006e 736d 7367 6f2f 7475 7570 7374 632f     n.msgs/outputs/c
c0de70d4:	696f 736e 4e00 626f 656c 3036 5000 7461     oins.Noble60.Pat
c0de70e4:	0068 6361 6f63 6e75 5f74 756e 626d 7265     h.account_number
c0de70f4:	6800 725f 7665 6569 5f77 7075 6164 6574     .h_review_update
c0de7104:	645f 7461 2061 202d 6547 4974 6574 3d6d     _data - GetItem=
c0de7114:	4e3d 4c55 004c 3276 332e 2e32 0031 6425     =NULL.v2.32.1.%d
c0de7124:	252f 0064 7325 0020 5245 3f52 3f3f           /%d.%s .ERR???.

c0de7133 <key_substitutions>:
c0de7133:	6863 6961 5f6e 6469 0000 0000 0000 0000     chain_id........
	...
c0de7163:	0000 6843 6961 206e 4449 0000 0000 0000     ..Chain ID......
	...
c0de7197:	6361 6f63 6e75 5f74 756e 626d 7265 0000     account_number..
	...
c0de71c7:	0000 6341 6f63 6e75 0074 0000 0000 0000     ..Account.......
	...
c0de71fb:	6573 7571 6e65 6563 0000 0000 0000 0000     sequence........
	...
c0de722b:	0000 6553 7571 6e65 6563 0000 0000 0000     ..Sequence......
	...
c0de725f:	656d 6f6d 0000 0000 0000 0000 0000 0000     memo............
	...
c0de728f:	0000 654d 6f6d 0000 0000 0000 0000 0000     ..Memo..........
	...
c0de72c3:	6566 2f65 6d61 756f 746e 0000 0000 0000     fee/amount......
	...
c0de72f3:	0000 6546 0065 0000 0000 0000 0000 0000     ..Fee...........
	...
c0de7327:	6566 2f65 6167 0073 0000 0000 0000 0000     fee/gas.........
	...
c0de7357:	0000 6147 0073 0000 0000 0000 0000 0000     ..Gas...........
	...
c0de738b:	736d 7367 742f 7079 0065 0000 0000 0000     msgs/type.......
	...
c0de73bb:	0000 7954 6570 0000 0000 0000 0000 0000     ..Type..........
	...
c0de73ef:	736d 7367 692f 706e 7475 2f73 6461 7264     msgs/inputs/addr
c0de73ff:	7365 0073 0000 0000 0000 0000 0000 0000     ess.............
	...
c0de741f:	0000 6f53 7275 6563 4120 6464 6572 7373     ..Source Address
	...
c0de7453:	736d 7367 692f 706e 7475 2f73 6f63 6e69     msgs/inputs/coin
c0de7463:	0073 0000 0000 0000 0000 0000 0000 0000     s...............
	...
c0de7483:	0000 6f53 7275 6563 4320 696f 736e 0000     ..Source Coins..
	...
c0de74b7:	736d 7367 6f2f 7475 7570 7374 612f 6464     msgs/outputs/add
c0de74c7:	6572 7373 0000 0000 0000 0000 0000 0000     ress............
	...
c0de74e7:	0000 6544 7473 4120 6464 6572 7373 0000     ..Dest Address..
	...
c0de751b:	736d 7367 6f2f 7475 7570 7374 632f 696f     msgs/outputs/coi
c0de752b:	736e 0000 0000 0000 0000 0000 0000 0000     ns..............
	...
c0de754b:	0000 6544 7473 4320 696f 736e 0000 0000     ..Dest Coins....
	...
c0de757f:	736d 7367 762f 6c61 6575 662f 6f72 5f6d     msgs/value/from_
c0de758f:	6461 7264 7365 0073 0000 0000 0000 0000     address.........
	...
c0de75af:	0000 7246 6d6f 0000 0000 0000 0000 0000     ..From..........
	...
c0de75e3:	736d 7367 762f 6c61 6575 742f 5f6f 6461     msgs/value/to_ad
c0de75f3:	7264 7365 0073 0000 0000 0000 0000 0000     dress...........
	...
c0de7613:	0000 6f54 0000 0000 0000 0000 0000 0000     ..To............
	...
c0de7647:	736d 7367 762f 6c61 6575 612f 6f6d 6e75     msgs/value/amoun
c0de7657:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
	...
c0de7677:	0000 6d41 756f 746e 0000 0000 0000 0000     ..Amount........
	...
c0de76ab:	736d 7367 762f 6c61 6575 642f 6c65 6765     msgs/value/deleg
c0de76bb:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0de76db:	0000 6544 656c 6167 6f74 0072 0000 0000     ..Delegator.....
	...
c0de770f:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de771f:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0de773f:	0000 6156 696c 6164 6f74 0072 0000 0000     ..Validator.....
	...
c0de7773:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de7783:	7461 726f 735f 6372 615f 6464 6572 7373     ator_src_address
	...
c0de77a3:	0000 6156 696c 6164 6f74 2072 6f53 7275     ..Validator Sour
c0de77b3:	6563 0000 0000 0000 0000 0000 0000 0000     ce..............
	...
c0de77d7:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de77e7:	7461 726f 645f 7473 615f 6464 6572 7373     ator_dst_address
	...
c0de7807:	0000 6156 696c 6164 6f74 2072 6544 7473     ..Validator Dest
	...
c0de783b:	736d 7367 762f 6c61 6575 642f 7365 7263     msgs/value/descr
c0de784b:	7069 6974 6e6f 0000 0000 0000 0000 0000     iption..........
	...
c0de786b:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0de789f:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0de78af:	6c61 645f 7065 736f 7469 612f 6f6d 6e75     al_deposit/amoun
c0de78bf:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
c0de78cf:	0000 6544 6f70 6973 2074 6d41 756f 746e     ..Deposit Amount
	...
c0de7903:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0de7913:	6c61 645f 7065 736f 7469 642f 6e65 6d6f     al_deposit/denom
	...
c0de7933:	0000 6544 6f70 6973 2074 6544 6f6e 006d     ..Deposit Denom.
	...
c0de7967:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de7977:	6173 5f6c 7974 6570 0000 0000 0000 0000     sal_type........
	...
c0de7997:	0000 7250 706f 736f 6c61 0000 0000 0000     ..Proposal......
	...
c0de79cb:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de79db:	6573 0072 0000 0000 0000 0000 0000 0000     ser.............
	...
c0de79fb:	0000 7250 706f 736f 7265 0000 0000 0000     ..Proposer......
	...
c0de7a2f:	736d 7367 762f 6c61 6575 742f 7469 656c     msgs/value/title
	...
c0de7a5f:	0000 6954 6c74 0065 0000 0000 0000 0000     ..Title.........
	...
c0de7a93:	736d 7367 762f 6c61 6575 642f 7065 736f     msgs/value/depos
c0de7aa3:	7469 7265 0000 0000 0000 0000 0000 0000     iter............
	...
c0de7ac3:	0000 6553 646e 7265 0000 0000 0000 0000     ..Sender........
	...
c0de7af7:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de7b07:	6173 5f6c 6469 0000 0000 0000 0000 0000     sal_id..........
	...
c0de7b27:	0000 7250 706f 736f 6c61 4920 0044 0000     ..Proposal ID...
	...
c0de7b5b:	736d 7367 762f 6c61 6575 612f 6f6d 6e75     msgs/value/amoun
c0de7b6b:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
	...
c0de7b8b:	0000 6d41 756f 746e 0000 0000 0000 0000     ..Amount........
	...
c0de7bbf:	736d 7367 762f 6c61 6575 762f 746f 7265     msgs/value/voter
	...
c0de7bef:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0de7c23:	736d 7367 762f 6c61 6575 6f2f 7470 6f69     msgs/value/optio
c0de7c33:	006e 0000 0000 0000 0000 0000 0000 0000     n...............
	...
c0de7c53:	0000 704f 6974 6e6f 0000 0000 0000 0000     ..Option........
	...

c0de7c87 <value_substitutions>:
c0de7c87:	6f63 6d73 736f 732d 6b64 4d2f 6773 6553     cosmos-sdk/MsgSe
c0de7c97:	646e 0000 0000 0000 0000 0000 0000 0000     nd..............
	...
c0de7cb7:	0000 6553 646e 0000 0000 0000 0000 0000     ..Send..........
	...
c0de7ceb:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0de7cfb:	656c 6167 6574 0000 0000 0000 0000 0000     legate..........
	...
c0de7d1b:	0000 6544 656c 6167 6574 0000 0000 0000     ..Delegate......
	...
c0de7d4f:	6f63 6d73 736f 732d 6b64 4d2f 6773 6e55     cosmos-sdk/MsgUn
c0de7d5f:	6564 656c 6167 6574 0000 0000 0000 0000     delegate........
	...
c0de7d7f:	0000 6e55 6564 656c 6167 6574 0000 0000     ..Undelegate....
	...
c0de7db3:	6f63 6d73 736f 732d 6b64 4d2f 6773 6542     cosmos-sdk/MsgBe
c0de7dc3:	6967 526e 6465 6c65 6765 7461 0065 0000     ginRedelegate...
	...
c0de7de3:	0000 6552 6564 656c 6167 6574 0000 0000     ..Redelegate....
	...
c0de7e17:	6f63 6d73 736f 732d 6b64 4d2f 6773 7553     cosmos-sdk/MsgSu
c0de7e27:	6d62 7469 7250 706f 736f 6c61 0000 0000     bmitProposal....
	...
c0de7e47:	0000 7250 706f 736f 0065 0000 0000 0000     ..Propose.......
	...
c0de7e7b:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0de7e8b:	6f70 6973 0074 0000 0000 0000 0000 0000     posit...........
	...
c0de7eab:	0000 6544 6f70 6973 0074 0000 0000 0000     ..Deposit.......
	...
c0de7edf:	6f63 6d73 736f 732d 6b64 4d2f 6773 6f56     cosmos-sdk/MsgVo
c0de7eef:	6574 0000 0000 0000 0000 0000 0000 0000     te..............
	...
c0de7f0f:	0000 6f56 6574 0000 0000 0000 0000 0000     ..Vote..........
	...
c0de7f43:	6f63 6d73 736f 732d 6b64 4d2f 6773 6957     cosmos-sdk/MsgWi
c0de7f53:	6874 7264 7761 6544 656c 6167 6974 6e6f     thdrawDelegation
c0de7f63:	6552 6177 6472 0000 0000 0000 0000 0000     Reward..........
c0de7f73:	0000 6957 6874 7264 7761 5220 7765 7261     ..Withdraw Rewar
c0de7f83:	0064 0000 0000 0000 0000 0000 0000 0000     d...............
	...

c0de7fa7 <whitespaces>:
c0de7fa7:	0c20 0d0a 0b09 0000 5300 4f48 4957 474e      ........SHOWING
c0de7fb7:	4420 5441 0041 0000                           DATA....

c0de7fc0 <ux_idle_flow_1_step_val>:
c0de7fc0:	6b24 c0de 70d9 c0de 5228 da7a               $k...p..(Rz.

c0de7fcc <ux_idle_flow_1_step>:
c0de7fcc:	5f65 c0de 7fc0 c0de 0000 0000 0000 0000     e_..............

c0de7fdc <ux_idle_flow_3_step_val>:
c0de7fdc:	6d48 c0de 711a c0de                         Hm...q..

c0de7fe4 <ux_idle_flow_3_step>:
c0de7fe4:	590d c0de 7fdc c0de 0000 0000 0000 0000     .Y..............

c0de7ff4 <ux_idle_flow_4_step_validate_step>:
c0de7ff4:	3a6d c0de 0000 0000 0000 0000 0000 0000     m:..............

c0de8004 <ux_idle_flow_4_step_validate>:
c0de8004:	7ff4 c0de ffff ffff                         ........

c0de800c <ux_idle_flow_4_step_val>:
c0de800c:	6c69 c0de 6fd4 c0de                         il...o..

c0de8014 <ux_idle_flow_4_step>:
c0de8014:	590d c0de 800c c0de 8004 c0de 0000 0000     .Y..............

c0de8024 <ux_idle_flow_5_step_val>:
c0de8024:	7016 c0de 6e0f c0de                         .p...n..

c0de802c <ux_idle_flow_5_step>:
c0de802c:	590d c0de 8024 c0de 0000 0000 0000 0000     .Y..$...........

c0de803c <ux_idle_flow_6_step_validate_step>:
c0de803c:	3a6f c0de 0000 0000 0000 0000 0000 0000     o:..............

c0de804c <ux_idle_flow_6_step_validate>:
c0de804c:	803c c0de ffff ffff                         <.......

c0de8054 <ux_idle_flow_6_step_val>:
c0de8054:	6b84 c0de 6f72 c0de                         .k..ro..

c0de805c <ux_idle_flow_6_step>:
c0de805c:	5e9b c0de 8054 c0de 804c c0de 0000 0000     .^..T...L.......

c0de806c <ux_idle_flow>:
c0de806c:	7fcc c0de 7fe4 c0de 8014 c0de 802c c0de     ............,...
c0de807c:	805c c0de ffff ffff                         \.......

c0de8084 <ux_error_flow_1_step_val>:
c0de8084:	5228 da7a 5268 da7a                         (Rz.hRz.

c0de808c <ux_error_flow_1_step>:
c0de808c:	5cb1 c0de 8084 c0de 0000 0000 0000 0000     .\..............

c0de809c <ux_error_flow_2_step_validate_step>:
c0de809c:	3a75 c0de 0000 0000 0000 0000 0000 0000     u:..............

c0de80ac <ux_error_flow_2_step_validate>:
c0de80ac:	809c c0de ffff ffff                         ........

c0de80b4 <ux_error_flow_2_step_val>:
c0de80b4:	6bb4 c0de 6f4f c0de                         .k..Oo..

c0de80bc <ux_error_flow_2_step>:
c0de80bc:	5e9b c0de 80b4 c0de 80ac c0de 0000 0000     .^..............

c0de80cc <ux_error_flow>:
c0de80cc:	808c c0de 80bc c0de ffff ffff               ............

c0de80d8 <ux_review_flow_1_review_title_val>:
c0de80d8:	6b24 c0de 6f3f c0de 6d96 c0de               $k..?o...m..

c0de80e4 <ux_review_flow_1_review_title>:
c0de80e4:	5f65 c0de 80d8 c0de 0000 0000 0000 0000     e_..............

c0de80f4 <ux_review_flow_2_start_step>:
c0de80f4:	3a7b c0de 0000 0000 0000 0000 0000 0000     {:..............

c0de8104 <ux_review_flow_2_step_val>:
c0de8104:	5228 da7a 5268 da7a                         (Rz.hRz.

c0de810c <ux_review_flow_2_step>:
c0de810c:	3a7f c0de 8104 c0de 0000 0000 0000 0000     .:..............

c0de811c <ux_review_flow_2_end_step>:
c0de811c:	3a91 c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de812c <ux_review_flow_3_step_validate_step>:
c0de812c:	3a95 c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de813c <ux_review_flow_3_step_validate>:
c0de813c:	812c c0de ffff ffff                         ,.......

c0de8144 <ux_review_flow_3_step_val>:
c0de8144:	6bb4 c0de 6ed9 c0de                         .k...n..

c0de814c <ux_review_flow_3_step>:
c0de814c:	5e9b c0de 8144 c0de 813c c0de 0000 0000     .^..D...<.......

c0de815c <ux_review_flow_4_step_validate_step>:
c0de815c:	3a9b c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de816c <ux_review_flow_4_step_validate>:
c0de816c:	815c c0de ffff ffff                         \.......

c0de8174 <ux_review_flow_4_step_val>:
c0de8174:	6b54 c0de 6f52 c0de                         Tk..Ro..

c0de817c <ux_review_flow_4_step>:
c0de817c:	5e9b c0de 8174 c0de 816c c0de 0000 0000     .^..t...l.......

c0de818c <ux_review_flow>:
c0de818c:	80e4 c0de 80f4 c0de 810c c0de 811c c0de     ................
c0de819c:	814c c0de 817c c0de ffff ffff               L...|.......

c0de81a8 <seph_io_general_status>:
c0de81a8:	0060 0002                                    `....

c0de81ad <seph_io_se_power_off>:
c0de81ad:	0046                                         F..

c0de81b0 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0de81b0:	f3ff 253b 9224 f29f 4897 8824 2cb7 870e     ..;%$....H$..,..
c0de81c0:	1fa6 4e02 b1ac 7ec2 637e 358d 3c72 d86c     ...N...~~c.5r<l.
c0de81d0:	e0e0 9eed df3d b417 cdb7 d926 7b6c 4c0b     ....=.....&.l{.L
c0de81e0:	7bfb 0c1e 33f3 d60c 0fff 3118 8c66 de18     .{...3.....1f...
c0de81f0:	cf3c 3cf3 ec7b cccf 6ecc cc63 f99c 630f     <..<{....nc....c
c0de8200:	3187 187e 69c7 8fda 3f61 ccf3 9cfc 7c21     .1~..i..a?....!|
c0de8210:	3cf3 1f7b cc63 3318 3cde f37b 7b3c 3cde     .<{.c..3.<{.<{.<
c0de8220:	3ecf 398c 0f0f 6036 980d 6199 0618 f03f     .>.9..6`...a..?.
c0de8230:	c303 cc30 0fcc 6763 3180 30f8 f766 4bd6     ..0...cg.1.0f..K
c0de8240:	bdaf 019f 01f8 3c18 7e3c 7e66 c3e7 ef7f     .......<<~f~....
c0de8250:	f7b7 7efe 318c f0c6 3cdf f3cf 7f3c f33f     ...~.1...<..<.?.
c0de8260:	f333 8c7f c637 fe18 ec30 3cf3 f3fb ff3c     3...7...0..<..<.
c0de8270:	3cf3 ffcf ccff cccc cccc f307 e6d9 d9f1     .<..............
c0de8280:	e6cc 8c63 c631 c7f8 bf8f ff7f f57e ddee     ..c.1.......~...
c0de8290:	f3e7 bdfb cfdf bee7 78f1 1e3c 7d8f ef7f     .........x<..}..
c0de82a0:	c7fd be18 78f1 1e3c 7d8f 3030 b6cf cf6d     .....x<..}00..m.
c0de82b0:	cdb6 8c7e 38e3 3f7f 30c3 c30c f330 cf3c     ..~..8.?.0..0.<.
c0de82c0:	3cf3 f37b cf3c e79e 7331 9bb6 acdd 3566     .<{.<...1s....f5
c0de82d0:	70ee 1b07 66c3 3c3c 3c3c c366 9b63 838d     .p...f<<<<f.c...
c0de82e0:	60c1 7f30 0e18 70c3 fe18 333f 3333 43f3     .`0....p..?333.C
c0de82f0:	c318 c218 cccf cccc 0cfc 49e3 3f33 1e33     ...........I3?3.
c0de8300:	cfec 0fb3 f0c3 fb6d 7dbe 71bc 061c 300f     ......m..}.q...0
c0de8310:	dbcc 6df7 3cf3 fff3 e060 dc01 637c 318c     ...m.<..`...|c.1
c0de8320:	9b7e 63cd 8df0 3ec7 fc63 f7bd f3de 0cff     ~..c...>c.......
c0de8330:	cccc cccc c307 7db0 b3cf ffed edff dbdb     .......}........
c0de8340:	dbdb 7ddb bdef 1c37 fddb e36e b6df dbef     ...}..7...n.....
c0de8350:	0c37 be03 df7d 0fb6 30c3 33fd 6f33 8f3c     7...}....0.33o<.
c0de8360:	e61f 631b 070c ef7b 2fbd 9b63 c6cd 33e1     ...c..{../c....3
c0de8370:	e6db 7f9f 30cc 7703 871b bb63 6303 8d9b     .....0.w..c..c..
c0de8380:	e1c6 1870 3f0e 30c6 0fc6 319c 0e76 8c63     ..p..?.0...1v.c.
c0de8390:	ff03 3fff 18c7 b9c3 e631 0f6f               ...?....1.o.

c0de839c <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0de839c:	c000 0000 c000 0088 8008 0089 c010 0081     ................
c0de83ac:	802c 0001 c04c 1082 4074 0082 c098 0088     ,...L...t@......
c0de83bc:	009c 1081 00ac 0089 80bc 0081 80cc 0101     ................
c0de83cc:	c0dc 0380 00e0 0281 c0e4 0388 40e8 0081     .............@..
c0de83dc:	00fc 108a 8114 1089 c124 1089 c138 1089     ........$...8...
c0de83ec:	014c 108a 8164 1089 0174 108a c18c 1089     L...d...t.......
c0de83fc:	01a0 108a 01b8 108a c1d0 0188 c1d8 0180     ................
c0de840c:	41e4 0101 81f8 0201 4204 0101 8214 1081     .A.......B......
c0de841c:	8228 0082 0258 0082 c278 1089 c28c 1089     (...X...x.......
c0de842c:	02a0 108a 82b8 1089 82c8 0089 02dc 108a     ................
c0de843c:	02f4 108a 030c 1089 4314 1081 032c 008a     .........C..,...
c0de844c:	8348 0089 c35c 108a 4380 108a 439c 108a     H...\....C...C..
c0de845c:	c3b8 1089 43cc 108a 03f0 108a 8408 0089     .....C..........
c0de846c:	841c 0081 0434 108a 844c 0081 c464 0082     ....4...L...d...
c0de847c:	0490 0082 c4b0 0081 c4cc 0081 44e8 0089     .............D..
c0de848c:	44fc 0081 4510 1081 c524 1081 c534 1501     .D...E..$...4...
c0de849c:	c538 2011 c53c 1181 c550 0089 8568 0181     8.. <...P...h...
c0de84ac:	c57c 1081 c594 0181 85ac 1081 c5c0 0181     |...............
c0de84bc:	c5e0 1089 05f4 1089 45fc 1081 c614 0089     .........E......
c0de84cc:	062c 1089 8634 118a c64c 1189 c65c 0181     ,...4...L...\...
c0de84dc:	c670 0189 c68c 1181 46a8 0189 86b4 0189     p........F......
c0de84ec:	46c4 0101 c6d8 1189 c6e8 0181 86fc 0182     .F..............
c0de84fc:	c71c 0181 0734 1182 8754 0181 4768 0081     ....4...T...hG..
c0de850c:	8784 2091 4790 0081 87a8 0201               ... .G......

c0de8518 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0de8518:	01ec 0108 090c 7e20 839c c0de 81b0 c0de     ...... ~........

c0de8528 <bitmapOPEN_SANS_LIGHT_16PX>:
c0de8528:	0cff 9999 4090 0882 fe22 8123 7fc4 1044     .....@..".#...D.
c0de8538:	0241 0809 229e 5091 7070 6448 83ca 4906     A....".PppHd...I
c0de8548:	2244 9092 9484 1299 9092 2444 0922 1c06     D"........D$"...
c0de8558:	8844 4110 8181 90c4 0341 f30d 0f09 555a     D..A....A.....ZU
c0de8568:	2955 aaa5 16aa 0408 4fe2 88a1 0408 8fe2     U).......O......
c0de8578:	2040 076a 100f 4421 2108 8842 511c 1830     @ j...!D.!B..Q0.
c0de8588:	060c c183 88a0 7403 9249 0924 109e 0408     .......tI.$.....
c0de8598:	4102 0410 e041 9e0f 1010 f304 8080 2040     .A..A.........@ 
c0de85a8:	03e8 c040 4140 8482 1088 ff21 0081 0201     ..@.@A....!.....
c0de85b8:	813e 1040 80f8 4081 c860 3803 2083 e810     >.@....@`..8. ..
c0de85c8:	830d a0c1 0790 207f 0408 4082 0810 8104     ....... ...@....
c0de85d8:	511c 2830 88e2 c182 d060 9e07 3050 0c18     .Q0(....`...P0..
c0de85e8:	817b 1040 01cc c00f 0f03 0540 1840 c063     {.@.......@.@.c.
c0de85f8:	0180 7f01 e000 010f 0603 318c 0f04 0842     ...........1..B.
c0de8608:	1111 0802 f001 20c1 2402 119e 9099 9909     ....... .$......
c0de8618:	8990 7719 2001 0400 0f80 c030 0300 4812     ...w. ....0....H
c0de8628:	4120 3f08 0902 5024 9f80 3050 fa18 8284      A.?..$P..P0....
c0de8638:	60c1 03e8 04f8 0102 0101 0101 0201 f804     .`..............
c0de8648:	211f 8141 8181 8181 4181 1f21 107f c104     .!A......A!.....
c0de8658:	041f 1041 7ffc 0410 f041 4107 0410 11f8     ..A.....A..A....
c0de8668:	4020 0100 1004 807e 0a01 2048 817e 8181      @....~...H ~...
c0de8678:	8181 81ff 8181 8181 ff81 240f 9249 4924     ...........$I.$I
c0de8688:	c10e 2450 1851 1214 4891 0828 1041 4104     ..P$Q....H(.A..A
c0de8698:	0410 1041 01fc 3c06 c0f0 1685 685a 4992     ..A....<....Zh.I
c0de86a8:	18c6 8063 8381 8583 8985 9191 c1a1 81c1     ..c.............
c0de86b8:	1078 5022 0180 1806 8060 0a01 0844 5f1e     x."P....`...D.._
c0de86c8:	8618 f861 4105 0410 1078 5022 0180 1806     ..a..A..x."P....
c0de86d8:	8060 0a01 0844 401e 0200 9f18 3050 0c18     `...D..@....P0..
c0de86e8:	227d 5091 0830 60be 1020 c070 4080 f020     }".P0..` .p..@ .
c0de86f8:	7f07 0204 4081 1020 0408 0102 8181 8181     .....@ .........
c0de8708:	8181 8181 8181 3c42 0301 120a 8824 1108     ......B<....$...
c0de8718:	2822 4050 c180 30a0 0c24 4489 1122 4249     "(P@...0$..D".IB
c0de8728:	5092 1428 860a 6181 1020 0482 4111 0282     .P(....a ....A..
c0de8738:	0a02 4414 0888 080a 4281 2442 1824 1018     ...D.....BB$$...
c0de8748:	1010 1010 207f 0408 2041 0208 e041 1f0f     ..... ..A ..A...
c0de8758:	1111 1111 1111 410f 4108 2108 2108 8f08     .......A.A.!.!..
c0de8768:	8888 8888 8888 080f 450a 0a24 0106 117f     .........E$.....
c0de8778:	1e01 8208 187e 2ec6 0101 0101 433d 8181     ....~.......=C..
c0de8788:	8181 4381 bc3d 0410 1041 3c08 8080 8080     ...C=...A..<....
c0de8798:	c2bc 8181 8181 c281 1cbc 3051 0ff8 8404     ..........Q0....
c0de87a8:	383c 1041 411f 0410 1041 fc04 4222 2242     <8A..A..A..."BB"
c0de87b8:	043c 7c02 8142 3e43 4081 d020 0519 c183     <..|B.C>.@ .....
c0de87c8:	3060 0418 07f9 4804 2492 1e49 4081 1020     `0.....H.$I..@ .
c0de87d8:	248a 850a 2445 0414 1fff 339d 4146 8418     .$..E$.....3FA..
c0de87e8:	1841 4184 8418 0841 519d 1830 060c 4183     A..A..A..Q0....A
c0de87f8:	511c 1830 060c 1c45 433d 8181 8181 4381     .Q0...E.=C.....C
c0de8808:	013d 0101 bc01 81c2 8181 8181 bcc2 8080     =...............
c0de8818:	8080 847d 4210 0108 843e 20c1 0f84 09e2     ..}..B..>.. ....
c0de8828:	8421 8210 c103 3060 0c18 c506 c15e 48a0     !.....`0....^..H
c0de8838:	a224 2850 6108 4628 2462 9249 2944 830c     $.P(.a(Fb$I.D)..
c0de8848:	0810 6101 3128 230c 2185 a0c1 2448 50a2     ...a(1.#.!..H$.P
c0de8858:	0828 8104 1f30 4422 0884 981f 4210 1908     (...0."D.....B..
c0de8868:	1084 0842 ff06 01ff 1043 0842 84c1 4210     ..B.....C.B....B
c0de8878:	07c4 003c                                   ..<.

c0de887c <charactersOPEN_SANS_LIGHT_16PX>:
c0de887c:	0000 0001 c000 1088 8008 1089 8010 0082     ................
c0de888c:	404c 108a 4078 108b c0bc 108a c0f4 1088     L@..x@..........
c0de889c:	00f8 1089 0108 1089 4118 100a 4130 110a     .........A..0A..
c0de88ac:	c148 1580 414c 1409 0150 1589 8154 1081     H...LA..P...T...
c0de88bc:	4170 108a 419c 4092 41b0 108a 41dc 108a     pA...A.@.A...A..
c0de88cc:	4208 0082 4240 108a 426c 108a 4298 108a     .B..@B..lB...B..
c0de88dc:	42c0 108a 42ec 108a 0318 1209 0324 1209     .B...B......$...
c0de88ec:	4330 118a 434c 128a 435c 118a c374 1089     0C..LC..\C..t...
c0de88fc:	8394 108b 83e8 0082 8424 1092 8450 108a     ........$...P...
c0de890c:	c480 1092 44b0 1092 04d4 0092 04f8 108b     .....D..........
c0de891c:	0534 2093 0564 1091 856c 3081 4584 0092     4.. d...l..0.E..
c0de892c:	05b0 0092 85d4 2093 0610 2093 0640 108b     ....... ... @...
c0de893c:	467c 1092 06a0 108b 86ec 1092 4718 108a     |F...........G..
c0de894c:	c744 0081 0770 2093 87a0 1082 87d4 0083     D...p.. ........
c0de895c:	4828 0082 4860 1082 4890 108a 48bc 0089     (H..`H...H...H..
c0de896c:	88dc 1081 48fc 1081 491c 108a 0938 1702     .....H...I..8...
c0de897c:	493c 301a 0944 120a 8960 100a 0994 120a     <I.0D...`.......
c0de898c:	89b0 100a 49e4 120a 8a04 0001 0a2c 0202     .....I......,...
c0de899c:	4a60 100a 0a90 2109 4a98 2101 0ab0 000a     `J.....!.J.!....
c0de89ac:	0ae0 2009 8ae8 120b 4b20 120a 4b40 120a     ... .... K..@K..
c0de89bc:	8b60 120a 8b94 120a 8bc8 0209 cbe0 1209     `...............
c0de89cc:	4bf8 0181 4c14 120a 0c34 1202 0c54 0203     .K...L..4...T...
c0de89dc:	0c8c 120a 0ca8 1202 ccd4 1209 8cec 1081     ................
c0de89ec:	8d14 4009 8d20 0089 4d44 130a               ...@ ...DM..

c0de89f8 <fontOPEN_SANS_LIGHT_16PX>:
c0de89f8:	0353 0109 0d11 7e20 887c c0de 8528 c0de     S..... ~|...(...

c0de8a08 <bitmapOPEN_SANS_REGULAR_11PX>:
c0de8a08:	0fbf 9220 429f 49f9 5f04 cc65 a30f a54a     .. ..B.I._e...J.
c0de8a18:	a5bd c552 924e 6518 bd1a 6a03 0a95 6a95     ..R.N..e...j...j
c0de8a28:	0405 33f1 c812 1a8f 0103 4448 1222 9996     ...3......HD"...
c0de8a38:	6999 492e 8792 2488 87f1 8868 1078 4946     .i.I...$..h.x.FI
c0de8a48:	0fd2 1f41 88f1 1e78 99f1 8f69 2448 9622     ..A...x...i.H$".
c0de8a58:	9969 9669 8f99 2178 6802 3348 0f84 210f     i.i...x!.hH3...!
c0de8a68:	12cc 4887 2022 827c a5b9 a5a5 01fd 083e     ...H" |.......>.
c0de8a78:	850a f222 8289 c63f 6317 7efc 1084 f0c2     .."...?..c.~....
c0de8a88:	185f 6186 7e18 f11f f111 843f 43f0 7e08     _..a.~....?..C.~
c0de8a98:	0410 1871 61fa fe18 1861 ff86 4924 1c92     ..q..a..a...$I..
c0de8aa8:	5251 450c 8512 8421 4210 c3f8 c3c3 a5a5     QR.E..!..B......
c0de8ab8:	9999 e199 9658 1a69 be87 3060 0c18 7d06     ....X.i...`0...}
c0de8ac8:	c62f 42f8 be08 3060 0c18 7d06 1010 c62f     /..B..`0...}../.
c0de8ad8:	52f8 1e8c 8c31 9f78 4210 2108 1861 6186     .R..1.x..B.!a..a
c0de8ae8:	7a18 9141 4448 50a1 3110 24ca 5293 294a     .zA.HD.P.1.$.RJ)
c0de8af8:	0845 a121 30c4 248c a185 3124 8208 8f20     E.!..0.$..$1.. .
c0de8b08:	1244 4ff1 2492 2139 4422 2784 9249 0c3c     D..O.$9!"D.'I.<.
c0de8b18:	4923 1f21 8f09 f99f bc21 6318 1e7c e111     #I!.....!..c|...
c0de8b28:	fa10 6318 9ef4 e11f 2f2c 2222 24be 8239     ...c....,/"".$9.
c0de8b38:	8617 211e 18bc 8c63 04fd 9249 01e4 5911     ...!..c...I....Y
c0de8b48:	9953 efff 9191 9191 2f91 18c6 2e23 18c6     S......../..#...
c0de8b58:	2f1d 18c6 085f 3e01 18c6 843d 4f10 1792     ./.._..>..=..O..
c0de8b68:	7843 22f2 0e22 c631 3f18 24a1 0c49 1103     Cx."".1..?.$I...
c0de8b78:	a955 4552 0884 6699 a199 4924 430c 0310     U.RE...f..$I.C..
c0de8b88:	111f 3e22 9496 3248 07ff 4493 1a4a 00c3     ..">..H2...DJ...

c0de8b98 <charactersOPEN_SANS_REGULAR_11PX>:
c0de8b98:	c000 0000 c000 1088 0004 1089 c008 0081     ................
c0de8ba8:	8024 1109 4034 108a 4050 208a 8068 0088     $...4@..P@. h...
c0de8bb8:	c06c 1080 c078 0088 8084 0081 8094 0201     l...x...........
c0de8bc8:	c09c 1400 00a0 1309 c0a4 1408 00a8 0081     ................
c0de8bd8:	80b8 1089 80c8 2089 80d4 1089 80e4 1089     ....... ........
c0de8be8:	00f4 108a 810c 1089 811c 1089 812c 1089     ............,...
c0de8bf8:	813c 1089 814c 1089 c15c 1188 c160 1180     <...L...\...`...
c0de8c08:	8168 1109 8174 1209 817c 1109 4188 0089     h...t...|....A..
c0de8c18:	8198 108a c1bc 0081 c1d8 1089 c1ec 1089     ................
c0de8c28:	0200 108a 8218 1089 8228 0089 023c 108a     ........(...<...
c0de8c38:	0254 108a c26c 1088 0270 1081 c280 0089     T...l...p.......
c0de8c48:	8298 0089 82ac 108a 02cc 108a 42e4 108a     .............B..
c0de8c58:	c300 1089 4314 108a c338 1089 834c 1089     .....C..8...L...
c0de8c68:	c35c 1089 0370 108a c388 0081 83a4 0082     \...p...........
c0de8c78:	c3cc 1081 83e4 0081 83fc 1089 040c 0089     ................
c0de8c88:	041c 0081 042c 1081 843c 0081 844c 1501     ....,...<...L...
c0de8c98:	8450 2011 8454 1189 c460 1089 4474 0189     P.. T...`...tD..
c0de8ca8:	c480 1089 8494 1189 44a0 1081 84b0 0181     .........D......
c0de8cb8:	c4cc 1089 c4e0 1088 04e4 1081 84f8 1089     ................
c0de8cc8:	c508 1088 850c 118a c524 1189 c534 1189     ........$...4...
c0de8cd8:	c544 1189 c55c 1189 0574 0189 457c 0189     D...\...t...|E..
c0de8ce8:	0588 0101 c598 1189 85a8 0181 45bc 0182     .............E..
c0de8cf8:	85d8 1189 85e4 0181 4600 0181 0610 0089     .........F......
c0de8d08:	8620 2099 0628 1081 8638 1209                .. (...8...

c0de8d14 <fontOPEN_SANS_REGULAR_11PX>:
c0de8d14:	018f 010a 090c 7e20 8b98 c0de 8a08 c0de     ...... ~........

c0de8d24 <C_bagl_fonts>:
c0de8d24:	8518 c0de 89f8 c0de 8d14 c0de               ............

c0de8d30 <C_bagl_fonts_count>:
c0de8d30:	0003 0000                                   ....

c0de8d34 <ux_layout_bb_elements>:
c0de8d34:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8d44:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8d54:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8d64:	ffff 00ff 0000 0000 0000 0000 6bcc c0de     .............k..
c0de8d74:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8d84:	ffff 00ff 0000 0000 0000 0000 6be4 c0de     .............k..
c0de8d94:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0de8da4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de8db4:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0de8dc4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de8dd4 <ux_layout_paging_elements>:
c0de8dd4:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8de4:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8df4:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8e04:	ffff 00ff 0000 0000 0000 0000 6bcc c0de     .............k..
c0de8e14:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8e24:	ffff 00ff 0000 0000 0000 0000 6be4 c0de     .............k..
c0de8e34:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0de8e44:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de8e54:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0de8e64:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8e74:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0de8e84:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8e94:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0de8ea4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0de8eb4 <ux_layout_pb_elements>:
c0de8eb4:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8ec4:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8ed4:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8ee4:	ffff 00ff 0000 0000 0000 0000 6bcc c0de     .............k..
c0de8ef4:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8f04:	ffff 00ff 0000 0000 0000 0000 6be4 c0de     .............k..
c0de8f14:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0de8f24:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8f34:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0de8f44:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de8f54 <ux_layout_pbb_elements>:
c0de8f54:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8f64:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8f74:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8f84:	ffff 00ff 0000 0000 0000 0000 6bcc c0de     .............k..
c0de8f94:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8fa4:	ffff 00ff 0000 0000 0000 0000 6be4 c0de     .............k..
c0de8fb4:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0de8fc4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8fd4:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0de8fe4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de8ff4:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0de9004:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de9014 <g_pcHex>:
c0de9014:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de9024 <g_pcHex_cap>:
c0de9024:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de9034 <_etext>:
	...

c0de9200 <N_appdata_impl>:
	...

c0ded200 <N_appmode_impl>:
	...

c0ded400 <install_parameters>:
c0ded400:	0701 6f4e 6c62 3665 0230 3206 332e 2e32     ..Noble60..2.32.
c0ded410:	0331 0e21 0e00 0000 0019 0000 0000 7803     1.!............x
c0ded420:	f00f e01c c3f9 0c73 39ec 73f0 ff80 ec01     ......s..9.s....
c0ded430:	0000 0000 0a04 02ff 0080 2c00 0080 3c00     ...........,...<
