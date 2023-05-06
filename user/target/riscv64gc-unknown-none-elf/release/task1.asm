
target/riscv64gc-unknown-none-elf/release/task1:	file format elf64-littleriscv

Disassembly of section .text:

0000000000000000 <_start>:
       0: 39 71        	addi	sp, sp, -64
       2: 06 fc        	sd	ra, 56(sp)
       4: 22 f8        	sd	s0, 48(sp)
       6: 80 00        	addi	s0, sp, 64
       8: 97 00 00 00  	auipc	ra, 0
       c: e7 80 00 05  	jalr	80(ra)
      10: 01 25        	sext.w	a0, a0
      12: 89 48        	li	a7, 2
      14: 81 45        	li	a1, 0
      16: 01 46        	li	a2, 0
      18: 73 00 00 00  	ecall	

000000000000001c <.LBB0_1>:
      1c: 17 25 00 00  	auipc	a0, 2
      20: 13 05 c5 10  	addi	a0, a0, 268
      24: 23 30 a4 fc  	sd	a0, -64(s0)
      28: 05 45        	li	a0, 1
      2a: 23 34 a4 fc  	sd	a0, -56(s0)
      2e: 23 38 04 fc  	sd	zero, -48(s0)

0000000000000032 <.LBB0_2>:
      32: 17 25 00 00  	auipc	a0, 2
      36: 13 05 65 0d  	addi	a0, a0, 214
      3a: 23 30 a4 fe  	sd	a0, -32(s0)
      3e: 23 34 04 fe  	sd	zero, -24(s0)

0000000000000042 <.LBB0_3>:
      42: 97 25 00 00  	auipc	a1, 2
      46: 93 85 65 10  	addi	a1, a1, 262
      4a: 13 05 04 fc  	addi	a0, s0, -64
      4e: 97 00 00 00  	auipc	ra, 0
      52: e7 80 e0 41  	jalr	1054(ra)
      56: 00 00        	unimp	

0000000000000058 <main>:
      58: 71 71        	addi	sp, sp, -176
      5a: 06 f5        	sd	ra, 168(sp)
      5c: 22 f1        	sd	s0, 160(sp)
      5e: 26 ed        	sd	s1, 152(sp)
      60: 4a e9        	sd	s2, 144(sp)
      62: 4e e5        	sd	s3, 136(sp)
      64: 52 e1        	sd	s4, 128(sp)
      66: d6 fc        	sd	s5, 120(sp)
      68: da f8        	sd	s6, 112(sp)
      6a: de f4        	sd	s7, 104(sp)
      6c: e2 f0        	sd	s8, 96(sp)
      6e: e6 ec        	sd	s9, 88(sp)
      70: ea e8        	sd	s10, 80(sp)
      72: ee e4        	sd	s11, 72(sp)
      74: 00 19        	addi	s0, sp, 176
      76: 81 44        	li	s1, 0

0000000000000078 <.LBB0_3>:
      78: 97 2d 00 00  	auipc	s11, 2
      7c: 93 8d 0d f9  	addi	s11, s11, -112
      80: 85 49        	li	s3, 1

0000000000000082 <.LBB0_4>:
      82: 17 29 00 00  	auipc	s2, 2
      86: 13 09 e9 f7  	addi	s2, s2, -130
      8a: 13 0a 44 f6  	addi	s4, s0, -156

000000000000008e <.LBB0_5>:
      8e: 97 1a 00 00  	auipc	s5, 1
      92: 93 8a ea e4  	addi	s5, s5, -434

0000000000000096 <.LBB0_6>:
      96: 17 2b 00 00  	auipc	s6, 2
      9a: 13 0b ab f8  	addi	s6, s6, -118
      9e: 89 4b        	li	s7, 2
      a0: 13 0c 04 f5  	addi	s8, s0, -176
      a4: 91 4c        	li	s9, 4
      a6: 26 8d        	mv	s10, s1
      a8: 23 34 b4 f7  	sd	s11, -152(s0)
      ac: 23 38 34 f7  	sd	s3, -144(s0)
      b0: 23 3c 04 f6  	sd	zero, -136(s0)
      b4: 23 34 24 f9  	sd	s2, -120(s0)
      b8: 23 38 04 f8  	sd	zero, -112(s0)
      bc: 13 05 84 f6  	addi	a0, s0, -152
      c0: 97 00 00 00  	auipc	ra, 0
      c4: e7 80 60 2e  	jalr	742(ra)
      c8: 23 34 b4 f7  	sd	s11, -152(s0)
      cc: 23 38 34 f7  	sd	s3, -144(s0)
      d0: 23 3c 04 f6  	sd	zero, -136(s0)
      d4: 23 34 24 f9  	sd	s2, -120(s0)
      d8: 23 38 04 f8  	sd	zero, -112(s0)
      dc: 13 05 84 f6  	addi	a0, s0, -152
      e0: 97 00 00 00  	auipc	ra, 0
      e4: e7 80 60 2c  	jalr	710(ra)
      e8: 23 34 b4 f7  	sd	s11, -152(s0)
      ec: 23 38 34 f7  	sd	s3, -144(s0)
      f0: 23 3c 04 f6  	sd	zero, -136(s0)
      f4: 23 34 24 f9  	sd	s2, -120(s0)
      f8: 23 38 04 f8  	sd	zero, -112(s0)
      fc: 13 05 84 f6  	addi	a0, s0, -152
     100: 97 00 00 00  	auipc	ra, 0
     104: e7 80 60 2a  	jalr	678(ra)
     108: 23 34 b4 f7  	sd	s11, -152(s0)
     10c: 23 38 34 f7  	sd	s3, -144(s0)
     110: 23 3c 04 f6  	sd	zero, -136(s0)
     114: 23 34 24 f9  	sd	s2, -120(s0)
     118: 23 38 04 f8  	sd	zero, -112(s0)
     11c: 13 05 84 f6  	addi	a0, s0, -152
     120: 97 00 00 00  	auipc	ra, 0
     124: e7 80 60 28  	jalr	646(ra)
     128: 23 34 b4 f7  	sd	s11, -152(s0)
     12c: 23 38 34 f7  	sd	s3, -144(s0)
     130: 23 3c 04 f6  	sd	zero, -136(s0)
     134: 23 34 24 f9  	sd	s2, -120(s0)
     138: 23 38 04 f8  	sd	zero, -112(s0)
     13c: 13 05 84 f6  	addi	a0, s0, -152
     140: 97 00 00 00  	auipc	ra, 0
     144: e7 80 60 26  	jalr	614(ra)
     148: 23 34 b4 f7  	sd	s11, -152(s0)
     14c: 23 38 34 f7  	sd	s3, -144(s0)
     150: 23 3c 04 f6  	sd	zero, -136(s0)
     154: 23 34 24 f9  	sd	s2, -120(s0)
     158: 23 38 04 f8  	sd	zero, -112(s0)
     15c: 13 05 84 f6  	addi	a0, s0, -152
     160: 97 00 00 00  	auipc	ra, 0
     164: e7 80 60 24  	jalr	582(ra)
     168: 23 34 b4 f7  	sd	s11, -152(s0)
     16c: 23 38 34 f7  	sd	s3, -144(s0)
     170: 23 3c 04 f6  	sd	zero, -136(s0)
     174: 23 34 24 f9  	sd	s2, -120(s0)
     178: 23 38 04 f8  	sd	zero, -112(s0)
     17c: 13 05 84 f6  	addi	a0, s0, -152
     180: 97 00 00 00  	auipc	ra, 0
     184: e7 80 60 22  	jalr	550(ra)
     188: 23 34 b4 f7  	sd	s11, -152(s0)
     18c: 23 38 34 f7  	sd	s3, -144(s0)
     190: 23 3c 04 f6  	sd	zero, -136(s0)
     194: 23 34 24 f9  	sd	s2, -120(s0)
     198: 23 38 04 f8  	sd	zero, -112(s0)
     19c: 13 05 84 f6  	addi	a0, s0, -152
     1a0: 97 00 00 00  	auipc	ra, 0
     1a4: e7 80 60 20  	jalr	518(ra)
     1a8: 23 34 b4 f7  	sd	s11, -152(s0)
     1ac: 23 38 34 f7  	sd	s3, -144(s0)
     1b0: 23 3c 04 f6  	sd	zero, -136(s0)
     1b4: 23 34 24 f9  	sd	s2, -120(s0)
     1b8: 23 38 04 f8  	sd	zero, -112(s0)
     1bc: 13 05 84 f6  	addi	a0, s0, -152
     1c0: 97 00 00 00  	auipc	ra, 0
     1c4: e7 80 60 1e  	jalr	486(ra)
     1c8: 23 34 b4 f7  	sd	s11, -152(s0)
     1cc: 23 38 34 f7  	sd	s3, -144(s0)
     1d0: 23 3c 04 f6  	sd	zero, -136(s0)
     1d4: 23 34 24 f9  	sd	s2, -120(s0)
     1d8: 23 38 04 f8  	sd	zero, -112(s0)
     1dc: 13 05 84 f6  	addi	a0, s0, -152
     1e0: 97 00 00 00  	auipc	ra, 0
     1e4: e7 80 60 1c  	jalr	454(ra)
     1e8: 85 24        	addiw	s1, s1, 1
     1ea: 23 22 94 f6  	sw	s1, -156(s0)
     1ee: 23 38 44 f5  	sd	s4, -176(s0)
     1f2: 23 3c 54 f5  	sd	s5, -168(s0)
     1f6: 23 34 64 f7  	sd	s6, -152(s0)
     1fa: 23 38 74 f7  	sd	s7, -144(s0)
     1fe: 23 3c 04 f6  	sd	zero, -136(s0)
     202: 23 34 84 f9  	sd	s8, -120(s0)
     206: 23 38 34 f9  	sd	s3, -112(s0)
     20a: 13 05 84 f6  	addi	a0, s0, -152
     20e: 97 00 00 00  	auipc	ra, 0
     212: e7 80 80 19  	jalr	408(ra)
     216: e3 68 9d e9  	bltu	s10, s9, 0xa6 <.LBB0_6+0x10>

000000000000021a <.LBB0_7>:
     21a: 17 25 00 00  	auipc	a0, 2
     21e: 13 05 65 e3  	addi	a0, a0, -458
     222: 23 34 a4 f6  	sd	a0, -152(s0)
     226: 05 45        	li	a0, 1
     228: 23 38 a4 f6  	sd	a0, -144(s0)
     22c: 23 3c 04 f6  	sd	zero, -136(s0)
     230: 23 34 24 f9  	sd	s2, -120(s0)
     234: 23 38 04 f8  	sd	zero, -112(s0)
     238: 13 05 84 f6  	addi	a0, s0, -152
     23c: 97 00 00 00  	auipc	ra, 0
     240: e7 80 a0 16  	jalr	362(ra)
     244: 01 45        	li	a0, 0
     246: aa 70        	ld	ra, 168(sp)
     248: 0a 74        	ld	s0, 160(sp)
     24a: ea 64        	ld	s1, 152(sp)
     24c: 4a 69        	ld	s2, 144(sp)
     24e: aa 69        	ld	s3, 136(sp)
     250: 0a 6a        	ld	s4, 128(sp)
     252: e6 7a        	ld	s5, 120(sp)
     254: 46 7b        	ld	s6, 112(sp)
     256: a6 7b        	ld	s7, 104(sp)
     258: 06 7c        	ld	s8, 96(sp)
     25a: e6 6c        	ld	s9, 88(sp)
     25c: 46 6d        	ld	s10, 80(sp)
     25e: a6 6d        	ld	s11, 72(sp)
     260: 4d 61        	addi	sp, sp, 176
     262: 82 80        	ret

0000000000000264 <_ZN4core3ptr54drop_in_place$LT$$RF$mut$u20$user..console..Stdout$GT$17haf0b4d0acbc72d83E.llvm.13060604909089638638>:
     264: 41 11        	addi	sp, sp, -16
     266: 06 e4        	sd	ra, 8(sp)
     268: 22 e0        	sd	s0, 0(sp)
     26a: 00 08        	addi	s0, sp, 16
     26c: a2 60        	ld	ra, 8(sp)
     26e: 02 64        	ld	s0, 0(sp)
     270: 41 01        	addi	sp, sp, 16
     272: 82 80        	ret

0000000000000274 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638>:
     274: 01 11        	addi	sp, sp, -32
     276: 06 ec        	sd	ra, 24(sp)
     278: 22 e8        	sd	s0, 16(sp)
     27a: 00 10        	addi	s0, sp, 32
     27c: 1b 85 05 00  	sext.w	a0, a1
     280: 13 06 00 08  	li	a2, 128
     284: 23 26 04 fe  	sw	zero, -20(s0)
     288: 63 76 c5 00  	bgeu	a0, a2, 0x294 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0x20>
     28c: 23 06 b4 fe  	sb	a1, -20(s0)
     290: 05 46        	li	a2, 1
     292: 49 a8        	j	0x324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0xb0>
     294: 1b d5 b5 00  	srliw	a0, a1, 11
     298: 19 ed        	bnez	a0, 0x2b6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0x42>
     29a: 13 d5 65 00  	srli	a0, a1, 6
     29e: 13 65 05 0c  	ori	a0, a0, 192
     2a2: 23 06 a4 fe  	sb	a0, -20(s0)
     2a6: 13 f5 f5 03  	andi	a0, a1, 63
     2aa: 13 65 05 08  	ori	a0, a0, 128
     2ae: a3 06 a4 fe  	sb	a0, -19(s0)
     2b2: 09 46        	li	a2, 2
     2b4: 85 a8        	j	0x324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0xb0>
     2b6: 1b d5 05 01  	srliw	a0, a1, 16
     2ba: 1d e5        	bnez	a0, 0x2e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0x74>
     2bc: 1b d5 c5 00  	srliw	a0, a1, 12
     2c0: 13 65 05 0e  	ori	a0, a0, 224
     2c4: 23 06 a4 fe  	sb	a0, -20(s0)
     2c8: 1b d5 65 00  	srliw	a0, a1, 6
     2cc: 13 75 f5 03  	andi	a0, a0, 63
     2d0: 13 65 05 08  	ori	a0, a0, 128
     2d4: a3 06 a4 fe  	sb	a0, -19(s0)
     2d8: 13 f5 f5 03  	andi	a0, a1, 63
     2dc: 13 65 05 08  	ori	a0, a0, 128
     2e0: 23 07 a4 fe  	sb	a0, -18(s0)
     2e4: 0d 46        	li	a2, 3
     2e6: 3d a8        	j	0x324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hca36d0c76b624efeE.llvm.13060604909089638638+0xb0>
     2e8: 1b d5 25 01  	srliw	a0, a1, 18
     2ec: 1d 89        	andi	a0, a0, 7
     2ee: 13 65 05 0f  	ori	a0, a0, 240
     2f2: 23 06 a4 fe  	sb	a0, -20(s0)
     2f6: 1b d5 c5 00  	srliw	a0, a1, 12
     2fa: 13 75 f5 03  	andi	a0, a0, 63
     2fe: 13 65 05 08  	ori	a0, a0, 128
     302: a3 06 a4 fe  	sb	a0, -19(s0)
     306: 1b d5 65 00  	srliw	a0, a1, 6
     30a: 13 75 f5 03  	andi	a0, a0, 63
     30e: 13 65 05 08  	ori	a0, a0, 128
     312: 23 07 a4 fe  	sb	a0, -18(s0)
     316: 13 f5 f5 03  	andi	a0, a1, 63
     31a: 13 65 05 08  	ori	a0, a0, 128
     31e: a3 07 a4 fe  	sb	a0, -17(s0)
     322: 11 46        	li	a2, 4
     324: 93 05 c4 fe  	addi	a1, s0, -20
     328: c1 48        	li	a7, 16
     32a: 05 45        	li	a0, 1
     32c: 73 00 00 00  	ecall	
     330: 01 45        	li	a0, 0
     332: e2 60        	ld	ra, 24(sp)
     334: 42 64        	ld	s0, 16(sp)
     336: 05 61        	addi	sp, sp, 32
     338: 82 80        	ret

000000000000033a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hf27e336807e65cd1E.llvm.13060604909089638638>:
     33a: 5d 71        	addi	sp, sp, -80
     33c: 86 e4        	sd	ra, 72(sp)
     33e: a2 e0        	sd	s0, 64(sp)
     340: 80 08        	addi	s0, sp, 80
     342: 08 61        	ld	a0, 0(a0)
     344: 90 75        	ld	a2, 40(a1)
     346: 94 71        	ld	a3, 32(a1)
     348: 23 3c a4 fa  	sd	a0, -72(s0)
     34c: 23 34 c4 fe  	sd	a2, -24(s0)
     350: 23 30 d4 fe  	sd	a3, -32(s0)
     354: 88 6d        	ld	a0, 24(a1)
     356: 90 69        	ld	a2, 16(a1)
     358: 94 65        	ld	a3, 8(a1)
     35a: 8c 61        	ld	a1, 0(a1)
     35c: 23 3c a4 fc  	sd	a0, -40(s0)
     360: 23 38 c4 fc  	sd	a2, -48(s0)
     364: 23 34 d4 fc  	sd	a3, -56(s0)
     368: 23 30 b4 fc  	sd	a1, -64(s0)

000000000000036c <.LBB2_1>:
     36c: 97 25 00 00  	auipc	a1, 2
     370: 93 85 45 cf  	addi	a1, a1, -780
     374: 13 05 84 fb  	addi	a0, s0, -72
     378: 13 06 04 fc  	addi	a2, s0, -64
     37c: 97 00 00 00  	auipc	ra, 0
     380: e7 80 c0 19  	jalr	412(ra)
     384: a6 60        	ld	ra, 72(sp)
     386: 06 64        	ld	s0, 64(sp)
     388: 61 61        	addi	sp, sp, 80
     38a: 82 80        	ret

000000000000038c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2e44a8d8bf612146E.llvm.13060604909089638638>:
     38c: 41 11        	addi	sp, sp, -16
     38e: 06 e4        	sd	ra, 8(sp)
     390: 22 e0        	sd	s0, 0(sp)
     392: 00 08        	addi	s0, sp, 16
     394: c1 48        	li	a7, 16
     396: 05 45        	li	a0, 1
     398: 73 00 00 00  	ecall	
     39c: 01 45        	li	a0, 0
     39e: a2 60        	ld	ra, 8(sp)
     3a0: 02 64        	ld	s0, 0(sp)
     3a2: 41 01        	addi	sp, sp, 16
     3a4: 82 80        	ret

00000000000003a6 <_ZN4user7console5print17h3e0ec8acf7cd2c26E>:
     3a6: 5d 71        	addi	sp, sp, -80
     3a8: 86 e4        	sd	ra, 72(sp)
     3aa: a2 e0        	sd	s0, 64(sp)
     3ac: 80 08        	addi	s0, sp, 80
     3ae: 0c 75        	ld	a1, 40(a0)
     3b0: 10 71        	ld	a2, 32(a0)
     3b2: 93 06 84 fe  	addi	a3, s0, -24
     3b6: 23 38 d4 fa  	sd	a3, -80(s0)
     3ba: 23 30 b4 fe  	sd	a1, -32(s0)
     3be: 23 3c c4 fc  	sd	a2, -40(s0)
     3c2: 0c 6d        	ld	a1, 24(a0)
     3c4: 10 69        	ld	a2, 16(a0)
     3c6: 14 65        	ld	a3, 8(a0)
     3c8: 08 61        	ld	a0, 0(a0)
     3ca: 23 38 b4 fc  	sd	a1, -48(s0)
     3ce: 23 34 c4 fc  	sd	a2, -56(s0)
     3d2: 23 30 d4 fc  	sd	a3, -64(s0)
     3d6: 23 3c a4 fa  	sd	a0, -72(s0)

00000000000003da <.LBB5_3>:
     3da: 97 25 00 00  	auipc	a1, 2
     3de: 93 85 65 c8  	addi	a1, a1, -890
     3e2: 13 05 04 fb  	addi	a0, s0, -80
     3e6: 13 06 84 fb  	addi	a2, s0, -72
     3ea: 97 00 00 00  	auipc	ra, 0
     3ee: e7 80 e0 12  	jalr	302(ra)
     3f2: 09 e5        	bnez	a0, 0x3fc <.LBB5_4>
     3f4: a6 60        	ld	ra, 72(sp)
     3f6: 06 64        	ld	s0, 64(sp)
     3f8: 61 61        	addi	sp, sp, 80
     3fa: 82 80        	ret

00000000000003fc <.LBB5_4>:
     3fc: 17 25 00 00  	auipc	a0, 2
     400: 13 05 45 c9  	addi	a0, a0, -876

0000000000000404 <.LBB5_5>:
     404: 97 26 00 00  	auipc	a3, 2
     408: 93 86 c6 cb  	addi	a3, a3, -836

000000000000040c <.LBB5_6>:
     40c: 17 27 00 00  	auipc	a4, 2
     410: 13 07 47 ce  	addi	a4, a4, -796
     414: 93 05 b0 02  	li	a1, 43
     418: 13 06 84 fe  	addi	a2, s0, -24
     41c: 97 00 00 00  	auipc	ra, 0
     420: e7 80 e0 07  	jalr	126(ra)
     424: 00 00        	unimp	

0000000000000426 <_ZN4core3ops8function6FnOnce9call_once17h6b85840bc58c33c1E>:
     426: 08 61        	ld	a0, 0(a0)
     428: 01 a0        	j	0x428 <_ZN4core3ops8function6FnOnce9call_once17h6b85840bc58c33c1E+0x2>

000000000000042a <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17hea562d0102c22270E>:
     42a: 82 80        	ret

000000000000042c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h34db90cd42bdf307E>:
     42c: 17 35 00 00  	auipc	a0, 3
     430: 13 05 c5 cb  	addi	a0, a0, -836
     434: 08 61        	ld	a0, 0(a0)
     436: 82 80        	ret

0000000000000438 <_ZN4core5panic10panic_info9PanicInfo7message17h4abe68e22d422758E>:
     438: 08 69        	ld	a0, 16(a0)
     43a: 82 80        	ret

000000000000043c <_ZN4core5panic10panic_info9PanicInfo8location17h873d58c3c1958ff8E>:
     43c: 08 6d        	ld	a0, 24(a0)
     43e: 82 80        	ret

0000000000000440 <_ZN4core9panicking5panic17h92f54f473578363dE>:
     440: 5d 71        	addi	sp, sp, -80
     442: 86 e4        	sd	ra, 72(sp)
     444: 2a fc        	sd	a0, 56(sp)
     446: ae e0        	sd	a1, 64(sp)
     448: 28 18        	addi	a0, sp, 56
     44a: 2a e4        	sd	a0, 8(sp)
     44c: 05 45        	li	a0, 1
     44e: 2a e8        	sd	a0, 16(sp)
     450: 02 ec        	sd	zero, 24(sp)

0000000000000452 <.LBB150_1>:
     452: 17 25 00 00  	auipc	a0, 2
     456: 13 05 e5 d0  	addi	a0, a0, -754
     45a: 2a f4        	sd	a0, 40(sp)
     45c: 02 f8        	sd	zero, 48(sp)
     45e: 28 00        	addi	a0, sp, 8
     460: b2 85        	mv	a1, a2
     462: 97 00 00 00  	auipc	ra, 0
     466: e7 80 a0 00  	jalr	10(ra)
     46a: 00 00        	unimp	

000000000000046c <_ZN4core9panicking9panic_fmt17h19eb6297ffd5ff01E>:
     46c: 79 71        	addi	sp, sp, -48
     46e: 06 f4        	sd	ra, 40(sp)

0000000000000470 <.LBB155_1>:
     470: 17 26 00 00  	auipc	a2, 2
     474: 13 06 06 cf  	addi	a2, a2, -784
     478: 32 e0        	sd	a2, 0(sp)

000000000000047a <.LBB155_2>:
     47a: 17 26 00 00  	auipc	a2, 2
     47e: 13 06 66 ce  	addi	a2, a2, -794
     482: 32 e4        	sd	a2, 8(sp)
     484: 2a e8        	sd	a0, 16(sp)
     486: 2e ec        	sd	a1, 24(sp)
     488: 05 45        	li	a0, 1
     48a: 23 00 a1 02  	sb	a0, 32(sp)
     48e: 0a 85        	mv	a0, sp
     490: 97 10 00 00  	auipc	ra, 1
     494: e7 80 60 aa  	jalr	-1370(ra)
     498: 00 00        	unimp	

000000000000049a <_ZN4core6result13unwrap_failed17h3c2e5884ed497eadE>:
     49a: 19 71        	addi	sp, sp, -128
     49c: 86 fc        	sd	ra, 120(sp)
     49e: 2a e4        	sd	a0, 8(sp)
     4a0: 2e e8        	sd	a1, 16(sp)
     4a2: 32 ec        	sd	a2, 24(sp)
     4a4: 36 f0        	sd	a3, 32(sp)
     4a6: 28 00        	addi	a0, sp, 8
     4a8: aa ec        	sd	a0, 88(sp)

00000000000004aa <.LBB161_1>:
     4aa: 17 15 00 00  	auipc	a0, 1
     4ae: 13 05 c5 a7  	addi	a0, a0, -1412
     4b2: aa f0        	sd	a0, 96(sp)
     4b4: 28 08        	addi	a0, sp, 24
     4b6: aa f4        	sd	a0, 104(sp)

00000000000004b8 <.LBB161_2>:
     4b8: 17 15 00 00  	auipc	a0, 1
     4bc: 13 05 65 a6  	addi	a0, a0, -1434
     4c0: aa f8        	sd	a0, 112(sp)

00000000000004c2 <.LBB161_3>:
     4c2: 17 25 00 00  	auipc	a0, 2
     4c6: 13 05 65 cc  	addi	a0, a0, -826
     4ca: 2a f4        	sd	a0, 40(sp)
     4cc: 09 45        	li	a0, 2
     4ce: 2a f8        	sd	a0, 48(sp)
     4d0: 02 fc        	sd	zero, 56(sp)
     4d2: ac 08        	addi	a1, sp, 88
     4d4: ae e4        	sd	a1, 72(sp)
     4d6: aa e8        	sd	a0, 80(sp)
     4d8: 28 10        	addi	a0, sp, 40
     4da: ba 85        	mv	a1, a4
     4dc: 97 00 00 00  	auipc	ra, 0
     4e0: e7 80 00 f9  	jalr	-112(ra)
     4e4: 00 00        	unimp	

00000000000004e6 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h4d3bee89ff077165E>:
     4e6: 39 71        	addi	sp, sp, -64
     4e8: 06 fc        	sd	ra, 56(sp)
     4ea: 10 75        	ld	a2, 40(a0)
     4ec: 18 71        	ld	a4, 32(a0)
     4ee: 1c 6d        	ld	a5, 24(a0)
     4f0: 32 f8        	sd	a2, 48(sp)
     4f2: 94 71        	ld	a3, 32(a1)
     4f4: 3a f4        	sd	a4, 40(sp)
     4f6: 3e f0        	sd	a5, 32(sp)
     4f8: 10 69        	ld	a2, 16(a0)
     4fa: 18 65        	ld	a4, 8(a0)
     4fc: 08 61        	ld	a0, 0(a0)
     4fe: 8c 75        	ld	a1, 40(a1)
     500: 32 ec        	sd	a2, 24(sp)
     502: 3a e8        	sd	a4, 16(sp)
     504: 2a e4        	sd	a0, 8(sp)
     506: 30 00        	addi	a2, sp, 8
     508: 36 85        	mv	a0, a3
     50a: 97 00 00 00  	auipc	ra, 0
     50e: e7 80 e0 00  	jalr	14(ra)
     512: e2 70        	ld	ra, 56(sp)
     514: 21 61        	addi	sp, sp, 64
     516: 82 80        	ret

0000000000000518 <_ZN4core3fmt5write17ha708f69ea5ad27e5E>:
     518: 19 71        	addi	sp, sp, -128
     51a: 86 fc        	sd	ra, 120(sp)
     51c: a2 f8        	sd	s0, 112(sp)
     51e: a6 f4        	sd	s1, 104(sp)
     520: ca f0        	sd	s2, 96(sp)
     522: ce ec        	sd	s3, 88(sp)
     524: d2 e8        	sd	s4, 80(sp)
     526: d6 e4        	sd	s5, 72(sp)
     528: da e0        	sd	s6, 64(sp)
     52a: b2 89        	mv	s3, a2
     52c: 05 46        	li	a2, 1
     52e: 16 16        	slli	a2, a2, 37
     530: 32 f8        	sd	a2, 48(sp)
     532: 0d 46        	li	a2, 3
     534: 23 0c c1 02  	sb	a2, 56(sp)
     538: 03 b6 09 01  	ld	a2, 16(s3)
     53c: 02 e0        	sd	zero, 0(sp)
     53e: 02 e8        	sd	zero, 16(sp)
     540: 2a f0        	sd	a0, 32(sp)
     542: 2e f4        	sd	a1, 40(sp)
     544: 69 ca        	beqz	a2, 0x616 <.LBB199_34+0xa6>
     546: 03 b5 89 01  	ld	a0, 24(s3)
     54a: 63 0c 05 10  	beqz	a0, 0x662 <.LBB199_34+0xf2>
     54e: 83 b5 09 00  	ld	a1, 0(s3)
     552: 93 06 f5 ff  	addi	a3, a0, -1
     556: 8e 06        	slli	a3, a3, 3
     558: 8d 82        	srli	a3, a3, 3
     55a: 13 89 16 00  	addi	s2, a3, 1
     55e: 93 84 85 00  	addi	s1, a1, 8
     562: 93 05 80 03  	li	a1, 56
     566: 33 0a b5 02  	mul	s4, a0, a1
     56a: 13 04 06 03  	addi	s0, a2, 48
     56e: 85 4a        	li	s5, 1

0000000000000570 <.LBB199_34>:
     570: 17 0b 00 00  	auipc	s6, 0
     574: 13 0b 6b eb  	addi	s6, s6, -330
     578: 90 60        	ld	a2, 0(s1)
     57a: 09 ca        	beqz	a2, 0x58c <.LBB199_34+0x1c>
     57c: a2 76        	ld	a3, 40(sp)
     57e: 02 75        	ld	a0, 32(sp)
     580: 83 b5 84 ff  	ld	a1, -8(s1)
     584: 94 6e        	ld	a3, 24(a3)
     586: 82 96        	jalr	a3
     588: 63 19 05 10  	bnez	a0, 0x69a <.LBB199_34+0x12a>
     58c: 03 25 84 ff  	lw	a0, -8(s0)
     590: 2a da        	sw	a0, 52(sp)
     592: 03 05 04 00  	lb	a0, 0(s0)
     596: 23 0c a1 02  	sb	a0, 56(sp)
     59a: 83 25 c4 ff  	lw	a1, -4(s0)
     59e: 03 b5 09 02  	ld	a0, 32(s3)
     5a2: 2e d8        	sw	a1, 48(sp)
     5a4: 83 36 84 fe  	ld	a3, -24(s0)
     5a8: 83 35 04 ff  	ld	a1, -16(s0)
     5ac: 89 ce        	beqz	a3, 0x5c6 <.LBB199_34+0x56>
     5ae: 01 46        	li	a2, 0
     5b0: 63 9c 56 01  	bne	a3, s5, 0x5c8 <.LBB199_34+0x58>
     5b4: 92 05        	slli	a1, a1, 4
     5b6: aa 95        	add	a1, a1, a0
     5b8: 90 65        	ld	a2, 8(a1)
     5ba: 63 04 66 01  	beq	a2, s6, 0x5c2 <.LBB199_34+0x52>
     5be: 01 46        	li	a2, 0
     5c0: 21 a0        	j	0x5c8 <.LBB199_34+0x58>
     5c2: 8c 61        	ld	a1, 0(a1)
     5c4: 8c 61        	ld	a1, 0(a1)
     5c6: 05 46        	li	a2, 1
     5c8: 32 e0        	sd	a2, 0(sp)
     5ca: 2e e4        	sd	a1, 8(sp)
     5cc: 83 36 84 fd  	ld	a3, -40(s0)
     5d0: 83 35 04 fe  	ld	a1, -32(s0)
     5d4: 89 ce        	beqz	a3, 0x5ee <.LBB199_34+0x7e>
     5d6: 01 46        	li	a2, 0
     5d8: 63 9c 56 01  	bne	a3, s5, 0x5f0 <.LBB199_34+0x80>
     5dc: 92 05        	slli	a1, a1, 4
     5de: aa 95        	add	a1, a1, a0
     5e0: 90 65        	ld	a2, 8(a1)
     5e2: 63 04 66 01  	beq	a2, s6, 0x5ea <.LBB199_34+0x7a>
     5e6: 01 46        	li	a2, 0
     5e8: 21 a0        	j	0x5f0 <.LBB199_34+0x80>
     5ea: 8c 61        	ld	a1, 0(a1)
     5ec: 8c 61        	ld	a1, 0(a1)
     5ee: 05 46        	li	a2, 1
     5f0: 32 e8        	sd	a2, 16(sp)
     5f2: 2e ec        	sd	a1, 24(sp)
     5f4: 83 35 04 fd  	ld	a1, -48(s0)
     5f8: 92 05        	slli	a1, a1, 4
     5fa: 2e 95        	add	a0, a0, a1
     5fc: 10 65        	ld	a2, 8(a0)
     5fe: 08 61        	ld	a0, 0(a0)
     600: 8a 85        	mv	a1, sp
     602: 02 96        	jalr	a2
     604: 59 e9        	bnez	a0, 0x69a <.LBB199_34+0x12a>
     606: c1 04        	addi	s1, s1, 16
     608: 13 0a 8a fc  	addi	s4, s4, -56
     60c: 13 04 84 03  	addi	s0, s0, 56
     610: e3 14 0a f6  	bnez	s4, 0x578 <.LBB199_34+0x8>
     614: 81 a8        	j	0x664 <.LBB199_34+0xf4>
     616: 03 b5 89 02  	ld	a0, 40(s3)
     61a: 29 cd        	beqz	a0, 0x674 <.LBB199_34+0x104>
     61c: 83 b5 09 02  	ld	a1, 32(s3)
     620: 03 b6 09 00  	ld	a2, 0(s3)
     624: 7d 15        	addi	a0, a0, -1
     626: 12 05        	slli	a0, a0, 4
     628: 11 81        	srli	a0, a0, 4
     62a: 13 09 15 00  	addi	s2, a0, 1
     62e: 13 04 86 00  	addi	s0, a2, 8
     632: 93 84 85 00  	addi	s1, a1, 8
     636: 4a 8a        	mv	s4, s2
     638: 10 60        	ld	a2, 0(s0)
     63a: 01 ca        	beqz	a2, 0x64a <.LBB199_34+0xda>
     63c: a2 76        	ld	a3, 40(sp)
     63e: 02 75        	ld	a0, 32(sp)
     640: 83 35 84 ff  	ld	a1, -8(s0)
     644: 94 6e        	ld	a3, 24(a3)
     646: 82 96        	jalr	a3
     648: 29 e9        	bnez	a0, 0x69a <.LBB199_34+0x12a>
     64a: 90 60        	ld	a2, 0(s1)
     64c: 03 b5 84 ff  	ld	a0, -8(s1)
     650: 8a 85        	mv	a1, sp
     652: 02 96        	jalr	a2
     654: 39 e1        	bnez	a0, 0x69a <.LBB199_34+0x12a>
     656: 7d 1a        	addi	s4, s4, -1
     658: 41 04        	addi	s0, s0, 16
     65a: c1 04        	addi	s1, s1, 16
     65c: e3 1e 0a fc  	bnez	s4, 0x638 <.LBB199_34+0xc8>
     660: 11 a0        	j	0x664 <.LBB199_34+0xf4>
     662: 01 49        	li	s2, 0
     664: 03 b5 89 00  	ld	a0, 8(s3)
     668: 63 6b a9 00  	bltu	s2, a0, 0x67e <.LBB199_34+0x10e>
     66c: 01 46        	li	a2, 0
     66e: 63 6f a9 00  	bltu	s2, a0, 0x68c <.LBB199_34+0x11c>
     672: 35 a0        	j	0x69e <.LBB199_34+0x12e>
     674: 01 49        	li	s2, 0
     676: 03 b5 89 00  	ld	a0, 8(s3)
     67a: e3 79 a9 fe  	bgeu	s2, a0, 0x66c <.LBB199_34+0xfc>
     67e: 83 b5 09 00  	ld	a1, 0(s3)
     682: 13 16 49 00  	slli	a2, s2, 4
     686: 2e 96        	add	a2, a2, a1
     688: 63 7b a9 00  	bgeu	s2, a0, 0x69e <.LBB199_34+0x12e>
     68c: a2 76        	ld	a3, 40(sp)
     68e: 02 75        	ld	a0, 32(sp)
     690: 0c 62        	ld	a1, 0(a2)
     692: 10 66        	ld	a2, 8(a2)
     694: 94 6e        	ld	a3, 24(a3)
     696: 82 96        	jalr	a3
     698: 19 c1        	beqz	a0, 0x69e <.LBB199_34+0x12e>
     69a: 05 45        	li	a0, 1
     69c: 11 a0        	j	0x6a0 <.LBB199_34+0x130>
     69e: 01 45        	li	a0, 0
     6a0: e6 70        	ld	ra, 120(sp)
     6a2: 46 74        	ld	s0, 112(sp)
     6a4: a6 74        	ld	s1, 104(sp)
     6a6: 06 79        	ld	s2, 96(sp)
     6a8: e6 69        	ld	s3, 88(sp)
     6aa: 46 6a        	ld	s4, 80(sp)
     6ac: a6 6a        	ld	s5, 72(sp)
     6ae: 06 6b        	ld	s6, 64(sp)
     6b0: 09 61        	addi	sp, sp, 128
     6b2: 82 80        	ret

00000000000006b4 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E>:
     6b4: 1d 71        	addi	sp, sp, -96
     6b6: 86 ec        	sd	ra, 88(sp)
     6b8: a2 e8        	sd	s0, 80(sp)
     6ba: a6 e4        	sd	s1, 72(sp)
     6bc: ca e0        	sd	s2, 64(sp)
     6be: 4e fc        	sd	s3, 56(sp)
     6c0: 52 f8        	sd	s4, 48(sp)
     6c2: 56 f4        	sd	s5, 40(sp)
     6c4: 5a f0        	sd	s6, 32(sp)
     6c6: 5e ec        	sd	s7, 24(sp)
     6c8: 62 e8        	sd	s8, 16(sp)
     6ca: 66 e4        	sd	s9, 8(sp)
     6cc: 6a e0        	sd	s10, 0(sp)
     6ce: be 89        	mv	s3, a5
     6d0: 3a 89        	mv	s2, a4
     6d2: 36 8b        	mv	s6, a3
     6d4: b2 8a        	mv	s5, a2
     6d6: 2a 8c        	mv	s8, a0
     6d8: b9 c5        	beqz	a1, 0x726 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x72>
     6da: 03 65 0c 03  	lwu	a0, 48(s8)
     6de: 93 75 15 00  	andi	a1, a0, 1
     6e2: 37 0a 11 00  	lui	s4, 272
     6e6: 99 c1        	beqz	a1, 0x6ec <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x38>
     6e8: 13 0a b0 02  	li	s4, 43
     6ec: 33 84 35 01  	add	s0, a1, s3
     6f0: 11 89        	andi	a0, a0, 4
     6f2: 31 c1        	beqz	a0, 0x736 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x82>
     6f4: 13 05 00 02  	li	a0, 32
     6f8: 63 74 ab 04  	bgeu	s6, a0, 0x740 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x8c>
     6fc: 01 45        	li	a0, 0
     6fe: 63 0e 0b 00  	beqz	s6, 0x71a <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x66>
     702: 93 05 f0 fb  	li	a1, -65
     706: 5a 86        	mv	a2, s6
     708: d6 86        	mv	a3, s5
     70a: 03 87 06 00  	lb	a4, 0(a3)
     70e: 85 06        	addi	a3, a3, 1
     710: 33 a7 e5 00  	slt	a4, a1, a4
     714: 7d 16        	addi	a2, a2, -1
     716: 3a 95        	add	a0, a0, a4
     718: 6d fa        	bnez	a2, 0x70a <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x56>
     71a: 2a 94        	add	s0, s0, a0
     71c: d6 8b        	mv	s7, s5
     71e: 03 35 0c 00  	ld	a0, 0(s8)
     722: 15 e9        	bnez	a0, 0x756 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xa2>
     724: 95 a0        	j	0x788 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xd4>
     726: 03 25 0c 03  	lw	a0, 48(s8)
     72a: 13 84 19 00  	addi	s0, s3, 1
     72e: 13 0a d0 02  	li	s4, 45
     732: 11 89        	andi	a0, a0, 4
     734: 61 f1        	bnez	a0, 0x6f4 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x40>
     736: 81 4b        	li	s7, 0
     738: 03 35 0c 00  	ld	a0, 0(s8)
     73c: 09 ed        	bnez	a0, 0x756 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xa2>
     73e: a9 a0        	j	0x788 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xd4>
     740: 56 85        	mv	a0, s5
     742: da 85        	mv	a1, s6
     744: 97 00 00 00  	auipc	ra, 0
     748: e7 80 c0 49  	jalr	1180(ra)
     74c: 2a 94        	add	s0, s0, a0
     74e: d6 8b        	mv	s7, s5
     750: 03 35 0c 00  	ld	a0, 0(s8)
     754: 15 c9        	beqz	a0, 0x788 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xd4>
     756: 83 34 8c 00  	ld	s1, 8(s8)
     75a: 63 77 94 02  	bgeu	s0, s1, 0x788 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xd4>
     75e: 03 45 0c 03  	lbu	a0, 48(s8)
     762: 21 89        	andi	a0, a0, 8
     764: 35 e1        	bnez	a0, 0x7c8 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x114>
     766: 83 45 8c 03  	lbu	a1, 56(s8)
     76a: 0d 46        	li	a2, 3
     76c: 05 45        	li	a0, 1
     76e: 63 83 c5 00  	beq	a1, a2, 0x774 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0xc0>
     772: 2e 85        	mv	a0, a1
     774: 93 75 35 00  	andi	a1, a0, 3
     778: 33 85 84 40  	sub	a0, s1, s0
     77c: d9 c9        	beqz	a1, 0x812 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x15e>
     77e: 05 46        	li	a2, 1
     780: 63 9c c5 08  	bne	a1, a2, 0x818 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x164>
     784: 81 4c        	li	s9, 0
     786: 71 a8        	j	0x822 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x16e>
     788: 62 85        	mv	a0, s8
     78a: d2 85        	mv	a1, s4
     78c: 5e 86        	mv	a2, s7
     78e: da 86        	mv	a3, s6
     790: 97 00 00 00  	auipc	ra, 0
     794: e7 80 00 1a  	jalr	416(ra)
     798: 85 4a        	li	s5, 1
     79a: 63 13 05 12  	bnez	a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     79e: 83 35 8c 02  	ld	a1, 40(s8)
     7a2: 03 35 0c 02  	ld	a0, 32(s8)
     7a6: 9c 6d        	ld	a5, 24(a1)
     7a8: ca 85        	mv	a1, s2
     7aa: 4e 86        	mv	a2, s3
     7ac: e6 60        	ld	ra, 88(sp)
     7ae: 46 64        	ld	s0, 80(sp)
     7b0: a6 64        	ld	s1, 72(sp)
     7b2: 06 69        	ld	s2, 64(sp)
     7b4: e2 79        	ld	s3, 56(sp)
     7b6: 42 7a        	ld	s4, 48(sp)
     7b8: a2 7a        	ld	s5, 40(sp)
     7ba: 02 7b        	ld	s6, 32(sp)
     7bc: e2 6b        	ld	s7, 24(sp)
     7be: 42 6c        	ld	s8, 16(sp)
     7c0: a2 6c        	ld	s9, 8(sp)
     7c2: 02 6d        	ld	s10, 0(sp)
     7c4: 25 61        	addi	sp, sp, 96
     7c6: 82 87        	jr	a5
     7c8: 83 2c 4c 03  	lw	s9, 52(s8)
     7cc: 13 05 00 03  	li	a0, 48
     7d0: 03 4d 8c 03  	lbu	s10, 56(s8)
     7d4: 23 2a ac 02  	sw	a0, 52(s8)
     7d8: 85 4a        	li	s5, 1
     7da: 23 0c 5c 03  	sb	s5, 56(s8)
     7de: 62 85        	mv	a0, s8
     7e0: d2 85        	mv	a1, s4
     7e2: 5e 86        	mv	a2, s7
     7e4: da 86        	mv	a3, s6
     7e6: 97 00 00 00  	auipc	ra, 0
     7ea: e7 80 a0 14  	jalr	330(ra)
     7ee: 69 e9        	bnez	a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     7f0: 83 45 8c 03  	lbu	a1, 56(s8)
     7f4: 0d 46        	li	a2, 3
     7f6: 05 45        	li	a0, 1
     7f8: 63 83 c5 00  	beq	a1, a2, 0x7fe <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x14a>
     7fc: 2e 85        	mv	a0, a1
     7fe: 93 75 35 00  	andi	a1, a0, 3
     802: 33 85 84 40  	sub	a0, s1, s0
     806: c9 c5        	beqz	a1, 0x890 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1dc>
     808: 05 46        	li	a2, 1
     80a: 63 96 c5 08  	bne	a1, a2, 0x896 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1e2>
     80e: 01 4a        	li	s4, 0
     810: 41 a8        	j	0x8a0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1ec>
     812: aa 8c        	mv	s9, a0
     814: 01 45        	li	a0, 0
     816: 31 a0        	j	0x822 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x16e>
     818: 93 05 15 00  	addi	a1, a0, 1
     81c: 05 81        	srli	a0, a0, 1
     81e: 93 dc 15 00  	srli	s9, a1, 1
     822: 83 3a 0c 02  	ld	s5, 32(s8)
     826: 83 34 8c 02  	ld	s1, 40(s8)
     82a: 03 2d 4c 03  	lw	s10, 52(s8)
     82e: 13 04 15 00  	addi	s0, a0, 1
     832: 7d 14        	addi	s0, s0, -1
     834: 19 c4        	beqz	s0, 0x842 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x18e>
     836: 90 70        	ld	a2, 32(s1)
     838: 56 85        	mv	a0, s5
     83a: ea 85        	mv	a1, s10
     83c: 02 96        	jalr	a2
     83e: 75 d9        	beqz	a0, 0x832 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x17e>
     840: bd a8        	j	0x8be <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20a>
     842: 37 05 11 00  	lui	a0, 272
     846: 85 4a        	li	s5, 1
     848: 63 0c ad 06  	beq	s10, a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     84c: 62 85        	mv	a0, s8
     84e: d2 85        	mv	a1, s4
     850: 5e 86        	mv	a2, s7
     852: da 86        	mv	a3, s6
     854: 97 00 00 00  	auipc	ra, 0
     858: e7 80 c0 0d  	jalr	220(ra)
     85c: 35 e1        	bnez	a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     85e: 83 35 8c 02  	ld	a1, 40(s8)
     862: 03 35 0c 02  	ld	a0, 32(s8)
     866: 94 6d        	ld	a3, 24(a1)
     868: ca 85        	mv	a1, s2
     86a: 4e 86        	mv	a2, s3
     86c: 82 96        	jalr	a3
     86e: 29 e9        	bnez	a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     870: 03 39 0c 02  	ld	s2, 32(s8)
     874: 83 34 8c 02  	ld	s1, 40(s8)
     878: 01 44        	li	s0, 0
     87a: 63 87 8c 0a  	beq	s9, s0, 0x928 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x274>
     87e: 90 70        	ld	a2, 32(s1)
     880: 05 04        	addi	s0, s0, 1
     882: 4a 85        	mv	a0, s2
     884: ea 85        	mv	a1, s10
     886: 02 96        	jalr	a2
     888: 6d d9        	beqz	a0, 0x87a <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1c6>
     88a: 13 05 f4 ff  	addi	a0, s0, -1
     88e: 71 a8        	j	0x92a <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x276>
     890: 2a 8a        	mv	s4, a0
     892: 01 45        	li	a0, 0
     894: 31 a0        	j	0x8a0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1ec>
     896: 93 05 15 00  	addi	a1, a0, 1
     89a: 05 81        	srli	a0, a0, 1
     89c: 13 da 15 00  	srli	s4, a1, 1
     8a0: 83 3a 0c 02  	ld	s5, 32(s8)
     8a4: 83 34 8c 02  	ld	s1, 40(s8)
     8a8: 03 2b 4c 03  	lw	s6, 52(s8)
     8ac: 13 04 15 00  	addi	s0, a0, 1
     8b0: 7d 14        	addi	s0, s0, -1
     8b2: 15 c4        	beqz	s0, 0x8de <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x22a>
     8b4: 90 70        	ld	a2, 32(s1)
     8b6: 56 85        	mv	a0, s5
     8b8: da 85        	mv	a1, s6
     8ba: 02 96        	jalr	a2
     8bc: 75 d9        	beqz	a0, 0x8b0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x1fc>
     8be: 85 4a        	li	s5, 1
     8c0: 56 85        	mv	a0, s5
     8c2: e6 60        	ld	ra, 88(sp)
     8c4: 46 64        	ld	s0, 80(sp)
     8c6: a6 64        	ld	s1, 72(sp)
     8c8: 06 69        	ld	s2, 64(sp)
     8ca: e2 79        	ld	s3, 56(sp)
     8cc: 42 7a        	ld	s4, 48(sp)
     8ce: a2 7a        	ld	s5, 40(sp)
     8d0: 02 7b        	ld	s6, 32(sp)
     8d2: e2 6b        	ld	s7, 24(sp)
     8d4: 42 6c        	ld	s8, 16(sp)
     8d6: a2 6c        	ld	s9, 8(sp)
     8d8: 02 6d        	ld	s10, 0(sp)
     8da: 25 61        	addi	sp, sp, 96
     8dc: 82 80        	ret
     8de: 37 05 11 00  	lui	a0, 272
     8e2: 85 4a        	li	s5, 1
     8e4: e3 0e ab fc  	beq	s6, a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     8e8: 83 35 8c 02  	ld	a1, 40(s8)
     8ec: 03 35 0c 02  	ld	a0, 32(s8)
     8f0: 94 6d        	ld	a3, 24(a1)
     8f2: ca 85        	mv	a1, s2
     8f4: 4e 86        	mv	a2, s3
     8f6: 82 96        	jalr	a3
     8f8: 61 f5        	bnez	a0, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     8fa: 03 39 0c 02  	ld	s2, 32(s8)
     8fe: 83 34 8c 02  	ld	s1, 40(s8)
     902: 01 44        	li	s0, 0
     904: 63 0c 8a 00  	beq	s4, s0, 0x91c <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x268>
     908: 90 70        	ld	a2, 32(s1)
     90a: 05 04        	addi	s0, s0, 1
     90c: 4a 85        	mv	a0, s2
     90e: da 85        	mv	a1, s6
     910: 02 96        	jalr	a2
     912: 6d d9        	beqz	a0, 0x904 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x250>
     914: 13 05 f4 ff  	addi	a0, s0, -1
     918: e3 64 45 fb  	bltu	a0, s4, 0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     91c: 81 4a        	li	s5, 0
     91e: 23 2a 9c 03  	sw	s9, 52(s8)
     922: 23 0c ac 03  	sb	s10, 56(s8)
     926: 69 bf        	j	0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>
     928: 66 85        	mv	a0, s9
     92a: b3 3a 95 01  	sltu	s5, a0, s9
     92e: 49 bf        	j	0x8c0 <_ZN4core3fmt9Formatter12pad_integral17hcdac551b7d93b770E+0x20c>

0000000000000930 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7777cb7311890bc3E>:
     930: 01 11        	addi	sp, sp, -32
     932: 06 ec        	sd	ra, 24(sp)
     934: 22 e8        	sd	s0, 16(sp)
     936: 26 e4        	sd	s1, 8(sp)
     938: 4a e0        	sd	s2, 0(sp)
     93a: 1b 87 05 00  	sext.w	a4, a1
     93e: b7 07 11 00  	lui	a5, 272
     942: 36 89        	mv	s2, a3
     944: b2 84        	mv	s1, a2
     946: 2a 84        	mv	s0, a0
     948: 63 09 f7 00  	beq	a4, a5, 0x95a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7777cb7311890bc3E+0x2a>
     94c: 10 74        	ld	a2, 40(s0)
     94e: 08 70        	ld	a0, 32(s0)
     950: 10 72        	ld	a2, 32(a2)
     952: 02 96        	jalr	a2
     954: aa 85        	mv	a1, a0
     956: 05 45        	li	a0, 1
     958: 91 ed        	bnez	a1, 0x974 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7777cb7311890bc3E+0x44>
     95a: 81 cc        	beqz	s1, 0x972 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h7777cb7311890bc3E+0x42>
     95c: 0c 74        	ld	a1, 40(s0)
     95e: 08 70        	ld	a0, 32(s0)
     960: 9c 6d        	ld	a5, 24(a1)
     962: a6 85        	mv	a1, s1
     964: 4a 86        	mv	a2, s2
     966: e2 60        	ld	ra, 24(sp)
     968: 42 64        	ld	s0, 16(sp)
     96a: a2 64        	ld	s1, 8(sp)
     96c: 02 69        	ld	s2, 0(sp)
     96e: 05 61        	addi	sp, sp, 32
     970: 82 87        	jr	a5
     972: 01 45        	li	a0, 0
     974: e2 60        	ld	ra, 24(sp)
     976: 42 64        	ld	s0, 16(sp)
     978: a2 64        	ld	s1, 8(sp)
     97a: 02 69        	ld	s2, 0(sp)
     97c: 05 61        	addi	sp, sp, 32
     97e: 82 80        	ret

0000000000000980 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E>:
     980: 5d 71        	addi	sp, sp, -80
     982: 86 e4        	sd	ra, 72(sp)
     984: a2 e0        	sd	s0, 64(sp)
     986: 26 fc        	sd	s1, 56(sp)
     988: 4a f8        	sd	s2, 48(sp)
     98a: 4e f4        	sd	s3, 40(sp)
     98c: 52 f0        	sd	s4, 32(sp)
     98e: 56 ec        	sd	s5, 24(sp)
     990: 5a e8        	sd	s6, 16(sp)
     992: 5e e4        	sd	s7, 8(sp)
     994: aa 84        	mv	s1, a0
     996: 03 33 05 00  	ld	t1, 0(a0)
     99a: 14 69        	ld	a3, 16(a0)
     99c: 13 07 f3 ff  	addi	a4, t1, -1
     9a0: 33 37 e0 00  	snez	a4, a4
     9a4: 93 87 f6 ff  	addi	a5, a3, -1
     9a8: b3 37 f0 00  	snez	a5, a5
     9ac: 7d 8f        	and	a4, a4, a5
     9ae: b2 89        	mv	s3, a2
     9b0: 2e 89        	mv	s2, a1
     9b2: 63 1b 07 16  	bnez	a4, 0xb28 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1a8>
     9b6: 85 45        	li	a1, 1
     9b8: 63 97 b6 10  	bne	a3, a1, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     9bc: 94 6c        	ld	a3, 24(s1)
     9be: 33 06 39 01  	add	a2, s2, s3
     9c2: 81 45        	li	a1, 0
     9c4: a5 ce        	beqz	a3, 0xa3c <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0xbc>
     9c6: 93 02 00 0e  	li	t0, 224
     9ca: 93 08 00 0f  	li	a7, 240
     9ce: 37 08 11 00  	lui	a6, 272
     9d2: 4a 84        	mv	s0, s2
     9d4: 11 a8        	j	0x9e8 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x68>
     9d6: 93 07 14 00  	addi	a5, s0, 1
     9da: 33 85 85 40  	sub	a0, a1, s0
     9de: fd 16        	addi	a3, a3, -1
     9e0: b3 05 f5 00  	add	a1, a0, a5
     9e4: 3e 84        	mv	s0, a5
     9e6: a1 ce        	beqz	a3, 0xa3e <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0xbe>
     9e8: 63 0f c4 0c  	beq	s0, a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     9ec: 83 07 04 00  	lb	a5, 0(s0)
     9f0: e3 d3 07 fe  	bgez	a5, 0x9d6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x56>
     9f4: 93 f7 f7 0f  	andi	a5, a5, 255
     9f8: 63 ec 57 02  	bltu	a5, t0, 0xa30 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0xb0>
     9fc: 63 ed 17 03  	bltu	a5, a7, 0xa36 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0xb6>
     a00: 03 47 14 00  	lbu	a4, 1(s0)
     a04: 03 45 24 00  	lbu	a0, 2(s0)
     a08: 13 77 f7 03  	andi	a4, a4, 63
     a0c: 13 75 f5 03  	andi	a0, a0, 63
     a10: 83 43 34 00  	lbu	t2, 3(s0)
     a14: f6 17        	slli	a5, a5, 61
     a16: ad 93        	srli	a5, a5, 43
     a18: 32 07        	slli	a4, a4, 12
     a1a: 1a 05        	slli	a0, a0, 6
     a1c: 59 8d        	or	a0, a0, a4
     a1e: 13 f7 f3 03  	andi	a4, t2, 63
     a22: 59 8d        	or	a0, a0, a4
     a24: 5d 8d        	or	a0, a0, a5
     a26: 63 00 05 0b  	beq	a0, a6, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     a2a: 93 07 44 00  	addi	a5, s0, 4
     a2e: 75 b7        	j	0x9da <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x5a>
     a30: 93 07 24 00  	addi	a5, s0, 2
     a34: 5d b7        	j	0x9da <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x5a>
     a36: 93 07 34 00  	addi	a5, s0, 3
     a3a: 45 b7        	j	0x9da <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x5a>
     a3c: ca 87        	mv	a5, s2
     a3e: 63 84 c7 08  	beq	a5, a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     a42: 03 86 07 00  	lb	a2, 0(a5)
     a46: 63 53 06 04  	bgez	a2, 0xa8c <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x10c>
     a4a: 13 76 f6 0f  	andi	a2, a2, 255
     a4e: 13 05 00 0e  	li	a0, 224
     a52: 63 6d a6 02  	bltu	a2, a0, 0xa8c <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x10c>
     a56: 13 05 00 0f  	li	a0, 240
     a5a: 63 69 a6 02  	bltu	a2, a0, 0xa8c <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x10c>
     a5e: 03 c5 17 00  	lbu	a0, 1(a5)
     a62: 83 c6 27 00  	lbu	a3, 2(a5)
     a66: 13 75 f5 03  	andi	a0, a0, 63
     a6a: 93 f6 f6 03  	andi	a3, a3, 63
     a6e: 03 c7 37 00  	lbu	a4, 3(a5)
     a72: 76 16        	slli	a2, a2, 61
     a74: 2d 92        	srli	a2, a2, 43
     a76: 32 05        	slli	a0, a0, 12
     a78: 9a 06        	slli	a3, a3, 6
     a7a: 55 8d        	or	a0, a0, a3
     a7c: 93 76 f7 03  	andi	a3, a4, 63
     a80: 55 8d        	or	a0, a0, a3
     a82: 51 8d        	or	a0, a0, a2
     a84: 37 06 11 00  	lui	a2, 272
     a88: 63 0f c5 02  	beq	a0, a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     a8c: 85 c1        	beqz	a1, 0xaac <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x12c>
     a8e: 63 f4 35 03  	bgeu	a1, s3, 0xab6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x136>
     a92: 33 05 b9 00  	add	a0, s2, a1
     a96: 03 05 05 00  	lb	a0, 0(a0)
     a9a: 13 06 00 fc  	li	a2, -64
     a9e: 63 47 c5 10  	blt	a0, a2, 0xbac <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x22c>
     aa2: 2e 86        	mv	a2, a1
     aa4: b2 85        	mv	a1, a2
     aa6: 4a 86        	mv	a2, s2
     aa8: 19 ce        	beqz	a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     aaa: 21 a8        	j	0xac2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x142>
     aac: 01 46        	li	a2, 0
     aae: b2 85        	mv	a1, a2
     ab0: 4a 86        	mv	a2, s2
     ab2: 11 ca        	beqz	a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     ab4: 39 a0        	j	0xac2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x142>
     ab6: 4e 86        	mv	a2, s3
     ab8: 63 9a 35 0f  	bne	a1, s3, 0xbac <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x22c>
     abc: b2 85        	mv	a1, a2
     abe: 4a 86        	mv	a2, s2
     ac0: 19 c2        	beqz	a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     ac2: ae 89        	mv	s3, a1
     ac4: 32 89        	mv	s2, a2
     ac6: 63 01 03 06  	beqz	t1, 0xb28 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1a8>
     aca: 80 64        	ld	s0, 8(s1)
     acc: 13 05 00 02  	li	a0, 32
     ad0: 63 f4 a9 04  	bgeu	s3, a0, 0xb18 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x198>
     ad4: 01 45        	li	a0, 0
     ad6: 63 8e 09 00  	beqz	s3, 0xaf2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x172>
     ada: 93 05 f0 fb  	li	a1, -65
     ade: 4e 86        	mv	a2, s3
     ae0: ca 86        	mv	a3, s2
     ae2: 03 87 06 00  	lb	a4, 0(a3)
     ae6: 85 06        	addi	a3, a3, 1
     ae8: 33 a7 e5 00  	slt	a4, a1, a4
     aec: 7d 16        	addi	a2, a2, -1
     aee: 3a 95        	add	a0, a0, a4
     af0: 6d fa        	bnez	a2, 0xae2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x162>
     af2: 63 7b 85 02  	bgeu	a0, s0, 0xb28 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1a8>
     af6: 83 c5 84 03  	lbu	a1, 56(s1)
     afa: 8d 46        	li	a3, 3
     afc: 01 46        	li	a2, 0
     afe: 63 83 d5 00  	beq	a1, a3, 0xb04 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x184>
     b02: 2e 86        	mv	a2, a1
     b04: 93 75 36 00  	andi	a1, a2, 3
     b08: 33 05 a4 40  	sub	a0, s0, a0
     b0c: 95 cd        	beqz	a1, 0xb48 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1c8>
     b0e: 05 46        	li	a2, 1
     b10: 63 9f c5 02  	bne	a1, a2, 0xb4e <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1ce>
     b14: 81 4a        	li	s5, 0
     b16: 89 a0        	j	0xb58 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1d8>
     b18: 4a 85        	mv	a0, s2
     b1a: ce 85        	mv	a1, s3
     b1c: 97 00 00 00  	auipc	ra, 0
     b20: e7 80 40 0c  	jalr	196(ra)
     b24: e3 69 85 fc  	bltu	a0, s0, 0xaf6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x176>
     b28: 8c 74        	ld	a1, 40(s1)
     b2a: 88 70        	ld	a0, 32(s1)
     b2c: 9c 6d        	ld	a5, 24(a1)
     b2e: ca 85        	mv	a1, s2
     b30: 4e 86        	mv	a2, s3
     b32: a6 60        	ld	ra, 72(sp)
     b34: 06 64        	ld	s0, 64(sp)
     b36: e2 74        	ld	s1, 56(sp)
     b38: 42 79        	ld	s2, 48(sp)
     b3a: a2 79        	ld	s3, 40(sp)
     b3c: 02 7a        	ld	s4, 32(sp)
     b3e: e2 6a        	ld	s5, 24(sp)
     b40: 42 6b        	ld	s6, 16(sp)
     b42: a2 6b        	ld	s7, 8(sp)
     b44: 61 61        	addi	sp, sp, 80
     b46: 82 87        	jr	a5
     b48: aa 8a        	mv	s5, a0
     b4a: 01 45        	li	a0, 0
     b4c: 31 a0        	j	0xb58 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1d8>
     b4e: 93 05 15 00  	addi	a1, a0, 1
     b52: 05 81        	srli	a0, a0, 1
     b54: 93 da 15 00  	srli	s5, a1, 1
     b58: 03 bb 04 02  	ld	s6, 32(s1)
     b5c: 83 bb 84 02  	ld	s7, 40(s1)
     b60: c4 58        	lw	s1, 52(s1)
     b62: 13 04 15 00  	addi	s0, a0, 1
     b66: 7d 14        	addi	s0, s0, -1
     b68: 09 c8        	beqz	s0, 0xb7a <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1fa>
     b6a: 03 b6 0b 02  	ld	a2, 32(s7)
     b6e: 5a 85        	mv	a0, s6
     b70: a6 85        	mv	a1, s1
     b72: 02 96        	jalr	a2
     b74: 6d d9        	beqz	a0, 0xb66 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x1e6>
     b76: 05 4a        	li	s4, 1
     b78: 81 a0        	j	0xbb8 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x238>
     b7a: 37 05 11 00  	lui	a0, 272
     b7e: 05 4a        	li	s4, 1
     b80: 63 8c a4 02  	beq	s1, a0, 0xbb8 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x238>
     b84: 83 b6 8b 01  	ld	a3, 24(s7)
     b88: 5a 85        	mv	a0, s6
     b8a: ca 85        	mv	a1, s2
     b8c: 4e 86        	mv	a2, s3
     b8e: 82 96        	jalr	a3
     b90: 05 e5        	bnez	a0, 0xbb8 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x238>
     b92: 01 44        	li	s0, 0
     b94: 63 8f 8a 00  	beq	s5, s0, 0xbb2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x232>
     b98: 03 b6 0b 02  	ld	a2, 32(s7)
     b9c: 05 04        	addi	s0, s0, 1
     b9e: 5a 85        	mv	a0, s6
     ba0: a6 85        	mv	a1, s1
     ba2: 02 96        	jalr	a2
     ba4: 65 d9        	beqz	a0, 0xb94 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x214>
     ba6: 13 05 f4 ff  	addi	a0, s0, -1
     baa: 29 a0        	j	0xbb4 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x234>
     bac: 01 46        	li	a2, 0
     bae: 01 de        	beqz	a2, 0xac6 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x146>
     bb0: 09 bf        	j	0xac2 <_ZN4core3fmt9Formatter3pad17h774baf72f2ffc077E+0x142>
     bb2: 56 85        	mv	a0, s5
     bb4: 33 3a 55 01  	sltu	s4, a0, s5
     bb8: 52 85        	mv	a0, s4
     bba: a6 60        	ld	ra, 72(sp)
     bbc: 06 64        	ld	s0, 64(sp)
     bbe: e2 74        	ld	s1, 56(sp)
     bc0: 42 79        	ld	s2, 48(sp)
     bc2: a2 79        	ld	s3, 40(sp)
     bc4: 02 7a        	ld	s4, 32(sp)
     bc6: e2 6a        	ld	s5, 24(sp)
     bc8: 42 6b        	ld	s6, 16(sp)
     bca: a2 6b        	ld	s7, 8(sp)
     bcc: 61 61        	addi	sp, sp, 80
     bce: 82 80        	ret

0000000000000bd0 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd677dbeaf8ccd015E>:
     bd0: ae 86        	mv	a3, a1
     bd2: aa 85        	mv	a1, a0
     bd4: 32 85        	mv	a0, a2
     bd6: 36 86        	mv	a2, a3
     bd8: 17 03 00 00  	auipc	t1, 0
     bdc: 67 00 83 da  	jr	-600(t1)

0000000000000be0 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E>:
     be0: 2a 86        	mv	a2, a0
     be2: 1d 05        	addi	a0, a0, 7
     be4: 61 99        	andi	a0, a0, -8
     be6: b3 08 c5 40  	sub	a7, a0, a2
     bea: 63 eb 15 01  	bltu	a1, a7, 0xc00 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x20>
     bee: 33 88 15 41  	sub	a6, a1, a7
     bf2: 93 36 88 00  	sltiu	a3, a6, 8
     bf6: 21 47        	li	a4, 8
     bf8: 33 37 17 01  	sltu	a4, a4, a7
     bfc: d9 8e        	or	a3, a3, a4
     bfe: 91 ce        	beqz	a3, 0xc1a <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x3a>
     c00: 01 45        	li	a0, 0
     c02: 99 c9        	beqz	a1, 0xc18 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x38>
     c04: 93 06 f0 fb  	li	a3, -65
     c08: 03 07 06 00  	lb	a4, 0(a2)
     c0c: 05 06        	addi	a2, a2, 1
     c0e: 33 a7 e6 00  	slt	a4, a3, a4
     c12: fd 15        	addi	a1, a1, -1
     c14: 3a 95        	add	a0, a0, a4
     c16: ed f9        	bnez	a1, 0xc08 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x28>
     c18: 82 80        	ret
     c1a: 93 76 78 00  	andi	a3, a6, 7
     c1e: 01 47        	li	a4, 0
     c20: 63 8f 08 00  	beqz	a7, 0xc3e <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x5e>
     c24: 33 05 a6 40  	sub	a0, a2, a0
     c28: 93 02 f0 fb  	li	t0, -65
     c2c: b2 87        	mv	a5, a2
     c2e: 83 85 07 00  	lb	a1, 0(a5)
     c32: 85 07        	addi	a5, a5, 1
     c34: b3 a5 b2 00  	slt	a1, t0, a1
     c38: 05 05        	addi	a0, a0, 1
     c3a: 2e 97        	add	a4, a4, a1
     c3c: 6d f9        	bnez	a0, 0xc2e <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x4e>
     c3e: b3 02 16 01  	add	t0, a2, a7
     c42: 81 45        	li	a1, 0
     c44: 99 ce        	beqz	a3, 0xc62 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x82>
     c46: 13 75 88 ff  	andi	a0, a6, -8
     c4a: 33 86 a2 00  	add	a2, t0, a0
     c4e: 13 05 f0 fb  	li	a0, -65
     c52: 83 07 06 00  	lb	a5, 0(a2)
     c56: 05 06        	addi	a2, a2, 1
     c58: b3 27 f5 00  	slt	a5, a0, a5
     c5c: fd 16        	addi	a3, a3, -1
     c5e: be 95        	add	a1, a1, a5
     c60: ed fa        	bnez	a3, 0xc52 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x72>
     c62: 13 56 38 00  	srli	a2, a6, 3

0000000000000c66 <.LBB276_25>:
     c66: 17 25 00 00  	auipc	a0, 2
     c6a: 13 05 25 57  	addi	a0, a0, 1394
     c6e: 83 3e 05 00  	ld	t4, 0(a0)

0000000000000c72 <.LBB276_26>:
     c72: 17 25 00 00  	auipc	a0, 2
     c76: 13 05 e5 56  	addi	a0, a0, 1390
     c7a: 83 38 05 00  	ld	a7, 0(a0)
     c7e: 37 15 00 10  	lui	a0, 65537
     c82: 12 05        	slli	a0, a0, 4
     c84: 05 05        	addi	a0, a0, 1
     c86: 42 05        	slli	a0, a0, 16
     c88: 13 08 15 00  	addi	a6, a0, 1
     c8c: 33 85 e5 00  	add	a0, a1, a4
     c90: 25 a0        	j	0xcb8 <.LBB276_26+0x46>
     c92: 93 95 33 00  	slli	a1, t2, 3
     c96: ae 92        	add	t0, t0, a1
     c98: 33 06 73 40  	sub	a2, t1, t2
     c9c: 93 f3 33 00  	andi	t2, t2, 3
     ca0: b3 f5 17 01  	and	a1, a5, a7
     ca4: a1 83        	srli	a5, a5, 8
     ca6: b3 f7 17 01  	and	a5, a5, a7
     caa: be 95        	add	a1, a1, a5
     cac: b3 85 05 03  	mul	a1, a1, a6
     cb0: c1 91        	srli	a1, a1, 48
     cb2: 2e 95        	add	a0, a0, a1
     cb4: 63 9f 03 06  	bnez	t2, 0xd32 <.LBB276_26+0xc0>
     cb8: 25 d2        	beqz	a2, 0xc18 <_ZN4core3str5count14do_count_chars17hd57045ad0c285889E+0x38>
     cba: 32 83        	mv	t1, a2
     cbc: 93 05 00 0c  	li	a1, 192
     cc0: b2 83        	mv	t2, a2
     cc2: 63 64 b6 00  	bltu	a2, a1, 0xcca <.LBB276_26+0x58>
     cc6: 93 03 00 0c  	li	t2, 192
     cca: 93 f5 c3 0f  	andi	a1, t2, 252
     cce: 8e 05        	slli	a1, a1, 3
     cd0: 33 8e b2 00  	add	t3, t0, a1
     cd4: 81 47        	li	a5, 0
     cd6: d5 dd        	beqz	a1, 0xc92 <.LBB276_26+0x20>
     cd8: 96 85        	mv	a1, t0
     cda: 90 61        	ld	a2, 0(a1)
     cdc: 13 47 f6 ff  	not	a4, a2
     ce0: 1d 83        	srli	a4, a4, 7
     ce2: 19 82        	srli	a2, a2, 6
     ce4: 94 65        	ld	a3, 8(a1)
     ce6: 59 8e        	or	a2, a2, a4
     ce8: 33 76 d6 01  	and	a2, a2, t4
     cec: 3e 96        	add	a2, a2, a5
     cee: 13 c7 f6 ff  	not	a4, a3
     cf2: 1d 83        	srli	a4, a4, 7
     cf4: 99 82        	srli	a3, a3, 6
     cf6: 9c 69        	ld	a5, 16(a1)
     cf8: d9 8e        	or	a3, a3, a4
     cfa: b3 f6 d6 01  	and	a3, a3, t4
     cfe: 36 96        	add	a2, a2, a3
     d00: 93 c6 f7 ff  	not	a3, a5
     d04: 9d 82        	srli	a3, a3, 7
     d06: 13 d7 67 00  	srli	a4, a5, 6
     d0a: 9c 6d        	ld	a5, 24(a1)
     d0c: d9 8e        	or	a3, a3, a4
     d0e: b3 f6 d6 01  	and	a3, a3, t4
     d12: 36 96        	add	a2, a2, a3
     d14: 93 c6 f7 ff  	not	a3, a5
     d18: 9d 82        	srli	a3, a3, 7
     d1a: 13 d7 67 00  	srli	a4, a5, 6
     d1e: d9 8e        	or	a3, a3, a4
     d20: b3 f6 d6 01  	and	a3, a3, t4
     d24: 93 85 05 02  	addi	a1, a1, 32
     d28: b3 87 c6 00  	add	a5, a3, a2
     d2c: e3 17 be fa  	bne	t3, a1, 0xcda <.LBB276_26+0x68>
     d30: 8d b7        	j	0xc92 <.LBB276_26+0x20>
     d32: 93 05 00 0c  	li	a1, 192
     d36: 63 64 b3 00  	bltu	t1, a1, 0xd3e <.LBB276_26+0xcc>
     d3a: 13 03 00 0c  	li	t1, 192
     d3e: 81 45        	li	a1, 0
     d40: 13 76 33 00  	andi	a2, t1, 3
     d44: 0e 06        	slli	a2, a2, 3
     d46: 83 36 0e 00  	ld	a3, 0(t3)
     d4a: 21 0e        	addi	t3, t3, 8
     d4c: 13 c7 f6 ff  	not	a4, a3
     d50: 1d 83        	srli	a4, a4, 7
     d52: 99 82        	srli	a3, a3, 6
     d54: d9 8e        	or	a3, a3, a4
     d56: b3 f6 d6 01  	and	a3, a3, t4
     d5a: 61 16        	addi	a2, a2, -8
     d5c: b6 95        	add	a1, a1, a3
     d5e: 65 f6        	bnez	a2, 0xd46 <.LBB276_26+0xd4>
     d60: 33 f6 15 01  	and	a2, a1, a7
     d64: a1 81        	srli	a1, a1, 8
     d66: b3 f5 15 01  	and	a1, a1, a7
     d6a: b2 95        	add	a1, a1, a2
     d6c: b3 85 05 03  	mul	a1, a1, a6
     d70: c1 91        	srli	a1, a1, 48
     d72: 2e 95        	add	a0, a0, a1
     d74: 82 80        	ret

0000000000000d76 <_ZN4core3fmt3num3imp7fmt_u6417h5e0a68673bc51c93E>:
     d76: 39 71        	addi	sp, sp, -64
     d78: 06 fc        	sd	ra, 56(sp)
     d7a: 22 f8        	sd	s0, 48(sp)
     d7c: 26 f4        	sd	s1, 40(sp)
     d7e: 32 88        	mv	a6, a2
     d80: 93 56 45 00  	srli	a3, a0, 4
     d84: 13 07 70 02  	li	a4, 39
     d88: 93 07 10 27  	li	a5, 625

0000000000000d8c <.LBB543_10>:
     d8c: 17 1e 00 00  	auipc	t3, 1
     d90: 13 0e ce 41  	addi	t3, t3, 1052
     d94: 63 f3 f6 02  	bgeu	a3, a5, 0xdba <.LBB543_10+0x2e>
     d98: 93 06 30 06  	li	a3, 99
     d9c: 63 e9 a6 0a  	bltu	a3, a0, 0xe4e <.LBB543_11+0x92>
     da0: 29 46        	li	a2, 10
     da2: 63 77 c5 0e  	bgeu	a0, a2, 0xe90 <.LBB543_11+0xd4>
     da6: 93 06 f7 ff  	addi	a3, a4, -1
     daa: 13 06 11 00  	addi	a2, sp, 1
     dae: 36 96        	add	a2, a2, a3
     db0: 1b 05 05 03  	addiw	a0, a0, 48
     db4: 23 00 a6 00  	sb	a0, 0(a2)
     db8: dd a8        	j	0xeae <.LBB543_11+0xf2>
     dba: 01 47        	li	a4, 0

0000000000000dbc <.LBB543_11>:
     dbc: 97 26 00 00  	auipc	a3, 2
     dc0: 93 86 c6 48  	addi	a3, a3, 1164
     dc4: 83 b8 06 00  	ld	a7, 0(a3)
     dc8: 89 66        	lui	a3, 2
     dca: 9b 83 06 71  	addiw	t2, a3, 1808
     dce: 85 66        	lui	a3, 1
     dd0: 9b 8e b6 47  	addiw	t4, a3, 1147
     dd4: 93 02 40 06  	li	t0, 100
     dd8: 13 03 11 00  	addi	t1, sp, 1
     ddc: b7 e6 f5 05  	lui	a3, 24414
     de0: 1b 8f f6 0f  	addiw	t5, a3, 255
     de4: 2a 86        	mv	a2, a0
     de6: 33 35 15 03  	mulhu	a0, a0, a7
     dea: 2d 81        	srli	a0, a0, 11
     dec: bb 07 75 02  	mulw	a5, a0, t2
     df0: bb 07 f6 40  	subw	a5, a2, a5
     df4: 93 96 07 03  	slli	a3, a5, 48
     df8: c9 92        	srli	a3, a3, 50
     dfa: b3 86 d6 03  	mul	a3, a3, t4
     dfe: c5 82        	srli	a3, a3, 17
     e00: 93 9f 16 00  	slli	t6, a3, 1
     e04: bb 86 56 02  	mulw	a3, a3, t0
     e08: bb 86 d7 40  	subw	a3, a5, a3
     e0c: c6 16        	slli	a3, a3, 49
     e0e: 13 d4 06 03  	srli	s0, a3, 48
     e12: b3 87 cf 01  	add	a5, t6, t3
     e16: b3 06 e3 00  	add	a3, t1, a4
     e1a: 83 cf 07 00  	lbu	t6, 0(a5)
     e1e: 83 87 17 00  	lb	a5, 1(a5)
     e22: 72 94        	add	s0, s0, t3
     e24: 83 04 14 00  	lb	s1, 1(s0)
     e28: 03 44 04 00  	lbu	s0, 0(s0)
     e2c: 23 82 f6 02  	sb	a5, 36(a3)
     e30: a3 81 f6 03  	sb	t6, 35(a3)
     e34: 23 83 96 02  	sb	s1, 38(a3)
     e38: a3 82 86 02  	sb	s0, 37(a3)
     e3c: 71 17        	addi	a4, a4, -4
     e3e: e3 63 cf fa  	bltu	t5, a2, 0xde4 <.LBB543_11+0x28>
     e42: 13 07 77 02  	addi	a4, a4, 39
     e46: 93 06 30 06  	li	a3, 99
     e4a: e3 fb a6 f4  	bgeu	a3, a0, 0xda0 <.LBB543_10+0x14>
     e4e: 13 16 05 03  	slli	a2, a0, 48
     e52: 49 92        	srli	a2, a2, 50
     e54: 85 66        	lui	a3, 1
     e56: 9b 86 b6 47  	addiw	a3, a3, 1147
     e5a: 33 06 d6 02  	mul	a2, a2, a3
     e5e: 45 82        	srli	a2, a2, 17
     e60: 93 06 40 06  	li	a3, 100
     e64: bb 06 d6 02  	mulw	a3, a2, a3
     e68: 15 9d        	subw	a0, a0, a3
     e6a: 46 15        	slli	a0, a0, 49
     e6c: 41 91        	srli	a0, a0, 48
     e6e: 79 17        	addi	a4, a4, -2
     e70: 72 95        	add	a0, a0, t3
     e72: 83 06 15 00  	lb	a3, 1(a0)
     e76: 03 45 05 00  	lbu	a0, 0(a0)
     e7a: 93 07 11 00  	addi	a5, sp, 1
     e7e: ba 97        	add	a5, a5, a4
     e80: a3 80 d7 00  	sb	a3, 1(a5)
     e84: 23 80 a7 00  	sb	a0, 0(a5)
     e88: 32 85        	mv	a0, a2
     e8a: 29 46        	li	a2, 10
     e8c: e3 6d c5 f0  	bltu	a0, a2, 0xda6 <.LBB543_10+0x1a>
     e90: 06 05        	slli	a0, a0, 1
     e92: 93 06 e7 ff  	addi	a3, a4, -2
     e96: 72 95        	add	a0, a0, t3
     e98: 03 06 15 00  	lb	a2, 1(a0)
     e9c: 03 45 05 00  	lbu	a0, 0(a0)
     ea0: 13 07 11 00  	addi	a4, sp, 1
     ea4: 36 97        	add	a4, a4, a3
     ea6: a3 00 c7 00  	sb	a2, 1(a4)
     eaa: 23 00 a7 00  	sb	a0, 0(a4)
     eae: 13 05 11 00  	addi	a0, sp, 1
     eb2: 33 07 d5 00  	add	a4, a0, a3
     eb6: 13 05 70 02  	li	a0, 39
     eba: b3 07 d5 40  	sub	a5, a0, a3

0000000000000ebe <.LBB543_12>:
     ebe: 17 16 00 00  	auipc	a2, 1
     ec2: 13 06 26 2a  	addi	a2, a2, 674
     ec6: 42 85        	mv	a0, a6
     ec8: 81 46        	li	a3, 0
     eca: 97 f0 ff ff  	auipc	ra, 1048575
     ece: e7 80 a0 7e  	jalr	2026(ra)
     ed2: e2 70        	ld	ra, 56(sp)
     ed4: 42 74        	ld	s0, 48(sp)
     ed6: a2 74        	ld	s1, 40(sp)
     ed8: 21 61        	addi	sp, sp, 64
     eda: 82 80        	ret

0000000000000edc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h629811fb06cc9421E>:
     edc: 03 65 05 00  	lwu	a0, 0(a0)
     ee0: 2e 86        	mv	a2, a1
     ee2: 9b 06 05 00  	sext.w	a3, a0
     ee6: fd 55        	li	a1, -1
     ee8: b3 a5 d5 00  	slt	a1, a1, a3
     eec: 63 d4 06 00  	bgez	a3, 0xef4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h629811fb06cc9421E+0x18>
     ef0: 33 05 d0 40  	neg	a0, a3
     ef4: 17 03 00 00  	auipc	t1, 0
     ef8: 67 00 23 e8  	jr	-382(t1)

0000000000000efc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2cede4cfd0806b52E>:
     efc: 03 65 05 00  	lwu	a0, 0(a0)
     f00: 2e 86        	mv	a2, a1
     f02: 85 45        	li	a1, 1
     f04: 17 03 00 00  	auipc	t1, 0
     f08: 67 00 23 e7  	jr	-398(t1)

0000000000000f0c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17ha7da3f83b0a295bbE>:
     f0c: 90 75        	ld	a2, 40(a1)
     f0e: 88 71        	ld	a0, 32(a1)
     f10: 1c 6e        	ld	a5, 24(a2)

0000000000000f12 <.LBB575_1>:
     f12: 97 15 00 00  	auipc	a1, 1
     f16: 93 85 e5 35  	addi	a1, a1, 862
     f1a: 15 46        	li	a2, 5
     f1c: 82 87        	jr	a5

0000000000000f1e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf12cc52608b51daeE>:
     f1e: 10 65        	ld	a2, 8(a0)
     f20: 08 61        	ld	a0, 0(a0)
     f22: 1c 6e        	ld	a5, 24(a2)
     f24: 82 87        	jr	a5

0000000000000f26 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e30ce7f47bbb8E>:
     f26: 14 61        	ld	a3, 0(a0)
     f28: 10 65        	ld	a2, 8(a0)
     f2a: 2e 85        	mv	a0, a1
     f2c: b6 85        	mv	a1, a3
     f2e: 17 03 00 00  	auipc	t1, 0
     f32: 67 00 23 a5  	jr	-1454(t1)

0000000000000f36 <rust_begin_unwind>:
     f36: 71 71        	addi	sp, sp, -176
     f38: 06 f5        	sd	ra, 168(sp)
     f3a: 22 f1        	sd	s0, 160(sp)
     f3c: 26 ed        	sd	s1, 152(sp)
     f3e: 00 19        	addi	s0, sp, 176
     f40: aa 84        	mv	s1, a0
     f42: 97 f0 ff ff  	auipc	ra, 1048575
     f46: e7 80 60 4f  	jalr	1270(ra)
     f4a: 63 07 05 12  	beqz	a0, 0x1078 <.LBB0_18>
     f4e: 23 3c a4 f4  	sd	a0, -168(s0)
     f52: 26 85        	mv	a0, s1
     f54: 97 f0 ff ff  	auipc	ra, 1048575
     f58: e7 80 80 4e  	jalr	1256(ra)
     f5c: 41 cd        	beqz	a0, 0xff4 <.LBB0_11+0x1c>
     f5e: 0c 61        	ld	a1, 0(a0)
     f60: 10 65        	ld	a2, 8(a0)
     f62: 23 38 b4 f8  	sd	a1, -112(s0)
     f66: 23 3c c4 f8  	sd	a2, -104(s0)
     f6a: 08 49        	lw	a0, 16(a0)
     f6c: 23 22 a4 fa  	sw	a0, -92(s0)
     f70: 13 05 04 f9  	addi	a0, s0, -112
     f74: 23 30 a4 f6  	sd	a0, -160(s0)

0000000000000f78 <.LBB0_7>:
     f78: 17 05 00 00  	auipc	a0, 0
     f7c: 13 05 65 13  	addi	a0, a0, 310
     f80: 23 34 a4 f6  	sd	a0, -152(s0)
     f84: 13 05 44 fa  	addi	a0, s0, -92
     f88: 23 38 a4 f6  	sd	a0, -144(s0)

0000000000000f8c <.LBB0_8>:
     f8c: 17 05 00 00  	auipc	a0, 0
     f90: 13 05 05 f7  	addi	a0, a0, -144
     f94: 23 3c a4 f6  	sd	a0, -136(s0)
     f98: 13 05 84 f5  	addi	a0, s0, -168
     f9c: 23 30 a4 f8  	sd	a0, -128(s0)

0000000000000fa0 <.LBB0_9>:
     fa0: 17 05 00 00  	auipc	a0, 0
     fa4: 13 05 65 0f  	addi	a0, a0, 246
     fa8: 23 34 a4 f8  	sd	a0, -120(s0)
     fac: 13 05 04 fe  	addi	a0, s0, -32
     fb0: 23 34 a4 fa  	sd	a0, -88(s0)

0000000000000fb4 <.LBB0_10>:
     fb4: 17 15 00 00  	auipc	a0, 1
     fb8: 13 05 c5 2f  	addi	a0, a0, 764
     fbc: 23 38 a4 fa  	sd	a0, -80(s0)
     fc0: 11 45        	li	a0, 4
     fc2: 23 3c a4 fa  	sd	a0, -72(s0)
     fc6: 23 30 04 fc  	sd	zero, -64(s0)
     fca: 13 05 04 f6  	addi	a0, s0, -160
     fce: 23 38 a4 fc  	sd	a0, -48(s0)
     fd2: 0d 45        	li	a0, 3
     fd4: 23 3c a4 fc  	sd	a0, -40(s0)

0000000000000fd8 <.LBB0_11>:
     fd8: 97 15 00 00  	auipc	a1, 1
     fdc: 93 85 85 08  	addi	a1, a1, 136
     fe0: 13 05 84 fa  	addi	a0, s0, -88
     fe4: 13 06 04 fb  	addi	a2, s0, -80
     fe8: 97 f0 ff ff  	auipc	ra, 1048575
     fec: e7 80 00 53  	jalr	1328(ra)
     ff0: 39 ed        	bnez	a0, 0x104e <.LBB0_15>
     ff2: 01 a0        	j	0xff2 <.LBB0_11+0x1a>
     ff4: 13 05 84 f5  	addi	a0, s0, -168
     ff8: 23 30 a4 f6  	sd	a0, -160(s0)

0000000000000ffc <.LBB0_12>:
     ffc: 17 05 00 00  	auipc	a0, 0
    1000: 13 05 a5 09  	addi	a0, a0, 154
    1004: 23 34 a4 f6  	sd	a0, -152(s0)
    1008: 13 05 04 fe  	addi	a0, s0, -32
    100c: 23 38 a4 f8  	sd	a0, -112(s0)

0000000000001010 <.LBB0_13>:
    1010: 17 15 00 00  	auipc	a0, 1
    1014: 13 05 05 27  	addi	a0, a0, 624
    1018: 23 38 a4 fa  	sd	a0, -80(s0)
    101c: 09 45        	li	a0, 2
    101e: 23 3c a4 fa  	sd	a0, -72(s0)
    1022: 23 30 04 fc  	sd	zero, -64(s0)
    1026: 13 05 04 f6  	addi	a0, s0, -160
    102a: 23 38 a4 fc  	sd	a0, -48(s0)
    102e: 05 45        	li	a0, 1
    1030: 23 3c a4 fc  	sd	a0, -40(s0)

0000000000001034 <.LBB0_14>:
    1034: 97 15 00 00  	auipc	a1, 1
    1038: 93 85 c5 02  	addi	a1, a1, 44
    103c: 13 05 04 f9  	addi	a0, s0, -112
    1040: 13 06 04 fb  	addi	a2, s0, -80
    1044: 97 f0 ff ff  	auipc	ra, 1048575
    1048: e7 80 40 4d  	jalr	1236(ra)
    104c: 5d d1        	beqz	a0, 0xff2 <.LBB0_11+0x1a>

000000000000104e <.LBB0_15>:
    104e: 17 15 00 00  	auipc	a0, 1
    1052: 13 05 25 04  	addi	a0, a0, 66

0000000000001056 <.LBB0_16>:
    1056: 97 16 00 00  	auipc	a3, 1
    105a: 93 86 a6 06  	addi	a3, a3, 106

000000000000105e <.LBB0_17>:
    105e: 17 17 00 00  	auipc	a4, 1
    1062: 13 07 27 09  	addi	a4, a4, 146
    1066: 93 05 b0 02  	li	a1, 43
    106a: 13 06 04 fe  	addi	a2, s0, -32
    106e: 97 f0 ff ff  	auipc	ra, 1048575
    1072: e7 80 c0 42  	jalr	1068(ra)
    1076: 00 00        	unimp	

0000000000001078 <.LBB0_18>:
    1078: 17 15 00 00  	auipc	a0, 1
    107c: 13 05 85 27  	addi	a0, a0, 632

0000000000001080 <.LBB0_19>:
    1080: 17 16 00 00  	auipc	a2, 1
    1084: 13 06 06 2b  	addi	a2, a2, 688
    1088: 93 05 b0 02  	li	a1, 43
    108c: 97 f0 ff ff  	auipc	ra, 1048575
    1090: e7 80 40 3b  	jalr	948(ra)
    1094: 00 00        	unimp	

0000000000001096 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7f7fe17fb78bd388E>:
    1096: 41 11        	addi	sp, sp, -16
    1098: 06 e4        	sd	ra, 8(sp)
    109a: 22 e0        	sd	s0, 0(sp)
    109c: 00 08        	addi	s0, sp, 16
    109e: 08 61        	ld	a0, 0(a0)
    10a0: a2 60        	ld	ra, 8(sp)
    10a2: 02 64        	ld	s0, 0(sp)
    10a4: 41 01        	addi	sp, sp, 16
    10a6: 17 f3 ff ff  	auipc	t1, 1048575
    10aa: 67 00 03 44  	jr	1088(t1)

00000000000010ae <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h99d9d4a702b86812E>:
    10ae: 41 11        	addi	sp, sp, -16
    10b0: 06 e4        	sd	ra, 8(sp)
    10b2: 22 e0        	sd	s0, 0(sp)
    10b4: 00 08        	addi	s0, sp, 16
    10b6: 10 61        	ld	a2, 0(a0)
    10b8: 14 65        	ld	a3, 8(a0)
    10ba: 2e 87        	mv	a4, a1
    10bc: 32 85        	mv	a0, a2
    10be: b6 85        	mv	a1, a3
    10c0: 3a 86        	mv	a2, a4
    10c2: a2 60        	ld	ra, 8(sp)
    10c4: 02 64        	ld	s0, 0(sp)
    10c6: 41 01        	addi	sp, sp, 16
    10c8: 17 03 00 00  	auipc	t1, 0
    10cc: 67 00 83 b0  	jr	-1272(t1)
