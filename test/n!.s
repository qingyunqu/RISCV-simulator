
n!:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	3b818193          	addi	gp,gp,952 # 12468 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c80 <_edata>
   100bc:	85818613          	addi	a2,gp,-1960 # 11cc0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	256000ef          	jal	ra,1031a <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1a850513          	addi	a0,a0,424 # 10270 <__libc_fini_array>
   100d0:	174000ef          	jal	ra,10244 <atexit>
   100d4:	1e4000ef          	jal	ra,102b8 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	12a000ef          	jal	ra,10208 <main>
   100e2:	16e0006f          	j	10250 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	c6850713          	addi	a4,a0,-920 # 11c68 <__TMC_END__>
   100f0:	c6878793          	addi	a5,a5,-920 # 11c68 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	c6850513          	addi	a0,a0,-920
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	c6878593          	addi	a1,a5,-920 # 11c68 <__TMC_END__>
   10114:	c6850793          	addi	a5,a0,-920 # 11c68 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	c6850513          	addi	a0,a0,-920
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8201c703          	lbu	a4,-2016(gp) # 11c88 <completed.5212>
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
   10156:	50c50513          	addi	a0,a0,1292 # 1050c <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	82f18023          	sb	a5,-2016(gp) # 11c88 <completed.5212>
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
   10182:	c9058593          	addi	a1,a1,-880 # 11c90 <object.5217>
   10186:	50c50513          	addi	a0,a0,1292 # 1050c <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <cal_n>:
   1019c:	fe010113          	addi	sp,sp,-32
   101a0:	00113c23          	sd	ra,24(sp)
   101a4:	00813823          	sd	s0,16(sp)
   101a8:	02010413          	addi	s0,sp,32
   101ac:	00050793          	mv	a5,a0
   101b0:	fef42623          	sw	a5,-20(s0)
   101b4:	fec42783          	lw	a5,-20(s0)
   101b8:	0007871b          	sext.w	a4,a5
   101bc:	00100793          	li	a5,1
   101c0:	00f71663          	bne	a4,a5,101cc <cal_n+0x30>
   101c4:	fec42783          	lw	a5,-20(s0)
   101c8:	02c0006f          	j	101f4 <cal_n+0x58>
   101cc:	fec42783          	lw	a5,-20(s0)
   101d0:	fff7879b          	addiw	a5,a5,-1
   101d4:	0007879b          	sext.w	a5,a5
   101d8:	00078513          	mv	a0,a5
   101dc:	fc1ff0ef          	jal	ra,1019c <cal_n>
   101e0:	00050793          	mv	a5,a0
   101e4:	00078713          	mv	a4,a5
   101e8:	fec42783          	lw	a5,-20(s0)
   101ec:	02e787bb          	mulw	a5,a5,a4
   101f0:	0007879b          	sext.w	a5,a5
   101f4:	00078513          	mv	a0,a5
   101f8:	01813083          	ld	ra,24(sp)
   101fc:	01013403          	ld	s0,16(sp)
   10200:	02010113          	addi	sp,sp,32
   10204:	00008067          	ret

0000000000010208 <main>:
   10208:	ff010113          	addi	sp,sp,-16
   1020c:	00113423          	sd	ra,8(sp)
   10210:	00813023          	sd	s0,0(sp)
   10214:	01010413          	addi	s0,sp,16
   10218:	00a00513          	li	a0,10
   1021c:	f81ff0ef          	jal	ra,1019c <cal_n>
   10220:	00050793          	mv	a5,a0
   10224:	00078713          	mv	a4,a5
   10228:	80e1ac23          	sw	a4,-2024(gp) # 11c80 <_edata>
   1022c:	00000793          	li	a5,0
   10230:	00078513          	mv	a0,a5
   10234:	00813083          	ld	ra,8(sp)
   10238:	00013403          	ld	s0,0(sp)
   1023c:	01010113          	addi	sp,sp,16
   10240:	00008067          	ret

0000000000010244 <atexit>:
   10244:	85aa                	mv	a1,a0
   10246:	4681                	li	a3,0
   10248:	4601                	li	a2,0
   1024a:	4501                	li	a0,0
   1024c:	1780006f          	j	103c4 <__register_exitproc>

0000000000010250 <exit>:
   10250:	1141                	addi	sp,sp,-16
   10252:	4581                	li	a1,0
   10254:	e022                	sd	s0,0(sp)
   10256:	e406                	sd	ra,8(sp)
   10258:	842a                	mv	s0,a0
   1025a:	1d0000ef          	jal	ra,1042a <__call_exitprocs>
   1025e:	67c9                	lui	a5,0x12
   10260:	c707b503          	ld	a0,-912(a5) # 11c70 <_global_impure_ptr>
   10264:	6d3c                	ld	a5,88(a0)
   10266:	c391                	beqz	a5,1026a <exit+0x1a>
   10268:	9782                	jalr	a5
   1026a:	8522                	mv	a0,s0
   1026c:	26e000ef          	jal	ra,104da <_exit>

0000000000010270 <__libc_fini_array>:
   10270:	7179                	addi	sp,sp,-48
   10272:	67c5                	lui	a5,0x11
   10274:	6745                	lui	a4,0x11
   10276:	f022                	sd	s0,32(sp)
   10278:	51870713          	addi	a4,a4,1304 # 11518 <__init_array_end>
   1027c:	52078413          	addi	s0,a5,1312 # 11520 <__fini_array_end>
   10280:	8c19                	sub	s0,s0,a4
   10282:	ec26                	sd	s1,24(sp)
   10284:	e84a                	sd	s2,16(sp)
   10286:	e44e                	sd	s3,8(sp)
   10288:	f406                	sd	ra,40(sp)
   1028a:	840d                	srai	s0,s0,0x3
   1028c:	4481                	li	s1,0
   1028e:	52078913          	addi	s2,a5,1312
   10292:	59e1                	li	s3,-8
   10294:	00941a63          	bne	s0,s1,102a8 <__libc_fini_array+0x38>
   10298:	7402                	ld	s0,32(sp)
   1029a:	70a2                	ld	ra,40(sp)
   1029c:	64e2                	ld	s1,24(sp)
   1029e:	6942                	ld	s2,16(sp)
   102a0:	69a2                	ld	s3,8(sp)
   102a2:	6145                	addi	sp,sp,48
   102a4:	e43ff06f          	j	100e6 <_fini>
   102a8:	033487b3          	mul	a5,s1,s3
   102ac:	0485                	addi	s1,s1,1
   102ae:	97ca                	add	a5,a5,s2
   102b0:	ff87b783          	ld	a5,-8(a5)
   102b4:	9782                	jalr	a5
   102b6:	bff9                	j	10294 <__libc_fini_array+0x24>

00000000000102b8 <__libc_init_array>:
   102b8:	1101                	addi	sp,sp,-32
   102ba:	e822                	sd	s0,16(sp)
   102bc:	e426                	sd	s1,8(sp)
   102be:	6445                	lui	s0,0x11
   102c0:	64c5                	lui	s1,0x11
   102c2:	51048793          	addi	a5,s1,1296 # 11510 <__frame_dummy_init_array_entry>
   102c6:	51040413          	addi	s0,s0,1296 # 11510 <__frame_dummy_init_array_entry>
   102ca:	8c1d                	sub	s0,s0,a5
   102cc:	e04a                	sd	s2,0(sp)
   102ce:	ec06                	sd	ra,24(sp)
   102d0:	840d                	srai	s0,s0,0x3
   102d2:	51048493          	addi	s1,s1,1296
   102d6:	4901                	li	s2,0
   102d8:	02891763          	bne	s2,s0,10306 <__libc_init_array+0x4e>
   102dc:	64c5                	lui	s1,0x11
   102de:	e09ff0ef          	jal	ra,100e6 <_fini>
   102e2:	6445                	lui	s0,0x11
   102e4:	51048793          	addi	a5,s1,1296 # 11510 <__frame_dummy_init_array_entry>
   102e8:	51840413          	addi	s0,s0,1304 # 11518 <__init_array_end>
   102ec:	8c1d                	sub	s0,s0,a5
   102ee:	840d                	srai	s0,s0,0x3
   102f0:	51048493          	addi	s1,s1,1296
   102f4:	4901                	li	s2,0
   102f6:	00891d63          	bne	s2,s0,10310 <__libc_init_array+0x58>
   102fa:	60e2                	ld	ra,24(sp)
   102fc:	6442                	ld	s0,16(sp)
   102fe:	64a2                	ld	s1,8(sp)
   10300:	6902                	ld	s2,0(sp)
   10302:	6105                	addi	sp,sp,32
   10304:	8082                	ret
   10306:	609c                	ld	a5,0(s1)
   10308:	0905                	addi	s2,s2,1
   1030a:	04a1                	addi	s1,s1,8
   1030c:	9782                	jalr	a5
   1030e:	b7e9                	j	102d8 <__libc_init_array+0x20>
   10310:	609c                	ld	a5,0(s1)
   10312:	0905                	addi	s2,s2,1
   10314:	04a1                	addi	s1,s1,8
   10316:	9782                	jalr	a5
   10318:	bff9                	j	102f6 <__libc_init_array+0x3e>

000000000001031a <memset>:
   1031a:	433d                	li	t1,15
   1031c:	872a                	mv	a4,a0
   1031e:	02c37163          	bleu	a2,t1,10340 <memset+0x26>
   10322:	00f77793          	andi	a5,a4,15
   10326:	e3c1                	bnez	a5,103a6 <memset+0x8c>
   10328:	e1bd                	bnez	a1,1038e <memset+0x74>
   1032a:	ff067693          	andi	a3,a2,-16
   1032e:	8a3d                	andi	a2,a2,15
   10330:	96ba                	add	a3,a3,a4
   10332:	e30c                	sd	a1,0(a4)
   10334:	e70c                	sd	a1,8(a4)
   10336:	0741                	addi	a4,a4,16
   10338:	fed76de3          	bltu	a4,a3,10332 <memset+0x18>
   1033c:	e211                	bnez	a2,10340 <memset+0x26>
   1033e:	8082                	ret
   10340:	40c306b3          	sub	a3,t1,a2
   10344:	068a                	slli	a3,a3,0x2
   10346:	00000297          	auipc	t0,0x0
   1034a:	9696                	add	a3,a3,t0
   1034c:	00a68067          	jr	10(a3)
   10350:	00b70723          	sb	a1,14(a4)
   10354:	00b706a3          	sb	a1,13(a4)
   10358:	00b70623          	sb	a1,12(a4)
   1035c:	00b705a3          	sb	a1,11(a4)
   10360:	00b70523          	sb	a1,10(a4)
   10364:	00b704a3          	sb	a1,9(a4)
   10368:	00b70423          	sb	a1,8(a4)
   1036c:	00b703a3          	sb	a1,7(a4)
   10370:	00b70323          	sb	a1,6(a4)
   10374:	00b702a3          	sb	a1,5(a4)
   10378:	00b70223          	sb	a1,4(a4)
   1037c:	00b701a3          	sb	a1,3(a4)
   10380:	00b70123          	sb	a1,2(a4)
   10384:	00b700a3          	sb	a1,1(a4)
   10388:	00b70023          	sb	a1,0(a4)
   1038c:	8082                	ret
   1038e:	0ff5f593          	andi	a1,a1,255
   10392:	00859693          	slli	a3,a1,0x8
   10396:	8dd5                	or	a1,a1,a3
   10398:	01059693          	slli	a3,a1,0x10
   1039c:	8dd5                	or	a1,a1,a3
   1039e:	02059693          	slli	a3,a1,0x20
   103a2:	8dd5                	or	a1,a1,a3
   103a4:	b759                	j	1032a <memset+0x10>
   103a6:	00279693          	slli	a3,a5,0x2
   103aa:	00000297          	auipc	t0,0x0
   103ae:	9696                	add	a3,a3,t0
   103b0:	8286                	mv	t0,ra
   103b2:	fa2680e7          	jalr	-94(a3)
   103b6:	8096                	mv	ra,t0
   103b8:	17c1                	addi	a5,a5,-16
   103ba:	8f1d                	sub	a4,a4,a5
   103bc:	963e                	add	a2,a2,a5
   103be:	f8c371e3          	bleu	a2,t1,10340 <memset+0x26>
   103c2:	b79d                	j	10328 <memset+0xe>

00000000000103c4 <__register_exitproc>:
   103c4:	67c9                	lui	a5,0x12
   103c6:	c707b703          	ld	a4,-912(a5) # 11c70 <_global_impure_ptr>
   103ca:	832a                	mv	t1,a0
   103cc:	1f873783          	ld	a5,504(a4)
   103d0:	e789                	bnez	a5,103da <__register_exitproc+0x16>
   103d2:	20070793          	addi	a5,a4,512
   103d6:	1ef73c23          	sd	a5,504(a4)
   103da:	4798                	lw	a4,8(a5)
   103dc:	487d                	li	a6,31
   103de:	557d                	li	a0,-1
   103e0:	04e84463          	blt	a6,a4,10428 <__register_exitproc+0x64>
   103e4:	02030a63          	beqz	t1,10418 <__register_exitproc+0x54>
   103e8:	00371813          	slli	a6,a4,0x3
   103ec:	983e                	add	a6,a6,a5
   103ee:	10c83823          	sd	a2,272(a6)
   103f2:	3107a883          	lw	a7,784(a5)
   103f6:	4605                	li	a2,1
   103f8:	00e6163b          	sllw	a2,a2,a4
   103fc:	00c8e8b3          	or	a7,a7,a2
   10400:	3117a823          	sw	a7,784(a5)
   10404:	20d83823          	sd	a3,528(a6)
   10408:	4689                	li	a3,2
   1040a:	00d31763          	bne	t1,a3,10418 <__register_exitproc+0x54>
   1040e:	3147a683          	lw	a3,788(a5)
   10412:	8e55                	or	a2,a2,a3
   10414:	30c7aa23          	sw	a2,788(a5)
   10418:	0017069b          	addiw	a3,a4,1
   1041c:	0709                	addi	a4,a4,2
   1041e:	070e                	slli	a4,a4,0x3
   10420:	c794                	sw	a3,8(a5)
   10422:	97ba                	add	a5,a5,a4
   10424:	e38c                	sd	a1,0(a5)
   10426:	4501                	li	a0,0
   10428:	8082                	ret

000000000001042a <__call_exitprocs>:
   1042a:	715d                	addi	sp,sp,-80
   1042c:	67c9                	lui	a5,0x12
   1042e:	f44e                	sd	s3,40(sp)
   10430:	c707b983          	ld	s3,-912(a5) # 11c70 <_global_impure_ptr>
   10434:	f052                	sd	s4,32(sp)
   10436:	ec56                	sd	s5,24(sp)
   10438:	e85a                	sd	s6,16(sp)
   1043a:	e486                	sd	ra,72(sp)
   1043c:	e0a2                	sd	s0,64(sp)
   1043e:	fc26                	sd	s1,56(sp)
   10440:	f84a                	sd	s2,48(sp)
   10442:	e45e                	sd	s7,8(sp)
   10444:	8aaa                	mv	s5,a0
   10446:	8a2e                	mv	s4,a1
   10448:	4b05                	li	s6,1
   1044a:	1f89b403          	ld	s0,504(s3)
   1044e:	c801                	beqz	s0,1045e <__call_exitprocs+0x34>
   10450:	4404                	lw	s1,8(s0)
   10452:	34fd                	addiw	s1,s1,-1
   10454:	00349913          	slli	s2,s1,0x3
   10458:	9922                	add	s2,s2,s0
   1045a:	0004dd63          	bgez	s1,10474 <__call_exitprocs+0x4a>
   1045e:	60a6                	ld	ra,72(sp)
   10460:	6406                	ld	s0,64(sp)
   10462:	74e2                	ld	s1,56(sp)
   10464:	7942                	ld	s2,48(sp)
   10466:	79a2                	ld	s3,40(sp)
   10468:	7a02                	ld	s4,32(sp)
   1046a:	6ae2                	ld	s5,24(sp)
   1046c:	6b42                	ld	s6,16(sp)
   1046e:	6ba2                	ld	s7,8(sp)
   10470:	6161                	addi	sp,sp,80
   10472:	8082                	ret
   10474:	000a0963          	beqz	s4,10486 <__call_exitprocs+0x5c>
   10478:	21093783          	ld	a5,528(s2)
   1047c:	01478563          	beq	a5,s4,10486 <__call_exitprocs+0x5c>
   10480:	34fd                	addiw	s1,s1,-1
   10482:	1961                	addi	s2,s2,-8
   10484:	bfd9                	j	1045a <__call_exitprocs+0x30>
   10486:	441c                	lw	a5,8(s0)
   10488:	01093683          	ld	a3,16(s2)
   1048c:	37fd                	addiw	a5,a5,-1
   1048e:	02979663          	bne	a5,s1,104ba <__call_exitprocs+0x90>
   10492:	c404                	sw	s1,8(s0)
   10494:	d6f5                	beqz	a3,10480 <__call_exitprocs+0x56>
   10496:	31042703          	lw	a4,784(s0)
   1049a:	009b163b          	sllw	a2,s6,s1
   1049e:	00842b83          	lw	s7,8(s0)
   104a2:	8f71                	and	a4,a4,a2
   104a4:	2701                	sext.w	a4,a4
   104a6:	ef09                	bnez	a4,104c0 <__call_exitprocs+0x96>
   104a8:	9682                	jalr	a3
   104aa:	4418                	lw	a4,8(s0)
   104ac:	1f89b783          	ld	a5,504(s3)
   104b0:	f9771de3          	bne	a4,s7,1044a <__call_exitprocs+0x20>
   104b4:	fcf406e3          	beq	s0,a5,10480 <__call_exitprocs+0x56>
   104b8:	bf49                	j	1044a <__call_exitprocs+0x20>
   104ba:	00093823          	sd	zero,16(s2)
   104be:	bfd9                	j	10494 <__call_exitprocs+0x6a>
   104c0:	31442783          	lw	a5,788(s0)
   104c4:	11093583          	ld	a1,272(s2)
   104c8:	8ff1                	and	a5,a5,a2
   104ca:	2781                	sext.w	a5,a5
   104cc:	e781                	bnez	a5,104d4 <__call_exitprocs+0xaa>
   104ce:	8556                	mv	a0,s5
   104d0:	9682                	jalr	a3
   104d2:	bfe1                	j	104aa <__call_exitprocs+0x80>
   104d4:	852e                	mv	a0,a1
   104d6:	9682                	jalr	a3
   104d8:	bfc9                	j	104aa <__call_exitprocs+0x80>

00000000000104da <_exit>:
   104da:	4581                	li	a1,0
   104dc:	4601                	li	a2,0
   104de:	4681                	li	a3,0
   104e0:	4701                	li	a4,0
   104e2:	4781                	li	a5,0
   104e4:	05d00893          	li	a7,93
   104e8:	00000073          	ecall
   104ec:	00055c63          	bgez	a0,10504 <_exit+0x2a>
   104f0:	1141                	addi	sp,sp,-16
   104f2:	e022                	sd	s0,0(sp)
   104f4:	842a                	mv	s0,a0
   104f6:	e406                	sd	ra,8(sp)
   104f8:	4080043b          	negw	s0,s0
   104fc:	00a000ef          	jal	ra,10506 <__errno>
   10500:	c100                	sw	s0,0(a0)
   10502:	a001                	j	10502 <_exit+0x28>
   10504:	a001                	j	10504 <_exit+0x2a>

0000000000010506 <__errno>:
   10506:	8101b503          	ld	a0,-2032(gp) # 11c78 <_impure_ptr>
   1050a:	8082                	ret
