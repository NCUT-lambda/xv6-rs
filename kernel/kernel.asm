
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 c0 58  	jalr	1420(ra)
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
80201170: 97 10 00 00  	auipc	ra, 1
80201174: e7 80 60 7d  	jalr	2006(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2257bf173959f2a3E>:
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
80202030: a1 65        	lui	a1, 8
80202032: 9b 85 05 c8  	addiw	a1, a1, -896
80202036: 33 01 b1 40  	sub	sp, sp, a1
8020203a: aa 8a        	mv	s5, a0
8020203c: 0f 00 30 03  	fence	rw, rw
80202040: 08 61        	ld	a0, 0(a0)
80202042: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202046: 65 ed        	bnez	a0, 0x8020213e <.Lpcrel_hi0+0xc2>
80202048: 85 49        	li	s3, 1
8020204a: 2f b5 0a 16  	lr.d.aqrl	a0, (s5)
8020204e: 65 e9        	bnez	a0, 0x8020213e <.Lpcrel_hi0+0xc2>
80202050: af b5 3a 1f  	sc.d.aqrl	a1, s3, (s5)
80202054: fd f9        	bnez	a1, 0x8020204a <_ZN4spin4once13Once$LT$T$GT$9call_once17h2257bf173959f2a3E+0x4a>
80202056: 21 65        	lui	a0, 8
80202058: 1b 05 05 47  	addiw	a0, a0, 1136
8020205c: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202060: 23 30 5a 01  	sd	s5, 0(s4)
80202064: 21 65        	lui	a0, 8
80202066: 1b 05 95 45  	addiw	a0, a0, 1113
8020206a: 33 09 a4 40  	sub	s2, s0, a0
8020206e: 13 0b 00 04  	li	s6, 64
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202072: 11 65        	lui	a0, 4
80202074: 1b 05 05 1e  	addiw	a0, a0, 480
80202078: b3 04 a4 40  	sub	s1, s0, a0

000000008020207c <.Lpcrel_hi0>:
8020207c: 17 35 00 00  	auipc	a0, 3
80202080: 93 0b c5 4b  	addi	s7, a0, 1212
80202084: 11 4c        	li	s8, 4
;         Self {
80202086: 13 06 80 04  	li	a2, 72
8020208a: 4a 85        	mv	a0, s2
8020208c: 81 45        	li	a1, 0
8020208e: 97 30 00 00  	auipc	ra, 3
80202092: e7 80 e0 8e  	jalr	-1810(ra)
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202096: 13 85 04 f8  	addi	a0, s1, -128
8020209a: 13 06 00 08  	li	a2, 128
8020209e: 81 45        	li	a1, 0
802020a0: 97 30 00 00  	auipc	ra, 3
802020a4: e7 80 c0 8d  	jalr	-1828(ra)
802020a8: 23 b0 74 01  	sd	s7, 0(s1)
802020ac: 23 b4 84 01  	sd	s8, 8(s1)
802020b0: 23 b8 04 00  	sd	zero, 16(s1)
802020b4: 23 8c 04 00  	sb	zero, 24(s1)
802020b8: 13 85 94 01  	addi	a0, s1, 25
802020bc: a1 65        	lui	a1, 8
802020be: 9b 85 05 46  	addiw	a1, a1, 1120
802020c2: b3 05 b4 40  	sub	a1, s0, a1
802020c6: 13 06 f0 04  	li	a2, 79
802020ca: 97 30 00 00  	auipc	ra, 3
802020ce: e7 80 a0 8b  	jalr	-1862(ra)
802020d2: 23 b4 34 07  	sd	s3, 104(s1)
802020d6: 23 b8 04 06  	sd	zero, 112(s1)
802020da: 23 bc 04 06  	sd	zero, 120(s1)
802020de: 23 90 04 08  	sh	zero, 128(s1)
802020e2: 7d 1b        	addi	s6, s6, -1
802020e4: 93 84 84 10  	addi	s1, s1, 264
802020e8: e3 1f 0b f8  	bnez	s6, 0x80202086 <.Lpcrel_hi0+0xa>
802020ec: 11 65        	lui	a0, 4
802020ee: 1b 09 05 20  	addiw	s2, a0, 512
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
802020f2: 21 65        	lui	a0, 8
802020f4: 1b 05 05 46  	addiw	a0, a0, 1120
802020f8: 33 05 a4 40  	sub	a0, s0, a0
802020fc: 91 65        	lui	a1, 4
802020fe: 9b 85 05 26  	addiw	a1, a1, 608
80202102: b3 05 b4 40  	sub	a1, s0, a1
80202106: 4a 86        	mv	a2, s2
80202108: 97 30 00 00  	auipc	ra, 3
8020210c: e7 80 c0 87  	jalr	-1924(ra)
80202110: 03 b5 8a 00  	ld	a0, 8(s5)
80202114: 59 c1        	beqz	a0, 0x8020219a <.Lpcrel_hi0+0x11e>
80202116: 93 84 0a 10  	addi	s1, s5, 256
8020211a: 93 09 00 04  	li	s3, 64
8020211e: 31 a0        	j	0x8020212a <.Lpcrel_hi0+0xae>
80202120: fd 19        	addi	s3, s3, -1
80202122: 93 84 84 10  	addi	s1, s1, 264
80202126: 63 8a 09 06  	beqz	s3, 0x8020219a <.Lpcrel_hi0+0x11e>
8020212a: 8c 60        	ld	a1, 0(s1)
8020212c: f5 d9        	beqz	a1, 0x80202120 <.Lpcrel_hi0+0xa4>
8020212e: 03 b5 84 ff  	ld	a0, -8(s1)
80202132: 05 46        	li	a2, 1
80202134: 97 20 00 00  	auipc	ra, 2
80202138: e7 80 60 bc  	jalr	-1082(ra)
8020213c: d5 b7        	j	0x80202120 <.Lpcrel_hi0+0xa4>
8020213e: 85 45        	li	a1, 1
;             match status {
80202140: 63 1c b5 00  	bne	a0, a1, 0x80202158 <.Lpcrel_hi0+0xdc>
80202144: 0f 00 00 01  	fence	w, 0
80202148: 0f 00 30 03  	fence	rw, rw
8020214c: 03 b5 0a 00  	ld	a0, 0(s5)
80202150: 0f 00 30 02  	fence	r, rw
;             match status {
80202154: e3 08 b5 fe  	beq	a0, a1, 0x80202144 <.Lpcrel_hi0+0xc8>
80202158: 89 45        	li	a1, 2
;             match status {
8020215a: 63 11 b5 08  	bne	a0, a1, 0x802021dc <.Lpcrel_hi0+0x160>
8020215e: 93 89 0a 01  	addi	s3, s5, 16
;     }
80202162: 4e 85        	mv	a0, s3
80202164: a1 65        	lui	a1, 8
80202166: 9b 85 05 c8  	addiw	a1, a1, -896
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
802021a4: 21 65        	lui	a0, 8
802021a6: 1b 05 05 46  	addiw	a0, a0, 1120
802021aa: b3 05 a4 40  	sub	a1, s0, a0
802021ae: 4e 85        	mv	a0, s3
802021b0: 4a 86        	mv	a2, s2
802021b2: 97 20 00 00  	auipc	ra, 2
802021b6: e7 80 20 7d  	jalr	2002(ra)
;                 finish.panicked = false;
802021ba: 23 04 0a 00  	sb	zero, 8(s4)
802021be: 0f 00 10 03  	fence	rw, w
802021c2: 09 45        	li	a0, 2
802021c4: 23 b0 aa 00  	sd	a0, 0(s5)
802021c8: 21 65        	lui	a0, 8
802021ca: 1b 05 05 47  	addiw	a0, a0, 1136
802021ce: 33 05 a4 40  	sub	a0, s0, a0
802021d2: 97 20 00 00  	auipc	ra, 2
802021d6: e7 80 00 b3  	jalr	-1232(ra)
802021da: 61 b7        	j	0x80202162 <.Lpcrel_hi0+0xe6>
;             match status {
802021dc: 05 e1        	bnez	a0, 0x802021fc <.Lpcrel_hi3>

00000000802021de <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
802021de: 17 35 00 00  	auipc	a0, 3
802021e2: 13 05 a5 ea  	addi	a0, a0, -342

00000000802021e6 <.Lpcrel_hi2>:
802021e6: 97 35 00 00  	auipc	a1, 3
802021ea: 13 86 a5 ec  	addi	a2, a1, -310
802021ee: 93 05 80 02  	li	a1, 40
802021f2: 97 20 00 00  	auipc	ra, 2
802021f6: e7 80 e0 d4  	jalr	-690(ra)
802021fa: 00 00        	unimp	

00000000802021fc <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
802021fc: 17 35 00 00  	auipc	a0, 3
80202200: 13 05 45 e0  	addi	a0, a0, -508

0000000080202204 <.Lpcrel_hi4>:
80202204: 97 35 00 00  	auipc	a1, 3
80202208: 13 86 c5 e6  	addi	a2, a1, -404
8020220c: c5 45        	li	a1, 17
8020220e: 97 20 00 00  	auipc	ra, 2
80202212: e7 80 20 d3  	jalr	-718(ra)
80202216: 00 00        	unimp	

0000000080202218 <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202218: 13 01 01 81  	addi	sp, sp, -2032
8020221c: 23 34 11 7e  	sd	ra, 2024(sp)
80202220: 23 30 81 7e  	sd	s0, 2016(sp)
80202224: 23 3c 91 7c  	sd	s1, 2008(sp)
80202228: 23 38 21 7d  	sd	s2, 2000(sp)
8020222c: 23 34 31 7d  	sd	s3, 1992(sp)
80202230: 13 04 01 7f  	addi	s0, sp, 2032
80202234: 13 01 01 ba  	addi	sp, sp, -1120
80202238: aa 84        	mv	s1, a0
8020223a: 0f 00 30 03  	fence	rw, rw
8020223e: 08 61        	ld	a0, 0(a0)
80202240: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202244: 63 1a 05 36  	bnez	a0, 0x802025b8 <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3a0>
80202248: 05 49        	li	s2, 1
8020224a: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
8020224e: 63 15 05 36  	bnez	a0, 0x802025b8 <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3a0>
80202252: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
80202256: f5 f9        	bnez	a1, 0x8020224a <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x32>
80202258: 93 09 04 80  	addi	s3, s0, -2048
8020225c: 93 89 89 bb  	addi	s3, s3, -1096
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202260: 23 b0 99 00  	sd	s1, 0(s3)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80202264: 23 0c 04 9c  	sb	zero, -1576(s0)
80202268: 23 38 04 9c  	sd	zero, -1584(s0)
8020226c: 23 34 04 9c  	sd	zero, -1592(s0)
80202270: 23 30 04 9e  	sd	zero, -1568(s0)
80202274: 23 34 04 9e  	sd	zero, -1560(s0)
80202278: 23 08 04 9e  	sb	zero, -1552(s0)
8020227c: 23 3c 04 9e  	sd	zero, -1544(s0)
80202280: 23 30 04 a0  	sd	zero, -1536(s0)
80202284: 23 04 04 a0  	sb	zero, -1528(s0)
80202288: 23 38 04 a0  	sd	zero, -1520(s0)
8020228c: 23 3c 04 a0  	sd	zero, -1512(s0)
80202290: 23 00 04 a2  	sb	zero, -1504(s0)
80202294: 23 34 04 a2  	sd	zero, -1496(s0)
80202298: 23 38 04 a2  	sd	zero, -1488(s0)
8020229c: 23 0c 04 a2  	sb	zero, -1480(s0)
802022a0: 23 30 04 a4  	sd	zero, -1472(s0)
802022a4: 23 34 04 a4  	sd	zero, -1464(s0)
802022a8: 23 08 04 a4  	sb	zero, -1456(s0)
802022ac: 23 04 04 a6  	sb	zero, -1432(s0)
802022b0: 23 30 04 a6  	sd	zero, -1440(s0)
802022b4: 23 3c 04 a4  	sd	zero, -1448(s0)
802022b8: 23 38 04 a6  	sd	zero, -1424(s0)
802022bc: 23 3c 04 a6  	sd	zero, -1416(s0)
802022c0: 23 00 04 a8  	sb	zero, -1408(s0)
802022c4: 23 34 04 a8  	sd	zero, -1400(s0)
802022c8: 23 38 04 a8  	sd	zero, -1392(s0)
802022cc: 23 0c 04 a8  	sb	zero, -1384(s0)
802022d0: 23 30 04 aa  	sd	zero, -1376(s0)
802022d4: 23 34 04 aa  	sd	zero, -1368(s0)
802022d8: 23 08 04 aa  	sb	zero, -1360(s0)
802022dc: 23 3c 04 aa  	sd	zero, -1352(s0)
802022e0: 23 30 04 ac  	sd	zero, -1344(s0)
802022e4: 23 04 04 ac  	sb	zero, -1336(s0)
802022e8: 23 38 04 ac  	sd	zero, -1328(s0)
802022ec: 23 3c 04 ac  	sd	zero, -1320(s0)
802022f0: 23 00 04 ae  	sb	zero, -1312(s0)
802022f4: 23 0c 04 ae  	sb	zero, -1288(s0)
802022f8: 23 38 04 ae  	sd	zero, -1296(s0)
802022fc: 23 34 04 ae  	sd	zero, -1304(s0)
80202300: 23 08 04 b0  	sb	zero, -1264(s0)
80202304: 23 34 04 b0  	sd	zero, -1272(s0)
80202308: 23 30 04 b0  	sd	zero, -1280(s0)
8020230c: 23 04 04 b2  	sb	zero, -1240(s0)
80202310: 23 30 04 b2  	sd	zero, -1248(s0)
80202314: 23 3c 04 b0  	sd	zero, -1256(s0)
80202318: 23 00 04 b4  	sb	zero, -1216(s0)
8020231c: 23 3c 04 b2  	sd	zero, -1224(s0)
80202320: 23 38 04 b2  	sd	zero, -1232(s0)
80202324: 23 0c 04 b4  	sb	zero, -1192(s0)
80202328: 23 38 04 b4  	sd	zero, -1200(s0)
8020232c: 23 34 04 b4  	sd	zero, -1208(s0)
80202330: 23 30 04 b6  	sd	zero, -1184(s0)
80202334: 23 34 04 b6  	sd	zero, -1176(s0)
80202338: 23 08 04 b6  	sb	zero, -1168(s0)
8020233c: 23 04 04 b8  	sb	zero, -1144(s0)
80202340: 23 30 04 b8  	sd	zero, -1152(s0)
80202344: 23 3c 04 b6  	sd	zero, -1160(s0)
80202348: 23 00 04 ba  	sb	zero, -1120(s0)
8020234c: 23 3c 04 b8  	sd	zero, -1128(s0)
80202350: 23 38 04 b8  	sd	zero, -1136(s0)
80202354: 23 0c 04 ba  	sb	zero, -1096(s0)
80202358: 23 38 04 ba  	sd	zero, -1104(s0)
8020235c: 23 34 04 ba  	sd	zero, -1112(s0)
80202360: 23 08 04 bc  	sb	zero, -1072(s0)
80202364: 23 34 04 bc  	sd	zero, -1080(s0)
80202368: 23 30 04 bc  	sd	zero, -1088(s0)
8020236c: 23 04 04 be  	sb	zero, -1048(s0)
80202370: 23 30 04 be  	sd	zero, -1056(s0)
80202374: 23 3c 04 bc  	sd	zero, -1064(s0)
80202378: 23 00 04 c0  	sb	zero, -1024(s0)
8020237c: 23 3c 04 be  	sd	zero, -1032(s0)
80202380: 23 38 04 be  	sd	zero, -1040(s0)
80202384: 23 0c 04 c0  	sb	zero, -1000(s0)
80202388: 23 38 04 c0  	sd	zero, -1008(s0)
8020238c: 23 34 04 c0  	sd	zero, -1016(s0)
80202390: 23 08 04 c2  	sb	zero, -976(s0)
80202394: 23 34 04 c2  	sd	zero, -984(s0)
80202398: 23 30 04 c2  	sd	zero, -992(s0)
8020239c: 23 04 04 c4  	sb	zero, -952(s0)
802023a0: 23 30 04 c4  	sd	zero, -960(s0)
802023a4: 23 3c 04 c2  	sd	zero, -968(s0)
802023a8: 23 00 04 c6  	sb	zero, -928(s0)
802023ac: 23 3c 04 c4  	sd	zero, -936(s0)
802023b0: 23 38 04 c4  	sd	zero, -944(s0)
802023b4: 23 0c 04 c6  	sb	zero, -904(s0)
802023b8: 23 38 04 c6  	sd	zero, -912(s0)
802023bc: 23 34 04 c6  	sd	zero, -920(s0)
802023c0: 23 08 04 c8  	sb	zero, -880(s0)
802023c4: 23 34 04 c8  	sd	zero, -888(s0)
802023c8: 23 30 04 c8  	sd	zero, -896(s0)
802023cc: 23 04 04 ca  	sb	zero, -856(s0)
802023d0: 23 30 04 ca  	sd	zero, -864(s0)
802023d4: 23 3c 04 c8  	sd	zero, -872(s0)
802023d8: 23 00 04 cc  	sb	zero, -832(s0)
802023dc: 23 3c 04 ca  	sd	zero, -840(s0)
802023e0: 23 38 04 ca  	sd	zero, -848(s0)
802023e4: 23 0c 04 cc  	sb	zero, -808(s0)
802023e8: 23 38 04 cc  	sd	zero, -816(s0)
802023ec: 23 34 04 cc  	sd	zero, -824(s0)
802023f0: 23 08 04 ce  	sb	zero, -784(s0)
802023f4: 23 34 04 ce  	sd	zero, -792(s0)
802023f8: 23 30 04 ce  	sd	zero, -800(s0)
802023fc: 23 04 04 d0  	sb	zero, -760(s0)
80202400: 23 30 04 d0  	sd	zero, -768(s0)
80202404: 23 3c 04 ce  	sd	zero, -776(s0)
80202408: 23 00 04 d2  	sb	zero, -736(s0)
8020240c: 23 3c 04 d0  	sd	zero, -744(s0)
80202410: 23 38 04 d0  	sd	zero, -752(s0)
80202414: 23 0c 04 d2  	sb	zero, -712(s0)
80202418: 23 38 04 d2  	sd	zero, -720(s0)
8020241c: 23 34 04 d2  	sd	zero, -728(s0)
80202420: 23 08 04 d4  	sb	zero, -688(s0)
80202424: 23 34 04 d4  	sd	zero, -696(s0)
80202428: 23 30 04 d4  	sd	zero, -704(s0)
8020242c: 23 04 04 d6  	sb	zero, -664(s0)
80202430: 23 30 04 d6  	sd	zero, -672(s0)
80202434: 23 3c 04 d4  	sd	zero, -680(s0)
80202438: 23 00 04 d8  	sb	zero, -640(s0)
8020243c: 23 3c 04 d6  	sd	zero, -648(s0)
80202440: 23 38 04 d6  	sd	zero, -656(s0)
80202444: 23 0c 04 d8  	sb	zero, -616(s0)
80202448: 23 38 04 d8  	sd	zero, -624(s0)
8020244c: 23 34 04 d8  	sd	zero, -632(s0)
80202450: 23 08 04 da  	sb	zero, -592(s0)
80202454: 23 34 04 da  	sd	zero, -600(s0)
80202458: 23 30 04 da  	sd	zero, -608(s0)
8020245c: 23 04 04 dc  	sb	zero, -568(s0)
80202460: 23 30 04 dc  	sd	zero, -576(s0)
80202464: 23 3c 04 da  	sd	zero, -584(s0)
80202468: 23 00 04 de  	sb	zero, -544(s0)
8020246c: 23 3c 04 dc  	sd	zero, -552(s0)
80202470: 23 38 04 dc  	sd	zero, -560(s0)
80202474: 23 0c 04 de  	sb	zero, -520(s0)
80202478: 23 38 04 de  	sd	zero, -528(s0)
8020247c: 23 34 04 de  	sd	zero, -536(s0)
80202480: 23 08 04 e0  	sb	zero, -496(s0)
80202484: 23 34 04 e0  	sd	zero, -504(s0)
80202488: 23 30 04 e0  	sd	zero, -512(s0)
8020248c: 23 04 04 e2  	sb	zero, -472(s0)
80202490: 23 30 04 e2  	sd	zero, -480(s0)
80202494: 23 3c 04 e0  	sd	zero, -488(s0)
80202498: 23 00 04 e4  	sb	zero, -448(s0)
8020249c: 23 3c 04 e2  	sd	zero, -456(s0)
802024a0: 23 38 04 e2  	sd	zero, -464(s0)
802024a4: 23 0c 04 e4  	sb	zero, -424(s0)
802024a8: 23 38 04 e4  	sd	zero, -432(s0)
802024ac: 23 34 04 e4  	sd	zero, -440(s0)
802024b0: 23 08 04 e6  	sb	zero, -400(s0)
802024b4: 23 34 04 e6  	sd	zero, -408(s0)
802024b8: 23 30 04 e6  	sd	zero, -416(s0)
802024bc: 23 04 04 e8  	sb	zero, -376(s0)
802024c0: 23 30 04 e8  	sd	zero, -384(s0)
802024c4: 23 3c 04 e6  	sd	zero, -392(s0)
802024c8: 23 00 04 ea  	sb	zero, -352(s0)
802024cc: 23 3c 04 e8  	sd	zero, -360(s0)
802024d0: 23 38 04 e8  	sd	zero, -368(s0)
802024d4: 23 0c 04 ea  	sb	zero, -328(s0)
802024d8: 23 38 04 ea  	sd	zero, -336(s0)
802024dc: 23 34 04 ea  	sd	zero, -344(s0)
802024e0: 23 08 04 ec  	sb	zero, -304(s0)
802024e4: 23 34 04 ec  	sd	zero, -312(s0)
802024e8: 23 30 04 ec  	sd	zero, -320(s0)
802024ec: 23 04 04 ee  	sb	zero, -280(s0)
802024f0: 23 30 04 ee  	sd	zero, -288(s0)
802024f4: 23 3c 04 ec  	sd	zero, -296(s0)
802024f8: 23 00 04 f0  	sb	zero, -256(s0)
802024fc: 23 3c 04 ee  	sd	zero, -264(s0)
80202500: 23 38 04 ee  	sd	zero, -272(s0)
80202504: 23 0c 04 f0  	sb	zero, -232(s0)
80202508: 23 38 04 f0  	sd	zero, -240(s0)
8020250c: 23 34 04 f0  	sd	zero, -248(s0)
80202510: 23 08 04 f2  	sb	zero, -208(s0)
80202514: 23 34 04 f2  	sd	zero, -216(s0)
80202518: 23 30 04 f2  	sd	zero, -224(s0)
8020251c: 23 04 04 f4  	sb	zero, -184(s0)
80202520: 23 30 04 f4  	sd	zero, -192(s0)
80202524: 23 3c 04 f2  	sd	zero, -200(s0)
80202528: 23 00 04 f6  	sb	zero, -160(s0)
8020252c: 23 3c 04 f4  	sd	zero, -168(s0)
80202530: 23 38 04 f4  	sd	zero, -176(s0)
80202534: 23 0c 04 f6  	sb	zero, -136(s0)
80202538: 23 38 04 f6  	sd	zero, -144(s0)
8020253c: 23 34 04 f6  	sd	zero, -152(s0)
80202540: 23 08 04 f8  	sb	zero, -112(s0)
80202544: 23 34 04 f8  	sd	zero, -120(s0)
80202548: 23 30 04 f8  	sd	zero, -128(s0)
8020254c: 23 04 04 fa  	sb	zero, -88(s0)
80202550: 23 30 04 fa  	sd	zero, -96(s0)
80202554: 23 3c 04 f8  	sd	zero, -104(s0)
80202558: 23 00 04 fc  	sb	zero, -64(s0)
8020255c: 23 3c 04 fa  	sd	zero, -72(s0)
80202560: 23 38 04 fa  	sd	zero, -80(s0)
80202564: 13 05 04 80  	addi	a0, s0, -2048
80202568: 13 05 85 bc  	addi	a0, a0, -1080
8020256c: 93 05 84 9c  	addi	a1, s0, -1592
80202570: 13 06 00 60  	li	a2, 1536
80202574: 97 20 00 00  	auipc	ra, 2
80202578: e7 80 00 41  	jalr	1040(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020257c: 23 b4 24 01  	sd	s2, 8(s1)
80202580: 13 89 04 01  	addi	s2, s1, 16
80202584: 93 05 04 80  	addi	a1, s0, -2048
80202588: 93 85 85 bc  	addi	a1, a1, -1080
8020258c: 13 06 00 60  	li	a2, 1536
80202590: 4a 85        	mv	a0, s2
80202592: 97 20 00 00  	auipc	ra, 2
80202596: e7 80 20 3f  	jalr	1010(ra)
;                 finish.panicked = false;
8020259a: 23 84 09 00  	sb	zero, 8(s3)
8020259e: 0f 00 10 03  	fence	rw, w
802025a2: 09 45        	li	a0, 2
802025a4: 88 e0        	sd	a0, 0(s1)
802025a6: 13 05 04 80  	addi	a0, s0, -2048
802025aa: 13 05 85 bb  	addi	a0, a0, -1096
802025ae: 97 10 00 00  	auipc	ra, 1
802025b2: e7 80 40 75  	jalr	1876(ra)
802025b6: 15 a0        	j	0x802025da <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3c2>
802025b8: 85 45        	li	a1, 1
;             match status {
802025ba: 63 1b b5 00  	bne	a0, a1, 0x802025d0 <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3b8>
802025be: 0f 00 00 01  	fence	w, 0
802025c2: 0f 00 30 03  	fence	rw, rw
802025c6: 88 60        	ld	a0, 0(s1)
802025c8: 0f 00 30 02  	fence	r, rw
;             match status {
802025cc: e3 09 b5 fe  	beq	a0, a1, 0x802025be <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3a6>
802025d0: 89 45        	li	a1, 2
;             match status {
802025d2: 63 14 b5 02  	bne	a0, a1, 0x802025fa <_ZN4spin4once13Once$LT$T$GT$9call_once17h6bfb2a937f0442a4E+0x3e2>
802025d6: 13 89 04 01  	addi	s2, s1, 16
;     }
802025da: 4a 85        	mv	a0, s2
802025dc: 13 01 01 46  	addi	sp, sp, 1120
802025e0: 83 30 81 7e  	ld	ra, 2024(sp)
802025e4: 03 34 01 7e  	ld	s0, 2016(sp)
802025e8: 83 34 81 7d  	ld	s1, 2008(sp)
802025ec: 03 39 01 7d  	ld	s2, 2000(sp)
802025f0: 83 39 81 7c  	ld	s3, 1992(sp)
802025f4: 13 01 01 7f  	addi	sp, sp, 2032
802025f8: 82 80        	ret
;             match status {
802025fa: 05 e1        	bnez	a0, 0x8020261a <.Lpcrel_hi12>

00000000802025fc <.Lpcrel_hi10>:
;                 INCOMPLETE => unreachable!(),
802025fc: 17 35 00 00  	auipc	a0, 3
80202600: 13 05 c5 a8  	addi	a0, a0, -1396

0000000080202604 <.Lpcrel_hi11>:
80202604: 97 35 00 00  	auipc	a1, 3
80202608: 13 86 c5 aa  	addi	a2, a1, -1364
8020260c: 93 05 80 02  	li	a1, 40
80202610: 97 20 00 00  	auipc	ra, 2
80202614: e7 80 00 93  	jalr	-1744(ra)
80202618: 00 00        	unimp	

000000008020261a <.Lpcrel_hi12>:
;                 PANICKED => panic!("Once has panicked"),
8020261a: 17 35 00 00  	auipc	a0, 3
8020261e: 13 05 65 9e  	addi	a0, a0, -1562

0000000080202622 <.Lpcrel_hi13>:
80202622: 97 35 00 00  	auipc	a1, 3
80202626: 13 86 e5 a4  	addi	a2, a1, -1458
8020262a: c5 45        	li	a1, 17
8020262c: 97 20 00 00  	auipc	ra, 2
80202630: e7 80 40 91  	jalr	-1772(ra)
80202634: 00 00        	unimp	

0000000080202636 <_ZN6kernel4lock8spinlock8Spinlock7acquire17h625cfe8e1c9df9d9E>:
;     pub fn acquire(&mut self) {
80202636: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202638: 86 ec        	sd	ra, 88(sp)
8020263a: a2 e8        	sd	s0, 80(sp)
8020263c: a6 e4        	sd	s1, 72(sp)
8020263e: ca e0        	sd	s2, 64(sp)
80202640: 4e fc        	sd	s3, 56(sp)
80202642: 52 f8        	sd	s4, 48(sp)
80202644: 80 10        	addi	s0, sp, 96
80202646: f3 29 00 10  	csrr	s3, sstatus
8020264a: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
8020264c: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202650: 92 84        	mv	s1, tp
80202652: 2a 89        	mv	s2, a0

0000000080202654 <.Lpcrel_hi0>:
;         self.0.call_once(builder)
80202654: 17 55 01 00  	auipc	a0, 21
80202658: 13 05 45 ad  	addi	a0, a0, -1324
8020265c: 97 00 00 00  	auipc	ra, 0
80202660: e7 80 c0 bb  	jalr	-1092(ra)
80202664: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202668: 63 fc b4 0a  	bgeu	s1, a1, 0x80202720 <.Lpcrel_hi1>
8020266c: e1 45        	li	a1, 24
;     if mc.noff == 0 {
8020266e: 33 86 b4 02  	mul	a2, s1, a1
80202672: 2a 96        	add	a2, a2, a0
80202674: 0c 66        	ld	a1, 8(a2)
80202676: 13 05 86 00  	addi	a0, a2, 8
8020267a: 91 e5        	bnez	a1, 0x80202686 <.Lpcrel_hi0+0x32>
;         mc.intena = old;
8020267c: fa 19        	slli	s3, s3, 62
8020267e: 93 d6 f9 03  	srli	a3, s3, 63
80202682: 23 08 d6 00  	sb	a3, 16(a2)
;     mc.noff += 1;
80202686: 85 05        	addi	a1, a1, 1
80202688: 0c e1        	sd	a1, 0(a0)
8020268a: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020268e: 93 04 89 01  	addi	s1, s2, 24
80202692: 15 c5        	beqz	a0, 0x802026be <.Lpcrel_hi2+0x24>
80202694: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202698: 92 89        	mv	s3, tp

000000008020269a <.Lpcrel_hi2>:
;         self.0.call_once(builder)
8020269a: 17 55 01 00  	auipc	a0, 21
8020269e: 13 05 e5 a8  	addi	a0, a0, -1394
802026a2: 97 00 00 00  	auipc	ra, 0
802026a6: e7 80 60 b7  	jalr	-1162(ra)
802026aa: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802026ae: 63 fa b9 08  	bgeu	s3, a1, 0x80202742 <.Lpcrel_hi3>
802026b2: e1 45        	li	a1, 24
; 	&mut CPUS.get_mut()[id]
802026b4: b3 85 b9 02  	mul	a1, s3, a1
802026b8: 2e 95        	add	a0, a0, a1
;         if self.holding() {
802026ba: 63 00 aa 0a  	beq	s4, a0, 0x8020275a <.Lpcrel_hi4>
802026be: 13 f5 c4 ff  	andi	a0, s1, -4
802026c2: 93 05 f0 0f  	li	a1, 255
802026c6: 05 46        	li	a2, 1
802026c8: af 26 05 14  	lr.w.aq	a3, (a0)
802026cc: 33 f7 b6 00  	and	a4, a3, a1
802026d0: 01 eb        	bnez	a4, 0x802026e0 <.Lpcrel_hi2+0x46>
802026d2: 33 c7 c6 00  	xor	a4, a3, a2
802026d6: 6d 8f        	and	a4, a4, a1
802026d8: 35 8f        	xor	a4, a4, a3
802026da: 2f 27 e5 18  	sc.w	a4, a4, (a0)
802026de: 6d f7        	bnez	a4, 0x802026c8 <.Lpcrel_hi2+0x2e>
802026e0: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
802026e4: 69 fd        	bnez	a0, 0x802026be <.Lpcrel_hi2+0x24>
802026e6: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802026ea: 92 84        	mv	s1, tp

00000000802026ec <.Lpcrel_hi7>:
;         self.0.call_once(builder)
802026ec: 17 55 01 00  	auipc	a0, 21
802026f0: 13 05 c5 a3  	addi	a0, a0, -1476
802026f4: 97 00 00 00  	auipc	ra, 0
802026f8: e7 80 40 b2  	jalr	-1244(ra)
802026fc: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202700: 63 f5 b4 02  	bgeu	s1, a1, 0x8020272a <.Lpcrel_hi8>
80202704: e1 45        	li	a1, 24
; 	&mut CPUS.get_mut()[id]
80202706: b3 85 b4 02  	mul	a1, s1, a1
8020270a: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
8020270c: 23 38 a9 00  	sd	a0, 16(s2)
;     }
80202710: e6 60        	ld	ra, 88(sp)
80202712: 46 64        	ld	s0, 80(sp)
80202714: a6 64        	ld	s1, 72(sp)
80202716: 06 69        	ld	s2, 64(sp)
80202718: e2 79        	ld	s3, 56(sp)
8020271a: 42 7a        	ld	s4, 48(sp)
8020271c: 25 61        	addi	sp, sp, 96
8020271e: 82 80        	ret

0000000080202720 <.Lpcrel_hi1>:
; 	&mut CPUS.get_mut()[id]
80202720: 17 35 00 00  	auipc	a0, 3
80202724: 13 06 05 e0  	addi	a2, a0, -512
80202728: 29 a0        	j	0x80202732 <.Lpcrel_hi8+0x8>

000000008020272a <.Lpcrel_hi8>:
8020272a: 17 35 00 00  	auipc	a0, 3
8020272e: 13 06 65 df  	addi	a2, a0, -522
80202732: 93 05 00 04  	li	a1, 64
80202736: 26 85        	mv	a0, s1
80202738: 97 20 00 00  	auipc	ra, 2
8020273c: e7 80 40 83  	jalr	-1996(ra)
80202740: 00 00        	unimp	

0000000080202742 <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
80202742: 17 35 00 00  	auipc	a0, 3
80202746: 13 06 e5 dd  	addi	a2, a0, -546
8020274a: 93 05 00 04  	li	a1, 64
8020274e: 4e 85        	mv	a0, s3
80202750: 97 20 00 00  	auipc	ra, 2
80202754: e7 80 c0 81  	jalr	-2020(ra)
80202758: 00 00        	unimp	

000000008020275a <.Lpcrel_hi4>:
8020275a: 17 35 00 00  	auipc	a0, 3
8020275e: 13 05 65 97  	addi	a0, a0, -1674
80202762: 23 30 a4 fa  	sd	a0, -96(s0)
80202766: 05 45        	li	a0, 1
80202768: 23 34 a4 fa  	sd	a0, -88(s0)
8020276c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202770 <.Lpcrel_hi5>:
80202770: 17 35 00 00  	auipc	a0, 3
80202774: 13 05 85 95  	addi	a0, a0, -1704
80202778: 23 38 a4 fa  	sd	a0, -80(s0)
8020277c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080202780 <.Lpcrel_hi6>:
;             panic!("acquire");
80202780: 17 35 00 00  	auipc	a0, 3
80202784: 93 05 85 97  	addi	a1, a0, -1672
80202788: 13 05 04 fa  	addi	a0, s0, -96
8020278c: 97 10 00 00  	auipc	ra, 1
80202790: e7 80 60 78  	jalr	1926(ra)
80202794: 00 00        	unimp	

0000000080202796 <_ZN6kernel4lock8spinlock8Spinlock7release17h194bfcff64882066E>:
;     pub fn release(&mut self) {
80202796: 1d 71        	addi	sp, sp, -96
80202798: 86 ec        	sd	ra, 88(sp)
8020279a: a2 e8        	sd	s0, 80(sp)
8020279c: a6 e4        	sd	s1, 72(sp)
8020279e: ca e0        	sd	s2, 64(sp)
802027a0: 4e fc        	sd	s3, 56(sp)
802027a2: 80 10        	addi	s0, sp, 96
802027a4: aa 84        	mv	s1, a0
802027a6: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802027aa: 79 c1        	beqz	a0, 0x80202870 <.Lpcrel_hi19>
802027ac: 83 b9 04 01  	ld	s3, 16(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802027b0: 12 89        	mv	s2, tp

00000000802027b2 <.Lpcrel_hi9>:
;         self.0.call_once(builder)
802027b2: 17 55 01 00  	auipc	a0, 21
802027b6: 13 05 65 97  	addi	a0, a0, -1674
802027ba: 97 00 00 00  	auipc	ra, 0
802027be: e7 80 e0 a5  	jalr	-1442(ra)
802027c2: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802027c6: 63 7d b9 06  	bgeu	s2, a1, 0x80202840 <.Lpcrel_hi10>
802027ca: e1 45        	li	a1, 24
; 	&mut CPUS.get_mut()[id]
802027cc: b3 05 b9 02  	mul	a1, s2, a1
802027d0: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
802027d2: 63 9f a9 08  	bne	s3, a0, 0x80202870 <.Lpcrel_hi19>
;         self.cpu = null_mut();
802027d6: 23 b8 04 00  	sd	zero, 16(s1)
802027da: 0f 00 30 03  	fence	rw, rw
802027de: 0f 00 10 03  	fence	rw, w
802027e2: 23 8c 04 00  	sb	zero, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802027e6: 92 84        	mv	s1, tp

00000000802027e8 <.Lpcrel_hi11>:
;         self.0.call_once(builder)
802027e8: 17 55 01 00  	auipc	a0, 21
802027ec: 13 05 05 94  	addi	a0, a0, -1728
802027f0: 97 00 00 00  	auipc	ra, 0
802027f4: e7 80 80 a2  	jalr	-1496(ra)
802027f8: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802027fc: 63 fe b4 04  	bgeu	s1, a1, 0x80202858 <.Lpcrel_hi12>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202800: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
80202804: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
80202806: c9 ed        	bnez	a1, 0x802028a0 <.Lpcrel_hi13>
80202808: e1 45        	li	a1, 24
;     if mc.noff < 1 {
8020280a: 33 86 b4 02  	mul	a2, s1, a1
8020280e: 2a 96        	add	a2, a2, a0
80202810: 0c 66        	ld	a1, 8(a2)
80202812: 63 5f b0 0a  	blez	a1, 0x802028d0 <.Lpcrel_hi16>
80202816: 21 06        	addi	a2, a2, 8
;     mc.noff -= 1;
80202818: fd 15        	addi	a1, a1, -1
8020281a: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
8020281c: 99 e9        	bnez	a1, 0x80202832 <.Lpcrel_hi11+0x4a>
8020281e: e1 45        	li	a1, 24
;     if mc.noff == 0 && mc.intena {
80202820: b3 85 b4 02  	mul	a1, s1, a1
80202824: 2e 95        	add	a0, a0, a1
80202826: 03 45 05 01  	lbu	a0, 16(a0)
8020282a: 01 c5        	beqz	a0, 0x80202832 <.Lpcrel_hi11+0x4a>
8020282c: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
8020282e: 73 20 05 10  	csrs	sstatus, a0
;     }
80202832: e6 60        	ld	ra, 88(sp)
80202834: 46 64        	ld	s0, 80(sp)
80202836: a6 64        	ld	s1, 72(sp)
80202838: 06 69        	ld	s2, 64(sp)
8020283a: e2 79        	ld	s3, 56(sp)
8020283c: 25 61        	addi	sp, sp, 96
8020283e: 82 80        	ret

0000000080202840 <.Lpcrel_hi10>:
; 	&mut CPUS.get_mut()[id]
80202840: 17 35 00 00  	auipc	a0, 3
80202844: 13 06 05 ce  	addi	a2, a0, -800
80202848: 93 05 00 04  	li	a1, 64
8020284c: 4a 85        	mv	a0, s2
8020284e: 97 10 00 00  	auipc	ra, 1
80202852: e7 80 e0 71  	jalr	1822(ra)
80202856: 00 00        	unimp	

0000000080202858 <.Lpcrel_hi12>:
80202858: 17 35 00 00  	auipc	a0, 3
8020285c: 13 06 85 cc  	addi	a2, a0, -824
80202860: 93 05 00 04  	li	a1, 64
80202864: 26 85        	mv	a0, s1
80202866: 97 10 00 00  	auipc	ra, 1
8020286a: e7 80 60 70  	jalr	1798(ra)
8020286e: 00 00        	unimp	

0000000080202870 <.Lpcrel_hi19>:
80202870: 17 35 00 00  	auipc	a0, 3
80202874: 13 05 85 8a  	addi	a0, a0, -1880
80202878: 23 34 a4 fa  	sd	a0, -88(s0)
8020287c: 05 45        	li	a0, 1
8020287e: 23 38 a4 fa  	sd	a0, -80(s0)
80202882: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202886 <.Lpcrel_hi20>:
80202886: 17 35 00 00  	auipc	a0, 3
8020288a: 13 05 25 84  	addi	a0, a0, -1982
8020288e: 23 3c a4 fa  	sd	a0, -72(s0)
80202892: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202896 <.Lpcrel_hi21>:
;             panic!("release");
80202896: 17 35 00 00  	auipc	a0, 3
8020289a: 93 05 25 89  	addi	a1, a0, -1902
8020289e: 85 a0        	j	0x802028fe <.Lpcrel_hi18+0x8>

00000000802028a0 <.Lpcrel_hi13>:
802028a0: 17 35 00 00  	auipc	a0, 3
802028a4: 13 05 85 8b  	addi	a0, a0, -1864
802028a8: 23 34 a4 fa  	sd	a0, -88(s0)
802028ac: 05 45        	li	a0, 1
802028ae: 23 38 a4 fa  	sd	a0, -80(s0)
802028b2: 23 34 04 fc  	sd	zero, -56(s0)

00000000802028b6 <.Lpcrel_hi14>:
802028b6: 17 35 00 00  	auipc	a0, 3
802028ba: 13 05 25 81  	addi	a0, a0, -2030
802028be: 23 3c a4 fa  	sd	a0, -72(s0)
802028c2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802028c6 <.Lpcrel_hi15>:
;         panic!("pop_off - interruptible");
802028c6: 17 35 00 00  	auipc	a0, 3
802028ca: 93 05 25 8a  	addi	a1, a0, -1886
802028ce: 05 a8        	j	0x802028fe <.Lpcrel_hi18+0x8>

00000000802028d0 <.Lpcrel_hi16>:
802028d0: 17 35 00 00  	auipc	a0, 3
802028d4: 13 05 85 8b  	addi	a0, a0, -1864
802028d8: 23 34 a4 fa  	sd	a0, -88(s0)
802028dc: 05 45        	li	a0, 1
802028de: 23 38 a4 fa  	sd	a0, -80(s0)
802028e2: 23 34 04 fc  	sd	zero, -56(s0)

00000000802028e6 <.Lpcrel_hi17>:
802028e6: 17 25 00 00  	auipc	a0, 2
802028ea: 13 05 25 7e  	addi	a0, a0, 2018
802028ee: 23 3c a4 fa  	sd	a0, -72(s0)
802028f2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802028f6 <.Lpcrel_hi18>:
;         panic!("pop_off");
802028f6: 17 35 00 00  	auipc	a0, 3
802028fa: 93 05 25 8a  	addi	a1, a0, -1886
802028fe: 13 05 84 fa  	addi	a0, s0, -88
80202902: 97 10 00 00  	auipc	ra, 1
80202906: e7 80 00 61  	jalr	1552(ra)
8020290a: 00 00        	unimp	

000000008020290c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hd9b5c2e605055332E>:
8020290c: 41 11        	addi	sp, sp, -16
8020290e: 06 e4        	sd	ra, 8(sp)
80202910: 22 e0        	sd	s0, 0(sp)
80202912: 00 08        	addi	s0, sp, 16
80202914: 08 61        	ld	a0, 0(a0)
80202916: a2 60        	ld	ra, 8(sp)
80202918: 02 64        	ld	s0, 0(sp)
8020291a: 41 01        	addi	sp, sp, 16
8020291c: 17 13 00 00  	auipc	t1, 1
80202920: 67 00 c3 6d  	jr	1756(t1)

0000000080202924 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17heb463227ce161418E>:
80202924: 41 11        	addi	sp, sp, -16
80202926: 06 e4        	sd	ra, 8(sp)
80202928: 22 e0        	sd	s0, 0(sp)
8020292a: 00 08        	addi	s0, sp, 16
8020292c: 10 61        	ld	a2, 0(a0)
8020292e: 14 65        	ld	a3, 8(a0)
80202930: 2e 87        	mv	a4, a1
80202932: 32 85        	mv	a0, a2
80202934: b6 85        	mv	a1, a3
80202936: 3a 86        	mv	a2, a4
80202938: a2 60        	ld	ra, 8(sp)
8020293a: 02 64        	ld	s0, 0(sp)
8020293c: 41 01        	addi	sp, sp, 16
8020293e: 17 23 00 00  	auipc	t1, 2
80202942: 67 00 83 cf  	jr	-776(t1)

0000000080202946 <usertrapret>:
; pub fn fileinit() {}
80202946: 41 11        	addi	sp, sp, -16
80202948: 06 e4        	sd	ra, 8(sp)
8020294a: 22 e0        	sd	s0, 0(sp)
8020294c: 00 08        	addi	s0, sp, 16
8020294e: a2 60        	ld	ra, 8(sp)
80202950: 02 64        	ld	s0, 0(sp)
80202952: 41 01        	addi	sp, sp, 16
80202954: 82 80        	ret

0000000080202956 <_ZN6kernel4trap12trapinithart17h8316445900821fd6E>:
; pub fn trapinithart() {
80202956: 5d 71        	addi	sp, sp, -80
80202958: 86 e4        	sd	ra, 72(sp)
8020295a: a2 e0        	sd	s0, 64(sp)
8020295c: 80 08        	addi	s0, sp, 80

000000008020295e <.Lpcrel_hi6>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020295e: 17 e5 ff ff  	auipc	a0, 1048574
80202962: 13 05 25 7d  	addi	a0, a0, 2002
80202966: 73 10 55 10  	csrw	stvec, a0
8020296a: 13 05 84 fe  	addi	a0, s0, -24
;     Stdout.write_fmt(args).unwrap();
8020296e: 23 38 a4 fa  	sd	a0, -80(s0)

0000000080202972 <.Lpcrel_hi7>:
80202972: 17 35 00 00  	auipc	a0, 3
80202976: 13 05 e5 87  	addi	a0, a0, -1922
8020297a: 23 3c a4 fa  	sd	a0, -72(s0)
8020297e: 05 45        	li	a0, 1
80202980: 23 30 a4 fc  	sd	a0, -64(s0)

0000000080202984 <.Lpcrel_hi8>:
80202984: 17 35 00 00  	auipc	a0, 3
80202988: 13 05 45 85  	addi	a0, a0, -1964
8020298c: 23 34 a4 fc  	sd	a0, -56(s0)
80202990: 23 38 04 fc  	sd	zero, -48(s0)
80202994: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202998 <.Lpcrel_hi9>:
80202998: 17 35 00 00  	auipc	a0, 3
8020299c: 93 05 85 e2  	addi	a1, a0, -472
802029a0: 13 05 04 fb  	addi	a0, s0, -80
802029a4: 13 06 84 fb  	addi	a2, s0, -72
802029a8: 97 10 00 00  	auipc	ra, 1
802029ac: e7 80 20 66  	jalr	1634(ra)
802029b0: 09 e5        	bnez	a0, 0x802029ba <.Lpcrel_hi10>
; }
802029b2: a6 60        	ld	ra, 72(sp)
802029b4: 06 64        	ld	s0, 64(sp)
802029b6: 61 61        	addi	sp, sp, 80
802029b8: 82 80        	ret

00000000802029ba <.Lpcrel_hi10>:
802029ba: 17 35 00 00  	auipc	a0, 3
802029be: 13 05 65 e3  	addi	a0, a0, -458

00000000802029c2 <.Lpcrel_hi11>:
802029c2: 97 35 00 00  	auipc	a1, 3
802029c6: 93 86 e5 e5  	addi	a3, a1, -418

00000000802029ca <.Lpcrel_hi12>:
802029ca: 97 35 00 00  	auipc	a1, 3
802029ce: 13 87 65 e8  	addi	a4, a1, -378
802029d2: 93 05 b0 02  	li	a1, 43
802029d6: 13 06 84 fe  	addi	a2, s0, -24
802029da: 97 10 00 00  	auipc	ra, 1
802029de: e7 80 20 5d  	jalr	1490(ra)
802029e2: 00 00        	unimp	

00000000802029e4 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
802029e4: 71 71        	addi	sp, sp, -176
802029e6: 06 f5        	sd	ra, 168(sp)
802029e8: 22 f1        	sd	s0, 160(sp)
802029ea: 26 ed        	sd	s1, 152(sp)
802029ec: 00 19        	addi	s0, sp, 176
802029ee: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
802029f0: 97 10 00 00  	auipc	ra, 1
802029f4: e7 80 a0 51  	jalr	1306(ra)
802029f8: 05 e1        	bnez	a0, 0x80202a18 <.Lpcrel_hi1+0x16>

00000000802029fa <.Lpcrel_hi0>:
802029fa: 17 35 00 00  	auipc	a0, 3
802029fe: 13 05 65 88  	addi	a0, a0, -1914

0000000080202a02 <.Lpcrel_hi1>:
80202a02: 97 35 00 00  	auipc	a1, 3
80202a06: 13 86 e5 8b  	addi	a2, a1, -1858
80202a0a: 93 05 b0 02  	li	a1, 43
80202a0e: 97 10 00 00  	auipc	ra, 1
80202a12: e7 80 20 53  	jalr	1330(ra)
80202a16: 00 00        	unimp	
80202a18: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80202a1c: 26 85        	mv	a0, s1
80202a1e: 97 10 00 00  	auipc	ra, 1
80202a22: e7 80 00 4f  	jalr	1264(ra)
80202a26: 59 e1        	bnez	a0, 0x80202aac <.Lpcrel_hi15+0x1a>
80202a28: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80202a2c: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202a30 <.Lpcrel_hi10>:
80202a30: 17 05 00 00  	auipc	a0, 0
80202a34: 13 05 c5 ed  	addi	a0, a0, -292
80202a38: 23 34 a4 f6  	sd	a0, -152(s0)
80202a3c: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80202a40: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080202a44 <.Lpcrel_hi11>:
80202a44: 17 25 00 00  	auipc	a0, 2
80202a48: 13 05 c5 7c  	addi	a0, a0, 1996
80202a4c: 23 38 a4 fa  	sd	a0, -80(s0)
80202a50: 09 45        	li	a0, 2
80202a52: 23 3c a4 fa  	sd	a0, -72(s0)
80202a56: 13 05 04 f6  	addi	a0, s0, -160
80202a5a: 23 30 a4 fc  	sd	a0, -64(s0)
80202a5e: 05 45        	li	a0, 1
80202a60: 23 34 a4 fc  	sd	a0, -56(s0)
80202a64: 23 38 04 fc  	sd	zero, -48(s0)

0000000080202a68 <.Lpcrel_hi12>:
80202a68: 17 35 00 00  	auipc	a0, 3
80202a6c: 93 05 85 d5  	addi	a1, a0, -680
80202a70: 13 05 04 f9  	addi	a0, s0, -112
80202a74: 13 06 04 fb  	addi	a2, s0, -80
80202a78: 97 10 00 00  	auipc	ra, 1
80202a7c: e7 80 20 59  	jalr	1426(ra)
80202a80: 6d c5        	beqz	a0, 0x80202b6a <.Lpcrel_hi9+0x1a>

0000000080202a82 <.Lpcrel_hi13>:
80202a82: 17 35 00 00  	auipc	a0, 3
80202a86: 13 05 e5 d6  	addi	a0, a0, -658

0000000080202a8a <.Lpcrel_hi14>:
80202a8a: 97 35 00 00  	auipc	a1, 3
80202a8e: 93 86 65 d9  	addi	a3, a1, -618

0000000080202a92 <.Lpcrel_hi15>:
80202a92: 97 35 00 00  	auipc	a1, 3
80202a96: 13 87 e5 db  	addi	a4, a1, -578
80202a9a: 93 05 b0 02  	li	a1, 43
80202a9e: 13 06 04 fe  	addi	a2, s0, -32
80202aa2: 97 10 00 00  	auipc	ra, 1
80202aa6: e7 80 a0 50  	jalr	1290(ra)
80202aaa: 00 00        	unimp	
80202aac: 0c 61        	ld	a1, 0(a0)
80202aae: 10 65        	ld	a2, 8(a0)
80202ab0: 23 38 b4 f8  	sd	a1, -112(s0)
80202ab4: 23 3c c4 f8  	sd	a2, -104(s0)
80202ab8: 08 49        	lw	a0, 16(a0)
80202aba: 23 22 a4 fa  	sw	a0, -92(s0)
80202abe: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80202ac2: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202ac6 <.Lpcrel_hi2>:
80202ac6: 17 05 00 00  	auipc	a0, 0
80202aca: 13 05 e5 e5  	addi	a0, a0, -418
80202ace: 23 34 a4 f6  	sd	a0, -152(s0)
80202ad2: 13 05 44 fa  	addi	a0, s0, -92
80202ad6: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080202ada <.Lpcrel_hi3>:
80202ada: 17 25 00 00  	auipc	a0, 2
80202ade: 13 05 a5 e5  	addi	a0, a0, -422
80202ae2: 23 3c a4 f6  	sd	a0, -136(s0)
80202ae6: 13 05 84 f5  	addi	a0, s0, -168
80202aea: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080202aee <.Lpcrel_hi4>:
80202aee: 17 05 00 00  	auipc	a0, 0
80202af2: 13 05 e5 e1  	addi	a0, a0, -482
80202af6: 23 34 a4 f8  	sd	a0, -120(s0)
80202afa: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80202afe: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080202b02 <.Lpcrel_hi5>:
80202b02: 17 25 00 00  	auipc	a0, 2
80202b06: 13 05 e5 73  	addi	a0, a0, 1854
80202b0a: 23 38 a4 fa  	sd	a0, -80(s0)
80202b0e: 11 45        	li	a0, 4
80202b10: 23 3c a4 fa  	sd	a0, -72(s0)
80202b14: 13 05 04 f6  	addi	a0, s0, -160
80202b18: 23 30 a4 fc  	sd	a0, -64(s0)
80202b1c: 0d 45        	li	a0, 3
80202b1e: 23 34 a4 fc  	sd	a0, -56(s0)
80202b22: 23 38 04 fc  	sd	zero, -48(s0)

0000000080202b26 <.Lpcrel_hi6>:
80202b26: 17 35 00 00  	auipc	a0, 3
80202b2a: 93 05 a5 c9  	addi	a1, a0, -870
80202b2e: 13 05 84 fa  	addi	a0, s0, -88
80202b32: 13 06 04 fb  	addi	a2, s0, -80
80202b36: 97 10 00 00  	auipc	ra, 1
80202b3a: e7 80 40 4d  	jalr	1236(ra)
80202b3e: 15 c5        	beqz	a0, 0x80202b6a <.Lpcrel_hi9+0x1a>

0000000080202b40 <.Lpcrel_hi7>:
80202b40: 17 35 00 00  	auipc	a0, 3
80202b44: 13 05 05 cb  	addi	a0, a0, -848

0000000080202b48 <.Lpcrel_hi8>:
80202b48: 97 35 00 00  	auipc	a1, 3
80202b4c: 93 86 85 cd  	addi	a3, a1, -808

0000000080202b50 <.Lpcrel_hi9>:
80202b50: 97 35 00 00  	auipc	a1, 3
80202b54: 13 87 05 d0  	addi	a4, a1, -768
80202b58: 93 05 b0 02  	li	a1, 43
80202b5c: 13 06 04 fe  	addi	a2, s0, -32
80202b60: 97 10 00 00  	auipc	ra, 1
80202b64: e7 80 c0 44  	jalr	1100(ra)
80202b68: 00 00        	unimp	
;     shutdown()
80202b6a: 97 00 00 00  	auipc	ra, 0
80202b6e: e7 80 a0 00  	jalr	10(ra)
80202b72: 00 00        	unimp	

0000000080202b74 <_ZN6kernel3sbi8shutdown17hb4f8ebc6b8427984E>:
; pub fn shutdown() -> ! {
80202b74: 39 71        	addi	sp, sp, -64
80202b76: 06 fc        	sd	ra, 56(sp)
80202b78: 22 f8        	sd	s0, 48(sp)
80202b7a: 80 00        	addi	s0, sp, 64
;         asm!(
80202b7c: a1 48        	li	a7, 8
80202b7e: 01 45        	li	a0, 0
80202b80: 81 45        	li	a1, 0
80202b82: 01 46        	li	a2, 0
80202b84: 73 00 00 00  	ecall	

0000000080202b88 <.Lpcrel_hi0>:
80202b88: 17 25 00 00  	auipc	a0, 2
80202b8c: 13 05 85 7b  	addi	a0, a0, 1976
80202b90: 23 30 a4 fc  	sd	a0, -64(s0)
80202b94: 05 45        	li	a0, 1
80202b96: 23 34 a4 fc  	sd	a0, -56(s0)
80202b9a: 23 30 04 fe  	sd	zero, -32(s0)

0000000080202b9e <.Lpcrel_hi1>:
80202b9e: 17 25 00 00  	auipc	a0, 2
80202ba2: 13 05 25 7b  	addi	a0, a0, 1970
80202ba6: 23 38 a4 fc  	sd	a0, -48(s0)
80202baa: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202bae <.Lpcrel_hi2>:
;     panic!("It should shutdown!");
80202bae: 17 25 00 00  	auipc	a0, 2
80202bb2: 93 05 25 7b  	addi	a1, a0, 1970
80202bb6: 13 05 04 fc  	addi	a0, s0, -64
80202bba: 97 10 00 00  	auipc	ra, 1
80202bbe: e7 80 80 35  	jalr	856(ra)
80202bc2: 00 00        	unimp	

0000000080202bc4 <__rg_dealloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80202bc4: 41 11        	addi	sp, sp, -16
80202bc6: 06 e4        	sd	ra, 8(sp)
80202bc8: 22 e0        	sd	s0, 0(sp)
80202bca: 00 08        	addi	s0, sp, 16

0000000080202bcc <.Lpcrel_hi1>:
80202bcc: 97 46 01 00  	auipc	a3, 20
80202bd0: 93 86 46 43  	addi	a3, a3, 1076
80202bd4: 2e 87        	mv	a4, a1
80202bd6: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80202bd8: 36 85        	mv	a0, a3
80202bda: ba 86        	mv	a3, a4
80202bdc: a2 60        	ld	ra, 8(sp)
80202bde: 02 64        	ld	s0, 0(sp)
80202be0: 41 01        	addi	sp, sp, 16
80202be2: 17 13 00 00  	auipc	t1, 1
80202be6: 67 00 a3 2c  	jr	714(t1)

0000000080202bea <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> i32 {
80202bea: 35 71        	addi	sp, sp, -160
;         if size == 0 {
80202bec: 06 ed        	sd	ra, 152(sp)
80202bee: 22 e9        	sd	s0, 144(sp)
80202bf0: 26 e5        	sd	s1, 136(sp)
80202bf2: 4a e1        	sd	s2, 128(sp)
80202bf4: ce fc        	sd	s3, 120(sp)
80202bf6: d2 f8        	sd	s4, 112(sp)
80202bf8: d6 f4        	sd	s5, 104(sp)
80202bfa: da f0        	sd	s6, 96(sp)
80202bfc: de ec        	sd	s7, 88(sp)
80202bfe: e2 e8        	sd	s8, 80(sp)
80202c00: e6 e4        	sd	s9, 72(sp)
80202c02: ea e0        	sd	s10, 64(sp)
80202c04: 6e fc        	sd	s11, 56(sp)
80202c06: 00 11        	addi	s0, sp, 160
80202c08: 63 06 06 18  	beqz	a2, 0x80202d94 <.Lpcrel_hi0>
80202c0c: b6 89        	mv	s3, a3
80202c0e: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
80202c10: 33 fa d5 00  	and	s4, a1, a3
;         let last = pgrounddown(va + size - 1);
80202c14: 2e 96        	add	a2, a2, a1
80202c16: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
80202c18: b3 7a d6 00  	and	s5, a2, a3
;         while a <= last {
80202c1c: 63 ee 4a 0d  	bltu	s5, s4, 0x80202cf8 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x10e>
80202c20: 3a 89        	mv	s2, a4
80202c22: 13 db 26 00  	srli	s6, a3, 2
80202c26: 83 3b 05 00  	ld	s7, 0(a0)
;         while a <= last {
80202c2a: 13 dc c5 00  	srli	s8, a1, 12
80202c2e: 85 6c        	lui	s9, 1
80202c30: 1b 8d 8c ff  	addiw	s10, s9, -8
;         if va >= MAXVA {
80202c34: 13 55 6a 02  	srli	a0, s4, 38
80202c38: 75 e1        	bnez	a0, 0x80202d1c <.Lpcrel_hi3>
80202c3a: 13 55 ba 01  	srli	a0, s4, 27
80202c3e: 61 99        	andi	a0, a0, -8
80202c40: b3 8d ab 00  	add	s11, s7, a0
;             if (*pte & PTE_V) != 0 {
80202c44: 03 b5 0d 00  	ld	a0, 0(s11)
80202c48: 93 75 15 00  	andi	a1, a0, 1
80202c4c: 95 e5        	bnez	a1, 0x80202c78 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x8e>
;                 let pa = kalloc();
80202c4e: 97 00 00 00  	auipc	ra, 0
80202c52: e7 80 80 38  	jalr	904(ra)
;                 if pa == 0 {
80202c56: 5d c1        	beqz	a0, 0x80202cfc <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x112>
80202c58: aa 84        	mv	s1, a0
80202c5a: 05 66        	lui	a2, 1
80202c5c: 81 45        	li	a1, 0
80202c5e: 97 20 00 00  	auipc	ra, 2
80202c62: e7 80 e0 d1  	jalr	-738(ra)
;     (pa >> 12) << 10
80202c66: 13 d5 24 00  	srli	a0, s1, 2
80202c6a: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
80202c6e: 13 65 15 00  	ori	a0, a0, 1
80202c72: 23 b0 ad 00  	sd	a0, 0(s11)
80202c76: 21 a0        	j	0x80202c7e <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x94>
;     (pte >> 10) << 12
80202c78: 29 81        	srli	a0, a0, 10
80202c7a: 93 14 c5 00  	slli	s1, a0, 12
80202c7e: 13 55 2a 01  	srli	a0, s4, 18
80202c82: b3 7d a5 01  	and	s11, a0, s10
80202c86: a6 9d        	add	s11, s11, s1
;             if (*pte & PTE_V) != 0 {
80202c88: 03 b5 0d 00  	ld	a0, 0(s11)
80202c8c: 93 75 15 00  	andi	a1, a0, 1
80202c90: 95 e9        	bnez	a1, 0x80202cc4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0xda>
;                 let pa = kalloc();
80202c92: 97 00 00 00  	auipc	ra, 0
80202c96: e7 80 40 34  	jalr	836(ra)
;                 if pa == 0 {
80202c9a: 2d c1        	beqz	a0, 0x80202cfc <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x112>
80202c9c: aa 84        	mv	s1, a0
80202c9e: 05 66        	lui	a2, 1
80202ca0: 81 45        	li	a1, 0
80202ca2: 97 20 00 00  	auipc	ra, 2
80202ca6: e7 80 a0 cd  	jalr	-806(ra)
;     (pa >> 12) << 10
80202caa: 13 d5 24 00  	srli	a0, s1, 2
80202cae: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
80202cb2: 13 65 15 00  	ori	a0, a0, 1
80202cb6: 23 b0 ad 00  	sd	a0, 0(s11)
;     (va >> pxshift(level)) & PXMASK
80202cba: 13 75 fc 1f  	andi	a0, s8, 511
80202cbe: 0e 05        	slli	a0, a0, 3
80202cc0: aa 94        	add	s1, s1, a0
80202cc2: 09 a8        	j	0x80202cd4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0xea>
;     (pte >> 10) << 12
80202cc4: 29 81        	srli	a0, a0, 10
80202cc6: 32 05        	slli	a0, a0, 12
;             if pte == null_mut() {
80202cc8: 15 c9        	beqz	a0, 0x80202cfc <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x112>
80202cca: 93 75 fc 1f  	andi	a1, s8, 511
80202cce: 8e 05        	slli	a1, a1, 3
80202cd0: b3 64 b5 00  	or	s1, a0, a1
;             if unsafe { *pte & PTE_V } != 0 {
80202cd4: 03 c5 04 00  	lbu	a0, 0(s1)
80202cd8: 05 89        	andi	a0, a0, 1
80202cda: 3d ed        	bnez	a0, 0x80202d58 <.Lpcrel_hi6>
;     (pa >> 12) << 10
80202cdc: 13 d5 29 00  	srli	a0, s3, 2
80202ce0: 33 75 65 01  	and	a0, a0, s6
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202ce4: 33 65 25 01  	or	a0, a0, s2
80202ce8: 13 65 15 00  	ori	a0, a0, 1
80202cec: 88 e0        	sd	a0, 0(s1)
;             a += PGSIZE;
80202cee: 66 9a        	add	s4, s4, s9
;             pa += PGSIZE;
80202cf0: e6 99        	add	s3, s3, s9
;         while a <= last {
80202cf2: 05 0c        	addi	s8, s8, 1
80202cf4: e3 f0 4a f5  	bgeu	s5, s4, 0x80202c34 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x4a>
80202cf8: 01 45        	li	a0, 0
80202cfa: 11 a0        	j	0x80202cfe <_ZN6kernel6memory9pagetable10PagetableT8mappages17hf5859644d229abecE+0x114>
80202cfc: 7d 55        	li	a0, -1
;     }
80202cfe: ea 60        	ld	ra, 152(sp)
80202d00: 4a 64        	ld	s0, 144(sp)
80202d02: aa 64        	ld	s1, 136(sp)
80202d04: 0a 69        	ld	s2, 128(sp)
80202d06: e6 79        	ld	s3, 120(sp)
80202d08: 46 7a        	ld	s4, 112(sp)
80202d0a: a6 7a        	ld	s5, 104(sp)
80202d0c: 06 7b        	ld	s6, 96(sp)
80202d0e: e6 6b        	ld	s7, 88(sp)
80202d10: 46 6c        	ld	s8, 80(sp)
80202d12: a6 6c        	ld	s9, 72(sp)
80202d14: 06 6d        	ld	s10, 64(sp)
80202d16: e2 7d        	ld	s11, 56(sp)
80202d18: 0d 61        	addi	sp, sp, 160
80202d1a: 82 80        	ret

0000000080202d1c <.Lpcrel_hi3>:
80202d1c: 17 35 00 00  	auipc	a0, 3
80202d20: 13 05 c5 82  	addi	a0, a0, -2004
80202d24: 23 34 a4 f6  	sd	a0, -152(s0)
80202d28: 05 45        	li	a0, 1
80202d2a: 23 38 a4 f6  	sd	a0, -144(s0)
80202d2e: 23 34 04 f8  	sd	zero, -120(s0)

0000000080202d32 <.Lpcrel_hi4>:
80202d32: 17 35 00 00  	auipc	a0, 3
80202d36: 13 05 65 82  	addi	a0, a0, -2010
80202d3a: 23 3c a4 f6  	sd	a0, -136(s0)
80202d3e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080202d42 <.Lpcrel_hi5>:
;             panic!("walk");
80202d42: 17 35 00 00  	auipc	a0, 3
80202d46: 93 05 e5 82  	addi	a1, a0, -2002
80202d4a: 13 05 84 f6  	addi	a0, s0, -152
80202d4e: 97 10 00 00  	auipc	ra, 1
80202d52: e7 80 40 1c  	jalr	452(ra)
80202d56: 00 00        	unimp	

0000000080202d58 <.Lpcrel_hi6>:
80202d58: 17 35 00 00  	auipc	a0, 3
80202d5c: 13 05 05 84  	addi	a0, a0, -1984
80202d60: 23 34 a4 f6  	sd	a0, -152(s0)
80202d64: 05 45        	li	a0, 1
80202d66: 23 38 a4 f6  	sd	a0, -144(s0)
80202d6a: 23 34 04 f8  	sd	zero, -120(s0)

0000000080202d6e <.Lpcrel_hi7>:
80202d6e: 17 25 00 00  	auipc	a0, 2
80202d72: 13 05 a5 7e  	addi	a0, a0, 2026
80202d76: 23 3c a4 f6  	sd	a0, -136(s0)
80202d7a: 23 30 04 f8  	sd	zero, -128(s0)

0000000080202d7e <.Lpcrel_hi8>:
;                 panic!("mappages: remap");
80202d7e: 17 35 00 00  	auipc	a0, 3
80202d82: 93 05 a5 82  	addi	a1, a0, -2006
80202d86: 13 05 84 f6  	addi	a0, s0, -152
80202d8a: 97 10 00 00  	auipc	ra, 1
80202d8e: e7 80 80 18  	jalr	392(ra)
80202d92: 00 00        	unimp	

0000000080202d94 <.Lpcrel_hi0>:
80202d94: 17 35 00 00  	auipc	a0, 3
80202d98: 13 05 c5 83  	addi	a0, a0, -1988
80202d9c: 23 34 a4 f6  	sd	a0, -152(s0)
80202da0: 05 45        	li	a0, 1
80202da2: 23 38 a4 f6  	sd	a0, -144(s0)
80202da6: 23 34 04 f8  	sd	zero, -120(s0)

0000000080202daa <.Lpcrel_hi1>:
80202daa: 17 25 00 00  	auipc	a0, 2
80202dae: 13 05 e5 7a  	addi	a0, a0, 1966
80202db2: 23 3c a4 f6  	sd	a0, -136(s0)
80202db6: 23 30 04 f8  	sd	zero, -128(s0)

0000000080202dba <.Lpcrel_hi2>:
;             panic!("mappages: size");
80202dba: 17 35 00 00  	auipc	a0, 3
80202dbe: 93 05 65 82  	addi	a1, a0, -2010
80202dc2: 13 05 84 f6  	addi	a0, s0, -152
80202dc6: 97 10 00 00  	auipc	ra, 1
80202dca: e7 80 c0 14  	jalr	332(ra)
80202dce: 00 00        	unimp	

0000000080202dd0 <_ZN6kernel6memory6kalloc5kinit17h6185fb5d5e16e818E>:
; pub fn kinit() {
80202dd0: 19 71        	addi	sp, sp, -128
80202dd2: 86 fc        	sd	ra, 120(sp)
80202dd4: a2 f8        	sd	s0, 112(sp)
80202dd6: a6 f4        	sd	s1, 104(sp)
80202dd8: ca f0        	sd	s2, 96(sp)
80202dda: ce ec        	sd	s3, 88(sp)
80202ddc: d2 e8        	sd	s4, 80(sp)
80202dde: d6 e4        	sd	s5, 72(sp)
80202de0: 00 01        	addi	s0, sp, 128
80202de2: 0f 00 30 03  	fence	rw, rw

0000000080202de6 <.Lpcrel_hi1>:
80202de6: 17 55 01 00  	auipc	a0, 21
80202dea: 93 09 25 95  	addi	s3, a0, -1710
80202dee: 03 b5 09 03  	ld	a0, 48(s3)
80202df2: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202df6: 39 e9        	bnez	a0, 0x80202e4c <.Lpcrel_hi2+0x3a>
80202df8: 93 85 09 03  	addi	a1, s3, 48
80202dfc: 05 46        	li	a2, 1
80202dfe: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202e02: 29 e5        	bnez	a0, 0x80202e4c <.Lpcrel_hi2+0x3a>
80202e04: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202e08: fd fa        	bnez	a3, 0x80202dfe <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202e0a: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202e0e: 23 b0 c9 00  	sd	a2, 0(s3)

0000000080202e12 <.Lpcrel_hi2>:
80202e12: 17 25 00 00  	auipc	a0, 2
80202e16: 13 05 e5 72  	addi	a0, a0, 1838
80202e1a: 23 b4 a9 00  	sd	a0, 8(s3)
80202e1e: 11 45        	li	a0, 4
80202e20: 23 b8 a9 00  	sd	a0, 16(s3)
80202e24: 23 bc 09 00  	sd	zero, 24(s3)
80202e28: 23 80 09 02  	sb	zero, 32(s3)
80202e2c: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
80202e30: 23 0c 04 f8  	sb	zero, -104(s0)
80202e34: 0f 00 10 03  	fence	rw, w
80202e38: 09 45        	li	a0, 2
80202e3a: 23 b8 a9 02  	sd	a0, 48(s3)
80202e3e: 13 05 04 f9  	addi	a0, s0, -112
80202e42: 97 10 00 00  	auipc	ra, 1
80202e46: e7 80 00 ec  	jalr	-320(ra)
80202e4a: 0d a0        	j	0x80202e6c <.Lpcrel_hi7>
80202e4c: 85 45        	li	a1, 1
;             match status {
80202e4e: 63 1c b5 00  	bne	a0, a1, 0x80202e66 <.Lpcrel_hi2+0x54>
80202e52: 0f 00 00 01  	fence	w, 0
80202e56: 0f 00 30 03  	fence	rw, rw
80202e5a: 03 b5 09 03  	ld	a0, 48(s3)
80202e5e: 0f 00 30 02  	fence	r, rw
;             match status {
80202e62: e3 08 b5 fe  	beq	a0, a1, 0x80202e52 <.Lpcrel_hi2+0x40>
80202e66: 89 45        	li	a1, 2
;             match status {
80202e68: 63 16 b5 0c  	bne	a0, a1, 0x80202f34 <.Lpcrel_hi13+0x2c>

0000000080202e6c <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
80202e6c: 17 95 01 00  	auipc	a0, 25
80202e70: 13 05 45 19  	addi	a0, a0, 404
80202e74: 85 65        	lui	a1, 1
80202e76: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80202e78: aa 95        	add	a1, a1, a0
80202e7a: 7d 76        	lui	a2, 1048575
80202e7c: f1 8d        	and	a1, a1, a2
80202e7e: 37 86 08 00  	lui	a2, 136
80202e82: 7d 36        	addiw	a2, a2, -1
80202e84: 32 06        	slli	a2, a2, 12
80202e86: 7d 16        	addi	a2, a2, -1
80202e88: 63 69 b6 04  	bltu	a2, a1, 0x80202eda <.Lpcrel_hi7+0x6e>
80202e8c: 63 e7 a5 10  	bltu	a1, a0, 0x80202f9a <.Lpcrel_hi8>
80202e90: 05 6a        	lui	s4, 1
80202e92: 9b 05 fa ff  	addiw	a1, s4, -1
80202e96: 2e 95        	add	a0, a0, a1
80202e98: fd 75        	lui	a1, 1048575
80202e9a: 6d 8d        	and	a0, a0, a1
80202e9c: 13 89 89 00  	addi	s2, s3, 8
80202ea0: b7 fa ff 43  	lui	s5, 278527
80202ea4: 86 0a        	slli	s5, s5, 1
80202ea6: aa 84        	mv	s1, a0
80202ea8: 85 45        	li	a1, 1
80202eaa: 05 66        	lui	a2, 1
80202eac: 97 20 00 00  	auipc	ra, 2
80202eb0: e7 80 00 ad  	jalr	-1328(ra)
;         self.lock.acquire();
80202eb4: 4a 85        	mv	a0, s2
80202eb6: 97 f0 ff ff  	auipc	ra, 1048575
80202eba: e7 80 00 78  	jalr	1920(ra)
;         unsafe { (*pa).next = self.freelist }
80202ebe: 03 b5 89 02  	ld	a0, 40(s3)
80202ec2: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80202ec4: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
80202ec8: 4a 85        	mv	a0, s2
80202eca: 97 00 00 00  	auipc	ra, 0
80202ece: e7 80 c0 8c  	jalr	-1844(ra)
;             pa += PGSIZE;
80202ed2: 33 85 44 01  	add	a0, s1, s4
80202ed6: e3 e8 54 fd  	bltu	s1, s5, 0x80202ea6 <.Lpcrel_hi7+0x3a>
80202eda: 13 05 04 fc  	addi	a0, s0, -64
;     Stdout.write_fmt(args).unwrap();
80202ede: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202ee2 <.Lpcrel_hi11>:
80202ee2: 17 25 00 00  	auipc	a0, 2
80202ee6: 13 05 e5 76  	addi	a0, a0, 1902
80202eea: 23 38 a4 f8  	sd	a0, -112(s0)
80202eee: 05 45        	li	a0, 1
80202ef0: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080202ef4 <.Lpcrel_hi12>:
80202ef4: 17 25 00 00  	auipc	a0, 2
80202ef8: 13 05 c5 71  	addi	a0, a0, 1820
80202efc: 23 30 a4 fa  	sd	a0, -96(s0)
80202f00: 23 34 04 fa  	sd	zero, -88(s0)
80202f04: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202f08 <.Lpcrel_hi13>:
80202f08: 17 35 00 00  	auipc	a0, 3
80202f0c: 93 05 85 8b  	addi	a1, a0, -1864
80202f10: 13 05 84 f8  	addi	a0, s0, -120
80202f14: 13 06 04 f9  	addi	a2, s0, -112
80202f18: 97 10 00 00  	auipc	ra, 1
80202f1c: e7 80 20 0f  	jalr	242(ra)
80202f20: 21 e9        	bnez	a0, 0x80202f70 <.Lpcrel_hi14>
; }
80202f22: e6 70        	ld	ra, 120(sp)
80202f24: 46 74        	ld	s0, 112(sp)
80202f26: a6 74        	ld	s1, 104(sp)
80202f28: 06 79        	ld	s2, 96(sp)
80202f2a: e6 69        	ld	s3, 88(sp)
80202f2c: 46 6a        	ld	s4, 80(sp)
80202f2e: a6 6a        	ld	s5, 72(sp)
80202f30: 09 61        	addi	sp, sp, 128
80202f32: 82 80        	ret
;             match status {
80202f34: 05 e1        	bnez	a0, 0x80202f54 <.Lpcrel_hi5>

0000000080202f36 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
80202f36: 17 25 00 00  	auipc	a0, 2
80202f3a: 13 05 25 15  	addi	a0, a0, 338

0000000080202f3e <.Lpcrel_hi4>:
80202f3e: 97 25 00 00  	auipc	a1, 2
80202f42: 13 86 25 17  	addi	a2, a1, 370
80202f46: 93 05 80 02  	li	a1, 40
80202f4a: 97 10 00 00  	auipc	ra, 1
80202f4e: e7 80 60 ff  	jalr	-10(ra)
80202f52: 00 00        	unimp	

0000000080202f54 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
80202f54: 17 25 00 00  	auipc	a0, 2
80202f58: 13 05 c5 0a  	addi	a0, a0, 172

0000000080202f5c <.Lpcrel_hi6>:
80202f5c: 97 25 00 00  	auipc	a1, 2
80202f60: 13 86 45 11  	addi	a2, a1, 276
80202f64: c5 45        	li	a1, 17
80202f66: 97 10 00 00  	auipc	ra, 1
80202f6a: e7 80 a0 fd  	jalr	-38(ra)
80202f6e: 00 00        	unimp	

0000000080202f70 <.Lpcrel_hi14>:
80202f70: 17 35 00 00  	auipc	a0, 3
80202f74: 13 05 05 88  	addi	a0, a0, -1920

0000000080202f78 <.Lpcrel_hi15>:
80202f78: 97 35 00 00  	auipc	a1, 3
80202f7c: 93 86 85 8a  	addi	a3, a1, -1880

0000000080202f80 <.Lpcrel_hi16>:
80202f80: 97 35 00 00  	auipc	a1, 3
80202f84: 13 87 05 8d  	addi	a4, a1, -1840
80202f88: 93 05 b0 02  	li	a1, 43
80202f8c: 13 06 04 fc  	addi	a2, s0, -64
80202f90: 97 10 00 00  	auipc	ra, 1
80202f94: e7 80 c0 01  	jalr	28(ra)
80202f98: 00 00        	unimp	

0000000080202f9a <.Lpcrel_hi8>:
80202f9a: 17 25 00 00  	auipc	a0, 2
80202f9e: 13 05 65 66  	addi	a0, a0, 1638
80202fa2: 23 38 a4 f8  	sd	a0, -112(s0)
80202fa6: 05 45        	li	a0, 1
80202fa8: 23 3c a4 f8  	sd	a0, -104(s0)
80202fac: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202fb0 <.Lpcrel_hi9>:
80202fb0: 17 25 00 00  	auipc	a0, 2
80202fb4: 13 05 05 66  	addi	a0, a0, 1632
80202fb8: 23 30 a4 fa  	sd	a0, -96(s0)
80202fbc: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202fc0 <.Lpcrel_hi10>:
;             panic!("kfree");
80202fc0: 17 25 00 00  	auipc	a0, 2
80202fc4: 93 05 85 66  	addi	a1, a0, 1640
80202fc8: 13 05 04 f9  	addi	a0, s0, -112
80202fcc: 97 10 00 00  	auipc	ra, 1
80202fd0: e7 80 60 f4  	jalr	-186(ra)
80202fd4: 00 00        	unimp	

0000000080202fd6 <_ZN6kernel6memory6kalloc6kalloc17hf901569b3c39f628E>:
; pub fn kalloc() -> Addr {
80202fd6: 39 71        	addi	sp, sp, -64
80202fd8: 06 fc        	sd	ra, 56(sp)
80202fda: 22 f8        	sd	s0, 48(sp)
80202fdc: 26 f4        	sd	s1, 40(sp)
80202fde: 4a f0        	sd	s2, 32(sp)
80202fe0: 4e ec        	sd	s3, 24(sp)
80202fe2: 80 00        	addi	s0, sp, 64
80202fe4: 0f 00 30 03  	fence	rw, rw

0000000080202fe8 <.Lpcrel_hi17>:
80202fe8: 17 45 01 00  	auipc	a0, 20
80202fec: 93 04 05 75  	addi	s1, a0, 1872
80202ff0: 88 78        	ld	a0, 48(s1)
80202ff2: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202ff6: 39 e5        	bnez	a0, 0x80203044 <.Lpcrel_hi18+0x34>
80202ff8: 93 85 04 03  	addi	a1, s1, 48
80202ffc: 05 46        	li	a2, 1
80202ffe: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203002: 29 e1        	bnez	a0, 0x80203044 <.Lpcrel_hi18+0x34>
80203004: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80203008: fd fa        	bnez	a3, 0x80202ffe <.Lpcrel_hi17+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020300a: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020300e: 90 e0        	sd	a2, 0(s1)

0000000080203010 <.Lpcrel_hi18>:
80203010: 17 25 00 00  	auipc	a0, 2
80203014: 13 05 05 53  	addi	a0, a0, 1328
80203018: 88 e4        	sd	a0, 8(s1)
8020301a: 11 45        	li	a0, 4
8020301c: 88 e8        	sd	a0, 16(s1)
8020301e: 23 bc 04 00  	sd	zero, 24(s1)
80203022: 23 80 04 02  	sb	zero, 32(s1)
80203026: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
8020302a: 23 08 04 fc  	sb	zero, -48(s0)
8020302e: 0f 00 10 03  	fence	rw, w
80203032: 09 45        	li	a0, 2
80203034: 88 f8        	sd	a0, 48(s1)
80203036: 13 05 84 fc  	addi	a0, s0, -56
8020303a: 97 10 00 00  	auipc	ra, 1
8020303e: e7 80 80 cc  	jalr	-824(ra)
80203042: 05 a0        	j	0x80203062 <.Lpcrel_hi18+0x52>
80203044: 85 45        	li	a1, 1
;             match status {
80203046: 63 1b b5 00  	bne	a0, a1, 0x8020305c <.Lpcrel_hi18+0x4c>
8020304a: 0f 00 00 01  	fence	w, 0
8020304e: 0f 00 30 03  	fence	rw, rw
80203052: 88 78        	ld	a0, 48(s1)
80203054: 0f 00 30 02  	fence	r, rw
;             match status {
80203058: e3 09 b5 fe  	beq	a0, a1, 0x8020304a <.Lpcrel_hi18+0x3a>
8020305c: 89 45        	li	a1, 2
;             match status {
8020305e: 63 1a b5 04  	bne	a0, a1, 0x802030b2 <.Lpcrel_hi18+0xa2>
;         self.lock.acquire();
80203062: 13 89 84 00  	addi	s2, s1, 8
80203066: 4a 85        	mv	a0, s2
80203068: 97 f0 ff ff  	auipc	ra, 1048575
8020306c: e7 80 e0 5c  	jalr	1486(ra)
;         r = self.freelist;
80203070: 83 b9 84 02  	ld	s3, 40(s1)
80203074: 63 82 09 02  	beqz	s3, 0x80203098 <.Lpcrel_hi18+0x88>
;             unsafe { self.freelist = (*r).next }
80203078: 03 b5 09 00  	ld	a0, 0(s3)
8020307c: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
8020307e: 4a 85        	mv	a0, s2
80203080: 97 f0 ff ff  	auipc	ra, 1048575
80203084: e7 80 60 71  	jalr	1814(ra)
80203088: 95 45        	li	a1, 5
8020308a: 05 66        	lui	a2, 1
8020308c: 4e 85        	mv	a0, s3
8020308e: 97 20 00 00  	auipc	ra, 2
80203092: e7 80 e0 8e  	jalr	-1810(ra)
80203096: 31 a0        	j	0x802030a2 <.Lpcrel_hi18+0x92>
;         self.lock.release();
80203098: 4a 85        	mv	a0, s2
8020309a: 97 f0 ff ff  	auipc	ra, 1048575
8020309e: e7 80 c0 6f  	jalr	1788(ra)
; }
802030a2: 4e 85        	mv	a0, s3
802030a4: e2 70        	ld	ra, 56(sp)
802030a6: 42 74        	ld	s0, 48(sp)
802030a8: a2 74        	ld	s1, 40(sp)
802030aa: 02 79        	ld	s2, 32(sp)
802030ac: e2 69        	ld	s3, 24(sp)
802030ae: 21 61        	addi	sp, sp, 64
802030b0: 82 80        	ret
;             match status {
802030b2: 05 e1        	bnez	a0, 0x802030d2 <.Lpcrel_hi21>

00000000802030b4 <.Lpcrel_hi19>:
;                 INCOMPLETE => unreachable!(),
802030b4: 17 25 00 00  	auipc	a0, 2
802030b8: 13 05 45 fd  	addi	a0, a0, -44

00000000802030bc <.Lpcrel_hi20>:
802030bc: 97 25 00 00  	auipc	a1, 2
802030c0: 13 86 45 ff  	addi	a2, a1, -12
802030c4: 93 05 80 02  	li	a1, 40
802030c8: 97 10 00 00  	auipc	ra, 1
802030cc: e7 80 80 e7  	jalr	-392(ra)
802030d0: 00 00        	unimp	

00000000802030d2 <.Lpcrel_hi21>:
;                 PANICKED => panic!("Once has panicked"),
802030d2: 17 25 00 00  	auipc	a0, 2
802030d6: 13 05 e5 f2  	addi	a0, a0, -210

00000000802030da <.Lpcrel_hi22>:
802030da: 97 25 00 00  	auipc	a1, 2
802030de: 13 86 65 f9  	addi	a2, a1, -106
802030e2: c5 45        	li	a1, 17
802030e4: 97 10 00 00  	auipc	ra, 1
802030e8: e7 80 c0 e5  	jalr	-420(ra)
802030ec: 00 00        	unimp	

00000000802030ee <_ZN6kernel6memory3kvm7kvminit17h67893881c39efb04E>:
; pub fn kvminit() {
802030ee: 59 71        	addi	sp, sp, -112
802030f0: 86 f4        	sd	ra, 104(sp)
802030f2: a2 f0        	sd	s0, 96(sp)
802030f4: a6 ec        	sd	s1, 88(sp)
802030f6: ca e8        	sd	s2, 80(sp)
802030f8: ce e4        	sd	s3, 72(sp)
802030fa: 80 18        	addi	s0, sp, 112
802030fc: 0f 00 30 03  	fence	rw, rw

0000000080203100 <.Lpcrel_hi0>:
80203100: 17 45 01 00  	auipc	a0, 20
80203104: 13 09 05 67  	addi	s2, a0, 1648
80203108: 03 35 09 01  	ld	a0, 16(s2)
8020310c: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203110: 29 e9        	bnez	a0, 0x80203162 <.Lpcrel_hi0+0x62>
80203112: 93 05 09 01  	addi	a1, s2, 16
80203116: 85 49        	li	s3, 1
80203118: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020311c: 39 e1        	bnez	a0, 0x80203162 <.Lpcrel_hi0+0x62>
8020311e: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80203122: 7d fa        	bnez	a2, 0x80203118 <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203124: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80203128: 97 00 00 00  	auipc	ra, 0
8020312c: e7 80 e0 ea  	jalr	-338(ra)
80203130: aa 84        	mv	s1, a0
80203132: 05 66        	lui	a2, 1
80203134: 81 45        	li	a1, 0
80203136: 97 20 00 00  	auipc	ra, 2
8020313a: e7 80 60 84  	jalr	-1978(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020313e: 23 30 39 01  	sd	s3, 0(s2)
80203142: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
80203146: 23 04 04 fa  	sb	zero, -88(s0)
8020314a: 0f 00 10 03  	fence	rw, w
8020314e: 09 45        	li	a0, 2
80203150: 23 38 a9 00  	sd	a0, 16(s2)
80203154: 13 05 04 fa  	addi	a0, s0, -96
80203158: 97 10 00 00  	auipc	ra, 1
8020315c: e7 80 a0 ba  	jalr	-1110(ra)
80203160: 0d a0        	j	0x80203182 <.Lpcrel_hi0+0x82>
80203162: 85 45        	li	a1, 1
;             match status {
80203164: 63 1c b5 00  	bne	a0, a1, 0x8020317c <.Lpcrel_hi0+0x7c>
80203168: 0f 00 00 01  	fence	w, 0
8020316c: 0f 00 30 03  	fence	rw, rw
80203170: 03 35 09 01  	ld	a0, 16(s2)
80203174: 0f 00 30 02  	fence	r, rw
;             match status {
80203178: e3 08 b5 fe  	beq	a0, a1, 0x80203168 <.Lpcrel_hi0+0x68>
8020317c: 89 45        	li	a1, 2
;             match status {
8020317e: 63 12 b5 12  	bne	a0, a1, 0x802032a2 <.Lpcrel_hi27+0x2a>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203182: 21 09        	addi	s2, s2, 8
80203184: b7 05 00 10  	lui	a1, 65536
80203188: 05 66        	lui	a2, 1
8020318a: b7 06 00 10  	lui	a3, 65536
8020318e: 19 47        	li	a4, 6
80203190: 4a 85        	mv	a0, s2
80203192: 97 00 00 00  	auipc	ra, 0
80203196: e7 80 80 a5  	jalr	-1448(ra)
8020319a: 01 25        	sext.w	a0, a0
8020319c: 63 11 05 14  	bnez	a0, 0x802032de <.Lpcrel_hi5>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802031a0: b7 15 00 10  	lui	a1, 65537
802031a4: 05 66        	lui	a2, 1
802031a6: b7 16 00 10  	lui	a3, 65537
802031aa: 19 47        	li	a4, 6
802031ac: 4a 85        	mv	a0, s2
802031ae: 97 00 00 00  	auipc	ra, 0
802031b2: e7 80 c0 a3  	jalr	-1476(ra)
802031b6: 01 25        	sext.w	a0, a0
802031b8: 63 1b 05 14  	bnez	a0, 0x8020330e <.Lpcrel_hi8>
802031bc: b7 05 00 0c  	lui	a1, 49152
802031c0: 37 06 40 00  	lui	a2, 1024
802031c4: b7 06 00 0c  	lui	a3, 49152
802031c8: 19 47        	li	a4, 6
802031ca: 4a 85        	mv	a0, s2
802031cc: 97 00 00 00  	auipc	ra, 0
802031d0: e7 80 e0 a1  	jalr	-1506(ra)
802031d4: 01 25        	sext.w	a0, a0
802031d6: 63 14 05 16  	bnez	a0, 0x8020333e <.Lpcrel_hi11>

00000000802031da <.Lpcrel_hi14>:
802031da: 17 25 00 00  	auipc	a0, 2
802031de: 93 04 65 e2  	addi	s1, a0, -474
802031e2: 13 05 f0 bf  	li	a0, -1025
802031e6: 56 05        	slli	a0, a0, 21
802031e8: 33 86 a4 00  	add	a2, s1, a0
802031ec: 93 05 10 40  	li	a1, 1025
802031f0: d6 05        	slli	a1, a1, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802031f2: 29 47        	li	a4, 10
802031f4: 4a 85        	mv	a0, s2
802031f6: ae 86        	mv	a3, a1
802031f8: 97 00 00 00  	auipc	ra, 0
802031fc: e7 80 20 9f  	jalr	-1550(ra)
80203200: 01 25        	sext.w	a0, a0
80203202: 63 16 05 16  	bnez	a0, 0x8020336e <.Lpcrel_hi15>
80203206: 45 45        	li	a0, 17
80203208: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
8020320a: 33 06 95 40  	sub	a2, a0, s1
8020320e: 19 47        	li	a4, 6
80203210: 4a 85        	mv	a0, s2
80203212: a6 85        	mv	a1, s1
80203214: a6 86        	mv	a3, s1
80203216: 97 00 00 00  	auipc	ra, 0
8020321a: e7 80 40 9d  	jalr	-1580(ra)
8020321e: 01 25        	sext.w	a0, a0
80203220: 63 1f 05 16  	bnez	a0, 0x8020339e <.Lpcrel_hi18>

0000000080203224 <.Lpcrel_hi21>:
80203224: 17 e5 ff ff  	auipc	a0, 1048574
80203228: 93 06 c5 dd  	addi	a3, a0, -548
8020322c: 37 05 00 04  	lui	a0, 16384
80203230: 7d 35        	addiw	a0, a0, -1
80203232: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203236: 05 66        	lui	a2, 1
80203238: 29 47        	li	a4, 10
8020323a: 4a 85        	mv	a0, s2
8020323c: 97 00 00 00  	auipc	ra, 0
80203240: e7 80 e0 9a  	jalr	-1618(ra)
80203244: 01 25        	sext.w	a0, a0
80203246: 63 14 05 18  	bnez	a0, 0x802033ce <.Lpcrel_hi22>
8020324a: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
8020324e: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080203252 <.Lpcrel_hi25>:
80203252: 17 25 00 00  	auipc	a0, 2
80203256: 13 05 e5 46  	addi	a0, a0, 1134
8020325a: 23 30 a4 fa  	sd	a0, -96(s0)
8020325e: 05 45        	li	a0, 1
80203260: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080203264 <.Lpcrel_hi26>:
80203264: 17 25 00 00  	auipc	a0, 2
80203268: 13 05 45 41  	addi	a0, a0, 1044
8020326c: 23 38 a4 fa  	sd	a0, -80(s0)
80203270: 23 3c 04 fa  	sd	zero, -72(s0)
80203274: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203278 <.Lpcrel_hi27>:
80203278: 17 25 00 00  	auipc	a0, 2
8020327c: 93 05 85 54  	addi	a1, a0, 1352
80203280: 13 05 84 f9  	addi	a0, s0, -104
80203284: 13 06 04 fa  	addi	a2, s0, -96
80203288: 97 10 00 00  	auipc	ra, 1
8020328c: e7 80 20 d8  	jalr	-638(ra)
80203290: 63 1d 05 16  	bnez	a0, 0x8020340a <.Lpcrel_hi28>
; }
80203294: a6 70        	ld	ra, 104(sp)
80203296: 06 74        	ld	s0, 96(sp)
80203298: e6 64        	ld	s1, 88(sp)
8020329a: 46 69        	ld	s2, 80(sp)
8020329c: a6 69        	ld	s3, 72(sp)
8020329e: 65 61        	addi	sp, sp, 112
802032a0: 82 80        	ret
;             match status {
802032a2: 05 e1        	bnez	a0, 0x802032c2 <.Lpcrel_hi3>

00000000802032a4 <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
802032a4: 17 25 00 00  	auipc	a0, 2
802032a8: 13 05 45 de  	addi	a0, a0, -540

00000000802032ac <.Lpcrel_hi2>:
802032ac: 97 25 00 00  	auipc	a1, 2
802032b0: 13 86 45 e0  	addi	a2, a1, -508
802032b4: 93 05 80 02  	li	a1, 40
802032b8: 97 10 00 00  	auipc	ra, 1
802032bc: e7 80 80 c8  	jalr	-888(ra)
802032c0: 00 00        	unimp	

00000000802032c2 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
802032c2: 17 25 00 00  	auipc	a0, 2
802032c6: 13 05 e5 d3  	addi	a0, a0, -706

00000000802032ca <.Lpcrel_hi4>:
802032ca: 97 25 00 00  	auipc	a1, 2
802032ce: 13 86 65 da  	addi	a2, a1, -602
802032d2: c5 45        	li	a1, 17
802032d4: 97 10 00 00  	auipc	ra, 1
802032d8: e7 80 c0 c6  	jalr	-916(ra)
802032dc: 00 00        	unimp	

00000000802032de <.Lpcrel_hi5>:
802032de: 17 25 00 00  	auipc	a0, 2
802032e2: 13 05 a5 38  	addi	a0, a0, 906
802032e6: 23 30 a4 fa  	sd	a0, -96(s0)
802032ea: 05 45        	li	a0, 1
802032ec: 23 34 a4 fa  	sd	a0, -88(s0)
802032f0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802032f4 <.Lpcrel_hi6>:
802032f4: 17 25 00 00  	auipc	a0, 2
802032f8: 13 05 45 38  	addi	a0, a0, 900
802032fc: 23 38 a4 fa  	sd	a0, -80(s0)
80203300: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203304 <.Lpcrel_hi7>:
;             panic!("kvmmap");
80203304: 17 25 00 00  	auipc	a0, 2
80203308: 93 05 c5 38  	addi	a1, a0, 908
8020330c: c5 a8        	j	0x802033fc <.Lpcrel_hi24+0x8>

000000008020330e <.Lpcrel_hi8>:
8020330e: 17 25 00 00  	auipc	a0, 2
80203312: 13 05 a5 35  	addi	a0, a0, 858
80203316: 23 30 a4 fa  	sd	a0, -96(s0)
8020331a: 05 45        	li	a0, 1
8020331c: 23 34 a4 fa  	sd	a0, -88(s0)
80203320: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203324 <.Lpcrel_hi9>:
80203324: 17 25 00 00  	auipc	a0, 2
80203328: 13 05 45 35  	addi	a0, a0, 852
8020332c: 23 38 a4 fa  	sd	a0, -80(s0)
80203330: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203334 <.Lpcrel_hi10>:
;             panic!("kvmmap");
80203334: 17 25 00 00  	auipc	a0, 2
80203338: 93 05 c5 35  	addi	a1, a0, 860
8020333c: c1 a0        	j	0x802033fc <.Lpcrel_hi24+0x8>

000000008020333e <.Lpcrel_hi11>:
8020333e: 17 25 00 00  	auipc	a0, 2
80203342: 13 05 a5 32  	addi	a0, a0, 810
80203346: 23 30 a4 fa  	sd	a0, -96(s0)
8020334a: 05 45        	li	a0, 1
8020334c: 23 34 a4 fa  	sd	a0, -88(s0)
80203350: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203354 <.Lpcrel_hi12>:
80203354: 17 25 00 00  	auipc	a0, 2
80203358: 13 05 45 32  	addi	a0, a0, 804
8020335c: 23 38 a4 fa  	sd	a0, -80(s0)
80203360: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203364 <.Lpcrel_hi13>:
;             panic!("kvmmap");
80203364: 17 25 00 00  	auipc	a0, 2
80203368: 93 05 c5 32  	addi	a1, a0, 812
8020336c: 41 a8        	j	0x802033fc <.Lpcrel_hi24+0x8>

000000008020336e <.Lpcrel_hi15>:
8020336e: 17 25 00 00  	auipc	a0, 2
80203372: 13 05 a5 2f  	addi	a0, a0, 762
80203376: 23 30 a4 fa  	sd	a0, -96(s0)
8020337a: 05 45        	li	a0, 1
8020337c: 23 34 a4 fa  	sd	a0, -88(s0)
80203380: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203384 <.Lpcrel_hi16>:
80203384: 17 25 00 00  	auipc	a0, 2
80203388: 13 05 45 2f  	addi	a0, a0, 756
8020338c: 23 38 a4 fa  	sd	a0, -80(s0)
80203390: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203394 <.Lpcrel_hi17>:
;             panic!("kvmmap");
80203394: 17 25 00 00  	auipc	a0, 2
80203398: 93 05 c5 2f  	addi	a1, a0, 764
8020339c: 85 a0        	j	0x802033fc <.Lpcrel_hi24+0x8>

000000008020339e <.Lpcrel_hi18>:
8020339e: 17 25 00 00  	auipc	a0, 2
802033a2: 13 05 a5 2c  	addi	a0, a0, 714
802033a6: 23 30 a4 fa  	sd	a0, -96(s0)
802033aa: 05 45        	li	a0, 1
802033ac: 23 34 a4 fa  	sd	a0, -88(s0)
802033b0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802033b4 <.Lpcrel_hi19>:
802033b4: 17 25 00 00  	auipc	a0, 2
802033b8: 13 05 45 2c  	addi	a0, a0, 708
802033bc: 23 38 a4 fa  	sd	a0, -80(s0)
802033c0: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802033c4 <.Lpcrel_hi20>:
;             panic!("kvmmap");
802033c4: 17 25 00 00  	auipc	a0, 2
802033c8: 93 05 c5 2c  	addi	a1, a0, 716
802033cc: 05 a8        	j	0x802033fc <.Lpcrel_hi24+0x8>

00000000802033ce <.Lpcrel_hi22>:
802033ce: 17 25 00 00  	auipc	a0, 2
802033d2: 13 05 a5 29  	addi	a0, a0, 666
802033d6: 23 30 a4 fa  	sd	a0, -96(s0)
802033da: 05 45        	li	a0, 1
802033dc: 23 34 a4 fa  	sd	a0, -88(s0)
802033e0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802033e4 <.Lpcrel_hi23>:
802033e4: 17 25 00 00  	auipc	a0, 2
802033e8: 13 05 45 29  	addi	a0, a0, 660
802033ec: 23 38 a4 fa  	sd	a0, -80(s0)
802033f0: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802033f4 <.Lpcrel_hi24>:
;             panic!("kvmmap");
802033f4: 17 25 00 00  	auipc	a0, 2
802033f8: 93 05 c5 29  	addi	a1, a0, 668
802033fc: 13 05 04 fa  	addi	a0, s0, -96
80203400: 97 10 00 00  	auipc	ra, 1
80203404: e7 80 20 b1  	jalr	-1262(ra)
80203408: 00 00        	unimp	

000000008020340a <.Lpcrel_hi28>:
8020340a: 17 25 00 00  	auipc	a0, 2
8020340e: 13 05 65 3e  	addi	a0, a0, 998

0000000080203412 <.Lpcrel_hi29>:
80203412: 97 25 00 00  	auipc	a1, 2
80203416: 93 86 e5 40  	addi	a3, a1, 1038

000000008020341a <.Lpcrel_hi30>:
8020341a: 97 25 00 00  	auipc	a1, 2
8020341e: 13 87 65 43  	addi	a4, a1, 1078
80203422: 93 05 b0 02  	li	a1, 43
80203426: 13 06 04 fd  	addi	a2, s0, -48
8020342a: 97 10 00 00  	auipc	ra, 1
8020342e: e7 80 20 b8  	jalr	-1150(ra)
80203432: 00 00        	unimp	

0000000080203434 <_ZN6kernel6memory3kvm11kvminithart17h5cb1070362a00da7E>:
; pub fn kvminithart() {
80203434: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
80203436: 86 f4        	sd	ra, 104(sp)
80203438: a2 f0        	sd	s0, 96(sp)
8020343a: a6 ec        	sd	s1, 88(sp)
8020343c: ca e8        	sd	s2, 80(sp)
8020343e: ce e4        	sd	s3, 72(sp)
80203440: 80 18        	addi	s0, sp, 112
80203442: 73 00 00 12  	sfence.vma
80203446: 0f 00 30 03  	fence	rw, rw

000000008020344a <.Lpcrel_hi31>:
8020344a: 17 45 01 00  	auipc	a0, 20
8020344e: 93 04 65 32  	addi	s1, a0, 806
80203452: 88 68        	ld	a0, 16(s1)
80203454: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203458: 21 e9        	bnez	a0, 0x802034a8 <.Lpcrel_hi31+0x5e>
8020345a: 93 85 04 01  	addi	a1, s1, 16
8020345e: 85 49        	li	s3, 1
80203460: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203464: 31 e1        	bnez	a0, 0x802034a8 <.Lpcrel_hi31+0x5e>
80203466: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
8020346a: 7d fa        	bnez	a2, 0x80203460 <.Lpcrel_hi31+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020346c: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80203470: 97 00 00 00  	auipc	ra, 0
80203474: e7 80 60 b6  	jalr	-1178(ra)
80203478: 2a 89        	mv	s2, a0
8020347a: 05 66        	lui	a2, 1
8020347c: 81 45        	li	a1, 0
8020347e: 97 10 00 00  	auipc	ra, 1
80203482: e7 80 e0 4f  	jalr	1278(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80203486: 23 b0 34 01  	sd	s3, 0(s1)
8020348a: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
8020348e: 23 04 04 fa  	sb	zero, -88(s0)
80203492: 0f 00 10 03  	fence	rw, w
80203496: 09 45        	li	a0, 2
80203498: 88 e8        	sd	a0, 16(s1)
8020349a: 13 05 04 fa  	addi	a0, s0, -96
8020349e: 97 10 00 00  	auipc	ra, 1
802034a2: e7 80 40 86  	jalr	-1948(ra)
802034a6: 05 a0        	j	0x802034c6 <.Lpcrel_hi31+0x7c>
802034a8: 85 45        	li	a1, 1
;             match status {
802034aa: 63 1b b5 00  	bne	a0, a1, 0x802034c0 <.Lpcrel_hi31+0x76>
802034ae: 0f 00 00 01  	fence	w, 0
802034b2: 0f 00 30 03  	fence	rw, rw
802034b6: 88 68        	ld	a0, 16(s1)
802034b8: 0f 00 30 02  	fence	r, rw
;             match status {
802034bc: e3 09 b5 fe  	beq	a0, a1, 0x802034ae <.Lpcrel_hi31+0x64>
802034c0: 89 45        	li	a1, 2
;             match status {
802034c2: 63 16 b5 06  	bne	a0, a1, 0x8020352e <.Lpcrel_hi38+0x28>
;         self.data as Addr
802034c6: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
802034c8: 31 81        	srli	a0, a0, 12
802034ca: fd 55        	li	a1, -1
802034cc: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
802034ce: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
802034d0: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
802034d4: 73 00 00 12  	sfence.vma
802034d8: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
802034dc: 23 3c a4 f8  	sd	a0, -104(s0)

00000000802034e0 <.Lpcrel_hi36>:
802034e0: 17 25 00 00  	auipc	a0, 2
802034e4: 13 05 85 20  	addi	a0, a0, 520
802034e8: 23 30 a4 fa  	sd	a0, -96(s0)
802034ec: 05 45        	li	a0, 1
802034ee: 23 34 a4 fa  	sd	a0, -88(s0)

00000000802034f2 <.Lpcrel_hi37>:
802034f2: 17 25 00 00  	auipc	a0, 2
802034f6: 13 05 65 18  	addi	a0, a0, 390
802034fa: 23 38 a4 fa  	sd	a0, -80(s0)
802034fe: 23 3c 04 fa  	sd	zero, -72(s0)
80203502: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203506 <.Lpcrel_hi38>:
80203506: 17 25 00 00  	auipc	a0, 2
8020350a: 93 05 a5 2b  	addi	a1, a0, 698
8020350e: 13 05 84 f9  	addi	a0, s0, -104
80203512: 13 06 04 fa  	addi	a2, s0, -96
80203516: 97 10 00 00  	auipc	ra, 1
8020351a: e7 80 40 af  	jalr	-1292(ra)
8020351e: 31 e5        	bnez	a0, 0x8020356a <.Lpcrel_hi39>
; }
80203520: a6 70        	ld	ra, 104(sp)
80203522: 06 74        	ld	s0, 96(sp)
80203524: e6 64        	ld	s1, 88(sp)
80203526: 46 69        	ld	s2, 80(sp)
80203528: a6 69        	ld	s3, 72(sp)
8020352a: 65 61        	addi	sp, sp, 112
8020352c: 82 80        	ret
;             match status {
8020352e: 05 e1        	bnez	a0, 0x8020354e <.Lpcrel_hi34>

0000000080203530 <.Lpcrel_hi32>:
;                 INCOMPLETE => unreachable!(),
80203530: 17 25 00 00  	auipc	a0, 2
80203534: 13 05 85 b5  	addi	a0, a0, -1192

0000000080203538 <.Lpcrel_hi33>:
80203538: 97 25 00 00  	auipc	a1, 2
8020353c: 13 86 85 b7  	addi	a2, a1, -1160
80203540: 93 05 80 02  	li	a1, 40
80203544: 97 10 00 00  	auipc	ra, 1
80203548: e7 80 c0 9f  	jalr	-1540(ra)
8020354c: 00 00        	unimp	

000000008020354e <.Lpcrel_hi34>:
;                 PANICKED => panic!("Once has panicked"),
8020354e: 17 25 00 00  	auipc	a0, 2
80203552: 13 05 25 ab  	addi	a0, a0, -1358

0000000080203556 <.Lpcrel_hi35>:
80203556: 97 25 00 00  	auipc	a1, 2
8020355a: 13 86 a5 b1  	addi	a2, a1, -1254
8020355e: c5 45        	li	a1, 17
80203560: 97 10 00 00  	auipc	ra, 1
80203564: e7 80 00 9e  	jalr	-1568(ra)
80203568: 00 00        	unimp	

000000008020356a <.Lpcrel_hi39>:
8020356a: 17 25 00 00  	auipc	a0, 2
8020356e: 13 05 65 28  	addi	a0, a0, 646

0000000080203572 <.Lpcrel_hi40>:
80203572: 97 25 00 00  	auipc	a1, 2
80203576: 93 86 e5 2a  	addi	a3, a1, 686

000000008020357a <.Lpcrel_hi41>:
8020357a: 97 25 00 00  	auipc	a1, 2
8020357e: 13 87 65 2d  	addi	a4, a1, 726
80203582: 93 05 b0 02  	li	a1, 43
80203586: 13 06 04 fd  	addi	a2, s0, -48
8020358a: 97 10 00 00  	auipc	ra, 1
8020358e: e7 80 20 a2  	jalr	-1502(ra)
80203592: 00 00        	unimp	

0000000080203594 <main>:
; pub fn main(hartid: usize) {
80203594: 19 71        	addi	sp, sp, -128
80203596: 86 fc        	sd	ra, 120(sp)
80203598: a2 f8        	sd	s0, 112(sp)
8020359a: a6 f4        	sd	s1, 104(sp)
8020359c: ca f0        	sd	s2, 96(sp)
8020359e: ce ec        	sd	s3, 88(sp)
802035a0: 00 01        	addi	s0, sp, 128

00000000802035a2 <.Lpcrel_hi1>:
802035a2: 17 95 01 00  	auipc	a0, 25
802035a6: 13 05 e5 a5  	addi	a0, a0, -1442

00000000802035aa <.Lpcrel_hi2>:
802035aa: 97 45 01 00  	auipc	a1, 20
802035ae: 93 85 65 a5  	addi	a1, a1, -1450
802035b2: 63 f9 a5 00  	bgeu	a1, a0, 0x802035c4 <.Lpcrel_hi2+0x1a>
802035b6: 13 86 15 00  	addi	a2, a1, 1
802035ba: 23 80 05 00  	sb	zero, 0(a1)
802035be: b2 85        	mv	a1, a2
802035c0: e3 6b a6 fe  	bltu	a2, a0, 0x802035b6 <.Lpcrel_hi2+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802035c4: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
802035c6: 49 e5        	bnez	a0, 0x80203650 <.Lpcrel_hi3>

00000000802035c8 <.Lpcrel_hi4>:
;     println!("{}", LOGO);
802035c8: 17 25 00 00  	auipc	a0, 2
802035cc: 13 05 85 f0  	addi	a0, a0, -248
802035d0: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802035d4 <.Lpcrel_hi5>:
802035d4: 17 f5 ff ff  	auipc	a0, 1048575
802035d8: 13 05 05 35  	addi	a0, a0, 848
802035dc: 23 38 a4 f8  	sd	a0, -112(s0)
802035e0: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
802035e4: 23 3c 24 f9  	sd	s2, -104(s0)

00000000802035e8 <.Lpcrel_hi6>:
802035e8: 17 25 00 00  	auipc	a0, 2
802035ec: 13 05 05 f0  	addi	a0, a0, -256
802035f0: 23 30 a4 fa  	sd	a0, -96(s0)
802035f4: 09 45        	li	a0, 2
802035f6: 23 34 a4 fa  	sd	a0, -88(s0)
802035fa: 13 05 84 f8  	addi	a0, s0, -120
802035fe: 23 38 a4 fa  	sd	a0, -80(s0)
80203602: 85 44        	li	s1, 1
80203604: 23 3c 94 fa  	sd	s1, -72(s0)
80203608: 23 30 04 fc  	sd	zero, -64(s0)

000000008020360c <.Lpcrel_hi7>:
8020360c: 17 25 00 00  	auipc	a0, 2
80203610: 93 05 45 1b  	addi	a1, a0, 436
80203614: 13 05 84 f9  	addi	a0, s0, -104
80203618: 13 06 04 fa  	addi	a2, s0, -96
8020361c: 97 10 00 00  	auipc	ra, 1
80203620: e7 80 e0 9e  	jalr	-1554(ra)
80203624: 61 c5        	beqz	a0, 0x802036ec <.Lpcrel_hi52+0x1a>

0000000080203626 <.Lpcrel_hi8>:
80203626: 17 25 00 00  	auipc	a0, 2
8020362a: 13 05 a5 1c  	addi	a0, a0, 458

000000008020362e <.Lpcrel_hi9>:
8020362e: 97 25 00 00  	auipc	a1, 2
80203632: 93 86 25 1f  	addi	a3, a1, 498

0000000080203636 <.Lpcrel_hi10>:
80203636: 97 25 00 00  	auipc	a1, 2
8020363a: 13 87 a5 21  	addi	a4, a1, 538
8020363e: 93 05 b0 02  	li	a1, 43
80203642: 13 06 04 fd  	addi	a2, s0, -48
80203646: 97 10 00 00  	auipc	ra, 1
8020364a: e7 80 60 96  	jalr	-1690(ra)
8020364e: 00 00        	unimp	

0000000080203650 <.Lpcrel_hi3>:
80203650: 17 85 01 00  	auipc	a0, 24
80203654: 0f 00 30 03  	fence	rw, rw
80203658: 83 05 85 34  	lb	a1, 840(a0)
8020365c: 0f 00 30 02  	fence	r, rw
80203660: f5 d9        	beqz	a1, 0x80203654 <.Lpcrel_hi3+0x4>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203662: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80203664: 23 30 a4 f8  	sd	a0, -128(s0)
80203668: 13 05 04 f8  	addi	a0, s0, -128
8020366c: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203670 <.Lpcrel_hi47>:
80203670: 17 15 00 00  	auipc	a0, 1
80203674: 13 05 45 2d  	addi	a0, a0, 724
80203678: 23 38 a4 f8  	sd	a0, -112(s0)
8020367c: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80203680: 23 3c 24 f9  	sd	s2, -104(s0)

0000000080203684 <.Lpcrel_hi48>:
80203684: 17 25 00 00  	auipc	a0, 2
80203688: 13 05 c5 08  	addi	a0, a0, 140
8020368c: 23 30 a4 fa  	sd	a0, -96(s0)
80203690: 09 45        	li	a0, 2
80203692: 23 34 a4 fa  	sd	a0, -88(s0)
80203696: 13 05 84 f8  	addi	a0, s0, -120
8020369a: 23 38 a4 fa  	sd	a0, -80(s0)
8020369e: 85 44        	li	s1, 1
802036a0: 23 3c 94 fa  	sd	s1, -72(s0)
802036a4: 23 30 04 fc  	sd	zero, -64(s0)

00000000802036a8 <.Lpcrel_hi49>:
802036a8: 17 25 00 00  	auipc	a0, 2
802036ac: 93 05 85 11  	addi	a1, a0, 280
802036b0: 13 05 84 f9  	addi	a0, s0, -104
802036b4: 13 06 04 fa  	addi	a2, s0, -96
802036b8: 97 10 00 00  	auipc	ra, 1
802036bc: e7 80 20 95  	jalr	-1710(ra)
802036c0: 41 cd        	beqz	a0, 0x80203758 <.Lpcrel_hi16+0x1a>

00000000802036c2 <.Lpcrel_hi50>:
802036c2: 17 25 00 00  	auipc	a0, 2
802036c6: 13 05 e5 12  	addi	a0, a0, 302

00000000802036ca <.Lpcrel_hi51>:
802036ca: 97 25 00 00  	auipc	a1, 2
802036ce: 93 86 65 15  	addi	a3, a1, 342

00000000802036d2 <.Lpcrel_hi52>:
802036d2: 97 25 00 00  	auipc	a1, 2
802036d6: 13 87 e5 17  	addi	a4, a1, 382
802036da: 93 05 b0 02  	li	a1, 43
802036de: 13 06 04 fd  	addi	a2, s0, -48
802036e2: 97 10 00 00  	auipc	ra, 1
802036e6: e7 80 a0 8c  	jalr	-1846(ra)
802036ea: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
802036ec: 23 34 24 f9  	sd	s2, -120(s0)

00000000802036f0 <.Lpcrel_hi11>:
802036f0: 17 25 00 00  	auipc	a0, 2
802036f4: 13 05 05 06  	addi	a0, a0, 96
802036f8: 23 30 a4 fa  	sd	a0, -96(s0)
802036fc: 23 34 94 fa  	sd	s1, -88(s0)

0000000080203700 <.Lpcrel_hi12>:
80203700: 17 25 00 00  	auipc	a0, 2
80203704: 93 04 85 ff  	addi	s1, a0, -8
80203708: 23 38 94 fa  	sd	s1, -80(s0)
8020370c: 23 3c 04 fa  	sd	zero, -72(s0)
80203710: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203714 <.Lpcrel_hi13>:
80203714: 17 25 00 00  	auipc	a0, 2
80203718: 93 05 c5 0a  	addi	a1, a0, 172
8020371c: 13 05 84 f8  	addi	a0, s0, -120
80203720: 13 06 04 fa  	addi	a2, s0, -96
80203724: 97 10 00 00  	auipc	ra, 1
80203728: e7 80 60 8e  	jalr	-1818(ra)
8020372c: 69 c5        	beqz	a0, 0x802037f6 <.Lpcrel_hi58+0x1a>

000000008020372e <.Lpcrel_hi14>:
8020372e: 17 25 00 00  	auipc	a0, 2
80203732: 13 05 25 0c  	addi	a0, a0, 194

0000000080203736 <.Lpcrel_hi15>:
80203736: 97 25 00 00  	auipc	a1, 2
8020373a: 93 86 a5 0e  	addi	a3, a1, 234

000000008020373e <.Lpcrel_hi16>:
8020373e: 97 25 00 00  	auipc	a1, 2
80203742: 13 87 25 11  	addi	a4, a1, 274
80203746: 93 05 b0 02  	li	a1, 43
8020374a: 13 06 04 fd  	addi	a2, s0, -48
8020374e: 97 10 00 00  	auipc	ra, 1
80203752: e7 80 e0 85  	jalr	-1954(ra)
80203756: 00 00        	unimp	
;         kvminithart();
80203758: 97 00 00 00  	auipc	ra, 0
8020375c: e7 80 c0 cd  	jalr	-804(ra)
;         trapinithart();
80203760: 97 f0 ff ff  	auipc	ra, 1048575
80203764: e7 80 60 1f  	jalr	502(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203768: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
8020376a: 93 15 85 00  	slli	a1, a0, 8
8020376e: 37 26 00 0c  	lui	a2, 49154
80203772: b2 95        	add	a1, a1, a2
80203774: 13 06 20 40  	li	a2, 1026
80203778: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
8020377c: 36 05        	slli	a0, a0, 13
8020377e: b7 15 20 0c  	lui	a1, 49665
80203782: 2e 95        	add	a0, a0, a1
80203784: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80203788: 23 34 24 f9  	sd	s2, -120(s0)

000000008020378c <.Lpcrel_hi53>:
8020378c: 17 25 00 00  	auipc	a0, 2
80203790: 13 05 c5 b8  	addi	a0, a0, -1140
80203794: 23 30 a4 fa  	sd	a0, -96(s0)
80203798: 23 34 94 fa  	sd	s1, -88(s0)

000000008020379c <.Lpcrel_hi54>:
8020379c: 17 25 00 00  	auipc	a0, 2
802037a0: 13 05 45 b6  	addi	a0, a0, -1180
802037a4: 23 38 a4 fa  	sd	a0, -80(s0)
802037a8: 23 3c 04 fa  	sd	zero, -72(s0)
802037ac: 23 30 04 fc  	sd	zero, -64(s0)

00000000802037b0 <.Lpcrel_hi55>:
802037b0: 17 25 00 00  	auipc	a0, 2
802037b4: 93 05 05 01  	addi	a1, a0, 16
802037b8: 13 05 84 f8  	addi	a0, s0, -120
802037bc: 13 06 04 fa  	addi	a2, s0, -96
802037c0: 97 10 00 00  	auipc	ra, 1
802037c4: e7 80 a0 84  	jalr	-1974(ra)
802037c8: 63 08 05 2c  	beqz	a0, 0x80203a98 <.Lpcrel_hi59>

00000000802037cc <.Lpcrel_hi56>:
802037cc: 17 25 00 00  	auipc	a0, 2
802037d0: 13 05 45 02  	addi	a0, a0, 36

00000000802037d4 <.Lpcrel_hi57>:
802037d4: 97 25 00 00  	auipc	a1, 2
802037d8: 93 86 c5 04  	addi	a3, a1, 76

00000000802037dc <.Lpcrel_hi58>:
802037dc: 97 25 00 00  	auipc	a1, 2
802037e0: 13 87 45 07  	addi	a4, a1, 116
802037e4: 93 05 b0 02  	li	a1, 43
802037e8: 13 06 04 fd  	addi	a2, s0, -48
802037ec: 97 00 00 00  	auipc	ra, 0
802037f0: e7 80 00 7c  	jalr	1984(ra)
802037f4: 00 00        	unimp	
802037f6: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
802037fa: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802037fe <.Lpcrel_hi17>:
802037fe: 17 25 00 00  	auipc	a0, 2
80203802: 13 05 a5 f6  	addi	a0, a0, -150
80203806: 23 30 a4 fa  	sd	a0, -96(s0)
8020380a: 05 45        	li	a0, 1
8020380c: 23 34 a4 fa  	sd	a0, -88(s0)
80203810: 23 38 94 fa  	sd	s1, -80(s0)
80203814: 23 3c 04 fa  	sd	zero, -72(s0)
80203818: 23 30 04 fc  	sd	zero, -64(s0)

000000008020381c <.Lpcrel_hi18>:
8020381c: 17 25 00 00  	auipc	a0, 2
80203820: 93 05 45 fa  	addi	a1, a0, -92
80203824: 13 05 84 f8  	addi	a0, s0, -120
80203828: 13 06 04 fa  	addi	a2, s0, -96
8020382c: 97 00 00 00  	auipc	ra, 0
80203830: e7 80 e0 7d  	jalr	2014(ra)
80203834: 15 c5        	beqz	a0, 0x80203860 <.Lpcrel_hi21+0x1a>

0000000080203836 <.Lpcrel_hi19>:
80203836: 17 25 00 00  	auipc	a0, 2
8020383a: 13 05 a5 fb  	addi	a0, a0, -70

000000008020383e <.Lpcrel_hi20>:
8020383e: 97 25 00 00  	auipc	a1, 2
80203842: 93 86 25 fe  	addi	a3, a1, -30

0000000080203846 <.Lpcrel_hi21>:
80203846: 97 25 00 00  	auipc	a1, 2
8020384a: 13 87 a5 00  	addi	a4, a1, 10
8020384e: 93 05 b0 02  	li	a1, 43
80203852: 13 06 04 fd  	addi	a2, s0, -48
80203856: 97 00 00 00  	auipc	ra, 0
8020385a: e7 80 60 75  	jalr	1878(ra)
8020385e: 00 00        	unimp	
;         kinit(); 			// 初始化物理页分配器
80203860: 97 f0 ff ff  	auipc	ra, 1048575
80203864: e7 80 00 57  	jalr	1392(ra)
;         kvminit(); 			// 创建内核页表
80203868: 97 00 00 00  	auipc	ra, 0
8020386c: e7 80 60 88  	jalr	-1914(ra)
;         kvminithart(); 		// 打开分页管理
80203870: 97 00 00 00  	auipc	ra, 0
80203874: e7 80 40 bc  	jalr	-1084(ra)

0000000080203878 <.Lpcrel_hi22>:
;         self.0.call_once(builder)
80203878: 17 45 01 00  	auipc	a0, 20
8020387c: 13 05 05 f1  	addi	a0, a0, -240
80203880: 97 e0 ff ff  	auipc	ra, 1048574
80203884: e7 80 00 78  	jalr	1920(ra)
80203888: 13 05 05 0c  	addi	a0, a0, 192
8020388c: 93 05 00 04  	li	a1, 64
80203890: 37 06 00 04  	lui	a2, 16384
80203894: 75 36        	addiw	a2, a2, -3
80203896: 32 06        	slli	a2, a2, 12
80203898: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
8020389a: 10 e1        	sd	a2, 0(a0)
8020389c: 13 05 85 10  	addi	a0, a0, 264
802038a0: fd 15        	addi	a1, a1, -1
802038a2: 36 96        	add	a2, a2, a3
802038a4: fd f9        	bnez	a1, 0x8020389a <.Lpcrel_hi22+0x22>
802038a6: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
802038aa: 23 34 24 f9  	sd	s2, -120(s0)

00000000802038ae <.Lpcrel_hi23>:
802038ae: 17 25 00 00  	auipc	a0, 2
802038b2: 13 05 25 fd  	addi	a0, a0, -46
802038b6: 23 30 a4 fa  	sd	a0, -96(s0)
802038ba: 85 44        	li	s1, 1
802038bc: 23 34 94 fa  	sd	s1, -88(s0)

00000000802038c0 <.Lpcrel_hi24>:
802038c0: 17 25 00 00  	auipc	a0, 2
802038c4: 13 05 05 fd  	addi	a0, a0, -48
802038c8: 23 38 a4 fa  	sd	a0, -80(s0)
802038cc: 23 3c 04 fa  	sd	zero, -72(s0)
802038d0: 23 30 04 fc  	sd	zero, -64(s0)

00000000802038d4 <.Lpcrel_hi25>:
802038d4: 17 25 00 00  	auipc	a0, 2
802038d8: 93 05 c5 ee  	addi	a1, a0, -276
802038dc: 13 05 84 f8  	addi	a0, s0, -120
802038e0: 13 06 04 fa  	addi	a2, s0, -96
802038e4: 97 00 00 00  	auipc	ra, 0
802038e8: e7 80 60 72  	jalr	1830(ra)
802038ec: 15 c5        	beqz	a0, 0x80203918 <.Lpcrel_hi28+0x1a>

00000000802038ee <.Lpcrel_hi26>:
802038ee: 17 25 00 00  	auipc	a0, 2
802038f2: 13 05 25 f0  	addi	a0, a0, -254

00000000802038f6 <.Lpcrel_hi27>:
802038f6: 97 25 00 00  	auipc	a1, 2
802038fa: 93 86 a5 f2  	addi	a3, a1, -214

00000000802038fe <.Lpcrel_hi28>:
802038fe: 97 25 00 00  	auipc	a1, 2
80203902: 13 87 25 f5  	addi	a4, a1, -174
80203906: 93 05 b0 02  	li	a1, 43
8020390a: 13 06 04 fd  	addi	a2, s0, -48
8020390e: 97 00 00 00  	auipc	ra, 0
80203912: e7 80 e0 69  	jalr	1694(ra)
80203916: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80203918: 23 34 24 f9  	sd	s2, -120(s0)

000000008020391c <.Lpcrel_hi29>:
8020391c: 17 25 00 00  	auipc	a0, 2
80203920: 13 05 c5 8a  	addi	a0, a0, -1876
80203924: 23 30 a4 fa  	sd	a0, -96(s0)
80203928: 23 34 94 fa  	sd	s1, -88(s0)

000000008020392c <.Lpcrel_hi30>:
8020392c: 17 25 00 00  	auipc	a0, 2
80203930: 13 05 c5 8a  	addi	a0, a0, -1876
80203934: 23 38 a4 fa  	sd	a0, -80(s0)
80203938: 23 3c 04 fa  	sd	zero, -72(s0)
8020393c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203940 <.Lpcrel_hi31>:
80203940: 17 25 00 00  	auipc	a0, 2
80203944: 93 05 05 e8  	addi	a1, a0, -384
80203948: 13 05 84 f8  	addi	a0, s0, -120
8020394c: 13 06 04 fa  	addi	a2, s0, -96
80203950: 97 00 00 00  	auipc	ra, 0
80203954: e7 80 a0 6b  	jalr	1722(ra)
80203958: 15 c5        	beqz	a0, 0x80203984 <.Lpcrel_hi34+0x1a>

000000008020395a <.Lpcrel_hi32>:
8020395a: 17 25 00 00  	auipc	a0, 2
8020395e: 13 05 65 e9  	addi	a0, a0, -362

0000000080203962 <.Lpcrel_hi33>:
80203962: 97 25 00 00  	auipc	a1, 2
80203966: 93 86 e5 eb  	addi	a3, a1, -322

000000008020396a <.Lpcrel_hi34>:
8020396a: 97 25 00 00  	auipc	a1, 2
8020396e: 13 87 65 ee  	addi	a4, a1, -282
80203972: 93 05 b0 02  	li	a1, 43
80203976: 13 06 04 fd  	addi	a2, s0, -48
8020397a: 97 00 00 00  	auipc	ra, 0
8020397e: e7 80 20 63  	jalr	1586(ra)
80203982: 00 00        	unimp	
;         trapinithart(); 	// 设置中断向量
80203984: 97 f0 ff ff  	auipc	ra, 1048575
80203988: e7 80 20 fd  	jalr	-46(ra)
8020398c: 37 05 00 0c  	lui	a0, 49152
80203990: 85 49        	li	s3, 1
80203992: 23 24 35 03  	sw	s3, 40(a0)
80203996: 23 22 35 01  	sw	s3, 4(a0)
;     Stdout.write_fmt(args).unwrap();
8020399a: 23 34 24 f9  	sd	s2, -120(s0)

000000008020399e <.Lpcrel_hi35>:
8020399e: 17 25 00 00  	auipc	a0, 2
802039a2: 13 05 25 95  	addi	a0, a0, -1710
802039a6: 23 30 a4 fa  	sd	a0, -96(s0)
802039aa: 23 34 34 fb  	sd	s3, -88(s0)

00000000802039ae <.Lpcrel_hi36>:
802039ae: 17 25 00 00  	auipc	a0, 2
802039b2: 93 04 25 95  	addi	s1, a0, -1710
802039b6: 23 38 94 fa  	sd	s1, -80(s0)
802039ba: 23 3c 04 fa  	sd	zero, -72(s0)
802039be: 23 30 04 fc  	sd	zero, -64(s0)

00000000802039c2 <.Lpcrel_hi37>:
802039c2: 17 25 00 00  	auipc	a0, 2
802039c6: 93 05 e5 df  	addi	a1, a0, -514
802039ca: 13 05 84 f8  	addi	a0, s0, -120
802039ce: 13 06 04 fa  	addi	a2, s0, -96
802039d2: 97 00 00 00  	auipc	ra, 0
802039d6: e7 80 80 63  	jalr	1592(ra)
802039da: 15 c5        	beqz	a0, 0x80203a06 <.Lpcrel_hi40+0x1a>

00000000802039dc <.Lpcrel_hi38>:
802039dc: 17 25 00 00  	auipc	a0, 2
802039e0: 13 05 45 e1  	addi	a0, a0, -492

00000000802039e4 <.Lpcrel_hi39>:
802039e4: 97 25 00 00  	auipc	a1, 2
802039e8: 93 86 c5 e3  	addi	a3, a1, -452

00000000802039ec <.Lpcrel_hi40>:
802039ec: 97 25 00 00  	auipc	a1, 2
802039f0: 13 87 45 e6  	addi	a4, a1, -412
802039f4: 93 05 b0 02  	li	a1, 43
802039f8: 13 06 04 fd  	addi	a2, s0, -48
802039fc: 97 00 00 00  	auipc	ra, 0
80203a00: e7 80 00 5b  	jalr	1456(ra)
80203a04: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203a06: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80203a08: 93 15 85 00  	slli	a1, a0, 8
80203a0c: 37 26 00 0c  	lui	a2, 49154
80203a10: b2 95        	add	a1, a1, a2
80203a12: 13 06 20 40  	li	a2, 1026
80203a16: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80203a1a: 36 05        	slli	a0, a0, 13
80203a1c: b7 15 20 0c  	lui	a1, 49665
80203a20: 2e 95        	add	a0, a0, a1
80203a22: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80203a26: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203a2a <.Lpcrel_hi41>:
80203a2a: 17 25 00 00  	auipc	a0, 2
80203a2e: 13 05 e5 8e  	addi	a0, a0, -1810
80203a32: 23 30 a4 fa  	sd	a0, -96(s0)
80203a36: 23 34 34 fb  	sd	s3, -88(s0)
80203a3a: 23 38 94 fa  	sd	s1, -80(s0)
80203a3e: 23 3c 04 fa  	sd	zero, -72(s0)
80203a42: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203a46 <.Lpcrel_hi42>:
80203a46: 17 25 00 00  	auipc	a0, 2
80203a4a: 93 05 a5 d7  	addi	a1, a0, -646
80203a4e: 13 05 84 f8  	addi	a0, s0, -120
80203a52: 13 06 04 fa  	addi	a2, s0, -96
80203a56: 97 00 00 00  	auipc	ra, 0
80203a5a: e7 80 40 5b  	jalr	1460(ra)
80203a5e: 15 c5        	beqz	a0, 0x80203a8a <.Lpcrel_hi45+0x1a>

0000000080203a60 <.Lpcrel_hi43>:
80203a60: 17 25 00 00  	auipc	a0, 2
80203a64: 13 05 05 d9  	addi	a0, a0, -624

0000000080203a68 <.Lpcrel_hi44>:
80203a68: 97 25 00 00  	auipc	a1, 2
80203a6c: 93 86 85 db  	addi	a3, a1, -584

0000000080203a70 <.Lpcrel_hi45>:
80203a70: 97 25 00 00  	auipc	a1, 2
80203a74: 13 87 05 de  	addi	a4, a1, -544
80203a78: 93 05 b0 02  	li	a1, 43
80203a7c: 13 06 04 fd  	addi	a2, s0, -48
80203a80: 97 00 00 00  	auipc	ra, 0
80203a84: e7 80 c0 52  	jalr	1324(ra)
80203a88: 00 00        	unimp	
80203a8a: 0f 00 10 03  	fence	rw, w

0000000080203a8e <.Lpcrel_hi46>:
80203a8e: 17 85 01 00  	auipc	a0, 24
80203a92: 85 45        	li	a1, 1
80203a94: 23 05 b5 f0  	sb	a1, -246(a0)

0000000080203a98 <.Lpcrel_hi59>:
80203a98: 17 25 00 00  	auipc	a0, 2
80203a9c: 13 05 05 cf  	addi	a0, a0, -784
80203aa0: 23 30 a4 fa  	sd	a0, -96(s0)
80203aa4: 05 45        	li	a0, 1
80203aa6: 23 34 a4 fa  	sd	a0, -88(s0)
80203aaa: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203aae <.Lpcrel_hi60>:
80203aae: 17 25 00 00  	auipc	a0, 2
80203ab2: 13 05 a5 c4  	addi	a0, a0, -950
80203ab6: 23 38 a4 fa  	sd	a0, -80(s0)
80203aba: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203abe <.Lpcrel_hi61>:
;     panic!("Shutdown!");
80203abe: 17 25 00 00  	auipc	a0, 2
80203ac2: 93 05 a5 ce  	addi	a1, a0, -790
80203ac6: 13 05 04 fa  	addi	a0, s0, -96
80203aca: 97 00 00 00  	auipc	ra, 0
80203ace: e7 80 80 44  	jalr	1096(ra)
80203ad2: 00 00        	unimp	

0000000080203ad4 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h37a403a69006f640E.llvm.4752517773200677301>:
80203ad4: 41 11        	addi	sp, sp, -16
80203ad6: 06 e4        	sd	ra, 8(sp)
80203ad8: 22 e0        	sd	s0, 0(sp)
80203ada: 00 08        	addi	s0, sp, 16
80203adc: a2 60        	ld	ra, 8(sp)
80203ade: 02 64        	ld	s0, 0(sp)
80203ae0: 41 01        	addi	sp, sp, 16
80203ae2: 82 80        	ret

0000000080203ae4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301>:
80203ae4: 01 11        	addi	sp, sp, -32
80203ae6: 06 ec        	sd	ra, 24(sp)
80203ae8: 22 e8        	sd	s0, 16(sp)
80203aea: 00 10        	addi	s0, sp, 32
80203aec: 1b 85 05 00  	sext.w	a0, a1
80203af0: 13 06 00 08  	li	a2, 128
80203af4: 23 26 04 fe  	sw	zero, -20(s0)
80203af8: 63 76 c5 00  	bgeu	a0, a2, 0x80203b04 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x20>
80203afc: 23 06 b4 fe  	sb	a1, -20(s0)
80203b00: 05 47        	li	a4, 1
80203b02: 71 a0        	j	0x80203b8e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xaa>
80203b04: 1b d5 b5 00  	srliw	a0, a1, 11
80203b08: 19 ed        	bnez	a0, 0x80203b26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x42>
80203b0a: 13 d5 65 00  	srli	a0, a1, 6
80203b0e: 13 65 05 0c  	ori	a0, a0, 192
80203b12: 23 06 a4 fe  	sb	a0, -20(s0)
80203b16: 13 f5 f5 03  	andi	a0, a1, 63
80203b1a: 13 05 05 08  	addi	a0, a0, 128
80203b1e: a3 06 a4 fe  	sb	a0, -19(s0)
80203b22: 09 47        	li	a4, 2
80203b24: ad a0        	j	0x80203b8e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xaa>
80203b26: 1b d5 05 01  	srliw	a0, a1, 16
80203b2a: 15 e5        	bnez	a0, 0x80203b56 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x72>
80203b2c: 13 d5 c5 00  	srli	a0, a1, 12
80203b30: 13 65 05 0e  	ori	a0, a0, 224
80203b34: 23 06 a4 fe  	sb	a0, -20(s0)
80203b38: 13 95 45 03  	slli	a0, a1, 52
80203b3c: 69 91        	srli	a0, a0, 58
80203b3e: 13 05 05 08  	addi	a0, a0, 128
80203b42: a3 06 a4 fe  	sb	a0, -19(s0)
80203b46: 13 f5 f5 03  	andi	a0, a1, 63
80203b4a: 13 05 05 08  	addi	a0, a0, 128
80203b4e: 23 07 a4 fe  	sb	a0, -18(s0)
80203b52: 0d 47        	li	a4, 3
80203b54: 2d a8        	j	0x80203b8e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xaa>
80203b56: 13 95 b5 02  	slli	a0, a1, 43
80203b5a: 75 91        	srli	a0, a0, 61
80203b5c: 13 05 05 0f  	addi	a0, a0, 240
80203b60: 23 06 a4 fe  	sb	a0, -20(s0)
80203b64: 13 95 e5 02  	slli	a0, a1, 46
80203b68: 69 91        	srli	a0, a0, 58
80203b6a: 13 05 05 08  	addi	a0, a0, 128
80203b6e: a3 06 a4 fe  	sb	a0, -19(s0)
80203b72: 13 95 45 03  	slli	a0, a1, 52
80203b76: 69 91        	srli	a0, a0, 58
80203b78: 13 05 05 08  	addi	a0, a0, 128
80203b7c: 23 07 a4 fe  	sb	a0, -18(s0)
80203b80: 13 f5 f5 03  	andi	a0, a1, 63
80203b84: 13 05 05 08  	addi	a0, a0, 128
80203b88: a3 07 a4 fe  	sb	a0, -17(s0)
80203b8c: 11 47        	li	a4, 4
80203b8e: 93 06 c4 fe  	addi	a3, s0, -20
80203b92: 36 97        	add	a4, a4, a3
80203b94: 13 03 f0 0d  	li	t1, 223
80203b98: 13 08 00 0f  	li	a6, 240
80203b9c: b7 02 11 00  	lui	t0, 272
80203ba0: 85 48        	li	a7, 1
80203ba2: 01 a8        	j	0x80203bb2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xce>
80203ba4: 85 06        	addi	a3, a3, 1
;         asm!(
80203ba6: 81 45        	li	a1, 0
80203ba8: 01 46        	li	a2, 0
80203baa: 73 00 00 00  	ecall	
80203bae: 63 8f e6 04  	beq	a3, a4, 0x80203c0c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x128>
80203bb2: 83 85 06 00  	lb	a1, 0(a3)
80203bb6: 13 f5 f5 0f  	andi	a0, a1, 255
80203bba: e3 d5 05 fe  	bgez	a1, 0x80203ba4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xc0>
80203bbe: 03 c6 16 00  	lbu	a2, 1(a3)
80203bc2: 93 75 f5 01  	andi	a1, a0, 31
80203bc6: 13 76 f6 03  	andi	a2, a2, 63
80203bca: 63 77 a3 02  	bgeu	t1, a0, 0x80203bf8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x114>
80203bce: 83 c7 26 00  	lbu	a5, 2(a3)
80203bd2: 1a 06        	slli	a2, a2, 6
80203bd4: 93 f7 f7 03  	andi	a5, a5, 63
80203bd8: 5d 8e        	or	a2, a2, a5
80203bda: 63 64 05 03  	bltu	a0, a6, 0x80203c02 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x11e>
80203bde: 03 c5 36 00  	lbu	a0, 3(a3)
80203be2: f6 15        	slli	a1, a1, 61
80203be4: ad 91        	srli	a1, a1, 43
80203be6: 1a 06        	slli	a2, a2, 6
80203be8: 13 75 f5 03  	andi	a0, a0, 63
80203bec: 51 8d        	or	a0, a0, a2
80203bee: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203bf0: 63 0e 55 00  	beq	a0, t0, 0x80203c0c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0x128>
80203bf4: 91 06        	addi	a3, a3, 4
80203bf6: 45 bf        	j	0x80203ba6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xc2>
80203bf8: 89 06        	addi	a3, a3, 2
80203bfa: 13 95 65 00  	slli	a0, a1, 6
80203bfe: 51 8d        	or	a0, a0, a2
80203c00: 5d b7        	j	0x80203ba6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xc2>
80203c02: 8d 06        	addi	a3, a3, 3
80203c04: 13 95 c5 00  	slli	a0, a1, 12
80203c08: 51 8d        	or	a0, a0, a2
80203c0a: 71 bf        	j	0x80203ba6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h859b80c08cdc9818E.llvm.4752517773200677301+0xc2>
80203c0c: 01 45        	li	a0, 0
80203c0e: e2 60        	ld	ra, 24(sp)
80203c10: 42 64        	ld	s0, 16(sp)
80203c12: 05 61        	addi	sp, sp, 32
80203c14: 82 80        	ret

0000000080203c16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h4c20365bb11ca09aE.llvm.4752517773200677301>:
80203c16: 5d 71        	addi	sp, sp, -80
80203c18: 86 e4        	sd	ra, 72(sp)
80203c1a: a2 e0        	sd	s0, 64(sp)
80203c1c: 80 08        	addi	s0, sp, 80
80203c1e: 90 75        	ld	a2, 40(a1)
80203c20: 94 71        	ld	a3, 32(a1)
80203c22: 98 6d        	ld	a4, 24(a1)
80203c24: 23 34 c4 fe  	sd	a2, -24(s0)
80203c28: 23 30 d4 fe  	sd	a3, -32(s0)
80203c2c: 23 3c e4 fc  	sd	a4, -40(s0)
80203c30: 90 69        	ld	a2, 16(a1)
80203c32: 94 65        	ld	a3, 8(a1)
80203c34: 8c 61        	ld	a1, 0(a1)
80203c36: 08 61        	ld	a0, 0(a0)
80203c38: 23 38 c4 fc  	sd	a2, -48(s0)
80203c3c: 23 34 d4 fc  	sd	a3, -56(s0)
80203c40: 23 30 b4 fc  	sd	a1, -64(s0)
80203c44: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080203c48 <.Lpcrel_hi0>:
80203c48: 17 25 00 00  	auipc	a0, 2
80203c4c: 93 05 85 b7  	addi	a1, a0, -1160
80203c50: 13 05 84 fb  	addi	a0, s0, -72
80203c54: 13 06 04 fc  	addi	a2, s0, -64
80203c58: 97 00 00 00  	auipc	ra, 0
80203c5c: e7 80 20 3b  	jalr	946(ra)
80203c60: a6 60        	ld	ra, 72(sp)
80203c62: 06 64        	ld	s0, 64(sp)
80203c64: 61 61        	addi	sp, sp, 80
80203c66: 82 80        	ret

0000000080203c68 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301>:
80203c68: 41 11        	addi	sp, sp, -16
80203c6a: 06 e4        	sd	ra, 8(sp)
80203c6c: 22 e0        	sd	s0, 0(sp)
80203c6e: 00 08        	addi	s0, sp, 16
80203c70: 41 c2        	beqz	a2, 0x80203cf0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x88>
80203c72: ae 86        	mv	a3, a1
80203c74: 33 87 c5 00  	add	a4, a1, a2
80203c78: 13 03 f0 0d  	li	t1, 223
80203c7c: 13 08 00 0f  	li	a6, 240
80203c80: b7 02 11 00  	lui	t0, 272
80203c84: 85 48        	li	a7, 1
80203c86: 01 a8        	j	0x80203c96 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x2e>
80203c88: 85 06        	addi	a3, a3, 1
;         asm!(
80203c8a: 81 45        	li	a1, 0
80203c8c: 01 46        	li	a2, 0
80203c8e: 73 00 00 00  	ecall	
80203c92: 63 8f e6 04  	beq	a3, a4, 0x80203cf0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x88>
80203c96: 83 85 06 00  	lb	a1, 0(a3)
80203c9a: 13 f5 f5 0f  	andi	a0, a1, 255
80203c9e: e3 d5 05 fe  	bgez	a1, 0x80203c88 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x20>
80203ca2: 03 c6 16 00  	lbu	a2, 1(a3)
80203ca6: 93 75 f5 01  	andi	a1, a0, 31
80203caa: 13 76 f6 03  	andi	a2, a2, 63
80203cae: 63 77 a3 02  	bgeu	t1, a0, 0x80203cdc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x74>
80203cb2: 83 c7 26 00  	lbu	a5, 2(a3)
80203cb6: 1a 06        	slli	a2, a2, 6
80203cb8: 93 f7 f7 03  	andi	a5, a5, 63
80203cbc: 5d 8e        	or	a2, a2, a5
80203cbe: 63 64 05 03  	bltu	a0, a6, 0x80203ce6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x7e>
80203cc2: 03 c5 36 00  	lbu	a0, 3(a3)
80203cc6: f6 15        	slli	a1, a1, 61
80203cc8: ad 91        	srli	a1, a1, 43
80203cca: 1a 06        	slli	a2, a2, 6
80203ccc: 13 75 f5 03  	andi	a0, a0, 63
80203cd0: 51 8d        	or	a0, a0, a2
80203cd2: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203cd4: 63 0e 55 00  	beq	a0, t0, 0x80203cf0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x88>
80203cd8: 91 06        	addi	a3, a3, 4
80203cda: 45 bf        	j	0x80203c8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x22>
80203cdc: 89 06        	addi	a3, a3, 2
80203cde: 13 95 65 00  	slli	a0, a1, 6
80203ce2: 51 8d        	or	a0, a0, a2
80203ce4: 5d b7        	j	0x80203c8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x22>
80203ce6: 8d 06        	addi	a3, a3, 3
80203ce8: 13 95 c5 00  	slli	a0, a1, 12
80203cec: 51 8d        	or	a0, a0, a2
80203cee: 71 bf        	j	0x80203c8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h2450934cc0919e1cE.llvm.4752517773200677301+0x22>
80203cf0: 01 45        	li	a0, 0
80203cf2: a2 60        	ld	ra, 8(sp)
80203cf4: 02 64        	ld	s0, 0(sp)
80203cf6: 41 01        	addi	sp, sp, 16
80203cf8: 82 80        	ret

0000000080203cfa <__rust_dealloc>:
80203cfa: 17 f3 ff ff  	auipc	t1, 1048575
80203cfe: 67 00 a3 ec  	jr	-310(t1)

0000000080203d02 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80203d02: 41 11        	addi	sp, sp, -16
80203d04: 06 e4        	sd	ra, 8(sp)
80203d06: 22 e0        	sd	s0, 0(sp)
80203d08: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80203d0a: 83 45 85 00  	lbu	a1, 8(a0)
80203d0e: 91 c5        	beqz	a1, 0x80203d1a <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80203d10: 08 61        	ld	a0, 0(a0)
80203d12: 0f 00 10 03  	fence	rw, w
80203d16: 8d 45        	li	a1, 3
80203d18: 0c e1        	sd	a1, 0(a0)
;     }
80203d1a: a2 60        	ld	ra, 8(sp)
80203d1c: 02 64        	ld	s0, 0(sp)
80203d1e: 41 01        	addi	sp, sp, 16
80203d20: 82 80        	ret

0000000080203d22 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80203d22: 41 11        	addi	sp, sp, -16
80203d24: 06 e4        	sd	ra, 8(sp)
80203d26: 22 e0        	sd	s0, 0(sp)
80203d28: 00 08        	addi	s0, sp, 16
80203d2a: 89 47        	li	a5, 2
80203d2c: 05 47        	li	a4, 1
80203d2e: 63 fa f6 0a  	bgeu	a3, a5, 0x80203de2 <.Lpcrel_hi33+0x8e>
80203d32: 63 78 c7 12  	bgeu	a4, a2, 0x80203e62 <.Lpcrel_hi31+0x24>
80203d36: 21 47        	li	a4, 8
80203d38: 63 79 c7 12  	bgeu	a4, a2, 0x80203e6a <.Lpcrel_hi31+0x2c>
80203d3c: 63 0a 06 12  	beqz	a2, 0x80203e70 <.Lpcrel_hi31+0x32>

0000000080203d40 <.Lpcrel_hi32>:
80203d40: 17 27 00 00  	auipc	a4, 2
80203d44: 03 37 87 35  	ld	a4, 856(a4)
80203d48: b3 07 c0 40  	neg	a5, a2
80203d4c: f1 8f        	and	a5, a5, a2
80203d4e: 33 87 e7 02  	mul	a4, a5, a4
80203d52: 69 93        	srli	a4, a4, 58

0000000080203d54 <.Lpcrel_hi33>:
80203d54: 97 27 00 00  	auipc	a5, 2
80203d58: 93 87 c7 bf  	addi	a5, a5, -1028
80203d5c: 3e 97        	add	a4, a4, a5
80203d5e: 03 43 07 00  	lbu	t1, 0(a4)
80203d62: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203d64: 63 6b 68 10  	bltu	a6, t1, 0x80203e7a <.Lpcrel_hi34>
80203d68: 13 17 33 00  	slli	a4, t1, 3
80203d6c: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
80203d6e: 1c 63        	ld	a5, 0(a4)
80203d70: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80203d72: 0c e3        	sd	a1, 0(a4)
80203d74: 85 48        	li	a7, 1
80203d76: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80203d78: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
80203d7c: 93 13 33 00  	slli	t2, t1, 3
80203d80: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80203d82: 33 ce e2 00  	xor	t3, t0, a4
80203d86: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
80203d88: 9d cd        	beqz	a1, 0x80203dc6 <.Lpcrel_hi33+0x72>
80203d8a: ae 87        	mv	a5, a1
80203d8c: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80203d8e: 8c 61        	ld	a1, 0(a1)
80203d90: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80203d92: e3 1b fe fe  	bne	t3, a5, 0x80203d88 <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
80203d96: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
80203d9a: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80203d9e: 81 c5        	beqz	a1, 0x80203da6 <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
80203da0: 8c 61        	ld	a1, 0(a1)
80203da2: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203da6: 63 06 03 0f  	beq	t1, a6, 0x80203e92 <.Lpcrel_hi35>
80203daa: 63 e3 c2 01  	bltu	t0, t3, 0x80203db0 <.Lpcrel_hi33+0x5c>
80203dae: f2 82        	mv	t0, t3
80203db0: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203db2: 93 15 33 00  	slli	a1, t1, 3
80203db6: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
80203db8: 98 61        	ld	a4, 0(a1)
80203dba: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80203dbe: 23 b0 55 00  	sd	t0, 0(a1)
80203dc2: 96 85        	mv	a1, t0
80203dc4: 55 bf        	j	0x80203d78 <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
80203dc6: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
80203dca: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80203dce: 95 8d        	sub	a1, a1, a3
80203dd0: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
80203dd4: 11 8f        	sub	a4, a4, a2
80203dd6: 23 34 e5 10  	sd	a4, 264(a0)
;     }
80203dda: a2 60        	ld	ra, 8(sp)
80203ddc: 02 64        	ld	s0, 0(sp)
80203dde: 41 01        	addi	sp, sp, 16
80203de0: 82 80        	ret
80203de2: 13 87 f6 ff  	addi	a4, a3, -1
80203de6: 93 57 17 00  	srli	a5, a4, 1
80203dea: 5d 8f        	or	a4, a4, a5
80203dec: 93 57 27 00  	srli	a5, a4, 2
80203df0: 5d 8f        	or	a4, a4, a5
80203df2: 93 57 47 00  	srli	a5, a4, 4
80203df6: 5d 8f        	or	a4, a4, a5
80203df8: 93 57 87 00  	srli	a5, a4, 8
80203dfc: 5d 8f        	or	a4, a4, a5
80203dfe: 93 57 07 01  	srli	a5, a4, 16
80203e02: 5d 8f        	or	a4, a4, a5
80203e04: 93 57 07 02  	srli	a5, a4, 32
80203e08: 5d 8f        	or	a4, a4, a5
80203e0a: 93 48 f7 ff  	not	a7, a4

0000000080203e0e <.Lpcrel_hi28>:
80203e0e: 97 27 00 00  	auipc	a5, 2
80203e12: 03 b8 a7 26  	ld	a6, 618(a5)

0000000080203e16 <.Lpcrel_hi29>:
80203e16: 97 27 00 00  	auipc	a5, 2
80203e1a: 83 b7 a7 26  	ld	a5, 618(a5)
80203e1e: 13 d7 18 00  	srli	a4, a7, 1
80203e22: 33 77 07 01  	and	a4, a4, a6
80203e26: 33 87 e8 40  	sub	a4, a7, a4
80203e2a: 33 78 f7 00  	and	a6, a4, a5
80203e2e: 09 83        	srli	a4, a4, 2
80203e30: 7d 8f        	and	a4, a4, a5
80203e32: b3 08 e8 00  	add	a7, a6, a4

0000000080203e36 <.Lpcrel_hi30>:
80203e36: 97 27 00 00  	auipc	a5, 2
80203e3a: 03 b8 27 25  	ld	a6, 594(a5)

0000000080203e3e <.Lpcrel_hi31>:
80203e3e: 97 27 00 00  	auipc	a5, 2
80203e42: 83 b7 27 25  	ld	a5, 594(a5)
80203e46: 13 d7 48 00  	srli	a4, a7, 4
80203e4a: 46 97        	add	a4, a4, a7
80203e4c: 33 77 07 01  	and	a4, a4, a6
80203e50: 33 07 f7 02  	mul	a4, a4, a5
80203e54: 61 93        	srli	a4, a4, 56
80203e56: fd 57        	li	a5, -1
80203e58: 33 d7 e7 00  	srl	a4, a5, a4
80203e5c: 05 07        	addi	a4, a4, 1
80203e5e: e3 6c c7 ec  	bltu	a4, a2, 0x80203d36 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
80203e62: 3a 86        	mv	a2, a4
80203e64: 21 47        	li	a4, 8
80203e66: e3 6b c7 ec  	bltu	a4, a2, 0x80203d3c <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
80203e6a: 21 46        	li	a2, 8
80203e6c: e3 1a 06 ec  	bnez	a2, 0x80203d40 <.Lpcrel_hi32>
80203e70: 13 03 00 04  	li	t1, 64
80203e74: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203e76: e3 79 68 ee  	bgeu	a6, t1, 0x80203d68 <.Lpcrel_hi33+0x14>

0000000080203e7a <.Lpcrel_hi34>:
80203e7a: 17 25 00 00  	auipc	a0, 2
80203e7e: 13 06 65 b8  	addi	a2, a0, -1146
80203e82: 93 05 00 02  	li	a1, 32
80203e86: 1a 85        	mv	a0, t1
80203e88: 97 00 00 00  	auipc	ra, 0
80203e8c: e7 80 40 0e  	jalr	228(ra)
80203e90: 00 00        	unimp	

0000000080203e92 <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80203e92: 17 25 00 00  	auipc	a0, 2
80203e96: 13 06 65 b8  	addi	a2, a0, -1146
80203e9a: 13 05 00 02  	li	a0, 32
80203e9e: 93 05 00 02  	li	a1, 32
80203ea2: 97 00 00 00  	auipc	ra, 0
80203ea6: e7 80 a0 0c  	jalr	202(ra)
80203eaa: 00 00        	unimp	

0000000080203eac <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
80203eac: 01 11        	addi	sp, sp, -32
80203eae: 06 ec        	sd	ra, 24(sp)
80203eb0: 22 e8        	sd	s0, 16(sp)
80203eb2: 26 e4        	sd	s1, 8(sp)
80203eb4: 4a e0        	sd	s2, 0(sp)
80203eb6: 00 10        	addi	s0, sp, 32
80203eb8: aa 84        	mv	s1, a0
80203eba: 05 45        	li	a0, 1
80203ebc: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80203ec0: 88 64        	ld	a0, 8(s1)
80203ec2: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203ec6: 63 09 25 01  	beq	a0, s2, 0x80203ed8 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
80203eca: 0f 00 00 01  	fence	w, 0
80203ece: 88 64        	ld	a0, 8(s1)
80203ed0: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203ed4: e3 1b 25 ff  	bne	a0, s2, 0x80203eca <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80203ed8: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
80203edc: 97 00 00 00  	auipc	ra, 0
80203ee0: e7 80 60 e4  	jalr	-442(ra)
;         let new_ticket = self.ticket + 1;
80203ee4: 05 09        	addi	s2, s2, 1
80203ee6: 0f 00 10 03  	fence	rw, w
80203eea: 23 b4 24 01  	sd	s2, 8(s1)
;     }
80203eee: e2 60        	ld	ra, 24(sp)
80203ef0: 42 64        	ld	s0, 16(sp)
80203ef2: a2 64        	ld	s1, 8(sp)
80203ef4: 02 69        	ld	s2, 0(sp)
80203ef6: 05 61        	addi	sp, sp, 32
80203ef8: 82 80        	ret

0000000080203efa <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
80203efa: 08 61        	ld	a0, 0(a0)
80203efc: 01 a0        	j	0x80203efc <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

0000000080203efe <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
80203efe: 82 80        	ret

0000000080203f00 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
80203f00: 17 25 00 00  	auipc	a0, 2
80203f04: 03 35 85 2d  	ld	a0, 728(a0)
80203f08: 82 80        	ret

0000000080203f0a <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
80203f0a: 08 6d        	ld	a0, 24(a0)
80203f0c: 82 80        	ret

0000000080203f0e <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
80203f0e: 08 69        	ld	a0, 16(a0)
80203f10: 82 80        	ret

0000000080203f12 <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
80203f12: 79 71        	addi	sp, sp, -48
80203f14: 06 f4        	sd	ra, 40(sp)

0000000080203f16 <.Lpcrel_hi466>:
80203f16: 17 26 00 00  	auipc	a2, 2
80203f1a: 13 06 a6 b1  	addi	a2, a2, -1254
80203f1e: 32 e0        	sd	a2, 0(sp)

0000000080203f20 <.Lpcrel_hi467>:
80203f20: 17 26 00 00  	auipc	a2, 2
80203f24: 13 06 06 b3  	addi	a2, a2, -1232
80203f28: 32 e4        	sd	a2, 8(sp)
80203f2a: 2a ec        	sd	a0, 24(sp)
80203f2c: 2e e8        	sd	a1, 16(sp)
80203f2e: 05 45        	li	a0, 1
80203f30: 23 00 a1 02  	sb	a0, 32(sp)
80203f34: 0a 85        	mv	a0, sp
80203f36: 97 f0 ff ff  	auipc	ra, 1048575
80203f3a: e7 80 e0 aa  	jalr	-1362(ra)
80203f3e: 00 00        	unimp	

0000000080203f40 <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
80203f40: 5d 71        	addi	sp, sp, -80
80203f42: 86 e4        	sd	ra, 72(sp)
80203f44: 2a fc        	sd	a0, 56(sp)
80203f46: ae e0        	sd	a1, 64(sp)
80203f48: 28 18        	addi	a0, sp, 56
80203f4a: 2a e4        	sd	a0, 8(sp)
80203f4c: 05 45        	li	a0, 1
80203f4e: 2a e8        	sd	a0, 16(sp)
80203f50: 02 f4        	sd	zero, 40(sp)

0000000080203f52 <.Lpcrel_hi470>:
80203f52: 17 25 00 00  	auipc	a0, 2
80203f56: 13 05 e5 ad  	addi	a0, a0, -1314
80203f5a: 2a ec        	sd	a0, 24(sp)
80203f5c: 02 f0        	sd	zero, 32(sp)
80203f5e: 28 00        	addi	a0, sp, 8
80203f60: b2 85        	mv	a1, a2
80203f62: 97 00 00 00  	auipc	ra, 0
80203f66: e7 80 00 fb  	jalr	-80(ra)
80203f6a: 00 00        	unimp	

0000000080203f6c <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
80203f6c: 59 71        	addi	sp, sp, -112
80203f6e: 86 f4        	sd	ra, 104(sp)
80203f70: 2a e4        	sd	a0, 8(sp)
80203f72: 2e e8        	sd	a1, 16(sp)
80203f74: 08 08        	addi	a0, sp, 16
80203f76: aa e4        	sd	a0, 72(sp)

0000000080203f78 <.Lpcrel_hi473>:
80203f78: 17 15 00 00  	auipc	a0, 1
80203f7c: 13 05 c5 9c  	addi	a0, a0, -1588
80203f80: aa e8        	sd	a0, 80(sp)
80203f82: 2c 00        	addi	a1, sp, 8
80203f84: ae ec        	sd	a1, 88(sp)
80203f86: aa f0        	sd	a0, 96(sp)

0000000080203f88 <.Lpcrel_hi474>:
80203f88: 17 25 00 00  	auipc	a0, 2
80203f8c: 13 05 05 b0  	addi	a0, a0, -1280
80203f90: 2a ec        	sd	a0, 24(sp)
80203f92: 09 45        	li	a0, 2
80203f94: 2a f0        	sd	a0, 32(sp)
80203f96: 02 fc        	sd	zero, 56(sp)
80203f98: ac 00        	addi	a1, sp, 72
80203f9a: 2e f4        	sd	a1, 40(sp)
80203f9c: 2a f8        	sd	a0, 48(sp)
80203f9e: 28 08        	addi	a0, sp, 24
80203fa0: b2 85        	mv	a1, a2
80203fa2: 97 00 00 00  	auipc	ra, 0
80203fa6: e7 80 00 f7  	jalr	-144(ra)
80203faa: 00 00        	unimp	

0000000080203fac <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
80203fac: 19 71        	addi	sp, sp, -128
80203fae: 86 fc        	sd	ra, 120(sp)
80203fb0: 2a e4        	sd	a0, 8(sp)
80203fb2: 2e e8        	sd	a1, 16(sp)
80203fb4: 32 ec        	sd	a2, 24(sp)
80203fb6: 36 f0        	sd	a3, 32(sp)
80203fb8: 28 00        	addi	a0, sp, 8
80203fba: aa ec        	sd	a0, 88(sp)

0000000080203fbc <.Lpcrel_hi495>:
80203fbc: 17 15 00 00  	auipc	a0, 1
80203fc0: 13 05 05 9b  	addi	a0, a0, -1616
80203fc4: aa f0        	sd	a0, 96(sp)
80203fc6: 28 08        	addi	a0, sp, 24
80203fc8: aa f4        	sd	a0, 104(sp)

0000000080203fca <.Lpcrel_hi496>:
80203fca: 17 15 00 00  	auipc	a0, 1
80203fce: 13 05 a5 99  	addi	a0, a0, -1638
80203fd2: aa f8        	sd	a0, 112(sp)

0000000080203fd4 <.Lpcrel_hi497>:
80203fd4: 17 25 00 00  	auipc	a0, 2
80203fd8: 13 05 c5 ad  	addi	a0, a0, -1316
80203fdc: 2a f4        	sd	a0, 40(sp)
80203fde: 09 45        	li	a0, 2
80203fe0: 2a f8        	sd	a0, 48(sp)
80203fe2: 82 e4        	sd	zero, 72(sp)
80203fe4: ac 08        	addi	a1, sp, 88
80203fe6: 2e fc        	sd	a1, 56(sp)
80203fe8: aa e0        	sd	a0, 64(sp)
80203fea: 28 10        	addi	a0, sp, 40
80203fec: ba 85        	mv	a1, a4
80203fee: 97 00 00 00  	auipc	ra, 0
80203ff2: e7 80 40 f2  	jalr	-220(ra)
80203ff6: 00 00        	unimp	

0000000080203ff8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
80203ff8: 90 71        	ld	a2, 32(a1)
80203ffa: 8c 75        	ld	a1, 40(a1)
80203ffc: aa 86        	mv	a3, a0
80203ffe: 32 85        	mv	a0, a2
80204000: 36 86        	mv	a2, a3
80204002: 17 03 00 00  	auipc	t1, 0
80204006: 67 00 83 00  	jr	8(t1)

000000008020400a <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
8020400a: 19 71        	addi	sp, sp, -128
8020400c: 86 fc        	sd	ra, 120(sp)
8020400e: a2 f8        	sd	s0, 112(sp)
80204010: a6 f4        	sd	s1, 104(sp)
80204012: ca f0        	sd	s2, 96(sp)
80204014: ce ec        	sd	s3, 88(sp)
80204016: d2 e8        	sd	s4, 80(sp)
80204018: d6 e4        	sd	s5, 72(sp)
8020401a: da e0        	sd	s6, 64(sp)
8020401c: b2 89        	mv	s3, a2
8020401e: 13 06 00 02  	li	a2, 32
80204022: 32 f8        	sd	a2, 48(sp)
80204024: 0d 46        	li	a2, 3
80204026: 23 0c c1 02  	sb	a2, 56(sp)
8020402a: 03 b4 09 02  	ld	s0, 32(s3)
8020402e: 02 e0        	sd	zero, 0(sp)
80204030: 02 e8        	sd	zero, 16(sp)
80204032: 2a f0        	sd	a0, 32(sp)
80204034: 2e f4        	sd	a1, 40(sp)
80204036: 61 c0        	beqz	s0, 0x802040f6 <.Lpcrel_hi670+0x98>
80204038: 03 b5 89 02  	ld	a0, 40(s3)
8020403c: 63 07 05 10  	beqz	a0, 0x8020414a <.Lpcrel_hi670+0xec>
80204040: 83 b4 09 00  	ld	s1, 0(s3)
80204044: 93 05 f5 ff  	addi	a1, a0, -1
80204048: 8e 05        	slli	a1, a1, 3
8020404a: 8d 81        	srli	a1, a1, 3
8020404c: 13 89 15 00  	addi	s2, a1, 1
80204050: a1 04        	addi	s1, s1, 8
80204052: 93 05 80 03  	li	a1, 56
80204056: 33 0a b5 02  	mul	s4, a0, a1
8020405a: 61 04        	addi	s0, s0, 24
8020405c: 85 4a        	li	s5, 1

000000008020405e <.Lpcrel_hi670>:
8020405e: 17 05 00 00  	auipc	a0, 0
80204062: 13 0b c5 e9  	addi	s6, a0, -356
80204066: 90 60        	ld	a2, 0(s1)
80204068: 01 ca        	beqz	a2, 0x80204078 <.Lpcrel_hi670+0x1a>
8020406a: a2 76        	ld	a3, 40(sp)
8020406c: 02 75        	ld	a0, 32(sp)
8020406e: 83 b5 84 ff  	ld	a1, -8(s1)
80204072: 94 6e        	ld	a3, 24(a3)
80204074: 82 96        	jalr	a3
80204076: 65 ed        	bnez	a0, 0x8020416e <.Lpcrel_hi670+0x110>
80204078: 08 48        	lw	a0, 16(s0)
8020407a: 2a d8        	sw	a0, 48(sp)
8020407c: 03 05 84 01  	lb	a0, 24(s0)
80204080: 23 0c a1 02  	sb	a0, 56(sp)
80204084: 4c 48        	lw	a1, 20(s0)
80204086: 03 b5 09 01  	ld	a0, 16(s3)
8020408a: 2e da        	sw	a1, 52(sp)
8020408c: 03 36 84 ff  	ld	a2, -8(s0)
80204090: 0c 60        	ld	a1, 0(s0)
80204092: 01 ce        	beqz	a2, 0x802040aa <.Lpcrel_hi670+0x4c>
80204094: 63 17 56 01  	bne	a2, s5, 0x802040a2 <.Lpcrel_hi670+0x44>
80204098: 92 05        	slli	a1, a1, 4
8020409a: aa 95        	add	a1, a1, a0
8020409c: 90 65        	ld	a2, 8(a1)
8020409e: 63 04 66 01  	beq	a2, s6, 0x802040a6 <.Lpcrel_hi670+0x48>
802040a2: 01 46        	li	a2, 0
802040a4: 21 a0        	j	0x802040ac <.Lpcrel_hi670+0x4e>
802040a6: 8c 61        	ld	a1, 0(a1)
802040a8: 8c 61        	ld	a1, 0(a1)
802040aa: 05 46        	li	a2, 1
802040ac: 32 e0        	sd	a2, 0(sp)
802040ae: 2e e4        	sd	a1, 8(sp)
802040b0: 03 36 84 fe  	ld	a2, -24(s0)
802040b4: 83 35 04 ff  	ld	a1, -16(s0)
802040b8: 01 ce        	beqz	a2, 0x802040d0 <.Lpcrel_hi670+0x72>
802040ba: 63 17 56 01  	bne	a2, s5, 0x802040c8 <.Lpcrel_hi670+0x6a>
802040be: 92 05        	slli	a1, a1, 4
802040c0: aa 95        	add	a1, a1, a0
802040c2: 90 65        	ld	a2, 8(a1)
802040c4: 63 04 66 01  	beq	a2, s6, 0x802040cc <.Lpcrel_hi670+0x6e>
802040c8: 01 46        	li	a2, 0
802040ca: 21 a0        	j	0x802040d2 <.Lpcrel_hi670+0x74>
802040cc: 8c 61        	ld	a1, 0(a1)
802040ce: 8c 61        	ld	a1, 0(a1)
802040d0: 05 46        	li	a2, 1
802040d2: 32 e8        	sd	a2, 16(sp)
802040d4: 2e ec        	sd	a1, 24(sp)
802040d6: 0c 64        	ld	a1, 8(s0)
802040d8: 92 05        	slli	a1, a1, 4
802040da: 2e 95        	add	a0, a0, a1
802040dc: 10 65        	ld	a2, 8(a0)
802040de: 08 61        	ld	a0, 0(a0)
802040e0: 8a 85        	mv	a1, sp
802040e2: 02 96        	jalr	a2
802040e4: 49 e5        	bnez	a0, 0x8020416e <.Lpcrel_hi670+0x110>
802040e6: c1 04        	addi	s1, s1, 16
802040e8: 13 0a 8a fc  	addi	s4, s4, -56
802040ec: 13 04 84 03  	addi	s0, s0, 56
802040f0: e3 1b 0a f6  	bnez	s4, 0x80204066 <.Lpcrel_hi670+0x8>
802040f4: b1 a0        	j	0x80204140 <.Lpcrel_hi670+0xe2>
802040f6: 03 ba 89 01  	ld	s4, 24(s3)
802040fa: 63 08 0a 04  	beqz	s4, 0x8020414a <.Lpcrel_hi670+0xec>
802040fe: 83 b4 09 01  	ld	s1, 16(s3)
80204102: 03 b4 09 00  	ld	s0, 0(s3)
80204106: 13 05 fa ff  	addi	a0, s4, -1
8020410a: 12 05        	slli	a0, a0, 4
8020410c: 11 81        	srli	a0, a0, 4
8020410e: 13 09 15 00  	addi	s2, a0, 1
80204112: 21 04        	addi	s0, s0, 8
80204114: 12 0a        	slli	s4, s4, 4
80204116: a1 04        	addi	s1, s1, 8
80204118: 10 60        	ld	a2, 0(s0)
8020411a: 01 ca        	beqz	a2, 0x8020412a <.Lpcrel_hi670+0xcc>
8020411c: a2 76        	ld	a3, 40(sp)
8020411e: 02 75        	ld	a0, 32(sp)
80204120: 83 35 84 ff  	ld	a1, -8(s0)
80204124: 94 6e        	ld	a3, 24(a3)
80204126: 82 96        	jalr	a3
80204128: 39 e1        	bnez	a0, 0x8020416e <.Lpcrel_hi670+0x110>
8020412a: 90 60        	ld	a2, 0(s1)
8020412c: 03 b5 84 ff  	ld	a0, -8(s1)
80204130: 8a 85        	mv	a1, sp
80204132: 02 96        	jalr	a2
80204134: 0d ed        	bnez	a0, 0x8020416e <.Lpcrel_hi670+0x110>
80204136: 41 04        	addi	s0, s0, 16
80204138: 41 1a        	addi	s4, s4, -16
8020413a: c1 04        	addi	s1, s1, 16
8020413c: e3 1e 0a fc  	bnez	s4, 0x80204118 <.Lpcrel_hi670+0xba>
80204140: 03 b5 89 00  	ld	a0, 8(s3)
80204144: 63 68 a9 00  	bltu	s2, a0, 0x80204154 <.Lpcrel_hi670+0xf6>
80204148: 2d a0        	j	0x80204172 <.Lpcrel_hi670+0x114>
8020414a: 01 49        	li	s2, 0
8020414c: 03 b5 89 00  	ld	a0, 8(s3)
80204150: 63 71 a9 02  	bgeu	s2, a0, 0x80204172 <.Lpcrel_hi670+0x114>
80204154: 03 b5 09 00  	ld	a0, 0(s3)
80204158: 12 09        	slli	s2, s2, 4
8020415a: 2a 99        	add	s2, s2, a0
8020415c: a2 76        	ld	a3, 40(sp)
8020415e: 02 75        	ld	a0, 32(sp)
80204160: 83 35 09 00  	ld	a1, 0(s2)
80204164: 03 36 89 00  	ld	a2, 8(s2)
80204168: 94 6e        	ld	a3, 24(a3)
8020416a: 82 96        	jalr	a3
8020416c: 19 c1        	beqz	a0, 0x80204172 <.Lpcrel_hi670+0x114>
8020416e: 05 45        	li	a0, 1
80204170: 11 a0        	j	0x80204174 <.Lpcrel_hi670+0x116>
80204172: 01 45        	li	a0, 0
80204174: e6 70        	ld	ra, 120(sp)
80204176: 46 74        	ld	s0, 112(sp)
80204178: a6 74        	ld	s1, 104(sp)
8020417a: 06 79        	ld	s2, 96(sp)
8020417c: e6 69        	ld	s3, 88(sp)
8020417e: 46 6a        	ld	s4, 80(sp)
80204180: a6 6a        	ld	s5, 72(sp)
80204182: 06 6b        	ld	s6, 64(sp)
80204184: 09 61        	addi	sp, sp, 128
80204186: 82 80        	ret

0000000080204188 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
80204188: 59 71        	addi	sp, sp, -112
8020418a: 86 f4        	sd	ra, 104(sp)
8020418c: a2 f0        	sd	s0, 96(sp)
8020418e: a6 ec        	sd	s1, 88(sp)
80204190: ca e8        	sd	s2, 80(sp)
80204192: ce e4        	sd	s3, 72(sp)
80204194: d2 e0        	sd	s4, 64(sp)
80204196: 56 fc        	sd	s5, 56(sp)
80204198: 5a f8        	sd	s6, 48(sp)
8020419a: 5e f4        	sd	s7, 40(sp)
8020419c: 62 f0        	sd	s8, 32(sp)
8020419e: 66 ec        	sd	s9, 24(sp)
802041a0: 6a e8        	sd	s10, 16(sp)
802041a2: 6e e4        	sd	s11, 8(sp)
802041a4: be 89        	mv	s3, a5
802041a6: 3a 89        	mv	s2, a4
802041a8: 36 8b        	mv	s6, a3
802041aa: 32 8a        	mv	s4, a2
802041ac: 2a 8c        	mv	s8, a0
802041ae: b9 c1        	beqz	a1, 0x802041f4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
802041b0: 03 64 4c 03  	lwu	s0, 52(s8)
802041b4: 93 7c 14 00  	andi	s9, s0, 1
802041b8: b7 0a 11 00  	lui	s5, 272
802041bc: 63 84 0c 00  	beqz	s9, 0x802041c4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
802041c0: 93 0a b0 02  	li	s5, 43
802041c4: ce 9c        	add	s9, s9, s3
802041c6: 13 75 44 00  	andi	a0, s0, 4
802041ca: 15 cd        	beqz	a0, 0x80204206 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
802041cc: 13 05 00 02  	li	a0, 32
802041d0: 63 70 ab 04  	bgeu	s6, a0, 0x80204210 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
802041d4: 01 45        	li	a0, 0
802041d6: 63 03 0b 04  	beqz	s6, 0x8020421c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
802041da: da 85        	mv	a1, s6
802041dc: 52 86        	mv	a2, s4
802041de: 83 06 06 00  	lb	a3, 0(a2)
802041e2: 05 06        	addi	a2, a2, 1
802041e4: 93 a6 06 fc  	slti	a3, a3, -64
802041e8: 93 c6 16 00  	xori	a3, a3, 1
802041ec: fd 15        	addi	a1, a1, -1
802041ee: 36 95        	add	a0, a0, a3
802041f0: fd f5        	bnez	a1, 0x802041de <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
802041f2: 2d a0        	j	0x8020421c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
802041f4: 03 24 4c 03  	lw	s0, 52(s8)
802041f8: 93 8c 19 00  	addi	s9, s3, 1
802041fc: 93 0a d0 02  	li	s5, 45
80204200: 13 75 44 00  	andi	a0, s0, 4
80204204: 61 f5        	bnez	a0, 0x802041cc <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80204206: 01 4a        	li	s4, 0
80204208: 03 35 0c 00  	ld	a0, 0(s8)
8020420c: 01 ed        	bnez	a0, 0x80204224 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
8020420e: 25 a8        	j	0x80204246 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80204210: 52 85        	mv	a0, s4
80204212: da 85        	mv	a1, s6
80204214: 97 00 00 00  	auipc	ra, 0
80204218: e7 80 20 43  	jalr	1074(ra)
8020421c: aa 9c        	add	s9, s9, a0
8020421e: 03 35 0c 00  	ld	a0, 0(s8)
80204222: 15 c1        	beqz	a0, 0x80204246 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80204224: 03 3d 8c 00  	ld	s10, 8(s8)
80204228: 63 ff ac 01  	bgeu	s9, s10, 0x80204246 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020422c: 21 88        	andi	s0, s0, 8
8020422e: 35 ec        	bnez	s0, 0x802042aa <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
80204230: 83 45 8c 03  	lbu	a1, 56(s8)
80204234: 05 46        	li	a2, 1
80204236: 33 05 9d 41  	sub	a0, s10, s9
8020423a: 63 4f b6 0a  	blt	a2, a1, 0x802042f8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
8020423e: f1 e5        	bnez	a1, 0x8020430a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
80204240: 2a 8d        	mv	s10, a0
80204242: 2e 85        	mv	a0, a1
80204244: e1 a0        	j	0x8020430c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80204246: 03 34 0c 02  	ld	s0, 32(s8)
8020424a: 83 34 8c 02  	ld	s1, 40(s8)
8020424e: 22 85        	mv	a0, s0
80204250: a6 85        	mv	a1, s1
80204252: 56 86        	mv	a2, s5
80204254: d2 86        	mv	a3, s4
80204256: 5a 87        	mv	a4, s6
80204258: 97 00 00 00  	auipc	ra, 0
8020425c: e7 80 80 14  	jalr	328(ra)
80204260: 85 4b        	li	s7, 1
80204262: 0d c1        	beqz	a0, 0x80204284 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
80204264: 5e 85        	mv	a0, s7
80204266: a6 70        	ld	ra, 104(sp)
80204268: 06 74        	ld	s0, 96(sp)
8020426a: e6 64        	ld	s1, 88(sp)
8020426c: 46 69        	ld	s2, 80(sp)
8020426e: a6 69        	ld	s3, 72(sp)
80204270: 06 6a        	ld	s4, 64(sp)
80204272: e2 7a        	ld	s5, 56(sp)
80204274: 42 7b        	ld	s6, 48(sp)
80204276: a2 7b        	ld	s7, 40(sp)
80204278: 02 7c        	ld	s8, 32(sp)
8020427a: e2 6c        	ld	s9, 24(sp)
8020427c: 42 6d        	ld	s10, 16(sp)
8020427e: a2 6d        	ld	s11, 8(sp)
80204280: 65 61        	addi	sp, sp, 112
80204282: 82 80        	ret
80204284: 9c 6c        	ld	a5, 24(s1)
80204286: 22 85        	mv	a0, s0
80204288: ca 85        	mv	a1, s2
8020428a: 4e 86        	mv	a2, s3
8020428c: a6 70        	ld	ra, 104(sp)
8020428e: 06 74        	ld	s0, 96(sp)
80204290: e6 64        	ld	s1, 88(sp)
80204292: 46 69        	ld	s2, 80(sp)
80204294: a6 69        	ld	s3, 72(sp)
80204296: 06 6a        	ld	s4, 64(sp)
80204298: e2 7a        	ld	s5, 56(sp)
8020429a: 42 7b        	ld	s6, 48(sp)
8020429c: a2 7b        	ld	s7, 40(sp)
8020429e: 02 7c        	ld	s8, 32(sp)
802042a0: e2 6c        	ld	s9, 24(sp)
802042a2: 42 6d        	ld	s10, 16(sp)
802042a4: a2 6d        	ld	s11, 8(sp)
802042a6: 65 61        	addi	sp, sp, 112
802042a8: 82 87        	jr	a5
802042aa: 03 24 0c 03  	lw	s0, 48(s8)
802042ae: 13 05 00 03  	li	a0, 48
802042b2: 83 45 8c 03  	lbu	a1, 56(s8)
802042b6: 2e e0        	sd	a1, 0(sp)
802042b8: 83 3d 0c 02  	ld	s11, 32(s8)
802042bc: 83 34 8c 02  	ld	s1, 40(s8)
802042c0: 23 28 ac 02  	sw	a0, 48(s8)
802042c4: 85 4b        	li	s7, 1
802042c6: 23 0c 7c 03  	sb	s7, 56(s8)
802042ca: 6e 85        	mv	a0, s11
802042cc: a6 85        	mv	a1, s1
802042ce: 56 86        	mv	a2, s5
802042d0: d2 86        	mv	a3, s4
802042d2: 5a 87        	mv	a4, s6
802042d4: 97 00 00 00  	auipc	ra, 0
802042d8: e7 80 c0 0c  	jalr	204(ra)
802042dc: 41 f5        	bnez	a0, 0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802042de: 22 8a        	mv	s4, s0
802042e0: 33 04 9d 41  	sub	s0, s10, s9
802042e4: 05 04        	addi	s0, s0, 1
802042e6: 7d 14        	addi	s0, s0, -1
802042e8: 51 c8        	beqz	s0, 0x8020437c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
802042ea: 90 70        	ld	a2, 32(s1)
802042ec: 93 05 00 03  	li	a1, 48
802042f0: 6e 85        	mv	a0, s11
802042f2: 02 96        	jalr	a2
802042f4: 6d d9        	beqz	a0, 0x802042e6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
802042f6: bd b7        	j	0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802042f8: 09 46        	li	a2, 2
802042fa: 63 98 c5 00  	bne	a1, a2, 0x8020430a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
802042fe: 93 05 15 00  	addi	a1, a0, 1
80204302: 05 81        	srli	a0, a0, 1
80204304: 13 dd 15 00  	srli	s10, a1, 1
80204308: 11 a0        	j	0x8020430c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
8020430a: 01 4d        	li	s10, 0
8020430c: 83 3c 0c 02  	ld	s9, 32(s8)
80204310: 83 3d 8c 02  	ld	s11, 40(s8)
80204314: 83 24 0c 03  	lw	s1, 48(s8)
80204318: 13 04 15 00  	addi	s0, a0, 1
8020431c: 7d 14        	addi	s0, s0, -1
8020431e: 09 c8        	beqz	s0, 0x80204330 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
80204320: 03 b6 0d 02  	ld	a2, 32(s11)
80204324: 66 85        	mv	a0, s9
80204326: a6 85        	mv	a1, s1
80204328: 02 96        	jalr	a2
8020432a: 6d d9        	beqz	a0, 0x8020431c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
8020432c: 85 4b        	li	s7, 1
8020432e: 1d bf        	j	0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80204330: 37 05 11 00  	lui	a0, 272
80204334: 85 4b        	li	s7, 1
80204336: e3 87 a4 f2  	beq	s1, a0, 0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020433a: 66 85        	mv	a0, s9
8020433c: ee 85        	mv	a1, s11
8020433e: 56 86        	mv	a2, s5
80204340: d2 86        	mv	a3, s4
80204342: 5a 87        	mv	a4, s6
80204344: 97 00 00 00  	auipc	ra, 0
80204348: e7 80 c0 05  	jalr	92(ra)
8020434c: 01 fd        	bnez	a0, 0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020434e: 83 b6 8d 01  	ld	a3, 24(s11)
80204352: 66 85        	mv	a0, s9
80204354: ca 85        	mv	a1, s2
80204356: 4e 86        	mv	a2, s3
80204358: 82 96        	jalr	a3
8020435a: 09 f5        	bnez	a0, 0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020435c: b3 09 a0 41  	neg	s3, s10
80204360: 7d 5a        	li	s4, -1
80204362: 7d 59        	li	s2, -1
80204364: 33 85 29 01  	add	a0, s3, s2
80204368: 63 08 45 03  	beq	a0, s4, 0x80204398 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
8020436c: 03 b6 0d 02  	ld	a2, 32(s11)
80204370: 66 85        	mv	a0, s9
80204372: a6 85        	mv	a1, s1
80204374: 02 96        	jalr	a2
80204376: 05 09        	addi	s2, s2, 1
80204378: 75 d5        	beqz	a0, 0x80204364 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
8020437a: 05 a0        	j	0x8020439a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
8020437c: 94 6c        	ld	a3, 24(s1)
8020437e: 6e 85        	mv	a0, s11
80204380: ca 85        	mv	a1, s2
80204382: 4e 86        	mv	a2, s3
80204384: 82 96        	jalr	a3
80204386: e3 1f 05 ec  	bnez	a0, 0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020438a: 81 4b        	li	s7, 0
8020438c: 23 28 4c 03  	sw	s4, 48(s8)
80204390: 02 65        	ld	a0, 0(sp)
80204392: 23 0c ac 02  	sb	a0, 56(s8)
80204396: f9 b5        	j	0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80204398: 6a 89        	mv	s2, s10
8020439a: b3 3b a9 01  	sltu	s7, s2, s10
8020439e: d9 b5        	j	0x80204264 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

00000000802043a0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
802043a0: 79 71        	addi	sp, sp, -48
802043a2: 06 f4        	sd	ra, 40(sp)
802043a4: 22 f0        	sd	s0, 32(sp)
802043a6: 26 ec        	sd	s1, 24(sp)
802043a8: 4a e8        	sd	s2, 16(sp)
802043aa: 4e e4        	sd	s3, 8(sp)
802043ac: 9b 07 06 00  	sext.w	a5, a2
802043b0: 37 08 11 00  	lui	a6, 272
802043b4: 3a 89        	mv	s2, a4
802043b6: b6 84        	mv	s1, a3
802043b8: 2e 84        	mv	s0, a1
802043ba: aa 89        	mv	s3, a0
802043bc: 63 89 07 01  	beq	a5, a6, 0x802043ce <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
802043c0: 14 70        	ld	a3, 32(s0)
802043c2: 4e 85        	mv	a0, s3
802043c4: b2 85        	mv	a1, a2
802043c6: 82 96        	jalr	a3
802043c8: aa 85        	mv	a1, a0
802043ca: 05 45        	li	a0, 1
802043cc: 91 ed        	bnez	a1, 0x802043e8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
802043ce: 81 cc        	beqz	s1, 0x802043e6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
802043d0: 1c 6c        	ld	a5, 24(s0)
802043d2: 4e 85        	mv	a0, s3
802043d4: a6 85        	mv	a1, s1
802043d6: 4a 86        	mv	a2, s2
802043d8: a2 70        	ld	ra, 40(sp)
802043da: 02 74        	ld	s0, 32(sp)
802043dc: e2 64        	ld	s1, 24(sp)
802043de: 42 69        	ld	s2, 16(sp)
802043e0: a2 69        	ld	s3, 8(sp)
802043e2: 45 61        	addi	sp, sp, 48
802043e4: 82 87        	jr	a5
802043e6: 01 45        	li	a0, 0
802043e8: a2 70        	ld	ra, 40(sp)
802043ea: 02 74        	ld	s0, 32(sp)
802043ec: e2 64        	ld	s1, 24(sp)
802043ee: 42 69        	ld	s2, 16(sp)
802043f0: a2 69        	ld	s3, 8(sp)
802043f2: 45 61        	addi	sp, sp, 48
802043f4: 82 80        	ret

00000000802043f6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
802043f6: 5d 71        	addi	sp, sp, -80
802043f8: 86 e4        	sd	ra, 72(sp)
802043fa: a2 e0        	sd	s0, 64(sp)
802043fc: 26 fc        	sd	s1, 56(sp)
802043fe: 4a f8        	sd	s2, 48(sp)
80204400: 4e f4        	sd	s3, 40(sp)
80204402: 52 f0        	sd	s4, 32(sp)
80204404: 56 ec        	sd	s5, 24(sp)
80204406: 5a e8        	sd	s6, 16(sp)
80204408: 5e e4        	sd	s7, 8(sp)
8020440a: 2a 8a        	mv	s4, a0
8020440c: 83 32 05 00  	ld	t0, 0(a0)
80204410: 08 69        	ld	a0, 16(a0)
80204412: b3 e6 a2 00  	or	a3, t0, a0
80204416: b2 89        	mv	s3, a2
80204418: 2e 89        	mv	s2, a1
8020441a: 63 84 06 16  	beqz	a3, 0x80204582 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020441e: 63 07 05 10  	beqz	a0, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204422: 03 37 8a 01  	ld	a4, 24(s4)
80204426: 01 45        	li	a0, 0
80204428: b3 06 39 01  	add	a3, s2, s3
8020442c: 05 07        	addi	a4, a4, 1
8020442e: 37 03 11 00  	lui	t1, 272
80204432: 93 08 f0 0d  	li	a7, 223
80204436: 13 08 00 0f  	li	a6, 240
8020443a: 4a 86        	mv	a2, s2
8020443c: 01 a8        	j	0x8020444c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
8020443e: 93 05 16 00  	addi	a1, a2, 1
80204442: 11 8d        	sub	a0, a0, a2
80204444: 2e 95        	add	a0, a0, a1
80204446: 2e 86        	mv	a2, a1
80204448: 63 02 64 0e  	beq	s0, t1, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020444c: 7d 17        	addi	a4, a4, -1
8020444e: 25 c7        	beqz	a4, 0x802044b6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
80204450: 63 0e d6 0c  	beq	a2, a3, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204454: 83 05 06 00  	lb	a1, 0(a2)
80204458: 13 f4 f5 0f  	andi	s0, a1, 255
8020445c: e3 d1 05 fe  	bgez	a1, 0x8020443e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
80204460: 83 45 16 00  	lbu	a1, 1(a2)
80204464: 93 74 f4 01  	andi	s1, s0, 31
80204468: 93 f7 f5 03  	andi	a5, a1, 63
8020446c: 63 f9 88 02  	bgeu	a7, s0, 0x8020449e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
80204470: 83 45 26 00  	lbu	a1, 2(a2)
80204474: 9a 07        	slli	a5, a5, 6
80204476: 93 f5 f5 03  	andi	a1, a1, 63
8020447a: cd 8f        	or	a5, a5, a1
8020447c: 63 67 04 03  	bltu	s0, a6, 0x802044aa <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
80204480: 83 45 36 00  	lbu	a1, 3(a2)
80204484: f6 14        	slli	s1, s1, 61
80204486: ad 90        	srli	s1, s1, 43
80204488: 9a 07        	slli	a5, a5, 6
8020448a: 93 f5 f5 03  	andi	a1, a1, 63
8020448e: dd 8d        	or	a1, a1, a5
80204490: 33 e4 95 00  	or	s0, a1, s1
80204494: 63 0c 64 08  	beq	s0, t1, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204498: 93 05 46 00  	addi	a1, a2, 4
8020449c: 5d b7        	j	0x80204442 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
8020449e: 93 05 26 00  	addi	a1, a2, 2
802044a2: 13 94 64 00  	slli	s0, s1, 6
802044a6: 5d 8c        	or	s0, s0, a5
802044a8: 69 bf        	j	0x80204442 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802044aa: 93 05 36 00  	addi	a1, a2, 3
802044ae: 13 94 c4 00  	slli	s0, s1, 12
802044b2: 5d 8c        	or	s0, s0, a5
802044b4: 79 b7        	j	0x80204442 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802044b6: 63 0b d6 06  	beq	a2, a3, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802044ba: 83 05 06 00  	lb	a1, 0(a2)
802044be: 63 d3 05 04  	bgez	a1, 0x80204504 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802044c2: 93 f5 f5 0f  	andi	a1, a1, 255
802044c6: 93 06 00 0e  	li	a3, 224
802044ca: 63 ed d5 02  	bltu	a1, a3, 0x80204504 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802044ce: 93 06 00 0f  	li	a3, 240
802044d2: 63 e9 d5 02  	bltu	a1, a3, 0x80204504 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802044d6: 83 46 16 00  	lbu	a3, 1(a2)
802044da: 03 47 26 00  	lbu	a4, 2(a2)
802044de: 93 f6 f6 03  	andi	a3, a3, 63
802044e2: 13 77 f7 03  	andi	a4, a4, 63
802044e6: 03 46 36 00  	lbu	a2, 3(a2)
802044ea: f6 15        	slli	a1, a1, 61
802044ec: ad 91        	srli	a1, a1, 43
802044ee: b2 06        	slli	a3, a3, 12
802044f0: 1a 07        	slli	a4, a4, 6
802044f2: d9 8e        	or	a3, a3, a4
802044f4: 13 76 f6 03  	andi	a2, a2, 63
802044f8: 55 8e        	or	a2, a2, a3
802044fa: d1 8d        	or	a1, a1, a2
802044fc: 37 06 11 00  	lui	a2, 272
80204500: 63 86 c5 02  	beq	a1, a2, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204504: 05 c1        	beqz	a0, 0x80204524 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80204506: 63 7d 35 01  	bgeu	a0, s3, 0x80204520 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
8020450a: b3 05 a9 00  	add	a1, s2, a0
8020450e: 83 85 05 00  	lb	a1, 0(a1)
80204512: 13 06 00 fc  	li	a2, -64
80204516: 63 d7 c5 00  	bge	a1, a2, 0x80204524 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
8020451a: 81 45        	li	a1, 0
8020451c: 91 e5        	bnez	a1, 0x80204528 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
8020451e: 39 a0        	j	0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204520: e3 1d 35 ff  	bne	a0, s3, 0x8020451a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
80204524: ca 85        	mv	a1, s2
80204526: 99 c1        	beqz	a1, 0x8020452c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204528: aa 89        	mv	s3, a0
8020452a: 2e 89        	mv	s2, a1
8020452c: 63 8b 02 04  	beqz	t0, 0x80204582 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80204530: 03 34 8a 00  	ld	s0, 8(s4)
80204534: 13 05 00 02  	li	a0, 32
80204538: 63 fd a9 02  	bgeu	s3, a0, 0x80204572 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
8020453c: 01 45        	li	a0, 0
8020453e: 63 8e 09 00  	beqz	s3, 0x8020455a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
80204542: ce 85        	mv	a1, s3
80204544: 4a 86        	mv	a2, s2
80204546: 83 06 06 00  	lb	a3, 0(a2)
8020454a: 05 06        	addi	a2, a2, 1
8020454c: 93 a6 06 fc  	slti	a3, a3, -64
80204550: 93 c6 16 00  	xori	a3, a3, 1
80204554: fd 15        	addi	a1, a1, -1
80204556: 36 95        	add	a0, a0, a3
80204558: fd f5        	bnez	a1, 0x80204546 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
8020455a: 63 74 85 02  	bgeu	a0, s0, 0x80204582 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020455e: 83 45 8a 03  	lbu	a1, 56(s4)
80204562: 05 46        	li	a2, 1
80204564: 33 05 a4 40  	sub	a0, s0, a0
80204568: 63 4f b6 02  	blt	a2, a1, 0x802045a6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
8020456c: b1 c5        	beqz	a1, 0x802045b8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
8020456e: 81 4a        	li	s5, 0
80204570: b1 a0        	j	0x802045bc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
80204572: 4a 85        	mv	a0, s2
80204574: ce 85        	mv	a1, s3
80204576: 97 00 00 00  	auipc	ra, 0
8020457a: e7 80 00 0d  	jalr	208(ra)
8020457e: e3 60 85 fe  	bltu	a0, s0, 0x8020455e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
80204582: 83 35 8a 02  	ld	a1, 40(s4)
80204586: 03 35 0a 02  	ld	a0, 32(s4)
8020458a: 9c 6d        	ld	a5, 24(a1)
8020458c: ca 85        	mv	a1, s2
8020458e: 4e 86        	mv	a2, s3
80204590: a6 60        	ld	ra, 72(sp)
80204592: 06 64        	ld	s0, 64(sp)
80204594: e2 74        	ld	s1, 56(sp)
80204596: 42 79        	ld	s2, 48(sp)
80204598: a2 79        	ld	s3, 40(sp)
8020459a: 02 7a        	ld	s4, 32(sp)
8020459c: e2 6a        	ld	s5, 24(sp)
8020459e: 42 6b        	ld	s6, 16(sp)
802045a0: a2 6b        	ld	s7, 8(sp)
802045a2: 61 61        	addi	sp, sp, 80
802045a4: 82 87        	jr	a5
802045a6: 09 46        	li	a2, 2
802045a8: 63 98 c5 00  	bne	a1, a2, 0x802045b8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
802045ac: 93 05 15 00  	addi	a1, a0, 1
802045b0: 05 81        	srli	a0, a0, 1
802045b2: 93 da 15 00  	srli	s5, a1, 1
802045b6: 19 a0        	j	0x802045bc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
802045b8: aa 8a        	mv	s5, a0
802045ba: 01 45        	li	a0, 0
802045bc: 03 3b 0a 02  	ld	s6, 32(s4)
802045c0: 83 3b 8a 02  	ld	s7, 40(s4)
802045c4: 83 24 0a 03  	lw	s1, 48(s4)
802045c8: 13 04 15 00  	addi	s0, a0, 1
802045cc: 7d 14        	addi	s0, s0, -1
802045ce: 09 c8        	beqz	s0, 0x802045e0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
802045d0: 03 b6 0b 02  	ld	a2, 32(s7)
802045d4: 5a 85        	mv	a0, s6
802045d6: a6 85        	mv	a1, s1
802045d8: 02 96        	jalr	a2
802045da: 6d d9        	beqz	a0, 0x802045cc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
802045dc: 05 4a        	li	s4, 1
802045de: 81 a0        	j	0x8020461e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
802045e0: 37 05 11 00  	lui	a0, 272
802045e4: 05 4a        	li	s4, 1
802045e6: 63 8c a4 02  	beq	s1, a0, 0x8020461e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
802045ea: 83 b6 8b 01  	ld	a3, 24(s7)
802045ee: 5a 85        	mv	a0, s6
802045f0: ca 85        	mv	a1, s2
802045f2: 4e 86        	mv	a2, s3
802045f4: 82 96        	jalr	a3
802045f6: 05 e5        	bnez	a0, 0x8020461e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
802045f8: 33 09 50 41  	neg	s2, s5
802045fc: fd 59        	li	s3, -1
802045fe: 7d 54        	li	s0, -1
80204600: 33 05 89 00  	add	a0, s2, s0
80204604: 63 0a 35 01  	beq	a0, s3, 0x80204618 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
80204608: 03 b6 0b 02  	ld	a2, 32(s7)
8020460c: 5a 85        	mv	a0, s6
8020460e: a6 85        	mv	a1, s1
80204610: 02 96        	jalr	a2
80204612: 05 04        	addi	s0, s0, 1
80204614: 75 d5        	beqz	a0, 0x80204600 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80204616: 11 a0        	j	0x8020461a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
80204618: 56 84        	mv	s0, s5
8020461a: 33 3a 54 01  	sltu	s4, s0, s5
8020461e: 52 85        	mv	a0, s4
80204620: a6 60        	ld	ra, 72(sp)
80204622: 06 64        	ld	s0, 64(sp)
80204624: e2 74        	ld	s1, 56(sp)
80204626: 42 79        	ld	s2, 48(sp)
80204628: a2 79        	ld	s3, 40(sp)
8020462a: 02 7a        	ld	s4, 32(sp)
8020462c: e2 6a        	ld	s5, 24(sp)
8020462e: 42 6b        	ld	s6, 16(sp)
80204630: a2 6b        	ld	s7, 8(sp)
80204632: 61 61        	addi	sp, sp, 80
80204634: 82 80        	ret

0000000080204636 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
80204636: ae 86        	mv	a3, a1
80204638: aa 85        	mv	a1, a0
8020463a: 32 85        	mv	a0, a2
8020463c: 36 86        	mv	a2, a3
8020463e: 17 03 00 00  	auipc	t1, 0
80204642: 67 00 83 db  	jr	-584(t1)

0000000080204646 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
80204646: 2a 86        	mv	a2, a0
80204648: 13 07 75 00  	addi	a4, a0, 7
8020464c: 61 9b        	andi	a4, a4, -8
8020464e: b3 02 a7 40  	sub	t0, a4, a0
80204652: 63 e7 55 00  	bltu	a1, t0, 0x80204660 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
80204656: 33 88 55 40  	sub	a6, a1, t0
8020465a: a1 46        	li	a3, 8
8020465c: 63 7f d8 00  	bgeu	a6, a3, 0x8020467a <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
80204660: 01 45        	li	a0, 0
80204662: 99 c9        	beqz	a1, 0x80204678 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80204664: 83 06 06 00  	lb	a3, 0(a2)
80204668: 05 06        	addi	a2, a2, 1
8020466a: 93 a6 06 fc  	slti	a3, a3, -64
8020466e: 93 c6 16 00  	xori	a3, a3, 1
80204672: fd 15        	addi	a1, a1, -1
80204674: 36 95        	add	a0, a0, a3
80204676: fd f5        	bnez	a1, 0x80204664 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
80204678: 82 80        	ret
8020467a: 93 76 78 00  	andi	a3, a6, 7
8020467e: 81 45        	li	a1, 0
80204680: 63 0f c7 00  	beq	a4, a2, 0x8020469e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
80204684: 33 07 e6 40  	sub	a4, a2, a4
80204688: b2 87        	mv	a5, a2
8020468a: 03 85 07 00  	lb	a0, 0(a5)
8020468e: 85 07        	addi	a5, a5, 1
80204690: 13 25 05 fc  	slti	a0, a0, -64
80204694: 13 45 15 00  	xori	a0, a0, 1
80204698: 05 07        	addi	a4, a4, 1
8020469a: aa 95        	add	a1, a1, a0
8020469c: 7d f7        	bnez	a4, 0x8020468a <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
8020469e: b2 92        	add	t0, t0, a2
802046a0: 01 46        	li	a2, 0
802046a2: 91 ce        	beqz	a3, 0x802046be <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
802046a4: 13 77 88 ff  	andi	a4, a6, -8
802046a8: 16 97        	add	a4, a4, t0
802046aa: 03 05 07 00  	lb	a0, 0(a4)
802046ae: 05 07        	addi	a4, a4, 1
802046b0: 13 25 05 fc  	slti	a0, a0, -64
802046b4: 13 45 15 00  	xori	a0, a0, 1
802046b8: fd 16        	addi	a3, a3, -1
802046ba: 2a 96        	add	a2, a2, a0
802046bc: fd f6        	bnez	a3, 0x802046aa <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
802046be: 13 57 38 00  	srli	a4, a6, 3

00000000802046c2 <.Lpcrel_hi762>:
802046c2: 17 25 00 00  	auipc	a0, 2
802046c6: 03 3f 65 c3  	ld	t5, -970(a0)

00000000802046ca <.Lpcrel_hi763>:
802046ca: 17 25 00 00  	auipc	a0, 2
802046ce: 83 38 65 c3  	ld	a7, -970(a0)
802046d2: 37 15 00 10  	lui	a0, 65537
802046d6: 12 05        	slli	a0, a0, 4
802046d8: 05 05        	addi	a0, a0, 1
802046da: 42 05        	slli	a0, a0, 16
802046dc: 13 08 15 00  	addi	a6, a0, 1
802046e0: 33 05 b6 00  	add	a0, a2, a1
802046e4: 1d a0        	j	0x8020470a <.Lpcrel_hi763+0x40>
802046e6: 93 12 3e 00  	slli	t0, t3, 3
802046ea: 9a 92        	add	t0, t0, t1
802046ec: 33 87 c3 41  	sub	a4, t2, t3
802046f0: 13 76 3e 00  	andi	a2, t3, 3
802046f4: b3 f6 15 01  	and	a3, a1, a7
802046f8: a1 81        	srli	a1, a1, 8
802046fa: b3 f5 15 01  	and	a1, a1, a7
802046fe: b6 95        	add	a1, a1, a3
80204700: b3 85 05 03  	mul	a1, a1, a6
80204704: c1 91        	srli	a1, a1, 48
80204706: 2e 95        	add	a0, a0, a1
80204708: 35 ee        	bnez	a2, 0x80204784 <.Lpcrel_hi763+0xba>
8020470a: 3d d7        	beqz	a4, 0x80204678 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
8020470c: ba 83        	mv	t2, a4
8020470e: 16 83        	mv	t1, t0
80204710: 93 05 00 0c  	li	a1, 192
80204714: 3a 8e        	mv	t3, a4
80204716: 63 64 b7 00  	bltu	a4, a1, 0x8020471e <.Lpcrel_hi763+0x54>
8020471a: 13 0e 00 0c  	li	t3, 192
8020471e: 93 75 ce 0f  	andi	a1, t3, 252
80204722: 93 97 35 00  	slli	a5, a1, 3
80204726: b3 0e f3 00  	add	t4, t1, a5
8020472a: d5 dd        	beqz	a1, 0x802046e6 <.Lpcrel_hi763+0x1c>
8020472c: 81 45        	li	a1, 0
8020472e: 1a 86        	mv	a2, t1
80204730: 5d da        	beqz	a2, 0x802046e6 <.Lpcrel_hi763+0x1c>
80204732: 18 62        	ld	a4, 0(a2)
80204734: 93 47 f7 ff  	not	a5, a4
80204738: 9d 83        	srli	a5, a5, 7
8020473a: 19 83        	srli	a4, a4, 6
8020473c: 14 66        	ld	a3, 8(a2)
8020473e: 5d 8f        	or	a4, a4, a5
80204740: 33 77 e7 01  	and	a4, a4, t5
80204744: ba 95        	add	a1, a1, a4
80204746: 13 c7 f6 ff  	not	a4, a3
8020474a: 1d 83        	srli	a4, a4, 7
8020474c: 1c 6a        	ld	a5, 16(a2)
8020474e: 99 82        	srli	a3, a3, 6
80204750: d9 8e        	or	a3, a3, a4
80204752: b3 f6 e6 01  	and	a3, a3, t5
80204756: 13 c7 f7 ff  	not	a4, a5
8020475a: 1d 83        	srli	a4, a4, 7
8020475c: 99 83        	srli	a5, a5, 6
8020475e: 5d 8f        	or	a4, a4, a5
80204760: 1c 6e        	ld	a5, 24(a2)
80204762: 33 77 e7 01  	and	a4, a4, t5
80204766: ba 96        	add	a3, a3, a4
80204768: b6 95        	add	a1, a1, a3
8020476a: 93 c6 f7 ff  	not	a3, a5
8020476e: 9d 82        	srli	a3, a3, 7
80204770: 99 83        	srli	a5, a5, 6
80204772: dd 8e        	or	a3, a3, a5
80204774: b3 f6 e6 01  	and	a3, a3, t5
80204778: 13 06 06 02  	addi	a2, a2, 32
8020477c: b6 95        	add	a1, a1, a3
8020477e: e3 19 d6 fb  	bne	a2, t4, 0x80204730 <.Lpcrel_hi763+0x66>
80204782: 95 b7        	j	0x802046e6 <.Lpcrel_hi763+0x1c>
80204784: 63 0a 03 02  	beqz	t1, 0x802047b8 <.Lpcrel_hi763+0xee>
80204788: 93 05 00 0c  	li	a1, 192
8020478c: 63 e4 b3 00  	bltu	t2, a1, 0x80204794 <.Lpcrel_hi763+0xca>
80204790: 93 03 00 0c  	li	t2, 192
80204794: 81 45        	li	a1, 0
80204796: 13 f6 33 00  	andi	a2, t2, 3
8020479a: 0e 06        	slli	a2, a2, 3
8020479c: 83 b6 0e 00  	ld	a3, 0(t4)
802047a0: a1 0e        	addi	t4, t4, 8
802047a2: 13 c7 f6 ff  	not	a4, a3
802047a6: 1d 83        	srli	a4, a4, 7
802047a8: 99 82        	srli	a3, a3, 6
802047aa: d9 8e        	or	a3, a3, a4
802047ac: b3 f6 e6 01  	and	a3, a3, t5
802047b0: 61 16        	addi	a2, a2, -8
802047b2: b6 95        	add	a1, a1, a3
802047b4: 65 f6        	bnez	a2, 0x8020479c <.Lpcrel_hi763+0xd2>
802047b6: 11 a0        	j	0x802047ba <.Lpcrel_hi763+0xf0>
802047b8: 81 45        	li	a1, 0
802047ba: 33 f6 15 01  	and	a2, a1, a7
802047be: a1 81        	srli	a1, a1, 8
802047c0: b3 f5 15 01  	and	a1, a1, a7
802047c4: b2 95        	add	a1, a1, a2
802047c6: b3 85 05 03  	mul	a1, a1, a6
802047ca: c1 91        	srli	a1, a1, 48
802047cc: 2e 95        	add	a0, a0, a1
802047ce: 82 80        	ret

00000000802047d0 <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
802047d0: 39 71        	addi	sp, sp, -64
802047d2: 06 fc        	sd	ra, 56(sp)
802047d4: 22 f8        	sd	s0, 48(sp)
802047d6: 26 f4        	sd	s1, 40(sp)
802047d8: 32 88        	mv	a6, a2
802047da: 93 56 45 00  	srli	a3, a0, 4
802047de: 13 07 70 02  	li	a4, 39
802047e2: 93 07 10 27  	li	a5, 625

00000000802047e6 <.Lpcrel_hi1459>:
802047e6: 17 16 00 00  	auipc	a2, 1
802047ea: 93 0e a6 2e  	addi	t4, a2, 746
802047ee: 63 f3 f6 02  	bgeu	a3, a5, 0x80204814 <.Lpcrel_hi1459+0x2e>
802047f2: 93 06 30 06  	li	a3, 99
802047f6: 63 ea a6 0a  	bltu	a3, a0, 0x802048aa <.Lpcrel_hi1460+0x8c>
802047fa: 29 46        	li	a2, 10
802047fc: 63 78 c5 0e  	bgeu	a0, a2, 0x802048ec <.Lpcrel_hi1460+0xce>
80204800: 93 06 f7 ff  	addi	a3, a4, -1
80204804: 13 06 11 00  	addi	a2, sp, 1
80204808: 36 96        	add	a2, a2, a3
8020480a: 1b 05 05 03  	addiw	a0, a0, 48
8020480e: 23 00 a6 00  	sb	a0, 0(a2)
80204812: e5 a8        	j	0x8020490a <.Lpcrel_hi1460+0xec>
80204814: 01 47        	li	a4, 0
80204816: 93 08 41 02  	addi	a7, sp, 36
8020481a: 93 02 61 02  	addi	t0, sp, 38

000000008020481e <.Lpcrel_hi1460>:
8020481e: 97 26 00 00  	auipc	a3, 2
80204822: 03 b3 26 b9  	ld	t1, -1134(a3)
80204826: 89 66        	lui	a3, 2
80204828: 1b 8e 06 71  	addiw	t3, a3, 1808
8020482c: 85 66        	lui	a3, 1
8020482e: 1b 8f b6 47  	addiw	t5, a3, 1147
80204832: 93 03 40 06  	li	t2, 100
80204836: b7 e6 f5 05  	lui	a3, 24414
8020483a: 9b 8f f6 0f  	addiw	t6, a3, 255
8020483e: aa 86        	mv	a3, a0
80204840: 33 35 65 02  	mulhu	a0, a0, t1
80204844: 2d 81        	srli	a0, a0, 11
80204846: bb 07 c5 03  	mulw	a5, a0, t3
8020484a: 3b 86 f6 40  	subw	a2, a3, a5
8020484e: 93 17 06 03  	slli	a5, a2, 48
80204852: c9 93        	srli	a5, a5, 50
80204854: b3 87 e7 03  	mul	a5, a5, t5
80204858: 13 d4 17 01  	srli	s0, a5, 17
8020485c: c1 83        	srli	a5, a5, 16
8020485e: 93 f7 e7 7f  	andi	a5, a5, 2046
80204862: 3b 04 74 02  	mulw	s0, s0, t2
80204866: 01 9e        	subw	a2, a2, s0
80204868: 46 16        	slli	a2, a2, 49
8020486a: f6 97        	add	a5, a5, t4
8020486c: 03 c4 17 00  	lbu	s0, 1(a5)
80204870: 41 92        	srli	a2, a2, 48
80204872: b3 84 e8 00  	add	s1, a7, a4
80204876: 83 c7 07 00  	lbu	a5, 0(a5)
8020487a: a3 80 84 00  	sb	s0, 1(s1)
8020487e: 76 96        	add	a2, a2, t4
80204880: 03 44 16 00  	lbu	s0, 1(a2)
80204884: 03 46 06 00  	lbu	a2, 0(a2)
80204888: 23 80 f4 00  	sb	a5, 0(s1)
8020488c: b3 87 e2 00  	add	a5, t0, a4
80204890: a3 80 87 00  	sb	s0, 1(a5)
80204894: 23 80 c7 00  	sb	a2, 0(a5)
80204898: 71 17        	addi	a4, a4, -4
8020489a: e3 e2 df fa  	bltu	t6, a3, 0x8020483e <.Lpcrel_hi1460+0x20>
8020489e: 13 07 77 02  	addi	a4, a4, 39
802048a2: 93 06 30 06  	li	a3, 99
802048a6: e3 fa a6 f4  	bgeu	a3, a0, 0x802047fa <.Lpcrel_hi1459+0x14>
802048aa: 13 16 05 03  	slli	a2, a0, 48
802048ae: 49 92        	srli	a2, a2, 50
802048b0: 85 66        	lui	a3, 1
802048b2: 9b 86 b6 47  	addiw	a3, a3, 1147
802048b6: 33 06 d6 02  	mul	a2, a2, a3
802048ba: 45 82        	srli	a2, a2, 17
802048bc: 93 06 40 06  	li	a3, 100
802048c0: bb 06 d6 02  	mulw	a3, a2, a3
802048c4: 15 9d        	subw	a0, a0, a3
802048c6: 46 15        	slli	a0, a0, 49
802048c8: 41 91        	srli	a0, a0, 48
802048ca: 79 17        	addi	a4, a4, -2
802048cc: 76 95        	add	a0, a0, t4
802048ce: 83 46 15 00  	lbu	a3, 1(a0)
802048d2: 03 45 05 00  	lbu	a0, 0(a0)
802048d6: 93 07 11 00  	addi	a5, sp, 1
802048da: ba 97        	add	a5, a5, a4
802048dc: a3 80 d7 00  	sb	a3, 1(a5)
802048e0: 23 80 a7 00  	sb	a0, 0(a5)
802048e4: 32 85        	mv	a0, a2
802048e6: 29 46        	li	a2, 10
802048e8: e3 6c c5 f0  	bltu	a0, a2, 0x80204800 <.Lpcrel_hi1459+0x1a>
802048ec: 06 05        	slli	a0, a0, 1
802048ee: 93 06 e7 ff  	addi	a3, a4, -2
802048f2: 76 95        	add	a0, a0, t4
802048f4: 03 46 15 00  	lbu	a2, 1(a0)
802048f8: 03 45 05 00  	lbu	a0, 0(a0)
802048fc: 13 07 11 00  	addi	a4, sp, 1
80204900: 36 97        	add	a4, a4, a3
80204902: a3 00 c7 00  	sb	a2, 1(a4)
80204906: 23 00 a7 00  	sb	a0, 0(a4)
8020490a: 13 07 11 00  	addi	a4, sp, 1
8020490e: 36 97        	add	a4, a4, a3
80204910: 93 07 70 02  	li	a5, 39
80204914: 95 8f        	sub	a5, a5, a3

0000000080204916 <.Lpcrel_hi1461>:
80204916: 17 15 00 00  	auipc	a0, 1
8020491a: 13 06 a5 11  	addi	a2, a0, 282
8020491e: 42 85        	mv	a0, a6
80204920: 81 46        	li	a3, 0
80204922: 97 00 00 00  	auipc	ra, 0
80204926: e7 80 60 86  	jalr	-1946(ra)
8020492a: e2 70        	ld	ra, 56(sp)
8020492c: 42 74        	ld	s0, 48(sp)
8020492e: a2 74        	ld	s1, 40(sp)
80204930: 21 61        	addi	sp, sp, 64
80204932: 82 80        	ret

0000000080204934 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
80204934: 03 65 05 00  	lwu	a0, 0(a0)
80204938: 2e 86        	mv	a2, a1
8020493a: 85 45        	li	a1, 1
8020493c: 17 03 00 00  	auipc	t1, 0
80204940: 67 00 43 e9  	jr	-364(t1)

0000000080204944 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
80204944: 08 61        	ld	a0, 0(a0)
80204946: 2e 86        	mv	a2, a1
80204948: 85 45        	li	a1, 1
8020494a: 17 03 00 00  	auipc	t1, 0
8020494e: 67 00 63 e8  	jr	-378(t1)

0000000080204952 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
80204952: 90 75        	ld	a2, 40(a1)
80204954: 88 71        	ld	a0, 32(a1)
80204956: 1c 6e        	ld	a5, 24(a2)

0000000080204958 <.Lpcrel_hi1484>:
80204958: 97 15 00 00  	auipc	a1, 1
8020495c: 93 85 05 24  	addi	a1, a1, 576
80204960: 15 46        	li	a2, 5
80204962: 82 87        	jr	a5

0000000080204964 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
80204964: 10 65        	ld	a2, 8(a0)
80204966: 08 61        	ld	a0, 0(a0)
80204968: 1c 6e        	ld	a5, 24(a2)
8020496a: 82 87        	jr	a5

000000008020496c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
8020496c: 14 61        	ld	a3, 0(a0)
8020496e: 10 65        	ld	a2, 8(a0)
80204970: 2e 85        	mv	a0, a1
80204972: b6 85        	mv	a1, a3
80204974: 17 03 00 00  	auipc	t1, 0
80204978: 67 00 23 a8  	jr	-1406(t1)

000000008020497c <memset>:
8020497c: 17 03 00 00  	auipc	t1, 0
80204980: 67 00 c3 0b  	jr	188(t1)

0000000080204984 <memcpy>:
80204984: 17 03 00 00  	auipc	t1, 0
80204988: 67 00 83 00  	jr	8(t1)

000000008020498c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
8020498c: bd 46        	li	a3, 15
8020498e: 63 f9 c6 06  	bgeu	a3, a2, 0x80204a00 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
80204992: bb 06 a0 40  	negw	a3, a0
80204996: 13 f8 76 00  	andi	a6, a3, 7
8020499a: b3 03 05 01  	add	t2, a0, a6
8020499e: 63 0c 08 00  	beqz	a6, 0x802049b6 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
802049a2: aa 87        	mv	a5, a0
802049a4: ae 86        	mv	a3, a1
802049a6: 03 87 06 00  	lb	a4, 0(a3)
802049aa: 23 80 e7 00  	sb	a4, 0(a5)
802049ae: 85 07        	addi	a5, a5, 1
802049b0: 85 06        	addi	a3, a3, 1
802049b2: e3 ea 77 fe  	bltu	a5, t2, 0x802049a6 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
802049b6: b3 88 05 01  	add	a7, a1, a6
802049ba: 33 08 06 41  	sub	a6, a2, a6
802049be: 93 72 88 ff  	andi	t0, a6, -8
802049c2: 13 f3 78 00  	andi	t1, a7, 7
802049c6: b3 86 53 00  	add	a3, t2, t0
802049ca: 63 0e 03 02  	beqz	t1, 0x80204a06 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
802049ce: 63 56 50 04  	blez	t0, 0x80204a1a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
802049d2: 0e 03        	slli	t1, t1, 3
802049d4: 93 f7 88 ff  	andi	a5, a7, -8
802049d8: 90 63        	ld	a2, 0(a5)
802049da: bb 05 60 40  	negw	a1, t1
802049de: 13 fe 85 03  	andi	t3, a1, 56
802049e2: a1 07        	addi	a5, a5, 8
802049e4: 98 63        	ld	a4, 0(a5)
802049e6: 33 56 66 00  	srl	a2, a2, t1
802049ea: b3 15 c7 01  	sll	a1, a4, t3
802049ee: d1 8d        	or	a1, a1, a2
802049f0: 23 b0 b3 00  	sd	a1, 0(t2)
802049f4: a1 03        	addi	t2, t2, 8
802049f6: a1 07        	addi	a5, a5, 8
802049f8: 3a 86        	mv	a2, a4
802049fa: e3 e5 d3 fe  	bltu	t2, a3, 0x802049e4 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
802049fe: 31 a8        	j	0x80204a1a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80204a00: aa 86        	mv	a3, a0
80204a02: 0d e2        	bnez	a2, 0x80204a24 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
80204a04: 0d a8        	j	0x80204a36 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80204a06: 63 5a 50 00  	blez	t0, 0x80204a1a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80204a0a: c6 85        	mv	a1, a7
80204a0c: 90 61        	ld	a2, 0(a1)
80204a0e: 23 b0 c3 00  	sd	a2, 0(t2)
80204a12: a1 03        	addi	t2, t2, 8
80204a14: a1 05        	addi	a1, a1, 8
80204a16: e3 eb d3 fe  	bltu	t2, a3, 0x80204a0c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
80204a1a: b3 85 58 00  	add	a1, a7, t0
80204a1e: 13 76 78 00  	andi	a2, a6, 7
80204a22: 11 ca        	beqz	a2, 0x80204a36 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80204a24: 36 96        	add	a2, a2, a3
80204a26: 03 87 05 00  	lb	a4, 0(a1)
80204a2a: 23 80 e6 00  	sb	a4, 0(a3)
80204a2e: 85 06        	addi	a3, a3, 1
80204a30: 85 05        	addi	a1, a1, 1
80204a32: e3 ea c6 fe  	bltu	a3, a2, 0x80204a26 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
80204a36: 82 80        	ret

0000000080204a38 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
80204a38: bd 46        	li	a3, 15
80204a3a: 63 fa c6 04  	bgeu	a3, a2, 0x80204a8e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
80204a3e: bb 06 a0 40  	negw	a3, a0
80204a42: 9d 8a        	andi	a3, a3, 7
80204a44: 33 07 d5 00  	add	a4, a0, a3
80204a48: 99 c6        	beqz	a3, 0x80204a56 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
80204a4a: aa 87        	mv	a5, a0
80204a4c: 23 80 b7 00  	sb	a1, 0(a5)
80204a50: 85 07        	addi	a5, a5, 1
80204a52: e3 ed e7 fe  	bltu	a5, a4, 0x80204a4c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
80204a56: b3 08 d6 40  	sub	a7, a2, a3
80204a5a: 93 f7 88 ff  	andi	a5, a7, -8
80204a5e: b3 06 f7 00  	add	a3, a4, a5
80204a62: 63 52 f0 02  	blez	a5, 0x80204a86 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
80204a66: 13 98 85 03  	slli	a6, a1, 56
80204a6a: b7 17 10 10  	lui	a5, 65793
80204a6e: 92 07        	slli	a5, a5, 4
80204a70: 93 87 07 10  	addi	a5, a5, 256
80204a74: 33 36 f8 02  	mulhu	a2, a6, a5
80204a78: 93 17 06 02  	slli	a5, a2, 32
80204a7c: d1 8f        	or	a5, a5, a2
80204a7e: 1c e3        	sd	a5, 0(a4)
80204a80: 21 07        	addi	a4, a4, 8
80204a82: e3 6e d7 fe  	bltu	a4, a3, 0x80204a7e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
80204a86: 13 f6 78 00  	andi	a2, a7, 7
80204a8a: 01 e6        	bnez	a2, 0x80204a92 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
80204a8c: 09 a8        	j	0x80204a9e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
80204a8e: aa 86        	mv	a3, a0
80204a90: 19 c6        	beqz	a2, 0x80204a9e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
80204a92: 36 96        	add	a2, a2, a3
80204a94: 23 80 b6 00  	sb	a1, 0(a3)
80204a98: 85 06        	addi	a3, a3, 1
80204a9a: e3 ed c6 fe  	bltu	a3, a2, 0x80204a94 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
80204a9e: 82 80        	ret
