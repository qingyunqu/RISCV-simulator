
mul-div:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	43018193          	addi	gp,gp,1072 # 124e0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11cf8 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11d30 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	2a2000ef          	jal	ra,10366 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1f450513          	addi	a0,a0,500 # 102bc <__libc_fini_array>
   100d0:	1c0000ef          	jal	ra,10290 <atexit>
   100d4:	230000ef          	jal	ra,10304 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	1ba0006f          	j	1029c <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	ce050713          	addi	a4,a0,-800 # 11ce0 <__TMC_END__>
   100f0:	ce078793          	addi	a5,a5,-800 # 11ce0 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	ce050513          	addi	a0,a0,-800
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	ce078593          	addi	a1,a5,-800 # 11ce0 <__TMC_END__>
   10114:	ce050793          	addi	a5,a0,-800 # 11ce0 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	ce050513          	addi	a0,a0,-800
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11cf8 <_edata>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6545                	lui	a0,0x11
   10156:	55850513          	addi	a0,a0,1368 # 11558 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11cf8 <_edata>
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
   1017e:	6545                	lui	a0,0x11
   10180:	1141                	addi	sp,sp,-16
   10182:	d0058593          	addi	a1,a1,-768 # 11d00 <object.5217>
   10186:	55850513          	addi	a0,a0,1368 # 11558 <__EH_FRAME_BEGIN__>
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
   101ac:	fe042623          	sw	zero,-20(s0)
   101b0:	0540006f          	j	10204 <main+0x68>
   101b4:	000117b7          	lui	a5,0x11
   101b8:	fec42703          	lw	a4,-20(s0)
   101bc:	00271713          	slli	a4,a4,0x2
   101c0:	57078793          	addi	a5,a5,1392 # 11570 <__fini_array_end>
   101c4:	00f707b3          	add	a5,a4,a5
   101c8:	0007a783          	lw	a5,0(a5)
   101cc:	00078713          	mv	a4,a5
   101d0:	00070793          	mv	a5,a4
   101d4:	0027979b          	slliw	a5,a5,0x2
   101d8:	00e787bb          	addw	a5,a5,a4
   101dc:	0007871b          	sext.w	a4,a5
   101e0:	000117b7          	lui	a5,0x11
   101e4:	fec42683          	lw	a3,-20(s0)
   101e8:	00269693          	slli	a3,a3,0x2
   101ec:	57078793          	addi	a5,a5,1392 # 11570 <__fini_array_end>
   101f0:	00f687b3          	add	a5,a3,a5
   101f4:	00e7a023          	sw	a4,0(a5)
   101f8:	fec42783          	lw	a5,-20(s0)
   101fc:	0017879b          	addiw	a5,a5,1
   10200:	fef42623          	sw	a5,-20(s0)
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	0007871b          	sext.w	a4,a5
   1020c:	00400793          	li	a5,4
   10210:	fae7d2e3          	ble	a4,a5,101b4 <main+0x18>
   10214:	00500793          	li	a5,5
   10218:	fef42623          	sw	a5,-20(s0)
   1021c:	0500006f          	j	1026c <main+0xd0>
   10220:	000117b7          	lui	a5,0x11
   10224:	fec42703          	lw	a4,-20(s0)
   10228:	00271713          	slli	a4,a4,0x2
   1022c:	57078793          	addi	a5,a5,1392 # 11570 <__fini_array_end>
   10230:	00f707b3          	add	a5,a4,a5
   10234:	0007a783          	lw	a5,0(a5)
   10238:	01f7d71b          	srliw	a4,a5,0x1f
   1023c:	00f707bb          	addw	a5,a4,a5
   10240:	4017d79b          	sraiw	a5,a5,0x1
   10244:	0007871b          	sext.w	a4,a5
   10248:	000117b7          	lui	a5,0x11
   1024c:	fec42683          	lw	a3,-20(s0)
   10250:	00269693          	slli	a3,a3,0x2
   10254:	57078793          	addi	a5,a5,1392 # 11570 <__fini_array_end>
   10258:	00f687b3          	add	a5,a3,a5
   1025c:	00e7a023          	sw	a4,0(a5)
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	0017879b          	addiw	a5,a5,1
   10268:	fef42623          	sw	a5,-20(s0)
   1026c:	fec42783          	lw	a5,-20(s0)
   10270:	0007871b          	sext.w	a4,a5
   10274:	00900793          	li	a5,9
   10278:	fae7d4e3          	ble	a4,a5,10220 <main+0x84>
   1027c:	00000793          	li	a5,0
   10280:	00078513          	mv	a0,a5
   10284:	01813403          	ld	s0,24(sp)
   10288:	02010113          	addi	sp,sp,32
   1028c:	00008067          	ret

0000000000010290 <atexit>:
   10290:	85aa                	mv	a1,a0
   10292:	4681                	li	a3,0
   10294:	4601                	li	a2,0
   10296:	4501                	li	a0,0
   10298:	1780006f          	j	10410 <__register_exitproc>

000000000001029c <exit>:
   1029c:	1141                	addi	sp,sp,-16
   1029e:	4581                	li	a1,0
   102a0:	e022                	sd	s0,0(sp)
   102a2:	e406                	sd	ra,8(sp)
   102a4:	842a                	mv	s0,a0
   102a6:	1d0000ef          	jal	ra,10476 <__call_exitprocs>
   102aa:	67c9                	lui	a5,0x12
   102ac:	ce87b503          	ld	a0,-792(a5) # 11ce8 <_global_impure_ptr>
   102b0:	6d3c                	ld	a5,88(a0)
   102b2:	c391                	beqz	a5,102b6 <exit+0x1a>
   102b4:	9782                	jalr	a5
   102b6:	8522                	mv	a0,s0
   102b8:	26e000ef          	jal	ra,10526 <_exit>

00000000000102bc <__libc_fini_array>:
   102bc:	7179                	addi	sp,sp,-48
   102be:	67c5                	lui	a5,0x11
   102c0:	6745                	lui	a4,0x11
   102c2:	f022                	sd	s0,32(sp)
   102c4:	56870713          	addi	a4,a4,1384 # 11568 <__init_array_end>
   102c8:	57078413          	addi	s0,a5,1392 # 11570 <__fini_array_end>
   102cc:	8c19                	sub	s0,s0,a4
   102ce:	ec26                	sd	s1,24(sp)
   102d0:	e84a                	sd	s2,16(sp)
   102d2:	e44e                	sd	s3,8(sp)
   102d4:	f406                	sd	ra,40(sp)
   102d6:	840d                	srai	s0,s0,0x3
   102d8:	4481                	li	s1,0
   102da:	57078913          	addi	s2,a5,1392
   102de:	59e1                	li	s3,-8
   102e0:	00941a63          	bne	s0,s1,102f4 <__libc_fini_array+0x38>
   102e4:	7402                	ld	s0,32(sp)
   102e6:	70a2                	ld	ra,40(sp)
   102e8:	64e2                	ld	s1,24(sp)
   102ea:	6942                	ld	s2,16(sp)
   102ec:	69a2                	ld	s3,8(sp)
   102ee:	6145                	addi	sp,sp,48
   102f0:	df7ff06f          	j	100e6 <_fini>
   102f4:	033487b3          	mul	a5,s1,s3
   102f8:	0485                	addi	s1,s1,1
   102fa:	97ca                	add	a5,a5,s2
   102fc:	ff87b783          	ld	a5,-8(a5)
   10300:	9782                	jalr	a5
   10302:	bff9                	j	102e0 <__libc_fini_array+0x24>

0000000000010304 <__libc_init_array>:
   10304:	1101                	addi	sp,sp,-32
   10306:	e822                	sd	s0,16(sp)
   10308:	e426                	sd	s1,8(sp)
   1030a:	6445                	lui	s0,0x11
   1030c:	64c5                	lui	s1,0x11
   1030e:	55c48793          	addi	a5,s1,1372 # 1155c <__preinit_array_end>
   10312:	55c40413          	addi	s0,s0,1372 # 1155c <__preinit_array_end>
   10316:	8c1d                	sub	s0,s0,a5
   10318:	e04a                	sd	s2,0(sp)
   1031a:	ec06                	sd	ra,24(sp)
   1031c:	840d                	srai	s0,s0,0x3
   1031e:	55c48493          	addi	s1,s1,1372
   10322:	4901                	li	s2,0
   10324:	02891763          	bne	s2,s0,10352 <__libc_init_array+0x4e>
   10328:	64c5                	lui	s1,0x11
   1032a:	dbdff0ef          	jal	ra,100e6 <_fini>
   1032e:	6445                	lui	s0,0x11
   10330:	56048793          	addi	a5,s1,1376 # 11560 <__frame_dummy_init_array_entry>
   10334:	56840413          	addi	s0,s0,1384 # 11568 <__init_array_end>
   10338:	8c1d                	sub	s0,s0,a5
   1033a:	840d                	srai	s0,s0,0x3
   1033c:	56048493          	addi	s1,s1,1376
   10340:	4901                	li	s2,0
   10342:	00891d63          	bne	s2,s0,1035c <__libc_init_array+0x58>
   10346:	60e2                	ld	ra,24(sp)
   10348:	6442                	ld	s0,16(sp)
   1034a:	64a2                	ld	s1,8(sp)
   1034c:	6902                	ld	s2,0(sp)
   1034e:	6105                	addi	sp,sp,32
   10350:	8082                	ret
   10352:	609c                	ld	a5,0(s1)
   10354:	0905                	addi	s2,s2,1
   10356:	04a1                	addi	s1,s1,8
   10358:	9782                	jalr	a5
   1035a:	b7e9                	j	10324 <__libc_init_array+0x20>
   1035c:	609c                	ld	a5,0(s1)
   1035e:	0905                	addi	s2,s2,1
   10360:	04a1                	addi	s1,s1,8
   10362:	9782                	jalr	a5
   10364:	bff9                	j	10342 <__libc_init_array+0x3e>

0000000000010366 <memset>:
   10366:	433d                	li	t1,15
   10368:	872a                	mv	a4,a0
   1036a:	02c37163          	bleu	a2,t1,1038c <memset+0x26>
   1036e:	00f77793          	andi	a5,a4,15
   10372:	e3c1                	bnez	a5,103f2 <memset+0x8c>
   10374:	e1bd                	bnez	a1,103da <memset+0x74>
   10376:	ff067693          	andi	a3,a2,-16
   1037a:	8a3d                	andi	a2,a2,15
   1037c:	96ba                	add	a3,a3,a4
   1037e:	e30c                	sd	a1,0(a4)
   10380:	e70c                	sd	a1,8(a4)
   10382:	0741                	addi	a4,a4,16
   10384:	fed76de3          	bltu	a4,a3,1037e <memset+0x18>
   10388:	e211                	bnez	a2,1038c <memset+0x26>
   1038a:	8082                	ret
   1038c:	40c306b3          	sub	a3,t1,a2
   10390:	068a                	slli	a3,a3,0x2
   10392:	00000297          	auipc	t0,0x0
   10396:	9696                	add	a3,a3,t0
   10398:	00a68067          	jr	10(a3)
   1039c:	00b70723          	sb	a1,14(a4)
   103a0:	00b706a3          	sb	a1,13(a4)
   103a4:	00b70623          	sb	a1,12(a4)
   103a8:	00b705a3          	sb	a1,11(a4)
   103ac:	00b70523          	sb	a1,10(a4)
   103b0:	00b704a3          	sb	a1,9(a4)
   103b4:	00b70423          	sb	a1,8(a4)
   103b8:	00b703a3          	sb	a1,7(a4)
   103bc:	00b70323          	sb	a1,6(a4)
   103c0:	00b702a3          	sb	a1,5(a4)
   103c4:	00b70223          	sb	a1,4(a4)
   103c8:	00b701a3          	sb	a1,3(a4)
   103cc:	00b70123          	sb	a1,2(a4)
   103d0:	00b700a3          	sb	a1,1(a4)
   103d4:	00b70023          	sb	a1,0(a4)
   103d8:	8082                	ret
   103da:	0ff5f593          	andi	a1,a1,255
   103de:	00859693          	slli	a3,a1,0x8
   103e2:	8dd5                	or	a1,a1,a3
   103e4:	01059693          	slli	a3,a1,0x10
   103e8:	8dd5                	or	a1,a1,a3
   103ea:	02059693          	slli	a3,a1,0x20
   103ee:	8dd5                	or	a1,a1,a3
   103f0:	b759                	j	10376 <memset+0x10>
   103f2:	00279693          	slli	a3,a5,0x2
   103f6:	00000297          	auipc	t0,0x0
   103fa:	9696                	add	a3,a3,t0
   103fc:	8286                	mv	t0,ra
   103fe:	fa2680e7          	jalr	-94(a3)
   10402:	8096                	mv	ra,t0
   10404:	17c1                	addi	a5,a5,-16
   10406:	8f1d                	sub	a4,a4,a5
   10408:	963e                	add	a2,a2,a5
   1040a:	f8c371e3          	bleu	a2,t1,1038c <memset+0x26>
   1040e:	b79d                	j	10374 <memset+0xe>

0000000000010410 <__register_exitproc>:
   10410:	67c9                	lui	a5,0x12
   10412:	ce87b703          	ld	a4,-792(a5) # 11ce8 <_global_impure_ptr>
   10416:	832a                	mv	t1,a0
   10418:	1f873783          	ld	a5,504(a4)
   1041c:	e789                	bnez	a5,10426 <__register_exitproc+0x16>
   1041e:	20070793          	addi	a5,a4,512
   10422:	1ef73c23          	sd	a5,504(a4)
   10426:	4798                	lw	a4,8(a5)
   10428:	487d                	li	a6,31
   1042a:	557d                	li	a0,-1
   1042c:	04e84463          	blt	a6,a4,10474 <__register_exitproc+0x64>
   10430:	02030a63          	beqz	t1,10464 <__register_exitproc+0x54>
   10434:	00371813          	slli	a6,a4,0x3
   10438:	983e                	add	a6,a6,a5
   1043a:	10c83823          	sd	a2,272(a6)
   1043e:	3107a883          	lw	a7,784(a5)
   10442:	4605                	li	a2,1
   10444:	00e6163b          	sllw	a2,a2,a4
   10448:	00c8e8b3          	or	a7,a7,a2
   1044c:	3117a823          	sw	a7,784(a5)
   10450:	20d83823          	sd	a3,528(a6)
   10454:	4689                	li	a3,2
   10456:	00d31763          	bne	t1,a3,10464 <__register_exitproc+0x54>
   1045a:	3147a683          	lw	a3,788(a5)
   1045e:	8e55                	or	a2,a2,a3
   10460:	30c7aa23          	sw	a2,788(a5)
   10464:	0017069b          	addiw	a3,a4,1
   10468:	0709                	addi	a4,a4,2
   1046a:	070e                	slli	a4,a4,0x3
   1046c:	c794                	sw	a3,8(a5)
   1046e:	97ba                	add	a5,a5,a4
   10470:	e38c                	sd	a1,0(a5)
   10472:	4501                	li	a0,0
   10474:	8082                	ret

0000000000010476 <__call_exitprocs>:
   10476:	715d                	addi	sp,sp,-80
   10478:	67c9                	lui	a5,0x12
   1047a:	f44e                	sd	s3,40(sp)
   1047c:	ce87b983          	ld	s3,-792(a5) # 11ce8 <_global_impure_ptr>
   10480:	f052                	sd	s4,32(sp)
   10482:	ec56                	sd	s5,24(sp)
   10484:	e85a                	sd	s6,16(sp)
   10486:	e486                	sd	ra,72(sp)
   10488:	e0a2                	sd	s0,64(sp)
   1048a:	fc26                	sd	s1,56(sp)
   1048c:	f84a                	sd	s2,48(sp)
   1048e:	e45e                	sd	s7,8(sp)
   10490:	8aaa                	mv	s5,a0
   10492:	8a2e                	mv	s4,a1
   10494:	4b05                	li	s6,1
   10496:	1f89b403          	ld	s0,504(s3)
   1049a:	c801                	beqz	s0,104aa <__call_exitprocs+0x34>
   1049c:	4404                	lw	s1,8(s0)
   1049e:	34fd                	addiw	s1,s1,-1
   104a0:	00349913          	slli	s2,s1,0x3
   104a4:	9922                	add	s2,s2,s0
   104a6:	0004dd63          	bgez	s1,104c0 <__call_exitprocs+0x4a>
   104aa:	60a6                	ld	ra,72(sp)
   104ac:	6406                	ld	s0,64(sp)
   104ae:	74e2                	ld	s1,56(sp)
   104b0:	7942                	ld	s2,48(sp)
   104b2:	79a2                	ld	s3,40(sp)
   104b4:	7a02                	ld	s4,32(sp)
   104b6:	6ae2                	ld	s5,24(sp)
   104b8:	6b42                	ld	s6,16(sp)
   104ba:	6ba2                	ld	s7,8(sp)
   104bc:	6161                	addi	sp,sp,80
   104be:	8082                	ret
   104c0:	000a0963          	beqz	s4,104d2 <__call_exitprocs+0x5c>
   104c4:	21093783          	ld	a5,528(s2)
   104c8:	01478563          	beq	a5,s4,104d2 <__call_exitprocs+0x5c>
   104cc:	34fd                	addiw	s1,s1,-1
   104ce:	1961                	addi	s2,s2,-8
   104d0:	bfd9                	j	104a6 <__call_exitprocs+0x30>
   104d2:	441c                	lw	a5,8(s0)
   104d4:	01093683          	ld	a3,16(s2)
   104d8:	37fd                	addiw	a5,a5,-1
   104da:	02979663          	bne	a5,s1,10506 <__call_exitprocs+0x90>
   104de:	c404                	sw	s1,8(s0)
   104e0:	d6f5                	beqz	a3,104cc <__call_exitprocs+0x56>
   104e2:	31042703          	lw	a4,784(s0)
   104e6:	009b163b          	sllw	a2,s6,s1
   104ea:	00842b83          	lw	s7,8(s0)
   104ee:	8f71                	and	a4,a4,a2
   104f0:	2701                	sext.w	a4,a4
   104f2:	ef09                	bnez	a4,1050c <__call_exitprocs+0x96>
   104f4:	9682                	jalr	a3
   104f6:	4418                	lw	a4,8(s0)
   104f8:	1f89b783          	ld	a5,504(s3)
   104fc:	f9771de3          	bne	a4,s7,10496 <__call_exitprocs+0x20>
   10500:	fcf406e3          	beq	s0,a5,104cc <__call_exitprocs+0x56>
   10504:	bf49                	j	10496 <__call_exitprocs+0x20>
   10506:	00093823          	sd	zero,16(s2)
   1050a:	bfd9                	j	104e0 <__call_exitprocs+0x6a>
   1050c:	31442783          	lw	a5,788(s0)
   10510:	11093583          	ld	a1,272(s2)
   10514:	8ff1                	and	a5,a5,a2
   10516:	2781                	sext.w	a5,a5
   10518:	e781                	bnez	a5,10520 <__call_exitprocs+0xaa>
   1051a:	8556                	mv	a0,s5
   1051c:	9682                	jalr	a3
   1051e:	bfe1                	j	104f6 <__call_exitprocs+0x80>
   10520:	852e                	mv	a0,a1
   10522:	9682                	jalr	a3
   10524:	bfc9                	j	104f6 <__call_exitprocs+0x80>

0000000000010526 <_exit>:
   10526:	4581                	li	a1,0
   10528:	4601                	li	a2,0
   1052a:	4681                	li	a3,0
   1052c:	4701                	li	a4,0
   1052e:	4781                	li	a5,0
   10530:	05d00893          	li	a7,93
   10534:	00000073          	ecall
   10538:	00055c63          	bgez	a0,10550 <_exit+0x2a>
   1053c:	1141                	addi	sp,sp,-16
   1053e:	e022                	sd	s0,0(sp)
   10540:	842a                	mv	s0,a0
   10542:	e406                	sd	ra,8(sp)
   10544:	4080043b          	negw	s0,s0
   10548:	00a000ef          	jal	ra,10552 <__errno>
   1054c:	c100                	sw	s0,0(a0)
   1054e:	a001                	j	1054e <_exit+0x28>
   10550:	a001                	j	10550 <_exit+0x2a>

0000000000010552 <__errno>:
   10552:	8101b503          	ld	a0,-2032(gp) # 11cf0 <_impure_ptr>
   10556:	8082                	ret
