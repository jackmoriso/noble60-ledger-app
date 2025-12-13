
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	b08c      	sub	sp, #48	@ 0x30
c0de0004:	b662      	cpsie	i
c0de0006:	f003 fce9 	bl	c0de39dc <view_init>
c0de000a:	f006 f94f 	bl	c0de62ac <os_boot>
c0de000e:	466c      	mov	r4, sp
c0de0010:	4620      	mov	r0, r4
c0de0012:	f006 fd8d 	bl	c0de6b30 <setjmp>
c0de0016:	0401      	lsls	r1, r0, #16
c0de0018:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de001c:	d006      	beq.n	c0de002c <main+0x2c>
c0de001e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0020:	2100      	movs	r1, #0
c0de0022:	f8ad 102c 	strh.w	r1, [sp, #44]	@ 0x2c
c0de0026:	f006 fce2 	bl	c0de69ee <try_context_set>
c0de002a:	e007      	b.n	c0de003c <main+0x3c>
c0de002c:	4668      	mov	r0, sp
c0de002e:	f006 fcde 	bl	c0de69ee <try_context_set>
c0de0032:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0034:	f000 fefa 	bl	c0de0e2c <app_init>
c0de0038:	f000 ff0a 	bl	c0de0e50 <app_main>
c0de003c:	f006 fccd 	bl	c0de69da <try_context_get>
c0de0040:	42a0      	cmp	r0, r4
c0de0042:	d102      	bne.n	c0de004a <main+0x4a>
c0de0044:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0046:	f006 fcd2 	bl	c0de69ee <try_context_set>
c0de004a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de004e:	b910      	cbnz	r0, c0de0056 <main+0x56>
c0de0050:	2000      	movs	r0, #0
c0de0052:	b00c      	add	sp, #48	@ 0x30
c0de0054:	bd10      	pop	{r4, pc}
c0de0056:	f006 f92c 	bl	c0de62b2 <os_longjmp>

c0de005a <addr_getNumItems>:
c0de005a:	b510      	push	{r4, lr}
c0de005c:	4604      	mov	r4, r0
c0de005e:	f247 001d 	movw	r0, #28701	@ 0x701d
c0de0062:	f2c0 0000 	movt	r0, #0
c0de0066:	4478      	add	r0, pc
c0de0068:	f004 f8bb 	bl	c0de41e2 <zemu_log_stack>
c0de006c:	2001      	movs	r0, #1
c0de006e:	7020      	strb	r0, [r4, #0]
c0de0070:	f003 fe54 	bl	c0de3d1c <app_mode_expert>
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
c0de0088:	f646 729a 	movw	r2, #28570	@ 0x6f9a
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
c0de00aa:	f006 f90d 	bl	c0de62c8 <snprintf>
c0de00ae:	4620      	mov	r0, r4
c0de00b0:	f004 f897 	bl	c0de41e2 <zemu_log_stack>
c0de00b4:	2d01      	cmp	r5, #1
c0de00b6:	d047      	beq.n	c0de0148 <addr_getItem+0xc8>
c0de00b8:	2d00      	cmp	r5, #0
c0de00ba:	f040 8102 	bne.w	c0de02c2 <addr_getItem+0x242>
c0de00be:	f646 7238 	movw	r2, #28472	@ 0x6f38
c0de00c2:	f2c0 0200 	movt	r2, #0
c0de00c6:	447a      	add	r2, pc
c0de00c8:	4638      	mov	r0, r7
c0de00ca:	4631      	mov	r1, r6
c0de00cc:	f006 f8fc 	bl	c0de62c8 <snprintf>
c0de00d0:	f246 34b8 	movw	r4, #25528	@ 0x63b8
c0de00d4:	f2c0 0400 	movt	r4, #0
c0de00d8:	eb09 0004 	add.w	r0, r9, r4
c0de00dc:	3021      	adds	r0, #33	@ 0x21
c0de00de:	f006 fd3f 	bl	c0de6b60 <strlen>
c0de00e2:	9d56      	ldr	r5, [sp, #344]	@ 0x158
c0de00e4:	4606      	mov	r6, r0
c0de00e6:	4640      	mov	r0, r8
c0de00e8:	4629      	mov	r1, r5
c0de00ea:	f006 fcdb 	bl	c0de6aa4 <explicit_bzero>
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
c0de0142:	f006 fca8 	bl	c0de6a96 <__aeabi_memmove>
c0de0146:	e0ba      	b.n	c0de02be <addr_getItem+0x23e>
c0de0148:	f003 fde8 	bl	c0de3d1c <app_mode_expert>
c0de014c:	2800      	cmp	r0, #0
c0de014e:	f000 80b8 	beq.w	c0de02c2 <addr_getItem+0x242>
c0de0152:	f8cd 8008 	str.w	r8, [sp, #8]
c0de0156:	f247 0228 	movw	r2, #28712	@ 0x7028
c0de015a:	f2c0 0200 	movt	r2, #0
c0de015e:	447a      	add	r2, pc
c0de0160:	4638      	mov	r0, r7
c0de0162:	4631      	mov	r1, r6
c0de0164:	f006 f8b0 	bl	c0de62c8 <snprintf>
c0de0168:	ae03      	add	r6, sp, #12
c0de016a:	4630      	mov	r0, r6
c0de016c:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de0170:	f006 fc98 	bl	c0de6aa4 <explicit_bzero>
c0de0174:	f643 1a5c 	movw	sl, #14684	@ 0x395c
c0de0178:	f2c0 0a00 	movt	sl, #0
c0de017c:	f859 000a 	ldr.w	r0, [r9, sl]
c0de0180:	f646 3204 	movw	r2, #27396	@ 0x6b04
c0de0184:	f2c0 0200 	movt	r2, #0
c0de0188:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
c0de018c:	447a      	add	r2, pc
c0de018e:	4630      	mov	r0, r6
c0de0190:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0de0194:	f006 f898 	bl	c0de62c8 <snprintf>
c0de0198:	4630      	mov	r0, r6
c0de019a:	f006 fce1 	bl	c0de6b60 <strlen>
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
c0de01be:	f646 42e6 	movw	r2, #27878	@ 0x6ce6
c0de01c2:	eb06 040b 	add.w	r4, r6, fp
c0de01c6:	f5cb 7596 	rsb	r5, fp, #300	@ 0x12c
c0de01ca:	f2c0 0200 	movt	r2, #0
c0de01ce:	4620      	mov	r0, r4
c0de01d0:	4629      	mov	r1, r5
c0de01d2:	447a      	add	r2, pc
c0de01d4:	f006 f878 	bl	c0de62c8 <snprintf>
c0de01d8:	4620      	mov	r0, r4
c0de01da:	f006 fcc1 	bl	c0de6b60 <strlen>
c0de01de:	b3a8      	cbz	r0, c0de024c <addr_getItem+0x1cc>
c0de01e0:	42a8      	cmp	r0, r5
c0de01e2:	d233      	bcs.n	c0de024c <addr_getItem+0x1cc>
c0de01e4:	4483      	add	fp, r0
c0de01e6:	f1b8 0f04 	cmp.w	r8, #4
c0de01ea:	d037      	beq.n	c0de025c <addr_getItem+0x1dc>
c0de01ec:	f646 3253 	movw	r2, #27475	@ 0x6b53
c0de01f0:	eb06 040b 	add.w	r4, r6, fp
c0de01f4:	f5cb 7596 	rsb	r5, fp, #300	@ 0x12c
c0de01f8:	f2c0 0200 	movt	r2, #0
c0de01fc:	4620      	mov	r0, r4
c0de01fe:	4629      	mov	r1, r5
c0de0200:	447a      	add	r2, pc
c0de0202:	f006 f861 	bl	c0de62c8 <snprintf>
c0de0206:	4620      	mov	r0, r4
c0de0208:	f006 fcaa 	bl	c0de6b60 <strlen>
c0de020c:	b1f0      	cbz	r0, c0de024c <addr_getItem+0x1cc>
c0de020e:	42a8      	cmp	r0, r5
c0de0210:	d21c      	bcs.n	c0de024c <addr_getItem+0x1cc>
c0de0212:	eb00 070b 	add.w	r7, r0, fp
c0de0216:	eb09 000a 	add.w	r0, r9, sl
c0de021a:	eb00 0088 	add.w	r0, r0, r8, lsl #2
c0de021e:	6840      	ldr	r0, [r0, #4]
c0de0220:	f646 225a 	movw	r2, #27226	@ 0x6a5a
c0de0224:	19f4      	adds	r4, r6, r7
c0de0226:	f5c7 7596 	rsb	r5, r7, #300	@ 0x12c
c0de022a:	f2c0 0200 	movt	r2, #0
c0de022e:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
c0de0232:	4620      	mov	r0, r4
c0de0234:	4629      	mov	r1, r5
c0de0236:	447a      	add	r2, pc
c0de0238:	f006 f846 	bl	c0de62c8 <snprintf>
c0de023c:	4620      	mov	r0, r4
c0de023e:	f006 fc8f 	bl	c0de6b60 <strlen>
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
c0de0262:	f006 fc7d 	bl	c0de6b60 <strlen>
c0de0266:	9c02      	ldr	r4, [sp, #8]
c0de0268:	9d56      	ldr	r5, [sp, #344]	@ 0x158
c0de026a:	4607      	mov	r7, r0
c0de026c:	4620      	mov	r0, r4
c0de026e:	4629      	mov	r1, r5
c0de0270:	f006 fc18 	bl	c0de6aa4 <explicit_bzero>
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
c0de02ba:	f006 fbea 	bl	c0de6a92 <__aeabi_memcpy>
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
c0de02da:	f006 fc29 	bl	c0de6b30 <setjmp>
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
c0de02f8:	f006 fb79 	bl	c0de69ee <try_context_set>
c0de02fc:	f405 4070 	and.w	r0, r5, #61440	@ 0xf000
c0de0300:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de0304:	d003      	beq.n	c0de030e <handleApdu+0x44>
c0de0306:	f5b0 4fc0 	cmp.w	r0, #24576	@ 0x6000
c0de030a:	f040 80a6 	bne.w	c0de045a <handleApdu+0x190>
c0de030e:	0a28      	lsrs	r0, r5, #8
c0de0310:	e0a7      	b.n	c0de0462 <handleApdu+0x198>
c0de0312:	4668      	mov	r0, sp
c0de0314:	f006 fb6b 	bl	c0de69ee <try_context_set>
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
c0de034a:	f000 ff72 	bl	c0de1232 <extractHRP>
c0de034e:	1d81      	adds	r1, r0, #6
c0de0350:	4638      	mov	r0, r7
c0de0352:	f000 fcf1 	bl	c0de0d38 <extractHDPath>
c0de0356:	eb09 050a 	add.w	r5, r9, sl
c0de035a:	f895 a002 	ldrb.w	sl, [r5, #2]
c0de035e:	f240 1111 	movw	r1, #273	@ 0x111
c0de0362:	4628      	mov	r0, r5
c0de0364:	464f      	mov	r7, r9
c0de0366:	f006 fb9d 	bl	c0de6aa4 <explicit_bzero>
c0de036a:	f240 0600 	movw	r6, #0
c0de036e:	f2c0 0600 	movt	r6, #0
c0de0372:	2000      	movs	r0, #0
c0de0374:	f829 0006 	strh.w	r0, [r9, r6]
c0de0378:	eb09 0206 	add.w	r2, r9, r6
c0de037c:	f240 110f 	movw	r1, #271	@ 0x10f
c0de0380:	4628      	mov	r0, r5
c0de0382:	f000 ff85 	bl	c0de1290 <crypto_fillAddress>
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
c0de03c0:	f000 fcf9 	bl	c0de0db6 <process_chunk>
c0de03c4:	2800      	cmp	r0, #0
c0de03c6:	f000 80a2 	beq.w	c0de050e <handleApdu+0x244>
c0de03ca:	eb09 050a 	add.w	r5, r9, sl
c0de03ce:	f240 1111 	movw	r1, #273	@ 0x111
c0de03d2:	4628      	mov	r0, r5
c0de03d4:	464f      	mov	r7, r9
c0de03d6:	f006 fb65 	bl	c0de6aa4 <explicit_bzero>
c0de03da:	f240 0600 	movw	r6, #0
c0de03de:	f2c0 0600 	movt	r6, #0
c0de03e2:	2000      	movs	r0, #0
c0de03e4:	f829 0006 	strh.w	r0, [r9, r6]
c0de03e8:	eb09 0206 	add.w	r2, r9, r6
c0de03ec:	f240 110f 	movw	r1, #271	@ 0x10f
c0de03f0:	4628      	mov	r0, r5
c0de03f2:	f000 ff4d 	bl	c0de1290 <crypto_fillAddress>
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
c0de041a:	f000 fdb1 	bl	c0de0f80 <tx_parse>
c0de041e:	2800      	cmp	r0, #0
c0de0420:	d17d      	bne.n	c0de051e <handleApdu+0x254>
c0de0422:	f003 fed0 	bl	c0de41c6 <check_app_canary>
c0de0426:	f640 30bf 	movw	r0, #3007	@ 0xbbf
c0de042a:	f2c0 0000 	movt	r0, #0
c0de042e:	f640 319f 	movw	r1, #2975	@ 0xb9f
c0de0432:	f2c0 0100 	movt	r1, #0
c0de0436:	f240 1233 	movw	r2, #307	@ 0x133
c0de043a:	f2c0 0200 	movt	r2, #0
c0de043e:	4478      	add	r0, pc
c0de0440:	4479      	add	r1, pc
c0de0442:	447a      	add	r2, pc
c0de0444:	f003 fade 	bl	c0de3a04 <view_review_init>
c0de0448:	f003 faef 	bl	c0de3a2a <view_review_show>
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
c0de0480:	f006 faab 	bl	c0de69da <try_context_get>
c0de0484:	4540      	cmp	r0, r8
c0de0486:	d102      	bne.n	c0de048e <handleApdu+0x1c4>
c0de0488:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de048a:	f006 fab0 	bl	c0de69ee <try_context_set>
c0de048e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de0492:	2800      	cmp	r0, #0
c0de0494:	d152      	bne.n	c0de053c <handleApdu+0x272>
c0de0496:	b00c      	add	sp, #48	@ 0x30
c0de0498:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de049c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de049e:	2100      	movs	r1, #0
c0de04a0:	f8ad 102c 	strh.w	r1, [sp, #44]	@ 0x2c
c0de04a4:	f006 faa3 	bl	c0de69ee <try_context_set>
c0de04a8:	2005      	movs	r0, #5
c0de04aa:	f005 ff02 	bl	c0de62b2 <os_longjmp>
c0de04ae:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de04b2:	f005 fefe 	bl	c0de62b2 <os_longjmp>
c0de04b6:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de04ba:	f005 fefa 	bl	c0de62b2 <os_longjmp>
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
c0de0512:	f005 fece 	bl	c0de62b2 <os_longjmp>
c0de0516:	f44f 40c8 	mov.w	r0, #25600	@ 0x6400
c0de051a:	f005 feca 	bl	c0de62b2 <os_longjmp>
c0de051e:	4605      	mov	r5, r0
c0de0520:	f006 fb1e 	bl	c0de6b60 <strlen>
c0de0524:	4606      	mov	r6, r0
c0de0526:	eb09 000a 	add.w	r0, r9, sl
c0de052a:	4629      	mov	r1, r5
c0de052c:	4632      	mov	r2, r6
c0de052e:	f006 fab2 	bl	c0de6a96 <__aeabi_memmove>
c0de0532:	6820      	ldr	r0, [r4, #0]
c0de0534:	4430      	add	r0, r6
c0de0536:	6020      	str	r0, [r4, #0]
c0de0538:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de053c:	f005 feb9 	bl	c0de62b2 <os_longjmp>
c0de0540:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de0544:	f005 feb5 	bl	c0de62b2 <os_longjmp>

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
c0de0574:	f003 bf8c 	b.w	c0de4490 <io_exchange>

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
c0de0594:	f006 fa86 	bl	c0de6aa4 <explicit_bzero>
c0de0598:	f10d 0206 	add.w	r2, sp, #6
c0de059c:	4620      	mov	r0, r4
c0de059e:	f44f 7187 	mov.w	r1, #270	@ 0x10e
c0de05a2:	f000 fdde 	bl	c0de1162 <crypto_sign>
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
c0de05d8:	f003 ff5a 	bl	c0de4490 <io_exchange>
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
c0de0624:	f006 f97c 	bl	c0de6920 <os_ux>
c0de0628:	2004      	movs	r0, #4
c0de062a:	f006 f9ee 	bl	c0de6a0a <os_sched_last_status>
c0de062e:	2869      	cmp	r0, #105	@ 0x69
c0de0630:	6068      	str	r0, [r5, #4]
c0de0632:	f040 81c5 	bne.w	c0de09c0 <io_event+0x3e0>
c0de0636:	f003 fe6c 	bl	c0de4312 <io_seph_ux_init_button>
c0de063a:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de063e:	f2c0 0400 	movt	r4, #0
c0de0642:	eb09 0504 	add.w	r5, r9, r4
c0de0646:	2004      	movs	r0, #4
c0de0648:	f8a5 70ca 	strh.w	r7, [r5, #202]	@ 0xca
c0de064c:	f006 f9dd 	bl	c0de6a0a <os_sched_last_status>
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
c0de067e:	f006 f90e 	bl	c0de689e <os_perso_isonboarded>
c0de0682:	28aa      	cmp	r0, #170	@ 0xaa
c0de0684:	d104      	bne.n	c0de0690 <io_event+0xb0>
c0de0686:	f006 f940 	bl	c0de690a <os_global_pin_is_validated>
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
c0de06ce:	f003 fe34 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0704:	f006 f90c 	bl	c0de6920 <os_ux>
c0de0708:	2004      	movs	r0, #4
c0de070a:	f006 f97e 	bl	c0de6a0a <os_sched_last_status>
c0de070e:	2800      	cmp	r0, #0
c0de0710:	6060      	str	r0, [r4, #4]
c0de0712:	f000 82a8 	beq.w	c0de0c66 <io_event+0x686>
c0de0716:	2897      	cmp	r0, #151	@ 0x97
c0de0718:	f000 82a5 	beq.w	c0de0c66 <io_event+0x686>
c0de071c:	2869      	cmp	r0, #105	@ 0x69
c0de071e:	f040 8208 	bne.w	c0de0b32 <io_event+0x552>
c0de0722:	f003 fdf6 	bl	c0de4312 <io_seph_ux_init_button>
c0de0726:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de072a:	f2c0 0400 	movt	r4, #0
c0de072e:	eb09 0504 	add.w	r5, r9, r4
c0de0732:	2000      	movs	r0, #0
c0de0734:	f8a5 00ca 	strh.w	r0, [r5, #202]	@ 0xca
c0de0738:	2004      	movs	r0, #4
c0de073a:	f006 f966 	bl	c0de6a0a <os_sched_last_status>
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
c0de076c:	f006 f897 	bl	c0de689e <os_perso_isonboarded>
c0de0770:	28aa      	cmp	r0, #170	@ 0xaa
c0de0772:	d104      	bne.n	c0de077e <io_event+0x19e>
c0de0774:	f006 f8c9 	bl	c0de690a <os_global_pin_is_validated>
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
c0de07bc:	f003 fdbd 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0812:	f006 f885 	bl	c0de6920 <os_ux>
c0de0816:	2004      	movs	r0, #4
c0de0818:	f006 f8f7 	bl	c0de6a0a <os_sched_last_status>
c0de081c:	2800      	cmp	r0, #0
c0de081e:	6060      	str	r0, [r4, #4]
c0de0820:	f000 8221 	beq.w	c0de0c66 <io_event+0x686>
c0de0824:	2897      	cmp	r0, #151	@ 0x97
c0de0826:	f000 821e 	beq.w	c0de0c66 <io_event+0x686>
c0de082a:	2869      	cmp	r0, #105	@ 0x69
c0de082c:	f040 81d4 	bne.w	c0de0bd8 <io_event+0x5f8>
c0de0830:	f003 fd6f 	bl	c0de4312 <io_seph_ux_init_button>
c0de0834:	eb09 0405 	add.w	r4, r9, r5
c0de0838:	2000      	movs	r0, #0
c0de083a:	f8a4 00ca 	strh.w	r0, [r4, #202]	@ 0xca
c0de083e:	2004      	movs	r0, #4
c0de0840:	f006 f8e3 	bl	c0de6a0a <os_sched_last_status>
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
c0de0872:	f006 f814 	bl	c0de689e <os_perso_isonboarded>
c0de0876:	28aa      	cmp	r0, #170	@ 0xaa
c0de0878:	d104      	bne.n	c0de0884 <io_event+0x2a4>
c0de087a:	f006 f846 	bl	c0de690a <os_global_pin_is_validated>
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
c0de08c2:	f003 fd3a 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de08f8:	f006 f812 	bl	c0de6920 <os_ux>
c0de08fc:	2004      	movs	r0, #4
c0de08fe:	f006 f884 	bl	c0de6a0a <os_sched_last_status>
c0de0902:	2869      	cmp	r0, #105	@ 0x69
c0de0904:	6060      	str	r0, [r4, #4]
c0de0906:	f040 80c9 	bne.w	c0de0a9c <io_event+0x4bc>
c0de090a:	f003 fd02 	bl	c0de4312 <io_seph_ux_init_button>
c0de090e:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de0912:	f2c0 0400 	movt	r4, #0
c0de0916:	eb09 0704 	add.w	r7, r9, r4
c0de091a:	2004      	movs	r0, #4
c0de091c:	f8a7 60ca 	strh.w	r6, [r7, #202]	@ 0xca
c0de0920:	f006 f873 	bl	c0de6a0a <os_sched_last_status>
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
c0de0952:	f005 ffa4 	bl	c0de689e <os_perso_isonboarded>
c0de0956:	28aa      	cmp	r0, #170	@ 0xaa
c0de0958:	d104      	bne.n	c0de0964 <io_event+0x384>
c0de095a:	f005 ffd6 	bl	c0de690a <os_global_pin_is_validated>
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
c0de09a2:	f003 fcca 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0a2e:	f005 ff36 	bl	c0de689e <os_perso_isonboarded>
c0de0a32:	28aa      	cmp	r0, #170	@ 0xaa
c0de0a34:	d104      	bne.n	c0de0a40 <io_event+0x460>
c0de0a36:	f005 ff68 	bl	c0de690a <os_global_pin_is_validated>
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
c0de0a7e:	f003 fc5c 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0ac4:	f005 feeb 	bl	c0de689e <os_perso_isonboarded>
c0de0ac8:	28aa      	cmp	r0, #170	@ 0xaa
c0de0aca:	d104      	bne.n	c0de0ad6 <io_event+0x4f6>
c0de0acc:	f005 ff1d 	bl	c0de690a <os_global_pin_is_validated>
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
c0de0b14:	f003 fc11 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0b4c:	f003 fc33 	bl	c0de43b6 <io_seproxyhal_button_push>
c0de0b50:	eb09 0004 	add.w	r0, r9, r4
c0de0b54:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de0b58:	2800      	cmp	r0, #0
c0de0b5a:	f000 8084 	beq.w	c0de0c66 <io_event+0x686>
c0de0b5e:	eb09 0004 	add.w	r0, r9, r4
c0de0b62:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de0b66:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de0b6a:	4281      	cmp	r1, r0
c0de0b6c:	d27b      	bcs.n	c0de0c66 <io_event+0x686>
c0de0b6e:	f005 fe96 	bl	c0de689e <os_perso_isonboarded>
c0de0b72:	28aa      	cmp	r0, #170	@ 0xaa
c0de0b74:	d103      	bne.n	c0de0b7e <io_event+0x59e>
c0de0b76:	f005 fec8 	bl	c0de690a <os_global_pin_is_validated>
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
c0de0bba:	f003 fbbe 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0bf4:	f005 fe53 	bl	c0de689e <os_perso_isonboarded>
c0de0bf8:	28aa      	cmp	r0, #170	@ 0xaa
c0de0bfa:	d103      	bne.n	c0de0c04 <io_event+0x624>
c0de0bfc:	f005 fe85 	bl	c0de690a <os_global_pin_is_validated>
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
c0de0c40:	f003 fb7b 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0c62:	f005 fee0 	bleq	c0de6a26 <screen_update>
c0de0c66:	f003 fbe4 	bl	c0de4432 <io_seph_is_status_sent>
c0de0c6a:	b908      	cbnz	r0, c0de0c70 <io_event+0x690>
c0de0c6c:	f003 fbdd 	bl	c0de442a <io_seproxyhal_general_status>
c0de0c70:	2001      	movs	r0, #1
c0de0c72:	b001      	add	sp, #4
c0de0c74:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0c76:	2c00      	cmp	r4, #0
c0de0c78:	d0f5      	beq.n	c0de0c66 <io_event+0x686>
c0de0c7a:	2c97      	cmp	r4, #151	@ 0x97
c0de0c7c:	d0f3      	beq.n	c0de0c66 <io_event+0x686>
c0de0c7e:	f003 fb48 	bl	c0de4312 <io_seph_ux_init_button>
c0de0c82:	eb09 0705 	add.w	r7, r9, r5
c0de0c86:	2000      	movs	r0, #0
c0de0c88:	f8a7 00ca 	strh.w	r0, [r7, #202]	@ 0xca
c0de0c8c:	2004      	movs	r0, #4
c0de0c8e:	f005 febc 	bl	c0de6a0a <os_sched_last_status>
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
c0de0cc0:	f005 fded 	bl	c0de689e <os_perso_isonboarded>
c0de0cc4:	28aa      	cmp	r0, #170	@ 0xaa
c0de0cc6:	d104      	bne.n	c0de0cd2 <io_event+0x6f2>
c0de0cc8:	f005 fe1f 	bl	c0de690a <os_global_pin_is_validated>
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
c0de0d0e:	f003 fb14 	bl	c0de433a <io_seph_ux_display_bagl_element>
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
c0de0d32:	f005 fe78 	bl	c0de6a26 <screen_update>
c0de0d36:	e664      	b.n	c0de0a02 <io_event+0x422>

c0de0d38 <extractHDPath>:
c0de0d38:	b5b0      	push	{r4, r5, r7, lr}
c0de0d3a:	1a40      	subs	r0, r0, r1
c0de0d3c:	2813      	cmp	r0, #19
c0de0d3e:	d932      	bls.n	c0de0da6 <extractHDPath+0x6e>
c0de0d40:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de0d44:	f643 155c 	movw	r5, #14684	@ 0x395c
c0de0d48:	f2c0 0000 	movt	r0, #0
c0de0d4c:	f2c0 0500 	movt	r5, #0
c0de0d50:	4448      	add	r0, r9
c0de0d52:	eb09 0405 	add.w	r4, r9, r5
c0de0d56:	4401      	add	r1, r0
c0de0d58:	4620      	mov	r0, r4
c0de0d5a:	2214      	movs	r2, #20
c0de0d5c:	f005 fe99 	bl	c0de6a92 <__aeabi_memcpy>
c0de0d60:	f859 1005 	ldr.w	r1, [r9, r5]
c0de0d64:	202c      	movs	r0, #44	@ 0x2c
c0de0d66:	f2c8 0000 	movt	r0, #32768	@ 0x8000
c0de0d6a:	4281      	cmp	r1, r0
c0de0d6c:	d11f      	bne.n	c0de0dae <extractHDPath+0x76>
c0de0d6e:	6861      	ldr	r1, [r4, #4]
c0de0d70:	3010      	adds	r0, #16
c0de0d72:	4281      	cmp	r1, r0
c0de0d74:	d11b      	bne.n	c0de0dae <extractHDPath+0x76>
c0de0d76:	68e0      	ldr	r0, [r4, #12]
c0de0d78:	b9c8      	cbnz	r0, c0de0dae <extractHDPath+0x76>
c0de0d7a:	f002 ffcf 	bl	c0de3d1c <app_mode_expert>
c0de0d7e:	b968      	cbnz	r0, c0de0d9c <extractHDPath+0x64>
c0de0d80:	2000      	movs	r0, #0
c0de0d82:	bf00      	nop
c0de0d84:	eb09 0105 	add.w	r1, r9, r5
c0de0d88:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de0d8c:	6889      	ldr	r1, [r1, #8]
c0de0d8e:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
c0de0d92:	2965      	cmp	r1, #101	@ 0x65
c0de0d94:	d203      	bcs.n	c0de0d9e <extractHDPath+0x66>
c0de0d96:	3001      	adds	r0, #1
c0de0d98:	2803      	cmp	r0, #3
c0de0d9a:	d1f3      	bne.n	c0de0d84 <extractHDPath+0x4c>
c0de0d9c:	bdb0      	pop	{r4, r5, r7, pc}
c0de0d9e:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0da2:	f005 fa86 	bl	c0de62b2 <os_longjmp>
c0de0da6:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de0daa:	f005 fa82 	bl	c0de62b2 <os_longjmp>
c0de0dae:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de0db2:	f005 fa7e 	bl	c0de62b2 <os_longjmp>

c0de0db6 <process_chunk>:
c0de0db6:	b510      	push	{r4, lr}
c0de0db8:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de0dbc:	f2c0 0000 	movt	r0, #0
c0de0dc0:	eb09 0200 	add.w	r2, r9, r0
c0de0dc4:	78d3      	ldrb	r3, [r2, #3]
c0de0dc6:	bb4b      	cbnz	r3, c0de0e1c <process_chunk+0x66>
c0de0dc8:	460c      	mov	r4, r1
c0de0dca:	2904      	cmp	r1, #4
c0de0dcc:	d92a      	bls.n	c0de0e24 <process_chunk+0x6e>
c0de0dce:	7891      	ldrb	r1, [r2, #2]
c0de0dd0:	2902      	cmp	r1, #2
c0de0dd2:	d015      	beq.n	c0de0e00 <process_chunk+0x4a>
c0de0dd4:	2901      	cmp	r1, #1
c0de0dd6:	d009      	beq.n	c0de0dec <process_chunk+0x36>
c0de0dd8:	bb01      	cbnz	r1, c0de0e1c <process_chunk+0x66>
c0de0dda:	f000 f8ad 	bl	c0de0f38 <tx_initialize>
c0de0dde:	f000 f8c1 	bl	c0de0f64 <tx_reset>
c0de0de2:	4620      	mov	r0, r4
c0de0de4:	2105      	movs	r1, #5
c0de0de6:	f7ff ffa7 	bl	c0de0d38 <extractHDPath>
c0de0dea:	e007      	b.n	c0de0dfc <process_chunk+0x46>
c0de0dec:	3c05      	subs	r4, #5
c0de0dee:	4448      	add	r0, r9
c0de0df0:	3005      	adds	r0, #5
c0de0df2:	4621      	mov	r1, r4
c0de0df4:	f000 f8b8 	bl	c0de0f68 <tx_append>
c0de0df8:	42a0      	cmp	r0, r4
c0de0dfa:	d10b      	bne.n	c0de0e14 <process_chunk+0x5e>
c0de0dfc:	2000      	movs	r0, #0
c0de0dfe:	bd10      	pop	{r4, pc}
c0de0e00:	3c05      	subs	r4, #5
c0de0e02:	4448      	add	r0, r9
c0de0e04:	3005      	adds	r0, #5
c0de0e06:	4621      	mov	r1, r4
c0de0e08:	f000 f8ae 	bl	c0de0f68 <tx_append>
c0de0e0c:	42a0      	cmp	r0, r4
c0de0e0e:	bf04      	itt	eq
c0de0e10:	2001      	moveq	r0, #1
c0de0e12:	bd10      	popeq	{r4, pc}
c0de0e14:	f646 1083 	movw	r0, #27011	@ 0x6983
c0de0e18:	f005 fa4b 	bl	c0de62b2 <os_longjmp>
c0de0e1c:	f44f 40d6 	mov.w	r0, #27392	@ 0x6b00
c0de0e20:	f005 fa47 	bl	c0de62b2 <os_longjmp>
c0de0e24:	f44f 40ce 	mov.w	r0, #26368	@ 0x6700
c0de0e28:	f005 fa43 	bl	c0de62b2 <os_longjmp>

c0de0e2c <app_init>:
c0de0e2c:	b580      	push	{r7, lr}
c0de0e2e:	f003 fc6f 	bl	c0de4710 <io_seproxyhal_init>
c0de0e32:	2000      	movs	r0, #0
c0de0e34:	f003 fc94 	bl	c0de4760 <USB_power>
c0de0e38:	2001      	movs	r0, #1
c0de0e3a:	f003 fc91 	bl	c0de4760 <USB_power>
c0de0e3e:	f002 ff65 	bl	c0de3d0c <app_mode_reset>
c0de0e42:	2000      	movs	r0, #0
c0de0e44:	2100      	movs	r1, #0
c0de0e46:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de0e4a:	f002 bb11 	b.w	c0de3470 <view_idle_show>
	...

c0de0e50 <app_main>:
c0de0e50:	b090      	sub	sp, #64	@ 0x40
c0de0e52:	2500      	movs	r5, #0
c0de0e54:	950f      	str	r5, [sp, #60]	@ 0x3c
c0de0e56:	950e      	str	r5, [sp, #56]	@ 0x38
c0de0e58:	950d      	str	r5, [sp, #52]	@ 0x34
c0de0e5a:	f000 f86d 	bl	c0de0f38 <tx_initialize>
c0de0e5e:	f246 3ab8 	movw	sl, #25528	@ 0x63b8
c0de0e62:	466c      	mov	r4, sp
c0de0e64:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
c0de0e68:	ae0e      	add	r6, sp, #56	@ 0x38
c0de0e6a:	f2c0 0a00 	movt	sl, #0
c0de0e6e:	f04f 0b0d 	mov.w	fp, #13
c0de0e72:	bf00      	nop
c0de0e74:	4620      	mov	r0, r4
c0de0e76:	f8ad 5032 	strh.w	r5, [sp, #50]	@ 0x32
c0de0e7a:	f005 fe59 	bl	c0de6b30 <setjmp>
c0de0e7e:	4607      	mov	r7, r0
c0de0e80:	b280      	uxth	r0, r0
c0de0e82:	2805      	cmp	r0, #5
c0de0e84:	f8ad 702c 	strh.w	r7, [sp, #44]	@ 0x2c
c0de0e88:	d01c      	beq.n	c0de0ec4 <app_main+0x74>
c0de0e8a:	bb18      	cbnz	r0, c0de0ed4 <app_main+0x84>
c0de0e8c:	4620      	mov	r0, r4
c0de0e8e:	f005 fdae 	bl	c0de69ee <try_context_set>
c0de0e92:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0e94:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de0e96:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de0e98:	950e      	str	r5, [sp, #56]	@ 0x38
c0de0e9a:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de0e9c:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de0e9e:	b2c0      	uxtb	r0, r0
c0de0ea0:	b289      	uxth	r1, r1
c0de0ea2:	f003 faf5 	bl	c0de4490 <io_exchange>
c0de0ea6:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de0ea8:	950d      	str	r5, [sp, #52]	@ 0x34
c0de0eaa:	f003 f98c 	bl	c0de41c6 <check_app_canary>
c0de0eae:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de0eb0:	2800      	cmp	r0, #0
c0de0eb2:	d03d      	beq.n	c0de0f30 <app_main+0xe0>
c0de0eb4:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
c0de0eb6:	4640      	mov	r0, r8
c0de0eb8:	4631      	mov	r1, r6
c0de0eba:	f7ff fa06 	bl	c0de02ca <handleApdu>
c0de0ebe:	f003 f982 	bl	c0de41c6 <check_app_canary>
c0de0ec2:	e028      	b.n	c0de0f16 <app_main+0xc6>
c0de0ec4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ec6:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de0eca:	f005 fd90 	bl	c0de69ee <try_context_set>
c0de0ece:	f7ff ffad 	bl	c0de0e2c <app_init>
c0de0ed2:	e7cf      	b.n	c0de0e74 <app_main+0x24>
c0de0ed4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0ed6:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de0eda:	f005 fd88 	bl	c0de69ee <try_context_set>
c0de0ede:	f407 4070 	and.w	r0, r7, #61440	@ 0xf000
c0de0ee2:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de0ee6:	d004      	beq.n	c0de0ef2 <app_main+0xa2>
c0de0ee8:	f5b0 4fc0 	cmp.w	r0, #24576	@ 0x6000
c0de0eec:	bf18      	it	ne
c0de0eee:	f36b 27df 	bfine	r7, fp, #11, #21
c0de0ef2:	f8ad 7032 	strh.w	r7, [sp, #50]	@ 0x32
c0de0ef6:	f8bd 0032 	ldrh.w	r0, [sp, #50]	@ 0x32
c0de0efa:	4649      	mov	r1, r9
c0de0efc:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
c0de0efe:	0a00      	lsrs	r0, r0, #8
c0de0f00:	eb09 010a 	add.w	r1, r9, sl
c0de0f04:	5488      	strb	r0, [r1, r2]
c0de0f06:	f8bd 0032 	ldrh.w	r0, [sp, #50]	@ 0x32
c0de0f0a:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
c0de0f0c:	4411      	add	r1, r2
c0de0f0e:	7048      	strb	r0, [r1, #1]
c0de0f10:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de0f12:	3002      	adds	r0, #2
c0de0f14:	900e      	str	r0, [sp, #56]	@ 0x38
c0de0f16:	f005 fd60 	bl	c0de69da <try_context_get>
c0de0f1a:	42a0      	cmp	r0, r4
c0de0f1c:	d102      	bne.n	c0de0f24 <app_main+0xd4>
c0de0f1e:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f20:	f005 fd65 	bl	c0de69ee <try_context_set>
c0de0f24:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de0f28:	2800      	cmp	r0, #0
c0de0f2a:	d0a3      	beq.n	c0de0e74 <app_main+0x24>
c0de0f2c:	f005 f9c1 	bl	c0de62b2 <os_longjmp>
c0de0f30:	f646 1082 	movw	r0, #27010	@ 0x6982
c0de0f34:	f005 f9bd 	bl	c0de62b2 <os_longjmp>

c0de0f38 <tx_initialize>:
c0de0f38:	b580      	push	{r7, lr}
c0de0f3a:	f248 20ba 	movw	r0, #33466	@ 0x82ba
c0de0f3e:	f2c0 0000 	movt	r0, #0
c0de0f42:	4478      	add	r0, pc
c0de0f44:	f005 fc72 	bl	c0de682c <pic>
c0de0f48:	4602      	mov	r2, r0
c0de0f4a:	f240 1012 	movw	r0, #274	@ 0x112
c0de0f4e:	f2c0 0000 	movt	r0, #0
c0de0f52:	4448      	add	r0, r9
c0de0f54:	f44f 5100 	mov.w	r1, #8192	@ 0x2000
c0de0f58:	f44f 4380 	mov.w	r3, #16384	@ 0x4000
c0de0f5c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de0f60:	f002 bf41 	b.w	c0de3de6 <buffering_init>

c0de0f64 <tx_reset>:
c0de0f64:	f002 bf5f 	b.w	c0de3e26 <buffering_reset>

c0de0f68 <tx_append>:
c0de0f68:	f002 bf73 	b.w	c0de3e52 <buffering_append>

c0de0f6c <tx_get_buffer_length>:
c0de0f6c:	b580      	push	{r7, lr}
c0de0f6e:	f002 ffc4 	bl	c0de3efa <buffering_get_buffer>
c0de0f72:	88c0      	ldrh	r0, [r0, #6]
c0de0f74:	bd80      	pop	{r7, pc}

c0de0f76 <tx_get_buffer>:
c0de0f76:	b580      	push	{r7, lr}
c0de0f78:	f002 ffbf 	bl	c0de3efa <buffering_get_buffer>
c0de0f7c:	6800      	ldr	r0, [r0, #0]
c0de0f7e:	bd80      	pop	{r7, pc}

c0de0f80 <tx_parse>:
c0de0f80:	b5b0      	push	{r4, r5, r7, lr}
c0de0f82:	f242 1014 	movw	r0, #8468	@ 0x2114
c0de0f86:	f2c0 0000 	movt	r0, #0
c0de0f8a:	4448      	add	r0, r9
c0de0f8c:	f44f 51c2 	mov.w	r1, #6208	@ 0x1840
c0de0f90:	f005 fd88 	bl	c0de6aa4 <explicit_bzero>
c0de0f94:	f002 ffb1 	bl	c0de3efa <buffering_get_buffer>
c0de0f98:	6804      	ldr	r4, [r0, #0]
c0de0f9a:	f002 ffae 	bl	c0de3efa <buffering_get_buffer>
c0de0f9e:	f643 1554 	movw	r5, #14676	@ 0x3954
c0de0fa2:	88c2      	ldrh	r2, [r0, #6]
c0de0fa4:	f2c0 0500 	movt	r5, #0
c0de0fa8:	eb09 0005 	add.w	r0, r9, r5
c0de0fac:	4621      	mov	r1, r4
c0de0fae:	f000 fb1d 	bl	c0de15ec <parser_parse>
c0de0fb2:	4604      	mov	r4, r0
c0de0fb4:	f246 1008 	movw	r0, #24840	@ 0x6108
c0de0fb8:	f2c0 0000 	movt	r0, #0
c0de0fbc:	4478      	add	r0, pc
c0de0fbe:	f003 f910 	bl	c0de41e2 <zemu_log_stack>
c0de0fc2:	b93c      	cbnz	r4, c0de0fd4 <tx_parse+0x54>
c0de0fc4:	eb09 0005 	add.w	r0, r9, r5
c0de0fc8:	f000 fb18 	bl	c0de15fc <parser_validate>
c0de0fcc:	4604      	mov	r4, r0
c0de0fce:	f003 f8fa 	bl	c0de41c6 <check_app_canary>
c0de0fd2:	b124      	cbz	r4, c0de0fde <tx_parse+0x5e>
c0de0fd4:	4620      	mov	r0, r4
c0de0fd6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de0fda:	f000 bdca 	b.w	c0de1b72 <parser_getErrorDescription>
c0de0fde:	2000      	movs	r0, #0
c0de0fe0:	bdb0      	pop	{r4, r5, r7, pc}

c0de0fe2 <tx_getNumItems>:
c0de0fe2:	b580      	push	{r7, lr}
c0de0fe4:	4601      	mov	r1, r0
c0de0fe6:	f643 1054 	movw	r0, #14676	@ 0x3954
c0de0fea:	f2c0 0000 	movt	r0, #0
c0de0fee:	4448      	add	r0, r9
c0de0ff0:	f000 fb49 	bl	c0de1686 <parser_getNumItems>
c0de0ff4:	2105      	movs	r1, #5
c0de0ff6:	2800      	cmp	r0, #0
c0de0ff8:	bf08      	it	eq
c0de0ffa:	2103      	moveq	r1, #3
c0de0ffc:	4608      	mov	r0, r1
c0de0ffe:	bd80      	pop	{r7, pc}

c0de1000 <tx_getItem>:
c0de1000:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1004:	b086      	sub	sp, #24
c0de1006:	f643 1854 	movw	r8, #14676	@ 0x3954
c0de100a:	4607      	mov	r7, r0
c0de100c:	2000      	movs	r0, #0
c0de100e:	f2c0 0800 	movt	r8, #0
c0de1012:	460d      	mov	r5, r1
c0de1014:	f88d 0017 	strb.w	r0, [sp, #23]
c0de1018:	eb09 0008 	add.w	r0, r9, r8
c0de101c:	f10d 0117 	add.w	r1, sp, #23
c0de1020:	461e      	mov	r6, r3
c0de1022:	4614      	mov	r4, r2
c0de1024:	f000 fb2f 	bl	c0de1686 <parser_getNumItems>
c0de1028:	4601      	mov	r1, r0
c0de102a:	2f00      	cmp	r7, #0
c0de102c:	f04f 0005 	mov.w	r0, #5
c0de1030:	d41e      	bmi.n	c0de1070 <tx_getItem+0x70>
c0de1032:	b9e9      	cbnz	r1, c0de1070 <tx_getItem+0x70>
c0de1034:	f89d 2017 	ldrb.w	r2, [sp, #23]
c0de1038:	b2f9      	uxtb	r1, r7
c0de103a:	428a      	cmp	r2, r1
c0de103c:	d318      	bcc.n	c0de1070 <tx_getItem+0x70>
c0de103e:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	@ 0x30
c0de1042:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de1044:	e9cd 6200 	strd	r6, r2, [sp]
c0de1048:	9002      	str	r0, [sp, #8]
c0de104a:	eb09 0008 	add.w	r0, r9, r8
c0de104e:	462a      	mov	r2, r5
c0de1050:	4623      	mov	r3, r4
c0de1052:	9703      	str	r7, [sp, #12]
c0de1054:	f000 fb1c 	bl	c0de1690 <parser_getItem>
c0de1058:	4601      	mov	r1, r0
c0de105a:	3803      	subs	r0, #3
c0de105c:	2802      	cmp	r0, #2
c0de105e:	f04f 0005 	mov.w	r0, #5
c0de1062:	d305      	bcc.n	c0de1070 <tx_getItem+0x70>
c0de1064:	b119      	cbz	r1, c0de106e <tx_getItem+0x6e>
c0de1066:	2901      	cmp	r1, #1
c0de1068:	bf18      	it	ne
c0de106a:	2000      	movne	r0, #0
c0de106c:	e000      	b.n	c0de1070 <tx_getItem+0x70>
c0de106e:	2003      	movs	r0, #3
c0de1070:	b006      	add	sp, #24
c0de1072:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1078 <crypto_extractPublicKey>:
c0de1078:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de107c:	b0b3      	sub	sp, #204	@ 0xcc
c0de107e:	2a21      	cmp	r2, #33	@ 0x21
c0de1080:	d201      	bcs.n	c0de1086 <crypto_extractPublicKey+0xe>
c0de1082:	200c      	movs	r0, #12
c0de1084:	e068      	b.n	c0de1158 <crypto_extractPublicKey+0xe0>
c0de1086:	4606      	mov	r6, r0
c0de1088:	a802      	add	r0, sp, #8
c0de108a:	460c      	mov	r4, r1
c0de108c:	f005 fd50 	bl	c0de6b30 <setjmp>
c0de1090:	0401      	lsls	r1, r0, #16
c0de1092:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de1096:	d00a      	beq.n	c0de10ae <crypto_extractPublicKey+0x36>
c0de1098:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de109a:	2100      	movs	r1, #0
c0de109c:	f8ad 1034 	strh.w	r1, [sp, #52]	@ 0x34
c0de10a0:	f005 fca5 	bl	c0de69ee <try_context_set>
c0de10a4:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de10a6:	f005 fca2 	bl	c0de69ee <try_context_set>
c0de10aa:	200f      	movs	r0, #15
c0de10ac:	e054      	b.n	c0de1158 <crypto_extractPublicKey+0xe0>
c0de10ae:	f10d 0808 	add.w	r8, sp, #8
c0de10b2:	4640      	mov	r0, r8
c0de10b4:	f005 fc9b 	bl	c0de69ee <try_context_set>
c0de10b8:	f04f 0a21 	mov.w	sl, #33	@ 0x21
c0de10bc:	ad0e      	add	r5, sp, #56	@ 0x38
c0de10be:	900c      	str	r0, [sp, #48]	@ 0x30
c0de10c0:	466f      	mov	r7, sp
c0de10c2:	f04f 0c00 	mov.w	ip, #0
c0de10c6:	2205      	movs	r2, #5
c0de10c8:	4650      	mov	r0, sl
c0de10ca:	4631      	mov	r1, r6
c0de10cc:	462b      	mov	r3, r5
c0de10ce:	f8c7 c000 	str.w	ip, [r7]
c0de10d2:	f005 fbef 	bl	c0de68b4 <os_perso_derive_node_bip32>
c0de10d6:	2220      	movs	r2, #32
c0de10d8:	ab16      	add	r3, sp, #88	@ 0x58
c0de10da:	4650      	mov	r0, sl
c0de10dc:	4629      	mov	r1, r5
c0de10de:	f005 f8c8 	bl	c0de6272 <cx_ecfp_init_private_key_no_throw>
c0de10e2:	bbe0      	cbnz	r0, c0de115e <crypto_extractPublicKey+0xe6>
c0de10e4:	2100      	movs	r1, #0
c0de10e6:	2021      	movs	r0, #33	@ 0x21
c0de10e8:	ab20      	add	r3, sp, #128	@ 0x80
c0de10ea:	460a      	mov	r2, r1
c0de10ec:	f005 f8c5 	bl	c0de627a <cx_ecfp_init_public_key_no_throw>
c0de10f0:	bba8      	cbnz	r0, c0de115e <crypto_extractPublicKey+0xe6>
c0de10f2:	ae20      	add	r6, sp, #128	@ 0x80
c0de10f4:	2021      	movs	r0, #33	@ 0x21
c0de10f6:	aa16      	add	r2, sp, #88	@ 0x58
c0de10f8:	2301      	movs	r3, #1
c0de10fa:	4631      	mov	r1, r6
c0de10fc:	f005 f8b5 	bl	c0de626a <cx_ecfp_generate_pair_no_throw>
c0de1100:	bb68      	cbnz	r0, c0de115e <crypto_extractPublicKey+0xe6>
c0de1102:	f005 fc6a 	bl	c0de69da <try_context_get>
c0de1106:	4540      	cmp	r0, r8
c0de1108:	d102      	bne.n	c0de1110 <crypto_extractPublicKey+0x98>
c0de110a:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de110c:	f005 fc6f 	bl	c0de69ee <try_context_set>
c0de1110:	a816      	add	r0, sp, #88	@ 0x58
c0de1112:	2128      	movs	r1, #40	@ 0x28
c0de1114:	f005 fcc6 	bl	c0de6aa4 <explicit_bzero>
c0de1118:	a80e      	add	r0, sp, #56	@ 0x38
c0de111a:	2120      	movs	r1, #32
c0de111c:	f005 fcc2 	bl	c0de6aa4 <explicit_bzero>
c0de1120:	f8bd 0034 	ldrh.w	r0, [sp, #52]	@ 0x34
c0de1124:	b9d8      	cbnz	r0, c0de115e <crypto_extractPublicKey+0xe6>
c0de1126:	2200      	movs	r2, #0
c0de1128:	f106 0148 	add.w	r1, r6, #72	@ 0x48
c0de112c:	4610      	mov	r0, r2
c0de112e:	bf00      	nop
c0de1130:	f811 2901 	ldrb.w	r2, [r1], #-1
c0de1134:	5422      	strb	r2, [r4, r0]
c0de1136:	3001      	adds	r0, #1
c0de1138:	2820      	cmp	r0, #32
c0de113a:	d1f9      	bne.n	c0de1130 <crypto_extractPublicKey+0xb8>
c0de113c:	f89d 00c8 	ldrb.w	r0, [sp, #200]	@ 0xc8
c0de1140:	2201      	movs	r2, #1
c0de1142:	f362 005f 	bfi	r0, r2, #1, #31
c0de1146:	f106 0108 	add.w	r1, r6, #8
c0de114a:	f88d 0088 	strb.w	r0, [sp, #136]	@ 0x88
c0de114e:	2221      	movs	r2, #33	@ 0x21
c0de1150:	4620      	mov	r0, r4
c0de1152:	f005 fc9e 	bl	c0de6a92 <__aeabi_memcpy>
c0de1156:	2003      	movs	r0, #3
c0de1158:	b033      	add	sp, #204	@ 0xcc
c0de115a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de115e:	f005 f8a8 	bl	c0de62b2 <os_longjmp>

c0de1162 <crypto_sign>:
c0de1162:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1166:	b0ae      	sub	sp, #184	@ 0xb8
c0de1168:	ac24      	add	r4, sp, #144	@ 0x90
c0de116a:	2520      	movs	r5, #32
c0de116c:	4688      	mov	r8, r1
c0de116e:	4682      	mov	sl, r0
c0de1170:	4620      	mov	r0, r4
c0de1172:	4629      	mov	r1, r5
c0de1174:	9205      	str	r2, [sp, #20]
c0de1176:	f005 fc95 	bl	c0de6aa4 <explicit_bzero>
c0de117a:	f7ff fefc 	bl	c0de0f76 <tx_get_buffer>
c0de117e:	4606      	mov	r6, r0
c0de1180:	f7ff fef4 	bl	c0de0f6c <tx_get_buffer_length>
c0de1184:	b281      	uxth	r1, r0
c0de1186:	4630      	mov	r0, r6
c0de1188:	4622      	mov	r2, r4
c0de118a:	462b      	mov	r3, r5
c0de118c:	f005 f87d 	bl	c0de628a <cx_hash_sha256>
c0de1190:	f10d 0b18 	add.w	fp, sp, #24
c0de1194:	4658      	mov	r0, fp
c0de1196:	f005 fccb 	bl	c0de6b30 <setjmp>
c0de119a:	2700      	movs	r7, #0
c0de119c:	f8ad 0044 	strh.w	r0, [sp, #68]	@ 0x44
c0de11a0:	463c      	mov	r4, r7
c0de11a2:	0400      	lsls	r0, r0, #16
c0de11a4:	d12b      	bne.n	c0de11fe <crypto_sign+0x9c>
c0de11a6:	a806      	add	r0, sp, #24
c0de11a8:	f005 fc21 	bl	c0de69ee <try_context_set>
c0de11ac:	f643 115c 	movw	r1, #14684	@ 0x395c
c0de11b0:	f2c0 0100 	movt	r1, #0
c0de11b4:	2621      	movs	r6, #33	@ 0x21
c0de11b6:	ac12      	add	r4, sp, #72	@ 0x48
c0de11b8:	9010      	str	r0, [sp, #64]	@ 0x40
c0de11ba:	466d      	mov	r5, sp
c0de11bc:	4449      	add	r1, r9
c0de11be:	2205      	movs	r2, #5
c0de11c0:	4630      	mov	r0, r6
c0de11c2:	4623      	mov	r3, r4
c0de11c4:	602f      	str	r7, [r5, #0]
c0de11c6:	f005 fb75 	bl	c0de68b4 <os_perso_derive_node_bip32>
c0de11ca:	2520      	movs	r5, #32
c0de11cc:	ab1a      	add	r3, sp, #104	@ 0x68
c0de11ce:	4630      	mov	r0, r6
c0de11d0:	4621      	mov	r1, r4
c0de11d2:	462a      	mov	r2, r5
c0de11d4:	f005 f84d 	bl	c0de6272 <cx_ecfp_init_private_key_no_throw>
c0de11d8:	bb48      	cbnz	r0, c0de122e <crypto_sign+0xcc>
c0de11da:	466f      	mov	r7, sp
c0de11dc:	a82d      	add	r0, sp, #180	@ 0xb4
c0de11de:	ae2c      	add	r6, sp, #176	@ 0xb0
c0de11e0:	60b8      	str	r0, [r7, #8]
c0de11e2:	a81a      	add	r0, sp, #104	@ 0x68
c0de11e4:	f240 6101 	movw	r1, #1537	@ 0x601
c0de11e8:	2203      	movs	r2, #3
c0de11ea:	ab24      	add	r3, sp, #144	@ 0x90
c0de11ec:	f8cd 80b4 	str.w	r8, [sp, #180]	@ 0xb4
c0de11f0:	e9c7 5a00 	strd	r5, sl, [r7]
c0de11f4:	60fe      	str	r6, [r7, #12]
c0de11f6:	f005 f834 	bl	c0de6262 <cx_ecdsa_sign_no_throw>
c0de11fa:	b9c0      	cbnz	r0, c0de122e <crypto_sign+0xcc>
c0de11fc:	9c2d      	ldr	r4, [sp, #180]	@ 0xb4
c0de11fe:	f005 fbec 	bl	c0de69da <try_context_get>
c0de1202:	4558      	cmp	r0, fp
c0de1204:	d102      	bne.n	c0de120c <crypto_sign+0xaa>
c0de1206:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de1208:	f005 fbf1 	bl	c0de69ee <try_context_set>
c0de120c:	a81a      	add	r0, sp, #104	@ 0x68
c0de120e:	2128      	movs	r1, #40	@ 0x28
c0de1210:	f005 fc48 	bl	c0de6aa4 <explicit_bzero>
c0de1214:	a812      	add	r0, sp, #72	@ 0x48
c0de1216:	2120      	movs	r1, #32
c0de1218:	f005 fc44 	bl	c0de6aa4 <explicit_bzero>
c0de121c:	f8bd 0044 	ldrh.w	r0, [sp, #68]	@ 0x44
c0de1220:	b928      	cbnz	r0, c0de122e <crypto_sign+0xcc>
c0de1222:	9905      	ldr	r1, [sp, #20]
c0de1224:	2003      	movs	r0, #3
c0de1226:	800c      	strh	r4, [r1, #0]
c0de1228:	b02e      	add	sp, #184	@ 0xb8
c0de122a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de122e:	f005 f840 	bl	c0de62b2 <os_longjmp>

c0de1232 <extractHRP>:
c0de1232:	b570      	push	{r4, r5, r6, lr}
c0de1234:	460c      	mov	r4, r1
c0de1236:	3101      	adds	r1, #1
c0de1238:	4281      	cmp	r1, r0
c0de123a:	d825      	bhi.n	c0de1288 <extractHRP+0x56>
c0de123c:	f643 1670 	movw	r6, #14704	@ 0x3970
c0de1240:	f2c0 0600 	movt	r6, #0
c0de1244:	eb09 0006 	add.w	r0, r9, r6
c0de1248:	2153      	movs	r1, #83	@ 0x53
c0de124a:	f005 fc2b 	bl	c0de6aa4 <explicit_bzero>
c0de124e:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de1252:	f2c0 0000 	movt	r0, #0
c0de1256:	4448      	add	r0, r9
c0de1258:	5d05      	ldrb	r5, [r0, r4]
c0de125a:	f1a5 0154 	sub.w	r1, r5, #84	@ 0x54
c0de125e:	f111 0f54 	cmn.w	r1, #84	@ 0x54
c0de1262:	f643 11c4 	movw	r1, #14788	@ 0x39c4
c0de1266:	f2c0 0100 	movt	r1, #0
c0de126a:	f809 5001 	strb.w	r5, [r9, r1]
c0de126e:	d90b      	bls.n	c0de1288 <extractHRP+0x56>
c0de1270:	4420      	add	r0, r4
c0de1272:	eb09 0406 	add.w	r4, r9, r6
c0de1276:	1c41      	adds	r1, r0, #1
c0de1278:	4620      	mov	r0, r4
c0de127a:	462a      	mov	r2, r5
c0de127c:	f005 fc09 	bl	c0de6a92 <__aeabi_memcpy>
c0de1280:	2100      	movs	r1, #0
c0de1282:	4628      	mov	r0, r5
c0de1284:	5561      	strb	r1, [r4, r5]
c0de1286:	bd70      	pop	{r4, r5, r6, pc}
c0de1288:	f646 1084 	movw	r0, #27012	@ 0x6984
c0de128c:	f005 f811 	bl	c0de62b2 <os_longjmp>

c0de1290 <crypto_fillAddress>:
c0de1290:	2953      	cmp	r1, #83	@ 0x53
c0de1292:	bf3c      	itt	cc
c0de1294:	2006      	movcc	r0, #6
c0de1296:	4770      	bxcc	lr
c0de1298:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de129c:	b0a8      	sub	sp, #160	@ 0xa0
c0de129e:	4606      	mov	r6, r0
c0de12a0:	f643 105c 	movw	r0, #14684	@ 0x395c
c0de12a4:	460d      	mov	r5, r1
c0de12a6:	f2c0 0000 	movt	r0, #0
c0de12aa:	4693      	mov	fp, r2
c0de12ac:	4448      	add	r0, r9
c0de12ae:	4631      	mov	r1, r6
c0de12b0:	462a      	mov	r2, r5
c0de12b2:	f7ff fee1 	bl	c0de1078 <crypto_extractPublicKey>
c0de12b6:	f10d 0820 	add.w	r8, sp, #32
c0de12ba:	4630      	mov	r0, r6
c0de12bc:	2121      	movs	r1, #33	@ 0x21
c0de12be:	4642      	mov	r2, r8
c0de12c0:	2320      	movs	r3, #32
c0de12c2:	f004 ffe2 	bl	c0de628a <cx_hash_sha256>
c0de12c6:	af10      	add	r7, sp, #64	@ 0x40
c0de12c8:	4638      	mov	r0, r7
c0de12ca:	f004 ffe2 	bl	c0de6292 <cx_ripemd160_init_no_throw>
c0de12ce:	2414      	movs	r4, #20
c0de12d0:	f10d 0a0c 	add.w	sl, sp, #12
c0de12d4:	4638      	mov	r0, r7
c0de12d6:	2101      	movs	r1, #1
c0de12d8:	4642      	mov	r2, r8
c0de12da:	2320      	movs	r3, #32
c0de12dc:	e9cd a400 	strd	sl, r4, [sp]
c0de12e0:	2701      	movs	r7, #1
c0de12e2:	f004 ffce 	bl	c0de6282 <cx_hash_no_throw>
c0de12e6:	f643 1070 	movw	r0, #14704	@ 0x3970
c0de12ea:	3621      	adds	r6, #33	@ 0x21
c0de12ec:	f2c0 0000 	movt	r0, #0
c0de12f0:	f1a5 0121 	sub.w	r1, r5, #33	@ 0x21
c0de12f4:	eb09 0200 	add.w	r2, r9, r0
c0de12f8:	4630      	mov	r0, r6
c0de12fa:	4653      	mov	r3, sl
c0de12fc:	9400      	str	r4, [sp, #0]
c0de12fe:	9701      	str	r7, [sp, #4]
c0de1300:	f002 fd34 	bl	c0de3d6c <bech32EncodeFromBytes>
c0de1304:	4630      	mov	r0, r6
c0de1306:	f005 fc2b 	bl	c0de6b60 <strlen>
c0de130a:	3021      	adds	r0, #33	@ 0x21
c0de130c:	f8ab 0000 	strh.w	r0, [fp]
c0de1310:	2003      	movs	r0, #3
c0de1312:	b028      	add	sp, #160	@ 0xa0
c0de1314:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1318 <json_parse>:
c0de1318:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de131c:	b083      	sub	sp, #12
c0de131e:	f641 0a08 	movw	sl, #6152	@ 0x1808
c0de1322:	f10d 0804 	add.w	r8, sp, #4
c0de1326:	4604      	mov	r4, r0
c0de1328:	eb00 070a 	add.w	r7, r0, sl
c0de132c:	4640      	mov	r0, r8
c0de132e:	4615      	mov	r5, r2
c0de1330:	460e      	mov	r6, r1
c0de1332:	f002 f806 	bl	c0de3342 <jsmn_init>
c0de1336:	4620      	mov	r0, r4
c0de1338:	f641 0110 	movw	r1, #6160	@ 0x1810
c0de133c:	f005 fbb2 	bl	c0de6aa4 <explicit_bzero>
c0de1340:	80bd      	strh	r5, [r7, #4]
c0de1342:	f104 0308 	add.w	r3, r4, #8
c0de1346:	f44f 7740 	mov.w	r7, #768	@ 0x300
c0de134a:	4640      	mov	r0, r8
c0de134c:	4631      	mov	r1, r6
c0de134e:	462a      	mov	r2, r5
c0de1350:	f844 600a 	str.w	r6, [r4, sl]
c0de1354:	9700      	str	r7, [sp, #0]
c0de1356:	f001 fde5 	bl	c0de2f24 <jsmn_parse>
c0de135a:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de135e:	dd0b      	ble.n	c0de1378 <json_parse+0x60>
c0de1360:	2100      	movs	r1, #0
c0de1362:	6061      	str	r1, [r4, #4]
c0de1364:	7021      	strb	r1, [r4, #0]
c0de1366:	b190      	cbz	r0, c0de138e <json_parse+0x76>
c0de1368:	f5b0 7f40 	cmp.w	r0, #768	@ 0x300
c0de136c:	d80d      	bhi.n	c0de138a <json_parse+0x72>
c0de136e:	6060      	str	r0, [r4, #4]
c0de1370:	2001      	movs	r0, #1
c0de1372:	7020      	strb	r0, [r4, #0]
c0de1374:	2000      	movs	r0, #0
c0de1376:	e00d      	b.n	c0de1394 <json_parse+0x7c>
c0de1378:	1cc1      	adds	r1, r0, #3
c0de137a:	d00a      	beq.n	c0de1392 <json_parse+0x7a>
c0de137c:	1c41      	adds	r1, r0, #1
c0de137e:	d004      	beq.n	c0de138a <json_parse+0x72>
c0de1380:	3002      	adds	r0, #2
c0de1382:	bf14      	ite	ne
c0de1384:	201f      	movne	r0, #31
c0de1386:	200c      	moveq	r0, #12
c0de1388:	e004      	b.n	c0de1394 <json_parse+0x7c>
c0de138a:	2015      	movs	r0, #21
c0de138c:	e002      	b.n	c0de1394 <json_parse+0x7c>
c0de138e:	2014      	movs	r0, #20
c0de1390:	e000      	b.n	c0de1394 <json_parse+0x7c>
c0de1392:	2016      	movs	r0, #22
c0de1394:	b003      	add	sp, #12
c0de1396:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
	...

c0de139c <array_get_element_count>:
c0de139c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de139e:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de13a2:	2300      	movs	r3, #0
c0de13a4:	458c      	cmp	ip, r1
c0de13a6:	8013      	strh	r3, [r2, #0]
c0de13a8:	bf3c      	itt	cc
c0de13aa:	2001      	movcc	r0, #1
c0de13ac:	bdf0      	popcc	{r4, r5, r6, r7, pc}
c0de13ae:	1c4b      	adds	r3, r1, #1
c0de13b0:	b29d      	uxth	r5, r3
c0de13b2:	45ac      	cmp	ip, r5
c0de13b4:	d916      	bls.n	c0de13e4 <array_get_element_count+0x48>
c0de13b6:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
c0de13ba:	f9b1 e00c 	ldrsh.w	lr, [r1, #12]
c0de13be:	894c      	ldrh	r4, [r1, #10]
c0de13c0:	2100      	movs	r1, #0
c0de13c2:	bf00      	nop
c0de13c4:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de13c8:	f9b5 600a 	ldrsh.w	r6, [r5, #10]
c0de13cc:	4576      	cmp	r6, lr
c0de13ce:	dc09      	bgt.n	c0de13e4 <array_get_element_count+0x48>
c0de13d0:	b2a7      	uxth	r7, r4
c0de13d2:	42be      	cmp	r6, r7
c0de13d4:	dd02      	ble.n	c0de13dc <array_get_element_count+0x40>
c0de13d6:	89ac      	ldrh	r4, [r5, #12]
c0de13d8:	3101      	adds	r1, #1
c0de13da:	8011      	strh	r1, [r2, #0]
c0de13dc:	3301      	adds	r3, #1
c0de13de:	b29d      	uxth	r5, r3
c0de13e0:	45ac      	cmp	ip, r5
c0de13e2:	d8ef      	bhi.n	c0de13c4 <array_get_element_count+0x28>
c0de13e4:	2000      	movs	r0, #0
c0de13e6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de13e8 <array_get_nth_element>:
c0de13e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de13ec:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de13f0:	458c      	cmp	ip, r1
c0de13f2:	d320      	bcc.n	c0de1436 <array_get_nth_element+0x4e>
c0de13f4:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de13f8:	3101      	adds	r1, #1
c0de13fa:	f8b7 800a 	ldrh.w	r8, [r7, #10]
c0de13fe:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de1402:	b28e      	uxth	r6, r1
c0de1404:	45b4      	cmp	ip, r6
c0de1406:	8019      	strh	r1, [r3, #0]
c0de1408:	d915      	bls.n	c0de1436 <array_get_nth_element+0x4e>
c0de140a:	2500      	movs	r5, #0
c0de140c:	eb00 06c6 	add.w	r6, r0, r6, lsl #3
c0de1410:	f9b6 700a 	ldrsh.w	r7, [r6, #10]
c0de1414:	4577      	cmp	r7, lr
c0de1416:	dc0e      	bgt.n	c0de1436 <array_get_nth_element+0x4e>
c0de1418:	fa1f f488 	uxth.w	r4, r8
c0de141c:	42a7      	cmp	r7, r4
c0de141e:	dd05      	ble.n	c0de142c <array_get_nth_element+0x44>
c0de1420:	b2ac      	uxth	r4, r5
c0de1422:	4294      	cmp	r4, r2
c0de1424:	d00a      	beq.n	c0de143c <array_get_nth_element+0x54>
c0de1426:	f8b6 800c 	ldrh.w	r8, [r6, #12]
c0de142a:	3501      	adds	r5, #1
c0de142c:	3101      	adds	r1, #1
c0de142e:	b28e      	uxth	r6, r1
c0de1430:	45b4      	cmp	ip, r6
c0de1432:	8019      	strh	r1, [r3, #0]
c0de1434:	d8ea      	bhi.n	c0de140c <array_get_nth_element+0x24>
c0de1436:	2001      	movs	r0, #1
c0de1438:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de143c:	2000      	movs	r0, #0
c0de143e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de1444 <object_get_element_count>:
c0de1444:	b570      	push	{r4, r5, r6, lr}
c0de1446:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de144a:	2300      	movs	r3, #0
c0de144c:	458c      	cmp	ip, r1
c0de144e:	8013      	strh	r3, [r2, #0]
c0de1450:	bf3c      	itt	cc
c0de1452:	2001      	movcc	r0, #1
c0de1454:	bd70      	popcc	{r4, r5, r6, pc}
c0de1456:	f101 0e01 	add.w	lr, r1, #1
c0de145a:	fa1f f38e 	uxth.w	r3, lr
c0de145e:	459c      	cmp	ip, r3
c0de1460:	d91a      	bls.n	c0de1498 <object_get_element_count+0x54>
c0de1462:	eb00 04c1 	add.w	r4, r0, r1, lsl #3
c0de1466:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
c0de146a:	8965      	ldrh	r5, [r4, #10]
c0de146c:	2400      	movs	r4, #0
c0de146e:	3008      	adds	r0, #8
c0de1470:	eb00 03c3 	add.w	r3, r0, r3, lsl #3
c0de1474:	f9b3 3002 	ldrsh.w	r3, [r3, #2]
c0de1478:	428b      	cmp	r3, r1
c0de147a:	dc0d      	bgt.n	c0de1498 <object_get_element_count+0x54>
c0de147c:	f10e 0e01 	add.w	lr, lr, #1
c0de1480:	b2ae      	uxth	r6, r5
c0de1482:	42b3      	cmp	r3, r6
c0de1484:	fa1f f38e 	uxth.w	r3, lr
c0de1488:	dd04      	ble.n	c0de1494 <object_get_element_count+0x50>
c0de148a:	eb00 05c3 	add.w	r5, r0, r3, lsl #3
c0de148e:	88ad      	ldrh	r5, [r5, #4]
c0de1490:	3401      	adds	r4, #1
c0de1492:	8014      	strh	r4, [r2, #0]
c0de1494:	459c      	cmp	ip, r3
c0de1496:	d8eb      	bhi.n	c0de1470 <object_get_element_count+0x2c>
c0de1498:	2000      	movs	r0, #0
c0de149a:	bd70      	pop	{r4, r5, r6, pc}

c0de149c <object_get_nth_key>:
c0de149c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de14a0:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de14a4:	8019      	strh	r1, [r3, #0]
c0de14a6:	458c      	cmp	ip, r1
c0de14a8:	d324      	bcc.n	c0de14f4 <object_get_nth_key+0x58>
c0de14aa:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de14ae:	1c4e      	adds	r6, r1, #1
c0de14b0:	897c      	ldrh	r4, [r7, #10]
c0de14b2:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de14b6:	b2b5      	uxth	r5, r6
c0de14b8:	45ac      	cmp	ip, r5
c0de14ba:	801e      	strh	r6, [r3, #0]
c0de14bc:	d91a      	bls.n	c0de14f4 <object_get_nth_key+0x58>
c0de14be:	f04f 0800 	mov.w	r8, #0
c0de14c2:	3008      	adds	r0, #8
c0de14c4:	1c77      	adds	r7, r6, #1
c0de14c6:	801f      	strh	r7, [r3, #0]
c0de14c8:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de14cc:	f9b5 5002 	ldrsh.w	r5, [r5, #2]
c0de14d0:	4575      	cmp	r5, lr
c0de14d2:	dc0f      	bgt.n	c0de14f4 <object_get_nth_key+0x58>
c0de14d4:	b2a1      	uxth	r1, r4
c0de14d6:	428d      	cmp	r5, r1
c0de14d8:	b2bd      	uxth	r5, r7
c0de14da:	dd08      	ble.n	c0de14ee <object_get_nth_key+0x52>
c0de14dc:	fa1f f188 	uxth.w	r1, r8
c0de14e0:	4291      	cmp	r1, r2
c0de14e2:	d00a      	beq.n	c0de14fa <object_get_nth_key+0x5e>
c0de14e4:	eb00 01c5 	add.w	r1, r0, r5, lsl #3
c0de14e8:	888c      	ldrh	r4, [r1, #4]
c0de14ea:	f108 0801 	add.w	r8, r8, #1
c0de14ee:	45ac      	cmp	ip, r5
c0de14f0:	463e      	mov	r6, r7
c0de14f2:	d8e7      	bhi.n	c0de14c4 <object_get_nth_key+0x28>
c0de14f4:	2001      	movs	r0, #1
c0de14f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de14fa:	2000      	movs	r0, #0
c0de14fc:	801e      	strh	r6, [r3, #0]
c0de14fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de1502 <object_get_nth_value>:
c0de1502:	b5b0      	push	{r4, r5, r7, lr}
c0de1504:	461c      	mov	r4, r3
c0de1506:	6843      	ldr	r3, [r0, #4]
c0de1508:	428b      	cmp	r3, r1
c0de150a:	d201      	bcs.n	c0de1510 <object_get_nth_value+0xe>
c0de150c:	2501      	movs	r5, #1
c0de150e:	e00a      	b.n	c0de1526 <object_get_nth_value+0x24>
c0de1510:	4623      	mov	r3, r4
c0de1512:	f7ff ffc3 	bl	c0de149c <object_get_nth_key>
c0de1516:	4605      	mov	r5, r0
c0de1518:	f002 fe55 	bl	c0de41c6 <check_app_canary>
c0de151c:	b91d      	cbnz	r5, c0de1526 <object_get_nth_value+0x24>
c0de151e:	8820      	ldrh	r0, [r4, #0]
c0de1520:	2500      	movs	r5, #0
c0de1522:	3001      	adds	r0, #1
c0de1524:	8020      	strh	r0, [r4, #0]
c0de1526:	4628      	mov	r0, r5
c0de1528:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de152c <object_get_value>:
c0de152c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1530:	b086      	sub	sp, #24
c0de1532:	6846      	ldr	r6, [r0, #4]
c0de1534:	428e      	cmp	r6, r1
c0de1536:	d353      	bcc.n	c0de15e0 <object_get_value+0xb4>
c0de1538:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de153c:	f101 0a01 	add.w	sl, r1, #1
c0de1540:	4690      	mov	r8, r2
c0de1542:	f9b7 200a 	ldrsh.w	r2, [r7, #10]
c0de1546:	f9b7 700c 	ldrsh.w	r7, [r7, #12]
c0de154a:	fa1f fb8a 	uxth.w	fp, sl
c0de154e:	455e      	cmp	r6, fp
c0de1550:	f8a3 a000 	strh.w	sl, [r3]
c0de1554:	d944      	bls.n	c0de15e0 <object_get_value+0xb4>
c0de1556:	4605      	mov	r5, r0
c0de1558:	f641 0008 	movw	r0, #6152	@ 0x1808
c0de155c:	4428      	add	r0, r5
c0de155e:	f105 0108 	add.w	r1, r5, #8
c0de1562:	e9cd 5000 	strd	r5, r0, [sp]
c0de1566:	9304      	str	r3, [sp, #16]
c0de1568:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de156c:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de1570:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
c0de1574:	f9b0 5004 	ldrsh.w	r5, [r0, #4]
c0de1578:	f10a 0a01 	add.w	sl, sl, #1
c0de157c:	42bc      	cmp	r4, r7
c0de157e:	f8a3 a000 	strh.w	sl, [r3]
c0de1582:	dc2d      	bgt.n	c0de15e0 <object_get_value+0xb4>
c0de1584:	42a2      	cmp	r2, r4
c0de1586:	fa1f fb8a 	uxth.w	fp, sl
c0de158a:	da27      	bge.n	c0de15dc <object_get_value+0xb0>
c0de158c:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de1590:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de1594:	9005      	str	r0, [sp, #20]
c0de1596:	4640      	mov	r0, r8
c0de1598:	f005 fae2 	bl	c0de6b60 <strlen>
c0de159c:	b287      	uxth	r7, r0
c0de159e:	1b28      	subs	r0, r5, r4
c0de15a0:	4287      	cmp	r7, r0
c0de15a2:	d117      	bne.n	c0de15d4 <object_get_value+0xa8>
c0de15a4:	4640      	mov	r0, r8
c0de15a6:	4645      	mov	r5, r8
c0de15a8:	f005 f940 	bl	c0de682c <pic>
c0de15ac:	9901      	ldr	r1, [sp, #4]
c0de15ae:	4606      	mov	r6, r0
c0de15b0:	6809      	ldr	r1, [r1, #0]
c0de15b2:	1908      	adds	r0, r1, r4
c0de15b4:	f005 f93a 	bl	c0de682c <pic>
c0de15b8:	4601      	mov	r1, r0
c0de15ba:	4630      	mov	r0, r6
c0de15bc:	463a      	mov	r2, r7
c0de15be:	f005 fa77 	bl	c0de6ab0 <memcmp>
c0de15c2:	b188      	cbz	r0, c0de15e8 <object_get_value+0xbc>
c0de15c4:	9b04      	ldr	r3, [sp, #16]
c0de15c6:	9800      	ldr	r0, [sp, #0]
c0de15c8:	f8b3 b000 	ldrh.w	fp, [r3]
c0de15cc:	6846      	ldr	r6, [r0, #4]
c0de15ce:	46da      	mov	sl, fp
c0de15d0:	46a8      	mov	r8, r5
c0de15d2:	e000      	b.n	c0de15d6 <object_get_value+0xaa>
c0de15d4:	9b04      	ldr	r3, [sp, #16]
c0de15d6:	9a05      	ldr	r2, [sp, #20]
c0de15d8:	e9dd 1702 	ldrd	r1, r7, [sp, #8]
c0de15dc:	455e      	cmp	r6, fp
c0de15de:	d8c5      	bhi.n	c0de156c <object_get_value+0x40>
c0de15e0:	2001      	movs	r0, #1
c0de15e2:	b006      	add	sp, #24
c0de15e4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de15e8:	2000      	movs	r0, #0
c0de15ea:	e7fa      	b.n	c0de15e2 <object_get_value+0xb6>

c0de15ec <parser_parse>:
c0de15ec:	b510      	push	{r4, lr}
c0de15ee:	f000 fc08 	bl	c0de1e02 <tx_display_readTx>
c0de15f2:	4604      	mov	r4, r0
c0de15f4:	f002 fde7 	bl	c0de41c6 <check_app_canary>
c0de15f8:	4620      	mov	r0, r4
c0de15fa:	bd10      	pop	{r4, pc}

c0de15fc <parser_validate>:
c0de15fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1600:	b09a      	sub	sp, #104	@ 0x68
c0de1602:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1606:	f2c0 0000 	movt	r0, #0
c0de160a:	4448      	add	r0, r9
c0de160c:	3004      	adds	r0, #4
c0de160e:	f001 fc23 	bl	c0de2e58 <tx_validate>
c0de1612:	4604      	mov	r4, r0
c0de1614:	f002 fdd7 	bl	c0de41c6 <check_app_canary>
c0de1618:	b954      	cbnz	r4, c0de1630 <parser_validate+0x34>
c0de161a:	2000      	movs	r0, #0
c0de161c:	f88d 0067 	strb.w	r0, [sp, #103]	@ 0x67
c0de1620:	f10d 0067 	add.w	r0, sp, #103	@ 0x67
c0de1624:	f000 fe70 	bl	c0de2308 <tx_display_numItems>
c0de1628:	4604      	mov	r4, r0
c0de162a:	f002 fdcc 	bl	c0de41c6 <check_app_canary>
c0de162e:	b11c      	cbz	r4, c0de1638 <parser_validate+0x3c>
c0de1630:	4620      	mov	r0, r4
c0de1632:	b01a      	add	sp, #104	@ 0x68
c0de1634:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1638:	f89d 0067 	ldrb.w	r0, [sp, #103]	@ 0x67
c0de163c:	2400      	movs	r4, #0
c0de163e:	2800      	cmp	r0, #0
c0de1640:	d0f6      	beq.n	c0de1630 <parser_validate+0x34>
c0de1642:	f10d 0816 	add.w	r8, sp, #22
c0de1646:	f04f 0a28 	mov.w	sl, #40	@ 0x28
c0de164a:	f10d 0b17 	add.w	fp, sp, #23
c0de164e:	f10d 053f 	add.w	r5, sp, #63	@ 0x3f
c0de1652:	2700      	movs	r7, #0
c0de1654:	b2f9      	uxtb	r1, r7
c0de1656:	462a      	mov	r2, r5
c0de1658:	2328      	movs	r3, #40	@ 0x28
c0de165a:	f88d 4016 	strb.w	r4, [sp, #22]
c0de165e:	e9cd ba00 	strd	fp, sl, [sp]
c0de1662:	9402      	str	r4, [sp, #8]
c0de1664:	f8cd 800c 	str.w	r8, [sp, #12]
c0de1668:	f000 f812 	bl	c0de1690 <parser_getItem>
c0de166c:	4606      	mov	r6, r0
c0de166e:	f002 fdaa 	bl	c0de41c6 <check_app_canary>
c0de1672:	b936      	cbnz	r6, c0de1682 <parser_validate+0x86>
c0de1674:	f89d 0067 	ldrb.w	r0, [sp, #103]	@ 0x67
c0de1678:	3701      	adds	r7, #1
c0de167a:	4287      	cmp	r7, r0
c0de167c:	d3ea      	bcc.n	c0de1654 <parser_validate+0x58>
c0de167e:	2400      	movs	r4, #0
c0de1680:	e7d6      	b.n	c0de1630 <parser_validate+0x34>
c0de1682:	4634      	mov	r4, r6
c0de1684:	e7d4      	b.n	c0de1630 <parser_validate+0x34>

c0de1686 <parser_getNumItems>:
c0de1686:	4608      	mov	r0, r1
c0de1688:	2100      	movs	r1, #0
c0de168a:	7001      	strb	r1, [r0, #0]
c0de168c:	f000 be3c 	b.w	c0de2308 <tx_display_numItems>

c0de1690 <parser_getItem>:
c0de1690:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1694:	b0e0      	sub	sp, #384	@ 0x180
c0de1696:	9d6b      	ldr	r5, [sp, #428]	@ 0x1ac
c0de1698:	460f      	mov	r7, r1
c0de169a:	e9dd 4b68 	ldrd	r4, fp, [sp, #416]	@ 0x1a0
c0de169e:	2600      	movs	r6, #0
c0de16a0:	4610      	mov	r0, r2
c0de16a2:	4619      	mov	r1, r3
c0de16a4:	469a      	mov	sl, r3
c0de16a6:	4690      	mov	r8, r2
c0de16a8:	702e      	strb	r6, [r5, #0]
c0de16aa:	f005 f9fb 	bl	c0de6aa4 <explicit_bzero>
c0de16ae:	4620      	mov	r0, r4
c0de16b0:	4659      	mov	r1, fp
c0de16b2:	f005 f9f7 	bl	c0de6aa4 <explicit_bzero>
c0de16b6:	f10d 000f 	add.w	r0, sp, #15
c0de16ba:	f88d 600f 	strb.w	r6, [sp, #15]
c0de16be:	f000 fe23 	bl	c0de2308 <tx_display_numItems>
c0de16c2:	4606      	mov	r6, r0
c0de16c4:	f002 fd7f 	bl	c0de41c6 <check_app_canary>
c0de16c8:	b11e      	cbz	r6, c0de16d2 <parser_getItem+0x42>
c0de16ca:	4630      	mov	r0, r6
c0de16cc:	b060      	add	sp, #384	@ 0x180
c0de16ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de16d2:	f002 fd78 	bl	c0de41c6 <check_app_canary>
c0de16d6:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de16da:	2800      	cmp	r0, #0
c0de16dc:	d053      	beq.n	c0de1786 <parser_getItem+0xf6>
c0de16de:	42b8      	cmp	r0, r7
c0de16e0:	d953      	bls.n	c0de178a <parser_getItem+0xfa>
c0de16e2:	2000      	movs	r0, #0
c0de16e4:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de16e8:	a904      	add	r1, sp, #16
c0de16ea:	ab03      	add	r3, sp, #12
c0de16ec:	4638      	mov	r0, r7
c0de16ee:	2264      	movs	r2, #100	@ 0x64
c0de16f0:	f000 fe86 	bl	c0de2400 <tx_display_query>
c0de16f4:	4606      	mov	r6, r0
c0de16f6:	f002 fd66 	bl	c0de41c6 <check_app_canary>
c0de16fa:	2e00      	cmp	r6, #0
c0de16fc:	d1e5      	bne.n	c0de16ca <parser_getItem+0x3a>
c0de16fe:	9f6a      	ldr	r7, [sp, #424]	@ 0x1a8
c0de1700:	f002 fd61 	bl	c0de41c6 <check_app_canary>
c0de1704:	f245 62a5 	movw	r2, #22181	@ 0x56a5
c0de1708:	f2c0 0200 	movt	r2, #0
c0de170c:	ae04      	add	r6, sp, #16
c0de170e:	447a      	add	r2, pc
c0de1710:	4640      	mov	r0, r8
c0de1712:	4651      	mov	r1, sl
c0de1714:	4633      	mov	r3, r6
c0de1716:	f004 fdd7 	bl	c0de62c8 <snprintf>
c0de171a:	f645 1127 	movw	r1, #22823	@ 0x5927
c0de171e:	f2c0 0100 	movt	r1, #0
c0de1722:	4479      	add	r1, pc
c0de1724:	4630      	mov	r0, r6
c0de1726:	220b      	movs	r2, #11
c0de1728:	f005 f9c2 	bl	c0de6ab0 <memcmp>
c0de172c:	b378      	cbz	r0, c0de178e <parser_getItem+0xfe>
c0de172e:	f245 515d 	movw	r1, #21853	@ 0x555d
c0de1732:	f2c0 0100 	movt	r1, #0
c0de1736:	4479      	add	r1, pc
c0de1738:	a804      	add	r0, sp, #16
c0de173a:	2212      	movs	r2, #18
c0de173c:	f005 f9b8 	bl	c0de6ab0 <memcmp>
c0de1740:	b328      	cbz	r0, c0de178e <parser_getItem+0xfe>
c0de1742:	f645 2121 	movw	r1, #23073	@ 0x5a21
c0de1746:	f2c0 0100 	movt	r1, #0
c0de174a:	4479      	add	r1, pc
c0de174c:	a804      	add	r0, sp, #16
c0de174e:	2213      	movs	r2, #19
c0de1750:	f005 f9ae 	bl	c0de6ab0 <memcmp>
c0de1754:	b1d8      	cbz	r0, c0de178e <parser_getItem+0xfe>
c0de1756:	f245 51bc 	movw	r1, #21948	@ 0x55bc
c0de175a:	f2c0 0100 	movt	r1, #0
c0de175e:	4479      	add	r1, pc
c0de1760:	a804      	add	r0, sp, #16
c0de1762:	2212      	movs	r2, #18
c0de1764:	f005 f9a4 	bl	c0de6ab0 <memcmp>
c0de1768:	b188      	cbz	r0, c0de178e <parser_getItem+0xfe>
c0de176a:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de176e:	4621      	mov	r1, r4
c0de1770:	465a      	mov	r2, fp
c0de1772:	463b      	mov	r3, r7
c0de1774:	9500      	str	r5, [sp, #0]
c0de1776:	f001 f84b 	bl	c0de2810 <tx_getToken>
c0de177a:	4606      	mov	r6, r0
c0de177c:	f002 fd23 	bl	c0de41c6 <check_app_canary>
c0de1780:	2e00      	cmp	r6, #0
c0de1782:	d1a2      	bne.n	c0de16ca <parser_getItem+0x3a>
c0de1784:	e037      	b.n	c0de17f6 <parser_getItem+0x166>
c0de1786:	260a      	movs	r6, #10
c0de1788:	e79f      	b.n	c0de16ca <parser_getItem+0x3a>
c0de178a:	2603      	movs	r6, #3
c0de178c:	e79d      	b.n	c0de16ca <parser_getItem+0x3a>
c0de178e:	2000      	movs	r0, #0
c0de1790:	7028      	strb	r0, [r5, #0]
c0de1792:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1796:	f2c0 0000 	movt	r0, #0
c0de179a:	465c      	mov	r4, fp
c0de179c:	f8bd b00c 	ldrh.w	fp, [sp, #12]
c0de17a0:	4448      	add	r0, r9
c0de17a2:	3004      	adds	r0, #4
c0de17a4:	eb00 01cb 	add.w	r1, r0, fp, lsl #3
c0de17a8:	7a09      	ldrb	r1, [r1, #8]
c0de17aa:	f50d 72bf 	add.w	r2, sp, #382	@ 0x17e
c0de17ae:	2902      	cmp	r1, #2
c0de17b0:	bf08      	it	eq
c0de17b2:	f10b 0b01 	addeq.w	fp, fp, #1
c0de17b6:	fa1f f78b 	uxth.w	r7, fp
c0de17ba:	4639      	mov	r1, r7
c0de17bc:	f7ff fdee 	bl	c0de139c <array_get_element_count>
c0de17c0:	4606      	mov	r6, r0
c0de17c2:	f002 fd00 	bl	c0de41c6 <check_app_canary>
c0de17c6:	2e00      	cmp	r6, #0
c0de17c8:	f040 8094 	bne.w	c0de18f4 <parser_getItem+0x264>
c0de17cc:	f8bd 017e 	ldrh.w	r0, [sp, #382]	@ 0x17e
c0de17d0:	9702      	str	r7, [sp, #8]
c0de17d2:	2804      	cmp	r0, #4
c0de17d4:	d027      	beq.n	c0de1826 <parser_getItem+0x196>
c0de17d6:	2800      	cmp	r0, #0
c0de17d8:	f040 808b 	bne.w	c0de18f2 <parser_getItem+0x262>
c0de17dc:	2001      	movs	r0, #1
c0de17de:	7028      	strb	r0, [r5, #0]
c0de17e0:	f245 7224 	movw	r2, #22308	@ 0x5724
c0de17e4:	f2c0 0200 	movt	r2, #0
c0de17e8:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de17ea:	447a      	add	r2, pc
c0de17ec:	4621      	mov	r1, r4
c0de17ee:	f004 fd6b 	bl	c0de62c8 <snprintf>
c0de17f2:	f002 fce8 	bl	c0de41c6 <check_app_canary>
c0de17f6:	f002 fce6 	bl	c0de41c6 <check_app_canary>
c0de17fa:	f000 ffd3 	bl	c0de27a4 <tx_display_make_friendly>
c0de17fe:	4606      	mov	r6, r0
c0de1800:	f002 fce1 	bl	c0de41c6 <check_app_canary>
c0de1804:	2e00      	cmp	r6, #0
c0de1806:	f47f af60 	bne.w	c0de16ca <parser_getItem+0x3a>
c0de180a:	f002 fcdc 	bl	c0de41c6 <check_app_canary>
c0de180e:	f245 529d 	movw	r2, #21917	@ 0x559d
c0de1812:	f2c0 0200 	movt	r2, #0
c0de1816:	447a      	add	r2, pc
c0de1818:	ab04      	add	r3, sp, #16
c0de181a:	4640      	mov	r0, r8
c0de181c:	4651      	mov	r1, sl
c0de181e:	f004 fd53 	bl	c0de62c8 <snprintf>
c0de1822:	2600      	movs	r6, #0
c0de1824:	e066      	b.n	c0de18f4 <parser_getItem+0x264>
c0de1826:	f643 13c8 	movw	r3, #14792	@ 0x39c8
c0de182a:	f2c0 0300 	movt	r3, #0
c0de182e:	9902      	ldr	r1, [sp, #8]
c0de1830:	eb09 0003 	add.w	r0, r9, r3
c0de1834:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de1838:	7b00      	ldrb	r0, [r0, #12]
c0de183a:	2801      	cmp	r0, #1
c0de183c:	d159      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de183e:	f10b 0001 	add.w	r0, fp, #1
c0de1842:	b280      	uxth	r0, r0
c0de1844:	eb09 0103 	add.w	r1, r9, r3
c0de1848:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de184c:	7b09      	ldrb	r1, [r1, #12]
c0de184e:	2903      	cmp	r1, #3
c0de1850:	d14f      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de1852:	eb09 0103 	add.w	r1, r9, r3
c0de1856:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de185a:	f9b0 100e 	ldrsh.w	r1, [r0, #14]
c0de185e:	f9b0 0010 	ldrsh.w	r0, [r0, #16]
c0de1862:	1a40      	subs	r0, r0, r1
c0de1864:	2806      	cmp	r0, #6
c0de1866:	d144      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de1868:	f859 c003 	ldr.w	ip, [r9, r3]
c0de186c:	f81c 2001 	ldrb.w	r2, [ip, r1]
c0de1870:	2a61      	cmp	r2, #97	@ 0x61
c0de1872:	d13e      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de1874:	f245 5ea5 	movw	lr, #21925	@ 0x55a5
c0de1878:	4461      	add	r1, ip
c0de187a:	f2c0 0e00 	movt	lr, #0
c0de187e:	1c4a      	adds	r2, r1, #1
c0de1880:	2100      	movs	r1, #0
c0de1882:	44fe      	add	lr, pc
c0de1884:	2905      	cmp	r1, #5
c0de1886:	d008      	beq.n	c0de189a <parser_getItem+0x20a>
c0de1888:	eb0e 0601 	add.w	r6, lr, r1
c0de188c:	7876      	ldrb	r6, [r6, #1]
c0de188e:	5c50      	ldrb	r0, [r2, r1]
c0de1890:	3101      	adds	r1, #1
c0de1892:	4286      	cmp	r6, r0
c0de1894:	d0f6      	beq.n	c0de1884 <parser_getItem+0x1f4>
c0de1896:	2906      	cmp	r1, #6
c0de1898:	d32b      	bcc.n	c0de18f2 <parser_getItem+0x262>
c0de189a:	f10b 0003 	add.w	r0, fp, #3
c0de189e:	b281      	uxth	r1, r0
c0de18a0:	eb09 0003 	add.w	r0, r9, r3
c0de18a4:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de18a8:	7b00      	ldrb	r0, [r0, #12]
c0de18aa:	2803      	cmp	r0, #3
c0de18ac:	d121      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de18ae:	eb09 0003 	add.w	r0, r9, r3
c0de18b2:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de18b6:	f9b0 100e 	ldrsh.w	r1, [r0, #14]
c0de18ba:	f9b0 0010 	ldrsh.w	r0, [r0, #16]
c0de18be:	1a40      	subs	r0, r0, r1
c0de18c0:	2805      	cmp	r0, #5
c0de18c2:	d116      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de18c4:	f81c 0001 	ldrb.w	r0, [ip, r1]
c0de18c8:	2864      	cmp	r0, #100	@ 0x64
c0de18ca:	d112      	bne.n	c0de18f2 <parser_getItem+0x262>
c0de18cc:	f645 0260 	movw	r2, #22624	@ 0x5860
c0de18d0:	eb01 000c 	add.w	r0, r1, ip
c0de18d4:	f2c0 0200 	movt	r2, #0
c0de18d8:	1c41      	adds	r1, r0, #1
c0de18da:	2000      	movs	r0, #0
c0de18dc:	447a      	add	r2, pc
c0de18de:	2804      	cmp	r0, #4
c0de18e0:	d00b      	beq.n	c0de18fa <parser_getItem+0x26a>
c0de18e2:	1813      	adds	r3, r2, r0
c0de18e4:	785b      	ldrb	r3, [r3, #1]
c0de18e6:	5c0f      	ldrb	r7, [r1, r0]
c0de18e8:	3001      	adds	r0, #1
c0de18ea:	42bb      	cmp	r3, r7
c0de18ec:	d0f7      	beq.n	c0de18de <parser_getItem+0x24e>
c0de18ee:	2805      	cmp	r0, #5
c0de18f0:	d203      	bcs.n	c0de18fa <parser_getItem+0x26a>
c0de18f2:	260d      	movs	r6, #13
c0de18f4:	f002 fc67 	bl	c0de41c6 <check_app_canary>
c0de18f8:	e6e7      	b.n	c0de16ca <parser_getItem+0x3a>
c0de18fa:	a82a      	add	r0, sp, #168	@ 0xa8
c0de18fc:	2132      	movs	r1, #50	@ 0x32
c0de18fe:	f005 f8d1 	bl	c0de6aa4 <explicit_bzero>
c0de1902:	a81d      	add	r0, sp, #116	@ 0x74
c0de1904:	2132      	movs	r1, #50	@ 0x32
c0de1906:	f005 f8cd 	bl	c0de6aa4 <explicit_bzero>
c0de190a:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de190c:	4621      	mov	r1, r4
c0de190e:	f005 f8c9 	bl	c0de6aa4 <explicit_bzero>
c0de1912:	a837      	add	r0, sp, #220	@ 0xdc
c0de1914:	21a0      	movs	r1, #160	@ 0xa0
c0de1916:	f005 f8c5 	bl	c0de6aa4 <explicit_bzero>
c0de191a:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de191e:	9902      	ldr	r1, [sp, #8]
c0de1920:	f2c0 0000 	movt	r0, #0
c0de1924:	4448      	add	r0, r9
c0de1926:	1c8a      	adds	r2, r1, #2
c0de1928:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
c0de192c:	f9b0 000e 	ldrsh.w	r0, [r0, #14]
c0de1930:	2800      	cmp	r0, #0
c0de1932:	d47d      	bmi.n	c0de1a30 <parser_getItem+0x3a0>
c0de1934:	f643 11c8 	movw	r1, #14792	@ 0x39c8
c0de1938:	f2c0 0100 	movt	r1, #0
c0de193c:	4449      	add	r1, r9
c0de193e:	f101 030c 	add.w	r3, r1, #12
c0de1942:	9902      	ldr	r1, [sp, #8]
c0de1944:	eb03 07c1 	add.w	r7, r3, r1, lsl #3
c0de1948:	f9b7 1022 	ldrsh.w	r1, [r7, #34]	@ 0x22
c0de194c:	f9b7 7024 	ldrsh.w	r7, [r7, #36]	@ 0x24
c0de1950:	1a7f      	subs	r7, r7, r1
c0de1952:	f1a7 0632 	sub.w	r6, r7, #50	@ 0x32
c0de1956:	f116 0f31 	cmn.w	r6, #49	@ 0x31
c0de195a:	f04f 0605 	mov.w	r6, #5
c0de195e:	d3c9      	bcc.n	c0de18f4 <parser_getItem+0x264>
c0de1960:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de1964:	f9b2 2004 	ldrsh.w	r2, [r2, #4]
c0de1968:	1a12      	subs	r2, r2, r0
c0de196a:	4693      	mov	fp, r2
c0de196c:	3a32      	subs	r2, #50	@ 0x32
c0de196e:	f112 0f31 	cmn.w	r2, #49	@ 0x31
c0de1972:	d3bf      	bcc.n	c0de18f4 <parser_getItem+0x264>
c0de1974:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de1978:	f2c0 0200 	movt	r2, #0
c0de197c:	f859 2002 	ldr.w	r2, [r9, r2]
c0de1980:	1816      	adds	r6, r2, r0
c0de1982:	4411      	add	r1, r2
c0de1984:	a82a      	add	r0, sp, #168	@ 0xa8
c0de1986:	463a      	mov	r2, r7
c0de1988:	9102      	str	r1, [sp, #8]
c0de198a:	f005 f884 	bl	c0de6a96 <__aeabi_memmove>
c0de198e:	a81d      	add	r0, sp, #116	@ 0x74
c0de1990:	4631      	mov	r1, r6
c0de1992:	465a      	mov	r2, fp
c0de1994:	f005 f87f 	bl	c0de6a96 <__aeabi_memmove>
c0de1998:	f645 022d 	movw	r2, #22573	@ 0x582d
c0de199c:	f2c0 0200 	movt	r2, #0
c0de19a0:	447a      	add	r2, pc
c0de19a2:	a837      	add	r0, sp, #220	@ 0xdc
c0de19a4:	21a0      	movs	r1, #160	@ 0xa0
c0de19a6:	ab1d      	add	r3, sp, #116	@ 0x74
c0de19a8:	f004 fc8e 	bl	c0de62c8 <snprintf>
c0de19ac:	b2fe      	uxtb	r6, r7
c0de19ae:	f000 fc94 	bl	c0de22da <tx_is_expert_mode>
c0de19b2:	2e05      	cmp	r6, #5
c0de19b4:	bf08      	it	eq
c0de19b6:	2800      	cmpeq	r0, #0
c0de19b8:	d03c      	beq.n	c0de1a34 <parser_getItem+0x3a4>
c0de19ba:	f245 720d 	movw	r2, #22285	@ 0x570d
c0de19be:	f2c0 0200 	movt	r2, #0
c0de19c2:	af37      	add	r7, sp, #220	@ 0xdc
c0de19c4:	447a      	add	r2, pc
c0de19c6:	ab2a      	add	r3, sp, #168	@ 0xa8
c0de19c8:	4638      	mov	r0, r7
c0de19ca:	21a0      	movs	r1, #160	@ 0xa0
c0de19cc:	f002 fba0 	bl	c0de4110 <z_str3join>
c0de19d0:	4638      	mov	r0, r7
c0de19d2:	f005 f8c5 	bl	c0de6b60 <strlen>
c0de19d6:	4606      	mov	r6, r0
c0de19d8:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de19da:	4621      	mov	r1, r4
c0de19dc:	f005 f862 	bl	c0de6aa4 <explicit_bzero>
c0de19e0:	1e61      	subs	r1, r4, #1
c0de19e2:	b288      	uxth	r0, r1
c0de19e4:	2200      	movs	r2, #0
c0de19e6:	2800      	cmp	r0, #0
c0de19e8:	702a      	strb	r2, [r5, #0]
c0de19ea:	f43f af02 	beq.w	c0de17f2 <parser_getItem+0x162>
c0de19ee:	0432      	lsls	r2, r6, #16
c0de19f0:	f43f aeff 	beq.w	c0de17f2 <parser_getItem+0x162>
c0de19f4:	b2b2      	uxth	r2, r6
c0de19f6:	fbb2 f3f0 	udiv	r3, r2, r0
c0de19fa:	fb03 6111 	mls	r1, r3, r1, r6
c0de19fe:	9e6a      	ldr	r6, [sp, #424]	@ 0x1a8
c0de1a00:	040a      	lsls	r2, r1, #16
c0de1a02:	bf18      	it	ne
c0de1a04:	3301      	addne	r3, #1
c0de1a06:	b2da      	uxtb	r2, r3
c0de1a08:	42b2      	cmp	r2, r6
c0de1a0a:	702b      	strb	r3, [r5, #0]
c0de1a0c:	f67f aef1 	bls.w	c0de17f2 <parser_getItem+0x162>
c0de1a10:	9e6a      	ldr	r6, [sp, #424]	@ 0x1a8
c0de1a12:	3a01      	subs	r2, #1
c0de1a14:	42b2      	cmp	r2, r6
c0de1a16:	4602      	mov	r2, r0
c0de1a18:	b28b      	uxth	r3, r1
c0de1a1a:	bf08      	it	eq
c0de1a1c:	461a      	moveq	r2, r3
c0de1a1e:	fb06 7100 	mla	r1, r6, r0, r7
c0de1a22:	2b00      	cmp	r3, #0
c0de1a24:	bf08      	it	eq
c0de1a26:	4602      	moveq	r2, r0
c0de1a28:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
c0de1a2a:	f005 f832 	bl	c0de6a92 <__aeabi_memcpy>
c0de1a2e:	e6e0      	b.n	c0de17f2 <parser_getItem+0x162>
c0de1a30:	2608      	movs	r6, #8
c0de1a32:	e75f      	b.n	c0de18f4 <parser_getItem+0x264>
c0de1a34:	f245 31c0 	movw	r1, #21440	@ 0x53c0
c0de1a38:	f2c0 0100 	movt	r1, #0
c0de1a3c:	9802      	ldr	r0, [sp, #8]
c0de1a3e:	4479      	add	r1, pc
c0de1a40:	2205      	movs	r2, #5
c0de1a42:	f005 f835 	bl	c0de6ab0 <memcmp>
c0de1a46:	2800      	cmp	r0, #0
c0de1a48:	d1b7      	bne.n	c0de19ba <parser_getItem+0x32a>
c0de1a4a:	f10d 0bdc 	add.w	fp, sp, #220	@ 0xdc
c0de1a4e:	4658      	mov	r0, fp
c0de1a50:	21a0      	movs	r1, #160	@ 0xa0
c0de1a52:	f005 f827 	bl	c0de6aa4 <explicit_bzero>
c0de1a56:	af1d      	add	r7, sp, #116	@ 0x74
c0de1a58:	4638      	mov	r0, r7
c0de1a5a:	f005 f881 	bl	c0de6b60 <strlen>
c0de1a5e:	4606      	mov	r6, r0
c0de1a60:	389f      	subs	r0, #159	@ 0x9f
c0de1a62:	f110 0fa1 	cmn.w	r0, #161	@ 0xa1
c0de1a66:	d201      	bcs.n	c0de1a6c <parser_getItem+0x3dc>
c0de1a68:	2605      	movs	r6, #5
c0de1a6a:	e743      	b.n	c0de18f4 <parser_getItem+0x264>
c0de1a6c:	2e06      	cmp	r6, #6
c0de1a6e:	d81a      	bhi.n	c0de1aa6 <parser_getItem+0x416>
c0de1a70:	2000      	movs	r0, #0
c0de1a72:	f88d 00de 	strb.w	r0, [sp, #222]	@ 0xde
c0de1a76:	f642 6030 	movw	r0, #11824	@ 0x2e30
c0de1a7a:	f10b 0b02 	add.w	fp, fp, #2
c0de1a7e:	f1c6 0706 	rsb	r7, r6, #6
c0de1a82:	f8ad 00dc 	strh.w	r0, [sp, #220]	@ 0xdc
c0de1a86:	4658      	mov	r0, fp
c0de1a88:	4639      	mov	r1, r7
c0de1a8a:	2230      	movs	r2, #48	@ 0x30
c0de1a8c:	f005 f805 	bl	c0de6a9a <__aeabi_memset>
c0de1a90:	f245 3213 	movw	r2, #21267	@ 0x5313
c0de1a94:	f2c0 0200 	movt	r2, #0
c0de1a98:	eb0b 0007 	add.w	r0, fp, r7
c0de1a9c:	f106 0198 	add.w	r1, r6, #152	@ 0x98
c0de1aa0:	447a      	add	r2, pc
c0de1aa2:	ab1d      	add	r3, sp, #116	@ 0x74
c0de1aa4:	e018      	b.n	c0de1ad8 <parser_getItem+0x448>
c0de1aa6:	1fb0      	subs	r0, r6, #6
c0de1aa8:	9002      	str	r0, [sp, #8]
c0de1aaa:	f245 3201 	movw	r2, #21249	@ 0x5301
c0de1aae:	f2c0 0200 	movt	r2, #0
c0de1ab2:	447a      	add	r2, pc
c0de1ab4:	4658      	mov	r0, fp
c0de1ab6:	21a0      	movs	r1, #160	@ 0xa0
c0de1ab8:	463b      	mov	r3, r7
c0de1aba:	f004 fc05 	bl	c0de62c8 <snprintf>
c0de1abe:	9802      	ldr	r0, [sp, #8]
c0de1ac0:	212e      	movs	r1, #46	@ 0x2e
c0de1ac2:	183b      	adds	r3, r7, r0
c0de1ac4:	4458      	add	r0, fp
c0de1ac6:	f800 1b01 	strb.w	r1, [r0], #1
c0de1aca:	f245 22dd 	movw	r2, #21213	@ 0x52dd
c0de1ace:	f2c0 0200 	movt	r2, #0
c0de1ad2:	f1c6 01a5 	rsb	r1, r6, #165	@ 0xa5
c0de1ad6:	447a      	add	r2, pc
c0de1ad8:	f004 fbf6 	bl	c0de62c8 <snprintf>
c0de1adc:	ae37      	add	r6, sp, #220	@ 0xdc
c0de1ade:	4630      	mov	r0, r6
c0de1ae0:	f005 f83e 	bl	c0de6b60 <strlen>
c0de1ae4:	f2a0 4101 	subw	r1, r0, #1025	@ 0x401
c0de1ae8:	f511 6f80 	cmn.w	r1, #1024	@ 0x400
c0de1aec:	d91c      	bls.n	c0de1b28 <parser_getItem+0x498>
c0de1aee:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de1af2:	2300      	movs	r3, #0
c0de1af4:	2200      	movs	r2, #0
c0de1af6:	5cf3      	ldrb	r3, [r6, r3]
c0de1af8:	2b2e      	cmp	r3, #46	@ 0x2e
c0de1afa:	bf08      	it	eq
c0de1afc:	4611      	moveq	r1, r2
c0de1afe:	3201      	adds	r2, #1
c0de1b00:	b213      	sxth	r3, r2
c0de1b02:	4298      	cmp	r0, r3
c0de1b04:	b209      	sxth	r1, r1
c0de1b06:	dd01      	ble.n	c0de1b0c <parser_getItem+0x47c>
c0de1b08:	2900      	cmp	r1, #0
c0de1b0a:	d4f4      	bmi.n	c0de1af6 <parser_getItem+0x466>
c0de1b0c:	2900      	cmp	r1, #0
c0de1b0e:	d40b      	bmi.n	c0de1b28 <parser_getItem+0x498>
c0de1b10:	3106      	adds	r1, #6
c0de1b12:	3801      	subs	r0, #1
c0de1b14:	4288      	cmp	r0, r1
c0de1b16:	d907      	bls.n	c0de1b28 <parser_getItem+0x498>
c0de1b18:	2200      	movs	r2, #0
c0de1b1a:	5c33      	ldrb	r3, [r6, r0]
c0de1b1c:	2b30      	cmp	r3, #48	@ 0x30
c0de1b1e:	d103      	bne.n	c0de1b28 <parser_getItem+0x498>
c0de1b20:	5432      	strb	r2, [r6, r0]
c0de1b22:	3801      	subs	r0, #1
c0de1b24:	4288      	cmp	r0, r1
c0de1b26:	d8f8      	bhi.n	c0de1b1a <parser_getItem+0x48a>
c0de1b28:	f245 2269 	movw	r2, #21097	@ 0x5269
c0de1b2c:	f2c0 0200 	movt	r2, #0
c0de1b30:	f245 43b5 	movw	r3, #21685	@ 0x54b5
c0de1b34:	f2c0 0300 	movt	r3, #0
c0de1b38:	447a      	add	r2, pc
c0de1b3a:	447b      	add	r3, pc
c0de1b3c:	a82a      	add	r0, sp, #168	@ 0xa8
c0de1b3e:	2132      	movs	r1, #50	@ 0x32
c0de1b40:	f004 fbc2 	bl	c0de62c8 <snprintf>
c0de1b44:	e739      	b.n	c0de19ba <parser_getItem+0x32a>

c0de1b46 <parser_init>:
c0de1b46:	4603      	mov	r3, r0
c0de1b48:	fa1f fc82 	uxth.w	ip, r2
c0de1b4c:	2000      	movs	r0, #0
c0de1b4e:	80d8      	strh	r0, [r3, #6]
c0de1b50:	fabc f08c 	clz	r0, ip
c0de1b54:	ea4f 1c50 	mov.w	ip, r0, lsr #5
c0de1b58:	fab1 f081 	clz	r0, r1
c0de1b5c:	0940      	lsrs	r0, r0, #5
c0de1b5e:	ea50 000c 	orrs.w	r0, r0, ip
c0de1b62:	bf1c      	itt	ne
c0de1b64:	2100      	movne	r1, #0
c0de1b66:	2200      	movne	r2, #0
c0de1b68:	6019      	str	r1, [r3, #0]
c0de1b6a:	bf18      	it	ne
c0de1b6c:	2002      	movne	r0, #2
c0de1b6e:	809a      	strh	r2, [r3, #4]
c0de1b70:	4770      	bx	lr

c0de1b72 <parser_getErrorDescription>:
c0de1b72:	2812      	cmp	r0, #18
c0de1b74:	dc10      	bgt.n	c0de1b98 <parser_getErrorDescription+0x26>
c0de1b76:	280a      	cmp	r0, #10
c0de1b78:	dd1f      	ble.n	c0de1bba <parser_getErrorDescription+0x48>
c0de1b7a:	280d      	cmp	r0, #13
c0de1b7c:	dd3b      	ble.n	c0de1bf6 <parser_getErrorDescription+0x84>
c0de1b7e:	2810      	cmp	r0, #16
c0de1b80:	dc6c      	bgt.n	c0de1c5c <parser_getErrorDescription+0xea>
c0de1b82:	280e      	cmp	r0, #14
c0de1b84:	d07e      	beq.n	c0de1c84 <parser_getErrorDescription+0x112>
c0de1b86:	280f      	cmp	r0, #15
c0de1b88:	f040 80dc 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1b8c:	f245 20a1 	movw	r0, #21153	@ 0x52a1
c0de1b90:	f2c0 0000 	movt	r0, #0
c0de1b94:	4478      	add	r0, pc
c0de1b96:	4770      	bx	lr
c0de1b98:	2818      	cmp	r0, #24
c0de1b9a:	dd1d      	ble.n	c0de1bd8 <parser_getErrorDescription+0x66>
c0de1b9c:	281b      	cmp	r0, #27
c0de1b9e:	dd37      	ble.n	c0de1c10 <parser_getErrorDescription+0x9e>
c0de1ba0:	281d      	cmp	r0, #29
c0de1ba2:	dc65      	bgt.n	c0de1c70 <parser_getErrorDescription+0xfe>
c0de1ba4:	281c      	cmp	r0, #28
c0de1ba6:	d073      	beq.n	c0de1c90 <parser_getErrorDescription+0x11e>
c0de1ba8:	281d      	cmp	r0, #29
c0de1baa:	f040 80cb 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1bae:	f245 30d0 	movw	r0, #21456	@ 0x53d0
c0de1bb2:	f2c0 0000 	movt	r0, #0
c0de1bb6:	4478      	add	r0, pc
c0de1bb8:	4770      	bx	lr
c0de1bba:	2802      	cmp	r0, #2
c0de1bbc:	dc35      	bgt.n	c0de1c2a <parser_getErrorDescription+0xb8>
c0de1bbe:	2800      	cmp	r0, #0
c0de1bc0:	d06c      	beq.n	c0de1c9c <parser_getErrorDescription+0x12a>
c0de1bc2:	2801      	cmp	r0, #1
c0de1bc4:	d070      	beq.n	c0de1ca8 <parser_getErrorDescription+0x136>
c0de1bc6:	2802      	cmp	r0, #2
c0de1bc8:	f040 80bc 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1bcc:	f245 4048 	movw	r0, #21576	@ 0x5448
c0de1bd0:	f2c0 0000 	movt	r0, #0
c0de1bd4:	4478      	add	r0, pc
c0de1bd6:	4770      	bx	lr
c0de1bd8:	2815      	cmp	r0, #21
c0de1bda:	dc33      	bgt.n	c0de1c44 <parser_getErrorDescription+0xd2>
c0de1bdc:	2813      	cmp	r0, #19
c0de1bde:	d069      	beq.n	c0de1cb4 <parser_getErrorDescription+0x142>
c0de1be0:	2814      	cmp	r0, #20
c0de1be2:	d06d      	beq.n	c0de1cc0 <parser_getErrorDescription+0x14e>
c0de1be4:	2815      	cmp	r0, #21
c0de1be6:	f040 80ad 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1bea:	f245 1063 	movw	r0, #20835	@ 0x5163
c0de1bee:	f2c0 0000 	movt	r0, #0
c0de1bf2:	4478      	add	r0, pc
c0de1bf4:	4770      	bx	lr
c0de1bf6:	280b      	cmp	r0, #11
c0de1bf8:	d068      	beq.n	c0de1ccc <parser_getErrorDescription+0x15a>
c0de1bfa:	280c      	cmp	r0, #12
c0de1bfc:	d06c      	beq.n	c0de1cd8 <parser_getErrorDescription+0x166>
c0de1bfe:	280d      	cmp	r0, #13
c0de1c00:	f040 80a0 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c04:	f245 1036 	movw	r0, #20790	@ 0x5136
c0de1c08:	f2c0 0000 	movt	r0, #0
c0de1c0c:	4478      	add	r0, pc
c0de1c0e:	4770      	bx	lr
c0de1c10:	2819      	cmp	r0, #25
c0de1c12:	d067      	beq.n	c0de1ce4 <parser_getErrorDescription+0x172>
c0de1c14:	281a      	cmp	r0, #26
c0de1c16:	d06b      	beq.n	c0de1cf0 <parser_getErrorDescription+0x17e>
c0de1c18:	281b      	cmp	r0, #27
c0de1c1a:	f040 8093 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c1e:	f245 30e0 	movw	r0, #21472	@ 0x53e0
c0de1c22:	f2c0 0000 	movt	r0, #0
c0de1c26:	4478      	add	r0, pc
c0de1c28:	4770      	bx	lr
c0de1c2a:	2803      	cmp	r0, #3
c0de1c2c:	d066      	beq.n	c0de1cfc <parser_getErrorDescription+0x18a>
c0de1c2e:	2804      	cmp	r0, #4
c0de1c30:	d06a      	beq.n	c0de1d08 <parser_getErrorDescription+0x196>
c0de1c32:	2808      	cmp	r0, #8
c0de1c34:	f040 8086 	bne.w	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c38:	f245 5002 	movw	r0, #21762	@ 0x5502
c0de1c3c:	f2c0 0000 	movt	r0, #0
c0de1c40:	4478      	add	r0, pc
c0de1c42:	4770      	bx	lr
c0de1c44:	2816      	cmp	r0, #22
c0de1c46:	d065      	beq.n	c0de1d14 <parser_getErrorDescription+0x1a2>
c0de1c48:	2817      	cmp	r0, #23
c0de1c4a:	d069      	beq.n	c0de1d20 <parser_getErrorDescription+0x1ae>
c0de1c4c:	2818      	cmp	r0, #24
c0de1c4e:	d179      	bne.n	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c50:	f245 20e4 	movw	r0, #21220	@ 0x52e4
c0de1c54:	f2c0 0000 	movt	r0, #0
c0de1c58:	4478      	add	r0, pc
c0de1c5a:	4770      	bx	lr
c0de1c5c:	2811      	cmp	r0, #17
c0de1c5e:	d065      	beq.n	c0de1d2c <parser_getErrorDescription+0x1ba>
c0de1c60:	2812      	cmp	r0, #18
c0de1c62:	d16f      	bne.n	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c64:	f245 10dc 	movw	r0, #20956	@ 0x51dc
c0de1c68:	f2c0 0000 	movt	r0, #0
c0de1c6c:	4478      	add	r0, pc
c0de1c6e:	4770      	bx	lr
c0de1c70:	281e      	cmp	r0, #30
c0de1c72:	d061      	beq.n	c0de1d38 <parser_getErrorDescription+0x1c6>
c0de1c74:	281f      	cmp	r0, #31
c0de1c76:	d165      	bne.n	c0de1d44 <parser_getErrorDescription+0x1d2>
c0de1c78:	f245 1002 	movw	r0, #20738	@ 0x5102
c0de1c7c:	f2c0 0000 	movt	r0, #0
c0de1c80:	4478      	add	r0, pc
c0de1c82:	4770      	bx	lr
c0de1c84:	f245 4046 	movw	r0, #21574	@ 0x5446
c0de1c88:	f2c0 0000 	movt	r0, #0
c0de1c8c:	4478      	add	r0, pc
c0de1c8e:	4770      	bx	lr
c0de1c90:	f245 00d8 	movw	r0, #20696	@ 0x50d8
c0de1c94:	f2c0 0000 	movt	r0, #0
c0de1c98:	4478      	add	r0, pc
c0de1c9a:	4770      	bx	lr
c0de1c9c:	f245 0001 	movw	r0, #20481	@ 0x5001
c0de1ca0:	f2c0 0000 	movt	r0, #0
c0de1ca4:	4478      	add	r0, pc
c0de1ca6:	4770      	bx	lr
c0de1ca8:	f245 30a4 	movw	r0, #21412	@ 0x53a4
c0de1cac:	f2c0 0000 	movt	r0, #0
c0de1cb0:	4478      	add	r0, pc
c0de1cb2:	4770      	bx	lr
c0de1cb4:	f245 4032 	movw	r0, #21554	@ 0x5432
c0de1cb8:	f2c0 0000 	movt	r0, #0
c0de1cbc:	4478      	add	r0, pc
c0de1cbe:	4770      	bx	lr
c0de1cc0:	f245 4045 	movw	r0, #21573	@ 0x5445
c0de1cc4:	f2c0 0000 	movt	r0, #0
c0de1cc8:	4478      	add	r0, pc
c0de1cca:	4770      	bx	lr
c0de1ccc:	f245 4084 	movw	r0, #21636	@ 0x5484
c0de1cd0:	f2c0 0000 	movt	r0, #0
c0de1cd4:	4478      	add	r0, pc
c0de1cd6:	4770      	bx	lr
c0de1cd8:	f245 004c 	movw	r0, #20556	@ 0x504c
c0de1cdc:	f2c0 0000 	movt	r0, #0
c0de1ce0:	4478      	add	r0, pc
c0de1ce2:	4770      	bx	lr
c0de1ce4:	f245 10d5 	movw	r0, #20949	@ 0x51d5
c0de1ce8:	f2c0 0000 	movt	r0, #0
c0de1cec:	4478      	add	r0, pc
c0de1cee:	4770      	bx	lr
c0de1cf0:	f245 206b 	movw	r0, #21099	@ 0x526b
c0de1cf4:	f2c0 0000 	movt	r0, #0
c0de1cf8:	4478      	add	r0, pc
c0de1cfa:	4770      	bx	lr
c0de1cfc:	f245 00b2 	movw	r0, #20658	@ 0x50b2
c0de1d00:	f2c0 0000 	movt	r0, #0
c0de1d04:	4478      	add	r0, pc
c0de1d06:	4770      	bx	lr
c0de1d08:	f644 709e 	movw	r0, #20382	@ 0x4f9e
c0de1d0c:	f2c0 0000 	movt	r0, #0
c0de1d10:	4478      	add	r0, pc
c0de1d12:	4770      	bx	lr
c0de1d14:	f245 1066 	movw	r0, #20838	@ 0x5166
c0de1d18:	f2c0 0000 	movt	r0, #0
c0de1d1c:	4478      	add	r0, pc
c0de1d1e:	4770      	bx	lr
c0de1d20:	f245 306c 	movw	r0, #21356	@ 0x536c
c0de1d24:	f2c0 0000 	movt	r0, #0
c0de1d28:	4478      	add	r0, pc
c0de1d2a:	4770      	bx	lr
c0de1d2c:	f245 103d 	movw	r0, #20797	@ 0x513d
c0de1d30:	f2c0 0000 	movt	r0, #0
c0de1d34:	4478      	add	r0, pc
c0de1d36:	4770      	bx	lr
c0de1d38:	f245 10d4 	movw	r0, #20948	@ 0x51d4
c0de1d3c:	f2c0 0000 	movt	r0, #0
c0de1d40:	4478      	add	r0, pc
c0de1d42:	4770      	bx	lr
c0de1d44:	f245 3015 	movw	r0, #21269	@ 0x5315
c0de1d48:	f2c0 0000 	movt	r0, #0
c0de1d4c:	4478      	add	r0, pc
c0de1d4e:	4770      	bx	lr

c0de1d50 <_readTx>:
c0de1d50:	b5b0      	push	{r4, r5, r7, lr}
c0de1d52:	f643 15c8 	movw	r5, #14792	@ 0x39c8
c0de1d56:	f2c0 0500 	movt	r5, #0
c0de1d5a:	4604      	mov	r4, r0
c0de1d5c:	6801      	ldr	r1, [r0, #0]
c0de1d5e:	8882      	ldrh	r2, [r0, #4]
c0de1d60:	eb09 0005 	add.w	r0, r9, r5
c0de1d64:	3004      	adds	r0, #4
c0de1d66:	f7ff fad7 	bl	c0de1318 <json_parse>
c0de1d6a:	b100      	cbz	r0, c0de1d6e <_readTx+0x1e>
c0de1d6c:	bdb0      	pop	{r4, r5, r7, pc}
c0de1d6e:	eb09 0205 	add.w	r2, r9, r5
c0de1d72:	f641 0314 	movw	r3, #6164	@ 0x1814
c0de1d76:	6821      	ldr	r1, [r4, #0]
c0de1d78:	5cd4      	ldrb	r4, [r2, r3]
c0de1d7a:	f849 1005 	str.w	r1, [r9, r5]
c0de1d7e:	f004 01fe 	and.w	r1, r4, #254	@ 0xfe
c0de1d82:	54d1      	strb	r1, [r2, r3]
c0de1d84:	f641 0115 	movw	r1, #6165	@ 0x1815
c0de1d88:	2300      	movs	r3, #0
c0de1d8a:	5453      	strb	r3, [r2, r1]
c0de1d8c:	f641 011c 	movw	r1, #6172	@ 0x181c
c0de1d90:	5453      	strb	r3, [r2, r1]
c0de1d92:	bdb0      	pop	{r4, r5, r7, pc}

c0de1d94 <get_required_root_item>:
c0de1d94:	2802      	cmp	r0, #2
c0de1d96:	dc0a      	bgt.n	c0de1dae <get_required_root_item+0x1a>
c0de1d98:	b1a8      	cbz	r0, c0de1dc6 <get_required_root_item+0x32>
c0de1d9a:	2801      	cmp	r0, #1
c0de1d9c:	d019      	beq.n	c0de1dd2 <get_required_root_item+0x3e>
c0de1d9e:	2802      	cmp	r0, #2
c0de1da0:	d129      	bne.n	c0de1df6 <get_required_root_item+0x62>
c0de1da2:	f245 102d 	movw	r0, #20781	@ 0x512d
c0de1da6:	f2c0 0000 	movt	r0, #0
c0de1daa:	4478      	add	r0, pc
c0de1dac:	4770      	bx	lr
c0de1dae:	2803      	cmp	r0, #3
c0de1db0:	d015      	beq.n	c0de1dde <get_required_root_item+0x4a>
c0de1db2:	2804      	cmp	r0, #4
c0de1db4:	d019      	beq.n	c0de1dea <get_required_root_item+0x56>
c0de1db6:	2805      	cmp	r0, #5
c0de1db8:	d11d      	bne.n	c0de1df6 <get_required_root_item+0x62>
c0de1dba:	f644 7006 	movw	r0, #20230	@ 0x4f06
c0de1dbe:	f2c0 0000 	movt	r0, #0
c0de1dc2:	4478      	add	r0, pc
c0de1dc4:	4770      	bx	lr
c0de1dc6:	f644 70ca 	movw	r0, #20426	@ 0x4fca
c0de1dca:	f2c0 0000 	movt	r0, #0
c0de1dce:	4478      	add	r0, pc
c0de1dd0:	4770      	bx	lr
c0de1dd2:	f245 30b1 	movw	r0, #21425	@ 0x53b1
c0de1dd6:	f2c0 0000 	movt	r0, #0
c0de1dda:	4478      	add	r0, pc
c0de1ddc:	4770      	bx	lr
c0de1dde:	f245 0070 	movw	r0, #20592	@ 0x5070
c0de1de2:	f2c0 0000 	movt	r0, #0
c0de1de6:	4478      	add	r0, pc
c0de1de8:	4770      	bx	lr
c0de1dea:	f245 1087 	movw	r0, #20871	@ 0x5187
c0de1dee:	f2c0 0000 	movt	r0, #0
c0de1df2:	4478      	add	r0, pc
c0de1df4:	4770      	bx	lr
c0de1df6:	f245 00a0 	movw	r0, #20640	@ 0x50a0
c0de1dfa:	f2c0 0000 	movt	r0, #0
c0de1dfe:	4478      	add	r0, pc
c0de1e00:	4770      	bx	lr

c0de1e02 <tx_display_readTx>:
c0de1e02:	b5b0      	push	{r4, r5, r7, lr}
c0de1e04:	4604      	mov	r4, r0
c0de1e06:	f7ff fe9e 	bl	c0de1b46 <parser_init>
c0de1e0a:	4605      	mov	r5, r0
c0de1e0c:	f002 f9db 	bl	c0de41c6 <check_app_canary>
c0de1e10:	b10d      	cbz	r5, c0de1e16 <tx_display_readTx+0x14>
c0de1e12:	4628      	mov	r0, r5
c0de1e14:	bdb0      	pop	{r4, r5, r7, pc}
c0de1e16:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de1e1a:	f2c0 0000 	movt	r0, #0
c0de1e1e:	eb09 0100 	add.w	r1, r9, r0
c0de1e22:	4620      	mov	r0, r4
c0de1e24:	f7ff ff94 	bl	c0de1d50 <_readTx>
c0de1e28:	4604      	mov	r4, r0
c0de1e2a:	f002 f9cc 	bl	c0de41c6 <check_app_canary>
c0de1e2e:	4620      	mov	r0, r4
c0de1e30:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de1e34 <tx_indexRootFields>:
c0de1e34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1e38:	b0d4      	sub	sp, #336	@ 0x150
c0de1e3a:	f643 17c8 	movw	r7, #14792	@ 0x39c8
c0de1e3e:	f2c0 0700 	movt	r7, #0
c0de1e42:	eb09 0007 	add.w	r0, r9, r7
c0de1e46:	f641 0514 	movw	r5, #6164	@ 0x1814
c0de1e4a:	5d40      	ldrb	r0, [r0, r5]
c0de1e4c:	2600      	movs	r6, #0
c0de1e4e:	07c0      	lsls	r0, r0, #31
c0de1e50:	f04f 0a00 	mov.w	sl, #0
c0de1e54:	f040 81d5 	bne.w	c0de2202 <tx_indexRootFields+0x3ce>
c0de1e58:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de1e5c:	f2c0 0000 	movt	r0, #0
c0de1e60:	4448      	add	r0, r9
c0de1e62:	211c      	movs	r1, #28
c0de1e64:	f004 fe1e 	bl	c0de6aa4 <explicit_bzero>
c0de1e68:	f10d 0bf0 	add.w	fp, sp, #240	@ 0xf0
c0de1e6c:	4658      	mov	r0, fp
c0de1e6e:	2146      	movs	r1, #70	@ 0x46
c0de1e70:	f004 fe18 	bl	c0de6aa4 <explicit_bzero>
c0de1e74:	f10d 00aa 	add.w	r0, sp, #170	@ 0xaa
c0de1e78:	2146      	movs	r1, #70	@ 0x46
c0de1e7a:	f004 fe13 	bl	c0de6aa4 <explicit_bzero>
c0de1e7e:	a819      	add	r0, sp, #100	@ 0x64
c0de1e80:	2146      	movs	r1, #70	@ 0x46
c0de1e82:	f004 fe0f 	bl	c0de6aa4 <explicit_bzero>
c0de1e86:	f10d 001e 	add.w	r0, sp, #30
c0de1e8a:	2146      	movs	r1, #70	@ 0x46
c0de1e8c:	f004 fe0a 	bl	c0de6aa4 <explicit_bzero>
c0de1e90:	eb09 0007 	add.w	r0, r9, r7
c0de1e94:	f641 0115 	movw	r1, #6165	@ 0x1815
c0de1e98:	5446      	strb	r6, [r0, r1]
c0de1e9a:	5d41      	ldrb	r1, [r0, r5]
c0de1e9c:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de1ea0:	f041 0106 	orr.w	r1, r1, #6
c0de1ea4:	5486      	strb	r6, [r0, r2]
c0de1ea6:	5541      	strb	r1, [r0, r5]
c0de1ea8:	f04f 0800 	mov.w	r8, #0
c0de1eac:	2000      	movs	r0, #0
c0de1eae:	fa5f f488 	uxtb.w	r4, r8
c0de1eb2:	f8ad 013a 	strh.w	r0, [sp, #314]	@ 0x13a
c0de1eb6:	4620      	mov	r0, r4
c0de1eb8:	f7ff ff6c 	bl	c0de1d94 <get_required_root_item>
c0de1ebc:	4602      	mov	r2, r0
c0de1ebe:	eb09 0007 	add.w	r0, r9, r7
c0de1ec2:	3004      	adds	r0, #4
c0de1ec4:	2100      	movs	r1, #0
c0de1ec6:	f50d 739d 	add.w	r3, sp, #314	@ 0x13a
c0de1eca:	9206      	str	r2, [sp, #24]
c0de1ecc:	f7ff fb2e 	bl	c0de152c <object_get_value>
c0de1ed0:	2801      	cmp	r0, #1
c0de1ed2:	f000 813f 	beq.w	c0de2154 <tx_indexRootFields+0x320>
c0de1ed6:	4682      	mov	sl, r0
c0de1ed8:	f002 f975 	bl	c0de41c6 <check_app_canary>
c0de1edc:	f1ba 0f00 	cmp.w	sl, #0
c0de1ee0:	f040 818f 	bne.w	c0de2202 <tx_indexRootFields+0x3ce>
c0de1ee4:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de1ee8:	f2c0 0000 	movt	r0, #0
c0de1eec:	4448      	add	r0, r9
c0de1eee:	eb00 0208 	add.w	r2, r0, r8
c0de1ef2:	2101      	movs	r1, #1
c0de1ef4:	f802 1b14 	strb.w	r1, [r2], #20
c0de1ef8:	f8bd 113a 	ldrh.w	r1, [sp, #314]	@ 0x13a
c0de1efc:	eb00 0048 	add.w	r0, r0, r8, lsl #1
c0de1f00:	f820 1f06 	strh.w	r1, [r0, #6]!
c0de1f04:	9004      	str	r0, [sp, #16]
c0de1f06:	f04f 0a00 	mov.w	sl, #0
c0de1f0a:	2000      	movs	r0, #0
c0de1f0c:	9202      	str	r2, [sp, #8]
c0de1f0e:	9005      	str	r0, [sp, #20]
c0de1f10:	9403      	str	r4, [sp, #12]
c0de1f12:	bf00      	nop
c0de1f14:	fa5f f08a 	uxtb.w	r0, sl
c0de1f18:	2800      	cmp	r0, #0
c0de1f1a:	f040 810d 	bne.w	c0de2138 <tx_indexRootFields+0x304>
c0de1f1e:	eb09 0007 	add.w	r0, r9, r7
c0de1f22:	2100      	movs	r1, #0
c0de1f24:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de1f28:	5281      	strh	r1, [r0, r2]
c0de1f2a:	4410      	add	r0, r2
c0de1f2c:	2c05      	cmp	r4, #5
c0de1f2e:	f04f 0206 	mov.w	r2, #6
c0de1f32:	70c2      	strb	r2, [r0, #3]
c0de1f34:	d204      	bcs.n	c0de1f40 <tx_indexRootFields+0x10c>
c0de1f36:	2002      	movs	r0, #2
c0de1f38:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de1f3c:	e005      	b.n	c0de1f4a <tx_indexRootFields+0x116>
c0de1f3e:	bf00      	nop
c0de1f40:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de1f44:	bf14      	ite	ne
c0de1f46:	2000      	movne	r0, #0
c0de1f48:	2001      	moveq	r0, #1
c0de1f4a:	463e      	mov	r6, r7
c0de1f4c:	444f      	add	r7, r9
c0de1f4e:	f641 022a 	movw	r2, #6186	@ 0x182a
c0de1f52:	f641 042c 	movw	r4, #6188	@ 0x182c
c0de1f56:	54b8      	strb	r0, [r7, r2]
c0de1f58:	5139      	str	r1, [r7, r4]
c0de1f5a:	4658      	mov	r0, fp
c0de1f5c:	2146      	movs	r1, #70	@ 0x46
c0de1f5e:	f004 fda1 	bl	c0de6aa4 <explicit_bzero>
c0de1f62:	4628      	mov	r0, r5
c0de1f64:	2146      	movs	r1, #70	@ 0x46
c0de1f66:	f004 fd9d 	bl	c0de6aa4 <explicit_bzero>
c0de1f6a:	f641 0030 	movw	r0, #6192	@ 0x1830
c0de1f6e:	f847 b000 	str.w	fp, [r7, r0]
c0de1f72:	f641 0038 	movw	r0, #6200	@ 0x1838
c0de1f76:	503d      	str	r5, [r7, r0]
c0de1f78:	2046      	movs	r0, #70	@ 0x46
c0de1f7a:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de1f7e:	5278      	strh	r0, [r7, r1]
c0de1f80:	f641 013c 	movw	r1, #6204	@ 0x183c
c0de1f84:	5278      	strh	r0, [r7, r1]
c0de1f86:	9805      	ldr	r0, [sp, #20]
c0de1f88:	2146      	movs	r1, #70	@ 0x46
c0de1f8a:	5338      	strh	r0, [r7, r4]
c0de1f8c:	4658      	mov	r0, fp
c0de1f8e:	f004 fd89 	bl	c0de6aa4 <explicit_bzero>
c0de1f92:	9906      	ldr	r1, [sp, #24]
c0de1f94:	4658      	mov	r0, fp
c0de1f96:	2245      	movs	r2, #69	@ 0x45
c0de1f98:	f004 fdea 	bl	c0de6b70 <strncpy>
c0de1f9c:	9804      	ldr	r0, [sp, #16]
c0de1f9e:	f50d 71a7 	add.w	r1, sp, #334	@ 0x14e
c0de1fa2:	8800      	ldrh	r0, [r0, #0]
c0de1fa4:	f000 fcb6 	bl	c0de2914 <tx_traverse_find>
c0de1fa8:	b118      	cbz	r0, c0de1fb2 <tx_indexRootFields+0x17e>
c0de1faa:	9c03      	ldr	r4, [sp, #12]
c0de1fac:	4682      	mov	sl, r0
c0de1fae:	4637      	mov	r7, r6
c0de1fb0:	e7b0      	b.n	c0de1f14 <tx_indexRootFields+0xe0>
c0de1fb2:	eb09 0206 	add.w	r2, r9, r6
c0de1fb6:	f641 0138 	movw	r1, #6200	@ 0x1838
c0de1fba:	f641 033c 	movw	r3, #6204	@ 0x183c
c0de1fbe:	f8bd 014e 	ldrh.w	r0, [sp, #334]	@ 0x14e
c0de1fc2:	5851      	ldr	r1, [r2, r1]
c0de1fc4:	5ad2      	ldrh	r2, [r2, r3]
c0de1fc6:	4637      	mov	r7, r6
c0de1fc8:	2300      	movs	r3, #0
c0de1fca:	f50d 769b 	add.w	r6, sp, #310	@ 0x136
c0de1fce:	9600      	str	r6, [sp, #0]
c0de1fd0:	f000 fc1e 	bl	c0de2810 <tx_getToken>
c0de1fd4:	4682      	mov	sl, r0
c0de1fd6:	f002 f8f6 	bl	c0de41c6 <check_app_canary>
c0de1fda:	9c03      	ldr	r4, [sp, #12]
c0de1fdc:	f1ba 0f00 	cmp.w	sl, #0
c0de1fe0:	f040 810f 	bne.w	c0de2202 <tx_indexRootFields+0x3ce>
c0de1fe4:	2c03      	cmp	r4, #3
c0de1fe6:	d00e      	beq.n	c0de2006 <tx_indexRootFields+0x1d2>
c0de1fe8:	2c04      	cmp	r4, #4
c0de1fea:	f040 809b 	bne.w	c0de2124 <tx_indexRootFields+0x2f0>
c0de1fee:	eb09 0007 	add.w	r0, r9, r7
c0de1ff2:	f641 0138 	movw	r1, #6200	@ 0x1838
c0de1ff6:	5840      	ldr	r0, [r0, r1]
c0de1ff8:	7800      	ldrb	r0, [r0, #0]
c0de1ffa:	2800      	cmp	r0, #0
c0de1ffc:	f040 8092 	bne.w	c0de2124 <tx_indexRootFields+0x2f0>
c0de2000:	f04f 0a13 	mov.w	sl, #19
c0de2004:	e786      	b.n	c0de1f14 <tx_indexRootFields+0xe0>
c0de2006:	eb09 0007 	add.w	r0, r9, r7
c0de200a:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de200e:	f810 a001 	ldrb.w	sl, [r0, r1]
c0de2012:	ea5f 708a 	movs.w	r0, sl, lsl #30
c0de2016:	d547      	bpl.n	c0de20a8 <tx_indexRootFields+0x274>
c0de2018:	f644 7104 	movw	r1, #20228	@ 0x4f04
c0de201c:	f2c0 0100 	movt	r1, #0
c0de2020:	4658      	mov	r0, fp
c0de2022:	4479      	add	r1, pc
c0de2024:	220a      	movs	r2, #10
c0de2026:	f004 fd43 	bl	c0de6ab0 <memcmp>
c0de202a:	bbe8      	cbnz	r0, c0de20a8 <tx_indexRootFields+0x274>
c0de202c:	eb09 0007 	add.w	r0, r9, r7
c0de2030:	f641 0615 	movw	r6, #6165	@ 0x1815
c0de2034:	5d80      	ldrb	r0, [r0, r6]
c0de2036:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de203a:	b9b0      	cbnz	r0, c0de206a <tx_indexRootFields+0x236>
c0de203c:	4628      	mov	r0, r5
c0de203e:	f004 fd8f 	bl	c0de6b60 <strlen>
c0de2042:	2845      	cmp	r0, #69	@ 0x45
c0de2044:	f200 8146 	bhi.w	c0de22d4 <tx_indexRootFields+0x4a0>
c0de2048:	f644 525f 	movw	r2, #19807	@ 0x4d5f
c0de204c:	f2c0 0200 	movt	r2, #0
c0de2050:	a819      	add	r0, sp, #100	@ 0x64
c0de2052:	2146      	movs	r1, #70	@ 0x46
c0de2054:	447a      	add	r2, pc
c0de2056:	462b      	mov	r3, r5
c0de2058:	f004 f936 	bl	c0de62c8 <snprintf>
c0de205c:	9805      	ldr	r0, [sp, #20]
c0de205e:	eb09 0107 	add.w	r1, r9, r7
c0de2062:	b200      	sxth	r0, r0
c0de2064:	f641 0218 	movw	r2, #6168	@ 0x1818
c0de2068:	5088      	str	r0, [r1, r2]
c0de206a:	a819      	add	r0, sp, #100	@ 0x64
c0de206c:	4629      	mov	r1, r5
c0de206e:	f004 fd6d 	bl	c0de6b4c <strcmp>
c0de2072:	b160      	cbz	r0, c0de208e <tx_indexRootFields+0x25a>
c0de2074:	eb09 0007 	add.w	r0, r9, r7
c0de2078:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de207c:	5c81      	ldrb	r1, [r0, r2]
c0de207e:	f641 0315 	movw	r3, #6165	@ 0x1815
c0de2082:	f001 0afd 	and.w	sl, r1, #253	@ 0xfd
c0de2086:	f800 a002 	strb.w	sl, [r0, r2]
c0de208a:	2000      	movs	r0, #0
c0de208c:	e008      	b.n	c0de20a0 <tx_indexRootFields+0x26c>
c0de208e:	eb09 0107 	add.w	r1, r9, r7
c0de2092:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de2096:	5d88      	ldrb	r0, [r1, r6]
c0de2098:	f811 a002 	ldrb.w	sl, [r1, r2]
c0de209c:	f641 0315 	movw	r3, #6165	@ 0x1815
c0de20a0:	3001      	adds	r0, #1
c0de20a2:	eb09 0107 	add.w	r1, r9, r7
c0de20a6:	54c8      	strb	r0, [r1, r3]
c0de20a8:	ea5f 704a 	movs.w	r0, sl, lsl #29
c0de20ac:	d53a      	bpl.n	c0de2124 <tx_indexRootFields+0x2f0>
c0de20ae:	f245 0167 	movw	r1, #20583	@ 0x5067
c0de20b2:	f2c0 0100 	movt	r1, #0
c0de20b6:	4658      	mov	r0, fp
c0de20b8:	4479      	add	r1, pc
c0de20ba:	221d      	movs	r2, #29
c0de20bc:	f004 fcf8 	bl	c0de6ab0 <memcmp>
c0de20c0:	bb80      	cbnz	r0, c0de2124 <tx_indexRootFields+0x2f0>
c0de20c2:	eb09 0007 	add.w	r0, r9, r7
c0de20c6:	f641 061c 	movw	r6, #6172	@ 0x181c
c0de20ca:	5d80      	ldrb	r0, [r0, r6]
c0de20cc:	f10d 05aa 	add.w	r5, sp, #170	@ 0xaa
c0de20d0:	b988      	cbnz	r0, c0de20f6 <tx_indexRootFields+0x2c2>
c0de20d2:	f644 42d3 	movw	r2, #19667	@ 0x4cd3
c0de20d6:	f2c0 0200 	movt	r2, #0
c0de20da:	f10d 001e 	add.w	r0, sp, #30
c0de20de:	2146      	movs	r1, #70	@ 0x46
c0de20e0:	447a      	add	r2, pc
c0de20e2:	462b      	mov	r3, r5
c0de20e4:	f004 f8f0 	bl	c0de62c8 <snprintf>
c0de20e8:	9805      	ldr	r0, [sp, #20]
c0de20ea:	eb09 0107 	add.w	r1, r9, r7
c0de20ee:	b200      	sxth	r0, r0
c0de20f0:	f44f 52c1 	mov.w	r2, #6176	@ 0x1820
c0de20f4:	5088      	str	r0, [r1, r2]
c0de20f6:	f10d 001e 	add.w	r0, sp, #30
c0de20fa:	4629      	mov	r1, r5
c0de20fc:	f004 fd26 	bl	c0de6b4c <strcmp>
c0de2100:	b148      	cbz	r0, c0de2116 <tx_indexRootFields+0x2e2>
c0de2102:	eb09 0007 	add.w	r0, r9, r7
c0de2106:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de210a:	5c81      	ldrb	r1, [r0, r2]
c0de210c:	f001 01fb 	and.w	r1, r1, #251	@ 0xfb
c0de2110:	5481      	strb	r1, [r0, r2]
c0de2112:	2000      	movs	r0, #0
c0de2114:	e002      	b.n	c0de211c <tx_indexRootFields+0x2e8>
c0de2116:	eb09 0007 	add.w	r0, r9, r7
c0de211a:	5d80      	ldrb	r0, [r0, r6]
c0de211c:	3001      	adds	r0, #1
c0de211e:	eb09 0107 	add.w	r1, r9, r7
c0de2122:	5588      	strb	r0, [r1, r6]
c0de2124:	9902      	ldr	r1, [sp, #8]
c0de2126:	f04f 0a00 	mov.w	sl, #0
c0de212a:	7808      	ldrb	r0, [r1, #0]
c0de212c:	3001      	adds	r0, #1
c0de212e:	7008      	strb	r0, [r1, #0]
c0de2130:	9805      	ldr	r0, [sp, #20]
c0de2132:	3001      	adds	r0, #1
c0de2134:	9005      	str	r0, [sp, #20]
c0de2136:	e6ed      	b.n	c0de1f14 <tx_indexRootFields+0xe0>
c0de2138:	2801      	cmp	r0, #1
c0de213a:	d001      	beq.n	c0de2140 <tx_indexRootFields+0x30c>
c0de213c:	2813      	cmp	r0, #19
c0de213e:	d160      	bne.n	c0de2202 <tx_indexRootFields+0x3ce>
c0de2140:	f245 2108 	movw	r1, #21000	@ 0x5208
c0de2144:	9802      	ldr	r0, [sp, #8]
c0de2146:	f2c0 0100 	movt	r1, #0
c0de214a:	4449      	add	r1, r9
c0de214c:	7800      	ldrb	r0, [r0, #0]
c0de214e:	8a4a      	ldrh	r2, [r1, #18]
c0de2150:	4410      	add	r0, r2
c0de2152:	8248      	strh	r0, [r1, #18]
c0de2154:	f108 0801 	add.w	r8, r8, #1
c0de2158:	f1b8 0f06 	cmp.w	r8, #6
c0de215c:	f04f 0000 	mov.w	r0, #0
c0de2160:	f47f aea5 	bne.w	c0de1eae <tx_indexRootFields+0x7a>
c0de2164:	eb09 0407 	add.w	r4, r9, r7
c0de2168:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de216c:	5c21      	ldrb	r1, [r4, r0]
c0de216e:	f641 0828 	movw	r8, #6184	@ 0x1828
c0de2172:	f041 0101 	orr.w	r1, r1, #1
c0de2176:	5421      	strb	r1, [r4, r0]
c0de2178:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de217c:	f2c0 0000 	movt	r0, #0
c0de2180:	eb09 0500 	add.w	r5, r9, r0
c0de2184:	2000      	movs	r0, #0
c0de2186:	f2c0 6002 	movt	r0, #1538	@ 0x602
c0de218a:	f50d 7ba7 	add.w	fp, sp, #334	@ 0x14e
c0de218e:	2600      	movs	r6, #0
c0de2190:	f844 0008 	str.w	r0, [r4, r8]
c0de2194:	eb04 0708 	add.w	r7, r4, r8
c0de2198:	4658      	mov	r0, fp
c0de219a:	2102      	movs	r1, #2
c0de219c:	76ae      	strb	r6, [r5, #26]
c0de219e:	607e      	str	r6, [r7, #4]
c0de21a0:	f004 fc80 	bl	c0de6aa4 <explicit_bzero>
c0de21a4:	f50d 7a9d 	add.w	sl, sp, #314	@ 0x13a
c0de21a8:	4650      	mov	r0, sl
c0de21aa:	2114      	movs	r1, #20
c0de21ac:	f004 fc7a 	bl	c0de6aa4 <explicit_bzero>
c0de21b0:	2002      	movs	r0, #2
c0de21b2:	81b8      	strh	r0, [r7, #12]
c0de21b4:	2014      	movs	r0, #20
c0de21b6:	82b8      	strh	r0, [r7, #20]
c0de21b8:	88e8      	ldrh	r0, [r5, #6]
c0de21ba:	f50d 719b 	add.w	r1, sp, #310	@ 0x136
c0de21be:	f8c7 b008 	str.w	fp, [r7, #8]
c0de21c2:	f8c7 a010 	str.w	sl, [r7, #16]
c0de21c6:	80be      	strh	r6, [r7, #4]
c0de21c8:	f824 6008 	strh.w	r6, [r4, r8]
c0de21cc:	f000 fba2 	bl	c0de2914 <tx_traverse_find>
c0de21d0:	4682      	mov	sl, r0
c0de21d2:	f001 fff8 	bl	c0de41c6 <check_app_canary>
c0de21d6:	f1ba 0f00 	cmp.w	sl, #0
c0de21da:	d110      	bne.n	c0de21fe <tx_indexRootFields+0x3ca>
c0de21dc:	f8bd 0136 	ldrh.w	r0, [sp, #310]	@ 0x136
c0de21e0:	f20d 1739 	addw	r7, sp, #313	@ 0x139
c0de21e4:	f50d 719d 	add.w	r1, sp, #314	@ 0x13a
c0de21e8:	2214      	movs	r2, #20
c0de21ea:	2300      	movs	r3, #0
c0de21ec:	9700      	str	r7, [sp, #0]
c0de21ee:	f000 fb0f 	bl	c0de2810 <tx_getToken>
c0de21f2:	4682      	mov	sl, r0
c0de21f4:	f001 ffe7 	bl	c0de41c6 <check_app_canary>
c0de21f8:	f1ba 0f00 	cmp.w	sl, #0
c0de21fc:	d006      	beq.n	c0de220c <tx_indexRootFields+0x3d8>
c0de21fe:	f001 ffe2 	bl	c0de41c6 <check_app_canary>
c0de2202:	fa5f f08a 	uxtb.w	r0, sl
c0de2206:	b054      	add	sp, #336	@ 0x150
c0de2208:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de220c:	f50d 749d 	add.w	r4, sp, #314	@ 0x13a
c0de2210:	4620      	mov	r0, r4
c0de2212:	f001 ffe6 	bl	c0de41e2 <zemu_log_stack>
c0de2216:	f644 5612 	movw	r6, #19730	@ 0x4d12
c0de221a:	f2c0 0600 	movt	r6, #0
c0de221e:	447e      	add	r6, pc
c0de2220:	4630      	mov	r0, r6
c0de2222:	f001 ffde 	bl	c0de41e2 <zemu_log_stack>
c0de2226:	4620      	mov	r0, r4
c0de2228:	4631      	mov	r1, r6
c0de222a:	220c      	movs	r2, #12
c0de222c:	f004 fc40 	bl	c0de6ab0 <memcmp>
c0de2230:	b128      	cbz	r0, c0de223e <tx_indexRootFields+0x40a>
c0de2232:	f644 30af 	movw	r0, #19375	@ 0x4baf
c0de2236:	f2c0 0000 	movt	r0, #0
c0de223a:	4478      	add	r0, pc
c0de223c:	e00b      	b.n	c0de2256 <tx_indexRootFields+0x422>
c0de223e:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de2242:	f2c0 0000 	movt	r0, #0
c0de2246:	4448      	add	r0, r9
c0de2248:	2101      	movs	r1, #1
c0de224a:	7681      	strb	r1, [r0, #26]
c0de224c:	f644 307d 	movw	r0, #19325	@ 0x4b7d
c0de2250:	f2c0 0000 	movt	r0, #0
c0de2254:	4478      	add	r0, pc
c0de2256:	f643 15c8 	movw	r5, #14792	@ 0x39c8
c0de225a:	f2c0 0500 	movt	r5, #0
c0de225e:	f001 ffc0 	bl	c0de41e2 <zemu_log_stack>
c0de2262:	f001 ffb0 	bl	c0de41c6 <check_app_canary>
c0de2266:	f001 fd59 	bl	c0de3d1c <app_mode_expert>
c0de226a:	b960      	cbnz	r0, c0de2286 <tx_indexRootFields+0x452>
c0de226c:	f7ff fde2 	bl	c0de1e34 <tx_indexRootFields>
c0de2270:	4604      	mov	r4, r0
c0de2272:	f001 ffa8 	bl	c0de41c6 <check_app_canary>
c0de2276:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de227a:	f2c0 0000 	movt	r0, #0
c0de227e:	4448      	add	r0, r9
c0de2280:	7e80      	ldrb	r0, [r0, #26]
c0de2282:	4320      	orrs	r0, r4
c0de2284:	d107      	bne.n	c0de2296 <tx_indexRootFields+0x462>
c0de2286:	eb09 0005 	add.w	r0, r9, r5
c0de228a:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de228e:	5c40      	ldrb	r0, [r0, r1]
c0de2290:	f020 0404 	bic.w	r4, r0, #4
c0de2294:	e004      	b.n	c0de22a0 <tx_indexRootFields+0x46c>
c0de2296:	eb09 0005 	add.w	r0, r9, r5
c0de229a:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de229e:	5c44      	ldrb	r4, [r0, r1]
c0de22a0:	eb09 0205 	add.w	r2, r9, r5
c0de22a4:	f641 0024 	movw	r0, #6180	@ 0x1824
c0de22a8:	5810      	ldr	r0, [r2, r0]
c0de22aa:	f004 01f7 	and.w	r1, r4, #247	@ 0xf7
c0de22ae:	f641 0314 	movw	r3, #6164	@ 0x1814
c0de22b2:	54d1      	strb	r1, [r2, r3]
c0de22b4:	b158      	cbz	r0, c0de22ce <tx_indexRootFields+0x49a>
c0de22b6:	f10d 011e 	add.w	r1, sp, #30
c0de22ba:	f004 fc47 	bl	c0de6b4c <strcmp>
c0de22be:	b930      	cbnz	r0, c0de22ce <tx_indexRootFields+0x49a>
c0de22c0:	f044 0008 	orr.w	r0, r4, #8
c0de22c4:	eb09 0105 	add.w	r1, r9, r5
c0de22c8:	f641 0214 	movw	r2, #6164	@ 0x1814
c0de22cc:	5488      	strb	r0, [r1, r2]
c0de22ce:	f04f 0a00 	mov.w	sl, #0
c0de22d2:	e796      	b.n	c0de2202 <tx_indexRootFields+0x3ce>
c0de22d4:	f04f 0a06 	mov.w	sl, #6
c0de22d8:	e793      	b.n	c0de2202 <tx_indexRootFields+0x3ce>

c0de22da <tx_is_expert_mode>:
c0de22da:	b510      	push	{r4, lr}
c0de22dc:	f001 fd1e 	bl	c0de3d1c <app_mode_expert>
c0de22e0:	b108      	cbz	r0, c0de22e6 <tx_is_expert_mode+0xc>
c0de22e2:	2001      	movs	r0, #1
c0de22e4:	bd10      	pop	{r4, pc}
c0de22e6:	f7ff fda5 	bl	c0de1e34 <tx_indexRootFields>
c0de22ea:	4604      	mov	r4, r0
c0de22ec:	f001 ff6b 	bl	c0de41c6 <check_app_canary>
c0de22f0:	f245 2008 	movw	r0, #21000	@ 0x5208
c0de22f4:	f2c0 0000 	movt	r0, #0
c0de22f8:	4448      	add	r0, r9
c0de22fa:	7e80      	ldrb	r0, [r0, #26]
c0de22fc:	4320      	orrs	r0, r4
c0de22fe:	fab0 f080 	clz	r0, r0
c0de2302:	0940      	lsrs	r0, r0, #5
c0de2304:	bd10      	pop	{r4, pc}
	...

c0de2308 <tx_display_numItems>:
c0de2308:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de230c:	2600      	movs	r6, #0
c0de230e:	4604      	mov	r4, r0
c0de2310:	7006      	strb	r6, [r0, #0]
c0de2312:	f7ff fd8f 	bl	c0de1e34 <tx_indexRootFields>
c0de2316:	4605      	mov	r5, r0
c0de2318:	f001 ff55 	bl	c0de41c6 <check_app_canary>
c0de231c:	2d00      	cmp	r5, #0
c0de231e:	d16b      	bne.n	c0de23f8 <tx_display_numItems+0xf0>
c0de2320:	f245 2708 	movw	r7, #21000	@ 0x5208
c0de2324:	f2c0 0700 	movt	r7, #0
c0de2328:	f641 0b15 	movw	fp, #6165	@ 0x1815
c0de232c:	f04f 0800 	mov.w	r8, #0
c0de2330:	7026      	strb	r6, [r4, #0]
c0de2332:	bf00      	nop
c0de2334:	f7ff fd7e 	bl	c0de1e34 <tx_indexRootFields>
c0de2338:	4605      	mov	r5, r0
c0de233a:	f001 ff44 	bl	c0de41c6 <check_app_canary>
c0de233e:	bb6d      	cbnz	r5, c0de239c <tx_display_numItems+0x94>
c0de2340:	eb09 0007 	add.w	r0, r9, r7
c0de2344:	8a40      	ldrh	r0, [r0, #18]
c0de2346:	b1a8      	cbz	r0, c0de2374 <tx_display_numItems+0x6c>
c0de2348:	eb09 0007 	add.w	r0, r9, r7
c0de234c:	4430      	add	r0, r6
c0de234e:	f890 a014 	ldrb.w	sl, [r0, #20]
c0de2352:	f008 007f 	and.w	r0, r8, #127	@ 0x7f
c0de2356:	2803      	cmp	r0, #3
c0de2358:	d20e      	bcs.n	c0de2378 <tx_display_numItems+0x70>
c0de235a:	f001 fcdf 	bl	c0de3d1c <app_mode_expert>
c0de235e:	b9d8      	cbnz	r0, c0de2398 <tx_display_numItems+0x90>
c0de2360:	f7ff fd68 	bl	c0de1e34 <tx_indexRootFields>
c0de2364:	4605      	mov	r5, r0
c0de2366:	f001 ff2e 	bl	c0de41c6 <check_app_canary>
c0de236a:	eb09 0007 	add.w	r0, r9, r7
c0de236e:	7e80      	ldrb	r0, [r0, #26]
c0de2370:	4328      	orrs	r0, r5
c0de2372:	d011      	beq.n	c0de2398 <tx_display_numItems+0x90>
c0de2374:	2500      	movs	r5, #0
c0de2376:	e011      	b.n	c0de239c <tx_display_numItems+0x94>
c0de2378:	d019      	beq.n	c0de23ae <tx_display_numItems+0xa6>
c0de237a:	2805      	cmp	r0, #5
c0de237c:	d10c      	bne.n	c0de2398 <tx_display_numItems+0x90>
c0de237e:	f001 fccd 	bl	c0de3d1c <app_mode_expert>
c0de2382:	b948      	cbnz	r0, c0de2398 <tx_display_numItems+0x90>
c0de2384:	f7ff fd56 	bl	c0de1e34 <tx_indexRootFields>
c0de2388:	4605      	mov	r5, r0
c0de238a:	f001 ff1c 	bl	c0de41c6 <check_app_canary>
c0de238e:	eb09 0007 	add.w	r0, r9, r7
c0de2392:	7e80      	ldrb	r0, [r0, #26]
c0de2394:	4328      	orrs	r0, r5
c0de2396:	d12b      	bne.n	c0de23f0 <tx_display_numItems+0xe8>
c0de2398:	4655      	mov	r5, sl
c0de239a:	bf00      	nop
c0de239c:	7820      	ldrb	r0, [r4, #0]
c0de239e:	3601      	adds	r6, #1
c0de23a0:	4428      	add	r0, r5
c0de23a2:	2e06      	cmp	r6, #6
c0de23a4:	f108 0801 	add.w	r8, r8, #1
c0de23a8:	7020      	strb	r0, [r4, #0]
c0de23aa:	d1c3      	bne.n	c0de2334 <tx_display_numItems+0x2c>
c0de23ac:	e023      	b.n	c0de23f6 <tx_display_numItems+0xee>
c0de23ae:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de23b2:	f2c0 0000 	movt	r0, #0
c0de23b6:	eb09 0100 	add.w	r1, r9, r0
c0de23ba:	f811 200b 	ldrb.w	r2, [r1, fp]
c0de23be:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de23c2:	5c08      	ldrb	r0, [r1, r0]
c0de23c4:	2a00      	cmp	r2, #0
c0de23c6:	4655      	mov	r5, sl
c0de23c8:	ebaa 0302 	sub.w	r3, sl, r2
c0de23cc:	bf18      	it	ne
c0de23ce:	1c5d      	addne	r5, r3, #1
c0de23d0:	0782      	lsls	r2, r0, #30
c0de23d2:	bf58      	it	pl
c0de23d4:	4655      	movpl	r5, sl
c0de23d6:	0742      	lsls	r2, r0, #29
c0de23d8:	d5e0      	bpl.n	c0de239c <tx_display_numItems+0x94>
c0de23da:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de23de:	5c89      	ldrb	r1, [r1, r2]
c0de23e0:	2900      	cmp	r1, #0
c0de23e2:	d0db      	beq.n	c0de239c <tx_display_numItems+0x94>
c0de23e4:	2201      	movs	r2, #1
c0de23e6:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de23ea:	1a40      	subs	r0, r0, r1
c0de23ec:	4405      	add	r5, r0
c0de23ee:	e7d5      	b.n	c0de239c <tx_display_numItems+0x94>
c0de23f0:	f1aa 0501 	sub.w	r5, sl, #1
c0de23f4:	e7d2      	b.n	c0de239c <tx_display_numItems+0x94>
c0de23f6:	2500      	movs	r5, #0
c0de23f8:	4628      	mov	r0, r5
c0de23fa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2400 <tx_display_query>:
c0de2400:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2404:	b086      	sub	sp, #24
c0de2406:	4698      	mov	r8, r3
c0de2408:	4616      	mov	r6, r2
c0de240a:	460f      	mov	r7, r1
c0de240c:	4682      	mov	sl, r0
c0de240e:	f7ff fd11 	bl	c0de1e34 <tx_indexRootFields>
c0de2412:	4604      	mov	r4, r0
c0de2414:	f001 fed7 	bl	c0de41c6 <check_app_canary>
c0de2418:	2c00      	cmp	r4, #0
c0de241a:	f040 81bf 	bne.w	c0de279c <tx_display_query+0x39c>
c0de241e:	f10d 0017 	add.w	r0, sp, #23
c0de2422:	f7ff ff71 	bl	c0de2308 <tx_display_numItems>
c0de2426:	4604      	mov	r4, r0
c0de2428:	f001 fecd 	bl	c0de41c6 <check_app_canary>
c0de242c:	2c00      	cmp	r4, #0
c0de242e:	f040 81b5 	bne.w	c0de279c <tx_display_query+0x39c>
c0de2432:	f89d 0017 	ldrb.w	r0, [sp, #23]
c0de2436:	4550      	cmp	r0, sl
c0de2438:	f240 8145 	bls.w	c0de26c6 <tx_display_query+0x2c6>
c0de243c:	f7ff fcfa 	bl	c0de1e34 <tx_indexRootFields>
c0de2440:	4604      	mov	r4, r0
c0de2442:	f001 fec0 	bl	c0de41c6 <check_app_canary>
c0de2446:	f245 2508 	movw	r5, #21000	@ 0x5208
c0de244a:	2c00      	cmp	r4, #0
c0de244c:	f2c0 0500 	movt	r5, #0
c0de2450:	e9cd 8601 	strd	r8, r6, [sp, #4]
c0de2454:	f04f 0800 	mov.w	r8, #0
c0de2458:	9703      	str	r7, [sp, #12]
c0de245a:	d15b      	bne.n	c0de2514 <tx_display_query+0x114>
c0de245c:	f641 0714 	movw	r7, #6164	@ 0x1814
c0de2460:	f641 0615 	movw	r6, #6165	@ 0x1815
c0de2464:	eb09 0005 	add.w	r0, r9, r5
c0de2468:	8a40      	ldrh	r0, [r0, #18]
c0de246a:	2800      	cmp	r0, #0
c0de246c:	d049      	beq.n	c0de2502 <tx_display_query+0x102>
c0de246e:	fa5f f088 	uxtb.w	r0, r8
c0de2472:	eb09 0105 	add.w	r1, r9, r5
c0de2476:	4401      	add	r1, r0
c0de2478:	f891 b014 	ldrb.w	fp, [r1, #20]
c0de247c:	2803      	cmp	r0, #3
c0de247e:	d20d      	bcs.n	c0de249c <tx_display_query+0x9c>
c0de2480:	f001 fc4c 	bl	c0de3d1c <app_mode_expert>
c0de2484:	bbd0      	cbnz	r0, c0de24fc <tx_display_query+0xfc>
c0de2486:	f7ff fcd5 	bl	c0de1e34 <tx_indexRootFields>
c0de248a:	4604      	mov	r4, r0
c0de248c:	f001 fe9b 	bl	c0de41c6 <check_app_canary>
c0de2490:	eb09 0005 	add.w	r0, r9, r5
c0de2494:	7e80      	ldrb	r0, [r0, #26]
c0de2496:	4320      	orrs	r0, r4
c0de2498:	d030      	beq.n	c0de24fc <tx_display_query+0xfc>
c0de249a:	e032      	b.n	c0de2502 <tx_display_query+0x102>
c0de249c:	d011      	beq.n	c0de24c2 <tx_display_query+0xc2>
c0de249e:	2805      	cmp	r0, #5
c0de24a0:	d12c      	bne.n	c0de24fc <tx_display_query+0xfc>
c0de24a2:	f001 fc3b 	bl	c0de3d1c <app_mode_expert>
c0de24a6:	bb48      	cbnz	r0, c0de24fc <tx_display_query+0xfc>
c0de24a8:	f7ff fcc4 	bl	c0de1e34 <tx_indexRootFields>
c0de24ac:	4604      	mov	r4, r0
c0de24ae:	f001 fe8a 	bl	c0de41c6 <check_app_canary>
c0de24b2:	eb09 0005 	add.w	r0, r9, r5
c0de24b6:	7e80      	ldrb	r0, [r0, #26]
c0de24b8:	4320      	orrs	r0, r4
c0de24ba:	bf18      	it	ne
c0de24bc:	f1ab 0b01 	subne.w	fp, fp, #1
c0de24c0:	e01c      	b.n	c0de24fc <tx_display_query+0xfc>
c0de24c2:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de24c6:	f2c0 0000 	movt	r0, #0
c0de24ca:	eb09 0100 	add.w	r1, r9, r0
c0de24ce:	5d8a      	ldrb	r2, [r1, r6]
c0de24d0:	5dc8      	ldrb	r0, [r1, r7]
c0de24d2:	ebab 0302 	sub.w	r3, fp, r2
c0de24d6:	2a00      	cmp	r2, #0
c0de24d8:	465a      	mov	r2, fp
c0de24da:	bf18      	it	ne
c0de24dc:	1c5a      	addne	r2, r3, #1
c0de24de:	0783      	lsls	r3, r0, #30
c0de24e0:	bf48      	it	mi
c0de24e2:	4693      	movmi	fp, r2
c0de24e4:	0742      	lsls	r2, r0, #29
c0de24e6:	d509      	bpl.n	c0de24fc <tx_display_query+0xfc>
c0de24e8:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de24ec:	5c89      	ldrb	r1, [r1, r2]
c0de24ee:	b129      	cbz	r1, c0de24fc <tx_display_query+0xfc>
c0de24f0:	2201      	movs	r2, #1
c0de24f2:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de24f6:	1a40      	subs	r0, r0, r1
c0de24f8:	4483      	add	fp, r0
c0de24fa:	bf00      	nop
c0de24fc:	ea5f 600b 	movs.w	r0, fp, lsl #24
c0de2500:	d108      	bne.n	c0de2514 <tx_display_query+0x114>
c0de2502:	f108 0801 	add.w	r8, r8, #1
c0de2506:	f7ff fc95 	bl	c0de1e34 <tx_indexRootFields>
c0de250a:	4604      	mov	r4, r0
c0de250c:	f001 fe5b 	bl	c0de41c6 <check_app_canary>
c0de2510:	2c00      	cmp	r4, #0
c0de2512:	d0a7      	beq.n	c0de2464 <tx_display_query+0x64>
c0de2514:	fa5f f08a 	uxtb.w	r0, sl
c0de2518:	2600      	movs	r6, #0
c0de251a:	2800      	cmp	r0, #0
c0de251c:	9004      	str	r0, [sp, #16]
c0de251e:	f000 80d4 	beq.w	c0de26ca <tx_display_query+0x2ca>
c0de2522:	46c3      	mov	fp, r8
c0de2524:	f04f 0a00 	mov.w	sl, #0
c0de2528:	f7ff fc84 	bl	c0de1e34 <tx_indexRootFields>
c0de252c:	4607      	mov	r7, r0
c0de252e:	f001 fe4a 	bl	c0de41c6 <check_app_canary>
c0de2532:	bb6f      	cbnz	r7, c0de2590 <tx_display_query+0x190>
c0de2534:	eb09 0005 	add.w	r0, r9, r5
c0de2538:	8a40      	ldrh	r0, [r0, #18]
c0de253a:	b388      	cbz	r0, c0de25a0 <tx_display_query+0x1a0>
c0de253c:	fa5f f08b 	uxtb.w	r0, fp
c0de2540:	eb09 0105 	add.w	r1, r9, r5
c0de2544:	4401      	add	r1, r0
c0de2546:	7d0c      	ldrb	r4, [r1, #20]
c0de2548:	2803      	cmp	r0, #3
c0de254a:	d20e      	bcs.n	c0de256a <tx_display_query+0x16a>
c0de254c:	f001 fbe6 	bl	c0de3d1c <app_mode_expert>
c0de2550:	b9e8      	cbnz	r0, c0de258e <tx_display_query+0x18e>
c0de2552:	f7ff fc6f 	bl	c0de1e34 <tx_indexRootFields>
c0de2556:	4607      	mov	r7, r0
c0de2558:	f001 fe35 	bl	c0de41c6 <check_app_canary>
c0de255c:	eb09 0005 	add.w	r0, r9, r5
c0de2560:	7e80      	ldrb	r0, [r0, #26]
c0de2562:	4338      	orrs	r0, r7
c0de2564:	d013      	beq.n	c0de258e <tx_display_query+0x18e>
c0de2566:	2700      	movs	r7, #0
c0de2568:	e012      	b.n	c0de2590 <tx_display_query+0x190>
c0de256a:	f000 8086 	beq.w	c0de267a <tx_display_query+0x27a>
c0de256e:	2805      	cmp	r0, #5
c0de2570:	d10d      	bne.n	c0de258e <tx_display_query+0x18e>
c0de2572:	f001 fbd3 	bl	c0de3d1c <app_mode_expert>
c0de2576:	b950      	cbnz	r0, c0de258e <tx_display_query+0x18e>
c0de2578:	f7ff fc5c 	bl	c0de1e34 <tx_indexRootFields>
c0de257c:	4607      	mov	r7, r0
c0de257e:	f001 fe22 	bl	c0de41c6 <check_app_canary>
c0de2582:	eb09 0005 	add.w	r0, r9, r5
c0de2586:	7e80      	ldrb	r0, [r0, #26]
c0de2588:	4338      	orrs	r0, r7
c0de258a:	f040 809a 	bne.w	c0de26c2 <tx_display_query+0x2c2>
c0de258e:	4627      	mov	r7, r4
c0de2590:	3601      	adds	r6, #1
c0de2592:	b2f8      	uxtb	r0, r7
c0de2594:	b2f1      	uxtb	r1, r6
c0de2596:	4281      	cmp	r1, r0
c0de2598:	d202      	bcs.n	c0de25a0 <tx_display_query+0x1a0>
c0de259a:	46d8      	mov	r8, fp
c0de259c:	e063      	b.n	c0de2666 <tx_display_query+0x266>
c0de259e:	bf00      	nop
c0de25a0:	f643 17c8 	movw	r7, #14792	@ 0x39c8
c0de25a4:	f2c0 0700 	movt	r7, #0
c0de25a8:	f10b 0801 	add.w	r8, fp, #1
c0de25ac:	f7ff fc42 	bl	c0de1e34 <tx_indexRootFields>
c0de25b0:	4604      	mov	r4, r0
c0de25b2:	f001 fe08 	bl	c0de41c6 <check_app_canary>
c0de25b6:	2c00      	cmp	r4, #0
c0de25b8:	d154      	bne.n	c0de2664 <tx_display_query+0x264>
c0de25ba:	eb09 0005 	add.w	r0, r9, r5
c0de25be:	8a40      	ldrh	r0, [r0, #18]
c0de25c0:	b340      	cbz	r0, c0de2614 <tx_display_query+0x214>
c0de25c2:	fa5f f088 	uxtb.w	r0, r8
c0de25c6:	eb09 0105 	add.w	r1, r9, r5
c0de25ca:	4408      	add	r0, r1
c0de25cc:	7d06      	ldrb	r6, [r0, #20]
c0de25ce:	fa5f f08b 	uxtb.w	r0, fp
c0de25d2:	2803      	cmp	r0, #3
c0de25d4:	dc20      	bgt.n	c0de2618 <tx_display_query+0x218>
c0de25d6:	2802      	cmp	r0, #2
c0de25d8:	d322      	bcc.n	c0de2620 <tx_display_query+0x220>
c0de25da:	d13f      	bne.n	c0de265c <tx_display_query+0x25c>
c0de25dc:	eb09 0107 	add.w	r1, r9, r7
c0de25e0:	f641 0015 	movw	r0, #6165	@ 0x1815
c0de25e4:	5c0a      	ldrb	r2, [r1, r0]
c0de25e6:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de25ea:	5c08      	ldrb	r0, [r1, r0]
c0de25ec:	1ab3      	subs	r3, r6, r2
c0de25ee:	2a00      	cmp	r2, #0
c0de25f0:	4632      	mov	r2, r6
c0de25f2:	bf18      	it	ne
c0de25f4:	1c5a      	addne	r2, r3, #1
c0de25f6:	0783      	lsls	r3, r0, #30
c0de25f8:	bf48      	it	mi
c0de25fa:	4616      	movmi	r6, r2
c0de25fc:	0742      	lsls	r2, r0, #29
c0de25fe:	d52d      	bpl.n	c0de265c <tx_display_query+0x25c>
c0de2600:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de2604:	5c89      	ldrb	r1, [r1, r2]
c0de2606:	b349      	cbz	r1, c0de265c <tx_display_query+0x25c>
c0de2608:	2201      	movs	r2, #1
c0de260a:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de260e:	1a40      	subs	r0, r0, r1
c0de2610:	4406      	add	r6, r0
c0de2612:	e023      	b.n	c0de265c <tx_display_query+0x25c>
c0de2614:	2000      	movs	r0, #0
c0de2616:	e022      	b.n	c0de265e <tx_display_query+0x25e>
c0de2618:	2804      	cmp	r0, #4
c0de261a:	d010      	beq.n	c0de263e <tx_display_query+0x23e>
c0de261c:	28ff      	cmp	r0, #255	@ 0xff
c0de261e:	d11d      	bne.n	c0de265c <tx_display_query+0x25c>
c0de2620:	f001 fb7c 	bl	c0de3d1c <app_mode_expert>
c0de2624:	b9d0      	cbnz	r0, c0de265c <tx_display_query+0x25c>
c0de2626:	f7ff fc05 	bl	c0de1e34 <tx_indexRootFields>
c0de262a:	4604      	mov	r4, r0
c0de262c:	f001 fdcb 	bl	c0de41c6 <check_app_canary>
c0de2630:	eb09 0005 	add.w	r0, r9, r5
c0de2634:	7e80      	ldrb	r0, [r0, #26]
c0de2636:	4320      	orrs	r0, r4
c0de2638:	bf18      	it	ne
c0de263a:	2600      	movne	r6, #0
c0de263c:	e00e      	b.n	c0de265c <tx_display_query+0x25c>
c0de263e:	f001 fb6d 	bl	c0de3d1c <app_mode_expert>
c0de2642:	b958      	cbnz	r0, c0de265c <tx_display_query+0x25c>
c0de2644:	f7ff fbf6 	bl	c0de1e34 <tx_indexRootFields>
c0de2648:	4604      	mov	r4, r0
c0de264a:	f001 fdbc 	bl	c0de41c6 <check_app_canary>
c0de264e:	eb09 0005 	add.w	r0, r9, r5
c0de2652:	7e80      	ldrb	r0, [r0, #26]
c0de2654:	4320      	orrs	r0, r4
c0de2656:	bf18      	it	ne
c0de2658:	3e01      	subne	r6, #1
c0de265a:	bf00      	nop
c0de265c:	b2f0      	uxtb	r0, r6
c0de265e:	2800      	cmp	r0, #0
c0de2660:	46c3      	mov	fp, r8
c0de2662:	d0a1      	beq.n	c0de25a8 <tx_display_query+0x1a8>
c0de2664:	2600      	movs	r6, #0
c0de2666:	f10a 0a01 	add.w	sl, sl, #1
c0de266a:	9904      	ldr	r1, [sp, #16]
c0de266c:	fa1f f08a 	uxth.w	r0, sl
c0de2670:	4288      	cmp	r0, r1
c0de2672:	46c3      	mov	fp, r8
c0de2674:	f4ff af58 	bcc.w	c0de2528 <tx_display_query+0x128>
c0de2678:	e027      	b.n	c0de26ca <tx_display_query+0x2ca>
c0de267a:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de267e:	f2c0 0000 	movt	r0, #0
c0de2682:	eb09 0100 	add.w	r1, r9, r0
c0de2686:	f641 0015 	movw	r0, #6165	@ 0x1815
c0de268a:	5c0a      	ldrb	r2, [r1, r0]
c0de268c:	f641 0014 	movw	r0, #6164	@ 0x1814
c0de2690:	5c08      	ldrb	r0, [r1, r0]
c0de2692:	2a00      	cmp	r2, #0
c0de2694:	4627      	mov	r7, r4
c0de2696:	eba4 0302 	sub.w	r3, r4, r2
c0de269a:	bf18      	it	ne
c0de269c:	1c5f      	addne	r7, r3, #1
c0de269e:	0782      	lsls	r2, r0, #30
c0de26a0:	bf58      	it	pl
c0de26a2:	4627      	movpl	r7, r4
c0de26a4:	0742      	lsls	r2, r0, #29
c0de26a6:	f57f af73 	bpl.w	c0de2590 <tx_display_query+0x190>
c0de26aa:	f641 021c 	movw	r2, #6172	@ 0x181c
c0de26ae:	5c89      	ldrb	r1, [r1, r2]
c0de26b0:	2900      	cmp	r1, #0
c0de26b2:	f43f af6d 	beq.w	c0de2590 <tx_display_query+0x190>
c0de26b6:	2201      	movs	r2, #1
c0de26b8:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de26bc:	1a40      	subs	r0, r0, r1
c0de26be:	4407      	add	r7, r0
c0de26c0:	e766      	b.n	c0de2590 <tx_display_query+0x190>
c0de26c2:	1e67      	subs	r7, r4, #1
c0de26c4:	e764      	b.n	c0de2590 <tx_display_query+0x190>
c0de26c6:	2403      	movs	r4, #3
c0de26c8:	e068      	b.n	c0de279c <tx_display_query+0x39c>
c0de26ca:	fa5f f788 	uxtb.w	r7, r8
c0de26ce:	f001 fd7a 	bl	c0de41c6 <check_app_canary>
c0de26d2:	2f06      	cmp	r7, #6
c0de26d4:	d861      	bhi.n	c0de279a <tx_display_query+0x39a>
c0de26d6:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de26da:	f2c0 0200 	movt	r2, #0
c0de26de:	eb09 0002 	add.w	r0, r9, r2
c0de26e2:	f641 0328 	movw	r3, #6184	@ 0x1828
c0de26e6:	2400      	movs	r4, #0
c0de26e8:	52c4      	strh	r4, [r0, r3]
c0de26ea:	4418      	add	r0, r3
c0de26ec:	2106      	movs	r1, #6
c0de26ee:	70c1      	strb	r1, [r0, #3]
c0de26f0:	2f05      	cmp	r7, #5
c0de26f2:	f04f 0002 	mov.w	r0, #2
c0de26f6:	d306      	bcc.n	c0de2706 <tx_display_query+0x306>
c0de26f8:	f643 12c8 	movw	r2, #14792	@ 0x39c8
c0de26fc:	f2c0 0200 	movt	r2, #0
c0de2700:	bf14      	ite	ne
c0de2702:	2000      	movne	r0, #0
c0de2704:	2001      	moveq	r0, #1
c0de2706:	eb09 0102 	add.w	r1, r9, r2
c0de270a:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de270e:	f8dd b008 	ldr.w	fp, [sp, #8]
c0de2712:	eb01 0a03 	add.w	sl, r1, r3
c0de2716:	9104      	str	r1, [sp, #16]
c0de2718:	f88a 0002 	strb.w	r0, [sl, #2]
c0de271c:	4640      	mov	r0, r8
c0de271e:	4659      	mov	r1, fp
c0de2720:	f8ca 4004 	str.w	r4, [sl, #4]
c0de2724:	f004 f9be 	bl	c0de6aa4 <explicit_bzero>
c0de2728:	f245 2024 	movw	r0, #21028	@ 0x5224
c0de272c:	f2c0 0000 	movt	r0, #0
c0de2730:	eb09 0400 	add.w	r4, r9, r0
c0de2734:	4620      	mov	r0, r4
c0de2736:	2102      	movs	r1, #2
c0de2738:	f004 f9b4 	bl	c0de6aa4 <explicit_bzero>
c0de273c:	2002      	movs	r0, #2
c0de273e:	f8aa 0014 	strh.w	r0, [sl, #20]
c0de2742:	b2f0      	uxtb	r0, r6
c0de2744:	f8aa 0004 	strh.w	r0, [sl, #4]
c0de2748:	9804      	ldr	r0, [sp, #16]
c0de274a:	f641 0128 	movw	r1, #6184	@ 0x1828
c0de274e:	2200      	movs	r2, #0
c0de2750:	5242      	strh	r2, [r0, r1]
c0de2752:	4638      	mov	r0, r7
c0de2754:	f8ca 8008 	str.w	r8, [sl, #8]
c0de2758:	f8ca 4010 	str.w	r4, [sl, #16]
c0de275c:	f8aa b00c 	strh.w	fp, [sl, #12]
c0de2760:	f7ff fb18 	bl	c0de1d94 <get_required_root_item>
c0de2764:	4604      	mov	r4, r0
c0de2766:	4640      	mov	r0, r8
c0de2768:	4659      	mov	r1, fp
c0de276a:	f004 f99b 	bl	c0de6aa4 <explicit_bzero>
c0de276e:	f1ab 0201 	sub.w	r2, fp, #1
c0de2772:	4640      	mov	r0, r8
c0de2774:	4621      	mov	r1, r4
c0de2776:	f004 f9fb 	bl	c0de6b70 <strncpy>
c0de277a:	eb09 0005 	add.w	r0, r9, r5
c0de277e:	5dc0      	ldrb	r0, [r0, r7]
c0de2780:	b158      	cbz	r0, c0de279a <tx_display_query+0x39a>
c0de2782:	eb09 0005 	add.w	r0, r9, r5
c0de2786:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de278a:	88c0      	ldrh	r0, [r0, #6]
c0de278c:	9901      	ldr	r1, [sp, #4]
c0de278e:	f000 f8c1 	bl	c0de2914 <tx_traverse_find>
c0de2792:	4604      	mov	r4, r0
c0de2794:	f001 fd17 	bl	c0de41c6 <check_app_canary>
c0de2798:	e000      	b.n	c0de279c <tx_display_query+0x39c>
c0de279a:	2401      	movs	r4, #1
c0de279c:	4620      	mov	r0, r4
c0de279e:	b006      	add	sp, #24
c0de27a0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de27a4 <tx_display_make_friendly>:
c0de27a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de27a6:	b081      	sub	sp, #4
c0de27a8:	f7ff fb44 	bl	c0de1e34 <tx_indexRootFields>
c0de27ac:	4604      	mov	r4, r0
c0de27ae:	f001 fd0a 	bl	c0de41c6 <check_app_canary>
c0de27b2:	bb4c      	cbnz	r4, c0de2808 <tx_display_make_friendly+0x64>
c0de27b4:	f643 16c8 	movw	r6, #14792	@ 0x39c8
c0de27b8:	f2c0 0600 	movt	r6, #0
c0de27bc:	eb09 0006 	add.w	r0, r9, r6
c0de27c0:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de27c4:	5844      	ldr	r4, [r0, r1]
c0de27c6:	f644 250a 	movw	r5, #18954	@ 0x4a0a
c0de27ca:	f2c0 0500 	movt	r5, #0
c0de27ce:	447d      	add	r5, pc
c0de27d0:	271d      	movs	r7, #29
c0de27d2:	bf00      	nop
c0de27d4:	4620      	mov	r0, r4
c0de27d6:	4629      	mov	r1, r5
c0de27d8:	f004 f9b8 	bl	c0de6b4c <strcmp>
c0de27dc:	b120      	cbz	r0, c0de27e8 <tx_display_make_friendly+0x44>
c0de27de:	3f01      	subs	r7, #1
c0de27e0:	f105 0564 	add.w	r5, r5, #100	@ 0x64
c0de27e4:	d1f6      	bne.n	c0de27d4 <tx_display_make_friendly+0x30>
c0de27e6:	e00e      	b.n	c0de2806 <tx_display_make_friendly+0x62>
c0de27e8:	eb09 0006 	add.w	r0, r9, r6
c0de27ec:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de27f0:	5a46      	ldrh	r6, [r0, r1]
c0de27f2:	4620      	mov	r0, r4
c0de27f4:	4631      	mov	r1, r6
c0de27f6:	3532      	adds	r5, #50	@ 0x32
c0de27f8:	f004 f954 	bl	c0de6aa4 <explicit_bzero>
c0de27fc:	1e72      	subs	r2, r6, #1
c0de27fe:	4620      	mov	r0, r4
c0de2800:	4629      	mov	r1, r5
c0de2802:	f004 f9b5 	bl	c0de6b70 <strncpy>
c0de2806:	2400      	movs	r4, #0
c0de2808:	4620      	mov	r0, r4
c0de280a:	b001      	add	sp, #4
c0de280c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de2810 <tx_getToken>:
c0de2810:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2814:	b082      	sub	sp, #8
c0de2816:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de2818:	4604      	mov	r4, r0
c0de281a:	2000      	movs	r0, #0
c0de281c:	460d      	mov	r5, r1
c0de281e:	7038      	strb	r0, [r7, #0]
c0de2820:	4608      	mov	r0, r1
c0de2822:	4611      	mov	r1, r2
c0de2824:	469a      	mov	sl, r3
c0de2826:	4616      	mov	r6, r2
c0de2828:	f004 f93c 	bl	c0de6aa4 <explicit_bzero>
c0de282c:	f643 10c8 	movw	r0, #14792	@ 0x39c8
c0de2830:	f2c0 0000 	movt	r0, #0
c0de2834:	eb09 0100 	add.w	r1, r9, r0
c0de2838:	eb01 02c4 	add.w	r2, r1, r4, lsl #3
c0de283c:	f9b2 100e 	ldrsh.w	r1, [r2, #14]
c0de2840:	f9b2 3010 	ldrsh.w	r3, [r2, #16]
c0de2844:	428b      	cmp	r3, r1
c0de2846:	da01      	bge.n	c0de284c <tx_getToken+0x3c>
c0de2848:	2008      	movs	r0, #8
c0de284a:	e05f      	b.n	c0de290c <tx_getToken+0xfc>
c0de284c:	f859 2000 	ldr.w	r2, [r9, r0]
c0de2850:	eba3 0b01 	sub.w	fp, r3, r1
c0de2854:	2001      	movs	r0, #1
c0de2856:	ea5f 430b 	movs.w	r3, fp, lsl #16
c0de285a:	7038      	strb	r0, [r7, #0]
c0de285c:	d050      	beq.n	c0de2900 <tx_getToken+0xf0>
c0de285e:	e9cd 5a00 	strd	r5, sl, [sp]
c0de2862:	f245 4ab8 	movw	sl, #21688	@ 0x54b8
c0de2866:	f2c0 0a00 	movt	sl, #0
c0de286a:	1857      	adds	r7, r2, r1
c0de286c:	fa1f f58b 	uxth.w	r5, fp
c0de2870:	f04f 0800 	mov.w	r8, #0
c0de2874:	44fa      	add	sl, pc
c0de2876:	bf00      	nop
c0de2878:	eb0a 0408 	add.w	r4, sl, r8
c0de287c:	4620      	mov	r0, r4
c0de287e:	f004 f96f 	bl	c0de6b60 <strlen>
c0de2882:	42a8      	cmp	r0, r5
c0de2884:	d105      	bne.n	c0de2892 <tx_getToken+0x82>
c0de2886:	4638      	mov	r0, r7
c0de2888:	4621      	mov	r1, r4
c0de288a:	462a      	mov	r2, r5
c0de288c:	f004 f910 	bl	c0de6ab0 <memcmp>
c0de2890:	b128      	cbz	r0, c0de289e <tx_getToken+0x8e>
c0de2892:	f108 0864 	add.w	r8, r8, #100	@ 0x64
c0de2896:	f5b8 7f48 	cmp.w	r8, #800	@ 0x320
c0de289a:	d1ed      	bne.n	c0de2878 <tx_getToken+0x68>
c0de289c:	e005      	b.n	c0de28aa <tx_getToken+0x9a>
c0de289e:	f104 0732 	add.w	r7, r4, #50	@ 0x32
c0de28a2:	4638      	mov	r0, r7
c0de28a4:	f004 f95c 	bl	c0de6b60 <strlen>
c0de28a8:	4683      	mov	fp, r0
c0de28aa:	e9dd 8a00 	ldrd	r8, sl, [sp]
c0de28ae:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de28b0:	4640      	mov	r0, r8
c0de28b2:	4631      	mov	r1, r6
c0de28b4:	f004 f8f6 	bl	c0de6aa4 <explicit_bzero>
c0de28b8:	1e71      	subs	r1, r6, #1
c0de28ba:	b28b      	uxth	r3, r1
c0de28bc:	2000      	movs	r0, #0
c0de28be:	7020      	strb	r0, [r4, #0]
c0de28c0:	b1f3      	cbz	r3, c0de2900 <tx_getToken+0xf0>
c0de28c2:	ea5f 420b 	movs.w	r2, fp, lsl #16
c0de28c6:	d01b      	beq.n	c0de2900 <tx_getToken+0xf0>
c0de28c8:	fa1f f08b 	uxth.w	r0, fp
c0de28cc:	fbb0 f0f3 	udiv	r0, r0, r3
c0de28d0:	fb00 b111 	mls	r1, r0, r1, fp
c0de28d4:	040a      	lsls	r2, r1, #16
c0de28d6:	bf18      	it	ne
c0de28d8:	3001      	addne	r0, #1
c0de28da:	b2c2      	uxtb	r2, r0
c0de28dc:	4552      	cmp	r2, sl
c0de28de:	7020      	strb	r0, [r4, #0]
c0de28e0:	d90e      	bls.n	c0de2900 <tx_getToken+0xf0>
c0de28e2:	3a01      	subs	r2, #1
c0de28e4:	b288      	uxth	r0, r1
c0de28e6:	fb0a 7103 	mla	r1, sl, r3, r7
c0de28ea:	4552      	cmp	r2, sl
c0de28ec:	461a      	mov	r2, r3
c0de28ee:	bf08      	it	eq
c0de28f0:	4602      	moveq	r2, r0
c0de28f2:	2800      	cmp	r0, #0
c0de28f4:	4640      	mov	r0, r8
c0de28f6:	bf08      	it	eq
c0de28f8:	461a      	moveq	r2, r3
c0de28fa:	f004 f8cc 	bl	c0de6a96 <__aeabi_memmove>
c0de28fe:	7820      	ldrb	r0, [r4, #0]
c0de2900:	b2c0      	uxtb	r0, r0
c0de2902:	2100      	movs	r1, #0
c0de2904:	4550      	cmp	r0, sl
c0de2906:	bf98      	it	ls
c0de2908:	2101      	movls	r1, #1
c0de290a:	0088      	lsls	r0, r1, #2
c0de290c:	b002      	add	sp, #8
c0de290e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2914 <tx_traverse_find>:
c0de2914:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2918:	b086      	sub	sp, #24
c0de291a:	f643 1bc8 	movw	fp, #14792	@ 0x39c8
c0de291e:	f2c0 0b00 	movt	fp, #0
c0de2922:	4604      	mov	r4, r0
c0de2924:	eb09 000b 	add.w	r0, r9, fp
c0de2928:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
c0de292c:	7b05      	ldrb	r5, [r0, #12]
c0de292e:	4688      	mov	r8, r1
c0de2930:	f001 fc49 	bl	c0de41c6 <check_app_canary>
c0de2934:	f859 000b 	ldr.w	r0, [r9, fp]
c0de2938:	2800      	cmp	r0, #0
c0de293a:	d060      	beq.n	c0de29fe <tx_traverse_find+0xea>
c0de293c:	eb09 000b 	add.w	r0, r9, fp
c0de2940:	f641 012a 	movw	r1, #6186	@ 0x182a
c0de2944:	5c41      	ldrb	r1, [r0, r1]
c0de2946:	2900      	cmp	r1, #0
c0de2948:	d05b      	beq.n	c0de2a02 <tx_traverse_find+0xee>
c0de294a:	f641 012b 	movw	r1, #6187	@ 0x182b
c0de294e:	5c40      	ldrb	r0, [r0, r1]
c0de2950:	2800      	cmp	r0, #0
c0de2952:	d056      	beq.n	c0de2a02 <tx_traverse_find+0xee>
c0de2954:	2d03      	cmp	r5, #3
c0de2956:	d054      	beq.n	c0de2a02 <tx_traverse_find+0xee>
c0de2958:	2d04      	cmp	r5, #4
c0de295a:	d052      	beq.n	c0de2a02 <tx_traverse_find+0xee>
c0de295c:	eb09 000b 	add.w	r0, r9, fp
c0de2960:	3004      	adds	r0, #4
c0de2962:	f10d 0216 	add.w	r2, sp, #22
c0de2966:	4621      	mov	r1, r4
c0de2968:	f8cd 8008 	str.w	r8, [sp, #8]
c0de296c:	9403      	str	r4, [sp, #12]
c0de296e:	f7fe fd69 	bl	c0de1444 <object_get_element_count>
c0de2972:	4607      	mov	r7, r0
c0de2974:	f001 fc27 	bl	c0de41c6 <check_app_canary>
c0de2978:	2f00      	cmp	r7, #0
c0de297a:	f040 80a5 	bne.w	c0de2ac8 <tx_traverse_find+0x1b4>
c0de297e:	2d01      	cmp	r5, #1
c0de2980:	f000 80b2 	beq.w	c0de2ae8 <tx_traverse_find+0x1d4>
c0de2984:	2d02      	cmp	r5, #2
c0de2986:	f040 809e 	bne.w	c0de2ac6 <tx_traverse_find+0x1b2>
c0de298a:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de298e:	2800      	cmp	r0, #0
c0de2990:	f000 8099 	beq.w	c0de2ac6 <tx_traverse_find+0x1b2>
c0de2994:	2600      	movs	r6, #0
c0de2996:	f10d 0810 	add.w	r8, sp, #16
c0de299a:	f641 0a2b 	movw	sl, #6187	@ 0x182b
c0de299e:	bf00      	nop
c0de29a0:	eb09 000b 	add.w	r0, r9, fp
c0de29a4:	9903      	ldr	r1, [sp, #12]
c0de29a6:	3004      	adds	r0, #4
c0de29a8:	b2b2      	uxth	r2, r6
c0de29aa:	4643      	mov	r3, r8
c0de29ac:	f7fe fd1c 	bl	c0de13e8 <array_get_nth_element>
c0de29b0:	4607      	mov	r7, r0
c0de29b2:	f001 fc08 	bl	c0de41c6 <check_app_canary>
c0de29b6:	2f00      	cmp	r7, #0
c0de29b8:	f040 8086 	bne.w	c0de2ac8 <tx_traverse_find+0x1b4>
c0de29bc:	f001 fc03 	bl	c0de41c6 <check_app_canary>
c0de29c0:	eb09 050b 	add.w	r5, r9, fp
c0de29c4:	f815 000a 	ldrb.w	r0, [r5, sl]
c0de29c8:	1e41      	subs	r1, r0, #1
c0de29ca:	f8bd 0010 	ldrh.w	r0, [sp, #16]
c0de29ce:	f805 100a 	strb.w	r1, [r5, sl]
c0de29d2:	9902      	ldr	r1, [sp, #8]
c0de29d4:	f7ff ff9e 	bl	c0de2914 <tx_traverse_find>
c0de29d8:	f815 100a 	ldrb.w	r1, [r5, sl]
c0de29dc:	4607      	mov	r7, r0
c0de29de:	1c48      	adds	r0, r1, #1
c0de29e0:	f805 000a 	strb.w	r0, [r5, sl]
c0de29e4:	f001 fbef 	bl	c0de41c6 <check_app_canary>
c0de29e8:	2f00      	cmp	r7, #0
c0de29ea:	d055      	beq.n	c0de2a98 <tx_traverse_find+0x184>
c0de29ec:	3601      	adds	r6, #1
c0de29ee:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de29f2:	b231      	sxth	r1, r6
c0de29f4:	4281      	cmp	r1, r0
c0de29f6:	f04f 0713 	mov.w	r7, #19
c0de29fa:	dbd1      	blt.n	c0de29a0 <tx_traverse_find+0x8c>
c0de29fc:	e064      	b.n	c0de2ac8 <tx_traverse_find+0x1b4>
c0de29fe:	2701      	movs	r7, #1
c0de2a00:	e062      	b.n	c0de2ac8 <tx_traverse_find+0x1b4>
c0de2a02:	eb09 000b 	add.w	r0, r9, fp
c0de2a06:	f641 0114 	movw	r1, #6164	@ 0x1814
c0de2a0a:	5c45      	ldrb	r5, [r0, r1]
c0de2a0c:	f005 0003 	and.w	r0, r5, #3
c0de2a10:	2803      	cmp	r0, #3
c0de2a12:	d10d      	bne.n	c0de2a30 <tx_traverse_find+0x11c>
c0de2a14:	eb09 000b 	add.w	r0, r9, fp
c0de2a18:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2a1c:	5840      	ldr	r0, [r0, r1]
c0de2a1e:	f244 5100 	movw	r1, #17664	@ 0x4500
c0de2a22:	f2c0 0100 	movt	r1, #0
c0de2a26:	4479      	add	r1, pc
c0de2a28:	f004 f890 	bl	c0de6b4c <strcmp>
c0de2a2c:	2800      	cmp	r0, #0
c0de2a2e:	d04f      	beq.n	c0de2ad0 <tx_traverse_find+0x1bc>
c0de2a30:	2600      	movs	r6, #0
c0de2a32:	f005 0005 	and.w	r0, r5, #5
c0de2a36:	2805      	cmp	r0, #5
c0de2a38:	d130      	bne.n	c0de2a9c <tx_traverse_find+0x188>
c0de2a3a:	eb09 010b 	add.w	r1, r9, fp
c0de2a3e:	f44f 52c1 	mov.w	r2, #6176	@ 0x1820
c0de2a42:	f641 0328 	movw	r3, #6184	@ 0x1828
c0de2a46:	588a      	ldr	r2, [r1, r2]
c0de2a48:	5acf      	ldrh	r7, [r1, r3]
c0de2a4a:	f005 0008 	and.w	r0, r5, #8
c0de2a4e:	407a      	eors	r2, r7
c0de2a50:	4419      	add	r1, r3
c0de2a52:	ea50 0502 	orrs.w	r5, r0, r2
c0de2a56:	6888      	ldr	r0, [r1, #8]
c0de2a58:	bf18      	it	ne
c0de2a5a:	2501      	movne	r5, #1
c0de2a5c:	f244 61bb 	movw	r1, #18107	@ 0x46bb
c0de2a60:	f2c0 0100 	movt	r1, #0
c0de2a64:	4479      	add	r1, pc
c0de2a66:	f004 f871 	bl	c0de6b4c <strcmp>
c0de2a6a:	fab0 f080 	clz	r0, r0
c0de2a6e:	0940      	lsrs	r0, r0, #5
c0de2a70:	4028      	ands	r0, r5
c0de2a72:	ea40 0506 	orr.w	r5, r0, r6
c0de2a76:	f001 fba6 	bl	c0de41c6 <check_app_canary>
c0de2a7a:	b99d      	cbnz	r5, c0de2aa4 <tx_traverse_find+0x190>
c0de2a7c:	eb09 010b 	add.w	r1, r9, fp
c0de2a80:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2a84:	5a88      	ldrh	r0, [r1, r2]
c0de2a86:	4411      	add	r1, r2
c0de2a88:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
c0de2a8c:	4288      	cmp	r0, r1
c0de2a8e:	d112      	bne.n	c0de2ab6 <tx_traverse_find+0x1a2>
c0de2a90:	f8a8 4000 	strh.w	r4, [r8]
c0de2a94:	f001 fb97 	bl	c0de41c6 <check_app_canary>
c0de2a98:	2700      	movs	r7, #0
c0de2a9a:	e015      	b.n	c0de2ac8 <tx_traverse_find+0x1b4>
c0de2a9c:	f001 fb93 	bl	c0de41c6 <check_app_canary>
c0de2aa0:	2e00      	cmp	r6, #0
c0de2aa2:	d0eb      	beq.n	c0de2a7c <tx_traverse_find+0x168>
c0de2aa4:	eb09 000b 	add.w	r0, r9, fp
c0de2aa8:	f641 0128 	movw	r1, #6184	@ 0x1828
c0de2aac:	1842      	adds	r2, r0, r1
c0de2aae:	8893      	ldrh	r3, [r2, #4]
c0de2ab0:	5a40      	ldrh	r0, [r0, r1]
c0de2ab2:	3301      	adds	r3, #1
c0de2ab4:	8093      	strh	r3, [r2, #4]
c0de2ab6:	3001      	adds	r0, #1
c0de2ab8:	eb09 010b 	add.w	r1, r9, fp
c0de2abc:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2ac0:	5288      	strh	r0, [r1, r2]
c0de2ac2:	f001 fb80 	bl	c0de41c6 <check_app_canary>
c0de2ac6:	2713      	movs	r7, #19
c0de2ac8:	4638      	mov	r0, r7
c0de2aca:	b006      	add	sp, #24
c0de2acc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ad0:	eb09 000b 	add.w	r0, r9, fp
c0de2ad4:	f641 0118 	movw	r1, #6168	@ 0x1818
c0de2ad8:	f641 0228 	movw	r2, #6184	@ 0x1828
c0de2adc:	5841      	ldr	r1, [r0, r1]
c0de2ade:	5a80      	ldrh	r0, [r0, r2]
c0de2ae0:	1a0e      	subs	r6, r1, r0
c0de2ae2:	bf18      	it	ne
c0de2ae4:	2601      	movne	r6, #1
c0de2ae6:	e7a4      	b.n	c0de2a32 <tx_traverse_find+0x11e>
c0de2ae8:	eb09 000b 	add.w	r0, r9, fp
c0de2aec:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2af0:	5840      	ldr	r0, [r0, r1]
c0de2af2:	f004 f835 	bl	c0de6b60 <strlen>
c0de2af6:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de2afa:	9000      	str	r0, [sp, #0]
c0de2afc:	2900      	cmp	r1, #0
c0de2afe:	d0e2      	beq.n	c0de2ac6 <tx_traverse_find+0x1b2>
c0de2b00:	f04f 0800 	mov.w	r8, #0
c0de2b04:	9c03      	ldr	r4, [sp, #12]
c0de2b06:	eb09 000b 	add.w	r0, r9, fp
c0de2b0a:	fa1f f688 	uxth.w	r6, r8
c0de2b0e:	3004      	adds	r0, #4
c0de2b10:	4621      	mov	r1, r4
c0de2b12:	4632      	mov	r2, r6
c0de2b14:	ab05      	add	r3, sp, #20
c0de2b16:	f7fe fcc1 	bl	c0de149c <object_get_nth_key>
c0de2b1a:	4607      	mov	r7, r0
c0de2b1c:	f001 fb53 	bl	c0de41c6 <check_app_canary>
c0de2b20:	2f00      	cmp	r7, #0
c0de2b22:	d1d1      	bne.n	c0de2ac8 <tx_traverse_find+0x1b4>
c0de2b24:	eb09 000b 	add.w	r0, r9, fp
c0de2b28:	3004      	adds	r0, #4
c0de2b2a:	4621      	mov	r1, r4
c0de2b2c:	4632      	mov	r2, r6
c0de2b2e:	f10d 0312 	add.w	r3, sp, #18
c0de2b32:	f7fe fce6 	bl	c0de1502 <object_get_nth_value>
c0de2b36:	4607      	mov	r7, r0
c0de2b38:	f001 fb45 	bl	c0de41c6 <check_app_canary>
c0de2b3c:	2f00      	cmp	r7, #0
c0de2b3e:	d1c3      	bne.n	c0de2ac8 <tx_traverse_find+0x1b4>
c0de2b40:	eb09 000b 	add.w	r0, r9, fp
c0de2b44:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2b48:	5847      	ldr	r7, [r0, r1]
c0de2b4a:	f9bd a014 	ldrsh.w	sl, [sp, #20]
c0de2b4e:	7838      	ldrb	r0, [r7, #0]
c0de2b50:	2400      	movs	r4, #0
c0de2b52:	b1e0      	cbz	r0, c0de2b8e <tx_traverse_find+0x27a>
c0de2b54:	eb09 000b 	add.w	r0, r9, fp
c0de2b58:	f641 0134 	movw	r1, #6196	@ 0x1834
c0de2b5c:	5a45      	ldrh	r5, [r0, r1]
c0de2b5e:	1978      	adds	r0, r7, r5
c0de2b60:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de2b64:	4638      	mov	r0, r7
c0de2b66:	f003 fffb 	bl	c0de6b60 <strlen>
c0de2b6a:	43c1      	mvns	r1, r0
c0de2b6c:	426a      	negs	r2, r5
c0de2b6e:	1a8e      	subs	r6, r1, r2
c0de2b70:	bf18      	it	ne
c0de2b72:	2601      	movne	r6, #1
c0de2b74:	42e9      	cmn	r1, r5
c0de2b76:	d00a      	beq.n	c0de2b8e <tx_traverse_find+0x27a>
c0de2b78:	f244 11cf 	movw	r1, #16847	@ 0x41cf
c0de2b7c:	4407      	add	r7, r0
c0de2b7e:	f2c0 0100 	movt	r1, #0
c0de2b82:	4638      	mov	r0, r7
c0de2b84:	4479      	add	r1, pc
c0de2b86:	4632      	mov	r2, r6
c0de2b88:	f003 ff83 	bl	c0de6a92 <__aeabi_memcpy>
c0de2b8c:	55bc      	strb	r4, [r7, r6]
c0de2b8e:	f859 200b 	ldr.w	r2, [r9, fp]
c0de2b92:	eb09 000b 	add.w	r0, r9, fp
c0de2b96:	9201      	str	r2, [sp, #4]
c0de2b98:	f641 0230 	movw	r2, #6192	@ 0x1830
c0de2b9c:	eb00 01ca 	add.w	r1, r0, sl, lsl #3
c0de2ba0:	f850 a002 	ldr.w	sl, [r0, r2]
c0de2ba4:	f641 0234 	movw	r2, #6196	@ 0x1834
c0de2ba8:	5a86      	ldrh	r6, [r0, r2]
c0de2baa:	f9b1 500e 	ldrsh.w	r5, [r1, #14]
c0de2bae:	f9b1 1010 	ldrsh.w	r1, [r1, #16]
c0de2bb2:	eb0a 0006 	add.w	r0, sl, r6
c0de2bb6:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de2bba:	4650      	mov	r0, sl
c0de2bbc:	1b4f      	subs	r7, r1, r5
c0de2bbe:	f003 ffcf 	bl	c0de6b60 <strlen>
c0de2bc2:	43c1      	mvns	r1, r0
c0de2bc4:	4431      	add	r1, r6
c0de2bc6:	42b9      	cmp	r1, r7
c0de2bc8:	bf38      	it	cc
c0de2bca:	460f      	movcc	r7, r1
c0de2bcc:	b147      	cbz	r7, c0de2be0 <tx_traverse_find+0x2cc>
c0de2bce:	9901      	ldr	r1, [sp, #4]
c0de2bd0:	eb0a 0600 	add.w	r6, sl, r0
c0de2bd4:	4429      	add	r1, r5
c0de2bd6:	4630      	mov	r0, r6
c0de2bd8:	463a      	mov	r2, r7
c0de2bda:	f003 ff5c 	bl	c0de6a96 <__aeabi_memmove>
c0de2bde:	55f4      	strb	r4, [r6, r7]
c0de2be0:	f001 faf1 	bl	c0de41c6 <check_app_canary>
c0de2be4:	eb09 050b 	add.w	r5, r9, fp
c0de2be8:	f641 042a 	movw	r4, #6186	@ 0x182a
c0de2bec:	f641 072b 	movw	r7, #6187	@ 0x182b
c0de2bf0:	5d28      	ldrb	r0, [r5, r4]
c0de2bf2:	5de9      	ldrb	r1, [r5, r7]
c0de2bf4:	3801      	subs	r0, #1
c0de2bf6:	3901      	subs	r1, #1
c0de2bf8:	5528      	strb	r0, [r5, r4]
c0de2bfa:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de2bfe:	55e9      	strb	r1, [r5, r7]
c0de2c00:	9902      	ldr	r1, [sp, #8]
c0de2c02:	f7ff fe87 	bl	c0de2914 <tx_traverse_find>
c0de2c06:	4606      	mov	r6, r0
c0de2c08:	f001 fadd 	bl	c0de41c6 <check_app_canary>
c0de2c0c:	5d28      	ldrb	r0, [r5, r4]
c0de2c0e:	5de9      	ldrb	r1, [r5, r7]
c0de2c10:	3001      	adds	r0, #1
c0de2c12:	5528      	strb	r0, [r5, r4]
c0de2c14:	1c48      	adds	r0, r1, #1
c0de2c16:	2e00      	cmp	r6, #0
c0de2c18:	55e8      	strb	r0, [r5, r7]
c0de2c1a:	f43f af3d 	beq.w	c0de2a98 <tx_traverse_find+0x184>
c0de2c1e:	eb09 000b 	add.w	r0, r9, fp
c0de2c22:	f641 0130 	movw	r1, #6192	@ 0x1830
c0de2c26:	5840      	ldr	r0, [r0, r1]
c0de2c28:	9900      	ldr	r1, [sp, #0]
c0de2c2a:	2200      	movs	r2, #0
c0de2c2c:	5442      	strb	r2, [r0, r1]
c0de2c2e:	f001 faca 	bl	c0de41c6 <check_app_canary>
c0de2c32:	f108 0801 	add.w	r8, r8, #1
c0de2c36:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de2c3a:	fa1f f188 	uxth.w	r1, r8
c0de2c3e:	4281      	cmp	r1, r0
c0de2c40:	f04f 0713 	mov.w	r7, #19
c0de2c44:	f4ff af5e 	bcc.w	c0de2b04 <tx_traverse_find+0x1f0>
c0de2c48:	e73e      	b.n	c0de2ac8 <tx_traverse_find+0x1b4>
	...

c0de2c4c <contains_whitespace>:
c0de2c4c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c50:	b082      	sub	sp, #8
c0de2c52:	f8d0 8004 	ldr.w	r8, [r0, #4]
c0de2c56:	f9b0 100c 	ldrsh.w	r1, [r0, #12]
c0de2c5a:	f1b8 0f02 	cmp.w	r8, #2
c0de2c5e:	f04f 0200 	mov.w	r2, #0
c0de2c62:	9100      	str	r1, [sp, #0]
c0de2c64:	d33c      	bcc.n	c0de2ce0 <contains_whitespace+0x94>
c0de2c66:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2c6a:	4401      	add	r1, r0
c0de2c6c:	9101      	str	r1, [sp, #4]
c0de2c6e:	f245 34d2 	movw	r4, #21458	@ 0x53d2
c0de2c72:	f2c0 0400 	movt	r4, #0
c0de2c76:	f04f 0b01 	mov.w	fp, #1
c0de2c7a:	447c      	add	r4, pc
c0de2c7c:	eb00 0acb 	add.w	sl, r0, fp, lsl #3
c0de2c80:	f89a 1008 	ldrb.w	r1, [sl, #8]
c0de2c84:	2900      	cmp	r1, #0
c0de2c86:	d04b      	beq.n	c0de2d20 <contains_whitespace+0xd4>
c0de2c88:	f9ba e00a 	ldrsh.w	lr, [sl, #10]
c0de2c8c:	4572      	cmp	r2, lr
c0de2c8e:	da1f      	bge.n	c0de2cd0 <contains_whitespace+0x84>
c0de2c90:	9901      	ldr	r1, [sp, #4]
c0de2c92:	680f      	ldr	r7, [r1, #0]
c0de2c94:	5cbd      	ldrb	r5, [r7, r2]
c0de2c96:	2d20      	cmp	r5, #32
c0de2c98:	d044      	beq.n	c0de2d24 <contains_whitespace+0xd8>
c0de2c9a:	2301      	movs	r3, #1
c0de2c9c:	f04f 0c00 	mov.w	ip, #0
c0de2ca0:	4661      	mov	r1, ip
c0de2ca2:	f1bc 0f05 	cmp.w	ip, #5
c0de2ca6:	d005      	beq.n	c0de2cb4 <contains_whitespace+0x68>
c0de2ca8:	1866      	adds	r6, r4, r1
c0de2caa:	7876      	ldrb	r6, [r6, #1]
c0de2cac:	f101 0c01 	add.w	ip, r1, #1
c0de2cb0:	42ae      	cmp	r6, r5
c0de2cb2:	d1f5      	bne.n	c0de2ca0 <contains_whitespace+0x54>
c0de2cb4:	2904      	cmp	r1, #4
c0de2cb6:	d909      	bls.n	c0de2ccc <contains_whitespace+0x80>
c0de2cb8:	3201      	adds	r2, #1
c0de2cba:	4572      	cmp	r2, lr
c0de2cbc:	f04f 0300 	mov.w	r3, #0
c0de2cc0:	bfb8      	it	lt
c0de2cc2:	2301      	movlt	r3, #1
c0de2cc4:	d004      	beq.n	c0de2cd0 <contains_whitespace+0x84>
c0de2cc6:	5cbd      	ldrb	r5, [r7, r2]
c0de2cc8:	2d20      	cmp	r5, #32
c0de2cca:	d1e7      	bne.n	c0de2c9c <contains_whitespace+0x50>
c0de2ccc:	07d9      	lsls	r1, r3, #31
c0de2cce:	d129      	bne.n	c0de2d24 <contains_whitespace+0xd8>
c0de2cd0:	f9ba 100c 	ldrsh.w	r1, [sl, #12]
c0de2cd4:	f10b 0b01 	add.w	fp, fp, #1
c0de2cd8:	45c3      	cmp	fp, r8
c0de2cda:	f101 0201 	add.w	r2, r1, #1
c0de2cde:	d1cd      	bne.n	c0de2c7c <contains_whitespace+0x30>
c0de2ce0:	9d00      	ldr	r5, [sp, #0]
c0de2ce2:	42aa      	cmp	r2, r5
c0de2ce4:	da1c      	bge.n	c0de2d20 <contains_whitespace+0xd4>
c0de2ce6:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2cea:	5841      	ldr	r1, [r0, r1]
c0de2cec:	f245 3358 	movw	r3, #21336	@ 0x5358
c0de2cf0:	f2c0 0300 	movt	r3, #0
c0de2cf4:	447b      	add	r3, pc
c0de2cf6:	bf00      	nop
c0de2cf8:	5c88      	ldrb	r0, [r1, r2]
c0de2cfa:	b1a0      	cbz	r0, c0de2d26 <contains_whitespace+0xda>
c0de2cfc:	2820      	cmp	r0, #32
c0de2cfe:	d011      	beq.n	c0de2d24 <contains_whitespace+0xd8>
c0de2d00:	2600      	movs	r6, #0
c0de2d02:	bf00      	nop
c0de2d04:	4637      	mov	r7, r6
c0de2d06:	2e05      	cmp	r6, #5
c0de2d08:	d005      	beq.n	c0de2d16 <contains_whitespace+0xca>
c0de2d0a:	19de      	adds	r6, r3, r7
c0de2d0c:	7876      	ldrb	r6, [r6, #1]
c0de2d0e:	4286      	cmp	r6, r0
c0de2d10:	f107 0601 	add.w	r6, r7, #1
c0de2d14:	d1f6      	bne.n	c0de2d04 <contains_whitespace+0xb8>
c0de2d16:	2f05      	cmp	r7, #5
c0de2d18:	d304      	bcc.n	c0de2d24 <contains_whitespace+0xd8>
c0de2d1a:	3201      	adds	r2, #1
c0de2d1c:	42aa      	cmp	r2, r5
c0de2d1e:	d1eb      	bne.n	c0de2cf8 <contains_whitespace+0xac>
c0de2d20:	2000      	movs	r0, #0
c0de2d22:	e000      	b.n	c0de2d26 <contains_whitespace+0xda>
c0de2d24:	2001      	movs	r0, #1
c0de2d26:	b240      	sxtb	r0, r0
c0de2d28:	b002      	add	sp, #8
c0de2d2a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2d2e <is_sorted>:
c0de2d2e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d32:	f5ad 7d00 	sub.w	sp, sp, #512	@ 0x200
c0de2d36:	f50d 7a80 	add.w	sl, sp, #256	@ 0x100
c0de2d3a:	460c      	mov	r4, r1
c0de2d3c:	4605      	mov	r5, r0
c0de2d3e:	4650      	mov	r0, sl
c0de2d40:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de2d44:	4617      	mov	r7, r2
c0de2d46:	f003 fead 	bl	c0de6aa4 <explicit_bzero>
c0de2d4a:	46e8      	mov	r8, sp
c0de2d4c:	4640      	mov	r0, r8
c0de2d4e:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de2d52:	f003 fea7 	bl	c0de6aa4 <explicit_bzero>
c0de2d56:	eb07 01c5 	add.w	r1, r7, r5, lsl #3
c0de2d5a:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de2d5e:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de2d62:	2500      	movs	r5, #0
c0de2d64:	1a0e      	subs	r6, r1, r0
c0de2d66:	2eff      	cmp	r6, #255	@ 0xff
c0de2d68:	d824      	bhi.n	c0de2db4 <is_sorted+0x86>
c0de2d6a:	f641 0108 	movw	r1, #6152	@ 0x1808
c0de2d6e:	f857 b001 	ldr.w	fp, [r7, r1]
c0de2d72:	4632      	mov	r2, r6
c0de2d74:	eb0b 0100 	add.w	r1, fp, r0
c0de2d78:	4650      	mov	r0, sl
c0de2d7a:	f003 fef9 	bl	c0de6b70 <strncpy>
c0de2d7e:	eb07 01c4 	add.w	r1, r7, r4, lsl #3
c0de2d82:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de2d86:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de2d8a:	f80a 5006 	strb.w	r5, [sl, r6]
c0de2d8e:	1a0c      	subs	r4, r1, r0
c0de2d90:	2cff      	cmp	r4, #255	@ 0xff
c0de2d92:	d80f      	bhi.n	c0de2db4 <is_sorted+0x86>
c0de2d94:	eb0b 0100 	add.w	r1, fp, r0
c0de2d98:	4640      	mov	r0, r8
c0de2d9a:	4622      	mov	r2, r4
c0de2d9c:	f003 fee8 	bl	c0de6b70 <strncpy>
c0de2da0:	2500      	movs	r5, #0
c0de2da2:	a840      	add	r0, sp, #256	@ 0x100
c0de2da4:	4641      	mov	r1, r8
c0de2da6:	f808 5004 	strb.w	r5, [r8, r4]
c0de2daa:	f003 fecf 	bl	c0de6b4c <strcmp>
c0de2dae:	2801      	cmp	r0, #1
c0de2db0:	bfb8      	it	lt
c0de2db2:	2501      	movlt	r5, #1
c0de2db4:	4628      	mov	r0, r5
c0de2db6:	f50d 7d00 	add.w	sp, sp, #512	@ 0x200
c0de2dba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2dc0 <dictionaries_sorted>:
c0de2dc0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2dc4:	b082      	sub	sp, #8
c0de2dc6:	4604      	mov	r4, r0
c0de2dc8:	6840      	ldr	r0, [r0, #4]
c0de2dca:	2800      	cmp	r0, #0
c0de2dcc:	d03e      	beq.n	c0de2e4c <dictionaries_sorted+0x8c>
c0de2dce:	2500      	movs	r5, #0
c0de2dd0:	f10d 0a06 	add.w	sl, sp, #6
c0de2dd4:	f10d 0804 	add.w	r8, sp, #4
c0de2dd8:	f10d 0b02 	add.w	fp, sp, #2
c0de2ddc:	eb04 01c5 	add.w	r1, r4, r5, lsl #3
c0de2de0:	7a09      	ldrb	r1, [r1, #8]
c0de2de2:	2901      	cmp	r1, #1
c0de2de4:	d12f      	bne.n	c0de2e46 <dictionaries_sorted+0x86>
c0de2de6:	b2ae      	uxth	r6, r5
c0de2de8:	4620      	mov	r0, r4
c0de2dea:	4631      	mov	r1, r6
c0de2dec:	4652      	mov	r2, sl
c0de2dee:	f7fe fb29 	bl	c0de1444 <object_get_element_count>
c0de2df2:	bb68      	cbnz	r0, c0de2e50 <dictionaries_sorted+0x90>
c0de2df4:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de2df8:	2802      	cmp	r0, #2
c0de2dfa:	d323      	bcc.n	c0de2e44 <dictionaries_sorted+0x84>
c0de2dfc:	4620      	mov	r0, r4
c0de2dfe:	4631      	mov	r1, r6
c0de2e00:	2200      	movs	r2, #0
c0de2e02:	4643      	mov	r3, r8
c0de2e04:	f7fe fb4a 	bl	c0de149c <object_get_nth_key>
c0de2e08:	bb10      	cbnz	r0, c0de2e50 <dictionaries_sorted+0x90>
c0de2e0a:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de2e0e:	2802      	cmp	r0, #2
c0de2e10:	d318      	bcc.n	c0de2e44 <dictionaries_sorted+0x84>
c0de2e12:	2701      	movs	r7, #1
c0de2e14:	b2ba      	uxth	r2, r7
c0de2e16:	4620      	mov	r0, r4
c0de2e18:	4631      	mov	r1, r6
c0de2e1a:	465b      	mov	r3, fp
c0de2e1c:	f7fe fb3e 	bl	c0de149c <object_get_nth_key>
c0de2e20:	b9b0      	cbnz	r0, c0de2e50 <dictionaries_sorted+0x90>
c0de2e22:	f8bd 0004 	ldrh.w	r0, [sp, #4]
c0de2e26:	f8bd 1002 	ldrh.w	r1, [sp, #2]
c0de2e2a:	4622      	mov	r2, r4
c0de2e2c:	f7ff ff7f 	bl	c0de2d2e <is_sorted>
c0de2e30:	b170      	cbz	r0, c0de2e50 <dictionaries_sorted+0x90>
c0de2e32:	f8bd 1006 	ldrh.w	r1, [sp, #6]
c0de2e36:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0de2e3a:	3701      	adds	r7, #1
c0de2e3c:	428f      	cmp	r7, r1
c0de2e3e:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de2e42:	d3e7      	bcc.n	c0de2e14 <dictionaries_sorted+0x54>
c0de2e44:	6860      	ldr	r0, [r4, #4]
c0de2e46:	3501      	adds	r5, #1
c0de2e48:	4285      	cmp	r5, r0
c0de2e4a:	d3c7      	bcc.n	c0de2ddc <dictionaries_sorted+0x1c>
c0de2e4c:	2001      	movs	r0, #1
c0de2e4e:	e000      	b.n	c0de2e52 <dictionaries_sorted+0x92>
c0de2e50:	2000      	movs	r0, #0
c0de2e52:	b002      	add	sp, #8
c0de2e54:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2e58 <tx_validate>:
c0de2e58:	b510      	push	{r4, lr}
c0de2e5a:	b082      	sub	sp, #8
c0de2e5c:	4604      	mov	r4, r0
c0de2e5e:	f7ff fef5 	bl	c0de2c4c <contains_whitespace>
c0de2e62:	2801      	cmp	r0, #1
c0de2e64:	d101      	bne.n	c0de2e6a <tx_validate+0x12>
c0de2e66:	2017      	movs	r0, #23
c0de2e68:	e013      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2e6a:	4620      	mov	r0, r4
c0de2e6c:	f7ff ffa8 	bl	c0de2dc0 <dictionaries_sorted>
c0de2e70:	2801      	cmp	r0, #1
c0de2e72:	d10d      	bne.n	c0de2e90 <tx_validate+0x38>
c0de2e74:	f643 721c 	movw	r2, #16156	@ 0x3f1c
c0de2e78:	f2c0 0200 	movt	r2, #0
c0de2e7c:	447a      	add	r2, pc
c0de2e7e:	f10d 0306 	add.w	r3, sp, #6
c0de2e82:	4620      	mov	r0, r4
c0de2e84:	2100      	movs	r1, #0
c0de2e86:	f7fe fb51 	bl	c0de152c <object_get_value>
c0de2e8a:	b120      	cbz	r0, c0de2e96 <tx_validate+0x3e>
c0de2e8c:	2019      	movs	r0, #25
c0de2e8e:	e000      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2e90:	2018      	movs	r0, #24
c0de2e92:	b002      	add	sp, #8
c0de2e94:	bd10      	pop	{r4, pc}
c0de2e96:	f244 0239 	movw	r2, #16441	@ 0x4039
c0de2e9a:	f2c0 0200 	movt	r2, #0
c0de2e9e:	447a      	add	r2, pc
c0de2ea0:	f10d 0306 	add.w	r3, sp, #6
c0de2ea4:	4620      	mov	r0, r4
c0de2ea6:	2100      	movs	r1, #0
c0de2ea8:	f7fe fb40 	bl	c0de152c <object_get_value>
c0de2eac:	b108      	cbz	r0, c0de2eb2 <tx_validate+0x5a>
c0de2eae:	201a      	movs	r0, #26
c0de2eb0:	e7ef      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2eb2:	f643 620e 	movw	r2, #15886	@ 0x3e0e
c0de2eb6:	f2c0 0200 	movt	r2, #0
c0de2eba:	447a      	add	r2, pc
c0de2ebc:	f10d 0306 	add.w	r3, sp, #6
c0de2ec0:	4620      	mov	r0, r4
c0de2ec2:	2100      	movs	r1, #0
c0de2ec4:	f7fe fb32 	bl	c0de152c <object_get_value>
c0de2ec8:	b108      	cbz	r0, c0de2ece <tx_validate+0x76>
c0de2eca:	201b      	movs	r0, #27
c0de2ecc:	e7e1      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2ece:	f643 7280 	movw	r2, #16256	@ 0x3f80
c0de2ed2:	f2c0 0200 	movt	r2, #0
c0de2ed6:	447a      	add	r2, pc
c0de2ed8:	f10d 0306 	add.w	r3, sp, #6
c0de2edc:	4620      	mov	r0, r4
c0de2ede:	2100      	movs	r1, #0
c0de2ee0:	f7fe fb24 	bl	c0de152c <object_get_value>
c0de2ee4:	b108      	cbz	r0, c0de2eea <tx_validate+0x92>
c0de2ee6:	201c      	movs	r0, #28
c0de2ee8:	e7d3      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2eea:	f244 2299 	movw	r2, #17049	@ 0x4299
c0de2eee:	f2c0 0200 	movt	r2, #0
c0de2ef2:	447a      	add	r2, pc
c0de2ef4:	f10d 0306 	add.w	r3, sp, #6
c0de2ef8:	4620      	mov	r0, r4
c0de2efa:	2100      	movs	r1, #0
c0de2efc:	f7fe fb16 	bl	c0de152c <object_get_value>
c0de2f00:	b108      	cbz	r0, c0de2f06 <tx_validate+0xae>
c0de2f02:	201d      	movs	r0, #29
c0de2f04:	e7c5      	b.n	c0de2e92 <tx_validate+0x3a>
c0de2f06:	f244 026b 	movw	r2, #16491	@ 0x406b
c0de2f0a:	f2c0 0200 	movt	r2, #0
c0de2f0e:	447a      	add	r2, pc
c0de2f10:	f10d 0306 	add.w	r3, sp, #6
c0de2f14:	4620      	mov	r0, r4
c0de2f16:	2100      	movs	r1, #0
c0de2f18:	f7fe fb08 	bl	c0de152c <object_get_value>
c0de2f1c:	2800      	cmp	r0, #0
c0de2f1e:	bf18      	it	ne
c0de2f20:	201e      	movne	r0, #30
c0de2f22:	e7b6      	b.n	c0de2e92 <tx_validate+0x3a>

c0de2f24 <jsmn_parse>:
c0de2f24:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f28:	b082      	sub	sp, #8
c0de2f2a:	8804      	ldrh	r4, [r0, #0]
c0de2f2c:	f8b0 e002 	ldrh.w	lr, [r0, #2]
c0de2f30:	4294      	cmp	r4, r2
c0de2f32:	f080 81d1 	bcs.w	c0de32d8 <jsmn_parse+0x3b4>
c0de2f36:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de2f3a:	f04f 0b01 	mov.w	fp, #1
c0de2f3e:	46a2      	mov	sl, r4
c0de2f40:	46f0      	mov	r8, lr
c0de2f42:	f8cd e004 	str.w	lr, [sp, #4]
c0de2f46:	bf00      	nop
c0de2f48:	5d0c      	ldrb	r4, [r1, r4]
c0de2f4a:	2c2b      	cmp	r4, #43	@ 0x2b
c0de2f4c:	dd0e      	ble.n	c0de2f6c <jsmn_parse+0x48>
c0de2f4e:	2c5c      	cmp	r4, #92	@ 0x5c
c0de2f50:	f300 8088 	bgt.w	c0de3064 <jsmn_parse+0x140>
c0de2f54:	2c2c      	cmp	r4, #44	@ 0x2c
c0de2f56:	f000 80e6 	beq.w	c0de3126 <jsmn_parse+0x202>
c0de2f5a:	2c3a      	cmp	r4, #58	@ 0x3a
c0de2f5c:	f000 810c 	beq.w	c0de3178 <jsmn_parse+0x254>
c0de2f60:	2c5b      	cmp	r4, #91	@ 0x5b
c0de2f62:	4657      	mov	r7, sl
c0de2f64:	f000 80a7 	beq.w	c0de30b6 <jsmn_parse+0x192>
c0de2f68:	e10e      	b.n	c0de3188 <jsmn_parse+0x264>
c0de2f6a:	bf00      	nop
c0de2f6c:	f1a4 0509 	sub.w	r5, r4, #9
c0de2f70:	2d19      	cmp	r5, #25
c0de2f72:	f200 8105 	bhi.w	c0de3180 <jsmn_parse+0x25c>
c0de2f76:	2713      	movs	r7, #19
c0de2f78:	fa0b f605 	lsl.w	r6, fp, r5
c0de2f7c:	f2c0 0780 	movt	r7, #128	@ 0x80
c0de2f80:	423e      	tst	r6, r7
c0de2f82:	f040 8199 	bne.w	c0de32b8 <jsmn_parse+0x394>
c0de2f86:	2d19      	cmp	r5, #25
c0de2f88:	f040 80fa 	bne.w	c0de3180 <jsmn_parse+0x25c>
c0de2f8c:	f8cd 8000 	str.w	r8, [sp]
c0de2f90:	f10a 0801 	add.w	r8, sl, #1
c0de2f94:	fa1f f688 	uxth.w	r6, r8
c0de2f98:	4296      	cmp	r6, r2
c0de2f9a:	f8a0 8000 	strh.w	r8, [r0]
c0de2f9e:	f080 81b6 	bcs.w	c0de330e <jsmn_parse+0x3ea>
c0de2fa2:	4644      	mov	r4, r8
c0de2fa4:	4657      	mov	r7, sl
c0de2fa6:	bf00      	nop
c0de2fa8:	5d8d      	ldrb	r5, [r1, r6]
c0de2faa:	2d5c      	cmp	r5, #92	@ 0x5c
c0de2fac:	d006      	beq.n	c0de2fbc <jsmn_parse+0x98>
c0de2fae:	2d00      	cmp	r5, #0
c0de2fb0:	f000 81ad 	beq.w	c0de330e <jsmn_parse+0x3ea>
c0de2fb4:	2d22      	cmp	r5, #34	@ 0x22
c0de2fb6:	d11d      	bne.n	c0de2ff4 <jsmn_parse+0xd0>
c0de2fb8:	e157      	b.n	c0de326a <jsmn_parse+0x346>
c0de2fba:	bf00      	nop
c0de2fbc:	1c75      	adds	r5, r6, #1
c0de2fbe:	4295      	cmp	r5, r2
c0de2fc0:	d218      	bcs.n	c0de2ff4 <jsmn_parse+0xd0>
c0de2fc2:	1cbc      	adds	r4, r7, #2
c0de2fc4:	8004      	strh	r4, [r0, #0]
c0de2fc6:	b2a5      	uxth	r5, r4
c0de2fc8:	46f4      	mov	ip, lr
c0de2fca:	f811 e005 	ldrb.w	lr, [r1, r5]
c0de2fce:	f1ae 065c 	sub.w	r6, lr, #92	@ 0x5c
c0de2fd2:	2e19      	cmp	r6, #25
c0de2fd4:	d83b      	bhi.n	c0de304e <jsmn_parse+0x12a>
c0de2fd6:	2501      	movs	r5, #1
c0de2fd8:	fa05 fb06 	lsl.w	fp, r5, r6
c0de2fdc:	f240 4541 	movw	r5, #1089	@ 0x441
c0de2fe0:	f2c0 1544 	movt	r5, #324	@ 0x144
c0de2fe4:	ea1b 0f05 	tst.w	fp, r5
c0de2fe8:	d00b      	beq.n	c0de3002 <jsmn_parse+0xde>
c0de2fea:	f04f 0b01 	mov.w	fp, #1
c0de2fee:	46e6      	mov	lr, ip
c0de2ff0:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de2ff4:	4627      	mov	r7, r4
c0de2ff6:	3401      	adds	r4, #1
c0de2ff8:	b2a6      	uxth	r6, r4
c0de2ffa:	4296      	cmp	r6, r2
c0de2ffc:	8004      	strh	r4, [r0, #0]
c0de2ffe:	d3d3      	bcc.n	c0de2fa8 <jsmn_parse+0x84>
c0de3000:	e185      	b.n	c0de330e <jsmn_parse+0x3ea>
c0de3002:	2e19      	cmp	r6, #25
c0de3004:	f04f 0b01 	mov.w	fp, #1
c0de3008:	d121      	bne.n	c0de304e <jsmn_parse+0x12a>
c0de300a:	1cfc      	adds	r4, r7, #3
c0de300c:	2700      	movs	r7, #0
c0de300e:	46e6      	mov	lr, ip
c0de3010:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de3014:	8004      	strh	r4, [r0, #0]
c0de3016:	bf00      	nop
c0de3018:	b2a5      	uxth	r5, r4
c0de301a:	4295      	cmp	r5, r2
c0de301c:	d215      	bcs.n	c0de304a <jsmn_parse+0x126>
c0de301e:	5d4d      	ldrb	r5, [r1, r5]
c0de3020:	b19d      	cbz	r5, c0de304a <jsmn_parse+0x126>
c0de3022:	f1a5 0630 	sub.w	r6, r5, #48	@ 0x30
c0de3026:	b2f6      	uxtb	r6, r6
c0de3028:	2e0a      	cmp	r6, #10
c0de302a:	d308      	bcc.n	c0de303e <jsmn_parse+0x11a>
c0de302c:	b2ed      	uxtb	r5, r5
c0de302e:	f1a5 0641 	sub.w	r6, r5, #65	@ 0x41
c0de3032:	2e06      	cmp	r6, #6
c0de3034:	d303      	bcc.n	c0de303e <jsmn_parse+0x11a>
c0de3036:	3d61      	subs	r5, #97	@ 0x61
c0de3038:	2d06      	cmp	r5, #6
c0de303a:	f080 8172 	bcs.w	c0de3322 <jsmn_parse+0x3fe>
c0de303e:	3401      	adds	r4, #1
c0de3040:	2f03      	cmp	r7, #3
c0de3042:	f107 0701 	add.w	r7, r7, #1
c0de3046:	8004      	strh	r4, [r0, #0]
c0de3048:	d3e6      	bcc.n	c0de3018 <jsmn_parse+0xf4>
c0de304a:	3c01      	subs	r4, #1
c0de304c:	e7d2      	b.n	c0de2ff4 <jsmn_parse+0xd0>
c0de304e:	f1be 0f22 	cmp.w	lr, #34	@ 0x22
c0de3052:	d0cc      	beq.n	c0de2fee <jsmn_parse+0xca>
c0de3054:	f1be 0f2f 	cmp.w	lr, #47	@ 0x2f
c0de3058:	46e6      	mov	lr, ip
c0de305a:	f64f 7cff 	movw	ip, #65535	@ 0xffff
c0de305e:	d0c9      	beq.n	c0de2ff4 <jsmn_parse+0xd0>
c0de3060:	e15f      	b.n	c0de3322 <jsmn_parse+0x3fe>
c0de3062:	bf00      	nop
c0de3064:	2c5d      	cmp	r4, #93	@ 0x5d
c0de3066:	d005      	beq.n	c0de3074 <jsmn_parse+0x150>
c0de3068:	2c7b      	cmp	r4, #123	@ 0x7b
c0de306a:	d024      	beq.n	c0de30b6 <jsmn_parse+0x192>
c0de306c:	2c7d      	cmp	r4, #125	@ 0x7d
c0de306e:	4657      	mov	r7, sl
c0de3070:	f040 808a 	bne.w	c0de3188 <jsmn_parse+0x264>
c0de3074:	2b00      	cmp	r3, #0
c0de3076:	f000 811f 	beq.w	c0de32b8 <jsmn_parse+0x394>
c0de307a:	2c7d      	cmp	r4, #125	@ 0x7d
c0de307c:	f1ae 0401 	sub.w	r4, lr, #1
c0de3080:	46c3      	mov	fp, r8
c0de3082:	f04f 0802 	mov.w	r8, #2
c0de3086:	b226      	sxth	r6, r4
c0de3088:	bf08      	it	eq
c0de308a:	f04f 0801 	moveq.w	r8, #1
c0de308e:	2e00      	cmp	r6, #0
c0de3090:	f100 80c9 	bmi.w	c0de3226 <jsmn_parse+0x302>
c0de3094:	b2b4      	uxth	r4, r6
c0de3096:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de309a:	886f      	ldrh	r7, [r5, #2]
c0de309c:	4567      	cmp	r7, ip
c0de309e:	d004      	beq.n	c0de30aa <jsmn_parse+0x186>
c0de30a0:	f835 7f04 	ldrh.w	r7, [r5, #4]!
c0de30a4:	4567      	cmp	r7, ip
c0de30a6:	f000 80c7 	beq.w	c0de3238 <jsmn_parse+0x314>
c0de30aa:	1e74      	subs	r4, r6, #1
c0de30ac:	b226      	sxth	r6, r4
c0de30ae:	f1b6 3fff 	cmp.w	r6, #4294967295	@ 0xffffffff
c0de30b2:	dcef      	bgt.n	c0de3094 <jsmn_parse+0x170>
c0de30b4:	e137      	b.n	c0de3326 <jsmn_parse+0x402>
c0de30b6:	2b00      	cmp	r3, #0
c0de30b8:	f108 0801 	add.w	r8, r8, #1
c0de30bc:	f000 80fc 	beq.w	c0de32b8 <jsmn_parse+0x394>
c0de30c0:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de30c2:	fa1f f78e 	uxth.w	r7, lr
c0de30c6:	42af      	cmp	r7, r5
c0de30c8:	f080 8138 	bcs.w	c0de333c <jsmn_parse+0x418>
c0de30cc:	f10e 0501 	add.w	r5, lr, #1
c0de30d0:	8886      	ldrh	r6, [r0, #4]
c0de30d2:	9501      	str	r5, [sp, #4]
c0de30d4:	8045      	strh	r5, [r0, #2]
c0de30d6:	eb03 05c7 	add.w	r5, r3, r7, lsl #3
c0de30da:	f04f 0b00 	mov.w	fp, #0
c0de30de:	4566      	cmp	r6, ip
c0de30e0:	f8a5 b006 	strh.w	fp, [r5, #6]
c0de30e4:	f04f 0b01 	mov.w	fp, #1
c0de30e8:	f8a5 c004 	strh.w	ip, [r5, #4]
c0de30ec:	d00b      	beq.n	c0de3106 <jsmn_parse+0x1e2>
c0de30ee:	b236      	sxth	r6, r6
c0de30f0:	46c3      	mov	fp, r8
c0de30f2:	eb03 08c6 	add.w	r8, r3, r6, lsl #3
c0de30f6:	f8b8 6006 	ldrh.w	r6, [r8, #6]
c0de30fa:	3601      	adds	r6, #1
c0de30fc:	f8a8 6006 	strh.w	r6, [r8, #6]
c0de3100:	46d8      	mov	r8, fp
c0de3102:	f04f 0b01 	mov.w	fp, #1
c0de3106:	2c7b      	cmp	r4, #123	@ 0x7b
c0de3108:	f04f 0402 	mov.w	r4, #2
c0de310c:	f105 0502 	add.w	r5, r5, #2
c0de3110:	bf08      	it	eq
c0de3112:	2401      	moveq	r4, #1
c0de3114:	f8a0 e004 	strh.w	lr, [r0, #4]
c0de3118:	f8dd e004 	ldr.w	lr, [sp, #4]
c0de311c:	f803 4037 	strb.w	r4, [r3, r7, lsl #3]
c0de3120:	f8a5 a000 	strh.w	sl, [r5]
c0de3124:	e0c8      	b.n	c0de32b8 <jsmn_parse+0x394>
c0de3126:	2b00      	cmp	r3, #0
c0de3128:	f000 80c6 	beq.w	c0de32b8 <jsmn_parse+0x394>
c0de312c:	8884      	ldrh	r4, [r0, #4]
c0de312e:	4564      	cmp	r4, ip
c0de3130:	f000 80c2 	beq.w	c0de32b8 <jsmn_parse+0x394>
c0de3134:	b224      	sxth	r4, r4
c0de3136:	f813 4034 	ldrb.w	r4, [r3, r4, lsl #3]
c0de313a:	3c03      	subs	r4, #3
c0de313c:	f114 0f03 	cmn.w	r4, #3
c0de3140:	f200 80ba 	bhi.w	c0de32b8 <jsmn_parse+0x394>
c0de3144:	9c01      	ldr	r4, [sp, #4]
c0de3146:	3c01      	subs	r4, #1
c0de3148:	b224      	sxth	r4, r4
c0de314a:	2c00      	cmp	r4, #0
c0de314c:	f100 80b4 	bmi.w	c0de32b8 <jsmn_parse+0x394>
c0de3150:	b2a5      	uxth	r5, r4
c0de3152:	f813 6035 	ldrb.w	r6, [r3, r5, lsl #3]
c0de3156:	3e01      	subs	r6, #1
c0de3158:	2e01      	cmp	r6, #1
c0de315a:	d807      	bhi.n	c0de316c <jsmn_parse+0x248>
c0de315c:	eb03 05c5 	add.w	r5, r3, r5, lsl #3
c0de3160:	886e      	ldrh	r6, [r5, #2]
c0de3162:	4566      	cmp	r6, ip
c0de3164:	d002      	beq.n	c0de316c <jsmn_parse+0x248>
c0de3166:	88ad      	ldrh	r5, [r5, #4]
c0de3168:	4565      	cmp	r5, ip
c0de316a:	d007      	beq.n	c0de317c <jsmn_parse+0x258>
c0de316c:	3c01      	subs	r4, #1
c0de316e:	b224      	sxth	r4, r4
c0de3170:	f1b4 3fff 	cmp.w	r4, #4294967295	@ 0xffffffff
c0de3174:	dcec      	bgt.n	c0de3150 <jsmn_parse+0x22c>
c0de3176:	e09f      	b.n	c0de32b8 <jsmn_parse+0x394>
c0de3178:	9c01      	ldr	r4, [sp, #4]
c0de317a:	3c01      	subs	r4, #1
c0de317c:	8084      	strh	r4, [r0, #4]
c0de317e:	e09b      	b.n	c0de32b8 <jsmn_parse+0x394>
c0de3180:	2c00      	cmp	r4, #0
c0de3182:	4657      	mov	r7, sl
c0de3184:	f000 80a9 	beq.w	c0de32da <jsmn_parse+0x3b6>
c0de3188:	2c1f      	cmp	r4, #31
c0de318a:	dd11      	ble.n	c0de31b0 <jsmn_parse+0x28c>
c0de318c:	f1a4 0520 	sub.w	r5, r4, #32
c0de3190:	2d1a      	cmp	r5, #26
c0de3192:	d807      	bhi.n	c0de31a4 <jsmn_parse+0x280>
c0de3194:	f241 0601 	movw	r6, #4097	@ 0x1001
c0de3198:	fa0b f505 	lsl.w	r5, fp, r5
c0de319c:	f2c0 4600 	movt	r6, #1024	@ 0x400
c0de31a0:	4235      	tst	r5, r6
c0de31a2:	d119      	bne.n	c0de31d8 <jsmn_parse+0x2b4>
c0de31a4:	2c5d      	cmp	r4, #93	@ 0x5d
c0de31a6:	d017      	beq.n	c0de31d8 <jsmn_parse+0x2b4>
c0de31a8:	2c7d      	cmp	r4, #125	@ 0x7d
c0de31aa:	d109      	bne.n	c0de31c0 <jsmn_parse+0x29c>
c0de31ac:	e014      	b.n	c0de31d8 <jsmn_parse+0x2b4>
c0de31ae:	bf00      	nop
c0de31b0:	2c0d      	cmp	r4, #13
c0de31b2:	d805      	bhi.n	c0de31c0 <jsmn_parse+0x29c>
c0de31b4:	fa0b f504 	lsl.w	r5, fp, r4
c0de31b8:	f242 6601 	movw	r6, #9729	@ 0x2601
c0de31bc:	4235      	tst	r5, r6
c0de31be:	d10b      	bne.n	c0de31d8 <jsmn_parse+0x2b4>
c0de31c0:	3c7f      	subs	r4, #127	@ 0x7f
c0de31c2:	f114 0f5f 	cmn.w	r4, #95	@ 0x5f
c0de31c6:	f0c0 80a7 	bcc.w	c0de3318 <jsmn_parse+0x3f4>
c0de31ca:	3701      	adds	r7, #1
c0de31cc:	b2bc      	uxth	r4, r7
c0de31ce:	4294      	cmp	r4, r2
c0de31d0:	8007      	strh	r7, [r0, #0]
c0de31d2:	d201      	bcs.n	c0de31d8 <jsmn_parse+0x2b4>
c0de31d4:	5d0c      	ldrb	r4, [r1, r4]
c0de31d6:	e7d7      	b.n	c0de3188 <jsmn_parse+0x264>
c0de31d8:	b1ab      	cbz	r3, c0de3206 <jsmn_parse+0x2e2>
c0de31da:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de31dc:	fa1f f48e 	uxth.w	r4, lr
c0de31e0:	42ac      	cmp	r4, r5
c0de31e2:	f080 80a6 	bcs.w	c0de3332 <jsmn_parse+0x40e>
c0de31e6:	2604      	movs	r6, #4
c0de31e8:	f10e 0e01 	add.w	lr, lr, #1
c0de31ec:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de31f0:	f803 6034 	strb.w	r6, [r3, r4, lsl #3]
c0de31f4:	2400      	movs	r4, #0
c0de31f6:	f8a0 e002 	strh.w	lr, [r0, #2]
c0de31fa:	f8a5 a002 	strh.w	sl, [r5, #2]
c0de31fe:	80af      	strh	r7, [r5, #4]
c0de3200:	80ec      	strh	r4, [r5, #6]
c0de3202:	f8cd e004 	str.w	lr, [sp, #4]
c0de3206:	f1a7 0a01 	sub.w	sl, r7, #1
c0de320a:	2b00      	cmp	r3, #0
c0de320c:	f108 0801 	add.w	r8, r8, #1
c0de3210:	d052      	beq.n	c0de32b8 <jsmn_parse+0x394>
c0de3212:	8884      	ldrh	r4, [r0, #4]
c0de3214:	4564      	cmp	r4, ip
c0de3216:	d04f      	beq.n	c0de32b8 <jsmn_parse+0x394>
c0de3218:	b224      	sxth	r4, r4
c0de321a:	eb03 04c4 	add.w	r4, r3, r4, lsl #3
c0de321e:	88e5      	ldrh	r5, [r4, #6]
c0de3220:	3501      	adds	r5, #1
c0de3222:	80e5      	strh	r5, [r4, #6]
c0de3224:	e048      	b.n	c0de32b8 <jsmn_parse+0x394>
c0de3226:	ea5f 440e 	movs.w	r4, lr, lsl #16
c0de322a:	46d8      	mov	r8, fp
c0de322c:	f04f 0b01 	mov.w	fp, #1
c0de3230:	f8cd e004 	str.w	lr, [sp, #4]
c0de3234:	d140      	bne.n	c0de32b8 <jsmn_parse+0x394>
c0de3236:	e076      	b.n	c0de3326 <jsmn_parse+0x402>
c0de3238:	f813 6034 	ldrb.w	r6, [r3, r4, lsl #3]
c0de323c:	45b0      	cmp	r8, r6
c0de323e:	d172      	bne.n	c0de3326 <jsmn_parse+0x402>
c0de3240:	f10a 0601 	add.w	r6, sl, #1
c0de3244:	46d8      	mov	r8, fp
c0de3246:	f04f 0b01 	mov.w	fp, #1
c0de324a:	f8a0 c004 	strh.w	ip, [r0, #4]
c0de324e:	802e      	strh	r6, [r5, #0]
c0de3250:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
c0de3254:	886e      	ldrh	r6, [r5, #2]
c0de3256:	4566      	cmp	r6, ip
c0de3258:	d002      	beq.n	c0de3260 <jsmn_parse+0x33c>
c0de325a:	88ad      	ldrh	r5, [r5, #4]
c0de325c:	4565      	cmp	r5, ip
c0de325e:	d027      	beq.n	c0de32b0 <jsmn_parse+0x38c>
c0de3260:	2c00      	cmp	r4, #0
c0de3262:	f1a4 0401 	sub.w	r4, r4, #1
c0de3266:	dcf3      	bgt.n	c0de3250 <jsmn_parse+0x32c>
c0de3268:	e023      	b.n	c0de32b2 <jsmn_parse+0x38e>
c0de326a:	b37b      	cbz	r3, c0de32cc <jsmn_parse+0x3a8>
c0de326c:	9e01      	ldr	r6, [sp, #4]
c0de326e:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de3270:	b2b5      	uxth	r5, r6
c0de3272:	42bd      	cmp	r5, r7
c0de3274:	d260      	bcs.n	c0de3338 <jsmn_parse+0x414>
c0de3276:	f106 0e01 	add.w	lr, r6, #1
c0de327a:	eb03 06c5 	add.w	r6, r3, r5, lsl #3
c0de327e:	2703      	movs	r7, #3
c0de3280:	f803 7035 	strb.w	r7, [r3, r5, lsl #3]
c0de3284:	f8a6 8002 	strh.w	r8, [r6, #2]
c0de3288:	8885      	ldrh	r5, [r0, #4]
c0de328a:	f8dd 8000 	ldr.w	r8, [sp]
c0de328e:	2700      	movs	r7, #0
c0de3290:	4565      	cmp	r5, ip
c0de3292:	f108 0801 	add.w	r8, r8, #1
c0de3296:	f8a0 e002 	strh.w	lr, [r0, #2]
c0de329a:	80b4      	strh	r4, [r6, #4]
c0de329c:	80f7      	strh	r7, [r6, #6]
c0de329e:	d005      	beq.n	c0de32ac <jsmn_parse+0x388>
c0de32a0:	b22d      	sxth	r5, r5
c0de32a2:	eb03 05c5 	add.w	r5, r3, r5, lsl #3
c0de32a6:	88ee      	ldrh	r6, [r5, #6]
c0de32a8:	3601      	adds	r6, #1
c0de32aa:	80ee      	strh	r6, [r5, #6]
c0de32ac:	46a2      	mov	sl, r4
c0de32ae:	e000      	b.n	c0de32b2 <jsmn_parse+0x38e>
c0de32b0:	8084      	strh	r4, [r0, #4]
c0de32b2:	f8cd e004 	str.w	lr, [sp, #4]
c0de32b6:	bf00      	nop
c0de32b8:	f10a 0a01 	add.w	sl, sl, #1
c0de32bc:	fa1f f48a 	uxth.w	r4, sl
c0de32c0:	4294      	cmp	r4, r2
c0de32c2:	f8a0 a000 	strh.w	sl, [r0]
c0de32c6:	f4ff ae3f 	bcc.w	c0de2f48 <jsmn_parse+0x24>
c0de32ca:	e006      	b.n	c0de32da <jsmn_parse+0x3b6>
c0de32cc:	f8dd 8000 	ldr.w	r8, [sp]
c0de32d0:	46a2      	mov	sl, r4
c0de32d2:	f108 0801 	add.w	r8, r8, #1
c0de32d6:	e7ef      	b.n	c0de32b8 <jsmn_parse+0x394>
c0de32d8:	46f0      	mov	r8, lr
c0de32da:	b1ab      	cbz	r3, c0de3308 <jsmn_parse+0x3e4>
c0de32dc:	f1ae 0001 	sub.w	r0, lr, #1
c0de32e0:	b200      	sxth	r0, r0
c0de32e2:	2800      	cmp	r0, #0
c0de32e4:	d410      	bmi.n	c0de3308 <jsmn_parse+0x3e4>
c0de32e6:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de32ea:	bf00      	nop
c0de32ec:	b282      	uxth	r2, r0
c0de32ee:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de32f2:	8857      	ldrh	r7, [r2, #2]
c0de32f4:	428f      	cmp	r7, r1
c0de32f6:	d002      	beq.n	c0de32fe <jsmn_parse+0x3da>
c0de32f8:	8892      	ldrh	r2, [r2, #4]
c0de32fa:	428a      	cmp	r2, r1
c0de32fc:	d009      	beq.n	c0de3312 <jsmn_parse+0x3ee>
c0de32fe:	3801      	subs	r0, #1
c0de3300:	b200      	sxth	r0, r0
c0de3302:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de3306:	dcf1      	bgt.n	c0de32ec <jsmn_parse+0x3c8>
c0de3308:	fa0f f188 	sxth.w	r1, r8
c0de330c:	e00d      	b.n	c0de332a <jsmn_parse+0x406>
c0de330e:	f8a0 a000 	strh.w	sl, [r0]
c0de3312:	f06f 0102 	mvn.w	r1, #2
c0de3316:	e008      	b.n	c0de332a <jsmn_parse+0x406>
c0de3318:	f06f 0101 	mvn.w	r1, #1
c0de331c:	f8a0 a000 	strh.w	sl, [r0]
c0de3320:	e003      	b.n	c0de332a <jsmn_parse+0x406>
c0de3322:	f8a0 a000 	strh.w	sl, [r0]
c0de3326:	f06f 0101 	mvn.w	r1, #1
c0de332a:	4608      	mov	r0, r1
c0de332c:	b002      	add	sp, #8
c0de332e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3332:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3336:	e7f1      	b.n	c0de331c <jsmn_parse+0x3f8>
c0de3338:	f8a0 a000 	strh.w	sl, [r0]
c0de333c:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3340:	e7f3      	b.n	c0de332a <jsmn_parse+0x406>

c0de3342 <jsmn_init>:
c0de3342:	2100      	movs	r1, #0
c0de3344:	8001      	strh	r1, [r0, #0]
c0de3346:	8041      	strh	r1, [r0, #2]
c0de3348:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de334c:	8081      	strh	r1, [r0, #4]
c0de334e:	4770      	bx	lr

c0de3350 <h_approve>:
c0de3350:	b5b0      	push	{r4, r5, r7, lr}
c0de3352:	f643 1072 	movw	r0, #14706	@ 0x3972
c0de3356:	f2c0 0000 	movt	r0, #0
c0de335a:	4478      	add	r0, pc
c0de335c:	f000 ff41 	bl	c0de41e2 <zemu_log_stack>
c0de3360:	2000      	movs	r0, #0
c0de3362:	2100      	movs	r1, #0
c0de3364:	f000 fc5e 	bl	c0de3c24 <view_idle_show_impl>
c0de3368:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de336c:	f2c0 0400 	movt	r4, #0
c0de3370:	eb09 0004 	add.w	r0, r9, r4
c0de3374:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de3378:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de337c:	f240 0502 	movw	r5, #2
c0de3380:	4281      	cmp	r1, r0
c0de3382:	f2c0 0500 	movt	r5, #0
c0de3386:	d256      	bcs.n	c0de3436 <h_approve+0xe6>
c0de3388:	eb09 0005 	add.w	r0, r9, r5
c0de338c:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3390:	2200      	movs	r2, #0
c0de3392:	f001 f850 	bl	c0de4436 <io_seph_recv>
c0de3396:	eb09 0004 	add.w	r0, r9, r4
c0de339a:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de339e:	2800      	cmp	r0, #0
c0de33a0:	d041      	beq.n	c0de3426 <h_approve+0xd6>
c0de33a2:	eb09 0004 	add.w	r0, r9, r4
c0de33a6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de33aa:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de33ae:	4281      	cmp	r1, r0
c0de33b0:	d239      	bcs.n	c0de3426 <h_approve+0xd6>
c0de33b2:	f003 fa74 	bl	c0de689e <os_perso_isonboarded>
c0de33b6:	28aa      	cmp	r0, #170	@ 0xaa
c0de33b8:	d103      	bne.n	c0de33c2 <h_approve+0x72>
c0de33ba:	f003 faa6 	bl	c0de690a <os_global_pin_is_validated>
c0de33be:	28aa      	cmp	r0, #170	@ 0xaa
c0de33c0:	d131      	bne.n	c0de3426 <h_approve+0xd6>
c0de33c2:	eb09 0104 	add.w	r1, r9, r4
c0de33c6:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de33ca:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de33ce:	4288      	cmp	r0, r1
c0de33d0:	d224      	bcs.n	c0de341c <h_approve+0xcc>
c0de33d2:	bf00      	nop
c0de33d4:	b281      	uxth	r1, r0
c0de33d6:	eb09 0004 	add.w	r0, r9, r4
c0de33da:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de33de:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de33e2:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de33e6:	b13b      	cbz	r3, c0de33f8 <h_approve+0xa8>
c0de33e8:	4798      	blx	r3
c0de33ea:	b158      	cbz	r0, c0de3404 <h_approve+0xb4>
c0de33ec:	eb09 0104 	add.w	r1, r9, r4
c0de33f0:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de33f4:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de33f8:	2801      	cmp	r0, #1
c0de33fa:	bf08      	it	eq
c0de33fc:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de3400:	f000 ff9b 	bl	c0de433a <io_seph_ux_display_bagl_element>
c0de3404:	eb09 0204 	add.w	r2, r9, r4
c0de3408:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de340c:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de3410:	3001      	adds	r0, #1
c0de3412:	b283      	uxth	r3, r0
c0de3414:	428b      	cmp	r3, r1
c0de3416:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de341a:	d3db      	bcc.n	c0de33d4 <h_approve+0x84>
c0de341c:	b280      	uxth	r0, r0
c0de341e:	4288      	cmp	r0, r1
c0de3420:	bf08      	it	eq
c0de3422:	f003 fb00 	bleq	c0de6a26 <screen_update>
c0de3426:	eb09 0004 	add.w	r0, r9, r4
c0de342a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de342e:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de3432:	4281      	cmp	r1, r0
c0de3434:	d3a8      	bcc.n	c0de3388 <h_approve+0x38>
c0de3436:	eb09 0405 	add.w	r4, r9, r5
c0de343a:	4620      	mov	r0, r4
c0de343c:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3440:	2200      	movs	r2, #0
c0de3442:	f000 fff8 	bl	c0de4436 <io_seph_recv>
c0de3446:	f000 fff0 	bl	c0de442a <io_seproxyhal_general_status>
c0de344a:	4620      	mov	r0, r4
c0de344c:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3450:	2200      	movs	r2, #0
c0de3452:	f000 fff0 	bl	c0de4436 <io_seph_recv>
c0de3456:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de345a:	f2c0 0000 	movt	r0, #0
c0de345e:	4448      	add	r0, r9
c0de3460:	f241 0148 	movw	r1, #4168	@ 0x1048
c0de3464:	5840      	ldr	r0, [r0, r1]
c0de3466:	b110      	cbz	r0, c0de346e <h_approve+0x11e>
c0de3468:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de346c:	4700      	bx	r0
c0de346e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3470 <view_idle_show>:
c0de3470:	f000 bbd8 	b.w	c0de3c24 <view_idle_show_impl>

c0de3474 <h_reject>:
c0de3474:	b5b0      	push	{r4, r5, r7, lr}
c0de3476:	f643 1086 	movw	r0, #14726	@ 0x3986
c0de347a:	f2c0 0000 	movt	r0, #0
c0de347e:	4478      	add	r0, pc
c0de3480:	f000 feaf 	bl	c0de41e2 <zemu_log_stack>
c0de3484:	2000      	movs	r0, #0
c0de3486:	2100      	movs	r1, #0
c0de3488:	f000 fbcc 	bl	c0de3c24 <view_idle_show_impl>
c0de348c:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de3490:	f2c0 0400 	movt	r4, #0
c0de3494:	eb09 0004 	add.w	r0, r9, r4
c0de3498:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de349c:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de34a0:	f240 0502 	movw	r5, #2
c0de34a4:	4281      	cmp	r1, r0
c0de34a6:	f2c0 0500 	movt	r5, #0
c0de34aa:	d256      	bcs.n	c0de355a <h_reject+0xe6>
c0de34ac:	eb09 0005 	add.w	r0, r9, r5
c0de34b0:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de34b4:	2200      	movs	r2, #0
c0de34b6:	f000 ffbe 	bl	c0de4436 <io_seph_recv>
c0de34ba:	eb09 0004 	add.w	r0, r9, r4
c0de34be:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de34c2:	2800      	cmp	r0, #0
c0de34c4:	d041      	beq.n	c0de354a <h_reject+0xd6>
c0de34c6:	eb09 0004 	add.w	r0, r9, r4
c0de34ca:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de34ce:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de34d2:	4281      	cmp	r1, r0
c0de34d4:	d239      	bcs.n	c0de354a <h_reject+0xd6>
c0de34d6:	f003 f9e2 	bl	c0de689e <os_perso_isonboarded>
c0de34da:	28aa      	cmp	r0, #170	@ 0xaa
c0de34dc:	d103      	bne.n	c0de34e6 <h_reject+0x72>
c0de34de:	f003 fa14 	bl	c0de690a <os_global_pin_is_validated>
c0de34e2:	28aa      	cmp	r0, #170	@ 0xaa
c0de34e4:	d131      	bne.n	c0de354a <h_reject+0xd6>
c0de34e6:	eb09 0104 	add.w	r1, r9, r4
c0de34ea:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de34ee:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de34f2:	4288      	cmp	r0, r1
c0de34f4:	d224      	bcs.n	c0de3540 <h_reject+0xcc>
c0de34f6:	bf00      	nop
c0de34f8:	b281      	uxth	r1, r0
c0de34fa:	eb09 0004 	add.w	r0, r9, r4
c0de34fe:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de3502:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de3506:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de350a:	b13b      	cbz	r3, c0de351c <h_reject+0xa8>
c0de350c:	4798      	blx	r3
c0de350e:	b158      	cbz	r0, c0de3528 <h_reject+0xb4>
c0de3510:	eb09 0104 	add.w	r1, r9, r4
c0de3514:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de3518:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de351c:	2801      	cmp	r0, #1
c0de351e:	bf08      	it	eq
c0de3520:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de3524:	f000 ff09 	bl	c0de433a <io_seph_ux_display_bagl_element>
c0de3528:	eb09 0204 	add.w	r2, r9, r4
c0de352c:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de3530:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de3534:	3001      	adds	r0, #1
c0de3536:	b283      	uxth	r3, r0
c0de3538:	428b      	cmp	r3, r1
c0de353a:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de353e:	d3db      	bcc.n	c0de34f8 <h_reject+0x84>
c0de3540:	b280      	uxth	r0, r0
c0de3542:	4288      	cmp	r0, r1
c0de3544:	bf08      	it	eq
c0de3546:	f003 fa6e 	bleq	c0de6a26 <screen_update>
c0de354a:	eb09 0004 	add.w	r0, r9, r4
c0de354e:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de3552:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de3556:	4281      	cmp	r1, r0
c0de3558:	d3a8      	bcc.n	c0de34ac <h_reject+0x38>
c0de355a:	eb09 0405 	add.w	r4, r9, r5
c0de355e:	4620      	mov	r0, r4
c0de3560:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3564:	2200      	movs	r2, #0
c0de3566:	f000 ff66 	bl	c0de4436 <io_seph_recv>
c0de356a:	f000 ff5e 	bl	c0de442a <io_seproxyhal_general_status>
c0de356e:	4620      	mov	r0, r4
c0de3570:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de3574:	2200      	movs	r2, #0
c0de3576:	f000 ff5e 	bl	c0de4436 <io_seph_recv>
c0de357a:	f246 35b8 	movw	r5, #25528	@ 0x63b8
c0de357e:	f2c0 0500 	movt	r5, #0
c0de3582:	eb09 0405 	add.w	r4, r9, r5
c0de3586:	4620      	mov	r0, r4
c0de3588:	f240 1111 	movw	r1, #273	@ 0x111
c0de358c:	f003 fa8a 	bl	c0de6aa4 <explicit_bzero>
c0de3590:	2069      	movs	r0, #105	@ 0x69
c0de3592:	2286      	movs	r2, #134	@ 0x86
c0de3594:	f809 0005 	strb.w	r0, [r9, r5]
c0de3598:	2020      	movs	r0, #32
c0de359a:	2102      	movs	r1, #2
c0de359c:	7062      	strb	r2, [r4, #1]
c0de359e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de35a2:	f000 bf75 	b.w	c0de4490 <io_exchange>
	...

c0de35a8 <h_error_accept>:
c0de35a8:	b5b0      	push	{r4, r5, r7, lr}
c0de35aa:	2000      	movs	r0, #0
c0de35ac:	2100      	movs	r1, #0
c0de35ae:	f000 fb39 	bl	c0de3c24 <view_idle_show_impl>
c0de35b2:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de35b6:	f2c0 0400 	movt	r4, #0
c0de35ba:	eb09 0004 	add.w	r0, r9, r4
c0de35be:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de35c2:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de35c6:	f240 0502 	movw	r5, #2
c0de35ca:	4281      	cmp	r1, r0
c0de35cc:	f2c0 0500 	movt	r5, #0
c0de35d0:	d257      	bcs.n	c0de3682 <h_error_accept+0xda>
c0de35d2:	bf00      	nop
c0de35d4:	eb09 0005 	add.w	r0, r9, r5
c0de35d8:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de35dc:	2200      	movs	r2, #0
c0de35de:	f000 ff2a 	bl	c0de4436 <io_seph_recv>
c0de35e2:	eb09 0004 	add.w	r0, r9, r4
c0de35e6:	f8d0 00cc 	ldr.w	r0, [r0, #204]	@ 0xcc
c0de35ea:	2800      	cmp	r0, #0
c0de35ec:	d041      	beq.n	c0de3672 <h_error_accept+0xca>
c0de35ee:	eb09 0004 	add.w	r0, r9, r4
c0de35f2:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de35f6:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de35fa:	4281      	cmp	r1, r0
c0de35fc:	d239      	bcs.n	c0de3672 <h_error_accept+0xca>
c0de35fe:	f003 f94e 	bl	c0de689e <os_perso_isonboarded>
c0de3602:	28aa      	cmp	r0, #170	@ 0xaa
c0de3604:	d103      	bne.n	c0de360e <h_error_accept+0x66>
c0de3606:	f003 f980 	bl	c0de690a <os_global_pin_is_validated>
c0de360a:	28aa      	cmp	r0, #170	@ 0xaa
c0de360c:	d131      	bne.n	c0de3672 <h_error_accept+0xca>
c0de360e:	eb09 0104 	add.w	r1, r9, r4
c0de3612:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	@ 0xca
c0de3616:	f891 10d0 	ldrb.w	r1, [r1, #208]	@ 0xd0
c0de361a:	4288      	cmp	r0, r1
c0de361c:	d224      	bcs.n	c0de3668 <h_error_accept+0xc0>
c0de361e:	bf00      	nop
c0de3620:	b281      	uxth	r1, r0
c0de3622:	eb09 0004 	add.w	r0, r9, r4
c0de3626:	f8d0 30d8 	ldr.w	r3, [r0, #216]	@ 0xd8
c0de362a:	f8d0 20cc 	ldr.w	r2, [r0, #204]	@ 0xcc
c0de362e:	eb02 1041 	add.w	r0, r2, r1, lsl #5
c0de3632:	b13b      	cbz	r3, c0de3644 <h_error_accept+0x9c>
c0de3634:	4798      	blx	r3
c0de3636:	b158      	cbz	r0, c0de3650 <h_error_accept+0xa8>
c0de3638:	eb09 0104 	add.w	r1, r9, r4
c0de363c:	f8d1 20cc 	ldr.w	r2, [r1, #204]	@ 0xcc
c0de3640:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	@ 0xca
c0de3644:	2801      	cmp	r0, #1
c0de3646:	bf08      	it	eq
c0de3648:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de364c:	f000 fe75 	bl	c0de433a <io_seph_ux_display_bagl_element>
c0de3650:	eb09 0204 	add.w	r2, r9, r4
c0de3654:	f8b2 00ca 	ldrh.w	r0, [r2, #202]	@ 0xca
c0de3658:	f892 10d0 	ldrb.w	r1, [r2, #208]	@ 0xd0
c0de365c:	3001      	adds	r0, #1
c0de365e:	b283      	uxth	r3, r0
c0de3660:	428b      	cmp	r3, r1
c0de3662:	f8a2 00ca 	strh.w	r0, [r2, #202]	@ 0xca
c0de3666:	d3db      	bcc.n	c0de3620 <h_error_accept+0x78>
c0de3668:	b280      	uxth	r0, r0
c0de366a:	4288      	cmp	r0, r1
c0de366c:	bf08      	it	eq
c0de366e:	f003 f9da 	bleq	c0de6a26 <screen_update>
c0de3672:	eb09 0004 	add.w	r0, r9, r4
c0de3676:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	@ 0xca
c0de367a:	f890 00d0 	ldrb.w	r0, [r0, #208]	@ 0xd0
c0de367e:	4281      	cmp	r1, r0
c0de3680:	d3a8      	bcc.n	c0de35d4 <h_error_accept+0x2c>
c0de3682:	eb09 0405 	add.w	r4, r9, r5
c0de3686:	4620      	mov	r0, r4
c0de3688:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de368c:	2200      	movs	r2, #0
c0de368e:	f000 fed2 	bl	c0de4436 <io_seph_recv>
c0de3692:	f000 feca 	bl	c0de442a <io_seproxyhal_general_status>
c0de3696:	4620      	mov	r0, r4
c0de3698:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de369c:	2200      	movs	r2, #0
c0de369e:	f000 feca 	bl	c0de4436 <io_seph_recv>
c0de36a2:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de36a6:	f2c0 0000 	movt	r0, #0
c0de36aa:	2169      	movs	r1, #105	@ 0x69
c0de36ac:	eb09 0200 	add.w	r2, r9, r0
c0de36b0:	2384      	movs	r3, #132	@ 0x84
c0de36b2:	f809 1000 	strb.w	r1, [r9, r0]
c0de36b6:	2020      	movs	r0, #32
c0de36b8:	2102      	movs	r1, #2
c0de36ba:	7053      	strb	r3, [r2, #1]
c0de36bc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de36c0:	f000 bee6 	b.w	c0de4490 <io_exchange>

c0de36c4 <h_paging_init>:
c0de36c4:	b580      	push	{r7, lr}
c0de36c6:	f243 60d7 	movw	r0, #14039	@ 0x36d7
c0de36ca:	f2c0 0000 	movt	r0, #0
c0de36ce:	4478      	add	r0, pc
c0de36d0:	f000 fd87 	bl	c0de41e2 <zemu_log_stack>
c0de36d4:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de36d8:	f2c0 0000 	movt	r0, #0
c0de36dc:	4448      	add	r0, r9
c0de36de:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de36e2:	2200      	movs	r2, #0
c0de36e4:	5442      	strb	r2, [r0, r1]
c0de36e6:	f241 0150 	movw	r1, #4176	@ 0x1050
c0de36ea:	2201      	movs	r2, #1
c0de36ec:	5442      	strb	r2, [r0, r1]
c0de36ee:	f241 014e 	movw	r1, #4174	@ 0x104e
c0de36f2:	22ff      	movs	r2, #255	@ 0xff
c0de36f4:	5242      	strh	r2, [r0, r1]
c0de36f6:	bd80      	pop	{r7, pc}

c0de36f8 <h_paging_increase>:
c0de36f8:	b580      	push	{r7, lr}
c0de36fa:	f243 50d4 	movw	r0, #13780	@ 0x35d4
c0de36fe:	f2c0 0000 	movt	r0, #0
c0de3702:	4478      	add	r0, pc
c0de3704:	f000 fd6d 	bl	c0de41e2 <zemu_log_stack>
c0de3708:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de370c:	f2c0 0000 	movt	r0, #0
c0de3710:	eb09 0100 	add.w	r1, r9, r0
c0de3714:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de3718:	5c8a      	ldrb	r2, [r1, r2]
c0de371a:	f241 0350 	movw	r3, #4176	@ 0x1050
c0de371e:	5ccb      	ldrb	r3, [r1, r3]
c0de3720:	1c51      	adds	r1, r2, #1
c0de3722:	4299      	cmp	r1, r3
c0de3724:	d312      	bcc.n	c0de374c <h_paging_increase+0x54>
c0de3726:	eb09 0100 	add.w	r1, r9, r0
c0de372a:	f241 024e 	movw	r2, #4174	@ 0x104e
c0de372e:	5c8a      	ldrb	r2, [r1, r2]
c0de3730:	b182      	cbz	r2, c0de3754 <h_paging_increase+0x5c>
c0de3732:	eb09 0300 	add.w	r3, r9, r0
c0de3736:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de373a:	5c5b      	ldrb	r3, [r3, r1]
c0de373c:	3a01      	subs	r2, #1
c0de373e:	429a      	cmp	r2, r3
c0de3740:	d908      	bls.n	c0de3754 <h_paging_increase+0x5c>
c0de3742:	1c5a      	adds	r2, r3, #1
c0de3744:	eb09 0300 	add.w	r3, r9, r0
c0de3748:	545a      	strb	r2, [r3, r1]
c0de374a:	2100      	movs	r1, #0
c0de374c:	4448      	add	r0, r9
c0de374e:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de3752:	5481      	strb	r1, [r0, r2]
c0de3754:	bd80      	pop	{r7, pc}

c0de3756 <h_paging_can_decrease>:
c0de3756:	b510      	push	{r4, lr}
c0de3758:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de375c:	f2c0 0000 	movt	r0, #0
c0de3760:	4448      	add	r0, r9
c0de3762:	f241 014f 	movw	r1, #4175	@ 0x104f
c0de3766:	f241 024d 	movw	r2, #4173	@ 0x104d
c0de376a:	5c41      	ldrb	r1, [r0, r1]
c0de376c:	5c80      	ldrb	r0, [r0, r2]
c0de376e:	ea51 0400 	orrs.w	r4, r1, r0
c0de3772:	bf18      	it	ne
c0de3774:	2401      	movne	r4, #1
c0de3776:	f243 5160 	movw	r1, #13664	@ 0x3560
c0de377a:	f2c0 0100 	movt	r1, #0
c0de377e:	f243 60d5 	movw	r0, #14037	@ 0x36d5
c0de3782:	f2c0 0000 	movt	r0, #0
c0de3786:	4478      	add	r0, pc
c0de3788:	4479      	add	r1, pc
c0de378a:	bf08      	it	eq
c0de378c:	4608      	moveq	r0, r1
c0de378e:	f000 fd28 	bl	c0de41e2 <zemu_log_stack>
c0de3792:	4620      	mov	r0, r4
c0de3794:	bd10      	pop	{r4, pc}

c0de3796 <h_paging_decrease>:
c0de3796:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3798:	b08d      	sub	sp, #52	@ 0x34
c0de379a:	f245 2528 	movw	r5, #21032	@ 0x5228
c0de379e:	f2c0 0500 	movt	r5, #0
c0de37a2:	eb09 0705 	add.w	r7, r9, r5
c0de37a6:	f241 064d 	movw	r6, #4173	@ 0x104d
c0de37aa:	5dbb      	ldrb	r3, [r7, r6]
c0de37ac:	f243 72ea 	movw	r2, #14314	@ 0x37ea
c0de37b0:	f2c0 0200 	movt	r2, #0
c0de37b4:	f10d 0402 	add.w	r4, sp, #2
c0de37b8:	447a      	add	r2, pc
c0de37ba:	4620      	mov	r0, r4
c0de37bc:	2132      	movs	r1, #50	@ 0x32
c0de37be:	f002 fd83 	bl	c0de62c8 <snprintf>
c0de37c2:	4620      	mov	r0, r4
c0de37c4:	f000 fd0d 	bl	c0de41e2 <zemu_log_stack>
c0de37c8:	f241 004f 	movw	r0, #4175	@ 0x104f
c0de37cc:	5c39      	ldrb	r1, [r7, r0]
c0de37ce:	b159      	cbz	r1, c0de37e8 <h_paging_decrease+0x52>
c0de37d0:	3901      	subs	r1, #1
c0de37d2:	eb09 0205 	add.w	r2, r9, r5
c0de37d6:	5411      	strb	r1, [r2, r0]
c0de37d8:	f243 60c0 	movw	r0, #14016	@ 0x36c0
c0de37dc:	f2c0 0000 	movt	r0, #0
c0de37e0:	4478      	add	r0, pc
c0de37e2:	f000 fcfe 	bl	c0de41e2 <zemu_log_stack>
c0de37e6:	e014      	b.n	c0de3812 <h_paging_decrease+0x7c>
c0de37e8:	eb09 0005 	add.w	r0, r9, r5
c0de37ec:	5d80      	ldrb	r0, [r0, r6]
c0de37ee:	b180      	cbz	r0, c0de3812 <h_paging_decrease+0x7c>
c0de37f0:	3801      	subs	r0, #1
c0de37f2:	eb09 0405 	add.w	r4, r9, r5
c0de37f6:	f241 014d 	movw	r1, #4173	@ 0x104d
c0de37fa:	5460      	strb	r0, [r4, r1]
c0de37fc:	f243 60b6 	movw	r0, #14006	@ 0x36b6
c0de3800:	f2c0 0000 	movt	r0, #0
c0de3804:	4478      	add	r0, pc
c0de3806:	f000 fcec 	bl	c0de41e2 <zemu_log_stack>
c0de380a:	f241 004f 	movw	r0, #4175	@ 0x104f
c0de380e:	21ff      	movs	r1, #255	@ 0xff
c0de3810:	5421      	strb	r1, [r4, r0]
c0de3812:	b00d      	add	sp, #52	@ 0x34
c0de3814:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de3818 <h_review_update_data>:
c0de3818:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de381c:	b088      	sub	sp, #32
c0de381e:	f245 2628 	movw	r6, #21032	@ 0x5228
c0de3822:	f2c0 0600 	movt	r6, #0
c0de3826:	eb09 0006 	add.w	r0, r9, r6
c0de382a:	f241 0144 	movw	r1, #4164	@ 0x1044
c0de382e:	5840      	ldr	r0, [r0, r1]
c0de3830:	2800      	cmp	r0, #0
c0de3832:	f000 80c2 	beq.w	c0de39ba <h_review_update_data+0x1a2>
c0de3836:	eb09 0006 	add.w	r0, r9, r6
c0de383a:	f44f 5b82 	mov.w	fp, #4160	@ 0x1040
c0de383e:	f850 000b 	ldr.w	r0, [r0, fp]
c0de3842:	2800      	cmp	r0, #0
c0de3844:	f000 80bf 	beq.w	c0de39c6 <h_review_update_data+0x1ae>
c0de3848:	eb09 0006 	add.w	r0, r9, r6
c0de384c:	f241 0a4d 	movw	sl, #4173	@ 0x104d
c0de3850:	f241 014f 	movw	r1, #4175	@ 0x104f
c0de3854:	f810 300a 	ldrb.w	r3, [r0, sl]
c0de3858:	5c45      	ldrb	r5, [r0, r1]
c0de385a:	f243 52a9 	movw	r2, #13737	@ 0x35a9
c0de385e:	f2c0 0200 	movt	r2, #0
c0de3862:	af03      	add	r7, sp, #12
c0de3864:	447a      	add	r2, pc
c0de3866:	4638      	mov	r0, r7
c0de3868:	2114      	movs	r1, #20
c0de386a:	9500      	str	r5, [sp, #0]
c0de386c:	f002 fd2c 	bl	c0de62c8 <snprintf>
c0de3870:	4638      	mov	r0, r7
c0de3872:	f000 fcb6 	bl	c0de41e2 <zemu_log_stack>
c0de3876:	f241 084e 	movw	r8, #4174	@ 0x104e
c0de387a:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de387e:	bf00      	nop
c0de3880:	eb09 0006 	add.w	r0, r9, r6
c0de3884:	f241 0144 	movw	r1, #4164	@ 0x1044
c0de3888:	5841      	ldr	r1, [r0, r1]
c0de388a:	4440      	add	r0, r8
c0de388c:	4788      	blx	r1
c0de388e:	2803      	cmp	r0, #3
c0de3890:	f040 80a1 	bne.w	c0de39d6 <h_review_update_data+0x1be>
c0de3894:	eb09 0106 	add.w	r1, r9, r6
c0de3898:	f851 500b 	ldr.w	r5, [r1, fp]
c0de389c:	f911 000a 	ldrsb.w	r0, [r1, sl]
c0de38a0:	19ca      	adds	r2, r1, r7
c0de38a2:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
c0de38a6:	9300      	str	r3, [sp, #0]
c0de38a8:	9202      	str	r2, [sp, #8]
c0de38aa:	f101 0340 	add.w	r3, r1, #64	@ 0x40
c0de38ae:	2240      	movs	r2, #64	@ 0x40
c0de38b0:	2400      	movs	r4, #0
c0de38b2:	9401      	str	r4, [sp, #4]
c0de38b4:	47a8      	blx	r5
c0de38b6:	2803      	cmp	r0, #3
c0de38b8:	f040 808d 	bne.w	c0de39d6 <h_review_update_data+0x1be>
c0de38bc:	eb09 0506 	add.w	r5, r9, r6
c0de38c0:	2001      	movs	r0, #1
c0de38c2:	55e8      	strb	r0, [r5, r7]
c0de38c4:	eb05 0807 	add.w	r8, r5, r7
c0de38c8:	f000 f9a9 	bl	c0de3c1e <get_max_char_per_line>
c0de38cc:	f915 100a 	ldrsb.w	r1, [r5, sl]
c0de38d0:	f855 700b 	ldr.w	r7, [r5, fp]
c0de38d4:	fa1f fa80 	uxth.w	sl, r0
c0de38d8:	f04f 0c00 	mov.w	ip, #0
c0de38dc:	f105 0340 	add.w	r3, r5, #64	@ 0x40
c0de38e0:	4608      	mov	r0, r1
c0de38e2:	4629      	mov	r1, r5
c0de38e4:	2240      	movs	r2, #64	@ 0x40
c0de38e6:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de38ea:	f241 0b4d 	movw	fp, #4173	@ 0x104d
c0de38ee:	f8cd a000 	str.w	sl, [sp]
c0de38f2:	f8cd 8008 	str.w	r8, [sp, #8]
c0de38f6:	f8cd c004 	str.w	ip, [sp, #4]
c0de38fa:	47b8      	blx	r7
c0de38fc:	2803      	cmp	r0, #3
c0de38fe:	d16a      	bne.n	c0de39d6 <h_review_update_data+0x1be>
c0de3900:	eb09 0106 	add.w	r1, r9, r6
c0de3904:	5d08      	ldrb	r0, [r1, r4]
c0de3906:	f241 034f 	movw	r3, #4175	@ 0x104f
c0de390a:	5cca      	ldrb	r2, [r1, r3]
c0de390c:	b128      	cbz	r0, c0de391a <h_review_update_data+0x102>
c0de390e:	4282      	cmp	r2, r0
c0de3910:	bf82      	ittt	hi
c0de3912:	1e42      	subhi	r2, r0, #1
c0de3914:	eb09 0006 	addhi.w	r0, r9, r6
c0de3918:	54c2      	strbhi	r2, [r0, r3]
c0de391a:	eb09 0106 	add.w	r1, r9, r6
c0de391e:	f44f 5082 	mov.w	r0, #4160	@ 0x1040
c0de3922:	580f      	ldr	r7, [r1, r0]
c0de3924:	f911 000b 	ldrsb.w	r0, [r1, fp]
c0de3928:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de392c:	b2d2      	uxtb	r2, r2
c0de392e:	190d      	adds	r5, r1, r4
c0de3930:	e9cd a200 	strd	sl, r2, [sp]
c0de3934:	f101 0340 	add.w	r3, r1, #64	@ 0x40
c0de3938:	2240      	movs	r2, #64	@ 0x40
c0de393a:	9502      	str	r5, [sp, #8]
c0de393c:	47b8      	blx	r7
c0de393e:	2803      	cmp	r0, #3
c0de3940:	d149      	bne.n	c0de39d6 <h_review_update_data+0x1be>
c0de3942:	eb09 0006 	add.w	r0, r9, r6
c0de3946:	f241 084e 	movw	r8, #4174	@ 0x104e
c0de394a:	f810 1008 	ldrb.w	r1, [r0, r8]
c0de394e:	5d05      	ldrb	r5, [r0, r4]
c0de3950:	3101      	adds	r1, #1
c0de3952:	2d02      	cmp	r5, #2
c0de3954:	f241 0a4d 	movw	sl, #4173	@ 0x104d
c0de3958:	f44f 5b82 	mov.w	fp, #4160	@ 0x1040
c0de395c:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de3960:	f800 1008 	strb.w	r1, [r0, r8]
c0de3964:	d31c      	bcc.n	c0de39a0 <h_review_update_data+0x188>
c0de3966:	eb09 0006 	add.w	r0, r9, r6
c0de396a:	f003 f8f9 	bl	c0de6b60 <strlen>
c0de396e:	b2c1      	uxtb	r1, r0
c0de3970:	293f      	cmp	r1, #63	@ 0x3f
c0de3972:	d81e      	bhi.n	c0de39b2 <h_review_update_data+0x19a>
c0de3974:	eb09 0706 	add.w	r7, r9, r6
c0de3978:	f241 024f 	movw	r2, #4175	@ 0x104f
c0de397c:	5cba      	ldrb	r2, [r7, r2]
c0de397e:	1878      	adds	r0, r7, r1
c0de3980:	1c53      	adds	r3, r2, #1
c0de3982:	f243 4290 	movw	r2, #13456	@ 0x3490
c0de3986:	f2c0 0200 	movt	r2, #0
c0de398a:	f1c1 0140 	rsb	r1, r1, #64	@ 0x40
c0de398e:	447a      	add	r2, pc
c0de3990:	f241 0450 	movw	r4, #4176	@ 0x1050
c0de3994:	9500      	str	r5, [sp, #0]
c0de3996:	f002 fc97 	bl	c0de62c8 <snprintf>
c0de399a:	5d3d      	ldrb	r5, [r7, r4]
c0de399c:	f241 0750 	movw	r7, #4176	@ 0x1050
c0de39a0:	b93d      	cbnz	r5, c0de39b2 <h_review_update_data+0x19a>
c0de39a2:	f7ff fea9 	bl	c0de36f8 <h_paging_increase>
c0de39a6:	eb09 0006 	add.w	r0, r9, r6
c0de39aa:	5dc0      	ldrb	r0, [r0, r7]
c0de39ac:	2800      	cmp	r0, #0
c0de39ae:	f43f af67 	beq.w	c0de3880 <h_review_update_data+0x68>
c0de39b2:	f000 f921 	bl	c0de3bf8 <splitValueAddress>
c0de39b6:	2003      	movs	r0, #3
c0de39b8:	e00d      	b.n	c0de39d6 <h_review_update_data+0x1be>
c0de39ba:	f243 50f9 	movw	r0, #13817	@ 0x35f9
c0de39be:	f2c0 0000 	movt	r0, #0
c0de39c2:	4478      	add	r0, pc
c0de39c4:	e004      	b.n	c0de39d0 <h_review_update_data+0x1b8>
c0de39c6:	f243 70cc 	movw	r0, #14284	@ 0x37cc
c0de39ca:	f2c0 0000 	movt	r0, #0
c0de39ce:	4478      	add	r0, pc
c0de39d0:	f000 fc07 	bl	c0de41e2 <zemu_log_stack>
c0de39d4:	2005      	movs	r0, #5
c0de39d6:	b008      	add	sp, #32
c0de39d8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de39dc <view_init>:
c0de39dc:	b580      	push	{r7, lr}
c0de39de:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de39e2:	f2c0 0000 	movt	r0, #0
c0de39e6:	4448      	add	r0, r9
c0de39e8:	f44f 7188 	mov.w	r1, #272	@ 0x110
c0de39ec:	f003 f84e 	bl	c0de6a8c <__aeabi_memclr>
c0de39f0:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de39f4:	f2c0 0000 	movt	r0, #0
c0de39f8:	4448      	add	r0, r9
c0de39fa:	f241 014c 	movw	r1, #4172	@ 0x104c
c0de39fe:	2200      	movs	r2, #0
c0de3a00:	5442      	strb	r2, [r0, r1]
c0de3a02:	bd80      	pop	{r7, pc}

c0de3a04 <view_review_init>:
c0de3a04:	f245 2328 	movw	r3, #21032	@ 0x5228
c0de3a08:	f2c0 0300 	movt	r3, #0
c0de3a0c:	eb09 0c03 	add.w	ip, r9, r3
c0de3a10:	f44f 5382 	mov.w	r3, #4160	@ 0x1040
c0de3a14:	f84c 0003 	str.w	r0, [ip, r3]
c0de3a18:	f241 0044 	movw	r0, #4164	@ 0x1044
c0de3a1c:	f84c 1000 	str.w	r1, [ip, r0]
c0de3a20:	f241 0048 	movw	r0, #4168	@ 0x1048
c0de3a24:	f84c 2000 	str.w	r2, [ip, r0]
c0de3a28:	4770      	bx	lr

c0de3a2a <view_review_show>:
c0de3a2a:	f000 b938 	b.w	c0de3c9e <view_review_show_impl>

c0de3a2e <view_error_show>:
c0de3a2e:	b510      	push	{r4, lr}
c0de3a30:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3a34:	f2c0 0000 	movt	r0, #0
c0de3a38:	f243 5119 	movw	r1, #13593	@ 0x3519
c0de3a3c:	eb09 0400 	add.w	r4, r9, r0
c0de3a40:	f2c0 0100 	movt	r1, #0
c0de3a44:	4479      	add	r1, pc
c0de3a46:	4620      	mov	r0, r4
c0de3a48:	2206      	movs	r2, #6
c0de3a4a:	f003 f822 	bl	c0de6a92 <__aeabi_memcpy>
c0de3a4e:	f244 610a 	movw	r1, #17930	@ 0x460a
c0de3a52:	f2c0 0100 	movt	r1, #0
c0de3a56:	4479      	add	r1, pc
c0de3a58:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de3a5c:	c91c      	ldmia	r1!, {r2, r3, r4}
c0de3a5e:	7809      	ldrb	r1, [r1, #0]
c0de3a60:	c01c      	stmia	r0!, {r2, r3, r4}
c0de3a62:	7001      	strb	r1, [r0, #0]
c0de3a64:	f000 f8b5 	bl	c0de3bd2 <splitValueField>
c0de3a68:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3a6c:	f000 b937 	b.w	c0de3cde <view_error_show_impl>

c0de3a70 <ux_idle_flow_2_step_validateinit>:
c0de3a70:	b580      	push	{r7, lr}
c0de3a72:	f000 f953 	bl	c0de3d1c <app_mode_expert>
c0de3a76:	f080 0001 	eor.w	r0, r0, #1
c0de3a7a:	f000 f95c 	bl	c0de3d36 <app_mode_set_expert>
c0de3a7e:	f244 61be 	movw	r1, #18110	@ 0x46be
c0de3a82:	f2c0 0100 	movt	r1, #0
c0de3a86:	f244 621c 	movw	r2, #17948	@ 0x461c
c0de3a8a:	f2c0 0200 	movt	r2, #0
c0de3a8e:	4479      	add	r1, pc
c0de3a90:	447a      	add	r2, pc
c0de3a92:	2000      	movs	r0, #0
c0de3a94:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3a98:	f001 beb4 	b.w	c0de5804 <ux_flow_init>

c0de3a9c <ux_idle_flow_2_step_init>:
c0de3a9c:	b5b0      	push	{r4, r5, r7, lr}
c0de3a9e:	f244 52aa 	movw	r2, #17834	@ 0x45aa
c0de3aa2:	f2c0 0200 	movt	r2, #0
c0de3aa6:	f245 2528 	movw	r5, #21032	@ 0x5228
c0de3aaa:	447a      	add	r2, pc
c0de3aac:	f2c0 0500 	movt	r5, #0
c0de3ab0:	ca18      	ldmia	r2!, {r3, r4}
c0de3ab2:	eb09 0105 	add.w	r1, r9, r5
c0de3ab6:	3140      	adds	r1, #64	@ 0x40
c0de3ab8:	7812      	ldrb	r2, [r2, #0]
c0de3aba:	c118      	stmia	r1!, {r3, r4}
c0de3abc:	4604      	mov	r4, r0
c0de3abe:	700a      	strb	r2, [r1, #0]
c0de3ac0:	f000 f92c 	bl	c0de3d1c <app_mode_expert>
c0de3ac4:	b158      	cbz	r0, c0de3ade <ux_idle_flow_2_step_init+0x42>
c0de3ac6:	f246 516c 	movw	r1, #25964	@ 0x656c
c0de3aca:	f646 6265 	movw	r2, #28261	@ 0x6e65
c0de3ace:	eb09 0005 	add.w	r0, r9, r5
c0de3ad2:	f2c0 0164 	movt	r1, #100	@ 0x64
c0de3ad6:	f2c6 2261 	movt	r2, #25185	@ 0x6261
c0de3ada:	e9c0 2110 	strd	r2, r1, [r0, #64]	@ 0x40
c0de3ade:	4620      	mov	r0, r4
c0de3ae0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3ae4:	f001 bf60 	b.w	c0de59a8 <ux_layout_bn_init>

c0de3ae8 <ux_idle_flow_4_step_validateinit>:
c0de3ae8:	4770      	bx	lr

c0de3aea <ux_idle_flow_6_step_validateinit>:
c0de3aea:	20ff      	movs	r0, #255	@ 0xff
c0de3aec:	f002 ff3b 	bl	c0de6966 <os_sched_exit>

c0de3af0 <ux_error_flow_2_step_validateinit>:
c0de3af0:	2000      	movs	r0, #0
c0de3af2:	f7ff bd59 	b.w	c0de35a8 <h_error_accept>

c0de3af6 <ux_review_flow_2_start_step_init>:
c0de3af6:	f000 b811 	b.w	c0de3b1c <h_review_loop_start>

c0de3afa <ux_review_flow_2_step_init>:
c0de3afa:	f246 217c 	movw	r1, #25212	@ 0x627c
c0de3afe:	f2c0 0100 	movt	r1, #0
c0de3b02:	2201      	movs	r2, #1
c0de3b04:	f809 2001 	strb.w	r2, [r9, r1]
c0de3b08:	f002 b920 	b.w	c0de5d4c <ux_layout_bn_paging_init>

c0de3b0c <ux_review_flow_2_end_step_init>:
c0de3b0c:	f000 b829 	b.w	c0de3b62 <h_review_loop_end>

c0de3b10 <ux_review_flow_3_step_validateinit>:
c0de3b10:	2000      	movs	r0, #0
c0de3b12:	f7ff bc1d 	b.w	c0de3350 <h_approve>

c0de3b16 <ux_review_flow_4_step_validateinit>:
c0de3b16:	2000      	movs	r0, #0
c0de3b18:	f7ff bcac 	b.w	c0de3474 <h_reject>

c0de3b1c <h_review_loop_start>:
c0de3b1c:	b510      	push	{r4, lr}
c0de3b1e:	f246 247c 	movw	r4, #25212	@ 0x627c
c0de3b22:	f2c0 0400 	movt	r4, #0
c0de3b26:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de3b2a:	b128      	cbz	r0, c0de3b38 <h_review_loop_start+0x1c>
c0de3b2c:	f7ff fe13 	bl	c0de3756 <h_paging_can_decrease>
c0de3b30:	b180      	cbz	r0, c0de3b54 <h_review_loop_start+0x38>
c0de3b32:	f7ff fe30 	bl	c0de3796 <h_paging_decrease>
c0de3b36:	e001      	b.n	c0de3b3c <h_review_loop_start+0x20>
c0de3b38:	f7ff fdc4 	bl	c0de36c4 <h_paging_init>
c0de3b3c:	f7ff fe6c 	bl	c0de3818 <h_review_update_data>
c0de3b40:	2803      	cmp	r0, #3
c0de3b42:	d003      	beq.n	c0de3b4c <h_review_loop_start+0x30>
c0de3b44:	2805      	cmp	r0, #5
c0de3b46:	d001      	beq.n	c0de3b4c <h_review_loop_start+0x30>
c0de3b48:	f7ff ff71 	bl	c0de3a2e <view_error_show>
c0de3b4c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3b50:	f001 bd5b 	b.w	c0de560a <ux_flow_next>
c0de3b54:	2000      	movs	r0, #0
c0de3b56:	f809 0004 	strb.w	r0, [r9, r4]
c0de3b5a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3b5e:	f001 bd57 	b.w	c0de5610 <ux_flow_prev>

c0de3b62 <h_review_loop_end>:
c0de3b62:	b510      	push	{r4, lr}
c0de3b64:	f246 247c 	movw	r4, #25212	@ 0x627c
c0de3b68:	f2c0 0400 	movt	r4, #0
c0de3b6c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de3b70:	b150      	cbz	r0, c0de3b88 <h_review_loop_end+0x26>
c0de3b72:	f7ff fdc1 	bl	c0de36f8 <h_paging_increase>
c0de3b76:	f7ff fe4f 	bl	c0de3818 <h_review_update_data>
c0de3b7a:	2805      	cmp	r0, #5
c0de3b7c:	d022      	beq.n	c0de3bc4 <h_review_loop_end+0x62>
c0de3b7e:	2803      	cmp	r0, #3
c0de3b80:	d10a      	bne.n	c0de3b98 <h_review_loop_end+0x36>
c0de3b82:	f002 f8d8 	bl	c0de5d36 <ux_layout_paging_reset>
c0de3b86:	e009      	b.n	c0de3b9c <h_review_loop_end+0x3a>
c0de3b88:	f7ff fe05 	bl	c0de3796 <h_paging_decrease>
c0de3b8c:	f7ff fe44 	bl	c0de3818 <h_review_update_data>
c0de3b90:	2803      	cmp	r0, #3
c0de3b92:	d003      	beq.n	c0de3b9c <h_review_loop_end+0x3a>
c0de3b94:	2805      	cmp	r0, #5
c0de3b96:	d001      	beq.n	c0de3b9c <h_review_loop_end+0x3a>
c0de3b98:	f7ff ff49 	bl	c0de3a2e <view_error_show>
c0de3b9c:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3ba0:	f2c0 0000 	movt	r0, #0
c0de3ba4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de3ba8:	4448      	add	r0, r9
c0de3baa:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de3bae:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de3bb2:	8a81      	ldrh	r1, [r0, #20]
c0de3bb4:	1e8a      	subs	r2, r1, #2
c0de3bb6:	3901      	subs	r1, #1
c0de3bb8:	82c2      	strh	r2, [r0, #22]
c0de3bba:	8281      	strh	r1, [r0, #20]
c0de3bbc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3bc0:	f001 beab 	b.w	c0de591a <ux_flow_relayout>
c0de3bc4:	2000      	movs	r0, #0
c0de3bc6:	f809 0004 	strb.w	r0, [r9, r4]
c0de3bca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3bce:	f001 bd1c 	b.w	c0de560a <ux_flow_next>

c0de3bd2 <splitValueField>:
c0de3bd2:	b510      	push	{r4, lr}
c0de3bd4:	f245 2428 	movw	r4, #21032	@ 0x5228
c0de3bd8:	f2c0 0400 	movt	r4, #0
c0de3bdc:	eb09 0004 	add.w	r0, r9, r4
c0de3be0:	3040      	adds	r0, #64	@ 0x40
c0de3be2:	f002 ffbd 	bl	c0de6b60 <strlen>
c0de3be6:	0400      	lsls	r0, r0, #16
c0de3be8:	bf18      	it	ne
c0de3bea:	bd10      	popne	{r4, pc}
c0de3bec:	eb09 0004 	add.w	r0, r9, r4
c0de3bf0:	2120      	movs	r1, #32
c0de3bf2:	f8a0 1040 	strh.w	r1, [r0, #64]	@ 0x40
c0de3bf6:	bd10      	pop	{r4, pc}

c0de3bf8 <splitValueAddress>:
c0de3bf8:	b510      	push	{r4, lr}
c0de3bfa:	f245 2428 	movw	r4, #21032	@ 0x5228
c0de3bfe:	f2c0 0400 	movt	r4, #0
c0de3c02:	eb09 0004 	add.w	r0, r9, r4
c0de3c06:	3040      	adds	r0, #64	@ 0x40
c0de3c08:	f002 ffaa 	bl	c0de6b60 <strlen>
c0de3c0c:	0400      	lsls	r0, r0, #16
c0de3c0e:	bf18      	it	ne
c0de3c10:	bd10      	popne	{r4, pc}
c0de3c12:	eb09 0004 	add.w	r0, r9, r4
c0de3c16:	2120      	movs	r1, #32
c0de3c18:	f8a0 1040 	strh.w	r1, [r0, #64]	@ 0x40
c0de3c1c:	bd10      	pop	{r4, pc}

c0de3c1e <get_max_char_per_line>:
c0de3c1e:	f44f 5080 	mov.w	r0, #4096	@ 0x1000
c0de3c22:	4770      	bx	lr

c0de3c24 <view_idle_show_impl>:
c0de3c24:	b580      	push	{r7, lr}
c0de3c26:	b171      	cbz	r1, c0de3c46 <view_idle_show_impl+0x22>
c0de3c28:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3c2c:	f243 1277 	movw	r2, #12663	@ 0x3177
c0de3c30:	f2c0 0000 	movt	r0, #0
c0de3c34:	f2c0 0200 	movt	r2, #0
c0de3c38:	460b      	mov	r3, r1
c0de3c3a:	4448      	add	r0, r9
c0de3c3c:	447a      	add	r2, pc
c0de3c3e:	2140      	movs	r1, #64	@ 0x40
c0de3c40:	f002 fb42 	bl	c0de62c8 <snprintf>
c0de3c44:	e017      	b.n	c0de3c76 <view_idle_show_impl+0x52>
c0de3c46:	f000 f887 	bl	c0de3d58 <app_mode_secret>
c0de3c4a:	b138      	cbz	r0, c0de3c5c <view_idle_show_impl+0x38>
c0de3c4c:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3c50:	f2c0 0000 	movt	r0, #0
c0de3c54:	213f      	movs	r1, #63	@ 0x3f
c0de3c56:	f829 1000 	strh.w	r1, [r9, r0]
c0de3c5a:	e00c      	b.n	c0de3c76 <view_idle_show_impl+0x52>
c0de3c5c:	f245 2028 	movw	r0, #21032	@ 0x5228
c0de3c60:	f243 2144 	movw	r1, #12868	@ 0x3244
c0de3c64:	f2c0 0000 	movt	r0, #0
c0de3c68:	f2c0 0100 	movt	r1, #0
c0de3c6c:	4448      	add	r0, r9
c0de3c6e:	4479      	add	r1, pc
c0de3c70:	2206      	movs	r2, #6
c0de3c72:	f002 ff0e 	bl	c0de6a92 <__aeabi_memcpy>
c0de3c76:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3c7a:	f2c0 0000 	movt	r0, #0
c0de3c7e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3c82:	b908      	cbnz	r0, c0de3c88 <view_idle_show_impl+0x64>
c0de3c84:	f002 fa19 	bl	c0de60ba <ux_stack_push>
c0de3c88:	f244 41bc 	movw	r1, #17596	@ 0x44bc
c0de3c8c:	f2c0 0100 	movt	r1, #0
c0de3c90:	4479      	add	r1, pc
c0de3c92:	2000      	movs	r0, #0
c0de3c94:	2200      	movs	r2, #0
c0de3c96:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3c9a:	f001 bdb3 	b.w	c0de5804 <ux_flow_init>

c0de3c9e <view_review_show_impl>:
c0de3c9e:	b580      	push	{r7, lr}
c0de3ca0:	f7ff fd10 	bl	c0de36c4 <h_paging_init>
c0de3ca4:	f7ff fd77 	bl	c0de3796 <h_paging_decrease>
c0de3ca8:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de3cac:	f2c0 0100 	movt	r1, #0
c0de3cb0:	f819 1001 	ldrb.w	r1, [r9, r1]
c0de3cb4:	f246 207c 	movw	r0, #25212	@ 0x627c
c0de3cb8:	f2c0 0000 	movt	r0, #0
c0de3cbc:	2200      	movs	r2, #0
c0de3cbe:	f809 2000 	strb.w	r2, [r9, r0]
c0de3cc2:	b909      	cbnz	r1, c0de3cc8 <view_review_show_impl+0x2a>
c0de3cc4:	f002 f9f9 	bl	c0de60ba <ux_stack_push>
c0de3cc8:	f244 51a0 	movw	r1, #17824	@ 0x45a0
c0de3ccc:	f2c0 0100 	movt	r1, #0
c0de3cd0:	4479      	add	r1, pc
c0de3cd2:	2000      	movs	r0, #0
c0de3cd4:	2200      	movs	r2, #0
c0de3cd6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3cda:	f001 bd93 	b.w	c0de5804 <ux_flow_init>

c0de3cde <view_error_show_impl>:
c0de3cde:	b580      	push	{r7, lr}
c0de3ce0:	f002 f829 	bl	c0de5d36 <ux_layout_paging_reset>
c0de3ce4:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de3ce8:	f2c0 0000 	movt	r0, #0
c0de3cec:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3cf0:	b908      	cbnz	r0, c0de3cf6 <view_error_show_impl+0x18>
c0de3cf2:	f002 f9e2 	bl	c0de60ba <ux_stack_push>
c0de3cf6:	f244 41b2 	movw	r1, #17586	@ 0x44b2
c0de3cfa:	f2c0 0100 	movt	r1, #0
c0de3cfe:	4479      	add	r1, pc
c0de3d00:	2000      	movs	r0, #0
c0de3d02:	2200      	movs	r2, #0
c0de3d04:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3d08:	f001 bd7c 	b.w	c0de5804 <ux_flow_init>

c0de3d0c <app_mode_reset>:
c0de3d0c:	f246 309c 	movw	r0, #25500	@ 0x639c
c0de3d10:	f2c0 0000 	movt	r0, #0
c0de3d14:	2100      	movs	r1, #0
c0de3d16:	f809 1000 	strb.w	r1, [r9, r0]
c0de3d1a:	4770      	bx	lr

c0de3d1c <app_mode_expert>:
c0de3d1c:	b580      	push	{r7, lr}
c0de3d1e:	f249 40d6 	movw	r0, #38102	@ 0x94d6
c0de3d22:	f2c0 0000 	movt	r0, #0
c0de3d26:	4478      	add	r0, pc
c0de3d28:	f002 fd80 	bl	c0de682c <pic>
c0de3d2c:	7800      	ldrb	r0, [r0, #0]
c0de3d2e:	2800      	cmp	r0, #0
c0de3d30:	bf18      	it	ne
c0de3d32:	2001      	movne	r0, #1
c0de3d34:	bd80      	pop	{r7, pc}

c0de3d36 <app_mode_set_expert>:
c0de3d36:	b580      	push	{r7, lr}
c0de3d38:	b082      	sub	sp, #8
c0de3d3a:	f88d 0004 	strb.w	r0, [sp, #4]
c0de3d3e:	f249 40b6 	movw	r0, #38070	@ 0x94b6
c0de3d42:	f2c0 0000 	movt	r0, #0
c0de3d46:	4478      	add	r0, pc
c0de3d48:	f002 fd70 	bl	c0de682c <pic>
c0de3d4c:	a901      	add	r1, sp, #4
c0de3d4e:	2201      	movs	r2, #1
c0de3d50:	f002 fd99 	bl	c0de6886 <nvm_write>
c0de3d54:	b002      	add	sp, #8
c0de3d56:	bd80      	pop	{r7, pc}

c0de3d58 <app_mode_secret>:
c0de3d58:	f246 309c 	movw	r0, #25500	@ 0x639c
c0de3d5c:	f2c0 0000 	movt	r0, #0
c0de3d60:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de3d64:	2800      	cmp	r0, #0
c0de3d66:	bf18      	it	ne
c0de3d68:	2001      	movne	r0, #1
c0de3d6a:	4770      	bx	lr

c0de3d6c <bech32EncodeFromBytes>:
c0de3d6c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d70:	b0a4      	sub	sp, #144	@ 0x90
c0de3d72:	9f2c      	ldr	r7, [sp, #176]	@ 0xb0
c0de3d74:	469a      	mov	sl, r3
c0de3d76:	4614      	mov	r4, r2
c0de3d78:	460e      	mov	r6, r1
c0de3d7a:	4605      	mov	r5, r0
c0de3d7c:	f002 fe92 	bl	c0de6aa4 <explicit_bzero>
c0de3d80:	2f40      	cmp	r7, #64	@ 0x40
c0de3d82:	d82c      	bhi.n	c0de3dde <bech32EncodeFromBytes+0x72>
c0de3d84:	4620      	mov	r0, r4
c0de3d86:	f002 feeb 	bl	c0de6b60 <strlen>
c0de3d8a:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de3d8e:	3007      	adds	r0, #7
c0de3d90:	42b0      	cmp	r0, r6
c0de3d92:	d901      	bls.n	c0de3d98 <bech32EncodeFromBytes+0x2c>
c0de3d94:	2006      	movs	r0, #6
c0de3d96:	e023      	b.n	c0de3de0 <bech32EncodeFromBytes+0x74>
c0de3d98:	2000      	movs	r0, #0
c0de3d9a:	f10d 0810 	add.w	r8, sp, #16
c0de3d9e:	f8dd b0b4 	ldr.w	fp, [sp, #180]	@ 0xb4
c0de3da2:	9003      	str	r0, [sp, #12]
c0de3da4:	4640      	mov	r0, r8
c0de3da6:	2180      	movs	r1, #128	@ 0x80
c0de3da8:	f002 fe7c 	bl	c0de6aa4 <explicit_bzero>
c0de3dac:	2008      	movs	r0, #8
c0de3dae:	e9cd 7000 	strd	r7, r0, [sp]
c0de3db2:	a903      	add	r1, sp, #12
c0de3db4:	4640      	mov	r0, r8
c0de3db6:	2205      	movs	r2, #5
c0de3db8:	4653      	mov	r3, sl
c0de3dba:	f8cd b008 	str.w	fp, [sp, #8]
c0de3dbe:	f000 f959 	bl	c0de4074 <convert_bits>
c0de3dc2:	9b03      	ldr	r3, [sp, #12]
c0de3dc4:	42b3      	cmp	r3, r6
c0de3dc6:	d20a      	bcs.n	c0de3dde <bech32EncodeFromBytes+0x72>
c0de3dc8:	aa04      	add	r2, sp, #16
c0de3dca:	4628      	mov	r0, r5
c0de3dcc:	4621      	mov	r1, r4
c0de3dce:	f000 f8d7 	bl	c0de3f80 <bech32_encode>
c0de3dd2:	4601      	mov	r1, r0
c0de3dd4:	2003      	movs	r0, #3
c0de3dd6:	2900      	cmp	r1, #0
c0de3dd8:	bf08      	it	eq
c0de3dda:	200a      	moveq	r0, #10
c0de3ddc:	e000      	b.n	c0de3de0 <bech32EncodeFromBytes+0x74>
c0de3dde:	2009      	movs	r0, #9
c0de3de0:	b024      	add	sp, #144	@ 0x90
c0de3de2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3de6 <buffering_init>:
c0de3de6:	f246 3ca0 	movw	ip, #25504	@ 0x63a0
c0de3dea:	f2c0 0c00 	movt	ip, #0
c0de3dee:	f849 000c 	str.w	r0, [r9, ip]
c0de3df2:	eb09 000c 	add.w	r0, r9, ip
c0de3df6:	8081      	strh	r1, [r0, #4]
c0de3df8:	7a01      	ldrb	r1, [r0, #8]
c0de3dfa:	f04f 0c00 	mov.w	ip, #0
c0de3dfe:	f041 0101 	orr.w	r1, r1, #1
c0de3e02:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de3e06:	7201      	strb	r1, [r0, #8]
c0de3e08:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3e0c:	f2c0 0000 	movt	r0, #0
c0de3e10:	f849 2000 	str.w	r2, [r9, r0]
c0de3e14:	4448      	add	r0, r9
c0de3e16:	7a01      	ldrb	r1, [r0, #8]
c0de3e18:	8083      	strh	r3, [r0, #4]
c0de3e1a:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de3e1e:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de3e22:	7201      	strb	r1, [r0, #8]
c0de3e24:	4770      	bx	lr

c0de3e26 <buffering_reset>:
c0de3e26:	f246 30a0 	movw	r0, #25504	@ 0x63a0
c0de3e2a:	f2c0 0000 	movt	r0, #0
c0de3e2e:	4448      	add	r0, r9
c0de3e30:	7a02      	ldrb	r2, [r0, #8]
c0de3e32:	2100      	movs	r1, #0
c0de3e34:	f042 0201 	orr.w	r2, r2, #1
c0de3e38:	80c1      	strh	r1, [r0, #6]
c0de3e3a:	7202      	strb	r2, [r0, #8]
c0de3e3c:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3e40:	f2c0 0000 	movt	r0, #0
c0de3e44:	4448      	add	r0, r9
c0de3e46:	7a02      	ldrb	r2, [r0, #8]
c0de3e48:	80c1      	strh	r1, [r0, #6]
c0de3e4a:	f002 01fe 	and.w	r1, r2, #254	@ 0xfe
c0de3e4e:	7201      	strb	r1, [r0, #8]
c0de3e50:	4770      	bx	lr

c0de3e52 <buffering_append>:
c0de3e52:	b570      	push	{r4, r5, r6, lr}
c0de3e54:	f246 36a0 	movw	r6, #25504	@ 0x63a0
c0de3e58:	f2c0 0600 	movt	r6, #0
c0de3e5c:	eb09 0206 	add.w	r2, r9, r6
c0de3e60:	7a12      	ldrb	r2, [r2, #8]
c0de3e62:	460c      	mov	r4, r1
c0de3e64:	07d1      	lsls	r1, r2, #31
c0de3e66:	4605      	mov	r5, r0
c0de3e68:	d10c      	bne.n	c0de3e84 <buffering_append+0x32>
c0de3e6a:	f246 30ac 	movw	r0, #25516	@ 0x63ac
c0de3e6e:	f2c0 0000 	movt	r0, #0
c0de3e72:	eb09 0100 	add.w	r1, r9, r0
c0de3e76:	888a      	ldrh	r2, [r1, #4]
c0de3e78:	88c9      	ldrh	r1, [r1, #6]
c0de3e7a:	1a52      	subs	r2, r2, r1
c0de3e7c:	42a2      	cmp	r2, r4
c0de3e7e:	da25      	bge.n	c0de3ecc <buffering_append+0x7a>
c0de3e80:	2400      	movs	r4, #0
c0de3e82:	e038      	b.n	c0de3ef6 <buffering_append+0xa4>
c0de3e84:	eb09 0006 	add.w	r0, r9, r6
c0de3e88:	8883      	ldrh	r3, [r0, #4]
c0de3e8a:	88c1      	ldrh	r1, [r0, #6]
c0de3e8c:	1a58      	subs	r0, r3, r1
c0de3e8e:	42a0      	cmp	r0, r4
c0de3e90:	da26      	bge.n	c0de3ee0 <buffering_append+0x8e>
c0de3e92:	f246 33ac 	movw	r3, #25516	@ 0x63ac
c0de3e96:	f2c0 0300 	movt	r3, #0
c0de3e9a:	444b      	add	r3, r9
c0de3e9c:	7a18      	ldrb	r0, [r3, #8]
c0de3e9e:	f002 0cfe 	and.w	ip, r2, #254	@ 0xfe
c0de3ea2:	eb09 0206 	add.w	r2, r9, r6
c0de3ea6:	f040 0001 	orr.w	r0, r0, #1
c0de3eaa:	f882 c008 	strb.w	ip, [r2, #8]
c0de3eae:	7218      	strb	r0, [r3, #8]
c0de3eb0:	b119      	cbz	r1, c0de3eba <buffering_append+0x68>
c0de3eb2:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3eb6:	f7ff ffcc 	bl	c0de3e52 <buffering_append>
c0de3eba:	4628      	mov	r0, r5
c0de3ebc:	4621      	mov	r1, r4
c0de3ebe:	f7ff ffc8 	bl	c0de3e52 <buffering_append>
c0de3ec2:	eb09 0106 	add.w	r1, r9, r6
c0de3ec6:	2200      	movs	r2, #0
c0de3ec8:	80ca      	strh	r2, [r1, #6]
c0de3eca:	bd70      	pop	{r4, r5, r6, pc}
c0de3ecc:	f859 2000 	ldr.w	r2, [r9, r0]
c0de3ed0:	eb09 0600 	add.w	r6, r9, r0
c0de3ed4:	1850      	adds	r0, r2, r1
c0de3ed6:	4629      	mov	r1, r5
c0de3ed8:	4622      	mov	r2, r4
c0de3eda:	f002 fcd4 	bl	c0de6886 <nvm_write>
c0de3ede:	e007      	b.n	c0de3ef0 <buffering_append+0x9e>
c0de3ee0:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3ee4:	4622      	mov	r2, r4
c0de3ee6:	4408      	add	r0, r1
c0de3ee8:	4629      	mov	r1, r5
c0de3eea:	444e      	add	r6, r9
c0de3eec:	f002 fdd3 	bl	c0de6a96 <__aeabi_memmove>
c0de3ef0:	88f0      	ldrh	r0, [r6, #6]
c0de3ef2:	4420      	add	r0, r4
c0de3ef4:	80f0      	strh	r0, [r6, #6]
c0de3ef6:	4620      	mov	r0, r4
c0de3ef8:	bd70      	pop	{r4, r5, r6, pc}

c0de3efa <buffering_get_buffer>:
c0de3efa:	f246 30a0 	movw	r0, #25504	@ 0x63a0
c0de3efe:	f2c0 0000 	movt	r0, #0
c0de3f02:	4448      	add	r0, r9
c0de3f04:	7a01      	ldrb	r1, [r0, #8]
c0de3f06:	f246 32ac 	movw	r2, #25516	@ 0x63ac
c0de3f0a:	f2c0 0200 	movt	r2, #0
c0de3f0e:	07c9      	lsls	r1, r1, #31
c0de3f10:	bf08      	it	eq
c0de3f12:	eb09 0002 	addeq.w	r0, r9, r2
c0de3f16:	4770      	bx	lr

c0de3f18 <bech32_polymod_step>:
c0de3f18:	f64f 71e0 	movw	r1, #65504	@ 0xffe0
c0de3f1c:	f3c0 6240 	ubfx	r2, r0, #25, #1
c0de3f20:	f245 73b2 	movw	r3, #22450	@ 0x57b2
c0de3f24:	f6c3 71ff 	movt	r1, #16383	@ 0x3fff
c0de3f28:	4252      	negs	r2, r2
c0de3f2a:	f6c3 336a 	movt	r3, #15210	@ 0x3b6a
c0de3f2e:	ea01 1140 	and.w	r1, r1, r0, lsl #5
c0de3f32:	401a      	ands	r2, r3
c0de3f34:	4051      	eors	r1, r2
c0de3f36:	f3c0 6280 	ubfx	r2, r0, #26, #1
c0de3f3a:	f648 636d 	movw	r3, #36461	@ 0x8e6d
c0de3f3e:	4252      	negs	r2, r2
c0de3f40:	f2c2 6350 	movt	r3, #9808	@ 0x2650
c0de3f44:	401a      	ands	r2, r3
c0de3f46:	4051      	eors	r1, r2
c0de3f48:	f3c0 62c0 	ubfx	r2, r0, #27, #1
c0de3f4c:	f641 13fa 	movw	r3, #6650	@ 0x19fa
c0de3f50:	4252      	negs	r2, r2
c0de3f52:	f6c1 63a1 	movt	r3, #7841	@ 0x1ea1
c0de3f56:	401a      	ands	r2, r3
c0de3f58:	4051      	eors	r1, r2
c0de3f5a:	f3c0 7200 	ubfx	r2, r0, #28, #1
c0de3f5e:	f243 33dd 	movw	r3, #13277	@ 0x33dd
c0de3f62:	4252      	negs	r2, r2
c0de3f64:	f6c3 5342 	movt	r3, #15682	@ 0x3d42
c0de3f68:	401a      	ands	r2, r3
c0de3f6a:	4051      	eors	r1, r2
c0de3f6c:	f3c0 7040 	ubfx	r0, r0, #29, #1
c0de3f70:	f246 22b3 	movw	r2, #25267	@ 0x62b3
c0de3f74:	4240      	negs	r0, r0
c0de3f76:	f6c2 2214 	movt	r2, #10772	@ 0x2a14
c0de3f7a:	4010      	ands	r0, r2
c0de3f7c:	4048      	eors	r0, r1
c0de3f7e:	4770      	bx	lr

c0de3f80 <bech32_encode>:
c0de3f80:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f84:	b082      	sub	sp, #8
c0de3f86:	f891 8000 	ldrb.w	r8, [r1]
c0de3f8a:	469a      	mov	sl, r3
c0de3f8c:	4693      	mov	fp, r2
c0de3f8e:	f1b8 0f00 	cmp.w	r8, #0
c0de3f92:	4604      	mov	r4, r0
c0de3f94:	9101      	str	r1, [sp, #4]
c0de3f96:	d018      	beq.n	c0de3fca <bech32_encode+0x4a>
c0de3f98:	1c4d      	adds	r5, r1, #1
c0de3f9a:	2001      	movs	r0, #1
c0de3f9c:	2600      	movs	r6, #0
c0de3f9e:	4647      	mov	r7, r8
c0de3fa0:	f1a7 017f 	sub.w	r1, r7, #127	@ 0x7f
c0de3fa4:	f111 0f5e 	cmn.w	r1, #94	@ 0x5e
c0de3fa8:	f04f 0100 	mov.w	r1, #0
c0de3fac:	d35d      	bcc.n	c0de406a <bech32_encode+0xea>
c0de3fae:	f1a7 0241 	sub.w	r2, r7, #65	@ 0x41
c0de3fb2:	2a1a      	cmp	r2, #26
c0de3fb4:	d359      	bcc.n	c0de406a <bech32_encode+0xea>
c0de3fb6:	f7ff ffaf 	bl	c0de3f18 <bech32_polymod_step>
c0de3fba:	ea80 1057 	eor.w	r0, r0, r7, lsr #5
c0de3fbe:	5daf      	ldrb	r7, [r5, r6]
c0de3fc0:	1c71      	adds	r1, r6, #1
c0de3fc2:	2f00      	cmp	r7, #0
c0de3fc4:	460e      	mov	r6, r1
c0de3fc6:	d1eb      	bne.n	c0de3fa0 <bech32_encode+0x20>
c0de3fc8:	e001      	b.n	c0de3fce <bech32_encode+0x4e>
c0de3fca:	2100      	movs	r1, #0
c0de3fcc:	2001      	movs	r0, #1
c0de3fce:	4451      	add	r1, sl
c0de3fd0:	3107      	adds	r1, #7
c0de3fd2:	295a      	cmp	r1, #90	@ 0x5a
c0de3fd4:	d901      	bls.n	c0de3fda <bech32_encode+0x5a>
c0de3fd6:	2100      	movs	r1, #0
c0de3fd8:	e047      	b.n	c0de406a <bech32_encode+0xea>
c0de3fda:	f7ff ff9d 	bl	c0de3f18 <bech32_polymod_step>
c0de3fde:	f1b8 0f00 	cmp.w	r8, #0
c0de3fe2:	d00d      	beq.n	c0de4000 <bech32_encode+0x80>
c0de3fe4:	9901      	ldr	r1, [sp, #4]
c0de3fe6:	1c4d      	adds	r5, r1, #1
c0de3fe8:	f7ff ff96 	bl	c0de3f18 <bech32_polymod_step>
c0de3fec:	f804 8b01 	strb.w	r8, [r4], #1
c0de3ff0:	f008 011f 	and.w	r1, r8, #31
c0de3ff4:	f815 8b01 	ldrb.w	r8, [r5], #1
c0de3ff8:	4048      	eors	r0, r1
c0de3ffa:	f1b8 0f00 	cmp.w	r8, #0
c0de3ffe:	d1f3      	bne.n	c0de3fe8 <bech32_encode+0x68>
c0de4000:	2131      	movs	r1, #49	@ 0x31
c0de4002:	f1ba 0f00 	cmp.w	sl, #0
c0de4006:	f804 1b01 	strb.w	r1, [r4], #1
c0de400a:	d014      	beq.n	c0de4036 <bech32_encode+0xb6>
c0de400c:	f642 65d9 	movw	r5, #11993	@ 0x2ed9
c0de4010:	f2c0 0500 	movt	r5, #0
c0de4014:	447d      	add	r5, pc
c0de4016:	bf00      	nop
c0de4018:	f89b 6000 	ldrb.w	r6, [fp]
c0de401c:	2e1f      	cmp	r6, #31
c0de401e:	d8da      	bhi.n	c0de3fd6 <bech32_encode+0x56>
c0de4020:	f7ff ff7a 	bl	c0de3f18 <bech32_polymod_step>
c0de4024:	5da9      	ldrb	r1, [r5, r6]
c0de4026:	4070      	eors	r0, r6
c0de4028:	f10b 0b01 	add.w	fp, fp, #1
c0de402c:	f1ba 0a01 	subs.w	sl, sl, #1
c0de4030:	f804 1b01 	strb.w	r1, [r4], #1
c0de4034:	d1f0      	bne.n	c0de4018 <bech32_encode+0x98>
c0de4036:	2506      	movs	r5, #6
c0de4038:	f7ff ff6e 	bl	c0de3f18 <bech32_polymod_step>
c0de403c:	3d01      	subs	r5, #1
c0de403e:	d1fb      	bne.n	c0de4038 <bech32_encode+0xb8>
c0de4040:	f642 629f 	movw	r2, #11935	@ 0x2e9f
c0de4044:	f2c0 0200 	movt	r2, #0
c0de4048:	f080 0001 	eor.w	r0, r0, #1
c0de404c:	2119      	movs	r1, #25
c0de404e:	447a      	add	r2, pc
c0de4050:	fa20 f301 	lsr.w	r3, r0, r1
c0de4054:	f003 031f 	and.w	r3, r3, #31
c0de4058:	5cd3      	ldrb	r3, [r2, r3]
c0de405a:	3905      	subs	r1, #5
c0de405c:	1d4f      	adds	r7, r1, #5
c0de405e:	f804 3b01 	strb.w	r3, [r4], #1
c0de4062:	d1f5      	bne.n	c0de4050 <bech32_encode+0xd0>
c0de4064:	2000      	movs	r0, #0
c0de4066:	2101      	movs	r1, #1
c0de4068:	7020      	strb	r0, [r4, #0]
c0de406a:	4608      	mov	r0, r1
c0de406c:	b002      	add	sp, #8
c0de406e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de4074 <convert_bits>:
c0de4074:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4078:	e9dd ae08 	ldrd	sl, lr, [sp, #32]
c0de407c:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
c0de4080:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4082:	4097      	lsls	r7, r2
c0de4084:	f1ba 0f00 	cmp.w	sl, #0
c0de4088:	ea6f 0c07 	mvn.w	ip, r7
c0de408c:	d02d      	beq.n	c0de40ea <convert_bits+0x76>
c0de408e:	f1c2 0800 	rsb	r8, r2, #0
c0de4092:	2600      	movs	r6, #0
c0de4094:	f04f 0b00 	mov.w	fp, #0
c0de4098:	f813 7b01 	ldrb.w	r7, [r3], #1
c0de409c:	fa0b fb0e 	lsl.w	fp, fp, lr
c0de40a0:	eb06 040e 	add.w	r4, r6, lr
c0de40a4:	4294      	cmp	r4, r2
c0de40a6:	ea4b 0b07 	orr.w	fp, fp, r7
c0de40aa:	da01      	bge.n	c0de40b0 <convert_bits+0x3c>
c0de40ac:	4626      	mov	r6, r4
c0de40ae:	e00c      	b.n	c0de40ca <convert_bits+0x56>
c0de40b0:	1aa6      	subs	r6, r4, r2
c0de40b2:	4444      	add	r4, r8
c0de40b4:	680d      	ldr	r5, [r1, #0]
c0de40b6:	fa2b f404 	lsr.w	r4, fp, r4
c0de40ba:	ea04 040c 	and.w	r4, r4, ip
c0de40be:	1c6f      	adds	r7, r5, #1
c0de40c0:	600f      	str	r7, [r1, #0]
c0de40c2:	5544      	strb	r4, [r0, r5]
c0de40c4:	4296      	cmp	r6, r2
c0de40c6:	4634      	mov	r4, r6
c0de40c8:	daf2      	bge.n	c0de40b0 <convert_bits+0x3c>
c0de40ca:	f1ba 0a01 	subs.w	sl, sl, #1
c0de40ce:	d1e3      	bne.n	c0de4098 <convert_bits+0x24>
c0de40d0:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
c0de40d2:	b173      	cbz	r3, c0de40f2 <convert_bits+0x7e>
c0de40d4:	b1ce      	cbz	r6, c0de410a <convert_bits+0x96>
c0de40d6:	1b92      	subs	r2, r2, r6
c0de40d8:	680b      	ldr	r3, [r1, #0]
c0de40da:	fa0b f202 	lsl.w	r2, fp, r2
c0de40de:	ea02 020c 	and.w	r2, r2, ip
c0de40e2:	1c5f      	adds	r7, r3, #1
c0de40e4:	600f      	str	r7, [r1, #0]
c0de40e6:	54c2      	strb	r2, [r0, r3]
c0de40e8:	e00f      	b.n	c0de410a <convert_bits+0x96>
c0de40ea:	b974      	cbnz	r4, c0de410a <convert_bits+0x96>
c0de40ec:	2600      	movs	r6, #0
c0de40ee:	f04f 0b00 	mov.w	fp, #0
c0de40f2:	1b90      	subs	r0, r2, r6
c0de40f4:	fa0b f000 	lsl.w	r0, fp, r0
c0de40f8:	ea10 0f0c 	tst.w	r0, ip
c0de40fc:	f04f 0000 	mov.w	r0, #0
c0de4100:	d104      	bne.n	c0de410c <convert_bits+0x98>
c0de4102:	4576      	cmp	r6, lr
c0de4104:	bfa8      	it	ge
c0de4106:	e8bd 8df0 	ldmiage.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de410a:	2001      	movs	r0, #1
c0de410c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de4110 <z_str3join>:
c0de4110:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4114:	469a      	mov	sl, r3
c0de4116:	4690      	mov	r8, r2
c0de4118:	4683      	mov	fp, r0
c0de411a:	460d      	mov	r5, r1
c0de411c:	b138      	cbz	r0, c0de412e <z_str3join+0x1e>
c0de411e:	4658      	mov	r0, fp
c0de4120:	f002 fd1e 	bl	c0de6b60 <strlen>
c0de4124:	4606      	mov	r6, r0
c0de4126:	42a8      	cmp	r0, r5
c0de4128:	bf28      	it	cs
c0de412a:	462e      	movcs	r6, r5
c0de412c:	e000      	b.n	c0de4130 <z_str3join+0x20>
c0de412e:	2600      	movs	r6, #0
c0de4130:	f1b8 0f00 	cmp.w	r8, #0
c0de4134:	d007      	beq.n	c0de4146 <z_str3join+0x36>
c0de4136:	4640      	mov	r0, r8
c0de4138:	f002 fd12 	bl	c0de6b60 <strlen>
c0de413c:	4607      	mov	r7, r0
c0de413e:	42a8      	cmp	r0, r5
c0de4140:	bf28      	it	cs
c0de4142:	462f      	movcs	r7, r5
c0de4144:	e000      	b.n	c0de4148 <z_str3join+0x38>
c0de4146:	2700      	movs	r7, #0
c0de4148:	f1ba 0f00 	cmp.w	sl, #0
c0de414c:	d01a      	beq.n	c0de4184 <z_str3join+0x74>
c0de414e:	4650      	mov	r0, sl
c0de4150:	f002 fd06 	bl	c0de6b60 <strlen>
c0de4154:	4604      	mov	r4, r0
c0de4156:	42a8      	cmp	r0, r5
c0de4158:	eb06 0007 	add.w	r0, r6, r7
c0de415c:	bf28      	it	cs
c0de415e:	462c      	movcs	r4, r5
c0de4160:	4420      	add	r0, r4
c0de4162:	3001      	adds	r0, #1
c0de4164:	42a8      	cmp	r0, r5
c0de4166:	d811      	bhi.n	c0de418c <z_str3join+0x7c>
c0de4168:	f04f 0500 	mov.w	r5, #0
c0de416c:	b1dc      	cbz	r4, c0de41a6 <z_str3join+0x96>
c0de416e:	eb0b 0006 	add.w	r0, fp, r6
c0de4172:	4651      	mov	r1, sl
c0de4174:	4622      	mov	r2, r4
c0de4176:	f002 fc8e 	bl	c0de6a96 <__aeabi_memmove>
c0de417a:	19a0      	adds	r0, r4, r6
c0de417c:	f80b 5000 	strb.w	r5, [fp, r0]
c0de4180:	4625      	mov	r5, r4
c0de4182:	e010      	b.n	c0de41a6 <z_str3join+0x96>
c0de4184:	19f0      	adds	r0, r6, r7
c0de4186:	3001      	adds	r0, #1
c0de4188:	42a8      	cmp	r0, r5
c0de418a:	d90b      	bls.n	c0de41a4 <z_str3join+0x94>
c0de418c:	f243 023d 	movw	r2, #12349	@ 0x303d
c0de4190:	f2c0 0200 	movt	r2, #0
c0de4194:	447a      	add	r2, pc
c0de4196:	4658      	mov	r0, fp
c0de4198:	4629      	mov	r1, r5
c0de419a:	f002 f895 	bl	c0de62c8 <snprintf>
c0de419e:	2006      	movs	r0, #6
c0de41a0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de41a4:	2500      	movs	r5, #0
c0de41a6:	b15f      	cbz	r7, c0de41c0 <z_str3join+0xb0>
c0de41a8:	1971      	adds	r1, r6, r5
c0de41aa:	eb0b 0007 	add.w	r0, fp, r7
c0de41ae:	1c4a      	adds	r2, r1, #1
c0de41b0:	4659      	mov	r1, fp
c0de41b2:	f002 fc70 	bl	c0de6a96 <__aeabi_memmove>
c0de41b6:	4658      	mov	r0, fp
c0de41b8:	4641      	mov	r1, r8
c0de41ba:	463a      	mov	r2, r7
c0de41bc:	f002 fc6b 	bl	c0de6a96 <__aeabi_memmove>
c0de41c0:	2003      	movs	r0, #3
c0de41c2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de41c6 <check_app_canary>:
c0de41c6:	f246 50f0 	movw	r0, #26096	@ 0x65f0
c0de41ca:	f2c0 0000 	movt	r0, #0
c0de41ce:	f859 0000 	ldr.w	r0, [r9, r0]
c0de41d2:	2131      	movs	r1, #49	@ 0x31
c0de41d4:	f6cd 61ad 	movt	r1, #57005	@ 0xdead
c0de41d8:	4288      	cmp	r0, r1
c0de41da:	bf18      	it	ne
c0de41dc:	f000 b927 	bne.w	c0de442e <io_seproxyhal_se_reset>
c0de41e0:	4770      	bx	lr

c0de41e2 <zemu_log_stack>:
c0de41e2:	4770      	bx	lr

c0de41e4 <os_io_handle_default_apdu>:
c0de41e4:	b5b0      	push	{r4, r5, r7, lr}
c0de41e6:	b09e      	sub	sp, #120	@ 0x78
c0de41e8:	9d22      	ldr	r5, [sp, #136]	@ 0x88
c0de41ea:	b1d0      	cbz	r0, c0de4222 <os_io_handle_default_apdu+0x3e>
c0de41ec:	b1c9      	cbz	r1, c0de4222 <os_io_handle_default_apdu+0x3e>
c0de41ee:	b1c2      	cbz	r2, c0de4222 <os_io_handle_default_apdu+0x3e>
c0de41f0:	b1bb      	cbz	r3, c0de4222 <os_io_handle_default_apdu+0x3e>
c0de41f2:	b10d      	cbz	r5, c0de41f8 <os_io_handle_default_apdu+0x14>
c0de41f4:	2100      	movs	r1, #0
c0de41f6:	7029      	strb	r1, [r5, #0]
c0de41f8:	7801      	ldrb	r1, [r0, #0]
c0de41fa:	29b0      	cmp	r1, #176	@ 0xb0
c0de41fc:	d113      	bne.n	c0de4226 <os_io_handle_default_apdu+0x42>
c0de41fe:	7841      	ldrb	r1, [r0, #1]
c0de4200:	29a7      	cmp	r1, #167	@ 0xa7
c0de4202:	d013      	beq.n	c0de422c <os_io_handle_default_apdu+0x48>
c0de4204:	2906      	cmp	r1, #6
c0de4206:	d018      	beq.n	c0de423a <os_io_handle_default_apdu+0x56>
c0de4208:	2901      	cmp	r1, #1
c0de420a:	d113      	bne.n	c0de4234 <os_io_handle_default_apdu+0x50>
c0de420c:	7881      	ldrb	r1, [r0, #2]
c0de420e:	b989      	cbnz	r1, c0de4234 <os_io_handle_default_apdu+0x50>
c0de4210:	78c0      	ldrb	r0, [r0, #3]
c0de4212:	b978      	cbnz	r0, c0de4234 <os_io_handle_default_apdu+0x50>
c0de4214:	4610      	mov	r0, r2
c0de4216:	4619      	mov	r1, r3
c0de4218:	b01e      	add	sp, #120	@ 0x78
c0de421a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de421e:	f000 b82d 	b.w	c0de427c <get_version>
c0de4222:	782c      	ldrb	r4, [r5, #0]
c0de4224:	e01f      	b.n	c0de4266 <os_io_handle_default_apdu+0x82>
c0de4226:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de422a:	e01c      	b.n	c0de4266 <os_io_handle_default_apdu+0x82>
c0de422c:	7881      	ldrb	r1, [r0, #2]
c0de422e:	b909      	cbnz	r1, c0de4234 <os_io_handle_default_apdu+0x50>
c0de4230:	78c0      	ldrb	r0, [r0, #3]
c0de4232:	b1d8      	cbz	r0, c0de426c <os_io_handle_default_apdu+0x88>
c0de4234:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de4238:	e015      	b.n	c0de4266 <os_io_handle_default_apdu+0x82>
c0de423a:	2400      	movs	r4, #0
c0de423c:	601c      	str	r4, [r3, #0]
c0de423e:	7883      	ldrb	r3, [r0, #2]
c0de4240:	7902      	ldrb	r2, [r0, #4]
c0de4242:	1d41      	adds	r1, r0, #5
c0de4244:	ad03      	add	r5, sp, #12
c0de4246:	4618      	mov	r0, r3
c0de4248:	2300      	movs	r3, #0
c0de424a:	9400      	str	r4, [sp, #0]
c0de424c:	9501      	str	r5, [sp, #4]
c0de424e:	f002 fb41 	bl	c0de68d4 <os_pki_load_certificate>
c0de4252:	4604      	mov	r4, r0
c0de4254:	2800      	cmp	r0, #0
c0de4256:	4628      	mov	r0, r5
c0de4258:	f04f 016c 	mov.w	r1, #108	@ 0x6c
c0de425c:	bf08      	it	eq
c0de425e:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de4262:	f002 fc1f 	bl	c0de6aa4 <explicit_bzero>
c0de4266:	4620      	mov	r0, r4
c0de4268:	b01e      	add	sp, #120	@ 0x78
c0de426a:	bdb0      	pop	{r4, r5, r7, pc}
c0de426c:	2000      	movs	r0, #0
c0de426e:	6018      	str	r0, [r3, #0]
c0de4270:	b10d      	cbz	r5, c0de4276 <os_io_handle_default_apdu+0x92>
c0de4272:	2001      	movs	r0, #1
c0de4274:	7028      	strb	r0, [r5, #0]
c0de4276:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de427a:	e7f4      	b.n	c0de4266 <os_io_handle_default_apdu+0x82>

c0de427c <get_version>:
c0de427c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de427e:	b081      	sub	sp, #4
c0de4280:	4604      	mov	r4, r0
c0de4282:	6808      	ldr	r0, [r1, #0]
c0de4284:	460d      	mov	r5, r1
c0de4286:	2100      	movs	r1, #0
c0de4288:	2803      	cmp	r0, #3
c0de428a:	6029      	str	r1, [r5, #0]
c0de428c:	d329      	bcc.n	c0de42e2 <get_version+0x66>
c0de428e:	2601      	movs	r6, #1
c0de4290:	602e      	str	r6, [r5, #0]
c0de4292:	7026      	strb	r6, [r4, #0]
c0de4294:	682a      	ldr	r2, [r5, #0]
c0de4296:	1ec7      	subs	r7, r0, #3
c0de4298:	1911      	adds	r1, r2, r4
c0de429a:	3101      	adds	r1, #1
c0de429c:	1aba      	subs	r2, r7, r2
c0de429e:	2001      	movs	r0, #1
c0de42a0:	f002 fb55 	bl	c0de694e <os_registry_get_current_app_tag>
c0de42a4:	6829      	ldr	r1, [r5, #0]
c0de42a6:	1c4a      	adds	r2, r1, #1
c0de42a8:	602a      	str	r2, [r5, #0]
c0de42aa:	5460      	strb	r0, [r4, r1]
c0de42ac:	6829      	ldr	r1, [r5, #0]
c0de42ae:	4408      	add	r0, r1
c0de42b0:	1901      	adds	r1, r0, r4
c0de42b2:	6028      	str	r0, [r5, #0]
c0de42b4:	3101      	adds	r1, #1
c0de42b6:	1a3a      	subs	r2, r7, r0
c0de42b8:	2002      	movs	r0, #2
c0de42ba:	f002 fb48 	bl	c0de694e <os_registry_get_current_app_tag>
c0de42be:	6829      	ldr	r1, [r5, #0]
c0de42c0:	1c4a      	adds	r2, r1, #1
c0de42c2:	602a      	str	r2, [r5, #0]
c0de42c4:	5460      	strb	r0, [r4, r1]
c0de42c6:	6829      	ldr	r1, [r5, #0]
c0de42c8:	4408      	add	r0, r1
c0de42ca:	1c41      	adds	r1, r0, #1
c0de42cc:	6029      	str	r1, [r5, #0]
c0de42ce:	5426      	strb	r6, [r4, r0]
c0de42d0:	f002 fb33 	bl	c0de693a <os_flags>
c0de42d4:	6829      	ldr	r1, [r5, #0]
c0de42d6:	1c4a      	adds	r2, r1, #1
c0de42d8:	602a      	str	r2, [r5, #0]
c0de42da:	5460      	strb	r0, [r4, r1]
c0de42dc:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de42e0:	e001      	b.n	c0de42e6 <get_version+0x6a>
c0de42e2:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de42e6:	b001      	add	sp, #4
c0de42e8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de42ea <os_io_seph_cmd_general_status>:
c0de42ea:	f643 719a 	movw	r1, #16282	@ 0x3f9a
c0de42ee:	f2c0 0100 	movt	r1, #0
c0de42f2:	4479      	add	r1, pc
c0de42f4:	2001      	movs	r0, #1
c0de42f6:	2205      	movs	r2, #5
c0de42f8:	2300      	movs	r3, #0
c0de42fa:	f002 bb56 	b.w	c0de69aa <os_io_tx_cmd>

c0de42fe <os_io_seph_cmd_se_reset>:
c0de42fe:	f643 718b 	movw	r1, #16267	@ 0x3f8b
c0de4302:	f2c0 0100 	movt	r1, #0
c0de4306:	4479      	add	r1, pc
c0de4308:	2001      	movs	r0, #1
c0de430a:	2203      	movs	r2, #3
c0de430c:	2300      	movs	r3, #0
c0de430e:	f002 bb4c 	b.w	c0de69aa <os_io_tx_cmd>

c0de4312 <io_seph_ux_init_button>:
c0de4312:	f246 50dc 	movw	r0, #26076	@ 0x65dc
c0de4316:	f2c0 0000 	movt	r0, #0
c0de431a:	2100      	movs	r1, #0
c0de431c:	f849 1000 	str.w	r1, [r9, r0]
c0de4320:	4448      	add	r0, r9
c0de4322:	6041      	str	r1, [r0, #4]
c0de4324:	4770      	bx	lr

c0de4326 <io_process_itc_ux_event>:
c0de4326:	b580      	push	{r7, lr}
c0de4328:	78c0      	ldrb	r0, [r0, #3]
c0de432a:	2820      	cmp	r0, #32
c0de432c:	4608      	mov	r0, r1
c0de432e:	bf18      	it	ne
c0de4330:	bd80      	popne	{r7, pc}
c0de4332:	f001 feda 	bl	c0de60ea <ux_stack_redisplay>
c0de4336:	2000      	movs	r0, #0
c0de4338:	bd80      	pop	{r7, pc}

c0de433a <io_seph_ux_display_bagl_element>:
c0de433a:	b570      	push	{r4, r5, r6, lr}
c0de433c:	b088      	sub	sp, #32
c0de433e:	f002 fa75 	bl	c0de682c <pic>
c0de4342:	4604      	mov	r4, r0
c0de4344:	7801      	ldrb	r1, [r0, #0]
c0de4346:	69c0      	ldr	r0, [r0, #28]
c0de4348:	f001 067f 	and.w	r6, r1, #127	@ 0x7f
c0de434c:	f002 fa6e 	bl	c0de682c <pic>
c0de4350:	b37e      	cbz	r6, c0de43b2 <io_seph_ux_display_bagl_element+0x78>
c0de4352:	4605      	mov	r5, r0
c0de4354:	b150      	cbz	r0, c0de436c <io_seph_ux_display_bagl_element+0x32>
c0de4356:	2e05      	cmp	r6, #5
c0de4358:	d101      	bne.n	c0de435e <io_seph_ux_display_bagl_element+0x24>
c0de435a:	7ea0      	ldrb	r0, [r4, #26]
c0de435c:	b178      	cbz	r0, c0de437e <io_seph_ux_display_bagl_element+0x44>
c0de435e:	4628      	mov	r0, r5
c0de4360:	f002 fbfe 	bl	c0de6b60 <strlen>
c0de4364:	b282      	uxth	r2, r0
c0de4366:	4620      	mov	r0, r4
c0de4368:	4629      	mov	r1, r5
c0de436a:	e002      	b.n	c0de4372 <io_seph_ux_display_bagl_element+0x38>
c0de436c:	4620      	mov	r0, r4
c0de436e:	2100      	movs	r1, #0
c0de4370:	2200      	movs	r2, #0
c0de4372:	2300      	movs	r3, #0
c0de4374:	b008      	add	sp, #32
c0de4376:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de437a:	f000 b9f3 	b.w	c0de4764 <bagl_draw_with_context>
c0de437e:	4628      	mov	r0, r5
c0de4380:	f002 fa54 	bl	c0de682c <pic>
c0de4384:	b1a8      	cbz	r0, c0de43b2 <io_seph_ux_display_bagl_element+0x78>
c0de4386:	4605      	mov	r5, r0
c0de4388:	6900      	ldr	r0, [r0, #16]
c0de438a:	b190      	cbz	r0, c0de43b2 <io_seph_ux_display_bagl_element+0x78>
c0de438c:	4620      	mov	r0, r4
c0de438e:	f002 fa4d 	bl	c0de682c <pic>
c0de4392:	ac01      	add	r4, sp, #4
c0de4394:	4601      	mov	r1, r0
c0de4396:	4620      	mov	r0, r4
c0de4398:	221c      	movs	r2, #28
c0de439a:	f002 fb7a 	bl	c0de6a92 <__aeabi_memcpy>
c0de439e:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de43a2:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de43a6:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de43aa:	4620      	mov	r0, r4
c0de43ac:	4629      	mov	r1, r5
c0de43ae:	f001 f81f 	bl	c0de53f0 <bagl_draw_glyph>
c0de43b2:	b008      	add	sp, #32
c0de43b4:	bd70      	pop	{r4, r5, r6, pc}

c0de43b6 <io_seproxyhal_button_push>:
c0de43b6:	b1c0      	cbz	r0, c0de43ea <io_seproxyhal_button_push+0x34>
c0de43b8:	b510      	push	{r4, lr}
c0de43ba:	f246 5edc 	movw	lr, #26076	@ 0x65dc
c0de43be:	f2c0 0e00 	movt	lr, #0
c0de43c2:	4684      	mov	ip, r0
c0de43c4:	f859 000e 	ldr.w	r0, [r9, lr]
c0de43c8:	460b      	mov	r3, r1
c0de43ca:	eb09 010e 	add.w	r1, r9, lr
c0de43ce:	6849      	ldr	r1, [r1, #4]
c0de43d0:	4298      	cmp	r0, r3
c0de43d2:	bf02      	ittt	eq
c0de43d4:	3101      	addeq	r1, #1
c0de43d6:	eb09 020e 	addeq.w	r2, r9, lr
c0de43da:	6051      	streq	r1, [r2, #4]
c0de43dc:	ea40 0003 	orr.w	r0, r0, r3
c0de43e0:	b123      	cbz	r3, c0de43ec <io_seproxyhal_button_push+0x36>
c0de43e2:	4602      	mov	r2, r0
c0de43e4:	f849 000e 	str.w	r0, [r9, lr]
c0de43e8:	e008      	b.n	c0de43fc <io_seproxyhal_button_push+0x46>
c0de43ea:	4770      	bx	lr
c0de43ec:	2200      	movs	r2, #0
c0de43ee:	eb09 040e 	add.w	r4, r9, lr
c0de43f2:	f849 200e 	str.w	r2, [r9, lr]
c0de43f6:	6062      	str	r2, [r4, #4]
c0de43f8:	f040 4000 	orr.w	r0, r0, #2147483648	@ 0x80000000
c0de43fc:	429a      	cmp	r2, r3
c0de43fe:	bf1e      	ittt	ne
c0de4400:	eb09 020e 	addne.w	r2, r9, lr
c0de4404:	2300      	movne	r3, #0
c0de4406:	6053      	strne	r3, [r2, #4]
c0de4408:	2908      	cmp	r1, #8
c0de440a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de440e:	d30b      	bcc.n	c0de4428 <io_seproxyhal_button_push+0x72>
c0de4410:	f64a 22ab 	movw	r2, #43691	@ 0xaaab
c0de4414:	f6ca 22aa 	movt	r2, #43690	@ 0xaaaa
c0de4418:	434a      	muls	r2, r1
c0de441a:	f112 3faa 	cmn.w	r2, #2863311530	@ 0xaaaaaaaa
c0de441e:	bf38      	it	cc
c0de4420:	f040 4080 	orrcc.w	r0, r0, #1073741824	@ 0x40000000
c0de4424:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
c0de4428:	4760      	bx	ip

c0de442a <io_seproxyhal_general_status>:
c0de442a:	f7ff bf5e 	b.w	c0de42ea <os_io_seph_cmd_general_status>

c0de442e <io_seproxyhal_se_reset>:
c0de442e:	f001 ff47 	bl	c0de62c0 <os_reset>

c0de4432 <io_seph_is_status_sent>:
c0de4432:	2001      	movs	r0, #1
c0de4434:	4770      	bx	lr

c0de4436 <io_seph_recv>:
c0de4436:	b570      	push	{r4, r5, r6, lr}
c0de4438:	f246 46c9 	movw	r6, #25801	@ 0x64c9
c0de443c:	f2c0 0600 	movt	r6, #0
c0de4440:	4604      	mov	r4, r0
c0de4442:	eb09 0006 	add.w	r0, r9, r6
c0de4446:	f240 1111 	movw	r1, #273	@ 0x111
c0de444a:	2200      	movs	r2, #0
c0de444c:	2301      	movs	r3, #1
c0de444e:	f002 fab8 	bl	c0de69c2 <os_io_rx_evt>
c0de4452:	4605      	mov	r5, r0
c0de4454:	2801      	cmp	r0, #1
c0de4456:	db18      	blt.n	c0de448a <io_seph_recv+0x54>
c0de4458:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de445c:	3801      	subs	r0, #1
c0de445e:	2801      	cmp	r0, #1
c0de4460:	d813      	bhi.n	c0de448a <io_seph_recv+0x54>
c0de4462:	3d01      	subs	r5, #1
c0de4464:	444e      	add	r6, r9
c0de4466:	1c71      	adds	r1, r6, #1
c0de4468:	4620      	mov	r0, r4
c0de446a:	462a      	mov	r2, r5
c0de446c:	f002 fb11 	bl	c0de6a92 <__aeabi_memcpy>
c0de4470:	7870      	ldrb	r0, [r6, #1]
c0de4472:	281a      	cmp	r0, #26
c0de4474:	d105      	bne.n	c0de4482 <io_seph_recv+0x4c>
c0de4476:	4620      	mov	r0, r4
c0de4478:	4629      	mov	r1, r5
c0de447a:	f7ff ff54 	bl	c0de4326 <io_process_itc_ux_event>
c0de447e:	4605      	mov	r5, r0
c0de4480:	e003      	b.n	c0de448a <io_seph_recv+0x54>
c0de4482:	2000      	movs	r0, #0
c0de4484:	2500      	movs	r5, #0
c0de4486:	f7fc f8ab 	bl	c0de05e0 <io_event>
c0de448a:	b2a8      	uxth	r0, r5
c0de448c:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de4490 <io_exchange>:
c0de4490:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4494:	f246 56e4 	movw	r6, #26084	@ 0x65e4
c0de4498:	f2c0 0600 	movt	r6, #0
c0de449c:	f819 2006 	ldrb.w	r2, [r9, r6]
c0de44a0:	460d      	mov	r5, r1
c0de44a2:	2a01      	cmp	r2, #1
c0de44a4:	4604      	mov	r4, r0
c0de44a6:	d104      	bne.n	c0de44b2 <io_exchange+0x22>
c0de44a8:	f002 fa73 	bl	c0de6992 <os_io_start>
c0de44ac:	2000      	movs	r0, #0
c0de44ae:	f809 0006 	strb.w	r0, [r9, r6]
c0de44b2:	0760      	lsls	r0, r4, #29
c0de44b4:	d001      	beq.n	c0de44ba <io_exchange+0x2a>
c0de44b6:	2500      	movs	r5, #0
c0de44b8:	e037      	b.n	c0de452a <io_exchange+0x9a>
c0de44ba:	f246 56e6 	movw	r6, #26086	@ 0x65e6
c0de44be:	f004 0710 	and.w	r7, r4, #16
c0de44c2:	f2c0 0600 	movt	r6, #0
c0de44c6:	b1bd      	cbz	r5, c0de44f8 <io_exchange+0x68>
c0de44c8:	b9b7      	cbnz	r7, c0de44f8 <io_exchange+0x68>
c0de44ca:	f246 58ee 	movw	r8, #26094	@ 0x65ee
c0de44ce:	f2c0 0800 	movt	r8, #0
c0de44d2:	f246 31b8 	movw	r1, #25528	@ 0x63b8
c0de44d6:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de44da:	f2c0 0100 	movt	r1, #0
c0de44de:	4449      	add	r1, r9
c0de44e0:	462a      	mov	r2, r5
c0de44e2:	2300      	movs	r3, #0
c0de44e4:	2500      	movs	r5, #0
c0de44e6:	f002 fa60 	bl	c0de69aa <os_io_tx_cmd>
c0de44ea:	eb09 0006 	add.w	r0, r9, r6
c0de44ee:	7185      	strb	r5, [r0, #6]
c0de44f0:	06a0      	lsls	r0, r4, #26
c0de44f2:	f809 5008 	strb.w	r5, [r9, r8]
c0de44f6:	d418      	bmi.n	c0de452a <io_exchange+0x9a>
c0de44f8:	b94f      	cbnz	r7, c0de450e <io_exchange+0x7e>
c0de44fa:	eb09 0006 	add.w	r0, r9, r6
c0de44fe:	2100      	movs	r1, #0
c0de4500:	7181      	strb	r1, [r0, #6]
c0de4502:	f246 50ee 	movw	r0, #26094	@ 0x65ee
c0de4506:	f2c0 0000 	movt	r0, #0
c0de450a:	f809 1000 	strb.w	r1, [r9, r0]
c0de450e:	eb09 0006 	add.w	r0, r9, r6
c0de4512:	2100      	movs	r1, #0
c0de4514:	8041      	strh	r1, [r0, #2]
c0de4516:	bf00      	nop
c0de4518:	2001      	movs	r0, #1
c0de451a:	f000 f809 	bl	c0de4530 <io_legacy_apdu_rx>
c0de451e:	2801      	cmp	r0, #1
c0de4520:	dbfa      	blt.n	c0de4518 <io_exchange+0x88>
c0de4522:	4605      	mov	r5, r0
c0de4524:	eb09 0006 	add.w	r0, r9, r6
c0de4528:	8045      	strh	r5, [r0, #2]
c0de452a:	b2a8      	uxth	r0, r5
c0de452c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de4530 <io_legacy_apdu_rx>:
c0de4530:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4532:	b083      	sub	sp, #12
c0de4534:	f246 46c9 	movw	r6, #25801	@ 0x64c9
c0de4538:	4605      	mov	r5, r0
c0de453a:	2000      	movs	r0, #0
c0de453c:	f2c0 0600 	movt	r6, #0
c0de4540:	f88d 000b 	strb.w	r0, [sp, #11]
c0de4544:	eb09 0006 	add.w	r0, r9, r6
c0de4548:	f240 1111 	movw	r1, #273	@ 0x111
c0de454c:	2200      	movs	r2, #0
c0de454e:	2301      	movs	r3, #1
c0de4550:	f002 fa37 	bl	c0de69c2 <os_io_rx_evt>
c0de4554:	4604      	mov	r4, r0
c0de4556:	2801      	cmp	r0, #1
c0de4558:	f2c0 80c5 	blt.w	c0de46e6 <io_legacy_apdu_rx+0x1b6>
c0de455c:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de4560:	282f      	cmp	r0, #47	@ 0x2f
c0de4562:	dc5b      	bgt.n	c0de461c <io_legacy_apdu_rx+0xec>
c0de4564:	f1a0 0110 	sub.w	r1, r0, #16
c0de4568:	2916      	cmp	r1, #22
c0de456a:	d85f      	bhi.n	c0de462c <io_legacy_apdu_rx+0xfc>
c0de456c:	2201      	movs	r2, #1
c0de456e:	fa02 f101 	lsl.w	r1, r2, r1
c0de4572:	2201      	movs	r2, #1
c0de4574:	f2c0 027f 	movt	r2, #127	@ 0x7f
c0de4578:	4211      	tst	r1, r2
c0de457a:	d057      	beq.n	c0de462c <io_legacy_apdu_rx+0xfc>
c0de457c:	f246 55ee 	movw	r5, #26094	@ 0x65ee
c0de4580:	f2c0 0500 	movt	r5, #0
c0de4584:	f809 0005 	strb.w	r0, [r9, r5]
c0de4588:	f002 f9b4 	bl	c0de68f4 <os_perso_is_pin_set>
c0de458c:	28aa      	cmp	r0, #170	@ 0xaa
c0de458e:	d103      	bne.n	c0de4598 <io_legacy_apdu_rx+0x68>
c0de4590:	f002 f9bb 	bl	c0de690a <os_global_pin_is_validated>
c0de4594:	28aa      	cmp	r0, #170	@ 0xaa
c0de4596:	d163      	bne.n	c0de4660 <io_legacy_apdu_rx+0x130>
c0de4598:	eb09 0006 	add.w	r0, r9, r6
c0de459c:	7840      	ldrb	r0, [r0, #1]
c0de459e:	28b0      	cmp	r0, #176	@ 0xb0
c0de45a0:	d130      	bne.n	c0de4604 <io_legacy_apdu_rx+0xd4>
c0de45a2:	f240 1011 	movw	r0, #273	@ 0x111
c0de45a6:	9001      	str	r0, [sp, #4]
c0de45a8:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de45ac:	f2c0 0000 	movt	r0, #0
c0de45b0:	1e61      	subs	r1, r4, #1
c0de45b2:	eb09 0400 	add.w	r4, r9, r0
c0de45b6:	eb09 0006 	add.w	r0, r9, r6
c0de45ba:	f10d 070b 	add.w	r7, sp, #11
c0de45be:	3001      	adds	r0, #1
c0de45c0:	ab01      	add	r3, sp, #4
c0de45c2:	4622      	mov	r2, r4
c0de45c4:	9700      	str	r7, [sp, #0]
c0de45c6:	f7ff fe0d 	bl	c0de41e4 <os_io_handle_default_apdu>
c0de45ca:	9901      	ldr	r1, [sp, #4]
c0de45cc:	2600      	movs	r6, #0
c0de45ce:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de45d2:	bf18      	it	ne
c0de45d4:	4631      	movne	r1, r6
c0de45d6:	0a02      	lsrs	r2, r0, #8
c0de45d8:	1863      	adds	r3, r4, r1
c0de45da:	5462      	strb	r2, [r4, r1]
c0de45dc:	3102      	adds	r1, #2
c0de45de:	7058      	strb	r0, [r3, #1]
c0de45e0:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de45e4:	9101      	str	r1, [sp, #4]
c0de45e6:	b28a      	uxth	r2, r1
c0de45e8:	4621      	mov	r1, r4
c0de45ea:	2300      	movs	r3, #0
c0de45ec:	f002 f9dd 	bl	c0de69aa <os_io_tx_cmd>
c0de45f0:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de45f4:	f809 6005 	strb.w	r6, [r9, r5]
c0de45f8:	2901      	cmp	r1, #1
c0de45fa:	f000 8086 	beq.w	c0de470a <io_legacy_apdu_rx+0x1da>
c0de45fe:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de4602:	e070      	b.n	c0de46e6 <io_legacy_apdu_rx+0x1b6>
c0de4604:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de4608:	2821      	cmp	r0, #33	@ 0x21
c0de460a:	dd3d      	ble.n	c0de4688 <io_legacy_apdu_rx+0x158>
c0de460c:	282f      	cmp	r0, #47	@ 0x2f
c0de460e:	dc43      	bgt.n	c0de4698 <io_legacy_apdu_rx+0x168>
c0de4610:	2822      	cmp	r0, #34	@ 0x22
c0de4612:	d04d      	beq.n	c0de46b0 <io_legacy_apdu_rx+0x180>
c0de4614:	2823      	cmp	r0, #35	@ 0x23
c0de4616:	d151      	bne.n	c0de46bc <io_legacy_apdu_rx+0x18c>
c0de4618:	2007      	movs	r0, #7
c0de461a:	e052      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de461c:	2830      	cmp	r0, #48	@ 0x30
c0de461e:	d0ad      	beq.n	c0de457c <io_legacy_apdu_rx+0x4c>
c0de4620:	2840      	cmp	r0, #64	@ 0x40
c0de4622:	d0ab      	beq.n	c0de457c <io_legacy_apdu_rx+0x4c>
c0de4624:	2842      	cmp	r0, #66	@ 0x42
c0de4626:	bf18      	it	ne
c0de4628:	2400      	movne	r4, #0
c0de462a:	e05c      	b.n	c0de46e6 <io_legacy_apdu_rx+0x1b6>
c0de462c:	3801      	subs	r0, #1
c0de462e:	2802      	cmp	r0, #2
c0de4630:	d269      	bcs.n	c0de4706 <io_legacy_apdu_rx+0x1d6>
c0de4632:	f240 0702 	movw	r7, #2
c0de4636:	3c01      	subs	r4, #1
c0de4638:	f2c0 0700 	movt	r7, #0
c0de463c:	444e      	add	r6, r9
c0de463e:	eb09 0007 	add.w	r0, r9, r7
c0de4642:	1c71      	adds	r1, r6, #1
c0de4644:	4622      	mov	r2, r4
c0de4646:	f002 fa24 	bl	c0de6a92 <__aeabi_memcpy>
c0de464a:	7870      	ldrb	r0, [r6, #1]
c0de464c:	281a      	cmp	r0, #26
c0de464e:	d129      	bne.n	c0de46a4 <io_legacy_apdu_rx+0x174>
c0de4650:	eb09 0007 	add.w	r0, r9, r7
c0de4654:	4621      	mov	r1, r4
c0de4656:	b003      	add	sp, #12
c0de4658:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de465c:	f7ff be63 	b.w	c0de4326 <io_process_itc_ux_event>
c0de4660:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de4664:	f2c0 0000 	movt	r0, #0
c0de4668:	2155      	movs	r1, #85	@ 0x55
c0de466a:	f809 1000 	strb.w	r1, [r9, r0]
c0de466e:	eb09 0100 	add.w	r1, r9, r0
c0de4672:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de4676:	2715      	movs	r7, #21
c0de4678:	2202      	movs	r2, #2
c0de467a:	2300      	movs	r3, #0
c0de467c:	704f      	strb	r7, [r1, #1]
c0de467e:	b003      	add	sp, #12
c0de4680:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4684:	f002 b991 	b.w	c0de69aa <os_io_tx_cmd>
c0de4688:	2810      	cmp	r0, #16
c0de468a:	d013      	beq.n	c0de46b4 <io_legacy_apdu_rx+0x184>
c0de468c:	2820      	cmp	r0, #32
c0de468e:	d017      	beq.n	c0de46c0 <io_legacy_apdu_rx+0x190>
c0de4690:	2821      	cmp	r0, #33	@ 0x21
c0de4692:	d113      	bne.n	c0de46bc <io_legacy_apdu_rx+0x18c>
c0de4694:	2005      	movs	r0, #5
c0de4696:	e014      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de4698:	2830      	cmp	r0, #48	@ 0x30
c0de469a:	d00d      	beq.n	c0de46b8 <io_legacy_apdu_rx+0x188>
c0de469c:	2840      	cmp	r0, #64	@ 0x40
c0de469e:	d10d      	bne.n	c0de46bc <io_legacy_apdu_rx+0x18c>
c0de46a0:	2003      	movs	r0, #3
c0de46a2:	e00e      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de46a4:	b315      	cbz	r5, c0de46ec <io_legacy_apdu_rx+0x1bc>
c0de46a6:	2000      	movs	r0, #0
c0de46a8:	2400      	movs	r4, #0
c0de46aa:	f7fb ff99 	bl	c0de05e0 <io_event>
c0de46ae:	e01a      	b.n	c0de46e6 <io_legacy_apdu_rx+0x1b6>
c0de46b0:	2004      	movs	r0, #4
c0de46b2:	e006      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de46b4:	2006      	movs	r0, #6
c0de46b6:	e004      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de46b8:	2002      	movs	r0, #2
c0de46ba:	e002      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de46bc:	2000      	movs	r0, #0
c0de46be:	e000      	b.n	c0de46c2 <io_legacy_apdu_rx+0x192>
c0de46c0:	2001      	movs	r0, #1
c0de46c2:	f246 51e6 	movw	r1, #26086	@ 0x65e6
c0de46c6:	f2c0 0100 	movt	r1, #0
c0de46ca:	4449      	add	r1, r9
c0de46cc:	7188      	strb	r0, [r1, #6]
c0de46ce:	f246 30b8 	movw	r0, #25528	@ 0x63b8
c0de46d2:	3c01      	subs	r4, #1
c0de46d4:	f2c0 0000 	movt	r0, #0
c0de46d8:	eb09 0106 	add.w	r1, r9, r6
c0de46dc:	4448      	add	r0, r9
c0de46de:	3101      	adds	r1, #1
c0de46e0:	4622      	mov	r2, r4
c0de46e2:	f002 f9d6 	bl	c0de6a92 <__aeabi_memcpy>
c0de46e6:	4620      	mov	r0, r4
c0de46e8:	b003      	add	sp, #12
c0de46ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de46ec:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de46f0:	2815      	cmp	r0, #21
c0de46f2:	d8d8      	bhi.n	c0de46a6 <io_legacy_apdu_rx+0x176>
c0de46f4:	2101      	movs	r1, #1
c0de46f6:	fa01 f000 	lsl.w	r0, r1, r0
c0de46fa:	f245 0120 	movw	r1, #20512	@ 0x5020
c0de46fe:	f2c0 0120 	movt	r1, #32
c0de4702:	4208      	tst	r0, r1
c0de4704:	d0cf      	beq.n	c0de46a6 <io_legacy_apdu_rx+0x176>
c0de4706:	2400      	movs	r4, #0
c0de4708:	e7ed      	b.n	c0de46e6 <io_legacy_apdu_rx+0x1b6>
c0de470a:	20ff      	movs	r0, #255	@ 0xff
c0de470c:	f002 f92b 	bl	c0de6966 <os_sched_exit>

c0de4710 <io_seproxyhal_init>:
c0de4710:	b5b0      	push	{r4, r5, r7, lr}
c0de4712:	b08a      	sub	sp, #40	@ 0x28
c0de4714:	f246 50ee 	movw	r0, #26094	@ 0x65ee
c0de4718:	f2c0 0000 	movt	r0, #0
c0de471c:	2500      	movs	r5, #0
c0de471e:	ac01      	add	r4, sp, #4
c0de4720:	f809 5000 	strb.w	r5, [r9, r0]
c0de4724:	4620      	mov	r0, r4
c0de4726:	2118      	movs	r1, #24
c0de4728:	f002 f9b0 	bl	c0de6a8c <__aeabi_memclr>
c0de472c:	2011      	movs	r0, #17
c0de472e:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4732:	f246 50f0 	movw	r0, #26096	@ 0x65f0
c0de4736:	2131      	movs	r1, #49	@ 0x31
c0de4738:	f2c0 0000 	movt	r0, #0
c0de473c:	f6cd 61ad 	movt	r1, #57005	@ 0xdead
c0de4740:	f849 1000 	str.w	r1, [r9, r0]
c0de4744:	4620      	mov	r0, r4
c0de4746:	f8ad 5024 	strh.w	r5, [sp, #36]	@ 0x24
c0de474a:	f002 f917 	bl	c0de697c <os_io_init>
c0de474e:	f246 50e4 	movw	r0, #26084	@ 0x65e4
c0de4752:	f2c0 0000 	movt	r0, #0
c0de4756:	2101      	movs	r1, #1
c0de4758:	f809 1000 	strb.w	r1, [r9, r0]
c0de475c:	b00a      	add	sp, #40	@ 0x28
c0de475e:	bdb0      	pop	{r4, r5, r7, pc}

c0de4760 <USB_power>:
c0de4760:	4770      	bx	lr
	...

c0de4764 <bagl_draw_with_context>:
c0de4764:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4768:	b08e      	sub	sp, #56	@ 0x38
c0de476a:	f890 8000 	ldrb.w	r8, [r0]
c0de476e:	4604      	mov	r4, r0
c0de4770:	f008 0b7f 	and.w	fp, r8, #127	@ 0x7f
c0de4774:	f1bb 0f05 	cmp.w	fp, #5
c0de4778:	910d      	str	r1, [sp, #52]	@ 0x34
c0de477a:	920a      	str	r2, [sp, #40]	@ 0x28
c0de477c:	f000 80b7 	beq.w	c0de48ee <bagl_draw_with_context+0x18a>
c0de4780:	8b20      	ldrh	r0, [r4, #24]
c0de4782:	4616      	mov	r6, r2
c0de4784:	f000 facc 	bl	c0de4d20 <bagl_get_font>
c0de4788:	2800      	cmp	r0, #0
c0de478a:	f000 80b0 	beq.w	c0de48ee <bagl_draw_with_context+0x18a>
c0de478e:	f890 a005 	ldrb.w	sl, [r0, #5]
c0de4792:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de4794:	8921      	ldrh	r1, [r4, #8]
c0de4796:	2800      	cmp	r0, #0
c0de4798:	f04f 0c00 	mov.w	ip, #0
c0de479c:	f8cd a02c 	str.w	sl, [sp, #44]	@ 0x2c
c0de47a0:	9109      	str	r1, [sp, #36]	@ 0x24
c0de47a2:	f000 8179 	beq.w	c0de4a98 <bagl_draw_with_context+0x334>
c0de47a6:	2e00      	cmp	r6, #0
c0de47a8:	f000 8176 	beq.w	c0de4a98 <bagl_draw_with_context+0x334>
c0de47ac:	88e1      	ldrh	r1, [r4, #6]
c0de47ae:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47b2:	3164      	adds	r1, #100	@ 0x64
c0de47b4:	b289      	uxth	r1, r1
c0de47b6:	8b20      	ldrh	r0, [r4, #24]
c0de47b8:	e9cd 3100 	strd	r3, r1, [sp]
c0de47bc:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de47be:	b2f2      	uxtb	r2, r6
c0de47c0:	2500      	movs	r5, #0
c0de47c2:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de47c6:	2100      	movs	r1, #0
c0de47c8:	2200      	movs	r2, #0
c0de47ca:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de47ce:	2700      	movs	r7, #0
c0de47d0:	9502      	str	r5, [sp, #8]
c0de47d2:	970c      	str	r7, [sp, #48]	@ 0x30
c0de47d4:	9505      	str	r5, [sp, #20]
c0de47d6:	f000 fae1 	bl	c0de4d9c <bagl_draw_string>
c0de47da:	88e1      	ldrh	r1, [r4, #6]
c0de47dc:	2e05      	cmp	r6, #5
c0de47de:	b285      	uxth	r5, r0
c0de47e0:	f0c0 81a7 	bcc.w	c0de4b32 <bagl_draw_with_context+0x3ce>
c0de47e4:	42a9      	cmp	r1, r5
c0de47e6:	f080 81a4 	bcs.w	c0de4b32 <bagl_draw_with_context+0x3ce>
c0de47ea:	8b20      	ldrh	r0, [r4, #24]
c0de47ec:	f242 72f3 	movw	r2, #10227	@ 0x27f3
c0de47f0:	f2c0 0200 	movt	r2, #0
c0de47f4:	2700      	movs	r7, #0
c0de47f6:	2103      	movs	r1, #3
c0de47f8:	447a      	add	r2, pc
c0de47fa:	2364      	movs	r3, #100	@ 0x64
c0de47fc:	f243 0639 	movw	r6, #12345	@ 0x3039
c0de4800:	9600      	str	r6, [sp, #0]
c0de4802:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
c0de4804:	e9cd 3701 	strd	r3, r7, [sp, #4]
c0de4808:	e9cd 2103 	strd	r2, r1, [sp, #12]
c0de480c:	2100      	movs	r1, #0
c0de480e:	2200      	movs	r2, #0
c0de4810:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4814:	9705      	str	r7, [sp, #20]
c0de4816:	f000 fac1 	bl	c0de4d9c <bagl_draw_string>
c0de481a:	88e1      	ldrh	r1, [r4, #6]
c0de481c:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
c0de481e:	ea4f 0c56 	mov.w	ip, r6, lsr #1
c0de4822:	428d      	cmp	r5, r1
c0de4824:	eb02 0256 	add.w	r2, r2, r6, lsr #1
c0de4828:	920c      	str	r2, [sp, #48]	@ 0x30
c0de482a:	f240 8183 	bls.w	c0de4b34 <bagl_draw_with_context+0x3d0>
c0de482e:	ebb6 0a0c 	subs.w	sl, r6, ip
c0de4832:	f000 817f 	beq.w	c0de4b34 <bagl_draw_with_context+0x3d0>
c0de4836:	b280      	uxth	r0, r0
c0de4838:	9008      	str	r0, [sp, #32]
c0de483a:	2600      	movs	r6, #0
c0de483c:	f8cd 801c 	str.w	r8, [sp, #28]
c0de4840:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4844:	8b20      	ldrh	r0, [r4, #24]
c0de4846:	e9cd 3100 	strd	r3, r1, [sp]
c0de484a:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de484c:	fa5f f28c 	uxtb.w	r2, ip
c0de4850:	465f      	mov	r7, fp
c0de4852:	f04f 0b00 	mov.w	fp, #0
c0de4856:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de485a:	2100      	movs	r1, #0
c0de485c:	2200      	movs	r2, #0
c0de485e:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4862:	46e0      	mov	r8, ip
c0de4864:	f8cd b008 	str.w	fp, [sp, #8]
c0de4868:	f8cd b014 	str.w	fp, [sp, #20]
c0de486c:	f000 fa96 	bl	c0de4d9c <bagl_draw_string>
c0de4870:	88e1      	ldrh	r1, [r4, #6]
c0de4872:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4876:	b285      	uxth	r5, r0
c0de4878:	8b20      	ldrh	r0, [r4, #24]
c0de487a:	e9cd 3100 	strd	r3, r1, [sp]
c0de487e:	990c      	ldr	r1, [sp, #48]	@ 0x30
c0de4880:	fa5f f28a 	uxtb.w	r2, sl
c0de4884:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de4888:	2100      	movs	r1, #0
c0de488a:	2200      	movs	r2, #0
c0de488c:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4890:	f8cd b008 	str.w	fp, [sp, #8]
c0de4894:	f8cd b014 	str.w	fp, [sp, #20]
c0de4898:	f000 fa80 	bl	c0de4d9c <bagl_draw_string>
c0de489c:	9908      	ldr	r1, [sp, #32]
c0de489e:	b280      	uxth	r0, r0
c0de48a0:	186a      	adds	r2, r5, r1
c0de48a2:	88e1      	ldrh	r1, [r4, #6]
c0de48a4:	1815      	adds	r5, r2, r0
c0de48a6:	428d      	cmp	r5, r1
c0de48a8:	f240 8234 	bls.w	c0de4d14 <bagl_draw_with_context+0x5b0>
c0de48ac:	2e01      	cmp	r6, #1
c0de48ae:	d007      	beq.n	c0de48c0 <bagl_draw_with_context+0x15c>
c0de48b0:	46c4      	mov	ip, r8
c0de48b2:	46bb      	mov	fp, r7
c0de48b4:	b90e      	cbnz	r6, c0de48ba <bagl_draw_with_context+0x156>
c0de48b6:	f1ac 0c01 	sub.w	ip, ip, #1
c0de48ba:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de48be:	e006      	b.n	c0de48ce <bagl_draw_with_context+0x16a>
c0de48c0:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de48c2:	46c4      	mov	ip, r8
c0de48c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de48c8:	3001      	adds	r0, #1
c0de48ca:	46bb      	mov	fp, r7
c0de48cc:	900c      	str	r0, [sp, #48]	@ 0x30
c0de48ce:	f1bc 0f00 	cmp.w	ip, #0
c0de48d2:	f000 812f 	beq.w	c0de4b34 <bagl_draw_with_context+0x3d0>
c0de48d6:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	@ 0x30
c0de48da:	1a80      	subs	r0, r0, r2
c0de48dc:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de48de:	eb10 0a02 	adds.w	sl, r0, r2
c0de48e2:	f04f 0001 	mov.w	r0, #1
c0de48e6:	ea20 0606 	bic.w	r6, r0, r6
c0de48ea:	d1a9      	bne.n	c0de4840 <bagl_draw_with_context+0xdc>
c0de48ec:	e122      	b.n	c0de4b34 <bagl_draw_with_context+0x3d0>
c0de48ee:	2000      	movs	r0, #0
c0de48f0:	900c      	str	r0, [sp, #48]	@ 0x30
c0de48f2:	2000      	movs	r0, #0
c0de48f4:	9009      	str	r0, [sp, #36]	@ 0x24
c0de48f6:	2000      	movs	r0, #0
c0de48f8:	f04f 0c00 	mov.w	ip, #0
c0de48fc:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de48fe:	f04f 0e00 	mov.w	lr, #0
c0de4902:	2500      	movs	r5, #0
c0de4904:	88e3      	ldrh	r3, [r4, #6]
c0de4906:	8926      	ldrh	r6, [r4, #8]
c0de4908:	7ae7      	ldrb	r7, [r4, #11]
c0de490a:	0858      	lsrs	r0, r3, #1
c0de490c:	0871      	lsrs	r1, r6, #1
c0de490e:	ebb0 0f56 	cmp.w	r0, r6, lsr #1
c0de4912:	460a      	mov	r2, r1
c0de4914:	bf38      	it	cc
c0de4916:	085a      	lsrcc	r2, r3, #1
c0de4918:	42ba      	cmp	r2, r7
c0de491a:	46ba      	mov	sl, r7
c0de491c:	d803      	bhi.n	c0de4926 <bagl_draw_with_context+0x1c2>
c0de491e:	4288      	cmp	r0, r1
c0de4920:	bf2c      	ite	cs
c0de4922:	468a      	movcs	sl, r1
c0de4924:	4682      	movcc	sl, r0
c0de4926:	f1ab 0001 	sub.w	r0, fp, #1
c0de492a:	2804      	cmp	r0, #4
c0de492c:	d307      	bcc.n	c0de493e <bagl_draw_with_context+0x1da>
c0de492e:	f1bb 0f06 	cmp.w	fp, #6
c0de4932:	f000 80b4 	beq.w	c0de4a9e <bagl_draw_with_context+0x33a>
c0de4936:	f1bb 0f07 	cmp.w	fp, #7
c0de493a:	f040 80c8 	bne.w	c0de4ace <bagl_draw_with_context+0x36a>
c0de493e:	f1bb 0f04 	cmp.w	fp, #4
c0de4942:	bf08      	it	eq
c0de4944:	2f00      	cmpeq	r7, #0
c0de4946:	d00a      	beq.n	c0de495e <bagl_draw_with_context+0x1fa>
c0de4948:	f1b8 0f81 	cmp.w	r8, #129	@ 0x81
c0de494c:	9508      	str	r5, [sp, #32]
c0de494e:	dc0f      	bgt.n	c0de4970 <bagl_draw_with_context+0x20c>
c0de4950:	f1b8 0f02 	cmp.w	r8, #2
c0de4954:	d013      	beq.n	c0de497e <bagl_draw_with_context+0x21a>
c0de4956:	f1b8 0f07 	cmp.w	r8, #7
c0de495a:	d010      	beq.n	c0de497e <bagl_draw_with_context+0x21a>
c0de495c:	e0ba      	b.n	c0de4ad4 <bagl_draw_with_context+0x370>
c0de495e:	6920      	ldr	r0, [r4, #16]
c0de4960:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4964:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4968:	9600      	str	r6, [sp, #0]
c0de496a:	f002 f87f 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de496e:	e0ae      	b.n	c0de4ace <bagl_draw_with_context+0x36a>
c0de4970:	f1b8 0f87 	cmp.w	r8, #135	@ 0x87
c0de4974:	d003      	beq.n	c0de497e <bagl_draw_with_context+0x21a>
c0de4976:	f1b8 0f82 	cmp.w	r8, #130	@ 0x82
c0de497a:	f040 80ab 	bne.w	c0de4ad4 <bagl_draw_with_context+0x370>
c0de497e:	6960      	ldr	r0, [r4, #20]
c0de4980:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4984:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4988:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
c0de498a:	f1bb 0f07 	cmp.w	fp, #7
c0de498e:	bf08      	it	eq
c0de4990:	1b52      	subeq	r2, r2, r5
c0de4992:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4994:	bf08      	it	eq
c0de4996:	462e      	moveq	r6, r5
c0de4998:	9600      	str	r6, [sp, #0]
c0de499a:	4665      	mov	r5, ip
c0de499c:	4676      	mov	r6, lr
c0de499e:	f002 f865 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de49a2:	9f08      	ldr	r7, [sp, #32]
c0de49a4:	46ac      	mov	ip, r5
c0de49a6:	f1bb 0f04 	cmp.w	fp, #4
c0de49aa:	f000 8090 	beq.w	c0de4ace <bagl_draw_with_context+0x36a>
c0de49ae:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de49b0:	2800      	cmp	r0, #0
c0de49b2:	f000 808c 	beq.w	c0de4ace <bagl_draw_with_context+0x36a>
c0de49b6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de49b8:	2800      	cmp	r0, #0
c0de49ba:	f000 8088 	beq.w	c0de4ace <bagl_draw_with_context+0x36a>
c0de49be:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
c0de49c2:	e9d4 a204 	ldrd	sl, r2, [r4, #16]
c0de49c6:	f008 007d 	and.w	r0, r8, #125	@ 0x7d
c0de49ca:	2801      	cmp	r0, #1
c0de49cc:	d106      	bne.n	c0de49dc <bagl_draw_with_context+0x278>
c0de49ce:	7b20      	ldrb	r0, [r4, #12]
c0de49d0:	2801      	cmp	r0, #1
c0de49d2:	4650      	mov	r0, sl
c0de49d4:	bf04      	itt	eq
c0de49d6:	4610      	moveq	r0, r2
c0de49d8:	4652      	moveq	r2, sl
c0de49da:	4682      	mov	sl, r0
c0de49dc:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de49e0:	46b0      	mov	r8, r6
c0de49e2:	8b20      	ldrh	r0, [r4, #24]
c0de49e4:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
c0de49e8:	187b      	adds	r3, r7, r1
c0de49ea:	f1bb 0f07 	cmp.w	fp, #7
c0de49ee:	bf08      	it	eq
c0de49f0:	f1ce 0800 	rsbeq	r8, lr, #0
c0de49f4:	88e1      	ldrh	r1, [r4, #6]
c0de49f6:	eb08 0e05 	add.w	lr, r8, r5
c0de49fa:	1bc9      	subs	r1, r1, r7
c0de49fc:	f1bb 0707 	subs.w	r7, fp, #7
c0de4a00:	8925      	ldrh	r5, [r4, #8]
c0de4a02:	bf18      	it	ne
c0de4a04:	4637      	movne	r7, r6
c0de4a06:	e9cd e100 	strd	lr, r1, [sp]
c0de4a0a:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de4a0c:	1bed      	subs	r5, r5, r7
c0de4a0e:	2600      	movs	r6, #0
c0de4a10:	e9cd 1c03 	strd	r1, ip, [sp, #12]
c0de4a14:	4651      	mov	r1, sl
c0de4a16:	9502      	str	r5, [sp, #8]
c0de4a18:	9605      	str	r6, [sp, #20]
c0de4a1a:	4693      	mov	fp, r2
c0de4a1c:	f000 f9be 	bl	c0de4d9c <bagl_draw_string>
c0de4a20:	990c      	ldr	r1, [sp, #48]	@ 0x30
c0de4a22:	9e08      	ldr	r6, [sp, #32]
c0de4a24:	2900      	cmp	r1, #0
c0de4a26:	d052      	beq.n	c0de4ace <bagl_draw_with_context+0x36a>
c0de4a28:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
c0de4a2c:	f8b4 e018 	ldrh.w	lr, [r4, #24]
c0de4a30:	b283      	uxth	r3, r0
c0de4a32:	eb08 0005 	add.w	r0, r8, r5
c0de4a36:	88e1      	ldrh	r1, [r4, #6]
c0de4a38:	8925      	ldrh	r5, [r4, #8]
c0de4a3a:	f242 52a1 	movw	r2, #9633	@ 0x25a1
c0de4a3e:	f2c0 0200 	movt	r2, #0
c0de4a42:	1b89      	subs	r1, r1, r6
c0de4a44:	1bed      	subs	r5, r5, r7
c0de4a46:	f04f 0c03 	mov.w	ip, #3
c0de4a4a:	447a      	add	r2, pc
c0de4a4c:	e88d 0023 	stmia.w	sp, {r0, r1, r5}
c0de4a50:	e9cd 2c03 	strd	r2, ip, [sp, #12]
c0de4a54:	4670      	mov	r0, lr
c0de4a56:	4651      	mov	r1, sl
c0de4a58:	465a      	mov	r2, fp
c0de4a5a:	2500      	movs	r5, #0
c0de4a5c:	9505      	str	r5, [sp, #20]
c0de4a5e:	f000 f99d 	bl	c0de4d9c <bagl_draw_string>
c0de4a62:	88e3      	ldrh	r3, [r4, #6]
c0de4a64:	8925      	ldrh	r5, [r4, #8]
c0de4a66:	1b9e      	subs	r6, r3, r6
c0de4a68:	b283      	uxth	r3, r0
c0de4a6a:	1be8      	subs	r0, r5, r7
c0de4a6c:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de4a6e:	9d0d      	ldr	r5, [sp, #52]	@ 0x34
c0de4a70:	f9b4 1004 	ldrsh.w	r1, [r4, #4]
c0de4a74:	442f      	add	r7, r5
c0de4a76:	9d0c      	ldr	r5, [sp, #48]	@ 0x30
c0de4a78:	eb08 0201 	add.w	r2, r8, r1
c0de4a7c:	8b21      	ldrh	r1, [r4, #24]
c0de4a7e:	1b7f      	subs	r7, r7, r5
c0de4a80:	e9cd 2600 	strd	r2, r6, [sp]
c0de4a84:	aa02      	add	r2, sp, #8
c0de4a86:	c2a1      	stmia	r2!, {r0, r5, r7}
c0de4a88:	4608      	mov	r0, r1
c0de4a8a:	4651      	mov	r1, sl
c0de4a8c:	465a      	mov	r2, fp
c0de4a8e:	2700      	movs	r7, #0
c0de4a90:	9705      	str	r7, [sp, #20]
c0de4a92:	f000 f983 	bl	c0de4d9c <bagl_draw_string>
c0de4a96:	e01a      	b.n	c0de4ace <bagl_draw_with_context+0x36a>
c0de4a98:	2000      	movs	r0, #0
c0de4a9a:	900c      	str	r0, [sp, #48]	@ 0x30
c0de4a9c:	e72f      	b.n	c0de48fe <bagl_draw_with_context+0x19a>
c0de4a9e:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4aa2:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4aa6:	7b23      	ldrb	r3, [r4, #12]
c0de4aa8:	6920      	ldr	r0, [r4, #16]
c0de4aaa:	4439      	add	r1, r7
c0de4aac:	2b01      	cmp	r3, #1
c0de4aae:	443a      	add	r2, r7
c0de4ab0:	d004      	beq.n	c0de4abc <bagl_draw_with_context+0x358>
c0de4ab2:	7aa3      	ldrb	r3, [r4, #10]
c0de4ab4:	429f      	cmp	r7, r3
c0de4ab6:	d901      	bls.n	c0de4abc <bagl_draw_with_context+0x358>
c0de4ab8:	1afb      	subs	r3, r7, r3
c0de4aba:	e000      	b.n	c0de4abe <bagl_draw_with_context+0x35a>
c0de4abc:	2300      	movs	r3, #0
c0de4abe:	6966      	ldr	r6, [r4, #20]
c0de4ac0:	25ff      	movs	r5, #255	@ 0xff
c0de4ac2:	e9cd 5300 	strd	r5, r3, [sp]
c0de4ac6:	463b      	mov	r3, r7
c0de4ac8:	9602      	str	r6, [sp, #8]
c0de4aca:	f000 fab7 	bl	c0de503c <bagl_draw_circle_helper>
c0de4ace:	b00e      	add	sp, #56	@ 0x38
c0de4ad0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4ad4:	7b20      	ldrb	r0, [r4, #12]
c0de4ad6:	f8cd e018 	str.w	lr, [sp, #24]
c0de4ada:	2801      	cmp	r0, #1
c0de4adc:	f8cd c024 	str.w	ip, [sp, #36]	@ 0x24
c0de4ae0:	d151      	bne.n	c0de4b86 <bagl_draw_with_context+0x422>
c0de4ae2:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4ae6:	6920      	ldr	r0, [r4, #16]
c0de4ae8:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4aec:	4451      	add	r1, sl
c0de4aee:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4af2:	9600      	str	r6, [sp, #0]
c0de4af4:	f001 ffba 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4af8:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4afc:	8923      	ldrh	r3, [r4, #8]
c0de4afe:	6920      	ldr	r0, [r4, #16]
c0de4b00:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b04:	4452      	add	r2, sl
c0de4b06:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4b0a:	4653      	mov	r3, sl
c0de4b0c:	9700      	str	r7, [sp, #0]
c0de4b0e:	f001 ffad 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4b12:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4b16:	88e1      	ldrh	r1, [r4, #6]
c0de4b18:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4b1c:	8927      	ldrh	r7, [r4, #8]
c0de4b1e:	6920      	ldr	r0, [r4, #16]
c0de4b20:	eba2 020a 	sub.w	r2, r2, sl
c0de4b24:	4411      	add	r1, r2
c0de4b26:	eb0a 0203 	add.w	r2, sl, r3
c0de4b2a:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4b2e:	4653      	mov	r3, sl
c0de4b30:	e08c      	b.n	c0de4c4c <bagl_draw_with_context+0x4e8>
c0de4b32:	46b4      	mov	ip, r6
c0de4b34:	8b20      	ldrh	r0, [r4, #24]
c0de4b36:	f400 4240 	and.w	r2, r0, #49152	@ 0xc000
c0de4b3a:	f5b2 4f00 	cmp.w	r2, #32768	@ 0x8000
c0de4b3e:	d005      	beq.n	c0de4b4c <bagl_draw_with_context+0x3e8>
c0de4b40:	f5b2 4f80 	cmp.w	r2, #16384	@ 0x4000
c0de4b44:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de4b46:	d108      	bne.n	c0de4b5a <bagl_draw_with_context+0x3f6>
c0de4b48:	1b49      	subs	r1, r1, r5
c0de4b4a:	e003      	b.n	c0de4b54 <bagl_draw_with_context+0x3f0>
c0de4b4c:	0849      	lsrs	r1, r1, #1
c0de4b4e:	eba1 0155 	sub.w	r1, r1, r5, lsr #1
c0de4b52:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de4b54:	ea21 75e1 	bic.w	r5, r1, r1, asr #31
c0de4b58:	e000      	b.n	c0de4b5c <bagl_draw_with_context+0x3f8>
c0de4b5a:	2500      	movs	r5, #0
c0de4b5c:	f400 5040 	and.w	r0, r0, #12288	@ 0x3000
c0de4b60:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
c0de4b64:	d006      	beq.n	c0de4b74 <bagl_draw_with_context+0x410>
c0de4b66:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
c0de4b6a:	d109      	bne.n	c0de4b80 <bagl_draw_with_context+0x41c>
c0de4b6c:	8920      	ldrh	r0, [r4, #8]
c0de4b6e:	eba0 0e02 	sub.w	lr, r0, r2
c0de4b72:	e6c7      	b.n	c0de4904 <bagl_draw_with_context+0x1a0>
c0de4b74:	8920      	ldrh	r0, [r4, #8]
c0de4b76:	ea6f 0152 	mvn.w	r1, r2, lsr #1
c0de4b7a:	eb01 0e50 	add.w	lr, r1, r0, lsr #1
c0de4b7e:	e6c1      	b.n	c0de4904 <bagl_draw_with_context+0x1a0>
c0de4b80:	f04f 0e00 	mov.w	lr, #0
c0de4b84:	e6be      	b.n	c0de4904 <bagl_draw_with_context+0x1a0>
c0de4b86:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4b8a:	6960      	ldr	r0, [r4, #20]
c0de4b8c:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4b90:	4451      	add	r1, sl
c0de4b92:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4b96:	9600      	str	r6, [sp, #0]
c0de4b98:	f001 ff68 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4b9c:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4ba0:	8923      	ldrh	r3, [r4, #8]
c0de4ba2:	6960      	ldr	r0, [r4, #20]
c0de4ba4:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4ba8:	4452      	add	r2, sl
c0de4baa:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4bae:	4653      	mov	r3, sl
c0de4bb0:	9700      	str	r7, [sp, #0]
c0de4bb2:	f001 ff5b 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4bb6:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de4bba:	ea6f 020a 	mvn.w	r2, sl
c0de4bbe:	88e1      	ldrh	r1, [r4, #6]
c0de4bc0:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de4bc4:	441a      	add	r2, r3
c0de4bc6:	8923      	ldrh	r3, [r4, #8]
c0de4bc8:	6960      	ldr	r0, [r4, #20]
c0de4bca:	4411      	add	r1, r2
c0de4bcc:	eb0a 0207 	add.w	r2, sl, r7
c0de4bd0:	eba3 074a 	sub.w	r7, r3, sl, lsl #1
c0de4bd4:	4653      	mov	r3, sl
c0de4bd6:	9700      	str	r7, [sp, #0]
c0de4bd8:	f001 ff48 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4bdc:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4be0:	88e3      	ldrh	r3, [r4, #6]
c0de4be2:	6920      	ldr	r0, [r4, #16]
c0de4be4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4be8:	7aa7      	ldrb	r7, [r4, #10]
c0de4bea:	4451      	add	r1, sl
c0de4bec:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4bf0:	9700      	str	r7, [sp, #0]
c0de4bf2:	f001 ff3b 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4bf6:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4bfa:	8923      	ldrh	r3, [r4, #8]
c0de4bfc:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4c00:	441a      	add	r2, r3
c0de4c02:	88e3      	ldrh	r3, [r4, #6]
c0de4c04:	6920      	ldr	r0, [r4, #16]
c0de4c06:	7aa7      	ldrb	r7, [r4, #10]
c0de4c08:	4451      	add	r1, sl
c0de4c0a:	3a01      	subs	r2, #1
c0de4c0c:	eba3 034a 	sub.w	r3, r3, sl, lsl #1
c0de4c10:	9700      	str	r7, [sp, #0]
c0de4c12:	f001 ff2b 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4c16:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4c1a:	8927      	ldrh	r7, [r4, #8]
c0de4c1c:	6920      	ldr	r0, [r4, #16]
c0de4c1e:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4c22:	7aa3      	ldrb	r3, [r4, #10]
c0de4c24:	4452      	add	r2, sl
c0de4c26:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4c2a:	9700      	str	r7, [sp, #0]
c0de4c2c:	f001 ff1e 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4c30:	88e1      	ldrh	r1, [r4, #6]
c0de4c32:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4c36:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4c3a:	8927      	ldrh	r7, [r4, #8]
c0de4c3c:	6920      	ldr	r0, [r4, #16]
c0de4c3e:	4411      	add	r1, r2
c0de4c40:	eb0a 0203 	add.w	r2, sl, r3
c0de4c44:	7aa3      	ldrb	r3, [r4, #10]
c0de4c46:	3901      	subs	r1, #1
c0de4c48:	eba7 074a 	sub.w	r7, r7, sl, lsl #1
c0de4c4c:	9700      	str	r7, [sp, #0]
c0de4c4e:	f001 ff0d 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4c52:	e9dd 7c08 	ldrd	r7, ip, [sp, #32]
c0de4c56:	9e06      	ldr	r6, [sp, #24]
c0de4c58:	f1ba 0f02 	cmp.w	sl, #2
c0de4c5c:	f4ff aea3 	bcc.w	c0de49a6 <bagl_draw_with_context+0x242>
c0de4c60:	7b20      	ldrb	r0, [r4, #12]
c0de4c62:	2500      	movs	r5, #0
c0de4c64:	2801      	cmp	r0, #1
c0de4c66:	d004      	beq.n	c0de4c72 <bagl_draw_with_context+0x50e>
c0de4c68:	7aa0      	ldrb	r0, [r4, #10]
c0de4c6a:	ebba 0000 	subs.w	r0, sl, r0
c0de4c6e:	bf28      	it	cs
c0de4c70:	4605      	movcs	r5, r0
c0de4c72:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4c76:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4c7a:	e9d4 0704 	ldrd	r0, r7, [r4, #16]
c0de4c7e:	23c0      	movs	r3, #192	@ 0xc0
c0de4c80:	4451      	add	r1, sl
c0de4c82:	4452      	add	r2, sl
c0de4c84:	e9cd 3500 	strd	r3, r5, [sp]
c0de4c88:	4653      	mov	r3, sl
c0de4c8a:	9702      	str	r7, [sp, #8]
c0de4c8c:	f000 f9d6 	bl	c0de503c <bagl_draw_circle_helper>
c0de4c90:	88e1      	ldrh	r1, [r4, #6]
c0de4c92:	7aa2      	ldrb	r2, [r4, #10]
c0de4c94:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de4c98:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de4c9c:	6920      	ldr	r0, [r4, #16]
c0de4c9e:	4419      	add	r1, r3
c0de4ca0:	4452      	add	r2, sl
c0de4ca2:	6966      	ldr	r6, [r4, #20]
c0de4ca4:	2330      	movs	r3, #48	@ 0x30
c0de4ca6:	1a89      	subs	r1, r1, r2
c0de4ca8:	eb0a 0207 	add.w	r2, sl, r7
c0de4cac:	e9cd 3500 	strd	r3, r5, [sp]
c0de4cb0:	4653      	mov	r3, sl
c0de4cb2:	9602      	str	r6, [sp, #8]
c0de4cb4:	f000 f9c2 	bl	c0de503c <bagl_draw_circle_helper>
c0de4cb8:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de4cbc:	8923      	ldrh	r3, [r4, #8]
c0de4cbe:	7aa7      	ldrb	r7, [r4, #10]
c0de4cc0:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de4cc4:	441a      	add	r2, r3
c0de4cc6:	eb0a 0307 	add.w	r3, sl, r7
c0de4cca:	6920      	ldr	r0, [r4, #16]
c0de4ccc:	6967      	ldr	r7, [r4, #20]
c0de4cce:	1ad2      	subs	r2, r2, r3
c0de4cd0:	230c      	movs	r3, #12
c0de4cd2:	4451      	add	r1, sl
c0de4cd4:	e9cd 3500 	strd	r3, r5, [sp]
c0de4cd8:	4653      	mov	r3, sl
c0de4cda:	9702      	str	r7, [sp, #8]
c0de4cdc:	f000 f9ae 	bl	c0de503c <bagl_draw_circle_helper>
c0de4ce0:	88e1      	ldrh	r1, [r4, #6]
c0de4ce2:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de4ce6:	7aa7      	ldrb	r7, [r4, #10]
c0de4ce8:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de4cec:	4411      	add	r1, r2
c0de4cee:	eb0a 0207 	add.w	r2, sl, r7
c0de4cf2:	8927      	ldrh	r7, [r4, #8]
c0de4cf4:	6920      	ldr	r0, [r4, #16]
c0de4cf6:	1a89      	subs	r1, r1, r2
c0de4cf8:	1a9a      	subs	r2, r3, r2
c0de4cfa:	6966      	ldr	r6, [r4, #20]
c0de4cfc:	2303      	movs	r3, #3
c0de4cfe:	443a      	add	r2, r7
c0de4d00:	e9cd 3500 	strd	r3, r5, [sp]
c0de4d04:	4653      	mov	r3, sl
c0de4d06:	9602      	str	r6, [sp, #8]
c0de4d08:	f000 f998 	bl	c0de503c <bagl_draw_circle_helper>
c0de4d0c:	e9dd 7c08 	ldrd	r7, ip, [sp, #32]
c0de4d10:	9e06      	ldr	r6, [sp, #24]
c0de4d12:	e648      	b.n	c0de49a6 <bagl_draw_with_context+0x242>
c0de4d14:	46c4      	mov	ip, r8
c0de4d16:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4d1a:	46bb      	mov	fp, r7
c0de4d1c:	e70a      	b.n	c0de4b34 <bagl_draw_with_context+0x3d0>
	...

c0de4d20 <bagl_get_font>:
c0de4d20:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4d22:	b081      	sub	sp, #4
c0de4d24:	4604      	mov	r4, r0
c0de4d26:	f244 00e6 	movw	r0, #16614	@ 0x40e6
c0de4d2a:	f2c0 0000 	movt	r0, #0
c0de4d2e:	4478      	add	r0, pc
c0de4d30:	f244 07ca 	movw	r7, #16586	@ 0x40ca
c0de4d34:	6806      	ldr	r6, [r0, #0]
c0de4d36:	f2c0 0700 	movt	r7, #0
c0de4d3a:	f36f 341f 	bfc	r4, #12, #20
c0de4d3e:	447f      	add	r7, pc
c0de4d40:	b186      	cbz	r6, c0de4d64 <bagl_get_font+0x44>
c0de4d42:	eb07 0086 	add.w	r0, r7, r6, lsl #2
c0de4d46:	f850 5c04 	ldr.w	r5, [r0, #-4]
c0de4d4a:	4628      	mov	r0, r5
c0de4d4c:	f001 fd6e 	bl	c0de682c <pic>
c0de4d50:	7880      	ldrb	r0, [r0, #2]
c0de4d52:	3e01      	subs	r6, #1
c0de4d54:	4284      	cmp	r4, r0
c0de4d56:	d1f3      	bne.n	c0de4d40 <bagl_get_font+0x20>
c0de4d58:	4628      	mov	r0, r5
c0de4d5a:	b001      	add	sp, #4
c0de4d5c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4d60:	f001 bd64 	b.w	c0de682c <pic>
c0de4d64:	2000      	movs	r0, #0
c0de4d66:	b001      	add	sp, #4
c0de4d68:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4d6a <bagl_compute_line_width>:
c0de4d6a:	b580      	push	{r7, lr}
c0de4d6c:	b086      	sub	sp, #24
c0de4d6e:	469c      	mov	ip, r3
c0de4d70:	f04f 0e00 	mov.w	lr, #0
c0de4d74:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4d78:	e9cd 3100 	strd	r3, r1, [sp]
c0de4d7c:	e9cd e202 	strd	lr, r2, [sp, #8]
c0de4d80:	2100      	movs	r1, #0
c0de4d82:	2200      	movs	r2, #0
c0de4d84:	f243 0339 	movw	r3, #12345	@ 0x3039
c0de4d88:	f8cd e014 	str.w	lr, [sp, #20]
c0de4d8c:	f8cd c010 	str.w	ip, [sp, #16]
c0de4d90:	f000 f804 	bl	c0de4d9c <bagl_draw_string>
c0de4d94:	b280      	uxth	r0, r0
c0de4d96:	b006      	add	sp, #24
c0de4d98:	bd80      	pop	{r7, pc}
	...

c0de4d9c <bagl_draw_string>:
c0de4d9c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4da0:	b0a4      	sub	sp, #144	@ 0x90
c0de4da2:	9f2c      	ldr	r7, [sp, #176]	@ 0xb0
c0de4da4:	f243 0539 	movw	r5, #12345	@ 0x3039
c0de4da8:	ea83 0605 	eor.w	r6, r3, r5
c0de4dac:	407d      	eors	r5, r7
c0de4dae:	4335      	orrs	r5, r6
c0de4db0:	462c      	mov	r4, r5
c0de4db2:	bf08      	it	eq
c0de4db4:	462f      	moveq	r7, r5
c0de4db6:	9711      	str	r7, [sp, #68]	@ 0x44
c0de4db8:	9308      	str	r3, [sp, #32]
c0de4dba:	bf18      	it	ne
c0de4dbc:	461c      	movne	r4, r3
c0de4dbe:	9206      	str	r2, [sp, #24]
c0de4dc0:	e9cd 2114 	strd	r2, r1, [sp, #80]	@ 0x50
c0de4dc4:	f7ff ffac 	bl	c0de4d20 <bagl_get_font>
c0de4dc8:	2800      	cmp	r0, #0
c0de4dca:	f000 8125 	beq.w	c0de5018 <bagl_draw_string+0x27c>
c0de4dce:	f8dd a0c0 	ldr.w	sl, [sp, #192]	@ 0xc0
c0de4dd2:	4606      	mov	r6, r0
c0de4dd4:	fab5 f085 	clz	r0, r5
c0de4dd8:	f1ba 0f00 	cmp.w	sl, #0
c0de4ddc:	ea4f 1050 	mov.w	r0, r0, lsr #5
c0de4de0:	9010      	str	r0, [sp, #64]	@ 0x40
c0de4de2:	f000 811c 	beq.w	c0de501e <bagl_draw_string+0x282>
c0de4de6:	e9dd 102d 	ldrd	r1, r0, [sp, #180]	@ 0xb4
c0de4dea:	78f2      	ldrb	r2, [r6, #3]
c0de4dec:	1867      	adds	r7, r4, r1
c0de4dee:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de4df0:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
c0de4df2:	4408      	add	r0, r1
c0de4df4:	9005      	str	r0, [sp, #20]
c0de4df6:	2001      	movs	r0, #1
c0de4df8:	46a4      	mov	ip, r4
c0de4dfa:	4090      	lsls	r0, r2
c0de4dfc:	920f      	str	r2, [sp, #60]	@ 0x3c
c0de4dfe:	9007      	str	r0, [sp, #28]
c0de4e00:	960c      	str	r6, [sp, #48]	@ 0x30
c0de4e02:	970e      	str	r7, [sp, #56]	@ 0x38
c0de4e04:	f813 5b01 	ldrb.w	r5, [r3], #1
c0de4e08:	79b1      	ldrb	r1, [r6, #6]
c0de4e0a:	f896 e004 	ldrb.w	lr, [r6, #4]
c0de4e0e:	428d      	cmp	r5, r1
c0de4e10:	d302      	bcc.n	c0de4e18 <bagl_draw_string+0x7c>
c0de4e12:	79f0      	ldrb	r0, [r6, #7]
c0de4e14:	4285      	cmp	r5, r0
c0de4e16:	d919      	bls.n	c0de4e4c <bagl_draw_string+0xb0>
c0de4e18:	2dc0      	cmp	r5, #192	@ 0xc0
c0de4e1a:	d303      	bcc.n	c0de4e24 <bagl_draw_string+0x88>
c0de4e1c:	f005 043f 	and.w	r4, r5, #63	@ 0x3f
c0de4e20:	e005      	b.n	c0de4e2e <bagl_draw_string+0x92>
c0de4e22:	bf00      	nop
c0de4e24:	b268      	sxtb	r0, r5
c0de4e26:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de4e2a:	dd25      	ble.n	c0de4e78 <bagl_draw_string+0xdc>
c0de4e2c:	2400      	movs	r4, #0
c0de4e2e:	2000      	movs	r0, #0
c0de4e30:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4e32:	9012      	str	r0, [sp, #72]	@ 0x48
c0de4e34:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de4e36:	f04f 0800 	mov.w	r8, #0
c0de4e3a:	fb0e f000 	mul.w	r0, lr, r0
c0de4e3e:	fb00 f504 	mul.w	r5, r0, r4
c0de4e42:	2000      	movs	r0, #0
c0de4e44:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de4e46:	f04f 0b00 	mov.w	fp, #0
c0de4e4a:	e08d      	b.n	c0de4f68 <bagl_draw_string+0x1cc>
c0de4e4c:	68f0      	ldr	r0, [r6, #12]
c0de4e4e:	f8cd c034 	str.w	ip, [sp, #52]	@ 0x34
c0de4e52:	e9cd e30a 	strd	lr, r3, [sp, #40]	@ 0x28
c0de4e56:	1a6f      	subs	r7, r5, r1
c0de4e58:	f001 fce8 	bl	c0de682c <pic>
c0de4e5c:	68b1      	ldr	r1, [r6, #8]
c0de4e5e:	4680      	mov	r8, r0
c0de4e60:	4608      	mov	r0, r1
c0de4e62:	f001 fce3 	bl	c0de682c <pic>
c0de4e66:	79b1      	ldrb	r1, [r6, #6]
c0de4e68:	79f2      	ldrb	r2, [r6, #7]
c0de4e6a:	f850 5027 	ldr.w	r5, [r0, r7, lsl #2]
c0de4e6e:	1a50      	subs	r0, r2, r1
c0de4e70:	4287      	cmp	r7, r0
c0de4e72:	d132      	bne.n	c0de4eda <bagl_draw_string+0x13e>
c0de4e74:	8834      	ldrh	r4, [r6, #0]
c0de4e76:	e038      	b.n	c0de4eea <bagl_draw_string+0x14e>
c0de4e78:	06a8      	lsls	r0, r5, #26
c0de4e7a:	f04f 000f 	mov.w	r0, #15
c0de4e7e:	46f3      	mov	fp, lr
c0de4e80:	f8cd c034 	str.w	ip, [sp, #52]	@ 0x34
c0de4e84:	4698      	mov	r8, r3
c0de4e86:	bf58      	it	pl
c0de4e88:	200e      	movpl	r0, #14
c0de4e8a:	f7ff ff49 	bl	c0de4d20 <bagl_get_font>
c0de4e8e:	2800      	cmp	r0, #0
c0de4e90:	f000 80b9 	beq.w	c0de5006 <bagl_draw_string+0x26a>
c0de4e94:	4607      	mov	r7, r0
c0de4e96:	68c0      	ldr	r0, [r0, #12]
c0de4e98:	f001 fcc8 	bl	c0de682c <pic>
c0de4e9c:	68b9      	ldr	r1, [r7, #8]
c0de4e9e:	4604      	mov	r4, r0
c0de4ea0:	4608      	mov	r0, r1
c0de4ea2:	f001 fcc3 	bl	c0de682c <pic>
c0de4ea6:	f005 051f 	and.w	r5, r5, #31
c0de4eaa:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
c0de4eae:	f3c0 018b 	ubfx	r1, r0, #2, #12
c0de4eb2:	68b8      	ldr	r0, [r7, #8]
c0de4eb4:	4421      	add	r1, r4
c0de4eb6:	9112      	str	r1, [sp, #72]	@ 0x48
c0de4eb8:	f001 fcb8 	bl	c0de682c <pic>
c0de4ebc:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
c0de4ec0:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4ec2:	f3c0 3484 	ubfx	r4, r0, #14, #5
c0de4ec6:	7970      	ldrb	r0, [r6, #5]
c0de4ec8:	7979      	ldrb	r1, [r7, #5]
c0de4eca:	f897 e004 	ldrb.w	lr, [r7, #4]
c0de4ece:	4410      	add	r0, r2
c0de4ed0:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de4ed4:	1a42      	subs	r2, r0, r1
c0de4ed6:	4643      	mov	r3, r8
c0de4ed8:	e7ac      	b.n	c0de4e34 <bagl_draw_string+0x98>
c0de4eda:	68b0      	ldr	r0, [r6, #8]
c0de4edc:	f001 fca6 	bl	c0de682c <pic>
c0de4ee0:	eb00 0087 	add.w	r0, r0, r7, lsl #2
c0de4ee4:	6840      	ldr	r0, [r0, #4]
c0de4ee6:	f3c0 048b 	ubfx	r4, r0, #2, #12
c0de4eea:	f3c5 018b 	ubfx	r1, r5, #2, #12
c0de4eee:	68b0      	ldr	r0, [r6, #8]
c0de4ef0:	4441      	add	r1, r8
c0de4ef2:	9112      	str	r1, [sp, #72]	@ 0x48
c0de4ef4:	f001 fc9a 	bl	c0de682c <pic>
c0de4ef8:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4efc:	f3c0 008b 	ubfx	r0, r0, #2, #12
c0de4f00:	1a21      	subs	r1, r4, r0
c0de4f02:	68b0      	ldr	r0, [r6, #8]
c0de4f04:	00cd      	lsls	r5, r1, #3
c0de4f06:	f001 fc91 	bl	c0de682c <pic>
c0de4f0a:	f850 1027 	ldr.w	r1, [r0, r7, lsl #2]
c0de4f0e:	68b0      	ldr	r0, [r6, #8]
c0de4f10:	f3c1 3184 	ubfx	r1, r1, #14, #5
c0de4f14:	9109      	str	r1, [sp, #36]	@ 0x24
c0de4f16:	f001 fc89 	bl	c0de682c <pic>
c0de4f1a:	f850 1027 	ldr.w	r1, [r0, r7, lsl #2]
c0de4f1e:	68b0      	ldr	r0, [r6, #8]
c0de4f20:	f3c1 48c3 	ubfx	r8, r1, #19, #4
c0de4f24:	f001 fc82 	bl	c0de682c <pic>
c0de4f28:	f850 4027 	ldr.w	r4, [r0, r7, lsl #2]
c0de4f2c:	68b0      	ldr	r0, [r6, #8]
c0de4f2e:	0f21      	lsrs	r1, r4, #28
c0de4f30:	9113      	str	r1, [sp, #76]	@ 0x4c
c0de4f32:	f001 fc7b 	bl	c0de682c <pic>
c0de4f36:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4f3a:	7971      	ldrb	r1, [r6, #5]
c0de4f3c:	f3c0 50c4 	ubfx	r0, r0, #23, #5
c0de4f40:	1a41      	subs	r1, r0, r1
c0de4f42:	68b0      	ldr	r0, [r6, #8]
c0de4f44:	f101 0b09 	add.w	fp, r1, #9
c0de4f48:	f001 fc70 	bl	c0de682c <pic>
c0de4f4c:	f850 0027 	ldr.w	r0, [r0, r7, lsl #2]
c0de4f50:	9a09      	ldr	r2, [sp, #36]	@ 0x24
c0de4f52:	f3c0 40c3 	ubfx	r0, r0, #19, #4
c0de4f56:	eb00 7014 	add.w	r0, r0, r4, lsr #28
c0de4f5a:	1a10      	subs	r0, r2, r0
c0de4f5c:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4f5e:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de4f62:	e9dd e30a 	ldrd	lr, r3, [sp, #40]	@ 0x28
c0de4f66:	b2c4      	uxtb	r4, r0
c0de4f68:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de4f6a:	b138      	cbz	r0, c0de4f7c <bagl_draw_string+0x1e0>
c0de4f6c:	2f00      	cmp	r7, #0
c0de4f6e:	dd2f      	ble.n	c0de4fd0 <bagl_draw_string+0x234>
c0de4f70:	eb08 000c 	add.w	r0, r8, ip
c0de4f74:	1901      	adds	r1, r0, r4
c0de4f76:	42b9      	cmp	r1, r7
c0de4f78:	dd2c      	ble.n	c0de4fd4 <bagl_draw_string+0x238>
c0de4f7a:	e05a      	b.n	c0de5032 <bagl_draw_string+0x296>
c0de4f7c:	eb08 000c 	add.w	r0, r8, ip
c0de4f80:	4420      	add	r0, r4
c0de4f82:	42b8      	cmp	r0, r7
c0de4f84:	dd0a      	ble.n	c0de4f9c <bagl_draw_string+0x200>
c0de4f86:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de4f88:	9905      	ldr	r1, [sp, #20]
c0de4f8a:	320c      	adds	r2, #12
c0de4f8c:	eb02 000e 	add.w	r0, r2, lr
c0de4f90:	4458      	add	r0, fp
c0de4f92:	9f08      	ldr	r7, [sp, #32]
c0de4f94:	4288      	cmp	r0, r1
c0de4f96:	9211      	str	r2, [sp, #68]	@ 0x44
c0de4f98:	dd01      	ble.n	c0de4f9e <bagl_draw_string+0x202>
c0de4f9a:	e043      	b.n	c0de5024 <bagl_draw_string+0x288>
c0de4f9c:	4667      	mov	r7, ip
c0de4f9e:	9812      	ldr	r0, [sp, #72]	@ 0x48
c0de4fa0:	461e      	mov	r6, r3
c0de4fa2:	b1e0      	cbz	r0, c0de4fde <bagl_draw_string+0x242>
c0de4fa4:	eb02 010b 	add.w	r1, r2, fp
c0de4fa8:	9a07      	ldr	r2, [sp, #28]
c0de4faa:	eb07 0008 	add.w	r0, r7, r8
c0de4fae:	9200      	str	r2, [sp, #0]
c0de4fb0:	aa14      	add	r2, sp, #80	@ 0x50
c0de4fb2:	9201      	str	r2, [sp, #4]
c0de4fb4:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
c0de4fb6:	b2ad      	uxth	r5, r5
c0de4fb8:	9202      	str	r2, [sp, #8]
c0de4fba:	9a12      	ldr	r2, [sp, #72]	@ 0x48
c0de4fbc:	4673      	mov	r3, lr
c0de4fbe:	9203      	str	r2, [sp, #12]
c0de4fc0:	4622      	mov	r2, r4
c0de4fc2:	9504      	str	r5, [sp, #16]
c0de4fc4:	f001 fd39 	bl	c0de6a3a <bagl_hal_draw_bitmap_within_rect>
c0de4fc8:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de4fcc:	d00e      	beq.n	c0de4fec <bagl_draw_string+0x250>
c0de4fce:	e02f      	b.n	c0de5030 <bagl_draw_string+0x294>
c0de4fd0:	eb08 000c 	add.w	r0, r8, ip
c0de4fd4:	9913      	ldr	r1, [sp, #76]	@ 0x4c
c0de4fd6:	4408      	add	r0, r1
c0de4fd8:	eb00 0c04 	add.w	ip, r0, r4
c0de4fdc:	e00e      	b.n	c0de4ffc <bagl_draw_string+0x260>
c0de4fde:	9806      	ldr	r0, [sp, #24]
c0de4fe0:	4639      	mov	r1, r7
c0de4fe2:	4623      	mov	r3, r4
c0de4fe4:	f8cd e000 	str.w	lr, [sp]
c0de4fe8:	f001 fd40 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de4fec:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de4fee:	4633      	mov	r3, r6
c0de4ff0:	4440      	add	r0, r8
c0de4ff2:	4420      	add	r0, r4
c0de4ff4:	eb00 0c07 	add.w	ip, r0, r7
c0de4ff8:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de4ffa:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de4ffc:	f1ba 0a01 	subs.w	sl, sl, #1
c0de5000:	f47f af00 	bne.w	c0de4e04 <bagl_draw_string+0x68>
c0de5004:	e00c      	b.n	c0de5020 <bagl_draw_string+0x284>
c0de5006:	2000      	movs	r0, #0
c0de5008:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de500a:	e9dd c70d 	ldrd	ip, r7, [sp, #52]	@ 0x34
c0de500e:	2400      	movs	r4, #0
c0de5010:	9012      	str	r0, [sp, #72]	@ 0x48
c0de5012:	4643      	mov	r3, r8
c0de5014:	46de      	mov	lr, fp
c0de5016:	e70d      	b.n	c0de4e34 <bagl_draw_string+0x98>
c0de5018:	f04f 0c00 	mov.w	ip, #0
c0de501c:	e009      	b.n	c0de5032 <bagl_draw_string+0x296>
c0de501e:	46a4      	mov	ip, r4
c0de5020:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de5022:	b930      	cbnz	r0, c0de5032 <bagl_draw_string+0x296>
c0de5024:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de5026:	fa1f f08c 	uxth.w	r0, ip
c0de502a:	ea40 4c01 	orr.w	ip, r0, r1, lsl #16
c0de502e:	e000      	b.n	c0de5032 <bagl_draw_string+0x296>
c0de5030:	46bc      	mov	ip, r7
c0de5032:	4660      	mov	r0, ip
c0de5034:	b024      	add	sp, #144	@ 0x90
c0de5036:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de503c <bagl_draw_circle_helper>:
c0de503c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5040:	b098      	sub	sp, #96	@ 0x60
c0de5042:	9217      	str	r2, [sp, #92]	@ 0x5c
c0de5044:	9a21      	ldr	r2, [sp, #132]	@ 0x84
c0de5046:	4607      	mov	r7, r0
c0de5048:	1a9e      	subs	r6, r3, r2
c0de504a:	2a00      	cmp	r2, #0
c0de504c:	4610      	mov	r0, r2
c0de504e:	bf18      	it	ne
c0de5050:	2001      	movne	r0, #1
c0de5052:	2500      	movs	r5, #0
c0de5054:	2e00      	cmp	r6, #0
c0de5056:	9612      	str	r6, [sp, #72]	@ 0x48
c0de5058:	bfc8      	it	gt
c0de505a:	2501      	movgt	r5, #1
c0de505c:	2b00      	cmp	r3, #0
c0de505e:	9313      	str	r3, [sp, #76]	@ 0x4c
c0de5060:	9116      	str	r1, [sp, #88]	@ 0x58
c0de5062:	f100 81c2 	bmi.w	c0de53ea <bagl_draw_circle_helper+0x3ae>
c0de5066:	9e13      	ldr	r6, [sp, #76]	@ 0x4c
c0de5068:	9920      	ldr	r1, [sp, #128]	@ 0x80
c0de506a:	4028      	ands	r0, r5
c0de506c:	9015      	str	r0, [sp, #84]	@ 0x54
c0de506e:	f1c6 0001 	rsb	r0, r6, #1
c0de5072:	9011      	str	r0, [sp, #68]	@ 0x44
c0de5074:	f001 0001 	and.w	r0, r1, #1
c0de5078:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de507a:	9010      	str	r0, [sp, #64]	@ 0x40
c0de507c:	f001 0002 	and.w	r0, r1, #2
c0de5080:	900c      	str	r0, [sp, #48]	@ 0x30
c0de5082:	1e58      	subs	r0, r3, #1
c0de5084:	9007      	str	r0, [sp, #28]
c0de5086:	f001 0004 	and.w	r0, r1, #4
c0de508a:	900d      	str	r0, [sp, #52]	@ 0x34
c0de508c:	f001 0008 	and.w	r0, r1, #8
c0de5090:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de5092:	f001 0010 	and.w	r0, r1, #16
c0de5096:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de5098:	f001 0020 	and.w	r0, r1, #32
c0de509c:	900a      	str	r0, [sp, #40]	@ 0x28
c0de509e:	f001 0040 	and.w	r0, r1, #64	@ 0x40
c0de50a2:	900e      	str	r0, [sp, #56]	@ 0x38
c0de50a4:	f001 0080 	and.w	r0, r1, #128	@ 0x80
c0de50a8:	9009      	str	r0, [sp, #36]	@ 0x24
c0de50aa:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de50ac:	1b91      	subs	r1, r2, r6
c0de50ae:	4410      	add	r0, r2
c0de50b0:	1b80      	subs	r0, r0, r6
c0de50b2:	9103      	str	r1, [sp, #12]
c0de50b4:	f1c3 0101 	rsb	r1, r3, #1
c0de50b8:	e9cd 1005 	strd	r1, r0, [sp, #20]
c0de50bc:	3001      	adds	r0, #1
c0de50be:	f04f 0b00 	mov.w	fp, #0
c0de50c2:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de50c6:	f04f 0a01 	mov.w	sl, #1
c0de50ca:	f04f 0800 	mov.w	r8, #0
c0de50ce:	9004      	str	r0, [sp, #16]
c0de50d0:	9708      	str	r7, [sp, #32]
c0de50d2:	bf00      	nop
c0de50d4:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de50d6:	1c4c      	adds	r4, r1, #1
c0de50d8:	9114      	str	r1, [sp, #80]	@ 0x50
c0de50da:	b928      	cbnz	r0, c0de50e8 <bagl_draw_circle_helper+0xac>
c0de50dc:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de50de:	2800      	cmp	r0, #0
c0de50e0:	d053      	beq.n	c0de518a <bagl_draw_circle_helper+0x14e>
c0de50e2:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de50e4:	bb18      	cbnz	r0, c0de512e <bagl_draw_circle_helper+0xf2>
c0de50e6:	e046      	b.n	c0de5176 <bagl_draw_circle_helper+0x13a>
c0de50e8:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de50ea:	b3c8      	cbz	r0, c0de5160 <bagl_draw_circle_helper+0x124>
c0de50ec:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de50ee:	46a2      	mov	sl, r4
c0de50f0:	4408      	add	r0, r1
c0de50f2:	1c45      	adds	r5, r0, #1
c0de50f4:	9807      	ldr	r0, [sp, #28]
c0de50f6:	463c      	mov	r4, r7
c0de50f8:	9f16      	ldr	r7, [sp, #88]	@ 0x58
c0de50fa:	1a33      	subs	r3, r6, r0
c0de50fc:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de50fe:	f04f 0c01 	mov.w	ip, #1
c0de5102:	4639      	mov	r1, r7
c0de5104:	462a      	mov	r2, r5
c0de5106:	f8cd c000 	str.w	ip, [sp]
c0de510a:	f001 fcaf 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de510e:	9905      	ldr	r1, [sp, #20]
c0de5110:	19f0      	adds	r0, r6, r7
c0de5112:	4627      	mov	r7, r4
c0de5114:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5116:	4654      	mov	r4, sl
c0de5118:	f04f 0a01 	mov.w	sl, #1
c0de511c:	4401      	add	r1, r0
c0de511e:	4638      	mov	r0, r7
c0de5120:	462a      	mov	r2, r5
c0de5122:	f8cd a000 	str.w	sl, [sp]
c0de5126:	f001 fca1 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de512a:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de512c:	b368      	cbz	r0, c0de518a <bagl_draw_circle_helper+0x14e>
c0de512e:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de5130:	42b0      	cmp	r0, r6
c0de5132:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5134:	eb06 0500 	add.w	r5, r6, r0
c0de5138:	d00a      	beq.n	c0de5150 <bagl_draw_circle_helper+0x114>
c0de513a:	9803      	ldr	r0, [sp, #12]
c0de513c:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de513e:	462a      	mov	r2, r5
c0de5140:	4408      	add	r0, r1
c0de5142:	1c83      	adds	r3, r0, #2
c0de5144:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de5146:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de5148:	f8cd a000 	str.w	sl, [sp]
c0de514c:	f001 fc8e 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5150:	9806      	ldr	r0, [sp, #24]
c0de5152:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de5154:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5156:	4408      	add	r0, r1
c0de5158:	1c81      	adds	r1, r0, #2
c0de515a:	4638      	mov	r0, r7
c0de515c:	462a      	mov	r2, r5
c0de515e:	e010      	b.n	c0de5182 <bagl_draw_circle_helper+0x146>
c0de5160:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5162:	4633      	mov	r3, r6
c0de5164:	1842      	adds	r2, r0, r1
c0de5166:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de5168:	4638      	mov	r0, r7
c0de516a:	f8cd a000 	str.w	sl, [sp]
c0de516e:	f001 fc7d 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5172:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de5174:	b148      	cbz	r0, c0de518a <bagl_draw_circle_helper+0x14e>
c0de5176:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5178:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de517a:	4430      	add	r0, r6
c0de517c:	1e42      	subs	r2, r0, #1
c0de517e:	4638      	mov	r0, r7
c0de5180:	4623      	mov	r3, r4
c0de5182:	f8cd a000 	str.w	sl, [sp]
c0de5186:	f001 fc71 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de518a:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de518c:	b930      	cbnz	r0, c0de519c <bagl_draw_circle_helper+0x160>
c0de518e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de5190:	2800      	cmp	r0, #0
c0de5192:	d05d      	beq.n	c0de5250 <bagl_draw_circle_helper+0x214>
c0de5194:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5196:	bb30      	cbnz	r0, c0de51e6 <bagl_draw_circle_helper+0x1aa>
c0de5198:	e038      	b.n	c0de520c <bagl_draw_circle_helper+0x1d0>
c0de519a:	bf00      	nop
c0de519c:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de519e:	2800      	cmp	r0, #0
c0de51a0:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de51a2:	eba0 0506 	sub.w	r5, r0, r6
c0de51a6:	d025      	beq.n	c0de51f4 <bagl_draw_circle_helper+0x1b8>
c0de51a8:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de51aa:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de51ac:	f8dd a01c 	ldr.w	sl, [sp, #28]
c0de51b0:	4408      	add	r0, r1
c0de51b2:	1c47      	adds	r7, r0, #1
c0de51b4:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de51b6:	f04f 0c01 	mov.w	ip, #1
c0de51ba:	eba6 030a 	sub.w	r3, r6, sl
c0de51be:	4629      	mov	r1, r5
c0de51c0:	463a      	mov	r2, r7
c0de51c2:	f8cd c000 	str.w	ip, [sp]
c0de51c6:	f001 fc51 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de51ca:	9808      	ldr	r0, [sp, #32]
c0de51cc:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de51ce:	eba5 010a 	sub.w	r1, r5, sl
c0de51d2:	f04f 0a01 	mov.w	sl, #1
c0de51d6:	463a      	mov	r2, r7
c0de51d8:	9f08      	ldr	r7, [sp, #32]
c0de51da:	f8cd a000 	str.w	sl, [sp]
c0de51de:	f001 fc45 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de51e2:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de51e4:	b3a0      	cbz	r0, c0de5250 <bagl_draw_circle_helper+0x214>
c0de51e6:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de51e8:	42b0      	cmp	r0, r6
c0de51ea:	d118      	bne.n	c0de521e <bagl_draw_circle_helper+0x1e2>
c0de51ec:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de51ee:	1835      	adds	r5, r6, r0
c0de51f0:	e024      	b.n	c0de523c <bagl_draw_circle_helper+0x200>
c0de51f2:	bf00      	nop
c0de51f4:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de51f6:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de51f8:	4633      	mov	r3, r6
c0de51fa:	1842      	adds	r2, r0, r1
c0de51fc:	4638      	mov	r0, r7
c0de51fe:	4629      	mov	r1, r5
c0de5200:	f8cd a000 	str.w	sl, [sp]
c0de5204:	f001 fc32 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5208:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de520a:	b308      	cbz	r0, c0de5250 <bagl_draw_circle_helper+0x214>
c0de520c:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de520e:	4623      	mov	r3, r4
c0de5210:	eb00 010b 	add.w	r1, r0, fp
c0de5214:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5216:	4430      	add	r0, r6
c0de5218:	1e42      	subs	r2, r0, #1
c0de521a:	4638      	mov	r0, r7
c0de521c:	e014      	b.n	c0de5248 <bagl_draw_circle_helper+0x20c>
c0de521e:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5220:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de5222:	eb00 010b 	add.w	r1, r0, fp
c0de5226:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5228:	f8cd a000 	str.w	sl, [sp]
c0de522c:	1835      	adds	r5, r6, r0
c0de522e:	9803      	ldr	r0, [sp, #12]
c0de5230:	4410      	add	r0, r2
c0de5232:	1c83      	adds	r3, r0, #2
c0de5234:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de5236:	462a      	mov	r2, r5
c0de5238:	f001 fc18 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de523c:	9804      	ldr	r0, [sp, #16]
c0de523e:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5240:	eb00 010b 	add.w	r1, r0, fp
c0de5244:	4638      	mov	r0, r7
c0de5246:	462a      	mov	r2, r5
c0de5248:	f8cd a000 	str.w	sl, [sp]
c0de524c:	f001 fc0e 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5250:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de5252:	b928      	cbnz	r0, c0de5260 <bagl_draw_circle_helper+0x224>
c0de5254:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de5256:	2800      	cmp	r0, #0
c0de5258:	d055      	beq.n	c0de5306 <bagl_draw_circle_helper+0x2ca>
c0de525a:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de525c:	bb28      	cbnz	r0, c0de52aa <bagl_draw_circle_helper+0x26e>
c0de525e:	e049      	b.n	c0de52f4 <bagl_draw_circle_helper+0x2b8>
c0de5260:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5262:	f8dd a05c 	ldr.w	sl, [sp, #92]	@ 0x5c
c0de5266:	44da      	add	sl, fp
c0de5268:	b3c0      	cbz	r0, c0de52dc <bagl_draw_circle_helper+0x2a0>
c0de526a:	9807      	ldr	r0, [sp, #28]
c0de526c:	f8cd 8008 	str.w	r8, [sp, #8]
c0de5270:	46a0      	mov	r8, r4
c0de5272:	463c      	mov	r4, r7
c0de5274:	9f16      	ldr	r7, [sp, #88]	@ 0x58
c0de5276:	1a33      	subs	r3, r6, r0
c0de5278:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de527a:	4639      	mov	r1, r7
c0de527c:	4652      	mov	r2, sl
c0de527e:	2501      	movs	r5, #1
c0de5280:	9500      	str	r5, [sp, #0]
c0de5282:	f001 fbf3 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5286:	9905      	ldr	r1, [sp, #20]
c0de5288:	19f0      	adds	r0, r6, r7
c0de528a:	4627      	mov	r7, r4
c0de528c:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de528e:	4644      	mov	r4, r8
c0de5290:	f8dd 8008 	ldr.w	r8, [sp, #8]
c0de5294:	4401      	add	r1, r0
c0de5296:	4638      	mov	r0, r7
c0de5298:	4652      	mov	r2, sl
c0de529a:	f04f 0a01 	mov.w	sl, #1
c0de529e:	f8cd a000 	str.w	sl, [sp]
c0de52a2:	f001 fbe3 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de52a6:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de52a8:	b368      	cbz	r0, c0de5306 <bagl_draw_circle_helper+0x2ca>
c0de52aa:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de52ac:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de52ae:	42b0      	cmp	r0, r6
c0de52b0:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de52b2:	eba0 0506 	sub.w	r5, r0, r6
c0de52b6:	d00a      	beq.n	c0de52ce <bagl_draw_circle_helper+0x292>
c0de52b8:	9803      	ldr	r0, [sp, #12]
c0de52ba:	462a      	mov	r2, r5
c0de52bc:	4408      	add	r0, r1
c0de52be:	1c83      	adds	r3, r0, #2
c0de52c0:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de52c2:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de52c4:	f8cd a000 	str.w	sl, [sp]
c0de52c8:	f001 fbd0 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de52cc:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de52ce:	9806      	ldr	r0, [sp, #24]
c0de52d0:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de52d2:	4408      	add	r0, r1
c0de52d4:	1c81      	adds	r1, r0, #2
c0de52d6:	4638      	mov	r0, r7
c0de52d8:	462a      	mov	r2, r5
c0de52da:	e010      	b.n	c0de52fe <bagl_draw_circle_helper+0x2c2>
c0de52dc:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de52de:	4638      	mov	r0, r7
c0de52e0:	4652      	mov	r2, sl
c0de52e2:	4633      	mov	r3, r6
c0de52e4:	f04f 0a01 	mov.w	sl, #1
c0de52e8:	f8cd a000 	str.w	sl, [sp]
c0de52ec:	f001 fbbe 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de52f0:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de52f2:	b140      	cbz	r0, c0de5306 <bagl_draw_circle_helper+0x2ca>
c0de52f4:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de52f6:	9916      	ldr	r1, [sp, #88]	@ 0x58
c0de52f8:	1b82      	subs	r2, r0, r6
c0de52fa:	4638      	mov	r0, r7
c0de52fc:	4623      	mov	r3, r4
c0de52fe:	f8cd a000 	str.w	sl, [sp]
c0de5302:	f001 fbb3 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5306:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de5308:	b930      	cbnz	r0, c0de5318 <bagl_draw_circle_helper+0x2dc>
c0de530a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de530c:	2800      	cmp	r0, #0
c0de530e:	d057      	beq.n	c0de53c0 <bagl_draw_circle_helper+0x384>
c0de5310:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de5312:	bb18      	cbnz	r0, c0de535c <bagl_draw_circle_helper+0x320>
c0de5314:	e033      	b.n	c0de537e <bagl_draw_circle_helper+0x342>
c0de5316:	bf00      	nop
c0de5318:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de531a:	1b87      	subs	r7, r0, r6
c0de531c:	9815      	ldr	r0, [sp, #84]	@ 0x54
c0de531e:	2800      	cmp	r0, #0
c0de5320:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5322:	eb00 050b 	add.w	r5, r0, fp
c0de5326:	d01f      	beq.n	c0de5368 <bagl_draw_circle_helper+0x32c>
c0de5328:	46a2      	mov	sl, r4
c0de532a:	9c07      	ldr	r4, [sp, #28]
c0de532c:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de532e:	f04f 0c01 	mov.w	ip, #1
c0de5332:	1b33      	subs	r3, r6, r4
c0de5334:	4639      	mov	r1, r7
c0de5336:	462a      	mov	r2, r5
c0de5338:	f8cd c000 	str.w	ip, [sp]
c0de533c:	f001 fb96 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5340:	1b39      	subs	r1, r7, r4
c0de5342:	9f08      	ldr	r7, [sp, #32]
c0de5344:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de5346:	4654      	mov	r4, sl
c0de5348:	f04f 0a01 	mov.w	sl, #1
c0de534c:	4638      	mov	r0, r7
c0de534e:	462a      	mov	r2, r5
c0de5350:	f8cd a000 	str.w	sl, [sp]
c0de5354:	f001 fb8a 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de5358:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de535a:	b388      	cbz	r0, c0de53c0 <bagl_draw_circle_helper+0x384>
c0de535c:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de535e:	42b0      	cmp	r0, r6
c0de5360:	d115      	bne.n	c0de538e <bagl_draw_circle_helper+0x352>
c0de5362:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5364:	1b85      	subs	r5, r0, r6
c0de5366:	e021      	b.n	c0de53ac <bagl_draw_circle_helper+0x370>
c0de5368:	9808      	ldr	r0, [sp, #32]
c0de536a:	4639      	mov	r1, r7
c0de536c:	462a      	mov	r2, r5
c0de536e:	4633      	mov	r3, r6
c0de5370:	4607      	mov	r7, r0
c0de5372:	f8cd a000 	str.w	sl, [sp]
c0de5376:	f001 fb79 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de537a:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de537c:	b300      	cbz	r0, c0de53c0 <bagl_draw_circle_helper+0x384>
c0de537e:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5380:	4623      	mov	r3, r4
c0de5382:	eb00 010b 	add.w	r1, r0, fp
c0de5386:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5388:	1b82      	subs	r2, r0, r6
c0de538a:	4638      	mov	r0, r7
c0de538c:	e014      	b.n	c0de53b8 <bagl_draw_circle_helper+0x37c>
c0de538e:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de5390:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de5392:	eb00 010b 	add.w	r1, r0, fp
c0de5396:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de5398:	f8cd a000 	str.w	sl, [sp]
c0de539c:	1b85      	subs	r5, r0, r6
c0de539e:	9803      	ldr	r0, [sp, #12]
c0de53a0:	4410      	add	r0, r2
c0de53a2:	1c83      	adds	r3, r0, #2
c0de53a4:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de53a6:	462a      	mov	r2, r5
c0de53a8:	f001 fb60 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de53ac:	9804      	ldr	r0, [sp, #16]
c0de53ae:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de53b0:	eb00 010b 	add.w	r1, r0, fp
c0de53b4:	4638      	mov	r0, r7
c0de53b6:	462a      	mov	r2, r5
c0de53b8:	f8cd a000 	str.w	sl, [sp]
c0de53bc:	f001 fb56 	bl	c0de6a6c <bagl_hal_draw_rect>
c0de53c0:	f108 0801 	add.w	r8, r8, #1
c0de53c4:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de53c6:	1e70      	subs	r0, r6, #1
c0de53c8:	4641      	mov	r1, r8
c0de53ca:	2a01      	cmp	r2, #1
c0de53cc:	bfac      	ite	ge
c0de53ce:	1a09      	subge	r1, r1, r0
c0de53d0:	4630      	movlt	r0, r6
c0de53d2:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de53d6:	3101      	adds	r1, #1
c0de53d8:	9111      	str	r1, [sp, #68]	@ 0x44
c0de53da:	f1ab 0b01 	sub.w	fp, fp, #1
c0de53de:	4284      	cmp	r4, r0
c0de53e0:	4621      	mov	r1, r4
c0de53e2:	9613      	str	r6, [sp, #76]	@ 0x4c
c0de53e4:	4606      	mov	r6, r0
c0de53e6:	f6ff ae75 	blt.w	c0de50d4 <bagl_draw_circle_helper+0x98>
c0de53ea:	b018      	add	sp, #96	@ 0x60
c0de53ec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de53f0 <bagl_draw_glyph>:
c0de53f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de53f4:	b088      	sub	sp, #32
c0de53f6:	460c      	mov	r4, r1
c0de53f8:	6889      	ldr	r1, [r1, #8]
c0de53fa:	2902      	cmp	r1, #2
c0de53fc:	d826      	bhi.n	c0de544c <bagl_draw_glyph+0x5c>
c0de53fe:	f9b0 2002 	ldrsh.w	r2, [r0, #2]
c0de5402:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de5406:	9207      	str	r2, [sp, #28]
c0de5408:	9006      	str	r0, [sp, #24]
c0de540a:	68e0      	ldr	r0, [r4, #12]
c0de540c:	2201      	movs	r2, #1
c0de540e:	e9d4 b700 	ldrd	fp, r7, [r4]
c0de5412:	fa02 f801 	lsl.w	r8, r2, r1
c0de5416:	f001 fa09 	bl	c0de682c <pic>
c0de541a:	6921      	ldr	r1, [r4, #16]
c0de541c:	f8d4 a008 	ldr.w	sl, [r4, #8]
c0de5420:	4605      	mov	r5, r0
c0de5422:	4608      	mov	r0, r1
c0de5424:	f001 fa02 	bl	c0de682c <pic>
c0de5428:	4606      	mov	r6, r0
c0de542a:	68a1      	ldr	r1, [r4, #8]
c0de542c:	e9d4 0200 	ldrd	r0, r2, [r4]
c0de5430:	463b      	mov	r3, r7
c0de5432:	4348      	muls	r0, r1
c0de5434:	4350      	muls	r0, r2
c0de5436:	9004      	str	r0, [sp, #16]
c0de5438:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de543c:	465a      	mov	r2, fp
c0de543e:	e9cd 8500 	strd	r8, r5, [sp]
c0de5442:	f8cd a008 	str.w	sl, [sp, #8]
c0de5446:	9603      	str	r6, [sp, #12]
c0de5448:	f001 faf7 	bl	c0de6a3a <bagl_hal_draw_bitmap_within_rect>
c0de544c:	b008      	add	sp, #32
c0de544e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5452 <ux_flow_is_first>:
c0de5452:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de5456:	f2c0 0100 	movt	r1, #0
c0de545a:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de545e:	2801      	cmp	r0, #1
c0de5460:	d823      	bhi.n	c0de54aa <ux_flow_is_first+0x58>
c0de5462:	3801      	subs	r0, #1
c0de5464:	eb09 0201 	add.w	r2, r9, r1
c0de5468:	eb00 0340 	add.w	r3, r0, r0, lsl #1
c0de546c:	eb02 0083 	add.w	r0, r2, r3, lsl #2
c0de5470:	8c80      	ldrh	r0, [r0, #36]	@ 0x24
c0de5472:	b1d0      	cbz	r0, c0de54aa <ux_flow_is_first+0x58>
c0de5474:	eb09 0201 	add.w	r2, r9, r1
c0de5478:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de547c:	69d2      	ldr	r2, [r2, #28]
c0de547e:	b1a2      	cbz	r2, c0de54aa <ux_flow_is_first+0x58>
c0de5480:	4449      	add	r1, r9
c0de5482:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5486:	8c09      	ldrh	r1, [r1, #32]
c0de5488:	b929      	cbnz	r1, c0de5496 <ux_flow_is_first+0x44>
c0de548a:	eb02 0380 	add.w	r3, r2, r0, lsl #2
c0de548e:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5492:	3303      	adds	r3, #3
c0de5494:	d109      	bne.n	c0de54aa <ux_flow_is_first+0x58>
c0de5496:	4281      	cmp	r1, r0
c0de5498:	d205      	bcs.n	c0de54a6 <ux_flow_is_first+0x54>
c0de549a:	eb02 0081 	add.w	r0, r2, r1, lsl #2
c0de549e:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de54a2:	3002      	adds	r0, #2
c0de54a4:	d001      	beq.n	c0de54aa <ux_flow_is_first+0x58>
c0de54a6:	2000      	movs	r0, #0
c0de54a8:	4770      	bx	lr
c0de54aa:	2001      	movs	r0, #1
c0de54ac:	4770      	bx	lr

c0de54ae <ux_flow_is_last>:
c0de54ae:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de54b2:	f2c0 0000 	movt	r0, #0
c0de54b6:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de54ba:	2901      	cmp	r1, #1
c0de54bc:	d81f      	bhi.n	c0de54fe <ux_flow_is_last+0x50>
c0de54be:	3901      	subs	r1, #1
c0de54c0:	eb09 0200 	add.w	r2, r9, r0
c0de54c4:	eb01 0341 	add.w	r3, r1, r1, lsl #1
c0de54c8:	eb02 0183 	add.w	r1, r2, r3, lsl #2
c0de54cc:	8c89      	ldrh	r1, [r1, #36]	@ 0x24
c0de54ce:	b1b1      	cbz	r1, c0de54fe <ux_flow_is_last+0x50>
c0de54d0:	eb09 0200 	add.w	r2, r9, r0
c0de54d4:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de54d8:	69d2      	ldr	r2, [r2, #28]
c0de54da:	b182      	cbz	r2, c0de54fe <ux_flow_is_last+0x50>
c0de54dc:	4448      	add	r0, r9
c0de54de:	eb00 0083 	add.w	r0, r0, r3, lsl #2
c0de54e2:	8c00      	ldrh	r0, [r0, #32]
c0de54e4:	1e4b      	subs	r3, r1, #1
c0de54e6:	4283      	cmp	r3, r0
c0de54e8:	d909      	bls.n	c0de54fe <ux_flow_is_last+0x50>
c0de54ea:	3902      	subs	r1, #2
c0de54ec:	4281      	cmp	r1, r0
c0de54ee:	d904      	bls.n	c0de54fa <ux_flow_is_last+0x4c>
c0de54f0:	eb02 0080 	add.w	r0, r2, r0, lsl #2
c0de54f4:	6840      	ldr	r0, [r0, #4]
c0de54f6:	3002      	adds	r0, #2
c0de54f8:	d001      	beq.n	c0de54fe <ux_flow_is_last+0x50>
c0de54fa:	2000      	movs	r0, #0
c0de54fc:	4770      	bx	lr
c0de54fe:	2001      	movs	r0, #1
c0de5500:	4770      	bx	lr

c0de5502 <ux_flow_direction>:
c0de5502:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5506:	f2c0 0000 	movt	r0, #0
c0de550a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de550e:	b169      	cbz	r1, c0de552c <ux_flow_direction+0x2a>
c0de5510:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5514:	4448      	add	r0, r9
c0de5516:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de551a:	8a81      	ldrh	r1, [r0, #20]
c0de551c:	8ac0      	ldrh	r0, [r0, #22]
c0de551e:	4281      	cmp	r1, r0
c0de5520:	d901      	bls.n	c0de5526 <ux_flow_direction+0x24>
c0de5522:	2001      	movs	r0, #1
c0de5524:	e003      	b.n	c0de552e <ux_flow_direction+0x2c>
c0de5526:	d201      	bcs.n	c0de552c <ux_flow_direction+0x2a>
c0de5528:	20ff      	movs	r0, #255	@ 0xff
c0de552a:	e000      	b.n	c0de552e <ux_flow_direction+0x2c>
c0de552c:	2000      	movs	r0, #0
c0de552e:	b240      	sxtb	r0, r0
c0de5530:	4770      	bx	lr

c0de5532 <ux_flow_get_current>:
c0de5532:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5536:	f2c0 0000 	movt	r0, #0
c0de553a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de553e:	2901      	cmp	r1, #1
c0de5540:	d81b      	bhi.n	c0de557a <ux_flow_get_current+0x48>
c0de5542:	3901      	subs	r1, #1
c0de5544:	eb09 0200 	add.w	r2, r9, r0
c0de5548:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de554c:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de5550:	8c92      	ldrh	r2, [r2, #36]	@ 0x24
c0de5552:	b192      	cbz	r2, c0de557a <ux_flow_get_current+0x48>
c0de5554:	eb09 0300 	add.w	r3, r9, r0
c0de5558:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de555c:	69db      	ldr	r3, [r3, #28]
c0de555e:	b163      	cbz	r3, c0de557a <ux_flow_get_current+0x48>
c0de5560:	4448      	add	r0, r9
c0de5562:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5566:	8c00      	ldrh	r0, [r0, #32]
c0de5568:	4290      	cmp	r0, r2
c0de556a:	d206      	bcs.n	c0de557a <ux_flow_get_current+0x48>
c0de556c:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
c0de5570:	f110 0f04 	cmn.w	r0, #4
c0de5574:	bf98      	it	ls
c0de5576:	f001 b959 	bls.w	c0de682c <pic>
c0de557a:	2000      	movs	r0, #0
c0de557c:	4770      	bx	lr

c0de557e <ux_flow_next_internal>:
c0de557e:	b570      	push	{r4, r5, r6, lr}
c0de5580:	f246 2280 	movw	r2, #25216	@ 0x6280
c0de5584:	f2c0 0200 	movt	r2, #0
c0de5588:	f819 1002 	ldrb.w	r1, [r9, r2]
c0de558c:	f1b1 0e01 	subs.w	lr, r1, #1
c0de5590:	d83a      	bhi.n	c0de5608 <ux_flow_next_internal+0x8a>
c0de5592:	eb09 0102 	add.w	r1, r9, r2
c0de5596:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
c0de559a:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de559e:	8c89      	ldrh	r1, [r1, #36]	@ 0x24
c0de55a0:	b391      	cbz	r1, c0de5608 <ux_flow_next_internal+0x8a>
c0de55a2:	eb09 0502 	add.w	r5, r9, r2
c0de55a6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
c0de55aa:	69ed      	ldr	r5, [r5, #28]
c0de55ac:	b365      	cbz	r5, c0de5608 <ux_flow_next_internal+0x8a>
c0de55ae:	2902      	cmp	r1, #2
c0de55b0:	d32a      	bcc.n	c0de5608 <ux_flow_next_internal+0x8a>
c0de55b2:	eb09 0402 	add.w	r4, r9, r2
c0de55b6:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
c0de55ba:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de55be:	1e4e      	subs	r6, r1, #1
c0de55c0:	42a6      	cmp	r6, r4
c0de55c2:	d921      	bls.n	c0de5608 <ux_flow_next_internal+0x8a>
c0de55c4:	3902      	subs	r1, #2
c0de55c6:	42a1      	cmp	r1, r4
c0de55c8:	d310      	bcc.n	c0de55ec <ux_flow_next_internal+0x6e>
c0de55ca:	eb05 0184 	add.w	r1, r5, r4, lsl #2
c0de55ce:	6849      	ldr	r1, [r1, #4]
c0de55d0:	1c8d      	adds	r5, r1, #2
c0de55d2:	bf08      	it	eq
c0de55d4:	bd70      	popeq	{r4, r5, r6, pc}
c0de55d6:	3103      	adds	r1, #3
c0de55d8:	d108      	bne.n	c0de55ec <ux_flow_next_internal+0x6e>
c0de55da:	eb09 0102 	add.w	r1, r9, r2
c0de55de:	2000      	movs	r0, #0
c0de55e0:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de55e4:	f8ac 0000 	strh.w	r0, [ip]
c0de55e8:	8448      	strh	r0, [r1, #34]	@ 0x22
c0de55ea:	e008      	b.n	c0de55fe <ux_flow_next_internal+0x80>
c0de55ec:	eb09 0102 	add.w	r1, r9, r2
c0de55f0:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de55f4:	844c      	strh	r4, [r1, #34]	@ 0x22
c0de55f6:	1c61      	adds	r1, r4, #1
c0de55f8:	f8ac 1000 	strh.w	r1, [ip]
c0de55fc:	b120      	cbz	r0, c0de5608 <ux_flow_next_internal+0x8a>
c0de55fe:	4670      	mov	r0, lr
c0de5600:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5604:	f000 b849 	b.w	c0de569a <ux_flow_engine_init_step>
c0de5608:	bd70      	pop	{r4, r5, r6, pc}

c0de560a <ux_flow_next>:
c0de560a:	2001      	movs	r0, #1
c0de560c:	f7ff bfb7 	b.w	c0de557e <ux_flow_next_internal>

c0de5610 <ux_flow_prev>:
c0de5610:	b510      	push	{r4, lr}
c0de5612:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de5616:	f2c0 0100 	movt	r1, #0
c0de561a:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de561e:	3801      	subs	r0, #1
c0de5620:	d812      	bhi.n	c0de5648 <ux_flow_prev+0x38>
c0de5622:	eb09 0301 	add.w	r3, r9, r1
c0de5626:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de562a:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de562e:	8c9b      	ldrh	r3, [r3, #36]	@ 0x24
c0de5630:	b153      	cbz	r3, c0de5648 <ux_flow_prev+0x38>
c0de5632:	eb09 0401 	add.w	r4, r9, r1
c0de5636:	eb04 0482 	add.w	r4, r4, r2, lsl #2
c0de563a:	f8d4 e01c 	ldr.w	lr, [r4, #28]
c0de563e:	f1be 0f00 	cmp.w	lr, #0
c0de5642:	d001      	beq.n	c0de5648 <ux_flow_prev+0x38>
c0de5644:	2b02      	cmp	r3, #2
c0de5646:	d200      	bcs.n	c0de564a <ux_flow_prev+0x3a>
c0de5648:	bd10      	pop	{r4, pc}
c0de564a:	eb09 0401 	add.w	r4, r9, r1
c0de564e:	eb04 0c82 	add.w	ip, r4, r2, lsl #2
c0de5652:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de5656:	b18c      	cbz	r4, c0de567c <ux_flow_prev+0x6c>
c0de5658:	eb0e 0384 	add.w	r3, lr, r4, lsl #2
c0de565c:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5660:	3302      	adds	r3, #2
c0de5662:	bf08      	it	eq
c0de5664:	bd10      	popeq	{r4, pc}
c0de5666:	4449      	add	r1, r9
c0de5668:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de566c:	844c      	strh	r4, [r1, #34]	@ 0x22
c0de566e:	1e61      	subs	r1, r4, #1
c0de5670:	f8ac 1000 	strh.w	r1, [ip]
c0de5674:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5678:	f000 b80f 	b.w	c0de569a <ux_flow_engine_init_step>
c0de567c:	eb0e 0483 	add.w	r4, lr, r3, lsl #2
c0de5680:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5684:	3403      	adds	r4, #3
c0de5686:	d1df      	bne.n	c0de5648 <ux_flow_prev+0x38>
c0de5688:	4449      	add	r1, r9
c0de568a:	1e9c      	subs	r4, r3, #2
c0de568c:	3b01      	subs	r3, #1
c0de568e:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de5692:	f8ac 4000 	strh.w	r4, [ip]
c0de5696:	844b      	strh	r3, [r1, #34]	@ 0x22
c0de5698:	e7ec      	b.n	c0de5674 <ux_flow_prev+0x64>

c0de569a <ux_flow_engine_init_step>:
c0de569a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de569c:	b081      	sub	sp, #4
c0de569e:	4604      	mov	r4, r0
c0de56a0:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de56a4:	f2c0 0000 	movt	r0, #0
c0de56a8:	4448      	add	r0, r9
c0de56aa:	eb04 0144 	add.w	r1, r4, r4, lsl #1
c0de56ae:	eb00 0581 	add.w	r5, r0, r1, lsl #2
c0de56b2:	f855 0f1c 	ldr.w	r0, [r5, #28]!
c0de56b6:	462e      	mov	r6, r5
c0de56b8:	f836 1f04 	ldrh.w	r1, [r6, #4]!
c0de56bc:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de56c0:	f110 0f04 	cmn.w	r0, #4
c0de56c4:	bf84      	itt	hi
c0de56c6:	b001      	addhi	sp, #4
c0de56c8:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de56ca:	f001 f8af 	bl	c0de682c <pic>
c0de56ce:	6829      	ldr	r1, [r5, #0]
c0de56d0:	8832      	ldrh	r2, [r6, #0]
c0de56d2:	6807      	ldr	r7, [r0, #0]
c0de56d4:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de56d8:	f001 f8a8 	bl	c0de682c <pic>
c0de56dc:	b147      	cbz	r7, c0de56f0 <ux_flow_engine_init_step+0x56>
c0de56de:	6800      	ldr	r0, [r0, #0]
c0de56e0:	f001 f8a4 	bl	c0de682c <pic>
c0de56e4:	4601      	mov	r1, r0
c0de56e6:	4620      	mov	r0, r4
c0de56e8:	b001      	add	sp, #4
c0de56ea:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de56ee:	4708      	bx	r1
c0de56f0:	6880      	ldr	r0, [r0, #8]
c0de56f2:	f001 f89b 	bl	c0de682c <pic>
c0de56f6:	6829      	ldr	r1, [r5, #0]
c0de56f8:	8832      	ldrh	r2, [r6, #0]
c0de56fa:	4605      	mov	r5, r0
c0de56fc:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
c0de5700:	4608      	mov	r0, r1
c0de5702:	f001 f893 	bl	c0de682c <pic>
c0de5706:	6840      	ldr	r0, [r0, #4]
c0de5708:	f001 f890 	bl	c0de682c <pic>
c0de570c:	4602      	mov	r2, r0
c0de570e:	4620      	mov	r0, r4
c0de5710:	4629      	mov	r1, r5
c0de5712:	b001      	add	sp, #4
c0de5714:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5718:	f000 b874 	b.w	c0de5804 <ux_flow_init>

c0de571c <ux_flow_validate>:
c0de571c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5720:	b081      	sub	sp, #4
c0de5722:	f246 2580 	movw	r5, #25216	@ 0x6280
c0de5726:	f2c0 0500 	movt	r5, #0
c0de572a:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de572e:	f1b0 0a01 	subs.w	sl, r0, #1
c0de5732:	d856      	bhi.n	c0de57e2 <ux_flow_validate+0xc6>
c0de5734:	eb09 0005 	add.w	r0, r9, r5
c0de5738:	eb0a 064a 	add.w	r6, sl, sl, lsl #1
c0de573c:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de5740:	f834 0f24 	ldrh.w	r0, [r4, #36]!
c0de5744:	2800      	cmp	r0, #0
c0de5746:	d04c      	beq.n	c0de57e2 <ux_flow_validate+0xc6>
c0de5748:	eb09 0105 	add.w	r1, r9, r5
c0de574c:	eb01 0786 	add.w	r7, r1, r6, lsl #2
c0de5750:	f857 1f1c 	ldr.w	r1, [r7, #28]!
c0de5754:	2900      	cmp	r1, #0
c0de5756:	d044      	beq.n	c0de57e2 <ux_flow_validate+0xc6>
c0de5758:	eb09 0205 	add.w	r2, r9, r5
c0de575c:	eb02 0886 	add.w	r8, r2, r6, lsl #2
c0de5760:	f838 2f20 	ldrh.w	r2, [r8, #32]!
c0de5764:	4282      	cmp	r2, r0
c0de5766:	d23c      	bcs.n	c0de57e2 <ux_flow_validate+0xc6>
c0de5768:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de576c:	f001 f85e 	bl	c0de682c <pic>
c0de5770:	6880      	ldr	r0, [r0, #8]
c0de5772:	b188      	cbz	r0, c0de5798 <ux_flow_validate+0x7c>
c0de5774:	6838      	ldr	r0, [r7, #0]
c0de5776:	f8b8 1000 	ldrh.w	r1, [r8]
c0de577a:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de577e:	f001 f855 	bl	c0de682c <pic>
c0de5782:	6880      	ldr	r0, [r0, #8]
c0de5784:	f001 f852 	bl	c0de682c <pic>
c0de5788:	4601      	mov	r1, r0
c0de578a:	4650      	mov	r0, sl
c0de578c:	2200      	movs	r2, #0
c0de578e:	b001      	add	sp, #4
c0de5790:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5794:	f000 b836 	b.w	c0de5804 <ux_flow_init>
c0de5798:	8820      	ldrh	r0, [r4, #0]
c0de579a:	b310      	cbz	r0, c0de57e2 <ux_flow_validate+0xc6>
c0de579c:	f8b8 2000 	ldrh.w	r2, [r8]
c0de57a0:	3802      	subs	r0, #2
c0de57a2:	4290      	cmp	r0, r2
c0de57a4:	db1d      	blt.n	c0de57e2 <ux_flow_validate+0xc6>
c0de57a6:	6839      	ldr	r1, [r7, #0]
c0de57a8:	eb01 0382 	add.w	r3, r1, r2, lsl #2
c0de57ac:	685b      	ldr	r3, [r3, #4]
c0de57ae:	1cdf      	adds	r7, r3, #3
c0de57b0:	d01a      	beq.n	c0de57e8 <ux_flow_validate+0xcc>
c0de57b2:	3302      	adds	r3, #2
c0de57b4:	d115      	bne.n	c0de57e2 <ux_flow_validate+0xc6>
c0de57b6:	4613      	mov	r3, r2
c0de57b8:	eb01 0282 	add.w	r2, r1, r2, lsl #2
c0de57bc:	6852      	ldr	r2, [r2, #4]
c0de57be:	3202      	adds	r2, #2
c0de57c0:	d105      	bne.n	c0de57ce <ux_flow_validate+0xb2>
c0de57c2:	3301      	adds	r3, #1
c0de57c4:	b29a      	uxth	r2, r3
c0de57c6:	4290      	cmp	r0, r2
c0de57c8:	f8a8 3000 	strh.w	r3, [r8]
c0de57cc:	daf4      	bge.n	c0de57b8 <ux_flow_validate+0x9c>
c0de57ce:	eb09 0005 	add.w	r0, r9, r5
c0de57d2:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de57d6:	8443      	strh	r3, [r0, #34]	@ 0x22
c0de57d8:	1c59      	adds	r1, r3, #1
c0de57da:	4650      	mov	r0, sl
c0de57dc:	f8a8 1000 	strh.w	r1, [r8]
c0de57e0:	e00b      	b.n	c0de57fa <ux_flow_validate+0xde>
c0de57e2:	b001      	add	sp, #4
c0de57e4:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de57e8:	eb09 0005 	add.w	r0, r9, r5
c0de57ec:	2100      	movs	r1, #0
c0de57ee:	eb00 0286 	add.w	r2, r0, r6, lsl #2
c0de57f2:	f8a8 1000 	strh.w	r1, [r8]
c0de57f6:	4650      	mov	r0, sl
c0de57f8:	8451      	strh	r1, [r2, #34]	@ 0x22
c0de57fa:	b001      	add	sp, #4
c0de57fc:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5800:	f7ff bf4b 	b.w	c0de569a <ux_flow_engine_init_step>

c0de5804 <ux_flow_init>:
c0de5804:	b570      	push	{r4, r5, r6, lr}
c0de5806:	b100      	cbz	r0, c0de580a <ux_flow_init+0x6>
c0de5808:	bd70      	pop	{r4, r5, r6, pc}
c0de580a:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de580e:	f2c0 0600 	movt	r6, #0
c0de5812:	eb09 0006 	add.w	r0, r9, r6
c0de5816:	460d      	mov	r5, r1
c0de5818:	3004      	adds	r0, #4
c0de581a:	2122      	movs	r1, #34	@ 0x22
c0de581c:	4614      	mov	r4, r2
c0de581e:	f001 f935 	bl	c0de6a8c <__aeabi_memclr>
c0de5822:	2d00      	cmp	r5, #0
c0de5824:	d0f0      	beq.n	c0de5808 <ux_flow_init+0x4>
c0de5826:	4628      	mov	r0, r5
c0de5828:	f001 f800 	bl	c0de682c <pic>
c0de582c:	eb09 0206 	add.w	r2, r9, r6
c0de5830:	8c91      	ldrh	r1, [r2, #36]	@ 0x24
c0de5832:	61d0      	str	r0, [r2, #28]
c0de5834:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de5838:	3201      	adds	r2, #1
c0de583a:	d008      	beq.n	c0de584e <ux_flow_init+0x4a>
c0de583c:	3101      	adds	r1, #1
c0de583e:	b28a      	uxth	r2, r1
c0de5840:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
c0de5844:	3201      	adds	r2, #1
c0de5846:	d1f9      	bne.n	c0de583c <ux_flow_init+0x38>
c0de5848:	eb09 0006 	add.w	r0, r9, r6
c0de584c:	8481      	strh	r1, [r0, #36]	@ 0x24
c0de584e:	b1e4      	cbz	r4, c0de588a <ux_flow_init+0x86>
c0de5850:	4620      	mov	r0, r4
c0de5852:	f000 ffeb 	bl	c0de682c <pic>
c0de5856:	eb09 0106 	add.w	r1, r9, r6
c0de585a:	69ca      	ldr	r2, [r1, #28]
c0de585c:	8c09      	ldrh	r1, [r1, #32]
c0de585e:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de5862:	1c4a      	adds	r2, r1, #1
c0de5864:	d011      	beq.n	c0de588a <ux_flow_init+0x86>
c0de5866:	4604      	mov	r4, r0
c0de5868:	4608      	mov	r0, r1
c0de586a:	f000 ffdf 	bl	c0de682c <pic>
c0de586e:	42a0      	cmp	r0, r4
c0de5870:	d00b      	beq.n	c0de588a <ux_flow_init+0x86>
c0de5872:	eb09 0006 	add.w	r0, r9, r6
c0de5876:	8c02      	ldrh	r2, [r0, #32]
c0de5878:	69c1      	ldr	r1, [r0, #28]
c0de587a:	1c53      	adds	r3, r2, #1
c0de587c:	b29d      	uxth	r5, r3
c0de587e:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
c0de5882:	8442      	strh	r2, [r0, #34]	@ 0x22
c0de5884:	1c4a      	adds	r2, r1, #1
c0de5886:	8403      	strh	r3, [r0, #32]
c0de5888:	d1ee      	bne.n	c0de5868 <ux_flow_init+0x64>
c0de588a:	2000      	movs	r0, #0
c0de588c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5890:	f7ff bf03 	b.w	c0de569a <ux_flow_engine_init_step>

c0de5894 <ux_flow_button_callback>:
c0de5894:	b580      	push	{r7, lr}
c0de5896:	2103      	movs	r1, #3
c0de5898:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de589c:	4288      	cmp	r0, r1
c0de589e:	d00c      	beq.n	c0de58ba <ux_flow_button_callback+0x26>
c0de58a0:	2102      	movs	r1, #2
c0de58a2:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de58a6:	4288      	cmp	r0, r1
c0de58a8:	d00a      	beq.n	c0de58c0 <ux_flow_button_callback+0x2c>
c0de58aa:	2101      	movs	r1, #1
c0de58ac:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de58b0:	4288      	cmp	r0, r1
c0de58b2:	d108      	bne.n	c0de58c6 <ux_flow_button_callback+0x32>
c0de58b4:	f7ff feac 	bl	c0de5610 <ux_flow_prev>
c0de58b8:	e005      	b.n	c0de58c6 <ux_flow_button_callback+0x32>
c0de58ba:	f7ff ff2f 	bl	c0de571c <ux_flow_validate>
c0de58be:	e002      	b.n	c0de58c6 <ux_flow_button_callback+0x32>
c0de58c0:	2001      	movs	r0, #1
c0de58c2:	f7ff fe5c 	bl	c0de557e <ux_flow_next_internal>
c0de58c6:	2000      	movs	r0, #0
c0de58c8:	bd80      	pop	{r7, pc}

c0de58ca <ux_stack_get_step_params>:
c0de58ca:	b510      	push	{r4, lr}
c0de58cc:	b108      	cbz	r0, c0de58d2 <ux_stack_get_step_params+0x8>
c0de58ce:	2000      	movs	r0, #0
c0de58d0:	bd10      	pop	{r4, pc}
c0de58d2:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de58d6:	f2c0 0000 	movt	r0, #0
c0de58da:	eb09 0100 	add.w	r1, r9, r0
c0de58de:	8c8a      	ldrh	r2, [r1, #36]	@ 0x24
c0de58e0:	2a00      	cmp	r2, #0
c0de58e2:	d0f4      	beq.n	c0de58ce <ux_stack_get_step_params+0x4>
c0de58e4:	8c09      	ldrh	r1, [r1, #32]
c0de58e6:	4291      	cmp	r1, r2
c0de58e8:	d2f1      	bcs.n	c0de58ce <ux_stack_get_step_params+0x4>
c0de58ea:	eb09 0400 	add.w	r4, r9, r0
c0de58ee:	69e0      	ldr	r0, [r4, #28]
c0de58f0:	f000 ff9c 	bl	c0de682c <pic>
c0de58f4:	8c21      	ldrh	r1, [r4, #32]
c0de58f6:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de58fa:	f000 ff97 	bl	c0de682c <pic>
c0de58fe:	6840      	ldr	r0, [r0, #4]
c0de5900:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5904:	f000 bf92 	b.w	c0de682c <pic>

c0de5908 <ux_stack_get_current_step_params>:
c0de5908:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de590c:	f2c0 0000 	movt	r0, #0
c0de5910:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5914:	3801      	subs	r0, #1
c0de5916:	f7ff bfd8 	b.w	c0de58ca <ux_stack_get_step_params>

c0de591a <ux_flow_relayout>:
c0de591a:	b580      	push	{r7, lr}
c0de591c:	f7ff fe09 	bl	c0de5532 <ux_flow_get_current>
c0de5920:	b150      	cbz	r0, c0de5938 <ux_flow_relayout+0x1e>
c0de5922:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5926:	f2c0 0000 	movt	r0, #0
c0de592a:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de592e:	3801      	subs	r0, #1
c0de5930:	f7ff feb3 	bl	c0de569a <ux_flow_engine_init_step>
c0de5934:	2001      	movs	r0, #1
c0de5936:	bd80      	pop	{r7, pc}
c0de5938:	2000      	movs	r0, #0
c0de593a:	bd80      	pop	{r7, pc}

c0de593c <ux_layout_bb_init_common>:
c0de593c:	b510      	push	{r4, lr}
c0de593e:	4604      	mov	r4, r0
c0de5940:	f000 fc1f 	bl	c0de6182 <ux_stack_init>
c0de5944:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5948:	f2c0 0000 	movt	r0, #0
c0de594c:	4448      	add	r0, r9
c0de594e:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5952:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5956:	f243 41ba 	movw	r1, #13498	@ 0x34ba
c0de595a:	f2c0 0100 	movt	r1, #0
c0de595e:	4479      	add	r1, pc
c0de5960:	f8c0 10cc 	str.w	r1, [r0, #204]	@ 0xcc
c0de5964:	2105      	movs	r1, #5
c0de5966:	f880 10d0 	strb.w	r1, [r0, #208]	@ 0xd0
c0de596a:	2101      	movs	r1, #1
c0de596c:	f880 10c9 	strb.w	r1, [r0, #201]	@ 0xc9
c0de5970:	f64f 7119 	movw	r1, #65305	@ 0xff19
c0de5974:	f6cf 71ff 	movt	r1, #65535	@ 0xffff
c0de5978:	4479      	add	r1, pc
c0de597a:	f8c0 10dc 	str.w	r1, [r0, #220]	@ 0xdc
c0de597e:	bd10      	pop	{r4, pc}

c0de5980 <ux_layout_bn_prepro>:
c0de5980:	b580      	push	{r7, lr}
c0de5982:	f000 fb6a 	bl	c0de605a <ux_layout_strings_prepro>
c0de5986:	b170      	cbz	r0, c0de59a6 <ux_layout_bn_prepro+0x26>
c0de5988:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de598c:	f2c0 0100 	movt	r1, #0
c0de5990:	eb09 0201 	add.w	r2, r9, r1
c0de5994:	f892 20a9 	ldrb.w	r2, [r2, #169]	@ 0xa9
c0de5998:	2a11      	cmp	r2, #17
c0de599a:	bf02      	ittt	eq
c0de599c:	4449      	addeq	r1, r9
c0de599e:	f248 020a 	movweq	r2, #32778	@ 0x800a
c0de59a2:	f8a1 20c0 	strheq.w	r2, [r1, #192]	@ 0xc0
c0de59a6:	bd80      	pop	{r7, pc}

c0de59a8 <ux_layout_bn_init>:
c0de59a8:	b510      	push	{r4, lr}
c0de59aa:	4604      	mov	r4, r0
c0de59ac:	f7ff ffc6 	bl	c0de593c <ux_layout_bb_init_common>
c0de59b0:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de59b4:	f2c0 0000 	movt	r0, #0
c0de59b8:	f64f 72b3 	movw	r2, #65459	@ 0xffb3
c0de59bc:	4448      	add	r0, r9
c0de59be:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de59c2:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de59c6:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de59ca:	447a      	add	r2, pc
c0de59cc:	4620      	mov	r0, r4
c0de59ce:	f8c1 20d8 	str.w	r2, [r1, #216]	@ 0xd8
c0de59d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de59d6:	f000 bbaa 	b.w	c0de612e <ux_stack_display>

c0de59da <ux_layout_paging_prepro_common>:
c0de59da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de59de:	b082      	sub	sp, #8
c0de59e0:	f246 2880 	movw	r8, #25216	@ 0x6280
c0de59e4:	f2c0 0800 	movt	r8, #0
c0de59e8:	4606      	mov	r6, r0
c0de59ea:	eb09 0008 	add.w	r0, r9, r8
c0de59ee:	4614      	mov	r4, r2
c0de59f0:	460d      	mov	r5, r1
c0de59f2:	30a8      	adds	r0, #168	@ 0xa8
c0de59f4:	4631      	mov	r1, r6
c0de59f6:	2220      	movs	r2, #32
c0de59f8:	f001 f84d 	bl	c0de6a96 <__aeabi_memmove>
c0de59fc:	7870      	ldrb	r0, [r6, #1]
c0de59fe:	2810      	cmp	r0, #16
c0de5a00:	dc26      	bgt.n	c0de5a50 <ux_layout_paging_prepro_common+0x76>
c0de5a02:	2801      	cmp	r0, #1
c0de5a04:	d03c      	beq.n	c0de5a80 <ux_layout_paging_prepro_common+0xa6>
c0de5a06:	2802      	cmp	r0, #2
c0de5a08:	d043      	beq.n	c0de5a92 <ux_layout_paging_prepro_common+0xb8>
c0de5a0a:	2810      	cmp	r0, #16
c0de5a0c:	f040 809b 	bne.w	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a10:	2d00      	cmp	r5, #0
c0de5a12:	d04b      	beq.n	c0de5aac <ux_layout_paging_prepro_common+0xd2>
c0de5a14:	eb09 0608 	add.w	r6, r9, r8
c0de5a18:	68b0      	ldr	r0, [r6, #8]
c0de5a1a:	f241 21df 	movw	r1, #4831	@ 0x12df
c0de5a1e:	f2c0 0100 	movt	r1, #0
c0de5a22:	f241 3489 	movw	r4, #5001	@ 0x1389
c0de5a26:	f2c0 0400 	movt	r4, #0
c0de5a2a:	447c      	add	r4, pc
c0de5a2c:	2801      	cmp	r0, #1
c0de5a2e:	4628      	mov	r0, r5
c0de5a30:	4479      	add	r1, pc
c0de5a32:	bf88      	it	hi
c0de5a34:	460c      	movhi	r4, r1
c0de5a36:	f000 fef9 	bl	c0de682c <pic>
c0de5a3a:	4603      	mov	r3, r0
c0de5a3c:	e9d6 0501 	ldrd	r0, r5, [r6, #4]
c0de5a40:	2180      	movs	r1, #128	@ 0x80
c0de5a42:	3001      	adds	r0, #1
c0de5a44:	9000      	str	r0, [sp, #0]
c0de5a46:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de5a4a:	4622      	mov	r2, r4
c0de5a4c:	9501      	str	r5, [sp, #4]
c0de5a4e:	e03a      	b.n	c0de5ac6 <ux_layout_paging_prepro_common+0xec>
c0de5a50:	f1a0 0111 	sub.w	r1, r0, #17
c0de5a54:	2903      	cmp	r1, #3
c0de5a56:	d276      	bcs.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a58:	f000 000f 	and.w	r0, r0, #15
c0de5a5c:	1e46      	subs	r6, r0, #1
c0de5a5e:	2e02      	cmp	r6, #2
c0de5a60:	d871      	bhi.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a62:	eb09 0008 	add.w	r0, r9, r8
c0de5a66:	eb00 0046 	add.w	r0, r0, r6, lsl #1
c0de5a6a:	8a85      	ldrh	r5, [r0, #20]
c0de5a6c:	2d00      	cmp	r5, #0
c0de5a6e:	d06a      	beq.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a70:	2d7f      	cmp	r5, #127	@ 0x7f
c0de5a72:	bf28      	it	cs
c0de5a74:	257f      	movcs	r5, #127	@ 0x7f
c0de5a76:	b3ec      	cbz	r4, c0de5af4 <ux_layout_paging_prepro_common+0x11a>
c0de5a78:	4620      	mov	r0, r4
c0de5a7a:	f000 fed7 	bl	c0de682c <pic>
c0de5a7e:	e03d      	b.n	c0de5afc <ux_layout_paging_prepro_common+0x122>
c0de5a80:	f7ff fce7 	bl	c0de5452 <ux_flow_is_first>
c0de5a84:	2800      	cmp	r0, #0
c0de5a86:	d05e      	beq.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a88:	eb09 0008 	add.w	r0, r9, r8
c0de5a8c:	6840      	ldr	r0, [r0, #4]
c0de5a8e:	b158      	cbz	r0, c0de5aa8 <ux_layout_paging_prepro_common+0xce>
c0de5a90:	e059      	b.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a92:	f7ff fd0c 	bl	c0de54ae <ux_flow_is_last>
c0de5a96:	2800      	cmp	r0, #0
c0de5a98:	d055      	beq.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5a9a:	eb09 0008 	add.w	r0, r9, r8
c0de5a9e:	e9d0 0101 	ldrd	r0, r1, [r0, #4]
c0de5aa2:	3901      	subs	r1, #1
c0de5aa4:	4288      	cmp	r0, r1
c0de5aa6:	d14e      	bne.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5aa8:	2000      	movs	r0, #0
c0de5aaa:	e04f      	b.n	c0de5b4c <ux_layout_paging_prepro_common+0x172>
c0de5aac:	eb09 0008 	add.w	r0, r9, r8
c0de5ab0:	e9d0 1601 	ldrd	r1, r6, [r0, #4]
c0de5ab4:	f241 7207 	movw	r2, #5895	@ 0x1707
c0de5ab8:	f2c0 0200 	movt	r2, #0
c0de5abc:	1c4b      	adds	r3, r1, #1
c0de5abe:	3028      	adds	r0, #40	@ 0x28
c0de5ac0:	447a      	add	r2, pc
c0de5ac2:	2180      	movs	r1, #128	@ 0x80
c0de5ac4:	9600      	str	r6, [sp, #0]
c0de5ac6:	f000 fbff 	bl	c0de62c8 <snprintf>
c0de5aca:	eb09 0008 	add.w	r0, r9, r8
c0de5ace:	7b01      	ldrb	r1, [r0, #12]
c0de5ad0:	f248 0208 	movw	r2, #32776	@ 0x8008
c0de5ad4:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5ad8:	3202      	adds	r2, #2
c0de5ada:	29ef      	cmp	r1, #239	@ 0xef
c0de5adc:	f100 0128 	add.w	r1, r0, #40	@ 0x28
c0de5ae0:	bf84      	itt	hi
c0de5ae2:	f248 0208 	movwhi	r2, #32776	@ 0x8008
c0de5ae6:	f6cf 72ff 	movthi	r2, #65535	@ 0xffff
c0de5aea:	f8a0 20c0 	strh.w	r2, [r0, #192]	@ 0xc0
c0de5aee:	f8c0 10c4 	str.w	r1, [r0, #196]	@ 0xc4
c0de5af2:	e028      	b.n	c0de5b46 <ux_layout_paging_prepro_common+0x16c>
c0de5af4:	eb09 0008 	add.w	r0, r9, r8
c0de5af8:	f8d0 010c 	ldr.w	r0, [r0, #268]	@ 0x10c
c0de5afc:	eb09 0708 	add.w	r7, r9, r8
c0de5b00:	eb07 0146 	add.w	r1, r7, r6, lsl #1
c0de5b04:	89c9      	ldrh	r1, [r1, #14]
c0de5b06:	f241 2257 	movw	r2, #4695	@ 0x1257
c0de5b0a:	f107 0428 	add.w	r4, r7, #40	@ 0x28
c0de5b0e:	f2c0 0200 	movt	r2, #0
c0de5b12:	1846      	adds	r6, r0, r1
c0de5b14:	447a      	add	r2, pc
c0de5b16:	4620      	mov	r0, r4
c0de5b18:	2180      	movs	r1, #128	@ 0x80
c0de5b1a:	462b      	mov	r3, r5
c0de5b1c:	9600      	str	r6, [sp, #0]
c0de5b1e:	f000 fbd3 	bl	c0de62c8 <snprintf>
c0de5b22:	7b38      	ldrb	r0, [r7, #12]
c0de5b24:	f248 0108 	movw	r1, #32776	@ 0x8008
c0de5b28:	f6cf 71ff 	movt	r1, #65535	@ 0xffff
c0de5b2c:	f000 000f 	and.w	r0, r0, #15
c0de5b30:	3102      	adds	r1, #2
c0de5b32:	f8c7 40c4 	str.w	r4, [r7, #196]	@ 0xc4
c0de5b36:	280f      	cmp	r0, #15
c0de5b38:	bf04      	itt	eq
c0de5b3a:	f248 0108 	movweq	r1, #32776	@ 0x8008
c0de5b3e:	f6cf 71ff 	movteq	r1, #65535	@ 0xffff
c0de5b42:	f8a7 10c0 	strh.w	r1, [r7, #192]	@ 0xc0
c0de5b46:	eb09 0008 	add.w	r0, r9, r8
c0de5b4a:	30a8      	adds	r0, #168	@ 0xa8
c0de5b4c:	b002      	add	sp, #8
c0de5b4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de5b52 <ux_layout_paging_redisplay_common>:
c0de5b52:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5b56:	4606      	mov	r6, r0
c0de5b58:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5b5c:	f2c0 0000 	movt	r0, #0
c0de5b60:	4690      	mov	r8, r2
c0de5b62:	eb09 0200 	add.w	r2, r9, r0
c0de5b66:	eb06 00c6 	add.w	r0, r6, r6, lsl #3
c0de5b6a:	eb02 0780 	add.w	r7, r2, r0, lsl #2
c0de5b6e:	f243 3042 	movw	r0, #13122	@ 0x3342
c0de5b72:	f2c0 0000 	movt	r0, #0
c0de5b76:	4478      	add	r0, pc
c0de5b78:	f8c7 00cc 	str.w	r0, [r7, #204]	@ 0xcc
c0de5b7c:	2007      	movs	r0, #7
c0de5b7e:	f887 00d0 	strb.w	r0, [r7, #208]	@ 0xd0
c0de5b82:	2001      	movs	r0, #1
c0de5b84:	f887 00c9 	strb.w	r0, [r7, #201]	@ 0xc9
c0de5b88:	7b10      	ldrb	r0, [r2, #12]
c0de5b8a:	460c      	mov	r4, r1
c0de5b8c:	f852 1f04 	ldr.w	r1, [r2, #4]!
c0de5b90:	0700      	lsls	r0, r0, #28
c0de5b92:	461d      	mov	r5, r3
c0de5b94:	f04f 0308 	mov.w	r3, #8
c0de5b98:	4620      	mov	r0, r4
c0de5b9a:	bf08      	it	eq
c0de5b9c:	230a      	moveq	r3, #10
c0de5b9e:	f000 f8ed 	bl	c0de5d7c <ux_layout_paging_compute>
c0de5ba2:	f8c7 50d8 	str.w	r5, [r7, #216]	@ 0xd8
c0de5ba6:	4630      	mov	r0, r6
c0de5ba8:	f8c7 80dc 	str.w	r8, [r7, #220]	@ 0xdc
c0de5bac:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de5bb0:	f000 babd 	b.w	c0de612e <ux_stack_display>

c0de5bb4 <ux_layout_paging_redisplay_by_addr>:
c0de5bb4:	b510      	push	{r4, lr}
c0de5bb6:	4604      	mov	r4, r0
c0de5bb8:	f7ff fea6 	bl	c0de5908 <ux_stack_get_current_step_params>
c0de5bbc:	b178      	cbz	r0, c0de5bde <ux_layout_paging_redisplay_by_addr+0x2a>
c0de5bbe:	6841      	ldr	r1, [r0, #4]
c0de5bc0:	f240 020d 	movw	r2, #13
c0de5bc4:	f2c0 0200 	movt	r2, #0
c0de5bc8:	f240 0397 	movw	r3, #151	@ 0x97
c0de5bcc:	f2c0 0300 	movt	r3, #0
c0de5bd0:	447a      	add	r2, pc
c0de5bd2:	447b      	add	r3, pc
c0de5bd4:	4620      	mov	r0, r4
c0de5bd6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5bda:	f7ff bfba 	b.w	c0de5b52 <ux_layout_paging_redisplay_common>
c0de5bde:	bd10      	pop	{r4, pc}

c0de5be0 <ux_layout_paging_button_callback_by_addr>:
c0de5be0:	b580      	push	{r7, lr}
c0de5be2:	2103      	movs	r1, #3
c0de5be4:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5be8:	4288      	cmp	r0, r1
c0de5bea:	d013      	beq.n	c0de5c14 <ux_layout_paging_button_callback_by_addr+0x34>
c0de5bec:	2102      	movs	r1, #2
c0de5bee:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5bf2:	4288      	cmp	r0, r1
c0de5bf4:	d01e      	beq.n	c0de5c34 <ux_layout_paging_button_callback_by_addr+0x54>
c0de5bf6:	2101      	movs	r1, #1
c0de5bf8:	f2c8 0100 	movt	r1, #32768	@ 0x8000
c0de5bfc:	4288      	cmp	r0, r1
c0de5bfe:	d133      	bne.n	c0de5c68 <ux_layout_paging_button_callback_by_addr+0x88>
c0de5c00:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5c04:	f2c0 0000 	movt	r0, #0
c0de5c08:	eb09 0100 	add.w	r1, r9, r0
c0de5c0c:	6849      	ldr	r1, [r1, #4]
c0de5c0e:	b349      	cbz	r1, c0de5c64 <ux_layout_paging_button_callback_by_addr+0x84>
c0de5c10:	3901      	subs	r1, #1
c0de5c12:	e01e      	b.n	c0de5c52 <ux_layout_paging_button_callback_by_addr+0x72>
c0de5c14:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5c18:	f2c0 0000 	movt	r0, #0
c0de5c1c:	eb09 0100 	add.w	r1, r9, r0
c0de5c20:	6889      	ldr	r1, [r1, #8]
c0de5c22:	b121      	cbz	r1, c0de5c2e <ux_layout_paging_button_callback_by_addr+0x4e>
c0de5c24:	4448      	add	r0, r9
c0de5c26:	6840      	ldr	r0, [r0, #4]
c0de5c28:	3901      	subs	r1, #1
c0de5c2a:	4281      	cmp	r1, r0
c0de5c2c:	d11c      	bne.n	c0de5c68 <ux_layout_paging_button_callback_by_addr+0x88>
c0de5c2e:	f7ff fd75 	bl	c0de571c <ux_flow_validate>
c0de5c32:	e019      	b.n	c0de5c68 <ux_layout_paging_button_callback_by_addr+0x88>
c0de5c34:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5c38:	f2c0 0000 	movt	r0, #0
c0de5c3c:	eb09 0100 	add.w	r1, r9, r0
c0de5c40:	e9d1 1201 	ldrd	r1, r2, [r1, #4]
c0de5c44:	3a01      	subs	r2, #1
c0de5c46:	4291      	cmp	r1, r2
c0de5c48:	d102      	bne.n	c0de5c50 <ux_layout_paging_button_callback_by_addr+0x70>
c0de5c4a:	f7ff fcde 	bl	c0de560a <ux_flow_next>
c0de5c4e:	e00b      	b.n	c0de5c68 <ux_layout_paging_button_callback_by_addr+0x88>
c0de5c50:	3101      	adds	r1, #1
c0de5c52:	eb09 0200 	add.w	r2, r9, r0
c0de5c56:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de5c5a:	6051      	str	r1, [r2, #4]
c0de5c5c:	3801      	subs	r0, #1
c0de5c5e:	f7ff ffa9 	bl	c0de5bb4 <ux_layout_paging_redisplay_by_addr>
c0de5c62:	e001      	b.n	c0de5c68 <ux_layout_paging_button_callback_by_addr+0x88>
c0de5c64:	f7ff fcd4 	bl	c0de5610 <ux_flow_prev>
c0de5c68:	2000      	movs	r0, #0
c0de5c6a:	bd80      	pop	{r7, pc}

c0de5c6c <ux_layout_paging_prepro_by_addr>:
c0de5c6c:	b510      	push	{r4, lr}
c0de5c6e:	4604      	mov	r4, r0
c0de5c70:	f7ff fe4a 	bl	c0de5908 <ux_stack_get_current_step_params>
c0de5c74:	b130      	cbz	r0, c0de5c84 <ux_layout_paging_prepro_by_addr+0x18>
c0de5c76:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de5c7a:	4620      	mov	r0, r4
c0de5c7c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5c80:	f7ff beab 	b.w	c0de59da <ux_layout_paging_prepro_common>
c0de5c84:	2000      	movs	r0, #0
c0de5c86:	bd10      	pop	{r4, pc}

c0de5c88 <ux_layout_paging_init_common>:
c0de5c88:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5c8c:	b081      	sub	sp, #4
c0de5c8e:	f246 2880 	movw	r8, #25216	@ 0x6280
c0de5c92:	f2c0 0800 	movt	r8, #0
c0de5c96:	460d      	mov	r5, r1
c0de5c98:	eb09 0108 	add.w	r1, r9, r8
c0de5c9c:	7b0e      	ldrb	r6, [r1, #12]
c0de5c9e:	4692      	mov	sl, r2
c0de5ca0:	4604      	mov	r4, r0
c0de5ca2:	f7ff fc2e 	bl	c0de5502 <ux_flow_direction>
c0de5ca6:	2801      	cmp	r0, #1
c0de5ca8:	d00c      	beq.n	c0de5cc4 <ux_layout_paging_init_common+0x3c>
c0de5caa:	3001      	adds	r0, #1
c0de5cac:	d110      	bne.n	c0de5cd0 <ux_layout_paging_init_common+0x48>
c0de5cae:	eb09 0708 	add.w	r7, r9, r8
c0de5cb2:	f107 0008 	add.w	r0, r7, #8
c0de5cb6:	2114      	movs	r1, #20
c0de5cb8:	f000 fee8 	bl	c0de6a8c <__aeabi_memclr>
c0de5cbc:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de5cc0:	6078      	str	r0, [r7, #4]
c0de5cc2:	e005      	b.n	c0de5cd0 <ux_layout_paging_init_common+0x48>
c0de5cc4:	eb09 0008 	add.w	r0, r9, r8
c0de5cc8:	3004      	adds	r0, #4
c0de5cca:	2118      	movs	r1, #24
c0de5ccc:	f000 fede 	bl	c0de6a8c <__aeabi_memclr>
c0de5cd0:	eb09 0708 	add.w	r7, r9, r8
c0de5cd4:	4620      	mov	r0, r4
c0de5cd6:	733e      	strb	r6, [r7, #12]
c0de5cd8:	1d3e      	adds	r6, r7, #4
c0de5cda:	f000 fa52 	bl	c0de6182 <ux_stack_init>
c0de5cde:	f8d7 010c 	ldr.w	r0, [r7, #268]	@ 0x10c
c0de5ce2:	2308      	movs	r3, #8
c0de5ce4:	4328      	orrs	r0, r5
c0de5ce6:	f241 30e1 	movw	r0, #5089	@ 0x13e1
c0de5cea:	f2c0 0000 	movt	r0, #0
c0de5cee:	7b39      	ldrb	r1, [r7, #12]
c0de5cf0:	4478      	add	r0, pc
c0de5cf2:	bf18      	it	ne
c0de5cf4:	4628      	movne	r0, r5
c0de5cf6:	0709      	lsls	r1, r1, #28
c0de5cf8:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de5cfc:	4632      	mov	r2, r6
c0de5cfe:	bf08      	it	eq
c0de5d00:	230a      	moveq	r3, #10
c0de5d02:	f000 f83b 	bl	c0de5d7c <ux_layout_paging_compute>
c0de5d06:	60b8      	str	r0, [r7, #8]
c0de5d08:	b148      	cbz	r0, c0de5d1e <ux_layout_paging_init_common+0x96>
c0de5d0a:	eb09 0108 	add.w	r1, r9, r8
c0de5d0e:	6849      	ldr	r1, [r1, #4]
c0de5d10:	3801      	subs	r0, #1
c0de5d12:	4281      	cmp	r1, r0
c0de5d14:	bf84      	itt	hi
c0de5d16:	eb09 0108 	addhi.w	r1, r9, r8
c0de5d1a:	6048      	strhi	r0, [r1, #4]
c0de5d1c:	e005      	b.n	c0de5d2a <ux_layout_paging_init_common+0xa2>
c0de5d1e:	eb09 0008 	add.w	r0, r9, r8
c0de5d22:	3004      	adds	r0, #4
c0de5d24:	2118      	movs	r1, #24
c0de5d26:	f000 feb1 	bl	c0de6a8c <__aeabi_memclr>
c0de5d2a:	4620      	mov	r0, r4
c0de5d2c:	4651      	mov	r1, sl
c0de5d2e:	b001      	add	sp, #4
c0de5d30:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5d34:	4708      	bx	r1

c0de5d36 <ux_layout_paging_reset>:
c0de5d36:	b580      	push	{r7, lr}
c0de5d38:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5d3c:	f2c0 0000 	movt	r0, #0
c0de5d40:	4448      	add	r0, r9
c0de5d42:	3004      	adds	r0, #4
c0de5d44:	2118      	movs	r1, #24
c0de5d46:	f000 fea1 	bl	c0de6a8c <__aeabi_memclr>
c0de5d4a:	bd80      	pop	{r7, pc}

c0de5d4c <ux_layout_bn_paging_init>:
c0de5d4c:	b510      	push	{r4, lr}
c0de5d4e:	4604      	mov	r4, r0
c0de5d50:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5d54:	f2c0 0000 	movt	r0, #0
c0de5d58:	4448      	add	r0, r9
c0de5d5a:	21f0      	movs	r1, #240	@ 0xf0
c0de5d5c:	7301      	strb	r1, [r0, #12]
c0de5d5e:	4620      	mov	r0, r4
c0de5d60:	f7ff fdb3 	bl	c0de58ca <ux_stack_get_step_params>
c0de5d64:	6841      	ldr	r1, [r0, #4]
c0de5d66:	f64f 6243 	movw	r2, #65091	@ 0xfe43
c0de5d6a:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5d6e:	447a      	add	r2, pc
c0de5d70:	4620      	mov	r0, r4
c0de5d72:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5d76:	f7ff bf87 	b.w	c0de5c88 <ux_layout_paging_init_common>
	...

c0de5d7c <ux_layout_paging_compute>:
c0de5d7c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5d80:	b088      	sub	sp, #32
c0de5d82:	460e      	mov	r6, r1
c0de5d84:	4607      	mov	r7, r0
c0de5d86:	f102 000a 	add.w	r0, r2, #10
c0de5d8a:	210c      	movs	r1, #12
c0de5d8c:	9307      	str	r3, [sp, #28]
c0de5d8e:	4614      	mov	r4, r2
c0de5d90:	f000 fe7c 	bl	c0de6a8c <__aeabi_memclr>
c0de5d94:	1c70      	adds	r0, r6, #1
c0de5d96:	9004      	str	r0, [sp, #16]
c0de5d98:	d004      	beq.n	c0de5da4 <ux_layout_paging_compute+0x28>
c0de5d9a:	6860      	ldr	r0, [r4, #4]
c0de5d9c:	42b0      	cmp	r0, r6
c0de5d9e:	d801      	bhi.n	c0de5da4 <ux_layout_paging_compute+0x28>
c0de5da0:	2000      	movs	r0, #0
c0de5da2:	e097      	b.n	c0de5ed4 <ux_layout_paging_compute+0x158>
c0de5da4:	b127      	cbz	r7, c0de5db0 <ux_layout_paging_compute+0x34>
c0de5da6:	4638      	mov	r0, r7
c0de5da8:	f000 fd40 	bl	c0de682c <pic>
c0de5dac:	4607      	mov	r7, r0
c0de5dae:	e006      	b.n	c0de5dbe <ux_layout_paging_compute+0x42>
c0de5db0:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5db4:	f2c0 0000 	movt	r0, #0
c0de5db8:	4448      	add	r0, r9
c0de5dba:	f8d0 710c 	ldr.w	r7, [r0, #268]	@ 0x10c
c0de5dbe:	4638      	mov	r0, r7
c0de5dc0:	f000 fece 	bl	c0de6b60 <strlen>
c0de5dc4:	2801      	cmp	r0, #1
c0de5dc6:	f2c0 8082 	blt.w	c0de5ece <ux_layout_paging_compute+0x152>
c0de5dca:	eb07 0b00 	add.w	fp, r7, r0
c0de5dce:	2200      	movs	r2, #0
c0de5dd0:	2300      	movs	r3, #0
c0de5dd2:	2500      	movs	r5, #0
c0de5dd4:	9402      	str	r4, [sp, #8]
c0de5dd6:	4638      	mov	r0, r7
c0de5dd8:	9701      	str	r7, [sp, #4]
c0de5dda:	9603      	str	r6, [sp, #12]
c0de5ddc:	2600      	movs	r6, #0
c0de5dde:	46ba      	mov	sl, r7
c0de5de0:	e9cd 3205 	strd	r3, r2, [sp, #20]
c0de5de4:	eb07 0806 	add.w	r8, r7, r6
c0de5de8:	45d8      	cmp	r8, fp
c0de5dea:	d21d      	bcs.n	c0de5e28 <ux_layout_paging_compute+0xac>
c0de5dec:	1c74      	adds	r4, r6, #1
c0de5dee:	9807      	ldr	r0, [sp, #28]
c0de5df0:	b2e3      	uxtb	r3, r4
c0de5df2:	2100      	movs	r1, #0
c0de5df4:	463a      	mov	r2, r7
c0de5df6:	9500      	str	r5, [sp, #0]
c0de5df8:	f7fe ffb7 	bl	c0de4d6a <bagl_compute_line_width>
c0de5dfc:	2872      	cmp	r0, #114	@ 0x72
c0de5dfe:	d813      	bhi.n	c0de5e28 <ux_layout_paging_compute+0xac>
c0de5e00:	f898 0000 	ldrb.w	r0, [r8]
c0de5e04:	282c      	cmp	r0, #44	@ 0x2c
c0de5e06:	dc05      	bgt.n	c0de5e14 <ux_layout_paging_compute+0x98>
c0de5e08:	280a      	cmp	r0, #10
c0de5e0a:	d007      	beq.n	c0de5e1c <ux_layout_paging_compute+0xa0>
c0de5e0c:	2820      	cmp	r0, #32
c0de5e0e:	bf08      	it	eq
c0de5e10:	46c2      	moveq	sl, r8
c0de5e12:	e004      	b.n	c0de5e1e <ux_layout_paging_compute+0xa2>
c0de5e14:	285f      	cmp	r0, #95	@ 0x5f
c0de5e16:	d001      	beq.n	c0de5e1c <ux_layout_paging_compute+0xa0>
c0de5e18:	282d      	cmp	r0, #45	@ 0x2d
c0de5e1a:	d100      	bne.n	c0de5e1e <ux_layout_paging_compute+0xa2>
c0de5e1c:	46c2      	mov	sl, r8
c0de5e1e:	280a      	cmp	r0, #10
c0de5e20:	4626      	mov	r6, r4
c0de5e22:	d1df      	bne.n	c0de5de4 <ux_layout_paging_compute+0x68>
c0de5e24:	e001      	b.n	c0de5e2a <ux_layout_paging_compute+0xae>
c0de5e26:	bf00      	nop
c0de5e28:	4634      	mov	r4, r6
c0de5e2a:	1938      	adds	r0, r7, r4
c0de5e2c:	4558      	cmp	r0, fp
c0de5e2e:	d203      	bcs.n	c0de5e38 <ux_layout_paging_compute+0xbc>
c0de5e30:	45ba      	cmp	sl, r7
c0de5e32:	bf18      	it	ne
c0de5e34:	2c00      	cmpne	r4, #0
c0de5e36:	d126      	bne.n	c0de5e86 <ux_layout_paging_compute+0x10a>
c0de5e38:	9e03      	ldr	r6, [sp, #12]
c0de5e3a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5e3e:	9804      	ldr	r0, [sp, #16]
c0de5e40:	b170      	cbz	r0, c0de5e60 <ux_layout_paging_compute+0xe4>
c0de5e42:	42b2      	cmp	r2, r6
c0de5e44:	d10c      	bne.n	c0de5e60 <ux_layout_paging_compute+0xe4>
c0de5e46:	9802      	ldr	r0, [sp, #8]
c0de5e48:	6840      	ldr	r0, [r0, #4]
c0de5e4a:	42b0      	cmp	r0, r6
c0de5e4c:	d908      	bls.n	c0de5e60 <ux_layout_paging_compute+0xe4>
c0de5e4e:	9801      	ldr	r0, [sp, #4]
c0de5e50:	9902      	ldr	r1, [sp, #8]
c0de5e52:	1a38      	subs	r0, r7, r0
c0de5e54:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de5e58:	2b01      	cmp	r3, #1
c0de5e5a:	8148      	strh	r0, [r1, #10]
c0de5e5c:	820c      	strh	r4, [r1, #16]
c0de5e5e:	d836      	bhi.n	c0de5ece <ux_layout_paging_compute+0x152>
c0de5e60:	3301      	adds	r3, #1
c0de5e62:	4427      	add	r7, r4
c0de5e64:	2b02      	cmp	r3, #2
c0de5e66:	f04f 0000 	mov.w	r0, #0
c0de5e6a:	bf88      	it	hi
c0de5e6c:	2001      	movhi	r0, #1
c0de5e6e:	455f      	cmp	r7, fp
c0de5e70:	f04f 0100 	mov.w	r1, #0
c0de5e74:	bf38      	it	cc
c0de5e76:	2101      	movcc	r1, #1
c0de5e78:	4008      	ands	r0, r1
c0de5e7a:	bf18      	it	ne
c0de5e7c:	2300      	movne	r3, #0
c0de5e7e:	455f      	cmp	r7, fp
c0de5e80:	4402      	add	r2, r0
c0de5e82:	d3ab      	bcc.n	c0de5ddc <ux_layout_paging_compute+0x60>
c0de5e84:	e025      	b.n	c0de5ed2 <ux_layout_paging_compute+0x156>
c0de5e86:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de5e8a:	292c      	cmp	r1, #44	@ 0x2c
c0de5e8c:	dc07      	bgt.n	c0de5e9e <ux_layout_paging_compute+0x122>
c0de5e8e:	9e03      	ldr	r6, [sp, #12]
c0de5e90:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5e94:	290a      	cmp	r1, #10
c0de5e96:	d0d2      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5e98:	2920      	cmp	r1, #32
c0de5e9a:	d0d0      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5e9c:	e006      	b.n	c0de5eac <ux_layout_paging_compute+0x130>
c0de5e9e:	9e03      	ldr	r6, [sp, #12]
c0de5ea0:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de5ea4:	292d      	cmp	r1, #45	@ 0x2d
c0de5ea6:	d0ca      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5ea8:	295f      	cmp	r1, #95	@ 0x5f
c0de5eaa:	d0c8      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5eac:	7800      	ldrb	r0, [r0, #0]
c0de5eae:	282c      	cmp	r0, #44	@ 0x2c
c0de5eb0:	dc06      	bgt.n	c0de5ec0 <ux_layout_paging_compute+0x144>
c0de5eb2:	280a      	cmp	r0, #10
c0de5eb4:	d0c3      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5eb6:	2820      	cmp	r0, #32
c0de5eb8:	bf18      	it	ne
c0de5eba:	ebaa 0407 	subne.w	r4, sl, r7
c0de5ebe:	e7be      	b.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5ec0:	282d      	cmp	r0, #45	@ 0x2d
c0de5ec2:	d0bc      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5ec4:	285f      	cmp	r0, #95	@ 0x5f
c0de5ec6:	d0ba      	beq.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5ec8:	ebaa 0407 	sub.w	r4, sl, r7
c0de5ecc:	e7b7      	b.n	c0de5e3e <ux_layout_paging_compute+0xc2>
c0de5ece:	2001      	movs	r0, #1
c0de5ed0:	e000      	b.n	c0de5ed4 <ux_layout_paging_compute+0x158>
c0de5ed2:	1c50      	adds	r0, r2, #1
c0de5ed4:	b008      	add	sp, #32
c0de5ed6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5eda <ux_layout_pb_prepro>:
c0de5eda:	b570      	push	{r4, r5, r6, lr}
c0de5edc:	4605      	mov	r5, r0
c0de5ede:	f7ff fd13 	bl	c0de5908 <ux_stack_get_current_step_params>
c0de5ee2:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5ee6:	f2c0 0600 	movt	r6, #0
c0de5eea:	4604      	mov	r4, r0
c0de5eec:	eb09 0006 	add.w	r0, r9, r6
c0de5ef0:	30a8      	adds	r0, #168	@ 0xa8
c0de5ef2:	4629      	mov	r1, r5
c0de5ef4:	2220      	movs	r2, #32
c0de5ef6:	f000 fdce 	bl	c0de6a96 <__aeabi_memmove>
c0de5efa:	7868      	ldrb	r0, [r5, #1]
c0de5efc:	280f      	cmp	r0, #15
c0de5efe:	dc06      	bgt.n	c0de5f0e <ux_layout_pb_prepro+0x34>
c0de5f00:	2801      	cmp	r0, #1
c0de5f02:	d00f      	beq.n	c0de5f24 <ux_layout_pb_prepro+0x4a>
c0de5f04:	2802      	cmp	r0, #2
c0de5f06:	d112      	bne.n	c0de5f2e <ux_layout_pb_prepro+0x54>
c0de5f08:	f7ff fad1 	bl	c0de54ae <ux_flow_is_last>
c0de5f0c:	e00c      	b.n	c0de5f28 <ux_layout_pb_prepro+0x4e>
c0de5f0e:	2810      	cmp	r0, #16
c0de5f10:	d002      	beq.n	c0de5f18 <ux_layout_pb_prepro+0x3e>
c0de5f12:	2811      	cmp	r0, #17
c0de5f14:	d10b      	bne.n	c0de5f2e <ux_layout_pb_prepro+0x54>
c0de5f16:	3404      	adds	r4, #4
c0de5f18:	6820      	ldr	r0, [r4, #0]
c0de5f1a:	eb09 0106 	add.w	r1, r9, r6
c0de5f1e:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de5f22:	e004      	b.n	c0de5f2e <ux_layout_pb_prepro+0x54>
c0de5f24:	f7ff fa95 	bl	c0de5452 <ux_flow_is_first>
c0de5f28:	b108      	cbz	r0, c0de5f2e <ux_layout_pb_prepro+0x54>
c0de5f2a:	2000      	movs	r0, #0
c0de5f2c:	bd70      	pop	{r4, r5, r6, pc}
c0de5f2e:	eb09 0006 	add.w	r0, r9, r6
c0de5f32:	30a8      	adds	r0, #168	@ 0xa8
c0de5f34:	bd70      	pop	{r4, r5, r6, pc}

c0de5f36 <ux_layout_pb_init>:
c0de5f36:	b510      	push	{r4, lr}
c0de5f38:	4604      	mov	r4, r0
c0de5f3a:	f000 f922 	bl	c0de6182 <ux_stack_init>
c0de5f3e:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de5f42:	f2c0 0000 	movt	r0, #0
c0de5f46:	4448      	add	r0, r9
c0de5f48:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de5f4c:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de5f50:	f243 0040 	movw	r0, #12352	@ 0x3040
c0de5f54:	f2c0 0000 	movt	r0, #0
c0de5f58:	4478      	add	r0, pc
c0de5f5a:	f8c1 00cc 	str.w	r0, [r1, #204]	@ 0xcc
c0de5f5e:	2005      	movs	r0, #5
c0de5f60:	f881 00d0 	strb.w	r0, [r1, #208]	@ 0xd0
c0de5f64:	2001      	movs	r0, #1
c0de5f66:	f881 00c9 	strb.w	r0, [r1, #201]	@ 0xc9
c0de5f6a:	f64f 705d 	movw	r0, #65373	@ 0xff5d
c0de5f6e:	f6cf 70ff 	movt	r0, #65535	@ 0xffff
c0de5f72:	f64f 1215 	movw	r2, #63765	@ 0xf915
c0de5f76:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de5f7a:	4478      	add	r0, pc
c0de5f7c:	447a      	add	r2, pc
c0de5f7e:	f8c1 00d8 	str.w	r0, [r1, #216]	@ 0xd8
c0de5f82:	4620      	mov	r0, r4
c0de5f84:	f8c1 20dc 	str.w	r2, [r1, #220]	@ 0xdc
c0de5f88:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5f8c:	f000 b8cf 	b.w	c0de612e <ux_stack_display>

c0de5f90 <ux_layout_pbb_prepro>:
c0de5f90:	b570      	push	{r4, r5, r6, lr}
c0de5f92:	4605      	mov	r5, r0
c0de5f94:	f7ff fcb8 	bl	c0de5908 <ux_stack_get_current_step_params>
c0de5f98:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de5f9c:	f2c0 0600 	movt	r6, #0
c0de5fa0:	4604      	mov	r4, r0
c0de5fa2:	eb09 0006 	add.w	r0, r9, r6
c0de5fa6:	30a8      	adds	r0, #168	@ 0xa8
c0de5fa8:	4629      	mov	r1, r5
c0de5faa:	2220      	movs	r2, #32
c0de5fac:	f000 fd73 	bl	c0de6a96 <__aeabi_memmove>
c0de5fb0:	7868      	ldrb	r0, [r5, #1]
c0de5fb2:	280f      	cmp	r0, #15
c0de5fb4:	dc06      	bgt.n	c0de5fc4 <ux_layout_pbb_prepro+0x34>
c0de5fb6:	2801      	cmp	r0, #1
c0de5fb8:	d019      	beq.n	c0de5fee <ux_layout_pbb_prepro+0x5e>
c0de5fba:	2802      	cmp	r0, #2
c0de5fbc:	d01a      	beq.n	c0de5ff4 <ux_layout_pbb_prepro+0x64>
c0de5fbe:	280f      	cmp	r0, #15
c0de5fc0:	d00c      	beq.n	c0de5fdc <ux_layout_pbb_prepro+0x4c>
c0de5fc2:	e010      	b.n	c0de5fe6 <ux_layout_pbb_prepro+0x56>
c0de5fc4:	3810      	subs	r0, #16
c0de5fc6:	2802      	cmp	r0, #2
c0de5fc8:	d20d      	bcs.n	c0de5fe6 <ux_layout_pbb_prepro+0x56>
c0de5fca:	eb09 0006 	add.w	r0, r9, r6
c0de5fce:	f890 00a9 	ldrb.w	r0, [r0, #169]	@ 0xa9
c0de5fd2:	f000 000f 	and.w	r0, r0, #15
c0de5fd6:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de5fda:	1d04      	adds	r4, r0, #4
c0de5fdc:	6820      	ldr	r0, [r4, #0]
c0de5fde:	eb09 0106 	add.w	r1, r9, r6
c0de5fe2:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de5fe6:	eb09 0006 	add.w	r0, r9, r6
c0de5fea:	30a8      	adds	r0, #168	@ 0xa8
c0de5fec:	bd70      	pop	{r4, r5, r6, pc}
c0de5fee:	f7ff fa30 	bl	c0de5452 <ux_flow_is_first>
c0de5ff2:	e001      	b.n	c0de5ff8 <ux_layout_pbb_prepro+0x68>
c0de5ff4:	f7ff fa5b 	bl	c0de54ae <ux_flow_is_last>
c0de5ff8:	2800      	cmp	r0, #0
c0de5ffa:	d0f4      	beq.n	c0de5fe6 <ux_layout_pbb_prepro+0x56>
c0de5ffc:	2000      	movs	r0, #0
c0de5ffe:	bd70      	pop	{r4, r5, r6, pc}

c0de6000 <ux_layout_pbb_init>:
c0de6000:	b510      	push	{r4, lr}
c0de6002:	4604      	mov	r4, r0
c0de6004:	f000 f8bd 	bl	c0de6182 <ux_stack_init>
c0de6008:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de600c:	f2c0 0000 	movt	r0, #0
c0de6010:	4448      	add	r0, r9
c0de6012:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de6016:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de601a:	f243 0016 	movw	r0, #12310	@ 0x3016
c0de601e:	f2c0 0000 	movt	r0, #0
c0de6022:	4478      	add	r0, pc
c0de6024:	f8c1 00cc 	str.w	r0, [r1, #204]	@ 0xcc
c0de6028:	2006      	movs	r0, #6
c0de602a:	f881 00d0 	strb.w	r0, [r1, #208]	@ 0xd0
c0de602e:	2001      	movs	r0, #1
c0de6030:	f881 00c9 	strb.w	r0, [r1, #201]	@ 0xc9
c0de6034:	f64f 024d 	movw	r2, #63565	@ 0xf84d
c0de6038:	f6cf 72ff 	movt	r2, #65535	@ 0xffff
c0de603c:	f64f 7047 	movw	r0, #65351	@ 0xff47
c0de6040:	f6cf 70ff 	movt	r0, #65535	@ 0xffff
c0de6044:	447a      	add	r2, pc
c0de6046:	4478      	add	r0, pc
c0de6048:	f8c1 00d8 	str.w	r0, [r1, #216]	@ 0xd8
c0de604c:	4620      	mov	r0, r4
c0de604e:	f8c1 20dc 	str.w	r2, [r1, #220]	@ 0xdc
c0de6052:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6056:	f000 b86a 	b.w	c0de612e <ux_stack_display>

c0de605a <ux_layout_strings_prepro>:
c0de605a:	b570      	push	{r4, r5, r6, lr}
c0de605c:	4605      	mov	r5, r0
c0de605e:	f7ff fc53 	bl	c0de5908 <ux_stack_get_current_step_params>
c0de6062:	f246 2680 	movw	r6, #25216	@ 0x6280
c0de6066:	f2c0 0600 	movt	r6, #0
c0de606a:	4604      	mov	r4, r0
c0de606c:	eb09 0006 	add.w	r0, r9, r6
c0de6070:	30a8      	adds	r0, #168	@ 0xa8
c0de6072:	4629      	mov	r1, r5
c0de6074:	2220      	movs	r2, #32
c0de6076:	f000 fd0e 	bl	c0de6a96 <__aeabi_memmove>
c0de607a:	7868      	ldrb	r0, [r5, #1]
c0de607c:	2802      	cmp	r0, #2
c0de607e:	d004      	beq.n	c0de608a <ux_layout_strings_prepro+0x30>
c0de6080:	2801      	cmp	r0, #1
c0de6082:	d107      	bne.n	c0de6094 <ux_layout_strings_prepro+0x3a>
c0de6084:	f7ff f9e5 	bl	c0de5452 <ux_flow_is_first>
c0de6088:	e001      	b.n	c0de608e <ux_layout_strings_prepro+0x34>
c0de608a:	f7ff fa10 	bl	c0de54ae <ux_flow_is_last>
c0de608e:	b180      	cbz	r0, c0de60b2 <ux_layout_strings_prepro+0x58>
c0de6090:	2000      	movs	r0, #0
c0de6092:	bd70      	pop	{r4, r5, r6, pc}
c0de6094:	eb09 0006 	add.w	r0, r9, r6
c0de6098:	f890 00a9 	ldrb.w	r0, [r0, #169]	@ 0xa9
c0de609c:	f010 0ff0 	tst.w	r0, #240	@ 0xf0
c0de60a0:	d007      	beq.n	c0de60b2 <ux_layout_strings_prepro+0x58>
c0de60a2:	f000 000f 	and.w	r0, r0, #15
c0de60a6:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
c0de60aa:	eb09 0106 	add.w	r1, r9, r6
c0de60ae:	f8c1 00c4 	str.w	r0, [r1, #196]	@ 0xc4
c0de60b2:	eb09 0006 	add.w	r0, r9, r6
c0de60b6:	30a8      	adds	r0, #168	@ 0xa8
c0de60b8:	bd70      	pop	{r4, r5, r6, pc}

c0de60ba <ux_stack_push>:
c0de60ba:	b5b0      	push	{r4, r5, r7, lr}
c0de60bc:	f246 2480 	movw	r4, #25216	@ 0x6280
c0de60c0:	f2c0 0400 	movt	r4, #0
c0de60c4:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de60c8:	b968      	cbnz	r0, c0de60e6 <ux_stack_push+0x2c>
c0de60ca:	eb09 0504 	add.w	r5, r9, r4
c0de60ce:	f105 00c8 	add.w	r0, r5, #200	@ 0xc8
c0de60d2:	2124      	movs	r1, #36	@ 0x24
c0de60d4:	f000 fcda 	bl	c0de6a8c <__aeabi_memclr>
c0de60d8:	2000      	movs	r0, #0
c0de60da:	e9c5 0007 	strd	r0, r0, [r5, #28]
c0de60de:	6268      	str	r0, [r5, #36]	@ 0x24
c0de60e0:	2001      	movs	r0, #1
c0de60e2:	f809 0004 	strb.w	r0, [r9, r4]
c0de60e6:	3801      	subs	r0, #1
c0de60e8:	bdb0      	pop	{r4, r5, r7, pc}

c0de60ea <ux_stack_redisplay>:
c0de60ea:	b580      	push	{r7, lr}
c0de60ec:	f7ff fc15 	bl	c0de591a <ux_flow_relayout>
c0de60f0:	b100      	cbz	r0, c0de60f4 <ux_stack_redisplay+0xa>
c0de60f2:	bd80      	pop	{r7, pc}
c0de60f4:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de60f8:	f2c0 0000 	movt	r0, #0
c0de60fc:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6100:	2901      	cmp	r1, #1
c0de6102:	d109      	bne.n	c0de6118 <ux_stack_redisplay+0x2e>
c0de6104:	eb09 0100 	add.w	r1, r9, r0
c0de6108:	2200      	movs	r2, #0
c0de610a:	2000      	movs	r0, #0
c0de610c:	f8a1 20ca 	strh.w	r2, [r1, #202]	@ 0xca
c0de6110:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6114:	f000 b80b 	b.w	c0de612e <ux_stack_display>
c0de6118:	2900      	cmp	r1, #0
c0de611a:	d1ea      	bne.n	c0de60f2 <ux_stack_redisplay+0x8>
c0de611c:	eb09 0100 	add.w	r1, r9, r0
c0de6120:	7849      	ldrb	r1, [r1, #1]
c0de6122:	29aa      	cmp	r1, #170	@ 0xaa
c0de6124:	bf02      	ittt	eq
c0de6126:	4448      	addeq	r0, r9
c0de6128:	2169      	moveq	r1, #105	@ 0x69
c0de612a:	7041      	strbeq	r1, [r0, #1]
c0de612c:	bd80      	pop	{r7, pc}

c0de612e <ux_stack_display>:
c0de612e:	f246 2180 	movw	r1, #25216	@ 0x6280
c0de6132:	f2c0 0100 	movt	r1, #0
c0de6136:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de613a:	1c43      	adds	r3, r0, #1
c0de613c:	b16a      	cbz	r2, c0de615a <ux_stack_display+0x2c>
c0de613e:	4293      	cmp	r3, r2
c0de6140:	d10b      	bne.n	c0de615a <ux_stack_display+0x2c>
c0de6142:	4449      	add	r1, r9
c0de6144:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de6148:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de614c:	f101 00c8 	add.w	r0, r1, #200	@ 0xc8
c0de6150:	2200      	movs	r2, #0
c0de6152:	f8a1 20ca 	strh.w	r2, [r1, #202]	@ 0xca
c0de6156:	f000 b823 	b.w	c0de61a0 <ux_stack_display_elements>
c0de615a:	fab3 f083 	clz	r0, r3
c0de615e:	fab2 f282 	clz	r2, r2
c0de6162:	0940      	lsrs	r0, r0, #5
c0de6164:	0952      	lsrs	r2, r2, #5
c0de6166:	4310      	orrs	r0, r2
c0de6168:	2801      	cmp	r0, #1
c0de616a:	bf18      	it	ne
c0de616c:	4770      	bxne	lr
c0de616e:	eb09 0001 	add.w	r0, r9, r1
c0de6172:	7840      	ldrb	r0, [r0, #1]
c0de6174:	28aa      	cmp	r0, #170	@ 0xaa
c0de6176:	bf02      	ittt	eq
c0de6178:	eb09 0001 	addeq.w	r0, r9, r1
c0de617c:	2169      	moveq	r1, #105	@ 0x69
c0de617e:	7041      	strbeq	r1, [r0, #1]
c0de6180:	4770      	bx	lr

c0de6182 <ux_stack_init>:
c0de6182:	b100      	cbz	r0, c0de6186 <ux_stack_init+0x4>
c0de6184:	4770      	bx	lr
c0de6186:	b580      	push	{r7, lr}
c0de6188:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de618c:	f2c0 0000 	movt	r0, #0
c0de6190:	4448      	add	r0, r9
c0de6192:	30c8      	adds	r0, #200	@ 0xc8
c0de6194:	2124      	movs	r1, #36	@ 0x24
c0de6196:	f000 fc79 	bl	c0de6a8c <__aeabi_memclr>
c0de619a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de619e:	4770      	bx	lr

c0de61a0 <ux_stack_display_elements>:
c0de61a0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de61a4:	b081      	sub	sp, #4
c0de61a6:	4604      	mov	r4, r0
c0de61a8:	f000 fb79 	bl	c0de689e <os_perso_isonboarded>
c0de61ac:	28aa      	cmp	r0, #170	@ 0xaa
c0de61ae:	d103      	bne.n	c0de61b8 <ux_stack_display_elements+0x18>
c0de61b0:	f000 fbab 	bl	c0de690a <os_global_pin_is_validated>
c0de61b4:	28aa      	cmp	r0, #170	@ 0xaa
c0de61b6:	d151      	bne.n	c0de625c <ux_stack_display_elements+0xbc>
c0de61b8:	7860      	ldrb	r0, [r4, #1]
c0de61ba:	b3b0      	cbz	r0, c0de622a <ux_stack_display_elements+0x8a>
c0de61bc:	8860      	ldrh	r0, [r4, #2]
c0de61be:	f894 8008 	ldrb.w	r8, [r4, #8]
c0de61c2:	4540      	cmp	r0, r8
c0de61c4:	d233      	bcs.n	c0de622e <ux_stack_display_elements+0x8e>
c0de61c6:	f246 2a80 	movw	sl, #25216	@ 0x6280
c0de61ca:	1c47      	adds	r7, r0, #1
c0de61cc:	0146      	lsls	r6, r0, #5
c0de61ce:	f2c0 0a00 	movt	sl, #0
c0de61d2:	bf00      	nop
c0de61d4:	3001      	adds	r0, #1
c0de61d6:	8060      	strh	r0, [r4, #2]
c0de61d8:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de61dc:	6861      	ldr	r1, [r4, #4]
c0de61de:	eb01 0506 	add.w	r5, r1, r6
c0de61e2:	b168      	cbz	r0, c0de6200 <ux_stack_display_elements+0x60>
c0de61e4:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de61e8:	eb09 010a 	add.w	r1, r9, sl
c0de61ec:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de61f0:	f8d0 10b4 	ldr.w	r1, [r0, #180]	@ 0xb4
c0de61f4:	b121      	cbz	r1, c0de6200 <ux_stack_display_elements+0x60>
c0de61f6:	4628      	mov	r0, r5
c0de61f8:	4788      	blx	r1
c0de61fa:	b1a0      	cbz	r0, c0de6226 <ux_stack_display_elements+0x86>
c0de61fc:	2801      	cmp	r0, #1
c0de61fe:	d100      	bne.n	c0de6202 <ux_stack_display_elements+0x62>
c0de6200:	4628      	mov	r0, r5
c0de6202:	b128      	cbz	r0, c0de6210 <ux_stack_display_elements+0x70>
c0de6204:	2801      	cmp	r0, #1
c0de6206:	bf08      	it	eq
c0de6208:	4628      	moveq	r0, r5
c0de620a:	f7fe f896 	bl	c0de433a <io_seph_ux_display_bagl_element>
c0de620e:	e003      	b.n	c0de6218 <ux_stack_display_elements+0x78>
c0de6210:	eb09 000a 	add.w	r0, r9, sl
c0de6214:	7840      	ldrb	r0, [r0, #1]
c0de6216:	bb08      	cbnz	r0, c0de625c <ux_stack_display_elements+0xbc>
c0de6218:	7a20      	ldrb	r0, [r4, #8]
c0de621a:	4287      	cmp	r7, r0
c0de621c:	d207      	bcs.n	c0de622e <ux_stack_display_elements+0x8e>
c0de621e:	8860      	ldrh	r0, [r4, #2]
c0de6220:	3701      	adds	r7, #1
c0de6222:	3620      	adds	r6, #32
c0de6224:	e7d6      	b.n	c0de61d4 <ux_stack_display_elements+0x34>
c0de6226:	2000      	movs	r0, #0
c0de6228:	e7eb      	b.n	c0de6202 <ux_stack_display_elements+0x62>
c0de622a:	f04f 0800 	mov.w	r8, #0
c0de622e:	8860      	ldrh	r0, [r4, #2]
c0de6230:	4540      	cmp	r0, r8
c0de6232:	d113      	bne.n	c0de625c <ux_stack_display_elements+0xbc>
c0de6234:	f000 fbf7 	bl	c0de6a26 <screen_update>
c0de6238:	8860      	ldrh	r0, [r4, #2]
c0de623a:	68e1      	ldr	r1, [r4, #12]
c0de623c:	3001      	adds	r0, #1
c0de623e:	8060      	strh	r0, [r4, #2]
c0de6240:	b119      	cbz	r1, c0de624a <ux_stack_display_elements+0xaa>
c0de6242:	2000      	movs	r0, #0
c0de6244:	2500      	movs	r5, #0
c0de6246:	4788      	blx	r1
c0de6248:	b108      	cbz	r0, c0de624e <ux_stack_display_elements+0xae>
c0de624a:	7825      	ldrb	r5, [r4, #0]
c0de624c:	e000      	b.n	c0de6250 <ux_stack_display_elements+0xb0>
c0de624e:	8065      	strh	r5, [r4, #2]
c0de6250:	f246 2080 	movw	r0, #25216	@ 0x6280
c0de6254:	f2c0 0000 	movt	r0, #0
c0de6258:	4448      	add	r0, r9
c0de625a:	7045      	strb	r5, [r0, #1]
c0de625c:	b001      	add	sp, #4
c0de625e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6262 <cx_ecdsa_sign_no_throw>:
c0de6262:	b403      	push	{r0, r1}
c0de6264:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6268:	e01c      	b.n	c0de62a4 <cx_trampoline_helper>

c0de626a <cx_ecfp_generate_pair_no_throw>:
c0de626a:	b403      	push	{r0, r1}
c0de626c:	f04f 0032 	mov.w	r0, #50	@ 0x32
c0de6270:	e018      	b.n	c0de62a4 <cx_trampoline_helper>

c0de6272 <cx_ecfp_init_private_key_no_throw>:
c0de6272:	b403      	push	{r0, r1}
c0de6274:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6278:	e014      	b.n	c0de62a4 <cx_trampoline_helper>

c0de627a <cx_ecfp_init_public_key_no_throw>:
c0de627a:	b403      	push	{r0, r1}
c0de627c:	f04f 0034 	mov.w	r0, #52	@ 0x34
c0de6280:	e010      	b.n	c0de62a4 <cx_trampoline_helper>

c0de6282 <cx_hash_no_throw>:
c0de6282:	b403      	push	{r0, r1}
c0de6284:	f04f 0044 	mov.w	r0, #68	@ 0x44
c0de6288:	e00c      	b.n	c0de62a4 <cx_trampoline_helper>

c0de628a <cx_hash_sha256>:
c0de628a:	b403      	push	{r0, r1}
c0de628c:	f04f 0046 	mov.w	r0, #70	@ 0x46
c0de6290:	e008      	b.n	c0de62a4 <cx_trampoline_helper>

c0de6292 <cx_ripemd160_init_no_throw>:
c0de6292:	b403      	push	{r0, r1}
c0de6294:	f04f 0068 	mov.w	r0, #104	@ 0x68
c0de6298:	e004      	b.n	c0de62a4 <cx_trampoline_helper>
	...

c0de629c <cx_aes_siv_reset>:
c0de629c:	b403      	push	{r0, r1}
c0de629e:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de62a2:	e7ff      	b.n	c0de62a4 <cx_trampoline_helper>

c0de62a4 <cx_trampoline_helper>:
c0de62a4:	4900      	ldr	r1, [pc, #0]	@ (c0de62a8 <cx_trampoline_helper+0x4>)
c0de62a6:	4708      	bx	r1
c0de62a8:	00808001 	.word	0x00808001

c0de62ac <os_boot>:
c0de62ac:	2000      	movs	r0, #0
c0de62ae:	f000 bb9e 	b.w	c0de69ee <try_context_set>

c0de62b2 <os_longjmp>:
c0de62b2:	4604      	mov	r4, r0
c0de62b4:	f000 fb91 	bl	c0de69da <try_context_get>
c0de62b8:	4621      	mov	r1, r4
c0de62ba:	f000 fc3f 	bl	c0de6b3c <longjmp>
	...

c0de62c0 <os_reset>:
c0de62c0:	f7fe f81d 	bl	c0de42fe <os_io_seph_cmd_se_reset>
c0de62c4:	e7fe      	b.n	c0de62c4 <os_reset+0x4>
	...

c0de62c8 <snprintf>:
c0de62c8:	b081      	sub	sp, #4
c0de62ca:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de62ce:	b091      	sub	sp, #68	@ 0x44
c0de62d0:	2800      	cmp	r0, #0
c0de62d2:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de62d6:	9319      	str	r3, [sp, #100]	@ 0x64
c0de62d8:	f000 82a2 	beq.w	c0de6820 <snprintf+0x558>
c0de62dc:	460d      	mov	r5, r1
c0de62de:	2900      	cmp	r1, #0
c0de62e0:	f000 829e 	beq.w	c0de6820 <snprintf+0x558>
c0de62e4:	4629      	mov	r1, r5
c0de62e6:	4614      	mov	r4, r2
c0de62e8:	4683      	mov	fp, r0
c0de62ea:	f000 fbcf 	bl	c0de6a8c <__aeabi_memclr>
c0de62ee:	7820      	ldrb	r0, [r4, #0]
c0de62f0:	a919      	add	r1, sp, #100	@ 0x64
c0de62f2:	2800      	cmp	r0, #0
c0de62f4:	9108      	str	r1, [sp, #32]
c0de62f6:	f000 8292 	beq.w	c0de681e <snprintf+0x556>
c0de62fa:	f1a5 0c01 	sub.w	ip, r5, #1
c0de62fe:	2600      	movs	r6, #0
c0de6300:	9103      	str	r1, [sp, #12]
c0de6302:	bf00      	nop
c0de6304:	f04f 0a00 	mov.w	sl, #0
c0de6308:	b140      	cbz	r0, c0de631c <snprintf+0x54>
c0de630a:	2825      	cmp	r0, #37	@ 0x25
c0de630c:	d006      	beq.n	c0de631c <snprintf+0x54>
c0de630e:	eb04 000a 	add.w	r0, r4, sl
c0de6312:	7840      	ldrb	r0, [r0, #1]
c0de6314:	f10a 0a01 	add.w	sl, sl, #1
c0de6318:	e7f6      	b.n	c0de6308 <snprintf+0x40>
c0de631a:	bf00      	nop
c0de631c:	f1ba 0f00 	cmp.w	sl, #0
c0de6320:	d016      	beq.n	c0de6350 <snprintf+0x88>
c0de6322:	f1bc 0f00 	cmp.w	ip, #0
c0de6326:	4456      	add	r6, sl
c0de6328:	d010      	beq.n	c0de634c <snprintf+0x84>
c0de632a:	4665      	mov	r5, ip
c0de632c:	45d4      	cmp	ip, sl
c0de632e:	bf88      	it	hi
c0de6330:	4655      	movhi	r5, sl
c0de6332:	4658      	mov	r0, fp
c0de6334:	4621      	mov	r1, r4
c0de6336:	462a      	mov	r2, r5
c0de6338:	4667      	mov	r7, ip
c0de633a:	f000 fbac 	bl	c0de6a96 <__aeabi_memmove>
c0de633e:	46bc      	mov	ip, r7
c0de6340:	f814 000a 	ldrb.w	r0, [r4, sl]
c0de6344:	44ab      	add	fp, r5
c0de6346:	eba7 0c05 	sub.w	ip, r7, r5
c0de634a:	e001      	b.n	c0de6350 <snprintf+0x88>
c0de634c:	f04f 0c00 	mov.w	ip, #0
c0de6350:	2825      	cmp	r0, #37	@ 0x25
c0de6352:	4454      	add	r4, sl
c0de6354:	f040 824c 	bne.w	c0de67f0 <snprintf+0x528>
c0de6358:	3401      	adds	r4, #1
c0de635a:	f04f 0800 	mov.w	r8, #0
c0de635e:	2020      	movs	r0, #32
c0de6360:	2100      	movs	r1, #0
c0de6362:	2200      	movs	r2, #0
c0de6364:	3401      	adds	r4, #1
c0de6366:	f814 3c01 	ldrb.w	r3, [r4, #-1]
c0de636a:	3401      	adds	r4, #1
c0de636c:	2b2d      	cmp	r3, #45	@ 0x2d
c0de636e:	dc0f      	bgt.n	c0de6390 <snprintf+0xc8>
c0de6370:	f04f 0200 	mov.w	r2, #0
c0de6374:	d0f7      	beq.n	c0de6366 <snprintf+0x9e>
c0de6376:	2b25      	cmp	r3, #37	@ 0x25
c0de6378:	f000 80f1 	beq.w	c0de655e <snprintf+0x296>
c0de637c:	2b2a      	cmp	r3, #42	@ 0x2a
c0de637e:	f040 824b 	bne.w	c0de6818 <snprintf+0x550>
c0de6382:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
c0de6386:	2973      	cmp	r1, #115	@ 0x73
c0de6388:	f040 8246 	bne.w	c0de6818 <snprintf+0x550>
c0de638c:	2202      	movs	r2, #2
c0de638e:	e024      	b.n	c0de63da <snprintf+0x112>
c0de6390:	2b47      	cmp	r3, #71	@ 0x47
c0de6392:	dc27      	bgt.n	c0de63e4 <snprintf+0x11c>
c0de6394:	f1a3 0730 	sub.w	r7, r3, #48	@ 0x30
c0de6398:	2f0a      	cmp	r7, #10
c0de639a:	d20d      	bcs.n	c0de63b8 <snprintf+0xf0>
c0de639c:	f083 0730 	eor.w	r7, r3, #48	@ 0x30
c0de63a0:	ea57 0708 	orrs.w	r7, r7, r8
c0de63a4:	eb08 0788 	add.w	r7, r8, r8, lsl #2
c0de63a8:	eb03 0347 	add.w	r3, r3, r7, lsl #1
c0de63ac:	bf08      	it	eq
c0de63ae:	2030      	moveq	r0, #48	@ 0x30
c0de63b0:	f1a3 0830 	sub.w	r8, r3, #48	@ 0x30
c0de63b4:	3c01      	subs	r4, #1
c0de63b6:	e7d5      	b.n	c0de6364 <snprintf+0x9c>
c0de63b8:	2b2e      	cmp	r3, #46	@ 0x2e
c0de63ba:	f040 822d 	bne.w	c0de6818 <snprintf+0x550>
c0de63be:	f814 1c01 	ldrb.w	r1, [r4, #-1]
c0de63c2:	292a      	cmp	r1, #42	@ 0x2a
c0de63c4:	f040 8228 	bne.w	c0de6818 <snprintf+0x550>
c0de63c8:	7821      	ldrb	r1, [r4, #0]
c0de63ca:	2201      	movs	r2, #1
c0de63cc:	2948      	cmp	r1, #72	@ 0x48
c0de63ce:	d004      	beq.n	c0de63da <snprintf+0x112>
c0de63d0:	2968      	cmp	r1, #104	@ 0x68
c0de63d2:	d002      	beq.n	c0de63da <snprintf+0x112>
c0de63d4:	2973      	cmp	r1, #115	@ 0x73
c0de63d6:	f040 821f 	bne.w	c0de6818 <snprintf+0x550>
c0de63da:	9b03      	ldr	r3, [sp, #12]
c0de63dc:	f853 1b04 	ldr.w	r1, [r3], #4
c0de63e0:	9303      	str	r3, [sp, #12]
c0de63e2:	e7bf      	b.n	c0de6364 <snprintf+0x9c>
c0de63e4:	2b67      	cmp	r3, #103	@ 0x67
c0de63e6:	dc0b      	bgt.n	c0de6400 <snprintf+0x138>
c0de63e8:	2b62      	cmp	r3, #98	@ 0x62
c0de63ea:	dc11      	bgt.n	c0de6410 <snprintf+0x148>
c0de63ec:	2b48      	cmp	r3, #72	@ 0x48
c0de63ee:	f000 80c2 	beq.w	c0de6576 <snprintf+0x2ae>
c0de63f2:	2b58      	cmp	r3, #88	@ 0x58
c0de63f4:	f040 8210 	bne.w	c0de6818 <snprintf+0x550>
c0de63f8:	f8cd b018 	str.w	fp, [sp, #24]
c0de63fc:	2101      	movs	r1, #1
c0de63fe:	e025      	b.n	c0de644c <snprintf+0x184>
c0de6400:	2b72      	cmp	r3, #114	@ 0x72
c0de6402:	dc1a      	bgt.n	c0de643a <snprintf+0x172>
c0de6404:	2b68      	cmp	r3, #104	@ 0x68
c0de6406:	f000 80be 	beq.w	c0de6586 <snprintf+0x2be>
c0de640a:	2b70      	cmp	r3, #112	@ 0x70
c0de640c:	d01b      	beq.n	c0de6446 <snprintf+0x17e>
c0de640e:	e203      	b.n	c0de6818 <snprintf+0x550>
c0de6410:	2b63      	cmp	r3, #99	@ 0x63
c0de6412:	f000 80bb 	beq.w	c0de658c <snprintf+0x2c4>
c0de6416:	2b64      	cmp	r3, #100	@ 0x64
c0de6418:	f040 81fe 	bne.w	c0de6818 <snprintf+0x550>
c0de641c:	9903      	ldr	r1, [sp, #12]
c0de641e:	f8cd b018 	str.w	fp, [sp, #24]
c0de6422:	6809      	ldr	r1, [r1, #0]
c0de6424:	f1b1 3fff 	cmp.w	r1, #4294967295	@ 0xffffffff
c0de6428:	f340 81e6 	ble.w	c0de67f8 <snprintf+0x530>
c0de642c:	2200      	movs	r2, #0
c0de642e:	f04f 0b0a 	mov.w	fp, #10
c0de6432:	9202      	str	r2, [sp, #8]
c0de6434:	2200      	movs	r2, #0
c0de6436:	9200      	str	r2, [sp, #0]
c0de6438:	e00f      	b.n	c0de645a <snprintf+0x192>
c0de643a:	2b73      	cmp	r3, #115	@ 0x73
c0de643c:	f000 80b5 	beq.w	c0de65aa <snprintf+0x2e2>
c0de6440:	2b78      	cmp	r3, #120	@ 0x78
c0de6442:	f040 81e9 	bne.w	c0de6818 <snprintf+0x550>
c0de6446:	2100      	movs	r1, #0
c0de6448:	f8cd b018 	str.w	fp, [sp, #24]
c0de644c:	9100      	str	r1, [sp, #0]
c0de644e:	9903      	ldr	r1, [sp, #12]
c0de6450:	f04f 0b10 	mov.w	fp, #16
c0de6454:	6809      	ldr	r1, [r1, #0]
c0de6456:	2200      	movs	r2, #0
c0de6458:	9202      	str	r2, [sp, #8]
c0de645a:	9401      	str	r4, [sp, #4]
c0de645c:	458b      	cmp	fp, r1
c0de645e:	460c      	mov	r4, r1
c0de6460:	d903      	bls.n	c0de646a <snprintf+0x1a2>
c0de6462:	f04f 0a01 	mov.w	sl, #1
c0de6466:	2101      	movs	r1, #1
c0de6468:	e00f      	b.n	c0de648a <snprintf+0x1c2>
c0de646a:	2302      	movs	r3, #2
c0de646c:	465a      	mov	r2, fp
c0de646e:	bf00      	nop
c0de6470:	4692      	mov	sl, r2
c0de6472:	fbab 2702 	umull	r2, r7, fp, r2
c0de6476:	2f00      	cmp	r7, #0
c0de6478:	bf18      	it	ne
c0de647a:	2701      	movne	r7, #1
c0de647c:	42a2      	cmp	r2, r4
c0de647e:	4619      	mov	r1, r3
c0de6480:	d803      	bhi.n	c0de648a <snprintf+0x1c2>
c0de6482:	2f00      	cmp	r7, #0
c0de6484:	f101 0301 	add.w	r3, r1, #1
c0de6488:	d0f2      	beq.n	c0de6470 <snprintf+0x1a8>
c0de648a:	9b02      	ldr	r3, [sp, #8]
c0de648c:	b2c0      	uxtb	r0, r0
c0de648e:	4419      	add	r1, r3
c0de6490:	ebb8 0701 	subs.w	r7, r8, r1
c0de6494:	9607      	str	r6, [sp, #28]
c0de6496:	f04f 0600 	mov.w	r6, #0
c0de649a:	bf38      	it	cc
c0de649c:	4637      	movcc	r7, r6
c0de649e:	9004      	str	r0, [sp, #16]
c0de64a0:	3830      	subs	r0, #48	@ 0x30
c0de64a2:	f083 0201 	eor.w	r2, r3, #1
c0de64a6:	bf18      	it	ne
c0de64a8:	2001      	movne	r0, #1
c0de64aa:	4310      	orrs	r0, r2
c0de64ac:	d105      	bne.n	c0de64ba <snprintf+0x1f2>
c0de64ae:	202d      	movs	r0, #45	@ 0x2d
c0de64b0:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de64b4:	2000      	movs	r0, #0
c0de64b6:	2601      	movs	r6, #1
c0de64b8:	9002      	str	r0, [sp, #8]
c0de64ba:	4541      	cmp	r1, r8
c0de64bc:	9405      	str	r4, [sp, #20]
c0de64be:	d22f      	bcs.n	c0de6520 <snprintf+0x258>
c0de64c0:	f1c6 0520 	rsb	r5, r6, #32
c0de64c4:	42af      	cmp	r7, r5
c0de64c6:	bf98      	it	ls
c0de64c8:	463d      	movls	r5, r7
c0de64ca:	b145      	cbz	r5, c0de64de <snprintf+0x216>
c0de64cc:	a809      	add	r0, sp, #36	@ 0x24
c0de64ce:	9a04      	ldr	r2, [sp, #16]
c0de64d0:	4430      	add	r0, r6
c0de64d2:	4629      	mov	r1, r5
c0de64d4:	46e0      	mov	r8, ip
c0de64d6:	f000 fae0 	bl	c0de6a9a <__aeabi_memset>
c0de64da:	46c4      	mov	ip, r8
c0de64dc:	442e      	add	r6, r5
c0de64de:	2e20      	cmp	r6, #32
c0de64e0:	eba7 0705 	sub.w	r7, r7, r5
c0de64e4:	d31a      	bcc.n	c0de651c <snprintf+0x254>
c0de64e6:	b1cf      	cbz	r7, c0de651c <snprintf+0x254>
c0de64e8:	9807      	ldr	r0, [sp, #28]
c0de64ea:	f1bc 0f00 	cmp.w	ip, #0
c0de64ee:	4430      	add	r0, r6
c0de64f0:	9007      	str	r0, [sp, #28]
c0de64f2:	d010      	beq.n	c0de6516 <snprintf+0x24e>
c0de64f4:	45b4      	cmp	ip, r6
c0de64f6:	bf98      	it	ls
c0de64f8:	4666      	movls	r6, ip
c0de64fa:	9d06      	ldr	r5, [sp, #24]
c0de64fc:	a909      	add	r1, sp, #36	@ 0x24
c0de64fe:	4628      	mov	r0, r5
c0de6500:	4632      	mov	r2, r6
c0de6502:	4664      	mov	r4, ip
c0de6504:	f000 fac5 	bl	c0de6a92 <__aeabi_memcpy>
c0de6508:	46a4      	mov	ip, r4
c0de650a:	9c05      	ldr	r4, [sp, #20]
c0de650c:	4435      	add	r5, r6
c0de650e:	ebac 0c06 	sub.w	ip, ip, r6
c0de6512:	9506      	str	r5, [sp, #24]
c0de6514:	e001      	b.n	c0de651a <snprintf+0x252>
c0de6516:	f04f 0c00 	mov.w	ip, #0
c0de651a:	2600      	movs	r6, #0
c0de651c:	2f00      	cmp	r7, #0
c0de651e:	d1cf      	bne.n	c0de64c0 <snprintf+0x1f8>
c0de6520:	9802      	ldr	r0, [sp, #8]
c0de6522:	2800      	cmp	r0, #0
c0de6524:	f000 80e3 	beq.w	c0de66ee <snprintf+0x426>
c0de6528:	2e20      	cmp	r6, #32
c0de652a:	f0c0 80dc 	bcc.w	c0de66e6 <snprintf+0x41e>
c0de652e:	9807      	ldr	r0, [sp, #28]
c0de6530:	f1bc 0f00 	cmp.w	ip, #0
c0de6534:	4430      	add	r0, r6
c0de6536:	9007      	str	r0, [sp, #28]
c0de6538:	f000 80d2 	beq.w	c0de66e0 <snprintf+0x418>
c0de653c:	45b4      	cmp	ip, r6
c0de653e:	bf98      	it	ls
c0de6540:	4666      	movls	r6, ip
c0de6542:	9d06      	ldr	r5, [sp, #24]
c0de6544:	a909      	add	r1, sp, #36	@ 0x24
c0de6546:	4628      	mov	r0, r5
c0de6548:	4632      	mov	r2, r6
c0de654a:	4664      	mov	r4, ip
c0de654c:	f000 faa1 	bl	c0de6a92 <__aeabi_memcpy>
c0de6550:	46a4      	mov	ip, r4
c0de6552:	9c05      	ldr	r4, [sp, #20]
c0de6554:	4435      	add	r5, r6
c0de6556:	ebac 0c06 	sub.w	ip, ip, r6
c0de655a:	9506      	str	r5, [sp, #24]
c0de655c:	e0c2      	b.n	c0de66e4 <snprintf+0x41c>
c0de655e:	3601      	adds	r6, #1
c0de6560:	f1bc 0f00 	cmp.w	ip, #0
c0de6564:	bf0f      	iteee	eq
c0de6566:	f04f 0c00 	moveq.w	ip, #0
c0de656a:	2025      	movne	r0, #37	@ 0x25
c0de656c:	f80b 0b01 	strbne.w	r0, [fp], #1
c0de6570:	f1ac 0c01 	subne.w	ip, ip, #1
c0de6574:	e136      	b.n	c0de67e4 <snprintf+0x51c>
c0de6576:	9607      	str	r6, [sp, #28]
c0de6578:	f642 3686 	movw	r6, #11142	@ 0x2b86
c0de657c:	f2c0 0600 	movt	r6, #0
c0de6580:	2001      	movs	r0, #1
c0de6582:	447e      	add	r6, pc
c0de6584:	e018      	b.n	c0de65b8 <snprintf+0x2f0>
c0de6586:	2001      	movs	r0, #1
c0de6588:	9607      	str	r6, [sp, #28]
c0de658a:	e010      	b.n	c0de65ae <snprintf+0x2e6>
c0de658c:	9803      	ldr	r0, [sp, #12]
c0de658e:	f1bc 0f00 	cmp.w	ip, #0
c0de6592:	f100 0804 	add.w	r8, r0, #4
c0de6596:	f106 0601 	add.w	r6, r6, #1
c0de659a:	f000 813a 	beq.w	c0de6812 <snprintf+0x54a>
c0de659e:	6800      	ldr	r0, [r0, #0]
c0de65a0:	f1ac 0c01 	sub.w	ip, ip, #1
c0de65a4:	f80b 0b01 	strb.w	r0, [fp], #1
c0de65a8:	e11e      	b.n	c0de67e8 <snprintf+0x520>
c0de65aa:	9607      	str	r6, [sp, #28]
c0de65ac:	2000      	movs	r0, #0
c0de65ae:	f642 3642 	movw	r6, #11074	@ 0x2b42
c0de65b2:	f2c0 0600 	movt	r6, #0
c0de65b6:	447e      	add	r6, pc
c0de65b8:	9b03      	ldr	r3, [sp, #12]
c0de65ba:	b2d2      	uxtb	r2, r2
c0de65bc:	f853 eb04 	ldr.w	lr, [r3], #4
c0de65c0:	9303      	str	r3, [sp, #12]
c0de65c2:	b1f2      	cbz	r2, c0de6602 <snprintf+0x33a>
c0de65c4:	2a01      	cmp	r2, #1
c0de65c6:	d025      	beq.n	c0de6614 <snprintf+0x34c>
c0de65c8:	2a02      	cmp	r2, #2
c0de65ca:	d124      	bne.n	c0de6616 <snprintf+0x34e>
c0de65cc:	f89e 0000 	ldrb.w	r0, [lr]
c0de65d0:	9e07      	ldr	r6, [sp, #28]
c0de65d2:	2800      	cmp	r0, #0
c0de65d4:	f04f 0520 	mov.w	r5, #32
c0de65d8:	f040 811e 	bne.w	c0de6818 <snprintf+0x550>
c0de65dc:	2900      	cmp	r1, #0
c0de65de:	f000 8101 	beq.w	c0de67e4 <snprintf+0x51c>
c0de65e2:	4608      	mov	r0, r1
c0de65e4:	4662      	mov	r2, ip
c0de65e6:	bf00      	nop
c0de65e8:	2a00      	cmp	r2, #0
c0de65ea:	bf0f      	iteee	eq
c0de65ec:	2200      	moveq	r2, #0
c0de65ee:	f80b 5b01 	strbne.w	r5, [fp], #1
c0de65f2:	f1ac 0c01 	subne.w	ip, ip, #1
c0de65f6:	4662      	movne	r2, ip
c0de65f8:	3801      	subs	r0, #1
c0de65fa:	d1f5      	bne.n	c0de65e8 <snprintf+0x320>
c0de65fc:	440e      	add	r6, r1
c0de65fe:	4688      	mov	r8, r1
c0de6600:	e0dc      	b.n	c0de67bc <snprintf+0x4f4>
c0de6602:	2100      	movs	r1, #0
c0de6604:	f81e 2001 	ldrb.w	r2, [lr, r1]
c0de6608:	3101      	adds	r1, #1
c0de660a:	2a00      	cmp	r2, #0
c0de660c:	d1fa      	bne.n	c0de6604 <snprintf+0x33c>
c0de660e:	f1a1 0a01 	sub.w	sl, r1, #1
c0de6612:	e000      	b.n	c0de6616 <snprintf+0x34e>
c0de6614:	468a      	mov	sl, r1
c0de6616:	2800      	cmp	r0, #0
c0de6618:	d04a      	beq.n	c0de66b0 <snprintf+0x3e8>
c0de661a:	f1ba 0f00 	cmp.w	sl, #0
c0de661e:	f000 80c5 	beq.w	c0de67ac <snprintf+0x4e4>
c0de6622:	2700      	movs	r7, #0
c0de6624:	2500      	movs	r5, #0
c0de6626:	9401      	str	r4, [sp, #4]
c0de6628:	f81e 0005 	ldrb.w	r0, [lr, r5]
c0de662c:	ab09      	add	r3, sp, #36	@ 0x24
c0de662e:	0901      	lsrs	r1, r0, #4
c0de6630:	f000 000f 	and.w	r0, r0, #15
c0de6634:	5c30      	ldrb	r0, [r6, r0]
c0de6636:	5c71      	ldrb	r1, [r6, r1]
c0de6638:	19da      	adds	r2, r3, r7
c0de663a:	7050      	strb	r0, [r2, #1]
c0de663c:	f1a7 001d 	sub.w	r0, r7, #29
c0de6640:	55d9      	strb	r1, [r3, r7]
c0de6642:	f110 0f21 	cmn.w	r0, #33	@ 0x21
c0de6646:	f107 0702 	add.w	r7, r7, #2
c0de664a:	d818      	bhi.n	c0de667e <snprintf+0x3b6>
c0de664c:	9807      	ldr	r0, [sp, #28]
c0de664e:	f1bc 0f00 	cmp.w	ip, #0
c0de6652:	4438      	add	r0, r7
c0de6654:	9007      	str	r0, [sp, #28]
c0de6656:	d00f      	beq.n	c0de6678 <snprintf+0x3b0>
c0de6658:	45bc      	cmp	ip, r7
c0de665a:	bf98      	it	ls
c0de665c:	4667      	movls	r7, ip
c0de665e:	4658      	mov	r0, fp
c0de6660:	a909      	add	r1, sp, #36	@ 0x24
c0de6662:	463a      	mov	r2, r7
c0de6664:	46e0      	mov	r8, ip
c0de6666:	4674      	mov	r4, lr
c0de6668:	f000 fa13 	bl	c0de6a92 <__aeabi_memcpy>
c0de666c:	46c4      	mov	ip, r8
c0de666e:	46a6      	mov	lr, r4
c0de6670:	44bb      	add	fp, r7
c0de6672:	eba8 0c07 	sub.w	ip, r8, r7
c0de6676:	e001      	b.n	c0de667c <snprintf+0x3b4>
c0de6678:	f04f 0c00 	mov.w	ip, #0
c0de667c:	2700      	movs	r7, #0
c0de667e:	3501      	adds	r5, #1
c0de6680:	45aa      	cmp	sl, r5
c0de6682:	d1d1      	bne.n	c0de6628 <snprintf+0x360>
c0de6684:	2f00      	cmp	r7, #0
c0de6686:	f04f 0520 	mov.w	r5, #32
c0de668a:	f000 80bc 	beq.w	c0de6806 <snprintf+0x53e>
c0de668e:	9e07      	ldr	r6, [sp, #28]
c0de6690:	f1bc 0f00 	cmp.w	ip, #0
c0de6694:	443e      	add	r6, r7
c0de6696:	f000 80b9 	beq.w	c0de680c <snprintf+0x544>
c0de669a:	45bc      	cmp	ip, r7
c0de669c:	bf98      	it	ls
c0de669e:	4667      	movls	r7, ip
c0de66a0:	4658      	mov	r0, fp
c0de66a2:	a909      	add	r1, sp, #36	@ 0x24
c0de66a4:	463a      	mov	r2, r7
c0de66a6:	4664      	mov	r4, ip
c0de66a8:	f000 f9f3 	bl	c0de6a92 <__aeabi_memcpy>
c0de66ac:	46d0      	mov	r8, sl
c0de66ae:	e012      	b.n	c0de66d6 <snprintf+0x40e>
c0de66b0:	9807      	ldr	r0, [sp, #28]
c0de66b2:	f1bc 0f00 	cmp.w	ip, #0
c0de66b6:	4450      	add	r0, sl
c0de66b8:	9007      	str	r0, [sp, #28]
c0de66ba:	d07b      	beq.n	c0de67b4 <snprintf+0x4ec>
c0de66bc:	4667      	mov	r7, ip
c0de66be:	9401      	str	r4, [sp, #4]
c0de66c0:	45d4      	cmp	ip, sl
c0de66c2:	bf88      	it	hi
c0de66c4:	4657      	movhi	r7, sl
c0de66c6:	4658      	mov	r0, fp
c0de66c8:	4671      	mov	r1, lr
c0de66ca:	463a      	mov	r2, r7
c0de66cc:	4664      	mov	r4, ip
c0de66ce:	f000 f9e2 	bl	c0de6a96 <__aeabi_memmove>
c0de66d2:	9e07      	ldr	r6, [sp, #28]
c0de66d4:	2520      	movs	r5, #32
c0de66d6:	eba4 0c07 	sub.w	ip, r4, r7
c0de66da:	9c01      	ldr	r4, [sp, #4]
c0de66dc:	44bb      	add	fp, r7
c0de66de:	e06d      	b.n	c0de67bc <snprintf+0x4f4>
c0de66e0:	f04f 0c00 	mov.w	ip, #0
c0de66e4:	2600      	movs	r6, #0
c0de66e6:	a809      	add	r0, sp, #36	@ 0x24
c0de66e8:	212d      	movs	r1, #45	@ 0x2d
c0de66ea:	5581      	strb	r1, [r0, r6]
c0de66ec:	3601      	adds	r6, #1
c0de66ee:	9803      	ldr	r0, [sp, #12]
c0de66f0:	f1ba 0f00 	cmp.w	sl, #0
c0de66f4:	f100 0804 	add.w	r8, r0, #4
c0de66f8:	d03a      	beq.n	c0de6770 <snprintf+0x4a8>
c0de66fa:	9800      	ldr	r0, [sp, #0]
c0de66fc:	f642 17fe 	movw	r7, #10750	@ 0x29fe
c0de6700:	2800      	cmp	r0, #0
c0de6702:	f2c0 0700 	movt	r7, #0
c0de6706:	f642 10e8 	movw	r0, #10728	@ 0x29e8
c0de670a:	447f      	add	r7, pc
c0de670c:	f2c0 0000 	movt	r0, #0
c0de6710:	4478      	add	r0, pc
c0de6712:	bf08      	it	eq
c0de6714:	4607      	moveq	r7, r0
c0de6716:	bf00      	nop
c0de6718:	2e20      	cmp	r6, #32
c0de671a:	d319      	bcc.n	c0de6750 <snprintf+0x488>
c0de671c:	9807      	ldr	r0, [sp, #28]
c0de671e:	f1bc 0f00 	cmp.w	ip, #0
c0de6722:	4430      	add	r0, r6
c0de6724:	9007      	str	r0, [sp, #28]
c0de6726:	d010      	beq.n	c0de674a <snprintf+0x482>
c0de6728:	45b4      	cmp	ip, r6
c0de672a:	bf98      	it	ls
c0de672c:	4666      	movls	r6, ip
c0de672e:	9d06      	ldr	r5, [sp, #24]
c0de6730:	a909      	add	r1, sp, #36	@ 0x24
c0de6732:	4628      	mov	r0, r5
c0de6734:	4632      	mov	r2, r6
c0de6736:	4664      	mov	r4, ip
c0de6738:	f000 f9ab 	bl	c0de6a92 <__aeabi_memcpy>
c0de673c:	46a4      	mov	ip, r4
c0de673e:	9c05      	ldr	r4, [sp, #20]
c0de6740:	4435      	add	r5, r6
c0de6742:	ebac 0c06 	sub.w	ip, ip, r6
c0de6746:	9506      	str	r5, [sp, #24]
c0de6748:	e001      	b.n	c0de674e <snprintf+0x486>
c0de674a:	f04f 0c00 	mov.w	ip, #0
c0de674e:	2600      	movs	r6, #0
c0de6750:	fbb4 f0fa 	udiv	r0, r4, sl
c0de6754:	45d3      	cmp	fp, sl
c0de6756:	fbb0 f1fb 	udiv	r1, r0, fp
c0de675a:	fbba fafb 	udiv	sl, sl, fp
c0de675e:	fb01 001b 	mls	r0, r1, fp, r0
c0de6762:	a909      	add	r1, sp, #36	@ 0x24
c0de6764:	5c38      	ldrb	r0, [r7, r0]
c0de6766:	5588      	strb	r0, [r1, r6]
c0de6768:	f106 0601 	add.w	r6, r6, #1
c0de676c:	d9d4      	bls.n	c0de6718 <snprintf+0x450>
c0de676e:	e000      	b.n	c0de6772 <snprintf+0x4aa>
c0de6770:	b1be      	cbz	r6, c0de67a2 <snprintf+0x4da>
c0de6772:	9807      	ldr	r0, [sp, #28]
c0de6774:	f1bc 0f00 	cmp.w	ip, #0
c0de6778:	4430      	add	r0, r6
c0de677a:	9007      	str	r0, [sp, #28]
c0de677c:	d00f      	beq.n	c0de679e <snprintf+0x4d6>
c0de677e:	45b4      	cmp	ip, r6
c0de6780:	bf98      	it	ls
c0de6782:	4666      	movls	r6, ip
c0de6784:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de6788:	a909      	add	r1, sp, #36	@ 0x24
c0de678a:	4658      	mov	r0, fp
c0de678c:	4632      	mov	r2, r6
c0de678e:	4664      	mov	r4, ip
c0de6790:	f000 f97f 	bl	c0de6a92 <__aeabi_memcpy>
c0de6794:	46a4      	mov	ip, r4
c0de6796:	44b3      	add	fp, r6
c0de6798:	eba4 0c06 	sub.w	ip, r4, r6
c0de679c:	e003      	b.n	c0de67a6 <snprintf+0x4de>
c0de679e:	f04f 0c00 	mov.w	ip, #0
c0de67a2:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de67a6:	9e07      	ldr	r6, [sp, #28]
c0de67a8:	9c01      	ldr	r4, [sp, #4]
c0de67aa:	e01d      	b.n	c0de67e8 <snprintf+0x520>
c0de67ac:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de67b0:	9e07      	ldr	r6, [sp, #28]
c0de67b2:	e019      	b.n	c0de67e8 <snprintf+0x520>
c0de67b4:	9e07      	ldr	r6, [sp, #28]
c0de67b6:	f04f 0c00 	mov.w	ip, #0
c0de67ba:	2520      	movs	r5, #32
c0de67bc:	45d0      	cmp	r8, sl
c0de67be:	d911      	bls.n	c0de67e4 <snprintf+0x51c>
c0de67c0:	eb08 0006 	add.w	r0, r8, r6
c0de67c4:	ebaa 0108 	sub.w	r1, sl, r8
c0de67c8:	4662      	mov	r2, ip
c0de67ca:	bf00      	nop
c0de67cc:	2a00      	cmp	r2, #0
c0de67ce:	bf0f      	iteee	eq
c0de67d0:	2200      	moveq	r2, #0
c0de67d2:	f80b 5b01 	strbne.w	r5, [fp], #1
c0de67d6:	f1ac 0c01 	subne.w	ip, ip, #1
c0de67da:	4662      	movne	r2, ip
c0de67dc:	3101      	adds	r1, #1
c0de67de:	d3f5      	bcc.n	c0de67cc <snprintf+0x504>
c0de67e0:	eba0 060a 	sub.w	r6, r0, sl
c0de67e4:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de67e8:	f814 0d01 	ldrb.w	r0, [r4, #-1]!
c0de67ec:	f8cd 800c 	str.w	r8, [sp, #12]
c0de67f0:	2800      	cmp	r0, #0
c0de67f2:	f47f ad87 	bne.w	c0de6304 <snprintf+0x3c>
c0de67f6:	e013      	b.n	c0de6820 <snprintf+0x558>
c0de67f8:	2200      	movs	r2, #0
c0de67fa:	4249      	negs	r1, r1
c0de67fc:	9200      	str	r2, [sp, #0]
c0de67fe:	f04f 0b0a 	mov.w	fp, #10
c0de6802:	2201      	movs	r2, #1
c0de6804:	e628      	b.n	c0de6458 <snprintf+0x190>
c0de6806:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de680a:	e7cc      	b.n	c0de67a6 <snprintf+0x4de>
c0de680c:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de6810:	9c01      	ldr	r4, [sp, #4]
c0de6812:	f04f 0c00 	mov.w	ip, #0
c0de6816:	e7e7      	b.n	c0de67e8 <snprintf+0x520>
c0de6818:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de681c:	e000      	b.n	c0de6820 <snprintf+0x558>
c0de681e:	2600      	movs	r6, #0
c0de6820:	4630      	mov	r0, r6
c0de6822:	b011      	add	sp, #68	@ 0x44
c0de6824:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6828:	b001      	add	sp, #4
c0de682a:	4770      	bx	lr

c0de682c <pic>:
c0de682c:	490a      	ldr	r1, [pc, #40]	@ (c0de6858 <pic+0x2c>)
c0de682e:	4281      	cmp	r1, r0
c0de6830:	490a      	ldr	r1, [pc, #40]	@ (c0de685c <pic+0x30>)
c0de6832:	d806      	bhi.n	c0de6842 <pic+0x16>
c0de6834:	4281      	cmp	r1, r0
c0de6836:	d304      	bcc.n	c0de6842 <pic+0x16>
c0de6838:	b580      	push	{r7, lr}
c0de683a:	f000 f815 	bl	c0de6868 <pic_internal>
c0de683e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6842:	4907      	ldr	r1, [pc, #28]	@ (c0de6860 <pic+0x34>)
c0de6844:	4288      	cmp	r0, r1
c0de6846:	4a07      	ldr	r2, [pc, #28]	@ (c0de6864 <pic+0x38>)
c0de6848:	d305      	bcc.n	c0de6856 <pic+0x2a>
c0de684a:	4290      	cmp	r0, r2
c0de684c:	bf88      	it	hi
c0de684e:	4770      	bxhi	lr
c0de6850:	1a40      	subs	r0, r0, r1
c0de6852:	464a      	mov	r2, r9
c0de6854:	4410      	add	r0, r2
c0de6856:	4770      	bx	lr
c0de6858:	c0de0000 	.word	0xc0de0000
c0de685c:	c0ded440 	.word	0xc0ded440
c0de6860:	da7a0000 	.word	0xda7a0000
c0de6864:	da7aa000 	.word	0xda7aa000

c0de6868 <pic_internal>:
c0de6868:	467a      	mov	r2, pc
c0de686a:	4902      	ldr	r1, [pc, #8]	@ (c0de6874 <pic_internal+0xc>)
c0de686c:	1cc9      	adds	r1, r1, #3
c0de686e:	1a89      	subs	r1, r1, r2
c0de6870:	1a40      	subs	r0, r0, r1
c0de6872:	4770      	bx	lr
c0de6874:	c0de6869 	.word	0xc0de6869

c0de6878 <SVC_Call>:
c0de6878:	df01      	svc	1
c0de687a:	2900      	cmp	r1, #0
c0de687c:	d100      	bne.n	c0de6880 <exception>
c0de687e:	4770      	bx	lr

c0de6880 <exception>:
c0de6880:	4608      	mov	r0, r1
c0de6882:	f7ff fd16 	bl	c0de62b2 <os_longjmp>

c0de6886 <nvm_write>:
c0de6886:	b580      	push	{r7, lr}
c0de6888:	b084      	sub	sp, #16
c0de688a:	ab01      	add	r3, sp, #4
c0de688c:	c307      	stmia	r3!, {r0, r1, r2}
c0de688e:	2003      	movs	r0, #3
c0de6890:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de6894:	a901      	add	r1, sp, #4
c0de6896:	f7ff ffef 	bl	c0de6878 <SVC_Call>
c0de689a:	b004      	add	sp, #16
c0de689c:	bd80      	pop	{r7, pc}

c0de689e <os_perso_isonboarded>:
c0de689e:	b580      	push	{r7, lr}
c0de68a0:	b082      	sub	sp, #8
c0de68a2:	2000      	movs	r0, #0
c0de68a4:	9001      	str	r0, [sp, #4]
c0de68a6:	4669      	mov	r1, sp
c0de68a8:	209f      	movs	r0, #159	@ 0x9f
c0de68aa:	f7ff ffe5 	bl	c0de6878 <SVC_Call>
c0de68ae:	b2c0      	uxtb	r0, r0
c0de68b0:	b002      	add	sp, #8
c0de68b2:	bd80      	pop	{r7, pc}

c0de68b4 <os_perso_derive_node_bip32>:
c0de68b4:	b580      	push	{r7, lr}
c0de68b6:	b086      	sub	sp, #24
c0de68b8:	f10d 0e04 	add.w	lr, sp, #4
c0de68bc:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de68c0:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de68c4:	2053      	movs	r0, #83	@ 0x53
c0de68c6:	f2c0 5000 	movt	r0, #1280	@ 0x500
c0de68ca:	a901      	add	r1, sp, #4
c0de68cc:	f7ff ffd4 	bl	c0de6878 <SVC_Call>
c0de68d0:	b006      	add	sp, #24
c0de68d2:	bd80      	pop	{r7, pc}

c0de68d4 <os_pki_load_certificate>:
c0de68d4:	b580      	push	{r7, lr}
c0de68d6:	b086      	sub	sp, #24
c0de68d8:	e9dd ec08 	ldrd	lr, ip, [sp, #32]
c0de68dc:	e88d 400f 	stmia.w	sp, {r0, r1, r2, r3, lr}
c0de68e0:	20aa      	movs	r0, #170	@ 0xaa
c0de68e2:	f2c0 6000 	movt	r0, #1536	@ 0x600
c0de68e6:	4669      	mov	r1, sp
c0de68e8:	f8cd c014 	str.w	ip, [sp, #20]
c0de68ec:	f7ff ffc4 	bl	c0de6878 <SVC_Call>
c0de68f0:	b006      	add	sp, #24
c0de68f2:	bd80      	pop	{r7, pc}

c0de68f4 <os_perso_is_pin_set>:
c0de68f4:	b580      	push	{r7, lr}
c0de68f6:	b082      	sub	sp, #8
c0de68f8:	2000      	movs	r0, #0
c0de68fa:	9001      	str	r0, [sp, #4]
c0de68fc:	4669      	mov	r1, sp
c0de68fe:	209e      	movs	r0, #158	@ 0x9e
c0de6900:	f7ff ffba 	bl	c0de6878 <SVC_Call>
c0de6904:	b2c0      	uxtb	r0, r0
c0de6906:	b002      	add	sp, #8
c0de6908:	bd80      	pop	{r7, pc}

c0de690a <os_global_pin_is_validated>:
c0de690a:	b580      	push	{r7, lr}
c0de690c:	b082      	sub	sp, #8
c0de690e:	2000      	movs	r0, #0
c0de6910:	9001      	str	r0, [sp, #4]
c0de6912:	4669      	mov	r1, sp
c0de6914:	20a0      	movs	r0, #160	@ 0xa0
c0de6916:	f7ff ffaf 	bl	c0de6878 <SVC_Call>
c0de691a:	b2c0      	uxtb	r0, r0
c0de691c:	b002      	add	sp, #8
c0de691e:	bd80      	pop	{r7, pc}

c0de6920 <os_ux>:
c0de6920:	b580      	push	{r7, lr}
c0de6922:	b082      	sub	sp, #8
c0de6924:	9000      	str	r0, [sp, #0]
c0de6926:	2000      	movs	r0, #0
c0de6928:	9001      	str	r0, [sp, #4]
c0de692a:	2064      	movs	r0, #100	@ 0x64
c0de692c:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6930:	4669      	mov	r1, sp
c0de6932:	f7ff ffa1 	bl	c0de6878 <SVC_Call>
c0de6936:	b002      	add	sp, #8
c0de6938:	bd80      	pop	{r7, pc}

c0de693a <os_flags>:
c0de693a:	b580      	push	{r7, lr}
c0de693c:	b082      	sub	sp, #8
c0de693e:	2000      	movs	r0, #0
c0de6940:	9001      	str	r0, [sp, #4]
c0de6942:	4669      	mov	r1, sp
c0de6944:	206a      	movs	r0, #106	@ 0x6a
c0de6946:	f7ff ff97 	bl	c0de6878 <SVC_Call>
c0de694a:	b002      	add	sp, #8
c0de694c:	bd80      	pop	{r7, pc}

c0de694e <os_registry_get_current_app_tag>:
c0de694e:	b580      	push	{r7, lr}
c0de6950:	b084      	sub	sp, #16
c0de6952:	ab01      	add	r3, sp, #4
c0de6954:	c307      	stmia	r3!, {r0, r1, r2}
c0de6956:	2074      	movs	r0, #116	@ 0x74
c0de6958:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de695c:	a901      	add	r1, sp, #4
c0de695e:	f7ff ff8b 	bl	c0de6878 <SVC_Call>
c0de6962:	b004      	add	sp, #16
c0de6964:	bd80      	pop	{r7, pc}

c0de6966 <os_sched_exit>:
c0de6966:	b082      	sub	sp, #8
c0de6968:	9000      	str	r0, [sp, #0]
c0de696a:	2000      	movs	r0, #0
c0de696c:	9001      	str	r0, [sp, #4]
c0de696e:	209a      	movs	r0, #154	@ 0x9a
c0de6970:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6974:	4669      	mov	r1, sp
c0de6976:	f7ff ff7f 	bl	c0de6878 <SVC_Call>
c0de697a:	deff      	udf	#255	@ 0xff

c0de697c <os_io_init>:
c0de697c:	b580      	push	{r7, lr}
c0de697e:	b082      	sub	sp, #8
c0de6980:	9001      	str	r0, [sp, #4]
c0de6982:	2084      	movs	r0, #132	@ 0x84
c0de6984:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6988:	a901      	add	r1, sp, #4
c0de698a:	f7ff ff75 	bl	c0de6878 <SVC_Call>
c0de698e:	b002      	add	sp, #8
c0de6990:	bd80      	pop	{r7, pc}

c0de6992 <os_io_start>:
c0de6992:	b580      	push	{r7, lr}
c0de6994:	b082      	sub	sp, #8
c0de6996:	2000      	movs	r0, #0
c0de6998:	9001      	str	r0, [sp, #4]
c0de699a:	2085      	movs	r0, #133	@ 0x85
c0de699c:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de69a0:	4669      	mov	r1, sp
c0de69a2:	f7ff ff69 	bl	c0de6878 <SVC_Call>
c0de69a6:	b002      	add	sp, #8
c0de69a8:	bd80      	pop	{r7, pc}

c0de69aa <os_io_tx_cmd>:
c0de69aa:	b580      	push	{r7, lr}
c0de69ac:	b084      	sub	sp, #16
c0de69ae:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de69b2:	2088      	movs	r0, #136	@ 0x88
c0de69b4:	f2c0 4000 	movt	r0, #1024	@ 0x400
c0de69b8:	4669      	mov	r1, sp
c0de69ba:	f7ff ff5d 	bl	c0de6878 <SVC_Call>
c0de69be:	b004      	add	sp, #16
c0de69c0:	bd80      	pop	{r7, pc}

c0de69c2 <os_io_rx_evt>:
c0de69c2:	b580      	push	{r7, lr}
c0de69c4:	b084      	sub	sp, #16
c0de69c6:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de69ca:	2089      	movs	r0, #137	@ 0x89
c0de69cc:	f2c0 3000 	movt	r0, #768	@ 0x300
c0de69d0:	4669      	mov	r1, sp
c0de69d2:	f7ff ff51 	bl	c0de6878 <SVC_Call>
c0de69d6:	b004      	add	sp, #16
c0de69d8:	bd80      	pop	{r7, pc}

c0de69da <try_context_get>:
c0de69da:	b580      	push	{r7, lr}
c0de69dc:	b082      	sub	sp, #8
c0de69de:	2000      	movs	r0, #0
c0de69e0:	9001      	str	r0, [sp, #4]
c0de69e2:	4669      	mov	r1, sp
c0de69e4:	2087      	movs	r0, #135	@ 0x87
c0de69e6:	f7ff ff47 	bl	c0de6878 <SVC_Call>
c0de69ea:	b002      	add	sp, #8
c0de69ec:	bd80      	pop	{r7, pc}

c0de69ee <try_context_set>:
c0de69ee:	b580      	push	{r7, lr}
c0de69f0:	b082      	sub	sp, #8
c0de69f2:	9000      	str	r0, [sp, #0]
c0de69f4:	2000      	movs	r0, #0
c0de69f6:	9001      	str	r0, [sp, #4]
c0de69f8:	f240 100b 	movw	r0, #267	@ 0x10b
c0de69fc:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6a00:	4669      	mov	r1, sp
c0de6a02:	f7ff ff39 	bl	c0de6878 <SVC_Call>
c0de6a06:	b002      	add	sp, #8
c0de6a08:	bd80      	pop	{r7, pc}

c0de6a0a <os_sched_last_status>:
c0de6a0a:	b580      	push	{r7, lr}
c0de6a0c:	b082      	sub	sp, #8
c0de6a0e:	9000      	str	r0, [sp, #0]
c0de6a10:	2000      	movs	r0, #0
c0de6a12:	9001      	str	r0, [sp, #4]
c0de6a14:	209c      	movs	r0, #156	@ 0x9c
c0de6a16:	f2c0 1000 	movt	r0, #256	@ 0x100
c0de6a1a:	4669      	mov	r1, sp
c0de6a1c:	f7ff ff2c 	bl	c0de6878 <SVC_Call>
c0de6a20:	b2c0      	uxtb	r0, r0
c0de6a22:	b002      	add	sp, #8
c0de6a24:	bd80      	pop	{r7, pc}

c0de6a26 <screen_update>:
c0de6a26:	b580      	push	{r7, lr}
c0de6a28:	b082      	sub	sp, #8
c0de6a2a:	2000      	movs	r0, #0
c0de6a2c:	9001      	str	r0, [sp, #4]
c0de6a2e:	4669      	mov	r1, sp
c0de6a30:	207a      	movs	r0, #122	@ 0x7a
c0de6a32:	f7ff ff21 	bl	c0de6878 <SVC_Call>
c0de6a36:	b002      	add	sp, #8
c0de6a38:	bd80      	pop	{r7, pc}

c0de6a3a <bagl_hal_draw_bitmap_within_rect>:
c0de6a3a:	b570      	push	{r4, r5, r6, lr}
c0de6a3c:	b08a      	sub	sp, #40	@ 0x28
c0de6a3e:	f8dd c048 	ldr.w	ip, [sp, #72]	@ 0x48
c0de6a42:	e9dd 4e10 	ldrd	r4, lr, [sp, #64]	@ 0x40
c0de6a46:	e9dd 650e 	ldrd	r6, r5, [sp, #56]	@ 0x38
c0de6a4a:	9001      	str	r0, [sp, #4]
c0de6a4c:	207c      	movs	r0, #124	@ 0x7c
c0de6a4e:	9102      	str	r1, [sp, #8]
c0de6a50:	f6c0 1000 	movt	r0, #2304	@ 0x900
c0de6a54:	a901      	add	r1, sp, #4
c0de6a56:	9203      	str	r2, [sp, #12]
c0de6a58:	9304      	str	r3, [sp, #16]
c0de6a5a:	9605      	str	r6, [sp, #20]
c0de6a5c:	e9cd 5406 	strd	r5, r4, [sp, #24]
c0de6a60:	e9cd ec08 	strd	lr, ip, [sp, #32]
c0de6a64:	f7ff ff08 	bl	c0de6878 <SVC_Call>
c0de6a68:	b00a      	add	sp, #40	@ 0x28
c0de6a6a:	bd70      	pop	{r4, r5, r6, pc}

c0de6a6c <bagl_hal_draw_rect>:
c0de6a6c:	b580      	push	{r7, lr}
c0de6a6e:	b086      	sub	sp, #24
c0de6a70:	f10d 0e04 	add.w	lr, sp, #4
c0de6a74:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de6a78:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de6a7c:	207d      	movs	r0, #125	@ 0x7d
c0de6a7e:	f2c0 5000 	movt	r0, #1280	@ 0x500
c0de6a82:	a901      	add	r1, sp, #4
c0de6a84:	f7ff fef8 	bl	c0de6878 <SVC_Call>
c0de6a88:	b006      	add	sp, #24
c0de6a8a:	bd80      	pop	{r7, pc}

c0de6a8c <__aeabi_memclr>:
c0de6a8c:	2200      	movs	r2, #0
c0de6a8e:	f000 b804 	b.w	c0de6a9a <__aeabi_memset>

c0de6a92 <__aeabi_memcpy>:
c0de6a92:	f000 b81d 	b.w	c0de6ad0 <memcpy>

c0de6a96 <__aeabi_memmove>:
c0de6a96:	f000 b829 	b.w	c0de6aec <memmove>

c0de6a9a <__aeabi_memset>:
c0de6a9a:	4613      	mov	r3, r2
c0de6a9c:	460a      	mov	r2, r1
c0de6a9e:	4619      	mov	r1, r3
c0de6aa0:	f000 b83e 	b.w	c0de6b20 <memset>

c0de6aa4 <explicit_bzero>:
c0de6aa4:	f000 b800 	b.w	c0de6aa8 <bzero>

c0de6aa8 <bzero>:
c0de6aa8:	460a      	mov	r2, r1
c0de6aaa:	2100      	movs	r1, #0
c0de6aac:	f000 b838 	b.w	c0de6b20 <memset>

c0de6ab0 <memcmp>:
c0de6ab0:	b510      	push	{r4, lr}
c0de6ab2:	3901      	subs	r1, #1
c0de6ab4:	4402      	add	r2, r0
c0de6ab6:	4290      	cmp	r0, r2
c0de6ab8:	d101      	bne.n	c0de6abe <memcmp+0xe>
c0de6aba:	2000      	movs	r0, #0
c0de6abc:	e005      	b.n	c0de6aca <memcmp+0x1a>
c0de6abe:	7803      	ldrb	r3, [r0, #0]
c0de6ac0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de6ac4:	42a3      	cmp	r3, r4
c0de6ac6:	d001      	beq.n	c0de6acc <memcmp+0x1c>
c0de6ac8:	1b18      	subs	r0, r3, r4
c0de6aca:	bd10      	pop	{r4, pc}
c0de6acc:	3001      	adds	r0, #1
c0de6ace:	e7f2      	b.n	c0de6ab6 <memcmp+0x6>

c0de6ad0 <memcpy>:
c0de6ad0:	440a      	add	r2, r1
c0de6ad2:	4291      	cmp	r1, r2
c0de6ad4:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de6ad8:	d100      	bne.n	c0de6adc <memcpy+0xc>
c0de6ada:	4770      	bx	lr
c0de6adc:	b510      	push	{r4, lr}
c0de6ade:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de6ae2:	4291      	cmp	r1, r2
c0de6ae4:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de6ae8:	d1f9      	bne.n	c0de6ade <memcpy+0xe>
c0de6aea:	bd10      	pop	{r4, pc}

c0de6aec <memmove>:
c0de6aec:	4288      	cmp	r0, r1
c0de6aee:	b510      	push	{r4, lr}
c0de6af0:	eb01 0402 	add.w	r4, r1, r2
c0de6af4:	d902      	bls.n	c0de6afc <memmove+0x10>
c0de6af6:	4284      	cmp	r4, r0
c0de6af8:	4623      	mov	r3, r4
c0de6afa:	d807      	bhi.n	c0de6b0c <memmove+0x20>
c0de6afc:	1e43      	subs	r3, r0, #1
c0de6afe:	42a1      	cmp	r1, r4
c0de6b00:	d008      	beq.n	c0de6b14 <memmove+0x28>
c0de6b02:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de6b06:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de6b0a:	e7f8      	b.n	c0de6afe <memmove+0x12>
c0de6b0c:	4601      	mov	r1, r0
c0de6b0e:	4402      	add	r2, r0
c0de6b10:	428a      	cmp	r2, r1
c0de6b12:	d100      	bne.n	c0de6b16 <memmove+0x2a>
c0de6b14:	bd10      	pop	{r4, pc}
c0de6b16:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de6b1a:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de6b1e:	e7f7      	b.n	c0de6b10 <memmove+0x24>

c0de6b20 <memset>:
c0de6b20:	4603      	mov	r3, r0
c0de6b22:	4402      	add	r2, r0
c0de6b24:	4293      	cmp	r3, r2
c0de6b26:	d100      	bne.n	c0de6b2a <memset+0xa>
c0de6b28:	4770      	bx	lr
c0de6b2a:	f803 1b01 	strb.w	r1, [r3], #1
c0de6b2e:	e7f9      	b.n	c0de6b24 <memset+0x4>

c0de6b30 <setjmp>:
c0de6b30:	46ec      	mov	ip, sp
c0de6b32:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6b36:	f04f 0000 	mov.w	r0, #0
c0de6b3a:	4770      	bx	lr

c0de6b3c <longjmp>:
c0de6b3c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6b40:	46e5      	mov	sp, ip
c0de6b42:	0008      	movs	r0, r1
c0de6b44:	bf08      	it	eq
c0de6b46:	2001      	moveq	r0, #1
c0de6b48:	4770      	bx	lr
c0de6b4a:	bf00      	nop

c0de6b4c <strcmp>:
c0de6b4c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de6b50:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de6b54:	2a01      	cmp	r2, #1
c0de6b56:	bf28      	it	cs
c0de6b58:	429a      	cmpcs	r2, r3
c0de6b5a:	d0f7      	beq.n	c0de6b4c <strcmp>
c0de6b5c:	1ad0      	subs	r0, r2, r3
c0de6b5e:	4770      	bx	lr

c0de6b60 <strlen>:
c0de6b60:	4603      	mov	r3, r0
c0de6b62:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de6b66:	2a00      	cmp	r2, #0
c0de6b68:	d1fb      	bne.n	c0de6b62 <strlen+0x2>
c0de6b6a:	1a18      	subs	r0, r3, r0
c0de6b6c:	3801      	subs	r0, #1
c0de6b6e:	4770      	bx	lr

c0de6b70 <strncpy>:
c0de6b70:	4603      	mov	r3, r0
c0de6b72:	b510      	push	{r4, lr}
c0de6b74:	3901      	subs	r1, #1
c0de6b76:	b132      	cbz	r2, c0de6b86 <strncpy+0x16>
c0de6b78:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de6b7c:	3a01      	subs	r2, #1
c0de6b7e:	f803 4b01 	strb.w	r4, [r3], #1
c0de6b82:	2c00      	cmp	r4, #0
c0de6b84:	d1f7      	bne.n	c0de6b76 <strncpy+0x6>
c0de6b86:	2100      	movs	r1, #0
c0de6b88:	441a      	add	r2, r3
c0de6b8a:	4293      	cmp	r3, r2
c0de6b8c:	d100      	bne.n	c0de6b90 <strncpy+0x20>
c0de6b8e:	bd10      	pop	{r4, pc}
c0de6b90:	f803 1b01 	strb.w	r1, [r3], #1
c0de6b94:	e7f9      	b.n	c0de6b8a <strncpy+0x1a>

c0de6b96 <_ecode>:
	...

c0de6b98 <C_digit_dot_colors>:
c0de6b98:	0000 0000 ffff 00ff                         ........

c0de6ba0 <C_icon_app_bitmap>:
c0de6ba0:	ffff ffff ffff e43f e01f f18f e0c7 e467     ......?.......g.
c0de6bb0:	e627 e307 f18f f807 fc27 ffff ffff ffff     '.......'.......

c0de6bc0 <C_icon_app>:
c0de6bc0:	0010 0000 0010 0000 0001 0000 6b98 c0de     .............k..
c0de6bd0:	6ba0 c0de                                   .k..

c0de6bd4 <C_icon_crossmark_bitmap>:
c0de6bd4:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0de6be4:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0de6bf0 <C_icon_crossmark>:
c0de6bf0:	000e 0000 000e 0000 0001 0000 6b98 c0de     .............k..
c0de6c00:	6bd4 c0de                                   .k..

c0de6c04 <C_icon_dashboard_bitmap>:
c0de6c04:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0de6c14:	00cc c033 000c 0000 0000 0000               ..3.........

c0de6c20 <C_icon_dashboard>:
c0de6c20:	000e 0000 000e 0000 0001 0000 6b98 c0de     .............k..
c0de6c30:	6c04 c0de                                   .l..

c0de6c34 <C_icon_validate_14_bitmap>:
c0de6c34:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0de6c44:	007e 800f 0001 0000 0000 0000               ~...........

c0de6c50 <C_icon_validate_14>:
c0de6c50:	000e 0000 000e 0000 0001 0000 6b98 c0de     .............k..
c0de6c60:	6c34 c0de                                   4l..

c0de6c64 <C_icon_left_bitmap>:
c0de6c64:	1248 0842                                   H.B.

c0de6c68 <C_icon_left>:
c0de6c68:	0004 0000 0007 0000 0001 0000 6b98 c0de     .............k..
c0de6c78:	6c64 c0de                                   dl..

c0de6c7c <C_icon_right_bitmap>:
c0de6c7c:	8421 0124                                   !.$.

c0de6c80 <C_icon_right>:
c0de6c80:	0004 0000 0007 0000 0001 0000 6b98 c0de     .............k..
c0de6c90:	6c7c c0de 6425 6d00 6773 2f73 6e69 7570     |l..%d.msgs/inpu
c0de6ca0:	7374 632f 696f 736e 4e00 206f 7265 6f72     ts/coins.No erro
c0de6cb0:	0072 6964 7073 616c 2079 6170 6567 6f20     r.display page o
c0de6cc0:	7475 6f20 2066 6172 676e 0065 6566 0065     ut of range.fee.
c0de6cd0:	5f68 7061 7270 766f 0065 5f68 6170 6967     h_approve.h_pagi
c0de6ce0:	676e 695f 636e 6572 7361 0065 5f68 6170     ng_increase.h_pa
c0de6cf0:	6967 676e 635f 6e61 645f 6365 6572 7361     ging_can_decreas
c0de6d00:	2065 4f4e 4400 7665 6c65 706f 6465 6220     e NO.Developed b
c0de6d10:	3a79 2500 2073 2528 2f64 6425 0029 736d     y:.%s (%d/%d).ms
c0de6d20:	7367 762f 6c61 6575 612f 6f6d 6e75 0074     gs/value/amount.
c0de6d30:	6e55 7865 6570 7463 6465 6320 6168 6172     Unexpected chara
c0de6d40:	7463 7265 0073 6e55 7865 6570 7463 6465     cters.Unexpected
c0de6d50:	6620 6569 646c 2f00 4a00 4f53 2e4e 5420      field./.JSON. T
c0de6d60:	6f6f 6d20 6e61 2079 6f74 656b 736e 2500     oo many tokens.%
c0de6d70:	2a2e 0073 534a 4e4f 4d20 7369 6973 676e     .*s.JSON Missing
c0de6d80:	6d20 6773 0073 534a 4e4f 5520 656e 7078      msgs.JSON Unexp
c0de6d90:	6365 6574 2064 7265 6f72 0072 6863 6961     ected error.chai
c0de6da0:	5f6e 6469 2000 7325 6800 705f 6761 6e69     n_id. %s.h_pagin
c0de6db0:	5f67 6e69 7469 2500 0073 6964 7073 616c     g_init.%s.displa
c0de6dc0:	2079 6e69 6564 2078 756f 2074 666f 7220     y index out of r
c0de6dd0:	6e61 6567 4400 4645 5541 544c 4320 6168     ange.DEFAULT Cha
c0de6de0:	6e69 0020 6556 7372 6f69 3a6e 4300 6168     in .Version:.Cha
c0de6df0:	6e69 6920 2073 4f4e 2054 4544 4146 4c55     in is NOT DEFAUL
c0de6e00:	0054 6175 6f74 006d 5f68 6572 656a 7463     T.uatom.h_reject
c0de6e10:	7500 6470 7461 2065 6449 2078 6425 252f     .update Idx %d/%
c0de6e20:	0064 5b20 6425 252f 5d64 6100 6f6d 6e75     d. [%d/%d].amoun
c0de6e30:	0074 6572 6976 7765 5600 6c61 6575 6f20     t.review.Value o
c0de6e40:	7475 6f20 2066 6172 676e 0065 696d 7373     ut of range.miss
c0de6e50:	6e69 2067 6966 6c65 0064 736d 7367 6800     ing field.msgs.h
c0de6e60:	705f 6761 6e69 5f67 6163 5f6e 6564 7263     _paging_can_decr
c0de6e70:	6165 6573 5500 656e 7078 6365 6574 2064     ease.Unexpected 
c0de6e80:	6863 6961 006e 534a 4e4f 7320 7274 6e69     chain.JSON strin
c0de6e90:	2067 7369 6e20 746f 6320 6d6f 6c70 7465     g is not complet
c0de6ea0:	0065 003f 6170 6567 2d2d 4100 6170 6863     e.?.page--.Apach
c0de6eb0:	2065 2e32 0030 6552 6461 0079 0027 7469     e 2.0.Ready.'.it
c0de6ec0:	6d65 2d2d 4a00 4f53 204e 694d 7373 6e69     em--.JSON Missin
c0de6ed0:	2067 6863 6961 5f6e 6469 7300 7165 6575     g chain_id.seque
c0de6ee0:	636e 0065 7845 6570 7472 6d20 646f 3a65     nce.Expert mode:
c0de6ef0:	7100 7a70 7972 7839 6738 3266 7674 7764     .qpzry9x8gf2tvdw
c0de6f00:	7330 6a33 356e 6b34 6368 3665 756d 3761     0s3jn54khce6mua7
c0de6f10:	006c 6d45 7470 0079 534a 4e4f 4d20 7369     l.Empty.JSON Mis
c0de6f20:	6973 676e 6d20 6d65 006f 736d 7367 742f     sing memo.msgs/t
c0de6f30:	7079 0065 6f63 6d73 736f 7568 2d62 0034     ype.cosmoshub-4.
c0de6f40:	534a 4e4f 4420 6369 6974 6e6f 7261 6569     JSON Dictionarie
c0de6f50:	2073 7261 2065 6f6e 2074 6f73 7472 6465     s are not sorted
c0de6f60:	4500 5252 524f 4a00 4f53 204e 694d 7373     .ERROR.JSON Miss
c0de6f70:	6e69 2067 6573 7571 6e65 6563 6d00 6d65     ing sequence.mem
c0de6f80:	006f 5041 5250 564f 0045 534a 4e4f 4d20     o.APPROVE.JSON M
c0de6f90:	7369 6973 676e 6120 6363 756f 746e 6e20     issing account n
c0de6fa0:	6d75 6562 0072 5f68 6170 6967 676e 645f     umber.h_paging_d
c0de6fb0:	6365 6572 7361 2065 6449 2078 6425 6800     ecrease Idx %d.h
c0de6fc0:	725f 7665 6569 5f77 7075 6164 6574 645f     _review_update_d
c0de6fd0:	7461 2061 202d 6547 4e74 6d75 7449 6d65     ata - GetNumItem
c0de6fe0:	3d73 4e3d 4c55 004c 6c50 6165 6573 2e00     s==NULL.Please..
c0de6ff0:	2e2e 4100 4f54 004d 6b4f 5200 4a45 4345     ...ATOM.Ok.REJEC
c0de7000:	0054 6441 7264 7365 0073 534a 4e4f 4d20     T.Address.JSON M
c0de7010:	7369 6973 676e 6620 6565 5100 6975 0074     issing fee.Quit.
c0de7020:	6e49 7469 6169 696c 657a 2064 6d65 7470     Initialized empt
c0de7030:	2079 6f63 746e 7865 0074 6461 7264 675f     y context.addr_g
c0de7040:	7465 7449 6d65 2520 2f64 6425 6600 6565     etItem %d/%d.fee
c0de7050:	612f 6f6d 6e75 0074 6f4e 6d20 726f 2065     /amount.No more 
c0de7060:	6164 6174 5500 726e 6365 676f 696e 657a     data.Unrecognize
c0de7070:	2064 7265 6f72 2072 6f63 6564 5a00 6e6f     d error code.Zon
c0de7080:	6164 2e78 6863 6100 6464 5f72 6567 4e74     dax.ch.addr_getN
c0de7090:	6d75 7449 6d65 0073 534a 4e4f 4320 6e6f     umItems.JSON Con
c0de70a0:	6174 6e69 2073 6877 7469 7365 6170 6563     tains whitespace
c0de70b0:	6920 206e 6874 2065 6f63 7072 7375 4c00      in the corpus.L
c0de70c0:	6369 6e65 6573 003a 6170 7372 7c65 6170     icense:.parse|pa
c0de70d0:	7372 6465 0000 6e55 7865 6570 7463 6465     rsed..Unexpected
c0de70e0:	6420 7075 696c 6163 6574 2064 6966 6c65      duplicated fiel
c0de70f0:	0064 7469 6d65 7120 6575 7972 7220 7465     d.item query ret
c0de7100:	7275 656e 2064 6f6e 7220 7365 6c75 7374     urned no results
c0de7110:	4a00 4f53 2e4e 5a20 7265 206f 6f74 656b     .JSON. Zero toke
c0de7120:	736e 6d00 6773 2f73 6176 756c 2f65 6564     ns.msgs/value/de
c0de7130:	656c 6167 6f74 5f72 6461 7264 7365 0073     legator_address.
c0de7140:	6564 6f6e 006d 6e55 7865 6570 7463 6465     denom.Unexpected
c0de7150:	6220 6675 6566 2072 6e65 0064 6e55 7865      buffer end.Unex
c0de7160:	6570 7463 6465 7620 7265 6973 6e6f 6d00     pected version.m
c0de7170:	6773 2f73 756f 7074 7475 2f73 6f63 6e69     sgs/outputs/coin
c0de7180:	0073 6f4e 6c62 3665 0030 6150 6874 6100     s.Noble60.Path.a
c0de7190:	6363 756f 746e 6e5f 6d75 6562 0072 5f68     ccount_number.h_
c0de71a0:	6572 6976 7765 755f 6470 7461 5f65 6164     review_update_da
c0de71b0:	6174 2d20 4720 7465 7449 6d65 3d3d 554e     ta - GetItem==NU
c0de71c0:	4c4c 7600 2e32 3233 312e 2500 2f64 6425     LL.v2.32.1.%d/%d
c0de71d0:	2500 2073 4500 5252 3f3f 003f               .%s .ERR???.

c0de71dc <key_substitutions>:
c0de71dc:	6863 6961 5f6e 6469 0000 0000 0000 0000     chain_id........
	...
c0de720c:	0000 6843 6961 206e 4449 0000 0000 0000     ..Chain ID......
	...
c0de7240:	6361 6f63 6e75 5f74 756e 626d 7265 0000     account_number..
	...
c0de7270:	0000 6341 6f63 6e75 0074 0000 0000 0000     ..Account.......
	...
c0de72a4:	6573 7571 6e65 6563 0000 0000 0000 0000     sequence........
	...
c0de72d4:	0000 6553 7571 6e65 6563 0000 0000 0000     ..Sequence......
	...
c0de7308:	656d 6f6d 0000 0000 0000 0000 0000 0000     memo............
	...
c0de7338:	0000 654d 6f6d 0000 0000 0000 0000 0000     ..Memo..........
	...
c0de736c:	6566 2f65 6d61 756f 746e 0000 0000 0000     fee/amount......
	...
c0de739c:	0000 6546 0065 0000 0000 0000 0000 0000     ..Fee...........
	...
c0de73d0:	6566 2f65 6167 0073 0000 0000 0000 0000     fee/gas.........
	...
c0de7400:	0000 6147 0073 0000 0000 0000 0000 0000     ..Gas...........
	...
c0de7434:	736d 7367 742f 7079 0065 0000 0000 0000     msgs/type.......
	...
c0de7464:	0000 7954 6570 0000 0000 0000 0000 0000     ..Type..........
	...
c0de7498:	736d 7367 692f 706e 7475 2f73 6461 7264     msgs/inputs/addr
c0de74a8:	7365 0073 0000 0000 0000 0000 0000 0000     ess.............
	...
c0de74c8:	0000 6f53 7275 6563 4120 6464 6572 7373     ..Source Address
	...
c0de74fc:	736d 7367 692f 706e 7475 2f73 6f63 6e69     msgs/inputs/coin
c0de750c:	0073 0000 0000 0000 0000 0000 0000 0000     s...............
	...
c0de752c:	0000 6f53 7275 6563 4320 696f 736e 0000     ..Source Coins..
	...
c0de7560:	736d 7367 6f2f 7475 7570 7374 612f 6464     msgs/outputs/add
c0de7570:	6572 7373 0000 0000 0000 0000 0000 0000     ress............
	...
c0de7590:	0000 6544 7473 4120 6464 6572 7373 0000     ..Dest Address..
	...
c0de75c4:	736d 7367 6f2f 7475 7570 7374 632f 696f     msgs/outputs/coi
c0de75d4:	736e 0000 0000 0000 0000 0000 0000 0000     ns..............
	...
c0de75f4:	0000 6544 7473 4320 696f 736e 0000 0000     ..Dest Coins....
	...
c0de7628:	736d 7367 762f 6c61 6575 662f 6f72 5f6d     msgs/value/from_
c0de7638:	6461 7264 7365 0073 0000 0000 0000 0000     address.........
	...
c0de7658:	0000 7246 6d6f 0000 0000 0000 0000 0000     ..From..........
	...
c0de768c:	736d 7367 762f 6c61 6575 742f 5f6f 6461     msgs/value/to_ad
c0de769c:	7264 7365 0073 0000 0000 0000 0000 0000     dress...........
	...
c0de76bc:	0000 6f54 0000 0000 0000 0000 0000 0000     ..To............
	...
c0de76f0:	736d 7367 762f 6c61 6575 612f 6f6d 6e75     msgs/value/amoun
c0de7700:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
	...
c0de7720:	0000 6d41 756f 746e 0000 0000 0000 0000     ..Amount........
	...
c0de7754:	736d 7367 762f 6c61 6575 642f 6c65 6765     msgs/value/deleg
c0de7764:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0de7784:	0000 6544 656c 6167 6f74 0072 0000 0000     ..Delegator.....
	...
c0de77b8:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de77c8:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0de77e8:	0000 6156 696c 6164 6f74 0072 0000 0000     ..Validator.....
	...
c0de781c:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de782c:	7461 726f 735f 6372 615f 6464 6572 7373     ator_src_address
	...
c0de784c:	0000 6156 696c 6164 6f74 2072 6f53 7275     ..Validator Sour
c0de785c:	6563 0000 0000 0000 0000 0000 0000 0000     ce..............
	...
c0de7880:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0de7890:	7461 726f 645f 7473 615f 6464 6572 7373     ator_dst_address
	...
c0de78b0:	0000 6156 696c 6164 6f74 2072 6544 7473     ..Validator Dest
	...
c0de78e4:	736d 7367 762f 6c61 6575 642f 7365 7263     msgs/value/descr
c0de78f4:	7069 6974 6e6f 0000 0000 0000 0000 0000     iption..........
	...
c0de7914:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0de7948:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0de7958:	6c61 645f 7065 736f 7469 612f 6f6d 6e75     al_deposit/amoun
c0de7968:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
c0de7978:	0000 6544 6f70 6973 2074 6d41 756f 746e     ..Deposit Amount
	...
c0de79ac:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0de79bc:	6c61 645f 7065 736f 7469 642f 6e65 6d6f     al_deposit/denom
	...
c0de79dc:	0000 6544 6f70 6973 2074 6544 6f6e 006d     ..Deposit Denom.
	...
c0de7a10:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de7a20:	6173 5f6c 7974 6570 0000 0000 0000 0000     sal_type........
	...
c0de7a40:	0000 7250 706f 736f 6c61 0000 0000 0000     ..Proposal......
	...
c0de7a74:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de7a84:	6573 0072 0000 0000 0000 0000 0000 0000     ser.............
	...
c0de7aa4:	0000 7250 706f 736f 7265 0000 0000 0000     ..Proposer......
	...
c0de7ad8:	736d 7367 762f 6c61 6575 742f 7469 656c     msgs/value/title
	...
c0de7b08:	0000 6954 6c74 0065 0000 0000 0000 0000     ..Title.........
	...
c0de7b3c:	736d 7367 762f 6c61 6575 642f 7065 736f     msgs/value/depos
c0de7b4c:	7469 7265 0000 0000 0000 0000 0000 0000     iter............
	...
c0de7b6c:	0000 6553 646e 7265 0000 0000 0000 0000     ..Sender........
	...
c0de7ba0:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0de7bb0:	6173 5f6c 6469 0000 0000 0000 0000 0000     sal_id..........
	...
c0de7bd0:	0000 7250 706f 736f 6c61 4920 0044 0000     ..Proposal ID...
	...
c0de7c04:	736d 7367 762f 6c61 6575 612f 6f6d 6e75     msgs/value/amoun
c0de7c14:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
	...
c0de7c34:	0000 6d41 756f 746e 0000 0000 0000 0000     ..Amount........
	...
c0de7c68:	736d 7367 762f 6c61 6575 762f 746f 7265     msgs/value/voter
	...
c0de7c98:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0de7ccc:	736d 7367 762f 6c61 6575 6f2f 7470 6f69     msgs/value/optio
c0de7cdc:	006e 0000 0000 0000 0000 0000 0000 0000     n...............
	...
c0de7cfc:	0000 704f 6974 6e6f 0000 0000 0000 0000     ..Option........
	...

c0de7d30 <value_substitutions>:
c0de7d30:	6f63 6d73 736f 732d 6b64 4d2f 6773 6553     cosmos-sdk/MsgSe
c0de7d40:	646e 0000 0000 0000 0000 0000 0000 0000     nd..............
	...
c0de7d60:	0000 6553 646e 0000 0000 0000 0000 0000     ..Send..........
	...
c0de7d94:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0de7da4:	656c 6167 6574 0000 0000 0000 0000 0000     legate..........
	...
c0de7dc4:	0000 6544 656c 6167 6574 0000 0000 0000     ..Delegate......
	...
c0de7df8:	6f63 6d73 736f 732d 6b64 4d2f 6773 6e55     cosmos-sdk/MsgUn
c0de7e08:	6564 656c 6167 6574 0000 0000 0000 0000     delegate........
	...
c0de7e28:	0000 6e55 6564 656c 6167 6574 0000 0000     ..Undelegate....
	...
c0de7e5c:	6f63 6d73 736f 732d 6b64 4d2f 6773 6542     cosmos-sdk/MsgBe
c0de7e6c:	6967 526e 6465 6c65 6765 7461 0065 0000     ginRedelegate...
	...
c0de7e8c:	0000 6552 6564 656c 6167 6574 0000 0000     ..Redelegate....
	...
c0de7ec0:	6f63 6d73 736f 732d 6b64 4d2f 6773 7553     cosmos-sdk/MsgSu
c0de7ed0:	6d62 7469 7250 706f 736f 6c61 0000 0000     bmitProposal....
	...
c0de7ef0:	0000 7250 706f 736f 0065 0000 0000 0000     ..Propose.......
	...
c0de7f24:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0de7f34:	6f70 6973 0074 0000 0000 0000 0000 0000     posit...........
	...
c0de7f54:	0000 6544 6f70 6973 0074 0000 0000 0000     ..Deposit.......
	...
c0de7f88:	6f63 6d73 736f 732d 6b64 4d2f 6773 6f56     cosmos-sdk/MsgVo
c0de7f98:	6574 0000 0000 0000 0000 0000 0000 0000     te..............
	...
c0de7fb8:	0000 6f56 6574 0000 0000 0000 0000 0000     ..Vote..........
	...
c0de7fec:	6f63 6d73 736f 732d 6b64 4d2f 6773 6957     cosmos-sdk/MsgWi
c0de7ffc:	6874 7264 7761 6544 656c 6167 6974 6e6f     thdrawDelegation
c0de800c:	6552 6177 6472 0000 0000 0000 0000 0000     Reward..........
c0de801c:	0000 6957 6874 7264 7761 5220 7765 7261     ..Withdraw Rewar
c0de802c:	0064 0000 0000 0000 0000 0000 0000 0000     d...............
	...

c0de8050 <whitespaces>:
c0de8050:	0c20 0d0a 0b09 0000 6964 6173 6c62 6465      .......disabled
c0de8060:	0000 0000 4853 574f 4e49 2047 4144 4154     ....SHOWING DATA
c0de8070:	0000 0000                                   ....

c0de8074 <ux_idle_flow_1_step_val>:
c0de8074:	6bc0 c0de 7182 c0de 5228 da7a               .k...q..(Rz.

c0de8080 <ux_idle_flow_1_step>:
c0de8080:	6001 c0de 8074 c0de 0000 0000 0000 0000     .`..t...........

c0de8090 <ux_idle_flow_2_step_validate_step>:
c0de8090:	3a71 c0de 0000 0000 0000 0000 0000 0000     q:..............

c0de80a0 <ux_idle_flow_2_step_validate>:
c0de80a0:	8090 c0de ffff ffff                         ........

c0de80a8 <ux_idle_flow_2_step_val>:
c0de80a8:	6ee4 c0de 5268 da7a                         .n..hRz.

c0de80b0 <ux_idle_flow_2_step>:
c0de80b0:	3a9d c0de 80a8 c0de 80a0 c0de 0000 0000     .:..............

c0de80c0 <ux_idle_flow_3_step_val>:
c0de80c0:	6de4 c0de 71c3 c0de                         .m...q..

c0de80c8 <ux_idle_flow_3_step>:
c0de80c8:	59a9 c0de 80c0 c0de 0000 0000 0000 0000     .Y..............

c0de80d8 <ux_idle_flow_4_step_validate_step>:
c0de80d8:	3ae9 c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de80e8 <ux_idle_flow_4_step_validate>:
c0de80e8:	80d8 c0de ffff ffff                         ........

c0de80f0 <ux_idle_flow_4_step_val>:
c0de80f0:	6d05 c0de 707d c0de                         .m..}p..

c0de80f8 <ux_idle_flow_4_step>:
c0de80f8:	59a9 c0de 80f0 c0de 80e8 c0de 0000 0000     .Y..............

c0de8108 <ux_idle_flow_5_step_val>:
c0de8108:	70bf c0de 6eab c0de                         .p...n..

c0de8110 <ux_idle_flow_5_step>:
c0de8110:	59a9 c0de 8108 c0de 0000 0000 0000 0000     .Y..............

c0de8120 <ux_idle_flow_6_step_validate_step>:
c0de8120:	3aeb c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de8130 <ux_idle_flow_6_step_validate>:
c0de8130:	8120 c0de ffff ffff                          .......

c0de8138 <ux_idle_flow_6_step_val>:
c0de8138:	6c20 c0de 701b c0de                          l...p..

c0de8140 <ux_idle_flow_6_step>:
c0de8140:	5f37 c0de 8138 c0de 8130 c0de 0000 0000     7_..8...0.......

c0de8150 <ux_idle_flow>:
c0de8150:	8080 c0de 80b0 c0de 80c8 c0de 80f8 c0de     ................
c0de8160:	8110 c0de 8140 c0de ffff ffff               ....@.......

c0de816c <ux_error_flow_1_step_val>:
c0de816c:	5228 da7a 5268 da7a                         (Rz.hRz.

c0de8174 <ux_error_flow_1_step>:
c0de8174:	5d4d c0de 816c c0de 0000 0000 0000 0000     M]..l...........

c0de8184 <ux_error_flow_2_step_validate_step>:
c0de8184:	3af1 c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de8194 <ux_error_flow_2_step_validate>:
c0de8194:	8184 c0de ffff ffff                         ........

c0de819c <ux_error_flow_2_step_val>:
c0de819c:	6c50 c0de 6ff8 c0de                         Pl...o..

c0de81a4 <ux_error_flow_2_step>:
c0de81a4:	5f37 c0de 819c c0de 8194 c0de 0000 0000     7_..............

c0de81b4 <ux_error_flow>:
c0de81b4:	8174 c0de 81a4 c0de ffff ffff               t...........

c0de81c0 <ux_review_flow_1_review_title_val>:
c0de81c0:	6bc0 c0de 6fe8 c0de 6e32 c0de               .k...o..2n..

c0de81cc <ux_review_flow_1_review_title>:
c0de81cc:	6001 c0de 81c0 c0de 0000 0000 0000 0000     .`..............

c0de81dc <ux_review_flow_2_start_step>:
c0de81dc:	3af7 c0de 0000 0000 0000 0000 0000 0000     .:..............

c0de81ec <ux_review_flow_2_step_val>:
c0de81ec:	5228 da7a 5268 da7a                         (Rz.hRz.

c0de81f4 <ux_review_flow_2_step>:
c0de81f4:	3afb c0de 81ec c0de 0000 0000 0000 0000     .:..............

c0de8204 <ux_review_flow_2_end_step>:
c0de8204:	3b0d c0de 0000 0000 0000 0000 0000 0000     .;..............

c0de8214 <ux_review_flow_3_step_validate_step>:
c0de8214:	3b11 c0de 0000 0000 0000 0000 0000 0000     .;..............

c0de8224 <ux_review_flow_3_step_validate>:
c0de8224:	8214 c0de ffff ffff                         ........

c0de822c <ux_review_flow_3_step_val>:
c0de822c:	6c50 c0de 6f82 c0de                         Pl...o..

c0de8234 <ux_review_flow_3_step>:
c0de8234:	5f37 c0de 822c c0de 8224 c0de 0000 0000     7_..,...$.......

c0de8244 <ux_review_flow_4_step_validate_step>:
c0de8244:	3b17 c0de 0000 0000 0000 0000 0000 0000     .;..............

c0de8254 <ux_review_flow_4_step_validate>:
c0de8254:	8244 c0de ffff ffff                         D.......

c0de825c <ux_review_flow_4_step_val>:
c0de825c:	6bf0 c0de 6ffb c0de                         .k...o..

c0de8264 <ux_review_flow_4_step>:
c0de8264:	5f37 c0de 825c c0de 8254 c0de 0000 0000     7_..\...T.......

c0de8274 <ux_review_flow>:
c0de8274:	81cc c0de 81dc c0de 81f4 c0de 8204 c0de     ................
c0de8284:	8234 c0de 8264 c0de ffff ffff               4...d.......

c0de8290 <seph_io_general_status>:
c0de8290:	0060 0002                                    `....

c0de8295 <seph_io_se_power_off>:
c0de8295:	0046                                         F..

c0de8298 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0de8298:	f3ff 253b 9224 f29f 4897 8824 2cb7 870e     ..;%$....H$..,..
c0de82a8:	1fa6 4e02 b1ac 7ec2 637e 358d 3c72 d86c     ...N...~~c.5r<l.
c0de82b8:	e0e0 9eed df3d b417 cdb7 d926 7b6c 4c0b     ....=.....&.l{.L
c0de82c8:	7bfb 0c1e 33f3 d60c 0fff 3118 8c66 de18     .{...3.....1f...
c0de82d8:	cf3c 3cf3 ec7b cccf 6ecc cc63 f99c 630f     <..<{....nc....c
c0de82e8:	3187 187e 69c7 8fda 3f61 ccf3 9cfc 7c21     .1~..i..a?....!|
c0de82f8:	3cf3 1f7b cc63 3318 3cde f37b 7b3c 3cde     .<{.c..3.<{.<{.<
c0de8308:	3ecf 398c 0f0f 6036 980d 6199 0618 f03f     .>.9..6`...a..?.
c0de8318:	c303 cc30 0fcc 6763 3180 30f8 f766 4bd6     ..0...cg.1.0f..K
c0de8328:	bdaf 019f 01f8 3c18 7e3c 7e66 c3e7 ef7f     .......<<~f~....
c0de8338:	f7b7 7efe 318c f0c6 3cdf f3cf 7f3c f33f     ...~.1...<..<.?.
c0de8348:	f333 8c7f c637 fe18 ec30 3cf3 f3fb ff3c     3...7...0..<..<.
c0de8358:	3cf3 ffcf ccff cccc cccc f307 e6d9 d9f1     .<..............
c0de8368:	e6cc 8c63 c631 c7f8 bf8f ff7f f57e ddee     ..c.1.......~...
c0de8378:	f3e7 bdfb cfdf bee7 78f1 1e3c 7d8f ef7f     .........x<..}..
c0de8388:	c7fd be18 78f1 1e3c 7d8f 3030 b6cf cf6d     .....x<..}00..m.
c0de8398:	cdb6 8c7e 38e3 3f7f 30c3 c30c f330 cf3c     ..~..8.?.0..0.<.
c0de83a8:	3cf3 f37b cf3c e79e 7331 9bb6 acdd 3566     .<{.<...1s....f5
c0de83b8:	70ee 1b07 66c3 3c3c 3c3c c366 9b63 838d     .p...f<<<<f.c...
c0de83c8:	60c1 7f30 0e18 70c3 fe18 333f 3333 43f3     .`0....p..?333.C
c0de83d8:	c318 c218 cccf cccc 0cfc 49e3 3f33 1e33     ...........I3?3.
c0de83e8:	cfec 0fb3 f0c3 fb6d 7dbe 71bc 061c 300f     ......m..}.q...0
c0de83f8:	dbcc 6df7 3cf3 fff3 e060 dc01 637c 318c     ...m.<..`...|c.1
c0de8408:	9b7e 63cd 8df0 3ec7 fc63 f7bd f3de 0cff     ~..c...>c.......
c0de8418:	cccc cccc c307 7db0 b3cf ffed edff dbdb     .......}........
c0de8428:	dbdb 7ddb bdef 1c37 fddb e36e b6df dbef     ...}..7...n.....
c0de8438:	0c37 be03 df7d 0fb6 30c3 33fd 6f33 8f3c     7...}....0.33o<.
c0de8448:	e61f 631b 070c ef7b 2fbd 9b63 c6cd 33e1     ...c..{../c....3
c0de8458:	e6db 7f9f 30cc 7703 871b bb63 6303 8d9b     .....0.w..c..c..
c0de8468:	e1c6 1870 3f0e 30c6 0fc6 319c 0e76 8c63     ..p..?.0...1v.c.
c0de8478:	ff03 3fff 18c7 b9c3 e631 0f6f               ...?....1.o.

c0de8484 <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0de8484:	c000 0000 c000 0088 8008 0089 c010 0081     ................
c0de8494:	802c 0001 c04c 1082 4074 0082 c098 0088     ,...L...t@......
c0de84a4:	009c 1081 00ac 0089 80bc 0081 80cc 0101     ................
c0de84b4:	c0dc 0380 00e0 0281 c0e4 0388 40e8 0081     .............@..
c0de84c4:	00fc 108a 8114 1089 c124 1089 c138 1089     ........$...8...
c0de84d4:	014c 108a 8164 1089 0174 108a c18c 1089     L...d...t.......
c0de84e4:	01a0 108a 01b8 108a c1d0 0188 c1d8 0180     ................
c0de84f4:	41e4 0101 81f8 0201 4204 0101 8214 1081     .A.......B......
c0de8504:	8228 0082 0258 0082 c278 1089 c28c 1089     (...X...x.......
c0de8514:	02a0 108a 82b8 1089 82c8 0089 02dc 108a     ................
c0de8524:	02f4 108a 030c 1089 4314 1081 032c 008a     .........C..,...
c0de8534:	8348 0089 c35c 108a 4380 108a 439c 108a     H...\....C...C..
c0de8544:	c3b8 1089 43cc 108a 03f0 108a 8408 0089     .....C..........
c0de8554:	841c 0081 0434 108a 844c 0081 c464 0082     ....4...L...d...
c0de8564:	0490 0082 c4b0 0081 c4cc 0081 44e8 0089     .............D..
c0de8574:	44fc 0081 4510 1081 c524 1081 c534 1501     .D...E..$...4...
c0de8584:	c538 2011 c53c 1181 c550 0089 8568 0181     8.. <...P...h...
c0de8594:	c57c 1081 c594 0181 85ac 1081 c5c0 0181     |...............
c0de85a4:	c5e0 1089 05f4 1089 45fc 1081 c614 0089     .........E......
c0de85b4:	062c 1089 8634 118a c64c 1189 c65c 0181     ,...4...L...\...
c0de85c4:	c670 0189 c68c 1181 46a8 0189 86b4 0189     p........F......
c0de85d4:	46c4 0101 c6d8 1189 c6e8 0181 86fc 0182     .F..............
c0de85e4:	c71c 0181 0734 1182 8754 0181 4768 0081     ....4...T...hG..
c0de85f4:	8784 2091 4790 0081 87a8 0201               ... .G......

c0de8600 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0de8600:	01ec 0108 090c 7e20 8484 c0de 8298 c0de     ...... ~........

c0de8610 <bitmapOPEN_SANS_LIGHT_16PX>:
c0de8610:	0cff 9999 4090 0882 fe22 8123 7fc4 1044     .....@..".#...D.
c0de8620:	0241 0809 229e 5091 7070 6448 83ca 4906     A....".PppHd...I
c0de8630:	2244 9092 9484 1299 9092 2444 0922 1c06     D"........D$"...
c0de8640:	8844 4110 8181 90c4 0341 f30d 0f09 555a     D..A....A.....ZU
c0de8650:	2955 aaa5 16aa 0408 4fe2 88a1 0408 8fe2     U).......O......
c0de8660:	2040 076a 100f 4421 2108 8842 511c 1830     @ j...!D.!B..Q0.
c0de8670:	060c c183 88a0 7403 9249 0924 109e 0408     .......tI.$.....
c0de8680:	4102 0410 e041 9e0f 1010 f304 8080 2040     .A..A.........@ 
c0de8690:	03e8 c040 4140 8482 1088 ff21 0081 0201     ..@.@A....!.....
c0de86a0:	813e 1040 80f8 4081 c860 3803 2083 e810     >.@....@`..8. ..
c0de86b0:	830d a0c1 0790 207f 0408 4082 0810 8104     ....... ...@....
c0de86c0:	511c 2830 88e2 c182 d060 9e07 3050 0c18     .Q0(....`...P0..
c0de86d0:	817b 1040 01cc c00f 0f03 0540 1840 c063     {.@.......@.@.c.
c0de86e0:	0180 7f01 e000 010f 0603 318c 0f04 0842     ...........1..B.
c0de86f0:	1111 0802 f001 20c1 2402 119e 9099 9909     ....... .$......
c0de8700:	8990 7719 2001 0400 0f80 c030 0300 4812     ...w. ....0....H
c0de8710:	4120 3f08 0902 5024 9f80 3050 fa18 8284      A.?..$P..P0....
c0de8720:	60c1 03e8 04f8 0102 0101 0101 0201 f804     .`..............
c0de8730:	211f 8141 8181 8181 4181 1f21 107f c104     .!A......A!.....
c0de8740:	041f 1041 7ffc 0410 f041 4107 0410 11f8     ..A.....A..A....
c0de8750:	4020 0100 1004 807e 0a01 2048 817e 8181      @....~...H ~...
c0de8760:	8181 81ff 8181 8181 ff81 240f 9249 4924     ...........$I.$I
c0de8770:	c10e 2450 1851 1214 4891 0828 1041 4104     ..P$Q....H(.A..A
c0de8780:	0410 1041 01fc 3c06 c0f0 1685 685a 4992     ..A....<....Zh.I
c0de8790:	18c6 8063 8381 8583 8985 9191 c1a1 81c1     ..c.............
c0de87a0:	1078 5022 0180 1806 8060 0a01 0844 5f1e     x."P....`...D.._
c0de87b0:	8618 f861 4105 0410 1078 5022 0180 1806     ..a..A..x."P....
c0de87c0:	8060 0a01 0844 401e 0200 9f18 3050 0c18     `...D..@....P0..
c0de87d0:	227d 5091 0830 60be 1020 c070 4080 f020     }".P0..` .p..@ .
c0de87e0:	7f07 0204 4081 1020 0408 0102 8181 8181     .....@ .........
c0de87f0:	8181 8181 8181 3c42 0301 120a 8824 1108     ......B<....$...
c0de8800:	2822 4050 c180 30a0 0c24 4489 1122 4249     "(P@...0$..D".IB
c0de8810:	5092 1428 860a 6181 1020 0482 4111 0282     .P(....a ....A..
c0de8820:	0a02 4414 0888 080a 4281 2442 1824 1018     ...D.....BB$$...
c0de8830:	1010 1010 207f 0408 2041 0208 e041 1f0f     ..... ..A ..A...
c0de8840:	1111 1111 1111 410f 4108 2108 2108 8f08     .......A.A.!.!..
c0de8850:	8888 8888 8888 080f 450a 0a24 0106 117f     .........E$.....
c0de8860:	1e01 8208 187e 2ec6 0101 0101 433d 8181     ....~.......=C..
c0de8870:	8181 4381 bc3d 0410 1041 3c08 8080 8080     ...C=...A..<....
c0de8880:	c2bc 8181 8181 c281 1cbc 3051 0ff8 8404     ..........Q0....
c0de8890:	383c 1041 411f 0410 1041 fc04 4222 2242     <8A..A..A..."BB"
c0de88a0:	043c 7c02 8142 3e43 4081 d020 0519 c183     <..|B.C>.@ .....
c0de88b0:	3060 0418 07f9 4804 2492 1e49 4081 1020     `0.....H.$I..@ .
c0de88c0:	248a 850a 2445 0414 1fff 339d 4146 8418     .$..E$.....3FA..
c0de88d0:	1841 4184 8418 0841 519d 1830 060c 4183     A..A..A..Q0....A
c0de88e0:	511c 1830 060c 1c45 433d 8181 8181 4381     .Q0...E.=C.....C
c0de88f0:	013d 0101 bc01 81c2 8181 8181 bcc2 8080     =...............
c0de8900:	8080 847d 4210 0108 843e 20c1 0f84 09e2     ..}..B..>.. ....
c0de8910:	8421 8210 c103 3060 0c18 c506 c15e 48a0     !.....`0....^..H
c0de8920:	a224 2850 6108 4628 2462 9249 2944 830c     $.P(.a(Fb$I.D)..
c0de8930:	0810 6101 3128 230c 2185 a0c1 2448 50a2     ...a(1.#.!..H$.P
c0de8940:	0828 8104 1f30 4422 0884 981f 4210 1908     (...0."D.....B..
c0de8950:	1084 0842 ff06 01ff 1043 0842 84c1 4210     ..B.....C.B....B
c0de8960:	07c4 003c                                   ..<.

c0de8964 <charactersOPEN_SANS_LIGHT_16PX>:
c0de8964:	0000 0001 c000 1088 8008 1089 8010 0082     ................
c0de8974:	404c 108a 4078 108b c0bc 108a c0f4 1088     L@..x@..........
c0de8984:	00f8 1089 0108 1089 4118 100a 4130 110a     .........A..0A..
c0de8994:	c148 1580 414c 1409 0150 1589 8154 1081     H...LA..P...T...
c0de89a4:	4170 108a 419c 4092 41b0 108a 41dc 108a     pA...A.@.A...A..
c0de89b4:	4208 0082 4240 108a 426c 108a 4298 108a     .B..@B..lB...B..
c0de89c4:	42c0 108a 42ec 108a 0318 1209 0324 1209     .B...B......$...
c0de89d4:	4330 118a 434c 128a 435c 118a c374 1089     0C..LC..\C..t...
c0de89e4:	8394 108b 83e8 0082 8424 1092 8450 108a     ........$...P...
c0de89f4:	c480 1092 44b0 1092 04d4 0092 04f8 108b     .....D..........
c0de8a04:	0534 2093 0564 1091 856c 3081 4584 0092     4.. d...l..0.E..
c0de8a14:	05b0 0092 85d4 2093 0610 2093 0640 108b     ....... ... @...
c0de8a24:	467c 1092 06a0 108b 86ec 1092 4718 108a     |F...........G..
c0de8a34:	c744 0081 0770 2093 87a0 1082 87d4 0083     D...p.. ........
c0de8a44:	4828 0082 4860 1082 4890 108a 48bc 0089     (H..`H...H...H..
c0de8a54:	88dc 1081 48fc 1081 491c 108a 0938 1702     .....H...I..8...
c0de8a64:	493c 301a 0944 120a 8960 100a 0994 120a     <I.0D...`.......
c0de8a74:	89b0 100a 49e4 120a 8a04 0001 0a2c 0202     .....I......,...
c0de8a84:	4a60 100a 0a90 2109 4a98 2101 0ab0 000a     `J.....!.J.!....
c0de8a94:	0ae0 2009 8ae8 120b 4b20 120a 4b40 120a     ... .... K..@K..
c0de8aa4:	8b60 120a 8b94 120a 8bc8 0209 cbe0 1209     `...............
c0de8ab4:	4bf8 0181 4c14 120a 0c34 1202 0c54 0203     .K...L..4...T...
c0de8ac4:	0c8c 120a 0ca8 1202 ccd4 1209 8cec 1081     ................
c0de8ad4:	8d14 4009 8d20 0089 4d44 130a               ...@ ...DM..

c0de8ae0 <fontOPEN_SANS_LIGHT_16PX>:
c0de8ae0:	0353 0109 0d11 7e20 8964 c0de 8610 c0de     S..... ~d.......

c0de8af0 <bitmapOPEN_SANS_REGULAR_11PX>:
c0de8af0:	0fbf 9220 429f 49f9 5f04 cc65 a30f a54a     .. ..B.I._e...J.
c0de8b00:	a5bd c552 924e 6518 bd1a 6a03 0a95 6a95     ..R.N..e...j...j
c0de8b10:	0405 33f1 c812 1a8f 0103 4448 1222 9996     ...3......HD"...
c0de8b20:	6999 492e 8792 2488 87f1 8868 1078 4946     .i.I...$..h.x.FI
c0de8b30:	0fd2 1f41 88f1 1e78 99f1 8f69 2448 9622     ..A...x...i.H$".
c0de8b40:	9969 9669 8f99 2178 6802 3348 0f84 210f     i.i...x!.hH3...!
c0de8b50:	12cc 4887 2022 827c a5b9 a5a5 01fd 083e     ...H" |.......>.
c0de8b60:	850a f222 8289 c63f 6317 7efc 1084 f0c2     .."...?..c.~....
c0de8b70:	185f 6186 7e18 f11f f111 843f 43f0 7e08     _..a.~....?..C.~
c0de8b80:	0410 1871 61fa fe18 1861 ff86 4924 1c92     ..q..a..a...$I..
c0de8b90:	5251 450c 8512 8421 4210 c3f8 c3c3 a5a5     QR.E..!..B......
c0de8ba0:	9999 e199 9658 1a69 be87 3060 0c18 7d06     ....X.i...`0...}
c0de8bb0:	c62f 42f8 be08 3060 0c18 7d06 1010 c62f     /..B..`0...}../.
c0de8bc0:	52f8 1e8c 8c31 9f78 4210 2108 1861 6186     .R..1.x..B.!a..a
c0de8bd0:	7a18 9141 4448 50a1 3110 24ca 5293 294a     .zA.HD.P.1.$.RJ)
c0de8be0:	0845 a121 30c4 248c a185 3124 8208 8f20     E.!..0.$..$1.. .
c0de8bf0:	1244 4ff1 2492 2139 4422 2784 9249 0c3c     D..O.$9!"D.'I.<.
c0de8c00:	4923 1f21 8f09 f99f bc21 6318 1e7c e111     #I!.....!..c|...
c0de8c10:	fa10 6318 9ef4 e11f 2f2c 2222 24be 8239     ...c....,/"".$9.
c0de8c20:	8617 211e 18bc 8c63 04fd 9249 01e4 5911     ...!..c...I....Y
c0de8c30:	9953 efff 9191 9191 2f91 18c6 2e23 18c6     S......../..#...
c0de8c40:	2f1d 18c6 085f 3e01 18c6 843d 4f10 1792     ./.._..>..=..O..
c0de8c50:	7843 22f2 0e22 c631 3f18 24a1 0c49 1103     Cx."".1..?.$I...
c0de8c60:	a955 4552 0884 6699 a199 4924 430c 0310     U.RE...f..$I.C..
c0de8c70:	111f 3e22 9496 3248 07ff 4493 1a4a 00c3     ..">..H2...DJ...

c0de8c80 <charactersOPEN_SANS_REGULAR_11PX>:
c0de8c80:	c000 0000 c000 1088 0004 1089 c008 0081     ................
c0de8c90:	8024 1109 4034 108a 4050 208a 8068 0088     $...4@..P@. h...
c0de8ca0:	c06c 1080 c078 0088 8084 0081 8094 0201     l...x...........
c0de8cb0:	c09c 1400 00a0 1309 c0a4 1408 00a8 0081     ................
c0de8cc0:	80b8 1089 80c8 2089 80d4 1089 80e4 1089     ....... ........
c0de8cd0:	00f4 108a 810c 1089 811c 1089 812c 1089     ............,...
c0de8ce0:	813c 1089 814c 1089 c15c 1188 c160 1180     <...L...\...`...
c0de8cf0:	8168 1109 8174 1209 817c 1109 4188 0089     h...t...|....A..
c0de8d00:	8198 108a c1bc 0081 c1d8 1089 c1ec 1089     ................
c0de8d10:	0200 108a 8218 1089 8228 0089 023c 108a     ........(...<...
c0de8d20:	0254 108a c26c 1088 0270 1081 c280 0089     T...l...p.......
c0de8d30:	8298 0089 82ac 108a 02cc 108a 42e4 108a     .............B..
c0de8d40:	c300 1089 4314 108a c338 1089 834c 1089     .....C..8...L...
c0de8d50:	c35c 1089 0370 108a c388 0081 83a4 0082     \...p...........
c0de8d60:	c3cc 1081 83e4 0081 83fc 1089 040c 0089     ................
c0de8d70:	041c 0081 042c 1081 843c 0081 844c 1501     ....,...<...L...
c0de8d80:	8450 2011 8454 1189 c460 1089 4474 0189     P.. T...`...tD..
c0de8d90:	c480 1089 8494 1189 44a0 1081 84b0 0181     .........D......
c0de8da0:	c4cc 1089 c4e0 1088 04e4 1081 84f8 1089     ................
c0de8db0:	c508 1088 850c 118a c524 1189 c534 1189     ........$...4...
c0de8dc0:	c544 1189 c55c 1189 0574 0189 457c 0189     D...\...t...|E..
c0de8dd0:	0588 0101 c598 1189 85a8 0181 45bc 0182     .............E..
c0de8de0:	85d8 1189 85e4 0181 4600 0181 0610 0089     .........F......
c0de8df0:	8620 2099 0628 1081 8638 1209                .. (...8...

c0de8dfc <fontOPEN_SANS_REGULAR_11PX>:
c0de8dfc:	018f 010a 090c 7e20 8c80 c0de 8af0 c0de     ...... ~........

c0de8e0c <C_bagl_fonts>:
c0de8e0c:	8600 c0de 8ae0 c0de 8dfc c0de               ............

c0de8e18 <C_bagl_fonts_count>:
c0de8e18:	0003 0000                                   ....

c0de8e1c <ux_layout_bb_elements>:
c0de8e1c:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8e2c:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8e3c:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8e4c:	ffff 00ff 0000 0000 0000 0000 6c68 c0de     ............hl..
c0de8e5c:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8e6c:	ffff 00ff 0000 0000 0000 0000 6c80 c0de     .............l..
c0de8e7c:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0de8e8c:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de8e9c:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0de8eac:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de8ebc <ux_layout_paging_elements>:
c0de8ebc:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8ecc:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8edc:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8eec:	ffff 00ff 0000 0000 0000 0000 6c68 c0de     ............hl..
c0de8efc:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8f0c:	ffff 00ff 0000 0000 0000 0000 6c80 c0de     .............l..
c0de8f1c:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0de8f2c:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de8f3c:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0de8f4c:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8f5c:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0de8f6c:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de8f7c:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0de8f8c:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0de8f9c <ux_layout_pb_elements>:
c0de8f9c:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de8fac:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de8fbc:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de8fcc:	ffff 00ff 0000 0000 0000 0000 6c68 c0de     ............hl..
c0de8fdc:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de8fec:	ffff 00ff 0000 0000 0000 0000 6c80 c0de     .............l..
c0de8ffc:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0de900c:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de901c:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0de902c:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de903c <ux_layout_pbb_elements>:
c0de903c:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0de904c:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0de905c:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0de906c:	ffff 00ff 0000 0000 0000 0000 6c68 c0de     ............hl..
c0de907c:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0de908c:	ffff 00ff 0000 0000 0000 0000 6c80 c0de     .............l..
c0de909c:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0de90ac:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0de90bc:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0de90cc:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0de90dc:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0de90ec:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0de90fc <g_pcHex>:
c0de90fc:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de910c <g_pcHex_cap>:
c0de910c:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de911c <_etext>:
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
