
add:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	41818193          	addi	gp,gp,1048 # 124c8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11ce0 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11d18 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	28e000ef          	jal	ra,10352 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1e050513          	addi	a0,a0,480 # 102a8 <__libc_fini_array>
   100d0:	1ac000ef          	jal	ra,1027c <atexit>
   100d4:	21c000ef          	jal	ra,102f0 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	1a60006f          	j	10288 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	cc850713          	addi	a4,a0,-824 # 11cc8 <__TMC_END__>
   100f0:	cc878793          	addi	a5,a5,-824 # 11cc8 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	cc850513          	addi	a0,a0,-824
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	cc878593          	addi	a1,a5,-824 # 11cc8 <__TMC_END__>
   10114:	cc850793          	addi	a5,a0,-824 # 11cc8 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	cc850513          	addi	a0,a0,-824
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11ce0 <_edata>
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
   10156:	54450513          	addi	a0,a0,1348 # 10544 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11ce0 <_edata>
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
   10182:	ce858593          	addi	a1,a1,-792 # 11ce8 <object.5217>
   10186:	54450513          	addi	a0,a0,1348 # 10544 <__EH_FRAME_BEGIN__>
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
   101b0:	0480006f          	j	101f8 <main+0x5c>
   101b4:	000117b7          	lui	a5,0x11
   101b8:	fec42703          	lw	a4,-20(s0)
   101bc:	00271713          	slli	a4,a4,0x2
   101c0:	55878793          	addi	a5,a5,1368 # 11558 <__fini_array_end>
   101c4:	00f707b3          	add	a5,a4,a5
   101c8:	0007a783          	lw	a5,0(a5)
   101cc:	00a7879b          	addiw	a5,a5,10
   101d0:	0007871b          	sext.w	a4,a5
   101d4:	000117b7          	lui	a5,0x11
   101d8:	fec42683          	lw	a3,-20(s0)
   101dc:	00269693          	slli	a3,a3,0x2
   101e0:	55878793          	addi	a5,a5,1368 # 11558 <__fini_array_end>
   101e4:	00f687b3          	add	a5,a3,a5
   101e8:	00e7a023          	sw	a4,0(a5)
   101ec:	fec42783          	lw	a5,-20(s0)
   101f0:	0017879b          	addiw	a5,a5,1
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	fec42783          	lw	a5,-20(s0)
   101fc:	0007871b          	sext.w	a4,a5
   10200:	00400793          	li	a5,4
   10204:	fae7d8e3          	ble	a4,a5,101b4 <main+0x18>
   10208:	00500793          	li	a5,5
   1020c:	fef42623          	sw	a5,-20(s0)
   10210:	0480006f          	j	10258 <main+0xbc>
   10214:	000117b7          	lui	a5,0x11
   10218:	fec42703          	lw	a4,-20(s0)
   1021c:	00271713          	slli	a4,a4,0x2
   10220:	55878793          	addi	a5,a5,1368 # 11558 <__fini_array_end>
   10224:	00f707b3          	add	a5,a4,a5
   10228:	0007a783          	lw	a5,0(a5)
   1022c:	ffb7879b          	addiw	a5,a5,-5
   10230:	0007871b          	sext.w	a4,a5
   10234:	000117b7          	lui	a5,0x11
   10238:	fec42683          	lw	a3,-20(s0)
   1023c:	00269693          	slli	a3,a3,0x2
   10240:	55878793          	addi	a5,a5,1368 # 11558 <__fini_array_end>
   10244:	00f687b3          	add	a5,a3,a5
   10248:	00e7a023          	sw	a4,0(a5)
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	0017879b          	addiw	a5,a5,1
   10254:	fef42623          	sw	a5,-20(s0)
   10258:	fec42783          	lw	a5,-20(s0)
   1025c:	0007871b          	sext.w	a4,a5
   10260:	00900793          	li	a5,9
   10264:	fae7d8e3          	ble	a4,a5,10214 <main+0x78>
   10268:	00000793          	li	a5,0
   1026c:	00078513          	mv	a0,a5
   10270:	01813403          	ld	s0,24(sp)
   10274:	02010113          	addi	sp,sp,32
   10278:	00008067          	ret

000000000001027c <atexit>:
   1027c:	85aa                	mv	a1,a0
   1027e:	4681                	li	a3,0
   10280:	4601                	li	a2,0
   10282:	4501                	li	a0,0
   10284:	1780006f          	j	103fc <__register_exitproc>

0000000000010288 <exit>:
   10288:	1141                	addi	sp,sp,-16
   1028a:	4581                	li	a1,0
   1028c:	e022                	sd	s0,0(sp)
   1028e:	e406                	sd	ra,8(sp)
   10290:	842a                	mv	s0,a0
   10292:	1d0000ef          	jal	ra,10462 <__call_exitprocs>
   10296:	67c9                	lui	a5,0x12
   10298:	cd07b503          	ld	a0,-816(a5) # 11cd0 <_global_impure_ptr>
   1029c:	6d3c                	ld	a5,88(a0)
   1029e:	c391                	beqz	a5,102a2 <exit+0x1a>
   102a0:	9782                	jalr	a5
   102a2:	8522                	mv	a0,s0
   102a4:	26e000ef          	jal	ra,10512 <_exit>

00000000000102a8 <__libc_fini_array>:
   102a8:	7179                	addi	sp,sp,-48
   102aa:	67c5                	lui	a5,0x11
   102ac:	6745                	lui	a4,0x11
   102ae:	f022                	sd	s0,32(sp)
   102b0:	55070713          	addi	a4,a4,1360 # 11550 <__init_array_end>
   102b4:	55878413          	addi	s0,a5,1368 # 11558 <__fini_array_end>
   102b8:	8c19                	sub	s0,s0,a4
   102ba:	ec26                	sd	s1,24(sp)
   102bc:	e84a                	sd	s2,16(sp)
   102be:	e44e                	sd	s3,8(sp)
   102c0:	f406                	sd	ra,40(sp)
   102c2:	840d                	srai	s0,s0,0x3
   102c4:	4481                	li	s1,0
   102c6:	55878913          	addi	s2,a5,1368
   102ca:	59e1                	li	s3,-8
   102cc:	00941a63          	bne	s0,s1,102e0 <__libc_fini_array+0x38>
   102d0:	7402                	ld	s0,32(sp)
   102d2:	70a2                	ld	ra,40(sp)
   102d4:	64e2                	ld	s1,24(sp)
   102d6:	6942                	ld	s2,16(sp)
   102d8:	69a2                	ld	s3,8(sp)
   102da:	6145                	addi	sp,sp,48
   102dc:	e0bff06f          	j	100e6 <_fini>
   102e0:	033487b3          	mul	a5,s1,s3
   102e4:	0485                	addi	s1,s1,1
   102e6:	97ca                	add	a5,a5,s2
   102e8:	ff87b783          	ld	a5,-8(a5)
   102ec:	9782                	jalr	a5
   102ee:	bff9                	j	102cc <__libc_fini_array+0x24>

00000000000102f0 <__libc_init_array>:
   102f0:	1101                	addi	sp,sp,-32
   102f2:	e822                	sd	s0,16(sp)
   102f4:	e426                	sd	s1,8(sp)
   102f6:	6445                	lui	s0,0x11
   102f8:	64c5                	lui	s1,0x11
   102fa:	54848793          	addi	a5,s1,1352 # 11548 <__frame_dummy_init_array_entry>
   102fe:	54840413          	addi	s0,s0,1352 # 11548 <__frame_dummy_init_array_entry>
   10302:	8c1d                	sub	s0,s0,a5
   10304:	e04a                	sd	s2,0(sp)
   10306:	ec06                	sd	ra,24(sp)
   10308:	840d                	srai	s0,s0,0x3
   1030a:	54848493          	addi	s1,s1,1352
   1030e:	4901                	li	s2,0
   10310:	02891763          	bne	s2,s0,1033e <__libc_init_array+0x4e>
   10314:	64c5                	lui	s1,0x11
   10316:	dd1ff0ef          	jal	ra,100e6 <_fini>
   1031a:	6445                	lui	s0,0x11
   1031c:	54848793          	addi	a5,s1,1352 # 11548 <__frame_dummy_init_array_entry>
   10320:	55040413          	addi	s0,s0,1360 # 11550 <__init_array_end>
   10324:	8c1d                	sub	s0,s0,a5
   10326:	840d                	srai	s0,s0,0x3
   10328:	54848493          	addi	s1,s1,1352
   1032c:	4901                	li	s2,0
   1032e:	00891d63          	bne	s2,s0,10348 <__libc_init_array+0x58>
   10332:	60e2                	ld	ra,24(sp)
   10334:	6442                	ld	s0,16(sp)
   10336:	64a2                	ld	s1,8(sp)
   10338:	6902                	ld	s2,0(sp)
   1033a:	6105                	addi	sp,sp,32
   1033c:	8082                	ret
   1033e:	609c                	ld	a5,0(s1)
   10340:	0905                	addi	s2,s2,1
   10342:	04a1                	addi	s1,s1,8
   10344:	9782                	jalr	a5
   10346:	b7e9                	j	10310 <__libc_init_array+0x20>
   10348:	609c                	ld	a5,0(s1)
   1034a:	0905                	addi	s2,s2,1
   1034c:	04a1                	addi	s1,s1,8
   1034e:	9782                	jalr	a5
   10350:	bff9                	j	1032e <__libc_init_array+0x3e>

0000000000010352 <memset>:
   10352:	433d                	li	t1,15
   10354:	872a                	mv	a4,a0
   10356:	02c37163          	bleu	a2,t1,10378 <memset+0x26>
   1035a:	00f77793          	andi	a5,a4,15
   1035e:	e3c1                	bnez	a5,103de <memset+0x8c>
   10360:	e1bd                	bnez	a1,103c6 <memset+0x74>
   10362:	ff067693          	andi	a3,a2,-16
   10366:	8a3d                	andi	a2,a2,15
   10368:	96ba                	add	a3,a3,a4
   1036a:	e30c                	sd	a1,0(a4)
   1036c:	e70c                	sd	a1,8(a4)
   1036e:	0741                	addi	a4,a4,16
   10370:	fed76de3          	bltu	a4,a3,1036a <memset+0x18>
   10374:	e211                	bnez	a2,10378 <memset+0x26>
   10376:	8082                	ret
   10378:	40c306b3          	sub	a3,t1,a2
   1037c:	068a                	slli	a3,a3,0x2
   1037e:	00000297          	auipc	t0,0x0
   10382:	9696                	add	a3,a3,t0
   10384:	00a68067          	jr	10(a3)
   10388:	00b70723          	sb	a1,14(a4)
   1038c:	00b706a3          	sb	a1,13(a4)
   10390:	00b70623          	sb	a1,12(a4)
   10394:	00b705a3          	sb	a1,11(a4)
   10398:	00b70523          	sb	a1,10(a4)
   1039c:	00b704a3          	sb	a1,9(a4)
   103a0:	00b70423          	sb	a1,8(a4)
   103a4:	00b703a3          	sb	a1,7(a4)
   103a8:	00b70323          	sb	a1,6(a4)
   103ac:	00b702a3          	sb	a1,5(a4)
   103b0:	00b70223          	sb	a1,4(a4)
   103b4:	00b701a3          	sb	a1,3(a4)
   103b8:	00b70123          	sb	a1,2(a4)
   103bc:	00b700a3          	sb	a1,1(a4)
   103c0:	00b70023          	sb	a1,0(a4)
   103c4:	8082                	ret
   103c6:	0ff5f593          	andi	a1,a1,255
   103ca:	00859693          	slli	a3,a1,0x8
   103ce:	8dd5                	or	a1,a1,a3
   103d0:	01059693          	slli	a3,a1,0x10
   103d4:	8dd5                	or	a1,a1,a3
   103d6:	02059693          	slli	a3,a1,0x20
   103da:	8dd5                	or	a1,a1,a3
   103dc:	b759                	j	10362 <memset+0x10>
   103de:	00279693          	slli	a3,a5,0x2
   103e2:	00000297          	auipc	t0,0x0
   103e6:	9696                	add	a3,a3,t0
   103e8:	8286                	mv	t0,ra
   103ea:	fa2680e7          	jalr	-94(a3)
   103ee:	8096                	mv	ra,t0
   103f0:	17c1                	addi	a5,a5,-16
   103f2:	8f1d                	sub	a4,a4,a5
   103f4:	963e                	add	a2,a2,a5
   103f6:	f8c371e3          	bleu	a2,t1,10378 <memset+0x26>
   103fa:	b79d                	j	10360 <memset+0xe>

00000000000103fc <__register_exitproc>:
   103fc:	67c9                	lui	a5,0x12
   103fe:	cd07b703          	ld	a4,-816(a5) # 11cd0 <_global_impure_ptr>
   10402:	832a                	mv	t1,a0
   10404:	1f873783          	ld	a5,504(a4)
   10408:	e789                	bnez	a5,10412 <__register_exitproc+0x16>
   1040a:	20070793          	addi	a5,a4,512
   1040e:	1ef73c23          	sd	a5,504(a4)
   10412:	4798                	lw	a4,8(a5)
   10414:	487d                	li	a6,31
   10416:	557d                	li	a0,-1
   10418:	04e84463          	blt	a6,a4,10460 <__register_exitproc+0x64>
   1041c:	02030a63          	beqz	t1,10450 <__register_exitproc+0x54>
   10420:	00371813          	slli	a6,a4,0x3
   10424:	983e                	add	a6,a6,a5
   10426:	10c83823          	sd	a2,272(a6)
   1042a:	3107a883          	lw	a7,784(a5)
   1042e:	4605                	li	a2,1
   10430:	00e6163b          	sllw	a2,a2,a4
   10434:	00c8e8b3          	or	a7,a7,a2
   10438:	3117a823          	sw	a7,784(a5)
   1043c:	20d83823          	sd	a3,528(a6)
   10440:	4689                	li	a3,2
   10442:	00d31763          	bne	t1,a3,10450 <__register_exitproc+0x54>
   10446:	3147a683          	lw	a3,788(a5)
   1044a:	8e55                	or	a2,a2,a3
   1044c:	30c7aa23          	sw	a2,788(a5)
   10450:	0017069b          	addiw	a3,a4,1
   10454:	0709                	addi	a4,a4,2
   10456:	070e                	slli	a4,a4,0x3
   10458:	c794                	sw	a3,8(a5)
   1045a:	97ba                	add	a5,a5,a4
   1045c:	e38c                	sd	a1,0(a5)
   1045e:	4501                	li	a0,0
   10460:	8082                	ret

0000000000010462 <__call_exitprocs>:
   10462:	715d                	addi	sp,sp,-80
   10464:	67c9                	lui	a5,0x12
   10466:	f44e                	sd	s3,40(sp)
   10468:	cd07b983          	ld	s3,-816(a5) # 11cd0 <_global_impure_ptr>
   1046c:	f052                	sd	s4,32(sp)
   1046e:	ec56                	sd	s5,24(sp)
   10470:	e85a                	sd	s6,16(sp)
   10472:	e486                	sd	ra,72(sp)
   10474:	e0a2                	sd	s0,64(sp)
   10476:	fc26                	sd	s1,56(sp)
   10478:	f84a                	sd	s2,48(sp)
   1047a:	e45e                	sd	s7,8(sp)
   1047c:	8aaa                	mv	s5,a0
   1047e:	8a2e                	mv	s4,a1
   10480:	4b05                	li	s6,1
   10482:	1f89b403          	ld	s0,504(s3)
   10486:	c801                	beqz	s0,10496 <__call_exitprocs+0x34>
   10488:	4404                	lw	s1,8(s0)
   1048a:	34fd                	addiw	s1,s1,-1
   1048c:	00349913          	slli	s2,s1,0x3
   10490:	9922                	add	s2,s2,s0
   10492:	0004dd63          	bgez	s1,104ac <__call_exitprocs+0x4a>
   10496:	60a6                	ld	ra,72(sp)
   10498:	6406                	ld	s0,64(sp)
   1049a:	74e2                	ld	s1,56(sp)
   1049c:	7942                	ld	s2,48(sp)
   1049e:	79a2                	ld	s3,40(sp)
   104a0:	7a02                	ld	s4,32(sp)
   104a2:	6ae2                	ld	s5,24(sp)
   104a4:	6b42                	ld	s6,16(sp)
   104a6:	6ba2                	ld	s7,8(sp)
   104a8:	6161                	addi	sp,sp,80
   104aa:	8082                	ret
   104ac:	000a0963          	beqz	s4,104be <__call_exitprocs+0x5c>
   104b0:	21093783          	ld	a5,528(s2)
   104b4:	01478563          	beq	a5,s4,104be <__call_exitprocs+0x5c>
   104b8:	34fd                	addiw	s1,s1,-1
   104ba:	1961                	addi	s2,s2,-8
   104bc:	bfd9                	j	10492 <__call_exitprocs+0x30>
   104be:	441c                	lw	a5,8(s0)
   104c0:	01093683          	ld	a3,16(s2)
   104c4:	37fd                	addiw	a5,a5,-1
   104c6:	02979663          	bne	a5,s1,104f2 <__call_exitprocs+0x90>
   104ca:	c404                	sw	s1,8(s0)
   104cc:	d6f5                	beqz	a3,104b8 <__call_exitprocs+0x56>
   104ce:	31042703          	lw	a4,784(s0)
   104d2:	009b163b          	sllw	a2,s6,s1
   104d6:	00842b83          	lw	s7,8(s0)
   104da:	8f71                	and	a4,a4,a2
   104dc:	2701                	sext.w	a4,a4
   104de:	ef09                	bnez	a4,104f8 <__call_exitprocs+0x96>
   104e0:	9682                	jalr	a3
   104e2:	4418                	lw	a4,8(s0)
   104e4:	1f89b783          	ld	a5,504(s3)
   104e8:	f9771de3          	bne	a4,s7,10482 <__call_exitprocs+0x20>
   104ec:	fcf406e3          	beq	s0,a5,104b8 <__call_exitprocs+0x56>
   104f0:	bf49                	j	10482 <__call_exitprocs+0x20>
   104f2:	00093823          	sd	zero,16(s2)
   104f6:	bfd9                	j	104cc <__call_exitprocs+0x6a>
   104f8:	31442783          	lw	a5,788(s0)
   104fc:	11093583          	ld	a1,272(s2)
   10500:	8ff1                	and	a5,a5,a2
   10502:	2781                	sext.w	a5,a5
   10504:	e781                	bnez	a5,1050c <__call_exitprocs+0xaa>
   10506:	8556                	mv	a0,s5
   10508:	9682                	jalr	a3
   1050a:	bfe1                	j	104e2 <__call_exitprocs+0x80>
   1050c:	852e                	mv	a0,a1
   1050e:	9682                	jalr	a3
   10510:	bfc9                	j	104e2 <__call_exitprocs+0x80>

0000000000010512 <_exit>:
   10512:	4581                	li	a1,0
   10514:	4601                	li	a2,0
   10516:	4681                	li	a3,0
   10518:	4701                	li	a4,0
   1051a:	4781                	li	a5,0
   1051c:	05d00893          	li	a7,93
   10520:	00000073          	ecall
   10524:	00055c63          	bgez	a0,1053c <_exit+0x2a>
   10528:	1141                	addi	sp,sp,-16
   1052a:	e022                	sd	s0,0(sp)
   1052c:	842a                	mv	s0,a0
   1052e:	e406                	sd	ra,8(sp)
   10530:	4080043b          	negw	s0,s0
   10534:	00a000ef          	jal	ra,1053e <__errno>
   10538:	c100                	sw	s0,0(a0)
   1053a:	a001                	j	1053a <_exit+0x28>
   1053c:	a001                	j	1053c <_exit+0x2a>

000000000001053e <__errno>:
   1053e:	8101b503          	ld	a0,-2032(gp) # 11cd8 <_impure_ptr>
   10542:	8082                	ret
