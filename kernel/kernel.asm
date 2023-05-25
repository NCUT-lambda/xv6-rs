
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 2a 82        	mv	tp, a0

0000000080200002 <.Lpcrel_hi0>:
80200002: 17 31 0c 00  	auipc	sp, 195
80200006: 13 01 e1 ff  	addi	sp, sp, -2
8020000a: c1 62        	lui	t0, 16
8020000c: 05 05        	addi	a0, a0, 1
8020000e: b3 82 a2 02  	mul	t0, t0, a0
80200012: 16 91        	add	sp, sp, t0
80200014: 97 80 00 00  	auipc	ra, 8
80200018: e7 80 20 f0  	jalr	-254(ra)
		...

0000000080201000 <uservec>:
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

000000008020109e <userret>:
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
80201174: e7 80 40 cd  	jalr	-812(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E>:
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
80202024: 13 04 01 7f  	addi	s0, sp, 2032
80202028: 91 65        	lui	a1, 4
8020202a: 9b 85 05 c7  	addiw	a1, a1, -912
8020202e: 33 01 b1 40  	sub	sp, sp, a1
80202032: aa 84        	mv	s1, a0
80202034: 0f 00 30 03  	fence	rw, rw
80202038: 08 61        	ld	a0, 0(a0)
8020203a: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020203e: 63 1b 05 5a  	bnez	a0, 0x802025f4 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x5f4>
80202042: 05 49        	li	s2, 1
80202044: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80202048: 63 16 05 5a  	bnez	a0, 0x802025f4 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x5f4>
8020204c: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
80202050: f5 f9        	bnez	a1, 0x80202044 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x44>
80202052: 11 65        	lui	a0, 4
80202054: 1b 05 05 46  	addiw	a0, a0, 1120
80202058: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020205c: 23 30 9a 00  	sd	s1, 0(s4)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80202060: 09 65        	lui	a0, 2
80202062: 1b 05 05 25  	addiw	a0, a0, 592
80202066: 33 05 a4 40  	sub	a0, s0, a0
8020206a: 13 06 10 08  	li	a2, 129
8020206e: 89 65        	lui	a1, 2
80202070: 9b 85 05 25  	addiw	a1, a1, 592
80202074: b3 09 b4 40  	sub	s3, s0, a1
80202078: 81 45        	li	a1, 0
8020207a: 97 80 00 00  	auipc	ra, 8
8020207e: e7 80 e0 3a  	jalr	942(ra)
80202082: 09 65        	lui	a0, 2
80202084: 1b 05 85 1c  	addiw	a0, a0, 456
80202088: 33 05 a4 40  	sub	a0, s0, a0
8020208c: 13 06 10 08  	li	a2, 129
80202090: 81 45        	li	a1, 0
80202092: 97 80 00 00  	auipc	ra, 8
80202096: e7 80 60 39  	jalr	918(ra)
8020209a: 09 65        	lui	a0, 2
8020209c: 1b 05 05 14  	addiw	a0, a0, 320
802020a0: 33 05 a4 40  	sub	a0, s0, a0
802020a4: 13 06 10 08  	li	a2, 129
802020a8: 81 45        	li	a1, 0
802020aa: 97 80 00 00  	auipc	ra, 8
802020ae: e7 80 e0 37  	jalr	894(ra)
802020b2: 09 65        	lui	a0, 2
802020b4: 1b 05 85 0b  	addiw	a0, a0, 184
802020b8: 33 05 a4 40  	sub	a0, s0, a0
802020bc: 13 06 10 08  	li	a2, 129
802020c0: 81 45        	li	a1, 0
802020c2: 97 80 00 00  	auipc	ra, 8
802020c6: e7 80 60 36  	jalr	870(ra)
802020ca: 09 65        	lui	a0, 2
802020cc: 1b 05 05 03  	addiw	a0, a0, 48
802020d0: 33 05 a4 40  	sub	a0, s0, a0
802020d4: 13 06 10 08  	li	a2, 129
802020d8: 81 45        	li	a1, 0
802020da: 97 80 00 00  	auipc	ra, 8
802020de: e7 80 e0 34  	jalr	846(ra)
802020e2: 09 65        	lui	a0, 2
802020e4: 1b 05 85 fa  	addiw	a0, a0, -88
802020e8: 33 05 a4 40  	sub	a0, s0, a0
802020ec: 13 06 10 08  	li	a2, 129
802020f0: 81 45        	li	a1, 0
802020f2: 97 80 00 00  	auipc	ra, 8
802020f6: e7 80 60 33  	jalr	822(ra)
802020fa: 09 65        	lui	a0, 2
802020fc: 1b 05 05 f2  	addiw	a0, a0, -224
80202100: 33 05 a4 40  	sub	a0, s0, a0
80202104: 13 06 10 08  	li	a2, 129
80202108: 81 45        	li	a1, 0
8020210a: 97 80 00 00  	auipc	ra, 8
8020210e: e7 80 e0 31  	jalr	798(ra)
80202112: 09 65        	lui	a0, 2
80202114: 1b 05 85 e9  	addiw	a0, a0, -360
80202118: 33 05 a4 40  	sub	a0, s0, a0
8020211c: 13 06 10 08  	li	a2, 129
80202120: 81 45        	li	a1, 0
80202122: 97 80 00 00  	auipc	ra, 8
80202126: e7 80 60 30  	jalr	774(ra)
8020212a: 09 65        	lui	a0, 2
8020212c: 1b 05 05 e1  	addiw	a0, a0, -496
80202130: 33 05 a4 40  	sub	a0, s0, a0
80202134: 13 06 10 08  	li	a2, 129
80202138: 81 45        	li	a1, 0
8020213a: 97 80 00 00  	auipc	ra, 8
8020213e: e7 80 e0 2e  	jalr	750(ra)
80202142: 09 65        	lui	a0, 2
80202144: 1b 05 85 d8  	addiw	a0, a0, -632
80202148: 33 05 a4 40  	sub	a0, s0, a0
8020214c: 13 06 10 08  	li	a2, 129
80202150: 81 45        	li	a1, 0
80202152: 97 80 00 00  	auipc	ra, 8
80202156: e7 80 60 2d  	jalr	726(ra)
8020215a: 75 45        	li	a0, 29
8020215c: 22 05        	slli	a0, a0, 8
8020215e: 33 05 a4 40  	sub	a0, s0, a0
80202162: 13 06 10 08  	li	a2, 129
80202166: 81 45        	li	a1, 0
80202168: 97 80 00 00  	auipc	ra, 8
8020216c: e7 80 00 2c  	jalr	704(ra)
80202170: 09 65        	lui	a0, 2
80202172: 1b 05 85 c7  	addiw	a0, a0, -904
80202176: 33 05 a4 40  	sub	a0, s0, a0
8020217a: 13 06 10 08  	li	a2, 129
8020217e: 81 45        	li	a1, 0
80202180: 97 80 00 00  	auipc	ra, 8
80202184: e7 80 80 2a  	jalr	680(ra)
80202188: 09 65        	lui	a0, 2
8020218a: 1b 05 05 bf  	addiw	a0, a0, -1040
8020218e: 33 05 a4 40  	sub	a0, s0, a0
80202192: 13 06 10 08  	li	a2, 129
80202196: 81 45        	li	a1, 0
80202198: 97 80 00 00  	auipc	ra, 8
8020219c: e7 80 00 29  	jalr	656(ra)
802021a0: 09 65        	lui	a0, 2
802021a2: 1b 05 85 b6  	addiw	a0, a0, -1176
802021a6: 33 05 a4 40  	sub	a0, s0, a0
802021aa: 13 06 10 08  	li	a2, 129
802021ae: 81 45        	li	a1, 0
802021b0: 97 80 00 00  	auipc	ra, 8
802021b4: e7 80 80 27  	jalr	632(ra)
802021b8: 09 65        	lui	a0, 2
802021ba: 1b 05 05 ae  	addiw	a0, a0, -1312
802021be: 33 05 a4 40  	sub	a0, s0, a0
802021c2: 13 06 10 08  	li	a2, 129
802021c6: 81 45        	li	a1, 0
802021c8: 97 80 00 00  	auipc	ra, 8
802021cc: e7 80 00 26  	jalr	608(ra)
802021d0: 09 65        	lui	a0, 2
802021d2: 1b 05 85 a5  	addiw	a0, a0, -1448
802021d6: 33 05 a4 40  	sub	a0, s0, a0
802021da: 13 06 10 08  	li	a2, 129
802021de: 81 45        	li	a1, 0
802021e0: 97 80 00 00  	auipc	ra, 8
802021e4: e7 80 80 24  	jalr	584(ra)
802021e8: 93 8a f9 7f  	addi	s5, s3, 2047
802021ec: 13 85 1a 08  	addi	a0, s5, 129
802021f0: 13 06 10 08  	li	a2, 129
802021f4: 81 45        	li	a1, 0
802021f6: 97 80 00 00  	auipc	ra, 8
802021fa: e7 80 20 23  	jalr	562(ra)
802021fe: 13 85 9a 10  	addi	a0, s5, 265
80202202: 13 06 10 08  	li	a2, 129
80202206: 81 45        	li	a1, 0
80202208: 97 80 00 00  	auipc	ra, 8
8020220c: e7 80 00 22  	jalr	544(ra)
80202210: 13 85 1a 19  	addi	a0, s5, 401
80202214: 13 06 10 08  	li	a2, 129
80202218: 81 45        	li	a1, 0
8020221a: 97 80 00 00  	auipc	ra, 8
8020221e: e7 80 e0 20  	jalr	526(ra)
80202222: 13 85 9a 21  	addi	a0, s5, 537
80202226: 13 06 10 08  	li	a2, 129
8020222a: 81 45        	li	a1, 0
8020222c: 97 80 00 00  	auipc	ra, 8
80202230: e7 80 c0 1f  	jalr	508(ra)
80202234: 13 85 1a 2a  	addi	a0, s5, 673
80202238: 13 06 10 08  	li	a2, 129
8020223c: 81 45        	li	a1, 0
8020223e: 97 80 00 00  	auipc	ra, 8
80202242: e7 80 a0 1e  	jalr	490(ra)
80202246: 13 85 9a 32  	addi	a0, s5, 809
8020224a: 13 06 10 08  	li	a2, 129
8020224e: 81 45        	li	a1, 0
80202250: 97 80 00 00  	auipc	ra, 8
80202254: e7 80 80 1d  	jalr	472(ra)
80202258: 13 85 1a 3b  	addi	a0, s5, 945
8020225c: 13 06 10 08  	li	a2, 129
80202260: 81 45        	li	a1, 0
80202262: 97 80 00 00  	auipc	ra, 8
80202266: e7 80 60 1c  	jalr	454(ra)
8020226a: 13 85 9a 43  	addi	a0, s5, 1081
8020226e: 13 06 10 08  	li	a2, 129
80202272: 81 45        	li	a1, 0
80202274: 97 80 00 00  	auipc	ra, 8
80202278: e7 80 40 1b  	jalr	436(ra)
8020227c: 13 85 1a 4c  	addi	a0, s5, 1217
80202280: 13 06 10 08  	li	a2, 129
80202284: 81 45        	li	a1, 0
80202286: 97 80 00 00  	auipc	ra, 8
8020228a: e7 80 20 1a  	jalr	418(ra)
8020228e: 13 85 9a 54  	addi	a0, s5, 1353
80202292: 13 06 10 08  	li	a2, 129
80202296: 81 45        	li	a1, 0
80202298: 97 80 00 00  	auipc	ra, 8
8020229c: e7 80 00 19  	jalr	400(ra)
802022a0: 13 85 1a 5d  	addi	a0, s5, 1489
802022a4: 13 06 10 08  	li	a2, 129
802022a8: 81 45        	li	a1, 0
802022aa: 97 80 00 00  	auipc	ra, 8
802022ae: e7 80 e0 17  	jalr	382(ra)
802022b2: 13 85 9a 65  	addi	a0, s5, 1625
802022b6: 13 06 10 08  	li	a2, 129
802022ba: 81 45        	li	a1, 0
802022bc: 97 80 00 00  	auipc	ra, 8
802022c0: e7 80 c0 16  	jalr	364(ra)
802022c4: 13 85 1a 6e  	addi	a0, s5, 1761
802022c8: 13 06 10 08  	li	a2, 129
802022cc: 81 45        	li	a1, 0
802022ce: 97 80 00 00  	auipc	ra, 8
802022d2: e7 80 a0 15  	jalr	346(ra)
802022d6: 13 85 9a 76  	addi	a0, s5, 1897
802022da: 13 06 10 08  	li	a2, 129
802022de: 81 45        	li	a1, 0
802022e0: 97 80 00 00  	auipc	ra, 8
802022e4: e7 80 80 14  	jalr	328(ra)
802022e8: 13 85 1a 7f  	addi	a0, s5, 2033
802022ec: 13 06 10 08  	li	a2, 129
802022f0: 81 45        	li	a1, 0
802022f2: 97 80 00 00  	auipc	ra, 8
802022f6: e7 80 60 13  	jalr	310(ra)
802022fa: 05 6b        	lui	s6, 1
802022fc: 1b 05 8b 07  	addiw	a0, s6, 120
80202300: 4e 95        	add	a0, a0, s3
80202302: 13 06 10 08  	li	a2, 129
80202306: 81 45        	li	a1, 0
80202308: 97 80 00 00  	auipc	ra, 8
8020230c: e7 80 00 12  	jalr	288(ra)
80202310: c5 4a        	li	s5, 17
80202312: 13 95 8a 00  	slli	a0, s5, 8
80202316: 4e 95        	add	a0, a0, s3
80202318: 13 06 10 08  	li	a2, 129
8020231c: 81 45        	li	a1, 0
8020231e: 97 80 00 00  	auipc	ra, 8
80202322: e7 80 a0 10  	jalr	266(ra)
80202326: 1b 05 8b 18  	addiw	a0, s6, 392
8020232a: 4e 95        	add	a0, a0, s3
8020232c: 13 06 10 08  	li	a2, 129
80202330: 81 45        	li	a1, 0
80202332: 97 80 00 00  	auipc	ra, 8
80202336: e7 80 60 0f  	jalr	246(ra)
8020233a: 1b 05 0b 21  	addiw	a0, s6, 528
8020233e: 4e 95        	add	a0, a0, s3
80202340: 13 06 10 08  	li	a2, 129
80202344: 81 45        	li	a1, 0
80202346: 97 80 00 00  	auipc	ra, 8
8020234a: e7 80 20 0e  	jalr	226(ra)
8020234e: 1b 05 8b 29  	addiw	a0, s6, 664
80202352: 4e 95        	add	a0, a0, s3
80202354: 13 06 10 08  	li	a2, 129
80202358: 81 45        	li	a1, 0
8020235a: 97 80 00 00  	auipc	ra, 8
8020235e: e7 80 e0 0c  	jalr	206(ra)
80202362: 1b 05 0b 32  	addiw	a0, s6, 800
80202366: 4e 95        	add	a0, a0, s3
80202368: 13 06 10 08  	li	a2, 129
8020236c: 81 45        	li	a1, 0
8020236e: 97 80 00 00  	auipc	ra, 8
80202372: e7 80 a0 0b  	jalr	186(ra)
80202376: 1b 05 8b 3a  	addiw	a0, s6, 936
8020237a: 4e 95        	add	a0, a0, s3
8020237c: 13 06 10 08  	li	a2, 129
80202380: 81 45        	li	a1, 0
80202382: 97 80 00 00  	auipc	ra, 8
80202386: e7 80 60 0a  	jalr	166(ra)
8020238a: 1b 05 0b 43  	addiw	a0, s6, 1072
8020238e: 4e 95        	add	a0, a0, s3
80202390: 13 06 10 08  	li	a2, 129
80202394: 81 45        	li	a1, 0
80202396: 97 80 00 00  	auipc	ra, 8
8020239a: e7 80 20 09  	jalr	146(ra)
8020239e: 1b 05 8b 4b  	addiw	a0, s6, 1208
802023a2: 4e 95        	add	a0, a0, s3
802023a4: 13 06 10 08  	li	a2, 129
802023a8: 81 45        	li	a1, 0
802023aa: 97 80 00 00  	auipc	ra, 8
802023ae: e7 80 e0 07  	jalr	126(ra)
802023b2: 1b 05 0b 54  	addiw	a0, s6, 1344
802023b6: 4e 95        	add	a0, a0, s3
802023b8: 13 06 10 08  	li	a2, 129
802023bc: 81 45        	li	a1, 0
802023be: 97 80 00 00  	auipc	ra, 8
802023c2: e7 80 a0 06  	jalr	106(ra)
802023c6: 1b 05 8b 5c  	addiw	a0, s6, 1480
802023ca: 4e 95        	add	a0, a0, s3
802023cc: 13 06 10 08  	li	a2, 129
802023d0: 81 45        	li	a1, 0
802023d2: 97 80 00 00  	auipc	ra, 8
802023d6: e7 80 60 05  	jalr	86(ra)
802023da: 1b 05 0b 65  	addiw	a0, s6, 1616
802023de: 4e 95        	add	a0, a0, s3
802023e0: 13 06 10 08  	li	a2, 129
802023e4: 81 45        	li	a1, 0
802023e6: 97 80 00 00  	auipc	ra, 8
802023ea: e7 80 20 04  	jalr	66(ra)
802023ee: 1b 05 8b 6d  	addiw	a0, s6, 1752
802023f2: 4e 95        	add	a0, a0, s3
802023f4: 13 06 10 08  	li	a2, 129
802023f8: 81 45        	li	a1, 0
802023fa: 97 80 00 00  	auipc	ra, 8
802023fe: e7 80 e0 02  	jalr	46(ra)
80202402: 1b 05 0b 76  	addiw	a0, s6, 1888
80202406: 4e 95        	add	a0, a0, s3
80202408: 13 06 10 08  	li	a2, 129
8020240c: 81 45        	li	a1, 0
8020240e: 97 80 00 00  	auipc	ra, 8
80202412: e7 80 a0 01  	jalr	26(ra)
80202416: 1b 05 8b 7e  	addiw	a0, s6, 2024
8020241a: 4e 95        	add	a0, a0, s3
8020241c: 13 06 10 08  	li	a2, 129
80202420: 81 45        	li	a1, 0
80202422: 97 80 00 00  	auipc	ra, 8
80202426: e7 80 60 00  	jalr	6(ra)
8020242a: 09 6b        	lui	s6, 2
8020242c: 1b 05 0b 87  	addiw	a0, s6, -1936
80202430: 4e 95        	add	a0, a0, s3
80202432: 13 06 10 08  	li	a2, 129
80202436: 81 45        	li	a1, 0
80202438: 97 80 00 00  	auipc	ra, 8
8020243c: e7 80 00 ff  	jalr	-16(ra)
80202440: 1b 05 8b 8f  	addiw	a0, s6, -1800
80202444: 4e 95        	add	a0, a0, s3
80202446: 13 06 10 08  	li	a2, 129
8020244a: 81 45        	li	a1, 0
8020244c: 97 80 00 00  	auipc	ra, 8
80202450: e7 80 c0 fd  	jalr	-36(ra)
80202454: 1b 05 0b 98  	addiw	a0, s6, -1664
80202458: 4e 95        	add	a0, a0, s3
8020245a: 13 06 10 08  	li	a2, 129
8020245e: 81 45        	li	a1, 0
80202460: 97 80 00 00  	auipc	ra, 8
80202464: e7 80 80 fc  	jalr	-56(ra)
80202468: 1b 05 8b a0  	addiw	a0, s6, -1528
8020246c: 4e 95        	add	a0, a0, s3
8020246e: 13 06 10 08  	li	a2, 129
80202472: 81 45        	li	a1, 0
80202474: 97 80 00 00  	auipc	ra, 8
80202478: e7 80 40 fb  	jalr	-76(ra)
8020247c: 1b 05 0b a9  	addiw	a0, s6, -1392
80202480: 4e 95        	add	a0, a0, s3
80202482: 13 06 10 08  	li	a2, 129
80202486: 81 45        	li	a1, 0
80202488: 97 80 00 00  	auipc	ra, 8
8020248c: e7 80 00 fa  	jalr	-96(ra)
80202490: 1b 05 8b b1  	addiw	a0, s6, -1256
80202494: 4e 95        	add	a0, a0, s3
80202496: 13 06 10 08  	li	a2, 129
8020249a: 81 45        	li	a1, 0
8020249c: 97 80 00 00  	auipc	ra, 8
802024a0: e7 80 c0 f8  	jalr	-116(ra)
802024a4: 1b 05 0b ba  	addiw	a0, s6, -1120
802024a8: 4e 95        	add	a0, a0, s3
802024aa: 13 06 10 08  	li	a2, 129
802024ae: 81 45        	li	a1, 0
802024b0: 97 80 00 00  	auipc	ra, 8
802024b4: e7 80 80 f7  	jalr	-136(ra)
802024b8: 1b 05 8b c2  	addiw	a0, s6, -984
802024bc: 4e 95        	add	a0, a0, s3
802024be: 13 06 10 08  	li	a2, 129
802024c2: 81 45        	li	a1, 0
802024c4: 97 80 00 00  	auipc	ra, 8
802024c8: e7 80 40 f6  	jalr	-156(ra)
802024cc: 1b 05 0b cb  	addiw	a0, s6, -848
802024d0: 4e 95        	add	a0, a0, s3
802024d2: 13 06 10 08  	li	a2, 129
802024d6: 81 45        	li	a1, 0
802024d8: 97 80 00 00  	auipc	ra, 8
802024dc: e7 80 00 f5  	jalr	-176(ra)
802024e0: 1b 05 8b d3  	addiw	a0, s6, -712
802024e4: 4e 95        	add	a0, a0, s3
802024e6: 13 06 10 08  	li	a2, 129
802024ea: 81 45        	li	a1, 0
802024ec: 97 80 00 00  	auipc	ra, 8
802024f0: e7 80 c0 f3  	jalr	-196(ra)
802024f4: 1b 05 0b dc  	addiw	a0, s6, -576
802024f8: 4e 95        	add	a0, a0, s3
802024fa: 13 06 10 08  	li	a2, 129
802024fe: 81 45        	li	a1, 0
80202500: 97 80 00 00  	auipc	ra, 8
80202504: e7 80 80 f2  	jalr	-216(ra)
80202508: 1b 05 8b e4  	addiw	a0, s6, -440
8020250c: 4e 95        	add	a0, a0, s3
8020250e: 13 06 10 08  	li	a2, 129
80202512: 81 45        	li	a1, 0
80202514: 97 80 00 00  	auipc	ra, 8
80202518: e7 80 40 f1  	jalr	-236(ra)
8020251c: 1b 05 0b ed  	addiw	a0, s6, -304
80202520: 4e 95        	add	a0, a0, s3
80202522: 13 06 10 08  	li	a2, 129
80202526: 81 45        	li	a1, 0
80202528: 97 80 00 00  	auipc	ra, 8
8020252c: e7 80 00 f0  	jalr	-256(ra)
80202530: 1b 05 8b f5  	addiw	a0, s6, -168
80202534: 4e 95        	add	a0, a0, s3
80202536: 13 06 10 08  	li	a2, 129
8020253a: 81 45        	li	a1, 0
8020253c: 97 80 00 00  	auipc	ra, 8
80202540: e7 80 c0 ee  	jalr	-276(ra)
80202544: 1b 05 0b fe  	addiw	a0, s6, -32
80202548: 4e 95        	add	a0, a0, s3
8020254a: 13 06 10 08  	li	a2, 129
8020254e: 81 45        	li	a1, 0
80202550: 97 80 00 00  	auipc	ra, 8
80202554: e7 80 80 ed  	jalr	-296(ra)
80202558: 1b 05 8b 06  	addiw	a0, s6, 104
8020255c: 4e 95        	add	a0, a0, s3
8020255e: 13 06 10 08  	li	a2, 129
80202562: 81 45        	li	a1, 0
80202564: 97 80 00 00  	auipc	ra, 8
80202568: e7 80 40 ec  	jalr	-316(ra)
8020256c: 1b 05 0b 0f  	addiw	a0, s6, 240
80202570: 4e 95        	add	a0, a0, s3
80202572: 13 06 10 08  	li	a2, 129
80202576: 81 45        	li	a1, 0
80202578: 97 80 00 00  	auipc	ra, 8
8020257c: e7 80 00 eb  	jalr	-336(ra)
80202580: 1b 05 8b 17  	addiw	a0, s6, 376
80202584: 4e 95        	add	a0, a0, s3
80202586: 13 06 10 08  	li	a2, 129
8020258a: 81 45        	li	a1, 0
8020258c: 97 80 00 00  	auipc	ra, 8
80202590: e7 80 c0 e9  	jalr	-356(ra)
80202594: 93 99 9a 00  	slli	s3, s5, 9
80202598: 11 65        	lui	a0, 4
8020259a: 1b 05 05 45  	addiw	a0, a0, 1104
8020259e: 33 05 a4 40  	sub	a0, s0, a0
802025a2: 89 65        	lui	a1, 2
802025a4: 9b 85 05 25  	addiw	a1, a1, 592
802025a8: b3 05 b4 40  	sub	a1, s0, a1
802025ac: 4e 86        	mv	a2, s3
802025ae: 97 80 00 00  	auipc	ra, 8
802025b2: e7 80 20 e8  	jalr	-382(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802025b6: 23 b4 24 01  	sd	s2, 8(s1)
802025ba: 13 89 04 01  	addi	s2, s1, 16
802025be: 11 65        	lui	a0, 4
802025c0: 1b 05 05 45  	addiw	a0, a0, 1104
802025c4: b3 05 a4 40  	sub	a1, s0, a0
802025c8: 4a 85        	mv	a0, s2
802025ca: 4e 86        	mv	a2, s3
802025cc: 97 80 00 00  	auipc	ra, 8
802025d0: e7 80 40 e6  	jalr	-412(ra)
;                 finish.panicked = false;
802025d4: 23 04 0a 00  	sb	zero, 8(s4)
802025d8: 0f 00 10 03  	fence	rw, w
802025dc: 09 45        	li	a0, 2
802025de: 88 e0        	sd	a0, 0(s1)
802025e0: 11 65        	lui	a0, 4
802025e2: 1b 05 05 46  	addiw	a0, a0, 1120
802025e6: 33 05 a4 40  	sub	a0, s0, a0
802025ea: 97 60 00 00  	auipc	ra, 6
802025ee: e7 80 e0 23  	jalr	574(ra)
802025f2: 15 a0        	j	0x80202616 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x616>
802025f4: 85 45        	li	a1, 1
;             match status {
802025f6: 63 1b b5 00  	bne	a0, a1, 0x8020260c <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x60c>
802025fa: 0f 00 00 01  	fence	w, 0
802025fe: 0f 00 30 03  	fence	rw, rw
80202602: 88 60        	ld	a0, 0(s1)
80202604: 0f 00 30 02  	fence	r, rw
;             match status {
80202608: e3 09 b5 fe  	beq	a0, a1, 0x802025fa <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x5fa>
8020260c: 89 45        	li	a1, 2
;             match status {
8020260e: 63 1c b5 02  	bne	a0, a1, 0x80202646 <_ZN4spin4once13Once$LT$T$GT$9call_once17h027c9af81b89e885E+0x646>
80202612: 13 89 04 01  	addi	s2, s1, 16
;     }
80202616: 4a 85        	mv	a0, s2
80202618: 91 65        	lui	a1, 4
8020261a: 9b 85 05 c7  	addiw	a1, a1, -912
8020261e: 2e 91        	add	sp, sp, a1
80202620: 83 30 81 7e  	ld	ra, 2024(sp)
80202624: 03 34 01 7e  	ld	s0, 2016(sp)
80202628: 83 34 81 7d  	ld	s1, 2008(sp)
8020262c: 03 39 01 7d  	ld	s2, 2000(sp)
80202630: 83 39 81 7c  	ld	s3, 1992(sp)
80202634: 03 3a 01 7c  	ld	s4, 1984(sp)
80202638: 83 3a 81 7b  	ld	s5, 1976(sp)
8020263c: 03 3b 01 7b  	ld	s6, 1968(sp)
80202640: 13 01 01 7f  	addi	sp, sp, 2032
80202644: 82 80        	ret
;             match status {
80202646: 05 e1        	bnez	a0, 0x80202666 <.Lpcrel_hi2>

0000000080202648 <.Lpcrel_hi0>:
;                 INCOMPLETE => unreachable!(),
80202648: 17 95 00 00  	auipc	a0, 9
8020264c: 13 05 05 a4  	addi	a0, a0, -1472

0000000080202650 <.Lpcrel_hi1>:
80202650: 97 95 00 00  	auipc	a1, 9
80202654: 13 86 05 a6  	addi	a2, a1, -1440
80202658: 93 05 80 02  	li	a1, 40
8020265c: 97 60 00 00  	auipc	ra, 6
80202660: e7 80 c0 3c  	jalr	972(ra)
80202664: 00 00        	unimp	

0000000080202666 <.Lpcrel_hi2>:
;                 PANICKED => panic!("Once has panicked"),
80202666: 17 95 00 00  	auipc	a0, 9
8020266a: 13 05 a5 99  	addi	a0, a0, -1638

000000008020266e <.Lpcrel_hi3>:
8020266e: 97 95 00 00  	auipc	a1, 9
80202672: 13 86 25 a0  	addi	a2, a1, -1534
80202676: c5 45        	li	a1, 17
80202678: 97 60 00 00  	auipc	ra, 6
8020267c: e7 80 00 3b  	jalr	944(ra)
80202680: 00 00        	unimp	

0000000080202682 <_ZN4spin4once13Once$LT$T$GT$9call_once17h4b8217264674b6f6E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202682: 13 01 01 81  	addi	sp, sp, -2032
80202686: 23 34 11 7e  	sd	ra, 2024(sp)
8020268a: 23 30 81 7e  	sd	s0, 2016(sp)
8020268e: 23 3c 91 7c  	sd	s1, 2008(sp)
80202692: 23 38 21 7d  	sd	s2, 2000(sp)
80202696: 23 34 31 7d  	sd	s3, 1992(sp)
8020269a: 23 30 41 7d  	sd	s4, 1984(sp)
8020269e: 23 3c 51 7b  	sd	s5, 1976(sp)
802026a2: 23 38 61 7b  	sd	s6, 1968(sp)
802026a6: 23 34 71 7b  	sd	s7, 1960(sp)
802026aa: 23 30 81 7b  	sd	s8, 1952(sp)
802026ae: 13 04 01 7f  	addi	s0, sp, 2032
802026b2: ad 65        	lui	a1, 11
802026b4: 9b 85 05 48  	addiw	a1, a1, 1152
802026b8: 33 01 b1 40  	sub	sp, sp, a1
802026bc: aa 8a        	mv	s5, a0
802026be: 0f 00 30 03  	fence	rw, rw
802026c2: 08 61        	ld	a0, 0(a0)
802026c4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802026c8: 65 ed        	bnez	a0, 0x802027c0 <.Lpcrel_hi8+0xc2>
802026ca: 85 49        	li	s3, 1
802026cc: 2f b5 0a 16  	lr.d.aqrl	a0, (s5)
802026d0: 65 e9        	bnez	a0, 0x802027c0 <.Lpcrel_hi8+0xc2>
802026d2: af b5 3a 1f  	sc.d.aqrl	a1, s3, (s5)
802026d6: fd f9        	bnez	a1, 0x802026cc <_ZN4spin4once13Once$LT$T$GT$9call_once17h4b8217264674b6f6E+0x4a>
802026d8: 31 65        	lui	a0, 12
802026da: 1b 05 05 c7  	addiw	a0, a0, -912
802026de: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802026e2: 23 30 5a 01  	sd	s5, 0(s4)
802026e6: 31 65        	lui	a0, 12
802026e8: 1b 05 95 c5  	addiw	a0, a0, -935
802026ec: 33 09 a4 40  	sub	s2, s0, a0
802026f0: 13 0b 00 04  	li	s6, 64
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
802026f4: 19 65        	lui	a0, 6
802026f6: 1b 05 05 d0  	addiw	a0, a0, -768
802026fa: b3 04 a4 40  	sub	s1, s0, a0

00000000802026fe <.Lpcrel_hi8>:
802026fe: 17 95 00 00  	auipc	a0, 9
80202702: 93 0b f5 9d  	addi	s7, a0, -1569
80202706: 11 4c        	li	s8, 4
;         Self {
80202708: 13 06 80 0b  	li	a2, 184
8020270c: 4a 85        	mv	a0, s2
8020270e: 81 45        	li	a1, 0
80202710: 97 80 00 00  	auipc	ra, 8
80202714: e7 80 80 d1  	jalr	-744(ra)
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202718: 13 85 04 ea  	addi	a0, s1, -352
8020271c: 13 06 00 08  	li	a2, 128
80202720: 81 45        	li	a1, 0
80202722: 97 80 00 00  	auipc	ra, 8
80202726: e7 80 60 d0  	jalr	-762(ra)
8020272a: 23 b0 74 f3  	sd	s7, -224(s1)
8020272e: 23 b4 84 f3  	sd	s8, -216(s1)
80202732: 23 b8 04 f2  	sd	zero, -208(s1)
80202736: 23 8c 04 f2  	sb	zero, -200(s1)
8020273a: 13 85 94 f3  	addi	a0, s1, -199
8020273e: b1 65        	lui	a1, 12
80202740: 9b 85 05 c6  	addiw	a1, a1, -928
80202744: b3 05 b4 40  	sub	a1, s0, a1
80202748: 13 06 f0 0b  	li	a2, 191
8020274c: 97 80 00 00  	auipc	ra, 8
80202750: e7 80 40 ce  	jalr	-796(ra)
80202754: 23 bc 34 ff  	sd	s3, -8(s1)
80202758: 23 b0 04 00  	sd	zero, 0(s1)
8020275c: 23 b4 04 00  	sd	zero, 8(s1)
80202760: 23 98 04 00  	sh	zero, 16(s1)
80202764: 7d 1b        	addi	s6, s6, -1
80202766: 93 84 84 17  	addi	s1, s1, 376
8020276a: e3 1f 0b f8  	bnez	s6, 0x80202708 <.Lpcrel_hi8+0xa>
8020276e: 19 65        	lui	a0, 6
80202770: 1b 09 05 e0  	addiw	s2, a0, -512
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202774: 31 65        	lui	a0, 12
80202776: 1b 05 05 c6  	addiw	a0, a0, -928
8020277a: 33 05 a4 40  	sub	a0, s0, a0
8020277e: 99 65        	lui	a1, 6
80202780: 9b 85 05 e6  	addiw	a1, a1, -416
80202784: b3 05 b4 40  	sub	a1, s0, a1
80202788: 4a 86        	mv	a2, s2
8020278a: 97 80 00 00  	auipc	ra, 8
8020278e: e7 80 60 ca  	jalr	-858(ra)
80202792: 03 b5 8a 00  	ld	a0, 8(s5)
80202796: 59 c1        	beqz	a0, 0x8020281c <.Lpcrel_hi8+0x11e>
80202798: 93 84 0a 17  	addi	s1, s5, 368
8020279c: 93 09 00 04  	li	s3, 64
802027a0: 31 a0        	j	0x802027ac <.Lpcrel_hi8+0xae>
802027a2: fd 19        	addi	s3, s3, -1
802027a4: 93 84 84 17  	addi	s1, s1, 376
802027a8: 63 8a 09 06  	beqz	s3, 0x8020281c <.Lpcrel_hi8+0x11e>
802027ac: 8c 60        	ld	a1, 0(s1)
802027ae: f5 d9        	beqz	a1, 0x802027a2 <.Lpcrel_hi8+0xa4>
802027b0: 03 b5 84 ff  	ld	a0, -8(s1)
802027b4: 05 46        	li	a2, 1
802027b6: 97 60 00 00  	auipc	ra, 6
802027ba: e7 80 60 b2  	jalr	-1242(ra)
802027be: d5 b7        	j	0x802027a2 <.Lpcrel_hi8+0xa4>
802027c0: 85 45        	li	a1, 1
;             match status {
802027c2: 63 1c b5 00  	bne	a0, a1, 0x802027da <.Lpcrel_hi8+0xdc>
802027c6: 0f 00 00 01  	fence	w, 0
802027ca: 0f 00 30 03  	fence	rw, rw
802027ce: 03 b5 0a 00  	ld	a0, 0(s5)
802027d2: 0f 00 30 02  	fence	r, rw
;             match status {
802027d6: e3 08 b5 fe  	beq	a0, a1, 0x802027c6 <.Lpcrel_hi8+0xc8>
802027da: 89 45        	li	a1, 2
;             match status {
802027dc: 63 11 b5 08  	bne	a0, a1, 0x8020285e <.Lpcrel_hi8+0x160>
802027e0: 93 89 0a 01  	addi	s3, s5, 16
;     }
802027e4: 4e 85        	mv	a0, s3
802027e6: ad 65        	lui	a1, 11
802027e8: 9b 85 05 48  	addiw	a1, a1, 1152
802027ec: 2e 91        	add	sp, sp, a1
802027ee: 83 30 81 7e  	ld	ra, 2024(sp)
802027f2: 03 34 01 7e  	ld	s0, 2016(sp)
802027f6: 83 34 81 7d  	ld	s1, 2008(sp)
802027fa: 03 39 01 7d  	ld	s2, 2000(sp)
802027fe: 83 39 81 7c  	ld	s3, 1992(sp)
80202802: 03 3a 01 7c  	ld	s4, 1984(sp)
80202806: 83 3a 81 7b  	ld	s5, 1976(sp)
8020280a: 03 3b 01 7b  	ld	s6, 1968(sp)
8020280e: 83 3b 81 7a  	ld	s7, 1960(sp)
80202812: 03 3c 01 7a  	ld	s8, 1952(sp)
80202816: 13 01 01 7f  	addi	sp, sp, 2032
8020281a: 82 80        	ret
8020281c: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
8020281e: 23 b4 aa 00  	sd	a0, 8(s5)
80202822: 93 89 0a 01  	addi	s3, s5, 16
80202826: 31 65        	lui	a0, 12
80202828: 1b 05 05 c6  	addiw	a0, a0, -928
8020282c: b3 05 a4 40  	sub	a1, s0, a0
80202830: 4e 85        	mv	a0, s3
80202832: 4a 86        	mv	a2, s2
80202834: 97 80 00 00  	auipc	ra, 8
80202838: e7 80 c0 bf  	jalr	-1028(ra)
;                 finish.panicked = false;
8020283c: 23 04 0a 00  	sb	zero, 8(s4)
80202840: 0f 00 10 03  	fence	rw, w
80202844: 09 45        	li	a0, 2
80202846: 23 b0 aa 00  	sd	a0, 0(s5)
8020284a: 31 65        	lui	a0, 12
8020284c: 1b 05 05 c7  	addiw	a0, a0, -912
80202850: 33 05 a4 40  	sub	a0, s0, a0
80202854: 97 60 00 00  	auipc	ra, 6
80202858: e7 80 40 fd  	jalr	-44(ra)
8020285c: 61 b7        	j	0x802027e4 <.Lpcrel_hi8+0xe6>
;             match status {
8020285e: 05 e1        	bnez	a0, 0x8020287e <.Lpcrel_hi11>

0000000080202860 <.Lpcrel_hi9>:
;                 INCOMPLETE => unreachable!(),
80202860: 17 95 00 00  	auipc	a0, 9
80202864: 13 05 85 82  	addi	a0, a0, -2008

0000000080202868 <.Lpcrel_hi10>:
80202868: 97 95 00 00  	auipc	a1, 9
8020286c: 13 86 85 84  	addi	a2, a1, -1976
80202870: 93 05 80 02  	li	a1, 40
80202874: 97 60 00 00  	auipc	ra, 6
80202878: e7 80 40 1b  	jalr	436(ra)
8020287c: 00 00        	unimp	

000000008020287e <.Lpcrel_hi11>:
;                 PANICKED => panic!("Once has panicked"),
8020287e: 17 85 00 00  	auipc	a0, 8
80202882: 13 05 25 78  	addi	a0, a0, 1922

0000000080202886 <.Lpcrel_hi12>:
80202886: 97 85 00 00  	auipc	a1, 8
8020288a: 13 86 a5 7e  	addi	a2, a1, 2026
8020288e: c5 45        	li	a1, 17
80202890: 97 60 00 00  	auipc	ra, 6
80202894: e7 80 80 19  	jalr	408(ra)
80202898: 00 00        	unimp	

000000008020289a <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.14547819291151923030>:
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
802028ac: 09 c5        	beqz	a0, 0x802028b6 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.14547819291151923030+0x1c>
;             kfree(self.trapframe as Addr);
802028ae: 97 50 00 00  	auipc	ra, 5
802028b2: e7 80 20 47  	jalr	1138(ra)
;         !self.data.is_null()
802028b6: 03 b5 04 14  	ld	a0, 320(s1)
;         self.trapframe = null_mut();
802028ba: 23 b4 04 14  	sd	zero, 328(s1)
;         if self.uvm.valid() {
802028be: 39 cd        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.14547819291151923030+0x82>
802028c0: 13 89 04 14  	addi	s2, s1, 320
802028c4: 37 05 00 04  	lui	a0, 16384
802028c8: 7d 35        	addiw	a0, a0, -1
802028ca: 93 15 c5 00  	slli	a1, a0, 12
;         self.uvm.uvmunmap(TRAMPOLINE, 1, false);
802028ce: 05 46        	li	a2, 1
802028d0: 4a 85        	mv	a0, s2
802028d2: 81 46        	li	a3, 0
802028d4: 97 40 00 00  	auipc	ra, 4
802028d8: e7 80 e0 5c  	jalr	1486(ra)
802028dc: 37 05 00 02  	lui	a0, 8192
802028e0: 7d 35        	addiw	a0, a0, -1
802028e2: 93 15 d5 00  	slli	a1, a0, 13
;         self.uvm.uvmunmap(TRAPFRAME, 1, false);
802028e6: 05 46        	li	a2, 1
802028e8: 4a 85        	mv	a0, s2
802028ea: 81 46        	li	a3, 0
802028ec: 97 40 00 00  	auipc	ra, 4
802028f0: e7 80 60 5b  	jalr	1462(ra)
;         self.uvm.uvmfree(self.sz);
802028f4: 03 b5 84 13  	ld	a0, 312(s1)
; 		if sz > 0 {
802028f8: 15 c1        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.14547819291151923030+0x82>
802028fa: 85 65        	lui	a1, 1
802028fc: fd 35        	addiw	a1, a1, -1
;     (addr + PGSIZE - 1) & !(PGSIZE - 1)
802028fe: 2e 95        	add	a0, a0, a1
; 			self.uvmunmap(0, pgroundup(sz) / PGSIZE, true);
80202900: 13 56 c5 00  	srli	a2, a0, 12
80202904: 85 46        	li	a3, 1
80202906: 4a 85        	mv	a0, s2
80202908: 81 45        	li	a1, 0
8020290a: 97 40 00 00  	auipc	ra, 4
8020290e: e7 80 80 59  	jalr	1432(ra)
; 			self.freewalk();
80202912: 4a 85        	mv	a0, s2
80202914: 97 50 00 00  	auipc	ra, 5
80202918: e7 80 20 81  	jalr	-2030(ra)
;         self.pid = 0;
8020291c: 23 b4 04 12  	sd	zero, 296(s1)
80202920: 83 b5 04 16  	ld	a1, 352(s1)
;         self.pid = 0;
80202924: 23 b0 04 12  	sd	zero, 288(s1)
80202928: 13 89 04 16  	addi	s2, s1, 352
;         self.sz = 0;
8020292c: 23 bc 04 12  	sd	zero, 312(s1)
80202930: 23 b0 04 14  	sd	zero, 320(s1)
80202934: 81 c9        	beqz	a1, 0x80202944 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.14547819291151923030+0xaa>
80202936: 03 b5 84 15  	ld	a0, 344(s1)
8020293a: 05 46        	li	a2, 1
8020293c: 97 60 00 00  	auipc	ra, 6
80202940: e7 80 00 9a  	jalr	-1632(ra)
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

000000008020296a <_ZN6kernel7process4proc6myproc17ha55a1285f0dbc7ddE>:
; pub fn myproc() -> *mut Proc {
8020296a: 01 11        	addi	sp, sp, -32
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020296c: 06 ec        	sd	ra, 24(sp)
8020296e: 22 e8        	sd	s0, 16(sp)
80202970: 26 e4        	sd	s1, 8(sp)
80202972: 4a e0        	sd	s2, 0(sp)
80202974: 00 10        	addi	s0, sp, 32
80202976: 73 29 00 10  	csrr	s2, sstatus
8020297a: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
8020297c: 73 30 05 10  	csrc	sstatus, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202980: 92 84        	mv	s1, tp

0000000080202982 <.Lpcrel_hi4>:
;         self.0.call_once(builder)
80202982: 17 65 14 00  	auipc	a0, 326
80202986: 13 05 65 4f  	addi	a0, a0, 1270
8020298a: 97 f0 ff ff  	auipc	ra, 1048575
8020298e: e7 80 60 67  	jalr	1654(ra)
80202992: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80202996: 63 f0 b4 06  	bgeu	s1, a1, 0x802029f6 <.Lpcrel_hi5>
8020299a: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
8020299e: 33 86 b4 02  	mul	a2, s1, a1
802029a2: 2a 96        	add	a2, a2, a0
802029a4: 2c 7e        	ld	a1, 120(a2)
802029a6: 13 05 86 07  	addi	a0, a2, 120
802029aa: 91 e5        	bnez	a1, 0x802029b6 <.Lpcrel_hi4+0x34>
;         mc.intena = old;
802029ac: 7a 19        	slli	s2, s2, 62
802029ae: 93 56 f9 03  	srli	a3, s2, 63
802029b2: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
802029b6: 85 05        	addi	a1, a1, 1
802029b8: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802029ba: 92 84        	mv	s1, tp

00000000802029bc <.Lpcrel_hi6>:
;         self.0.call_once(builder)
802029bc: 17 65 14 00  	auipc	a0, 326
802029c0: 13 05 c5 4b  	addi	a0, a0, 1212
802029c4: 97 f0 ff ff  	auipc	ra, 1048575
802029c8: e7 80 c0 63  	jalr	1596(ra)
802029cc: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
802029d0: 63 f8 b4 02  	bgeu	s1, a1, 0x80202a00 <.Lpcrel_hi7>
802029d4: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
802029d8: b3 85 b4 02  	mul	a1, s1, a1
802029dc: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
802029de: 04 61        	ld	s1, 0(a0)
;     pop_off();
802029e0: 97 50 00 00  	auipc	ra, 5
802029e4: e7 80 e0 da  	jalr	-594(ra)
; }
802029e8: 26 85        	mv	a0, s1
802029ea: e2 60        	ld	ra, 24(sp)
802029ec: 42 64        	ld	s0, 16(sp)
802029ee: a2 64        	ld	s1, 8(sp)
802029f0: 02 69        	ld	s2, 0(sp)
802029f2: 05 61        	addi	sp, sp, 32
802029f4: 82 80        	ret

00000000802029f6 <.Lpcrel_hi5>:
; 	&mut (CPUS.get_mut()[id])
802029f6: 17 95 00 00  	auipc	a0, 9
802029fa: 13 06 25 9e  	addi	a2, a0, -1566
802029fe: 29 a0        	j	0x80202a08 <.Lpcrel_hi7+0x8>

0000000080202a00 <.Lpcrel_hi7>:
80202a00: 17 95 00 00  	auipc	a0, 9
80202a04: 13 06 85 9d  	addi	a2, a0, -1576
80202a08: 93 05 00 04  	li	a1, 64
80202a0c: 26 85        	mv	a0, s1
80202a0e: 97 60 00 00  	auipc	ra, 6
80202a12: e7 80 60 04  	jalr	70(ra)
80202a16: 00 00        	unimp	

0000000080202a18 <_ZN6kernel7process4proc9allocproc17hbff1f622c20dfe4bE>:
; fn allocproc() -> *mut Proc {
80202a18: 19 71        	addi	sp, sp, -128
80202a1a: 86 fc        	sd	ra, 120(sp)
80202a1c: a2 f8        	sd	s0, 112(sp)
80202a1e: a6 f4        	sd	s1, 104(sp)
80202a20: ca f0        	sd	s2, 96(sp)
80202a22: ce ec        	sd	s3, 88(sp)
80202a24: d2 e8        	sd	s4, 80(sp)
80202a26: d6 e4        	sd	s5, 72(sp)
80202a28: da e0        	sd	s6, 64(sp)
80202a2a: 5e fc        	sd	s7, 56(sp)
80202a2c: 00 01        	addi	s0, sp, 128

0000000080202a2e <.Lpcrel_hi8>:
;         self.0.call_once(builder)
80202a2e: 17 05 14 00  	auipc	a0, 320
80202a32: 13 05 a5 60  	addi	a0, a0, 1546
80202a36: 97 00 00 00  	auipc	ra, 0
80202a3a: e7 80 c0 c4  	jalr	-948(ra)
80202a3e: 13 0a 05 12  	addi	s4, a0, 288
80202a42: 93 09 00 04  	li	s3, 64

0000000080202a46 <.Lpcrel_hi9>:
80202a46: 17 65 14 00  	auipc	a0, 326
80202a4a: 13 09 25 43  	addi	s2, a0, 1074
80202a4e: 93 0a 80 08  	li	s5, 136
80202a52: 13 0b 00 04  	li	s6, 64
;         p.lock.acquire();
80202a56: 13 05 0a f6  	addi	a0, s4, -160
80202a5a: 97 50 00 00  	auipc	ra, 5
80202a5e: e7 80 e0 bc  	jalr	-1074(ra)
; #[derive(PartialEq, Eq, Clone, Copy)]
80202a62: 03 45 0a 05  	lbu	a0, 80(s4)
;         if p.state == ProcState::Unused {
80202a66: 31 c5        	beqz	a0, 0x80202ab2 <.Lpcrel_hi9+0x6c>
80202a68: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202a6c: 63 03 05 34  	beqz	a0, 0x80202db2 <.Lpcrel_hi11>
80202a70: 83 3b 0a f7  	ld	s7, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202a74: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
80202a76: 4a 85        	mv	a0, s2
80202a78: 97 f0 ff ff  	auipc	ra, 1048575
80202a7c: e7 80 80 58  	jalr	1416(ra)
; 	&mut (CPUS.get_mut()[id])
80202a80: 63 f9 34 2d  	bgeu	s1, s3, 0x80202d52 <.Lpcrel_hi10>
80202a84: b3 85 54 03  	mul	a1, s1, s5
80202a88: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202a8a: 63 94 ab 32  	bne	s7, a0, 0x80202db2 <.Lpcrel_hi11>
;         self.cpu = null_mut();
80202a8e: 23 38 0a f6  	sd	zero, -144(s4)
80202a92: 0f 00 30 03  	fence	rw, rw
80202a96: 0f 00 10 03  	fence	rw, w
80202a9a: 23 0c 0a f6  	sb	zero, -136(s4)
;         pop_off();
80202a9e: 97 50 00 00  	auipc	ra, 5
80202aa2: e7 80 00 cf  	jalr	-784(ra)
80202aa6: 7d 1b        	addi	s6, s6, -1
80202aa8: 13 0a 8a 17  	addi	s4, s4, 376
80202aac: e3 15 0b fa  	bnez	s6, 0x80202a56 <.Lpcrel_hi9+0x10>
80202ab0: 61 a4        	j	0x80202d38 <.Lpcrel_hi25+0x3e>
80202ab2: 0f 00 30 03  	fence	rw, rw

0000000080202ab6 <.Lpcrel_hi14>:
80202ab6: 17 05 14 00  	auipc	a0, 320
80202aba: 93 04 a5 54  	addi	s1, a0, 1354
80202abe: 88 78        	ld	a0, 48(s1)
80202ac0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202ac4: 39 e5        	bnez	a0, 0x80202b12 <.Lpcrel_hi15+0x34>
80202ac6: 93 85 04 03  	addi	a1, s1, 48
80202aca: 05 46        	li	a2, 1
80202acc: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202ad0: 29 e1        	bnez	a0, 0x80202b12 <.Lpcrel_hi15+0x34>
80202ad2: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202ad6: fd fa        	bnez	a3, 0x80202acc <.Lpcrel_hi14+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202ad8: 23 34 b4 f8  	sd	a1, -120(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202adc: 90 e0        	sd	a2, 0(s1)

0000000080202ade <.Lpcrel_hi15>:
80202ade: 17 85 00 00  	auipc	a0, 8
80202ae2: 13 05 c5 5e  	addi	a0, a0, 1516
80202ae6: 88 e4        	sd	a0, 8(s1)
80202ae8: 1d 45        	li	a0, 7
80202aea: 88 e8        	sd	a0, 16(s1)
80202aec: 23 bc 04 00  	sd	zero, 24(s1)
80202af0: 23 80 04 02  	sb	zero, 32(s1)
80202af4: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80202af8: 23 08 04 f8  	sb	zero, -112(s0)
80202afc: 0f 00 10 03  	fence	rw, w
80202b00: 09 45        	li	a0, 2
80202b02: 88 f8        	sd	a0, 48(s1)
80202b04: 13 05 84 f8  	addi	a0, s0, -120
80202b08: 97 60 00 00  	auipc	ra, 6
80202b0c: e7 80 00 d2  	jalr	-736(ra)
80202b10: 05 a0        	j	0x80202b30 <.Lpcrel_hi15+0x52>
80202b12: 85 45        	li	a1, 1
;             match status {
80202b14: 63 1b b5 00  	bne	a0, a1, 0x80202b2a <.Lpcrel_hi15+0x4c>
80202b18: 0f 00 00 01  	fence	w, 0
80202b1c: 0f 00 30 03  	fence	rw, rw
80202b20: 88 78        	ld	a0, 48(s1)
80202b22: 0f 00 30 02  	fence	r, rw
;             match status {
80202b26: e3 09 b5 fe  	beq	a0, a1, 0x80202b18 <.Lpcrel_hi15+0x3a>
80202b2a: 89 45        	li	a1, 2
;             match status {
80202b2c: 63 11 b5 2c  	bne	a0, a1, 0x80202dee <.Lpcrel_hi13+0x16>
;     pidcnt.pid_lock.acquire();
80202b30: 13 85 84 00  	addi	a0, s1, 8
80202b34: 97 50 00 00  	auipc	ra, 5
80202b38: e7 80 40 af  	jalr	-1292(ra)
;     pid = pidcnt.nextpid;
80202b3c: 83 ba 84 02  	ld	s5, 40(s1)
;     pidcnt.nextpid += 1;
80202b40: 13 85 1a 00  	addi	a0, s5, 1
80202b44: 88 f4        	sd	a0, 40(s1)
80202b46: 03 85 04 02  	lb	a0, 32(s1)
80202b4a: 63 00 05 2e  	beqz	a0, 0x80202e2a <.Lpcrel_hi22>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202b4e: 83 b9 84 01  	ld	s3, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202b52: 12 89        	mv	s2, tp

0000000080202b54 <.Lpcrel_hi20>:
;         self.0.call_once(builder)
80202b54: 17 65 14 00  	auipc	a0, 326
80202b58: 13 05 45 32  	addi	a0, a0, 804
80202b5c: 97 f0 ff ff  	auipc	ra, 1048575
80202b60: e7 80 40 4a  	jalr	1188(ra)
80202b64: 93 05 00 04  	li	a1, 64
80202b68: 63 71 b9 20  	bgeu	s2, a1, 0x80202d6a <.Lpcrel_hi21>
80202b6c: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80202b70: b3 05 b9 02  	mul	a1, s2, a1
80202b74: 2e 95        	add	a0, a0, a1
80202b76: 63 9a a9 2a  	bne	s3, a0, 0x80202e2a <.Lpcrel_hi22>
80202b7a: 93 09 0a ee  	addi	s3, s4, -288
;         self.cpu = null_mut();
80202b7e: 23 bc 04 00  	sd	zero, 24(s1)
80202b82: 0f 00 30 03  	fence	rw, rw
80202b86: 0f 00 10 03  	fence	rw, w
80202b8a: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80202b8e: 97 50 00 00  	auipc	ra, 5
80202b92: e7 80 00 c0  	jalr	-1024(ra)
;             p.pid = allocpid();
80202b96: 23 30 5a 01  	sd	s5, 0(s4)
80202b9a: 05 45        	li	a0, 1
;             p.state = ProcState::Used;
80202b9c: 23 08 aa 04  	sb	a0, 80(s4)
;             let pa = kalloc();
80202ba0: 97 50 00 00  	auipc	ra, 5
80202ba4: e7 80 60 f5  	jalr	-170(ra)
;             p.trapframe = pa as *mut Trapframe;
80202ba8: 23 34 aa 02  	sd	a0, 40(s4)
;             if pa == 0 {
80202bac: 63 0b 05 12  	beqz	a0, 0x80202ce2 <.Lpcrel_hi42+0x16>
80202bb0: 2a 89        	mv	s2, a0
;         let pagetable = PagetableT::addr2pagetablet(kalloc());
80202bb2: 97 50 00 00  	auipc	ra, 5
80202bb6: e7 80 40 f4  	jalr	-188(ra)
80202bba: aa 84        	mv	s1, a0
80202bbc: 05 66        	lui	a2, 1
80202bbe: 81 45        	li	a1, 0
80202bc0: 97 80 00 00  	auipc	ra, 8
80202bc4: e7 80 80 86  	jalr	-1944(ra)
;         let mut uvm = Uvm::from_pagetable(Uvm::uvmcreate());
80202bc8: 23 30 94 f8  	sd	s1, -128(s0)
;         if !uvm.valid() {
80202bcc: c9 cc        	beqz	s1, 0x80202c66 <.Lpcrel_hi37+0x1a>
80202bce: 37 05 00 04  	lui	a0, 16384
80202bd2: 7d 35        	addiw	a0, a0, -1
80202bd4: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80202bd8: 13 05 04 f8  	addi	a0, s0, -128
80202bdc: 05 46        	li	a2, 1
80202bde: 97 40 00 00  	auipc	ra, 4
80202be2: e7 80 80 5e  	jalr	1512(ra)
;             if pte.is_null() {
80202be6: 41 c1        	beqz	a0, 0x80202c66 <.Lpcrel_hi37+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202be8: 83 45 05 00  	lbu	a1, 0(a0)
80202bec: 85 89        	andi	a1, a1, 1
80202bee: 63 9a 05 2a  	bnez	a1, 0x80202ea2 <.Lpcrel_hi31>

0000000080202bf2 <.Lpcrel_hi30>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202bf2: 97 e5 ff ff  	auipc	a1, 1048574
80202bf6: 93 85 e5 40  	addi	a1, a1, 1038
80202bfa: b1 81        	srli	a1, a1, 12
80202bfc: aa 05        	slli	a1, a1, 10
80202bfe: ad 05        	addi	a1, a1, 11
80202c00: 0c e1        	sd	a1, 0(a0)
80202c02: 37 05 00 02  	lui	a0, 8192
80202c06: 7d 35        	addiw	a0, a0, -1
80202c08: 93 15 d5 00  	slli	a1, a0, 13
;             let pte = self.walk(a, true);
80202c0c: 13 05 04 f8  	addi	a0, s0, -128
80202c10: 05 46        	li	a2, 1
80202c12: 97 40 00 00  	auipc	ra, 4
80202c16: e7 80 40 5b  	jalr	1460(ra)
;             if pte.is_null() {
80202c1a: 31 c5        	beqz	a0, 0x80202c66 <.Lpcrel_hi37+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202c1c: 83 45 05 00  	lbu	a1, 0(a0)
80202c20: 85 89        	andi	a1, a1, 1
80202c22: 63 9e 05 2a  	bnez	a1, 0x80202ede <.Lpcrel_hi34>
;     (pa >> 12) << 10
80202c26: 93 55 c9 00  	srli	a1, s2, 12
80202c2a: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202c2c: 9d 05        	addi	a1, a1, 7
80202c2e: 0c e1        	sd	a1, 0(a0)
;         uvm
80202c30: 03 35 04 f8  	ld	a0, -128(s0)
;             p.uvm = p.proc_uvm();
80202c34: 23 30 aa 02  	sd	a0, 32(s4)
;             if !p.uvm.valid() {
80202c38: 0d c9        	beqz	a0, 0x80202c6a <.Lpcrel_hi37+0x1e>
80202c3a: 13 05 8a f8  	addi	a0, s4, -120
80202c3e: 13 06 80 06  	li	a2, 104
80202c42: 81 45        	li	a1, 0
80202c44: 97 70 00 00  	auipc	ra, 7
80202c48: e7 80 40 7e  	jalr	2020(ra)

0000000080202c4c <.Lpcrel_hi37>:
;             p.context.ra = forkret as usize;
80202c4c: 17 35 00 00  	auipc	a0, 3
;             p.context.sp = p.kstack + KERNEL_STACK_SIZE;
80202c50: 83 35 0a 01  	ld	a1, 16(s4)
;             p.context.ra = forkret as usize;
80202c54: 13 05 65 d8  	addi	a0, a0, -634
80202c58: 23 30 aa f8  	sd	a0, -128(s4)
80202c5c: 41 65        	lui	a0, 16
;             p.context.sp = p.kstack + KERNEL_STACK_SIZE;
80202c5e: 2e 95        	add	a0, a0, a1
80202c60: 23 34 aa f8  	sd	a0, -120(s4)
80202c64: d9 a8        	j	0x80202d3a <.Lpcrel_hi25+0x40>
;             p.uvm = p.proc_uvm();
80202c66: 23 30 0a 02  	sd	zero, 32(s4)
;                 p.freeproc();
80202c6a: 4e 85        	mv	a0, s3
80202c6c: 97 00 00 00  	auipc	ra, 0
80202c70: e7 80 e0 c2  	jalr	-978(ra)
80202c74: 03 05 8a f7  	lb	a0, -136(s4)
80202c78: 1d c5        	beqz	a0, 0x80202ca6 <.Lpcrel_hi40>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202c7a: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202c7e: 92 84        	mv	s1, tp

0000000080202c80 <.Lpcrel_hi38>:
;         self.0.call_once(builder)
80202c80: 17 65 14 00  	auipc	a0, 326
80202c84: 13 05 85 1f  	addi	a0, a0, 504
80202c88: 97 f0 ff ff  	auipc	ra, 1048575
80202c8c: e7 80 80 37  	jalr	888(ra)
80202c90: 93 05 00 04  	li	a1, 64
80202c94: 63 f7 b4 0e  	bgeu	s1, a1, 0x80202d82 <.Lpcrel_hi39>
80202c98: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80202c9c: b3 85 b4 02  	mul	a1, s1, a1
80202ca0: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202ca2: 63 0f a9 06  	beq	s2, a0, 0x80202d20 <.Lpcrel_hi25+0x26>

0000000080202ca6 <.Lpcrel_hi40>:
80202ca6: 17 95 00 00  	auipc	a0, 9
80202caa: 13 05 a5 fe  	addi	a0, a0, -22
80202cae: 23 34 a4 f8  	sd	a0, -120(s0)
80202cb2: 05 45        	li	a0, 1
80202cb4: 23 38 a4 f8  	sd	a0, -112(s0)
80202cb8: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202cbc <.Lpcrel_hi41>:
80202cbc: 17 95 00 00  	auipc	a0, 9
80202cc0: 13 05 c5 f0  	addi	a0, a0, -244
80202cc4: 23 3c a4 f8  	sd	a0, -104(s0)
80202cc8: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ccc <.Lpcrel_hi42>:
;             panic!("release");
80202ccc: 17 95 00 00  	auipc	a0, 9
80202cd0: 93 05 45 fd  	addi	a1, a0, -44
80202cd4: 13 05 84 f8  	addi	a0, s0, -120
80202cd8: 97 60 00 00  	auipc	ra, 6
80202cdc: e7 80 20 d2  	jalr	-734(ra)
80202ce0: 00 00        	unimp	
;                 p.freeproc();
80202ce2: 4e 85        	mv	a0, s3
80202ce4: 97 00 00 00  	auipc	ra, 0
80202ce8: e7 80 60 bb  	jalr	-1098(ra)
80202cec: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202cf0: 63 0b 05 16  	beqz	a0, 0x80202e66 <.Lpcrel_hi27>
80202cf4: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202cf8: 92 84        	mv	s1, tp

0000000080202cfa <.Lpcrel_hi25>:
;         self.0.call_once(builder)
80202cfa: 17 65 14 00  	auipc	a0, 326
80202cfe: 13 05 e5 17  	addi	a0, a0, 382
80202d02: 97 f0 ff ff  	auipc	ra, 1048575
80202d06: e7 80 e0 2f  	jalr	766(ra)
80202d0a: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80202d0e: 63 f6 b4 08  	bgeu	s1, a1, 0x80202d9a <.Lpcrel_hi26>
80202d12: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80202d16: b3 85 b4 02  	mul	a1, s1, a1
80202d1a: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202d1c: 63 15 a9 14  	bne	s2, a0, 0x80202e66 <.Lpcrel_hi27>
80202d20: 23 38 0a f6  	sd	zero, -144(s4)
80202d24: 0f 00 30 03  	fence	rw, rw
80202d28: 0f 00 10 03  	fence	rw, w
80202d2c: 23 0c 0a f6  	sb	zero, -136(s4)
80202d30: 97 50 00 00  	auipc	ra, 5
80202d34: e7 80 e0 a5  	jalr	-1442(ra)
80202d38: 81 49        	li	s3, 0
; }
80202d3a: 4e 85        	mv	a0, s3
80202d3c: e6 70        	ld	ra, 120(sp)
80202d3e: 46 74        	ld	s0, 112(sp)
80202d40: a6 74        	ld	s1, 104(sp)
80202d42: 06 79        	ld	s2, 96(sp)
80202d44: e6 69        	ld	s3, 88(sp)
80202d46: 46 6a        	ld	s4, 80(sp)
80202d48: a6 6a        	ld	s5, 72(sp)
80202d4a: 06 6b        	ld	s6, 64(sp)
80202d4c: e2 7b        	ld	s7, 56(sp)
80202d4e: 09 61        	addi	sp, sp, 128
80202d50: 82 80        	ret

0000000080202d52 <.Lpcrel_hi10>:
; 	&mut (CPUS.get_mut()[id])
80202d52: 17 85 00 00  	auipc	a0, 8
80202d56: 13 06 65 68  	addi	a2, a0, 1670
80202d5a: 93 05 00 04  	li	a1, 64
80202d5e: 26 85        	mv	a0, s1
80202d60: 97 60 00 00  	auipc	ra, 6
80202d64: e7 80 40 cf  	jalr	-780(ra)
80202d68: 00 00        	unimp	

0000000080202d6a <.Lpcrel_hi21>:
; 	&mut (CPUS.get_mut()[id])
80202d6a: 17 85 00 00  	auipc	a0, 8
80202d6e: 13 06 e5 66  	addi	a2, a0, 1646
80202d72: 93 05 00 04  	li	a1, 64
80202d76: 4a 85        	mv	a0, s2
80202d78: 97 60 00 00  	auipc	ra, 6
80202d7c: e7 80 c0 cd  	jalr	-804(ra)
80202d80: 00 00        	unimp	

0000000080202d82 <.Lpcrel_hi39>:
80202d82: 17 85 00 00  	auipc	a0, 8
80202d86: 13 06 65 65  	addi	a2, a0, 1622
80202d8a: 93 05 00 04  	li	a1, 64
80202d8e: 26 85        	mv	a0, s1
80202d90: 97 60 00 00  	auipc	ra, 6
80202d94: e7 80 40 cc  	jalr	-828(ra)
80202d98: 00 00        	unimp	

0000000080202d9a <.Lpcrel_hi26>:
; 	&mut (CPUS.get_mut()[id])
80202d9a: 17 85 00 00  	auipc	a0, 8
80202d9e: 13 06 e5 63  	addi	a2, a0, 1598
80202da2: 93 05 00 04  	li	a1, 64
80202da6: 26 85        	mv	a0, s1
80202da8: 97 60 00 00  	auipc	ra, 6
80202dac: e7 80 c0 ca  	jalr	-852(ra)
80202db0: 00 00        	unimp	

0000000080202db2 <.Lpcrel_hi11>:
80202db2: 17 95 00 00  	auipc	a0, 9
80202db6: 13 05 e5 ed  	addi	a0, a0, -290
80202dba: 23 34 a4 f8  	sd	a0, -120(s0)
80202dbe: 05 45        	li	a0, 1
80202dc0: 23 38 a4 f8  	sd	a0, -112(s0)
80202dc4: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202dc8 <.Lpcrel_hi12>:
80202dc8: 17 95 00 00  	auipc	a0, 9
80202dcc: 13 05 05 e0  	addi	a0, a0, -512
80202dd0: 23 3c a4 f8  	sd	a0, -104(s0)
80202dd4: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202dd8 <.Lpcrel_hi13>:
;             panic!("release");
80202dd8: 17 95 00 00  	auipc	a0, 9
80202ddc: 93 05 85 ec  	addi	a1, a0, -312
80202de0: 13 05 84 f8  	addi	a0, s0, -120
80202de4: 97 60 00 00  	auipc	ra, 6
80202de8: e7 80 60 c1  	jalr	-1002(ra)
80202dec: 00 00        	unimp	
;             match status {
80202dee: 05 e1        	bnez	a0, 0x80202e0e <.Lpcrel_hi18>

0000000080202df0 <.Lpcrel_hi16>:
;                 INCOMPLETE => unreachable!(),
80202df0: 17 85 00 00  	auipc	a0, 8
80202df4: 13 05 85 29  	addi	a0, a0, 664

0000000080202df8 <.Lpcrel_hi17>:
80202df8: 97 85 00 00  	auipc	a1, 8
80202dfc: 13 86 85 2b  	addi	a2, a1, 696
80202e00: 93 05 80 02  	li	a1, 40
80202e04: 97 60 00 00  	auipc	ra, 6
80202e08: e7 80 40 c2  	jalr	-988(ra)
80202e0c: 00 00        	unimp	

0000000080202e0e <.Lpcrel_hi18>:
;                 PANICKED => panic!("Once has panicked"),
80202e0e: 17 85 00 00  	auipc	a0, 8
80202e12: 13 05 25 1f  	addi	a0, a0, 498

0000000080202e16 <.Lpcrel_hi19>:
80202e16: 97 85 00 00  	auipc	a1, 8
80202e1a: 13 86 a5 25  	addi	a2, a1, 602
80202e1e: c5 45        	li	a1, 17
80202e20: 97 60 00 00  	auipc	ra, 6
80202e24: e7 80 80 c0  	jalr	-1016(ra)
80202e28: 00 00        	unimp	

0000000080202e2a <.Lpcrel_hi22>:
80202e2a: 17 95 00 00  	auipc	a0, 9
80202e2e: 13 05 65 e6  	addi	a0, a0, -410
80202e32: 23 34 a4 f8  	sd	a0, -120(s0)
80202e36: 05 45        	li	a0, 1
80202e38: 23 38 a4 f8  	sd	a0, -112(s0)
80202e3c: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202e40 <.Lpcrel_hi23>:
80202e40: 17 95 00 00  	auipc	a0, 9
80202e44: 13 05 85 d8  	addi	a0, a0, -632
80202e48: 23 3c a4 f8  	sd	a0, -104(s0)
80202e4c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e50 <.Lpcrel_hi24>:
;             panic!("release");
80202e50: 17 95 00 00  	auipc	a0, 9
80202e54: 93 05 05 e5  	addi	a1, a0, -432
80202e58: 13 05 84 f8  	addi	a0, s0, -120
80202e5c: 97 60 00 00  	auipc	ra, 6
80202e60: e7 80 e0 b9  	jalr	-1122(ra)
80202e64: 00 00        	unimp	

0000000080202e66 <.Lpcrel_hi27>:
80202e66: 17 95 00 00  	auipc	a0, 9
80202e6a: 13 05 a5 e2  	addi	a0, a0, -470
80202e6e: 23 34 a4 f8  	sd	a0, -120(s0)
80202e72: 05 45        	li	a0, 1
80202e74: 23 38 a4 f8  	sd	a0, -112(s0)
80202e78: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202e7c <.Lpcrel_hi28>:
80202e7c: 17 95 00 00  	auipc	a0, 9
80202e80: 13 05 c5 d4  	addi	a0, a0, -692
80202e84: 23 3c a4 f8  	sd	a0, -104(s0)
80202e88: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e8c <.Lpcrel_hi29>:
;             panic!("release");
80202e8c: 17 95 00 00  	auipc	a0, 9
80202e90: 93 05 45 e1  	addi	a1, a0, -492
80202e94: 13 05 84 f8  	addi	a0, s0, -120
80202e98: 97 60 00 00  	auipc	ra, 6
80202e9c: e7 80 20 b6  	jalr	-1182(ra)
80202ea0: 00 00        	unimp	

0000000080202ea2 <.Lpcrel_hi31>:
80202ea2: 17 95 00 00  	auipc	a0, 9
80202ea6: 13 05 65 c9  	addi	a0, a0, -874
80202eaa: 23 34 a4 f8  	sd	a0, -120(s0)
80202eae: 05 45        	li	a0, 1
80202eb0: 23 38 a4 f8  	sd	a0, -112(s0)
80202eb4: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202eb8 <.Lpcrel_hi32>:
80202eb8: 17 95 00 00  	auipc	a0, 9
80202ebc: 13 05 05 c4  	addi	a0, a0, -960
80202ec0: 23 3c a4 f8  	sd	a0, -104(s0)
80202ec4: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ec8 <.Lpcrel_hi33>:
;                 panic!("mappages: remap");
80202ec8: 17 95 00 00  	auipc	a0, 9
80202ecc: 93 05 05 c8  	addi	a1, a0, -896
80202ed0: 13 05 84 f8  	addi	a0, s0, -120
80202ed4: 97 60 00 00  	auipc	ra, 6
80202ed8: e7 80 60 b2  	jalr	-1242(ra)
80202edc: 00 00        	unimp	

0000000080202ede <.Lpcrel_hi34>:
80202ede: 17 95 00 00  	auipc	a0, 9
80202ee2: 13 05 a5 c5  	addi	a0, a0, -934
80202ee6: 23 34 a4 f8  	sd	a0, -120(s0)
80202eea: 05 45        	li	a0, 1
80202eec: 23 38 a4 f8  	sd	a0, -112(s0)
80202ef0: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202ef4 <.Lpcrel_hi35>:
80202ef4: 17 95 00 00  	auipc	a0, 9
80202ef8: 13 05 45 c0  	addi	a0, a0, -1020
80202efc: 23 3c a4 f8  	sd	a0, -104(s0)
80202f00: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202f04 <.Lpcrel_hi36>:
;                 panic!("mappages: remap");
80202f04: 17 95 00 00  	auipc	a0, 9
80202f08: 93 05 45 c4  	addi	a1, a0, -956
80202f0c: 13 05 84 f8  	addi	a0, s0, -120
80202f10: 97 60 00 00  	auipc	ra, 6
80202f14: e7 80 a0 ae  	jalr	-1302(ra)
80202f18: 00 00        	unimp	

0000000080202f1a <_ZN6kernel7process4proc8userinit17hd692e0c5cb7ab337E>:
; pub fn userinit() {
80202f1a: 1d 71        	addi	sp, sp, -96
80202f1c: 86 ec        	sd	ra, 88(sp)
80202f1e: a2 e8        	sd	s0, 80(sp)
80202f20: a6 e4        	sd	s1, 72(sp)
80202f22: ca e0        	sd	s2, 64(sp)
80202f24: 4e fc        	sd	s3, 56(sp)
80202f26: 52 f8        	sd	s4, 48(sp)
80202f28: 80 10        	addi	s0, sp, 96
80202f2a: 0f 00 30 03  	fence	rw, rw

0000000080202f2e <.Lpcrel_hi43>:
80202f2e: 17 65 14 00  	auipc	a0, 326
80202f32: 93 04 a5 f1  	addi	s1, a0, -230
80202f36: 88 68        	ld	a0, 16(s1)
80202f38: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202f3c: 21 e1        	bnez	a0, 0x80202f7c <.Lpcrel_hi43+0x4e>
80202f3e: 93 85 04 01  	addi	a1, s1, 16
80202f42: 05 49        	li	s2, 1
80202f44: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202f48: 15 e9        	bnez	a0, 0x80202f7c <.Lpcrel_hi43+0x4e>
80202f4a: 2f b6 25 1f  	sc.d.aqrl	a2, s2, (a1)
80202f4e: 7d fa        	bnez	a2, 0x80202f44 <.Lpcrel_hi43+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202f50: 23 30 b4 fa  	sd	a1, -96(s0)
;     pub static ref INITPROC: UPCell<*mut Proc> = UPCell::new(allocproc());
80202f54: 97 00 00 00  	auipc	ra, 0
80202f58: e7 80 40 ac  	jalr	-1340(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80202f5c: 23 b0 24 01  	sd	s2, 0(s1)
80202f60: 88 e4        	sd	a0, 8(s1)
;                 finish.panicked = false;
80202f62: 23 04 04 fa  	sb	zero, -88(s0)
80202f66: 0f 00 10 03  	fence	rw, w
80202f6a: 09 45        	li	a0, 2
80202f6c: 88 e8        	sd	a0, 16(s1)
80202f6e: 13 05 04 fa  	addi	a0, s0, -96
80202f72: 97 60 00 00  	auipc	ra, 6
80202f76: e7 80 60 8b  	jalr	-1866(ra)
80202f7a: 05 a0        	j	0x80202f9a <.Lpcrel_hi43+0x6c>
80202f7c: 85 45        	li	a1, 1
;             match status {
80202f7e: 63 1b b5 00  	bne	a0, a1, 0x80202f94 <.Lpcrel_hi43+0x66>
80202f82: 0f 00 00 01  	fence	w, 0
80202f86: 0f 00 30 03  	fence	rw, rw
80202f8a: 88 68        	ld	a0, 16(s1)
80202f8c: 0f 00 30 02  	fence	r, rw
;             match status {
80202f90: e3 09 b5 fe  	beq	a0, a1, 0x80202f82 <.Lpcrel_hi43+0x54>
80202f94: 89 45        	li	a1, 2
;             match status {
80202f96: 63 15 b5 18  	bne	a0, a1, 0x80203120 <.Lpcrel_hi54+0x18>
;     let p = unsafe { &mut *(*INITPROC.get_mut()) };
80202f9a: 83 b9 84 00  	ld	s3, 8(s1)
;     p.uvm.uvmfirst(&INITCODE as *const u8, INITCODE.len());
80202f9e: 13 89 09 14  	addi	s2, s3, 320
;         let mem = kalloc();
80202fa2: 97 50 00 00  	auipc	ra, 5
80202fa6: e7 80 40 b5  	jalr	-1196(ra)
80202faa: aa 84        	mv	s1, a0
80202fac: 05 66        	lui	a2, 1
80202fae: 05 6a        	lui	s4, 1
80202fb0: 81 45        	li	a1, 0
80202fb2: 97 70 00 00  	auipc	ra, 7
80202fb6: e7 80 60 47  	jalr	1142(ra)
;             let pte = self.walk(a, true);
80202fba: 05 46        	li	a2, 1
80202fbc: 4a 85        	mv	a0, s2
80202fbe: 81 45        	li	a1, 0
80202fc0: 97 40 00 00  	auipc	ra, 4
80202fc4: e7 80 60 20  	jalr	518(ra)
80202fc8: 19 c9        	beqz	a0, 0x80202fde <.Lpcrel_hi51>
;             if unsafe { *pte & PTE_V } != 0 {
80202fca: 83 45 05 00  	lbu	a1, 0(a0)
80202fce: 85 89        	andi	a1, a1, 1
80202fd0: 63 95 05 1c  	bnez	a1, 0x8020319a <.Lpcrel_hi48>
;     (pa >> 12) << 10
80202fd4: 93 d5 c4 00  	srli	a1, s1, 12
80202fd8: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202fda: fd 05        	addi	a1, a1, 31
80202fdc: 0c e1        	sd	a1, 0(a0)

0000000080202fde <.Lpcrel_hi51>:
80202fde: 17 85 00 00  	auipc	a0, 8
80202fe2: 93 05 a5 13  	addi	a1, a0, 314
80202fe6: 13 06 70 02  	li	a2, 39
80202fea: 26 85        	mv	a0, s1
80202fec: 97 70 00 00  	auipc	ra, 7
80202ff0: e7 80 40 44  	jalr	1092(ra)
;     let tf = unsafe { &mut *p.trapframe };
80202ff4: 03 b5 89 14  	ld	a0, 328(s3)
;     tf.epc = 0;
80202ff8: 23 3c 05 10  	sd	zero, 280(a0)
;     tf.x[2] = PGSIZE; // sp
80202ffc: 23 38 45 01  	sd	s4, 16(a0)
80203000: 21 45        	li	a0, 8
80203002: 85 45        	li	a1, 1
80203004: 97 50 00 00  	auipc	ra, 5
80203008: e7 80 00 2d  	jalr	720(ra)
8020300c: 63 00 05 18  	beqz	a0, 0x8020318c <.Lpcrel_hi57+0xa>
80203010: aa 84        	mv	s1, a0
80203012: 13 05 50 06  	li	a0, 101
80203016: a3 83 a4 00  	sb	a0, 7(s1)
8020301a: 13 05 40 06  	li	a0, 100
8020301e: 23 83 a4 00  	sb	a0, 6(s1)
80203022: 13 05 f0 06  	li	a0, 111

0000000080203026 <.Lpcrel_hi52>:
80203026: 97 f5 0b 00  	auipc	a1, 191
8020302a: 83 b5 25 16  	ld	a1, 354(a1)
8020302e: a3 82 a4 00  	sb	a0, 5(s1)
80203032: 13 05 30 06  	li	a0, 99
80203036: 23 82 a4 00  	sb	a0, 4(s1)
8020303a: 23 80 b4 00  	sb	a1, 0(s1)
8020303e: 13 d5 85 01  	srli	a0, a1, 24
80203042: a3 81 a4 00  	sb	a0, 3(s1)
80203046: 13 d5 05 01  	srli	a0, a1, 16
8020304a: 23 81 a4 00  	sb	a0, 2(s1)
8020304e: a1 81        	srli	a1, a1, 8
80203050: a3 80 b4 00  	sb	a1, 1(s1)
80203054: 83 b5 09 16  	ld	a1, 352(s3)
80203058: 81 c9        	beqz	a1, 0x80203068 <.Lpcrel_hi52+0x42>
8020305a: 03 b5 89 15  	ld	a0, 344(s3)
8020305e: 05 46        	li	a2, 1
80203060: 97 50 00 00  	auipc	ra, 5
80203064: e7 80 c0 27  	jalr	636(ra)
;     p.name = String::from("initcode");
80203068: 23 bc 99 14  	sd	s1, 344(s3)
8020306c: 21 45        	li	a0, 8
8020306e: 23 b0 a9 16  	sd	a0, 352(s3)
80203072: 23 b4 a9 16  	sd	a0, 360(s3)
80203076: 0d 45        	li	a0, 3
;     p.state = ProcState::Runable;
80203078: 23 88 a9 16  	sb	a0, 368(s3)
8020307c: 03 85 89 09  	lb	a0, 152(s3)
80203080: 71 cd        	beqz	a0, 0x8020315c <.Lpcrel_hi55>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203082: 03 b9 09 09  	ld	s2, 144(s3)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203086: 92 84        	mv	s1, tp

0000000080203088 <.Lpcrel_hi53>:
;         self.0.call_once(builder)
80203088: 17 65 14 00  	auipc	a0, 326
8020308c: 13 05 05 df  	addi	a0, a0, -528
80203090: 97 f0 ff ff  	auipc	ra, 1048575
80203094: e7 80 00 f7  	jalr	-144(ra)
80203098: 93 05 00 04  	li	a1, 64
8020309c: 63 f6 b4 06  	bgeu	s1, a1, 0x80203108 <.Lpcrel_hi54>
802030a0: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
802030a4: b3 85 b4 02  	mul	a1, s1, a1
802030a8: 2e 95        	add	a0, a0, a1
802030aa: 63 19 a9 0a  	bne	s2, a0, 0x8020315c <.Lpcrel_hi55>
;         self.cpu = null_mut();
802030ae: 23 b8 09 08  	sd	zero, 144(s3)
802030b2: 0f 00 30 03  	fence	rw, rw
802030b6: 0f 00 10 03  	fence	rw, w
802030ba: 23 8c 09 08  	sb	zero, 152(s3)
;         pop_off();
802030be: 97 40 00 00  	auipc	ra, 4
802030c2: e7 80 00 6d  	jalr	1744(ra)

00000000802030c6 <.Lpcrel_hi58>:
802030c6: 17 85 00 00  	auipc	a0, 8
802030ca: 13 05 25 09  	addi	a0, a0, 146
802030ce: 23 30 a4 fa  	sd	a0, -96(s0)
802030d2: 05 45        	li	a0, 1
802030d4: 23 34 a4 fa  	sd	a0, -88(s0)
802030d8: 23 30 04 fc  	sd	zero, -64(s0)

00000000802030dc <.Lpcrel_hi59>:
802030dc: 17 85 00 00  	auipc	a0, 8
802030e0: 13 05 c5 03  	addi	a0, a0, 60
802030e4: 23 38 a4 fa  	sd	a0, -80(s0)
802030e8: 23 3c 04 fa  	sd	zero, -72(s0)
;     println!("userinit success!");
802030ec: 13 05 04 fa  	addi	a0, s0, -96
802030f0: 97 40 00 00  	auipc	ra, 4
802030f4: e7 80 20 40  	jalr	1026(ra)
; }
802030f8: e6 60        	ld	ra, 88(sp)
802030fa: 46 64        	ld	s0, 80(sp)
802030fc: a6 64        	ld	s1, 72(sp)
802030fe: 06 69        	ld	s2, 64(sp)
80203100: e2 79        	ld	s3, 56(sp)
80203102: 42 7a        	ld	s4, 48(sp)
80203104: 25 61        	addi	sp, sp, 96
80203106: 82 80        	ret

0000000080203108 <.Lpcrel_hi54>:
; 	&mut (CPUS.get_mut()[id])
80203108: 17 85 00 00  	auipc	a0, 8
8020310c: 13 06 05 2d  	addi	a2, a0, 720
80203110: 93 05 00 04  	li	a1, 64
80203114: 26 85        	mv	a0, s1
80203116: 97 60 00 00  	auipc	ra, 6
8020311a: e7 80 e0 93  	jalr	-1730(ra)
8020311e: 00 00        	unimp	
;             match status {
80203120: 05 e1        	bnez	a0, 0x80203140 <.Lpcrel_hi46>

0000000080203122 <.Lpcrel_hi44>:
;                 INCOMPLETE => unreachable!(),
80203122: 17 85 00 00  	auipc	a0, 8
80203126: 13 05 65 f6  	addi	a0, a0, -154

000000008020312a <.Lpcrel_hi45>:
8020312a: 97 85 00 00  	auipc	a1, 8
8020312e: 13 86 65 f8  	addi	a2, a1, -122
80203132: 93 05 80 02  	li	a1, 40
80203136: 97 60 00 00  	auipc	ra, 6
8020313a: e7 80 20 8f  	jalr	-1806(ra)
8020313e: 00 00        	unimp	

0000000080203140 <.Lpcrel_hi46>:
;                 PANICKED => panic!("Once has panicked"),
80203140: 17 85 00 00  	auipc	a0, 8
80203144: 13 05 05 ec  	addi	a0, a0, -320

0000000080203148 <.Lpcrel_hi47>:
80203148: 97 85 00 00  	auipc	a1, 8
8020314c: 13 86 85 f2  	addi	a2, a1, -216
80203150: c5 45        	li	a1, 17
80203152: 97 60 00 00  	auipc	ra, 6
80203156: e7 80 60 8d  	jalr	-1834(ra)
8020315a: 00 00        	unimp	

000000008020315c <.Lpcrel_hi55>:
8020315c: 17 95 00 00  	auipc	a0, 9
80203160: 13 05 45 b3  	addi	a0, a0, -1228
80203164: 23 30 a4 fa  	sd	a0, -96(s0)
80203168: 05 45        	li	a0, 1
8020316a: 23 34 a4 fa  	sd	a0, -88(s0)
8020316e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203172 <.Lpcrel_hi56>:
80203172: 17 95 00 00  	auipc	a0, 9
80203176: 13 05 65 a5  	addi	a0, a0, -1450
8020317a: 23 38 a4 fa  	sd	a0, -80(s0)
8020317e: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203182 <.Lpcrel_hi57>:
;             panic!("release");
80203182: 17 95 00 00  	auipc	a0, 9
80203186: 93 05 e5 b1  	addi	a1, a0, -1250
8020318a: 3d a8        	j	0x802031c8 <.Lpcrel_hi50+0x8>
8020318c: 05 45        	li	a0, 1
8020318e: a1 45        	li	a1, 8
80203190: 97 50 00 00  	auipc	ra, 5
80203194: e7 80 60 7f  	jalr	2038(ra)
80203198: 00 00        	unimp	

000000008020319a <.Lpcrel_hi48>:
8020319a: 17 95 00 00  	auipc	a0, 9
8020319e: 13 05 e5 99  	addi	a0, a0, -1634
802031a2: 23 30 a4 fa  	sd	a0, -96(s0)
802031a6: 05 45        	li	a0, 1
802031a8: 23 34 a4 fa  	sd	a0, -88(s0)
802031ac: 23 30 04 fc  	sd	zero, -64(s0)

00000000802031b0 <.Lpcrel_hi49>:
802031b0: 17 95 00 00  	auipc	a0, 9
802031b4: 13 05 85 94  	addi	a0, a0, -1720
802031b8: 23 38 a4 fa  	sd	a0, -80(s0)
802031bc: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802031c0 <.Lpcrel_hi50>:
;                 panic!("mappages: remap");
802031c0: 17 95 00 00  	auipc	a0, 9
802031c4: 93 05 85 98  	addi	a1, a0, -1656
802031c8: 13 05 04 fa  	addi	a0, s0, -96
802031cc: 97 60 00 00  	auipc	ra, 6
802031d0: e7 80 e0 82  	jalr	-2002(ra)
802031d4: 00 00        	unimp	

00000000802031d6 <scheduler>:
; pub fn scheduler() {
802031d6: 13 01 01 81  	addi	sp, sp, -2032
802031da: 23 34 11 7e  	sd	ra, 2024(sp)
802031de: 23 30 81 7e  	sd	s0, 2016(sp)
802031e2: 23 3c 91 7c  	sd	s1, 2008(sp)
802031e6: 23 38 21 7d  	sd	s2, 2000(sp)
802031ea: 23 34 31 7d  	sd	s3, 1992(sp)
802031ee: 23 30 41 7d  	sd	s4, 1984(sp)
802031f2: 23 3c 51 7b  	sd	s5, 1976(sp)
802031f6: 23 38 61 7b  	sd	s6, 1968(sp)
802031fa: 23 34 71 7b  	sd	s7, 1960(sp)
802031fe: 23 30 81 7b  	sd	s8, 1952(sp)
80203202: 23 3c 91 79  	sd	s9, 1944(sp)
80203206: 23 38 a1 79  	sd	s10, 1936(sp)
8020320a: 23 34 b1 79  	sd	s11, 1928(sp)
8020320e: 13 04 01 7f  	addi	s0, sp, 2032
80203212: 09 65        	lui	a0, 2
80203214: 1b 05 05 c3  	addiw	a0, a0, -976
80203218: 33 01 a1 40  	sub	sp, sp, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020321c: 12 89        	mv	s2, tp

000000008020321e <.Lpcrel_hi60>:
;         self.0.call_once(builder)
8020321e: 17 65 14 00  	auipc	a0, 326
80203222: 93 04 a5 c5  	addi	s1, a0, -934
80203226: 26 85        	mv	a0, s1
80203228: 97 f0 ff ff  	auipc	ra, 1048575
8020322c: e7 80 80 dd  	jalr	-552(ra)
80203230: 93 0b 00 04  	li	s7, 64
; 	&mut (CPUS.get_mut()[id])
80203234: 63 64 79 01  	bltu	s2, s7, 0x8020323c <.Lpcrel_hi60+0x1e>
80203238: 6f 20 80 6c  	j	0x80205900 <.Lpcrel_hi61>
8020323c: 13 0c 80 08  	li	s8, 136
; 	&mut (CPUS.get_mut()[id])
80203240: b3 05 89 03  	mul	a1, s2, s8
80203244: 33 09 b5 00  	add	s2, a0, a1

0000000080203248 <.Lpcrel_hi62>:
;         self.0.call_once(builder)
80203248: 17 05 14 00  	auipc	a0, 320
8020324c: 13 05 05 df  	addi	a0, a0, -528
80203250: 97 f0 ff ff  	auipc	ra, 1048575
80203254: e7 80 20 43  	jalr	1074(ra)
80203258: 89 65        	lui	a1, 2
8020325a: b3 05 b4 40  	sub	a1, s0, a1
8020325e: 23 b8 a5 d6  	sd	a0, -656(a1)
80203262: c5 46        	li	a3, 17
80203264: 93 95 76 00  	slli	a1, a3, 7
80203268: 09 65        	lui	a0, 2
8020326a: 1b 05 85 27  	addiw	a0, a0, 632
8020326e: 33 05 a4 40  	sub	a0, s0, a0
80203272: aa 95        	add	a1, a1, a0
80203274: 09 66        	lui	a2, 2
80203276: 33 06 c4 40  	sub	a2, s0, a2
8020327a: 23 34 b6 d6  	sd	a1, -664(a2)
8020327e: 85 65        	lui	a1, 1
80203280: 1b 86 85 90  	addiw	a2, a1, -1784
80203284: 2a 96        	add	a2, a2, a0
80203286: 09 67        	lui	a4, 2
80203288: 33 07 e4 40  	sub	a4, s0, a4
8020328c: 23 30 c7 d6  	sd	a2, -672(a4)
80203290: 1b 86 05 99  	addiw	a2, a1, -1648
80203294: 2a 96        	add	a2, a2, a0
80203296: 09 67        	lui	a4, 2
80203298: 33 07 e4 40  	sub	a4, s0, a4
8020329c: 23 3c c7 d4  	sd	a2, -680(a4)
802032a0: 1b 86 85 a1  	addiw	a2, a1, -1512
802032a4: 2a 96        	add	a2, a2, a0
802032a6: 09 67        	lui	a4, 2
802032a8: 33 07 e4 40  	sub	a4, s0, a4
802032ac: 23 38 c7 d4  	sd	a2, -688(a4)
802032b0: 1b 86 05 aa  	addiw	a2, a1, -1376
802032b4: 2a 96        	add	a2, a2, a0
802032b6: 09 67        	lui	a4, 2
802032b8: 33 07 e4 40  	sub	a4, s0, a4
802032bc: 23 34 c7 d4  	sd	a2, -696(a4)
802032c0: 1b 86 85 b2  	addiw	a2, a1, -1240
802032c4: 2a 96        	add	a2, a2, a0
802032c6: 09 67        	lui	a4, 2
802032c8: 33 07 e4 40  	sub	a4, s0, a4
802032cc: 23 30 c7 d4  	sd	a2, -704(a4)
802032d0: 1b 86 05 bb  	addiw	a2, a1, -1104
802032d4: 2a 96        	add	a2, a2, a0
802032d6: 09 67        	lui	a4, 2
802032d8: 33 07 e4 40  	sub	a4, s0, a4
802032dc: 23 3c c7 d2  	sd	a2, -712(a4)
802032e0: 1b 86 85 c3  	addiw	a2, a1, -968
802032e4: 2a 96        	add	a2, a2, a0
802032e6: 09 67        	lui	a4, 2
802032e8: 33 07 e4 40  	sub	a4, s0, a4
802032ec: 23 38 c7 d2  	sd	a2, -720(a4)
802032f0: 1b 86 05 cc  	addiw	a2, a1, -832
802032f4: 2a 96        	add	a2, a2, a0
802032f6: 09 67        	lui	a4, 2
802032f8: 33 07 e4 40  	sub	a4, s0, a4
802032fc: 23 34 c7 d2  	sd	a2, -728(a4)
80203300: 1b 86 85 d4  	addiw	a2, a1, -696
80203304: 2a 96        	add	a2, a2, a0
80203306: 09 67        	lui	a4, 2
80203308: 33 07 e4 40  	sub	a4, s0, a4
8020330c: 23 30 c7 d2  	sd	a2, -736(a4)
80203310: 1b 86 05 dd  	addiw	a2, a1, -560
80203314: 2a 96        	add	a2, a2, a0
80203316: 09 67        	lui	a4, 2
80203318: 33 07 e4 40  	sub	a4, s0, a4
8020331c: 23 3c c7 d0  	sd	a2, -744(a4)
80203320: 1b 86 85 e5  	addiw	a2, a1, -424
80203324: 2a 96        	add	a2, a2, a0
80203326: 09 67        	lui	a4, 2
80203328: 33 07 e4 40  	sub	a4, s0, a4
8020332c: 23 38 c7 d0  	sd	a2, -752(a4)
80203330: 1b 86 05 ee  	addiw	a2, a1, -288
80203334: 2a 96        	add	a2, a2, a0
80203336: 09 67        	lui	a4, 2
80203338: 33 07 e4 40  	sub	a4, s0, a4
8020333c: 23 34 c7 d0  	sd	a2, -760(a4)
80203340: 1b 86 85 f6  	addiw	a2, a1, -152
80203344: 2a 96        	add	a2, a2, a0
80203346: 09 67        	lui	a4, 2
80203348: 33 07 e4 40  	sub	a4, s0, a4
8020334c: 23 30 c7 d0  	sd	a2, -768(a4)
80203350: 1b 86 05 ff  	addiw	a2, a1, -16
80203354: 2a 96        	add	a2, a2, a0
80203356: 09 67        	lui	a4, 2
80203358: 33 07 e4 40  	sub	a4, s0, a4
8020335c: 23 3c c7 ce  	sd	a2, -776(a4)
80203360: 1b 86 85 07  	addiw	a2, a1, 120
80203364: 2a 96        	add	a2, a2, a0
80203366: 09 67        	lui	a4, 2
80203368: 33 07 e4 40  	sub	a4, s0, a4
8020336c: 23 38 c7 ce  	sd	a2, -784(a4)
80203370: 13 96 86 00  	slli	a2, a3, 8
80203374: 2a 96        	add	a2, a2, a0
80203376: 89 66        	lui	a3, 2
80203378: b3 06 d4 40  	sub	a3, s0, a3
8020337c: 23 b4 c6 ce  	sd	a2, -792(a3)
80203380: 1b 86 85 18  	addiw	a2, a1, 392
80203384: 2a 96        	add	a2, a2, a0
80203386: 89 66        	lui	a3, 2
80203388: b3 06 d4 40  	sub	a3, s0, a3
8020338c: 23 b0 c6 ce  	sd	a2, -800(a3)
80203390: 1b 86 05 21  	addiw	a2, a1, 528
80203394: 2a 96        	add	a2, a2, a0
80203396: 89 66        	lui	a3, 2
80203398: b3 06 d4 40  	sub	a3, s0, a3
8020339c: 23 bc c6 cc  	sd	a2, -808(a3)
802033a0: 1b 86 85 29  	addiw	a2, a1, 664
802033a4: 2a 96        	add	a2, a2, a0
802033a6: 89 66        	lui	a3, 2
802033a8: b3 06 d4 40  	sub	a3, s0, a3
802033ac: 23 b8 c6 cc  	sd	a2, -816(a3)
802033b0: 1b 86 05 32  	addiw	a2, a1, 800
802033b4: 2a 96        	add	a2, a2, a0
802033b6: 89 66        	lui	a3, 2
802033b8: b3 06 d4 40  	sub	a3, s0, a3
802033bc: 23 b4 c6 cc  	sd	a2, -824(a3)
802033c0: 1b 86 85 3a  	addiw	a2, a1, 936
802033c4: 2a 96        	add	a2, a2, a0
802033c6: 89 66        	lui	a3, 2
802033c8: b3 06 d4 40  	sub	a3, s0, a3
802033cc: 23 b0 c6 cc  	sd	a2, -832(a3)
802033d0: 1b 86 05 43  	addiw	a2, a1, 1072
802033d4: 2a 96        	add	a2, a2, a0
802033d6: 89 66        	lui	a3, 2
802033d8: b3 06 d4 40  	sub	a3, s0, a3
802033dc: 23 bc c6 ca  	sd	a2, -840(a3)
802033e0: 1b 86 85 4b  	addiw	a2, a1, 1208
802033e4: 2a 96        	add	a2, a2, a0
802033e6: 89 66        	lui	a3, 2
802033e8: b3 06 d4 40  	sub	a3, s0, a3
802033ec: 23 b8 c6 ca  	sd	a2, -848(a3)
802033f0: 1b 86 05 54  	addiw	a2, a1, 1344
802033f4: 2a 96        	add	a2, a2, a0
802033f6: 89 66        	lui	a3, 2
802033f8: b3 06 d4 40  	sub	a3, s0, a3
802033fc: 23 b4 c6 ca  	sd	a2, -856(a3)
80203400: 1b 86 85 5c  	addiw	a2, a1, 1480
80203404: 2a 96        	add	a2, a2, a0
80203406: 89 66        	lui	a3, 2
80203408: b3 06 d4 40  	sub	a3, s0, a3
8020340c: 23 b0 c6 ca  	sd	a2, -864(a3)
80203410: 1b 86 05 65  	addiw	a2, a1, 1616
80203414: 2a 96        	add	a2, a2, a0
80203416: 89 66        	lui	a3, 2
80203418: b3 06 d4 40  	sub	a3, s0, a3
8020341c: 23 bc c6 c8  	sd	a2, -872(a3)
80203420: 1b 86 85 6d  	addiw	a2, a1, 1752
80203424: 2a 96        	add	a2, a2, a0
80203426: 89 66        	lui	a3, 2
80203428: b3 06 d4 40  	sub	a3, s0, a3
8020342c: 23 b8 c6 c8  	sd	a2, -880(a3)
80203430: 1b 86 05 76  	addiw	a2, a1, 1888
80203434: 2a 96        	add	a2, a2, a0
80203436: 89 66        	lui	a3, 2
80203438: b3 06 d4 40  	sub	a3, s0, a3
8020343c: 23 b4 c6 c8  	sd	a2, -888(a3)
80203440: 9b 85 85 7e  	addiw	a1, a1, 2024
80203444: aa 95        	add	a1, a1, a0
80203446: 09 66        	lui	a2, 2
80203448: 33 06 c4 40  	sub	a2, s0, a2
8020344c: 23 30 b6 c8  	sd	a1, -896(a2)
80203450: 89 65        	lui	a1, 2
80203452: 1b 86 05 87  	addiw	a2, a1, -1936
80203456: 2a 96        	add	a2, a2, a0
80203458: 89 66        	lui	a3, 2
8020345a: b3 06 d4 40  	sub	a3, s0, a3
8020345e: 23 bc c6 c6  	sd	a2, -904(a3)
80203462: 1b 86 85 8f  	addiw	a2, a1, -1800
80203466: 2a 96        	add	a2, a2, a0
80203468: 89 66        	lui	a3, 2
8020346a: b3 06 d4 40  	sub	a3, s0, a3
8020346e: 23 b8 c6 c6  	sd	a2, -912(a3)
80203472: 1b 86 05 98  	addiw	a2, a1, -1664
80203476: 2a 96        	add	a2, a2, a0
80203478: 89 66        	lui	a3, 2
8020347a: b3 06 d4 40  	sub	a3, s0, a3
8020347e: 23 b4 c6 c6  	sd	a2, -920(a3)
80203482: 1b 86 85 a0  	addiw	a2, a1, -1528
80203486: 2a 96        	add	a2, a2, a0
80203488: 89 66        	lui	a3, 2
8020348a: b3 06 d4 40  	sub	a3, s0, a3
8020348e: 23 b0 c6 c6  	sd	a2, -928(a3)
80203492: 1b 86 05 a9  	addiw	a2, a1, -1392
80203496: 2a 96        	add	a2, a2, a0
80203498: 89 66        	lui	a3, 2
8020349a: b3 06 d4 40  	sub	a3, s0, a3
8020349e: 23 bc c6 c4  	sd	a2, -936(a3)
802034a2: 1b 86 85 b1  	addiw	a2, a1, -1256
802034a6: 2a 96        	add	a2, a2, a0
802034a8: 89 66        	lui	a3, 2
802034aa: b3 06 d4 40  	sub	a3, s0, a3
802034ae: 23 b8 c6 c4  	sd	a2, -944(a3)
802034b2: 1b 86 05 ba  	addiw	a2, a1, -1120
802034b6: 2a 96        	add	a2, a2, a0
802034b8: 89 66        	lui	a3, 2
802034ba: b3 06 d4 40  	sub	a3, s0, a3
802034be: 23 b4 c6 c4  	sd	a2, -952(a3)
802034c2: 1b 86 85 c2  	addiw	a2, a1, -984
802034c6: 2a 96        	add	a2, a2, a0
802034c8: 89 66        	lui	a3, 2
802034ca: b3 06 d4 40  	sub	a3, s0, a3
802034ce: 23 b0 c6 c4  	sd	a2, -960(a3)
802034d2: 1b 86 05 cb  	addiw	a2, a1, -848
802034d6: 2a 96        	add	a2, a2, a0
802034d8: 89 66        	lui	a3, 2
802034da: b3 06 d4 40  	sub	a3, s0, a3
802034de: 23 bc c6 c2  	sd	a2, -968(a3)
802034e2: 1b 86 85 d3  	addiw	a2, a1, -712
802034e6: 2a 96        	add	a2, a2, a0
802034e8: 89 66        	lui	a3, 2
802034ea: b3 06 d4 40  	sub	a3, s0, a3
802034ee: 23 b8 c6 c2  	sd	a2, -976(a3)
802034f2: 1b 86 05 dc  	addiw	a2, a1, -576
802034f6: 2a 96        	add	a2, a2, a0
802034f8: 89 66        	lui	a3, 2
802034fa: b3 06 d4 40  	sub	a3, s0, a3
802034fe: 23 b4 c6 c2  	sd	a2, -984(a3)
80203502: 1b 86 85 e4  	addiw	a2, a1, -440
80203506: 2a 96        	add	a2, a2, a0
80203508: 89 66        	lui	a3, 2
8020350a: b3 06 d4 40  	sub	a3, s0, a3
8020350e: 23 b0 c6 c2  	sd	a2, -992(a3)
80203512: 1b 86 05 ed  	addiw	a2, a1, -304
80203516: 2a 96        	add	a2, a2, a0
80203518: 89 66        	lui	a3, 2
8020351a: b3 06 d4 40  	sub	a3, s0, a3
8020351e: 23 bc c6 c0  	sd	a2, -1000(a3)
80203522: 1b 86 85 f5  	addiw	a2, a1, -168
80203526: 2a 96        	add	a2, a2, a0
80203528: 89 66        	lui	a3, 2
8020352a: b3 06 d4 40  	sub	a3, s0, a3
8020352e: 23 b8 c6 c0  	sd	a2, -1008(a3)
80203532: 1b 86 05 fe  	addiw	a2, a1, -32
80203536: 2a 96        	add	a2, a2, a0
80203538: 89 66        	lui	a3, 2
8020353a: b3 06 d4 40  	sub	a3, s0, a3
8020353e: 23 b4 c6 c0  	sd	a2, -1016(a3)
80203542: 1b 86 85 06  	addiw	a2, a1, 104
80203546: 2a 96        	add	a2, a2, a0
80203548: 89 66        	lui	a3, 2
8020354a: b3 06 d4 40  	sub	a3, s0, a3
8020354e: 23 b0 c6 c0  	sd	a2, -1024(a3)
80203552: 1b 86 05 0f  	addiw	a2, a1, 240
80203556: 2a 96        	add	a2, a2, a0
80203558: 89 66        	lui	a3, 2
8020355a: b3 06 d4 40  	sub	a3, s0, a3
8020355e: 23 bc c6 be  	sd	a2, -1032(a3)
80203562: 9b 85 85 17  	addiw	a1, a1, 376
80203566: 2e 95        	add	a0, a0, a1
;     c.proc = null_mut();
80203568: 89 65        	lui	a1, 2
8020356a: b3 05 b4 40  	sub	a1, s0, a1
8020356e: 23 b8 a5 be  	sd	a0, -1040(a1)
80203572: 23 30 09 00  	sd	zero, 0(s2)
80203576: 09 65        	lui	a0, 2
80203578: 33 05 a4 40  	sub	a0, s0, a0
8020357c: 23 34 25 bf  	sd	s2, -1048(a0)
80203580: 21 09        	addi	s2, s2, 8
80203582: 09 65        	lui	a0, 2
80203584: 33 05 a4 40  	sub	a0, s0, a0
80203588: 23 30 25 bf  	sd	s2, -1056(a0)
8020358c: 09 4d        	li	s10, 2
8020358e: 85 4d        	li	s11, 1
80203590: 93 09 f0 0f  	li	s3, 255
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80203594: 73 20 0d 10  	csrs	sstatus, s10
80203598: 01 4a        	li	s4, 0
8020359a: 19 a0        	j	0x802035a0 <.Lpcrel_hi62+0x358>
8020359c: e3 0c 7a ff  	beq	s4, s7, 0x80203594 <.Lpcrel_hi62+0x34c>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802035a0: 73 29 00 10  	csrr	s2, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802035a4: 73 30 0d 10  	csrc	sstatus, s10
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802035a8: 12 8b        	mv	s6, tp
802035aa: 0f 00 30 03  	fence	rw, rw
802035ae: 88 60        	ld	a0, 0(s1)
802035b0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802035b4: 63 16 05 66  	bnez	a0, 0x80203c20 <.Lpcrel_hi62+0x9d8>
802035b8: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802035bc: 63 12 05 66  	bnez	a0, 0x80203c20 <.Lpcrel_hi62+0x9d8>
802035c0: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
802035c4: f5 f9        	bnez	a1, 0x802035b8 <.Lpcrel_hi62+0x370>
802035c6: 09 65        	lui	a0, 2
802035c8: 1b 05 85 28  	addiw	a0, a0, 648
802035cc: b3 0a a4 40  	sub	s5, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802035d0: 23 b0 9a 00  	sd	s1, 0(s5)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
802035d4: 09 65        	lui	a0, 2
802035d6: 1b 05 85 27  	addiw	a0, a0, 632
802035da: 33 05 a4 40  	sub	a0, s0, a0
802035de: 13 06 10 08  	li	a2, 129
802035e2: 81 45        	li	a1, 0
802035e4: 97 70 00 00  	auipc	ra, 7
802035e8: e7 80 40 e4  	jalr	-444(ra)
802035ec: 13 06 10 08  	li	a2, 129
802035f0: 09 65        	lui	a0, 2
802035f2: 1b 05 05 1f  	addiw	a0, a0, 496
802035f6: 33 05 a4 40  	sub	a0, s0, a0
802035fa: 81 45        	li	a1, 0
802035fc: 97 70 00 00  	auipc	ra, 7
80203600: e7 80 c0 e2  	jalr	-468(ra)
80203604: 13 06 10 08  	li	a2, 129
80203608: 09 65        	lui	a0, 2
8020360a: 1b 05 85 16  	addiw	a0, a0, 360
8020360e: 33 05 a4 40  	sub	a0, s0, a0
80203612: 81 45        	li	a1, 0
80203614: 97 70 00 00  	auipc	ra, 7
80203618: e7 80 40 e1  	jalr	-492(ra)
8020361c: 13 06 10 08  	li	a2, 129
80203620: 09 65        	lui	a0, 2
80203622: 1b 05 05 0e  	addiw	a0, a0, 224
80203626: 33 05 a4 40  	sub	a0, s0, a0
8020362a: 81 45        	li	a1, 0
8020362c: 97 70 00 00  	auipc	ra, 7
80203630: e7 80 c0 df  	jalr	-516(ra)
80203634: 13 06 10 08  	li	a2, 129
80203638: 09 65        	lui	a0, 2
8020363a: 1b 05 85 05  	addiw	a0, a0, 88
8020363e: 33 05 a4 40  	sub	a0, s0, a0
80203642: 81 45        	li	a1, 0
80203644: 97 70 00 00  	auipc	ra, 7
80203648: e7 80 40 de  	jalr	-540(ra)
8020364c: 13 06 10 08  	li	a2, 129
80203650: 09 65        	lui	a0, 2
80203652: 1b 05 05 fd  	addiw	a0, a0, -48
80203656: 33 05 a4 40  	sub	a0, s0, a0
8020365a: 81 45        	li	a1, 0
8020365c: 97 70 00 00  	auipc	ra, 7
80203660: e7 80 c0 dc  	jalr	-564(ra)
80203664: 13 06 10 08  	li	a2, 129
80203668: 09 65        	lui	a0, 2
8020366a: 1b 05 85 f4  	addiw	a0, a0, -184
8020366e: 33 05 a4 40  	sub	a0, s0, a0
80203672: 81 45        	li	a1, 0
80203674: 97 70 00 00  	auipc	ra, 7
80203678: e7 80 40 db  	jalr	-588(ra)
8020367c: 13 06 10 08  	li	a2, 129
80203680: 09 65        	lui	a0, 2
80203682: 1b 05 05 ec  	addiw	a0, a0, -320
80203686: 33 05 a4 40  	sub	a0, s0, a0
8020368a: 81 45        	li	a1, 0
8020368c: 97 70 00 00  	auipc	ra, 7
80203690: e7 80 c0 d9  	jalr	-612(ra)
80203694: 13 06 10 08  	li	a2, 129
80203698: 09 65        	lui	a0, 2
8020369a: 1b 05 85 e3  	addiw	a0, a0, -456
8020369e: 33 05 a4 40  	sub	a0, s0, a0
802036a2: 81 45        	li	a1, 0
802036a4: 97 70 00 00  	auipc	ra, 7
802036a8: e7 80 40 d8  	jalr	-636(ra)
802036ac: 13 06 10 08  	li	a2, 129
802036b0: 09 65        	lui	a0, 2
802036b2: 1b 05 05 db  	addiw	a0, a0, -592
802036b6: 33 05 a4 40  	sub	a0, s0, a0
802036ba: 81 45        	li	a1, 0
802036bc: 97 70 00 00  	auipc	ra, 7
802036c0: e7 80 c0 d6  	jalr	-660(ra)
802036c4: 13 06 10 08  	li	a2, 129
802036c8: 09 65        	lui	a0, 2
802036ca: 1b 05 85 d2  	addiw	a0, a0, -728
802036ce: 33 05 a4 40  	sub	a0, s0, a0
802036d2: 81 45        	li	a1, 0
802036d4: 97 70 00 00  	auipc	ra, 7
802036d8: e7 80 40 d5  	jalr	-684(ra)
802036dc: 13 06 10 08  	li	a2, 129
802036e0: 09 65        	lui	a0, 2
802036e2: 1b 05 05 ca  	addiw	a0, a0, -864
802036e6: 33 05 a4 40  	sub	a0, s0, a0
802036ea: 81 45        	li	a1, 0
802036ec: 97 70 00 00  	auipc	ra, 7
802036f0: e7 80 c0 d3  	jalr	-708(ra)
802036f4: 13 06 10 08  	li	a2, 129
802036f8: 09 65        	lui	a0, 2
802036fa: 1b 05 85 c1  	addiw	a0, a0, -1000
802036fe: 33 05 a4 40  	sub	a0, s0, a0
80203702: 81 45        	li	a1, 0
80203704: 97 70 00 00  	auipc	ra, 7
80203708: e7 80 40 d2  	jalr	-732(ra)
8020370c: 13 06 10 08  	li	a2, 129
80203710: 09 65        	lui	a0, 2
80203712: 1b 05 05 b9  	addiw	a0, a0, -1136
80203716: 33 05 a4 40  	sub	a0, s0, a0
8020371a: 81 45        	li	a1, 0
8020371c: 97 70 00 00  	auipc	ra, 7
80203720: e7 80 c0 d0  	jalr	-756(ra)
80203724: 13 06 10 08  	li	a2, 129
80203728: 09 65        	lui	a0, 2
8020372a: 1b 05 85 b0  	addiw	a0, a0, -1272
8020372e: 33 05 a4 40  	sub	a0, s0, a0
80203732: 81 45        	li	a1, 0
80203734: 97 70 00 00  	auipc	ra, 7
80203738: e7 80 40 cf  	jalr	-780(ra)
8020373c: 13 06 10 08  	li	a2, 129
80203740: 09 65        	lui	a0, 2
80203742: 1b 05 05 a8  	addiw	a0, a0, -1408
80203746: 33 05 a4 40  	sub	a0, s0, a0
8020374a: 81 45        	li	a1, 0
8020374c: 97 70 00 00  	auipc	ra, 7
80203750: e7 80 c0 cd  	jalr	-804(ra)
80203754: 13 06 10 08  	li	a2, 129
80203758: 09 65        	lui	a0, 2
8020375a: 33 05 a4 40  	sub	a0, s0, a0
8020375e: 03 35 85 d6  	ld	a0, -664(a0)
80203762: 81 45        	li	a1, 0
80203764: 97 70 00 00  	auipc	ra, 7
80203768: e7 80 40 cc  	jalr	-828(ra)
8020376c: 13 06 10 08  	li	a2, 129
80203770: 09 65        	lui	a0, 2
80203772: 33 05 a4 40  	sub	a0, s0, a0
80203776: 03 35 05 d6  	ld	a0, -672(a0)
8020377a: 81 45        	li	a1, 0
8020377c: 97 70 00 00  	auipc	ra, 7
80203780: e7 80 c0 ca  	jalr	-852(ra)
80203784: 13 06 10 08  	li	a2, 129
80203788: 09 65        	lui	a0, 2
8020378a: 33 05 a4 40  	sub	a0, s0, a0
8020378e: 03 35 85 d5  	ld	a0, -680(a0)
80203792: 81 45        	li	a1, 0
80203794: 97 70 00 00  	auipc	ra, 7
80203798: e7 80 40 c9  	jalr	-876(ra)
8020379c: 13 06 10 08  	li	a2, 129
802037a0: 09 65        	lui	a0, 2
802037a2: 33 05 a4 40  	sub	a0, s0, a0
802037a6: 03 35 05 d5  	ld	a0, -688(a0)
802037aa: 81 45        	li	a1, 0
802037ac: 97 70 00 00  	auipc	ra, 7
802037b0: e7 80 c0 c7  	jalr	-900(ra)
802037b4: 13 06 10 08  	li	a2, 129
802037b8: 09 65        	lui	a0, 2
802037ba: 33 05 a4 40  	sub	a0, s0, a0
802037be: 03 35 85 d4  	ld	a0, -696(a0)
802037c2: 81 45        	li	a1, 0
802037c4: 97 70 00 00  	auipc	ra, 7
802037c8: e7 80 40 c6  	jalr	-924(ra)
802037cc: 13 06 10 08  	li	a2, 129
802037d0: 09 65        	lui	a0, 2
802037d2: 33 05 a4 40  	sub	a0, s0, a0
802037d6: 03 35 05 d4  	ld	a0, -704(a0)
802037da: 81 45        	li	a1, 0
802037dc: 97 70 00 00  	auipc	ra, 7
802037e0: e7 80 c0 c4  	jalr	-948(ra)
802037e4: 13 06 10 08  	li	a2, 129
802037e8: 09 65        	lui	a0, 2
802037ea: 33 05 a4 40  	sub	a0, s0, a0
802037ee: 03 35 85 d3  	ld	a0, -712(a0)
802037f2: 81 45        	li	a1, 0
802037f4: 97 70 00 00  	auipc	ra, 7
802037f8: e7 80 40 c3  	jalr	-972(ra)
802037fc: 13 06 10 08  	li	a2, 129
80203800: 09 65        	lui	a0, 2
80203802: 33 05 a4 40  	sub	a0, s0, a0
80203806: 03 35 05 d3  	ld	a0, -720(a0)
8020380a: 81 45        	li	a1, 0
8020380c: 97 70 00 00  	auipc	ra, 7
80203810: e7 80 c0 c1  	jalr	-996(ra)
80203814: 13 06 10 08  	li	a2, 129
80203818: 09 65        	lui	a0, 2
8020381a: 33 05 a4 40  	sub	a0, s0, a0
8020381e: 03 35 85 d2  	ld	a0, -728(a0)
80203822: 81 45        	li	a1, 0
80203824: 97 70 00 00  	auipc	ra, 7
80203828: e7 80 40 c0  	jalr	-1020(ra)
8020382c: 13 06 10 08  	li	a2, 129
80203830: 09 65        	lui	a0, 2
80203832: 33 05 a4 40  	sub	a0, s0, a0
80203836: 03 35 05 d2  	ld	a0, -736(a0)
8020383a: 81 45        	li	a1, 0
8020383c: 97 70 00 00  	auipc	ra, 7
80203840: e7 80 c0 be  	jalr	-1044(ra)
80203844: 13 06 10 08  	li	a2, 129
80203848: 09 65        	lui	a0, 2
8020384a: 33 05 a4 40  	sub	a0, s0, a0
8020384e: 03 35 85 d1  	ld	a0, -744(a0)
80203852: 81 45        	li	a1, 0
80203854: 97 70 00 00  	auipc	ra, 7
80203858: e7 80 40 bd  	jalr	-1068(ra)
8020385c: 13 06 10 08  	li	a2, 129
80203860: 09 65        	lui	a0, 2
80203862: 33 05 a4 40  	sub	a0, s0, a0
80203866: 03 35 05 d1  	ld	a0, -752(a0)
8020386a: 81 45        	li	a1, 0
8020386c: 97 70 00 00  	auipc	ra, 7
80203870: e7 80 c0 bb  	jalr	-1092(ra)
80203874: 13 06 10 08  	li	a2, 129
80203878: 09 65        	lui	a0, 2
8020387a: 33 05 a4 40  	sub	a0, s0, a0
8020387e: 03 35 85 d0  	ld	a0, -760(a0)
80203882: 81 45        	li	a1, 0
80203884: 97 70 00 00  	auipc	ra, 7
80203888: e7 80 40 ba  	jalr	-1116(ra)
8020388c: 13 06 10 08  	li	a2, 129
80203890: 09 65        	lui	a0, 2
80203892: 33 05 a4 40  	sub	a0, s0, a0
80203896: 03 35 05 d0  	ld	a0, -768(a0)
8020389a: 81 45        	li	a1, 0
8020389c: 97 70 00 00  	auipc	ra, 7
802038a0: e7 80 c0 b8  	jalr	-1140(ra)
802038a4: 13 06 10 08  	li	a2, 129
802038a8: 09 65        	lui	a0, 2
802038aa: 33 05 a4 40  	sub	a0, s0, a0
802038ae: 03 35 85 cf  	ld	a0, -776(a0)
802038b2: 81 45        	li	a1, 0
802038b4: 97 70 00 00  	auipc	ra, 7
802038b8: e7 80 40 b7  	jalr	-1164(ra)
802038bc: 13 06 10 08  	li	a2, 129
802038c0: 09 65        	lui	a0, 2
802038c2: 33 05 a4 40  	sub	a0, s0, a0
802038c6: 03 35 05 cf  	ld	a0, -784(a0)
802038ca: 81 45        	li	a1, 0
802038cc: 97 70 00 00  	auipc	ra, 7
802038d0: e7 80 c0 b5  	jalr	-1188(ra)
802038d4: 13 06 10 08  	li	a2, 129
802038d8: 09 65        	lui	a0, 2
802038da: 33 05 a4 40  	sub	a0, s0, a0
802038de: 03 35 85 ce  	ld	a0, -792(a0)
802038e2: 81 45        	li	a1, 0
802038e4: 97 70 00 00  	auipc	ra, 7
802038e8: e7 80 40 b4  	jalr	-1212(ra)
802038ec: 13 06 10 08  	li	a2, 129
802038f0: 09 65        	lui	a0, 2
802038f2: 33 05 a4 40  	sub	a0, s0, a0
802038f6: 03 35 05 ce  	ld	a0, -800(a0)
802038fa: 81 45        	li	a1, 0
802038fc: 97 70 00 00  	auipc	ra, 7
80203900: e7 80 c0 b2  	jalr	-1236(ra)
80203904: 13 06 10 08  	li	a2, 129
80203908: 09 65        	lui	a0, 2
8020390a: 33 05 a4 40  	sub	a0, s0, a0
8020390e: 03 35 85 cd  	ld	a0, -808(a0)
80203912: 81 45        	li	a1, 0
80203914: 97 70 00 00  	auipc	ra, 7
80203918: e7 80 40 b1  	jalr	-1260(ra)
8020391c: 13 06 10 08  	li	a2, 129
80203920: 09 65        	lui	a0, 2
80203922: 33 05 a4 40  	sub	a0, s0, a0
80203926: 03 35 05 cd  	ld	a0, -816(a0)
8020392a: 81 45        	li	a1, 0
8020392c: 97 70 00 00  	auipc	ra, 7
80203930: e7 80 c0 af  	jalr	-1284(ra)
80203934: 13 06 10 08  	li	a2, 129
80203938: 09 65        	lui	a0, 2
8020393a: 33 05 a4 40  	sub	a0, s0, a0
8020393e: 03 35 85 cc  	ld	a0, -824(a0)
80203942: 81 45        	li	a1, 0
80203944: 97 70 00 00  	auipc	ra, 7
80203948: e7 80 40 ae  	jalr	-1308(ra)
8020394c: 13 06 10 08  	li	a2, 129
80203950: 09 65        	lui	a0, 2
80203952: 33 05 a4 40  	sub	a0, s0, a0
80203956: 03 35 05 cc  	ld	a0, -832(a0)
8020395a: 81 45        	li	a1, 0
8020395c: 97 70 00 00  	auipc	ra, 7
80203960: e7 80 c0 ac  	jalr	-1332(ra)
80203964: 13 06 10 08  	li	a2, 129
80203968: 09 65        	lui	a0, 2
8020396a: 33 05 a4 40  	sub	a0, s0, a0
8020396e: 03 35 85 cb  	ld	a0, -840(a0)
80203972: 81 45        	li	a1, 0
80203974: 97 70 00 00  	auipc	ra, 7
80203978: e7 80 40 ab  	jalr	-1356(ra)
8020397c: 13 06 10 08  	li	a2, 129
80203980: 09 65        	lui	a0, 2
80203982: 33 05 a4 40  	sub	a0, s0, a0
80203986: 03 35 05 cb  	ld	a0, -848(a0)
8020398a: 81 45        	li	a1, 0
8020398c: 97 70 00 00  	auipc	ra, 7
80203990: e7 80 c0 a9  	jalr	-1380(ra)
80203994: 13 06 10 08  	li	a2, 129
80203998: 09 65        	lui	a0, 2
8020399a: 33 05 a4 40  	sub	a0, s0, a0
8020399e: 03 35 85 ca  	ld	a0, -856(a0)
802039a2: 81 45        	li	a1, 0
802039a4: 97 70 00 00  	auipc	ra, 7
802039a8: e7 80 40 a8  	jalr	-1404(ra)
802039ac: 13 06 10 08  	li	a2, 129
802039b0: 09 65        	lui	a0, 2
802039b2: 33 05 a4 40  	sub	a0, s0, a0
802039b6: 03 35 05 ca  	ld	a0, -864(a0)
802039ba: 81 45        	li	a1, 0
802039bc: 97 70 00 00  	auipc	ra, 7
802039c0: e7 80 c0 a6  	jalr	-1428(ra)
802039c4: 13 06 10 08  	li	a2, 129
802039c8: 09 65        	lui	a0, 2
802039ca: 33 05 a4 40  	sub	a0, s0, a0
802039ce: 03 35 85 c9  	ld	a0, -872(a0)
802039d2: 81 45        	li	a1, 0
802039d4: 97 70 00 00  	auipc	ra, 7
802039d8: e7 80 40 a5  	jalr	-1452(ra)
802039dc: 13 06 10 08  	li	a2, 129
802039e0: 09 65        	lui	a0, 2
802039e2: 33 05 a4 40  	sub	a0, s0, a0
802039e6: 03 35 05 c9  	ld	a0, -880(a0)
802039ea: 81 45        	li	a1, 0
802039ec: 97 70 00 00  	auipc	ra, 7
802039f0: e7 80 c0 a3  	jalr	-1476(ra)
802039f4: 13 06 10 08  	li	a2, 129
802039f8: 09 65        	lui	a0, 2
802039fa: 33 05 a4 40  	sub	a0, s0, a0
802039fe: 03 35 85 c8  	ld	a0, -888(a0)
80203a02: 81 45        	li	a1, 0
80203a04: 97 70 00 00  	auipc	ra, 7
80203a08: e7 80 40 a2  	jalr	-1500(ra)
80203a0c: 13 06 10 08  	li	a2, 129
80203a10: 09 65        	lui	a0, 2
80203a12: 33 05 a4 40  	sub	a0, s0, a0
80203a16: 03 35 05 c8  	ld	a0, -896(a0)
80203a1a: 81 45        	li	a1, 0
80203a1c: 97 70 00 00  	auipc	ra, 7
80203a20: e7 80 c0 a0  	jalr	-1524(ra)
80203a24: 13 06 10 08  	li	a2, 129
80203a28: 09 65        	lui	a0, 2
80203a2a: 33 05 a4 40  	sub	a0, s0, a0
80203a2e: 03 35 85 c7  	ld	a0, -904(a0)
80203a32: 81 45        	li	a1, 0
80203a34: 97 70 00 00  	auipc	ra, 7
80203a38: e7 80 40 9f  	jalr	-1548(ra)
80203a3c: 13 06 10 08  	li	a2, 129
80203a40: 09 65        	lui	a0, 2
80203a42: 33 05 a4 40  	sub	a0, s0, a0
80203a46: 03 35 05 c7  	ld	a0, -912(a0)
80203a4a: 81 45        	li	a1, 0
80203a4c: 97 70 00 00  	auipc	ra, 7
80203a50: e7 80 c0 9d  	jalr	-1572(ra)
80203a54: 13 06 10 08  	li	a2, 129
80203a58: 09 65        	lui	a0, 2
80203a5a: 33 05 a4 40  	sub	a0, s0, a0
80203a5e: 03 35 85 c6  	ld	a0, -920(a0)
80203a62: 81 45        	li	a1, 0
80203a64: 97 70 00 00  	auipc	ra, 7
80203a68: e7 80 40 9c  	jalr	-1596(ra)
80203a6c: 13 06 10 08  	li	a2, 129
80203a70: 09 65        	lui	a0, 2
80203a72: 33 05 a4 40  	sub	a0, s0, a0
80203a76: 03 35 05 c6  	ld	a0, -928(a0)
80203a7a: 81 45        	li	a1, 0
80203a7c: 97 70 00 00  	auipc	ra, 7
80203a80: e7 80 c0 9a  	jalr	-1620(ra)
80203a84: 13 06 10 08  	li	a2, 129
80203a88: 09 65        	lui	a0, 2
80203a8a: 33 05 a4 40  	sub	a0, s0, a0
80203a8e: 03 35 85 c5  	ld	a0, -936(a0)
80203a92: 81 45        	li	a1, 0
80203a94: 97 70 00 00  	auipc	ra, 7
80203a98: e7 80 40 99  	jalr	-1644(ra)
80203a9c: 13 06 10 08  	li	a2, 129
80203aa0: 09 65        	lui	a0, 2
80203aa2: 33 05 a4 40  	sub	a0, s0, a0
80203aa6: 03 35 05 c5  	ld	a0, -944(a0)
80203aaa: 81 45        	li	a1, 0
80203aac: 97 70 00 00  	auipc	ra, 7
80203ab0: e7 80 c0 97  	jalr	-1668(ra)
80203ab4: 13 06 10 08  	li	a2, 129
80203ab8: 09 65        	lui	a0, 2
80203aba: 33 05 a4 40  	sub	a0, s0, a0
80203abe: 03 35 85 c4  	ld	a0, -952(a0)
80203ac2: 81 45        	li	a1, 0
80203ac4: 97 70 00 00  	auipc	ra, 7
80203ac8: e7 80 40 96  	jalr	-1692(ra)
80203acc: 13 06 10 08  	li	a2, 129
80203ad0: 09 65        	lui	a0, 2
80203ad2: 33 05 a4 40  	sub	a0, s0, a0
80203ad6: 03 35 05 c4  	ld	a0, -960(a0)
80203ada: 81 45        	li	a1, 0
80203adc: 97 70 00 00  	auipc	ra, 7
80203ae0: e7 80 c0 94  	jalr	-1716(ra)
80203ae4: 13 06 10 08  	li	a2, 129
80203ae8: 09 65        	lui	a0, 2
80203aea: 33 05 a4 40  	sub	a0, s0, a0
80203aee: 03 35 85 c3  	ld	a0, -968(a0)
80203af2: 81 45        	li	a1, 0
80203af4: 97 70 00 00  	auipc	ra, 7
80203af8: e7 80 40 93  	jalr	-1740(ra)
80203afc: 13 06 10 08  	li	a2, 129
80203b00: 09 65        	lui	a0, 2
80203b02: 33 05 a4 40  	sub	a0, s0, a0
80203b06: 03 35 05 c3  	ld	a0, -976(a0)
80203b0a: 81 45        	li	a1, 0
80203b0c: 97 70 00 00  	auipc	ra, 7
80203b10: e7 80 c0 91  	jalr	-1764(ra)
80203b14: 13 06 10 08  	li	a2, 129
80203b18: 09 65        	lui	a0, 2
80203b1a: 33 05 a4 40  	sub	a0, s0, a0
80203b1e: 03 35 85 c2  	ld	a0, -984(a0)
80203b22: 81 45        	li	a1, 0
80203b24: 97 70 00 00  	auipc	ra, 7
80203b28: e7 80 40 90  	jalr	-1788(ra)
80203b2c: 13 06 10 08  	li	a2, 129
80203b30: 09 65        	lui	a0, 2
80203b32: 33 05 a4 40  	sub	a0, s0, a0
80203b36: 03 35 05 c2  	ld	a0, -992(a0)
80203b3a: 81 45        	li	a1, 0
80203b3c: 97 70 00 00  	auipc	ra, 7
80203b40: e7 80 c0 8e  	jalr	-1812(ra)
80203b44: 13 06 10 08  	li	a2, 129
80203b48: 09 65        	lui	a0, 2
80203b4a: 33 05 a4 40  	sub	a0, s0, a0
80203b4e: 03 35 85 c1  	ld	a0, -1000(a0)
80203b52: 81 45        	li	a1, 0
80203b54: 97 70 00 00  	auipc	ra, 7
80203b58: e7 80 40 8d  	jalr	-1836(ra)
80203b5c: 13 06 10 08  	li	a2, 129
80203b60: 09 65        	lui	a0, 2
80203b62: 33 05 a4 40  	sub	a0, s0, a0
80203b66: 03 35 05 c1  	ld	a0, -1008(a0)
80203b6a: 81 45        	li	a1, 0
80203b6c: 97 70 00 00  	auipc	ra, 7
80203b70: e7 80 c0 8b  	jalr	-1860(ra)
80203b74: 13 06 10 08  	li	a2, 129
80203b78: 09 65        	lui	a0, 2
80203b7a: 33 05 a4 40  	sub	a0, s0, a0
80203b7e: 03 35 85 c0  	ld	a0, -1016(a0)
80203b82: 81 45        	li	a1, 0
80203b84: 97 70 00 00  	auipc	ra, 7
80203b88: e7 80 40 8a  	jalr	-1884(ra)
80203b8c: 13 06 10 08  	li	a2, 129
80203b90: 09 65        	lui	a0, 2
80203b92: 33 05 a4 40  	sub	a0, s0, a0
80203b96: 03 35 05 c0  	ld	a0, -1024(a0)
80203b9a: 81 45        	li	a1, 0
80203b9c: 97 70 00 00  	auipc	ra, 7
80203ba0: e7 80 c0 88  	jalr	-1908(ra)
80203ba4: 13 06 10 08  	li	a2, 129
80203ba8: 09 65        	lui	a0, 2
80203baa: 33 05 a4 40  	sub	a0, s0, a0
80203bae: 03 35 85 bf  	ld	a0, -1032(a0)
80203bb2: 81 45        	li	a1, 0
80203bb4: 97 70 00 00  	auipc	ra, 7
80203bb8: e7 80 40 87  	jalr	-1932(ra)
80203bbc: 13 06 10 08  	li	a2, 129
80203bc0: 09 65        	lui	a0, 2
80203bc2: 33 05 a4 40  	sub	a0, s0, a0
80203bc6: 03 35 05 bf  	ld	a0, -1040(a0)
80203bca: 81 45        	li	a1, 0
80203bcc: 97 70 00 00  	auipc	ra, 7
80203bd0: e7 80 c0 85  	jalr	-1956(ra)
80203bd4: 13 85 04 01  	addi	a0, s1, 16
80203bd8: 45 46        	li	a2, 17
80203bda: 26 06        	slli	a2, a2, 9
80203bdc: 89 65        	lui	a1, 2
80203bde: 9b 85 85 27  	addiw	a1, a1, 632
80203be2: b3 05 b4 40  	sub	a1, s0, a1
80203be6: 97 70 00 00  	auipc	ra, 7
80203bea: e7 80 a0 84  	jalr	-1974(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80203bee: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80203bf2: 23 84 0a 00  	sb	zero, 8(s5)
80203bf6: 0f 00 10 03  	fence	rw, w
80203bfa: 23 b0 a4 01  	sd	s10, 0(s1)
80203bfe: 09 65        	lui	a0, 2
80203c00: 1b 05 85 28  	addiw	a0, a0, 648
80203c04: 33 05 a4 40  	sub	a0, s0, a0
80203c08: 97 50 00 00  	auipc	ra, 5
80203c0c: e7 80 00 c2  	jalr	-992(ra)
80203c10: 31 a8        	j	0x80203c2c <.Lpcrel_hi62+0x9e4>
80203c12: 0f 00 00 01  	fence	w, 0
80203c16: 0f 00 30 03  	fence	rw, rw
80203c1a: 88 60        	ld	a0, 0(s1)
80203c1c: 0f 00 30 02  	fence	r, rw
;             match status {
80203c20: e3 09 b5 ff  	beq	a0, s11, 0x80203c12 <.Lpcrel_hi62+0x9ca>
80203c24: 63 04 a5 01  	beq	a0, s10, 0x80203c2c <.Lpcrel_hi62+0x9e4>
80203c28: 6f 10 10 3d  	j	0x802057f8 <.Lpcrel_hi72+0x18>
80203c2c: 63 64 7b 01  	bltu	s6, s7, 0x80203c34 <.Lpcrel_hi62+0x9ec>
80203c30: 6f 10 10 35  	j	0x80205780 <.Lpcrel_hi67>
;     if mc.noff == 0 {
80203c34: b3 05 8b 03  	mul	a1, s6, s8
80203c38: a6 95        	add	a1, a1, s1
80203c3a: c8 65        	ld	a0, 136(a1)
80203c3c: 11 e5        	bnez	a0, 0x80203c48 <.Lpcrel_hi62+0xa00>
;         mc.intena = old;
80203c3e: 7a 19        	slli	s2, s2, 62
80203c40: 13 56 f9 03  	srli	a2, s2, 63
80203c44: 23 88 c5 08  	sb	a2, 144(a1)
80203c48: 93 85 85 08  	addi	a1, a1, 136
;     mc.noff += 1;
80203c4c: 05 05        	addi	a0, a0, 1
80203c4e: 88 e1        	sd	a0, 0(a1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203c50: 13 05 80 17  	li	a0, 376
80203c54: 33 09 aa 02  	mul	s2, s4, a0
80203c58: 09 65        	lui	a0, 2
80203c5a: 33 05 a4 40  	sub	a0, s0, a0
80203c5e: 03 35 05 d7  	ld	a0, -656(a0)
80203c62: 2a 99        	add	s2, s2, a0
80203c64: 03 05 89 09  	lb	a0, 152(s2)
80203c68: 05 0a        	addi	s4, s4, 1
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203c6a: 93 0a 89 09  	addi	s5, s2, 152
80203c6e: 63 06 05 6a  	beqz	a0, 0x8020431a <.Lpcrel_hi62+0x10d2>
80203c72: 83 3c 09 09  	ld	s9, 144(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203c76: 12 8b        	mv	s6, tp
80203c78: 0f 00 30 03  	fence	rw, rw
80203c7c: 88 60        	ld	a0, 0(s1)
80203c7e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203c82: 63 1a 05 66  	bnez	a0, 0x802042f6 <.Lpcrel_hi62+0x10ae>
80203c86: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80203c8a: 63 16 05 66  	bnez	a0, 0x802042f6 <.Lpcrel_hi62+0x10ae>
80203c8e: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80203c92: f5 f9        	bnez	a1, 0x80203c86 <.Lpcrel_hi62+0xa3e>
80203c94: 09 65        	lui	a0, 2
80203c96: 1b 05 85 28  	addiw	a0, a0, 648
80203c9a: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203c9e: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80203ca0: 09 65        	lui	a0, 2
80203ca2: 1b 05 85 27  	addiw	a0, a0, 632
80203ca6: 33 05 a4 40  	sub	a0, s0, a0
80203caa: 13 06 10 08  	li	a2, 129
80203cae: 81 45        	li	a1, 0
80203cb0: 97 60 00 00  	auipc	ra, 6
80203cb4: e7 80 80 77  	jalr	1912(ra)
80203cb8: 13 06 10 08  	li	a2, 129
80203cbc: 09 65        	lui	a0, 2
80203cbe: 1b 05 05 1f  	addiw	a0, a0, 496
80203cc2: 33 05 a4 40  	sub	a0, s0, a0
80203cc6: 81 45        	li	a1, 0
80203cc8: 97 60 00 00  	auipc	ra, 6
80203ccc: e7 80 00 76  	jalr	1888(ra)
80203cd0: 13 06 10 08  	li	a2, 129
80203cd4: 09 65        	lui	a0, 2
80203cd6: 1b 05 85 16  	addiw	a0, a0, 360
80203cda: 33 05 a4 40  	sub	a0, s0, a0
80203cde: 81 45        	li	a1, 0
80203ce0: 97 60 00 00  	auipc	ra, 6
80203ce4: e7 80 80 74  	jalr	1864(ra)
80203ce8: 13 06 10 08  	li	a2, 129
80203cec: 09 65        	lui	a0, 2
80203cee: 1b 05 05 0e  	addiw	a0, a0, 224
80203cf2: 33 05 a4 40  	sub	a0, s0, a0
80203cf6: 81 45        	li	a1, 0
80203cf8: 97 60 00 00  	auipc	ra, 6
80203cfc: e7 80 00 73  	jalr	1840(ra)
80203d00: 13 06 10 08  	li	a2, 129
80203d04: 09 65        	lui	a0, 2
80203d06: 1b 05 85 05  	addiw	a0, a0, 88
80203d0a: 33 05 a4 40  	sub	a0, s0, a0
80203d0e: 81 45        	li	a1, 0
80203d10: 97 60 00 00  	auipc	ra, 6
80203d14: e7 80 80 71  	jalr	1816(ra)
80203d18: 13 06 10 08  	li	a2, 129
80203d1c: 09 65        	lui	a0, 2
80203d1e: 1b 05 05 fd  	addiw	a0, a0, -48
80203d22: 33 05 a4 40  	sub	a0, s0, a0
80203d26: 81 45        	li	a1, 0
80203d28: 97 60 00 00  	auipc	ra, 6
80203d2c: e7 80 00 70  	jalr	1792(ra)
80203d30: 13 06 10 08  	li	a2, 129
80203d34: 09 65        	lui	a0, 2
80203d36: 1b 05 85 f4  	addiw	a0, a0, -184
80203d3a: 33 05 a4 40  	sub	a0, s0, a0
80203d3e: 81 45        	li	a1, 0
80203d40: 97 60 00 00  	auipc	ra, 6
80203d44: e7 80 80 6e  	jalr	1768(ra)
80203d48: 13 06 10 08  	li	a2, 129
80203d4c: 09 65        	lui	a0, 2
80203d4e: 1b 05 05 ec  	addiw	a0, a0, -320
80203d52: 33 05 a4 40  	sub	a0, s0, a0
80203d56: 81 45        	li	a1, 0
80203d58: 97 60 00 00  	auipc	ra, 6
80203d5c: e7 80 00 6d  	jalr	1744(ra)
80203d60: 13 06 10 08  	li	a2, 129
80203d64: 09 65        	lui	a0, 2
80203d66: 1b 05 85 e3  	addiw	a0, a0, -456
80203d6a: 33 05 a4 40  	sub	a0, s0, a0
80203d6e: 81 45        	li	a1, 0
80203d70: 97 60 00 00  	auipc	ra, 6
80203d74: e7 80 80 6b  	jalr	1720(ra)
80203d78: 13 06 10 08  	li	a2, 129
80203d7c: 09 65        	lui	a0, 2
80203d7e: 1b 05 05 db  	addiw	a0, a0, -592
80203d82: 33 05 a4 40  	sub	a0, s0, a0
80203d86: 81 45        	li	a1, 0
80203d88: 97 60 00 00  	auipc	ra, 6
80203d8c: e7 80 00 6a  	jalr	1696(ra)
80203d90: 13 06 10 08  	li	a2, 129
80203d94: 09 65        	lui	a0, 2
80203d96: 1b 05 85 d2  	addiw	a0, a0, -728
80203d9a: 33 05 a4 40  	sub	a0, s0, a0
80203d9e: 81 45        	li	a1, 0
80203da0: 97 60 00 00  	auipc	ra, 6
80203da4: e7 80 80 68  	jalr	1672(ra)
80203da8: 13 06 10 08  	li	a2, 129
80203dac: 09 65        	lui	a0, 2
80203dae: 1b 05 05 ca  	addiw	a0, a0, -864
80203db2: 33 05 a4 40  	sub	a0, s0, a0
80203db6: 81 45        	li	a1, 0
80203db8: 97 60 00 00  	auipc	ra, 6
80203dbc: e7 80 00 67  	jalr	1648(ra)
80203dc0: 13 06 10 08  	li	a2, 129
80203dc4: 09 65        	lui	a0, 2
80203dc6: 1b 05 85 c1  	addiw	a0, a0, -1000
80203dca: 33 05 a4 40  	sub	a0, s0, a0
80203dce: 81 45        	li	a1, 0
80203dd0: 97 60 00 00  	auipc	ra, 6
80203dd4: e7 80 80 65  	jalr	1624(ra)
80203dd8: 13 06 10 08  	li	a2, 129
80203ddc: 09 65        	lui	a0, 2
80203dde: 1b 05 05 b9  	addiw	a0, a0, -1136
80203de2: 33 05 a4 40  	sub	a0, s0, a0
80203de6: 81 45        	li	a1, 0
80203de8: 97 60 00 00  	auipc	ra, 6
80203dec: e7 80 00 64  	jalr	1600(ra)
80203df0: 13 06 10 08  	li	a2, 129
80203df4: 09 65        	lui	a0, 2
80203df6: 1b 05 85 b0  	addiw	a0, a0, -1272
80203dfa: 33 05 a4 40  	sub	a0, s0, a0
80203dfe: 81 45        	li	a1, 0
80203e00: 97 60 00 00  	auipc	ra, 6
80203e04: e7 80 80 62  	jalr	1576(ra)
80203e08: 13 06 10 08  	li	a2, 129
80203e0c: 09 65        	lui	a0, 2
80203e0e: 1b 05 05 a8  	addiw	a0, a0, -1408
80203e12: 33 05 a4 40  	sub	a0, s0, a0
80203e16: 81 45        	li	a1, 0
80203e18: 97 60 00 00  	auipc	ra, 6
80203e1c: e7 80 00 61  	jalr	1552(ra)
80203e20: 13 06 10 08  	li	a2, 129
80203e24: 09 65        	lui	a0, 2
80203e26: 33 05 a4 40  	sub	a0, s0, a0
80203e2a: 03 35 85 d6  	ld	a0, -664(a0)
80203e2e: 81 45        	li	a1, 0
80203e30: 97 60 00 00  	auipc	ra, 6
80203e34: e7 80 80 5f  	jalr	1528(ra)
80203e38: 13 06 10 08  	li	a2, 129
80203e3c: 09 65        	lui	a0, 2
80203e3e: 33 05 a4 40  	sub	a0, s0, a0
80203e42: 03 35 05 d6  	ld	a0, -672(a0)
80203e46: 81 45        	li	a1, 0
80203e48: 97 60 00 00  	auipc	ra, 6
80203e4c: e7 80 00 5e  	jalr	1504(ra)
80203e50: 13 06 10 08  	li	a2, 129
80203e54: 09 65        	lui	a0, 2
80203e56: 33 05 a4 40  	sub	a0, s0, a0
80203e5a: 03 35 85 d5  	ld	a0, -680(a0)
80203e5e: 81 45        	li	a1, 0
80203e60: 97 60 00 00  	auipc	ra, 6
80203e64: e7 80 80 5c  	jalr	1480(ra)
80203e68: 13 06 10 08  	li	a2, 129
80203e6c: 09 65        	lui	a0, 2
80203e6e: 33 05 a4 40  	sub	a0, s0, a0
80203e72: 03 35 05 d5  	ld	a0, -688(a0)
80203e76: 81 45        	li	a1, 0
80203e78: 97 60 00 00  	auipc	ra, 6
80203e7c: e7 80 00 5b  	jalr	1456(ra)
80203e80: 13 06 10 08  	li	a2, 129
80203e84: 09 65        	lui	a0, 2
80203e86: 33 05 a4 40  	sub	a0, s0, a0
80203e8a: 03 35 85 d4  	ld	a0, -696(a0)
80203e8e: 81 45        	li	a1, 0
80203e90: 97 60 00 00  	auipc	ra, 6
80203e94: e7 80 80 59  	jalr	1432(ra)
80203e98: 13 06 10 08  	li	a2, 129
80203e9c: 09 65        	lui	a0, 2
80203e9e: 33 05 a4 40  	sub	a0, s0, a0
80203ea2: 03 35 05 d4  	ld	a0, -704(a0)
80203ea6: 81 45        	li	a1, 0
80203ea8: 97 60 00 00  	auipc	ra, 6
80203eac: e7 80 00 58  	jalr	1408(ra)
80203eb0: 13 06 10 08  	li	a2, 129
80203eb4: 09 65        	lui	a0, 2
80203eb6: 33 05 a4 40  	sub	a0, s0, a0
80203eba: 03 35 85 d3  	ld	a0, -712(a0)
80203ebe: 81 45        	li	a1, 0
80203ec0: 97 60 00 00  	auipc	ra, 6
80203ec4: e7 80 80 56  	jalr	1384(ra)
80203ec8: 13 06 10 08  	li	a2, 129
80203ecc: 09 65        	lui	a0, 2
80203ece: 33 05 a4 40  	sub	a0, s0, a0
80203ed2: 03 35 05 d3  	ld	a0, -720(a0)
80203ed6: 81 45        	li	a1, 0
80203ed8: 97 60 00 00  	auipc	ra, 6
80203edc: e7 80 00 55  	jalr	1360(ra)
80203ee0: 13 06 10 08  	li	a2, 129
80203ee4: 09 65        	lui	a0, 2
80203ee6: 33 05 a4 40  	sub	a0, s0, a0
80203eea: 03 35 85 d2  	ld	a0, -728(a0)
80203eee: 81 45        	li	a1, 0
80203ef0: 97 60 00 00  	auipc	ra, 6
80203ef4: e7 80 80 53  	jalr	1336(ra)
80203ef8: 13 06 10 08  	li	a2, 129
80203efc: 09 65        	lui	a0, 2
80203efe: 33 05 a4 40  	sub	a0, s0, a0
80203f02: 03 35 05 d2  	ld	a0, -736(a0)
80203f06: 81 45        	li	a1, 0
80203f08: 97 60 00 00  	auipc	ra, 6
80203f0c: e7 80 00 52  	jalr	1312(ra)
80203f10: 13 06 10 08  	li	a2, 129
80203f14: 09 65        	lui	a0, 2
80203f16: 33 05 a4 40  	sub	a0, s0, a0
80203f1a: 03 35 85 d1  	ld	a0, -744(a0)
80203f1e: 81 45        	li	a1, 0
80203f20: 97 60 00 00  	auipc	ra, 6
80203f24: e7 80 80 50  	jalr	1288(ra)
80203f28: 13 06 10 08  	li	a2, 129
80203f2c: 09 65        	lui	a0, 2
80203f2e: 33 05 a4 40  	sub	a0, s0, a0
80203f32: 03 35 05 d1  	ld	a0, -752(a0)
80203f36: 81 45        	li	a1, 0
80203f38: 97 60 00 00  	auipc	ra, 6
80203f3c: e7 80 00 4f  	jalr	1264(ra)
80203f40: 13 06 10 08  	li	a2, 129
80203f44: 09 65        	lui	a0, 2
80203f46: 33 05 a4 40  	sub	a0, s0, a0
80203f4a: 03 35 85 d0  	ld	a0, -760(a0)
80203f4e: 81 45        	li	a1, 0
80203f50: 97 60 00 00  	auipc	ra, 6
80203f54: e7 80 80 4d  	jalr	1240(ra)
80203f58: 13 06 10 08  	li	a2, 129
80203f5c: 09 65        	lui	a0, 2
80203f5e: 33 05 a4 40  	sub	a0, s0, a0
80203f62: 03 35 05 d0  	ld	a0, -768(a0)
80203f66: 81 45        	li	a1, 0
80203f68: 97 60 00 00  	auipc	ra, 6
80203f6c: e7 80 00 4c  	jalr	1216(ra)
80203f70: 13 06 10 08  	li	a2, 129
80203f74: 09 65        	lui	a0, 2
80203f76: 33 05 a4 40  	sub	a0, s0, a0
80203f7a: 03 35 85 cf  	ld	a0, -776(a0)
80203f7e: 81 45        	li	a1, 0
80203f80: 97 60 00 00  	auipc	ra, 6
80203f84: e7 80 80 4a  	jalr	1192(ra)
80203f88: 13 06 10 08  	li	a2, 129
80203f8c: 09 65        	lui	a0, 2
80203f8e: 33 05 a4 40  	sub	a0, s0, a0
80203f92: 03 35 05 cf  	ld	a0, -784(a0)
80203f96: 81 45        	li	a1, 0
80203f98: 97 60 00 00  	auipc	ra, 6
80203f9c: e7 80 00 49  	jalr	1168(ra)
80203fa0: 13 06 10 08  	li	a2, 129
80203fa4: 09 65        	lui	a0, 2
80203fa6: 33 05 a4 40  	sub	a0, s0, a0
80203faa: 03 35 85 ce  	ld	a0, -792(a0)
80203fae: 81 45        	li	a1, 0
80203fb0: 97 60 00 00  	auipc	ra, 6
80203fb4: e7 80 80 47  	jalr	1144(ra)
80203fb8: 13 06 10 08  	li	a2, 129
80203fbc: 09 65        	lui	a0, 2
80203fbe: 33 05 a4 40  	sub	a0, s0, a0
80203fc2: 03 35 05 ce  	ld	a0, -800(a0)
80203fc6: 81 45        	li	a1, 0
80203fc8: 97 60 00 00  	auipc	ra, 6
80203fcc: e7 80 00 46  	jalr	1120(ra)
80203fd0: 13 06 10 08  	li	a2, 129
80203fd4: 09 65        	lui	a0, 2
80203fd6: 33 05 a4 40  	sub	a0, s0, a0
80203fda: 03 35 85 cd  	ld	a0, -808(a0)
80203fde: 81 45        	li	a1, 0
80203fe0: 97 60 00 00  	auipc	ra, 6
80203fe4: e7 80 80 44  	jalr	1096(ra)
80203fe8: 13 06 10 08  	li	a2, 129
80203fec: 09 65        	lui	a0, 2
80203fee: 33 05 a4 40  	sub	a0, s0, a0
80203ff2: 03 35 05 cd  	ld	a0, -816(a0)
80203ff6: 81 45        	li	a1, 0
80203ff8: 97 60 00 00  	auipc	ra, 6
80203ffc: e7 80 00 43  	jalr	1072(ra)
80204000: 13 06 10 08  	li	a2, 129
80204004: 09 65        	lui	a0, 2
80204006: 33 05 a4 40  	sub	a0, s0, a0
8020400a: 03 35 85 cc  	ld	a0, -824(a0)
8020400e: 81 45        	li	a1, 0
80204010: 97 60 00 00  	auipc	ra, 6
80204014: e7 80 80 41  	jalr	1048(ra)
80204018: 13 06 10 08  	li	a2, 129
8020401c: 09 65        	lui	a0, 2
8020401e: 33 05 a4 40  	sub	a0, s0, a0
80204022: 03 35 05 cc  	ld	a0, -832(a0)
80204026: 81 45        	li	a1, 0
80204028: 97 60 00 00  	auipc	ra, 6
8020402c: e7 80 00 40  	jalr	1024(ra)
80204030: 13 06 10 08  	li	a2, 129
80204034: 09 65        	lui	a0, 2
80204036: 33 05 a4 40  	sub	a0, s0, a0
8020403a: 03 35 85 cb  	ld	a0, -840(a0)
8020403e: 81 45        	li	a1, 0
80204040: 97 60 00 00  	auipc	ra, 6
80204044: e7 80 80 3e  	jalr	1000(ra)
80204048: 13 06 10 08  	li	a2, 129
8020404c: 09 65        	lui	a0, 2
8020404e: 33 05 a4 40  	sub	a0, s0, a0
80204052: 03 35 05 cb  	ld	a0, -848(a0)
80204056: 81 45        	li	a1, 0
80204058: 97 60 00 00  	auipc	ra, 6
8020405c: e7 80 00 3d  	jalr	976(ra)
80204060: 13 06 10 08  	li	a2, 129
80204064: 09 65        	lui	a0, 2
80204066: 33 05 a4 40  	sub	a0, s0, a0
8020406a: 03 35 85 ca  	ld	a0, -856(a0)
8020406e: 81 45        	li	a1, 0
80204070: 97 60 00 00  	auipc	ra, 6
80204074: e7 80 80 3b  	jalr	952(ra)
80204078: 13 06 10 08  	li	a2, 129
8020407c: 09 65        	lui	a0, 2
8020407e: 33 05 a4 40  	sub	a0, s0, a0
80204082: 03 35 05 ca  	ld	a0, -864(a0)
80204086: 81 45        	li	a1, 0
80204088: 97 60 00 00  	auipc	ra, 6
8020408c: e7 80 00 3a  	jalr	928(ra)
80204090: 13 06 10 08  	li	a2, 129
80204094: 09 65        	lui	a0, 2
80204096: 33 05 a4 40  	sub	a0, s0, a0
8020409a: 03 35 85 c9  	ld	a0, -872(a0)
8020409e: 81 45        	li	a1, 0
802040a0: 97 60 00 00  	auipc	ra, 6
802040a4: e7 80 80 38  	jalr	904(ra)
802040a8: 13 06 10 08  	li	a2, 129
802040ac: 09 65        	lui	a0, 2
802040ae: 33 05 a4 40  	sub	a0, s0, a0
802040b2: 03 35 05 c9  	ld	a0, -880(a0)
802040b6: 81 45        	li	a1, 0
802040b8: 97 60 00 00  	auipc	ra, 6
802040bc: e7 80 00 37  	jalr	880(ra)
802040c0: 13 06 10 08  	li	a2, 129
802040c4: 09 65        	lui	a0, 2
802040c6: 33 05 a4 40  	sub	a0, s0, a0
802040ca: 03 35 85 c8  	ld	a0, -888(a0)
802040ce: 81 45        	li	a1, 0
802040d0: 97 60 00 00  	auipc	ra, 6
802040d4: e7 80 80 35  	jalr	856(ra)
802040d8: 13 06 10 08  	li	a2, 129
802040dc: 09 65        	lui	a0, 2
802040de: 33 05 a4 40  	sub	a0, s0, a0
802040e2: 03 35 05 c8  	ld	a0, -896(a0)
802040e6: 81 45        	li	a1, 0
802040e8: 97 60 00 00  	auipc	ra, 6
802040ec: e7 80 00 34  	jalr	832(ra)
802040f0: 13 06 10 08  	li	a2, 129
802040f4: 09 65        	lui	a0, 2
802040f6: 33 05 a4 40  	sub	a0, s0, a0
802040fa: 03 35 85 c7  	ld	a0, -904(a0)
802040fe: 81 45        	li	a1, 0
80204100: 97 60 00 00  	auipc	ra, 6
80204104: e7 80 80 32  	jalr	808(ra)
80204108: 13 06 10 08  	li	a2, 129
8020410c: 09 65        	lui	a0, 2
8020410e: 33 05 a4 40  	sub	a0, s0, a0
80204112: 03 35 05 c7  	ld	a0, -912(a0)
80204116: 81 45        	li	a1, 0
80204118: 97 60 00 00  	auipc	ra, 6
8020411c: e7 80 00 31  	jalr	784(ra)
80204120: 13 06 10 08  	li	a2, 129
80204124: 09 65        	lui	a0, 2
80204126: 33 05 a4 40  	sub	a0, s0, a0
8020412a: 03 35 85 c6  	ld	a0, -920(a0)
8020412e: 81 45        	li	a1, 0
80204130: 97 60 00 00  	auipc	ra, 6
80204134: e7 80 80 2f  	jalr	760(ra)
80204138: 13 06 10 08  	li	a2, 129
8020413c: 09 65        	lui	a0, 2
8020413e: 33 05 a4 40  	sub	a0, s0, a0
80204142: 03 35 05 c6  	ld	a0, -928(a0)
80204146: 81 45        	li	a1, 0
80204148: 97 60 00 00  	auipc	ra, 6
8020414c: e7 80 00 2e  	jalr	736(ra)
80204150: 13 06 10 08  	li	a2, 129
80204154: 09 65        	lui	a0, 2
80204156: 33 05 a4 40  	sub	a0, s0, a0
8020415a: 03 35 85 c5  	ld	a0, -936(a0)
8020415e: 81 45        	li	a1, 0
80204160: 97 60 00 00  	auipc	ra, 6
80204164: e7 80 80 2c  	jalr	712(ra)
80204168: 13 06 10 08  	li	a2, 129
8020416c: 09 65        	lui	a0, 2
8020416e: 33 05 a4 40  	sub	a0, s0, a0
80204172: 03 35 05 c5  	ld	a0, -944(a0)
80204176: 81 45        	li	a1, 0
80204178: 97 60 00 00  	auipc	ra, 6
8020417c: e7 80 00 2b  	jalr	688(ra)
80204180: 13 06 10 08  	li	a2, 129
80204184: 09 65        	lui	a0, 2
80204186: 33 05 a4 40  	sub	a0, s0, a0
8020418a: 03 35 85 c4  	ld	a0, -952(a0)
8020418e: 81 45        	li	a1, 0
80204190: 97 60 00 00  	auipc	ra, 6
80204194: e7 80 80 29  	jalr	664(ra)
80204198: 13 06 10 08  	li	a2, 129
8020419c: 09 65        	lui	a0, 2
8020419e: 33 05 a4 40  	sub	a0, s0, a0
802041a2: 03 35 05 c4  	ld	a0, -960(a0)
802041a6: 81 45        	li	a1, 0
802041a8: 97 60 00 00  	auipc	ra, 6
802041ac: e7 80 00 28  	jalr	640(ra)
802041b0: 13 06 10 08  	li	a2, 129
802041b4: 09 65        	lui	a0, 2
802041b6: 33 05 a4 40  	sub	a0, s0, a0
802041ba: 03 35 85 c3  	ld	a0, -968(a0)
802041be: 81 45        	li	a1, 0
802041c0: 97 60 00 00  	auipc	ra, 6
802041c4: e7 80 80 26  	jalr	616(ra)
802041c8: 13 06 10 08  	li	a2, 129
802041cc: 09 65        	lui	a0, 2
802041ce: 33 05 a4 40  	sub	a0, s0, a0
802041d2: 03 35 05 c3  	ld	a0, -976(a0)
802041d6: 81 45        	li	a1, 0
802041d8: 97 60 00 00  	auipc	ra, 6
802041dc: e7 80 00 25  	jalr	592(ra)
802041e0: 13 06 10 08  	li	a2, 129
802041e4: 09 65        	lui	a0, 2
802041e6: 33 05 a4 40  	sub	a0, s0, a0
802041ea: 03 35 85 c2  	ld	a0, -984(a0)
802041ee: 81 45        	li	a1, 0
802041f0: 97 60 00 00  	auipc	ra, 6
802041f4: e7 80 80 23  	jalr	568(ra)
802041f8: 13 06 10 08  	li	a2, 129
802041fc: 09 65        	lui	a0, 2
802041fe: 33 05 a4 40  	sub	a0, s0, a0
80204202: 03 35 05 c2  	ld	a0, -992(a0)
80204206: 81 45        	li	a1, 0
80204208: 97 60 00 00  	auipc	ra, 6
8020420c: e7 80 00 22  	jalr	544(ra)
80204210: 13 06 10 08  	li	a2, 129
80204214: 09 65        	lui	a0, 2
80204216: 33 05 a4 40  	sub	a0, s0, a0
8020421a: 03 35 85 c1  	ld	a0, -1000(a0)
8020421e: 81 45        	li	a1, 0
80204220: 97 60 00 00  	auipc	ra, 6
80204224: e7 80 80 20  	jalr	520(ra)
80204228: 13 06 10 08  	li	a2, 129
8020422c: 09 65        	lui	a0, 2
8020422e: 33 05 a4 40  	sub	a0, s0, a0
80204232: 03 35 05 c1  	ld	a0, -1008(a0)
80204236: 81 45        	li	a1, 0
80204238: 97 60 00 00  	auipc	ra, 6
8020423c: e7 80 00 1f  	jalr	496(ra)
80204240: 13 06 10 08  	li	a2, 129
80204244: 09 65        	lui	a0, 2
80204246: 33 05 a4 40  	sub	a0, s0, a0
8020424a: 03 35 85 c0  	ld	a0, -1016(a0)
8020424e: 81 45        	li	a1, 0
80204250: 97 60 00 00  	auipc	ra, 6
80204254: e7 80 80 1d  	jalr	472(ra)
80204258: 13 06 10 08  	li	a2, 129
8020425c: 09 65        	lui	a0, 2
8020425e: 33 05 a4 40  	sub	a0, s0, a0
80204262: 03 35 05 c0  	ld	a0, -1024(a0)
80204266: 81 45        	li	a1, 0
80204268: 97 60 00 00  	auipc	ra, 6
8020426c: e7 80 00 1c  	jalr	448(ra)
80204270: 13 06 10 08  	li	a2, 129
80204274: 09 65        	lui	a0, 2
80204276: 33 05 a4 40  	sub	a0, s0, a0
8020427a: 03 35 85 bf  	ld	a0, -1032(a0)
8020427e: 81 45        	li	a1, 0
80204280: 97 60 00 00  	auipc	ra, 6
80204284: e7 80 80 1a  	jalr	424(ra)
80204288: 13 06 10 08  	li	a2, 129
8020428c: 09 65        	lui	a0, 2
8020428e: 33 05 a4 40  	sub	a0, s0, a0
80204292: 03 35 05 bf  	ld	a0, -1040(a0)
80204296: 81 45        	li	a1, 0
80204298: 97 60 00 00  	auipc	ra, 6
8020429c: e7 80 00 19  	jalr	400(ra)
802042a0: 13 85 04 01  	addi	a0, s1, 16
802042a4: 45 46        	li	a2, 17
802042a6: 26 06        	slli	a2, a2, 9
802042a8: 89 65        	lui	a1, 2
802042aa: 9b 85 85 27  	addiw	a1, a1, 632
802042ae: b3 05 b4 40  	sub	a1, s0, a1
802042b2: 97 60 00 00  	auipc	ra, 6
802042b6: e7 80 e0 17  	jalr	382(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802042ba: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802042be: 09 65        	lui	a0, 2
802042c0: 1b 05 85 28  	addiw	a0, a0, 648
802042c4: 33 05 a4 40  	sub	a0, s0, a0
802042c8: 23 04 05 00  	sb	zero, 8(a0)
802042cc: 0f 00 10 03  	fence	rw, w
802042d0: 23 b0 a4 01  	sd	s10, 0(s1)
802042d4: 09 65        	lui	a0, 2
802042d6: 1b 05 85 28  	addiw	a0, a0, 648
802042da: 33 05 a4 40  	sub	a0, s0, a0
802042de: 97 40 00 00  	auipc	ra, 4
802042e2: e7 80 a0 54  	jalr	1354(ra)
802042e6: 31 a8        	j	0x80204302 <.Lpcrel_hi62+0x10ba>
802042e8: 0f 00 00 01  	fence	w, 0
802042ec: 0f 00 30 03  	fence	rw, rw
802042f0: 88 60        	ld	a0, 0(s1)
802042f2: 0f 00 30 02  	fence	r, rw
;             match status {
802042f6: e3 09 b5 ff  	beq	a0, s11, 0x802042e8 <.Lpcrel_hi62+0x10a0>
802042fa: 63 04 a5 01  	beq	a0, s10, 0x80204302 <.Lpcrel_hi62+0x10ba>
802042fe: 6f 10 a0 54  	j	0x80205848 <.Lpcrel_hi90+0xa>
80204302: 63 64 7b 01  	bltu	s6, s7, 0x8020430a <.Lpcrel_hi62+0x10c2>
80204306: 6f 10 a0 4d  	j	0x802057e0 <.Lpcrel_hi72>
; 	&mut (CPUS.get_mut()[id])
8020430a: 33 05 8b 03  	mul	a0, s6, s8
8020430e: 26 95        	add	a0, a0, s1
80204310: 41 05        	addi	a0, a0, 16
;         if self.holding() {
80204312: 63 94 ac 00  	bne	s9, a0, 0x8020431a <.Lpcrel_hi62+0x10d2>
80204316: 6f 10 60 67  	j	0x8020598c <.Lpcrel_hi73>
8020431a: 13 f5 ca ff  	andi	a0, s5, -4
8020431e: af 25 05 14  	lr.w.aq	a1, (a0)
80204322: 33 f6 35 01  	and	a2, a1, s3
80204326: 09 ea        	bnez	a2, 0x80204338 <.Lpcrel_hi62+0x10f0>
80204328: 33 c6 b5 01  	xor	a2, a1, s11
8020432c: 33 76 36 01  	and	a2, a2, s3
80204330: 2d 8e        	xor	a2, a2, a1
80204332: 2f 26 c5 18  	sc.w	a2, a2, (a0)
80204336: 65 f6        	bnez	a2, 0x8020431e <.Lpcrel_hi62+0x10d6>
80204338: 13 f5 f5 0f  	andi	a0, a1, 255
;         while self
8020433c: 79 fd        	bnez	a0, 0x8020431a <.Lpcrel_hi62+0x10d2>
8020433e: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204342: 12 8b        	mv	s6, tp
80204344: 0f 00 30 03  	fence	rw, rw
80204348: 88 60        	ld	a0, 0(s1)
8020434a: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020434e: 63 16 05 66  	bnez	a0, 0x802049ba <.Lpcrel_hi62+0x1772>
80204352: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80204356: 63 12 05 66  	bnez	a0, 0x802049ba <.Lpcrel_hi62+0x1772>
8020435a: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
8020435e: f5 f9        	bnez	a1, 0x80204352 <.Lpcrel_hi62+0x110a>
80204360: 09 65        	lui	a0, 2
80204362: 1b 05 85 28  	addiw	a0, a0, 648
80204366: b3 0c a4 40  	sub	s9, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020436a: 23 b0 9c 00  	sd	s1, 0(s9)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
8020436e: 09 65        	lui	a0, 2
80204370: 1b 05 85 27  	addiw	a0, a0, 632
80204374: 33 05 a4 40  	sub	a0, s0, a0
80204378: 13 06 10 08  	li	a2, 129
8020437c: 81 45        	li	a1, 0
8020437e: 97 60 00 00  	auipc	ra, 6
80204382: e7 80 a0 0a  	jalr	170(ra)
80204386: 13 06 10 08  	li	a2, 129
8020438a: 09 65        	lui	a0, 2
8020438c: 1b 05 05 1f  	addiw	a0, a0, 496
80204390: 33 05 a4 40  	sub	a0, s0, a0
80204394: 81 45        	li	a1, 0
80204396: 97 60 00 00  	auipc	ra, 6
8020439a: e7 80 20 09  	jalr	146(ra)
8020439e: 13 06 10 08  	li	a2, 129
802043a2: 09 65        	lui	a0, 2
802043a4: 1b 05 85 16  	addiw	a0, a0, 360
802043a8: 33 05 a4 40  	sub	a0, s0, a0
802043ac: 81 45        	li	a1, 0
802043ae: 97 60 00 00  	auipc	ra, 6
802043b2: e7 80 a0 07  	jalr	122(ra)
802043b6: 13 06 10 08  	li	a2, 129
802043ba: 09 65        	lui	a0, 2
802043bc: 1b 05 05 0e  	addiw	a0, a0, 224
802043c0: 33 05 a4 40  	sub	a0, s0, a0
802043c4: 81 45        	li	a1, 0
802043c6: 97 60 00 00  	auipc	ra, 6
802043ca: e7 80 20 06  	jalr	98(ra)
802043ce: 13 06 10 08  	li	a2, 129
802043d2: 09 65        	lui	a0, 2
802043d4: 1b 05 85 05  	addiw	a0, a0, 88
802043d8: 33 05 a4 40  	sub	a0, s0, a0
802043dc: 81 45        	li	a1, 0
802043de: 97 60 00 00  	auipc	ra, 6
802043e2: e7 80 a0 04  	jalr	74(ra)
802043e6: 13 06 10 08  	li	a2, 129
802043ea: 09 65        	lui	a0, 2
802043ec: 1b 05 05 fd  	addiw	a0, a0, -48
802043f0: 33 05 a4 40  	sub	a0, s0, a0
802043f4: 81 45        	li	a1, 0
802043f6: 97 60 00 00  	auipc	ra, 6
802043fa: e7 80 20 03  	jalr	50(ra)
802043fe: 13 06 10 08  	li	a2, 129
80204402: 09 65        	lui	a0, 2
80204404: 1b 05 85 f4  	addiw	a0, a0, -184
80204408: 33 05 a4 40  	sub	a0, s0, a0
8020440c: 81 45        	li	a1, 0
8020440e: 97 60 00 00  	auipc	ra, 6
80204412: e7 80 a0 01  	jalr	26(ra)
80204416: 13 06 10 08  	li	a2, 129
8020441a: 09 65        	lui	a0, 2
8020441c: 1b 05 05 ec  	addiw	a0, a0, -320
80204420: 33 05 a4 40  	sub	a0, s0, a0
80204424: 81 45        	li	a1, 0
80204426: 97 60 00 00  	auipc	ra, 6
8020442a: e7 80 20 00  	jalr	2(ra)
8020442e: 13 06 10 08  	li	a2, 129
80204432: 09 65        	lui	a0, 2
80204434: 1b 05 85 e3  	addiw	a0, a0, -456
80204438: 33 05 a4 40  	sub	a0, s0, a0
8020443c: 81 45        	li	a1, 0
8020443e: 97 60 00 00  	auipc	ra, 6
80204442: e7 80 a0 fe  	jalr	-22(ra)
80204446: 13 06 10 08  	li	a2, 129
8020444a: 09 65        	lui	a0, 2
8020444c: 1b 05 05 db  	addiw	a0, a0, -592
80204450: 33 05 a4 40  	sub	a0, s0, a0
80204454: 81 45        	li	a1, 0
80204456: 97 60 00 00  	auipc	ra, 6
8020445a: e7 80 20 fd  	jalr	-46(ra)
8020445e: 13 06 10 08  	li	a2, 129
80204462: 09 65        	lui	a0, 2
80204464: 1b 05 85 d2  	addiw	a0, a0, -728
80204468: 33 05 a4 40  	sub	a0, s0, a0
8020446c: 81 45        	li	a1, 0
8020446e: 97 60 00 00  	auipc	ra, 6
80204472: e7 80 a0 fb  	jalr	-70(ra)
80204476: 13 06 10 08  	li	a2, 129
8020447a: 09 65        	lui	a0, 2
8020447c: 1b 05 05 ca  	addiw	a0, a0, -864
80204480: 33 05 a4 40  	sub	a0, s0, a0
80204484: 81 45        	li	a1, 0
80204486: 97 60 00 00  	auipc	ra, 6
8020448a: e7 80 20 fa  	jalr	-94(ra)
8020448e: 13 06 10 08  	li	a2, 129
80204492: 09 65        	lui	a0, 2
80204494: 1b 05 85 c1  	addiw	a0, a0, -1000
80204498: 33 05 a4 40  	sub	a0, s0, a0
8020449c: 81 45        	li	a1, 0
8020449e: 97 60 00 00  	auipc	ra, 6
802044a2: e7 80 a0 f8  	jalr	-118(ra)
802044a6: 13 06 10 08  	li	a2, 129
802044aa: 09 65        	lui	a0, 2
802044ac: 1b 05 05 b9  	addiw	a0, a0, -1136
802044b0: 33 05 a4 40  	sub	a0, s0, a0
802044b4: 81 45        	li	a1, 0
802044b6: 97 60 00 00  	auipc	ra, 6
802044ba: e7 80 20 f7  	jalr	-142(ra)
802044be: 13 06 10 08  	li	a2, 129
802044c2: 09 65        	lui	a0, 2
802044c4: 1b 05 85 b0  	addiw	a0, a0, -1272
802044c8: 33 05 a4 40  	sub	a0, s0, a0
802044cc: 81 45        	li	a1, 0
802044ce: 97 60 00 00  	auipc	ra, 6
802044d2: e7 80 a0 f5  	jalr	-166(ra)
802044d6: 13 06 10 08  	li	a2, 129
802044da: 09 65        	lui	a0, 2
802044dc: 1b 05 05 a8  	addiw	a0, a0, -1408
802044e0: 33 05 a4 40  	sub	a0, s0, a0
802044e4: 81 45        	li	a1, 0
802044e6: 97 60 00 00  	auipc	ra, 6
802044ea: e7 80 20 f4  	jalr	-190(ra)
802044ee: 13 06 10 08  	li	a2, 129
802044f2: 09 65        	lui	a0, 2
802044f4: 33 05 a4 40  	sub	a0, s0, a0
802044f8: 03 35 85 d6  	ld	a0, -664(a0)
802044fc: 81 45        	li	a1, 0
802044fe: 97 60 00 00  	auipc	ra, 6
80204502: e7 80 a0 f2  	jalr	-214(ra)
80204506: 13 06 10 08  	li	a2, 129
8020450a: 09 65        	lui	a0, 2
8020450c: 33 05 a4 40  	sub	a0, s0, a0
80204510: 03 35 05 d6  	ld	a0, -672(a0)
80204514: 81 45        	li	a1, 0
80204516: 97 60 00 00  	auipc	ra, 6
8020451a: e7 80 20 f1  	jalr	-238(ra)
8020451e: 13 06 10 08  	li	a2, 129
80204522: 09 65        	lui	a0, 2
80204524: 33 05 a4 40  	sub	a0, s0, a0
80204528: 03 35 85 d5  	ld	a0, -680(a0)
8020452c: 81 45        	li	a1, 0
8020452e: 97 60 00 00  	auipc	ra, 6
80204532: e7 80 a0 ef  	jalr	-262(ra)
80204536: 13 06 10 08  	li	a2, 129
8020453a: 09 65        	lui	a0, 2
8020453c: 33 05 a4 40  	sub	a0, s0, a0
80204540: 03 35 05 d5  	ld	a0, -688(a0)
80204544: 81 45        	li	a1, 0
80204546: 97 60 00 00  	auipc	ra, 6
8020454a: e7 80 20 ee  	jalr	-286(ra)
8020454e: 13 06 10 08  	li	a2, 129
80204552: 09 65        	lui	a0, 2
80204554: 33 05 a4 40  	sub	a0, s0, a0
80204558: 03 35 85 d4  	ld	a0, -696(a0)
8020455c: 81 45        	li	a1, 0
8020455e: 97 60 00 00  	auipc	ra, 6
80204562: e7 80 a0 ec  	jalr	-310(ra)
80204566: 13 06 10 08  	li	a2, 129
8020456a: 09 65        	lui	a0, 2
8020456c: 33 05 a4 40  	sub	a0, s0, a0
80204570: 03 35 05 d4  	ld	a0, -704(a0)
80204574: 81 45        	li	a1, 0
80204576: 97 60 00 00  	auipc	ra, 6
8020457a: e7 80 20 eb  	jalr	-334(ra)
8020457e: 13 06 10 08  	li	a2, 129
80204582: 09 65        	lui	a0, 2
80204584: 33 05 a4 40  	sub	a0, s0, a0
80204588: 03 35 85 d3  	ld	a0, -712(a0)
8020458c: 81 45        	li	a1, 0
8020458e: 97 60 00 00  	auipc	ra, 6
80204592: e7 80 a0 e9  	jalr	-358(ra)
80204596: 13 06 10 08  	li	a2, 129
8020459a: 09 65        	lui	a0, 2
8020459c: 33 05 a4 40  	sub	a0, s0, a0
802045a0: 03 35 05 d3  	ld	a0, -720(a0)
802045a4: 81 45        	li	a1, 0
802045a6: 97 60 00 00  	auipc	ra, 6
802045aa: e7 80 20 e8  	jalr	-382(ra)
802045ae: 13 06 10 08  	li	a2, 129
802045b2: 09 65        	lui	a0, 2
802045b4: 33 05 a4 40  	sub	a0, s0, a0
802045b8: 03 35 85 d2  	ld	a0, -728(a0)
802045bc: 81 45        	li	a1, 0
802045be: 97 60 00 00  	auipc	ra, 6
802045c2: e7 80 a0 e6  	jalr	-406(ra)
802045c6: 13 06 10 08  	li	a2, 129
802045ca: 09 65        	lui	a0, 2
802045cc: 33 05 a4 40  	sub	a0, s0, a0
802045d0: 03 35 05 d2  	ld	a0, -736(a0)
802045d4: 81 45        	li	a1, 0
802045d6: 97 60 00 00  	auipc	ra, 6
802045da: e7 80 20 e5  	jalr	-430(ra)
802045de: 13 06 10 08  	li	a2, 129
802045e2: 09 65        	lui	a0, 2
802045e4: 33 05 a4 40  	sub	a0, s0, a0
802045e8: 03 35 85 d1  	ld	a0, -744(a0)
802045ec: 81 45        	li	a1, 0
802045ee: 97 60 00 00  	auipc	ra, 6
802045f2: e7 80 a0 e3  	jalr	-454(ra)
802045f6: 13 06 10 08  	li	a2, 129
802045fa: 09 65        	lui	a0, 2
802045fc: 33 05 a4 40  	sub	a0, s0, a0
80204600: 03 35 05 d1  	ld	a0, -752(a0)
80204604: 81 45        	li	a1, 0
80204606: 97 60 00 00  	auipc	ra, 6
8020460a: e7 80 20 e2  	jalr	-478(ra)
8020460e: 13 06 10 08  	li	a2, 129
80204612: 09 65        	lui	a0, 2
80204614: 33 05 a4 40  	sub	a0, s0, a0
80204618: 03 35 85 d0  	ld	a0, -760(a0)
8020461c: 81 45        	li	a1, 0
8020461e: 97 60 00 00  	auipc	ra, 6
80204622: e7 80 a0 e0  	jalr	-502(ra)
80204626: 13 06 10 08  	li	a2, 129
8020462a: 09 65        	lui	a0, 2
8020462c: 33 05 a4 40  	sub	a0, s0, a0
80204630: 03 35 05 d0  	ld	a0, -768(a0)
80204634: 81 45        	li	a1, 0
80204636: 97 60 00 00  	auipc	ra, 6
8020463a: e7 80 20 df  	jalr	-526(ra)
8020463e: 13 06 10 08  	li	a2, 129
80204642: 09 65        	lui	a0, 2
80204644: 33 05 a4 40  	sub	a0, s0, a0
80204648: 03 35 85 cf  	ld	a0, -776(a0)
8020464c: 81 45        	li	a1, 0
8020464e: 97 60 00 00  	auipc	ra, 6
80204652: e7 80 a0 dd  	jalr	-550(ra)
80204656: 13 06 10 08  	li	a2, 129
8020465a: 09 65        	lui	a0, 2
8020465c: 33 05 a4 40  	sub	a0, s0, a0
80204660: 03 35 05 cf  	ld	a0, -784(a0)
80204664: 81 45        	li	a1, 0
80204666: 97 60 00 00  	auipc	ra, 6
8020466a: e7 80 20 dc  	jalr	-574(ra)
8020466e: 13 06 10 08  	li	a2, 129
80204672: 09 65        	lui	a0, 2
80204674: 33 05 a4 40  	sub	a0, s0, a0
80204678: 03 35 85 ce  	ld	a0, -792(a0)
8020467c: 81 45        	li	a1, 0
8020467e: 97 60 00 00  	auipc	ra, 6
80204682: e7 80 a0 da  	jalr	-598(ra)
80204686: 13 06 10 08  	li	a2, 129
8020468a: 09 65        	lui	a0, 2
8020468c: 33 05 a4 40  	sub	a0, s0, a0
80204690: 03 35 05 ce  	ld	a0, -800(a0)
80204694: 81 45        	li	a1, 0
80204696: 97 60 00 00  	auipc	ra, 6
8020469a: e7 80 20 d9  	jalr	-622(ra)
8020469e: 13 06 10 08  	li	a2, 129
802046a2: 09 65        	lui	a0, 2
802046a4: 33 05 a4 40  	sub	a0, s0, a0
802046a8: 03 35 85 cd  	ld	a0, -808(a0)
802046ac: 81 45        	li	a1, 0
802046ae: 97 60 00 00  	auipc	ra, 6
802046b2: e7 80 a0 d7  	jalr	-646(ra)
802046b6: 13 06 10 08  	li	a2, 129
802046ba: 09 65        	lui	a0, 2
802046bc: 33 05 a4 40  	sub	a0, s0, a0
802046c0: 03 35 05 cd  	ld	a0, -816(a0)
802046c4: 81 45        	li	a1, 0
802046c6: 97 60 00 00  	auipc	ra, 6
802046ca: e7 80 20 d6  	jalr	-670(ra)
802046ce: 13 06 10 08  	li	a2, 129
802046d2: 09 65        	lui	a0, 2
802046d4: 33 05 a4 40  	sub	a0, s0, a0
802046d8: 03 35 85 cc  	ld	a0, -824(a0)
802046dc: 81 45        	li	a1, 0
802046de: 97 60 00 00  	auipc	ra, 6
802046e2: e7 80 a0 d4  	jalr	-694(ra)
802046e6: 13 06 10 08  	li	a2, 129
802046ea: 09 65        	lui	a0, 2
802046ec: 33 05 a4 40  	sub	a0, s0, a0
802046f0: 03 35 05 cc  	ld	a0, -832(a0)
802046f4: 81 45        	li	a1, 0
802046f6: 97 60 00 00  	auipc	ra, 6
802046fa: e7 80 20 d3  	jalr	-718(ra)
802046fe: 13 06 10 08  	li	a2, 129
80204702: 09 65        	lui	a0, 2
80204704: 33 05 a4 40  	sub	a0, s0, a0
80204708: 03 35 85 cb  	ld	a0, -840(a0)
8020470c: 81 45        	li	a1, 0
8020470e: 97 60 00 00  	auipc	ra, 6
80204712: e7 80 a0 d1  	jalr	-742(ra)
80204716: 13 06 10 08  	li	a2, 129
8020471a: 09 65        	lui	a0, 2
8020471c: 33 05 a4 40  	sub	a0, s0, a0
80204720: 03 35 05 cb  	ld	a0, -848(a0)
80204724: 81 45        	li	a1, 0
80204726: 97 60 00 00  	auipc	ra, 6
8020472a: e7 80 20 d0  	jalr	-766(ra)
8020472e: 13 06 10 08  	li	a2, 129
80204732: 09 65        	lui	a0, 2
80204734: 33 05 a4 40  	sub	a0, s0, a0
80204738: 03 35 85 ca  	ld	a0, -856(a0)
8020473c: 81 45        	li	a1, 0
8020473e: 97 60 00 00  	auipc	ra, 6
80204742: e7 80 a0 ce  	jalr	-790(ra)
80204746: 13 06 10 08  	li	a2, 129
8020474a: 09 65        	lui	a0, 2
8020474c: 33 05 a4 40  	sub	a0, s0, a0
80204750: 03 35 05 ca  	ld	a0, -864(a0)
80204754: 81 45        	li	a1, 0
80204756: 97 60 00 00  	auipc	ra, 6
8020475a: e7 80 20 cd  	jalr	-814(ra)
8020475e: 13 06 10 08  	li	a2, 129
80204762: 09 65        	lui	a0, 2
80204764: 33 05 a4 40  	sub	a0, s0, a0
80204768: 03 35 85 c9  	ld	a0, -872(a0)
8020476c: 81 45        	li	a1, 0
8020476e: 97 60 00 00  	auipc	ra, 6
80204772: e7 80 a0 cb  	jalr	-838(ra)
80204776: 13 06 10 08  	li	a2, 129
8020477a: 09 65        	lui	a0, 2
8020477c: 33 05 a4 40  	sub	a0, s0, a0
80204780: 03 35 05 c9  	ld	a0, -880(a0)
80204784: 81 45        	li	a1, 0
80204786: 97 60 00 00  	auipc	ra, 6
8020478a: e7 80 20 ca  	jalr	-862(ra)
8020478e: 13 06 10 08  	li	a2, 129
80204792: 09 65        	lui	a0, 2
80204794: 33 05 a4 40  	sub	a0, s0, a0
80204798: 03 35 85 c8  	ld	a0, -888(a0)
8020479c: 81 45        	li	a1, 0
8020479e: 97 60 00 00  	auipc	ra, 6
802047a2: e7 80 a0 c8  	jalr	-886(ra)
802047a6: 13 06 10 08  	li	a2, 129
802047aa: 09 65        	lui	a0, 2
802047ac: 33 05 a4 40  	sub	a0, s0, a0
802047b0: 03 35 05 c8  	ld	a0, -896(a0)
802047b4: 81 45        	li	a1, 0
802047b6: 97 60 00 00  	auipc	ra, 6
802047ba: e7 80 20 c7  	jalr	-910(ra)
802047be: 13 06 10 08  	li	a2, 129
802047c2: 09 65        	lui	a0, 2
802047c4: 33 05 a4 40  	sub	a0, s0, a0
802047c8: 03 35 85 c7  	ld	a0, -904(a0)
802047cc: 81 45        	li	a1, 0
802047ce: 97 60 00 00  	auipc	ra, 6
802047d2: e7 80 a0 c5  	jalr	-934(ra)
802047d6: 13 06 10 08  	li	a2, 129
802047da: 09 65        	lui	a0, 2
802047dc: 33 05 a4 40  	sub	a0, s0, a0
802047e0: 03 35 05 c7  	ld	a0, -912(a0)
802047e4: 81 45        	li	a1, 0
802047e6: 97 60 00 00  	auipc	ra, 6
802047ea: e7 80 20 c4  	jalr	-958(ra)
802047ee: 13 06 10 08  	li	a2, 129
802047f2: 09 65        	lui	a0, 2
802047f4: 33 05 a4 40  	sub	a0, s0, a0
802047f8: 03 35 85 c6  	ld	a0, -920(a0)
802047fc: 81 45        	li	a1, 0
802047fe: 97 60 00 00  	auipc	ra, 6
80204802: e7 80 a0 c2  	jalr	-982(ra)
80204806: 13 06 10 08  	li	a2, 129
8020480a: 09 65        	lui	a0, 2
8020480c: 33 05 a4 40  	sub	a0, s0, a0
80204810: 03 35 05 c6  	ld	a0, -928(a0)
80204814: 81 45        	li	a1, 0
80204816: 97 60 00 00  	auipc	ra, 6
8020481a: e7 80 20 c1  	jalr	-1006(ra)
8020481e: 13 06 10 08  	li	a2, 129
80204822: 09 65        	lui	a0, 2
80204824: 33 05 a4 40  	sub	a0, s0, a0
80204828: 03 35 85 c5  	ld	a0, -936(a0)
8020482c: 81 45        	li	a1, 0
8020482e: 97 60 00 00  	auipc	ra, 6
80204832: e7 80 a0 bf  	jalr	-1030(ra)
80204836: 13 06 10 08  	li	a2, 129
8020483a: 09 65        	lui	a0, 2
8020483c: 33 05 a4 40  	sub	a0, s0, a0
80204840: 03 35 05 c5  	ld	a0, -944(a0)
80204844: 81 45        	li	a1, 0
80204846: 97 60 00 00  	auipc	ra, 6
8020484a: e7 80 20 be  	jalr	-1054(ra)
8020484e: 13 06 10 08  	li	a2, 129
80204852: 09 65        	lui	a0, 2
80204854: 33 05 a4 40  	sub	a0, s0, a0
80204858: 03 35 85 c4  	ld	a0, -952(a0)
8020485c: 81 45        	li	a1, 0
8020485e: 97 60 00 00  	auipc	ra, 6
80204862: e7 80 a0 bc  	jalr	-1078(ra)
80204866: 13 06 10 08  	li	a2, 129
8020486a: 09 65        	lui	a0, 2
8020486c: 33 05 a4 40  	sub	a0, s0, a0
80204870: 03 35 05 c4  	ld	a0, -960(a0)
80204874: 81 45        	li	a1, 0
80204876: 97 60 00 00  	auipc	ra, 6
8020487a: e7 80 20 bb  	jalr	-1102(ra)
8020487e: 13 06 10 08  	li	a2, 129
80204882: 09 65        	lui	a0, 2
80204884: 33 05 a4 40  	sub	a0, s0, a0
80204888: 03 35 85 c3  	ld	a0, -968(a0)
8020488c: 81 45        	li	a1, 0
8020488e: 97 60 00 00  	auipc	ra, 6
80204892: e7 80 a0 b9  	jalr	-1126(ra)
80204896: 13 06 10 08  	li	a2, 129
8020489a: 09 65        	lui	a0, 2
8020489c: 33 05 a4 40  	sub	a0, s0, a0
802048a0: 03 35 05 c3  	ld	a0, -976(a0)
802048a4: 81 45        	li	a1, 0
802048a6: 97 60 00 00  	auipc	ra, 6
802048aa: e7 80 20 b8  	jalr	-1150(ra)
802048ae: 13 06 10 08  	li	a2, 129
802048b2: 09 65        	lui	a0, 2
802048b4: 33 05 a4 40  	sub	a0, s0, a0
802048b8: 03 35 85 c2  	ld	a0, -984(a0)
802048bc: 81 45        	li	a1, 0
802048be: 97 60 00 00  	auipc	ra, 6
802048c2: e7 80 a0 b6  	jalr	-1174(ra)
802048c6: 13 06 10 08  	li	a2, 129
802048ca: 09 65        	lui	a0, 2
802048cc: 33 05 a4 40  	sub	a0, s0, a0
802048d0: 03 35 05 c2  	ld	a0, -992(a0)
802048d4: 81 45        	li	a1, 0
802048d6: 97 60 00 00  	auipc	ra, 6
802048da: e7 80 20 b5  	jalr	-1198(ra)
802048de: 13 06 10 08  	li	a2, 129
802048e2: 09 65        	lui	a0, 2
802048e4: 33 05 a4 40  	sub	a0, s0, a0
802048e8: 03 35 85 c1  	ld	a0, -1000(a0)
802048ec: 81 45        	li	a1, 0
802048ee: 97 60 00 00  	auipc	ra, 6
802048f2: e7 80 a0 b3  	jalr	-1222(ra)
802048f6: 13 06 10 08  	li	a2, 129
802048fa: 09 65        	lui	a0, 2
802048fc: 33 05 a4 40  	sub	a0, s0, a0
80204900: 03 35 05 c1  	ld	a0, -1008(a0)
80204904: 81 45        	li	a1, 0
80204906: 97 60 00 00  	auipc	ra, 6
8020490a: e7 80 20 b2  	jalr	-1246(ra)
8020490e: 13 06 10 08  	li	a2, 129
80204912: 09 65        	lui	a0, 2
80204914: 33 05 a4 40  	sub	a0, s0, a0
80204918: 03 35 85 c0  	ld	a0, -1016(a0)
8020491c: 81 45        	li	a1, 0
8020491e: 97 60 00 00  	auipc	ra, 6
80204922: e7 80 a0 b0  	jalr	-1270(ra)
80204926: 13 06 10 08  	li	a2, 129
8020492a: 09 65        	lui	a0, 2
8020492c: 33 05 a4 40  	sub	a0, s0, a0
80204930: 03 35 05 c0  	ld	a0, -1024(a0)
80204934: 81 45        	li	a1, 0
80204936: 97 60 00 00  	auipc	ra, 6
8020493a: e7 80 20 af  	jalr	-1294(ra)
8020493e: 13 06 10 08  	li	a2, 129
80204942: 09 65        	lui	a0, 2
80204944: 33 05 a4 40  	sub	a0, s0, a0
80204948: 03 35 85 bf  	ld	a0, -1032(a0)
8020494c: 81 45        	li	a1, 0
8020494e: 97 60 00 00  	auipc	ra, 6
80204952: e7 80 a0 ad  	jalr	-1318(ra)
80204956: 13 06 10 08  	li	a2, 129
8020495a: 09 65        	lui	a0, 2
8020495c: 33 05 a4 40  	sub	a0, s0, a0
80204960: 03 35 05 bf  	ld	a0, -1040(a0)
80204964: 81 45        	li	a1, 0
80204966: 97 60 00 00  	auipc	ra, 6
8020496a: e7 80 20 ac  	jalr	-1342(ra)
8020496e: 13 85 04 01  	addi	a0, s1, 16
80204972: 45 46        	li	a2, 17
80204974: 26 06        	slli	a2, a2, 9
80204976: 89 65        	lui	a1, 2
80204978: 9b 85 85 27  	addiw	a1, a1, 632
8020497c: b3 05 b4 40  	sub	a1, s0, a1
80204980: 97 60 00 00  	auipc	ra, 6
80204984: e7 80 00 ab  	jalr	-1360(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80204988: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
8020498c: 23 84 0c 00  	sb	zero, 8(s9)
80204990: 0f 00 10 03  	fence	rw, w
80204994: 23 b0 a4 01  	sd	s10, 0(s1)
80204998: 09 65        	lui	a0, 2
8020499a: 1b 05 85 28  	addiw	a0, a0, 648
8020499e: 33 05 a4 40  	sub	a0, s0, a0
802049a2: 97 40 00 00  	auipc	ra, 4
802049a6: e7 80 60 e8  	jalr	-378(ra)
802049aa: 21 a8        	j	0x802049c2 <.Lpcrel_hi62+0x177a>
802049ac: 0f 00 00 01  	fence	w, 0
802049b0: 0f 00 30 03  	fence	rw, rw
802049b4: 88 60        	ld	a0, 0(s1)
802049b6: 0f 00 30 02  	fence	r, rw
;             match status {
802049ba: e3 09 b5 ff  	beq	a0, s11, 0x802049ac <.Lpcrel_hi62+0x1764>
802049be: e3 17 a5 65  	bne	a0, s10, 0x8020580c <.Lpcrel_hi64+0xa>
802049c2: e3 7b 7b 5d  	bgeu	s6, s7, 0x80205798 <.Lpcrel_hi80>
; #[derive(PartialEq, Eq, Clone, Copy)]
802049c6: 03 45 09 17  	lbu	a0, 368(s2)
; 	&mut (CPUS.get_mut()[id])
802049ca: b3 05 8b 03  	mul	a1, s6, s8
802049ce: a6 95        	add	a1, a1, s1
802049d0: c1 05        	addi	a1, a1, 16
;         self.cpu = mycpu();
802049d2: 23 38 b9 08  	sd	a1, 144(s2)
;             if p.state == ProcState::Runable {
802049d6: 8d 45        	li	a1, 3
802049d8: 63 1b b5 02  	bne	a0, a1, 0x80204a0e <.Lpcrel_hi62+0x17c6>
802049dc: 13 05 09 17  	addi	a0, s2, 368
;                 p.state = ProcState::Running;
802049e0: 91 45        	li	a1, 4
802049e2: 23 00 b5 00  	sb	a1, 0(a0)
802049e6: 09 65        	lui	a0, 2
802049e8: 33 05 a4 40  	sub	a0, s0, a0
802049ec: 03 3b 85 be  	ld	s6, -1048(a0)
;                 c.proc = p;
802049f0: 23 30 2b 01  	sd	s2, 0(s6)
;                     switch(&mut c.context, &p.context);
802049f4: 93 05 09 0a  	addi	a1, s2, 160
802049f8: 09 65        	lui	a0, 2
802049fa: 33 05 a4 40  	sub	a0, s0, a0
802049fe: 03 35 05 be  	ld	a0, -1056(a0)
80204a02: 97 20 00 00  	auipc	ra, 2
80204a06: e7 80 e0 95  	jalr	-1698(ra)
;                 c.proc = null_mut();
80204a0a: 23 30 0b 00  	sd	zero, 0(s6)
80204a0e: 03 85 0a 00  	lb	a0, 0(s5)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204a12: e3 0d 05 6a  	beqz	a0, 0x802058cc <.Lpcrel_hi86>
80204a16: 13 09 09 09  	addi	s2, s2, 144
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204a1a: 83 3c 09 00  	ld	s9, 0(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204a1e: 12 8b        	mv	s6, tp
80204a20: 0f 00 30 03  	fence	rw, rw
80204a24: 88 60        	ld	a0, 0(s1)
80204a26: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204a2a: 63 1a 05 66  	bnez	a0, 0x8020509e <.Lpcrel_hi62+0x1e56>
80204a2e: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80204a32: 63 16 05 66  	bnez	a0, 0x8020509e <.Lpcrel_hi62+0x1e56>
80204a36: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80204a3a: f5 f9        	bnez	a1, 0x80204a2e <.Lpcrel_hi62+0x17e6>
80204a3c: 09 65        	lui	a0, 2
80204a3e: 1b 05 85 28  	addiw	a0, a0, 648
80204a42: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80204a46: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80204a48: 09 65        	lui	a0, 2
80204a4a: 1b 05 85 27  	addiw	a0, a0, 632
80204a4e: 33 05 a4 40  	sub	a0, s0, a0
80204a52: 13 06 10 08  	li	a2, 129
80204a56: 81 45        	li	a1, 0
80204a58: 97 60 00 00  	auipc	ra, 6
80204a5c: e7 80 00 9d  	jalr	-1584(ra)
80204a60: 13 06 10 08  	li	a2, 129
80204a64: 09 65        	lui	a0, 2
80204a66: 1b 05 05 1f  	addiw	a0, a0, 496
80204a6a: 33 05 a4 40  	sub	a0, s0, a0
80204a6e: 81 45        	li	a1, 0
80204a70: 97 60 00 00  	auipc	ra, 6
80204a74: e7 80 80 9b  	jalr	-1608(ra)
80204a78: 13 06 10 08  	li	a2, 129
80204a7c: 09 65        	lui	a0, 2
80204a7e: 1b 05 85 16  	addiw	a0, a0, 360
80204a82: 33 05 a4 40  	sub	a0, s0, a0
80204a86: 81 45        	li	a1, 0
80204a88: 97 60 00 00  	auipc	ra, 6
80204a8c: e7 80 00 9a  	jalr	-1632(ra)
80204a90: 13 06 10 08  	li	a2, 129
80204a94: 09 65        	lui	a0, 2
80204a96: 1b 05 05 0e  	addiw	a0, a0, 224
80204a9a: 33 05 a4 40  	sub	a0, s0, a0
80204a9e: 81 45        	li	a1, 0
80204aa0: 97 60 00 00  	auipc	ra, 6
80204aa4: e7 80 80 98  	jalr	-1656(ra)
80204aa8: 13 06 10 08  	li	a2, 129
80204aac: 09 65        	lui	a0, 2
80204aae: 1b 05 85 05  	addiw	a0, a0, 88
80204ab2: 33 05 a4 40  	sub	a0, s0, a0
80204ab6: 81 45        	li	a1, 0
80204ab8: 97 60 00 00  	auipc	ra, 6
80204abc: e7 80 00 97  	jalr	-1680(ra)
80204ac0: 13 06 10 08  	li	a2, 129
80204ac4: 09 65        	lui	a0, 2
80204ac6: 1b 05 05 fd  	addiw	a0, a0, -48
80204aca: 33 05 a4 40  	sub	a0, s0, a0
80204ace: 81 45        	li	a1, 0
80204ad0: 97 60 00 00  	auipc	ra, 6
80204ad4: e7 80 80 95  	jalr	-1704(ra)
80204ad8: 13 06 10 08  	li	a2, 129
80204adc: 09 65        	lui	a0, 2
80204ade: 1b 05 85 f4  	addiw	a0, a0, -184
80204ae2: 33 05 a4 40  	sub	a0, s0, a0
80204ae6: 81 45        	li	a1, 0
80204ae8: 97 60 00 00  	auipc	ra, 6
80204aec: e7 80 00 94  	jalr	-1728(ra)
80204af0: 13 06 10 08  	li	a2, 129
80204af4: 09 65        	lui	a0, 2
80204af6: 1b 05 05 ec  	addiw	a0, a0, -320
80204afa: 33 05 a4 40  	sub	a0, s0, a0
80204afe: 81 45        	li	a1, 0
80204b00: 97 60 00 00  	auipc	ra, 6
80204b04: e7 80 80 92  	jalr	-1752(ra)
80204b08: 13 06 10 08  	li	a2, 129
80204b0c: 09 65        	lui	a0, 2
80204b0e: 1b 05 85 e3  	addiw	a0, a0, -456
80204b12: 33 05 a4 40  	sub	a0, s0, a0
80204b16: 81 45        	li	a1, 0
80204b18: 97 60 00 00  	auipc	ra, 6
80204b1c: e7 80 00 91  	jalr	-1776(ra)
80204b20: 13 06 10 08  	li	a2, 129
80204b24: 09 65        	lui	a0, 2
80204b26: 1b 05 05 db  	addiw	a0, a0, -592
80204b2a: 33 05 a4 40  	sub	a0, s0, a0
80204b2e: 81 45        	li	a1, 0
80204b30: 97 60 00 00  	auipc	ra, 6
80204b34: e7 80 80 8f  	jalr	-1800(ra)
80204b38: 13 06 10 08  	li	a2, 129
80204b3c: 09 65        	lui	a0, 2
80204b3e: 1b 05 85 d2  	addiw	a0, a0, -728
80204b42: 33 05 a4 40  	sub	a0, s0, a0
80204b46: 81 45        	li	a1, 0
80204b48: 97 60 00 00  	auipc	ra, 6
80204b4c: e7 80 00 8e  	jalr	-1824(ra)
80204b50: 13 06 10 08  	li	a2, 129
80204b54: 09 65        	lui	a0, 2
80204b56: 1b 05 05 ca  	addiw	a0, a0, -864
80204b5a: 33 05 a4 40  	sub	a0, s0, a0
80204b5e: 81 45        	li	a1, 0
80204b60: 97 60 00 00  	auipc	ra, 6
80204b64: e7 80 80 8c  	jalr	-1848(ra)
80204b68: 13 06 10 08  	li	a2, 129
80204b6c: 09 65        	lui	a0, 2
80204b6e: 1b 05 85 c1  	addiw	a0, a0, -1000
80204b72: 33 05 a4 40  	sub	a0, s0, a0
80204b76: 81 45        	li	a1, 0
80204b78: 97 60 00 00  	auipc	ra, 6
80204b7c: e7 80 00 8b  	jalr	-1872(ra)
80204b80: 13 06 10 08  	li	a2, 129
80204b84: 09 65        	lui	a0, 2
80204b86: 1b 05 05 b9  	addiw	a0, a0, -1136
80204b8a: 33 05 a4 40  	sub	a0, s0, a0
80204b8e: 81 45        	li	a1, 0
80204b90: 97 60 00 00  	auipc	ra, 6
80204b94: e7 80 80 89  	jalr	-1896(ra)
80204b98: 13 06 10 08  	li	a2, 129
80204b9c: 09 65        	lui	a0, 2
80204b9e: 1b 05 85 b0  	addiw	a0, a0, -1272
80204ba2: 33 05 a4 40  	sub	a0, s0, a0
80204ba6: 81 45        	li	a1, 0
80204ba8: 97 60 00 00  	auipc	ra, 6
80204bac: e7 80 00 88  	jalr	-1920(ra)
80204bb0: 13 06 10 08  	li	a2, 129
80204bb4: 09 65        	lui	a0, 2
80204bb6: 1b 05 05 a8  	addiw	a0, a0, -1408
80204bba: 33 05 a4 40  	sub	a0, s0, a0
80204bbe: 81 45        	li	a1, 0
80204bc0: 97 60 00 00  	auipc	ra, 6
80204bc4: e7 80 80 86  	jalr	-1944(ra)
80204bc8: 13 06 10 08  	li	a2, 129
80204bcc: 09 65        	lui	a0, 2
80204bce: 33 05 a4 40  	sub	a0, s0, a0
80204bd2: 03 35 85 d6  	ld	a0, -664(a0)
80204bd6: 81 45        	li	a1, 0
80204bd8: 97 60 00 00  	auipc	ra, 6
80204bdc: e7 80 00 85  	jalr	-1968(ra)
80204be0: 13 06 10 08  	li	a2, 129
80204be4: 09 65        	lui	a0, 2
80204be6: 33 05 a4 40  	sub	a0, s0, a0
80204bea: 03 35 05 d6  	ld	a0, -672(a0)
80204bee: 81 45        	li	a1, 0
80204bf0: 97 60 00 00  	auipc	ra, 6
80204bf4: e7 80 80 83  	jalr	-1992(ra)
80204bf8: 13 06 10 08  	li	a2, 129
80204bfc: 09 65        	lui	a0, 2
80204bfe: 33 05 a4 40  	sub	a0, s0, a0
80204c02: 03 35 85 d5  	ld	a0, -680(a0)
80204c06: 81 45        	li	a1, 0
80204c08: 97 60 00 00  	auipc	ra, 6
80204c0c: e7 80 00 82  	jalr	-2016(ra)
80204c10: 13 06 10 08  	li	a2, 129
80204c14: 09 65        	lui	a0, 2
80204c16: 33 05 a4 40  	sub	a0, s0, a0
80204c1a: 03 35 05 d5  	ld	a0, -688(a0)
80204c1e: 81 45        	li	a1, 0
80204c20: 97 60 00 00  	auipc	ra, 6
80204c24: e7 80 80 80  	jalr	-2040(ra)
80204c28: 13 06 10 08  	li	a2, 129
80204c2c: 09 65        	lui	a0, 2
80204c2e: 33 05 a4 40  	sub	a0, s0, a0
80204c32: 03 35 85 d4  	ld	a0, -696(a0)
80204c36: 81 45        	li	a1, 0
80204c38: 97 50 00 00  	auipc	ra, 5
80204c3c: e7 80 00 7f  	jalr	2032(ra)
80204c40: 13 06 10 08  	li	a2, 129
80204c44: 09 65        	lui	a0, 2
80204c46: 33 05 a4 40  	sub	a0, s0, a0
80204c4a: 03 35 05 d4  	ld	a0, -704(a0)
80204c4e: 81 45        	li	a1, 0
80204c50: 97 50 00 00  	auipc	ra, 5
80204c54: e7 80 80 7d  	jalr	2008(ra)
80204c58: 13 06 10 08  	li	a2, 129
80204c5c: 09 65        	lui	a0, 2
80204c5e: 33 05 a4 40  	sub	a0, s0, a0
80204c62: 03 35 85 d3  	ld	a0, -712(a0)
80204c66: 81 45        	li	a1, 0
80204c68: 97 50 00 00  	auipc	ra, 5
80204c6c: e7 80 00 7c  	jalr	1984(ra)
80204c70: 13 06 10 08  	li	a2, 129
80204c74: 09 65        	lui	a0, 2
80204c76: 33 05 a4 40  	sub	a0, s0, a0
80204c7a: 03 35 05 d3  	ld	a0, -720(a0)
80204c7e: 81 45        	li	a1, 0
80204c80: 97 50 00 00  	auipc	ra, 5
80204c84: e7 80 80 7a  	jalr	1960(ra)
80204c88: 13 06 10 08  	li	a2, 129
80204c8c: 09 65        	lui	a0, 2
80204c8e: 33 05 a4 40  	sub	a0, s0, a0
80204c92: 03 35 85 d2  	ld	a0, -728(a0)
80204c96: 81 45        	li	a1, 0
80204c98: 97 50 00 00  	auipc	ra, 5
80204c9c: e7 80 00 79  	jalr	1936(ra)
80204ca0: 13 06 10 08  	li	a2, 129
80204ca4: 09 65        	lui	a0, 2
80204ca6: 33 05 a4 40  	sub	a0, s0, a0
80204caa: 03 35 05 d2  	ld	a0, -736(a0)
80204cae: 81 45        	li	a1, 0
80204cb0: 97 50 00 00  	auipc	ra, 5
80204cb4: e7 80 80 77  	jalr	1912(ra)
80204cb8: 13 06 10 08  	li	a2, 129
80204cbc: 09 65        	lui	a0, 2
80204cbe: 33 05 a4 40  	sub	a0, s0, a0
80204cc2: 03 35 85 d1  	ld	a0, -744(a0)
80204cc6: 81 45        	li	a1, 0
80204cc8: 97 50 00 00  	auipc	ra, 5
80204ccc: e7 80 00 76  	jalr	1888(ra)
80204cd0: 13 06 10 08  	li	a2, 129
80204cd4: 09 65        	lui	a0, 2
80204cd6: 33 05 a4 40  	sub	a0, s0, a0
80204cda: 03 35 05 d1  	ld	a0, -752(a0)
80204cde: 81 45        	li	a1, 0
80204ce0: 97 50 00 00  	auipc	ra, 5
80204ce4: e7 80 80 74  	jalr	1864(ra)
80204ce8: 13 06 10 08  	li	a2, 129
80204cec: 09 65        	lui	a0, 2
80204cee: 33 05 a4 40  	sub	a0, s0, a0
80204cf2: 03 35 85 d0  	ld	a0, -760(a0)
80204cf6: 81 45        	li	a1, 0
80204cf8: 97 50 00 00  	auipc	ra, 5
80204cfc: e7 80 00 73  	jalr	1840(ra)
80204d00: 13 06 10 08  	li	a2, 129
80204d04: 09 65        	lui	a0, 2
80204d06: 33 05 a4 40  	sub	a0, s0, a0
80204d0a: 03 35 05 d0  	ld	a0, -768(a0)
80204d0e: 81 45        	li	a1, 0
80204d10: 97 50 00 00  	auipc	ra, 5
80204d14: e7 80 80 71  	jalr	1816(ra)
80204d18: 13 06 10 08  	li	a2, 129
80204d1c: 09 65        	lui	a0, 2
80204d1e: 33 05 a4 40  	sub	a0, s0, a0
80204d22: 03 35 85 cf  	ld	a0, -776(a0)
80204d26: 81 45        	li	a1, 0
80204d28: 97 50 00 00  	auipc	ra, 5
80204d2c: e7 80 00 70  	jalr	1792(ra)
80204d30: 13 06 10 08  	li	a2, 129
80204d34: 09 65        	lui	a0, 2
80204d36: 33 05 a4 40  	sub	a0, s0, a0
80204d3a: 03 35 05 cf  	ld	a0, -784(a0)
80204d3e: 81 45        	li	a1, 0
80204d40: 97 50 00 00  	auipc	ra, 5
80204d44: e7 80 80 6e  	jalr	1768(ra)
80204d48: 13 06 10 08  	li	a2, 129
80204d4c: 09 65        	lui	a0, 2
80204d4e: 33 05 a4 40  	sub	a0, s0, a0
80204d52: 03 35 85 ce  	ld	a0, -792(a0)
80204d56: 81 45        	li	a1, 0
80204d58: 97 50 00 00  	auipc	ra, 5
80204d5c: e7 80 00 6d  	jalr	1744(ra)
80204d60: 13 06 10 08  	li	a2, 129
80204d64: 09 65        	lui	a0, 2
80204d66: 33 05 a4 40  	sub	a0, s0, a0
80204d6a: 03 35 05 ce  	ld	a0, -800(a0)
80204d6e: 81 45        	li	a1, 0
80204d70: 97 50 00 00  	auipc	ra, 5
80204d74: e7 80 80 6b  	jalr	1720(ra)
80204d78: 13 06 10 08  	li	a2, 129
80204d7c: 09 65        	lui	a0, 2
80204d7e: 33 05 a4 40  	sub	a0, s0, a0
80204d82: 03 35 85 cd  	ld	a0, -808(a0)
80204d86: 81 45        	li	a1, 0
80204d88: 97 50 00 00  	auipc	ra, 5
80204d8c: e7 80 00 6a  	jalr	1696(ra)
80204d90: 13 06 10 08  	li	a2, 129
80204d94: 09 65        	lui	a0, 2
80204d96: 33 05 a4 40  	sub	a0, s0, a0
80204d9a: 03 35 05 cd  	ld	a0, -816(a0)
80204d9e: 81 45        	li	a1, 0
80204da0: 97 50 00 00  	auipc	ra, 5
80204da4: e7 80 80 68  	jalr	1672(ra)
80204da8: 13 06 10 08  	li	a2, 129
80204dac: 09 65        	lui	a0, 2
80204dae: 33 05 a4 40  	sub	a0, s0, a0
80204db2: 03 35 85 cc  	ld	a0, -824(a0)
80204db6: 81 45        	li	a1, 0
80204db8: 97 50 00 00  	auipc	ra, 5
80204dbc: e7 80 00 67  	jalr	1648(ra)
80204dc0: 13 06 10 08  	li	a2, 129
80204dc4: 09 65        	lui	a0, 2
80204dc6: 33 05 a4 40  	sub	a0, s0, a0
80204dca: 03 35 05 cc  	ld	a0, -832(a0)
80204dce: 81 45        	li	a1, 0
80204dd0: 97 50 00 00  	auipc	ra, 5
80204dd4: e7 80 80 65  	jalr	1624(ra)
80204dd8: 13 06 10 08  	li	a2, 129
80204ddc: 09 65        	lui	a0, 2
80204dde: 33 05 a4 40  	sub	a0, s0, a0
80204de2: 03 35 85 cb  	ld	a0, -840(a0)
80204de6: 81 45        	li	a1, 0
80204de8: 97 50 00 00  	auipc	ra, 5
80204dec: e7 80 00 64  	jalr	1600(ra)
80204df0: 13 06 10 08  	li	a2, 129
80204df4: 09 65        	lui	a0, 2
80204df6: 33 05 a4 40  	sub	a0, s0, a0
80204dfa: 03 35 05 cb  	ld	a0, -848(a0)
80204dfe: 81 45        	li	a1, 0
80204e00: 97 50 00 00  	auipc	ra, 5
80204e04: e7 80 80 62  	jalr	1576(ra)
80204e08: 13 06 10 08  	li	a2, 129
80204e0c: 09 65        	lui	a0, 2
80204e0e: 33 05 a4 40  	sub	a0, s0, a0
80204e12: 03 35 85 ca  	ld	a0, -856(a0)
80204e16: 81 45        	li	a1, 0
80204e18: 97 50 00 00  	auipc	ra, 5
80204e1c: e7 80 00 61  	jalr	1552(ra)
80204e20: 13 06 10 08  	li	a2, 129
80204e24: 09 65        	lui	a0, 2
80204e26: 33 05 a4 40  	sub	a0, s0, a0
80204e2a: 03 35 05 ca  	ld	a0, -864(a0)
80204e2e: 81 45        	li	a1, 0
80204e30: 97 50 00 00  	auipc	ra, 5
80204e34: e7 80 80 5f  	jalr	1528(ra)
80204e38: 13 06 10 08  	li	a2, 129
80204e3c: 09 65        	lui	a0, 2
80204e3e: 33 05 a4 40  	sub	a0, s0, a0
80204e42: 03 35 85 c9  	ld	a0, -872(a0)
80204e46: 81 45        	li	a1, 0
80204e48: 97 50 00 00  	auipc	ra, 5
80204e4c: e7 80 00 5e  	jalr	1504(ra)
80204e50: 13 06 10 08  	li	a2, 129
80204e54: 09 65        	lui	a0, 2
80204e56: 33 05 a4 40  	sub	a0, s0, a0
80204e5a: 03 35 05 c9  	ld	a0, -880(a0)
80204e5e: 81 45        	li	a1, 0
80204e60: 97 50 00 00  	auipc	ra, 5
80204e64: e7 80 80 5c  	jalr	1480(ra)
80204e68: 13 06 10 08  	li	a2, 129
80204e6c: 09 65        	lui	a0, 2
80204e6e: 33 05 a4 40  	sub	a0, s0, a0
80204e72: 03 35 85 c8  	ld	a0, -888(a0)
80204e76: 81 45        	li	a1, 0
80204e78: 97 50 00 00  	auipc	ra, 5
80204e7c: e7 80 00 5b  	jalr	1456(ra)
80204e80: 13 06 10 08  	li	a2, 129
80204e84: 09 65        	lui	a0, 2
80204e86: 33 05 a4 40  	sub	a0, s0, a0
80204e8a: 03 35 05 c8  	ld	a0, -896(a0)
80204e8e: 81 45        	li	a1, 0
80204e90: 97 50 00 00  	auipc	ra, 5
80204e94: e7 80 80 59  	jalr	1432(ra)
80204e98: 13 06 10 08  	li	a2, 129
80204e9c: 09 65        	lui	a0, 2
80204e9e: 33 05 a4 40  	sub	a0, s0, a0
80204ea2: 03 35 85 c7  	ld	a0, -904(a0)
80204ea6: 81 45        	li	a1, 0
80204ea8: 97 50 00 00  	auipc	ra, 5
80204eac: e7 80 00 58  	jalr	1408(ra)
80204eb0: 13 06 10 08  	li	a2, 129
80204eb4: 09 65        	lui	a0, 2
80204eb6: 33 05 a4 40  	sub	a0, s0, a0
80204eba: 03 35 05 c7  	ld	a0, -912(a0)
80204ebe: 81 45        	li	a1, 0
80204ec0: 97 50 00 00  	auipc	ra, 5
80204ec4: e7 80 80 56  	jalr	1384(ra)
80204ec8: 13 06 10 08  	li	a2, 129
80204ecc: 09 65        	lui	a0, 2
80204ece: 33 05 a4 40  	sub	a0, s0, a0
80204ed2: 03 35 85 c6  	ld	a0, -920(a0)
80204ed6: 81 45        	li	a1, 0
80204ed8: 97 50 00 00  	auipc	ra, 5
80204edc: e7 80 00 55  	jalr	1360(ra)
80204ee0: 13 06 10 08  	li	a2, 129
80204ee4: 09 65        	lui	a0, 2
80204ee6: 33 05 a4 40  	sub	a0, s0, a0
80204eea: 03 35 05 c6  	ld	a0, -928(a0)
80204eee: 81 45        	li	a1, 0
80204ef0: 97 50 00 00  	auipc	ra, 5
80204ef4: e7 80 80 53  	jalr	1336(ra)
80204ef8: 13 06 10 08  	li	a2, 129
80204efc: 09 65        	lui	a0, 2
80204efe: 33 05 a4 40  	sub	a0, s0, a0
80204f02: 03 35 85 c5  	ld	a0, -936(a0)
80204f06: 81 45        	li	a1, 0
80204f08: 97 50 00 00  	auipc	ra, 5
80204f0c: e7 80 00 52  	jalr	1312(ra)
80204f10: 13 06 10 08  	li	a2, 129
80204f14: 09 65        	lui	a0, 2
80204f16: 33 05 a4 40  	sub	a0, s0, a0
80204f1a: 03 35 05 c5  	ld	a0, -944(a0)
80204f1e: 81 45        	li	a1, 0
80204f20: 97 50 00 00  	auipc	ra, 5
80204f24: e7 80 80 50  	jalr	1288(ra)
80204f28: 13 06 10 08  	li	a2, 129
80204f2c: 09 65        	lui	a0, 2
80204f2e: 33 05 a4 40  	sub	a0, s0, a0
80204f32: 03 35 85 c4  	ld	a0, -952(a0)
80204f36: 81 45        	li	a1, 0
80204f38: 97 50 00 00  	auipc	ra, 5
80204f3c: e7 80 00 4f  	jalr	1264(ra)
80204f40: 13 06 10 08  	li	a2, 129
80204f44: 09 65        	lui	a0, 2
80204f46: 33 05 a4 40  	sub	a0, s0, a0
80204f4a: 03 35 05 c4  	ld	a0, -960(a0)
80204f4e: 81 45        	li	a1, 0
80204f50: 97 50 00 00  	auipc	ra, 5
80204f54: e7 80 80 4d  	jalr	1240(ra)
80204f58: 13 06 10 08  	li	a2, 129
80204f5c: 09 65        	lui	a0, 2
80204f5e: 33 05 a4 40  	sub	a0, s0, a0
80204f62: 03 35 85 c3  	ld	a0, -968(a0)
80204f66: 81 45        	li	a1, 0
80204f68: 97 50 00 00  	auipc	ra, 5
80204f6c: e7 80 00 4c  	jalr	1216(ra)
80204f70: 13 06 10 08  	li	a2, 129
80204f74: 09 65        	lui	a0, 2
80204f76: 33 05 a4 40  	sub	a0, s0, a0
80204f7a: 03 35 05 c3  	ld	a0, -976(a0)
80204f7e: 81 45        	li	a1, 0
80204f80: 97 50 00 00  	auipc	ra, 5
80204f84: e7 80 80 4a  	jalr	1192(ra)
80204f88: 13 06 10 08  	li	a2, 129
80204f8c: 09 65        	lui	a0, 2
80204f8e: 33 05 a4 40  	sub	a0, s0, a0
80204f92: 03 35 85 c2  	ld	a0, -984(a0)
80204f96: 81 45        	li	a1, 0
80204f98: 97 50 00 00  	auipc	ra, 5
80204f9c: e7 80 00 49  	jalr	1168(ra)
80204fa0: 13 06 10 08  	li	a2, 129
80204fa4: 09 65        	lui	a0, 2
80204fa6: 33 05 a4 40  	sub	a0, s0, a0
80204faa: 03 35 05 c2  	ld	a0, -992(a0)
80204fae: 81 45        	li	a1, 0
80204fb0: 97 50 00 00  	auipc	ra, 5
80204fb4: e7 80 80 47  	jalr	1144(ra)
80204fb8: 13 06 10 08  	li	a2, 129
80204fbc: 09 65        	lui	a0, 2
80204fbe: 33 05 a4 40  	sub	a0, s0, a0
80204fc2: 03 35 85 c1  	ld	a0, -1000(a0)
80204fc6: 81 45        	li	a1, 0
80204fc8: 97 50 00 00  	auipc	ra, 5
80204fcc: e7 80 00 46  	jalr	1120(ra)
80204fd0: 13 06 10 08  	li	a2, 129
80204fd4: 09 65        	lui	a0, 2
80204fd6: 33 05 a4 40  	sub	a0, s0, a0
80204fda: 03 35 05 c1  	ld	a0, -1008(a0)
80204fde: 81 45        	li	a1, 0
80204fe0: 97 50 00 00  	auipc	ra, 5
80204fe4: e7 80 80 44  	jalr	1096(ra)
80204fe8: 13 06 10 08  	li	a2, 129
80204fec: 09 65        	lui	a0, 2
80204fee: 33 05 a4 40  	sub	a0, s0, a0
80204ff2: 03 35 85 c0  	ld	a0, -1016(a0)
80204ff6: 81 45        	li	a1, 0
80204ff8: 97 50 00 00  	auipc	ra, 5
80204ffc: e7 80 00 43  	jalr	1072(ra)
80205000: 13 06 10 08  	li	a2, 129
80205004: 09 65        	lui	a0, 2
80205006: 33 05 a4 40  	sub	a0, s0, a0
8020500a: 03 35 05 c0  	ld	a0, -1024(a0)
8020500e: 81 45        	li	a1, 0
80205010: 97 50 00 00  	auipc	ra, 5
80205014: e7 80 80 41  	jalr	1048(ra)
80205018: 13 06 10 08  	li	a2, 129
8020501c: 09 65        	lui	a0, 2
8020501e: 33 05 a4 40  	sub	a0, s0, a0
80205022: 03 35 85 bf  	ld	a0, -1032(a0)
80205026: 81 45        	li	a1, 0
80205028: 97 50 00 00  	auipc	ra, 5
8020502c: e7 80 00 40  	jalr	1024(ra)
80205030: 13 06 10 08  	li	a2, 129
80205034: 09 65        	lui	a0, 2
80205036: 33 05 a4 40  	sub	a0, s0, a0
8020503a: 03 35 05 bf  	ld	a0, -1040(a0)
8020503e: 81 45        	li	a1, 0
80205040: 97 50 00 00  	auipc	ra, 5
80205044: e7 80 80 3e  	jalr	1000(ra)
80205048: 13 85 04 01  	addi	a0, s1, 16
8020504c: 45 46        	li	a2, 17
8020504e: 26 06        	slli	a2, a2, 9
80205050: 89 65        	lui	a1, 2
80205052: 9b 85 85 27  	addiw	a1, a1, 632
80205056: b3 05 b4 40  	sub	a1, s0, a1
8020505a: 97 50 00 00  	auipc	ra, 5
8020505e: e7 80 60 3d  	jalr	982(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80205062: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80205066: 09 65        	lui	a0, 2
80205068: 1b 05 85 28  	addiw	a0, a0, 648
8020506c: 33 05 a4 40  	sub	a0, s0, a0
80205070: 23 04 05 00  	sb	zero, 8(a0)
80205074: 0f 00 10 03  	fence	rw, w
80205078: 23 b0 a4 01  	sd	s10, 0(s1)
8020507c: 09 65        	lui	a0, 2
8020507e: 1b 05 85 28  	addiw	a0, a0, 648
80205082: 33 05 a4 40  	sub	a0, s0, a0
80205086: 97 30 00 00  	auipc	ra, 3
8020508a: e7 80 20 7a  	jalr	1954(ra)
8020508e: 21 a8        	j	0x802050a6 <.Lpcrel_hi62+0x1e5e>
80205090: 0f 00 00 01  	fence	w, 0
80205094: 0f 00 30 03  	fence	rw, rw
80205098: 88 60        	ld	a0, 0(s1)
8020509a: 0f 00 30 02  	fence	r, rw
;             match status {
8020509e: e3 09 b5 ff  	beq	a0, s11, 0x80205090 <.Lpcrel_hi62+0x1e48>
802050a2: 63 1f a5 77  	bne	a0, s10, 0x80205820 <.Lpcrel_hi77+0xa>
802050a6: 63 75 7b 71  	bgeu	s6, s7, 0x802057b0 <.Lpcrel_hi85>
; 	&mut (CPUS.get_mut()[id])
802050aa: 33 05 8b 03  	mul	a0, s6, s8
802050ae: 26 95        	add	a0, a0, s1
802050b0: 41 05        	addi	a0, a0, 16
;         if !self.holding() {
802050b2: e3 9d ac 00  	bne	s9, a0, 0x802058cc <.Lpcrel_hi86>
;         self.cpu = null_mut();
802050b6: 23 30 09 00  	sd	zero, 0(s2)
802050ba: 0f 00 30 03  	fence	rw, rw
802050be: 0f 00 10 03  	fence	rw, w
802050c2: 23 80 0a 00  	sb	zero, 0(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802050c6: 12 8b        	mv	s6, tp
802050c8: 0f 00 30 03  	fence	rw, rw
802050cc: 88 60        	ld	a0, 0(s1)
802050ce: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802050d2: 63 16 05 66  	bnez	a0, 0x8020573e <.Lpcrel_hi62+0x24f6>
802050d6: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802050da: 63 12 05 66  	bnez	a0, 0x8020573e <.Lpcrel_hi62+0x24f6>
802050de: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
802050e2: f5 f9        	bnez	a1, 0x802050d6 <.Lpcrel_hi62+0x1e8e>
802050e4: 09 65        	lui	a0, 2
802050e6: 1b 05 85 28  	addiw	a0, a0, 648
802050ea: 33 09 a4 40  	sub	s2, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802050ee: 23 30 99 00  	sd	s1, 0(s2)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
802050f2: 09 65        	lui	a0, 2
802050f4: 1b 05 85 27  	addiw	a0, a0, 632
802050f8: 33 05 a4 40  	sub	a0, s0, a0
802050fc: 13 06 10 08  	li	a2, 129
80205100: 81 45        	li	a1, 0
80205102: 97 50 00 00  	auipc	ra, 5
80205106: e7 80 60 32  	jalr	806(ra)
8020510a: 13 06 10 08  	li	a2, 129
8020510e: 09 65        	lui	a0, 2
80205110: 1b 05 05 1f  	addiw	a0, a0, 496
80205114: 33 05 a4 40  	sub	a0, s0, a0
80205118: 81 45        	li	a1, 0
8020511a: 97 50 00 00  	auipc	ra, 5
8020511e: e7 80 e0 30  	jalr	782(ra)
80205122: 13 06 10 08  	li	a2, 129
80205126: 09 65        	lui	a0, 2
80205128: 1b 05 85 16  	addiw	a0, a0, 360
8020512c: 33 05 a4 40  	sub	a0, s0, a0
80205130: 81 45        	li	a1, 0
80205132: 97 50 00 00  	auipc	ra, 5
80205136: e7 80 60 2f  	jalr	758(ra)
8020513a: 13 06 10 08  	li	a2, 129
8020513e: 09 65        	lui	a0, 2
80205140: 1b 05 05 0e  	addiw	a0, a0, 224
80205144: 33 05 a4 40  	sub	a0, s0, a0
80205148: 81 45        	li	a1, 0
8020514a: 97 50 00 00  	auipc	ra, 5
8020514e: e7 80 e0 2d  	jalr	734(ra)
80205152: 13 06 10 08  	li	a2, 129
80205156: 09 65        	lui	a0, 2
80205158: 1b 05 85 05  	addiw	a0, a0, 88
8020515c: 33 05 a4 40  	sub	a0, s0, a0
80205160: 81 45        	li	a1, 0
80205162: 97 50 00 00  	auipc	ra, 5
80205166: e7 80 60 2c  	jalr	710(ra)
8020516a: 13 06 10 08  	li	a2, 129
8020516e: 09 65        	lui	a0, 2
80205170: 1b 05 05 fd  	addiw	a0, a0, -48
80205174: 33 05 a4 40  	sub	a0, s0, a0
80205178: 81 45        	li	a1, 0
8020517a: 97 50 00 00  	auipc	ra, 5
8020517e: e7 80 e0 2a  	jalr	686(ra)
80205182: 13 06 10 08  	li	a2, 129
80205186: 09 65        	lui	a0, 2
80205188: 1b 05 85 f4  	addiw	a0, a0, -184
8020518c: 33 05 a4 40  	sub	a0, s0, a0
80205190: 81 45        	li	a1, 0
80205192: 97 50 00 00  	auipc	ra, 5
80205196: e7 80 60 29  	jalr	662(ra)
8020519a: 13 06 10 08  	li	a2, 129
8020519e: 09 65        	lui	a0, 2
802051a0: 1b 05 05 ec  	addiw	a0, a0, -320
802051a4: 33 05 a4 40  	sub	a0, s0, a0
802051a8: 81 45        	li	a1, 0
802051aa: 97 50 00 00  	auipc	ra, 5
802051ae: e7 80 e0 27  	jalr	638(ra)
802051b2: 13 06 10 08  	li	a2, 129
802051b6: 09 65        	lui	a0, 2
802051b8: 1b 05 85 e3  	addiw	a0, a0, -456
802051bc: 33 05 a4 40  	sub	a0, s0, a0
802051c0: 81 45        	li	a1, 0
802051c2: 97 50 00 00  	auipc	ra, 5
802051c6: e7 80 60 26  	jalr	614(ra)
802051ca: 13 06 10 08  	li	a2, 129
802051ce: 09 65        	lui	a0, 2
802051d0: 1b 05 05 db  	addiw	a0, a0, -592
802051d4: 33 05 a4 40  	sub	a0, s0, a0
802051d8: 81 45        	li	a1, 0
802051da: 97 50 00 00  	auipc	ra, 5
802051de: e7 80 e0 24  	jalr	590(ra)
802051e2: 13 06 10 08  	li	a2, 129
802051e6: 09 65        	lui	a0, 2
802051e8: 1b 05 85 d2  	addiw	a0, a0, -728
802051ec: 33 05 a4 40  	sub	a0, s0, a0
802051f0: 81 45        	li	a1, 0
802051f2: 97 50 00 00  	auipc	ra, 5
802051f6: e7 80 60 23  	jalr	566(ra)
802051fa: 13 06 10 08  	li	a2, 129
802051fe: 09 65        	lui	a0, 2
80205200: 1b 05 05 ca  	addiw	a0, a0, -864
80205204: 33 05 a4 40  	sub	a0, s0, a0
80205208: 81 45        	li	a1, 0
8020520a: 97 50 00 00  	auipc	ra, 5
8020520e: e7 80 e0 21  	jalr	542(ra)
80205212: 13 06 10 08  	li	a2, 129
80205216: 09 65        	lui	a0, 2
80205218: 1b 05 85 c1  	addiw	a0, a0, -1000
8020521c: 33 05 a4 40  	sub	a0, s0, a0
80205220: 81 45        	li	a1, 0
80205222: 97 50 00 00  	auipc	ra, 5
80205226: e7 80 60 20  	jalr	518(ra)
8020522a: 13 06 10 08  	li	a2, 129
8020522e: 09 65        	lui	a0, 2
80205230: 1b 05 05 b9  	addiw	a0, a0, -1136
80205234: 33 05 a4 40  	sub	a0, s0, a0
80205238: 81 45        	li	a1, 0
8020523a: 97 50 00 00  	auipc	ra, 5
8020523e: e7 80 e0 1e  	jalr	494(ra)
80205242: 13 06 10 08  	li	a2, 129
80205246: 09 65        	lui	a0, 2
80205248: 1b 05 85 b0  	addiw	a0, a0, -1272
8020524c: 33 05 a4 40  	sub	a0, s0, a0
80205250: 81 45        	li	a1, 0
80205252: 97 50 00 00  	auipc	ra, 5
80205256: e7 80 60 1d  	jalr	470(ra)
8020525a: 13 06 10 08  	li	a2, 129
8020525e: 09 65        	lui	a0, 2
80205260: 1b 05 05 a8  	addiw	a0, a0, -1408
80205264: 33 05 a4 40  	sub	a0, s0, a0
80205268: 81 45        	li	a1, 0
8020526a: 97 50 00 00  	auipc	ra, 5
8020526e: e7 80 e0 1b  	jalr	446(ra)
80205272: 13 06 10 08  	li	a2, 129
80205276: 09 65        	lui	a0, 2
80205278: 33 05 a4 40  	sub	a0, s0, a0
8020527c: 03 35 85 d6  	ld	a0, -664(a0)
80205280: 81 45        	li	a1, 0
80205282: 97 50 00 00  	auipc	ra, 5
80205286: e7 80 60 1a  	jalr	422(ra)
8020528a: 13 06 10 08  	li	a2, 129
8020528e: 09 65        	lui	a0, 2
80205290: 33 05 a4 40  	sub	a0, s0, a0
80205294: 03 35 05 d6  	ld	a0, -672(a0)
80205298: 81 45        	li	a1, 0
8020529a: 97 50 00 00  	auipc	ra, 5
8020529e: e7 80 e0 18  	jalr	398(ra)
802052a2: 13 06 10 08  	li	a2, 129
802052a6: 09 65        	lui	a0, 2
802052a8: 33 05 a4 40  	sub	a0, s0, a0
802052ac: 03 35 85 d5  	ld	a0, -680(a0)
802052b0: 81 45        	li	a1, 0
802052b2: 97 50 00 00  	auipc	ra, 5
802052b6: e7 80 60 17  	jalr	374(ra)
802052ba: 13 06 10 08  	li	a2, 129
802052be: 09 65        	lui	a0, 2
802052c0: 33 05 a4 40  	sub	a0, s0, a0
802052c4: 03 35 05 d5  	ld	a0, -688(a0)
802052c8: 81 45        	li	a1, 0
802052ca: 97 50 00 00  	auipc	ra, 5
802052ce: e7 80 e0 15  	jalr	350(ra)
802052d2: 13 06 10 08  	li	a2, 129
802052d6: 09 65        	lui	a0, 2
802052d8: 33 05 a4 40  	sub	a0, s0, a0
802052dc: 03 35 85 d4  	ld	a0, -696(a0)
802052e0: 81 45        	li	a1, 0
802052e2: 97 50 00 00  	auipc	ra, 5
802052e6: e7 80 60 14  	jalr	326(ra)
802052ea: 13 06 10 08  	li	a2, 129
802052ee: 09 65        	lui	a0, 2
802052f0: 33 05 a4 40  	sub	a0, s0, a0
802052f4: 03 35 05 d4  	ld	a0, -704(a0)
802052f8: 81 45        	li	a1, 0
802052fa: 97 50 00 00  	auipc	ra, 5
802052fe: e7 80 e0 12  	jalr	302(ra)
80205302: 13 06 10 08  	li	a2, 129
80205306: 09 65        	lui	a0, 2
80205308: 33 05 a4 40  	sub	a0, s0, a0
8020530c: 03 35 85 d3  	ld	a0, -712(a0)
80205310: 81 45        	li	a1, 0
80205312: 97 50 00 00  	auipc	ra, 5
80205316: e7 80 60 11  	jalr	278(ra)
8020531a: 13 06 10 08  	li	a2, 129
8020531e: 09 65        	lui	a0, 2
80205320: 33 05 a4 40  	sub	a0, s0, a0
80205324: 03 35 05 d3  	ld	a0, -720(a0)
80205328: 81 45        	li	a1, 0
8020532a: 97 50 00 00  	auipc	ra, 5
8020532e: e7 80 e0 0f  	jalr	254(ra)
80205332: 13 06 10 08  	li	a2, 129
80205336: 09 65        	lui	a0, 2
80205338: 33 05 a4 40  	sub	a0, s0, a0
8020533c: 03 35 85 d2  	ld	a0, -728(a0)
80205340: 81 45        	li	a1, 0
80205342: 97 50 00 00  	auipc	ra, 5
80205346: e7 80 60 0e  	jalr	230(ra)
8020534a: 13 06 10 08  	li	a2, 129
8020534e: 09 65        	lui	a0, 2
80205350: 33 05 a4 40  	sub	a0, s0, a0
80205354: 03 35 05 d2  	ld	a0, -736(a0)
80205358: 81 45        	li	a1, 0
8020535a: 97 50 00 00  	auipc	ra, 5
8020535e: e7 80 e0 0c  	jalr	206(ra)
80205362: 13 06 10 08  	li	a2, 129
80205366: 09 65        	lui	a0, 2
80205368: 33 05 a4 40  	sub	a0, s0, a0
8020536c: 03 35 85 d1  	ld	a0, -744(a0)
80205370: 81 45        	li	a1, 0
80205372: 97 50 00 00  	auipc	ra, 5
80205376: e7 80 60 0b  	jalr	182(ra)
8020537a: 13 06 10 08  	li	a2, 129
8020537e: 09 65        	lui	a0, 2
80205380: 33 05 a4 40  	sub	a0, s0, a0
80205384: 03 35 05 d1  	ld	a0, -752(a0)
80205388: 81 45        	li	a1, 0
8020538a: 97 50 00 00  	auipc	ra, 5
8020538e: e7 80 e0 09  	jalr	158(ra)
80205392: 13 06 10 08  	li	a2, 129
80205396: 09 65        	lui	a0, 2
80205398: 33 05 a4 40  	sub	a0, s0, a0
8020539c: 03 35 85 d0  	ld	a0, -760(a0)
802053a0: 81 45        	li	a1, 0
802053a2: 97 50 00 00  	auipc	ra, 5
802053a6: e7 80 60 08  	jalr	134(ra)
802053aa: 13 06 10 08  	li	a2, 129
802053ae: 09 65        	lui	a0, 2
802053b0: 33 05 a4 40  	sub	a0, s0, a0
802053b4: 03 35 05 d0  	ld	a0, -768(a0)
802053b8: 81 45        	li	a1, 0
802053ba: 97 50 00 00  	auipc	ra, 5
802053be: e7 80 e0 06  	jalr	110(ra)
802053c2: 13 06 10 08  	li	a2, 129
802053c6: 09 65        	lui	a0, 2
802053c8: 33 05 a4 40  	sub	a0, s0, a0
802053cc: 03 35 85 cf  	ld	a0, -776(a0)
802053d0: 81 45        	li	a1, 0
802053d2: 97 50 00 00  	auipc	ra, 5
802053d6: e7 80 60 05  	jalr	86(ra)
802053da: 13 06 10 08  	li	a2, 129
802053de: 09 65        	lui	a0, 2
802053e0: 33 05 a4 40  	sub	a0, s0, a0
802053e4: 03 35 05 cf  	ld	a0, -784(a0)
802053e8: 81 45        	li	a1, 0
802053ea: 97 50 00 00  	auipc	ra, 5
802053ee: e7 80 e0 03  	jalr	62(ra)
802053f2: 13 06 10 08  	li	a2, 129
802053f6: 09 65        	lui	a0, 2
802053f8: 33 05 a4 40  	sub	a0, s0, a0
802053fc: 03 35 85 ce  	ld	a0, -792(a0)
80205400: 81 45        	li	a1, 0
80205402: 97 50 00 00  	auipc	ra, 5
80205406: e7 80 60 02  	jalr	38(ra)
8020540a: 13 06 10 08  	li	a2, 129
8020540e: 09 65        	lui	a0, 2
80205410: 33 05 a4 40  	sub	a0, s0, a0
80205414: 03 35 05 ce  	ld	a0, -800(a0)
80205418: 81 45        	li	a1, 0
8020541a: 97 50 00 00  	auipc	ra, 5
8020541e: e7 80 e0 00  	jalr	14(ra)
80205422: 13 06 10 08  	li	a2, 129
80205426: 09 65        	lui	a0, 2
80205428: 33 05 a4 40  	sub	a0, s0, a0
8020542c: 03 35 85 cd  	ld	a0, -808(a0)
80205430: 81 45        	li	a1, 0
80205432: 97 50 00 00  	auipc	ra, 5
80205436: e7 80 60 ff  	jalr	-10(ra)
8020543a: 13 06 10 08  	li	a2, 129
8020543e: 09 65        	lui	a0, 2
80205440: 33 05 a4 40  	sub	a0, s0, a0
80205444: 03 35 05 cd  	ld	a0, -816(a0)
80205448: 81 45        	li	a1, 0
8020544a: 97 50 00 00  	auipc	ra, 5
8020544e: e7 80 e0 fd  	jalr	-34(ra)
80205452: 13 06 10 08  	li	a2, 129
80205456: 09 65        	lui	a0, 2
80205458: 33 05 a4 40  	sub	a0, s0, a0
8020545c: 03 35 85 cc  	ld	a0, -824(a0)
80205460: 81 45        	li	a1, 0
80205462: 97 50 00 00  	auipc	ra, 5
80205466: e7 80 60 fc  	jalr	-58(ra)
8020546a: 13 06 10 08  	li	a2, 129
8020546e: 09 65        	lui	a0, 2
80205470: 33 05 a4 40  	sub	a0, s0, a0
80205474: 03 35 05 cc  	ld	a0, -832(a0)
80205478: 81 45        	li	a1, 0
8020547a: 97 50 00 00  	auipc	ra, 5
8020547e: e7 80 e0 fa  	jalr	-82(ra)
80205482: 13 06 10 08  	li	a2, 129
80205486: 09 65        	lui	a0, 2
80205488: 33 05 a4 40  	sub	a0, s0, a0
8020548c: 03 35 85 cb  	ld	a0, -840(a0)
80205490: 81 45        	li	a1, 0
80205492: 97 50 00 00  	auipc	ra, 5
80205496: e7 80 60 f9  	jalr	-106(ra)
8020549a: 13 06 10 08  	li	a2, 129
8020549e: 09 65        	lui	a0, 2
802054a0: 33 05 a4 40  	sub	a0, s0, a0
802054a4: 03 35 05 cb  	ld	a0, -848(a0)
802054a8: 81 45        	li	a1, 0
802054aa: 97 50 00 00  	auipc	ra, 5
802054ae: e7 80 e0 f7  	jalr	-130(ra)
802054b2: 13 06 10 08  	li	a2, 129
802054b6: 09 65        	lui	a0, 2
802054b8: 33 05 a4 40  	sub	a0, s0, a0
802054bc: 03 35 85 ca  	ld	a0, -856(a0)
802054c0: 81 45        	li	a1, 0
802054c2: 97 50 00 00  	auipc	ra, 5
802054c6: e7 80 60 f6  	jalr	-154(ra)
802054ca: 13 06 10 08  	li	a2, 129
802054ce: 09 65        	lui	a0, 2
802054d0: 33 05 a4 40  	sub	a0, s0, a0
802054d4: 03 35 05 ca  	ld	a0, -864(a0)
802054d8: 81 45        	li	a1, 0
802054da: 97 50 00 00  	auipc	ra, 5
802054de: e7 80 e0 f4  	jalr	-178(ra)
802054e2: 13 06 10 08  	li	a2, 129
802054e6: 09 65        	lui	a0, 2
802054e8: 33 05 a4 40  	sub	a0, s0, a0
802054ec: 03 35 85 c9  	ld	a0, -872(a0)
802054f0: 81 45        	li	a1, 0
802054f2: 97 50 00 00  	auipc	ra, 5
802054f6: e7 80 60 f3  	jalr	-202(ra)
802054fa: 13 06 10 08  	li	a2, 129
802054fe: 09 65        	lui	a0, 2
80205500: 33 05 a4 40  	sub	a0, s0, a0
80205504: 03 35 05 c9  	ld	a0, -880(a0)
80205508: 81 45        	li	a1, 0
8020550a: 97 50 00 00  	auipc	ra, 5
8020550e: e7 80 e0 f1  	jalr	-226(ra)
80205512: 13 06 10 08  	li	a2, 129
80205516: 09 65        	lui	a0, 2
80205518: 33 05 a4 40  	sub	a0, s0, a0
8020551c: 03 35 85 c8  	ld	a0, -888(a0)
80205520: 81 45        	li	a1, 0
80205522: 97 50 00 00  	auipc	ra, 5
80205526: e7 80 60 f0  	jalr	-250(ra)
8020552a: 13 06 10 08  	li	a2, 129
8020552e: 09 65        	lui	a0, 2
80205530: 33 05 a4 40  	sub	a0, s0, a0
80205534: 03 35 05 c8  	ld	a0, -896(a0)
80205538: 81 45        	li	a1, 0
8020553a: 97 50 00 00  	auipc	ra, 5
8020553e: e7 80 e0 ee  	jalr	-274(ra)
80205542: 13 06 10 08  	li	a2, 129
80205546: 09 65        	lui	a0, 2
80205548: 33 05 a4 40  	sub	a0, s0, a0
8020554c: 03 35 85 c7  	ld	a0, -904(a0)
80205550: 81 45        	li	a1, 0
80205552: 97 50 00 00  	auipc	ra, 5
80205556: e7 80 60 ed  	jalr	-298(ra)
8020555a: 13 06 10 08  	li	a2, 129
8020555e: 09 65        	lui	a0, 2
80205560: 33 05 a4 40  	sub	a0, s0, a0
80205564: 03 35 05 c7  	ld	a0, -912(a0)
80205568: 81 45        	li	a1, 0
8020556a: 97 50 00 00  	auipc	ra, 5
8020556e: e7 80 e0 eb  	jalr	-322(ra)
80205572: 13 06 10 08  	li	a2, 129
80205576: 09 65        	lui	a0, 2
80205578: 33 05 a4 40  	sub	a0, s0, a0
8020557c: 03 35 85 c6  	ld	a0, -920(a0)
80205580: 81 45        	li	a1, 0
80205582: 97 50 00 00  	auipc	ra, 5
80205586: e7 80 60 ea  	jalr	-346(ra)
8020558a: 13 06 10 08  	li	a2, 129
8020558e: 09 65        	lui	a0, 2
80205590: 33 05 a4 40  	sub	a0, s0, a0
80205594: 03 35 05 c6  	ld	a0, -928(a0)
80205598: 81 45        	li	a1, 0
8020559a: 97 50 00 00  	auipc	ra, 5
8020559e: e7 80 e0 e8  	jalr	-370(ra)
802055a2: 13 06 10 08  	li	a2, 129
802055a6: 09 65        	lui	a0, 2
802055a8: 33 05 a4 40  	sub	a0, s0, a0
802055ac: 03 35 85 c5  	ld	a0, -936(a0)
802055b0: 81 45        	li	a1, 0
802055b2: 97 50 00 00  	auipc	ra, 5
802055b6: e7 80 60 e7  	jalr	-394(ra)
802055ba: 13 06 10 08  	li	a2, 129
802055be: 09 65        	lui	a0, 2
802055c0: 33 05 a4 40  	sub	a0, s0, a0
802055c4: 03 35 05 c5  	ld	a0, -944(a0)
802055c8: 81 45        	li	a1, 0
802055ca: 97 50 00 00  	auipc	ra, 5
802055ce: e7 80 e0 e5  	jalr	-418(ra)
802055d2: 13 06 10 08  	li	a2, 129
802055d6: 09 65        	lui	a0, 2
802055d8: 33 05 a4 40  	sub	a0, s0, a0
802055dc: 03 35 85 c4  	ld	a0, -952(a0)
802055e0: 81 45        	li	a1, 0
802055e2: 97 50 00 00  	auipc	ra, 5
802055e6: e7 80 60 e4  	jalr	-442(ra)
802055ea: 13 06 10 08  	li	a2, 129
802055ee: 09 65        	lui	a0, 2
802055f0: 33 05 a4 40  	sub	a0, s0, a0
802055f4: 03 35 05 c4  	ld	a0, -960(a0)
802055f8: 81 45        	li	a1, 0
802055fa: 97 50 00 00  	auipc	ra, 5
802055fe: e7 80 e0 e2  	jalr	-466(ra)
80205602: 13 06 10 08  	li	a2, 129
80205606: 09 65        	lui	a0, 2
80205608: 33 05 a4 40  	sub	a0, s0, a0
8020560c: 03 35 85 c3  	ld	a0, -968(a0)
80205610: 81 45        	li	a1, 0
80205612: 97 50 00 00  	auipc	ra, 5
80205616: e7 80 60 e1  	jalr	-490(ra)
8020561a: 13 06 10 08  	li	a2, 129
8020561e: 09 65        	lui	a0, 2
80205620: 33 05 a4 40  	sub	a0, s0, a0
80205624: 03 35 05 c3  	ld	a0, -976(a0)
80205628: 81 45        	li	a1, 0
8020562a: 97 50 00 00  	auipc	ra, 5
8020562e: e7 80 e0 df  	jalr	-514(ra)
80205632: 13 06 10 08  	li	a2, 129
80205636: 09 65        	lui	a0, 2
80205638: 33 05 a4 40  	sub	a0, s0, a0
8020563c: 03 35 85 c2  	ld	a0, -984(a0)
80205640: 81 45        	li	a1, 0
80205642: 97 50 00 00  	auipc	ra, 5
80205646: e7 80 60 de  	jalr	-538(ra)
8020564a: 13 06 10 08  	li	a2, 129
8020564e: 09 65        	lui	a0, 2
80205650: 33 05 a4 40  	sub	a0, s0, a0
80205654: 03 35 05 c2  	ld	a0, -992(a0)
80205658: 81 45        	li	a1, 0
8020565a: 97 50 00 00  	auipc	ra, 5
8020565e: e7 80 e0 dc  	jalr	-562(ra)
80205662: 13 06 10 08  	li	a2, 129
80205666: 09 65        	lui	a0, 2
80205668: 33 05 a4 40  	sub	a0, s0, a0
8020566c: 03 35 85 c1  	ld	a0, -1000(a0)
80205670: 81 45        	li	a1, 0
80205672: 97 50 00 00  	auipc	ra, 5
80205676: e7 80 60 db  	jalr	-586(ra)
8020567a: 13 06 10 08  	li	a2, 129
8020567e: 09 65        	lui	a0, 2
80205680: 33 05 a4 40  	sub	a0, s0, a0
80205684: 03 35 05 c1  	ld	a0, -1008(a0)
80205688: 81 45        	li	a1, 0
8020568a: 97 50 00 00  	auipc	ra, 5
8020568e: e7 80 e0 d9  	jalr	-610(ra)
80205692: 13 06 10 08  	li	a2, 129
80205696: 09 65        	lui	a0, 2
80205698: 33 05 a4 40  	sub	a0, s0, a0
8020569c: 03 35 85 c0  	ld	a0, -1016(a0)
802056a0: 81 45        	li	a1, 0
802056a2: 97 50 00 00  	auipc	ra, 5
802056a6: e7 80 60 d8  	jalr	-634(ra)
802056aa: 13 06 10 08  	li	a2, 129
802056ae: 09 65        	lui	a0, 2
802056b0: 33 05 a4 40  	sub	a0, s0, a0
802056b4: 03 35 05 c0  	ld	a0, -1024(a0)
802056b8: 81 45        	li	a1, 0
802056ba: 97 50 00 00  	auipc	ra, 5
802056be: e7 80 e0 d6  	jalr	-658(ra)
802056c2: 13 06 10 08  	li	a2, 129
802056c6: 09 65        	lui	a0, 2
802056c8: 33 05 a4 40  	sub	a0, s0, a0
802056cc: 03 35 85 bf  	ld	a0, -1032(a0)
802056d0: 81 45        	li	a1, 0
802056d2: 97 50 00 00  	auipc	ra, 5
802056d6: e7 80 60 d5  	jalr	-682(ra)
802056da: 13 06 10 08  	li	a2, 129
802056de: 09 65        	lui	a0, 2
802056e0: 33 05 a4 40  	sub	a0, s0, a0
802056e4: 03 35 05 bf  	ld	a0, -1040(a0)
802056e8: 81 45        	li	a1, 0
802056ea: 97 50 00 00  	auipc	ra, 5
802056ee: e7 80 e0 d3  	jalr	-706(ra)
802056f2: 13 85 04 01  	addi	a0, s1, 16
802056f6: 45 46        	li	a2, 17
802056f8: 26 06        	slli	a2, a2, 9
802056fa: 89 65        	lui	a1, 2
802056fc: 9b 85 85 27  	addiw	a1, a1, 632
80205700: b3 05 b4 40  	sub	a1, s0, a1
80205704: 97 50 00 00  	auipc	ra, 5
80205708: e7 80 c0 d2  	jalr	-724(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020570c: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80205710: 23 04 09 00  	sb	zero, 8(s2)
80205714: 0f 00 10 03  	fence	rw, w
80205718: 23 b0 a4 01  	sd	s10, 0(s1)
8020571c: 09 65        	lui	a0, 2
8020571e: 1b 05 85 28  	addiw	a0, a0, 648
80205722: 33 05 a4 40  	sub	a0, s0, a0
80205726: 97 30 00 00  	auipc	ra, 3
8020572a: e7 80 20 10  	jalr	258(ra)
8020572e: 21 a8        	j	0x80205746 <.Lpcrel_hi62+0x24fe>
80205730: 0f 00 00 01  	fence	w, 0
80205734: 0f 00 30 03  	fence	rw, rw
80205738: 88 60        	ld	a0, 0(s1)
8020573a: 0f 00 30 02  	fence	r, rw
;             match status {
8020573e: e3 09 b5 ff  	beq	a0, s11, 0x80205730 <.Lpcrel_hi62+0x24e8>
80205742: 63 19 a5 0f  	bne	a0, s10, 0x80205834 <.Lpcrel_hi82+0xa>
80205746: 63 71 7b 09  	bgeu	s6, s7, 0x802057c8 <.Lpcrel_hi93>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020574a: 73 25 00 10  	csrr	a0, sstatus
;                 (*self & (1 << bit)) != 0
8020574e: 09 89        	andi	a0, a0, 2
;     if intr_get() {
80205750: 63 14 05 1c  	bnez	a0, 0x80205918 <.Lpcrel_hi94>
;     if mc.noff < 1 {
80205754: 33 05 8b 03  	mul	a0, s6, s8
80205758: 26 95        	add	a0, a0, s1
8020575a: 50 65        	ld	a2, 136(a0)
8020575c: 93 05 85 08  	addi	a1, a0, 136
80205760: 63 56 c0 1e  	blez	a2, 0x8020594c <.Lpcrel_hi96+0xa>
;     mc.noff -= 1;
80205764: 7d 16        	addi	a2, a2, -1
80205766: 90 e1        	sd	a2, 0(a1)
;     if mc.noff == 0 && mc.intena {
80205768: 19 c2        	beqz	a2, 0x8020576e <.Lpcrel_hi62+0x2526>
8020576a: 6f d0 3f e3  	j	0x8020359c <.Lpcrel_hi62+0x354>
8020576e: 03 45 05 09  	lbu	a0, 144(a0)
80205772: 19 e1        	bnez	a0, 0x80205778 <.Lpcrel_hi62+0x2530>
80205774: 6f d0 9f e2  	j	0x8020359c <.Lpcrel_hi62+0x354>
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80205778: 73 20 0d 10  	csrs	sstatus, s10
8020577c: 6f d0 1f e2  	j	0x8020359c <.Lpcrel_hi62+0x354>

0000000080205780 <.Lpcrel_hi67>:
; 	&mut (CPUS.get_mut()[id])
80205780: 17 65 00 00  	auipc	a0, 6
80205784: 13 06 85 c5  	addi	a2, a0, -936
80205788: 93 05 00 04  	li	a1, 64
8020578c: 5a 85        	mv	a0, s6
8020578e: 97 30 00 00  	auipc	ra, 3
80205792: e7 80 60 2c  	jalr	710(ra)
80205796: 00 00        	unimp	

0000000080205798 <.Lpcrel_hi80>:
; 	&mut (CPUS.get_mut()[id])
80205798: 17 65 00 00  	auipc	a0, 6
8020579c: 13 06 05 c4  	addi	a2, a0, -960
802057a0: 93 05 00 04  	li	a1, 64
802057a4: 5a 85        	mv	a0, s6
802057a6: 97 30 00 00  	auipc	ra, 3
802057aa: e7 80 e0 2a  	jalr	686(ra)
802057ae: 00 00        	unimp	

00000000802057b0 <.Lpcrel_hi85>:
; 	&mut (CPUS.get_mut()[id])
802057b0: 17 65 00 00  	auipc	a0, 6
802057b4: 13 06 85 c2  	addi	a2, a0, -984
802057b8: 93 05 00 04  	li	a1, 64
802057bc: 5a 85        	mv	a0, s6
802057be: 97 30 00 00  	auipc	ra, 3
802057c2: e7 80 60 29  	jalr	662(ra)
802057c6: 00 00        	unimp	

00000000802057c8 <.Lpcrel_hi93>:
; 	&mut (CPUS.get_mut()[id])
802057c8: 17 65 00 00  	auipc	a0, 6
802057cc: 13 06 05 c1  	addi	a2, a0, -1008
802057d0: 93 05 00 04  	li	a1, 64
802057d4: 5a 85        	mv	a0, s6
802057d6: 97 30 00 00  	auipc	ra, 3
802057da: e7 80 e0 27  	jalr	638(ra)
802057de: 00 00        	unimp	

00000000802057e0 <.Lpcrel_hi72>:
; 	&mut (CPUS.get_mut()[id])
802057e0: 17 65 00 00  	auipc	a0, 6
802057e4: 13 06 85 bf  	addi	a2, a0, -1032
802057e8: 93 05 00 04  	li	a1, 64
802057ec: 5a 85        	mv	a0, s6
802057ee: 97 30 00 00  	auipc	ra, 3
802057f2: e7 80 60 26  	jalr	614(ra)
802057f6: 00 00        	unimp	
;             match status {
802057f8: 25 e9        	bnez	a0, 0x80205868 <.Lpcrel_hi65>

00000000802057fa <.Lpcrel_hi63>:
;                 INCOMPLETE => unreachable!(),
802057fa: 17 65 00 00  	auipc	a0, 6
802057fe: 13 05 e5 88  	addi	a0, a0, -1906

0000000080205802 <.Lpcrel_hi64>:
80205802: 97 65 00 00  	auipc	a1, 6
80205806: 13 86 e5 8a  	addi	a2, a1, -1874
8020580a: 81 a8        	j	0x8020585a <.Lpcrel_hi69+0x8>
;             match status {
8020580c: 3d e5        	bnez	a0, 0x8020587a <.Lpcrel_hi78>

000000008020580e <.Lpcrel_hi76>:
;                 INCOMPLETE => unreachable!(),
8020580e: 17 65 00 00  	auipc	a0, 6
80205812: 13 05 a5 87  	addi	a0, a0, -1926

0000000080205816 <.Lpcrel_hi77>:
80205816: 97 65 00 00  	auipc	a1, 6
8020581a: 13 86 a5 89  	addi	a2, a1, -1894
8020581e: 35 a8        	j	0x8020585a <.Lpcrel_hi69+0x8>
;             match status {
80205820: 35 e5        	bnez	a0, 0x8020588c <.Lpcrel_hi83>

0000000080205822 <.Lpcrel_hi81>:
;                 INCOMPLETE => unreachable!(),
80205822: 17 65 00 00  	auipc	a0, 6
80205826: 13 05 65 86  	addi	a0, a0, -1946

000000008020582a <.Lpcrel_hi82>:
8020582a: 97 65 00 00  	auipc	a1, 6
8020582e: 13 86 65 88  	addi	a2, a1, -1914
80205832: 25 a0        	j	0x8020585a <.Lpcrel_hi69+0x8>
;             match status {
80205834: 2d e5        	bnez	a0, 0x8020589e <.Lpcrel_hi91>

0000000080205836 <.Lpcrel_hi89>:
;                 INCOMPLETE => unreachable!(),
80205836: 17 65 00 00  	auipc	a0, 6
8020583a: 13 05 25 85  	addi	a0, a0, -1966

000000008020583e <.Lpcrel_hi90>:
8020583e: 97 65 00 00  	auipc	a1, 6
80205842: 13 86 25 87  	addi	a2, a1, -1934
80205846: 11 a8        	j	0x8020585a <.Lpcrel_hi69+0x8>
;             match status {
80205848: 25 e5        	bnez	a0, 0x802058b0 <.Lpcrel_hi70>

000000008020584a <.Lpcrel_hi68>:
;                 INCOMPLETE => unreachable!(),
8020584a: 17 65 00 00  	auipc	a0, 6
8020584e: 13 05 e5 83  	addi	a0, a0, -1986

0000000080205852 <.Lpcrel_hi69>:
80205852: 97 65 00 00  	auipc	a1, 6
80205856: 13 86 e5 85  	addi	a2, a1, -1954
8020585a: 93 05 80 02  	li	a1, 40
8020585e: 97 30 00 00  	auipc	ra, 3
80205862: e7 80 a0 1c  	jalr	458(ra)
80205866: 00 00        	unimp	

0000000080205868 <.Lpcrel_hi65>:
;                 PANICKED => panic!("Once has panicked"),
80205868: 17 55 00 00  	auipc	a0, 5
8020586c: 13 05 85 79  	addi	a0, a0, 1944

0000000080205870 <.Lpcrel_hi66>:
80205870: 97 65 00 00  	auipc	a1, 6
80205874: 13 86 05 80  	addi	a2, a1, -2048
80205878: a1 a0        	j	0x802058c0 <.Lpcrel_hi71+0x8>

000000008020587a <.Lpcrel_hi78>:
8020587a: 17 55 00 00  	auipc	a0, 5
8020587e: 13 05 65 78  	addi	a0, a0, 1926

0000000080205882 <.Lpcrel_hi79>:
80205882: 97 55 00 00  	auipc	a1, 5
80205886: 13 86 e5 7e  	addi	a2, a1, 2030
8020588a: 1d a8        	j	0x802058c0 <.Lpcrel_hi71+0x8>

000000008020588c <.Lpcrel_hi83>:
8020588c: 17 55 00 00  	auipc	a0, 5
80205890: 13 05 45 77  	addi	a0, a0, 1908

0000000080205894 <.Lpcrel_hi84>:
80205894: 97 55 00 00  	auipc	a1, 5
80205898: 13 86 c5 7d  	addi	a2, a1, 2012
8020589c: 15 a0        	j	0x802058c0 <.Lpcrel_hi71+0x8>

000000008020589e <.Lpcrel_hi91>:
8020589e: 17 55 00 00  	auipc	a0, 5
802058a2: 13 05 25 76  	addi	a0, a0, 1890

00000000802058a6 <.Lpcrel_hi92>:
802058a6: 97 55 00 00  	auipc	a1, 5
802058aa: 13 86 a5 7c  	addi	a2, a1, 1994
802058ae: 09 a8        	j	0x802058c0 <.Lpcrel_hi71+0x8>

00000000802058b0 <.Lpcrel_hi70>:
802058b0: 17 55 00 00  	auipc	a0, 5
802058b4: 13 05 05 75  	addi	a0, a0, 1872

00000000802058b8 <.Lpcrel_hi71>:
802058b8: 97 55 00 00  	auipc	a1, 5
802058bc: 13 86 85 7b  	addi	a2, a1, 1976
802058c0: c5 45        	li	a1, 17
802058c2: 97 30 00 00  	auipc	ra, 3
802058c6: e7 80 60 16  	jalr	358(ra)
802058ca: 00 00        	unimp	

00000000802058cc <.Lpcrel_hi86>:
802058cc: 17 65 00 00  	auipc	a0, 6
802058d0: 13 05 45 3c  	addi	a0, a0, 964
802058d4: 89 65        	lui	a1, 2
802058d6: 9b 85 85 28  	addiw	a1, a1, 648
802058da: b3 05 b4 40  	sub	a1, s0, a1
802058de: 88 e9        	sd	a0, 16(a1)
802058e0: 05 45        	li	a0, 1
802058e2: 88 ed        	sd	a0, 24(a1)
802058e4: 23 b8 05 02  	sd	zero, 48(a1)

00000000802058e8 <.Lpcrel_hi87>:
802058e8: 17 65 00 00  	auipc	a0, 6
802058ec: 13 05 05 2e  	addi	a0, a0, 736
802058f0: 88 f1        	sd	a0, 32(a1)
802058f2: 23 b4 05 02  	sd	zero, 40(a1)

00000000802058f6 <.Lpcrel_hi88>:
;             panic!("release");
802058f6: 17 65 00 00  	auipc	a0, 6
802058fa: 93 05 a5 3a  	addi	a1, a0, 938
802058fe: c1 a0        	j	0x802059be <.Lpcrel_hi75+0x8>

0000000080205900 <.Lpcrel_hi61>:
; 	&mut (CPUS.get_mut()[id])
80205900: 17 65 00 00  	auipc	a0, 6
80205904: 13 06 85 ad  	addi	a2, a0, -1320
80205908: 93 05 00 04  	li	a1, 64
8020590c: 4a 85        	mv	a0, s2
8020590e: 97 30 00 00  	auipc	ra, 3
80205912: e7 80 60 14  	jalr	326(ra)
80205916: 00 00        	unimp	

0000000080205918 <.Lpcrel_hi94>:
80205918: 17 65 00 00  	auipc	a0, 6
8020591c: 13 05 85 3b  	addi	a0, a0, 952
80205920: 89 65        	lui	a1, 2
80205922: 9b 85 85 28  	addiw	a1, a1, 648
80205926: b3 05 b4 40  	sub	a1, s0, a1
8020592a: 88 e9        	sd	a0, 16(a1)
8020592c: 05 45        	li	a0, 1
8020592e: 88 ed        	sd	a0, 24(a1)
80205930: 23 b8 05 02  	sd	zero, 48(a1)

0000000080205934 <.Lpcrel_hi95>:
80205934: 17 65 00 00  	auipc	a0, 6
80205938: 13 05 45 38  	addi	a0, a0, 900
8020593c: 88 f1        	sd	a0, 32(a1)
8020593e: 23 b4 05 02  	sd	zero, 40(a1)

0000000080205942 <.Lpcrel_hi96>:
;         panic!("pop_off - interruptible");
80205942: 17 65 00 00  	auipc	a0, 6
80205946: 93 05 e5 3a  	addi	a1, a0, 942
8020594a: 95 a8        	j	0x802059be <.Lpcrel_hi75+0x8>
8020594c: 09 65        	lui	a0, 2
8020594e: 1b 05 85 28  	addiw	a0, a0, 648
80205952: 33 06 a4 40  	sub	a2, s0, a0
;         panic!("pop_off {}", mc.noff);
80205956: 0c e2        	sd	a1, 0(a2)

0000000080205958 <.Lpcrel_hi97>:
80205958: 17 45 00 00  	auipc	a0, 4
8020595c: 13 05 e5 7b  	addi	a0, a0, 1982
80205960: 08 e6        	sd	a0, 8(a2)

0000000080205962 <.Lpcrel_hi98>:
80205962: 17 65 00 00  	auipc	a0, 6
80205966: 13 05 65 3a  	addi	a0, a0, 934
8020596a: 08 ea        	sd	a0, 16(a2)
8020596c: 05 45        	li	a0, 1
8020596e: 08 ee        	sd	a0, 24(a2)
80205970: 23 38 06 02  	sd	zero, 48(a2)
80205974: 89 65        	lui	a1, 2
80205976: 9b 85 85 28  	addiw	a1, a1, 648
8020597a: b3 05 b4 40  	sub	a1, s0, a1
8020597e: 0c f2        	sd	a1, 32(a2)
80205980: 08 f6        	sd	a0, 40(a2)

0000000080205982 <.Lpcrel_hi99>:
;         panic!("pop_off {}", mc.noff);
80205982: 17 65 00 00  	auipc	a0, 6
80205986: 93 05 65 39  	addi	a1, a0, 918
8020598a: 15 a8        	j	0x802059be <.Lpcrel_hi75+0x8>

000000008020598c <.Lpcrel_hi73>:
8020598c: 17 65 00 00  	auipc	a0, 6
80205990: 13 05 c5 2b  	addi	a0, a0, 700
80205994: 89 65        	lui	a1, 2
80205996: 9b 85 85 28  	addiw	a1, a1, 648
8020599a: b3 05 b4 40  	sub	a1, s0, a1
8020599e: 88 e9        	sd	a0, 16(a1)
802059a0: 05 45        	li	a0, 1
802059a2: 88 ed        	sd	a0, 24(a1)
802059a4: 23 b8 05 02  	sd	zero, 48(a1)

00000000802059a8 <.Lpcrel_hi74>:
802059a8: 17 65 00 00  	auipc	a0, 6
802059ac: 13 05 05 22  	addi	a0, a0, 544
802059b0: 88 f1        	sd	a0, 32(a1)
802059b2: 23 b4 05 02  	sd	zero, 40(a1)

00000000802059b6 <.Lpcrel_hi75>:
;             panic!("acquire");
802059b6: 17 65 00 00  	auipc	a0, 6
802059ba: 93 05 a5 2b  	addi	a1, a0, 698
802059be: 09 65        	lui	a0, 2
802059c0: 1b 05 85 27  	addiw	a0, a0, 632
802059c4: 33 05 a4 40  	sub	a0, s0, a0
802059c8: 97 30 00 00  	auipc	ra, 3
802059cc: e7 80 20 03  	jalr	50(ra)
802059d0: 00 00        	unimp	

00000000802059d2 <forkret>:
; fn forkret() {
802059d2: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802059d4: 86 ec        	sd	ra, 88(sp)
802059d6: a2 e8        	sd	s0, 80(sp)
802059d8: a6 e4        	sd	s1, 72(sp)
802059da: ca e0        	sd	s2, 64(sp)
802059dc: 4e fc        	sd	s3, 56(sp)
802059de: 80 10        	addi	s0, sp, 96
802059e0: 73 29 00 10  	csrr	s2, sstatus
802059e4: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802059e6: 73 30 05 10  	csrc	sstatus, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802059ea: 92 84        	mv	s1, tp

00000000802059ec <.Lpcrel_hi100>:
;         self.0.call_once(builder)
802059ec: 17 35 14 00  	auipc	a0, 323
802059f0: 13 05 c5 48  	addi	a0, a0, 1164
802059f4: 97 c0 ff ff  	auipc	ra, 1048572
802059f8: e7 80 c0 60  	jalr	1548(ra)
802059fc: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80205a00: 63 f8 b4 0a  	bgeu	s1, a1, 0x80205ab0 <.Lpcrel_hi101>
80205a04: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80205a08: 33 86 b4 02  	mul	a2, s1, a1
80205a0c: 2a 96        	add	a2, a2, a0
80205a0e: 2c 7e        	ld	a1, 120(a2)
80205a10: 13 05 86 07  	addi	a0, a2, 120
80205a14: 91 e5        	bnez	a1, 0x80205a20 <.Lpcrel_hi100+0x34>
;         mc.intena = old;
80205a16: 7a 19        	slli	s2, s2, 62
80205a18: 93 56 f9 03  	srli	a3, s2, 63
80205a1c: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80205a20: 85 05        	addi	a1, a1, 1
80205a22: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205a24: 92 84        	mv	s1, tp

0000000080205a26 <.Lpcrel_hi102>:
;         self.0.call_once(builder)
80205a26: 17 35 14 00  	auipc	a0, 323
80205a2a: 13 05 25 45  	addi	a0, a0, 1106
80205a2e: 97 c0 ff ff  	auipc	ra, 1048572
80205a32: e7 80 20 5d  	jalr	1490(ra)
80205a36: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80205a3a: 63 f0 b4 08  	bgeu	s1, a1, 0x80205aba <.Lpcrel_hi103>
80205a3e: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80205a42: b3 85 b4 02  	mul	a1, s1, a1
80205a46: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
80205a48: 04 61        	ld	s1, 0(a0)
;     pop_off();
80205a4a: 97 20 00 00  	auipc	ra, 2
80205a4e: e7 80 40 d4  	jalr	-700(ra)
80205a52: 03 85 84 09  	lb	a0, 152(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80205a56: 51 c9        	beqz	a0, 0x80205aea <.Lpcrel_hi106>
80205a58: 83 b9 04 09  	ld	s3, 144(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205a5c: 12 89        	mv	s2, tp

0000000080205a5e <.Lpcrel_hi104>:
;         self.0.call_once(builder)
80205a5e: 17 35 14 00  	auipc	a0, 323
80205a62: 13 05 a5 41  	addi	a0, a0, 1050
80205a66: 97 c0 ff ff  	auipc	ra, 1048572
80205a6a: e7 80 a0 59  	jalr	1434(ra)
80205a6e: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80205a72: 63 70 b9 06  	bgeu	s2, a1, 0x80205ad2 <.Lpcrel_hi105>
80205a76: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80205a7a: b3 05 b9 02  	mul	a1, s2, a1
80205a7e: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80205a80: 63 95 a9 06  	bne	s3, a0, 0x80205aea <.Lpcrel_hi106>
;         self.cpu = null_mut();
80205a84: 23 b8 04 08  	sd	zero, 144(s1)
80205a88: 0f 00 30 03  	fence	rw, rw
80205a8c: 0f 00 10 03  	fence	rw, w
80205a90: 23 8c 04 08  	sb	zero, 152(s1)
;         pop_off();
80205a94: 97 20 00 00  	auipc	ra, 2
80205a98: e7 80 a0 cf  	jalr	-774(ra)
;     usertrapret();
80205a9c: e6 60        	ld	ra, 88(sp)
80205a9e: 46 64        	ld	s0, 80(sp)
80205aa0: a6 64        	ld	s1, 72(sp)
80205aa2: 06 69        	ld	s2, 64(sp)
80205aa4: e2 79        	ld	s3, 56(sp)
80205aa6: 25 61        	addi	sp, sp, 96
80205aa8: 17 13 00 00  	auipc	t1, 1
80205aac: 67 00 23 30  	jr	770(t1)

0000000080205ab0 <.Lpcrel_hi101>:
; 	&mut (CPUS.get_mut()[id])
80205ab0: 17 65 00 00  	auipc	a0, 6
80205ab4: 13 06 85 92  	addi	a2, a0, -1752
80205ab8: 29 a0        	j	0x80205ac2 <.Lpcrel_hi103+0x8>

0000000080205aba <.Lpcrel_hi103>:
80205aba: 17 65 00 00  	auipc	a0, 6
80205abe: 13 06 e5 91  	addi	a2, a0, -1762
80205ac2: 93 05 00 04  	li	a1, 64
80205ac6: 26 85        	mv	a0, s1
80205ac8: 97 30 00 00  	auipc	ra, 3
80205acc: e7 80 c0 f8  	jalr	-116(ra)
80205ad0: 00 00        	unimp	

0000000080205ad2 <.Lpcrel_hi105>:
; 	&mut (CPUS.get_mut()[id])
80205ad2: 17 65 00 00  	auipc	a0, 6
80205ad6: 13 06 65 90  	addi	a2, a0, -1786
80205ada: 93 05 00 04  	li	a1, 64
80205ade: 4a 85        	mv	a0, s2
80205ae0: 97 30 00 00  	auipc	ra, 3
80205ae4: e7 80 40 f7  	jalr	-140(ra)
80205ae8: 00 00        	unimp	

0000000080205aea <.Lpcrel_hi106>:
80205aea: 17 65 00 00  	auipc	a0, 6
80205aee: 13 05 65 1a  	addi	a0, a0, 422
80205af2: 23 34 a4 fa  	sd	a0, -88(s0)
80205af6: 05 45        	li	a0, 1
80205af8: 23 38 a4 fa  	sd	a0, -80(s0)
80205afc: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205b00 <.Lpcrel_hi107>:
80205b00: 17 65 00 00  	auipc	a0, 6
80205b04: 13 05 85 0c  	addi	a0, a0, 200
80205b08: 23 3c a4 fa  	sd	a0, -72(s0)
80205b0c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205b10 <.Lpcrel_hi108>:
;             panic!("release");
80205b10: 17 65 00 00  	auipc	a0, 6
80205b14: 93 05 05 19  	addi	a1, a0, 400
80205b18: 13 05 84 fa  	addi	a0, s0, -88
80205b1c: 97 30 00 00  	auipc	ra, 3
80205b20: e7 80 e0 ed  	jalr	-290(ra)
80205b24: 00 00        	unimp	

0000000080205b26 <_ZN6kernel6memory3kvm7kvminit17h801e04563794e2d6E>:
; pub fn kvminit() {
80205b26: 35 71        	addi	sp, sp, -160
80205b28: 06 ed        	sd	ra, 152(sp)
80205b2a: 22 e9        	sd	s0, 144(sp)
80205b2c: 26 e5        	sd	s1, 136(sp)
80205b2e: 4a e1        	sd	s2, 128(sp)
80205b30: ce fc        	sd	s3, 120(sp)
80205b32: d2 f8        	sd	s4, 112(sp)
80205b34: d6 f4        	sd	s5, 104(sp)
80205b36: da f0        	sd	s6, 96(sp)
80205b38: de ec        	sd	s7, 88(sp)
80205b3a: e2 e8        	sd	s8, 80(sp)
80205b3c: e6 e4        	sd	s9, 72(sp)
80205b3e: ea e0        	sd	s10, 64(sp)
80205b40: 6e fc        	sd	s11, 56(sp)
80205b42: 00 11        	addi	s0, sp, 160
80205b44: 0f 00 30 03  	fence	rw, rw

0000000080205b48 <.Lpcrel_hi0>:
80205b48: 17 35 14 00  	auipc	a0, 323
80205b4c: 13 09 85 31  	addi	s2, a0, 792
80205b50: 03 35 09 01  	ld	a0, 16(s2)
80205b54: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80205b58: 29 e9        	bnez	a0, 0x80205baa <.Lpcrel_hi0+0x62>
80205b5a: 93 05 09 01  	addi	a1, s2, 16
80205b5e: 85 49        	li	s3, 1
80205b60: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80205b64: 39 e1        	bnez	a0, 0x80205baa <.Lpcrel_hi0+0x62>
80205b66: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80205b6a: 7d fa        	bnez	a2, 0x80205b60 <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80205b6c: 23 34 b4 f6  	sd	a1, -152(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80205b70: 97 20 00 00  	auipc	ra, 2
80205b74: e7 80 60 f8  	jalr	-122(ra)
80205b78: aa 84        	mv	s1, a0
80205b7a: 05 66        	lui	a2, 1
80205b7c: 81 45        	li	a1, 0
80205b7e: 97 50 00 00  	auipc	ra, 5
80205b82: e7 80 a0 8a  	jalr	-1878(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80205b86: 23 30 39 01  	sd	s3, 0(s2)
80205b8a: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
80205b8e: 23 08 04 f6  	sb	zero, -144(s0)
80205b92: 0f 00 10 03  	fence	rw, w
80205b96: 09 45        	li	a0, 2
80205b98: 23 38 a9 00  	sd	a0, 16(s2)
80205b9c: 13 05 84 f6  	addi	a0, s0, -152
80205ba0: 97 30 00 00  	auipc	ra, 3
80205ba4: e7 80 80 c8  	jalr	-888(ra)
80205ba8: 0d a0        	j	0x80205bca <.Lpcrel_hi0+0x82>
80205baa: 85 45        	li	a1, 1
;             match status {
80205bac: 63 1c b5 00  	bne	a0, a1, 0x80205bc4 <.Lpcrel_hi0+0x7c>
80205bb0: 0f 00 00 01  	fence	w, 0
80205bb4: 0f 00 30 03  	fence	rw, rw
80205bb8: 03 35 09 01  	ld	a0, 16(s2)
80205bbc: 0f 00 30 02  	fence	r, rw
;             match status {
80205bc0: e3 08 b5 fe  	beq	a0, a1, 0x80205bb0 <.Lpcrel_hi0+0x68>
80205bc4: 89 45        	li	a1, 2
;             match status {
80205bc6: 63 1f b5 2a  	bne	a0, a1, 0x80205e84 <.Lpcrel_hi54+0x16>
;             let pte = self.walk(a, true);
80205bca: 21 09        	addi	s2, s2, 8
80205bcc: b7 05 00 10  	lui	a1, 65536
80205bd0: 05 46        	li	a2, 1
80205bd2: 85 44        	li	s1, 1
80205bd4: 4a 85        	mv	a0, s2
80205bd6: 97 10 00 00  	auipc	ra, 1
80205bda: e7 80 00 5f  	jalr	1520(ra)
80205bde: 63 03 05 48  	beqz	a0, 0x80206064 <.Lpcrel_hi8>
;             if unsafe { *pte & PTE_V } != 0 {
80205be2: 83 45 05 00  	lbu	a1, 0(a0)
80205be6: 85 89        	andi	a1, a1, 1
80205be8: 63 9b 05 4a  	bnez	a1, 0x8020609e <.Lpcrel_hi5>
80205bec: b7 05 00 04  	lui	a1, 16384
80205bf0: 9d 25        	addiw	a1, a1, 7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205bf2: 0c e1        	sd	a1, 0(a0)
;             let pte = self.walk(a, true);
80205bf4: b7 15 00 10  	lui	a1, 65537
80205bf8: 05 46        	li	a2, 1
80205bfa: 85 44        	li	s1, 1
80205bfc: 4a 85        	mv	a0, s2
80205bfe: 97 10 00 00  	auipc	ra, 1
80205c02: e7 80 80 5c  	jalr	1480(ra)
80205c06: 63 0a 05 4c  	beqz	a0, 0x802060da <.Lpcrel_hi14>
;             if unsafe { *pte & PTE_V } != 0 {
80205c0a: 83 45 05 00  	lbu	a1, 0(a0)
80205c0e: 85 89        	andi	a1, a1, 1
80205c10: 63 92 05 50  	bnez	a1, 0x80206114 <.Lpcrel_hi11>
80205c14: b7 05 00 04  	lui	a1, 16384
80205c18: 9b 85 75 40  	addiw	a1, a1, 1031
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205c1c: 0c e1        	sd	a1, 0(a0)
80205c1e: b7 09 00 0c  	lui	s3, 49152
80205c22: 37 fa ff 0b  	lui	s4, 49151
80205c26: b7 04 00 03  	lui	s1, 12288
80205c2a: 9d 24        	addiw	s1, s1, 7
80205c2c: 85 6a        	lui	s5, 1
80205c2e: 37 eb 3f 0c  	lui	s6, 50174
;             let pte = self.walk(a, true);
80205c32: 05 46        	li	a2, 1
80205c34: 4a 85        	mv	a0, s2
80205c36: ce 85        	mv	a1, s3
80205c38: 97 10 00 00  	auipc	ra, 1
80205c3c: e7 80 e0 58  	jalr	1422(ra)
;             if pte.is_null() {
80205c40: 63 02 05 26  	beqz	a0, 0x80205ea4 <.Lpcrel_hi20>
;             if unsafe { *pte & PTE_V } != 0 {
80205c44: 83 45 05 00  	lbu	a1, 0(a0)
80205c48: 85 89        	andi	a1, a1, 1
80205c4a: 63 9b 05 28  	bnez	a1, 0x80205ee0 <.Lpcrel_hi17>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205c4e: 04 e1        	sd	s1, 0(a0)
;             pa += PGSIZE;
80205c50: d6 99        	add	s3, s3, s5
;         while a <= last {
80205c52: 56 9a        	add	s4, s4, s5
80205c54: 93 84 04 40  	addi	s1, s1, 1024
80205c58: e3 7d 4b fd  	bgeu	s6, s4, 0x80205c32 <.Lpcrel_hi0+0xea>

0000000080205c5c <.Lpcrel_hi23>:
;         if size == 0 {
80205c5c: 17 55 00 00  	auipc	a0, 5
80205c60: 93 09 45 3a  	addi	s3, a0, 932
80205c64: 93 05 10 40  	li	a1, 1025
80205c68: 13 95 55 01  	slli	a0, a1, 21
80205c6c: 63 82 a9 4e  	beq	s3, a0, 0x80206150 <.Lpcrel_hi24>
;         while a <= last {
80205c70: 13 85 f9 ff  	addi	a0, s3, -1
80205c74: 13 56 55 01  	srli	a2, a0, 21
80205c78: 63 6f b6 02  	bltu	a2, a1, 0x80205cb6 <.Lpcrel_hi23+0x5a>
80205c7c: 93 04 10 40  	li	s1, 1025
80205c80: d6 04        	slli	s1, s1, 21
80205c82: 05 6a        	lui	s4, 1
80205c84: fd 75        	lui	a1, 1048575
80205c86: b3 7a b5 00  	and	s5, a0, a1
;             let pte = self.walk(a, true);
80205c8a: 05 46        	li	a2, 1
80205c8c: 4a 85        	mv	a0, s2
80205c8e: a6 85        	mv	a1, s1
80205c90: 97 10 00 00  	auipc	ra, 1
80205c94: e7 80 60 53  	jalr	1334(ra)
;             if pte.is_null() {
80205c98: 63 0e 05 2c  	beqz	a0, 0x80205f74 <.Lpcrel_hi30>
;             if unsafe { *pte & PTE_V } != 0 {
80205c9c: 83 45 05 00  	lbu	a1, 0(a0)
80205ca0: 85 89        	andi	a1, a1, 1
80205ca2: 63 97 05 30  	bnez	a1, 0x80205fb0 <.Lpcrel_hi27>
;     (pa >> 12) << 10
80205ca6: 93 d5 24 00  	srli	a1, s1, 2
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205caa: 93 e5 b5 00  	ori	a1, a1, 11
;             pa += PGSIZE;
80205cae: d2 94        	add	s1, s1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205cb0: 0c e1        	sd	a1, 0(a0)
;         while a <= last {
80205cb2: e3 fc 9a fc  	bgeu	s5, s1, 0x80205c8a <.Lpcrel_hi23+0x2e>
80205cb6: 45 45        	li	a0, 17
80205cb8: 6e 05        	slli	a0, a0, 27
80205cba: 63 89 a9 4c  	beq	s3, a0, 0x8020618c <.Lpcrel_hi33>
80205cbe: 7d 75        	lui	a0, 1048575
;         while a <= last {
80205cc0: b3 f4 a9 00  	and	s1, s3, a0
80205cc4: b7 85 08 00  	lui	a1, 136
80205cc8: fd 35        	addiw	a1, a1, -1
80205cca: 93 9a c5 00  	slli	s5, a1, 12
80205cce: 13 5a 25 00  	srli	s4, a0, 2
;         while a <= last {
80205cd2: 63 ec 9a 02  	bltu	s5, s1, 0x80205d0a <.Lpcrel_hi23+0xae>
80205cd6: 05 6b        	lui	s6, 1
;             let pte = self.walk(a, true);
80205cd8: 05 46        	li	a2, 1
80205cda: 4a 85        	mv	a0, s2
80205cdc: a6 85        	mv	a1, s1
80205cde: 97 10 00 00  	auipc	ra, 1
80205ce2: e7 80 80 4e  	jalr	1256(ra)
;             if pte.is_null() {
80205ce6: 63 03 05 30  	beqz	a0, 0x80205fec <.Lpcrel_hi39>
;             if unsafe { *pte & PTE_V } != 0 {
80205cea: 83 45 05 00  	lbu	a1, 0(a0)
80205cee: 85 89        	andi	a1, a1, 1
80205cf0: 63 9c 05 32  	bnez	a1, 0x80206028 <.Lpcrel_hi36>
;     (pa >> 12) << 10
80205cf4: 93 d5 29 00  	srli	a1, s3, 2
80205cf8: b3 f5 45 01  	and	a1, a1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205cfc: 93 e5 75 00  	ori	a1, a1, 7
80205d00: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
80205d02: da 94        	add	s1, s1, s6
;             pa += PGSIZE;
80205d04: da 99        	add	s3, s3, s6
;         while a <= last {
80205d06: e3 f9 9a fc  	bgeu	s5, s1, 0x80205cd8 <.Lpcrel_hi23+0x7c>
80205d0a: 37 05 00 04  	lui	a0, 16384
80205d0e: 7d 35        	addiw	a0, a0, -1
80205d10: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80205d14: 05 46        	li	a2, 1
80205d16: 85 44        	li	s1, 1
80205d18: 4a 85        	mv	a0, s2
80205d1a: 97 10 00 00  	auipc	ra, 1
80205d1e: e7 80 c0 4a  	jalr	1196(ra)
80205d22: 63 03 05 4a  	beqz	a0, 0x802061c8 <.Lpcrel_hi46>
;             if unsafe { *pte & PTE_V } != 0 {
80205d26: 83 45 05 00  	lbu	a1, 0(a0)
80205d2a: 85 89        	andi	a1, a1, 1
80205d2c: 63 9b 05 4c  	bnez	a1, 0x80206202 <.Lpcrel_hi43>
80205d30: 81 4a        	li	s5, 0

0000000080205d32 <.Lpcrel_hi42>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205d32: 97 b5 ff ff  	auipc	a1, 1048571
80205d36: 93 85 e5 2c  	addi	a1, a1, 718
80205d3a: b1 81        	srli	a1, a1, 12
80205d3c: aa 05        	slli	a1, a1, 10
80205d3e: ad 05        	addi	a1, a1, 11
80205d40: 0c e1        	sd	a1, 0(a0)
80205d42: 37 05 00 02  	lui	a0, 8192
80205d46: 5d 35        	addiw	a0, a0, -9
80205d48: 93 1b d5 00  	slli	s7, a0, 13
80205d4c: 37 f5 ff fd  	lui	a0, 1040383
80205d50: 3a 05        	slli	a0, a0, 14
80205d52: 13 5c a5 01  	srli	s8, a0, 26
80205d56: fd 7c        	lui	s9, 1048575
80205d58: 13 0d 00 04  	li	s10, 64
80205d5c: 85 6d        	lui	s11, 1
80205d5e: 21 a0        	j	0x80205d66 <.Lpcrel_hi42+0x34>
80205d60: 85 0a        	addi	s5, s5, 1
80205d62: 63 8d aa 05  	beq	s5, s10, 0x80205dbc <.Lpcrel_hi58>
;             let pa = kalloc();
80205d66: 97 20 00 00  	auipc	ra, 2
80205d6a: e7 80 00 d9  	jalr	-624(ra)
80205d6e: 63 07 05 1a  	beqz	a0, 0x80205f1c <.Lpcrel_hi49>
80205d72: aa 89        	mv	s3, a0
;     TRAMPOLINE - (p + 1) * (KERNEL_STACK_SIZE + PGSIZE)
80205d74: 3d 75        	lui	a0, 1048559
80205d76: b3 85 aa 02  	mul	a1, s5, a0
80205d7a: 33 85 75 01  	add	a0, a1, s7
;         let last = pgrounddown(va + size - 1);
80205d7e: e2 95        	add	a1, a1, s8
;     addr & !(PGSIZE - 1)
80205d80: 33 fb 95 01  	and	s6, a1, s9
;         while a <= last {
80205d84: e3 6e ab fc  	bltu	s6, a0, 0x80205d60 <.Lpcrel_hi42+0x2e>
;     addr & !(PGSIZE - 1)
80205d88: b3 74 95 01  	and	s1, a0, s9
;             let pte = self.walk(a, true);
80205d8c: 05 46        	li	a2, 1
80205d8e: 4a 85        	mv	a0, s2
80205d90: a6 85        	mv	a1, s1
80205d92: 97 10 00 00  	auipc	ra, 1
80205d96: e7 80 40 43  	jalr	1076(ra)
;             if pte.is_null() {
80205d9a: 2d c9        	beqz	a0, 0x80205e0c <.Lpcrel_hi55>
;             if unsafe { *pte & PTE_V } != 0 {
80205d9c: 83 45 05 00  	lbu	a1, 0(a0)
80205da0: 85 89        	andi	a1, a1, 1
80205da2: dd e1        	bnez	a1, 0x80205e48 <.Lpcrel_hi52>
;     (pa >> 12) << 10
80205da4: 93 d5 29 00  	srli	a1, s3, 2
80205da8: b3 f5 45 01  	and	a1, a1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205dac: 93 e5 75 00  	ori	a1, a1, 7
80205db0: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
80205db2: ee 94        	add	s1, s1, s11
;             pa += PGSIZE;
80205db4: ee 99        	add	s3, s3, s11
;         while a <= last {
80205db6: e3 7b 9b fc  	bgeu	s6, s1, 0x80205d8c <.Lpcrel_hi42+0x5a>
80205dba: 5d b7        	j	0x80205d60 <.Lpcrel_hi42+0x2e>

0000000080205dbc <.Lpcrel_hi58>:
80205dbc: 17 55 00 00  	auipc	a0, 5
80205dc0: 13 05 c5 43  	addi	a0, a0, 1084
80205dc4: 23 34 a4 f6  	sd	a0, -152(s0)
80205dc8: 05 45        	li	a0, 1
80205dca: 23 38 a4 f6  	sd	a0, -144(s0)
80205dce: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205dd2 <.Lpcrel_hi59>:
80205dd2: 17 55 00 00  	auipc	a0, 5
80205dd6: 13 05 e5 3a  	addi	a0, a0, 942
80205dda: 23 3c a4 f6  	sd	a0, -136(s0)
80205dde: 23 30 04 f8  	sd	zero, -128(s0)
;     println!("kvminit success!");
80205de2: 13 05 84 f6  	addi	a0, s0, -152
80205de6: 97 10 00 00  	auipc	ra, 1
80205dea: e7 80 c0 70  	jalr	1804(ra)
; }
80205dee: ea 60        	ld	ra, 152(sp)
80205df0: 4a 64        	ld	s0, 144(sp)
80205df2: aa 64        	ld	s1, 136(sp)
80205df4: 0a 69        	ld	s2, 128(sp)
80205df6: e6 79        	ld	s3, 120(sp)
80205df8: 46 7a        	ld	s4, 112(sp)
80205dfa: a6 7a        	ld	s5, 104(sp)
80205dfc: 06 7b        	ld	s6, 96(sp)
80205dfe: e6 6b        	ld	s7, 88(sp)
80205e00: 46 6c        	ld	s8, 80(sp)
80205e02: a6 6c        	ld	s9, 72(sp)
80205e04: 06 6d        	ld	s10, 64(sp)
80205e06: e2 7d        	ld	s11, 56(sp)
80205e08: 0d 61        	addi	sp, sp, 160
80205e0a: 82 80        	ret

0000000080205e0c <.Lpcrel_hi55>:
80205e0c: 17 55 00 00  	auipc	a0, 5
80205e10: 13 05 45 36  	addi	a0, a0, 868
80205e14: 23 34 a4 f6  	sd	a0, -152(s0)
80205e18: 05 45        	li	a0, 1
80205e1a: 23 38 a4 f6  	sd	a0, -144(s0)
80205e1e: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205e22 <.Lpcrel_hi56>:
80205e22: 17 55 00 00  	auipc	a0, 5
80205e26: 13 05 e5 35  	addi	a0, a0, 862
80205e2a: 23 3c a4 f6  	sd	a0, -136(s0)
80205e2e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205e32 <.Lpcrel_hi57>:
;             panic!("kvmmap");
80205e32: 17 55 00 00  	auipc	a0, 5
80205e36: 93 05 65 36  	addi	a1, a0, 870
80205e3a: 13 05 84 f6  	addi	a0, s0, -152
80205e3e: 97 30 00 00  	auipc	ra, 3
80205e42: e7 80 c0 bb  	jalr	-1092(ra)
80205e46: 00 00        	unimp	

0000000080205e48 <.Lpcrel_hi52>:
80205e48: 17 65 00 00  	auipc	a0, 6
80205e4c: 13 05 05 cf  	addi	a0, a0, -784
80205e50: 23 34 a4 f6  	sd	a0, -152(s0)
80205e54: 05 45        	li	a0, 1
80205e56: 23 38 a4 f6  	sd	a0, -144(s0)
80205e5a: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205e5e <.Lpcrel_hi53>:
80205e5e: 17 65 00 00  	auipc	a0, 6
80205e62: 13 05 a5 c9  	addi	a0, a0, -870
80205e66: 23 3c a4 f6  	sd	a0, -136(s0)
80205e6a: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205e6e <.Lpcrel_hi54>:
;                 panic!("mappages: remap");
80205e6e: 17 65 00 00  	auipc	a0, 6
80205e72: 93 05 a5 cd  	addi	a1, a0, -806
80205e76: 13 05 84 f6  	addi	a0, s0, -152
80205e7a: 97 30 00 00  	auipc	ra, 3
80205e7e: e7 80 00 b8  	jalr	-1152(ra)
80205e82: 00 00        	unimp	
;             match status {
80205e84: 71 e9        	bnez	a0, 0x80205f58 <.Lpcrel_hi3>

0000000080205e86 <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
80205e86: 17 55 00 00  	auipc	a0, 5
80205e8a: 13 05 25 20  	addi	a0, a0, 514

0000000080205e8e <.Lpcrel_hi2>:
80205e8e: 97 55 00 00  	auipc	a1, 5
80205e92: 13 86 25 22  	addi	a2, a1, 546
80205e96: 93 05 80 02  	li	a1, 40
80205e9a: 97 30 00 00  	auipc	ra, 3
80205e9e: e7 80 e0 b8  	jalr	-1138(ra)
80205ea2: 00 00        	unimp	

0000000080205ea4 <.Lpcrel_hi20>:
80205ea4: 17 55 00 00  	auipc	a0, 5
80205ea8: 13 05 c5 2c  	addi	a0, a0, 716
80205eac: 23 34 a4 f6  	sd	a0, -152(s0)
80205eb0: 05 45        	li	a0, 1
80205eb2: 23 38 a4 f6  	sd	a0, -144(s0)
80205eb6: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205eba <.Lpcrel_hi21>:
80205eba: 17 55 00 00  	auipc	a0, 5
80205ebe: 13 05 65 2c  	addi	a0, a0, 710
80205ec2: 23 3c a4 f6  	sd	a0, -136(s0)
80205ec6: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205eca <.Lpcrel_hi22>:
;             panic!("kvmmap");
80205eca: 17 55 00 00  	auipc	a0, 5
80205ece: 93 05 e5 2c  	addi	a1, a0, 718
80205ed2: 13 05 84 f6  	addi	a0, s0, -152
80205ed6: 97 30 00 00  	auipc	ra, 3
80205eda: e7 80 40 b2  	jalr	-1244(ra)
80205ede: 00 00        	unimp	

0000000080205ee0 <.Lpcrel_hi17>:
80205ee0: 17 65 00 00  	auipc	a0, 6
80205ee4: 13 05 85 c5  	addi	a0, a0, -936
80205ee8: 23 34 a4 f6  	sd	a0, -152(s0)
80205eec: 05 45        	li	a0, 1
80205eee: 23 38 a4 f6  	sd	a0, -144(s0)
80205ef2: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205ef6 <.Lpcrel_hi18>:
80205ef6: 17 65 00 00  	auipc	a0, 6
80205efa: 13 05 25 c0  	addi	a0, a0, -1022
80205efe: 23 3c a4 f6  	sd	a0, -136(s0)
80205f02: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205f06 <.Lpcrel_hi19>:
;                 panic!("mappages: remap");
80205f06: 17 65 00 00  	auipc	a0, 6
80205f0a: 93 05 25 c4  	addi	a1, a0, -958
80205f0e: 13 05 84 f6  	addi	a0, s0, -152
80205f12: 97 30 00 00  	auipc	ra, 3
80205f16: e7 80 80 ae  	jalr	-1304(ra)
80205f1a: 00 00        	unimp	

0000000080205f1c <.Lpcrel_hi49>:
80205f1c: 17 55 00 00  	auipc	a0, 5
80205f20: 13 05 c5 29  	addi	a0, a0, 668
80205f24: 23 34 a4 f6  	sd	a0, -152(s0)
80205f28: 05 45        	li	a0, 1
80205f2a: 23 38 a4 f6  	sd	a0, -144(s0)
80205f2e: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205f32 <.Lpcrel_hi50>:
80205f32: 17 55 00 00  	auipc	a0, 5
80205f36: 13 05 e5 24  	addi	a0, a0, 590
80205f3a: 23 3c a4 f6  	sd	a0, -136(s0)
80205f3e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205f42 <.Lpcrel_hi51>:
;                 panic!("kalloc");
80205f42: 17 55 00 00  	auipc	a0, 5
80205f46: 93 05 65 28  	addi	a1, a0, 646
80205f4a: 13 05 84 f6  	addi	a0, s0, -152
80205f4e: 97 30 00 00  	auipc	ra, 3
80205f52: e7 80 c0 aa  	jalr	-1364(ra)
80205f56: 00 00        	unimp	

0000000080205f58 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
80205f58: 17 55 00 00  	auipc	a0, 5
80205f5c: 13 05 85 0a  	addi	a0, a0, 168

0000000080205f60 <.Lpcrel_hi4>:
80205f60: 97 55 00 00  	auipc	a1, 5
80205f64: 13 86 05 11  	addi	a2, a1, 272
80205f68: c5 45        	li	a1, 17
80205f6a: 97 30 00 00  	auipc	ra, 3
80205f6e: e7 80 e0 ab  	jalr	-1346(ra)
80205f72: 00 00        	unimp	

0000000080205f74 <.Lpcrel_hi30>:
80205f74: 17 55 00 00  	auipc	a0, 5
80205f78: 13 05 c5 1f  	addi	a0, a0, 508
80205f7c: 23 34 a4 f6  	sd	a0, -152(s0)
80205f80: 05 45        	li	a0, 1
80205f82: 23 38 a4 f6  	sd	a0, -144(s0)
80205f86: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205f8a <.Lpcrel_hi31>:
80205f8a: 17 55 00 00  	auipc	a0, 5
80205f8e: 13 05 65 1f  	addi	a0, a0, 502
80205f92: 23 3c a4 f6  	sd	a0, -136(s0)
80205f96: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205f9a <.Lpcrel_hi32>:
;             panic!("kvmmap");
80205f9a: 17 55 00 00  	auipc	a0, 5
80205f9e: 93 05 e5 1f  	addi	a1, a0, 510
80205fa2: 13 05 84 f6  	addi	a0, s0, -152
80205fa6: 97 30 00 00  	auipc	ra, 3
80205faa: e7 80 40 a5  	jalr	-1452(ra)
80205fae: 00 00        	unimp	

0000000080205fb0 <.Lpcrel_hi27>:
80205fb0: 17 65 00 00  	auipc	a0, 6
80205fb4: 13 05 85 b8  	addi	a0, a0, -1144
80205fb8: 23 34 a4 f6  	sd	a0, -152(s0)
80205fbc: 05 45        	li	a0, 1
80205fbe: 23 38 a4 f6  	sd	a0, -144(s0)
80205fc2: 23 34 04 f8  	sd	zero, -120(s0)

0000000080205fc6 <.Lpcrel_hi28>:
80205fc6: 17 65 00 00  	auipc	a0, 6
80205fca: 13 05 25 b3  	addi	a0, a0, -1230
80205fce: 23 3c a4 f6  	sd	a0, -136(s0)
80205fd2: 23 30 04 f8  	sd	zero, -128(s0)

0000000080205fd6 <.Lpcrel_hi29>:
;                 panic!("mappages: remap");
80205fd6: 17 65 00 00  	auipc	a0, 6
80205fda: 93 05 25 b7  	addi	a1, a0, -1166
80205fde: 13 05 84 f6  	addi	a0, s0, -152
80205fe2: 97 30 00 00  	auipc	ra, 3
80205fe6: e7 80 80 a1  	jalr	-1512(ra)
80205fea: 00 00        	unimp	

0000000080205fec <.Lpcrel_hi39>:
80205fec: 17 55 00 00  	auipc	a0, 5
80205ff0: 13 05 45 18  	addi	a0, a0, 388
80205ff4: 23 34 a4 f6  	sd	a0, -152(s0)
80205ff8: 05 45        	li	a0, 1
80205ffa: 23 38 a4 f6  	sd	a0, -144(s0)
80205ffe: 23 34 04 f8  	sd	zero, -120(s0)

0000000080206002 <.Lpcrel_hi40>:
80206002: 17 55 00 00  	auipc	a0, 5
80206006: 13 05 e5 17  	addi	a0, a0, 382
8020600a: 23 3c a4 f6  	sd	a0, -136(s0)
8020600e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206012 <.Lpcrel_hi41>:
;             panic!("kvmmap");
80206012: 17 55 00 00  	auipc	a0, 5
80206016: 93 05 65 18  	addi	a1, a0, 390
8020601a: 13 05 84 f6  	addi	a0, s0, -152
8020601e: 97 30 00 00  	auipc	ra, 3
80206022: e7 80 c0 9d  	jalr	-1572(ra)
80206026: 00 00        	unimp	

0000000080206028 <.Lpcrel_hi36>:
80206028: 17 65 00 00  	auipc	a0, 6
8020602c: 13 05 05 b1  	addi	a0, a0, -1264
80206030: 23 34 a4 f6  	sd	a0, -152(s0)
80206034: 05 45        	li	a0, 1
80206036: 23 38 a4 f6  	sd	a0, -144(s0)
8020603a: 23 34 04 f8  	sd	zero, -120(s0)

000000008020603e <.Lpcrel_hi37>:
8020603e: 17 65 00 00  	auipc	a0, 6
80206042: 13 05 a5 ab  	addi	a0, a0, -1350
80206046: 23 3c a4 f6  	sd	a0, -136(s0)
8020604a: 23 30 04 f8  	sd	zero, -128(s0)

000000008020604e <.Lpcrel_hi38>:
;                 panic!("mappages: remap");
8020604e: 17 65 00 00  	auipc	a0, 6
80206052: 93 05 a5 af  	addi	a1, a0, -1286
80206056: 13 05 84 f6  	addi	a0, s0, -152
8020605a: 97 30 00 00  	auipc	ra, 3
8020605e: e7 80 00 9a  	jalr	-1632(ra)
80206062: 00 00        	unimp	

0000000080206064 <.Lpcrel_hi8>:
80206064: 17 55 00 00  	auipc	a0, 5
80206068: 13 05 c5 10  	addi	a0, a0, 268
8020606c: 23 34 a4 f6  	sd	a0, -152(s0)
80206070: 23 38 94 f6  	sd	s1, -144(s0)
80206074: 23 34 04 f8  	sd	zero, -120(s0)

0000000080206078 <.Lpcrel_hi9>:
80206078: 17 55 00 00  	auipc	a0, 5
8020607c: 13 05 85 10  	addi	a0, a0, 264
80206080: 23 3c a4 f6  	sd	a0, -136(s0)
80206084: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206088 <.Lpcrel_hi10>:
;             panic!("kvmmap");
80206088: 17 55 00 00  	auipc	a0, 5
8020608c: 93 05 05 11  	addi	a1, a0, 272
80206090: 13 05 84 f6  	addi	a0, s0, -152
80206094: 97 30 00 00  	auipc	ra, 3
80206098: e7 80 60 96  	jalr	-1690(ra)
8020609c: 00 00        	unimp	

000000008020609e <.Lpcrel_hi5>:
8020609e: 17 65 00 00  	auipc	a0, 6
802060a2: 13 05 a5 a9  	addi	a0, a0, -1382
802060a6: 23 34 a4 f6  	sd	a0, -152(s0)
802060aa: 05 45        	li	a0, 1
802060ac: 23 38 a4 f6  	sd	a0, -144(s0)
802060b0: 23 34 04 f8  	sd	zero, -120(s0)

00000000802060b4 <.Lpcrel_hi6>:
802060b4: 17 65 00 00  	auipc	a0, 6
802060b8: 13 05 45 a4  	addi	a0, a0, -1468
802060bc: 23 3c a4 f6  	sd	a0, -136(s0)
802060c0: 23 30 04 f8  	sd	zero, -128(s0)

00000000802060c4 <.Lpcrel_hi7>:
;                 panic!("mappages: remap");
802060c4: 17 65 00 00  	auipc	a0, 6
802060c8: 93 05 45 a8  	addi	a1, a0, -1404
802060cc: 13 05 84 f6  	addi	a0, s0, -152
802060d0: 97 30 00 00  	auipc	ra, 3
802060d4: e7 80 a0 92  	jalr	-1750(ra)
802060d8: 00 00        	unimp	

00000000802060da <.Lpcrel_hi14>:
802060da: 17 55 00 00  	auipc	a0, 5
802060de: 13 05 65 09  	addi	a0, a0, 150
802060e2: 23 34 a4 f6  	sd	a0, -152(s0)
802060e6: 23 38 94 f6  	sd	s1, -144(s0)
802060ea: 23 34 04 f8  	sd	zero, -120(s0)

00000000802060ee <.Lpcrel_hi15>:
802060ee: 17 55 00 00  	auipc	a0, 5
802060f2: 13 05 25 09  	addi	a0, a0, 146
802060f6: 23 3c a4 f6  	sd	a0, -136(s0)
802060fa: 23 30 04 f8  	sd	zero, -128(s0)

00000000802060fe <.Lpcrel_hi16>:
;             panic!("kvmmap");
802060fe: 17 55 00 00  	auipc	a0, 5
80206102: 93 05 a5 09  	addi	a1, a0, 154
80206106: 13 05 84 f6  	addi	a0, s0, -152
8020610a: 97 30 00 00  	auipc	ra, 3
8020610e: e7 80 00 8f  	jalr	-1808(ra)
80206112: 00 00        	unimp	

0000000080206114 <.Lpcrel_hi11>:
80206114: 17 65 00 00  	auipc	a0, 6
80206118: 13 05 45 a2  	addi	a0, a0, -1500
8020611c: 23 34 a4 f6  	sd	a0, -152(s0)
80206120: 05 45        	li	a0, 1
80206122: 23 38 a4 f6  	sd	a0, -144(s0)
80206126: 23 34 04 f8  	sd	zero, -120(s0)

000000008020612a <.Lpcrel_hi12>:
8020612a: 17 65 00 00  	auipc	a0, 6
8020612e: 13 05 e5 9c  	addi	a0, a0, -1586
80206132: 23 3c a4 f6  	sd	a0, -136(s0)
80206136: 23 30 04 f8  	sd	zero, -128(s0)

000000008020613a <.Lpcrel_hi13>:
;                 panic!("mappages: remap");
8020613a: 17 65 00 00  	auipc	a0, 6
8020613e: 93 05 e5 a0  	addi	a1, a0, -1522
80206142: 13 05 84 f6  	addi	a0, s0, -152
80206146: 97 30 00 00  	auipc	ra, 3
8020614a: e7 80 40 8b  	jalr	-1868(ra)
8020614e: 00 00        	unimp	

0000000080206150 <.Lpcrel_hi24>:
80206150: 17 65 00 00  	auipc	a0, 6
80206154: 13 05 05 a2  	addi	a0, a0, -1504
80206158: 23 34 a4 f6  	sd	a0, -152(s0)
8020615c: 05 45        	li	a0, 1
8020615e: 23 38 a4 f6  	sd	a0, -144(s0)
80206162: 23 34 04 f8  	sd	zero, -120(s0)

0000000080206166 <.Lpcrel_hi25>:
80206166: 17 65 00 00  	auipc	a0, 6
8020616a: 13 05 25 99  	addi	a0, a0, -1646
8020616e: 23 3c a4 f6  	sd	a0, -136(s0)
80206172: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206176 <.Lpcrel_hi26>:
;             panic!("mappages: size");
80206176: 17 65 00 00  	auipc	a0, 6
8020617a: 93 05 a5 a0  	addi	a1, a0, -1526
8020617e: 13 05 84 f6  	addi	a0, s0, -152
80206182: 97 30 00 00  	auipc	ra, 3
80206186: e7 80 80 87  	jalr	-1928(ra)
8020618a: 00 00        	unimp	

000000008020618c <.Lpcrel_hi33>:
8020618c: 17 65 00 00  	auipc	a0, 6
80206190: 13 05 45 9e  	addi	a0, a0, -1564
80206194: 23 34 a4 f6  	sd	a0, -152(s0)
80206198: 05 45        	li	a0, 1
8020619a: 23 38 a4 f6  	sd	a0, -144(s0)
8020619e: 23 34 04 f8  	sd	zero, -120(s0)

00000000802061a2 <.Lpcrel_hi34>:
802061a2: 17 65 00 00  	auipc	a0, 6
802061a6: 13 05 65 95  	addi	a0, a0, -1706
802061aa: 23 3c a4 f6  	sd	a0, -136(s0)
802061ae: 23 30 04 f8  	sd	zero, -128(s0)

00000000802061b2 <.Lpcrel_hi35>:
;             panic!("mappages: size");
802061b2: 17 65 00 00  	auipc	a0, 6
802061b6: 93 05 e5 9c  	addi	a1, a0, -1586
802061ba: 13 05 84 f6  	addi	a0, s0, -152
802061be: 97 30 00 00  	auipc	ra, 3
802061c2: e7 80 c0 83  	jalr	-1988(ra)
802061c6: 00 00        	unimp	

00000000802061c8 <.Lpcrel_hi46>:
802061c8: 17 55 00 00  	auipc	a0, 5
802061cc: 13 05 85 fa  	addi	a0, a0, -88
802061d0: 23 34 a4 f6  	sd	a0, -152(s0)
802061d4: 23 38 94 f6  	sd	s1, -144(s0)
802061d8: 23 34 04 f8  	sd	zero, -120(s0)

00000000802061dc <.Lpcrel_hi47>:
802061dc: 17 55 00 00  	auipc	a0, 5
802061e0: 13 05 45 fa  	addi	a0, a0, -92
802061e4: 23 3c a4 f6  	sd	a0, -136(s0)
802061e8: 23 30 04 f8  	sd	zero, -128(s0)

00000000802061ec <.Lpcrel_hi48>:
;             panic!("kvmmap");
802061ec: 17 55 00 00  	auipc	a0, 5
802061f0: 93 05 c5 fa  	addi	a1, a0, -84
802061f4: 13 05 84 f6  	addi	a0, s0, -152
802061f8: 97 30 00 00  	auipc	ra, 3
802061fc: e7 80 20 80  	jalr	-2046(ra)
80206200: 00 00        	unimp	

0000000080206202 <.Lpcrel_hi43>:
80206202: 17 65 00 00  	auipc	a0, 6
80206206: 13 05 65 93  	addi	a0, a0, -1738
8020620a: 23 34 a4 f6  	sd	a0, -152(s0)
8020620e: 05 45        	li	a0, 1
80206210: 23 38 a4 f6  	sd	a0, -144(s0)
80206214: 23 34 04 f8  	sd	zero, -120(s0)

0000000080206218 <.Lpcrel_hi44>:
80206218: 17 65 00 00  	auipc	a0, 6
8020621c: 13 05 05 8e  	addi	a0, a0, -1824
80206220: 23 3c a4 f6  	sd	a0, -136(s0)
80206224: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206228 <.Lpcrel_hi45>:
;                 panic!("mappages: remap");
80206228: 17 65 00 00  	auipc	a0, 6
8020622c: 93 05 05 92  	addi	a1, a0, -1760
80206230: 13 05 84 f6  	addi	a0, s0, -152
80206234: 97 20 00 00  	auipc	ra, 2
80206238: e7 80 60 7c  	jalr	1990(ra)
8020623c: 00 00        	unimp	

000000008020623e <kvminithart>:
; pub fn kvminithart() {
8020623e: 1d 71        	addi	sp, sp, -96
;     unsafe { asm!("sfence.vma zero, zero") }
80206240: 86 ec        	sd	ra, 88(sp)
80206242: a2 e8        	sd	s0, 80(sp)
80206244: a6 e4        	sd	s1, 72(sp)
80206246: ca e0        	sd	s2, 64(sp)
80206248: 4e fc        	sd	s3, 56(sp)
8020624a: 80 10        	addi	s0, sp, 96
8020624c: 73 00 00 12  	sfence.vma
80206250: 0f 00 30 03  	fence	rw, rw

0000000080206254 <.Lpcrel_hi60>:
80206254: 17 35 14 00  	auipc	a0, 323
80206258: 93 04 c5 c0  	addi	s1, a0, -1012
8020625c: 88 68        	ld	a0, 16(s1)
8020625e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206262: 21 e9        	bnez	a0, 0x802062b2 <.Lpcrel_hi60+0x5e>
80206264: 93 85 04 01  	addi	a1, s1, 16
80206268: 85 49        	li	s3, 1
8020626a: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020626e: 31 e1        	bnez	a0, 0x802062b2 <.Lpcrel_hi60+0x5e>
80206270: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80206274: 7d fa        	bnez	a2, 0x8020626a <.Lpcrel_hi60+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80206276: 23 34 b4 fa  	sd	a1, -88(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
8020627a: 97 20 00 00  	auipc	ra, 2
8020627e: e7 80 c0 87  	jalr	-1924(ra)
80206282: 2a 89        	mv	s2, a0
80206284: 05 66        	lui	a2, 1
80206286: 81 45        	li	a1, 0
80206288: 97 40 00 00  	auipc	ra, 4
8020628c: e7 80 00 1a  	jalr	416(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80206290: 23 b0 34 01  	sd	s3, 0(s1)
80206294: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80206298: 23 08 04 fa  	sb	zero, -80(s0)
8020629c: 0f 00 10 03  	fence	rw, w
802062a0: 09 45        	li	a0, 2
802062a2: 88 e8        	sd	a0, 16(s1)
802062a4: 13 05 84 fa  	addi	a0, s0, -88
802062a8: 97 20 00 00  	auipc	ra, 2
802062ac: e7 80 00 58  	jalr	1408(ra)
802062b0: 05 a0        	j	0x802062d0 <.Lpcrel_hi60+0x7c>
802062b2: 85 45        	li	a1, 1
;             match status {
802062b4: 63 1b b5 00  	bne	a0, a1, 0x802062ca <.Lpcrel_hi60+0x76>
802062b8: 0f 00 00 01  	fence	w, 0
802062bc: 0f 00 30 03  	fence	rw, rw
802062c0: 88 68        	ld	a0, 16(s1)
802062c2: 0f 00 30 02  	fence	r, rw
;             match status {
802062c6: e3 09 b5 fe  	beq	a0, a1, 0x802062b8 <.Lpcrel_hi60+0x64>
802062ca: 89 45        	li	a1, 2
;             match status {
802062cc: 63 1b b5 04  	bne	a0, a1, 0x80206322 <.Lpcrel_hi66+0x2a>
;         self.data as Addr
802062d0: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
802062d2: 31 81        	srli	a0, a0, 12
802062d4: fd 55        	li	a1, -1
802062d6: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
802062d8: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
802062da: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
802062de: 73 00 00 12  	sfence.vma

00000000802062e2 <.Lpcrel_hi65>:
802062e2: 17 55 00 00  	auipc	a0, 5
802062e6: 13 05 e5 f3  	addi	a0, a0, -194
802062ea: 23 34 a4 fa  	sd	a0, -88(s0)
802062ee: 05 45        	li	a0, 1
802062f0: 23 38 a4 fa  	sd	a0, -80(s0)
802062f4: 23 34 04 fc  	sd	zero, -56(s0)

00000000802062f8 <.Lpcrel_hi66>:
802062f8: 17 55 00 00  	auipc	a0, 5
802062fc: 13 05 85 e8  	addi	a0, a0, -376
80206300: 23 3c a4 fa  	sd	a0, -72(s0)
80206304: 23 30 04 fc  	sd	zero, -64(s0)
;     println!("kvminithart success!");
80206308: 13 05 84 fa  	addi	a0, s0, -88
8020630c: 97 10 00 00  	auipc	ra, 1
80206310: e7 80 60 1e  	jalr	486(ra)
; }
80206314: e6 60        	ld	ra, 88(sp)
80206316: 46 64        	ld	s0, 80(sp)
80206318: a6 64        	ld	s1, 72(sp)
8020631a: 06 69        	ld	s2, 64(sp)
8020631c: e2 79        	ld	s3, 56(sp)
8020631e: 25 61        	addi	sp, sp, 96
80206320: 82 80        	ret
;             match status {
80206322: 05 e1        	bnez	a0, 0x80206342 <.Lpcrel_hi63>

0000000080206324 <.Lpcrel_hi61>:
;                 INCOMPLETE => unreachable!(),
80206324: 17 55 00 00  	auipc	a0, 5
80206328: 13 05 45 d6  	addi	a0, a0, -668

000000008020632c <.Lpcrel_hi62>:
8020632c: 97 55 00 00  	auipc	a1, 5
80206330: 13 86 45 d8  	addi	a2, a1, -636
80206334: 93 05 80 02  	li	a1, 40
80206338: 97 20 00 00  	auipc	ra, 2
8020633c: e7 80 00 6f  	jalr	1776(ra)
80206340: 00 00        	unimp	

0000000080206342 <.Lpcrel_hi63>:
;                 PANICKED => panic!("Once has panicked"),
80206342: 17 55 00 00  	auipc	a0, 5
80206346: 13 05 e5 cb  	addi	a0, a0, -834

000000008020634a <.Lpcrel_hi64>:
8020634a: 97 55 00 00  	auipc	a1, 5
8020634e: 13 86 65 d2  	addi	a2, a1, -730
80206352: c5 45        	li	a1, 17
80206354: 97 20 00 00  	auipc	ra, 2
80206358: e7 80 40 6d  	jalr	1748(ra)
8020635c: 00 00        	unimp	
8020635e: 00 00        	unimp	

0000000080206360 <switch>:
80206360: 23 30 15 00  	sd	ra, 0(a0)
80206364: 23 34 25 00  	sd	sp, 8(a0)
80206368: 00 e9        	sd	s0, 16(a0)
8020636a: 04 ed        	sd	s1, 24(a0)
8020636c: 23 30 25 03  	sd	s2, 32(a0)
80206370: 23 34 35 03  	sd	s3, 40(a0)
80206374: 23 38 45 03  	sd	s4, 48(a0)
80206378: 23 3c 55 03  	sd	s5, 56(a0)
8020637c: 23 30 65 05  	sd	s6, 64(a0)
80206380: 23 34 75 05  	sd	s7, 72(a0)
80206384: 23 38 85 05  	sd	s8, 80(a0)
80206388: 23 3c 95 05  	sd	s9, 88(a0)
8020638c: 23 30 a5 07  	sd	s10, 96(a0)
80206390: 23 34 b5 07  	sd	s11, 104(a0)
80206394: 83 b0 05 00  	ld	ra, 0(a1)
80206398: 03 b1 85 00  	ld	sp, 8(a1)
8020639c: 80 69        	ld	s0, 16(a1)
8020639e: 84 6d        	ld	s1, 24(a1)
802063a0: 03 b9 05 02  	ld	s2, 32(a1)
802063a4: 83 b9 85 02  	ld	s3, 40(a1)
802063a8: 03 ba 05 03  	ld	s4, 48(a1)
802063ac: 83 ba 85 03  	ld	s5, 56(a1)
802063b0: 03 bb 05 04  	ld	s6, 64(a1)
802063b4: 83 bb 85 04  	ld	s7, 72(a1)
802063b8: 03 bc 05 05  	ld	s8, 80(a1)
802063bc: 83 bc 85 05  	ld	s9, 88(a1)
802063c0: 03 bd 05 06  	ld	s10, 96(a1)
802063c4: 83 bd 85 06  	ld	s11, 104(a1)
802063c8: 82 80        	ret

00000000802063ca <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h16317d1f0a306447E>:
802063ca: 41 11        	addi	sp, sp, -16
802063cc: 06 e4        	sd	ra, 8(sp)
802063ce: 22 e0        	sd	s0, 0(sp)
802063d0: 00 08        	addi	s0, sp, 16
802063d2: 08 61        	ld	a0, 0(a0)
802063d4: a2 60        	ld	ra, 8(sp)
802063d6: 02 64        	ld	s0, 0(sp)
802063d8: 41 01        	addi	sp, sp, 16
802063da: 17 33 00 00  	auipc	t1, 3
802063de: 67 00 a3 d4  	jr	-694(t1)

00000000802063e2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e1c48c315dd058eE>:
802063e2: 41 11        	addi	sp, sp, -16
802063e4: 06 e4        	sd	ra, 8(sp)
802063e6: 22 e0        	sd	s0, 0(sp)
802063e8: 00 08        	addi	s0, sp, 16
802063ea: 10 61        	ld	a2, 0(a0)
802063ec: 14 65        	ld	a3, 8(a0)
802063ee: 2e 87        	mv	a4, a1
802063f0: 32 85        	mv	a0, a2
802063f2: b6 85        	mv	a1, a3
802063f4: 3a 86        	mv	a2, a4
802063f6: a2 60        	ld	ra, 8(sp)
802063f8: 02 64        	ld	s0, 0(sp)
802063fa: 41 01        	addi	sp, sp, 16
802063fc: 17 33 00 00  	auipc	t1, 3
80206400: 67 00 03 41  	jr	1040(t1)

0000000080206404 <_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17hd8e735b681757565E.llvm.8366668869930279871>:
80206404: 41 11        	addi	sp, sp, -16
80206406: 06 e4        	sd	ra, 8(sp)
80206408: 22 e0        	sd	s0, 0(sp)
8020640a: 00 08        	addi	s0, sp, 16
8020640c: a2 60        	ld	ra, 8(sp)
8020640e: 02 64        	ld	s0, 0(sp)
80206410: 41 01        	addi	sp, sp, 16
80206412: 82 80        	ret

0000000080206414 <_ZN6kernel7syscall7sysproc8sys_exit17hcfc9b819008d97a9E>:
; pub fn sys_exit(status: i32) -> usize {
80206414: 39 71        	addi	sp, sp, -64
80206416: 06 fc        	sd	ra, 56(sp)
80206418: 22 f8        	sd	s0, 48(sp)
8020641a: 80 00        	addi	s0, sp, 64

000000008020641c <.Lpcrel_hi0>:
8020641c: 17 55 00 00  	auipc	a0, 5
80206420: 13 05 c5 ff  	addi	a0, a0, -4
80206424: 23 30 a4 fc  	sd	a0, -64(s0)
80206428: 05 45        	li	a0, 1
8020642a: 23 34 a4 fc  	sd	a0, -56(s0)
8020642e: 23 30 04 fe  	sd	zero, -32(s0)

0000000080206432 <.Lpcrel_hi1>:
80206432: 17 55 00 00  	auipc	a0, 5
80206436: 13 05 65 ff  	addi	a0, a0, -10
8020643a: 23 38 a4 fc  	sd	a0, -48(s0)
8020643e: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080206442 <.Lpcrel_hi2>:
;     panic!("sys_exit");
80206442: 17 55 00 00  	auipc	a0, 5
80206446: 93 05 e5 ff  	addi	a1, a0, -2
8020644a: 13 05 04 fc  	addi	a0, s0, -64
8020644e: 97 20 00 00  	auipc	ra, 2
80206452: e7 80 c0 5a  	jalr	1452(ra)
80206456: 00 00        	unimp	

0000000080206458 <_ZN6kernel7syscall7sysproc8sys_exec17h30f9ad53473d2518E>:
; pub fn sys_exec(path: *const u8, len: usize) -> usize {
80206458: 69 71        	addi	sp, sp, -304
8020645a: 06 f6        	sd	ra, 296(sp)
8020645c: 22 f2        	sd	s0, 288(sp)
8020645e: 26 ee        	sd	s1, 280(sp)
80206460: 4a ea        	sd	s2, 272(sp)
80206462: 4e e6        	sd	s3, 264(sp)
80206464: 52 e2        	sd	s4, 256(sp)
80206466: d6 fd        	sd	s5, 248(sp)
80206468: da f9        	sd	s6, 240(sp)
8020646a: de f5        	sd	s7, 232(sp)
8020646c: e2 f1        	sd	s8, 224(sp)
8020646e: e6 ed        	sd	s9, 216(sp)
80206470: ea e9        	sd	s10, 208(sp)
80206472: ee e5        	sd	s11, 200(sp)
80206474: 00 1a        	addi	s0, sp, 304
80206476: 2e 89        	mv	s2, a1
80206478: aa 89        	mv	s3, a0

000000008020647a <.Lpcrel_hi3>:
8020647a: 17 55 00 00  	auipc	a0, 5
8020647e: 13 05 e5 fe  	addi	a0, a0, -18
80206482: 23 3c a4 ec  	sd	a0, -296(s0)
80206486: 05 45        	li	a0, 1
80206488: 23 30 a4 ee  	sd	a0, -288(s0)
8020648c: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080206490 <.Lpcrel_hi4>:
80206490: 17 55 00 00  	auipc	a0, 5
80206494: 93 0b 85 f9  	addi	s7, a0, -104
80206498: 23 34 74 ef  	sd	s7, -280(s0)
8020649c: 23 38 04 ee  	sd	zero, -272(s0)
;     println!("sys exec");
802064a0: 13 05 84 ed  	addi	a0, s0, -296
802064a4: 97 10 00 00  	auipc	ra, 1
802064a8: e7 80 e0 04  	jalr	78(ra)
;     let mut buf: [u8; 128] = [0; 128];
802064ac: 13 05 84 ed  	addi	a0, s0, -296
802064b0: 13 06 00 08  	li	a2, 128
802064b4: 93 0a 84 ed  	addi	s5, s0, -296
802064b8: 81 45        	li	a1, 0
802064ba: 97 40 00 00  	auipc	ra, 4
802064be: e7 80 e0 f6  	jalr	-146(ra)
;     let p = unsafe {&mut *myproc()};
802064c2: 97 c0 ff ff  	auipc	ra, 1048572
802064c6: e7 80 80 4a  	jalr	1192(ra)
; 		while len > 0 {
802064ca: 63 0d 09 06  	beqz	s2, 0x80206544 <.Lpcrel_hi4+0xb4>
;     if p.uvm.copyin(&mut buf, path as Addr, len) < 0 {
802064ce: 13 0a 05 14  	addi	s4, a0, 320
802064d2: 7d 7c        	lui	s8, 1048575
802064d4: c5 4c        	li	s9, 17
802064d6: 05 6d        	lui	s10, 1
802064d8: ca 8d        	mv	s11, s2
802064da: 15 a0        	j	0x802064fe <.Lpcrel_hi4+0x6e>
; 			memmove(dst, (pa0 + srcva - va0) as *const u8, n);
802064dc: d2 19        	slli	s3, s3, 52
802064de: 93 d5 49 03  	srli	a1, s3, 52
802064e2: c9 8d        	or	a1, a1, a0
802064e4: 56 85        	mv	a0, s5
802064e6: 26 86        	mv	a2, s1
802064e8: 97 40 00 00  	auipc	ra, 4
802064ec: e7 80 80 f3  	jalr	-200(ra)
; 			len -= n;
802064f0: b3 8d 9d 40  	sub	s11, s11, s1
802064f4: a6 9a        	add	s5, s5, s1
; 			srcva = va0 + PGSIZE;
802064f6: b3 09 ab 01  	add	s3, s6, s10
; 		while len > 0 {
802064fa: 63 81 0d 04  	beqz	s11, 0x8020653c <.Lpcrel_hi4+0xac>
;         if va >= MAXVA {
802064fe: 13 d5 69 02  	srli	a0, s3, 38
80206502: 63 1c 05 1a  	bnez	a0, 0x802066ba <.Lpcrel_hi6>
80206506: 33 fb 89 01  	and	s6, s3, s8
;         let pte = self.walk(va, false);
8020650a: 52 85        	mv	a0, s4
8020650c: da 85        	mv	a1, s6
8020650e: 01 46        	li	a2, 0
80206510: 97 10 00 00  	auipc	ra, 1
80206514: e7 80 60 cb  	jalr	-842(ra)
;         if pte.is_null() {
80206518: 63 01 05 1a  	beqz	a0, 0x802066ba <.Lpcrel_hi6>
;         let pte = unsafe { *pte };
8020651c: 08 61        	ld	a0, 0(a0)
;         if (pte & PTE_V) == 0 {
8020651e: 93 75 15 01  	andi	a1, a0, 17
80206522: 63 9c 95 19  	bne	a1, s9, 0x802066ba <.Lpcrel_hi6>
;     (pte >> 10) << 12
80206526: 29 81        	srli	a0, a0, 10
80206528: 32 05        	slli	a0, a0, 12
; 			if pa0 == 0 {
8020652a: 63 08 05 18  	beqz	a0, 0x802066ba <.Lpcrel_hi6>
; 			let mut n = PGSIZE - (srcva - va0);
8020652e: b3 04 3b 41  	sub	s1, s6, s3
80206532: ea 94        	add	s1, s1, s10
; 			if n > len {
80206534: e3 e4 b4 fb  	bltu	s1, s11, 0x802064dc <.Lpcrel_hi4+0x4c>
80206538: ee 84        	mv	s1, s11
8020653a: 4d b7        	j	0x802064dc <.Lpcrel_hi4+0x4c>
8020653c: 13 05 10 08  	li	a0, 129
80206540: 63 74 a9 1e  	bgeu	s2, a0, 0x80206728 <.Lpcrel_hi5>
;     let name = unsafe {core::str::from_utf8(&buf[0..len]).unwrap()};
80206544: 13 05 84 f6  	addi	a0, s0, -152
80206548: 93 05 84 ed  	addi	a1, s0, -296
8020654c: 4a 86        	mv	a2, s2
8020654e: 97 30 00 00  	auipc	ra, 3
80206552: e7 80 e0 34  	jalr	846(ra)
80206556: 03 35 84 f6  	ld	a0, -152(s0)
8020655a: 63 1a 05 18  	bnez	a0, 0x802066ee <.Lpcrel_hi7+0x16>
8020655e: 03 35 84 f7  	ld	a0, -136(s0)
80206562: 83 35 04 f7  	ld	a1, -144(s0)
80206566: 89 44        	li	s1, 2
80206568: 63 0c 95 04  	beq	a0, s1, 0x802065c0 <.Lpcrel_hi8+0x2c>
8020656c: 95 44        	li	s1, 5
8020656e: 63 01 95 0c  	beq	a0, s1, 0x80206630 <.Lpcrel_hi12>
80206572: 11 46        	li	a2, 4
80206574: 63 18 c5 0c  	bne	a0, a2, 0x80206644 <.Lpcrel_hi12+0x14>
80206578: 03 c5 15 00  	lbu	a0, 1(a1)
8020657c: 03 c6 05 00  	lbu	a2, 0(a1)
80206580: 83 c6 25 00  	lbu	a3, 2(a1)
80206584: 83 85 35 00  	lb	a1, 3(a1)
80206588: 22 05        	slli	a0, a0, 8
8020658a: 51 8d        	or	a0, a0, a2
8020658c: c2 06        	slli	a3, a3, 16
8020658e: e2 05        	slli	a1, a1, 24
80206590: d5 8d        	or	a1, a1, a3
80206592: 4d 8d        	or	a0, a0, a1

0000000080206594 <.Lpcrel_hi8>:
80206594: 97 55 00 00  	auipc	a1, 5
80206598: 93 85 95 b5  	addi	a1, a1, -1191
8020659c: 03 c6 15 00  	lbu	a2, 1(a1)
802065a0: 83 c6 05 00  	lbu	a3, 0(a1)
802065a4: 03 c7 25 00  	lbu	a4, 2(a1)
802065a8: 83 85 35 00  	lb	a1, 3(a1)
802065ac: 22 06        	slli	a2, a2, 8
802065ae: 55 8e        	or	a2, a2, a3
802065b0: 42 07        	slli	a4, a4, 16
802065b2: e2 05        	slli	a1, a1, 24
802065b4: d9 8d        	or	a1, a1, a4
802065b6: d1 8d        	or	a1, a1, a2
;         if  app == name {
802065b8: 63 96 a5 08  	bne	a1, a0, 0x80206644 <.Lpcrel_hi12+0x14>
802065bc: 85 44        	li	s1, 1
802065be: 61 a0        	j	0x80206646 <.Lpcrel_hi12+0x16>
802065c0: 03 c5 05 00  	lbu	a0, 0(a1)
802065c4: 03 c6 15 00  	lbu	a2, 1(a1)

00000000802065c8 <.Lpcrel_hi9>:
802065c8: 97 56 00 00  	auipc	a3, 5
802065cc: 93 86 86 e2  	addi	a3, a3, -472
802065d0: 03 c7 16 00  	lbu	a4, 1(a3)
802065d4: 83 c6 06 00  	lbu	a3, 0(a3)
802065d8: 22 06        	slli	a2, a2, 8
802065da: 51 8d        	or	a0, a0, a2
802065dc: 22 07        	slli	a4, a4, 8
802065de: d9 8e        	or	a3, a3, a4
;         if  app == name {
802065e0: 63 83 a6 06  	beq	a3, a0, 0x80206646 <.Lpcrel_hi12+0x16>
802065e4: 03 c5 05 00  	lbu	a0, 0(a1)
802065e8: 03 c6 15 00  	lbu	a2, 1(a1)

00000000802065ec <.Lpcrel_hi10>:
802065ec: 97 56 00 00  	auipc	a3, 5
802065f0: 93 86 66 e0  	addi	a3, a3, -506
802065f4: 03 c7 16 00  	lbu	a4, 1(a3)
802065f8: 83 c6 06 00  	lbu	a3, 0(a3)
802065fc: 22 06        	slli	a2, a2, 8
802065fe: 51 8d        	or	a0, a0, a2
80206600: 22 07        	slli	a4, a4, 8
80206602: d9 8e        	or	a3, a3, a4
;         if  app == name {
80206604: 63 89 a6 0a  	beq	a3, a0, 0x802066b6 <.Lpcrel_hi15+0x3c>
80206608: 03 c5 05 00  	lbu	a0, 0(a1)
8020660c: 83 c5 15 00  	lbu	a1, 1(a1)

0000000080206610 <.Lpcrel_hi11>:
80206610: 17 56 00 00  	auipc	a2, 5
80206614: 13 06 46 de  	addi	a2, a2, -540
80206618: 83 46 16 00  	lbu	a3, 1(a2)
8020661c: 03 46 06 00  	lbu	a2, 0(a2)
80206620: a2 05        	slli	a1, a1, 8
80206622: 4d 8d        	or	a0, a0, a1
80206624: a2 06        	slli	a3, a3, 8
80206626: 55 8e        	or	a2, a2, a3
;         if  app == name {
80206628: 63 1e a6 00  	bne	a2, a0, 0x80206644 <.Lpcrel_hi12+0x14>
8020662c: 91 44        	li	s1, 4
8020662e: 21 a8        	j	0x80206646 <.Lpcrel_hi12+0x16>

0000000080206630 <.Lpcrel_hi12>:
80206630: 17 55 00 00  	auipc	a0, 5
80206634: 13 05 65 dc  	addi	a0, a0, -570
80206638: 15 46        	li	a2, 5
8020663a: 97 40 00 00  	auipc	ra, 4
8020663e: e7 80 20 0b  	jalr	178(ra)
;         if  app == name {
80206642: 11 c1        	beqz	a0, 0x80206646 <.Lpcrel_hi12+0x16>
80206644: 99 44        	li	s1, 6
80206646: 8e 04        	slli	s1, s1, 3

0000000080206648 <.Lpcrel_hi13>:
80206648: 17 75 00 00  	auipc	a0, 7
8020664c: 13 05 85 9b  	addi	a0, a0, -1608
80206650: 26 95        	add	a0, a0, s1
;     unsafe { core::slice::from_raw_parts((*src) as *const u8, *(src.add(1)) - *(src)) }
80206652: 08 61        	ld	a0, 0(a0)
; 	if elf.magic != ELF_MAGIC {
80206654: 0c 41        	lw	a1, 0(a0)
80206656: 37 45 4c 46  	lui	a0, 287940
8020665a: 1b 06 f5 57  	addiw	a2, a0, 1407
8020665e: 7d 55        	li	a0, -1
; 	if elf.magic != ELF_MAGIC {
80206660: 63 9c c5 02  	bne	a1, a2, 0x80206698 <.Lpcrel_hi15+0x1e>

0000000080206664 <.Lpcrel_hi14>:
80206664: 17 55 00 00  	auipc	a0, 5
80206668: 13 05 45 72  	addi	a0, a0, 1828
8020666c: 23 34 a4 f6  	sd	a0, -152(s0)
80206670: 05 45        	li	a0, 1
80206672: 23 38 a4 f6  	sd	a0, -144(s0)
80206676: 23 34 04 f8  	sd	zero, -120(s0)

000000008020667a <.Lpcrel_hi15>:
8020667a: 17 55 00 00  	auipc	a0, 5
8020667e: 13 05 e5 63  	addi	a0, a0, 1598
80206682: 23 3c a4 f6  	sd	a0, -136(s0)
80206686: 23 30 04 f8  	sd	zero, -128(s0)
; 	println!("exec");
8020668a: 13 05 84 f6  	addi	a0, s0, -152
8020668e: 97 10 00 00  	auipc	ra, 1
80206692: e7 80 40 e6  	jalr	-412(ra)
80206696: 01 45        	li	a0, 0
; }
80206698: b2 70        	ld	ra, 296(sp)
8020669a: 12 74        	ld	s0, 288(sp)
8020669c: f2 64        	ld	s1, 280(sp)
8020669e: 52 69        	ld	s2, 272(sp)
802066a0: b2 69        	ld	s3, 264(sp)
802066a2: 12 6a        	ld	s4, 256(sp)
802066a4: ee 7a        	ld	s5, 248(sp)
802066a6: 4e 7b        	ld	s6, 240(sp)
802066a8: ae 7b        	ld	s7, 232(sp)
802066aa: 0e 7c        	ld	s8, 224(sp)
802066ac: ee 6c        	ld	s9, 216(sp)
802066ae: 4e 6d        	ld	s10, 208(sp)
802066b0: ae 6d        	ld	s11, 200(sp)
802066b2: 55 61        	addi	sp, sp, 304
802066b4: 82 80        	ret
802066b6: 8d 44        	li	s1, 3
802066b8: 79 b7        	j	0x80206646 <.Lpcrel_hi12+0x16>

00000000802066ba <.Lpcrel_hi6>:
802066ba: 17 55 00 00  	auipc	a0, 5
802066be: 13 05 e5 de  	addi	a0, a0, -530
802066c2: 23 34 a4 f6  	sd	a0, -152(s0)
802066c6: 05 45        	li	a0, 1
802066c8: 23 38 a4 f6  	sd	a0, -144(s0)
802066cc: 23 34 04 f8  	sd	zero, -120(s0)
802066d0: 23 3c 74 f7  	sd	s7, -136(s0)
802066d4: 23 30 04 f8  	sd	zero, -128(s0)

00000000802066d8 <.Lpcrel_hi7>:
;         panic!("sys_exec: copyin");
802066d8: 17 55 00 00  	auipc	a0, 5
802066dc: 93 05 05 de  	addi	a1, a0, -544
802066e0: 13 05 84 f6  	addi	a0, s0, -152
802066e4: 97 20 00 00  	auipc	ra, 2
802066e8: e7 80 60 31  	jalr	790(ra)
802066ec: 00 00        	unimp	
802066ee: 03 35 84 f7  	ld	a0, -136(s0)
802066f2: 83 35 04 f7  	ld	a1, -144(s0)
802066f6: 23 30 a4 f6  	sd	a0, -160(s0)
802066fa: 23 3c b4 f4  	sd	a1, -168(s0)

00000000802066fe <.Lpcrel_hi16>:
802066fe: 17 55 00 00  	auipc	a0, 5
80206702: 13 05 a5 de  	addi	a0, a0, -534

0000000080206706 <.Lpcrel_hi17>:
80206706: 97 55 00 00  	auipc	a1, 5
8020670a: 93 86 25 e1  	addi	a3, a1, -494

000000008020670e <.Lpcrel_hi18>:
8020670e: 97 55 00 00  	auipc	a1, 5
80206712: 13 87 a5 e2  	addi	a4, a1, -470
80206716: 93 05 b0 02  	li	a1, 43
8020671a: 13 06 84 f5  	addi	a2, s0, -168
8020671e: 97 20 00 00  	auipc	ra, 2
80206722: e7 80 60 37  	jalr	886(ra)
80206726: 00 00        	unimp	

0000000080206728 <.Lpcrel_hi5>:
80206728: 17 55 00 00  	auipc	a0, 5
8020672c: 13 06 85 da  	addi	a2, a0, -600
80206730: 93 05 00 08  	li	a1, 128
80206734: 4a 85        	mv	a0, s2
80206736: 97 30 00 00  	auipc	ra, 3
8020673a: e7 80 60 12  	jalr	294(ra)
8020673e: 00 00        	unimp	

0000000080206740 <_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17he33b5a70bce26bdfE.llvm.3474861171818174167>:
80206740: 41 11        	addi	sp, sp, -16
80206742: 06 e4        	sd	ra, 8(sp)
80206744: 22 e0        	sd	s0, 0(sp)
80206746: 00 08        	addi	s0, sp, 16
80206748: 10 61        	ld	a2, 0(a0)
8020674a: 14 69        	ld	a3, 16(a0)
8020674c: 2e 87        	mv	a4, a1
8020674e: 32 85        	mv	a0, a2
80206750: b6 85        	mv	a1, a3
80206752: 3a 86        	mv	a2, a4
80206754: a2 60        	ld	ra, 8(sp)
80206756: 02 64        	ld	s0, 0(sp)
80206758: 41 01        	addi	sp, sp, 16
8020675a: 17 33 00 00  	auipc	t1, 3
8020675e: 67 00 23 0b  	jr	178(t1)

0000000080206762 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80206762: 35 71        	addi	sp, sp, -160
80206764: 06 ed        	sd	ra, 152(sp)
80206766: 22 e9        	sd	s0, 144(sp)
80206768: 26 e5        	sd	s1, 136(sp)
8020676a: 00 11        	addi	s0, sp, 160
8020676c: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
8020676e: 97 20 00 00  	auipc	ra, 2
80206772: e7 80 40 28  	jalr	644(ra)
80206776: 05 e1        	bnez	a0, 0x80206796 <.Lpcrel_hi1+0x16>

0000000080206778 <.Lpcrel_hi0>:
80206778: 17 55 00 00  	auipc	a0, 5
8020677c: 13 05 85 e5  	addi	a0, a0, -424

0000000080206780 <.Lpcrel_hi1>:
80206780: 97 55 00 00  	auipc	a1, 5
80206784: 13 86 05 e9  	addi	a2, a1, -368
80206788: 93 05 b0 02  	li	a1, 43
8020678c: 97 20 00 00  	auipc	ra, 2
80206790: e7 80 c0 29  	jalr	668(ra)
80206794: 00 00        	unimp	
80206796: 23 34 a4 f6  	sd	a0, -152(s0)
;     if let Some(location) = info.location() {
8020679a: 26 85        	mv	a0, s1
8020679c: 97 20 00 00  	auipc	ra, 2
802067a0: e7 80 a0 25  	jalr	602(ra)
802067a4: 21 e9        	bnez	a0, 0x802067f4 <.Lpcrel_hi7+0x3a>
802067a6: 13 05 84 f6  	addi	a0, s0, -152
;         println!("Panicked: {}", err);
802067aa: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802067ae <.Lpcrel_hi6>:
802067ae: 17 05 00 00  	auipc	a0, 0
802067b2: 13 05 c5 c1  	addi	a0, a0, -996
802067b6: 23 3c a4 f6  	sd	a0, -136(s0)

00000000802067ba <.Lpcrel_hi7>:
802067ba: 17 55 00 00  	auipc	a0, 5
802067be: 13 05 65 da  	addi	a0, a0, -602
802067c2: 23 3c a4 fa  	sd	a0, -72(s0)
802067c6: 09 45        	li	a0, 2
802067c8: 23 30 a4 fc  	sd	a0, -64(s0)
802067cc: 23 3c 04 fc  	sd	zero, -40(s0)
802067d0: 13 05 04 f7  	addi	a0, s0, -144
802067d4: 23 34 a4 fc  	sd	a0, -56(s0)
802067d8: 05 45        	li	a0, 1
802067da: 23 38 a4 fc  	sd	a0, -48(s0)
;         println!("Panicked: {}", err);
802067de: 13 05 84 fb  	addi	a0, s0, -72
802067e2: 97 10 00 00  	auipc	ra, 1
802067e6: e7 80 00 d1  	jalr	-752(ra)
;     shutdown()
802067ea: 97 00 00 00  	auipc	ra, 0
802067ee: e7 80 80 26  	jalr	616(ra)
802067f2: 00 00        	unimp	
802067f4: 0c 61        	ld	a1, 0(a0)
802067f6: 10 65        	ld	a2, 8(a0)
802067f8: 23 30 b4 fa  	sd	a1, -96(s0)
802067fc: 23 34 c4 fa  	sd	a2, -88(s0)
80206800: 08 49        	lw	a0, 16(a0)
80206802: 23 2a a4 fa  	sw	a0, -76(s0)
80206806: 13 05 04 fa  	addi	a0, s0, -96
;         println!(
8020680a: 23 3c a4 fa  	sd	a0, -72(s0)

000000008020680e <.Lpcrel_hi2>:
8020680e: 17 05 00 00  	auipc	a0, 0
80206812: 13 05 45 bd  	addi	a0, a0, -1068
80206816: 23 30 a4 fc  	sd	a0, -64(s0)
8020681a: 13 05 44 fb  	addi	a0, s0, -76
8020681e: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080206822 <.Lpcrel_hi3>:
80206822: 17 45 00 00  	auipc	a0, 4
80206826: 13 05 45 8e  	addi	a0, a0, -1820
8020682a: 23 38 a4 fc  	sd	a0, -48(s0)
8020682e: 13 05 84 f6  	addi	a0, s0, -152
80206832: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080206836 <.Lpcrel_hi4>:
80206836: 17 05 00 00  	auipc	a0, 0
8020683a: 13 05 45 b9  	addi	a0, a0, -1132
8020683e: 23 30 a4 fe  	sd	a0, -32(s0)

0000000080206842 <.Lpcrel_hi5>:
80206842: 17 55 00 00  	auipc	a0, 5
80206846: 13 05 e5 d4  	addi	a0, a0, -690
8020684a: 23 38 a4 f6  	sd	a0, -144(s0)
8020684e: 11 45        	li	a0, 4
80206850: 23 3c a4 f6  	sd	a0, -136(s0)
80206854: 23 38 04 f8  	sd	zero, -112(s0)
80206858: 13 05 84 fb  	addi	a0, s0, -72
8020685c: 23 30 a4 f8  	sd	a0, -128(s0)
80206860: 0d 45        	li	a0, 3
80206862: 23 34 a4 f8  	sd	a0, -120(s0)
;         println!(
80206866: 13 05 04 f7  	addi	a0, s0, -144
8020686a: 97 10 00 00  	auipc	ra, 1
8020686e: e7 80 80 c8  	jalr	-888(ra)
;     shutdown()
80206872: 97 00 00 00  	auipc	ra, 0
80206876: e7 80 00 1e  	jalr	480(ra)
8020687a: 00 00        	unimp	

000000008020687c <syscall>:
; pub fn syscall(syscall_id: usize, args: [usize; 3]) -> usize {
8020687c: 75 71        	addi	sp, sp, -144
8020687e: 06 e5        	sd	ra, 136(sp)
80206880: 22 e1        	sd	s0, 128(sp)
80206882: a6 fc        	sd	s1, 120(sp)
80206884: ca f8        	sd	s2, 112(sp)
80206886: 00 09        	addi	s0, sp, 144
80206888: 2e 89        	mv	s2, a1
8020688a: aa 84        	mv	s1, a0
8020688c: 23 3c a4 f6  	sd	a0, -136(s0)
;     let p = unsafe { &*myproc() };
80206890: 97 c0 ff ff  	auipc	ra, 1048572
80206894: e7 80 a0 0d  	jalr	218(ra)
80206898: 9d 45        	li	a1, 7
;     let ret = match syscall_id {
8020689a: 63 8c b4 06  	beq	s1, a1, 0x80206912 <.Lpcrel_hi10+0x34>
8020689e: c1 45        	li	a1, 16
;     let ret = match syscall_id {
802068a0: 63 86 b4 08  	beq	s1, a1, 0x8020692c <.Lpcrel_hi10+0x4e>
802068a4: 89 45        	li	a1, 2
;     let ret = match syscall_id {
802068a6: 63 83 b4 0a  	beq	s1, a1, 0x8020694c <.Lpcrel_hi10+0x6e>
;             println!("{} {}: unknown syscall {}", p.pid, p.name, syscall_id);
802068aa: 93 05 05 12  	addi	a1, a0, 288
802068ae: 13 05 85 15  	addi	a0, a0, 344
802068b2: 23 38 b4 fa  	sd	a1, -80(s0)

00000000802068b6 <.Lpcrel_hi8>:
802068b6: 97 45 00 00  	auipc	a1, 4
802068ba: 93 85 25 88  	addi	a1, a1, -1918
802068be: 23 3c b4 fa  	sd	a1, -72(s0)
802068c2: 23 30 a4 fc  	sd	a0, -64(s0)

00000000802068c6 <.Lpcrel_hi9>:
802068c6: 17 05 00 00  	auipc	a0, 0
802068ca: 13 05 a5 e7  	addi	a0, a0, -390
802068ce: 23 34 a4 fc  	sd	a0, -56(s0)
802068d2: 13 05 84 f7  	addi	a0, s0, -136
802068d6: 23 38 a4 fc  	sd	a0, -48(s0)
802068da: 23 3c b4 fc  	sd	a1, -40(s0)

00000000802068de <.Lpcrel_hi10>:
802068de: 17 55 00 00  	auipc	a0, 5
802068e2: 13 05 25 d6  	addi	a0, a0, -670
802068e6: 23 30 a4 f8  	sd	a0, -128(s0)
802068ea: 11 45        	li	a0, 4
802068ec: 23 34 a4 f8  	sd	a0, -120(s0)
802068f0: 23 30 04 fa  	sd	zero, -96(s0)
802068f4: 13 05 04 fb  	addi	a0, s0, -80
802068f8: 23 38 a4 f8  	sd	a0, -112(s0)
802068fc: 0d 45        	li	a0, 3
802068fe: 23 3c a4 f8  	sd	a0, -104(s0)
;             println!("{} {}: unknown syscall {}", p.pid, p.name, syscall_id);
80206902: 13 05 04 f8  	addi	a0, s0, -128
80206906: 97 10 00 00  	auipc	ra, 1
8020690a: e7 80 c0 be  	jalr	-1044(ra)
8020690e: 7d 55        	li	a0, -1
80206910: 05 a8        	j	0x80206940 <.Lpcrel_hi10+0x62>
;         SYS_EXEC => sys_exec(args[0] as *const u8, args[1]),
80206912: 03 35 09 00  	ld	a0, 0(s2)
80206916: 83 35 89 00  	ld	a1, 8(s2)
8020691a: aa 60        	ld	ra, 136(sp)
8020691c: 0a 64        	ld	s0, 128(sp)
8020691e: e6 74        	ld	s1, 120(sp)
80206920: 46 79        	ld	s2, 112(sp)
80206922: 49 61        	addi	sp, sp, 144
80206924: 17 03 00 00  	auipc	t1, 0
80206928: 67 00 43 b3  	jr	-1228(t1)
;         SYS_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),
8020692c: 83 35 09 00  	ld	a1, 0(s2)
80206930: 05 45        	li	a0, 1
;     match fd {
80206932: 63 94 a5 02  	bne	a1, a0, 0x8020695a <.Lpcrel_hi11>
;             let uvm = unsafe {&(&*myproc()).uvm};
80206936: 97 c0 ff ff  	auipc	ra, 1048572
8020693a: e7 80 40 03  	jalr	52(ra)
8020693e: 01 45        	li	a0, 0
; }
80206940: aa 60        	ld	ra, 136(sp)
80206942: 0a 64        	ld	s0, 128(sp)
80206944: e6 74        	ld	s1, 120(sp)
80206946: 46 79        	ld	s2, 112(sp)
80206948: 49 61        	addi	sp, sp, 144
8020694a: 82 80        	ret
;         SYS_EXIT => sys_exit(args[0] as i32),
8020694c: 03 35 09 00  	ld	a0, 0(s2)
80206950: 97 00 00 00  	auipc	ra, 0
80206954: e7 80 40 ac  	jalr	-1340(ra)
80206958: 00 00        	unimp	

000000008020695a <.Lpcrel_hi11>:
8020695a: 97 55 00 00  	auipc	a1, 5
8020695e: 93 85 65 e1  	addi	a1, a1, -490
80206962: 23 38 b4 fa  	sd	a1, -80(s0)
80206966: 23 3c a4 fa  	sd	a0, -72(s0)
8020696a: 23 38 04 fc  	sd	zero, -48(s0)

000000008020696e <.Lpcrel_hi12>:
8020696e: 17 55 00 00  	auipc	a0, 5
80206972: 13 05 25 d9  	addi	a0, a0, -622
80206976: 23 30 a4 fc  	sd	a0, -64(s0)
8020697a: 23 34 04 fc  	sd	zero, -56(s0)

000000008020697e <.Lpcrel_hi13>:
;             panic!("unsupported fd in sys_write");
8020697e: 17 55 00 00  	auipc	a0, 5
80206982: 93 05 a5 e1  	addi	a1, a0, -486
80206986: 13 05 04 fb  	addi	a0, s0, -80
8020698a: 97 20 00 00  	auipc	ra, 2
8020698e: e7 80 00 07  	jalr	112(ra)
80206992: 00 00        	unimp	

0000000080206994 <__rg_alloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80206994: 41 11        	addi	sp, sp, -16
80206996: 06 e4        	sd	ra, 8(sp)
80206998: 22 e0        	sd	s0, 0(sp)
8020699a: 00 08        	addi	s0, sp, 16

000000008020699c <.Lpcrel_hi2>:
8020699c: 17 46 34 00  	auipc	a2, 836
802069a0: 13 06 c6 6e  	addi	a2, a2, 1772
802069a4: aa 86        	mv	a3, a0
802069a6: 32 85        	mv	a0, a2
802069a8: 36 86        	mv	a2, a3
802069aa: a2 60        	ld	ra, 8(sp)
802069ac: 02 64        	ld	s0, 0(sp)
802069ae: 41 01        	addi	sp, sp, 16
802069b0: 17 23 00 00  	auipc	t1, 2
802069b4: 67 00 c3 dd  	jr	-548(t1)

00000000802069b8 <__rg_dealloc>:
802069b8: 41 11        	addi	sp, sp, -16
802069ba: 06 e4        	sd	ra, 8(sp)
802069bc: 22 e0        	sd	s0, 0(sp)
802069be: 00 08        	addi	s0, sp, 16

00000000802069c0 <.Lpcrel_hi3>:
802069c0: 97 46 34 00  	auipc	a3, 836
802069c4: 93 86 86 6c  	addi	a3, a3, 1736
802069c8: 2e 87        	mv	a4, a1
802069ca: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
802069cc: 36 85        	mv	a0, a3
802069ce: ba 86        	mv	a3, a4
802069d0: a2 60        	ld	ra, 8(sp)
802069d2: 02 64        	ld	s0, 0(sp)
802069d4: 41 01        	addi	sp, sp, 16
802069d6: 17 23 00 00  	auipc	t1, 2
802069da: 67 00 43 e0  	jr	-508(t1)

00000000802069de <_ZN6kernel9allocator18handle_alloc_error17h7d97b7c619a60b7bE>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
802069de: 1d 71        	addi	sp, sp, -96
802069e0: 86 ec        	sd	ra, 88(sp)
802069e2: a2 e8        	sd	s0, 80(sp)
802069e4: 80 10        	addi	s0, sp, 96
802069e6: 23 30 a4 fa  	sd	a0, -96(s0)
802069ea: 23 34 b4 fa  	sd	a1, -88(s0)
802069ee: 13 05 04 fa  	addi	a0, s0, -96
;     panic!("Heap allocation error, layout = {:?}", layout);
802069f2: 23 30 a4 fe  	sd	a0, -32(s0)

00000000802069f6 <.Lpcrel_hi7>:
802069f6: 17 45 00 00  	auipc	a0, 4
802069fa: 13 05 45 97  	addi	a0, a0, -1676
802069fe: 23 34 a4 fe  	sd	a0, -24(s0)

0000000080206a02 <.Lpcrel_hi8>:
80206a02: 17 55 00 00  	auipc	a0, 5
80206a06: 13 05 e5 cb  	addi	a0, a0, -834
80206a0a: 23 38 a4 fa  	sd	a0, -80(s0)
80206a0e: 05 45        	li	a0, 1
80206a10: 23 3c a4 fa  	sd	a0, -72(s0)
80206a14: 23 38 04 fc  	sd	zero, -48(s0)
80206a18: 93 05 04 fe  	addi	a1, s0, -32
80206a1c: 23 30 b4 fc  	sd	a1, -64(s0)
80206a20: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080206a24 <.Lpcrel_hi9>:
;     panic!("Heap allocation error, layout = {:?}", layout);
80206a24: 17 55 00 00  	auipc	a0, 5
80206a28: 93 05 45 cc  	addi	a1, a0, -828
80206a2c: 13 05 04 fb  	addi	a0, s0, -80
80206a30: 97 20 00 00  	auipc	ra, 2
80206a34: e7 80 a0 fc  	jalr	-54(ra)
80206a38: 00 00        	unimp	

0000000080206a3a <__rg_oom>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
80206a3a: 41 11        	addi	sp, sp, -16
80206a3c: 06 e4        	sd	ra, 8(sp)
80206a3e: 22 e0        	sd	s0, 0(sp)
80206a40: 00 08        	addi	s0, sp, 16
80206a42: 2a 86        	mv	a2, a0
80206a44: 2e 85        	mv	a0, a1
80206a46: b2 85        	mv	a1, a2
80206a48: 97 00 00 00  	auipc	ra, 0
80206a4c: e7 80 60 f9  	jalr	-106(ra)
80206a50: 00 00        	unimp	

0000000080206a52 <_ZN6kernel3sbi8shutdown17h9a9bfddbf1c41574E>:
; pub fn shutdown() -> ! {
80206a52: 39 71        	addi	sp, sp, -64
80206a54: 06 fc        	sd	ra, 56(sp)
80206a56: 22 f8        	sd	s0, 48(sp)
80206a58: 80 00        	addi	s0, sp, 64
;         asm!(
80206a5a: a1 48        	li	a7, 8
80206a5c: 01 45        	li	a0, 0
80206a5e: 81 45        	li	a1, 0
80206a60: 01 46        	li	a2, 0
80206a62: 73 00 00 00  	ecall	

0000000080206a66 <.Lpcrel_hi0>:
80206a66: 17 55 00 00  	auipc	a0, 5
80206a6a: 13 05 25 cb  	addi	a0, a0, -846
80206a6e: 23 30 a4 fc  	sd	a0, -64(s0)
80206a72: 05 45        	li	a0, 1
80206a74: 23 34 a4 fc  	sd	a0, -56(s0)
80206a78: 23 30 04 fe  	sd	zero, -32(s0)

0000000080206a7c <.Lpcrel_hi1>:
80206a7c: 17 55 00 00  	auipc	a0, 5
80206a80: 13 05 45 c8  	addi	a0, a0, -892
80206a84: 23 38 a4 fc  	sd	a0, -48(s0)
80206a88: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080206a8c <.Lpcrel_hi2>:
;     panic!("It should shutdown!");
80206a8c: 17 55 00 00  	auipc	a0, 5
80206a90: 93 05 c5 ca  	addi	a1, a0, -852
80206a94: 13 05 04 fc  	addi	a0, s0, -64
80206a98: 97 20 00 00  	auipc	ra, 2
80206a9c: e7 80 20 f6  	jalr	-158(ra)
80206aa0: 00 00        	unimp	

0000000080206aa2 <_ZN5riscv8register6scause6Scause5cause17h4ae59c0fcec7be52E>:
;     pub fn cause(&self) -> Trap {
80206aa2: 01 11        	addi	sp, sp, -32
80206aa4: 06 ec        	sd	ra, 24(sp)
80206aa6: 22 e8        	sd	s0, 16(sp)
80206aa8: 26 e4        	sd	s1, 8(sp)
80206aaa: 00 10        	addi	s0, sp, 32
;                 (*self & (1 << bit)) != 0
80206aac: 04 61        	ld	s1, 0(a0)
80206aae: 97 20 00 00  	auipc	ra, 2
80206ab2: e7 80 e0 e6  	jalr	-402(ra)
;         if self.is_interrupt() {
80206ab6: 63 c7 04 00  	bltz	s1, 0x80206ac4 <_ZN5riscv8register6scause6Scause5cause17h4ae59c0fcec7be52E+0x22>
;             Trap::Exception(Exception::from(self.code()))
80206aba: 97 20 00 00  	auipc	ra, 2
80206abe: e7 80 a0 e3  	jalr	-454(ra)
80206ac2: 29 a0        	j	0x80206acc <_ZN5riscv8register6scause6Scause5cause17h4ae59c0fcec7be52E+0x2a>
;             Trap::Interrupt(Interrupt::from(self.code()))
80206ac4: 97 20 00 00  	auipc	ra, 2
80206ac8: e7 80 80 e0  	jalr	-504(ra)
80206acc: 93 75 f5 0f  	andi	a1, a0, 255
;     }
80206ad0: 13 c5 f4 ff  	not	a0, s1
80206ad4: 7d 91        	srli	a0, a0, 63
80206ad6: e2 60        	ld	ra, 24(sp)
80206ad8: 42 64        	ld	s0, 16(sp)
80206ada: a2 64        	ld	s1, 8(sp)
80206adc: 05 61        	addi	sp, sp, 32
80206ade: 82 80        	ret

0000000080206ae0 <usertrap>:
; pub fn usertrap() {
80206ae0: 4d 71        	addi	sp, sp, -336
80206ae2: 86 e6        	sd	ra, 328(sp)
80206ae4: a2 e2        	sd	s0, 320(sp)
80206ae6: 26 fe        	sd	s1, 312(sp)
80206ae8: 4a fa        	sd	s2, 304(sp)
80206aea: 80 0a        	addi	s0, sp, 336
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206aec: 73 25 00 10  	csrr	a0, sstatus
;                 (*self & (1 << bit)) != 0
80206af0: 13 75 05 10  	andi	a0, a0, 256
;     if sstatus::read().spp() != SPP::User {
80206af4: 63 17 05 16  	bnez	a0, 0x80206c62 <.Lpcrel_hi1>

0000000080206af8 <.Lpcrel_hi0>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206af8: 17 a5 ff ff  	auipc	a0, 1048570
80206afc: 13 05 85 63  	addi	a0, a0, 1592
80206b00: 73 10 55 10  	csrw	stvec, a0
;     let p = unsafe{ &mut *myproc()};
80206b04: 97 c0 ff ff  	auipc	ra, 1048572
80206b08: e7 80 60 e6  	jalr	-410(ra)
;     let tf = unsafe {&mut *p.trapframe};
80206b0c: 83 34 85 14  	ld	s1, 328(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206b10: 73 25 10 14  	csrr	a0, sepc
;     tf.epc = sepc::read();
80206b14: 23 bc a4 10  	sd	a0, 280(s1)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206b18: 73 29 20 14  	csrr	s2, scause
;             $register {
80206b1c: 23 3c 24 eb  	sd	s2, -328(s0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206b20: 73 25 30 14  	csrr	a0, stval
;                     r
80206b24: 23 30 a4 ec  	sd	a0, -320(s0)
80206b28: 13 05 84 eb  	addi	a0, s0, -328
80206b2c: 97 20 00 00  	auipc	ra, 2
80206b30: e7 80 00 df  	jalr	-528(ra)
;         if self.is_interrupt() {
80206b34: 63 42 09 04  	bltz	s2, 0x80206b78 <.Lpcrel_hi0+0x80>
;             Trap::Exception(Exception::from(self.code()))
80206b38: 97 20 00 00  	auipc	ra, 2
80206b3c: e7 80 c0 db  	jalr	-580(ra)
80206b40: 13 75 f5 0f  	andi	a0, a0, 255
80206b44: 9d 45        	li	a1, 7
;     match scause.cause() {
80206b46: 63 1d b5 0c  	bne	a0, a1, 0x80206c20 <.Lpcrel_hi17+0x1a>
;             tf.epc += 4;
80206b4a: 03 b5 84 11  	ld	a0, 280(s1)
80206b4e: 11 05        	addi	a0, a0, 4
80206b50: 23 bc a4 10  	sd	a0, 280(s1)
;             let res = syscall(tf.x[17], [tf.x[10], tf.x[11], tf.x[12]]) as usize;
80206b54: ac 68        	ld	a1, 80(s1)
80206b56: b0 6c        	ld	a2, 88(s1)
80206b58: b4 70        	ld	a3, 96(s1)
80206b5a: c8 64        	ld	a0, 136(s1)
80206b5c: 23 3c b4 f2  	sd	a1, -200(s0)
80206b60: 23 30 c4 f4  	sd	a2, -192(s0)
80206b64: 23 34 d4 f4  	sd	a3, -184(s0)
80206b68: 93 05 84 f3  	addi	a1, s0, -200
80206b6c: 97 00 00 00  	auipc	ra, 0
80206b70: e7 80 00 d1  	jalr	-752(ra)
;             tf.x[10] = res;
80206b74: a8 e8        	sd	a0, 80(s1)
80206b76: 11 a8        	j	0x80206b8a <.Lpcrel_hi0+0x92>
;             Trap::Interrupt(Interrupt::from(self.code()))
80206b78: 97 20 00 00  	auipc	ra, 2
80206b7c: e7 80 40 d5  	jalr	-684(ra)
80206b80: 13 75 f5 0f  	andi	a0, a0, 255
80206b84: 95 45        	li	a1, 5
;     match scause.cause() {
80206b86: 63 16 b5 10  	bne	a0, a1, 0x80206c92 <.Lpcrel_hi3+0xa>
;     let p = unsafe { &*myproc() };
80206b8a: 97 c0 ff ff  	auipc	ra, 1048572
80206b8e: e7 80 00 de  	jalr	-544(ra)
80206b92: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80206b94: 73 b0 05 10  	csrc	sstatus, a1

0000000080206b98 <.Lpcrel_hi14>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206b98: 97 a5 ff ff  	auipc	a1, 1048570
80206b9c: 93 85 85 46  	addi	a1, a1, 1128

0000000080206ba0 <.Lpcrel_hi15>:
80206ba0: 17 a6 ff ff  	auipc	a2, 1048570
80206ba4: 13 06 06 46  	addi	a2, a2, 1120
80206ba8: 0d 8e        	sub	a2, a2, a1
80206baa: b7 06 00 04  	lui	a3, 16384
80206bae: fd 36        	addiw	a3, a3, -1
80206bb0: b2 06        	slli	a3, a3, 12
80206bb2: 36 96        	add	a2, a2, a3
80206bb4: 73 10 56 10  	csrw	stvec, a2
;     let tf = unsafe { &mut *p.trapframe };
80206bb8: 03 36 85 14  	ld	a2, 328(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206bbc: 73 27 00 18  	csrr	a4, satp
;     tf.kernel_satp = unsafe { satp::read().bits() };
80206bc0: 23 30 e6 10  	sd	a4, 256(a2)
;     tf.kernel_sp = p.kstack + KERNEL_STACK_SIZE;
80206bc4: 03 37 05 13  	ld	a4, 304(a0)
80206bc8: c1 67        	lui	a5, 16
80206bca: 3e 97        	add	a4, a4, a5
80206bcc: 23 34 e6 10  	sd	a4, 264(a2)

0000000080206bd0 <.Lpcrel_hi16>:
;     tf.kernel_trap = usertrap as Addr;
80206bd0: 17 07 00 00  	auipc	a4, 0
80206bd4: 13 07 07 f1  	addi	a4, a4, -240
80206bd8: 23 38 e6 10  	sd	a4, 272(a2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206bdc: 12 87        	mv	a4, tp
;     tf.kernel_hartid = r_tp();
80206bde: 23 30 e6 12  	sd	a4, 288(a2)
80206be2: 13 07 00 10  	li	a4, 256
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80206be6: 73 30 07 10  	csrc	sstatus, a4
80206bea: 13 07 00 02  	li	a4, 32
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80206bee: 73 20 07 10  	csrs	sstatus, a4
;     sepc::write(tf.epc);
80206bf2: 03 36 86 11  	ld	a2, 280(a2)
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206bf6: 73 10 16 14  	csrw	sepc, a2
;         self.data as Addr
80206bfa: 03 35 05 14  	ld	a0, 320(a0)
;         SATP_SV39 | (satp >> PGSHIFT)
80206bfe: 31 81        	srli	a0, a0, 12
80206c00: 7d 56        	li	a2, -1
80206c02: 7e 16        	slli	a2, a2, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80206c04: 51 8d        	or	a0, a0, a2

0000000080206c06 <.Lpcrel_hi17>:
;         asm! {
80206c06: 17 a6 ff ff  	auipc	a2, 1048570
80206c0a: 13 06 86 49  	addi	a2, a2, 1176
80206c0e: 0d 8e        	sub	a2, a2, a1
80206c10: 36 96        	add	a2, a2, a3
80206c12: 02 86        	jr	a2
; }
80206c14: b6 60        	ld	ra, 328(sp)
80206c16: 16 64        	ld	s0, 320(sp)
80206c18: f2 74        	ld	s1, 312(sp)
80206c1a: 52 79        	ld	s2, 304(sp)
80206c1c: 71 61        	addi	sp, sp, 336
80206c1e: 82 80        	ret
80206c20: 89 45        	li	a1, 2
;     match scause.cause() {
80206c22: 63 06 b5 14  	beq	a0, a1, 0x80206d6e <.Lpcrel_hi8>
80206c26: 99 45        	li	a1, 6
;     match scause.cause() {
80206c28: 63 05 b5 00  	beq	a0, a1, 0x80206c32 <.Lpcrel_hi11>
80206c2c: ad 45        	li	a1, 11
;     match scause.cause() {
80206c2e: 63 12 b5 06  	bne	a0, a1, 0x80206c92 <.Lpcrel_hi3+0xa>

0000000080206c32 <.Lpcrel_hi11>:
80206c32: 17 55 00 00  	auipc	a0, 5
80206c36: 13 05 e5 c0  	addi	a0, a0, -1010
80206c3a: 23 3c a4 f2  	sd	a0, -200(s0)
80206c3e: 05 45        	li	a0, 1
80206c40: 23 30 a4 f4  	sd	a0, -192(s0)
80206c44: 23 3c 04 f4  	sd	zero, -168(s0)

0000000080206c48 <.Lpcrel_hi12>:
80206c48: 17 55 00 00  	auipc	a0, 5
80206c4c: 13 05 85 b9  	addi	a0, a0, -1128
80206c50: 23 34 a4 f4  	sd	a0, -184(s0)
80206c54: 23 38 04 f4  	sd	zero, -176(s0)

0000000080206c58 <.Lpcrel_hi13>:
;             panic!("[kernel] PageFault in application, kernel killed it.");
80206c58: 17 55 00 00  	auipc	a0, 5
80206c5c: 93 05 85 bf  	addi	a1, a0, -1032
80206c60: 35 aa        	j	0x80206d9c <.Lpcrel_hi10+0x8>

0000000080206c62 <.Lpcrel_hi1>:
80206c62: 17 55 00 00  	auipc	a0, 5
80206c66: 13 05 e5 b6  	addi	a0, a0, -1170
80206c6a: 23 3c a4 f2  	sd	a0, -200(s0)
80206c6e: 05 45        	li	a0, 1
80206c70: 23 30 a4 f4  	sd	a0, -192(s0)
80206c74: 23 3c 04 f4  	sd	zero, -168(s0)

0000000080206c78 <.Lpcrel_hi2>:
80206c78: 17 55 00 00  	auipc	a0, 5
80206c7c: 13 05 85 b6  	addi	a0, a0, -1176
80206c80: 23 34 a4 f4  	sd	a0, -184(s0)
80206c84: 23 38 04 f4  	sd	zero, -176(s0)

0000000080206c88 <.Lpcrel_hi3>:
;         panic!("usertrap: not from user mode");
80206c88: 17 55 00 00  	auipc	a0, 5
80206c8c: 93 05 85 b6  	addi	a1, a0, -1176
80206c90: 31 a2        	j	0x80206d9c <.Lpcrel_hi10+0x8>
;                 scause.cause(),
80206c92: 13 05 84 eb  	addi	a0, s0, -328
80206c96: 97 00 00 00  	auipc	ra, 0
80206c9a: e7 80 c0 e0  	jalr	-500(ra)
80206c9e: 23 04 a4 f2  	sb	a0, -216(s0)
80206ca2: a3 04 b4 f2  	sb	a1, -215(s0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206ca6: 73 25 10 14  	csrr	a0, sepc
;                     r
80206caa: 23 38 a4 f2  	sd	a0, -208(s0)
80206cae: 13 05 84 f2  	addi	a0, s0, -216
;             panic!(
80206cb2: 23 3c a4 ee  	sd	a0, -264(s0)

0000000080206cb6 <.Lpcrel_hi4>:
80206cb6: 17 25 00 00  	auipc	a0, 2
80206cba: 13 05 c5 c7  	addi	a0, a0, -900
80206cbe: 23 30 a4 f0  	sd	a0, -256(s0)
80206cc2: 13 05 04 ec  	addi	a0, s0, -320
80206cc6: 23 34 a4 f0  	sd	a0, -248(s0)

0000000080206cca <.Lpcrel_hi5>:
80206cca: 17 35 00 00  	auipc	a0, 3
80206cce: 13 05 e5 f6  	addi	a0, a0, -146
80206cd2: 23 38 a4 f0  	sd	a0, -240(s0)
80206cd6: 93 05 04 f3  	addi	a1, s0, -208
80206cda: 23 3c b4 f0  	sd	a1, -232(s0)
80206cde: 23 30 a4 f2  	sd	a0, -224(s0)
80206ce2: 09 45        	li	a0, 2
80206ce4: 23 3c a4 f2  	sd	a0, -200(s0)
80206ce8: 23 34 a4 f4  	sd	a0, -184(s0)
80206cec: 23 3c 04 f4  	sd	zero, -168(s0)
80206cf0: 93 05 00 02  	li	a1, 32
80206cf4: 23 30 b4 f6  	sd	a1, -160(s0)
80206cf8: 8d 45        	li	a1, 3
80206cfa: 23 04 b4 f6  	sb	a1, -152(s0)
80206cfe: 23 38 a4 f6  	sd	a0, -144(s0)
80206d02: 23 30 a4 f8  	sd	a0, -128(s0)
80206d06: 05 46        	li	a2, 1
80206d08: 23 38 c4 f8  	sd	a2, -112(s0)
80206d0c: 0a 16        	slli	a2, a2, 34
80206d0e: 13 06 06 02  	addi	a2, a2, 32
80206d12: 23 3c c4 f8  	sd	a2, -104(s0)
80206d16: 23 00 b4 fa  	sb	a1, -96(s0)
80206d1a: 23 34 a4 fa  	sd	a0, -88(s0)
80206d1e: 23 3c a4 fa  	sd	a0, -72(s0)
80206d22: 23 34 a4 fc  	sd	a0, -56(s0)
80206d26: 23 38 c4 fc  	sd	a2, -48(s0)
80206d2a: 23 0c b4 fc  	sb	a1, -40(s0)

0000000080206d2e <.Lpcrel_hi6>:
80206d2e: 17 55 00 00  	auipc	a0, 5
80206d32: 13 05 a5 bc  	addi	a0, a0, -1078
80206d36: 23 34 a4 ec  	sd	a0, -312(s0)
80206d3a: 11 45        	li	a0, 4
80206d3c: 23 38 a4 ec  	sd	a0, -304(s0)
80206d40: 13 05 84 f3  	addi	a0, s0, -200
80206d44: 23 34 a4 ee  	sd	a0, -280(s0)
80206d48: 23 38 b4 ee  	sd	a1, -272(s0)
80206d4c: 13 05 84 ef  	addi	a0, s0, -264
80206d50: 23 3c a4 ec  	sd	a0, -296(s0)
80206d54: 23 30 b4 ee  	sd	a1, -288(s0)

0000000080206d58 <.Lpcrel_hi7>:
;             panic!(
80206d58: 17 55 00 00  	auipc	a0, 5
80206d5c: 93 05 05 be  	addi	a1, a0, -1056
80206d60: 13 05 84 ec  	addi	a0, s0, -312
80206d64: 97 20 00 00  	auipc	ra, 2
80206d68: e7 80 60 c9  	jalr	-874(ra)
80206d6c: 00 00        	unimp	

0000000080206d6e <.Lpcrel_hi8>:
80206d6e: 17 55 00 00  	auipc	a0, 5
80206d72: 13 05 a5 b3  	addi	a0, a0, -1222
80206d76: 23 3c a4 f2  	sd	a0, -200(s0)
80206d7a: 05 45        	li	a0, 1
80206d7c: 23 30 a4 f4  	sd	a0, -192(s0)
80206d80: 23 3c 04 f4  	sd	zero, -168(s0)

0000000080206d84 <.Lpcrel_hi9>:
80206d84: 17 55 00 00  	auipc	a0, 5
80206d88: 13 05 c5 a5  	addi	a0, a0, -1444
80206d8c: 23 34 a4 f4  	sd	a0, -184(s0)
80206d90: 23 38 04 f4  	sd	zero, -176(s0)

0000000080206d94 <.Lpcrel_hi10>:
;             panic!("[kernel] IllegalInstruction in application, kernel killed it.");
80206d94: 17 55 00 00  	auipc	a0, 5
80206d98: 93 05 45 b2  	addi	a1, a0, -1244
80206d9c: 13 05 84 f3  	addi	a0, s0, -200
80206da0: 97 20 00 00  	auipc	ra, 2
80206da4: e7 80 a0 c5  	jalr	-934(ra)
80206da8: 00 00        	unimp	

0000000080206daa <usertrapret>:
; pub fn usertrapret() {
80206daa: 41 11        	addi	sp, sp, -16
;     let p = unsafe { &*myproc() };
80206dac: 06 e4        	sd	ra, 8(sp)
80206dae: 22 e0        	sd	s0, 0(sp)
80206db0: 00 08        	addi	s0, sp, 16
80206db2: 97 c0 ff ff  	auipc	ra, 1048572
80206db6: e7 80 80 bb  	jalr	-1096(ra)
80206dba: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80206dbc: 73 b0 05 10  	csrc	sstatus, a1

0000000080206dc0 <.Lpcrel_hi18>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206dc0: 97 a5 ff ff  	auipc	a1, 1048570
80206dc4: 93 85 05 24  	addi	a1, a1, 576

0000000080206dc8 <.Lpcrel_hi19>:
80206dc8: 17 a6 ff ff  	auipc	a2, 1048570
80206dcc: 13 06 86 23  	addi	a2, a2, 568
80206dd0: 0d 8e        	sub	a2, a2, a1
80206dd2: b7 06 00 04  	lui	a3, 16384
80206dd6: fd 36        	addiw	a3, a3, -1
80206dd8: b2 06        	slli	a3, a3, 12
80206dda: 36 96        	add	a2, a2, a3
80206ddc: 73 10 56 10  	csrw	stvec, a2
;     let tf = unsafe { &mut *p.trapframe };
80206de0: 03 36 85 14  	ld	a2, 328(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80206de4: 73 27 00 18  	csrr	a4, satp
;     tf.kernel_satp = unsafe { satp::read().bits() };
80206de8: 23 30 e6 10  	sd	a4, 256(a2)
;     tf.kernel_sp = p.kstack + KERNEL_STACK_SIZE;
80206dec: 03 37 05 13  	ld	a4, 304(a0)
80206df0: c1 67        	lui	a5, 16
80206df2: 3e 97        	add	a4, a4, a5
80206df4: 23 34 e6 10  	sd	a4, 264(a2)

0000000080206df8 <.Lpcrel_hi20>:
;     tf.kernel_trap = usertrap as Addr;
80206df8: 17 07 00 00  	auipc	a4, 0
80206dfc: 13 07 87 ce  	addi	a4, a4, -792
80206e00: 23 38 e6 10  	sd	a4, 272(a2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206e04: 12 87        	mv	a4, tp
;     tf.kernel_hartid = r_tp();
80206e06: 23 30 e6 12  	sd	a4, 288(a2)
80206e0a: 13 07 00 10  	li	a4, 256
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80206e0e: 73 30 07 10  	csrc	sstatus, a4
80206e12: 13 07 00 02  	li	a4, 32
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80206e16: 73 20 07 10  	csrs	sstatus, a4
;     sepc::write(tf.epc);
80206e1a: 03 36 86 11  	ld	a2, 280(a2)
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206e1e: 73 10 16 14  	csrw	sepc, a2
;         self.data as Addr
80206e22: 03 35 05 14  	ld	a0, 320(a0)
;         SATP_SV39 | (satp >> PGSHIFT)
80206e26: 31 81        	srli	a0, a0, 12
80206e28: 7d 56        	li	a2, -1
80206e2a: 7e 16        	slli	a2, a2, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80206e2c: 51 8d        	or	a0, a0, a2

0000000080206e2e <.Lpcrel_hi21>:
;         asm! {
80206e2e: 17 a6 ff ff  	auipc	a2, 1048570
80206e32: 13 06 06 27  	addi	a2, a2, 624
80206e36: 0d 8e        	sub	a2, a2, a1
80206e38: 36 96        	add	a2, a2, a3
80206e3a: 02 86        	jr	a2
; }
80206e3c: a2 60        	ld	ra, 8(sp)
80206e3e: 02 64        	ld	s0, 0(sp)
80206e40: 41 01        	addi	sp, sp, 16
80206e42: 82 80        	ret

0000000080206e44 <kerneltrap>:
; pub fn kerneltrap() {}
80206e44: 41 11        	addi	sp, sp, -16
80206e46: 06 e4        	sd	ra, 8(sp)
80206e48: 22 e0        	sd	s0, 0(sp)
80206e4a: 00 08        	addi	s0, sp, 16
80206e4c: a2 60        	ld	ra, 8(sp)
80206e4e: 02 64        	ld	s0, 0(sp)
80206e50: 41 01        	addi	sp, sp, 16
80206e52: 82 80        	ret

0000000080206e54 <_ZN6kernel4trap12trapinithart17he3bac37976ea6eecE>:
; pub fn trapinithart() {
80206e54: 39 71        	addi	sp, sp, -64
80206e56: 06 fc        	sd	ra, 56(sp)
80206e58: 22 f8        	sd	s0, 48(sp)
80206e5a: 80 00        	addi	s0, sp, 64

0000000080206e5c <.Lpcrel_hi24>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80206e5c: 17 a5 ff ff  	auipc	a0, 1048570
80206e60: 13 05 45 2d  	addi	a0, a0, 724
80206e64: 73 10 55 10  	csrw	stvec, a0

0000000080206e68 <.Lpcrel_hi25>:
80206e68: 17 55 00 00  	auipc	a0, 5
80206e6c: 13 05 85 b2  	addi	a0, a0, -1240
80206e70: 23 30 a4 fc  	sd	a0, -64(s0)
80206e74: 05 45        	li	a0, 1
80206e76: 23 34 a4 fc  	sd	a0, -56(s0)
80206e7a: 23 30 04 fe  	sd	zero, -32(s0)

0000000080206e7e <.Lpcrel_hi26>:
80206e7e: 17 55 00 00  	auipc	a0, 5
80206e82: 13 05 25 96  	addi	a0, a0, -1694
80206e86: 23 38 a4 fc  	sd	a0, -48(s0)
80206e8a: 23 3c 04 fc  	sd	zero, -40(s0)
;     println!("trapinithart success!");
80206e8e: 13 05 04 fc  	addi	a0, s0, -64
80206e92: 97 00 00 00  	auipc	ra, 0
80206e96: e7 80 00 66  	jalr	1632(ra)
; }
80206e9a: e2 70        	ld	ra, 56(sp)
80206e9c: 42 74        	ld	s0, 48(sp)
80206e9e: 21 61        	addi	sp, sp, 64
80206ea0: 82 80        	ret

0000000080206ea2 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E>:
;     pub fn uvmunmap(&mut self, va: Addr, npages: usize, do_free: bool) {
80206ea2: 19 71        	addi	sp, sp, -128
80206ea4: 86 fc        	sd	ra, 120(sp)
80206ea6: a2 f8        	sd	s0, 112(sp)
80206ea8: a6 f4        	sd	s1, 104(sp)
80206eaa: ca f0        	sd	s2, 96(sp)
80206eac: ce ec        	sd	s3, 88(sp)
80206eae: d2 e8        	sd	s4, 80(sp)
80206eb0: d6 e4        	sd	s5, 72(sp)
80206eb2: da e0        	sd	s6, 64(sp)
80206eb4: 5e fc        	sd	s7, 56(sp)
80206eb6: 62 f8        	sd	s8, 48(sp)
80206eb8: 00 01        	addi	s0, sp, 128
80206eba: 2e 8c        	mv	s8, a1
;         if va % PGSIZE != 0 {
80206ebc: d2 15        	slli	a1, a1, 52
80206ebe: 63 96 05 22  	bnez	a1, 0x802070ea <.Lpcrel_hi3>
80206ec2: 32 89        	mv	s2, a2
80206ec4: 6d c2        	beqz	a2, 0x80206fa6 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
80206ec6: 83 39 05 00  	ld	s3, 0(a0)
;             if do_free {
80206eca: a5 ce        	beqz	a3, 0x80206f42 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xa0>
;         if va >= MAXVA {
80206ecc: 13 5a cc 00  	srli	s4, s8, 12
80206ed0: 85 6a        	lui	s5, 1
80206ed2: 1b 8b 8a ff  	addiw	s6, s5, -8
80206ed6: 85 4b        	li	s7, 1
80206ed8: 13 55 6c 02  	srli	a0, s8, 38
80206edc: 63 1b 05 18  	bnez	a0, 0x80207072 <.Lpcrel_hi0>
80206ee0: 13 55 bc 01  	srli	a0, s8, 27
80206ee4: 61 99        	andi	a0, a0, -8
80206ee6: 4e 95        	add	a0, a0, s3
;             if (*pte & PTE_V) != 0 {
80206ee8: 08 61        	ld	a0, 0(a0)
80206eea: 93 75 15 00  	andi	a1, a0, 1
80206eee: e1 c9        	beqz	a1, 0x80206fbe <.Lpcrel_hi9>
;     (pte >> 10) << 12
80206ef0: 29 81        	srli	a0, a0, 10
80206ef2: 32 05        	slli	a0, a0, 12
80206ef4: 93 55 2c 01  	srli	a1, s8, 18
80206ef8: b3 f5 65 01  	and	a1, a1, s6
80206efc: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
80206efe: 08 61        	ld	a0, 0(a0)
80206f00: 93 75 15 00  	andi	a1, a0, 1
80206f04: cd cd        	beqz	a1, 0x80206fbe <.Lpcrel_hi9>
;     (pte >> 10) << 12
80206f06: 29 81        	srli	a0, a0, 10
80206f08: 32 05        	slli	a0, a0, 12
80206f0a: 55 c9        	beqz	a0, 0x80206fbe <.Lpcrel_hi9>
80206f0c: 93 75 fa 1f  	andi	a1, s4, 511
80206f10: 8e 05        	slli	a1, a1, 3
80206f12: b3 64 b5 00  	or	s1, a0, a1
;             if *pte & PTE_V == 0 {
80206f16: 88 60        	ld	a0, 0(s1)
80206f18: 93 75 15 00  	andi	a1, a0, 1
80206f1c: f9 cd        	beqz	a1, 0x80206ffa <.Lpcrel_hi12>
;     pte & 0x3ff
80206f1e: 93 75 f5 3f  	andi	a1, a0, 1023
80206f22: 63 8a 75 11  	beq	a1, s7, 0x80207036 <.Lpcrel_hi15>
;     (pte >> 10) << 12
80206f26: 29 81        	srli	a0, a0, 10
80206f28: 32 05        	slli	a0, a0, 12
;                 kfree(pa);
80206f2a: 97 10 00 00  	auipc	ra, 1
80206f2e: e7 80 60 df  	jalr	-522(ra)
;             *pte = 0;
80206f32: 23 b0 04 00  	sd	zero, 0(s1)
;             a += PGSIZE;
80206f36: 56 9c        	add	s8, s8, s5
80206f38: 7d 19        	addi	s2, s2, -1
80206f3a: 05 0a        	addi	s4, s4, 1
80206f3c: e3 1e 09 f8  	bnez	s2, 0x80206ed8 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x36>
80206f40: 9d a0        	j	0x80206fa6 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
;         if va >= MAXVA {
80206f42: 13 55 cc 00  	srli	a0, s8, 12
80206f46: 85 65        	lui	a1, 1
80206f48: 1b 86 85 ff  	addiw	a2, a1, -8
80206f4c: 85 46        	li	a3, 1
;         if va >= MAXVA {
80206f4e: 13 57 6c 02  	srli	a4, s8, 38
80206f52: 63 1e 07 14  	bnez	a4, 0x802070ae <.Lpcrel_hi6>
80206f56: 13 57 bc 01  	srli	a4, s8, 27
80206f5a: 61 9b        	andi	a4, a4, -8
80206f5c: 4e 97        	add	a4, a4, s3
;             if (*pte & PTE_V) != 0 {
80206f5e: 18 63        	ld	a4, 0(a4)
80206f60: 93 77 17 00  	andi	a5, a4, 1
80206f64: a9 cf        	beqz	a5, 0x80206fbe <.Lpcrel_hi9>
;     (pte >> 10) << 12
80206f66: 29 83        	srli	a4, a4, 10
80206f68: 32 07        	slli	a4, a4, 12
80206f6a: 93 57 2c 01  	srli	a5, s8, 18
80206f6e: f1 8f        	and	a5, a5, a2
80206f70: 5d 8f        	or	a4, a4, a5
;             if (*pte & PTE_V) != 0 {
80206f72: 18 63        	ld	a4, 0(a4)
80206f74: 93 77 17 00  	andi	a5, a4, 1
80206f78: b9 c3        	beqz	a5, 0x80206fbe <.Lpcrel_hi9>
;     (pte >> 10) << 12
80206f7a: 29 83        	srli	a4, a4, 10
80206f7c: 32 07        	slli	a4, a4, 12
80206f7e: 21 c3        	beqz	a4, 0x80206fbe <.Lpcrel_hi9>
80206f80: 93 77 f5 1f  	andi	a5, a0, 511
80206f84: 8e 07        	slli	a5, a5, 3
80206f86: 5d 8f        	or	a4, a4, a5
;             if *pte & PTE_V == 0 {
80206f88: 04 63        	ld	s1, 0(a4)
80206f8a: 93 f7 14 00  	andi	a5, s1, 1
80206f8e: b5 c7        	beqz	a5, 0x80206ffa <.Lpcrel_hi12>
;     pte & 0x3ff
80206f90: 93 f7 f4 3f  	andi	a5, s1, 1023
;             if pte_flags(*pte) == PTE_V {
80206f94: 63 81 d7 0a  	beq	a5, a3, 0x80207036 <.Lpcrel_hi15>
;             *pte = 0;
80206f98: 23 30 07 00  	sd	zero, 0(a4)
;             a += PGSIZE;
80206f9c: 2e 9c        	add	s8, s8, a1
80206f9e: 7d 19        	addi	s2, s2, -1
80206fa0: 05 05        	addi	a0, a0, 1
80206fa2: e3 16 09 fa  	bnez	s2, 0x80206f4e <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xac>
;     }
80206fa6: e6 70        	ld	ra, 120(sp)
80206fa8: 46 74        	ld	s0, 112(sp)
80206faa: a6 74        	ld	s1, 104(sp)
80206fac: 06 79        	ld	s2, 96(sp)
80206fae: e6 69        	ld	s3, 88(sp)
80206fb0: 46 6a        	ld	s4, 80(sp)
80206fb2: a6 6a        	ld	s5, 72(sp)
80206fb4: 06 6b        	ld	s6, 64(sp)
80206fb6: e2 7b        	ld	s7, 56(sp)
80206fb8: 42 7c        	ld	s8, 48(sp)
80206fba: 09 61        	addi	sp, sp, 128
80206fbc: 82 80        	ret

0000000080206fbe <.Lpcrel_hi9>:
80206fbe: 17 55 00 00  	auipc	a0, 5
80206fc2: 13 05 a5 ac  	addi	a0, a0, -1334
80206fc6: 23 30 a4 f8  	sd	a0, -128(s0)
80206fca: 05 45        	li	a0, 1
80206fcc: 23 34 a4 f8  	sd	a0, -120(s0)
80206fd0: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206fd4 <.Lpcrel_hi10>:
80206fd4: 17 55 00 00  	auipc	a0, 5
80206fd8: 13 05 45 9f  	addi	a0, a0, -1548
80206fdc: 23 38 a4 f8  	sd	a0, -112(s0)
80206fe0: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080206fe4 <.Lpcrel_hi11>:
;                 panic!("uvmunmap: walk");
80206fe4: 17 55 00 00  	auipc	a0, 5
80206fe8: 93 05 45 ab  	addi	a1, a0, -1356
80206fec: 13 05 04 f8  	addi	a0, s0, -128
80206ff0: 97 20 00 00  	auipc	ra, 2
80206ff4: e7 80 a0 a0  	jalr	-1526(ra)
80206ff8: 00 00        	unimp	

0000000080206ffa <.Lpcrel_hi12>:
80206ffa: 17 55 00 00  	auipc	a0, 5
80206ffe: 13 05 65 a5  	addi	a0, a0, -1450
80207002: 23 30 a4 f8  	sd	a0, -128(s0)
80207006: 05 45        	li	a0, 1
80207008: 23 34 a4 f8  	sd	a0, -120(s0)
8020700c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080207010 <.Lpcrel_hi13>:
80207010: 17 55 00 00  	auipc	a0, 5
80207014: 13 05 85 9b  	addi	a0, a0, -1608
80207018: 23 38 a4 f8  	sd	a0, -112(s0)
8020701c: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080207020 <.Lpcrel_hi14>:
;                 panic!("uvmunmap: not maapped");
80207020: 17 55 00 00  	auipc	a0, 5
80207024: 93 05 05 a4  	addi	a1, a0, -1472
80207028: 13 05 04 f8  	addi	a0, s0, -128
8020702c: 97 20 00 00  	auipc	ra, 2
80207030: e7 80 e0 9c  	jalr	-1586(ra)
80207034: 00 00        	unimp	

0000000080207036 <.Lpcrel_hi15>:
80207036: 17 55 00 00  	auipc	a0, 5
8020703a: 13 05 a5 9d  	addi	a0, a0, -1574
8020703e: 23 30 a4 f8  	sd	a0, -128(s0)
80207042: 05 45        	li	a0, 1
80207044: 23 34 a4 f8  	sd	a0, -120(s0)
80207048: 23 30 04 fa  	sd	zero, -96(s0)

000000008020704c <.Lpcrel_hi16>:
8020704c: 17 55 00 00  	auipc	a0, 5
80207050: 13 05 c5 97  	addi	a0, a0, -1668
80207054: 23 38 a4 f8  	sd	a0, -112(s0)
80207058: 23 3c 04 f8  	sd	zero, -104(s0)

000000008020705c <.Lpcrel_hi17>:
;                 panic!("uvmunmap: not a leaf");
8020705c: 17 55 00 00  	auipc	a0, 5
80207060: 93 05 45 9c  	addi	a1, a0, -1596
80207064: 13 05 04 f8  	addi	a0, s0, -128
80207068: 97 20 00 00  	auipc	ra, 2
8020706c: e7 80 20 99  	jalr	-1646(ra)
80207070: 00 00        	unimp	

0000000080207072 <.Lpcrel_hi0>:
80207072: 17 55 00 00  	auipc	a0, 5
80207076: 13 05 65 a7  	addi	a0, a0, -1418
8020707a: 23 30 a4 f8  	sd	a0, -128(s0)
8020707e: 05 45        	li	a0, 1
80207080: 23 34 a4 f8  	sd	a0, -120(s0)
80207084: 23 30 04 fa  	sd	zero, -96(s0)

0000000080207088 <.Lpcrel_hi1>:
80207088: 17 55 00 00  	auipc	a0, 5
8020708c: 13 05 05 a7  	addi	a0, a0, -1424
80207090: 23 38 a4 f8  	sd	a0, -112(s0)
80207094: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080207098 <.Lpcrel_hi2>:
;             panic!("walk");
80207098: 17 55 00 00  	auipc	a0, 5
8020709c: 93 05 85 a7  	addi	a1, a0, -1416
802070a0: 13 05 04 f8  	addi	a0, s0, -128
802070a4: 97 20 00 00  	auipc	ra, 2
802070a8: e7 80 60 95  	jalr	-1706(ra)
802070ac: 00 00        	unimp	

00000000802070ae <.Lpcrel_hi6>:
802070ae: 17 55 00 00  	auipc	a0, 5
802070b2: 13 05 a5 a3  	addi	a0, a0, -1478
802070b6: 23 30 a4 f8  	sd	a0, -128(s0)
802070ba: 05 45        	li	a0, 1
802070bc: 23 34 a4 f8  	sd	a0, -120(s0)
802070c0: 23 30 04 fa  	sd	zero, -96(s0)

00000000802070c4 <.Lpcrel_hi7>:
802070c4: 17 55 00 00  	auipc	a0, 5
802070c8: 13 05 45 a3  	addi	a0, a0, -1484
802070cc: 23 38 a4 f8  	sd	a0, -112(s0)
802070d0: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802070d4 <.Lpcrel_hi8>:
;             panic!("walk");
802070d4: 17 55 00 00  	auipc	a0, 5
802070d8: 93 05 c5 a3  	addi	a1, a0, -1476
802070dc: 13 05 04 f8  	addi	a0, s0, -128
802070e0: 97 20 00 00  	auipc	ra, 2
802070e4: e7 80 a0 91  	jalr	-1766(ra)
802070e8: 00 00        	unimp	

00000000802070ea <.Lpcrel_hi3>:
802070ea: 17 55 00 00  	auipc	a0, 5
802070ee: 13 05 e5 8c  	addi	a0, a0, -1842
802070f2: 23 30 a4 f8  	sd	a0, -128(s0)
802070f6: 05 45        	li	a0, 1
802070f8: 23 34 a4 f8  	sd	a0, -120(s0)
802070fc: 23 30 04 fa  	sd	zero, -96(s0)

0000000080207100 <.Lpcrel_hi4>:
80207100: 17 55 00 00  	auipc	a0, 5
80207104: 13 05 85 8c  	addi	a0, a0, -1848
80207108: 23 38 a4 f8  	sd	a0, -112(s0)
8020710c: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080207110 <.Lpcrel_hi5>:
;             panic!("uvmunmap: not aligned");
80207110: 17 55 00 00  	auipc	a0, 5
80207114: 93 05 05 8d  	addi	a1, a0, -1840
80207118: 13 05 04 f8  	addi	a0, s0, -128
8020711c: 97 20 00 00  	auipc	ra, 2
80207120: e7 80 e0 8d  	jalr	-1826(ra)
80207124: 00 00        	unimp	

0000000080207126 <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.18370344831068375730>:
;     pub fn freewalk(&mut self) {
80207126: 1d 71        	addi	sp, sp, -96
80207128: 86 ec        	sd	ra, 88(sp)
8020712a: a2 e8        	sd	s0, 80(sp)
8020712c: a6 e4        	sd	s1, 72(sp)
8020712e: ca e0        	sd	s2, 64(sp)
80207130: 4e fc        	sd	s3, 56(sp)
80207132: 52 f8        	sd	s4, 48(sp)
80207134: 80 10        	addi	s0, sp, 96
80207136: 03 39 05 00  	ld	s2, 0(a0)
8020713a: 13 0a 00 20  	li	s4, 512
8020713e: 85 49        	li	s3, 1
80207140: ca 84        	mv	s1, s2
80207142: 0d a0        	j	0x80207164 <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.18370344831068375730+0x3e>
;     (pte >> 10) << 12
80207144: 29 81        	srli	a0, a0, 10
80207146: 32 05        	slli	a0, a0, 12
;                 let mut child = Self::from_pagetable(PagetableT::addr2pagetablet(pte2pa(*pte)));
80207148: 23 30 a4 fa  	sd	a0, -96(s0)
;                 child.freewalk();
8020714c: 13 05 04 fa  	addi	a0, s0, -96
80207150: 97 00 00 00  	auipc	ra, 0
80207154: e7 80 60 fd  	jalr	-42(ra)
;                 *pte = 0;
80207158: 23 b0 04 00  	sd	zero, 0(s1)
8020715c: 7d 1a        	addi	s4, s4, -1
8020715e: a1 04        	addi	s1, s1, 8
80207160: 63 07 0a 04  	beqz	s4, 0x802071ae <.Lpcrel_hi26+0x16>
;             if (*pte & PTE_V) != 0 && (*pte & (PTE_R | PTE_W | PTE_X) == 0) {
80207164: 88 60        	ld	a0, 0(s1)
80207166: 93 75 f5 00  	andi	a1, a0, 15
8020716a: e3 8d 35 fd  	beq	a1, s3, 0x80207144 <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.18370344831068375730+0x1e>
8020716e: 05 89        	andi	a0, a0, 1
;             } else if (*pte & PTE_V) != 0 {
80207170: 75 d5        	beqz	a0, 0x8020715c <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.18370344831068375730+0x36>

0000000080207172 <.Lpcrel_hi24>:
80207172: 17 55 00 00  	auipc	a0, 5
80207176: 13 05 e5 94  	addi	a0, a0, -1714
8020717a: 23 30 a4 fa  	sd	a0, -96(s0)
8020717e: 05 45        	li	a0, 1
80207180: 23 34 a4 fa  	sd	a0, -88(s0)
80207184: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207188 <.Lpcrel_hi25>:
80207188: 17 55 00 00  	auipc	a0, 5
8020718c: 13 05 05 84  	addi	a0, a0, -1984
80207190: 23 38 a4 fa  	sd	a0, -80(s0)
80207194: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207198 <.Lpcrel_hi26>:
;                 panic!("freewalk: leaf");
80207198: 17 55 00 00  	auipc	a0, 5
8020719c: 93 05 85 93  	addi	a1, a0, -1736
802071a0: 13 05 04 fa  	addi	a0, s0, -96
802071a4: 97 20 00 00  	auipc	ra, 2
802071a8: e7 80 60 85  	jalr	-1962(ra)
802071ac: 00 00        	unimp	
;         kfree(self.pagetable.pagetablet2addr());
802071ae: 4a 85        	mv	a0, s2
802071b0: e6 60        	ld	ra, 88(sp)
802071b2: 46 64        	ld	s0, 80(sp)
802071b4: a6 64        	ld	s1, 72(sp)
802071b6: 06 69        	ld	s2, 64(sp)
802071b8: e2 79        	ld	s3, 56(sp)
802071ba: 42 7a        	ld	s4, 48(sp)
802071bc: 25 61        	addi	sp, sp, 96
802071be: 17 13 00 00  	auipc	t1, 1
802071c2: 67 00 23 b6  	jr	-1182(t1)

00000000802071c6 <walk>:
;     pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
802071c6: 1d 71        	addi	sp, sp, -96
802071c8: 86 ec        	sd	ra, 88(sp)
802071ca: a2 e8        	sd	s0, 80(sp)
802071cc: a6 e4        	sd	s1, 72(sp)
802071ce: ca e0        	sd	s2, 64(sp)
802071d0: 4e fc        	sd	s3, 56(sp)
802071d2: 80 10        	addi	s0, sp, 96
802071d4: ae 89        	mv	s3, a1
;         if va >= MAXVA {
802071d6: 99 91        	srli	a1, a1, 38
802071d8: c5 ed        	bnez	a1, 0x80207290 <.Lpcrel_hi0>
;         self.data as Addr
802071da: 04 61        	ld	s1, 0(a0)
802071dc: 13 d5 b9 01  	srli	a0, s3, 27
802071e0: 61 99        	andi	a0, a0, -8
802071e2: aa 94        	add	s1, s1, a0
;             if (*pte & PTE_V) != 0 {
802071e4: 88 60        	ld	a0, 0(s1)
802071e6: 93 75 15 00  	andi	a1, a0, 1
;                 if !alloc {
802071ea: 05 c6        	beqz	a2, 0x80207212 <walk+0x4c>
;             if (*pte & PTE_V) != 0 {
802071ec: b1 e1        	bnez	a1, 0x80207230 <walk+0x6a>
;                 let pa = kalloc();
802071ee: 97 10 00 00  	auipc	ra, 1
802071f2: e7 80 80 90  	jalr	-1784(ra)
;                 if pa == 0 {
802071f6: 51 c5        	beqz	a0, 0x80207282 <walk+0xbc>
802071f8: 2a 89        	mv	s2, a0
802071fa: 05 66        	lui	a2, 1
802071fc: 81 45        	li	a1, 0
802071fe: 97 30 00 00  	auipc	ra, 3
80207202: e7 80 a0 22  	jalr	554(ra)
;     (pa >> 12) << 10
80207206: 13 55 c9 00  	srli	a0, s2, 12
8020720a: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
8020720c: 05 05        	addi	a0, a0, 1
8020720e: 88 e0        	sd	a0, 0(s1)
80207210: 1d a0        	j	0x80207236 <walk+0x70>
;             if (*pte & PTE_V) != 0 {
80207212: 89 cd        	beqz	a1, 0x8020722c <walk+0x66>
;     (pte >> 10) << 12
80207214: 29 81        	srli	a0, a0, 10
80207216: 32 05        	slli	a0, a0, 12
80207218: 93 d5 29 01  	srli	a1, s3, 18
8020721c: 05 66        	lui	a2, 1
8020721e: 61 36        	addiw	a2, a2, -8
80207220: f1 8d        	and	a1, a1, a2
80207222: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
80207224: 08 61        	ld	a0, 0(a0)
80207226: 93 75 15 00  	andi	a1, a0, 1
8020722a: b9 e1        	bnez	a1, 0x80207270 <walk+0xaa>
8020722c: 01 45        	li	a0, 0
8020722e: 91 a8        	j	0x80207282 <walk+0xbc>
;     (pte >> 10) << 12
80207230: 29 81        	srli	a0, a0, 10
80207232: 13 19 c5 00  	slli	s2, a0, 12
80207236: 13 d5 29 01  	srli	a0, s3, 18
8020723a: 85 65        	lui	a1, 1
8020723c: e1 35        	addiw	a1, a1, -8
8020723e: 6d 8d        	and	a0, a0, a1
80207240: b3 04 a9 00  	add	s1, s2, a0
;             if (*pte & PTE_V) != 0 {
80207244: 88 60        	ld	a0, 0(s1)
80207246: 93 75 15 00  	andi	a1, a0, 1
8020724a: 9d e1        	bnez	a1, 0x80207270 <walk+0xaa>
;                 let pa = kalloc();
8020724c: 97 10 00 00  	auipc	ra, 1
80207250: e7 80 a0 8a  	jalr	-1878(ra)
;                 if pa == 0 {
80207254: 1d c5        	beqz	a0, 0x80207282 <walk+0xbc>
80207256: 2a 89        	mv	s2, a0
80207258: 05 66        	lui	a2, 1
8020725a: 81 45        	li	a1, 0
8020725c: 97 30 00 00  	auipc	ra, 3
80207260: e7 80 c0 1c  	jalr	460(ra)
;     (pa >> 12) << 10
80207264: 13 55 c9 00  	srli	a0, s2, 12
80207268: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
8020726a: 05 05        	addi	a0, a0, 1
8020726c: 88 e0        	sd	a0, 0(s1)
8020726e: 21 a0        	j	0x80207276 <walk+0xb0>
;                 pagetable = PagetableT::addr2pagetablet(pte2pa(*pte));
80207270: 29 81        	srli	a0, a0, 10
80207272: 13 19 c5 00  	slli	s2, a0, 12
80207276: 13 d5 99 00  	srli	a0, s3, 9
8020727a: 85 65        	lui	a1, 1
8020727c: e1 35        	addiw	a1, a1, -8
8020727e: 6d 8d        	and	a0, a0, a1
80207280: 4a 95        	add	a0, a0, s2
;     }
80207282: e6 60        	ld	ra, 88(sp)
80207284: 46 64        	ld	s0, 80(sp)
80207286: a6 64        	ld	s1, 72(sp)
80207288: 06 69        	ld	s2, 64(sp)
8020728a: e2 79        	ld	s3, 56(sp)
8020728c: 25 61        	addi	sp, sp, 96
8020728e: 82 80        	ret

0000000080207290 <.Lpcrel_hi0>:
80207290: 17 55 00 00  	auipc	a0, 5
80207294: 13 05 85 85  	addi	a0, a0, -1960
80207298: 23 34 a4 fa  	sd	a0, -88(s0)
8020729c: 05 45        	li	a0, 1
8020729e: 23 38 a4 fa  	sd	a0, -80(s0)
802072a2: 23 34 04 fc  	sd	zero, -56(s0)

00000000802072a6 <.Lpcrel_hi1>:
802072a6: 17 55 00 00  	auipc	a0, 5
802072aa: 13 05 25 85  	addi	a0, a0, -1966
802072ae: 23 3c a4 fa  	sd	a0, -72(s0)
802072b2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802072b6 <.Lpcrel_hi2>:
;             panic!("walk");
802072b6: 17 55 00 00  	auipc	a0, 5
802072ba: 93 05 a5 85  	addi	a1, a0, -1958
802072be: 13 05 84 fa  	addi	a0, s0, -88
802072c2: 97 10 00 00  	auipc	ra, 1
802072c6: e7 80 80 73  	jalr	1848(ra)
802072ca: 00 00        	unimp	

00000000802072cc <_ZN4core3ptr55drop_in_place$LT$$RF$mut$u20$kernel..printf..Stdout$GT$17hd6f94f5e76258c7aE.llvm.10195949329992049209>:
802072cc: 41 11        	addi	sp, sp, -16
802072ce: 06 e4        	sd	ra, 8(sp)
802072d0: 22 e0        	sd	s0, 0(sp)
802072d2: 00 08        	addi	s0, sp, 16
802072d4: a2 60        	ld	ra, 8(sp)
802072d6: 02 64        	ld	s0, 0(sp)
802072d8: 41 01        	addi	sp, sp, 16
802072da: 82 80        	ret

00000000802072dc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209>:
802072dc: 01 11        	addi	sp, sp, -32
802072de: 06 ec        	sd	ra, 24(sp)
802072e0: 22 e8        	sd	s0, 16(sp)
802072e2: 00 10        	addi	s0, sp, 32
802072e4: 1b 85 05 00  	sext.w	a0, a1
802072e8: 13 06 00 08  	li	a2, 128
802072ec: 23 26 04 fe  	sw	zero, -20(s0)
802072f0: 63 76 c5 00  	bgeu	a0, a2, 0x802072fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x20>
802072f4: 23 06 b4 fe  	sb	a1, -20(s0)
802072f8: 05 47        	li	a4, 1
802072fa: 71 a0        	j	0x80207386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xaa>
802072fc: 1b d5 b5 00  	srliw	a0, a1, 11
80207300: 19 ed        	bnez	a0, 0x8020731e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x42>
80207302: 13 d5 65 00  	srli	a0, a1, 6
80207306: 13 65 05 0c  	ori	a0, a0, 192
8020730a: 23 06 a4 fe  	sb	a0, -20(s0)
8020730e: 13 f5 f5 03  	andi	a0, a1, 63
80207312: 13 05 05 08  	addi	a0, a0, 128
80207316: a3 06 a4 fe  	sb	a0, -19(s0)
8020731a: 09 47        	li	a4, 2
8020731c: ad a0        	j	0x80207386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xaa>
8020731e: 1b d5 05 01  	srliw	a0, a1, 16
80207322: 15 e5        	bnez	a0, 0x8020734e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x72>
80207324: 13 d5 c5 00  	srli	a0, a1, 12
80207328: 13 65 05 0e  	ori	a0, a0, 224
8020732c: 23 06 a4 fe  	sb	a0, -20(s0)
80207330: 13 95 45 03  	slli	a0, a1, 52
80207334: 69 91        	srli	a0, a0, 58
80207336: 13 05 05 08  	addi	a0, a0, 128
8020733a: a3 06 a4 fe  	sb	a0, -19(s0)
8020733e: 13 f5 f5 03  	andi	a0, a1, 63
80207342: 13 05 05 08  	addi	a0, a0, 128
80207346: 23 07 a4 fe  	sb	a0, -18(s0)
8020734a: 0d 47        	li	a4, 3
8020734c: 2d a8        	j	0x80207386 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xaa>
8020734e: 13 95 b5 02  	slli	a0, a1, 43
80207352: 75 91        	srli	a0, a0, 61
80207354: 13 05 05 0f  	addi	a0, a0, 240
80207358: 23 06 a4 fe  	sb	a0, -20(s0)
8020735c: 13 95 e5 02  	slli	a0, a1, 46
80207360: 69 91        	srli	a0, a0, 58
80207362: 13 05 05 08  	addi	a0, a0, 128
80207366: a3 06 a4 fe  	sb	a0, -19(s0)
8020736a: 13 95 45 03  	slli	a0, a1, 52
8020736e: 69 91        	srli	a0, a0, 58
80207370: 13 05 05 08  	addi	a0, a0, 128
80207374: 23 07 a4 fe  	sb	a0, -18(s0)
80207378: 13 f5 f5 03  	andi	a0, a1, 63
8020737c: 13 05 05 08  	addi	a0, a0, 128
80207380: a3 07 a4 fe  	sb	a0, -17(s0)
80207384: 11 47        	li	a4, 4
80207386: 93 06 c4 fe  	addi	a3, s0, -20
8020738a: 36 97        	add	a4, a4, a3
8020738c: 13 03 f0 0d  	li	t1, 223
80207390: 13 08 00 0f  	li	a6, 240
80207394: b7 02 11 00  	lui	t0, 272
80207398: 85 48        	li	a7, 1
8020739a: 01 a8        	j	0x802073aa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xce>
8020739c: 85 06        	addi	a3, a3, 1
;         asm!(
8020739e: 81 45        	li	a1, 0
802073a0: 01 46        	li	a2, 0
802073a2: 73 00 00 00  	ecall	
802073a6: 63 8f e6 04  	beq	a3, a4, 0x80207404 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x128>
802073aa: 83 85 06 00  	lb	a1, 0(a3)
802073ae: 13 f5 f5 0f  	andi	a0, a1, 255
802073b2: e3 d5 05 fe  	bgez	a1, 0x8020739c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xc0>
802073b6: 03 c6 16 00  	lbu	a2, 1(a3)
802073ba: 93 75 f5 01  	andi	a1, a0, 31
802073be: 13 76 f6 03  	andi	a2, a2, 63
802073c2: 63 77 a3 02  	bgeu	t1, a0, 0x802073f0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x114>
802073c6: 83 c7 26 00  	lbu	a5, 2(a3)
802073ca: 1a 06        	slli	a2, a2, 6
802073cc: 93 f7 f7 03  	andi	a5, a5, 63
802073d0: 5d 8e        	or	a2, a2, a5
802073d2: 63 64 05 03  	bltu	a0, a6, 0x802073fa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x11e>
802073d6: 03 c5 36 00  	lbu	a0, 3(a3)
802073da: f6 15        	slli	a1, a1, 61
802073dc: ad 91        	srli	a1, a1, 43
802073de: 1a 06        	slli	a2, a2, 6
802073e0: 13 75 f5 03  	andi	a0, a0, 63
802073e4: 51 8d        	or	a0, a0, a2
802073e6: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
802073e8: 63 0e 55 00  	beq	a0, t0, 0x80207404 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0x128>
802073ec: 91 06        	addi	a3, a3, 4
802073ee: 45 bf        	j	0x8020739e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xc2>
802073f0: 89 06        	addi	a3, a3, 2
802073f2: 13 95 65 00  	slli	a0, a1, 6
802073f6: 51 8d        	or	a0, a0, a2
802073f8: 5d b7        	j	0x8020739e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xc2>
802073fa: 8d 06        	addi	a3, a3, 3
802073fc: 13 95 c5 00  	slli	a0, a1, 12
80207400: 51 8d        	or	a0, a0, a2
80207402: 71 bf        	j	0x8020739e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5ed53f7d469d30eeE.llvm.10195949329992049209+0xc2>
80207404: 01 45        	li	a0, 0
80207406: e2 60        	ld	ra, 24(sp)
80207408: 42 64        	ld	s0, 16(sp)
8020740a: 05 61        	addi	sp, sp, 32
8020740c: 82 80        	ret

000000008020740e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0f76a593c069838eE.llvm.10195949329992049209>:
8020740e: 5d 71        	addi	sp, sp, -80
80207410: 86 e4        	sd	ra, 72(sp)
80207412: a2 e0        	sd	s0, 64(sp)
80207414: 80 08        	addi	s0, sp, 80
80207416: 90 75        	ld	a2, 40(a1)
80207418: 94 71        	ld	a3, 32(a1)
8020741a: 98 6d        	ld	a4, 24(a1)
8020741c: 23 34 c4 fe  	sd	a2, -24(s0)
80207420: 23 30 d4 fe  	sd	a3, -32(s0)
80207424: 23 3c e4 fc  	sd	a4, -40(s0)
80207428: 90 69        	ld	a2, 16(a1)
8020742a: 94 65        	ld	a3, 8(a1)
8020742c: 8c 61        	ld	a1, 0(a1)
8020742e: 08 61        	ld	a0, 0(a0)
80207430: 23 38 c4 fc  	sd	a2, -48(s0)
80207434: 23 34 d4 fc  	sd	a3, -56(s0)
80207438: 23 30 b4 fc  	sd	a1, -64(s0)
8020743c: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080207440 <.Lpcrel_hi0>:
80207440: 17 45 00 00  	auipc	a0, 4
80207444: 93 05 85 75  	addi	a1, a0, 1880
80207448: 13 05 84 fb  	addi	a0, s0, -72
8020744c: 13 06 04 fc  	addi	a2, s0, -64
80207450: 97 20 00 00  	auipc	ra, 2
80207454: e7 80 60 ce  	jalr	-794(ra)
80207458: a6 60        	ld	ra, 72(sp)
8020745a: 06 64        	ld	s0, 64(sp)
8020745c: 61 61        	addi	sp, sp, 80
8020745e: 82 80        	ret

0000000080207460 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209>:
80207460: 41 11        	addi	sp, sp, -16
80207462: 06 e4        	sd	ra, 8(sp)
80207464: 22 e0        	sd	s0, 0(sp)
80207466: 00 08        	addi	s0, sp, 16
80207468: 41 c2        	beqz	a2, 0x802074e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x88>
8020746a: ae 86        	mv	a3, a1
8020746c: 33 87 c5 00  	add	a4, a1, a2
80207470: 13 03 f0 0d  	li	t1, 223
80207474: 13 08 00 0f  	li	a6, 240
80207478: b7 02 11 00  	lui	t0, 272
8020747c: 85 48        	li	a7, 1
8020747e: 01 a8        	j	0x8020748e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x2e>
80207480: 85 06        	addi	a3, a3, 1
;         asm!(
80207482: 81 45        	li	a1, 0
80207484: 01 46        	li	a2, 0
80207486: 73 00 00 00  	ecall	
8020748a: 63 8f e6 04  	beq	a3, a4, 0x802074e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x88>
8020748e: 83 85 06 00  	lb	a1, 0(a3)
80207492: 13 f5 f5 0f  	andi	a0, a1, 255
80207496: e3 d5 05 fe  	bgez	a1, 0x80207480 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x20>
8020749a: 03 c6 16 00  	lbu	a2, 1(a3)
8020749e: 93 75 f5 01  	andi	a1, a0, 31
802074a2: 13 76 f6 03  	andi	a2, a2, 63
802074a6: 63 77 a3 02  	bgeu	t1, a0, 0x802074d4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x74>
802074aa: 83 c7 26 00  	lbu	a5, 2(a3)
802074ae: 1a 06        	slli	a2, a2, 6
802074b0: 93 f7 f7 03  	andi	a5, a5, 63
802074b4: 5d 8e        	or	a2, a2, a5
802074b6: 63 64 05 03  	bltu	a0, a6, 0x802074de <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x7e>
802074ba: 03 c5 36 00  	lbu	a0, 3(a3)
802074be: f6 15        	slli	a1, a1, 61
802074c0: ad 91        	srli	a1, a1, 43
802074c2: 1a 06        	slli	a2, a2, 6
802074c4: 13 75 f5 03  	andi	a0, a0, 63
802074c8: 51 8d        	or	a0, a0, a2
802074ca: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
802074cc: 63 0e 55 00  	beq	a0, t0, 0x802074e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x88>
802074d0: 91 06        	addi	a3, a3, 4
802074d2: 45 bf        	j	0x80207482 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x22>
802074d4: 89 06        	addi	a3, a3, 2
802074d6: 13 95 65 00  	slli	a0, a1, 6
802074da: 51 8d        	or	a0, a0, a2
802074dc: 5d b7        	j	0x80207482 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x22>
802074de: 8d 06        	addi	a3, a3, 3
802074e0: 13 95 c5 00  	slli	a0, a1, 12
802074e4: 51 8d        	or	a0, a0, a2
802074e6: 71 bf        	j	0x80207482 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hfea28b4f2527e71cE.llvm.10195949329992049209+0x22>
802074e8: 01 45        	li	a0, 0
802074ea: a2 60        	ld	ra, 8(sp)
802074ec: 02 64        	ld	s0, 0(sp)
802074ee: 41 01        	addi	sp, sp, 16
802074f0: 82 80        	ret

00000000802074f2 <_ZN6kernel6printf5print17h3eb501969d7c03f9E>:
; pub fn print(args: fmt::Arguments) {
802074f2: 1d 71        	addi	sp, sp, -96
802074f4: 86 ec        	sd	ra, 88(sp)
802074f6: a2 e8        	sd	s0, 80(sp)
802074f8: a6 e4        	sd	s1, 72(sp)
802074fa: 80 10        	addi	s0, sp, 96
802074fc: 0f 00 30 03  	fence	rw, rw

0000000080207500 <.Lpcrel_hi1>:
80207500: 97 45 34 00  	auipc	a1, 836
80207504: 93 85 05 cb  	addi	a1, a1, -848
80207508: 90 61        	ld	a2, 0(a1)
8020750a: aa 84        	mv	s1, a0
8020750c: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80207510: 31 e2        	bnez	a2, 0x80207554 <.Lpcrel_hi2+0x2e>
80207512: 05 45        	li	a0, 1
80207514: 2f b6 05 16  	lr.d.aqrl	a2, (a1)
80207518: 15 ee        	bnez	a2, 0x80207554 <.Lpcrel_hi2+0x2e>
8020751a: af b6 a5 1e  	sc.d.aqrl	a3, a0, (a1)
8020751e: fd fa        	bnez	a3, 0x80207514 <.Lpcrel_hi1+0x14>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80207520: 23 38 b4 fa  	sd	a1, -80(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80207524: 88 e5        	sd	a0, 8(a1)

0000000080207526 <.Lpcrel_hi2>:
80207526: 17 45 00 00  	auipc	a0, 4
8020752a: 13 05 25 ba  	addi	a0, a0, -1118
8020752e: 88 e9        	sd	a0, 16(a1)
80207530: 09 45        	li	a0, 2
80207532: 88 ed        	sd	a0, 24(a1)
80207534: 23 b0 05 02  	sd	zero, 32(a1)
80207538: 23 84 05 02  	sb	zero, 40(a1)
;                 finish.panicked = false;
8020753c: 23 0c 04 fa  	sb	zero, -72(s0)
80207540: 0f 00 10 03  	fence	rw, w
80207544: 88 e1        	sd	a0, 0(a1)
80207546: 13 05 04 fb  	addi	a0, s0, -80
8020754a: 97 10 00 00  	auipc	ra, 1
8020754e: e7 80 e0 2d  	jalr	734(ra)
80207552: 05 a0        	j	0x80207572 <.Lpcrel_hi2+0x4c>
80207554: 05 45        	li	a0, 1
;             match status {
80207556: 63 1b a6 00  	bne	a2, a0, 0x8020756c <.Lpcrel_hi2+0x46>
8020755a: 0f 00 00 01  	fence	w, 0
8020755e: 0f 00 30 03  	fence	rw, rw
80207562: 90 61        	ld	a2, 0(a1)
80207564: 0f 00 30 02  	fence	r, rw
;             match status {
80207568: e3 09 a6 fe  	beq	a2, a0, 0x8020755a <.Lpcrel_hi2+0x34>
8020756c: 09 45        	li	a0, 2
;             match status {
8020756e: 63 1a a6 04  	bne	a2, a0, 0x802075c2 <.Lpcrel_hi7+0x24>
80207572: 88 74        	ld	a0, 40(s1)
80207574: 8c 70        	ld	a1, 32(s1)
80207576: 13 06 04 fe  	addi	a2, s0, -32
;     Stdout.write_fmt(args).unwrap();
8020757a: 23 34 c4 fa  	sd	a2, -88(s0)
8020757e: 23 3c a4 fc  	sd	a0, -40(s0)
80207582: 23 38 b4 fc  	sd	a1, -48(s0)
80207586: 88 6c        	ld	a0, 24(s1)
80207588: 8c 68        	ld	a1, 16(s1)
8020758a: 90 64        	ld	a2, 8(s1)
8020758c: 94 60        	ld	a3, 0(s1)
8020758e: 23 34 a4 fc  	sd	a0, -56(s0)
80207592: 23 30 b4 fc  	sd	a1, -64(s0)
80207596: 23 3c c4 fa  	sd	a2, -72(s0)
8020759a: 23 38 d4 fa  	sd	a3, -80(s0)

000000008020759e <.Lpcrel_hi7>:
8020759e: 17 45 00 00  	auipc	a0, 4
802075a2: 93 05 a5 5f  	addi	a1, a0, 1530
802075a6: 13 05 84 fa  	addi	a0, s0, -88
802075aa: 13 06 04 fb  	addi	a2, s0, -80
802075ae: 97 20 00 00  	auipc	ra, 2
802075b2: e7 80 80 b8  	jalr	-1144(ra)
802075b6: 21 e5        	bnez	a0, 0x802075fe <.Lpcrel_hi8>
; }
802075b8: e6 60        	ld	ra, 88(sp)
802075ba: 46 64        	ld	s0, 80(sp)
802075bc: a6 64        	ld	s1, 72(sp)
802075be: 25 61        	addi	sp, sp, 96
802075c0: 82 80        	ret
;             match status {
802075c2: 05 e2        	bnez	a2, 0x802075e2 <.Lpcrel_hi5>

00000000802075c4 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
802075c4: 17 45 00 00  	auipc	a0, 4
802075c8: 13 05 45 ac  	addi	a0, a0, -1340

00000000802075cc <.Lpcrel_hi4>:
802075cc: 97 45 00 00  	auipc	a1, 4
802075d0: 13 86 45 ae  	addi	a2, a1, -1308
802075d4: 93 05 80 02  	li	a1, 40
802075d8: 97 10 00 00  	auipc	ra, 1
802075dc: e7 80 00 45  	jalr	1104(ra)
802075e0: 00 00        	unimp	

00000000802075e2 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
802075e2: 17 45 00 00  	auipc	a0, 4
802075e6: 13 05 e5 a1  	addi	a0, a0, -1506

00000000802075ea <.Lpcrel_hi6>:
802075ea: 97 45 00 00  	auipc	a1, 4
802075ee: 13 86 65 a8  	addi	a2, a1, -1402
802075f2: c5 45        	li	a1, 17
802075f4: 97 10 00 00  	auipc	ra, 1
802075f8: e7 80 40 43  	jalr	1076(ra)
802075fc: 00 00        	unimp	

00000000802075fe <.Lpcrel_hi8>:
802075fe: 17 45 00 00  	auipc	a0, 4
80207602: 13 05 a5 5c  	addi	a0, a0, 1482

0000000080207606 <.Lpcrel_hi9>:
80207606: 97 45 00 00  	auipc	a1, 4
8020760a: 93 86 25 5f  	addi	a3, a1, 1522

000000008020760e <.Lpcrel_hi10>:
8020760e: 97 45 00 00  	auipc	a1, 4
80207612: 13 87 a5 61  	addi	a4, a1, 1562
80207616: 93 05 b0 02  	li	a1, 43
8020761a: 13 06 04 fe  	addi	a2, s0, -32
8020761e: 97 10 00 00  	auipc	ra, 1
80207622: e7 80 60 47  	jalr	1142(ra)
80207626: 00 00        	unimp	

0000000080207628 <_ZN6kernel4lock8spinlock8Spinlock7acquire17h60dfe057da21b86dE>:
;     pub fn acquire(&mut self) {
80207628: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020762a: 86 ec        	sd	ra, 88(sp)
8020762c: a2 e8        	sd	s0, 80(sp)
8020762e: a6 e4        	sd	s1, 72(sp)
80207630: ca e0        	sd	s2, 64(sp)
80207632: 4e fc        	sd	s3, 56(sp)
80207634: 52 f8        	sd	s4, 48(sp)
80207636: 80 10        	addi	s0, sp, 96
80207638: f3 29 00 10  	csrr	s3, sstatus
8020763c: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
8020763e: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207642: 92 84        	mv	s1, tp
80207644: 2a 89        	mv	s2, a0

0000000080207646 <.Lpcrel_hi11>:
;         self.0.call_once(builder)
80207646: 17 25 14 00  	auipc	a0, 322
8020764a: 13 05 25 83  	addi	a0, a0, -1998
8020764e: 97 b0 ff ff  	auipc	ra, 1048571
80207652: e7 80 20 9b  	jalr	-1614(ra)
80207656: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
8020765a: 63 ff b4 0a  	bgeu	s1, a1, 0x80207718 <.Lpcrel_hi12>
8020765e: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80207662: 33 86 b4 02  	mul	a2, s1, a1
80207666: 2a 96        	add	a2, a2, a0
80207668: 2c 7e        	ld	a1, 120(a2)
8020766a: 13 05 86 07  	addi	a0, a2, 120
8020766e: 91 e5        	bnez	a1, 0x8020767a <.Lpcrel_hi11+0x34>
;         mc.intena = old;
80207670: fa 19        	slli	s3, s3, 62
80207672: 93 d6 f9 03  	srli	a3, s3, 63
80207676: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
8020767a: 85 05        	addi	a1, a1, 1
8020767c: 0c e1        	sd	a1, 0(a0)
8020767e: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80207682: 93 04 89 01  	addi	s1, s2, 24
80207686: 1d c5        	beqz	a0, 0x802076b4 <.Lpcrel_hi13+0x26>
80207688: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020768c: 92 89        	mv	s3, tp

000000008020768e <.Lpcrel_hi13>:
;         self.0.call_once(builder)
8020768e: 17 15 14 00  	auipc	a0, 321
80207692: 13 05 a5 7e  	addi	a0, a0, 2026
80207696: 97 b0 ff ff  	auipc	ra, 1048571
8020769a: e7 80 a0 96  	jalr	-1686(ra)
8020769e: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
802076a2: 63 fc b9 08  	bgeu	s3, a1, 0x8020773a <.Lpcrel_hi14>
802076a6: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
802076aa: b3 85 b9 02  	mul	a1, s3, a1
802076ae: 2e 95        	add	a0, a0, a1
;         if self.holding() {
802076b0: 63 01 aa 0a  	beq	s4, a0, 0x80207752 <.Lpcrel_hi15>
802076b4: 13 f5 c4 ff  	andi	a0, s1, -4
802076b8: 93 05 f0 0f  	li	a1, 255
802076bc: 05 46        	li	a2, 1
802076be: af 26 05 14  	lr.w.aq	a3, (a0)
802076c2: 33 f7 b6 00  	and	a4, a3, a1
802076c6: 01 eb        	bnez	a4, 0x802076d6 <.Lpcrel_hi13+0x48>
802076c8: 33 c7 c6 00  	xor	a4, a3, a2
802076cc: 6d 8f        	and	a4, a4, a1
802076ce: 35 8f        	xor	a4, a4, a3
802076d0: 2f 27 e5 18  	sc.w	a4, a4, (a0)
802076d4: 6d f7        	bnez	a4, 0x802076be <.Lpcrel_hi13+0x30>
802076d6: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
802076da: 69 fd        	bnez	a0, 0x802076b4 <.Lpcrel_hi13+0x26>
802076dc: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802076e0: 92 84        	mv	s1, tp

00000000802076e2 <.Lpcrel_hi18>:
;         self.0.call_once(builder)
802076e2: 17 15 14 00  	auipc	a0, 321
802076e6: 13 05 65 79  	addi	a0, a0, 1942
802076ea: 97 b0 ff ff  	auipc	ra, 1048571
802076ee: e7 80 60 91  	jalr	-1770(ra)
802076f2: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
802076f6: 63 f6 b4 02  	bgeu	s1, a1, 0x80207722 <.Lpcrel_hi19>
802076fa: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
802076fe: b3 85 b4 02  	mul	a1, s1, a1
80207702: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
80207704: 23 38 a9 00  	sd	a0, 16(s2)
;     }
80207708: e6 60        	ld	ra, 88(sp)
8020770a: 46 64        	ld	s0, 80(sp)
8020770c: a6 64        	ld	s1, 72(sp)
8020770e: 06 69        	ld	s2, 64(sp)
80207710: e2 79        	ld	s3, 56(sp)
80207712: 42 7a        	ld	s4, 48(sp)
80207714: 25 61        	addi	sp, sp, 96
80207716: 82 80        	ret

0000000080207718 <.Lpcrel_hi12>:
; 	&mut (CPUS.get_mut()[id])
80207718: 17 45 00 00  	auipc	a0, 4
8020771c: 13 06 05 cc  	addi	a2, a0, -832
80207720: 29 a0        	j	0x8020772a <.Lpcrel_hi19+0x8>

0000000080207722 <.Lpcrel_hi19>:
80207722: 17 45 00 00  	auipc	a0, 4
80207726: 13 06 65 cb  	addi	a2, a0, -842
8020772a: 93 05 00 04  	li	a1, 64
8020772e: 26 85        	mv	a0, s1
80207730: 97 10 00 00  	auipc	ra, 1
80207734: e7 80 40 32  	jalr	804(ra)
80207738: 00 00        	unimp	

000000008020773a <.Lpcrel_hi14>:
; 	&mut (CPUS.get_mut()[id])
8020773a: 17 45 00 00  	auipc	a0, 4
8020773e: 13 06 e5 c9  	addi	a2, a0, -866
80207742: 93 05 00 04  	li	a1, 64
80207746: 4e 85        	mv	a0, s3
80207748: 97 10 00 00  	auipc	ra, 1
8020774c: e7 80 c0 30  	jalr	780(ra)
80207750: 00 00        	unimp	

0000000080207752 <.Lpcrel_hi15>:
80207752: 17 45 00 00  	auipc	a0, 4
80207756: 13 05 65 4f  	addi	a0, a0, 1270
8020775a: 23 30 a4 fa  	sd	a0, -96(s0)
8020775e: 05 45        	li	a0, 1
80207760: 23 34 a4 fa  	sd	a0, -88(s0)
80207764: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207768 <.Lpcrel_hi16>:
80207768: 17 45 00 00  	auipc	a0, 4
8020776c: 13 05 05 46  	addi	a0, a0, 1120
80207770: 23 38 a4 fa  	sd	a0, -80(s0)
80207774: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207778 <.Lpcrel_hi17>:
;             panic!("acquire");
80207778: 17 45 00 00  	auipc	a0, 4
8020777c: 93 05 85 4f  	addi	a1, a0, 1272
80207780: 13 05 04 fa  	addi	a0, s0, -96
80207784: 97 10 00 00  	auipc	ra, 1
80207788: e7 80 60 27  	jalr	630(ra)
8020778c: 00 00        	unimp	

000000008020778e <_ZN6kernel4lock7pop_off17h5d89f8cac4172ee1E>:
; pub fn pop_off() {
8020778e: 1d 71        	addi	sp, sp, -96
80207790: 86 ec        	sd	ra, 88(sp)
80207792: a2 e8        	sd	s0, 80(sp)
80207794: a6 e4        	sd	s1, 72(sp)
80207796: 80 10        	addi	s0, sp, 96
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207798: 92 84        	mv	s1, tp

000000008020779a <.Lpcrel_hi2>:
;         self.0.call_once(builder)
8020779a: 17 15 14 00  	auipc	a0, 321
8020779e: 13 05 e5 6d  	addi	a0, a0, 1758
802077a2: 97 b0 ff ff  	auipc	ra, 1048571
802077a6: e7 80 e0 85  	jalr	-1954(ra)
802077aa: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
802077ae: 63 f3 b4 04  	bgeu	s1, a1, 0x802077f4 <.Lpcrel_hi3>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802077b2: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
802077b6: 89 89        	andi	a1, a1, 2
;     if intr_get() {
802077b8: b1 e9        	bnez	a1, 0x8020780c <.Lpcrel_hi4>
802077ba: 93 05 80 08  	li	a1, 136
;     if mc.noff < 1 {
802077be: b3 85 b4 02  	mul	a1, s1, a1
802077c2: aa 95        	add	a1, a1, a0
802077c4: b0 7d        	ld	a2, 120(a1)
802077c6: 93 85 85 07  	addi	a1, a1, 120
802077ca: 63 59 c0 06  	blez	a2, 0x8020783c <.Lpcrel_hi6+0xa>
;     mc.noff -= 1;
802077ce: 7d 16        	addi	a2, a2, -1
802077d0: 90 e1        	sd	a2, 0(a1)
;     if mc.noff == 0 && mc.intena {
802077d2: 01 ee        	bnez	a2, 0x802077ea <.Lpcrel_hi2+0x50>
802077d4: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 && mc.intena {
802077d8: b3 85 b4 02  	mul	a1, s1, a1
802077dc: 2e 95        	add	a0, a0, a1
802077de: 03 45 05 08  	lbu	a0, 128(a0)
802077e2: 01 c5        	beqz	a0, 0x802077ea <.Lpcrel_hi2+0x50>
802077e4: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802077e6: 73 20 05 10  	csrs	sstatus, a0
; }
802077ea: e6 60        	ld	ra, 88(sp)
802077ec: 46 64        	ld	s0, 80(sp)
802077ee: a6 64        	ld	s1, 72(sp)
802077f0: 25 61        	addi	sp, sp, 96
802077f2: 82 80        	ret

00000000802077f4 <.Lpcrel_hi3>:
; 	&mut (CPUS.get_mut()[id])
802077f4: 17 45 00 00  	auipc	a0, 4
802077f8: 13 06 45 be  	addi	a2, a0, -1052
802077fc: 93 05 00 04  	li	a1, 64
80207800: 26 85        	mv	a0, s1
80207802: 97 10 00 00  	auipc	ra, 1
80207806: e7 80 20 25  	jalr	594(ra)
8020780a: 00 00        	unimp	

000000008020780c <.Lpcrel_hi4>:
8020780c: 17 45 00 00  	auipc	a0, 4
80207810: 13 05 45 4c  	addi	a0, a0, 1220
80207814: 23 34 a4 fa  	sd	a0, -88(s0)
80207818: 05 45        	li	a0, 1
8020781a: 23 38 a4 fa  	sd	a0, -80(s0)
8020781e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080207822 <.Lpcrel_hi5>:
80207822: 17 45 00 00  	auipc	a0, 4
80207826: 13 05 65 49  	addi	a0, a0, 1174
8020782a: 23 3c a4 fa  	sd	a0, -72(s0)
8020782e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207832 <.Lpcrel_hi6>:
;         panic!("pop_off - interruptible");
80207832: 17 45 00 00  	auipc	a0, 4
80207836: 93 05 e5 4b  	addi	a1, a0, 1214
8020783a: 35 a8        	j	0x80207876 <.Lpcrel_hi9+0x8>
;         panic!("pop_off {}", mc.noff);
8020783c: 23 3c b4 fc  	sd	a1, -40(s0)

0000000080207840 <.Lpcrel_hi7>:
80207840: 17 35 00 00  	auipc	a0, 3
80207844: 13 05 65 8d  	addi	a0, a0, -1834
80207848: 23 30 a4 fe  	sd	a0, -32(s0)

000000008020784c <.Lpcrel_hi8>:
8020784c: 17 45 00 00  	auipc	a0, 4
80207850: 13 05 c5 4b  	addi	a0, a0, 1212
80207854: 23 34 a4 fa  	sd	a0, -88(s0)
80207858: 05 45        	li	a0, 1
8020785a: 23 38 a4 fa  	sd	a0, -80(s0)
8020785e: 23 34 04 fc  	sd	zero, -56(s0)
80207862: 93 05 84 fd  	addi	a1, s0, -40
80207866: 23 3c b4 fa  	sd	a1, -72(s0)
8020786a: 23 30 a4 fc  	sd	a0, -64(s0)

000000008020786e <.Lpcrel_hi9>:
;         panic!("pop_off {}", mc.noff);
8020786e: 17 45 00 00  	auipc	a0, 4
80207872: 93 05 a5 4a  	addi	a1, a0, 1194
80207876: 13 05 84 fa  	addi	a0, s0, -88
8020787a: 97 10 00 00  	auipc	ra, 1
8020787e: e7 80 00 18  	jalr	384(ra)
80207882: 00 00        	unimp	

0000000080207884 <_ZN6kernel6memory6kalloc5kinit17h29f2a10b557ae6cbE>:
; pub fn kinit() {
80207884: 75 71        	addi	sp, sp, -144
80207886: 06 e5        	sd	ra, 136(sp)
80207888: 22 e1        	sd	s0, 128(sp)
8020788a: a6 fc        	sd	s1, 120(sp)
8020788c: ca f8        	sd	s2, 112(sp)
8020788e: ce f4        	sd	s3, 104(sp)
80207890: d2 f0        	sd	s4, 96(sp)
80207892: d6 ec        	sd	s5, 88(sp)
80207894: da e8        	sd	s6, 80(sp)
80207896: de e4        	sd	s7, 72(sp)
80207898: e2 e0        	sd	s8, 64(sp)
8020789a: 66 fc        	sd	s9, 56(sp)
8020789c: 6a f8        	sd	s10, 48(sp)
8020789e: 00 09        	addi	s0, sp, 144
802078a0: 0f 00 30 03  	fence	rw, rw

00000000802078a4 <.Lpcrel_hi1>:
802078a4: 17 45 34 00  	auipc	a0, 836
802078a8: 93 0a c5 93  	addi	s5, a0, -1732
802078ac: 03 b5 0a 03  	ld	a0, 48(s5)
802078b0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802078b4: 39 e9        	bnez	a0, 0x8020790a <.Lpcrel_hi2+0x3a>
802078b6: 93 85 0a 03  	addi	a1, s5, 48
802078ba: 05 46        	li	a2, 1
802078bc: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802078c0: 29 e5        	bnez	a0, 0x8020790a <.Lpcrel_hi2+0x3a>
802078c2: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802078c6: fd fa        	bnez	a3, 0x802078bc <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802078c8: 23 38 b4 f6  	sd	a1, -144(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802078cc: 23 b0 ca 00  	sd	a2, 0(s5)

00000000802078d0 <.Lpcrel_hi2>:
802078d0: 17 45 00 00  	auipc	a0, 4
802078d4: 13 05 55 81  	addi	a0, a0, -2027
802078d8: 23 b4 aa 00  	sd	a0, 8(s5)
802078dc: 11 45        	li	a0, 4
802078de: 23 b8 aa 00  	sd	a0, 16(s5)
802078e2: 23 bc 0a 00  	sd	zero, 24(s5)
802078e6: 23 80 0a 02  	sb	zero, 32(s5)
802078ea: 23 b4 0a 02  	sd	zero, 40(s5)
;                 finish.panicked = false;
802078ee: 23 0c 04 f6  	sb	zero, -136(s0)
802078f2: 0f 00 10 03  	fence	rw, w
802078f6: 09 45        	li	a0, 2
802078f8: 23 b8 aa 02  	sd	a0, 48(s5)
802078fc: 13 05 04 f7  	addi	a0, s0, -144
80207900: 97 10 00 00  	auipc	ra, 1
80207904: e7 80 80 f2  	jalr	-216(ra)
80207908: 0d a0        	j	0x8020792a <.Lpcrel_hi7>
8020790a: 85 45        	li	a1, 1
;             match status {
8020790c: 63 1c b5 00  	bne	a0, a1, 0x80207924 <.Lpcrel_hi2+0x54>
80207910: 0f 00 00 01  	fence	w, 0
80207914: 0f 00 30 03  	fence	rw, rw
80207918: 03 b5 0a 03  	ld	a0, 48(s5)
8020791c: 0f 00 30 02  	fence	r, rw
;             match status {
80207920: e3 08 b5 fe  	beq	a0, a1, 0x80207910 <.Lpcrel_hi2+0x40>
80207924: 89 45        	li	a1, 2
;             match status {
80207926: 63 1e b5 10  	bne	a0, a1, 0x80207a42 <.Lpcrel_hi12+0x18>

000000008020792a <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
8020792a: 17 45 34 00  	auipc	a0, 836
8020792e: 13 05 65 6d  	addi	a0, a0, 1750
80207932: 85 65        	lui	a1, 1
80207934: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80207936: aa 95        	add	a1, a1, a0
80207938: 7d 76        	lui	a2, 1048575
8020793a: f1 8d        	and	a1, a1, a2
8020793c: 37 86 08 00  	lui	a2, 136
80207940: 7d 36        	addiw	a2, a2, -1
80207942: 32 06        	slli	a2, a2, 12
80207944: 7d 16        	addi	a2, a2, -1
80207946: 63 6b b6 08  	bltu	a2, a1, 0x802079dc <.Lpcrel_hi16>
8020794a: 63 e8 a5 16  	bltu	a1, a0, 0x80207aba <.Lpcrel_hi9>
8020794e: 05 6b        	lui	s6, 1
80207950: 9b 05 fb ff  	addiw	a1, s6, -1
80207954: 2e 95        	add	a0, a0, a1
80207956: fd 75        	lui	a1, 1048575
80207958: 6d 8d        	and	a0, a0, a1
8020795a: 13 89 8a 00  	addi	s2, s5, 8

000000008020795e <.Lpcrel_hi8>:
8020795e: 97 15 14 00  	auipc	a1, 321
80207962: 93 89 a5 51  	addi	s3, a1, 1306
80207966: 93 0b 00 04  	li	s7, 64
8020796a: 13 0c 80 08  	li	s8, 136
8020796e: b7 fc ff 43  	lui	s9, 278527
80207972: 86 0c        	slli	s9, s9, 1
80207974: 2a 8a        	mv	s4, a0
80207976: 85 45        	li	a1, 1
80207978: 05 66        	lui	a2, 1
8020797a: 97 30 00 00  	auipc	ra, 3
8020797e: e7 80 e0 aa  	jalr	-1362(ra)
;         self.lock.acquire();
80207982: 4a 85        	mv	a0, s2
80207984: 97 00 00 00  	auipc	ra, 0
80207988: e7 80 40 ca  	jalr	-860(ra)
;         unsafe { (*pa).next = self.freelist }
8020798c: 03 b5 8a 02  	ld	a0, 40(s5)
80207990: 23 30 aa 00  	sd	a0, 0(s4)
;         self.freelist = pa;
80207994: 23 b4 4a 03  	sd	s4, 40(s5)
80207998: 03 85 0a 02  	lb	a0, 32(s5)
8020799c: 79 c1        	beqz	a0, 0x80207a62 <.Lpcrel_hi13>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020799e: 03 bd 8a 01  	ld	s10, 24(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802079a2: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
802079a4: 4e 85        	mv	a0, s3
802079a6: 97 a0 ff ff  	auipc	ra, 1048570
802079aa: e7 80 a0 65  	jalr	1626(ra)
802079ae: 63 fe 74 07  	bgeu	s1, s7, 0x80207a2a <.Lpcrel_hi12>
; 	&mut (CPUS.get_mut()[id])
802079b2: b3 85 84 03  	mul	a1, s1, s8
802079b6: 2e 95        	add	a0, a0, a1
802079b8: 63 15 ad 0a  	bne	s10, a0, 0x80207a62 <.Lpcrel_hi13>
;         self.cpu = null_mut();
802079bc: 23 bc 0a 00  	sd	zero, 24(s5)
802079c0: 0f 00 30 03  	fence	rw, rw
802079c4: 0f 00 10 03  	fence	rw, w
802079c8: 23 80 0a 02  	sb	zero, 32(s5)
;         pop_off();
802079cc: 97 00 00 00  	auipc	ra, 0
802079d0: e7 80 20 dc  	jalr	-574(ra)
;             pa += PGSIZE;
802079d4: 33 05 6a 01  	add	a0, s4, s6
;         while pa < pa_end - PGSIZE {
802079d8: e3 6e 9a f9  	bltu	s4, s9, 0x80207974 <.Lpcrel_hi8+0x16>

00000000802079dc <.Lpcrel_hi16>:
802079dc: 17 45 00 00  	auipc	a0, 4
802079e0: 13 05 45 41  	addi	a0, a0, 1044
802079e4: 23 38 a4 f6  	sd	a0, -144(s0)
802079e8: 05 45        	li	a0, 1
802079ea: 23 3c a4 f6  	sd	a0, -136(s0)
802079ee: 23 38 04 f8  	sd	zero, -112(s0)

00000000802079f2 <.Lpcrel_hi17>:
802079f2: 17 45 00 00  	auipc	a0, 4
802079f6: 13 05 e5 3b  	addi	a0, a0, 958
802079fa: 23 30 a4 f8  	sd	a0, -128(s0)
802079fe: 23 34 04 f8  	sd	zero, -120(s0)
;     println!("kinit success!");
80207a02: 13 05 04 f7  	addi	a0, s0, -144
80207a06: 97 00 00 00  	auipc	ra, 0
80207a0a: e7 80 c0 ae  	jalr	-1300(ra)
; }
80207a0e: aa 60        	ld	ra, 136(sp)
80207a10: 0a 64        	ld	s0, 128(sp)
80207a12: e6 74        	ld	s1, 120(sp)
80207a14: 46 79        	ld	s2, 112(sp)
80207a16: a6 79        	ld	s3, 104(sp)
80207a18: 06 7a        	ld	s4, 96(sp)
80207a1a: e6 6a        	ld	s5, 88(sp)
80207a1c: 46 6b        	ld	s6, 80(sp)
80207a1e: a6 6b        	ld	s7, 72(sp)
80207a20: 06 6c        	ld	s8, 64(sp)
80207a22: e2 7c        	ld	s9, 56(sp)
80207a24: 42 7d        	ld	s10, 48(sp)
80207a26: 49 61        	addi	sp, sp, 144
80207a28: 82 80        	ret

0000000080207a2a <.Lpcrel_hi12>:
; 	&mut (CPUS.get_mut()[id])
80207a2a: 17 45 00 00  	auipc	a0, 4
80207a2e: 13 06 e5 9a  	addi	a2, a0, -1618
80207a32: 93 05 00 04  	li	a1, 64
80207a36: 26 85        	mv	a0, s1
80207a38: 97 10 00 00  	auipc	ra, 1
80207a3c: e7 80 c0 01  	jalr	28(ra)
80207a40: 00 00        	unimp	
;             match status {
80207a42: 31 ed        	bnez	a0, 0x80207a9e <.Lpcrel_hi5>

0000000080207a44 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
80207a44: 17 35 00 00  	auipc	a0, 3
80207a48: 13 05 45 64  	addi	a0, a0, 1604

0000000080207a4c <.Lpcrel_hi4>:
80207a4c: 97 35 00 00  	auipc	a1, 3
80207a50: 13 86 45 66  	addi	a2, a1, 1636
80207a54: 93 05 80 02  	li	a1, 40
80207a58: 97 10 00 00  	auipc	ra, 1
80207a5c: e7 80 00 fd  	jalr	-48(ra)
80207a60: 00 00        	unimp	

0000000080207a62 <.Lpcrel_hi13>:
80207a62: 17 45 00 00  	auipc	a0, 4
80207a66: 13 05 e5 22  	addi	a0, a0, 558
80207a6a: 23 38 a4 f6  	sd	a0, -144(s0)
80207a6e: 05 45        	li	a0, 1
80207a70: 23 3c a4 f6  	sd	a0, -136(s0)
80207a74: 23 38 04 f8  	sd	zero, -112(s0)

0000000080207a78 <.Lpcrel_hi14>:
80207a78: 17 45 00 00  	auipc	a0, 4
80207a7c: 13 05 05 15  	addi	a0, a0, 336
80207a80: 23 30 a4 f8  	sd	a0, -128(s0)
80207a84: 23 34 04 f8  	sd	zero, -120(s0)

0000000080207a88 <.Lpcrel_hi15>:
;             panic!("release");
80207a88: 17 45 00 00  	auipc	a0, 4
80207a8c: 93 05 85 21  	addi	a1, a0, 536
80207a90: 13 05 04 f7  	addi	a0, s0, -144
80207a94: 97 10 00 00  	auipc	ra, 1
80207a98: e7 80 60 f6  	jalr	-154(ra)
80207a9c: 00 00        	unimp	

0000000080207a9e <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
80207a9e: 17 35 00 00  	auipc	a0, 3
80207aa2: 13 05 25 56  	addi	a0, a0, 1378

0000000080207aa6 <.Lpcrel_hi6>:
80207aa6: 97 35 00 00  	auipc	a1, 3
80207aaa: 13 86 a5 5c  	addi	a2, a1, 1482
80207aae: c5 45        	li	a1, 17
80207ab0: 97 10 00 00  	auipc	ra, 1
80207ab4: e7 80 80 f7  	jalr	-136(ra)
80207ab8: 00 00        	unimp	

0000000080207aba <.Lpcrel_hi9>:
80207aba: 17 45 00 00  	auipc	a0, 4
80207abe: 13 05 65 2e  	addi	a0, a0, 742
80207ac2: 23 38 a4 f6  	sd	a0, -144(s0)
80207ac6: 05 45        	li	a0, 1
80207ac8: 23 3c a4 f6  	sd	a0, -136(s0)
80207acc: 23 38 04 f8  	sd	zero, -112(s0)

0000000080207ad0 <.Lpcrel_hi10>:
80207ad0: 17 45 00 00  	auipc	a0, 4
80207ad4: 13 05 05 2e  	addi	a0, a0, 736
80207ad8: 23 30 a4 f8  	sd	a0, -128(s0)
80207adc: 23 34 04 f8  	sd	zero, -120(s0)

0000000080207ae0 <.Lpcrel_hi11>:
;             panic!("kfree");
80207ae0: 17 45 00 00  	auipc	a0, 4
80207ae4: 93 05 85 2e  	addi	a1, a0, 744
80207ae8: 13 05 04 f7  	addi	a0, s0, -144
80207aec: 97 10 00 00  	auipc	ra, 1
80207af0: e7 80 e0 f0  	jalr	-242(ra)
80207af4: 00 00        	unimp	

0000000080207af6 <_ZN6kernel6memory6kalloc6kalloc17hce46345e445e36aeE>:
; pub fn kalloc() -> Addr {
80207af6: 1d 71        	addi	sp, sp, -96
80207af8: 86 ec        	sd	ra, 88(sp)
80207afa: a2 e8        	sd	s0, 80(sp)
80207afc: a6 e4        	sd	s1, 72(sp)
80207afe: ca e0        	sd	s2, 64(sp)
80207b00: 4e fc        	sd	s3, 56(sp)
80207b02: 52 f8        	sd	s4, 48(sp)
80207b04: 80 10        	addi	s0, sp, 96
80207b06: 0f 00 30 03  	fence	rw, rw

0000000080207b0a <.Lpcrel_hi18>:
80207b0a: 17 35 34 00  	auipc	a0, 835
80207b0e: 93 04 65 6d  	addi	s1, a0, 1750
80207b12: 88 78        	ld	a0, 48(s1)
80207b14: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80207b18: 39 e5        	bnez	a0, 0x80207b66 <.Lpcrel_hi19+0x34>
80207b1a: 93 85 04 03  	addi	a1, s1, 48
80207b1e: 05 46        	li	a2, 1
80207b20: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80207b24: 29 e1        	bnez	a0, 0x80207b66 <.Lpcrel_hi19+0x34>
80207b26: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80207b2a: fd fa        	bnez	a3, 0x80207b20 <.Lpcrel_hi18+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80207b2c: 23 30 b4 fa  	sd	a1, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80207b30: 90 e0        	sd	a2, 0(s1)

0000000080207b32 <.Lpcrel_hi19>:
80207b32: 17 35 00 00  	auipc	a0, 3
80207b36: 13 05 35 5b  	addi	a0, a0, 1459
80207b3a: 88 e4        	sd	a0, 8(s1)
80207b3c: 11 45        	li	a0, 4
80207b3e: 88 e8        	sd	a0, 16(s1)
80207b40: 23 bc 04 00  	sd	zero, 24(s1)
80207b44: 23 80 04 02  	sb	zero, 32(s1)
80207b48: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80207b4c: 23 04 04 fa  	sb	zero, -88(s0)
80207b50: 0f 00 10 03  	fence	rw, w
80207b54: 09 45        	li	a0, 2
80207b56: 88 f8        	sd	a0, 48(s1)
80207b58: 13 05 04 fa  	addi	a0, s0, -96
80207b5c: 97 10 00 00  	auipc	ra, 1
80207b60: e7 80 c0 cc  	jalr	-820(ra)
80207b64: 05 a0        	j	0x80207b84 <.Lpcrel_hi19+0x52>
80207b66: 85 45        	li	a1, 1
;             match status {
80207b68: 63 1b b5 00  	bne	a0, a1, 0x80207b7e <.Lpcrel_hi19+0x4c>
80207b6c: 0f 00 00 01  	fence	w, 0
80207b70: 0f 00 30 03  	fence	rw, rw
80207b74: 88 78        	ld	a0, 48(s1)
80207b76: 0f 00 30 02  	fence	r, rw
;             match status {
80207b7a: e3 09 b5 fe  	beq	a0, a1, 0x80207b6c <.Lpcrel_hi19+0x3a>
80207b7e: 89 45        	li	a1, 2
;             match status {
80207b80: 63 1c b5 0e  	bne	a0, a1, 0x80207c78 <.Lpcrel_hi30+0x18>
;         self.lock.acquire();
80207b84: 13 85 84 00  	addi	a0, s1, 8
80207b88: 97 00 00 00  	auipc	ra, 0
80207b8c: e7 80 00 aa  	jalr	-1376(ra)
;         r = self.freelist;
80207b90: 03 b9 84 02  	ld	s2, 40(s1)
80207b94: 63 03 09 06  	beqz	s2, 0x80207bfa <.Lpcrel_hi24+0x4e>
;             unsafe { self.freelist = (*r).next }
80207b98: 03 35 09 00  	ld	a0, 0(s2)
80207b9c: 88 f4        	sd	a0, 40(s1)
80207b9e: 03 85 04 02  	lb	a0, 32(s1)
80207ba2: 63 09 05 10  	beqz	a0, 0x80207cb4 <.Lpcrel_hi26>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80207ba6: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207baa: 92 89        	mv	s3, tp

0000000080207bac <.Lpcrel_hi24>:
;         self.0.call_once(builder)
80207bac: 17 15 14 00  	auipc	a0, 321
80207bb0: 13 05 c5 2c  	addi	a0, a0, 716
80207bb4: 97 a0 ff ff  	auipc	ra, 1048570
80207bb8: e7 80 c0 44  	jalr	1100(ra)
80207bbc: 93 05 00 04  	li	a1, 64
80207bc0: 63 fb b9 08  	bgeu	s3, a1, 0x80207c56 <.Lpcrel_hi25>
80207bc4: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80207bc8: b3 85 b9 02  	mul	a1, s3, a1
80207bcc: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80207bce: 63 13 aa 0e  	bne	s4, a0, 0x80207cb4 <.Lpcrel_hi26>
;         self.cpu = null_mut();
80207bd2: 23 bc 04 00  	sd	zero, 24(s1)
80207bd6: 0f 00 30 03  	fence	rw, rw
80207bda: 0f 00 10 03  	fence	rw, w
80207bde: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80207be2: 97 00 00 00  	auipc	ra, 0
80207be6: e7 80 c0 ba  	jalr	-1108(ra)
80207bea: 95 45        	li	a1, 5
80207bec: 05 66        	lui	a2, 1
80207bee: 4a 85        	mv	a0, s2
80207bf0: 97 30 00 00  	auipc	ra, 3
80207bf4: e7 80 80 83  	jalr	-1992(ra)
80207bf8: b1 a0        	j	0x80207c44 <.Lpcrel_hi29+0x3e>
80207bfa: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80207bfe: 7d c1        	beqz	a0, 0x80207ce4 <.Lpcrel_hi31>
80207c00: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207c04: 92 89        	mv	s3, tp

0000000080207c06 <.Lpcrel_hi29>:
;         self.0.call_once(builder)
80207c06: 17 15 14 00  	auipc	a0, 321
80207c0a: 13 05 25 27  	addi	a0, a0, 626
80207c0e: 97 a0 ff ff  	auipc	ra, 1048570
80207c12: e7 80 20 3f  	jalr	1010(ra)
80207c16: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80207c1a: 63 f3 b9 04  	bgeu	s3, a1, 0x80207c60 <.Lpcrel_hi30>
80207c1e: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80207c22: b3 85 b9 02  	mul	a1, s3, a1
80207c26: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80207c28: 63 1e aa 0a  	bne	s4, a0, 0x80207ce4 <.Lpcrel_hi31>
;         self.cpu = null_mut();
80207c2c: 23 bc 04 00  	sd	zero, 24(s1)
80207c30: 0f 00 30 03  	fence	rw, rw
80207c34: 0f 00 10 03  	fence	rw, w
80207c38: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80207c3c: 97 00 00 00  	auipc	ra, 0
80207c40: e7 80 20 b5  	jalr	-1198(ra)
; }
80207c44: 4a 85        	mv	a0, s2
80207c46: e6 60        	ld	ra, 88(sp)
80207c48: 46 64        	ld	s0, 80(sp)
80207c4a: a6 64        	ld	s1, 72(sp)
80207c4c: 06 69        	ld	s2, 64(sp)
80207c4e: e2 79        	ld	s3, 56(sp)
80207c50: 42 7a        	ld	s4, 48(sp)
80207c52: 25 61        	addi	sp, sp, 96
80207c54: 82 80        	ret

0000000080207c56 <.Lpcrel_hi25>:
; 	&mut (CPUS.get_mut()[id])
80207c56: 17 35 00 00  	auipc	a0, 3
80207c5a: 13 06 25 78  	addi	a2, a0, 1922
80207c5e: 29 a0        	j	0x80207c68 <.Lpcrel_hi30+0x8>

0000000080207c60 <.Lpcrel_hi30>:
80207c60: 17 35 00 00  	auipc	a0, 3
80207c64: 13 06 85 77  	addi	a2, a0, 1912
;         self.lock.release();
80207c68: 93 05 00 04  	li	a1, 64
80207c6c: 4e 85        	mv	a0, s3
80207c6e: 97 10 00 00  	auipc	ra, 1
80207c72: e7 80 60 de  	jalr	-538(ra)
80207c76: 00 00        	unimp	
;             match status {
80207c78: 05 e1        	bnez	a0, 0x80207c98 <.Lpcrel_hi22>

0000000080207c7a <.Lpcrel_hi20>:
;                 INCOMPLETE => unreachable!(),
80207c7a: 17 35 00 00  	auipc	a0, 3
80207c7e: 13 05 e5 40  	addi	a0, a0, 1038

0000000080207c82 <.Lpcrel_hi21>:
80207c82: 97 35 00 00  	auipc	a1, 3
80207c86: 13 86 e5 42  	addi	a2, a1, 1070
80207c8a: 93 05 80 02  	li	a1, 40
80207c8e: 97 10 00 00  	auipc	ra, 1
80207c92: e7 80 a0 d9  	jalr	-614(ra)
80207c96: 00 00        	unimp	

0000000080207c98 <.Lpcrel_hi22>:
;                 PANICKED => panic!("Once has panicked"),
80207c98: 17 35 00 00  	auipc	a0, 3
80207c9c: 13 05 85 36  	addi	a0, a0, 872

0000000080207ca0 <.Lpcrel_hi23>:
80207ca0: 97 35 00 00  	auipc	a1, 3
80207ca4: 13 86 05 3d  	addi	a2, a1, 976
80207ca8: c5 45        	li	a1, 17
80207caa: 97 10 00 00  	auipc	ra, 1
80207cae: e7 80 e0 d7  	jalr	-642(ra)
80207cb2: 00 00        	unimp	

0000000080207cb4 <.Lpcrel_hi26>:
80207cb4: 17 45 00 00  	auipc	a0, 4
80207cb8: 13 05 c5 fd  	addi	a0, a0, -36
80207cbc: 23 30 a4 fa  	sd	a0, -96(s0)
80207cc0: 05 45        	li	a0, 1
80207cc2: 23 34 a4 fa  	sd	a0, -88(s0)
80207cc6: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207cca <.Lpcrel_hi27>:
80207cca: 17 45 00 00  	auipc	a0, 4
80207cce: 13 05 e5 ef  	addi	a0, a0, -258
80207cd2: 23 38 a4 fa  	sd	a0, -80(s0)
80207cd6: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207cda <.Lpcrel_hi28>:
;             panic!("release");
80207cda: 17 45 00 00  	auipc	a0, 4
80207cde: 93 05 65 fc  	addi	a1, a0, -58
80207ce2: 05 a8        	j	0x80207d12 <.Lpcrel_hi33+0x8>

0000000080207ce4 <.Lpcrel_hi31>:
80207ce4: 17 45 00 00  	auipc	a0, 4
80207ce8: 13 05 c5 fa  	addi	a0, a0, -84
80207cec: 23 30 a4 fa  	sd	a0, -96(s0)
80207cf0: 05 45        	li	a0, 1
80207cf2: 23 34 a4 fa  	sd	a0, -88(s0)
80207cf6: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207cfa <.Lpcrel_hi32>:
80207cfa: 17 45 00 00  	auipc	a0, 4
80207cfe: 13 05 e5 ec  	addi	a0, a0, -306
80207d02: 23 38 a4 fa  	sd	a0, -80(s0)
80207d06: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207d0a <.Lpcrel_hi33>:
;             panic!("release");
80207d0a: 17 45 00 00  	auipc	a0, 4
80207d0e: 93 05 65 f9  	addi	a1, a0, -106
;         self.lock.release();
80207d12: 13 05 04 fa  	addi	a0, s0, -96
80207d16: 97 10 00 00  	auipc	ra, 1
80207d1a: e7 80 40 ce  	jalr	-796(ra)
80207d1e: 00 00        	unimp	

0000000080207d20 <_ZN6kernel6memory6kalloc5kfree17ha7702d4ed64acff8E>:
; pub fn kfree(pa: Addr) {
80207d20: 1d 71        	addi	sp, sp, -96
80207d22: 86 ec        	sd	ra, 88(sp)
80207d24: a2 e8        	sd	s0, 80(sp)
80207d26: a6 e4        	sd	s1, 72(sp)
80207d28: ca e0        	sd	s2, 64(sp)
80207d2a: 4e fc        	sd	s3, 56(sp)
80207d2c: 52 f8        	sd	s4, 48(sp)
80207d2e: 80 10        	addi	s0, sp, 96
80207d30: 0f 00 30 03  	fence	rw, rw

0000000080207d34 <.Lpcrel_hi34>:
80207d34: 97 35 34 00  	auipc	a1, 835
80207d38: 93 84 c5 4a  	addi	s1, a1, 1196
80207d3c: 8c 78        	ld	a1, 48(s1)
80207d3e: 2a 89        	mv	s2, a0
80207d40: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80207d44: b9 e5        	bnez	a1, 0x80207d92 <.Lpcrel_hi35+0x34>
80207d46: 13 85 04 03  	addi	a0, s1, 48
80207d4a: 05 46        	li	a2, 1
80207d4c: af 35 05 16  	lr.d.aqrl	a1, (a0)
80207d50: a9 e1        	bnez	a1, 0x80207d92 <.Lpcrel_hi35+0x34>
80207d52: af 36 c5 1e  	sc.d.aqrl	a3, a2, (a0)
80207d56: fd fa        	bnez	a3, 0x80207d4c <.Lpcrel_hi34+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80207d58: 23 30 a4 fa  	sd	a0, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80207d5c: 90 e0        	sd	a2, 0(s1)

0000000080207d5e <.Lpcrel_hi35>:
80207d5e: 17 35 00 00  	auipc	a0, 3
80207d62: 13 05 75 38  	addi	a0, a0, 903
80207d66: 88 e4        	sd	a0, 8(s1)
80207d68: 11 45        	li	a0, 4
80207d6a: 88 e8        	sd	a0, 16(s1)
80207d6c: 23 bc 04 00  	sd	zero, 24(s1)
80207d70: 23 80 04 02  	sb	zero, 32(s1)
80207d74: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80207d78: 23 04 04 fa  	sb	zero, -88(s0)
80207d7c: 0f 00 10 03  	fence	rw, w
80207d80: 09 45        	li	a0, 2
80207d82: 88 f8        	sd	a0, 48(s1)
80207d84: 13 05 04 fa  	addi	a0, s0, -96
80207d88: 97 10 00 00  	auipc	ra, 1
80207d8c: e7 80 00 aa  	jalr	-1376(ra)
80207d90: 05 a0        	j	0x80207db0 <.Lpcrel_hi35+0x52>
80207d92: 05 45        	li	a0, 1
;             match status {
80207d94: 63 9b a5 00  	bne	a1, a0, 0x80207daa <.Lpcrel_hi35+0x4c>
80207d98: 0f 00 00 01  	fence	w, 0
80207d9c: 0f 00 30 03  	fence	rw, rw
80207da0: 8c 78        	ld	a1, 48(s1)
80207da2: 0f 00 30 02  	fence	r, rw
;             match status {
80207da6: e3 89 a5 fe  	beq	a1, a0, 0x80207d98 <.Lpcrel_hi35+0x3a>
80207daa: 09 45        	li	a0, 2
;             match status {
80207dac: 63 92 a5 0c  	bne	a1, a0, 0x80207e70 <.Lpcrel_hi45+0x18>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
80207db0: 13 15 49 03  	slli	a0, s2, 52
80207db4: 51 91        	srli	a0, a0, 52
80207db6: 13 35 15 00  	seqz	a0, a0

0000000080207dba <.Lpcrel_hi40>:
80207dba: 97 45 34 00  	auipc	a1, 836
80207dbe: 93 85 65 24  	addi	a1, a1, 582
80207dc2: b3 35 b9 00  	sltu	a1, s2, a1
80207dc6: 93 c5 f5 ff  	not	a1, a1
80207dca: 6d 8d        	and	a0, a0, a1
80207dcc: 93 55 b9 01  	srli	a1, s2, 27
80207dd0: 93 b5 15 01  	sltiu	a1, a1, 17
80207dd4: 6d 8d        	and	a0, a0, a1
80207dd6: 63 02 05 10  	beqz	a0, 0x80207eda <.Lpcrel_hi41>
80207dda: 85 45        	li	a1, 1
80207ddc: 05 66        	lui	a2, 1
80207dde: 85 49        	li	s3, 1
80207de0: 4a 85        	mv	a0, s2
80207de2: 97 20 00 00  	auipc	ra, 2
80207de6: e7 80 60 64  	jalr	1606(ra)
;         self.lock.acquire();
80207dea: 13 85 84 00  	addi	a0, s1, 8
80207dee: 97 00 00 00  	auipc	ra, 0
80207df2: e7 80 a0 83  	jalr	-1990(ra)
;         unsafe { (*pa).next = self.freelist }
80207df6: 88 74        	ld	a0, 40(s1)
80207df8: 23 30 a9 00  	sd	a0, 0(s2)
;         self.freelist = pa;
80207dfc: 23 b4 24 03  	sd	s2, 40(s1)
80207e00: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80207e04: 45 c5        	beqz	a0, 0x80207eac <.Lpcrel_hi46>
80207e06: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207e0a: 12 89        	mv	s2, tp

0000000080207e0c <.Lpcrel_hi44>:
;         self.0.call_once(builder)
80207e0c: 17 15 14 00  	auipc	a0, 321
80207e10: 13 05 c5 06  	addi	a0, a0, 108
80207e14: 97 a0 ff ff  	auipc	ra, 1048570
80207e18: e7 80 c0 1e  	jalr	492(ra)
80207e1c: 93 05 00 04  	li	a1, 64
; 	&mut (CPUS.get_mut()[id])
80207e20: 63 7c b9 02  	bgeu	s2, a1, 0x80207e58 <.Lpcrel_hi45>
80207e24: 93 05 80 08  	li	a1, 136
; 	&mut (CPUS.get_mut()[id])
80207e28: b3 05 b9 02  	mul	a1, s2, a1
80207e2c: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80207e2e: 63 1f aa 06  	bne	s4, a0, 0x80207eac <.Lpcrel_hi46>
;         self.cpu = null_mut();
80207e32: 23 bc 04 00  	sd	zero, 24(s1)
80207e36: 0f 00 30 03  	fence	rw, rw
80207e3a: 0f 00 10 03  	fence	rw, w
80207e3e: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80207e42: e6 60        	ld	ra, 88(sp)
80207e44: 46 64        	ld	s0, 80(sp)
80207e46: a6 64        	ld	s1, 72(sp)
80207e48: 06 69        	ld	s2, 64(sp)
80207e4a: e2 79        	ld	s3, 56(sp)
80207e4c: 42 7a        	ld	s4, 48(sp)
80207e4e: 25 61        	addi	sp, sp, 96
80207e50: 17 03 00 00  	auipc	t1, 0
80207e54: 67 00 e3 93  	jr	-1730(t1)

0000000080207e58 <.Lpcrel_hi45>:
; 	&mut (CPUS.get_mut()[id])
80207e58: 17 35 00 00  	auipc	a0, 3
80207e5c: 13 06 05 58  	addi	a2, a0, 1408
80207e60: 93 05 00 04  	li	a1, 64
80207e64: 4a 85        	mv	a0, s2
80207e66: 97 10 00 00  	auipc	ra, 1
80207e6a: e7 80 e0 be  	jalr	-1042(ra)
80207e6e: 00 00        	unimp	
;             match status {
80207e70: 85 e1        	bnez	a1, 0x80207e90 <.Lpcrel_hi38>

0000000080207e72 <.Lpcrel_hi36>:
;                 INCOMPLETE => unreachable!(),
80207e72: 17 35 00 00  	auipc	a0, 3
80207e76: 13 05 65 21  	addi	a0, a0, 534

0000000080207e7a <.Lpcrel_hi37>:
80207e7a: 97 35 00 00  	auipc	a1, 3
80207e7e: 13 86 65 23  	addi	a2, a1, 566
80207e82: 93 05 80 02  	li	a1, 40
80207e86: 97 10 00 00  	auipc	ra, 1
80207e8a: e7 80 20 ba  	jalr	-1118(ra)
80207e8e: 00 00        	unimp	

0000000080207e90 <.Lpcrel_hi38>:
;                 PANICKED => panic!("Once has panicked"),
80207e90: 17 35 00 00  	auipc	a0, 3
80207e94: 13 05 05 17  	addi	a0, a0, 368

0000000080207e98 <.Lpcrel_hi39>:
80207e98: 97 35 00 00  	auipc	a1, 3
80207e9c: 13 86 85 1d  	addi	a2, a1, 472
80207ea0: c5 45        	li	a1, 17
80207ea2: 97 10 00 00  	auipc	ra, 1
80207ea6: e7 80 60 b8  	jalr	-1146(ra)
80207eaa: 00 00        	unimp	

0000000080207eac <.Lpcrel_hi46>:
80207eac: 17 45 00 00  	auipc	a0, 4
80207eb0: 13 05 45 de  	addi	a0, a0, -540
80207eb4: 23 30 a4 fa  	sd	a0, -96(s0)
80207eb8: 23 34 34 fb  	sd	s3, -88(s0)
80207ebc: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207ec0 <.Lpcrel_hi47>:
80207ec0: 17 45 00 00  	auipc	a0, 4
80207ec4: 13 05 85 d0  	addi	a0, a0, -760
80207ec8: 23 38 a4 fa  	sd	a0, -80(s0)
80207ecc: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207ed0 <.Lpcrel_hi48>:
;             panic!("release");
80207ed0: 17 45 00 00  	auipc	a0, 4
80207ed4: 93 05 05 dd  	addi	a1, a0, -560
80207ed8: 05 a8        	j	0x80207f08 <.Lpcrel_hi43+0x8>

0000000080207eda <.Lpcrel_hi41>:
80207eda: 17 45 00 00  	auipc	a0, 4
80207ede: 13 05 65 ec  	addi	a0, a0, -314
80207ee2: 23 30 a4 fa  	sd	a0, -96(s0)
80207ee6: 05 45        	li	a0, 1
80207ee8: 23 34 a4 fa  	sd	a0, -88(s0)
80207eec: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207ef0 <.Lpcrel_hi42>:
80207ef0: 17 45 00 00  	auipc	a0, 4
80207ef4: 13 05 05 ec  	addi	a0, a0, -320
80207ef8: 23 38 a4 fa  	sd	a0, -80(s0)
80207efc: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080207f00 <.Lpcrel_hi43>:
;             panic!("kfree");
80207f00: 17 45 00 00  	auipc	a0, 4
80207f04: 93 05 85 ec  	addi	a1, a0, -312
80207f08: 13 05 04 fa  	addi	a0, s0, -96
80207f0c: 97 10 00 00  	auipc	ra, 1
80207f10: e7 80 e0 ae  	jalr	-1298(ra)
80207f14: 00 00        	unimp	

0000000080207f16 <main>:
; pub fn main() {
80207f16: 19 71        	addi	sp, sp, -128
80207f18: 86 fc        	sd	ra, 120(sp)
80207f1a: a2 f8        	sd	s0, 112(sp)
80207f1c: a6 f4        	sd	s1, 104(sp)
80207f1e: ca f0        	sd	s2, 96(sp)
80207f20: ce ec        	sd	s3, 88(sp)
80207f22: d2 e8        	sd	s4, 80(sp)
80207f24: d6 e4        	sd	s5, 72(sp)
80207f26: 00 01        	addi	s0, sp, 128

0000000080207f28 <.Lpcrel_hi1>:
80207f28: 17 45 34 00  	auipc	a0, 836
80207f2c: 13 05 85 0d  	addi	a0, a0, 216

0000000080207f30 <.Lpcrel_hi2>:
80207f30: 97 b5 13 00  	auipc	a1, 315
80207f34: 93 85 05 0d  	addi	a1, a1, 208
80207f38: 63 f9 a5 00  	bgeu	a1, a0, 0x80207f4a <.Lpcrel_hi3>
80207f3c: 13 86 15 00  	addi	a2, a1, 1
80207f40: 23 80 05 00  	sb	zero, 0(a1)
80207f44: b2 85        	mv	a1, a2
80207f46: e3 6b a6 fe  	bltu	a2, a0, 0x80207f3c <.Lpcrel_hi2+0xc>

0000000080207f4a <.Lpcrel_hi3>:
;         HEAP_ALLOCATOR
80207f4a: 17 35 34 00  	auipc	a0, 835
80207f4e: 13 05 e5 13  	addi	a0, a0, 318
80207f52: 97 10 00 00  	auipc	ra, 1
80207f56: e7 80 a0 82  	jalr	-2006(ra)
80207f5a: aa 89        	mv	s3, a0
80207f5c: 05 45        	li	a0, 1
80207f5e: af b4 a9 00  	amoadd.d	s1, a0, (s3)
80207f62: 03 b5 89 00  	ld	a0, 8(s3)
80207f66: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80207f6a: 63 0a 95 00  	beq	a0, s1, 0x80207f7e <.Lpcrel_hi3+0x34>
80207f6e: 0f 00 00 01  	fence	w, 0
80207f72: 03 b5 89 00  	ld	a0, 8(s3)
80207f76: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80207f7a: e3 1a 95 fe  	bne	a0, s1, 0x80207f6e <.Lpcrel_hi3+0x24>
80207f7e: 37 25 00 0c  	lui	a0, 49154
80207f82: 1b 09 05 08  	addiw	s2, a0, 128
;             value: unsafe { &mut *self.value.get() },
80207f86: 13 85 09 01  	addi	a0, s3, 16

0000000080207f8a <.Lpcrel_hi4>:
;         HEAP_ALLOCATOR
80207f8a: 97 35 14 00  	auipc	a1, 323
80207f8e: 93 85 e5 0f  	addi	a1, a1, 254
80207f92: 37 06 20 00  	lui	a2, 512
80207f96: 97 00 00 00  	auipc	ra, 0
80207f9a: e7 80 60 35  	jalr	854(ra)
;         let new_ticket = self.ticket + 1;
80207f9e: 85 04        	addi	s1, s1, 1
80207fa0: 0f 00 10 03  	fence	rw, w
80207fa4: 23 b4 99 00  	sd	s1, 8(s3)

0000000080207fa8 <.Lpcrel_hi5>:
80207fa8: 17 a5 0b 00  	auipc	a0, 186
80207fac: 13 05 85 1e  	addi	a0, a0, 488
80207fb0: 93 75 c5 ff  	andi	a1, a0, -4
80207fb4: 0d 89        	andi	a0, a0, 3
80207fb6: 0e 05        	slli	a0, a0, 3
80207fb8: 13 06 f0 0f  	li	a2, 255
80207fbc: 3b 16 a6 00  	sllw	a2, a2, a0
80207fc0: af a6 05 16  	lr.w.aqrl	a3, (a1)
80207fc4: 01 47        	li	a4, 0
80207fc6: 35 8f        	xor	a4, a4, a3
80207fc8: 71 8f        	and	a4, a4, a2
80207fca: 35 8f        	xor	a4, a4, a3
80207fcc: 2f a7 e5 1e  	sc.w.aqrl	a4, a4, (a1)
80207fd0: 65 fb        	bnez	a4, 0x80207fc0 <.Lpcrel_hi5+0x18>
80207fd2: 3b d5 a6 00  	srlw	a0, a3, a0
80207fd6: 13 75 f5 0f  	andi	a0, a0, 255
;     if FIRST.swap(false, Ordering::SeqCst){
80207fda: 79 e1        	bnez	a0, 0x802080a0 <.Lpcrel_hi28+0xa>

0000000080207fdc <.Lpcrel_hi6>:
80207fdc: 17 35 34 00  	auipc	a0, 835
80207fe0: 13 05 c5 23  	addi	a0, a0, 572
80207fe4: 0f 00 30 03  	fence	rw, rw
80207fe8: 83 05 05 00  	lb	a1, 0(a0)
80207fec: 0f 00 30 02  	fence	r, rw
80207ff0: f5 d9        	beqz	a1, 0x80207fe4 <.Lpcrel_hi6+0x8>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207ff2: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80207ff4: 23 30 a4 f8  	sd	a0, -128(s0)
80207ff8: 13 05 04 f8  	addi	a0, s0, -128
80207ffc: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080208000 <.Lpcrel_hi24>:
80208000: 17 25 00 00  	auipc	a0, 2
80208004: 13 05 85 13  	addi	a0, a0, 312
80208008: 23 38 a4 f8  	sd	a0, -112(s0)

000000008020800c <.Lpcrel_hi25>:
8020800c: 17 45 00 00  	auipc	a0, 4
80208010: 13 05 45 e7  	addi	a0, a0, -396
80208014: 23 3c a4 f8  	sd	a0, -104(s0)
80208018: 09 45        	li	a0, 2
8020801a: 23 30 a4 fa  	sd	a0, -96(s0)
8020801e: 23 3c 04 fa  	sd	zero, -72(s0)
80208022: 13 05 84 f8  	addi	a0, s0, -120
80208026: 23 34 a4 fa  	sd	a0, -88(s0)
8020802a: 85 44        	li	s1, 1
8020802c: 23 38 94 fa  	sd	s1, -80(s0)
;         println!("hart {} starting...", cpuid());
80208030: 13 05 84 f9  	addi	a0, s0, -104
80208034: 97 f0 ff ff  	auipc	ra, 1048575
80208038: e7 80 e0 4b  	jalr	1214(ra)
;         kvminithart();
8020803c: 97 e0 ff ff  	auipc	ra, 1048574
80208040: e7 80 20 20  	jalr	514(ra)
;         trapinithart();
80208044: 97 f0 ff ff  	auipc	ra, 1048575
80208048: e7 80 00 e1  	jalr	-496(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020804c: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
8020804e: 93 15 85 00  	slli	a1, a0, 8
80208052: ca 95        	add	a1, a1, s2
80208054: 13 06 20 40  	li	a2, 1026
80208058: 90 c1        	sw	a2, 0(a1)
;     PLIC + 0x201000 + hart * 0x2000
8020805a: 36 05        	slli	a0, a0, 13
8020805c: b7 15 20 0c  	lui	a1, 49665
80208060: 2e 95        	add	a0, a0, a1
80208062: 23 20 05 00  	sw	zero, 0(a0)

0000000080208066 <.Lpcrel_hi26>:
80208066: 17 45 00 00  	auipc	a0, 4
8020806a: 13 05 a5 d0  	addi	a0, a0, -758
8020806e: 23 3c a4 f8  	sd	a0, -104(s0)
80208072: 23 30 94 fa  	sd	s1, -96(s0)
80208076: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020807a <.Lpcrel_hi27>:
8020807a: 17 45 00 00  	auipc	a0, 4
8020807e: 13 05 e5 c3  	addi	a0, a0, -962
80208082: 23 34 a4 fa  	sd	a0, -88(s0)
80208086: 23 38 04 fa  	sd	zero, -80(s0)
;     println!("plicinithart success!");
8020808a: 13 05 84 f9  	addi	a0, s0, -104
8020808e: 97 f0 ff ff  	auipc	ra, 1048575
80208092: e7 80 40 46  	jalr	1124(ra)

0000000080208096 <.Lpcrel_hi28>:
80208096: 17 35 34 00  	auipc	a0, 835
8020809a: 13 05 35 18  	addi	a0, a0, 387
8020809e: 0d a4        	j	0x802082c0 <.Lpcrel_hi23+0x8>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802080a0: 12 85        	mv	a0, tp
;     x
802080a2: 23 30 a4 f8  	sd	a0, -128(s0)
802080a6: 13 05 04 f8  	addi	a0, s0, -128
;         println!("tp: {}", r_tp());
802080aa: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802080ae <.Lpcrel_hi7>:
802080ae: 17 25 00 00  	auipc	a0, 2
802080b2: 13 05 a5 08  	addi	a0, a0, 138
802080b6: 23 38 a4 f8  	sd	a0, -112(s0)

00000000802080ba <.Lpcrel_hi8>:
802080ba: 17 45 00 00  	auipc	a0, 4
802080be: 13 05 e5 d4  	addi	a0, a0, -690
802080c2: 23 3c a4 f8  	sd	a0, -104(s0)
802080c6: 89 49        	li	s3, 2
802080c8: 23 30 34 fb  	sd	s3, -96(s0)
802080cc: 23 3c 04 fa  	sd	zero, -72(s0)
802080d0: 13 0a 84 f8  	addi	s4, s0, -120
802080d4: 23 34 44 fb  	sd	s4, -88(s0)
802080d8: 85 4a        	li	s5, 1
802080da: 23 38 54 fb  	sd	s5, -80(s0)
;         println!("tp: {}", r_tp());
802080de: 13 05 84 f9  	addi	a0, s0, -104
802080e2: 97 f0 ff ff  	auipc	ra, 1048575
802080e6: e7 80 00 41  	jalr	1040(ra)

00000000802080ea <.Lpcrel_hi9>:
;     println!("{}", LOGO);
802080ea: 17 35 00 00  	auipc	a0, 3
802080ee: 13 05 e5 29  	addi	a0, a0, 670
802080f2: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802080f6 <.Lpcrel_hi10>:
802080f6: 17 e5 ff ff  	auipc	a0, 1048574
802080fa: 13 05 c5 2e  	addi	a0, a0, 748
802080fe: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080208102 <.Lpcrel_hi11>:
80208102: 17 35 00 00  	auipc	a0, 3
80208106: 13 05 e5 29  	addi	a0, a0, 670
8020810a: 23 3c a4 f8  	sd	a0, -104(s0)
8020810e: 23 30 34 fb  	sd	s3, -96(s0)
80208112: 23 3c 04 fa  	sd	zero, -72(s0)
80208116: 23 34 44 fb  	sd	s4, -88(s0)
8020811a: 23 38 54 fb  	sd	s5, -80(s0)
;     println!("{}", LOGO);
8020811e: 13 05 84 f9  	addi	a0, s0, -104
80208122: 97 f0 ff ff  	auipc	ra, 1048575
80208126: e7 80 00 3d  	jalr	976(ra)

000000008020812a <.Lpcrel_hi12>:
8020812a: 17 45 00 00  	auipc	a0, 4
8020812e: 13 05 e5 d1  	addi	a0, a0, -738
80208132: 23 3c a4 f8  	sd	a0, -104(s0)
80208136: 23 30 54 fb  	sd	s5, -96(s0)
8020813a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020813e <.Lpcrel_hi13>:
8020813e: 17 45 00 00  	auipc	a0, 4
80208142: 93 04 25 cc  	addi	s1, a0, -830
80208146: 23 34 94 fa  	sd	s1, -88(s0)
8020814a: 23 38 04 fa  	sd	zero, -80(s0)
;         println!("xv6-rust kernel is booting...");
8020814e: 13 05 84 f9  	addi	a0, s0, -104
80208152: 97 f0 ff ff  	auipc	ra, 1048575
80208156: e7 80 00 3a  	jalr	928(ra)

000000008020815a <.Lpcrel_hi14>:
8020815a: 17 45 00 00  	auipc	a0, 4
8020815e: 13 05 e5 cf  	addi	a0, a0, -770
80208162: 23 3c a4 f8  	sd	a0, -104(s0)
80208166: 23 30 54 fb  	sd	s5, -96(s0)
8020816a: 23 3c 04 fa  	sd	zero, -72(s0)
8020816e: 23 34 94 fa  	sd	s1, -88(s0)
80208172: 23 38 04 fa  	sd	zero, -80(s0)
;         println!("");
80208176: 13 05 84 f9  	addi	a0, s0, -104
8020817a: 97 f0 ff ff  	auipc	ra, 1048575
8020817e: e7 80 80 37  	jalr	888(ra)
;         kinit(); 			// 初始化物理页分配器
80208182: 97 f0 ff ff  	auipc	ra, 1048575
80208186: e7 80 20 70  	jalr	1794(ra)
;         kvminit(); 			// 创建内核页表
8020818a: 97 e0 ff ff  	auipc	ra, 1048574
8020818e: e7 80 c0 99  	jalr	-1636(ra)
;         kvminithart(); 		// 打开分页管理
80208192: 97 e0 ff ff  	auipc	ra, 1048574
80208196: e7 80 c0 0a  	jalr	172(ra)

000000008020819a <.Lpcrel_hi15>:
;         self.0.call_once(builder)
8020819a: 17 b5 13 00  	auipc	a0, 315
8020819e: 13 05 e5 e9  	addi	a0, a0, -354
802081a2: 97 a0 ff ff  	auipc	ra, 1048570
802081a6: e7 80 00 4e  	jalr	1248(ra)
802081aa: 13 05 05 13  	addi	a0, a0, 304
802081ae: 93 05 00 04  	li	a1, 64
802081b2: 37 06 00 02  	lui	a2, 8192
802081b6: 5d 36        	addiw	a2, a2, -9
802081b8: 36 06        	slli	a2, a2, 13
802081ba: bd 76        	lui	a3, 1048559
;         proc[i].kstack = kstack(i);
802081bc: 10 e1        	sd	a2, 0(a0)
802081be: 13 05 85 17  	addi	a0, a0, 376
802081c2: fd 15        	addi	a1, a1, -1
802081c4: 36 96        	add	a2, a2, a3
802081c6: fd f9        	bnez	a1, 0x802081bc <.Lpcrel_hi15+0x22>

00000000802081c8 <.Lpcrel_hi16>:
802081c8: 17 35 00 00  	auipc	a0, 3
802081cc: 13 05 05 f4  	addi	a0, a0, -192
802081d0: 23 3c a4 f8  	sd	a0, -104(s0)
802081d4: 85 49        	li	s3, 1
802081d6: 23 30 34 fb  	sd	s3, -96(s0)
802081da: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802081de <.Lpcrel_hi17>:
802081de: 17 35 00 00  	auipc	a0, 3
802081e2: 13 05 a5 f3  	addi	a0, a0, -198
802081e6: 23 34 a4 fa  	sd	a0, -88(s0)
802081ea: 23 38 04 fa  	sd	zero, -80(s0)
;     println!("procinit success!");
802081ee: 13 05 84 f9  	addi	a0, s0, -104
802081f2: 97 f0 ff ff  	auipc	ra, 1048575
802081f6: e7 80 00 30  	jalr	768(ra)

00000000802081fa <.Lpcrel_hi18>:
802081fa: 17 35 00 00  	auipc	a0, 3
802081fe: 13 05 e5 76  	addi	a0, a0, 1902
80208202: 23 3c a4 f8  	sd	a0, -104(s0)
80208206: 23 30 34 fb  	sd	s3, -96(s0)
8020820a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020820e <.Lpcrel_hi19>:
8020820e: 17 35 00 00  	auipc	a0, 3
80208212: 13 05 25 5d  	addi	a0, a0, 1490
80208216: 23 34 a4 fa  	sd	a0, -88(s0)
8020821a: 23 38 04 fa  	sd	zero, -80(s0)
;     println!("trapinit success!");
8020821e: 13 05 84 f9  	addi	a0, s0, -104
80208222: 97 f0 ff ff  	auipc	ra, 1048575
80208226: e7 80 00 2d  	jalr	720(ra)
;         trapinithart(); 	// 设置中断向量
8020822a: 97 f0 ff ff  	auipc	ra, 1048575
8020822e: e7 80 a0 c2  	jalr	-982(ra)
80208232: 37 05 00 0c  	lui	a0, 49152
80208236: 23 24 35 03  	sw	s3, 40(a0)
8020823a: 23 22 35 01  	sw	s3, 4(a0)

000000008020823e <.Lpcrel_hi20>:
8020823e: 17 45 00 00  	auipc	a0, 4
80208242: 13 05 a5 b0  	addi	a0, a0, -1270
80208246: 23 3c a4 f8  	sd	a0, -104(s0)
8020824a: 23 30 34 fb  	sd	s3, -96(s0)
8020824e: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080208252 <.Lpcrel_hi21>:
80208252: 17 45 00 00  	auipc	a0, 4
80208256: 93 04 65 a6  	addi	s1, a0, -1434
8020825a: 23 34 94 fa  	sd	s1, -88(s0)
8020825e: 23 38 04 fa  	sd	zero, -80(s0)
;     println!("plicinit success!");
80208262: 13 05 84 f9  	addi	a0, s0, -104
80208266: 97 f0 ff ff  	auipc	ra, 1048575
8020826a: e7 80 c0 28  	jalr	652(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020826e: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80208270: 93 15 85 00  	slli	a1, a0, 8
80208274: ca 95        	add	a1, a1, s2
80208276: 13 06 20 40  	li	a2, 1026
8020827a: 90 c1        	sw	a2, 0(a1)
;     PLIC + 0x201000 + hart * 0x2000
8020827c: 36 05        	slli	a0, a0, 13
8020827e: b7 15 20 0c  	lui	a1, 49665
80208282: 2e 95        	add	a0, a0, a1
80208284: 23 20 05 00  	sw	zero, 0(a0)

0000000080208288 <.Lpcrel_hi22>:
80208288: 17 45 00 00  	auipc	a0, 4
8020828c: 13 05 85 ae  	addi	a0, a0, -1304
80208290: 23 3c a4 f8  	sd	a0, -104(s0)
80208294: 23 30 34 fb  	sd	s3, -96(s0)
80208298: 23 3c 04 fa  	sd	zero, -72(s0)
8020829c: 23 34 94 fa  	sd	s1, -88(s0)
802082a0: 23 38 04 fa  	sd	zero, -80(s0)
;     println!("plicinithart success!");
802082a4: 13 05 84 f9  	addi	a0, s0, -104
802082a8: 97 f0 ff ff  	auipc	ra, 1048575
802082ac: e7 80 a0 24  	jalr	586(ra)
;         userinit(); 		// 初始化第 0 个进程
802082b0: 97 b0 ff ff  	auipc	ra, 1048571
802082b4: e7 80 a0 c6  	jalr	-918(ra)

00000000802082b8 <.Lpcrel_hi23>:
802082b8: 17 35 34 00  	auipc	a0, 835
802082bc: 13 05 05 f6  	addi	a0, a0, -160
802082c0: 0f 00 10 03  	fence	rw, w
802082c4: 85 45        	li	a1, 1
802082c6: 23 00 b5 00  	sb	a1, 0(a0)
;     scheduler();
802082ca: 97 b0 ff ff  	auipc	ra, 1048571
802082ce: e7 80 c0 f0  	jalr	-244(ra)
;     panic!("Shutdown!");
802082d2: 00 00        	unimp	

00000000802082d4 <__rust_alloc>:
802082d4: 17 e3 ff ff  	auipc	t1, 1048574
802082d8: 67 00 03 6c  	jr	1728(t1)

00000000802082dc <__rust_dealloc>:
802082dc: 17 e3 ff ff  	auipc	t1, 1048574
802082e0: 67 00 c3 6d  	jr	1756(t1)

00000000802082e4 <__rust_alloc_error_handler>:
802082e4: 17 e3 ff ff  	auipc	t1, 1048574
802082e8: 67 00 63 75  	jr	1878(t1)

00000000802082ec <_ZN22buddy_system_allocator4Heap4init17h4df384204bea4151E>:
;     pub unsafe fn init(&mut self, start: usize, size: usize) {
802082ec: 41 11        	addi	sp, sp, -16
;         self.add_to_heap(start, start + size);
802082ee: 06 e4        	sd	ra, 8(sp)
802082f0: 22 e0        	sd	s0, 0(sp)
802082f2: 00 08        	addi	s0, sp, 16
802082f4: 2e 96        	add	a2, a2, a1
;         start = (start + size_of::<usize>() - 1) & (!size_of::<usize>() + 1);
802082f6: 9d 05        	addi	a1, a1, 7
802082f8: 93 f7 85 ff  	andi	a5, a1, -8
;         end = end & (!size_of::<usize>() + 1);
802082fc: 93 7f 86 ff  	andi	t6, a2, -8
;         assert!(start <= end);
80208300: 63 e9 ff 10  	bltu	t6, a5, 0x80208412 <.Lpcrel_hi15>
80208304: 01 47        	li	a4, 0
;         while current_start + size_of::<usize>() <= end {
80208306: 93 85 87 00  	addi	a1, a5, 8
8020830a: 63 ef bf 0c  	bltu	t6, a1, 0x802083e8 <.Lpcrel_hi10+0xae>
8020830e: 05 48        	li	a6, 1

0000000080208310 <.Lpcrel_hi9>:
80208310: 97 a5 0b 00  	auipc	a1, 186
80208314: 83 b8 05 ed  	ld	a7, -304(a1)

0000000080208318 <.Lpcrel_hi11>:
80208318: 97 a5 0b 00  	auipc	a1, 186
8020831c: 83 b2 85 ea  	ld	t0, -344(a1)

0000000080208320 <.Lpcrel_hi12>:
80208320: 97 a5 0b 00  	auipc	a1, 186
80208324: 03 bf 85 ea  	ld	t5, -344(a1)

0000000080208328 <.Lpcrel_hi13>:
80208328: 97 a5 0b 00  	auipc	a1, 186
8020832c: 03 b3 85 ea  	ld	t1, -344(a1)

0000000080208330 <.Lpcrel_hi14>:
80208330: 97 a5 0b 00  	auipc	a1, 186
80208334: 83 b3 85 ea  	ld	t2, -344(a1)
80208338: 7d 4e        	li	t3, 31

000000008020833a <.Lpcrel_hi10>:
8020833a: 97 45 00 00  	auipc	a1, 4
8020833e: 93 8e 65 ba  	addi	t4, a1, -1114
;             let size = min(lowbit, prev_power_of_two(end - current_start));
80208342: b3 85 ff 40  	sub	a1, t6, a5
80208346: a9 c9        	beqz	a1, 0x80208398 <.Lpcrel_hi10+0x5e>
80208348: 93 d6 15 00  	srli	a3, a1, 1
8020834c: d5 8d        	or	a1, a1, a3
8020834e: 93 d6 25 00  	srli	a3, a1, 2
80208352: d5 8d        	or	a1, a1, a3
80208354: 93 d6 45 00  	srli	a3, a1, 4
80208358: d5 8d        	or	a1, a1, a3
8020835a: 93 d6 85 00  	srli	a3, a1, 8
8020835e: d5 8d        	or	a1, a1, a3
80208360: 93 d6 05 01  	srli	a3, a1, 16
80208364: d5 8d        	or	a1, a1, a3
80208366: 93 d6 05 02  	srli	a3, a1, 32
8020836a: d5 8d        	or	a1, a1, a3
8020836c: 93 c5 f5 ff  	not	a1, a1
80208370: 93 d6 15 00  	srli	a3, a1, 1
80208374: b3 f6 56 00  	and	a3, a3, t0
80208378: 95 8d        	sub	a1, a1, a3
8020837a: b3 f6 e5 01  	and	a3, a1, t5
8020837e: 89 81        	srli	a1, a1, 2
80208380: b3 f5 e5 01  	and	a1, a1, t5
80208384: b6 95        	add	a1, a1, a3
80208386: 93 d6 45 00  	srli	a3, a1, 4
8020838a: b6 95        	add	a1, a1, a3
8020838c: b3 f5 65 00  	and	a1, a1, t1
80208390: b3 86 75 02  	mul	a3, a1, t2
80208394: e1 92        	srli	a3, a3, 56
80208396: 19 a0        	j	0x8020839c <.Lpcrel_hi10+0x62>
80208398: 93 06 00 04  	li	a3, 64
8020839c: b3 05 f0 40  	neg	a1, a5
802083a0: fd 8d        	and	a1, a1, a5
;     1 << (8 * (size_of::<usize>()) - num.leading_zeros() as usize - 1)
802083a2: 93 c6 f6 ff  	not	a3, a3
802083a6: b3 16 d8 00  	sll	a3, a6, a3
802083aa: 63 e3 d5 00  	bltu	a1, a3, 0x802083b0 <.Lpcrel_hi10+0x76>
802083ae: b6 85        	mv	a1, a3
802083b0: 89 cd        	beqz	a1, 0x802083ca <.Lpcrel_hi10+0x90>
802083b2: b3 06 b0 40  	neg	a3, a1
802083b6: ed 8e        	and	a3, a3, a1
802083b8: b3 86 16 03  	mul	a3, a3, a7
802083bc: e9 92        	srli	a3, a3, 58
802083be: f6 96        	add	a3, a3, t4
802083c0: 83 c6 06 00  	lbu	a3, 0(a3)
802083c4: 63 77 de 00  	bgeu	t3, a3, 0x802083d2 <.Lpcrel_hi10+0x98>
802083c8: 0d a8        	j	0x802083fa <.Lpcrel_hi17>
802083ca: 93 06 00 04  	li	a3, 64
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
802083ce: 63 66 de 02  	bltu	t3, a3, 0x802083fa <.Lpcrel_hi17>
802083d2: 8e 06        	slli	a3, a3, 3
802083d4: aa 96        	add	a3, a3, a0
;         *item = self.head as usize;
802083d6: 90 62        	ld	a2, 0(a3)
802083d8: 90 e3        	sd	a2, 0(a5)
;         self.head = item;
802083da: 9c e2        	sd	a5, 0(a3)
;             current_start += size;
802083dc: ae 97        	add	a5, a5, a1
;         while current_start + size_of::<usize>() <= end {
802083de: 13 86 87 00  	addi	a2, a5, 8
;             total += size;
802083e2: 2e 97        	add	a4, a4, a1
;         while current_start + size_of::<usize>() <= end {
802083e4: e3 ff cf f4  	bgeu	t6, a2, 0x80208342 <.Lpcrel_hi10+0x8>
;         self.total += total;
802083e8: 83 35 05 11  	ld	a1, 272(a0)
802083ec: ba 95        	add	a1, a1, a4
802083ee: 23 38 b5 10  	sd	a1, 272(a0)
;     }
802083f2: a2 60        	ld	ra, 8(sp)
802083f4: 02 64        	ld	s0, 0(sp)
802083f6: 41 01        	addi	sp, sp, 16
802083f8: 82 80        	ret

00000000802083fa <.Lpcrel_hi17>:
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
802083fa: 17 45 00 00  	auipc	a0, 4
802083fe: 13 06 e5 c4  	addi	a2, a0, -946
80208402: 93 05 00 02  	li	a1, 32
80208406: 36 85        	mv	a0, a3
80208408: 97 00 00 00  	auipc	ra, 0
8020840c: e7 80 c0 64  	jalr	1612(ra)
80208410: 00 00        	unimp	

0000000080208412 <.Lpcrel_hi15>:
;         assert!(start <= end);
80208412: 17 45 00 00  	auipc	a0, 4
80208416: 13 05 e5 b8  	addi	a0, a0, -1138

000000008020841a <.Lpcrel_hi16>:
8020841a: 97 45 00 00  	auipc	a1, 4
8020841e: 13 86 65 c1  	addi	a2, a1, -1002
80208422: f9 45        	li	a1, 30
80208424: 97 00 00 00  	auipc	ra, 0
80208428: e7 80 40 60  	jalr	1540(ra)
8020842c: 00 00        	unimp	

000000008020842e <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E>:
;     pub fn alloc(&mut self, layout: Layout) -> Result<NonNull<u8>, ()> {
8020842e: 41 11        	addi	sp, sp, -16
80208430: 06 e4        	sd	ra, 8(sp)
80208432: 22 e0        	sd	s0, 0(sp)
80208434: 00 08        	addi	s0, sp, 16
80208436: 09 47        	li	a4, 2
80208438: 85 46        	li	a3, 1
8020843a: 63 78 e6 0c  	bgeu	a2, a4, 0x8020850a <.Lpcrel_hi23+0xaa>
8020843e: 63 f4 b6 14  	bgeu	a3, a1, 0x80208586 <.Lpcrel_hi21+0x22>
80208442: a1 46        	li	a3, 8
80208444: 63 f5 b6 14  	bgeu	a3, a1, 0x8020858e <.Lpcrel_hi21+0x2a>
80208448: 63 86 05 14  	beqz	a1, 0x80208594 <.Lpcrel_hi21+0x30>

000000008020844c <.Lpcrel_hi22>:
8020844c: 97 a6 0b 00  	auipc	a3, 186
80208450: 83 b6 c6 db  	ld	a3, -580(a3)
80208454: 33 07 b0 40  	neg	a4, a1
80208458: 6d 8f        	and	a4, a4, a1
8020845a: b3 06 d7 02  	mul	a3, a4, a3
8020845e: e9 92        	srli	a3, a3, 58

0000000080208460 <.Lpcrel_hi23>:
80208460: 17 47 00 00  	auipc	a4, 4
80208464: 13 07 07 ac  	addi	a4, a4, -1344
80208468: ba 96        	add	a3, a3, a4
8020846a: 83 c8 06 00  	lbu	a7, 0(a3)
8020846e: 93 06 00 02  	li	a3, 32
80208472: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
80208474: 63 e4 16 01  	bltu	a3, a7, 0x8020847c <.Lpcrel_hi23+0x1c>
80208478: 93 02 00 02  	li	t0, 32
;         for i in class..self.free_list.len() {
8020847c: 13 98 38 00  	slli	a6, a7, 3
80208480: 2a 98        	add	a6, a6, a0
80208482: 93 07 08 ff  	addi	a5, a6, -16
80208486: 46 87        	mv	a4, a7
80208488: 63 8b e2 06  	beq	t0, a4, 0x802084fe <.Lpcrel_hi23+0x9e>
;         self.head.is_null()
8020848c: 83 be 07 01  	ld	t4, 16(a5)
80208490: 05 07        	addi	a4, a4, 1
;             if !self.free_list[i].is_empty() {
80208492: a1 07        	addi	a5, a5, 8
80208494: e3 8a 0e fe  	beqz	t4, 0x80208488 <.Lpcrel_hi23+0x28>
80208498: 93 06 f7 ff  	addi	a3, a4, -1
8020849c: 63 fc d8 02  	bgeu	a7, a3, 0x802084d4 <.Lpcrel_hi23+0x74>
802084a0: 93 82 18 00  	addi	t0, a7, 1
802084a4: 7d 43        	li	t1, 31
802084a6: 85 43        	li	t2, 1
;                 self.head = unsafe { *item as *mut usize };
802084a8: 83 b6 0e 00  	ld	a3, 0(t4)
;                             self.free_list[j - 1]
802084ac: 13 0e e7 ff  	addi	t3, a4, -2
;                 self.head = unsafe { *item as *mut usize };
802084b0: 94 e7        	sd	a3, 8(a5)
;                             self.free_list[j - 1]
802084b2: 63 69 c3 0f  	bltu	t1, t3, 0x802085a4 <.Lpcrel_hi24>
;         *item = self.head as usize;
802084b6: 03 bf 07 00  	ld	t5, 0(a5)
802084ba: 7d 17        	addi	a4, a4, -1
;                                 .push((block as usize + (1 << (j - 1))) as *mut usize);
802084bc: b3 96 c3 01  	sll	a3, t2, t3
802084c0: f6 96        	add	a3, a3, t4
;         *item = self.head as usize;
802084c2: 23 b0 e6 01  	sd	t5, 0(a3)
802084c6: 23 b0 de 00  	sd	a3, 0(t4)
;         self.head = item;
802084ca: 23 b0 d7 01  	sd	t4, 0(a5)
802084ce: e1 17        	addi	a5, a5, -8
802084d0: e3 ec e2 fc  	bltu	t0, a4, 0x802084a8 <.Lpcrel_hi23+0x48>
802084d4: 93 06 00 02  	li	a3, 32
;                     self.free_list[class]
802084d8: 63 f2 d8 0e  	bgeu	a7, a3, 0x802085bc <.Lpcrel_hi25>
;         self.head.is_null()
802084dc: 83 36 08 00  	ld	a3, 0(a6)
;         match self.is_empty() {
802084e0: f5 ca        	beqz	a3, 0x802085d4 <.Lpcrel_hi26>
;                 self.head = unsafe { *item as *mut usize };
802084e2: 98 62        	ld	a4, 0(a3)
802084e4: 23 30 e8 00  	sd	a4, 0(a6)
;                     self.user += layout.size();
802084e8: 03 37 05 10  	ld	a4, 256(a0)
;                     self.allocated += size;
802084ec: 83 37 85 10  	ld	a5, 264(a0)
;                     self.user += layout.size();
802084f0: 3a 96        	add	a2, a2, a4
802084f2: 23 30 c5 10  	sd	a2, 256(a0)
;                     self.allocated += size;
802084f6: be 95        	add	a1, a1, a5
802084f8: 23 34 b5 10  	sd	a1, 264(a0)
802084fc: 11 a0        	j	0x80208500 <.Lpcrel_hi23+0xa0>
802084fe: 81 46        	li	a3, 0
;     }
80208500: 36 85        	mv	a0, a3
80208502: a2 60        	ld	ra, 8(sp)
80208504: 02 64        	ld	s0, 0(sp)
80208506: 41 01        	addi	sp, sp, 16
80208508: 82 80        	ret
8020850a: 93 06 f6 ff  	addi	a3, a2, -1
8020850e: 13 d7 16 00  	srli	a4, a3, 1
80208512: d9 8e        	or	a3, a3, a4
80208514: 13 d7 26 00  	srli	a4, a3, 2
80208518: d9 8e        	or	a3, a3, a4
8020851a: 13 d7 46 00  	srli	a4, a3, 4
8020851e: d9 8e        	or	a3, a3, a4
80208520: 13 d7 86 00  	srli	a4, a3, 8
80208524: d9 8e        	or	a3, a3, a4
80208526: 13 d7 06 01  	srli	a4, a3, 16
8020852a: d9 8e        	or	a3, a3, a4
8020852c: 13 d7 06 02  	srli	a4, a3, 32
80208530: d9 8e        	or	a3, a3, a4
80208532: 13 c8 f6 ff  	not	a6, a3

0000000080208536 <.Lpcrel_hi18>:
80208536: 17 a7 0b 00  	auipc	a4, 186
8020853a: 03 37 27 cb  	ld	a4, -846(a4)

000000008020853e <.Lpcrel_hi19>:
8020853e: 97 a7 0b 00  	auipc	a5, 186
80208542: 83 b7 27 cb  	ld	a5, -846(a5)
80208546: 93 56 18 00  	srli	a3, a6, 1
8020854a: f9 8e        	and	a3, a3, a4
8020854c: b3 06 d8 40  	sub	a3, a6, a3
80208550: 33 f7 f6 00  	and	a4, a3, a5
80208554: 89 82        	srli	a3, a3, 2
80208556: fd 8e        	and	a3, a3, a5
80208558: 33 08 d7 00  	add	a6, a4, a3

000000008020855c <.Lpcrel_hi20>:
8020855c: 17 a7 0b 00  	auipc	a4, 186
80208560: 03 37 c7 c9  	ld	a4, -868(a4)

0000000080208564 <.Lpcrel_hi21>:
80208564: 97 a7 0b 00  	auipc	a5, 186
80208568: 83 b7 c7 c9  	ld	a5, -868(a5)
8020856c: 93 56 48 00  	srli	a3, a6, 4
80208570: c2 96        	add	a3, a3, a6
80208572: f9 8e        	and	a3, a3, a4
80208574: b3 86 f6 02  	mul	a3, a3, a5
80208578: e1 92        	srli	a3, a3, 56
8020857a: 7d 57        	li	a4, -1
8020857c: b3 56 d7 00  	srl	a3, a4, a3
80208580: 85 06        	addi	a3, a3, 1
80208582: e3 e0 b6 ec  	bltu	a3, a1, 0x80208442 <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x14>
80208586: b6 85        	mv	a1, a3
80208588: a1 46        	li	a3, 8
8020858a: e3 ef b6 ea  	bltu	a3, a1, 0x80208448 <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x1a>
8020858e: a1 45        	li	a1, 8
80208590: e3 9e 05 ea  	bnez	a1, 0x8020844c <.Lpcrel_hi22>
80208594: 93 08 00 04  	li	a7, 64
80208598: 93 06 00 02  	li	a3, 32
8020859c: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
8020859e: e3 fd 16 ed  	bgeu	a3, a7, 0x80208478 <.Lpcrel_hi23+0x18>
802085a2: e9 bd        	j	0x8020847c <.Lpcrel_hi23+0x1c>

00000000802085a4 <.Lpcrel_hi24>:
;                             self.free_list[j - 1]
802085a4: 17 45 00 00  	auipc	a0, 4
802085a8: 13 06 45 ae  	addi	a2, a0, -1308
802085ac: 7d 55        	li	a0, -1
802085ae: 93 05 00 02  	li	a1, 32
802085b2: 97 00 00 00  	auipc	ra, 0
802085b6: e7 80 20 4a  	jalr	1186(ra)
802085ba: 00 00        	unimp	

00000000802085bc <.Lpcrel_hi25>:
;                     self.free_list[class]
802085bc: 17 45 00 00  	auipc	a0, 4
802085c0: 13 06 45 ae  	addi	a2, a0, -1308
802085c4: 93 05 00 02  	li	a1, 32
802085c8: 46 85        	mv	a0, a7
802085ca: 97 00 00 00  	auipc	ra, 0
802085ce: e7 80 a0 48  	jalr	1162(ra)
802085d2: 00 00        	unimp	

00000000802085d4 <.Lpcrel_hi26>:
802085d4: 17 45 00 00  	auipc	a0, 4
802085d8: 13 05 c5 a8  	addi	a0, a0, -1396

00000000802085dc <.Lpcrel_hi27>:
802085dc: 97 45 00 00  	auipc	a1, 4
802085e0: 13 86 c5 ad  	addi	a2, a1, -1316
802085e4: 93 05 80 02  	li	a1, 40
802085e8: 97 00 00 00  	auipc	ra, 0
802085ec: e7 80 00 3d  	jalr	976(ra)
802085f0: 00 00        	unimp	

00000000802085f2 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
802085f2: 41 11        	addi	sp, sp, -16
802085f4: 06 e4        	sd	ra, 8(sp)
802085f6: 22 e0        	sd	s0, 0(sp)
802085f8: 00 08        	addi	s0, sp, 16
802085fa: 89 47        	li	a5, 2
802085fc: 05 47        	li	a4, 1
802085fe: 63 fa f6 0a  	bgeu	a3, a5, 0x802086b2 <.Lpcrel_hi33+0x8e>
80208602: 63 78 c7 12  	bgeu	a4, a2, 0x80208732 <.Lpcrel_hi31+0x24>
80208606: 21 47        	li	a4, 8
80208608: 63 79 c7 12  	bgeu	a4, a2, 0x8020873a <.Lpcrel_hi31+0x2c>
8020860c: 63 0a 06 12  	beqz	a2, 0x80208740 <.Lpcrel_hi31+0x32>

0000000080208610 <.Lpcrel_hi32>:
80208610: 17 a7 0b 00  	auipc	a4, 186
80208614: 03 37 07 c2  	ld	a4, -992(a4)
80208618: b3 07 c0 40  	neg	a5, a2
8020861c: f1 8f        	and	a5, a5, a2
8020861e: 33 87 e7 02  	mul	a4, a5, a4
80208622: 69 93        	srli	a4, a4, 58

0000000080208624 <.Lpcrel_hi33>:
80208624: 97 47 00 00  	auipc	a5, 4
80208628: 93 87 c7 93  	addi	a5, a5, -1732
8020862c: 3e 97        	add	a4, a4, a5
8020862e: 03 43 07 00  	lbu	t1, 0(a4)
80208632: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80208634: 63 6b 68 10  	bltu	a6, t1, 0x8020874a <.Lpcrel_hi34>
80208638: 13 17 33 00  	slli	a4, t1, 3
8020863c: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
8020863e: 1c 63        	ld	a5, 0(a4)
80208640: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80208642: 0c e3        	sd	a1, 0(a4)
80208644: 85 48        	li	a7, 1
80208646: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80208648: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
8020864c: 93 13 33 00  	slli	t2, t1, 3
80208650: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80208652: 33 ce e2 00  	xor	t3, t0, a4
80208656: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
80208658: 9d cd        	beqz	a1, 0x80208696 <.Lpcrel_hi33+0x72>
8020865a: ae 87        	mv	a5, a1
8020865c: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
8020865e: 8c 61        	ld	a1, 0(a1)
80208660: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80208662: e3 1b fe fe  	bne	t3, a5, 0x80208658 <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
80208666: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
8020866a: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
8020866e: 81 c5        	beqz	a1, 0x80208676 <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
80208670: 8c 61        	ld	a1, 0(a1)
80208672: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80208676: 63 06 03 0f  	beq	t1, a6, 0x80208762 <.Lpcrel_hi35>
8020867a: 63 e3 c2 01  	bltu	t0, t3, 0x80208680 <.Lpcrel_hi33+0x5c>
8020867e: f2 82        	mv	t0, t3
80208680: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80208682: 93 15 33 00  	slli	a1, t1, 3
80208686: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
80208688: 98 61        	ld	a4, 0(a1)
8020868a: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
8020868e: 23 b0 55 00  	sd	t0, 0(a1)
80208692: 96 85        	mv	a1, t0
80208694: 55 bf        	j	0x80208648 <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
80208696: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
8020869a: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
8020869e: 95 8d        	sub	a1, a1, a3
802086a0: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
802086a4: 11 8f        	sub	a4, a4, a2
802086a6: 23 34 e5 10  	sd	a4, 264(a0)
;     }
802086aa: a2 60        	ld	ra, 8(sp)
802086ac: 02 64        	ld	s0, 0(sp)
802086ae: 41 01        	addi	sp, sp, 16
802086b0: 82 80        	ret
802086b2: 13 87 f6 ff  	addi	a4, a3, -1
802086b6: 93 57 17 00  	srli	a5, a4, 1
802086ba: 5d 8f        	or	a4, a4, a5
802086bc: 93 57 27 00  	srli	a5, a4, 2
802086c0: 5d 8f        	or	a4, a4, a5
802086c2: 93 57 47 00  	srli	a5, a4, 4
802086c6: 5d 8f        	or	a4, a4, a5
802086c8: 93 57 87 00  	srli	a5, a4, 8
802086cc: 5d 8f        	or	a4, a4, a5
802086ce: 93 57 07 01  	srli	a5, a4, 16
802086d2: 5d 8f        	or	a4, a4, a5
802086d4: 93 57 07 02  	srli	a5, a4, 32
802086d8: 5d 8f        	or	a4, a4, a5
802086da: 93 48 f7 ff  	not	a7, a4

00000000802086de <.Lpcrel_hi28>:
802086de: 97 a7 0b 00  	auipc	a5, 186
802086e2: 03 b8 27 b3  	ld	a6, -1230(a5)

00000000802086e6 <.Lpcrel_hi29>:
802086e6: 97 a7 0b 00  	auipc	a5, 186
802086ea: 83 b7 27 b3  	ld	a5, -1230(a5)
802086ee: 13 d7 18 00  	srli	a4, a7, 1
802086f2: 33 77 07 01  	and	a4, a4, a6
802086f6: 33 87 e8 40  	sub	a4, a7, a4
802086fa: 33 78 f7 00  	and	a6, a4, a5
802086fe: 09 83        	srli	a4, a4, 2
80208700: 7d 8f        	and	a4, a4, a5
80208702: b3 08 e8 00  	add	a7, a6, a4

0000000080208706 <.Lpcrel_hi30>:
80208706: 97 a7 0b 00  	auipc	a5, 186
8020870a: 03 b8 a7 b1  	ld	a6, -1254(a5)

000000008020870e <.Lpcrel_hi31>:
8020870e: 97 a7 0b 00  	auipc	a5, 186
80208712: 83 b7 a7 b1  	ld	a5, -1254(a5)
80208716: 13 d7 48 00  	srli	a4, a7, 4
8020871a: 46 97        	add	a4, a4, a7
8020871c: 33 77 07 01  	and	a4, a4, a6
80208720: 33 07 f7 02  	mul	a4, a4, a5
80208724: 61 93        	srli	a4, a4, 56
80208726: fd 57        	li	a5, -1
80208728: 33 d7 e7 00  	srl	a4, a5, a4
8020872c: 05 07        	addi	a4, a4, 1
8020872e: e3 6c c7 ec  	bltu	a4, a2, 0x80208606 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
80208732: 3a 86        	mv	a2, a4
80208734: 21 47        	li	a4, 8
80208736: e3 6b c7 ec  	bltu	a4, a2, 0x8020860c <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
8020873a: 21 46        	li	a2, 8
8020873c: e3 1a 06 ec  	bnez	a2, 0x80208610 <.Lpcrel_hi32>
80208740: 13 03 00 04  	li	t1, 64
80208744: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80208746: e3 79 68 ee  	bgeu	a6, t1, 0x80208638 <.Lpcrel_hi33+0x14>

000000008020874a <.Lpcrel_hi34>:
8020874a: 17 45 00 00  	auipc	a0, 4
8020874e: 13 06 65 98  	addi	a2, a0, -1658
80208752: 93 05 00 02  	li	a1, 32
80208756: 1a 85        	mv	a0, t1
80208758: 97 00 00 00  	auipc	ra, 0
8020875c: e7 80 c0 2f  	jalr	764(ra)
80208760: 00 00        	unimp	

0000000080208762 <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80208762: 17 45 00 00  	auipc	a0, 4
80208766: 13 06 65 98  	addi	a2, a0, -1658
8020876a: 13 05 00 02  	li	a0, 32
8020876e: 93 05 00 02  	li	a1, 32
80208772: 97 00 00 00  	auipc	ra, 0
80208776: e7 80 20 2e  	jalr	738(ra)
8020877a: 00 00        	unimp	

000000008020877c <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4bd999852049e66aE>:
;     fn deref(&self) -> &Mutex<Heap> {
8020877c: 41 11        	addi	sp, sp, -16
;     }
8020877e: 06 e4        	sd	ra, 8(sp)
80208780: 22 e0        	sd	s0, 0(sp)
80208782: 00 08        	addi	s0, sp, 16
80208784: a2 60        	ld	ra, 8(sp)
80208786: 02 64        	ld	s0, 0(sp)
80208788: 41 01        	addi	sp, sp, 16
8020878a: 82 80        	ret

000000008020878c <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E>:
;     unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
8020878c: 01 11        	addi	sp, sp, -32
8020878e: 06 ec        	sd	ra, 24(sp)
80208790: 22 e8        	sd	s0, 16(sp)
80208792: 26 e4        	sd	s1, 8(sp)
80208794: 4a e0        	sd	s2, 0(sp)
80208796: 00 10        	addi	s0, sp, 32
80208798: aa 84        	mv	s1, a0
8020879a: 05 45        	li	a0, 1
8020879c: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
802087a0: 88 64        	ld	a0, 8(s1)
802087a2: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802087a6: 63 09 25 01  	beq	a0, s2, 0x802087b8 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x2c>
802087aa: 0f 00 00 01  	fence	w, 0
802087ae: 88 64        	ld	a0, 8(s1)
802087b0: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802087b4: e3 1b 25 ff  	bne	a0, s2, 0x802087aa <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
802087b8: 13 85 04 01  	addi	a0, s1, 16
;         self.0
802087bc: 97 00 00 00  	auipc	ra, 0
802087c0: e7 80 20 c7  	jalr	-910(ra)
;         let new_ticket = self.ticket + 1;
802087c4: 05 09        	addi	s2, s2, 1
802087c6: 0f 00 10 03  	fence	rw, w
802087ca: 23 b4 24 01  	sd	s2, 8(s1)
;     }
802087ce: e2 60        	ld	ra, 24(sp)
802087d0: 42 64        	ld	s0, 16(sp)
802087d2: a2 64        	ld	s1, 8(sp)
802087d4: 02 69        	ld	s2, 0(sp)
802087d6: 05 61        	addi	sp, sp, 32
802087d8: 82 80        	ret

00000000802087da <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
802087da: 01 11        	addi	sp, sp, -32
802087dc: 06 ec        	sd	ra, 24(sp)
802087de: 22 e8        	sd	s0, 16(sp)
802087e0: 26 e4        	sd	s1, 8(sp)
802087e2: 4a e0        	sd	s2, 0(sp)
802087e4: 00 10        	addi	s0, sp, 32
802087e6: aa 84        	mv	s1, a0
802087e8: 05 45        	li	a0, 1
802087ea: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
802087ee: 88 64        	ld	a0, 8(s1)
802087f0: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802087f4: 63 09 25 01  	beq	a0, s2, 0x80208806 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
802087f8: 0f 00 00 01  	fence	w, 0
802087fc: 88 64        	ld	a0, 8(s1)
802087fe: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80208802: e3 1b 25 ff  	bne	a0, s2, 0x802087f8 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80208806: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
8020880a: 97 00 00 00  	auipc	ra, 0
8020880e: e7 80 80 de  	jalr	-536(ra)
;         let new_ticket = self.ticket + 1;
80208812: 05 09        	addi	s2, s2, 1
80208814: 0f 00 10 03  	fence	rw, w
80208818: 23 b4 24 01  	sd	s2, 8(s1)
;     }
8020881c: e2 60        	ld	ra, 24(sp)
8020881e: 42 64        	ld	s0, 16(sp)
80208820: a2 64        	ld	s1, 8(sp)
80208822: 02 69        	ld	s2, 0(sp)
80208824: 05 61        	addi	sp, sp, 32
80208826: 82 80        	ret

0000000080208828 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80208828: 41 11        	addi	sp, sp, -16
8020882a: 06 e4        	sd	ra, 8(sp)
8020882c: 22 e0        	sd	s0, 0(sp)
8020882e: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80208830: 83 45 85 00  	lbu	a1, 8(a0)
80208834: 91 c5        	beqz	a1, 0x80208840 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80208836: 08 61        	ld	a0, 0(a0)
80208838: 0f 00 10 03  	fence	rw, w
8020883c: 8d 45        	li	a1, 3
8020883e: 0c e1        	sd	a1, 0(a0)
;     }
80208840: a2 60        	ld	ra, 8(sp)
80208842: 02 64        	ld	s0, 0(sp)
80208844: 41 01        	addi	sp, sp, 16
80208846: 82 80        	ret

0000000080208848 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1aba37ed57c996bbE>:
80208848: 41 11        	addi	sp, sp, -16
8020884a: 06 e4        	sd	ra, 8(sp)
8020884c: 22 e0        	sd	s0, 0(sp)
8020884e: 00 08        	addi	s0, sp, 16
80208850: 08 61        	ld	a0, 0(a0)
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80208852: 03 45 05 00  	lbu	a0, 0(a0)
80208856: 0e 05        	slli	a0, a0, 3

0000000080208858 <.Lpcrel_hi0>:
80208858: 17 46 00 00  	auipc	a2, 4
8020885c: 13 06 06 ab  	addi	a2, a2, -1360
80208860: 2a 96        	add	a2, a2, a0
80208862: 10 62        	ld	a2, 0(a2)

0000000080208864 <.Lpcrel_hi1>:
80208864: 97 46 00 00  	auipc	a3, 4
80208868: 93 86 46 af  	addi	a3, a3, -1292
8020886c: 36 95        	add	a0, a0, a3
8020886e: 14 61        	ld	a3, 0(a0)
80208870: 2e 85        	mv	a0, a1
80208872: b6 85        	mv	a1, a3
80208874: a2 60        	ld	ra, 8(sp)
80208876: 02 64        	ld	s0, 0(sp)
80208878: 41 01        	addi	sp, sp, 16
8020887a: 17 13 00 00  	auipc	t1, 1
8020887e: 67 00 83 ee  	jr	-280(t1)

0000000080208882 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h20bfd13caf95e4cdE>:
80208882: 41 11        	addi	sp, sp, -16
80208884: 06 e4        	sd	ra, 8(sp)
80208886: 22 e0        	sd	s0, 0(sp)
80208888: 00 08        	addi	s0, sp, 16
8020888a: 08 61        	ld	a0, 0(a0)
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
8020888c: 03 45 05 00  	lbu	a0, 0(a0)
80208890: 0e 05        	slli	a0, a0, 3

0000000080208892 <.Lpcrel_hi2>:
80208892: 17 46 00 00  	auipc	a2, 4
80208896: 13 06 66 b1  	addi	a2, a2, -1258
8020889a: 2a 96        	add	a2, a2, a0
8020889c: 10 62        	ld	a2, 0(a2)

000000008020889e <.Lpcrel_hi3>:
8020889e: 97 46 00 00  	auipc	a3, 4
802088a2: 93 86 26 b9  	addi	a3, a3, -1134
802088a6: 36 95        	add	a0, a0, a3
802088a8: 14 61        	ld	a3, 0(a0)
802088aa: 2e 85        	mv	a0, a1
802088ac: b6 85        	mv	a1, a3
802088ae: a2 60        	ld	ra, 8(sp)
802088b0: 02 64        	ld	s0, 0(sp)
802088b2: 41 01        	addi	sp, sp, 16
802088b4: 17 13 00 00  	auipc	t1, 1
802088b8: 67 00 e3 ea  	jr	-338(t1)

00000000802088bc <_ZN4core3ptr59drop_in_place$LT$$RF$riscv..register..scause..Exception$GT$17h0143e70a43f370b6E>:
802088bc: 41 11        	addi	sp, sp, -16
802088be: 06 e4        	sd	ra, 8(sp)
802088c0: 22 e0        	sd	s0, 0(sp)
802088c2: 00 08        	addi	s0, sp, 16
802088c4: a2 60        	ld	ra, 8(sp)
802088c6: 02 64        	ld	s0, 0(sp)
802088c8: 41 01        	addi	sp, sp, 16
802088ca: 82 80        	ret

00000000802088cc <_ZN5riscv8register6scause9Interrupt4from17hb4a2a31a356a6e29E>:
;     pub fn from(nr: usize) -> Self {
802088cc: 29 46        	li	a2, 10
802088ce: a5 45        	li	a1, 9
;         match nr {
802088d0: 63 60 a6 02  	bltu	a2, a0, 0x802088f0 <.Lpcrel_hi4+0x14>
802088d4: 41 11        	addi	sp, sp, -16
802088d6: 06 e4        	sd	ra, 8(sp)
802088d8: 22 e0        	sd	s0, 0(sp)
802088da: 00 08        	addi	s0, sp, 16

00000000802088dc <.Lpcrel_hi4>:
802088dc: 97 45 00 00  	auipc	a1, 4
802088e0: 93 85 85 a0  	addi	a1, a1, -1528
802088e4: 2e 95        	add	a0, a0, a1
802088e6: 83 45 05 00  	lbu	a1, 0(a0)
802088ea: a2 60        	ld	ra, 8(sp)
802088ec: 02 64        	ld	s0, 0(sp)
802088ee: 41 01        	addi	sp, sp, 16
;     }
802088f0: 2e 85        	mv	a0, a1
802088f2: 82 80        	ret

00000000802088f4 <_ZN5riscv8register6scause9Exception4from17h4f4ebf1fe495c9e6E>:
;     pub fn from(nr: usize) -> Self {
802088f4: 5d 46        	li	a2, 23
802088f6: c1 45        	li	a1, 16
;         match nr {
802088f8: 63 60 a6 02  	bltu	a2, a0, 0x80208918 <.Lpcrel_hi5+0x14>
802088fc: 41 11        	addi	sp, sp, -16
802088fe: 06 e4        	sd	ra, 8(sp)
80208900: 22 e0        	sd	s0, 0(sp)
80208902: 00 08        	addi	s0, sp, 16

0000000080208904 <.Lpcrel_hi5>:
80208904: 97 45 00 00  	auipc	a1, 4
80208908: 93 85 b5 9e  	addi	a1, a1, -1557
8020890c: 2e 95        	add	a0, a0, a1
8020890e: 83 45 05 00  	lbu	a1, 0(a0)
80208912: a2 60        	ld	ra, 8(sp)
80208914: 02 64        	ld	s0, 0(sp)
80208916: 41 01        	addi	sp, sp, 16
;     }
80208918: 2e 85        	mv	a0, a1
8020891a: 82 80        	ret

000000008020891c <_ZN5riscv8register6scause6Scause4code17he96b2c79b1a80876E>:
;     pub fn code(&self) -> usize {
8020891c: 41 11        	addi	sp, sp, -16
8020891e: 06 e4        	sd	ra, 8(sp)
80208920: 22 e0        	sd	s0, 0(sp)
80208922: 00 08        	addi	s0, sp, 16
;         self.bits & !bit
80208924: 08 61        	ld	a0, 0(a0)
80208926: 06 05        	slli	a0, a0, 1
80208928: 05 81        	srli	a0, a0, 1
;     }
8020892a: a2 60        	ld	ra, 8(sp)
8020892c: 02 64        	ld	s0, 0(sp)
8020892e: 41 01        	addi	sp, sp, 16
80208930: 82 80        	ret

0000000080208932 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17h89da4940fa9357a2E>:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80208932: 01 11        	addi	sp, sp, -32
80208934: 06 ec        	sd	ra, 24(sp)
80208936: 22 e8        	sd	s0, 16(sp)
80208938: 00 10        	addi	s0, sp, 32
8020893a: 2a 86        	mv	a2, a0
8020893c: 83 46 05 00  	lbu	a3, 0(a0)
80208940: 2e 85        	mv	a0, a1
80208942: 05 06        	addi	a2, a2, 1
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80208944: 81 ce        	beqz	a3, 0x8020895c <.Lpcrel_hi9+0xa>
;     Exception(Exception),
80208946: 23 34 c4 fe  	sd	a2, -24(s0)

000000008020894a <.Lpcrel_hi8>:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
8020894a: 97 35 00 00  	auipc	a1, 3
8020894e: 93 85 65 7b  	addi	a1, a1, 1974

0000000080208952 <.Lpcrel_hi9>:
80208952: 17 36 00 00  	auipc	a2, 3
80208956: 13 07 e6 7b  	addi	a4, a2, 1982
8020895a: 19 a8        	j	0x80208970 <.Lpcrel_hi7+0x8>
;     Interrupt(Interrupt),
8020895c: 23 34 c4 fe  	sd	a2, -24(s0)

0000000080208960 <.Lpcrel_hi6>:
; #[derive(Copy, Clone, Debug, Eq, PartialEq)]
80208960: 97 35 00 00  	auipc	a1, 3
80208964: 93 85 05 7d  	addi	a1, a1, 2000

0000000080208968 <.Lpcrel_hi7>:
80208968: 17 36 00 00  	auipc	a2, 3
8020896c: 13 07 86 7d  	addi	a4, a2, 2008
80208970: 25 46        	li	a2, 9
80208972: 93 06 84 fe  	addi	a3, s0, -24
80208976: 97 10 00 00  	auipc	ra, 1
8020897a: e7 80 40 df  	jalr	-524(ra)
8020897e: e2 60        	ld	ra, 24(sp)
80208980: 42 64        	ld	s0, 16(sp)
80208982: 05 61        	addi	sp, sp, 32
80208984: 82 80        	ret

0000000080208986 <_ZN5alloc5alloc18handle_alloc_error17hfc18f66702a5f8beE>:
80208986: 41 11        	addi	sp, sp, -16
80208988: 06 e4        	sd	ra, 8(sp)
8020898a: 97 00 00 00  	auipc	ra, 0
8020898e: e7 80 a0 00  	jalr	10(ra)
80208992: 00 00        	unimp	

0000000080208994 <_ZN5alloc5alloc18handle_alloc_error8rt_error17h220cf34c5c4409f6E>:
80208994: 41 11        	addi	sp, sp, -16
80208996: 06 e4        	sd	ra, 8(sp)
80208998: 2a 86        	mv	a2, a0
8020899a: 2e 85        	mv	a0, a1
8020899c: b2 85        	mv	a1, a2
8020899e: 97 00 00 00  	auipc	ra, 0
802089a2: e7 80 60 94  	jalr	-1722(ra)
802089a6: 00 00        	unimp	

00000000802089a8 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
802089a8: 08 61        	ld	a0, 0(a0)
802089aa: 01 a0        	j	0x802089aa <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

00000000802089ac <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
802089ac: 82 80        	ret

00000000802089ae <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
802089ae: 17 a5 0b 00  	auipc	a0, 186
802089b2: 03 35 25 9c  	ld	a0, -1598(a0)
802089b6: 82 80        	ret

00000000802089b8 <_ZN4core6option13expect_failed17h1f14a99d25145af5E>:
802089b8: 1d 71        	addi	sp, sp, -96
802089ba: 86 ec        	sd	ra, 88(sp)
802089bc: 2a e4        	sd	a0, 8(sp)
802089be: 2e e8        	sd	a1, 16(sp)
802089c0: 28 00        	addi	a0, sp, 8
802089c2: aa e4        	sd	a0, 72(sp)

00000000802089c4 <.Lpcrel_hi452>:
802089c4: 17 25 00 00  	auipc	a0, 2
802089c8: 13 05 25 8e  	addi	a0, a0, -1822
802089cc: aa e8        	sd	a0, 80(sp)

00000000802089ce <.Lpcrel_hi453>:
802089ce: 17 45 00 00  	auipc	a0, 4
802089d2: 13 05 25 ba  	addi	a0, a0, -1118
802089d6: 2a ec        	sd	a0, 24(sp)
802089d8: 05 45        	li	a0, 1
802089da: 2a f0        	sd	a0, 32(sp)
802089dc: 02 fc        	sd	zero, 56(sp)
802089de: ac 00        	addi	a1, sp, 72
802089e0: 2e f4        	sd	a1, 40(sp)
802089e2: 2a f8        	sd	a0, 48(sp)
802089e4: 28 08        	addi	a0, sp, 24
802089e6: b2 85        	mv	a1, a2
802089e8: 97 00 00 00  	auipc	ra, 0
802089ec: e7 80 20 01  	jalr	18(ra)
802089f0: 00 00        	unimp	

00000000802089f2 <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
802089f2: 08 6d        	ld	a0, 24(a0)
802089f4: 82 80        	ret

00000000802089f6 <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
802089f6: 08 69        	ld	a0, 16(a0)
802089f8: 82 80        	ret

00000000802089fa <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
802089fa: 79 71        	addi	sp, sp, -48
802089fc: 06 f4        	sd	ra, 40(sp)

00000000802089fe <.Lpcrel_hi466>:
802089fe: 17 46 00 00  	auipc	a2, 4
80208a02: 13 06 a6 b3  	addi	a2, a2, -1222
80208a06: 32 e0        	sd	a2, 0(sp)

0000000080208a08 <.Lpcrel_hi467>:
80208a08: 17 46 00 00  	auipc	a2, 4
80208a0c: 13 06 86 b7  	addi	a2, a2, -1160
80208a10: 32 e4        	sd	a2, 8(sp)
80208a12: 2a ec        	sd	a0, 24(sp)
80208a14: 2e e8        	sd	a1, 16(sp)
80208a16: 05 45        	li	a0, 1
80208a18: 23 00 a1 02  	sb	a0, 32(sp)
80208a1c: 0a 85        	mv	a0, sp
80208a1e: 97 e0 ff ff  	auipc	ra, 1048574
80208a22: e7 80 40 d4  	jalr	-700(ra)
80208a26: 00 00        	unimp	

0000000080208a28 <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
80208a28: 5d 71        	addi	sp, sp, -80
80208a2a: 86 e4        	sd	ra, 72(sp)
80208a2c: 2a fc        	sd	a0, 56(sp)
80208a2e: ae e0        	sd	a1, 64(sp)
80208a30: 28 18        	addi	a0, sp, 56
80208a32: 2a e4        	sd	a0, 8(sp)
80208a34: 05 45        	li	a0, 1
80208a36: 2a e8        	sd	a0, 16(sp)
80208a38: 02 f4        	sd	zero, 40(sp)

0000000080208a3a <.Lpcrel_hi470>:
80208a3a: 17 45 00 00  	auipc	a0, 4
80208a3e: 13 05 e5 af  	addi	a0, a0, -1282
80208a42: 2a ec        	sd	a0, 24(sp)
80208a44: 02 f0        	sd	zero, 32(sp)
80208a46: 28 00        	addi	a0, sp, 8
80208a48: b2 85        	mv	a1, a2
80208a4a: 97 00 00 00  	auipc	ra, 0
80208a4e: e7 80 00 fb  	jalr	-80(ra)
80208a52: 00 00        	unimp	

0000000080208a54 <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
80208a54: 59 71        	addi	sp, sp, -112
80208a56: 86 f4        	sd	ra, 104(sp)
80208a58: 2a e4        	sd	a0, 8(sp)
80208a5a: 2e e8        	sd	a1, 16(sp)
80208a5c: 08 08        	addi	a0, sp, 16
80208a5e: aa e4        	sd	a0, 72(sp)

0000000080208a60 <.Lpcrel_hi473>:
80208a60: 17 15 00 00  	auipc	a0, 1
80208a64: 13 05 85 6d  	addi	a0, a0, 1752
80208a68: aa e8        	sd	a0, 80(sp)
80208a6a: 2c 00        	addi	a1, sp, 8
80208a6c: ae ec        	sd	a1, 88(sp)
80208a6e: aa f0        	sd	a0, 96(sp)

0000000080208a70 <.Lpcrel_hi474>:
80208a70: 17 45 00 00  	auipc	a0, 4
80208a74: 13 05 85 b4  	addi	a0, a0, -1208
80208a78: 2a ec        	sd	a0, 24(sp)
80208a7a: 09 45        	li	a0, 2
80208a7c: 2a f0        	sd	a0, 32(sp)
80208a7e: 02 fc        	sd	zero, 56(sp)
80208a80: ac 00        	addi	a1, sp, 72
80208a82: 2e f4        	sd	a1, 40(sp)
80208a84: 2a f8        	sd	a0, 48(sp)
80208a86: 28 08        	addi	a0, sp, 24
80208a88: b2 85        	mv	a1, a2
80208a8a: 97 00 00 00  	auipc	ra, 0
80208a8e: e7 80 00 f7  	jalr	-144(ra)
80208a92: 00 00        	unimp	

0000000080208a94 <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
80208a94: 19 71        	addi	sp, sp, -128
80208a96: 86 fc        	sd	ra, 120(sp)
80208a98: 2a e4        	sd	a0, 8(sp)
80208a9a: 2e e8        	sd	a1, 16(sp)
80208a9c: 32 ec        	sd	a2, 24(sp)
80208a9e: 36 f0        	sd	a3, 32(sp)
80208aa0: 28 00        	addi	a0, sp, 8
80208aa2: aa ec        	sd	a0, 88(sp)

0000000080208aa4 <.Lpcrel_hi495>:
80208aa4: 17 25 00 00  	auipc	a0, 2
80208aa8: 13 05 25 80  	addi	a0, a0, -2046
80208aac: aa f0        	sd	a0, 96(sp)
80208aae: 28 08        	addi	a0, sp, 24
80208ab0: aa f4        	sd	a0, 104(sp)

0000000080208ab2 <.Lpcrel_hi496>:
80208ab2: 17 15 00 00  	auipc	a0, 1
80208ab6: 13 05 c5 7e  	addi	a0, a0, 2028
80208aba: aa f8        	sd	a0, 112(sp)

0000000080208abc <.Lpcrel_hi497>:
80208abc: 17 45 00 00  	auipc	a0, 4
80208ac0: 13 05 45 b2  	addi	a0, a0, -1244
80208ac4: 2a f4        	sd	a0, 40(sp)
80208ac6: 09 45        	li	a0, 2
80208ac8: 2a f8        	sd	a0, 48(sp)
80208aca: 82 e4        	sd	zero, 72(sp)
80208acc: ac 08        	addi	a1, sp, 88
80208ace: 2e fc        	sd	a1, 56(sp)
80208ad0: aa e0        	sd	a0, 64(sp)
80208ad2: 28 10        	addi	a0, sp, 40
80208ad4: ba 85        	mv	a1, a4
80208ad6: 97 00 00 00  	auipc	ra, 0
80208ada: e7 80 40 f2  	jalr	-220(ra)
80208ade: 00 00        	unimp	

0000000080208ae0 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd9568184a6931636E>:
80208ae0: 75 71        	addi	sp, sp, -144
80208ae2: 06 e5        	sd	ra, 136(sp)
80208ae4: 22 e1        	sd	s0, 128(sp)
80208ae6: a6 fc        	sd	s1, 120(sp)
80208ae8: ca f8        	sd	s2, 112(sp)
80208aea: ce f4        	sd	s3, 104(sp)
80208aec: d2 f0        	sd	s4, 96(sp)
80208aee: d6 ec        	sd	s5, 88(sp)
80208af0: da e8        	sd	s6, 80(sp)
80208af2: de e4        	sd	s7, 72(sp)
80208af4: e2 e0        	sd	s8, 64(sp)
80208af6: 66 fc        	sd	s9, 56(sp)
80208af8: 6a f8        	sd	s10, 48(sp)
80208afa: 6e f4        	sd	s11, 40(sp)
80208afc: 32 89        	mv	s2, a2
80208afe: 2e 8a        	mv	s4, a1
80208b00: 01 4c        	li	s8, 0
80208b02: 81 4c        	li	s9, 0
80208b04: 81 49        	li	s3, 0

0000000080208b06 <.Lpcrel_hi500>:
80208b06: 97 a5 0b 00  	auipc	a1, 186
80208b0a: 03 bb a5 89  	ld	s6, -1894(a1)

0000000080208b0e <.Lpcrel_hi501>:
80208b0e: 97 a5 0b 00  	auipc	a1, 186
80208b12: 83 bb a5 89  	ld	s7, -1894(a1)

0000000080208b16 <.Lpcrel_hi502>:
80208b16: 97 a5 0b 00  	auipc	a1, 186
80208b1a: 83 b4 a5 89  	ld	s1, -1894(a1)
80208b1e: 00 69        	ld	s0, 16(a0)
80208b20: 0c 61        	ld	a1, 0(a0)
80208b22: 2e f0        	sd	a1, 32(sp)
80208b24: 08 65        	ld	a0, 8(a0)
80208b26: 2a ec        	sd	a0, 24(sp)
80208b28: 13 05 8a 00  	addi	a0, s4, 8
80208b2c: 2a e0        	sd	a0, 0(sp)

0000000080208b2e <.Lpcrel_hi503>:
80208b2e: 17 25 00 00  	auipc	a0, 2
80208b32: 13 05 35 5a  	addi	a0, a0, 1443
80208b36: 2a e8        	sd	a0, 16(sp)
80208b38: 29 4d        	li	s10, 10
80208b3a: 22 e4        	sd	s0, 8(sp)
80208b3c: 0d a0        	j	0x80208b5e <.Lpcrel_hi503+0x30>
80208b3e: 33 05 b6 00  	add	a0, a2, a1
80208b42: 03 45 f5 ff  	lbu	a0, -1(a0)
80208b46: 59 15        	addi	a0, a0, -10
80208b48: 13 35 15 00  	seqz	a0, a0
80208b4c: 23 00 a4 00  	sb	a0, 0(s0)
80208b50: 62 65        	ld	a0, 24(sp)
80208b52: 14 6d        	ld	a3, 24(a0)
80208b54: 02 75        	ld	a0, 32(sp)
80208b56: 82 96        	jalr	a3
80208b58: ee 8c        	mv	s9, s11
80208b5a: 63 15 05 12  	bnez	a0, 0x80208c84 <.Lpcrel_hi503+0x156>
80208b5e: 13 f5 f9 0f  	andi	a0, s3, 255
80208b62: 63 1f 05 10  	bnez	a0, 0x80208c80 <.Lpcrel_hi503+0x152>
80208b66: 63 75 89 01  	bgeu	s2, s8, 0x80208b70 <.Lpcrel_hi503+0x42>
80208b6a: e9 a8        	j	0x80208c44 <.Lpcrel_hi503+0x116>
80208b6c: 63 6c 89 0d  	bltu	s2, s8, 0x80208c44 <.Lpcrel_hi503+0x116>
80208b70: 33 05 89 41  	sub	a0, s2, s8
80208b74: b3 05 8a 01  	add	a1, s4, s8
80208b78: 41 46        	li	a2, 16
80208b7a: 63 7f c5 00  	bgeu	a0, a2, 0x80208b98 <.Lpcrel_hi503+0x6a>
80208b7e: 63 02 2c 0d  	beq	s8, s2, 0x80208c42 <.Lpcrel_hi503+0x114>
80208b82: 81 46        	li	a3, 0
80208b84: 33 86 d5 00  	add	a2, a1, a3
80208b88: 03 46 06 00  	lbu	a2, 0(a2)
80208b8c: 63 0d a6 09  	beq	a2, s10, 0x80208c26 <.Lpcrel_hi503+0xf8>
80208b90: 85 06        	addi	a3, a3, 1
80208b92: e3 19 d5 fe  	bne	a0, a3, 0x80208b84 <.Lpcrel_hi503+0x56>
80208b96: 75 a0        	j	0x80208c42 <.Lpcrel_hi503+0x114>
80208b98: 13 86 75 00  	addi	a2, a1, 7
80208b9c: 93 76 86 ff  	andi	a3, a2, -8
80208ba0: 33 86 b6 40  	sub	a2, a3, a1
80208ba4: ad 8e        	xor	a3, a3, a1
80208ba6: 93 b6 16 00  	seqz	a3, a3
80208baa: 13 37 16 00  	seqz	a4, a2
80208bae: d9 8e        	or	a3, a3, a4
80208bb0: a1 c2        	beqz	a3, 0x80208bf0 <.Lpcrel_hi503+0xc2>
80208bb2: 01 46        	li	a2, 0
80208bb4: 93 06 05 ff  	addi	a3, a0, -16
80208bb8: 02 67        	ld	a4, 0(sp)
80208bba: 62 97        	add	a4, a4, s8
80208bbc: b3 87 c5 00  	add	a5, a1, a2
80208bc0: 9c 63        	ld	a5, 0(a5)
80208bc2: 13 c4 f7 ff  	not	s0, a5
80208bc6: a5 8f        	xor	a5, a5, s1
80208bc8: da 97        	add	a5, a5, s6
80208bca: 33 74 74 01  	and	s0, s0, s7
80208bce: e1 8f        	and	a5, a5, s0
80208bd0: 8d ef        	bnez	a5, 0x80208c0a <.Lpcrel_hi503+0xdc>
80208bd2: b3 07 c7 00  	add	a5, a4, a2
80208bd6: 9c 63        	ld	a5, 0(a5)
80208bd8: 13 c4 f7 ff  	not	s0, a5
80208bdc: a5 8f        	xor	a5, a5, s1
80208bde: da 97        	add	a5, a5, s6
80208be0: 33 74 74 01  	and	s0, s0, s7
80208be4: e1 8f        	and	a5, a5, s0
80208be6: 95 e3        	bnez	a5, 0x80208c0a <.Lpcrel_hi503+0xdc>
80208be8: 41 06        	addi	a2, a2, 16
80208bea: e3 f9 c6 fc  	bgeu	a3, a2, 0x80208bbc <.Lpcrel_hi503+0x8e>
80208bee: 31 a8        	j	0x80208c0a <.Lpcrel_hi503+0xdc>
80208bf0: 33 87 d5 00  	add	a4, a1, a3
80208bf4: 03 47 07 00  	lbu	a4, 0(a4)
80208bf8: 63 07 a7 03  	beq	a4, s10, 0x80208c26 <.Lpcrel_hi503+0xf8>
80208bfc: 85 06        	addi	a3, a3, 1
80208bfe: e3 19 d6 fe  	bne	a2, a3, 0x80208bf0 <.Lpcrel_hi503+0xc2>
80208c02: 93 06 05 ff  	addi	a3, a0, -16
80208c06: e3 f9 c6 fa  	bgeu	a3, a2, 0x80208bb8 <.Lpcrel_hi503+0x8a>
80208c0a: 63 04 c5 06  	beq	a0, a2, 0x80208c72 <.Lpcrel_hi503+0x144>
80208c0e: 22 64        	ld	s0, 8(sp)
80208c10: b3 86 c5 00  	add	a3, a1, a2
80208c14: 83 c6 06 00  	lbu	a3, 0(a3)
80208c18: 63 86 a6 01  	beq	a3, s10, 0x80208c24 <.Lpcrel_hi503+0xf6>
80208c1c: 05 06        	addi	a2, a2, 1
80208c1e: e3 19 c5 fe  	bne	a0, a2, 0x80208c10 <.Lpcrel_hi503+0xe2>
80208c22: 05 a0        	j	0x80208c42 <.Lpcrel_hi503+0x114>
80208c24: b2 86        	mv	a3, a2
80208c26: e2 96        	add	a3, a3, s8
80208c28: 13 8c 16 00  	addi	s8, a3, 1
80208c2c: e3 f0 26 f5  	bgeu	a3, s2, 0x80208b6c <.Lpcrel_hi503+0x3e>
80208c30: d2 96        	add	a3, a3, s4
80208c32: 03 c5 06 00  	lbu	a0, 0(a3)
80208c36: e3 1b a5 f3  	bne	a0, s10, 0x80208b6c <.Lpcrel_hi503+0x3e>
80208c3a: 81 49        	li	s3, 0
80208c3c: e2 8d        	mv	s11, s8
80208c3e: e2 8a        	mv	s5, s8
80208c40: 39 a0        	j	0x80208c4e <.Lpcrel_hi503+0x120>
80208c42: 4a 8c        	mv	s8, s2
80208c44: 85 49        	li	s3, 1
80208c46: e6 8d        	mv	s11, s9
80208c48: ca 8a        	mv	s5, s2
80208c4a: 63 8b 2c 03  	beq	s9, s2, 0x80208c80 <.Lpcrel_hi503+0x152>
80208c4e: 03 45 04 00  	lbu	a0, 0(s0)
80208c52: 01 c9        	beqz	a0, 0x80208c62 <.Lpcrel_hi503+0x134>
80208c54: 62 65        	ld	a0, 24(sp)
80208c56: 14 6d        	ld	a3, 24(a0)
80208c58: 11 46        	li	a2, 4
80208c5a: 02 75        	ld	a0, 32(sp)
80208c5c: c2 65        	ld	a1, 16(sp)
80208c5e: 82 96        	jalr	a3
80208c60: 15 e1        	bnez	a0, 0x80208c84 <.Lpcrel_hi503+0x156>
80208c62: 33 86 9a 41  	sub	a2, s5, s9
80208c66: b3 05 9a 01  	add	a1, s4, s9
80208c6a: e3 9a 9a ed  	bne	s5, s9, 0x80208b3e <.Lpcrel_hi503+0x10>
80208c6e: 01 45        	li	a0, 0
80208c70: f1 bd        	j	0x80208b4c <.Lpcrel_hi503+0x1e>
80208c72: 4a 8c        	mv	s8, s2
80208c74: 22 64        	ld	s0, 8(sp)
80208c76: 85 49        	li	s3, 1
80208c78: e6 8d        	mv	s11, s9
80208c7a: ca 8a        	mv	s5, s2
80208c7c: e3 99 2c fd  	bne	s9, s2, 0x80208c4e <.Lpcrel_hi503+0x120>
80208c80: 01 45        	li	a0, 0
80208c82: 11 a0        	j	0x80208c86 <.Lpcrel_hi503+0x158>
80208c84: 05 45        	li	a0, 1
80208c86: aa 60        	ld	ra, 136(sp)
80208c88: 0a 64        	ld	s0, 128(sp)
80208c8a: e6 74        	ld	s1, 120(sp)
80208c8c: 46 79        	ld	s2, 112(sp)
80208c8e: a6 79        	ld	s3, 104(sp)
80208c90: 06 7a        	ld	s4, 96(sp)
80208c92: e6 6a        	ld	s5, 88(sp)
80208c94: 46 6b        	ld	s6, 80(sp)
80208c96: a6 6b        	ld	s7, 72(sp)
80208c98: 06 6c        	ld	s8, 64(sp)
80208c9a: e2 7c        	ld	s9, 56(sp)
80208c9c: 42 7d        	ld	s10, 48(sp)
80208c9e: a2 7d        	ld	s11, 40(sp)
80208ca0: 49 61        	addi	sp, sp, 144
80208ca2: 82 80        	ret

0000000080208ca4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE>:
80208ca4: 71 71        	addi	sp, sp, -176
80208ca6: 06 f5        	sd	ra, 168(sp)
80208ca8: 22 f1        	sd	s0, 160(sp)
80208caa: 26 ed        	sd	s1, 152(sp)
80208cac: 4a e9        	sd	s2, 144(sp)
80208cae: 4e e5        	sd	s3, 136(sp)
80208cb0: 52 e1        	sd	s4, 128(sp)
80208cb2: d6 fc        	sd	s5, 120(sp)
80208cb4: da f8        	sd	s6, 112(sp)
80208cb6: de f4        	sd	s7, 104(sp)
80208cb8: 2a 84        	mv	s0, a0
80208cba: 03 45 85 00  	lbu	a0, 8(a0)
80208cbe: 85 4b        	li	s7, 1
80208cc0: 85 44        	li	s1, 1
80208cc2: 0d c1        	beqz	a0, 0x80208ce4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x40>
80208cc4: 23 04 94 00  	sb	s1, 8(s0)
80208cc8: a3 04 74 01  	sb	s7, 9(s0)
80208ccc: 22 85        	mv	a0, s0
80208cce: aa 70        	ld	ra, 168(sp)
80208cd0: 0a 74        	ld	s0, 160(sp)
80208cd2: ea 64        	ld	s1, 152(sp)
80208cd4: 4a 69        	ld	s2, 144(sp)
80208cd6: aa 69        	ld	s3, 136(sp)
80208cd8: 0a 6a        	ld	s4, 128(sp)
80208cda: e6 7a        	ld	s5, 120(sp)
80208cdc: 46 7b        	ld	s6, 112(sp)
80208cde: a6 7b        	ld	s7, 104(sp)
80208ce0: 4d 61        	addi	sp, sp, 176
80208ce2: 82 80        	ret
80208ce4: ba 89        	mv	s3, a4
80208ce6: 36 89        	mv	s2, a3
80208ce8: 32 8a        	mv	s4, a2
80208cea: ae 8a        	mv	s5, a1
80208cec: 03 3b 04 00  	ld	s6, 0(s0)
80208cf0: 03 65 4b 03  	lwu	a0, 52(s6)
80208cf4: 83 45 94 00  	lbu	a1, 9(s0)
80208cf8: 13 76 45 00  	andi	a2, a0, 4
80208cfc: 09 ea        	bnez	a2, 0x80208d0e <.Lpcrel_hi505+0xa>
80208cfe: 13 b6 15 00  	seqz	a2, a1
80208d02: e1 c1        	beqz	a1, 0x80208dc2 <.Lpcrel_hi504>

0000000080208d04 <.Lpcrel_hi505>:
80208d04: 17 45 00 00  	auipc	a0, 4
80208d08: 93 05 15 93  	addi	a1, a0, -1743
80208d0c: 7d a8        	j	0x80208dca <.Lpcrel_hi504+0x8>
80208d0e: 85 e1        	bnez	a1, 0x80208d2e <.Lpcrel_hi507+0x14>
80208d10: 83 35 8b 02  	ld	a1, 40(s6)
80208d14: 03 35 0b 02  	ld	a0, 32(s6)
80208d18: 94 6d        	ld	a3, 24(a1)

0000000080208d1a <.Lpcrel_hi507>:
80208d1a: 97 45 00 00  	auipc	a1, 4
80208d1e: 93 85 65 91  	addi	a1, a1, -1770
80208d22: 0d 46        	li	a2, 3
80208d24: 82 96        	jalr	a3
80208d26: 85 44        	li	s1, 1
80208d28: 51 fd        	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208d2a: 03 25 4b 03  	lw	a0, 52(s6)
80208d2e: 85 44        	li	s1, 1
80208d30: a3 03 91 02  	sb	s1, 39(sp)
80208d34: 83 35 0b 02  	ld	a1, 32(s6)
80208d38: 03 36 8b 02  	ld	a2, 40(s6)
80208d3c: 2e e4        	sd	a1, 8(sp)
80208d3e: 32 e8        	sd	a2, 16(sp)
80208d40: 93 05 71 02  	addi	a1, sp, 39
80208d44: 2e ec        	sd	a1, 24(sp)
80208d46: 83 25 0b 03  	lw	a1, 48(s6)
80208d4a: 03 06 8b 03  	lb	a2, 56(s6)
80208d4e: 83 36 0b 00  	ld	a3, 0(s6)
80208d52: 03 37 8b 00  	ld	a4, 8(s6)
80208d56: 83 37 0b 01  	ld	a5, 16(s6)
80208d5a: 03 38 8b 01  	ld	a6, 24(s6)
80208d5e: aa ce        	sw	a0, 92(sp)
80208d60: ae cc        	sw	a1, 88(sp)
80208d62: 23 00 c1 06  	sb	a2, 96(sp)
80208d66: 36 f4        	sd	a3, 40(sp)
80208d68: 3a f8        	sd	a4, 48(sp)
80208d6a: 3e fc        	sd	a5, 56(sp)
80208d6c: c2 e0        	sd	a6, 64(sp)
80208d6e: 28 00        	addi	a0, sp, 8
80208d70: aa e4        	sd	a0, 72(sp)

0000000080208d72 <.Lpcrel_hi506>:
80208d72: 17 45 00 00  	auipc	a0, 4
80208d76: 13 05 e5 88  	addi	a0, a0, -1906
80208d7a: aa e8        	sd	a0, 80(sp)
80208d7c: 28 00        	addi	a0, sp, 8
80208d7e: d6 85        	mv	a1, s5
80208d80: 52 86        	mv	a2, s4
80208d82: 97 00 00 00  	auipc	ra, 0
80208d86: e7 80 e0 d5  	jalr	-674(ra)
80208d8a: 0d fd        	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

0000000080208d8c <.Lpcrel_hi508>:
80208d8c: 17 45 00 00  	auipc	a0, 4
80208d90: 93 05 c5 84  	addi	a1, a0, -1972
80208d94: 28 00        	addi	a0, sp, 8
80208d96: 09 46        	li	a2, 2
80208d98: 97 00 00 00  	auipc	ra, 0
80208d9c: e7 80 80 d4  	jalr	-696(ra)
80208da0: 15 f1        	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208da2: 03 b6 89 01  	ld	a2, 24(s3)
80208da6: 2c 10        	addi	a1, sp, 40
80208da8: 4a 85        	mv	a0, s2
80208daa: 02 96        	jalr	a2
80208dac: 01 fd        	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208dae: c6 65        	ld	a1, 80(sp)
80208db0: 26 65        	ld	a0, 72(sp)
80208db2: 94 6d        	ld	a3, 24(a1)

0000000080208db4 <.Lpcrel_hi509>:
80208db4: 97 45 00 00  	auipc	a1, 4
80208db8: 93 85 f5 87  	addi	a1, a1, -1921
80208dbc: 09 46        	li	a2, 2
80208dbe: 82 96        	jalr	a3
80208dc0: a9 a8        	j	0x80208e1a <.Lpcrel_hi510+0x1c>

0000000080208dc2 <.Lpcrel_hi504>:
80208dc2: 17 45 00 00  	auipc	a0, 4
80208dc6: 93 05 55 87  	addi	a1, a0, -1931
80208dca: 83 36 8b 02  	ld	a3, 40(s6)
80208dce: 03 35 0b 02  	ld	a0, 32(s6)
80208dd2: 94 6e        	ld	a3, 24(a3)
80208dd4: 09 06        	addi	a2, a2, 2
80208dd6: 82 96        	jalr	a3
80208dd8: 85 44        	li	s1, 1
80208dda: e3 15 05 ee  	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208dde: 83 35 8b 02  	ld	a1, 40(s6)
80208de2: 03 35 0b 02  	ld	a0, 32(s6)
80208de6: 94 6d        	ld	a3, 24(a1)
80208de8: d6 85        	mv	a1, s5
80208dea: 52 86        	mv	a2, s4
80208dec: 82 96        	jalr	a3
80208dee: 85 44        	li	s1, 1
80208df0: e3 1a 05 ec  	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208df4: 83 35 8b 02  	ld	a1, 40(s6)
80208df8: 03 35 0b 02  	ld	a0, 32(s6)
80208dfc: 94 6d        	ld	a3, 24(a1)

0000000080208dfe <.Lpcrel_hi510>:
80208dfe: 97 35 00 00  	auipc	a1, 3
80208e02: 93 85 a5 7d  	addi	a1, a1, 2010
80208e06: 09 46        	li	a2, 2
80208e08: 82 96        	jalr	a3
80208e0a: 85 44        	li	s1, 1
80208e0c: e3 1c 05 ea  	bnez	a0, 0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208e10: 03 b6 89 01  	ld	a2, 24(s3)
80208e14: 4a 85        	mv	a0, s2
80208e16: da 85        	mv	a1, s6
80208e18: 02 96        	jalr	a2
80208e1a: aa 84        	mv	s1, a0
80208e1c: 65 b5        	j	0x80208cc4 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

0000000080208e1e <_ZN4core3fmt8builders10DebugTuple5field17ha47c8f1c93ad527dE>:
80208e1e: 35 71        	addi	sp, sp, -160
80208e20: 06 ed        	sd	ra, 152(sp)
80208e22: 22 e9        	sd	s0, 144(sp)
80208e24: 26 e5        	sd	s1, 136(sp)
80208e26: 4a e1        	sd	s2, 128(sp)
80208e28: ce fc        	sd	s3, 120(sp)
80208e2a: d2 f8        	sd	s4, 112(sp)
80208e2c: d6 f4        	sd	s5, 104(sp)
80208e2e: 2a 84        	mv	s0, a0
80208e30: 03 45 05 01  	lbu	a0, 16(a0)
80208e34: 09 c5        	beqz	a0, 0x80208e3e <_ZN4core3fmt8builders10DebugTuple5field17ha47c8f1c93ad527dE+0x20>
80208e36: 83 3a 04 00  	ld	s5, 0(s0)
80208e3a: 85 44        	li	s1, 1
80208e3c: d5 a0        	j	0x80208f20 <.Lpcrel_hi521+0xe>
80208e3e: b2 89        	mv	s3, a2
80208e40: 2e 89        	mv	s2, a1
80208e42: 03 3a 84 00  	ld	s4, 8(s0)
80208e46: 03 65 4a 03  	lwu	a0, 52(s4)
80208e4a: 83 3a 04 00  	ld	s5, 0(s0)
80208e4e: 93 75 45 00  	andi	a1, a0, 4
80208e52: 91 e9        	bnez	a1, 0x80208e66 <.Lpcrel_hi518+0xa>
80208e54: 33 36 50 01  	snez	a2, s5
80208e58: 63 88 0a 02  	beqz	s5, 0x80208e88 <.Lpcrel_hi517>

0000000080208e5c <.Lpcrel_hi518>:
80208e5c: 17 35 00 00  	auipc	a0, 3
80208e60: 93 05 95 7d  	addi	a1, a0, 2009
80208e64: 35 a0        	j	0x80208e90 <.Lpcrel_hi517+0x8>
80208e66: 63 96 0a 04  	bnez	s5, 0x80208eb2 <.Lpcrel_hi517+0x2a>
80208e6a: 83 35 8a 02  	ld	a1, 40(s4)
80208e6e: 03 35 0a 02  	ld	a0, 32(s4)
80208e72: 94 6d        	ld	a3, 24(a1)

0000000080208e74 <.Lpcrel_hi519>:
80208e74: 97 35 00 00  	auipc	a1, 3
80208e78: 93 85 95 7c  	addi	a1, a1, 1993
80208e7c: 09 46        	li	a2, 2
80208e7e: 82 96        	jalr	a3
80208e80: 1d c5        	beqz	a0, 0x80208eae <.Lpcrel_hi517+0x26>
80208e82: 81 4a        	li	s5, 0
80208e84: 85 44        	li	s1, 1
80208e86: 69 a8        	j	0x80208f20 <.Lpcrel_hi521+0xe>

0000000080208e88 <.Lpcrel_hi517>:
80208e88: 17 35 00 00  	auipc	a0, 3
80208e8c: 93 05 75 7b  	addi	a1, a0, 1975
80208e90: 83 36 8a 02  	ld	a3, 40(s4)
80208e94: 03 35 0a 02  	ld	a0, 32(s4)
80208e98: 94 6e        	ld	a3, 24(a3)
80208e9a: 05 06        	addi	a2, a2, 1
80208e9c: 82 96        	jalr	a3
80208e9e: 85 44        	li	s1, 1
80208ea0: 41 e1        	bnez	a0, 0x80208f20 <.Lpcrel_hi521+0xe>
80208ea2: 03 b6 89 01  	ld	a2, 24(s3)
80208ea6: 4a 85        	mv	a0, s2
80208ea8: d2 85        	mv	a1, s4
80208eaa: 02 96        	jalr	a2
80208eac: 8d a8        	j	0x80208f1e <.Lpcrel_hi521+0xc>
80208eae: 03 25 4a 03  	lw	a0, 52(s4)
80208eb2: 85 44        	li	s1, 1
80208eb4: a3 03 91 02  	sb	s1, 39(sp)
80208eb8: 83 35 0a 02  	ld	a1, 32(s4)
80208ebc: 03 36 8a 02  	ld	a2, 40(s4)
80208ec0: 2e e4        	sd	a1, 8(sp)
80208ec2: 32 e8        	sd	a2, 16(sp)
80208ec4: 93 05 71 02  	addi	a1, sp, 39
80208ec8: 2e ec        	sd	a1, 24(sp)
80208eca: 83 25 0a 03  	lw	a1, 48(s4)
80208ece: 03 06 8a 03  	lb	a2, 56(s4)
80208ed2: 83 36 0a 00  	ld	a3, 0(s4)
80208ed6: 03 37 8a 00  	ld	a4, 8(s4)
80208eda: 83 37 0a 01  	ld	a5, 16(s4)
80208ede: 03 38 8a 01  	ld	a6, 24(s4)
80208ee2: aa ce        	sw	a0, 92(sp)
80208ee4: ae cc        	sw	a1, 88(sp)
80208ee6: 23 00 c1 06  	sb	a2, 96(sp)
80208eea: 36 f4        	sd	a3, 40(sp)
80208eec: 3a f8        	sd	a4, 48(sp)
80208eee: 3e fc        	sd	a5, 56(sp)
80208ef0: c2 e0        	sd	a6, 64(sp)
80208ef2: 28 00        	addi	a0, sp, 8
80208ef4: aa e4        	sd	a0, 72(sp)
80208ef6: 03 b6 89 01  	ld	a2, 24(s3)

0000000080208efa <.Lpcrel_hi520>:
80208efa: 17 35 00 00  	auipc	a0, 3
80208efe: 13 05 65 70  	addi	a0, a0, 1798
80208f02: aa e8        	sd	a0, 80(sp)
80208f04: 2c 10        	addi	a1, sp, 40
80208f06: 4a 85        	mv	a0, s2
80208f08: 02 96        	jalr	a2
80208f0a: 19 e9        	bnez	a0, 0x80208f20 <.Lpcrel_hi521+0xe>
80208f0c: c6 65        	ld	a1, 80(sp)
80208f0e: 26 65        	ld	a0, 72(sp)
80208f10: 94 6d        	ld	a3, 24(a1)

0000000080208f12 <.Lpcrel_hi521>:
80208f12: 97 35 00 00  	auipc	a1, 3
80208f16: 93 85 15 72  	addi	a1, a1, 1825
80208f1a: 09 46        	li	a2, 2
80208f1c: 82 96        	jalr	a3
80208f1e: aa 84        	mv	s1, a0
80208f20: 23 08 94 00  	sb	s1, 16(s0)
80208f24: 85 0a        	addi	s5, s5, 1
80208f26: 23 30 54 01  	sd	s5, 0(s0)
80208f2a: 22 85        	mv	a0, s0
80208f2c: ea 60        	ld	ra, 152(sp)
80208f2e: 4a 64        	ld	s0, 144(sp)
80208f30: aa 64        	ld	s1, 136(sp)
80208f32: 0a 69        	ld	s2, 128(sp)
80208f34: e6 79        	ld	s3, 120(sp)
80208f36: 46 7a        	ld	s4, 112(sp)
80208f38: a6 7a        	ld	s5, 104(sp)
80208f3a: 0d 61        	addi	sp, sp, 160
80208f3c: 82 80        	ret

0000000080208f3e <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E>:
80208f3e: 41 11        	addi	sp, sp, -16
80208f40: 06 e4        	sd	ra, 8(sp)
80208f42: 1b 86 05 00  	sext.w	a2, a1
80208f46: 93 06 00 08  	li	a3, 128
80208f4a: 02 c2        	sw	zero, 4(sp)
80208f4c: 63 76 d6 00  	bgeu	a2, a3, 0x80208f58 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x1a>
80208f50: 23 02 b1 00  	sb	a1, 4(sp)
80208f54: 05 46        	li	a2, 1
80208f56: 71 a0        	j	0x80208fe2 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80208f58: 1b d6 b5 00  	srliw	a2, a1, 11
80208f5c: 19 ee        	bnez	a2, 0x80208f7a <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x3c>
80208f5e: 13 d6 65 00  	srli	a2, a1, 6
80208f62: 13 66 06 0c  	ori	a2, a2, 192
80208f66: 23 02 c1 00  	sb	a2, 4(sp)
80208f6a: 93 f5 f5 03  	andi	a1, a1, 63
80208f6e: 93 85 05 08  	addi	a1, a1, 128
80208f72: a3 02 b1 00  	sb	a1, 5(sp)
80208f76: 09 46        	li	a2, 2
80208f78: ad a0        	j	0x80208fe2 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80208f7a: 1b d6 05 01  	srliw	a2, a1, 16
80208f7e: 15 e6        	bnez	a2, 0x80208faa <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x6c>
80208f80: 13 d6 c5 00  	srli	a2, a1, 12
80208f84: 13 66 06 0e  	ori	a2, a2, 224
80208f88: 23 02 c1 00  	sb	a2, 4(sp)
80208f8c: 13 96 45 03  	slli	a2, a1, 52
80208f90: 69 92        	srli	a2, a2, 58
80208f92: 13 06 06 08  	addi	a2, a2, 128
80208f96: a3 02 c1 00  	sb	a2, 5(sp)
80208f9a: 93 f5 f5 03  	andi	a1, a1, 63
80208f9e: 93 85 05 08  	addi	a1, a1, 128
80208fa2: 23 03 b1 00  	sb	a1, 6(sp)
80208fa6: 0d 46        	li	a2, 3
80208fa8: 2d a8        	j	0x80208fe2 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80208faa: 13 96 b5 02  	slli	a2, a1, 43
80208fae: 75 92        	srli	a2, a2, 61
80208fb0: 13 06 06 0f  	addi	a2, a2, 240
80208fb4: 23 02 c1 00  	sb	a2, 4(sp)
80208fb8: 13 96 e5 02  	slli	a2, a1, 46
80208fbc: 69 92        	srli	a2, a2, 58
80208fbe: 13 06 06 08  	addi	a2, a2, 128
80208fc2: a3 02 c1 00  	sb	a2, 5(sp)
80208fc6: 13 96 45 03  	slli	a2, a1, 52
80208fca: 69 92        	srli	a2, a2, 58
80208fcc: 13 06 06 08  	addi	a2, a2, 128
80208fd0: 23 03 c1 00  	sb	a2, 6(sp)
80208fd4: 93 f5 f5 03  	andi	a1, a1, 63
80208fd8: 93 85 05 08  	addi	a1, a1, 128
80208fdc: a3 03 b1 00  	sb	a1, 7(sp)
80208fe0: 11 46        	li	a2, 4
80208fe2: 4c 00        	addi	a1, sp, 4
80208fe4: 97 00 00 00  	auipc	ra, 0
80208fe8: e7 80 c0 af  	jalr	-1284(ra)
80208fec: a2 60        	ld	ra, 8(sp)
80208fee: 41 01        	addi	sp, sp, 16
80208ff0: 82 80        	ret

0000000080208ff2 <_ZN4core3fmt5Write9write_fmt17h33104a4532dd589cE>:
80208ff2: 39 71        	addi	sp, sp, -64
80208ff4: 06 fc        	sd	ra, 56(sp)
80208ff6: 90 75        	ld	a2, 40(a1)
80208ff8: 94 71        	ld	a3, 32(a1)
80208ffa: 2a e0        	sd	a0, 0(sp)
80208ffc: 32 f8        	sd	a2, 48(sp)
80208ffe: 36 f4        	sd	a3, 40(sp)
80209000: 88 6d        	ld	a0, 24(a1)
80209002: 90 69        	ld	a2, 16(a1)
80209004: 94 65        	ld	a3, 8(a1)
80209006: 8c 61        	ld	a1, 0(a1)
80209008: 2a f0        	sd	a0, 32(sp)
8020900a: 32 ec        	sd	a2, 24(sp)
8020900c: 36 e8        	sd	a3, 16(sp)
8020900e: 2e e4        	sd	a1, 8(sp)

0000000080209010 <.Lpcrel_hi663>:
80209010: 17 35 00 00  	auipc	a0, 3
80209014: 93 05 05 76  	addi	a1, a0, 1888
80209018: 0a 85        	mv	a0, sp
8020901a: 30 00        	addi	a2, sp, 8
8020901c: 97 00 00 00  	auipc	ra, 0
80209020: e7 80 a0 11  	jalr	282(ra)
80209024: e2 70        	ld	ra, 56(sp)
80209026: 21 61        	addi	sp, sp, 64
80209028: 82 80        	ret

000000008020902a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha27cc45ca5b519bfE>:
8020902a: 08 61        	ld	a0, 0(a0)
8020902c: 17 03 00 00  	auipc	t1, 0
80209030: 67 00 43 ab  	jr	-1356(t1)

0000000080209034 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E>:
80209034: 41 11        	addi	sp, sp, -16
80209036: 06 e4        	sd	ra, 8(sp)
80209038: 08 61        	ld	a0, 0(a0)
8020903a: 1b 86 05 00  	sext.w	a2, a1
8020903e: 93 06 00 08  	li	a3, 128
80209042: 02 c2        	sw	zero, 4(sp)
80209044: 63 76 d6 00  	bgeu	a2, a3, 0x80209050 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x1c>
80209048: 23 02 b1 00  	sb	a1, 4(sp)
8020904c: 05 46        	li	a2, 1
8020904e: 71 a0        	j	0x802090da <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
80209050: 1b d6 b5 00  	srliw	a2, a1, 11
80209054: 19 ee        	bnez	a2, 0x80209072 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x3e>
80209056: 13 d6 65 00  	srli	a2, a1, 6
8020905a: 13 66 06 0c  	ori	a2, a2, 192
8020905e: 23 02 c1 00  	sb	a2, 4(sp)
80209062: 93 f5 f5 03  	andi	a1, a1, 63
80209066: 93 85 05 08  	addi	a1, a1, 128
8020906a: a3 02 b1 00  	sb	a1, 5(sp)
8020906e: 09 46        	li	a2, 2
80209070: ad a0        	j	0x802090da <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
80209072: 1b d6 05 01  	srliw	a2, a1, 16
80209076: 15 e6        	bnez	a2, 0x802090a2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x6e>
80209078: 13 d6 c5 00  	srli	a2, a1, 12
8020907c: 13 66 06 0e  	ori	a2, a2, 224
80209080: 23 02 c1 00  	sb	a2, 4(sp)
80209084: 13 96 45 03  	slli	a2, a1, 52
80209088: 69 92        	srli	a2, a2, 58
8020908a: 13 06 06 08  	addi	a2, a2, 128
8020908e: a3 02 c1 00  	sb	a2, 5(sp)
80209092: 93 f5 f5 03  	andi	a1, a1, 63
80209096: 93 85 05 08  	addi	a1, a1, 128
8020909a: 23 03 b1 00  	sb	a1, 6(sp)
8020909e: 0d 46        	li	a2, 3
802090a0: 2d a8        	j	0x802090da <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
802090a2: 13 96 b5 02  	slli	a2, a1, 43
802090a6: 75 92        	srli	a2, a2, 61
802090a8: 13 06 06 0f  	addi	a2, a2, 240
802090ac: 23 02 c1 00  	sb	a2, 4(sp)
802090b0: 13 96 e5 02  	slli	a2, a1, 46
802090b4: 69 92        	srli	a2, a2, 58
802090b6: 13 06 06 08  	addi	a2, a2, 128
802090ba: a3 02 c1 00  	sb	a2, 5(sp)
802090be: 13 96 45 03  	slli	a2, a1, 52
802090c2: 69 92        	srli	a2, a2, 58
802090c4: 13 06 06 08  	addi	a2, a2, 128
802090c8: 23 03 c1 00  	sb	a2, 6(sp)
802090cc: 93 f5 f5 03  	andi	a1, a1, 63
802090d0: 93 85 05 08  	addi	a1, a1, 128
802090d4: a3 03 b1 00  	sb	a1, 7(sp)
802090d8: 11 46        	li	a2, 4
802090da: 4c 00        	addi	a1, sp, 4
802090dc: 97 00 00 00  	auipc	ra, 0
802090e0: e7 80 40 a0  	jalr	-1532(ra)
802090e4: a2 60        	ld	ra, 8(sp)
802090e6: 41 01        	addi	sp, sp, 16
802090e8: 82 80        	ret

00000000802090ea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h8d7d3cce603bbfe8E>:
802090ea: 39 71        	addi	sp, sp, -64
802090ec: 06 fc        	sd	ra, 56(sp)
802090ee: 90 75        	ld	a2, 40(a1)
802090f0: 94 71        	ld	a3, 32(a1)
802090f2: 98 6d        	ld	a4, 24(a1)
802090f4: 32 f8        	sd	a2, 48(sp)
802090f6: 36 f4        	sd	a3, 40(sp)
802090f8: 3a f0        	sd	a4, 32(sp)
802090fa: 90 69        	ld	a2, 16(a1)
802090fc: 94 65        	ld	a3, 8(a1)
802090fe: 8c 61        	ld	a1, 0(a1)
80209100: 08 61        	ld	a0, 0(a0)
80209102: 32 ec        	sd	a2, 24(sp)
80209104: 36 e8        	sd	a3, 16(sp)
80209106: 2e e4        	sd	a1, 8(sp)
80209108: 2a e0        	sd	a0, 0(sp)

000000008020910a <.Lpcrel_hi666>:
8020910a: 17 35 00 00  	auipc	a0, 3
8020910e: 93 05 65 66  	addi	a1, a0, 1638
80209112: 0a 85        	mv	a0, sp
80209114: 30 00        	addi	a2, sp, 8
80209116: 97 00 00 00  	auipc	ra, 0
8020911a: e7 80 00 02  	jalr	32(ra)
8020911e: e2 70        	ld	ra, 56(sp)
80209120: 21 61        	addi	sp, sp, 64
80209122: 82 80        	ret

0000000080209124 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
80209124: 90 71        	ld	a2, 32(a1)
80209126: 8c 75        	ld	a1, 40(a1)
80209128: aa 86        	mv	a3, a0
8020912a: 32 85        	mv	a0, a2
8020912c: 36 86        	mv	a2, a3
8020912e: 17 03 00 00  	auipc	t1, 0
80209132: 67 00 83 00  	jr	8(t1)

0000000080209136 <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
80209136: 19 71        	addi	sp, sp, -128
80209138: 86 fc        	sd	ra, 120(sp)
8020913a: a2 f8        	sd	s0, 112(sp)
8020913c: a6 f4        	sd	s1, 104(sp)
8020913e: ca f0        	sd	s2, 96(sp)
80209140: ce ec        	sd	s3, 88(sp)
80209142: d2 e8        	sd	s4, 80(sp)
80209144: d6 e4        	sd	s5, 72(sp)
80209146: da e0        	sd	s6, 64(sp)
80209148: b2 89        	mv	s3, a2
8020914a: 13 06 00 02  	li	a2, 32
8020914e: 32 f8        	sd	a2, 48(sp)
80209150: 0d 46        	li	a2, 3
80209152: 23 0c c1 02  	sb	a2, 56(sp)
80209156: 03 b4 09 02  	ld	s0, 32(s3)
8020915a: 02 e0        	sd	zero, 0(sp)
8020915c: 02 e8        	sd	zero, 16(sp)
8020915e: 2a f0        	sd	a0, 32(sp)
80209160: 2e f4        	sd	a1, 40(sp)
80209162: 61 c0        	beqz	s0, 0x80209222 <.Lpcrel_hi670+0x98>
80209164: 03 b5 89 02  	ld	a0, 40(s3)
80209168: 63 07 05 10  	beqz	a0, 0x80209276 <.Lpcrel_hi670+0xec>
8020916c: 83 b4 09 00  	ld	s1, 0(s3)
80209170: 93 05 f5 ff  	addi	a1, a0, -1
80209174: 8e 05        	slli	a1, a1, 3
80209176: 8d 81        	srli	a1, a1, 3
80209178: 13 89 15 00  	addi	s2, a1, 1
8020917c: a1 04        	addi	s1, s1, 8
8020917e: 93 05 80 03  	li	a1, 56
80209182: 33 0a b5 02  	mul	s4, a0, a1
80209186: 61 04        	addi	s0, s0, 24
80209188: 85 4a        	li	s5, 1

000000008020918a <.Lpcrel_hi670>:
8020918a: 17 05 00 00  	auipc	a0, 0
8020918e: 13 0b e5 81  	addi	s6, a0, -2018
80209192: 90 60        	ld	a2, 0(s1)
80209194: 01 ca        	beqz	a2, 0x802091a4 <.Lpcrel_hi670+0x1a>
80209196: a2 76        	ld	a3, 40(sp)
80209198: 02 75        	ld	a0, 32(sp)
8020919a: 83 b5 84 ff  	ld	a1, -8(s1)
8020919e: 94 6e        	ld	a3, 24(a3)
802091a0: 82 96        	jalr	a3
802091a2: 65 ed        	bnez	a0, 0x8020929a <.Lpcrel_hi670+0x110>
802091a4: 08 48        	lw	a0, 16(s0)
802091a6: 2a d8        	sw	a0, 48(sp)
802091a8: 03 05 84 01  	lb	a0, 24(s0)
802091ac: 23 0c a1 02  	sb	a0, 56(sp)
802091b0: 4c 48        	lw	a1, 20(s0)
802091b2: 03 b5 09 01  	ld	a0, 16(s3)
802091b6: 2e da        	sw	a1, 52(sp)
802091b8: 03 36 84 ff  	ld	a2, -8(s0)
802091bc: 0c 60        	ld	a1, 0(s0)
802091be: 01 ce        	beqz	a2, 0x802091d6 <.Lpcrel_hi670+0x4c>
802091c0: 63 17 56 01  	bne	a2, s5, 0x802091ce <.Lpcrel_hi670+0x44>
802091c4: 92 05        	slli	a1, a1, 4
802091c6: aa 95        	add	a1, a1, a0
802091c8: 90 65        	ld	a2, 8(a1)
802091ca: 63 04 66 01  	beq	a2, s6, 0x802091d2 <.Lpcrel_hi670+0x48>
802091ce: 01 46        	li	a2, 0
802091d0: 21 a0        	j	0x802091d8 <.Lpcrel_hi670+0x4e>
802091d2: 8c 61        	ld	a1, 0(a1)
802091d4: 8c 61        	ld	a1, 0(a1)
802091d6: 05 46        	li	a2, 1
802091d8: 32 e0        	sd	a2, 0(sp)
802091da: 2e e4        	sd	a1, 8(sp)
802091dc: 03 36 84 fe  	ld	a2, -24(s0)
802091e0: 83 35 04 ff  	ld	a1, -16(s0)
802091e4: 01 ce        	beqz	a2, 0x802091fc <.Lpcrel_hi670+0x72>
802091e6: 63 17 56 01  	bne	a2, s5, 0x802091f4 <.Lpcrel_hi670+0x6a>
802091ea: 92 05        	slli	a1, a1, 4
802091ec: aa 95        	add	a1, a1, a0
802091ee: 90 65        	ld	a2, 8(a1)
802091f0: 63 04 66 01  	beq	a2, s6, 0x802091f8 <.Lpcrel_hi670+0x6e>
802091f4: 01 46        	li	a2, 0
802091f6: 21 a0        	j	0x802091fe <.Lpcrel_hi670+0x74>
802091f8: 8c 61        	ld	a1, 0(a1)
802091fa: 8c 61        	ld	a1, 0(a1)
802091fc: 05 46        	li	a2, 1
802091fe: 32 e8        	sd	a2, 16(sp)
80209200: 2e ec        	sd	a1, 24(sp)
80209202: 0c 64        	ld	a1, 8(s0)
80209204: 92 05        	slli	a1, a1, 4
80209206: 2e 95        	add	a0, a0, a1
80209208: 10 65        	ld	a2, 8(a0)
8020920a: 08 61        	ld	a0, 0(a0)
8020920c: 8a 85        	mv	a1, sp
8020920e: 02 96        	jalr	a2
80209210: 49 e5        	bnez	a0, 0x8020929a <.Lpcrel_hi670+0x110>
80209212: c1 04        	addi	s1, s1, 16
80209214: 13 0a 8a fc  	addi	s4, s4, -56
80209218: 13 04 84 03  	addi	s0, s0, 56
8020921c: e3 1b 0a f6  	bnez	s4, 0x80209192 <.Lpcrel_hi670+0x8>
80209220: b1 a0        	j	0x8020926c <.Lpcrel_hi670+0xe2>
80209222: 03 ba 89 01  	ld	s4, 24(s3)
80209226: 63 08 0a 04  	beqz	s4, 0x80209276 <.Lpcrel_hi670+0xec>
8020922a: 83 b4 09 01  	ld	s1, 16(s3)
8020922e: 03 b4 09 00  	ld	s0, 0(s3)
80209232: 13 05 fa ff  	addi	a0, s4, -1
80209236: 12 05        	slli	a0, a0, 4
80209238: 11 81        	srli	a0, a0, 4
8020923a: 13 09 15 00  	addi	s2, a0, 1
8020923e: 21 04        	addi	s0, s0, 8
80209240: 12 0a        	slli	s4, s4, 4
80209242: a1 04        	addi	s1, s1, 8
80209244: 10 60        	ld	a2, 0(s0)
80209246: 01 ca        	beqz	a2, 0x80209256 <.Lpcrel_hi670+0xcc>
80209248: a2 76        	ld	a3, 40(sp)
8020924a: 02 75        	ld	a0, 32(sp)
8020924c: 83 35 84 ff  	ld	a1, -8(s0)
80209250: 94 6e        	ld	a3, 24(a3)
80209252: 82 96        	jalr	a3
80209254: 39 e1        	bnez	a0, 0x8020929a <.Lpcrel_hi670+0x110>
80209256: 90 60        	ld	a2, 0(s1)
80209258: 03 b5 84 ff  	ld	a0, -8(s1)
8020925c: 8a 85        	mv	a1, sp
8020925e: 02 96        	jalr	a2
80209260: 0d ed        	bnez	a0, 0x8020929a <.Lpcrel_hi670+0x110>
80209262: 41 04        	addi	s0, s0, 16
80209264: 41 1a        	addi	s4, s4, -16
80209266: c1 04        	addi	s1, s1, 16
80209268: e3 1e 0a fc  	bnez	s4, 0x80209244 <.Lpcrel_hi670+0xba>
8020926c: 03 b5 89 00  	ld	a0, 8(s3)
80209270: 63 68 a9 00  	bltu	s2, a0, 0x80209280 <.Lpcrel_hi670+0xf6>
80209274: 2d a0        	j	0x8020929e <.Lpcrel_hi670+0x114>
80209276: 01 49        	li	s2, 0
80209278: 03 b5 89 00  	ld	a0, 8(s3)
8020927c: 63 71 a9 02  	bgeu	s2, a0, 0x8020929e <.Lpcrel_hi670+0x114>
80209280: 03 b5 09 00  	ld	a0, 0(s3)
80209284: 12 09        	slli	s2, s2, 4
80209286: 2a 99        	add	s2, s2, a0
80209288: a2 76        	ld	a3, 40(sp)
8020928a: 02 75        	ld	a0, 32(sp)
8020928c: 83 35 09 00  	ld	a1, 0(s2)
80209290: 03 36 89 00  	ld	a2, 8(s2)
80209294: 94 6e        	ld	a3, 24(a3)
80209296: 82 96        	jalr	a3
80209298: 19 c1        	beqz	a0, 0x8020929e <.Lpcrel_hi670+0x114>
8020929a: 05 45        	li	a0, 1
8020929c: 11 a0        	j	0x802092a0 <.Lpcrel_hi670+0x116>
8020929e: 01 45        	li	a0, 0
802092a0: e6 70        	ld	ra, 120(sp)
802092a2: 46 74        	ld	s0, 112(sp)
802092a4: a6 74        	ld	s1, 104(sp)
802092a6: 06 79        	ld	s2, 96(sp)
802092a8: e6 69        	ld	s3, 88(sp)
802092aa: 46 6a        	ld	s4, 80(sp)
802092ac: a6 6a        	ld	s5, 72(sp)
802092ae: 06 6b        	ld	s6, 64(sp)
802092b0: 09 61        	addi	sp, sp, 128
802092b2: 82 80        	ret

00000000802092b4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
802092b4: 59 71        	addi	sp, sp, -112
802092b6: 86 f4        	sd	ra, 104(sp)
802092b8: a2 f0        	sd	s0, 96(sp)
802092ba: a6 ec        	sd	s1, 88(sp)
802092bc: ca e8        	sd	s2, 80(sp)
802092be: ce e4        	sd	s3, 72(sp)
802092c0: d2 e0        	sd	s4, 64(sp)
802092c2: 56 fc        	sd	s5, 56(sp)
802092c4: 5a f8        	sd	s6, 48(sp)
802092c6: 5e f4        	sd	s7, 40(sp)
802092c8: 62 f0        	sd	s8, 32(sp)
802092ca: 66 ec        	sd	s9, 24(sp)
802092cc: 6a e8        	sd	s10, 16(sp)
802092ce: 6e e4        	sd	s11, 8(sp)
802092d0: be 89        	mv	s3, a5
802092d2: 3a 89        	mv	s2, a4
802092d4: 36 8b        	mv	s6, a3
802092d6: 32 8a        	mv	s4, a2
802092d8: 2a 8c        	mv	s8, a0
802092da: b9 c1        	beqz	a1, 0x80209320 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
802092dc: 03 64 4c 03  	lwu	s0, 52(s8)
802092e0: 93 7c 14 00  	andi	s9, s0, 1
802092e4: b7 0a 11 00  	lui	s5, 272
802092e8: 63 84 0c 00  	beqz	s9, 0x802092f0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
802092ec: 93 0a b0 02  	li	s5, 43
802092f0: ce 9c        	add	s9, s9, s3
802092f2: 13 75 44 00  	andi	a0, s0, 4
802092f6: 15 cd        	beqz	a0, 0x80209332 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
802092f8: 13 05 00 02  	li	a0, 32
802092fc: 63 70 ab 04  	bgeu	s6, a0, 0x8020933c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
80209300: 01 45        	li	a0, 0
80209302: 63 03 0b 04  	beqz	s6, 0x80209348 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80209306: da 85        	mv	a1, s6
80209308: 52 86        	mv	a2, s4
8020930a: 83 06 06 00  	lb	a3, 0(a2)
8020930e: 05 06        	addi	a2, a2, 1
80209310: 93 a6 06 fc  	slti	a3, a3, -64
80209314: 93 c6 16 00  	xori	a3, a3, 1
80209318: fd 15        	addi	a1, a1, -1
8020931a: 36 95        	add	a0, a0, a3
8020931c: fd f5        	bnez	a1, 0x8020930a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
8020931e: 2d a0        	j	0x80209348 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80209320: 03 24 4c 03  	lw	s0, 52(s8)
80209324: 93 8c 19 00  	addi	s9, s3, 1
80209328: 93 0a d0 02  	li	s5, 45
8020932c: 13 75 44 00  	andi	a0, s0, 4
80209330: 61 f5        	bnez	a0, 0x802092f8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80209332: 01 4a        	li	s4, 0
80209334: 03 35 0c 00  	ld	a0, 0(s8)
80209338: 01 ed        	bnez	a0, 0x80209350 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
8020933a: 25 a8        	j	0x80209372 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020933c: 52 85        	mv	a0, s4
8020933e: da 85        	mv	a1, s6
80209340: 97 00 00 00  	auipc	ra, 0
80209344: e7 80 60 75  	jalr	1878(ra)
80209348: aa 9c        	add	s9, s9, a0
8020934a: 03 35 0c 00  	ld	a0, 0(s8)
8020934e: 15 c1        	beqz	a0, 0x80209372 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80209350: 03 3d 8c 00  	ld	s10, 8(s8)
80209354: 63 ff ac 01  	bgeu	s9, s10, 0x80209372 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80209358: 21 88        	andi	s0, s0, 8
8020935a: 35 ec        	bnez	s0, 0x802093d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
8020935c: 83 45 8c 03  	lbu	a1, 56(s8)
80209360: 05 46        	li	a2, 1
80209362: 33 05 9d 41  	sub	a0, s10, s9
80209366: 63 4f b6 0a  	blt	a2, a1, 0x80209424 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
8020936a: f1 e5        	bnez	a1, 0x80209436 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
8020936c: 2a 8d        	mv	s10, a0
8020936e: 2e 85        	mv	a0, a1
80209370: e1 a0        	j	0x80209438 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80209372: 03 34 0c 02  	ld	s0, 32(s8)
80209376: 83 34 8c 02  	ld	s1, 40(s8)
8020937a: 22 85        	mv	a0, s0
8020937c: a6 85        	mv	a1, s1
8020937e: 56 86        	mv	a2, s5
80209380: d2 86        	mv	a3, s4
80209382: 5a 87        	mv	a4, s6
80209384: 97 00 00 00  	auipc	ra, 0
80209388: e7 80 80 14  	jalr	328(ra)
8020938c: 85 4b        	li	s7, 1
8020938e: 0d c1        	beqz	a0, 0x802093b0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
80209390: 5e 85        	mv	a0, s7
80209392: a6 70        	ld	ra, 104(sp)
80209394: 06 74        	ld	s0, 96(sp)
80209396: e6 64        	ld	s1, 88(sp)
80209398: 46 69        	ld	s2, 80(sp)
8020939a: a6 69        	ld	s3, 72(sp)
8020939c: 06 6a        	ld	s4, 64(sp)
8020939e: e2 7a        	ld	s5, 56(sp)
802093a0: 42 7b        	ld	s6, 48(sp)
802093a2: a2 7b        	ld	s7, 40(sp)
802093a4: 02 7c        	ld	s8, 32(sp)
802093a6: e2 6c        	ld	s9, 24(sp)
802093a8: 42 6d        	ld	s10, 16(sp)
802093aa: a2 6d        	ld	s11, 8(sp)
802093ac: 65 61        	addi	sp, sp, 112
802093ae: 82 80        	ret
802093b0: 9c 6c        	ld	a5, 24(s1)
802093b2: 22 85        	mv	a0, s0
802093b4: ca 85        	mv	a1, s2
802093b6: 4e 86        	mv	a2, s3
802093b8: a6 70        	ld	ra, 104(sp)
802093ba: 06 74        	ld	s0, 96(sp)
802093bc: e6 64        	ld	s1, 88(sp)
802093be: 46 69        	ld	s2, 80(sp)
802093c0: a6 69        	ld	s3, 72(sp)
802093c2: 06 6a        	ld	s4, 64(sp)
802093c4: e2 7a        	ld	s5, 56(sp)
802093c6: 42 7b        	ld	s6, 48(sp)
802093c8: a2 7b        	ld	s7, 40(sp)
802093ca: 02 7c        	ld	s8, 32(sp)
802093cc: e2 6c        	ld	s9, 24(sp)
802093ce: 42 6d        	ld	s10, 16(sp)
802093d0: a2 6d        	ld	s11, 8(sp)
802093d2: 65 61        	addi	sp, sp, 112
802093d4: 82 87        	jr	a5
802093d6: 03 24 0c 03  	lw	s0, 48(s8)
802093da: 13 05 00 03  	li	a0, 48
802093de: 83 45 8c 03  	lbu	a1, 56(s8)
802093e2: 2e e0        	sd	a1, 0(sp)
802093e4: 83 3d 0c 02  	ld	s11, 32(s8)
802093e8: 83 34 8c 02  	ld	s1, 40(s8)
802093ec: 23 28 ac 02  	sw	a0, 48(s8)
802093f0: 85 4b        	li	s7, 1
802093f2: 23 0c 7c 03  	sb	s7, 56(s8)
802093f6: 6e 85        	mv	a0, s11
802093f8: a6 85        	mv	a1, s1
802093fa: 56 86        	mv	a2, s5
802093fc: d2 86        	mv	a3, s4
802093fe: 5a 87        	mv	a4, s6
80209400: 97 00 00 00  	auipc	ra, 0
80209404: e7 80 c0 0c  	jalr	204(ra)
80209408: 41 f5        	bnez	a0, 0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020940a: 22 8a        	mv	s4, s0
8020940c: 33 04 9d 41  	sub	s0, s10, s9
80209410: 05 04        	addi	s0, s0, 1
80209412: 7d 14        	addi	s0, s0, -1
80209414: 51 c8        	beqz	s0, 0x802094a8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
80209416: 90 70        	ld	a2, 32(s1)
80209418: 93 05 00 03  	li	a1, 48
8020941c: 6e 85        	mv	a0, s11
8020941e: 02 96        	jalr	a2
80209420: 6d d9        	beqz	a0, 0x80209412 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
80209422: bd b7        	j	0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80209424: 09 46        	li	a2, 2
80209426: 63 98 c5 00  	bne	a1, a2, 0x80209436 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
8020942a: 93 05 15 00  	addi	a1, a0, 1
8020942e: 05 81        	srli	a0, a0, 1
80209430: 13 dd 15 00  	srli	s10, a1, 1
80209434: 11 a0        	j	0x80209438 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80209436: 01 4d        	li	s10, 0
80209438: 83 3c 0c 02  	ld	s9, 32(s8)
8020943c: 83 3d 8c 02  	ld	s11, 40(s8)
80209440: 83 24 0c 03  	lw	s1, 48(s8)
80209444: 13 04 15 00  	addi	s0, a0, 1
80209448: 7d 14        	addi	s0, s0, -1
8020944a: 09 c8        	beqz	s0, 0x8020945c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
8020944c: 03 b6 0d 02  	ld	a2, 32(s11)
80209450: 66 85        	mv	a0, s9
80209452: a6 85        	mv	a1, s1
80209454: 02 96        	jalr	a2
80209456: 6d d9        	beqz	a0, 0x80209448 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
80209458: 85 4b        	li	s7, 1
8020945a: 1d bf        	j	0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020945c: 37 05 11 00  	lui	a0, 272
80209460: 85 4b        	li	s7, 1
80209462: e3 87 a4 f2  	beq	s1, a0, 0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80209466: 66 85        	mv	a0, s9
80209468: ee 85        	mv	a1, s11
8020946a: 56 86        	mv	a2, s5
8020946c: d2 86        	mv	a3, s4
8020946e: 5a 87        	mv	a4, s6
80209470: 97 00 00 00  	auipc	ra, 0
80209474: e7 80 c0 05  	jalr	92(ra)
80209478: 01 fd        	bnez	a0, 0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020947a: 83 b6 8d 01  	ld	a3, 24(s11)
8020947e: 66 85        	mv	a0, s9
80209480: ca 85        	mv	a1, s2
80209482: 4e 86        	mv	a2, s3
80209484: 82 96        	jalr	a3
80209486: 09 f5        	bnez	a0, 0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80209488: b3 09 a0 41  	neg	s3, s10
8020948c: 7d 5a        	li	s4, -1
8020948e: 7d 59        	li	s2, -1
80209490: 33 85 29 01  	add	a0, s3, s2
80209494: 63 08 45 03  	beq	a0, s4, 0x802094c4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
80209498: 03 b6 0d 02  	ld	a2, 32(s11)
8020949c: 66 85        	mv	a0, s9
8020949e: a6 85        	mv	a1, s1
802094a0: 02 96        	jalr	a2
802094a2: 05 09        	addi	s2, s2, 1
802094a4: 75 d5        	beqz	a0, 0x80209490 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
802094a6: 05 a0        	j	0x802094c6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
802094a8: 94 6c        	ld	a3, 24(s1)
802094aa: 6e 85        	mv	a0, s11
802094ac: ca 85        	mv	a1, s2
802094ae: 4e 86        	mv	a2, s3
802094b0: 82 96        	jalr	a3
802094b2: e3 1f 05 ec  	bnez	a0, 0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802094b6: 81 4b        	li	s7, 0
802094b8: 23 28 4c 03  	sw	s4, 48(s8)
802094bc: 02 65        	ld	a0, 0(sp)
802094be: 23 0c ac 02  	sb	a0, 56(s8)
802094c2: f9 b5        	j	0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802094c4: 6a 89        	mv	s2, s10
802094c6: b3 3b a9 01  	sltu	s7, s2, s10
802094ca: d9 b5        	j	0x80209390 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

00000000802094cc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
802094cc: 79 71        	addi	sp, sp, -48
802094ce: 06 f4        	sd	ra, 40(sp)
802094d0: 22 f0        	sd	s0, 32(sp)
802094d2: 26 ec        	sd	s1, 24(sp)
802094d4: 4a e8        	sd	s2, 16(sp)
802094d6: 4e e4        	sd	s3, 8(sp)
802094d8: 9b 07 06 00  	sext.w	a5, a2
802094dc: 37 08 11 00  	lui	a6, 272
802094e0: 3a 89        	mv	s2, a4
802094e2: b6 84        	mv	s1, a3
802094e4: 2e 84        	mv	s0, a1
802094e6: aa 89        	mv	s3, a0
802094e8: 63 89 07 01  	beq	a5, a6, 0x802094fa <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
802094ec: 14 70        	ld	a3, 32(s0)
802094ee: 4e 85        	mv	a0, s3
802094f0: b2 85        	mv	a1, a2
802094f2: 82 96        	jalr	a3
802094f4: aa 85        	mv	a1, a0
802094f6: 05 45        	li	a0, 1
802094f8: 91 ed        	bnez	a1, 0x80209514 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
802094fa: 81 cc        	beqz	s1, 0x80209512 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
802094fc: 1c 6c        	ld	a5, 24(s0)
802094fe: 4e 85        	mv	a0, s3
80209500: a6 85        	mv	a1, s1
80209502: 4a 86        	mv	a2, s2
80209504: a2 70        	ld	ra, 40(sp)
80209506: 02 74        	ld	s0, 32(sp)
80209508: e2 64        	ld	s1, 24(sp)
8020950a: 42 69        	ld	s2, 16(sp)
8020950c: a2 69        	ld	s3, 8(sp)
8020950e: 45 61        	addi	sp, sp, 48
80209510: 82 87        	jr	a5
80209512: 01 45        	li	a0, 0
80209514: a2 70        	ld	ra, 40(sp)
80209516: 02 74        	ld	s0, 32(sp)
80209518: e2 64        	ld	s1, 24(sp)
8020951a: 42 69        	ld	s2, 16(sp)
8020951c: a2 69        	ld	s3, 8(sp)
8020951e: 45 61        	addi	sp, sp, 48
80209520: 82 80        	ret

0000000080209522 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
80209522: 5d 71        	addi	sp, sp, -80
80209524: 86 e4        	sd	ra, 72(sp)
80209526: a2 e0        	sd	s0, 64(sp)
80209528: 26 fc        	sd	s1, 56(sp)
8020952a: 4a f8        	sd	s2, 48(sp)
8020952c: 4e f4        	sd	s3, 40(sp)
8020952e: 52 f0        	sd	s4, 32(sp)
80209530: 56 ec        	sd	s5, 24(sp)
80209532: 5a e8        	sd	s6, 16(sp)
80209534: 5e e4        	sd	s7, 8(sp)
80209536: 2a 8a        	mv	s4, a0
80209538: 83 32 05 00  	ld	t0, 0(a0)
8020953c: 08 69        	ld	a0, 16(a0)
8020953e: b3 e6 a2 00  	or	a3, t0, a0
80209542: b2 89        	mv	s3, a2
80209544: 2e 89        	mv	s2, a1
80209546: 63 84 06 16  	beqz	a3, 0x802096ae <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020954a: 63 07 05 10  	beqz	a0, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020954e: 03 37 8a 01  	ld	a4, 24(s4)
80209552: 01 45        	li	a0, 0
80209554: b3 06 39 01  	add	a3, s2, s3
80209558: 05 07        	addi	a4, a4, 1
8020955a: 37 03 11 00  	lui	t1, 272
8020955e: 93 08 f0 0d  	li	a7, 223
80209562: 13 08 00 0f  	li	a6, 240
80209566: 4a 86        	mv	a2, s2
80209568: 01 a8        	j	0x80209578 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
8020956a: 93 05 16 00  	addi	a1, a2, 1
8020956e: 11 8d        	sub	a0, a0, a2
80209570: 2e 95        	add	a0, a0, a1
80209572: 2e 86        	mv	a2, a1
80209574: 63 02 64 0e  	beq	s0, t1, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80209578: 7d 17        	addi	a4, a4, -1
8020957a: 25 c7        	beqz	a4, 0x802095e2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
8020957c: 63 0e d6 0c  	beq	a2, a3, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80209580: 83 05 06 00  	lb	a1, 0(a2)
80209584: 13 f4 f5 0f  	andi	s0, a1, 255
80209588: e3 d1 05 fe  	bgez	a1, 0x8020956a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
8020958c: 83 45 16 00  	lbu	a1, 1(a2)
80209590: 93 74 f4 01  	andi	s1, s0, 31
80209594: 93 f7 f5 03  	andi	a5, a1, 63
80209598: 63 f9 88 02  	bgeu	a7, s0, 0x802095ca <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
8020959c: 83 45 26 00  	lbu	a1, 2(a2)
802095a0: 9a 07        	slli	a5, a5, 6
802095a2: 93 f5 f5 03  	andi	a1, a1, 63
802095a6: cd 8f        	or	a5, a5, a1
802095a8: 63 67 04 03  	bltu	s0, a6, 0x802095d6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
802095ac: 83 45 36 00  	lbu	a1, 3(a2)
802095b0: f6 14        	slli	s1, s1, 61
802095b2: ad 90        	srli	s1, s1, 43
802095b4: 9a 07        	slli	a5, a5, 6
802095b6: 93 f5 f5 03  	andi	a1, a1, 63
802095ba: dd 8d        	or	a1, a1, a5
802095bc: 33 e4 95 00  	or	s0, a1, s1
802095c0: 63 0c 64 08  	beq	s0, t1, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802095c4: 93 05 46 00  	addi	a1, a2, 4
802095c8: 5d b7        	j	0x8020956e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802095ca: 93 05 26 00  	addi	a1, a2, 2
802095ce: 13 94 64 00  	slli	s0, s1, 6
802095d2: 5d 8c        	or	s0, s0, a5
802095d4: 69 bf        	j	0x8020956e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802095d6: 93 05 36 00  	addi	a1, a2, 3
802095da: 13 94 c4 00  	slli	s0, s1, 12
802095de: 5d 8c        	or	s0, s0, a5
802095e0: 79 b7        	j	0x8020956e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802095e2: 63 0b d6 06  	beq	a2, a3, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802095e6: 83 05 06 00  	lb	a1, 0(a2)
802095ea: 63 d3 05 04  	bgez	a1, 0x80209630 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802095ee: 93 f5 f5 0f  	andi	a1, a1, 255
802095f2: 93 06 00 0e  	li	a3, 224
802095f6: 63 ed d5 02  	bltu	a1, a3, 0x80209630 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802095fa: 93 06 00 0f  	li	a3, 240
802095fe: 63 e9 d5 02  	bltu	a1, a3, 0x80209630 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80209602: 83 46 16 00  	lbu	a3, 1(a2)
80209606: 03 47 26 00  	lbu	a4, 2(a2)
8020960a: 93 f6 f6 03  	andi	a3, a3, 63
8020960e: 13 77 f7 03  	andi	a4, a4, 63
80209612: 03 46 36 00  	lbu	a2, 3(a2)
80209616: f6 15        	slli	a1, a1, 61
80209618: ad 91        	srli	a1, a1, 43
8020961a: b2 06        	slli	a3, a3, 12
8020961c: 1a 07        	slli	a4, a4, 6
8020961e: d9 8e        	or	a3, a3, a4
80209620: 13 76 f6 03  	andi	a2, a2, 63
80209624: 55 8e        	or	a2, a2, a3
80209626: d1 8d        	or	a1, a1, a2
80209628: 37 06 11 00  	lui	a2, 272
8020962c: 63 86 c5 02  	beq	a1, a2, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80209630: 05 c1        	beqz	a0, 0x80209650 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80209632: 63 7d 35 01  	bgeu	a0, s3, 0x8020964c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
80209636: b3 05 a9 00  	add	a1, s2, a0
8020963a: 83 85 05 00  	lb	a1, 0(a1)
8020963e: 13 06 00 fc  	li	a2, -64
80209642: 63 d7 c5 00  	bge	a1, a2, 0x80209650 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80209646: 81 45        	li	a1, 0
80209648: 91 e5        	bnez	a1, 0x80209654 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
8020964a: 39 a0        	j	0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020964c: e3 1d 35 ff  	bne	a0, s3, 0x80209646 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
80209650: ca 85        	mv	a1, s2
80209652: 99 c1        	beqz	a1, 0x80209658 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80209654: aa 89        	mv	s3, a0
80209656: 2e 89        	mv	s2, a1
80209658: 63 8b 02 04  	beqz	t0, 0x802096ae <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020965c: 03 34 8a 00  	ld	s0, 8(s4)
80209660: 13 05 00 02  	li	a0, 32
80209664: 63 fd a9 02  	bgeu	s3, a0, 0x8020969e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
80209668: 01 45        	li	a0, 0
8020966a: 63 8e 09 00  	beqz	s3, 0x80209686 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
8020966e: ce 85        	mv	a1, s3
80209670: 4a 86        	mv	a2, s2
80209672: 83 06 06 00  	lb	a3, 0(a2)
80209676: 05 06        	addi	a2, a2, 1
80209678: 93 a6 06 fc  	slti	a3, a3, -64
8020967c: 93 c6 16 00  	xori	a3, a3, 1
80209680: fd 15        	addi	a1, a1, -1
80209682: 36 95        	add	a0, a0, a3
80209684: fd f5        	bnez	a1, 0x80209672 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
80209686: 63 74 85 02  	bgeu	a0, s0, 0x802096ae <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020968a: 83 45 8a 03  	lbu	a1, 56(s4)
8020968e: 05 46        	li	a2, 1
80209690: 33 05 a4 40  	sub	a0, s0, a0
80209694: 63 4f b6 02  	blt	a2, a1, 0x802096d2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
80209698: b1 c5        	beqz	a1, 0x802096e4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
8020969a: 81 4a        	li	s5, 0
8020969c: b1 a0        	j	0x802096e8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
8020969e: 4a 85        	mv	a0, s2
802096a0: ce 85        	mv	a1, s3
802096a2: 97 00 00 00  	auipc	ra, 0
802096a6: e7 80 40 3f  	jalr	1012(ra)
802096aa: e3 60 85 fe  	bltu	a0, s0, 0x8020968a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
802096ae: 83 35 8a 02  	ld	a1, 40(s4)
802096b2: 03 35 0a 02  	ld	a0, 32(s4)
802096b6: 9c 6d        	ld	a5, 24(a1)
802096b8: ca 85        	mv	a1, s2
802096ba: 4e 86        	mv	a2, s3
802096bc: a6 60        	ld	ra, 72(sp)
802096be: 06 64        	ld	s0, 64(sp)
802096c0: e2 74        	ld	s1, 56(sp)
802096c2: 42 79        	ld	s2, 48(sp)
802096c4: a2 79        	ld	s3, 40(sp)
802096c6: 02 7a        	ld	s4, 32(sp)
802096c8: e2 6a        	ld	s5, 24(sp)
802096ca: 42 6b        	ld	s6, 16(sp)
802096cc: a2 6b        	ld	s7, 8(sp)
802096ce: 61 61        	addi	sp, sp, 80
802096d0: 82 87        	jr	a5
802096d2: 09 46        	li	a2, 2
802096d4: 63 98 c5 00  	bne	a1, a2, 0x802096e4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
802096d8: 93 05 15 00  	addi	a1, a0, 1
802096dc: 05 81        	srli	a0, a0, 1
802096de: 93 da 15 00  	srli	s5, a1, 1
802096e2: 19 a0        	j	0x802096e8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
802096e4: aa 8a        	mv	s5, a0
802096e6: 01 45        	li	a0, 0
802096e8: 03 3b 0a 02  	ld	s6, 32(s4)
802096ec: 83 3b 8a 02  	ld	s7, 40(s4)
802096f0: 83 24 0a 03  	lw	s1, 48(s4)
802096f4: 13 04 15 00  	addi	s0, a0, 1
802096f8: 7d 14        	addi	s0, s0, -1
802096fa: 09 c8        	beqz	s0, 0x8020970c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
802096fc: 03 b6 0b 02  	ld	a2, 32(s7)
80209700: 5a 85        	mv	a0, s6
80209702: a6 85        	mv	a1, s1
80209704: 02 96        	jalr	a2
80209706: 6d d9        	beqz	a0, 0x802096f8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
80209708: 05 4a        	li	s4, 1
8020970a: 81 a0        	j	0x8020974a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
8020970c: 37 05 11 00  	lui	a0, 272
80209710: 05 4a        	li	s4, 1
80209712: 63 8c a4 02  	beq	s1, a0, 0x8020974a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80209716: 83 b6 8b 01  	ld	a3, 24(s7)
8020971a: 5a 85        	mv	a0, s6
8020971c: ca 85        	mv	a1, s2
8020971e: 4e 86        	mv	a2, s3
80209720: 82 96        	jalr	a3
80209722: 05 e5        	bnez	a0, 0x8020974a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80209724: 33 09 50 41  	neg	s2, s5
80209728: fd 59        	li	s3, -1
8020972a: 7d 54        	li	s0, -1
8020972c: 33 05 89 00  	add	a0, s2, s0
80209730: 63 0a 35 01  	beq	a0, s3, 0x80209744 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
80209734: 03 b6 0b 02  	ld	a2, 32(s7)
80209738: 5a 85        	mv	a0, s6
8020973a: a6 85        	mv	a1, s1
8020973c: 02 96        	jalr	a2
8020973e: 05 04        	addi	s0, s0, 1
80209740: 75 d5        	beqz	a0, 0x8020972c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80209742: 11 a0        	j	0x80209746 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
80209744: 56 84        	mv	s0, s5
80209746: 33 3a 54 01  	sltu	s4, s0, s5
8020974a: 52 85        	mv	a0, s4
8020974c: a6 60        	ld	ra, 72(sp)
8020974e: 06 64        	ld	s0, 64(sp)
80209750: e2 74        	ld	s1, 56(sp)
80209752: 42 79        	ld	s2, 48(sp)
80209754: a2 79        	ld	s3, 40(sp)
80209756: 02 7a        	ld	s4, 32(sp)
80209758: e2 6a        	ld	s5, 24(sp)
8020975a: 42 6b        	ld	s6, 16(sp)
8020975c: a2 6b        	ld	s7, 8(sp)
8020975e: 61 61        	addi	sp, sp, 80
80209760: 82 80        	ret

0000000080209762 <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h849c25fc121064dcE>:
80209762: 14 75        	ld	a3, 40(a0)
80209764: 08 71        	ld	a0, 32(a0)
80209766: 9c 6e        	ld	a5, 24(a3)
80209768: 82 87        	jr	a5

000000008020976a <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h7c8f9147b74bef39E>:
8020976a: 39 71        	addi	sp, sp, -64
8020976c: 06 fc        	sd	ra, 56(sp)
8020976e: 22 f8        	sd	s0, 48(sp)
80209770: 26 f4        	sd	s1, 40(sp)
80209772: 4a f0        	sd	s2, 32(sp)
80209774: 4e ec        	sd	s3, 24(sp)
80209776: 2a 84        	mv	s0, a0
80209778: 1c 75        	ld	a5, 40(a0)
8020977a: 08 71        	ld	a0, 32(a0)
8020977c: 9c 6f        	ld	a5, 24(a5)
8020977e: 3a 89        	mv	s2, a4
80209780: b6 89        	mv	s3, a3
80209782: b2 84        	mv	s1, a2
80209784: 82 97        	jalr	a5
80209786: 93 b5 14 00  	seqz	a1, s1
8020978a: 22 e4        	sd	s0, 8(sp)
8020978c: 23 08 a1 00  	sb	a0, 16(sp)
80209790: 02 e0        	sd	zero, 0(sp)
80209792: a3 08 b1 00  	sb	a1, 17(sp)
80209796: 0a 85        	mv	a0, sp
80209798: ce 85        	mv	a1, s3
8020979a: 4a 86        	mv	a2, s2
8020979c: 97 f0 ff ff  	auipc	ra, 1048575
802097a0: e7 80 20 68  	jalr	1666(ra)
802097a4: 02 65        	ld	a0, 0(sp)
802097a6: 83 45 01 01  	lbu	a1, 16(sp)
802097aa: 39 c5        	beqz	a0, 0x802097f8 <.Lpcrel_hi690+0x10>
802097ac: 05 44        	li	s0, 1
802097ae: b9 e5        	bnez	a1, 0x802097fc <.Lpcrel_hi690+0x14>
802097b0: 83 45 11 01  	lbu	a1, 17(sp)
802097b4: 7d 15        	addi	a0, a0, -1
802097b6: 13 35 15 00  	seqz	a0, a0
802097ba: a2 64        	ld	s1, 8(sp)
802097bc: b3 35 b0 00  	snez	a1, a1
802097c0: 6d 8d        	and	a0, a0, a1
802097c2: 05 c1        	beqz	a0, 0x802097e2 <.Lpcrel_hi691+0x10>
802097c4: 03 c5 44 03  	lbu	a0, 52(s1)
802097c8: 11 89        	andi	a0, a0, 4
802097ca: 01 ed        	bnez	a0, 0x802097e2 <.Lpcrel_hi691+0x10>
802097cc: 8c 74        	ld	a1, 40(s1)
802097ce: 88 70        	ld	a0, 32(s1)
802097d0: 94 6d        	ld	a3, 24(a1)

00000000802097d2 <.Lpcrel_hi691>:
802097d2: 97 35 00 00  	auipc	a1, 3
802097d6: 93 85 e5 e6  	addi	a1, a1, -402
802097da: 05 46        	li	a2, 1
802097dc: 05 44        	li	s0, 1
802097de: 82 96        	jalr	a3
802097e0: 11 ed        	bnez	a0, 0x802097fc <.Lpcrel_hi690+0x14>
802097e2: 8c 74        	ld	a1, 40(s1)
802097e4: 88 70        	ld	a0, 32(s1)
802097e6: 94 6d        	ld	a3, 24(a1)

00000000802097e8 <.Lpcrel_hi690>:
802097e8: 97 35 00 00  	auipc	a1, 3
802097ec: 93 85 75 d5  	addi	a1, a1, -681
802097f0: 05 46        	li	a2, 1
802097f2: 82 96        	jalr	a3
802097f4: 2a 84        	mv	s0, a0
802097f6: 19 a0        	j	0x802097fc <.Lpcrel_hi690+0x14>
802097f8: 33 34 b0 00  	snez	s0, a1
802097fc: 22 85        	mv	a0, s0
802097fe: e2 70        	ld	ra, 56(sp)
80209800: 42 74        	ld	s0, 48(sp)
80209802: a2 74        	ld	s1, 40(sp)
80209804: 02 79        	ld	s2, 32(sp)
80209806: e2 69        	ld	s3, 24(sp)
80209808: 21 61        	addi	sp, sp, 64
8020980a: 82 80        	ret

000000008020980c <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
8020980c: ae 86        	mv	a3, a1
8020980e: aa 85        	mv	a1, a0
80209810: 32 85        	mv	a0, a2
80209812: 36 86        	mv	a2, a3
80209814: 17 03 00 00  	auipc	t1, 0
80209818: 67 00 e3 d0  	jr	-754(t1)

000000008020981c <_ZN4core5slice5index26slice_start_index_len_fail17hd6f51de6120413ffE>:
8020981c: 59 71        	addi	sp, sp, -112
8020981e: 86 f4        	sd	ra, 104(sp)
80209820: 2a e4        	sd	a0, 8(sp)
80209822: 2e e8        	sd	a1, 16(sp)
80209824: 28 00        	addi	a0, sp, 8
80209826: aa e4        	sd	a0, 72(sp)

0000000080209828 <.Lpcrel_hi737>:
80209828: 17 15 00 00  	auipc	a0, 1
8020982c: 13 05 05 91  	addi	a0, a0, -1776
80209830: aa e8        	sd	a0, 80(sp)
80209832: 0c 08        	addi	a1, sp, 16
80209834: ae ec        	sd	a1, 88(sp)
80209836: aa f0        	sd	a0, 96(sp)

0000000080209838 <.Lpcrel_hi738>:
80209838: 17 35 00 00  	auipc	a0, 3
8020983c: 13 05 05 fa  	addi	a0, a0, -96
80209840: 2a ec        	sd	a0, 24(sp)
80209842: 09 45        	li	a0, 2
80209844: 2a f0        	sd	a0, 32(sp)
80209846: 02 fc        	sd	zero, 56(sp)
80209848: ac 00        	addi	a1, sp, 72
8020984a: 2e f4        	sd	a1, 40(sp)
8020984c: 2a f8        	sd	a0, 48(sp)
8020984e: 28 08        	addi	a0, sp, 24
80209850: b2 85        	mv	a1, a2
80209852: 97 f0 ff ff  	auipc	ra, 1048575
80209856: e7 80 80 1a  	jalr	424(ra)
8020985a: 00 00        	unimp	

000000008020985c <_ZN4core5slice5index24slice_end_index_len_fail17h8031fd358dee5796E>:
8020985c: 59 71        	addi	sp, sp, -112
8020985e: 86 f4        	sd	ra, 104(sp)
80209860: 2a e4        	sd	a0, 8(sp)
80209862: 2e e8        	sd	a1, 16(sp)
80209864: 28 00        	addi	a0, sp, 8
80209866: aa e4        	sd	a0, 72(sp)

0000000080209868 <.Lpcrel_hi739>:
80209868: 17 15 00 00  	auipc	a0, 1
8020986c: 13 05 05 8d  	addi	a0, a0, -1840
80209870: aa e8        	sd	a0, 80(sp)
80209872: 0c 08        	addi	a1, sp, 16
80209874: ae ec        	sd	a1, 88(sp)
80209876: aa f0        	sd	a0, 96(sp)

0000000080209878 <.Lpcrel_hi740>:
80209878: 17 35 00 00  	auipc	a0, 3
8020987c: 13 05 05 f8  	addi	a0, a0, -128
80209880: 2a ec        	sd	a0, 24(sp)
80209882: 09 45        	li	a0, 2
80209884: 2a f0        	sd	a0, 32(sp)
80209886: 02 fc        	sd	zero, 56(sp)
80209888: ac 00        	addi	a1, sp, 72
8020988a: 2e f4        	sd	a1, 40(sp)
8020988c: 2a f8        	sd	a0, 48(sp)
8020988e: 28 08        	addi	a0, sp, 24
80209890: b2 85        	mv	a1, a2
80209892: 97 f0 ff ff  	auipc	ra, 1048575
80209896: e7 80 80 16  	jalr	360(ra)
8020989a: 00 00        	unimp	

000000008020989c <_ZN4core3str8converts9from_utf817h13db059159561c5eE>:
8020989c: 5d 71        	addi	sp, sp, -80
8020989e: a2 e4        	sd	s0, 72(sp)
802098a0: a6 e0        	sd	s1, 64(sp)
802098a2: 4a fc        	sd	s2, 56(sp)
802098a4: 4e f8        	sd	s3, 48(sp)
802098a6: 52 f4        	sd	s4, 40(sp)
802098a8: 56 f0        	sd	s5, 32(sp)
802098aa: 5a ec        	sd	s6, 24(sp)
802098ac: 5e e8        	sd	s7, 16(sp)
802098ae: 62 e4        	sd	s8, 8(sp)
802098b0: 66 e0        	sd	s9, 0(sp)
802098b2: 63 03 06 1a  	beqz	a2, 0x80209a58 <.Lpcrel_hi759+0x130>
802098b6: 81 46        	li	a3, 0
802098b8: 13 07 16 ff  	addi	a4, a2, -15
802098bc: b3 37 e6 00  	sltu	a5, a2, a4
802098c0: fd 17        	addi	a5, a5, -1
802098c2: 7d 8f        	and	a4, a4, a5
802098c4: 93 87 75 00  	addi	a5, a1, 7
802098c8: e1 9b        	andi	a5, a5, -8
802098ca: 33 88 b7 40  	sub	a6, a5, a1
802098ce: 93 8c 85 00  	addi	s9, a1, 8

00000000802098d2 <.Lpcrel_hi758>:
802098d2: 97 37 00 00  	auipc	a5, 3
802098d6: 93 88 67 f4  	addi	a7, a5, -186
802098da: 91 42        	li	t0, 4
802098dc: 13 03 00 0f  	li	t1, 240
802098e0: 93 03 00 03  	li	t2, 48
802098e4: 13 0e f0 fb  	li	t3, -65
802098e8: 93 0e 40 0f  	li	t4, 244
802098ec: 13 0f f0 f8  	li	t5, -113
802098f0: 8d 4f        	li	t6, 3
802098f2: 93 0a 00 0e  	li	s5, 224
802098f6: 13 09 00 fa  	li	s2, -96
802098fa: 13 0a d0 0e  	li	s4, 237
802098fe: b1 49        	li	s3, 12
80209900: 09 4b        	li	s6, 2
80209902: 85 4b        	li	s7, 1
80209904: 21 a0        	j	0x8020990c <.Lpcrel_hi758+0x3a>
80209906: 85 06        	addi	a3, a3, 1
80209908: 63 f8 c6 14  	bgeu	a3, a2, 0x80209a58 <.Lpcrel_hi759+0x130>
8020990c: b3 87 d5 00  	add	a5, a1, a3
80209910: 03 c4 07 00  	lbu	s0, 0(a5)
80209914: 93 14 84 03  	slli	s1, s0, 56
80209918: 63 c5 04 04  	bltz	s1, 0x80209962 <.Lpcrel_hi759+0x3a>
8020991c: bb 07 d8 40  	subw	a5, a6, a3
80209920: 9d 8b        	andi	a5, a5, 7
80209922: f5 f3        	bnez	a5, 0x80209906 <.Lpcrel_hi758+0x34>
80209924: 63 f3 e6 02  	bgeu	a3, a4, 0x8020994a <.Lpcrel_hi759+0x22>

0000000080209928 <.Lpcrel_hi759>:
80209928: 97 97 0b 00  	auipc	a5, 185
8020992c: 03 b4 87 b5  	ld	s0, -1192(a5)
80209930: b3 87 d5 00  	add	a5, a1, a3
80209934: 9c 63        	ld	a5, 0(a5)
80209936: e1 8f        	and	a5, a5, s0
80209938: 89 eb        	bnez	a5, 0x8020994a <.Lpcrel_hi759+0x22>
8020993a: b3 87 dc 00  	add	a5, s9, a3
8020993e: 9c 63        	ld	a5, 0(a5)
80209940: e1 8f        	and	a5, a5, s0
80209942: 81 e7        	bnez	a5, 0x8020994a <.Lpcrel_hi759+0x22>
80209944: c1 06        	addi	a3, a3, 16
80209946: e3 e5 e6 fe  	bltu	a3, a4, 0x80209930 <.Lpcrel_hi759+0x8>
8020994a: 63 f5 c6 10  	bgeu	a3, a2, 0x80209a54 <.Lpcrel_hi759+0x12c>
8020994e: b3 87 d5 00  	add	a5, a1, a3
80209952: 83 87 07 00  	lb	a5, 0(a5)
80209956: 63 cf 07 0e  	bltz	a5, 0x80209a54 <.Lpcrel_hi759+0x12c>
8020995a: 85 06        	addi	a3, a3, 1
8020995c: e3 19 d6 fe  	bne	a2, a3, 0x8020994e <.Lpcrel_hi759+0x26>
80209960: e5 a8        	j	0x80209a58 <.Lpcrel_hi759+0x130>
80209962: b3 87 88 00  	add	a5, a7, s0
80209966: 83 c7 07 00  	lbu	a5, 0(a5)
8020996a: e1 94        	srai	s1, s1, 56
8020996c: 63 82 57 02  	beq	a5, t0, 0x80209990 <.Lpcrel_hi759+0x68>
80209970: 63 8e f7 03  	beq	a5, t6, 0x802099ac <.Lpcrel_hi759+0x84>
80209974: 63 99 67 0f  	bne	a5, s6, 0x80209a66 <.Lpcrel_hi759+0x13e>
80209978: 13 84 16 00  	addi	s0, a3, 1
8020997c: 63 72 c4 0e  	bgeu	s0, a2, 0x80209a60 <.Lpcrel_hi759+0x138>
80209980: b3 87 85 00  	add	a5, a1, s0
80209984: 83 87 07 00  	lb	a5, 0(a5)
80209988: 85 44        	li	s1, 1
8020998a: 63 53 fe 0c  	bge	t3, a5, 0x80209a50 <.Lpcrel_hi759+0x128>
8020998e: cd a0        	j	0x80209a70 <.Lpcrel_hi759+0x148>
80209990: 93 87 16 00  	addi	a5, a3, 1
80209994: 63 f8 c7 0c  	bgeu	a5, a2, 0x80209a64 <.Lpcrel_hi759+0x13c>
80209998: ae 97        	add	a5, a5, a1
8020999a: 03 8c 07 00  	lb	s8, 0(a5)
8020999e: 63 05 64 02  	beq	s0, t1, 0x802099c8 <.Lpcrel_hi759+0xa0>
802099a2: 63 1a d4 03  	bne	s0, t4, 0x802099d6 <.Lpcrel_hi759+0xae>
802099a6: 63 51 8f 05  	bge	t5, s8, 0x802099e8 <.Lpcrel_hi759+0xc0>
802099aa: 75 a8        	j	0x80209a66 <.Lpcrel_hi759+0x13e>
802099ac: 93 87 16 00  	addi	a5, a3, 1
802099b0: 63 fa c7 0a  	bgeu	a5, a2, 0x80209a64 <.Lpcrel_hi759+0x13c>
802099b4: ae 97        	add	a5, a5, a1
802099b6: 03 8c 07 00  	lb	s8, 0(a5)
802099ba: 63 0b 54 05  	beq	s0, s5, 0x80209a10 <.Lpcrel_hi759+0xe8>
802099be: 63 1e 44 05  	bne	s0, s4, 0x80209a1a <.Lpcrel_hi759+0xf2>
802099c2: 63 4d 2c 07  	blt	s8, s2, 0x80209a3c <.Lpcrel_hi759+0x114>
802099c6: 45 a0        	j	0x80209a66 <.Lpcrel_hi759+0x13e>
802099c8: 9b 07 0c 07  	addiw	a5, s8, 112
802099cc: 93 f7 f7 0f  	andi	a5, a5, 255
802099d0: 63 ec 77 00  	bltu	a5, t2, 0x802099e8 <.Lpcrel_hi759+0xc0>
802099d4: 49 a8        	j	0x80209a66 <.Lpcrel_hi759+0x13e>
802099d6: bd 24        	addiw	s1, s1, 15
802099d8: 93 f7 f4 0f  	andi	a5, s1, 255
802099dc: 93 b7 37 00  	sltiu	a5, a5, 3
802099e0: 13 24 0c fc  	slti	s0, s8, -64
802099e4: e1 8f        	and	a5, a5, s0
802099e6: c1 c3        	beqz	a5, 0x80209a66 <.Lpcrel_hi759+0x13e>
802099e8: 93 87 26 00  	addi	a5, a3, 2
802099ec: 63 fa c7 06  	bgeu	a5, a2, 0x80209a60 <.Lpcrel_hi759+0x138>
802099f0: ae 97        	add	a5, a5, a1
802099f2: 83 87 07 00  	lb	a5, 0(a5)
802099f6: 63 4a fe 06  	blt	t3, a5, 0x80209a6a <.Lpcrel_hi759+0x142>
802099fa: 13 84 36 00  	addi	s0, a3, 3
802099fe: 63 71 c4 06  	bgeu	s0, a2, 0x80209a60 <.Lpcrel_hi759+0x138>
80209a02: b3 87 85 00  	add	a5, a1, s0
80209a06: 83 87 07 00  	lb	a5, 0(a5)
80209a0a: 63 53 fe 04  	bge	t3, a5, 0x80209a50 <.Lpcrel_hi759+0x128>
80209a0e: 85 a0        	j	0x80209a6e <.Lpcrel_hi759+0x146>
80209a10: 93 77 0c fe  	andi	a5, s8, -32
80209a14: 63 84 27 03  	beq	a5, s2, 0x80209a3c <.Lpcrel_hi759+0x114>
80209a18: b9 a0        	j	0x80209a66 <.Lpcrel_hi759+0x13e>
80209a1a: 9b 87 f4 01  	addiw	a5, s1, 31
80209a1e: 93 f7 f7 0f  	andi	a5, a5, 255
80209a22: 63 f5 37 01  	bgeu	a5, s3, 0x80209a2c <.Lpcrel_hi759+0x104>
80209a26: 63 5b 8e 01  	bge	t3, s8, 0x80209a3c <.Lpcrel_hi759+0x114>
80209a2a: 35 a8        	j	0x80209a66 <.Lpcrel_hi759+0x13e>
80209a2c: f9 98        	andi	s1, s1, -2
80209a2e: c9 04        	addi	s1, s1, 18
80209a30: 93 b7 14 00  	seqz	a5, s1
80209a34: 13 24 0c fc  	slti	s0, s8, -64
80209a38: e1 8f        	and	a5, a5, s0
80209a3a: 95 c7        	beqz	a5, 0x80209a66 <.Lpcrel_hi759+0x13e>
80209a3c: 13 84 26 00  	addi	s0, a3, 2
80209a40: 63 70 c4 02  	bgeu	s0, a2, 0x80209a60 <.Lpcrel_hi759+0x138>
80209a44: b3 87 85 00  	add	a5, a1, s0
80209a48: 83 87 07 00  	lb	a5, 0(a5)
80209a4c: 63 4f fe 00  	blt	t3, a5, 0x80209a6a <.Lpcrel_hi759+0x142>
80209a50: 93 06 14 00  	addi	a3, s0, 1
80209a54: e3 ec c6 ea  	bltu	a3, a2, 0x8020990c <.Lpcrel_hi758+0x3a>
80209a58: 81 46        	li	a3, 0
80209a5a: 0c e5        	sd	a1, 8(a0)
80209a5c: 10 e9        	sd	a2, 16(a0)
80209a5e: 39 a8        	j	0x80209a7c <.Lpcrel_hi759+0x154>
80209a60: 81 4b        	li	s7, 0
80209a62: 39 a0        	j	0x80209a70 <.Lpcrel_hi759+0x148>
80209a64: 81 4b        	li	s7, 0
80209a66: 85 44        	li	s1, 1
80209a68: 21 a0        	j	0x80209a70 <.Lpcrel_hi759+0x148>
80209a6a: 89 44        	li	s1, 2
80209a6c: 11 a0        	j	0x80209a70 <.Lpcrel_hi759+0x148>
80209a6e: 8d 44        	li	s1, 3
80209a70: 14 e5        	sd	a3, 8(a0)
80209a72: 23 08 75 01  	sb	s7, 16(a0)
80209a76: a3 08 95 00  	sb	s1, 17(a0)
80209a7a: 85 46        	li	a3, 1
80209a7c: 14 e1        	sd	a3, 0(a0)
80209a7e: 26 64        	ld	s0, 72(sp)
80209a80: 86 64        	ld	s1, 64(sp)
80209a82: 62 79        	ld	s2, 56(sp)
80209a84: c2 79        	ld	s3, 48(sp)
80209a86: 22 7a        	ld	s4, 40(sp)
80209a88: 82 7a        	ld	s5, 32(sp)
80209a8a: 62 6b        	ld	s6, 24(sp)
80209a8c: c2 6b        	ld	s7, 16(sp)
80209a8e: 22 6c        	ld	s8, 8(sp)
80209a90: 82 6c        	ld	s9, 0(sp)
80209a92: 61 61        	addi	sp, sp, 80
80209a94: 82 80        	ret

0000000080209a96 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
80209a96: 2a 86        	mv	a2, a0
80209a98: 13 07 75 00  	addi	a4, a0, 7
80209a9c: 61 9b        	andi	a4, a4, -8
80209a9e: b3 02 a7 40  	sub	t0, a4, a0
80209aa2: 63 e7 55 00  	bltu	a1, t0, 0x80209ab0 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
80209aa6: 33 88 55 40  	sub	a6, a1, t0
80209aaa: a1 46        	li	a3, 8
80209aac: 63 7f d8 00  	bgeu	a6, a3, 0x80209aca <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
80209ab0: 01 45        	li	a0, 0
80209ab2: 99 c9        	beqz	a1, 0x80209ac8 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80209ab4: 83 06 06 00  	lb	a3, 0(a2)
80209ab8: 05 06        	addi	a2, a2, 1
80209aba: 93 a6 06 fc  	slti	a3, a3, -64
80209abe: 93 c6 16 00  	xori	a3, a3, 1
80209ac2: fd 15        	addi	a1, a1, -1
80209ac4: 36 95        	add	a0, a0, a3
80209ac6: fd f5        	bnez	a1, 0x80209ab4 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
80209ac8: 82 80        	ret
80209aca: 93 76 78 00  	andi	a3, a6, 7
80209ace: 81 45        	li	a1, 0
80209ad0: 63 0f c7 00  	beq	a4, a2, 0x80209aee <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
80209ad4: 33 07 e6 40  	sub	a4, a2, a4
80209ad8: b2 87        	mv	a5, a2
80209ada: 03 85 07 00  	lb	a0, 0(a5)
80209ade: 85 07        	addi	a5, a5, 1
80209ae0: 13 25 05 fc  	slti	a0, a0, -64
80209ae4: 13 45 15 00  	xori	a0, a0, 1
80209ae8: 05 07        	addi	a4, a4, 1
80209aea: aa 95        	add	a1, a1, a0
80209aec: 7d f7        	bnez	a4, 0x80209ada <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
80209aee: b2 92        	add	t0, t0, a2
80209af0: 01 46        	li	a2, 0
80209af2: 91 ce        	beqz	a3, 0x80209b0e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
80209af4: 13 77 88 ff  	andi	a4, a6, -8
80209af8: 16 97        	add	a4, a4, t0
80209afa: 03 05 07 00  	lb	a0, 0(a4)
80209afe: 05 07        	addi	a4, a4, 1
80209b00: 13 25 05 fc  	slti	a0, a0, -64
80209b04: 13 45 15 00  	xori	a0, a0, 1
80209b08: fd 16        	addi	a3, a3, -1
80209b0a: 2a 96        	add	a2, a2, a0
80209b0c: fd f6        	bnez	a3, 0x80209afa <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
80209b0e: 13 57 38 00  	srli	a4, a6, 3

0000000080209b12 <.Lpcrel_hi762>:
80209b12: 17 95 0b 00  	auipc	a0, 185
80209b16: 03 3f e5 97  	ld	t5, -1666(a0)

0000000080209b1a <.Lpcrel_hi763>:
80209b1a: 17 95 0b 00  	auipc	a0, 185
80209b1e: 83 38 e5 97  	ld	a7, -1666(a0)
80209b22: 37 15 00 10  	lui	a0, 65537
80209b26: 12 05        	slli	a0, a0, 4
80209b28: 05 05        	addi	a0, a0, 1
80209b2a: 42 05        	slli	a0, a0, 16
80209b2c: 13 08 15 00  	addi	a6, a0, 1
80209b30: 33 05 b6 00  	add	a0, a2, a1
80209b34: 1d a0        	j	0x80209b5a <.Lpcrel_hi763+0x40>
80209b36: 93 12 3e 00  	slli	t0, t3, 3
80209b3a: 9a 92        	add	t0, t0, t1
80209b3c: 33 87 c3 41  	sub	a4, t2, t3
80209b40: 13 76 3e 00  	andi	a2, t3, 3
80209b44: b3 f6 15 01  	and	a3, a1, a7
80209b48: a1 81        	srli	a1, a1, 8
80209b4a: b3 f5 15 01  	and	a1, a1, a7
80209b4e: b6 95        	add	a1, a1, a3
80209b50: b3 85 05 03  	mul	a1, a1, a6
80209b54: c1 91        	srli	a1, a1, 48
80209b56: 2e 95        	add	a0, a0, a1
80209b58: 35 ee        	bnez	a2, 0x80209bd4 <.Lpcrel_hi763+0xba>
80209b5a: 3d d7        	beqz	a4, 0x80209ac8 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80209b5c: ba 83        	mv	t2, a4
80209b5e: 16 83        	mv	t1, t0
80209b60: 93 05 00 0c  	li	a1, 192
80209b64: 3a 8e        	mv	t3, a4
80209b66: 63 64 b7 00  	bltu	a4, a1, 0x80209b6e <.Lpcrel_hi763+0x54>
80209b6a: 13 0e 00 0c  	li	t3, 192
80209b6e: 93 75 ce 0f  	andi	a1, t3, 252
80209b72: 93 97 35 00  	slli	a5, a1, 3
80209b76: b3 0e f3 00  	add	t4, t1, a5
80209b7a: d5 dd        	beqz	a1, 0x80209b36 <.Lpcrel_hi763+0x1c>
80209b7c: 81 45        	li	a1, 0
80209b7e: 1a 86        	mv	a2, t1
80209b80: 5d da        	beqz	a2, 0x80209b36 <.Lpcrel_hi763+0x1c>
80209b82: 18 62        	ld	a4, 0(a2)
80209b84: 93 47 f7 ff  	not	a5, a4
80209b88: 9d 83        	srli	a5, a5, 7
80209b8a: 19 83        	srli	a4, a4, 6
80209b8c: 14 66        	ld	a3, 8(a2)
80209b8e: 5d 8f        	or	a4, a4, a5
80209b90: 33 77 e7 01  	and	a4, a4, t5
80209b94: ba 95        	add	a1, a1, a4
80209b96: 13 c7 f6 ff  	not	a4, a3
80209b9a: 1d 83        	srli	a4, a4, 7
80209b9c: 1c 6a        	ld	a5, 16(a2)
80209b9e: 99 82        	srli	a3, a3, 6
80209ba0: d9 8e        	or	a3, a3, a4
80209ba2: b3 f6 e6 01  	and	a3, a3, t5
80209ba6: 13 c7 f7 ff  	not	a4, a5
80209baa: 1d 83        	srli	a4, a4, 7
80209bac: 99 83        	srli	a5, a5, 6
80209bae: 5d 8f        	or	a4, a4, a5
80209bb0: 1c 6e        	ld	a5, 24(a2)
80209bb2: 33 77 e7 01  	and	a4, a4, t5
80209bb6: ba 96        	add	a3, a3, a4
80209bb8: b6 95        	add	a1, a1, a3
80209bba: 93 c6 f7 ff  	not	a3, a5
80209bbe: 9d 82        	srli	a3, a3, 7
80209bc0: 99 83        	srli	a5, a5, 6
80209bc2: dd 8e        	or	a3, a3, a5
80209bc4: b3 f6 e6 01  	and	a3, a3, t5
80209bc8: 13 06 06 02  	addi	a2, a2, 32
80209bcc: b6 95        	add	a1, a1, a3
80209bce: e3 19 d6 fb  	bne	a2, t4, 0x80209b80 <.Lpcrel_hi763+0x66>
80209bd2: 95 b7        	j	0x80209b36 <.Lpcrel_hi763+0x1c>
80209bd4: 63 0a 03 02  	beqz	t1, 0x80209c08 <.Lpcrel_hi763+0xee>
80209bd8: 93 05 00 0c  	li	a1, 192
80209bdc: 63 e4 b3 00  	bltu	t2, a1, 0x80209be4 <.Lpcrel_hi763+0xca>
80209be0: 93 03 00 0c  	li	t2, 192
80209be4: 81 45        	li	a1, 0
80209be6: 13 f6 33 00  	andi	a2, t2, 3
80209bea: 0e 06        	slli	a2, a2, 3
80209bec: 83 b6 0e 00  	ld	a3, 0(t4)
80209bf0: a1 0e        	addi	t4, t4, 8
80209bf2: 13 c7 f6 ff  	not	a4, a3
80209bf6: 1d 83        	srli	a4, a4, 7
80209bf8: 99 82        	srli	a3, a3, 6
80209bfa: d9 8e        	or	a3, a3, a4
80209bfc: b3 f6 e6 01  	and	a3, a3, t5
80209c00: 61 16        	addi	a2, a2, -8
80209c02: b6 95        	add	a1, a1, a3
80209c04: 65 f6        	bnez	a2, 0x80209bec <.Lpcrel_hi763+0xd2>
80209c06: 11 a0        	j	0x80209c0a <.Lpcrel_hi763+0xf0>
80209c08: 81 45        	li	a1, 0
80209c0a: 33 f6 15 01  	and	a2, a1, a7
80209c0e: a1 81        	srli	a1, a1, 8
80209c10: b3 f5 15 01  	and	a1, a1, a7
80209c14: b2 95        	add	a1, a1, a2
80209c16: b3 85 05 03  	mul	a1, a1, a6
80209c1a: c1 91        	srli	a1, a1, 48
80209c1c: 2e 95        	add	a0, a0, a1
80209c1e: 82 80        	ret

0000000080209c20 <_ZN69_$LT$core..num..nonzero..NonZeroUsize$u20$as$u20$core..fmt..Debug$GT$3fmt17hd14b7b131e7caa18E>:
80209c20: 41 11        	addi	sp, sp, -16
80209c22: 06 e4        	sd	ra, 8(sp)
80209c24: 08 61        	ld	a0, 0(a0)
80209c26: 2a e0        	sd	a0, 0(sp)
80209c28: 0a 85        	mv	a0, sp
80209c2a: 97 00 00 00  	auipc	ra, 0
80209c2e: e7 80 20 28  	jalr	642(ra)
80209c32: a2 60        	ld	ra, 8(sp)
80209c34: 41 01        	addi	sp, sp, 16
80209c36: 82 80        	ret

0000000080209c38 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E>:
80209c38: 75 71        	addi	sp, sp, -144
80209c3a: 06 e5        	sd	ra, 136(sp)
80209c3c: 2e 88        	mv	a6, a1
80209c3e: 81 47        	li	a5, 0
80209c40: 14 61        	ld	a3, 0(a0)
80209c42: 30 01        	addi	a2, sp, 136
80209c44: a9 48        	li	a7, 10
80209c46: bd 42        	li	t0, 15
80209c48: 21 a8        	j	0x80209c60 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x28>
80209c4a: 13 07 f6 ff  	addi	a4, a2, -1
80209c4e: 93 56 45 00  	srli	a3, a0, 4
80209c52: 9a 95        	add	a1, a1, t1
80209c54: a3 0f b6 fe  	sb	a1, -1(a2)
80209c58: 85 07        	addi	a5, a5, 1
80209c5a: 3a 86        	mv	a2, a4
80209c5c: 63 fc a2 00  	bgeu	t0, a0, 0x80209c74 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x3c>
80209c60: 36 85        	mv	a0, a3
80209c62: 93 f5 f6 00  	andi	a1, a3, 15
80209c66: 13 03 00 03  	li	t1, 48
80209c6a: e3 e0 15 ff  	bltu	a1, a7, 0x80209c4a <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x12>
80209c6e: 13 03 70 05  	li	t1, 87
80209c72: e1 bf        	j	0x80209c4a <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x12>
80209c74: 13 05 00 08  	li	a0, 128
80209c78: 1d 8d        	sub	a0, a0, a5
80209c7a: 93 05 10 08  	li	a1, 129
80209c7e: 63 70 b5 02  	bgeu	a0, a1, 0x80209c9e <.Lpcrel_hi1415>

0000000080209c82 <.Lpcrel_hi1416>:
80209c82: 17 35 00 00  	auipc	a0, 3
80209c86: 13 06 e5 a1  	addi	a2, a0, -1506
80209c8a: 85 45        	li	a1, 1
80209c8c: 89 46        	li	a3, 2
80209c8e: 42 85        	mv	a0, a6
80209c90: 97 f0 ff ff  	auipc	ra, 1048575
80209c94: e7 80 40 62  	jalr	1572(ra)
80209c98: aa 60        	ld	ra, 136(sp)
80209c9a: 49 61        	addi	sp, sp, 144
80209c9c: 82 80        	ret

0000000080209c9e <.Lpcrel_hi1415>:
80209c9e: 97 35 00 00  	auipc	a1, 3
80209ca2: 13 86 a5 9e  	addi	a2, a1, -1558
80209ca6: 93 05 00 08  	li	a1, 128
80209caa: 97 00 00 00  	auipc	ra, 0
80209cae: e7 80 20 b7  	jalr	-1166(ra)
80209cb2: 00 00        	unimp	

0000000080209cb4 <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE>:
80209cb4: 75 71        	addi	sp, sp, -144
80209cb6: 06 e5        	sd	ra, 136(sp)
80209cb8: 2e 88        	mv	a6, a1
80209cba: 83 e5 45 03  	lwu	a1, 52(a1)
80209cbe: 13 f6 05 01  	andi	a2, a1, 16
80209cc2: 11 ee        	bnez	a2, 0x80209cde <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE+0x2a>
80209cc4: 93 f5 05 02  	andi	a1, a1, 32
80209cc8: a5 e5        	bnez	a1, 0x80209d30 <.Lpcrel_hi1444+0xa>
80209cca: 03 45 05 00  	lbu	a0, 0(a0)
80209cce: 85 45        	li	a1, 1
80209cd0: 42 86        	mv	a2, a6
80209cd2: aa 60        	ld	ra, 136(sp)
80209cd4: 49 61        	addi	sp, sp, 144
80209cd6: 17 03 00 00  	auipc	t1, 0
80209cda: 67 00 c3 2c  	jr	716(t1)
80209cde: 81 47        	li	a5, 0
80209ce0: 83 45 05 00  	lbu	a1, 0(a0)
80209ce4: 34 01        	addi	a3, sp, 136
80209ce6: a9 48        	li	a7, 10
80209ce8: bd 42        	li	t0, 15
80209cea: 31 a8        	j	0x80209d06 <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE+0x52>
80209cec: 13 87 f6 ff  	addi	a4, a3, -1
80209cf0: 13 f6 f5 0f  	andi	a2, a1, 255
80209cf4: 93 55 46 00  	srli	a1, a2, 4
80209cf8: 1a 95        	add	a0, a0, t1
80209cfa: a3 8f a6 fe  	sb	a0, -1(a3)
80209cfe: 85 07        	addi	a5, a5, 1
80209d00: ba 86        	mv	a3, a4
80209d02: 63 fb c2 00  	bgeu	t0, a2, 0x80209d18 <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE+0x64>
80209d06: 13 f5 f5 00  	andi	a0, a1, 15
80209d0a: 13 03 00 03  	li	t1, 48
80209d0e: e3 6f 15 fd  	bltu	a0, a7, 0x80209cec <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE+0x38>
80209d12: 13 03 70 05  	li	t1, 87
80209d16: d9 bf        	j	0x80209cec <_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17h31876c8ff37260dfE+0x38>
80209d18: 13 05 00 08  	li	a0, 128
80209d1c: 1d 8d        	sub	a0, a0, a5
80209d1e: 93 05 10 08  	li	a1, 129
80209d22: 63 79 b5 06  	bgeu	a0, a1, 0x80209d94 <.Lpcrel_hi1443>

0000000080209d26 <.Lpcrel_hi1444>:
80209d26: 17 35 00 00  	auipc	a0, 3
80209d2a: 13 06 a5 97  	addi	a2, a0, -1670
80209d2e: 89 a8        	j	0x80209d80 <.Lpcrel_hi1446+0x8>
80209d30: 81 47        	li	a5, 0
80209d32: 83 45 05 00  	lbu	a1, 0(a0)
80209d36: 34 01        	addi	a3, sp, 136
80209d38: a9 48        	li	a7, 10
80209d3a: bd 42        	li	t0, 15
80209d3c: 31 a8        	j	0x80209d58 <.Lpcrel_hi1444+0x32>
80209d3e: 13 87 f6 ff  	addi	a4, a3, -1
80209d42: 13 f6 f5 0f  	andi	a2, a1, 255
80209d46: 93 55 46 00  	srli	a1, a2, 4
80209d4a: 1a 95        	add	a0, a0, t1
80209d4c: a3 8f a6 fe  	sb	a0, -1(a3)
80209d50: 85 07        	addi	a5, a5, 1
80209d52: ba 86        	mv	a3, a4
80209d54: 63 fb c2 00  	bgeu	t0, a2, 0x80209d6a <.Lpcrel_hi1444+0x44>
80209d58: 13 f5 f5 00  	andi	a0, a1, 15
80209d5c: 13 03 00 03  	li	t1, 48
80209d60: e3 6f 15 fd  	bltu	a0, a7, 0x80209d3e <.Lpcrel_hi1444+0x18>
80209d64: 13 03 70 03  	li	t1, 55
80209d68: d9 bf        	j	0x80209d3e <.Lpcrel_hi1444+0x18>
80209d6a: 13 05 00 08  	li	a0, 128
80209d6e: 1d 8d        	sub	a0, a0, a5
80209d70: 93 05 10 08  	li	a1, 129
80209d74: 63 75 b5 02  	bgeu	a0, a1, 0x80209d9e <.Lpcrel_hi1445>

0000000080209d78 <.Lpcrel_hi1446>:
80209d78: 17 35 00 00  	auipc	a0, 3
80209d7c: 13 06 85 92  	addi	a2, a0, -1752
80209d80: 85 45        	li	a1, 1
80209d82: 89 46        	li	a3, 2
80209d84: 42 85        	mv	a0, a6
80209d86: 97 f0 ff ff  	auipc	ra, 1048575
80209d8a: e7 80 e0 52  	jalr	1326(ra)
80209d8e: aa 60        	ld	ra, 136(sp)
80209d90: 49 61        	addi	sp, sp, 144
80209d92: 82 80        	ret

0000000080209d94 <.Lpcrel_hi1443>:
80209d94: 97 35 00 00  	auipc	a1, 3
80209d98: 13 86 45 8f  	addi	a2, a1, -1804
80209d9c: 29 a0        	j	0x80209da6 <.Lpcrel_hi1445+0x8>

0000000080209d9e <.Lpcrel_hi1445>:
80209d9e: 97 35 00 00  	auipc	a1, 3
80209da2: 13 86 a5 8e  	addi	a2, a1, -1814
80209da6: 93 05 00 08  	li	a1, 128
80209daa: 97 00 00 00  	auipc	ra, 0
80209dae: e7 80 20 a7  	jalr	-1422(ra)
80209db2: 00 00        	unimp	

0000000080209db4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE>:
80209db4: 75 71        	addi	sp, sp, -144
80209db6: 06 e5        	sd	ra, 136(sp)
80209db8: 2e 88        	mv	a6, a1
80209dba: 83 e5 45 03  	lwu	a1, 52(a1)
80209dbe: 13 f6 05 01  	andi	a2, a1, 16
80209dc2: 11 ee        	bnez	a2, 0x80209dde <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x2a>
80209dc4: 93 f5 05 02  	andi	a1, a1, 32
80209dc8: b5 e1        	bnez	a1, 0x80209e2c <.Lpcrel_hi1452+0xa>
80209dca: 03 65 05 00  	lwu	a0, 0(a0)
80209dce: 85 45        	li	a1, 1
80209dd0: 42 86        	mv	a2, a6
80209dd2: aa 60        	ld	ra, 136(sp)
80209dd4: 49 61        	addi	sp, sp, 144
80209dd6: 17 03 00 00  	auipc	t1, 0
80209dda: 67 00 c3 1c  	jr	460(t1)
80209dde: 81 47        	li	a5, 0
80209de0: 14 41        	lw	a3, 0(a0)
80209de2: 30 01        	addi	a2, sp, 136
80209de4: a9 48        	li	a7, 10
80209de6: bd 42        	li	t0, 15
80209de8: 21 a8        	j	0x80209e00 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x4c>
80209dea: 13 07 f6 ff  	addi	a4, a2, -1
80209dee: 9b 56 45 00  	srliw	a3, a0, 4
80209df2: 9a 95        	add	a1, a1, t1
80209df4: a3 0f b6 fe  	sb	a1, -1(a2)
80209df8: 85 07        	addi	a5, a5, 1
80209dfa: 3a 86        	mv	a2, a4
80209dfc: 63 fc a2 00  	bgeu	t0, a0, 0x80209e14 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x60>
80209e00: 36 85        	mv	a0, a3
80209e02: 93 f5 f6 00  	andi	a1, a3, 15
80209e06: 13 03 00 03  	li	t1, 48
80209e0a: e3 e0 15 ff  	bltu	a1, a7, 0x80209dea <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
80209e0e: 13 03 70 05  	li	t1, 87
80209e12: e1 bf        	j	0x80209dea <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
80209e14: 13 05 00 08  	li	a0, 128
80209e18: 1d 8d        	sub	a0, a0, a5
80209e1a: 93 05 10 08  	li	a1, 129
80209e1e: 63 77 b5 06  	bgeu	a0, a1, 0x80209e8c <.Lpcrel_hi1451>

0000000080209e22 <.Lpcrel_hi1452>:
80209e22: 17 35 00 00  	auipc	a0, 3
80209e26: 13 06 e5 87  	addi	a2, a0, -1922
80209e2a: b9 a0        	j	0x80209e78 <.Lpcrel_hi1454+0x8>
80209e2c: 81 47        	li	a5, 0
80209e2e: 14 41        	lw	a3, 0(a0)
80209e30: 30 01        	addi	a2, sp, 136
80209e32: a9 48        	li	a7, 10
80209e34: bd 42        	li	t0, 15
80209e36: 21 a8        	j	0x80209e4e <.Lpcrel_hi1452+0x2c>
80209e38: 13 07 f6 ff  	addi	a4, a2, -1
80209e3c: 9b 56 45 00  	srliw	a3, a0, 4
80209e40: 9a 95        	add	a1, a1, t1
80209e42: a3 0f b6 fe  	sb	a1, -1(a2)
80209e46: 85 07        	addi	a5, a5, 1
80209e48: 3a 86        	mv	a2, a4
80209e4a: 63 fc a2 00  	bgeu	t0, a0, 0x80209e62 <.Lpcrel_hi1452+0x40>
80209e4e: 36 85        	mv	a0, a3
80209e50: 93 f5 f6 00  	andi	a1, a3, 15
80209e54: 13 03 00 03  	li	t1, 48
80209e58: e3 e0 15 ff  	bltu	a1, a7, 0x80209e38 <.Lpcrel_hi1452+0x16>
80209e5c: 13 03 70 03  	li	t1, 55
80209e60: e1 bf        	j	0x80209e38 <.Lpcrel_hi1452+0x16>
80209e62: 13 05 00 08  	li	a0, 128
80209e66: 1d 8d        	sub	a0, a0, a5
80209e68: 93 05 10 08  	li	a1, 129
80209e6c: 63 75 b5 02  	bgeu	a0, a1, 0x80209e96 <.Lpcrel_hi1453>

0000000080209e70 <.Lpcrel_hi1454>:
80209e70: 17 35 00 00  	auipc	a0, 3
80209e74: 13 06 05 83  	addi	a2, a0, -2000
80209e78: 85 45        	li	a1, 1
80209e7a: 89 46        	li	a3, 2
80209e7c: 42 85        	mv	a0, a6
80209e7e: 97 f0 ff ff  	auipc	ra, 1048575
80209e82: e7 80 60 43  	jalr	1078(ra)
80209e86: aa 60        	ld	ra, 136(sp)
80209e88: 49 61        	addi	sp, sp, 144
80209e8a: 82 80        	ret

0000000080209e8c <.Lpcrel_hi1451>:
80209e8c: 97 25 00 00  	auipc	a1, 2
80209e90: 13 86 c5 7f  	addi	a2, a1, 2044
80209e94: 29 a0        	j	0x80209e9e <.Lpcrel_hi1453+0x8>

0000000080209e96 <.Lpcrel_hi1453>:
80209e96: 97 25 00 00  	auipc	a1, 2
80209e9a: 13 86 25 7f  	addi	a2, a1, 2034
80209e9e: 93 05 00 08  	li	a1, 128
80209ea2: 97 00 00 00  	auipc	ra, 0
80209ea6: e7 80 a0 97  	jalr	-1670(ra)
80209eaa: 00 00        	unimp	

0000000080209eac <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E>:
80209eac: 75 71        	addi	sp, sp, -144
80209eae: 06 e5        	sd	ra, 136(sp)
80209eb0: 2e 88        	mv	a6, a1
80209eb2: 83 e5 45 03  	lwu	a1, 52(a1)
80209eb6: 13 f6 05 01  	andi	a2, a1, 16
80209eba: 09 ee        	bnez	a2, 0x80209ed4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x28>
80209ebc: 93 f5 05 02  	andi	a1, a1, 32
80209ec0: ad e1        	bnez	a1, 0x80209f22 <.Lpcrel_hi1456+0xa>
80209ec2: 08 61        	ld	a0, 0(a0)
80209ec4: 85 45        	li	a1, 1
80209ec6: 42 86        	mv	a2, a6
80209ec8: aa 60        	ld	ra, 136(sp)
80209eca: 49 61        	addi	sp, sp, 144
80209ecc: 17 03 00 00  	auipc	t1, 0
80209ed0: 67 00 63 0d  	jr	214(t1)
80209ed4: 81 47        	li	a5, 0
80209ed6: 14 61        	ld	a3, 0(a0)
80209ed8: 30 01        	addi	a2, sp, 136
80209eda: a9 48        	li	a7, 10
80209edc: bd 42        	li	t0, 15
80209ede: 21 a8        	j	0x80209ef6 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x4a>
80209ee0: 13 07 f6 ff  	addi	a4, a2, -1
80209ee4: 93 56 45 00  	srli	a3, a0, 4
80209ee8: 9a 95        	add	a1, a1, t1
80209eea: a3 0f b6 fe  	sb	a1, -1(a2)
80209eee: 85 07        	addi	a5, a5, 1
80209ef0: 3a 86        	mv	a2, a4
80209ef2: 63 fc a2 00  	bgeu	t0, a0, 0x80209f0a <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x5e>
80209ef6: 36 85        	mv	a0, a3
80209ef8: 93 f5 f6 00  	andi	a1, a3, 15
80209efc: 13 03 00 03  	li	t1, 48
80209f00: e3 e0 15 ff  	bltu	a1, a7, 0x80209ee0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
80209f04: 13 03 70 05  	li	t1, 87
80209f08: e1 bf        	j	0x80209ee0 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
80209f0a: 13 05 00 08  	li	a0, 128
80209f0e: 1d 8d        	sub	a0, a0, a5
80209f10: 93 05 10 08  	li	a1, 129
80209f14: 63 77 b5 06  	bgeu	a0, a1, 0x80209f82 <.Lpcrel_hi1455>

0000000080209f18 <.Lpcrel_hi1456>:
80209f18: 17 25 00 00  	auipc	a0, 2
80209f1c: 13 06 85 78  	addi	a2, a0, 1928
80209f20: b9 a0        	j	0x80209f6e <.Lpcrel_hi1458+0x8>
80209f22: 81 47        	li	a5, 0
80209f24: 14 61        	ld	a3, 0(a0)
80209f26: 30 01        	addi	a2, sp, 136
80209f28: a9 48        	li	a7, 10
80209f2a: bd 42        	li	t0, 15
80209f2c: 21 a8        	j	0x80209f44 <.Lpcrel_hi1456+0x2c>
80209f2e: 13 07 f6 ff  	addi	a4, a2, -1
80209f32: 93 56 45 00  	srli	a3, a0, 4
80209f36: 9a 95        	add	a1, a1, t1
80209f38: a3 0f b6 fe  	sb	a1, -1(a2)
80209f3c: 85 07        	addi	a5, a5, 1
80209f3e: 3a 86        	mv	a2, a4
80209f40: 63 fc a2 00  	bgeu	t0, a0, 0x80209f58 <.Lpcrel_hi1456+0x40>
80209f44: 36 85        	mv	a0, a3
80209f46: 93 f5 f6 00  	andi	a1, a3, 15
80209f4a: 13 03 00 03  	li	t1, 48
80209f4e: e3 e0 15 ff  	bltu	a1, a7, 0x80209f2e <.Lpcrel_hi1456+0x16>
80209f52: 13 03 70 03  	li	t1, 55
80209f56: e1 bf        	j	0x80209f2e <.Lpcrel_hi1456+0x16>
80209f58: 13 05 00 08  	li	a0, 128
80209f5c: 1d 8d        	sub	a0, a0, a5
80209f5e: 93 05 10 08  	li	a1, 129
80209f62: 63 75 b5 02  	bgeu	a0, a1, 0x80209f8c <.Lpcrel_hi1457>

0000000080209f66 <.Lpcrel_hi1458>:
80209f66: 17 25 00 00  	auipc	a0, 2
80209f6a: 13 06 a5 73  	addi	a2, a0, 1850
80209f6e: 85 45        	li	a1, 1
80209f70: 89 46        	li	a3, 2
80209f72: 42 85        	mv	a0, a6
80209f74: 97 f0 ff ff  	auipc	ra, 1048575
80209f78: e7 80 00 34  	jalr	832(ra)
80209f7c: aa 60        	ld	ra, 136(sp)
80209f7e: 49 61        	addi	sp, sp, 144
80209f80: 82 80        	ret

0000000080209f82 <.Lpcrel_hi1455>:
80209f82: 97 25 00 00  	auipc	a1, 2
80209f86: 13 86 65 70  	addi	a2, a1, 1798
80209f8a: 29 a0        	j	0x80209f94 <.Lpcrel_hi1457+0x8>

0000000080209f8c <.Lpcrel_hi1457>:
80209f8c: 97 25 00 00  	auipc	a1, 2
80209f90: 13 86 c5 6f  	addi	a2, a1, 1788
80209f94: 93 05 00 08  	li	a1, 128
80209f98: 97 00 00 00  	auipc	ra, 0
80209f9c: e7 80 40 88  	jalr	-1916(ra)
80209fa0: 00 00        	unimp	

0000000080209fa2 <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
80209fa2: 39 71        	addi	sp, sp, -64
80209fa4: 06 fc        	sd	ra, 56(sp)
80209fa6: 22 f8        	sd	s0, 48(sp)
80209fa8: 26 f4        	sd	s1, 40(sp)
80209faa: 32 88        	mv	a6, a2
80209fac: 93 56 45 00  	srli	a3, a0, 4
80209fb0: 13 07 70 02  	li	a4, 39
80209fb4: 93 07 10 27  	li	a5, 625

0000000080209fb8 <.Lpcrel_hi1459>:
80209fb8: 17 26 00 00  	auipc	a2, 2
80209fbc: 93 0e a6 6e  	addi	t4, a2, 1770
80209fc0: 63 f3 f6 02  	bgeu	a3, a5, 0x80209fe6 <.Lpcrel_hi1459+0x2e>
80209fc4: 93 06 30 06  	li	a3, 99
80209fc8: 63 ea a6 0a  	bltu	a3, a0, 0x8020a07c <.Lpcrel_hi1460+0x8c>
80209fcc: 29 46        	li	a2, 10
80209fce: 63 78 c5 0e  	bgeu	a0, a2, 0x8020a0be <.Lpcrel_hi1460+0xce>
80209fd2: 93 06 f7 ff  	addi	a3, a4, -1
80209fd6: 13 06 11 00  	addi	a2, sp, 1
80209fda: 36 96        	add	a2, a2, a3
80209fdc: 1b 05 05 03  	addiw	a0, a0, 48
80209fe0: 23 00 a6 00  	sb	a0, 0(a2)
80209fe4: e5 a8        	j	0x8020a0dc <.Lpcrel_hi1460+0xec>
80209fe6: 01 47        	li	a4, 0
80209fe8: 93 08 41 02  	addi	a7, sp, 36
80209fec: 93 02 61 02  	addi	t0, sp, 38

0000000080209ff0 <.Lpcrel_hi1460>:
80209ff0: 97 86 0b 00  	auipc	a3, 184
80209ff4: 03 b3 86 55  	ld	t1, 1368(a3)
80209ff8: 89 66        	lui	a3, 2
80209ffa: 1b 8e 06 71  	addiw	t3, a3, 1808
80209ffe: 85 66        	lui	a3, 1
8020a000: 1b 8f b6 47  	addiw	t5, a3, 1147
8020a004: 93 03 40 06  	li	t2, 100
8020a008: b7 e6 f5 05  	lui	a3, 24414
8020a00c: 9b 8f f6 0f  	addiw	t6, a3, 255
8020a010: aa 86        	mv	a3, a0
8020a012: 33 35 65 02  	mulhu	a0, a0, t1
8020a016: 2d 81        	srli	a0, a0, 11
8020a018: bb 07 c5 03  	mulw	a5, a0, t3
8020a01c: 3b 86 f6 40  	subw	a2, a3, a5
8020a020: 93 17 06 03  	slli	a5, a2, 48
8020a024: c9 93        	srli	a5, a5, 50
8020a026: b3 87 e7 03  	mul	a5, a5, t5
8020a02a: 13 d4 17 01  	srli	s0, a5, 17
8020a02e: c1 83        	srli	a5, a5, 16
8020a030: 93 f7 e7 7f  	andi	a5, a5, 2046
8020a034: 3b 04 74 02  	mulw	s0, s0, t2
8020a038: 01 9e        	subw	a2, a2, s0
8020a03a: 46 16        	slli	a2, a2, 49
8020a03c: f6 97        	add	a5, a5, t4
8020a03e: 03 c4 17 00  	lbu	s0, 1(a5)
8020a042: 41 92        	srli	a2, a2, 48
8020a044: b3 84 e8 00  	add	s1, a7, a4
8020a048: 83 c7 07 00  	lbu	a5, 0(a5)
8020a04c: a3 80 84 00  	sb	s0, 1(s1)
8020a050: 76 96        	add	a2, a2, t4
8020a052: 03 44 16 00  	lbu	s0, 1(a2)
8020a056: 03 46 06 00  	lbu	a2, 0(a2)
8020a05a: 23 80 f4 00  	sb	a5, 0(s1)
8020a05e: b3 87 e2 00  	add	a5, t0, a4
8020a062: a3 80 87 00  	sb	s0, 1(a5)
8020a066: 23 80 c7 00  	sb	a2, 0(a5)
8020a06a: 71 17        	addi	a4, a4, -4
8020a06c: e3 e2 df fa  	bltu	t6, a3, 0x8020a010 <.Lpcrel_hi1460+0x20>
8020a070: 13 07 77 02  	addi	a4, a4, 39
8020a074: 93 06 30 06  	li	a3, 99
8020a078: e3 fa a6 f4  	bgeu	a3, a0, 0x80209fcc <.Lpcrel_hi1459+0x14>
8020a07c: 13 16 05 03  	slli	a2, a0, 48
8020a080: 49 92        	srli	a2, a2, 50
8020a082: 85 66        	lui	a3, 1
8020a084: 9b 86 b6 47  	addiw	a3, a3, 1147
8020a088: 33 06 d6 02  	mul	a2, a2, a3
8020a08c: 45 82        	srli	a2, a2, 17
8020a08e: 93 06 40 06  	li	a3, 100
8020a092: bb 06 d6 02  	mulw	a3, a2, a3
8020a096: 15 9d        	subw	a0, a0, a3
8020a098: 46 15        	slli	a0, a0, 49
8020a09a: 41 91        	srli	a0, a0, 48
8020a09c: 79 17        	addi	a4, a4, -2
8020a09e: 76 95        	add	a0, a0, t4
8020a0a0: 83 46 15 00  	lbu	a3, 1(a0)
8020a0a4: 03 45 05 00  	lbu	a0, 0(a0)
8020a0a8: 93 07 11 00  	addi	a5, sp, 1
8020a0ac: ba 97        	add	a5, a5, a4
8020a0ae: a3 80 d7 00  	sb	a3, 1(a5)
8020a0b2: 23 80 a7 00  	sb	a0, 0(a5)
8020a0b6: 32 85        	mv	a0, a2
8020a0b8: 29 46        	li	a2, 10
8020a0ba: e3 6c c5 f0  	bltu	a0, a2, 0x80209fd2 <.Lpcrel_hi1459+0x1a>
8020a0be: 06 05        	slli	a0, a0, 1
8020a0c0: 93 06 e7 ff  	addi	a3, a4, -2
8020a0c4: 76 95        	add	a0, a0, t4
8020a0c6: 03 46 15 00  	lbu	a2, 1(a0)
8020a0ca: 03 45 05 00  	lbu	a0, 0(a0)
8020a0ce: 13 07 11 00  	addi	a4, sp, 1
8020a0d2: 36 97        	add	a4, a4, a3
8020a0d4: a3 00 c7 00  	sb	a2, 1(a4)
8020a0d8: 23 00 a7 00  	sb	a0, 0(a4)
8020a0dc: 13 07 11 00  	addi	a4, sp, 1
8020a0e0: 36 97        	add	a4, a4, a3
8020a0e2: 93 07 70 02  	li	a5, 39
8020a0e6: 95 8f        	sub	a5, a5, a3

000000008020a0e8 <.Lpcrel_hi1461>:
8020a0e8: 17 25 00 00  	auipc	a0, 2
8020a0ec: 13 06 05 45  	addi	a2, a0, 1104
8020a0f0: 42 85        	mv	a0, a6
8020a0f2: 81 46        	li	a3, 0
8020a0f4: 97 f0 ff ff  	auipc	ra, 1048575
8020a0f8: e7 80 00 1c  	jalr	448(ra)
8020a0fc: e2 70        	ld	ra, 56(sp)
8020a0fe: 42 74        	ld	s0, 48(sp)
8020a100: a2 74        	ld	s1, 40(sp)
8020a102: 21 61        	addi	sp, sp, 64
8020a104: 82 80        	ret

000000008020a106 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
8020a106: 03 65 05 00  	lwu	a0, 0(a0)
8020a10a: 2e 86        	mv	a2, a1
8020a10c: 85 45        	li	a1, 1
8020a10e: 17 03 00 00  	auipc	t1, 0
8020a112: 67 00 43 e9  	jr	-364(t1)

000000008020a116 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$isize$GT$3fmt17h7d52c6632f2924dbE>:
8020a116: 10 61        	ld	a2, 0(a0)
8020a118: 13 55 f6 43  	srai	a0, a2, 63
8020a11c: b3 46 a6 00  	xor	a3, a2, a0
8020a120: 33 85 a6 40  	sub	a0, a3, a0
8020a124: 13 46 f6 ff  	not	a2, a2
8020a128: 7d 92        	srli	a2, a2, 63
8020a12a: ae 86        	mv	a3, a1
8020a12c: b2 85        	mv	a1, a2
8020a12e: 36 86        	mv	a2, a3
8020a130: 17 03 00 00  	auipc	t1, 0
8020a134: 67 00 23 e7  	jr	-398(t1)

000000008020a138 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
8020a138: 08 61        	ld	a0, 0(a0)
8020a13a: 2e 86        	mv	a2, a1
8020a13c: 85 45        	li	a1, 1
8020a13e: 17 03 00 00  	auipc	t1, 0
8020a142: 67 00 43 e6  	jr	-412(t1)

000000008020a146 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
8020a146: 90 75        	ld	a2, 40(a1)
8020a148: 88 71        	ld	a0, 32(a1)
8020a14a: 1c 6e        	ld	a5, 24(a2)

000000008020a14c <.Lpcrel_hi1484>:
8020a14c: 97 25 00 00  	auipc	a1, 2
8020a150: 93 85 c5 7e  	addi	a1, a1, 2028
8020a154: 15 46        	li	a2, 5
8020a156: 82 87        	jr	a5

000000008020a158 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3e0a626cb1d7e278E>:
8020a158: 39 71        	addi	sp, sp, -64
8020a15a: 06 fc        	sd	ra, 56(sp)
8020a15c: 22 f8        	sd	s0, 48(sp)
8020a15e: 26 f4        	sd	s1, 40(sp)
8020a160: 08 61        	ld	a0, 0(a0)
8020a162: 03 46 05 00  	lbu	a2, 0(a0)
8020a166: 2e 84        	mv	s0, a1
8020a168: 51 c6        	beqz	a2, 0x8020a1f4 <.Lpcrel_hi1548+0x10>
8020a16a: 0c 74        	ld	a1, 40(s0)
8020a16c: 05 05        	addi	a0, a0, 1
8020a16e: 2a e4        	sd	a0, 8(sp)
8020a170: 08 70        	ld	a0, 32(s0)
8020a172: 94 6d        	ld	a3, 24(a1)

000000008020a174 <.Lpcrel_hi1546>:
8020a174: 97 15 00 00  	auipc	a1, 1
8020a178: 93 85 55 f6  	addi	a1, a1, -155
8020a17c: 11 46        	li	a2, 4
8020a17e: 82 96        	jalr	a3
8020a180: 22 ec        	sd	s0, 24(sp)
8020a182: 23 00 a1 02  	sb	a0, 32(sp)
8020a186: 02 e8        	sd	zero, 16(sp)
8020a188: a3 00 01 02  	sb	zero, 33(sp)

000000008020a18c <.Lpcrel_hi1547>:
8020a18c: 17 25 00 00  	auipc	a0, 2
8020a190: 13 06 c5 4b  	addi	a2, a0, 1212
8020a194: 08 08        	addi	a0, sp, 16
8020a196: 2c 00        	addi	a1, sp, 8
8020a198: 97 f0 ff ff  	auipc	ra, 1048575
8020a19c: e7 80 60 c8  	jalr	-890(ra)
8020a1a0: 42 65        	ld	a0, 16(sp)
8020a1a2: 83 45 01 02  	lbu	a1, 32(sp)
8020a1a6: 25 c5        	beqz	a0, 0x8020a20e <.Lpcrel_hi1545+0x14>
8020a1a8: 05 44        	li	s0, 1
8020a1aa: a5 e5        	bnez	a1, 0x8020a212 <.Lpcrel_hi1545+0x18>
8020a1ac: 83 45 11 02  	lbu	a1, 33(sp)
8020a1b0: 7d 15        	addi	a0, a0, -1
8020a1b2: 13 35 15 00  	seqz	a0, a0
8020a1b6: e2 64        	ld	s1, 24(sp)
8020a1b8: b3 35 b0 00  	snez	a1, a1
8020a1bc: 6d 8d        	and	a0, a0, a1
8020a1be: 05 c1        	beqz	a0, 0x8020a1de <.Lpcrel_hi1549+0x10>
8020a1c0: 03 c5 44 03  	lbu	a0, 52(s1)
8020a1c4: 11 89        	andi	a0, a0, 4
8020a1c6: 01 ed        	bnez	a0, 0x8020a1de <.Lpcrel_hi1549+0x10>
8020a1c8: 8c 74        	ld	a1, 40(s1)
8020a1ca: 88 70        	ld	a0, 32(s1)
8020a1cc: 94 6d        	ld	a3, 24(a1)

000000008020a1ce <.Lpcrel_hi1549>:
8020a1ce: 97 25 00 00  	auipc	a1, 2
8020a1d2: 93 85 25 47  	addi	a1, a1, 1138
8020a1d6: 05 46        	li	a2, 1
8020a1d8: 05 44        	li	s0, 1
8020a1da: 82 96        	jalr	a3
8020a1dc: 1d e9        	bnez	a0, 0x8020a212 <.Lpcrel_hi1545+0x18>
8020a1de: 8c 74        	ld	a1, 40(s1)
8020a1e0: 88 70        	ld	a0, 32(s1)
8020a1e2: 94 6d        	ld	a3, 24(a1)

000000008020a1e4 <.Lpcrel_hi1548>:
8020a1e4: 97 25 00 00  	auipc	a1, 2
8020a1e8: 93 85 b5 35  	addi	a1, a1, 859
8020a1ec: 05 46        	li	a2, 1
8020a1ee: 82 96        	jalr	a3
8020a1f0: 2a 84        	mv	s0, a0
8020a1f2: 05 a0        	j	0x8020a212 <.Lpcrel_hi1545+0x18>
8020a1f4: 0c 74        	ld	a1, 40(s0)
8020a1f6: 08 70        	ld	a0, 32(s0)
8020a1f8: 9c 6d        	ld	a5, 24(a1)

000000008020a1fa <.Lpcrel_hi1545>:
8020a1fa: 97 15 00 00  	auipc	a1, 1
8020a1fe: 93 85 75 ef  	addi	a1, a1, -265
8020a202: 11 46        	li	a2, 4
8020a204: e2 70        	ld	ra, 56(sp)
8020a206: 42 74        	ld	s0, 48(sp)
8020a208: a2 74        	ld	s1, 40(sp)
8020a20a: 21 61        	addi	sp, sp, 64
8020a20c: 82 87        	jr	a5
8020a20e: 33 34 b0 00  	snez	s0, a1
8020a212: 22 85        	mv	a0, s0
8020a214: e2 70        	ld	ra, 56(sp)
8020a216: 42 74        	ld	s0, 48(sp)
8020a218: a2 74        	ld	s1, 40(sp)
8020a21a: 21 61        	addi	sp, sp, 64
8020a21c: 82 80        	ret

000000008020a21e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4023022547a67dd4E>:
8020a21e: 59 71        	addi	sp, sp, -112
8020a220: 86 f4        	sd	ra, 104(sp)
8020a222: 08 61        	ld	a0, 0(a0)
8020a224: 08 61        	ld	a0, 0(a0)

000000008020a226 <.Lpcrel_hi1557>:
8020a226: 17 86 0b 00  	auipc	a2, 184
8020a22a: 03 36 26 38  	ld	a2, 898(a2)
8020a22e: b3 06 a0 40  	neg	a3, a0
8020a232: e9 8e        	and	a3, a3, a0
8020a234: 33 86 c6 02  	mul	a2, a3, a2
8020a238: 69 92        	srli	a2, a2, 58

000000008020a23a <.Lpcrel_hi1558>:
8020a23a: 97 26 00 00  	auipc	a3, 2
8020a23e: 93 86 e6 2b  	addi	a3, a3, 702
8020a242: 36 96        	add	a2, a2, a3
8020a244: 03 46 06 00  	lbu	a2, 0(a2)
8020a248: 2a f4        	sd	a0, 40(sp)
8020a24a: 32 da        	sw	a2, 52(sp)
8020a24c: 28 10        	addi	a0, sp, 40
8020a24e: 2a e4        	sd	a0, 8(sp)

000000008020a250 <.Lpcrel_hi1559>:
8020a250: 17 05 00 00  	auipc	a0, 0
8020a254: 13 05 05 9d  	addi	a0, a0, -1584
8020a258: 2a e8        	sd	a0, 16(sp)
8020a25a: 48 18        	addi	a0, sp, 52
8020a25c: 2a ec        	sd	a0, 24(sp)

000000008020a25e <.Lpcrel_hi1560>:
8020a25e: 17 05 00 00  	auipc	a0, 0
8020a262: 13 05 65 b5  	addi	a0, a0, -1194
8020a266: 2a f0        	sd	a0, 32(sp)
8020a268: 88 71        	ld	a0, 32(a1)
8020a26a: 8c 75        	ld	a1, 40(a1)

000000008020a26c <.Lpcrel_hi1561>:
8020a26c: 17 26 00 00  	auipc	a2, 2
8020a270: 13 06 46 2d  	addi	a2, a2, 724
8020a274: 32 fc        	sd	a2, 56(sp)
8020a276: 0d 46        	li	a2, 3
8020a278: b2 e0        	sd	a2, 64(sp)
8020a27a: 30 00        	addi	a2, sp, 8
8020a27c: b2 e4        	sd	a2, 72(sp)
8020a27e: 09 46        	li	a2, 2
8020a280: b2 e8        	sd	a2, 80(sp)
8020a282: 82 ec        	sd	zero, 88(sp)
8020a284: 30 18        	addi	a2, sp, 56
8020a286: 97 f0 ff ff  	auipc	ra, 1048575
8020a28a: e7 80 00 eb  	jalr	-336(ra)
8020a28e: a6 70        	ld	ra, 104(sp)
8020a290: 65 61        	addi	sp, sp, 112
8020a292: 82 80        	ret

000000008020a294 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc3c1f45a42067f95E>:
8020a294: 08 61        	ld	a0, 0(a0)
8020a296: 17 03 00 00  	auipc	t1, 0
8020a29a: 67 00 e3 a1  	jr	-1506(t1)

000000008020a29e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
8020a29e: 10 65        	ld	a2, 8(a0)
8020a2a0: 08 61        	ld	a0, 0(a0)
8020a2a2: 1c 6e        	ld	a5, 24(a2)
8020a2a4: 82 87        	jr	a5

000000008020a2a6 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
8020a2a6: 14 61        	ld	a3, 0(a0)
8020a2a8: 10 65        	ld	a2, 8(a0)
8020a2aa: 2e 85        	mv	a0, a1
8020a2ac: b6 85        	mv	a1, a3
8020a2ae: 17 f3 ff ff  	auipc	t1, 1048575
8020a2b2: 67 00 43 27  	jr	628(t1)

000000008020a2b6 <_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ec754731b30c70dE>:
8020a2b6: 79 71        	addi	sp, sp, -48
8020a2b8: 06 f4        	sd	ra, 40(sp)
8020a2ba: 22 f0        	sd	s0, 32(sp)
8020a2bc: 26 ec        	sd	s1, 24(sp)
8020a2be: 2e 84        	mv	s0, a1
8020a2c0: aa 84        	mv	s1, a0
8020a2c2: 8c 75        	ld	a1, 40(a1)
8020a2c4: 21 05        	addi	a0, a0, 8
8020a2c6: 2a e0        	sd	a0, 0(sp)
8020a2c8: 08 70        	ld	a0, 32(s0)
8020a2ca: 94 6d        	ld	a3, 24(a1)

000000008020a2cc <.Lpcrel_hi1764>:
8020a2cc: 97 25 00 00  	auipc	a1, 2
8020a2d0: 93 85 15 67  	addi	a1, a1, 1649
8020a2d4: 25 46        	li	a2, 9
8020a2d6: 82 96        	jalr	a3
8020a2d8: 22 e4        	sd	s0, 8(sp)
8020a2da: 23 08 a1 00  	sb	a0, 16(sp)
8020a2de: a3 08 01 00  	sb	zero, 17(sp)

000000008020a2e2 <.Lpcrel_hi1765>:
8020a2e2: 17 25 00 00  	auipc	a0, 2
8020a2e6: 93 05 45 66  	addi	a1, a0, 1636

000000008020a2ea <.Lpcrel_hi1766>:
8020a2ea: 17 25 00 00  	auipc	a0, 2
8020a2ee: 13 07 e5 62  	addi	a4, a0, 1582
8020a2f2: 28 00        	addi	a0, sp, 8
8020a2f4: 2d 46        	li	a2, 11
8020a2f6: a6 86        	mv	a3, s1
8020a2f8: 97 f0 ff ff  	auipc	ra, 1048575
8020a2fc: e7 80 c0 9a  	jalr	-1620(ra)

000000008020a300 <.Lpcrel_hi1767>:
8020a300: 17 25 00 00  	auipc	a0, 2
8020a304: 93 05 15 65  	addi	a1, a0, 1617

000000008020a308 <.Lpcrel_hi1768>:
8020a308: 17 25 00 00  	auipc	a0, 2
8020a30c: 13 07 85 65  	addi	a4, a0, 1624
8020a310: 28 00        	addi	a0, sp, 8
8020a312: 25 46        	li	a2, 9
8020a314: 8a 86        	mv	a3, sp
8020a316: 97 f0 ff ff  	auipc	ra, 1048575
8020a31a: e7 80 e0 98  	jalr	-1650(ra)
8020a31e: 03 45 11 01  	lbu	a0, 17(sp)
8020a322: 83 45 01 01  	lbu	a1, 16(sp)
8020a326: 0d c1        	beqz	a0, 0x8020a348 <.Lpcrel_hi1769+0xc>
8020a328: 05 45        	li	a0, 1
8020a32a: 9d e9        	bnez	a1, 0x8020a360 <.Lpcrel_hi1770+0xc>
8020a32c: 22 65        	ld	a0, 8(sp)
8020a32e: 83 45 45 03  	lbu	a1, 52(a0)
8020a332: 91 89        	andi	a1, a1, 4
8020a334: 89 ed        	bnez	a1, 0x8020a34e <.Lpcrel_hi1769+0x12>
8020a336: 0c 75        	ld	a1, 40(a0)
8020a338: 08 71        	ld	a0, 32(a0)
8020a33a: 94 6d        	ld	a3, 24(a1)

000000008020a33c <.Lpcrel_hi1769>:
8020a33c: 97 25 00 00  	auipc	a1, 2
8020a340: 93 85 f5 2f  	addi	a1, a1, 767
8020a344: 09 46        	li	a2, 2
8020a346: 21 a8        	j	0x8020a35e <.Lpcrel_hi1770+0xa>
8020a348: 33 35 b0 00  	snez	a0, a1
8020a34c: 11 a8        	j	0x8020a360 <.Lpcrel_hi1770+0xc>
8020a34e: 0c 75        	ld	a1, 40(a0)
8020a350: 08 71        	ld	a0, 32(a0)
8020a352: 94 6d        	ld	a3, 24(a1)

000000008020a354 <.Lpcrel_hi1770>:
8020a354: 97 25 00 00  	auipc	a1, 2
8020a358: 93 85 65 2e  	addi	a1, a1, 742
8020a35c: 05 46        	li	a2, 1
8020a35e: 82 96        	jalr	a3
8020a360: a2 70        	ld	ra, 40(sp)
8020a362: 02 74        	ld	s0, 32(sp)
8020a364: e2 64        	ld	s1, 24(sp)
8020a366: 45 61        	addi	sp, sp, 48
8020a368: 82 80        	ret

000000008020a36a <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf5c1f95bf09f2d92E>:
8020a36a: 79 71        	addi	sp, sp, -48
8020a36c: 06 f4        	sd	ra, 40(sp)
8020a36e: 22 f0        	sd	s0, 32(sp)
8020a370: 26 ec        	sd	s1, 24(sp)
8020a372: 2e 84        	mv	s0, a1
8020a374: 8c 75        	ld	a1, 40(a1)
8020a376: 2a e0        	sd	a0, 0(sp)
8020a378: 14 70        	ld	a3, 32(s0)
8020a37a: 98 6d        	ld	a4, 24(a1)
8020a37c: 93 04 85 00  	addi	s1, a0, 8

000000008020a380 <.Lpcrel_hi1968>:
8020a380: 17 25 00 00  	auipc	a0, 2
8020a384: 93 05 05 60  	addi	a1, a0, 1536
8020a388: 19 46        	li	a2, 6
8020a38a: 36 85        	mv	a0, a3
8020a38c: 02 97        	jalr	a4
8020a38e: 22 e4        	sd	s0, 8(sp)
8020a390: 23 08 a1 00  	sb	a0, 16(sp)
8020a394: a3 08 01 00  	sb	zero, 17(sp)

000000008020a398 <.Lpcrel_hi1969>:
8020a398: 17 15 00 00  	auipc	a0, 1
8020a39c: 93 05 d5 d3  	addi	a1, a0, -707

000000008020a3a0 <.Lpcrel_hi1970>:
8020a3a0: 17 25 00 00  	auipc	a0, 2
8020a3a4: 13 07 85 57  	addi	a4, a0, 1400
8020a3a8: 28 00        	addi	a0, sp, 8
8020a3aa: 11 46        	li	a2, 4
8020a3ac: a6 86        	mv	a3, s1
8020a3ae: 97 f0 ff ff  	auipc	ra, 1048575
8020a3b2: e7 80 60 8f  	jalr	-1802(ra)

000000008020a3b6 <.Lpcrel_hi1971>:
8020a3b6: 17 25 00 00  	auipc	a0, 2
8020a3ba: 93 05 05 5d  	addi	a1, a0, 1488

000000008020a3be <.Lpcrel_hi1972>:
8020a3be: 17 25 00 00  	auipc	a0, 2
8020a3c2: 13 07 25 5d  	addi	a4, a0, 1490
8020a3c6: 28 00        	addi	a0, sp, 8
8020a3c8: 15 46        	li	a2, 5
8020a3ca: 8a 86        	mv	a3, sp
8020a3cc: 97 f0 ff ff  	auipc	ra, 1048575
8020a3d0: e7 80 80 8d  	jalr	-1832(ra)
8020a3d4: 03 45 11 01  	lbu	a0, 17(sp)
8020a3d8: 83 45 01 01  	lbu	a1, 16(sp)
8020a3dc: 0d c1        	beqz	a0, 0x8020a3fe <.Lpcrel_hi1973+0xc>
8020a3de: 05 45        	li	a0, 1
8020a3e0: 9d e9        	bnez	a1, 0x8020a416 <.Lpcrel_hi1974+0xc>
8020a3e2: 22 65        	ld	a0, 8(sp)
8020a3e4: 83 45 45 03  	lbu	a1, 52(a0)
8020a3e8: 91 89        	andi	a1, a1, 4
8020a3ea: 89 ed        	bnez	a1, 0x8020a404 <.Lpcrel_hi1973+0x12>
8020a3ec: 0c 75        	ld	a1, 40(a0)
8020a3ee: 08 71        	ld	a0, 32(a0)
8020a3f0: 94 6d        	ld	a3, 24(a1)

000000008020a3f2 <.Lpcrel_hi1973>:
8020a3f2: 97 25 00 00  	auipc	a1, 2
8020a3f6: 93 85 95 24  	addi	a1, a1, 585
8020a3fa: 09 46        	li	a2, 2
8020a3fc: 21 a8        	j	0x8020a414 <.Lpcrel_hi1974+0xa>
8020a3fe: 33 35 b0 00  	snez	a0, a1
8020a402: 11 a8        	j	0x8020a416 <.Lpcrel_hi1974+0xc>
8020a404: 0c 75        	ld	a1, 40(a0)
8020a406: 08 71        	ld	a0, 32(a0)
8020a408: 94 6d        	ld	a3, 24(a1)

000000008020a40a <.Lpcrel_hi1974>:
8020a40a: 97 25 00 00  	auipc	a1, 2
8020a40e: 93 85 05 23  	addi	a1, a1, 560
8020a412: 05 46        	li	a2, 1
8020a414: 82 96        	jalr	a3
8020a416: a2 70        	ld	ra, 40(sp)
8020a418: 02 74        	ld	s0, 32(sp)
8020a41a: e2 64        	ld	s1, 24(sp)
8020a41c: 45 61        	addi	sp, sp, 48
8020a41e: 82 80        	ret

000000008020a420 <memmove>:
8020a420: 17 03 00 00  	auipc	t1, 0
8020a424: 67 00 43 0c  	jr	196(t1)

000000008020a428 <memset>:
8020a428: 17 03 00 00  	auipc	t1, 0
8020a42c: 67 00 c3 23  	jr	572(t1)

000000008020a430 <memcpy>:
8020a430: 17 03 00 00  	auipc	t1, 0
8020a434: 67 00 83 00  	jr	8(t1)

000000008020a438 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
8020a438: bd 46        	li	a3, 15
8020a43a: 63 f9 c6 06  	bgeu	a3, a2, 0x8020a4ac <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
8020a43e: bb 06 a0 40  	negw	a3, a0
8020a442: 13 f8 76 00  	andi	a6, a3, 7
8020a446: b3 03 05 01  	add	t2, a0, a6
8020a44a: 63 0c 08 00  	beqz	a6, 0x8020a462 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
8020a44e: aa 87        	mv	a5, a0
8020a450: ae 86        	mv	a3, a1
8020a452: 03 87 06 00  	lb	a4, 0(a3)
8020a456: 23 80 e7 00  	sb	a4, 0(a5)
8020a45a: 85 07        	addi	a5, a5, 1
8020a45c: 85 06        	addi	a3, a3, 1
8020a45e: e3 ea 77 fe  	bltu	a5, t2, 0x8020a452 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
8020a462: b3 88 05 01  	add	a7, a1, a6
8020a466: 33 08 06 41  	sub	a6, a2, a6
8020a46a: 93 72 88 ff  	andi	t0, a6, -8
8020a46e: 13 f3 78 00  	andi	t1, a7, 7
8020a472: b3 86 53 00  	add	a3, t2, t0
8020a476: 63 0e 03 02  	beqz	t1, 0x8020a4b2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
8020a47a: 63 56 50 04  	blez	t0, 0x8020a4c6 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
8020a47e: 0e 03        	slli	t1, t1, 3
8020a480: 93 f7 88 ff  	andi	a5, a7, -8
8020a484: 90 63        	ld	a2, 0(a5)
8020a486: bb 05 60 40  	negw	a1, t1
8020a48a: 13 fe 85 03  	andi	t3, a1, 56
8020a48e: a1 07        	addi	a5, a5, 8
8020a490: 98 63        	ld	a4, 0(a5)
8020a492: 33 56 66 00  	srl	a2, a2, t1
8020a496: b3 15 c7 01  	sll	a1, a4, t3
8020a49a: d1 8d        	or	a1, a1, a2
8020a49c: 23 b0 b3 00  	sd	a1, 0(t2)
8020a4a0: a1 03        	addi	t2, t2, 8
8020a4a2: a1 07        	addi	a5, a5, 8
8020a4a4: 3a 86        	mv	a2, a4
8020a4a6: e3 e5 d3 fe  	bltu	t2, a3, 0x8020a490 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
8020a4aa: 31 a8        	j	0x8020a4c6 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
8020a4ac: aa 86        	mv	a3, a0
8020a4ae: 0d e2        	bnez	a2, 0x8020a4d0 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
8020a4b0: 0d a8        	j	0x8020a4e2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020a4b2: 63 5a 50 00  	blez	t0, 0x8020a4c6 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
8020a4b6: c6 85        	mv	a1, a7
8020a4b8: 90 61        	ld	a2, 0(a1)
8020a4ba: 23 b0 c3 00  	sd	a2, 0(t2)
8020a4be: a1 03        	addi	t2, t2, 8
8020a4c0: a1 05        	addi	a1, a1, 8
8020a4c2: e3 eb d3 fe  	bltu	t2, a3, 0x8020a4b8 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
8020a4c6: b3 85 58 00  	add	a1, a7, t0
8020a4ca: 13 76 78 00  	andi	a2, a6, 7
8020a4ce: 11 ca        	beqz	a2, 0x8020a4e2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020a4d0: 36 96        	add	a2, a2, a3
8020a4d2: 03 87 05 00  	lb	a4, 0(a1)
8020a4d6: 23 80 e6 00  	sb	a4, 0(a3)
8020a4da: 85 06        	addi	a3, a3, 1
8020a4dc: 85 05        	addi	a1, a1, 1
8020a4de: e3 ea c6 fe  	bltu	a3, a2, 0x8020a4d2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
8020a4e2: 82 80        	ret

000000008020a4e4 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE>:
8020a4e4: b3 06 b5 40  	sub	a3, a0, a1
8020a4e8: 63 f6 c6 08  	bgeu	a3, a2, 0x8020a574 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x90>
8020a4ec: b3 06 c5 00  	add	a3, a0, a2
8020a4f0: 3d 47        	li	a4, 15
8020a4f2: b3 82 c5 00  	add	t0, a1, a2
8020a4f6: 63 79 c7 0e  	bgeu	a4, a2, 0x8020a5e8 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x104>
8020a4fa: 13 f8 76 00  	andi	a6, a3, 7
8020a4fe: b3 08 00 41  	neg	a7, a6
8020a502: 93 f3 86 ff  	andi	t2, a3, -8
8020a506: 63 0f 08 00  	beqz	a6, 0x8020a524 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x40>
8020a50a: b3 87 c5 00  	add	a5, a1, a2
8020a50e: fd 17        	addi	a5, a5, -1
8020a510: 03 83 07 00  	lb	t1, 0(a5)
8020a514: 13 87 f6 ff  	addi	a4, a3, -1
8020a518: a3 8f 66 fe  	sb	t1, -1(a3)
8020a51c: fd 17        	addi	a5, a5, -1
8020a51e: ba 86        	mv	a3, a4
8020a520: e3 e8 e3 fe  	bltu	t2, a4, 0x8020a510 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x2c>
8020a524: 96 98        	add	a7, a7, t0
8020a526: b3 02 06 41  	sub	t0, a2, a6
8020a52a: 13 f6 82 ff  	andi	a2, t0, -8
8020a52e: 13 f3 78 00  	andi	t1, a7, 7
8020a532: 33 08 c0 40  	neg	a6, a2
8020a536: b3 86 c3 40  	sub	a3, t2, a2
8020a53a: 63 0c 03 0a  	beqz	t1, 0x8020a5f2 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x10e>
8020a53e: 63 57 08 0c  	bgez	a6, 0x8020a60c <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x128>
8020a542: 0e 03        	slli	t1, t1, 3
8020a544: 13 f6 88 ff  	andi	a2, a7, -8
8020a548: 0c 62        	ld	a1, 0(a2)
8020a54a: 3b 07 60 40  	negw	a4, t1
8020a54e: 13 7e 87 03  	andi	t3, a4, 56
8020a552: 61 16        	addi	a2, a2, -8
8020a554: 18 62        	ld	a4, 0(a2)
8020a556: b3 95 c5 01  	sll	a1, a1, t3
8020a55a: b3 57 67 00  	srl	a5, a4, t1
8020a55e: dd 8d        	or	a1, a1, a5
8020a560: 93 87 83 ff  	addi	a5, t2, -8
8020a564: 23 bc b3 fe  	sd	a1, -8(t2)
8020a568: 61 16        	addi	a2, a2, -8
8020a56a: be 83        	mv	t2, a5
8020a56c: ba 85        	mv	a1, a4
8020a56e: e3 e3 f6 fe  	bltu	a3, a5, 0x8020a554 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x70>
8020a572: 69 a8        	j	0x8020a60c <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x128>
8020a574: bd 46        	li	a3, 15
8020a576: 63 fb c6 06  	bgeu	a3, a2, 0x8020a5ec <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x108>
8020a57a: bb 06 a0 40  	negw	a3, a0
8020a57e: 13 f8 76 00  	andi	a6, a3, 7
8020a582: b3 03 05 01  	add	t2, a0, a6
8020a586: 63 0c 08 00  	beqz	a6, 0x8020a59e <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0xba>
8020a58a: aa 87        	mv	a5, a0
8020a58c: ae 86        	mv	a3, a1
8020a58e: 03 87 06 00  	lb	a4, 0(a3)
8020a592: 23 80 e7 00  	sb	a4, 0(a5)
8020a596: 85 07        	addi	a5, a5, 1
8020a598: 85 06        	addi	a3, a3, 1
8020a59a: e3 ea 77 fe  	bltu	a5, t2, 0x8020a58e <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0xaa>
8020a59e: b3 88 05 01  	add	a7, a1, a6
8020a5a2: 33 08 06 41  	sub	a6, a2, a6
8020a5a6: 93 72 88 ff  	andi	t0, a6, -8
8020a5aa: 13 f3 78 00  	andi	t1, a7, 7
8020a5ae: b3 86 53 00  	add	a3, t2, t0
8020a5b2: 63 00 03 08  	beqz	t1, 0x8020a632 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x14e>
8020a5b6: 63 58 50 08  	blez	t0, 0x8020a646 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x162>
8020a5ba: 0e 03        	slli	t1, t1, 3
8020a5bc: 93 f7 88 ff  	andi	a5, a7, -8
8020a5c0: 90 63        	ld	a2, 0(a5)
8020a5c2: bb 05 60 40  	negw	a1, t1
8020a5c6: 13 fe 85 03  	andi	t3, a1, 56
8020a5ca: a1 07        	addi	a5, a5, 8
8020a5cc: 98 63        	ld	a4, 0(a5)
8020a5ce: 33 56 66 00  	srl	a2, a2, t1
8020a5d2: b3 15 c7 01  	sll	a1, a4, t3
8020a5d6: d1 8d        	or	a1, a1, a2
8020a5d8: 23 b0 b3 00  	sd	a1, 0(t2)
8020a5dc: a1 03        	addi	t2, t2, 8
8020a5de: a1 07        	addi	a5, a5, 8
8020a5e0: 3a 86        	mv	a2, a4
8020a5e2: e3 e5 d3 fe  	bltu	t2, a3, 0x8020a5cc <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0xe8>
8020a5e6: 85 a0        	j	0x8020a646 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x162>
8020a5e8: aa 85        	mv	a1, a0
8020a5ea: 05 a8        	j	0x8020a61a <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x136>
8020a5ec: aa 86        	mv	a3, a0
8020a5ee: 2d e2        	bnez	a2, 0x8020a650 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x16c>
8020a5f0: 8d a8        	j	0x8020a662 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x17e>
8020a5f2: 63 5d 08 00  	bgez	a6, 0x8020a60c <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x128>
8020a5f6: 96 95        	add	a1, a1, t0
8020a5f8: e1 15        	addi	a1, a1, -8
8020a5fa: 90 61        	ld	a2, 0(a1)
8020a5fc: 13 87 83 ff  	addi	a4, t2, -8
8020a600: 23 bc c3 fe  	sd	a2, -8(t2)
8020a604: e1 15        	addi	a1, a1, -8
8020a606: ba 83        	mv	t2, a4
8020a608: e3 e9 e6 fe  	bltu	a3, a4, 0x8020a5fa <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x116>
8020a60c: 93 f5 72 00  	andi	a1, t0, 7
8020a610: a9 c9        	beqz	a1, 0x8020a662 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x17e>
8020a612: b3 82 08 01  	add	t0, a7, a6
8020a616: b3 85 b6 40  	sub	a1, a3, a1
8020a61a: fd 12        	addi	t0, t0, -1
8020a61c: 03 86 02 00  	lb	a2, 0(t0)
8020a620: 13 87 f6 ff  	addi	a4, a3, -1
8020a624: a3 8f c6 fe  	sb	a2, -1(a3)
8020a628: fd 12        	addi	t0, t0, -1
8020a62a: ba 86        	mv	a3, a4
8020a62c: e3 e8 e5 fe  	bltu	a1, a4, 0x8020a61c <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x138>
8020a630: 0d a8        	j	0x8020a662 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x17e>
8020a632: 63 5a 50 00  	blez	t0, 0x8020a646 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x162>
8020a636: c6 85        	mv	a1, a7
8020a638: 90 61        	ld	a2, 0(a1)
8020a63a: 23 b0 c3 00  	sd	a2, 0(t2)
8020a63e: a1 03        	addi	t2, t2, 8
8020a640: a1 05        	addi	a1, a1, 8
8020a642: e3 eb d3 fe  	bltu	t2, a3, 0x8020a638 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x154>
8020a646: b3 85 58 00  	add	a1, a7, t0
8020a64a: 13 76 78 00  	andi	a2, a6, 7
8020a64e: 11 ca        	beqz	a2, 0x8020a662 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x17e>
8020a650: 36 96        	add	a2, a2, a3
8020a652: 03 87 05 00  	lb	a4, 0(a1)
8020a656: 23 80 e6 00  	sb	a4, 0(a3)
8020a65a: 85 06        	addi	a3, a3, 1
8020a65c: 85 05        	addi	a1, a1, 1
8020a65e: e3 ea c6 fe  	bltu	a3, a2, 0x8020a652 <_ZN17compiler_builtins3mem7memmove17h2db59551d46a6abbE+0x16e>
8020a662: 82 80        	ret

000000008020a664 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
8020a664: bd 46        	li	a3, 15
8020a666: 63 fa c6 04  	bgeu	a3, a2, 0x8020a6ba <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
8020a66a: bb 06 a0 40  	negw	a3, a0
8020a66e: 9d 8a        	andi	a3, a3, 7
8020a670: 33 07 d5 00  	add	a4, a0, a3
8020a674: 99 c6        	beqz	a3, 0x8020a682 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
8020a676: aa 87        	mv	a5, a0
8020a678: 23 80 b7 00  	sb	a1, 0(a5)
8020a67c: 85 07        	addi	a5, a5, 1
8020a67e: e3 ed e7 fe  	bltu	a5, a4, 0x8020a678 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
8020a682: b3 08 d6 40  	sub	a7, a2, a3
8020a686: 93 f7 88 ff  	andi	a5, a7, -8
8020a68a: b3 06 f7 00  	add	a3, a4, a5
8020a68e: 63 52 f0 02  	blez	a5, 0x8020a6b2 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
8020a692: 13 98 85 03  	slli	a6, a1, 56
8020a696: b7 17 10 10  	lui	a5, 65793
8020a69a: 92 07        	slli	a5, a5, 4
8020a69c: 93 87 07 10  	addi	a5, a5, 256
8020a6a0: 33 36 f8 02  	mulhu	a2, a6, a5
8020a6a4: 93 17 06 02  	slli	a5, a2, 32
8020a6a8: d1 8f        	or	a5, a5, a2
8020a6aa: 1c e3        	sd	a5, 0(a4)
8020a6ac: 21 07        	addi	a4, a4, 8
8020a6ae: e3 6e d7 fe  	bltu	a4, a3, 0x8020a6aa <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
8020a6b2: 13 f6 78 00  	andi	a2, a7, 7
8020a6b6: 01 e6        	bnez	a2, 0x8020a6be <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
8020a6b8: 09 a8        	j	0x8020a6ca <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
8020a6ba: aa 86        	mv	a3, a0
8020a6bc: 19 c6        	beqz	a2, 0x8020a6ca <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
8020a6be: 36 96        	add	a2, a2, a3
8020a6c0: 23 80 b6 00  	sb	a1, 0(a3)
8020a6c4: 85 06        	addi	a3, a3, 1
8020a6c6: e3 ed c6 fe  	bltu	a3, a2, 0x8020a6c0 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
8020a6ca: 82 80        	ret

000000008020a6cc <_ZN17compiler_builtins3mem6memcmp17hc90ec3abc62d78c8E>:
8020a6cc: 19 ca        	beqz	a2, 0x8020a6e2 <_ZN17compiler_builtins3mem6memcmp17hc90ec3abc62d78c8E+0x16>
8020a6ce: 83 46 05 00  	lbu	a3, 0(a0)
8020a6d2: 03 c7 05 00  	lbu	a4, 0(a1)
8020a6d6: 63 98 e6 00  	bne	a3, a4, 0x8020a6e6 <_ZN17compiler_builtins3mem6memcmp17hc90ec3abc62d78c8E+0x1a>
8020a6da: 85 05        	addi	a1, a1, 1
8020a6dc: 7d 16        	addi	a2, a2, -1
8020a6de: 05 05        	addi	a0, a0, 1
8020a6e0: 7d f6        	bnez	a2, 0x8020a6ce <_ZN17compiler_builtins3mem6memcmp17hc90ec3abc62d78c8E+0x2>
8020a6e2: 01 45        	li	a0, 0
8020a6e4: 82 80        	ret
8020a6e6: 33 85 e6 40  	sub	a0, a3, a4
8020a6ea: 82 80        	ret

000000008020a6ec <memcmp>:
8020a6ec: 17 03 00 00  	auipc	t1, 0
8020a6f0: 67 00 03 fe  	jr	-32(t1)
