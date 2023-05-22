
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 b1 01 00  	auipc	sp, 27
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 70 00 00  	auipc	ra, 7
8020000c: e7 80 e0 b0  	jalr	-1266(ra)
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
80201122: 01 00        	nop
80201124: 13 00 00 00  	nop
80201128: 13 00 00 00  	nop
8020112c: 13 00 00 00  	nop

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
80201170: 97 60 00 00  	auipc	ra, 6
80201174: e7 80 80 18  	jalr	392(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h74f976eb3eacc5b3E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202000: 13 01 01 81  	addi	sp, sp, -2032
80202004: 23 34 11 7e  	sd	ra, 2024(sp)
80202008: 23 30 81 7e  	sd	s0, 2016(sp)
8020200c: 23 3c 91 7c  	sd	s1, 2008(sp)
80202010: 23 38 21 7d  	sd	s2, 2000(sp)
80202014: 23 34 31 7d  	sd	s3, 1992(sp)
80202018: 23 30 41 7d  	sd	s4, 1984(sp)
8020201c: 23 3c 51 7b  	sd	s5, 1976(sp)
80202020: 23 38 61 7b  	sd	s6, 1968(sp)
80202024: 23 34 71 7b  	sd	s7, 1960(sp)
80202028: 23 30 81 7b  	sd	s8, 1952(sp)
8020202c: 13 04 01 7f  	addi	s0, sp, 2032
80202030: ad 65        	lui	a1, 11
80202032: 9b 85 05 48  	addiw	a1, a1, 1152
80202036: 33 01 b1 40  	sub	sp, sp, a1
8020203a: aa 8a        	mv	s5, a0
8020203c: 0f 00 30 03  	fence	rw, rw
80202040: 08 61        	ld	a0, 0(a0)
80202042: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202046: 65 ed        	bnez	a0, 0x8020213e <.Lpcrel_hi9+0xc2>
80202048: 85 49        	li	s3, 1
8020204a: 2f b5 0a 16  	lr.d.aqrl	a0, (s5)
8020204e: 65 e9        	bnez	a0, 0x8020213e <.Lpcrel_hi9+0xc2>
80202050: af b5 3a 1f  	sc.d.aqrl	a1, s3, (s5)
80202054: fd f9        	bnez	a1, 0x8020204a <_ZN4spin4once13Once$LT$T$GT$9call_once17h74f976eb3eacc5b3E+0x4a>
80202056: 31 65        	lui	a0, 12
80202058: 1b 05 05 c7  	addiw	a0, a0, -912
8020205c: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202060: 23 30 5a 01  	sd	s5, 0(s4)
80202064: 31 65        	lui	a0, 12
80202066: 1b 05 95 c5  	addiw	a0, a0, -935
8020206a: 33 09 a4 40  	sub	s2, s0, a0
8020206e: 13 0b 00 04  	li	s6, 64
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202072: 19 65        	lui	a0, 6
80202074: 1b 05 05 d0  	addiw	a0, a0, -768
80202078: b3 04 a4 40  	sub	s1, s0, a0

000000008020207c <.Lpcrel_hi9>:
8020207c: 17 75 00 00  	auipc	a0, 7
80202080: 93 0b 35 05  	addi	s7, a0, 83
80202084: 11 4c        	li	s8, 4
;         Self {
80202086: 13 06 80 0b  	li	a2, 184
8020208a: 4a 85        	mv	a0, s2
8020208c: 81 45        	li	a1, 0
8020208e: 97 60 00 00  	auipc	ra, 6
80202092: e7 80 c0 ef  	jalr	-260(ra)
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202096: 13 85 04 ea  	addi	a0, s1, -352
8020209a: 13 06 00 08  	li	a2, 128
8020209e: 81 45        	li	a1, 0
802020a0: 97 60 00 00  	auipc	ra, 6
802020a4: e7 80 a0 ee  	jalr	-278(ra)
802020a8: 23 b0 74 f3  	sd	s7, -224(s1)
802020ac: 23 b4 84 f3  	sd	s8, -216(s1)
802020b0: 23 b8 04 f2  	sd	zero, -208(s1)
802020b4: 23 8c 04 f2  	sb	zero, -200(s1)
802020b8: 13 85 94 f3  	addi	a0, s1, -199
802020bc: b1 65        	lui	a1, 12
802020be: 9b 85 05 c6  	addiw	a1, a1, -928
802020c2: b3 05 b4 40  	sub	a1, s0, a1
802020c6: 13 06 f0 0b  	li	a2, 191
802020ca: 97 60 00 00  	auipc	ra, 6
802020ce: e7 80 80 ec  	jalr	-312(ra)
802020d2: 23 bc 34 ff  	sd	s3, -8(s1)
802020d6: 23 b0 04 00  	sd	zero, 0(s1)
802020da: 23 b4 04 00  	sd	zero, 8(s1)
802020de: 23 98 04 00  	sh	zero, 16(s1)
802020e2: 7d 1b        	addi	s6, s6, -1
802020e4: 93 84 84 17  	addi	s1, s1, 376
802020e8: e3 1f 0b f8  	bnez	s6, 0x80202086 <.Lpcrel_hi9+0xa>
802020ec: 19 65        	lui	a0, 6
802020ee: 1b 09 05 e0  	addiw	s2, a0, -512
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
802020f2: 31 65        	lui	a0, 12
802020f4: 1b 05 05 c6  	addiw	a0, a0, -928
802020f8: 33 05 a4 40  	sub	a0, s0, a0
802020fc: 99 65        	lui	a1, 6
802020fe: 9b 85 05 e6  	addiw	a1, a1, -416
80202102: b3 05 b4 40  	sub	a1, s0, a1
80202106: 4a 86        	mv	a2, s2
80202108: 97 60 00 00  	auipc	ra, 6
8020210c: e7 80 a0 e8  	jalr	-374(ra)
80202110: 03 b5 8a 00  	ld	a0, 8(s5)
80202114: 59 c1        	beqz	a0, 0x8020219a <.Lpcrel_hi9+0x11e>
80202116: 93 84 0a 17  	addi	s1, s5, 368
8020211a: 93 09 00 04  	li	s3, 64
8020211e: 31 a0        	j	0x8020212a <.Lpcrel_hi9+0xae>
80202120: fd 19        	addi	s3, s3, -1
80202122: 93 84 84 17  	addi	s1, s1, 376
80202126: 63 8a 09 06  	beqz	s3, 0x8020219a <.Lpcrel_hi9+0x11e>
8020212a: 8c 60        	ld	a1, 0(s1)
8020212c: f5 d9        	beqz	a1, 0x80202120 <.Lpcrel_hi9+0xa4>
8020212e: 03 b5 84 ff  	ld	a0, -8(s1)
80202132: 05 46        	li	a2, 1
80202134: 97 50 00 00  	auipc	ra, 5
80202138: e7 80 40 1d  	jalr	468(ra)
8020213c: d5 b7        	j	0x80202120 <.Lpcrel_hi9+0xa4>
8020213e: 85 45        	li	a1, 1
;             match status {
80202140: 63 1c b5 00  	bne	a0, a1, 0x80202158 <.Lpcrel_hi9+0xdc>
80202144: 0f 00 00 01  	fence	w, 0
80202148: 0f 00 30 03  	fence	rw, rw
8020214c: 03 b5 0a 00  	ld	a0, 0(s5)
80202150: 0f 00 30 02  	fence	r, rw
;             match status {
80202154: e3 08 b5 fe  	beq	a0, a1, 0x80202144 <.Lpcrel_hi9+0xc8>
80202158: 89 45        	li	a1, 2
;             match status {
8020215a: 63 11 b5 08  	bne	a0, a1, 0x802021dc <.Lpcrel_hi9+0x160>
8020215e: 93 89 0a 01  	addi	s3, s5, 16
;     }
80202162: 4e 85        	mv	a0, s3
80202164: ad 65        	lui	a1, 11
80202166: 9b 85 05 48  	addiw	a1, a1, 1152
8020216a: 2e 91        	add	sp, sp, a1
8020216c: 83 30 81 7e  	ld	ra, 2024(sp)
80202170: 03 34 01 7e  	ld	s0, 2016(sp)
80202174: 83 34 81 7d  	ld	s1, 2008(sp)
80202178: 03 39 01 7d  	ld	s2, 2000(sp)
8020217c: 83 39 81 7c  	ld	s3, 1992(sp)
80202180: 03 3a 01 7c  	ld	s4, 1984(sp)
80202184: 83 3a 81 7b  	ld	s5, 1976(sp)
80202188: 03 3b 01 7b  	ld	s6, 1968(sp)
8020218c: 83 3b 81 7a  	ld	s7, 1960(sp)
80202190: 03 3c 01 7a  	ld	s8, 1952(sp)
80202194: 13 01 01 7f  	addi	sp, sp, 2032
80202198: 82 80        	ret
8020219a: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
8020219c: 23 b4 aa 00  	sd	a0, 8(s5)
802021a0: 93 89 0a 01  	addi	s3, s5, 16
802021a4: 31 65        	lui	a0, 12
802021a6: 1b 05 05 c6  	addiw	a0, a0, -928
802021aa: b3 05 a4 40  	sub	a1, s0, a0
802021ae: 4e 85        	mv	a0, s3
802021b0: 4a 86        	mv	a2, s2
802021b2: 97 60 00 00  	auipc	ra, 6
802021b6: e7 80 00 de  	jalr	-544(ra)
;                 finish.panicked = false;
802021ba: 23 04 0a 00  	sb	zero, 8(s4)
802021be: 0f 00 10 03  	fence	rw, w
802021c2: 09 45        	li	a0, 2
802021c4: 23 b0 aa 00  	sd	a0, 0(s5)
802021c8: 31 65        	lui	a0, 12
802021ca: 1b 05 05 c7  	addiw	a0, a0, -912
802021ce: 33 05 a4 40  	sub	a0, s0, a0
802021d2: 97 50 00 00  	auipc	ra, 5
802021d6: e7 80 e0 13  	jalr	318(ra)
802021da: 61 b7        	j	0x80202162 <.Lpcrel_hi9+0xe6>
;             match status {
802021dc: 05 e1        	bnez	a0, 0x802021fc <.Lpcrel_hi12>

00000000802021de <.Lpcrel_hi10>:
;                 INCOMPLETE => unreachable!(),
802021de: 17 75 00 00  	auipc	a0, 7
802021e2: 13 05 a5 ea  	addi	a0, a0, -342

00000000802021e6 <.Lpcrel_hi11>:
802021e6: 97 75 00 00  	auipc	a1, 7
802021ea: 13 86 a5 ec  	addi	a2, a1, -310
802021ee: 93 05 80 02  	li	a1, 40
802021f2: 97 50 00 00  	auipc	ra, 5
802021f6: e7 80 c0 35  	jalr	860(ra)
802021fa: 00 00        	unimp	

00000000802021fc <.Lpcrel_hi12>:
;                 PANICKED => panic!("Once has panicked"),
802021fc: 17 75 00 00  	auipc	a0, 7
80202200: 13 05 45 e0  	addi	a0, a0, -508

0000000080202204 <.Lpcrel_hi13>:
80202204: 97 75 00 00  	auipc	a1, 7
80202208: 13 86 c5 e6  	addi	a2, a1, -404
8020220c: c5 45        	li	a1, 17
8020220e: 97 50 00 00  	auipc	ra, 5
80202212: e7 80 00 34  	jalr	832(ra)
80202216: 00 00        	unimp	

0000000080202218 <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202218: 13 01 01 81  	addi	sp, sp, -2032
8020221c: 23 34 11 7e  	sd	ra, 2024(sp)
80202220: 23 30 81 7e  	sd	s0, 2016(sp)
80202224: 23 3c 91 7c  	sd	s1, 2008(sp)
80202228: 23 38 21 7d  	sd	s2, 2000(sp)
8020222c: 23 34 31 7d  	sd	s3, 1992(sp)
80202230: 23 30 41 7d  	sd	s4, 1984(sp)
80202234: 23 3c 51 7b  	sd	s5, 1976(sp)
80202238: 23 38 61 7b  	sd	s6, 1968(sp)
8020223c: 13 04 01 7f  	addi	s0, sp, 2032
80202240: 91 65        	lui	a1, 4
80202242: 9b 85 05 c7  	addiw	a1, a1, -912
80202246: 33 01 b1 40  	sub	sp, sp, a1
8020224a: aa 84        	mv	s1, a0
8020224c: 0f 00 30 03  	fence	rw, rw
80202250: 08 61        	ld	a0, 0(a0)
80202252: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202256: 63 1b 05 5a  	bnez	a0, 0x8020280c <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x5f4>
8020225a: 05 49        	li	s2, 1
8020225c: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80202260: 63 16 05 5a  	bnez	a0, 0x8020280c <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x5f4>
80202264: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
80202268: f5 f9        	bnez	a1, 0x8020225c <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x44>
8020226a: 11 65        	lui	a0, 4
8020226c: 1b 05 05 46  	addiw	a0, a0, 1120
80202270: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202274: 23 30 9a 00  	sd	s1, 0(s4)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80202278: 09 65        	lui	a0, 2
8020227a: 1b 05 05 25  	addiw	a0, a0, 592
8020227e: 33 05 a4 40  	sub	a0, s0, a0
80202282: 13 06 10 08  	li	a2, 129
80202286: 89 65        	lui	a1, 2
80202288: 9b 85 05 25  	addiw	a1, a1, 592
8020228c: b3 09 b4 40  	sub	s3, s0, a1
80202290: 81 45        	li	a1, 0
80202292: 97 60 00 00  	auipc	ra, 6
80202296: e7 80 80 cf  	jalr	-776(ra)
8020229a: 09 65        	lui	a0, 2
8020229c: 1b 05 85 1c  	addiw	a0, a0, 456
802022a0: 33 05 a4 40  	sub	a0, s0, a0
802022a4: 13 06 10 08  	li	a2, 129
802022a8: 81 45        	li	a1, 0
802022aa: 97 60 00 00  	auipc	ra, 6
802022ae: e7 80 00 ce  	jalr	-800(ra)
802022b2: 09 65        	lui	a0, 2
802022b4: 1b 05 05 14  	addiw	a0, a0, 320
802022b8: 33 05 a4 40  	sub	a0, s0, a0
802022bc: 13 06 10 08  	li	a2, 129
802022c0: 81 45        	li	a1, 0
802022c2: 97 60 00 00  	auipc	ra, 6
802022c6: e7 80 80 cc  	jalr	-824(ra)
802022ca: 09 65        	lui	a0, 2
802022cc: 1b 05 85 0b  	addiw	a0, a0, 184
802022d0: 33 05 a4 40  	sub	a0, s0, a0
802022d4: 13 06 10 08  	li	a2, 129
802022d8: 81 45        	li	a1, 0
802022da: 97 60 00 00  	auipc	ra, 6
802022de: e7 80 00 cb  	jalr	-848(ra)
802022e2: 09 65        	lui	a0, 2
802022e4: 1b 05 05 03  	addiw	a0, a0, 48
802022e8: 33 05 a4 40  	sub	a0, s0, a0
802022ec: 13 06 10 08  	li	a2, 129
802022f0: 81 45        	li	a1, 0
802022f2: 97 60 00 00  	auipc	ra, 6
802022f6: e7 80 80 c9  	jalr	-872(ra)
802022fa: 09 65        	lui	a0, 2
802022fc: 1b 05 85 fa  	addiw	a0, a0, -88
80202300: 33 05 a4 40  	sub	a0, s0, a0
80202304: 13 06 10 08  	li	a2, 129
80202308: 81 45        	li	a1, 0
8020230a: 97 60 00 00  	auipc	ra, 6
8020230e: e7 80 00 c8  	jalr	-896(ra)
80202312: 09 65        	lui	a0, 2
80202314: 1b 05 05 f2  	addiw	a0, a0, -224
80202318: 33 05 a4 40  	sub	a0, s0, a0
8020231c: 13 06 10 08  	li	a2, 129
80202320: 81 45        	li	a1, 0
80202322: 97 60 00 00  	auipc	ra, 6
80202326: e7 80 80 c6  	jalr	-920(ra)
8020232a: 09 65        	lui	a0, 2
8020232c: 1b 05 85 e9  	addiw	a0, a0, -360
80202330: 33 05 a4 40  	sub	a0, s0, a0
80202334: 13 06 10 08  	li	a2, 129
80202338: 81 45        	li	a1, 0
8020233a: 97 60 00 00  	auipc	ra, 6
8020233e: e7 80 00 c5  	jalr	-944(ra)
80202342: 09 65        	lui	a0, 2
80202344: 1b 05 05 e1  	addiw	a0, a0, -496
80202348: 33 05 a4 40  	sub	a0, s0, a0
8020234c: 13 06 10 08  	li	a2, 129
80202350: 81 45        	li	a1, 0
80202352: 97 60 00 00  	auipc	ra, 6
80202356: e7 80 80 c3  	jalr	-968(ra)
8020235a: 09 65        	lui	a0, 2
8020235c: 1b 05 85 d8  	addiw	a0, a0, -632
80202360: 33 05 a4 40  	sub	a0, s0, a0
80202364: 13 06 10 08  	li	a2, 129
80202368: 81 45        	li	a1, 0
8020236a: 97 60 00 00  	auipc	ra, 6
8020236e: e7 80 00 c2  	jalr	-992(ra)
80202372: 75 45        	li	a0, 29
80202374: 22 05        	slli	a0, a0, 8
80202376: 33 05 a4 40  	sub	a0, s0, a0
8020237a: 13 06 10 08  	li	a2, 129
8020237e: 81 45        	li	a1, 0
80202380: 97 60 00 00  	auipc	ra, 6
80202384: e7 80 a0 c0  	jalr	-1014(ra)
80202388: 09 65        	lui	a0, 2
8020238a: 1b 05 85 c7  	addiw	a0, a0, -904
8020238e: 33 05 a4 40  	sub	a0, s0, a0
80202392: 13 06 10 08  	li	a2, 129
80202396: 81 45        	li	a1, 0
80202398: 97 60 00 00  	auipc	ra, 6
8020239c: e7 80 20 bf  	jalr	-1038(ra)
802023a0: 09 65        	lui	a0, 2
802023a2: 1b 05 05 bf  	addiw	a0, a0, -1040
802023a6: 33 05 a4 40  	sub	a0, s0, a0
802023aa: 13 06 10 08  	li	a2, 129
802023ae: 81 45        	li	a1, 0
802023b0: 97 60 00 00  	auipc	ra, 6
802023b4: e7 80 a0 bd  	jalr	-1062(ra)
802023b8: 09 65        	lui	a0, 2
802023ba: 1b 05 85 b6  	addiw	a0, a0, -1176
802023be: 33 05 a4 40  	sub	a0, s0, a0
802023c2: 13 06 10 08  	li	a2, 129
802023c6: 81 45        	li	a1, 0
802023c8: 97 60 00 00  	auipc	ra, 6
802023cc: e7 80 20 bc  	jalr	-1086(ra)
802023d0: 09 65        	lui	a0, 2
802023d2: 1b 05 05 ae  	addiw	a0, a0, -1312
802023d6: 33 05 a4 40  	sub	a0, s0, a0
802023da: 13 06 10 08  	li	a2, 129
802023de: 81 45        	li	a1, 0
802023e0: 97 60 00 00  	auipc	ra, 6
802023e4: e7 80 a0 ba  	jalr	-1110(ra)
802023e8: 09 65        	lui	a0, 2
802023ea: 1b 05 85 a5  	addiw	a0, a0, -1448
802023ee: 33 05 a4 40  	sub	a0, s0, a0
802023f2: 13 06 10 08  	li	a2, 129
802023f6: 81 45        	li	a1, 0
802023f8: 97 60 00 00  	auipc	ra, 6
802023fc: e7 80 20 b9  	jalr	-1134(ra)
80202400: 93 8a f9 7f  	addi	s5, s3, 2047
80202404: 13 85 1a 08  	addi	a0, s5, 129
80202408: 13 06 10 08  	li	a2, 129
8020240c: 81 45        	li	a1, 0
8020240e: 97 60 00 00  	auipc	ra, 6
80202412: e7 80 c0 b7  	jalr	-1156(ra)
80202416: 13 85 9a 10  	addi	a0, s5, 265
8020241a: 13 06 10 08  	li	a2, 129
8020241e: 81 45        	li	a1, 0
80202420: 97 60 00 00  	auipc	ra, 6
80202424: e7 80 a0 b6  	jalr	-1174(ra)
80202428: 13 85 1a 19  	addi	a0, s5, 401
8020242c: 13 06 10 08  	li	a2, 129
80202430: 81 45        	li	a1, 0
80202432: 97 60 00 00  	auipc	ra, 6
80202436: e7 80 80 b5  	jalr	-1192(ra)
8020243a: 13 85 9a 21  	addi	a0, s5, 537
8020243e: 13 06 10 08  	li	a2, 129
80202442: 81 45        	li	a1, 0
80202444: 97 60 00 00  	auipc	ra, 6
80202448: e7 80 60 b4  	jalr	-1210(ra)
8020244c: 13 85 1a 2a  	addi	a0, s5, 673
80202450: 13 06 10 08  	li	a2, 129
80202454: 81 45        	li	a1, 0
80202456: 97 60 00 00  	auipc	ra, 6
8020245a: e7 80 40 b3  	jalr	-1228(ra)
8020245e: 13 85 9a 32  	addi	a0, s5, 809
80202462: 13 06 10 08  	li	a2, 129
80202466: 81 45        	li	a1, 0
80202468: 97 60 00 00  	auipc	ra, 6
8020246c: e7 80 20 b2  	jalr	-1246(ra)
80202470: 13 85 1a 3b  	addi	a0, s5, 945
80202474: 13 06 10 08  	li	a2, 129
80202478: 81 45        	li	a1, 0
8020247a: 97 60 00 00  	auipc	ra, 6
8020247e: e7 80 00 b1  	jalr	-1264(ra)
80202482: 13 85 9a 43  	addi	a0, s5, 1081
80202486: 13 06 10 08  	li	a2, 129
8020248a: 81 45        	li	a1, 0
8020248c: 97 60 00 00  	auipc	ra, 6
80202490: e7 80 e0 af  	jalr	-1282(ra)
80202494: 13 85 1a 4c  	addi	a0, s5, 1217
80202498: 13 06 10 08  	li	a2, 129
8020249c: 81 45        	li	a1, 0
8020249e: 97 60 00 00  	auipc	ra, 6
802024a2: e7 80 c0 ae  	jalr	-1300(ra)
802024a6: 13 85 9a 54  	addi	a0, s5, 1353
802024aa: 13 06 10 08  	li	a2, 129
802024ae: 81 45        	li	a1, 0
802024b0: 97 60 00 00  	auipc	ra, 6
802024b4: e7 80 a0 ad  	jalr	-1318(ra)
802024b8: 13 85 1a 5d  	addi	a0, s5, 1489
802024bc: 13 06 10 08  	li	a2, 129
802024c0: 81 45        	li	a1, 0
802024c2: 97 60 00 00  	auipc	ra, 6
802024c6: e7 80 80 ac  	jalr	-1336(ra)
802024ca: 13 85 9a 65  	addi	a0, s5, 1625
802024ce: 13 06 10 08  	li	a2, 129
802024d2: 81 45        	li	a1, 0
802024d4: 97 60 00 00  	auipc	ra, 6
802024d8: e7 80 60 ab  	jalr	-1354(ra)
802024dc: 13 85 1a 6e  	addi	a0, s5, 1761
802024e0: 13 06 10 08  	li	a2, 129
802024e4: 81 45        	li	a1, 0
802024e6: 97 60 00 00  	auipc	ra, 6
802024ea: e7 80 40 aa  	jalr	-1372(ra)
802024ee: 13 85 9a 76  	addi	a0, s5, 1897
802024f2: 13 06 10 08  	li	a2, 129
802024f6: 81 45        	li	a1, 0
802024f8: 97 60 00 00  	auipc	ra, 6
802024fc: e7 80 20 a9  	jalr	-1390(ra)
80202500: 13 85 1a 7f  	addi	a0, s5, 2033
80202504: 13 06 10 08  	li	a2, 129
80202508: 81 45        	li	a1, 0
8020250a: 97 60 00 00  	auipc	ra, 6
8020250e: e7 80 00 a8  	jalr	-1408(ra)
80202512: 05 6b        	lui	s6, 1
80202514: 1b 05 8b 07  	addiw	a0, s6, 120
80202518: 4e 95        	add	a0, a0, s3
8020251a: 13 06 10 08  	li	a2, 129
8020251e: 81 45        	li	a1, 0
80202520: 97 60 00 00  	auipc	ra, 6
80202524: e7 80 a0 a6  	jalr	-1430(ra)
80202528: c5 4a        	li	s5, 17
8020252a: 13 95 8a 00  	slli	a0, s5, 8
8020252e: 4e 95        	add	a0, a0, s3
80202530: 13 06 10 08  	li	a2, 129
80202534: 81 45        	li	a1, 0
80202536: 97 60 00 00  	auipc	ra, 6
8020253a: e7 80 40 a5  	jalr	-1452(ra)
8020253e: 1b 05 8b 18  	addiw	a0, s6, 392
80202542: 4e 95        	add	a0, a0, s3
80202544: 13 06 10 08  	li	a2, 129
80202548: 81 45        	li	a1, 0
8020254a: 97 60 00 00  	auipc	ra, 6
8020254e: e7 80 00 a4  	jalr	-1472(ra)
80202552: 1b 05 0b 21  	addiw	a0, s6, 528
80202556: 4e 95        	add	a0, a0, s3
80202558: 13 06 10 08  	li	a2, 129
8020255c: 81 45        	li	a1, 0
8020255e: 97 60 00 00  	auipc	ra, 6
80202562: e7 80 c0 a2  	jalr	-1492(ra)
80202566: 1b 05 8b 29  	addiw	a0, s6, 664
8020256a: 4e 95        	add	a0, a0, s3
8020256c: 13 06 10 08  	li	a2, 129
80202570: 81 45        	li	a1, 0
80202572: 97 60 00 00  	auipc	ra, 6
80202576: e7 80 80 a1  	jalr	-1512(ra)
8020257a: 1b 05 0b 32  	addiw	a0, s6, 800
8020257e: 4e 95        	add	a0, a0, s3
80202580: 13 06 10 08  	li	a2, 129
80202584: 81 45        	li	a1, 0
80202586: 97 60 00 00  	auipc	ra, 6
8020258a: e7 80 40 a0  	jalr	-1532(ra)
8020258e: 1b 05 8b 3a  	addiw	a0, s6, 936
80202592: 4e 95        	add	a0, a0, s3
80202594: 13 06 10 08  	li	a2, 129
80202598: 81 45        	li	a1, 0
8020259a: 97 60 00 00  	auipc	ra, 6
8020259e: e7 80 00 9f  	jalr	-1552(ra)
802025a2: 1b 05 0b 43  	addiw	a0, s6, 1072
802025a6: 4e 95        	add	a0, a0, s3
802025a8: 13 06 10 08  	li	a2, 129
802025ac: 81 45        	li	a1, 0
802025ae: 97 60 00 00  	auipc	ra, 6
802025b2: e7 80 c0 9d  	jalr	-1572(ra)
802025b6: 1b 05 8b 4b  	addiw	a0, s6, 1208
802025ba: 4e 95        	add	a0, a0, s3
802025bc: 13 06 10 08  	li	a2, 129
802025c0: 81 45        	li	a1, 0
802025c2: 97 60 00 00  	auipc	ra, 6
802025c6: e7 80 80 9c  	jalr	-1592(ra)
802025ca: 1b 05 0b 54  	addiw	a0, s6, 1344
802025ce: 4e 95        	add	a0, a0, s3
802025d0: 13 06 10 08  	li	a2, 129
802025d4: 81 45        	li	a1, 0
802025d6: 97 60 00 00  	auipc	ra, 6
802025da: e7 80 40 9b  	jalr	-1612(ra)
802025de: 1b 05 8b 5c  	addiw	a0, s6, 1480
802025e2: 4e 95        	add	a0, a0, s3
802025e4: 13 06 10 08  	li	a2, 129
802025e8: 81 45        	li	a1, 0
802025ea: 97 60 00 00  	auipc	ra, 6
802025ee: e7 80 00 9a  	jalr	-1632(ra)
802025f2: 1b 05 0b 65  	addiw	a0, s6, 1616
802025f6: 4e 95        	add	a0, a0, s3
802025f8: 13 06 10 08  	li	a2, 129
802025fc: 81 45        	li	a1, 0
802025fe: 97 60 00 00  	auipc	ra, 6
80202602: e7 80 c0 98  	jalr	-1652(ra)
80202606: 1b 05 8b 6d  	addiw	a0, s6, 1752
8020260a: 4e 95        	add	a0, a0, s3
8020260c: 13 06 10 08  	li	a2, 129
80202610: 81 45        	li	a1, 0
80202612: 97 60 00 00  	auipc	ra, 6
80202616: e7 80 80 97  	jalr	-1672(ra)
8020261a: 1b 05 0b 76  	addiw	a0, s6, 1888
8020261e: 4e 95        	add	a0, a0, s3
80202620: 13 06 10 08  	li	a2, 129
80202624: 81 45        	li	a1, 0
80202626: 97 60 00 00  	auipc	ra, 6
8020262a: e7 80 40 96  	jalr	-1692(ra)
8020262e: 1b 05 8b 7e  	addiw	a0, s6, 2024
80202632: 4e 95        	add	a0, a0, s3
80202634: 13 06 10 08  	li	a2, 129
80202638: 81 45        	li	a1, 0
8020263a: 97 60 00 00  	auipc	ra, 6
8020263e: e7 80 00 95  	jalr	-1712(ra)
80202642: 09 6b        	lui	s6, 2
80202644: 1b 05 0b 87  	addiw	a0, s6, -1936
80202648: 4e 95        	add	a0, a0, s3
8020264a: 13 06 10 08  	li	a2, 129
8020264e: 81 45        	li	a1, 0
80202650: 97 60 00 00  	auipc	ra, 6
80202654: e7 80 a0 93  	jalr	-1734(ra)
80202658: 1b 05 8b 8f  	addiw	a0, s6, -1800
8020265c: 4e 95        	add	a0, a0, s3
8020265e: 13 06 10 08  	li	a2, 129
80202662: 81 45        	li	a1, 0
80202664: 97 60 00 00  	auipc	ra, 6
80202668: e7 80 60 92  	jalr	-1754(ra)
8020266c: 1b 05 0b 98  	addiw	a0, s6, -1664
80202670: 4e 95        	add	a0, a0, s3
80202672: 13 06 10 08  	li	a2, 129
80202676: 81 45        	li	a1, 0
80202678: 97 60 00 00  	auipc	ra, 6
8020267c: e7 80 20 91  	jalr	-1774(ra)
80202680: 1b 05 8b a0  	addiw	a0, s6, -1528
80202684: 4e 95        	add	a0, a0, s3
80202686: 13 06 10 08  	li	a2, 129
8020268a: 81 45        	li	a1, 0
8020268c: 97 60 00 00  	auipc	ra, 6
80202690: e7 80 e0 8f  	jalr	-1794(ra)
80202694: 1b 05 0b a9  	addiw	a0, s6, -1392
80202698: 4e 95        	add	a0, a0, s3
8020269a: 13 06 10 08  	li	a2, 129
8020269e: 81 45        	li	a1, 0
802026a0: 97 60 00 00  	auipc	ra, 6
802026a4: e7 80 a0 8e  	jalr	-1814(ra)
802026a8: 1b 05 8b b1  	addiw	a0, s6, -1256
802026ac: 4e 95        	add	a0, a0, s3
802026ae: 13 06 10 08  	li	a2, 129
802026b2: 81 45        	li	a1, 0
802026b4: 97 60 00 00  	auipc	ra, 6
802026b8: e7 80 60 8d  	jalr	-1834(ra)
802026bc: 1b 05 0b ba  	addiw	a0, s6, -1120
802026c0: 4e 95        	add	a0, a0, s3
802026c2: 13 06 10 08  	li	a2, 129
802026c6: 81 45        	li	a1, 0
802026c8: 97 60 00 00  	auipc	ra, 6
802026cc: e7 80 20 8c  	jalr	-1854(ra)
802026d0: 1b 05 8b c2  	addiw	a0, s6, -984
802026d4: 4e 95        	add	a0, a0, s3
802026d6: 13 06 10 08  	li	a2, 129
802026da: 81 45        	li	a1, 0
802026dc: 97 60 00 00  	auipc	ra, 6
802026e0: e7 80 e0 8a  	jalr	-1874(ra)
802026e4: 1b 05 0b cb  	addiw	a0, s6, -848
802026e8: 4e 95        	add	a0, a0, s3
802026ea: 13 06 10 08  	li	a2, 129
802026ee: 81 45        	li	a1, 0
802026f0: 97 60 00 00  	auipc	ra, 6
802026f4: e7 80 a0 89  	jalr	-1894(ra)
802026f8: 1b 05 8b d3  	addiw	a0, s6, -712
802026fc: 4e 95        	add	a0, a0, s3
802026fe: 13 06 10 08  	li	a2, 129
80202702: 81 45        	li	a1, 0
80202704: 97 60 00 00  	auipc	ra, 6
80202708: e7 80 60 88  	jalr	-1914(ra)
8020270c: 1b 05 0b dc  	addiw	a0, s6, -576
80202710: 4e 95        	add	a0, a0, s3
80202712: 13 06 10 08  	li	a2, 129
80202716: 81 45        	li	a1, 0
80202718: 97 60 00 00  	auipc	ra, 6
8020271c: e7 80 20 87  	jalr	-1934(ra)
80202720: 1b 05 8b e4  	addiw	a0, s6, -440
80202724: 4e 95        	add	a0, a0, s3
80202726: 13 06 10 08  	li	a2, 129
8020272a: 81 45        	li	a1, 0
8020272c: 97 60 00 00  	auipc	ra, 6
80202730: e7 80 e0 85  	jalr	-1954(ra)
80202734: 1b 05 0b ed  	addiw	a0, s6, -304
80202738: 4e 95        	add	a0, a0, s3
8020273a: 13 06 10 08  	li	a2, 129
8020273e: 81 45        	li	a1, 0
80202740: 97 60 00 00  	auipc	ra, 6
80202744: e7 80 a0 84  	jalr	-1974(ra)
80202748: 1b 05 8b f5  	addiw	a0, s6, -168
8020274c: 4e 95        	add	a0, a0, s3
8020274e: 13 06 10 08  	li	a2, 129
80202752: 81 45        	li	a1, 0
80202754: 97 60 00 00  	auipc	ra, 6
80202758: e7 80 60 83  	jalr	-1994(ra)
8020275c: 1b 05 0b fe  	addiw	a0, s6, -32
80202760: 4e 95        	add	a0, a0, s3
80202762: 13 06 10 08  	li	a2, 129
80202766: 81 45        	li	a1, 0
80202768: 97 60 00 00  	auipc	ra, 6
8020276c: e7 80 20 82  	jalr	-2014(ra)
80202770: 1b 05 8b 06  	addiw	a0, s6, 104
80202774: 4e 95        	add	a0, a0, s3
80202776: 13 06 10 08  	li	a2, 129
8020277a: 81 45        	li	a1, 0
8020277c: 97 60 00 00  	auipc	ra, 6
80202780: e7 80 e0 80  	jalr	-2034(ra)
80202784: 1b 05 0b 0f  	addiw	a0, s6, 240
80202788: 4e 95        	add	a0, a0, s3
8020278a: 13 06 10 08  	li	a2, 129
8020278e: 81 45        	li	a1, 0
80202790: 97 50 00 00  	auipc	ra, 5
80202794: e7 80 a0 7f  	jalr	2042(ra)
80202798: 1b 05 8b 17  	addiw	a0, s6, 376
8020279c: 4e 95        	add	a0, a0, s3
8020279e: 13 06 10 08  	li	a2, 129
802027a2: 81 45        	li	a1, 0
802027a4: 97 50 00 00  	auipc	ra, 5
802027a8: e7 80 60 7e  	jalr	2022(ra)
802027ac: 93 99 9a 00  	slli	s3, s5, 9
802027b0: 11 65        	lui	a0, 4
802027b2: 1b 05 05 45  	addiw	a0, a0, 1104
802027b6: 33 05 a4 40  	sub	a0, s0, a0
802027ba: 89 65        	lui	a1, 2
802027bc: 9b 85 05 25  	addiw	a1, a1, 592
802027c0: b3 05 b4 40  	sub	a1, s0, a1
802027c4: 4e 86        	mv	a2, s3
802027c6: 97 50 00 00  	auipc	ra, 5
802027ca: e7 80 c0 7c  	jalr	1996(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802027ce: 23 b4 24 01  	sd	s2, 8(s1)
802027d2: 13 89 04 01  	addi	s2, s1, 16
802027d6: 11 65        	lui	a0, 4
802027d8: 1b 05 05 45  	addiw	a0, a0, 1104
802027dc: b3 05 a4 40  	sub	a1, s0, a0
802027e0: 4a 85        	mv	a0, s2
802027e2: 4e 86        	mv	a2, s3
802027e4: 97 50 00 00  	auipc	ra, 5
802027e8: e7 80 e0 7a  	jalr	1966(ra)
;                 finish.panicked = false;
802027ec: 23 04 0a 00  	sb	zero, 8(s4)
802027f0: 0f 00 10 03  	fence	rw, w
802027f4: 09 45        	li	a0, 2
802027f6: 88 e0        	sd	a0, 0(s1)
802027f8: 11 65        	lui	a0, 4
802027fa: 1b 05 05 46  	addiw	a0, a0, 1120
802027fe: 33 05 a4 40  	sub	a0, s0, a0
80202802: 97 50 00 00  	auipc	ra, 5
80202806: e7 80 e0 b0  	jalr	-1266(ra)
8020280a: 15 a0        	j	0x8020282e <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x616>
8020280c: 85 45        	li	a1, 1
;             match status {
8020280e: 63 1b b5 00  	bne	a0, a1, 0x80202824 <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x60c>
80202812: 0f 00 00 01  	fence	w, 0
80202816: 0f 00 30 03  	fence	rw, rw
8020281a: 88 60        	ld	a0, 0(s1)
8020281c: 0f 00 30 02  	fence	r, rw
;             match status {
80202820: e3 09 b5 fe  	beq	a0, a1, 0x80202812 <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x5fa>
80202824: 89 45        	li	a1, 2
;             match status {
80202826: 63 1c b5 02  	bne	a0, a1, 0x8020285e <_ZN4spin4once13Once$LT$T$GT$9call_once17hfcf80d64b03e77c7E+0x646>
8020282a: 13 89 04 01  	addi	s2, s1, 16
;     }
8020282e: 4a 85        	mv	a0, s2
80202830: 91 65        	lui	a1, 4
80202832: 9b 85 05 c7  	addiw	a1, a1, -912
80202836: 2e 91        	add	sp, sp, a1
80202838: 83 30 81 7e  	ld	ra, 2024(sp)
8020283c: 03 34 01 7e  	ld	s0, 2016(sp)
80202840: 83 34 81 7d  	ld	s1, 2008(sp)
80202844: 03 39 01 7d  	ld	s2, 2000(sp)
80202848: 83 39 81 7c  	ld	s3, 1992(sp)
8020284c: 03 3a 01 7c  	ld	s4, 1984(sp)
80202850: 83 3a 81 7b  	ld	s5, 1976(sp)
80202854: 03 3b 01 7b  	ld	s6, 1968(sp)
80202858: 13 01 01 7f  	addi	sp, sp, 2032
8020285c: 82 80        	ret
;             match status {
8020285e: 05 e1        	bnez	a0, 0x8020287e <.Lpcrel_hi25>

0000000080202860 <.Lpcrel_hi23>:
;                 INCOMPLETE => unreachable!(),
80202860: 17 75 00 00  	auipc	a0, 7
80202864: 13 05 85 82  	addi	a0, a0, -2008

0000000080202868 <.Lpcrel_hi24>:
80202868: 97 75 00 00  	auipc	a1, 7
8020286c: 13 86 85 84  	addi	a2, a1, -1976
80202870: 93 05 80 02  	li	a1, 40
80202874: 97 50 00 00  	auipc	ra, 5
80202878: e7 80 a0 cd  	jalr	-806(ra)
8020287c: 00 00        	unimp	

000000008020287e <.Lpcrel_hi25>:
;                 PANICKED => panic!("Once has panicked"),
8020287e: 17 65 00 00  	auipc	a0, 6
80202882: 13 05 25 78  	addi	a0, a0, 1922

0000000080202886 <.Lpcrel_hi26>:
80202886: 97 65 00 00  	auipc	a1, 6
8020288a: 13 86 a5 7e  	addi	a2, a1, 2026
8020288e: c5 45        	li	a1, 17
80202890: 97 50 00 00  	auipc	ra, 5
80202894: e7 80 e0 cb  	jalr	-834(ra)
80202898: 00 00        	unimp	

000000008020289a <_ZN6kernel7process4proc4Proc8freeproc17h8035be1799b730e9E.llvm.4909665622366072998>:
;     fn freeproc(&mut self) {
8020289a: 01 11        	addi	sp, sp, -32
8020289c: 06 ec        	sd	ra, 24(sp)
8020289e: 22 e8        	sd	s0, 16(sp)
802028a0: 26 e4        	sd	s1, 8(sp)
802028a2: 4a e0        	sd	s2, 0(sp)
802028a4: 00 10        	addi	s0, sp, 32
802028a6: aa 84        	mv	s1, a0
;         if self.trapframe != null_mut() {
802028a8: 03 35 85 14  	ld	a0, 328(a0)
802028ac: 09 c5        	beqz	a0, 0x802028b6 <_ZN6kernel7process4proc4Proc8freeproc17h8035be1799b730e9E.llvm.4909665622366072998+0x1c>
;             kfree(self.trapframe as Addr);
802028ae: 97 40 00 00  	auipc	ra, 4
802028b2: e7 80 00 99  	jalr	-1648(ra)
;         !self.data.is_null()
802028b6: 03 b5 04 14  	ld	a0, 320(s1)
;         self.trapframe = null_mut();
802028ba: 23 b4 04 14  	sd	zero, 328(s1)
;         if self.uvm.valid() {
802028be: 39 cd        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17h8035be1799b730e9E.llvm.4909665622366072998+0x82>
802028c0: 13 89 04 14  	addi	s2, s1, 320
802028c4: 37 05 00 04  	lui	a0, 16384
802028c8: 7d 35        	addiw	a0, a0, -1
802028ca: 93 15 c5 00  	slli	a1, a0, 12
;         self.uvm.uvmunmap(TRAMPOLINE, 1, false);
802028ce: 05 46        	li	a2, 1
802028d0: 4a 85        	mv	a0, s2
802028d2: 81 46        	li	a3, 0
802028d4: 97 30 00 00  	auipc	ra, 3
802028d8: e7 80 e0 f3  	jalr	-194(ra)
802028dc: 37 05 00 02  	lui	a0, 8192
802028e0: 7d 35        	addiw	a0, a0, -1
802028e2: 93 15 d5 00  	slli	a1, a0, 13
;         self.uvm.uvmunmap(TRAPFRAME, 1, false);
802028e6: 05 46        	li	a2, 1
802028e8: 4a 85        	mv	a0, s2
802028ea: 81 46        	li	a3, 0
802028ec: 97 30 00 00  	auipc	ra, 3
802028f0: e7 80 60 f2  	jalr	-218(ra)
;         self.uvm.uvmfree(self.sz);
802028f4: 03 b5 84 13  	ld	a0, 312(s1)
; 		if sz > 0 {
802028f8: 15 c1        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17h8035be1799b730e9E.llvm.4909665622366072998+0x82>
802028fa: 85 65        	lui	a1, 1
802028fc: fd 35        	addiw	a1, a1, -1
;     (addr + PGSIZE - 1) & !(PGSIZE - 1)
802028fe: 2e 95        	add	a0, a0, a1
; 			self.uvmunmap(0, pgroundup(sz) / PGSIZE, true);
80202900: 13 56 c5 00  	srli	a2, a0, 12
80202904: 85 46        	li	a3, 1
80202906: 4a 85        	mv	a0, s2
80202908: 81 45        	li	a1, 0
8020290a: 97 30 00 00  	auipc	ra, 3
8020290e: e7 80 80 f0  	jalr	-248(ra)
; 			self.freewalk();
80202912: 4a 85        	mv	a0, s2
80202914: 97 30 00 00  	auipc	ra, 3
80202918: e7 80 20 18  	jalr	386(ra)
;         self.pid = 0;
8020291c: 23 b4 04 12  	sd	zero, 296(s1)
80202920: 83 b5 04 16  	ld	a1, 352(s1)
;         self.pid = 0;
80202924: 23 b0 04 12  	sd	zero, 288(s1)
80202928: 13 89 04 16  	addi	s2, s1, 352
;         self.sz = 0;
8020292c: 23 bc 04 12  	sd	zero, 312(s1)
80202930: 23 b0 04 14  	sd	zero, 320(s1)
80202934: 81 c9        	beqz	a1, 0x80202944 <_ZN6kernel7process4proc4Proc8freeproc17h8035be1799b730e9E.llvm.4909665622366072998+0xaa>
80202936: 03 b5 84 15  	ld	a0, 344(s1)
8020293a: 05 46        	li	a2, 1
8020293c: 97 50 00 00  	auipc	ra, 5
80202940: e7 80 c0 9c  	jalr	-1588(ra)
80202944: 05 45        	li	a0, 1
;         self.name = String::new();
80202946: 23 bc a4 14  	sd	a0, 344(s1)
;         self.chan = null_mut();
8020294a: 23 b8 04 10  	sd	zero, 272(s1)
8020294e: 23 bc 04 10  	sd	zero, 280(s1)
;         self.name = String::new();
80202952: 23 18 09 00  	sh	zero, 16(s2)
80202956: 23 34 09 00  	sd	zero, 8(s2)
8020295a: 23 30 09 00  	sd	zero, 0(s2)
;     }
8020295e: e2 60        	ld	ra, 24(sp)
80202960: 42 64        	ld	s0, 16(sp)
80202962: a2 64        	ld	s1, 8(sp)
80202964: 02 69        	ld	s2, 0(sp)
80202966: 05 61        	addi	sp, sp, 32
80202968: 82 80        	ret

000000008020296a <_ZN6kernel7process4proc9allocproc17h6b6ee3a89b4e7be9E>:
; fn allocproc() -> *mut Proc {
8020296a: 19 71        	addi	sp, sp, -128
8020296c: 86 fc        	sd	ra, 120(sp)
8020296e: a2 f8        	sd	s0, 112(sp)
80202970: a6 f4        	sd	s1, 104(sp)
80202972: ca f0        	sd	s2, 96(sp)
80202974: ce ec        	sd	s3, 88(sp)
80202976: d2 e8        	sd	s4, 80(sp)
80202978: d6 e4        	sd	s5, 72(sp)
8020297a: da e0        	sd	s6, 64(sp)
8020297c: 00 01        	addi	s0, sp, 128

000000008020297e <.Lpcrel_hi8>:
;         self.0.call_once(builder)
8020297e: 17 85 01 00  	auipc	a0, 24
80202982: 13 05 a5 6b  	addi	a0, a0, 1722
80202986: 97 f0 ff ff  	auipc	ra, 1048575
8020298a: e7 80 a0 67  	jalr	1658(ra)
8020298e: 13 0b 05 12  	addi	s6, a0, 288
80202992: 93 04 00 04  	li	s1, 64
;         p.lock.acquire();
80202996: 93 0a 0b f6  	addi	s5, s6, -160
8020299a: 56 85        	mv	a0, s5
8020299c: 97 30 00 00  	auipc	ra, 3
802029a0: e7 80 00 2a  	jalr	672(ra)
; #[derive(PartialEq, Eq, Clone, Copy)]
802029a4: 03 45 0b 05  	lbu	a0, 80(s6)
;         if p.state == ProcState::Unused {
802029a8: 19 c9        	beqz	a0, 0x802029be <.Lpcrel_hi8+0x40>
;             p.lock.release();
802029aa: 56 85        	mv	a0, s5
802029ac: 97 30 00 00  	auipc	ra, 3
802029b0: e7 80 60 3f  	jalr	1014(ra)
802029b4: fd 14        	addi	s1, s1, -1
802029b6: 13 0b 8b 17  	addi	s6, s6, 376
802029ba: f1 fc        	bnez	s1, 0x80202996 <.Lpcrel_hi8+0x18>
802029bc: 61 aa        	j	0x80202b54 <.Lpcrel_hi22+0x32>
802029be: 0f 00 30 03  	fence	rw, rw

00000000802029c2 <.Lpcrel_hi9>:
802029c2: 17 85 01 00  	auipc	a0, 24
802029c6: 13 0a e5 63  	addi	s4, a0, 1598
802029ca: 03 35 0a 03  	ld	a0, 48(s4)
802029ce: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802029d2: 39 e9        	bnez	a0, 0x80202a28 <.Lpcrel_hi10+0x3a>
802029d4: 13 06 0a 03  	addi	a2, s4, 48
802029d8: 85 45        	li	a1, 1
802029da: 2f 35 06 16  	lr.d.aqrl	a0, (a2)
802029de: 29 e5        	bnez	a0, 0x80202a28 <.Lpcrel_hi10+0x3a>
802029e0: af 36 b6 1e  	sc.d.aqrl	a3, a1, (a2)
802029e4: fd fa        	bnez	a3, 0x802029da <.Lpcrel_hi9+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802029e6: 23 38 c4 f8  	sd	a2, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802029ea: 23 30 ba 00  	sd	a1, 0(s4)

00000000802029ee <.Lpcrel_hi10>:
802029ee: 17 65 00 00  	auipc	a0, 6
802029f2: 13 05 a5 6d  	addi	a0, a0, 1754
802029f6: 23 34 aa 00  	sd	a0, 8(s4)
802029fa: 1d 45        	li	a0, 7
802029fc: 23 38 aa 00  	sd	a0, 16(s4)
80202a00: 23 3c 0a 00  	sd	zero, 24(s4)
80202a04: 23 00 0a 02  	sb	zero, 32(s4)
80202a08: 23 34 ba 02  	sd	a1, 40(s4)
;                 finish.panicked = false;
80202a0c: 23 0c 04 f8  	sb	zero, -104(s0)
80202a10: 0f 00 10 03  	fence	rw, w
80202a14: 09 45        	li	a0, 2
80202a16: 23 38 aa 02  	sd	a0, 48(s4)
80202a1a: 13 05 04 f9  	addi	a0, s0, -112
80202a1e: 97 50 00 00  	auipc	ra, 5
80202a22: e7 80 20 8f  	jalr	-1806(ra)
80202a26: 0d a0        	j	0x80202a48 <.Lpcrel_hi10+0x5a>
80202a28: 85 45        	li	a1, 1
;             match status {
80202a2a: 63 1c b5 00  	bne	a0, a1, 0x80202a42 <.Lpcrel_hi10+0x54>
80202a2e: 0f 00 00 01  	fence	w, 0
80202a32: 0f 00 30 03  	fence	rw, rw
80202a36: 03 35 0a 03  	ld	a0, 48(s4)
80202a3a: 0f 00 30 02  	fence	r, rw
;             match status {
80202a3e: e3 08 b5 fe  	beq	a0, a1, 0x80202a2e <.Lpcrel_hi10+0x40>
80202a42: 89 45        	li	a1, 2
;             match status {
80202a44: 63 14 b5 12  	bne	a0, a1, 0x80202b6c <.Lpcrel_hi22+0x4a>
80202a48: 13 09 0b ee  	addi	s2, s6, -288
;     pidcnt.pid_lock.acquire();
80202a4c: 93 09 8a 00  	addi	s3, s4, 8
80202a50: 4e 85        	mv	a0, s3
80202a52: 97 30 00 00  	auipc	ra, 3
80202a56: e7 80 a0 1e  	jalr	490(ra)
;     pid = pidcnt.nextpid;
80202a5a: 83 34 8a 02  	ld	s1, 40(s4)
;     pidcnt.nextpid += 1;
80202a5e: 13 85 14 00  	addi	a0, s1, 1
80202a62: 23 34 aa 02  	sd	a0, 40(s4)
;     pidcnt.pid_lock.release();
80202a66: 4e 85        	mv	a0, s3
80202a68: 97 30 00 00  	auipc	ra, 3
80202a6c: e7 80 a0 33  	jalr	826(ra)
;             p.pid = allocpid();
80202a70: 23 30 9b 00  	sd	s1, 0(s6)
80202a74: 05 45        	li	a0, 1
;             p.state = ProcState::Used;
80202a76: 23 08 ab 04  	sb	a0, 80(s6)
;             let pa = kalloc();
80202a7a: 97 30 00 00  	auipc	ra, 3
80202a7e: e7 80 c0 6a  	jalr	1708(ra)
;             p.trapframe = pa as *mut Trapframe;
80202a82: 23 34 ab 02  	sd	a0, 40(s6)
80202a86: 4d cd        	beqz	a0, 0x80202b40 <.Lpcrel_hi22+0x1e>
80202a88: aa 89        	mv	s3, a0
;         let pagetable = PagetableT::addr2pagetablet(kalloc());
80202a8a: 97 30 00 00  	auipc	ra, 3
80202a8e: e7 80 c0 69  	jalr	1692(ra)
80202a92: 2a 8a        	mv	s4, a0
80202a94: 05 66        	lui	a2, 1
80202a96: 81 45        	li	a1, 0
80202a98: 97 50 00 00  	auipc	ra, 5
80202a9c: e7 80 20 4f  	jalr	1266(ra)
;         let mut uvm = Uvm::from_pagetable(Uvm::uvmcreate());
80202aa0: 23 34 44 f9  	sd	s4, -120(s0)
80202aa4: 63 0c 0a 08  	beqz	s4, 0x80202b3c <.Lpcrel_hi22+0x1a>
80202aa8: 37 05 00 04  	lui	a0, 16384
80202aac: 7d 35        	addiw	a0, a0, -1
80202aae: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80202ab2: 13 05 84 f8  	addi	a0, s0, -120
80202ab6: 05 46        	li	a2, 1
80202ab8: 97 30 00 00  	auipc	ra, 3
80202abc: e7 80 e0 07  	jalr	126(ra)
80202ac0: 35 cd        	beqz	a0, 0x80202b3c <.Lpcrel_hi22+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202ac2: 83 45 05 00  	lbu	a1, 0(a0)
80202ac6: 85 89        	andi	a1, a1, 1
80202ac8: e5 e1        	bnez	a1, 0x80202ba8 <.Lpcrel_hi16>

0000000080202aca <.Lpcrel_hi15>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202aca: 97 e5 ff ff  	auipc	a1, 1048574
80202ace: 93 85 65 53  	addi	a1, a1, 1334
80202ad2: b1 81        	srli	a1, a1, 12
80202ad4: aa 05        	slli	a1, a1, 10
80202ad6: ad 05        	addi	a1, a1, 11
80202ad8: 0c e1        	sd	a1, 0(a0)
80202ada: 37 05 00 02  	lui	a0, 8192
80202ade: 7d 35        	addiw	a0, a0, -1
80202ae0: 93 15 d5 00  	slli	a1, a0, 13
;             let pte = self.walk(a, true);
80202ae4: 13 05 84 f8  	addi	a0, s0, -120
80202ae8: 05 46        	li	a2, 1
80202aea: 97 30 00 00  	auipc	ra, 3
80202aee: e7 80 c0 04  	jalr	76(ra)
80202af2: 29 c5        	beqz	a0, 0x80202b3c <.Lpcrel_hi22+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202af4: 83 45 05 00  	lbu	a1, 0(a0)
80202af8: 85 89        	andi	a1, a1, 1
80202afa: f9 ed        	bnez	a1, 0x80202bd8 <.Lpcrel_hi19>
;     (pa >> 12) << 10
80202afc: 93 d5 c9 00  	srli	a1, s3, 12
80202b00: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202b02: ad 05        	addi	a1, a1, 11
80202b04: 0c e1        	sd	a1, 0(a0)
;         uvm
80202b06: 03 35 84 f8  	ld	a0, -120(s0)
;             p.uvm = p.proc_uvm();
80202b0a: 23 30 ab 02  	sd	a0, 32(s6)
;             if !p.uvm.valid() {
80202b0e: 0d c9        	beqz	a0, 0x80202b40 <.Lpcrel_hi22+0x1e>
80202b10: 13 05 8b f8  	addi	a0, s6, -120
80202b14: 13 06 80 06  	li	a2, 104
80202b18: 81 45        	li	a1, 0
80202b1a: 97 50 00 00  	auipc	ra, 5
80202b1e: e7 80 00 47  	jalr	1136(ra)

0000000080202b22 <.Lpcrel_hi22>:
;             p.context.ra = forkret as usize;
80202b22: 17 45 00 00  	auipc	a0, 4
;             p.context.sp = p.kstack + PGSIZE;
80202b26: 83 35 0b 01  	ld	a1, 16(s6)
;             p.context.ra = forkret as usize;
80202b2a: 13 05 65 7d  	addi	a0, a0, 2006
80202b2e: 23 30 ab f8  	sd	a0, -128(s6)
80202b32: 05 65        	lui	a0, 1
;             p.context.sp = p.kstack + PGSIZE;
80202b34: 2e 95        	add	a0, a0, a1
80202b36: 23 34 ab f8  	sd	a0, -120(s6)
80202b3a: 31 a8        	j	0x80202b56 <.Lpcrel_hi22+0x34>
;             p.uvm = p.proc_uvm();
80202b3c: 23 30 0b 02  	sd	zero, 32(s6)
80202b40: 4a 85        	mv	a0, s2
80202b42: 97 00 00 00  	auipc	ra, 0
80202b46: e7 80 80 d5  	jalr	-680(ra)
80202b4a: 56 85        	mv	a0, s5
80202b4c: 97 30 00 00  	auipc	ra, 3
80202b50: e7 80 60 25  	jalr	598(ra)
80202b54: 01 49        	li	s2, 0
; }
80202b56: 4a 85        	mv	a0, s2
80202b58: e6 70        	ld	ra, 120(sp)
80202b5a: 46 74        	ld	s0, 112(sp)
80202b5c: a6 74        	ld	s1, 104(sp)
80202b5e: 06 79        	ld	s2, 96(sp)
80202b60: e6 69        	ld	s3, 88(sp)
80202b62: 46 6a        	ld	s4, 80(sp)
80202b64: a6 6a        	ld	s5, 72(sp)
80202b66: 06 6b        	ld	s6, 64(sp)
80202b68: 09 61        	addi	sp, sp, 128
80202b6a: 82 80        	ret
;             match status {
80202b6c: 05 e1        	bnez	a0, 0x80202b8c <.Lpcrel_hi13>

0000000080202b6e <.Lpcrel_hi11>:
;                 INCOMPLETE => unreachable!(),
80202b6e: 17 65 00 00  	auipc	a0, 6
80202b72: 13 05 a5 51  	addi	a0, a0, 1306

0000000080202b76 <.Lpcrel_hi12>:
80202b76: 97 65 00 00  	auipc	a1, 6
80202b7a: 13 86 a5 53  	addi	a2, a1, 1338
80202b7e: 93 05 80 02  	li	a1, 40
80202b82: 97 50 00 00  	auipc	ra, 5
80202b86: e7 80 c0 9c  	jalr	-1588(ra)
80202b8a: 00 00        	unimp	

0000000080202b8c <.Lpcrel_hi13>:
;                 PANICKED => panic!("Once has panicked"),
80202b8c: 17 65 00 00  	auipc	a0, 6
80202b90: 13 05 45 47  	addi	a0, a0, 1140

0000000080202b94 <.Lpcrel_hi14>:
80202b94: 97 65 00 00  	auipc	a1, 6
80202b98: 13 86 c5 4d  	addi	a2, a1, 1244
80202b9c: c5 45        	li	a1, 17
80202b9e: 97 50 00 00  	auipc	ra, 5
80202ba2: e7 80 00 9b  	jalr	-1616(ra)
80202ba6: 00 00        	unimp	

0000000080202ba8 <.Lpcrel_hi16>:
80202ba8: 17 75 00 00  	auipc	a0, 7
80202bac: 13 05 85 8e  	addi	a0, a0, -1816
80202bb0: 23 38 a4 f8  	sd	a0, -112(s0)
80202bb4: 05 45        	li	a0, 1
80202bb6: 23 3c a4 f8  	sd	a0, -104(s0)
80202bba: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202bbe <.Lpcrel_hi17>:
80202bbe: 17 75 00 00  	auipc	a0, 7
80202bc2: 13 05 25 89  	addi	a0, a0, -1902
80202bc6: 23 30 a4 fa  	sd	a0, -96(s0)
80202bca: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202bce <.Lpcrel_hi18>:
;                 panic!("mappages: remap");
80202bce: 17 75 00 00  	auipc	a0, 7
80202bd2: 93 05 25 8d  	addi	a1, a0, -1838
80202bd6: 05 a8        	j	0x80202c06 <.Lpcrel_hi21+0x8>

0000000080202bd8 <.Lpcrel_hi19>:
80202bd8: 17 75 00 00  	auipc	a0, 7
80202bdc: 13 05 85 8b  	addi	a0, a0, -1864
80202be0: 23 38 a4 f8  	sd	a0, -112(s0)
80202be4: 05 45        	li	a0, 1
80202be6: 23 3c a4 f8  	sd	a0, -104(s0)
80202bea: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202bee <.Lpcrel_hi20>:
80202bee: 17 75 00 00  	auipc	a0, 7
80202bf2: 13 05 25 86  	addi	a0, a0, -1950
80202bf6: 23 30 a4 fa  	sd	a0, -96(s0)
80202bfa: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202bfe <.Lpcrel_hi21>:
;                 panic!("mappages: remap");
80202bfe: 17 75 00 00  	auipc	a0, 7
80202c02: 93 05 25 8a  	addi	a1, a0, -1886
80202c06: 13 05 04 f9  	addi	a0, s0, -112
80202c0a: 97 50 00 00  	auipc	ra, 5
80202c0e: e7 80 60 91  	jalr	-1770(ra)
80202c12: 00 00        	unimp	

0000000080202c14 <_ZN6kernel7process4proc8userinit17heb984ae55faeffc1E>:
; pub fn userinit() {
80202c14: 1d 71        	addi	sp, sp, -96
80202c16: 86 ec        	sd	ra, 88(sp)
80202c18: a2 e8        	sd	s0, 80(sp)
80202c1a: a6 e4        	sd	s1, 72(sp)
80202c1c: ca e0        	sd	s2, 64(sp)
80202c1e: 4e fc        	sd	s3, 56(sp)
80202c20: 52 f8        	sd	s4, 48(sp)
80202c22: 80 10        	addi	s0, sp, 96
80202c24: 0f 00 30 03  	fence	rw, rw

0000000080202c28 <.Lpcrel_hi23>:
80202c28: 17 e5 01 00  	auipc	a0, 30
80202c2c: 93 04 05 22  	addi	s1, a0, 544
80202c30: 88 68        	ld	a0, 16(s1)
80202c32: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202c36: 21 e1        	bnez	a0, 0x80202c76 <.Lpcrel_hi23+0x4e>
80202c38: 93 85 04 01  	addi	a1, s1, 16
80202c3c: 05 49        	li	s2, 1
80202c3e: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202c42: 15 e9        	bnez	a0, 0x80202c76 <.Lpcrel_hi23+0x4e>
80202c44: 2f b6 25 1f  	sc.d.aqrl	a2, s2, (a1)
80202c48: 7d fa        	bnez	a2, 0x80202c3e <.Lpcrel_hi23+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202c4a: 23 30 b4 fa  	sd	a1, -96(s0)
;     pub static ref INITPROC: UPCell<*mut Proc> = UPCell::new(allocproc());
80202c4e: 97 00 00 00  	auipc	ra, 0
80202c52: e7 80 c0 d1  	jalr	-740(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80202c56: 23 b0 24 01  	sd	s2, 0(s1)
80202c5a: 88 e4        	sd	a0, 8(s1)
;                 finish.panicked = false;
80202c5c: 23 04 04 fa  	sb	zero, -88(s0)
80202c60: 0f 00 10 03  	fence	rw, w
80202c64: 09 45        	li	a0, 2
80202c66: 88 e8        	sd	a0, 16(s1)
80202c68: 13 05 04 fa  	addi	a0, s0, -96
80202c6c: 97 40 00 00  	auipc	ra, 4
80202c70: e7 80 40 6a  	jalr	1700(ra)
80202c74: 05 a0        	j	0x80202c94 <.Lpcrel_hi23+0x6c>
80202c76: 85 45        	li	a1, 1
;             match status {
80202c78: 63 1b b5 00  	bne	a0, a1, 0x80202c8e <.Lpcrel_hi23+0x66>
80202c7c: 0f 00 00 01  	fence	w, 0
80202c80: 0f 00 30 03  	fence	rw, rw
80202c84: 88 68        	ld	a0, 16(s1)
80202c86: 0f 00 30 02  	fence	r, rw
;             match status {
80202c8a: e3 09 b5 fe  	beq	a0, a1, 0x80202c7c <.Lpcrel_hi23+0x54>
80202c8e: 89 45        	li	a1, 2
;             match status {
80202c90: 63 13 b5 08  	bne	a0, a1, 0x80202d16 <.Lpcrel_hi31+0x42>
;     let p = unsafe {&mut *(*INITPROC.get_mut())};
80202c94: 84 64        	ld	s1, 8(s1)
;     p.uvm.uvmfirst(&INITCODE as *const u8, INITCODE.len());
80202c96: 13 89 04 14  	addi	s2, s1, 320
;         let mem = kalloc();
80202c9a: 97 30 00 00  	auipc	ra, 3
80202c9e: e7 80 c0 48  	jalr	1164(ra)
80202ca2: aa 89        	mv	s3, a0
80202ca4: 05 66        	lui	a2, 1
80202ca6: 05 6a        	lui	s4, 1
80202ca8: 81 45        	li	a1, 0
80202caa: 97 50 00 00  	auipc	ra, 5
80202cae: e7 80 00 2e  	jalr	736(ra)
;             let pte = self.walk(a, true);
80202cb2: 05 46        	li	a2, 1
80202cb4: 4a 85        	mv	a0, s2
80202cb6: 81 45        	li	a1, 0
80202cb8: 97 30 00 00  	auipc	ra, 3
80202cbc: e7 80 e0 e7  	jalr	-386(ra)
80202cc0: 11 c9        	beqz	a0, 0x80202cd4 <.Lpcrel_hi31>
;             if unsafe { *pte & PTE_V } != 0 {
80202cc2: 83 45 05 00  	lbu	a1, 0(a0)
80202cc6: 85 89        	andi	a1, a1, 1
80202cc8: c9 e5        	bnez	a1, 0x80202d52 <.Lpcrel_hi28>
;     (pa >> 12) << 10
80202cca: 93 d5 c9 00  	srli	a1, s3, 12
80202cce: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202cd0: fd 05        	addi	a1, a1, 31
80202cd2: 0c e1        	sd	a1, 0(a0)

0000000080202cd4 <.Lpcrel_hi31>:
80202cd4: 17 65 00 00  	auipc	a0, 6
80202cd8: 93 05 c5 42  	addi	a1, a0, 1068
80202cdc: 13 06 40 03  	li	a2, 52
80202ce0: 4e 85        	mv	a0, s3
80202ce2: 97 50 00 00  	auipc	ra, 5
80202ce6: e7 80 00 2b  	jalr	688(ra)
;     let tf = unsafe {&mut *p.trapframe};
80202cea: 03 b5 84 14  	ld	a0, 328(s1)
;     tf.epc = 0;
80202cee: 23 3c 05 10  	sd	zero, 280(a0)
;     tf.x[2] = PGSIZE;   // sp
80202cf2: 23 38 45 01  	sd	s4, 16(a0)
80202cf6: 8d 45        	li	a1, 3
;     p.lock.release();
80202cf8: 13 85 04 08  	addi	a0, s1, 128
;     p.state = ProcState::Runable;
80202cfc: 23 88 b4 16  	sb	a1, 368(s1)
;     p.lock.release();
80202d00: e6 60        	ld	ra, 88(sp)
80202d02: 46 64        	ld	s0, 80(sp)
80202d04: a6 64        	ld	s1, 72(sp)
80202d06: 06 69        	ld	s2, 64(sp)
80202d08: e2 79        	ld	s3, 56(sp)
80202d0a: 42 7a        	ld	s4, 48(sp)
80202d0c: 25 61        	addi	sp, sp, 96
80202d0e: 17 33 00 00  	auipc	t1, 3
80202d12: 67 00 43 09  	jr	148(t1)
;             match status {
80202d16: 05 e1        	bnez	a0, 0x80202d36 <.Lpcrel_hi26>

0000000080202d18 <.Lpcrel_hi24>:
;                 INCOMPLETE => unreachable!(),
80202d18: 17 65 00 00  	auipc	a0, 6
80202d1c: 13 05 05 37  	addi	a0, a0, 880

0000000080202d20 <.Lpcrel_hi25>:
80202d20: 97 65 00 00  	auipc	a1, 6
80202d24: 13 86 05 39  	addi	a2, a1, 912
80202d28: 93 05 80 02  	li	a1, 40
80202d2c: 97 50 00 00  	auipc	ra, 5
80202d30: e7 80 20 82  	jalr	-2014(ra)
80202d34: 00 00        	unimp	

0000000080202d36 <.Lpcrel_hi26>:
;                 PANICKED => panic!("Once has panicked"),
80202d36: 17 65 00 00  	auipc	a0, 6
80202d3a: 13 05 a5 2c  	addi	a0, a0, 714

0000000080202d3e <.Lpcrel_hi27>:
80202d3e: 97 65 00 00  	auipc	a1, 6
80202d42: 13 86 25 33  	addi	a2, a1, 818
80202d46: c5 45        	li	a1, 17
80202d48: 97 50 00 00  	auipc	ra, 5
80202d4c: e7 80 60 80  	jalr	-2042(ra)
80202d50: 00 00        	unimp	

0000000080202d52 <.Lpcrel_hi28>:
80202d52: 17 65 00 00  	auipc	a0, 6
80202d56: 13 05 e5 73  	addi	a0, a0, 1854
80202d5a: 23 30 a4 fa  	sd	a0, -96(s0)
80202d5e: 05 45        	li	a0, 1
80202d60: 23 34 a4 fa  	sd	a0, -88(s0)
80202d64: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202d68 <.Lpcrel_hi29>:
80202d68: 17 65 00 00  	auipc	a0, 6
80202d6c: 13 05 85 6e  	addi	a0, a0, 1768
80202d70: 23 38 a4 fa  	sd	a0, -80(s0)
80202d74: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080202d78 <.Lpcrel_hi30>:
;                 panic!("mappages: remap");
80202d78: 17 65 00 00  	auipc	a0, 6
80202d7c: 93 05 85 72  	addi	a1, a0, 1832
80202d80: 13 05 04 fa  	addi	a0, s0, -96
80202d84: 97 40 00 00  	auipc	ra, 4
80202d88: e7 80 c0 79  	jalr	1948(ra)
80202d8c: 00 00        	unimp	

0000000080202d8e <_ZN6kernel7process4proc9scheduler17ha7a466f1da90977dE>:
; pub fn scheduler() {
80202d8e: 13 01 01 81  	addi	sp, sp, -2032
80202d92: 23 34 11 7e  	sd	ra, 2024(sp)
80202d96: 23 30 81 7e  	sd	s0, 2016(sp)
80202d9a: 23 3c 91 7c  	sd	s1, 2008(sp)
80202d9e: 23 38 21 7d  	sd	s2, 2000(sp)
80202da2: 23 34 31 7d  	sd	s3, 1992(sp)
80202da6: 23 30 41 7d  	sd	s4, 1984(sp)
80202daa: 23 3c 51 7b  	sd	s5, 1976(sp)
80202dae: 23 38 61 7b  	sd	s6, 1968(sp)
80202db2: 23 34 71 7b  	sd	s7, 1960(sp)
80202db6: 23 30 81 7b  	sd	s8, 1952(sp)
80202dba: 23 3c 91 79  	sd	s9, 1944(sp)
80202dbe: 23 38 a1 79  	sd	s10, 1936(sp)
80202dc2: 23 34 b1 79  	sd	s11, 1928(sp)
80202dc6: 13 04 01 7f  	addi	s0, sp, 2032
80202dca: 09 65        	lui	a0, 2
80202dcc: 1b 05 05 c3  	addiw	a0, a0, -976
80202dd0: 33 01 a1 40  	sub	sp, sp, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202dd4: 12 89        	mv	s2, tp

0000000080202dd6 <.Lpcrel_hi32>:
;         self.0.call_once(builder)
80202dd6: 17 e5 01 00  	auipc	a0, 30
80202dda: 93 04 25 20  	addi	s1, a0, 514
80202dde: 26 85        	mv	a0, s1
80202de0: 97 f0 ff ff  	auipc	ra, 1048575
80202de4: e7 80 80 43  	jalr	1080(ra)
80202de8: 93 0b 00 04  	li	s7, 64
; 	&mut CPUS.get_mut()[id]
80202dec: 63 64 79 01  	bltu	s2, s7, 0x80202df4 <.Lpcrel_hi32+0x1e>
80202df0: 6f 20 80 6c  	j	0x802054b8 <.Lpcrel_hi33>
80202df4: 13 0c 80 08  	li	s8, 136
; 	&mut CPUS.get_mut()[id]
80202df8: b3 05 89 03  	mul	a1, s2, s8
80202dfc: 33 09 b5 00  	add	s2, a0, a1

0000000080202e00 <.Lpcrel_hi34>:
;         self.0.call_once(builder)
80202e00: 17 85 01 00  	auipc	a0, 24
80202e04: 13 05 85 23  	addi	a0, a0, 568
80202e08: 97 f0 ff ff  	auipc	ra, 1048575
80202e0c: e7 80 80 1f  	jalr	504(ra)
80202e10: 89 65        	lui	a1, 2
80202e12: b3 05 b4 40  	sub	a1, s0, a1
80202e16: 23 b8 a5 d6  	sd	a0, -656(a1)
80202e1a: c5 46        	li	a3, 17
80202e1c: 93 95 76 00  	slli	a1, a3, 7
80202e20: 09 65        	lui	a0, 2
80202e22: 1b 05 85 27  	addiw	a0, a0, 632
80202e26: 33 05 a4 40  	sub	a0, s0, a0
80202e2a: aa 95        	add	a1, a1, a0
80202e2c: 09 66        	lui	a2, 2
80202e2e: 33 06 c4 40  	sub	a2, s0, a2
80202e32: 23 34 b6 d6  	sd	a1, -664(a2)
80202e36: 85 65        	lui	a1, 1
80202e38: 1b 86 85 90  	addiw	a2, a1, -1784
80202e3c: 2a 96        	add	a2, a2, a0
80202e3e: 09 67        	lui	a4, 2
80202e40: 33 07 e4 40  	sub	a4, s0, a4
80202e44: 23 30 c7 d6  	sd	a2, -672(a4)
80202e48: 1b 86 05 99  	addiw	a2, a1, -1648
80202e4c: 2a 96        	add	a2, a2, a0
80202e4e: 09 67        	lui	a4, 2
80202e50: 33 07 e4 40  	sub	a4, s0, a4
80202e54: 23 3c c7 d4  	sd	a2, -680(a4)
80202e58: 1b 86 85 a1  	addiw	a2, a1, -1512
80202e5c: 2a 96        	add	a2, a2, a0
80202e5e: 09 67        	lui	a4, 2
80202e60: 33 07 e4 40  	sub	a4, s0, a4
80202e64: 23 38 c7 d4  	sd	a2, -688(a4)
80202e68: 1b 86 05 aa  	addiw	a2, a1, -1376
80202e6c: 2a 96        	add	a2, a2, a0
80202e6e: 09 67        	lui	a4, 2
80202e70: 33 07 e4 40  	sub	a4, s0, a4
80202e74: 23 34 c7 d4  	sd	a2, -696(a4)
80202e78: 1b 86 85 b2  	addiw	a2, a1, -1240
80202e7c: 2a 96        	add	a2, a2, a0
80202e7e: 09 67        	lui	a4, 2
80202e80: 33 07 e4 40  	sub	a4, s0, a4
80202e84: 23 30 c7 d4  	sd	a2, -704(a4)
80202e88: 1b 86 05 bb  	addiw	a2, a1, -1104
80202e8c: 2a 96        	add	a2, a2, a0
80202e8e: 09 67        	lui	a4, 2
80202e90: 33 07 e4 40  	sub	a4, s0, a4
80202e94: 23 3c c7 d2  	sd	a2, -712(a4)
80202e98: 1b 86 85 c3  	addiw	a2, a1, -968
80202e9c: 2a 96        	add	a2, a2, a0
80202e9e: 09 67        	lui	a4, 2
80202ea0: 33 07 e4 40  	sub	a4, s0, a4
80202ea4: 23 38 c7 d2  	sd	a2, -720(a4)
80202ea8: 1b 86 05 cc  	addiw	a2, a1, -832
80202eac: 2a 96        	add	a2, a2, a0
80202eae: 09 67        	lui	a4, 2
80202eb0: 33 07 e4 40  	sub	a4, s0, a4
80202eb4: 23 34 c7 d2  	sd	a2, -728(a4)
80202eb8: 1b 86 85 d4  	addiw	a2, a1, -696
80202ebc: 2a 96        	add	a2, a2, a0
80202ebe: 09 67        	lui	a4, 2
80202ec0: 33 07 e4 40  	sub	a4, s0, a4
80202ec4: 23 30 c7 d2  	sd	a2, -736(a4)
80202ec8: 1b 86 05 dd  	addiw	a2, a1, -560
80202ecc: 2a 96        	add	a2, a2, a0
80202ece: 09 67        	lui	a4, 2
80202ed0: 33 07 e4 40  	sub	a4, s0, a4
80202ed4: 23 3c c7 d0  	sd	a2, -744(a4)
80202ed8: 1b 86 85 e5  	addiw	a2, a1, -424
80202edc: 2a 96        	add	a2, a2, a0
80202ede: 09 67        	lui	a4, 2
80202ee0: 33 07 e4 40  	sub	a4, s0, a4
80202ee4: 23 38 c7 d0  	sd	a2, -752(a4)
80202ee8: 1b 86 05 ee  	addiw	a2, a1, -288
80202eec: 2a 96        	add	a2, a2, a0
80202eee: 09 67        	lui	a4, 2
80202ef0: 33 07 e4 40  	sub	a4, s0, a4
80202ef4: 23 34 c7 d0  	sd	a2, -760(a4)
80202ef8: 1b 86 85 f6  	addiw	a2, a1, -152
80202efc: 2a 96        	add	a2, a2, a0
80202efe: 09 67        	lui	a4, 2
80202f00: 33 07 e4 40  	sub	a4, s0, a4
80202f04: 23 30 c7 d0  	sd	a2, -768(a4)
80202f08: 1b 86 05 ff  	addiw	a2, a1, -16
80202f0c: 2a 96        	add	a2, a2, a0
80202f0e: 09 67        	lui	a4, 2
80202f10: 33 07 e4 40  	sub	a4, s0, a4
80202f14: 23 3c c7 ce  	sd	a2, -776(a4)
80202f18: 1b 86 85 07  	addiw	a2, a1, 120
80202f1c: 2a 96        	add	a2, a2, a0
80202f1e: 09 67        	lui	a4, 2
80202f20: 33 07 e4 40  	sub	a4, s0, a4
80202f24: 23 38 c7 ce  	sd	a2, -784(a4)
80202f28: 13 96 86 00  	slli	a2, a3, 8
80202f2c: 2a 96        	add	a2, a2, a0
80202f2e: 89 66        	lui	a3, 2
80202f30: b3 06 d4 40  	sub	a3, s0, a3
80202f34: 23 b4 c6 ce  	sd	a2, -792(a3)
80202f38: 1b 86 85 18  	addiw	a2, a1, 392
80202f3c: 2a 96        	add	a2, a2, a0
80202f3e: 89 66        	lui	a3, 2
80202f40: b3 06 d4 40  	sub	a3, s0, a3
80202f44: 23 b0 c6 ce  	sd	a2, -800(a3)
80202f48: 1b 86 05 21  	addiw	a2, a1, 528
80202f4c: 2a 96        	add	a2, a2, a0
80202f4e: 89 66        	lui	a3, 2
80202f50: b3 06 d4 40  	sub	a3, s0, a3
80202f54: 23 bc c6 cc  	sd	a2, -808(a3)
80202f58: 1b 86 85 29  	addiw	a2, a1, 664
80202f5c: 2a 96        	add	a2, a2, a0
80202f5e: 89 66        	lui	a3, 2
80202f60: b3 06 d4 40  	sub	a3, s0, a3
80202f64: 23 b8 c6 cc  	sd	a2, -816(a3)
80202f68: 1b 86 05 32  	addiw	a2, a1, 800
80202f6c: 2a 96        	add	a2, a2, a0
80202f6e: 89 66        	lui	a3, 2
80202f70: b3 06 d4 40  	sub	a3, s0, a3
80202f74: 23 b4 c6 cc  	sd	a2, -824(a3)
80202f78: 1b 86 85 3a  	addiw	a2, a1, 936
80202f7c: 2a 96        	add	a2, a2, a0
80202f7e: 89 66        	lui	a3, 2
80202f80: b3 06 d4 40  	sub	a3, s0, a3
80202f84: 23 b0 c6 cc  	sd	a2, -832(a3)
80202f88: 1b 86 05 43  	addiw	a2, a1, 1072
80202f8c: 2a 96        	add	a2, a2, a0
80202f8e: 89 66        	lui	a3, 2
80202f90: b3 06 d4 40  	sub	a3, s0, a3
80202f94: 23 bc c6 ca  	sd	a2, -840(a3)
80202f98: 1b 86 85 4b  	addiw	a2, a1, 1208
80202f9c: 2a 96        	add	a2, a2, a0
80202f9e: 89 66        	lui	a3, 2
80202fa0: b3 06 d4 40  	sub	a3, s0, a3
80202fa4: 23 b8 c6 ca  	sd	a2, -848(a3)
80202fa8: 1b 86 05 54  	addiw	a2, a1, 1344
80202fac: 2a 96        	add	a2, a2, a0
80202fae: 89 66        	lui	a3, 2
80202fb0: b3 06 d4 40  	sub	a3, s0, a3
80202fb4: 23 b4 c6 ca  	sd	a2, -856(a3)
80202fb8: 1b 86 85 5c  	addiw	a2, a1, 1480
80202fbc: 2a 96        	add	a2, a2, a0
80202fbe: 89 66        	lui	a3, 2
80202fc0: b3 06 d4 40  	sub	a3, s0, a3
80202fc4: 23 b0 c6 ca  	sd	a2, -864(a3)
80202fc8: 1b 86 05 65  	addiw	a2, a1, 1616
80202fcc: 2a 96        	add	a2, a2, a0
80202fce: 89 66        	lui	a3, 2
80202fd0: b3 06 d4 40  	sub	a3, s0, a3
80202fd4: 23 bc c6 c8  	sd	a2, -872(a3)
80202fd8: 1b 86 85 6d  	addiw	a2, a1, 1752
80202fdc: 2a 96        	add	a2, a2, a0
80202fde: 89 66        	lui	a3, 2
80202fe0: b3 06 d4 40  	sub	a3, s0, a3
80202fe4: 23 b8 c6 c8  	sd	a2, -880(a3)
80202fe8: 1b 86 05 76  	addiw	a2, a1, 1888
80202fec: 2a 96        	add	a2, a2, a0
80202fee: 89 66        	lui	a3, 2
80202ff0: b3 06 d4 40  	sub	a3, s0, a3
80202ff4: 23 b4 c6 c8  	sd	a2, -888(a3)
80202ff8: 9b 85 85 7e  	addiw	a1, a1, 2024
80202ffc: aa 95        	add	a1, a1, a0
80202ffe: 09 66        	lui	a2, 2
80203000: 33 06 c4 40  	sub	a2, s0, a2
80203004: 23 30 b6 c8  	sd	a1, -896(a2)
80203008: 89 65        	lui	a1, 2
8020300a: 1b 86 05 87  	addiw	a2, a1, -1936
8020300e: 2a 96        	add	a2, a2, a0
80203010: 89 66        	lui	a3, 2
80203012: b3 06 d4 40  	sub	a3, s0, a3
80203016: 23 bc c6 c6  	sd	a2, -904(a3)
8020301a: 1b 86 85 8f  	addiw	a2, a1, -1800
8020301e: 2a 96        	add	a2, a2, a0
80203020: 89 66        	lui	a3, 2
80203022: b3 06 d4 40  	sub	a3, s0, a3
80203026: 23 b8 c6 c6  	sd	a2, -912(a3)
8020302a: 1b 86 05 98  	addiw	a2, a1, -1664
8020302e: 2a 96        	add	a2, a2, a0
80203030: 89 66        	lui	a3, 2
80203032: b3 06 d4 40  	sub	a3, s0, a3
80203036: 23 b4 c6 c6  	sd	a2, -920(a3)
8020303a: 1b 86 85 a0  	addiw	a2, a1, -1528
8020303e: 2a 96        	add	a2, a2, a0
80203040: 89 66        	lui	a3, 2
80203042: b3 06 d4 40  	sub	a3, s0, a3
80203046: 23 b0 c6 c6  	sd	a2, -928(a3)
8020304a: 1b 86 05 a9  	addiw	a2, a1, -1392
8020304e: 2a 96        	add	a2, a2, a0
80203050: 89 66        	lui	a3, 2
80203052: b3 06 d4 40  	sub	a3, s0, a3
80203056: 23 bc c6 c4  	sd	a2, -936(a3)
8020305a: 1b 86 85 b1  	addiw	a2, a1, -1256
8020305e: 2a 96        	add	a2, a2, a0
80203060: 89 66        	lui	a3, 2
80203062: b3 06 d4 40  	sub	a3, s0, a3
80203066: 23 b8 c6 c4  	sd	a2, -944(a3)
8020306a: 1b 86 05 ba  	addiw	a2, a1, -1120
8020306e: 2a 96        	add	a2, a2, a0
80203070: 89 66        	lui	a3, 2
80203072: b3 06 d4 40  	sub	a3, s0, a3
80203076: 23 b4 c6 c4  	sd	a2, -952(a3)
8020307a: 1b 86 85 c2  	addiw	a2, a1, -984
8020307e: 2a 96        	add	a2, a2, a0
80203080: 89 66        	lui	a3, 2
80203082: b3 06 d4 40  	sub	a3, s0, a3
80203086: 23 b0 c6 c4  	sd	a2, -960(a3)
8020308a: 1b 86 05 cb  	addiw	a2, a1, -848
8020308e: 2a 96        	add	a2, a2, a0
80203090: 89 66        	lui	a3, 2
80203092: b3 06 d4 40  	sub	a3, s0, a3
80203096: 23 bc c6 c2  	sd	a2, -968(a3)
8020309a: 1b 86 85 d3  	addiw	a2, a1, -712
8020309e: 2a 96        	add	a2, a2, a0
802030a0: 89 66        	lui	a3, 2
802030a2: b3 06 d4 40  	sub	a3, s0, a3
802030a6: 23 b8 c6 c2  	sd	a2, -976(a3)
802030aa: 1b 86 05 dc  	addiw	a2, a1, -576
802030ae: 2a 96        	add	a2, a2, a0
802030b0: 89 66        	lui	a3, 2
802030b2: b3 06 d4 40  	sub	a3, s0, a3
802030b6: 23 b4 c6 c2  	sd	a2, -984(a3)
802030ba: 1b 86 85 e4  	addiw	a2, a1, -440
802030be: 2a 96        	add	a2, a2, a0
802030c0: 89 66        	lui	a3, 2
802030c2: b3 06 d4 40  	sub	a3, s0, a3
802030c6: 23 b0 c6 c2  	sd	a2, -992(a3)
802030ca: 1b 86 05 ed  	addiw	a2, a1, -304
802030ce: 2a 96        	add	a2, a2, a0
802030d0: 89 66        	lui	a3, 2
802030d2: b3 06 d4 40  	sub	a3, s0, a3
802030d6: 23 bc c6 c0  	sd	a2, -1000(a3)
802030da: 1b 86 85 f5  	addiw	a2, a1, -168
802030de: 2a 96        	add	a2, a2, a0
802030e0: 89 66        	lui	a3, 2
802030e2: b3 06 d4 40  	sub	a3, s0, a3
802030e6: 23 b8 c6 c0  	sd	a2, -1008(a3)
802030ea: 1b 86 05 fe  	addiw	a2, a1, -32
802030ee: 2a 96        	add	a2, a2, a0
802030f0: 89 66        	lui	a3, 2
802030f2: b3 06 d4 40  	sub	a3, s0, a3
802030f6: 23 b4 c6 c0  	sd	a2, -1016(a3)
802030fa: 1b 86 85 06  	addiw	a2, a1, 104
802030fe: 2a 96        	add	a2, a2, a0
80203100: 89 66        	lui	a3, 2
80203102: b3 06 d4 40  	sub	a3, s0, a3
80203106: 23 b0 c6 c0  	sd	a2, -1024(a3)
8020310a: 1b 86 05 0f  	addiw	a2, a1, 240
8020310e: 2a 96        	add	a2, a2, a0
80203110: 89 66        	lui	a3, 2
80203112: b3 06 d4 40  	sub	a3, s0, a3
80203116: 23 bc c6 be  	sd	a2, -1032(a3)
8020311a: 9b 85 85 17  	addiw	a1, a1, 376
8020311e: 2e 95        	add	a0, a0, a1
;     c.proc = null_mut();
80203120: 89 65        	lui	a1, 2
80203122: b3 05 b4 40  	sub	a1, s0, a1
80203126: 23 b8 a5 be  	sd	a0, -1040(a1)
8020312a: 23 30 09 00  	sd	zero, 0(s2)
8020312e: 09 65        	lui	a0, 2
80203130: 33 05 a4 40  	sub	a0, s0, a0
80203134: 23 34 25 bf  	sd	s2, -1048(a0)
80203138: 21 09        	addi	s2, s2, 8
8020313a: 09 65        	lui	a0, 2
8020313c: 33 05 a4 40  	sub	a0, s0, a0
80203140: 23 30 25 bf  	sd	s2, -1056(a0)
80203144: 09 4d        	li	s10, 2
80203146: 85 4d        	li	s11, 1
80203148: 93 09 f0 0f  	li	s3, 255
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
8020314c: 73 20 0d 10  	csrs	sstatus, s10
80203150: 01 4a        	li	s4, 0
80203152: 19 a0        	j	0x80203158 <.Lpcrel_hi34+0x358>
80203154: e3 0c 7a ff  	beq	s4, s7, 0x8020314c <.Lpcrel_hi34+0x34c>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80203158: 73 29 00 10  	csrr	s2, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
8020315c: 73 30 0d 10  	csrc	sstatus, s10
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203160: 12 8b        	mv	s6, tp
80203162: 0f 00 30 03  	fence	rw, rw
80203166: 88 60        	ld	a0, 0(s1)
80203168: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020316c: 63 16 05 66  	bnez	a0, 0x802037d8 <.Lpcrel_hi34+0x9d8>
80203170: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80203174: 63 12 05 66  	bnez	a0, 0x802037d8 <.Lpcrel_hi34+0x9d8>
80203178: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
8020317c: f5 f9        	bnez	a1, 0x80203170 <.Lpcrel_hi34+0x370>
8020317e: 09 65        	lui	a0, 2
80203180: 1b 05 85 28  	addiw	a0, a0, 648
80203184: b3 0a a4 40  	sub	s5, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203188: 23 b0 9a 00  	sd	s1, 0(s5)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
8020318c: 09 65        	lui	a0, 2
8020318e: 1b 05 85 27  	addiw	a0, a0, 632
80203192: 33 05 a4 40  	sub	a0, s0, a0
80203196: 13 06 10 08  	li	a2, 129
8020319a: 81 45        	li	a1, 0
8020319c: 97 50 00 00  	auipc	ra, 5
802031a0: e7 80 e0 de  	jalr	-530(ra)
802031a4: 13 06 10 08  	li	a2, 129
802031a8: 09 65        	lui	a0, 2
802031aa: 1b 05 05 1f  	addiw	a0, a0, 496
802031ae: 33 05 a4 40  	sub	a0, s0, a0
802031b2: 81 45        	li	a1, 0
802031b4: 97 50 00 00  	auipc	ra, 5
802031b8: e7 80 60 dd  	jalr	-554(ra)
802031bc: 13 06 10 08  	li	a2, 129
802031c0: 09 65        	lui	a0, 2
802031c2: 1b 05 85 16  	addiw	a0, a0, 360
802031c6: 33 05 a4 40  	sub	a0, s0, a0
802031ca: 81 45        	li	a1, 0
802031cc: 97 50 00 00  	auipc	ra, 5
802031d0: e7 80 e0 db  	jalr	-578(ra)
802031d4: 13 06 10 08  	li	a2, 129
802031d8: 09 65        	lui	a0, 2
802031da: 1b 05 05 0e  	addiw	a0, a0, 224
802031de: 33 05 a4 40  	sub	a0, s0, a0
802031e2: 81 45        	li	a1, 0
802031e4: 97 50 00 00  	auipc	ra, 5
802031e8: e7 80 60 da  	jalr	-602(ra)
802031ec: 13 06 10 08  	li	a2, 129
802031f0: 09 65        	lui	a0, 2
802031f2: 1b 05 85 05  	addiw	a0, a0, 88
802031f6: 33 05 a4 40  	sub	a0, s0, a0
802031fa: 81 45        	li	a1, 0
802031fc: 97 50 00 00  	auipc	ra, 5
80203200: e7 80 e0 d8  	jalr	-626(ra)
80203204: 13 06 10 08  	li	a2, 129
80203208: 09 65        	lui	a0, 2
8020320a: 1b 05 05 fd  	addiw	a0, a0, -48
8020320e: 33 05 a4 40  	sub	a0, s0, a0
80203212: 81 45        	li	a1, 0
80203214: 97 50 00 00  	auipc	ra, 5
80203218: e7 80 60 d7  	jalr	-650(ra)
8020321c: 13 06 10 08  	li	a2, 129
80203220: 09 65        	lui	a0, 2
80203222: 1b 05 85 f4  	addiw	a0, a0, -184
80203226: 33 05 a4 40  	sub	a0, s0, a0
8020322a: 81 45        	li	a1, 0
8020322c: 97 50 00 00  	auipc	ra, 5
80203230: e7 80 e0 d5  	jalr	-674(ra)
80203234: 13 06 10 08  	li	a2, 129
80203238: 09 65        	lui	a0, 2
8020323a: 1b 05 05 ec  	addiw	a0, a0, -320
8020323e: 33 05 a4 40  	sub	a0, s0, a0
80203242: 81 45        	li	a1, 0
80203244: 97 50 00 00  	auipc	ra, 5
80203248: e7 80 60 d4  	jalr	-698(ra)
8020324c: 13 06 10 08  	li	a2, 129
80203250: 09 65        	lui	a0, 2
80203252: 1b 05 85 e3  	addiw	a0, a0, -456
80203256: 33 05 a4 40  	sub	a0, s0, a0
8020325a: 81 45        	li	a1, 0
8020325c: 97 50 00 00  	auipc	ra, 5
80203260: e7 80 e0 d2  	jalr	-722(ra)
80203264: 13 06 10 08  	li	a2, 129
80203268: 09 65        	lui	a0, 2
8020326a: 1b 05 05 db  	addiw	a0, a0, -592
8020326e: 33 05 a4 40  	sub	a0, s0, a0
80203272: 81 45        	li	a1, 0
80203274: 97 50 00 00  	auipc	ra, 5
80203278: e7 80 60 d1  	jalr	-746(ra)
8020327c: 13 06 10 08  	li	a2, 129
80203280: 09 65        	lui	a0, 2
80203282: 1b 05 85 d2  	addiw	a0, a0, -728
80203286: 33 05 a4 40  	sub	a0, s0, a0
8020328a: 81 45        	li	a1, 0
8020328c: 97 50 00 00  	auipc	ra, 5
80203290: e7 80 e0 cf  	jalr	-770(ra)
80203294: 13 06 10 08  	li	a2, 129
80203298: 09 65        	lui	a0, 2
8020329a: 1b 05 05 ca  	addiw	a0, a0, -864
8020329e: 33 05 a4 40  	sub	a0, s0, a0
802032a2: 81 45        	li	a1, 0
802032a4: 97 50 00 00  	auipc	ra, 5
802032a8: e7 80 60 ce  	jalr	-794(ra)
802032ac: 13 06 10 08  	li	a2, 129
802032b0: 09 65        	lui	a0, 2
802032b2: 1b 05 85 c1  	addiw	a0, a0, -1000
802032b6: 33 05 a4 40  	sub	a0, s0, a0
802032ba: 81 45        	li	a1, 0
802032bc: 97 50 00 00  	auipc	ra, 5
802032c0: e7 80 e0 cc  	jalr	-818(ra)
802032c4: 13 06 10 08  	li	a2, 129
802032c8: 09 65        	lui	a0, 2
802032ca: 1b 05 05 b9  	addiw	a0, a0, -1136
802032ce: 33 05 a4 40  	sub	a0, s0, a0
802032d2: 81 45        	li	a1, 0
802032d4: 97 50 00 00  	auipc	ra, 5
802032d8: e7 80 60 cb  	jalr	-842(ra)
802032dc: 13 06 10 08  	li	a2, 129
802032e0: 09 65        	lui	a0, 2
802032e2: 1b 05 85 b0  	addiw	a0, a0, -1272
802032e6: 33 05 a4 40  	sub	a0, s0, a0
802032ea: 81 45        	li	a1, 0
802032ec: 97 50 00 00  	auipc	ra, 5
802032f0: e7 80 e0 c9  	jalr	-866(ra)
802032f4: 13 06 10 08  	li	a2, 129
802032f8: 09 65        	lui	a0, 2
802032fa: 1b 05 05 a8  	addiw	a0, a0, -1408
802032fe: 33 05 a4 40  	sub	a0, s0, a0
80203302: 81 45        	li	a1, 0
80203304: 97 50 00 00  	auipc	ra, 5
80203308: e7 80 60 c8  	jalr	-890(ra)
8020330c: 13 06 10 08  	li	a2, 129
80203310: 09 65        	lui	a0, 2
80203312: 33 05 a4 40  	sub	a0, s0, a0
80203316: 03 35 85 d6  	ld	a0, -664(a0)
8020331a: 81 45        	li	a1, 0
8020331c: 97 50 00 00  	auipc	ra, 5
80203320: e7 80 e0 c6  	jalr	-914(ra)
80203324: 13 06 10 08  	li	a2, 129
80203328: 09 65        	lui	a0, 2
8020332a: 33 05 a4 40  	sub	a0, s0, a0
8020332e: 03 35 05 d6  	ld	a0, -672(a0)
80203332: 81 45        	li	a1, 0
80203334: 97 50 00 00  	auipc	ra, 5
80203338: e7 80 60 c5  	jalr	-938(ra)
8020333c: 13 06 10 08  	li	a2, 129
80203340: 09 65        	lui	a0, 2
80203342: 33 05 a4 40  	sub	a0, s0, a0
80203346: 03 35 85 d5  	ld	a0, -680(a0)
8020334a: 81 45        	li	a1, 0
8020334c: 97 50 00 00  	auipc	ra, 5
80203350: e7 80 e0 c3  	jalr	-962(ra)
80203354: 13 06 10 08  	li	a2, 129
80203358: 09 65        	lui	a0, 2
8020335a: 33 05 a4 40  	sub	a0, s0, a0
8020335e: 03 35 05 d5  	ld	a0, -688(a0)
80203362: 81 45        	li	a1, 0
80203364: 97 50 00 00  	auipc	ra, 5
80203368: e7 80 60 c2  	jalr	-986(ra)
8020336c: 13 06 10 08  	li	a2, 129
80203370: 09 65        	lui	a0, 2
80203372: 33 05 a4 40  	sub	a0, s0, a0
80203376: 03 35 85 d4  	ld	a0, -696(a0)
8020337a: 81 45        	li	a1, 0
8020337c: 97 50 00 00  	auipc	ra, 5
80203380: e7 80 e0 c0  	jalr	-1010(ra)
80203384: 13 06 10 08  	li	a2, 129
80203388: 09 65        	lui	a0, 2
8020338a: 33 05 a4 40  	sub	a0, s0, a0
8020338e: 03 35 05 d4  	ld	a0, -704(a0)
80203392: 81 45        	li	a1, 0
80203394: 97 50 00 00  	auipc	ra, 5
80203398: e7 80 60 bf  	jalr	-1034(ra)
8020339c: 13 06 10 08  	li	a2, 129
802033a0: 09 65        	lui	a0, 2
802033a2: 33 05 a4 40  	sub	a0, s0, a0
802033a6: 03 35 85 d3  	ld	a0, -712(a0)
802033aa: 81 45        	li	a1, 0
802033ac: 97 50 00 00  	auipc	ra, 5
802033b0: e7 80 e0 bd  	jalr	-1058(ra)
802033b4: 13 06 10 08  	li	a2, 129
802033b8: 09 65        	lui	a0, 2
802033ba: 33 05 a4 40  	sub	a0, s0, a0
802033be: 03 35 05 d3  	ld	a0, -720(a0)
802033c2: 81 45        	li	a1, 0
802033c4: 97 50 00 00  	auipc	ra, 5
802033c8: e7 80 60 bc  	jalr	-1082(ra)
802033cc: 13 06 10 08  	li	a2, 129
802033d0: 09 65        	lui	a0, 2
802033d2: 33 05 a4 40  	sub	a0, s0, a0
802033d6: 03 35 85 d2  	ld	a0, -728(a0)
802033da: 81 45        	li	a1, 0
802033dc: 97 50 00 00  	auipc	ra, 5
802033e0: e7 80 e0 ba  	jalr	-1106(ra)
802033e4: 13 06 10 08  	li	a2, 129
802033e8: 09 65        	lui	a0, 2
802033ea: 33 05 a4 40  	sub	a0, s0, a0
802033ee: 03 35 05 d2  	ld	a0, -736(a0)
802033f2: 81 45        	li	a1, 0
802033f4: 97 50 00 00  	auipc	ra, 5
802033f8: e7 80 60 b9  	jalr	-1130(ra)
802033fc: 13 06 10 08  	li	a2, 129
80203400: 09 65        	lui	a0, 2
80203402: 33 05 a4 40  	sub	a0, s0, a0
80203406: 03 35 85 d1  	ld	a0, -744(a0)
8020340a: 81 45        	li	a1, 0
8020340c: 97 50 00 00  	auipc	ra, 5
80203410: e7 80 e0 b7  	jalr	-1154(ra)
80203414: 13 06 10 08  	li	a2, 129
80203418: 09 65        	lui	a0, 2
8020341a: 33 05 a4 40  	sub	a0, s0, a0
8020341e: 03 35 05 d1  	ld	a0, -752(a0)
80203422: 81 45        	li	a1, 0
80203424: 97 50 00 00  	auipc	ra, 5
80203428: e7 80 60 b6  	jalr	-1178(ra)
8020342c: 13 06 10 08  	li	a2, 129
80203430: 09 65        	lui	a0, 2
80203432: 33 05 a4 40  	sub	a0, s0, a0
80203436: 03 35 85 d0  	ld	a0, -760(a0)
8020343a: 81 45        	li	a1, 0
8020343c: 97 50 00 00  	auipc	ra, 5
80203440: e7 80 e0 b4  	jalr	-1202(ra)
80203444: 13 06 10 08  	li	a2, 129
80203448: 09 65        	lui	a0, 2
8020344a: 33 05 a4 40  	sub	a0, s0, a0
8020344e: 03 35 05 d0  	ld	a0, -768(a0)
80203452: 81 45        	li	a1, 0
80203454: 97 50 00 00  	auipc	ra, 5
80203458: e7 80 60 b3  	jalr	-1226(ra)
8020345c: 13 06 10 08  	li	a2, 129
80203460: 09 65        	lui	a0, 2
80203462: 33 05 a4 40  	sub	a0, s0, a0
80203466: 03 35 85 cf  	ld	a0, -776(a0)
8020346a: 81 45        	li	a1, 0
8020346c: 97 50 00 00  	auipc	ra, 5
80203470: e7 80 e0 b1  	jalr	-1250(ra)
80203474: 13 06 10 08  	li	a2, 129
80203478: 09 65        	lui	a0, 2
8020347a: 33 05 a4 40  	sub	a0, s0, a0
8020347e: 03 35 05 cf  	ld	a0, -784(a0)
80203482: 81 45        	li	a1, 0
80203484: 97 50 00 00  	auipc	ra, 5
80203488: e7 80 60 b0  	jalr	-1274(ra)
8020348c: 13 06 10 08  	li	a2, 129
80203490: 09 65        	lui	a0, 2
80203492: 33 05 a4 40  	sub	a0, s0, a0
80203496: 03 35 85 ce  	ld	a0, -792(a0)
8020349a: 81 45        	li	a1, 0
8020349c: 97 50 00 00  	auipc	ra, 5
802034a0: e7 80 e0 ae  	jalr	-1298(ra)
802034a4: 13 06 10 08  	li	a2, 129
802034a8: 09 65        	lui	a0, 2
802034aa: 33 05 a4 40  	sub	a0, s0, a0
802034ae: 03 35 05 ce  	ld	a0, -800(a0)
802034b2: 81 45        	li	a1, 0
802034b4: 97 50 00 00  	auipc	ra, 5
802034b8: e7 80 60 ad  	jalr	-1322(ra)
802034bc: 13 06 10 08  	li	a2, 129
802034c0: 09 65        	lui	a0, 2
802034c2: 33 05 a4 40  	sub	a0, s0, a0
802034c6: 03 35 85 cd  	ld	a0, -808(a0)
802034ca: 81 45        	li	a1, 0
802034cc: 97 50 00 00  	auipc	ra, 5
802034d0: e7 80 e0 ab  	jalr	-1346(ra)
802034d4: 13 06 10 08  	li	a2, 129
802034d8: 09 65        	lui	a0, 2
802034da: 33 05 a4 40  	sub	a0, s0, a0
802034de: 03 35 05 cd  	ld	a0, -816(a0)
802034e2: 81 45        	li	a1, 0
802034e4: 97 50 00 00  	auipc	ra, 5
802034e8: e7 80 60 aa  	jalr	-1370(ra)
802034ec: 13 06 10 08  	li	a2, 129
802034f0: 09 65        	lui	a0, 2
802034f2: 33 05 a4 40  	sub	a0, s0, a0
802034f6: 03 35 85 cc  	ld	a0, -824(a0)
802034fa: 81 45        	li	a1, 0
802034fc: 97 50 00 00  	auipc	ra, 5
80203500: e7 80 e0 a8  	jalr	-1394(ra)
80203504: 13 06 10 08  	li	a2, 129
80203508: 09 65        	lui	a0, 2
8020350a: 33 05 a4 40  	sub	a0, s0, a0
8020350e: 03 35 05 cc  	ld	a0, -832(a0)
80203512: 81 45        	li	a1, 0
80203514: 97 50 00 00  	auipc	ra, 5
80203518: e7 80 60 a7  	jalr	-1418(ra)
8020351c: 13 06 10 08  	li	a2, 129
80203520: 09 65        	lui	a0, 2
80203522: 33 05 a4 40  	sub	a0, s0, a0
80203526: 03 35 85 cb  	ld	a0, -840(a0)
8020352a: 81 45        	li	a1, 0
8020352c: 97 50 00 00  	auipc	ra, 5
80203530: e7 80 e0 a5  	jalr	-1442(ra)
80203534: 13 06 10 08  	li	a2, 129
80203538: 09 65        	lui	a0, 2
8020353a: 33 05 a4 40  	sub	a0, s0, a0
8020353e: 03 35 05 cb  	ld	a0, -848(a0)
80203542: 81 45        	li	a1, 0
80203544: 97 50 00 00  	auipc	ra, 5
80203548: e7 80 60 a4  	jalr	-1466(ra)
8020354c: 13 06 10 08  	li	a2, 129
80203550: 09 65        	lui	a0, 2
80203552: 33 05 a4 40  	sub	a0, s0, a0
80203556: 03 35 85 ca  	ld	a0, -856(a0)
8020355a: 81 45        	li	a1, 0
8020355c: 97 50 00 00  	auipc	ra, 5
80203560: e7 80 e0 a2  	jalr	-1490(ra)
80203564: 13 06 10 08  	li	a2, 129
80203568: 09 65        	lui	a0, 2
8020356a: 33 05 a4 40  	sub	a0, s0, a0
8020356e: 03 35 05 ca  	ld	a0, -864(a0)
80203572: 81 45        	li	a1, 0
80203574: 97 50 00 00  	auipc	ra, 5
80203578: e7 80 60 a1  	jalr	-1514(ra)
8020357c: 13 06 10 08  	li	a2, 129
80203580: 09 65        	lui	a0, 2
80203582: 33 05 a4 40  	sub	a0, s0, a0
80203586: 03 35 85 c9  	ld	a0, -872(a0)
8020358a: 81 45        	li	a1, 0
8020358c: 97 50 00 00  	auipc	ra, 5
80203590: e7 80 e0 9f  	jalr	-1538(ra)
80203594: 13 06 10 08  	li	a2, 129
80203598: 09 65        	lui	a0, 2
8020359a: 33 05 a4 40  	sub	a0, s0, a0
8020359e: 03 35 05 c9  	ld	a0, -880(a0)
802035a2: 81 45        	li	a1, 0
802035a4: 97 50 00 00  	auipc	ra, 5
802035a8: e7 80 60 9e  	jalr	-1562(ra)
802035ac: 13 06 10 08  	li	a2, 129
802035b0: 09 65        	lui	a0, 2
802035b2: 33 05 a4 40  	sub	a0, s0, a0
802035b6: 03 35 85 c8  	ld	a0, -888(a0)
802035ba: 81 45        	li	a1, 0
802035bc: 97 50 00 00  	auipc	ra, 5
802035c0: e7 80 e0 9c  	jalr	-1586(ra)
802035c4: 13 06 10 08  	li	a2, 129
802035c8: 09 65        	lui	a0, 2
802035ca: 33 05 a4 40  	sub	a0, s0, a0
802035ce: 03 35 05 c8  	ld	a0, -896(a0)
802035d2: 81 45        	li	a1, 0
802035d4: 97 50 00 00  	auipc	ra, 5
802035d8: e7 80 60 9b  	jalr	-1610(ra)
802035dc: 13 06 10 08  	li	a2, 129
802035e0: 09 65        	lui	a0, 2
802035e2: 33 05 a4 40  	sub	a0, s0, a0
802035e6: 03 35 85 c7  	ld	a0, -904(a0)
802035ea: 81 45        	li	a1, 0
802035ec: 97 50 00 00  	auipc	ra, 5
802035f0: e7 80 e0 99  	jalr	-1634(ra)
802035f4: 13 06 10 08  	li	a2, 129
802035f8: 09 65        	lui	a0, 2
802035fa: 33 05 a4 40  	sub	a0, s0, a0
802035fe: 03 35 05 c7  	ld	a0, -912(a0)
80203602: 81 45        	li	a1, 0
80203604: 97 50 00 00  	auipc	ra, 5
80203608: e7 80 60 98  	jalr	-1658(ra)
8020360c: 13 06 10 08  	li	a2, 129
80203610: 09 65        	lui	a0, 2
80203612: 33 05 a4 40  	sub	a0, s0, a0
80203616: 03 35 85 c6  	ld	a0, -920(a0)
8020361a: 81 45        	li	a1, 0
8020361c: 97 50 00 00  	auipc	ra, 5
80203620: e7 80 e0 96  	jalr	-1682(ra)
80203624: 13 06 10 08  	li	a2, 129
80203628: 09 65        	lui	a0, 2
8020362a: 33 05 a4 40  	sub	a0, s0, a0
8020362e: 03 35 05 c6  	ld	a0, -928(a0)
80203632: 81 45        	li	a1, 0
80203634: 97 50 00 00  	auipc	ra, 5
80203638: e7 80 60 95  	jalr	-1706(ra)
8020363c: 13 06 10 08  	li	a2, 129
80203640: 09 65        	lui	a0, 2
80203642: 33 05 a4 40  	sub	a0, s0, a0
80203646: 03 35 85 c5  	ld	a0, -936(a0)
8020364a: 81 45        	li	a1, 0
8020364c: 97 50 00 00  	auipc	ra, 5
80203650: e7 80 e0 93  	jalr	-1730(ra)
80203654: 13 06 10 08  	li	a2, 129
80203658: 09 65        	lui	a0, 2
8020365a: 33 05 a4 40  	sub	a0, s0, a0
8020365e: 03 35 05 c5  	ld	a0, -944(a0)
80203662: 81 45        	li	a1, 0
80203664: 97 50 00 00  	auipc	ra, 5
80203668: e7 80 60 92  	jalr	-1754(ra)
8020366c: 13 06 10 08  	li	a2, 129
80203670: 09 65        	lui	a0, 2
80203672: 33 05 a4 40  	sub	a0, s0, a0
80203676: 03 35 85 c4  	ld	a0, -952(a0)
8020367a: 81 45        	li	a1, 0
8020367c: 97 50 00 00  	auipc	ra, 5
80203680: e7 80 e0 90  	jalr	-1778(ra)
80203684: 13 06 10 08  	li	a2, 129
80203688: 09 65        	lui	a0, 2
8020368a: 33 05 a4 40  	sub	a0, s0, a0
8020368e: 03 35 05 c4  	ld	a0, -960(a0)
80203692: 81 45        	li	a1, 0
80203694: 97 50 00 00  	auipc	ra, 5
80203698: e7 80 60 8f  	jalr	-1802(ra)
8020369c: 13 06 10 08  	li	a2, 129
802036a0: 09 65        	lui	a0, 2
802036a2: 33 05 a4 40  	sub	a0, s0, a0
802036a6: 03 35 85 c3  	ld	a0, -968(a0)
802036aa: 81 45        	li	a1, 0
802036ac: 97 50 00 00  	auipc	ra, 5
802036b0: e7 80 e0 8d  	jalr	-1826(ra)
802036b4: 13 06 10 08  	li	a2, 129
802036b8: 09 65        	lui	a0, 2
802036ba: 33 05 a4 40  	sub	a0, s0, a0
802036be: 03 35 05 c3  	ld	a0, -976(a0)
802036c2: 81 45        	li	a1, 0
802036c4: 97 50 00 00  	auipc	ra, 5
802036c8: e7 80 60 8c  	jalr	-1850(ra)
802036cc: 13 06 10 08  	li	a2, 129
802036d0: 09 65        	lui	a0, 2
802036d2: 33 05 a4 40  	sub	a0, s0, a0
802036d6: 03 35 85 c2  	ld	a0, -984(a0)
802036da: 81 45        	li	a1, 0
802036dc: 97 50 00 00  	auipc	ra, 5
802036e0: e7 80 e0 8a  	jalr	-1874(ra)
802036e4: 13 06 10 08  	li	a2, 129
802036e8: 09 65        	lui	a0, 2
802036ea: 33 05 a4 40  	sub	a0, s0, a0
802036ee: 03 35 05 c2  	ld	a0, -992(a0)
802036f2: 81 45        	li	a1, 0
802036f4: 97 50 00 00  	auipc	ra, 5
802036f8: e7 80 60 89  	jalr	-1898(ra)
802036fc: 13 06 10 08  	li	a2, 129
80203700: 09 65        	lui	a0, 2
80203702: 33 05 a4 40  	sub	a0, s0, a0
80203706: 03 35 85 c1  	ld	a0, -1000(a0)
8020370a: 81 45        	li	a1, 0
8020370c: 97 50 00 00  	auipc	ra, 5
80203710: e7 80 e0 87  	jalr	-1922(ra)
80203714: 13 06 10 08  	li	a2, 129
80203718: 09 65        	lui	a0, 2
8020371a: 33 05 a4 40  	sub	a0, s0, a0
8020371e: 03 35 05 c1  	ld	a0, -1008(a0)
80203722: 81 45        	li	a1, 0
80203724: 97 50 00 00  	auipc	ra, 5
80203728: e7 80 60 86  	jalr	-1946(ra)
8020372c: 13 06 10 08  	li	a2, 129
80203730: 09 65        	lui	a0, 2
80203732: 33 05 a4 40  	sub	a0, s0, a0
80203736: 03 35 85 c0  	ld	a0, -1016(a0)
8020373a: 81 45        	li	a1, 0
8020373c: 97 50 00 00  	auipc	ra, 5
80203740: e7 80 e0 84  	jalr	-1970(ra)
80203744: 13 06 10 08  	li	a2, 129
80203748: 09 65        	lui	a0, 2
8020374a: 33 05 a4 40  	sub	a0, s0, a0
8020374e: 03 35 05 c0  	ld	a0, -1024(a0)
80203752: 81 45        	li	a1, 0
80203754: 97 50 00 00  	auipc	ra, 5
80203758: e7 80 60 83  	jalr	-1994(ra)
8020375c: 13 06 10 08  	li	a2, 129
80203760: 09 65        	lui	a0, 2
80203762: 33 05 a4 40  	sub	a0, s0, a0
80203766: 03 35 85 bf  	ld	a0, -1032(a0)
8020376a: 81 45        	li	a1, 0
8020376c: 97 50 00 00  	auipc	ra, 5
80203770: e7 80 e0 81  	jalr	-2018(ra)
80203774: 13 06 10 08  	li	a2, 129
80203778: 09 65        	lui	a0, 2
8020377a: 33 05 a4 40  	sub	a0, s0, a0
8020377e: 03 35 05 bf  	ld	a0, -1040(a0)
80203782: 81 45        	li	a1, 0
80203784: 97 50 00 00  	auipc	ra, 5
80203788: e7 80 60 80  	jalr	-2042(ra)
8020378c: 13 85 04 01  	addi	a0, s1, 16
80203790: 45 46        	li	a2, 17
80203792: 26 06        	slli	a2, a2, 9
80203794: 89 65        	lui	a1, 2
80203796: 9b 85 85 27  	addiw	a1, a1, 632
8020379a: b3 05 b4 40  	sub	a1, s0, a1
8020379e: 97 40 00 00  	auipc	ra, 4
802037a2: e7 80 40 7f  	jalr	2036(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802037a6: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802037aa: 23 84 0a 00  	sb	zero, 8(s5)
802037ae: 0f 00 10 03  	fence	rw, w
802037b2: 23 b0 a4 01  	sd	s10, 0(s1)
802037b6: 09 65        	lui	a0, 2
802037b8: 1b 05 85 28  	addiw	a0, a0, 648
802037bc: 33 05 a4 40  	sub	a0, s0, a0
802037c0: 97 40 00 00  	auipc	ra, 4
802037c4: e7 80 00 b5  	jalr	-1200(ra)
802037c8: 31 a8        	j	0x802037e4 <.Lpcrel_hi34+0x9e4>
802037ca: 0f 00 00 01  	fence	w, 0
802037ce: 0f 00 30 03  	fence	rw, rw
802037d2: 88 60        	ld	a0, 0(s1)
802037d4: 0f 00 30 02  	fence	r, rw
;             match status {
802037d8: e3 09 b5 ff  	beq	a0, s11, 0x802037ca <.Lpcrel_hi34+0x9ca>
802037dc: 63 04 a5 01  	beq	a0, s10, 0x802037e4 <.Lpcrel_hi34+0x9e4>
802037e0: 6f 10 10 3d  	j	0x802053b0 <.Lpcrel_hi44+0x18>
802037e4: 63 64 7b 01  	bltu	s6, s7, 0x802037ec <.Lpcrel_hi34+0x9ec>
802037e8: 6f 10 10 35  	j	0x80205338 <.Lpcrel_hi39>
;     if mc.noff == 0 {
802037ec: b3 05 8b 03  	mul	a1, s6, s8
802037f0: a6 95        	add	a1, a1, s1
802037f2: c8 65        	ld	a0, 136(a1)
802037f4: 11 e5        	bnez	a0, 0x80203800 <.Lpcrel_hi34+0xa00>
;         mc.intena = old;
802037f6: 7a 19        	slli	s2, s2, 62
802037f8: 13 56 f9 03  	srli	a2, s2, 63
802037fc: 23 88 c5 08  	sb	a2, 144(a1)
80203800: 93 85 85 08  	addi	a1, a1, 136
;     mc.noff += 1;
80203804: 05 05        	addi	a0, a0, 1
80203806: 88 e1        	sd	a0, 0(a1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203808: 13 05 80 17  	li	a0, 376
8020380c: 33 09 aa 02  	mul	s2, s4, a0
80203810: 09 65        	lui	a0, 2
80203812: 33 05 a4 40  	sub	a0, s0, a0
80203816: 03 35 05 d7  	ld	a0, -656(a0)
8020381a: 2a 99        	add	s2, s2, a0
8020381c: 03 05 89 09  	lb	a0, 152(s2)
80203820: 05 0a        	addi	s4, s4, 1
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203822: 93 0a 89 09  	addi	s5, s2, 152
80203826: 63 06 05 6a  	beqz	a0, 0x80203ed2 <.Lpcrel_hi34+0x10d2>
8020382a: 83 3c 09 09  	ld	s9, 144(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020382e: 12 8b        	mv	s6, tp
80203830: 0f 00 30 03  	fence	rw, rw
80203834: 88 60        	ld	a0, 0(s1)
80203836: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020383a: 63 1a 05 66  	bnez	a0, 0x80203eae <.Lpcrel_hi34+0x10ae>
8020383e: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80203842: 63 16 05 66  	bnez	a0, 0x80203eae <.Lpcrel_hi34+0x10ae>
80203846: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
8020384a: f5 f9        	bnez	a1, 0x8020383e <.Lpcrel_hi34+0xa3e>
8020384c: 09 65        	lui	a0, 2
8020384e: 1b 05 85 28  	addiw	a0, a0, 648
80203852: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203856: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80203858: 09 65        	lui	a0, 2
8020385a: 1b 05 85 27  	addiw	a0, a0, 632
8020385e: 33 05 a4 40  	sub	a0, s0, a0
80203862: 13 06 10 08  	li	a2, 129
80203866: 81 45        	li	a1, 0
80203868: 97 40 00 00  	auipc	ra, 4
8020386c: e7 80 20 72  	jalr	1826(ra)
80203870: 13 06 10 08  	li	a2, 129
80203874: 09 65        	lui	a0, 2
80203876: 1b 05 05 1f  	addiw	a0, a0, 496
8020387a: 33 05 a4 40  	sub	a0, s0, a0
8020387e: 81 45        	li	a1, 0
80203880: 97 40 00 00  	auipc	ra, 4
80203884: e7 80 a0 70  	jalr	1802(ra)
80203888: 13 06 10 08  	li	a2, 129
8020388c: 09 65        	lui	a0, 2
8020388e: 1b 05 85 16  	addiw	a0, a0, 360
80203892: 33 05 a4 40  	sub	a0, s0, a0
80203896: 81 45        	li	a1, 0
80203898: 97 40 00 00  	auipc	ra, 4
8020389c: e7 80 20 6f  	jalr	1778(ra)
802038a0: 13 06 10 08  	li	a2, 129
802038a4: 09 65        	lui	a0, 2
802038a6: 1b 05 05 0e  	addiw	a0, a0, 224
802038aa: 33 05 a4 40  	sub	a0, s0, a0
802038ae: 81 45        	li	a1, 0
802038b0: 97 40 00 00  	auipc	ra, 4
802038b4: e7 80 a0 6d  	jalr	1754(ra)
802038b8: 13 06 10 08  	li	a2, 129
802038bc: 09 65        	lui	a0, 2
802038be: 1b 05 85 05  	addiw	a0, a0, 88
802038c2: 33 05 a4 40  	sub	a0, s0, a0
802038c6: 81 45        	li	a1, 0
802038c8: 97 40 00 00  	auipc	ra, 4
802038cc: e7 80 20 6c  	jalr	1730(ra)
802038d0: 13 06 10 08  	li	a2, 129
802038d4: 09 65        	lui	a0, 2
802038d6: 1b 05 05 fd  	addiw	a0, a0, -48
802038da: 33 05 a4 40  	sub	a0, s0, a0
802038de: 81 45        	li	a1, 0
802038e0: 97 40 00 00  	auipc	ra, 4
802038e4: e7 80 a0 6a  	jalr	1706(ra)
802038e8: 13 06 10 08  	li	a2, 129
802038ec: 09 65        	lui	a0, 2
802038ee: 1b 05 85 f4  	addiw	a0, a0, -184
802038f2: 33 05 a4 40  	sub	a0, s0, a0
802038f6: 81 45        	li	a1, 0
802038f8: 97 40 00 00  	auipc	ra, 4
802038fc: e7 80 20 69  	jalr	1682(ra)
80203900: 13 06 10 08  	li	a2, 129
80203904: 09 65        	lui	a0, 2
80203906: 1b 05 05 ec  	addiw	a0, a0, -320
8020390a: 33 05 a4 40  	sub	a0, s0, a0
8020390e: 81 45        	li	a1, 0
80203910: 97 40 00 00  	auipc	ra, 4
80203914: e7 80 a0 67  	jalr	1658(ra)
80203918: 13 06 10 08  	li	a2, 129
8020391c: 09 65        	lui	a0, 2
8020391e: 1b 05 85 e3  	addiw	a0, a0, -456
80203922: 33 05 a4 40  	sub	a0, s0, a0
80203926: 81 45        	li	a1, 0
80203928: 97 40 00 00  	auipc	ra, 4
8020392c: e7 80 20 66  	jalr	1634(ra)
80203930: 13 06 10 08  	li	a2, 129
80203934: 09 65        	lui	a0, 2
80203936: 1b 05 05 db  	addiw	a0, a0, -592
8020393a: 33 05 a4 40  	sub	a0, s0, a0
8020393e: 81 45        	li	a1, 0
80203940: 97 40 00 00  	auipc	ra, 4
80203944: e7 80 a0 64  	jalr	1610(ra)
80203948: 13 06 10 08  	li	a2, 129
8020394c: 09 65        	lui	a0, 2
8020394e: 1b 05 85 d2  	addiw	a0, a0, -728
80203952: 33 05 a4 40  	sub	a0, s0, a0
80203956: 81 45        	li	a1, 0
80203958: 97 40 00 00  	auipc	ra, 4
8020395c: e7 80 20 63  	jalr	1586(ra)
80203960: 13 06 10 08  	li	a2, 129
80203964: 09 65        	lui	a0, 2
80203966: 1b 05 05 ca  	addiw	a0, a0, -864
8020396a: 33 05 a4 40  	sub	a0, s0, a0
8020396e: 81 45        	li	a1, 0
80203970: 97 40 00 00  	auipc	ra, 4
80203974: e7 80 a0 61  	jalr	1562(ra)
80203978: 13 06 10 08  	li	a2, 129
8020397c: 09 65        	lui	a0, 2
8020397e: 1b 05 85 c1  	addiw	a0, a0, -1000
80203982: 33 05 a4 40  	sub	a0, s0, a0
80203986: 81 45        	li	a1, 0
80203988: 97 40 00 00  	auipc	ra, 4
8020398c: e7 80 20 60  	jalr	1538(ra)
80203990: 13 06 10 08  	li	a2, 129
80203994: 09 65        	lui	a0, 2
80203996: 1b 05 05 b9  	addiw	a0, a0, -1136
8020399a: 33 05 a4 40  	sub	a0, s0, a0
8020399e: 81 45        	li	a1, 0
802039a0: 97 40 00 00  	auipc	ra, 4
802039a4: e7 80 a0 5e  	jalr	1514(ra)
802039a8: 13 06 10 08  	li	a2, 129
802039ac: 09 65        	lui	a0, 2
802039ae: 1b 05 85 b0  	addiw	a0, a0, -1272
802039b2: 33 05 a4 40  	sub	a0, s0, a0
802039b6: 81 45        	li	a1, 0
802039b8: 97 40 00 00  	auipc	ra, 4
802039bc: e7 80 20 5d  	jalr	1490(ra)
802039c0: 13 06 10 08  	li	a2, 129
802039c4: 09 65        	lui	a0, 2
802039c6: 1b 05 05 a8  	addiw	a0, a0, -1408
802039ca: 33 05 a4 40  	sub	a0, s0, a0
802039ce: 81 45        	li	a1, 0
802039d0: 97 40 00 00  	auipc	ra, 4
802039d4: e7 80 a0 5b  	jalr	1466(ra)
802039d8: 13 06 10 08  	li	a2, 129
802039dc: 09 65        	lui	a0, 2
802039de: 33 05 a4 40  	sub	a0, s0, a0
802039e2: 03 35 85 d6  	ld	a0, -664(a0)
802039e6: 81 45        	li	a1, 0
802039e8: 97 40 00 00  	auipc	ra, 4
802039ec: e7 80 20 5a  	jalr	1442(ra)
802039f0: 13 06 10 08  	li	a2, 129
802039f4: 09 65        	lui	a0, 2
802039f6: 33 05 a4 40  	sub	a0, s0, a0
802039fa: 03 35 05 d6  	ld	a0, -672(a0)
802039fe: 81 45        	li	a1, 0
80203a00: 97 40 00 00  	auipc	ra, 4
80203a04: e7 80 a0 58  	jalr	1418(ra)
80203a08: 13 06 10 08  	li	a2, 129
80203a0c: 09 65        	lui	a0, 2
80203a0e: 33 05 a4 40  	sub	a0, s0, a0
80203a12: 03 35 85 d5  	ld	a0, -680(a0)
80203a16: 81 45        	li	a1, 0
80203a18: 97 40 00 00  	auipc	ra, 4
80203a1c: e7 80 20 57  	jalr	1394(ra)
80203a20: 13 06 10 08  	li	a2, 129
80203a24: 09 65        	lui	a0, 2
80203a26: 33 05 a4 40  	sub	a0, s0, a0
80203a2a: 03 35 05 d5  	ld	a0, -688(a0)
80203a2e: 81 45        	li	a1, 0
80203a30: 97 40 00 00  	auipc	ra, 4
80203a34: e7 80 a0 55  	jalr	1370(ra)
80203a38: 13 06 10 08  	li	a2, 129
80203a3c: 09 65        	lui	a0, 2
80203a3e: 33 05 a4 40  	sub	a0, s0, a0
80203a42: 03 35 85 d4  	ld	a0, -696(a0)
80203a46: 81 45        	li	a1, 0
80203a48: 97 40 00 00  	auipc	ra, 4
80203a4c: e7 80 20 54  	jalr	1346(ra)
80203a50: 13 06 10 08  	li	a2, 129
80203a54: 09 65        	lui	a0, 2
80203a56: 33 05 a4 40  	sub	a0, s0, a0
80203a5a: 03 35 05 d4  	ld	a0, -704(a0)
80203a5e: 81 45        	li	a1, 0
80203a60: 97 40 00 00  	auipc	ra, 4
80203a64: e7 80 a0 52  	jalr	1322(ra)
80203a68: 13 06 10 08  	li	a2, 129
80203a6c: 09 65        	lui	a0, 2
80203a6e: 33 05 a4 40  	sub	a0, s0, a0
80203a72: 03 35 85 d3  	ld	a0, -712(a0)
80203a76: 81 45        	li	a1, 0
80203a78: 97 40 00 00  	auipc	ra, 4
80203a7c: e7 80 20 51  	jalr	1298(ra)
80203a80: 13 06 10 08  	li	a2, 129
80203a84: 09 65        	lui	a0, 2
80203a86: 33 05 a4 40  	sub	a0, s0, a0
80203a8a: 03 35 05 d3  	ld	a0, -720(a0)
80203a8e: 81 45        	li	a1, 0
80203a90: 97 40 00 00  	auipc	ra, 4
80203a94: e7 80 a0 4f  	jalr	1274(ra)
80203a98: 13 06 10 08  	li	a2, 129
80203a9c: 09 65        	lui	a0, 2
80203a9e: 33 05 a4 40  	sub	a0, s0, a0
80203aa2: 03 35 85 d2  	ld	a0, -728(a0)
80203aa6: 81 45        	li	a1, 0
80203aa8: 97 40 00 00  	auipc	ra, 4
80203aac: e7 80 20 4e  	jalr	1250(ra)
80203ab0: 13 06 10 08  	li	a2, 129
80203ab4: 09 65        	lui	a0, 2
80203ab6: 33 05 a4 40  	sub	a0, s0, a0
80203aba: 03 35 05 d2  	ld	a0, -736(a0)
80203abe: 81 45        	li	a1, 0
80203ac0: 97 40 00 00  	auipc	ra, 4
80203ac4: e7 80 a0 4c  	jalr	1226(ra)
80203ac8: 13 06 10 08  	li	a2, 129
80203acc: 09 65        	lui	a0, 2
80203ace: 33 05 a4 40  	sub	a0, s0, a0
80203ad2: 03 35 85 d1  	ld	a0, -744(a0)
80203ad6: 81 45        	li	a1, 0
80203ad8: 97 40 00 00  	auipc	ra, 4
80203adc: e7 80 20 4b  	jalr	1202(ra)
80203ae0: 13 06 10 08  	li	a2, 129
80203ae4: 09 65        	lui	a0, 2
80203ae6: 33 05 a4 40  	sub	a0, s0, a0
80203aea: 03 35 05 d1  	ld	a0, -752(a0)
80203aee: 81 45        	li	a1, 0
80203af0: 97 40 00 00  	auipc	ra, 4
80203af4: e7 80 a0 49  	jalr	1178(ra)
80203af8: 13 06 10 08  	li	a2, 129
80203afc: 09 65        	lui	a0, 2
80203afe: 33 05 a4 40  	sub	a0, s0, a0
80203b02: 03 35 85 d0  	ld	a0, -760(a0)
80203b06: 81 45        	li	a1, 0
80203b08: 97 40 00 00  	auipc	ra, 4
80203b0c: e7 80 20 48  	jalr	1154(ra)
80203b10: 13 06 10 08  	li	a2, 129
80203b14: 09 65        	lui	a0, 2
80203b16: 33 05 a4 40  	sub	a0, s0, a0
80203b1a: 03 35 05 d0  	ld	a0, -768(a0)
80203b1e: 81 45        	li	a1, 0
80203b20: 97 40 00 00  	auipc	ra, 4
80203b24: e7 80 a0 46  	jalr	1130(ra)
80203b28: 13 06 10 08  	li	a2, 129
80203b2c: 09 65        	lui	a0, 2
80203b2e: 33 05 a4 40  	sub	a0, s0, a0
80203b32: 03 35 85 cf  	ld	a0, -776(a0)
80203b36: 81 45        	li	a1, 0
80203b38: 97 40 00 00  	auipc	ra, 4
80203b3c: e7 80 20 45  	jalr	1106(ra)
80203b40: 13 06 10 08  	li	a2, 129
80203b44: 09 65        	lui	a0, 2
80203b46: 33 05 a4 40  	sub	a0, s0, a0
80203b4a: 03 35 05 cf  	ld	a0, -784(a0)
80203b4e: 81 45        	li	a1, 0
80203b50: 97 40 00 00  	auipc	ra, 4
80203b54: e7 80 a0 43  	jalr	1082(ra)
80203b58: 13 06 10 08  	li	a2, 129
80203b5c: 09 65        	lui	a0, 2
80203b5e: 33 05 a4 40  	sub	a0, s0, a0
80203b62: 03 35 85 ce  	ld	a0, -792(a0)
80203b66: 81 45        	li	a1, 0
80203b68: 97 40 00 00  	auipc	ra, 4
80203b6c: e7 80 20 42  	jalr	1058(ra)
80203b70: 13 06 10 08  	li	a2, 129
80203b74: 09 65        	lui	a0, 2
80203b76: 33 05 a4 40  	sub	a0, s0, a0
80203b7a: 03 35 05 ce  	ld	a0, -800(a0)
80203b7e: 81 45        	li	a1, 0
80203b80: 97 40 00 00  	auipc	ra, 4
80203b84: e7 80 a0 40  	jalr	1034(ra)
80203b88: 13 06 10 08  	li	a2, 129
80203b8c: 09 65        	lui	a0, 2
80203b8e: 33 05 a4 40  	sub	a0, s0, a0
80203b92: 03 35 85 cd  	ld	a0, -808(a0)
80203b96: 81 45        	li	a1, 0
80203b98: 97 40 00 00  	auipc	ra, 4
80203b9c: e7 80 20 3f  	jalr	1010(ra)
80203ba0: 13 06 10 08  	li	a2, 129
80203ba4: 09 65        	lui	a0, 2
80203ba6: 33 05 a4 40  	sub	a0, s0, a0
80203baa: 03 35 05 cd  	ld	a0, -816(a0)
80203bae: 81 45        	li	a1, 0
80203bb0: 97 40 00 00  	auipc	ra, 4
80203bb4: e7 80 a0 3d  	jalr	986(ra)
80203bb8: 13 06 10 08  	li	a2, 129
80203bbc: 09 65        	lui	a0, 2
80203bbe: 33 05 a4 40  	sub	a0, s0, a0
80203bc2: 03 35 85 cc  	ld	a0, -824(a0)
80203bc6: 81 45        	li	a1, 0
80203bc8: 97 40 00 00  	auipc	ra, 4
80203bcc: e7 80 20 3c  	jalr	962(ra)
80203bd0: 13 06 10 08  	li	a2, 129
80203bd4: 09 65        	lui	a0, 2
80203bd6: 33 05 a4 40  	sub	a0, s0, a0
80203bda: 03 35 05 cc  	ld	a0, -832(a0)
80203bde: 81 45        	li	a1, 0
80203be0: 97 40 00 00  	auipc	ra, 4
80203be4: e7 80 a0 3a  	jalr	938(ra)
80203be8: 13 06 10 08  	li	a2, 129
80203bec: 09 65        	lui	a0, 2
80203bee: 33 05 a4 40  	sub	a0, s0, a0
80203bf2: 03 35 85 cb  	ld	a0, -840(a0)
80203bf6: 81 45        	li	a1, 0
80203bf8: 97 40 00 00  	auipc	ra, 4
80203bfc: e7 80 20 39  	jalr	914(ra)
80203c00: 13 06 10 08  	li	a2, 129
80203c04: 09 65        	lui	a0, 2
80203c06: 33 05 a4 40  	sub	a0, s0, a0
80203c0a: 03 35 05 cb  	ld	a0, -848(a0)
80203c0e: 81 45        	li	a1, 0
80203c10: 97 40 00 00  	auipc	ra, 4
80203c14: e7 80 a0 37  	jalr	890(ra)
80203c18: 13 06 10 08  	li	a2, 129
80203c1c: 09 65        	lui	a0, 2
80203c1e: 33 05 a4 40  	sub	a0, s0, a0
80203c22: 03 35 85 ca  	ld	a0, -856(a0)
80203c26: 81 45        	li	a1, 0
80203c28: 97 40 00 00  	auipc	ra, 4
80203c2c: e7 80 20 36  	jalr	866(ra)
80203c30: 13 06 10 08  	li	a2, 129
80203c34: 09 65        	lui	a0, 2
80203c36: 33 05 a4 40  	sub	a0, s0, a0
80203c3a: 03 35 05 ca  	ld	a0, -864(a0)
80203c3e: 81 45        	li	a1, 0
80203c40: 97 40 00 00  	auipc	ra, 4
80203c44: e7 80 a0 34  	jalr	842(ra)
80203c48: 13 06 10 08  	li	a2, 129
80203c4c: 09 65        	lui	a0, 2
80203c4e: 33 05 a4 40  	sub	a0, s0, a0
80203c52: 03 35 85 c9  	ld	a0, -872(a0)
80203c56: 81 45        	li	a1, 0
80203c58: 97 40 00 00  	auipc	ra, 4
80203c5c: e7 80 20 33  	jalr	818(ra)
80203c60: 13 06 10 08  	li	a2, 129
80203c64: 09 65        	lui	a0, 2
80203c66: 33 05 a4 40  	sub	a0, s0, a0
80203c6a: 03 35 05 c9  	ld	a0, -880(a0)
80203c6e: 81 45        	li	a1, 0
80203c70: 97 40 00 00  	auipc	ra, 4
80203c74: e7 80 a0 31  	jalr	794(ra)
80203c78: 13 06 10 08  	li	a2, 129
80203c7c: 09 65        	lui	a0, 2
80203c7e: 33 05 a4 40  	sub	a0, s0, a0
80203c82: 03 35 85 c8  	ld	a0, -888(a0)
80203c86: 81 45        	li	a1, 0
80203c88: 97 40 00 00  	auipc	ra, 4
80203c8c: e7 80 20 30  	jalr	770(ra)
80203c90: 13 06 10 08  	li	a2, 129
80203c94: 09 65        	lui	a0, 2
80203c96: 33 05 a4 40  	sub	a0, s0, a0
80203c9a: 03 35 05 c8  	ld	a0, -896(a0)
80203c9e: 81 45        	li	a1, 0
80203ca0: 97 40 00 00  	auipc	ra, 4
80203ca4: e7 80 a0 2e  	jalr	746(ra)
80203ca8: 13 06 10 08  	li	a2, 129
80203cac: 09 65        	lui	a0, 2
80203cae: 33 05 a4 40  	sub	a0, s0, a0
80203cb2: 03 35 85 c7  	ld	a0, -904(a0)
80203cb6: 81 45        	li	a1, 0
80203cb8: 97 40 00 00  	auipc	ra, 4
80203cbc: e7 80 20 2d  	jalr	722(ra)
80203cc0: 13 06 10 08  	li	a2, 129
80203cc4: 09 65        	lui	a0, 2
80203cc6: 33 05 a4 40  	sub	a0, s0, a0
80203cca: 03 35 05 c7  	ld	a0, -912(a0)
80203cce: 81 45        	li	a1, 0
80203cd0: 97 40 00 00  	auipc	ra, 4
80203cd4: e7 80 a0 2b  	jalr	698(ra)
80203cd8: 13 06 10 08  	li	a2, 129
80203cdc: 09 65        	lui	a0, 2
80203cde: 33 05 a4 40  	sub	a0, s0, a0
80203ce2: 03 35 85 c6  	ld	a0, -920(a0)
80203ce6: 81 45        	li	a1, 0
80203ce8: 97 40 00 00  	auipc	ra, 4
80203cec: e7 80 20 2a  	jalr	674(ra)
80203cf0: 13 06 10 08  	li	a2, 129
80203cf4: 09 65        	lui	a0, 2
80203cf6: 33 05 a4 40  	sub	a0, s0, a0
80203cfa: 03 35 05 c6  	ld	a0, -928(a0)
80203cfe: 81 45        	li	a1, 0
80203d00: 97 40 00 00  	auipc	ra, 4
80203d04: e7 80 a0 28  	jalr	650(ra)
80203d08: 13 06 10 08  	li	a2, 129
80203d0c: 09 65        	lui	a0, 2
80203d0e: 33 05 a4 40  	sub	a0, s0, a0
80203d12: 03 35 85 c5  	ld	a0, -936(a0)
80203d16: 81 45        	li	a1, 0
80203d18: 97 40 00 00  	auipc	ra, 4
80203d1c: e7 80 20 27  	jalr	626(ra)
80203d20: 13 06 10 08  	li	a2, 129
80203d24: 09 65        	lui	a0, 2
80203d26: 33 05 a4 40  	sub	a0, s0, a0
80203d2a: 03 35 05 c5  	ld	a0, -944(a0)
80203d2e: 81 45        	li	a1, 0
80203d30: 97 40 00 00  	auipc	ra, 4
80203d34: e7 80 a0 25  	jalr	602(ra)
80203d38: 13 06 10 08  	li	a2, 129
80203d3c: 09 65        	lui	a0, 2
80203d3e: 33 05 a4 40  	sub	a0, s0, a0
80203d42: 03 35 85 c4  	ld	a0, -952(a0)
80203d46: 81 45        	li	a1, 0
80203d48: 97 40 00 00  	auipc	ra, 4
80203d4c: e7 80 20 24  	jalr	578(ra)
80203d50: 13 06 10 08  	li	a2, 129
80203d54: 09 65        	lui	a0, 2
80203d56: 33 05 a4 40  	sub	a0, s0, a0
80203d5a: 03 35 05 c4  	ld	a0, -960(a0)
80203d5e: 81 45        	li	a1, 0
80203d60: 97 40 00 00  	auipc	ra, 4
80203d64: e7 80 a0 22  	jalr	554(ra)
80203d68: 13 06 10 08  	li	a2, 129
80203d6c: 09 65        	lui	a0, 2
80203d6e: 33 05 a4 40  	sub	a0, s0, a0
80203d72: 03 35 85 c3  	ld	a0, -968(a0)
80203d76: 81 45        	li	a1, 0
80203d78: 97 40 00 00  	auipc	ra, 4
80203d7c: e7 80 20 21  	jalr	530(ra)
80203d80: 13 06 10 08  	li	a2, 129
80203d84: 09 65        	lui	a0, 2
80203d86: 33 05 a4 40  	sub	a0, s0, a0
80203d8a: 03 35 05 c3  	ld	a0, -976(a0)
80203d8e: 81 45        	li	a1, 0
80203d90: 97 40 00 00  	auipc	ra, 4
80203d94: e7 80 a0 1f  	jalr	506(ra)
80203d98: 13 06 10 08  	li	a2, 129
80203d9c: 09 65        	lui	a0, 2
80203d9e: 33 05 a4 40  	sub	a0, s0, a0
80203da2: 03 35 85 c2  	ld	a0, -984(a0)
80203da6: 81 45        	li	a1, 0
80203da8: 97 40 00 00  	auipc	ra, 4
80203dac: e7 80 20 1e  	jalr	482(ra)
80203db0: 13 06 10 08  	li	a2, 129
80203db4: 09 65        	lui	a0, 2
80203db6: 33 05 a4 40  	sub	a0, s0, a0
80203dba: 03 35 05 c2  	ld	a0, -992(a0)
80203dbe: 81 45        	li	a1, 0
80203dc0: 97 40 00 00  	auipc	ra, 4
80203dc4: e7 80 a0 1c  	jalr	458(ra)
80203dc8: 13 06 10 08  	li	a2, 129
80203dcc: 09 65        	lui	a0, 2
80203dce: 33 05 a4 40  	sub	a0, s0, a0
80203dd2: 03 35 85 c1  	ld	a0, -1000(a0)
80203dd6: 81 45        	li	a1, 0
80203dd8: 97 40 00 00  	auipc	ra, 4
80203ddc: e7 80 20 1b  	jalr	434(ra)
80203de0: 13 06 10 08  	li	a2, 129
80203de4: 09 65        	lui	a0, 2
80203de6: 33 05 a4 40  	sub	a0, s0, a0
80203dea: 03 35 05 c1  	ld	a0, -1008(a0)
80203dee: 81 45        	li	a1, 0
80203df0: 97 40 00 00  	auipc	ra, 4
80203df4: e7 80 a0 19  	jalr	410(ra)
80203df8: 13 06 10 08  	li	a2, 129
80203dfc: 09 65        	lui	a0, 2
80203dfe: 33 05 a4 40  	sub	a0, s0, a0
80203e02: 03 35 85 c0  	ld	a0, -1016(a0)
80203e06: 81 45        	li	a1, 0
80203e08: 97 40 00 00  	auipc	ra, 4
80203e0c: e7 80 20 18  	jalr	386(ra)
80203e10: 13 06 10 08  	li	a2, 129
80203e14: 09 65        	lui	a0, 2
80203e16: 33 05 a4 40  	sub	a0, s0, a0
80203e1a: 03 35 05 c0  	ld	a0, -1024(a0)
80203e1e: 81 45        	li	a1, 0
80203e20: 97 40 00 00  	auipc	ra, 4
80203e24: e7 80 a0 16  	jalr	362(ra)
80203e28: 13 06 10 08  	li	a2, 129
80203e2c: 09 65        	lui	a0, 2
80203e2e: 33 05 a4 40  	sub	a0, s0, a0
80203e32: 03 35 85 bf  	ld	a0, -1032(a0)
80203e36: 81 45        	li	a1, 0
80203e38: 97 40 00 00  	auipc	ra, 4
80203e3c: e7 80 20 15  	jalr	338(ra)
80203e40: 13 06 10 08  	li	a2, 129
80203e44: 09 65        	lui	a0, 2
80203e46: 33 05 a4 40  	sub	a0, s0, a0
80203e4a: 03 35 05 bf  	ld	a0, -1040(a0)
80203e4e: 81 45        	li	a1, 0
80203e50: 97 40 00 00  	auipc	ra, 4
80203e54: e7 80 a0 13  	jalr	314(ra)
80203e58: 13 85 04 01  	addi	a0, s1, 16
80203e5c: 45 46        	li	a2, 17
80203e5e: 26 06        	slli	a2, a2, 9
80203e60: 89 65        	lui	a1, 2
80203e62: 9b 85 85 27  	addiw	a1, a1, 632
80203e66: b3 05 b4 40  	sub	a1, s0, a1
80203e6a: 97 40 00 00  	auipc	ra, 4
80203e6e: e7 80 80 12  	jalr	296(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80203e72: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80203e76: 09 65        	lui	a0, 2
80203e78: 1b 05 85 28  	addiw	a0, a0, 648
80203e7c: 33 05 a4 40  	sub	a0, s0, a0
80203e80: 23 04 05 00  	sb	zero, 8(a0)
80203e84: 0f 00 10 03  	fence	rw, w
80203e88: 23 b0 a4 01  	sd	s10, 0(s1)
80203e8c: 09 65        	lui	a0, 2
80203e8e: 1b 05 85 28  	addiw	a0, a0, 648
80203e92: 33 05 a4 40  	sub	a0, s0, a0
80203e96: 97 30 00 00  	auipc	ra, 3
80203e9a: e7 80 a0 47  	jalr	1146(ra)
80203e9e: 31 a8        	j	0x80203eba <.Lpcrel_hi34+0x10ba>
80203ea0: 0f 00 00 01  	fence	w, 0
80203ea4: 0f 00 30 03  	fence	rw, rw
80203ea8: 88 60        	ld	a0, 0(s1)
80203eaa: 0f 00 30 02  	fence	r, rw
;             match status {
80203eae: e3 09 b5 ff  	beq	a0, s11, 0x80203ea0 <.Lpcrel_hi34+0x10a0>
80203eb2: 63 04 a5 01  	beq	a0, s10, 0x80203eba <.Lpcrel_hi34+0x10ba>
80203eb6: 6f 10 a0 54  	j	0x80205400 <.Lpcrel_hi59+0xa>
80203eba: 63 64 7b 01  	bltu	s6, s7, 0x80203ec2 <.Lpcrel_hi34+0x10c2>
80203ebe: 6f 10 a0 4d  	j	0x80205398 <.Lpcrel_hi44>
; 	&mut CPUS.get_mut()[id]
80203ec2: 33 05 8b 03  	mul	a0, s6, s8
80203ec6: 26 95        	add	a0, a0, s1
80203ec8: 41 05        	addi	a0, a0, 16
;         if self.holding() {
80203eca: 63 94 ac 00  	bne	s9, a0, 0x80203ed2 <.Lpcrel_hi34+0x10d2>
80203ece: 6f 10 a0 66  	j	0x80205538 <.Lpcrel_hi45>
80203ed2: 13 f5 ca ff  	andi	a0, s5, -4
80203ed6: af 25 05 14  	lr.w.aq	a1, (a0)
80203eda: 33 f6 35 01  	and	a2, a1, s3
80203ede: 09 ea        	bnez	a2, 0x80203ef0 <.Lpcrel_hi34+0x10f0>
80203ee0: 33 c6 b5 01  	xor	a2, a1, s11
80203ee4: 33 76 36 01  	and	a2, a2, s3
80203ee8: 2d 8e        	xor	a2, a2, a1
80203eea: 2f 26 c5 18  	sc.w	a2, a2, (a0)
80203eee: 65 f6        	bnez	a2, 0x80203ed6 <.Lpcrel_hi34+0x10d6>
80203ef0: 13 f5 f5 0f  	andi	a0, a1, 255
;         while self
80203ef4: 79 fd        	bnez	a0, 0x80203ed2 <.Lpcrel_hi34+0x10d2>
80203ef6: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203efa: 12 8b        	mv	s6, tp
80203efc: 0f 00 30 03  	fence	rw, rw
80203f00: 88 60        	ld	a0, 0(s1)
80203f02: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203f06: 63 16 05 66  	bnez	a0, 0x80204572 <.Lpcrel_hi34+0x1772>
80203f0a: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80203f0e: 63 12 05 66  	bnez	a0, 0x80204572 <.Lpcrel_hi34+0x1772>
80203f12: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80203f16: f5 f9        	bnez	a1, 0x80203f0a <.Lpcrel_hi34+0x110a>
80203f18: 09 65        	lui	a0, 2
80203f1a: 1b 05 85 28  	addiw	a0, a0, 648
80203f1e: b3 0c a4 40  	sub	s9, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203f22: 23 b0 9c 00  	sd	s1, 0(s9)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80203f26: 09 65        	lui	a0, 2
80203f28: 1b 05 85 27  	addiw	a0, a0, 632
80203f2c: 33 05 a4 40  	sub	a0, s0, a0
80203f30: 13 06 10 08  	li	a2, 129
80203f34: 81 45        	li	a1, 0
80203f36: 97 40 00 00  	auipc	ra, 4
80203f3a: e7 80 40 05  	jalr	84(ra)
80203f3e: 13 06 10 08  	li	a2, 129
80203f42: 09 65        	lui	a0, 2
80203f44: 1b 05 05 1f  	addiw	a0, a0, 496
80203f48: 33 05 a4 40  	sub	a0, s0, a0
80203f4c: 81 45        	li	a1, 0
80203f4e: 97 40 00 00  	auipc	ra, 4
80203f52: e7 80 c0 03  	jalr	60(ra)
80203f56: 13 06 10 08  	li	a2, 129
80203f5a: 09 65        	lui	a0, 2
80203f5c: 1b 05 85 16  	addiw	a0, a0, 360
80203f60: 33 05 a4 40  	sub	a0, s0, a0
80203f64: 81 45        	li	a1, 0
80203f66: 97 40 00 00  	auipc	ra, 4
80203f6a: e7 80 40 02  	jalr	36(ra)
80203f6e: 13 06 10 08  	li	a2, 129
80203f72: 09 65        	lui	a0, 2
80203f74: 1b 05 05 0e  	addiw	a0, a0, 224
80203f78: 33 05 a4 40  	sub	a0, s0, a0
80203f7c: 81 45        	li	a1, 0
80203f7e: 97 40 00 00  	auipc	ra, 4
80203f82: e7 80 c0 00  	jalr	12(ra)
80203f86: 13 06 10 08  	li	a2, 129
80203f8a: 09 65        	lui	a0, 2
80203f8c: 1b 05 85 05  	addiw	a0, a0, 88
80203f90: 33 05 a4 40  	sub	a0, s0, a0
80203f94: 81 45        	li	a1, 0
80203f96: 97 40 00 00  	auipc	ra, 4
80203f9a: e7 80 40 ff  	jalr	-12(ra)
80203f9e: 13 06 10 08  	li	a2, 129
80203fa2: 09 65        	lui	a0, 2
80203fa4: 1b 05 05 fd  	addiw	a0, a0, -48
80203fa8: 33 05 a4 40  	sub	a0, s0, a0
80203fac: 81 45        	li	a1, 0
80203fae: 97 40 00 00  	auipc	ra, 4
80203fb2: e7 80 c0 fd  	jalr	-36(ra)
80203fb6: 13 06 10 08  	li	a2, 129
80203fba: 09 65        	lui	a0, 2
80203fbc: 1b 05 85 f4  	addiw	a0, a0, -184
80203fc0: 33 05 a4 40  	sub	a0, s0, a0
80203fc4: 81 45        	li	a1, 0
80203fc6: 97 40 00 00  	auipc	ra, 4
80203fca: e7 80 40 fc  	jalr	-60(ra)
80203fce: 13 06 10 08  	li	a2, 129
80203fd2: 09 65        	lui	a0, 2
80203fd4: 1b 05 05 ec  	addiw	a0, a0, -320
80203fd8: 33 05 a4 40  	sub	a0, s0, a0
80203fdc: 81 45        	li	a1, 0
80203fde: 97 40 00 00  	auipc	ra, 4
80203fe2: e7 80 c0 fa  	jalr	-84(ra)
80203fe6: 13 06 10 08  	li	a2, 129
80203fea: 09 65        	lui	a0, 2
80203fec: 1b 05 85 e3  	addiw	a0, a0, -456
80203ff0: 33 05 a4 40  	sub	a0, s0, a0
80203ff4: 81 45        	li	a1, 0
80203ff6: 97 40 00 00  	auipc	ra, 4
80203ffa: e7 80 40 f9  	jalr	-108(ra)
80203ffe: 13 06 10 08  	li	a2, 129
80204002: 09 65        	lui	a0, 2
80204004: 1b 05 05 db  	addiw	a0, a0, -592
80204008: 33 05 a4 40  	sub	a0, s0, a0
8020400c: 81 45        	li	a1, 0
8020400e: 97 40 00 00  	auipc	ra, 4
80204012: e7 80 c0 f7  	jalr	-132(ra)
80204016: 13 06 10 08  	li	a2, 129
8020401a: 09 65        	lui	a0, 2
8020401c: 1b 05 85 d2  	addiw	a0, a0, -728
80204020: 33 05 a4 40  	sub	a0, s0, a0
80204024: 81 45        	li	a1, 0
80204026: 97 40 00 00  	auipc	ra, 4
8020402a: e7 80 40 f6  	jalr	-156(ra)
8020402e: 13 06 10 08  	li	a2, 129
80204032: 09 65        	lui	a0, 2
80204034: 1b 05 05 ca  	addiw	a0, a0, -864
80204038: 33 05 a4 40  	sub	a0, s0, a0
8020403c: 81 45        	li	a1, 0
8020403e: 97 40 00 00  	auipc	ra, 4
80204042: e7 80 c0 f4  	jalr	-180(ra)
80204046: 13 06 10 08  	li	a2, 129
8020404a: 09 65        	lui	a0, 2
8020404c: 1b 05 85 c1  	addiw	a0, a0, -1000
80204050: 33 05 a4 40  	sub	a0, s0, a0
80204054: 81 45        	li	a1, 0
80204056: 97 40 00 00  	auipc	ra, 4
8020405a: e7 80 40 f3  	jalr	-204(ra)
8020405e: 13 06 10 08  	li	a2, 129
80204062: 09 65        	lui	a0, 2
80204064: 1b 05 05 b9  	addiw	a0, a0, -1136
80204068: 33 05 a4 40  	sub	a0, s0, a0
8020406c: 81 45        	li	a1, 0
8020406e: 97 40 00 00  	auipc	ra, 4
80204072: e7 80 c0 f1  	jalr	-228(ra)
80204076: 13 06 10 08  	li	a2, 129
8020407a: 09 65        	lui	a0, 2
8020407c: 1b 05 85 b0  	addiw	a0, a0, -1272
80204080: 33 05 a4 40  	sub	a0, s0, a0
80204084: 81 45        	li	a1, 0
80204086: 97 40 00 00  	auipc	ra, 4
8020408a: e7 80 40 f0  	jalr	-252(ra)
8020408e: 13 06 10 08  	li	a2, 129
80204092: 09 65        	lui	a0, 2
80204094: 1b 05 05 a8  	addiw	a0, a0, -1408
80204098: 33 05 a4 40  	sub	a0, s0, a0
8020409c: 81 45        	li	a1, 0
8020409e: 97 40 00 00  	auipc	ra, 4
802040a2: e7 80 c0 ee  	jalr	-276(ra)
802040a6: 13 06 10 08  	li	a2, 129
802040aa: 09 65        	lui	a0, 2
802040ac: 33 05 a4 40  	sub	a0, s0, a0
802040b0: 03 35 85 d6  	ld	a0, -664(a0)
802040b4: 81 45        	li	a1, 0
802040b6: 97 40 00 00  	auipc	ra, 4
802040ba: e7 80 40 ed  	jalr	-300(ra)
802040be: 13 06 10 08  	li	a2, 129
802040c2: 09 65        	lui	a0, 2
802040c4: 33 05 a4 40  	sub	a0, s0, a0
802040c8: 03 35 05 d6  	ld	a0, -672(a0)
802040cc: 81 45        	li	a1, 0
802040ce: 97 40 00 00  	auipc	ra, 4
802040d2: e7 80 c0 eb  	jalr	-324(ra)
802040d6: 13 06 10 08  	li	a2, 129
802040da: 09 65        	lui	a0, 2
802040dc: 33 05 a4 40  	sub	a0, s0, a0
802040e0: 03 35 85 d5  	ld	a0, -680(a0)
802040e4: 81 45        	li	a1, 0
802040e6: 97 40 00 00  	auipc	ra, 4
802040ea: e7 80 40 ea  	jalr	-348(ra)
802040ee: 13 06 10 08  	li	a2, 129
802040f2: 09 65        	lui	a0, 2
802040f4: 33 05 a4 40  	sub	a0, s0, a0
802040f8: 03 35 05 d5  	ld	a0, -688(a0)
802040fc: 81 45        	li	a1, 0
802040fe: 97 40 00 00  	auipc	ra, 4
80204102: e7 80 c0 e8  	jalr	-372(ra)
80204106: 13 06 10 08  	li	a2, 129
8020410a: 09 65        	lui	a0, 2
8020410c: 33 05 a4 40  	sub	a0, s0, a0
80204110: 03 35 85 d4  	ld	a0, -696(a0)
80204114: 81 45        	li	a1, 0
80204116: 97 40 00 00  	auipc	ra, 4
8020411a: e7 80 40 e7  	jalr	-396(ra)
8020411e: 13 06 10 08  	li	a2, 129
80204122: 09 65        	lui	a0, 2
80204124: 33 05 a4 40  	sub	a0, s0, a0
80204128: 03 35 05 d4  	ld	a0, -704(a0)
8020412c: 81 45        	li	a1, 0
8020412e: 97 40 00 00  	auipc	ra, 4
80204132: e7 80 c0 e5  	jalr	-420(ra)
80204136: 13 06 10 08  	li	a2, 129
8020413a: 09 65        	lui	a0, 2
8020413c: 33 05 a4 40  	sub	a0, s0, a0
80204140: 03 35 85 d3  	ld	a0, -712(a0)
80204144: 81 45        	li	a1, 0
80204146: 97 40 00 00  	auipc	ra, 4
8020414a: e7 80 40 e4  	jalr	-444(ra)
8020414e: 13 06 10 08  	li	a2, 129
80204152: 09 65        	lui	a0, 2
80204154: 33 05 a4 40  	sub	a0, s0, a0
80204158: 03 35 05 d3  	ld	a0, -720(a0)
8020415c: 81 45        	li	a1, 0
8020415e: 97 40 00 00  	auipc	ra, 4
80204162: e7 80 c0 e2  	jalr	-468(ra)
80204166: 13 06 10 08  	li	a2, 129
8020416a: 09 65        	lui	a0, 2
8020416c: 33 05 a4 40  	sub	a0, s0, a0
80204170: 03 35 85 d2  	ld	a0, -728(a0)
80204174: 81 45        	li	a1, 0
80204176: 97 40 00 00  	auipc	ra, 4
8020417a: e7 80 40 e1  	jalr	-492(ra)
8020417e: 13 06 10 08  	li	a2, 129
80204182: 09 65        	lui	a0, 2
80204184: 33 05 a4 40  	sub	a0, s0, a0
80204188: 03 35 05 d2  	ld	a0, -736(a0)
8020418c: 81 45        	li	a1, 0
8020418e: 97 40 00 00  	auipc	ra, 4
80204192: e7 80 c0 df  	jalr	-516(ra)
80204196: 13 06 10 08  	li	a2, 129
8020419a: 09 65        	lui	a0, 2
8020419c: 33 05 a4 40  	sub	a0, s0, a0
802041a0: 03 35 85 d1  	ld	a0, -744(a0)
802041a4: 81 45        	li	a1, 0
802041a6: 97 40 00 00  	auipc	ra, 4
802041aa: e7 80 40 de  	jalr	-540(ra)
802041ae: 13 06 10 08  	li	a2, 129
802041b2: 09 65        	lui	a0, 2
802041b4: 33 05 a4 40  	sub	a0, s0, a0
802041b8: 03 35 05 d1  	ld	a0, -752(a0)
802041bc: 81 45        	li	a1, 0
802041be: 97 40 00 00  	auipc	ra, 4
802041c2: e7 80 c0 dc  	jalr	-564(ra)
802041c6: 13 06 10 08  	li	a2, 129
802041ca: 09 65        	lui	a0, 2
802041cc: 33 05 a4 40  	sub	a0, s0, a0
802041d0: 03 35 85 d0  	ld	a0, -760(a0)
802041d4: 81 45        	li	a1, 0
802041d6: 97 40 00 00  	auipc	ra, 4
802041da: e7 80 40 db  	jalr	-588(ra)
802041de: 13 06 10 08  	li	a2, 129
802041e2: 09 65        	lui	a0, 2
802041e4: 33 05 a4 40  	sub	a0, s0, a0
802041e8: 03 35 05 d0  	ld	a0, -768(a0)
802041ec: 81 45        	li	a1, 0
802041ee: 97 40 00 00  	auipc	ra, 4
802041f2: e7 80 c0 d9  	jalr	-612(ra)
802041f6: 13 06 10 08  	li	a2, 129
802041fa: 09 65        	lui	a0, 2
802041fc: 33 05 a4 40  	sub	a0, s0, a0
80204200: 03 35 85 cf  	ld	a0, -776(a0)
80204204: 81 45        	li	a1, 0
80204206: 97 40 00 00  	auipc	ra, 4
8020420a: e7 80 40 d8  	jalr	-636(ra)
8020420e: 13 06 10 08  	li	a2, 129
80204212: 09 65        	lui	a0, 2
80204214: 33 05 a4 40  	sub	a0, s0, a0
80204218: 03 35 05 cf  	ld	a0, -784(a0)
8020421c: 81 45        	li	a1, 0
8020421e: 97 40 00 00  	auipc	ra, 4
80204222: e7 80 c0 d6  	jalr	-660(ra)
80204226: 13 06 10 08  	li	a2, 129
8020422a: 09 65        	lui	a0, 2
8020422c: 33 05 a4 40  	sub	a0, s0, a0
80204230: 03 35 85 ce  	ld	a0, -792(a0)
80204234: 81 45        	li	a1, 0
80204236: 97 40 00 00  	auipc	ra, 4
8020423a: e7 80 40 d5  	jalr	-684(ra)
8020423e: 13 06 10 08  	li	a2, 129
80204242: 09 65        	lui	a0, 2
80204244: 33 05 a4 40  	sub	a0, s0, a0
80204248: 03 35 05 ce  	ld	a0, -800(a0)
8020424c: 81 45        	li	a1, 0
8020424e: 97 40 00 00  	auipc	ra, 4
80204252: e7 80 c0 d3  	jalr	-708(ra)
80204256: 13 06 10 08  	li	a2, 129
8020425a: 09 65        	lui	a0, 2
8020425c: 33 05 a4 40  	sub	a0, s0, a0
80204260: 03 35 85 cd  	ld	a0, -808(a0)
80204264: 81 45        	li	a1, 0
80204266: 97 40 00 00  	auipc	ra, 4
8020426a: e7 80 40 d2  	jalr	-732(ra)
8020426e: 13 06 10 08  	li	a2, 129
80204272: 09 65        	lui	a0, 2
80204274: 33 05 a4 40  	sub	a0, s0, a0
80204278: 03 35 05 cd  	ld	a0, -816(a0)
8020427c: 81 45        	li	a1, 0
8020427e: 97 40 00 00  	auipc	ra, 4
80204282: e7 80 c0 d0  	jalr	-756(ra)
80204286: 13 06 10 08  	li	a2, 129
8020428a: 09 65        	lui	a0, 2
8020428c: 33 05 a4 40  	sub	a0, s0, a0
80204290: 03 35 85 cc  	ld	a0, -824(a0)
80204294: 81 45        	li	a1, 0
80204296: 97 40 00 00  	auipc	ra, 4
8020429a: e7 80 40 cf  	jalr	-780(ra)
8020429e: 13 06 10 08  	li	a2, 129
802042a2: 09 65        	lui	a0, 2
802042a4: 33 05 a4 40  	sub	a0, s0, a0
802042a8: 03 35 05 cc  	ld	a0, -832(a0)
802042ac: 81 45        	li	a1, 0
802042ae: 97 40 00 00  	auipc	ra, 4
802042b2: e7 80 c0 cd  	jalr	-804(ra)
802042b6: 13 06 10 08  	li	a2, 129
802042ba: 09 65        	lui	a0, 2
802042bc: 33 05 a4 40  	sub	a0, s0, a0
802042c0: 03 35 85 cb  	ld	a0, -840(a0)
802042c4: 81 45        	li	a1, 0
802042c6: 97 40 00 00  	auipc	ra, 4
802042ca: e7 80 40 cc  	jalr	-828(ra)
802042ce: 13 06 10 08  	li	a2, 129
802042d2: 09 65        	lui	a0, 2
802042d4: 33 05 a4 40  	sub	a0, s0, a0
802042d8: 03 35 05 cb  	ld	a0, -848(a0)
802042dc: 81 45        	li	a1, 0
802042de: 97 40 00 00  	auipc	ra, 4
802042e2: e7 80 c0 ca  	jalr	-852(ra)
802042e6: 13 06 10 08  	li	a2, 129
802042ea: 09 65        	lui	a0, 2
802042ec: 33 05 a4 40  	sub	a0, s0, a0
802042f0: 03 35 85 ca  	ld	a0, -856(a0)
802042f4: 81 45        	li	a1, 0
802042f6: 97 40 00 00  	auipc	ra, 4
802042fa: e7 80 40 c9  	jalr	-876(ra)
802042fe: 13 06 10 08  	li	a2, 129
80204302: 09 65        	lui	a0, 2
80204304: 33 05 a4 40  	sub	a0, s0, a0
80204308: 03 35 05 ca  	ld	a0, -864(a0)
8020430c: 81 45        	li	a1, 0
8020430e: 97 40 00 00  	auipc	ra, 4
80204312: e7 80 c0 c7  	jalr	-900(ra)
80204316: 13 06 10 08  	li	a2, 129
8020431a: 09 65        	lui	a0, 2
8020431c: 33 05 a4 40  	sub	a0, s0, a0
80204320: 03 35 85 c9  	ld	a0, -872(a0)
80204324: 81 45        	li	a1, 0
80204326: 97 40 00 00  	auipc	ra, 4
8020432a: e7 80 40 c6  	jalr	-924(ra)
8020432e: 13 06 10 08  	li	a2, 129
80204332: 09 65        	lui	a0, 2
80204334: 33 05 a4 40  	sub	a0, s0, a0
80204338: 03 35 05 c9  	ld	a0, -880(a0)
8020433c: 81 45        	li	a1, 0
8020433e: 97 40 00 00  	auipc	ra, 4
80204342: e7 80 c0 c4  	jalr	-948(ra)
80204346: 13 06 10 08  	li	a2, 129
8020434a: 09 65        	lui	a0, 2
8020434c: 33 05 a4 40  	sub	a0, s0, a0
80204350: 03 35 85 c8  	ld	a0, -888(a0)
80204354: 81 45        	li	a1, 0
80204356: 97 40 00 00  	auipc	ra, 4
8020435a: e7 80 40 c3  	jalr	-972(ra)
8020435e: 13 06 10 08  	li	a2, 129
80204362: 09 65        	lui	a0, 2
80204364: 33 05 a4 40  	sub	a0, s0, a0
80204368: 03 35 05 c8  	ld	a0, -896(a0)
8020436c: 81 45        	li	a1, 0
8020436e: 97 40 00 00  	auipc	ra, 4
80204372: e7 80 c0 c1  	jalr	-996(ra)
80204376: 13 06 10 08  	li	a2, 129
8020437a: 09 65        	lui	a0, 2
8020437c: 33 05 a4 40  	sub	a0, s0, a0
80204380: 03 35 85 c7  	ld	a0, -904(a0)
80204384: 81 45        	li	a1, 0
80204386: 97 40 00 00  	auipc	ra, 4
8020438a: e7 80 40 c0  	jalr	-1020(ra)
8020438e: 13 06 10 08  	li	a2, 129
80204392: 09 65        	lui	a0, 2
80204394: 33 05 a4 40  	sub	a0, s0, a0
80204398: 03 35 05 c7  	ld	a0, -912(a0)
8020439c: 81 45        	li	a1, 0
8020439e: 97 40 00 00  	auipc	ra, 4
802043a2: e7 80 c0 be  	jalr	-1044(ra)
802043a6: 13 06 10 08  	li	a2, 129
802043aa: 09 65        	lui	a0, 2
802043ac: 33 05 a4 40  	sub	a0, s0, a0
802043b0: 03 35 85 c6  	ld	a0, -920(a0)
802043b4: 81 45        	li	a1, 0
802043b6: 97 40 00 00  	auipc	ra, 4
802043ba: e7 80 40 bd  	jalr	-1068(ra)
802043be: 13 06 10 08  	li	a2, 129
802043c2: 09 65        	lui	a0, 2
802043c4: 33 05 a4 40  	sub	a0, s0, a0
802043c8: 03 35 05 c6  	ld	a0, -928(a0)
802043cc: 81 45        	li	a1, 0
802043ce: 97 40 00 00  	auipc	ra, 4
802043d2: e7 80 c0 bb  	jalr	-1092(ra)
802043d6: 13 06 10 08  	li	a2, 129
802043da: 09 65        	lui	a0, 2
802043dc: 33 05 a4 40  	sub	a0, s0, a0
802043e0: 03 35 85 c5  	ld	a0, -936(a0)
802043e4: 81 45        	li	a1, 0
802043e6: 97 40 00 00  	auipc	ra, 4
802043ea: e7 80 40 ba  	jalr	-1116(ra)
802043ee: 13 06 10 08  	li	a2, 129
802043f2: 09 65        	lui	a0, 2
802043f4: 33 05 a4 40  	sub	a0, s0, a0
802043f8: 03 35 05 c5  	ld	a0, -944(a0)
802043fc: 81 45        	li	a1, 0
802043fe: 97 40 00 00  	auipc	ra, 4
80204402: e7 80 c0 b8  	jalr	-1140(ra)
80204406: 13 06 10 08  	li	a2, 129
8020440a: 09 65        	lui	a0, 2
8020440c: 33 05 a4 40  	sub	a0, s0, a0
80204410: 03 35 85 c4  	ld	a0, -952(a0)
80204414: 81 45        	li	a1, 0
80204416: 97 40 00 00  	auipc	ra, 4
8020441a: e7 80 40 b7  	jalr	-1164(ra)
8020441e: 13 06 10 08  	li	a2, 129
80204422: 09 65        	lui	a0, 2
80204424: 33 05 a4 40  	sub	a0, s0, a0
80204428: 03 35 05 c4  	ld	a0, -960(a0)
8020442c: 81 45        	li	a1, 0
8020442e: 97 40 00 00  	auipc	ra, 4
80204432: e7 80 c0 b5  	jalr	-1188(ra)
80204436: 13 06 10 08  	li	a2, 129
8020443a: 09 65        	lui	a0, 2
8020443c: 33 05 a4 40  	sub	a0, s0, a0
80204440: 03 35 85 c3  	ld	a0, -968(a0)
80204444: 81 45        	li	a1, 0
80204446: 97 40 00 00  	auipc	ra, 4
8020444a: e7 80 40 b4  	jalr	-1212(ra)
8020444e: 13 06 10 08  	li	a2, 129
80204452: 09 65        	lui	a0, 2
80204454: 33 05 a4 40  	sub	a0, s0, a0
80204458: 03 35 05 c3  	ld	a0, -976(a0)
8020445c: 81 45        	li	a1, 0
8020445e: 97 40 00 00  	auipc	ra, 4
80204462: e7 80 c0 b2  	jalr	-1236(ra)
80204466: 13 06 10 08  	li	a2, 129
8020446a: 09 65        	lui	a0, 2
8020446c: 33 05 a4 40  	sub	a0, s0, a0
80204470: 03 35 85 c2  	ld	a0, -984(a0)
80204474: 81 45        	li	a1, 0
80204476: 97 40 00 00  	auipc	ra, 4
8020447a: e7 80 40 b1  	jalr	-1260(ra)
8020447e: 13 06 10 08  	li	a2, 129
80204482: 09 65        	lui	a0, 2
80204484: 33 05 a4 40  	sub	a0, s0, a0
80204488: 03 35 05 c2  	ld	a0, -992(a0)
8020448c: 81 45        	li	a1, 0
8020448e: 97 40 00 00  	auipc	ra, 4
80204492: e7 80 c0 af  	jalr	-1284(ra)
80204496: 13 06 10 08  	li	a2, 129
8020449a: 09 65        	lui	a0, 2
8020449c: 33 05 a4 40  	sub	a0, s0, a0
802044a0: 03 35 85 c1  	ld	a0, -1000(a0)
802044a4: 81 45        	li	a1, 0
802044a6: 97 40 00 00  	auipc	ra, 4
802044aa: e7 80 40 ae  	jalr	-1308(ra)
802044ae: 13 06 10 08  	li	a2, 129
802044b2: 09 65        	lui	a0, 2
802044b4: 33 05 a4 40  	sub	a0, s0, a0
802044b8: 03 35 05 c1  	ld	a0, -1008(a0)
802044bc: 81 45        	li	a1, 0
802044be: 97 40 00 00  	auipc	ra, 4
802044c2: e7 80 c0 ac  	jalr	-1332(ra)
802044c6: 13 06 10 08  	li	a2, 129
802044ca: 09 65        	lui	a0, 2
802044cc: 33 05 a4 40  	sub	a0, s0, a0
802044d0: 03 35 85 c0  	ld	a0, -1016(a0)
802044d4: 81 45        	li	a1, 0
802044d6: 97 40 00 00  	auipc	ra, 4
802044da: e7 80 40 ab  	jalr	-1356(ra)
802044de: 13 06 10 08  	li	a2, 129
802044e2: 09 65        	lui	a0, 2
802044e4: 33 05 a4 40  	sub	a0, s0, a0
802044e8: 03 35 05 c0  	ld	a0, -1024(a0)
802044ec: 81 45        	li	a1, 0
802044ee: 97 40 00 00  	auipc	ra, 4
802044f2: e7 80 c0 a9  	jalr	-1380(ra)
802044f6: 13 06 10 08  	li	a2, 129
802044fa: 09 65        	lui	a0, 2
802044fc: 33 05 a4 40  	sub	a0, s0, a0
80204500: 03 35 85 bf  	ld	a0, -1032(a0)
80204504: 81 45        	li	a1, 0
80204506: 97 40 00 00  	auipc	ra, 4
8020450a: e7 80 40 a8  	jalr	-1404(ra)
8020450e: 13 06 10 08  	li	a2, 129
80204512: 09 65        	lui	a0, 2
80204514: 33 05 a4 40  	sub	a0, s0, a0
80204518: 03 35 05 bf  	ld	a0, -1040(a0)
8020451c: 81 45        	li	a1, 0
8020451e: 97 40 00 00  	auipc	ra, 4
80204522: e7 80 c0 a6  	jalr	-1428(ra)
80204526: 13 85 04 01  	addi	a0, s1, 16
8020452a: 45 46        	li	a2, 17
8020452c: 26 06        	slli	a2, a2, 9
8020452e: 89 65        	lui	a1, 2
80204530: 9b 85 85 27  	addiw	a1, a1, 632
80204534: b3 05 b4 40  	sub	a1, s0, a1
80204538: 97 40 00 00  	auipc	ra, 4
8020453c: e7 80 a0 a5  	jalr	-1446(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80204540: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80204544: 23 84 0c 00  	sb	zero, 8(s9)
80204548: 0f 00 10 03  	fence	rw, w
8020454c: 23 b0 a4 01  	sd	s10, 0(s1)
80204550: 09 65        	lui	a0, 2
80204552: 1b 05 85 28  	addiw	a0, a0, 648
80204556: 33 05 a4 40  	sub	a0, s0, a0
8020455a: 97 30 00 00  	auipc	ra, 3
8020455e: e7 80 60 db  	jalr	-586(ra)
80204562: 21 a8        	j	0x8020457a <.Lpcrel_hi34+0x177a>
80204564: 0f 00 00 01  	fence	w, 0
80204568: 0f 00 30 03  	fence	rw, rw
8020456c: 88 60        	ld	a0, 0(s1)
8020456e: 0f 00 30 02  	fence	r, rw
;             match status {
80204572: e3 09 b5 ff  	beq	a0, s11, 0x80204564 <.Lpcrel_hi34+0x1764>
80204576: e3 17 a5 65  	bne	a0, s10, 0x802053c4 <.Lpcrel_hi36+0xa>
8020457a: e3 7b 7b 5d  	bgeu	s6, s7, 0x80205350 <.Lpcrel_hi52>
; #[derive(PartialEq, Eq, Clone, Copy)]
8020457e: 03 45 09 17  	lbu	a0, 368(s2)
; 	&mut CPUS.get_mut()[id]
80204582: b3 05 8b 03  	mul	a1, s6, s8
80204586: a6 95        	add	a1, a1, s1
80204588: c1 05        	addi	a1, a1, 16
;         self.cpu = mycpu();
8020458a: 23 38 b9 08  	sd	a1, 144(s2)
;             if p.state == ProcState::Runable {
8020458e: 8d 45        	li	a1, 3
80204590: 63 1b b5 02  	bne	a0, a1, 0x802045c6 <.Lpcrel_hi34+0x17c6>
80204594: 13 05 09 17  	addi	a0, s2, 368
;                 p.state = ProcState::Running;
80204598: 91 45        	li	a1, 4
8020459a: 23 00 b5 00  	sb	a1, 0(a0)
8020459e: 09 65        	lui	a0, 2
802045a0: 33 05 a4 40  	sub	a0, s0, a0
802045a4: 03 3b 85 be  	ld	s6, -1048(a0)
;                 c.proc = p;
802045a8: 23 30 2b 01  	sd	s2, 0(s6)
;                 unsafe { switch(&mut c.context, &p.context); }
802045ac: 93 05 09 0a  	addi	a1, s2, 160
802045b0: 09 65        	lui	a0, 2
802045b2: 33 05 a4 40  	sub	a0, s0, a0
802045b6: 03 35 05 be  	ld	a0, -1056(a0)
802045ba: 97 30 00 00  	auipc	ra, 3
802045be: e7 80 a0 c9  	jalr	-870(ra)
;                 c.proc = null_mut();
802045c2: 23 30 0b 00  	sd	zero, 0(s6)
802045c6: 03 85 0a 00  	lb	a0, 0(s5)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802045ca: e3 0d 05 6a  	beqz	a0, 0x80205484 <.Lpcrel_hi69>
802045ce: 13 09 09 09  	addi	s2, s2, 144
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802045d2: 83 3c 09 00  	ld	s9, 0(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802045d6: 12 8b        	mv	s6, tp
802045d8: 0f 00 30 03  	fence	rw, rw
802045dc: 88 60        	ld	a0, 0(s1)
802045de: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802045e2: 63 1a 05 66  	bnez	a0, 0x80204c56 <.Lpcrel_hi34+0x1e56>
802045e6: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802045ea: 63 16 05 66  	bnez	a0, 0x80204c56 <.Lpcrel_hi34+0x1e56>
802045ee: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
802045f2: f5 f9        	bnez	a1, 0x802045e6 <.Lpcrel_hi34+0x17e6>
802045f4: 09 65        	lui	a0, 2
802045f6: 1b 05 85 28  	addiw	a0, a0, 648
802045fa: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802045fe: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80204600: 09 65        	lui	a0, 2
80204602: 1b 05 85 27  	addiw	a0, a0, 632
80204606: 33 05 a4 40  	sub	a0, s0, a0
8020460a: 13 06 10 08  	li	a2, 129
8020460e: 81 45        	li	a1, 0
80204610: 97 40 00 00  	auipc	ra, 4
80204614: e7 80 a0 97  	jalr	-1670(ra)
80204618: 13 06 10 08  	li	a2, 129
8020461c: 09 65        	lui	a0, 2
8020461e: 1b 05 05 1f  	addiw	a0, a0, 496
80204622: 33 05 a4 40  	sub	a0, s0, a0
80204626: 81 45        	li	a1, 0
80204628: 97 40 00 00  	auipc	ra, 4
8020462c: e7 80 20 96  	jalr	-1694(ra)
80204630: 13 06 10 08  	li	a2, 129
80204634: 09 65        	lui	a0, 2
80204636: 1b 05 85 16  	addiw	a0, a0, 360
8020463a: 33 05 a4 40  	sub	a0, s0, a0
8020463e: 81 45        	li	a1, 0
80204640: 97 40 00 00  	auipc	ra, 4
80204644: e7 80 a0 94  	jalr	-1718(ra)
80204648: 13 06 10 08  	li	a2, 129
8020464c: 09 65        	lui	a0, 2
8020464e: 1b 05 05 0e  	addiw	a0, a0, 224
80204652: 33 05 a4 40  	sub	a0, s0, a0
80204656: 81 45        	li	a1, 0
80204658: 97 40 00 00  	auipc	ra, 4
8020465c: e7 80 20 93  	jalr	-1742(ra)
80204660: 13 06 10 08  	li	a2, 129
80204664: 09 65        	lui	a0, 2
80204666: 1b 05 85 05  	addiw	a0, a0, 88
8020466a: 33 05 a4 40  	sub	a0, s0, a0
8020466e: 81 45        	li	a1, 0
80204670: 97 40 00 00  	auipc	ra, 4
80204674: e7 80 a0 91  	jalr	-1766(ra)
80204678: 13 06 10 08  	li	a2, 129
8020467c: 09 65        	lui	a0, 2
8020467e: 1b 05 05 fd  	addiw	a0, a0, -48
80204682: 33 05 a4 40  	sub	a0, s0, a0
80204686: 81 45        	li	a1, 0
80204688: 97 40 00 00  	auipc	ra, 4
8020468c: e7 80 20 90  	jalr	-1790(ra)
80204690: 13 06 10 08  	li	a2, 129
80204694: 09 65        	lui	a0, 2
80204696: 1b 05 85 f4  	addiw	a0, a0, -184
8020469a: 33 05 a4 40  	sub	a0, s0, a0
8020469e: 81 45        	li	a1, 0
802046a0: 97 40 00 00  	auipc	ra, 4
802046a4: e7 80 a0 8e  	jalr	-1814(ra)
802046a8: 13 06 10 08  	li	a2, 129
802046ac: 09 65        	lui	a0, 2
802046ae: 1b 05 05 ec  	addiw	a0, a0, -320
802046b2: 33 05 a4 40  	sub	a0, s0, a0
802046b6: 81 45        	li	a1, 0
802046b8: 97 40 00 00  	auipc	ra, 4
802046bc: e7 80 20 8d  	jalr	-1838(ra)
802046c0: 13 06 10 08  	li	a2, 129
802046c4: 09 65        	lui	a0, 2
802046c6: 1b 05 85 e3  	addiw	a0, a0, -456
802046ca: 33 05 a4 40  	sub	a0, s0, a0
802046ce: 81 45        	li	a1, 0
802046d0: 97 40 00 00  	auipc	ra, 4
802046d4: e7 80 a0 8b  	jalr	-1862(ra)
802046d8: 13 06 10 08  	li	a2, 129
802046dc: 09 65        	lui	a0, 2
802046de: 1b 05 05 db  	addiw	a0, a0, -592
802046e2: 33 05 a4 40  	sub	a0, s0, a0
802046e6: 81 45        	li	a1, 0
802046e8: 97 40 00 00  	auipc	ra, 4
802046ec: e7 80 20 8a  	jalr	-1886(ra)
802046f0: 13 06 10 08  	li	a2, 129
802046f4: 09 65        	lui	a0, 2
802046f6: 1b 05 85 d2  	addiw	a0, a0, -728
802046fa: 33 05 a4 40  	sub	a0, s0, a0
802046fe: 81 45        	li	a1, 0
80204700: 97 40 00 00  	auipc	ra, 4
80204704: e7 80 a0 88  	jalr	-1910(ra)
80204708: 13 06 10 08  	li	a2, 129
8020470c: 09 65        	lui	a0, 2
8020470e: 1b 05 05 ca  	addiw	a0, a0, -864
80204712: 33 05 a4 40  	sub	a0, s0, a0
80204716: 81 45        	li	a1, 0
80204718: 97 40 00 00  	auipc	ra, 4
8020471c: e7 80 20 87  	jalr	-1934(ra)
80204720: 13 06 10 08  	li	a2, 129
80204724: 09 65        	lui	a0, 2
80204726: 1b 05 85 c1  	addiw	a0, a0, -1000
8020472a: 33 05 a4 40  	sub	a0, s0, a0
8020472e: 81 45        	li	a1, 0
80204730: 97 40 00 00  	auipc	ra, 4
80204734: e7 80 a0 85  	jalr	-1958(ra)
80204738: 13 06 10 08  	li	a2, 129
8020473c: 09 65        	lui	a0, 2
8020473e: 1b 05 05 b9  	addiw	a0, a0, -1136
80204742: 33 05 a4 40  	sub	a0, s0, a0
80204746: 81 45        	li	a1, 0
80204748: 97 40 00 00  	auipc	ra, 4
8020474c: e7 80 20 84  	jalr	-1982(ra)
80204750: 13 06 10 08  	li	a2, 129
80204754: 09 65        	lui	a0, 2
80204756: 1b 05 85 b0  	addiw	a0, a0, -1272
8020475a: 33 05 a4 40  	sub	a0, s0, a0
8020475e: 81 45        	li	a1, 0
80204760: 97 40 00 00  	auipc	ra, 4
80204764: e7 80 a0 82  	jalr	-2006(ra)
80204768: 13 06 10 08  	li	a2, 129
8020476c: 09 65        	lui	a0, 2
8020476e: 1b 05 05 a8  	addiw	a0, a0, -1408
80204772: 33 05 a4 40  	sub	a0, s0, a0
80204776: 81 45        	li	a1, 0
80204778: 97 40 00 00  	auipc	ra, 4
8020477c: e7 80 20 81  	jalr	-2030(ra)
80204780: 13 06 10 08  	li	a2, 129
80204784: 09 65        	lui	a0, 2
80204786: 33 05 a4 40  	sub	a0, s0, a0
8020478a: 03 35 85 d6  	ld	a0, -664(a0)
8020478e: 81 45        	li	a1, 0
80204790: 97 30 00 00  	auipc	ra, 3
80204794: e7 80 a0 7f  	jalr	2042(ra)
80204798: 13 06 10 08  	li	a2, 129
8020479c: 09 65        	lui	a0, 2
8020479e: 33 05 a4 40  	sub	a0, s0, a0
802047a2: 03 35 05 d6  	ld	a0, -672(a0)
802047a6: 81 45        	li	a1, 0
802047a8: 97 30 00 00  	auipc	ra, 3
802047ac: e7 80 20 7e  	jalr	2018(ra)
802047b0: 13 06 10 08  	li	a2, 129
802047b4: 09 65        	lui	a0, 2
802047b6: 33 05 a4 40  	sub	a0, s0, a0
802047ba: 03 35 85 d5  	ld	a0, -680(a0)
802047be: 81 45        	li	a1, 0
802047c0: 97 30 00 00  	auipc	ra, 3
802047c4: e7 80 a0 7c  	jalr	1994(ra)
802047c8: 13 06 10 08  	li	a2, 129
802047cc: 09 65        	lui	a0, 2
802047ce: 33 05 a4 40  	sub	a0, s0, a0
802047d2: 03 35 05 d5  	ld	a0, -688(a0)
802047d6: 81 45        	li	a1, 0
802047d8: 97 30 00 00  	auipc	ra, 3
802047dc: e7 80 20 7b  	jalr	1970(ra)
802047e0: 13 06 10 08  	li	a2, 129
802047e4: 09 65        	lui	a0, 2
802047e6: 33 05 a4 40  	sub	a0, s0, a0
802047ea: 03 35 85 d4  	ld	a0, -696(a0)
802047ee: 81 45        	li	a1, 0
802047f0: 97 30 00 00  	auipc	ra, 3
802047f4: e7 80 a0 79  	jalr	1946(ra)
802047f8: 13 06 10 08  	li	a2, 129
802047fc: 09 65        	lui	a0, 2
802047fe: 33 05 a4 40  	sub	a0, s0, a0
80204802: 03 35 05 d4  	ld	a0, -704(a0)
80204806: 81 45        	li	a1, 0
80204808: 97 30 00 00  	auipc	ra, 3
8020480c: e7 80 20 78  	jalr	1922(ra)
80204810: 13 06 10 08  	li	a2, 129
80204814: 09 65        	lui	a0, 2
80204816: 33 05 a4 40  	sub	a0, s0, a0
8020481a: 03 35 85 d3  	ld	a0, -712(a0)
8020481e: 81 45        	li	a1, 0
80204820: 97 30 00 00  	auipc	ra, 3
80204824: e7 80 a0 76  	jalr	1898(ra)
80204828: 13 06 10 08  	li	a2, 129
8020482c: 09 65        	lui	a0, 2
8020482e: 33 05 a4 40  	sub	a0, s0, a0
80204832: 03 35 05 d3  	ld	a0, -720(a0)
80204836: 81 45        	li	a1, 0
80204838: 97 30 00 00  	auipc	ra, 3
8020483c: e7 80 20 75  	jalr	1874(ra)
80204840: 13 06 10 08  	li	a2, 129
80204844: 09 65        	lui	a0, 2
80204846: 33 05 a4 40  	sub	a0, s0, a0
8020484a: 03 35 85 d2  	ld	a0, -728(a0)
8020484e: 81 45        	li	a1, 0
80204850: 97 30 00 00  	auipc	ra, 3
80204854: e7 80 a0 73  	jalr	1850(ra)
80204858: 13 06 10 08  	li	a2, 129
8020485c: 09 65        	lui	a0, 2
8020485e: 33 05 a4 40  	sub	a0, s0, a0
80204862: 03 35 05 d2  	ld	a0, -736(a0)
80204866: 81 45        	li	a1, 0
80204868: 97 30 00 00  	auipc	ra, 3
8020486c: e7 80 20 72  	jalr	1826(ra)
80204870: 13 06 10 08  	li	a2, 129
80204874: 09 65        	lui	a0, 2
80204876: 33 05 a4 40  	sub	a0, s0, a0
8020487a: 03 35 85 d1  	ld	a0, -744(a0)
8020487e: 81 45        	li	a1, 0
80204880: 97 30 00 00  	auipc	ra, 3
80204884: e7 80 a0 70  	jalr	1802(ra)
80204888: 13 06 10 08  	li	a2, 129
8020488c: 09 65        	lui	a0, 2
8020488e: 33 05 a4 40  	sub	a0, s0, a0
80204892: 03 35 05 d1  	ld	a0, -752(a0)
80204896: 81 45        	li	a1, 0
80204898: 97 30 00 00  	auipc	ra, 3
8020489c: e7 80 20 6f  	jalr	1778(ra)
802048a0: 13 06 10 08  	li	a2, 129
802048a4: 09 65        	lui	a0, 2
802048a6: 33 05 a4 40  	sub	a0, s0, a0
802048aa: 03 35 85 d0  	ld	a0, -760(a0)
802048ae: 81 45        	li	a1, 0
802048b0: 97 30 00 00  	auipc	ra, 3
802048b4: e7 80 a0 6d  	jalr	1754(ra)
802048b8: 13 06 10 08  	li	a2, 129
802048bc: 09 65        	lui	a0, 2
802048be: 33 05 a4 40  	sub	a0, s0, a0
802048c2: 03 35 05 d0  	ld	a0, -768(a0)
802048c6: 81 45        	li	a1, 0
802048c8: 97 30 00 00  	auipc	ra, 3
802048cc: e7 80 20 6c  	jalr	1730(ra)
802048d0: 13 06 10 08  	li	a2, 129
802048d4: 09 65        	lui	a0, 2
802048d6: 33 05 a4 40  	sub	a0, s0, a0
802048da: 03 35 85 cf  	ld	a0, -776(a0)
802048de: 81 45        	li	a1, 0
802048e0: 97 30 00 00  	auipc	ra, 3
802048e4: e7 80 a0 6a  	jalr	1706(ra)
802048e8: 13 06 10 08  	li	a2, 129
802048ec: 09 65        	lui	a0, 2
802048ee: 33 05 a4 40  	sub	a0, s0, a0
802048f2: 03 35 05 cf  	ld	a0, -784(a0)
802048f6: 81 45        	li	a1, 0
802048f8: 97 30 00 00  	auipc	ra, 3
802048fc: e7 80 20 69  	jalr	1682(ra)
80204900: 13 06 10 08  	li	a2, 129
80204904: 09 65        	lui	a0, 2
80204906: 33 05 a4 40  	sub	a0, s0, a0
8020490a: 03 35 85 ce  	ld	a0, -792(a0)
8020490e: 81 45        	li	a1, 0
80204910: 97 30 00 00  	auipc	ra, 3
80204914: e7 80 a0 67  	jalr	1658(ra)
80204918: 13 06 10 08  	li	a2, 129
8020491c: 09 65        	lui	a0, 2
8020491e: 33 05 a4 40  	sub	a0, s0, a0
80204922: 03 35 05 ce  	ld	a0, -800(a0)
80204926: 81 45        	li	a1, 0
80204928: 97 30 00 00  	auipc	ra, 3
8020492c: e7 80 20 66  	jalr	1634(ra)
80204930: 13 06 10 08  	li	a2, 129
80204934: 09 65        	lui	a0, 2
80204936: 33 05 a4 40  	sub	a0, s0, a0
8020493a: 03 35 85 cd  	ld	a0, -808(a0)
8020493e: 81 45        	li	a1, 0
80204940: 97 30 00 00  	auipc	ra, 3
80204944: e7 80 a0 64  	jalr	1610(ra)
80204948: 13 06 10 08  	li	a2, 129
8020494c: 09 65        	lui	a0, 2
8020494e: 33 05 a4 40  	sub	a0, s0, a0
80204952: 03 35 05 cd  	ld	a0, -816(a0)
80204956: 81 45        	li	a1, 0
80204958: 97 30 00 00  	auipc	ra, 3
8020495c: e7 80 20 63  	jalr	1586(ra)
80204960: 13 06 10 08  	li	a2, 129
80204964: 09 65        	lui	a0, 2
80204966: 33 05 a4 40  	sub	a0, s0, a0
8020496a: 03 35 85 cc  	ld	a0, -824(a0)
8020496e: 81 45        	li	a1, 0
80204970: 97 30 00 00  	auipc	ra, 3
80204974: e7 80 a0 61  	jalr	1562(ra)
80204978: 13 06 10 08  	li	a2, 129
8020497c: 09 65        	lui	a0, 2
8020497e: 33 05 a4 40  	sub	a0, s0, a0
80204982: 03 35 05 cc  	ld	a0, -832(a0)
80204986: 81 45        	li	a1, 0
80204988: 97 30 00 00  	auipc	ra, 3
8020498c: e7 80 20 60  	jalr	1538(ra)
80204990: 13 06 10 08  	li	a2, 129
80204994: 09 65        	lui	a0, 2
80204996: 33 05 a4 40  	sub	a0, s0, a0
8020499a: 03 35 85 cb  	ld	a0, -840(a0)
8020499e: 81 45        	li	a1, 0
802049a0: 97 30 00 00  	auipc	ra, 3
802049a4: e7 80 a0 5e  	jalr	1514(ra)
802049a8: 13 06 10 08  	li	a2, 129
802049ac: 09 65        	lui	a0, 2
802049ae: 33 05 a4 40  	sub	a0, s0, a0
802049b2: 03 35 05 cb  	ld	a0, -848(a0)
802049b6: 81 45        	li	a1, 0
802049b8: 97 30 00 00  	auipc	ra, 3
802049bc: e7 80 20 5d  	jalr	1490(ra)
802049c0: 13 06 10 08  	li	a2, 129
802049c4: 09 65        	lui	a0, 2
802049c6: 33 05 a4 40  	sub	a0, s0, a0
802049ca: 03 35 85 ca  	ld	a0, -856(a0)
802049ce: 81 45        	li	a1, 0
802049d0: 97 30 00 00  	auipc	ra, 3
802049d4: e7 80 a0 5b  	jalr	1466(ra)
802049d8: 13 06 10 08  	li	a2, 129
802049dc: 09 65        	lui	a0, 2
802049de: 33 05 a4 40  	sub	a0, s0, a0
802049e2: 03 35 05 ca  	ld	a0, -864(a0)
802049e6: 81 45        	li	a1, 0
802049e8: 97 30 00 00  	auipc	ra, 3
802049ec: e7 80 20 5a  	jalr	1442(ra)
802049f0: 13 06 10 08  	li	a2, 129
802049f4: 09 65        	lui	a0, 2
802049f6: 33 05 a4 40  	sub	a0, s0, a0
802049fa: 03 35 85 c9  	ld	a0, -872(a0)
802049fe: 81 45        	li	a1, 0
80204a00: 97 30 00 00  	auipc	ra, 3
80204a04: e7 80 a0 58  	jalr	1418(ra)
80204a08: 13 06 10 08  	li	a2, 129
80204a0c: 09 65        	lui	a0, 2
80204a0e: 33 05 a4 40  	sub	a0, s0, a0
80204a12: 03 35 05 c9  	ld	a0, -880(a0)
80204a16: 81 45        	li	a1, 0
80204a18: 97 30 00 00  	auipc	ra, 3
80204a1c: e7 80 20 57  	jalr	1394(ra)
80204a20: 13 06 10 08  	li	a2, 129
80204a24: 09 65        	lui	a0, 2
80204a26: 33 05 a4 40  	sub	a0, s0, a0
80204a2a: 03 35 85 c8  	ld	a0, -888(a0)
80204a2e: 81 45        	li	a1, 0
80204a30: 97 30 00 00  	auipc	ra, 3
80204a34: e7 80 a0 55  	jalr	1370(ra)
80204a38: 13 06 10 08  	li	a2, 129
80204a3c: 09 65        	lui	a0, 2
80204a3e: 33 05 a4 40  	sub	a0, s0, a0
80204a42: 03 35 05 c8  	ld	a0, -896(a0)
80204a46: 81 45        	li	a1, 0
80204a48: 97 30 00 00  	auipc	ra, 3
80204a4c: e7 80 20 54  	jalr	1346(ra)
80204a50: 13 06 10 08  	li	a2, 129
80204a54: 09 65        	lui	a0, 2
80204a56: 33 05 a4 40  	sub	a0, s0, a0
80204a5a: 03 35 85 c7  	ld	a0, -904(a0)
80204a5e: 81 45        	li	a1, 0
80204a60: 97 30 00 00  	auipc	ra, 3
80204a64: e7 80 a0 52  	jalr	1322(ra)
80204a68: 13 06 10 08  	li	a2, 129
80204a6c: 09 65        	lui	a0, 2
80204a6e: 33 05 a4 40  	sub	a0, s0, a0
80204a72: 03 35 05 c7  	ld	a0, -912(a0)
80204a76: 81 45        	li	a1, 0
80204a78: 97 30 00 00  	auipc	ra, 3
80204a7c: e7 80 20 51  	jalr	1298(ra)
80204a80: 13 06 10 08  	li	a2, 129
80204a84: 09 65        	lui	a0, 2
80204a86: 33 05 a4 40  	sub	a0, s0, a0
80204a8a: 03 35 85 c6  	ld	a0, -920(a0)
80204a8e: 81 45        	li	a1, 0
80204a90: 97 30 00 00  	auipc	ra, 3
80204a94: e7 80 a0 4f  	jalr	1274(ra)
80204a98: 13 06 10 08  	li	a2, 129
80204a9c: 09 65        	lui	a0, 2
80204a9e: 33 05 a4 40  	sub	a0, s0, a0
80204aa2: 03 35 05 c6  	ld	a0, -928(a0)
80204aa6: 81 45        	li	a1, 0
80204aa8: 97 30 00 00  	auipc	ra, 3
80204aac: e7 80 20 4e  	jalr	1250(ra)
80204ab0: 13 06 10 08  	li	a2, 129
80204ab4: 09 65        	lui	a0, 2
80204ab6: 33 05 a4 40  	sub	a0, s0, a0
80204aba: 03 35 85 c5  	ld	a0, -936(a0)
80204abe: 81 45        	li	a1, 0
80204ac0: 97 30 00 00  	auipc	ra, 3
80204ac4: e7 80 a0 4c  	jalr	1226(ra)
80204ac8: 13 06 10 08  	li	a2, 129
80204acc: 09 65        	lui	a0, 2
80204ace: 33 05 a4 40  	sub	a0, s0, a0
80204ad2: 03 35 05 c5  	ld	a0, -944(a0)
80204ad6: 81 45        	li	a1, 0
80204ad8: 97 30 00 00  	auipc	ra, 3
80204adc: e7 80 20 4b  	jalr	1202(ra)
80204ae0: 13 06 10 08  	li	a2, 129
80204ae4: 09 65        	lui	a0, 2
80204ae6: 33 05 a4 40  	sub	a0, s0, a0
80204aea: 03 35 85 c4  	ld	a0, -952(a0)
80204aee: 81 45        	li	a1, 0
80204af0: 97 30 00 00  	auipc	ra, 3
80204af4: e7 80 a0 49  	jalr	1178(ra)
80204af8: 13 06 10 08  	li	a2, 129
80204afc: 09 65        	lui	a0, 2
80204afe: 33 05 a4 40  	sub	a0, s0, a0
80204b02: 03 35 05 c4  	ld	a0, -960(a0)
80204b06: 81 45        	li	a1, 0
80204b08: 97 30 00 00  	auipc	ra, 3
80204b0c: e7 80 20 48  	jalr	1154(ra)
80204b10: 13 06 10 08  	li	a2, 129
80204b14: 09 65        	lui	a0, 2
80204b16: 33 05 a4 40  	sub	a0, s0, a0
80204b1a: 03 35 85 c3  	ld	a0, -968(a0)
80204b1e: 81 45        	li	a1, 0
80204b20: 97 30 00 00  	auipc	ra, 3
80204b24: e7 80 a0 46  	jalr	1130(ra)
80204b28: 13 06 10 08  	li	a2, 129
80204b2c: 09 65        	lui	a0, 2
80204b2e: 33 05 a4 40  	sub	a0, s0, a0
80204b32: 03 35 05 c3  	ld	a0, -976(a0)
80204b36: 81 45        	li	a1, 0
80204b38: 97 30 00 00  	auipc	ra, 3
80204b3c: e7 80 20 45  	jalr	1106(ra)
80204b40: 13 06 10 08  	li	a2, 129
80204b44: 09 65        	lui	a0, 2
80204b46: 33 05 a4 40  	sub	a0, s0, a0
80204b4a: 03 35 85 c2  	ld	a0, -984(a0)
80204b4e: 81 45        	li	a1, 0
80204b50: 97 30 00 00  	auipc	ra, 3
80204b54: e7 80 a0 43  	jalr	1082(ra)
80204b58: 13 06 10 08  	li	a2, 129
80204b5c: 09 65        	lui	a0, 2
80204b5e: 33 05 a4 40  	sub	a0, s0, a0
80204b62: 03 35 05 c2  	ld	a0, -992(a0)
80204b66: 81 45        	li	a1, 0
80204b68: 97 30 00 00  	auipc	ra, 3
80204b6c: e7 80 20 42  	jalr	1058(ra)
80204b70: 13 06 10 08  	li	a2, 129
80204b74: 09 65        	lui	a0, 2
80204b76: 33 05 a4 40  	sub	a0, s0, a0
80204b7a: 03 35 85 c1  	ld	a0, -1000(a0)
80204b7e: 81 45        	li	a1, 0
80204b80: 97 30 00 00  	auipc	ra, 3
80204b84: e7 80 a0 40  	jalr	1034(ra)
80204b88: 13 06 10 08  	li	a2, 129
80204b8c: 09 65        	lui	a0, 2
80204b8e: 33 05 a4 40  	sub	a0, s0, a0
80204b92: 03 35 05 c1  	ld	a0, -1008(a0)
80204b96: 81 45        	li	a1, 0
80204b98: 97 30 00 00  	auipc	ra, 3
80204b9c: e7 80 20 3f  	jalr	1010(ra)
80204ba0: 13 06 10 08  	li	a2, 129
80204ba4: 09 65        	lui	a0, 2
80204ba6: 33 05 a4 40  	sub	a0, s0, a0
80204baa: 03 35 85 c0  	ld	a0, -1016(a0)
80204bae: 81 45        	li	a1, 0
80204bb0: 97 30 00 00  	auipc	ra, 3
80204bb4: e7 80 a0 3d  	jalr	986(ra)
80204bb8: 13 06 10 08  	li	a2, 129
80204bbc: 09 65        	lui	a0, 2
80204bbe: 33 05 a4 40  	sub	a0, s0, a0
80204bc2: 03 35 05 c0  	ld	a0, -1024(a0)
80204bc6: 81 45        	li	a1, 0
80204bc8: 97 30 00 00  	auipc	ra, 3
80204bcc: e7 80 20 3c  	jalr	962(ra)
80204bd0: 13 06 10 08  	li	a2, 129
80204bd4: 09 65        	lui	a0, 2
80204bd6: 33 05 a4 40  	sub	a0, s0, a0
80204bda: 03 35 85 bf  	ld	a0, -1032(a0)
80204bde: 81 45        	li	a1, 0
80204be0: 97 30 00 00  	auipc	ra, 3
80204be4: e7 80 a0 3a  	jalr	938(ra)
80204be8: 13 06 10 08  	li	a2, 129
80204bec: 09 65        	lui	a0, 2
80204bee: 33 05 a4 40  	sub	a0, s0, a0
80204bf2: 03 35 05 bf  	ld	a0, -1040(a0)
80204bf6: 81 45        	li	a1, 0
80204bf8: 97 30 00 00  	auipc	ra, 3
80204bfc: e7 80 20 39  	jalr	914(ra)
80204c00: 13 85 04 01  	addi	a0, s1, 16
80204c04: 45 46        	li	a2, 17
80204c06: 26 06        	slli	a2, a2, 9
80204c08: 89 65        	lui	a1, 2
80204c0a: 9b 85 85 27  	addiw	a1, a1, 632
80204c0e: b3 05 b4 40  	sub	a1, s0, a1
80204c12: 97 30 00 00  	auipc	ra, 3
80204c16: e7 80 00 38  	jalr	896(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80204c1a: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80204c1e: 09 65        	lui	a0, 2
80204c20: 1b 05 85 28  	addiw	a0, a0, 648
80204c24: 33 05 a4 40  	sub	a0, s0, a0
80204c28: 23 04 05 00  	sb	zero, 8(a0)
80204c2c: 0f 00 10 03  	fence	rw, w
80204c30: 23 b0 a4 01  	sd	s10, 0(s1)
80204c34: 09 65        	lui	a0, 2
80204c36: 1b 05 85 28  	addiw	a0, a0, 648
80204c3a: 33 05 a4 40  	sub	a0, s0, a0
80204c3e: 97 20 00 00  	auipc	ra, 2
80204c42: e7 80 20 6d  	jalr	1746(ra)
80204c46: 21 a8        	j	0x80204c5e <.Lpcrel_hi34+0x1e5e>
80204c48: 0f 00 00 01  	fence	w, 0
80204c4c: 0f 00 30 03  	fence	rw, rw
80204c50: 88 60        	ld	a0, 0(s1)
80204c52: 0f 00 30 02  	fence	r, rw
;             match status {
80204c56: e3 09 b5 ff  	beq	a0, s11, 0x80204c48 <.Lpcrel_hi34+0x1e48>
80204c5a: 63 1f a5 77  	bne	a0, s10, 0x802053d8 <.Lpcrel_hi49+0xa>
80204c5e: 63 75 7b 71  	bgeu	s6, s7, 0x80205368 <.Lpcrel_hi57>
; 	&mut CPUS.get_mut()[id]
80204c62: 33 05 8b 03  	mul	a0, s6, s8
80204c66: 26 95        	add	a0, a0, s1
80204c68: 41 05        	addi	a0, a0, 16
;         if !self.holding() {
80204c6a: e3 9d ac 00  	bne	s9, a0, 0x80205484 <.Lpcrel_hi69>
;         self.cpu = null_mut();
80204c6e: 23 30 09 00  	sd	zero, 0(s2)
80204c72: 0f 00 30 03  	fence	rw, rw
80204c76: 0f 00 10 03  	fence	rw, w
80204c7a: 23 80 0a 00  	sb	zero, 0(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204c7e: 12 8b        	mv	s6, tp
80204c80: 0f 00 30 03  	fence	rw, rw
80204c84: 88 60        	ld	a0, 0(s1)
80204c86: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204c8a: 63 16 05 66  	bnez	a0, 0x802052f6 <.Lpcrel_hi34+0x24f6>
80204c8e: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80204c92: 63 12 05 66  	bnez	a0, 0x802052f6 <.Lpcrel_hi34+0x24f6>
80204c96: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80204c9a: f5 f9        	bnez	a1, 0x80204c8e <.Lpcrel_hi34+0x1e8e>
80204c9c: 09 65        	lui	a0, 2
80204c9e: 1b 05 85 28  	addiw	a0, a0, 648
80204ca2: 33 09 a4 40  	sub	s2, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80204ca6: 23 30 99 00  	sd	s1, 0(s2)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80204caa: 09 65        	lui	a0, 2
80204cac: 1b 05 85 27  	addiw	a0, a0, 632
80204cb0: 33 05 a4 40  	sub	a0, s0, a0
80204cb4: 13 06 10 08  	li	a2, 129
80204cb8: 81 45        	li	a1, 0
80204cba: 97 30 00 00  	auipc	ra, 3
80204cbe: e7 80 00 2d  	jalr	720(ra)
80204cc2: 13 06 10 08  	li	a2, 129
80204cc6: 09 65        	lui	a0, 2
80204cc8: 1b 05 05 1f  	addiw	a0, a0, 496
80204ccc: 33 05 a4 40  	sub	a0, s0, a0
80204cd0: 81 45        	li	a1, 0
80204cd2: 97 30 00 00  	auipc	ra, 3
80204cd6: e7 80 80 2b  	jalr	696(ra)
80204cda: 13 06 10 08  	li	a2, 129
80204cde: 09 65        	lui	a0, 2
80204ce0: 1b 05 85 16  	addiw	a0, a0, 360
80204ce4: 33 05 a4 40  	sub	a0, s0, a0
80204ce8: 81 45        	li	a1, 0
80204cea: 97 30 00 00  	auipc	ra, 3
80204cee: e7 80 00 2a  	jalr	672(ra)
80204cf2: 13 06 10 08  	li	a2, 129
80204cf6: 09 65        	lui	a0, 2
80204cf8: 1b 05 05 0e  	addiw	a0, a0, 224
80204cfc: 33 05 a4 40  	sub	a0, s0, a0
80204d00: 81 45        	li	a1, 0
80204d02: 97 30 00 00  	auipc	ra, 3
80204d06: e7 80 80 28  	jalr	648(ra)
80204d0a: 13 06 10 08  	li	a2, 129
80204d0e: 09 65        	lui	a0, 2
80204d10: 1b 05 85 05  	addiw	a0, a0, 88
80204d14: 33 05 a4 40  	sub	a0, s0, a0
80204d18: 81 45        	li	a1, 0
80204d1a: 97 30 00 00  	auipc	ra, 3
80204d1e: e7 80 00 27  	jalr	624(ra)
80204d22: 13 06 10 08  	li	a2, 129
80204d26: 09 65        	lui	a0, 2
80204d28: 1b 05 05 fd  	addiw	a0, a0, -48
80204d2c: 33 05 a4 40  	sub	a0, s0, a0
80204d30: 81 45        	li	a1, 0
80204d32: 97 30 00 00  	auipc	ra, 3
80204d36: e7 80 80 25  	jalr	600(ra)
80204d3a: 13 06 10 08  	li	a2, 129
80204d3e: 09 65        	lui	a0, 2
80204d40: 1b 05 85 f4  	addiw	a0, a0, -184
80204d44: 33 05 a4 40  	sub	a0, s0, a0
80204d48: 81 45        	li	a1, 0
80204d4a: 97 30 00 00  	auipc	ra, 3
80204d4e: e7 80 00 24  	jalr	576(ra)
80204d52: 13 06 10 08  	li	a2, 129
80204d56: 09 65        	lui	a0, 2
80204d58: 1b 05 05 ec  	addiw	a0, a0, -320
80204d5c: 33 05 a4 40  	sub	a0, s0, a0
80204d60: 81 45        	li	a1, 0
80204d62: 97 30 00 00  	auipc	ra, 3
80204d66: e7 80 80 22  	jalr	552(ra)
80204d6a: 13 06 10 08  	li	a2, 129
80204d6e: 09 65        	lui	a0, 2
80204d70: 1b 05 85 e3  	addiw	a0, a0, -456
80204d74: 33 05 a4 40  	sub	a0, s0, a0
80204d78: 81 45        	li	a1, 0
80204d7a: 97 30 00 00  	auipc	ra, 3
80204d7e: e7 80 00 21  	jalr	528(ra)
80204d82: 13 06 10 08  	li	a2, 129
80204d86: 09 65        	lui	a0, 2
80204d88: 1b 05 05 db  	addiw	a0, a0, -592
80204d8c: 33 05 a4 40  	sub	a0, s0, a0
80204d90: 81 45        	li	a1, 0
80204d92: 97 30 00 00  	auipc	ra, 3
80204d96: e7 80 80 1f  	jalr	504(ra)
80204d9a: 13 06 10 08  	li	a2, 129
80204d9e: 09 65        	lui	a0, 2
80204da0: 1b 05 85 d2  	addiw	a0, a0, -728
80204da4: 33 05 a4 40  	sub	a0, s0, a0
80204da8: 81 45        	li	a1, 0
80204daa: 97 30 00 00  	auipc	ra, 3
80204dae: e7 80 00 1e  	jalr	480(ra)
80204db2: 13 06 10 08  	li	a2, 129
80204db6: 09 65        	lui	a0, 2
80204db8: 1b 05 05 ca  	addiw	a0, a0, -864
80204dbc: 33 05 a4 40  	sub	a0, s0, a0
80204dc0: 81 45        	li	a1, 0
80204dc2: 97 30 00 00  	auipc	ra, 3
80204dc6: e7 80 80 1c  	jalr	456(ra)
80204dca: 13 06 10 08  	li	a2, 129
80204dce: 09 65        	lui	a0, 2
80204dd0: 1b 05 85 c1  	addiw	a0, a0, -1000
80204dd4: 33 05 a4 40  	sub	a0, s0, a0
80204dd8: 81 45        	li	a1, 0
80204dda: 97 30 00 00  	auipc	ra, 3
80204dde: e7 80 00 1b  	jalr	432(ra)
80204de2: 13 06 10 08  	li	a2, 129
80204de6: 09 65        	lui	a0, 2
80204de8: 1b 05 05 b9  	addiw	a0, a0, -1136
80204dec: 33 05 a4 40  	sub	a0, s0, a0
80204df0: 81 45        	li	a1, 0
80204df2: 97 30 00 00  	auipc	ra, 3
80204df6: e7 80 80 19  	jalr	408(ra)
80204dfa: 13 06 10 08  	li	a2, 129
80204dfe: 09 65        	lui	a0, 2
80204e00: 1b 05 85 b0  	addiw	a0, a0, -1272
80204e04: 33 05 a4 40  	sub	a0, s0, a0
80204e08: 81 45        	li	a1, 0
80204e0a: 97 30 00 00  	auipc	ra, 3
80204e0e: e7 80 00 18  	jalr	384(ra)
80204e12: 13 06 10 08  	li	a2, 129
80204e16: 09 65        	lui	a0, 2
80204e18: 1b 05 05 a8  	addiw	a0, a0, -1408
80204e1c: 33 05 a4 40  	sub	a0, s0, a0
80204e20: 81 45        	li	a1, 0
80204e22: 97 30 00 00  	auipc	ra, 3
80204e26: e7 80 80 16  	jalr	360(ra)
80204e2a: 13 06 10 08  	li	a2, 129
80204e2e: 09 65        	lui	a0, 2
80204e30: 33 05 a4 40  	sub	a0, s0, a0
80204e34: 03 35 85 d6  	ld	a0, -664(a0)
80204e38: 81 45        	li	a1, 0
80204e3a: 97 30 00 00  	auipc	ra, 3
80204e3e: e7 80 00 15  	jalr	336(ra)
80204e42: 13 06 10 08  	li	a2, 129
80204e46: 09 65        	lui	a0, 2
80204e48: 33 05 a4 40  	sub	a0, s0, a0
80204e4c: 03 35 05 d6  	ld	a0, -672(a0)
80204e50: 81 45        	li	a1, 0
80204e52: 97 30 00 00  	auipc	ra, 3
80204e56: e7 80 80 13  	jalr	312(ra)
80204e5a: 13 06 10 08  	li	a2, 129
80204e5e: 09 65        	lui	a0, 2
80204e60: 33 05 a4 40  	sub	a0, s0, a0
80204e64: 03 35 85 d5  	ld	a0, -680(a0)
80204e68: 81 45        	li	a1, 0
80204e6a: 97 30 00 00  	auipc	ra, 3
80204e6e: e7 80 00 12  	jalr	288(ra)
80204e72: 13 06 10 08  	li	a2, 129
80204e76: 09 65        	lui	a0, 2
80204e78: 33 05 a4 40  	sub	a0, s0, a0
80204e7c: 03 35 05 d5  	ld	a0, -688(a0)
80204e80: 81 45        	li	a1, 0
80204e82: 97 30 00 00  	auipc	ra, 3
80204e86: e7 80 80 10  	jalr	264(ra)
80204e8a: 13 06 10 08  	li	a2, 129
80204e8e: 09 65        	lui	a0, 2
80204e90: 33 05 a4 40  	sub	a0, s0, a0
80204e94: 03 35 85 d4  	ld	a0, -696(a0)
80204e98: 81 45        	li	a1, 0
80204e9a: 97 30 00 00  	auipc	ra, 3
80204e9e: e7 80 00 0f  	jalr	240(ra)
80204ea2: 13 06 10 08  	li	a2, 129
80204ea6: 09 65        	lui	a0, 2
80204ea8: 33 05 a4 40  	sub	a0, s0, a0
80204eac: 03 35 05 d4  	ld	a0, -704(a0)
80204eb0: 81 45        	li	a1, 0
80204eb2: 97 30 00 00  	auipc	ra, 3
80204eb6: e7 80 80 0d  	jalr	216(ra)
80204eba: 13 06 10 08  	li	a2, 129
80204ebe: 09 65        	lui	a0, 2
80204ec0: 33 05 a4 40  	sub	a0, s0, a0
80204ec4: 03 35 85 d3  	ld	a0, -712(a0)
80204ec8: 81 45        	li	a1, 0
80204eca: 97 30 00 00  	auipc	ra, 3
80204ece: e7 80 00 0c  	jalr	192(ra)
80204ed2: 13 06 10 08  	li	a2, 129
80204ed6: 09 65        	lui	a0, 2
80204ed8: 33 05 a4 40  	sub	a0, s0, a0
80204edc: 03 35 05 d3  	ld	a0, -720(a0)
80204ee0: 81 45        	li	a1, 0
80204ee2: 97 30 00 00  	auipc	ra, 3
80204ee6: e7 80 80 0a  	jalr	168(ra)
80204eea: 13 06 10 08  	li	a2, 129
80204eee: 09 65        	lui	a0, 2
80204ef0: 33 05 a4 40  	sub	a0, s0, a0
80204ef4: 03 35 85 d2  	ld	a0, -728(a0)
80204ef8: 81 45        	li	a1, 0
80204efa: 97 30 00 00  	auipc	ra, 3
80204efe: e7 80 00 09  	jalr	144(ra)
80204f02: 13 06 10 08  	li	a2, 129
80204f06: 09 65        	lui	a0, 2
80204f08: 33 05 a4 40  	sub	a0, s0, a0
80204f0c: 03 35 05 d2  	ld	a0, -736(a0)
80204f10: 81 45        	li	a1, 0
80204f12: 97 30 00 00  	auipc	ra, 3
80204f16: e7 80 80 07  	jalr	120(ra)
80204f1a: 13 06 10 08  	li	a2, 129
80204f1e: 09 65        	lui	a0, 2
80204f20: 33 05 a4 40  	sub	a0, s0, a0
80204f24: 03 35 85 d1  	ld	a0, -744(a0)
80204f28: 81 45        	li	a1, 0
80204f2a: 97 30 00 00  	auipc	ra, 3
80204f2e: e7 80 00 06  	jalr	96(ra)
80204f32: 13 06 10 08  	li	a2, 129
80204f36: 09 65        	lui	a0, 2
80204f38: 33 05 a4 40  	sub	a0, s0, a0
80204f3c: 03 35 05 d1  	ld	a0, -752(a0)
80204f40: 81 45        	li	a1, 0
80204f42: 97 30 00 00  	auipc	ra, 3
80204f46: e7 80 80 04  	jalr	72(ra)
80204f4a: 13 06 10 08  	li	a2, 129
80204f4e: 09 65        	lui	a0, 2
80204f50: 33 05 a4 40  	sub	a0, s0, a0
80204f54: 03 35 85 d0  	ld	a0, -760(a0)
80204f58: 81 45        	li	a1, 0
80204f5a: 97 30 00 00  	auipc	ra, 3
80204f5e: e7 80 00 03  	jalr	48(ra)
80204f62: 13 06 10 08  	li	a2, 129
80204f66: 09 65        	lui	a0, 2
80204f68: 33 05 a4 40  	sub	a0, s0, a0
80204f6c: 03 35 05 d0  	ld	a0, -768(a0)
80204f70: 81 45        	li	a1, 0
80204f72: 97 30 00 00  	auipc	ra, 3
80204f76: e7 80 80 01  	jalr	24(ra)
80204f7a: 13 06 10 08  	li	a2, 129
80204f7e: 09 65        	lui	a0, 2
80204f80: 33 05 a4 40  	sub	a0, s0, a0
80204f84: 03 35 85 cf  	ld	a0, -776(a0)
80204f88: 81 45        	li	a1, 0
80204f8a: 97 30 00 00  	auipc	ra, 3
80204f8e: e7 80 00 00  	jalr	ra
80204f92: 13 06 10 08  	li	a2, 129
80204f96: 09 65        	lui	a0, 2
80204f98: 33 05 a4 40  	sub	a0, s0, a0
80204f9c: 03 35 05 cf  	ld	a0, -784(a0)
80204fa0: 81 45        	li	a1, 0
80204fa2: 97 30 00 00  	auipc	ra, 3
80204fa6: e7 80 80 fe  	jalr	-24(ra)
80204faa: 13 06 10 08  	li	a2, 129
80204fae: 09 65        	lui	a0, 2
80204fb0: 33 05 a4 40  	sub	a0, s0, a0
80204fb4: 03 35 85 ce  	ld	a0, -792(a0)
80204fb8: 81 45        	li	a1, 0
80204fba: 97 30 00 00  	auipc	ra, 3
80204fbe: e7 80 00 fd  	jalr	-48(ra)
80204fc2: 13 06 10 08  	li	a2, 129
80204fc6: 09 65        	lui	a0, 2
80204fc8: 33 05 a4 40  	sub	a0, s0, a0
80204fcc: 03 35 05 ce  	ld	a0, -800(a0)
80204fd0: 81 45        	li	a1, 0
80204fd2: 97 30 00 00  	auipc	ra, 3
80204fd6: e7 80 80 fb  	jalr	-72(ra)
80204fda: 13 06 10 08  	li	a2, 129
80204fde: 09 65        	lui	a0, 2
80204fe0: 33 05 a4 40  	sub	a0, s0, a0
80204fe4: 03 35 85 cd  	ld	a0, -808(a0)
80204fe8: 81 45        	li	a1, 0
80204fea: 97 30 00 00  	auipc	ra, 3
80204fee: e7 80 00 fa  	jalr	-96(ra)
80204ff2: 13 06 10 08  	li	a2, 129
80204ff6: 09 65        	lui	a0, 2
80204ff8: 33 05 a4 40  	sub	a0, s0, a0
80204ffc: 03 35 05 cd  	ld	a0, -816(a0)
80205000: 81 45        	li	a1, 0
80205002: 97 30 00 00  	auipc	ra, 3
80205006: e7 80 80 f8  	jalr	-120(ra)
8020500a: 13 06 10 08  	li	a2, 129
8020500e: 09 65        	lui	a0, 2
80205010: 33 05 a4 40  	sub	a0, s0, a0
80205014: 03 35 85 cc  	ld	a0, -824(a0)
80205018: 81 45        	li	a1, 0
8020501a: 97 30 00 00  	auipc	ra, 3
8020501e: e7 80 00 f7  	jalr	-144(ra)
80205022: 13 06 10 08  	li	a2, 129
80205026: 09 65        	lui	a0, 2
80205028: 33 05 a4 40  	sub	a0, s0, a0
8020502c: 03 35 05 cc  	ld	a0, -832(a0)
80205030: 81 45        	li	a1, 0
80205032: 97 30 00 00  	auipc	ra, 3
80205036: e7 80 80 f5  	jalr	-168(ra)
8020503a: 13 06 10 08  	li	a2, 129
8020503e: 09 65        	lui	a0, 2
80205040: 33 05 a4 40  	sub	a0, s0, a0
80205044: 03 35 85 cb  	ld	a0, -840(a0)
80205048: 81 45        	li	a1, 0
8020504a: 97 30 00 00  	auipc	ra, 3
8020504e: e7 80 00 f4  	jalr	-192(ra)
80205052: 13 06 10 08  	li	a2, 129
80205056: 09 65        	lui	a0, 2
80205058: 33 05 a4 40  	sub	a0, s0, a0
8020505c: 03 35 05 cb  	ld	a0, -848(a0)
80205060: 81 45        	li	a1, 0
80205062: 97 30 00 00  	auipc	ra, 3
80205066: e7 80 80 f2  	jalr	-216(ra)
8020506a: 13 06 10 08  	li	a2, 129
8020506e: 09 65        	lui	a0, 2
80205070: 33 05 a4 40  	sub	a0, s0, a0
80205074: 03 35 85 ca  	ld	a0, -856(a0)
80205078: 81 45        	li	a1, 0
8020507a: 97 30 00 00  	auipc	ra, 3
8020507e: e7 80 00 f1  	jalr	-240(ra)
80205082: 13 06 10 08  	li	a2, 129
80205086: 09 65        	lui	a0, 2
80205088: 33 05 a4 40  	sub	a0, s0, a0
8020508c: 03 35 05 ca  	ld	a0, -864(a0)
80205090: 81 45        	li	a1, 0
80205092: 97 30 00 00  	auipc	ra, 3
80205096: e7 80 80 ef  	jalr	-264(ra)
8020509a: 13 06 10 08  	li	a2, 129
8020509e: 09 65        	lui	a0, 2
802050a0: 33 05 a4 40  	sub	a0, s0, a0
802050a4: 03 35 85 c9  	ld	a0, -872(a0)
802050a8: 81 45        	li	a1, 0
802050aa: 97 30 00 00  	auipc	ra, 3
802050ae: e7 80 00 ee  	jalr	-288(ra)
802050b2: 13 06 10 08  	li	a2, 129
802050b6: 09 65        	lui	a0, 2
802050b8: 33 05 a4 40  	sub	a0, s0, a0
802050bc: 03 35 05 c9  	ld	a0, -880(a0)
802050c0: 81 45        	li	a1, 0
802050c2: 97 30 00 00  	auipc	ra, 3
802050c6: e7 80 80 ec  	jalr	-312(ra)
802050ca: 13 06 10 08  	li	a2, 129
802050ce: 09 65        	lui	a0, 2
802050d0: 33 05 a4 40  	sub	a0, s0, a0
802050d4: 03 35 85 c8  	ld	a0, -888(a0)
802050d8: 81 45        	li	a1, 0
802050da: 97 30 00 00  	auipc	ra, 3
802050de: e7 80 00 eb  	jalr	-336(ra)
802050e2: 13 06 10 08  	li	a2, 129
802050e6: 09 65        	lui	a0, 2
802050e8: 33 05 a4 40  	sub	a0, s0, a0
802050ec: 03 35 05 c8  	ld	a0, -896(a0)
802050f0: 81 45        	li	a1, 0
802050f2: 97 30 00 00  	auipc	ra, 3
802050f6: e7 80 80 e9  	jalr	-360(ra)
802050fa: 13 06 10 08  	li	a2, 129
802050fe: 09 65        	lui	a0, 2
80205100: 33 05 a4 40  	sub	a0, s0, a0
80205104: 03 35 85 c7  	ld	a0, -904(a0)
80205108: 81 45        	li	a1, 0
8020510a: 97 30 00 00  	auipc	ra, 3
8020510e: e7 80 00 e8  	jalr	-384(ra)
80205112: 13 06 10 08  	li	a2, 129
80205116: 09 65        	lui	a0, 2
80205118: 33 05 a4 40  	sub	a0, s0, a0
8020511c: 03 35 05 c7  	ld	a0, -912(a0)
80205120: 81 45        	li	a1, 0
80205122: 97 30 00 00  	auipc	ra, 3
80205126: e7 80 80 e6  	jalr	-408(ra)
8020512a: 13 06 10 08  	li	a2, 129
8020512e: 09 65        	lui	a0, 2
80205130: 33 05 a4 40  	sub	a0, s0, a0
80205134: 03 35 85 c6  	ld	a0, -920(a0)
80205138: 81 45        	li	a1, 0
8020513a: 97 30 00 00  	auipc	ra, 3
8020513e: e7 80 00 e5  	jalr	-432(ra)
80205142: 13 06 10 08  	li	a2, 129
80205146: 09 65        	lui	a0, 2
80205148: 33 05 a4 40  	sub	a0, s0, a0
8020514c: 03 35 05 c6  	ld	a0, -928(a0)
80205150: 81 45        	li	a1, 0
80205152: 97 30 00 00  	auipc	ra, 3
80205156: e7 80 80 e3  	jalr	-456(ra)
8020515a: 13 06 10 08  	li	a2, 129
8020515e: 09 65        	lui	a0, 2
80205160: 33 05 a4 40  	sub	a0, s0, a0
80205164: 03 35 85 c5  	ld	a0, -936(a0)
80205168: 81 45        	li	a1, 0
8020516a: 97 30 00 00  	auipc	ra, 3
8020516e: e7 80 00 e2  	jalr	-480(ra)
80205172: 13 06 10 08  	li	a2, 129
80205176: 09 65        	lui	a0, 2
80205178: 33 05 a4 40  	sub	a0, s0, a0
8020517c: 03 35 05 c5  	ld	a0, -944(a0)
80205180: 81 45        	li	a1, 0
80205182: 97 30 00 00  	auipc	ra, 3
80205186: e7 80 80 e0  	jalr	-504(ra)
8020518a: 13 06 10 08  	li	a2, 129
8020518e: 09 65        	lui	a0, 2
80205190: 33 05 a4 40  	sub	a0, s0, a0
80205194: 03 35 85 c4  	ld	a0, -952(a0)
80205198: 81 45        	li	a1, 0
8020519a: 97 30 00 00  	auipc	ra, 3
8020519e: e7 80 00 df  	jalr	-528(ra)
802051a2: 13 06 10 08  	li	a2, 129
802051a6: 09 65        	lui	a0, 2
802051a8: 33 05 a4 40  	sub	a0, s0, a0
802051ac: 03 35 05 c4  	ld	a0, -960(a0)
802051b0: 81 45        	li	a1, 0
802051b2: 97 30 00 00  	auipc	ra, 3
802051b6: e7 80 80 dd  	jalr	-552(ra)
802051ba: 13 06 10 08  	li	a2, 129
802051be: 09 65        	lui	a0, 2
802051c0: 33 05 a4 40  	sub	a0, s0, a0
802051c4: 03 35 85 c3  	ld	a0, -968(a0)
802051c8: 81 45        	li	a1, 0
802051ca: 97 30 00 00  	auipc	ra, 3
802051ce: e7 80 00 dc  	jalr	-576(ra)
802051d2: 13 06 10 08  	li	a2, 129
802051d6: 09 65        	lui	a0, 2
802051d8: 33 05 a4 40  	sub	a0, s0, a0
802051dc: 03 35 05 c3  	ld	a0, -976(a0)
802051e0: 81 45        	li	a1, 0
802051e2: 97 30 00 00  	auipc	ra, 3
802051e6: e7 80 80 da  	jalr	-600(ra)
802051ea: 13 06 10 08  	li	a2, 129
802051ee: 09 65        	lui	a0, 2
802051f0: 33 05 a4 40  	sub	a0, s0, a0
802051f4: 03 35 85 c2  	ld	a0, -984(a0)
802051f8: 81 45        	li	a1, 0
802051fa: 97 30 00 00  	auipc	ra, 3
802051fe: e7 80 00 d9  	jalr	-624(ra)
80205202: 13 06 10 08  	li	a2, 129
80205206: 09 65        	lui	a0, 2
80205208: 33 05 a4 40  	sub	a0, s0, a0
8020520c: 03 35 05 c2  	ld	a0, -992(a0)
80205210: 81 45        	li	a1, 0
80205212: 97 30 00 00  	auipc	ra, 3
80205216: e7 80 80 d7  	jalr	-648(ra)
8020521a: 13 06 10 08  	li	a2, 129
8020521e: 09 65        	lui	a0, 2
80205220: 33 05 a4 40  	sub	a0, s0, a0
80205224: 03 35 85 c1  	ld	a0, -1000(a0)
80205228: 81 45        	li	a1, 0
8020522a: 97 30 00 00  	auipc	ra, 3
8020522e: e7 80 00 d6  	jalr	-672(ra)
80205232: 13 06 10 08  	li	a2, 129
80205236: 09 65        	lui	a0, 2
80205238: 33 05 a4 40  	sub	a0, s0, a0
8020523c: 03 35 05 c1  	ld	a0, -1008(a0)
80205240: 81 45        	li	a1, 0
80205242: 97 30 00 00  	auipc	ra, 3
80205246: e7 80 80 d4  	jalr	-696(ra)
8020524a: 13 06 10 08  	li	a2, 129
8020524e: 09 65        	lui	a0, 2
80205250: 33 05 a4 40  	sub	a0, s0, a0
80205254: 03 35 85 c0  	ld	a0, -1016(a0)
80205258: 81 45        	li	a1, 0
8020525a: 97 30 00 00  	auipc	ra, 3
8020525e: e7 80 00 d3  	jalr	-720(ra)
80205262: 13 06 10 08  	li	a2, 129
80205266: 09 65        	lui	a0, 2
80205268: 33 05 a4 40  	sub	a0, s0, a0
8020526c: 03 35 05 c0  	ld	a0, -1024(a0)
80205270: 81 45        	li	a1, 0
80205272: 97 30 00 00  	auipc	ra, 3
80205276: e7 80 80 d1  	jalr	-744(ra)
8020527a: 13 06 10 08  	li	a2, 129
8020527e: 09 65        	lui	a0, 2
80205280: 33 05 a4 40  	sub	a0, s0, a0
80205284: 03 35 85 bf  	ld	a0, -1032(a0)
80205288: 81 45        	li	a1, 0
8020528a: 97 30 00 00  	auipc	ra, 3
8020528e: e7 80 00 d0  	jalr	-768(ra)
80205292: 13 06 10 08  	li	a2, 129
80205296: 09 65        	lui	a0, 2
80205298: 33 05 a4 40  	sub	a0, s0, a0
8020529c: 03 35 05 bf  	ld	a0, -1040(a0)
802052a0: 81 45        	li	a1, 0
802052a2: 97 30 00 00  	auipc	ra, 3
802052a6: e7 80 80 ce  	jalr	-792(ra)
802052aa: 13 85 04 01  	addi	a0, s1, 16
802052ae: 45 46        	li	a2, 17
802052b0: 26 06        	slli	a2, a2, 9
802052b2: 89 65        	lui	a1, 2
802052b4: 9b 85 85 27  	addiw	a1, a1, 632
802052b8: b3 05 b4 40  	sub	a1, s0, a1
802052bc: 97 30 00 00  	auipc	ra, 3
802052c0: e7 80 60 cd  	jalr	-810(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802052c4: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802052c8: 23 04 09 00  	sb	zero, 8(s2)
802052cc: 0f 00 10 03  	fence	rw, w
802052d0: 23 b0 a4 01  	sd	s10, 0(s1)
802052d4: 09 65        	lui	a0, 2
802052d6: 1b 05 85 28  	addiw	a0, a0, 648
802052da: 33 05 a4 40  	sub	a0, s0, a0
802052de: 97 20 00 00  	auipc	ra, 2
802052e2: e7 80 20 03  	jalr	50(ra)
802052e6: 21 a8        	j	0x802052fe <.Lpcrel_hi34+0x24fe>
802052e8: 0f 00 00 01  	fence	w, 0
802052ec: 0f 00 30 03  	fence	rw, rw
802052f0: 88 60        	ld	a0, 0(s1)
802052f2: 0f 00 30 02  	fence	r, rw
;             match status {
802052f6: e3 09 b5 ff  	beq	a0, s11, 0x802052e8 <.Lpcrel_hi34+0x24e8>
802052fa: 63 19 a5 0f  	bne	a0, s10, 0x802053ec <.Lpcrel_hi54+0xa>
802052fe: 63 71 7b 09  	bgeu	s6, s7, 0x80205380 <.Lpcrel_hi62>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80205302: 73 25 00 10  	csrr	a0, sstatus
;                 (*self & (1 << bit)) != 0
80205306: 09 89        	andi	a0, a0, 2
;     if sstatus::read().sie() {
80205308: 63 14 05 1c  	bnez	a0, 0x802054d0 <.Lpcrel_hi63>
;     if mc.noff < 1 {
8020530c: 33 05 8b 03  	mul	a0, s6, s8
80205310: 26 95        	add	a0, a0, s1
80205312: 4c 65        	ld	a1, 136(a0)
80205314: 63 58 b0 1e  	blez	a1, 0x80205504 <.Lpcrel_hi66>
80205318: 13 06 85 08  	addi	a2, a0, 136
;     mc.noff -= 1;
8020531c: fd 15        	addi	a1, a1, -1
8020531e: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
80205320: 99 c1        	beqz	a1, 0x80205326 <.Lpcrel_hi34+0x2526>
80205322: 6f d0 3f e3  	j	0x80203154 <.Lpcrel_hi34+0x354>
80205326: 03 45 05 09  	lbu	a0, 144(a0)
8020532a: 19 e1        	bnez	a0, 0x80205330 <.Lpcrel_hi34+0x2530>
8020532c: 6f d0 9f e2  	j	0x80203154 <.Lpcrel_hi34+0x354>
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80205330: 73 20 0d 10  	csrs	sstatus, s10
80205334: 6f d0 1f e2  	j	0x80203154 <.Lpcrel_hi34+0x354>

0000000080205338 <.Lpcrel_hi39>:
; 	&mut CPUS.get_mut()[id]
80205338: 17 45 00 00  	auipc	a0, 4
8020533c: 13 06 05 67  	addi	a2, a0, 1648
80205340: 93 05 00 04  	li	a1, 64
80205344: 5a 85        	mv	a0, s6
80205346: 97 20 00 00  	auipc	ra, 2
8020534a: e7 80 40 23  	jalr	564(ra)
8020534e: 00 00        	unimp	

0000000080205350 <.Lpcrel_hi52>:
; 	&mut CPUS.get_mut()[id]
80205350: 17 45 00 00  	auipc	a0, 4
80205354: 13 06 85 65  	addi	a2, a0, 1624
80205358: 93 05 00 04  	li	a1, 64
8020535c: 5a 85        	mv	a0, s6
8020535e: 97 20 00 00  	auipc	ra, 2
80205362: e7 80 c0 21  	jalr	540(ra)
80205366: 00 00        	unimp	

0000000080205368 <.Lpcrel_hi57>:
; 	&mut CPUS.get_mut()[id]
80205368: 17 45 00 00  	auipc	a0, 4
8020536c: 13 06 05 64  	addi	a2, a0, 1600
80205370: 93 05 00 04  	li	a1, 64
80205374: 5a 85        	mv	a0, s6
80205376: 97 20 00 00  	auipc	ra, 2
8020537a: e7 80 40 20  	jalr	516(ra)
8020537e: 00 00        	unimp	

0000000080205380 <.Lpcrel_hi62>:
; 	&mut CPUS.get_mut()[id]
80205380: 17 45 00 00  	auipc	a0, 4
80205384: 13 06 85 62  	addi	a2, a0, 1576
80205388: 93 05 00 04  	li	a1, 64
8020538c: 5a 85        	mv	a0, s6
8020538e: 97 20 00 00  	auipc	ra, 2
80205392: e7 80 c0 1e  	jalr	492(ra)
80205396: 00 00        	unimp	

0000000080205398 <.Lpcrel_hi44>:
; 	&mut CPUS.get_mut()[id]
80205398: 17 45 00 00  	auipc	a0, 4
8020539c: 13 06 05 61  	addi	a2, a0, 1552
802053a0: 93 05 00 04  	li	a1, 64
802053a4: 5a 85        	mv	a0, s6
802053a6: 97 20 00 00  	auipc	ra, 2
802053aa: e7 80 40 1d  	jalr	468(ra)
802053ae: 00 00        	unimp	
;             match status {
802053b0: 25 e9        	bnez	a0, 0x80205420 <.Lpcrel_hi37>

00000000802053b2 <.Lpcrel_hi35>:
;                 INCOMPLETE => unreachable!(),
802053b2: 17 45 00 00  	auipc	a0, 4
802053b6: 13 05 65 cd  	addi	a0, a0, -810

00000000802053ba <.Lpcrel_hi36>:
802053ba: 97 45 00 00  	auipc	a1, 4
802053be: 13 86 65 cf  	addi	a2, a1, -778
802053c2: 81 a8        	j	0x80205412 <.Lpcrel_hi41+0x8>
;             match status {
802053c4: 3d e5        	bnez	a0, 0x80205432 <.Lpcrel_hi50>

00000000802053c6 <.Lpcrel_hi48>:
;                 INCOMPLETE => unreachable!(),
802053c6: 17 45 00 00  	auipc	a0, 4
802053ca: 13 05 25 cc  	addi	a0, a0, -830

00000000802053ce <.Lpcrel_hi49>:
802053ce: 97 45 00 00  	auipc	a1, 4
802053d2: 13 86 25 ce  	addi	a2, a1, -798
802053d6: 35 a8        	j	0x80205412 <.Lpcrel_hi41+0x8>
;             match status {
802053d8: 35 e5        	bnez	a0, 0x80205444 <.Lpcrel_hi55>

00000000802053da <.Lpcrel_hi53>:
;                 INCOMPLETE => unreachable!(),
802053da: 17 45 00 00  	auipc	a0, 4
802053de: 13 05 e5 ca  	addi	a0, a0, -850

00000000802053e2 <.Lpcrel_hi54>:
802053e2: 97 45 00 00  	auipc	a1, 4
802053e6: 13 86 e5 cc  	addi	a2, a1, -818
802053ea: 25 a0        	j	0x80205412 <.Lpcrel_hi41+0x8>
;             match status {
802053ec: 2d e5        	bnez	a0, 0x80205456 <.Lpcrel_hi60>

00000000802053ee <.Lpcrel_hi58>:
;                 INCOMPLETE => unreachable!(),
802053ee: 17 45 00 00  	auipc	a0, 4
802053f2: 13 05 a5 c9  	addi	a0, a0, -870

00000000802053f6 <.Lpcrel_hi59>:
802053f6: 97 45 00 00  	auipc	a1, 4
802053fa: 13 86 a5 cb  	addi	a2, a1, -838
802053fe: 11 a8        	j	0x80205412 <.Lpcrel_hi41+0x8>
;             match status {
80205400: 25 e5        	bnez	a0, 0x80205468 <.Lpcrel_hi42>

0000000080205402 <.Lpcrel_hi40>:
;                 INCOMPLETE => unreachable!(),
80205402: 17 45 00 00  	auipc	a0, 4
80205406: 13 05 65 c8  	addi	a0, a0, -890

000000008020540a <.Lpcrel_hi41>:
8020540a: 97 45 00 00  	auipc	a1, 4
8020540e: 13 86 65 ca  	addi	a2, a1, -858
80205412: 93 05 80 02  	li	a1, 40
80205416: 97 20 00 00  	auipc	ra, 2
8020541a: e7 80 80 13  	jalr	312(ra)
8020541e: 00 00        	unimp	

0000000080205420 <.Lpcrel_hi37>:
;                 PANICKED => panic!("Once has panicked"),
80205420: 17 45 00 00  	auipc	a0, 4
80205424: 13 05 05 be  	addi	a0, a0, -1056

0000000080205428 <.Lpcrel_hi38>:
80205428: 97 45 00 00  	auipc	a1, 4
8020542c: 13 86 85 c4  	addi	a2, a1, -952
80205430: a1 a0        	j	0x80205478 <.Lpcrel_hi43+0x8>

0000000080205432 <.Lpcrel_hi50>:
80205432: 17 45 00 00  	auipc	a0, 4
80205436: 13 05 e5 bc  	addi	a0, a0, -1074

000000008020543a <.Lpcrel_hi51>:
8020543a: 97 45 00 00  	auipc	a1, 4
8020543e: 13 86 65 c3  	addi	a2, a1, -970
80205442: 1d a8        	j	0x80205478 <.Lpcrel_hi43+0x8>

0000000080205444 <.Lpcrel_hi55>:
80205444: 17 45 00 00  	auipc	a0, 4
80205448: 13 05 c5 bb  	addi	a0, a0, -1092

000000008020544c <.Lpcrel_hi56>:
8020544c: 97 45 00 00  	auipc	a1, 4
80205450: 13 86 45 c2  	addi	a2, a1, -988
80205454: 15 a0        	j	0x80205478 <.Lpcrel_hi43+0x8>

0000000080205456 <.Lpcrel_hi60>:
80205456: 17 45 00 00  	auipc	a0, 4
8020545a: 13 05 a5 ba  	addi	a0, a0, -1110

000000008020545e <.Lpcrel_hi61>:
8020545e: 97 45 00 00  	auipc	a1, 4
80205462: 13 86 25 c1  	addi	a2, a1, -1006
80205466: 09 a8        	j	0x80205478 <.Lpcrel_hi43+0x8>

0000000080205468 <.Lpcrel_hi42>:
80205468: 17 45 00 00  	auipc	a0, 4
8020546c: 13 05 85 b9  	addi	a0, a0, -1128

0000000080205470 <.Lpcrel_hi43>:
80205470: 97 45 00 00  	auipc	a1, 4
80205474: 13 86 05 c0  	addi	a2, a1, -1024
80205478: c5 45        	li	a1, 17
8020547a: 97 20 00 00  	auipc	ra, 2
8020547e: e7 80 40 0d  	jalr	212(ra)
80205482: 00 00        	unimp	

0000000080205484 <.Lpcrel_hi69>:
80205484: 17 45 00 00  	auipc	a0, 4
80205488: 13 05 c5 0b  	addi	a0, a0, 188
8020548c: 89 65        	lui	a1, 2
8020548e: 9b 85 85 28  	addiw	a1, a1, 648
80205492: b3 05 b4 40  	sub	a1, s0, a1
80205496: 88 e9        	sd	a0, 16(a1)
80205498: 05 45        	li	a0, 1
8020549a: 88 ed        	sd	a0, 24(a1)
8020549c: 23 b8 05 02  	sd	zero, 48(a1)

00000000802054a0 <.Lpcrel_hi70>:
802054a0: 17 45 00 00  	auipc	a0, 4
802054a4: 13 05 05 05  	addi	a0, a0, 80
802054a8: 88 f1        	sd	a0, 32(a1)
802054aa: 23 b4 05 02  	sd	zero, 40(a1)

00000000802054ae <.Lpcrel_hi71>:
;             panic!("release");
802054ae: 17 45 00 00  	auipc	a0, 4
802054b2: 93 05 25 0a  	addi	a1, a0, 162
802054b6: 55 a8        	j	0x8020556a <.Lpcrel_hi47+0x8>

00000000802054b8 <.Lpcrel_hi33>:
; 	&mut CPUS.get_mut()[id]
802054b8: 17 45 00 00  	auipc	a0, 4
802054bc: 13 06 05 4f  	addi	a2, a0, 1264
802054c0: 93 05 00 04  	li	a1, 64
802054c4: 4a 85        	mv	a0, s2
802054c6: 97 20 00 00  	auipc	ra, 2
802054ca: e7 80 40 0b  	jalr	180(ra)
802054ce: 00 00        	unimp	

00000000802054d0 <.Lpcrel_hi63>:
802054d0: 17 45 00 00  	auipc	a0, 4
802054d4: 13 05 05 0b  	addi	a0, a0, 176
802054d8: 89 65        	lui	a1, 2
802054da: 9b 85 85 28  	addiw	a1, a1, 648
802054de: b3 05 b4 40  	sub	a1, s0, a1
802054e2: 88 e9        	sd	a0, 16(a1)
802054e4: 05 45        	li	a0, 1
802054e6: 88 ed        	sd	a0, 24(a1)
802054e8: 23 b8 05 02  	sd	zero, 48(a1)

00000000802054ec <.Lpcrel_hi64>:
802054ec: 17 45 00 00  	auipc	a0, 4
802054f0: 13 05 45 00  	addi	a0, a0, 4
802054f4: 88 f1        	sd	a0, 32(a1)
802054f6: 23 b4 05 02  	sd	zero, 40(a1)

00000000802054fa <.Lpcrel_hi65>:
;         panic!("pop_off - interruptible");
802054fa: 17 45 00 00  	auipc	a0, 4
802054fe: 93 05 65 09  	addi	a1, a0, 150
80205502: a5 a0        	j	0x8020556a <.Lpcrel_hi47+0x8>

0000000080205504 <.Lpcrel_hi66>:
80205504: 17 45 00 00  	auipc	a0, 4
80205508: 13 05 c5 0a  	addi	a0, a0, 172
8020550c: 89 65        	lui	a1, 2
8020550e: 9b 85 85 28  	addiw	a1, a1, 648
80205512: b3 05 b4 40  	sub	a1, s0, a1
80205516: 88 e9        	sd	a0, 16(a1)
80205518: 05 45        	li	a0, 1
8020551a: 88 ed        	sd	a0, 24(a1)
8020551c: 23 b8 05 02  	sd	zero, 48(a1)

0000000080205520 <.Lpcrel_hi67>:
80205520: 17 45 00 00  	auipc	a0, 4
80205524: 13 05 05 fd  	addi	a0, a0, -48
80205528: 88 f1        	sd	a0, 32(a1)
8020552a: 23 b4 05 02  	sd	zero, 40(a1)

000000008020552e <.Lpcrel_hi68>:
;         panic!("pop_off");
8020552e: 17 45 00 00  	auipc	a0, 4
80205532: 93 05 25 09  	addi	a1, a0, 146
80205536: 15 a8        	j	0x8020556a <.Lpcrel_hi47+0x8>

0000000080205538 <.Lpcrel_hi45>:
80205538: 17 45 00 00  	auipc	a0, 4
8020553c: 13 05 05 fc  	addi	a0, a0, -64
80205540: 89 65        	lui	a1, 2
80205542: 9b 85 85 28  	addiw	a1, a1, 648
80205546: b3 05 b4 40  	sub	a1, s0, a1
8020554a: 88 e9        	sd	a0, 16(a1)
8020554c: 05 45        	li	a0, 1
8020554e: 88 ed        	sd	a0, 24(a1)
80205550: 23 b8 05 02  	sd	zero, 48(a1)

0000000080205554 <.Lpcrel_hi46>:
80205554: 17 45 00 00  	auipc	a0, 4
80205558: 13 05 c5 f9  	addi	a0, a0, -100
8020555c: 88 f1        	sd	a0, 32(a1)
8020555e: 23 b4 05 02  	sd	zero, 40(a1)

0000000080205562 <.Lpcrel_hi47>:
;             panic!("acquire");
80205562: 17 45 00 00  	auipc	a0, 4
80205566: 93 05 e5 fb  	addi	a1, a0, -66
8020556a: 09 65        	lui	a0, 2
8020556c: 1b 05 85 27  	addiw	a0, a0, 632
80205570: 33 05 a4 40  	sub	a0, s0, a0
80205574: 97 20 00 00  	auipc	ra, 2
80205578: e7 80 c0 fa  	jalr	-84(ra)
8020557c: 00 00        	unimp	

000000008020557e <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
8020557e: 71 71        	addi	sp, sp, -176
80205580: 06 f5        	sd	ra, 168(sp)
80205582: 22 f1        	sd	s0, 160(sp)
80205584: 26 ed        	sd	s1, 152(sp)
80205586: 00 19        	addi	s0, sp, 176
80205588: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
8020558a: 97 20 00 00  	auipc	ra, 2
8020558e: e7 80 e0 f8  	jalr	-114(ra)
80205592: 05 e1        	bnez	a0, 0x802055b2 <.Lpcrel_hi1+0x16>

0000000080205594 <.Lpcrel_hi0>:
80205594: 17 45 00 00  	auipc	a0, 4
80205598: 13 05 c5 c1  	addi	a0, a0, -996

000000008020559c <.Lpcrel_hi1>:
8020559c: 97 45 00 00  	auipc	a1, 4
802055a0: 13 86 45 c5  	addi	a2, a1, -940
802055a4: 93 05 b0 02  	li	a1, 43
802055a8: 97 20 00 00  	auipc	ra, 2
802055ac: e7 80 60 fa  	jalr	-90(ra)
802055b0: 00 00        	unimp	
802055b2: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802055b6: 26 85        	mv	a0, s1
802055b8: 97 20 00 00  	auipc	ra, 2
802055bc: e7 80 40 f6  	jalr	-156(ra)
802055c0: 59 e1        	bnez	a0, 0x80205646 <.Lpcrel_hi15+0x1a>
802055c2: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
802055c6: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802055ca <.Lpcrel_hi10>:
802055ca: 17 25 00 00  	auipc	a0, 2
802055ce: 13 05 45 cf  	addi	a0, a0, -780
802055d2: 23 34 a4 f6  	sd	a0, -152(s0)
802055d6: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
802055da: 23 38 a4 f8  	sd	a0, -112(s0)

00000000802055de <.Lpcrel_hi11>:
802055de: 17 45 00 00  	auipc	a0, 4
802055e2: 13 05 25 b6  	addi	a0, a0, -1182
802055e6: 23 38 a4 fa  	sd	a0, -80(s0)
802055ea: 09 45        	li	a0, 2
802055ec: 23 3c a4 fa  	sd	a0, -72(s0)
802055f0: 13 05 04 f6  	addi	a0, s0, -160
802055f4: 23 30 a4 fc  	sd	a0, -64(s0)
802055f8: 05 45        	li	a0, 1
802055fa: 23 34 a4 fc  	sd	a0, -56(s0)
802055fe: 23 38 04 fc  	sd	zero, -48(s0)

0000000080205602 <.Lpcrel_hi12>:
80205602: 17 45 00 00  	auipc	a0, 4
80205606: 93 05 65 15  	addi	a1, a0, 342
8020560a: 13 05 04 f9  	addi	a0, s0, -112
8020560e: 13 06 04 fb  	addi	a2, s0, -80
80205612: 97 20 00 00  	auipc	ra, 2
80205616: e7 80 60 00  	jalr	6(ra)
8020561a: 6d c5        	beqz	a0, 0x80205704 <.Lpcrel_hi9+0x1a>

000000008020561c <.Lpcrel_hi13>:
8020561c: 17 45 00 00  	auipc	a0, 4
80205620: 13 05 c5 16  	addi	a0, a0, 364

0000000080205624 <.Lpcrel_hi14>:
80205624: 97 45 00 00  	auipc	a1, 4
80205628: 93 86 45 19  	addi	a3, a1, 404

000000008020562c <.Lpcrel_hi15>:
8020562c: 97 45 00 00  	auipc	a1, 4
80205630: 13 87 c5 1b  	addi	a4, a1, 444
80205634: 93 05 b0 02  	li	a1, 43
80205638: 13 06 04 fe  	addi	a2, s0, -32
8020563c: 97 20 00 00  	auipc	ra, 2
80205640: e7 80 e0 f7  	jalr	-130(ra)
80205644: 00 00        	unimp	
80205646: 0c 61        	ld	a1, 0(a0)
80205648: 10 65        	ld	a2, 8(a0)
8020564a: 23 38 b4 f8  	sd	a1, -112(s0)
8020564e: 23 3c c4 f8  	sd	a2, -104(s0)
80205652: 08 49        	lw	a0, 16(a0)
80205654: 23 22 a4 fa  	sw	a0, -92(s0)
80205658: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
8020565c: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080205660 <.Lpcrel_hi2>:
80205660: 17 25 00 00  	auipc	a0, 2
80205664: 13 05 65 c7  	addi	a0, a0, -906
80205668: 23 34 a4 f6  	sd	a0, -152(s0)
8020566c: 13 05 44 fa  	addi	a0, s0, -92
80205670: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080205674 <.Lpcrel_hi3>:
80205674: 17 35 00 00  	auipc	a0, 3
80205678: 13 05 e5 8c  	addi	a0, a0, -1842
8020567c: 23 3c a4 f6  	sd	a0, -136(s0)
80205680: 13 05 84 f5  	addi	a0, s0, -168
80205684: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080205688 <.Lpcrel_hi4>:
80205688: 17 25 00 00  	auipc	a0, 2
8020568c: 13 05 65 c3  	addi	a0, a0, -970
80205690: 23 34 a4 f8  	sd	a0, -120(s0)
80205694: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80205698: 23 34 a4 fa  	sd	a0, -88(s0)

000000008020569c <.Lpcrel_hi5>:
8020569c: 17 45 00 00  	auipc	a0, 4
802056a0: 13 05 45 ad  	addi	a0, a0, -1324
802056a4: 23 38 a4 fa  	sd	a0, -80(s0)
802056a8: 11 45        	li	a0, 4
802056aa: 23 3c a4 fa  	sd	a0, -72(s0)
802056ae: 13 05 04 f6  	addi	a0, s0, -160
802056b2: 23 30 a4 fc  	sd	a0, -64(s0)
802056b6: 0d 45        	li	a0, 3
802056b8: 23 34 a4 fc  	sd	a0, -56(s0)
802056bc: 23 38 04 fc  	sd	zero, -48(s0)

00000000802056c0 <.Lpcrel_hi6>:
802056c0: 17 45 00 00  	auipc	a0, 4
802056c4: 93 05 85 09  	addi	a1, a0, 152
802056c8: 13 05 84 fa  	addi	a0, s0, -88
802056cc: 13 06 04 fb  	addi	a2, s0, -80
802056d0: 97 20 00 00  	auipc	ra, 2
802056d4: e7 80 80 f4  	jalr	-184(ra)
802056d8: 15 c5        	beqz	a0, 0x80205704 <.Lpcrel_hi9+0x1a>

00000000802056da <.Lpcrel_hi7>:
802056da: 17 45 00 00  	auipc	a0, 4
802056de: 13 05 e5 0a  	addi	a0, a0, 174

00000000802056e2 <.Lpcrel_hi8>:
802056e2: 97 45 00 00  	auipc	a1, 4
802056e6: 93 86 65 0d  	addi	a3, a1, 214

00000000802056ea <.Lpcrel_hi9>:
802056ea: 97 45 00 00  	auipc	a1, 4
802056ee: 13 87 e5 0f  	addi	a4, a1, 254
802056f2: 93 05 b0 02  	li	a1, 43
802056f6: 13 06 04 fe  	addi	a2, s0, -32
802056fa: 97 20 00 00  	auipc	ra, 2
802056fe: e7 80 00 ec  	jalr	-320(ra)
80205702: 00 00        	unimp	
;     shutdown()
80205704: 97 00 00 00  	auipc	ra, 0
80205708: e7 80 80 09  	jalr	152(ra)
8020570c: 00 00        	unimp	

000000008020570e <_ZN6kernel4trap12trapinithart17h94706168cc591251E>:
; pub fn trapinithart() {
8020570e: 5d 71        	addi	sp, sp, -80
80205710: 86 e4        	sd	ra, 72(sp)
80205712: a2 e0        	sd	s0, 64(sp)
80205714: 80 08        	addi	s0, sp, 80

0000000080205716 <.Lpcrel_hi6>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80205716: 17 c5 ff ff  	auipc	a0, 1048572
8020571a: 13 05 a5 a1  	addi	a0, a0, -1510
8020571e: 73 10 55 10  	csrw	stvec, a0
80205722: 13 05 84 fe  	addi	a0, s0, -24
;     Stdout.write_fmt(args).unwrap();
80205726: 23 38 a4 fa  	sd	a0, -80(s0)

000000008020572a <.Lpcrel_hi7>:
8020572a: 17 45 00 00  	auipc	a0, 4
8020572e: 13 05 e5 b1  	addi	a0, a0, -1250
80205732: 23 3c a4 fa  	sd	a0, -72(s0)
80205736: 05 45        	li	a0, 1
80205738: 23 30 a4 fc  	sd	a0, -64(s0)

000000008020573c <.Lpcrel_hi8>:
8020573c: 17 45 00 00  	auipc	a0, 4
80205740: 13 05 45 af  	addi	a0, a0, -1292
80205744: 23 34 a4 fc  	sd	a0, -56(s0)
80205748: 23 38 04 fc  	sd	zero, -48(s0)
8020574c: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080205750 <.Lpcrel_hi9>:
80205750: 17 45 00 00  	auipc	a0, 4
80205754: 93 05 85 00  	addi	a1, a0, 8
80205758: 13 05 04 fb  	addi	a0, s0, -80
8020575c: 13 06 84 fb  	addi	a2, s0, -72
80205760: 97 20 00 00  	auipc	ra, 2
80205764: e7 80 80 eb  	jalr	-328(ra)
80205768: 09 e5        	bnez	a0, 0x80205772 <.Lpcrel_hi10>
; }
8020576a: a6 60        	ld	ra, 72(sp)
8020576c: 06 64        	ld	s0, 64(sp)
8020576e: 61 61        	addi	sp, sp, 80
80205770: 82 80        	ret

0000000080205772 <.Lpcrel_hi10>:
80205772: 17 45 00 00  	auipc	a0, 4
80205776: 13 05 65 01  	addi	a0, a0, 22

000000008020577a <.Lpcrel_hi11>:
8020577a: 97 45 00 00  	auipc	a1, 4
8020577e: 93 86 e5 03  	addi	a3, a1, 62

0000000080205782 <.Lpcrel_hi12>:
80205782: 97 45 00 00  	auipc	a1, 4
80205786: 13 87 65 06  	addi	a4, a1, 102
8020578a: 93 05 b0 02  	li	a1, 43
8020578e: 13 06 84 fe  	addi	a2, s0, -24
80205792: 97 20 00 00  	auipc	ra, 2
80205796: e7 80 80 e2  	jalr	-472(ra)
8020579a: 00 00        	unimp	

000000008020579c <_ZN6kernel3sbi8shutdown17ha34b2f5a5af9ddbbE>:
; pub fn shutdown() -> ! {
8020579c: 39 71        	addi	sp, sp, -64
8020579e: 06 fc        	sd	ra, 56(sp)
802057a0: 22 f8        	sd	s0, 48(sp)
802057a2: 80 00        	addi	s0, sp, 64
;         asm!(
802057a4: a1 48        	li	a7, 8
802057a6: 01 45        	li	a0, 0
802057a8: 81 45        	li	a1, 0
802057aa: 01 46        	li	a2, 0
802057ac: 73 00 00 00  	ecall	

00000000802057b0 <.Lpcrel_hi0>:
802057b0: 17 45 00 00  	auipc	a0, 4
802057b4: 13 05 05 b1  	addi	a0, a0, -1264
802057b8: 23 30 a4 fc  	sd	a0, -64(s0)
802057bc: 05 45        	li	a0, 1
802057be: 23 34 a4 fc  	sd	a0, -56(s0)
802057c2: 23 30 04 fe  	sd	zero, -32(s0)

00000000802057c6 <.Lpcrel_hi1>:
802057c6: 17 45 00 00  	auipc	a0, 4
802057ca: 13 05 25 ae  	addi	a0, a0, -1310
802057ce: 23 38 a4 fc  	sd	a0, -48(s0)
802057d2: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802057d6 <.Lpcrel_hi2>:
;     panic!("It should shutdown!");
802057d6: 17 45 00 00  	auipc	a0, 4
802057da: 93 05 a5 b0  	addi	a1, a0, -1270
802057de: 13 05 04 fc  	addi	a0, s0, -64
802057e2: 97 20 00 00  	auipc	ra, 2
802057e6: e7 80 e0 d3  	jalr	-706(ra)
802057ea: 00 00        	unimp	

00000000802057ec <__rg_dealloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
802057ec: 41 11        	addi	sp, sp, -16
802057ee: 06 e4        	sd	ra, 8(sp)
802057f0: 22 e0        	sd	s0, 0(sp)
802057f2: 00 08        	addi	s0, sp, 16

00000000802057f4 <.Lpcrel_hi4>:
802057f4: 97 b6 01 00  	auipc	a3, 27
802057f8: 93 86 c6 66  	addi	a3, a3, 1644
802057fc: 2e 87        	mv	a4, a1
802057fe: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80205800: 36 85        	mv	a0, a3
80205802: ba 86        	mv	a3, a4
80205804: a2 60        	ld	ra, 8(sp)
80205806: 02 64        	ld	s0, 0(sp)
80205808: 41 01        	addi	sp, sp, 16
8020580a: 17 23 00 00  	auipc	t1, 2
8020580e: 67 00 03 cb  	jr	-848(t1)

0000000080205812 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE>:
;     pub fn uvmunmap(&mut self, va: Addr, npages: usize, do_free: bool) {
80205812: 19 71        	addi	sp, sp, -128
80205814: 86 fc        	sd	ra, 120(sp)
80205816: a2 f8        	sd	s0, 112(sp)
80205818: a6 f4        	sd	s1, 104(sp)
8020581a: ca f0        	sd	s2, 96(sp)
8020581c: ce ec        	sd	s3, 88(sp)
8020581e: d2 e8        	sd	s4, 80(sp)
80205820: d6 e4        	sd	s5, 72(sp)
80205822: da e0        	sd	s6, 64(sp)
80205824: 5e fc        	sd	s7, 56(sp)
80205826: 62 f8        	sd	s8, 48(sp)
80205828: 00 01        	addi	s0, sp, 128
8020582a: 2e 8c        	mv	s8, a1
;         if va % PGSIZE != 0 {
8020582c: d2 15        	slli	a1, a1, 52
8020582e: 63 96 05 22  	bnez	a1, 0x80205a5a <.Lpcrel_hi3>
80205832: 32 89        	mv	s2, a2
80205834: 6d c2        	beqz	a2, 0x80205916 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE+0x104>
80205836: 83 39 05 00  	ld	s3, 0(a0)
;             if do_free {
8020583a: a5 ce        	beqz	a3, 0x802058b2 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE+0xa0>
;         if va >= MAXVA {
8020583c: 13 5a cc 00  	srli	s4, s8, 12
80205840: 85 6a        	lui	s5, 1
80205842: 1b 8b 8a ff  	addiw	s6, s5, -8
80205846: 85 4b        	li	s7, 1
80205848: 13 55 6c 02  	srli	a0, s8, 38
8020584c: 63 1b 05 18  	bnez	a0, 0x802059e2 <.Lpcrel_hi0>
80205850: 13 55 bc 01  	srli	a0, s8, 27
80205854: 61 99        	andi	a0, a0, -8
80205856: 4e 95        	add	a0, a0, s3
;             if (*pte & PTE_V) != 0 {
80205858: 08 61        	ld	a0, 0(a0)
8020585a: 93 75 15 00  	andi	a1, a0, 1
8020585e: e1 c9        	beqz	a1, 0x8020592e <.Lpcrel_hi9>
;     (pte >> 10) << 12
80205860: 29 81        	srli	a0, a0, 10
80205862: 32 05        	slli	a0, a0, 12
80205864: 93 55 2c 01  	srli	a1, s8, 18
80205868: b3 f5 65 01  	and	a1, a1, s6
8020586c: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
8020586e: 08 61        	ld	a0, 0(a0)
80205870: 93 75 15 00  	andi	a1, a0, 1
80205874: cd cd        	beqz	a1, 0x8020592e <.Lpcrel_hi9>
;     (pte >> 10) << 12
80205876: 29 81        	srli	a0, a0, 10
80205878: 32 05        	slli	a0, a0, 12
8020587a: 55 c9        	beqz	a0, 0x8020592e <.Lpcrel_hi9>
8020587c: 93 75 fa 1f  	andi	a1, s4, 511
80205880: 8e 05        	slli	a1, a1, 3
80205882: b3 64 b5 00  	or	s1, a0, a1
;             if *pte & PTE_V == 0 {
80205886: 88 60        	ld	a0, 0(s1)
80205888: 93 75 15 00  	andi	a1, a0, 1
8020588c: f9 cd        	beqz	a1, 0x8020596a <.Lpcrel_hi12>
;     pte & 0x3ff
8020588e: 93 75 f5 3f  	andi	a1, a0, 1023
80205892: 63 8a 75 11  	beq	a1, s7, 0x802059a6 <.Lpcrel_hi15>
;     (pte >> 10) << 12
80205896: 29 81        	srli	a0, a0, 10
80205898: 32 05        	slli	a0, a0, 12
;                 kfree(pa);
8020589a: 97 10 00 00  	auipc	ra, 1
8020589e: e7 80 40 9a  	jalr	-1628(ra)
;             *pte = 0;
802058a2: 23 b0 04 00  	sd	zero, 0(s1)
;             a += PGSIZE;
802058a6: 56 9c        	add	s8, s8, s5
802058a8: 7d 19        	addi	s2, s2, -1
802058aa: 05 0a        	addi	s4, s4, 1
802058ac: e3 1e 09 f8  	bnez	s2, 0x80205848 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE+0x36>
802058b0: 9d a0        	j	0x80205916 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE+0x104>
;         if va >= MAXVA {
802058b2: 13 55 cc 00  	srli	a0, s8, 12
802058b6: 85 65        	lui	a1, 1
802058b8: 1b 86 85 ff  	addiw	a2, a1, -8
802058bc: 85 46        	li	a3, 1
;         if va >= MAXVA {
802058be: 13 57 6c 02  	srli	a4, s8, 38
802058c2: 63 1e 07 14  	bnez	a4, 0x80205a1e <.Lpcrel_hi6>
802058c6: 13 57 bc 01  	srli	a4, s8, 27
802058ca: 61 9b        	andi	a4, a4, -8
802058cc: 4e 97        	add	a4, a4, s3
;             if (*pte & PTE_V) != 0 {
802058ce: 18 63        	ld	a4, 0(a4)
802058d0: 93 77 17 00  	andi	a5, a4, 1
802058d4: a9 cf        	beqz	a5, 0x8020592e <.Lpcrel_hi9>
;     (pte >> 10) << 12
802058d6: 29 83        	srli	a4, a4, 10
802058d8: 32 07        	slli	a4, a4, 12
802058da: 93 57 2c 01  	srli	a5, s8, 18
802058de: f1 8f        	and	a5, a5, a2
802058e0: 5d 8f        	or	a4, a4, a5
;             if (*pte & PTE_V) != 0 {
802058e2: 18 63        	ld	a4, 0(a4)
802058e4: 93 77 17 00  	andi	a5, a4, 1
802058e8: b9 c3        	beqz	a5, 0x8020592e <.Lpcrel_hi9>
;     (pte >> 10) << 12
802058ea: 29 83        	srli	a4, a4, 10
802058ec: 32 07        	slli	a4, a4, 12
802058ee: 21 c3        	beqz	a4, 0x8020592e <.Lpcrel_hi9>
802058f0: 93 77 f5 1f  	andi	a5, a0, 511
802058f4: 8e 07        	slli	a5, a5, 3
802058f6: 5d 8f        	or	a4, a4, a5
;             if *pte & PTE_V == 0 {
802058f8: 04 63        	ld	s1, 0(a4)
802058fa: 93 f7 14 00  	andi	a5, s1, 1
802058fe: b5 c7        	beqz	a5, 0x8020596a <.Lpcrel_hi12>
;     pte & 0x3ff
80205900: 93 f7 f4 3f  	andi	a5, s1, 1023
;             if pte_flags(*pte) == PTE_V {
80205904: 63 81 d7 0a  	beq	a5, a3, 0x802059a6 <.Lpcrel_hi15>
;             *pte = 0;
80205908: 23 30 07 00  	sd	zero, 0(a4)
;             a += PGSIZE;
8020590c: 2e 9c        	add	s8, s8, a1
8020590e: 7d 19        	addi	s2, s2, -1
80205910: 05 05        	addi	a0, a0, 1
80205912: e3 16 09 fa  	bnez	s2, 0x802058be <_ZN6kernel6memory3uvm3Uvm8uvmunmap17hda211fa687ed2c1eE+0xac>
;     }
80205916: e6 70        	ld	ra, 120(sp)
80205918: 46 74        	ld	s0, 112(sp)
8020591a: a6 74        	ld	s1, 104(sp)
8020591c: 06 79        	ld	s2, 96(sp)
8020591e: e6 69        	ld	s3, 88(sp)
80205920: 46 6a        	ld	s4, 80(sp)
80205922: a6 6a        	ld	s5, 72(sp)
80205924: 06 6b        	ld	s6, 64(sp)
80205926: e2 7b        	ld	s7, 56(sp)
80205928: 42 7c        	ld	s8, 48(sp)
8020592a: 09 61        	addi	sp, sp, 128
8020592c: 82 80        	ret

000000008020592e <.Lpcrel_hi9>:
8020592e: 17 45 00 00  	auipc	a0, 4
80205932: 13 05 25 ab  	addi	a0, a0, -1358
80205936: 23 30 a4 f8  	sd	a0, -128(s0)
8020593a: 05 45        	li	a0, 1
8020593c: 23 34 a4 f8  	sd	a0, -120(s0)
80205940: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205944 <.Lpcrel_hi10>:
80205944: 17 45 00 00  	auipc	a0, 4
80205948: 13 05 c5 9d  	addi	a0, a0, -1572
8020594c: 23 38 a4 f8  	sd	a0, -112(s0)
80205950: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080205954 <.Lpcrel_hi11>:
;                 panic!("uvmunmap: walk");
80205954: 17 45 00 00  	auipc	a0, 4
80205958: 93 05 c5 a9  	addi	a1, a0, -1380
8020595c: 13 05 04 f8  	addi	a0, s0, -128
80205960: 97 20 00 00  	auipc	ra, 2
80205964: e7 80 00 bc  	jalr	-1088(ra)
80205968: 00 00        	unimp	

000000008020596a <.Lpcrel_hi12>:
8020596a: 17 45 00 00  	auipc	a0, 4
8020596e: 13 05 e5 a3  	addi	a0, a0, -1474
80205972: 23 30 a4 f8  	sd	a0, -128(s0)
80205976: 05 45        	li	a0, 1
80205978: 23 34 a4 f8  	sd	a0, -120(s0)
8020597c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205980 <.Lpcrel_hi13>:
80205980: 17 45 00 00  	auipc	a0, 4
80205984: 13 05 05 9a  	addi	a0, a0, -1632
80205988: 23 38 a4 f8  	sd	a0, -112(s0)
8020598c: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080205990 <.Lpcrel_hi14>:
;                 panic!("uvmunmap: not maapped");
80205990: 17 45 00 00  	auipc	a0, 4
80205994: 93 05 85 a2  	addi	a1, a0, -1496
80205998: 13 05 04 f8  	addi	a0, s0, -128
8020599c: 97 20 00 00  	auipc	ra, 2
802059a0: e7 80 40 b8  	jalr	-1148(ra)
802059a4: 00 00        	unimp	

00000000802059a6 <.Lpcrel_hi15>:
802059a6: 17 45 00 00  	auipc	a0, 4
802059aa: 13 05 25 9c  	addi	a0, a0, -1598
802059ae: 23 30 a4 f8  	sd	a0, -128(s0)
802059b2: 05 45        	li	a0, 1
802059b4: 23 34 a4 f8  	sd	a0, -120(s0)
802059b8: 23 30 04 fa  	sd	zero, -96(s0)

00000000802059bc <.Lpcrel_hi16>:
802059bc: 17 45 00 00  	auipc	a0, 4
802059c0: 13 05 45 96  	addi	a0, a0, -1692
802059c4: 23 38 a4 f8  	sd	a0, -112(s0)
802059c8: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802059cc <.Lpcrel_hi17>:
;                 panic!("uvmunmap: not a leaf");
802059cc: 17 45 00 00  	auipc	a0, 4
802059d0: 93 05 c5 9a  	addi	a1, a0, -1620
802059d4: 13 05 04 f8  	addi	a0, s0, -128
802059d8: 97 20 00 00  	auipc	ra, 2
802059dc: e7 80 80 b4  	jalr	-1208(ra)
802059e0: 00 00        	unimp	

00000000802059e2 <.Lpcrel_hi0>:
802059e2: 17 45 00 00  	auipc	a0, 4
802059e6: 13 05 e5 a5  	addi	a0, a0, -1442
802059ea: 23 30 a4 f8  	sd	a0, -128(s0)
802059ee: 05 45        	li	a0, 1
802059f0: 23 34 a4 f8  	sd	a0, -120(s0)
802059f4: 23 30 04 fa  	sd	zero, -96(s0)

00000000802059f8 <.Lpcrel_hi1>:
802059f8: 17 45 00 00  	auipc	a0, 4
802059fc: 13 05 85 a5  	addi	a0, a0, -1448
80205a00: 23 38 a4 f8  	sd	a0, -112(s0)
80205a04: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080205a08 <.Lpcrel_hi2>:
;             panic!("walk");
80205a08: 17 45 00 00  	auipc	a0, 4
80205a0c: 93 05 05 a6  	addi	a1, a0, -1440
80205a10: 13 05 04 f8  	addi	a0, s0, -128
80205a14: 97 20 00 00  	auipc	ra, 2
80205a18: e7 80 c0 b0  	jalr	-1268(ra)
80205a1c: 00 00        	unimp	

0000000080205a1e <.Lpcrel_hi6>:
80205a1e: 17 45 00 00  	auipc	a0, 4
80205a22: 13 05 25 a2  	addi	a0, a0, -1502
80205a26: 23 30 a4 f8  	sd	a0, -128(s0)
80205a2a: 05 45        	li	a0, 1
80205a2c: 23 34 a4 f8  	sd	a0, -120(s0)
80205a30: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205a34 <.Lpcrel_hi7>:
80205a34: 17 45 00 00  	auipc	a0, 4
80205a38: 13 05 c5 a1  	addi	a0, a0, -1508
80205a3c: 23 38 a4 f8  	sd	a0, -112(s0)
80205a40: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080205a44 <.Lpcrel_hi8>:
;             panic!("walk");
80205a44: 17 45 00 00  	auipc	a0, 4
80205a48: 93 05 45 a2  	addi	a1, a0, -1500
80205a4c: 13 05 04 f8  	addi	a0, s0, -128
80205a50: 97 20 00 00  	auipc	ra, 2
80205a54: e7 80 00 ad  	jalr	-1328(ra)
80205a58: 00 00        	unimp	

0000000080205a5a <.Lpcrel_hi3>:
80205a5a: 17 45 00 00  	auipc	a0, 4
80205a5e: 13 05 65 8b  	addi	a0, a0, -1866
80205a62: 23 30 a4 f8  	sd	a0, -128(s0)
80205a66: 05 45        	li	a0, 1
80205a68: 23 34 a4 f8  	sd	a0, -120(s0)
80205a6c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205a70 <.Lpcrel_hi4>:
80205a70: 17 45 00 00  	auipc	a0, 4
80205a74: 13 05 05 8b  	addi	a0, a0, -1872
80205a78: 23 38 a4 f8  	sd	a0, -112(s0)
80205a7c: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080205a80 <.Lpcrel_hi5>:
;             panic!("uvmunmap: not aligned");
80205a80: 17 45 00 00  	auipc	a0, 4
80205a84: 93 05 85 8b  	addi	a1, a0, -1864
80205a88: 13 05 04 f8  	addi	a0, s0, -128
80205a8c: 97 20 00 00  	auipc	ra, 2
80205a90: e7 80 40 a9  	jalr	-1388(ra)
80205a94: 00 00        	unimp	

0000000080205a96 <_ZN6kernel6memory3uvm3Uvm8freewalk17hce9e18355fd71535E.llvm.17529081436387088305>:
;     pub fn freewalk(&mut self) {
80205a96: 1d 71        	addi	sp, sp, -96
80205a98: 86 ec        	sd	ra, 88(sp)
80205a9a: a2 e8        	sd	s0, 80(sp)
80205a9c: a6 e4        	sd	s1, 72(sp)
80205a9e: ca e0        	sd	s2, 64(sp)
80205aa0: 4e fc        	sd	s3, 56(sp)
80205aa2: 52 f8        	sd	s4, 48(sp)
80205aa4: 80 10        	addi	s0, sp, 96
80205aa6: 03 39 05 00  	ld	s2, 0(a0)
80205aaa: 13 0a 00 20  	li	s4, 512
80205aae: 85 49        	li	s3, 1
80205ab0: ca 84        	mv	s1, s2
80205ab2: 0d a0        	j	0x80205ad4 <_ZN6kernel6memory3uvm3Uvm8freewalk17hce9e18355fd71535E.llvm.17529081436387088305+0x3e>
;     (pte >> 10) << 12
80205ab4: 29 81        	srli	a0, a0, 10
80205ab6: 32 05        	slli	a0, a0, 12
;                 let mut child = Self::from_pagetable(PagetableT::addr2pagetablet(pte2pa(*pte)));
80205ab8: 23 30 a4 fa  	sd	a0, -96(s0)
;                 child.freewalk();
80205abc: 13 05 04 fa  	addi	a0, s0, -96
80205ac0: 97 00 00 00  	auipc	ra, 0
80205ac4: e7 80 60 fd  	jalr	-42(ra)
;                 *pte = 0;
80205ac8: 23 b0 04 00  	sd	zero, 0(s1)
80205acc: 7d 1a        	addi	s4, s4, -1
80205ace: a1 04        	addi	s1, s1, 8
80205ad0: 63 07 0a 04  	beqz	s4, 0x80205b1e <.Lpcrel_hi26+0x16>
;             if (*pte & PTE_V) != 0 && (*pte & (PTE_R | PTE_W | PTE_X) == 0) {
80205ad4: 88 60        	ld	a0, 0(s1)
80205ad6: 93 75 f5 00  	andi	a1, a0, 15
80205ada: e3 8d 35 fd  	beq	a1, s3, 0x80205ab4 <_ZN6kernel6memory3uvm3Uvm8freewalk17hce9e18355fd71535E.llvm.17529081436387088305+0x1e>
80205ade: 05 89        	andi	a0, a0, 1
;             } else if (*pte & PTE_V) != 0 {
80205ae0: 75 d5        	beqz	a0, 0x80205acc <_ZN6kernel6memory3uvm3Uvm8freewalk17hce9e18355fd71535E.llvm.17529081436387088305+0x36>

0000000080205ae2 <.Lpcrel_hi24>:
80205ae2: 17 45 00 00  	auipc	a0, 4
80205ae6: 13 05 65 93  	addi	a0, a0, -1738
80205aea: 23 30 a4 fa  	sd	a0, -96(s0)
80205aee: 05 45        	li	a0, 1
80205af0: 23 34 a4 fa  	sd	a0, -88(s0)
80205af4: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205af8 <.Lpcrel_hi25>:
80205af8: 17 45 00 00  	auipc	a0, 4
80205afc: 13 05 85 82  	addi	a0, a0, -2008
80205b00: 23 38 a4 fa  	sd	a0, -80(s0)
80205b04: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080205b08 <.Lpcrel_hi26>:
;                 panic!("freewalk: leaf");
80205b08: 17 45 00 00  	auipc	a0, 4
80205b0c: 93 05 05 92  	addi	a1, a0, -1760
80205b10: 13 05 04 fa  	addi	a0, s0, -96
80205b14: 97 20 00 00  	auipc	ra, 2
80205b18: e7 80 c0 a0  	jalr	-1524(ra)
80205b1c: 00 00        	unimp	
;         kfree(self.pagetable.pagetablet2addr());
80205b1e: 4a 85        	mv	a0, s2
80205b20: e6 60        	ld	ra, 88(sp)
80205b22: 46 64        	ld	s0, 80(sp)
80205b24: a6 64        	ld	s1, 72(sp)
80205b26: 06 69        	ld	s2, 64(sp)
80205b28: e2 79        	ld	s3, 56(sp)
80205b2a: 42 7a        	ld	s4, 48(sp)
80205b2c: 25 61        	addi	sp, sp, 96
80205b2e: 17 03 00 00  	auipc	t1, 0
80205b32: 67 00 03 71  	jr	1808(t1)

0000000080205b36 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E>:
;     pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
80205b36: 1d 71        	addi	sp, sp, -96
80205b38: 86 ec        	sd	ra, 88(sp)
80205b3a: a2 e8        	sd	s0, 80(sp)
80205b3c: a6 e4        	sd	s1, 72(sp)
80205b3e: ca e0        	sd	s2, 64(sp)
80205b40: 4e fc        	sd	s3, 56(sp)
80205b42: 80 10        	addi	s0, sp, 96
80205b44: ae 89        	mv	s3, a1
;         if va >= MAXVA {
80205b46: 99 91        	srli	a1, a1, 38
80205b48: c5 ed        	bnez	a1, 0x80205c00 <.Lpcrel_hi0>
;         self.data as Addr
80205b4a: 04 61        	ld	s1, 0(a0)
80205b4c: 13 d5 b9 01  	srli	a0, s3, 27
80205b50: 61 99        	andi	a0, a0, -8
80205b52: aa 94        	add	s1, s1, a0
;             if (*pte & PTE_V) != 0 {
80205b54: 88 60        	ld	a0, 0(s1)
80205b56: 93 75 15 00  	andi	a1, a0, 1
;                 if !alloc {
80205b5a: 05 c6        	beqz	a2, 0x80205b82 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0x4c>
;             if (*pte & PTE_V) != 0 {
80205b5c: b1 e1        	bnez	a1, 0x80205ba0 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0x6a>
;                 let pa = kalloc();
80205b5e: 97 00 00 00  	auipc	ra, 0
80205b62: e7 80 80 5c  	jalr	1480(ra)
;                 if pa == 0 {
80205b66: 51 c5        	beqz	a0, 0x80205bf2 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xbc>
80205b68: 2a 89        	mv	s2, a0
80205b6a: 05 66        	lui	a2, 1
80205b6c: 81 45        	li	a1, 0
80205b6e: 97 20 00 00  	auipc	ra, 2
80205b72: e7 80 c0 41  	jalr	1052(ra)
;     (pa >> 12) << 10
80205b76: 13 55 c9 00  	srli	a0, s2, 12
80205b7a: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80205b7c: 05 05        	addi	a0, a0, 1
80205b7e: 88 e0        	sd	a0, 0(s1)
80205b80: 1d a0        	j	0x80205ba6 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0x70>
;             if (*pte & PTE_V) != 0 {
80205b82: 89 cd        	beqz	a1, 0x80205b9c <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0x66>
;     (pte >> 10) << 12
80205b84: 29 81        	srli	a0, a0, 10
80205b86: 32 05        	slli	a0, a0, 12
80205b88: 93 d5 29 01  	srli	a1, s3, 18
80205b8c: 05 66        	lui	a2, 1
80205b8e: 61 36        	addiw	a2, a2, -8
80205b90: f1 8d        	and	a1, a1, a2
80205b92: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
80205b94: 08 61        	ld	a0, 0(a0)
80205b96: 93 75 15 00  	andi	a1, a0, 1
80205b9a: b9 e1        	bnez	a1, 0x80205be0 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xaa>
80205b9c: 01 45        	li	a0, 0
80205b9e: 91 a8        	j	0x80205bf2 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xbc>
;     (pte >> 10) << 12
80205ba0: 29 81        	srli	a0, a0, 10
80205ba2: 13 19 c5 00  	slli	s2, a0, 12
80205ba6: 13 d5 29 01  	srli	a0, s3, 18
80205baa: 85 65        	lui	a1, 1
80205bac: e1 35        	addiw	a1, a1, -8
80205bae: 6d 8d        	and	a0, a0, a1
80205bb0: b3 04 a9 00  	add	s1, s2, a0
;             if (*pte & PTE_V) != 0 {
80205bb4: 88 60        	ld	a0, 0(s1)
80205bb6: 93 75 15 00  	andi	a1, a0, 1
80205bba: 9d e1        	bnez	a1, 0x80205be0 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xaa>
;                 let pa = kalloc();
80205bbc: 97 00 00 00  	auipc	ra, 0
80205bc0: e7 80 a0 56  	jalr	1386(ra)
;                 if pa == 0 {
80205bc4: 1d c5        	beqz	a0, 0x80205bf2 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xbc>
80205bc6: 2a 89        	mv	s2, a0
80205bc8: 05 66        	lui	a2, 1
80205bca: 81 45        	li	a1, 0
80205bcc: 97 20 00 00  	auipc	ra, 2
80205bd0: e7 80 e0 3b  	jalr	958(ra)
;     (pa >> 12) << 10
80205bd4: 13 55 c9 00  	srli	a0, s2, 12
80205bd8: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80205bda: 05 05        	addi	a0, a0, 1
80205bdc: 88 e0        	sd	a0, 0(s1)
80205bde: 21 a0        	j	0x80205be6 <_ZN6kernel6memory9pagetable10PagetableT4walk17hcd8af72a8e5a1425E+0xb0>
;                 pagetable = PagetableT::addr2pagetablet(pte2pa(*pte));
80205be0: 29 81        	srli	a0, a0, 10
80205be2: 13 19 c5 00  	slli	s2, a0, 12
80205be6: 13 d5 99 00  	srli	a0, s3, 9
80205bea: 85 65        	lui	a1, 1
80205bec: e1 35        	addiw	a1, a1, -8
80205bee: 6d 8d        	and	a0, a0, a1
80205bf0: 4a 95        	add	a0, a0, s2
;     }
80205bf2: e6 60        	ld	ra, 88(sp)
80205bf4: 46 64        	ld	s0, 80(sp)
80205bf6: a6 64        	ld	s1, 72(sp)
80205bf8: 06 69        	ld	s2, 64(sp)
80205bfa: e2 79        	ld	s3, 56(sp)
80205bfc: 25 61        	addi	sp, sp, 96
80205bfe: 82 80        	ret

0000000080205c00 <.Lpcrel_hi0>:
80205c00: 17 45 00 00  	auipc	a0, 4
80205c04: 13 05 05 84  	addi	a0, a0, -1984
80205c08: 23 34 a4 fa  	sd	a0, -88(s0)
80205c0c: 05 45        	li	a0, 1
80205c0e: 23 38 a4 fa  	sd	a0, -80(s0)
80205c12: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205c16 <.Lpcrel_hi1>:
80205c16: 17 45 00 00  	auipc	a0, 4
80205c1a: 13 05 a5 83  	addi	a0, a0, -1990
80205c1e: 23 3c a4 fa  	sd	a0, -72(s0)
80205c22: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205c26 <.Lpcrel_hi2>:
;             panic!("walk");
80205c26: 17 45 00 00  	auipc	a0, 4
80205c2a: 93 05 25 84  	addi	a1, a0, -1982
80205c2e: 13 05 84 fa  	addi	a0, s0, -88
80205c32: 97 20 00 00  	auipc	ra, 2
80205c36: e7 80 e0 8e  	jalr	-1810(ra)
80205c3a: 00 00        	unimp	

0000000080205c3c <_ZN6kernel4lock8spinlock8Spinlock7acquire17h6879e5810c4fe9a4E>:
;     pub fn acquire(&mut self) {
80205c3c: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80205c3e: 86 ec        	sd	ra, 88(sp)
80205c40: a2 e8        	sd	s0, 80(sp)
80205c42: a6 e4        	sd	s1, 72(sp)
80205c44: ca e0        	sd	s2, 64(sp)
80205c46: 4e fc        	sd	s3, 56(sp)
80205c48: 52 f8        	sd	s4, 48(sp)
80205c4a: 80 10        	addi	s0, sp, 96
80205c4c: f3 29 00 10  	csrr	s3, sstatus
80205c50: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80205c52: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205c56: 92 84        	mv	s1, tp
80205c58: 2a 89        	mv	s2, a0

0000000080205c5a <.Lpcrel_hi0>:
;         self.0.call_once(builder)
80205c5a: 17 b5 01 00  	auipc	a0, 27
80205c5e: 13 05 e5 37  	addi	a0, a0, 894
80205c62: 97 c0 ff ff  	auipc	ra, 1048572
80205c66: e7 80 60 5b  	jalr	1462(ra)
80205c6a: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205c6e: 63 ff b4 0a  	bgeu	s1, a1, 0x80205d2c <.Lpcrel_hi1>
80205c72: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80205c76: 33 86 b4 02  	mul	a2, s1, a1
80205c7a: 2a 96        	add	a2, a2, a0
80205c7c: 2c 7e        	ld	a1, 120(a2)
80205c7e: 13 05 86 07  	addi	a0, a2, 120
80205c82: 91 e5        	bnez	a1, 0x80205c8e <.Lpcrel_hi0+0x34>
;         mc.intena = old;
80205c84: fa 19        	slli	s3, s3, 62
80205c86: 93 d6 f9 03  	srli	a3, s3, 63
80205c8a: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80205c8e: 85 05        	addi	a1, a1, 1
80205c90: 0c e1        	sd	a1, 0(a0)
80205c92: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80205c96: 93 04 89 01  	addi	s1, s2, 24
80205c9a: 1d c5        	beqz	a0, 0x80205cc8 <.Lpcrel_hi2+0x26>
80205c9c: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205ca0: 92 89        	mv	s3, tp

0000000080205ca2 <.Lpcrel_hi2>:
;         self.0.call_once(builder)
80205ca2: 17 b5 01 00  	auipc	a0, 27
80205ca6: 13 05 65 33  	addi	a0, a0, 822
80205caa: 97 c0 ff ff  	auipc	ra, 1048572
80205cae: e7 80 e0 56  	jalr	1390(ra)
80205cb2: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205cb6: 63 fc b9 08  	bgeu	s3, a1, 0x80205d4e <.Lpcrel_hi3>
80205cba: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205cbe: b3 85 b9 02  	mul	a1, s3, a1
80205cc2: 2e 95        	add	a0, a0, a1
;         if self.holding() {
80205cc4: 63 01 aa 0a  	beq	s4, a0, 0x80205d66 <.Lpcrel_hi4>
80205cc8: 13 f5 c4 ff  	andi	a0, s1, -4
80205ccc: 93 05 f0 0f  	li	a1, 255
80205cd0: 05 46        	li	a2, 1
80205cd2: af 26 05 14  	lr.w.aq	a3, (a0)
80205cd6: 33 f7 b6 00  	and	a4, a3, a1
80205cda: 01 eb        	bnez	a4, 0x80205cea <.Lpcrel_hi2+0x48>
80205cdc: 33 c7 c6 00  	xor	a4, a3, a2
80205ce0: 6d 8f        	and	a4, a4, a1
80205ce2: 35 8f        	xor	a4, a4, a3
80205ce4: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80205ce8: 6d f7        	bnez	a4, 0x80205cd2 <.Lpcrel_hi2+0x30>
80205cea: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
80205cee: 69 fd        	bnez	a0, 0x80205cc8 <.Lpcrel_hi2+0x26>
80205cf0: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205cf4: 92 84        	mv	s1, tp

0000000080205cf6 <.Lpcrel_hi7>:
;         self.0.call_once(builder)
80205cf6: 17 b5 01 00  	auipc	a0, 27
80205cfa: 13 05 25 2e  	addi	a0, a0, 738
80205cfe: 97 c0 ff ff  	auipc	ra, 1048572
80205d02: e7 80 a0 51  	jalr	1306(ra)
80205d06: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205d0a: 63 f6 b4 02  	bgeu	s1, a1, 0x80205d36 <.Lpcrel_hi8>
80205d0e: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205d12: b3 85 b4 02  	mul	a1, s1, a1
80205d16: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
80205d18: 23 38 a9 00  	sd	a0, 16(s2)
;     }
80205d1c: e6 60        	ld	ra, 88(sp)
80205d1e: 46 64        	ld	s0, 80(sp)
80205d20: a6 64        	ld	s1, 72(sp)
80205d22: 06 69        	ld	s2, 64(sp)
80205d24: e2 79        	ld	s3, 56(sp)
80205d26: 42 7a        	ld	s4, 48(sp)
80205d28: 25 61        	addi	sp, sp, 96
80205d2a: 82 80        	ret

0000000080205d2c <.Lpcrel_hi1>:
; 	&mut CPUS.get_mut()[id]
80205d2c: 17 45 00 00  	auipc	a0, 4
80205d30: 13 06 c5 c7  	addi	a2, a0, -900
80205d34: 29 a0        	j	0x80205d3e <.Lpcrel_hi8+0x8>

0000000080205d36 <.Lpcrel_hi8>:
80205d36: 17 45 00 00  	auipc	a0, 4
80205d3a: 13 06 25 c7  	addi	a2, a0, -910
80205d3e: 93 05 00 04  	li	a1, 64
80205d42: 26 85        	mv	a0, s1
80205d44: 97 20 00 00  	auipc	ra, 2
80205d48: e7 80 60 83  	jalr	-1994(ra)
80205d4c: 00 00        	unimp	

0000000080205d4e <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
80205d4e: 17 45 00 00  	auipc	a0, 4
80205d52: 13 06 a5 c5  	addi	a2, a0, -934
80205d56: 93 05 00 04  	li	a1, 64
80205d5a: 4e 85        	mv	a0, s3
80205d5c: 97 20 00 00  	auipc	ra, 2
80205d60: e7 80 e0 81  	jalr	-2018(ra)
80205d64: 00 00        	unimp	

0000000080205d66 <.Lpcrel_hi4>:
80205d66: 17 35 00 00  	auipc	a0, 3
80205d6a: 13 05 25 79  	addi	a0, a0, 1938
80205d6e: 23 30 a4 fa  	sd	a0, -96(s0)
80205d72: 05 45        	li	a0, 1
80205d74: 23 34 a4 fa  	sd	a0, -88(s0)
80205d78: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205d7c <.Lpcrel_hi5>:
80205d7c: 17 35 00 00  	auipc	a0, 3
80205d80: 13 05 45 77  	addi	a0, a0, 1908
80205d84: 23 38 a4 fa  	sd	a0, -80(s0)
80205d88: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080205d8c <.Lpcrel_hi6>:
;             panic!("acquire");
80205d8c: 17 35 00 00  	auipc	a0, 3
80205d90: 93 05 45 79  	addi	a1, a0, 1940
80205d94: 13 05 04 fa  	addi	a0, s0, -96
80205d98: 97 10 00 00  	auipc	ra, 1
80205d9c: e7 80 80 78  	jalr	1928(ra)
80205da0: 00 00        	unimp	

0000000080205da2 <_ZN6kernel4lock8spinlock8Spinlock7release17hebb772d5e67e18aaE>:
;     pub fn release(&mut self) {
80205da2: 1d 71        	addi	sp, sp, -96
80205da4: 86 ec        	sd	ra, 88(sp)
80205da6: a2 e8        	sd	s0, 80(sp)
80205da8: a6 e4        	sd	s1, 72(sp)
80205daa: ca e0        	sd	s2, 64(sp)
80205dac: 4e fc        	sd	s3, 56(sp)
80205dae: 80 10        	addi	s0, sp, 96
80205db0: aa 84        	mv	s1, a0
80205db2: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80205db6: 79 c5        	beqz	a0, 0x80205e84 <.Lpcrel_hi19>
80205db8: 83 b9 04 01  	ld	s3, 16(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205dbc: 12 89        	mv	s2, tp

0000000080205dbe <.Lpcrel_hi9>:
;         self.0.call_once(builder)
80205dbe: 17 b5 01 00  	auipc	a0, 27
80205dc2: 13 05 a5 21  	addi	a0, a0, 538
80205dc6: 97 c0 ff ff  	auipc	ra, 1048572
80205dca: e7 80 20 45  	jalr	1106(ra)
80205dce: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205dd2: 63 71 b9 08  	bgeu	s2, a1, 0x80205e54 <.Lpcrel_hi10>
80205dd6: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205dda: b3 05 b9 02  	mul	a1, s2, a1
80205dde: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80205de0: 63 92 a9 0a  	bne	s3, a0, 0x80205e84 <.Lpcrel_hi19>
;         self.cpu = null_mut();
80205de4: 23 b8 04 00  	sd	zero, 16(s1)
80205de8: 0f 00 30 03  	fence	rw, rw
80205dec: 0f 00 10 03  	fence	rw, w
80205df0: 23 8c 04 00  	sb	zero, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205df4: 92 84        	mv	s1, tp

0000000080205df6 <.Lpcrel_hi11>:
;         self.0.call_once(builder)
80205df6: 17 b5 01 00  	auipc	a0, 27
80205dfa: 13 05 25 1e  	addi	a0, a0, 482
80205dfe: 97 c0 ff ff  	auipc	ra, 1048572
80205e02: e7 80 a0 41  	jalr	1050(ra)
80205e06: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205e0a: 63 f1 b4 06  	bgeu	s1, a1, 0x80205e6c <.Lpcrel_hi12>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80205e0e: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
80205e12: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
80205e14: c5 e1        	bnez	a1, 0x80205eb4 <.Lpcrel_hi13>
80205e16: 93 05 80 08  	li	a1, 136
;     if mc.noff < 1 {
80205e1a: 33 86 b4 02  	mul	a2, s1, a1
80205e1e: 2a 96        	add	a2, a2, a0
80205e20: 2c 7e        	ld	a1, 120(a2)
80205e22: 63 51 b0 0c  	blez	a1, 0x80205ee4 <.Lpcrel_hi16>
80205e26: 13 06 86 07  	addi	a2, a2, 120
;     mc.noff -= 1;
80205e2a: fd 15        	addi	a1, a1, -1
80205e2c: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
80205e2e: 81 ed        	bnez	a1, 0x80205e46 <.Lpcrel_hi11+0x50>
80205e30: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 && mc.intena {
80205e34: b3 85 b4 02  	mul	a1, s1, a1
80205e38: 2e 95        	add	a0, a0, a1
80205e3a: 03 45 05 08  	lbu	a0, 128(a0)
80205e3e: 01 c5        	beqz	a0, 0x80205e46 <.Lpcrel_hi11+0x50>
80205e40: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80205e42: 73 20 05 10  	csrs	sstatus, a0
;     }
80205e46: e6 60        	ld	ra, 88(sp)
80205e48: 46 64        	ld	s0, 80(sp)
80205e4a: a6 64        	ld	s1, 72(sp)
80205e4c: 06 69        	ld	s2, 64(sp)
80205e4e: e2 79        	ld	s3, 56(sp)
80205e50: 25 61        	addi	sp, sp, 96
80205e52: 82 80        	ret

0000000080205e54 <.Lpcrel_hi10>:
; 	&mut CPUS.get_mut()[id]
80205e54: 17 45 00 00  	auipc	a0, 4
80205e58: 13 06 45 b5  	addi	a2, a0, -1196
80205e5c: 93 05 00 04  	li	a1, 64
80205e60: 4a 85        	mv	a0, s2
80205e62: 97 10 00 00  	auipc	ra, 1
80205e66: e7 80 80 71  	jalr	1816(ra)
80205e6a: 00 00        	unimp	

0000000080205e6c <.Lpcrel_hi12>:
80205e6c: 17 45 00 00  	auipc	a0, 4
80205e70: 13 06 c5 b3  	addi	a2, a0, -1220
80205e74: 93 05 00 04  	li	a1, 64
80205e78: 26 85        	mv	a0, s1
80205e7a: 97 10 00 00  	auipc	ra, 1
80205e7e: e7 80 00 70  	jalr	1792(ra)
80205e82: 00 00        	unimp	

0000000080205e84 <.Lpcrel_hi19>:
80205e84: 17 35 00 00  	auipc	a0, 3
80205e88: 13 05 c5 6b  	addi	a0, a0, 1724
80205e8c: 23 34 a4 fa  	sd	a0, -88(s0)
80205e90: 05 45        	li	a0, 1
80205e92: 23 38 a4 fa  	sd	a0, -80(s0)
80205e96: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205e9a <.Lpcrel_hi20>:
80205e9a: 17 35 00 00  	auipc	a0, 3
80205e9e: 13 05 65 65  	addi	a0, a0, 1622
80205ea2: 23 3c a4 fa  	sd	a0, -72(s0)
80205ea6: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205eaa <.Lpcrel_hi21>:
;             panic!("release");
80205eaa: 17 35 00 00  	auipc	a0, 3
80205eae: 93 05 65 6a  	addi	a1, a0, 1702
80205eb2: 85 a0        	j	0x80205f12 <.Lpcrel_hi18+0x8>

0000000080205eb4 <.Lpcrel_hi13>:
80205eb4: 17 35 00 00  	auipc	a0, 3
80205eb8: 13 05 c5 6c  	addi	a0, a0, 1740
80205ebc: 23 34 a4 fa  	sd	a0, -88(s0)
80205ec0: 05 45        	li	a0, 1
80205ec2: 23 38 a4 fa  	sd	a0, -80(s0)
80205ec6: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205eca <.Lpcrel_hi14>:
80205eca: 17 35 00 00  	auipc	a0, 3
80205ece: 13 05 65 62  	addi	a0, a0, 1574
80205ed2: 23 3c a4 fa  	sd	a0, -72(s0)
80205ed6: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205eda <.Lpcrel_hi15>:
;         panic!("pop_off - interruptible");
80205eda: 17 35 00 00  	auipc	a0, 3
80205ede: 93 05 65 6b  	addi	a1, a0, 1718
80205ee2: 05 a8        	j	0x80205f12 <.Lpcrel_hi18+0x8>

0000000080205ee4 <.Lpcrel_hi16>:
80205ee4: 17 35 00 00  	auipc	a0, 3
80205ee8: 13 05 c5 6c  	addi	a0, a0, 1740
80205eec: 23 34 a4 fa  	sd	a0, -88(s0)
80205ef0: 05 45        	li	a0, 1
80205ef2: 23 38 a4 fa  	sd	a0, -80(s0)
80205ef6: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205efa <.Lpcrel_hi17>:
80205efa: 17 35 00 00  	auipc	a0, 3
80205efe: 13 05 65 5f  	addi	a0, a0, 1526
80205f02: 23 3c a4 fa  	sd	a0, -72(s0)
80205f06: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205f0a <.Lpcrel_hi18>:
;         panic!("pop_off");
80205f0a: 17 35 00 00  	auipc	a0, 3
80205f0e: 93 05 65 6b  	addi	a1, a0, 1718
80205f12: 13 05 84 fa  	addi	a0, s0, -88
80205f16: 97 10 00 00  	auipc	ra, 1
80205f1a: e7 80 a0 60  	jalr	1546(ra)
80205f1e: 00 00        	unimp	

0000000080205f20 <_ZN6kernel6memory6kalloc5kinit17h112ddf26daa68293E>:
; pub fn kinit() {
80205f20: 19 71        	addi	sp, sp, -128
80205f22: 86 fc        	sd	ra, 120(sp)
80205f24: a2 f8        	sd	s0, 112(sp)
80205f26: a6 f4        	sd	s1, 104(sp)
80205f28: ca f0        	sd	s2, 96(sp)
80205f2a: ce ec        	sd	s3, 88(sp)
80205f2c: d2 e8        	sd	s4, 80(sp)
80205f2e: d6 e4        	sd	s5, 72(sp)
80205f30: 00 01        	addi	s0, sp, 128
80205f32: 0f 00 30 03  	fence	rw, rw

0000000080205f36 <.Lpcrel_hi1>:
80205f36: 17 b5 01 00  	auipc	a0, 27
80205f3a: 93 09 25 05  	addi	s3, a0, 82
80205f3e: 03 b5 09 03  	ld	a0, 48(s3)
80205f42: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80205f46: 39 e9        	bnez	a0, 0x80205f9c <.Lpcrel_hi2+0x3a>
80205f48: 93 85 09 03  	addi	a1, s3, 48
80205f4c: 05 46        	li	a2, 1
80205f4e: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80205f52: 29 e5        	bnez	a0, 0x80205f9c <.Lpcrel_hi2+0x3a>
80205f54: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80205f58: fd fa        	bnez	a3, 0x80205f4e <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80205f5a: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80205f5e: 23 b0 c9 00  	sd	a2, 0(s3)

0000000080205f62 <.Lpcrel_hi2>:
80205f62: 17 35 00 00  	auipc	a0, 3
80205f66: 13 05 55 17  	addi	a0, a0, 373
80205f6a: 23 b4 a9 00  	sd	a0, 8(s3)
80205f6e: 11 45        	li	a0, 4
80205f70: 23 b8 a9 00  	sd	a0, 16(s3)
80205f74: 23 bc 09 00  	sd	zero, 24(s3)
80205f78: 23 80 09 02  	sb	zero, 32(s3)
80205f7c: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
80205f80: 23 0c 04 f8  	sb	zero, -104(s0)
80205f84: 0f 00 10 03  	fence	rw, w
80205f88: 09 45        	li	a0, 2
80205f8a: 23 b8 a9 02  	sd	a0, 48(s3)
80205f8e: 13 05 04 f9  	addi	a0, s0, -112
80205f92: 97 10 00 00  	auipc	ra, 1
80205f96: e7 80 e0 37  	jalr	894(ra)
80205f9a: 0d a0        	j	0x80205fbc <.Lpcrel_hi7>
80205f9c: 85 45        	li	a1, 1
;             match status {
80205f9e: 63 1c b5 00  	bne	a0, a1, 0x80205fb6 <.Lpcrel_hi2+0x54>
80205fa2: 0f 00 00 01  	fence	w, 0
80205fa6: 0f 00 30 03  	fence	rw, rw
80205faa: 03 b5 09 03  	ld	a0, 48(s3)
80205fae: 0f 00 30 02  	fence	r, rw
;             match status {
80205fb2: e3 08 b5 fe  	beq	a0, a1, 0x80205fa2 <.Lpcrel_hi2+0x40>
80205fb6: 89 45        	li	a1, 2
;             match status {
80205fb8: 63 16 b5 0c  	bne	a0, a1, 0x80206084 <.Lpcrel_hi13+0x2c>

0000000080205fbc <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
80205fbc: 17 e5 01 00  	auipc	a0, 30
80205fc0: 13 05 45 04  	addi	a0, a0, 68
80205fc4: 85 65        	lui	a1, 1
80205fc6: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80205fc8: aa 95        	add	a1, a1, a0
80205fca: 7d 76        	lui	a2, 1048575
80205fcc: f1 8d        	and	a1, a1, a2
80205fce: 37 86 08 00  	lui	a2, 136
80205fd2: 7d 36        	addiw	a2, a2, -1
80205fd4: 32 06        	slli	a2, a2, 12
80205fd6: 7d 16        	addi	a2, a2, -1
80205fd8: 63 69 b6 04  	bltu	a2, a1, 0x8020602a <.Lpcrel_hi7+0x6e>
80205fdc: 63 e7 a5 10  	bltu	a1, a0, 0x802060ea <.Lpcrel_hi8>
80205fe0: 05 6a        	lui	s4, 1
80205fe2: 9b 05 fa ff  	addiw	a1, s4, -1
80205fe6: 2e 95        	add	a0, a0, a1
80205fe8: fd 75        	lui	a1, 1048575
80205fea: 6d 8d        	and	a0, a0, a1
80205fec: 13 89 89 00  	addi	s2, s3, 8
80205ff0: b7 fa ff 43  	lui	s5, 278527
80205ff4: 86 0a        	slli	s5, s5, 1
80205ff6: aa 84        	mv	s1, a0
80205ff8: 85 45        	li	a1, 1
80205ffa: 05 66        	lui	a2, 1
80205ffc: 97 20 00 00  	auipc	ra, 2
80206000: e7 80 e0 f8  	jalr	-114(ra)
;         self.lock.acquire();
80206004: 4a 85        	mv	a0, s2
80206006: 97 00 00 00  	auipc	ra, 0
8020600a: e7 80 60 c3  	jalr	-970(ra)
;         unsafe { (*pa).next = self.freelist }
8020600e: 03 b5 89 02  	ld	a0, 40(s3)
80206012: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80206014: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
80206018: 4a 85        	mv	a0, s2
8020601a: 97 00 00 00  	auipc	ra, 0
8020601e: e7 80 80 d8  	jalr	-632(ra)
;             pa += PGSIZE;
80206022: 33 85 44 01  	add	a0, s1, s4
80206026: e3 e8 54 fd  	bltu	s1, s5, 0x80205ff6 <.Lpcrel_hi7+0x3a>
8020602a: 13 05 04 fc  	addi	a0, s0, -64
;     Stdout.write_fmt(args).unwrap();
8020602e: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080206032 <.Lpcrel_hi11>:
80206032: 17 35 00 00  	auipc	a0, 3
80206036: 13 05 e5 5f  	addi	a0, a0, 1534
8020603a: 23 38 a4 f8  	sd	a0, -112(s0)
8020603e: 05 45        	li	a0, 1
80206040: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080206044 <.Lpcrel_hi12>:
80206044: 17 35 00 00  	auipc	a0, 3
80206048: 13 05 c5 5a  	addi	a0, a0, 1452
8020604c: 23 30 a4 fa  	sd	a0, -96(s0)
80206050: 23 34 04 fa  	sd	zero, -88(s0)
80206054: 23 38 04 fa  	sd	zero, -80(s0)

0000000080206058 <.Lpcrel_hi13>:
80206058: 17 35 00 00  	auipc	a0, 3
8020605c: 93 05 05 70  	addi	a1, a0, 1792
80206060: 13 05 84 f8  	addi	a0, s0, -120
80206064: 13 06 04 f9  	addi	a2, s0, -112
80206068: 97 10 00 00  	auipc	ra, 1
8020606c: e7 80 00 5b  	jalr	1456(ra)
80206070: 21 e9        	bnez	a0, 0x802060c0 <.Lpcrel_hi14>
; }
80206072: e6 70        	ld	ra, 120(sp)
80206074: 46 74        	ld	s0, 112(sp)
80206076: a6 74        	ld	s1, 104(sp)
80206078: 06 79        	ld	s2, 96(sp)
8020607a: e6 69        	ld	s3, 88(sp)
8020607c: 46 6a        	ld	s4, 80(sp)
8020607e: a6 6a        	ld	s5, 72(sp)
80206080: 09 61        	addi	sp, sp, 128
80206082: 82 80        	ret
;             match status {
80206084: 05 e1        	bnez	a0, 0x802060a4 <.Lpcrel_hi5>

0000000080206086 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
80206086: 17 35 00 00  	auipc	a0, 3
8020608a: 13 05 25 00  	addi	a0, a0, 2

000000008020608e <.Lpcrel_hi4>:
8020608e: 97 35 00 00  	auipc	a1, 3
80206092: 13 86 25 02  	addi	a2, a1, 34
80206096: 93 05 80 02  	li	a1, 40
8020609a: 97 10 00 00  	auipc	ra, 1
8020609e: e7 80 40 4b  	jalr	1204(ra)
802060a2: 00 00        	unimp	

00000000802060a4 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
802060a4: 17 35 00 00  	auipc	a0, 3
802060a8: 13 05 c5 f5  	addi	a0, a0, -164

00000000802060ac <.Lpcrel_hi6>:
802060ac: 97 35 00 00  	auipc	a1, 3
802060b0: 13 86 45 fc  	addi	a2, a1, -60
802060b4: c5 45        	li	a1, 17
802060b6: 97 10 00 00  	auipc	ra, 1
802060ba: e7 80 80 49  	jalr	1176(ra)
802060be: 00 00        	unimp	

00000000802060c0 <.Lpcrel_hi14>:
802060c0: 17 35 00 00  	auipc	a0, 3
802060c4: 13 05 85 6c  	addi	a0, a0, 1736

00000000802060c8 <.Lpcrel_hi15>:
802060c8: 97 35 00 00  	auipc	a1, 3
802060cc: 93 86 05 6f  	addi	a3, a1, 1776

00000000802060d0 <.Lpcrel_hi16>:
802060d0: 97 35 00 00  	auipc	a1, 3
802060d4: 13 87 85 71  	addi	a4, a1, 1816
802060d8: 93 05 b0 02  	li	a1, 43
802060dc: 13 06 04 fc  	addi	a2, s0, -64
802060e0: 97 10 00 00  	auipc	ra, 1
802060e4: e7 80 a0 4d  	jalr	1242(ra)
802060e8: 00 00        	unimp	

00000000802060ea <.Lpcrel_hi8>:
802060ea: 17 35 00 00  	auipc	a0, 3
802060ee: 13 05 65 4f  	addi	a0, a0, 1270
802060f2: 23 38 a4 f8  	sd	a0, -112(s0)
802060f6: 05 45        	li	a0, 1
802060f8: 23 3c a4 f8  	sd	a0, -104(s0)
802060fc: 23 38 04 fa  	sd	zero, -80(s0)

0000000080206100 <.Lpcrel_hi9>:
80206100: 17 35 00 00  	auipc	a0, 3
80206104: 13 05 05 4f  	addi	a0, a0, 1264
80206108: 23 30 a4 fa  	sd	a0, -96(s0)
8020610c: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206110 <.Lpcrel_hi10>:
;             panic!("kfree");
80206110: 17 35 00 00  	auipc	a0, 3
80206114: 93 05 85 4f  	addi	a1, a0, 1272
80206118: 13 05 04 f9  	addi	a0, s0, -112
8020611c: 97 10 00 00  	auipc	ra, 1
80206120: e7 80 40 40  	jalr	1028(ra)
80206124: 00 00        	unimp	

0000000080206126 <_ZN6kernel6memory6kalloc6kalloc17he4cbcf3120f34501E>:
; pub fn kalloc() -> Addr {
80206126: 39 71        	addi	sp, sp, -64
80206128: 06 fc        	sd	ra, 56(sp)
8020612a: 22 f8        	sd	s0, 48(sp)
8020612c: 26 f4        	sd	s1, 40(sp)
8020612e: 4a f0        	sd	s2, 32(sp)
80206130: 4e ec        	sd	s3, 24(sp)
80206132: 80 00        	addi	s0, sp, 64
80206134: 0f 00 30 03  	fence	rw, rw

0000000080206138 <.Lpcrel_hi17>:
80206138: 17 b5 01 00  	auipc	a0, 27
8020613c: 93 04 05 e5  	addi	s1, a0, -432
80206140: 88 78        	ld	a0, 48(s1)
80206142: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206146: 39 e5        	bnez	a0, 0x80206194 <.Lpcrel_hi18+0x34>
80206148: 93 85 04 03  	addi	a1, s1, 48
8020614c: 05 46        	li	a2, 1
8020614e: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80206152: 29 e1        	bnez	a0, 0x80206194 <.Lpcrel_hi18+0x34>
80206154: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80206158: fd fa        	bnez	a3, 0x8020614e <.Lpcrel_hi17+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020615a: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020615e: 90 e0        	sd	a2, 0(s1)

0000000080206160 <.Lpcrel_hi18>:
80206160: 17 35 00 00  	auipc	a0, 3
80206164: 13 05 75 f7  	addi	a0, a0, -137
80206168: 88 e4        	sd	a0, 8(s1)
8020616a: 11 45        	li	a0, 4
8020616c: 88 e8        	sd	a0, 16(s1)
8020616e: 23 bc 04 00  	sd	zero, 24(s1)
80206172: 23 80 04 02  	sb	zero, 32(s1)
80206176: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
8020617a: 23 08 04 fc  	sb	zero, -48(s0)
8020617e: 0f 00 10 03  	fence	rw, w
80206182: 09 45        	li	a0, 2
80206184: 88 f8        	sd	a0, 48(s1)
80206186: 13 05 84 fc  	addi	a0, s0, -56
8020618a: 97 10 00 00  	auipc	ra, 1
8020618e: e7 80 60 18  	jalr	390(ra)
80206192: 05 a0        	j	0x802061b2 <.Lpcrel_hi18+0x52>
80206194: 85 45        	li	a1, 1
;             match status {
80206196: 63 1b b5 00  	bne	a0, a1, 0x802061ac <.Lpcrel_hi18+0x4c>
8020619a: 0f 00 00 01  	fence	w, 0
8020619e: 0f 00 30 03  	fence	rw, rw
802061a2: 88 78        	ld	a0, 48(s1)
802061a4: 0f 00 30 02  	fence	r, rw
;             match status {
802061a8: e3 09 b5 fe  	beq	a0, a1, 0x8020619a <.Lpcrel_hi18+0x3a>
802061ac: 89 45        	li	a1, 2
;             match status {
802061ae: 63 1a b5 04  	bne	a0, a1, 0x80206202 <.Lpcrel_hi18+0xa2>
;         self.lock.acquire();
802061b2: 13 89 84 00  	addi	s2, s1, 8
802061b6: 4a 85        	mv	a0, s2
802061b8: 97 00 00 00  	auipc	ra, 0
802061bc: e7 80 40 a8  	jalr	-1404(ra)
;         r = self.freelist;
802061c0: 83 b9 84 02  	ld	s3, 40(s1)
802061c4: 63 82 09 02  	beqz	s3, 0x802061e8 <.Lpcrel_hi18+0x88>
;             unsafe { self.freelist = (*r).next }
802061c8: 03 b5 09 00  	ld	a0, 0(s3)
802061cc: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
802061ce: 4a 85        	mv	a0, s2
802061d0: 97 00 00 00  	auipc	ra, 0
802061d4: e7 80 20 bd  	jalr	-1070(ra)
802061d8: 95 45        	li	a1, 5
802061da: 05 66        	lui	a2, 1
802061dc: 4e 85        	mv	a0, s3
802061de: 97 20 00 00  	auipc	ra, 2
802061e2: e7 80 c0 da  	jalr	-596(ra)
802061e6: 31 a0        	j	0x802061f2 <.Lpcrel_hi18+0x92>
;         self.lock.release();
802061e8: 4a 85        	mv	a0, s2
802061ea: 97 00 00 00  	auipc	ra, 0
802061ee: e7 80 80 bb  	jalr	-1096(ra)
; }
802061f2: 4e 85        	mv	a0, s3
802061f4: e2 70        	ld	ra, 56(sp)
802061f6: 42 74        	ld	s0, 48(sp)
802061f8: a2 74        	ld	s1, 40(sp)
802061fa: 02 79        	ld	s2, 32(sp)
802061fc: e2 69        	ld	s3, 24(sp)
802061fe: 21 61        	addi	sp, sp, 64
80206200: 82 80        	ret
;             match status {
80206202: 05 e1        	bnez	a0, 0x80206222 <.Lpcrel_hi21>

0000000080206204 <.Lpcrel_hi19>:
;                 INCOMPLETE => unreachable!(),
80206204: 17 35 00 00  	auipc	a0, 3
80206208: 13 05 45 e8  	addi	a0, a0, -380

000000008020620c <.Lpcrel_hi20>:
8020620c: 97 35 00 00  	auipc	a1, 3
80206210: 13 86 45 ea  	addi	a2, a1, -348
80206214: 93 05 80 02  	li	a1, 40
80206218: 97 10 00 00  	auipc	ra, 1
8020621c: e7 80 60 33  	jalr	822(ra)
80206220: 00 00        	unimp	

0000000080206222 <.Lpcrel_hi21>:
;                 PANICKED => panic!("Once has panicked"),
80206222: 17 35 00 00  	auipc	a0, 3
80206226: 13 05 e5 dd  	addi	a0, a0, -546

000000008020622a <.Lpcrel_hi22>:
8020622a: 97 35 00 00  	auipc	a1, 3
8020622e: 13 86 65 e4  	addi	a2, a1, -442
80206232: c5 45        	li	a1, 17
80206234: 97 10 00 00  	auipc	ra, 1
80206238: e7 80 a0 31  	jalr	794(ra)
8020623c: 00 00        	unimp	

000000008020623e <_ZN6kernel6memory6kalloc5kfree17h4cb252462ea0ad94E>:
; pub fn kfree(pa: Addr) {
8020623e: 1d 71        	addi	sp, sp, -96
80206240: 86 ec        	sd	ra, 88(sp)
80206242: a2 e8        	sd	s0, 80(sp)
80206244: a6 e4        	sd	s1, 72(sp)
80206246: ca e0        	sd	s2, 64(sp)
80206248: 4e fc        	sd	s3, 56(sp)
8020624a: 80 10        	addi	s0, sp, 96
8020624c: 0f 00 30 03  	fence	rw, rw

0000000080206250 <.Lpcrel_hi23>:
80206250: 97 b5 01 00  	auipc	a1, 27
80206254: 93 84 85 d3  	addi	s1, a1, -712
80206258: 8c 78        	ld	a1, 48(s1)
8020625a: 2a 89        	mv	s2, a0
8020625c: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206260: b9 e5        	bnez	a1, 0x802062ae <.Lpcrel_hi24+0x34>
80206262: 13 85 04 03  	addi	a0, s1, 48
80206266: 05 46        	li	a2, 1
80206268: af 35 05 16  	lr.d.aqrl	a1, (a0)
8020626c: a9 e1        	bnez	a1, 0x802062ae <.Lpcrel_hi24+0x34>
8020626e: af 36 c5 1e  	sc.d.aqrl	a3, a2, (a0)
80206272: fd fa        	bnez	a3, 0x80206268 <.Lpcrel_hi23+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80206274: 23 34 a4 fa  	sd	a0, -88(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80206278: 90 e0        	sd	a2, 0(s1)

000000008020627a <.Lpcrel_hi24>:
8020627a: 17 35 00 00  	auipc	a0, 3
8020627e: 13 05 d5 e5  	addi	a0, a0, -419
80206282: 88 e4        	sd	a0, 8(s1)
80206284: 11 45        	li	a0, 4
80206286: 88 e8        	sd	a0, 16(s1)
80206288: 23 bc 04 00  	sd	zero, 24(s1)
8020628c: 23 80 04 02  	sb	zero, 32(s1)
80206290: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80206294: 23 08 04 fa  	sb	zero, -80(s0)
80206298: 0f 00 10 03  	fence	rw, w
8020629c: 09 45        	li	a0, 2
8020629e: 88 f8        	sd	a0, 48(s1)
802062a0: 13 05 84 fa  	addi	a0, s0, -88
802062a4: 97 10 00 00  	auipc	ra, 1
802062a8: e7 80 c0 06  	jalr	108(ra)
802062ac: 05 a0        	j	0x802062cc <.Lpcrel_hi24+0x52>
802062ae: 05 45        	li	a0, 1
;             match status {
802062b0: 63 9b a5 00  	bne	a1, a0, 0x802062c6 <.Lpcrel_hi24+0x4c>
802062b4: 0f 00 00 01  	fence	w, 0
802062b8: 0f 00 30 03  	fence	rw, rw
802062bc: 8c 78        	ld	a1, 48(s1)
802062be: 0f 00 30 02  	fence	r, rw
;             match status {
802062c2: e3 89 a5 fe  	beq	a1, a0, 0x802062b4 <.Lpcrel_hi24+0x3a>
802062c6: 09 45        	li	a0, 2
;             match status {
802062c8: 63 94 a5 06  	bne	a1, a0, 0x80206330 <.Lpcrel_hi29+0x5a>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
802062cc: 13 15 49 03  	slli	a0, s2, 52
802062d0: 51 91        	srli	a0, a0, 52
802062d2: 13 35 15 00  	seqz	a0, a0

00000000802062d6 <.Lpcrel_hi29>:
802062d6: 97 e5 01 00  	auipc	a1, 30
802062da: 93 85 a5 d2  	addi	a1, a1, -726
802062de: b3 35 b9 00  	sltu	a1, s2, a1
802062e2: 93 c5 f5 ff  	not	a1, a1
802062e6: 6d 8d        	and	a0, a0, a1
802062e8: 93 55 b9 01  	srli	a1, s2, 27
802062ec: 93 b5 15 01  	sltiu	a1, a1, 17
802062f0: 6d 8d        	and	a0, a0, a1
802062f2: 2d cd        	beqz	a0, 0x8020636c <.Lpcrel_hi30>
802062f4: 85 45        	li	a1, 1
802062f6: 05 66        	lui	a2, 1
802062f8: 4a 85        	mv	a0, s2
802062fa: 97 20 00 00  	auipc	ra, 2
802062fe: e7 80 00 c9  	jalr	-880(ra)
;         self.lock.acquire();
80206302: 93 89 84 00  	addi	s3, s1, 8
80206306: 4e 85        	mv	a0, s3
80206308: 97 00 00 00  	auipc	ra, 0
8020630c: e7 80 40 93  	jalr	-1740(ra)
;         unsafe { (*pa).next = self.freelist }
80206310: 88 74        	ld	a0, 40(s1)
80206312: 23 30 a9 00  	sd	a0, 0(s2)
;         self.freelist = pa;
80206316: 23 b4 24 03  	sd	s2, 40(s1)
;         self.lock.release();
8020631a: 4e 85        	mv	a0, s3
8020631c: e6 60        	ld	ra, 88(sp)
8020631e: 46 64        	ld	s0, 80(sp)
80206320: a6 64        	ld	s1, 72(sp)
80206322: 06 69        	ld	s2, 64(sp)
80206324: e2 79        	ld	s3, 56(sp)
80206326: 25 61        	addi	sp, sp, 96
80206328: 17 03 00 00  	auipc	t1, 0
8020632c: 67 00 a3 a7  	jr	-1414(t1)
;             match status {
80206330: 85 e1        	bnez	a1, 0x80206350 <.Lpcrel_hi27>

0000000080206332 <.Lpcrel_hi25>:
;                 INCOMPLETE => unreachable!(),
80206332: 17 35 00 00  	auipc	a0, 3
80206336: 13 05 65 d5  	addi	a0, a0, -682

000000008020633a <.Lpcrel_hi26>:
8020633a: 97 35 00 00  	auipc	a1, 3
8020633e: 13 86 65 d7  	addi	a2, a1, -650
80206342: 93 05 80 02  	li	a1, 40
80206346: 97 10 00 00  	auipc	ra, 1
8020634a: e7 80 80 20  	jalr	520(ra)
8020634e: 00 00        	unimp	

0000000080206350 <.Lpcrel_hi27>:
;                 PANICKED => panic!("Once has panicked"),
80206350: 17 35 00 00  	auipc	a0, 3
80206354: 13 05 05 cb  	addi	a0, a0, -848

0000000080206358 <.Lpcrel_hi28>:
80206358: 97 35 00 00  	auipc	a1, 3
8020635c: 13 86 85 d1  	addi	a2, a1, -744
80206360: c5 45        	li	a1, 17
80206362: 97 10 00 00  	auipc	ra, 1
80206366: e7 80 c0 1e  	jalr	492(ra)
8020636a: 00 00        	unimp	

000000008020636c <.Lpcrel_hi30>:
8020636c: 17 35 00 00  	auipc	a0, 3
80206370: 13 05 45 27  	addi	a0, a0, 628
80206374: 23 34 a4 fa  	sd	a0, -88(s0)
80206378: 05 45        	li	a0, 1
8020637a: 23 38 a4 fa  	sd	a0, -80(s0)
8020637e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080206382 <.Lpcrel_hi31>:
80206382: 17 35 00 00  	auipc	a0, 3
80206386: 13 05 e5 26  	addi	a0, a0, 622
8020638a: 23 3c a4 fa  	sd	a0, -72(s0)
8020638e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206392 <.Lpcrel_hi32>:
;             panic!("kfree");
80206392: 17 35 00 00  	auipc	a0, 3
80206396: 93 05 65 27  	addi	a1, a0, 630
8020639a: 13 05 84 fa  	addi	a0, s0, -88
8020639e: 97 10 00 00  	auipc	ra, 1
802063a2: e7 80 20 18  	jalr	386(ra)
802063a6: 00 00        	unimp	

00000000802063a8 <_ZN6kernel6memory3kvm7kvminit17h70071457edabff96E>:
; pub fn kvminit() {
802063a8: 19 71        	addi	sp, sp, -128
802063aa: 86 fc        	sd	ra, 120(sp)
802063ac: a2 f8        	sd	s0, 112(sp)
802063ae: a6 f4        	sd	s1, 104(sp)
802063b0: ca f0        	sd	s2, 96(sp)
802063b2: ce ec        	sd	s3, 88(sp)
802063b4: d2 e8        	sd	s4, 80(sp)
802063b6: d6 e4        	sd	s5, 72(sp)
802063b8: da e0        	sd	s6, 64(sp)
802063ba: 00 01        	addi	s0, sp, 128
802063bc: 0f 00 30 03  	fence	rw, rw

00000000802063c0 <.Lpcrel_hi0>:
802063c0: 17 b5 01 00  	auipc	a0, 27
802063c4: 13 09 05 c0  	addi	s2, a0, -1024
802063c8: 03 35 09 01  	ld	a0, 16(s2)
802063cc: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802063d0: 29 e9        	bnez	a0, 0x80206422 <.Lpcrel_hi0+0x62>
802063d2: 93 05 09 01  	addi	a1, s2, 16
802063d6: 85 49        	li	s3, 1
802063d8: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802063dc: 39 e1        	bnez	a0, 0x80206422 <.Lpcrel_hi0+0x62>
802063de: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802063e2: 7d fa        	bnez	a2, 0x802063d8 <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802063e4: 23 34 b4 f8  	sd	a1, -120(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802063e8: 97 00 00 00  	auipc	ra, 0
802063ec: e7 80 e0 d3  	jalr	-706(ra)
802063f0: aa 84        	mv	s1, a0
802063f2: 05 66        	lui	a2, 1
802063f4: 81 45        	li	a1, 0
802063f6: 97 20 00 00  	auipc	ra, 2
802063fa: e7 80 40 b9  	jalr	-1132(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802063fe: 23 30 39 01  	sd	s3, 0(s2)
80206402: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
80206406: 23 08 04 f8  	sb	zero, -112(s0)
8020640a: 0f 00 10 03  	fence	rw, w
8020640e: 09 45        	li	a0, 2
80206410: 23 38 a9 00  	sd	a0, 16(s2)
80206414: 13 05 84 f8  	addi	a0, s0, -120
80206418: 97 10 00 00  	auipc	ra, 1
8020641c: e7 80 80 ef  	jalr	-264(ra)
80206420: 0d a0        	j	0x80206442 <.Lpcrel_hi0+0x82>
80206422: 85 45        	li	a1, 1
;             match status {
80206424: 63 1c b5 00  	bne	a0, a1, 0x8020643c <.Lpcrel_hi0+0x7c>
80206428: 0f 00 00 01  	fence	w, 0
8020642c: 0f 00 30 03  	fence	rw, rw
80206430: 03 35 09 01  	ld	a0, 16(s2)
80206434: 0f 00 30 02  	fence	r, rw
;             match status {
80206438: e3 08 b5 fe  	beq	a0, a1, 0x80206428 <.Lpcrel_hi0+0x68>
8020643c: 89 45        	li	a1, 2
;             match status {
8020643e: 63 18 b5 1c  	bne	a0, a1, 0x8020660e <.Lpcrel_hi45+0x30>
;             let pte = self.walk(a, true);
80206442: 21 09        	addi	s2, s2, 8
80206444: b7 05 00 10  	lui	a1, 65536
80206448: 05 46        	li	a2, 1
8020644a: 85 44        	li	s1, 1
8020644c: 4a 85        	mv	a0, s2
8020644e: 97 f0 ff ff  	auipc	ra, 1048575
80206452: e7 80 80 6e  	jalr	1768(ra)
80206456: 63 0e 05 34  	beqz	a0, 0x802067b2 <.Lpcrel_hi8>
;             if unsafe { *pte & PTE_V } != 0 {
8020645a: 83 45 05 00  	lbu	a1, 0(a0)
8020645e: 85 89        	andi	a1, a1, 1
80206460: 63 96 05 38  	bnez	a1, 0x802067ec <.Lpcrel_hi5>
80206464: b7 05 00 04  	lui	a1, 16384
80206468: 9d 25        	addiw	a1, a1, 7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020646a: 0c e1        	sd	a1, 0(a0)
;             let pte = self.walk(a, true);
8020646c: b7 15 00 10  	lui	a1, 65537
80206470: 05 46        	li	a2, 1
80206472: 85 44        	li	s1, 1
80206474: 4a 85        	mv	a0, s2
80206476: 97 f0 ff ff  	auipc	ra, 1048575
8020647a: e7 80 00 6c  	jalr	1728(ra)
8020647e: 63 05 05 3a  	beqz	a0, 0x80206828 <.Lpcrel_hi14>
;             if unsafe { *pte & PTE_V } != 0 {
80206482: 83 45 05 00  	lbu	a1, 0(a0)
80206486: 85 89        	andi	a1, a1, 1
80206488: 63 9d 05 3c  	bnez	a1, 0x80206862 <.Lpcrel_hi11>
8020648c: b7 05 00 04  	lui	a1, 16384
80206490: 9b 85 75 40  	addiw	a1, a1, 1031
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206494: 0c e1        	sd	a1, 0(a0)
80206496: b7 09 00 0c  	lui	s3, 49152
8020649a: 37 fa ff 0b  	lui	s4, 49151
8020649e: b7 04 00 03  	lui	s1, 12288
802064a2: 9d 24        	addiw	s1, s1, 7
802064a4: 85 6a        	lui	s5, 1
802064a6: 37 eb 3f 0c  	lui	s6, 50174
;             let pte = self.walk(a, true);
802064aa: 05 46        	li	a2, 1
802064ac: 4a 85        	mv	a0, s2
802064ae: ce 85        	mv	a1, s3
802064b0: 97 f0 ff ff  	auipc	ra, 1048575
802064b4: e7 80 60 68  	jalr	1670(ra)
;             if pte.is_null() {
802064b8: 63 0b 05 16  	beqz	a0, 0x8020662e <.Lpcrel_hi20>
;             if unsafe { *pte & PTE_V } != 0 {
802064bc: 83 45 05 00  	lbu	a1, 0(a0)
802064c0: 85 89        	andi	a1, a1, 1
802064c2: 63 94 05 1a  	bnez	a1, 0x8020666a <.Lpcrel_hi17>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802064c6: 04 e1        	sd	s1, 0(a0)
;             pa += PGSIZE;
802064c8: d6 99        	add	s3, s3, s5
;         while a <= last {
802064ca: 56 9a        	add	s4, s4, s5
802064cc: 93 84 04 40  	addi	s1, s1, 1024
802064d0: e3 7d 4b fd  	bgeu	s6, s4, 0x802064aa <.Lpcrel_hi0+0xea>

00000000802064d4 <.Lpcrel_hi23>:
;         if size == 0 {
802064d4: 17 35 00 00  	auipc	a0, 3
802064d8: 93 09 c5 b2  	addi	s3, a0, -1236
802064dc: 93 05 10 40  	li	a1, 1025
802064e0: 13 95 55 01  	slli	a0, a1, 21
802064e4: 63 8d a9 3a  	beq	s3, a0, 0x8020689e <.Lpcrel_hi24>
;         while a <= last {
802064e8: 13 85 f9 ff  	addi	a0, s3, -1
802064ec: 13 56 55 01  	srli	a2, a0, 21
802064f0: 63 6f b6 02  	bltu	a2, a1, 0x8020652e <.Lpcrel_hi23+0x5a>
802064f4: 93 04 10 40  	li	s1, 1025
802064f8: d6 04        	slli	s1, s1, 21
802064fa: 05 6a        	lui	s4, 1
802064fc: fd 75        	lui	a1, 1048575
802064fe: b3 7a b5 00  	and	s5, a0, a1
;             let pte = self.walk(a, true);
80206502: 05 46        	li	a2, 1
80206504: 4a 85        	mv	a0, s2
80206506: a6 85        	mv	a1, s1
80206508: 97 f0 ff ff  	auipc	ra, 1048575
8020650c: e7 80 e0 62  	jalr	1582(ra)
;             if pte.is_null() {
80206510: 63 09 05 1a  	beqz	a0, 0x802066c2 <.Lpcrel_hi30>
;             if unsafe { *pte & PTE_V } != 0 {
80206514: 83 45 05 00  	lbu	a1, 0(a0)
80206518: 85 89        	andi	a1, a1, 1
8020651a: 63 92 05 1e  	bnez	a1, 0x802066fe <.Lpcrel_hi27>
;     (pa >> 12) << 10
8020651e: 93 d5 24 00  	srli	a1, s1, 2
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206522: 93 e5 b5 00  	ori	a1, a1, 11
;             pa += PGSIZE;
80206526: d2 94        	add	s1, s1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206528: 0c e1        	sd	a1, 0(a0)
;         while a <= last {
8020652a: e3 fc 9a fc  	bgeu	s5, s1, 0x80206502 <.Lpcrel_hi23+0x2e>
8020652e: 45 45        	li	a0, 17
80206530: 6e 05        	slli	a0, a0, 27
80206532: 63 84 a9 3a  	beq	s3, a0, 0x802068da <.Lpcrel_hi33>
80206536: 7d 75        	lui	a0, 1048575
;         while a <= last {
80206538: b3 f4 a9 00  	and	s1, s3, a0
8020653c: 37 85 08 00  	lui	a0, 136
80206540: 7d 35        	addiw	a0, a0, -1
80206542: 13 1a c5 00  	slli	s4, a0, 12
;         while a <= last {
80206546: 63 6a 9a 02  	bltu	s4, s1, 0x8020657a <.Lpcrel_hi23+0xa6>
8020654a: 85 6a        	lui	s5, 1
;             let pte = self.walk(a, true);
8020654c: 05 46        	li	a2, 1
8020654e: 4a 85        	mv	a0, s2
80206550: a6 85        	mv	a1, s1
80206552: 97 f0 ff ff  	auipc	ra, 1048575
80206556: e7 80 40 5e  	jalr	1508(ra)
;             if pte.is_null() {
8020655a: 63 00 05 1e  	beqz	a0, 0x8020673a <.Lpcrel_hi39>
;             if unsafe { *pte & PTE_V } != 0 {
8020655e: 83 45 05 00  	lbu	a1, 0(a0)
80206562: 85 89        	andi	a1, a1, 1
80206564: 63 99 05 20  	bnez	a1, 0x80206776 <.Lpcrel_hi36>
;     (pa >> 12) << 10
80206568: 93 d5 c9 00  	srli	a1, s3, 12
8020656c: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020656e: 9d 05        	addi	a1, a1, 7
80206570: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
80206572: d6 94        	add	s1, s1, s5
;             pa += PGSIZE;
80206574: d6 99        	add	s3, s3, s5
;         while a <= last {
80206576: e3 7b 9a fc  	bgeu	s4, s1, 0x8020654c <.Lpcrel_hi23+0x78>
8020657a: 37 05 00 04  	lui	a0, 16384
8020657e: 7d 35        	addiw	a0, a0, -1
80206580: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80206584: 05 46        	li	a2, 1
80206586: 85 44        	li	s1, 1
80206588: 4a 85        	mv	a0, s2
8020658a: 97 f0 ff ff  	auipc	ra, 1048575
8020658e: e7 80 c0 5a  	jalr	1452(ra)
80206592: 63 02 05 38  	beqz	a0, 0x80206916 <.Lpcrel_hi49>
;             if unsafe { *pte & PTE_V } != 0 {
80206596: 83 45 05 00  	lbu	a1, 0(a0)
8020659a: 85 89        	andi	a1, a1, 1
8020659c: 63 9a 05 3a  	bnez	a1, 0x80206950 <.Lpcrel_hi46>

00000000802065a0 <.Lpcrel_hi42>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802065a0: 97 b5 ff ff  	auipc	a1, 1048571
802065a4: 93 85 05 a6  	addi	a1, a1, -1440
802065a8: b1 81        	srli	a1, a1, 12
802065aa: aa 05        	slli	a1, a1, 10
802065ac: ad 05        	addi	a1, a1, 11
802065ae: 0c e1        	sd	a1, 0(a0)
802065b0: 13 05 84 fb  	addi	a0, s0, -72
;     Stdout.write_fmt(args).unwrap();
802065b4: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802065b8 <.Lpcrel_hi43>:
802065b8: 17 35 00 00  	auipc	a0, 3
802065bc: 13 05 85 0e  	addi	a0, a0, 232
802065c0: 23 34 a4 f8  	sd	a0, -120(s0)
802065c4: 05 45        	li	a0, 1
802065c6: 23 38 a4 f8  	sd	a0, -112(s0)

00000000802065ca <.Lpcrel_hi44>:
802065ca: 17 35 00 00  	auipc	a0, 3
802065ce: 13 05 e5 08  	addi	a0, a0, 142
802065d2: 23 3c a4 f8  	sd	a0, -104(s0)
802065d6: 23 30 04 fa  	sd	zero, -96(s0)
802065da: 23 34 04 fa  	sd	zero, -88(s0)

00000000802065de <.Lpcrel_hi45>:
802065de: 17 35 00 00  	auipc	a0, 3
802065e2: 93 05 a5 17  	addi	a1, a0, 378
802065e6: 13 05 04 f8  	addi	a0, s0, -128
802065ea: 13 06 84 f8  	addi	a2, s0, -120
802065ee: 97 10 00 00  	auipc	ra, 1
802065f2: e7 80 a0 02  	jalr	42(ra)
802065f6: 63 1b 05 38  	bnez	a0, 0x8020698c <.Lpcrel_hi52>
; }
802065fa: e6 70        	ld	ra, 120(sp)
802065fc: 46 74        	ld	s0, 112(sp)
802065fe: a6 74        	ld	s1, 104(sp)
80206600: 06 79        	ld	s2, 96(sp)
80206602: e6 69        	ld	s3, 88(sp)
80206604: 46 6a        	ld	s4, 80(sp)
80206606: a6 6a        	ld	s5, 72(sp)
80206608: 06 6b        	ld	s6, 64(sp)
8020660a: 09 61        	addi	sp, sp, 128
8020660c: 82 80        	ret
;             match status {
8020660e: 41 ed        	bnez	a0, 0x802066a6 <.Lpcrel_hi3>

0000000080206610 <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
80206610: 17 35 00 00  	auipc	a0, 3
80206614: 13 05 85 a7  	addi	a0, a0, -1416

0000000080206618 <.Lpcrel_hi2>:
80206618: 97 35 00 00  	auipc	a1, 3
8020661c: 13 86 85 a9  	addi	a2, a1, -1384
80206620: 93 05 80 02  	li	a1, 40
80206624: 97 10 00 00  	auipc	ra, 1
80206628: e7 80 a0 f2  	jalr	-214(ra)
8020662c: 00 00        	unimp	

000000008020662e <.Lpcrel_hi20>:
8020662e: 17 35 00 00  	auipc	a0, 3
80206632: 13 05 a5 01  	addi	a0, a0, 26
80206636: 23 34 a4 f8  	sd	a0, -120(s0)
8020663a: 05 45        	li	a0, 1
8020663c: 23 38 a4 f8  	sd	a0, -112(s0)
80206640: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206644 <.Lpcrel_hi21>:
80206644: 17 35 00 00  	auipc	a0, 3
80206648: 13 05 45 01  	addi	a0, a0, 20
8020664c: 23 3c a4 f8  	sd	a0, -104(s0)
80206650: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206654 <.Lpcrel_hi22>:
;             panic!("kvmmap");
80206654: 17 35 00 00  	auipc	a0, 3
80206658: 93 05 c5 01  	addi	a1, a0, 28
8020665c: 13 05 84 f8  	addi	a0, s0, -120
80206660: 97 10 00 00  	auipc	ra, 1
80206664: e7 80 00 ec  	jalr	-320(ra)
80206668: 00 00        	unimp	

000000008020666a <.Lpcrel_hi17>:
8020666a: 17 35 00 00  	auipc	a0, 3
8020666e: 13 05 65 e2  	addi	a0, a0, -474
80206672: 23 34 a4 f8  	sd	a0, -120(s0)
80206676: 05 45        	li	a0, 1
80206678: 23 38 a4 f8  	sd	a0, -112(s0)
8020667c: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206680 <.Lpcrel_hi18>:
80206680: 17 35 00 00  	auipc	a0, 3
80206684: 13 05 05 dd  	addi	a0, a0, -560
80206688: 23 3c a4 f8  	sd	a0, -104(s0)
8020668c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206690 <.Lpcrel_hi19>:
;                 panic!("mappages: remap");
80206690: 17 35 00 00  	auipc	a0, 3
80206694: 93 05 05 e1  	addi	a1, a0, -496
80206698: 13 05 84 f8  	addi	a0, s0, -120
8020669c: 97 10 00 00  	auipc	ra, 1
802066a0: e7 80 40 e8  	jalr	-380(ra)
802066a4: 00 00        	unimp	

00000000802066a6 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
802066a6: 17 35 00 00  	auipc	a0, 3
802066aa: 13 05 a5 95  	addi	a0, a0, -1702

00000000802066ae <.Lpcrel_hi4>:
802066ae: 97 35 00 00  	auipc	a1, 3
802066b2: 13 86 25 9c  	addi	a2, a1, -1598
802066b6: c5 45        	li	a1, 17
802066b8: 97 10 00 00  	auipc	ra, 1
802066bc: e7 80 60 e9  	jalr	-362(ra)
802066c0: 00 00        	unimp	

00000000802066c2 <.Lpcrel_hi30>:
802066c2: 17 35 00 00  	auipc	a0, 3
802066c6: 13 05 65 f8  	addi	a0, a0, -122
802066ca: 23 34 a4 f8  	sd	a0, -120(s0)
802066ce: 05 45        	li	a0, 1
802066d0: 23 38 a4 f8  	sd	a0, -112(s0)
802066d4: 23 34 04 fa  	sd	zero, -88(s0)

00000000802066d8 <.Lpcrel_hi31>:
802066d8: 17 35 00 00  	auipc	a0, 3
802066dc: 13 05 05 f8  	addi	a0, a0, -128
802066e0: 23 3c a4 f8  	sd	a0, -104(s0)
802066e4: 23 30 04 fa  	sd	zero, -96(s0)

00000000802066e8 <.Lpcrel_hi32>:
;             panic!("kvmmap");
802066e8: 17 35 00 00  	auipc	a0, 3
802066ec: 93 05 85 f8  	addi	a1, a0, -120
802066f0: 13 05 84 f8  	addi	a0, s0, -120
802066f4: 97 10 00 00  	auipc	ra, 1
802066f8: e7 80 c0 e2  	jalr	-468(ra)
802066fc: 00 00        	unimp	

00000000802066fe <.Lpcrel_hi27>:
802066fe: 17 35 00 00  	auipc	a0, 3
80206702: 13 05 25 d9  	addi	a0, a0, -622
80206706: 23 34 a4 f8  	sd	a0, -120(s0)
8020670a: 05 45        	li	a0, 1
8020670c: 23 38 a4 f8  	sd	a0, -112(s0)
80206710: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206714 <.Lpcrel_hi28>:
80206714: 17 35 00 00  	auipc	a0, 3
80206718: 13 05 c5 d3  	addi	a0, a0, -708
8020671c: 23 3c a4 f8  	sd	a0, -104(s0)
80206720: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206724 <.Lpcrel_hi29>:
;                 panic!("mappages: remap");
80206724: 17 35 00 00  	auipc	a0, 3
80206728: 93 05 c5 d7  	addi	a1, a0, -644
8020672c: 13 05 84 f8  	addi	a0, s0, -120
80206730: 97 10 00 00  	auipc	ra, 1
80206734: e7 80 00 df  	jalr	-528(ra)
80206738: 00 00        	unimp	

000000008020673a <.Lpcrel_hi39>:
8020673a: 17 35 00 00  	auipc	a0, 3
8020673e: 13 05 e5 f0  	addi	a0, a0, -242
80206742: 23 34 a4 f8  	sd	a0, -120(s0)
80206746: 05 45        	li	a0, 1
80206748: 23 38 a4 f8  	sd	a0, -112(s0)
8020674c: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206750 <.Lpcrel_hi40>:
80206750: 17 35 00 00  	auipc	a0, 3
80206754: 13 05 85 f0  	addi	a0, a0, -248
80206758: 23 3c a4 f8  	sd	a0, -104(s0)
8020675c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206760 <.Lpcrel_hi41>:
;             panic!("kvmmap");
80206760: 17 35 00 00  	auipc	a0, 3
80206764: 93 05 05 f1  	addi	a1, a0, -240
80206768: 13 05 84 f8  	addi	a0, s0, -120
8020676c: 97 10 00 00  	auipc	ra, 1
80206770: e7 80 40 db  	jalr	-588(ra)
80206774: 00 00        	unimp	

0000000080206776 <.Lpcrel_hi36>:
80206776: 17 35 00 00  	auipc	a0, 3
8020677a: 13 05 a5 d1  	addi	a0, a0, -742
8020677e: 23 34 a4 f8  	sd	a0, -120(s0)
80206782: 05 45        	li	a0, 1
80206784: 23 38 a4 f8  	sd	a0, -112(s0)
80206788: 23 34 04 fa  	sd	zero, -88(s0)

000000008020678c <.Lpcrel_hi37>:
8020678c: 17 35 00 00  	auipc	a0, 3
80206790: 13 05 45 cc  	addi	a0, a0, -828
80206794: 23 3c a4 f8  	sd	a0, -104(s0)
80206798: 23 30 04 fa  	sd	zero, -96(s0)

000000008020679c <.Lpcrel_hi38>:
;                 panic!("mappages: remap");
8020679c: 17 35 00 00  	auipc	a0, 3
802067a0: 93 05 45 d0  	addi	a1, a0, -764
802067a4: 13 05 84 f8  	addi	a0, s0, -120
802067a8: 97 10 00 00  	auipc	ra, 1
802067ac: e7 80 80 d7  	jalr	-648(ra)
802067b0: 00 00        	unimp	

00000000802067b2 <.Lpcrel_hi8>:
802067b2: 17 35 00 00  	auipc	a0, 3
802067b6: 13 05 65 e9  	addi	a0, a0, -362
802067ba: 23 34 a4 f8  	sd	a0, -120(s0)
802067be: 23 38 94 f8  	sd	s1, -112(s0)
802067c2: 23 34 04 fa  	sd	zero, -88(s0)

00000000802067c6 <.Lpcrel_hi9>:
802067c6: 17 35 00 00  	auipc	a0, 3
802067ca: 13 05 25 e9  	addi	a0, a0, -366
802067ce: 23 3c a4 f8  	sd	a0, -104(s0)
802067d2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802067d6 <.Lpcrel_hi10>:
;             panic!("kvmmap");
802067d6: 17 35 00 00  	auipc	a0, 3
802067da: 93 05 a5 e9  	addi	a1, a0, -358
802067de: 13 05 84 f8  	addi	a0, s0, -120
802067e2: 97 10 00 00  	auipc	ra, 1
802067e6: e7 80 e0 d3  	jalr	-706(ra)
802067ea: 00 00        	unimp	

00000000802067ec <.Lpcrel_hi5>:
802067ec: 17 35 00 00  	auipc	a0, 3
802067f0: 13 05 45 ca  	addi	a0, a0, -860
802067f4: 23 34 a4 f8  	sd	a0, -120(s0)
802067f8: 05 45        	li	a0, 1
802067fa: 23 38 a4 f8  	sd	a0, -112(s0)
802067fe: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206802 <.Lpcrel_hi6>:
80206802: 17 35 00 00  	auipc	a0, 3
80206806: 13 05 e5 c4  	addi	a0, a0, -946
8020680a: 23 3c a4 f8  	sd	a0, -104(s0)
8020680e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206812 <.Lpcrel_hi7>:
;                 panic!("mappages: remap");
80206812: 17 35 00 00  	auipc	a0, 3
80206816: 93 05 e5 c8  	addi	a1, a0, -882
8020681a: 13 05 84 f8  	addi	a0, s0, -120
8020681e: 97 10 00 00  	auipc	ra, 1
80206822: e7 80 20 d0  	jalr	-766(ra)
80206826: 00 00        	unimp	

0000000080206828 <.Lpcrel_hi14>:
80206828: 17 35 00 00  	auipc	a0, 3
8020682c: 13 05 05 e2  	addi	a0, a0, -480
80206830: 23 34 a4 f8  	sd	a0, -120(s0)
80206834: 23 38 94 f8  	sd	s1, -112(s0)
80206838: 23 34 04 fa  	sd	zero, -88(s0)

000000008020683c <.Lpcrel_hi15>:
8020683c: 17 35 00 00  	auipc	a0, 3
80206840: 13 05 c5 e1  	addi	a0, a0, -484
80206844: 23 3c a4 f8  	sd	a0, -104(s0)
80206848: 23 30 04 fa  	sd	zero, -96(s0)

000000008020684c <.Lpcrel_hi16>:
;             panic!("kvmmap");
8020684c: 17 35 00 00  	auipc	a0, 3
80206850: 93 05 45 e2  	addi	a1, a0, -476
80206854: 13 05 84 f8  	addi	a0, s0, -120
80206858: 97 10 00 00  	auipc	ra, 1
8020685c: e7 80 80 cc  	jalr	-824(ra)
80206860: 00 00        	unimp	

0000000080206862 <.Lpcrel_hi11>:
80206862: 17 35 00 00  	auipc	a0, 3
80206866: 13 05 e5 c2  	addi	a0, a0, -978
8020686a: 23 34 a4 f8  	sd	a0, -120(s0)
8020686e: 05 45        	li	a0, 1
80206870: 23 38 a4 f8  	sd	a0, -112(s0)
80206874: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206878 <.Lpcrel_hi12>:
80206878: 17 35 00 00  	auipc	a0, 3
8020687c: 13 05 85 bd  	addi	a0, a0, -1064
80206880: 23 3c a4 f8  	sd	a0, -104(s0)
80206884: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206888 <.Lpcrel_hi13>:
;                 panic!("mappages: remap");
80206888: 17 35 00 00  	auipc	a0, 3
8020688c: 93 05 85 c1  	addi	a1, a0, -1000
80206890: 13 05 84 f8  	addi	a0, s0, -120
80206894: 97 10 00 00  	auipc	ra, 1
80206898: e7 80 c0 c8  	jalr	-884(ra)
8020689c: 00 00        	unimp	

000000008020689e <.Lpcrel_hi24>:
8020689e: 17 35 00 00  	auipc	a0, 3
802068a2: 13 05 a5 c2  	addi	a0, a0, -982
802068a6: 23 34 a4 f8  	sd	a0, -120(s0)
802068aa: 05 45        	li	a0, 1
802068ac: 23 38 a4 f8  	sd	a0, -112(s0)
802068b0: 23 34 04 fa  	sd	zero, -88(s0)

00000000802068b4 <.Lpcrel_hi25>:
802068b4: 17 35 00 00  	auipc	a0, 3
802068b8: 13 05 c5 b9  	addi	a0, a0, -1124
802068bc: 23 3c a4 f8  	sd	a0, -104(s0)
802068c0: 23 30 04 fa  	sd	zero, -96(s0)

00000000802068c4 <.Lpcrel_hi26>:
;             panic!("mappages: size");
802068c4: 17 35 00 00  	auipc	a0, 3
802068c8: 93 05 45 c1  	addi	a1, a0, -1004
802068cc: 13 05 84 f8  	addi	a0, s0, -120
802068d0: 97 10 00 00  	auipc	ra, 1
802068d4: e7 80 00 c5  	jalr	-944(ra)
802068d8: 00 00        	unimp	

00000000802068da <.Lpcrel_hi33>:
802068da: 17 35 00 00  	auipc	a0, 3
802068de: 13 05 e5 be  	addi	a0, a0, -1042
802068e2: 23 34 a4 f8  	sd	a0, -120(s0)
802068e6: 05 45        	li	a0, 1
802068e8: 23 38 a4 f8  	sd	a0, -112(s0)
802068ec: 23 34 04 fa  	sd	zero, -88(s0)

00000000802068f0 <.Lpcrel_hi34>:
802068f0: 17 35 00 00  	auipc	a0, 3
802068f4: 13 05 05 b6  	addi	a0, a0, -1184
802068f8: 23 3c a4 f8  	sd	a0, -104(s0)
802068fc: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206900 <.Lpcrel_hi35>:
;             panic!("mappages: size");
80206900: 17 35 00 00  	auipc	a0, 3
80206904: 93 05 85 bd  	addi	a1, a0, -1064
80206908: 13 05 84 f8  	addi	a0, s0, -120
8020690c: 97 10 00 00  	auipc	ra, 1
80206910: e7 80 40 c1  	jalr	-1004(ra)
80206914: 00 00        	unimp	

0000000080206916 <.Lpcrel_hi49>:
80206916: 17 35 00 00  	auipc	a0, 3
8020691a: 13 05 25 d3  	addi	a0, a0, -718
8020691e: 23 34 a4 f8  	sd	a0, -120(s0)
80206922: 23 38 94 f8  	sd	s1, -112(s0)
80206926: 23 34 04 fa  	sd	zero, -88(s0)

000000008020692a <.Lpcrel_hi50>:
8020692a: 17 35 00 00  	auipc	a0, 3
8020692e: 13 05 e5 d2  	addi	a0, a0, -722
80206932: 23 3c a4 f8  	sd	a0, -104(s0)
80206936: 23 30 04 fa  	sd	zero, -96(s0)

000000008020693a <.Lpcrel_hi51>:
;             panic!("kvmmap");
8020693a: 17 35 00 00  	auipc	a0, 3
8020693e: 93 05 65 d3  	addi	a1, a0, -714
80206942: 13 05 84 f8  	addi	a0, s0, -120
80206946: 97 10 00 00  	auipc	ra, 1
8020694a: e7 80 a0 bd  	jalr	-1062(ra)
8020694e: 00 00        	unimp	

0000000080206950 <.Lpcrel_hi46>:
80206950: 17 35 00 00  	auipc	a0, 3
80206954: 13 05 05 b4  	addi	a0, a0, -1216
80206958: 23 34 a4 f8  	sd	a0, -120(s0)
8020695c: 05 45        	li	a0, 1
8020695e: 23 38 a4 f8  	sd	a0, -112(s0)
80206962: 23 34 04 fa  	sd	zero, -88(s0)

0000000080206966 <.Lpcrel_hi47>:
80206966: 17 35 00 00  	auipc	a0, 3
8020696a: 13 05 a5 ae  	addi	a0, a0, -1302
8020696e: 23 3c a4 f8  	sd	a0, -104(s0)
80206972: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206976 <.Lpcrel_hi48>:
;                 panic!("mappages: remap");
80206976: 17 35 00 00  	auipc	a0, 3
8020697a: 93 05 a5 b2  	addi	a1, a0, -1238
8020697e: 13 05 84 f8  	addi	a0, s0, -120
80206982: 97 10 00 00  	auipc	ra, 1
80206986: e7 80 e0 b9  	jalr	-1122(ra)
8020698a: 00 00        	unimp	

000000008020698c <.Lpcrel_hi52>:
8020698c: 17 35 00 00  	auipc	a0, 3
80206990: 13 05 c5 df  	addi	a0, a0, -516

0000000080206994 <.Lpcrel_hi53>:
80206994: 97 35 00 00  	auipc	a1, 3
80206998: 93 86 45 e2  	addi	a3, a1, -476

000000008020699c <.Lpcrel_hi54>:
8020699c: 97 35 00 00  	auipc	a1, 3
802069a0: 13 87 c5 e4  	addi	a4, a1, -436
802069a4: 93 05 b0 02  	li	a1, 43
802069a8: 13 06 84 fb  	addi	a2, s0, -72
802069ac: 97 10 00 00  	auipc	ra, 1
802069b0: e7 80 e0 c0  	jalr	-1010(ra)
802069b4: 00 00        	unimp	

00000000802069b6 <_ZN6kernel6memory3kvm11kvminithart17he13a3ed0baab4e15E>:
; pub fn kvminithart() {
802069b6: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802069b8: 86 f4        	sd	ra, 104(sp)
802069ba: a2 f0        	sd	s0, 96(sp)
802069bc: a6 ec        	sd	s1, 88(sp)
802069be: ca e8        	sd	s2, 80(sp)
802069c0: ce e4        	sd	s3, 72(sp)
802069c2: 80 18        	addi	s0, sp, 112
802069c4: 73 00 00 12  	sfence.vma
802069c8: 0f 00 30 03  	fence	rw, rw

00000000802069cc <.Lpcrel_hi55>:
802069cc: 17 a5 01 00  	auipc	a0, 26
802069d0: 93 04 45 5f  	addi	s1, a0, 1524
802069d4: 88 68        	ld	a0, 16(s1)
802069d6: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802069da: 21 e9        	bnez	a0, 0x80206a2a <.Lpcrel_hi55+0x5e>
802069dc: 93 85 04 01  	addi	a1, s1, 16
802069e0: 85 49        	li	s3, 1
802069e2: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802069e6: 31 e1        	bnez	a0, 0x80206a2a <.Lpcrel_hi55+0x5e>
802069e8: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802069ec: 7d fa        	bnez	a2, 0x802069e2 <.Lpcrel_hi55+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802069ee: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802069f2: 97 f0 ff ff  	auipc	ra, 1048575
802069f6: e7 80 40 73  	jalr	1844(ra)
802069fa: 2a 89        	mv	s2, a0
802069fc: 05 66        	lui	a2, 1
802069fe: 81 45        	li	a1, 0
80206a00: 97 10 00 00  	auipc	ra, 1
80206a04: e7 80 a0 58  	jalr	1418(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80206a08: 23 b0 34 01  	sd	s3, 0(s1)
80206a0c: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80206a10: 23 04 04 fa  	sb	zero, -88(s0)
80206a14: 0f 00 10 03  	fence	rw, w
80206a18: 09 45        	li	a0, 2
80206a1a: 88 e8        	sd	a0, 16(s1)
80206a1c: 13 05 04 fa  	addi	a0, s0, -96
80206a20: 97 10 00 00  	auipc	ra, 1
80206a24: e7 80 00 8f  	jalr	-1808(ra)
80206a28: 05 a0        	j	0x80206a48 <.Lpcrel_hi55+0x7c>
80206a2a: 85 45        	li	a1, 1
;             match status {
80206a2c: 63 1b b5 00  	bne	a0, a1, 0x80206a42 <.Lpcrel_hi55+0x76>
80206a30: 0f 00 00 01  	fence	w, 0
80206a34: 0f 00 30 03  	fence	rw, rw
80206a38: 88 68        	ld	a0, 16(s1)
80206a3a: 0f 00 30 02  	fence	r, rw
;             match status {
80206a3e: e3 09 b5 fe  	beq	a0, a1, 0x80206a30 <.Lpcrel_hi55+0x64>
80206a42: 89 45        	li	a1, 2
;             match status {
80206a44: 63 16 b5 06  	bne	a0, a1, 0x80206ab0 <.Lpcrel_hi62+0x28>
;         self.data as Addr
80206a48: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80206a4a: 31 81        	srli	a0, a0, 12
80206a4c: fd 55        	li	a1, -1
80206a4e: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80206a50: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206a52: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80206a56: 73 00 00 12  	sfence.vma
80206a5a: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
80206a5e: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080206a62 <.Lpcrel_hi60>:
80206a62: 17 35 00 00  	auipc	a0, 3
80206a66: 13 05 65 c6  	addi	a0, a0, -922
80206a6a: 23 30 a4 fa  	sd	a0, -96(s0)
80206a6e: 05 45        	li	a0, 1
80206a70: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080206a74 <.Lpcrel_hi61>:
80206a74: 17 35 00 00  	auipc	a0, 3
80206a78: 13 05 45 be  	addi	a0, a0, -1052
80206a7c: 23 38 a4 fa  	sd	a0, -80(s0)
80206a80: 23 3c 04 fa  	sd	zero, -72(s0)
80206a84: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206a88 <.Lpcrel_hi62>:
80206a88: 17 35 00 00  	auipc	a0, 3
80206a8c: 93 05 05 cd  	addi	a1, a0, -816
80206a90: 13 05 84 f9  	addi	a0, s0, -104
80206a94: 13 06 04 fa  	addi	a2, s0, -96
80206a98: 97 10 00 00  	auipc	ra, 1
80206a9c: e7 80 00 b8  	jalr	-1152(ra)
80206aa0: 31 e5        	bnez	a0, 0x80206aec <.Lpcrel_hi63>
; }
80206aa2: a6 70        	ld	ra, 104(sp)
80206aa4: 06 74        	ld	s0, 96(sp)
80206aa6: e6 64        	ld	s1, 88(sp)
80206aa8: 46 69        	ld	s2, 80(sp)
80206aaa: a6 69        	ld	s3, 72(sp)
80206aac: 65 61        	addi	sp, sp, 112
80206aae: 82 80        	ret
;             match status {
80206ab0: 05 e1        	bnez	a0, 0x80206ad0 <.Lpcrel_hi58>

0000000080206ab2 <.Lpcrel_hi56>:
;                 INCOMPLETE => unreachable!(),
80206ab2: 17 25 00 00  	auipc	a0, 2
80206ab6: 13 05 65 5d  	addi	a0, a0, 1494

0000000080206aba <.Lpcrel_hi57>:
80206aba: 97 25 00 00  	auipc	a1, 2
80206abe: 13 86 65 5f  	addi	a2, a1, 1526
80206ac2: 93 05 80 02  	li	a1, 40
80206ac6: 97 10 00 00  	auipc	ra, 1
80206aca: e7 80 80 a8  	jalr	-1400(ra)
80206ace: 00 00        	unimp	

0000000080206ad0 <.Lpcrel_hi58>:
;                 PANICKED => panic!("Once has panicked"),
80206ad0: 17 25 00 00  	auipc	a0, 2
80206ad4: 13 05 05 53  	addi	a0, a0, 1328

0000000080206ad8 <.Lpcrel_hi59>:
80206ad8: 97 25 00 00  	auipc	a1, 2
80206adc: 13 86 85 59  	addi	a2, a1, 1432
80206ae0: c5 45        	li	a1, 17
80206ae2: 97 10 00 00  	auipc	ra, 1
80206ae6: e7 80 c0 a6  	jalr	-1428(ra)
80206aea: 00 00        	unimp	

0000000080206aec <.Lpcrel_hi63>:
80206aec: 17 35 00 00  	auipc	a0, 3
80206af0: 13 05 c5 c9  	addi	a0, a0, -868

0000000080206af4 <.Lpcrel_hi64>:
80206af4: 97 35 00 00  	auipc	a1, 3
80206af8: 93 86 45 cc  	addi	a3, a1, -828

0000000080206afc <.Lpcrel_hi65>:
80206afc: 97 35 00 00  	auipc	a1, 3
80206b00: 13 87 c5 ce  	addi	a4, a1, -788
80206b04: 93 05 b0 02  	li	a1, 43
80206b08: 13 06 04 fd  	addi	a2, s0, -48
80206b0c: 97 10 00 00  	auipc	ra, 1
80206b10: e7 80 e0 aa  	jalr	-1362(ra)
80206b14: 00 00        	unimp	

0000000080206b16 <main>:
; pub fn main(hartid: usize) {
80206b16: 19 71        	addi	sp, sp, -128
80206b18: 86 fc        	sd	ra, 120(sp)
80206b1a: a2 f8        	sd	s0, 112(sp)
80206b1c: a6 f4        	sd	s1, 104(sp)
80206b1e: ca f0        	sd	s2, 96(sp)
80206b20: ce ec        	sd	s3, 88(sp)
80206b22: 00 01        	addi	s0, sp, 128

0000000080206b24 <.Lpcrel_hi1>:
80206b24: 17 d5 01 00  	auipc	a0, 29
80206b28: 13 05 c5 4d  	addi	a0, a0, 1244

0000000080206b2c <.Lpcrel_hi2>:
80206b2c: 97 45 01 00  	auipc	a1, 20
80206b30: 93 85 45 4d  	addi	a1, a1, 1236
80206b34: 63 f9 a5 00  	bgeu	a1, a0, 0x80206b46 <.Lpcrel_hi2+0x1a>
80206b38: 13 86 15 00  	addi	a2, a1, 1
80206b3c: 23 80 05 00  	sb	zero, 0(a1)
80206b40: b2 85        	mv	a1, a2
80206b42: e3 6b a6 fe  	bltu	a2, a0, 0x80206b38 <.Lpcrel_hi2+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206b46: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
80206b48: 49 e5        	bnez	a0, 0x80206bd2 <.Lpcrel_hi3>

0000000080206b4a <.Lpcrel_hi4>:
;     println!("{}", LOGO);
80206b4a: 17 35 00 00  	auipc	a0, 3
80206b4e: 13 05 e5 e0  	addi	a0, a0, -498
80206b52: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080206b56 <.Lpcrel_hi5>:
80206b56: 17 05 00 00  	auipc	a0, 0
80206b5a: 13 05 05 78  	addi	a0, a0, 1920
80206b5e: 23 38 a4 f8  	sd	a0, -112(s0)
80206b62: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80206b66: 23 3c 24 f9  	sd	s2, -104(s0)

0000000080206b6a <.Lpcrel_hi6>:
80206b6a: 17 35 00 00  	auipc	a0, 3
80206b6e: 13 05 65 e0  	addi	a0, a0, -506
80206b72: 23 30 a4 fa  	sd	a0, -96(s0)
80206b76: 09 45        	li	a0, 2
80206b78: 23 34 a4 fa  	sd	a0, -88(s0)
80206b7c: 13 05 84 f8  	addi	a0, s0, -120
80206b80: 23 38 a4 fa  	sd	a0, -80(s0)
80206b84: 85 44        	li	s1, 1
80206b86: 23 3c 94 fa  	sd	s1, -72(s0)
80206b8a: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206b8e <.Lpcrel_hi7>:
80206b8e: 17 35 00 00  	auipc	a0, 3
80206b92: 93 05 a5 bc  	addi	a1, a0, -1078
80206b96: 13 05 84 f9  	addi	a0, s0, -104
80206b9a: 13 06 04 fa  	addi	a2, s0, -96
80206b9e: 97 10 00 00  	auipc	ra, 1
80206ba2: e7 80 a0 a7  	jalr	-1414(ra)
80206ba6: 61 c5        	beqz	a0, 0x80206c6e <.Lpcrel_hi52+0x1a>

0000000080206ba8 <.Lpcrel_hi8>:
80206ba8: 17 35 00 00  	auipc	a0, 3
80206bac: 13 05 05 be  	addi	a0, a0, -1056

0000000080206bb0 <.Lpcrel_hi9>:
80206bb0: 97 35 00 00  	auipc	a1, 3
80206bb4: 93 86 85 c0  	addi	a3, a1, -1016

0000000080206bb8 <.Lpcrel_hi10>:
80206bb8: 97 35 00 00  	auipc	a1, 3
80206bbc: 13 87 05 c3  	addi	a4, a1, -976
80206bc0: 93 05 b0 02  	li	a1, 43
80206bc4: 13 06 04 fd  	addi	a2, s0, -48
80206bc8: 97 10 00 00  	auipc	ra, 1
80206bcc: e7 80 20 9f  	jalr	-1550(ra)
80206bd0: 00 00        	unimp	

0000000080206bd2 <.Lpcrel_hi3>:
80206bd2: 17 c5 01 00  	auipc	a0, 28
80206bd6: 0f 00 30 03  	fence	rw, rw
80206bda: 83 05 65 61  	lb	a1, 1558(a0)
80206bde: 0f 00 30 02  	fence	r, rw
80206be2: f5 d9        	beqz	a1, 0x80206bd6 <.Lpcrel_hi3+0x4>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206be4: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80206be6: 23 30 a4 f8  	sd	a0, -128(s0)
80206bea: 13 05 04 f8  	addi	a0, s0, -128
80206bee: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080206bf2 <.Lpcrel_hi47>:
80206bf2: 17 15 00 00  	auipc	a0, 1
80206bf6: 13 05 05 36  	addi	a0, a0, 864
80206bfa: 23 38 a4 f8  	sd	a0, -112(s0)
80206bfe: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80206c02: 23 3c 24 f9  	sd	s2, -104(s0)

0000000080206c06 <.Lpcrel_hi48>:
80206c06: 17 35 00 00  	auipc	a0, 3
80206c0a: 13 05 a5 ae  	addi	a0, a0, -1302
80206c0e: 23 30 a4 fa  	sd	a0, -96(s0)
80206c12: 09 45        	li	a0, 2
80206c14: 23 34 a4 fa  	sd	a0, -88(s0)
80206c18: 13 05 84 f8  	addi	a0, s0, -120
80206c1c: 23 38 a4 fa  	sd	a0, -80(s0)
80206c20: 85 44        	li	s1, 1
80206c22: 23 3c 94 fa  	sd	s1, -72(s0)
80206c26: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206c2a <.Lpcrel_hi49>:
80206c2a: 17 35 00 00  	auipc	a0, 3
80206c2e: 93 05 e5 b2  	addi	a1, a0, -1234
80206c32: 13 05 84 f9  	addi	a0, s0, -104
80206c36: 13 06 04 fa  	addi	a2, s0, -96
80206c3a: 97 10 00 00  	auipc	ra, 1
80206c3e: e7 80 e0 9d  	jalr	-1570(ra)
80206c42: 41 cd        	beqz	a0, 0x80206cda <.Lpcrel_hi16+0x1a>

0000000080206c44 <.Lpcrel_hi50>:
80206c44: 17 35 00 00  	auipc	a0, 3
80206c48: 13 05 45 b4  	addi	a0, a0, -1212

0000000080206c4c <.Lpcrel_hi51>:
80206c4c: 97 35 00 00  	auipc	a1, 3
80206c50: 93 86 c5 b6  	addi	a3, a1, -1172

0000000080206c54 <.Lpcrel_hi52>:
80206c54: 97 35 00 00  	auipc	a1, 3
80206c58: 13 87 45 b9  	addi	a4, a1, -1132
80206c5c: 93 05 b0 02  	li	a1, 43
80206c60: 13 06 04 fd  	addi	a2, s0, -48
80206c64: 97 10 00 00  	auipc	ra, 1
80206c68: e7 80 60 95  	jalr	-1706(ra)
80206c6c: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80206c6e: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206c72 <.Lpcrel_hi11>:
80206c72: 17 35 00 00  	auipc	a0, 3
80206c76: 13 05 e5 ab  	addi	a0, a0, -1346
80206c7a: 23 30 a4 fa  	sd	a0, -96(s0)
80206c7e: 23 34 94 fa  	sd	s1, -88(s0)

0000000080206c82 <.Lpcrel_hi12>:
80206c82: 17 35 00 00  	auipc	a0, 3
80206c86: 93 04 65 a5  	addi	s1, a0, -1450
80206c8a: 23 38 94 fa  	sd	s1, -80(s0)
80206c8e: 23 3c 04 fa  	sd	zero, -72(s0)
80206c92: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206c96 <.Lpcrel_hi13>:
80206c96: 17 35 00 00  	auipc	a0, 3
80206c9a: 93 05 25 ac  	addi	a1, a0, -1342
80206c9e: 13 05 84 f8  	addi	a0, s0, -120
80206ca2: 13 06 04 fa  	addi	a2, s0, -96
80206ca6: 97 10 00 00  	auipc	ra, 1
80206caa: e7 80 20 97  	jalr	-1678(ra)
80206cae: 69 c5        	beqz	a0, 0x80206d78 <.Lpcrel_hi58+0x1a>

0000000080206cb0 <.Lpcrel_hi14>:
80206cb0: 17 35 00 00  	auipc	a0, 3
80206cb4: 13 05 85 ad  	addi	a0, a0, -1320

0000000080206cb8 <.Lpcrel_hi15>:
80206cb8: 97 35 00 00  	auipc	a1, 3
80206cbc: 93 86 05 b0  	addi	a3, a1, -1280

0000000080206cc0 <.Lpcrel_hi16>:
80206cc0: 97 35 00 00  	auipc	a1, 3
80206cc4: 13 87 85 b2  	addi	a4, a1, -1240
80206cc8: 93 05 b0 02  	li	a1, 43
80206ccc: 13 06 04 fd  	addi	a2, s0, -48
80206cd0: 97 10 00 00  	auipc	ra, 1
80206cd4: e7 80 a0 8e  	jalr	-1814(ra)
80206cd8: 00 00        	unimp	
;         kvminithart();
80206cda: 97 00 00 00  	auipc	ra, 0
80206cde: e7 80 c0 cd  	jalr	-804(ra)
;         trapinithart();
80206ce2: 97 f0 ff ff  	auipc	ra, 1048575
80206ce6: e7 80 c0 a2  	jalr	-1492(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206cea: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80206cec: 93 15 85 00  	slli	a1, a0, 8
80206cf0: 37 26 00 0c  	lui	a2, 49154
80206cf4: b2 95        	add	a1, a1, a2
80206cf6: 13 06 20 40  	li	a2, 1026
80206cfa: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80206cfe: 36 05        	slli	a0, a0, 13
80206d00: b7 15 20 0c  	lui	a1, 49665
80206d04: 2e 95        	add	a0, a0, a1
80206d06: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80206d0a: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206d0e <.Lpcrel_hi53>:
80206d0e: 17 25 00 00  	auipc	a0, 2
80206d12: 13 05 a5 58  	addi	a0, a0, 1418
80206d16: 23 30 a4 fa  	sd	a0, -96(s0)
80206d1a: 23 34 94 fa  	sd	s1, -88(s0)

0000000080206d1e <.Lpcrel_hi54>:
80206d1e: 17 25 00 00  	auipc	a0, 2
80206d22: 13 05 25 56  	addi	a0, a0, 1378
80206d26: 23 38 a4 fa  	sd	a0, -80(s0)
80206d2a: 23 3c 04 fa  	sd	zero, -72(s0)
80206d2e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206d32 <.Lpcrel_hi55>:
80206d32: 17 35 00 00  	auipc	a0, 3
80206d36: 93 05 65 a2  	addi	a1, a0, -1498
80206d3a: 13 05 84 f8  	addi	a0, s0, -120
80206d3e: 13 06 04 fa  	addi	a2, s0, -96
80206d42: 97 10 00 00  	auipc	ra, 1
80206d46: e7 80 60 8d  	jalr	-1834(ra)
80206d4a: 63 0c 05 2c  	beqz	a0, 0x80207022 <.Lpcrel_hi46+0xa>

0000000080206d4e <.Lpcrel_hi56>:
80206d4e: 17 35 00 00  	auipc	a0, 3
80206d52: 13 05 a5 a3  	addi	a0, a0, -1478

0000000080206d56 <.Lpcrel_hi57>:
80206d56: 97 35 00 00  	auipc	a1, 3
80206d5a: 93 86 25 a6  	addi	a3, a1, -1438

0000000080206d5e <.Lpcrel_hi58>:
80206d5e: 97 35 00 00  	auipc	a1, 3
80206d62: 13 87 a5 a8  	addi	a4, a1, -1398
80206d66: 93 05 b0 02  	li	a1, 43
80206d6a: 13 06 04 fd  	addi	a2, s0, -48
80206d6e: 97 10 00 00  	auipc	ra, 1
80206d72: e7 80 c0 84  	jalr	-1972(ra)
80206d76: 00 00        	unimp	
80206d78: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
80206d7c: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080206d80 <.Lpcrel_hi17>:
80206d80: 17 35 00 00  	auipc	a0, 3
80206d84: 13 05 85 9c  	addi	a0, a0, -1592
80206d88: 23 30 a4 fa  	sd	a0, -96(s0)
80206d8c: 05 45        	li	a0, 1
80206d8e: 23 34 a4 fa  	sd	a0, -88(s0)
80206d92: 23 38 94 fa  	sd	s1, -80(s0)
80206d96: 23 3c 04 fa  	sd	zero, -72(s0)
80206d9a: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206d9e <.Lpcrel_hi18>:
80206d9e: 17 35 00 00  	auipc	a0, 3
80206da2: 93 05 a5 9b  	addi	a1, a0, -1606
80206da6: 13 05 84 f8  	addi	a0, s0, -120
80206daa: 13 06 04 fa  	addi	a2, s0, -96
80206dae: 97 10 00 00  	auipc	ra, 1
80206db2: e7 80 a0 86  	jalr	-1942(ra)
80206db6: 15 c5        	beqz	a0, 0x80206de2 <.Lpcrel_hi21+0x1a>

0000000080206db8 <.Lpcrel_hi19>:
80206db8: 17 35 00 00  	auipc	a0, 3
80206dbc: 13 05 05 9d  	addi	a0, a0, -1584

0000000080206dc0 <.Lpcrel_hi20>:
80206dc0: 97 35 00 00  	auipc	a1, 3
80206dc4: 93 86 85 9f  	addi	a3, a1, -1544

0000000080206dc8 <.Lpcrel_hi21>:
80206dc8: 97 35 00 00  	auipc	a1, 3
80206dcc: 13 87 05 a2  	addi	a4, a1, -1504
80206dd0: 93 05 b0 02  	li	a1, 43
80206dd4: 13 06 04 fd  	addi	a2, s0, -48
80206dd8: 97 00 00 00  	auipc	ra, 0
80206ddc: e7 80 20 7e  	jalr	2018(ra)
80206de0: 00 00        	unimp	
;         kinit(); 			// 初始化物理页分配器
80206de2: 97 f0 ff ff  	auipc	ra, 1048575
80206de6: e7 80 e0 13  	jalr	318(ra)
;         kvminit(); 			// 创建内核页表
80206dea: 97 f0 ff ff  	auipc	ra, 1048575
80206dee: e7 80 e0 5b  	jalr	1470(ra)
;         kvminithart(); 		// 打开分页管理
80206df2: 97 00 00 00  	auipc	ra, 0
80206df6: e7 80 40 bc  	jalr	-1084(ra)

0000000080206dfa <.Lpcrel_hi22>:
;         self.0.call_once(builder)
80206dfa: 17 45 01 00  	auipc	a0, 20
80206dfe: 13 05 e5 23  	addi	a0, a0, 574
80206e02: 97 b0 ff ff  	auipc	ra, 1048571
80206e06: e7 80 e0 1f  	jalr	510(ra)
80206e0a: 13 05 05 13  	addi	a0, a0, 304
80206e0e: 93 05 00 04  	li	a1, 64
80206e12: 37 06 00 04  	lui	a2, 16384
80206e16: 75 36        	addiw	a2, a2, -3
80206e18: 32 06        	slli	a2, a2, 12
80206e1a: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80206e1c: 10 e1        	sd	a2, 0(a0)
80206e1e: 13 05 85 17  	addi	a0, a0, 376
80206e22: fd 15        	addi	a1, a1, -1
80206e24: 36 96        	add	a2, a2, a3
80206e26: fd f9        	bnez	a1, 0x80206e1c <.Lpcrel_hi22+0x22>
80206e28: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80206e2c: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206e30 <.Lpcrel_hi23>:
80206e30: 17 25 00 00  	auipc	a0, 2
80206e34: 13 05 05 2c  	addi	a0, a0, 704
80206e38: 23 30 a4 fa  	sd	a0, -96(s0)
80206e3c: 85 44        	li	s1, 1
80206e3e: 23 34 94 fa  	sd	s1, -88(s0)

0000000080206e42 <.Lpcrel_hi24>:
80206e42: 17 25 00 00  	auipc	a0, 2
80206e46: 13 05 e5 2b  	addi	a0, a0, 702
80206e4a: 23 38 a4 fa  	sd	a0, -80(s0)
80206e4e: 23 3c 04 fa  	sd	zero, -72(s0)
80206e52: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206e56 <.Lpcrel_hi25>:
80206e56: 17 35 00 00  	auipc	a0, 3
80206e5a: 93 05 25 90  	addi	a1, a0, -1790
80206e5e: 13 05 84 f8  	addi	a0, s0, -120
80206e62: 13 06 04 fa  	addi	a2, s0, -96
80206e66: 97 00 00 00  	auipc	ra, 0
80206e6a: e7 80 20 7b  	jalr	1970(ra)
80206e6e: 15 c5        	beqz	a0, 0x80206e9a <.Lpcrel_hi28+0x1a>

0000000080206e70 <.Lpcrel_hi26>:
80206e70: 17 35 00 00  	auipc	a0, 3
80206e74: 13 05 85 91  	addi	a0, a0, -1768

0000000080206e78 <.Lpcrel_hi27>:
80206e78: 97 35 00 00  	auipc	a1, 3
80206e7c: 93 86 05 94  	addi	a3, a1, -1728

0000000080206e80 <.Lpcrel_hi28>:
80206e80: 97 35 00 00  	auipc	a1, 3
80206e84: 13 87 85 96  	addi	a4, a1, -1688
80206e88: 93 05 b0 02  	li	a1, 43
80206e8c: 13 06 04 fd  	addi	a2, s0, -48
80206e90: 97 00 00 00  	auipc	ra, 0
80206e94: e7 80 a0 72  	jalr	1834(ra)
80206e98: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80206e9a: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206e9e <.Lpcrel_hi29>:
80206e9e: 17 25 00 00  	auipc	a0, 2
80206ea2: 13 05 25 38  	addi	a0, a0, 898
80206ea6: 23 30 a4 fa  	sd	a0, -96(s0)
80206eaa: 23 34 94 fa  	sd	s1, -88(s0)

0000000080206eae <.Lpcrel_hi30>:
80206eae: 17 25 00 00  	auipc	a0, 2
80206eb2: 13 05 25 38  	addi	a0, a0, 898
80206eb6: 23 38 a4 fa  	sd	a0, -80(s0)
80206eba: 23 3c 04 fa  	sd	zero, -72(s0)
80206ebe: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206ec2 <.Lpcrel_hi31>:
80206ec2: 17 35 00 00  	auipc	a0, 3
80206ec6: 93 05 65 89  	addi	a1, a0, -1898
80206eca: 13 05 84 f8  	addi	a0, s0, -120
80206ece: 13 06 04 fa  	addi	a2, s0, -96
80206ed2: 97 00 00 00  	auipc	ra, 0
80206ed6: e7 80 60 74  	jalr	1862(ra)
80206eda: 15 c5        	beqz	a0, 0x80206f06 <.Lpcrel_hi34+0x1a>

0000000080206edc <.Lpcrel_hi32>:
80206edc: 17 35 00 00  	auipc	a0, 3
80206ee0: 13 05 c5 8a  	addi	a0, a0, -1876

0000000080206ee4 <.Lpcrel_hi33>:
80206ee4: 97 35 00 00  	auipc	a1, 3
80206ee8: 93 86 45 8d  	addi	a3, a1, -1836

0000000080206eec <.Lpcrel_hi34>:
80206eec: 97 35 00 00  	auipc	a1, 3
80206ef0: 13 87 c5 8f  	addi	a4, a1, -1796
80206ef4: 93 05 b0 02  	li	a1, 43
80206ef8: 13 06 04 fd  	addi	a2, s0, -48
80206efc: 97 00 00 00  	auipc	ra, 0
80206f00: e7 80 e0 6b  	jalr	1726(ra)
80206f04: 00 00        	unimp	
;         trapinithart(); 	// 设置中断向量
80206f06: 97 f0 ff ff  	auipc	ra, 1048575
80206f0a: e7 80 80 80  	jalr	-2040(ra)
80206f0e: 37 05 00 0c  	lui	a0, 49152
80206f12: 85 49        	li	s3, 1
80206f14: 23 24 35 03  	sw	s3, 40(a0)
80206f18: 23 22 35 01  	sw	s3, 4(a0)
;     Stdout.write_fmt(args).unwrap();
80206f1c: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206f20 <.Lpcrel_hi35>:
80206f20: 17 25 00 00  	auipc	a0, 2
80206f24: 13 05 05 35  	addi	a0, a0, 848
80206f28: 23 30 a4 fa  	sd	a0, -96(s0)
80206f2c: 23 34 34 fb  	sd	s3, -88(s0)

0000000080206f30 <.Lpcrel_hi36>:
80206f30: 17 25 00 00  	auipc	a0, 2
80206f34: 93 04 05 35  	addi	s1, a0, 848
80206f38: 23 38 94 fa  	sd	s1, -80(s0)
80206f3c: 23 3c 04 fa  	sd	zero, -72(s0)
80206f40: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206f44 <.Lpcrel_hi37>:
80206f44: 17 35 00 00  	auipc	a0, 3
80206f48: 93 05 45 81  	addi	a1, a0, -2028
80206f4c: 13 05 84 f8  	addi	a0, s0, -120
80206f50: 13 06 04 fa  	addi	a2, s0, -96
80206f54: 97 00 00 00  	auipc	ra, 0
80206f58: e7 80 40 6c  	jalr	1732(ra)
80206f5c: 15 c5        	beqz	a0, 0x80206f88 <.Lpcrel_hi40+0x1a>

0000000080206f5e <.Lpcrel_hi38>:
80206f5e: 17 35 00 00  	auipc	a0, 3
80206f62: 13 05 a5 82  	addi	a0, a0, -2006

0000000080206f66 <.Lpcrel_hi39>:
80206f66: 97 35 00 00  	auipc	a1, 3
80206f6a: 93 86 25 85  	addi	a3, a1, -1966

0000000080206f6e <.Lpcrel_hi40>:
80206f6e: 97 35 00 00  	auipc	a1, 3
80206f72: 13 87 a5 87  	addi	a4, a1, -1926
80206f76: 93 05 b0 02  	li	a1, 43
80206f7a: 13 06 04 fd  	addi	a2, s0, -48
80206f7e: 97 00 00 00  	auipc	ra, 0
80206f82: e7 80 c0 63  	jalr	1596(ra)
80206f86: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206f88: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80206f8a: 93 15 85 00  	slli	a1, a0, 8
80206f8e: 37 26 00 0c  	lui	a2, 49154
80206f92: b2 95        	add	a1, a1, a2
80206f94: 13 06 20 40  	li	a2, 1026
80206f98: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80206f9c: 36 05        	slli	a0, a0, 13
80206f9e: b7 15 20 0c  	lui	a1, 49665
80206fa2: 2e 95        	add	a0, a0, a1
80206fa4: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80206fa8: 23 34 24 f9  	sd	s2, -120(s0)

0000000080206fac <.Lpcrel_hi41>:
80206fac: 17 25 00 00  	auipc	a0, 2
80206fb0: 13 05 c5 2e  	addi	a0, a0, 748
80206fb4: 23 30 a4 fa  	sd	a0, -96(s0)
80206fb8: 23 34 34 fb  	sd	s3, -88(s0)
80206fbc: 23 38 94 fa  	sd	s1, -80(s0)
80206fc0: 23 3c 04 fa  	sd	zero, -72(s0)
80206fc4: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206fc8 <.Lpcrel_hi42>:
80206fc8: 17 25 00 00  	auipc	a0, 2
80206fcc: 93 05 05 79  	addi	a1, a0, 1936
80206fd0: 13 05 84 f8  	addi	a0, s0, -120
80206fd4: 13 06 04 fa  	addi	a2, s0, -96
80206fd8: 97 00 00 00  	auipc	ra, 0
80206fdc: e7 80 00 64  	jalr	1600(ra)
80206fe0: 15 c5        	beqz	a0, 0x8020700c <.Lpcrel_hi45+0x1a>

0000000080206fe2 <.Lpcrel_hi43>:
80206fe2: 17 25 00 00  	auipc	a0, 2
80206fe6: 13 05 65 7a  	addi	a0, a0, 1958

0000000080206fea <.Lpcrel_hi44>:
80206fea: 97 25 00 00  	auipc	a1, 2
80206fee: 93 86 e5 7c  	addi	a3, a1, 1998

0000000080206ff2 <.Lpcrel_hi45>:
80206ff2: 97 25 00 00  	auipc	a1, 2
80206ff6: 13 87 65 7f  	addi	a4, a1, 2038
80206ffa: 93 05 b0 02  	li	a1, 43
80206ffe: 13 06 04 fd  	addi	a2, s0, -48
80207002: 97 00 00 00  	auipc	ra, 0
80207006: e7 80 80 5b  	jalr	1464(ra)
8020700a: 00 00        	unimp	
;         userinit(); 		// 启动第 0 个进程
8020700c: 97 c0 ff ff  	auipc	ra, 1048572
80207010: e7 80 80 c0  	jalr	-1016(ra)
80207014: 0f 00 10 03  	fence	rw, w

0000000080207018 <.Lpcrel_hi46>:
80207018: 17 c5 01 00  	auipc	a0, 28
8020701c: 85 45        	li	a1, 1
8020701e: 23 08 b5 1c  	sb	a1, 464(a0)
;     scheduler();
80207022: 97 c0 ff ff  	auipc	ra, 1048572
80207026: e7 80 c0 d6  	jalr	-660(ra)
;     panic!("Shutdown!");
8020702a: 00 00        	unimp	

000000008020702c <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h10b932b94db4976aE.llvm.17003731642193573903>:
8020702c: 41 11        	addi	sp, sp, -16
8020702e: 06 e4        	sd	ra, 8(sp)
80207030: 22 e0        	sd	s0, 0(sp)
80207032: 00 08        	addi	s0, sp, 16
80207034: a2 60        	ld	ra, 8(sp)
80207036: 02 64        	ld	s0, 0(sp)
80207038: 41 01        	addi	sp, sp, 16
8020703a: 82 80        	ret

000000008020703c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903>:
8020703c: 01 11        	addi	sp, sp, -32
8020703e: 06 ec        	sd	ra, 24(sp)
80207040: 22 e8        	sd	s0, 16(sp)
80207042: 00 10        	addi	s0, sp, 32
80207044: 1b 85 05 00  	sext.w	a0, a1
80207048: 13 06 00 08  	li	a2, 128
8020704c: 23 26 04 fe  	sw	zero, -20(s0)
80207050: 63 76 c5 00  	bgeu	a0, a2, 0x8020705c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x20>
80207054: 23 06 b4 fe  	sb	a1, -20(s0)
80207058: 05 47        	li	a4, 1
8020705a: 71 a0        	j	0x802070e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xaa>
8020705c: 1b d5 b5 00  	srliw	a0, a1, 11
80207060: 19 ed        	bnez	a0, 0x8020707e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x42>
80207062: 13 d5 65 00  	srli	a0, a1, 6
80207066: 13 65 05 0c  	ori	a0, a0, 192
8020706a: 23 06 a4 fe  	sb	a0, -20(s0)
8020706e: 13 f5 f5 03  	andi	a0, a1, 63
80207072: 13 05 05 08  	addi	a0, a0, 128
80207076: a3 06 a4 fe  	sb	a0, -19(s0)
8020707a: 09 47        	li	a4, 2
8020707c: ad a0        	j	0x802070e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xaa>
8020707e: 1b d5 05 01  	srliw	a0, a1, 16
80207082: 15 e5        	bnez	a0, 0x802070ae <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x72>
80207084: 13 d5 c5 00  	srli	a0, a1, 12
80207088: 13 65 05 0e  	ori	a0, a0, 224
8020708c: 23 06 a4 fe  	sb	a0, -20(s0)
80207090: 13 95 45 03  	slli	a0, a1, 52
80207094: 69 91        	srli	a0, a0, 58
80207096: 13 05 05 08  	addi	a0, a0, 128
8020709a: a3 06 a4 fe  	sb	a0, -19(s0)
8020709e: 13 f5 f5 03  	andi	a0, a1, 63
802070a2: 13 05 05 08  	addi	a0, a0, 128
802070a6: 23 07 a4 fe  	sb	a0, -18(s0)
802070aa: 0d 47        	li	a4, 3
802070ac: 2d a8        	j	0x802070e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xaa>
802070ae: 13 95 b5 02  	slli	a0, a1, 43
802070b2: 75 91        	srli	a0, a0, 61
802070b4: 13 05 05 0f  	addi	a0, a0, 240
802070b8: 23 06 a4 fe  	sb	a0, -20(s0)
802070bc: 13 95 e5 02  	slli	a0, a1, 46
802070c0: 69 91        	srli	a0, a0, 58
802070c2: 13 05 05 08  	addi	a0, a0, 128
802070c6: a3 06 a4 fe  	sb	a0, -19(s0)
802070ca: 13 95 45 03  	slli	a0, a1, 52
802070ce: 69 91        	srli	a0, a0, 58
802070d0: 13 05 05 08  	addi	a0, a0, 128
802070d4: 23 07 a4 fe  	sb	a0, -18(s0)
802070d8: 13 f5 f5 03  	andi	a0, a1, 63
802070dc: 13 05 05 08  	addi	a0, a0, 128
802070e0: a3 07 a4 fe  	sb	a0, -17(s0)
802070e4: 11 47        	li	a4, 4
802070e6: 93 06 c4 fe  	addi	a3, s0, -20
802070ea: 36 97        	add	a4, a4, a3
802070ec: 13 03 f0 0d  	li	t1, 223
802070f0: 13 08 00 0f  	li	a6, 240
802070f4: b7 02 11 00  	lui	t0, 272
802070f8: 85 48        	li	a7, 1
802070fa: 01 a8        	j	0x8020710a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xce>
802070fc: 85 06        	addi	a3, a3, 1
;         asm!(
802070fe: 81 45        	li	a1, 0
80207100: 01 46        	li	a2, 0
80207102: 73 00 00 00  	ecall	
80207106: 63 8f e6 04  	beq	a3, a4, 0x80207164 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x128>
8020710a: 83 85 06 00  	lb	a1, 0(a3)
8020710e: 13 f5 f5 0f  	andi	a0, a1, 255
80207112: e3 d5 05 fe  	bgez	a1, 0x802070fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xc0>
80207116: 03 c6 16 00  	lbu	a2, 1(a3)
8020711a: 93 75 f5 01  	andi	a1, a0, 31
8020711e: 13 76 f6 03  	andi	a2, a2, 63
80207122: 63 77 a3 02  	bgeu	t1, a0, 0x80207150 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x114>
80207126: 83 c7 26 00  	lbu	a5, 2(a3)
8020712a: 1a 06        	slli	a2, a2, 6
8020712c: 93 f7 f7 03  	andi	a5, a5, 63
80207130: 5d 8e        	or	a2, a2, a5
80207132: 63 64 05 03  	bltu	a0, a6, 0x8020715a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x11e>
80207136: 03 c5 36 00  	lbu	a0, 3(a3)
8020713a: f6 15        	slli	a1, a1, 61
8020713c: ad 91        	srli	a1, a1, 43
8020713e: 1a 06        	slli	a2, a2, 6
80207140: 13 75 f5 03  	andi	a0, a0, 63
80207144: 51 8d        	or	a0, a0, a2
80207146: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80207148: 63 0e 55 00  	beq	a0, t0, 0x80207164 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0x128>
8020714c: 91 06        	addi	a3, a3, 4
8020714e: 45 bf        	j	0x802070fe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xc2>
80207150: 89 06        	addi	a3, a3, 2
80207152: 13 95 65 00  	slli	a0, a1, 6
80207156: 51 8d        	or	a0, a0, a2
80207158: 5d b7        	j	0x802070fe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xc2>
8020715a: 8d 06        	addi	a3, a3, 3
8020715c: 13 95 c5 00  	slli	a0, a1, 12
80207160: 51 8d        	or	a0, a0, a2
80207162: 71 bf        	j	0x802070fe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.17003731642193573903+0xc2>
80207164: 01 45        	li	a0, 0
80207166: e2 60        	ld	ra, 24(sp)
80207168: 42 64        	ld	s0, 16(sp)
8020716a: 05 61        	addi	sp, sp, 32
8020716c: 82 80        	ret

000000008020716e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hcc8962fd8c530725E.llvm.17003731642193573903>:
8020716e: 5d 71        	addi	sp, sp, -80
80207170: 86 e4        	sd	ra, 72(sp)
80207172: a2 e0        	sd	s0, 64(sp)
80207174: 80 08        	addi	s0, sp, 80
80207176: 90 75        	ld	a2, 40(a1)
80207178: 94 71        	ld	a3, 32(a1)
8020717a: 98 6d        	ld	a4, 24(a1)
8020717c: 23 34 c4 fe  	sd	a2, -24(s0)
80207180: 23 30 d4 fe  	sd	a3, -32(s0)
80207184: 23 3c e4 fc  	sd	a4, -40(s0)
80207188: 90 69        	ld	a2, 16(a1)
8020718a: 94 65        	ld	a3, 8(a1)
8020718c: 8c 61        	ld	a1, 0(a1)
8020718e: 08 61        	ld	a0, 0(a0)
80207190: 23 38 c4 fc  	sd	a2, -48(s0)
80207194: 23 34 d4 fc  	sd	a3, -56(s0)
80207198: 23 30 b4 fc  	sd	a1, -64(s0)
8020719c: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802071a0 <.Lpcrel_hi0>:
802071a0: 17 25 00 00  	auipc	a0, 2
802071a4: 93 05 85 5b  	addi	a1, a0, 1464
802071a8: 13 05 84 fb  	addi	a0, s0, -72
802071ac: 13 06 04 fc  	addi	a2, s0, -64
802071b0: 97 00 00 00  	auipc	ra, 0
802071b4: e7 80 80 46  	jalr	1128(ra)
802071b8: a6 60        	ld	ra, 72(sp)
802071ba: 06 64        	ld	s0, 64(sp)
802071bc: 61 61        	addi	sp, sp, 80
802071be: 82 80        	ret

00000000802071c0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903>:
802071c0: 41 11        	addi	sp, sp, -16
802071c2: 06 e4        	sd	ra, 8(sp)
802071c4: 22 e0        	sd	s0, 0(sp)
802071c6: 00 08        	addi	s0, sp, 16
802071c8: 41 c2        	beqz	a2, 0x80207248 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x88>
802071ca: ae 86        	mv	a3, a1
802071cc: 33 87 c5 00  	add	a4, a1, a2
802071d0: 13 03 f0 0d  	li	t1, 223
802071d4: 13 08 00 0f  	li	a6, 240
802071d8: b7 02 11 00  	lui	t0, 272
802071dc: 85 48        	li	a7, 1
802071de: 01 a8        	j	0x802071ee <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x2e>
802071e0: 85 06        	addi	a3, a3, 1
;         asm!(
802071e2: 81 45        	li	a1, 0
802071e4: 01 46        	li	a2, 0
802071e6: 73 00 00 00  	ecall	
802071ea: 63 8f e6 04  	beq	a3, a4, 0x80207248 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x88>
802071ee: 83 85 06 00  	lb	a1, 0(a3)
802071f2: 13 f5 f5 0f  	andi	a0, a1, 255
802071f6: e3 d5 05 fe  	bgez	a1, 0x802071e0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x20>
802071fa: 03 c6 16 00  	lbu	a2, 1(a3)
802071fe: 93 75 f5 01  	andi	a1, a0, 31
80207202: 13 76 f6 03  	andi	a2, a2, 63
80207206: 63 77 a3 02  	bgeu	t1, a0, 0x80207234 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x74>
8020720a: 83 c7 26 00  	lbu	a5, 2(a3)
8020720e: 1a 06        	slli	a2, a2, 6
80207210: 93 f7 f7 03  	andi	a5, a5, 63
80207214: 5d 8e        	or	a2, a2, a5
80207216: 63 64 05 03  	bltu	a0, a6, 0x8020723e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x7e>
8020721a: 03 c5 36 00  	lbu	a0, 3(a3)
8020721e: f6 15        	slli	a1, a1, 61
80207220: ad 91        	srli	a1, a1, 43
80207222: 1a 06        	slli	a2, a2, 6
80207224: 13 75 f5 03  	andi	a0, a0, 63
80207228: 51 8d        	or	a0, a0, a2
8020722a: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020722c: 63 0e 55 00  	beq	a0, t0, 0x80207248 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x88>
80207230: 91 06        	addi	a3, a3, 4
80207232: 45 bf        	j	0x802071e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x22>
80207234: 89 06        	addi	a3, a3, 2
80207236: 13 95 65 00  	slli	a0, a1, 6
8020723a: 51 8d        	or	a0, a0, a2
8020723c: 5d b7        	j	0x802071e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x22>
8020723e: 8d 06        	addi	a3, a3, 3
80207240: 13 95 c5 00  	slli	a0, a1, 12
80207244: 51 8d        	or	a0, a0, a2
80207246: 71 bf        	j	0x802071e2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.17003731642193573903+0x22>
80207248: 01 45        	li	a0, 0
8020724a: a2 60        	ld	ra, 8(sp)
8020724c: 02 64        	ld	s0, 0(sp)
8020724e: 41 01        	addi	sp, sp, 16
80207250: 82 80        	ret
80207252: 00 00        	unimp	

0000000080207254 <switch>:
80207254: 23 30 15 00  	sd	ra, 0(a0)
80207258: 23 34 25 00  	sd	sp, 8(a0)
8020725c: 00 e9        	sd	s0, 16(a0)
8020725e: 04 ed        	sd	s1, 24(a0)
80207260: 23 30 25 03  	sd	s2, 32(a0)
80207264: 23 34 35 03  	sd	s3, 40(a0)
80207268: 23 38 45 03  	sd	s4, 48(a0)
8020726c: 23 3c 55 03  	sd	s5, 56(a0)
80207270: 23 30 65 05  	sd	s6, 64(a0)
80207274: 23 34 75 05  	sd	s7, 72(a0)
80207278: 23 38 85 05  	sd	s8, 80(a0)
8020727c: 23 3c 95 05  	sd	s9, 88(a0)
80207280: 23 30 a5 07  	sd	s10, 96(a0)
80207284: 23 34 b5 07  	sd	s11, 104(a0)
80207288: 83 b0 05 00  	ld	ra, 0(a1)
8020728c: 03 b1 85 00  	ld	sp, 8(a1)
80207290: 80 69        	ld	s0, 16(a1)
80207292: 84 6d        	ld	s1, 24(a1)
80207294: 03 b9 05 02  	ld	s2, 32(a1)
80207298: 83 b9 85 02  	ld	s3, 40(a1)
8020729c: 03 ba 05 03  	ld	s4, 48(a1)
802072a0: 83 ba 85 03  	ld	s5, 56(a1)
802072a4: 03 bb 05 04  	ld	s6, 64(a1)
802072a8: 83 bb 85 04  	ld	s7, 72(a1)
802072ac: 03 bc 05 05  	ld	s8, 80(a1)
802072b0: 83 bc 85 05  	ld	s9, 88(a1)
802072b4: 03 bd 05 06  	ld	s10, 96(a1)
802072b8: 83 bd 85 06  	ld	s11, 104(a1)
802072bc: 82 80        	ret

00000000802072be <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h30a6860acd8aa9f2E>:
802072be: 41 11        	addi	sp, sp, -16
802072c0: 06 e4        	sd	ra, 8(sp)
802072c2: 22 e0        	sd	s0, 0(sp)
802072c4: 00 08        	addi	s0, sp, 16
802072c6: 08 61        	ld	a0, 0(a0)
802072c8: a2 60        	ld	ra, 8(sp)
802072ca: 02 64        	ld	s0, 0(sp)
802072cc: 41 01        	addi	sp, sp, 16
802072ce: 17 03 00 00  	auipc	t1, 0
802072d2: 67 00 83 33  	jr	824(t1)

00000000802072d6 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h52059c8ef346db23E>:
802072d6: 41 11        	addi	sp, sp, -16
802072d8: 06 e4        	sd	ra, 8(sp)
802072da: 22 e0        	sd	s0, 0(sp)
802072dc: 00 08        	addi	s0, sp, 16
802072de: 10 61        	ld	a2, 0(a0)
802072e0: 14 65        	ld	a3, 8(a0)
802072e2: 2e 87        	mv	a4, a1
802072e4: 32 85        	mv	a0, a2
802072e6: b6 85        	mv	a1, a3
802072e8: 3a 86        	mv	a2, a4
802072ea: a2 60        	ld	ra, 8(sp)
802072ec: 02 64        	ld	s0, 0(sp)
802072ee: 41 01        	addi	sp, sp, 16
802072f0: 17 13 00 00  	auipc	t1, 1
802072f4: 67 00 43 95  	jr	-1708(t1)

00000000802072f8 <usertrapret>:
; fn forkret() {
802072f8: 41 11        	addi	sp, sp, -16
; }
802072fa: 06 e4        	sd	ra, 8(sp)
802072fc: 22 e0        	sd	s0, 0(sp)
802072fe: 00 08        	addi	s0, sp, 16
80207300: a2 60        	ld	ra, 8(sp)
80207302: 02 64        	ld	s0, 0(sp)
80207304: 41 01        	addi	sp, sp, 16
80207306: 82 80        	ret

0000000080207308 <__rust_dealloc>:
80207308: 17 e3 ff ff  	auipc	t1, 1048574
8020730c: 67 00 43 4e  	jr	1252(t1)

0000000080207310 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80207310: 41 11        	addi	sp, sp, -16
80207312: 06 e4        	sd	ra, 8(sp)
80207314: 22 e0        	sd	s0, 0(sp)
80207316: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80207318: 83 45 85 00  	lbu	a1, 8(a0)
8020731c: 91 c5        	beqz	a1, 0x80207328 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
8020731e: 08 61        	ld	a0, 0(a0)
80207320: 0f 00 10 03  	fence	rw, w
80207324: 8d 45        	li	a1, 3
80207326: 0c e1        	sd	a1, 0(a0)
;     }
80207328: a2 60        	ld	ra, 8(sp)
8020732a: 02 64        	ld	s0, 0(sp)
8020732c: 41 01        	addi	sp, sp, 16
8020732e: 82 80        	ret

0000000080207330 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80207330: 41 11        	addi	sp, sp, -16
80207332: 06 e4        	sd	ra, 8(sp)
80207334: 22 e0        	sd	s0, 0(sp)
80207336: 00 08        	addi	s0, sp, 16
80207338: 89 47        	li	a5, 2
8020733a: 05 47        	li	a4, 1
8020733c: 63 fa f6 0a  	bgeu	a3, a5, 0x802073f0 <.Lpcrel_hi33+0x8e>
80207340: 63 78 c7 12  	bgeu	a4, a2, 0x80207470 <.Lpcrel_hi31+0x24>
80207344: 21 47        	li	a4, 8
80207346: 63 79 c7 12  	bgeu	a4, a2, 0x80207478 <.Lpcrel_hi31+0x2c>
8020734a: 63 0a 06 12  	beqz	a2, 0x8020747e <.Lpcrel_hi31+0x32>

000000008020734e <.Lpcrel_hi32>:
8020734e: 17 37 00 00  	auipc	a4, 3
80207352: 03 37 a7 d4  	ld	a4, -694(a4)
80207356: b3 07 c0 40  	neg	a5, a2
8020735a: f1 8f        	and	a5, a5, a2
8020735c: 33 87 e7 02  	mul	a4, a5, a4
80207360: 69 93        	srli	a4, a4, 58

0000000080207362 <.Lpcrel_hi33>:
80207362: 97 27 00 00  	auipc	a5, 2
80207366: 93 87 e7 71  	addi	a5, a5, 1822
8020736a: 3e 97        	add	a4, a4, a5
8020736c: 03 43 07 00  	lbu	t1, 0(a4)
80207370: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80207372: 63 6b 68 10  	bltu	a6, t1, 0x80207488 <.Lpcrel_hi34>
80207376: 13 17 33 00  	slli	a4, t1, 3
8020737a: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
8020737c: 1c 63        	ld	a5, 0(a4)
8020737e: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80207380: 0c e3        	sd	a1, 0(a4)
80207382: 85 48        	li	a7, 1
80207384: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80207386: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
8020738a: 93 13 33 00  	slli	t2, t1, 3
8020738e: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80207390: 33 ce e2 00  	xor	t3, t0, a4
80207394: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
80207396: 9d cd        	beqz	a1, 0x802073d4 <.Lpcrel_hi33+0x72>
80207398: ae 87        	mv	a5, a1
8020739a: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
8020739c: 8c 61        	ld	a1, 0(a1)
8020739e: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
802073a0: e3 1b fe fe  	bne	t3, a5, 0x80207396 <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
802073a4: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
802073a8: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
802073ac: 81 c5        	beqz	a1, 0x802073b4 <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
802073ae: 8c 61        	ld	a1, 0(a1)
802073b0: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
802073b4: 63 06 03 0f  	beq	t1, a6, 0x802074a0 <.Lpcrel_hi35>
802073b8: 63 e3 c2 01  	bltu	t0, t3, 0x802073be <.Lpcrel_hi33+0x5c>
802073bc: f2 82        	mv	t0, t3
802073be: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
802073c0: 93 15 33 00  	slli	a1, t1, 3
802073c4: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
802073c6: 98 61        	ld	a4, 0(a1)
802073c8: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
802073cc: 23 b0 55 00  	sd	t0, 0(a1)
802073d0: 96 85        	mv	a1, t0
802073d2: 55 bf        	j	0x80207386 <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
802073d4: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
802073d8: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
802073dc: 95 8d        	sub	a1, a1, a3
802073de: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
802073e2: 11 8f        	sub	a4, a4, a2
802073e4: 23 34 e5 10  	sd	a4, 264(a0)
;     }
802073e8: a2 60        	ld	ra, 8(sp)
802073ea: 02 64        	ld	s0, 0(sp)
802073ec: 41 01        	addi	sp, sp, 16
802073ee: 82 80        	ret
802073f0: 13 87 f6 ff  	addi	a4, a3, -1
802073f4: 93 57 17 00  	srli	a5, a4, 1
802073f8: 5d 8f        	or	a4, a4, a5
802073fa: 93 57 27 00  	srli	a5, a4, 2
802073fe: 5d 8f        	or	a4, a4, a5
80207400: 93 57 47 00  	srli	a5, a4, 4
80207404: 5d 8f        	or	a4, a4, a5
80207406: 93 57 87 00  	srli	a5, a4, 8
8020740a: 5d 8f        	or	a4, a4, a5
8020740c: 93 57 07 01  	srli	a5, a4, 16
80207410: 5d 8f        	or	a4, a4, a5
80207412: 93 57 07 02  	srli	a5, a4, 32
80207416: 5d 8f        	or	a4, a4, a5
80207418: 93 48 f7 ff  	not	a7, a4

000000008020741c <.Lpcrel_hi28>:
8020741c: 97 37 00 00  	auipc	a5, 3
80207420: 03 b8 c7 c5  	ld	a6, -932(a5)

0000000080207424 <.Lpcrel_hi29>:
80207424: 97 37 00 00  	auipc	a5, 3
80207428: 83 b7 c7 c5  	ld	a5, -932(a5)
8020742c: 13 d7 18 00  	srli	a4, a7, 1
80207430: 33 77 07 01  	and	a4, a4, a6
80207434: 33 87 e8 40  	sub	a4, a7, a4
80207438: 33 78 f7 00  	and	a6, a4, a5
8020743c: 09 83        	srli	a4, a4, 2
8020743e: 7d 8f        	and	a4, a4, a5
80207440: b3 08 e8 00  	add	a7, a6, a4

0000000080207444 <.Lpcrel_hi30>:
80207444: 97 37 00 00  	auipc	a5, 3
80207448: 03 b8 47 c4  	ld	a6, -956(a5)

000000008020744c <.Lpcrel_hi31>:
8020744c: 97 37 00 00  	auipc	a5, 3
80207450: 83 b7 47 c4  	ld	a5, -956(a5)
80207454: 13 d7 48 00  	srli	a4, a7, 4
80207458: 46 97        	add	a4, a4, a7
8020745a: 33 77 07 01  	and	a4, a4, a6
8020745e: 33 07 f7 02  	mul	a4, a4, a5
80207462: 61 93        	srli	a4, a4, 56
80207464: fd 57        	li	a5, -1
80207466: 33 d7 e7 00  	srl	a4, a5, a4
8020746a: 05 07        	addi	a4, a4, 1
8020746c: e3 6c c7 ec  	bltu	a4, a2, 0x80207344 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
80207470: 3a 86        	mv	a2, a4
80207472: 21 47        	li	a4, 8
80207474: e3 6b c7 ec  	bltu	a4, a2, 0x8020734a <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
80207478: 21 46        	li	a2, 8
8020747a: e3 1a 06 ec  	bnez	a2, 0x8020734e <.Lpcrel_hi32>
8020747e: 13 03 00 04  	li	t1, 64
80207482: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80207484: e3 79 68 ee  	bgeu	a6, t1, 0x80207376 <.Lpcrel_hi33+0x14>

0000000080207488 <.Lpcrel_hi34>:
80207488: 17 25 00 00  	auipc	a0, 2
8020748c: 13 06 85 6a  	addi	a2, a0, 1704
80207490: 93 05 00 02  	li	a1, 32
80207494: 1a 85        	mv	a0, t1
80207496: 97 00 00 00  	auipc	ra, 0
8020749a: e7 80 40 0e  	jalr	228(ra)
8020749e: 00 00        	unimp	

00000000802074a0 <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
802074a0: 17 25 00 00  	auipc	a0, 2
802074a4: 13 06 85 6a  	addi	a2, a0, 1704
802074a8: 13 05 00 02  	li	a0, 32
802074ac: 93 05 00 02  	li	a1, 32
802074b0: 97 00 00 00  	auipc	ra, 0
802074b4: e7 80 a0 0c  	jalr	202(ra)
802074b8: 00 00        	unimp	

00000000802074ba <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
802074ba: 01 11        	addi	sp, sp, -32
802074bc: 06 ec        	sd	ra, 24(sp)
802074be: 22 e8        	sd	s0, 16(sp)
802074c0: 26 e4        	sd	s1, 8(sp)
802074c2: 4a e0        	sd	s2, 0(sp)
802074c4: 00 10        	addi	s0, sp, 32
802074c6: aa 84        	mv	s1, a0
802074c8: 05 45        	li	a0, 1
802074ca: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
802074ce: 88 64        	ld	a0, 8(s1)
802074d0: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802074d4: 63 09 25 01  	beq	a0, s2, 0x802074e6 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
802074d8: 0f 00 00 01  	fence	w, 0
802074dc: 88 64        	ld	a0, 8(s1)
802074de: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802074e2: e3 1b 25 ff  	bne	a0, s2, 0x802074d8 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
802074e6: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
802074ea: 97 00 00 00  	auipc	ra, 0
802074ee: e7 80 60 e4  	jalr	-442(ra)
;         let new_ticket = self.ticket + 1;
802074f2: 05 09        	addi	s2, s2, 1
802074f4: 0f 00 10 03  	fence	rw, w
802074f8: 23 b4 24 01  	sd	s2, 8(s1)
;     }
802074fc: e2 60        	ld	ra, 24(sp)
802074fe: 42 64        	ld	s0, 16(sp)
80207500: a2 64        	ld	s1, 8(sp)
80207502: 02 69        	ld	s2, 0(sp)
80207504: 05 61        	addi	sp, sp, 32
80207506: 82 80        	ret

0000000080207508 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
80207508: 08 61        	ld	a0, 0(a0)
8020750a: 01 a0        	j	0x8020750a <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

000000008020750c <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
8020750c: 82 80        	ret

000000008020750e <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
8020750e: 17 35 00 00  	auipc	a0, 3
80207512: 03 35 a5 cc  	ld	a0, -822(a0)
80207516: 82 80        	ret

0000000080207518 <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
80207518: 08 6d        	ld	a0, 24(a0)
8020751a: 82 80        	ret

000000008020751c <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
8020751c: 08 69        	ld	a0, 16(a0)
8020751e: 82 80        	ret

0000000080207520 <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
80207520: 79 71        	addi	sp, sp, -48
80207522: 06 f4        	sd	ra, 40(sp)

0000000080207524 <.Lpcrel_hi466>:
80207524: 17 26 00 00  	auipc	a2, 2
80207528: 13 06 c6 63  	addi	a2, a2, 1596
8020752c: 32 e0        	sd	a2, 0(sp)

000000008020752e <.Lpcrel_hi467>:
8020752e: 17 26 00 00  	auipc	a2, 2
80207532: 13 06 26 65  	addi	a2, a2, 1618
80207536: 32 e4        	sd	a2, 8(sp)
80207538: 2a ec        	sd	a0, 24(sp)
8020753a: 2e e8        	sd	a1, 16(sp)
8020753c: 05 45        	li	a0, 1
8020753e: 23 00 a1 02  	sb	a0, 32(sp)
80207542: 0a 85        	mv	a0, sp
80207544: 97 e0 ff ff  	auipc	ra, 1048574
80207548: e7 80 a0 03  	jalr	58(ra)
8020754c: 00 00        	unimp	

000000008020754e <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
8020754e: 5d 71        	addi	sp, sp, -80
80207550: 86 e4        	sd	ra, 72(sp)
80207552: 2a fc        	sd	a0, 56(sp)
80207554: ae e0        	sd	a1, 64(sp)
80207556: 28 18        	addi	a0, sp, 56
80207558: 2a e4        	sd	a0, 8(sp)
8020755a: 05 45        	li	a0, 1
8020755c: 2a e8        	sd	a0, 16(sp)
8020755e: 02 f4        	sd	zero, 40(sp)

0000000080207560 <.Lpcrel_hi470>:
80207560: 17 25 00 00  	auipc	a0, 2
80207564: 13 05 05 60  	addi	a0, a0, 1536
80207568: 2a ec        	sd	a0, 24(sp)
8020756a: 02 f0        	sd	zero, 32(sp)
8020756c: 28 00        	addi	a0, sp, 8
8020756e: b2 85        	mv	a1, a2
80207570: 97 00 00 00  	auipc	ra, 0
80207574: e7 80 00 fb  	jalr	-80(ra)
80207578: 00 00        	unimp	

000000008020757a <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
8020757a: 59 71        	addi	sp, sp, -112
8020757c: 86 f4        	sd	ra, 104(sp)
8020757e: 2a e4        	sd	a0, 8(sp)
80207580: 2e e8        	sd	a1, 16(sp)
80207582: 08 08        	addi	a0, sp, 16
80207584: aa e4        	sd	a0, 72(sp)

0000000080207586 <.Lpcrel_hi473>:
80207586: 17 15 00 00  	auipc	a0, 1
8020758a: 13 05 c5 9c  	addi	a0, a0, -1588
8020758e: aa e8        	sd	a0, 80(sp)
80207590: 2c 00        	addi	a1, sp, 8
80207592: ae ec        	sd	a1, 88(sp)
80207594: aa f0        	sd	a0, 96(sp)

0000000080207596 <.Lpcrel_hi474>:
80207596: 17 25 00 00  	auipc	a0, 2
8020759a: 13 05 25 62  	addi	a0, a0, 1570
8020759e: 2a ec        	sd	a0, 24(sp)
802075a0: 09 45        	li	a0, 2
802075a2: 2a f0        	sd	a0, 32(sp)
802075a4: 02 fc        	sd	zero, 56(sp)
802075a6: ac 00        	addi	a1, sp, 72
802075a8: 2e f4        	sd	a1, 40(sp)
802075aa: 2a f8        	sd	a0, 48(sp)
802075ac: 28 08        	addi	a0, sp, 24
802075ae: b2 85        	mv	a1, a2
802075b0: 97 00 00 00  	auipc	ra, 0
802075b4: e7 80 00 f7  	jalr	-144(ra)
802075b8: 00 00        	unimp	

00000000802075ba <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
802075ba: 19 71        	addi	sp, sp, -128
802075bc: 86 fc        	sd	ra, 120(sp)
802075be: 2a e4        	sd	a0, 8(sp)
802075c0: 2e e8        	sd	a1, 16(sp)
802075c2: 32 ec        	sd	a2, 24(sp)
802075c4: 36 f0        	sd	a3, 32(sp)
802075c6: 28 00        	addi	a0, sp, 8
802075c8: aa ec        	sd	a0, 88(sp)

00000000802075ca <.Lpcrel_hi495>:
802075ca: 17 15 00 00  	auipc	a0, 1
802075ce: 13 05 05 9b  	addi	a0, a0, -1616
802075d2: aa f0        	sd	a0, 96(sp)
802075d4: 28 08        	addi	a0, sp, 24
802075d6: aa f4        	sd	a0, 104(sp)

00000000802075d8 <.Lpcrel_hi496>:
802075d8: 17 15 00 00  	auipc	a0, 1
802075dc: 13 05 a5 99  	addi	a0, a0, -1638
802075e0: aa f8        	sd	a0, 112(sp)

00000000802075e2 <.Lpcrel_hi497>:
802075e2: 17 25 00 00  	auipc	a0, 2
802075e6: 13 05 e5 5f  	addi	a0, a0, 1534
802075ea: 2a f4        	sd	a0, 40(sp)
802075ec: 09 45        	li	a0, 2
802075ee: 2a f8        	sd	a0, 48(sp)
802075f0: 82 e4        	sd	zero, 72(sp)
802075f2: ac 08        	addi	a1, sp, 88
802075f4: 2e fc        	sd	a1, 56(sp)
802075f6: aa e0        	sd	a0, 64(sp)
802075f8: 28 10        	addi	a0, sp, 40
802075fa: ba 85        	mv	a1, a4
802075fc: 97 00 00 00  	auipc	ra, 0
80207600: e7 80 40 f2  	jalr	-220(ra)
80207604: 00 00        	unimp	

0000000080207606 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
80207606: 90 71        	ld	a2, 32(a1)
80207608: 8c 75        	ld	a1, 40(a1)
8020760a: aa 86        	mv	a3, a0
8020760c: 32 85        	mv	a0, a2
8020760e: 36 86        	mv	a2, a3
80207610: 17 03 00 00  	auipc	t1, 0
80207614: 67 00 83 00  	jr	8(t1)

0000000080207618 <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
80207618: 19 71        	addi	sp, sp, -128
8020761a: 86 fc        	sd	ra, 120(sp)
8020761c: a2 f8        	sd	s0, 112(sp)
8020761e: a6 f4        	sd	s1, 104(sp)
80207620: ca f0        	sd	s2, 96(sp)
80207622: ce ec        	sd	s3, 88(sp)
80207624: d2 e8        	sd	s4, 80(sp)
80207626: d6 e4        	sd	s5, 72(sp)
80207628: da e0        	sd	s6, 64(sp)
8020762a: b2 89        	mv	s3, a2
8020762c: 13 06 00 02  	li	a2, 32
80207630: 32 f8        	sd	a2, 48(sp)
80207632: 0d 46        	li	a2, 3
80207634: 23 0c c1 02  	sb	a2, 56(sp)
80207638: 03 b4 09 02  	ld	s0, 32(s3)
8020763c: 02 e0        	sd	zero, 0(sp)
8020763e: 02 e8        	sd	zero, 16(sp)
80207640: 2a f0        	sd	a0, 32(sp)
80207642: 2e f4        	sd	a1, 40(sp)
80207644: 61 c0        	beqz	s0, 0x80207704 <.Lpcrel_hi670+0x98>
80207646: 03 b5 89 02  	ld	a0, 40(s3)
8020764a: 63 07 05 10  	beqz	a0, 0x80207758 <.Lpcrel_hi670+0xec>
8020764e: 83 b4 09 00  	ld	s1, 0(s3)
80207652: 93 05 f5 ff  	addi	a1, a0, -1
80207656: 8e 05        	slli	a1, a1, 3
80207658: 8d 81        	srli	a1, a1, 3
8020765a: 13 89 15 00  	addi	s2, a1, 1
8020765e: a1 04        	addi	s1, s1, 8
80207660: 93 05 80 03  	li	a1, 56
80207664: 33 0a b5 02  	mul	s4, a0, a1
80207668: 61 04        	addi	s0, s0, 24
8020766a: 85 4a        	li	s5, 1

000000008020766c <.Lpcrel_hi670>:
8020766c: 17 05 00 00  	auipc	a0, 0
80207670: 13 0b c5 e9  	addi	s6, a0, -356
80207674: 90 60        	ld	a2, 0(s1)
80207676: 01 ca        	beqz	a2, 0x80207686 <.Lpcrel_hi670+0x1a>
80207678: a2 76        	ld	a3, 40(sp)
8020767a: 02 75        	ld	a0, 32(sp)
8020767c: 83 b5 84 ff  	ld	a1, -8(s1)
80207680: 94 6e        	ld	a3, 24(a3)
80207682: 82 96        	jalr	a3
80207684: 65 ed        	bnez	a0, 0x8020777c <.Lpcrel_hi670+0x110>
80207686: 08 48        	lw	a0, 16(s0)
80207688: 2a d8        	sw	a0, 48(sp)
8020768a: 03 05 84 01  	lb	a0, 24(s0)
8020768e: 23 0c a1 02  	sb	a0, 56(sp)
80207692: 4c 48        	lw	a1, 20(s0)
80207694: 03 b5 09 01  	ld	a0, 16(s3)
80207698: 2e da        	sw	a1, 52(sp)
8020769a: 03 36 84 ff  	ld	a2, -8(s0)
8020769e: 0c 60        	ld	a1, 0(s0)
802076a0: 01 ce        	beqz	a2, 0x802076b8 <.Lpcrel_hi670+0x4c>
802076a2: 63 17 56 01  	bne	a2, s5, 0x802076b0 <.Lpcrel_hi670+0x44>
802076a6: 92 05        	slli	a1, a1, 4
802076a8: aa 95        	add	a1, a1, a0
802076aa: 90 65        	ld	a2, 8(a1)
802076ac: 63 04 66 01  	beq	a2, s6, 0x802076b4 <.Lpcrel_hi670+0x48>
802076b0: 01 46        	li	a2, 0
802076b2: 21 a0        	j	0x802076ba <.Lpcrel_hi670+0x4e>
802076b4: 8c 61        	ld	a1, 0(a1)
802076b6: 8c 61        	ld	a1, 0(a1)
802076b8: 05 46        	li	a2, 1
802076ba: 32 e0        	sd	a2, 0(sp)
802076bc: 2e e4        	sd	a1, 8(sp)
802076be: 03 36 84 fe  	ld	a2, -24(s0)
802076c2: 83 35 04 ff  	ld	a1, -16(s0)
802076c6: 01 ce        	beqz	a2, 0x802076de <.Lpcrel_hi670+0x72>
802076c8: 63 17 56 01  	bne	a2, s5, 0x802076d6 <.Lpcrel_hi670+0x6a>
802076cc: 92 05        	slli	a1, a1, 4
802076ce: aa 95        	add	a1, a1, a0
802076d0: 90 65        	ld	a2, 8(a1)
802076d2: 63 04 66 01  	beq	a2, s6, 0x802076da <.Lpcrel_hi670+0x6e>
802076d6: 01 46        	li	a2, 0
802076d8: 21 a0        	j	0x802076e0 <.Lpcrel_hi670+0x74>
802076da: 8c 61        	ld	a1, 0(a1)
802076dc: 8c 61        	ld	a1, 0(a1)
802076de: 05 46        	li	a2, 1
802076e0: 32 e8        	sd	a2, 16(sp)
802076e2: 2e ec        	sd	a1, 24(sp)
802076e4: 0c 64        	ld	a1, 8(s0)
802076e6: 92 05        	slli	a1, a1, 4
802076e8: 2e 95        	add	a0, a0, a1
802076ea: 10 65        	ld	a2, 8(a0)
802076ec: 08 61        	ld	a0, 0(a0)
802076ee: 8a 85        	mv	a1, sp
802076f0: 02 96        	jalr	a2
802076f2: 49 e5        	bnez	a0, 0x8020777c <.Lpcrel_hi670+0x110>
802076f4: c1 04        	addi	s1, s1, 16
802076f6: 13 0a 8a fc  	addi	s4, s4, -56
802076fa: 13 04 84 03  	addi	s0, s0, 56
802076fe: e3 1b 0a f6  	bnez	s4, 0x80207674 <.Lpcrel_hi670+0x8>
80207702: b1 a0        	j	0x8020774e <.Lpcrel_hi670+0xe2>
80207704: 03 ba 89 01  	ld	s4, 24(s3)
80207708: 63 08 0a 04  	beqz	s4, 0x80207758 <.Lpcrel_hi670+0xec>
8020770c: 83 b4 09 01  	ld	s1, 16(s3)
80207710: 03 b4 09 00  	ld	s0, 0(s3)
80207714: 13 05 fa ff  	addi	a0, s4, -1
80207718: 12 05        	slli	a0, a0, 4
8020771a: 11 81        	srli	a0, a0, 4
8020771c: 13 09 15 00  	addi	s2, a0, 1
80207720: 21 04        	addi	s0, s0, 8
80207722: 12 0a        	slli	s4, s4, 4
80207724: a1 04        	addi	s1, s1, 8
80207726: 10 60        	ld	a2, 0(s0)
80207728: 01 ca        	beqz	a2, 0x80207738 <.Lpcrel_hi670+0xcc>
8020772a: a2 76        	ld	a3, 40(sp)
8020772c: 02 75        	ld	a0, 32(sp)
8020772e: 83 35 84 ff  	ld	a1, -8(s0)
80207732: 94 6e        	ld	a3, 24(a3)
80207734: 82 96        	jalr	a3
80207736: 39 e1        	bnez	a0, 0x8020777c <.Lpcrel_hi670+0x110>
80207738: 90 60        	ld	a2, 0(s1)
8020773a: 03 b5 84 ff  	ld	a0, -8(s1)
8020773e: 8a 85        	mv	a1, sp
80207740: 02 96        	jalr	a2
80207742: 0d ed        	bnez	a0, 0x8020777c <.Lpcrel_hi670+0x110>
80207744: 41 04        	addi	s0, s0, 16
80207746: 41 1a        	addi	s4, s4, -16
80207748: c1 04        	addi	s1, s1, 16
8020774a: e3 1e 0a fc  	bnez	s4, 0x80207726 <.Lpcrel_hi670+0xba>
8020774e: 03 b5 89 00  	ld	a0, 8(s3)
80207752: 63 68 a9 00  	bltu	s2, a0, 0x80207762 <.Lpcrel_hi670+0xf6>
80207756: 2d a0        	j	0x80207780 <.Lpcrel_hi670+0x114>
80207758: 01 49        	li	s2, 0
8020775a: 03 b5 89 00  	ld	a0, 8(s3)
8020775e: 63 71 a9 02  	bgeu	s2, a0, 0x80207780 <.Lpcrel_hi670+0x114>
80207762: 03 b5 09 00  	ld	a0, 0(s3)
80207766: 12 09        	slli	s2, s2, 4
80207768: 2a 99        	add	s2, s2, a0
8020776a: a2 76        	ld	a3, 40(sp)
8020776c: 02 75        	ld	a0, 32(sp)
8020776e: 83 35 09 00  	ld	a1, 0(s2)
80207772: 03 36 89 00  	ld	a2, 8(s2)
80207776: 94 6e        	ld	a3, 24(a3)
80207778: 82 96        	jalr	a3
8020777a: 19 c1        	beqz	a0, 0x80207780 <.Lpcrel_hi670+0x114>
8020777c: 05 45        	li	a0, 1
8020777e: 11 a0        	j	0x80207782 <.Lpcrel_hi670+0x116>
80207780: 01 45        	li	a0, 0
80207782: e6 70        	ld	ra, 120(sp)
80207784: 46 74        	ld	s0, 112(sp)
80207786: a6 74        	ld	s1, 104(sp)
80207788: 06 79        	ld	s2, 96(sp)
8020778a: e6 69        	ld	s3, 88(sp)
8020778c: 46 6a        	ld	s4, 80(sp)
8020778e: a6 6a        	ld	s5, 72(sp)
80207790: 06 6b        	ld	s6, 64(sp)
80207792: 09 61        	addi	sp, sp, 128
80207794: 82 80        	ret

0000000080207796 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
80207796: 59 71        	addi	sp, sp, -112
80207798: 86 f4        	sd	ra, 104(sp)
8020779a: a2 f0        	sd	s0, 96(sp)
8020779c: a6 ec        	sd	s1, 88(sp)
8020779e: ca e8        	sd	s2, 80(sp)
802077a0: ce e4        	sd	s3, 72(sp)
802077a2: d2 e0        	sd	s4, 64(sp)
802077a4: 56 fc        	sd	s5, 56(sp)
802077a6: 5a f8        	sd	s6, 48(sp)
802077a8: 5e f4        	sd	s7, 40(sp)
802077aa: 62 f0        	sd	s8, 32(sp)
802077ac: 66 ec        	sd	s9, 24(sp)
802077ae: 6a e8        	sd	s10, 16(sp)
802077b0: 6e e4        	sd	s11, 8(sp)
802077b2: be 89        	mv	s3, a5
802077b4: 3a 89        	mv	s2, a4
802077b6: 36 8b        	mv	s6, a3
802077b8: 32 8a        	mv	s4, a2
802077ba: 2a 8c        	mv	s8, a0
802077bc: b9 c1        	beqz	a1, 0x80207802 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
802077be: 03 64 4c 03  	lwu	s0, 52(s8)
802077c2: 93 7c 14 00  	andi	s9, s0, 1
802077c6: b7 0a 11 00  	lui	s5, 272
802077ca: 63 84 0c 00  	beqz	s9, 0x802077d2 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
802077ce: 93 0a b0 02  	li	s5, 43
802077d2: ce 9c        	add	s9, s9, s3
802077d4: 13 75 44 00  	andi	a0, s0, 4
802077d8: 15 cd        	beqz	a0, 0x80207814 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
802077da: 13 05 00 02  	li	a0, 32
802077de: 63 70 ab 04  	bgeu	s6, a0, 0x8020781e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
802077e2: 01 45        	li	a0, 0
802077e4: 63 03 0b 04  	beqz	s6, 0x8020782a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
802077e8: da 85        	mv	a1, s6
802077ea: 52 86        	mv	a2, s4
802077ec: 83 06 06 00  	lb	a3, 0(a2)
802077f0: 05 06        	addi	a2, a2, 1
802077f2: 93 a6 06 fc  	slti	a3, a3, -64
802077f6: 93 c6 16 00  	xori	a3, a3, 1
802077fa: fd 15        	addi	a1, a1, -1
802077fc: 36 95        	add	a0, a0, a3
802077fe: fd f5        	bnez	a1, 0x802077ec <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
80207800: 2d a0        	j	0x8020782a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80207802: 03 24 4c 03  	lw	s0, 52(s8)
80207806: 93 8c 19 00  	addi	s9, s3, 1
8020780a: 93 0a d0 02  	li	s5, 45
8020780e: 13 75 44 00  	andi	a0, s0, 4
80207812: 61 f5        	bnez	a0, 0x802077da <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80207814: 01 4a        	li	s4, 0
80207816: 03 35 0c 00  	ld	a0, 0(s8)
8020781a: 01 ed        	bnez	a0, 0x80207832 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
8020781c: 25 a8        	j	0x80207854 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020781e: 52 85        	mv	a0, s4
80207820: da 85        	mv	a1, s6
80207822: 97 00 00 00  	auipc	ra, 0
80207826: e7 80 20 43  	jalr	1074(ra)
8020782a: aa 9c        	add	s9, s9, a0
8020782c: 03 35 0c 00  	ld	a0, 0(s8)
80207830: 15 c1        	beqz	a0, 0x80207854 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80207832: 03 3d 8c 00  	ld	s10, 8(s8)
80207836: 63 ff ac 01  	bgeu	s9, s10, 0x80207854 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020783a: 21 88        	andi	s0, s0, 8
8020783c: 35 ec        	bnez	s0, 0x802078b8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
8020783e: 83 45 8c 03  	lbu	a1, 56(s8)
80207842: 05 46        	li	a2, 1
80207844: 33 05 9d 41  	sub	a0, s10, s9
80207848: 63 4f b6 0a  	blt	a2, a1, 0x80207906 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
8020784c: f1 e5        	bnez	a1, 0x80207918 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
8020784e: 2a 8d        	mv	s10, a0
80207850: 2e 85        	mv	a0, a1
80207852: e1 a0        	j	0x8020791a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80207854: 03 34 0c 02  	ld	s0, 32(s8)
80207858: 83 34 8c 02  	ld	s1, 40(s8)
8020785c: 22 85        	mv	a0, s0
8020785e: a6 85        	mv	a1, s1
80207860: 56 86        	mv	a2, s5
80207862: d2 86        	mv	a3, s4
80207864: 5a 87        	mv	a4, s6
80207866: 97 00 00 00  	auipc	ra, 0
8020786a: e7 80 80 14  	jalr	328(ra)
8020786e: 85 4b        	li	s7, 1
80207870: 0d c1        	beqz	a0, 0x80207892 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
80207872: 5e 85        	mv	a0, s7
80207874: a6 70        	ld	ra, 104(sp)
80207876: 06 74        	ld	s0, 96(sp)
80207878: e6 64        	ld	s1, 88(sp)
8020787a: 46 69        	ld	s2, 80(sp)
8020787c: a6 69        	ld	s3, 72(sp)
8020787e: 06 6a        	ld	s4, 64(sp)
80207880: e2 7a        	ld	s5, 56(sp)
80207882: 42 7b        	ld	s6, 48(sp)
80207884: a2 7b        	ld	s7, 40(sp)
80207886: 02 7c        	ld	s8, 32(sp)
80207888: e2 6c        	ld	s9, 24(sp)
8020788a: 42 6d        	ld	s10, 16(sp)
8020788c: a2 6d        	ld	s11, 8(sp)
8020788e: 65 61        	addi	sp, sp, 112
80207890: 82 80        	ret
80207892: 9c 6c        	ld	a5, 24(s1)
80207894: 22 85        	mv	a0, s0
80207896: ca 85        	mv	a1, s2
80207898: 4e 86        	mv	a2, s3
8020789a: a6 70        	ld	ra, 104(sp)
8020789c: 06 74        	ld	s0, 96(sp)
8020789e: e6 64        	ld	s1, 88(sp)
802078a0: 46 69        	ld	s2, 80(sp)
802078a2: a6 69        	ld	s3, 72(sp)
802078a4: 06 6a        	ld	s4, 64(sp)
802078a6: e2 7a        	ld	s5, 56(sp)
802078a8: 42 7b        	ld	s6, 48(sp)
802078aa: a2 7b        	ld	s7, 40(sp)
802078ac: 02 7c        	ld	s8, 32(sp)
802078ae: e2 6c        	ld	s9, 24(sp)
802078b0: 42 6d        	ld	s10, 16(sp)
802078b2: a2 6d        	ld	s11, 8(sp)
802078b4: 65 61        	addi	sp, sp, 112
802078b6: 82 87        	jr	a5
802078b8: 03 24 0c 03  	lw	s0, 48(s8)
802078bc: 13 05 00 03  	li	a0, 48
802078c0: 83 45 8c 03  	lbu	a1, 56(s8)
802078c4: 2e e0        	sd	a1, 0(sp)
802078c6: 83 3d 0c 02  	ld	s11, 32(s8)
802078ca: 83 34 8c 02  	ld	s1, 40(s8)
802078ce: 23 28 ac 02  	sw	a0, 48(s8)
802078d2: 85 4b        	li	s7, 1
802078d4: 23 0c 7c 03  	sb	s7, 56(s8)
802078d8: 6e 85        	mv	a0, s11
802078da: a6 85        	mv	a1, s1
802078dc: 56 86        	mv	a2, s5
802078de: d2 86        	mv	a3, s4
802078e0: 5a 87        	mv	a4, s6
802078e2: 97 00 00 00  	auipc	ra, 0
802078e6: e7 80 c0 0c  	jalr	204(ra)
802078ea: 41 f5        	bnez	a0, 0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802078ec: 22 8a        	mv	s4, s0
802078ee: 33 04 9d 41  	sub	s0, s10, s9
802078f2: 05 04        	addi	s0, s0, 1
802078f4: 7d 14        	addi	s0, s0, -1
802078f6: 51 c8        	beqz	s0, 0x8020798a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
802078f8: 90 70        	ld	a2, 32(s1)
802078fa: 93 05 00 03  	li	a1, 48
802078fe: 6e 85        	mv	a0, s11
80207900: 02 96        	jalr	a2
80207902: 6d d9        	beqz	a0, 0x802078f4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
80207904: bd b7        	j	0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80207906: 09 46        	li	a2, 2
80207908: 63 98 c5 00  	bne	a1, a2, 0x80207918 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
8020790c: 93 05 15 00  	addi	a1, a0, 1
80207910: 05 81        	srli	a0, a0, 1
80207912: 13 dd 15 00  	srli	s10, a1, 1
80207916: 11 a0        	j	0x8020791a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80207918: 01 4d        	li	s10, 0
8020791a: 83 3c 0c 02  	ld	s9, 32(s8)
8020791e: 83 3d 8c 02  	ld	s11, 40(s8)
80207922: 83 24 0c 03  	lw	s1, 48(s8)
80207926: 13 04 15 00  	addi	s0, a0, 1
8020792a: 7d 14        	addi	s0, s0, -1
8020792c: 09 c8        	beqz	s0, 0x8020793e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
8020792e: 03 b6 0d 02  	ld	a2, 32(s11)
80207932: 66 85        	mv	a0, s9
80207934: a6 85        	mv	a1, s1
80207936: 02 96        	jalr	a2
80207938: 6d d9        	beqz	a0, 0x8020792a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
8020793a: 85 4b        	li	s7, 1
8020793c: 1d bf        	j	0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020793e: 37 05 11 00  	lui	a0, 272
80207942: 85 4b        	li	s7, 1
80207944: e3 87 a4 f2  	beq	s1, a0, 0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80207948: 66 85        	mv	a0, s9
8020794a: ee 85        	mv	a1, s11
8020794c: 56 86        	mv	a2, s5
8020794e: d2 86        	mv	a3, s4
80207950: 5a 87        	mv	a4, s6
80207952: 97 00 00 00  	auipc	ra, 0
80207956: e7 80 c0 05  	jalr	92(ra)
8020795a: 01 fd        	bnez	a0, 0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020795c: 83 b6 8d 01  	ld	a3, 24(s11)
80207960: 66 85        	mv	a0, s9
80207962: ca 85        	mv	a1, s2
80207964: 4e 86        	mv	a2, s3
80207966: 82 96        	jalr	a3
80207968: 09 f5        	bnez	a0, 0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020796a: b3 09 a0 41  	neg	s3, s10
8020796e: 7d 5a        	li	s4, -1
80207970: 7d 59        	li	s2, -1
80207972: 33 85 29 01  	add	a0, s3, s2
80207976: 63 08 45 03  	beq	a0, s4, 0x802079a6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
8020797a: 03 b6 0d 02  	ld	a2, 32(s11)
8020797e: 66 85        	mv	a0, s9
80207980: a6 85        	mv	a1, s1
80207982: 02 96        	jalr	a2
80207984: 05 09        	addi	s2, s2, 1
80207986: 75 d5        	beqz	a0, 0x80207972 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
80207988: 05 a0        	j	0x802079a8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
8020798a: 94 6c        	ld	a3, 24(s1)
8020798c: 6e 85        	mv	a0, s11
8020798e: ca 85        	mv	a1, s2
80207990: 4e 86        	mv	a2, s3
80207992: 82 96        	jalr	a3
80207994: e3 1f 05 ec  	bnez	a0, 0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80207998: 81 4b        	li	s7, 0
8020799a: 23 28 4c 03  	sw	s4, 48(s8)
8020799e: 02 65        	ld	a0, 0(sp)
802079a0: 23 0c ac 02  	sb	a0, 56(s8)
802079a4: f9 b5        	j	0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802079a6: 6a 89        	mv	s2, s10
802079a8: b3 3b a9 01  	sltu	s7, s2, s10
802079ac: d9 b5        	j	0x80207872 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

00000000802079ae <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
802079ae: 79 71        	addi	sp, sp, -48
802079b0: 06 f4        	sd	ra, 40(sp)
802079b2: 22 f0        	sd	s0, 32(sp)
802079b4: 26 ec        	sd	s1, 24(sp)
802079b6: 4a e8        	sd	s2, 16(sp)
802079b8: 4e e4        	sd	s3, 8(sp)
802079ba: 9b 07 06 00  	sext.w	a5, a2
802079be: 37 08 11 00  	lui	a6, 272
802079c2: 3a 89        	mv	s2, a4
802079c4: b6 84        	mv	s1, a3
802079c6: 2e 84        	mv	s0, a1
802079c8: aa 89        	mv	s3, a0
802079ca: 63 89 07 01  	beq	a5, a6, 0x802079dc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
802079ce: 14 70        	ld	a3, 32(s0)
802079d0: 4e 85        	mv	a0, s3
802079d2: b2 85        	mv	a1, a2
802079d4: 82 96        	jalr	a3
802079d6: aa 85        	mv	a1, a0
802079d8: 05 45        	li	a0, 1
802079da: 91 ed        	bnez	a1, 0x802079f6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
802079dc: 81 cc        	beqz	s1, 0x802079f4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
802079de: 1c 6c        	ld	a5, 24(s0)
802079e0: 4e 85        	mv	a0, s3
802079e2: a6 85        	mv	a1, s1
802079e4: 4a 86        	mv	a2, s2
802079e6: a2 70        	ld	ra, 40(sp)
802079e8: 02 74        	ld	s0, 32(sp)
802079ea: e2 64        	ld	s1, 24(sp)
802079ec: 42 69        	ld	s2, 16(sp)
802079ee: a2 69        	ld	s3, 8(sp)
802079f0: 45 61        	addi	sp, sp, 48
802079f2: 82 87        	jr	a5
802079f4: 01 45        	li	a0, 0
802079f6: a2 70        	ld	ra, 40(sp)
802079f8: 02 74        	ld	s0, 32(sp)
802079fa: e2 64        	ld	s1, 24(sp)
802079fc: 42 69        	ld	s2, 16(sp)
802079fe: a2 69        	ld	s3, 8(sp)
80207a00: 45 61        	addi	sp, sp, 48
80207a02: 82 80        	ret

0000000080207a04 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
80207a04: 5d 71        	addi	sp, sp, -80
80207a06: 86 e4        	sd	ra, 72(sp)
80207a08: a2 e0        	sd	s0, 64(sp)
80207a0a: 26 fc        	sd	s1, 56(sp)
80207a0c: 4a f8        	sd	s2, 48(sp)
80207a0e: 4e f4        	sd	s3, 40(sp)
80207a10: 52 f0        	sd	s4, 32(sp)
80207a12: 56 ec        	sd	s5, 24(sp)
80207a14: 5a e8        	sd	s6, 16(sp)
80207a16: 5e e4        	sd	s7, 8(sp)
80207a18: 2a 8a        	mv	s4, a0
80207a1a: 83 32 05 00  	ld	t0, 0(a0)
80207a1e: 08 69        	ld	a0, 16(a0)
80207a20: b3 e6 a2 00  	or	a3, t0, a0
80207a24: b2 89        	mv	s3, a2
80207a26: 2e 89        	mv	s2, a1
80207a28: 63 84 06 16  	beqz	a3, 0x80207b90 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80207a2c: 63 07 05 10  	beqz	a0, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207a30: 03 37 8a 01  	ld	a4, 24(s4)
80207a34: 01 45        	li	a0, 0
80207a36: b3 06 39 01  	add	a3, s2, s3
80207a3a: 05 07        	addi	a4, a4, 1
80207a3c: 37 03 11 00  	lui	t1, 272
80207a40: 93 08 f0 0d  	li	a7, 223
80207a44: 13 08 00 0f  	li	a6, 240
80207a48: 4a 86        	mv	a2, s2
80207a4a: 01 a8        	j	0x80207a5a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
80207a4c: 93 05 16 00  	addi	a1, a2, 1
80207a50: 11 8d        	sub	a0, a0, a2
80207a52: 2e 95        	add	a0, a0, a1
80207a54: 2e 86        	mv	a2, a1
80207a56: 63 02 64 0e  	beq	s0, t1, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207a5a: 7d 17        	addi	a4, a4, -1
80207a5c: 25 c7        	beqz	a4, 0x80207ac4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
80207a5e: 63 0e d6 0c  	beq	a2, a3, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207a62: 83 05 06 00  	lb	a1, 0(a2)
80207a66: 13 f4 f5 0f  	andi	s0, a1, 255
80207a6a: e3 d1 05 fe  	bgez	a1, 0x80207a4c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
80207a6e: 83 45 16 00  	lbu	a1, 1(a2)
80207a72: 93 74 f4 01  	andi	s1, s0, 31
80207a76: 93 f7 f5 03  	andi	a5, a1, 63
80207a7a: 63 f9 88 02  	bgeu	a7, s0, 0x80207aac <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
80207a7e: 83 45 26 00  	lbu	a1, 2(a2)
80207a82: 9a 07        	slli	a5, a5, 6
80207a84: 93 f5 f5 03  	andi	a1, a1, 63
80207a88: cd 8f        	or	a5, a5, a1
80207a8a: 63 67 04 03  	bltu	s0, a6, 0x80207ab8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
80207a8e: 83 45 36 00  	lbu	a1, 3(a2)
80207a92: f6 14        	slli	s1, s1, 61
80207a94: ad 90        	srli	s1, s1, 43
80207a96: 9a 07        	slli	a5, a5, 6
80207a98: 93 f5 f5 03  	andi	a1, a1, 63
80207a9c: dd 8d        	or	a1, a1, a5
80207a9e: 33 e4 95 00  	or	s0, a1, s1
80207aa2: 63 0c 64 08  	beq	s0, t1, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207aa6: 93 05 46 00  	addi	a1, a2, 4
80207aaa: 5d b7        	j	0x80207a50 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80207aac: 93 05 26 00  	addi	a1, a2, 2
80207ab0: 13 94 64 00  	slli	s0, s1, 6
80207ab4: 5d 8c        	or	s0, s0, a5
80207ab6: 69 bf        	j	0x80207a50 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80207ab8: 93 05 36 00  	addi	a1, a2, 3
80207abc: 13 94 c4 00  	slli	s0, s1, 12
80207ac0: 5d 8c        	or	s0, s0, a5
80207ac2: 79 b7        	j	0x80207a50 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80207ac4: 63 0b d6 06  	beq	a2, a3, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207ac8: 83 05 06 00  	lb	a1, 0(a2)
80207acc: 63 d3 05 04  	bgez	a1, 0x80207b12 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80207ad0: 93 f5 f5 0f  	andi	a1, a1, 255
80207ad4: 93 06 00 0e  	li	a3, 224
80207ad8: 63 ed d5 02  	bltu	a1, a3, 0x80207b12 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80207adc: 93 06 00 0f  	li	a3, 240
80207ae0: 63 e9 d5 02  	bltu	a1, a3, 0x80207b12 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80207ae4: 83 46 16 00  	lbu	a3, 1(a2)
80207ae8: 03 47 26 00  	lbu	a4, 2(a2)
80207aec: 93 f6 f6 03  	andi	a3, a3, 63
80207af0: 13 77 f7 03  	andi	a4, a4, 63
80207af4: 03 46 36 00  	lbu	a2, 3(a2)
80207af8: f6 15        	slli	a1, a1, 61
80207afa: ad 91        	srli	a1, a1, 43
80207afc: b2 06        	slli	a3, a3, 12
80207afe: 1a 07        	slli	a4, a4, 6
80207b00: d9 8e        	or	a3, a3, a4
80207b02: 13 76 f6 03  	andi	a2, a2, 63
80207b06: 55 8e        	or	a2, a2, a3
80207b08: d1 8d        	or	a1, a1, a2
80207b0a: 37 06 11 00  	lui	a2, 272
80207b0e: 63 86 c5 02  	beq	a1, a2, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207b12: 05 c1        	beqz	a0, 0x80207b32 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80207b14: 63 7d 35 01  	bgeu	a0, s3, 0x80207b2e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
80207b18: b3 05 a9 00  	add	a1, s2, a0
80207b1c: 83 85 05 00  	lb	a1, 0(a1)
80207b20: 13 06 00 fc  	li	a2, -64
80207b24: 63 d7 c5 00  	bge	a1, a2, 0x80207b32 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80207b28: 81 45        	li	a1, 0
80207b2a: 91 e5        	bnez	a1, 0x80207b36 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
80207b2c: 39 a0        	j	0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207b2e: e3 1d 35 ff  	bne	a0, s3, 0x80207b28 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
80207b32: ca 85        	mv	a1, s2
80207b34: 99 c1        	beqz	a1, 0x80207b3a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80207b36: aa 89        	mv	s3, a0
80207b38: 2e 89        	mv	s2, a1
80207b3a: 63 8b 02 04  	beqz	t0, 0x80207b90 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80207b3e: 03 34 8a 00  	ld	s0, 8(s4)
80207b42: 13 05 00 02  	li	a0, 32
80207b46: 63 fd a9 02  	bgeu	s3, a0, 0x80207b80 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
80207b4a: 01 45        	li	a0, 0
80207b4c: 63 8e 09 00  	beqz	s3, 0x80207b68 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
80207b50: ce 85        	mv	a1, s3
80207b52: 4a 86        	mv	a2, s2
80207b54: 83 06 06 00  	lb	a3, 0(a2)
80207b58: 05 06        	addi	a2, a2, 1
80207b5a: 93 a6 06 fc  	slti	a3, a3, -64
80207b5e: 93 c6 16 00  	xori	a3, a3, 1
80207b62: fd 15        	addi	a1, a1, -1
80207b64: 36 95        	add	a0, a0, a3
80207b66: fd f5        	bnez	a1, 0x80207b54 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
80207b68: 63 74 85 02  	bgeu	a0, s0, 0x80207b90 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80207b6c: 83 45 8a 03  	lbu	a1, 56(s4)
80207b70: 05 46        	li	a2, 1
80207b72: 33 05 a4 40  	sub	a0, s0, a0
80207b76: 63 4f b6 02  	blt	a2, a1, 0x80207bb4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
80207b7a: b1 c5        	beqz	a1, 0x80207bc6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
80207b7c: 81 4a        	li	s5, 0
80207b7e: b1 a0        	j	0x80207bca <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
80207b80: 4a 85        	mv	a0, s2
80207b82: ce 85        	mv	a1, s3
80207b84: 97 00 00 00  	auipc	ra, 0
80207b88: e7 80 00 0d  	jalr	208(ra)
80207b8c: e3 60 85 fe  	bltu	a0, s0, 0x80207b6c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
80207b90: 83 35 8a 02  	ld	a1, 40(s4)
80207b94: 03 35 0a 02  	ld	a0, 32(s4)
80207b98: 9c 6d        	ld	a5, 24(a1)
80207b9a: ca 85        	mv	a1, s2
80207b9c: 4e 86        	mv	a2, s3
80207b9e: a6 60        	ld	ra, 72(sp)
80207ba0: 06 64        	ld	s0, 64(sp)
80207ba2: e2 74        	ld	s1, 56(sp)
80207ba4: 42 79        	ld	s2, 48(sp)
80207ba6: a2 79        	ld	s3, 40(sp)
80207ba8: 02 7a        	ld	s4, 32(sp)
80207baa: e2 6a        	ld	s5, 24(sp)
80207bac: 42 6b        	ld	s6, 16(sp)
80207bae: a2 6b        	ld	s7, 8(sp)
80207bb0: 61 61        	addi	sp, sp, 80
80207bb2: 82 87        	jr	a5
80207bb4: 09 46        	li	a2, 2
80207bb6: 63 98 c5 00  	bne	a1, a2, 0x80207bc6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
80207bba: 93 05 15 00  	addi	a1, a0, 1
80207bbe: 05 81        	srli	a0, a0, 1
80207bc0: 93 da 15 00  	srli	s5, a1, 1
80207bc4: 19 a0        	j	0x80207bca <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
80207bc6: aa 8a        	mv	s5, a0
80207bc8: 01 45        	li	a0, 0
80207bca: 03 3b 0a 02  	ld	s6, 32(s4)
80207bce: 83 3b 8a 02  	ld	s7, 40(s4)
80207bd2: 83 24 0a 03  	lw	s1, 48(s4)
80207bd6: 13 04 15 00  	addi	s0, a0, 1
80207bda: 7d 14        	addi	s0, s0, -1
80207bdc: 09 c8        	beqz	s0, 0x80207bee <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
80207bde: 03 b6 0b 02  	ld	a2, 32(s7)
80207be2: 5a 85        	mv	a0, s6
80207be4: a6 85        	mv	a1, s1
80207be6: 02 96        	jalr	a2
80207be8: 6d d9        	beqz	a0, 0x80207bda <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
80207bea: 05 4a        	li	s4, 1
80207bec: 81 a0        	j	0x80207c2c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80207bee: 37 05 11 00  	lui	a0, 272
80207bf2: 05 4a        	li	s4, 1
80207bf4: 63 8c a4 02  	beq	s1, a0, 0x80207c2c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80207bf8: 83 b6 8b 01  	ld	a3, 24(s7)
80207bfc: 5a 85        	mv	a0, s6
80207bfe: ca 85        	mv	a1, s2
80207c00: 4e 86        	mv	a2, s3
80207c02: 82 96        	jalr	a3
80207c04: 05 e5        	bnez	a0, 0x80207c2c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80207c06: 33 09 50 41  	neg	s2, s5
80207c0a: fd 59        	li	s3, -1
80207c0c: 7d 54        	li	s0, -1
80207c0e: 33 05 89 00  	add	a0, s2, s0
80207c12: 63 0a 35 01  	beq	a0, s3, 0x80207c26 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
80207c16: 03 b6 0b 02  	ld	a2, 32(s7)
80207c1a: 5a 85        	mv	a0, s6
80207c1c: a6 85        	mv	a1, s1
80207c1e: 02 96        	jalr	a2
80207c20: 05 04        	addi	s0, s0, 1
80207c22: 75 d5        	beqz	a0, 0x80207c0e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80207c24: 11 a0        	j	0x80207c28 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
80207c26: 56 84        	mv	s0, s5
80207c28: 33 3a 54 01  	sltu	s4, s0, s5
80207c2c: 52 85        	mv	a0, s4
80207c2e: a6 60        	ld	ra, 72(sp)
80207c30: 06 64        	ld	s0, 64(sp)
80207c32: e2 74        	ld	s1, 56(sp)
80207c34: 42 79        	ld	s2, 48(sp)
80207c36: a2 79        	ld	s3, 40(sp)
80207c38: 02 7a        	ld	s4, 32(sp)
80207c3a: e2 6a        	ld	s5, 24(sp)
80207c3c: 42 6b        	ld	s6, 16(sp)
80207c3e: a2 6b        	ld	s7, 8(sp)
80207c40: 61 61        	addi	sp, sp, 80
80207c42: 82 80        	ret

0000000080207c44 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
80207c44: ae 86        	mv	a3, a1
80207c46: aa 85        	mv	a1, a0
80207c48: 32 85        	mv	a0, a2
80207c4a: 36 86        	mv	a2, a3
80207c4c: 17 03 00 00  	auipc	t1, 0
80207c50: 67 00 83 db  	jr	-584(t1)

0000000080207c54 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
80207c54: 2a 86        	mv	a2, a0
80207c56: 13 07 75 00  	addi	a4, a0, 7
80207c5a: 61 9b        	andi	a4, a4, -8
80207c5c: b3 02 a7 40  	sub	t0, a4, a0
80207c60: 63 e7 55 00  	bltu	a1, t0, 0x80207c6e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
80207c64: 33 88 55 40  	sub	a6, a1, t0
80207c68: a1 46        	li	a3, 8
80207c6a: 63 7f d8 00  	bgeu	a6, a3, 0x80207c88 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
80207c6e: 01 45        	li	a0, 0
80207c70: 99 c9        	beqz	a1, 0x80207c86 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80207c72: 83 06 06 00  	lb	a3, 0(a2)
80207c76: 05 06        	addi	a2, a2, 1
80207c78: 93 a6 06 fc  	slti	a3, a3, -64
80207c7c: 93 c6 16 00  	xori	a3, a3, 1
80207c80: fd 15        	addi	a1, a1, -1
80207c82: 36 95        	add	a0, a0, a3
80207c84: fd f5        	bnez	a1, 0x80207c72 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
80207c86: 82 80        	ret
80207c88: 93 76 78 00  	andi	a3, a6, 7
80207c8c: 81 45        	li	a1, 0
80207c8e: 63 0f c7 00  	beq	a4, a2, 0x80207cac <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
80207c92: 33 07 e6 40  	sub	a4, a2, a4
80207c96: b2 87        	mv	a5, a2
80207c98: 03 85 07 00  	lb	a0, 0(a5)
80207c9c: 85 07        	addi	a5, a5, 1
80207c9e: 13 25 05 fc  	slti	a0, a0, -64
80207ca2: 13 45 15 00  	xori	a0, a0, 1
80207ca6: 05 07        	addi	a4, a4, 1
80207ca8: aa 95        	add	a1, a1, a0
80207caa: 7d f7        	bnez	a4, 0x80207c98 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
80207cac: b2 92        	add	t0, t0, a2
80207cae: 01 46        	li	a2, 0
80207cb0: 91 ce        	beqz	a3, 0x80207ccc <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
80207cb2: 13 77 88 ff  	andi	a4, a6, -8
80207cb6: 16 97        	add	a4, a4, t0
80207cb8: 03 05 07 00  	lb	a0, 0(a4)
80207cbc: 05 07        	addi	a4, a4, 1
80207cbe: 13 25 05 fc  	slti	a0, a0, -64
80207cc2: 13 45 15 00  	xori	a0, a0, 1
80207cc6: fd 16        	addi	a3, a3, -1
80207cc8: 2a 96        	add	a2, a2, a0
80207cca: fd f6        	bnez	a3, 0x80207cb8 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
80207ccc: 13 57 38 00  	srli	a4, a6, 3

0000000080207cd0 <.Lpcrel_hi762>:
80207cd0: 17 25 00 00  	auipc	a0, 2
80207cd4: 03 3f 85 62  	ld	t5, 1576(a0)

0000000080207cd8 <.Lpcrel_hi763>:
80207cd8: 17 25 00 00  	auipc	a0, 2
80207cdc: 83 38 85 62  	ld	a7, 1576(a0)
80207ce0: 37 15 00 10  	lui	a0, 65537
80207ce4: 12 05        	slli	a0, a0, 4
80207ce6: 05 05        	addi	a0, a0, 1
80207ce8: 42 05        	slli	a0, a0, 16
80207cea: 13 08 15 00  	addi	a6, a0, 1
80207cee: 33 05 b6 00  	add	a0, a2, a1
80207cf2: 1d a0        	j	0x80207d18 <.Lpcrel_hi763+0x40>
80207cf4: 93 12 3e 00  	slli	t0, t3, 3
80207cf8: 9a 92        	add	t0, t0, t1
80207cfa: 33 87 c3 41  	sub	a4, t2, t3
80207cfe: 13 76 3e 00  	andi	a2, t3, 3
80207d02: b3 f6 15 01  	and	a3, a1, a7
80207d06: a1 81        	srli	a1, a1, 8
80207d08: b3 f5 15 01  	and	a1, a1, a7
80207d0c: b6 95        	add	a1, a1, a3
80207d0e: b3 85 05 03  	mul	a1, a1, a6
80207d12: c1 91        	srli	a1, a1, 48
80207d14: 2e 95        	add	a0, a0, a1
80207d16: 35 ee        	bnez	a2, 0x80207d92 <.Lpcrel_hi763+0xba>
80207d18: 3d d7        	beqz	a4, 0x80207c86 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80207d1a: ba 83        	mv	t2, a4
80207d1c: 16 83        	mv	t1, t0
80207d1e: 93 05 00 0c  	li	a1, 192
80207d22: 3a 8e        	mv	t3, a4
80207d24: 63 64 b7 00  	bltu	a4, a1, 0x80207d2c <.Lpcrel_hi763+0x54>
80207d28: 13 0e 00 0c  	li	t3, 192
80207d2c: 93 75 ce 0f  	andi	a1, t3, 252
80207d30: 93 97 35 00  	slli	a5, a1, 3
80207d34: b3 0e f3 00  	add	t4, t1, a5
80207d38: d5 dd        	beqz	a1, 0x80207cf4 <.Lpcrel_hi763+0x1c>
80207d3a: 81 45        	li	a1, 0
80207d3c: 1a 86        	mv	a2, t1
80207d3e: 5d da        	beqz	a2, 0x80207cf4 <.Lpcrel_hi763+0x1c>
80207d40: 18 62        	ld	a4, 0(a2)
80207d42: 93 47 f7 ff  	not	a5, a4
80207d46: 9d 83        	srli	a5, a5, 7
80207d48: 19 83        	srli	a4, a4, 6
80207d4a: 14 66        	ld	a3, 8(a2)
80207d4c: 5d 8f        	or	a4, a4, a5
80207d4e: 33 77 e7 01  	and	a4, a4, t5
80207d52: ba 95        	add	a1, a1, a4
80207d54: 13 c7 f6 ff  	not	a4, a3
80207d58: 1d 83        	srli	a4, a4, 7
80207d5a: 1c 6a        	ld	a5, 16(a2)
80207d5c: 99 82        	srli	a3, a3, 6
80207d5e: d9 8e        	or	a3, a3, a4
80207d60: b3 f6 e6 01  	and	a3, a3, t5
80207d64: 13 c7 f7 ff  	not	a4, a5
80207d68: 1d 83        	srli	a4, a4, 7
80207d6a: 99 83        	srli	a5, a5, 6
80207d6c: 5d 8f        	or	a4, a4, a5
80207d6e: 1c 6e        	ld	a5, 24(a2)
80207d70: 33 77 e7 01  	and	a4, a4, t5
80207d74: ba 96        	add	a3, a3, a4
80207d76: b6 95        	add	a1, a1, a3
80207d78: 93 c6 f7 ff  	not	a3, a5
80207d7c: 9d 82        	srli	a3, a3, 7
80207d7e: 99 83        	srli	a5, a5, 6
80207d80: dd 8e        	or	a3, a3, a5
80207d82: b3 f6 e6 01  	and	a3, a3, t5
80207d86: 13 06 06 02  	addi	a2, a2, 32
80207d8a: b6 95        	add	a1, a1, a3
80207d8c: e3 19 d6 fb  	bne	a2, t4, 0x80207d3e <.Lpcrel_hi763+0x66>
80207d90: 95 b7        	j	0x80207cf4 <.Lpcrel_hi763+0x1c>
80207d92: 63 0a 03 02  	beqz	t1, 0x80207dc6 <.Lpcrel_hi763+0xee>
80207d96: 93 05 00 0c  	li	a1, 192
80207d9a: 63 e4 b3 00  	bltu	t2, a1, 0x80207da2 <.Lpcrel_hi763+0xca>
80207d9e: 93 03 00 0c  	li	t2, 192
80207da2: 81 45        	li	a1, 0
80207da4: 13 f6 33 00  	andi	a2, t2, 3
80207da8: 0e 06        	slli	a2, a2, 3
80207daa: 83 b6 0e 00  	ld	a3, 0(t4)
80207dae: a1 0e        	addi	t4, t4, 8
80207db0: 13 c7 f6 ff  	not	a4, a3
80207db4: 1d 83        	srli	a4, a4, 7
80207db6: 99 82        	srli	a3, a3, 6
80207db8: d9 8e        	or	a3, a3, a4
80207dba: b3 f6 e6 01  	and	a3, a3, t5
80207dbe: 61 16        	addi	a2, a2, -8
80207dc0: b6 95        	add	a1, a1, a3
80207dc2: 65 f6        	bnez	a2, 0x80207daa <.Lpcrel_hi763+0xd2>
80207dc4: 11 a0        	j	0x80207dc8 <.Lpcrel_hi763+0xf0>
80207dc6: 81 45        	li	a1, 0
80207dc8: 33 f6 15 01  	and	a2, a1, a7
80207dcc: a1 81        	srli	a1, a1, 8
80207dce: b3 f5 15 01  	and	a1, a1, a7
80207dd2: b2 95        	add	a1, a1, a2
80207dd4: b3 85 05 03  	mul	a1, a1, a6
80207dd8: c1 91        	srli	a1, a1, 48
80207dda: 2e 95        	add	a0, a0, a1
80207ddc: 82 80        	ret

0000000080207dde <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
80207dde: 39 71        	addi	sp, sp, -64
80207de0: 06 fc        	sd	ra, 56(sp)
80207de2: 22 f8        	sd	s0, 48(sp)
80207de4: 26 f4        	sd	s1, 40(sp)
80207de6: 32 88        	mv	a6, a2
80207de8: 93 56 45 00  	srli	a3, a0, 4
80207dec: 13 07 70 02  	li	a4, 39
80207df0: 93 07 10 27  	li	a5, 625

0000000080207df4 <.Lpcrel_hi1459>:
80207df4: 17 26 00 00  	auipc	a2, 2
80207df8: 93 0e c6 e0  	addi	t4, a2, -500
80207dfc: 63 f3 f6 02  	bgeu	a3, a5, 0x80207e22 <.Lpcrel_hi1459+0x2e>
80207e00: 93 06 30 06  	li	a3, 99
80207e04: 63 ea a6 0a  	bltu	a3, a0, 0x80207eb8 <.Lpcrel_hi1460+0x8c>
80207e08: 29 46        	li	a2, 10
80207e0a: 63 78 c5 0e  	bgeu	a0, a2, 0x80207efa <.Lpcrel_hi1460+0xce>
80207e0e: 93 06 f7 ff  	addi	a3, a4, -1
80207e12: 13 06 11 00  	addi	a2, sp, 1
80207e16: 36 96        	add	a2, a2, a3
80207e18: 1b 05 05 03  	addiw	a0, a0, 48
80207e1c: 23 00 a6 00  	sb	a0, 0(a2)
80207e20: e5 a8        	j	0x80207f18 <.Lpcrel_hi1460+0xec>
80207e22: 01 47        	li	a4, 0
80207e24: 93 08 41 02  	addi	a7, sp, 36
80207e28: 93 02 61 02  	addi	t0, sp, 38

0000000080207e2c <.Lpcrel_hi1460>:
80207e2c: 97 26 00 00  	auipc	a3, 2
80207e30: 03 b3 46 58  	ld	t1, 1412(a3)
80207e34: 89 66        	lui	a3, 2
80207e36: 1b 8e 06 71  	addiw	t3, a3, 1808
80207e3a: 85 66        	lui	a3, 1
80207e3c: 1b 8f b6 47  	addiw	t5, a3, 1147
80207e40: 93 03 40 06  	li	t2, 100
80207e44: b7 e6 f5 05  	lui	a3, 24414
80207e48: 9b 8f f6 0f  	addiw	t6, a3, 255
80207e4c: aa 86        	mv	a3, a0
80207e4e: 33 35 65 02  	mulhu	a0, a0, t1
80207e52: 2d 81        	srli	a0, a0, 11
80207e54: bb 07 c5 03  	mulw	a5, a0, t3
80207e58: 3b 86 f6 40  	subw	a2, a3, a5
80207e5c: 93 17 06 03  	slli	a5, a2, 48
80207e60: c9 93        	srli	a5, a5, 50
80207e62: b3 87 e7 03  	mul	a5, a5, t5
80207e66: 13 d4 17 01  	srli	s0, a5, 17
80207e6a: c1 83        	srli	a5, a5, 16
80207e6c: 93 f7 e7 7f  	andi	a5, a5, 2046
80207e70: 3b 04 74 02  	mulw	s0, s0, t2
80207e74: 01 9e        	subw	a2, a2, s0
80207e76: 46 16        	slli	a2, a2, 49
80207e78: f6 97        	add	a5, a5, t4
80207e7a: 03 c4 17 00  	lbu	s0, 1(a5)
80207e7e: 41 92        	srli	a2, a2, 48
80207e80: b3 84 e8 00  	add	s1, a7, a4
80207e84: 83 c7 07 00  	lbu	a5, 0(a5)
80207e88: a3 80 84 00  	sb	s0, 1(s1)
80207e8c: 76 96        	add	a2, a2, t4
80207e8e: 03 44 16 00  	lbu	s0, 1(a2)
80207e92: 03 46 06 00  	lbu	a2, 0(a2)
80207e96: 23 80 f4 00  	sb	a5, 0(s1)
80207e9a: b3 87 e2 00  	add	a5, t0, a4
80207e9e: a3 80 87 00  	sb	s0, 1(a5)
80207ea2: 23 80 c7 00  	sb	a2, 0(a5)
80207ea6: 71 17        	addi	a4, a4, -4
80207ea8: e3 e2 df fa  	bltu	t6, a3, 0x80207e4c <.Lpcrel_hi1460+0x20>
80207eac: 13 07 77 02  	addi	a4, a4, 39
80207eb0: 93 06 30 06  	li	a3, 99
80207eb4: e3 fa a6 f4  	bgeu	a3, a0, 0x80207e08 <.Lpcrel_hi1459+0x14>
80207eb8: 13 16 05 03  	slli	a2, a0, 48
80207ebc: 49 92        	srli	a2, a2, 50
80207ebe: 85 66        	lui	a3, 1
80207ec0: 9b 86 b6 47  	addiw	a3, a3, 1147
80207ec4: 33 06 d6 02  	mul	a2, a2, a3
80207ec8: 45 82        	srli	a2, a2, 17
80207eca: 93 06 40 06  	li	a3, 100
80207ece: bb 06 d6 02  	mulw	a3, a2, a3
80207ed2: 15 9d        	subw	a0, a0, a3
80207ed4: 46 15        	slli	a0, a0, 49
80207ed6: 41 91        	srli	a0, a0, 48
80207ed8: 79 17        	addi	a4, a4, -2
80207eda: 76 95        	add	a0, a0, t4
80207edc: 83 46 15 00  	lbu	a3, 1(a0)
80207ee0: 03 45 05 00  	lbu	a0, 0(a0)
80207ee4: 93 07 11 00  	addi	a5, sp, 1
80207ee8: ba 97        	add	a5, a5, a4
80207eea: a3 80 d7 00  	sb	a3, 1(a5)
80207eee: 23 80 a7 00  	sb	a0, 0(a5)
80207ef2: 32 85        	mv	a0, a2
80207ef4: 29 46        	li	a2, 10
80207ef6: e3 6c c5 f0  	bltu	a0, a2, 0x80207e0e <.Lpcrel_hi1459+0x1a>
80207efa: 06 05        	slli	a0, a0, 1
80207efc: 93 06 e7 ff  	addi	a3, a4, -2
80207f00: 76 95        	add	a0, a0, t4
80207f02: 03 46 15 00  	lbu	a2, 1(a0)
80207f06: 03 45 05 00  	lbu	a0, 0(a0)
80207f0a: 13 07 11 00  	addi	a4, sp, 1
80207f0e: 36 97        	add	a4, a4, a3
80207f10: a3 00 c7 00  	sb	a2, 1(a4)
80207f14: 23 00 a7 00  	sb	a0, 0(a4)
80207f18: 13 07 11 00  	addi	a4, sp, 1
80207f1c: 36 97        	add	a4, a4, a3
80207f1e: 93 07 70 02  	li	a5, 39
80207f22: 95 8f        	sub	a5, a5, a3

0000000080207f24 <.Lpcrel_hi1461>:
80207f24: 17 25 00 00  	auipc	a0, 2
80207f28: 13 06 c5 c3  	addi	a2, a0, -964
80207f2c: 42 85        	mv	a0, a6
80207f2e: 81 46        	li	a3, 0
80207f30: 97 00 00 00  	auipc	ra, 0
80207f34: e7 80 60 86  	jalr	-1946(ra)
80207f38: e2 70        	ld	ra, 56(sp)
80207f3a: 42 74        	ld	s0, 48(sp)
80207f3c: a2 74        	ld	s1, 40(sp)
80207f3e: 21 61        	addi	sp, sp, 64
80207f40: 82 80        	ret

0000000080207f42 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
80207f42: 03 65 05 00  	lwu	a0, 0(a0)
80207f46: 2e 86        	mv	a2, a1
80207f48: 85 45        	li	a1, 1
80207f4a: 17 03 00 00  	auipc	t1, 0
80207f4e: 67 00 43 e9  	jr	-364(t1)

0000000080207f52 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
80207f52: 08 61        	ld	a0, 0(a0)
80207f54: 2e 86        	mv	a2, a1
80207f56: 85 45        	li	a1, 1
80207f58: 17 03 00 00  	auipc	t1, 0
80207f5c: 67 00 63 e8  	jr	-378(t1)

0000000080207f60 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
80207f60: 90 75        	ld	a2, 40(a1)
80207f62: 88 71        	ld	a0, 32(a1)
80207f64: 1c 6e        	ld	a5, 24(a2)

0000000080207f66 <.Lpcrel_hi1484>:
80207f66: 97 25 00 00  	auipc	a1, 2
80207f6a: 93 85 25 d6  	addi	a1, a1, -670
80207f6e: 15 46        	li	a2, 5
80207f70: 82 87        	jr	a5

0000000080207f72 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
80207f72: 10 65        	ld	a2, 8(a0)
80207f74: 08 61        	ld	a0, 0(a0)
80207f76: 1c 6e        	ld	a5, 24(a2)
80207f78: 82 87        	jr	a5

0000000080207f7a <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
80207f7a: 14 61        	ld	a3, 0(a0)
80207f7c: 10 65        	ld	a2, 8(a0)
80207f7e: 2e 85        	mv	a0, a1
80207f80: b6 85        	mv	a1, a3
80207f82: 17 03 00 00  	auipc	t1, 0
80207f86: 67 00 23 a8  	jr	-1406(t1)

0000000080207f8a <memset>:
80207f8a: 17 03 00 00  	auipc	t1, 0
80207f8e: 67 00 c3 0b  	jr	188(t1)

0000000080207f92 <memcpy>:
80207f92: 17 03 00 00  	auipc	t1, 0
80207f96: 67 00 83 00  	jr	8(t1)

0000000080207f9a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
80207f9a: bd 46        	li	a3, 15
80207f9c: 63 f9 c6 06  	bgeu	a3, a2, 0x8020800e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
80207fa0: bb 06 a0 40  	negw	a3, a0
80207fa4: 13 f8 76 00  	andi	a6, a3, 7
80207fa8: b3 03 05 01  	add	t2, a0, a6
80207fac: 63 0c 08 00  	beqz	a6, 0x80207fc4 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
80207fb0: aa 87        	mv	a5, a0
80207fb2: ae 86        	mv	a3, a1
80207fb4: 03 87 06 00  	lb	a4, 0(a3)
80207fb8: 23 80 e7 00  	sb	a4, 0(a5)
80207fbc: 85 07        	addi	a5, a5, 1
80207fbe: 85 06        	addi	a3, a3, 1
80207fc0: e3 ea 77 fe  	bltu	a5, t2, 0x80207fb4 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
80207fc4: b3 88 05 01  	add	a7, a1, a6
80207fc8: 33 08 06 41  	sub	a6, a2, a6
80207fcc: 93 72 88 ff  	andi	t0, a6, -8
80207fd0: 13 f3 78 00  	andi	t1, a7, 7
80207fd4: b3 86 53 00  	add	a3, t2, t0
80207fd8: 63 0e 03 02  	beqz	t1, 0x80208014 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
80207fdc: 63 56 50 04  	blez	t0, 0x80208028 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80207fe0: 0e 03        	slli	t1, t1, 3
80207fe2: 93 f7 88 ff  	andi	a5, a7, -8
80207fe6: 90 63        	ld	a2, 0(a5)
80207fe8: bb 05 60 40  	negw	a1, t1
80207fec: 13 fe 85 03  	andi	t3, a1, 56
80207ff0: a1 07        	addi	a5, a5, 8
80207ff2: 98 63        	ld	a4, 0(a5)
80207ff4: 33 56 66 00  	srl	a2, a2, t1
80207ff8: b3 15 c7 01  	sll	a1, a4, t3
80207ffc: d1 8d        	or	a1, a1, a2
80207ffe: 23 b0 b3 00  	sd	a1, 0(t2)
80208002: a1 03        	addi	t2, t2, 8
80208004: a1 07        	addi	a5, a5, 8
80208006: 3a 86        	mv	a2, a4
80208008: e3 e5 d3 fe  	bltu	t2, a3, 0x80207ff2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
8020800c: 31 a8        	j	0x80208028 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
8020800e: aa 86        	mv	a3, a0
80208010: 0d e2        	bnez	a2, 0x80208032 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
80208012: 0d a8        	j	0x80208044 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80208014: 63 5a 50 00  	blez	t0, 0x80208028 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80208018: c6 85        	mv	a1, a7
8020801a: 90 61        	ld	a2, 0(a1)
8020801c: 23 b0 c3 00  	sd	a2, 0(t2)
80208020: a1 03        	addi	t2, t2, 8
80208022: a1 05        	addi	a1, a1, 8
80208024: e3 eb d3 fe  	bltu	t2, a3, 0x8020801a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
80208028: b3 85 58 00  	add	a1, a7, t0
8020802c: 13 76 78 00  	andi	a2, a6, 7
80208030: 11 ca        	beqz	a2, 0x80208044 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80208032: 36 96        	add	a2, a2, a3
80208034: 03 87 05 00  	lb	a4, 0(a1)
80208038: 23 80 e6 00  	sb	a4, 0(a3)
8020803c: 85 06        	addi	a3, a3, 1
8020803e: 85 05        	addi	a1, a1, 1
80208040: e3 ea c6 fe  	bltu	a3, a2, 0x80208034 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
80208044: 82 80        	ret

0000000080208046 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
80208046: bd 46        	li	a3, 15
80208048: 63 fa c6 04  	bgeu	a3, a2, 0x8020809c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
8020804c: bb 06 a0 40  	negw	a3, a0
80208050: 9d 8a        	andi	a3, a3, 7
80208052: 33 07 d5 00  	add	a4, a0, a3
80208056: 99 c6        	beqz	a3, 0x80208064 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
80208058: aa 87        	mv	a5, a0
8020805a: 23 80 b7 00  	sb	a1, 0(a5)
8020805e: 85 07        	addi	a5, a5, 1
80208060: e3 ed e7 fe  	bltu	a5, a4, 0x8020805a <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
80208064: b3 08 d6 40  	sub	a7, a2, a3
80208068: 93 f7 88 ff  	andi	a5, a7, -8
8020806c: b3 06 f7 00  	add	a3, a4, a5
80208070: 63 52 f0 02  	blez	a5, 0x80208094 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
80208074: 13 98 85 03  	slli	a6, a1, 56
80208078: b7 17 10 10  	lui	a5, 65793
8020807c: 92 07        	slli	a5, a5, 4
8020807e: 93 87 07 10  	addi	a5, a5, 256
80208082: 33 36 f8 02  	mulhu	a2, a6, a5
80208086: 93 17 06 02  	slli	a5, a2, 32
8020808a: d1 8f        	or	a5, a5, a2
8020808c: 1c e3        	sd	a5, 0(a4)
8020808e: 21 07        	addi	a4, a4, 8
80208090: e3 6e d7 fe  	bltu	a4, a3, 0x8020808c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
80208094: 13 f6 78 00  	andi	a2, a7, 7
80208098: 01 e6        	bnez	a2, 0x802080a0 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
8020809a: 09 a8        	j	0x802080ac <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
8020809c: aa 86        	mv	a3, a0
8020809e: 19 c6        	beqz	a2, 0x802080ac <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
802080a0: 36 96        	add	a2, a2, a3
802080a2: 23 80 b6 00  	sb	a1, 0(a3)
802080a6: 85 06        	addi	a3, a3, 1
802080a8: e3 ed c6 fe  	bltu	a3, a2, 0x802080a2 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
802080ac: 82 80        	ret
