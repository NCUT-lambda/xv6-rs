
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 41 01 00  	auipc	sp, 20
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 10 00 00  	auipc	ra, 1
8020000c: e7 80 e0 15  	jalr	350(ra)
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
80201010: e7 80 80 53  	jalr	1336(ra)
80201014: 05 e1        	bnez	a0, 0x80201034 <.LBB0_8+0x16>

0000000080201016 <.LBB0_7>:
80201016: 17 15 00 00  	auipc	a0, 1
8020101a: 13 05 a5 06  	addi	a0, a0, 106

000000008020101e <.LBB0_8>:
8020101e: 17 16 00 00  	auipc	a2, 1
80201022: 13 06 26 0a  	addi	a2, a2, 162
80201026: 93 05 b0 02  	li	a1, 43
8020102a: 97 00 00 00  	auipc	ra, 0
8020102e: e7 80 00 55  	jalr	1360(ra)
80201032: 00 00        	unimp	
80201034: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80201038: 26 85        	mv	a0, s1
8020103a: 97 00 00 00  	auipc	ra, 0
8020103e: e7 80 e0 50  	jalr	1294(ra)
80201042: 3d e1        	bnez	a0, 0x802010a8 <.LBB0_11+0x24>
80201044: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80201048: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020104c <.LBB0_9>:
8020104c: 17 05 00 00  	auipc	a0, 0
80201050: 13 05 c5 4a  	addi	a0, a0, 1196
80201054: 23 34 a4 f6  	sd	a0, -152(s0)
80201058: 13 05 04 fe  	addi	a0, s0, -32
8020105c: 23 38 a4 f8  	sd	a0, -112(s0)
80201060: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201064 <.LBB0_10>:
80201064: 17 15 00 00  	auipc	a0, 1
80201068: 13 05 c5 fa  	addi	a0, a0, -84
8020106c: 23 30 a4 fc  	sd	a0, -64(s0)
80201070: 09 45        	li	a0, 2
80201072: 23 34 a4 fc  	sd	a0, -56(s0)
80201076: 13 05 04 f6  	addi	a0, s0, -160
8020107a: 23 38 a4 fc  	sd	a0, -48(s0)
8020107e: 05 45        	li	a0, 1
80201080: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201084 <.LBB0_11>:
80201084: 97 15 00 00  	auipc	a1, 1
80201088: 93 85 c5 10  	addi	a1, a1, 268
8020108c: 13 05 04 f9  	addi	a0, s0, -112
80201090: 13 06 04 fb  	addi	a2, s0, -80
80201094: 97 00 00 00  	auipc	ra, 0
80201098: e7 80 00 59  	jalr	1424(ra)
8020109c: 45 e1        	bnez	a0, 0x8020113c <.LBB0_17>
;     shutdown()
8020109e: 97 00 00 00  	auipc	ra, 0
802010a2: e7 80 a0 15  	jalr	346(ra)
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
802010c6: 13 05 e5 44  	addi	a0, a0, 1102
802010ca: 23 34 a4 f6  	sd	a0, -152(s0)
802010ce: 13 05 44 fa  	addi	a0, s0, -92
802010d2: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802010d6 <.LBB0_13>:
802010d6: 17 15 00 00  	auipc	a0, 1
802010da: 13 05 e5 eb  	addi	a0, a0, -322
802010de: 23 3c a4 f6  	sd	a0, -136(s0)
802010e2: 13 05 84 f5  	addi	a0, s0, -168
802010e6: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802010ea <.LBB0_14>:
802010ea: 17 05 00 00  	auipc	a0, 0
802010ee: 13 05 e5 40  	addi	a0, a0, 1038
802010f2: 23 34 a4 f8  	sd	a0, -120(s0)
802010f6: 13 05 04 fe  	addi	a0, s0, -32
802010fa: 23 34 a4 fa  	sd	a0, -88(s0)
802010fe: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201102 <.LBB0_15>:
80201102: 17 15 00 00  	auipc	a0, 1
80201106: 13 05 e5 f3  	addi	a0, a0, -194
8020110a: 23 30 a4 fc  	sd	a0, -64(s0)
8020110e: 11 45        	li	a0, 4
80201110: 23 34 a4 fc  	sd	a0, -56(s0)
80201114: 13 05 04 f6  	addi	a0, s0, -160
80201118: 23 38 a4 fc  	sd	a0, -48(s0)
8020111c: 0d 45        	li	a0, 3
8020111e: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201122 <.LBB0_16>:
80201122: 97 15 00 00  	auipc	a1, 1
80201126: 93 85 e5 06  	addi	a1, a1, 110
8020112a: 13 05 84 fa  	addi	a0, s0, -88
8020112e: 13 06 04 fb  	addi	a2, s0, -80
80201132: 97 00 00 00  	auipc	ra, 0
80201136: e7 80 20 4f  	jalr	1266(ra)
8020113a: 35 d1        	beqz	a0, 0x8020109e <.LBB0_11+0x1a>

000000008020113c <.LBB0_17>:
8020113c: 17 15 00 00  	auipc	a0, 1
80201140: 13 05 45 08  	addi	a0, a0, 132

0000000080201144 <.LBB0_18>:
80201144: 97 16 00 00  	auipc	a3, 1
80201148: 93 86 c6 0a  	addi	a3, a3, 172

000000008020114c <.LBB0_19>:
8020114c: 17 17 00 00  	auipc	a4, 1
80201150: 13 07 47 0d  	addi	a4, a4, 212
80201154: 93 05 b0 02  	li	a1, 43
80201158: 13 06 04 fe  	addi	a2, s0, -32
8020115c: 97 00 00 00  	auipc	ra, 0
80201160: e7 80 a0 44  	jalr	1098(ra)
80201164: 00 00        	unimp	

0000000080201166 <main>:
; pub fn main() {
80201166: 5d 71        	addi	sp, sp, -80
80201168: 86 e4        	sd	ra, 72(sp)
8020116a: a2 e0        	sd	s0, 64(sp)
8020116c: 26 fc        	sd	s1, 56(sp)
8020116e: 4a f8        	sd	s2, 48(sp)
80201170: 80 08        	addi	s0, sp, 80

0000000080201172 <.LBB0_3>:
80201172: 17 35 01 00  	auipc	a0, 19
80201176: 13 05 e5 e8  	addi	a0, a0, -370

000000008020117a <.LBB0_4>:
8020117a: 97 35 01 00  	auipc	a1, 19
8020117e: 93 85 65 e8  	addi	a1, a1, -378
80201182: 63 f9 a5 00  	bgeu	a1, a0, 0x80201194 <.LBB0_5>
80201186: 13 86 15 00  	addi	a2, a1, 1
8020118a: 23 80 05 00  	sb	zero, 0(a1)
8020118e: b2 85        	mv	a1, a2
80201190: e3 6b a6 fe  	bltu	a2, a0, 0x80201186 <.LBB0_4+0xc>

0000000080201194 <.LBB0_5>:
80201194: 17 15 00 00  	auipc	a0, 1
80201198: 13 05 45 f5  	addi	a0, a0, -172
8020119c: 23 30 a4 fc  	sd	a0, -64(s0)
802011a0: 05 49        	li	s2, 1
802011a2: 23 34 24 fd  	sd	s2, -56(s0)
802011a6: 23 38 04 fa  	sd	zero, -80(s0)

00000000802011aa <.LBB0_6>:
802011aa: 97 14 00 00  	auipc	s1, 1
802011ae: 93 84 e4 f2  	addi	s1, s1, -210
802011b2: 23 38 94 fc  	sd	s1, -48(s0)
802011b6: 23 3c 04 fc  	sd	zero, -40(s0)
;     println!("Hello world");
802011ba: 13 05 04 fb  	addi	a0, s0, -80
802011be: 97 00 00 00  	auipc	ra, 0
802011c2: e7 80 a0 2b  	jalr	698(ra)

00000000802011c6 <.LBB0_7>:
802011c6: 17 15 00 00  	auipc	a0, 1
802011ca: 13 05 25 f4  	addi	a0, a0, -190
802011ce: 23 30 a4 fc  	sd	a0, -64(s0)
802011d2: 23 34 24 fd  	sd	s2, -56(s0)
802011d6: 23 38 04 fa  	sd	zero, -80(s0)
802011da: 23 38 94 fc  	sd	s1, -48(s0)
802011de: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802011e2 <.LBB0_8>:
;     panic!("Shutdown!");
802011e2: 97 15 00 00  	auipc	a1, 1
802011e6: 93 85 65 f4  	addi	a1, a1, -186
802011ea: 13 05 04 fb  	addi	a0, s0, -80
802011ee: 97 00 00 00  	auipc	ra, 0
802011f2: e7 80 e0 35  	jalr	862(ra)
802011f6: 00 00        	unimp	

00000000802011f8 <_ZN6kernel3sbi8shutdown17hbfc52c99fc4a5babE>:
; pub fn shutdown() -> ! {
802011f8: 39 71        	addi	sp, sp, -64
;         asm!(
802011fa: 06 fc        	sd	ra, 56(sp)
802011fc: 22 f8        	sd	s0, 48(sp)
802011fe: 80 00        	addi	s0, sp, 64
80201200: a1 48        	li	a7, 8
80201202: 01 45        	li	a0, 0
80201204: 81 45        	li	a1, 0
80201206: 01 46        	li	a2, 0
80201208: 73 00 00 00  	ecall	

000000008020120c <.LBB1_1>:
8020120c: 17 15 00 00  	auipc	a0, 1
80201210: 13 05 c5 f4  	addi	a0, a0, -180
80201214: 23 38 a4 fc  	sd	a0, -48(s0)
80201218: 05 45        	li	a0, 1
8020121a: 23 3c a4 fc  	sd	a0, -40(s0)
8020121e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201222 <.LBB1_2>:
80201222: 17 15 00 00  	auipc	a0, 1
80201226: 13 05 e5 f1  	addi	a0, a0, -226
8020122a: 23 30 a4 fe  	sd	a0, -32(s0)
8020122e: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201232 <.LBB1_3>:
;     panic!("It should shutdown!");
80201232: 97 15 00 00  	auipc	a1, 1
80201236: 93 85 65 f4  	addi	a1, a1, -186
8020123a: 13 05 04 fc  	addi	a0, s0, -64
8020123e: 97 00 00 00  	auipc	ra, 0
80201242: e7 80 e0 30  	jalr	782(ra)
80201246: 00 00        	unimp	

0000000080201248 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17hf8e15bb648addb36E.llvm.14709338591575667035>:
80201248: 41 11        	addi	sp, sp, -16
8020124a: 06 e4        	sd	ra, 8(sp)
8020124c: 22 e0        	sd	s0, 0(sp)
8020124e: 00 08        	addi	s0, sp, 16
80201250: a2 60        	ld	ra, 8(sp)
80201252: 02 64        	ld	s0, 0(sp)
80201254: 41 01        	addi	sp, sp, 16
80201256: 82 80        	ret

0000000080201258 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035>:
80201258: 01 11        	addi	sp, sp, -32
8020125a: 06 ec        	sd	ra, 24(sp)
8020125c: 22 e8        	sd	s0, 16(sp)
8020125e: 00 10        	addi	s0, sp, 32
80201260: 1b 85 05 00  	sext.w	a0, a1
80201264: 13 06 00 08  	li	a2, 128
80201268: 23 26 04 fe  	sw	zero, -20(s0)
8020126c: 63 76 c5 00  	bgeu	a0, a2, 0x80201278 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x20>
80201270: 23 06 b4 fe  	sb	a1, -20(s0)
80201274: 05 45        	li	a0, 1
80201276: 51 a8        	j	0x8020130a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xb2>
80201278: 1b d5 b5 00  	srliw	a0, a1, 11
8020127c: 19 ed        	bnez	a0, 0x8020129a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x42>
8020127e: 13 d5 65 00  	srli	a0, a1, 6
80201282: 13 65 05 0c  	ori	a0, a0, 192
80201286: 23 06 a4 fe  	sb	a0, -20(s0)
8020128a: 13 f5 f5 03  	andi	a0, a1, 63
8020128e: 13 65 05 08  	ori	a0, a0, 128
80201292: a3 06 a4 fe  	sb	a0, -19(s0)
80201296: 09 45        	li	a0, 2
80201298: 8d a8        	j	0x8020130a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xb2>
8020129a: 1b d5 05 01  	srliw	a0, a1, 16
8020129e: 05 e9        	bnez	a0, 0x802012ce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x76>
802012a0: 13 95 05 02  	slli	a0, a1, 32
802012a4: 01 91        	srli	a0, a0, 32
802012a6: 1b d6 c5 00  	srliw	a2, a1, 12
802012aa: 13 66 06 0e  	ori	a2, a2, 224
802012ae: 23 06 c4 fe  	sb	a2, -20(s0)
802012b2: 52 15        	slli	a0, a0, 52
802012b4: 69 91        	srli	a0, a0, 58
802012b6: 13 65 05 08  	ori	a0, a0, 128
802012ba: a3 06 a4 fe  	sb	a0, -19(s0)
802012be: 13 f5 f5 03  	andi	a0, a1, 63
802012c2: 13 65 05 08  	ori	a0, a0, 128
802012c6: 23 07 a4 fe  	sb	a0, -18(s0)
802012ca: 0d 45        	li	a0, 3
802012cc: 3d a8        	j	0x8020130a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xb2>
802012ce: 13 95 05 02  	slli	a0, a1, 32
802012d2: 01 91        	srli	a0, a0, 32
802012d4: 13 16 b5 02  	slli	a2, a0, 43
802012d8: 75 92        	srli	a2, a2, 61
802012da: 13 66 06 0f  	ori	a2, a2, 240
802012de: 23 06 c4 fe  	sb	a2, -20(s0)
802012e2: 13 16 e5 02  	slli	a2, a0, 46
802012e6: 69 92        	srli	a2, a2, 58
802012e8: 13 66 06 08  	ori	a2, a2, 128
802012ec: a3 06 c4 fe  	sb	a2, -19(s0)
802012f0: 52 15        	slli	a0, a0, 52
802012f2: 69 91        	srli	a0, a0, 58
802012f4: 13 65 05 08  	ori	a0, a0, 128
802012f8: 23 07 a4 fe  	sb	a0, -18(s0)
802012fc: 13 f5 f5 03  	andi	a0, a1, 63
80201300: 13 65 05 08  	ori	a0, a0, 128
80201304: a3 07 a4 fe  	sb	a0, -17(s0)
80201308: 11 45        	li	a0, 4
8020130a: 93 06 c4 fe  	addi	a3, s0, -20
8020130e: 33 87 a6 00  	add	a4, a3, a0
80201312: 13 03 f0 0d  	li	t1, 223
80201316: 13 08 00 0f  	li	a6, 240
8020131a: b7 02 11 00  	lui	t0, 272
8020131e: 85 48        	li	a7, 1
80201320: 01 a8        	j	0x80201330 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xd8>
80201322: 85 06        	addi	a3, a3, 1
;         asm!(
80201324: 81 45        	li	a1, 0
80201326: 01 46        	li	a2, 0
80201328: 73 00 00 00  	ecall	
8020132c: 63 8f e6 04  	beq	a3, a4, 0x8020138a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x132>
80201330: 83 85 06 00  	lb	a1, 0(a3)
80201334: 13 f5 f5 0f  	andi	a0, a1, 255
80201338: e3 d5 05 fe  	bgez	a1, 0x80201322 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xca>
8020133c: 03 c6 16 00  	lbu	a2, 1(a3)
80201340: 93 75 f5 01  	andi	a1, a0, 31
80201344: 13 76 f6 03  	andi	a2, a2, 63
80201348: 63 77 a3 02  	bgeu	t1, a0, 0x80201376 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x11e>
8020134c: 83 c7 26 00  	lbu	a5, 2(a3)
80201350: 1a 06        	slli	a2, a2, 6
80201352: 93 f7 f7 03  	andi	a5, a5, 63
80201356: 5d 8e        	or	a2, a2, a5
80201358: 63 64 05 03  	bltu	a0, a6, 0x80201380 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x128>
8020135c: 03 c5 36 00  	lbu	a0, 3(a3)
80201360: f6 15        	slli	a1, a1, 61
80201362: ad 91        	srli	a1, a1, 43
80201364: 1a 06        	slli	a2, a2, 6
80201366: 13 75 f5 03  	andi	a0, a0, 63
8020136a: 51 8d        	or	a0, a0, a2
8020136c: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020136e: 63 0e 55 00  	beq	a0, t0, 0x8020138a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0x132>
80201372: 91 06        	addi	a3, a3, 4
80201374: 45 bf        	j	0x80201324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xcc>
80201376: 89 06        	addi	a3, a3, 2
80201378: 13 95 65 00  	slli	a0, a1, 6
8020137c: 51 8d        	or	a0, a0, a2
8020137e: 5d b7        	j	0x80201324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xcc>
80201380: 8d 06        	addi	a3, a3, 3
80201382: 13 95 c5 00  	slli	a0, a1, 12
80201386: 51 8d        	or	a0, a0, a2
80201388: 71 bf        	j	0x80201324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h3f089d3da9f0c24cE.llvm.14709338591575667035+0xcc>
8020138a: 01 45        	li	a0, 0
8020138c: e2 60        	ld	ra, 24(sp)
8020138e: 42 64        	ld	s0, 16(sp)
80201390: 05 61        	addi	sp, sp, 32
80201392: 82 80        	ret

0000000080201394 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h65575135a63d81f9E.llvm.14709338591575667035>:
80201394: 5d 71        	addi	sp, sp, -80
80201396: 86 e4        	sd	ra, 72(sp)
80201398: a2 e0        	sd	s0, 64(sp)
8020139a: 80 08        	addi	s0, sp, 80
8020139c: 08 61        	ld	a0, 0(a0)
8020139e: 90 75        	ld	a2, 40(a1)
802013a0: 94 71        	ld	a3, 32(a1)
802013a2: 23 3c a4 fa  	sd	a0, -72(s0)
802013a6: 23 34 c4 fe  	sd	a2, -24(s0)
802013aa: 23 30 d4 fe  	sd	a3, -32(s0)
802013ae: 88 6d        	ld	a0, 24(a1)
802013b0: 90 69        	ld	a2, 16(a1)
802013b2: 94 65        	ld	a3, 8(a1)
802013b4: 8c 61        	ld	a1, 0(a1)
802013b6: 23 3c a4 fc  	sd	a0, -40(s0)
802013ba: 23 38 c4 fc  	sd	a2, -48(s0)
802013be: 23 34 d4 fc  	sd	a3, -56(s0)
802013c2: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802013c6 <.LBB2_1>:
802013c6: 97 15 00 00  	auipc	a1, 1
802013ca: 93 85 a5 dc  	addi	a1, a1, -566
802013ce: 13 05 84 fb  	addi	a0, s0, -72
802013d2: 13 06 04 fc  	addi	a2, s0, -64
802013d6: 97 00 00 00  	auipc	ra, 0
802013da: e7 80 e0 24  	jalr	590(ra)
802013de: a6 60        	ld	ra, 72(sp)
802013e0: 06 64        	ld	s0, 64(sp)
802013e2: 61 61        	addi	sp, sp, 80
802013e4: 82 80        	ret

00000000802013e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035>:
802013e6: 41 11        	addi	sp, sp, -16
802013e8: 06 e4        	sd	ra, 8(sp)
802013ea: 22 e0        	sd	s0, 0(sp)
802013ec: 00 08        	addi	s0, sp, 16
802013ee: 41 c2        	beqz	a2, 0x8020146e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x88>
802013f0: ae 86        	mv	a3, a1
802013f2: 33 87 c5 00  	add	a4, a1, a2
802013f6: 13 03 f0 0d  	li	t1, 223
802013fa: 13 08 00 0f  	li	a6, 240
802013fe: b7 02 11 00  	lui	t0, 272
80201402: 85 48        	li	a7, 1
80201404: 01 a8        	j	0x80201414 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x2e>
80201406: 85 06        	addi	a3, a3, 1
;         asm!(
80201408: 81 45        	li	a1, 0
8020140a: 01 46        	li	a2, 0
8020140c: 73 00 00 00  	ecall	
80201410: 63 8f e6 04  	beq	a3, a4, 0x8020146e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x88>
80201414: 83 85 06 00  	lb	a1, 0(a3)
80201418: 13 f5 f5 0f  	andi	a0, a1, 255
8020141c: e3 d5 05 fe  	bgez	a1, 0x80201406 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x20>
80201420: 03 c6 16 00  	lbu	a2, 1(a3)
80201424: 93 75 f5 01  	andi	a1, a0, 31
80201428: 13 76 f6 03  	andi	a2, a2, 63
8020142c: 63 77 a3 02  	bgeu	t1, a0, 0x8020145a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x74>
80201430: 83 c7 26 00  	lbu	a5, 2(a3)
80201434: 1a 06        	slli	a2, a2, 6
80201436: 93 f7 f7 03  	andi	a5, a5, 63
8020143a: 5d 8e        	or	a2, a2, a5
8020143c: 63 64 05 03  	bltu	a0, a6, 0x80201464 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x7e>
80201440: 03 c5 36 00  	lbu	a0, 3(a3)
80201444: f6 15        	slli	a1, a1, 61
80201446: ad 91        	srli	a1, a1, 43
80201448: 1a 06        	slli	a2, a2, 6
8020144a: 13 75 f5 03  	andi	a0, a0, 63
8020144e: 51 8d        	or	a0, a0, a2
80201450: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201452: 63 0e 55 00  	beq	a0, t0, 0x8020146e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x88>
80201456: 91 06        	addi	a3, a3, 4
80201458: 45 bf        	j	0x80201408 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x22>
8020145a: 89 06        	addi	a3, a3, 2
8020145c: 13 95 65 00  	slli	a0, a1, 6
80201460: 51 8d        	or	a0, a0, a2
80201462: 5d b7        	j	0x80201408 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x22>
80201464: 8d 06        	addi	a3, a3, 3
80201466: 13 95 c5 00  	slli	a0, a1, 12
8020146a: 51 8d        	or	a0, a0, a2
8020146c: 71 bf        	j	0x80201408 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h34e3aa92b5ada928E.llvm.14709338591575667035+0x22>
8020146e: 01 45        	li	a0, 0
80201470: a2 60        	ld	ra, 8(sp)
80201472: 02 64        	ld	s0, 0(sp)
80201474: 41 01        	addi	sp, sp, 16
80201476: 82 80        	ret

0000000080201478 <_ZN6kernel7console5print17hb18d0c2b934d5bf0E>:
; pub fn print(args: fmt::Arguments) {
80201478: 5d 71        	addi	sp, sp, -80
8020147a: 86 e4        	sd	ra, 72(sp)
8020147c: a2 e0        	sd	s0, 64(sp)
8020147e: 80 08        	addi	s0, sp, 80
80201480: 0c 75        	ld	a1, 40(a0)
80201482: 10 71        	ld	a2, 32(a0)
80201484: 93 06 84 fe  	addi	a3, s0, -24
80201488: 23 38 d4 fa  	sd	a3, -80(s0)
8020148c: 23 30 b4 fe  	sd	a1, -32(s0)
80201490: 23 3c c4 fc  	sd	a2, -40(s0)
80201494: 0c 6d        	ld	a1, 24(a0)
80201496: 10 69        	ld	a2, 16(a0)
80201498: 14 65        	ld	a3, 8(a0)
8020149a: 08 61        	ld	a0, 0(a0)
8020149c: 23 38 b4 fc  	sd	a1, -48(s0)
802014a0: 23 34 c4 fc  	sd	a2, -56(s0)
802014a4: 23 30 d4 fc  	sd	a3, -64(s0)
802014a8: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802014ac <.LBB4_3>:
802014ac: 97 15 00 00  	auipc	a1, 1
802014b0: 93 85 45 ce  	addi	a1, a1, -796
802014b4: 13 05 04 fb  	addi	a0, s0, -80
802014b8: 13 06 84 fb  	addi	a2, s0, -72
802014bc: 97 00 00 00  	auipc	ra, 0
802014c0: e7 80 80 16  	jalr	360(ra)
802014c4: 09 e5        	bnez	a0, 0x802014ce <.LBB4_4>
; }
802014c6: a6 60        	ld	ra, 72(sp)
802014c8: 06 64        	ld	s0, 64(sp)
802014ca: 61 61        	addi	sp, sp, 80
802014cc: 82 80        	ret

00000000802014ce <.LBB4_4>:
802014ce: 17 15 00 00  	auipc	a0, 1
802014d2: 13 05 25 cf  	addi	a0, a0, -782

00000000802014d6 <.LBB4_5>:
802014d6: 97 16 00 00  	auipc	a3, 1
802014da: 93 86 a6 d1  	addi	a3, a3, -742

00000000802014de <.LBB4_6>:
802014de: 17 17 00 00  	auipc	a4, 1
802014e2: 13 07 27 d4  	addi	a4, a4, -702
802014e6: 93 05 b0 02  	li	a1, 43
802014ea: 13 06 84 fe  	addi	a2, s0, -24
802014ee: 97 00 00 00  	auipc	ra, 0
802014f2: e7 80 80 0b  	jalr	184(ra)
802014f6: 00 00        	unimp	

00000000802014f8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb1ec3d49219db42aE>:
802014f8: 41 11        	addi	sp, sp, -16
802014fa: 06 e4        	sd	ra, 8(sp)
802014fc: 22 e0        	sd	s0, 0(sp)
802014fe: 00 08        	addi	s0, sp, 16
80201500: 08 61        	ld	a0, 0(a0)
80201502: a2 60        	ld	ra, 8(sp)
80201504: 02 64        	ld	s0, 0(sp)
80201506: 41 01        	addi	sp, sp, 16
80201508: 17 03 00 00  	auipc	t1, 0
8020150c: 67 00 a3 0e  	jr	234(t1)

0000000080201510 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcfd345dd7d77ce30E>:
80201510: 41 11        	addi	sp, sp, -16
80201512: 06 e4        	sd	ra, 8(sp)
80201514: 22 e0        	sd	s0, 0(sp)
80201516: 00 08        	addi	s0, sp, 16
80201518: 10 61        	ld	a2, 0(a0)
8020151a: 14 65        	ld	a3, 8(a0)
8020151c: 2e 87        	mv	a4, a1
8020151e: 32 85        	mv	a0, a2
80201520: b6 85        	mv	a1, a3
80201522: 3a 86        	mv	a2, a4
80201524: a2 60        	ld	ra, 8(sp)
80201526: 02 64        	ld	s0, 0(sp)
80201528: 41 01        	addi	sp, sp, 16
8020152a: 17 03 00 00  	auipc	t1, 0
8020152e: 67 00 e3 74  	jr	1870(t1)

0000000080201532 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
80201532: 08 61        	ld	a0, 0(a0)
80201534: 01 a0        	j	0x80201534 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080201536 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80201536: 82 80        	ret

0000000080201538 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80201538: 17 25 00 00  	auipc	a0, 2
8020153c: 13 05 05 bb  	addi	a0, a0, -1104
80201540: 08 61        	ld	a0, 0(a0)
80201542: 82 80        	ret

0000000080201544 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80201544: 08 69        	ld	a0, 16(a0)
80201546: 82 80        	ret

0000000080201548 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80201548: 08 6d        	ld	a0, 24(a0)
8020154a: 82 80        	ret

000000008020154c <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
8020154c: 79 71        	addi	sp, sp, -48
8020154e: 06 f4        	sd	ra, 40(sp)

0000000080201550 <.LBB170_1>:
80201550: 17 16 00 00  	auipc	a2, 1
80201554: 13 06 86 ce  	addi	a2, a2, -792
80201558: 32 e0        	sd	a2, 0(sp)

000000008020155a <.LBB170_2>:
8020155a: 17 16 00 00  	auipc	a2, 1
8020155e: 13 06 e6 cd  	addi	a2, a2, -802
80201562: 32 e4        	sd	a2, 8(sp)
80201564: 2a e8        	sd	a0, 16(sp)
80201566: 2e ec        	sd	a1, 24(sp)
80201568: 05 45        	li	a0, 1
8020156a: 23 00 a1 02  	sb	a0, 32(sp)
8020156e: 0a 85        	mv	a0, sp
80201570: 97 00 00 00  	auipc	ra, 0
80201574: e7 80 00 a9  	jalr	-1392(ra)
80201578: 00 00        	unimp	

000000008020157a <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
8020157a: 5d 71        	addi	sp, sp, -80
8020157c: 86 e4        	sd	ra, 72(sp)
8020157e: 2a fc        	sd	a0, 56(sp)
80201580: ae e0        	sd	a1, 64(sp)
80201582: 28 18        	addi	a0, sp, 56
80201584: 2a ec        	sd	a0, 24(sp)
80201586: 05 45        	li	a0, 1
80201588: 2a f0        	sd	a0, 32(sp)
8020158a: 02 e4        	sd	zero, 8(sp)

000000008020158c <.LBB172_1>:
8020158c: 17 15 00 00  	auipc	a0, 1
80201590: 13 05 c5 ca  	addi	a0, a0, -852
80201594: 2a f4        	sd	a0, 40(sp)
80201596: 02 f8        	sd	zero, 48(sp)
80201598: 28 00        	addi	a0, sp, 8
8020159a: b2 85        	mv	a1, a2
8020159c: 97 00 00 00  	auipc	ra, 0
802015a0: e7 80 00 fb  	jalr	-80(ra)
802015a4: 00 00        	unimp	

00000000802015a6 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
802015a6: 19 71        	addi	sp, sp, -128
802015a8: 86 fc        	sd	ra, 120(sp)
802015aa: 2a e4        	sd	a0, 8(sp)
802015ac: 2e e8        	sd	a1, 16(sp)
802015ae: 32 ec        	sd	a2, 24(sp)
802015b0: 36 f0        	sd	a3, 32(sp)
802015b2: 28 00        	addi	a0, sp, 8
802015b4: aa ec        	sd	a0, 88(sp)

00000000802015b6 <.LBB183_1>:
802015b6: 17 15 00 00  	auipc	a0, 1
802015ba: 13 05 85 a0  	addi	a0, a0, -1528
802015be: aa f0        	sd	a0, 96(sp)
802015c0: 28 08        	addi	a0, sp, 24
802015c2: aa f4        	sd	a0, 104(sp)

00000000802015c4 <.LBB183_2>:
802015c4: 17 15 00 00  	auipc	a0, 1
802015c8: 13 05 25 9f  	addi	a0, a0, -1550
802015cc: aa f8        	sd	a0, 112(sp)

00000000802015ce <.LBB183_3>:
802015ce: 17 15 00 00  	auipc	a0, 1
802015d2: 13 05 25 c9  	addi	a0, a0, -878
802015d6: 2a fc        	sd	a0, 56(sp)
802015d8: 09 45        	li	a0, 2
802015da: aa e0        	sd	a0, 64(sp)
802015dc: 02 f4        	sd	zero, 40(sp)
802015de: ac 08        	addi	a1, sp, 88
802015e0: ae e4        	sd	a1, 72(sp)
802015e2: aa e8        	sd	a0, 80(sp)
802015e4: 28 10        	addi	a0, sp, 40
802015e6: ba 85        	mv	a1, a4
802015e8: 97 00 00 00  	auipc	ra, 0
802015ec: e7 80 40 f6  	jalr	-156(ra)
802015f0: 00 00        	unimp	

00000000802015f2 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
802015f2: 39 71        	addi	sp, sp, -64
802015f4: 06 fc        	sd	ra, 56(sp)
802015f6: 10 75        	ld	a2, 40(a0)
802015f8: 18 71        	ld	a4, 32(a0)
802015fa: 1c 6d        	ld	a5, 24(a0)
802015fc: 32 f8        	sd	a2, 48(sp)
802015fe: 94 61        	ld	a3, 0(a1)
80201600: 3a f4        	sd	a4, 40(sp)
80201602: 3e f0        	sd	a5, 32(sp)
80201604: 10 69        	ld	a2, 16(a0)
80201606: 18 65        	ld	a4, 8(a0)
80201608: 08 61        	ld	a0, 0(a0)
8020160a: 8c 65        	ld	a1, 8(a1)
8020160c: 32 ec        	sd	a2, 24(sp)
8020160e: 3a e8        	sd	a4, 16(sp)
80201610: 2a e4        	sd	a0, 8(sp)
80201612: 30 00        	addi	a2, sp, 8
80201614: 36 85        	mv	a0, a3
80201616: 97 00 00 00  	auipc	ra, 0
8020161a: e7 80 e0 00  	jalr	14(ra)
8020161e: e2 70        	ld	ra, 56(sp)
80201620: 21 61        	addi	sp, sp, 64
80201622: 82 80        	ret

0000000080201624 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80201624: 19 71        	addi	sp, sp, -128
80201626: 86 fc        	sd	ra, 120(sp)
80201628: a2 f8        	sd	s0, 112(sp)
8020162a: a6 f4        	sd	s1, 104(sp)
8020162c: ca f0        	sd	s2, 96(sp)
8020162e: ce ec        	sd	s3, 88(sp)
80201630: d2 e8        	sd	s4, 80(sp)
80201632: d6 e4        	sd	s5, 72(sp)
80201634: da e0        	sd	s6, 64(sp)
80201636: b2 89        	mv	s3, a2
80201638: 05 46        	li	a2, 1
8020163a: 16 16        	slli	a2, a2, 37
8020163c: 32 f8        	sd	a2, 48(sp)
8020163e: 0d 46        	li	a2, 3
80201640: 23 0c c1 02  	sb	a2, 56(sp)
80201644: 03 b6 09 00  	ld	a2, 0(s3)
80201648: 02 e8        	sd	zero, 16(sp)
8020164a: 02 f0        	sd	zero, 32(sp)
8020164c: 2a e0        	sd	a0, 0(sp)
8020164e: 2e e4        	sd	a1, 8(sp)
80201650: 69 c6        	beqz	a2, 0x8020171a <.LBB220_31+0x9e>
80201652: 03 b5 89 00  	ld	a0, 8(s3)
80201656: 63 0e 05 10  	beqz	a0, 0x80201772 <.LBB220_31+0xf6>
8020165a: 83 b5 09 01  	ld	a1, 16(s3)
8020165e: 93 06 f5 ff  	addi	a3, a0, -1
80201662: 8e 06        	slli	a3, a3, 3
80201664: 8d 82        	srli	a3, a3, 3
80201666: 13 89 16 00  	addi	s2, a3, 1
8020166a: 93 84 85 00  	addi	s1, a1, 8
8020166e: 93 05 80 03  	li	a1, 56
80201672: 33 0a b5 02  	mul	s4, a0, a1
80201676: 13 04 86 01  	addi	s0, a2, 24
8020167a: 85 4a        	li	s5, 1

000000008020167c <.LBB220_31>:
8020167c: 17 0b 00 00  	auipc	s6, 0
80201680: 13 0b 6b eb  	addi	s6, s6, -330
80201684: 90 60        	ld	a2, 0(s1)
80201686: 09 ca        	beqz	a2, 0x80201698 <.LBB220_31+0x1c>
80201688: a2 66        	ld	a3, 8(sp)
8020168a: 02 65        	ld	a0, 0(sp)
8020168c: 83 b5 84 ff  	ld	a1, -8(s1)
80201690: 94 6e        	ld	a3, 24(a3)
80201692: 82 96        	jalr	a3
80201694: 63 11 05 10  	bnez	a0, 0x80201796 <.LBB220_31+0x11a>
80201698: 48 44        	lw	a0, 12(s0)
8020169a: 2a da        	sw	a0, 52(sp)
8020169c: 03 05 04 01  	lb	a0, 16(s0)
802016a0: 23 0c a1 02  	sb	a0, 56(sp)
802016a4: 0c 44        	lw	a1, 8(s0)
802016a6: 03 b5 09 02  	ld	a0, 32(s3)
802016aa: 2e d8        	sw	a1, 48(sp)
802016ac: 83 36 84 ff  	ld	a3, -8(s0)
802016b0: 0c 60        	ld	a1, 0(s0)
802016b2: 89 ce        	beqz	a3, 0x802016cc <.LBB220_31+0x50>
802016b4: 01 46        	li	a2, 0
802016b6: 63 9c 56 01  	bne	a3, s5, 0x802016ce <.LBB220_31+0x52>
802016ba: 92 05        	slli	a1, a1, 4
802016bc: aa 95        	add	a1, a1, a0
802016be: 90 65        	ld	a2, 8(a1)
802016c0: 63 04 66 01  	beq	a2, s6, 0x802016c8 <.LBB220_31+0x4c>
802016c4: 01 46        	li	a2, 0
802016c6: 21 a0        	j	0x802016ce <.LBB220_31+0x52>
802016c8: 8c 61        	ld	a1, 0(a1)
802016ca: 8c 61        	ld	a1, 0(a1)
802016cc: 05 46        	li	a2, 1
802016ce: 32 e8        	sd	a2, 16(sp)
802016d0: 2e ec        	sd	a1, 24(sp)
802016d2: 83 36 84 fe  	ld	a3, -24(s0)
802016d6: 83 35 04 ff  	ld	a1, -16(s0)
802016da: 89 ce        	beqz	a3, 0x802016f4 <.LBB220_31+0x78>
802016dc: 01 46        	li	a2, 0
802016de: 63 9c 56 01  	bne	a3, s5, 0x802016f6 <.LBB220_31+0x7a>
802016e2: 92 05        	slli	a1, a1, 4
802016e4: aa 95        	add	a1, a1, a0
802016e6: 90 65        	ld	a2, 8(a1)
802016e8: 63 04 66 01  	beq	a2, s6, 0x802016f0 <.LBB220_31+0x74>
802016ec: 01 46        	li	a2, 0
802016ee: 21 a0        	j	0x802016f6 <.LBB220_31+0x7a>
802016f0: 8c 61        	ld	a1, 0(a1)
802016f2: 8c 61        	ld	a1, 0(a1)
802016f4: 05 46        	li	a2, 1
802016f6: 32 f0        	sd	a2, 32(sp)
802016f8: 2e f4        	sd	a1, 40(sp)
802016fa: 0c 6c        	ld	a1, 24(s0)
802016fc: 92 05        	slli	a1, a1, 4
802016fe: 2e 95        	add	a0, a0, a1
80201700: 10 65        	ld	a2, 8(a0)
80201702: 08 61        	ld	a0, 0(a0)
80201704: 8a 85        	mv	a1, sp
80201706: 02 96        	jalr	a2
80201708: 59 e5        	bnez	a0, 0x80201796 <.LBB220_31+0x11a>
8020170a: c1 04        	addi	s1, s1, 16
8020170c: 13 0a 8a fc  	addi	s4, s4, -56
80201710: 13 04 84 03  	addi	s0, s0, 56
80201714: e3 18 0a f6  	bnez	s4, 0x80201684 <.LBB220_31+0x8>
80201718: 81 a8        	j	0x80201768 <.LBB220_31+0xec>
8020171a: 03 b5 89 02  	ld	a0, 40(s3)
8020171e: 31 c9        	beqz	a0, 0x80201772 <.LBB220_31+0xf6>
80201720: 83 b5 09 02  	ld	a1, 32(s3)
80201724: 03 b6 09 01  	ld	a2, 16(s3)
80201728: 93 06 f5 ff  	addi	a3, a0, -1
8020172c: 92 06        	slli	a3, a3, 4
8020172e: 91 82        	srli	a3, a3, 4
80201730: 13 89 16 00  	addi	s2, a3, 1
80201734: 13 04 86 00  	addi	s0, a2, 8
80201738: 13 1a 45 00  	slli	s4, a0, 4
8020173c: 93 84 85 00  	addi	s1, a1, 8
80201740: 10 60        	ld	a2, 0(s0)
80201742: 01 ca        	beqz	a2, 0x80201752 <.LBB220_31+0xd6>
80201744: a2 66        	ld	a3, 8(sp)
80201746: 02 65        	ld	a0, 0(sp)
80201748: 83 35 84 ff  	ld	a1, -8(s0)
8020174c: 94 6e        	ld	a3, 24(a3)
8020174e: 82 96        	jalr	a3
80201750: 39 e1        	bnez	a0, 0x80201796 <.LBB220_31+0x11a>
80201752: 90 60        	ld	a2, 0(s1)
80201754: 03 b5 84 ff  	ld	a0, -8(s1)
80201758: 8a 85        	mv	a1, sp
8020175a: 02 96        	jalr	a2
8020175c: 0d ed        	bnez	a0, 0x80201796 <.LBB220_31+0x11a>
8020175e: 41 04        	addi	s0, s0, 16
80201760: 41 1a        	addi	s4, s4, -16
80201762: c1 04        	addi	s1, s1, 16
80201764: e3 1e 0a fc  	bnez	s4, 0x80201740 <.LBB220_31+0xc4>
80201768: 03 b5 89 01  	ld	a0, 24(s3)
8020176c: 63 68 a9 00  	bltu	s2, a0, 0x8020177c <.LBB220_31+0x100>
80201770: 2d a0        	j	0x8020179a <.LBB220_31+0x11e>
80201772: 01 49        	li	s2, 0
80201774: 03 b5 89 01  	ld	a0, 24(s3)
80201778: 63 71 a9 02  	bgeu	s2, a0, 0x8020179a <.LBB220_31+0x11e>
8020177c: 03 b5 09 01  	ld	a0, 16(s3)
80201780: 93 15 49 00  	slli	a1, s2, 4
80201784: 33 06 b5 00  	add	a2, a0, a1
80201788: a2 66        	ld	a3, 8(sp)
8020178a: 02 65        	ld	a0, 0(sp)
8020178c: 0c 62        	ld	a1, 0(a2)
8020178e: 10 66        	ld	a2, 8(a2)
80201790: 94 6e        	ld	a3, 24(a3)
80201792: 82 96        	jalr	a3
80201794: 19 c1        	beqz	a0, 0x8020179a <.LBB220_31+0x11e>
80201796: 05 45        	li	a0, 1
80201798: 11 a0        	j	0x8020179c <.LBB220_31+0x120>
8020179a: 01 45        	li	a0, 0
8020179c: e6 70        	ld	ra, 120(sp)
8020179e: 46 74        	ld	s0, 112(sp)
802017a0: a6 74        	ld	s1, 104(sp)
802017a2: 06 79        	ld	s2, 96(sp)
802017a4: e6 69        	ld	s3, 88(sp)
802017a6: 46 6a        	ld	s4, 80(sp)
802017a8: a6 6a        	ld	s5, 72(sp)
802017aa: 06 6b        	ld	s6, 64(sp)
802017ac: 09 61        	addi	sp, sp, 128
802017ae: 82 80        	ret

00000000802017b0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
802017b0: 59 71        	addi	sp, sp, -112
802017b2: 86 f4        	sd	ra, 104(sp)
802017b4: a2 f0        	sd	s0, 96(sp)
802017b6: a6 ec        	sd	s1, 88(sp)
802017b8: ca e8        	sd	s2, 80(sp)
802017ba: ce e4        	sd	s3, 72(sp)
802017bc: d2 e0        	sd	s4, 64(sp)
802017be: 56 fc        	sd	s5, 56(sp)
802017c0: 5a f8        	sd	s6, 48(sp)
802017c2: 5e f4        	sd	s7, 40(sp)
802017c4: 62 f0        	sd	s8, 32(sp)
802017c6: 66 ec        	sd	s9, 24(sp)
802017c8: 6a e8        	sd	s10, 16(sp)
802017ca: 6e e4        	sd	s11, 8(sp)
802017cc: be 89        	mv	s3, a5
802017ce: 3a 89        	mv	s2, a4
802017d0: 36 8b        	mv	s6, a3
802017d2: 32 8a        	mv	s4, a2
802017d4: 2a 8c        	mv	s8, a0
802017d6: b9 c1        	beqz	a1, 0x8020181c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
802017d8: 03 64 0c 03  	lwu	s0, 48(s8)
802017dc: 13 75 14 00  	andi	a0, s0, 1
802017e0: b7 0a 11 00  	lui	s5, 272
802017e4: 19 c1        	beqz	a0, 0x802017ea <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
802017e6: 93 0a b0 02  	li	s5, 43
802017ea: b3 0c 35 01  	add	s9, a0, s3
802017ee: 13 75 44 00  	andi	a0, s0, 4
802017f2: 15 cd        	beqz	a0, 0x8020182e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
802017f4: 13 05 00 02  	li	a0, 32
802017f8: 63 70 ab 04  	bgeu	s6, a0, 0x80201838 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
802017fc: 01 45        	li	a0, 0
802017fe: 63 03 0b 04  	beqz	s6, 0x80201844 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80201802: da 85        	mv	a1, s6
80201804: 52 86        	mv	a2, s4
80201806: 83 06 06 00  	lb	a3, 0(a2)
8020180a: 05 06        	addi	a2, a2, 1
8020180c: 93 a6 06 fc  	slti	a3, a3, -64
80201810: 93 c6 16 00  	xori	a3, a3, 1
80201814: fd 15        	addi	a1, a1, -1
80201816: 36 95        	add	a0, a0, a3
80201818: fd f5        	bnez	a1, 0x80201806 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
8020181a: 2d a0        	j	0x80201844 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
8020181c: 03 24 0c 03  	lw	s0, 48(s8)
80201820: 93 8c 19 00  	addi	s9, s3, 1
80201824: 93 0a d0 02  	li	s5, 45
80201828: 13 75 44 00  	andi	a0, s0, 4
8020182c: 61 f5        	bnez	a0, 0x802017f4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
8020182e: 01 4a        	li	s4, 0
80201830: 03 35 0c 01  	ld	a0, 16(s8)
80201834: 01 ed        	bnez	a0, 0x8020184c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80201836: 99 a0        	j	0x8020187c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201838: 52 85        	mv	a0, s4
8020183a: da 85        	mv	a1, s6
8020183c: 97 00 00 00  	auipc	ra, 0
80201840: e7 80 c0 44  	jalr	1100(ra)
80201844: aa 9c        	add	s9, s9, a0
80201846: 03 35 0c 01  	ld	a0, 16(s8)
8020184a: 0d c9        	beqz	a0, 0x8020187c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020184c: 03 3d 8c 01  	ld	s10, 24(s8)
80201850: 63 f6 ac 03  	bgeu	s9, s10, 0x8020187c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201854: 13 75 84 00  	andi	a0, s0, 8
80201858: 41 e5        	bnez	a0, 0x802018e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
8020185a: 83 45 8c 03  	lbu	a1, 56(s8)
8020185e: 0d 46        	li	a2, 3
80201860: 05 45        	li	a0, 1
80201862: 63 83 c5 00  	beq	a1, a2, 0x80201868 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80201866: 2e 85        	mv	a0, a1
80201868: 93 75 35 00  	andi	a1, a0, 3
8020186c: 33 05 9d 41  	sub	a0, s10, s9
80201870: e1 c1        	beqz	a1, 0x80201930 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80201872: 05 46        	li	a2, 1
80201874: 63 91 c5 0c  	bne	a1, a2, 0x80201936 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80201878: 01 4d        	li	s10, 0
8020187a: d9 a0        	j	0x80201940 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
8020187c: 03 34 0c 00  	ld	s0, 0(s8)
80201880: 83 34 8c 00  	ld	s1, 8(s8)
80201884: 22 85        	mv	a0, s0
80201886: a6 85        	mv	a1, s1
80201888: 56 86        	mv	a2, s5
8020188a: d2 86        	mv	a3, s4
8020188c: 5a 87        	mv	a4, s6
8020188e: 97 00 00 00  	auipc	ra, 0
80201892: e7 80 00 14  	jalr	320(ra)
80201896: 85 4b        	li	s7, 1
80201898: 0d c1        	beqz	a0, 0x802018ba <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
8020189a: 5e 85        	mv	a0, s7
8020189c: a6 70        	ld	ra, 104(sp)
8020189e: 06 74        	ld	s0, 96(sp)
802018a0: e6 64        	ld	s1, 88(sp)
802018a2: 46 69        	ld	s2, 80(sp)
802018a4: a6 69        	ld	s3, 72(sp)
802018a6: 06 6a        	ld	s4, 64(sp)
802018a8: e2 7a        	ld	s5, 56(sp)
802018aa: 42 7b        	ld	s6, 48(sp)
802018ac: a2 7b        	ld	s7, 40(sp)
802018ae: 02 7c        	ld	s8, 32(sp)
802018b0: e2 6c        	ld	s9, 24(sp)
802018b2: 42 6d        	ld	s10, 16(sp)
802018b4: a2 6d        	ld	s11, 8(sp)
802018b6: 65 61        	addi	sp, sp, 112
802018b8: 82 80        	ret
802018ba: 9c 6c        	ld	a5, 24(s1)
802018bc: 22 85        	mv	a0, s0
802018be: ca 85        	mv	a1, s2
802018c0: 4e 86        	mv	a2, s3
802018c2: a6 70        	ld	ra, 104(sp)
802018c4: 06 74        	ld	s0, 96(sp)
802018c6: e6 64        	ld	s1, 88(sp)
802018c8: 46 69        	ld	s2, 80(sp)
802018ca: a6 69        	ld	s3, 72(sp)
802018cc: 06 6a        	ld	s4, 64(sp)
802018ce: e2 7a        	ld	s5, 56(sp)
802018d0: 42 7b        	ld	s6, 48(sp)
802018d2: a2 7b        	ld	s7, 40(sp)
802018d4: 02 7c        	ld	s8, 32(sp)
802018d6: e2 6c        	ld	s9, 24(sp)
802018d8: 42 6d        	ld	s10, 16(sp)
802018da: a2 6d        	ld	s11, 8(sp)
802018dc: 65 61        	addi	sp, sp, 112
802018de: 82 87        	jr	a5
802018e0: 03 24 4c 03  	lw	s0, 52(s8)
802018e4: 13 05 00 03  	li	a0, 48
802018e8: 83 45 8c 03  	lbu	a1, 56(s8)
802018ec: 2e e0        	sd	a1, 0(sp)
802018ee: 83 3d 0c 00  	ld	s11, 0(s8)
802018f2: 83 34 8c 00  	ld	s1, 8(s8)
802018f6: 23 2a ac 02  	sw	a0, 52(s8)
802018fa: 85 4b        	li	s7, 1
802018fc: 23 0c 7c 03  	sb	s7, 56(s8)
80201900: 6e 85        	mv	a0, s11
80201902: a6 85        	mv	a1, s1
80201904: 56 86        	mv	a2, s5
80201906: d2 86        	mv	a3, s4
80201908: 5a 87        	mv	a4, s6
8020190a: 97 00 00 00  	auipc	ra, 0
8020190e: e7 80 40 0c  	jalr	196(ra)
80201912: 41 f5        	bnez	a0, 0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201914: 22 8a        	mv	s4, s0
80201916: 33 05 9d 41  	sub	a0, s10, s9
8020191a: 13 04 15 00  	addi	s0, a0, 1
8020191e: 7d 14        	addi	s0, s0, -1
80201920: 49 c4        	beqz	s0, 0x802019aa <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80201922: 90 70        	ld	a2, 32(s1)
80201924: 93 05 00 03  	li	a1, 48
80201928: 6e 85        	mv	a0, s11
8020192a: 02 96        	jalr	a2
8020192c: 6d d9        	beqz	a0, 0x8020191e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
8020192e: b5 b7        	j	0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201930: 2a 8d        	mv	s10, a0
80201932: 2e 85        	mv	a0, a1
80201934: 31 a0        	j	0x80201940 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80201936: 93 05 15 00  	addi	a1, a0, 1
8020193a: 05 81        	srli	a0, a0, 1
8020193c: 13 dd 15 00  	srli	s10, a1, 1
80201940: 83 3c 0c 00  	ld	s9, 0(s8)
80201944: 83 3d 8c 00  	ld	s11, 8(s8)
80201948: 03 24 4c 03  	lw	s0, 52(s8)
8020194c: 93 04 15 00  	addi	s1, a0, 1
80201950: fd 14        	addi	s1, s1, -1
80201952: 89 c8        	beqz	s1, 0x80201964 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80201954: 03 b6 0d 02  	ld	a2, 32(s11)
80201958: 66 85        	mv	a0, s9
8020195a: a2 85        	mv	a1, s0
8020195c: 02 96        	jalr	a2
8020195e: 6d d9        	beqz	a0, 0x80201950 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80201960: 85 4b        	li	s7, 1
80201962: 25 bf        	j	0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201964: 37 05 11 00  	lui	a0, 272
80201968: 85 4b        	li	s7, 1
8020196a: e3 08 a4 f2  	beq	s0, a0, 0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020196e: 66 85        	mv	a0, s9
80201970: ee 85        	mv	a1, s11
80201972: 56 86        	mv	a2, s5
80201974: d2 86        	mv	a3, s4
80201976: 5a 87        	mv	a4, s6
80201978: 97 00 00 00  	auipc	ra, 0
8020197c: e7 80 60 05  	jalr	86(ra)
80201980: 09 fd        	bnez	a0, 0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201982: 83 b6 8d 01  	ld	a3, 24(s11)
80201986: 66 85        	mv	a0, s9
80201988: ca 85        	mv	a1, s2
8020198a: 4e 86        	mv	a2, s3
8020198c: 82 96        	jalr	a3
8020198e: 11 f5        	bnez	a0, 0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201990: 81 44        	li	s1, 0
80201992: 63 0a 9d 02  	beq	s10, s1, 0x802019c6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80201996: 03 b6 0d 02  	ld	a2, 32(s11)
8020199a: 85 04        	addi	s1, s1, 1
8020199c: 66 85        	mv	a0, s9
8020199e: a2 85        	mv	a1, s0
802019a0: 02 96        	jalr	a2
802019a2: 65 d9        	beqz	a0, 0x80201992 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
802019a4: 13 85 f4 ff  	addi	a0, s1, -1
802019a8: 05 a0        	j	0x802019c8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
802019aa: 94 6c        	ld	a3, 24(s1)
802019ac: 6e 85        	mv	a0, s11
802019ae: ca 85        	mv	a1, s2
802019b0: 4e 86        	mv	a2, s3
802019b2: 82 96        	jalr	a3
802019b4: e3 13 05 ee  	bnez	a0, 0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802019b8: 81 4b        	li	s7, 0
802019ba: 23 2a 4c 03  	sw	s4, 52(s8)
802019be: 02 65        	ld	a0, 0(sp)
802019c0: 23 0c ac 02  	sb	a0, 56(s8)
802019c4: d9 bd        	j	0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802019c6: 6a 85        	mv	a0, s10
802019c8: b3 3b a5 01  	sltu	s7, a0, s10
802019cc: f9 b5        	j	0x8020189a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

00000000802019ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
802019ce: 79 71        	addi	sp, sp, -48
802019d0: 06 f4        	sd	ra, 40(sp)
802019d2: 22 f0        	sd	s0, 32(sp)
802019d4: 26 ec        	sd	s1, 24(sp)
802019d6: 4a e8        	sd	s2, 16(sp)
802019d8: 4e e4        	sd	s3, 8(sp)
802019da: 9b 07 06 00  	sext.w	a5, a2
802019de: 37 08 11 00  	lui	a6, 272
802019e2: 3a 89        	mv	s2, a4
802019e4: b6 84        	mv	s1, a3
802019e6: 2e 84        	mv	s0, a1
802019e8: aa 89        	mv	s3, a0
802019ea: 63 89 07 01  	beq	a5, a6, 0x802019fc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
802019ee: 14 70        	ld	a3, 32(s0)
802019f0: 4e 85        	mv	a0, s3
802019f2: b2 85        	mv	a1, a2
802019f4: 82 96        	jalr	a3
802019f6: aa 85        	mv	a1, a0
802019f8: 05 45        	li	a0, 1
802019fa: 91 ed        	bnez	a1, 0x80201a16 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
802019fc: 81 cc        	beqz	s1, 0x80201a14 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
802019fe: 1c 6c        	ld	a5, 24(s0)
80201a00: 4e 85        	mv	a0, s3
80201a02: a6 85        	mv	a1, s1
80201a04: 4a 86        	mv	a2, s2
80201a06: a2 70        	ld	ra, 40(sp)
80201a08: 02 74        	ld	s0, 32(sp)
80201a0a: e2 64        	ld	s1, 24(sp)
80201a0c: 42 69        	ld	s2, 16(sp)
80201a0e: a2 69        	ld	s3, 8(sp)
80201a10: 45 61        	addi	sp, sp, 48
80201a12: 82 87        	jr	a5
80201a14: 01 45        	li	a0, 0
80201a16: a2 70        	ld	ra, 40(sp)
80201a18: 02 74        	ld	s0, 32(sp)
80201a1a: e2 64        	ld	s1, 24(sp)
80201a1c: 42 69        	ld	s2, 16(sp)
80201a1e: a2 69        	ld	s3, 8(sp)
80201a20: 45 61        	addi	sp, sp, 48
80201a22: 82 80        	ret

0000000080201a24 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80201a24: 5d 71        	addi	sp, sp, -80
80201a26: 86 e4        	sd	ra, 72(sp)
80201a28: a2 e0        	sd	s0, 64(sp)
80201a2a: 26 fc        	sd	s1, 56(sp)
80201a2c: 4a f8        	sd	s2, 48(sp)
80201a2e: 4e f4        	sd	s3, 40(sp)
80201a30: 52 f0        	sd	s4, 32(sp)
80201a32: 56 ec        	sd	s5, 24(sp)
80201a34: 5a e8        	sd	s6, 16(sp)
80201a36: 5e e4        	sd	s7, 8(sp)
80201a38: 2a 8a        	mv	s4, a0
80201a3a: 83 32 05 01  	ld	t0, 16(a0)
80201a3e: 08 71        	ld	a0, 32(a0)
80201a40: 93 86 f2 ff  	addi	a3, t0, -1
80201a44: b3 36 d0 00  	snez	a3, a3
80201a48: 13 07 f5 ff  	addi	a4, a0, -1
80201a4c: 33 37 e0 00  	snez	a4, a4
80201a50: f9 8e        	and	a3, a3, a4
80201a52: b2 89        	mv	s3, a2
80201a54: 2e 89        	mv	s2, a1
80201a56: 63 9d 06 16  	bnez	a3, 0x80201bd0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201a5a: 85 45        	li	a1, 1
80201a5c: 63 18 b5 10  	bne	a0, a1, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201a60: 03 35 8a 02  	ld	a0, 40(s4)
80201a64: 81 45        	li	a1, 0
80201a66: b3 06 39 01  	add	a3, s2, s3
80201a6a: 13 07 15 00  	addi	a4, a0, 1
80201a6e: 37 03 11 00  	lui	t1, 272
80201a72: 93 08 f0 0d  	li	a7, 223
80201a76: 13 08 00 0f  	li	a6, 240
80201a7a: 4a 86        	mv	a2, s2
80201a7c: 01 a8        	j	0x80201a8c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80201a7e: 13 05 16 00  	addi	a0, a2, 1
80201a82: 91 8d        	sub	a1, a1, a2
80201a84: aa 95        	add	a1, a1, a0
80201a86: 2a 86        	mv	a2, a0
80201a88: 63 02 64 0e  	beq	s0, t1, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201a8c: 7d 17        	addi	a4, a4, -1
80201a8e: 25 c7        	beqz	a4, 0x80201af6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80201a90: 63 0e d6 0c  	beq	a2, a3, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201a94: 03 05 06 00  	lb	a0, 0(a2)
80201a98: 13 74 f5 0f  	andi	s0, a0, 255
80201a9c: e3 51 05 fe  	bgez	a0, 0x80201a7e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80201aa0: 03 45 16 00  	lbu	a0, 1(a2)
80201aa4: 93 77 f4 01  	andi	a5, s0, 31
80201aa8: 93 74 f5 03  	andi	s1, a0, 63
80201aac: 63 f9 88 02  	bgeu	a7, s0, 0x80201ade <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80201ab0: 03 45 26 00  	lbu	a0, 2(a2)
80201ab4: 9a 04        	slli	s1, s1, 6
80201ab6: 13 75 f5 03  	andi	a0, a0, 63
80201aba: c9 8c        	or	s1, s1, a0
80201abc: 63 67 04 03  	bltu	s0, a6, 0x80201aea <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80201ac0: 03 45 36 00  	lbu	a0, 3(a2)
80201ac4: f6 17        	slli	a5, a5, 61
80201ac6: ad 93        	srli	a5, a5, 43
80201ac8: 9a 04        	slli	s1, s1, 6
80201aca: 13 75 f5 03  	andi	a0, a0, 63
80201ace: 45 8d        	or	a0, a0, s1
80201ad0: 33 64 f5 00  	or	s0, a0, a5
80201ad4: 63 0c 64 08  	beq	s0, t1, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201ad8: 13 05 46 00  	addi	a0, a2, 4
80201adc: 5d b7        	j	0x80201a82 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201ade: 13 05 26 00  	addi	a0, a2, 2
80201ae2: 9a 07        	slli	a5, a5, 6
80201ae4: 33 e4 97 00  	or	s0, a5, s1
80201ae8: 69 bf        	j	0x80201a82 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201aea: 13 05 36 00  	addi	a0, a2, 3
80201aee: b2 07        	slli	a5, a5, 12
80201af0: 33 e4 f4 00  	or	s0, s1, a5
80201af4: 79 b7        	j	0x80201a82 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201af6: 63 0b d6 06  	beq	a2, a3, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201afa: 03 05 06 00  	lb	a0, 0(a2)
80201afe: 63 53 05 04  	bgez	a0, 0x80201b44 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201b02: 13 75 f5 0f  	andi	a0, a0, 255
80201b06: 93 06 00 0e  	li	a3, 224
80201b0a: 63 6d d5 02  	bltu	a0, a3, 0x80201b44 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201b0e: 93 06 00 0f  	li	a3, 240
80201b12: 63 69 d5 02  	bltu	a0, a3, 0x80201b44 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201b16: 83 46 16 00  	lbu	a3, 1(a2)
80201b1a: 03 47 26 00  	lbu	a4, 2(a2)
80201b1e: 93 f6 f6 03  	andi	a3, a3, 63
80201b22: 13 77 f7 03  	andi	a4, a4, 63
80201b26: 03 46 36 00  	lbu	a2, 3(a2)
80201b2a: 76 15        	slli	a0, a0, 61
80201b2c: 2d 91        	srli	a0, a0, 43
80201b2e: b2 06        	slli	a3, a3, 12
80201b30: 1a 07        	slli	a4, a4, 6
80201b32: d9 8e        	or	a3, a3, a4
80201b34: 13 76 f6 03  	andi	a2, a2, 63
80201b38: 55 8e        	or	a2, a2, a3
80201b3a: 51 8d        	or	a0, a0, a2
80201b3c: 37 06 11 00  	lui	a2, 272
80201b40: 63 06 c5 02  	beq	a0, a2, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b44: 85 c1        	beqz	a1, 0x80201b64 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80201b46: 63 fd 35 01  	bgeu	a1, s3, 0x80201b60 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80201b4a: 33 05 b9 00  	add	a0, s2, a1
80201b4e: 03 05 05 00  	lb	a0, 0(a0)
80201b52: 13 06 00 fc  	li	a2, -64
80201b56: 63 57 c5 00  	bge	a0, a2, 0x80201b64 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80201b5a: 01 45        	li	a0, 0
80201b5c: 11 e5        	bnez	a0, 0x80201b68 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80201b5e: 39 a0        	j	0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b60: e3 9d 35 ff  	bne	a1, s3, 0x80201b5a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80201b64: 4a 85        	mv	a0, s2
80201b66: 19 c1        	beqz	a0, 0x80201b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201b68: ae 89        	mv	s3, a1
80201b6a: 2a 89        	mv	s2, a0
80201b6c: 63 82 02 06  	beqz	t0, 0x80201bd0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201b70: 03 34 8a 01  	ld	s0, 24(s4)
80201b74: 13 05 00 02  	li	a0, 32
80201b78: 63 f4 a9 04  	bgeu	s3, a0, 0x80201bc0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80201b7c: 01 45        	li	a0, 0
80201b7e: 63 8e 09 00  	beqz	s3, 0x80201b9a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80201b82: ce 85        	mv	a1, s3
80201b84: 4a 86        	mv	a2, s2
80201b86: 83 06 06 00  	lb	a3, 0(a2)
80201b8a: 05 06        	addi	a2, a2, 1
80201b8c: 93 a6 06 fc  	slti	a3, a3, -64
80201b90: 93 c6 16 00  	xori	a3, a3, 1
80201b94: fd 15        	addi	a1, a1, -1
80201b96: 36 95        	add	a0, a0, a3
80201b98: fd f5        	bnez	a1, 0x80201b86 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80201b9a: 63 7b 85 02  	bgeu	a0, s0, 0x80201bd0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201b9e: 83 45 8a 03  	lbu	a1, 56(s4)
80201ba2: 8d 46        	li	a3, 3
80201ba4: 01 46        	li	a2, 0
80201ba6: 63 83 d5 00  	beq	a1, a3, 0x80201bac <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80201baa: 2e 86        	mv	a2, a1
80201bac: 93 75 36 00  	andi	a1, a2, 3
80201bb0: 33 05 a4 40  	sub	a0, s0, a0
80201bb4: a1 c1        	beqz	a1, 0x80201bf4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80201bb6: 05 46        	li	a2, 1
80201bb8: 63 91 c5 04  	bne	a1, a2, 0x80201bfa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80201bbc: 81 4a        	li	s5, 0
80201bbe: 99 a0        	j	0x80201c04 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80201bc0: 4a 85        	mv	a0, s2
80201bc2: ce 85        	mv	a1, s3
80201bc4: 97 00 00 00  	auipc	ra, 0
80201bc8: e7 80 40 0c  	jalr	196(ra)
80201bcc: e3 69 85 fc  	bltu	a0, s0, 0x80201b9e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80201bd0: 83 35 8a 00  	ld	a1, 8(s4)
80201bd4: 03 35 0a 00  	ld	a0, 0(s4)
80201bd8: 9c 6d        	ld	a5, 24(a1)
80201bda: ca 85        	mv	a1, s2
80201bdc: 4e 86        	mv	a2, s3
80201bde: a6 60        	ld	ra, 72(sp)
80201be0: 06 64        	ld	s0, 64(sp)
80201be2: e2 74        	ld	s1, 56(sp)
80201be4: 42 79        	ld	s2, 48(sp)
80201be6: a2 79        	ld	s3, 40(sp)
80201be8: 02 7a        	ld	s4, 32(sp)
80201bea: e2 6a        	ld	s5, 24(sp)
80201bec: 42 6b        	ld	s6, 16(sp)
80201bee: a2 6b        	ld	s7, 8(sp)
80201bf0: 61 61        	addi	sp, sp, 80
80201bf2: 82 87        	jr	a5
80201bf4: aa 8a        	mv	s5, a0
80201bf6: 2e 85        	mv	a0, a1
80201bf8: 31 a0        	j	0x80201c04 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80201bfa: 93 05 15 00  	addi	a1, a0, 1
80201bfe: 05 81        	srli	a0, a0, 1
80201c00: 93 da 15 00  	srli	s5, a1, 1
80201c04: 03 3b 0a 00  	ld	s6, 0(s4)
80201c08: 83 3b 8a 00  	ld	s7, 8(s4)
80201c0c: 83 24 4a 03  	lw	s1, 52(s4)
80201c10: 13 04 15 00  	addi	s0, a0, 1
80201c14: 7d 14        	addi	s0, s0, -1
80201c16: 09 c8        	beqz	s0, 0x80201c28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80201c18: 03 b6 0b 02  	ld	a2, 32(s7)
80201c1c: 5a 85        	mv	a0, s6
80201c1e: a6 85        	mv	a1, s1
80201c20: 02 96        	jalr	a2
80201c22: 6d d9        	beqz	a0, 0x80201c14 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80201c24: 05 4a        	li	s4, 1
80201c26: 2d a8        	j	0x80201c60 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201c28: 37 05 11 00  	lui	a0, 272
80201c2c: 05 4a        	li	s4, 1
80201c2e: 63 89 a4 02  	beq	s1, a0, 0x80201c60 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201c32: 83 b6 8b 01  	ld	a3, 24(s7)
80201c36: 5a 85        	mv	a0, s6
80201c38: ca 85        	mv	a1, s2
80201c3a: 4e 86        	mv	a2, s3
80201c3c: 82 96        	jalr	a3
80201c3e: 0d e1        	bnez	a0, 0x80201c60 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80201c40: 01 44        	li	s0, 0
80201c42: 63 8c 8a 00  	beq	s5, s0, 0x80201c5a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80201c46: 03 b6 0b 02  	ld	a2, 32(s7)
80201c4a: 05 04        	addi	s0, s0, 1
80201c4c: 5a 85        	mv	a0, s6
80201c4e: a6 85        	mv	a1, s1
80201c50: 02 96        	jalr	a2
80201c52: 65 d9        	beqz	a0, 0x80201c42 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80201c54: 13 05 f4 ff  	addi	a0, s0, -1
80201c58: 11 a0        	j	0x80201c5c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80201c5a: 56 85        	mv	a0, s5
80201c5c: 33 3a 55 01  	sltu	s4, a0, s5
80201c60: 52 85        	mv	a0, s4
80201c62: a6 60        	ld	ra, 72(sp)
80201c64: 06 64        	ld	s0, 64(sp)
80201c66: e2 74        	ld	s1, 56(sp)
80201c68: 42 79        	ld	s2, 48(sp)
80201c6a: a2 79        	ld	s3, 40(sp)
80201c6c: 02 7a        	ld	s4, 32(sp)
80201c6e: e2 6a        	ld	s5, 24(sp)
80201c70: 42 6b        	ld	s6, 16(sp)
80201c72: a2 6b        	ld	s7, 8(sp)
80201c74: 61 61        	addi	sp, sp, 80
80201c76: 82 80        	ret

0000000080201c78 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80201c78: ae 86        	mv	a3, a1
80201c7a: aa 85        	mv	a1, a0
80201c7c: 32 85        	mv	a0, a2
80201c7e: 36 86        	mv	a2, a3
80201c80: 17 03 00 00  	auipc	t1, 0
80201c84: 67 00 43 da  	jr	-604(t1)

0000000080201c88 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80201c88: 2a 86        	mv	a2, a0
80201c8a: 1d 05        	addi	a0, a0, 7
80201c8c: 13 77 85 ff  	andi	a4, a0, -8
80201c90: b3 08 c7 40  	sub	a7, a4, a2
80201c94: 63 ec 15 01  	bltu	a1, a7, 0x80201cac <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80201c98: 33 88 15 41  	sub	a6, a1, a7
80201c9c: 13 35 88 00  	sltiu	a0, a6, 8
80201ca0: 93 b7 98 00  	sltiu	a5, a7, 9
80201ca4: 93 c7 17 00  	xori	a5, a5, 1
80201ca8: 5d 8d        	or	a0, a0, a5
80201caa: 11 cd        	beqz	a0, 0x80201cc6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80201cac: 01 45        	li	a0, 0
80201cae: 99 c9        	beqz	a1, 0x80201cc4 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80201cb0: 83 06 06 00  	lb	a3, 0(a2)
80201cb4: 05 06        	addi	a2, a2, 1
80201cb6: 93 a6 06 fc  	slti	a3, a3, -64
80201cba: 93 c6 16 00  	xori	a3, a3, 1
80201cbe: fd 15        	addi	a1, a1, -1
80201cc0: 36 95        	add	a0, a0, a3
80201cc2: fd f5        	bnez	a1, 0x80201cb0 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80201cc4: 82 80        	ret
80201cc6: 93 75 78 00  	andi	a1, a6, 7
80201cca: 81 47        	li	a5, 0
80201ccc: 63 0f c7 00  	beq	a4, a2, 0x80201cea <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80201cd0: 33 07 e6 40  	sub	a4, a2, a4
80201cd4: 32 85        	mv	a0, a2
80201cd6: 83 06 05 00  	lb	a3, 0(a0)
80201cda: 05 05        	addi	a0, a0, 1
80201cdc: 93 a6 06 fc  	slti	a3, a3, -64
80201ce0: 93 c6 16 00  	xori	a3, a3, 1
80201ce4: 05 07        	addi	a4, a4, 1
80201ce6: b6 97        	add	a5, a5, a3
80201ce8: 7d f7        	bnez	a4, 0x80201cd6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80201cea: b3 02 16 01  	add	t0, a2, a7
80201cee: 01 46        	li	a2, 0
80201cf0: 99 cd        	beqz	a1, 0x80201d0e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80201cf2: 13 75 88 ff  	andi	a0, a6, -8
80201cf6: b3 86 a2 00  	add	a3, t0, a0
80201cfa: 03 85 06 00  	lb	a0, 0(a3)
80201cfe: 85 06        	addi	a3, a3, 1
80201d00: 13 25 05 fc  	slti	a0, a0, -64
80201d04: 13 45 15 00  	xori	a0, a0, 1
80201d08: fd 15        	addi	a1, a1, -1
80201d0a: 2a 96        	add	a2, a2, a0
80201d0c: fd f5        	bnez	a1, 0x80201cfa <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80201d0e: 13 57 38 00  	srli	a4, a6, 3

0000000080201d12 <.LBB292_27>:
80201d12: 17 15 00 00  	auipc	a0, 1
80201d16: 13 05 e5 4a  	addi	a0, a0, 1198
80201d1a: 03 3f 05 00  	ld	t5, 0(a0)

0000000080201d1e <.LBB292_28>:
80201d1e: 17 15 00 00  	auipc	a0, 1
80201d22: 13 05 a5 4a  	addi	a0, a0, 1194
80201d26: 83 38 05 00  	ld	a7, 0(a0)
80201d2a: 37 15 00 10  	lui	a0, 65537
80201d2e: 12 05        	slli	a0, a0, 4
80201d30: 05 05        	addi	a0, a0, 1
80201d32: 42 05        	slli	a0, a0, 16
80201d34: 13 08 15 00  	addi	a6, a0, 1
80201d38: 33 05 f6 00  	add	a0, a2, a5
80201d3c: 25 a0        	j	0x80201d64 <.LBB292_28+0x46>
80201d3e: 13 16 3e 00  	slli	a2, t3, 3
80201d42: b3 02 c3 00  	add	t0, t1, a2
80201d46: 33 87 c3 41  	sub	a4, t2, t3
80201d4a: 13 76 3e 00  	andi	a2, t3, 3
80201d4e: b3 f6 15 01  	and	a3, a1, a7
80201d52: a1 81        	srli	a1, a1, 8
80201d54: b3 f5 15 01  	and	a1, a1, a7
80201d58: b6 95        	add	a1, a1, a3
80201d5a: b3 85 05 03  	mul	a1, a1, a6
80201d5e: c1 91        	srli	a1, a1, 48
80201d60: 2e 95        	add	a0, a0, a1
80201d62: 41 e2        	bnez	a2, 0x80201de2 <.LBB292_28+0xc4>
80201d64: 25 d3        	beqz	a4, 0x80201cc4 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80201d66: ba 83        	mv	t2, a4
80201d68: 16 83        	mv	t1, t0
80201d6a: 93 05 00 0c  	li	a1, 192
80201d6e: 3a 8e        	mv	t3, a4
80201d70: 63 64 b7 00  	bltu	a4, a1, 0x80201d78 <.LBB292_28+0x5a>
80201d74: 13 0e 00 0c  	li	t3, 192
80201d78: 93 75 ce 0f  	andi	a1, t3, 252
80201d7c: 13 96 35 00  	slli	a2, a1, 3
80201d80: b3 0e c3 00  	add	t4, t1, a2
80201d84: cd dd        	beqz	a1, 0x80201d3e <.LBB292_28+0x20>
80201d86: 81 45        	li	a1, 0
80201d88: 1a 86        	mv	a2, t1
80201d8a: 55 da        	beqz	a2, 0x80201d3e <.LBB292_28+0x20>
80201d8c: 18 62        	ld	a4, 0(a2)
80201d8e: 93 47 f7 ff  	not	a5, a4
80201d92: 9d 83        	srli	a5, a5, 7
80201d94: 19 83        	srli	a4, a4, 6
80201d96: 14 66        	ld	a3, 8(a2)
80201d98: 5d 8f        	or	a4, a4, a5
80201d9a: 33 77 e7 01  	and	a4, a4, t5
80201d9e: ba 95        	add	a1, a1, a4
80201da0: 13 c7 f6 ff  	not	a4, a3
80201da4: 1d 83        	srli	a4, a4, 7
80201da6: 99 82        	srli	a3, a3, 6
80201da8: 1c 6a        	ld	a5, 16(a2)
80201daa: d9 8e        	or	a3, a3, a4
80201dac: b3 f6 e6 01  	and	a3, a3, t5
80201db0: b6 95        	add	a1, a1, a3
80201db2: 93 c6 f7 ff  	not	a3, a5
80201db6: 9d 82        	srli	a3, a3, 7
80201db8: 13 d7 67 00  	srli	a4, a5, 6
80201dbc: 1c 6e        	ld	a5, 24(a2)
80201dbe: d9 8e        	or	a3, a3, a4
80201dc0: b3 f6 e6 01  	and	a3, a3, t5
80201dc4: b6 95        	add	a1, a1, a3
80201dc6: 93 c6 f7 ff  	not	a3, a5
80201dca: 9d 82        	srli	a3, a3, 7
80201dcc: 13 d7 67 00  	srli	a4, a5, 6
80201dd0: d9 8e        	or	a3, a3, a4
80201dd2: b3 f6 e6 01  	and	a3, a3, t5
80201dd6: 13 06 06 02  	addi	a2, a2, 32
80201dda: b6 95        	add	a1, a1, a3
80201ddc: e3 17 d6 fb  	bne	a2, t4, 0x80201d8a <.LBB292_28+0x6c>
80201de0: b9 bf        	j	0x80201d3e <.LBB292_28+0x20>
80201de2: 63 0a 03 02  	beqz	t1, 0x80201e16 <.LBB292_28+0xf8>
80201de6: 93 05 00 0c  	li	a1, 192
80201dea: 63 e4 b3 00  	bltu	t2, a1, 0x80201df2 <.LBB292_28+0xd4>
80201dee: 93 03 00 0c  	li	t2, 192
80201df2: 81 45        	li	a1, 0
80201df4: 13 f6 33 00  	andi	a2, t2, 3
80201df8: 0e 06        	slli	a2, a2, 3
80201dfa: 83 b6 0e 00  	ld	a3, 0(t4)
80201dfe: a1 0e        	addi	t4, t4, 8
80201e00: 13 c7 f6 ff  	not	a4, a3
80201e04: 1d 83        	srli	a4, a4, 7
80201e06: 99 82        	srli	a3, a3, 6
80201e08: d9 8e        	or	a3, a3, a4
80201e0a: b3 f6 e6 01  	and	a3, a3, t5
80201e0e: 61 16        	addi	a2, a2, -8
80201e10: b6 95        	add	a1, a1, a3
80201e12: 65 f6        	bnez	a2, 0x80201dfa <.LBB292_28+0xdc>
80201e14: 11 a0        	j	0x80201e18 <.LBB292_28+0xfa>
80201e16: 81 45        	li	a1, 0
80201e18: 33 f6 15 01  	and	a2, a1, a7
80201e1c: a1 81        	srli	a1, a1, 8
80201e1e: b3 f5 15 01  	and	a1, a1, a7
80201e22: b2 95        	add	a1, a1, a2
80201e24: b3 85 05 03  	mul	a1, a1, a6
80201e28: c1 91        	srli	a1, a1, 48
80201e2a: 2e 95        	add	a0, a0, a1
80201e2c: 82 80        	ret

0000000080201e2e <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80201e2e: 39 71        	addi	sp, sp, -64
80201e30: 06 fc        	sd	ra, 56(sp)
80201e32: 22 f8        	sd	s0, 48(sp)
80201e34: 26 f4        	sd	s1, 40(sp)
80201e36: 32 88        	mv	a6, a2
80201e38: 93 56 45 00  	srli	a3, a0, 4
80201e3c: 13 07 70 02  	li	a4, 39
80201e40: 93 07 10 27  	li	a5, 625

0000000080201e44 <.LBB580_10>:
80201e44: 97 0e 00 00  	auipc	t4, 0
80201e48: 93 8e ce 43  	addi	t4, t4, 1084
80201e4c: 63 f3 f6 02  	bgeu	a3, a5, 0x80201e72 <.LBB580_10+0x2e>
80201e50: 93 06 30 06  	li	a3, 99
80201e54: 63 e9 a6 0a  	bltu	a3, a0, 0x80201f06 <.LBB580_11+0x92>
80201e58: 29 46        	li	a2, 10
80201e5a: 63 77 c5 0e  	bgeu	a0, a2, 0x80201f48 <.LBB580_11+0xd4>
80201e5e: 93 06 f7 ff  	addi	a3, a4, -1
80201e62: 13 06 11 00  	addi	a2, sp, 1
80201e66: 36 96        	add	a2, a2, a3
80201e68: 1b 05 05 03  	addiw	a0, a0, 48
80201e6c: 23 00 a6 00  	sb	a0, 0(a2)
80201e70: dd a8        	j	0x80201f66 <.LBB580_11+0xf2>
80201e72: 01 47        	li	a4, 0

0000000080201e74 <.LBB580_11>:
80201e74: 97 16 00 00  	auipc	a3, 1
80201e78: 93 86 c6 3b  	addi	a3, a3, 956
80201e7c: 83 b8 06 00  	ld	a7, 0(a3)
80201e80: 89 66        	lui	a3, 2
80201e82: 9b 83 06 71  	addiw	t2, a3, 1808
80201e86: 85 66        	lui	a3, 1
80201e88: 1b 8e b6 47  	addiw	t3, a3, 1147
80201e8c: 93 02 40 06  	li	t0, 100
80201e90: 13 03 11 00  	addi	t1, sp, 1
80201e94: b7 e6 f5 05  	lui	a3, 24414
80201e98: 1b 8f f6 0f  	addiw	t5, a3, 255
80201e9c: aa 87        	mv	a5, a0
80201e9e: 33 35 15 03  	mulhu	a0, a0, a7
80201ea2: 2d 81        	srli	a0, a0, 11
80201ea4: 3b 06 75 02  	mulw	a2, a0, t2
80201ea8: 3b 86 c7 40  	subw	a2, a5, a2
80201eac: 93 16 06 03  	slli	a3, a2, 48
80201eb0: c9 92        	srli	a3, a3, 50
80201eb2: b3 86 c6 03  	mul	a3, a3, t3
80201eb6: 93 df 16 01  	srli	t6, a3, 17
80201eba: c1 82        	srli	a3, a3, 16
80201ebc: 13 f4 e6 7f  	andi	s0, a3, 2046
80201ec0: bb 86 5f 02  	mulw	a3, t6, t0
80201ec4: 15 9e        	subw	a2, a2, a3
80201ec6: 46 16        	slli	a2, a2, 49
80201ec8: 41 92        	srli	a2, a2, 48
80201eca: b3 86 8e 00  	add	a3, t4, s0
80201ece: 33 04 e3 00  	add	s0, t1, a4
80201ed2: 83 cf 06 00  	lbu	t6, 0(a3)
80201ed6: 83 86 16 00  	lb	a3, 1(a3)
80201eda: 76 96        	add	a2, a2, t4
80201edc: 83 04 16 00  	lb	s1, 1(a2)
80201ee0: 03 46 06 00  	lbu	a2, 0(a2)
80201ee4: 23 02 d4 02  	sb	a3, 36(s0)
80201ee8: a3 01 f4 03  	sb	t6, 35(s0)
80201eec: 23 03 94 02  	sb	s1, 38(s0)
80201ef0: a3 02 c4 02  	sb	a2, 37(s0)
80201ef4: 71 17        	addi	a4, a4, -4
80201ef6: e3 63 ff fa  	bltu	t5, a5, 0x80201e9c <.LBB580_11+0x28>
80201efa: 13 07 77 02  	addi	a4, a4, 39
80201efe: 93 06 30 06  	li	a3, 99
80201f02: e3 fb a6 f4  	bgeu	a3, a0, 0x80201e58 <.LBB580_10+0x14>
80201f06: 13 16 05 03  	slli	a2, a0, 48
80201f0a: 49 92        	srli	a2, a2, 50
80201f0c: 85 66        	lui	a3, 1
80201f0e: 9b 86 b6 47  	addiw	a3, a3, 1147
80201f12: 33 06 d6 02  	mul	a2, a2, a3
80201f16: 45 82        	srli	a2, a2, 17
80201f18: 93 06 40 06  	li	a3, 100
80201f1c: bb 06 d6 02  	mulw	a3, a2, a3
80201f20: 15 9d        	subw	a0, a0, a3
80201f22: 46 15        	slli	a0, a0, 49
80201f24: 41 91        	srli	a0, a0, 48
80201f26: 79 17        	addi	a4, a4, -2
80201f28: 76 95        	add	a0, a0, t4
80201f2a: 83 06 15 00  	lb	a3, 1(a0)
80201f2e: 03 45 05 00  	lbu	a0, 0(a0)
80201f32: 93 07 11 00  	addi	a5, sp, 1
80201f36: ba 97        	add	a5, a5, a4
80201f38: a3 80 d7 00  	sb	a3, 1(a5)
80201f3c: 23 80 a7 00  	sb	a0, 0(a5)
80201f40: 32 85        	mv	a0, a2
80201f42: 29 46        	li	a2, 10
80201f44: e3 6d c5 f0  	bltu	a0, a2, 0x80201e5e <.LBB580_10+0x1a>
80201f48: 06 05        	slli	a0, a0, 1
80201f4a: 93 06 e7 ff  	addi	a3, a4, -2
80201f4e: 76 95        	add	a0, a0, t4
80201f50: 03 06 15 00  	lb	a2, 1(a0)
80201f54: 03 45 05 00  	lbu	a0, 0(a0)
80201f58: 13 07 11 00  	addi	a4, sp, 1
80201f5c: 36 97        	add	a4, a4, a3
80201f5e: a3 00 c7 00  	sb	a2, 1(a4)
80201f62: 23 00 a7 00  	sb	a0, 0(a4)
80201f66: 13 05 11 00  	addi	a0, sp, 1
80201f6a: 33 07 d5 00  	add	a4, a0, a3
80201f6e: 13 05 70 02  	li	a0, 39
80201f72: b3 07 d5 40  	sub	a5, a0, a3

0000000080201f76 <.LBB580_12>:
80201f76: 17 06 00 00  	auipc	a2, 0
80201f7a: 13 06 26 2c  	addi	a2, a2, 706
80201f7e: 42 85        	mv	a0, a6
80201f80: 81 46        	li	a3, 0
80201f82: 97 00 00 00  	auipc	ra, 0
80201f86: e7 80 e0 82  	jalr	-2002(ra)
80201f8a: e2 70        	ld	ra, 56(sp)
80201f8c: 42 74        	ld	s0, 48(sp)
80201f8e: a2 74        	ld	s1, 40(sp)
80201f90: 21 61        	addi	sp, sp, 64
80201f92: 82 80        	ret

0000000080201f94 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80201f94: 03 65 05 00  	lwu	a0, 0(a0)
80201f98: 2e 86        	mv	a2, a1
80201f9a: 85 45        	li	a1, 1
80201f9c: 17 03 00 00  	auipc	t1, 0
80201fa0: 67 00 23 e9  	jr	-366(t1)

0000000080201fa4 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
80201fa4: 90 65        	ld	a2, 8(a1)
80201fa6: 88 61        	ld	a0, 0(a1)
80201fa8: 1c 6e        	ld	a5, 24(a2)

0000000080201faa <.LBB612_1>:
80201faa: 97 05 00 00  	auipc	a1, 0
80201fae: 93 85 e5 39  	addi	a1, a1, 926
80201fb2: 15 46        	li	a2, 5
80201fb4: 82 87        	jr	a5

0000000080201fb6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80201fb6: 10 65        	ld	a2, 8(a0)
80201fb8: 08 61        	ld	a0, 0(a0)
80201fba: 1c 6e        	ld	a5, 24(a2)
80201fbc: 82 87        	jr	a5

0000000080201fbe <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80201fbe: 14 61        	ld	a3, 0(a0)
80201fc0: 10 65        	ld	a2, 8(a0)
80201fc2: 2e 85        	mv	a0, a1
80201fc4: b6 85        	mv	a1, a3
80201fc6: 17 03 00 00  	auipc	t1, 0
80201fca: 67 00 e3 a5  	jr	-1442(t1)
