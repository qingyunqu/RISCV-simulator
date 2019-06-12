
1+2:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	35018193          	addi	gp,gp,848 # 12400 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c18 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c50 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1ea000ef          	jal	ra,102ae <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	13c50513          	addi	a0,a0,316 # 10204 <__libc_fini_array>
   100d0:	108000ef          	jal	ra,101d8 <atexit>
   100d4:	178000ef          	jal	ra,1024c <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	1020006f          	j	101e4 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	c0050713          	addi	a4,a0,-1024 # 11c00 <__TMC_END__>
   100f0:	c0078793          	addi	a5,a5,-1024 # 11c00 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	c0050513          	addi	a0,a0,-1024
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	c0078593          	addi	a1,a5,-1024 # 11c00 <__TMC_END__>
   10114:	c0050793          	addi	a5,a0,-1024 # 11c00 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	c0050513          	addi	a0,a0,-1024
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c18 <_edata>
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
   10156:	4a050513          	addi	a0,a0,1184 # 104a0 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c18 <_edata>
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
   10182:	c2058593          	addi	a1,a1,-992 # 11c20 <object.5217>
   10186:	4a050513          	addi	a0,a0,1184 # 104a0 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	fd010113          	addi	sp,sp,-48
   101a0:	02813423          	sd	s0,40(sp)
   101a4:	03010413          	addi	s0,sp,48
   101a8:	00100793          	li	a5,1
   101ac:	fef43423          	sd	a5,-24(s0)
   101b0:	00200793          	li	a5,2
   101b4:	fef43023          	sd	a5,-32(s0)
   101b8:	fe843703          	ld	a4,-24(s0)
   101bc:	fe043783          	ld	a5,-32(s0)
   101c0:	00f707b3          	add	a5,a4,a5
   101c4:	fcf43c23          	sd	a5,-40(s0)
   101c8:	00000013          	nop
   101cc:	02813403          	ld	s0,40(sp)
   101d0:	03010113          	addi	sp,sp,48
   101d4:	00008067          	ret

00000000000101d8 <atexit>:
   101d8:	85aa                	mv	a1,a0
   101da:	4681                	li	a3,0
   101dc:	4601                	li	a2,0
   101de:	4501                	li	a0,0
   101e0:	1780006f          	j	10358 <__register_exitproc>

00000000000101e4 <exit>:
   101e4:	1141                	addi	sp,sp,-16
   101e6:	4581                	li	a1,0
   101e8:	e022                	sd	s0,0(sp)
   101ea:	e406                	sd	ra,8(sp)
   101ec:	842a                	mv	s0,a0
   101ee:	1d0000ef          	jal	ra,103be <__call_exitprocs>
   101f2:	67c9                	lui	a5,0x12
   101f4:	c087b503          	ld	a0,-1016(a5) # 11c08 <_global_impure_ptr>
   101f8:	6d3c                	ld	a5,88(a0)
   101fa:	c391                	beqz	a5,101fe <exit+0x1a>
   101fc:	9782                	jalr	a5
   101fe:	8522                	mv	a0,s0
   10200:	26e000ef          	jal	ra,1046e <_exit>

0000000000010204 <__libc_fini_array>:
   10204:	7179                	addi	sp,sp,-48
   10206:	67c5                	lui	a5,0x11
   10208:	6745                	lui	a4,0x11
   1020a:	f022                	sd	s0,32(sp)
   1020c:	4b070713          	addi	a4,a4,1200 # 114b0 <__init_array_end>
   10210:	4b878413          	addi	s0,a5,1208 # 114b8 <__fini_array_end>
   10214:	8c19                	sub	s0,s0,a4
   10216:	ec26                	sd	s1,24(sp)
   10218:	e84a                	sd	s2,16(sp)
   1021a:	e44e                	sd	s3,8(sp)
   1021c:	f406                	sd	ra,40(sp)
   1021e:	840d                	srai	s0,s0,0x3
   10220:	4481                	li	s1,0
   10222:	4b878913          	addi	s2,a5,1208
   10226:	59e1                	li	s3,-8
   10228:	00941a63          	bne	s0,s1,1023c <__libc_fini_array+0x38>
   1022c:	7402                	ld	s0,32(sp)
   1022e:	70a2                	ld	ra,40(sp)
   10230:	64e2                	ld	s1,24(sp)
   10232:	6942                	ld	s2,16(sp)
   10234:	69a2                	ld	s3,8(sp)
   10236:	6145                	addi	sp,sp,48
   10238:	eafff06f          	j	100e6 <_fini>
   1023c:	033487b3          	mul	a5,s1,s3
   10240:	0485                	addi	s1,s1,1
   10242:	97ca                	add	a5,a5,s2
   10244:	ff87b783          	ld	a5,-8(a5)
   10248:	9782                	jalr	a5
   1024a:	bff9                	j	10228 <__libc_fini_array+0x24>

000000000001024c <__libc_init_array>:
   1024c:	1101                	addi	sp,sp,-32
   1024e:	e822                	sd	s0,16(sp)
   10250:	e426                	sd	s1,8(sp)
   10252:	6445                	lui	s0,0x11
   10254:	64c5                	lui	s1,0x11
   10256:	4a448793          	addi	a5,s1,1188 # 114a4 <__preinit_array_end>
   1025a:	4a440413          	addi	s0,s0,1188 # 114a4 <__preinit_array_end>
   1025e:	8c1d                	sub	s0,s0,a5
   10260:	e04a                	sd	s2,0(sp)
   10262:	ec06                	sd	ra,24(sp)
   10264:	840d                	srai	s0,s0,0x3
   10266:	4a448493          	addi	s1,s1,1188
   1026a:	4901                	li	s2,0
   1026c:	02891763          	bne	s2,s0,1029a <__libc_init_array+0x4e>
   10270:	64c5                	lui	s1,0x11
   10272:	e75ff0ef          	jal	ra,100e6 <_fini>
   10276:	6445                	lui	s0,0x11
   10278:	4a848793          	addi	a5,s1,1192 # 114a8 <__frame_dummy_init_array_entry>
   1027c:	4b040413          	addi	s0,s0,1200 # 114b0 <__init_array_end>
   10280:	8c1d                	sub	s0,s0,a5
   10282:	840d                	srai	s0,s0,0x3
   10284:	4a848493          	addi	s1,s1,1192
   10288:	4901                	li	s2,0
   1028a:	00891d63          	bne	s2,s0,102a4 <__libc_init_array+0x58>
   1028e:	60e2                	ld	ra,24(sp)
   10290:	6442                	ld	s0,16(sp)
   10292:	64a2                	ld	s1,8(sp)
   10294:	6902                	ld	s2,0(sp)
   10296:	6105                	addi	sp,sp,32
   10298:	8082                	ret
   1029a:	609c                	ld	a5,0(s1)
   1029c:	0905                	addi	s2,s2,1
   1029e:	04a1                	addi	s1,s1,8
   102a0:	9782                	jalr	a5
   102a2:	b7e9                	j	1026c <__libc_init_array+0x20>
   102a4:	609c                	ld	a5,0(s1)
   102a6:	0905                	addi	s2,s2,1
   102a8:	04a1                	addi	s1,s1,8
   102aa:	9782                	jalr	a5
   102ac:	bff9                	j	1028a <__libc_init_array+0x3e>

00000000000102ae <memset>:
   102ae:	433d                	li	t1,15
   102b0:	872a                	mv	a4,a0
   102b2:	02c37163          	bleu	a2,t1,102d4 <memset+0x26>
   102b6:	00f77793          	andi	a5,a4,15
   102ba:	e3c1                	bnez	a5,1033a <memset+0x8c>
   102bc:	e1bd                	bnez	a1,10322 <memset+0x74>
   102be:	ff067693          	andi	a3,a2,-16
   102c2:	8a3d                	andi	a2,a2,15
   102c4:	96ba                	add	a3,a3,a4
   102c6:	e30c                	sd	a1,0(a4)
   102c8:	e70c                	sd	a1,8(a4)
   102ca:	0741                	addi	a4,a4,16
   102cc:	fed76de3          	bltu	a4,a3,102c6 <memset+0x18>
   102d0:	e211                	bnez	a2,102d4 <memset+0x26>
   102d2:	8082                	ret
   102d4:	40c306b3          	sub	a3,t1,a2
   102d8:	068a                	slli	a3,a3,0x2
   102da:	00000297          	auipc	t0,0x0
   102de:	9696                	add	a3,a3,t0
   102e0:	00a68067          	jr	10(a3)
   102e4:	00b70723          	sb	a1,14(a4)
   102e8:	00b706a3          	sb	a1,13(a4)
   102ec:	00b70623          	sb	a1,12(a4)
   102f0:	00b705a3          	sb	a1,11(a4)
   102f4:	00b70523          	sb	a1,10(a4)
   102f8:	00b704a3          	sb	a1,9(a4)
   102fc:	00b70423          	sb	a1,8(a4)
   10300:	00b703a3          	sb	a1,7(a4)
   10304:	00b70323          	sb	a1,6(a4)
   10308:	00b702a3          	sb	a1,5(a4)
   1030c:	00b70223          	sb	a1,4(a4)
   10310:	00b701a3          	sb	a1,3(a4)
   10314:	00b70123          	sb	a1,2(a4)
   10318:	00b700a3          	sb	a1,1(a4)
   1031c:	00b70023          	sb	a1,0(a4)
   10320:	8082                	ret
   10322:	0ff5f593          	andi	a1,a1,255
   10326:	00859693          	slli	a3,a1,0x8
   1032a:	8dd5                	or	a1,a1,a3
   1032c:	01059693          	slli	a3,a1,0x10
   10330:	8dd5                	or	a1,a1,a3
   10332:	02059693          	slli	a3,a1,0x20
   10336:	8dd5                	or	a1,a1,a3
   10338:	b759                	j	102be <memset+0x10>
   1033a:	00279693          	slli	a3,a5,0x2
   1033e:	00000297          	auipc	t0,0x0
   10342:	9696                	add	a3,a3,t0
   10344:	8286                	mv	t0,ra
   10346:	fa2680e7          	jalr	-94(a3)
   1034a:	8096                	mv	ra,t0
   1034c:	17c1                	addi	a5,a5,-16
   1034e:	8f1d                	sub	a4,a4,a5
   10350:	963e                	add	a2,a2,a5
   10352:	f8c371e3          	bleu	a2,t1,102d4 <memset+0x26>
   10356:	b79d                	j	102bc <memset+0xe>

0000000000010358 <__register_exitproc>:
   10358:	67c9                	lui	a5,0x12
   1035a:	c087b703          	ld	a4,-1016(a5) # 11c08 <_global_impure_ptr>
   1035e:	832a                	mv	t1,a0
   10360:	1f873783          	ld	a5,504(a4)
   10364:	e789                	bnez	a5,1036e <__register_exitproc+0x16>
   10366:	20070793          	addi	a5,a4,512
   1036a:	1ef73c23          	sd	a5,504(a4)
   1036e:	4798                	lw	a4,8(a5)
   10370:	487d                	li	a6,31
   10372:	557d                	li	a0,-1
   10374:	04e84463          	blt	a6,a4,103bc <__register_exitproc+0x64>
   10378:	02030a63          	beqz	t1,103ac <__register_exitproc+0x54>
   1037c:	00371813          	slli	a6,a4,0x3
   10380:	983e                	add	a6,a6,a5
   10382:	10c83823          	sd	a2,272(a6)
   10386:	3107a883          	lw	a7,784(a5)
   1038a:	4605                	li	a2,1
   1038c:	00e6163b          	sllw	a2,a2,a4
   10390:	00c8e8b3          	or	a7,a7,a2
   10394:	3117a823          	sw	a7,784(a5)
   10398:	20d83823          	sd	a3,528(a6)
   1039c:	4689                	li	a3,2
   1039e:	00d31763          	bne	t1,a3,103ac <__register_exitproc+0x54>
   103a2:	3147a683          	lw	a3,788(a5)
   103a6:	8e55                	or	a2,a2,a3
   103a8:	30c7aa23          	sw	a2,788(a5)
   103ac:	0017069b          	addiw	a3,a4,1
   103b0:	0709                	addi	a4,a4,2
   103b2:	070e                	slli	a4,a4,0x3
   103b4:	c794                	sw	a3,8(a5)
   103b6:	97ba                	add	a5,a5,a4
   103b8:	e38c                	sd	a1,0(a5)
   103ba:	4501                	li	a0,0
   103bc:	8082                	ret

00000000000103be <__call_exitprocs>:
   103be:	715d                	addi	sp,sp,-80
   103c0:	67c9                	lui	a5,0x12
   103c2:	f44e                	sd	s3,40(sp)
   103c4:	c087b983          	ld	s3,-1016(a5) # 11c08 <_global_impure_ptr>
   103c8:	f052                	sd	s4,32(sp)
   103ca:	ec56                	sd	s5,24(sp)
   103cc:	e85a                	sd	s6,16(sp)
   103ce:	e486                	sd	ra,72(sp)
   103d0:	e0a2                	sd	s0,64(sp)
   103d2:	fc26                	sd	s1,56(sp)
   103d4:	f84a                	sd	s2,48(sp)
   103d6:	e45e                	sd	s7,8(sp)
   103d8:	8aaa                	mv	s5,a0
   103da:	8a2e                	mv	s4,a1
   103dc:	4b05                	li	s6,1
   103de:	1f89b403          	ld	s0,504(s3)
   103e2:	c801                	beqz	s0,103f2 <__call_exitprocs+0x34>
   103e4:	4404                	lw	s1,8(s0)
   103e6:	34fd                	addiw	s1,s1,-1
   103e8:	00349913          	slli	s2,s1,0x3
   103ec:	9922                	add	s2,s2,s0
   103ee:	0004dd63          	bgez	s1,10408 <__call_exitprocs+0x4a>
   103f2:	60a6                	ld	ra,72(sp)
   103f4:	6406                	ld	s0,64(sp)
   103f6:	74e2                	ld	s1,56(sp)
   103f8:	7942                	ld	s2,48(sp)
   103fa:	79a2                	ld	s3,40(sp)
   103fc:	7a02                	ld	s4,32(sp)
   103fe:	6ae2                	ld	s5,24(sp)
   10400:	6b42                	ld	s6,16(sp)
   10402:	6ba2                	ld	s7,8(sp)
   10404:	6161                	addi	sp,sp,80
   10406:	8082                	ret
   10408:	000a0963          	beqz	s4,1041a <__call_exitprocs+0x5c>
   1040c:	21093783          	ld	a5,528(s2)
   10410:	01478563          	beq	a5,s4,1041a <__call_exitprocs+0x5c>
   10414:	34fd                	addiw	s1,s1,-1
   10416:	1961                	addi	s2,s2,-8
   10418:	bfd9                	j	103ee <__call_exitprocs+0x30>
   1041a:	441c                	lw	a5,8(s0)
   1041c:	01093683          	ld	a3,16(s2)
   10420:	37fd                	addiw	a5,a5,-1
   10422:	02979663          	bne	a5,s1,1044e <__call_exitprocs+0x90>
   10426:	c404                	sw	s1,8(s0)
   10428:	d6f5                	beqz	a3,10414 <__call_exitprocs+0x56>
   1042a:	31042703          	lw	a4,784(s0)
   1042e:	009b163b          	sllw	a2,s6,s1
   10432:	00842b83          	lw	s7,8(s0)
   10436:	8f71                	and	a4,a4,a2
   10438:	2701                	sext.w	a4,a4
   1043a:	ef09                	bnez	a4,10454 <__call_exitprocs+0x96>
   1043c:	9682                	jalr	a3
   1043e:	4418                	lw	a4,8(s0)
   10440:	1f89b783          	ld	a5,504(s3)
   10444:	f9771de3          	bne	a4,s7,103de <__call_exitprocs+0x20>
   10448:	fcf406e3          	beq	s0,a5,10414 <__call_exitprocs+0x56>
   1044c:	bf49                	j	103de <__call_exitprocs+0x20>
   1044e:	00093823          	sd	zero,16(s2)
   10452:	bfd9                	j	10428 <__call_exitprocs+0x6a>
   10454:	31442783          	lw	a5,788(s0)
   10458:	11093583          	ld	a1,272(s2)
   1045c:	8ff1                	and	a5,a5,a2
   1045e:	2781                	sext.w	a5,a5
   10460:	e781                	bnez	a5,10468 <__call_exitprocs+0xaa>
   10462:	8556                	mv	a0,s5
   10464:	9682                	jalr	a3
   10466:	bfe1                	j	1043e <__call_exitprocs+0x80>
   10468:	852e                	mv	a0,a1
   1046a:	9682                	jalr	a3
   1046c:	bfc9                	j	1043e <__call_exitprocs+0x80>

000000000001046e <_exit>:
   1046e:	4581                	li	a1,0
   10470:	4601                	li	a2,0
   10472:	4681                	li	a3,0
   10474:	4701                	li	a4,0
   10476:	4781                	li	a5,0
   10478:	05d00893          	li	a7,93
   1047c:	00000073          	ecall
   10480:	00055c63          	bgez	a0,10498 <_exit+0x2a>
   10484:	1141                	addi	sp,sp,-16
   10486:	e022                	sd	s0,0(sp)
   10488:	842a                	mv	s0,a0
   1048a:	e406                	sd	ra,8(sp)
   1048c:	4080043b          	negw	s0,s0
   10490:	00a000ef          	jal	ra,1049a <__errno>
   10494:	c100                	sw	s0,0(a0)
   10496:	a001                	j	10496 <_exit+0x28>
   10498:	a001                	j	10498 <_exit+0x2a>

000000000001049a <__errno>:
   1049a:	8101b503          	ld	a0,-2032(gp) # 11c10 <_impure_ptr>
   1049e:	8082                	ret
