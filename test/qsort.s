
qsort:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	55818193          	addi	gp,gp,1368 # 12608 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11e20 <_edata>
   100bc:	8f818613          	addi	a2,gp,-1800 # 11f00 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	3f6000ef          	jal	ra,104ba <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	34850513          	addi	a0,a0,840 # 10410 <__libc_fini_array>
   100d0:	314000ef          	jal	ra,103e4 <atexit>
   100d4:	384000ef          	jal	ra,10458 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	292000ef          	jal	ra,10370 <main>
   100e2:	30e0006f          	j	103f0 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	e0850713          	addi	a4,a0,-504 # 11e08 <__TMC_END__>
   100f0:	e0878793          	addi	a5,a5,-504 # 11e08 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	e0850513          	addi	a0,a0,-504
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	e0878593          	addi	a1,a5,-504 # 11e08 <__TMC_END__>
   10114:	e0850793          	addi	a5,a0,-504 # 11e08 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	e0850513          	addi	a0,a0,-504
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11e20 <_edata>
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
   10156:	6ac50513          	addi	a0,a0,1708 # 106ac <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11e20 <_edata>
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
   10182:	e2858593          	addi	a1,a1,-472 # 11e28 <object.5217>
   10186:	6ac50513          	addi	a0,a0,1708 # 106ac <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <qsort>:
   1019c:	fd010113          	addi	sp,sp,-48
   101a0:	02113423          	sd	ra,40(sp)
   101a4:	02813023          	sd	s0,32(sp)
   101a8:	03010413          	addi	s0,sp,48
   101ac:	00050793          	mv	a5,a0
   101b0:	00058713          	mv	a4,a1
   101b4:	fcf42e23          	sw	a5,-36(s0)
   101b8:	00070793          	mv	a5,a4
   101bc:	fcf42c23          	sw	a5,-40(s0)
   101c0:	000127b7          	lui	a5,0x12
   101c4:	fdc42703          	lw	a4,-36(s0)
   101c8:	00271713          	slli	a4,a4,0x2
   101cc:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   101d0:	00f707b3          	add	a5,a4,a5
   101d4:	0007a783          	lw	a5,0(a5)
   101d8:	fef42223          	sw	a5,-28(s0)
   101dc:	fdc42783          	lw	a5,-36(s0)
   101e0:	fef42623          	sw	a5,-20(s0)
   101e4:	fd842783          	lw	a5,-40(s0)
   101e8:	fef42423          	sw	a5,-24(s0)
   101ec:	fdc42703          	lw	a4,-36(s0)
   101f0:	fd842783          	lw	a5,-40(s0)
   101f4:	0007071b          	sext.w	a4,a4
   101f8:	0007879b          	sext.w	a5,a5
   101fc:	16f75063          	ble	a5,a4,1035c <qsort+0x1c0>
   10200:	0f00006f          	j	102f0 <qsort+0x154>
   10204:	fe842783          	lw	a5,-24(s0)
   10208:	fff7879b          	addiw	a5,a5,-1
   1020c:	fef42423          	sw	a5,-24(s0)
   10210:	fec42703          	lw	a4,-20(s0)
   10214:	fe842783          	lw	a5,-24(s0)
   10218:	0007071b          	sext.w	a4,a4
   1021c:	0007879b          	sext.w	a5,a5
   10220:	02f75463          	ble	a5,a4,10248 <qsort+0xac>
   10224:	000127b7          	lui	a5,0x12
   10228:	fe842703          	lw	a4,-24(s0)
   1022c:	00271713          	slli	a4,a4,0x2
   10230:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   10234:	00f707b3          	add	a5,a4,a5
   10238:	0007a703          	lw	a4,0(a5)
   1023c:	fe442783          	lw	a5,-28(s0)
   10240:	0007879b          	sext.w	a5,a5
   10244:	fcf750e3          	ble	a5,a4,10204 <qsort+0x68>
   10248:	000127b7          	lui	a5,0x12
   1024c:	fe842703          	lw	a4,-24(s0)
   10250:	00271713          	slli	a4,a4,0x2
   10254:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   10258:	00f707b3          	add	a5,a4,a5
   1025c:	0007a703          	lw	a4,0(a5)
   10260:	000127b7          	lui	a5,0x12
   10264:	fec42683          	lw	a3,-20(s0)
   10268:	00269693          	slli	a3,a3,0x2
   1026c:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   10270:	00f687b3          	add	a5,a3,a5
   10274:	00e7a023          	sw	a4,0(a5)
   10278:	0100006f          	j	10288 <qsort+0xec>
   1027c:	fec42783          	lw	a5,-20(s0)
   10280:	0017879b          	addiw	a5,a5,1
   10284:	fef42623          	sw	a5,-20(s0)
   10288:	fec42703          	lw	a4,-20(s0)
   1028c:	fe842783          	lw	a5,-24(s0)
   10290:	0007071b          	sext.w	a4,a4
   10294:	0007879b          	sext.w	a5,a5
   10298:	02f75463          	ble	a5,a4,102c0 <qsort+0x124>
   1029c:	000127b7          	lui	a5,0x12
   102a0:	fec42703          	lw	a4,-20(s0)
   102a4:	00271713          	slli	a4,a4,0x2
   102a8:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   102ac:	00f707b3          	add	a5,a4,a5
   102b0:	0007a703          	lw	a4,0(a5)
   102b4:	fe442783          	lw	a5,-28(s0)
   102b8:	0007879b          	sext.w	a5,a5
   102bc:	fce7d0e3          	ble	a4,a5,1027c <qsort+0xe0>
   102c0:	000127b7          	lui	a5,0x12
   102c4:	fec42703          	lw	a4,-20(s0)
   102c8:	00271713          	slli	a4,a4,0x2
   102cc:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   102d0:	00f707b3          	add	a5,a4,a5
   102d4:	0007a703          	lw	a4,0(a5)
   102d8:	000127b7          	lui	a5,0x12
   102dc:	fe842683          	lw	a3,-24(s0)
   102e0:	00269693          	slli	a3,a3,0x2
   102e4:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   102e8:	00f687b3          	add	a5,a3,a5
   102ec:	00e7a023          	sw	a4,0(a5)
   102f0:	fec42703          	lw	a4,-20(s0)
   102f4:	fe842783          	lw	a5,-24(s0)
   102f8:	0007071b          	sext.w	a4,a4
   102fc:	0007879b          	sext.w	a5,a5
   10300:	f0f748e3          	blt	a4,a5,10210 <qsort+0x74>
   10304:	000127b7          	lui	a5,0x12
   10308:	fec42703          	lw	a4,-20(s0)
   1030c:	00271713          	slli	a4,a4,0x2
   10310:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   10314:	00f707b3          	add	a5,a4,a5
   10318:	fe442703          	lw	a4,-28(s0)
   1031c:	00e7a023          	sw	a4,0(a5)
   10320:	fec42783          	lw	a5,-20(s0)
   10324:	fff7879b          	addiw	a5,a5,-1
   10328:	0007871b          	sext.w	a4,a5
   1032c:	fdc42783          	lw	a5,-36(s0)
   10330:	00070593          	mv	a1,a4
   10334:	00078513          	mv	a0,a5
   10338:	e65ff0ef          	jal	ra,1019c <qsort>
   1033c:	fec42783          	lw	a5,-20(s0)
   10340:	0017879b          	addiw	a5,a5,1
   10344:	0007879b          	sext.w	a5,a5
   10348:	fd842703          	lw	a4,-40(s0)
   1034c:	00070593          	mv	a1,a4
   10350:	00078513          	mv	a0,a5
   10354:	e49ff0ef          	jal	ra,1019c <qsort>
   10358:	0080006f          	j	10360 <qsort+0x1c4>
   1035c:	00000013          	nop
   10360:	02813083          	ld	ra,40(sp)
   10364:	02013403          	ld	s0,32(sp)
   10368:	03010113          	addi	sp,sp,48
   1036c:	00008067          	ret

0000000000010370 <main>:
   10370:	fe010113          	addi	sp,sp,-32
   10374:	00113c23          	sd	ra,24(sp)
   10378:	00813823          	sd	s0,16(sp)
   1037c:	02010413          	addi	s0,sp,32
   10380:	02800793          	li	a5,40
   10384:	fef42623          	sw	a5,-20(s0)
   10388:	02c0006f          	j	103b4 <main+0x44>
   1038c:	000127b7          	lui	a5,0x12
   10390:	fec42703          	lw	a4,-20(s0)
   10394:	00271713          	slli	a4,a4,0x2
   10398:	e5878793          	addi	a5,a5,-424 # 11e58 <result>
   1039c:	00f707b3          	add	a5,a4,a5
   103a0:	fec42703          	lw	a4,-20(s0)
   103a4:	00e7a023          	sw	a4,0(a5)
   103a8:	fec42783          	lw	a5,-20(s0)
   103ac:	fff7879b          	addiw	a5,a5,-1
   103b0:	fef42623          	sw	a5,-20(s0)
   103b4:	fec42783          	lw	a5,-20(s0)
   103b8:	0007879b          	sext.w	a5,a5
   103bc:	fcf048e3          	bgtz	a5,1038c <main+0x1c>
   103c0:	02700593          	li	a1,39
   103c4:	00000513          	li	a0,0
   103c8:	dd5ff0ef          	jal	ra,1019c <qsort>
   103cc:	00000793          	li	a5,0
   103d0:	00078513          	mv	a0,a5
   103d4:	01813083          	ld	ra,24(sp)
   103d8:	01013403          	ld	s0,16(sp)
   103dc:	02010113          	addi	sp,sp,32
   103e0:	00008067          	ret

00000000000103e4 <atexit>:
   103e4:	85aa                	mv	a1,a0
   103e6:	4681                	li	a3,0
   103e8:	4601                	li	a2,0
   103ea:	4501                	li	a0,0
   103ec:	1780006f          	j	10564 <__register_exitproc>

00000000000103f0 <exit>:
   103f0:	1141                	addi	sp,sp,-16
   103f2:	4581                	li	a1,0
   103f4:	e022                	sd	s0,0(sp)
   103f6:	e406                	sd	ra,8(sp)
   103f8:	842a                	mv	s0,a0
   103fa:	1d0000ef          	jal	ra,105ca <__call_exitprocs>
   103fe:	67c9                	lui	a5,0x12
   10400:	e107b503          	ld	a0,-496(a5) # 11e10 <_global_impure_ptr>
   10404:	6d3c                	ld	a5,88(a0)
   10406:	c391                	beqz	a5,1040a <exit+0x1a>
   10408:	9782                	jalr	a5
   1040a:	8522                	mv	a0,s0
   1040c:	26e000ef          	jal	ra,1067a <_exit>

0000000000010410 <__libc_fini_array>:
   10410:	7179                	addi	sp,sp,-48
   10412:	67c5                	lui	a5,0x11
   10414:	6745                	lui	a4,0x11
   10416:	f022                	sd	s0,32(sp)
   10418:	6b870713          	addi	a4,a4,1720 # 116b8 <__init_array_end>
   1041c:	6c078413          	addi	s0,a5,1728 # 116c0 <__fini_array_end>
   10420:	8c19                	sub	s0,s0,a4
   10422:	ec26                	sd	s1,24(sp)
   10424:	e84a                	sd	s2,16(sp)
   10426:	e44e                	sd	s3,8(sp)
   10428:	f406                	sd	ra,40(sp)
   1042a:	840d                	srai	s0,s0,0x3
   1042c:	4481                	li	s1,0
   1042e:	6c078913          	addi	s2,a5,1728
   10432:	59e1                	li	s3,-8
   10434:	00941a63          	bne	s0,s1,10448 <__libc_fini_array+0x38>
   10438:	7402                	ld	s0,32(sp)
   1043a:	70a2                	ld	ra,40(sp)
   1043c:	64e2                	ld	s1,24(sp)
   1043e:	6942                	ld	s2,16(sp)
   10440:	69a2                	ld	s3,8(sp)
   10442:	6145                	addi	sp,sp,48
   10444:	ca3ff06f          	j	100e6 <_fini>
   10448:	033487b3          	mul	a5,s1,s3
   1044c:	0485                	addi	s1,s1,1
   1044e:	97ca                	add	a5,a5,s2
   10450:	ff87b783          	ld	a5,-8(a5)
   10454:	9782                	jalr	a5
   10456:	bff9                	j	10434 <__libc_fini_array+0x24>

0000000000010458 <__libc_init_array>:
   10458:	1101                	addi	sp,sp,-32
   1045a:	e822                	sd	s0,16(sp)
   1045c:	e426                	sd	s1,8(sp)
   1045e:	6445                	lui	s0,0x11
   10460:	64c5                	lui	s1,0x11
   10462:	6b048793          	addi	a5,s1,1712 # 116b0 <__frame_dummy_init_array_entry>
   10466:	6b040413          	addi	s0,s0,1712 # 116b0 <__frame_dummy_init_array_entry>
   1046a:	8c1d                	sub	s0,s0,a5
   1046c:	e04a                	sd	s2,0(sp)
   1046e:	ec06                	sd	ra,24(sp)
   10470:	840d                	srai	s0,s0,0x3
   10472:	6b048493          	addi	s1,s1,1712
   10476:	4901                	li	s2,0
   10478:	02891763          	bne	s2,s0,104a6 <__libc_init_array+0x4e>
   1047c:	64c5                	lui	s1,0x11
   1047e:	c69ff0ef          	jal	ra,100e6 <_fini>
   10482:	6445                	lui	s0,0x11
   10484:	6b048793          	addi	a5,s1,1712 # 116b0 <__frame_dummy_init_array_entry>
   10488:	6b840413          	addi	s0,s0,1720 # 116b8 <__init_array_end>
   1048c:	8c1d                	sub	s0,s0,a5
   1048e:	840d                	srai	s0,s0,0x3
   10490:	6b048493          	addi	s1,s1,1712
   10494:	4901                	li	s2,0
   10496:	00891d63          	bne	s2,s0,104b0 <__libc_init_array+0x58>
   1049a:	60e2                	ld	ra,24(sp)
   1049c:	6442                	ld	s0,16(sp)
   1049e:	64a2                	ld	s1,8(sp)
   104a0:	6902                	ld	s2,0(sp)
   104a2:	6105                	addi	sp,sp,32
   104a4:	8082                	ret
   104a6:	609c                	ld	a5,0(s1)
   104a8:	0905                	addi	s2,s2,1
   104aa:	04a1                	addi	s1,s1,8
   104ac:	9782                	jalr	a5
   104ae:	b7e9                	j	10478 <__libc_init_array+0x20>
   104b0:	609c                	ld	a5,0(s1)
   104b2:	0905                	addi	s2,s2,1
   104b4:	04a1                	addi	s1,s1,8
   104b6:	9782                	jalr	a5
   104b8:	bff9                	j	10496 <__libc_init_array+0x3e>

00000000000104ba <memset>:
   104ba:	433d                	li	t1,15
   104bc:	872a                	mv	a4,a0
   104be:	02c37163          	bleu	a2,t1,104e0 <memset+0x26>
   104c2:	00f77793          	andi	a5,a4,15
   104c6:	e3c1                	bnez	a5,10546 <memset+0x8c>
   104c8:	e1bd                	bnez	a1,1052e <memset+0x74>
   104ca:	ff067693          	andi	a3,a2,-16
   104ce:	8a3d                	andi	a2,a2,15
   104d0:	96ba                	add	a3,a3,a4
   104d2:	e30c                	sd	a1,0(a4)
   104d4:	e70c                	sd	a1,8(a4)
   104d6:	0741                	addi	a4,a4,16
   104d8:	fed76de3          	bltu	a4,a3,104d2 <memset+0x18>
   104dc:	e211                	bnez	a2,104e0 <memset+0x26>
   104de:	8082                	ret
   104e0:	40c306b3          	sub	a3,t1,a2
   104e4:	068a                	slli	a3,a3,0x2
   104e6:	00000297          	auipc	t0,0x0
   104ea:	9696                	add	a3,a3,t0
   104ec:	00a68067          	jr	10(a3)
   104f0:	00b70723          	sb	a1,14(a4)
   104f4:	00b706a3          	sb	a1,13(a4)
   104f8:	00b70623          	sb	a1,12(a4)
   104fc:	00b705a3          	sb	a1,11(a4)
   10500:	00b70523          	sb	a1,10(a4)
   10504:	00b704a3          	sb	a1,9(a4)
   10508:	00b70423          	sb	a1,8(a4)
   1050c:	00b703a3          	sb	a1,7(a4)
   10510:	00b70323          	sb	a1,6(a4)
   10514:	00b702a3          	sb	a1,5(a4)
   10518:	00b70223          	sb	a1,4(a4)
   1051c:	00b701a3          	sb	a1,3(a4)
   10520:	00b70123          	sb	a1,2(a4)
   10524:	00b700a3          	sb	a1,1(a4)
   10528:	00b70023          	sb	a1,0(a4)
   1052c:	8082                	ret
   1052e:	0ff5f593          	andi	a1,a1,255
   10532:	00859693          	slli	a3,a1,0x8
   10536:	8dd5                	or	a1,a1,a3
   10538:	01059693          	slli	a3,a1,0x10
   1053c:	8dd5                	or	a1,a1,a3
   1053e:	02059693          	slli	a3,a1,0x20
   10542:	8dd5                	or	a1,a1,a3
   10544:	b759                	j	104ca <memset+0x10>
   10546:	00279693          	slli	a3,a5,0x2
   1054a:	00000297          	auipc	t0,0x0
   1054e:	9696                	add	a3,a3,t0
   10550:	8286                	mv	t0,ra
   10552:	fa2680e7          	jalr	-94(a3)
   10556:	8096                	mv	ra,t0
   10558:	17c1                	addi	a5,a5,-16
   1055a:	8f1d                	sub	a4,a4,a5
   1055c:	963e                	add	a2,a2,a5
   1055e:	f8c371e3          	bleu	a2,t1,104e0 <memset+0x26>
   10562:	b79d                	j	104c8 <memset+0xe>

0000000000010564 <__register_exitproc>:
   10564:	67c9                	lui	a5,0x12
   10566:	e107b703          	ld	a4,-496(a5) # 11e10 <_global_impure_ptr>
   1056a:	832a                	mv	t1,a0
   1056c:	1f873783          	ld	a5,504(a4)
   10570:	e789                	bnez	a5,1057a <__register_exitproc+0x16>
   10572:	20070793          	addi	a5,a4,512
   10576:	1ef73c23          	sd	a5,504(a4)
   1057a:	4798                	lw	a4,8(a5)
   1057c:	487d                	li	a6,31
   1057e:	557d                	li	a0,-1
   10580:	04e84463          	blt	a6,a4,105c8 <__register_exitproc+0x64>
   10584:	02030a63          	beqz	t1,105b8 <__register_exitproc+0x54>
   10588:	00371813          	slli	a6,a4,0x3
   1058c:	983e                	add	a6,a6,a5
   1058e:	10c83823          	sd	a2,272(a6)
   10592:	3107a883          	lw	a7,784(a5)
   10596:	4605                	li	a2,1
   10598:	00e6163b          	sllw	a2,a2,a4
   1059c:	00c8e8b3          	or	a7,a7,a2
   105a0:	3117a823          	sw	a7,784(a5)
   105a4:	20d83823          	sd	a3,528(a6)
   105a8:	4689                	li	a3,2
   105aa:	00d31763          	bne	t1,a3,105b8 <__register_exitproc+0x54>
   105ae:	3147a683          	lw	a3,788(a5)
   105b2:	8e55                	or	a2,a2,a3
   105b4:	30c7aa23          	sw	a2,788(a5)
   105b8:	0017069b          	addiw	a3,a4,1
   105bc:	0709                	addi	a4,a4,2
   105be:	070e                	slli	a4,a4,0x3
   105c0:	c794                	sw	a3,8(a5)
   105c2:	97ba                	add	a5,a5,a4
   105c4:	e38c                	sd	a1,0(a5)
   105c6:	4501                	li	a0,0
   105c8:	8082                	ret

00000000000105ca <__call_exitprocs>:
   105ca:	715d                	addi	sp,sp,-80
   105cc:	67c9                	lui	a5,0x12
   105ce:	f44e                	sd	s3,40(sp)
   105d0:	e107b983          	ld	s3,-496(a5) # 11e10 <_global_impure_ptr>
   105d4:	f052                	sd	s4,32(sp)
   105d6:	ec56                	sd	s5,24(sp)
   105d8:	e85a                	sd	s6,16(sp)
   105da:	e486                	sd	ra,72(sp)
   105dc:	e0a2                	sd	s0,64(sp)
   105de:	fc26                	sd	s1,56(sp)
   105e0:	f84a                	sd	s2,48(sp)
   105e2:	e45e                	sd	s7,8(sp)
   105e4:	8aaa                	mv	s5,a0
   105e6:	8a2e                	mv	s4,a1
   105e8:	4b05                	li	s6,1
   105ea:	1f89b403          	ld	s0,504(s3)
   105ee:	c801                	beqz	s0,105fe <__call_exitprocs+0x34>
   105f0:	4404                	lw	s1,8(s0)
   105f2:	34fd                	addiw	s1,s1,-1
   105f4:	00349913          	slli	s2,s1,0x3
   105f8:	9922                	add	s2,s2,s0
   105fa:	0004dd63          	bgez	s1,10614 <__call_exitprocs+0x4a>
   105fe:	60a6                	ld	ra,72(sp)
   10600:	6406                	ld	s0,64(sp)
   10602:	74e2                	ld	s1,56(sp)
   10604:	7942                	ld	s2,48(sp)
   10606:	79a2                	ld	s3,40(sp)
   10608:	7a02                	ld	s4,32(sp)
   1060a:	6ae2                	ld	s5,24(sp)
   1060c:	6b42                	ld	s6,16(sp)
   1060e:	6ba2                	ld	s7,8(sp)
   10610:	6161                	addi	sp,sp,80
   10612:	8082                	ret
   10614:	000a0963          	beqz	s4,10626 <__call_exitprocs+0x5c>
   10618:	21093783          	ld	a5,528(s2)
   1061c:	01478563          	beq	a5,s4,10626 <__call_exitprocs+0x5c>
   10620:	34fd                	addiw	s1,s1,-1
   10622:	1961                	addi	s2,s2,-8
   10624:	bfd9                	j	105fa <__call_exitprocs+0x30>
   10626:	441c                	lw	a5,8(s0)
   10628:	01093683          	ld	a3,16(s2)
   1062c:	37fd                	addiw	a5,a5,-1
   1062e:	02979663          	bne	a5,s1,1065a <__call_exitprocs+0x90>
   10632:	c404                	sw	s1,8(s0)
   10634:	d6f5                	beqz	a3,10620 <__call_exitprocs+0x56>
   10636:	31042703          	lw	a4,784(s0)
   1063a:	009b163b          	sllw	a2,s6,s1
   1063e:	00842b83          	lw	s7,8(s0)
   10642:	8f71                	and	a4,a4,a2
   10644:	2701                	sext.w	a4,a4
   10646:	ef09                	bnez	a4,10660 <__call_exitprocs+0x96>
   10648:	9682                	jalr	a3
   1064a:	4418                	lw	a4,8(s0)
   1064c:	1f89b783          	ld	a5,504(s3)
   10650:	f9771de3          	bne	a4,s7,105ea <__call_exitprocs+0x20>
   10654:	fcf406e3          	beq	s0,a5,10620 <__call_exitprocs+0x56>
   10658:	bf49                	j	105ea <__call_exitprocs+0x20>
   1065a:	00093823          	sd	zero,16(s2)
   1065e:	bfd9                	j	10634 <__call_exitprocs+0x6a>
   10660:	31442783          	lw	a5,788(s0)
   10664:	11093583          	ld	a1,272(s2)
   10668:	8ff1                	and	a5,a5,a2
   1066a:	2781                	sext.w	a5,a5
   1066c:	e781                	bnez	a5,10674 <__call_exitprocs+0xaa>
   1066e:	8556                	mv	a0,s5
   10670:	9682                	jalr	a3
   10672:	bfe1                	j	1064a <__call_exitprocs+0x80>
   10674:	852e                	mv	a0,a1
   10676:	9682                	jalr	a3
   10678:	bfc9                	j	1064a <__call_exitprocs+0x80>

000000000001067a <_exit>:
   1067a:	4581                	li	a1,0
   1067c:	4601                	li	a2,0
   1067e:	4681                	li	a3,0
   10680:	4701                	li	a4,0
   10682:	4781                	li	a5,0
   10684:	05d00893          	li	a7,93
   10688:	00000073          	ecall
   1068c:	00055c63          	bgez	a0,106a4 <_exit+0x2a>
   10690:	1141                	addi	sp,sp,-16
   10692:	e022                	sd	s0,0(sp)
   10694:	842a                	mv	s0,a0
   10696:	e406                	sd	ra,8(sp)
   10698:	4080043b          	negw	s0,s0
   1069c:	00a000ef          	jal	ra,106a6 <__errno>
   106a0:	c100                	sw	s0,0(a0)
   106a2:	a001                	j	106a2 <_exit+0x28>
   106a4:	a001                	j	106a4 <_exit+0x2a>

00000000000106a6 <__errno>:
   106a6:	8101b503          	ld	a0,-2032(gp) # 11e18 <_impure_ptr>
   106aa:	8082                	ret
