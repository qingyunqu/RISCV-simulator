
double-float:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	58018193          	addi	gp,gp,1408 # 12630 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11e48 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11e80 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	39a000ef          	jal	ra,1045e <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	2ec50513          	addi	a0,a0,748 # 103b4 <__libc_fini_array>
   100d0:	2b8000ef          	jal	ra,10388 <atexit>
   100d4:	328000ef          	jal	ra,103fc <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	2b20006f          	j	10394 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	e3050713          	addi	a4,a0,-464 # 11e30 <__TMC_END__>
   100f0:	e3078793          	addi	a5,a5,-464 # 11e30 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	e3050513          	addi	a0,a0,-464
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	e3078593          	addi	a1,a5,-464 # 11e30 <__TMC_END__>
   10114:	e3050793          	addi	a5,a0,-464 # 11e30 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	e3050513          	addi	a0,a0,-464
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11e48 <_edata>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6541                	lui	a0,0x10
   10156:	65850513          	addi	a0,a0,1624 # 10658 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11e48 <_edata>
   10168:	60a2                	ld	ra,8(sp)
   1016a:	6402                	ld	s0,0(sp)
   1016c:	0141                	addi	sp,sp,16
   1016e:	8082                	ret
   10170:	8082                	ret

0000000000010172 <frame_dummy>:
   10172:	000007b7          	lui	a5,0x0
   10176:	00078793          	mv	a5,a5
   1017a:	cf99                	beqz	a5,10198 <frame_dummy+0x26>
   1017c:	65c9                	lui	a1,0x12
   1017e:	6541                	lui	a0,0x10
   10180:	1141                	addi	sp,sp,-16
   10182:	e5058593          	addi	a1,a1,-432 # 11e50 <object.5217>
   10186:	65850513          	addi	a0,a0,1624 # 10658 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	fe010113          	addi	sp,sp,-32
   101a0:	00813c23          	sd	s0,24(sp)
   101a4:	02010413          	addi	s0,sp,32
   101a8:	fe042623          	sw	zero,-20(s0)
   101ac:	00400793          	li	a5,4
   101b0:	fef42623          	sw	a5,-20(s0)
   101b4:	0580006f          	j	1020c <main+0x70>
   101b8:	000117b7          	lui	a5,0x11
   101bc:	fec42703          	lw	a4,-20(s0)
   101c0:	00371713          	slli	a4,a4,0x3
   101c4:	67078793          	addi	a5,a5,1648 # 11670 <__fini_array_end>
   101c8:	00f707b3          	add	a5,a4,a5
   101cc:	0007b707          	fld	fa4,0(a5)
   101d0:	fec42783          	lw	a5,-20(s0)
   101d4:	d20786d3          	fcvt.d.w	fa3,a5
   101d8:	000107b7          	lui	a5,0x10
   101dc:	6507b787          	fld	fa5,1616(a5) # 10650 <__errno+0x6>
   101e0:	12f6f7d3          	fmul.d	fa5,fa3,fa5
   101e4:	02f777d3          	fadd.d	fa5,fa4,fa5
   101e8:	000117b7          	lui	a5,0x11
   101ec:	fec42703          	lw	a4,-20(s0)
   101f0:	00371713          	slli	a4,a4,0x3
   101f4:	67078793          	addi	a5,a5,1648 # 11670 <__fini_array_end>
   101f8:	00f707b3          	add	a5,a4,a5
   101fc:	00f7b027          	fsd	fa5,0(a5)
   10200:	fec42783          	lw	a5,-20(s0)
   10204:	fff7879b          	addiw	a5,a5,-1
   10208:	fef42623          	sw	a5,-20(s0)
   1020c:	fec42783          	lw	a5,-20(s0)
   10210:	0007879b          	sext.w	a5,a5
   10214:	fa07d2e3          	bgez	a5,101b8 <main+0x1c>
   10218:	00500793          	li	a5,5
   1021c:	fef42623          	sw	a5,-20(s0)
   10220:	0580006f          	j	10278 <main+0xdc>
   10224:	000117b7          	lui	a5,0x11
   10228:	fec42703          	lw	a4,-20(s0)
   1022c:	00371713          	slli	a4,a4,0x3
   10230:	67078793          	addi	a5,a5,1648 # 11670 <__fini_array_end>
   10234:	00f707b3          	add	a5,a4,a5
   10238:	0007b707          	fld	fa4,0(a5)
   1023c:	fec42783          	lw	a5,-20(s0)
   10240:	d20786d3          	fcvt.d.w	fa3,a5
   10244:	000107b7          	lui	a5,0x10
   10248:	6507b787          	fld	fa5,1616(a5) # 10650 <__errno+0x6>
   1024c:	12f6f7d3          	fmul.d	fa5,fa3,fa5
   10250:	0af777d3          	fsub.d	fa5,fa4,fa5
   10254:	000117b7          	lui	a5,0x11
   10258:	fec42703          	lw	a4,-20(s0)
   1025c:	00371713          	slli	a4,a4,0x3
   10260:	67078793          	addi	a5,a5,1648 # 11670 <__fini_array_end>
   10264:	00f707b3          	add	a5,a4,a5
   10268:	00f7b027          	fsd	fa5,0(a5)
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	0017879b          	addiw	a5,a5,1
   10274:	fef42623          	sw	a5,-20(s0)
   10278:	fec42783          	lw	a5,-20(s0)
   1027c:	0007871b          	sext.w	a4,a5
   10280:	00900793          	li	a5,9
   10284:	fae7d0e3          	ble	a4,a5,10224 <main+0x88>
   10288:	00400793          	li	a5,4
   1028c:	fef42623          	sw	a5,-20(s0)
   10290:	0600006f          	j	102f0 <main+0x154>
   10294:	000117b7          	lui	a5,0x11
   10298:	fec42703          	lw	a4,-20(s0)
   1029c:	00271713          	slli	a4,a4,0x2
   102a0:	6c078793          	addi	a5,a5,1728 # 116c0 <result_float>
   102a4:	00f707b3          	add	a5,a4,a5
   102a8:	0007a787          	flw	fa5,0(a5)
   102ac:	42078753          	fcvt.d.s	fa4,fa5
   102b0:	fec42783          	lw	a5,-20(s0)
   102b4:	d20786d3          	fcvt.d.w	fa3,a5
   102b8:	000107b7          	lui	a5,0x10
   102bc:	6507b787          	fld	fa5,1616(a5) # 10650 <__errno+0x6>
   102c0:	12f6f7d3          	fmul.d	fa5,fa3,fa5
   102c4:	02f777d3          	fadd.d	fa5,fa4,fa5
   102c8:	4017f7d3          	fcvt.s.d	fa5,fa5
   102cc:	000117b7          	lui	a5,0x11
   102d0:	fec42703          	lw	a4,-20(s0)
   102d4:	00271713          	slli	a4,a4,0x2
   102d8:	6c078793          	addi	a5,a5,1728 # 116c0 <result_float>
   102dc:	00f707b3          	add	a5,a4,a5
   102e0:	00f7a027          	fsw	fa5,0(a5)
   102e4:	fec42783          	lw	a5,-20(s0)
   102e8:	fff7879b          	addiw	a5,a5,-1
   102ec:	fef42623          	sw	a5,-20(s0)
   102f0:	fec42783          	lw	a5,-20(s0)
   102f4:	0007879b          	sext.w	a5,a5
   102f8:	f807dee3          	bgez	a5,10294 <main+0xf8>
   102fc:	00500793          	li	a5,5
   10300:	fef42623          	sw	a5,-20(s0)
   10304:	0600006f          	j	10364 <main+0x1c8>
   10308:	000117b7          	lui	a5,0x11
   1030c:	fec42703          	lw	a4,-20(s0)
   10310:	00271713          	slli	a4,a4,0x2
   10314:	6c078793          	addi	a5,a5,1728 # 116c0 <result_float>
   10318:	00f707b3          	add	a5,a4,a5
   1031c:	0007a787          	flw	fa5,0(a5)
   10320:	42078753          	fcvt.d.s	fa4,fa5
   10324:	fec42783          	lw	a5,-20(s0)
   10328:	d20786d3          	fcvt.d.w	fa3,a5
   1032c:	000107b7          	lui	a5,0x10
   10330:	6507b787          	fld	fa5,1616(a5) # 10650 <__errno+0x6>
   10334:	12f6f7d3          	fmul.d	fa5,fa3,fa5
   10338:	0af777d3          	fsub.d	fa5,fa4,fa5
   1033c:	4017f7d3          	fcvt.s.d	fa5,fa5
   10340:	000117b7          	lui	a5,0x11
   10344:	fec42703          	lw	a4,-20(s0)
   10348:	00271713          	slli	a4,a4,0x2
   1034c:	6c078793          	addi	a5,a5,1728 # 116c0 <result_float>
   10350:	00f707b3          	add	a5,a4,a5
   10354:	00f7a027          	fsw	fa5,0(a5)
   10358:	fec42783          	lw	a5,-20(s0)
   1035c:	0017879b          	addiw	a5,a5,1
   10360:	fef42623          	sw	a5,-20(s0)
   10364:	fec42783          	lw	a5,-20(s0)
   10368:	0007871b          	sext.w	a4,a5
   1036c:	00900793          	li	a5,9
   10370:	f8e7dce3          	ble	a4,a5,10308 <main+0x16c>
   10374:	00000793          	li	a5,0
   10378:	00078513          	mv	a0,a5
   1037c:	01813403          	ld	s0,24(sp)
   10380:	02010113          	addi	sp,sp,32
   10384:	00008067          	ret

0000000000010388 <atexit>:
   10388:	85aa                	mv	a1,a0
   1038a:	4681                	li	a3,0
   1038c:	4601                	li	a2,0
   1038e:	4501                	li	a0,0
   10390:	1780006f          	j	10508 <__register_exitproc>

0000000000010394 <exit>:
   10394:	1141                	addi	sp,sp,-16
   10396:	4581                	li	a1,0
   10398:	e022                	sd	s0,0(sp)
   1039a:	e406                	sd	ra,8(sp)
   1039c:	842a                	mv	s0,a0
   1039e:	1d0000ef          	jal	ra,1056e <__call_exitprocs>
   103a2:	67c9                	lui	a5,0x12
   103a4:	e387b503          	ld	a0,-456(a5) # 11e38 <_global_impure_ptr>
   103a8:	6d3c                	ld	a5,88(a0)
   103aa:	c391                	beqz	a5,103ae <exit+0x1a>
   103ac:	9782                	jalr	a5
   103ae:	8522                	mv	a0,s0
   103b0:	26e000ef          	jal	ra,1061e <_exit>

00000000000103b4 <__libc_fini_array>:
   103b4:	7179                	addi	sp,sp,-48
   103b6:	67c5                	lui	a5,0x11
   103b8:	6745                	lui	a4,0x11
   103ba:	f022                	sd	s0,32(sp)
   103bc:	66870713          	addi	a4,a4,1640 # 11668 <__init_array_end>
   103c0:	67078413          	addi	s0,a5,1648 # 11670 <__fini_array_end>
   103c4:	8c19                	sub	s0,s0,a4
   103c6:	ec26                	sd	s1,24(sp)
   103c8:	e84a                	sd	s2,16(sp)
   103ca:	e44e                	sd	s3,8(sp)
   103cc:	f406                	sd	ra,40(sp)
   103ce:	840d                	srai	s0,s0,0x3
   103d0:	4481                	li	s1,0
   103d2:	67078913          	addi	s2,a5,1648
   103d6:	59e1                	li	s3,-8
   103d8:	00941a63          	bne	s0,s1,103ec <__libc_fini_array+0x38>
   103dc:	7402                	ld	s0,32(sp)
   103de:	70a2                	ld	ra,40(sp)
   103e0:	64e2                	ld	s1,24(sp)
   103e2:	6942                	ld	s2,16(sp)
   103e4:	69a2                	ld	s3,8(sp)
   103e6:	6145                	addi	sp,sp,48
   103e8:	cffff06f          	j	100e6 <_fini>
   103ec:	033487b3          	mul	a5,s1,s3
   103f0:	0485                	addi	s1,s1,1
   103f2:	97ca                	add	a5,a5,s2
   103f4:	ff87b783          	ld	a5,-8(a5)
   103f8:	9782                	jalr	a5
   103fa:	bff9                	j	103d8 <__libc_fini_array+0x24>

00000000000103fc <__libc_init_array>:
   103fc:	1101                	addi	sp,sp,-32
   103fe:	e822                	sd	s0,16(sp)
   10400:	e426                	sd	s1,8(sp)
   10402:	6445                	lui	s0,0x11
   10404:	64c5                	lui	s1,0x11
   10406:	65c48793          	addi	a5,s1,1628 # 1165c <__preinit_array_end>
   1040a:	65c40413          	addi	s0,s0,1628 # 1165c <__preinit_array_end>
   1040e:	8c1d                	sub	s0,s0,a5
   10410:	e04a                	sd	s2,0(sp)
   10412:	ec06                	sd	ra,24(sp)
   10414:	840d                	srai	s0,s0,0x3
   10416:	65c48493          	addi	s1,s1,1628
   1041a:	4901                	li	s2,0
   1041c:	02891763          	bne	s2,s0,1044a <__libc_init_array+0x4e>
   10420:	64c5                	lui	s1,0x11
   10422:	cc5ff0ef          	jal	ra,100e6 <_fini>
   10426:	6445                	lui	s0,0x11
   10428:	66048793          	addi	a5,s1,1632 # 11660 <__frame_dummy_init_array_entry>
   1042c:	66840413          	addi	s0,s0,1640 # 11668 <__init_array_end>
   10430:	8c1d                	sub	s0,s0,a5
   10432:	840d                	srai	s0,s0,0x3
   10434:	66048493          	addi	s1,s1,1632
   10438:	4901                	li	s2,0
   1043a:	00891d63          	bne	s2,s0,10454 <__libc_init_array+0x58>
   1043e:	60e2                	ld	ra,24(sp)
   10440:	6442                	ld	s0,16(sp)
   10442:	64a2                	ld	s1,8(sp)
   10444:	6902                	ld	s2,0(sp)
   10446:	6105                	addi	sp,sp,32
   10448:	8082                	ret
   1044a:	609c                	ld	a5,0(s1)
   1044c:	0905                	addi	s2,s2,1
   1044e:	04a1                	addi	s1,s1,8
   10450:	9782                	jalr	a5
   10452:	b7e9                	j	1041c <__libc_init_array+0x20>
   10454:	609c                	ld	a5,0(s1)
   10456:	0905                	addi	s2,s2,1
   10458:	04a1                	addi	s1,s1,8
   1045a:	9782                	jalr	a5
   1045c:	bff9                	j	1043a <__libc_init_array+0x3e>

000000000001045e <memset>:
   1045e:	433d                	li	t1,15
   10460:	872a                	mv	a4,a0
   10462:	02c37163          	bleu	a2,t1,10484 <memset+0x26>
   10466:	00f77793          	andi	a5,a4,15
   1046a:	e3c1                	bnez	a5,104ea <memset+0x8c>
   1046c:	e1bd                	bnez	a1,104d2 <memset+0x74>
   1046e:	ff067693          	andi	a3,a2,-16
   10472:	8a3d                	andi	a2,a2,15
   10474:	96ba                	add	a3,a3,a4
   10476:	e30c                	sd	a1,0(a4)
   10478:	e70c                	sd	a1,8(a4)
   1047a:	0741                	addi	a4,a4,16
   1047c:	fed76de3          	bltu	a4,a3,10476 <memset+0x18>
   10480:	e211                	bnez	a2,10484 <memset+0x26>
   10482:	8082                	ret
   10484:	40c306b3          	sub	a3,t1,a2
   10488:	068a                	slli	a3,a3,0x2
   1048a:	00000297          	auipc	t0,0x0
   1048e:	9696                	add	a3,a3,t0
   10490:	00a68067          	jr	10(a3)
   10494:	00b70723          	sb	a1,14(a4)
   10498:	00b706a3          	sb	a1,13(a4)
   1049c:	00b70623          	sb	a1,12(a4)
   104a0:	00b705a3          	sb	a1,11(a4)
   104a4:	00b70523          	sb	a1,10(a4)
   104a8:	00b704a3          	sb	a1,9(a4)
   104ac:	00b70423          	sb	a1,8(a4)
   104b0:	00b703a3          	sb	a1,7(a4)
   104b4:	00b70323          	sb	a1,6(a4)
   104b8:	00b702a3          	sb	a1,5(a4)
   104bc:	00b70223          	sb	a1,4(a4)
   104c0:	00b701a3          	sb	a1,3(a4)
   104c4:	00b70123          	sb	a1,2(a4)
   104c8:	00b700a3          	sb	a1,1(a4)
   104cc:	00b70023          	sb	a1,0(a4)
   104d0:	8082                	ret
   104d2:	0ff5f593          	andi	a1,a1,255
   104d6:	00859693          	slli	a3,a1,0x8
   104da:	8dd5                	or	a1,a1,a3
   104dc:	01059693          	slli	a3,a1,0x10
   104e0:	8dd5                	or	a1,a1,a3
   104e2:	02059693          	slli	a3,a1,0x20
   104e6:	8dd5                	or	a1,a1,a3
   104e8:	b759                	j	1046e <memset+0x10>
   104ea:	00279693          	slli	a3,a5,0x2
   104ee:	00000297          	auipc	t0,0x0
   104f2:	9696                	add	a3,a3,t0
   104f4:	8286                	mv	t0,ra
   104f6:	fa2680e7          	jalr	-94(a3)
   104fa:	8096                	mv	ra,t0
   104fc:	17c1                	addi	a5,a5,-16
   104fe:	8f1d                	sub	a4,a4,a5
   10500:	963e                	add	a2,a2,a5
   10502:	f8c371e3          	bleu	a2,t1,10484 <memset+0x26>
   10506:	b79d                	j	1046c <memset+0xe>

0000000000010508 <__register_exitproc>:
   10508:	67c9                	lui	a5,0x12
   1050a:	e387b703          	ld	a4,-456(a5) # 11e38 <_global_impure_ptr>
   1050e:	832a                	mv	t1,a0
   10510:	1f873783          	ld	a5,504(a4)
   10514:	e789                	bnez	a5,1051e <__register_exitproc+0x16>
   10516:	20070793          	addi	a5,a4,512
   1051a:	1ef73c23          	sd	a5,504(a4)
   1051e:	4798                	lw	a4,8(a5)
   10520:	487d                	li	a6,31
   10522:	557d                	li	a0,-1
   10524:	04e84463          	blt	a6,a4,1056c <__register_exitproc+0x64>
   10528:	02030a63          	beqz	t1,1055c <__register_exitproc+0x54>
   1052c:	00371813          	slli	a6,a4,0x3
   10530:	983e                	add	a6,a6,a5
   10532:	10c83823          	sd	a2,272(a6)
   10536:	3107a883          	lw	a7,784(a5)
   1053a:	4605                	li	a2,1
   1053c:	00e6163b          	sllw	a2,a2,a4
   10540:	00c8e8b3          	or	a7,a7,a2
   10544:	3117a823          	sw	a7,784(a5)
   10548:	20d83823          	sd	a3,528(a6)
   1054c:	4689                	li	a3,2
   1054e:	00d31763          	bne	t1,a3,1055c <__register_exitproc+0x54>
   10552:	3147a683          	lw	a3,788(a5)
   10556:	8e55                	or	a2,a2,a3
   10558:	30c7aa23          	sw	a2,788(a5)
   1055c:	0017069b          	addiw	a3,a4,1
   10560:	0709                	addi	a4,a4,2
   10562:	070e                	slli	a4,a4,0x3
   10564:	c794                	sw	a3,8(a5)
   10566:	97ba                	add	a5,a5,a4
   10568:	e38c                	sd	a1,0(a5)
   1056a:	4501                	li	a0,0
   1056c:	8082                	ret

000000000001056e <__call_exitprocs>:
   1056e:	715d                	addi	sp,sp,-80
   10570:	67c9                	lui	a5,0x12
   10572:	f44e                	sd	s3,40(sp)
   10574:	e387b983          	ld	s3,-456(a5) # 11e38 <_global_impure_ptr>
   10578:	f052                	sd	s4,32(sp)
   1057a:	ec56                	sd	s5,24(sp)
   1057c:	e85a                	sd	s6,16(sp)
   1057e:	e486                	sd	ra,72(sp)
   10580:	e0a2                	sd	s0,64(sp)
   10582:	fc26                	sd	s1,56(sp)
   10584:	f84a                	sd	s2,48(sp)
   10586:	e45e                	sd	s7,8(sp)
   10588:	8aaa                	mv	s5,a0
   1058a:	8a2e                	mv	s4,a1
   1058c:	4b05                	li	s6,1
   1058e:	1f89b403          	ld	s0,504(s3)
   10592:	c801                	beqz	s0,105a2 <__call_exitprocs+0x34>
   10594:	4404                	lw	s1,8(s0)
   10596:	34fd                	addiw	s1,s1,-1
   10598:	00349913          	slli	s2,s1,0x3
   1059c:	9922                	add	s2,s2,s0
   1059e:	0004dd63          	bgez	s1,105b8 <__call_exitprocs+0x4a>
   105a2:	60a6                	ld	ra,72(sp)
   105a4:	6406                	ld	s0,64(sp)
   105a6:	74e2                	ld	s1,56(sp)
   105a8:	7942                	ld	s2,48(sp)
   105aa:	79a2                	ld	s3,40(sp)
   105ac:	7a02                	ld	s4,32(sp)
   105ae:	6ae2                	ld	s5,24(sp)
   105b0:	6b42                	ld	s6,16(sp)
   105b2:	6ba2                	ld	s7,8(sp)
   105b4:	6161                	addi	sp,sp,80
   105b6:	8082                	ret
   105b8:	000a0963          	beqz	s4,105ca <__call_exitprocs+0x5c>
   105bc:	21093783          	ld	a5,528(s2)
   105c0:	01478563          	beq	a5,s4,105ca <__call_exitprocs+0x5c>
   105c4:	34fd                	addiw	s1,s1,-1
   105c6:	1961                	addi	s2,s2,-8
   105c8:	bfd9                	j	1059e <__call_exitprocs+0x30>
   105ca:	441c                	lw	a5,8(s0)
   105cc:	01093683          	ld	a3,16(s2)
   105d0:	37fd                	addiw	a5,a5,-1
   105d2:	02979663          	bne	a5,s1,105fe <__call_exitprocs+0x90>
   105d6:	c404                	sw	s1,8(s0)
   105d8:	d6f5                	beqz	a3,105c4 <__call_exitprocs+0x56>
   105da:	31042703          	lw	a4,784(s0)
   105de:	009b163b          	sllw	a2,s6,s1
   105e2:	00842b83          	lw	s7,8(s0)
   105e6:	8f71                	and	a4,a4,a2
   105e8:	2701                	sext.w	a4,a4
   105ea:	ef09                	bnez	a4,10604 <__call_exitprocs+0x96>
   105ec:	9682                	jalr	a3
   105ee:	4418                	lw	a4,8(s0)
   105f0:	1f89b783          	ld	a5,504(s3)
   105f4:	f9771de3          	bne	a4,s7,1058e <__call_exitprocs+0x20>
   105f8:	fcf406e3          	beq	s0,a5,105c4 <__call_exitprocs+0x56>
   105fc:	bf49                	j	1058e <__call_exitprocs+0x20>
   105fe:	00093823          	sd	zero,16(s2)
   10602:	bfd9                	j	105d8 <__call_exitprocs+0x6a>
   10604:	31442783          	lw	a5,788(s0)
   10608:	11093583          	ld	a1,272(s2)
   1060c:	8ff1                	and	a5,a5,a2
   1060e:	2781                	sext.w	a5,a5
   10610:	e781                	bnez	a5,10618 <__call_exitprocs+0xaa>
   10612:	8556                	mv	a0,s5
   10614:	9682                	jalr	a3
   10616:	bfe1                	j	105ee <__call_exitprocs+0x80>
   10618:	852e                	mv	a0,a1
   1061a:	9682                	jalr	a3
   1061c:	bfc9                	j	105ee <__call_exitprocs+0x80>

000000000001061e <_exit>:
   1061e:	4581                	li	a1,0
   10620:	4601                	li	a2,0
   10622:	4681                	li	a3,0
   10624:	4701                	li	a4,0
   10626:	4781                	li	a5,0
   10628:	05d00893          	li	a7,93
   1062c:	00000073          	ecall
   10630:	00055c63          	bgez	a0,10648 <_exit+0x2a>
   10634:	1141                	addi	sp,sp,-16
   10636:	e022                	sd	s0,0(sp)
   10638:	842a                	mv	s0,a0
   1063a:	e406                	sd	ra,8(sp)
   1063c:	4080043b          	negw	s0,s0
   10640:	00a000ef          	jal	ra,1064a <__errno>
   10644:	c100                	sw	s0,0(a0)
   10646:	a001                	j	10646 <_exit+0x28>
   10648:	a001                	j	10648 <_exit+0x2a>

000000000001064a <__errno>:
   1064a:	8101b503          	ld	a0,-2032(gp) # 11e40 <_impure_ptr>
   1064e:	8082                	ret
