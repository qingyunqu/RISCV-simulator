
simple-fuction:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	44018193          	addi	gp,gp,1088 # 124f0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11d08 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11d40 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	2b6000ef          	jal	ra,1037a <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	20850513          	addi	a0,a0,520 # 102d0 <__libc_fini_array>
   100d0:	1d4000ef          	jal	ra,102a4 <atexit>
   100d4:	244000ef          	jal	ra,10318 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	19a000ef          	jal	ra,10278 <main>
   100e2:	1ce0006f          	j	102b0 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	cf050713          	addi	a4,a0,-784 # 11cf0 <__TMC_END__>
   100f0:	cf078793          	addi	a5,a5,-784 # 11cf0 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	cf050513          	addi	a0,a0,-784
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	cf078593          	addi	a1,a5,-784 # 11cf0 <__TMC_END__>
   10114:	cf050793          	addi	a5,a0,-784 # 11cf0 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	cf050513          	addi	a0,a0,-784
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11d08 <_edata>
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
   10156:	56c50513          	addi	a0,a0,1388 # 1056c <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11d08 <_edata>
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
   10182:	d1058593          	addi	a1,a1,-752 # 11d10 <object.5217>
   10186:	56c50513          	addi	a0,a0,1388 # 1056c <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <fuction>:
   1019c:	fe010113          	addi	sp,sp,-32
   101a0:	00813c23          	sd	s0,24(sp)
   101a4:	02010413          	addi	s0,sp,32
   101a8:	fe042623          	sw	zero,-20(s0)
   101ac:	fe042623          	sw	zero,-20(s0)
   101b0:	0480006f          	j	101f8 <fuction+0x5c>
   101b4:	000117b7          	lui	a5,0x11
   101b8:	fec42703          	lw	a4,-20(s0)
   101bc:	00271713          	slli	a4,a4,0x2
   101c0:	58078793          	addi	a5,a5,1408 # 11580 <__fini_array_end>
   101c4:	00f707b3          	add	a5,a4,a5
   101c8:	0007a783          	lw	a5,0(a5)
   101cc:	00a7879b          	addiw	a5,a5,10
   101d0:	0007871b          	sext.w	a4,a5
   101d4:	000117b7          	lui	a5,0x11
   101d8:	fec42683          	lw	a3,-20(s0)
   101dc:	00269693          	slli	a3,a3,0x2
   101e0:	58078793          	addi	a5,a5,1408 # 11580 <__fini_array_end>
   101e4:	00f687b3          	add	a5,a3,a5
   101e8:	00e7a023          	sw	a4,0(a5)
   101ec:	fec42783          	lw	a5,-20(s0)
   101f0:	0017879b          	addiw	a5,a5,1
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	fec42783          	lw	a5,-20(s0)
   101fc:	0007871b          	sext.w	a4,a5
   10200:	00400793          	li	a5,4
   10204:	fae7d8e3          	ble	a4,a5,101b4 <fuction+0x18>
   10208:	00500793          	li	a5,5
   1020c:	fef42623          	sw	a5,-20(s0)
   10210:	0480006f          	j	10258 <fuction+0xbc>
   10214:	000117b7          	lui	a5,0x11
   10218:	fec42703          	lw	a4,-20(s0)
   1021c:	00271713          	slli	a4,a4,0x2
   10220:	58078793          	addi	a5,a5,1408 # 11580 <__fini_array_end>
   10224:	00f707b3          	add	a5,a4,a5
   10228:	0007a783          	lw	a5,0(a5)
   1022c:	ffb7879b          	addiw	a5,a5,-5
   10230:	0007871b          	sext.w	a4,a5
   10234:	000117b7          	lui	a5,0x11
   10238:	fec42683          	lw	a3,-20(s0)
   1023c:	00269693          	slli	a3,a3,0x2
   10240:	58078793          	addi	a5,a5,1408 # 11580 <__fini_array_end>
   10244:	00f687b3          	add	a5,a3,a5
   10248:	00e7a023          	sw	a4,0(a5)
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	0017879b          	addiw	a5,a5,1
   10254:	fef42623          	sw	a5,-20(s0)
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	0007871b          	sext.w	a4,a5
   10260:	00900793          	li	a5,9
   10264:	fae7d8e3          	ble	a4,a5,10214 <fuction+0x78>
   10268:	00000013          	nop
   1026c:	01813403          	ld	s0,24(sp)
   10270:	02010113          	addi	sp,sp,32
   10274:	00008067          	ret

0000000000010278 <main>:
   10278:	ff010113          	addi	sp,sp,-16
   1027c:	00113423          	sd	ra,8(sp)
   10280:	00813023          	sd	s0,0(sp)
   10284:	01010413          	addi	s0,sp,16
   10288:	f15ff0ef          	jal	ra,1019c <fuction>
   1028c:	00000793          	li	a5,0
   10290:	00078513          	mv	a0,a5
   10294:	00813083          	ld	ra,8(sp)
   10298:	00013403          	ld	s0,0(sp)
   1029c:	01010113          	addi	sp,sp,16
   102a0:	00008067          	ret

00000000000102a4 <atexit>:
   102a4:	85aa                	mv	a1,a0
   102a6:	4681                	li	a3,0
   102a8:	4601                	li	a2,0
   102aa:	4501                	li	a0,0
   102ac:	1780006f          	j	10424 <__register_exitproc>

00000000000102b0 <exit>:
   102b0:	1141                	addi	sp,sp,-16
   102b2:	4581                	li	a1,0
   102b4:	e022                	sd	s0,0(sp)
   102b6:	e406                	sd	ra,8(sp)
   102b8:	842a                	mv	s0,a0
   102ba:	1d0000ef          	jal	ra,1048a <__call_exitprocs>
   102be:	67c9                	lui	a5,0x12
   102c0:	cf87b503          	ld	a0,-776(a5) # 11cf8 <_global_impure_ptr>
   102c4:	6d3c                	ld	a5,88(a0)
   102c6:	c391                	beqz	a5,102ca <exit+0x1a>
   102c8:	9782                	jalr	a5
   102ca:	8522                	mv	a0,s0
   102cc:	26e000ef          	jal	ra,1053a <_exit>

00000000000102d0 <__libc_fini_array>:
   102d0:	7179                	addi	sp,sp,-48
   102d2:	67c5                	lui	a5,0x11
   102d4:	6745                	lui	a4,0x11
   102d6:	f022                	sd	s0,32(sp)
   102d8:	57870713          	addi	a4,a4,1400 # 11578 <__init_array_end>
   102dc:	58078413          	addi	s0,a5,1408 # 11580 <__fini_array_end>
   102e0:	8c19                	sub	s0,s0,a4
   102e2:	ec26                	sd	s1,24(sp)
   102e4:	e84a                	sd	s2,16(sp)
   102e6:	e44e                	sd	s3,8(sp)
   102e8:	f406                	sd	ra,40(sp)
   102ea:	840d                	srai	s0,s0,0x3
   102ec:	4481                	li	s1,0
   102ee:	58078913          	addi	s2,a5,1408
   102f2:	59e1                	li	s3,-8
   102f4:	00941a63          	bne	s0,s1,10308 <__libc_fini_array+0x38>
   102f8:	7402                	ld	s0,32(sp)
   102fa:	70a2                	ld	ra,40(sp)
   102fc:	64e2                	ld	s1,24(sp)
   102fe:	6942                	ld	s2,16(sp)
   10300:	69a2                	ld	s3,8(sp)
   10302:	6145                	addi	sp,sp,48
   10304:	de3ff06f          	j	100e6 <_fini>
   10308:	033487b3          	mul	a5,s1,s3
   1030c:	0485                	addi	s1,s1,1
   1030e:	97ca                	add	a5,a5,s2
   10310:	ff87b783          	ld	a5,-8(a5)
   10314:	9782                	jalr	a5
   10316:	bff9                	j	102f4 <__libc_fini_array+0x24>

0000000000010318 <__libc_init_array>:
   10318:	1101                	addi	sp,sp,-32
   1031a:	e822                	sd	s0,16(sp)
   1031c:	e426                	sd	s1,8(sp)
   1031e:	6445                	lui	s0,0x11
   10320:	64c5                	lui	s1,0x11
   10322:	57048793          	addi	a5,s1,1392 # 11570 <__frame_dummy_init_array_entry>
   10326:	57040413          	addi	s0,s0,1392 # 11570 <__frame_dummy_init_array_entry>
   1032a:	8c1d                	sub	s0,s0,a5
   1032c:	e04a                	sd	s2,0(sp)
   1032e:	ec06                	sd	ra,24(sp)
   10330:	840d                	srai	s0,s0,0x3
   10332:	57048493          	addi	s1,s1,1392
   10336:	4901                	li	s2,0
   10338:	02891763          	bne	s2,s0,10366 <__libc_init_array+0x4e>
   1033c:	64c5                	lui	s1,0x11
   1033e:	da9ff0ef          	jal	ra,100e6 <_fini>
   10342:	6445                	lui	s0,0x11
   10344:	57048793          	addi	a5,s1,1392 # 11570 <__frame_dummy_init_array_entry>
   10348:	57840413          	addi	s0,s0,1400 # 11578 <__init_array_end>
   1034c:	8c1d                	sub	s0,s0,a5
   1034e:	840d                	srai	s0,s0,0x3
   10350:	57048493          	addi	s1,s1,1392
   10354:	4901                	li	s2,0
   10356:	00891d63          	bne	s2,s0,10370 <__libc_init_array+0x58>
   1035a:	60e2                	ld	ra,24(sp)
   1035c:	6442                	ld	s0,16(sp)
   1035e:	64a2                	ld	s1,8(sp)
   10360:	6902                	ld	s2,0(sp)
   10362:	6105                	addi	sp,sp,32
   10364:	8082                	ret
   10366:	609c                	ld	a5,0(s1)
   10368:	0905                	addi	s2,s2,1
   1036a:	04a1                	addi	s1,s1,8
   1036c:	9782                	jalr	a5
   1036e:	b7e9                	j	10338 <__libc_init_array+0x20>
   10370:	609c                	ld	a5,0(s1)
   10372:	0905                	addi	s2,s2,1
   10374:	04a1                	addi	s1,s1,8
   10376:	9782                	jalr	a5
   10378:	bff9                	j	10356 <__libc_init_array+0x3e>

000000000001037a <memset>:
   1037a:	433d                	li	t1,15
   1037c:	872a                	mv	a4,a0
   1037e:	02c37163          	bleu	a2,t1,103a0 <memset+0x26>
   10382:	00f77793          	andi	a5,a4,15
   10386:	e3c1                	bnez	a5,10406 <memset+0x8c>
   10388:	e1bd                	bnez	a1,103ee <memset+0x74>
   1038a:	ff067693          	andi	a3,a2,-16
   1038e:	8a3d                	andi	a2,a2,15
   10390:	96ba                	add	a3,a3,a4
   10392:	e30c                	sd	a1,0(a4)
   10394:	e70c                	sd	a1,8(a4)
   10396:	0741                	addi	a4,a4,16
   10398:	fed76de3          	bltu	a4,a3,10392 <memset+0x18>
   1039c:	e211                	bnez	a2,103a0 <memset+0x26>
   1039e:	8082                	ret
   103a0:	40c306b3          	sub	a3,t1,a2
   103a4:	068a                	slli	a3,a3,0x2
   103a6:	00000297          	auipc	t0,0x0
   103aa:	9696                	add	a3,a3,t0
   103ac:	00a68067          	jr	10(a3)
   103b0:	00b70723          	sb	a1,14(a4)
   103b4:	00b706a3          	sb	a1,13(a4)
   103b8:	00b70623          	sb	a1,12(a4)
   103bc:	00b705a3          	sb	a1,11(a4)
   103c0:	00b70523          	sb	a1,10(a4)
   103c4:	00b704a3          	sb	a1,9(a4)
   103c8:	00b70423          	sb	a1,8(a4)
   103cc:	00b703a3          	sb	a1,7(a4)
   103d0:	00b70323          	sb	a1,6(a4)
   103d4:	00b702a3          	sb	a1,5(a4)
   103d8:	00b70223          	sb	a1,4(a4)
   103dc:	00b701a3          	sb	a1,3(a4)
   103e0:	00b70123          	sb	a1,2(a4)
   103e4:	00b700a3          	sb	a1,1(a4)
   103e8:	00b70023          	sb	a1,0(a4)
   103ec:	8082                	ret
   103ee:	0ff5f593          	andi	a1,a1,255
   103f2:	00859693          	slli	a3,a1,0x8
   103f6:	8dd5                	or	a1,a1,a3
   103f8:	01059693          	slli	a3,a1,0x10
   103fc:	8dd5                	or	a1,a1,a3
   103fe:	02059693          	slli	a3,a1,0x20
   10402:	8dd5                	or	a1,a1,a3
   10404:	b759                	j	1038a <memset+0x10>
   10406:	00279693          	slli	a3,a5,0x2
   1040a:	00000297          	auipc	t0,0x0
   1040e:	9696                	add	a3,a3,t0
   10410:	8286                	mv	t0,ra
   10412:	fa2680e7          	jalr	-94(a3)
   10416:	8096                	mv	ra,t0
   10418:	17c1                	addi	a5,a5,-16
   1041a:	8f1d                	sub	a4,a4,a5
   1041c:	963e                	add	a2,a2,a5
   1041e:	f8c371e3          	bleu	a2,t1,103a0 <memset+0x26>
   10422:	b79d                	j	10388 <memset+0xe>

0000000000010424 <__register_exitproc>:
   10424:	67c9                	lui	a5,0x12
   10426:	cf87b703          	ld	a4,-776(a5) # 11cf8 <_global_impure_ptr>
   1042a:	832a                	mv	t1,a0
   1042c:	1f873783          	ld	a5,504(a4)
   10430:	e789                	bnez	a5,1043a <__register_exitproc+0x16>
   10432:	20070793          	addi	a5,a4,512
   10436:	1ef73c23          	sd	a5,504(a4)
   1043a:	4798                	lw	a4,8(a5)
   1043c:	487d                	li	a6,31
   1043e:	557d                	li	a0,-1
   10440:	04e84463          	blt	a6,a4,10488 <__register_exitproc+0x64>
   10444:	02030a63          	beqz	t1,10478 <__register_exitproc+0x54>
   10448:	00371813          	slli	a6,a4,0x3
   1044c:	983e                	add	a6,a6,a5
   1044e:	10c83823          	sd	a2,272(a6)
   10452:	3107a883          	lw	a7,784(a5)
   10456:	4605                	li	a2,1
   10458:	00e6163b          	sllw	a2,a2,a4
   1045c:	00c8e8b3          	or	a7,a7,a2
   10460:	3117a823          	sw	a7,784(a5)
   10464:	20d83823          	sd	a3,528(a6)
   10468:	4689                	li	a3,2
   1046a:	00d31763          	bne	t1,a3,10478 <__register_exitproc+0x54>
   1046e:	3147a683          	lw	a3,788(a5)
   10472:	8e55                	or	a2,a2,a3
   10474:	30c7aa23          	sw	a2,788(a5)
   10478:	0017069b          	addiw	a3,a4,1
   1047c:	0709                	addi	a4,a4,2
   1047e:	070e                	slli	a4,a4,0x3
   10480:	c794                	sw	a3,8(a5)
   10482:	97ba                	add	a5,a5,a4
   10484:	e38c                	sd	a1,0(a5)
   10486:	4501                	li	a0,0
   10488:	8082                	ret

000000000001048a <__call_exitprocs>:
   1048a:	715d                	addi	sp,sp,-80
   1048c:	67c9                	lui	a5,0x12
   1048e:	f44e                	sd	s3,40(sp)
   10490:	cf87b983          	ld	s3,-776(a5) # 11cf8 <_global_impure_ptr>
   10494:	f052                	sd	s4,32(sp)
   10496:	ec56                	sd	s5,24(sp)
   10498:	e85a                	sd	s6,16(sp)
   1049a:	e486                	sd	ra,72(sp)
   1049c:	e0a2                	sd	s0,64(sp)
   1049e:	fc26                	sd	s1,56(sp)
   104a0:	f84a                	sd	s2,48(sp)
   104a2:	e45e                	sd	s7,8(sp)
   104a4:	8aaa                	mv	s5,a0
   104a6:	8a2e                	mv	s4,a1
   104a8:	4b05                	li	s6,1
   104aa:	1f89b403          	ld	s0,504(s3)
   104ae:	c801                	beqz	s0,104be <__call_exitprocs+0x34>
   104b0:	4404                	lw	s1,8(s0)
   104b2:	34fd                	addiw	s1,s1,-1
   104b4:	00349913          	slli	s2,s1,0x3
   104b8:	9922                	add	s2,s2,s0
   104ba:	0004dd63          	bgez	s1,104d4 <__call_exitprocs+0x4a>
   104be:	60a6                	ld	ra,72(sp)
   104c0:	6406                	ld	s0,64(sp)
   104c2:	74e2                	ld	s1,56(sp)
   104c4:	7942                	ld	s2,48(sp)
   104c6:	79a2                	ld	s3,40(sp)
   104c8:	7a02                	ld	s4,32(sp)
   104ca:	6ae2                	ld	s5,24(sp)
   104cc:	6b42                	ld	s6,16(sp)
   104ce:	6ba2                	ld	s7,8(sp)
   104d0:	6161                	addi	sp,sp,80
   104d2:	8082                	ret
   104d4:	000a0963          	beqz	s4,104e6 <__call_exitprocs+0x5c>
   104d8:	21093783          	ld	a5,528(s2)
   104dc:	01478563          	beq	a5,s4,104e6 <__call_exitprocs+0x5c>
   104e0:	34fd                	addiw	s1,s1,-1
   104e2:	1961                	addi	s2,s2,-8
   104e4:	bfd9                	j	104ba <__call_exitprocs+0x30>
   104e6:	441c                	lw	a5,8(s0)
   104e8:	01093683          	ld	a3,16(s2)
   104ec:	37fd                	addiw	a5,a5,-1
   104ee:	02979663          	bne	a5,s1,1051a <__call_exitprocs+0x90>
   104f2:	c404                	sw	s1,8(s0)
   104f4:	d6f5                	beqz	a3,104e0 <__call_exitprocs+0x56>
   104f6:	31042703          	lw	a4,784(s0)
   104fa:	009b163b          	sllw	a2,s6,s1
   104fe:	00842b83          	lw	s7,8(s0)
   10502:	8f71                	and	a4,a4,a2
   10504:	2701                	sext.w	a4,a4
   10506:	ef09                	bnez	a4,10520 <__call_exitprocs+0x96>
   10508:	9682                	jalr	a3
   1050a:	4418                	lw	a4,8(s0)
   1050c:	1f89b783          	ld	a5,504(s3)
   10510:	f9771de3          	bne	a4,s7,104aa <__call_exitprocs+0x20>
   10514:	fcf406e3          	beq	s0,a5,104e0 <__call_exitprocs+0x56>
   10518:	bf49                	j	104aa <__call_exitprocs+0x20>
   1051a:	00093823          	sd	zero,16(s2)
   1051e:	bfd9                	j	104f4 <__call_exitprocs+0x6a>
   10520:	31442783          	lw	a5,788(s0)
   10524:	11093583          	ld	a1,272(s2)
   10528:	8ff1                	and	a5,a5,a2
   1052a:	2781                	sext.w	a5,a5
   1052c:	e781                	bnez	a5,10534 <__call_exitprocs+0xaa>
   1052e:	8556                	mv	a0,s5
   10530:	9682                	jalr	a3
   10532:	bfe1                	j	1050a <__call_exitprocs+0x80>
   10534:	852e                	mv	a0,a1
   10536:	9682                	jalr	a3
   10538:	bfc9                	j	1050a <__call_exitprocs+0x80>

000000000001053a <_exit>:
   1053a:	4581                	li	a1,0
   1053c:	4601                	li	a2,0
   1053e:	4681                	li	a3,0
   10540:	4701                	li	a4,0
   10542:	4781                	li	a5,0
   10544:	05d00893          	li	a7,93
   10548:	00000073          	ecall
   1054c:	00055c63          	bgez	a0,10564 <_exit+0x2a>
   10550:	1141                	addi	sp,sp,-16
   10552:	e022                	sd	s0,0(sp)
   10554:	842a                	mv	s0,a0
   10556:	e406                	sd	ra,8(sp)
   10558:	4080043b          	negw	s0,s0
   1055c:	00a000ef          	jal	ra,10566 <__errno>
   10560:	c100                	sw	s0,0(a0)
   10562:	a001                	j	10562 <_exit+0x28>
   10564:	a001                	j	10564 <_exit+0x2a>

0000000000010566 <__errno>:
   10566:	8101b503          	ld	a0,-2032(gp) # 11d00 <_impure_ptr>
   1056a:	8082                	ret
