
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 51 01 00  	auipc	sp, 21
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 10 00 00  	auipc	ra, 1
8020000c: e7 80 00 09  	jalr	144(ra)
		...

0000000080201000 <_trampoline>:
; pub fn print_logo() {
80201000: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
80201002: 86 ec        	sd	ra, 88(sp)
80201004: a2 e8        	sd	s0, 80(sp)
80201006: 80 10        	addi	s0, sp, 96

0000000080201008 <.LBB0_3>:
80201008: 17 25 00 00  	auipc	a0, 2
8020100c: 13 05 85 17  	addi	a0, a0, 376
80201010: 23 30 a4 fa  	sd	a0, -96(s0)

0000000080201014 <.LBB0_4>:
80201014: 17 15 00 00  	auipc	a0, 1
80201018: 13 05 05 96  	addi	a0, a0, -1696
8020101c: 23 34 a4 fa  	sd	a0, -88(s0)
80201020: 13 05 84 fe  	addi	a0, s0, -24
80201024: 23 38 a4 fa  	sd	a0, -80(s0)
80201028: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020102c <.LBB0_5>:
8020102c: 17 25 00 00  	auipc	a0, 2
80201030: 13 05 c5 fd  	addi	a0, a0, -36
80201034: 23 34 a4 fc  	sd	a0, -56(s0)
80201038: 09 45        	li	a0, 2
8020103a: 23 38 a4 fc  	sd	a0, -48(s0)
8020103e: 13 05 04 fa  	addi	a0, s0, -96
80201042: 23 3c a4 fc  	sd	a0, -40(s0)
80201046: 05 45        	li	a0, 1
80201048: 23 30 a4 fe  	sd	a0, -32(s0)

000000008020104c <.LBB0_6>:
8020104c: 97 25 00 00  	auipc	a1, 2
80201050: 93 85 c5 2a  	addi	a1, a1, 684
80201054: 13 05 04 fb  	addi	a0, s0, -80
80201058: 13 06 84 fb  	addi	a2, s0, -72
8020105c: 97 10 00 00  	auipc	ra, 1
80201060: e7 80 40 a8  	jalr	-1404(ra)
80201064: 09 e5        	bnez	a0, 0x8020106e <.LBB0_7>
; }
80201066: e6 60        	ld	ra, 88(sp)
80201068: 46 64        	ld	s0, 80(sp)
8020106a: 25 61        	addi	sp, sp, 96
8020106c: 82 80        	ret

000000008020106e <.LBB0_7>:
8020106e: 17 25 00 00  	auipc	a0, 2
80201072: 13 05 a5 2b  	addi	a0, a0, 698

0000000080201076 <.LBB0_8>:
80201076: 97 26 00 00  	auipc	a3, 2
8020107a: 93 86 26 2e  	addi	a3, a3, 738

000000008020107e <.LBB0_9>:
8020107e: 17 27 00 00  	auipc	a4, 2
80201082: 13 07 a7 30  	addi	a4, a4, 778
80201086: 93 05 b0 02  	li	a1, 43
8020108a: 13 06 84 fe  	addi	a2, s0, -24
8020108e: 97 10 00 00  	auipc	ra, 1
80201092: e7 80 40 9d  	jalr	-1580(ra)
80201096: 00 00        	unimp	

0000000080201098 <main>:
; pub fn main() {
80201098: 5d 71        	addi	sp, sp, -80
8020109a: 86 e4        	sd	ra, 72(sp)
8020109c: a2 e0        	sd	s0, 64(sp)
8020109e: 26 fc        	sd	s1, 56(sp)
802010a0: 4a f8        	sd	s2, 48(sp)
802010a2: 80 08        	addi	s0, sp, 80

00000000802010a4 <.LBB0_8>:
802010a4: 17 55 01 00  	auipc	a0, 21
802010a8: 13 05 c5 f5  	addi	a0, a0, -164

00000000802010ac <.LBB0_9>:
802010ac: 97 45 01 00  	auipc	a1, 20
802010b0: 93 85 45 f5  	addi	a1, a1, -172
802010b4: 63 f9 a5 00  	bgeu	a1, a0, 0x802010c6 <.LBB0_9+0x1a>
802010b8: 13 86 15 00  	addi	a2, a1, 1
802010bc: 23 80 05 00  	sb	zero, 0(a1)
802010c0: b2 85        	mv	a1, a2
802010c2: e3 6b a6 fe  	bltu	a2, a0, 0x802010b8 <.LBB0_9+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802010c6: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
802010c8: 01 c9        	beqz	a0, 0x802010d8 <.LBB0_10+0xe>

00000000802010ca <.LBB0_10>:
;         while unsafe { started } == 0 {}
802010ca: 17 45 01 00  	auipc	a0, 20
802010ce: 13 05 65 ff  	addi	a0, a0, -10
802010d2: 08 61        	ld	a0, 0(a0)
802010d4: 25 e9        	bnez	a0, 0x80201144 <.LBB0_13+0x32>
802010d6: 01 a0        	j	0x802010d6 <.LBB0_10+0xc>
;         print_logo();
802010d8: 97 00 00 00  	auipc	ra, 0
802010dc: e7 80 80 f2  	jalr	-216(ra)

00000000802010e0 <.LBB0_11>:
802010e0: 17 25 00 00  	auipc	a0, 2
802010e4: 13 05 05 0d  	addi	a0, a0, 208
802010e8: 23 30 a4 fc  	sd	a0, -64(s0)
802010ec: 05 49        	li	s2, 1
802010ee: 23 34 24 fd  	sd	s2, -56(s0)
802010f2: 23 38 04 fa  	sd	zero, -80(s0)

00000000802010f6 <.LBB0_12>:
802010f6: 97 24 00 00  	auipc	s1, 2
802010fa: 93 84 a4 09  	addi	s1, s1, 154
802010fe: 23 38 94 fc  	sd	s1, -48(s0)
80201102: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
80201106: 13 05 04 fb  	addi	a0, s0, -80
8020110a: 97 00 00 00  	auipc	ra, 0
8020110e: e7 80 00 41  	jalr	1040(ra)

0000000080201112 <.LBB0_13>:
80201112: 17 25 00 00  	auipc	a0, 2
80201116: 13 05 65 0b  	addi	a0, a0, 182
8020111a: 23 30 a4 fc  	sd	a0, -64(s0)
8020111e: 23 34 24 fd  	sd	s2, -56(s0)
80201122: 23 38 04 fa  	sd	zero, -80(s0)
80201126: 23 38 94 fc  	sd	s1, -48(s0)
8020112a: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
8020112e: 13 05 04 fb  	addi	a0, s0, -80
80201132: 97 00 00 00  	auipc	ra, 0
80201136: e7 80 80 3e  	jalr	1000(ra)
;         kinit();
8020113a: 97 00 00 00  	auipc	ra, 0
8020113e: e7 80 80 6f  	jalr	1784(ra)
80201142: 19 a0        	j	0x80201148 <.LBB0_14>
80201144: 0f 00 30 03  	fence	rw, rw

0000000080201148 <.LBB0_14>:
80201148: 17 25 00 00  	auipc	a0, 2
8020114c: 13 05 05 0a  	addi	a0, a0, 160
80201150: 23 30 a4 fc  	sd	a0, -64(s0)
80201154: 05 45        	li	a0, 1
80201156: 23 34 a4 fc  	sd	a0, -56(s0)
8020115a: 23 38 04 fa  	sd	zero, -80(s0)

000000008020115e <.LBB0_15>:
8020115e: 17 25 00 00  	auipc	a0, 2
80201162: 13 05 25 03  	addi	a0, a0, 50
80201166: 23 38 a4 fc  	sd	a0, -48(s0)
8020116a: 23 3c 04 fc  	sd	zero, -40(s0)

000000008020116e <.LBB0_16>:
;     panic!("Shutdown!");
8020116e: 97 25 00 00  	auipc	a1, 2
80201172: 93 85 a5 09  	addi	a1, a1, 154
80201176: 13 05 04 fb  	addi	a0, s0, -80
8020117a: 97 10 00 00  	auipc	ra, 1
8020117e: e7 80 e0 84  	jalr	-1970(ra)
80201182: 00 00        	unimp	

0000000080201184 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80201184: 71 71        	addi	sp, sp, -176
80201186: 06 f5        	sd	ra, 168(sp)
80201188: 22 f1        	sd	s0, 160(sp)
8020118a: 26 ed        	sd	s1, 152(sp)
8020118c: 00 19        	addi	s0, sp, 176
8020118e: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80201190: 97 10 00 00  	auipc	ra, 1
80201194: e7 80 00 83  	jalr	-2000(ra)
80201198: 05 e1        	bnez	a0, 0x802011b8 <.LBB0_8+0x16>

000000008020119a <.LBB0_7>:
8020119a: 17 25 00 00  	auipc	a0, 2
8020119e: 13 05 65 10  	addi	a0, a0, 262

00000000802011a2 <.LBB0_8>:
802011a2: 17 26 00 00  	auipc	a2, 2
802011a6: 13 06 e6 13  	addi	a2, a2, 318
802011aa: 93 05 b0 02  	li	a1, 43
802011ae: 97 10 00 00  	auipc	ra, 1
802011b2: e7 80 80 84  	jalr	-1976(ra)
802011b6: 00 00        	unimp	
802011b8: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802011bc: 26 85        	mv	a0, s1
802011be: 97 10 00 00  	auipc	ra, 1
802011c2: e7 80 60 80  	jalr	-2042(ra)
802011c6: 3d e1        	bnez	a0, 0x8020122c <.LBB0_11+0x24>
802011c8: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
802011cc: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802011d0 <.LBB0_9>:
802011d0: 17 05 00 00  	auipc	a0, 0
802011d4: 13 05 65 7c  	addi	a0, a0, 1990
802011d8: 23 34 a4 f6  	sd	a0, -152(s0)
802011dc: 13 05 04 fe  	addi	a0, s0, -32
802011e0: 23 38 a4 f8  	sd	a0, -112(s0)
802011e4: 23 38 04 fa  	sd	zero, -80(s0)

00000000802011e8 <.LBB0_10>:
802011e8: 17 25 00 00  	auipc	a0, 2
802011ec: 13 05 85 04  	addi	a0, a0, 72
802011f0: 23 30 a4 fc  	sd	a0, -64(s0)
802011f4: 09 45        	li	a0, 2
802011f6: 23 34 a4 fc  	sd	a0, -56(s0)
802011fa: 13 05 04 f6  	addi	a0, s0, -160
802011fe: 23 38 a4 fc  	sd	a0, -48(s0)
80201202: 05 45        	li	a0, 1
80201204: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201208 <.LBB0_11>:
80201208: 97 25 00 00  	auipc	a1, 2
8020120c: 93 85 05 0f  	addi	a1, a1, 240
80201210: 13 05 04 f9  	addi	a0, s0, -112
80201214: 13 06 04 fb  	addi	a2, s0, -80
80201218: 97 10 00 00  	auipc	ra, 1
8020121c: e7 80 80 8c  	jalr	-1848(ra)
80201220: 45 e1        	bnez	a0, 0x802012c0 <.LBB0_17>
;     shutdown()
80201222: 97 00 00 00  	auipc	ra, 0
80201226: e7 80 00 5c  	jalr	1472(ra)
8020122a: 00 00        	unimp	
8020122c: 0c 61        	ld	a1, 0(a0)
8020122e: 10 65        	ld	a2, 8(a0)
80201230: 23 38 b4 f8  	sd	a1, -112(s0)
80201234: 23 3c c4 f8  	sd	a2, -104(s0)
80201238: 08 49        	lw	a0, 16(a0)
8020123a: 23 22 a4 fa  	sw	a0, -92(s0)
8020123e: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80201242: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080201246 <.LBB0_12>:
80201246: 17 05 00 00  	auipc	a0, 0
8020124a: 13 05 e5 72  	addi	a0, a0, 1838
8020124e: 23 34 a4 f6  	sd	a0, -152(s0)
80201252: 13 05 44 fa  	addi	a0, s0, -92
80201256: 23 38 a4 f6  	sd	a0, -144(s0)

000000008020125a <.LBB0_13>:
8020125a: 17 15 00 00  	auipc	a0, 1
8020125e: 13 05 65 1f  	addi	a0, a0, 502
80201262: 23 3c a4 f6  	sd	a0, -136(s0)
80201266: 13 05 84 f5  	addi	a0, s0, -168
8020126a: 23 30 a4 f8  	sd	a0, -128(s0)

000000008020126e <.LBB0_14>:
8020126e: 17 05 00 00  	auipc	a0, 0
80201272: 13 05 85 72  	addi	a0, a0, 1832
80201276: 23 34 a4 f8  	sd	a0, -120(s0)
8020127a: 13 05 04 fe  	addi	a0, s0, -32
8020127e: 23 34 a4 fa  	sd	a0, -88(s0)
80201282: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201286 <.LBB0_15>:
80201286: 17 25 00 00  	auipc	a0, 2
8020128a: 13 05 a5 fd  	addi	a0, a0, -38
8020128e: 23 30 a4 fc  	sd	a0, -64(s0)
80201292: 11 45        	li	a0, 4
80201294: 23 34 a4 fc  	sd	a0, -56(s0)
80201298: 13 05 04 f6  	addi	a0, s0, -160
8020129c: 23 38 a4 fc  	sd	a0, -48(s0)
802012a0: 0d 45        	li	a0, 3
802012a2: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802012a6 <.LBB0_16>:
802012a6: 97 25 00 00  	auipc	a1, 2
802012aa: 93 85 25 05  	addi	a1, a1, 82
802012ae: 13 05 84 fa  	addi	a0, s0, -88
802012b2: 13 06 04 fb  	addi	a2, s0, -80
802012b6: 97 10 00 00  	auipc	ra, 1
802012ba: e7 80 a0 82  	jalr	-2006(ra)
802012be: 35 d1        	beqz	a0, 0x80201222 <.LBB0_11+0x1a>

00000000802012c0 <.LBB0_17>:
802012c0: 17 25 00 00  	auipc	a0, 2
802012c4: 13 05 85 06  	addi	a0, a0, 104

00000000802012c8 <.LBB0_18>:
802012c8: 97 26 00 00  	auipc	a3, 2
802012cc: 93 86 06 09  	addi	a3, a3, 144

00000000802012d0 <.LBB0_19>:
802012d0: 17 27 00 00  	auipc	a4, 2
802012d4: 13 07 87 0b  	addi	a4, a4, 184
802012d8: 93 05 b0 02  	li	a1, 43
802012dc: 13 06 04 fe  	addi	a2, s0, -32
802012e0: 97 00 00 00  	auipc	ra, 0
802012e4: e7 80 20 78  	jalr	1922(ra)
802012e8: 00 00        	unimp	

00000000802012ea <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17hd0476dbd38f9b83bE.llvm.5507492386720043001>:
802012ea: 41 11        	addi	sp, sp, -16
802012ec: 06 e4        	sd	ra, 8(sp)
802012ee: 22 e0        	sd	s0, 0(sp)
802012f0: 00 08        	addi	s0, sp, 16
802012f2: a2 60        	ld	ra, 8(sp)
802012f4: 02 64        	ld	s0, 0(sp)
802012f6: 41 01        	addi	sp, sp, 16
802012f8: 82 80        	ret

00000000802012fa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001>:
802012fa: 01 11        	addi	sp, sp, -32
802012fc: 06 ec        	sd	ra, 24(sp)
802012fe: 22 e8        	sd	s0, 16(sp)
80201300: 00 10        	addi	s0, sp, 32
80201302: 1b 85 05 00  	sext.w	a0, a1
80201306: 13 06 00 08  	li	a2, 128
8020130a: 23 26 04 fe  	sw	zero, -20(s0)
8020130e: 63 76 c5 00  	bgeu	a0, a2, 0x8020131a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x20>
80201312: 23 06 b4 fe  	sb	a1, -20(s0)
80201316: 05 45        	li	a0, 1
80201318: 51 a8        	j	0x802013ac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xb2>
8020131a: 1b d5 b5 00  	srliw	a0, a1, 11
8020131e: 19 ed        	bnez	a0, 0x8020133c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x42>
80201320: 13 d5 65 00  	srli	a0, a1, 6
80201324: 13 65 05 0c  	ori	a0, a0, 192
80201328: 23 06 a4 fe  	sb	a0, -20(s0)
8020132c: 13 f5 f5 03  	andi	a0, a1, 63
80201330: 13 65 05 08  	ori	a0, a0, 128
80201334: a3 06 a4 fe  	sb	a0, -19(s0)
80201338: 09 45        	li	a0, 2
8020133a: 8d a8        	j	0x802013ac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xb2>
8020133c: 1b d5 05 01  	srliw	a0, a1, 16
80201340: 05 e9        	bnez	a0, 0x80201370 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x76>
80201342: 13 95 05 02  	slli	a0, a1, 32
80201346: 01 91        	srli	a0, a0, 32
80201348: 1b d6 c5 00  	srliw	a2, a1, 12
8020134c: 13 66 06 0e  	ori	a2, a2, 224
80201350: 23 06 c4 fe  	sb	a2, -20(s0)
80201354: 52 15        	slli	a0, a0, 52
80201356: 69 91        	srli	a0, a0, 58
80201358: 13 65 05 08  	ori	a0, a0, 128
8020135c: a3 06 a4 fe  	sb	a0, -19(s0)
80201360: 13 f5 f5 03  	andi	a0, a1, 63
80201364: 13 65 05 08  	ori	a0, a0, 128
80201368: 23 07 a4 fe  	sb	a0, -18(s0)
8020136c: 0d 45        	li	a0, 3
8020136e: 3d a8        	j	0x802013ac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xb2>
80201370: 13 95 05 02  	slli	a0, a1, 32
80201374: 01 91        	srli	a0, a0, 32
80201376: 13 16 b5 02  	slli	a2, a0, 43
8020137a: 75 92        	srli	a2, a2, 61
8020137c: 13 66 06 0f  	ori	a2, a2, 240
80201380: 23 06 c4 fe  	sb	a2, -20(s0)
80201384: 13 16 e5 02  	slli	a2, a0, 46
80201388: 69 92        	srli	a2, a2, 58
8020138a: 13 66 06 08  	ori	a2, a2, 128
8020138e: a3 06 c4 fe  	sb	a2, -19(s0)
80201392: 52 15        	slli	a0, a0, 52
80201394: 69 91        	srli	a0, a0, 58
80201396: 13 65 05 08  	ori	a0, a0, 128
8020139a: 23 07 a4 fe  	sb	a0, -18(s0)
8020139e: 13 f5 f5 03  	andi	a0, a1, 63
802013a2: 13 65 05 08  	ori	a0, a0, 128
802013a6: a3 07 a4 fe  	sb	a0, -17(s0)
802013aa: 11 45        	li	a0, 4
802013ac: 93 06 c4 fe  	addi	a3, s0, -20
802013b0: 33 87 a6 00  	add	a4, a3, a0
802013b4: 13 03 f0 0d  	li	t1, 223
802013b8: 13 08 00 0f  	li	a6, 240
802013bc: b7 02 11 00  	lui	t0, 272
802013c0: 85 48        	li	a7, 1
802013c2: 01 a8        	j	0x802013d2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xd8>
802013c4: 85 06        	addi	a3, a3, 1
;         asm!(
802013c6: 81 45        	li	a1, 0
802013c8: 01 46        	li	a2, 0
802013ca: 73 00 00 00  	ecall	
802013ce: 63 8f e6 04  	beq	a3, a4, 0x8020142c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x132>
802013d2: 83 85 06 00  	lb	a1, 0(a3)
802013d6: 13 f5 f5 0f  	andi	a0, a1, 255
802013da: e3 d5 05 fe  	bgez	a1, 0x802013c4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xca>
802013de: 03 c6 16 00  	lbu	a2, 1(a3)
802013e2: 93 75 f5 01  	andi	a1, a0, 31
802013e6: 13 76 f6 03  	andi	a2, a2, 63
802013ea: 63 77 a3 02  	bgeu	t1, a0, 0x80201418 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x11e>
802013ee: 83 c7 26 00  	lbu	a5, 2(a3)
802013f2: 1a 06        	slli	a2, a2, 6
802013f4: 93 f7 f7 03  	andi	a5, a5, 63
802013f8: 5d 8e        	or	a2, a2, a5
802013fa: 63 64 05 03  	bltu	a0, a6, 0x80201422 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x128>
802013fe: 03 c5 36 00  	lbu	a0, 3(a3)
80201402: f6 15        	slli	a1, a1, 61
80201404: ad 91        	srli	a1, a1, 43
80201406: 1a 06        	slli	a2, a2, 6
80201408: 13 75 f5 03  	andi	a0, a0, 63
8020140c: 51 8d        	or	a0, a0, a2
8020140e: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201410: 63 0e 55 00  	beq	a0, t0, 0x8020142c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0x132>
80201414: 91 06        	addi	a3, a3, 4
80201416: 45 bf        	j	0x802013c6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xcc>
80201418: 89 06        	addi	a3, a3, 2
8020141a: 13 95 65 00  	slli	a0, a1, 6
8020141e: 51 8d        	or	a0, a0, a2
80201420: 5d b7        	j	0x802013c6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xcc>
80201422: 8d 06        	addi	a3, a3, 3
80201424: 13 95 c5 00  	slli	a0, a1, 12
80201428: 51 8d        	or	a0, a0, a2
8020142a: 71 bf        	j	0x802013c6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.5507492386720043001+0xcc>
8020142c: 01 45        	li	a0, 0
8020142e: e2 60        	ld	ra, 24(sp)
80201430: 42 64        	ld	s0, 16(sp)
80201432: 05 61        	addi	sp, sp, 32
80201434: 82 80        	ret

0000000080201436 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd5f3e9c38259cfbdE.llvm.5507492386720043001>:
80201436: 5d 71        	addi	sp, sp, -80
80201438: 86 e4        	sd	ra, 72(sp)
8020143a: a2 e0        	sd	s0, 64(sp)
8020143c: 80 08        	addi	s0, sp, 80
8020143e: 08 61        	ld	a0, 0(a0)
80201440: 90 75        	ld	a2, 40(a1)
80201442: 94 71        	ld	a3, 32(a1)
80201444: 23 3c a4 fa  	sd	a0, -72(s0)
80201448: 23 34 c4 fe  	sd	a2, -24(s0)
8020144c: 23 30 d4 fe  	sd	a3, -32(s0)
80201450: 88 6d        	ld	a0, 24(a1)
80201452: 90 69        	ld	a2, 16(a1)
80201454: 94 65        	ld	a3, 8(a1)
80201456: 8c 61        	ld	a1, 0(a1)
80201458: 23 3c a4 fc  	sd	a0, -40(s0)
8020145c: 23 38 c4 fc  	sd	a2, -48(s0)
80201460: 23 34 d4 fc  	sd	a3, -56(s0)
80201464: 23 30 b4 fc  	sd	a1, -64(s0)

0000000080201468 <.LBB2_1>:
80201468: 97 25 00 00  	auipc	a1, 2
8020146c: 93 85 05 e9  	addi	a1, a1, -368
80201470: 13 05 84 fb  	addi	a0, s0, -72
80201474: 13 06 04 fc  	addi	a2, s0, -64
80201478: 97 00 00 00  	auipc	ra, 0
8020147c: e7 80 80 66  	jalr	1640(ra)
80201480: a6 60        	ld	ra, 72(sp)
80201482: 06 64        	ld	s0, 64(sp)
80201484: 61 61        	addi	sp, sp, 80
80201486: 82 80        	ret

0000000080201488 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001>:
80201488: 41 11        	addi	sp, sp, -16
8020148a: 06 e4        	sd	ra, 8(sp)
8020148c: 22 e0        	sd	s0, 0(sp)
8020148e: 00 08        	addi	s0, sp, 16
80201490: 41 c2        	beqz	a2, 0x80201510 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x88>
80201492: ae 86        	mv	a3, a1
80201494: 33 87 c5 00  	add	a4, a1, a2
80201498: 13 03 f0 0d  	li	t1, 223
8020149c: 13 08 00 0f  	li	a6, 240
802014a0: b7 02 11 00  	lui	t0, 272
802014a4: 85 48        	li	a7, 1
802014a6: 01 a8        	j	0x802014b6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x2e>
802014a8: 85 06        	addi	a3, a3, 1
;         asm!(
802014aa: 81 45        	li	a1, 0
802014ac: 01 46        	li	a2, 0
802014ae: 73 00 00 00  	ecall	
802014b2: 63 8f e6 04  	beq	a3, a4, 0x80201510 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x88>
802014b6: 83 85 06 00  	lb	a1, 0(a3)
802014ba: 13 f5 f5 0f  	andi	a0, a1, 255
802014be: e3 d5 05 fe  	bgez	a1, 0x802014a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x20>
802014c2: 03 c6 16 00  	lbu	a2, 1(a3)
802014c6: 93 75 f5 01  	andi	a1, a0, 31
802014ca: 13 76 f6 03  	andi	a2, a2, 63
802014ce: 63 77 a3 02  	bgeu	t1, a0, 0x802014fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x74>
802014d2: 83 c7 26 00  	lbu	a5, 2(a3)
802014d6: 1a 06        	slli	a2, a2, 6
802014d8: 93 f7 f7 03  	andi	a5, a5, 63
802014dc: 5d 8e        	or	a2, a2, a5
802014de: 63 64 05 03  	bltu	a0, a6, 0x80201506 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x7e>
802014e2: 03 c5 36 00  	lbu	a0, 3(a3)
802014e6: f6 15        	slli	a1, a1, 61
802014e8: ad 91        	srli	a1, a1, 43
802014ea: 1a 06        	slli	a2, a2, 6
802014ec: 13 75 f5 03  	andi	a0, a0, 63
802014f0: 51 8d        	or	a0, a0, a2
802014f2: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
802014f4: 63 0e 55 00  	beq	a0, t0, 0x80201510 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x88>
802014f8: 91 06        	addi	a3, a3, 4
802014fa: 45 bf        	j	0x802014aa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x22>
802014fc: 89 06        	addi	a3, a3, 2
802014fe: 13 95 65 00  	slli	a0, a1, 6
80201502: 51 8d        	or	a0, a0, a2
80201504: 5d b7        	j	0x802014aa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x22>
80201506: 8d 06        	addi	a3, a3, 3
80201508: 13 95 c5 00  	slli	a0, a1, 12
8020150c: 51 8d        	or	a0, a0, a2
8020150e: 71 bf        	j	0x802014aa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.5507492386720043001+0x22>
80201510: 01 45        	li	a0, 0
80201512: a2 60        	ld	ra, 8(sp)
80201514: 02 64        	ld	s0, 0(sp)
80201516: 41 01        	addi	sp, sp, 16
80201518: 82 80        	ret

000000008020151a <_ZN6kernel7console5print17h1ef73275907ef8e0E>:
; pub fn print(args: fmt::Arguments) {
8020151a: 5d 71        	addi	sp, sp, -80
8020151c: 86 e4        	sd	ra, 72(sp)
8020151e: a2 e0        	sd	s0, 64(sp)
80201520: 80 08        	addi	s0, sp, 80
80201522: 0c 75        	ld	a1, 40(a0)
80201524: 10 71        	ld	a2, 32(a0)
80201526: 93 06 84 fe  	addi	a3, s0, -24
8020152a: 23 38 d4 fa  	sd	a3, -80(s0)
8020152e: 23 30 b4 fe  	sd	a1, -32(s0)
80201532: 23 3c c4 fc  	sd	a2, -40(s0)
80201536: 0c 6d        	ld	a1, 24(a0)
80201538: 10 69        	ld	a2, 16(a0)
8020153a: 14 65        	ld	a3, 8(a0)
8020153c: 08 61        	ld	a0, 0(a0)
8020153e: 23 38 b4 fc  	sd	a1, -48(s0)
80201542: 23 34 c4 fc  	sd	a2, -56(s0)
80201546: 23 30 d4 fc  	sd	a3, -64(s0)
8020154a: 23 3c a4 fa  	sd	a0, -72(s0)

000000008020154e <.LBB4_3>:
8020154e: 97 25 00 00  	auipc	a1, 2
80201552: 93 85 a5 da  	addi	a1, a1, -598
80201556: 13 05 04 fb  	addi	a0, s0, -80
8020155a: 13 06 84 fb  	addi	a2, s0, -72
8020155e: 97 00 00 00  	auipc	ra, 0
80201562: e7 80 20 58  	jalr	1410(ra)
80201566: 09 e5        	bnez	a0, 0x80201570 <.LBB4_4>
; }
80201568: a6 60        	ld	ra, 72(sp)
8020156a: 06 64        	ld	s0, 64(sp)
8020156c: 61 61        	addi	sp, sp, 80
8020156e: 82 80        	ret

0000000080201570 <.LBB4_4>:
80201570: 17 25 00 00  	auipc	a0, 2
80201574: 13 05 85 db  	addi	a0, a0, -584

0000000080201578 <.LBB4_5>:
80201578: 97 26 00 00  	auipc	a3, 2
8020157c: 93 86 06 de  	addi	a3, a3, -544

0000000080201580 <.LBB4_6>:
80201580: 17 27 00 00  	auipc	a4, 2
80201584: 13 07 87 e0  	addi	a4, a4, -504
80201588: 93 05 b0 02  	li	a1, 43
8020158c: 13 06 84 fe  	addi	a2, s0, -24
80201590: 97 00 00 00  	auipc	ra, 0
80201594: e7 80 20 4d  	jalr	1234(ra)
80201598: 00 00        	unimp	

000000008020159a <_ZN6kernel4lock8spinlock8Spinlock7acquire17hfb9c49aa9594a77bE>:
;     pub fn acquire(&mut self) {
8020159a: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020159c: 06 fc        	sd	ra, 56(sp)
8020159e: 22 f8        	sd	s0, 48(sp)
802015a0: 80 00        	addi	s0, sp, 64
802015a2: 73 26 00 10  	csrr	a2, sstatus
802015a6: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802015a8: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802015ac: 92 86        	mv	a3, tp
802015ae: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802015b0: 63 f2 b6 0a  	bgeu	a3, a1, 0x80201654 <.LBB0_12>
802015b4: e1 45        	li	a1, 24
;     if mc.noff == 0 {
802015b6: b3 86 b6 02  	mul	a3, a3, a1

00000000802015ba <.LBB0_11>:
802015ba: 17 48 01 00  	auipc	a6, 20
802015be: 13 08 68 a4  	addi	a6, a6, -1466
802015c2: b3 07 d8 00  	add	a5, a6, a3
802015c6: 98 67        	ld	a4, 8(a5)
802015c8: 93 86 87 00  	addi	a3, a5, 8
802015cc: 09 e7        	bnez	a4, 0x802015d6 <.LBB0_11+0x1c>
;         mc.intena = old;
802015ce: 7a 16        	slli	a2, a2, 62
802015d0: 7d 92        	srli	a2, a2, 63
802015d2: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
802015d6: 13 06 17 00  	addi	a2, a4, 1
802015da: 90 e2        	sd	a2, 0(a3)
802015dc: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802015e0: 93 08 85 01  	addi	a7, a0, 24
802015e4: 81 ce        	beqz	a3, 0x802015fc <.LBB0_11+0x42>
802015e6: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802015e8: 92 86        	mv	a3, tp
802015ea: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
802015ec: 63 f4 f6 06  	bgeu	a3, a5, 0x80201654 <.LBB0_12>
802015f0: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
802015f2: b3 86 f6 02  	mul	a3, a3, a5
802015f6: c2 96        	add	a3, a3, a6
;         if self.holding() {
802015f8: 63 09 d7 06  	beq	a4, a3, 0x8020166a <.LBB0_13>
802015fc: 93 f6 c8 ff  	andi	a3, a7, -4
80201600: 1b 97 38 00  	slliw	a4, a7, 3
80201604: 93 07 f0 0f  	li	a5, 255
80201608: bb 97 e7 00  	sllw	a5, a5, a4
8020160c: 85 45        	li	a1, 1
8020160e: bb 95 e5 00  	sllw	a1, a1, a4
80201612: 82 15        	slli	a1, a1, 32
80201614: 81 91        	srli	a1, a1, 32
80201616: 2f a7 06 14  	lr.w.aq	a4, (a3)
8020161a: 33 76 f7 00  	and	a2, a4, a5
8020161e: 01 ea        	bnez	a2, 0x8020162e <.LBB0_11+0x74>
80201620: 33 46 b7 00  	xor	a2, a4, a1
80201624: 7d 8e        	and	a2, a2, a5
80201626: 39 8e        	xor	a2, a2, a4
80201628: 2f a6 c6 18  	sc.w	a2, a2, (a3)
8020162c: 6d f6        	bnez	a2, 0x80201616 <.LBB0_11+0x5c>
8020162e: b3 75 f7 00  	and	a1, a4, a5
80201632: 81 25        	sext.w	a1, a1
;         while self
80201634: e1 f5        	bnez	a1, 0x802015fc <.LBB0_11+0x42>
80201636: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020163a: 92 86        	mv	a3, tp
8020163c: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
8020163e: 63 fb b6 00  	bgeu	a3, a1, 0x80201654 <.LBB0_12>
80201642: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
80201644: b3 85 b6 02  	mul	a1, a3, a1
80201648: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
8020164a: 0c e9        	sd	a1, 16(a0)
;     }
8020164c: e2 70        	ld	ra, 56(sp)
8020164e: 42 74        	ld	s0, 48(sp)
80201650: 21 61        	addi	sp, sp, 64
80201652: 82 80        	ret

0000000080201654 <.LBB0_12>:
80201654: 17 26 00 00  	auipc	a2, 2
80201658: 13 06 c6 e9  	addi	a2, a2, -356
8020165c: a1 45        	li	a1, 8
8020165e: 36 85        	mv	a0, a3
80201660: 97 00 00 00  	auipc	ra, 0
80201664: e7 80 20 3c  	jalr	962(ra)
80201668: 00 00        	unimp	

000000008020166a <.LBB0_13>:
8020166a: 17 25 00 00  	auipc	a0, 2
8020166e: 13 05 e5 d3  	addi	a0, a0, -706
80201672: 23 38 a4 fc  	sd	a0, -48(s0)
80201676: 05 45        	li	a0, 1
80201678: 23 3c a4 fc  	sd	a0, -40(s0)
8020167c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201680 <.LBB0_14>:
80201680: 17 25 00 00  	auipc	a0, 2
80201684: 13 05 05 d2  	addi	a0, a0, -736
80201688: 23 30 a4 fe  	sd	a0, -32(s0)
8020168c: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201690 <.LBB0_15>:
;             panic!("acquire");
80201690: 97 25 00 00  	auipc	a1, 2
80201694: 93 85 05 d4  	addi	a1, a1, -704
80201698: 13 05 04 fc  	addi	a0, s0, -64
8020169c: 97 00 00 00  	auipc	ra, 0
802016a0: e7 80 c0 32  	jalr	812(ra)
802016a4: 00 00        	unimp	

00000000802016a6 <_ZN6kernel4lock8spinlock8Spinlock7release17h274222f3a8daa87dE>:
;     pub fn release(&mut self) {
802016a6: 39 71        	addi	sp, sp, -64
802016a8: 06 fc        	sd	ra, 56(sp)
802016aa: 22 f8        	sd	s0, 48(sp)
802016ac: 80 00        	addi	s0, sp, 64
802016ae: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802016b2: d1 c9        	beqz	a1, 0x80201746 <.LBB1_18>
802016b4: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802016b6: 92 86        	mv	a3, tp
802016b8: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802016ba: 63 f1 b6 06  	bgeu	a3, a1, 0x8020171c <.LBB1_16>
802016be: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802016c0: b3 86 b6 02  	mul	a3, a3, a1

00000000802016c4 <.LBB1_15>:
802016c4: 97 45 01 00  	auipc	a1, 20
802016c8: 93 85 c5 93  	addi	a1, a1, -1732
802016cc: ae 96        	add	a3, a3, a1
;         if !self.holding() {
802016ce: 63 1c d6 06  	bne	a2, a3, 0x80201746 <.LBB1_18>
;         self.cpu = null_mut();
802016d2: 23 38 05 00  	sd	zero, 16(a0)
802016d6: 0f 00 30 03  	fence	rw, rw
802016da: 0f 00 10 03  	fence	rw, w
802016de: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802016e2: 12 85        	mv	a0, tp
802016e4: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
802016e6: 63 76 c5 04  	bgeu	a0, a2, 0x80201732 <.LBB1_17>
802016ea: 61 46        	li	a2, 24
;     unsafe { &mut CPUS[id] }
802016ec: 33 05 c5 02  	mul	a0, a0, a2
802016f0: 2e 95        	add	a0, a0, a1
;     let mc = &mut unsafe { *mycpu() };
802016f2: 0c 65        	ld	a1, 8(a0)
802016f4: 03 45 05 01  	lbu	a0, 16(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802016f8: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
802016fc: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
802016fe: 25 ee        	bnez	a2, 0x80201776 <.LBB1_21>
;     if mc.noff < 1 {
80201700: 63 53 b0 0a  	blez	a1, 0x802017a6 <.LBB1_24>
;     if mc.noff == 0 && mc.intena {
80201704: fd 15        	addi	a1, a1, -1
80201706: 93 b5 15 00  	seqz	a1, a1
8020170a: 6d 8d        	and	a0, a0, a1
8020170c: 01 c5        	beqz	a0, 0x80201714 <.LBB1_15+0x50>
8020170e: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80201710: 73 20 05 10  	csrs	sstatus, a0
;     }
80201714: e2 70        	ld	ra, 56(sp)
80201716: 42 74        	ld	s0, 48(sp)
80201718: 21 61        	addi	sp, sp, 64
8020171a: 82 80        	ret

000000008020171c <.LBB1_16>:
;     unsafe { &mut CPUS[id] }
8020171c: 17 26 00 00  	auipc	a2, 2
80201720: 13 06 46 dd  	addi	a2, a2, -556
80201724: a1 45        	li	a1, 8
80201726: 36 85        	mv	a0, a3
80201728: 97 00 00 00  	auipc	ra, 0
8020172c: e7 80 a0 2f  	jalr	762(ra)
80201730: 00 00        	unimp	

0000000080201732 <.LBB1_17>:
80201732: 17 26 00 00  	auipc	a2, 2
80201736: 13 06 e6 db  	addi	a2, a2, -578
8020173a: a1 45        	li	a1, 8
8020173c: 97 00 00 00  	auipc	ra, 0
80201740: e7 80 60 2e  	jalr	742(ra)
80201744: 00 00        	unimp	

0000000080201746 <.LBB1_18>:
80201746: 17 25 00 00  	auipc	a0, 2
8020174a: 13 05 a5 ca  	addi	a0, a0, -854
8020174e: 23 38 a4 fc  	sd	a0, -48(s0)
80201752: 05 45        	li	a0, 1
80201754: 23 3c a4 fc  	sd	a0, -40(s0)
80201758: 23 30 04 fc  	sd	zero, -64(s0)

000000008020175c <.LBB1_19>:
8020175c: 17 25 00 00  	auipc	a0, 2
80201760: 13 05 45 c4  	addi	a0, a0, -956
80201764: 23 30 a4 fe  	sd	a0, -32(s0)
80201768: 23 34 04 fe  	sd	zero, -24(s0)

000000008020176c <.LBB1_20>:
;             panic!("release");
8020176c: 97 25 00 00  	auipc	a1, 2
80201770: 93 85 45 c9  	addi	a1, a1, -876
80201774: 85 a0        	j	0x802017d4 <.LBB1_26+0x8>

0000000080201776 <.LBB1_21>:
80201776: 17 25 00 00  	auipc	a0, 2
8020177a: 13 05 a5 cb  	addi	a0, a0, -838
8020177e: 23 38 a4 fc  	sd	a0, -48(s0)
80201782: 05 45        	li	a0, 1
80201784: 23 3c a4 fc  	sd	a0, -40(s0)
80201788: 23 30 04 fc  	sd	zero, -64(s0)

000000008020178c <.LBB1_22>:
8020178c: 17 25 00 00  	auipc	a0, 2
80201790: 13 05 45 c1  	addi	a0, a0, -1004
80201794: 23 30 a4 fe  	sd	a0, -32(s0)
80201798: 23 34 04 fe  	sd	zero, -24(s0)

000000008020179c <.LBB1_23>:
;         panic!("pop_off - interruptible");
8020179c: 97 25 00 00  	auipc	a1, 2
802017a0: 93 85 45 ca  	addi	a1, a1, -860
802017a4: 05 a8        	j	0x802017d4 <.LBB1_26+0x8>

00000000802017a6 <.LBB1_24>:
802017a6: 17 25 00 00  	auipc	a0, 2
802017aa: 13 05 a5 cb  	addi	a0, a0, -838
802017ae: 23 38 a4 fc  	sd	a0, -48(s0)
802017b2: 05 45        	li	a0, 1
802017b4: 23 3c a4 fc  	sd	a0, -40(s0)
802017b8: 23 30 04 fc  	sd	zero, -64(s0)

00000000802017bc <.LBB1_25>:
802017bc: 17 25 00 00  	auipc	a0, 2
802017c0: 13 05 45 be  	addi	a0, a0, -1052
802017c4: 23 30 a4 fe  	sd	a0, -32(s0)
802017c8: 23 34 04 fe  	sd	zero, -24(s0)

00000000802017cc <.LBB1_26>:
;         panic!("pop_off");
802017cc: 97 25 00 00  	auipc	a1, 2
802017d0: 93 85 45 ca  	addi	a1, a1, -860
802017d4: 13 05 04 fc  	addi	a0, s0, -64
802017d8: 97 00 00 00  	auipc	ra, 0
802017dc: e7 80 00 1f  	jalr	496(ra)
802017e0: 00 00        	unimp	

00000000802017e2 <_ZN6kernel3sbi8shutdown17h7d6f144840ef1a50E>:
; pub fn shutdown() -> ! {
802017e2: 39 71        	addi	sp, sp, -64
;         asm!(
802017e4: 06 fc        	sd	ra, 56(sp)
802017e6: 22 f8        	sd	s0, 48(sp)
802017e8: 80 00        	addi	s0, sp, 64
802017ea: a1 48        	li	a7, 8
802017ec: 01 45        	li	a0, 0
802017ee: 81 45        	li	a1, 0
802017f0: 01 46        	li	a2, 0
802017f2: 73 00 00 00  	ecall	

00000000802017f6 <.LBB1_1>:
802017f6: 17 25 00 00  	auipc	a0, 2
802017fa: 13 05 a5 ca  	addi	a0, a0, -854
802017fe: 23 38 a4 fc  	sd	a0, -48(s0)
80201802: 05 45        	li	a0, 1
80201804: 23 3c a4 fc  	sd	a0, -40(s0)
80201808: 23 30 04 fc  	sd	zero, -64(s0)

000000008020180c <.LBB1_2>:
8020180c: 17 25 00 00  	auipc	a0, 2
80201810: 13 05 c5 c7  	addi	a0, a0, -900
80201814: 23 30 a4 fe  	sd	a0, -32(s0)
80201818: 23 34 04 fe  	sd	zero, -24(s0)

000000008020181c <.LBB1_3>:
;     panic!("It should shutdown!");
8020181c: 97 25 00 00  	auipc	a1, 2
80201820: 93 85 45 ca  	addi	a1, a1, -860
80201824: 13 05 04 fc  	addi	a0, s0, -64
80201828: 97 00 00 00  	auipc	ra, 0
8020182c: e7 80 00 1a  	jalr	416(ra)
80201830: 00 00        	unimp	

0000000080201832 <_ZN6kernel6memory6kalloc5kinit17h2998f4f2bfe2816cE>:
; pub fn kinit() {
80201832: 59 71        	addi	sp, sp, -112
;         while pa < pa_end - PGSIZE {
80201834: 86 f4        	sd	ra, 104(sp)
80201836: a2 f0        	sd	s0, 96(sp)
80201838: a6 ec        	sd	s1, 88(sp)
8020183a: ca e8        	sd	s2, 80(sp)
8020183c: ce e4        	sd	s3, 72(sp)
8020183e: d2 e0        	sd	s4, 64(sp)
80201840: 80 18        	addi	s0, sp, 112

0000000080201842 <.LBB0_8>:
80201842: 17 45 01 00  	auipc	a0, 20
80201846: 13 05 e5 7b  	addi	a0, a0, 1982
8020184a: 85 65        	lui	a1, 1
8020184c: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
8020184e: aa 95        	add	a1, a1, a0
80201850: 7d 76        	lui	a2, 1048575
80201852: f1 8d        	and	a1, a1, a2
80201854: 37 86 08 00  	lui	a2, 136
80201858: 7d 36        	addiw	a2, a2, -1
8020185a: 32 06        	slli	a2, a2, 12
8020185c: 7d 16        	addi	a2, a2, -1
;         while pa < pa_end - PGSIZE {
8020185e: 63 6c b6 04  	bltu	a2, a1, 0x802018b6 <.LBB0_9+0x44>
;         if pa % PGSIZE != 0 || pa < ekernel as usize || pa >= PHYSTOP {
80201862: 63 eb a5 0c  	bltu	a1, a0, 0x80201938 <.LBB0_16>
80201866: 85 69        	lui	s3, 1
80201868: 9b 85 f9 ff  	addiw	a1, s3, -1
8020186c: 2e 95        	add	a0, a0, a1
8020186e: fd 75        	lui	a1, 1048575
80201870: 6d 8d        	and	a0, a0, a1

0000000080201872 <.LBB0_9>:
80201872: 17 29 00 00  	auipc	s2, 2
80201876: 13 09 e9 78  	addi	s2, s2, 1934
8020187a: b7 f5 ff 43  	lui	a1, 278527
8020187e: 13 9a 15 00  	slli	s4, a1, 1
80201882: aa 84        	mv	s1, a0
80201884: 85 45        	li	a1, 1
80201886: 05 66        	lui	a2, 1
80201888: 97 10 00 00  	auipc	ra, 1
8020188c: e7 80 00 c1  	jalr	-1008(ra)
;         self.lock.acquire();
80201890: 4a 85        	mv	a0, s2
80201892: 97 00 00 00  	auipc	ra, 0
80201896: e7 80 80 d0  	jalr	-760(ra)
;         unsafe { (*pa).next = self.freelist }
8020189a: 03 35 09 02  	ld	a0, 32(s2)
8020189e: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
802018a0: 23 30 99 02  	sd	s1, 32(s2)
;         self.lock.release();
802018a4: 4a 85        	mv	a0, s2
802018a6: 97 00 00 00  	auipc	ra, 0
802018aa: e7 80 00 e0  	jalr	-512(ra)
;             pa += PGSIZE;
802018ae: 33 85 34 01  	add	a0, s1, s3
;         while pa < pa_end - PGSIZE {
802018b2: e3 e8 44 fd  	bltu	s1, s4, 0x80201882 <.LBB0_9+0x10>
802018b6: 13 05 84 fc  	addi	a0, s0, -56
802018ba: 23 38 a4 f8  	sd	a0, -112(s0)
802018be: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802018c2 <.LBB0_10>:
802018c2: 17 25 00 00  	auipc	a0, 2
802018c6: 13 05 65 ca  	addi	a0, a0, -858
802018ca: 23 34 a4 fa  	sd	a0, -88(s0)
802018ce: 05 45        	li	a0, 1
802018d0: 23 38 a4 fa  	sd	a0, -80(s0)

00000000802018d4 <.LBB0_11>:
802018d4: 17 25 00 00  	auipc	a0, 2
802018d8: 13 05 45 c3  	addi	a0, a0, -972
802018dc: 23 3c a4 fa  	sd	a0, -72(s0)
802018e0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802018e4 <.LBB0_12>:
802018e4: 97 25 00 00  	auipc	a1, 2
802018e8: 93 85 45 a1  	addi	a1, a1, -1516
802018ec: 13 05 04 f9  	addi	a0, s0, -112
802018f0: 13 06 84 f9  	addi	a2, s0, -104
802018f4: 97 00 00 00  	auipc	ra, 0
802018f8: e7 80 c0 1e  	jalr	492(ra)
802018fc: 09 e9        	bnez	a0, 0x8020190e <.LBB0_13>
; }
802018fe: a6 70        	ld	ra, 104(sp)
80201900: 06 74        	ld	s0, 96(sp)
80201902: e6 64        	ld	s1, 88(sp)
80201904: 46 69        	ld	s2, 80(sp)
80201906: a6 69        	ld	s3, 72(sp)
80201908: 06 6a        	ld	s4, 64(sp)
8020190a: 65 61        	addi	sp, sp, 112
8020190c: 82 80        	ret

000000008020190e <.LBB0_13>:
8020190e: 17 25 00 00  	auipc	a0, 2
80201912: 13 05 a5 a1  	addi	a0, a0, -1510

0000000080201916 <.LBB0_14>:
80201916: 97 26 00 00  	auipc	a3, 2
8020191a: 93 86 26 a4  	addi	a3, a3, -1470

000000008020191e <.LBB0_15>:
8020191e: 17 27 00 00  	auipc	a4, 2
80201922: 13 07 a7 a6  	addi	a4, a4, -1430
80201926: 93 05 b0 02  	li	a1, 43
8020192a: 13 06 84 fc  	addi	a2, s0, -56
8020192e: 97 00 00 00  	auipc	ra, 0
80201932: e7 80 40 13  	jalr	308(ra)
80201936: 00 00        	unimp	

0000000080201938 <.LBB0_16>:
80201938: 17 25 00 00  	auipc	a0, 2
8020193c: 13 05 85 bd  	addi	a0, a0, -1064
80201940: 23 34 a4 fa  	sd	a0, -88(s0)
80201944: 05 45        	li	a0, 1
80201946: 23 38 a4 fa  	sd	a0, -80(s0)
8020194a: 23 3c 04 f8  	sd	zero, -104(s0)

000000008020194e <.LBB0_17>:
8020194e: 17 25 00 00  	auipc	a0, 2
80201952: 13 05 a5 bb  	addi	a0, a0, -1094
80201956: 23 3c a4 fa  	sd	a0, -72(s0)
8020195a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020195e <.LBB0_18>:
;             panic!("kfree");
8020195e: 97 25 00 00  	auipc	a1, 2
80201962: 93 85 a5 bd  	addi	a1, a1, -1062
80201966: 13 05 84 f9  	addi	a0, s0, -104
8020196a: 97 00 00 00  	auipc	ra, 0
8020196e: e7 80 e0 05  	jalr	94(ra)
80201972: 00 00        	unimp	

0000000080201974 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h841398e3e815f769E>:
80201974: 41 11        	addi	sp, sp, -16
80201976: 06 e4        	sd	ra, 8(sp)
80201978: 22 e0        	sd	s0, 0(sp)
8020197a: 00 08        	addi	s0, sp, 16
8020197c: 10 61        	ld	a2, 0(a0)
8020197e: 14 65        	ld	a3, 8(a0)
80201980: 2e 87        	mv	a4, a1
80201982: 32 85        	mv	a0, a2
80201984: b6 85        	mv	a1, a3
80201986: 3a 86        	mv	a2, a4
80201988: a2 60        	ld	ra, 8(sp)
8020198a: 02 64        	ld	s0, 0(sp)
8020198c: 41 01        	addi	sp, sp, 16
8020198e: 17 03 00 00  	auipc	t1, 0
80201992: 67 00 63 7a  	jr	1958(t1)

0000000080201996 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda6921607be575eaE>:
80201996: 41 11        	addi	sp, sp, -16
80201998: 06 e4        	sd	ra, 8(sp)
8020199a: 22 e0        	sd	s0, 0(sp)
8020199c: 00 08        	addi	s0, sp, 16
8020199e: 08 61        	ld	a0, 0(a0)
802019a0: a2 60        	ld	ra, 8(sp)
802019a2: 02 64        	ld	s0, 0(sp)
802019a4: 41 01        	addi	sp, sp, 16
802019a6: 17 03 00 00  	auipc	t1, 0
802019aa: 67 00 83 10  	jr	264(t1)

00000000802019ae <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
802019ae: 08 61        	ld	a0, 0(a0)
802019b0: 01 a0        	j	0x802019b0 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

00000000802019b2 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
802019b2: 82 80        	ret

00000000802019b4 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
802019b4: 17 25 00 00  	auipc	a0, 2
802019b8: 13 05 c5 75  	addi	a0, a0, 1884
802019bc: 08 61        	ld	a0, 0(a0)
802019be: 82 80        	ret

00000000802019c0 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
802019c0: 08 69        	ld	a0, 16(a0)
802019c2: 82 80        	ret

00000000802019c4 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
802019c4: 08 6d        	ld	a0, 24(a0)
802019c6: 82 80        	ret

00000000802019c8 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
802019c8: 79 71        	addi	sp, sp, -48
802019ca: 06 f4        	sd	ra, 40(sp)

00000000802019cc <.LBB170_1>:
802019cc: 17 26 00 00  	auipc	a2, 2
802019d0: 13 06 c6 ba  	addi	a2, a2, -1108
802019d4: 32 e0        	sd	a2, 0(sp)

00000000802019d6 <.LBB170_2>:
802019d6: 17 26 00 00  	auipc	a2, 2
802019da: 13 06 a6 bf  	addi	a2, a2, -1030
802019de: 32 e4        	sd	a2, 8(sp)
802019e0: 2a e8        	sd	a0, 16(sp)
802019e2: 2e ec        	sd	a1, 24(sp)
802019e4: 05 45        	li	a0, 1
802019e6: 23 00 a1 02  	sb	a0, 32(sp)
802019ea: 0a 85        	mv	a0, sp
802019ec: 97 f0 ff ff  	auipc	ra, 1048575
802019f0: e7 80 80 79  	jalr	1944(ra)
802019f4: 00 00        	unimp	

00000000802019f6 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
802019f6: 5d 71        	addi	sp, sp, -80
802019f8: 86 e4        	sd	ra, 72(sp)
802019fa: 2a fc        	sd	a0, 56(sp)
802019fc: ae e0        	sd	a1, 64(sp)
802019fe: 28 18        	addi	a0, sp, 56
80201a00: 2a ec        	sd	a0, 24(sp)
80201a02: 05 45        	li	a0, 1
80201a04: 2a f0        	sd	a0, 32(sp)
80201a06: 02 e4        	sd	zero, 8(sp)

0000000080201a08 <.LBB172_1>:
80201a08: 17 25 00 00  	auipc	a0, 2
80201a0c: 13 05 05 b7  	addi	a0, a0, -1168
80201a10: 2a f4        	sd	a0, 40(sp)
80201a12: 02 f8        	sd	zero, 48(sp)
80201a14: 28 00        	addi	a0, sp, 8
80201a16: b2 85        	mv	a1, a2
80201a18: 97 00 00 00  	auipc	ra, 0
80201a1c: e7 80 00 fb  	jalr	-80(ra)
80201a20: 00 00        	unimp	

0000000080201a22 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80201a22: 59 71        	addi	sp, sp, -112
80201a24: 86 f4        	sd	ra, 104(sp)
80201a26: 2a e4        	sd	a0, 8(sp)
80201a28: 2e e8        	sd	a1, 16(sp)
80201a2a: 08 08        	addi	a0, sp, 16
80201a2c: aa e4        	sd	a0, 72(sp)

0000000080201a2e <.LBB176_1>:
80201a2e: 17 15 00 00  	auipc	a0, 1
80201a32: 13 05 25 a3  	addi	a0, a0, -1486
80201a36: aa e8        	sd	a0, 80(sp)
80201a38: 2c 00        	addi	a1, sp, 8
80201a3a: ae ec        	sd	a1, 88(sp)
80201a3c: aa f0        	sd	a0, 96(sp)

0000000080201a3e <.LBB176_2>:
80201a3e: 17 25 00 00  	auipc	a0, 2
80201a42: 13 05 25 b7  	addi	a0, a0, -1166
80201a46: 2a f4        	sd	a0, 40(sp)
80201a48: 09 45        	li	a0, 2
80201a4a: 2a f8        	sd	a0, 48(sp)
80201a4c: 02 ec        	sd	zero, 24(sp)
80201a4e: ac 00        	addi	a1, sp, 72
80201a50: 2e fc        	sd	a1, 56(sp)
80201a52: aa e0        	sd	a0, 64(sp)
80201a54: 28 08        	addi	a0, sp, 24
80201a56: b2 85        	mv	a1, a2
80201a58: 97 00 00 00  	auipc	ra, 0
80201a5c: e7 80 00 f7  	jalr	-144(ra)
80201a60: 00 00        	unimp	

0000000080201a62 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
80201a62: 19 71        	addi	sp, sp, -128
80201a64: 86 fc        	sd	ra, 120(sp)
80201a66: 2a e4        	sd	a0, 8(sp)
80201a68: 2e e8        	sd	a1, 16(sp)
80201a6a: 32 ec        	sd	a2, 24(sp)
80201a6c: 36 f0        	sd	a3, 32(sp)
80201a6e: 28 00        	addi	a0, sp, 8
80201a70: aa ec        	sd	a0, 88(sp)

0000000080201a72 <.LBB183_1>:
80201a72: 17 15 00 00  	auipc	a0, 1
80201a76: 13 05 65 a1  	addi	a0, a0, -1514
80201a7a: aa f0        	sd	a0, 96(sp)
80201a7c: 28 08        	addi	a0, sp, 24
80201a7e: aa f4        	sd	a0, 104(sp)

0000000080201a80 <.LBB183_2>:
80201a80: 17 15 00 00  	auipc	a0, 1
80201a84: 13 05 05 a0  	addi	a0, a0, -1536
80201a88: aa f8        	sd	a0, 112(sp)

0000000080201a8a <.LBB183_3>:
80201a8a: 17 25 00 00  	auipc	a0, 2
80201a8e: 13 05 e5 b6  	addi	a0, a0, -1170
80201a92: 2a fc        	sd	a0, 56(sp)
80201a94: 09 45        	li	a0, 2
80201a96: aa e0        	sd	a0, 64(sp)
80201a98: 02 f4        	sd	zero, 40(sp)
80201a9a: ac 08        	addi	a1, sp, 88
80201a9c: ae e4        	sd	a1, 72(sp)
80201a9e: aa e8        	sd	a0, 80(sp)
80201aa0: 28 10        	addi	a0, sp, 40
80201aa2: ba 85        	mv	a1, a4
80201aa4: 97 00 00 00  	auipc	ra, 0
80201aa8: e7 80 40 f2  	jalr	-220(ra)
80201aac: 00 00        	unimp	

0000000080201aae <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80201aae: 39 71        	addi	sp, sp, -64
80201ab0: 06 fc        	sd	ra, 56(sp)
80201ab2: 10 75        	ld	a2, 40(a0)
80201ab4: 18 71        	ld	a4, 32(a0)
80201ab6: 1c 6d        	ld	a5, 24(a0)
80201ab8: 32 f8        	sd	a2, 48(sp)
80201aba: 94 61        	ld	a3, 0(a1)
80201abc: 3a f4        	sd	a4, 40(sp)
80201abe: 3e f0        	sd	a5, 32(sp)
80201ac0: 10 69        	ld	a2, 16(a0)
80201ac2: 18 65        	ld	a4, 8(a0)
80201ac4: 08 61        	ld	a0, 0(a0)
80201ac6: 8c 65        	ld	a1, 8(a1)
80201ac8: 32 ec        	sd	a2, 24(sp)
80201aca: 3a e8        	sd	a4, 16(sp)
80201acc: 2a e4        	sd	a0, 8(sp)
80201ace: 30 00        	addi	a2, sp, 8
80201ad0: 36 85        	mv	a0, a3
80201ad2: 97 00 00 00  	auipc	ra, 0
80201ad6: e7 80 e0 00  	jalr	14(ra)
80201ada: e2 70        	ld	ra, 56(sp)
80201adc: 21 61        	addi	sp, sp, 64
80201ade: 82 80        	ret

0000000080201ae0 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80201ae0: 19 71        	addi	sp, sp, -128
80201ae2: 86 fc        	sd	ra, 120(sp)
80201ae4: a2 f8        	sd	s0, 112(sp)
80201ae6: a6 f4        	sd	s1, 104(sp)
80201ae8: ca f0        	sd	s2, 96(sp)
80201aea: ce ec        	sd	s3, 88(sp)
80201aec: d2 e8        	sd	s4, 80(sp)
80201aee: d6 e4        	sd	s5, 72(sp)
80201af0: da e0        	sd	s6, 64(sp)
80201af2: b2 89        	mv	s3, a2
80201af4: 05 46        	li	a2, 1
80201af6: 16 16        	slli	a2, a2, 37
80201af8: 32 f8        	sd	a2, 48(sp)
80201afa: 0d 46        	li	a2, 3
80201afc: 23 0c c1 02  	sb	a2, 56(sp)
80201b00: 03 b6 09 00  	ld	a2, 0(s3)
80201b04: 02 e8        	sd	zero, 16(sp)
80201b06: 02 f0        	sd	zero, 32(sp)
80201b08: 2a e0        	sd	a0, 0(sp)
80201b0a: 2e e4        	sd	a1, 8(sp)
80201b0c: 69 c6        	beqz	a2, 0x80201bd6 <.LBB220_31+0x9e>
80201b0e: 03 b5 89 00  	ld	a0, 8(s3)
80201b12: 63 0e 05 10  	beqz	a0, 0x80201c2e <.LBB220_31+0xf6>
80201b16: 83 b5 09 01  	ld	a1, 16(s3)
80201b1a: 93 06 f5 ff  	addi	a3, a0, -1
80201b1e: 8e 06        	slli	a3, a3, 3
80201b20: 8d 82        	srli	a3, a3, 3
80201b22: 13 89 16 00  	addi	s2, a3, 1
80201b26: 93 84 85 00  	addi	s1, a1, 8
80201b2a: 93 05 80 03  	li	a1, 56
80201b2e: 33 0a b5 02  	mul	s4, a0, a1
80201b32: 13 04 86 01  	addi	s0, a2, 24
80201b36: 85 4a        	li	s5, 1

0000000080201b38 <.LBB220_31>:
80201b38: 17 0b 00 00  	auipc	s6, 0
80201b3c: 13 0b 6b e7  	addi	s6, s6, -394
80201b40: 90 60        	ld	a2, 0(s1)
80201b42: 09 ca        	beqz	a2, 0x80201b54 <.LBB220_31+0x1c>
80201b44: a2 66        	ld	a3, 8(sp)
80201b46: 02 65        	ld	a0, 0(sp)
80201b48: 83 b5 84 ff  	ld	a1, -8(s1)
80201b4c: 94 6e        	ld	a3, 24(a3)
80201b4e: 82 96        	jalr	a3
80201b50: 63 11 05 10  	bnez	a0, 0x80201c52 <.LBB220_31+0x11a>
80201b54: 48 44        	lw	a0, 12(s0)
80201b56: 2a da        	sw	a0, 52(sp)
80201b58: 03 05 04 01  	lb	a0, 16(s0)
80201b5c: 23 0c a1 02  	sb	a0, 56(sp)
80201b60: 0c 44        	lw	a1, 8(s0)
80201b62: 03 b5 09 02  	ld	a0, 32(s3)
80201b66: 2e d8        	sw	a1, 48(sp)
80201b68: 83 36 84 ff  	ld	a3, -8(s0)
80201b6c: 0c 60        	ld	a1, 0(s0)
80201b6e: 89 ce        	beqz	a3, 0x80201b88 <.LBB220_31+0x50>
80201b70: 01 46        	li	a2, 0
80201b72: 63 9c 56 01  	bne	a3, s5, 0x80201b8a <.LBB220_31+0x52>
80201b76: 92 05        	slli	a1, a1, 4
80201b78: aa 95        	add	a1, a1, a0
80201b7a: 90 65        	ld	a2, 8(a1)
80201b7c: 63 04 66 01  	beq	a2, s6, 0x80201b84 <.LBB220_31+0x4c>
80201b80: 01 46        	li	a2, 0
80201b82: 21 a0        	j	0x80201b8a <.LBB220_31+0x52>
80201b84: 8c 61        	ld	a1, 0(a1)
80201b86: 8c 61        	ld	a1, 0(a1)
80201b88: 05 46        	li	a2, 1
80201b8a: 32 e8        	sd	a2, 16(sp)
80201b8c: 2e ec        	sd	a1, 24(sp)
80201b8e: 83 36 84 fe  	ld	a3, -24(s0)
80201b92: 83 35 04 ff  	ld	a1, -16(s0)
80201b96: 89 ce        	beqz	a3, 0x80201bb0 <.LBB220_31+0x78>
80201b98: 01 46        	li	a2, 0
80201b9a: 63 9c 56 01  	bne	a3, s5, 0x80201bb2 <.LBB220_31+0x7a>
80201b9e: 92 05        	slli	a1, a1, 4
80201ba0: aa 95        	add	a1, a1, a0
80201ba2: 90 65        	ld	a2, 8(a1)
80201ba4: 63 04 66 01  	beq	a2, s6, 0x80201bac <.LBB220_31+0x74>
80201ba8: 01 46        	li	a2, 0
80201baa: 21 a0        	j	0x80201bb2 <.LBB220_31+0x7a>
80201bac: 8c 61        	ld	a1, 0(a1)
80201bae: 8c 61        	ld	a1, 0(a1)
80201bb0: 05 46        	li	a2, 1
80201bb2: 32 f0        	sd	a2, 32(sp)
80201bb4: 2e f4        	sd	a1, 40(sp)
80201bb6: 0c 6c        	ld	a1, 24(s0)
80201bb8: 92 05        	slli	a1, a1, 4
80201bba: 2e 95        	add	a0, a0, a1
80201bbc: 10 65        	ld	a2, 8(a0)
80201bbe: 08 61        	ld	a0, 0(a0)
80201bc0: 8a 85        	mv	a1, sp
80201bc2: 02 96        	jalr	a2
80201bc4: 59 e5        	bnez	a0, 0x80201c52 <.LBB220_31+0x11a>
80201bc6: c1 04        	addi	s1, s1, 16
80201bc8: 13 0a 8a fc  	addi	s4, s4, -56
80201bcc: 13 04 84 03  	addi	s0, s0, 56
80201bd0: e3 18 0a f6  	bnez	s4, 0x80201b40 <.LBB220_31+0x8>
80201bd4: 81 a8        	j	0x80201c24 <.LBB220_31+0xec>
80201bd6: 03 b5 89 02  	ld	a0, 40(s3)
80201bda: 31 c9        	beqz	a0, 0x80201c2e <.LBB220_31+0xf6>
80201bdc: 83 b5 09 02  	ld	a1, 32(s3)
80201be0: 03 b6 09 01  	ld	a2, 16(s3)
80201be4: 93 06 f5 ff  	addi	a3, a0, -1
80201be8: 92 06        	slli	a3, a3, 4
80201bea: 91 82        	srli	a3, a3, 4
80201bec: 13 89 16 00  	addi	s2, a3, 1
80201bf0: 13 04 86 00  	addi	s0, a2, 8
80201bf4: 13 1a 45 00  	slli	s4, a0, 4
80201bf8: 93 84 85 00  	addi	s1, a1, 8
80201bfc: 10 60        	ld	a2, 0(s0)
80201bfe: 01 ca        	beqz	a2, 0x80201c0e <.LBB220_31+0xd6>
80201c00: a2 66        	ld	a3, 8(sp)
80201c02: 02 65        	ld	a0, 0(sp)
80201c04: 83 35 84 ff  	ld	a1, -8(s0)
80201c08: 94 6e        	ld	a3, 24(a3)
80201c0a: 82 96        	jalr	a3
80201c0c: 39 e1        	bnez	a0, 0x80201c52 <.LBB220_31+0x11a>
80201c0e: 90 60        	ld	a2, 0(s1)
80201c10: 03 b5 84 ff  	ld	a0, -8(s1)
80201c14: 8a 85        	mv	a1, sp
80201c16: 02 96        	jalr	a2
80201c18: 0d ed        	bnez	a0, 0x80201c52 <.LBB220_31+0x11a>
80201c1a: 41 04        	addi	s0, s0, 16
80201c1c: 41 1a        	addi	s4, s4, -16
80201c1e: c1 04        	addi	s1, s1, 16
80201c20: e3 1e 0a fc  	bnez	s4, 0x80201bfc <.LBB220_31+0xc4>
80201c24: 03 b5 89 01  	ld	a0, 24(s3)
80201c28: 63 68 a9 00  	bltu	s2, a0, 0x80201c38 <.LBB220_31+0x100>
80201c2c: 2d a0        	j	0x80201c56 <.LBB220_31+0x11e>
80201c2e: 01 49        	li	s2, 0
80201c30: 03 b5 89 01  	ld	a0, 24(s3)
80201c34: 63 71 a9 02  	bgeu	s2, a0, 0x80201c56 <.LBB220_31+0x11e>
80201c38: 03 b5 09 01  	ld	a0, 16(s3)
80201c3c: 93 15 49 00  	slli	a1, s2, 4
80201c40: 33 06 b5 00  	add	a2, a0, a1
80201c44: a2 66        	ld	a3, 8(sp)
80201c46: 02 65        	ld	a0, 0(sp)
80201c48: 0c 62        	ld	a1, 0(a2)
80201c4a: 10 66        	ld	a2, 8(a2)
80201c4c: 94 6e        	ld	a3, 24(a3)
80201c4e: 82 96        	jalr	a3
80201c50: 19 c1        	beqz	a0, 0x80201c56 <.LBB220_31+0x11e>
80201c52: 05 45        	li	a0, 1
80201c54: 11 a0        	j	0x80201c58 <.LBB220_31+0x120>
80201c56: 01 45        	li	a0, 0
80201c58: e6 70        	ld	ra, 120(sp)
80201c5a: 46 74        	ld	s0, 112(sp)
80201c5c: a6 74        	ld	s1, 104(sp)
80201c5e: 06 79        	ld	s2, 96(sp)
80201c60: e6 69        	ld	s3, 88(sp)
80201c62: 46 6a        	ld	s4, 80(sp)
80201c64: a6 6a        	ld	s5, 72(sp)
80201c66: 06 6b        	ld	s6, 64(sp)
80201c68: 09 61        	addi	sp, sp, 128
80201c6a: 82 80        	ret

0000000080201c6c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80201c6c: 59 71        	addi	sp, sp, -112
80201c6e: 86 f4        	sd	ra, 104(sp)
80201c70: a2 f0        	sd	s0, 96(sp)
80201c72: a6 ec        	sd	s1, 88(sp)
80201c74: ca e8        	sd	s2, 80(sp)
80201c76: ce e4        	sd	s3, 72(sp)
80201c78: d2 e0        	sd	s4, 64(sp)
80201c7a: 56 fc        	sd	s5, 56(sp)
80201c7c: 5a f8        	sd	s6, 48(sp)
80201c7e: 5e f4        	sd	s7, 40(sp)
80201c80: 62 f0        	sd	s8, 32(sp)
80201c82: 66 ec        	sd	s9, 24(sp)
80201c84: 6a e8        	sd	s10, 16(sp)
80201c86: 6e e4        	sd	s11, 8(sp)
80201c88: be 89        	mv	s3, a5
80201c8a: 3a 89        	mv	s2, a4
80201c8c: 36 8b        	mv	s6, a3
80201c8e: 32 8a        	mv	s4, a2
80201c90: 2a 8c        	mv	s8, a0
80201c92: b9 c1        	beqz	a1, 0x80201cd8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
80201c94: 03 64 0c 03  	lwu	s0, 48(s8)
80201c98: 13 75 14 00  	andi	a0, s0, 1
80201c9c: b7 0a 11 00  	lui	s5, 272
80201ca0: 19 c1        	beqz	a0, 0x80201ca6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
80201ca2: 93 0a b0 02  	li	s5, 43
80201ca6: b3 0c 35 01  	add	s9, a0, s3
80201caa: 13 75 44 00  	andi	a0, s0, 4
80201cae: 15 cd        	beqz	a0, 0x80201cea <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80201cb0: 13 05 00 02  	li	a0, 32
80201cb4: 63 70 ab 04  	bgeu	s6, a0, 0x80201cf4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80201cb8: 01 45        	li	a0, 0
80201cba: 63 03 0b 04  	beqz	s6, 0x80201d00 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80201cbe: da 85        	mv	a1, s6
80201cc0: 52 86        	mv	a2, s4
80201cc2: 83 06 06 00  	lb	a3, 0(a2)
80201cc6: 05 06        	addi	a2, a2, 1
80201cc8: 93 a6 06 fc  	slti	a3, a3, -64
80201ccc: 93 c6 16 00  	xori	a3, a3, 1
80201cd0: fd 15        	addi	a1, a1, -1
80201cd2: 36 95        	add	a0, a0, a3
80201cd4: fd f5        	bnez	a1, 0x80201cc2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80201cd6: 2d a0        	j	0x80201d00 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80201cd8: 03 24 0c 03  	lw	s0, 48(s8)
80201cdc: 93 8c 19 00  	addi	s9, s3, 1
80201ce0: 93 0a d0 02  	li	s5, 45
80201ce4: 13 75 44 00  	andi	a0, s0, 4
80201ce8: 61 f5        	bnez	a0, 0x80201cb0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80201cea: 01 4a        	li	s4, 0
80201cec: 03 35 0c 01  	ld	a0, 16(s8)
80201cf0: 01 ed        	bnez	a0, 0x80201d08 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80201cf2: 99 a0        	j	0x80201d38 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201cf4: 52 85        	mv	a0, s4
80201cf6: da 85        	mv	a1, s6
80201cf8: 97 00 00 00  	auipc	ra, 0
80201cfc: e7 80 c0 44  	jalr	1100(ra)
80201d00: aa 9c        	add	s9, s9, a0
80201d02: 03 35 0c 01  	ld	a0, 16(s8)
80201d06: 0d c9        	beqz	a0, 0x80201d38 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201d08: 03 3d 8c 01  	ld	s10, 24(s8)
80201d0c: 63 f6 ac 03  	bgeu	s9, s10, 0x80201d38 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80201d10: 13 75 84 00  	andi	a0, s0, 8
80201d14: 41 e5        	bnez	a0, 0x80201d9c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80201d16: 83 45 8c 03  	lbu	a1, 56(s8)
80201d1a: 0d 46        	li	a2, 3
80201d1c: 05 45        	li	a0, 1
80201d1e: 63 83 c5 00  	beq	a1, a2, 0x80201d24 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80201d22: 2e 85        	mv	a0, a1
80201d24: 93 75 35 00  	andi	a1, a0, 3
80201d28: 33 05 9d 41  	sub	a0, s10, s9
80201d2c: e1 c1        	beqz	a1, 0x80201dec <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80201d2e: 05 46        	li	a2, 1
80201d30: 63 91 c5 0c  	bne	a1, a2, 0x80201df2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80201d34: 01 4d        	li	s10, 0
80201d36: d9 a0        	j	0x80201dfc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80201d38: 03 34 0c 00  	ld	s0, 0(s8)
80201d3c: 83 34 8c 00  	ld	s1, 8(s8)
80201d40: 22 85        	mv	a0, s0
80201d42: a6 85        	mv	a1, s1
80201d44: 56 86        	mv	a2, s5
80201d46: d2 86        	mv	a3, s4
80201d48: 5a 87        	mv	a4, s6
80201d4a: 97 00 00 00  	auipc	ra, 0
80201d4e: e7 80 00 14  	jalr	320(ra)
80201d52: 85 4b        	li	s7, 1
80201d54: 0d c1        	beqz	a0, 0x80201d76 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80201d56: 5e 85        	mv	a0, s7
80201d58: a6 70        	ld	ra, 104(sp)
80201d5a: 06 74        	ld	s0, 96(sp)
80201d5c: e6 64        	ld	s1, 88(sp)
80201d5e: 46 69        	ld	s2, 80(sp)
80201d60: a6 69        	ld	s3, 72(sp)
80201d62: 06 6a        	ld	s4, 64(sp)
80201d64: e2 7a        	ld	s5, 56(sp)
80201d66: 42 7b        	ld	s6, 48(sp)
80201d68: a2 7b        	ld	s7, 40(sp)
80201d6a: 02 7c        	ld	s8, 32(sp)
80201d6c: e2 6c        	ld	s9, 24(sp)
80201d6e: 42 6d        	ld	s10, 16(sp)
80201d70: a2 6d        	ld	s11, 8(sp)
80201d72: 65 61        	addi	sp, sp, 112
80201d74: 82 80        	ret
80201d76: 9c 6c        	ld	a5, 24(s1)
80201d78: 22 85        	mv	a0, s0
80201d7a: ca 85        	mv	a1, s2
80201d7c: 4e 86        	mv	a2, s3
80201d7e: a6 70        	ld	ra, 104(sp)
80201d80: 06 74        	ld	s0, 96(sp)
80201d82: e6 64        	ld	s1, 88(sp)
80201d84: 46 69        	ld	s2, 80(sp)
80201d86: a6 69        	ld	s3, 72(sp)
80201d88: 06 6a        	ld	s4, 64(sp)
80201d8a: e2 7a        	ld	s5, 56(sp)
80201d8c: 42 7b        	ld	s6, 48(sp)
80201d8e: a2 7b        	ld	s7, 40(sp)
80201d90: 02 7c        	ld	s8, 32(sp)
80201d92: e2 6c        	ld	s9, 24(sp)
80201d94: 42 6d        	ld	s10, 16(sp)
80201d96: a2 6d        	ld	s11, 8(sp)
80201d98: 65 61        	addi	sp, sp, 112
80201d9a: 82 87        	jr	a5
80201d9c: 03 24 4c 03  	lw	s0, 52(s8)
80201da0: 13 05 00 03  	li	a0, 48
80201da4: 83 45 8c 03  	lbu	a1, 56(s8)
80201da8: 2e e0        	sd	a1, 0(sp)
80201daa: 83 3d 0c 00  	ld	s11, 0(s8)
80201dae: 83 34 8c 00  	ld	s1, 8(s8)
80201db2: 23 2a ac 02  	sw	a0, 52(s8)
80201db6: 85 4b        	li	s7, 1
80201db8: 23 0c 7c 03  	sb	s7, 56(s8)
80201dbc: 6e 85        	mv	a0, s11
80201dbe: a6 85        	mv	a1, s1
80201dc0: 56 86        	mv	a2, s5
80201dc2: d2 86        	mv	a3, s4
80201dc4: 5a 87        	mv	a4, s6
80201dc6: 97 00 00 00  	auipc	ra, 0
80201dca: e7 80 40 0c  	jalr	196(ra)
80201dce: 41 f5        	bnez	a0, 0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201dd0: 22 8a        	mv	s4, s0
80201dd2: 33 05 9d 41  	sub	a0, s10, s9
80201dd6: 13 04 15 00  	addi	s0, a0, 1
80201dda: 7d 14        	addi	s0, s0, -1
80201ddc: 49 c4        	beqz	s0, 0x80201e66 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80201dde: 90 70        	ld	a2, 32(s1)
80201de0: 93 05 00 03  	li	a1, 48
80201de4: 6e 85        	mv	a0, s11
80201de6: 02 96        	jalr	a2
80201de8: 6d d9        	beqz	a0, 0x80201dda <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80201dea: b5 b7        	j	0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201dec: 2a 8d        	mv	s10, a0
80201dee: 2e 85        	mv	a0, a1
80201df0: 31 a0        	j	0x80201dfc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80201df2: 93 05 15 00  	addi	a1, a0, 1
80201df6: 05 81        	srli	a0, a0, 1
80201df8: 13 dd 15 00  	srli	s10, a1, 1
80201dfc: 83 3c 0c 00  	ld	s9, 0(s8)
80201e00: 83 3d 8c 00  	ld	s11, 8(s8)
80201e04: 03 24 4c 03  	lw	s0, 52(s8)
80201e08: 93 04 15 00  	addi	s1, a0, 1
80201e0c: fd 14        	addi	s1, s1, -1
80201e0e: 89 c8        	beqz	s1, 0x80201e20 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80201e10: 03 b6 0d 02  	ld	a2, 32(s11)
80201e14: 66 85        	mv	a0, s9
80201e16: a2 85        	mv	a1, s0
80201e18: 02 96        	jalr	a2
80201e1a: 6d d9        	beqz	a0, 0x80201e0c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80201e1c: 85 4b        	li	s7, 1
80201e1e: 25 bf        	j	0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e20: 37 05 11 00  	lui	a0, 272
80201e24: 85 4b        	li	s7, 1
80201e26: e3 08 a4 f2  	beq	s0, a0, 0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e2a: 66 85        	mv	a0, s9
80201e2c: ee 85        	mv	a1, s11
80201e2e: 56 86        	mv	a2, s5
80201e30: d2 86        	mv	a3, s4
80201e32: 5a 87        	mv	a4, s6
80201e34: 97 00 00 00  	auipc	ra, 0
80201e38: e7 80 60 05  	jalr	86(ra)
80201e3c: 09 fd        	bnez	a0, 0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e3e: 83 b6 8d 01  	ld	a3, 24(s11)
80201e42: 66 85        	mv	a0, s9
80201e44: ca 85        	mv	a1, s2
80201e46: 4e 86        	mv	a2, s3
80201e48: 82 96        	jalr	a3
80201e4a: 11 f5        	bnez	a0, 0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e4c: 81 44        	li	s1, 0
80201e4e: 63 0a 9d 02  	beq	s10, s1, 0x80201e82 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80201e52: 03 b6 0d 02  	ld	a2, 32(s11)
80201e56: 85 04        	addi	s1, s1, 1
80201e58: 66 85        	mv	a0, s9
80201e5a: a2 85        	mv	a1, s0
80201e5c: 02 96        	jalr	a2
80201e5e: 65 d9        	beqz	a0, 0x80201e4e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80201e60: 13 85 f4 ff  	addi	a0, s1, -1
80201e64: 05 a0        	j	0x80201e84 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80201e66: 94 6c        	ld	a3, 24(s1)
80201e68: 6e 85        	mv	a0, s11
80201e6a: ca 85        	mv	a1, s2
80201e6c: 4e 86        	mv	a2, s3
80201e6e: 82 96        	jalr	a3
80201e70: e3 13 05 ee  	bnez	a0, 0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e74: 81 4b        	li	s7, 0
80201e76: 23 2a 4c 03  	sw	s4, 52(s8)
80201e7a: 02 65        	ld	a0, 0(sp)
80201e7c: 23 0c ac 02  	sb	a0, 56(s8)
80201e80: d9 bd        	j	0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80201e82: 6a 85        	mv	a0, s10
80201e84: b3 3b a5 01  	sltu	s7, a0, s10
80201e88: f9 b5        	j	0x80201d56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080201e8a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80201e8a: 79 71        	addi	sp, sp, -48
80201e8c: 06 f4        	sd	ra, 40(sp)
80201e8e: 22 f0        	sd	s0, 32(sp)
80201e90: 26 ec        	sd	s1, 24(sp)
80201e92: 4a e8        	sd	s2, 16(sp)
80201e94: 4e e4        	sd	s3, 8(sp)
80201e96: 9b 07 06 00  	sext.w	a5, a2
80201e9a: 37 08 11 00  	lui	a6, 272
80201e9e: 3a 89        	mv	s2, a4
80201ea0: b6 84        	mv	s1, a3
80201ea2: 2e 84        	mv	s0, a1
80201ea4: aa 89        	mv	s3, a0
80201ea6: 63 89 07 01  	beq	a5, a6, 0x80201eb8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80201eaa: 14 70        	ld	a3, 32(s0)
80201eac: 4e 85        	mv	a0, s3
80201eae: b2 85        	mv	a1, a2
80201eb0: 82 96        	jalr	a3
80201eb2: aa 85        	mv	a1, a0
80201eb4: 05 45        	li	a0, 1
80201eb6: 91 ed        	bnez	a1, 0x80201ed2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80201eb8: 81 cc        	beqz	s1, 0x80201ed0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80201eba: 1c 6c        	ld	a5, 24(s0)
80201ebc: 4e 85        	mv	a0, s3
80201ebe: a6 85        	mv	a1, s1
80201ec0: 4a 86        	mv	a2, s2
80201ec2: a2 70        	ld	ra, 40(sp)
80201ec4: 02 74        	ld	s0, 32(sp)
80201ec6: e2 64        	ld	s1, 24(sp)
80201ec8: 42 69        	ld	s2, 16(sp)
80201eca: a2 69        	ld	s3, 8(sp)
80201ecc: 45 61        	addi	sp, sp, 48
80201ece: 82 87        	jr	a5
80201ed0: 01 45        	li	a0, 0
80201ed2: a2 70        	ld	ra, 40(sp)
80201ed4: 02 74        	ld	s0, 32(sp)
80201ed6: e2 64        	ld	s1, 24(sp)
80201ed8: 42 69        	ld	s2, 16(sp)
80201eda: a2 69        	ld	s3, 8(sp)
80201edc: 45 61        	addi	sp, sp, 48
80201ede: 82 80        	ret

0000000080201ee0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80201ee0: 5d 71        	addi	sp, sp, -80
80201ee2: 86 e4        	sd	ra, 72(sp)
80201ee4: a2 e0        	sd	s0, 64(sp)
80201ee6: 26 fc        	sd	s1, 56(sp)
80201ee8: 4a f8        	sd	s2, 48(sp)
80201eea: 4e f4        	sd	s3, 40(sp)
80201eec: 52 f0        	sd	s4, 32(sp)
80201eee: 56 ec        	sd	s5, 24(sp)
80201ef0: 5a e8        	sd	s6, 16(sp)
80201ef2: 5e e4        	sd	s7, 8(sp)
80201ef4: 2a 8a        	mv	s4, a0
80201ef6: 83 32 05 01  	ld	t0, 16(a0)
80201efa: 08 71        	ld	a0, 32(a0)
80201efc: 93 86 f2 ff  	addi	a3, t0, -1
80201f00: b3 36 d0 00  	snez	a3, a3
80201f04: 13 07 f5 ff  	addi	a4, a0, -1
80201f08: 33 37 e0 00  	snez	a4, a4
80201f0c: f9 8e        	and	a3, a3, a4
80201f0e: b2 89        	mv	s3, a2
80201f10: 2e 89        	mv	s2, a1
80201f12: 63 9d 06 16  	bnez	a3, 0x8020208c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80201f16: 85 45        	li	a1, 1
80201f18: 63 18 b5 10  	bne	a0, a1, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201f1c: 03 35 8a 02  	ld	a0, 40(s4)
80201f20: 81 45        	li	a1, 0
80201f22: b3 06 39 01  	add	a3, s2, s3
80201f26: 13 07 15 00  	addi	a4, a0, 1
80201f2a: 37 03 11 00  	lui	t1, 272
80201f2e: 93 08 f0 0d  	li	a7, 223
80201f32: 13 08 00 0f  	li	a6, 240
80201f36: 4a 86        	mv	a2, s2
80201f38: 01 a8        	j	0x80201f48 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80201f3a: 13 05 16 00  	addi	a0, a2, 1
80201f3e: 91 8d        	sub	a1, a1, a2
80201f40: aa 95        	add	a1, a1, a0
80201f42: 2a 86        	mv	a2, a0
80201f44: 63 02 64 0e  	beq	s0, t1, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201f48: 7d 17        	addi	a4, a4, -1
80201f4a: 25 c7        	beqz	a4, 0x80201fb2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80201f4c: 63 0e d6 0c  	beq	a2, a3, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201f50: 03 05 06 00  	lb	a0, 0(a2)
80201f54: 13 74 f5 0f  	andi	s0, a0, 255
80201f58: e3 51 05 fe  	bgez	a0, 0x80201f3a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80201f5c: 03 45 16 00  	lbu	a0, 1(a2)
80201f60: 93 77 f4 01  	andi	a5, s0, 31
80201f64: 93 74 f5 03  	andi	s1, a0, 63
80201f68: 63 f9 88 02  	bgeu	a7, s0, 0x80201f9a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80201f6c: 03 45 26 00  	lbu	a0, 2(a2)
80201f70: 9a 04        	slli	s1, s1, 6
80201f72: 13 75 f5 03  	andi	a0, a0, 63
80201f76: c9 8c        	or	s1, s1, a0
80201f78: 63 67 04 03  	bltu	s0, a6, 0x80201fa6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80201f7c: 03 45 36 00  	lbu	a0, 3(a2)
80201f80: f6 17        	slli	a5, a5, 61
80201f82: ad 93        	srli	a5, a5, 43
80201f84: 9a 04        	slli	s1, s1, 6
80201f86: 13 75 f5 03  	andi	a0, a0, 63
80201f8a: 45 8d        	or	a0, a0, s1
80201f8c: 33 64 f5 00  	or	s0, a0, a5
80201f90: 63 0c 64 08  	beq	s0, t1, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201f94: 13 05 46 00  	addi	a0, a2, 4
80201f98: 5d b7        	j	0x80201f3e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201f9a: 13 05 26 00  	addi	a0, a2, 2
80201f9e: 9a 07        	slli	a5, a5, 6
80201fa0: 33 e4 97 00  	or	s0, a5, s1
80201fa4: 69 bf        	j	0x80201f3e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201fa6: 13 05 36 00  	addi	a0, a2, 3
80201faa: b2 07        	slli	a5, a5, 12
80201fac: 33 e4 f4 00  	or	s0, s1, a5
80201fb0: 79 b7        	j	0x80201f3e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80201fb2: 63 0b d6 06  	beq	a2, a3, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80201fb6: 03 05 06 00  	lb	a0, 0(a2)
80201fba: 63 53 05 04  	bgez	a0, 0x80202000 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201fbe: 13 75 f5 0f  	andi	a0, a0, 255
80201fc2: 93 06 00 0e  	li	a3, 224
80201fc6: 63 6d d5 02  	bltu	a0, a3, 0x80202000 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201fca: 93 06 00 0f  	li	a3, 240
80201fce: 63 69 d5 02  	bltu	a0, a3, 0x80202000 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80201fd2: 83 46 16 00  	lbu	a3, 1(a2)
80201fd6: 03 47 26 00  	lbu	a4, 2(a2)
80201fda: 93 f6 f6 03  	andi	a3, a3, 63
80201fde: 13 77 f7 03  	andi	a4, a4, 63
80201fe2: 03 46 36 00  	lbu	a2, 3(a2)
80201fe6: 76 15        	slli	a0, a0, 61
80201fe8: 2d 91        	srli	a0, a0, 43
80201fea: b2 06        	slli	a3, a3, 12
80201fec: 1a 07        	slli	a4, a4, 6
80201fee: d9 8e        	or	a3, a3, a4
80201ff0: 13 76 f6 03  	andi	a2, a2, 63
80201ff4: 55 8e        	or	a2, a2, a3
80201ff6: 51 8d        	or	a0, a0, a2
80201ff8: 37 06 11 00  	lui	a2, 272
80201ffc: 63 06 c5 02  	beq	a0, a2, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202000: 85 c1        	beqz	a1, 0x80202020 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80202002: 63 fd 35 01  	bgeu	a1, s3, 0x8020201c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80202006: 33 05 b9 00  	add	a0, s2, a1
8020200a: 03 05 05 00  	lb	a0, 0(a0)
8020200e: 13 06 00 fc  	li	a2, -64
80202012: 63 57 c5 00  	bge	a0, a2, 0x80202020 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80202016: 01 45        	li	a0, 0
80202018: 11 e5        	bnez	a0, 0x80202024 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
8020201a: 39 a0        	j	0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020201c: e3 9d 35 ff  	bne	a1, s3, 0x80202016 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80202020: 4a 85        	mv	a0, s2
80202022: 19 c1        	beqz	a0, 0x80202028 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202024: ae 89        	mv	s3, a1
80202026: 2a 89        	mv	s2, a0
80202028: 63 82 02 06  	beqz	t0, 0x8020208c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
8020202c: 03 34 8a 01  	ld	s0, 24(s4)
80202030: 13 05 00 02  	li	a0, 32
80202034: 63 f4 a9 04  	bgeu	s3, a0, 0x8020207c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80202038: 01 45        	li	a0, 0
8020203a: 63 8e 09 00  	beqz	s3, 0x80202056 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
8020203e: ce 85        	mv	a1, s3
80202040: 4a 86        	mv	a2, s2
80202042: 83 06 06 00  	lb	a3, 0(a2)
80202046: 05 06        	addi	a2, a2, 1
80202048: 93 a6 06 fc  	slti	a3, a3, -64
8020204c: 93 c6 16 00  	xori	a3, a3, 1
80202050: fd 15        	addi	a1, a1, -1
80202052: 36 95        	add	a0, a0, a3
80202054: fd f5        	bnez	a1, 0x80202042 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80202056: 63 7b 85 02  	bgeu	a0, s0, 0x8020208c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
8020205a: 83 45 8a 03  	lbu	a1, 56(s4)
8020205e: 8d 46        	li	a3, 3
80202060: 01 46        	li	a2, 0
80202062: 63 83 d5 00  	beq	a1, a3, 0x80202068 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80202066: 2e 86        	mv	a2, a1
80202068: 93 75 36 00  	andi	a1, a2, 3
8020206c: 33 05 a4 40  	sub	a0, s0, a0
80202070: a1 c1        	beqz	a1, 0x802020b0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80202072: 05 46        	li	a2, 1
80202074: 63 91 c5 04  	bne	a1, a2, 0x802020b6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80202078: 81 4a        	li	s5, 0
8020207a: 99 a0        	j	0x802020c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
8020207c: 4a 85        	mv	a0, s2
8020207e: ce 85        	mv	a1, s3
80202080: 97 00 00 00  	auipc	ra, 0
80202084: e7 80 40 0c  	jalr	196(ra)
80202088: e3 69 85 fc  	bltu	a0, s0, 0x8020205a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
8020208c: 83 35 8a 00  	ld	a1, 8(s4)
80202090: 03 35 0a 00  	ld	a0, 0(s4)
80202094: 9c 6d        	ld	a5, 24(a1)
80202096: ca 85        	mv	a1, s2
80202098: 4e 86        	mv	a2, s3
8020209a: a6 60        	ld	ra, 72(sp)
8020209c: 06 64        	ld	s0, 64(sp)
8020209e: e2 74        	ld	s1, 56(sp)
802020a0: 42 79        	ld	s2, 48(sp)
802020a2: a2 79        	ld	s3, 40(sp)
802020a4: 02 7a        	ld	s4, 32(sp)
802020a6: e2 6a        	ld	s5, 24(sp)
802020a8: 42 6b        	ld	s6, 16(sp)
802020aa: a2 6b        	ld	s7, 8(sp)
802020ac: 61 61        	addi	sp, sp, 80
802020ae: 82 87        	jr	a5
802020b0: aa 8a        	mv	s5, a0
802020b2: 2e 85        	mv	a0, a1
802020b4: 31 a0        	j	0x802020c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
802020b6: 93 05 15 00  	addi	a1, a0, 1
802020ba: 05 81        	srli	a0, a0, 1
802020bc: 93 da 15 00  	srli	s5, a1, 1
802020c0: 03 3b 0a 00  	ld	s6, 0(s4)
802020c4: 83 3b 8a 00  	ld	s7, 8(s4)
802020c8: 83 24 4a 03  	lw	s1, 52(s4)
802020cc: 13 04 15 00  	addi	s0, a0, 1
802020d0: 7d 14        	addi	s0, s0, -1
802020d2: 09 c8        	beqz	s0, 0x802020e4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
802020d4: 03 b6 0b 02  	ld	a2, 32(s7)
802020d8: 5a 85        	mv	a0, s6
802020da: a6 85        	mv	a1, s1
802020dc: 02 96        	jalr	a2
802020de: 6d d9        	beqz	a0, 0x802020d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
802020e0: 05 4a        	li	s4, 1
802020e2: 2d a8        	j	0x8020211c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802020e4: 37 05 11 00  	lui	a0, 272
802020e8: 05 4a        	li	s4, 1
802020ea: 63 89 a4 02  	beq	s1, a0, 0x8020211c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802020ee: 83 b6 8b 01  	ld	a3, 24(s7)
802020f2: 5a 85        	mv	a0, s6
802020f4: ca 85        	mv	a1, s2
802020f6: 4e 86        	mv	a2, s3
802020f8: 82 96        	jalr	a3
802020fa: 0d e1        	bnez	a0, 0x8020211c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802020fc: 01 44        	li	s0, 0
802020fe: 63 8c 8a 00  	beq	s5, s0, 0x80202116 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80202102: 03 b6 0b 02  	ld	a2, 32(s7)
80202106: 05 04        	addi	s0, s0, 1
80202108: 5a 85        	mv	a0, s6
8020210a: a6 85        	mv	a1, s1
8020210c: 02 96        	jalr	a2
8020210e: 65 d9        	beqz	a0, 0x802020fe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80202110: 13 05 f4 ff  	addi	a0, s0, -1
80202114: 11 a0        	j	0x80202118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80202116: 56 85        	mv	a0, s5
80202118: 33 3a 55 01  	sltu	s4, a0, s5
8020211c: 52 85        	mv	a0, s4
8020211e: a6 60        	ld	ra, 72(sp)
80202120: 06 64        	ld	s0, 64(sp)
80202122: e2 74        	ld	s1, 56(sp)
80202124: 42 79        	ld	s2, 48(sp)
80202126: a2 79        	ld	s3, 40(sp)
80202128: 02 7a        	ld	s4, 32(sp)
8020212a: e2 6a        	ld	s5, 24(sp)
8020212c: 42 6b        	ld	s6, 16(sp)
8020212e: a2 6b        	ld	s7, 8(sp)
80202130: 61 61        	addi	sp, sp, 80
80202132: 82 80        	ret

0000000080202134 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80202134: ae 86        	mv	a3, a1
80202136: aa 85        	mv	a1, a0
80202138: 32 85        	mv	a0, a2
8020213a: 36 86        	mv	a2, a3
8020213c: 17 03 00 00  	auipc	t1, 0
80202140: 67 00 43 da  	jr	-604(t1)

0000000080202144 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80202144: 2a 86        	mv	a2, a0
80202146: 1d 05        	addi	a0, a0, 7
80202148: 13 77 85 ff  	andi	a4, a0, -8
8020214c: b3 08 c7 40  	sub	a7, a4, a2
80202150: 63 ec 15 01  	bltu	a1, a7, 0x80202168 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80202154: 33 88 15 41  	sub	a6, a1, a7
80202158: 13 35 88 00  	sltiu	a0, a6, 8
8020215c: 93 b7 98 00  	sltiu	a5, a7, 9
80202160: 93 c7 17 00  	xori	a5, a5, 1
80202164: 5d 8d        	or	a0, a0, a5
80202166: 11 cd        	beqz	a0, 0x80202182 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80202168: 01 45        	li	a0, 0
8020216a: 99 c9        	beqz	a1, 0x80202180 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
8020216c: 83 06 06 00  	lb	a3, 0(a2)
80202170: 05 06        	addi	a2, a2, 1
80202172: 93 a6 06 fc  	slti	a3, a3, -64
80202176: 93 c6 16 00  	xori	a3, a3, 1
8020217a: fd 15        	addi	a1, a1, -1
8020217c: 36 95        	add	a0, a0, a3
8020217e: fd f5        	bnez	a1, 0x8020216c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80202180: 82 80        	ret
80202182: 93 75 78 00  	andi	a1, a6, 7
80202186: 81 47        	li	a5, 0
80202188: 63 0f c7 00  	beq	a4, a2, 0x802021a6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
8020218c: 33 07 e6 40  	sub	a4, a2, a4
80202190: 32 85        	mv	a0, a2
80202192: 83 06 05 00  	lb	a3, 0(a0)
80202196: 05 05        	addi	a0, a0, 1
80202198: 93 a6 06 fc  	slti	a3, a3, -64
8020219c: 93 c6 16 00  	xori	a3, a3, 1
802021a0: 05 07        	addi	a4, a4, 1
802021a2: b6 97        	add	a5, a5, a3
802021a4: 7d f7        	bnez	a4, 0x80202192 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
802021a6: b3 02 16 01  	add	t0, a2, a7
802021aa: 01 46        	li	a2, 0
802021ac: 99 cd        	beqz	a1, 0x802021ca <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
802021ae: 13 75 88 ff  	andi	a0, a6, -8
802021b2: b3 86 a2 00  	add	a3, t0, a0
802021b6: 03 85 06 00  	lb	a0, 0(a3)
802021ba: 85 06        	addi	a3, a3, 1
802021bc: 13 25 05 fc  	slti	a0, a0, -64
802021c0: 13 45 15 00  	xori	a0, a0, 1
802021c4: fd 15        	addi	a1, a1, -1
802021c6: 2a 96        	add	a2, a2, a0
802021c8: fd f5        	bnez	a1, 0x802021b6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
802021ca: 13 57 38 00  	srli	a4, a6, 3

00000000802021ce <.LBB292_27>:
802021ce: 17 25 00 00  	auipc	a0, 2
802021d2: 13 05 a5 01  	addi	a0, a0, 26
802021d6: 03 3f 05 00  	ld	t5, 0(a0)

00000000802021da <.LBB292_28>:
802021da: 17 25 00 00  	auipc	a0, 2
802021de: 13 05 65 01  	addi	a0, a0, 22
802021e2: 83 38 05 00  	ld	a7, 0(a0)
802021e6: 37 15 00 10  	lui	a0, 65537
802021ea: 12 05        	slli	a0, a0, 4
802021ec: 05 05        	addi	a0, a0, 1
802021ee: 42 05        	slli	a0, a0, 16
802021f0: 13 08 15 00  	addi	a6, a0, 1
802021f4: 33 05 f6 00  	add	a0, a2, a5
802021f8: 25 a0        	j	0x80202220 <.LBB292_28+0x46>
802021fa: 13 16 3e 00  	slli	a2, t3, 3
802021fe: b3 02 c3 00  	add	t0, t1, a2
80202202: 33 87 c3 41  	sub	a4, t2, t3
80202206: 13 76 3e 00  	andi	a2, t3, 3
8020220a: b3 f6 15 01  	and	a3, a1, a7
8020220e: a1 81        	srli	a1, a1, 8
80202210: b3 f5 15 01  	and	a1, a1, a7
80202214: b6 95        	add	a1, a1, a3
80202216: b3 85 05 03  	mul	a1, a1, a6
8020221a: c1 91        	srli	a1, a1, 48
8020221c: 2e 95        	add	a0, a0, a1
8020221e: 41 e2        	bnez	a2, 0x8020229e <.LBB292_28+0xc4>
80202220: 25 d3        	beqz	a4, 0x80202180 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80202222: ba 83        	mv	t2, a4
80202224: 16 83        	mv	t1, t0
80202226: 93 05 00 0c  	li	a1, 192
8020222a: 3a 8e        	mv	t3, a4
8020222c: 63 64 b7 00  	bltu	a4, a1, 0x80202234 <.LBB292_28+0x5a>
80202230: 13 0e 00 0c  	li	t3, 192
80202234: 93 75 ce 0f  	andi	a1, t3, 252
80202238: 13 96 35 00  	slli	a2, a1, 3
8020223c: b3 0e c3 00  	add	t4, t1, a2
80202240: cd dd        	beqz	a1, 0x802021fa <.LBB292_28+0x20>
80202242: 81 45        	li	a1, 0
80202244: 1a 86        	mv	a2, t1
80202246: 55 da        	beqz	a2, 0x802021fa <.LBB292_28+0x20>
80202248: 18 62        	ld	a4, 0(a2)
8020224a: 93 47 f7 ff  	not	a5, a4
8020224e: 9d 83        	srli	a5, a5, 7
80202250: 19 83        	srli	a4, a4, 6
80202252: 14 66        	ld	a3, 8(a2)
80202254: 5d 8f        	or	a4, a4, a5
80202256: 33 77 e7 01  	and	a4, a4, t5
8020225a: ba 95        	add	a1, a1, a4
8020225c: 13 c7 f6 ff  	not	a4, a3
80202260: 1d 83        	srli	a4, a4, 7
80202262: 99 82        	srli	a3, a3, 6
80202264: 1c 6a        	ld	a5, 16(a2)
80202266: d9 8e        	or	a3, a3, a4
80202268: b3 f6 e6 01  	and	a3, a3, t5
8020226c: b6 95        	add	a1, a1, a3
8020226e: 93 c6 f7 ff  	not	a3, a5
80202272: 9d 82        	srli	a3, a3, 7
80202274: 13 d7 67 00  	srli	a4, a5, 6
80202278: 1c 6e        	ld	a5, 24(a2)
8020227a: d9 8e        	or	a3, a3, a4
8020227c: b3 f6 e6 01  	and	a3, a3, t5
80202280: b6 95        	add	a1, a1, a3
80202282: 93 c6 f7 ff  	not	a3, a5
80202286: 9d 82        	srli	a3, a3, 7
80202288: 13 d7 67 00  	srli	a4, a5, 6
8020228c: d9 8e        	or	a3, a3, a4
8020228e: b3 f6 e6 01  	and	a3, a3, t5
80202292: 13 06 06 02  	addi	a2, a2, 32
80202296: b6 95        	add	a1, a1, a3
80202298: e3 17 d6 fb  	bne	a2, t4, 0x80202246 <.LBB292_28+0x6c>
8020229c: b9 bf        	j	0x802021fa <.LBB292_28+0x20>
8020229e: 63 0a 03 02  	beqz	t1, 0x802022d2 <.LBB292_28+0xf8>
802022a2: 93 05 00 0c  	li	a1, 192
802022a6: 63 e4 b3 00  	bltu	t2, a1, 0x802022ae <.LBB292_28+0xd4>
802022aa: 93 03 00 0c  	li	t2, 192
802022ae: 81 45        	li	a1, 0
802022b0: 13 f6 33 00  	andi	a2, t2, 3
802022b4: 0e 06        	slli	a2, a2, 3
802022b6: 83 b6 0e 00  	ld	a3, 0(t4)
802022ba: a1 0e        	addi	t4, t4, 8
802022bc: 13 c7 f6 ff  	not	a4, a3
802022c0: 1d 83        	srli	a4, a4, 7
802022c2: 99 82        	srli	a3, a3, 6
802022c4: d9 8e        	or	a3, a3, a4
802022c6: b3 f6 e6 01  	and	a3, a3, t5
802022ca: 61 16        	addi	a2, a2, -8
802022cc: b6 95        	add	a1, a1, a3
802022ce: 65 f6        	bnez	a2, 0x802022b6 <.LBB292_28+0xdc>
802022d0: 11 a0        	j	0x802022d4 <.LBB292_28+0xfa>
802022d2: 81 45        	li	a1, 0
802022d4: 33 f6 15 01  	and	a2, a1, a7
802022d8: a1 81        	srli	a1, a1, 8
802022da: b3 f5 15 01  	and	a1, a1, a7
802022de: b2 95        	add	a1, a1, a2
802022e0: b3 85 05 03  	mul	a1, a1, a6
802022e4: c1 91        	srli	a1, a1, 48
802022e6: 2e 95        	add	a0, a0, a1
802022e8: 82 80        	ret

00000000802022ea <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
802022ea: 39 71        	addi	sp, sp, -64
802022ec: 06 fc        	sd	ra, 56(sp)
802022ee: 22 f8        	sd	s0, 48(sp)
802022f0: 26 f4        	sd	s1, 40(sp)
802022f2: 32 88        	mv	a6, a2
802022f4: 93 56 45 00  	srli	a3, a0, 4
802022f8: 13 07 70 02  	li	a4, 39
802022fc: 93 07 10 27  	li	a5, 625

0000000080202300 <.LBB580_10>:
80202300: 97 1e 00 00  	auipc	t4, 1
80202304: 93 8e 8e 31  	addi	t4, t4, 792
80202308: 63 f3 f6 02  	bgeu	a3, a5, 0x8020232e <.LBB580_10+0x2e>
8020230c: 93 06 30 06  	li	a3, 99
80202310: 63 e9 a6 0a  	bltu	a3, a0, 0x802023c2 <.LBB580_11+0x92>
80202314: 29 46        	li	a2, 10
80202316: 63 77 c5 0e  	bgeu	a0, a2, 0x80202404 <.LBB580_11+0xd4>
8020231a: 93 06 f7 ff  	addi	a3, a4, -1
8020231e: 13 06 11 00  	addi	a2, sp, 1
80202322: 36 96        	add	a2, a2, a3
80202324: 1b 05 05 03  	addiw	a0, a0, 48
80202328: 23 00 a6 00  	sb	a0, 0(a2)
8020232c: dd a8        	j	0x80202422 <.LBB580_11+0xf2>
8020232e: 01 47        	li	a4, 0

0000000080202330 <.LBB580_11>:
80202330: 97 26 00 00  	auipc	a3, 2
80202334: 93 86 86 f2  	addi	a3, a3, -216
80202338: 83 b8 06 00  	ld	a7, 0(a3)
8020233c: 89 66        	lui	a3, 2
8020233e: 9b 83 06 71  	addiw	t2, a3, 1808
80202342: 85 66        	lui	a3, 1
80202344: 1b 8e b6 47  	addiw	t3, a3, 1147
80202348: 93 02 40 06  	li	t0, 100
8020234c: 13 03 11 00  	addi	t1, sp, 1
80202350: b7 e6 f5 05  	lui	a3, 24414
80202354: 1b 8f f6 0f  	addiw	t5, a3, 255
80202358: aa 87        	mv	a5, a0
8020235a: 33 35 15 03  	mulhu	a0, a0, a7
8020235e: 2d 81        	srli	a0, a0, 11
80202360: 3b 06 75 02  	mulw	a2, a0, t2
80202364: 3b 86 c7 40  	subw	a2, a5, a2
80202368: 93 16 06 03  	slli	a3, a2, 48
8020236c: c9 92        	srli	a3, a3, 50
8020236e: b3 86 c6 03  	mul	a3, a3, t3
80202372: 93 df 16 01  	srli	t6, a3, 17
80202376: c1 82        	srli	a3, a3, 16
80202378: 13 f4 e6 7f  	andi	s0, a3, 2046
8020237c: bb 86 5f 02  	mulw	a3, t6, t0
80202380: 15 9e        	subw	a2, a2, a3
80202382: 46 16        	slli	a2, a2, 49
80202384: 41 92        	srli	a2, a2, 48
80202386: b3 86 8e 00  	add	a3, t4, s0
8020238a: 33 04 e3 00  	add	s0, t1, a4
8020238e: 83 cf 06 00  	lbu	t6, 0(a3)
80202392: 83 86 16 00  	lb	a3, 1(a3)
80202396: 76 96        	add	a2, a2, t4
80202398: 83 04 16 00  	lb	s1, 1(a2)
8020239c: 03 46 06 00  	lbu	a2, 0(a2)
802023a0: 23 02 d4 02  	sb	a3, 36(s0)
802023a4: a3 01 f4 03  	sb	t6, 35(s0)
802023a8: 23 03 94 02  	sb	s1, 38(s0)
802023ac: a3 02 c4 02  	sb	a2, 37(s0)
802023b0: 71 17        	addi	a4, a4, -4
802023b2: e3 63 ff fa  	bltu	t5, a5, 0x80202358 <.LBB580_11+0x28>
802023b6: 13 07 77 02  	addi	a4, a4, 39
802023ba: 93 06 30 06  	li	a3, 99
802023be: e3 fb a6 f4  	bgeu	a3, a0, 0x80202314 <.LBB580_10+0x14>
802023c2: 13 16 05 03  	slli	a2, a0, 48
802023c6: 49 92        	srli	a2, a2, 50
802023c8: 85 66        	lui	a3, 1
802023ca: 9b 86 b6 47  	addiw	a3, a3, 1147
802023ce: 33 06 d6 02  	mul	a2, a2, a3
802023d2: 45 82        	srli	a2, a2, 17
802023d4: 93 06 40 06  	li	a3, 100
802023d8: bb 06 d6 02  	mulw	a3, a2, a3
802023dc: 15 9d        	subw	a0, a0, a3
802023de: 46 15        	slli	a0, a0, 49
802023e0: 41 91        	srli	a0, a0, 48
802023e2: 79 17        	addi	a4, a4, -2
802023e4: 76 95        	add	a0, a0, t4
802023e6: 83 06 15 00  	lb	a3, 1(a0)
802023ea: 03 45 05 00  	lbu	a0, 0(a0)
802023ee: 93 07 11 00  	addi	a5, sp, 1
802023f2: ba 97        	add	a5, a5, a4
802023f4: a3 80 d7 00  	sb	a3, 1(a5)
802023f8: 23 80 a7 00  	sb	a0, 0(a5)
802023fc: 32 85        	mv	a0, a2
802023fe: 29 46        	li	a2, 10
80202400: e3 6d c5 f0  	bltu	a0, a2, 0x8020231a <.LBB580_10+0x1a>
80202404: 06 05        	slli	a0, a0, 1
80202406: 93 06 e7 ff  	addi	a3, a4, -2
8020240a: 76 95        	add	a0, a0, t4
8020240c: 03 06 15 00  	lb	a2, 1(a0)
80202410: 03 45 05 00  	lbu	a0, 0(a0)
80202414: 13 07 11 00  	addi	a4, sp, 1
80202418: 36 97        	add	a4, a4, a3
8020241a: a3 00 c7 00  	sb	a2, 1(a4)
8020241e: 23 00 a7 00  	sb	a0, 0(a4)
80202422: 13 05 11 00  	addi	a0, sp, 1
80202426: 33 07 d5 00  	add	a4, a0, a3
8020242a: 13 05 70 02  	li	a0, 39
8020242e: b3 07 d5 40  	sub	a5, a0, a3

0000000080202432 <.LBB580_12>:
80202432: 17 16 00 00  	auipc	a2, 1
80202436: 13 06 66 14  	addi	a2, a2, 326
8020243a: 42 85        	mv	a0, a6
8020243c: 81 46        	li	a3, 0
8020243e: 97 00 00 00  	auipc	ra, 0
80202442: e7 80 e0 82  	jalr	-2002(ra)
80202446: e2 70        	ld	ra, 56(sp)
80202448: 42 74        	ld	s0, 48(sp)
8020244a: a2 74        	ld	s1, 40(sp)
8020244c: 21 61        	addi	sp, sp, 64
8020244e: 82 80        	ret

0000000080202450 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80202450: 03 65 05 00  	lwu	a0, 0(a0)
80202454: 2e 86        	mv	a2, a1
80202456: 85 45        	li	a1, 1
80202458: 17 03 00 00  	auipc	t1, 0
8020245c: 67 00 23 e9  	jr	-366(t1)

0000000080202460 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80202460: 08 61        	ld	a0, 0(a0)
80202462: 2e 86        	mv	a2, a1
80202464: 85 45        	li	a1, 1
80202466: 17 03 00 00  	auipc	t1, 0
8020246a: 67 00 43 e8  	jr	-380(t1)

000000008020246e <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
8020246e: 90 65        	ld	a2, 8(a1)
80202470: 88 61        	ld	a0, 0(a1)
80202472: 1c 6e        	ld	a5, 24(a2)

0000000080202474 <.LBB612_1>:
80202474: 97 15 00 00  	auipc	a1, 1
80202478: 93 85 c5 26  	addi	a1, a1, 620
8020247c: 15 46        	li	a2, 5
8020247e: 82 87        	jr	a5

0000000080202480 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80202480: 10 65        	ld	a2, 8(a0)
80202482: 08 61        	ld	a0, 0(a0)
80202484: 1c 6e        	ld	a5, 24(a2)
80202486: 82 87        	jr	a5

0000000080202488 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80202488: 14 61        	ld	a3, 0(a0)
8020248a: 10 65        	ld	a2, 8(a0)
8020248c: 2e 85        	mv	a0, a1
8020248e: b6 85        	mv	a1, a3
80202490: 17 03 00 00  	auipc	t1, 0
80202494: 67 00 03 a5  	jr	-1456(t1)

0000000080202498 <memset>:
80202498: 17 03 00 00  	auipc	t1, 0
8020249c: 67 00 83 00  	jr	8(t1)

00000000802024a0 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
802024a0: bd 46        	li	a3, 15
802024a2: 63 fa c6 04  	bgeu	a3, a2, 0x802024f6 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
802024a6: bb 06 a0 40  	negw	a3, a0
802024aa: 9d 8a        	andi	a3, a3, 7
802024ac: 33 07 d5 00  	add	a4, a0, a3
802024b0: 99 c6        	beqz	a3, 0x802024be <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
802024b2: aa 87        	mv	a5, a0
802024b4: 23 80 b7 00  	sb	a1, 0(a5)
802024b8: 85 07        	addi	a5, a5, 1
802024ba: e3 ed e7 fe  	bltu	a5, a4, 0x802024b4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
802024be: b3 08 d6 40  	sub	a7, a2, a3
802024c2: 93 f7 88 ff  	andi	a5, a7, -8
802024c6: b3 06 f7 00  	add	a3, a4, a5
802024ca: 63 52 f0 02  	blez	a5, 0x802024ee <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
802024ce: 13 98 85 03  	slli	a6, a1, 56
802024d2: b7 17 10 10  	lui	a5, 65793
802024d6: 92 07        	slli	a5, a5, 4
802024d8: 93 87 07 10  	addi	a5, a5, 256
802024dc: b3 37 f8 02  	mulhu	a5, a6, a5
802024e0: 13 96 07 02  	slli	a2, a5, 32
802024e4: d1 8f        	or	a5, a5, a2
802024e6: 1c e3        	sd	a5, 0(a4)
802024e8: 21 07        	addi	a4, a4, 8
802024ea: e3 6e d7 fe  	bltu	a4, a3, 0x802024e6 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
802024ee: 13 f6 78 00  	andi	a2, a7, 7
802024f2: 01 e6        	bnez	a2, 0x802024fa <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
802024f4: 09 a8        	j	0x80202506 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802024f6: aa 86        	mv	a3, a0
802024f8: 19 c6        	beqz	a2, 0x80202506 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802024fa: 36 96        	add	a2, a2, a3
802024fc: 23 80 b6 00  	sb	a1, 0(a3)
80202500: 85 06        	addi	a3, a3, 1
80202502: e3 ed c6 fe  	bltu	a3, a2, 0x802024fc <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80202506: 82 80        	ret
