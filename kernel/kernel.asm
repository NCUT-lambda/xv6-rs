
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 20 e3  	jalr	-462(ra)
		...

0000000080201000 <user_trap>:
80201000: 73 10 05 14  	csrw	sscratch, a0
80201004: 37 05 00 02  	lui	a0, 8192
80201008: 7d 35        	addiw	a0, a0, -1
8020100a: 36 05        	slli	a0, a0, 13
8020100c: 23 34 15 00  	sd	ra, 8(a0)
80201010: 23 38 25 00  	sd	sp, 16(a0)
80201014: 23 3c 35 00  	sd	gp, 24(a0)
80201018: 23 30 45 02  	sd	tp, 32(a0)
8020101c: 23 34 55 02  	sd	t0, 40(a0)
80201020: 23 38 65 02  	sd	t1, 48(a0)
80201024: 23 3c 75 02  	sd	t2, 56(a0)
80201028: 20 e1        	sd	s0, 64(a0)
8020102a: 24 e5        	sd	s1, 72(a0)
8020102c: 28 e9        	sd	a0, 80(a0)
8020102e: 2c ed        	sd	a1, 88(a0)
80201030: 30 f1        	sd	a2, 96(a0)
80201032: 34 f5        	sd	a3, 104(a0)
80201034: 38 f9        	sd	a4, 112(a0)
80201036: 3c fd        	sd	a5, 120(a0)
80201038: 23 30 05 09  	sd	a6, 128(a0)
8020103c: 23 34 15 09  	sd	a7, 136(a0)
80201040: 23 38 25 09  	sd	s2, 144(a0)
80201044: 23 3c 35 09  	sd	s3, 152(a0)
80201048: 23 30 45 0b  	sd	s4, 160(a0)
8020104c: 23 34 55 0b  	sd	s5, 168(a0)
80201050: 23 38 65 0b  	sd	s6, 176(a0)
80201054: 23 3c 75 0b  	sd	s7, 184(a0)
80201058: 23 30 85 0d  	sd	s8, 192(a0)
8020105c: 23 34 95 0d  	sd	s9, 200(a0)
80201060: 23 38 a5 0d  	sd	s10, 208(a0)
80201064: 23 3c b5 0d  	sd	s11, 216(a0)
80201068: 23 30 c5 0f  	sd	t3, 224(a0)
8020106c: 23 34 d5 0f  	sd	t4, 232(a0)
80201070: 23 38 e5 0f  	sd	t5, 240(a0)
80201074: 23 3c f5 0f  	sd	t6, 248(a0)
80201078: f3 22 00 14  	csrr	t0, sscratch
8020107c: 23 38 55 04  	sd	t0, 80(a0)
80201080: 03 31 85 10  	ld	sp, 264(a0)
80201084: 03 32 05 12  	ld	tp, 288(a0)
80201088: 83 32 05 11  	ld	t0, 272(a0)
8020108c: 03 33 05 10  	ld	t1, 256(a0)
80201090: 73 00 00 12  	sfence.vma
80201094: 73 10 03 18  	csrw	satp, t1
80201098: 73 00 00 12  	sfence.vma
8020109c: 82 82        	jr	t0

000000008020109e <user_return>:
8020109e: 73 00 00 12  	sfence.vma
802010a2: 73 10 05 18  	csrw	satp, a0
802010a6: 73 00 00 12  	sfence.vma
802010aa: 37 05 00 02  	lui	a0, 8192
802010ae: 7d 35        	addiw	a0, a0, -1
802010b0: 36 05        	slli	a0, a0, 13
802010b2: 83 30 85 00  	ld	ra, 8(a0)
802010b6: 03 31 05 01  	ld	sp, 16(a0)
802010ba: 83 31 85 01  	ld	gp, 24(a0)
802010be: 03 32 05 02  	ld	tp, 32(a0)
802010c2: 83 32 85 02  	ld	t0, 40(a0)
802010c6: 03 33 05 03  	ld	t1, 48(a0)
802010ca: 83 33 85 03  	ld	t2, 56(a0)
802010ce: 20 61        	ld	s0, 64(a0)
802010d0: 24 65        	ld	s1, 72(a0)
802010d2: 2c 6d        	ld	a1, 88(a0)
802010d4: 30 71        	ld	a2, 96(a0)
802010d6: 34 75        	ld	a3, 104(a0)
802010d8: 38 79        	ld	a4, 112(a0)
802010da: 3c 7d        	ld	a5, 120(a0)
802010dc: 03 38 05 08  	ld	a6, 128(a0)
802010e0: 83 38 85 08  	ld	a7, 136(a0)
802010e4: 03 39 05 09  	ld	s2, 144(a0)
802010e8: 83 39 85 09  	ld	s3, 152(a0)
802010ec: 03 3a 05 0a  	ld	s4, 160(a0)
802010f0: 83 3a 85 0a  	ld	s5, 168(a0)
802010f4: 03 3b 05 0b  	ld	s6, 176(a0)
802010f8: 83 3b 85 0b  	ld	s7, 184(a0)
802010fc: 03 3c 05 0c  	ld	s8, 192(a0)
80201100: 83 3c 85 0c  	ld	s9, 200(a0)
80201104: 03 3d 05 0d  	ld	s10, 208(a0)
80201108: 83 3d 85 0d  	ld	s11, 216(a0)
8020110c: 03 3e 05 0e  	ld	t3, 224(a0)
80201110: 83 3e 85 0e  	ld	t4, 232(a0)
80201114: 03 3f 05 0f  	ld	t5, 240(a0)
80201118: 83 3f 85 0f  	ld	t6, 248(a0)
8020111c: 28 69        	ld	a0, 80(a0)
8020111e: 73 00 20 10  	sret	
80201122: 13 00 00 00  	nop
80201126: 13 00 00 00  	nop
8020112a: 13 00 00 00  	nop
8020112e: 01 00        	nop

0000000080201130 <kernelvec>:
80201130: 11 71        	addi	sp, sp, -256
80201132: 06 e4        	sd	ra, 8(sp)
80201134: 0a e8        	sd	sp, 16(sp)
80201136: 0e ec        	sd	gp, 24(sp)
80201138: 12 f0        	sd	tp, 32(sp)
8020113a: 16 f4        	sd	t0, 40(sp)
8020113c: 1a f8        	sd	t1, 48(sp)
8020113e: 1e fc        	sd	t2, 56(sp)
80201140: a2 e0        	sd	s0, 64(sp)
80201142: a6 e4        	sd	s1, 72(sp)
80201144: aa e8        	sd	a0, 80(sp)
80201146: ae ec        	sd	a1, 88(sp)
80201148: b2 f0        	sd	a2, 96(sp)
8020114a: b6 f4        	sd	a3, 104(sp)
8020114c: ba f8        	sd	a4, 112(sp)
8020114e: be fc        	sd	a5, 120(sp)
80201150: 42 e1        	sd	a6, 128(sp)
80201152: 46 e5        	sd	a7, 136(sp)
80201154: 4a e9        	sd	s2, 144(sp)
80201156: 4e ed        	sd	s3, 152(sp)
80201158: 52 f1        	sd	s4, 160(sp)
8020115a: 56 f5        	sd	s5, 168(sp)
8020115c: 5a f9        	sd	s6, 176(sp)
8020115e: 5e fd        	sd	s7, 184(sp)
80201160: e2 e1        	sd	s8, 192(sp)
80201162: e6 e5        	sd	s9, 200(sp)
80201164: ea e9        	sd	s10, 208(sp)
80201166: ee ed        	sd	s11, 216(sp)
80201168: f2 f1        	sd	t3, 224(sp)
8020116a: f6 f5        	sd	t4, 232(sp)
8020116c: fa f9        	sd	t5, 240(sp)
8020116e: fe fd        	sd	t6, 248(sp)
80201170: 97 10 00 00  	auipc	ra, 1
80201174: e7 80 00 6f  	jalr	1776(ra)
80201178: a2 60        	ld	ra, 8(sp)
8020117a: 42 61        	ld	sp, 16(sp)
8020117c: e2 61        	ld	gp, 24(sp)
8020117e: a2 72        	ld	t0, 40(sp)
80201180: 42 73        	ld	t1, 48(sp)
80201182: e2 73        	ld	t2, 56(sp)
80201184: 06 64        	ld	s0, 64(sp)
80201186: a6 64        	ld	s1, 72(sp)
80201188: 46 65        	ld	a0, 80(sp)
8020118a: e6 65        	ld	a1, 88(sp)
8020118c: 06 76        	ld	a2, 96(sp)
8020118e: a6 76        	ld	a3, 104(sp)
80201190: 46 77        	ld	a4, 112(sp)
80201192: e6 77        	ld	a5, 120(sp)
80201194: 0a 68        	ld	a6, 128(sp)
80201196: aa 68        	ld	a7, 136(sp)
80201198: 4a 69        	ld	s2, 144(sp)
8020119a: ea 69        	ld	s3, 152(sp)
8020119c: 0a 7a        	ld	s4, 160(sp)
8020119e: aa 7a        	ld	s5, 168(sp)
802011a0: 4a 7b        	ld	s6, 176(sp)
802011a2: ea 7b        	ld	s7, 184(sp)
802011a4: 0e 6c        	ld	s8, 192(sp)
802011a6: ae 6c        	ld	s9, 200(sp)
802011a8: 4e 6d        	ld	s10, 208(sp)
802011aa: ee 6d        	ld	s11, 216(sp)
802011ac: 0e 7e        	ld	t3, 224(sp)
802011ae: ae 7e        	ld	t4, 232(sp)
802011b0: 4e 7f        	ld	t5, 240(sp)
802011b2: ee 7f        	ld	t6, 248(sp)
802011b4: 73 00 20 10  	sret	
802011b8: 13 00 00 00  	nop
802011bc: 13 00 00 00  	nop

00000000802011c0 <timervec>:
		...

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202000: 13 01 01 81  	addi	sp, sp, -2032
80202004: 23 34 11 7e  	sd	ra, 2024(sp)
80202008: 23 30 81 7e  	sd	s0, 2016(sp)
8020200c: 23 3c 91 7c  	sd	s1, 2008(sp)
80202010: 23 38 21 7d  	sd	s2, 2000(sp)
80202014: 13 04 01 7f  	addi	s0, sp, 2032
80202018: 13 01 01 bb  	addi	sp, sp, -1104
8020201c: aa 84        	mv	s1, a0
8020201e: 0f 00 30 03  	fence	rw, rw
80202022: 08 61        	ld	a0, 0(a0)
80202024: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202028: 4d e5        	bnez	a0, 0x802020d2 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0xd2>
8020202a: 85 45        	li	a1, 1
8020202c: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80202030: 01 e5        	bnez	a0, 0x80202038 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0x38>
80202032: 2f b6 b4 1e  	sc.d.aqrl	a2, a1, (s1)
80202036: 7d fa        	bnez	a2, 0x8020202c <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0x2c>
;             if status == INCOMPLETE { // We init
80202038: 49 ed        	bnez	a0, 0x802020d2 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0xd2>
8020203a: 81 46        	li	a3, 0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020203c: 7d 75        	lui	a0, 1048575
8020203e: 1b 05 05 3c  	addiw	a0, a0, 960
80202042: 22 95        	add	a0, a0, s0
80202044: 04 e1        	sd	s1, 0(a0)
;         Self {
80202046: 23 38 04 fc  	sd	zero, -48(s0)
8020204a: 61 45        	li	a0, 24
8020204c: 93 05 04 9d  	addi	a1, s0, -1584
80202050: 13 06 00 04  	li	a2, 64
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80202054: b3 86 a6 02  	mul	a3, a3, a0
80202058: ae 96        	add	a3, a3, a1
8020205a: 23 88 06 00  	sb	zero, 16(a3)
8020205e: 23 b4 06 00  	sd	zero, 8(a3)
80202062: 23 b0 06 00  	sd	zero, 0(a3)
80202066: 83 36 04 fd  	ld	a3, -48(s0)
8020206a: 85 06        	addi	a3, a3, 1
8020206c: 23 38 d4 fc  	sd	a3, -48(s0)
80202070: e3 e2 c6 fe  	bltu	a3, a2, 0x80202054 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0x54>
80202074: 7d 75        	lui	a0, 1048575
80202076: 1b 05 05 3d  	addiw	a0, a0, 976
8020207a: 22 95        	add	a0, a0, s0
8020207c: 93 05 04 9d  	addi	a1, s0, -1584
80202080: 13 06 00 60  	li	a2, 1536
80202084: 97 20 00 00  	auipc	ra, 2
80202088: e7 80 00 61  	jalr	1552(ra)
8020208c: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
8020208e: 88 e4        	sd	a0, 8(s1)
80202090: 13 89 04 01  	addi	s2, s1, 16
80202094: 7d 75        	lui	a0, 1048575
80202096: 1b 05 05 3d  	addiw	a0, a0, 976
8020209a: b3 05 a4 00  	add	a1, s0, a0
8020209e: 13 06 00 60  	li	a2, 1536
802020a2: 4a 85        	mv	a0, s2
802020a4: 97 20 00 00  	auipc	ra, 2
802020a8: e7 80 00 5f  	jalr	1520(ra)
;                 finish.panicked = false;
802020ac: 7d 75        	lui	a0, 1048575
802020ae: 1b 05 85 3c  	addiw	a0, a0, 968
802020b2: 22 95        	add	a0, a0, s0
802020b4: 23 00 05 00  	sb	zero, 0(a0)
802020b8: 0f 00 10 03  	fence	rw, w
802020bc: 09 45        	li	a0, 2
802020be: 88 e0        	sd	a0, 0(s1)
802020c0: 7d 75        	lui	a0, 1048575
802020c2: 1b 05 05 3c  	addiw	a0, a0, 960
802020c6: 22 95        	add	a0, a0, s0
802020c8: 97 10 00 00  	auipc	ra, 1
802020cc: e7 80 80 79  	jalr	1944(ra)
802020d0: 15 a0        	j	0x802020f4 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0xf4>
802020d2: 85 45        	li	a1, 1
;             match status {
802020d4: 63 1b b5 00  	bne	a0, a1, 0x802020ea <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0xea>
802020d8: 0f 00 00 01  	fence	w, 0
802020dc: 0f 00 30 03  	fence	rw, rw
802020e0: 88 60        	ld	a0, 0(s1)
802020e2: 0f 00 30 02  	fence	r, rw
;             match status {
802020e6: e3 09 b5 fe  	beq	a0, a1, 0x802020d8 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0xd8>
802020ea: 89 45        	li	a1, 2
;             match status {
802020ec: 63 12 b5 02  	bne	a0, a1, 0x80202110 <_ZN4spin4once13Once$LT$T$GT$9call_once17h7c15f7dcaff7f6e5E+0x110>
802020f0: 13 89 04 01  	addi	s2, s1, 16
;     }
802020f4: 4a 85        	mv	a0, s2
802020f6: 13 01 01 45  	addi	sp, sp, 1104
802020fa: 83 30 81 7e  	ld	ra, 2024(sp)
802020fe: 03 34 01 7e  	ld	s0, 2016(sp)
80202102: 83 34 81 7d  	ld	s1, 2008(sp)
80202106: 03 39 01 7d  	ld	s2, 2000(sp)
8020210a: 13 01 01 7f  	addi	sp, sp, 2032
8020210e: 82 80        	ret
;             match status {
80202110: 05 e1        	bnez	a0, 0x80202130 <.LBB1_15>

0000000080202112 <.LBB1_13>:
;                 INCOMPLETE => unreachable!(),
80202112: 17 35 00 00  	auipc	a0, 3
80202116: 13 05 65 f7  	addi	a0, a0, -138

000000008020211a <.LBB1_14>:
8020211a: 17 36 00 00  	auipc	a2, 3
8020211e: 13 06 66 f9  	addi	a2, a2, -106
80202122: 93 05 80 02  	li	a1, 40
80202126: 97 20 00 00  	auipc	ra, 2
8020212a: e7 80 e0 9a  	jalr	-1618(ra)
8020212e: 00 00        	unimp	

0000000080202130 <.LBB1_15>:
;                 PANICKED => panic!("Once has panicked"),
80202130: 17 35 00 00  	auipc	a0, 3
80202134: 13 05 05 ed  	addi	a0, a0, -304

0000000080202138 <.LBB1_16>:
80202138: 17 36 00 00  	auipc	a2, 3
8020213c: 13 06 86 f3  	addi	a2, a2, -200
80202140: c5 45        	li	a1, 17
80202142: 97 20 00 00  	auipc	ra, 2
80202146: e7 80 20 99  	jalr	-1646(ra)
8020214a: 00 00        	unimp	

000000008020214c <_ZN4spin4once13Once$LT$T$GT$9call_once17ha414ee6074fe6bc0E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
8020214c: 13 01 01 81  	addi	sp, sp, -2032
80202150: 23 34 11 7e  	sd	ra, 2024(sp)
80202154: 23 30 81 7e  	sd	s0, 2016(sp)
80202158: 23 3c 91 7c  	sd	s1, 2008(sp)
8020215c: 23 38 21 7d  	sd	s2, 2000(sp)
80202160: 23 34 31 7d  	sd	s3, 1992(sp)
80202164: 23 30 41 7d  	sd	s4, 1984(sp)
80202168: 23 3c 51 7b  	sd	s5, 1976(sp)
8020216c: 23 38 61 7b  	sd	s6, 1968(sp)
80202170: 23 34 71 7b  	sd	s7, 1960(sp)
80202174: 23 30 81 7b  	sd	s8, 1952(sp)
80202178: 23 3c 91 79  	sd	s9, 1944(sp)
8020217c: 23 38 a1 79  	sd	s10, 1936(sp)
80202180: 13 04 01 7f  	addi	s0, sp, 2032
80202184: a1 65        	lui	a1, 8
80202186: 9b 85 05 c9  	addiw	a1, a1, -880
8020218a: 33 01 b1 40  	sub	sp, sp, a1
8020218e: 2a 8a        	mv	s4, a0
80202190: 0f 00 30 03  	fence	rw, rw
80202194: 08 61        	ld	a0, 0(a0)
80202196: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020219a: 63 1f 05 10  	bnez	a0, 0x802022b8 <.LBB3_18+0xc8>
8020219e: 85 49        	li	s3, 1
802021a0: 2f 35 0a 16  	lr.d.aqrl	a0, (s4)
802021a4: 01 e5        	bnez	a0, 0x802021ac <_ZN4spin4once13Once$LT$T$GT$9call_once17ha414ee6074fe6bc0E+0x60>
802021a6: af 35 3a 1f  	sc.d.aqrl	a1, s3, (s4)
802021aa: fd f9        	bnez	a1, 0x802021a0 <_ZN4spin4once13Once$LT$T$GT$9call_once17ha414ee6074fe6bc0E+0x54>
;             if status == INCOMPLETE { // We init
802021ac: 63 16 05 10  	bnez	a0, 0x802022b8 <.LBB3_18+0xc8>
802021b0: 81 44        	li	s1, 0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802021b2: 61 75        	lui	a0, 1048568
802021b4: 1b 05 05 b8  	addiw	a0, a0, -1152
802021b8: 22 95        	add	a0, a0, s0
802021ba: 23 30 45 01  	sd	s4, 0(a0)
802021be: 61 75        	lui	a0, 1048568
802021c0: 1b 05 85 b8  	addiw	a0, a0, -1144
802021c4: 22 95        	add	a0, a0, s0
802021c6: 23 00 35 01  	sb	s3, 0(a0)
802021ca: 11 65        	lui	a0, 4
802021cc: 1b 05 05 20  	addiw	a0, a0, 512
802021d0: f1 75        	lui	a1, 1048572
802021d2: 9b 85 05 d9  	addiw	a1, a1, -624
802021d6: b3 0a b4 00  	add	s5, s0, a1
;         Self {
802021da: 33 8b aa 00  	add	s6, s5, a0
802021de: 23 30 0b 00  	sd	zero, 0(s6)
802021e2: 61 75        	lui	a0, 1048568
802021e4: 1b 05 75 b9  	addiw	a0, a0, -1129
802021e8: 33 09 a4 00  	add	s2, s0, a0
802021ec: 93 0b 80 10  	li	s7, 264

00000000802021f0 <.LBB3_18>:
802021f0: 17 3c 00 00  	auipc	s8, 3
802021f4: 13 0c 8c ed  	addi	s8, s8, -296
802021f8: 91 4c        	li	s9, 4
802021fa: 13 0d 00 04  	li	s10, 64
;         Self {
802021fe: 13 06 00 05  	li	a2, 80
80202202: 4a 85        	mv	a0, s2
80202204: 81 45        	li	a1, 0
80202206: 97 20 00 00  	auipc	ra, 2
8020220a: e7 80 00 37  	jalr	880(ra)
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
8020220e: 33 85 74 03  	mul	a0, s1, s7
80202212: b3 84 aa 00  	add	s1, s5, a0
80202216: 13 06 00 08  	li	a2, 128
8020221a: 26 85        	mv	a0, s1
8020221c: 81 45        	li	a1, 0
8020221e: 97 20 00 00  	auipc	ra, 2
80202222: e7 80 80 35  	jalr	856(ra)
80202226: 23 b0 84 09  	sd	s8, 128(s1)
8020222a: 23 b4 94 09  	sd	s9, 136(s1)
8020222e: 23 b8 04 08  	sd	zero, 144(s1)
80202232: 23 8c 04 08  	sb	zero, 152(s1)
80202236: 13 85 94 09  	addi	a0, s1, 153
8020223a: e1 75        	lui	a1, 1048568
8020223c: 9b 85 05 b9  	addiw	a1, a1, -1136
80202240: a2 95        	add	a1, a1, s0
80202242: 13 06 70 05  	li	a2, 87
80202246: 97 20 00 00  	auipc	ra, 2
8020224a: e7 80 e0 44  	jalr	1102(ra)
8020224e: 23 b8 34 0f  	sd	s3, 240(s1)
80202252: 23 bc 04 0e  	sd	zero, 248(s1)
80202256: 23 90 04 10  	sh	zero, 256(s1)
8020225a: 03 35 0b 00  	ld	a0, 0(s6)
8020225e: 93 04 15 00  	addi	s1, a0, 1
80202262: 23 30 9b 00  	sd	s1, 0(s6)
80202266: e3 ec a4 f9  	bltu	s1, s10, 0x802021fe <.LBB3_18+0xe>
8020226a: 11 65        	lui	a0, 4
8020226c: 1b 09 05 20  	addiw	s2, a0, 512
80202270: 61 75        	lui	a0, 1048568
80202272: 1b 05 05 b9  	addiw	a0, a0, -1136
80202276: 22 95        	add	a0, a0, s0
80202278: f1 75        	lui	a1, 1048572
8020227a: 9b 85 05 d9  	addiw	a1, a1, -624
8020227e: a2 95        	add	a1, a1, s0
80202280: 4a 86        	mv	a2, s2
80202282: 97 20 00 00  	auipc	ra, 2
80202286: e7 80 20 41  	jalr	1042(ra)
8020228a: 03 35 8a 00  	ld	a0, 8(s4)
8020228e: 59 c5        	beqz	a0, 0x8020231c <.LBB3_18+0x12c>
80202290: 93 04 0a 10  	addi	s1, s4, 256
80202294: 93 09 00 04  	li	s3, 64
80202298: 31 a0        	j	0x802022a4 <.LBB3_18+0xb4>
8020229a: fd 19        	addi	s3, s3, -1
8020229c: 93 84 84 10  	addi	s1, s1, 264
802022a0: 63 8e 09 06  	beqz	s3, 0x8020231c <.LBB3_18+0x12c>
802022a4: 83 b5 84 ff  	ld	a1, -8(s1)
802022a8: ed d9        	beqz	a1, 0x8020229a <.LBB3_18+0xaa>
802022aa: 88 60        	ld	a0, 0(s1)
802022ac: 05 46        	li	a2, 1
802022ae: 97 10 00 00  	auipc	ra, 1
802022b2: e7 80 a0 5a  	jalr	1450(ra)
802022b6: d5 b7        	j	0x8020229a <.LBB3_18+0xaa>
802022b8: 85 45        	li	a1, 1
;             match status {
802022ba: 63 1c b5 00  	bne	a0, a1, 0x802022d2 <.LBB3_18+0xe2>
802022be: 0f 00 00 01  	fence	w, 0
802022c2: 0f 00 30 03  	fence	rw, rw
802022c6: 03 35 0a 00  	ld	a0, 0(s4)
802022ca: 0f 00 30 02  	fence	r, rw
;             match status {
802022ce: e3 08 b5 fe  	beq	a0, a1, 0x802022be <.LBB3_18+0xce>
802022d2: 89 45        	li	a1, 2
;             match status {
802022d4: 63 18 b5 08  	bne	a0, a1, 0x80202364 <.LBB3_18+0x174>
802022d8: 93 09 0a 01  	addi	s3, s4, 16
;     }
802022dc: 4e 85        	mv	a0, s3
802022de: a1 65        	lui	a1, 8
802022e0: 9b 85 05 c9  	addiw	a1, a1, -880
802022e4: 2e 91        	add	sp, sp, a1
802022e6: 83 30 81 7e  	ld	ra, 2024(sp)
802022ea: 03 34 01 7e  	ld	s0, 2016(sp)
802022ee: 83 34 81 7d  	ld	s1, 2008(sp)
802022f2: 03 39 01 7d  	ld	s2, 2000(sp)
802022f6: 83 39 81 7c  	ld	s3, 1992(sp)
802022fa: 03 3a 01 7c  	ld	s4, 1984(sp)
802022fe: 83 3a 81 7b  	ld	s5, 1976(sp)
80202302: 03 3b 01 7b  	ld	s6, 1968(sp)
80202306: 83 3b 81 7a  	ld	s7, 1960(sp)
8020230a: 03 3c 01 7a  	ld	s8, 1952(sp)
8020230e: 83 3c 81 79  	ld	s9, 1944(sp)
80202312: 03 3d 01 79  	ld	s10, 1936(sp)
80202316: 13 01 01 7f  	addi	sp, sp, 2032
8020231a: 82 80        	ret
8020231c: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
8020231e: 23 34 aa 00  	sd	a0, 8(s4)
80202322: 93 09 0a 01  	addi	s3, s4, 16
80202326: 61 75        	lui	a0, 1048568
80202328: 1b 05 05 b9  	addiw	a0, a0, -1136
8020232c: b3 05 a4 00  	add	a1, s0, a0
80202330: 4e 85        	mv	a0, s3
80202332: 4a 86        	mv	a2, s2
80202334: 97 20 00 00  	auipc	ra, 2
80202338: e7 80 00 36  	jalr	864(ra)
;                 finish.panicked = false;
8020233c: 61 75        	lui	a0, 1048568
8020233e: 1b 05 85 b8  	addiw	a0, a0, -1144
80202342: 22 95        	add	a0, a0, s0
80202344: 23 00 05 00  	sb	zero, 0(a0)
80202348: 0f 00 10 03  	fence	rw, w
8020234c: 09 45        	li	a0, 2
8020234e: 23 30 aa 00  	sd	a0, 0(s4)
80202352: 61 75        	lui	a0, 1048568
80202354: 1b 05 05 b8  	addiw	a0, a0, -1152
80202358: 22 95        	add	a0, a0, s0
8020235a: 97 10 00 00  	auipc	ra, 1
8020235e: e7 80 60 50  	jalr	1286(ra)
80202362: ad bf        	j	0x802022dc <.LBB3_18+0xec>
;             match status {
80202364: 05 e1        	bnez	a0, 0x80202384 <.LBB3_21>

0000000080202366 <.LBB3_19>:
;                 INCOMPLETE => unreachable!(),
80202366: 17 35 00 00  	auipc	a0, 3
8020236a: 13 05 25 d2  	addi	a0, a0, -734

000000008020236e <.LBB3_20>:
8020236e: 17 36 00 00  	auipc	a2, 3
80202372: 13 06 26 d4  	addi	a2, a2, -702
80202376: 93 05 80 02  	li	a1, 40
8020237a: 97 10 00 00  	auipc	ra, 1
8020237e: e7 80 a0 75  	jalr	1882(ra)
80202382: 00 00        	unimp	

0000000080202384 <.LBB3_21>:
;                 PANICKED => panic!("Once has panicked"),
80202384: 17 35 00 00  	auipc	a0, 3
80202388: 13 05 c5 c7  	addi	a0, a0, -900

000000008020238c <.LBB3_22>:
8020238c: 17 36 00 00  	auipc	a2, 3
80202390: 13 06 46 ce  	addi	a2, a2, -796
80202394: c5 45        	li	a1, 17
80202396: 97 10 00 00  	auipc	ra, 1
8020239a: e7 80 e0 73  	jalr	1854(ra)
8020239e: 00 00        	unimp	

00000000802023a0 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
802023a0: 35 71        	addi	sp, sp, -160
;         if size == 0 {
802023a2: 06 ed        	sd	ra, 152(sp)
802023a4: 22 e9        	sd	s0, 144(sp)
802023a6: 26 e5        	sd	s1, 136(sp)
802023a8: 4a e1        	sd	s2, 128(sp)
802023aa: ce fc        	sd	s3, 120(sp)
802023ac: d2 f8        	sd	s4, 112(sp)
802023ae: d6 f4        	sd	s5, 104(sp)
802023b0: da f0        	sd	s6, 96(sp)
802023b2: de ec        	sd	s7, 88(sp)
802023b4: e2 e8        	sd	s8, 80(sp)
802023b6: e6 e4        	sd	s9, 72(sp)
802023b8: ea e0        	sd	s10, 64(sp)
802023ba: 6e fc        	sd	s11, 56(sp)
802023bc: 00 11        	addi	s0, sp, 160
802023be: 63 04 06 18  	beqz	a2, 0x80202546 <.LBB2_26>
802023c2: 36 8a        	mv	s4, a3
802023c4: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
802023c6: b3 fa d5 00  	and	s5, a1, a3
;         let last = pgrounddown(va + size - 1);
802023ca: 2e 96        	add	a2, a2, a1
802023cc: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
802023ce: 33 7b d6 00  	and	s6, a2, a3
802023d2: 05 46        	li	a2, 1
;         while a <= last {
802023d4: 63 6d 5b 0d  	bltu	s6, s5, 0x802024ae <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x10e>
802023d8: 3a 89        	mv	s2, a4
802023da: 93 db 26 00  	srli	s7, a3, 2
802023de: 03 3c 05 00  	ld	s8, 0(a0)
;         while a <= last {
802023e2: 93 dc c5 00  	srli	s9, a1, 12
802023e6: 05 6d        	lui	s10, 1
802023e8: 9b 0d 8d ff  	addiw	s11, s10, -8
;         if va >= MAXVA {
802023ec: 13 d5 6a 02  	srli	a0, s5, 38
802023f0: 79 ed        	bnez	a0, 0x802024ce <.LBB2_20>
802023f2: 13 d5 ba 01  	srli	a0, s5, 27
802023f6: 61 99        	andi	a0, a0, -8
802023f8: b3 09 ac 00  	add	s3, s8, a0
;             if (*pte & PTE_V) != 0 {
802023fc: 03 b5 09 00  	ld	a0, 0(s3)
80202400: 93 75 15 00  	andi	a1, a0, 1
80202404: 95 e5        	bnez	a1, 0x80202430 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x90>
;                 let pa = kalloc();
80202406: 97 10 00 00  	auipc	ra, 1
8020240a: e7 80 80 85  	jalr	-1960(ra)
;                 if pa == 0 {
8020240e: 59 cd        	beqz	a0, 0x802024ac <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x10c>
80202410: aa 84        	mv	s1, a0
80202412: 05 66        	lui	a2, 1
80202414: 81 45        	li	a1, 0
80202416: 97 20 00 00  	auipc	ra, 2
8020241a: e7 80 00 16  	jalr	352(ra)
;     (pa >> 12) << 10
8020241e: 13 d5 24 00  	srli	a0, s1, 2
80202422: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
80202426: 13 65 15 00  	ori	a0, a0, 1
8020242a: 23 b0 a9 00  	sd	a0, 0(s3)
8020242e: 21 a0        	j	0x80202436 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x96>
;     (pte >> 10) << 12
80202430: 29 81        	srli	a0, a0, 10
80202432: 93 14 c5 00  	slli	s1, a0, 12
80202436: 13 d5 2a 01  	srli	a0, s5, 18
8020243a: 33 75 b5 01  	and	a0, a0, s11
8020243e: b3 89 a4 00  	add	s3, s1, a0
;             if (*pte & PTE_V) != 0 {
80202442: 03 b5 09 00  	ld	a0, 0(s3)
80202446: 93 75 15 00  	andi	a1, a0, 1
8020244a: 95 e5        	bnez	a1, 0x80202476 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0xd6>
;                 let pa = kalloc();
8020244c: 97 10 00 00  	auipc	ra, 1
80202450: e7 80 20 81  	jalr	-2030(ra)
;                 if pa == 0 {
80202454: 21 cd        	beqz	a0, 0x802024ac <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x10c>
80202456: aa 84        	mv	s1, a0
80202458: 05 66        	lui	a2, 1
8020245a: 81 45        	li	a1, 0
8020245c: 97 20 00 00  	auipc	ra, 2
80202460: e7 80 a0 11  	jalr	282(ra)
;     (pa >> 12) << 10
80202464: 13 d5 24 00  	srli	a0, s1, 2
80202468: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
8020246c: 13 65 15 00  	ori	a0, a0, 1
80202470: 23 b0 a9 00  	sd	a0, 0(s3)
80202474: 21 a0        	j	0x8020247c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0xdc>
;     (pte >> 10) << 12
80202476: 29 81        	srli	a0, a0, 10
80202478: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
8020247c: 13 f5 fc 1f  	andi	a0, s9, 511
80202480: 0e 05        	slli	a0, a0, 3
80202482: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
80202484: 83 45 05 00  	lbu	a1, 0(a0)
80202488: 85 89        	andi	a1, a1, 1
8020248a: c1 e1        	bnez	a1, 0x8020250a <.LBB2_23>
;     (pa >> 12) << 10
8020248c: 93 55 2a 00  	srli	a1, s4, 2
80202490: b3 f5 75 01  	and	a1, a1, s7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202494: b3 e5 25 01  	or	a1, a1, s2
80202498: 93 e5 15 00  	ori	a1, a1, 1
8020249c: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
8020249e: ea 9a        	add	s5, s5, s10
;             pa += PGSIZE;
802024a0: 6a 9a        	add	s4, s4, s10
;         while a <= last {
802024a2: 85 0c        	addi	s9, s9, 1
802024a4: e3 74 5b f5  	bgeu	s6, s5, 0x802023ec <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x4c>
802024a8: 05 46        	li	a2, 1
802024aa: 11 a0        	j	0x802024ae <_ZN6kernel6memory9pagetable10PagetableT8mappages17h5c76d8e4045b9976E+0x10e>
802024ac: 01 46        	li	a2, 0
;     }
802024ae: 32 85        	mv	a0, a2
802024b0: ea 60        	ld	ra, 152(sp)
802024b2: 4a 64        	ld	s0, 144(sp)
802024b4: aa 64        	ld	s1, 136(sp)
802024b6: 0a 69        	ld	s2, 128(sp)
802024b8: e6 79        	ld	s3, 120(sp)
802024ba: 46 7a        	ld	s4, 112(sp)
802024bc: a6 7a        	ld	s5, 104(sp)
802024be: 06 7b        	ld	s6, 96(sp)
802024c0: e6 6b        	ld	s7, 88(sp)
802024c2: 46 6c        	ld	s8, 80(sp)
802024c4: a6 6c        	ld	s9, 72(sp)
802024c6: 06 6d        	ld	s10, 64(sp)
802024c8: e2 7d        	ld	s11, 56(sp)
802024ca: 0d 61        	addi	sp, sp, 160
802024cc: 82 80        	ret

00000000802024ce <.LBB2_20>:
802024ce: 17 35 00 00  	auipc	a0, 3
802024d2: 13 05 a5 c0  	addi	a0, a0, -1014
802024d6: 23 3c a4 f6  	sd	a0, -136(s0)
802024da: 05 45        	li	a0, 1
802024dc: 23 30 a4 f8  	sd	a0, -128(s0)
802024e0: 23 34 04 f6  	sd	zero, -152(s0)

00000000802024e4 <.LBB2_21>:
802024e4: 17 35 00 00  	auipc	a0, 3
802024e8: 13 05 45 be  	addi	a0, a0, -1052
802024ec: 23 34 a4 f8  	sd	a0, -120(s0)
802024f0: 23 38 04 f8  	sd	zero, -112(s0)

00000000802024f4 <.LBB2_22>:
;             panic!("walk");
802024f4: 97 35 00 00  	auipc	a1, 3
802024f8: 93 85 c5 c0  	addi	a1, a1, -1012
802024fc: 13 05 84 f6  	addi	a0, s0, -152
80202500: 97 10 00 00  	auipc	ra, 1
80202504: e7 80 60 5a  	jalr	1446(ra)
80202508: 00 00        	unimp	

000000008020250a <.LBB2_23>:
8020250a: 17 35 00 00  	auipc	a0, 3
8020250e: 13 05 e5 c1  	addi	a0, a0, -994
80202512: 23 3c a4 f6  	sd	a0, -136(s0)
80202516: 05 45        	li	a0, 1
80202518: 23 30 a4 f8  	sd	a0, -128(s0)
8020251c: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202520 <.LBB2_24>:
80202520: 17 35 00 00  	auipc	a0, 3
80202524: 13 05 85 ba  	addi	a0, a0, -1112
80202528: 23 34 a4 f8  	sd	a0, -120(s0)
8020252c: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202530 <.LBB2_25>:
;                 panic!("mappages: remap");
80202530: 97 35 00 00  	auipc	a1, 3
80202534: 93 85 85 c0  	addi	a1, a1, -1016
80202538: 13 05 84 f6  	addi	a0, s0, -152
8020253c: 97 10 00 00  	auipc	ra, 1
80202540: e7 80 a0 56  	jalr	1386(ra)
80202544: 00 00        	unimp	

0000000080202546 <.LBB2_26>:
80202546: 17 35 00 00  	auipc	a0, 3
8020254a: 13 05 a5 c1  	addi	a0, a0, -998
8020254e: 23 3c a4 f6  	sd	a0, -136(s0)
80202552: 05 45        	li	a0, 1
80202554: 23 30 a4 f8  	sd	a0, -128(s0)
80202558: 23 34 04 f6  	sd	zero, -152(s0)

000000008020255c <.LBB2_27>:
8020255c: 17 35 00 00  	auipc	a0, 3
80202560: 13 05 c5 b6  	addi	a0, a0, -1172
80202564: 23 34 a4 f8  	sd	a0, -120(s0)
80202568: 23 38 04 f8  	sd	zero, -112(s0)

000000008020256c <.LBB2_28>:
;             panic!("mappages: size");
8020256c: 97 35 00 00  	auipc	a1, 3
80202570: 93 85 45 c0  	addi	a1, a1, -1020
80202574: 13 05 84 f6  	addi	a0, s0, -152
80202578: 97 10 00 00  	auipc	ra, 1
8020257c: e7 80 e0 52  	jalr	1326(ra)
80202580: 00 00        	unimp	

0000000080202582 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01404a8176509c97E>:
80202582: 41 11        	addi	sp, sp, -16
80202584: 06 e4        	sd	ra, 8(sp)
80202586: 22 e0        	sd	s0, 0(sp)
80202588: 00 08        	addi	s0, sp, 16
8020258a: 10 61        	ld	a2, 0(a0)
8020258c: 14 65        	ld	a3, 8(a0)
8020258e: 2e 87        	mv	a4, a1
80202590: 32 85        	mv	a0, a2
80202592: b6 85        	mv	a1, a3
80202594: 3a 86        	mv	a2, a4
80202596: a2 60        	ld	ra, 8(sp)
80202598: 02 64        	ld	s0, 0(sp)
8020259a: 41 01        	addi	sp, sp, 16
8020259c: 17 23 00 00  	auipc	t1, 2
802025a0: 67 00 63 c7  	jr	-906(t1)

00000000802025a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h24079b98717b7d77E>:
802025a4: 41 11        	addi	sp, sp, -16
802025a6: 06 e4        	sd	ra, 8(sp)
802025a8: 22 e0        	sd	s0, 0(sp)
802025aa: 00 08        	addi	s0, sp, 16
802025ac: 08 61        	ld	a0, 0(a0)
802025ae: a2 60        	ld	ra, 8(sp)
802025b0: 02 64        	ld	s0, 0(sp)
802025b2: 41 01        	addi	sp, sp, 16
802025b4: 17 13 00 00  	auipc	t1, 1
802025b8: 67 00 83 5d  	jr	1496(t1)

00000000802025bc <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
802025bc: 71 71        	addi	sp, sp, -176
802025be: 06 f5        	sd	ra, 168(sp)
802025c0: 22 f1        	sd	s0, 160(sp)
802025c2: 26 ed        	sd	s1, 152(sp)
802025c4: 00 19        	addi	s0, sp, 176
802025c6: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
802025c8: 97 10 00 00  	auipc	ra, 1
802025cc: e7 80 60 4d  	jalr	1238(ra)
802025d0: 05 e1        	bnez	a0, 0x802025f0 <.LBB0_8+0x16>

00000000802025d2 <.LBB0_7>:
802025d2: 17 35 00 00  	auipc	a0, 3
802025d6: 13 05 65 e1  	addi	a0, a0, -490

00000000802025da <.LBB0_8>:
802025da: 17 36 00 00  	auipc	a2, 3
802025de: 13 06 e6 e4  	addi	a2, a2, -434
802025e2: 93 05 b0 02  	li	a1, 43
802025e6: 97 10 00 00  	auipc	ra, 1
802025ea: e7 80 e0 4e  	jalr	1262(ra)
802025ee: 00 00        	unimp	
802025f0: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802025f4: 26 85        	mv	a0, s1
802025f6: 97 10 00 00  	auipc	ra, 1
802025fa: e7 80 c0 4a  	jalr	1196(ra)
802025fe: 3d e1        	bnez	a0, 0x80202664 <.LBB0_11+0x24>
80202600: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80202604: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202608 <.LBB0_9>:
80202608: 17 05 00 00  	auipc	a0, 0
8020260c: 13 05 c5 f9  	addi	a0, a0, -100
80202610: 23 34 a4 f6  	sd	a0, -152(s0)
80202614: 13 05 04 fe  	addi	a0, s0, -32
80202618: 23 38 a4 f8  	sd	a0, -112(s0)
8020261c: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202620 <.LBB0_10>:
80202620: 17 35 00 00  	auipc	a0, 3
80202624: 13 05 85 d5  	addi	a0, a0, -680
80202628: 23 30 a4 fc  	sd	a0, -64(s0)
8020262c: 09 45        	li	a0, 2
8020262e: 23 34 a4 fc  	sd	a0, -56(s0)
80202632: 13 05 04 f6  	addi	a0, s0, -160
80202636: 23 38 a4 fc  	sd	a0, -48(s0)
8020263a: 05 45        	li	a0, 1
8020263c: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080202640 <.LBB0_11>:
80202640: 97 35 00 00  	auipc	a1, 3
80202644: 93 85 85 1a  	addi	a1, a1, 424
80202648: 13 05 04 f9  	addi	a0, s0, -112
8020264c: 13 06 04 fb  	addi	a2, s0, -80
80202650: 97 10 00 00  	auipc	ra, 1
80202654: e7 80 e0 56  	jalr	1390(ra)
80202658: 45 e1        	bnez	a0, 0x802026f8 <.LBB0_17>
;     shutdown()
8020265a: 97 00 00 00  	auipc	ra, 0
8020265e: e7 80 60 1b  	jalr	438(ra)
80202662: 00 00        	unimp	
80202664: 0c 61        	ld	a1, 0(a0)
80202666: 10 65        	ld	a2, 8(a0)
80202668: 23 38 b4 f8  	sd	a1, -112(s0)
8020266c: 23 3c c4 f8  	sd	a2, -104(s0)
80202670: 08 49        	lw	a0, 16(a0)
80202672: 23 22 a4 fa  	sw	a0, -92(s0)
80202676: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
8020267a: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020267e <.LBB0_12>:
8020267e: 17 05 00 00  	auipc	a0, 0
80202682: 13 05 45 f0  	addi	a0, a0, -252
80202686: 23 34 a4 f6  	sd	a0, -152(s0)
8020268a: 13 05 44 fa  	addi	a0, s0, -92
8020268e: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080202692 <.LBB0_13>:
80202692: 17 25 00 00  	auipc	a0, 2
80202696: 13 05 c5 e9  	addi	a0, a0, -356
8020269a: 23 3c a4 f6  	sd	a0, -136(s0)
8020269e: 13 05 84 f5  	addi	a0, s0, -168
802026a2: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802026a6 <.LBB0_14>:
802026a6: 17 05 00 00  	auipc	a0, 0
802026aa: 13 05 e5 ef  	addi	a0, a0, -258
802026ae: 23 34 a4 f8  	sd	a0, -120(s0)
802026b2: 13 05 04 fe  	addi	a0, s0, -32
802026b6: 23 34 a4 fa  	sd	a0, -88(s0)
802026ba: 23 38 04 fa  	sd	zero, -80(s0)

00000000802026be <.LBB0_15>:
802026be: 17 35 00 00  	auipc	a0, 3
802026c2: 13 05 a5 ce  	addi	a0, a0, -790
802026c6: 23 30 a4 fc  	sd	a0, -64(s0)
802026ca: 11 45        	li	a0, 4
802026cc: 23 34 a4 fc  	sd	a0, -56(s0)
802026d0: 13 05 04 f6  	addi	a0, s0, -160
802026d4: 23 38 a4 fc  	sd	a0, -48(s0)
802026d8: 0d 45        	li	a0, 3
802026da: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802026de <.LBB0_16>:
802026de: 97 35 00 00  	auipc	a1, 3
802026e2: 93 85 a5 10  	addi	a1, a1, 266
802026e6: 13 05 84 fa  	addi	a0, s0, -88
802026ea: 13 06 04 fb  	addi	a2, s0, -80
802026ee: 97 10 00 00  	auipc	ra, 1
802026f2: e7 80 00 4d  	jalr	1232(ra)
802026f6: 35 d1        	beqz	a0, 0x8020265a <.LBB0_11+0x1a>

00000000802026f8 <.LBB0_17>:
802026f8: 17 35 00 00  	auipc	a0, 3
802026fc: 13 05 05 12  	addi	a0, a0, 288

0000000080202700 <.LBB0_18>:
80202700: 97 36 00 00  	auipc	a3, 3
80202704: 93 86 86 14  	addi	a3, a3, 328

0000000080202708 <.LBB0_19>:
80202708: 17 37 00 00  	auipc	a4, 3
8020270c: 13 07 07 17  	addi	a4, a4, 368
80202710: 93 05 b0 02  	li	a1, 43
80202714: 13 06 04 fe  	addi	a2, s0, -32
80202718: 97 10 00 00  	auipc	ra, 1
8020271c: e7 80 80 42  	jalr	1064(ra)
80202720: 00 00        	unimp	

0000000080202722 <_ZN6kernel7process3cpu5cpuid17h63fd58697e69a2d8E>:
; pub fn cpuid() -> usize {
80202722: 41 11        	addi	sp, sp, -16
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202724: 06 e4        	sd	ra, 8(sp)
80202726: 22 e0        	sd	s0, 0(sp)
80202728: 00 08        	addi	s0, sp, 16
8020272a: 12 85        	mv	a0, tp
; }
8020272c: a2 60        	ld	ra, 8(sp)
8020272e: 02 64        	ld	s0, 0(sp)
80202730: 41 01        	addi	sp, sp, 16
80202732: 82 80        	ret

0000000080202734 <_ZN6kernel7process3cpu5mycpu17hba8d96572f55b33fE>:
; pub fn mycpu() -> *mut Cpu {
80202734: 01 11        	addi	sp, sp, -32
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202736: 06 ec        	sd	ra, 24(sp)
80202738: 22 e8        	sd	s0, 16(sp)
8020273a: 26 e4        	sd	s1, 8(sp)
8020273c: 00 10        	addi	s0, sp, 32
8020273e: 92 84        	mv	s1, tp

0000000080202740 <.LBB2_3>:
;         self.0.call_once(builder)
80202740: 17 55 01 00  	auipc	a0, 21
80202744: 13 05 05 8c  	addi	a0, a0, -1856
80202748: 97 00 00 00  	auipc	ra, 0
8020274c: e7 80 80 8b  	jalr	-1864(ra)
80202750: 93 05 f0 03  	li	a1, 63
; 	&mut CPUS.get_mut()[id]
80202754: 63 eb 95 00  	bltu	a1, s1, 0x8020276a <.LBB2_4>
80202758: e1 45        	li	a1, 24
; 	&mut CPUS.get_mut()[id]
8020275a: b3 85 b4 02  	mul	a1, s1, a1
8020275e: 2e 95        	add	a0, a0, a1
; }
80202760: e2 60        	ld	ra, 24(sp)
80202762: 42 64        	ld	s0, 16(sp)
80202764: a2 64        	ld	s1, 8(sp)
80202766: 05 61        	addi	sp, sp, 32
80202768: 82 80        	ret

000000008020276a <.LBB2_4>:
; 	&mut CPUS.get_mut()[id]
8020276a: 17 36 00 00  	auipc	a2, 3
8020276e: 13 06 e6 ce  	addi	a2, a2, -786
80202772: 93 05 00 04  	li	a1, 64
80202776: 26 85        	mv	a0, s1
80202778: 97 10 00 00  	auipc	ra, 1
8020277c: e7 80 80 38  	jalr	904(ra)
80202780: 00 00        	unimp	

0000000080202782 <_ZN6kernel4trap12trapinithart17he6cca289112bcdcaE>:
; pub fn trapinithart() {
80202782: 5d 71        	addi	sp, sp, -80
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80202784: 86 e4        	sd	ra, 72(sp)
80202786: a2 e0        	sd	s0, 64(sp)
80202788: 80 08        	addi	s0, sp, 80

000000008020278a <.LBB4_3>:
8020278a: 17 f5 ff ff  	auipc	a0, 1048575
8020278e: 13 05 65 9a  	addi	a0, a0, -1626
80202792: 73 10 55 10  	csrw	stvec, a0
80202796: 13 05 84 fe  	addi	a0, s0, -24
8020279a: 23 38 a4 fa  	sd	a0, -80(s0)
8020279e: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802027a2 <.LBB4_4>:
802027a2: 17 35 00 00  	auipc	a0, 3
802027a6: 13 05 e5 d0  	addi	a0, a0, -754
802027aa: 23 34 a4 fc  	sd	a0, -56(s0)
802027ae: 05 45        	li	a0, 1
802027b0: 23 38 a4 fc  	sd	a0, -48(s0)

00000000802027b4 <.LBB4_5>:
802027b4: 17 35 00 00  	auipc	a0, 3
802027b8: 13 05 c5 c8  	addi	a0, a0, -884
802027bc: 23 3c a4 fc  	sd	a0, -40(s0)
802027c0: 23 30 04 fe  	sd	zero, -32(s0)

00000000802027c4 <.LBB4_6>:
802027c4: 97 35 00 00  	auipc	a1, 3
802027c8: 93 85 45 02  	addi	a1, a1, 36
802027cc: 13 05 04 fb  	addi	a0, s0, -80
802027d0: 13 06 84 fb  	addi	a2, s0, -72
802027d4: 97 10 00 00  	auipc	ra, 1
802027d8: e7 80 a0 3e  	jalr	1002(ra)
802027dc: 09 e5        	bnez	a0, 0x802027e6 <.LBB4_7>
; }
802027de: a6 60        	ld	ra, 72(sp)
802027e0: 06 64        	ld	s0, 64(sp)
802027e2: 61 61        	addi	sp, sp, 80
802027e4: 82 80        	ret

00000000802027e6 <.LBB4_7>:
802027e6: 17 35 00 00  	auipc	a0, 3
802027ea: 13 05 25 03  	addi	a0, a0, 50

00000000802027ee <.LBB4_8>:
802027ee: 97 36 00 00  	auipc	a3, 3
802027f2: 93 86 a6 05  	addi	a3, a3, 90

00000000802027f6 <.LBB4_9>:
802027f6: 17 37 00 00  	auipc	a4, 3
802027fa: 13 07 27 08  	addi	a4, a4, 130
802027fe: 93 05 b0 02  	li	a1, 43
80202802: 13 06 84 fe  	addi	a2, s0, -24
80202806: 97 10 00 00  	auipc	ra, 1
8020280a: e7 80 a0 33  	jalr	826(ra)
8020280e: 00 00        	unimp	

0000000080202810 <_ZN6kernel3sbi8shutdown17ha1ef8f97a31cd2d1E>:
; pub fn shutdown() -> ! {
80202810: 39 71        	addi	sp, sp, -64
;         asm!(
80202812: 06 fc        	sd	ra, 56(sp)
80202814: 22 f8        	sd	s0, 48(sp)
80202816: 80 00        	addi	s0, sp, 64
80202818: a1 48        	li	a7, 8
8020281a: 01 45        	li	a0, 0
8020281c: 81 45        	li	a1, 0
8020281e: 01 46        	li	a2, 0
80202820: 73 00 00 00  	ecall	

0000000080202824 <.LBB6_1>:
80202824: 17 35 00 00  	auipc	a0, 3
80202828: 13 05 45 cb  	addi	a0, a0, -844
8020282c: 23 38 a4 fc  	sd	a0, -48(s0)
80202830: 05 45        	li	a0, 1
80202832: 23 3c a4 fc  	sd	a0, -40(s0)
80202836: 23 30 04 fc  	sd	zero, -64(s0)

000000008020283a <.LBB6_2>:
8020283a: 17 35 00 00  	auipc	a0, 3
8020283e: 13 05 65 c8  	addi	a0, a0, -890
80202842: 23 30 a4 fe  	sd	a0, -32(s0)
80202846: 23 34 04 fe  	sd	zero, -24(s0)

000000008020284a <.LBB6_3>:
;     panic!("It should shutdown!");
8020284a: 97 35 00 00  	auipc	a1, 3
8020284e: 93 85 e5 ca  	addi	a1, a1, -850
80202852: 13 05 04 fc  	addi	a0, s0, -64
80202856: 97 10 00 00  	auipc	ra, 1
8020285a: e7 80 00 25  	jalr	592(ra)
8020285e: 00 00        	unimp	

0000000080202860 <usertrapret>:
; pub fn binit() {}
80202860: 41 11        	addi	sp, sp, -16
80202862: 06 e4        	sd	ra, 8(sp)
80202864: 22 e0        	sd	s0, 0(sp)
80202866: 00 08        	addi	s0, sp, 16
80202868: a2 60        	ld	ra, 8(sp)
8020286a: 02 64        	ld	s0, 0(sp)
8020286c: 41 01        	addi	sp, sp, 16
8020286e: 82 80        	ret

0000000080202870 <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E>:
;     pub fn release(&mut self) {
80202870: 5d 71        	addi	sp, sp, -80
80202872: 86 e4        	sd	ra, 72(sp)
80202874: a2 e0        	sd	s0, 64(sp)
80202876: 26 fc        	sd	s1, 56(sp)
80202878: 4a f8        	sd	s2, 48(sp)
8020287a: 80 08        	addi	s0, sp, 80
8020287c: aa 84        	mv	s1, a0
8020287e: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202882: 39 c9        	beqz	a0, 0x802028d8 <.LBB2_12>
80202884: 03 b9 04 01  	ld	s2, 16(s1)
80202888: 97 00 00 00  	auipc	ra, 0
8020288c: e7 80 c0 ea  	jalr	-340(ra)
;         if !self.holding() {
80202890: 63 14 a9 04  	bne	s2, a0, 0x802028d8 <.LBB2_12>
;         self.cpu = null_mut();
80202894: 23 b8 04 00  	sd	zero, 16(s1)
80202898: 0f 00 30 03  	fence	rw, rw
8020289c: 0f 00 10 03  	fence	rw, w
802028a0: 23 8c 04 00  	sb	zero, 24(s1)
;     let mc: &mut Cpu = unsafe { transmute(mycpu()) };
802028a4: 97 00 00 00  	auipc	ra, 0
802028a8: e7 80 00 e9  	jalr	-368(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802028ac: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
802028b0: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
802028b2: b9 e9        	bnez	a1, 0x80202908 <.LBB2_15>
;     if mc.noff < 1 {
802028b4: 0c 65        	ld	a1, 8(a0)
802028b6: 63 51 b0 08  	blez	a1, 0x80202938 <.LBB2_18>
;     mc.noff -= 1;
802028ba: fd 15        	addi	a1, a1, -1
802028bc: 0c e5        	sd	a1, 8(a0)
;     if mc.noff == 0 && mc.intena {
802028be: 99 e5        	bnez	a1, 0x802028cc <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
802028c0: 03 45 05 01  	lbu	a0, 16(a0)
802028c4: 01 c5        	beqz	a0, 0x802028cc <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
802028c6: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802028c8: 73 20 05 10  	csrs	sstatus, a0
;     }
802028cc: a6 60        	ld	ra, 72(sp)
802028ce: 06 64        	ld	s0, 64(sp)
802028d0: e2 74        	ld	s1, 56(sp)
802028d2: 42 79        	ld	s2, 48(sp)
802028d4: 61 61        	addi	sp, sp, 80
802028d6: 82 80        	ret

00000000802028d8 <.LBB2_12>:
802028d8: 17 35 00 00  	auipc	a0, 3
802028dc: 13 05 85 c8  	addi	a0, a0, -888
802028e0: 23 30 a4 fc  	sd	a0, -64(s0)
802028e4: 05 45        	li	a0, 1
802028e6: 23 34 a4 fc  	sd	a0, -56(s0)
802028ea: 23 38 04 fa  	sd	zero, -80(s0)

00000000802028ee <.LBB2_13>:
802028ee: 17 35 00 00  	auipc	a0, 3
802028f2: 13 05 25 c2  	addi	a0, a0, -990
802028f6: 23 38 a4 fc  	sd	a0, -48(s0)
802028fa: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802028fe <.LBB2_14>:
;             panic!("release");
802028fe: 97 35 00 00  	auipc	a1, 3
80202902: 93 85 25 c7  	addi	a1, a1, -910
80202906: 85 a0        	j	0x80202966 <.LBB2_20+0x8>

0000000080202908 <.LBB2_15>:
80202908: 17 35 00 00  	auipc	a0, 3
8020290c: 13 05 85 c9  	addi	a0, a0, -872
80202910: 23 30 a4 fc  	sd	a0, -64(s0)
80202914: 05 45        	li	a0, 1
80202916: 23 34 a4 fc  	sd	a0, -56(s0)
8020291a: 23 38 04 fa  	sd	zero, -80(s0)

000000008020291e <.LBB2_16>:
8020291e: 17 35 00 00  	auipc	a0, 3
80202922: 13 05 25 bf  	addi	a0, a0, -1038
80202926: 23 38 a4 fc  	sd	a0, -48(s0)
8020292a: 23 3c 04 fc  	sd	zero, -40(s0)

000000008020292e <.LBB2_17>:
;         panic!("pop_off - interruptible");
8020292e: 97 35 00 00  	auipc	a1, 3
80202932: 93 85 25 c8  	addi	a1, a1, -894
80202936: 05 a8        	j	0x80202966 <.LBB2_20+0x8>

0000000080202938 <.LBB2_18>:
80202938: 17 35 00 00  	auipc	a0, 3
8020293c: 13 05 85 c9  	addi	a0, a0, -872
80202940: 23 30 a4 fc  	sd	a0, -64(s0)
80202944: 05 45        	li	a0, 1
80202946: 23 34 a4 fc  	sd	a0, -56(s0)
8020294a: 23 38 04 fa  	sd	zero, -80(s0)

000000008020294e <.LBB2_19>:
8020294e: 17 35 00 00  	auipc	a0, 3
80202952: 13 05 25 bc  	addi	a0, a0, -1086
80202956: 23 38 a4 fc  	sd	a0, -48(s0)
8020295a: 23 3c 04 fc  	sd	zero, -40(s0)

000000008020295e <.LBB2_20>:
;         panic!("pop_off");
8020295e: 97 35 00 00  	auipc	a1, 3
80202962: 93 85 25 c8  	addi	a1, a1, -894
80202966: 13 05 04 fb  	addi	a0, s0, -80
8020296a: 97 10 00 00  	auipc	ra, 1
8020296e: e7 80 c0 13  	jalr	316(ra)
80202972: 00 00        	unimp	

0000000080202974 <_ZN6kernel6memory6kalloc5kinit17h4f25e2f38cdb0cf5E>:
; pub fn kinit() {
80202974: 35 71        	addi	sp, sp, -160
80202976: 06 ed        	sd	ra, 152(sp)
80202978: 22 e9        	sd	s0, 144(sp)
8020297a: 26 e5        	sd	s1, 136(sp)
8020297c: 4a e1        	sd	s2, 128(sp)
8020297e: ce fc        	sd	s3, 120(sp)
80202980: d2 f8        	sd	s4, 112(sp)
80202982: d6 f4        	sd	s5, 104(sp)
80202984: da f0        	sd	s6, 96(sp)
80202986: de ec        	sd	s7, 88(sp)
80202988: e2 e8        	sd	s8, 80(sp)
8020298a: e6 e4        	sd	s9, 72(sp)
8020298c: ea e0        	sd	s10, 64(sp)
8020298e: 00 11        	addi	s0, sp, 160
80202990: 0f 00 30 03  	fence	rw, rw

0000000080202994 <.LBB1_23>:
80202994: 97 59 01 00  	auipc	s3, 21
80202998: 93 89 c9 c7  	addi	s3, s3, -900
8020299c: 03 b5 09 03  	ld	a0, 48(s3)
802029a0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802029a4: 21 ed        	bnez	a0, 0x802029fc <.LBB1_24+0x3a>
802029a6: 93 85 09 03  	addi	a1, s3, 48
802029aa: 05 46        	li	a2, 1
802029ac: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802029b0: 01 e5        	bnez	a0, 0x802029b8 <.LBB1_23+0x24>
802029b2: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802029b6: fd fa        	bnez	a3, 0x802029ac <.LBB1_23+0x18>
;             if status == INCOMPLETE { // We init
802029b8: 31 e1        	bnez	a0, 0x802029fc <.LBB1_24+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802029ba: 23 34 b4 f6  	sd	a1, -152(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802029be: 23 b0 c9 00  	sd	a2, 0(s3)

00000000802029c2 <.LBB1_24>:
802029c2: 17 25 00 00  	auipc	a0, 2
802029c6: 13 05 e5 70  	addi	a0, a0, 1806
802029ca: 23 b4 a9 00  	sd	a0, 8(s3)
802029ce: 11 45        	li	a0, 4
802029d0: 23 b8 a9 00  	sd	a0, 16(s3)
802029d4: 23 bc 09 00  	sd	zero, 24(s3)
802029d8: 23 80 09 02  	sb	zero, 32(s3)
802029dc: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
802029e0: 23 08 04 f6  	sb	zero, -144(s0)
802029e4: 0f 00 10 03  	fence	rw, w
802029e8: 09 45        	li	a0, 2
802029ea: 23 b8 a9 02  	sd	a0, 48(s3)
802029ee: 13 05 84 f6  	addi	a0, s0, -152
802029f2: 97 10 00 00  	auipc	ra, 1
802029f6: e7 80 e0 e6  	jalr	-402(ra)
802029fa: 0d a0        	j	0x80202a1c <.LBB1_25>
802029fc: 85 45        	li	a1, 1
;             match status {
802029fe: 63 1c b5 00  	bne	a0, a1, 0x80202a16 <.LBB1_24+0x54>
80202a02: 0f 00 00 01  	fence	w, 0
80202a06: 0f 00 30 03  	fence	rw, rw
80202a0a: 03 b5 09 03  	ld	a0, 48(s3)
80202a0e: 0f 00 30 02  	fence	r, rw
;             match status {
80202a12: e3 08 b5 fe  	beq	a0, a1, 0x80202a02 <.LBB1_24+0x40>
80202a16: 89 45        	li	a1, 2
;             match status {
80202a18: 63 14 b5 16  	bne	a0, a1, 0x80202b80 <.LBB1_28+0x36>

0000000080202a1c <.LBB1_25>:
;         while pa < pa_end - PGSIZE {
80202a1c: 17 95 01 00  	auipc	a0, 25
80202a20: 13 05 45 5e  	addi	a0, a0, 1508
80202a24: 85 65        	lui	a1, 1
80202a26: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80202a28: aa 95        	add	a1, a1, a0
80202a2a: 7d 76        	lui	a2, 1048575
80202a2c: f1 8d        	and	a1, a1, a2
80202a2e: 37 86 08 00  	lui	a2, 136
80202a32: 7d 36        	addiw	a2, a2, -1
80202a34: 32 06        	slli	a2, a2, 12
80202a36: 7d 16        	addi	a2, a2, -1
80202a38: 63 62 b6 0e  	bltu	a2, a1, 0x80202b1c <.LBB1_25+0x100>
80202a3c: 63 e3 a5 1e  	bltu	a1, a0, 0x80202c22 <.LBB1_39>
80202a40: 05 6a        	lui	s4, 1
80202a42: 9b 05 fa ff  	addiw	a1, s4, -1
80202a46: 2e 95        	add	a0, a0, a1
80202a48: fd 75        	lui	a1, 1048575
80202a4a: 6d 8d        	and	a0, a0, a1
80202a4c: 85 45        	li	a1, 1
80202a4e: 89 4a        	li	s5, 2
80202a50: 13 86 09 02  	addi	a2, s3, 32
80202a54: 93 76 36 00  	andi	a3, a2, 3
80202a58: 9b 96 36 00  	slliw	a3, a3, 3
80202a5c: 13 07 f0 0f  	li	a4, 255
80202a60: bb 14 d7 00  	sllw	s1, a4, a3
80202a64: bb 95 d5 00  	sllw	a1, a1, a3
80202a68: 82 15        	slli	a1, a1, 32
80202a6a: 93 db 05 02  	srli	s7, a1, 32
80202a6e: 13 7c c6 ff  	andi	s8, a2, -4
80202a72: 13 89 89 00  	addi	s2, s3, 8
80202a76: b7 f5 ff 43  	lui	a1, 278527
80202a7a: 93 9c 15 00  	slli	s9, a1, 1
80202a7e: 2a 8b        	mv	s6, a0
80202a80: 85 45        	li	a1, 1
80202a82: 05 66        	lui	a2, 1
80202a84: 97 20 00 00  	auipc	ra, 2
80202a88: e7 80 20 af  	jalr	-1294(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202a8c: 73 2d 00 10  	csrr	s10, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202a90: 73 b0 0a 10  	csrc	sstatus, s5
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202a94: 97 00 00 00  	auipc	ra, 0
80202a98: e7 80 00 ca  	jalr	-864(ra)
;     if mc.noff == 0 {
80202a9c: 0c 65        	ld	a1, 8(a0)
80202a9e: 99 c5        	beqz	a1, 0x80202aac <.LBB1_25+0x90>
;     mc.noff += 1;
80202aa0: 85 05        	addi	a1, a1, 1
80202aa2: 0c e5        	sd	a1, 8(a0)
80202aa4: 03 85 09 02  	lb	a0, 32(s3)
80202aa8: 01 ed        	bnez	a0, 0x80202ac0 <.LBB1_25+0xa4>
80202aaa: 1d a0        	j	0x80202ad0 <.LBB1_25+0xb4>
;         mc.intena = old;
80202aac: 13 16 ed 03  	slli	a2, s10, 62
80202ab0: 7d 92        	srli	a2, a2, 63
80202ab2: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
80202ab6: 85 05        	addi	a1, a1, 1
80202ab8: 0c e5        	sd	a1, 8(a0)
80202aba: 03 85 09 02  	lb	a0, 32(s3)
80202abe: 09 c9        	beqz	a0, 0x80202ad0 <.LBB1_25+0xb4>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202ac0: 03 bd 89 01  	ld	s10, 24(s3)
80202ac4: 97 00 00 00  	auipc	ra, 0
80202ac8: e7 80 00 c7  	jalr	-912(ra)
80202acc: 63 08 ad 0e  	beq	s10, a0, 0x80202bbc <.LBB1_33>
80202ad0: 2f 25 0c 14  	lr.w.aq	a0, (s8)
80202ad4: b3 75 95 00  	and	a1, a0, s1
80202ad8: 81 e9        	bnez	a1, 0x80202ae8 <.LBB1_25+0xcc>
80202ada: b3 45 75 01  	xor	a1, a0, s7
80202ade: e5 8d        	and	a1, a1, s1
80202ae0: a9 8d        	xor	a1, a1, a0
80202ae2: af 25 bc 18  	sc.w	a1, a1, (s8)
80202ae6: ed f5        	bnez	a1, 0x80202ad0 <.LBB1_25+0xb4>
80202ae8: 65 8d        	and	a0, a0, s1
80202aea: 01 25        	sext.w	a0, a0
;         while self
80202aec: 75 f1        	bnez	a0, 0x80202ad0 <.LBB1_25+0xb4>
80202aee: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
80202af2: 97 00 00 00  	auipc	ra, 0
80202af6: e7 80 20 c4  	jalr	-958(ra)
;         unsafe { (*pa).next = self.freelist }
80202afa: 83 b5 89 02  	ld	a1, 40(s3)
;         self.cpu = mycpu();
80202afe: 23 bc a9 00  	sd	a0, 24(s3)
;         unsafe { (*pa).next = self.freelist }
80202b02: 23 30 bb 00  	sd	a1, 0(s6)
;         self.freelist = pa;
80202b06: 23 b4 69 03  	sd	s6, 40(s3)
;         self.lock.release();
80202b0a: 4a 85        	mv	a0, s2
80202b0c: 97 00 00 00  	auipc	ra, 0
80202b10: e7 80 40 d6  	jalr	-668(ra)
;             pa += PGSIZE;
80202b14: 33 05 4b 01  	add	a0, s6, s4
;         while pa < pa_end - PGSIZE {
80202b18: e3 63 9b f7  	bltu	s6, s9, 0x80202a7e <.LBB1_25+0x62>
80202b1c: 13 05 84 f9  	addi	a0, s0, -104
80202b20: 23 30 a4 f6  	sd	a0, -160(s0)
80202b24: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202b28 <.LBB1_26>:
80202b28: 17 35 00 00  	auipc	a0, 3
80202b2c: 13 05 85 b2  	addi	a0, a0, -1240
80202b30: 23 3c a4 f6  	sd	a0, -136(s0)
80202b34: 05 45        	li	a0, 1
80202b36: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080202b3a <.LBB1_27>:
80202b3a: 17 35 00 00  	auipc	a0, 3
80202b3e: 13 05 e5 ab  	addi	a0, a0, -1346
80202b42: 23 34 a4 f8  	sd	a0, -120(s0)
80202b46: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202b4a <.LBB1_28>:
80202b4a: 97 35 00 00  	auipc	a1, 3
80202b4e: 93 85 e5 c9  	addi	a1, a1, -866
80202b52: 13 05 04 f6  	addi	a0, s0, -160
80202b56: 13 06 84 f6  	addi	a2, s0, -152
80202b5a: 97 10 00 00  	auipc	ra, 1
80202b5e: e7 80 40 06  	jalr	100(ra)
80202b62: 59 e9        	bnez	a0, 0x80202bf8 <.LBB1_36>
; }
80202b64: ea 60        	ld	ra, 152(sp)
80202b66: 4a 64        	ld	s0, 144(sp)
80202b68: aa 64        	ld	s1, 136(sp)
80202b6a: 0a 69        	ld	s2, 128(sp)
80202b6c: e6 79        	ld	s3, 120(sp)
80202b6e: 46 7a        	ld	s4, 112(sp)
80202b70: a6 7a        	ld	s5, 104(sp)
80202b72: 06 7b        	ld	s6, 96(sp)
80202b74: e6 6b        	ld	s7, 88(sp)
80202b76: 46 6c        	ld	s8, 80(sp)
80202b78: a6 6c        	ld	s9, 72(sp)
80202b7a: 06 6d        	ld	s10, 64(sp)
80202b7c: 0d 61        	addi	sp, sp, 160
80202b7e: 82 80        	ret
;             match status {
80202b80: 05 e1        	bnez	a0, 0x80202ba0 <.LBB1_31>

0000000080202b82 <.LBB1_29>:
;                 INCOMPLETE => unreachable!(),
80202b82: 17 25 00 00  	auipc	a0, 2
80202b86: 13 05 65 50  	addi	a0, a0, 1286

0000000080202b8a <.LBB1_30>:
80202b8a: 17 26 00 00  	auipc	a2, 2
80202b8e: 13 06 66 52  	addi	a2, a2, 1318
80202b92: 93 05 80 02  	li	a1, 40
80202b96: 97 10 00 00  	auipc	ra, 1
80202b9a: e7 80 e0 f3  	jalr	-194(ra)
80202b9e: 00 00        	unimp	

0000000080202ba0 <.LBB1_31>:
;                 PANICKED => panic!("Once has panicked"),
80202ba0: 17 25 00 00  	auipc	a0, 2
80202ba4: 13 05 05 46  	addi	a0, a0, 1120

0000000080202ba8 <.LBB1_32>:
80202ba8: 17 26 00 00  	auipc	a2, 2
80202bac: 13 06 86 4c  	addi	a2, a2, 1224
80202bb0: c5 45        	li	a1, 17
80202bb2: 97 10 00 00  	auipc	ra, 1
80202bb6: e7 80 20 f2  	jalr	-222(ra)
80202bba: 00 00        	unimp	

0000000080202bbc <.LBB1_33>:
80202bbc: 17 35 00 00  	auipc	a0, 3
80202bc0: 13 05 c5 95  	addi	a0, a0, -1700
80202bc4: 23 3c a4 f6  	sd	a0, -136(s0)
80202bc8: 05 45        	li	a0, 1
80202bca: 23 30 a4 f8  	sd	a0, -128(s0)
80202bce: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202bd2 <.LBB1_34>:
80202bd2: 17 35 00 00  	auipc	a0, 3
80202bd6: 13 05 e5 93  	addi	a0, a0, -1730
80202bda: 23 34 a4 f8  	sd	a0, -120(s0)
80202bde: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202be2 <.LBB1_35>:
;             panic!("acquire");
80202be2: 97 35 00 00  	auipc	a1, 3
80202be6: 93 85 e5 95  	addi	a1, a1, -1698
80202bea: 13 05 84 f6  	addi	a0, s0, -152
80202bee: 97 10 00 00  	auipc	ra, 1
80202bf2: e7 80 80 eb  	jalr	-328(ra)
80202bf6: 00 00        	unimp	

0000000080202bf8 <.LBB1_36>:
80202bf8: 17 35 00 00  	auipc	a0, 3
80202bfc: 13 05 05 c2  	addi	a0, a0, -992

0000000080202c00 <.LBB1_37>:
80202c00: 97 36 00 00  	auipc	a3, 3
80202c04: 93 86 86 c4  	addi	a3, a3, -952

0000000080202c08 <.LBB1_38>:
80202c08: 17 37 00 00  	auipc	a4, 3
80202c0c: 13 07 07 c7  	addi	a4, a4, -912
80202c10: 93 05 b0 02  	li	a1, 43
80202c14: 13 06 84 f9  	addi	a2, s0, -104
80202c18: 97 10 00 00  	auipc	ra, 1
80202c1c: e7 80 80 f2  	jalr	-216(ra)
80202c20: 00 00        	unimp	

0000000080202c22 <.LBB1_39>:
80202c22: 17 35 00 00  	auipc	a0, 3
80202c26: 13 05 e5 9d  	addi	a0, a0, -1570
80202c2a: 23 3c a4 f6  	sd	a0, -136(s0)
80202c2e: 05 45        	li	a0, 1
80202c30: 23 30 a4 f8  	sd	a0, -128(s0)
80202c34: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202c38 <.LBB1_40>:
80202c38: 17 35 00 00  	auipc	a0, 3
80202c3c: 13 05 05 9c  	addi	a0, a0, -1600
80202c40: 23 34 a4 f8  	sd	a0, -120(s0)
80202c44: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202c48 <.LBB1_41>:
;             panic!("kfree");
80202c48: 97 35 00 00  	auipc	a1, 3
80202c4c: 93 85 05 9e  	addi	a1, a1, -1568
80202c50: 13 05 84 f6  	addi	a0, s0, -152
80202c54: 97 10 00 00  	auipc	ra, 1
80202c58: e7 80 20 e5  	jalr	-430(ra)
80202c5c: 00 00        	unimp	

0000000080202c5e <_ZN6kernel6memory6kalloc6kalloc17h8a70add4bd9ad31fE>:
; pub fn kalloc() -> Addr {
80202c5e: 5d 71        	addi	sp, sp, -80
80202c60: 86 e4        	sd	ra, 72(sp)
80202c62: a2 e0        	sd	s0, 64(sp)
80202c64: 26 fc        	sd	s1, 56(sp)
80202c66: 4a f8        	sd	s2, 48(sp)
80202c68: 80 08        	addi	s0, sp, 80
80202c6a: 0f 00 30 03  	fence	rw, rw

0000000080202c6e <.LBB2_19>:
80202c6e: 97 54 01 00  	auipc	s1, 21
80202c72: 93 84 24 9a  	addi	s1, s1, -1630
80202c76: 88 78        	ld	a0, 48(s1)
80202c78: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202c7c: 21 e9        	bnez	a0, 0x80202ccc <.LBB2_20+0x34>
80202c7e: 93 85 04 03  	addi	a1, s1, 48
80202c82: 05 46        	li	a2, 1
80202c84: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202c88: 01 e5        	bnez	a0, 0x80202c90 <.LBB2_19+0x22>
80202c8a: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202c8e: fd fa        	bnez	a3, 0x80202c84 <.LBB2_19+0x16>
;             if status == INCOMPLETE { // We init
80202c90: 15 ed        	bnez	a0, 0x80202ccc <.LBB2_20+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202c92: 23 38 b4 fa  	sd	a1, -80(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202c96: 90 e0        	sd	a2, 0(s1)

0000000080202c98 <.LBB2_20>:
80202c98: 17 25 00 00  	auipc	a0, 2
80202c9c: 13 05 85 43  	addi	a0, a0, 1080
80202ca0: 88 e4        	sd	a0, 8(s1)
80202ca2: 11 45        	li	a0, 4
80202ca4: 88 e8        	sd	a0, 16(s1)
80202ca6: 23 bc 04 00  	sd	zero, 24(s1)
80202caa: 23 80 04 02  	sb	zero, 32(s1)
80202cae: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80202cb2: 23 0c 04 fa  	sb	zero, -72(s0)
80202cb6: 0f 00 10 03  	fence	rw, w
80202cba: 09 45        	li	a0, 2
80202cbc: 88 f8        	sd	a0, 48(s1)
80202cbe: 13 05 04 fb  	addi	a0, s0, -80
80202cc2: 97 10 00 00  	auipc	ra, 1
80202cc6: e7 80 e0 b9  	jalr	-1122(ra)
80202cca: 05 a0        	j	0x80202cea <.LBB2_20+0x52>
80202ccc: 85 45        	li	a1, 1
;             match status {
80202cce: 63 1b b5 00  	bne	a0, a1, 0x80202ce4 <.LBB2_20+0x4c>
80202cd2: 0f 00 00 01  	fence	w, 0
80202cd6: 0f 00 30 03  	fence	rw, rw
80202cda: 88 78        	ld	a0, 48(s1)
80202cdc: 0f 00 30 02  	fence	r, rw
;             match status {
80202ce0: e3 09 b5 fe  	beq	a0, a1, 0x80202cd2 <.LBB2_20+0x3a>
80202ce4: 89 45        	li	a1, 2
;             match status {
80202ce6: 63 1e b5 0c  	bne	a0, a1, 0x80202dc2 <.LBB2_20+0x12a>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202cea: 73 29 00 10  	csrr	s2, sstatus
80202cee: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202cf0: 73 30 05 10  	csrc	sstatus, a0
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202cf4: 97 00 00 00  	auipc	ra, 0
80202cf8: e7 80 00 a4  	jalr	-1472(ra)
;     if mc.noff == 0 {
80202cfc: 0c 65        	ld	a1, 8(a0)
80202cfe: 99 c5        	beqz	a1, 0x80202d0c <.LBB2_20+0x74>
;     mc.noff += 1;
80202d00: 85 05        	addi	a1, a1, 1
80202d02: 0c e5        	sd	a1, 8(a0)
80202d04: 03 85 04 02  	lb	a0, 32(s1)
80202d08: 01 ed        	bnez	a0, 0x80202d20 <.LBB2_20+0x88>
80202d0a: 1d a0        	j	0x80202d30 <.LBB2_20+0x98>
;         mc.intena = old;
80202d0c: 13 16 e9 03  	slli	a2, s2, 62
80202d10: 7d 92        	srli	a2, a2, 63
80202d12: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
80202d16: 85 05        	addi	a1, a1, 1
80202d18: 0c e5        	sd	a1, 8(a0)
80202d1a: 03 85 04 02  	lb	a0, 32(s1)
80202d1e: 09 c9        	beqz	a0, 0x80202d30 <.LBB2_20+0x98>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202d20: 03 b9 84 01  	ld	s2, 24(s1)
80202d24: 97 00 00 00  	auipc	ra, 0
80202d28: e7 80 00 a1  	jalr	-1520(ra)
80202d2c: 63 09 a9 0c  	beq	s2, a0, 0x80202dfe <.LBB2_25>
80202d30: 13 85 04 02  	addi	a0, s1, 32
80202d34: 93 75 35 00  	andi	a1, a0, 3
80202d38: 9b 95 35 00  	slliw	a1, a1, 3
80202d3c: 13 06 f0 0f  	li	a2, 255
80202d40: 3b 16 b6 00  	sllw	a2, a2, a1
80202d44: 85 46        	li	a3, 1
80202d46: bb 95 b6 00  	sllw	a1, a3, a1
80202d4a: 82 15        	slli	a1, a1, 32
80202d4c: 81 91        	srli	a1, a1, 32
80202d4e: 71 99        	andi	a0, a0, -4
80202d50: af 26 05 14  	lr.w.aq	a3, (a0)
80202d54: 33 f7 c6 00  	and	a4, a3, a2
80202d58: 01 eb        	bnez	a4, 0x80202d68 <.LBB2_20+0xd0>
80202d5a: 33 c7 b6 00  	xor	a4, a3, a1
80202d5e: 71 8f        	and	a4, a4, a2
80202d60: 35 8f        	xor	a4, a4, a3
80202d62: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80202d66: 6d f7        	bnez	a4, 0x80202d50 <.LBB2_20+0xb8>
80202d68: 33 f5 c6 00  	and	a0, a3, a2
80202d6c: 01 25        	sext.w	a0, a0
;         while self
80202d6e: 69 f1        	bnez	a0, 0x80202d30 <.LBB2_20+0x98>
80202d70: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
80202d74: 97 00 00 00  	auipc	ra, 0
80202d78: e7 80 00 9c  	jalr	-1600(ra)
;         r = self.freelist;
80202d7c: 03 b9 84 02  	ld	s2, 40(s1)
;         self.cpu = mycpu();
80202d80: 88 ec        	sd	a0, 24(s1)
;         if r != null_mut() {
80202d82: 63 03 09 02  	beqz	s2, 0x80202da8 <.LBB2_20+0x110>
;             unsafe { self.freelist = (*r).next }
80202d86: 03 35 09 00  	ld	a0, 0(s2)
80202d8a: 88 f4        	sd	a0, 40(s1)
80202d8c: 13 85 84 00  	addi	a0, s1, 8
;         self.lock.release();
80202d90: 97 00 00 00  	auipc	ra, 0
80202d94: e7 80 00 ae  	jalr	-1312(ra)
80202d98: 95 45        	li	a1, 5
80202d9a: 05 66        	lui	a2, 1
80202d9c: 4a 85        	mv	a0, s2
80202d9e: 97 10 00 00  	auipc	ra, 1
80202da2: e7 80 80 7d  	jalr	2008(ra)
80202da6: 39 a0        	j	0x80202db4 <.LBB2_20+0x11c>
;         self.lock.release();
80202da8: 13 85 84 00  	addi	a0, s1, 8
80202dac: 97 00 00 00  	auipc	ra, 0
80202db0: e7 80 40 ac  	jalr	-1340(ra)
; }
80202db4: 4a 85        	mv	a0, s2
80202db6: a6 60        	ld	ra, 72(sp)
80202db8: 06 64        	ld	s0, 64(sp)
80202dba: e2 74        	ld	s1, 56(sp)
80202dbc: 42 79        	ld	s2, 48(sp)
80202dbe: 61 61        	addi	sp, sp, 80
80202dc0: 82 80        	ret
;             match status {
80202dc2: 05 e1        	bnez	a0, 0x80202de2 <.LBB2_23>

0000000080202dc4 <.LBB2_21>:
;                 INCOMPLETE => unreachable!(),
80202dc4: 17 25 00 00  	auipc	a0, 2
80202dc8: 13 05 45 2c  	addi	a0, a0, 708

0000000080202dcc <.LBB2_22>:
80202dcc: 17 26 00 00  	auipc	a2, 2
80202dd0: 13 06 46 2e  	addi	a2, a2, 740
80202dd4: 93 05 80 02  	li	a1, 40
80202dd8: 97 10 00 00  	auipc	ra, 1
80202ddc: e7 80 c0 cf  	jalr	-772(ra)
80202de0: 00 00        	unimp	

0000000080202de2 <.LBB2_23>:
;                 PANICKED => panic!("Once has panicked"),
80202de2: 17 25 00 00  	auipc	a0, 2
80202de6: 13 05 e5 21  	addi	a0, a0, 542

0000000080202dea <.LBB2_24>:
80202dea: 17 26 00 00  	auipc	a2, 2
80202dee: 13 06 66 28  	addi	a2, a2, 646
80202df2: c5 45        	li	a1, 17
80202df4: 97 10 00 00  	auipc	ra, 1
80202df8: e7 80 00 ce  	jalr	-800(ra)
80202dfc: 00 00        	unimp	

0000000080202dfe <.LBB2_25>:
80202dfe: 17 25 00 00  	auipc	a0, 2
80202e02: 13 05 a5 71  	addi	a0, a0, 1818
80202e06: 23 30 a4 fc  	sd	a0, -64(s0)
80202e0a: 05 45        	li	a0, 1
80202e0c: 23 34 a4 fc  	sd	a0, -56(s0)
80202e10: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202e14 <.LBB2_26>:
80202e14: 17 25 00 00  	auipc	a0, 2
80202e18: 13 05 c5 6f  	addi	a0, a0, 1788
80202e1c: 23 38 a4 fc  	sd	a0, -48(s0)
80202e20: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202e24 <.LBB2_27>:
;             panic!("acquire");
80202e24: 97 25 00 00  	auipc	a1, 2
80202e28: 93 85 c5 71  	addi	a1, a1, 1820
80202e2c: 13 05 04 fb  	addi	a0, s0, -80
80202e30: 97 10 00 00  	auipc	ra, 1
80202e34: e7 80 60 c7  	jalr	-906(ra)
80202e38: 00 00        	unimp	

0000000080202e3a <main>:
; pub fn main(hartid: usize) {
80202e3a: 19 71        	addi	sp, sp, -128
80202e3c: 86 fc        	sd	ra, 120(sp)
80202e3e: a2 f8        	sd	s0, 112(sp)
80202e40: a6 f4        	sd	s1, 104(sp)
80202e42: ca f0        	sd	s2, 96(sp)
80202e44: ce ec        	sd	s3, 88(sp)
80202e46: 00 01        	addi	s0, sp, 128

0000000080202e48 <.LBB0_19>:
80202e48: 17 95 01 00  	auipc	a0, 25
80202e4c: 13 05 85 1b  	addi	a0, a0, 440

0000000080202e50 <.LBB0_20>:
80202e50: 97 45 01 00  	auipc	a1, 20
80202e54: 93 85 05 1b  	addi	a1, a1, 432
80202e58: 63 f9 a5 00  	bgeu	a1, a0, 0x80202e6a <.LBB0_20+0x1a>
80202e5c: 13 86 15 00  	addi	a2, a1, 1
80202e60: 23 80 05 00  	sb	zero, 0(a1)
80202e64: b2 85        	mv	a1, a2
80202e66: e3 6b a6 fe  	bltu	a2, a0, 0x80202e5c <.LBB0_20+0xc>
;     if cpuid() == 0 {
80202e6a: 97 00 00 00  	auipc	ra, 0
80202e6e: e7 80 80 8b  	jalr	-1864(ra)
80202e72: 63 19 05 28  	bnez	a0, 0x80203104 <.LBB0_43>

0000000080202e76 <.LBB0_21>:
;     println!("{}", LOGO);
80202e76: 17 25 00 00  	auipc	a0, 2
80202e7a: 13 05 25 49  	addi	a0, a0, 1170
80202e7e: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202e82 <.LBB0_22>:
80202e82: 17 f5 ff ff  	auipc	a0, 1048575
80202e86: 13 05 05 70  	addi	a0, a0, 1792
80202e8a: 23 38 a4 f8  	sd	a0, -112(s0)
80202e8e: 13 09 04 fd  	addi	s2, s0, -48
80202e92: 23 3c 24 f9  	sd	s2, -104(s0)
80202e96: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e9a <.LBB0_23>:
80202e9a: 17 25 00 00  	auipc	a0, 2
80202e9e: 13 05 65 2f  	addi	a0, a0, 758
80202ea2: 23 38 a4 fa  	sd	a0, -80(s0)
80202ea6: 09 45        	li	a0, 2
80202ea8: 23 3c a4 fa  	sd	a0, -72(s0)
80202eac: 13 05 84 f8  	addi	a0, s0, -120
80202eb0: 23 30 a4 fc  	sd	a0, -64(s0)
80202eb4: 85 44        	li	s1, 1
80202eb6: 23 34 94 fc  	sd	s1, -56(s0)

0000000080202eba <.LBB0_24>:
80202eba: 97 35 00 00  	auipc	a1, 3
80202ebe: 93 85 e5 92  	addi	a1, a1, -1746
80202ec2: 13 05 84 f9  	addi	a0, s0, -104
80202ec6: 13 06 04 fa  	addi	a2, s0, -96
80202eca: 97 10 00 00  	auipc	ra, 1
80202ece: e7 80 40 cf  	jalr	-780(ra)
80202ed2: 63 13 05 32  	bnez	a0, 0x802031f8 <.LBB0_50>
80202ed6: 23 34 24 f9  	sd	s2, -120(s0)
80202eda: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ede <.LBB0_25>:
80202ede: 17 25 00 00  	auipc	a0, 2
80202ee2: 13 05 a5 7d  	addi	a0, a0, 2010
80202ee6: 23 38 a4 fa  	sd	a0, -80(s0)
80202eea: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202eee <.LBB0_26>:
80202eee: 97 24 00 00  	auipc	s1, 2
80202ef2: 93 84 24 77  	addi	s1, s1, 1906
80202ef6: 23 30 94 fc  	sd	s1, -64(s0)
80202efa: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202efe <.LBB0_27>:
80202efe: 97 35 00 00  	auipc	a1, 3
80202f02: 93 85 a5 8e  	addi	a1, a1, -1814
80202f06: 13 05 84 f8  	addi	a0, s0, -120
80202f0a: 13 06 04 fa  	addi	a2, s0, -96
80202f0e: 97 10 00 00  	auipc	ra, 1
80202f12: e7 80 00 cb  	jalr	-848(ra)
80202f16: 63 11 05 2e  	bnez	a0, 0x802031f8 <.LBB0_50>
80202f1a: 13 05 04 fd  	addi	a0, s0, -48
80202f1e: 23 34 a4 f8  	sd	a0, -120(s0)
80202f22: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202f26 <.LBB0_28>:
80202f26: 17 25 00 00  	auipc	a0, 2
80202f2a: 13 05 a5 7a  	addi	a0, a0, 1962
80202f2e: 23 38 a4 fa  	sd	a0, -80(s0)
80202f32: 05 45        	li	a0, 1
80202f34: 23 3c a4 fa  	sd	a0, -72(s0)
80202f38: 23 30 94 fc  	sd	s1, -64(s0)
80202f3c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202f40 <.LBB0_29>:
80202f40: 97 35 00 00  	auipc	a1, 3
80202f44: 93 85 85 8a  	addi	a1, a1, -1880
80202f48: 13 05 84 f8  	addi	a0, s0, -120
80202f4c: 13 06 04 fa  	addi	a2, s0, -96
80202f50: 97 10 00 00  	auipc	ra, 1
80202f54: e7 80 e0 c6  	jalr	-914(ra)
80202f58: 63 10 05 2a  	bnez	a0, 0x802031f8 <.LBB0_50>
;         kinit(); 			// 初始化物理页分配器
80202f5c: 97 00 00 00  	auipc	ra, 0
80202f60: e7 80 80 a1  	jalr	-1512(ra)
;         kvminit(); 			// 创建内核页表
80202f64: 97 00 00 00  	auipc	ra, 0
80202f68: e7 80 a0 2f  	jalr	762(ra)
;         kvminithart(); 		// 打开分页管理
80202f6c: 97 00 00 00  	auipc	ra, 0
80202f70: e7 80 20 53  	jalr	1330(ra)

0000000080202f74 <.LBB0_30>:
;         self.0.call_once(builder)
80202f74: 17 45 01 00  	auipc	a0, 20
80202f78: 13 05 c5 6e  	addi	a0, a0, 1772
80202f7c: 97 f0 ff ff  	auipc	ra, 1048575
80202f80: e7 80 00 1d  	jalr	464(ra)
80202f84: 13 05 05 0c  	addi	a0, a0, 192
80202f88: 93 05 00 04  	li	a1, 64
80202f8c: 37 06 00 04  	lui	a2, 16384
80202f90: 75 36        	addiw	a2, a2, -3
80202f92: 32 06        	slli	a2, a2, 12
80202f94: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80202f96: 10 e1        	sd	a2, 0(a0)
80202f98: 13 05 85 10  	addi	a0, a0, 264
80202f9c: fd 15        	addi	a1, a1, -1
80202f9e: 36 96        	add	a2, a2, a3
80202fa0: fd f9        	bnez	a1, 0x80202f96 <.LBB0_30+0x22>
80202fa2: 13 09 04 fd  	addi	s2, s0, -48
80202fa6: 23 34 24 f9  	sd	s2, -120(s0)
80202faa: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202fae <.LBB0_31>:
80202fae: 17 35 00 00  	auipc	a0, 3
80202fb2: 13 05 a5 82  	addi	a0, a0, -2006
80202fb6: 23 38 a4 fa  	sd	a0, -80(s0)
80202fba: 85 44        	li	s1, 1
80202fbc: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202fc0 <.LBB0_32>:
80202fc0: 17 35 00 00  	auipc	a0, 3
80202fc4: 13 05 05 80  	addi	a0, a0, -2048
80202fc8: 23 30 a4 fc  	sd	a0, -64(s0)
80202fcc: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202fd0 <.LBB0_33>:
80202fd0: 97 35 00 00  	auipc	a1, 3
80202fd4: 93 85 85 81  	addi	a1, a1, -2024
80202fd8: 13 05 84 f8  	addi	a0, s0, -120
80202fdc: 13 06 04 fa  	addi	a2, s0, -96
80202fe0: 97 10 00 00  	auipc	ra, 1
80202fe4: e7 80 e0 bd  	jalr	-1058(ra)
80202fe8: 63 18 05 20  	bnez	a0, 0x802031f8 <.LBB0_50>
80202fec: 23 34 24 f9  	sd	s2, -120(s0)
80202ff0: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ff4 <.LBB0_34>:
80202ff4: 17 25 00 00  	auipc	a0, 2
80202ff8: 13 05 45 49  	addi	a0, a0, 1172
80202ffc: 23 38 a4 fa  	sd	a0, -80(s0)
80203000: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080203004 <.LBB0_35>:
80203004: 17 25 00 00  	auipc	a0, 2
80203008: 13 05 c5 43  	addi	a0, a0, 1084
8020300c: 23 30 a4 fc  	sd	a0, -64(s0)
80203010: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203014 <.LBB0_36>:
80203014: 97 25 00 00  	auipc	a1, 2
80203018: 93 85 45 7d  	addi	a1, a1, 2004
8020301c: 13 05 84 f8  	addi	a0, s0, -120
80203020: 13 06 04 fa  	addi	a2, s0, -96
80203024: 97 10 00 00  	auipc	ra, 1
80203028: e7 80 a0 b9  	jalr	-1126(ra)
8020302c: 63 16 05 1c  	bnez	a0, 0x802031f8 <.LBB0_50>
;         trapinithart(); 	// 设置中断向量
80203030: 97 f0 ff ff  	auipc	ra, 1048575
80203034: e7 80 20 75  	jalr	1874(ra)
80203038: 37 05 00 0c  	lui	a0, 49152
8020303c: 85 49        	li	s3, 1
8020303e: 23 24 35 03  	sw	s3, 40(a0)
80203042: 23 22 35 01  	sw	s3, 4(a0)
80203046: 13 09 04 fd  	addi	s2, s0, -48
8020304a: 23 34 24 f9  	sd	s2, -120(s0)
8020304e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203052 <.LBB0_37>:
80203052: 17 25 00 00  	auipc	a0, 2
80203056: 13 05 e5 2d  	addi	a0, a0, 734
8020305a: 23 38 a4 fa  	sd	a0, -80(s0)
8020305e: 23 3c 34 fb  	sd	s3, -72(s0)

0000000080203062 <.LBB0_38>:
80203062: 97 24 00 00  	auipc	s1, 2
80203066: 93 84 64 12  	addi	s1, s1, 294
8020306a: 23 30 94 fc  	sd	s1, -64(s0)
8020306e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203072 <.LBB0_39>:
80203072: 97 25 00 00  	auipc	a1, 2
80203076: 93 85 65 77  	addi	a1, a1, 1910
8020307a: 13 05 84 f8  	addi	a0, s0, -120
8020307e: 13 06 04 fa  	addi	a2, s0, -96
80203082: 97 10 00 00  	auipc	ra, 1
80203086: e7 80 c0 b3  	jalr	-1220(ra)
8020308a: 63 17 05 16  	bnez	a0, 0x802031f8 <.LBB0_50>
;     let hart = cpuid();
8020308e: 97 f0 ff ff  	auipc	ra, 1048575
80203092: e7 80 40 69  	jalr	1684(ra)
;     PLIC + 0x2080 + hart * 0x100
80203096: 93 15 85 00  	slli	a1, a0, 8
8020309a: 37 26 00 0c  	lui	a2, 49154
8020309e: b2 95        	add	a1, a1, a2
802030a0: 13 06 20 40  	li	a2, 1026
802030a4: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802030a8: 36 05        	slli	a0, a0, 13
802030aa: b7 15 20 0c  	lui	a1, 49665
802030ae: 2e 95        	add	a0, a0, a1
802030b0: 23 20 05 00  	sw	zero, 0(a0)
802030b4: 23 34 24 f9  	sd	s2, -120(s0)
802030b8: 23 30 04 fa  	sd	zero, -96(s0)

00000000802030bc <.LBB0_40>:
802030bc: 17 25 00 00  	auipc	a0, 2
802030c0: 13 05 c5 29  	addi	a0, a0, 668
802030c4: 23 38 a4 fa  	sd	a0, -80(s0)
802030c8: 23 3c 34 fb  	sd	s3, -72(s0)
802030cc: 23 30 94 fc  	sd	s1, -64(s0)
802030d0: 23 34 04 fc  	sd	zero, -56(s0)

00000000802030d4 <.LBB0_41>:
802030d4: 97 25 00 00  	auipc	a1, 2
802030d8: 93 85 45 71  	addi	a1, a1, 1812
802030dc: 13 05 84 f8  	addi	a0, s0, -120
802030e0: 13 06 04 fa  	addi	a2, s0, -96
802030e4: 97 10 00 00  	auipc	ra, 1
802030e8: e7 80 a0 ad  	jalr	-1318(ra)
802030ec: 63 16 05 10  	bnez	a0, 0x802031f8 <.LBB0_50>
802030f0: 0f 00 10 03  	fence	rw, w

00000000802030f4 <.LBB0_42>:
802030f4: 17 95 01 00  	auipc	a0, 25
802030f8: 13 05 45 8a  	addi	a0, a0, -1884
802030fc: 85 45        	li	a1, 1
802030fe: 23 00 b5 00  	sb	a1, 0(a0)
80203102: 05 a2        	j	0x80203222 <.LBB0_53>

0000000080203104 <.LBB0_43>:
80203104: 17 95 01 00  	auipc	a0, 25
80203108: 13 05 45 89  	addi	a0, a0, -1900
8020310c: 0f 00 30 03  	fence	rw, rw
80203110: 83 05 05 00  	lb	a1, 0(a0)
80203114: 0f 00 30 02  	fence	r, rw
80203118: f5 d9        	beqz	a1, 0x8020310c <.LBB0_43+0x8>
;         println!("hart {} starting...", cpuid());
8020311a: 97 f0 ff ff  	auipc	ra, 1048575
8020311e: e7 80 80 60  	jalr	1544(ra)
80203122: 23 30 a4 f8  	sd	a0, -128(s0)
80203126: 13 05 04 f8  	addi	a0, s0, -128
8020312a: 23 34 a4 f8  	sd	a0, -120(s0)

000000008020312e <.LBB0_44>:
8020312e: 17 15 00 00  	auipc	a0, 1
80203132: 13 05 05 41  	addi	a0, a0, 1040
80203136: 23 38 a4 f8  	sd	a0, -112(s0)
8020313a: 13 09 04 fd  	addi	s2, s0, -48
8020313e: 23 3c 24 f9  	sd	s2, -104(s0)
80203142: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203146 <.LBB0_45>:
80203146: 17 25 00 00  	auipc	a0, 2
8020314a: 13 05 25 53  	addi	a0, a0, 1330
8020314e: 23 38 a4 fa  	sd	a0, -80(s0)
80203152: 09 45        	li	a0, 2
80203154: 23 3c a4 fa  	sd	a0, -72(s0)
80203158: 13 05 84 f8  	addi	a0, s0, -120
8020315c: 23 30 a4 fc  	sd	a0, -64(s0)
80203160: 85 44        	li	s1, 1
80203162: 23 34 94 fc  	sd	s1, -56(s0)

0000000080203166 <.LBB0_46>:
80203166: 97 25 00 00  	auipc	a1, 2
8020316a: 93 85 25 68  	addi	a1, a1, 1666
8020316e: 13 05 84 f9  	addi	a0, s0, -104
80203172: 13 06 04 fa  	addi	a2, s0, -96
80203176: 97 10 00 00  	auipc	ra, 1
8020317a: e7 80 80 a4  	jalr	-1464(ra)
8020317e: 2d ed        	bnez	a0, 0x802031f8 <.LBB0_50>
;         kvminithart();
80203180: 97 00 00 00  	auipc	ra, 0
80203184: e7 80 e0 31  	jalr	798(ra)
;         trapinithart();
80203188: 97 f0 ff ff  	auipc	ra, 1048575
8020318c: e7 80 a0 5f  	jalr	1530(ra)
;     let hart = cpuid();
80203190: 97 f0 ff ff  	auipc	ra, 1048575
80203194: e7 80 20 59  	jalr	1426(ra)
;     PLIC + 0x2080 + hart * 0x100
80203198: 93 15 85 00  	slli	a1, a0, 8
8020319c: 37 26 00 0c  	lui	a2, 49154
802031a0: b2 95        	add	a1, a1, a2
802031a2: 13 06 20 40  	li	a2, 1026
802031a6: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802031aa: 36 05        	slli	a0, a0, 13
802031ac: b7 15 20 0c  	lui	a1, 49665
802031b0: 2e 95        	add	a0, a0, a1
802031b2: 23 20 05 00  	sw	zero, 0(a0)
802031b6: 23 34 24 f9  	sd	s2, -120(s0)
802031ba: 23 30 04 fa  	sd	zero, -96(s0)

00000000802031be <.LBB0_47>:
802031be: 17 25 00 00  	auipc	a0, 2
802031c2: 13 05 a5 19  	addi	a0, a0, 410
802031c6: 23 38 a4 fa  	sd	a0, -80(s0)
802031ca: 23 3c 94 fa  	sd	s1, -72(s0)

00000000802031ce <.LBB0_48>:
802031ce: 17 25 00 00  	auipc	a0, 2
802031d2: 13 05 a5 fb  	addi	a0, a0, -70
802031d6: 23 30 a4 fc  	sd	a0, -64(s0)
802031da: 23 34 04 fc  	sd	zero, -56(s0)

00000000802031de <.LBB0_49>:
802031de: 97 25 00 00  	auipc	a1, 2
802031e2: 93 85 a5 60  	addi	a1, a1, 1546
802031e6: 13 05 84 f8  	addi	a0, s0, -120
802031ea: 13 06 04 fa  	addi	a2, s0, -96
802031ee: 97 10 00 00  	auipc	ra, 1
802031f2: e7 80 00 9d  	jalr	-1584(ra)
802031f6: 15 c5        	beqz	a0, 0x80203222 <.LBB0_53>

00000000802031f8 <.LBB0_50>:
802031f8: 17 25 00 00  	auipc	a0, 2
802031fc: 13 05 05 62  	addi	a0, a0, 1568

0000000080203200 <.LBB0_51>:
80203200: 97 26 00 00  	auipc	a3, 2
80203204: 93 86 86 64  	addi	a3, a3, 1608

0000000080203208 <.LBB0_52>:
80203208: 17 27 00 00  	auipc	a4, 2
8020320c: 13 07 07 67  	addi	a4, a4, 1648
80203210: 93 05 b0 02  	li	a1, 43
80203214: 13 06 04 fd  	addi	a2, s0, -48
80203218: 97 10 00 00  	auipc	ra, 1
8020321c: e7 80 80 92  	jalr	-1752(ra)
80203220: 00 00        	unimp	

0000000080203222 <.LBB0_53>:
80203222: 17 25 00 00  	auipc	a0, 2
80203226: 13 05 e5 4c  	addi	a0, a0, 1230
8020322a: 23 38 a4 fa  	sd	a0, -80(s0)
8020322e: 05 45        	li	a0, 1
80203230: 23 3c a4 fa  	sd	a0, -72(s0)
80203234: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203238 <.LBB0_54>:
80203238: 17 25 00 00  	auipc	a0, 2
8020323c: 13 05 85 42  	addi	a0, a0, 1064
80203240: 23 30 a4 fc  	sd	a0, -64(s0)
80203244: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203248 <.LBB0_55>:
;     panic!("Shutdown!");
80203248: 97 25 00 00  	auipc	a1, 2
8020324c: 93 85 85 4c  	addi	a1, a1, 1224
80203250: 13 05 04 fa  	addi	a0, s0, -96
80203254: 97 10 00 00  	auipc	ra, 1
80203258: e7 80 20 85  	jalr	-1966(ra)
8020325c: 00 00        	unimp	

000000008020325e <_ZN6kernel6memory3kvm7kvminit17h69f7d250a71e7693E>:
; pub fn kvminit() {
8020325e: 59 71        	addi	sp, sp, -112
80203260: 86 f4        	sd	ra, 104(sp)
80203262: a2 f0        	sd	s0, 96(sp)
80203264: a6 ec        	sd	s1, 88(sp)
80203266: ca e8        	sd	s2, 80(sp)
80203268: ce e4        	sd	s3, 72(sp)
8020326a: 80 18        	addi	s0, sp, 112
8020326c: 0f 00 30 03  	fence	rw, rw

0000000080203270 <.LBB1_19>:
80203270: 97 44 01 00  	auipc	s1, 20
80203274: 93 84 84 3d  	addi	s1, s1, 984
80203278: 88 68        	ld	a0, 16(s1)
8020327a: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020327e: 29 e9        	bnez	a0, 0x802032d0 <.LBB1_19+0x60>
80203280: 93 85 04 01  	addi	a1, s1, 16
80203284: 85 49        	li	s3, 1
80203286: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020328a: 01 e5        	bnez	a0, 0x80203292 <.LBB1_19+0x22>
8020328c: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80203290: 7d fa        	bnez	a2, 0x80203286 <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
80203292: 1d ed        	bnez	a0, 0x802032d0 <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203294: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80203298: 97 00 00 00  	auipc	ra, 0
8020329c: e7 80 60 9c  	jalr	-1594(ra)
802032a0: 2a 89        	mv	s2, a0
802032a2: 05 66        	lui	a2, 1
802032a4: 81 45        	li	a1, 0
802032a6: 97 10 00 00  	auipc	ra, 1
802032aa: e7 80 00 2d  	jalr	720(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802032ae: 23 b0 34 01  	sd	s3, 0(s1)
802032b2: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
802032b6: 23 04 04 fa  	sb	zero, -88(s0)
802032ba: 0f 00 10 03  	fence	rw, w
802032be: 09 45        	li	a0, 2
802032c0: 88 e8        	sd	a0, 16(s1)
802032c2: 13 05 04 fa  	addi	a0, s0, -96
802032c6: 97 00 00 00  	auipc	ra, 0
802032ca: e7 80 a0 59  	jalr	1434(ra)
802032ce: 05 a0        	j	0x802032ee <.LBB1_19+0x7e>
802032d0: 85 45        	li	a1, 1
;             match status {
802032d2: 63 1b b5 00  	bne	a0, a1, 0x802032e8 <.LBB1_19+0x78>
802032d6: 0f 00 00 01  	fence	w, 0
802032da: 0f 00 30 03  	fence	rw, rw
802032de: 88 68        	ld	a0, 16(s1)
802032e0: 0f 00 30 02  	fence	r, rw
;             match status {
802032e4: e3 09 b5 fe  	beq	a0, a1, 0x802032d6 <.LBB1_19+0x66>
802032e8: 89 45        	li	a1, 2
;             match status {
802032ea: 63 19 b5 10  	bne	a0, a1, 0x802033fc <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
802032ee: 13 89 84 00  	addi	s2, s1, 8
802032f2: b7 05 00 10  	lui	a1, 65536
802032f6: 05 66        	lui	a2, 1
802032f8: b7 06 00 10  	lui	a3, 65536
802032fc: 19 47        	li	a4, 6
802032fe: 4a 85        	mv	a0, s2
80203300: 97 f0 ff ff  	auipc	ra, 1048575
80203304: e7 80 00 0a  	jalr	160(ra)
80203308: 63 08 05 12  	beqz	a0, 0x80203438 <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
8020330c: b7 15 00 10  	lui	a1, 65537
80203310: 05 66        	lui	a2, 1
80203312: b7 16 00 10  	lui	a3, 65537
80203316: 19 47        	li	a4, 6
80203318: 4a 85        	mv	a0, s2
8020331a: 97 f0 ff ff  	auipc	ra, 1048575
8020331e: e7 80 60 08  	jalr	134(ra)
80203322: 63 0b 05 10  	beqz	a0, 0x80203438 <.LBB1_29>
80203326: b7 05 00 0c  	lui	a1, 49152
8020332a: 37 06 40 00  	lui	a2, 1024
8020332e: b7 06 00 0c  	lui	a3, 49152
80203332: 19 47        	li	a4, 6
80203334: 4a 85        	mv	a0, s2
80203336: 97 f0 ff ff  	auipc	ra, 1048575
8020333a: e7 80 a0 06  	jalr	106(ra)
8020333e: 6d cd        	beqz	a0, 0x80203438 <.LBB1_29>

0000000080203340 <.LBB1_20>:
80203340: 97 24 00 00  	auipc	s1, 2
80203344: 93 84 04 cc  	addi	s1, s1, -832
80203348: 13 05 f0 bf  	li	a0, -1025
8020334c: 56 05        	slli	a0, a0, 21
8020334e: 33 86 a4 00  	add	a2, s1, a0
80203352: 13 05 10 40  	li	a0, 1025
80203356: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
8020335a: 29 47        	li	a4, 10
8020335c: 4a 85        	mv	a0, s2
8020335e: ae 86        	mv	a3, a1
80203360: 97 f0 ff ff  	auipc	ra, 1048575
80203364: e7 80 00 04  	jalr	64(ra)
80203368: 61 c9        	beqz	a0, 0x80203438 <.LBB1_29>
8020336a: 45 45        	li	a0, 17
8020336c: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
8020336e: 33 06 95 40  	sub	a2, a0, s1
80203372: 19 47        	li	a4, 6
80203374: 4a 85        	mv	a0, s2
80203376: a6 85        	mv	a1, s1
80203378: a6 86        	mv	a3, s1
8020337a: 97 f0 ff ff  	auipc	ra, 1048575
8020337e: e7 80 60 02  	jalr	38(ra)
80203382: 5d c9        	beqz	a0, 0x80203438 <.LBB1_29>

0000000080203384 <.LBB1_21>:
80203384: 97 e6 ff ff  	auipc	a3, 1048574
80203388: 93 86 c6 c7  	addi	a3, a3, -900
8020338c: 37 05 00 04  	lui	a0, 16384
80203390: 7d 35        	addiw	a0, a0, -1
80203392: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80203396: 05 66        	lui	a2, 1
80203398: 29 47        	li	a4, 10
8020339a: 4a 85        	mv	a0, s2
8020339c: 97 f0 ff ff  	auipc	ra, 1048575
802033a0: e7 80 40 00  	jalr	4(ra)
802033a4: 51 c9        	beqz	a0, 0x80203438 <.LBB1_29>
802033a6: 13 05 04 fd  	addi	a0, s0, -48
802033aa: 23 3c a4 f8  	sd	a0, -104(s0)
802033ae: 23 30 04 fa  	sd	zero, -96(s0)

00000000802033b2 <.LBB1_22>:
802033b2: 17 25 00 00  	auipc	a0, 2
802033b6: 13 05 65 3d  	addi	a0, a0, 982
802033ba: 23 38 a4 fa  	sd	a0, -80(s0)
802033be: 05 45        	li	a0, 1
802033c0: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802033c4 <.LBB1_23>:
802033c4: 17 25 00 00  	auipc	a0, 2
802033c8: 13 05 45 36  	addi	a0, a0, 868
802033cc: 23 30 a4 fc  	sd	a0, -64(s0)
802033d0: 23 34 04 fc  	sd	zero, -56(s0)

00000000802033d4 <.LBB1_24>:
802033d4: 97 25 00 00  	auipc	a1, 2
802033d8: 93 85 45 41  	addi	a1, a1, 1044
802033dc: 13 05 84 f9  	addi	a0, s0, -104
802033e0: 13 06 04 fa  	addi	a2, s0, -96
802033e4: 97 00 00 00  	auipc	ra, 0
802033e8: e7 80 a0 7d  	jalr	2010(ra)
802033ec: 41 e5        	bnez	a0, 0x80203474 <.LBB1_32>
; }
802033ee: a6 70        	ld	ra, 104(sp)
802033f0: 06 74        	ld	s0, 96(sp)
802033f2: e6 64        	ld	s1, 88(sp)
802033f4: 46 69        	ld	s2, 80(sp)
802033f6: a6 69        	ld	s3, 72(sp)
802033f8: 65 61        	addi	sp, sp, 112
802033fa: 82 80        	ret
;             match status {
802033fc: 05 e1        	bnez	a0, 0x8020341c <.LBB1_27>

00000000802033fe <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
802033fe: 17 25 00 00  	auipc	a0, 2
80203402: 13 05 a5 c8  	addi	a0, a0, -886

0000000080203406 <.LBB1_26>:
80203406: 17 26 00 00  	auipc	a2, 2
8020340a: 13 06 a6 ca  	addi	a2, a2, -854
8020340e: 93 05 80 02  	li	a1, 40
80203412: 97 00 00 00  	auipc	ra, 0
80203416: e7 80 20 6c  	jalr	1730(ra)
8020341a: 00 00        	unimp	

000000008020341c <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
8020341c: 17 25 00 00  	auipc	a0, 2
80203420: 13 05 45 be  	addi	a0, a0, -1052

0000000080203424 <.LBB1_28>:
80203424: 17 26 00 00  	auipc	a2, 2
80203428: 13 06 c6 c4  	addi	a2, a2, -948
8020342c: c5 45        	li	a1, 17
8020342e: 97 00 00 00  	auipc	ra, 0
80203432: e7 80 60 6a  	jalr	1702(ra)
80203436: 00 00        	unimp	

0000000080203438 <.LBB1_29>:
80203438: 17 25 00 00  	auipc	a0, 2
8020343c: 13 05 85 2f  	addi	a0, a0, 760
80203440: 23 38 a4 fa  	sd	a0, -80(s0)
80203444: 05 45        	li	a0, 1
80203446: 23 3c a4 fa  	sd	a0, -72(s0)
8020344a: 23 30 04 fa  	sd	zero, -96(s0)

000000008020344e <.LBB1_30>:
8020344e: 17 25 00 00  	auipc	a0, 2
80203452: 13 05 a5 2d  	addi	a0, a0, 730
80203456: 23 30 a4 fc  	sd	a0, -64(s0)
8020345a: 23 34 04 fc  	sd	zero, -56(s0)

000000008020345e <.LBB1_31>:
8020345e: 97 25 00 00  	auipc	a1, 2
80203462: 93 85 a5 2f  	addi	a1, a1, 762
80203466: 13 05 04 fa  	addi	a0, s0, -96
8020346a: 97 00 00 00  	auipc	ra, 0
8020346e: e7 80 c0 63  	jalr	1596(ra)
80203472: 00 00        	unimp	

0000000080203474 <.LBB1_32>:
80203474: 17 25 00 00  	auipc	a0, 2
80203478: 13 05 45 3a  	addi	a0, a0, 932

000000008020347c <.LBB1_33>:
8020347c: 97 26 00 00  	auipc	a3, 2
80203480: 93 86 c6 3c  	addi	a3, a3, 972

0000000080203484 <.LBB1_34>:
80203484: 17 27 00 00  	auipc	a4, 2
80203488: 13 07 47 3f  	addi	a4, a4, 1012
8020348c: 93 05 b0 02  	li	a1, 43
80203490: 13 06 04 fd  	addi	a2, s0, -48
80203494: 97 00 00 00  	auipc	ra, 0
80203498: e7 80 c0 6a  	jalr	1708(ra)
8020349c: 00 00        	unimp	

000000008020349e <_ZN6kernel6memory3kvm11kvminithart17h64b330979084956eE>:
; pub fn kvminithart() {
8020349e: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802034a0: 86 f4        	sd	ra, 104(sp)
802034a2: a2 f0        	sd	s0, 96(sp)
802034a4: a6 ec        	sd	s1, 88(sp)
802034a6: ca e8        	sd	s2, 80(sp)
802034a8: ce e4        	sd	s3, 72(sp)
802034aa: 80 18        	addi	s0, sp, 112
802034ac: 73 00 00 12  	sfence.vma
802034b0: 0f 00 30 03  	fence	rw, rw

00000000802034b4 <.LBB2_12>:
802034b4: 97 44 01 00  	auipc	s1, 20
802034b8: 93 84 44 19  	addi	s1, s1, 404
802034bc: 88 68        	ld	a0, 16(s1)
802034be: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802034c2: 29 e9        	bnez	a0, 0x80203514 <.LBB2_12+0x60>
802034c4: 93 85 04 01  	addi	a1, s1, 16
802034c8: 85 49        	li	s3, 1
802034ca: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802034ce: 01 e5        	bnez	a0, 0x802034d6 <.LBB2_12+0x22>
802034d0: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802034d4: 7d fa        	bnez	a2, 0x802034ca <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
802034d6: 1d ed        	bnez	a0, 0x80203514 <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802034d8: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802034dc: 97 f0 ff ff  	auipc	ra, 1048575
802034e0: e7 80 20 78  	jalr	1922(ra)
802034e4: 2a 89        	mv	s2, a0
802034e6: 05 66        	lui	a2, 1
802034e8: 81 45        	li	a1, 0
802034ea: 97 10 00 00  	auipc	ra, 1
802034ee: e7 80 c0 08  	jalr	140(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802034f2: 23 b0 34 01  	sd	s3, 0(s1)
802034f6: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
802034fa: 23 04 04 fa  	sb	zero, -88(s0)
802034fe: 0f 00 10 03  	fence	rw, w
80203502: 09 45        	li	a0, 2
80203504: 88 e8        	sd	a0, 16(s1)
80203506: 13 05 04 fa  	addi	a0, s0, -96
8020350a: 97 00 00 00  	auipc	ra, 0
8020350e: e7 80 60 35  	jalr	854(ra)
80203512: 05 a0        	j	0x80203532 <.LBB2_12+0x7e>
80203514: 85 45        	li	a1, 1
;             match status {
80203516: 63 1b b5 00  	bne	a0, a1, 0x8020352c <.LBB2_12+0x78>
8020351a: 0f 00 00 01  	fence	w, 0
8020351e: 0f 00 30 03  	fence	rw, rw
80203522: 88 68        	ld	a0, 16(s1)
80203524: 0f 00 30 02  	fence	r, rw
;             match status {
80203528: e3 09 b5 fe  	beq	a0, a1, 0x8020351a <.LBB2_12+0x66>
8020352c: 89 45        	li	a1, 2
;             match status {
8020352e: 63 16 b5 06  	bne	a0, a1, 0x8020359a <.LBB2_15+0x28>
;         self.data as Addr
80203532: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80203534: 31 81        	srli	a0, a0, 12
80203536: fd 55        	li	a1, -1
80203538: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
8020353a: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020353c: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80203540: 73 00 00 12  	sfence.vma
80203544: 13 05 04 fd  	addi	a0, s0, -48
80203548: 23 3c a4 f8  	sd	a0, -104(s0)
8020354c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203550 <.LBB2_13>:
80203550: 17 25 00 00  	auipc	a0, 2
80203554: 13 05 05 26  	addi	a0, a0, 608
80203558: 23 38 a4 fa  	sd	a0, -80(s0)
8020355c: 05 45        	li	a0, 1
8020355e: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080203562 <.LBB2_14>:
80203562: 17 25 00 00  	auipc	a0, 2
80203566: 13 05 65 1c  	addi	a0, a0, 454
8020356a: 23 30 a4 fc  	sd	a0, -64(s0)
8020356e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203572 <.LBB2_15>:
80203572: 97 25 00 00  	auipc	a1, 2
80203576: 93 85 65 27  	addi	a1, a1, 630
8020357a: 13 05 84 f9  	addi	a0, s0, -104
8020357e: 13 06 04 fa  	addi	a2, s0, -96
80203582: 97 00 00 00  	auipc	ra, 0
80203586: e7 80 c0 63  	jalr	1596(ra)
8020358a: 31 e5        	bnez	a0, 0x802035d6 <.LBB2_20>
; }
8020358c: a6 70        	ld	ra, 104(sp)
8020358e: 06 74        	ld	s0, 96(sp)
80203590: e6 64        	ld	s1, 88(sp)
80203592: 46 69        	ld	s2, 80(sp)
80203594: a6 69        	ld	s3, 72(sp)
80203596: 65 61        	addi	sp, sp, 112
80203598: 82 80        	ret
;             match status {
8020359a: 05 e1        	bnez	a0, 0x802035ba <.LBB2_18>

000000008020359c <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
8020359c: 17 25 00 00  	auipc	a0, 2
802035a0: 13 05 c5 ae  	addi	a0, a0, -1300

00000000802035a4 <.LBB2_17>:
802035a4: 17 26 00 00  	auipc	a2, 2
802035a8: 13 06 c6 b0  	addi	a2, a2, -1268
802035ac: 93 05 80 02  	li	a1, 40
802035b0: 97 00 00 00  	auipc	ra, 0
802035b4: e7 80 40 52  	jalr	1316(ra)
802035b8: 00 00        	unimp	

00000000802035ba <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
802035ba: 17 25 00 00  	auipc	a0, 2
802035be: 13 05 65 a4  	addi	a0, a0, -1466

00000000802035c2 <.LBB2_19>:
802035c2: 17 26 00 00  	auipc	a2, 2
802035c6: 13 06 e6 aa  	addi	a2, a2, -1362
802035ca: c5 45        	li	a1, 17
802035cc: 97 00 00 00  	auipc	ra, 0
802035d0: e7 80 80 50  	jalr	1288(ra)
802035d4: 00 00        	unimp	

00000000802035d6 <.LBB2_20>:
802035d6: 17 25 00 00  	auipc	a0, 2
802035da: 13 05 25 24  	addi	a0, a0, 578

00000000802035de <.LBB2_21>:
802035de: 97 26 00 00  	auipc	a3, 2
802035e2: 93 86 a6 26  	addi	a3, a3, 618

00000000802035e6 <.LBB2_22>:
802035e6: 17 27 00 00  	auipc	a4, 2
802035ea: 13 07 27 29  	addi	a4, a4, 658
802035ee: 93 05 b0 02  	li	a1, 43
802035f2: 13 06 04 fd  	addi	a2, s0, -48
802035f6: 97 00 00 00  	auipc	ra, 0
802035fa: e7 80 a0 54  	jalr	1354(ra)
802035fe: 00 00        	unimp	

0000000080203600 <__rg_dealloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80203600: 41 11        	addi	sp, sp, -16
80203602: 06 e4        	sd	ra, 8(sp)
80203604: 22 e0        	sd	s0, 0(sp)
80203606: 00 08        	addi	s0, sp, 16

0000000080203608 <.LBB1_1>:
80203608: 97 86 01 00  	auipc	a3, 24
8020360c: 93 86 86 26  	addi	a3, a3, 616
80203610: 32 87        	mv	a4, a2
80203612: 2e 86        	mv	a2, a1
80203614: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80203616: 36 85        	mv	a0, a3
80203618: ba 86        	mv	a3, a4
8020361a: a2 60        	ld	ra, 8(sp)
8020361c: 02 64        	ld	s0, 0(sp)
8020361e: 41 01        	addi	sp, sp, 16
80203620: 17 03 00 00  	auipc	t1, 0
80203624: 67 00 e3 41  	jr	1054(t1)

0000000080203628 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h2249d29917c459d5E.llvm.4083877564300098722>:
80203628: 41 11        	addi	sp, sp, -16
8020362a: 06 e4        	sd	ra, 8(sp)
8020362c: 22 e0        	sd	s0, 0(sp)
8020362e: 00 08        	addi	s0, sp, 16
80203630: a2 60        	ld	ra, 8(sp)
80203632: 02 64        	ld	s0, 0(sp)
80203634: 41 01        	addi	sp, sp, 16
80203636: 82 80        	ret

0000000080203638 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722>:
80203638: 01 11        	addi	sp, sp, -32
8020363a: 06 ec        	sd	ra, 24(sp)
8020363c: 22 e8        	sd	s0, 16(sp)
8020363e: 00 10        	addi	s0, sp, 32
80203640: 1b 85 05 00  	sext.w	a0, a1
80203644: 13 06 00 08  	li	a2, 128
80203648: 23 26 04 fe  	sw	zero, -20(s0)
8020364c: 63 76 c5 00  	bgeu	a0, a2, 0x80203658 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x20>
80203650: 23 06 b4 fe  	sb	a1, -20(s0)
80203654: 05 45        	li	a0, 1
80203656: 51 a8        	j	0x802036ea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
80203658: 1b d5 b5 00  	srliw	a0, a1, 11
8020365c: 19 ed        	bnez	a0, 0x8020367a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x42>
8020365e: 13 d5 65 00  	srli	a0, a1, 6
80203662: 13 65 05 0c  	ori	a0, a0, 192
80203666: 23 06 a4 fe  	sb	a0, -20(s0)
8020366a: 13 f5 f5 03  	andi	a0, a1, 63
8020366e: 13 65 05 08  	ori	a0, a0, 128
80203672: a3 06 a4 fe  	sb	a0, -19(s0)
80203676: 09 45        	li	a0, 2
80203678: 8d a8        	j	0x802036ea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
8020367a: 1b d5 05 01  	srliw	a0, a1, 16
8020367e: 05 e9        	bnez	a0, 0x802036ae <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x76>
80203680: 13 95 05 02  	slli	a0, a1, 32
80203684: 01 91        	srli	a0, a0, 32
80203686: 1b d6 c5 00  	srliw	a2, a1, 12
8020368a: 13 66 06 0e  	ori	a2, a2, 224
8020368e: 23 06 c4 fe  	sb	a2, -20(s0)
80203692: 52 15        	slli	a0, a0, 52
80203694: 69 91        	srli	a0, a0, 58
80203696: 13 65 05 08  	ori	a0, a0, 128
8020369a: a3 06 a4 fe  	sb	a0, -19(s0)
8020369e: 13 f5 f5 03  	andi	a0, a1, 63
802036a2: 13 65 05 08  	ori	a0, a0, 128
802036a6: 23 07 a4 fe  	sb	a0, -18(s0)
802036aa: 0d 45        	li	a0, 3
802036ac: 3d a8        	j	0x802036ea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
802036ae: 13 95 05 02  	slli	a0, a1, 32
802036b2: 01 91        	srli	a0, a0, 32
802036b4: 13 16 b5 02  	slli	a2, a0, 43
802036b8: 75 92        	srli	a2, a2, 61
802036ba: 13 66 06 0f  	ori	a2, a2, 240
802036be: 23 06 c4 fe  	sb	a2, -20(s0)
802036c2: 13 16 e5 02  	slli	a2, a0, 46
802036c6: 69 92        	srli	a2, a2, 58
802036c8: 13 66 06 08  	ori	a2, a2, 128
802036cc: a3 06 c4 fe  	sb	a2, -19(s0)
802036d0: 52 15        	slli	a0, a0, 52
802036d2: 69 91        	srli	a0, a0, 58
802036d4: 13 65 05 08  	ori	a0, a0, 128
802036d8: 23 07 a4 fe  	sb	a0, -18(s0)
802036dc: 13 f5 f5 03  	andi	a0, a1, 63
802036e0: 13 65 05 08  	ori	a0, a0, 128
802036e4: a3 07 a4 fe  	sb	a0, -17(s0)
802036e8: 11 45        	li	a0, 4
802036ea: 93 06 c4 fe  	addi	a3, s0, -20
802036ee: 33 87 a6 00  	add	a4, a3, a0
802036f2: 13 03 f0 0d  	li	t1, 223
802036f6: 13 08 00 0f  	li	a6, 240
802036fa: b7 02 11 00  	lui	t0, 272
802036fe: 85 48        	li	a7, 1
80203700: 01 a8        	j	0x80203710 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xd8>
80203702: 85 06        	addi	a3, a3, 1
;         asm!(
80203704: 81 45        	li	a1, 0
80203706: 01 46        	li	a2, 0
80203708: 73 00 00 00  	ecall	
8020370c: 63 8f e6 04  	beq	a3, a4, 0x8020376a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x132>
80203710: 83 85 06 00  	lb	a1, 0(a3)
80203714: 13 f5 f5 0f  	andi	a0, a1, 255
80203718: e3 d5 05 fe  	bgez	a1, 0x80203702 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xca>
8020371c: 03 c6 16 00  	lbu	a2, 1(a3)
80203720: 93 75 f5 01  	andi	a1, a0, 31
80203724: 13 76 f6 03  	andi	a2, a2, 63
80203728: 63 77 a3 02  	bgeu	t1, a0, 0x80203756 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x11e>
8020372c: 83 c7 26 00  	lbu	a5, 2(a3)
80203730: 1a 06        	slli	a2, a2, 6
80203732: 93 f7 f7 03  	andi	a5, a5, 63
80203736: 5d 8e        	or	a2, a2, a5
80203738: 63 64 05 03  	bltu	a0, a6, 0x80203760 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x128>
8020373c: 03 c5 36 00  	lbu	a0, 3(a3)
80203740: f6 15        	slli	a1, a1, 61
80203742: ad 91        	srli	a1, a1, 43
80203744: 1a 06        	slli	a2, a2, 6
80203746: 13 75 f5 03  	andi	a0, a0, 63
8020374a: 51 8d        	or	a0, a0, a2
8020374c: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020374e: 63 0e 55 00  	beq	a0, t0, 0x8020376a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x132>
80203752: 91 06        	addi	a3, a3, 4
80203754: 45 bf        	j	0x80203704 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
80203756: 89 06        	addi	a3, a3, 2
80203758: 13 95 65 00  	slli	a0, a1, 6
8020375c: 51 8d        	or	a0, a0, a2
8020375e: 5d b7        	j	0x80203704 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
80203760: 8d 06        	addi	a3, a3, 3
80203762: 13 95 c5 00  	slli	a0, a1, 12
80203766: 51 8d        	or	a0, a0, a2
80203768: 71 bf        	j	0x80203704 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
8020376a: 01 45        	li	a0, 0
8020376c: e2 60        	ld	ra, 24(sp)
8020376e: 42 64        	ld	s0, 16(sp)
80203770: 05 61        	addi	sp, sp, 32
80203772: 82 80        	ret

0000000080203774 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he6d319fcf4a5da0eE.llvm.4083877564300098722>:
80203774: 5d 71        	addi	sp, sp, -80
80203776: 86 e4        	sd	ra, 72(sp)
80203778: a2 e0        	sd	s0, 64(sp)
8020377a: 80 08        	addi	s0, sp, 80
8020377c: 08 61        	ld	a0, 0(a0)
8020377e: 90 75        	ld	a2, 40(a1)
80203780: 94 71        	ld	a3, 32(a1)
80203782: 23 3c a4 fa  	sd	a0, -72(s0)
80203786: 23 34 c4 fe  	sd	a2, -24(s0)
8020378a: 23 30 d4 fe  	sd	a3, -32(s0)
8020378e: 88 6d        	ld	a0, 24(a1)
80203790: 90 69        	ld	a2, 16(a1)
80203792: 94 65        	ld	a3, 8(a1)
80203794: 8c 61        	ld	a1, 0(a1)
80203796: 23 3c a4 fc  	sd	a0, -40(s0)
8020379a: 23 38 c4 fc  	sd	a2, -48(s0)
8020379e: 23 34 d4 fc  	sd	a3, -56(s0)
802037a2: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802037a6 <.LBB2_1>:
802037a6: 97 25 00 00  	auipc	a1, 2
802037aa: 93 85 25 04  	addi	a1, a1, 66
802037ae: 13 05 84 fb  	addi	a0, s0, -72
802037b2: 13 06 04 fc  	addi	a2, s0, -64
802037b6: 97 00 00 00  	auipc	ra, 0
802037ba: e7 80 80 40  	jalr	1032(ra)
802037be: a6 60        	ld	ra, 72(sp)
802037c0: 06 64        	ld	s0, 64(sp)
802037c2: 61 61        	addi	sp, sp, 80
802037c4: 82 80        	ret

00000000802037c6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722>:
802037c6: 41 11        	addi	sp, sp, -16
802037c8: 06 e4        	sd	ra, 8(sp)
802037ca: 22 e0        	sd	s0, 0(sp)
802037cc: 00 08        	addi	s0, sp, 16
802037ce: 41 c2        	beqz	a2, 0x8020384e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
802037d0: ae 86        	mv	a3, a1
802037d2: 33 87 c5 00  	add	a4, a1, a2
802037d6: 13 03 f0 0d  	li	t1, 223
802037da: 13 08 00 0f  	li	a6, 240
802037de: b7 02 11 00  	lui	t0, 272
802037e2: 85 48        	li	a7, 1
802037e4: 01 a8        	j	0x802037f4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x2e>
802037e6: 85 06        	addi	a3, a3, 1
;         asm!(
802037e8: 81 45        	li	a1, 0
802037ea: 01 46        	li	a2, 0
802037ec: 73 00 00 00  	ecall	
802037f0: 63 8f e6 04  	beq	a3, a4, 0x8020384e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
802037f4: 83 85 06 00  	lb	a1, 0(a3)
802037f8: 13 f5 f5 0f  	andi	a0, a1, 255
802037fc: e3 d5 05 fe  	bgez	a1, 0x802037e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x20>
80203800: 03 c6 16 00  	lbu	a2, 1(a3)
80203804: 93 75 f5 01  	andi	a1, a0, 31
80203808: 13 76 f6 03  	andi	a2, a2, 63
8020380c: 63 77 a3 02  	bgeu	t1, a0, 0x8020383a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x74>
80203810: 83 c7 26 00  	lbu	a5, 2(a3)
80203814: 1a 06        	slli	a2, a2, 6
80203816: 93 f7 f7 03  	andi	a5, a5, 63
8020381a: 5d 8e        	or	a2, a2, a5
8020381c: 63 64 05 03  	bltu	a0, a6, 0x80203844 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x7e>
80203820: 03 c5 36 00  	lbu	a0, 3(a3)
80203824: f6 15        	slli	a1, a1, 61
80203826: ad 91        	srli	a1, a1, 43
80203828: 1a 06        	slli	a2, a2, 6
8020382a: 13 75 f5 03  	andi	a0, a0, 63
8020382e: 51 8d        	or	a0, a0, a2
80203830: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203832: 63 0e 55 00  	beq	a0, t0, 0x8020384e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
80203836: 91 06        	addi	a3, a3, 4
80203838: 45 bf        	j	0x802037e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
8020383a: 89 06        	addi	a3, a3, 2
8020383c: 13 95 65 00  	slli	a0, a1, 6
80203840: 51 8d        	or	a0, a0, a2
80203842: 5d b7        	j	0x802037e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
80203844: 8d 06        	addi	a3, a3, 3
80203846: 13 95 c5 00  	slli	a0, a1, 12
8020384a: 51 8d        	or	a0, a0, a2
8020384c: 71 bf        	j	0x802037e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
8020384e: 01 45        	li	a0, 0
80203850: a2 60        	ld	ra, 8(sp)
80203852: 02 64        	ld	s0, 0(sp)
80203854: 41 01        	addi	sp, sp, 16
80203856: 82 80        	ret

0000000080203858 <__rust_dealloc>:
80203858: 17 03 00 00  	auipc	t1, 0
8020385c: 67 00 83 da  	jr	-600(t1)

0000000080203860 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
80203860: 41 11        	addi	sp, sp, -16
;         if self.panicked {
80203862: 06 e4        	sd	ra, 8(sp)
80203864: 22 e0        	sd	s0, 0(sp)
80203866: 00 08        	addi	s0, sp, 16
80203868: 83 45 85 00  	lbu	a1, 8(a0)
8020386c: 91 c5        	beqz	a1, 0x80203878 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
8020386e: 08 61        	ld	a0, 0(a0)
80203870: 0f 00 10 03  	fence	rw, w
80203874: 8d 45        	li	a1, 3
80203876: 0c e1        	sd	a1, 0(a0)
;     }
80203878: a2 60        	ld	ra, 8(sp)
8020387a: 02 64        	ld	s0, 0(sp)
8020387c: 41 01        	addi	sp, sp, 16
8020387e: 82 80        	ret

0000000080203880 <_ZN22buddy_system_allocator4Heap7dealloc17h04c2d84bc5a7a889E>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80203880: 41 11        	addi	sp, sp, -16
80203882: 06 e4        	sd	ra, 8(sp)
80203884: 22 e0        	sd	s0, 0(sp)
80203886: 00 08        	addi	s0, sp, 16
80203888: 05 47        	li	a4, 1
8020388a: 89 47        	li	a5, 2

000000008020388c <.LBB7_22>:
8020388c: 17 23 00 00  	auipc	t1, 2
80203890: 13 03 43 7d  	addi	t1, t1, 2004

0000000080203894 <.LBB7_23>:
80203894: 97 22 00 00  	auipc	t0, 2
80203898: 93 82 42 7d  	addi	t0, t0, 2004

000000008020389c <.LBB7_24>:
8020389c: 97 28 00 00  	auipc	a7, 2
802038a0: 93 88 48 7d  	addi	a7, a7, 2004

00000000802038a4 <.LBB7_25>:
802038a4: 17 28 00 00  	auipc	a6, 2
802038a8: 13 08 48 7d  	addi	a6, a6, 2004
802038ac: 63 7d f6 0c  	bgeu	a2, a5, 0x80203986 <.LBB7_25+0xe2>
802038b0: 63 72 d7 14  	bgeu	a4, a3, 0x802039f4 <.LBB7_25+0x150>
802038b4: 21 47        	li	a4, 8
802038b6: 63 73 d7 14  	bgeu	a4, a3, 0x802039fc <.LBB7_25+0x158>
802038ba: 63 84 06 14  	beqz	a3, 0x80203a02 <.LBB7_25+0x15e>
802038be: 93 83 f6 ff  	addi	t2, a3, -1
802038c2: 93 c7 f6 ff  	not	a5, a3
802038c6: 03 33 03 00  	ld	t1, 0(t1)
802038ca: b3 f3 77 00  	and	t2, a5, t2
802038ce: 03 b7 02 00  	ld	a4, 0(t0)
802038d2: 93 d7 13 00  	srli	a5, t2, 1
802038d6: b3 f7 67 00  	and	a5, a5, t1
802038da: b3 87 f3 40  	sub	a5, t2, a5
802038de: b3 f2 e7 00  	and	t0, a5, a4
802038e2: 89 83        	srli	a5, a5, 2
802038e4: 7d 8f        	and	a4, a4, a5
802038e6: 16 97        	add	a4, a4, t0
802038e8: 83 b8 08 00  	ld	a7, 0(a7)
802038ec: 03 38 08 00  	ld	a6, 0(a6)
802038f0: 93 57 47 00  	srli	a5, a4, 4
802038f4: 3e 97        	add	a4, a4, a5
802038f6: 33 77 17 01  	and	a4, a4, a7
802038fa: 33 07 07 03  	mul	a4, a4, a6
802038fe: 13 53 87 03  	srli	t1, a4, 56
80203902: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203904: 63 64 68 10  	bltu	a6, t1, 0x80203a0c <.LBB7_26>
80203908: 13 17 33 00  	slli	a4, t1, 3
8020390c: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
8020390e: 1c 63        	ld	a5, 0(a4)
80203910: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80203912: 0c e3        	sd	a1, 0(a4)
80203914: 85 48        	li	a7, 1
80203916: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80203918: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
8020391c: 93 17 33 00  	slli	a5, t1, 3
80203920: b3 03 f5 00  	add	t2, a0, a5
;                 let buddy = current_ptr ^ (1 << current_class);
80203924: 33 ce e2 00  	xor	t3, t0, a4
80203928: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
8020392a: 9d cd        	beqz	a1, 0x80203968 <.LBB7_25+0xc4>
8020392c: ae 87        	mv	a5, a1
8020392e: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80203930: 8c 61        	ld	a1, 0(a1)
80203932: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80203934: e3 1b fe fe  	bne	t3, a5, 0x8020392a <.LBB7_25+0x86>
;             *(self.prev) = *(self.curr);
80203938: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
8020393c: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80203940: 81 c5        	beqz	a1, 0x80203948 <.LBB7_25+0xa4>
;                 self.head = unsafe { *item as *mut usize };
80203942: 8c 61        	ld	a1, 0(a1)
80203944: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203948: 63 0e 03 0d  	beq	t1, a6, 0x80203a24 <.LBB7_27>
8020394c: 63 e3 c2 01  	bltu	t0, t3, 0x80203952 <.LBB7_25+0xae>
80203950: f2 82        	mv	t0, t3
80203952: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203954: 93 15 33 00  	slli	a1, t1, 3
80203958: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
8020395a: 98 61        	ld	a4, 0(a1)
8020395c: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80203960: 23 b0 55 00  	sd	t0, 0(a1)
80203964: 96 85        	mv	a1, t0
80203966: 4d bf        	j	0x80203918 <.LBB7_25+0x74>
;         self.user -= layout.size();
80203968: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
8020396c: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80203970: 91 8d        	sub	a1, a1, a2
80203972: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
80203976: b3 05 d7 40  	sub	a1, a4, a3
8020397a: 23 34 b5 10  	sd	a1, 264(a0)
;     }
8020397e: a2 60        	ld	ra, 8(sp)
80203980: 02 64        	ld	s0, 0(sp)
80203982: 41 01        	addi	sp, sp, 16
80203984: 82 80        	ret
80203986: 13 07 f6 ff  	addi	a4, a2, -1
8020398a: 93 57 17 00  	srli	a5, a4, 1
8020398e: 5d 8f        	or	a4, a4, a5
80203990: 93 57 27 00  	srli	a5, a4, 2
80203994: 5d 8f        	or	a4, a4, a5
80203996: 93 57 47 00  	srli	a5, a4, 4
8020399a: 5d 8f        	or	a4, a4, a5
8020399c: 93 57 87 00  	srli	a5, a4, 8
802039a0: 5d 8f        	or	a4, a4, a5
802039a2: 93 57 07 01  	srli	a5, a4, 16
802039a6: 5d 8f        	or	a4, a4, a5
802039a8: 93 57 07 02  	srli	a5, a4, 32
802039ac: 5d 8f        	or	a4, a4, a5
802039ae: 83 33 03 00  	ld	t2, 0(t1)
802039b2: 13 4e f7 ff  	not	t3, a4
802039b6: 83 b7 02 00  	ld	a5, 0(t0)
802039ba: 13 57 1e 00  	srli	a4, t3, 1
802039be: 33 77 77 00  	and	a4, a4, t2
802039c2: 33 07 ee 40  	sub	a4, t3, a4
802039c6: b3 73 f7 00  	and	t2, a4, a5
802039ca: 09 83        	srli	a4, a4, 2
802039cc: 7d 8f        	and	a4, a4, a5
802039ce: 1e 97        	add	a4, a4, t2
802039d0: 83 b3 08 00  	ld	t2, 0(a7)
802039d4: 03 3e 08 00  	ld	t3, 0(a6)
802039d8: 93 57 47 00  	srli	a5, a4, 4
802039dc: 3e 97        	add	a4, a4, a5
802039de: 33 77 77 00  	and	a4, a4, t2
802039e2: 33 07 c7 03  	mul	a4, a4, t3
802039e6: 61 93        	srli	a4, a4, 56
802039e8: fd 57        	li	a5, -1
802039ea: 33 d7 e7 00  	srl	a4, a5, a4
802039ee: 05 07        	addi	a4, a4, 1
802039f0: e3 62 d7 ec  	bltu	a4, a3, 0x802038b4 <.LBB7_25+0x10>
802039f4: ba 86        	mv	a3, a4
802039f6: 21 47        	li	a4, 8
802039f8: e3 61 d7 ec  	bltu	a4, a3, 0x802038ba <.LBB7_25+0x16>
802039fc: a1 46        	li	a3, 8
802039fe: e3 90 06 ec  	bnez	a3, 0x802038be <.LBB7_25+0x1a>
80203a02: 13 03 00 04  	li	t1, 64
80203a06: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203a08: e3 70 68 f0  	bgeu	a6, t1, 0x80203908 <.LBB7_25+0x64>

0000000080203a0c <.LBB7_26>:
80203a0c: 17 26 00 00  	auipc	a2, 2
80203a10: 13 06 46 ef  	addi	a2, a2, -268
80203a14: 93 05 00 02  	li	a1, 32
80203a18: 1a 85        	mv	a0, t1
80203a1a: 97 00 00 00  	auipc	ra, 0
80203a1e: e7 80 60 0e  	jalr	230(ra)
80203a22: 00 00        	unimp	

0000000080203a24 <.LBB7_27>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203a24: 17 26 00 00  	auipc	a2, 2
80203a28: 13 06 46 ef  	addi	a2, a2, -268
80203a2c: 13 05 00 02  	li	a0, 32
80203a30: 93 05 00 02  	li	a1, 32
80203a34: 97 00 00 00  	auipc	ra, 0
80203a38: e7 80 c0 0c  	jalr	204(ra)
80203a3c: 00 00        	unimp	

0000000080203a3e <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
80203a3e: 01 11        	addi	sp, sp, -32
80203a40: 06 ec        	sd	ra, 24(sp)
80203a42: 22 e8        	sd	s0, 16(sp)
80203a44: 26 e4        	sd	s1, 8(sp)
80203a46: 4a e0        	sd	s2, 0(sp)
80203a48: 00 10        	addi	s0, sp, 32
80203a4a: aa 84        	mv	s1, a0
80203a4c: 05 45        	li	a0, 1
80203a4e: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80203a52: 88 64        	ld	a0, 8(s1)
80203a54: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203a58: 63 09 25 01  	beq	a0, s2, 0x80203a6a <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E+0x2c>
80203a5c: 0f 00 00 01  	fence	w, 0
80203a60: 88 64        	ld	a0, 8(s1)
80203a62: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203a66: e3 1b 25 ff  	bne	a0, s2, 0x80203a5c <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80203a6a: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
80203a6e: 97 00 00 00  	auipc	ra, 0
80203a72: e7 80 20 e1  	jalr	-494(ra)
;         let new_ticket = self.ticket + 1;
80203a76: 13 05 19 00  	addi	a0, s2, 1
80203a7a: 0f 00 10 03  	fence	rw, w
80203a7e: 88 e4        	sd	a0, 8(s1)
;     }
80203a80: e2 60        	ld	ra, 24(sp)
80203a82: 42 64        	ld	s0, 16(sp)
80203a84: a2 64        	ld	s1, 8(sp)
80203a86: 02 69        	ld	s2, 0(sp)
80203a88: 05 61        	addi	sp, sp, 32
80203a8a: 82 80        	ret

0000000080203a8c <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
80203a8c: 08 61        	ld	a0, 0(a0)
80203a8e: 01 a0        	j	0x80203a8e <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080203a90 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80203a90: 82 80        	ret

0000000080203a92 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80203a92: 17 25 00 00  	auipc	a0, 2
80203a96: 13 05 65 6f  	addi	a0, a0, 1782
80203a9a: 08 61        	ld	a0, 0(a0)
80203a9c: 82 80        	ret

0000000080203a9e <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80203a9e: 08 69        	ld	a0, 16(a0)
80203aa0: 82 80        	ret

0000000080203aa2 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80203aa2: 08 6d        	ld	a0, 24(a0)
80203aa4: 82 80        	ret

0000000080203aa6 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80203aa6: 79 71        	addi	sp, sp, -48
80203aa8: 06 f4        	sd	ra, 40(sp)

0000000080203aaa <.LBB170_1>:
80203aaa: 17 26 00 00  	auipc	a2, 2
80203aae: 13 06 66 e8  	addi	a2, a2, -378
80203ab2: 32 e0        	sd	a2, 0(sp)

0000000080203ab4 <.LBB170_2>:
80203ab4: 17 26 00 00  	auipc	a2, 2
80203ab8: 13 06 46 ed  	addi	a2, a2, -300
80203abc: 32 e4        	sd	a2, 8(sp)
80203abe: 2a e8        	sd	a0, 16(sp)
80203ac0: 2e ec        	sd	a1, 24(sp)
80203ac2: 05 45        	li	a0, 1
80203ac4: 23 00 a1 02  	sb	a0, 32(sp)
80203ac8: 0a 85        	mv	a0, sp
80203aca: 97 f0 ff ff  	auipc	ra, 1048575
80203ace: e7 80 20 af  	jalr	-1294(ra)
80203ad2: 00 00        	unimp	

0000000080203ad4 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80203ad4: 5d 71        	addi	sp, sp, -80
80203ad6: 86 e4        	sd	ra, 72(sp)
80203ad8: 2a fc        	sd	a0, 56(sp)
80203ada: ae e0        	sd	a1, 64(sp)
80203adc: 28 18        	addi	a0, sp, 56
80203ade: 2a ec        	sd	a0, 24(sp)
80203ae0: 05 45        	li	a0, 1
80203ae2: 2a f0        	sd	a0, 32(sp)
80203ae4: 02 e4        	sd	zero, 8(sp)

0000000080203ae6 <.LBB172_1>:
80203ae6: 17 25 00 00  	auipc	a0, 2
80203aea: 13 05 a5 e4  	addi	a0, a0, -438
80203aee: 2a f4        	sd	a0, 40(sp)
80203af0: 02 f8        	sd	zero, 48(sp)
80203af2: 28 00        	addi	a0, sp, 8
80203af4: b2 85        	mv	a1, a2
80203af6: 97 00 00 00  	auipc	ra, 0
80203afa: e7 80 00 fb  	jalr	-80(ra)
80203afe: 00 00        	unimp	

0000000080203b00 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80203b00: 59 71        	addi	sp, sp, -112
80203b02: 86 f4        	sd	ra, 104(sp)
80203b04: 2a e4        	sd	a0, 8(sp)
80203b06: 2e e8        	sd	a1, 16(sp)
80203b08: 08 08        	addi	a0, sp, 16
80203b0a: aa e4        	sd	a0, 72(sp)

0000000080203b0c <.LBB176_1>:
80203b0c: 17 15 00 00  	auipc	a0, 1
80203b10: 13 05 25 a3  	addi	a0, a0, -1486
80203b14: aa e8        	sd	a0, 80(sp)
80203b16: 2c 00        	addi	a1, sp, 8
80203b18: ae ec        	sd	a1, 88(sp)
80203b1a: aa f0        	sd	a0, 96(sp)

0000000080203b1c <.LBB176_2>:
80203b1c: 17 25 00 00  	auipc	a0, 2
80203b20: 13 05 c5 e4  	addi	a0, a0, -436
80203b24: 2a f4        	sd	a0, 40(sp)
80203b26: 09 45        	li	a0, 2
80203b28: 2a f8        	sd	a0, 48(sp)
80203b2a: 02 ec        	sd	zero, 24(sp)
80203b2c: ac 00        	addi	a1, sp, 72
80203b2e: 2e fc        	sd	a1, 56(sp)
80203b30: aa e0        	sd	a0, 64(sp)
80203b32: 28 08        	addi	a0, sp, 24
80203b34: b2 85        	mv	a1, a2
80203b36: 97 00 00 00  	auipc	ra, 0
80203b3a: e7 80 00 f7  	jalr	-144(ra)
80203b3e: 00 00        	unimp	

0000000080203b40 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
80203b40: 19 71        	addi	sp, sp, -128
80203b42: 86 fc        	sd	ra, 120(sp)
80203b44: 2a e4        	sd	a0, 8(sp)
80203b46: 2e e8        	sd	a1, 16(sp)
80203b48: 32 ec        	sd	a2, 24(sp)
80203b4a: 36 f0        	sd	a3, 32(sp)
80203b4c: 28 00        	addi	a0, sp, 8
80203b4e: aa ec        	sd	a0, 88(sp)

0000000080203b50 <.LBB183_1>:
80203b50: 17 15 00 00  	auipc	a0, 1
80203b54: 13 05 65 a1  	addi	a0, a0, -1514
80203b58: aa f0        	sd	a0, 96(sp)
80203b5a: 28 08        	addi	a0, sp, 24
80203b5c: aa f4        	sd	a0, 104(sp)

0000000080203b5e <.LBB183_2>:
80203b5e: 17 15 00 00  	auipc	a0, 1
80203b62: 13 05 05 a0  	addi	a0, a0, -1536
80203b66: aa f8        	sd	a0, 112(sp)

0000000080203b68 <.LBB183_3>:
80203b68: 17 25 00 00  	auipc	a0, 2
80203b6c: 13 05 85 e4  	addi	a0, a0, -440
80203b70: 2a fc        	sd	a0, 56(sp)
80203b72: 09 45        	li	a0, 2
80203b74: aa e0        	sd	a0, 64(sp)
80203b76: 02 f4        	sd	zero, 40(sp)
80203b78: ac 08        	addi	a1, sp, 88
80203b7a: ae e4        	sd	a1, 72(sp)
80203b7c: aa e8        	sd	a0, 80(sp)
80203b7e: 28 10        	addi	a0, sp, 40
80203b80: ba 85        	mv	a1, a4
80203b82: 97 00 00 00  	auipc	ra, 0
80203b86: e7 80 40 f2  	jalr	-220(ra)
80203b8a: 00 00        	unimp	

0000000080203b8c <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80203b8c: 39 71        	addi	sp, sp, -64
80203b8e: 06 fc        	sd	ra, 56(sp)
80203b90: 10 75        	ld	a2, 40(a0)
80203b92: 18 71        	ld	a4, 32(a0)
80203b94: 1c 6d        	ld	a5, 24(a0)
80203b96: 32 f8        	sd	a2, 48(sp)
80203b98: 94 61        	ld	a3, 0(a1)
80203b9a: 3a f4        	sd	a4, 40(sp)
80203b9c: 3e f0        	sd	a5, 32(sp)
80203b9e: 10 69        	ld	a2, 16(a0)
80203ba0: 18 65        	ld	a4, 8(a0)
80203ba2: 08 61        	ld	a0, 0(a0)
80203ba4: 8c 65        	ld	a1, 8(a1)
80203ba6: 32 ec        	sd	a2, 24(sp)
80203ba8: 3a e8        	sd	a4, 16(sp)
80203baa: 2a e4        	sd	a0, 8(sp)
80203bac: 30 00        	addi	a2, sp, 8
80203bae: 36 85        	mv	a0, a3
80203bb0: 97 00 00 00  	auipc	ra, 0
80203bb4: e7 80 e0 00  	jalr	14(ra)
80203bb8: e2 70        	ld	ra, 56(sp)
80203bba: 21 61        	addi	sp, sp, 64
80203bbc: 82 80        	ret

0000000080203bbe <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80203bbe: 19 71        	addi	sp, sp, -128
80203bc0: 86 fc        	sd	ra, 120(sp)
80203bc2: a2 f8        	sd	s0, 112(sp)
80203bc4: a6 f4        	sd	s1, 104(sp)
80203bc6: ca f0        	sd	s2, 96(sp)
80203bc8: ce ec        	sd	s3, 88(sp)
80203bca: d2 e8        	sd	s4, 80(sp)
80203bcc: d6 e4        	sd	s5, 72(sp)
80203bce: da e0        	sd	s6, 64(sp)
80203bd0: b2 89        	mv	s3, a2
80203bd2: 05 46        	li	a2, 1
80203bd4: 16 16        	slli	a2, a2, 37
80203bd6: 32 f8        	sd	a2, 48(sp)
80203bd8: 0d 46        	li	a2, 3
80203bda: 23 0c c1 02  	sb	a2, 56(sp)
80203bde: 03 b6 09 00  	ld	a2, 0(s3)
80203be2: 02 e8        	sd	zero, 16(sp)
80203be4: 02 f0        	sd	zero, 32(sp)
80203be6: 2a e0        	sd	a0, 0(sp)
80203be8: 2e e4        	sd	a1, 8(sp)
80203bea: 69 c6        	beqz	a2, 0x80203cb4 <.LBB220_31+0x9e>
80203bec: 03 b5 89 00  	ld	a0, 8(s3)
80203bf0: 63 0e 05 10  	beqz	a0, 0x80203d0c <.LBB220_31+0xf6>
80203bf4: 83 b5 09 01  	ld	a1, 16(s3)
80203bf8: 93 06 f5 ff  	addi	a3, a0, -1
80203bfc: 8e 06        	slli	a3, a3, 3
80203bfe: 8d 82        	srli	a3, a3, 3
80203c00: 13 89 16 00  	addi	s2, a3, 1
80203c04: 93 84 85 00  	addi	s1, a1, 8
80203c08: 93 05 80 03  	li	a1, 56
80203c0c: 33 0a b5 02  	mul	s4, a0, a1
80203c10: 13 04 86 01  	addi	s0, a2, 24
80203c14: 85 4a        	li	s5, 1

0000000080203c16 <.LBB220_31>:
80203c16: 17 0b 00 00  	auipc	s6, 0
80203c1a: 13 0b 6b e7  	addi	s6, s6, -394
80203c1e: 90 60        	ld	a2, 0(s1)
80203c20: 09 ca        	beqz	a2, 0x80203c32 <.LBB220_31+0x1c>
80203c22: a2 66        	ld	a3, 8(sp)
80203c24: 02 65        	ld	a0, 0(sp)
80203c26: 83 b5 84 ff  	ld	a1, -8(s1)
80203c2a: 94 6e        	ld	a3, 24(a3)
80203c2c: 82 96        	jalr	a3
80203c2e: 63 11 05 10  	bnez	a0, 0x80203d30 <.LBB220_31+0x11a>
80203c32: 48 44        	lw	a0, 12(s0)
80203c34: 2a da        	sw	a0, 52(sp)
80203c36: 03 05 04 01  	lb	a0, 16(s0)
80203c3a: 23 0c a1 02  	sb	a0, 56(sp)
80203c3e: 0c 44        	lw	a1, 8(s0)
80203c40: 03 b5 09 02  	ld	a0, 32(s3)
80203c44: 2e d8        	sw	a1, 48(sp)
80203c46: 83 36 84 ff  	ld	a3, -8(s0)
80203c4a: 0c 60        	ld	a1, 0(s0)
80203c4c: 89 ce        	beqz	a3, 0x80203c66 <.LBB220_31+0x50>
80203c4e: 01 46        	li	a2, 0
80203c50: 63 9c 56 01  	bne	a3, s5, 0x80203c68 <.LBB220_31+0x52>
80203c54: 92 05        	slli	a1, a1, 4
80203c56: aa 95        	add	a1, a1, a0
80203c58: 90 65        	ld	a2, 8(a1)
80203c5a: 63 04 66 01  	beq	a2, s6, 0x80203c62 <.LBB220_31+0x4c>
80203c5e: 01 46        	li	a2, 0
80203c60: 21 a0        	j	0x80203c68 <.LBB220_31+0x52>
80203c62: 8c 61        	ld	a1, 0(a1)
80203c64: 8c 61        	ld	a1, 0(a1)
80203c66: 05 46        	li	a2, 1
80203c68: 32 e8        	sd	a2, 16(sp)
80203c6a: 2e ec        	sd	a1, 24(sp)
80203c6c: 83 36 84 fe  	ld	a3, -24(s0)
80203c70: 83 35 04 ff  	ld	a1, -16(s0)
80203c74: 89 ce        	beqz	a3, 0x80203c8e <.LBB220_31+0x78>
80203c76: 01 46        	li	a2, 0
80203c78: 63 9c 56 01  	bne	a3, s5, 0x80203c90 <.LBB220_31+0x7a>
80203c7c: 92 05        	slli	a1, a1, 4
80203c7e: aa 95        	add	a1, a1, a0
80203c80: 90 65        	ld	a2, 8(a1)
80203c82: 63 04 66 01  	beq	a2, s6, 0x80203c8a <.LBB220_31+0x74>
80203c86: 01 46        	li	a2, 0
80203c88: 21 a0        	j	0x80203c90 <.LBB220_31+0x7a>
80203c8a: 8c 61        	ld	a1, 0(a1)
80203c8c: 8c 61        	ld	a1, 0(a1)
80203c8e: 05 46        	li	a2, 1
80203c90: 32 f0        	sd	a2, 32(sp)
80203c92: 2e f4        	sd	a1, 40(sp)
80203c94: 0c 6c        	ld	a1, 24(s0)
80203c96: 92 05        	slli	a1, a1, 4
80203c98: 2e 95        	add	a0, a0, a1
80203c9a: 10 65        	ld	a2, 8(a0)
80203c9c: 08 61        	ld	a0, 0(a0)
80203c9e: 8a 85        	mv	a1, sp
80203ca0: 02 96        	jalr	a2
80203ca2: 59 e5        	bnez	a0, 0x80203d30 <.LBB220_31+0x11a>
80203ca4: c1 04        	addi	s1, s1, 16
80203ca6: 13 0a 8a fc  	addi	s4, s4, -56
80203caa: 13 04 84 03  	addi	s0, s0, 56
80203cae: e3 18 0a f6  	bnez	s4, 0x80203c1e <.LBB220_31+0x8>
80203cb2: 81 a8        	j	0x80203d02 <.LBB220_31+0xec>
80203cb4: 03 b5 89 02  	ld	a0, 40(s3)
80203cb8: 31 c9        	beqz	a0, 0x80203d0c <.LBB220_31+0xf6>
80203cba: 83 b5 09 02  	ld	a1, 32(s3)
80203cbe: 03 b6 09 01  	ld	a2, 16(s3)
80203cc2: 93 06 f5 ff  	addi	a3, a0, -1
80203cc6: 92 06        	slli	a3, a3, 4
80203cc8: 91 82        	srli	a3, a3, 4
80203cca: 13 89 16 00  	addi	s2, a3, 1
80203cce: 13 04 86 00  	addi	s0, a2, 8
80203cd2: 13 1a 45 00  	slli	s4, a0, 4
80203cd6: 93 84 85 00  	addi	s1, a1, 8
80203cda: 10 60        	ld	a2, 0(s0)
80203cdc: 01 ca        	beqz	a2, 0x80203cec <.LBB220_31+0xd6>
80203cde: a2 66        	ld	a3, 8(sp)
80203ce0: 02 65        	ld	a0, 0(sp)
80203ce2: 83 35 84 ff  	ld	a1, -8(s0)
80203ce6: 94 6e        	ld	a3, 24(a3)
80203ce8: 82 96        	jalr	a3
80203cea: 39 e1        	bnez	a0, 0x80203d30 <.LBB220_31+0x11a>
80203cec: 90 60        	ld	a2, 0(s1)
80203cee: 03 b5 84 ff  	ld	a0, -8(s1)
80203cf2: 8a 85        	mv	a1, sp
80203cf4: 02 96        	jalr	a2
80203cf6: 0d ed        	bnez	a0, 0x80203d30 <.LBB220_31+0x11a>
80203cf8: 41 04        	addi	s0, s0, 16
80203cfa: 41 1a        	addi	s4, s4, -16
80203cfc: c1 04        	addi	s1, s1, 16
80203cfe: e3 1e 0a fc  	bnez	s4, 0x80203cda <.LBB220_31+0xc4>
80203d02: 03 b5 89 01  	ld	a0, 24(s3)
80203d06: 63 68 a9 00  	bltu	s2, a0, 0x80203d16 <.LBB220_31+0x100>
80203d0a: 2d a0        	j	0x80203d34 <.LBB220_31+0x11e>
80203d0c: 01 49        	li	s2, 0
80203d0e: 03 b5 89 01  	ld	a0, 24(s3)
80203d12: 63 71 a9 02  	bgeu	s2, a0, 0x80203d34 <.LBB220_31+0x11e>
80203d16: 03 b5 09 01  	ld	a0, 16(s3)
80203d1a: 93 15 49 00  	slli	a1, s2, 4
80203d1e: 33 06 b5 00  	add	a2, a0, a1
80203d22: a2 66        	ld	a3, 8(sp)
80203d24: 02 65        	ld	a0, 0(sp)
80203d26: 0c 62        	ld	a1, 0(a2)
80203d28: 10 66        	ld	a2, 8(a2)
80203d2a: 94 6e        	ld	a3, 24(a3)
80203d2c: 82 96        	jalr	a3
80203d2e: 19 c1        	beqz	a0, 0x80203d34 <.LBB220_31+0x11e>
80203d30: 05 45        	li	a0, 1
80203d32: 11 a0        	j	0x80203d36 <.LBB220_31+0x120>
80203d34: 01 45        	li	a0, 0
80203d36: e6 70        	ld	ra, 120(sp)
80203d38: 46 74        	ld	s0, 112(sp)
80203d3a: a6 74        	ld	s1, 104(sp)
80203d3c: 06 79        	ld	s2, 96(sp)
80203d3e: e6 69        	ld	s3, 88(sp)
80203d40: 46 6a        	ld	s4, 80(sp)
80203d42: a6 6a        	ld	s5, 72(sp)
80203d44: 06 6b        	ld	s6, 64(sp)
80203d46: 09 61        	addi	sp, sp, 128
80203d48: 82 80        	ret

0000000080203d4a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80203d4a: 59 71        	addi	sp, sp, -112
80203d4c: 86 f4        	sd	ra, 104(sp)
80203d4e: a2 f0        	sd	s0, 96(sp)
80203d50: a6 ec        	sd	s1, 88(sp)
80203d52: ca e8        	sd	s2, 80(sp)
80203d54: ce e4        	sd	s3, 72(sp)
80203d56: d2 e0        	sd	s4, 64(sp)
80203d58: 56 fc        	sd	s5, 56(sp)
80203d5a: 5a f8        	sd	s6, 48(sp)
80203d5c: 5e f4        	sd	s7, 40(sp)
80203d5e: 62 f0        	sd	s8, 32(sp)
80203d60: 66 ec        	sd	s9, 24(sp)
80203d62: 6a e8        	sd	s10, 16(sp)
80203d64: 6e e4        	sd	s11, 8(sp)
80203d66: be 89        	mv	s3, a5
80203d68: 3a 89        	mv	s2, a4
80203d6a: 36 8b        	mv	s6, a3
80203d6c: 32 8a        	mv	s4, a2
80203d6e: 2a 8c        	mv	s8, a0
80203d70: b9 c1        	beqz	a1, 0x80203db6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
80203d72: 03 64 0c 03  	lwu	s0, 48(s8)
80203d76: 13 75 14 00  	andi	a0, s0, 1
80203d7a: b7 0a 11 00  	lui	s5, 272
80203d7e: 19 c1        	beqz	a0, 0x80203d84 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
80203d80: 93 0a b0 02  	li	s5, 43
80203d84: b3 0c 35 01  	add	s9, a0, s3
80203d88: 13 75 44 00  	andi	a0, s0, 4
80203d8c: 15 cd        	beqz	a0, 0x80203dc8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80203d8e: 13 05 00 02  	li	a0, 32
80203d92: 63 70 ab 04  	bgeu	s6, a0, 0x80203dd2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80203d96: 01 45        	li	a0, 0
80203d98: 63 03 0b 04  	beqz	s6, 0x80203dde <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203d9c: da 85        	mv	a1, s6
80203d9e: 52 86        	mv	a2, s4
80203da0: 83 06 06 00  	lb	a3, 0(a2)
80203da4: 05 06        	addi	a2, a2, 1
80203da6: 93 a6 06 fc  	slti	a3, a3, -64
80203daa: 93 c6 16 00  	xori	a3, a3, 1
80203dae: fd 15        	addi	a1, a1, -1
80203db0: 36 95        	add	a0, a0, a3
80203db2: fd f5        	bnez	a1, 0x80203da0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80203db4: 2d a0        	j	0x80203dde <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203db6: 03 24 0c 03  	lw	s0, 48(s8)
80203dba: 93 8c 19 00  	addi	s9, s3, 1
80203dbe: 93 0a d0 02  	li	s5, 45
80203dc2: 13 75 44 00  	andi	a0, s0, 4
80203dc6: 61 f5        	bnez	a0, 0x80203d8e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80203dc8: 01 4a        	li	s4, 0
80203dca: 03 35 0c 01  	ld	a0, 16(s8)
80203dce: 01 ed        	bnez	a0, 0x80203de6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80203dd0: 99 a0        	j	0x80203e16 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203dd2: 52 85        	mv	a0, s4
80203dd4: da 85        	mv	a1, s6
80203dd6: 97 00 00 00  	auipc	ra, 0
80203dda: e7 80 c0 44  	jalr	1100(ra)
80203dde: aa 9c        	add	s9, s9, a0
80203de0: 03 35 0c 01  	ld	a0, 16(s8)
80203de4: 0d c9        	beqz	a0, 0x80203e16 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203de6: 03 3d 8c 01  	ld	s10, 24(s8)
80203dea: 63 f6 ac 03  	bgeu	s9, s10, 0x80203e16 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203dee: 13 75 84 00  	andi	a0, s0, 8
80203df2: 41 e5        	bnez	a0, 0x80203e7a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80203df4: 83 45 8c 03  	lbu	a1, 56(s8)
80203df8: 0d 46        	li	a2, 3
80203dfa: 05 45        	li	a0, 1
80203dfc: 63 83 c5 00  	beq	a1, a2, 0x80203e02 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80203e00: 2e 85        	mv	a0, a1
80203e02: 93 75 35 00  	andi	a1, a0, 3
80203e06: 33 05 9d 41  	sub	a0, s10, s9
80203e0a: e1 c1        	beqz	a1, 0x80203eca <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80203e0c: 05 46        	li	a2, 1
80203e0e: 63 91 c5 0c  	bne	a1, a2, 0x80203ed0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80203e12: 01 4d        	li	s10, 0
80203e14: d9 a0        	j	0x80203eda <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203e16: 03 34 0c 00  	ld	s0, 0(s8)
80203e1a: 83 34 8c 00  	ld	s1, 8(s8)
80203e1e: 22 85        	mv	a0, s0
80203e20: a6 85        	mv	a1, s1
80203e22: 56 86        	mv	a2, s5
80203e24: d2 86        	mv	a3, s4
80203e26: 5a 87        	mv	a4, s6
80203e28: 97 00 00 00  	auipc	ra, 0
80203e2c: e7 80 00 14  	jalr	320(ra)
80203e30: 85 4b        	li	s7, 1
80203e32: 0d c1        	beqz	a0, 0x80203e54 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80203e34: 5e 85        	mv	a0, s7
80203e36: a6 70        	ld	ra, 104(sp)
80203e38: 06 74        	ld	s0, 96(sp)
80203e3a: e6 64        	ld	s1, 88(sp)
80203e3c: 46 69        	ld	s2, 80(sp)
80203e3e: a6 69        	ld	s3, 72(sp)
80203e40: 06 6a        	ld	s4, 64(sp)
80203e42: e2 7a        	ld	s5, 56(sp)
80203e44: 42 7b        	ld	s6, 48(sp)
80203e46: a2 7b        	ld	s7, 40(sp)
80203e48: 02 7c        	ld	s8, 32(sp)
80203e4a: e2 6c        	ld	s9, 24(sp)
80203e4c: 42 6d        	ld	s10, 16(sp)
80203e4e: a2 6d        	ld	s11, 8(sp)
80203e50: 65 61        	addi	sp, sp, 112
80203e52: 82 80        	ret
80203e54: 9c 6c        	ld	a5, 24(s1)
80203e56: 22 85        	mv	a0, s0
80203e58: ca 85        	mv	a1, s2
80203e5a: 4e 86        	mv	a2, s3
80203e5c: a6 70        	ld	ra, 104(sp)
80203e5e: 06 74        	ld	s0, 96(sp)
80203e60: e6 64        	ld	s1, 88(sp)
80203e62: 46 69        	ld	s2, 80(sp)
80203e64: a6 69        	ld	s3, 72(sp)
80203e66: 06 6a        	ld	s4, 64(sp)
80203e68: e2 7a        	ld	s5, 56(sp)
80203e6a: 42 7b        	ld	s6, 48(sp)
80203e6c: a2 7b        	ld	s7, 40(sp)
80203e6e: 02 7c        	ld	s8, 32(sp)
80203e70: e2 6c        	ld	s9, 24(sp)
80203e72: 42 6d        	ld	s10, 16(sp)
80203e74: a2 6d        	ld	s11, 8(sp)
80203e76: 65 61        	addi	sp, sp, 112
80203e78: 82 87        	jr	a5
80203e7a: 03 24 4c 03  	lw	s0, 52(s8)
80203e7e: 13 05 00 03  	li	a0, 48
80203e82: 83 45 8c 03  	lbu	a1, 56(s8)
80203e86: 2e e0        	sd	a1, 0(sp)
80203e88: 83 3d 0c 00  	ld	s11, 0(s8)
80203e8c: 83 34 8c 00  	ld	s1, 8(s8)
80203e90: 23 2a ac 02  	sw	a0, 52(s8)
80203e94: 85 4b        	li	s7, 1
80203e96: 23 0c 7c 03  	sb	s7, 56(s8)
80203e9a: 6e 85        	mv	a0, s11
80203e9c: a6 85        	mv	a1, s1
80203e9e: 56 86        	mv	a2, s5
80203ea0: d2 86        	mv	a3, s4
80203ea2: 5a 87        	mv	a4, s6
80203ea4: 97 00 00 00  	auipc	ra, 0
80203ea8: e7 80 40 0c  	jalr	196(ra)
80203eac: 41 f5        	bnez	a0, 0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203eae: 22 8a        	mv	s4, s0
80203eb0: 33 05 9d 41  	sub	a0, s10, s9
80203eb4: 13 04 15 00  	addi	s0, a0, 1
80203eb8: 7d 14        	addi	s0, s0, -1
80203eba: 49 c4        	beqz	s0, 0x80203f44 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80203ebc: 90 70        	ld	a2, 32(s1)
80203ebe: 93 05 00 03  	li	a1, 48
80203ec2: 6e 85        	mv	a0, s11
80203ec4: 02 96        	jalr	a2
80203ec6: 6d d9        	beqz	a0, 0x80203eb8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80203ec8: b5 b7        	j	0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203eca: 2a 8d        	mv	s10, a0
80203ecc: 2e 85        	mv	a0, a1
80203ece: 31 a0        	j	0x80203eda <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203ed0: 93 05 15 00  	addi	a1, a0, 1
80203ed4: 05 81        	srli	a0, a0, 1
80203ed6: 13 dd 15 00  	srli	s10, a1, 1
80203eda: 83 3c 0c 00  	ld	s9, 0(s8)
80203ede: 83 3d 8c 00  	ld	s11, 8(s8)
80203ee2: 03 24 4c 03  	lw	s0, 52(s8)
80203ee6: 93 04 15 00  	addi	s1, a0, 1
80203eea: fd 14        	addi	s1, s1, -1
80203eec: 89 c8        	beqz	s1, 0x80203efe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80203eee: 03 b6 0d 02  	ld	a2, 32(s11)
80203ef2: 66 85        	mv	a0, s9
80203ef4: a2 85        	mv	a1, s0
80203ef6: 02 96        	jalr	a2
80203ef8: 6d d9        	beqz	a0, 0x80203eea <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80203efa: 85 4b        	li	s7, 1
80203efc: 25 bf        	j	0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203efe: 37 05 11 00  	lui	a0, 272
80203f02: 85 4b        	li	s7, 1
80203f04: e3 08 a4 f2  	beq	s0, a0, 0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f08: 66 85        	mv	a0, s9
80203f0a: ee 85        	mv	a1, s11
80203f0c: 56 86        	mv	a2, s5
80203f0e: d2 86        	mv	a3, s4
80203f10: 5a 87        	mv	a4, s6
80203f12: 97 00 00 00  	auipc	ra, 0
80203f16: e7 80 60 05  	jalr	86(ra)
80203f1a: 09 fd        	bnez	a0, 0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f1c: 83 b6 8d 01  	ld	a3, 24(s11)
80203f20: 66 85        	mv	a0, s9
80203f22: ca 85        	mv	a1, s2
80203f24: 4e 86        	mv	a2, s3
80203f26: 82 96        	jalr	a3
80203f28: 11 f5        	bnez	a0, 0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f2a: 81 44        	li	s1, 0
80203f2c: 63 0a 9d 02  	beq	s10, s1, 0x80203f60 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80203f30: 03 b6 0d 02  	ld	a2, 32(s11)
80203f34: 85 04        	addi	s1, s1, 1
80203f36: 66 85        	mv	a0, s9
80203f38: a2 85        	mv	a1, s0
80203f3a: 02 96        	jalr	a2
80203f3c: 65 d9        	beqz	a0, 0x80203f2c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80203f3e: 13 85 f4 ff  	addi	a0, s1, -1
80203f42: 05 a0        	j	0x80203f62 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80203f44: 94 6c        	ld	a3, 24(s1)
80203f46: 6e 85        	mv	a0, s11
80203f48: ca 85        	mv	a1, s2
80203f4a: 4e 86        	mv	a2, s3
80203f4c: 82 96        	jalr	a3
80203f4e: e3 13 05 ee  	bnez	a0, 0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f52: 81 4b        	li	s7, 0
80203f54: 23 2a 4c 03  	sw	s4, 52(s8)
80203f58: 02 65        	ld	a0, 0(sp)
80203f5a: 23 0c ac 02  	sb	a0, 56(s8)
80203f5e: d9 bd        	j	0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f60: 6a 85        	mv	a0, s10
80203f62: b3 3b a5 01  	sltu	s7, a0, s10
80203f66: f9 b5        	j	0x80203e34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080203f68 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80203f68: 79 71        	addi	sp, sp, -48
80203f6a: 06 f4        	sd	ra, 40(sp)
80203f6c: 22 f0        	sd	s0, 32(sp)
80203f6e: 26 ec        	sd	s1, 24(sp)
80203f70: 4a e8        	sd	s2, 16(sp)
80203f72: 4e e4        	sd	s3, 8(sp)
80203f74: 9b 07 06 00  	sext.w	a5, a2
80203f78: 37 08 11 00  	lui	a6, 272
80203f7c: 3a 89        	mv	s2, a4
80203f7e: b6 84        	mv	s1, a3
80203f80: 2e 84        	mv	s0, a1
80203f82: aa 89        	mv	s3, a0
80203f84: 63 89 07 01  	beq	a5, a6, 0x80203f96 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80203f88: 14 70        	ld	a3, 32(s0)
80203f8a: 4e 85        	mv	a0, s3
80203f8c: b2 85        	mv	a1, a2
80203f8e: 82 96        	jalr	a3
80203f90: aa 85        	mv	a1, a0
80203f92: 05 45        	li	a0, 1
80203f94: 91 ed        	bnez	a1, 0x80203fb0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80203f96: 81 cc        	beqz	s1, 0x80203fae <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80203f98: 1c 6c        	ld	a5, 24(s0)
80203f9a: 4e 85        	mv	a0, s3
80203f9c: a6 85        	mv	a1, s1
80203f9e: 4a 86        	mv	a2, s2
80203fa0: a2 70        	ld	ra, 40(sp)
80203fa2: 02 74        	ld	s0, 32(sp)
80203fa4: e2 64        	ld	s1, 24(sp)
80203fa6: 42 69        	ld	s2, 16(sp)
80203fa8: a2 69        	ld	s3, 8(sp)
80203faa: 45 61        	addi	sp, sp, 48
80203fac: 82 87        	jr	a5
80203fae: 01 45        	li	a0, 0
80203fb0: a2 70        	ld	ra, 40(sp)
80203fb2: 02 74        	ld	s0, 32(sp)
80203fb4: e2 64        	ld	s1, 24(sp)
80203fb6: 42 69        	ld	s2, 16(sp)
80203fb8: a2 69        	ld	s3, 8(sp)
80203fba: 45 61        	addi	sp, sp, 48
80203fbc: 82 80        	ret

0000000080203fbe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80203fbe: 5d 71        	addi	sp, sp, -80
80203fc0: 86 e4        	sd	ra, 72(sp)
80203fc2: a2 e0        	sd	s0, 64(sp)
80203fc4: 26 fc        	sd	s1, 56(sp)
80203fc6: 4a f8        	sd	s2, 48(sp)
80203fc8: 4e f4        	sd	s3, 40(sp)
80203fca: 52 f0        	sd	s4, 32(sp)
80203fcc: 56 ec        	sd	s5, 24(sp)
80203fce: 5a e8        	sd	s6, 16(sp)
80203fd0: 5e e4        	sd	s7, 8(sp)
80203fd2: 2a 8a        	mv	s4, a0
80203fd4: 83 32 05 01  	ld	t0, 16(a0)
80203fd8: 08 71        	ld	a0, 32(a0)
80203fda: 93 86 f2 ff  	addi	a3, t0, -1
80203fde: b3 36 d0 00  	snez	a3, a3
80203fe2: 13 07 f5 ff  	addi	a4, a0, -1
80203fe6: 33 37 e0 00  	snez	a4, a4
80203fea: f9 8e        	and	a3, a3, a4
80203fec: b2 89        	mv	s3, a2
80203fee: 2e 89        	mv	s2, a1
80203ff0: 63 9d 06 16  	bnez	a3, 0x8020416a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203ff4: 85 45        	li	a1, 1
80203ff6: 63 18 b5 10  	bne	a0, a1, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203ffa: 03 35 8a 02  	ld	a0, 40(s4)
80203ffe: 81 45        	li	a1, 0
80204000: b3 06 39 01  	add	a3, s2, s3
80204004: 13 07 15 00  	addi	a4, a0, 1
80204008: 37 03 11 00  	lui	t1, 272
8020400c: 93 08 f0 0d  	li	a7, 223
80204010: 13 08 00 0f  	li	a6, 240
80204014: 4a 86        	mv	a2, s2
80204016: 01 a8        	j	0x80204026 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80204018: 13 05 16 00  	addi	a0, a2, 1
8020401c: 91 8d        	sub	a1, a1, a2
8020401e: aa 95        	add	a1, a1, a0
80204020: 2a 86        	mv	a2, a0
80204022: 63 02 64 0e  	beq	s0, t1, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204026: 7d 17        	addi	a4, a4, -1
80204028: 25 c7        	beqz	a4, 0x80204090 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
8020402a: 63 0e d6 0c  	beq	a2, a3, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020402e: 03 05 06 00  	lb	a0, 0(a2)
80204032: 13 74 f5 0f  	andi	s0, a0, 255
80204036: e3 51 05 fe  	bgez	a0, 0x80204018 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
8020403a: 03 45 16 00  	lbu	a0, 1(a2)
8020403e: 93 77 f4 01  	andi	a5, s0, 31
80204042: 93 74 f5 03  	andi	s1, a0, 63
80204046: 63 f9 88 02  	bgeu	a7, s0, 0x80204078 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
8020404a: 03 45 26 00  	lbu	a0, 2(a2)
8020404e: 9a 04        	slli	s1, s1, 6
80204050: 13 75 f5 03  	andi	a0, a0, 63
80204054: c9 8c        	or	s1, s1, a0
80204056: 63 67 04 03  	bltu	s0, a6, 0x80204084 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
8020405a: 03 45 36 00  	lbu	a0, 3(a2)
8020405e: f6 17        	slli	a5, a5, 61
80204060: ad 93        	srli	a5, a5, 43
80204062: 9a 04        	slli	s1, s1, 6
80204064: 13 75 f5 03  	andi	a0, a0, 63
80204068: 45 8d        	or	a0, a0, s1
8020406a: 33 64 f5 00  	or	s0, a0, a5
8020406e: 63 0c 64 08  	beq	s0, t1, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204072: 13 05 46 00  	addi	a0, a2, 4
80204076: 5d b7        	j	0x8020401c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80204078: 13 05 26 00  	addi	a0, a2, 2
8020407c: 9a 07        	slli	a5, a5, 6
8020407e: 33 e4 97 00  	or	s0, a5, s1
80204082: 69 bf        	j	0x8020401c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80204084: 13 05 36 00  	addi	a0, a2, 3
80204088: b2 07        	slli	a5, a5, 12
8020408a: 33 e4 f4 00  	or	s0, s1, a5
8020408e: 79 b7        	j	0x8020401c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80204090: 63 0b d6 06  	beq	a2, a3, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204094: 03 05 06 00  	lb	a0, 0(a2)
80204098: 63 53 05 04  	bgez	a0, 0x802040de <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
8020409c: 13 75 f5 0f  	andi	a0, a0, 255
802040a0: 93 06 00 0e  	li	a3, 224
802040a4: 63 6d d5 02  	bltu	a0, a3, 0x802040de <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802040a8: 93 06 00 0f  	li	a3, 240
802040ac: 63 69 d5 02  	bltu	a0, a3, 0x802040de <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802040b0: 83 46 16 00  	lbu	a3, 1(a2)
802040b4: 03 47 26 00  	lbu	a4, 2(a2)
802040b8: 93 f6 f6 03  	andi	a3, a3, 63
802040bc: 13 77 f7 03  	andi	a4, a4, 63
802040c0: 03 46 36 00  	lbu	a2, 3(a2)
802040c4: 76 15        	slli	a0, a0, 61
802040c6: 2d 91        	srli	a0, a0, 43
802040c8: b2 06        	slli	a3, a3, 12
802040ca: 1a 07        	slli	a4, a4, 6
802040cc: d9 8e        	or	a3, a3, a4
802040ce: 13 76 f6 03  	andi	a2, a2, 63
802040d2: 55 8e        	or	a2, a2, a3
802040d4: 51 8d        	or	a0, a0, a2
802040d6: 37 06 11 00  	lui	a2, 272
802040da: 63 06 c5 02  	beq	a0, a2, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802040de: 85 c1        	beqz	a1, 0x802040fe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802040e0: 63 fd 35 01  	bgeu	a1, s3, 0x802040fa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
802040e4: 33 05 b9 00  	add	a0, s2, a1
802040e8: 03 05 05 00  	lb	a0, 0(a0)
802040ec: 13 06 00 fc  	li	a2, -64
802040f0: 63 57 c5 00  	bge	a0, a2, 0x802040fe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802040f4: 01 45        	li	a0, 0
802040f6: 11 e5        	bnez	a0, 0x80204102 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
802040f8: 39 a0        	j	0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802040fa: e3 9d 35 ff  	bne	a1, s3, 0x802040f4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
802040fe: 4a 85        	mv	a0, s2
80204100: 19 c1        	beqz	a0, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204102: ae 89        	mv	s3, a1
80204104: 2a 89        	mv	s2, a0
80204106: 63 82 02 06  	beqz	t0, 0x8020416a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
8020410a: 03 34 8a 01  	ld	s0, 24(s4)
8020410e: 13 05 00 02  	li	a0, 32
80204112: 63 f4 a9 04  	bgeu	s3, a0, 0x8020415a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80204116: 01 45        	li	a0, 0
80204118: 63 8e 09 00  	beqz	s3, 0x80204134 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
8020411c: ce 85        	mv	a1, s3
8020411e: 4a 86        	mv	a2, s2
80204120: 83 06 06 00  	lb	a3, 0(a2)
80204124: 05 06        	addi	a2, a2, 1
80204126: 93 a6 06 fc  	slti	a3, a3, -64
8020412a: 93 c6 16 00  	xori	a3, a3, 1
8020412e: fd 15        	addi	a1, a1, -1
80204130: 36 95        	add	a0, a0, a3
80204132: fd f5        	bnez	a1, 0x80204120 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80204134: 63 7b 85 02  	bgeu	a0, s0, 0x8020416a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80204138: 83 45 8a 03  	lbu	a1, 56(s4)
8020413c: 8d 46        	li	a3, 3
8020413e: 01 46        	li	a2, 0
80204140: 63 83 d5 00  	beq	a1, a3, 0x80204146 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80204144: 2e 86        	mv	a2, a1
80204146: 93 75 36 00  	andi	a1, a2, 3
8020414a: 33 05 a4 40  	sub	a0, s0, a0
8020414e: a1 c1        	beqz	a1, 0x8020418e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80204150: 05 46        	li	a2, 1
80204152: 63 91 c5 04  	bne	a1, a2, 0x80204194 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80204156: 81 4a        	li	s5, 0
80204158: 99 a0        	j	0x8020419e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
8020415a: 4a 85        	mv	a0, s2
8020415c: ce 85        	mv	a1, s3
8020415e: 97 00 00 00  	auipc	ra, 0
80204162: e7 80 40 0c  	jalr	196(ra)
80204166: e3 69 85 fc  	bltu	a0, s0, 0x80204138 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
8020416a: 83 35 8a 00  	ld	a1, 8(s4)
8020416e: 03 35 0a 00  	ld	a0, 0(s4)
80204172: 9c 6d        	ld	a5, 24(a1)
80204174: ca 85        	mv	a1, s2
80204176: 4e 86        	mv	a2, s3
80204178: a6 60        	ld	ra, 72(sp)
8020417a: 06 64        	ld	s0, 64(sp)
8020417c: e2 74        	ld	s1, 56(sp)
8020417e: 42 79        	ld	s2, 48(sp)
80204180: a2 79        	ld	s3, 40(sp)
80204182: 02 7a        	ld	s4, 32(sp)
80204184: e2 6a        	ld	s5, 24(sp)
80204186: 42 6b        	ld	s6, 16(sp)
80204188: a2 6b        	ld	s7, 8(sp)
8020418a: 61 61        	addi	sp, sp, 80
8020418c: 82 87        	jr	a5
8020418e: aa 8a        	mv	s5, a0
80204190: 2e 85        	mv	a0, a1
80204192: 31 a0        	j	0x8020419e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80204194: 93 05 15 00  	addi	a1, a0, 1
80204198: 05 81        	srli	a0, a0, 1
8020419a: 93 da 15 00  	srli	s5, a1, 1
8020419e: 03 3b 0a 00  	ld	s6, 0(s4)
802041a2: 83 3b 8a 00  	ld	s7, 8(s4)
802041a6: 83 24 4a 03  	lw	s1, 52(s4)
802041aa: 13 04 15 00  	addi	s0, a0, 1
802041ae: 7d 14        	addi	s0, s0, -1
802041b0: 09 c8        	beqz	s0, 0x802041c2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
802041b2: 03 b6 0b 02  	ld	a2, 32(s7)
802041b6: 5a 85        	mv	a0, s6
802041b8: a6 85        	mv	a1, s1
802041ba: 02 96        	jalr	a2
802041bc: 6d d9        	beqz	a0, 0x802041ae <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
802041be: 05 4a        	li	s4, 1
802041c0: 2d a8        	j	0x802041fa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041c2: 37 05 11 00  	lui	a0, 272
802041c6: 05 4a        	li	s4, 1
802041c8: 63 89 a4 02  	beq	s1, a0, 0x802041fa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041cc: 83 b6 8b 01  	ld	a3, 24(s7)
802041d0: 5a 85        	mv	a0, s6
802041d2: ca 85        	mv	a1, s2
802041d4: 4e 86        	mv	a2, s3
802041d6: 82 96        	jalr	a3
802041d8: 0d e1        	bnez	a0, 0x802041fa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041da: 01 44        	li	s0, 0
802041dc: 63 8c 8a 00  	beq	s5, s0, 0x802041f4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
802041e0: 03 b6 0b 02  	ld	a2, 32(s7)
802041e4: 05 04        	addi	s0, s0, 1
802041e6: 5a 85        	mv	a0, s6
802041e8: a6 85        	mv	a1, s1
802041ea: 02 96        	jalr	a2
802041ec: 65 d9        	beqz	a0, 0x802041dc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
802041ee: 13 05 f4 ff  	addi	a0, s0, -1
802041f2: 11 a0        	j	0x802041f6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
802041f4: 56 85        	mv	a0, s5
802041f6: 33 3a 55 01  	sltu	s4, a0, s5
802041fa: 52 85        	mv	a0, s4
802041fc: a6 60        	ld	ra, 72(sp)
802041fe: 06 64        	ld	s0, 64(sp)
80204200: e2 74        	ld	s1, 56(sp)
80204202: 42 79        	ld	s2, 48(sp)
80204204: a2 79        	ld	s3, 40(sp)
80204206: 02 7a        	ld	s4, 32(sp)
80204208: e2 6a        	ld	s5, 24(sp)
8020420a: 42 6b        	ld	s6, 16(sp)
8020420c: a2 6b        	ld	s7, 8(sp)
8020420e: 61 61        	addi	sp, sp, 80
80204210: 82 80        	ret

0000000080204212 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80204212: ae 86        	mv	a3, a1
80204214: aa 85        	mv	a1, a0
80204216: 32 85        	mv	a0, a2
80204218: 36 86        	mv	a2, a3
8020421a: 17 03 00 00  	auipc	t1, 0
8020421e: 67 00 43 da  	jr	-604(t1)

0000000080204222 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80204222: 2a 86        	mv	a2, a0
80204224: 1d 05        	addi	a0, a0, 7
80204226: 13 77 85 ff  	andi	a4, a0, -8
8020422a: b3 08 c7 40  	sub	a7, a4, a2
8020422e: 63 ec 15 01  	bltu	a1, a7, 0x80204246 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80204232: 33 88 15 41  	sub	a6, a1, a7
80204236: 13 35 88 00  	sltiu	a0, a6, 8
8020423a: 93 b7 98 00  	sltiu	a5, a7, 9
8020423e: 93 c7 17 00  	xori	a5, a5, 1
80204242: 5d 8d        	or	a0, a0, a5
80204244: 11 cd        	beqz	a0, 0x80204260 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80204246: 01 45        	li	a0, 0
80204248: 99 c9        	beqz	a1, 0x8020425e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
8020424a: 83 06 06 00  	lb	a3, 0(a2)
8020424e: 05 06        	addi	a2, a2, 1
80204250: 93 a6 06 fc  	slti	a3, a3, -64
80204254: 93 c6 16 00  	xori	a3, a3, 1
80204258: fd 15        	addi	a1, a1, -1
8020425a: 36 95        	add	a0, a0, a3
8020425c: fd f5        	bnez	a1, 0x8020424a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
8020425e: 82 80        	ret
80204260: 93 75 78 00  	andi	a1, a6, 7
80204264: 81 47        	li	a5, 0
80204266: 63 0f c7 00  	beq	a4, a2, 0x80204284 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
8020426a: 33 07 e6 40  	sub	a4, a2, a4
8020426e: 32 85        	mv	a0, a2
80204270: 83 06 05 00  	lb	a3, 0(a0)
80204274: 05 05        	addi	a0, a0, 1
80204276: 93 a6 06 fc  	slti	a3, a3, -64
8020427a: 93 c6 16 00  	xori	a3, a3, 1
8020427e: 05 07        	addi	a4, a4, 1
80204280: b6 97        	add	a5, a5, a3
80204282: 7d f7        	bnez	a4, 0x80204270 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80204284: b3 02 16 01  	add	t0, a2, a7
80204288: 01 46        	li	a2, 0
8020428a: 99 cd        	beqz	a1, 0x802042a8 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
8020428c: 13 75 88 ff  	andi	a0, a6, -8
80204290: b3 86 a2 00  	add	a3, t0, a0
80204294: 03 85 06 00  	lb	a0, 0(a3)
80204298: 85 06        	addi	a3, a3, 1
8020429a: 13 25 05 fc  	slti	a0, a0, -64
8020429e: 13 45 15 00  	xori	a0, a0, 1
802042a2: fd 15        	addi	a1, a1, -1
802042a4: 2a 96        	add	a2, a2, a0
802042a6: fd f5        	bnez	a1, 0x80204294 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
802042a8: 13 57 38 00  	srli	a4, a6, 3

00000000802042ac <.LBB292_27>:
802042ac: 17 25 00 00  	auipc	a0, 2
802042b0: 13 05 45 fb  	addi	a0, a0, -76
802042b4: 03 3f 05 00  	ld	t5, 0(a0)

00000000802042b8 <.LBB292_28>:
802042b8: 17 25 00 00  	auipc	a0, 2
802042bc: 13 05 05 fb  	addi	a0, a0, -80
802042c0: 83 38 05 00  	ld	a7, 0(a0)
802042c4: 37 15 00 10  	lui	a0, 65537
802042c8: 12 05        	slli	a0, a0, 4
802042ca: 05 05        	addi	a0, a0, 1
802042cc: 42 05        	slli	a0, a0, 16
802042ce: 13 08 15 00  	addi	a6, a0, 1
802042d2: 33 05 f6 00  	add	a0, a2, a5
802042d6: 25 a0        	j	0x802042fe <.LBB292_28+0x46>
802042d8: 13 16 3e 00  	slli	a2, t3, 3
802042dc: b3 02 c3 00  	add	t0, t1, a2
802042e0: 33 87 c3 41  	sub	a4, t2, t3
802042e4: 13 76 3e 00  	andi	a2, t3, 3
802042e8: b3 f6 15 01  	and	a3, a1, a7
802042ec: a1 81        	srli	a1, a1, 8
802042ee: b3 f5 15 01  	and	a1, a1, a7
802042f2: b6 95        	add	a1, a1, a3
802042f4: b3 85 05 03  	mul	a1, a1, a6
802042f8: c1 91        	srli	a1, a1, 48
802042fa: 2e 95        	add	a0, a0, a1
802042fc: 41 e2        	bnez	a2, 0x8020437c <.LBB292_28+0xc4>
802042fe: 25 d3        	beqz	a4, 0x8020425e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80204300: ba 83        	mv	t2, a4
80204302: 16 83        	mv	t1, t0
80204304: 93 05 00 0c  	li	a1, 192
80204308: 3a 8e        	mv	t3, a4
8020430a: 63 64 b7 00  	bltu	a4, a1, 0x80204312 <.LBB292_28+0x5a>
8020430e: 13 0e 00 0c  	li	t3, 192
80204312: 93 75 ce 0f  	andi	a1, t3, 252
80204316: 13 96 35 00  	slli	a2, a1, 3
8020431a: b3 0e c3 00  	add	t4, t1, a2
8020431e: cd dd        	beqz	a1, 0x802042d8 <.LBB292_28+0x20>
80204320: 81 45        	li	a1, 0
80204322: 1a 86        	mv	a2, t1
80204324: 55 da        	beqz	a2, 0x802042d8 <.LBB292_28+0x20>
80204326: 18 62        	ld	a4, 0(a2)
80204328: 93 47 f7 ff  	not	a5, a4
8020432c: 9d 83        	srli	a5, a5, 7
8020432e: 19 83        	srli	a4, a4, 6
80204330: 14 66        	ld	a3, 8(a2)
80204332: 5d 8f        	or	a4, a4, a5
80204334: 33 77 e7 01  	and	a4, a4, t5
80204338: ba 95        	add	a1, a1, a4
8020433a: 13 c7 f6 ff  	not	a4, a3
8020433e: 1d 83        	srli	a4, a4, 7
80204340: 99 82        	srli	a3, a3, 6
80204342: 1c 6a        	ld	a5, 16(a2)
80204344: d9 8e        	or	a3, a3, a4
80204346: b3 f6 e6 01  	and	a3, a3, t5
8020434a: b6 95        	add	a1, a1, a3
8020434c: 93 c6 f7 ff  	not	a3, a5
80204350: 9d 82        	srli	a3, a3, 7
80204352: 13 d7 67 00  	srli	a4, a5, 6
80204356: 1c 6e        	ld	a5, 24(a2)
80204358: d9 8e        	or	a3, a3, a4
8020435a: b3 f6 e6 01  	and	a3, a3, t5
8020435e: b6 95        	add	a1, a1, a3
80204360: 93 c6 f7 ff  	not	a3, a5
80204364: 9d 82        	srli	a3, a3, 7
80204366: 13 d7 67 00  	srli	a4, a5, 6
8020436a: d9 8e        	or	a3, a3, a4
8020436c: b3 f6 e6 01  	and	a3, a3, t5
80204370: 13 06 06 02  	addi	a2, a2, 32
80204374: b6 95        	add	a1, a1, a3
80204376: e3 17 d6 fb  	bne	a2, t4, 0x80204324 <.LBB292_28+0x6c>
8020437a: b9 bf        	j	0x802042d8 <.LBB292_28+0x20>
8020437c: 63 0a 03 02  	beqz	t1, 0x802043b0 <.LBB292_28+0xf8>
80204380: 93 05 00 0c  	li	a1, 192
80204384: 63 e4 b3 00  	bltu	t2, a1, 0x8020438c <.LBB292_28+0xd4>
80204388: 93 03 00 0c  	li	t2, 192
8020438c: 81 45        	li	a1, 0
8020438e: 13 f6 33 00  	andi	a2, t2, 3
80204392: 0e 06        	slli	a2, a2, 3
80204394: 83 b6 0e 00  	ld	a3, 0(t4)
80204398: a1 0e        	addi	t4, t4, 8
8020439a: 13 c7 f6 ff  	not	a4, a3
8020439e: 1d 83        	srli	a4, a4, 7
802043a0: 99 82        	srli	a3, a3, 6
802043a2: d9 8e        	or	a3, a3, a4
802043a4: b3 f6 e6 01  	and	a3, a3, t5
802043a8: 61 16        	addi	a2, a2, -8
802043aa: b6 95        	add	a1, a1, a3
802043ac: 65 f6        	bnez	a2, 0x80204394 <.LBB292_28+0xdc>
802043ae: 11 a0        	j	0x802043b2 <.LBB292_28+0xfa>
802043b0: 81 45        	li	a1, 0
802043b2: 33 f6 15 01  	and	a2, a1, a7
802043b6: a1 81        	srli	a1, a1, 8
802043b8: b3 f5 15 01  	and	a1, a1, a7
802043bc: b2 95        	add	a1, a1, a2
802043be: b3 85 05 03  	mul	a1, a1, a6
802043c2: c1 91        	srli	a1, a1, 48
802043c4: 2e 95        	add	a0, a0, a1
802043c6: 82 80        	ret

00000000802043c8 <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
802043c8: 39 71        	addi	sp, sp, -64
802043ca: 06 fc        	sd	ra, 56(sp)
802043cc: 22 f8        	sd	s0, 48(sp)
802043ce: 26 f4        	sd	s1, 40(sp)
802043d0: 32 88        	mv	a6, a2
802043d2: 93 56 45 00  	srli	a3, a0, 4
802043d6: 13 07 70 02  	li	a4, 39
802043da: 93 07 10 27  	li	a5, 625

00000000802043de <.LBB580_10>:
802043de: 97 1e 00 00  	auipc	t4, 1
802043e2: 93 8e 2e 5f  	addi	t4, t4, 1522
802043e6: 63 f3 f6 02  	bgeu	a3, a5, 0x8020440c <.LBB580_10+0x2e>
802043ea: 93 06 30 06  	li	a3, 99
802043ee: 63 e9 a6 0a  	bltu	a3, a0, 0x802044a0 <.LBB580_11+0x92>
802043f2: 29 46        	li	a2, 10
802043f4: 63 77 c5 0e  	bgeu	a0, a2, 0x802044e2 <.LBB580_11+0xd4>
802043f8: 93 06 f7 ff  	addi	a3, a4, -1
802043fc: 13 06 11 00  	addi	a2, sp, 1
80204400: 36 96        	add	a2, a2, a3
80204402: 1b 05 05 03  	addiw	a0, a0, 48
80204406: 23 00 a6 00  	sb	a0, 0(a2)
8020440a: dd a8        	j	0x80204500 <.LBB580_11+0xf2>
8020440c: 01 47        	li	a4, 0

000000008020440e <.LBB580_11>:
8020440e: 97 26 00 00  	auipc	a3, 2
80204412: 93 86 26 ec  	addi	a3, a3, -318
80204416: 83 b8 06 00  	ld	a7, 0(a3)
8020441a: 89 66        	lui	a3, 2
8020441c: 9b 83 06 71  	addiw	t2, a3, 1808
80204420: 85 66        	lui	a3, 1
80204422: 1b 8e b6 47  	addiw	t3, a3, 1147
80204426: 93 02 40 06  	li	t0, 100
8020442a: 13 03 11 00  	addi	t1, sp, 1
8020442e: b7 e6 f5 05  	lui	a3, 24414
80204432: 1b 8f f6 0f  	addiw	t5, a3, 255
80204436: aa 87        	mv	a5, a0
80204438: 33 35 15 03  	mulhu	a0, a0, a7
8020443c: 2d 81        	srli	a0, a0, 11
8020443e: 3b 06 75 02  	mulw	a2, a0, t2
80204442: 3b 86 c7 40  	subw	a2, a5, a2
80204446: 93 16 06 03  	slli	a3, a2, 48
8020444a: c9 92        	srli	a3, a3, 50
8020444c: b3 86 c6 03  	mul	a3, a3, t3
80204450: 93 df 16 01  	srli	t6, a3, 17
80204454: c1 82        	srli	a3, a3, 16
80204456: 13 f4 e6 7f  	andi	s0, a3, 2046
8020445a: bb 86 5f 02  	mulw	a3, t6, t0
8020445e: 15 9e        	subw	a2, a2, a3
80204460: 46 16        	slli	a2, a2, 49
80204462: 41 92        	srli	a2, a2, 48
80204464: b3 86 8e 00  	add	a3, t4, s0
80204468: 33 04 e3 00  	add	s0, t1, a4
8020446c: 83 cf 06 00  	lbu	t6, 0(a3)
80204470: 83 86 16 00  	lb	a3, 1(a3)
80204474: 76 96        	add	a2, a2, t4
80204476: 83 04 16 00  	lb	s1, 1(a2)
8020447a: 03 46 06 00  	lbu	a2, 0(a2)
8020447e: 23 02 d4 02  	sb	a3, 36(s0)
80204482: a3 01 f4 03  	sb	t6, 35(s0)
80204486: 23 03 94 02  	sb	s1, 38(s0)
8020448a: a3 02 c4 02  	sb	a2, 37(s0)
8020448e: 71 17        	addi	a4, a4, -4
80204490: e3 63 ff fa  	bltu	t5, a5, 0x80204436 <.LBB580_11+0x28>
80204494: 13 07 77 02  	addi	a4, a4, 39
80204498: 93 06 30 06  	li	a3, 99
8020449c: e3 fb a6 f4  	bgeu	a3, a0, 0x802043f2 <.LBB580_10+0x14>
802044a0: 13 16 05 03  	slli	a2, a0, 48
802044a4: 49 92        	srli	a2, a2, 50
802044a6: 85 66        	lui	a3, 1
802044a8: 9b 86 b6 47  	addiw	a3, a3, 1147
802044ac: 33 06 d6 02  	mul	a2, a2, a3
802044b0: 45 82        	srli	a2, a2, 17
802044b2: 93 06 40 06  	li	a3, 100
802044b6: bb 06 d6 02  	mulw	a3, a2, a3
802044ba: 15 9d        	subw	a0, a0, a3
802044bc: 46 15        	slli	a0, a0, 49
802044be: 41 91        	srli	a0, a0, 48
802044c0: 79 17        	addi	a4, a4, -2
802044c2: 76 95        	add	a0, a0, t4
802044c4: 83 06 15 00  	lb	a3, 1(a0)
802044c8: 03 45 05 00  	lbu	a0, 0(a0)
802044cc: 93 07 11 00  	addi	a5, sp, 1
802044d0: ba 97        	add	a5, a5, a4
802044d2: a3 80 d7 00  	sb	a3, 1(a5)
802044d6: 23 80 a7 00  	sb	a0, 0(a5)
802044da: 32 85        	mv	a0, a2
802044dc: 29 46        	li	a2, 10
802044de: e3 6d c5 f0  	bltu	a0, a2, 0x802043f8 <.LBB580_10+0x1a>
802044e2: 06 05        	slli	a0, a0, 1
802044e4: 93 06 e7 ff  	addi	a3, a4, -2
802044e8: 76 95        	add	a0, a0, t4
802044ea: 03 06 15 00  	lb	a2, 1(a0)
802044ee: 03 45 05 00  	lbu	a0, 0(a0)
802044f2: 13 07 11 00  	addi	a4, sp, 1
802044f6: 36 97        	add	a4, a4, a3
802044f8: a3 00 c7 00  	sb	a2, 1(a4)
802044fc: 23 00 a7 00  	sb	a0, 0(a4)
80204500: 13 05 11 00  	addi	a0, sp, 1
80204504: 33 07 d5 00  	add	a4, a0, a3
80204508: 13 05 70 02  	li	a0, 39
8020450c: b3 07 d5 40  	sub	a5, a0, a3

0000000080204510 <.LBB580_12>:
80204510: 17 16 00 00  	auipc	a2, 1
80204514: 13 06 06 42  	addi	a2, a2, 1056
80204518: 42 85        	mv	a0, a6
8020451a: 81 46        	li	a3, 0
8020451c: 97 00 00 00  	auipc	ra, 0
80204520: e7 80 e0 82  	jalr	-2002(ra)
80204524: e2 70        	ld	ra, 56(sp)
80204526: 42 74        	ld	s0, 48(sp)
80204528: a2 74        	ld	s1, 40(sp)
8020452a: 21 61        	addi	sp, sp, 64
8020452c: 82 80        	ret

000000008020452e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
8020452e: 03 65 05 00  	lwu	a0, 0(a0)
80204532: 2e 86        	mv	a2, a1
80204534: 85 45        	li	a1, 1
80204536: 17 03 00 00  	auipc	t1, 0
8020453a: 67 00 23 e9  	jr	-366(t1)

000000008020453e <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
8020453e: 08 61        	ld	a0, 0(a0)
80204540: 2e 86        	mv	a2, a1
80204542: 85 45        	li	a1, 1
80204544: 17 03 00 00  	auipc	t1, 0
80204548: 67 00 43 e8  	jr	-380(t1)

000000008020454c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
8020454c: 90 65        	ld	a2, 8(a1)
8020454e: 88 61        	ld	a0, 0(a1)
80204550: 1c 6e        	ld	a5, 24(a2)

0000000080204552 <.LBB612_1>:
80204552: 97 15 00 00  	auipc	a1, 1
80204556: 93 85 65 54  	addi	a1, a1, 1350
8020455a: 15 46        	li	a2, 5
8020455c: 82 87        	jr	a5

000000008020455e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
8020455e: 10 65        	ld	a2, 8(a0)
80204560: 08 61        	ld	a0, 0(a0)
80204562: 1c 6e        	ld	a5, 24(a2)
80204564: 82 87        	jr	a5

0000000080204566 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80204566: 14 61        	ld	a3, 0(a0)
80204568: 10 65        	ld	a2, 8(a0)
8020456a: 2e 85        	mv	a0, a1
8020456c: b6 85        	mv	a1, a3
8020456e: 17 03 00 00  	auipc	t1, 0
80204572: 67 00 03 a5  	jr	-1456(t1)

0000000080204576 <memset>:
80204576: 17 03 00 00  	auipc	t1, 0
8020457a: 67 00 63 0b  	jr	182(t1)

000000008020457e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE>:
8020457e: bd 46        	li	a3, 15
80204580: 63 fa c6 06  	bgeu	a3, a2, 0x802045f4 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x76>
80204584: bb 06 a0 40  	negw	a3, a0
80204588: 13 f8 76 00  	andi	a6, a3, 7
8020458c: b3 03 05 01  	add	t2, a0, a6
80204590: 63 0c 08 00  	beqz	a6, 0x802045a8 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x2a>
80204594: aa 87        	mv	a5, a0
80204596: ae 86        	mv	a3, a1
80204598: 03 87 06 00  	lb	a4, 0(a3)
8020459c: 23 80 e7 00  	sb	a4, 0(a5)
802045a0: 85 07        	addi	a5, a5, 1
802045a2: 85 06        	addi	a3, a3, 1
802045a4: e3 ea 77 fe  	bltu	a5, t2, 0x80204598 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x1a>
802045a8: b3 88 05 01  	add	a7, a1, a6
802045ac: 33 08 06 41  	sub	a6, a2, a6
802045b0: 93 72 88 ff  	andi	t0, a6, -8
802045b4: 93 f5 78 00  	andi	a1, a7, 7
802045b8: b3 86 53 00  	add	a3, t2, t0
802045bc: 9d cd        	beqz	a1, 0x802045fa <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x7c>
802045be: 63 58 50 04  	blez	t0, 0x8020460e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
802045c2: 13 93 35 00  	slli	t1, a1, 3
802045c6: 13 f7 88 ff  	andi	a4, a7, -8
802045ca: 10 63        	ld	a2, 0(a4)
802045cc: bb 05 60 40  	negw	a1, t1
802045d0: 13 fe 85 03  	andi	t3, a1, 56
802045d4: 93 07 87 00  	addi	a5, a4, 8
802045d8: 98 63        	ld	a4, 0(a5)
802045da: 33 56 66 00  	srl	a2, a2, t1
802045de: b3 15 c7 01  	sll	a1, a4, t3
802045e2: d1 8d        	or	a1, a1, a2
802045e4: 23 b0 b3 00  	sd	a1, 0(t2)
802045e8: a1 03        	addi	t2, t2, 8
802045ea: a1 07        	addi	a5, a5, 8
802045ec: 3a 86        	mv	a2, a4
802045ee: e3 e5 d3 fe  	bltu	t2, a3, 0x802045d8 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x5a>
802045f2: 31 a8        	j	0x8020460e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
802045f4: aa 86        	mv	a3, a0
802045f6: 0d e2        	bnez	a2, 0x80204618 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9a>
802045f8: 0d a8        	j	0x8020462a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
802045fa: 63 5a 50 00  	blez	t0, 0x8020460e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
802045fe: c6 85        	mv	a1, a7
80204600: 90 61        	ld	a2, 0(a1)
80204602: 23 b0 c3 00  	sd	a2, 0(t2)
80204606: a1 03        	addi	t2, t2, 8
80204608: a1 05        	addi	a1, a1, 8
8020460a: e3 eb d3 fe  	bltu	t2, a3, 0x80204600 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x82>
8020460e: b3 85 58 00  	add	a1, a7, t0
80204612: 13 76 78 00  	andi	a2, a6, 7
80204616: 11 ca        	beqz	a2, 0x8020462a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
80204618: 36 96        	add	a2, a2, a3
8020461a: 03 87 05 00  	lb	a4, 0(a1)
8020461e: 23 80 e6 00  	sb	a4, 0(a3)
80204622: 85 06        	addi	a3, a3, 1
80204624: 85 05        	addi	a1, a1, 1
80204626: e3 ea c6 fe  	bltu	a3, a2, 0x8020461a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9c>
8020462a: 82 80        	ret

000000008020462c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
8020462c: bd 46        	li	a3, 15
8020462e: 63 fa c6 04  	bgeu	a3, a2, 0x80204682 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80204632: bb 06 a0 40  	negw	a3, a0
80204636: 9d 8a        	andi	a3, a3, 7
80204638: 33 07 d5 00  	add	a4, a0, a3
8020463c: 99 c6        	beqz	a3, 0x8020464a <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
8020463e: aa 87        	mv	a5, a0
80204640: 23 80 b7 00  	sb	a1, 0(a5)
80204644: 85 07        	addi	a5, a5, 1
80204646: e3 ed e7 fe  	bltu	a5, a4, 0x80204640 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
8020464a: b3 08 d6 40  	sub	a7, a2, a3
8020464e: 93 f7 88 ff  	andi	a5, a7, -8
80204652: b3 06 f7 00  	add	a3, a4, a5
80204656: 63 52 f0 02  	blez	a5, 0x8020467a <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
8020465a: 13 98 85 03  	slli	a6, a1, 56
8020465e: b7 17 10 10  	lui	a5, 65793
80204662: 92 07        	slli	a5, a5, 4
80204664: 93 87 07 10  	addi	a5, a5, 256
80204668: b3 37 f8 02  	mulhu	a5, a6, a5
8020466c: 13 96 07 02  	slli	a2, a5, 32
80204670: d1 8f        	or	a5, a5, a2
80204672: 1c e3        	sd	a5, 0(a4)
80204674: 21 07        	addi	a4, a4, 8
80204676: e3 6e d7 fe  	bltu	a4, a3, 0x80204672 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
8020467a: 13 f6 78 00  	andi	a2, a7, 7
8020467e: 01 e6        	bnez	a2, 0x80204686 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80204680: 09 a8        	j	0x80204692 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80204682: aa 86        	mv	a3, a0
80204684: 19 c6        	beqz	a2, 0x80204692 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80204686: 36 96        	add	a2, a2, a3
80204688: 23 80 b6 00  	sb	a1, 0(a3)
8020468c: 85 06        	addi	a3, a3, 1
8020468e: e3 ed c6 fe  	bltu	a3, a2, 0x80204688 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80204692: 82 80        	ret

0000000080204694 <memcpy>:
80204694: 17 03 00 00  	auipc	t1, 0
80204698: 67 00 a3 ee  	jr	-278(t1)
