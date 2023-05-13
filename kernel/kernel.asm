
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 60 e3  	jalr	-458(ra)
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
80201174: e7 80 00 45  	jalr	1104(ra)
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
80202088: e7 80 20 62  	jalr	1570(ra)
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
802020a8: e7 80 20 60  	jalr	1538(ra)
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
802020cc: e7 80 a0 7a  	jalr	1962(ra)
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
8020212a: e7 80 00 9c  	jalr	-1600(ra)
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
80202146: e7 80 40 9a  	jalr	-1628(ra)
8020214a: 00 00        	unimp	

000000008020214c <_ZN4spin4once13Once$LT$T$GT$9call_once17hb1882b4ffcb028abE>:
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
802021a4: 01 e5        	bnez	a0, 0x802021ac <_ZN4spin4once13Once$LT$T$GT$9call_once17hb1882b4ffcb028abE+0x60>
802021a6: af 35 3a 1f  	sc.d.aqrl	a1, s3, (s4)
802021aa: fd f9        	bnez	a1, 0x802021a0 <_ZN4spin4once13Once$LT$T$GT$9call_once17hb1882b4ffcb028abE+0x54>
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
8020220a: e7 80 20 38  	jalr	898(ra)
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
8020220e: 33 85 74 03  	mul	a0, s1, s7
80202212: b3 84 aa 00  	add	s1, s5, a0
80202216: 13 06 00 08  	li	a2, 128
8020221a: 26 85        	mv	a0, s1
8020221c: 81 45        	li	a1, 0
8020221e: 97 20 00 00  	auipc	ra, 2
80202222: e7 80 a0 36  	jalr	874(ra)
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
8020224a: e7 80 00 46  	jalr	1120(ra)
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
80202286: e7 80 40 42  	jalr	1060(ra)
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
802022b2: e7 80 c0 5b  	jalr	1468(ra)
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
80202338: e7 80 20 37  	jalr	882(ra)
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
8020235e: e7 80 80 51  	jalr	1304(ra)
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
8020237e: e7 80 c0 76  	jalr	1900(ra)
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
8020239a: e7 80 00 75  	jalr	1872(ra)
8020239e: 00 00        	unimp	

00000000802023a0 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> i32 {
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
802023be: 63 06 06 18  	beqz	a2, 0x8020254a <.LBB2_27>
802023c2: b6 89        	mv	s3, a3
802023c4: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
802023c6: 33 fa d5 00  	and	s4, a1, a3
;         let last = pgrounddown(va + size - 1);
802023ca: 2e 96        	add	a2, a2, a1
802023cc: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
802023ce: b3 7a d6 00  	and	s5, a2, a3
;         while a <= last {
802023d2: 63 ee 4a 0d  	bltu	s5, s4, 0x802024ae <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x10e>
802023d6: 3a 89        	mv	s2, a4
802023d8: 13 db 26 00  	srli	s6, a3, 2
802023dc: 83 3b 05 00  	ld	s7, 0(a0)
;         while a <= last {
802023e0: 13 dc c5 00  	srli	s8, a1, 12
802023e4: 85 6c        	lui	s9, 1
802023e6: 1b 8d 8c ff  	addiw	s10, s9, -8
;         if va >= MAXVA {
802023ea: 13 55 6a 02  	srli	a0, s4, 38
802023ee: 75 e1        	bnez	a0, 0x802024d2 <.LBB2_21>
802023f0: 13 55 ba 01  	srli	a0, s4, 27
802023f4: 61 99        	andi	a0, a0, -8
802023f6: b3 8d ab 00  	add	s11, s7, a0
;             if (*pte & PTE_V) != 0 {
802023fa: 03 b5 0d 00  	ld	a0, 0(s11)
802023fe: 93 75 15 00  	andi	a1, a0, 1
80202402: 95 e5        	bnez	a1, 0x8020242e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x8e>
;                 let pa = kalloc();
80202404: 97 10 00 00  	auipc	ra, 1
80202408: e7 80 e0 85  	jalr	-1954(ra)
;                 if pa == 0 {
8020240c: 5d c1        	beqz	a0, 0x802024b2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x112>
8020240e: aa 84        	mv	s1, a0
80202410: 05 66        	lui	a2, 1
80202412: 81 45        	li	a1, 0
80202414: 97 20 00 00  	auipc	ra, 2
80202418: e7 80 40 17  	jalr	372(ra)
;     (pa >> 12) << 10
8020241c: 13 d5 24 00  	srli	a0, s1, 2
80202420: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
80202424: 13 65 15 00  	ori	a0, a0, 1
80202428: 23 b0 ad 00  	sd	a0, 0(s11)
8020242c: 21 a0        	j	0x80202434 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x94>
;     (pte >> 10) << 12
8020242e: 29 81        	srli	a0, a0, 10
80202430: 93 14 c5 00  	slli	s1, a0, 12
80202434: 13 55 2a 01  	srli	a0, s4, 18
80202438: 33 75 a5 01  	and	a0, a0, s10
8020243c: b3 8d a4 00  	add	s11, s1, a0
;             if (*pte & PTE_V) != 0 {
80202440: 03 b5 0d 00  	ld	a0, 0(s11)
80202444: 93 75 15 00  	andi	a1, a0, 1
80202448: 95 e9        	bnez	a1, 0x8020247c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0xdc>
;                 let pa = kalloc();
8020244a: 97 10 00 00  	auipc	ra, 1
8020244e: e7 80 80 81  	jalr	-2024(ra)
;                 if pa == 0 {
80202452: 25 c1        	beqz	a0, 0x802024b2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x112>
80202454: aa 84        	mv	s1, a0
80202456: 05 66        	lui	a2, 1
80202458: 81 45        	li	a1, 0
8020245a: 97 20 00 00  	auipc	ra, 2
8020245e: e7 80 e0 12  	jalr	302(ra)
;     (pa >> 12) << 10
80202462: 13 d5 24 00  	srli	a0, s1, 2
80202466: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
8020246a: 13 65 15 00  	ori	a0, a0, 1
8020246e: 23 b0 ad 00  	sd	a0, 0(s11)
;     (va >> pxshift(level)) & PXMASK
80202472: 13 75 fc 1f  	andi	a0, s8, 511
80202476: 0e 05        	slli	a0, a0, 3
80202478: 26 95        	add	a0, a0, s1
8020247a: 01 a8        	j	0x8020248a <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0xea>
;     (pte >> 10) << 12
8020247c: 29 81        	srli	a0, a0, 10
8020247e: 32 05        	slli	a0, a0, 12
;             if pte == null_mut() {
80202480: 0d c9        	beqz	a0, 0x802024b2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x112>
80202482: 93 75 fc 1f  	andi	a1, s8, 511
80202486: 8e 05        	slli	a1, a1, 3
80202488: 4d 8d        	or	a0, a0, a1
;             if unsafe { *pte & PTE_V } != 0 {
8020248a: 83 45 05 00  	lbu	a1, 0(a0)
8020248e: 85 89        	andi	a1, a1, 1
80202490: bd ed        	bnez	a1, 0x8020250e <.LBB2_24>
;     (pa >> 12) << 10
80202492: 93 d5 29 00  	srli	a1, s3, 2
80202496: b3 f5 65 01  	and	a1, a1, s6
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020249a: b3 e5 25 01  	or	a1, a1, s2
8020249e: 93 e5 15 00  	ori	a1, a1, 1
802024a2: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
802024a4: 66 9a        	add	s4, s4, s9
;             pa += PGSIZE;
802024a6: e6 99        	add	s3, s3, s9
;         while a <= last {
802024a8: 05 0c        	addi	s8, s8, 1
802024aa: e3 f0 4a f5  	bgeu	s5, s4, 0x802023ea <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x4a>
802024ae: 01 45        	li	a0, 0
802024b0: 11 a0        	j	0x802024b4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h32e928a4f41d39deE+0x114>
802024b2: 7d 55        	li	a0, -1
;     }
802024b4: ea 60        	ld	ra, 152(sp)
802024b6: 4a 64        	ld	s0, 144(sp)
802024b8: aa 64        	ld	s1, 136(sp)
802024ba: 0a 69        	ld	s2, 128(sp)
802024bc: e6 79        	ld	s3, 120(sp)
802024be: 46 7a        	ld	s4, 112(sp)
802024c0: a6 7a        	ld	s5, 104(sp)
802024c2: 06 7b        	ld	s6, 96(sp)
802024c4: e6 6b        	ld	s7, 88(sp)
802024c6: 46 6c        	ld	s8, 80(sp)
802024c8: a6 6c        	ld	s9, 72(sp)
802024ca: 06 6d        	ld	s10, 64(sp)
802024cc: e2 7d        	ld	s11, 56(sp)
802024ce: 0d 61        	addi	sp, sp, 160
802024d0: 82 80        	ret

00000000802024d2 <.LBB2_21>:
802024d2: 17 35 00 00  	auipc	a0, 3
802024d6: 13 05 65 c0  	addi	a0, a0, -1018
802024da: 23 3c a4 f6  	sd	a0, -136(s0)
802024de: 05 45        	li	a0, 1
802024e0: 23 30 a4 f8  	sd	a0, -128(s0)
802024e4: 23 34 04 f6  	sd	zero, -152(s0)

00000000802024e8 <.LBB2_22>:
802024e8: 17 35 00 00  	auipc	a0, 3
802024ec: 13 05 05 be  	addi	a0, a0, -1056
802024f0: 23 34 a4 f8  	sd	a0, -120(s0)
802024f4: 23 38 04 f8  	sd	zero, -112(s0)

00000000802024f8 <.LBB2_23>:
;             panic!("walk");
802024f8: 97 35 00 00  	auipc	a1, 3
802024fc: 93 85 85 c0  	addi	a1, a1, -1016
80202500: 13 05 84 f6  	addi	a0, s0, -152
80202504: 97 10 00 00  	auipc	ra, 1
80202508: e7 80 40 5b  	jalr	1460(ra)
8020250c: 00 00        	unimp	

000000008020250e <.LBB2_24>:
8020250e: 17 35 00 00  	auipc	a0, 3
80202512: 13 05 a5 c1  	addi	a0, a0, -998
80202516: 23 3c a4 f6  	sd	a0, -136(s0)
8020251a: 05 45        	li	a0, 1
8020251c: 23 30 a4 f8  	sd	a0, -128(s0)
80202520: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202524 <.LBB2_25>:
80202524: 17 35 00 00  	auipc	a0, 3
80202528: 13 05 45 ba  	addi	a0, a0, -1116
8020252c: 23 34 a4 f8  	sd	a0, -120(s0)
80202530: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202534 <.LBB2_26>:
;                 panic!("mappages: remap");
80202534: 97 35 00 00  	auipc	a1, 3
80202538: 93 85 45 c0  	addi	a1, a1, -1020
8020253c: 13 05 84 f6  	addi	a0, s0, -152
80202540: 97 10 00 00  	auipc	ra, 1
80202544: e7 80 80 57  	jalr	1400(ra)
80202548: 00 00        	unimp	

000000008020254a <.LBB2_27>:
8020254a: 17 35 00 00  	auipc	a0, 3
8020254e: 13 05 65 c1  	addi	a0, a0, -1002
80202552: 23 3c a4 f6  	sd	a0, -136(s0)
80202556: 05 45        	li	a0, 1
80202558: 23 30 a4 f8  	sd	a0, -128(s0)
8020255c: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202560 <.LBB2_28>:
80202560: 17 35 00 00  	auipc	a0, 3
80202564: 13 05 85 b6  	addi	a0, a0, -1176
80202568: 23 34 a4 f8  	sd	a0, -120(s0)
8020256c: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202570 <.LBB2_29>:
;             panic!("mappages: size");
80202570: 97 35 00 00  	auipc	a1, 3
80202574: 93 85 05 c0  	addi	a1, a1, -1024
80202578: 13 05 84 f6  	addi	a0, s0, -152
8020257c: 97 10 00 00  	auipc	ra, 1
80202580: e7 80 c0 53  	jalr	1340(ra)
80202584: 00 00        	unimp	

0000000080202586 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01404a8176509c97E>:
80202586: 41 11        	addi	sp, sp, -16
80202588: 06 e4        	sd	ra, 8(sp)
8020258a: 22 e0        	sd	s0, 0(sp)
8020258c: 00 08        	addi	s0, sp, 16
8020258e: 10 61        	ld	a2, 0(a0)
80202590: 14 65        	ld	a3, 8(a0)
80202592: 2e 87        	mv	a4, a1
80202594: 32 85        	mv	a0, a2
80202596: b6 85        	mv	a1, a3
80202598: 3a 86        	mv	a2, a4
8020259a: a2 60        	ld	ra, 8(sp)
8020259c: 02 64        	ld	s0, 0(sp)
8020259e: 41 01        	addi	sp, sp, 16
802025a0: 17 23 00 00  	auipc	t1, 2
802025a4: 67 00 43 c8  	jr	-892(t1)

00000000802025a8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h24079b98717b7d77E>:
802025a8: 41 11        	addi	sp, sp, -16
802025aa: 06 e4        	sd	ra, 8(sp)
802025ac: 22 e0        	sd	s0, 0(sp)
802025ae: 00 08        	addi	s0, sp, 16
802025b0: 08 61        	ld	a0, 0(a0)
802025b2: a2 60        	ld	ra, 8(sp)
802025b4: 02 64        	ld	s0, 0(sp)
802025b6: 41 01        	addi	sp, sp, 16
802025b8: 17 13 00 00  	auipc	t1, 1
802025bc: 67 00 63 5e  	jr	1510(t1)

00000000802025c0 <usertrapret>:
; pub fn binit() {}
802025c0: 41 11        	addi	sp, sp, -16
802025c2: 06 e4        	sd	ra, 8(sp)
802025c4: 22 e0        	sd	s0, 0(sp)
802025c6: 00 08        	addi	s0, sp, 16
802025c8: a2 60        	ld	ra, 8(sp)
802025ca: 02 64        	ld	s0, 0(sp)
802025cc: 41 01        	addi	sp, sp, 16
802025ce: 82 80        	ret

00000000802025d0 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
802025d0: 71 71        	addi	sp, sp, -176
802025d2: 06 f5        	sd	ra, 168(sp)
802025d4: 22 f1        	sd	s0, 160(sp)
802025d6: 26 ed        	sd	s1, 152(sp)
802025d8: 00 19        	addi	s0, sp, 176
802025da: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
802025dc: 97 10 00 00  	auipc	ra, 1
802025e0: e7 80 40 4d  	jalr	1236(ra)
802025e4: 05 e1        	bnez	a0, 0x80202604 <.LBB0_8+0x16>

00000000802025e6 <.LBB0_7>:
802025e6: 17 35 00 00  	auipc	a0, 3
802025ea: 13 05 25 db  	addi	a0, a0, -590

00000000802025ee <.LBB0_8>:
802025ee: 17 36 00 00  	auipc	a2, 3
802025f2: 13 06 a6 de  	addi	a2, a2, -534
802025f6: 93 05 b0 02  	li	a1, 43
802025fa: 97 10 00 00  	auipc	ra, 1
802025fe: e7 80 c0 4e  	jalr	1260(ra)
80202602: 00 00        	unimp	
80202604: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80202608: 26 85        	mv	a0, s1
8020260a: 97 10 00 00  	auipc	ra, 1
8020260e: e7 80 a0 4a  	jalr	1194(ra)
80202612: 3d e1        	bnez	a0, 0x80202678 <.LBB0_11+0x24>
80202614: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80202618: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020261c <.LBB0_9>:
8020261c: 17 05 00 00  	auipc	a0, 0
80202620: 13 05 c5 f8  	addi	a0, a0, -116
80202624: 23 34 a4 f6  	sd	a0, -152(s0)
80202628: 13 05 04 fe  	addi	a0, s0, -32
8020262c: 23 38 a4 f8  	sd	a0, -112(s0)
80202630: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202634 <.LBB0_10>:
80202634: 17 35 00 00  	auipc	a0, 3
80202638: 13 05 45 cf  	addi	a0, a0, -780
8020263c: 23 30 a4 fc  	sd	a0, -64(s0)
80202640: 09 45        	li	a0, 2
80202642: 23 34 a4 fc  	sd	a0, -56(s0)
80202646: 13 05 04 f6  	addi	a0, s0, -160
8020264a: 23 38 a4 fc  	sd	a0, -48(s0)
8020264e: 05 45        	li	a0, 1
80202650: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080202654 <.LBB0_11>:
80202654: 97 35 00 00  	auipc	a1, 3
80202658: 93 85 45 19  	addi	a1, a1, 404
8020265c: 13 05 04 f9  	addi	a0, s0, -112
80202660: 13 06 04 fb  	addi	a2, s0, -80
80202664: 97 10 00 00  	auipc	ra, 1
80202668: e7 80 c0 56  	jalr	1388(ra)
8020266c: 45 e1        	bnez	a0, 0x8020270c <.LBB0_17>
;     shutdown()
8020266e: 97 00 00 00  	auipc	ra, 0
80202672: e7 80 60 1b  	jalr	438(ra)
80202676: 00 00        	unimp	
80202678: 0c 61        	ld	a1, 0(a0)
8020267a: 10 65        	ld	a2, 8(a0)
8020267c: 23 38 b4 f8  	sd	a1, -112(s0)
80202680: 23 3c c4 f8  	sd	a2, -104(s0)
80202684: 08 49        	lw	a0, 16(a0)
80202686: 23 22 a4 fa  	sw	a0, -92(s0)
8020268a: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
8020268e: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202692 <.LBB0_12>:
80202692: 17 05 00 00  	auipc	a0, 0
80202696: 13 05 45 ef  	addi	a0, a0, -268
8020269a: 23 34 a4 f6  	sd	a0, -152(s0)
8020269e: 13 05 44 fa  	addi	a0, s0, -92
802026a2: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802026a6 <.LBB0_13>:
802026a6: 17 25 00 00  	auipc	a0, 2
802026aa: 13 05 a5 e9  	addi	a0, a0, -358
802026ae: 23 3c a4 f6  	sd	a0, -136(s0)
802026b2: 13 05 84 f5  	addi	a0, s0, -168
802026b6: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802026ba <.LBB0_14>:
802026ba: 17 05 00 00  	auipc	a0, 0
802026be: 13 05 e5 ee  	addi	a0, a0, -274
802026c2: 23 34 a4 f8  	sd	a0, -120(s0)
802026c6: 13 05 04 fe  	addi	a0, s0, -32
802026ca: 23 34 a4 fa  	sd	a0, -88(s0)
802026ce: 23 38 04 fa  	sd	zero, -80(s0)

00000000802026d2 <.LBB0_15>:
802026d2: 17 35 00 00  	auipc	a0, 3
802026d6: 13 05 65 c8  	addi	a0, a0, -890
802026da: 23 30 a4 fc  	sd	a0, -64(s0)
802026de: 11 45        	li	a0, 4
802026e0: 23 34 a4 fc  	sd	a0, -56(s0)
802026e4: 13 05 04 f6  	addi	a0, s0, -160
802026e8: 23 38 a4 fc  	sd	a0, -48(s0)
802026ec: 0d 45        	li	a0, 3
802026ee: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802026f2 <.LBB0_16>:
802026f2: 97 35 00 00  	auipc	a1, 3
802026f6: 93 85 65 0f  	addi	a1, a1, 246
802026fa: 13 05 84 fa  	addi	a0, s0, -88
802026fe: 13 06 04 fb  	addi	a2, s0, -80
80202702: 97 10 00 00  	auipc	ra, 1
80202706: e7 80 e0 4c  	jalr	1230(ra)
8020270a: 35 d1        	beqz	a0, 0x8020266e <.LBB0_11+0x1a>

000000008020270c <.LBB0_17>:
8020270c: 17 35 00 00  	auipc	a0, 3
80202710: 13 05 c5 10  	addi	a0, a0, 268

0000000080202714 <.LBB0_18>:
80202714: 97 36 00 00  	auipc	a3, 3
80202718: 93 86 46 13  	addi	a3, a3, 308

000000008020271c <.LBB0_19>:
8020271c: 17 37 00 00  	auipc	a4, 3
80202720: 13 07 c7 15  	addi	a4, a4, 348
80202724: 93 05 b0 02  	li	a1, 43
80202728: 13 06 04 fe  	addi	a2, s0, -32
8020272c: 97 10 00 00  	auipc	ra, 1
80202730: e7 80 60 42  	jalr	1062(ra)
80202734: 00 00        	unimp	

0000000080202736 <_ZN6kernel7process3cpu5cpuid17h63fd58697e69a2d8E>:
; pub fn cpuid() -> usize {
80202736: 41 11        	addi	sp, sp, -16
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202738: 06 e4        	sd	ra, 8(sp)
8020273a: 22 e0        	sd	s0, 0(sp)
8020273c: 00 08        	addi	s0, sp, 16
8020273e: 12 85        	mv	a0, tp
; }
80202740: a2 60        	ld	ra, 8(sp)
80202742: 02 64        	ld	s0, 0(sp)
80202744: 41 01        	addi	sp, sp, 16
80202746: 82 80        	ret

0000000080202748 <_ZN6kernel7process3cpu5mycpu17hba8d96572f55b33fE>:
; pub fn mycpu() -> *mut Cpu {
80202748: 01 11        	addi	sp, sp, -32
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020274a: 06 ec        	sd	ra, 24(sp)
8020274c: 22 e8        	sd	s0, 16(sp)
8020274e: 26 e4        	sd	s1, 8(sp)
80202750: 00 10        	addi	s0, sp, 32
80202752: 92 84        	mv	s1, tp

0000000080202754 <.LBB2_3>:
;         self.0.call_once(builder)
80202754: 17 55 01 00  	auipc	a0, 21
80202758: 13 05 c5 8a  	addi	a0, a0, -1876
8020275c: 97 00 00 00  	auipc	ra, 0
80202760: e7 80 40 8a  	jalr	-1884(ra)
80202764: 93 05 f0 03  	li	a1, 63
; 	&mut CPUS.get_mut()[id]
80202768: 63 eb 95 00  	bltu	a1, s1, 0x8020277e <.LBB2_4>
8020276c: e1 45        	li	a1, 24
; 	&mut CPUS.get_mut()[id]
8020276e: b3 85 b4 02  	mul	a1, s1, a1
80202772: 2e 95        	add	a0, a0, a1
; }
80202774: e2 60        	ld	ra, 24(sp)
80202776: 42 64        	ld	s0, 16(sp)
80202778: a2 64        	ld	s1, 8(sp)
8020277a: 05 61        	addi	sp, sp, 32
8020277c: 82 80        	ret

000000008020277e <.LBB2_4>:
; 	&mut CPUS.get_mut()[id]
8020277e: 17 36 00 00  	auipc	a2, 3
80202782: 13 06 a6 cd  	addi	a2, a2, -806
80202786: 93 05 00 04  	li	a1, 64
8020278a: 26 85        	mv	a0, s1
8020278c: 97 10 00 00  	auipc	ra, 1
80202790: e7 80 60 38  	jalr	902(ra)
80202794: 00 00        	unimp	

0000000080202796 <_ZN6kernel4trap12trapinithart17he6cca289112bcdcaE>:
; pub fn trapinithart() {
80202796: 5d 71        	addi	sp, sp, -80
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80202798: 86 e4        	sd	ra, 72(sp)
8020279a: a2 e0        	sd	s0, 64(sp)
8020279c: 80 08        	addi	s0, sp, 80

000000008020279e <.LBB4_3>:
8020279e: 17 f5 ff ff  	auipc	a0, 1048575
802027a2: 13 05 25 99  	addi	a0, a0, -1646
802027a6: 73 10 55 10  	csrw	stvec, a0
802027aa: 13 05 84 fe  	addi	a0, s0, -24
802027ae: 23 38 a4 fa  	sd	a0, -80(s0)
802027b2: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802027b6 <.LBB4_4>:
802027b6: 17 35 00 00  	auipc	a0, 3
802027ba: 13 05 a5 cf  	addi	a0, a0, -774
802027be: 23 34 a4 fc  	sd	a0, -56(s0)
802027c2: 05 45        	li	a0, 1
802027c4: 23 38 a4 fc  	sd	a0, -48(s0)

00000000802027c8 <.LBB4_5>:
802027c8: 17 35 00 00  	auipc	a0, 3
802027cc: 13 05 85 c7  	addi	a0, a0, -904
802027d0: 23 3c a4 fc  	sd	a0, -40(s0)
802027d4: 23 30 04 fe  	sd	zero, -32(s0)

00000000802027d8 <.LBB4_6>:
802027d8: 97 35 00 00  	auipc	a1, 3
802027dc: 93 85 05 01  	addi	a1, a1, 16
802027e0: 13 05 04 fb  	addi	a0, s0, -80
802027e4: 13 06 84 fb  	addi	a2, s0, -72
802027e8: 97 10 00 00  	auipc	ra, 1
802027ec: e7 80 80 3e  	jalr	1000(ra)
802027f0: 09 e5        	bnez	a0, 0x802027fa <.LBB4_7>
; }
802027f2: a6 60        	ld	ra, 72(sp)
802027f4: 06 64        	ld	s0, 64(sp)
802027f6: 61 61        	addi	sp, sp, 80
802027f8: 82 80        	ret

00000000802027fa <.LBB4_7>:
802027fa: 17 35 00 00  	auipc	a0, 3
802027fe: 13 05 e5 01  	addi	a0, a0, 30

0000000080202802 <.LBB4_8>:
80202802: 97 36 00 00  	auipc	a3, 3
80202806: 93 86 66 04  	addi	a3, a3, 70

000000008020280a <.LBB4_9>:
8020280a: 17 37 00 00  	auipc	a4, 3
8020280e: 13 07 e7 06  	addi	a4, a4, 110
80202812: 93 05 b0 02  	li	a1, 43
80202816: 13 06 84 fe  	addi	a2, s0, -24
8020281a: 97 10 00 00  	auipc	ra, 1
8020281e: e7 80 80 33  	jalr	824(ra)
80202822: 00 00        	unimp	

0000000080202824 <_ZN6kernel3sbi8shutdown17ha1ef8f97a31cd2d1E>:
; pub fn shutdown() -> ! {
80202824: 39 71        	addi	sp, sp, -64
;         asm!(
80202826: 06 fc        	sd	ra, 56(sp)
80202828: 22 f8        	sd	s0, 48(sp)
8020282a: 80 00        	addi	s0, sp, 64
8020282c: a1 48        	li	a7, 8
8020282e: 01 45        	li	a0, 0
80202830: 81 45        	li	a1, 0
80202832: 01 46        	li	a2, 0
80202834: 73 00 00 00  	ecall	

0000000080202838 <.LBB2_1>:
80202838: 17 35 00 00  	auipc	a0, 3
8020283c: 13 05 05 ca  	addi	a0, a0, -864
80202840: 23 38 a4 fc  	sd	a0, -48(s0)
80202844: 05 45        	li	a0, 1
80202846: 23 3c a4 fc  	sd	a0, -40(s0)
8020284a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020284e <.LBB2_2>:
8020284e: 17 35 00 00  	auipc	a0, 3
80202852: 13 05 25 c7  	addi	a0, a0, -910
80202856: 23 30 a4 fe  	sd	a0, -32(s0)
8020285a: 23 34 04 fe  	sd	zero, -24(s0)

000000008020285e <.LBB2_3>:
;     panic!("It should shutdown!");
8020285e: 97 35 00 00  	auipc	a1, 3
80202862: 93 85 a5 c9  	addi	a1, a1, -870
80202866: 13 05 04 fc  	addi	a0, s0, -64
8020286a: 97 10 00 00  	auipc	ra, 1
8020286e: e7 80 e0 24  	jalr	590(ra)
80202872: 00 00        	unimp	

0000000080202874 <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E>:
;     pub fn release(&mut self) {
80202874: 5d 71        	addi	sp, sp, -80
80202876: 86 e4        	sd	ra, 72(sp)
80202878: a2 e0        	sd	s0, 64(sp)
8020287a: 26 fc        	sd	s1, 56(sp)
8020287c: 4a f8        	sd	s2, 48(sp)
8020287e: 80 08        	addi	s0, sp, 80
80202880: aa 84        	mv	s1, a0
80202882: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202886: 39 c9        	beqz	a0, 0x802028dc <.LBB2_12>
80202888: 03 b9 04 01  	ld	s2, 16(s1)
8020288c: 97 00 00 00  	auipc	ra, 0
80202890: e7 80 c0 eb  	jalr	-324(ra)
;         if !self.holding() {
80202894: 63 14 a9 04  	bne	s2, a0, 0x802028dc <.LBB2_12>
;         self.cpu = null_mut();
80202898: 23 b8 04 00  	sd	zero, 16(s1)
8020289c: 0f 00 30 03  	fence	rw, rw
802028a0: 0f 00 10 03  	fence	rw, w
802028a4: 23 8c 04 00  	sb	zero, 24(s1)
;     let mc: &mut Cpu = unsafe { transmute(mycpu()) };
802028a8: 97 00 00 00  	auipc	ra, 0
802028ac: e7 80 00 ea  	jalr	-352(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802028b0: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
802028b4: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
802028b6: b9 e9        	bnez	a1, 0x8020290c <.LBB2_15>
;     if mc.noff < 1 {
802028b8: 0c 65        	ld	a1, 8(a0)
802028ba: 63 51 b0 08  	blez	a1, 0x8020293c <.LBB2_18>
;     mc.noff -= 1;
802028be: fd 15        	addi	a1, a1, -1
802028c0: 0c e5        	sd	a1, 8(a0)
;     if mc.noff == 0 && mc.intena {
802028c2: 99 e5        	bnez	a1, 0x802028d0 <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
802028c4: 03 45 05 01  	lbu	a0, 16(a0)
802028c8: 01 c5        	beqz	a0, 0x802028d0 <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
802028ca: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802028cc: 73 20 05 10  	csrs	sstatus, a0
;     }
802028d0: a6 60        	ld	ra, 72(sp)
802028d2: 06 64        	ld	s0, 64(sp)
802028d4: e2 74        	ld	s1, 56(sp)
802028d6: 42 79        	ld	s2, 48(sp)
802028d8: 61 61        	addi	sp, sp, 80
802028da: 82 80        	ret

00000000802028dc <.LBB2_12>:
802028dc: 17 35 00 00  	auipc	a0, 3
802028e0: 13 05 45 c8  	addi	a0, a0, -892
802028e4: 23 30 a4 fc  	sd	a0, -64(s0)
802028e8: 05 45        	li	a0, 1
802028ea: 23 34 a4 fc  	sd	a0, -56(s0)
802028ee: 23 38 04 fa  	sd	zero, -80(s0)

00000000802028f2 <.LBB2_13>:
802028f2: 17 35 00 00  	auipc	a0, 3
802028f6: 13 05 e5 c1  	addi	a0, a0, -994
802028fa: 23 38 a4 fc  	sd	a0, -48(s0)
802028fe: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202902 <.LBB2_14>:
;             panic!("release");
80202902: 97 35 00 00  	auipc	a1, 3
80202906: 93 85 e5 c6  	addi	a1, a1, -914
8020290a: 85 a0        	j	0x8020296a <.LBB2_20+0x8>

000000008020290c <.LBB2_15>:
8020290c: 17 35 00 00  	auipc	a0, 3
80202910: 13 05 45 c9  	addi	a0, a0, -876
80202914: 23 30 a4 fc  	sd	a0, -64(s0)
80202918: 05 45        	li	a0, 1
8020291a: 23 34 a4 fc  	sd	a0, -56(s0)
8020291e: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202922 <.LBB2_16>:
80202922: 17 35 00 00  	auipc	a0, 3
80202926: 13 05 e5 be  	addi	a0, a0, -1042
8020292a: 23 38 a4 fc  	sd	a0, -48(s0)
8020292e: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202932 <.LBB2_17>:
;         panic!("pop_off - interruptible");
80202932: 97 35 00 00  	auipc	a1, 3
80202936: 93 85 e5 c7  	addi	a1, a1, -898
8020293a: 05 a8        	j	0x8020296a <.LBB2_20+0x8>

000000008020293c <.LBB2_18>:
8020293c: 17 35 00 00  	auipc	a0, 3
80202940: 13 05 45 c9  	addi	a0, a0, -876
80202944: 23 30 a4 fc  	sd	a0, -64(s0)
80202948: 05 45        	li	a0, 1
8020294a: 23 34 a4 fc  	sd	a0, -56(s0)
8020294e: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202952 <.LBB2_19>:
80202952: 17 35 00 00  	auipc	a0, 3
80202956: 13 05 e5 bb  	addi	a0, a0, -1090
8020295a: 23 38 a4 fc  	sd	a0, -48(s0)
8020295e: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202962 <.LBB2_20>:
;         panic!("pop_off");
80202962: 97 35 00 00  	auipc	a1, 3
80202966: 93 85 e5 c7  	addi	a1, a1, -898
8020296a: 13 05 04 fb  	addi	a0, s0, -80
8020296e: 97 10 00 00  	auipc	ra, 1
80202972: e7 80 a0 14  	jalr	330(ra)
80202976: 00 00        	unimp	

0000000080202978 <_ZN6kernel6memory6kalloc5kinit17h4f25e2f38cdb0cf5E>:
; pub fn kinit() {
80202978: 35 71        	addi	sp, sp, -160
8020297a: 06 ed        	sd	ra, 152(sp)
8020297c: 22 e9        	sd	s0, 144(sp)
8020297e: 26 e5        	sd	s1, 136(sp)
80202980: 4a e1        	sd	s2, 128(sp)
80202982: ce fc        	sd	s3, 120(sp)
80202984: d2 f8        	sd	s4, 112(sp)
80202986: d6 f4        	sd	s5, 104(sp)
80202988: da f0        	sd	s6, 96(sp)
8020298a: de ec        	sd	s7, 88(sp)
8020298c: e2 e8        	sd	s8, 80(sp)
8020298e: e6 e4        	sd	s9, 72(sp)
80202990: ea e0        	sd	s10, 64(sp)
80202992: 00 11        	addi	s0, sp, 160
80202994: 0f 00 30 03  	fence	rw, rw

0000000080202998 <.LBB1_23>:
80202998: 97 59 01 00  	auipc	s3, 21
8020299c: 93 89 89 c7  	addi	s3, s3, -904
802029a0: 03 b5 09 03  	ld	a0, 48(s3)
802029a4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802029a8: 21 ed        	bnez	a0, 0x80202a00 <.LBB1_24+0x3a>
802029aa: 93 85 09 03  	addi	a1, s3, 48
802029ae: 05 46        	li	a2, 1
802029b0: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802029b4: 01 e5        	bnez	a0, 0x802029bc <.LBB1_23+0x24>
802029b6: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802029ba: fd fa        	bnez	a3, 0x802029b0 <.LBB1_23+0x18>
;             if status == INCOMPLETE { // We init
802029bc: 31 e1        	bnez	a0, 0x80202a00 <.LBB1_24+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802029be: 23 34 b4 f6  	sd	a1, -152(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802029c2: 23 b0 c9 00  	sd	a2, 0(s3)

00000000802029c6 <.LBB1_24>:
802029c6: 17 25 00 00  	auipc	a0, 2
802029ca: 13 05 a5 70  	addi	a0, a0, 1802
802029ce: 23 b4 a9 00  	sd	a0, 8(s3)
802029d2: 11 45        	li	a0, 4
802029d4: 23 b8 a9 00  	sd	a0, 16(s3)
802029d8: 23 bc 09 00  	sd	zero, 24(s3)
802029dc: 23 80 09 02  	sb	zero, 32(s3)
802029e0: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
802029e4: 23 08 04 f6  	sb	zero, -144(s0)
802029e8: 0f 00 10 03  	fence	rw, w
802029ec: 09 45        	li	a0, 2
802029ee: 23 b8 a9 02  	sd	a0, 48(s3)
802029f2: 13 05 84 f6  	addi	a0, s0, -152
802029f6: 97 10 00 00  	auipc	ra, 1
802029fa: e7 80 c0 e7  	jalr	-388(ra)
802029fe: 0d a0        	j	0x80202a20 <.LBB1_25>
80202a00: 85 45        	li	a1, 1
;             match status {
80202a02: 63 1c b5 00  	bne	a0, a1, 0x80202a1a <.LBB1_24+0x54>
80202a06: 0f 00 00 01  	fence	w, 0
80202a0a: 0f 00 30 03  	fence	rw, rw
80202a0e: 03 b5 09 03  	ld	a0, 48(s3)
80202a12: 0f 00 30 02  	fence	r, rw
;             match status {
80202a16: e3 08 b5 fe  	beq	a0, a1, 0x80202a06 <.LBB1_24+0x40>
80202a1a: 89 45        	li	a1, 2
;             match status {
80202a1c: 63 14 b5 16  	bne	a0, a1, 0x80202b84 <.LBB1_28+0x36>

0000000080202a20 <.LBB1_25>:
;         while pa < pa_end - PGSIZE {
80202a20: 17 95 01 00  	auipc	a0, 25
80202a24: 13 05 05 5e  	addi	a0, a0, 1504
80202a28: 85 65        	lui	a1, 1
80202a2a: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80202a2c: aa 95        	add	a1, a1, a0
80202a2e: 7d 76        	lui	a2, 1048575
80202a30: f1 8d        	and	a1, a1, a2
80202a32: 37 86 08 00  	lui	a2, 136
80202a36: 7d 36        	addiw	a2, a2, -1
80202a38: 32 06        	slli	a2, a2, 12
80202a3a: 7d 16        	addi	a2, a2, -1
80202a3c: 63 62 b6 0e  	bltu	a2, a1, 0x80202b20 <.LBB1_25+0x100>
80202a40: 63 e3 a5 1e  	bltu	a1, a0, 0x80202c26 <.LBB1_39>
80202a44: 05 6a        	lui	s4, 1
80202a46: 9b 05 fa ff  	addiw	a1, s4, -1
80202a4a: 2e 95        	add	a0, a0, a1
80202a4c: fd 75        	lui	a1, 1048575
80202a4e: 6d 8d        	and	a0, a0, a1
80202a50: 85 45        	li	a1, 1
80202a52: 89 4a        	li	s5, 2
80202a54: 13 86 09 02  	addi	a2, s3, 32
80202a58: 93 76 36 00  	andi	a3, a2, 3
80202a5c: 9b 96 36 00  	slliw	a3, a3, 3
80202a60: 13 07 f0 0f  	li	a4, 255
80202a64: bb 14 d7 00  	sllw	s1, a4, a3
80202a68: bb 95 d5 00  	sllw	a1, a1, a3
80202a6c: 82 15        	slli	a1, a1, 32
80202a6e: 93 db 05 02  	srli	s7, a1, 32
80202a72: 13 7c c6 ff  	andi	s8, a2, -4
80202a76: 13 89 89 00  	addi	s2, s3, 8
80202a7a: b7 f5 ff 43  	lui	a1, 278527
80202a7e: 93 9c 15 00  	slli	s9, a1, 1
80202a82: 2a 8b        	mv	s6, a0
80202a84: 85 45        	li	a1, 1
80202a86: 05 66        	lui	a2, 1
80202a88: 97 20 00 00  	auipc	ra, 2
80202a8c: e7 80 00 b0  	jalr	-1280(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202a90: 73 2d 00 10  	csrr	s10, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202a94: 73 b0 0a 10  	csrc	sstatus, s5
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202a98: 97 00 00 00  	auipc	ra, 0
80202a9c: e7 80 00 cb  	jalr	-848(ra)
;     if mc.noff == 0 {
80202aa0: 0c 65        	ld	a1, 8(a0)
80202aa2: 99 c5        	beqz	a1, 0x80202ab0 <.LBB1_25+0x90>
;     mc.noff += 1;
80202aa4: 85 05        	addi	a1, a1, 1
80202aa6: 0c e5        	sd	a1, 8(a0)
80202aa8: 03 85 09 02  	lb	a0, 32(s3)
80202aac: 01 ed        	bnez	a0, 0x80202ac4 <.LBB1_25+0xa4>
80202aae: 1d a0        	j	0x80202ad4 <.LBB1_25+0xb4>
;         mc.intena = old;
80202ab0: 13 16 ed 03  	slli	a2, s10, 62
80202ab4: 7d 92        	srli	a2, a2, 63
80202ab6: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
80202aba: 85 05        	addi	a1, a1, 1
80202abc: 0c e5        	sd	a1, 8(a0)
80202abe: 03 85 09 02  	lb	a0, 32(s3)
80202ac2: 09 c9        	beqz	a0, 0x80202ad4 <.LBB1_25+0xb4>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202ac4: 03 bd 89 01  	ld	s10, 24(s3)
80202ac8: 97 00 00 00  	auipc	ra, 0
80202acc: e7 80 00 c8  	jalr	-896(ra)
80202ad0: 63 08 ad 0e  	beq	s10, a0, 0x80202bc0 <.LBB1_33>
80202ad4: 2f 25 0c 14  	lr.w.aq	a0, (s8)
80202ad8: b3 75 95 00  	and	a1, a0, s1
80202adc: 81 e9        	bnez	a1, 0x80202aec <.LBB1_25+0xcc>
80202ade: b3 45 75 01  	xor	a1, a0, s7
80202ae2: e5 8d        	and	a1, a1, s1
80202ae4: a9 8d        	xor	a1, a1, a0
80202ae6: af 25 bc 18  	sc.w	a1, a1, (s8)
80202aea: ed f5        	bnez	a1, 0x80202ad4 <.LBB1_25+0xb4>
80202aec: 65 8d        	and	a0, a0, s1
80202aee: 01 25        	sext.w	a0, a0
;         while self
80202af0: 75 f1        	bnez	a0, 0x80202ad4 <.LBB1_25+0xb4>
80202af2: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
80202af6: 97 00 00 00  	auipc	ra, 0
80202afa: e7 80 20 c5  	jalr	-942(ra)
;         unsafe { (*pa).next = self.freelist }
80202afe: 83 b5 89 02  	ld	a1, 40(s3)
;         self.cpu = mycpu();
80202b02: 23 bc a9 00  	sd	a0, 24(s3)
;         unsafe { (*pa).next = self.freelist }
80202b06: 23 30 bb 00  	sd	a1, 0(s6)
;         self.freelist = pa;
80202b0a: 23 b4 69 03  	sd	s6, 40(s3)
;         self.lock.release();
80202b0e: 4a 85        	mv	a0, s2
80202b10: 97 00 00 00  	auipc	ra, 0
80202b14: e7 80 40 d6  	jalr	-668(ra)
;             pa += PGSIZE;
80202b18: 33 05 4b 01  	add	a0, s6, s4
;         while pa < pa_end - PGSIZE {
80202b1c: e3 63 9b f7  	bltu	s6, s9, 0x80202a82 <.LBB1_25+0x62>
80202b20: 13 05 84 f9  	addi	a0, s0, -104
80202b24: 23 30 a4 f6  	sd	a0, -160(s0)
80202b28: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202b2c <.LBB1_26>:
80202b2c: 17 35 00 00  	auipc	a0, 3
80202b30: 13 05 45 b2  	addi	a0, a0, -1244
80202b34: 23 3c a4 f6  	sd	a0, -136(s0)
80202b38: 05 45        	li	a0, 1
80202b3a: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080202b3e <.LBB1_27>:
80202b3e: 17 35 00 00  	auipc	a0, 3
80202b42: 13 05 a5 ab  	addi	a0, a0, -1350
80202b46: 23 34 a4 f8  	sd	a0, -120(s0)
80202b4a: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202b4e <.LBB1_28>:
80202b4e: 97 35 00 00  	auipc	a1, 3
80202b52: 93 85 a5 c9  	addi	a1, a1, -870
80202b56: 13 05 04 f6  	addi	a0, s0, -160
80202b5a: 13 06 84 f6  	addi	a2, s0, -152
80202b5e: 97 10 00 00  	auipc	ra, 1
80202b62: e7 80 20 07  	jalr	114(ra)
80202b66: 59 e9        	bnez	a0, 0x80202bfc <.LBB1_36>
; }
80202b68: ea 60        	ld	ra, 152(sp)
80202b6a: 4a 64        	ld	s0, 144(sp)
80202b6c: aa 64        	ld	s1, 136(sp)
80202b6e: 0a 69        	ld	s2, 128(sp)
80202b70: e6 79        	ld	s3, 120(sp)
80202b72: 46 7a        	ld	s4, 112(sp)
80202b74: a6 7a        	ld	s5, 104(sp)
80202b76: 06 7b        	ld	s6, 96(sp)
80202b78: e6 6b        	ld	s7, 88(sp)
80202b7a: 46 6c        	ld	s8, 80(sp)
80202b7c: a6 6c        	ld	s9, 72(sp)
80202b7e: 06 6d        	ld	s10, 64(sp)
80202b80: 0d 61        	addi	sp, sp, 160
80202b82: 82 80        	ret
;             match status {
80202b84: 05 e1        	bnez	a0, 0x80202ba4 <.LBB1_31>

0000000080202b86 <.LBB1_29>:
;                 INCOMPLETE => unreachable!(),
80202b86: 17 25 00 00  	auipc	a0, 2
80202b8a: 13 05 25 50  	addi	a0, a0, 1282

0000000080202b8e <.LBB1_30>:
80202b8e: 17 26 00 00  	auipc	a2, 2
80202b92: 13 06 26 52  	addi	a2, a2, 1314
80202b96: 93 05 80 02  	li	a1, 40
80202b9a: 97 10 00 00  	auipc	ra, 1
80202b9e: e7 80 c0 f4  	jalr	-180(ra)
80202ba2: 00 00        	unimp	

0000000080202ba4 <.LBB1_31>:
;                 PANICKED => panic!("Once has panicked"),
80202ba4: 17 25 00 00  	auipc	a0, 2
80202ba8: 13 05 c5 45  	addi	a0, a0, 1116

0000000080202bac <.LBB1_32>:
80202bac: 17 26 00 00  	auipc	a2, 2
80202bb0: 13 06 46 4c  	addi	a2, a2, 1220
80202bb4: c5 45        	li	a1, 17
80202bb6: 97 10 00 00  	auipc	ra, 1
80202bba: e7 80 00 f3  	jalr	-208(ra)
80202bbe: 00 00        	unimp	

0000000080202bc0 <.LBB1_33>:
80202bc0: 17 35 00 00  	auipc	a0, 3
80202bc4: 13 05 85 95  	addi	a0, a0, -1704
80202bc8: 23 3c a4 f6  	sd	a0, -136(s0)
80202bcc: 05 45        	li	a0, 1
80202bce: 23 30 a4 f8  	sd	a0, -128(s0)
80202bd2: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202bd6 <.LBB1_34>:
80202bd6: 17 35 00 00  	auipc	a0, 3
80202bda: 13 05 a5 93  	addi	a0, a0, -1734
80202bde: 23 34 a4 f8  	sd	a0, -120(s0)
80202be2: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202be6 <.LBB1_35>:
;             panic!("acquire");
80202be6: 97 35 00 00  	auipc	a1, 3
80202bea: 93 85 a5 95  	addi	a1, a1, -1702
80202bee: 13 05 84 f6  	addi	a0, s0, -152
80202bf2: 97 10 00 00  	auipc	ra, 1
80202bf6: e7 80 60 ec  	jalr	-314(ra)
80202bfa: 00 00        	unimp	

0000000080202bfc <.LBB1_36>:
80202bfc: 17 35 00 00  	auipc	a0, 3
80202c00: 13 05 c5 c1  	addi	a0, a0, -996

0000000080202c04 <.LBB1_37>:
80202c04: 97 36 00 00  	auipc	a3, 3
80202c08: 93 86 46 c4  	addi	a3, a3, -956

0000000080202c0c <.LBB1_38>:
80202c0c: 17 37 00 00  	auipc	a4, 3
80202c10: 13 07 c7 c6  	addi	a4, a4, -916
80202c14: 93 05 b0 02  	li	a1, 43
80202c18: 13 06 84 f9  	addi	a2, s0, -104
80202c1c: 97 10 00 00  	auipc	ra, 1
80202c20: e7 80 60 f3  	jalr	-202(ra)
80202c24: 00 00        	unimp	

0000000080202c26 <.LBB1_39>:
80202c26: 17 35 00 00  	auipc	a0, 3
80202c2a: 13 05 a5 9d  	addi	a0, a0, -1574
80202c2e: 23 3c a4 f6  	sd	a0, -136(s0)
80202c32: 05 45        	li	a0, 1
80202c34: 23 30 a4 f8  	sd	a0, -128(s0)
80202c38: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202c3c <.LBB1_40>:
80202c3c: 17 35 00 00  	auipc	a0, 3
80202c40: 13 05 c5 9b  	addi	a0, a0, -1604
80202c44: 23 34 a4 f8  	sd	a0, -120(s0)
80202c48: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202c4c <.LBB1_41>:
;             panic!("kfree");
80202c4c: 97 35 00 00  	auipc	a1, 3
80202c50: 93 85 c5 9d  	addi	a1, a1, -1572
80202c54: 13 05 84 f6  	addi	a0, s0, -152
80202c58: 97 10 00 00  	auipc	ra, 1
80202c5c: e7 80 00 e6  	jalr	-416(ra)
80202c60: 00 00        	unimp	

0000000080202c62 <_ZN6kernel6memory6kalloc6kalloc17h8a70add4bd9ad31fE>:
; pub fn kalloc() -> Addr {
80202c62: 5d 71        	addi	sp, sp, -80
80202c64: 86 e4        	sd	ra, 72(sp)
80202c66: a2 e0        	sd	s0, 64(sp)
80202c68: 26 fc        	sd	s1, 56(sp)
80202c6a: 4a f8        	sd	s2, 48(sp)
80202c6c: 80 08        	addi	s0, sp, 80
80202c6e: 0f 00 30 03  	fence	rw, rw

0000000080202c72 <.LBB2_19>:
80202c72: 97 54 01 00  	auipc	s1, 21
80202c76: 93 84 e4 99  	addi	s1, s1, -1634
80202c7a: 88 78        	ld	a0, 48(s1)
80202c7c: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202c80: 21 e9        	bnez	a0, 0x80202cd0 <.LBB2_20+0x34>
80202c82: 93 85 04 03  	addi	a1, s1, 48
80202c86: 05 46        	li	a2, 1
80202c88: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202c8c: 01 e5        	bnez	a0, 0x80202c94 <.LBB2_19+0x22>
80202c8e: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202c92: fd fa        	bnez	a3, 0x80202c88 <.LBB2_19+0x16>
;             if status == INCOMPLETE { // We init
80202c94: 15 ed        	bnez	a0, 0x80202cd0 <.LBB2_20+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202c96: 23 38 b4 fa  	sd	a1, -80(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202c9a: 90 e0        	sd	a2, 0(s1)

0000000080202c9c <.LBB2_20>:
80202c9c: 17 25 00 00  	auipc	a0, 2
80202ca0: 13 05 45 43  	addi	a0, a0, 1076
80202ca4: 88 e4        	sd	a0, 8(s1)
80202ca6: 11 45        	li	a0, 4
80202ca8: 88 e8        	sd	a0, 16(s1)
80202caa: 23 bc 04 00  	sd	zero, 24(s1)
80202cae: 23 80 04 02  	sb	zero, 32(s1)
80202cb2: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80202cb6: 23 0c 04 fa  	sb	zero, -72(s0)
80202cba: 0f 00 10 03  	fence	rw, w
80202cbe: 09 45        	li	a0, 2
80202cc0: 88 f8        	sd	a0, 48(s1)
80202cc2: 13 05 04 fb  	addi	a0, s0, -80
80202cc6: 97 10 00 00  	auipc	ra, 1
80202cca: e7 80 c0 ba  	jalr	-1108(ra)
80202cce: 05 a0        	j	0x80202cee <.LBB2_20+0x52>
80202cd0: 85 45        	li	a1, 1
;             match status {
80202cd2: 63 1b b5 00  	bne	a0, a1, 0x80202ce8 <.LBB2_20+0x4c>
80202cd6: 0f 00 00 01  	fence	w, 0
80202cda: 0f 00 30 03  	fence	rw, rw
80202cde: 88 78        	ld	a0, 48(s1)
80202ce0: 0f 00 30 02  	fence	r, rw
;             match status {
80202ce4: e3 09 b5 fe  	beq	a0, a1, 0x80202cd6 <.LBB2_20+0x3a>
80202ce8: 89 45        	li	a1, 2
;             match status {
80202cea: 63 1e b5 0c  	bne	a0, a1, 0x80202dc6 <.LBB2_20+0x12a>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202cee: 73 29 00 10  	csrr	s2, sstatus
80202cf2: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202cf4: 73 30 05 10  	csrc	sstatus, a0
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202cf8: 97 00 00 00  	auipc	ra, 0
80202cfc: e7 80 00 a5  	jalr	-1456(ra)
;     if mc.noff == 0 {
80202d00: 0c 65        	ld	a1, 8(a0)
80202d02: 99 c5        	beqz	a1, 0x80202d10 <.LBB2_20+0x74>
;     mc.noff += 1;
80202d04: 85 05        	addi	a1, a1, 1
80202d06: 0c e5        	sd	a1, 8(a0)
80202d08: 03 85 04 02  	lb	a0, 32(s1)
80202d0c: 01 ed        	bnez	a0, 0x80202d24 <.LBB2_20+0x88>
80202d0e: 1d a0        	j	0x80202d34 <.LBB2_20+0x98>
;         mc.intena = old;
80202d10: 13 16 e9 03  	slli	a2, s2, 62
80202d14: 7d 92        	srli	a2, a2, 63
80202d16: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
80202d1a: 85 05        	addi	a1, a1, 1
80202d1c: 0c e5        	sd	a1, 8(a0)
80202d1e: 03 85 04 02  	lb	a0, 32(s1)
80202d22: 09 c9        	beqz	a0, 0x80202d34 <.LBB2_20+0x98>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202d24: 03 b9 84 01  	ld	s2, 24(s1)
80202d28: 97 00 00 00  	auipc	ra, 0
80202d2c: e7 80 00 a2  	jalr	-1504(ra)
80202d30: 63 09 a9 0c  	beq	s2, a0, 0x80202e02 <.LBB2_25>
80202d34: 13 85 04 02  	addi	a0, s1, 32
80202d38: 93 75 35 00  	andi	a1, a0, 3
80202d3c: 9b 95 35 00  	slliw	a1, a1, 3
80202d40: 13 06 f0 0f  	li	a2, 255
80202d44: 3b 16 b6 00  	sllw	a2, a2, a1
80202d48: 85 46        	li	a3, 1
80202d4a: bb 95 b6 00  	sllw	a1, a3, a1
80202d4e: 82 15        	slli	a1, a1, 32
80202d50: 81 91        	srli	a1, a1, 32
80202d52: 71 99        	andi	a0, a0, -4
80202d54: af 26 05 14  	lr.w.aq	a3, (a0)
80202d58: 33 f7 c6 00  	and	a4, a3, a2
80202d5c: 01 eb        	bnez	a4, 0x80202d6c <.LBB2_20+0xd0>
80202d5e: 33 c7 b6 00  	xor	a4, a3, a1
80202d62: 71 8f        	and	a4, a4, a2
80202d64: 35 8f        	xor	a4, a4, a3
80202d66: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80202d6a: 6d f7        	bnez	a4, 0x80202d54 <.LBB2_20+0xb8>
80202d6c: 33 f5 c6 00  	and	a0, a3, a2
80202d70: 01 25        	sext.w	a0, a0
;         while self
80202d72: 69 f1        	bnez	a0, 0x80202d34 <.LBB2_20+0x98>
80202d74: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
80202d78: 97 00 00 00  	auipc	ra, 0
80202d7c: e7 80 00 9d  	jalr	-1584(ra)
;         r = self.freelist;
80202d80: 03 b9 84 02  	ld	s2, 40(s1)
;         self.cpu = mycpu();
80202d84: 88 ec        	sd	a0, 24(s1)
;         if r != null_mut() {
80202d86: 63 03 09 02  	beqz	s2, 0x80202dac <.LBB2_20+0x110>
;             unsafe { self.freelist = (*r).next }
80202d8a: 03 35 09 00  	ld	a0, 0(s2)
80202d8e: 88 f4        	sd	a0, 40(s1)
80202d90: 13 85 84 00  	addi	a0, s1, 8
;         self.lock.release();
80202d94: 97 00 00 00  	auipc	ra, 0
80202d98: e7 80 00 ae  	jalr	-1312(ra)
80202d9c: 95 45        	li	a1, 5
80202d9e: 05 66        	lui	a2, 1
80202da0: 4a 85        	mv	a0, s2
80202da2: 97 10 00 00  	auipc	ra, 1
80202da6: e7 80 60 7e  	jalr	2022(ra)
80202daa: 39 a0        	j	0x80202db8 <.LBB2_20+0x11c>
;         self.lock.release();
80202dac: 13 85 84 00  	addi	a0, s1, 8
80202db0: 97 00 00 00  	auipc	ra, 0
80202db4: e7 80 40 ac  	jalr	-1340(ra)
; }
80202db8: 4a 85        	mv	a0, s2
80202dba: a6 60        	ld	ra, 72(sp)
80202dbc: 06 64        	ld	s0, 64(sp)
80202dbe: e2 74        	ld	s1, 56(sp)
80202dc0: 42 79        	ld	s2, 48(sp)
80202dc2: 61 61        	addi	sp, sp, 80
80202dc4: 82 80        	ret
;             match status {
80202dc6: 05 e1        	bnez	a0, 0x80202de6 <.LBB2_23>

0000000080202dc8 <.LBB2_21>:
;                 INCOMPLETE => unreachable!(),
80202dc8: 17 25 00 00  	auipc	a0, 2
80202dcc: 13 05 05 2c  	addi	a0, a0, 704

0000000080202dd0 <.LBB2_22>:
80202dd0: 17 26 00 00  	auipc	a2, 2
80202dd4: 13 06 06 2e  	addi	a2, a2, 736
80202dd8: 93 05 80 02  	li	a1, 40
80202ddc: 97 10 00 00  	auipc	ra, 1
80202de0: e7 80 a0 d0  	jalr	-758(ra)
80202de4: 00 00        	unimp	

0000000080202de6 <.LBB2_23>:
;                 PANICKED => panic!("Once has panicked"),
80202de6: 17 25 00 00  	auipc	a0, 2
80202dea: 13 05 a5 21  	addi	a0, a0, 538

0000000080202dee <.LBB2_24>:
80202dee: 17 26 00 00  	auipc	a2, 2
80202df2: 13 06 26 28  	addi	a2, a2, 642
80202df6: c5 45        	li	a1, 17
80202df8: 97 10 00 00  	auipc	ra, 1
80202dfc: e7 80 e0 ce  	jalr	-786(ra)
80202e00: 00 00        	unimp	

0000000080202e02 <.LBB2_25>:
80202e02: 17 25 00 00  	auipc	a0, 2
80202e06: 13 05 65 71  	addi	a0, a0, 1814
80202e0a: 23 30 a4 fc  	sd	a0, -64(s0)
80202e0e: 05 45        	li	a0, 1
80202e10: 23 34 a4 fc  	sd	a0, -56(s0)
80202e14: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202e18 <.LBB2_26>:
80202e18: 17 25 00 00  	auipc	a0, 2
80202e1c: 13 05 85 6f  	addi	a0, a0, 1784
80202e20: 23 38 a4 fc  	sd	a0, -48(s0)
80202e24: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202e28 <.LBB2_27>:
;             panic!("acquire");
80202e28: 97 25 00 00  	auipc	a1, 2
80202e2c: 93 85 85 71  	addi	a1, a1, 1816
80202e30: 13 05 04 fb  	addi	a0, s0, -80
80202e34: 97 10 00 00  	auipc	ra, 1
80202e38: e7 80 40 c8  	jalr	-892(ra)
80202e3c: 00 00        	unimp	

0000000080202e3e <main>:
; pub fn main(hartid: usize) {
80202e3e: 19 71        	addi	sp, sp, -128
80202e40: 86 fc        	sd	ra, 120(sp)
80202e42: a2 f8        	sd	s0, 112(sp)
80202e44: a6 f4        	sd	s1, 104(sp)
80202e46: ca f0        	sd	s2, 96(sp)
80202e48: ce ec        	sd	s3, 88(sp)
80202e4a: 00 01        	addi	s0, sp, 128

0000000080202e4c <.LBB0_19>:
80202e4c: 17 95 01 00  	auipc	a0, 25
80202e50: 13 05 45 1b  	addi	a0, a0, 436

0000000080202e54 <.LBB0_20>:
80202e54: 97 45 01 00  	auipc	a1, 20
80202e58: 93 85 c5 1a  	addi	a1, a1, 428
80202e5c: 63 f9 a5 00  	bgeu	a1, a0, 0x80202e6e <.LBB0_20+0x1a>
80202e60: 13 86 15 00  	addi	a2, a1, 1
80202e64: 23 80 05 00  	sb	zero, 0(a1)
80202e68: b2 85        	mv	a1, a2
80202e6a: e3 6b a6 fe  	bltu	a2, a0, 0x80202e60 <.LBB0_20+0xc>
;     if cpuid() == 0 {
80202e6e: 97 00 00 00  	auipc	ra, 0
80202e72: e7 80 80 8c  	jalr	-1848(ra)
80202e76: 63 19 05 28  	bnez	a0, 0x80203108 <.LBB0_43>

0000000080202e7a <.LBB0_21>:
;     println!("{}", LOGO);
80202e7a: 17 25 00 00  	auipc	a0, 2
80202e7e: 13 05 e5 48  	addi	a0, a0, 1166
80202e82: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202e86 <.LBB0_22>:
80202e86: 17 f5 ff ff  	auipc	a0, 1048575
80202e8a: 13 05 05 70  	addi	a0, a0, 1792
80202e8e: 23 38 a4 f8  	sd	a0, -112(s0)
80202e92: 13 09 04 fd  	addi	s2, s0, -48
80202e96: 23 3c 24 f9  	sd	s2, -104(s0)
80202e9a: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e9e <.LBB0_23>:
80202e9e: 17 25 00 00  	auipc	a0, 2
80202ea2: 13 05 25 2f  	addi	a0, a0, 754
80202ea6: 23 38 a4 fa  	sd	a0, -80(s0)
80202eaa: 09 45        	li	a0, 2
80202eac: 23 3c a4 fa  	sd	a0, -72(s0)
80202eb0: 13 05 84 f8  	addi	a0, s0, -120
80202eb4: 23 30 a4 fc  	sd	a0, -64(s0)
80202eb8: 85 44        	li	s1, 1
80202eba: 23 34 94 fc  	sd	s1, -56(s0)

0000000080202ebe <.LBB0_24>:
80202ebe: 97 35 00 00  	auipc	a1, 3
80202ec2: 93 85 a5 92  	addi	a1, a1, -1750
80202ec6: 13 05 84 f9  	addi	a0, s0, -104
80202eca: 13 06 04 fa  	addi	a2, s0, -96
80202ece: 97 10 00 00  	auipc	ra, 1
80202ed2: e7 80 20 d0  	jalr	-766(ra)
80202ed6: 63 13 05 32  	bnez	a0, 0x802031fc <.LBB0_50>
80202eda: 23 34 24 f9  	sd	s2, -120(s0)
80202ede: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ee2 <.LBB0_25>:
80202ee2: 17 25 00 00  	auipc	a0, 2
80202ee6: 13 05 65 7d  	addi	a0, a0, 2006
80202eea: 23 38 a4 fa  	sd	a0, -80(s0)
80202eee: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202ef2 <.LBB0_26>:
80202ef2: 97 24 00 00  	auipc	s1, 2
80202ef6: 93 84 e4 76  	addi	s1, s1, 1902
80202efa: 23 30 94 fc  	sd	s1, -64(s0)
80202efe: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202f02 <.LBB0_27>:
80202f02: 97 35 00 00  	auipc	a1, 3
80202f06: 93 85 65 8e  	addi	a1, a1, -1818
80202f0a: 13 05 84 f8  	addi	a0, s0, -120
80202f0e: 13 06 04 fa  	addi	a2, s0, -96
80202f12: 97 10 00 00  	auipc	ra, 1
80202f16: e7 80 e0 cb  	jalr	-834(ra)
80202f1a: 63 11 05 2e  	bnez	a0, 0x802031fc <.LBB0_50>
80202f1e: 13 05 04 fd  	addi	a0, s0, -48
80202f22: 23 34 a4 f8  	sd	a0, -120(s0)
80202f26: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202f2a <.LBB0_28>:
80202f2a: 17 25 00 00  	auipc	a0, 2
80202f2e: 13 05 65 7a  	addi	a0, a0, 1958
80202f32: 23 38 a4 fa  	sd	a0, -80(s0)
80202f36: 05 45        	li	a0, 1
80202f38: 23 3c a4 fa  	sd	a0, -72(s0)
80202f3c: 23 30 94 fc  	sd	s1, -64(s0)
80202f40: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202f44 <.LBB0_29>:
80202f44: 97 35 00 00  	auipc	a1, 3
80202f48: 93 85 45 8a  	addi	a1, a1, -1884
80202f4c: 13 05 84 f8  	addi	a0, s0, -120
80202f50: 13 06 04 fa  	addi	a2, s0, -96
80202f54: 97 10 00 00  	auipc	ra, 1
80202f58: e7 80 c0 c7  	jalr	-900(ra)
80202f5c: 63 10 05 2a  	bnez	a0, 0x802031fc <.LBB0_50>
;         kinit(); 			// 初始化物理页分配器
80202f60: 97 00 00 00  	auipc	ra, 0
80202f64: e7 80 80 a1  	jalr	-1512(ra)
;         kvminit(); 			// 创建内核页表
80202f68: 97 00 00 00  	auipc	ra, 0
80202f6c: e7 80 a0 2f  	jalr	762(ra)
;         kvminithart(); 		// 打开分页管理
80202f70: 97 00 00 00  	auipc	ra, 0
80202f74: e7 80 00 54  	jalr	1344(ra)

0000000080202f78 <.LBB0_30>:
;         self.0.call_once(builder)
80202f78: 17 45 01 00  	auipc	a0, 20
80202f7c: 13 05 85 6e  	addi	a0, a0, 1768
80202f80: 97 f0 ff ff  	auipc	ra, 1048575
80202f84: e7 80 c0 1c  	jalr	460(ra)
80202f88: 13 05 05 0c  	addi	a0, a0, 192
80202f8c: 93 05 00 04  	li	a1, 64
80202f90: 37 06 00 04  	lui	a2, 16384
80202f94: 75 36        	addiw	a2, a2, -3
80202f96: 32 06        	slli	a2, a2, 12
80202f98: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80202f9a: 10 e1        	sd	a2, 0(a0)
80202f9c: 13 05 85 10  	addi	a0, a0, 264
80202fa0: fd 15        	addi	a1, a1, -1
80202fa2: 36 96        	add	a2, a2, a3
80202fa4: fd f9        	bnez	a1, 0x80202f9a <.LBB0_30+0x22>
80202fa6: 13 09 04 fd  	addi	s2, s0, -48
80202faa: 23 34 24 f9  	sd	s2, -120(s0)
80202fae: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202fb2 <.LBB0_31>:
80202fb2: 17 35 00 00  	auipc	a0, 3
80202fb6: 13 05 65 82  	addi	a0, a0, -2010
80202fba: 23 38 a4 fa  	sd	a0, -80(s0)
80202fbe: 85 44        	li	s1, 1
80202fc0: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202fc4 <.LBB0_32>:
80202fc4: 17 25 00 00  	auipc	a0, 2
80202fc8: 13 05 c5 7f  	addi	a0, a0, 2044
80202fcc: 23 30 a4 fc  	sd	a0, -64(s0)
80202fd0: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202fd4 <.LBB0_33>:
80202fd4: 97 35 00 00  	auipc	a1, 3
80202fd8: 93 85 45 81  	addi	a1, a1, -2028
80202fdc: 13 05 84 f8  	addi	a0, s0, -120
80202fe0: 13 06 04 fa  	addi	a2, s0, -96
80202fe4: 97 10 00 00  	auipc	ra, 1
80202fe8: e7 80 c0 be  	jalr	-1044(ra)
80202fec: 63 18 05 20  	bnez	a0, 0x802031fc <.LBB0_50>
80202ff0: 23 34 24 f9  	sd	s2, -120(s0)
80202ff4: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ff8 <.LBB0_34>:
80202ff8: 17 25 00 00  	auipc	a0, 2
80202ffc: 13 05 05 49  	addi	a0, a0, 1168
80203000: 23 38 a4 fa  	sd	a0, -80(s0)
80203004: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080203008 <.LBB0_35>:
80203008: 17 25 00 00  	auipc	a0, 2
8020300c: 13 05 85 43  	addi	a0, a0, 1080
80203010: 23 30 a4 fc  	sd	a0, -64(s0)
80203014: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203018 <.LBB0_36>:
80203018: 97 25 00 00  	auipc	a1, 2
8020301c: 93 85 05 7d  	addi	a1, a1, 2000
80203020: 13 05 84 f8  	addi	a0, s0, -120
80203024: 13 06 04 fa  	addi	a2, s0, -96
80203028: 97 10 00 00  	auipc	ra, 1
8020302c: e7 80 80 ba  	jalr	-1112(ra)
80203030: 63 16 05 1c  	bnez	a0, 0x802031fc <.LBB0_50>
;         trapinithart(); 	// 设置中断向量
80203034: 97 f0 ff ff  	auipc	ra, 1048575
80203038: e7 80 20 76  	jalr	1890(ra)
8020303c: 37 05 00 0c  	lui	a0, 49152
80203040: 85 49        	li	s3, 1
80203042: 23 24 35 03  	sw	s3, 40(a0)
80203046: 23 22 35 01  	sw	s3, 4(a0)
8020304a: 13 09 04 fd  	addi	s2, s0, -48
8020304e: 23 34 24 f9  	sd	s2, -120(s0)
80203052: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203056 <.LBB0_37>:
80203056: 17 25 00 00  	auipc	a0, 2
8020305a: 13 05 25 3b  	addi	a0, a0, 946
8020305e: 23 38 a4 fa  	sd	a0, -80(s0)
80203062: 23 3c 34 fb  	sd	s3, -72(s0)

0000000080203066 <.LBB0_38>:
80203066: 97 24 00 00  	auipc	s1, 2
8020306a: 93 84 a4 38  	addi	s1, s1, 906
8020306e: 23 30 94 fc  	sd	s1, -64(s0)
80203072: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203076 <.LBB0_39>:
80203076: 97 25 00 00  	auipc	a1, 2
8020307a: 93 85 25 77  	addi	a1, a1, 1906
8020307e: 13 05 84 f8  	addi	a0, s0, -120
80203082: 13 06 04 fa  	addi	a2, s0, -96
80203086: 97 10 00 00  	auipc	ra, 1
8020308a: e7 80 a0 b4  	jalr	-1206(ra)
8020308e: 63 17 05 16  	bnez	a0, 0x802031fc <.LBB0_50>
;     let hart = cpuid();
80203092: 97 f0 ff ff  	auipc	ra, 1048575
80203096: e7 80 40 6a  	jalr	1700(ra)
;     PLIC + 0x2080 + hart * 0x100
8020309a: 93 15 85 00  	slli	a1, a0, 8
8020309e: 37 26 00 0c  	lui	a2, 49154
802030a2: b2 95        	add	a1, a1, a2
802030a4: 13 06 20 40  	li	a2, 1026
802030a8: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802030ac: 36 05        	slli	a0, a0, 13
802030ae: b7 15 20 0c  	lui	a1, 49665
802030b2: 2e 95        	add	a0, a0, a1
802030b4: 23 20 05 00  	sw	zero, 0(a0)
802030b8: 23 34 24 f9  	sd	s2, -120(s0)
802030bc: 23 30 04 fa  	sd	zero, -96(s0)

00000000802030c0 <.LBB0_40>:
802030c0: 17 25 00 00  	auipc	a0, 2
802030c4: 13 05 05 37  	addi	a0, a0, 880
802030c8: 23 38 a4 fa  	sd	a0, -80(s0)
802030cc: 23 3c 34 fb  	sd	s3, -72(s0)
802030d0: 23 30 94 fc  	sd	s1, -64(s0)
802030d4: 23 34 04 fc  	sd	zero, -56(s0)

00000000802030d8 <.LBB0_41>:
802030d8: 97 25 00 00  	auipc	a1, 2
802030dc: 93 85 05 71  	addi	a1, a1, 1808
802030e0: 13 05 84 f8  	addi	a0, s0, -120
802030e4: 13 06 04 fa  	addi	a2, s0, -96
802030e8: 97 10 00 00  	auipc	ra, 1
802030ec: e7 80 80 ae  	jalr	-1304(ra)
802030f0: 63 16 05 10  	bnez	a0, 0x802031fc <.LBB0_50>
802030f4: 0f 00 10 03  	fence	rw, w

00000000802030f8 <.LBB0_42>:
802030f8: 17 95 01 00  	auipc	a0, 25
802030fc: 13 05 05 8a  	addi	a0, a0, -1888
80203100: 85 45        	li	a1, 1
80203102: 23 00 b5 00  	sb	a1, 0(a0)
80203106: 05 a2        	j	0x80203226 <.LBB0_53>

0000000080203108 <.LBB0_43>:
80203108: 17 95 01 00  	auipc	a0, 25
8020310c: 13 05 05 89  	addi	a0, a0, -1904
80203110: 0f 00 30 03  	fence	rw, rw
80203114: 83 05 05 00  	lb	a1, 0(a0)
80203118: 0f 00 30 02  	fence	r, rw
8020311c: f5 d9        	beqz	a1, 0x80203110 <.LBB0_43+0x8>
;         println!("hart {} starting...", cpuid());
8020311e: 97 f0 ff ff  	auipc	ra, 1048575
80203122: e7 80 80 61  	jalr	1560(ra)
80203126: 23 30 a4 f8  	sd	a0, -128(s0)
8020312a: 13 05 04 f8  	addi	a0, s0, -128
8020312e: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203132 <.LBB0_44>:
80203132: 17 15 00 00  	auipc	a0, 1
80203136: 13 05 e5 41  	addi	a0, a0, 1054
8020313a: 23 38 a4 f8  	sd	a0, -112(s0)
8020313e: 13 09 04 fd  	addi	s2, s0, -48
80203142: 23 3c 24 f9  	sd	s2, -104(s0)
80203146: 23 30 04 fa  	sd	zero, -96(s0)

000000008020314a <.LBB0_45>:
8020314a: 17 25 00 00  	auipc	a0, 2
8020314e: 13 05 e5 52  	addi	a0, a0, 1326
80203152: 23 38 a4 fa  	sd	a0, -80(s0)
80203156: 09 45        	li	a0, 2
80203158: 23 3c a4 fa  	sd	a0, -72(s0)
8020315c: 13 05 84 f8  	addi	a0, s0, -120
80203160: 23 30 a4 fc  	sd	a0, -64(s0)
80203164: 85 44        	li	s1, 1
80203166: 23 34 94 fc  	sd	s1, -56(s0)

000000008020316a <.LBB0_46>:
8020316a: 97 25 00 00  	auipc	a1, 2
8020316e: 93 85 e5 67  	addi	a1, a1, 1662
80203172: 13 05 84 f9  	addi	a0, s0, -104
80203176: 13 06 04 fa  	addi	a2, s0, -96
8020317a: 97 10 00 00  	auipc	ra, 1
8020317e: e7 80 60 a5  	jalr	-1450(ra)
80203182: 2d ed        	bnez	a0, 0x802031fc <.LBB0_50>
;         kvminithart();
80203184: 97 00 00 00  	auipc	ra, 0
80203188: e7 80 c0 32  	jalr	812(ra)
;         trapinithart();
8020318c: 97 f0 ff ff  	auipc	ra, 1048575
80203190: e7 80 a0 60  	jalr	1546(ra)
;     let hart = cpuid();
80203194: 97 f0 ff ff  	auipc	ra, 1048575
80203198: e7 80 20 5a  	jalr	1442(ra)
;     PLIC + 0x2080 + hart * 0x100
8020319c: 93 15 85 00  	slli	a1, a0, 8
802031a0: 37 26 00 0c  	lui	a2, 49154
802031a4: b2 95        	add	a1, a1, a2
802031a6: 13 06 20 40  	li	a2, 1026
802031aa: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802031ae: 36 05        	slli	a0, a0, 13
802031b0: b7 15 20 0c  	lui	a1, 49665
802031b4: 2e 95        	add	a0, a0, a1
802031b6: 23 20 05 00  	sw	zero, 0(a0)
802031ba: 23 34 24 f9  	sd	s2, -120(s0)
802031be: 23 30 04 fa  	sd	zero, -96(s0)

00000000802031c2 <.LBB0_47>:
802031c2: 17 25 00 00  	auipc	a0, 2
802031c6: 13 05 e5 26  	addi	a0, a0, 622
802031ca: 23 38 a4 fa  	sd	a0, -80(s0)
802031ce: 23 3c 94 fa  	sd	s1, -72(s0)

00000000802031d2 <.LBB0_48>:
802031d2: 17 25 00 00  	auipc	a0, 2
802031d6: 13 05 e5 21  	addi	a0, a0, 542
802031da: 23 30 a4 fc  	sd	a0, -64(s0)
802031de: 23 34 04 fc  	sd	zero, -56(s0)

00000000802031e2 <.LBB0_49>:
802031e2: 97 25 00 00  	auipc	a1, 2
802031e6: 93 85 65 60  	addi	a1, a1, 1542
802031ea: 13 05 84 f8  	addi	a0, s0, -120
802031ee: 13 06 04 fa  	addi	a2, s0, -96
802031f2: 97 10 00 00  	auipc	ra, 1
802031f6: e7 80 e0 9d  	jalr	-1570(ra)
802031fa: 15 c5        	beqz	a0, 0x80203226 <.LBB0_53>

00000000802031fc <.LBB0_50>:
802031fc: 17 25 00 00  	auipc	a0, 2
80203200: 13 05 c5 61  	addi	a0, a0, 1564

0000000080203204 <.LBB0_51>:
80203204: 97 26 00 00  	auipc	a3, 2
80203208: 93 86 46 64  	addi	a3, a3, 1604

000000008020320c <.LBB0_52>:
8020320c: 17 27 00 00  	auipc	a4, 2
80203210: 13 07 c7 66  	addi	a4, a4, 1644
80203214: 93 05 b0 02  	li	a1, 43
80203218: 13 06 04 fd  	addi	a2, s0, -48
8020321c: 97 10 00 00  	auipc	ra, 1
80203220: e7 80 60 93  	jalr	-1738(ra)
80203224: 00 00        	unimp	

0000000080203226 <.LBB0_53>:
80203226: 17 25 00 00  	auipc	a0, 2
8020322a: 13 05 a5 4c  	addi	a0, a0, 1226
8020322e: 23 38 a4 fa  	sd	a0, -80(s0)
80203232: 05 45        	li	a0, 1
80203234: 23 3c a4 fa  	sd	a0, -72(s0)
80203238: 23 30 04 fa  	sd	zero, -96(s0)

000000008020323c <.LBB0_54>:
8020323c: 17 25 00 00  	auipc	a0, 2
80203240: 13 05 45 42  	addi	a0, a0, 1060
80203244: 23 30 a4 fc  	sd	a0, -64(s0)
80203248: 23 34 04 fc  	sd	zero, -56(s0)

000000008020324c <.LBB0_55>:
;     panic!("Shutdown!");
8020324c: 97 25 00 00  	auipc	a1, 2
80203250: 93 85 45 4c  	addi	a1, a1, 1220
80203254: 13 05 04 fa  	addi	a0, s0, -96
80203258: 97 10 00 00  	auipc	ra, 1
8020325c: e7 80 00 86  	jalr	-1952(ra)
80203260: 00 00        	unimp	

0000000080203262 <_ZN6kernel6memory3kvm7kvminit17h69f7d250a71e7693E>:
; pub fn kvminit() {
80203262: 59 71        	addi	sp, sp, -112
80203264: 86 f4        	sd	ra, 104(sp)
80203266: a2 f0        	sd	s0, 96(sp)
80203268: a6 ec        	sd	s1, 88(sp)
8020326a: ca e8        	sd	s2, 80(sp)
8020326c: ce e4        	sd	s3, 72(sp)
8020326e: 80 18        	addi	s0, sp, 112
80203270: 0f 00 30 03  	fence	rw, rw

0000000080203274 <.LBB1_19>:
80203274: 97 44 01 00  	auipc	s1, 20
80203278: 93 84 44 3d  	addi	s1, s1, 980
8020327c: 88 68        	ld	a0, 16(s1)
8020327e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203282: 29 e9        	bnez	a0, 0x802032d4 <.LBB1_19+0x60>
80203284: 93 85 04 01  	addi	a1, s1, 16
80203288: 85 49        	li	s3, 1
8020328a: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020328e: 01 e5        	bnez	a0, 0x80203296 <.LBB1_19+0x22>
80203290: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80203294: 7d fa        	bnez	a2, 0x8020328a <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
80203296: 1d ed        	bnez	a0, 0x802032d4 <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203298: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
8020329c: 97 00 00 00  	auipc	ra, 0
802032a0: e7 80 60 9c  	jalr	-1594(ra)
802032a4: 2a 89        	mv	s2, a0
802032a6: 05 66        	lui	a2, 1
802032a8: 81 45        	li	a1, 0
802032aa: 97 10 00 00  	auipc	ra, 1
802032ae: e7 80 e0 2d  	jalr	734(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802032b2: 23 b0 34 01  	sd	s3, 0(s1)
802032b6: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
802032ba: 23 04 04 fa  	sb	zero, -88(s0)
802032be: 0f 00 10 03  	fence	rw, w
802032c2: 09 45        	li	a0, 2
802032c4: 88 e8        	sd	a0, 16(s1)
802032c6: 13 05 04 fa  	addi	a0, s0, -96
802032ca: 97 00 00 00  	auipc	ra, 0
802032ce: e7 80 80 5a  	jalr	1448(ra)
802032d2: 05 a0        	j	0x802032f2 <.LBB1_19+0x7e>
802032d4: 85 45        	li	a1, 1
;             match status {
802032d6: 63 1b b5 00  	bne	a0, a1, 0x802032ec <.LBB1_19+0x78>
802032da: 0f 00 00 01  	fence	w, 0
802032de: 0f 00 30 03  	fence	rw, rw
802032e2: 88 68        	ld	a0, 16(s1)
802032e4: 0f 00 30 02  	fence	r, rw
;             match status {
802032e8: e3 09 b5 fe  	beq	a0, a1, 0x802032da <.LBB1_19+0x66>
802032ec: 89 45        	li	a1, 2
;             match status {
802032ee: 63 10 b5 12  	bne	a0, a1, 0x8020340e <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802032f2: 13 89 84 00  	addi	s2, s1, 8
802032f6: b7 05 00 10  	lui	a1, 65536
802032fa: 05 66        	lui	a2, 1
802032fc: b7 06 00 10  	lui	a3, 65536
80203300: 19 47        	li	a4, 6
80203302: 4a 85        	mv	a0, s2
80203304: 97 f0 ff ff  	auipc	ra, 1048575
80203308: e7 80 c0 09  	jalr	156(ra)
8020330c: 01 25        	sext.w	a0, a0
8020330e: 63 1e 05 12  	bnez	a0, 0x8020344a <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203312: b7 15 00 10  	lui	a1, 65537
80203316: 05 66        	lui	a2, 1
80203318: b7 16 00 10  	lui	a3, 65537
8020331c: 19 47        	li	a4, 6
8020331e: 4a 85        	mv	a0, s2
80203320: 97 f0 ff ff  	auipc	ra, 1048575
80203324: e7 80 00 08  	jalr	128(ra)
80203328: 01 25        	sext.w	a0, a0
8020332a: 63 10 05 12  	bnez	a0, 0x8020344a <.LBB1_29>
8020332e: b7 05 00 0c  	lui	a1, 49152
80203332: 37 06 40 00  	lui	a2, 1024
80203336: b7 06 00 0c  	lui	a3, 49152
8020333a: 19 47        	li	a4, 6
8020333c: 4a 85        	mv	a0, s2
8020333e: 97 f0 ff ff  	auipc	ra, 1048575
80203342: e7 80 20 06  	jalr	98(ra)
80203346: 01 25        	sext.w	a0, a0
80203348: 63 11 05 10  	bnez	a0, 0x8020344a <.LBB1_29>

000000008020334c <.LBB1_20>:
8020334c: 97 24 00 00  	auipc	s1, 2
80203350: 93 84 44 cb  	addi	s1, s1, -844
80203354: 13 05 f0 bf  	li	a0, -1025
80203358: 56 05        	slli	a0, a0, 21
8020335a: 33 86 a4 00  	add	a2, s1, a0
8020335e: 13 05 10 40  	li	a0, 1025
80203362: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203366: 29 47        	li	a4, 10
80203368: 4a 85        	mv	a0, s2
8020336a: ae 86        	mv	a3, a1
8020336c: 97 f0 ff ff  	auipc	ra, 1048575
80203370: e7 80 40 03  	jalr	52(ra)
80203374: 01 25        	sext.w	a0, a0
80203376: 71 e9        	bnez	a0, 0x8020344a <.LBB1_29>
80203378: 45 45        	li	a0, 17
8020337a: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
8020337c: 33 06 95 40  	sub	a2, a0, s1
80203380: 19 47        	li	a4, 6
80203382: 4a 85        	mv	a0, s2
80203384: a6 85        	mv	a1, s1
80203386: a6 86        	mv	a3, s1
80203388: 97 f0 ff ff  	auipc	ra, 1048575
8020338c: e7 80 80 01  	jalr	24(ra)
80203390: 01 25        	sext.w	a0, a0
80203392: 45 ed        	bnez	a0, 0x8020344a <.LBB1_29>

0000000080203394 <.LBB1_21>:
80203394: 97 e6 ff ff  	auipc	a3, 1048574
80203398: 93 86 c6 c6  	addi	a3, a3, -916
8020339c: 37 05 00 04  	lui	a0, 16384
802033a0: 7d 35        	addiw	a0, a0, -1
802033a2: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802033a6: 05 66        	lui	a2, 1
802033a8: 29 47        	li	a4, 10
802033aa: 4a 85        	mv	a0, s2
802033ac: 97 f0 ff ff  	auipc	ra, 1048575
802033b0: e7 80 40 ff  	jalr	-12(ra)
802033b4: 01 25        	sext.w	a0, a0
802033b6: 51 e9        	bnez	a0, 0x8020344a <.LBB1_29>
802033b8: 13 05 04 fd  	addi	a0, s0, -48
802033bc: 23 3c a4 f8  	sd	a0, -104(s0)
802033c0: 23 30 04 fa  	sd	zero, -96(s0)

00000000802033c4 <.LBB1_22>:
802033c4: 17 25 00 00  	auipc	a0, 2
802033c8: 13 05 45 3c  	addi	a0, a0, 964
802033cc: 23 38 a4 fa  	sd	a0, -80(s0)
802033d0: 05 45        	li	a0, 1
802033d2: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802033d6 <.LBB1_23>:
802033d6: 17 25 00 00  	auipc	a0, 2
802033da: 13 05 25 35  	addi	a0, a0, 850
802033de: 23 30 a4 fc  	sd	a0, -64(s0)
802033e2: 23 34 04 fc  	sd	zero, -56(s0)

00000000802033e6 <.LBB1_24>:
802033e6: 97 25 00 00  	auipc	a1, 2
802033ea: 93 85 25 40  	addi	a1, a1, 1026
802033ee: 13 05 84 f9  	addi	a0, s0, -104
802033f2: 13 06 04 fa  	addi	a2, s0, -96
802033f6: 97 00 00 00  	auipc	ra, 0
802033fa: e7 80 a0 7d  	jalr	2010(ra)
802033fe: 41 e5        	bnez	a0, 0x80203486 <.LBB1_32>
; }
80203400: a6 70        	ld	ra, 104(sp)
80203402: 06 74        	ld	s0, 96(sp)
80203404: e6 64        	ld	s1, 88(sp)
80203406: 46 69        	ld	s2, 80(sp)
80203408: a6 69        	ld	s3, 72(sp)
8020340a: 65 61        	addi	sp, sp, 112
8020340c: 82 80        	ret
;             match status {
8020340e: 05 e1        	bnez	a0, 0x8020342e <.LBB1_27>

0000000080203410 <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
80203410: 17 25 00 00  	auipc	a0, 2
80203414: 13 05 85 c7  	addi	a0, a0, -904

0000000080203418 <.LBB1_26>:
80203418: 17 26 00 00  	auipc	a2, 2
8020341c: 13 06 86 c9  	addi	a2, a2, -872
80203420: 93 05 80 02  	li	a1, 40
80203424: 97 00 00 00  	auipc	ra, 0
80203428: e7 80 20 6c  	jalr	1730(ra)
8020342c: 00 00        	unimp	

000000008020342e <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
8020342e: 17 25 00 00  	auipc	a0, 2
80203432: 13 05 25 bd  	addi	a0, a0, -1070

0000000080203436 <.LBB1_28>:
80203436: 17 26 00 00  	auipc	a2, 2
8020343a: 13 06 a6 c3  	addi	a2, a2, -966
8020343e: c5 45        	li	a1, 17
80203440: 97 00 00 00  	auipc	ra, 0
80203444: e7 80 60 6a  	jalr	1702(ra)
80203448: 00 00        	unimp	

000000008020344a <.LBB1_29>:
8020344a: 17 25 00 00  	auipc	a0, 2
8020344e: 13 05 65 2e  	addi	a0, a0, 742
80203452: 23 38 a4 fa  	sd	a0, -80(s0)
80203456: 05 45        	li	a0, 1
80203458: 23 3c a4 fa  	sd	a0, -72(s0)
8020345c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203460 <.LBB1_30>:
80203460: 17 25 00 00  	auipc	a0, 2
80203464: 13 05 85 2c  	addi	a0, a0, 712
80203468: 23 30 a4 fc  	sd	a0, -64(s0)
8020346c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203470 <.LBB1_31>:
80203470: 97 25 00 00  	auipc	a1, 2
80203474: 93 85 85 2e  	addi	a1, a1, 744
80203478: 13 05 04 fa  	addi	a0, s0, -96
8020347c: 97 00 00 00  	auipc	ra, 0
80203480: e7 80 c0 63  	jalr	1596(ra)
80203484: 00 00        	unimp	

0000000080203486 <.LBB1_32>:
80203486: 17 25 00 00  	auipc	a0, 2
8020348a: 13 05 25 39  	addi	a0, a0, 914

000000008020348e <.LBB1_33>:
8020348e: 97 26 00 00  	auipc	a3, 2
80203492: 93 86 a6 3b  	addi	a3, a3, 954

0000000080203496 <.LBB1_34>:
80203496: 17 27 00 00  	auipc	a4, 2
8020349a: 13 07 27 3e  	addi	a4, a4, 994
8020349e: 93 05 b0 02  	li	a1, 43
802034a2: 13 06 04 fd  	addi	a2, s0, -48
802034a6: 97 00 00 00  	auipc	ra, 0
802034aa: e7 80 c0 6a  	jalr	1708(ra)
802034ae: 00 00        	unimp	

00000000802034b0 <_ZN6kernel6memory3kvm11kvminithart17h64b330979084956eE>:
; pub fn kvminithart() {
802034b0: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802034b2: 86 f4        	sd	ra, 104(sp)
802034b4: a2 f0        	sd	s0, 96(sp)
802034b6: a6 ec        	sd	s1, 88(sp)
802034b8: ca e8        	sd	s2, 80(sp)
802034ba: ce e4        	sd	s3, 72(sp)
802034bc: 80 18        	addi	s0, sp, 112
802034be: 73 00 00 12  	sfence.vma
802034c2: 0f 00 30 03  	fence	rw, rw

00000000802034c6 <.LBB2_12>:
802034c6: 97 44 01 00  	auipc	s1, 20
802034ca: 93 84 24 18  	addi	s1, s1, 386
802034ce: 88 68        	ld	a0, 16(s1)
802034d0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802034d4: 29 e9        	bnez	a0, 0x80203526 <.LBB2_12+0x60>
802034d6: 93 85 04 01  	addi	a1, s1, 16
802034da: 85 49        	li	s3, 1
802034dc: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802034e0: 01 e5        	bnez	a0, 0x802034e8 <.LBB2_12+0x22>
802034e2: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802034e6: 7d fa        	bnez	a2, 0x802034dc <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
802034e8: 1d ed        	bnez	a0, 0x80203526 <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802034ea: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802034ee: 97 f0 ff ff  	auipc	ra, 1048575
802034f2: e7 80 40 77  	jalr	1908(ra)
802034f6: 2a 89        	mv	s2, a0
802034f8: 05 66        	lui	a2, 1
802034fa: 81 45        	li	a1, 0
802034fc: 97 10 00 00  	auipc	ra, 1
80203500: e7 80 c0 08  	jalr	140(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80203504: 23 b0 34 01  	sd	s3, 0(s1)
80203508: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
8020350c: 23 04 04 fa  	sb	zero, -88(s0)
80203510: 0f 00 10 03  	fence	rw, w
80203514: 09 45        	li	a0, 2
80203516: 88 e8        	sd	a0, 16(s1)
80203518: 13 05 04 fa  	addi	a0, s0, -96
8020351c: 97 00 00 00  	auipc	ra, 0
80203520: e7 80 60 35  	jalr	854(ra)
80203524: 05 a0        	j	0x80203544 <.LBB2_12+0x7e>
80203526: 85 45        	li	a1, 1
;             match status {
80203528: 63 1b b5 00  	bne	a0, a1, 0x8020353e <.LBB2_12+0x78>
8020352c: 0f 00 00 01  	fence	w, 0
80203530: 0f 00 30 03  	fence	rw, rw
80203534: 88 68        	ld	a0, 16(s1)
80203536: 0f 00 30 02  	fence	r, rw
;             match status {
8020353a: e3 09 b5 fe  	beq	a0, a1, 0x8020352c <.LBB2_12+0x66>
8020353e: 89 45        	li	a1, 2
;             match status {
80203540: 63 16 b5 06  	bne	a0, a1, 0x802035ac <.LBB2_15+0x28>
;         self.data as Addr
80203544: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80203546: 31 81        	srli	a0, a0, 12
80203548: fd 55        	li	a1, -1
8020354a: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
8020354c: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020354e: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80203552: 73 00 00 12  	sfence.vma
80203556: 13 05 04 fd  	addi	a0, s0, -48
8020355a: 23 3c a4 f8  	sd	a0, -104(s0)
8020355e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203562 <.LBB2_13>:
80203562: 17 25 00 00  	auipc	a0, 2
80203566: 13 05 e5 24  	addi	a0, a0, 590
8020356a: 23 38 a4 fa  	sd	a0, -80(s0)
8020356e: 05 45        	li	a0, 1
80203570: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080203574 <.LBB2_14>:
80203574: 17 25 00 00  	auipc	a0, 2
80203578: 13 05 45 1b  	addi	a0, a0, 436
8020357c: 23 30 a4 fc  	sd	a0, -64(s0)
80203580: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203584 <.LBB2_15>:
80203584: 97 25 00 00  	auipc	a1, 2
80203588: 93 85 45 26  	addi	a1, a1, 612
8020358c: 13 05 84 f9  	addi	a0, s0, -104
80203590: 13 06 04 fa  	addi	a2, s0, -96
80203594: 97 00 00 00  	auipc	ra, 0
80203598: e7 80 c0 63  	jalr	1596(ra)
8020359c: 31 e5        	bnez	a0, 0x802035e8 <.LBB2_20>
; }
8020359e: a6 70        	ld	ra, 104(sp)
802035a0: 06 74        	ld	s0, 96(sp)
802035a2: e6 64        	ld	s1, 88(sp)
802035a4: 46 69        	ld	s2, 80(sp)
802035a6: a6 69        	ld	s3, 72(sp)
802035a8: 65 61        	addi	sp, sp, 112
802035aa: 82 80        	ret
;             match status {
802035ac: 05 e1        	bnez	a0, 0x802035cc <.LBB2_18>

00000000802035ae <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
802035ae: 17 25 00 00  	auipc	a0, 2
802035b2: 13 05 a5 ad  	addi	a0, a0, -1318

00000000802035b6 <.LBB2_17>:
802035b6: 17 26 00 00  	auipc	a2, 2
802035ba: 13 06 a6 af  	addi	a2, a2, -1286
802035be: 93 05 80 02  	li	a1, 40
802035c2: 97 00 00 00  	auipc	ra, 0
802035c6: e7 80 40 52  	jalr	1316(ra)
802035ca: 00 00        	unimp	

00000000802035cc <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
802035cc: 17 25 00 00  	auipc	a0, 2
802035d0: 13 05 45 a3  	addi	a0, a0, -1484

00000000802035d4 <.LBB2_19>:
802035d4: 17 26 00 00  	auipc	a2, 2
802035d8: 13 06 c6 a9  	addi	a2, a2, -1380
802035dc: c5 45        	li	a1, 17
802035de: 97 00 00 00  	auipc	ra, 0
802035e2: e7 80 80 50  	jalr	1288(ra)
802035e6: 00 00        	unimp	

00000000802035e8 <.LBB2_20>:
802035e8: 17 25 00 00  	auipc	a0, 2
802035ec: 13 05 05 23  	addi	a0, a0, 560

00000000802035f0 <.LBB2_21>:
802035f0: 97 26 00 00  	auipc	a3, 2
802035f4: 93 86 86 25  	addi	a3, a3, 600

00000000802035f8 <.LBB2_22>:
802035f8: 17 27 00 00  	auipc	a4, 2
802035fc: 13 07 07 28  	addi	a4, a4, 640
80203600: 93 05 b0 02  	li	a1, 43
80203604: 13 06 04 fd  	addi	a2, s0, -48
80203608: 97 00 00 00  	auipc	ra, 0
8020360c: e7 80 a0 54  	jalr	1354(ra)
80203610: 00 00        	unimp	

0000000080203612 <__rg_dealloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80203612: 41 11        	addi	sp, sp, -16
80203614: 06 e4        	sd	ra, 8(sp)
80203616: 22 e0        	sd	s0, 0(sp)
80203618: 00 08        	addi	s0, sp, 16

000000008020361a <.LBB1_1>:
8020361a: 97 86 01 00  	auipc	a3, 24
8020361e: 93 86 66 25  	addi	a3, a3, 598
80203622: 32 87        	mv	a4, a2
80203624: 2e 86        	mv	a2, a1
80203626: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80203628: 36 85        	mv	a0, a3
8020362a: ba 86        	mv	a3, a4
8020362c: a2 60        	ld	ra, 8(sp)
8020362e: 02 64        	ld	s0, 0(sp)
80203630: 41 01        	addi	sp, sp, 16
80203632: 17 03 00 00  	auipc	t1, 0
80203636: 67 00 e3 41  	jr	1054(t1)

000000008020363a <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h2249d29917c459d5E.llvm.4083877564300098722>:
8020363a: 41 11        	addi	sp, sp, -16
8020363c: 06 e4        	sd	ra, 8(sp)
8020363e: 22 e0        	sd	s0, 0(sp)
80203640: 00 08        	addi	s0, sp, 16
80203642: a2 60        	ld	ra, 8(sp)
80203644: 02 64        	ld	s0, 0(sp)
80203646: 41 01        	addi	sp, sp, 16
80203648: 82 80        	ret

000000008020364a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722>:
8020364a: 01 11        	addi	sp, sp, -32
8020364c: 06 ec        	sd	ra, 24(sp)
8020364e: 22 e8        	sd	s0, 16(sp)
80203650: 00 10        	addi	s0, sp, 32
80203652: 1b 85 05 00  	sext.w	a0, a1
80203656: 13 06 00 08  	li	a2, 128
8020365a: 23 26 04 fe  	sw	zero, -20(s0)
8020365e: 63 76 c5 00  	bgeu	a0, a2, 0x8020366a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x20>
80203662: 23 06 b4 fe  	sb	a1, -20(s0)
80203666: 05 45        	li	a0, 1
80203668: 51 a8        	j	0x802036fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
8020366a: 1b d5 b5 00  	srliw	a0, a1, 11
8020366e: 19 ed        	bnez	a0, 0x8020368c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x42>
80203670: 13 d5 65 00  	srli	a0, a1, 6
80203674: 13 65 05 0c  	ori	a0, a0, 192
80203678: 23 06 a4 fe  	sb	a0, -20(s0)
8020367c: 13 f5 f5 03  	andi	a0, a1, 63
80203680: 13 65 05 08  	ori	a0, a0, 128
80203684: a3 06 a4 fe  	sb	a0, -19(s0)
80203688: 09 45        	li	a0, 2
8020368a: 8d a8        	j	0x802036fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
8020368c: 1b d5 05 01  	srliw	a0, a1, 16
80203690: 05 e9        	bnez	a0, 0x802036c0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x76>
80203692: 13 95 05 02  	slli	a0, a1, 32
80203696: 01 91        	srli	a0, a0, 32
80203698: 1b d6 c5 00  	srliw	a2, a1, 12
8020369c: 13 66 06 0e  	ori	a2, a2, 224
802036a0: 23 06 c4 fe  	sb	a2, -20(s0)
802036a4: 52 15        	slli	a0, a0, 52
802036a6: 69 91        	srli	a0, a0, 58
802036a8: 13 65 05 08  	ori	a0, a0, 128
802036ac: a3 06 a4 fe  	sb	a0, -19(s0)
802036b0: 13 f5 f5 03  	andi	a0, a1, 63
802036b4: 13 65 05 08  	ori	a0, a0, 128
802036b8: 23 07 a4 fe  	sb	a0, -18(s0)
802036bc: 0d 45        	li	a0, 3
802036be: 3d a8        	j	0x802036fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xb2>
802036c0: 13 95 05 02  	slli	a0, a1, 32
802036c4: 01 91        	srli	a0, a0, 32
802036c6: 13 16 b5 02  	slli	a2, a0, 43
802036ca: 75 92        	srli	a2, a2, 61
802036cc: 13 66 06 0f  	ori	a2, a2, 240
802036d0: 23 06 c4 fe  	sb	a2, -20(s0)
802036d4: 13 16 e5 02  	slli	a2, a0, 46
802036d8: 69 92        	srli	a2, a2, 58
802036da: 13 66 06 08  	ori	a2, a2, 128
802036de: a3 06 c4 fe  	sb	a2, -19(s0)
802036e2: 52 15        	slli	a0, a0, 52
802036e4: 69 91        	srli	a0, a0, 58
802036e6: 13 65 05 08  	ori	a0, a0, 128
802036ea: 23 07 a4 fe  	sb	a0, -18(s0)
802036ee: 13 f5 f5 03  	andi	a0, a1, 63
802036f2: 13 65 05 08  	ori	a0, a0, 128
802036f6: a3 07 a4 fe  	sb	a0, -17(s0)
802036fa: 11 45        	li	a0, 4
802036fc: 93 06 c4 fe  	addi	a3, s0, -20
80203700: 33 87 a6 00  	add	a4, a3, a0
80203704: 13 03 f0 0d  	li	t1, 223
80203708: 13 08 00 0f  	li	a6, 240
8020370c: b7 02 11 00  	lui	t0, 272
80203710: 85 48        	li	a7, 1
80203712: 01 a8        	j	0x80203722 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xd8>
80203714: 85 06        	addi	a3, a3, 1
;         asm!(
80203716: 81 45        	li	a1, 0
80203718: 01 46        	li	a2, 0
8020371a: 73 00 00 00  	ecall	
8020371e: 63 8f e6 04  	beq	a3, a4, 0x8020377c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x132>
80203722: 83 85 06 00  	lb	a1, 0(a3)
80203726: 13 f5 f5 0f  	andi	a0, a1, 255
8020372a: e3 d5 05 fe  	bgez	a1, 0x80203714 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xca>
8020372e: 03 c6 16 00  	lbu	a2, 1(a3)
80203732: 93 75 f5 01  	andi	a1, a0, 31
80203736: 13 76 f6 03  	andi	a2, a2, 63
8020373a: 63 77 a3 02  	bgeu	t1, a0, 0x80203768 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x11e>
8020373e: 83 c7 26 00  	lbu	a5, 2(a3)
80203742: 1a 06        	slli	a2, a2, 6
80203744: 93 f7 f7 03  	andi	a5, a5, 63
80203748: 5d 8e        	or	a2, a2, a5
8020374a: 63 64 05 03  	bltu	a0, a6, 0x80203772 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x128>
8020374e: 03 c5 36 00  	lbu	a0, 3(a3)
80203752: f6 15        	slli	a1, a1, 61
80203754: ad 91        	srli	a1, a1, 43
80203756: 1a 06        	slli	a2, a2, 6
80203758: 13 75 f5 03  	andi	a0, a0, 63
8020375c: 51 8d        	or	a0, a0, a2
8020375e: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203760: 63 0e 55 00  	beq	a0, t0, 0x8020377c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0x132>
80203764: 91 06        	addi	a3, a3, 4
80203766: 45 bf        	j	0x80203716 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
80203768: 89 06        	addi	a3, a3, 2
8020376a: 13 95 65 00  	slli	a0, a1, 6
8020376e: 51 8d        	or	a0, a0, a2
80203770: 5d b7        	j	0x80203716 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
80203772: 8d 06        	addi	a3, a3, 3
80203774: 13 95 c5 00  	slli	a0, a1, 12
80203778: 51 8d        	or	a0, a0, a2
8020377a: 71 bf        	j	0x80203716 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.4083877564300098722+0xcc>
8020377c: 01 45        	li	a0, 0
8020377e: e2 60        	ld	ra, 24(sp)
80203780: 42 64        	ld	s0, 16(sp)
80203782: 05 61        	addi	sp, sp, 32
80203784: 82 80        	ret

0000000080203786 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he6d319fcf4a5da0eE.llvm.4083877564300098722>:
80203786: 5d 71        	addi	sp, sp, -80
80203788: 86 e4        	sd	ra, 72(sp)
8020378a: a2 e0        	sd	s0, 64(sp)
8020378c: 80 08        	addi	s0, sp, 80
8020378e: 08 61        	ld	a0, 0(a0)
80203790: 90 75        	ld	a2, 40(a1)
80203792: 94 71        	ld	a3, 32(a1)
80203794: 23 3c a4 fa  	sd	a0, -72(s0)
80203798: 23 34 c4 fe  	sd	a2, -24(s0)
8020379c: 23 30 d4 fe  	sd	a3, -32(s0)
802037a0: 88 6d        	ld	a0, 24(a1)
802037a2: 90 69        	ld	a2, 16(a1)
802037a4: 94 65        	ld	a3, 8(a1)
802037a6: 8c 61        	ld	a1, 0(a1)
802037a8: 23 3c a4 fc  	sd	a0, -40(s0)
802037ac: 23 38 c4 fc  	sd	a2, -48(s0)
802037b0: 23 34 d4 fc  	sd	a3, -56(s0)
802037b4: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802037b8 <.LBB2_1>:
802037b8: 97 25 00 00  	auipc	a1, 2
802037bc: 93 85 05 03  	addi	a1, a1, 48
802037c0: 13 05 84 fb  	addi	a0, s0, -72
802037c4: 13 06 04 fc  	addi	a2, s0, -64
802037c8: 97 00 00 00  	auipc	ra, 0
802037cc: e7 80 80 40  	jalr	1032(ra)
802037d0: a6 60        	ld	ra, 72(sp)
802037d2: 06 64        	ld	s0, 64(sp)
802037d4: 61 61        	addi	sp, sp, 80
802037d6: 82 80        	ret

00000000802037d8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722>:
802037d8: 41 11        	addi	sp, sp, -16
802037da: 06 e4        	sd	ra, 8(sp)
802037dc: 22 e0        	sd	s0, 0(sp)
802037de: 00 08        	addi	s0, sp, 16
802037e0: 41 c2        	beqz	a2, 0x80203860 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
802037e2: ae 86        	mv	a3, a1
802037e4: 33 87 c5 00  	add	a4, a1, a2
802037e8: 13 03 f0 0d  	li	t1, 223
802037ec: 13 08 00 0f  	li	a6, 240
802037f0: b7 02 11 00  	lui	t0, 272
802037f4: 85 48        	li	a7, 1
802037f6: 01 a8        	j	0x80203806 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x2e>
802037f8: 85 06        	addi	a3, a3, 1
;         asm!(
802037fa: 81 45        	li	a1, 0
802037fc: 01 46        	li	a2, 0
802037fe: 73 00 00 00  	ecall	
80203802: 63 8f e6 04  	beq	a3, a4, 0x80203860 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
80203806: 83 85 06 00  	lb	a1, 0(a3)
8020380a: 13 f5 f5 0f  	andi	a0, a1, 255
8020380e: e3 d5 05 fe  	bgez	a1, 0x802037f8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x20>
80203812: 03 c6 16 00  	lbu	a2, 1(a3)
80203816: 93 75 f5 01  	andi	a1, a0, 31
8020381a: 13 76 f6 03  	andi	a2, a2, 63
8020381e: 63 77 a3 02  	bgeu	t1, a0, 0x8020384c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x74>
80203822: 83 c7 26 00  	lbu	a5, 2(a3)
80203826: 1a 06        	slli	a2, a2, 6
80203828: 93 f7 f7 03  	andi	a5, a5, 63
8020382c: 5d 8e        	or	a2, a2, a5
8020382e: 63 64 05 03  	bltu	a0, a6, 0x80203856 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x7e>
80203832: 03 c5 36 00  	lbu	a0, 3(a3)
80203836: f6 15        	slli	a1, a1, 61
80203838: ad 91        	srli	a1, a1, 43
8020383a: 1a 06        	slli	a2, a2, 6
8020383c: 13 75 f5 03  	andi	a0, a0, 63
80203840: 51 8d        	or	a0, a0, a2
80203842: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203844: 63 0e 55 00  	beq	a0, t0, 0x80203860 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x88>
80203848: 91 06        	addi	a3, a3, 4
8020384a: 45 bf        	j	0x802037fa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
8020384c: 89 06        	addi	a3, a3, 2
8020384e: 13 95 65 00  	slli	a0, a1, 6
80203852: 51 8d        	or	a0, a0, a2
80203854: 5d b7        	j	0x802037fa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
80203856: 8d 06        	addi	a3, a3, 3
80203858: 13 95 c5 00  	slli	a0, a1, 12
8020385c: 51 8d        	or	a0, a0, a2
8020385e: 71 bf        	j	0x802037fa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.4083877564300098722+0x22>
80203860: 01 45        	li	a0, 0
80203862: a2 60        	ld	ra, 8(sp)
80203864: 02 64        	ld	s0, 0(sp)
80203866: 41 01        	addi	sp, sp, 16
80203868: 82 80        	ret

000000008020386a <__rust_dealloc>:
8020386a: 17 03 00 00  	auipc	t1, 0
8020386e: 67 00 83 da  	jr	-600(t1)

0000000080203872 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
80203872: 41 11        	addi	sp, sp, -16
;         if self.panicked {
80203874: 06 e4        	sd	ra, 8(sp)
80203876: 22 e0        	sd	s0, 0(sp)
80203878: 00 08        	addi	s0, sp, 16
8020387a: 83 45 85 00  	lbu	a1, 8(a0)
8020387e: 91 c5        	beqz	a1, 0x8020388a <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80203880: 08 61        	ld	a0, 0(a0)
80203882: 0f 00 10 03  	fence	rw, w
80203886: 8d 45        	li	a1, 3
80203888: 0c e1        	sd	a1, 0(a0)
;     }
8020388a: a2 60        	ld	ra, 8(sp)
8020388c: 02 64        	ld	s0, 0(sp)
8020388e: 41 01        	addi	sp, sp, 16
80203890: 82 80        	ret

0000000080203892 <_ZN22buddy_system_allocator4Heap7dealloc17h04c2d84bc5a7a889E>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80203892: 41 11        	addi	sp, sp, -16
80203894: 06 e4        	sd	ra, 8(sp)
80203896: 22 e0        	sd	s0, 0(sp)
80203898: 00 08        	addi	s0, sp, 16
8020389a: 05 47        	li	a4, 1
8020389c: 89 47        	li	a5, 2

000000008020389e <.LBB7_22>:
8020389e: 17 23 00 00  	auipc	t1, 2
802038a2: 13 03 23 7c  	addi	t1, t1, 1986

00000000802038a6 <.LBB7_23>:
802038a6: 97 22 00 00  	auipc	t0, 2
802038aa: 93 82 22 7c  	addi	t0, t0, 1986

00000000802038ae <.LBB7_24>:
802038ae: 97 28 00 00  	auipc	a7, 2
802038b2: 93 88 28 7c  	addi	a7, a7, 1986

00000000802038b6 <.LBB7_25>:
802038b6: 17 28 00 00  	auipc	a6, 2
802038ba: 13 08 28 7c  	addi	a6, a6, 1986
802038be: 63 7d f6 0c  	bgeu	a2, a5, 0x80203998 <.LBB7_25+0xe2>
802038c2: 63 72 d7 14  	bgeu	a4, a3, 0x80203a06 <.LBB7_25+0x150>
802038c6: 21 47        	li	a4, 8
802038c8: 63 73 d7 14  	bgeu	a4, a3, 0x80203a0e <.LBB7_25+0x158>
802038cc: 63 84 06 14  	beqz	a3, 0x80203a14 <.LBB7_25+0x15e>
802038d0: 93 83 f6 ff  	addi	t2, a3, -1
802038d4: 93 c7 f6 ff  	not	a5, a3
802038d8: 03 33 03 00  	ld	t1, 0(t1)
802038dc: b3 f3 77 00  	and	t2, a5, t2
802038e0: 03 b7 02 00  	ld	a4, 0(t0)
802038e4: 93 d7 13 00  	srli	a5, t2, 1
802038e8: b3 f7 67 00  	and	a5, a5, t1
802038ec: b3 87 f3 40  	sub	a5, t2, a5
802038f0: b3 f2 e7 00  	and	t0, a5, a4
802038f4: 89 83        	srli	a5, a5, 2
802038f6: 7d 8f        	and	a4, a4, a5
802038f8: 16 97        	add	a4, a4, t0
802038fa: 83 b8 08 00  	ld	a7, 0(a7)
802038fe: 03 38 08 00  	ld	a6, 0(a6)
80203902: 93 57 47 00  	srli	a5, a4, 4
80203906: 3e 97        	add	a4, a4, a5
80203908: 33 77 17 01  	and	a4, a4, a7
8020390c: 33 07 07 03  	mul	a4, a4, a6
80203910: 13 53 87 03  	srli	t1, a4, 56
80203914: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203916: 63 64 68 10  	bltu	a6, t1, 0x80203a1e <.LBB7_26>
8020391a: 13 17 33 00  	slli	a4, t1, 3
8020391e: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
80203920: 1c 63        	ld	a5, 0(a4)
80203922: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80203924: 0c e3        	sd	a1, 0(a4)
80203926: 85 48        	li	a7, 1
80203928: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
8020392a: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
8020392e: 93 17 33 00  	slli	a5, t1, 3
80203932: b3 03 f5 00  	add	t2, a0, a5
;                 let buddy = current_ptr ^ (1 << current_class);
80203936: 33 ce e2 00  	xor	t3, t0, a4
8020393a: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
8020393c: 9d cd        	beqz	a1, 0x8020397a <.LBB7_25+0xc4>
8020393e: ae 87        	mv	a5, a1
80203940: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80203942: 8c 61        	ld	a1, 0(a1)
80203944: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80203946: e3 1b fe fe  	bne	t3, a5, 0x8020393c <.LBB7_25+0x86>
;             *(self.prev) = *(self.curr);
8020394a: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
8020394e: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80203952: 81 c5        	beqz	a1, 0x8020395a <.LBB7_25+0xa4>
;                 self.head = unsafe { *item as *mut usize };
80203954: 8c 61        	ld	a1, 0(a1)
80203956: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
8020395a: 63 0e 03 0d  	beq	t1, a6, 0x80203a36 <.LBB7_27>
8020395e: 63 e3 c2 01  	bltu	t0, t3, 0x80203964 <.LBB7_25+0xae>
80203962: f2 82        	mv	t0, t3
80203964: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203966: 93 15 33 00  	slli	a1, t1, 3
8020396a: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
8020396c: 98 61        	ld	a4, 0(a1)
8020396e: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80203972: 23 b0 55 00  	sd	t0, 0(a1)
80203976: 96 85        	mv	a1, t0
80203978: 4d bf        	j	0x8020392a <.LBB7_25+0x74>
;         self.user -= layout.size();
8020397a: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
8020397e: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80203982: 91 8d        	sub	a1, a1, a2
80203984: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
80203988: b3 05 d7 40  	sub	a1, a4, a3
8020398c: 23 34 b5 10  	sd	a1, 264(a0)
;     }
80203990: a2 60        	ld	ra, 8(sp)
80203992: 02 64        	ld	s0, 0(sp)
80203994: 41 01        	addi	sp, sp, 16
80203996: 82 80        	ret
80203998: 13 07 f6 ff  	addi	a4, a2, -1
8020399c: 93 57 17 00  	srli	a5, a4, 1
802039a0: 5d 8f        	or	a4, a4, a5
802039a2: 93 57 27 00  	srli	a5, a4, 2
802039a6: 5d 8f        	or	a4, a4, a5
802039a8: 93 57 47 00  	srli	a5, a4, 4
802039ac: 5d 8f        	or	a4, a4, a5
802039ae: 93 57 87 00  	srli	a5, a4, 8
802039b2: 5d 8f        	or	a4, a4, a5
802039b4: 93 57 07 01  	srli	a5, a4, 16
802039b8: 5d 8f        	or	a4, a4, a5
802039ba: 93 57 07 02  	srli	a5, a4, 32
802039be: 5d 8f        	or	a4, a4, a5
802039c0: 83 33 03 00  	ld	t2, 0(t1)
802039c4: 13 4e f7 ff  	not	t3, a4
802039c8: 83 b7 02 00  	ld	a5, 0(t0)
802039cc: 13 57 1e 00  	srli	a4, t3, 1
802039d0: 33 77 77 00  	and	a4, a4, t2
802039d4: 33 07 ee 40  	sub	a4, t3, a4
802039d8: b3 73 f7 00  	and	t2, a4, a5
802039dc: 09 83        	srli	a4, a4, 2
802039de: 7d 8f        	and	a4, a4, a5
802039e0: 1e 97        	add	a4, a4, t2
802039e2: 83 b3 08 00  	ld	t2, 0(a7)
802039e6: 03 3e 08 00  	ld	t3, 0(a6)
802039ea: 93 57 47 00  	srli	a5, a4, 4
802039ee: 3e 97        	add	a4, a4, a5
802039f0: 33 77 77 00  	and	a4, a4, t2
802039f4: 33 07 c7 03  	mul	a4, a4, t3
802039f8: 61 93        	srli	a4, a4, 56
802039fa: fd 57        	li	a5, -1
802039fc: 33 d7 e7 00  	srl	a4, a5, a4
80203a00: 05 07        	addi	a4, a4, 1
80203a02: e3 62 d7 ec  	bltu	a4, a3, 0x802038c6 <.LBB7_25+0x10>
80203a06: ba 86        	mv	a3, a4
80203a08: 21 47        	li	a4, 8
80203a0a: e3 61 d7 ec  	bltu	a4, a3, 0x802038cc <.LBB7_25+0x16>
80203a0e: a1 46        	li	a3, 8
80203a10: e3 90 06 ec  	bnez	a3, 0x802038d0 <.LBB7_25+0x1a>
80203a14: 13 03 00 04  	li	t1, 64
80203a18: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203a1a: e3 70 68 f0  	bgeu	a6, t1, 0x8020391a <.LBB7_25+0x64>

0000000080203a1e <.LBB7_26>:
80203a1e: 17 26 00 00  	auipc	a2, 2
80203a22: 13 06 26 ee  	addi	a2, a2, -286
80203a26: 93 05 00 02  	li	a1, 32
80203a2a: 1a 85        	mv	a0, t1
80203a2c: 97 00 00 00  	auipc	ra, 0
80203a30: e7 80 60 0e  	jalr	230(ra)
80203a34: 00 00        	unimp	

0000000080203a36 <.LBB7_27>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203a36: 17 26 00 00  	auipc	a2, 2
80203a3a: 13 06 26 ee  	addi	a2, a2, -286
80203a3e: 13 05 00 02  	li	a0, 32
80203a42: 93 05 00 02  	li	a1, 32
80203a46: 97 00 00 00  	auipc	ra, 0
80203a4a: e7 80 c0 0c  	jalr	204(ra)
80203a4e: 00 00        	unimp	

0000000080203a50 <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
80203a50: 01 11        	addi	sp, sp, -32
80203a52: 06 ec        	sd	ra, 24(sp)
80203a54: 22 e8        	sd	s0, 16(sp)
80203a56: 26 e4        	sd	s1, 8(sp)
80203a58: 4a e0        	sd	s2, 0(sp)
80203a5a: 00 10        	addi	s0, sp, 32
80203a5c: aa 84        	mv	s1, a0
80203a5e: 05 45        	li	a0, 1
80203a60: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80203a64: 88 64        	ld	a0, 8(s1)
80203a66: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203a6a: 63 09 25 01  	beq	a0, s2, 0x80203a7c <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E+0x2c>
80203a6e: 0f 00 00 01  	fence	w, 0
80203a72: 88 64        	ld	a0, 8(s1)
80203a74: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203a78: e3 1b 25 ff  	bne	a0, s2, 0x80203a6e <_ZN97_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h19a02230e022b0f1E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80203a7c: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
80203a80: 97 00 00 00  	auipc	ra, 0
80203a84: e7 80 20 e1  	jalr	-494(ra)
;         let new_ticket = self.ticket + 1;
80203a88: 13 05 19 00  	addi	a0, s2, 1
80203a8c: 0f 00 10 03  	fence	rw, w
80203a90: 88 e4        	sd	a0, 8(s1)
;     }
80203a92: e2 60        	ld	ra, 24(sp)
80203a94: 42 64        	ld	s0, 16(sp)
80203a96: a2 64        	ld	s1, 8(sp)
80203a98: 02 69        	ld	s2, 0(sp)
80203a9a: 05 61        	addi	sp, sp, 32
80203a9c: 82 80        	ret

0000000080203a9e <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
80203a9e: 08 61        	ld	a0, 0(a0)
80203aa0: 01 a0        	j	0x80203aa0 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080203aa2 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80203aa2: 82 80        	ret

0000000080203aa4 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80203aa4: 17 25 00 00  	auipc	a0, 2
80203aa8: 13 05 45 6e  	addi	a0, a0, 1764
80203aac: 08 61        	ld	a0, 0(a0)
80203aae: 82 80        	ret

0000000080203ab0 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80203ab0: 08 69        	ld	a0, 16(a0)
80203ab2: 82 80        	ret

0000000080203ab4 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80203ab4: 08 6d        	ld	a0, 24(a0)
80203ab6: 82 80        	ret

0000000080203ab8 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80203ab8: 79 71        	addi	sp, sp, -48
80203aba: 06 f4        	sd	ra, 40(sp)

0000000080203abc <.LBB170_1>:
80203abc: 17 26 00 00  	auipc	a2, 2
80203ac0: 13 06 46 e7  	addi	a2, a2, -396
80203ac4: 32 e0        	sd	a2, 0(sp)

0000000080203ac6 <.LBB170_2>:
80203ac6: 17 26 00 00  	auipc	a2, 2
80203aca: 13 06 26 ec  	addi	a2, a2, -318
80203ace: 32 e4        	sd	a2, 8(sp)
80203ad0: 2a e8        	sd	a0, 16(sp)
80203ad2: 2e ec        	sd	a1, 24(sp)
80203ad4: 05 45        	li	a0, 1
80203ad6: 23 00 a1 02  	sb	a0, 32(sp)
80203ada: 0a 85        	mv	a0, sp
80203adc: 97 f0 ff ff  	auipc	ra, 1048575
80203ae0: e7 80 40 af  	jalr	-1292(ra)
80203ae4: 00 00        	unimp	

0000000080203ae6 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80203ae6: 5d 71        	addi	sp, sp, -80
80203ae8: 86 e4        	sd	ra, 72(sp)
80203aea: 2a fc        	sd	a0, 56(sp)
80203aec: ae e0        	sd	a1, 64(sp)
80203aee: 28 18        	addi	a0, sp, 56
80203af0: 2a ec        	sd	a0, 24(sp)
80203af2: 05 45        	li	a0, 1
80203af4: 2a f0        	sd	a0, 32(sp)
80203af6: 02 e4        	sd	zero, 8(sp)

0000000080203af8 <.LBB172_1>:
80203af8: 17 25 00 00  	auipc	a0, 2
80203afc: 13 05 85 e3  	addi	a0, a0, -456
80203b00: 2a f4        	sd	a0, 40(sp)
80203b02: 02 f8        	sd	zero, 48(sp)
80203b04: 28 00        	addi	a0, sp, 8
80203b06: b2 85        	mv	a1, a2
80203b08: 97 00 00 00  	auipc	ra, 0
80203b0c: e7 80 00 fb  	jalr	-80(ra)
80203b10: 00 00        	unimp	

0000000080203b12 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80203b12: 59 71        	addi	sp, sp, -112
80203b14: 86 f4        	sd	ra, 104(sp)
80203b16: 2a e4        	sd	a0, 8(sp)
80203b18: 2e e8        	sd	a1, 16(sp)
80203b1a: 08 08        	addi	a0, sp, 16
80203b1c: aa e4        	sd	a0, 72(sp)

0000000080203b1e <.LBB176_1>:
80203b1e: 17 15 00 00  	auipc	a0, 1
80203b22: 13 05 25 a3  	addi	a0, a0, -1486
80203b26: aa e8        	sd	a0, 80(sp)
80203b28: 2c 00        	addi	a1, sp, 8
80203b2a: ae ec        	sd	a1, 88(sp)
80203b2c: aa f0        	sd	a0, 96(sp)

0000000080203b2e <.LBB176_2>:
80203b2e: 17 25 00 00  	auipc	a0, 2
80203b32: 13 05 a5 e3  	addi	a0, a0, -454
80203b36: 2a f4        	sd	a0, 40(sp)
80203b38: 09 45        	li	a0, 2
80203b3a: 2a f8        	sd	a0, 48(sp)
80203b3c: 02 ec        	sd	zero, 24(sp)
80203b3e: ac 00        	addi	a1, sp, 72
80203b40: 2e fc        	sd	a1, 56(sp)
80203b42: aa e0        	sd	a0, 64(sp)
80203b44: 28 08        	addi	a0, sp, 24
80203b46: b2 85        	mv	a1, a2
80203b48: 97 00 00 00  	auipc	ra, 0
80203b4c: e7 80 00 f7  	jalr	-144(ra)
80203b50: 00 00        	unimp	

0000000080203b52 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
80203b52: 19 71        	addi	sp, sp, -128
80203b54: 86 fc        	sd	ra, 120(sp)
80203b56: 2a e4        	sd	a0, 8(sp)
80203b58: 2e e8        	sd	a1, 16(sp)
80203b5a: 32 ec        	sd	a2, 24(sp)
80203b5c: 36 f0        	sd	a3, 32(sp)
80203b5e: 28 00        	addi	a0, sp, 8
80203b60: aa ec        	sd	a0, 88(sp)

0000000080203b62 <.LBB183_1>:
80203b62: 17 15 00 00  	auipc	a0, 1
80203b66: 13 05 65 a1  	addi	a0, a0, -1514
80203b6a: aa f0        	sd	a0, 96(sp)
80203b6c: 28 08        	addi	a0, sp, 24
80203b6e: aa f4        	sd	a0, 104(sp)

0000000080203b70 <.LBB183_2>:
80203b70: 17 15 00 00  	auipc	a0, 1
80203b74: 13 05 05 a0  	addi	a0, a0, -1536
80203b78: aa f8        	sd	a0, 112(sp)

0000000080203b7a <.LBB183_3>:
80203b7a: 17 25 00 00  	auipc	a0, 2
80203b7e: 13 05 65 e3  	addi	a0, a0, -458
80203b82: 2a fc        	sd	a0, 56(sp)
80203b84: 09 45        	li	a0, 2
80203b86: aa e0        	sd	a0, 64(sp)
80203b88: 02 f4        	sd	zero, 40(sp)
80203b8a: ac 08        	addi	a1, sp, 88
80203b8c: ae e4        	sd	a1, 72(sp)
80203b8e: aa e8        	sd	a0, 80(sp)
80203b90: 28 10        	addi	a0, sp, 40
80203b92: ba 85        	mv	a1, a4
80203b94: 97 00 00 00  	auipc	ra, 0
80203b98: e7 80 40 f2  	jalr	-220(ra)
80203b9c: 00 00        	unimp	

0000000080203b9e <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80203b9e: 39 71        	addi	sp, sp, -64
80203ba0: 06 fc        	sd	ra, 56(sp)
80203ba2: 10 75        	ld	a2, 40(a0)
80203ba4: 18 71        	ld	a4, 32(a0)
80203ba6: 1c 6d        	ld	a5, 24(a0)
80203ba8: 32 f8        	sd	a2, 48(sp)
80203baa: 94 61        	ld	a3, 0(a1)
80203bac: 3a f4        	sd	a4, 40(sp)
80203bae: 3e f0        	sd	a5, 32(sp)
80203bb0: 10 69        	ld	a2, 16(a0)
80203bb2: 18 65        	ld	a4, 8(a0)
80203bb4: 08 61        	ld	a0, 0(a0)
80203bb6: 8c 65        	ld	a1, 8(a1)
80203bb8: 32 ec        	sd	a2, 24(sp)
80203bba: 3a e8        	sd	a4, 16(sp)
80203bbc: 2a e4        	sd	a0, 8(sp)
80203bbe: 30 00        	addi	a2, sp, 8
80203bc0: 36 85        	mv	a0, a3
80203bc2: 97 00 00 00  	auipc	ra, 0
80203bc6: e7 80 e0 00  	jalr	14(ra)
80203bca: e2 70        	ld	ra, 56(sp)
80203bcc: 21 61        	addi	sp, sp, 64
80203bce: 82 80        	ret

0000000080203bd0 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80203bd0: 19 71        	addi	sp, sp, -128
80203bd2: 86 fc        	sd	ra, 120(sp)
80203bd4: a2 f8        	sd	s0, 112(sp)
80203bd6: a6 f4        	sd	s1, 104(sp)
80203bd8: ca f0        	sd	s2, 96(sp)
80203bda: ce ec        	sd	s3, 88(sp)
80203bdc: d2 e8        	sd	s4, 80(sp)
80203bde: d6 e4        	sd	s5, 72(sp)
80203be0: da e0        	sd	s6, 64(sp)
80203be2: b2 89        	mv	s3, a2
80203be4: 05 46        	li	a2, 1
80203be6: 16 16        	slli	a2, a2, 37
80203be8: 32 f8        	sd	a2, 48(sp)
80203bea: 0d 46        	li	a2, 3
80203bec: 23 0c c1 02  	sb	a2, 56(sp)
80203bf0: 03 b6 09 00  	ld	a2, 0(s3)
80203bf4: 02 e8        	sd	zero, 16(sp)
80203bf6: 02 f0        	sd	zero, 32(sp)
80203bf8: 2a e0        	sd	a0, 0(sp)
80203bfa: 2e e4        	sd	a1, 8(sp)
80203bfc: 69 c6        	beqz	a2, 0x80203cc6 <.LBB220_31+0x9e>
80203bfe: 03 b5 89 00  	ld	a0, 8(s3)
80203c02: 63 0e 05 10  	beqz	a0, 0x80203d1e <.LBB220_31+0xf6>
80203c06: 83 b5 09 01  	ld	a1, 16(s3)
80203c0a: 93 06 f5 ff  	addi	a3, a0, -1
80203c0e: 8e 06        	slli	a3, a3, 3
80203c10: 8d 82        	srli	a3, a3, 3
80203c12: 13 89 16 00  	addi	s2, a3, 1
80203c16: 93 84 85 00  	addi	s1, a1, 8
80203c1a: 93 05 80 03  	li	a1, 56
80203c1e: 33 0a b5 02  	mul	s4, a0, a1
80203c22: 13 04 86 01  	addi	s0, a2, 24
80203c26: 85 4a        	li	s5, 1

0000000080203c28 <.LBB220_31>:
80203c28: 17 0b 00 00  	auipc	s6, 0
80203c2c: 13 0b 6b e7  	addi	s6, s6, -394
80203c30: 90 60        	ld	a2, 0(s1)
80203c32: 09 ca        	beqz	a2, 0x80203c44 <.LBB220_31+0x1c>
80203c34: a2 66        	ld	a3, 8(sp)
80203c36: 02 65        	ld	a0, 0(sp)
80203c38: 83 b5 84 ff  	ld	a1, -8(s1)
80203c3c: 94 6e        	ld	a3, 24(a3)
80203c3e: 82 96        	jalr	a3
80203c40: 63 11 05 10  	bnez	a0, 0x80203d42 <.LBB220_31+0x11a>
80203c44: 48 44        	lw	a0, 12(s0)
80203c46: 2a da        	sw	a0, 52(sp)
80203c48: 03 05 04 01  	lb	a0, 16(s0)
80203c4c: 23 0c a1 02  	sb	a0, 56(sp)
80203c50: 0c 44        	lw	a1, 8(s0)
80203c52: 03 b5 09 02  	ld	a0, 32(s3)
80203c56: 2e d8        	sw	a1, 48(sp)
80203c58: 83 36 84 ff  	ld	a3, -8(s0)
80203c5c: 0c 60        	ld	a1, 0(s0)
80203c5e: 89 ce        	beqz	a3, 0x80203c78 <.LBB220_31+0x50>
80203c60: 01 46        	li	a2, 0
80203c62: 63 9c 56 01  	bne	a3, s5, 0x80203c7a <.LBB220_31+0x52>
80203c66: 92 05        	slli	a1, a1, 4
80203c68: aa 95        	add	a1, a1, a0
80203c6a: 90 65        	ld	a2, 8(a1)
80203c6c: 63 04 66 01  	beq	a2, s6, 0x80203c74 <.LBB220_31+0x4c>
80203c70: 01 46        	li	a2, 0
80203c72: 21 a0        	j	0x80203c7a <.LBB220_31+0x52>
80203c74: 8c 61        	ld	a1, 0(a1)
80203c76: 8c 61        	ld	a1, 0(a1)
80203c78: 05 46        	li	a2, 1
80203c7a: 32 e8        	sd	a2, 16(sp)
80203c7c: 2e ec        	sd	a1, 24(sp)
80203c7e: 83 36 84 fe  	ld	a3, -24(s0)
80203c82: 83 35 04 ff  	ld	a1, -16(s0)
80203c86: 89 ce        	beqz	a3, 0x80203ca0 <.LBB220_31+0x78>
80203c88: 01 46        	li	a2, 0
80203c8a: 63 9c 56 01  	bne	a3, s5, 0x80203ca2 <.LBB220_31+0x7a>
80203c8e: 92 05        	slli	a1, a1, 4
80203c90: aa 95        	add	a1, a1, a0
80203c92: 90 65        	ld	a2, 8(a1)
80203c94: 63 04 66 01  	beq	a2, s6, 0x80203c9c <.LBB220_31+0x74>
80203c98: 01 46        	li	a2, 0
80203c9a: 21 a0        	j	0x80203ca2 <.LBB220_31+0x7a>
80203c9c: 8c 61        	ld	a1, 0(a1)
80203c9e: 8c 61        	ld	a1, 0(a1)
80203ca0: 05 46        	li	a2, 1
80203ca2: 32 f0        	sd	a2, 32(sp)
80203ca4: 2e f4        	sd	a1, 40(sp)
80203ca6: 0c 6c        	ld	a1, 24(s0)
80203ca8: 92 05        	slli	a1, a1, 4
80203caa: 2e 95        	add	a0, a0, a1
80203cac: 10 65        	ld	a2, 8(a0)
80203cae: 08 61        	ld	a0, 0(a0)
80203cb0: 8a 85        	mv	a1, sp
80203cb2: 02 96        	jalr	a2
80203cb4: 59 e5        	bnez	a0, 0x80203d42 <.LBB220_31+0x11a>
80203cb6: c1 04        	addi	s1, s1, 16
80203cb8: 13 0a 8a fc  	addi	s4, s4, -56
80203cbc: 13 04 84 03  	addi	s0, s0, 56
80203cc0: e3 18 0a f6  	bnez	s4, 0x80203c30 <.LBB220_31+0x8>
80203cc4: 81 a8        	j	0x80203d14 <.LBB220_31+0xec>
80203cc6: 03 b5 89 02  	ld	a0, 40(s3)
80203cca: 31 c9        	beqz	a0, 0x80203d1e <.LBB220_31+0xf6>
80203ccc: 83 b5 09 02  	ld	a1, 32(s3)
80203cd0: 03 b6 09 01  	ld	a2, 16(s3)
80203cd4: 93 06 f5 ff  	addi	a3, a0, -1
80203cd8: 92 06        	slli	a3, a3, 4
80203cda: 91 82        	srli	a3, a3, 4
80203cdc: 13 89 16 00  	addi	s2, a3, 1
80203ce0: 13 04 86 00  	addi	s0, a2, 8
80203ce4: 13 1a 45 00  	slli	s4, a0, 4
80203ce8: 93 84 85 00  	addi	s1, a1, 8
80203cec: 10 60        	ld	a2, 0(s0)
80203cee: 01 ca        	beqz	a2, 0x80203cfe <.LBB220_31+0xd6>
80203cf0: a2 66        	ld	a3, 8(sp)
80203cf2: 02 65        	ld	a0, 0(sp)
80203cf4: 83 35 84 ff  	ld	a1, -8(s0)
80203cf8: 94 6e        	ld	a3, 24(a3)
80203cfa: 82 96        	jalr	a3
80203cfc: 39 e1        	bnez	a0, 0x80203d42 <.LBB220_31+0x11a>
80203cfe: 90 60        	ld	a2, 0(s1)
80203d00: 03 b5 84 ff  	ld	a0, -8(s1)
80203d04: 8a 85        	mv	a1, sp
80203d06: 02 96        	jalr	a2
80203d08: 0d ed        	bnez	a0, 0x80203d42 <.LBB220_31+0x11a>
80203d0a: 41 04        	addi	s0, s0, 16
80203d0c: 41 1a        	addi	s4, s4, -16
80203d0e: c1 04        	addi	s1, s1, 16
80203d10: e3 1e 0a fc  	bnez	s4, 0x80203cec <.LBB220_31+0xc4>
80203d14: 03 b5 89 01  	ld	a0, 24(s3)
80203d18: 63 68 a9 00  	bltu	s2, a0, 0x80203d28 <.LBB220_31+0x100>
80203d1c: 2d a0        	j	0x80203d46 <.LBB220_31+0x11e>
80203d1e: 01 49        	li	s2, 0
80203d20: 03 b5 89 01  	ld	a0, 24(s3)
80203d24: 63 71 a9 02  	bgeu	s2, a0, 0x80203d46 <.LBB220_31+0x11e>
80203d28: 03 b5 09 01  	ld	a0, 16(s3)
80203d2c: 93 15 49 00  	slli	a1, s2, 4
80203d30: 33 06 b5 00  	add	a2, a0, a1
80203d34: a2 66        	ld	a3, 8(sp)
80203d36: 02 65        	ld	a0, 0(sp)
80203d38: 0c 62        	ld	a1, 0(a2)
80203d3a: 10 66        	ld	a2, 8(a2)
80203d3c: 94 6e        	ld	a3, 24(a3)
80203d3e: 82 96        	jalr	a3
80203d40: 19 c1        	beqz	a0, 0x80203d46 <.LBB220_31+0x11e>
80203d42: 05 45        	li	a0, 1
80203d44: 11 a0        	j	0x80203d48 <.LBB220_31+0x120>
80203d46: 01 45        	li	a0, 0
80203d48: e6 70        	ld	ra, 120(sp)
80203d4a: 46 74        	ld	s0, 112(sp)
80203d4c: a6 74        	ld	s1, 104(sp)
80203d4e: 06 79        	ld	s2, 96(sp)
80203d50: e6 69        	ld	s3, 88(sp)
80203d52: 46 6a        	ld	s4, 80(sp)
80203d54: a6 6a        	ld	s5, 72(sp)
80203d56: 06 6b        	ld	s6, 64(sp)
80203d58: 09 61        	addi	sp, sp, 128
80203d5a: 82 80        	ret

0000000080203d5c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80203d5c: 59 71        	addi	sp, sp, -112
80203d5e: 86 f4        	sd	ra, 104(sp)
80203d60: a2 f0        	sd	s0, 96(sp)
80203d62: a6 ec        	sd	s1, 88(sp)
80203d64: ca e8        	sd	s2, 80(sp)
80203d66: ce e4        	sd	s3, 72(sp)
80203d68: d2 e0        	sd	s4, 64(sp)
80203d6a: 56 fc        	sd	s5, 56(sp)
80203d6c: 5a f8        	sd	s6, 48(sp)
80203d6e: 5e f4        	sd	s7, 40(sp)
80203d70: 62 f0        	sd	s8, 32(sp)
80203d72: 66 ec        	sd	s9, 24(sp)
80203d74: 6a e8        	sd	s10, 16(sp)
80203d76: 6e e4        	sd	s11, 8(sp)
80203d78: be 89        	mv	s3, a5
80203d7a: 3a 89        	mv	s2, a4
80203d7c: 36 8b        	mv	s6, a3
80203d7e: 32 8a        	mv	s4, a2
80203d80: 2a 8c        	mv	s8, a0
80203d82: b9 c1        	beqz	a1, 0x80203dc8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
80203d84: 03 64 0c 03  	lwu	s0, 48(s8)
80203d88: 13 75 14 00  	andi	a0, s0, 1
80203d8c: b7 0a 11 00  	lui	s5, 272
80203d90: 19 c1        	beqz	a0, 0x80203d96 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
80203d92: 93 0a b0 02  	li	s5, 43
80203d96: b3 0c 35 01  	add	s9, a0, s3
80203d9a: 13 75 44 00  	andi	a0, s0, 4
80203d9e: 15 cd        	beqz	a0, 0x80203dda <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80203da0: 13 05 00 02  	li	a0, 32
80203da4: 63 70 ab 04  	bgeu	s6, a0, 0x80203de4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80203da8: 01 45        	li	a0, 0
80203daa: 63 03 0b 04  	beqz	s6, 0x80203df0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203dae: da 85        	mv	a1, s6
80203db0: 52 86        	mv	a2, s4
80203db2: 83 06 06 00  	lb	a3, 0(a2)
80203db6: 05 06        	addi	a2, a2, 1
80203db8: 93 a6 06 fc  	slti	a3, a3, -64
80203dbc: 93 c6 16 00  	xori	a3, a3, 1
80203dc0: fd 15        	addi	a1, a1, -1
80203dc2: 36 95        	add	a0, a0, a3
80203dc4: fd f5        	bnez	a1, 0x80203db2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80203dc6: 2d a0        	j	0x80203df0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203dc8: 03 24 0c 03  	lw	s0, 48(s8)
80203dcc: 93 8c 19 00  	addi	s9, s3, 1
80203dd0: 93 0a d0 02  	li	s5, 45
80203dd4: 13 75 44 00  	andi	a0, s0, 4
80203dd8: 61 f5        	bnez	a0, 0x80203da0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80203dda: 01 4a        	li	s4, 0
80203ddc: 03 35 0c 01  	ld	a0, 16(s8)
80203de0: 01 ed        	bnez	a0, 0x80203df8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80203de2: 99 a0        	j	0x80203e28 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203de4: 52 85        	mv	a0, s4
80203de6: da 85        	mv	a1, s6
80203de8: 97 00 00 00  	auipc	ra, 0
80203dec: e7 80 c0 44  	jalr	1100(ra)
80203df0: aa 9c        	add	s9, s9, a0
80203df2: 03 35 0c 01  	ld	a0, 16(s8)
80203df6: 0d c9        	beqz	a0, 0x80203e28 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203df8: 03 3d 8c 01  	ld	s10, 24(s8)
80203dfc: 63 f6 ac 03  	bgeu	s9, s10, 0x80203e28 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203e00: 13 75 84 00  	andi	a0, s0, 8
80203e04: 41 e5        	bnez	a0, 0x80203e8c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80203e06: 83 45 8c 03  	lbu	a1, 56(s8)
80203e0a: 0d 46        	li	a2, 3
80203e0c: 05 45        	li	a0, 1
80203e0e: 63 83 c5 00  	beq	a1, a2, 0x80203e14 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80203e12: 2e 85        	mv	a0, a1
80203e14: 93 75 35 00  	andi	a1, a0, 3
80203e18: 33 05 9d 41  	sub	a0, s10, s9
80203e1c: e1 c1        	beqz	a1, 0x80203edc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80203e1e: 05 46        	li	a2, 1
80203e20: 63 91 c5 0c  	bne	a1, a2, 0x80203ee2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80203e24: 01 4d        	li	s10, 0
80203e26: d9 a0        	j	0x80203eec <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203e28: 03 34 0c 00  	ld	s0, 0(s8)
80203e2c: 83 34 8c 00  	ld	s1, 8(s8)
80203e30: 22 85        	mv	a0, s0
80203e32: a6 85        	mv	a1, s1
80203e34: 56 86        	mv	a2, s5
80203e36: d2 86        	mv	a3, s4
80203e38: 5a 87        	mv	a4, s6
80203e3a: 97 00 00 00  	auipc	ra, 0
80203e3e: e7 80 00 14  	jalr	320(ra)
80203e42: 85 4b        	li	s7, 1
80203e44: 0d c1        	beqz	a0, 0x80203e66 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80203e46: 5e 85        	mv	a0, s7
80203e48: a6 70        	ld	ra, 104(sp)
80203e4a: 06 74        	ld	s0, 96(sp)
80203e4c: e6 64        	ld	s1, 88(sp)
80203e4e: 46 69        	ld	s2, 80(sp)
80203e50: a6 69        	ld	s3, 72(sp)
80203e52: 06 6a        	ld	s4, 64(sp)
80203e54: e2 7a        	ld	s5, 56(sp)
80203e56: 42 7b        	ld	s6, 48(sp)
80203e58: a2 7b        	ld	s7, 40(sp)
80203e5a: 02 7c        	ld	s8, 32(sp)
80203e5c: e2 6c        	ld	s9, 24(sp)
80203e5e: 42 6d        	ld	s10, 16(sp)
80203e60: a2 6d        	ld	s11, 8(sp)
80203e62: 65 61        	addi	sp, sp, 112
80203e64: 82 80        	ret
80203e66: 9c 6c        	ld	a5, 24(s1)
80203e68: 22 85        	mv	a0, s0
80203e6a: ca 85        	mv	a1, s2
80203e6c: 4e 86        	mv	a2, s3
80203e6e: a6 70        	ld	ra, 104(sp)
80203e70: 06 74        	ld	s0, 96(sp)
80203e72: e6 64        	ld	s1, 88(sp)
80203e74: 46 69        	ld	s2, 80(sp)
80203e76: a6 69        	ld	s3, 72(sp)
80203e78: 06 6a        	ld	s4, 64(sp)
80203e7a: e2 7a        	ld	s5, 56(sp)
80203e7c: 42 7b        	ld	s6, 48(sp)
80203e7e: a2 7b        	ld	s7, 40(sp)
80203e80: 02 7c        	ld	s8, 32(sp)
80203e82: e2 6c        	ld	s9, 24(sp)
80203e84: 42 6d        	ld	s10, 16(sp)
80203e86: a2 6d        	ld	s11, 8(sp)
80203e88: 65 61        	addi	sp, sp, 112
80203e8a: 82 87        	jr	a5
80203e8c: 03 24 4c 03  	lw	s0, 52(s8)
80203e90: 13 05 00 03  	li	a0, 48
80203e94: 83 45 8c 03  	lbu	a1, 56(s8)
80203e98: 2e e0        	sd	a1, 0(sp)
80203e9a: 83 3d 0c 00  	ld	s11, 0(s8)
80203e9e: 83 34 8c 00  	ld	s1, 8(s8)
80203ea2: 23 2a ac 02  	sw	a0, 52(s8)
80203ea6: 85 4b        	li	s7, 1
80203ea8: 23 0c 7c 03  	sb	s7, 56(s8)
80203eac: 6e 85        	mv	a0, s11
80203eae: a6 85        	mv	a1, s1
80203eb0: 56 86        	mv	a2, s5
80203eb2: d2 86        	mv	a3, s4
80203eb4: 5a 87        	mv	a4, s6
80203eb6: 97 00 00 00  	auipc	ra, 0
80203eba: e7 80 40 0c  	jalr	196(ra)
80203ebe: 41 f5        	bnez	a0, 0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203ec0: 22 8a        	mv	s4, s0
80203ec2: 33 05 9d 41  	sub	a0, s10, s9
80203ec6: 13 04 15 00  	addi	s0, a0, 1
80203eca: 7d 14        	addi	s0, s0, -1
80203ecc: 49 c4        	beqz	s0, 0x80203f56 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80203ece: 90 70        	ld	a2, 32(s1)
80203ed0: 93 05 00 03  	li	a1, 48
80203ed4: 6e 85        	mv	a0, s11
80203ed6: 02 96        	jalr	a2
80203ed8: 6d d9        	beqz	a0, 0x80203eca <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80203eda: b5 b7        	j	0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203edc: 2a 8d        	mv	s10, a0
80203ede: 2e 85        	mv	a0, a1
80203ee0: 31 a0        	j	0x80203eec <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203ee2: 93 05 15 00  	addi	a1, a0, 1
80203ee6: 05 81        	srli	a0, a0, 1
80203ee8: 13 dd 15 00  	srli	s10, a1, 1
80203eec: 83 3c 0c 00  	ld	s9, 0(s8)
80203ef0: 83 3d 8c 00  	ld	s11, 8(s8)
80203ef4: 03 24 4c 03  	lw	s0, 52(s8)
80203ef8: 93 04 15 00  	addi	s1, a0, 1
80203efc: fd 14        	addi	s1, s1, -1
80203efe: 89 c8        	beqz	s1, 0x80203f10 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80203f00: 03 b6 0d 02  	ld	a2, 32(s11)
80203f04: 66 85        	mv	a0, s9
80203f06: a2 85        	mv	a1, s0
80203f08: 02 96        	jalr	a2
80203f0a: 6d d9        	beqz	a0, 0x80203efc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80203f0c: 85 4b        	li	s7, 1
80203f0e: 25 bf        	j	0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f10: 37 05 11 00  	lui	a0, 272
80203f14: 85 4b        	li	s7, 1
80203f16: e3 08 a4 f2  	beq	s0, a0, 0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f1a: 66 85        	mv	a0, s9
80203f1c: ee 85        	mv	a1, s11
80203f1e: 56 86        	mv	a2, s5
80203f20: d2 86        	mv	a3, s4
80203f22: 5a 87        	mv	a4, s6
80203f24: 97 00 00 00  	auipc	ra, 0
80203f28: e7 80 60 05  	jalr	86(ra)
80203f2c: 09 fd        	bnez	a0, 0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f2e: 83 b6 8d 01  	ld	a3, 24(s11)
80203f32: 66 85        	mv	a0, s9
80203f34: ca 85        	mv	a1, s2
80203f36: 4e 86        	mv	a2, s3
80203f38: 82 96        	jalr	a3
80203f3a: 11 f5        	bnez	a0, 0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f3c: 81 44        	li	s1, 0
80203f3e: 63 0a 9d 02  	beq	s10, s1, 0x80203f72 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80203f42: 03 b6 0d 02  	ld	a2, 32(s11)
80203f46: 85 04        	addi	s1, s1, 1
80203f48: 66 85        	mv	a0, s9
80203f4a: a2 85        	mv	a1, s0
80203f4c: 02 96        	jalr	a2
80203f4e: 65 d9        	beqz	a0, 0x80203f3e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80203f50: 13 85 f4 ff  	addi	a0, s1, -1
80203f54: 05 a0        	j	0x80203f74 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80203f56: 94 6c        	ld	a3, 24(s1)
80203f58: 6e 85        	mv	a0, s11
80203f5a: ca 85        	mv	a1, s2
80203f5c: 4e 86        	mv	a2, s3
80203f5e: 82 96        	jalr	a3
80203f60: e3 13 05 ee  	bnez	a0, 0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f64: 81 4b        	li	s7, 0
80203f66: 23 2a 4c 03  	sw	s4, 52(s8)
80203f6a: 02 65        	ld	a0, 0(sp)
80203f6c: 23 0c ac 02  	sb	a0, 56(s8)
80203f70: d9 bd        	j	0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203f72: 6a 85        	mv	a0, s10
80203f74: b3 3b a5 01  	sltu	s7, a0, s10
80203f78: f9 b5        	j	0x80203e46 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080203f7a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80203f7a: 79 71        	addi	sp, sp, -48
80203f7c: 06 f4        	sd	ra, 40(sp)
80203f7e: 22 f0        	sd	s0, 32(sp)
80203f80: 26 ec        	sd	s1, 24(sp)
80203f82: 4a e8        	sd	s2, 16(sp)
80203f84: 4e e4        	sd	s3, 8(sp)
80203f86: 9b 07 06 00  	sext.w	a5, a2
80203f8a: 37 08 11 00  	lui	a6, 272
80203f8e: 3a 89        	mv	s2, a4
80203f90: b6 84        	mv	s1, a3
80203f92: 2e 84        	mv	s0, a1
80203f94: aa 89        	mv	s3, a0
80203f96: 63 89 07 01  	beq	a5, a6, 0x80203fa8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80203f9a: 14 70        	ld	a3, 32(s0)
80203f9c: 4e 85        	mv	a0, s3
80203f9e: b2 85        	mv	a1, a2
80203fa0: 82 96        	jalr	a3
80203fa2: aa 85        	mv	a1, a0
80203fa4: 05 45        	li	a0, 1
80203fa6: 91 ed        	bnez	a1, 0x80203fc2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80203fa8: 81 cc        	beqz	s1, 0x80203fc0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80203faa: 1c 6c        	ld	a5, 24(s0)
80203fac: 4e 85        	mv	a0, s3
80203fae: a6 85        	mv	a1, s1
80203fb0: 4a 86        	mv	a2, s2
80203fb2: a2 70        	ld	ra, 40(sp)
80203fb4: 02 74        	ld	s0, 32(sp)
80203fb6: e2 64        	ld	s1, 24(sp)
80203fb8: 42 69        	ld	s2, 16(sp)
80203fba: a2 69        	ld	s3, 8(sp)
80203fbc: 45 61        	addi	sp, sp, 48
80203fbe: 82 87        	jr	a5
80203fc0: 01 45        	li	a0, 0
80203fc2: a2 70        	ld	ra, 40(sp)
80203fc4: 02 74        	ld	s0, 32(sp)
80203fc6: e2 64        	ld	s1, 24(sp)
80203fc8: 42 69        	ld	s2, 16(sp)
80203fca: a2 69        	ld	s3, 8(sp)
80203fcc: 45 61        	addi	sp, sp, 48
80203fce: 82 80        	ret

0000000080203fd0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80203fd0: 5d 71        	addi	sp, sp, -80
80203fd2: 86 e4        	sd	ra, 72(sp)
80203fd4: a2 e0        	sd	s0, 64(sp)
80203fd6: 26 fc        	sd	s1, 56(sp)
80203fd8: 4a f8        	sd	s2, 48(sp)
80203fda: 4e f4        	sd	s3, 40(sp)
80203fdc: 52 f0        	sd	s4, 32(sp)
80203fde: 56 ec        	sd	s5, 24(sp)
80203fe0: 5a e8        	sd	s6, 16(sp)
80203fe2: 5e e4        	sd	s7, 8(sp)
80203fe4: 2a 8a        	mv	s4, a0
80203fe6: 83 32 05 01  	ld	t0, 16(a0)
80203fea: 08 71        	ld	a0, 32(a0)
80203fec: 93 86 f2 ff  	addi	a3, t0, -1
80203ff0: b3 36 d0 00  	snez	a3, a3
80203ff4: 13 07 f5 ff  	addi	a4, a0, -1
80203ff8: 33 37 e0 00  	snez	a4, a4
80203ffc: f9 8e        	and	a3, a3, a4
80203ffe: b2 89        	mv	s3, a2
80204000: 2e 89        	mv	s2, a1
80204002: 63 9d 06 16  	bnez	a3, 0x8020417c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80204006: 85 45        	li	a1, 1
80204008: 63 18 b5 10  	bne	a0, a1, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020400c: 03 35 8a 02  	ld	a0, 40(s4)
80204010: 81 45        	li	a1, 0
80204012: b3 06 39 01  	add	a3, s2, s3
80204016: 13 07 15 00  	addi	a4, a0, 1
8020401a: 37 03 11 00  	lui	t1, 272
8020401e: 93 08 f0 0d  	li	a7, 223
80204022: 13 08 00 0f  	li	a6, 240
80204026: 4a 86        	mv	a2, s2
80204028: 01 a8        	j	0x80204038 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
8020402a: 13 05 16 00  	addi	a0, a2, 1
8020402e: 91 8d        	sub	a1, a1, a2
80204030: aa 95        	add	a1, a1, a0
80204032: 2a 86        	mv	a2, a0
80204034: 63 02 64 0e  	beq	s0, t1, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204038: 7d 17        	addi	a4, a4, -1
8020403a: 25 c7        	beqz	a4, 0x802040a2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
8020403c: 63 0e d6 0c  	beq	a2, a3, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204040: 03 05 06 00  	lb	a0, 0(a2)
80204044: 13 74 f5 0f  	andi	s0, a0, 255
80204048: e3 51 05 fe  	bgez	a0, 0x8020402a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
8020404c: 03 45 16 00  	lbu	a0, 1(a2)
80204050: 93 77 f4 01  	andi	a5, s0, 31
80204054: 93 74 f5 03  	andi	s1, a0, 63
80204058: 63 f9 88 02  	bgeu	a7, s0, 0x8020408a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
8020405c: 03 45 26 00  	lbu	a0, 2(a2)
80204060: 9a 04        	slli	s1, s1, 6
80204062: 13 75 f5 03  	andi	a0, a0, 63
80204066: c9 8c        	or	s1, s1, a0
80204068: 63 67 04 03  	bltu	s0, a6, 0x80204096 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
8020406c: 03 45 36 00  	lbu	a0, 3(a2)
80204070: f6 17        	slli	a5, a5, 61
80204072: ad 93        	srli	a5, a5, 43
80204074: 9a 04        	slli	s1, s1, 6
80204076: 13 75 f5 03  	andi	a0, a0, 63
8020407a: 45 8d        	or	a0, a0, s1
8020407c: 33 64 f5 00  	or	s0, a0, a5
80204080: 63 0c 64 08  	beq	s0, t1, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204084: 13 05 46 00  	addi	a0, a2, 4
80204088: 5d b7        	j	0x8020402e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
8020408a: 13 05 26 00  	addi	a0, a2, 2
8020408e: 9a 07        	slli	a5, a5, 6
80204090: 33 e4 97 00  	or	s0, a5, s1
80204094: 69 bf        	j	0x8020402e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80204096: 13 05 36 00  	addi	a0, a2, 3
8020409a: b2 07        	slli	a5, a5, 12
8020409c: 33 e4 f4 00  	or	s0, s1, a5
802040a0: 79 b7        	j	0x8020402e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
802040a2: 63 0b d6 06  	beq	a2, a3, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802040a6: 03 05 06 00  	lb	a0, 0(a2)
802040aa: 63 53 05 04  	bgez	a0, 0x802040f0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802040ae: 13 75 f5 0f  	andi	a0, a0, 255
802040b2: 93 06 00 0e  	li	a3, 224
802040b6: 63 6d d5 02  	bltu	a0, a3, 0x802040f0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802040ba: 93 06 00 0f  	li	a3, 240
802040be: 63 69 d5 02  	bltu	a0, a3, 0x802040f0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802040c2: 83 46 16 00  	lbu	a3, 1(a2)
802040c6: 03 47 26 00  	lbu	a4, 2(a2)
802040ca: 93 f6 f6 03  	andi	a3, a3, 63
802040ce: 13 77 f7 03  	andi	a4, a4, 63
802040d2: 03 46 36 00  	lbu	a2, 3(a2)
802040d6: 76 15        	slli	a0, a0, 61
802040d8: 2d 91        	srli	a0, a0, 43
802040da: b2 06        	slli	a3, a3, 12
802040dc: 1a 07        	slli	a4, a4, 6
802040de: d9 8e        	or	a3, a3, a4
802040e0: 13 76 f6 03  	andi	a2, a2, 63
802040e4: 55 8e        	or	a2, a2, a3
802040e6: 51 8d        	or	a0, a0, a2
802040e8: 37 06 11 00  	lui	a2, 272
802040ec: 63 06 c5 02  	beq	a0, a2, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802040f0: 85 c1        	beqz	a1, 0x80204110 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802040f2: 63 fd 35 01  	bgeu	a1, s3, 0x8020410c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
802040f6: 33 05 b9 00  	add	a0, s2, a1
802040fa: 03 05 05 00  	lb	a0, 0(a0)
802040fe: 13 06 00 fc  	li	a2, -64
80204102: 63 57 c5 00  	bge	a0, a2, 0x80204110 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80204106: 01 45        	li	a0, 0
80204108: 11 e5        	bnez	a0, 0x80204114 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
8020410a: 39 a0        	j	0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020410c: e3 9d 35 ff  	bne	a1, s3, 0x80204106 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80204110: 4a 85        	mv	a0, s2
80204112: 19 c1        	beqz	a0, 0x80204118 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80204114: ae 89        	mv	s3, a1
80204116: 2a 89        	mv	s2, a0
80204118: 63 82 02 06  	beqz	t0, 0x8020417c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
8020411c: 03 34 8a 01  	ld	s0, 24(s4)
80204120: 13 05 00 02  	li	a0, 32
80204124: 63 f4 a9 04  	bgeu	s3, a0, 0x8020416c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80204128: 01 45        	li	a0, 0
8020412a: 63 8e 09 00  	beqz	s3, 0x80204146 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
8020412e: ce 85        	mv	a1, s3
80204130: 4a 86        	mv	a2, s2
80204132: 83 06 06 00  	lb	a3, 0(a2)
80204136: 05 06        	addi	a2, a2, 1
80204138: 93 a6 06 fc  	slti	a3, a3, -64
8020413c: 93 c6 16 00  	xori	a3, a3, 1
80204140: fd 15        	addi	a1, a1, -1
80204142: 36 95        	add	a0, a0, a3
80204144: fd f5        	bnez	a1, 0x80204132 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80204146: 63 7b 85 02  	bgeu	a0, s0, 0x8020417c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
8020414a: 83 45 8a 03  	lbu	a1, 56(s4)
8020414e: 8d 46        	li	a3, 3
80204150: 01 46        	li	a2, 0
80204152: 63 83 d5 00  	beq	a1, a3, 0x80204158 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80204156: 2e 86        	mv	a2, a1
80204158: 93 75 36 00  	andi	a1, a2, 3
8020415c: 33 05 a4 40  	sub	a0, s0, a0
80204160: a1 c1        	beqz	a1, 0x802041a0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80204162: 05 46        	li	a2, 1
80204164: 63 91 c5 04  	bne	a1, a2, 0x802041a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80204168: 81 4a        	li	s5, 0
8020416a: 99 a0        	j	0x802041b0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
8020416c: 4a 85        	mv	a0, s2
8020416e: ce 85        	mv	a1, s3
80204170: 97 00 00 00  	auipc	ra, 0
80204174: e7 80 40 0c  	jalr	196(ra)
80204178: e3 69 85 fc  	bltu	a0, s0, 0x8020414a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
8020417c: 83 35 8a 00  	ld	a1, 8(s4)
80204180: 03 35 0a 00  	ld	a0, 0(s4)
80204184: 9c 6d        	ld	a5, 24(a1)
80204186: ca 85        	mv	a1, s2
80204188: 4e 86        	mv	a2, s3
8020418a: a6 60        	ld	ra, 72(sp)
8020418c: 06 64        	ld	s0, 64(sp)
8020418e: e2 74        	ld	s1, 56(sp)
80204190: 42 79        	ld	s2, 48(sp)
80204192: a2 79        	ld	s3, 40(sp)
80204194: 02 7a        	ld	s4, 32(sp)
80204196: e2 6a        	ld	s5, 24(sp)
80204198: 42 6b        	ld	s6, 16(sp)
8020419a: a2 6b        	ld	s7, 8(sp)
8020419c: 61 61        	addi	sp, sp, 80
8020419e: 82 87        	jr	a5
802041a0: aa 8a        	mv	s5, a0
802041a2: 2e 85        	mv	a0, a1
802041a4: 31 a0        	j	0x802041b0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
802041a6: 93 05 15 00  	addi	a1, a0, 1
802041aa: 05 81        	srli	a0, a0, 1
802041ac: 93 da 15 00  	srli	s5, a1, 1
802041b0: 03 3b 0a 00  	ld	s6, 0(s4)
802041b4: 83 3b 8a 00  	ld	s7, 8(s4)
802041b8: 83 24 4a 03  	lw	s1, 52(s4)
802041bc: 13 04 15 00  	addi	s0, a0, 1
802041c0: 7d 14        	addi	s0, s0, -1
802041c2: 09 c8        	beqz	s0, 0x802041d4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
802041c4: 03 b6 0b 02  	ld	a2, 32(s7)
802041c8: 5a 85        	mv	a0, s6
802041ca: a6 85        	mv	a1, s1
802041cc: 02 96        	jalr	a2
802041ce: 6d d9        	beqz	a0, 0x802041c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
802041d0: 05 4a        	li	s4, 1
802041d2: 2d a8        	j	0x8020420c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041d4: 37 05 11 00  	lui	a0, 272
802041d8: 05 4a        	li	s4, 1
802041da: 63 89 a4 02  	beq	s1, a0, 0x8020420c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041de: 83 b6 8b 01  	ld	a3, 24(s7)
802041e2: 5a 85        	mv	a0, s6
802041e4: ca 85        	mv	a1, s2
802041e6: 4e 86        	mv	a2, s3
802041e8: 82 96        	jalr	a3
802041ea: 0d e1        	bnez	a0, 0x8020420c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802041ec: 01 44        	li	s0, 0
802041ee: 63 8c 8a 00  	beq	s5, s0, 0x80204206 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
802041f2: 03 b6 0b 02  	ld	a2, 32(s7)
802041f6: 05 04        	addi	s0, s0, 1
802041f8: 5a 85        	mv	a0, s6
802041fa: a6 85        	mv	a1, s1
802041fc: 02 96        	jalr	a2
802041fe: 65 d9        	beqz	a0, 0x802041ee <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80204200: 13 05 f4 ff  	addi	a0, s0, -1
80204204: 11 a0        	j	0x80204208 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80204206: 56 85        	mv	a0, s5
80204208: 33 3a 55 01  	sltu	s4, a0, s5
8020420c: 52 85        	mv	a0, s4
8020420e: a6 60        	ld	ra, 72(sp)
80204210: 06 64        	ld	s0, 64(sp)
80204212: e2 74        	ld	s1, 56(sp)
80204214: 42 79        	ld	s2, 48(sp)
80204216: a2 79        	ld	s3, 40(sp)
80204218: 02 7a        	ld	s4, 32(sp)
8020421a: e2 6a        	ld	s5, 24(sp)
8020421c: 42 6b        	ld	s6, 16(sp)
8020421e: a2 6b        	ld	s7, 8(sp)
80204220: 61 61        	addi	sp, sp, 80
80204222: 82 80        	ret

0000000080204224 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80204224: ae 86        	mv	a3, a1
80204226: aa 85        	mv	a1, a0
80204228: 32 85        	mv	a0, a2
8020422a: 36 86        	mv	a2, a3
8020422c: 17 03 00 00  	auipc	t1, 0
80204230: 67 00 43 da  	jr	-604(t1)

0000000080204234 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80204234: 2a 86        	mv	a2, a0
80204236: 1d 05        	addi	a0, a0, 7
80204238: 13 77 85 ff  	andi	a4, a0, -8
8020423c: b3 08 c7 40  	sub	a7, a4, a2
80204240: 63 ec 15 01  	bltu	a1, a7, 0x80204258 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80204244: 33 88 15 41  	sub	a6, a1, a7
80204248: 13 35 88 00  	sltiu	a0, a6, 8
8020424c: 93 b7 98 00  	sltiu	a5, a7, 9
80204250: 93 c7 17 00  	xori	a5, a5, 1
80204254: 5d 8d        	or	a0, a0, a5
80204256: 11 cd        	beqz	a0, 0x80204272 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80204258: 01 45        	li	a0, 0
8020425a: 99 c9        	beqz	a1, 0x80204270 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
8020425c: 83 06 06 00  	lb	a3, 0(a2)
80204260: 05 06        	addi	a2, a2, 1
80204262: 93 a6 06 fc  	slti	a3, a3, -64
80204266: 93 c6 16 00  	xori	a3, a3, 1
8020426a: fd 15        	addi	a1, a1, -1
8020426c: 36 95        	add	a0, a0, a3
8020426e: fd f5        	bnez	a1, 0x8020425c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80204270: 82 80        	ret
80204272: 93 75 78 00  	andi	a1, a6, 7
80204276: 81 47        	li	a5, 0
80204278: 63 0f c7 00  	beq	a4, a2, 0x80204296 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
8020427c: 33 07 e6 40  	sub	a4, a2, a4
80204280: 32 85        	mv	a0, a2
80204282: 83 06 05 00  	lb	a3, 0(a0)
80204286: 05 05        	addi	a0, a0, 1
80204288: 93 a6 06 fc  	slti	a3, a3, -64
8020428c: 93 c6 16 00  	xori	a3, a3, 1
80204290: 05 07        	addi	a4, a4, 1
80204292: b6 97        	add	a5, a5, a3
80204294: 7d f7        	bnez	a4, 0x80204282 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80204296: b3 02 16 01  	add	t0, a2, a7
8020429a: 01 46        	li	a2, 0
8020429c: 99 cd        	beqz	a1, 0x802042ba <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
8020429e: 13 75 88 ff  	andi	a0, a6, -8
802042a2: b3 86 a2 00  	add	a3, t0, a0
802042a6: 03 85 06 00  	lb	a0, 0(a3)
802042aa: 85 06        	addi	a3, a3, 1
802042ac: 13 25 05 fc  	slti	a0, a0, -64
802042b0: 13 45 15 00  	xori	a0, a0, 1
802042b4: fd 15        	addi	a1, a1, -1
802042b6: 2a 96        	add	a2, a2, a0
802042b8: fd f5        	bnez	a1, 0x802042a6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
802042ba: 13 57 38 00  	srli	a4, a6, 3

00000000802042be <.LBB292_27>:
802042be: 17 25 00 00  	auipc	a0, 2
802042c2: 13 05 25 fa  	addi	a0, a0, -94
802042c6: 03 3f 05 00  	ld	t5, 0(a0)

00000000802042ca <.LBB292_28>:
802042ca: 17 25 00 00  	auipc	a0, 2
802042ce: 13 05 e5 f9  	addi	a0, a0, -98
802042d2: 83 38 05 00  	ld	a7, 0(a0)
802042d6: 37 15 00 10  	lui	a0, 65537
802042da: 12 05        	slli	a0, a0, 4
802042dc: 05 05        	addi	a0, a0, 1
802042de: 42 05        	slli	a0, a0, 16
802042e0: 13 08 15 00  	addi	a6, a0, 1
802042e4: 33 05 f6 00  	add	a0, a2, a5
802042e8: 25 a0        	j	0x80204310 <.LBB292_28+0x46>
802042ea: 13 16 3e 00  	slli	a2, t3, 3
802042ee: b3 02 c3 00  	add	t0, t1, a2
802042f2: 33 87 c3 41  	sub	a4, t2, t3
802042f6: 13 76 3e 00  	andi	a2, t3, 3
802042fa: b3 f6 15 01  	and	a3, a1, a7
802042fe: a1 81        	srli	a1, a1, 8
80204300: b3 f5 15 01  	and	a1, a1, a7
80204304: b6 95        	add	a1, a1, a3
80204306: b3 85 05 03  	mul	a1, a1, a6
8020430a: c1 91        	srli	a1, a1, 48
8020430c: 2e 95        	add	a0, a0, a1
8020430e: 41 e2        	bnez	a2, 0x8020438e <.LBB292_28+0xc4>
80204310: 25 d3        	beqz	a4, 0x80204270 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80204312: ba 83        	mv	t2, a4
80204314: 16 83        	mv	t1, t0
80204316: 93 05 00 0c  	li	a1, 192
8020431a: 3a 8e        	mv	t3, a4
8020431c: 63 64 b7 00  	bltu	a4, a1, 0x80204324 <.LBB292_28+0x5a>
80204320: 13 0e 00 0c  	li	t3, 192
80204324: 93 75 ce 0f  	andi	a1, t3, 252
80204328: 13 96 35 00  	slli	a2, a1, 3
8020432c: b3 0e c3 00  	add	t4, t1, a2
80204330: cd dd        	beqz	a1, 0x802042ea <.LBB292_28+0x20>
80204332: 81 45        	li	a1, 0
80204334: 1a 86        	mv	a2, t1
80204336: 55 da        	beqz	a2, 0x802042ea <.LBB292_28+0x20>
80204338: 18 62        	ld	a4, 0(a2)
8020433a: 93 47 f7 ff  	not	a5, a4
8020433e: 9d 83        	srli	a5, a5, 7
80204340: 19 83        	srli	a4, a4, 6
80204342: 14 66        	ld	a3, 8(a2)
80204344: 5d 8f        	or	a4, a4, a5
80204346: 33 77 e7 01  	and	a4, a4, t5
8020434a: ba 95        	add	a1, a1, a4
8020434c: 13 c7 f6 ff  	not	a4, a3
80204350: 1d 83        	srli	a4, a4, 7
80204352: 99 82        	srli	a3, a3, 6
80204354: 1c 6a        	ld	a5, 16(a2)
80204356: d9 8e        	or	a3, a3, a4
80204358: b3 f6 e6 01  	and	a3, a3, t5
8020435c: b6 95        	add	a1, a1, a3
8020435e: 93 c6 f7 ff  	not	a3, a5
80204362: 9d 82        	srli	a3, a3, 7
80204364: 13 d7 67 00  	srli	a4, a5, 6
80204368: 1c 6e        	ld	a5, 24(a2)
8020436a: d9 8e        	or	a3, a3, a4
8020436c: b3 f6 e6 01  	and	a3, a3, t5
80204370: b6 95        	add	a1, a1, a3
80204372: 93 c6 f7 ff  	not	a3, a5
80204376: 9d 82        	srli	a3, a3, 7
80204378: 13 d7 67 00  	srli	a4, a5, 6
8020437c: d9 8e        	or	a3, a3, a4
8020437e: b3 f6 e6 01  	and	a3, a3, t5
80204382: 13 06 06 02  	addi	a2, a2, 32
80204386: b6 95        	add	a1, a1, a3
80204388: e3 17 d6 fb  	bne	a2, t4, 0x80204336 <.LBB292_28+0x6c>
8020438c: b9 bf        	j	0x802042ea <.LBB292_28+0x20>
8020438e: 63 0a 03 02  	beqz	t1, 0x802043c2 <.LBB292_28+0xf8>
80204392: 93 05 00 0c  	li	a1, 192
80204396: 63 e4 b3 00  	bltu	t2, a1, 0x8020439e <.LBB292_28+0xd4>
8020439a: 93 03 00 0c  	li	t2, 192
8020439e: 81 45        	li	a1, 0
802043a0: 13 f6 33 00  	andi	a2, t2, 3
802043a4: 0e 06        	slli	a2, a2, 3
802043a6: 83 b6 0e 00  	ld	a3, 0(t4)
802043aa: a1 0e        	addi	t4, t4, 8
802043ac: 13 c7 f6 ff  	not	a4, a3
802043b0: 1d 83        	srli	a4, a4, 7
802043b2: 99 82        	srli	a3, a3, 6
802043b4: d9 8e        	or	a3, a3, a4
802043b6: b3 f6 e6 01  	and	a3, a3, t5
802043ba: 61 16        	addi	a2, a2, -8
802043bc: b6 95        	add	a1, a1, a3
802043be: 65 f6        	bnez	a2, 0x802043a6 <.LBB292_28+0xdc>
802043c0: 11 a0        	j	0x802043c4 <.LBB292_28+0xfa>
802043c2: 81 45        	li	a1, 0
802043c4: 33 f6 15 01  	and	a2, a1, a7
802043c8: a1 81        	srli	a1, a1, 8
802043ca: b3 f5 15 01  	and	a1, a1, a7
802043ce: b2 95        	add	a1, a1, a2
802043d0: b3 85 05 03  	mul	a1, a1, a6
802043d4: c1 91        	srli	a1, a1, 48
802043d6: 2e 95        	add	a0, a0, a1
802043d8: 82 80        	ret

00000000802043da <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
802043da: 39 71        	addi	sp, sp, -64
802043dc: 06 fc        	sd	ra, 56(sp)
802043de: 22 f8        	sd	s0, 48(sp)
802043e0: 26 f4        	sd	s1, 40(sp)
802043e2: 32 88        	mv	a6, a2
802043e4: 93 56 45 00  	srli	a3, a0, 4
802043e8: 13 07 70 02  	li	a4, 39
802043ec: 93 07 10 27  	li	a5, 625

00000000802043f0 <.LBB580_10>:
802043f0: 97 1e 00 00  	auipc	t4, 1
802043f4: 93 8e 0e 5e  	addi	t4, t4, 1504
802043f8: 63 f3 f6 02  	bgeu	a3, a5, 0x8020441e <.LBB580_10+0x2e>
802043fc: 93 06 30 06  	li	a3, 99
80204400: 63 e9 a6 0a  	bltu	a3, a0, 0x802044b2 <.LBB580_11+0x92>
80204404: 29 46        	li	a2, 10
80204406: 63 77 c5 0e  	bgeu	a0, a2, 0x802044f4 <.LBB580_11+0xd4>
8020440a: 93 06 f7 ff  	addi	a3, a4, -1
8020440e: 13 06 11 00  	addi	a2, sp, 1
80204412: 36 96        	add	a2, a2, a3
80204414: 1b 05 05 03  	addiw	a0, a0, 48
80204418: 23 00 a6 00  	sb	a0, 0(a2)
8020441c: dd a8        	j	0x80204512 <.LBB580_11+0xf2>
8020441e: 01 47        	li	a4, 0

0000000080204420 <.LBB580_11>:
80204420: 97 26 00 00  	auipc	a3, 2
80204424: 93 86 06 eb  	addi	a3, a3, -336
80204428: 83 b8 06 00  	ld	a7, 0(a3)
8020442c: 89 66        	lui	a3, 2
8020442e: 9b 83 06 71  	addiw	t2, a3, 1808
80204432: 85 66        	lui	a3, 1
80204434: 1b 8e b6 47  	addiw	t3, a3, 1147
80204438: 93 02 40 06  	li	t0, 100
8020443c: 13 03 11 00  	addi	t1, sp, 1
80204440: b7 e6 f5 05  	lui	a3, 24414
80204444: 1b 8f f6 0f  	addiw	t5, a3, 255
80204448: aa 87        	mv	a5, a0
8020444a: 33 35 15 03  	mulhu	a0, a0, a7
8020444e: 2d 81        	srli	a0, a0, 11
80204450: 3b 06 75 02  	mulw	a2, a0, t2
80204454: 3b 86 c7 40  	subw	a2, a5, a2
80204458: 93 16 06 03  	slli	a3, a2, 48
8020445c: c9 92        	srli	a3, a3, 50
8020445e: b3 86 c6 03  	mul	a3, a3, t3
80204462: 93 df 16 01  	srli	t6, a3, 17
80204466: c1 82        	srli	a3, a3, 16
80204468: 13 f4 e6 7f  	andi	s0, a3, 2046
8020446c: bb 86 5f 02  	mulw	a3, t6, t0
80204470: 15 9e        	subw	a2, a2, a3
80204472: 46 16        	slli	a2, a2, 49
80204474: 41 92        	srli	a2, a2, 48
80204476: b3 86 8e 00  	add	a3, t4, s0
8020447a: 33 04 e3 00  	add	s0, t1, a4
8020447e: 83 cf 06 00  	lbu	t6, 0(a3)
80204482: 83 86 16 00  	lb	a3, 1(a3)
80204486: 76 96        	add	a2, a2, t4
80204488: 83 04 16 00  	lb	s1, 1(a2)
8020448c: 03 46 06 00  	lbu	a2, 0(a2)
80204490: 23 02 d4 02  	sb	a3, 36(s0)
80204494: a3 01 f4 03  	sb	t6, 35(s0)
80204498: 23 03 94 02  	sb	s1, 38(s0)
8020449c: a3 02 c4 02  	sb	a2, 37(s0)
802044a0: 71 17        	addi	a4, a4, -4
802044a2: e3 63 ff fa  	bltu	t5, a5, 0x80204448 <.LBB580_11+0x28>
802044a6: 13 07 77 02  	addi	a4, a4, 39
802044aa: 93 06 30 06  	li	a3, 99
802044ae: e3 fb a6 f4  	bgeu	a3, a0, 0x80204404 <.LBB580_10+0x14>
802044b2: 13 16 05 03  	slli	a2, a0, 48
802044b6: 49 92        	srli	a2, a2, 50
802044b8: 85 66        	lui	a3, 1
802044ba: 9b 86 b6 47  	addiw	a3, a3, 1147
802044be: 33 06 d6 02  	mul	a2, a2, a3
802044c2: 45 82        	srli	a2, a2, 17
802044c4: 93 06 40 06  	li	a3, 100
802044c8: bb 06 d6 02  	mulw	a3, a2, a3
802044cc: 15 9d        	subw	a0, a0, a3
802044ce: 46 15        	slli	a0, a0, 49
802044d0: 41 91        	srli	a0, a0, 48
802044d2: 79 17        	addi	a4, a4, -2
802044d4: 76 95        	add	a0, a0, t4
802044d6: 83 06 15 00  	lb	a3, 1(a0)
802044da: 03 45 05 00  	lbu	a0, 0(a0)
802044de: 93 07 11 00  	addi	a5, sp, 1
802044e2: ba 97        	add	a5, a5, a4
802044e4: a3 80 d7 00  	sb	a3, 1(a5)
802044e8: 23 80 a7 00  	sb	a0, 0(a5)
802044ec: 32 85        	mv	a0, a2
802044ee: 29 46        	li	a2, 10
802044f0: e3 6d c5 f0  	bltu	a0, a2, 0x8020440a <.LBB580_10+0x1a>
802044f4: 06 05        	slli	a0, a0, 1
802044f6: 93 06 e7 ff  	addi	a3, a4, -2
802044fa: 76 95        	add	a0, a0, t4
802044fc: 03 06 15 00  	lb	a2, 1(a0)
80204500: 03 45 05 00  	lbu	a0, 0(a0)
80204504: 13 07 11 00  	addi	a4, sp, 1
80204508: 36 97        	add	a4, a4, a3
8020450a: a3 00 c7 00  	sb	a2, 1(a4)
8020450e: 23 00 a7 00  	sb	a0, 0(a4)
80204512: 13 05 11 00  	addi	a0, sp, 1
80204516: 33 07 d5 00  	add	a4, a0, a3
8020451a: 13 05 70 02  	li	a0, 39
8020451e: b3 07 d5 40  	sub	a5, a0, a3

0000000080204522 <.LBB580_12>:
80204522: 17 16 00 00  	auipc	a2, 1
80204526: 13 06 e6 40  	addi	a2, a2, 1038
8020452a: 42 85        	mv	a0, a6
8020452c: 81 46        	li	a3, 0
8020452e: 97 00 00 00  	auipc	ra, 0
80204532: e7 80 e0 82  	jalr	-2002(ra)
80204536: e2 70        	ld	ra, 56(sp)
80204538: 42 74        	ld	s0, 48(sp)
8020453a: a2 74        	ld	s1, 40(sp)
8020453c: 21 61        	addi	sp, sp, 64
8020453e: 82 80        	ret

0000000080204540 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80204540: 03 65 05 00  	lwu	a0, 0(a0)
80204544: 2e 86        	mv	a2, a1
80204546: 85 45        	li	a1, 1
80204548: 17 03 00 00  	auipc	t1, 0
8020454c: 67 00 23 e9  	jr	-366(t1)

0000000080204550 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80204550: 08 61        	ld	a0, 0(a0)
80204552: 2e 86        	mv	a2, a1
80204554: 85 45        	li	a1, 1
80204556: 17 03 00 00  	auipc	t1, 0
8020455a: 67 00 43 e8  	jr	-380(t1)

000000008020455e <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
8020455e: 90 65        	ld	a2, 8(a1)
80204560: 88 61        	ld	a0, 0(a1)
80204562: 1c 6e        	ld	a5, 24(a2)

0000000080204564 <.LBB612_1>:
80204564: 97 15 00 00  	auipc	a1, 1
80204568: 93 85 45 53  	addi	a1, a1, 1332
8020456c: 15 46        	li	a2, 5
8020456e: 82 87        	jr	a5

0000000080204570 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80204570: 10 65        	ld	a2, 8(a0)
80204572: 08 61        	ld	a0, 0(a0)
80204574: 1c 6e        	ld	a5, 24(a2)
80204576: 82 87        	jr	a5

0000000080204578 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80204578: 14 61        	ld	a3, 0(a0)
8020457a: 10 65        	ld	a2, 8(a0)
8020457c: 2e 85        	mv	a0, a1
8020457e: b6 85        	mv	a1, a3
80204580: 17 03 00 00  	auipc	t1, 0
80204584: 67 00 03 a5  	jr	-1456(t1)

0000000080204588 <memset>:
80204588: 17 03 00 00  	auipc	t1, 0
8020458c: 67 00 63 0b  	jr	182(t1)

0000000080204590 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE>:
80204590: bd 46        	li	a3, 15
80204592: 63 fa c6 06  	bgeu	a3, a2, 0x80204606 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x76>
80204596: bb 06 a0 40  	negw	a3, a0
8020459a: 13 f8 76 00  	andi	a6, a3, 7
8020459e: b3 03 05 01  	add	t2, a0, a6
802045a2: 63 0c 08 00  	beqz	a6, 0x802045ba <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x2a>
802045a6: aa 87        	mv	a5, a0
802045a8: ae 86        	mv	a3, a1
802045aa: 03 87 06 00  	lb	a4, 0(a3)
802045ae: 23 80 e7 00  	sb	a4, 0(a5)
802045b2: 85 07        	addi	a5, a5, 1
802045b4: 85 06        	addi	a3, a3, 1
802045b6: e3 ea 77 fe  	bltu	a5, t2, 0x802045aa <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x1a>
802045ba: b3 88 05 01  	add	a7, a1, a6
802045be: 33 08 06 41  	sub	a6, a2, a6
802045c2: 93 72 88 ff  	andi	t0, a6, -8
802045c6: 93 f5 78 00  	andi	a1, a7, 7
802045ca: b3 86 53 00  	add	a3, t2, t0
802045ce: 9d cd        	beqz	a1, 0x8020460c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x7c>
802045d0: 63 58 50 04  	blez	t0, 0x80204620 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
802045d4: 13 93 35 00  	slli	t1, a1, 3
802045d8: 13 f7 88 ff  	andi	a4, a7, -8
802045dc: 10 63        	ld	a2, 0(a4)
802045de: bb 05 60 40  	negw	a1, t1
802045e2: 13 fe 85 03  	andi	t3, a1, 56
802045e6: 93 07 87 00  	addi	a5, a4, 8
802045ea: 98 63        	ld	a4, 0(a5)
802045ec: 33 56 66 00  	srl	a2, a2, t1
802045f0: b3 15 c7 01  	sll	a1, a4, t3
802045f4: d1 8d        	or	a1, a1, a2
802045f6: 23 b0 b3 00  	sd	a1, 0(t2)
802045fa: a1 03        	addi	t2, t2, 8
802045fc: a1 07        	addi	a5, a5, 8
802045fe: 3a 86        	mv	a2, a4
80204600: e3 e5 d3 fe  	bltu	t2, a3, 0x802045ea <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x5a>
80204604: 31 a8        	j	0x80204620 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204606: aa 86        	mv	a3, a0
80204608: 0d e2        	bnez	a2, 0x8020462a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9a>
8020460a: 0d a8        	j	0x8020463c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020460c: 63 5a 50 00  	blez	t0, 0x80204620 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204610: c6 85        	mv	a1, a7
80204612: 90 61        	ld	a2, 0(a1)
80204614: 23 b0 c3 00  	sd	a2, 0(t2)
80204618: a1 03        	addi	t2, t2, 8
8020461a: a1 05        	addi	a1, a1, 8
8020461c: e3 eb d3 fe  	bltu	t2, a3, 0x80204612 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x82>
80204620: b3 85 58 00  	add	a1, a7, t0
80204624: 13 76 78 00  	andi	a2, a6, 7
80204628: 11 ca        	beqz	a2, 0x8020463c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020462a: 36 96        	add	a2, a2, a3
8020462c: 03 87 05 00  	lb	a4, 0(a1)
80204630: 23 80 e6 00  	sb	a4, 0(a3)
80204634: 85 06        	addi	a3, a3, 1
80204636: 85 05        	addi	a1, a1, 1
80204638: e3 ea c6 fe  	bltu	a3, a2, 0x8020462c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9c>
8020463c: 82 80        	ret

000000008020463e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
8020463e: bd 46        	li	a3, 15
80204640: 63 fa c6 04  	bgeu	a3, a2, 0x80204694 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80204644: bb 06 a0 40  	negw	a3, a0
80204648: 9d 8a        	andi	a3, a3, 7
8020464a: 33 07 d5 00  	add	a4, a0, a3
8020464e: 99 c6        	beqz	a3, 0x8020465c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
80204650: aa 87        	mv	a5, a0
80204652: 23 80 b7 00  	sb	a1, 0(a5)
80204656: 85 07        	addi	a5, a5, 1
80204658: e3 ed e7 fe  	bltu	a5, a4, 0x80204652 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
8020465c: b3 08 d6 40  	sub	a7, a2, a3
80204660: 93 f7 88 ff  	andi	a5, a7, -8
80204664: b3 06 f7 00  	add	a3, a4, a5
80204668: 63 52 f0 02  	blez	a5, 0x8020468c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
8020466c: 13 98 85 03  	slli	a6, a1, 56
80204670: b7 17 10 10  	lui	a5, 65793
80204674: 92 07        	slli	a5, a5, 4
80204676: 93 87 07 10  	addi	a5, a5, 256
8020467a: b3 37 f8 02  	mulhu	a5, a6, a5
8020467e: 13 96 07 02  	slli	a2, a5, 32
80204682: d1 8f        	or	a5, a5, a2
80204684: 1c e3        	sd	a5, 0(a4)
80204686: 21 07        	addi	a4, a4, 8
80204688: e3 6e d7 fe  	bltu	a4, a3, 0x80204684 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
8020468c: 13 f6 78 00  	andi	a2, a7, 7
80204690: 01 e6        	bnez	a2, 0x80204698 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80204692: 09 a8        	j	0x802046a4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80204694: aa 86        	mv	a3, a0
80204696: 19 c6        	beqz	a2, 0x802046a4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80204698: 36 96        	add	a2, a2, a3
8020469a: 23 80 b6 00  	sb	a1, 0(a3)
8020469e: 85 06        	addi	a3, a3, 1
802046a0: e3 ed c6 fe  	bltu	a3, a2, 0x8020469a <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
802046a4: 82 80        	ret

00000000802046a6 <memcpy>:
802046a6: 17 03 00 00  	auipc	t1, 0
802046aa: 67 00 a3 ee  	jr	-278(t1)
