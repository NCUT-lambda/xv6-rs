
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 51 01 00  	auipc	sp, 21
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 10 00 00  	auipc	ra, 1
8020000c: e7 80 e0 40  	jalr	1038(ra)
		...

0000000080201000 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80201000: 71 71        	addi	sp, sp, -176
80201002: 06 f5        	sd	ra, 168(sp)
80201004: 22 f1        	sd	s0, 160(sp)
80201006: 26 ed        	sd	s1, 152(sp)
80201008: 00 19        	addi	s0, sp, 176
8020100a: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
8020100c: 97 00 00 00  	auipc	ra, 0
80201010: e7 80 00 60  	jalr	1536(ra)
80201014: 05 e1        	bnez	a0, 0x80201034 <.LBB0_8+0x16>

0000000080201016 <.LBB0_7>:
80201016: 17 25 00 00  	auipc	a0, 2
8020101a: 13 05 a5 06  	addi	a0, a0, 106

000000008020101e <.LBB0_8>:
8020101e: 17 26 00 00  	auipc	a2, 2
80201022: 13 06 26 0a  	addi	a2, a2, 162
80201026: 93 05 b0 02  	li	a1, 43
8020102a: 97 00 00 00  	auipc	ra, 0
8020102e: e7 80 80 61  	jalr	1560(ra)
80201032: 00 00        	unimp	
80201034: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80201038: 26 85        	mv	a0, s1
8020103a: 97 00 00 00  	auipc	ra, 0
8020103e: e7 80 60 5d  	jalr	1494(ra)
80201042: 3d e1        	bnez	a0, 0x802010a8 <.LBB0_11+0x24>
80201044: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80201048: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020104c <.LBB0_9>:
8020104c: 17 05 00 00  	auipc	a0, 0
80201050: 13 05 c5 48  	addi	a0, a0, 1164
80201054: 23 34 a4 f6  	sd	a0, -152(s0)
80201058: 13 05 04 fe  	addi	a0, s0, -32
8020105c: 23 38 a4 f8  	sd	a0, -112(s0)
80201060: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201064 <.LBB0_10>:
80201064: 17 25 00 00  	auipc	a0, 2
80201068: 13 05 c5 fa  	addi	a0, a0, -84
8020106c: 23 30 a4 fc  	sd	a0, -64(s0)
80201070: 09 45        	li	a0, 2
80201072: 23 34 a4 fc  	sd	a0, -56(s0)
80201076: 13 05 04 f6  	addi	a0, s0, -160
8020107a: 23 38 a4 fc  	sd	a0, -48(s0)
8020107e: 05 45        	li	a0, 1
80201080: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201084 <.LBB0_11>:
80201084: 97 25 00 00  	auipc	a1, 2
80201088: 93 85 45 05  	addi	a1, a1, 84
8020108c: 13 05 04 f9  	addi	a0, s0, -112
80201090: 13 06 04 fb  	addi	a2, s0, -80
80201094: 97 00 00 00  	auipc	ra, 0
80201098: e7 80 80 65  	jalr	1624(ra)
8020109c: 45 e1        	bnez	a0, 0x8020113c <.LBB0_17>
;     shutdown()
8020109e: 97 00 00 00  	auipc	ra, 0
802010a2: e7 80 c0 50  	jalr	1292(ra)
802010a6: 00 00        	unimp	
802010a8: 0c 61        	ld	a1, 0(a0)
802010aa: 10 65        	ld	a2, 8(a0)
802010ac: 23 38 b4 f8  	sd	a1, -112(s0)
802010b0: 23 3c c4 f8  	sd	a2, -104(s0)
802010b4: 08 49        	lw	a0, 16(a0)
802010b6: 23 22 a4 fa  	sw	a0, -92(s0)
802010ba: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
802010be: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802010c2 <.LBB0_12>:
802010c2: 17 05 00 00  	auipc	a0, 0
802010c6: 13 05 e5 42  	addi	a0, a0, 1070
802010ca: 23 34 a4 f6  	sd	a0, -152(s0)
802010ce: 13 05 44 fa  	addi	a0, s0, -92
802010d2: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802010d6 <.LBB0_13>:
802010d6: 17 15 00 00  	auipc	a0, 1
802010da: 13 05 65 f8  	addi	a0, a0, -122
802010de: 23 3c a4 f6  	sd	a0, -136(s0)
802010e2: 13 05 84 f5  	addi	a0, s0, -168
802010e6: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802010ea <.LBB0_14>:
802010ea: 17 05 00 00  	auipc	a0, 0
802010ee: 13 05 e5 3e  	addi	a0, a0, 1006
802010f2: 23 34 a4 f8  	sd	a0, -120(s0)
802010f6: 13 05 04 fe  	addi	a0, s0, -32
802010fa: 23 34 a4 fa  	sd	a0, -88(s0)
802010fe: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201102 <.LBB0_15>:
80201102: 17 25 00 00  	auipc	a0, 2
80201106: 13 05 e5 f3  	addi	a0, a0, -194
8020110a: 23 30 a4 fc  	sd	a0, -64(s0)
8020110e: 11 45        	li	a0, 4
80201110: 23 34 a4 fc  	sd	a0, -56(s0)
80201114: 13 05 04 f6  	addi	a0, s0, -160
80201118: 23 38 a4 fc  	sd	a0, -48(s0)
8020111c: 0d 45        	li	a0, 3
8020111e: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201122 <.LBB0_16>:
80201122: 97 25 00 00  	auipc	a1, 2
80201126: 93 85 65 fb  	addi	a1, a1, -74
8020112a: 13 05 84 fa  	addi	a0, s0, -88
8020112e: 13 06 04 fb  	addi	a2, s0, -80
80201132: 97 00 00 00  	auipc	ra, 0
80201136: e7 80 a0 5b  	jalr	1466(ra)
8020113a: 35 d1        	beqz	a0, 0x8020109e <.LBB0_11+0x1a>

000000008020113c <.LBB0_17>:
8020113c: 17 25 00 00  	auipc	a0, 2
80201140: 13 05 c5 fc  	addi	a0, a0, -52

0000000080201144 <.LBB0_18>:
80201144: 97 26 00 00  	auipc	a3, 2
80201148: 93 86 46 ff  	addi	a3, a3, -12

000000008020114c <.LBB0_19>:
8020114c: 17 27 00 00  	auipc	a4, 2
80201150: 13 07 c7 01  	addi	a4, a4, 28
80201154: 93 05 b0 02  	li	a1, 43
80201158: 13 06 04 fe  	addi	a2, s0, -32
8020115c: 97 00 00 00  	auipc	ra, 0
80201160: e7 80 20 51  	jalr	1298(ra)
80201164: 00 00        	unimp	

0000000080201166 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h0cf5436595138b90E.llvm.16021298194833989887>:
80201166: 41 11        	addi	sp, sp, -16
80201168: 06 e4        	sd	ra, 8(sp)
8020116a: 22 e0        	sd	s0, 0(sp)
8020116c: 00 08        	addi	s0, sp, 16
8020116e: a2 60        	ld	ra, 8(sp)
80201170: 02 64        	ld	s0, 0(sp)
80201172: 41 01        	addi	sp, sp, 16
80201174: 82 80        	ret

0000000080201176 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887>:
80201176: 01 11        	addi	sp, sp, -32
80201178: 06 ec        	sd	ra, 24(sp)
8020117a: 22 e8        	sd	s0, 16(sp)
8020117c: 00 10        	addi	s0, sp, 32
8020117e: 1b 85 05 00  	sext.w	a0, a1
80201182: 13 06 00 08  	li	a2, 128
80201186: 23 26 04 fe  	sw	zero, -20(s0)
8020118a: 63 76 c5 00  	bgeu	a0, a2, 0x80201196 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x20>
8020118e: 23 06 b4 fe  	sb	a1, -20(s0)
80201192: 05 45        	li	a0, 1
80201194: 51 a8        	j	0x80201228 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xb2>
80201196: 1b d5 b5 00  	srliw	a0, a1, 11
8020119a: 19 ed        	bnez	a0, 0x802011b8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x42>
8020119c: 13 d5 65 00  	srli	a0, a1, 6
802011a0: 13 65 05 0c  	ori	a0, a0, 192
802011a4: 23 06 a4 fe  	sb	a0, -20(s0)
802011a8: 13 f5 f5 03  	andi	a0, a1, 63
802011ac: 13 65 05 08  	ori	a0, a0, 128
802011b0: a3 06 a4 fe  	sb	a0, -19(s0)
802011b4: 09 45        	li	a0, 2
802011b6: 8d a8        	j	0x80201228 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xb2>
802011b8: 1b d5 05 01  	srliw	a0, a1, 16
802011bc: 05 e9        	bnez	a0, 0x802011ec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x76>
802011be: 13 95 05 02  	slli	a0, a1, 32
802011c2: 01 91        	srli	a0, a0, 32
802011c4: 1b d6 c5 00  	srliw	a2, a1, 12
802011c8: 13 66 06 0e  	ori	a2, a2, 224
802011cc: 23 06 c4 fe  	sb	a2, -20(s0)
802011d0: 52 15        	slli	a0, a0, 52
802011d2: 69 91        	srli	a0, a0, 58
802011d4: 13 65 05 08  	ori	a0, a0, 128
802011d8: a3 06 a4 fe  	sb	a0, -19(s0)
802011dc: 13 f5 f5 03  	andi	a0, a1, 63
802011e0: 13 65 05 08  	ori	a0, a0, 128
802011e4: 23 07 a4 fe  	sb	a0, -18(s0)
802011e8: 0d 45        	li	a0, 3
802011ea: 3d a8        	j	0x80201228 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xb2>
802011ec: 13 95 05 02  	slli	a0, a1, 32
802011f0: 01 91        	srli	a0, a0, 32
802011f2: 13 16 b5 02  	slli	a2, a0, 43
802011f6: 75 92        	srli	a2, a2, 61
802011f8: 13 66 06 0f  	ori	a2, a2, 240
802011fc: 23 06 c4 fe  	sb	a2, -20(s0)
80201200: 13 16 e5 02  	slli	a2, a0, 46
80201204: 69 92        	srli	a2, a2, 58
80201206: 13 66 06 08  	ori	a2, a2, 128
8020120a: a3 06 c4 fe  	sb	a2, -19(s0)
8020120e: 52 15        	slli	a0, a0, 52
80201210: 69 91        	srli	a0, a0, 58
80201212: 13 65 05 08  	ori	a0, a0, 128
80201216: 23 07 a4 fe  	sb	a0, -18(s0)
8020121a: 13 f5 f5 03  	andi	a0, a1, 63
8020121e: 13 65 05 08  	ori	a0, a0, 128
80201222: a3 07 a4 fe  	sb	a0, -17(s0)
80201226: 11 45        	li	a0, 4
80201228: 93 06 c4 fe  	addi	a3, s0, -20
8020122c: 33 87 a6 00  	add	a4, a3, a0
80201230: 13 03 f0 0d  	li	t1, 223
80201234: 13 08 00 0f  	li	a6, 240
80201238: b7 02 11 00  	lui	t0, 272
8020123c: 85 48        	li	a7, 1
8020123e: 01 a8        	j	0x8020124e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xd8>
80201240: 85 06        	addi	a3, a3, 1
;         asm!(
80201242: 81 45        	li	a1, 0
80201244: 01 46        	li	a2, 0
80201246: 73 00 00 00  	ecall	
8020124a: 63 8f e6 04  	beq	a3, a4, 0x802012a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x132>
8020124e: 83 85 06 00  	lb	a1, 0(a3)
80201252: 13 f5 f5 0f  	andi	a0, a1, 255
80201256: e3 d5 05 fe  	bgez	a1, 0x80201240 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xca>
8020125a: 03 c6 16 00  	lbu	a2, 1(a3)
8020125e: 93 75 f5 01  	andi	a1, a0, 31
80201262: 13 76 f6 03  	andi	a2, a2, 63
80201266: 63 77 a3 02  	bgeu	t1, a0, 0x80201294 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x11e>
8020126a: 83 c7 26 00  	lbu	a5, 2(a3)
8020126e: 1a 06        	slli	a2, a2, 6
80201270: 93 f7 f7 03  	andi	a5, a5, 63
80201274: 5d 8e        	or	a2, a2, a5
80201276: 63 64 05 03  	bltu	a0, a6, 0x8020129e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x128>
8020127a: 03 c5 36 00  	lbu	a0, 3(a3)
8020127e: f6 15        	slli	a1, a1, 61
80201280: ad 91        	srli	a1, a1, 43
80201282: 1a 06        	slli	a2, a2, 6
80201284: 13 75 f5 03  	andi	a0, a0, 63
80201288: 51 8d        	or	a0, a0, a2
8020128a: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020128c: 63 0e 55 00  	beq	a0, t0, 0x802012a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0x132>
80201290: 91 06        	addi	a3, a3, 4
80201292: 45 bf        	j	0x80201242 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xcc>
80201294: 89 06        	addi	a3, a3, 2
80201296: 13 95 65 00  	slli	a0, a1, 6
8020129a: 51 8d        	or	a0, a0, a2
8020129c: 5d b7        	j	0x80201242 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xcc>
8020129e: 8d 06        	addi	a3, a3, 3
802012a0: 13 95 c5 00  	slli	a0, a1, 12
802012a4: 51 8d        	or	a0, a0, a2
802012a6: 71 bf        	j	0x80201242 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2c9dc6c81ad2ec53E.llvm.16021298194833989887+0xcc>
802012a8: 01 45        	li	a0, 0
802012aa: e2 60        	ld	ra, 24(sp)
802012ac: 42 64        	ld	s0, 16(sp)
802012ae: 05 61        	addi	sp, sp, 32
802012b0: 82 80        	ret

00000000802012b2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hbf49544687645a5eE.llvm.16021298194833989887>:
802012b2: 5d 71        	addi	sp, sp, -80
802012b4: 86 e4        	sd	ra, 72(sp)
802012b6: a2 e0        	sd	s0, 64(sp)
802012b8: 80 08        	addi	s0, sp, 80
802012ba: 08 61        	ld	a0, 0(a0)
802012bc: 90 75        	ld	a2, 40(a1)
802012be: 94 71        	ld	a3, 32(a1)
802012c0: 23 3c a4 fa  	sd	a0, -72(s0)
802012c4: 23 34 c4 fe  	sd	a2, -24(s0)
802012c8: 23 30 d4 fe  	sd	a3, -32(s0)
802012cc: 88 6d        	ld	a0, 24(a1)
802012ce: 90 69        	ld	a2, 16(a1)
802012d0: 94 65        	ld	a3, 8(a1)
802012d2: 8c 61        	ld	a1, 0(a1)
802012d4: 23 3c a4 fc  	sd	a0, -40(s0)
802012d8: 23 38 c4 fc  	sd	a2, -48(s0)
802012dc: 23 34 d4 fc  	sd	a3, -56(s0)
802012e0: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802012e4 <.LBB2_1>:
802012e4: 97 25 00 00  	auipc	a1, 2
802012e8: 93 85 45 df  	addi	a1, a1, -524
802012ec: 13 05 84 fb  	addi	a0, s0, -72
802012f0: 13 06 04 fc  	addi	a2, s0, -64
802012f4: 97 00 00 00  	auipc	ra, 0
802012f8: e7 80 80 3f  	jalr	1016(ra)
802012fc: a6 60        	ld	ra, 72(sp)
802012fe: 06 64        	ld	s0, 64(sp)
80201300: 61 61        	addi	sp, sp, 80
80201302: 82 80        	ret

0000000080201304 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887>:
80201304: 41 11        	addi	sp, sp, -16
80201306: 06 e4        	sd	ra, 8(sp)
80201308: 22 e0        	sd	s0, 0(sp)
8020130a: 00 08        	addi	s0, sp, 16
8020130c: 41 c2        	beqz	a2, 0x8020138c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x88>
8020130e: ae 86        	mv	a3, a1
80201310: 33 87 c5 00  	add	a4, a1, a2
80201314: 13 03 f0 0d  	li	t1, 223
80201318: 13 08 00 0f  	li	a6, 240
8020131c: b7 02 11 00  	lui	t0, 272
80201320: 85 48        	li	a7, 1
80201322: 01 a8        	j	0x80201332 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x2e>
80201324: 85 06        	addi	a3, a3, 1
;         asm!(
80201326: 81 45        	li	a1, 0
80201328: 01 46        	li	a2, 0
8020132a: 73 00 00 00  	ecall	
8020132e: 63 8f e6 04  	beq	a3, a4, 0x8020138c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x88>
80201332: 83 85 06 00  	lb	a1, 0(a3)
80201336: 13 f5 f5 0f  	andi	a0, a1, 255
8020133a: e3 d5 05 fe  	bgez	a1, 0x80201324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x20>
8020133e: 03 c6 16 00  	lbu	a2, 1(a3)
80201342: 93 75 f5 01  	andi	a1, a0, 31
80201346: 13 76 f6 03  	andi	a2, a2, 63
8020134a: 63 77 a3 02  	bgeu	t1, a0, 0x80201378 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x74>
8020134e: 83 c7 26 00  	lbu	a5, 2(a3)
80201352: 1a 06        	slli	a2, a2, 6
80201354: 93 f7 f7 03  	andi	a5, a5, 63
80201358: 5d 8e        	or	a2, a2, a5
8020135a: 63 64 05 03  	bltu	a0, a6, 0x80201382 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x7e>
8020135e: 03 c5 36 00  	lbu	a0, 3(a3)
80201362: f6 15        	slli	a1, a1, 61
80201364: ad 91        	srli	a1, a1, 43
80201366: 1a 06        	slli	a2, a2, 6
80201368: 13 75 f5 03  	andi	a0, a0, 63
8020136c: 51 8d        	or	a0, a0, a2
8020136e: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201370: 63 0e 55 00  	beq	a0, t0, 0x8020138c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x88>
80201374: 91 06        	addi	a3, a3, 4
80201376: 45 bf        	j	0x80201326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x22>
80201378: 89 06        	addi	a3, a3, 2
8020137a: 13 95 65 00  	slli	a0, a1, 6
8020137e: 51 8d        	or	a0, a0, a2
80201380: 5d b7        	j	0x80201326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x22>
80201382: 8d 06        	addi	a3, a3, 3
80201384: 13 95 c5 00  	slli	a0, a1, 12
80201388: 51 8d        	or	a0, a0, a2
8020138a: 71 bf        	j	0x80201326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha7e849a6da281900E.llvm.16021298194833989887+0x22>
8020138c: 01 45        	li	a0, 0
8020138e: a2 60        	ld	ra, 8(sp)
80201390: 02 64        	ld	s0, 0(sp)
80201392: 41 01        	addi	sp, sp, 16
80201394: 82 80        	ret

0000000080201396 <_ZN6kernel7console5print17hf1946fce855fb64eE>:
; pub fn print(args: fmt::Arguments) {
80201396: 5d 71        	addi	sp, sp, -80
80201398: 86 e4        	sd	ra, 72(sp)
8020139a: a2 e0        	sd	s0, 64(sp)
8020139c: 80 08        	addi	s0, sp, 80
8020139e: 0c 75        	ld	a1, 40(a0)
802013a0: 10 71        	ld	a2, 32(a0)
802013a2: 93 06 84 fe  	addi	a3, s0, -24
802013a6: 23 38 d4 fa  	sd	a3, -80(s0)
802013aa: 23 30 b4 fe  	sd	a1, -32(s0)
802013ae: 23 3c c4 fc  	sd	a2, -40(s0)
802013b2: 0c 6d        	ld	a1, 24(a0)
802013b4: 10 69        	ld	a2, 16(a0)
802013b6: 14 65        	ld	a3, 8(a0)
802013b8: 08 61        	ld	a0, 0(a0)
802013ba: 23 38 b4 fc  	sd	a1, -48(s0)
802013be: 23 34 c4 fc  	sd	a2, -56(s0)
802013c2: 23 30 d4 fc  	sd	a3, -64(s0)
802013c6: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802013ca <.LBB4_3>:
802013ca: 97 25 00 00  	auipc	a1, 2
802013ce: 93 85 e5 d0  	addi	a1, a1, -754
802013d2: 13 05 04 fb  	addi	a0, s0, -80
802013d6: 13 06 84 fb  	addi	a2, s0, -72
802013da: 97 00 00 00  	auipc	ra, 0
802013de: e7 80 20 31  	jalr	786(ra)
802013e2: 09 e5        	bnez	a0, 0x802013ec <.LBB4_4>
; }
802013e4: a6 60        	ld	ra, 72(sp)
802013e6: 06 64        	ld	s0, 64(sp)
802013e8: 61 61        	addi	sp, sp, 80
802013ea: 82 80        	ret

00000000802013ec <.LBB4_4>:
802013ec: 17 25 00 00  	auipc	a0, 2
802013f0: 13 05 c5 d1  	addi	a0, a0, -740

00000000802013f4 <.LBB4_5>:
802013f4: 97 26 00 00  	auipc	a3, 2
802013f8: 93 86 46 d4  	addi	a3, a3, -700

00000000802013fc <.LBB4_6>:
802013fc: 17 27 00 00  	auipc	a4, 2
80201400: 13 07 c7 d6  	addi	a4, a4, -660
80201404: 93 05 b0 02  	li	a1, 43
80201408: 13 06 84 fe  	addi	a2, s0, -24
8020140c: 97 00 00 00  	auipc	ra, 0
80201410: e7 80 20 26  	jalr	610(ra)
80201414: 00 00        	unimp	

0000000080201416 <main>:
; pub fn main() {
80201416: 5d 71        	addi	sp, sp, -80
80201418: 86 e4        	sd	ra, 72(sp)
8020141a: a2 e0        	sd	s0, 64(sp)
8020141c: 26 fc        	sd	s1, 56(sp)
8020141e: 4a f8        	sd	s2, 48(sp)
80201420: 80 08        	addi	s0, sp, 80

0000000080201422 <.LBB0_3>:
80201422: 17 45 01 00  	auipc	a0, 20
80201426: 13 05 e5 bd  	addi	a0, a0, -1058

000000008020142a <.LBB0_4>:
8020142a: 97 45 01 00  	auipc	a1, 20
8020142e: 93 85 65 bd  	addi	a1, a1, -1066
80201432: 63 f9 a5 00  	bgeu	a1, a0, 0x80201444 <.LBB0_4+0x1a>
80201436: 13 86 15 00  	addi	a2, a1, 1
8020143a: 23 80 05 00  	sb	zero, 0(a1)
8020143e: b2 85        	mv	a1, a2
80201440: e3 6b a6 fe  	bltu	a2, a0, 0x80201436 <.LBB0_4+0xc>
;         print_logo();
80201444: 97 00 00 00  	auipc	ra, 0
80201448: e7 80 e0 0c  	jalr	206(ra)

000000008020144c <.LBB0_5>:
8020144c: 17 25 00 00  	auipc	a0, 2
80201450: 13 05 45 d5  	addi	a0, a0, -684
80201454: 23 30 a4 fc  	sd	a0, -64(s0)
80201458: 05 49        	li	s2, 1
8020145a: 23 34 24 fd  	sd	s2, -56(s0)
8020145e: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201462 <.LBB0_6>:
80201462: 97 24 00 00  	auipc	s1, 2
80201466: 93 84 e4 d1  	addi	s1, s1, -738
8020146a: 23 38 94 fc  	sd	s1, -48(s0)
8020146e: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
80201472: 13 05 04 fb  	addi	a0, s0, -80
80201476: 97 00 00 00  	auipc	ra, 0
8020147a: e7 80 00 f2  	jalr	-224(ra)

000000008020147e <.LBB0_7>:
8020147e: 17 25 00 00  	auipc	a0, 2
80201482: 13 05 a5 d3  	addi	a0, a0, -710
80201486: 23 30 a4 fc  	sd	a0, -64(s0)
8020148a: 23 34 24 fd  	sd	s2, -56(s0)
8020148e: 23 38 04 fa  	sd	zero, -80(s0)
80201492: 23 38 94 fc  	sd	s1, -48(s0)
80201496: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
8020149a: 13 05 04 fb  	addi	a0, s0, -80
8020149e: 97 00 00 00  	auipc	ra, 0
802014a2: e7 80 80 ef  	jalr	-264(ra)

00000000802014a6 <.LBB0_8>:
802014a6: 17 25 00 00  	auipc	a0, 2
802014aa: 13 05 25 d3  	addi	a0, a0, -718
802014ae: 23 30 a4 fc  	sd	a0, -64(s0)
802014b2: 23 34 24 fd  	sd	s2, -56(s0)
802014b6: 23 38 04 fa  	sd	zero, -80(s0)
802014ba: 23 38 94 fc  	sd	s1, -48(s0)
802014be: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802014c2 <.LBB0_9>:
;     panic!("Shutdown!");
802014c2: 97 25 00 00  	auipc	a1, 2
802014c6: 93 85 65 d3  	addi	a1, a1, -714
802014ca: 13 05 04 fb  	addi	a0, s0, -80
802014ce: 97 00 00 00  	auipc	ra, 0
802014d2: e7 80 60 14  	jalr	326(ra)
802014d6: 00 00        	unimp	

00000000802014d8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h38ea86d985ca6548E>:
802014d8: 41 11        	addi	sp, sp, -16
802014da: 06 e4        	sd	ra, 8(sp)
802014dc: 22 e0        	sd	s0, 0(sp)
802014de: 00 08        	addi	s0, sp, 16
802014e0: 08 61        	ld	a0, 0(a0)
802014e2: a2 60        	ld	ra, 8(sp)
802014e4: 02 64        	ld	s0, 0(sp)
802014e6: 41 01        	addi	sp, sp, 16
802014e8: 17 03 00 00  	auipc	t1, 0
802014ec: 67 00 23 1d  	jr	466(t1)

00000000802014f0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5cd1527878f5dbb4E>:
802014f0: 41 11        	addi	sp, sp, -16
802014f2: 06 e4        	sd	ra, 8(sp)
802014f4: 22 e0        	sd	s0, 0(sp)
802014f6: 00 08        	addi	s0, sp, 16
802014f8: 10 61        	ld	a2, 0(a0)
802014fa: 14 65        	ld	a3, 8(a0)
802014fc: 2e 87        	mv	a4, a1
802014fe: 32 85        	mv	a0, a2
80201500: b6 85        	mv	a1, a3
80201502: 3a 86        	mv	a2, a4
80201504: a2 60        	ld	ra, 8(sp)
80201506: 02 64        	ld	s0, 0(sp)
80201508: 41 01        	addi	sp, sp, 16
8020150a: 17 13 00 00  	auipc	t1, 1
8020150e: 67 00 63 83  	jr	-1994(t1)

0000000080201512 <_ZN6kernel4logo10print_logo17h779bfee80b1ab175E>:
; pub fn print_logo() {
80201512: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
80201514: 86 ec        	sd	ra, 88(sp)
80201516: a2 e8        	sd	s0, 80(sp)
80201518: 80 10        	addi	s0, sp, 96

000000008020151a <.LBB0_3>:
8020151a: 17 25 00 00  	auipc	a0, 2
8020151e: 13 05 65 e7  	addi	a0, a0, -394
80201522: 23 30 a4 fa  	sd	a0, -96(s0)

0000000080201526 <.LBB0_4>:
80201526: 17 05 00 00  	auipc	a0, 0
8020152a: 13 05 a5 fc  	addi	a0, a0, -54
8020152e: 23 34 a4 fa  	sd	a0, -88(s0)
80201532: 13 05 84 fe  	addi	a0, s0, -24
80201536: 23 38 a4 fa  	sd	a0, -80(s0)
8020153a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020153e <.LBB0_5>:
8020153e: 17 25 00 00  	auipc	a0, 2
80201542: 13 05 a5 cd  	addi	a0, a0, -806
80201546: 23 34 a4 fc  	sd	a0, -56(s0)
8020154a: 09 45        	li	a0, 2
8020154c: 23 38 a4 fc  	sd	a0, -48(s0)
80201550: 13 05 04 fa  	addi	a0, s0, -96
80201554: 23 3c a4 fc  	sd	a0, -40(s0)
80201558: 05 45        	li	a0, 1
8020155a: 23 30 a4 fe  	sd	a0, -32(s0)

000000008020155e <.LBB0_6>:
8020155e: 97 25 00 00  	auipc	a1, 2
80201562: 93 85 a5 b7  	addi	a1, a1, -1158
80201566: 13 05 04 fb  	addi	a0, s0, -80
8020156a: 13 06 84 fb  	addi	a2, s0, -72
8020156e: 97 00 00 00  	auipc	ra, 0
80201572: e7 80 e0 17  	jalr	382(ra)
80201576: 09 e5        	bnez	a0, 0x80201580 <.LBB0_7>
; }
80201578: e6 60        	ld	ra, 88(sp)
8020157a: 46 64        	ld	s0, 80(sp)
8020157c: 25 61        	addi	sp, sp, 96
8020157e: 82 80        	ret

0000000080201580 <.LBB0_7>:
80201580: 17 25 00 00  	auipc	a0, 2
80201584: 13 05 85 b8  	addi	a0, a0, -1144

0000000080201588 <.LBB0_8>:
80201588: 97 26 00 00  	auipc	a3, 2
8020158c: 93 86 06 bb  	addi	a3, a3, -1104

0000000080201590 <.LBB0_9>:
80201590: 17 27 00 00  	auipc	a4, 2
80201594: 13 07 87 bd  	addi	a4, a4, -1064
80201598: 93 05 b0 02  	li	a1, 43
8020159c: 13 06 84 fe  	addi	a2, s0, -24
802015a0: 97 00 00 00  	auipc	ra, 0
802015a4: e7 80 e0 0c  	jalr	206(ra)
802015a8: 00 00        	unimp	

00000000802015aa <_ZN6kernel3sbi8shutdown17h4061e80d1077ad6aE>:
; pub fn shutdown() -> ! {
802015aa: 39 71        	addi	sp, sp, -64
;         asm!(
802015ac: 06 fc        	sd	ra, 56(sp)
802015ae: 22 f8        	sd	s0, 48(sp)
802015b0: 80 00        	addi	s0, sp, 64
802015b2: a1 48        	li	a7, 8
802015b4: 01 45        	li	a0, 0
802015b6: 81 45        	li	a1, 0
802015b8: 01 46        	li	a2, 0
802015ba: 73 00 00 00  	ecall	

00000000802015be <.LBB1_1>:
802015be: 17 25 00 00  	auipc	a0, 2
802015c2: 13 05 a5 df  	addi	a0, a0, -518
802015c6: 23 38 a4 fc  	sd	a0, -48(s0)
802015ca: 05 45        	li	a0, 1
802015cc: 23 3c a4 fc  	sd	a0, -40(s0)
802015d0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802015d4 <.LBB1_2>:
802015d4: 17 25 00 00  	auipc	a0, 2
802015d8: 13 05 c5 dc  	addi	a0, a0, -564
802015dc: 23 30 a4 fe  	sd	a0, -32(s0)
802015e0: 23 34 04 fe  	sd	zero, -24(s0)

00000000802015e4 <.LBB1_3>:
;     panic!("It should shutdown!");
802015e4: 97 25 00 00  	auipc	a1, 2
802015e8: 93 85 45 df  	addi	a1, a1, -524
802015ec: 13 05 04 fc  	addi	a0, s0, -64
802015f0: 97 00 00 00  	auipc	ra, 0
802015f4: e7 80 40 02  	jalr	36(ra)
802015f8: 00 00        	unimp	

00000000802015fa <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
802015fa: 08 61        	ld	a0, 0(a0)
802015fc: 01 a0        	j	0x802015fc <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

00000000802015fe <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
802015fe: 82 80        	ret

0000000080201600 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80201600: 17 35 00 00  	auipc	a0, 3
80201604: 13 05 85 ae  	addi	a0, a0, -1304
80201608: 08 61        	ld	a0, 0(a0)
8020160a: 82 80        	ret

000000008020160c <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
8020160c: 08 69        	ld	a0, 16(a0)
8020160e: 82 80        	ret

0000000080201610 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80201610: 08 6d        	ld	a0, 24(a0)
80201612: 82 80        	ret

0000000080201614 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80201614: 79 71        	addi	sp, sp, -48
80201616: 06 f4        	sd	ra, 40(sp)

0000000080201618 <.LBB170_1>:
80201618: 17 26 00 00  	auipc	a2, 2
8020161c: 13 06 86 dd  	addi	a2, a2, -552
80201620: 32 e0        	sd	a2, 0(sp)

0000000080201622 <.LBB170_2>:
80201622: 17 26 00 00  	auipc	a2, 2
80201626: 13 06 e6 dc  	addi	a2, a2, -562
8020162a: 32 e4        	sd	a2, 8(sp)
8020162c: 2a e8        	sd	a0, 16(sp)
8020162e: 2e ec        	sd	a1, 24(sp)
80201630: 05 45        	li	a0, 1
80201632: 23 00 a1 02  	sb	a0, 32(sp)
80201636: 0a 85        	mv	a0, sp
80201638: 97 00 00 00  	auipc	ra, 0
8020163c: e7 80 80 9c  	jalr	-1592(ra)
80201640: 00 00        	unimp	

0000000080201642 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80201642: 5d 71        	addi	sp, sp, -80
80201644: 86 e4        	sd	ra, 72(sp)
80201646: 2a fc        	sd	a0, 56(sp)
80201648: ae e0        	sd	a1, 64(sp)
8020164a: 28 18        	addi	a0, sp, 56
8020164c: 2a ec        	sd	a0, 24(sp)
8020164e: 05 45        	li	a0, 1
80201650: 2a f0        	sd	a0, 32(sp)
80201652: 02 e4        	sd	zero, 8(sp)

0000000080201654 <.LBB172_1>:
80201654: 17 25 00 00  	auipc	a0, 2
80201658: 13 05 c5 d9  	addi	a0, a0, -612
8020165c: 2a f4        	sd	a0, 40(sp)
8020165e: 02 f8        	sd	zero, 48(sp)
80201660: 28 00        	addi	a0, sp, 8
80201662: b2 85        	mv	a1, a2
80201664: 97 00 00 00  	auipc	ra, 0
80201668: e7 80 00 fb  	jalr	-80(ra)
8020166c: 00 00        	unimp	

000000008020166e <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
8020166e: 19 71        	addi	sp, sp, -128
80201670: 86 fc        	sd	ra, 120(sp)
80201672: 2a e4        	sd	a0, 8(sp)
80201674: 2e e8        	sd	a1, 16(sp)
80201676: 32 ec        	sd	a2, 24(sp)
80201678: 36 f0        	sd	a3, 32(sp)
8020167a: 28 00        	addi	a0, sp, 8
8020167c: aa ec        	sd	a0, 88(sp)

000000008020167e <.LBB183_1>:
8020167e: 17 15 00 00  	auipc	a0, 1
80201682: 13 05 85 a0  	addi	a0, a0, -1528
80201686: aa f0        	sd	a0, 96(sp)
80201688: 28 08        	addi	a0, sp, 24
8020168a: aa f4        	sd	a0, 104(sp)

000000008020168c <.LBB183_2>:
8020168c: 17 15 00 00  	auipc	a0, 1
80201690: 13 05 25 9f  	addi	a0, a0, -1550
80201694: aa f8        	sd	a0, 112(sp)

0000000080201696 <.LBB183_3>:
80201696: 17 25 00 00  	auipc	a0, 2
8020169a: 13 05 25 d8  	addi	a0, a0, -638
8020169e: 2a fc        	sd	a0, 56(sp)
802016a0: 09 45        	li	a0, 2
802016a2: aa e0        	sd	a0, 64(sp)
802016a4: 02 f4        	sd	zero, 40(sp)
802016a6: ac 08        	addi	a1, sp, 88
802016a8: ae e4        	sd	a1, 72(sp)
802016aa: aa e8        	sd	a0, 80(sp)
802016ac: 28 10        	addi	a0, sp, 40
802016ae: ba 85        	mv	a1, a4
802016b0: 97 00 00 00  	auipc	ra, 0
802016b4: e7 80 40 f6  	jalr	-156(ra)
802016b8: 00 00        	unimp	

00000000802016ba <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
802016ba: 39 71        	addi	sp, sp, -64
802016bc: 06 fc        	sd	ra, 56(sp)
802016be: 10 75        	ld	a2, 40(a0)
802016c0: 18 71        	ld	a4, 32(a0)
802016c2: 1c 6d        	ld	a5, 24(a0)
802016c4: 32 f8        	sd	a2, 48(sp)
802016c6: 94 61        	ld	a3, 0(a1)
802016c8: 3a f4        	sd	a4, 40(sp)
802016ca: 3e f0        	sd	a5, 32(sp)
802016cc: 10 69        	ld	a2, 16(a0)
802016ce: 18 65        	ld	a4, 8(a0)
802016d0: 08 61        	ld	a0, 0(a0)
802016d2: 8c 65        	ld	a1, 8(a1)
802016d4: 32 ec        	sd	a2, 24(sp)
802016d6: 3a e8        	sd	a4, 16(sp)
802016d8: 2a e4        	sd	a0, 8(sp)
802016da: 30 00        	addi	a2, sp, 8
802016dc: 36 85        	mv	a0, a3
802016de: 97 00 00 00  	auipc	ra, 0
802016e2: e7 80 e0 00  	jalr	14(ra)
802016e6: e2 70        	ld	ra, 56(sp)
802016e8: 21 61        	addi	sp, sp, 64
802016ea: 82 80        	ret

00000000802016ec <_ZN4core3fmt5write17hb508d59c95a275a3E>:
802016ec: 19 71        	addi	sp, sp, -128
802016ee: 86 fc        	sd	ra, 120(sp)
802016f0: a2 f8        	sd	s0, 112(sp)
802016f2: a6 f4        	sd	s1, 104(sp)
802016f4: ca f0        	sd	s2, 96(sp)
802016f6: ce ec        	sd	s3, 88(sp)
802016f8: d2 e8        	sd	s4, 80(sp)
802016fa: d6 e4        	sd	s5, 72(sp)
802016fc: da e0        	sd	s6, 64(sp)
802016fe: b2 89        	mv	s3, a2
80201700: 05 46        	li	a2, 1
80201702: 16 16        	slli	a2, a2, 37
80201704: 32 f8        	sd	a2, 48(sp)
80201706: 0d 46        	li	a2, 3
80201708: 23 0c c1 02  	sb	a2, 56(sp)
8020170c: 03 b6 09 00  	ld	a2, 0(s3)
80201710: 02 e8        	sd	zero, 16(sp)
80201712: 02 f0        	sd	zero, 32(sp)
80201714: 2a e0        	sd	a0, 0(sp)
80201716: 2e e4        	sd	a1, 8(sp)
80201718: 69 c6        	beqz	a2, 0x802017e2 <.LBB220_31+0x9e>
8020171a: 03 b5 89 00  	ld	a0, 8(s3)
8020171e: 63 0e 05 10  	beqz	a0, 0x8020183a <.LBB220_31+0xf6>
80201722: 83 b5 09 01  	ld	a1, 16(s3)
80201726: 93 06 f5 ff  	addi	a3, a0, -1
8020172a: 8e 06        	slli	a3, a3, 3
8020172c: 8d 82        	srli	a3, a3, 3
8020172e: 13 89 16 00  	addi	s2, a3, 1
80201732: 93 84 85 00  	addi	s1, a1, 8
80201736: 93 05 80 03  	li	a1, 56
8020173a: 33 0a b5 02  	mul	s4, a0, a1
8020173e: 13 04 86 01  	addi	s0, a2, 24
80201742: 85 4a        	li	s5, 1

0000000080201744 <.LBB220_31>:
80201744: 17 0b 00 00  	auipc	s6, 0
80201748: 13 0b 6b eb  	addi	s6, s6, -330
8020174c: 90 60        	ld	a2, 0(s1)
8020174e: 09 ca        	beqz	a2, 0x80201760 <.LBB220_31+0x1c>
80201750: a2 66        	ld	a3, 8(sp)
80201752: 02 65        	ld	a0, 0(sp)
80201754: 83 b5 84 ff  	ld	a1, -8(s1)
80201758: 94 6e        	ld	a3, 24(a3)
8020175a: 82 96        	jalr	a3
8020175c: 63 11 05 10  	bnez	a0, 0x8020185e <.LBB220_31+0x11a>
80201760: 48 44        	lw	a0, 12(s0)
80201762: 2a da        	sw	a0, 52(sp)
80201764: 03 05 04 01  	lb	a0, 16(s0)
80201768: 23 0c a1 02  	sb	a0, 56(sp)
8020176c: 0c 44        	lw	a1, 8(s0)
8020176e: 03 b5 09 02  	ld	a0, 32(s3)
80201772: 2e d8        	sw	a1, 48(sp)
80201774: 83 36 84 ff  	ld	a3, -8(s0)
80201778: 0c 60        	ld	a1, 0(s0)
8020177a: 89 ce        	beqz	a3, 0x80201794 <.LBB220_31+0x50>
8020177c: 01 46        	li	a2, 0
8020177e: 63 9c 56 01  	bne	a3, s5, 0x80201796 <.LBB220_31+0x52>
80201782: 92 05        	slli	a1, a1, 4
80201784: aa 95        	add	a1, a1, a0
80201786: 90 65        	ld	a2, 8(a1)
80201788: 63 04 66 01  	beq	a2, s6, 0x80201790 <.LBB220_31+0x4c>
8020178c: 01 46        	li	a2, 0
8020178e: 21 a0        	j	0x80201796 <.LBB220_31+0x52>
80201790: 8c 61        	ld	a1, 0(a1)
80201792: 8c 61        	ld	a1, 0(a1)
80201794: 05 46        	li	a2, 1
80201796: 32 e8        	sd	a2, 16(sp)
80201798: 2e ec        	sd	a1, 24(sp)
8020179a: 83 36 84 fe  	ld	a3, -24(s0)
8020179e: 83 35 04 ff  	ld	a1, -16(s0)
802017a2: 89 ce        	beqz	a3, 0x802017bc <.LBB220_31+0x78>
802017a4: 01 46        	li	a2, 0
802017a6: 63 9c 56 01  	bne	a3, s5, 0x802017be <.LBB220_31+0x7a>
802017aa: 92 05        	slli	a1, a1, 4
802017ac: aa 95        	add	a1, a1, a0
802017ae: 90 65        	ld	a2, 8(a1)
802017b0: 63 04 66 01  	beq	a2, s6, 0x802017b8 <.LBB220_31+0x74>
802017b4: 01 46        	li	a2, 0
802017b6: 21 a0        	j	0x802017be <.LBB220_31+0x7a>
802017b8: 8c 61        	ld	a1, 0(a1)
802017ba: 8c 61        	ld	a1, 0(a1)
802017bc: 05 46        	li	a2, 1
802017be: 32 f0        	sd	a2, 32(sp)
802017c0: 2e f4        	sd	a1, 40(sp)
802017c2: 0c 6c        	ld	a1, 24(s0)
802017c4: 92 05        	slli	a1, a1, 4
802017c6: 2e 95        	add	a0, a0, a1
802017c8: 10 65        	ld	a2, 8(a0)
802017ca: 08 61        	ld	a0, 0(a0)
802017cc: 8a 85        	mv	a1, sp
802017ce: 02 96        	jalr	a2
802017d0: 59 e5        	bnez	a0, 0x8020185e <.LBB220_31+0x11a>
802017d2: c1 04        	addi	s1, s1, 16
802017d4: 13 0a 8a fc  	addi	s4, s4, -56
802017d8: 13 04 84 03  	addi	s0, s0, 56
802017dc: e3 18 0a f6  	bnez	s4, 0x8020174c <.LBB220_31+0x8>
802017e0: 81 a8        	j	0x80201830 <.LBB220_31+0xec>
802017e2: 03 b5 89 02  	ld	a0, 40(s3)
802017e6: 31 c9        	beqz	a0, 0x8020183a <.LBB220_31+0xf6>
802017e8: 83 b5 09 02  	ld	a1, 32(s3)
802017ec: 03 b6 09 01  	ld	a2, 16(s3)
802017f0: 93 06 f5 ff  	addi	a3, a0, -1
802017f4: 92 06        	slli	a3, a3, 4
802017f6: 91 82        	srli	a3, a3, 4
802017f8: 13 89 16 00  	addi	s2, a3, 1
802017fc: 13 04 86 00  	addi	s0, a2, 8
80201800: 13 1a 45 00  	slli	s4, a0, 4
80201804: 93 84 85 00  	addi	s1, a1, 8
80201808: 10 60        	ld	a2, 0(s0)
8020180a: 01 ca        	beqz	a2, 0x8020181a <.LBB220_31+0xd6>
8020180c: a2 66        	ld	a3, 8(sp)
8020180e: 02 65        	ld	a0, 0(sp)
80201810: 83 35 84 ff  	ld	a1, -8(s0)
80201814: 94 6e        	ld	a3, 24(a3)
80201816: 82 96        	jalr	a3
80201818: 39 e1        	bnez	a0, 0x8020185e <.LBB220_31+0x11a>
8020181a: 90 60        	ld	a2, 0(s1)
8020181c: 03 b5 84 ff  	ld	a0, -8(s1)
80201820: 8a 85        	mv	a1, sp
80201822: 02 96        	jalr	a2
80201824: 0d ed        	bnez	a0, 0x8020185e <.LBB220_31+0x11a>
80201826: 41 04        	addi	s0, s0, 16
80201828: 41 1a        	addi	s4, s4, -16
8020182a: c1 04        	addi	s1, s1, 16
8020182c: e3 1e 0a fc  	bnez	s4, 0x80201808 <.LBB220_31+0xc4>
80201830: 03 b5 89 01  	ld	a0, 24(s3)
80201834: 63 68 a9 00  	bltu	s2, a0, 0x80201844 <.LBB220_31+0x100>
80201838: 2d a0        	j	0x80201862 <.LBB220_31+0x11e>
8020183a: 01 49        	li	s2, 0
8020183c: 03 b5 89 01  	ld	a0, 24(s3)
80201840: 63 71 a9 02  	bgeu	s2, a0, 0x80201862 <.LBB220_31+0x11e>
80201844: 03 b5 09 01  	ld	a0, 16(s3)
80201848: 93 15 49 00  	slli	a1, s2, 4
8020184c: 33 06 b5 00  	add	a2, a0, a1
80201850: a2 66        	ld	a3, 8(sp)
80201852: 02 65        	ld	a0, 0(sp)
80201854: 0c 62        	ld	a1, 0(a2)
80201856: 10 66        	ld	a2, 8(a2)
80201858: 94 6e        	ld	a3, 24(a3)
8020185a: 82 96        	jalr	a3
8020185c: 19 c1        	beqz	a0, 0x80201862 <.LBB220_31+0x11e>
8020185e: 05 45        	li	a0, 1
80201860: 11 a0        	j	0x80201864 <.LBB220_31+0x120>
80201862: 01 45        	li	a0, 0
80201864: e6 70        	ld	ra, 120(sp)
80201866: 46 74        	ld	s0, 112(sp)
80201868: a6 74        	ld	s1, 104(sp)
8020186a: 06 79        	ld	s2, 96(sp)
8020186c: e6 69        	ld	s3, 88(sp)
8020186e: 46 6a        	ld	s4, 80(sp)
80201870: a6 6a        	ld	s5, 72(sp)
80201872: 06 6b        	ld	s6, 64(sp)
80201874: 09 61        	addi	sp, sp, 128
80201876: 82 80        	ret

0000000080201878 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80201878: 59 71        	addi	sp, sp, -112
8020187a: 86 f4        	sd	ra, 104(sp)
8020187c: a2 f0        	sd	s0, 96(sp)
8020187e: a6 ec        	sd	s1, 88(sp)
80201880: ca e8        	sd	s2, 80(sp)
80201882: ce e4        	sd	s3, 72(sp)
80201884: d2 e0        	sd	s4, 64(sp)
80201886: 56 fc        	sd	s5, 56(sp)
80201888: 5a f8        	sd	s6, 48(sp)
8020188a: 5e f4        	sd	s7, 40(sp)
8020188c: 62 f0        	sd	s8, 32(sp)
8020188e: 66 ec        	sd	s9, 24(sp)
80201890: 6a e8        	sd	s10, 16(sp)
80201892: 6e e4        	sd	s11, 8(sp)
80201894: be 89        	mv	s3, a5
80201896: 3a 89        	mv	s2, a4
80201898: 36 8b        	mv	s6, a3
8020189a: 32 8a        	mv	s4, a2
8020189c: 2a 8c        	mv	s8, a0
8020189e: b9 c1        	beqz	a1, 0x802018e4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
802018a0: 03 64 0c 03  	lwu	s0, 48(s8)
802018a4: 13 75 14 00  	andi	a0, s0, 1
802018a8: b7 0a 11 00  	lui	s5, 272
802018ac: 19 c1        	beqz	a0, 0x802018b2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
802018ae: 93 0a b0 02  	li	s5, 43
802018b2: b3 0c 35 01  	add	s9, a0, s3
802018b6: 13 75 44 00  	andi	a0, s0, 4
802018ba: 15 cd        	beqz	a0, 0x802018f6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
802018bc: 13 05 00 02  	li	a0, 32
802018c0: 63 70 ab 04  	bgeu	s6, a0, 0x80201900 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
802018c4: 01 45        	li	a0, 0
802018c6: 63 03 0b 04  	beqz	s6, 0x8020190c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
802018ca: da 85        	mv	a1, s6
802018cc: 52 86        	mv	a2, s4
802018ce: 83 06 06 00  	lb	a3, 0(a2)
802018d2: 05 06        	addi	a2, a2, 1
802018d4: 93 a6 06 fc  	slti	a3, a3, -64
802018d8: 93 c6 16 00  	xori	a3, a3, 1
802018dc: fd 15        	addi	a1, a1, -1
802018de: 36 95        	add	a0, a0, a3
802018e0: fd f5        	bnez	a1, 0x802018ce <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
802018e2: 2d a0        	j	0x8020190c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
802018e4: 03 24 0c 03  	lw	s0, 48(s8)
802018e8: 93 8c 19 00  	addi	s9, s3, 1
802018ec: 93 0a d0 02  	li	s5, 45
802018f0: 13 75 44 00  	andi	a0, s0, 4
802018f4: 61 f5        	bnez	a0, 0x802018bc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
802018f6: 01 4a        	li	s4, 0
802018f8: 03 35 0c 01  	ld	a0, 16(s8)
802018fc: 01 ed        	bnez	a0, 0x80201914 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
802018fe: 99 a0        	j	0x80201944 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201900: 52 85        	mv	a0, s4
80201902: da 85        	mv	a1, s6
80201904: 97 00 00 00  	auipc	ra, 0
80201908: e7 80 c0 44  	jalr	1100(ra)
8020190c: aa 9c        	add	s9, s9, a0
8020190e: 03 35 0c 01  	ld	a0, 16(s8)
80201912: 0d c9        	beqz	a0, 0x80201944 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201914: 03 3d 8c 01  	ld	s10, 24(s8)
80201918: 63 f6 ac 03  	bgeu	s9, s10, 0x80201944 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020191c: 13 75 84 00  	andi	a0, s0, 8
80201920: 41 e5        	bnez	a0, 0x802019a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80201922: 83 45 8c 03  	lbu	a1, 56(s8)
80201926: 0d 46        	li	a2, 3
80201928: 05 45        	li	a0, 1
8020192a: 63 83 c5 00  	beq	a1, a2, 0x80201930 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
8020192e: 2e 85        	mv	a0, a1
80201930: 93 75 35 00  	andi	a1, a0, 3
80201934: 33 05 9d 41  	sub	a0, s10, s9
80201938: e1 c1        	beqz	a1, 0x802019f8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
8020193a: 05 46        	li	a2, 1
8020193c: 63 91 c5 0c  	bne	a1, a2, 0x802019fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80201940: 01 4d        	li	s10, 0
80201942: d9 a0        	j	0x80201a08 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80201944: 03 34 0c 00  	ld	s0, 0(s8)
80201948: 83 34 8c 00  	ld	s1, 8(s8)
8020194c: 22 85        	mv	a0, s0
8020194e: a6 85        	mv	a1, s1
80201950: 56 86        	mv	a2, s5
80201952: d2 86        	mv	a3, s4
80201954: 5a 87        	mv	a4, s6
80201956: 97 00 00 00  	auipc	ra, 0
8020195a: e7 80 00 14  	jalr	320(ra)
8020195e: 85 4b        	li	s7, 1
80201960: 0d c1        	beqz	a0, 0x80201982 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80201962: 5e 85        	mv	a0, s7
80201964: a6 70        	ld	ra, 104(sp)
80201966: 06 74        	ld	s0, 96(sp)
80201968: e6 64        	ld	s1, 88(sp)
8020196a: 46 69        	ld	s2, 80(sp)
8020196c: a6 69        	ld	s3, 72(sp)
8020196e: 06 6a        	ld	s4, 64(sp)
80201970: e2 7a        	ld	s5, 56(sp)
80201972: 42 7b        	ld	s6, 48(sp)
80201974: a2 7b        	ld	s7, 40(sp)
80201976: 02 7c        	ld	s8, 32(sp)
80201978: e2 6c        	ld	s9, 24(sp)
8020197a: 42 6d        	ld	s10, 16(sp)
8020197c: a2 6d        	ld	s11, 8(sp)
8020197e: 65 61        	addi	sp, sp, 112
80201980: 82 80        	ret
80201982: 9c 6c        	ld	a5, 24(s1)
80201984: 22 85        	mv	a0, s0
80201986: ca 85        	mv	a1, s2
80201988: 4e 86        	mv	a2, s3
8020198a: a6 70        	ld	ra, 104(sp)
8020198c: 06 74        	ld	s0, 96(sp)
8020198e: e6 64        	ld	s1, 88(sp)
80201990: 46 69        	ld	s2, 80(sp)
80201992: a6 69        	ld	s3, 72(sp)
80201994: 06 6a        	ld	s4, 64(sp)
80201996: e2 7a        	ld	s5, 56(sp)
80201998: 42 7b        	ld	s6, 48(sp)
8020199a: a2 7b        	ld	s7, 40(sp)
8020199c: 02 7c        	ld	s8, 32(sp)
8020199e: e2 6c        	ld	s9, 24(sp)
802019a0: 42 6d        	ld	s10, 16(sp)
802019a2: a2 6d        	ld	s11, 8(sp)
802019a4: 65 61        	addi	sp, sp, 112
802019a6: 82 87        	jr	a5
802019a8: 03 24 4c 03  	lw	s0, 52(s8)
802019ac: 13 05 00 03  	li	a0, 48
802019b0: 83 45 8c 03  	lbu	a1, 56(s8)
802019b4: 2e e0        	sd	a1, 0(sp)
802019b6: 83 3d 0c 00  	ld	s11, 0(s8)
802019ba: 83 34 8c 00  	ld	s1, 8(s8)
802019be: 23 2a ac 02  	sw	a0, 52(s8)
802019c2: 85 4b        	li	s7, 1
802019c4: 23 0c 7c 03  	sb	s7, 56(s8)
802019c8: 6e 85        	mv	a0, s11
802019ca: a6 85        	mv	a1, s1
802019cc: 56 86        	mv	a2, s5
802019ce: d2 86        	mv	a3, s4
802019d0: 5a 87        	mv	a4, s6
802019d2: 97 00 00 00  	auipc	ra, 0
802019d6: e7 80 40 0c  	jalr	196(ra)
802019da: 41 f5        	bnez	a0, 0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802019dc: 22 8a        	mv	s4, s0
802019de: 33 05 9d 41  	sub	a0, s10, s9
802019e2: 13 04 15 00  	addi	s0, a0, 1
802019e6: 7d 14        	addi	s0, s0, -1
802019e8: 49 c4        	beqz	s0, 0x80201a72 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
802019ea: 90 70        	ld	a2, 32(s1)
802019ec: 93 05 00 03  	li	a1, 48
802019f0: 6e 85        	mv	a0, s11
802019f2: 02 96        	jalr	a2
802019f4: 6d d9        	beqz	a0, 0x802019e6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
802019f6: b5 b7        	j	0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802019f8: 2a 8d        	mv	s10, a0
802019fa: 2e 85        	mv	a0, a1
802019fc: 31 a0        	j	0x80201a08 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
802019fe: 93 05 15 00  	addi	a1, a0, 1
80201a02: 05 81        	srli	a0, a0, 1
80201a04: 13 dd 15 00  	srli	s10, a1, 1
80201a08: 83 3c 0c 00  	ld	s9, 0(s8)
80201a0c: 83 3d 8c 00  	ld	s11, 8(s8)
80201a10: 03 24 4c 03  	lw	s0, 52(s8)
80201a14: 93 04 15 00  	addi	s1, a0, 1
80201a18: fd 14        	addi	s1, s1, -1
80201a1a: 89 c8        	beqz	s1, 0x80201a2c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80201a1c: 03 b6 0d 02  	ld	a2, 32(s11)
80201a20: 66 85        	mv	a0, s9
80201a22: a2 85        	mv	a1, s0
80201a24: 02 96        	jalr	a2
80201a26: 6d d9        	beqz	a0, 0x80201a18 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80201a28: 85 4b        	li	s7, 1
80201a2a: 25 bf        	j	0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a2c: 37 05 11 00  	lui	a0, 272
80201a30: 85 4b        	li	s7, 1
80201a32: e3 08 a4 f2  	beq	s0, a0, 0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a36: 66 85        	mv	a0, s9
80201a38: ee 85        	mv	a1, s11
80201a3a: 56 86        	mv	a2, s5
80201a3c: d2 86        	mv	a3, s4
80201a3e: 5a 87        	mv	a4, s6
80201a40: 97 00 00 00  	auipc	ra, 0
80201a44: e7 80 60 05  	jalr	86(ra)
80201a48: 09 fd        	bnez	a0, 0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a4a: 83 b6 8d 01  	ld	a3, 24(s11)
80201a4e: 66 85        	mv	a0, s9
80201a50: ca 85        	mv	a1, s2
80201a52: 4e 86        	mv	a2, s3
80201a54: 82 96        	jalr	a3
80201a56: 11 f5        	bnez	a0, 0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a58: 81 44        	li	s1, 0
80201a5a: 63 0a 9d 02  	beq	s10, s1, 0x80201a8e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80201a5e: 03 b6 0d 02  	ld	a2, 32(s11)
80201a62: 85 04        	addi	s1, s1, 1
80201a64: 66 85        	mv	a0, s9
80201a66: a2 85        	mv	a1, s0
80201a68: 02 96        	jalr	a2
80201a6a: 65 d9        	beqz	a0, 0x80201a5a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80201a6c: 13 85 f4 ff  	addi	a0, s1, -1
80201a70: 05 a0        	j	0x80201a90 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80201a72: 94 6c        	ld	a3, 24(s1)
80201a74: 6e 85        	mv	a0, s11
80201a76: ca 85        	mv	a1, s2
80201a78: 4e 86        	mv	a2, s3
80201a7a: 82 96        	jalr	a3
80201a7c: e3 13 05 ee  	bnez	a0, 0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a80: 81 4b        	li	s7, 0
80201a82: 23 2a 4c 03  	sw	s4, 52(s8)
80201a86: 02 65        	ld	a0, 0(sp)
80201a88: 23 0c ac 02  	sb	a0, 56(s8)
80201a8c: d9 bd        	j	0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201a8e: 6a 85        	mv	a0, s10
80201a90: b3 3b a5 01  	sltu	s7, a0, s10
80201a94: f9 b5        	j	0x80201962 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080201a96 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80201a96: 79 71        	addi	sp, sp, -48
80201a98: 06 f4        	sd	ra, 40(sp)
80201a9a: 22 f0        	sd	s0, 32(sp)
80201a9c: 26 ec        	sd	s1, 24(sp)
80201a9e: 4a e8        	sd	s2, 16(sp)
80201aa0: 4e e4        	sd	s3, 8(sp)
80201aa2: 9b 07 06 00  	sext.w	a5, a2
80201aa6: 37 08 11 00  	lui	a6, 272
80201aaa: 3a 89        	mv	s2, a4
80201aac: b6 84        	mv	s1, a3
80201aae: 2e 84        	mv	s0, a1
80201ab0: aa 89        	mv	s3, a0
80201ab2: 63 89 07 01  	beq	a5, a6, 0x80201ac4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80201ab6: 14 70        	ld	a3, 32(s0)
80201ab8: 4e 85        	mv	a0, s3
80201aba: b2 85        	mv	a1, a2
80201abc: 82 96        	jalr	a3
80201abe: aa 85        	mv	a1, a0
80201ac0: 05 45        	li	a0, 1
80201ac2: 91 ed        	bnez	a1, 0x80201ade <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80201ac4: 81 cc        	beqz	s1, 0x80201adc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80201ac6: 1c 6c        	ld	a5, 24(s0)
80201ac8: 4e 85        	mv	a0, s3
80201aca: a6 85        	mv	a1, s1
80201acc: 4a 86        	mv	a2, s2
80201ace: a2 70        	ld	ra, 40(sp)
80201ad0: 02 74        	ld	s0, 32(sp)
80201ad2: e2 64        	ld	s1, 24(sp)
80201ad4: 42 69        	ld	s2, 16(sp)
80201ad6: a2 69        	ld	s3, 8(sp)
80201ad8: 45 61        	addi	sp, sp, 48
80201ada: 82 87        	jr	a5
80201adc: 01 45        	li	a0, 0
80201ade: a2 70        	ld	ra, 40(sp)
80201ae0: 02 74        	ld	s0, 32(sp)
80201ae2: e2 64        	ld	s1, 24(sp)
80201ae4: 42 69        	ld	s2, 16(sp)
80201ae6: a2 69        	ld	s3, 8(sp)
80201ae8: 45 61        	addi	sp, sp, 48
80201aea: 82 80        	ret

0000000080201aec <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80201aec: 5d 71        	addi	sp, sp, -80
80201aee: 86 e4        	sd	ra, 72(sp)
80201af0: a2 e0        	sd	s0, 64(sp)
80201af2: 26 fc        	sd	s1, 56(sp)
80201af4: 4a f8        	sd	s2, 48(sp)
80201af6: 4e f4        	sd	s3, 40(sp)
80201af8: 52 f0        	sd	s4, 32(sp)
80201afa: 56 ec        	sd	s5, 24(sp)
80201afc: 5a e8        	sd	s6, 16(sp)
80201afe: 5e e4        	sd	s7, 8(sp)
80201b00: 2a 8a        	mv	s4, a0
80201b02: 83 32 05 01  	ld	t0, 16(a0)
80201b06: 08 71        	ld	a0, 32(a0)
80201b08: 93 86 f2 ff  	addi	a3, t0, -1
80201b0c: b3 36 d0 00  	snez	a3, a3
80201b10: 13 07 f5 ff  	addi	a4, a0, -1
80201b14: 33 37 e0 00  	snez	a4, a4
80201b18: f9 8e        	and	a3, a3, a4
80201b1a: b2 89        	mv	s3, a2
80201b1c: 2e 89        	mv	s2, a1
80201b1e: 63 9d 06 16  	bnez	a3, 0x80201c98 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201b22: 85 45        	li	a1, 1
80201b24: 63 18 b5 10  	bne	a0, a1, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b28: 03 35 8a 02  	ld	a0, 40(s4)
80201b2c: 81 45        	li	a1, 0
80201b2e: b3 06 39 01  	add	a3, s2, s3
80201b32: 13 07 15 00  	addi	a4, a0, 1
80201b36: 37 03 11 00  	lui	t1, 272
80201b3a: 93 08 f0 0d  	li	a7, 223
80201b3e: 13 08 00 0f  	li	a6, 240
80201b42: 4a 86        	mv	a2, s2
80201b44: 01 a8        	j	0x80201b54 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80201b46: 13 05 16 00  	addi	a0, a2, 1
80201b4a: 91 8d        	sub	a1, a1, a2
80201b4c: aa 95        	add	a1, a1, a0
80201b4e: 2a 86        	mv	a2, a0
80201b50: 63 02 64 0e  	beq	s0, t1, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b54: 7d 17        	addi	a4, a4, -1
80201b56: 25 c7        	beqz	a4, 0x80201bbe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80201b58: 63 0e d6 0c  	beq	a2, a3, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b5c: 03 05 06 00  	lb	a0, 0(a2)
80201b60: 13 74 f5 0f  	andi	s0, a0, 255
80201b64: e3 51 05 fe  	bgez	a0, 0x80201b46 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80201b68: 03 45 16 00  	lbu	a0, 1(a2)
80201b6c: 93 77 f4 01  	andi	a5, s0, 31
80201b70: 93 74 f5 03  	andi	s1, a0, 63
80201b74: 63 f9 88 02  	bgeu	a7, s0, 0x80201ba6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80201b78: 03 45 26 00  	lbu	a0, 2(a2)
80201b7c: 9a 04        	slli	s1, s1, 6
80201b7e: 13 75 f5 03  	andi	a0, a0, 63
80201b82: c9 8c        	or	s1, s1, a0
80201b84: 63 67 04 03  	bltu	s0, a6, 0x80201bb2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80201b88: 03 45 36 00  	lbu	a0, 3(a2)
80201b8c: f6 17        	slli	a5, a5, 61
80201b8e: ad 93        	srli	a5, a5, 43
80201b90: 9a 04        	slli	s1, s1, 6
80201b92: 13 75 f5 03  	andi	a0, a0, 63
80201b96: 45 8d        	or	a0, a0, s1
80201b98: 33 64 f5 00  	or	s0, a0, a5
80201b9c: 63 0c 64 08  	beq	s0, t1, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201ba0: 13 05 46 00  	addi	a0, a2, 4
80201ba4: 5d b7        	j	0x80201b4a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201ba6: 13 05 26 00  	addi	a0, a2, 2
80201baa: 9a 07        	slli	a5, a5, 6
80201bac: 33 e4 97 00  	or	s0, a5, s1
80201bb0: 69 bf        	j	0x80201b4a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201bb2: 13 05 36 00  	addi	a0, a2, 3
80201bb6: b2 07        	slli	a5, a5, 12
80201bb8: 33 e4 f4 00  	or	s0, s1, a5
80201bbc: 79 b7        	j	0x80201b4a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201bbe: 63 0b d6 06  	beq	a2, a3, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201bc2: 03 05 06 00  	lb	a0, 0(a2)
80201bc6: 63 53 05 04  	bgez	a0, 0x80201c0c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201bca: 13 75 f5 0f  	andi	a0, a0, 255
80201bce: 93 06 00 0e  	li	a3, 224
80201bd2: 63 6d d5 02  	bltu	a0, a3, 0x80201c0c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201bd6: 93 06 00 0f  	li	a3, 240
80201bda: 63 69 d5 02  	bltu	a0, a3, 0x80201c0c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201bde: 83 46 16 00  	lbu	a3, 1(a2)
80201be2: 03 47 26 00  	lbu	a4, 2(a2)
80201be6: 93 f6 f6 03  	andi	a3, a3, 63
80201bea: 13 77 f7 03  	andi	a4, a4, 63
80201bee: 03 46 36 00  	lbu	a2, 3(a2)
80201bf2: 76 15        	slli	a0, a0, 61
80201bf4: 2d 91        	srli	a0, a0, 43
80201bf6: b2 06        	slli	a3, a3, 12
80201bf8: 1a 07        	slli	a4, a4, 6
80201bfa: d9 8e        	or	a3, a3, a4
80201bfc: 13 76 f6 03  	andi	a2, a2, 63
80201c00: 55 8e        	or	a2, a2, a3
80201c02: 51 8d        	or	a0, a0, a2
80201c04: 37 06 11 00  	lui	a2, 272
80201c08: 63 06 c5 02  	beq	a0, a2, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201c0c: 85 c1        	beqz	a1, 0x80201c2c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80201c0e: 63 fd 35 01  	bgeu	a1, s3, 0x80201c28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80201c12: 33 05 b9 00  	add	a0, s2, a1
80201c16: 03 05 05 00  	lb	a0, 0(a0)
80201c1a: 13 06 00 fc  	li	a2, -64
80201c1e: 63 57 c5 00  	bge	a0, a2, 0x80201c2c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80201c22: 01 45        	li	a0, 0
80201c24: 11 e5        	bnez	a0, 0x80201c30 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80201c26: 39 a0        	j	0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201c28: e3 9d 35 ff  	bne	a1, s3, 0x80201c22 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80201c2c: 4a 85        	mv	a0, s2
80201c2e: 19 c1        	beqz	a0, 0x80201c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201c30: ae 89        	mv	s3, a1
80201c32: 2a 89        	mv	s2, a0
80201c34: 63 82 02 06  	beqz	t0, 0x80201c98 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201c38: 03 34 8a 01  	ld	s0, 24(s4)
80201c3c: 13 05 00 02  	li	a0, 32
80201c40: 63 f4 a9 04  	bgeu	s3, a0, 0x80201c88 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80201c44: 01 45        	li	a0, 0
80201c46: 63 8e 09 00  	beqz	s3, 0x80201c62 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80201c4a: ce 85        	mv	a1, s3
80201c4c: 4a 86        	mv	a2, s2
80201c4e: 83 06 06 00  	lb	a3, 0(a2)
80201c52: 05 06        	addi	a2, a2, 1
80201c54: 93 a6 06 fc  	slti	a3, a3, -64
80201c58: 93 c6 16 00  	xori	a3, a3, 1
80201c5c: fd 15        	addi	a1, a1, -1
80201c5e: 36 95        	add	a0, a0, a3
80201c60: fd f5        	bnez	a1, 0x80201c4e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80201c62: 63 7b 85 02  	bgeu	a0, s0, 0x80201c98 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201c66: 83 45 8a 03  	lbu	a1, 56(s4)
80201c6a: 8d 46        	li	a3, 3
80201c6c: 01 46        	li	a2, 0
80201c6e: 63 83 d5 00  	beq	a1, a3, 0x80201c74 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80201c72: 2e 86        	mv	a2, a1
80201c74: 93 75 36 00  	andi	a1, a2, 3
80201c78: 33 05 a4 40  	sub	a0, s0, a0
80201c7c: a1 c1        	beqz	a1, 0x80201cbc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80201c7e: 05 46        	li	a2, 1
80201c80: 63 91 c5 04  	bne	a1, a2, 0x80201cc2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80201c84: 81 4a        	li	s5, 0
80201c86: 99 a0        	j	0x80201ccc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80201c88: 4a 85        	mv	a0, s2
80201c8a: ce 85        	mv	a1, s3
80201c8c: 97 00 00 00  	auipc	ra, 0
80201c90: e7 80 40 0c  	jalr	196(ra)
80201c94: e3 69 85 fc  	bltu	a0, s0, 0x80201c66 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80201c98: 83 35 8a 00  	ld	a1, 8(s4)
80201c9c: 03 35 0a 00  	ld	a0, 0(s4)
80201ca0: 9c 6d        	ld	a5, 24(a1)
80201ca2: ca 85        	mv	a1, s2
80201ca4: 4e 86        	mv	a2, s3
80201ca6: a6 60        	ld	ra, 72(sp)
80201ca8: 06 64        	ld	s0, 64(sp)
80201caa: e2 74        	ld	s1, 56(sp)
80201cac: 42 79        	ld	s2, 48(sp)
80201cae: a2 79        	ld	s3, 40(sp)
80201cb0: 02 7a        	ld	s4, 32(sp)
80201cb2: e2 6a        	ld	s5, 24(sp)
80201cb4: 42 6b        	ld	s6, 16(sp)
80201cb6: a2 6b        	ld	s7, 8(sp)
80201cb8: 61 61        	addi	sp, sp, 80
80201cba: 82 87        	jr	a5
80201cbc: aa 8a        	mv	s5, a0
80201cbe: 2e 85        	mv	a0, a1
80201cc0: 31 a0        	j	0x80201ccc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80201cc2: 93 05 15 00  	addi	a1, a0, 1
80201cc6: 05 81        	srli	a0, a0, 1
80201cc8: 93 da 15 00  	srli	s5, a1, 1
80201ccc: 03 3b 0a 00  	ld	s6, 0(s4)
80201cd0: 83 3b 8a 00  	ld	s7, 8(s4)
80201cd4: 83 24 4a 03  	lw	s1, 52(s4)
80201cd8: 13 04 15 00  	addi	s0, a0, 1
80201cdc: 7d 14        	addi	s0, s0, -1
80201cde: 09 c8        	beqz	s0, 0x80201cf0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80201ce0: 03 b6 0b 02  	ld	a2, 32(s7)
80201ce4: 5a 85        	mv	a0, s6
80201ce6: a6 85        	mv	a1, s1
80201ce8: 02 96        	jalr	a2
80201cea: 6d d9        	beqz	a0, 0x80201cdc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80201cec: 05 4a        	li	s4, 1
80201cee: 2d a8        	j	0x80201d28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201cf0: 37 05 11 00  	lui	a0, 272
80201cf4: 05 4a        	li	s4, 1
80201cf6: 63 89 a4 02  	beq	s1, a0, 0x80201d28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201cfa: 83 b6 8b 01  	ld	a3, 24(s7)
80201cfe: 5a 85        	mv	a0, s6
80201d00: ca 85        	mv	a1, s2
80201d02: 4e 86        	mv	a2, s3
80201d04: 82 96        	jalr	a3
80201d06: 0d e1        	bnez	a0, 0x80201d28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201d08: 01 44        	li	s0, 0
80201d0a: 63 8c 8a 00  	beq	s5, s0, 0x80201d22 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80201d0e: 03 b6 0b 02  	ld	a2, 32(s7)
80201d12: 05 04        	addi	s0, s0, 1
80201d14: 5a 85        	mv	a0, s6
80201d16: a6 85        	mv	a1, s1
80201d18: 02 96        	jalr	a2
80201d1a: 65 d9        	beqz	a0, 0x80201d0a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80201d1c: 13 05 f4 ff  	addi	a0, s0, -1
80201d20: 11 a0        	j	0x80201d24 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80201d22: 56 85        	mv	a0, s5
80201d24: 33 3a 55 01  	sltu	s4, a0, s5
80201d28: 52 85        	mv	a0, s4
80201d2a: a6 60        	ld	ra, 72(sp)
80201d2c: 06 64        	ld	s0, 64(sp)
80201d2e: e2 74        	ld	s1, 56(sp)
80201d30: 42 79        	ld	s2, 48(sp)
80201d32: a2 79        	ld	s3, 40(sp)
80201d34: 02 7a        	ld	s4, 32(sp)
80201d36: e2 6a        	ld	s5, 24(sp)
80201d38: 42 6b        	ld	s6, 16(sp)
80201d3a: a2 6b        	ld	s7, 8(sp)
80201d3c: 61 61        	addi	sp, sp, 80
80201d3e: 82 80        	ret

0000000080201d40 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80201d40: ae 86        	mv	a3, a1
80201d42: aa 85        	mv	a1, a0
80201d44: 32 85        	mv	a0, a2
80201d46: 36 86        	mv	a2, a3
80201d48: 17 03 00 00  	auipc	t1, 0
80201d4c: 67 00 43 da  	jr	-604(t1)

0000000080201d50 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80201d50: 2a 86        	mv	a2, a0
80201d52: 1d 05        	addi	a0, a0, 7
80201d54: 13 77 85 ff  	andi	a4, a0, -8
80201d58: b3 08 c7 40  	sub	a7, a4, a2
80201d5c: 63 ec 15 01  	bltu	a1, a7, 0x80201d74 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80201d60: 33 88 15 41  	sub	a6, a1, a7
80201d64: 13 35 88 00  	sltiu	a0, a6, 8
80201d68: 93 b7 98 00  	sltiu	a5, a7, 9
80201d6c: 93 c7 17 00  	xori	a5, a5, 1
80201d70: 5d 8d        	or	a0, a0, a5
80201d72: 11 cd        	beqz	a0, 0x80201d8e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80201d74: 01 45        	li	a0, 0
80201d76: 99 c9        	beqz	a1, 0x80201d8c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80201d78: 83 06 06 00  	lb	a3, 0(a2)
80201d7c: 05 06        	addi	a2, a2, 1
80201d7e: 93 a6 06 fc  	slti	a3, a3, -64
80201d82: 93 c6 16 00  	xori	a3, a3, 1
80201d86: fd 15        	addi	a1, a1, -1
80201d88: 36 95        	add	a0, a0, a3
80201d8a: fd f5        	bnez	a1, 0x80201d78 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80201d8c: 82 80        	ret
80201d8e: 93 75 78 00  	andi	a1, a6, 7
80201d92: 81 47        	li	a5, 0
80201d94: 63 0f c7 00  	beq	a4, a2, 0x80201db2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80201d98: 33 07 e6 40  	sub	a4, a2, a4
80201d9c: 32 85        	mv	a0, a2
80201d9e: 83 06 05 00  	lb	a3, 0(a0)
80201da2: 05 05        	addi	a0, a0, 1
80201da4: 93 a6 06 fc  	slti	a3, a3, -64
80201da8: 93 c6 16 00  	xori	a3, a3, 1
80201dac: 05 07        	addi	a4, a4, 1
80201dae: b6 97        	add	a5, a5, a3
80201db0: 7d f7        	bnez	a4, 0x80201d9e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80201db2: b3 02 16 01  	add	t0, a2, a7
80201db6: 01 46        	li	a2, 0
80201db8: 99 cd        	beqz	a1, 0x80201dd6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80201dba: 13 75 88 ff  	andi	a0, a6, -8
80201dbe: b3 86 a2 00  	add	a3, t0, a0
80201dc2: 03 85 06 00  	lb	a0, 0(a3)
80201dc6: 85 06        	addi	a3, a3, 1
80201dc8: 13 25 05 fc  	slti	a0, a0, -64
80201dcc: 13 45 15 00  	xori	a0, a0, 1
80201dd0: fd 15        	addi	a1, a1, -1
80201dd2: 2a 96        	add	a2, a2, a0
80201dd4: fd f5        	bnez	a1, 0x80201dc2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80201dd6: 13 57 38 00  	srli	a4, a6, 3

0000000080201dda <.LBB292_27>:
80201dda: 17 25 00 00  	auipc	a0, 2
80201dde: 13 05 65 3e  	addi	a0, a0, 998
80201de2: 03 3f 05 00  	ld	t5, 0(a0)

0000000080201de6 <.LBB292_28>:
80201de6: 17 25 00 00  	auipc	a0, 2
80201dea: 13 05 25 3e  	addi	a0, a0, 994
80201dee: 83 38 05 00  	ld	a7, 0(a0)
80201df2: 37 15 00 10  	lui	a0, 65537
80201df6: 12 05        	slli	a0, a0, 4
80201df8: 05 05        	addi	a0, a0, 1
80201dfa: 42 05        	slli	a0, a0, 16
80201dfc: 13 08 15 00  	addi	a6, a0, 1
80201e00: 33 05 f6 00  	add	a0, a2, a5
80201e04: 25 a0        	j	0x80201e2c <.LBB292_28+0x46>
80201e06: 13 16 3e 00  	slli	a2, t3, 3
80201e0a: b3 02 c3 00  	add	t0, t1, a2
80201e0e: 33 87 c3 41  	sub	a4, t2, t3
80201e12: 13 76 3e 00  	andi	a2, t3, 3
80201e16: b3 f6 15 01  	and	a3, a1, a7
80201e1a: a1 81        	srli	a1, a1, 8
80201e1c: b3 f5 15 01  	and	a1, a1, a7
80201e20: b6 95        	add	a1, a1, a3
80201e22: b3 85 05 03  	mul	a1, a1, a6
80201e26: c1 91        	srli	a1, a1, 48
80201e28: 2e 95        	add	a0, a0, a1
80201e2a: 41 e2        	bnez	a2, 0x80201eaa <.LBB292_28+0xc4>
80201e2c: 25 d3        	beqz	a4, 0x80201d8c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80201e2e: ba 83        	mv	t2, a4
80201e30: 16 83        	mv	t1, t0
80201e32: 93 05 00 0c  	li	a1, 192
80201e36: 3a 8e        	mv	t3, a4
80201e38: 63 64 b7 00  	bltu	a4, a1, 0x80201e40 <.LBB292_28+0x5a>
80201e3c: 13 0e 00 0c  	li	t3, 192
80201e40: 93 75 ce 0f  	andi	a1, t3, 252
80201e44: 13 96 35 00  	slli	a2, a1, 3
80201e48: b3 0e c3 00  	add	t4, t1, a2
80201e4c: cd dd        	beqz	a1, 0x80201e06 <.LBB292_28+0x20>
80201e4e: 81 45        	li	a1, 0
80201e50: 1a 86        	mv	a2, t1
80201e52: 55 da        	beqz	a2, 0x80201e06 <.LBB292_28+0x20>
80201e54: 18 62        	ld	a4, 0(a2)
80201e56: 93 47 f7 ff  	not	a5, a4
80201e5a: 9d 83        	srli	a5, a5, 7
80201e5c: 19 83        	srli	a4, a4, 6
80201e5e: 14 66        	ld	a3, 8(a2)
80201e60: 5d 8f        	or	a4, a4, a5
80201e62: 33 77 e7 01  	and	a4, a4, t5
80201e66: ba 95        	add	a1, a1, a4
80201e68: 13 c7 f6 ff  	not	a4, a3
80201e6c: 1d 83        	srli	a4, a4, 7
80201e6e: 99 82        	srli	a3, a3, 6
80201e70: 1c 6a        	ld	a5, 16(a2)
80201e72: d9 8e        	or	a3, a3, a4
80201e74: b3 f6 e6 01  	and	a3, a3, t5
80201e78: b6 95        	add	a1, a1, a3
80201e7a: 93 c6 f7 ff  	not	a3, a5
80201e7e: 9d 82        	srli	a3, a3, 7
80201e80: 13 d7 67 00  	srli	a4, a5, 6
80201e84: 1c 6e        	ld	a5, 24(a2)
80201e86: d9 8e        	or	a3, a3, a4
80201e88: b3 f6 e6 01  	and	a3, a3, t5
80201e8c: b6 95        	add	a1, a1, a3
80201e8e: 93 c6 f7 ff  	not	a3, a5
80201e92: 9d 82        	srli	a3, a3, 7
80201e94: 13 d7 67 00  	srli	a4, a5, 6
80201e98: d9 8e        	or	a3, a3, a4
80201e9a: b3 f6 e6 01  	and	a3, a3, t5
80201e9e: 13 06 06 02  	addi	a2, a2, 32
80201ea2: b6 95        	add	a1, a1, a3
80201ea4: e3 17 d6 fb  	bne	a2, t4, 0x80201e52 <.LBB292_28+0x6c>
80201ea8: b9 bf        	j	0x80201e06 <.LBB292_28+0x20>
80201eaa: 63 0a 03 02  	beqz	t1, 0x80201ede <.LBB292_28+0xf8>
80201eae: 93 05 00 0c  	li	a1, 192
80201eb2: 63 e4 b3 00  	bltu	t2, a1, 0x80201eba <.LBB292_28+0xd4>
80201eb6: 93 03 00 0c  	li	t2, 192
80201eba: 81 45        	li	a1, 0
80201ebc: 13 f6 33 00  	andi	a2, t2, 3
80201ec0: 0e 06        	slli	a2, a2, 3
80201ec2: 83 b6 0e 00  	ld	a3, 0(t4)
80201ec6: a1 0e        	addi	t4, t4, 8
80201ec8: 13 c7 f6 ff  	not	a4, a3
80201ecc: 1d 83        	srli	a4, a4, 7
80201ece: 99 82        	srli	a3, a3, 6
80201ed0: d9 8e        	or	a3, a3, a4
80201ed2: b3 f6 e6 01  	and	a3, a3, t5
80201ed6: 61 16        	addi	a2, a2, -8
80201ed8: b6 95        	add	a1, a1, a3
80201eda: 65 f6        	bnez	a2, 0x80201ec2 <.LBB292_28+0xdc>
80201edc: 11 a0        	j	0x80201ee0 <.LBB292_28+0xfa>
80201ede: 81 45        	li	a1, 0
80201ee0: 33 f6 15 01  	and	a2, a1, a7
80201ee4: a1 81        	srli	a1, a1, 8
80201ee6: b3 f5 15 01  	and	a1, a1, a7
80201eea: b2 95        	add	a1, a1, a2
80201eec: b3 85 05 03  	mul	a1, a1, a6
80201ef0: c1 91        	srli	a1, a1, 48
80201ef2: 2e 95        	add	a0, a0, a1
80201ef4: 82 80        	ret

0000000080201ef6 <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80201ef6: 39 71        	addi	sp, sp, -64
80201ef8: 06 fc        	sd	ra, 56(sp)
80201efa: 22 f8        	sd	s0, 48(sp)
80201efc: 26 f4        	sd	s1, 40(sp)
80201efe: 32 88        	mv	a6, a2
80201f00: 93 56 45 00  	srli	a3, a0, 4
80201f04: 13 07 70 02  	li	a4, 39
80201f08: 93 07 10 27  	li	a5, 625

0000000080201f0c <.LBB580_10>:
80201f0c: 97 1e 00 00  	auipc	t4, 1
80201f10: 93 8e ce 52  	addi	t4, t4, 1324
80201f14: 63 f3 f6 02  	bgeu	a3, a5, 0x80201f3a <.LBB580_10+0x2e>
80201f18: 93 06 30 06  	li	a3, 99
80201f1c: 63 e9 a6 0a  	bltu	a3, a0, 0x80201fce <.LBB580_11+0x92>
80201f20: 29 46        	li	a2, 10
80201f22: 63 77 c5 0e  	bgeu	a0, a2, 0x80202010 <.LBB580_11+0xd4>
80201f26: 93 06 f7 ff  	addi	a3, a4, -1
80201f2a: 13 06 11 00  	addi	a2, sp, 1
80201f2e: 36 96        	add	a2, a2, a3
80201f30: 1b 05 05 03  	addiw	a0, a0, 48
80201f34: 23 00 a6 00  	sb	a0, 0(a2)
80201f38: dd a8        	j	0x8020202e <.LBB580_11+0xf2>
80201f3a: 01 47        	li	a4, 0

0000000080201f3c <.LBB580_11>:
80201f3c: 97 26 00 00  	auipc	a3, 2
80201f40: 93 86 46 2f  	addi	a3, a3, 756
80201f44: 83 b8 06 00  	ld	a7, 0(a3)
80201f48: 89 66        	lui	a3, 2
80201f4a: 9b 83 06 71  	addiw	t2, a3, 1808
80201f4e: 85 66        	lui	a3, 1
80201f50: 1b 8e b6 47  	addiw	t3, a3, 1147
80201f54: 93 02 40 06  	li	t0, 100
80201f58: 13 03 11 00  	addi	t1, sp, 1
80201f5c: b7 e6 f5 05  	lui	a3, 24414
80201f60: 1b 8f f6 0f  	addiw	t5, a3, 255
80201f64: aa 87        	mv	a5, a0
80201f66: 33 35 15 03  	mulhu	a0, a0, a7
80201f6a: 2d 81        	srli	a0, a0, 11
80201f6c: 3b 06 75 02  	mulw	a2, a0, t2
80201f70: 3b 86 c7 40  	subw	a2, a5, a2
80201f74: 93 16 06 03  	slli	a3, a2, 48
80201f78: c9 92        	srli	a3, a3, 50
80201f7a: b3 86 c6 03  	mul	a3, a3, t3
80201f7e: 93 df 16 01  	srli	t6, a3, 17
80201f82: c1 82        	srli	a3, a3, 16
80201f84: 13 f4 e6 7f  	andi	s0, a3, 2046
80201f88: bb 86 5f 02  	mulw	a3, t6, t0
80201f8c: 15 9e        	subw	a2, a2, a3
80201f8e: 46 16        	slli	a2, a2, 49
80201f90: 41 92        	srli	a2, a2, 48
80201f92: b3 86 8e 00  	add	a3, t4, s0
80201f96: 33 04 e3 00  	add	s0, t1, a4
80201f9a: 83 cf 06 00  	lbu	t6, 0(a3)
80201f9e: 83 86 16 00  	lb	a3, 1(a3)
80201fa2: 76 96        	add	a2, a2, t4
80201fa4: 83 04 16 00  	lb	s1, 1(a2)
80201fa8: 03 46 06 00  	lbu	a2, 0(a2)
80201fac: 23 02 d4 02  	sb	a3, 36(s0)
80201fb0: a3 01 f4 03  	sb	t6, 35(s0)
80201fb4: 23 03 94 02  	sb	s1, 38(s0)
80201fb8: a3 02 c4 02  	sb	a2, 37(s0)
80201fbc: 71 17        	addi	a4, a4, -4
80201fbe: e3 63 ff fa  	bltu	t5, a5, 0x80201f64 <.LBB580_11+0x28>
80201fc2: 13 07 77 02  	addi	a4, a4, 39
80201fc6: 93 06 30 06  	li	a3, 99
80201fca: e3 fb a6 f4  	bgeu	a3, a0, 0x80201f20 <.LBB580_10+0x14>
80201fce: 13 16 05 03  	slli	a2, a0, 48
80201fd2: 49 92        	srli	a2, a2, 50
80201fd4: 85 66        	lui	a3, 1
80201fd6: 9b 86 b6 47  	addiw	a3, a3, 1147
80201fda: 33 06 d6 02  	mul	a2, a2, a3
80201fde: 45 82        	srli	a2, a2, 17
80201fe0: 93 06 40 06  	li	a3, 100
80201fe4: bb 06 d6 02  	mulw	a3, a2, a3
80201fe8: 15 9d        	subw	a0, a0, a3
80201fea: 46 15        	slli	a0, a0, 49
80201fec: 41 91        	srli	a0, a0, 48
80201fee: 79 17        	addi	a4, a4, -2
80201ff0: 76 95        	add	a0, a0, t4
80201ff2: 83 06 15 00  	lb	a3, 1(a0)
80201ff6: 03 45 05 00  	lbu	a0, 0(a0)
80201ffa: 93 07 11 00  	addi	a5, sp, 1
80201ffe: ba 97        	add	a5, a5, a4
80202000: a3 80 d7 00  	sb	a3, 1(a5)
80202004: 23 80 a7 00  	sb	a0, 0(a5)
80202008: 32 85        	mv	a0, a2
8020200a: 29 46        	li	a2, 10
8020200c: e3 6d c5 f0  	bltu	a0, a2, 0x80201f26 <.LBB580_10+0x1a>
80202010: 06 05        	slli	a0, a0, 1
80202012: 93 06 e7 ff  	addi	a3, a4, -2
80202016: 76 95        	add	a0, a0, t4
80202018: 03 06 15 00  	lb	a2, 1(a0)
8020201c: 03 45 05 00  	lbu	a0, 0(a0)
80202020: 13 07 11 00  	addi	a4, sp, 1
80202024: 36 97        	add	a4, a4, a3
80202026: a3 00 c7 00  	sb	a2, 1(a4)
8020202a: 23 00 a7 00  	sb	a0, 0(a4)
8020202e: 13 05 11 00  	addi	a0, sp, 1
80202032: 33 07 d5 00  	add	a4, a0, a3
80202036: 13 05 70 02  	li	a0, 39
8020203a: b3 07 d5 40  	sub	a5, a0, a3

000000008020203e <.LBB580_12>:
8020203e: 17 16 00 00  	auipc	a2, 1
80202042: 13 06 26 3b  	addi	a2, a2, 946
80202046: 42 85        	mv	a0, a6
80202048: 81 46        	li	a3, 0
8020204a: 97 00 00 00  	auipc	ra, 0
8020204e: e7 80 e0 82  	jalr	-2002(ra)
80202052: e2 70        	ld	ra, 56(sp)
80202054: 42 74        	ld	s0, 48(sp)
80202056: a2 74        	ld	s1, 40(sp)
80202058: 21 61        	addi	sp, sp, 64
8020205a: 82 80        	ret

000000008020205c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
8020205c: 03 65 05 00  	lwu	a0, 0(a0)
80202060: 2e 86        	mv	a2, a1
80202062: 85 45        	li	a1, 1
80202064: 17 03 00 00  	auipc	t1, 0
80202068: 67 00 23 e9  	jr	-366(t1)

000000008020206c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
8020206c: 90 65        	ld	a2, 8(a1)
8020206e: 88 61        	ld	a0, 0(a1)
80202070: 1c 6e        	ld	a5, 24(a2)

0000000080202072 <.LBB612_1>:
80202072: 97 15 00 00  	auipc	a1, 1
80202076: 93 85 e5 48  	addi	a1, a1, 1166
8020207a: 15 46        	li	a2, 5
8020207c: 82 87        	jr	a5

000000008020207e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
8020207e: 10 65        	ld	a2, 8(a0)
80202080: 08 61        	ld	a0, 0(a0)
80202082: 1c 6e        	ld	a5, 24(a2)
80202084: 82 87        	jr	a5

0000000080202086 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80202086: 14 61        	ld	a3, 0(a0)
80202088: 10 65        	ld	a2, 8(a0)
8020208a: 2e 85        	mv	a0, a1
8020208c: b6 85        	mv	a1, a3
8020208e: 17 03 00 00  	auipc	t1, 0
80202092: 67 00 e3 a5  	jr	-1442(t1)
