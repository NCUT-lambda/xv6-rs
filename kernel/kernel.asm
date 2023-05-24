
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 2a 82        	mv	tp, a0

0000000080200002 <.Lpcrel_hi0>:
80200002: 17 d1 00 00  	auipc	sp, 13
80200006: 13 01 e1 ff  	addi	sp, sp, -2
8020000a: c1 62        	lui	t0, 16
8020000c: 05 05        	addi	a0, a0, 1
8020000e: 33 83 a2 02  	mul	t1, t0, a0
80200012: 1a 91        	add	sp, sp, t1

0000000080200014 <.Lpcrel_hi1>:
80200014: 17 d5 00 00  	auipc	a0, 13
80200018: 13 05 c5 fe  	addi	a0, a0, -20
8020001c: 1a 95        	add	a0, a0, t1
8020001e: 97 70 00 00  	auipc	ra, 7
80200022: e7 80 20 54  	jalr	1346(ra)
		...
80200ffe: 00 00        	unimp	

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
80201170: 97 50 00 00  	auipc	ra, 5
80201174: e7 80 20 a8  	jalr	-1406(ra)
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
8020207a: 97 70 00 00  	auipc	ra, 7
8020207e: e7 80 80 61  	jalr	1560(ra)
80202082: 09 65        	lui	a0, 2
80202084: 1b 05 85 1c  	addiw	a0, a0, 456
80202088: 33 05 a4 40  	sub	a0, s0, a0
8020208c: 13 06 10 08  	li	a2, 129
80202090: 81 45        	li	a1, 0
80202092: 97 70 00 00  	auipc	ra, 7
80202096: e7 80 00 60  	jalr	1536(ra)
8020209a: 09 65        	lui	a0, 2
8020209c: 1b 05 05 14  	addiw	a0, a0, 320
802020a0: 33 05 a4 40  	sub	a0, s0, a0
802020a4: 13 06 10 08  	li	a2, 129
802020a8: 81 45        	li	a1, 0
802020aa: 97 70 00 00  	auipc	ra, 7
802020ae: e7 80 80 5e  	jalr	1512(ra)
802020b2: 09 65        	lui	a0, 2
802020b4: 1b 05 85 0b  	addiw	a0, a0, 184
802020b8: 33 05 a4 40  	sub	a0, s0, a0
802020bc: 13 06 10 08  	li	a2, 129
802020c0: 81 45        	li	a1, 0
802020c2: 97 70 00 00  	auipc	ra, 7
802020c6: e7 80 00 5d  	jalr	1488(ra)
802020ca: 09 65        	lui	a0, 2
802020cc: 1b 05 05 03  	addiw	a0, a0, 48
802020d0: 33 05 a4 40  	sub	a0, s0, a0
802020d4: 13 06 10 08  	li	a2, 129
802020d8: 81 45        	li	a1, 0
802020da: 97 70 00 00  	auipc	ra, 7
802020de: e7 80 80 5b  	jalr	1464(ra)
802020e2: 09 65        	lui	a0, 2
802020e4: 1b 05 85 fa  	addiw	a0, a0, -88
802020e8: 33 05 a4 40  	sub	a0, s0, a0
802020ec: 13 06 10 08  	li	a2, 129
802020f0: 81 45        	li	a1, 0
802020f2: 97 70 00 00  	auipc	ra, 7
802020f6: e7 80 00 5a  	jalr	1440(ra)
802020fa: 09 65        	lui	a0, 2
802020fc: 1b 05 05 f2  	addiw	a0, a0, -224
80202100: 33 05 a4 40  	sub	a0, s0, a0
80202104: 13 06 10 08  	li	a2, 129
80202108: 81 45        	li	a1, 0
8020210a: 97 70 00 00  	auipc	ra, 7
8020210e: e7 80 80 58  	jalr	1416(ra)
80202112: 09 65        	lui	a0, 2
80202114: 1b 05 85 e9  	addiw	a0, a0, -360
80202118: 33 05 a4 40  	sub	a0, s0, a0
8020211c: 13 06 10 08  	li	a2, 129
80202120: 81 45        	li	a1, 0
80202122: 97 70 00 00  	auipc	ra, 7
80202126: e7 80 00 57  	jalr	1392(ra)
8020212a: 09 65        	lui	a0, 2
8020212c: 1b 05 05 e1  	addiw	a0, a0, -496
80202130: 33 05 a4 40  	sub	a0, s0, a0
80202134: 13 06 10 08  	li	a2, 129
80202138: 81 45        	li	a1, 0
8020213a: 97 70 00 00  	auipc	ra, 7
8020213e: e7 80 80 55  	jalr	1368(ra)
80202142: 09 65        	lui	a0, 2
80202144: 1b 05 85 d8  	addiw	a0, a0, -632
80202148: 33 05 a4 40  	sub	a0, s0, a0
8020214c: 13 06 10 08  	li	a2, 129
80202150: 81 45        	li	a1, 0
80202152: 97 70 00 00  	auipc	ra, 7
80202156: e7 80 00 54  	jalr	1344(ra)
8020215a: 75 45        	li	a0, 29
8020215c: 22 05        	slli	a0, a0, 8
8020215e: 33 05 a4 40  	sub	a0, s0, a0
80202162: 13 06 10 08  	li	a2, 129
80202166: 81 45        	li	a1, 0
80202168: 97 70 00 00  	auipc	ra, 7
8020216c: e7 80 a0 52  	jalr	1322(ra)
80202170: 09 65        	lui	a0, 2
80202172: 1b 05 85 c7  	addiw	a0, a0, -904
80202176: 33 05 a4 40  	sub	a0, s0, a0
8020217a: 13 06 10 08  	li	a2, 129
8020217e: 81 45        	li	a1, 0
80202180: 97 70 00 00  	auipc	ra, 7
80202184: e7 80 20 51  	jalr	1298(ra)
80202188: 09 65        	lui	a0, 2
8020218a: 1b 05 05 bf  	addiw	a0, a0, -1040
8020218e: 33 05 a4 40  	sub	a0, s0, a0
80202192: 13 06 10 08  	li	a2, 129
80202196: 81 45        	li	a1, 0
80202198: 97 70 00 00  	auipc	ra, 7
8020219c: e7 80 a0 4f  	jalr	1274(ra)
802021a0: 09 65        	lui	a0, 2
802021a2: 1b 05 85 b6  	addiw	a0, a0, -1176
802021a6: 33 05 a4 40  	sub	a0, s0, a0
802021aa: 13 06 10 08  	li	a2, 129
802021ae: 81 45        	li	a1, 0
802021b0: 97 70 00 00  	auipc	ra, 7
802021b4: e7 80 20 4e  	jalr	1250(ra)
802021b8: 09 65        	lui	a0, 2
802021ba: 1b 05 05 ae  	addiw	a0, a0, -1312
802021be: 33 05 a4 40  	sub	a0, s0, a0
802021c2: 13 06 10 08  	li	a2, 129
802021c6: 81 45        	li	a1, 0
802021c8: 97 70 00 00  	auipc	ra, 7
802021cc: e7 80 a0 4c  	jalr	1226(ra)
802021d0: 09 65        	lui	a0, 2
802021d2: 1b 05 85 a5  	addiw	a0, a0, -1448
802021d6: 33 05 a4 40  	sub	a0, s0, a0
802021da: 13 06 10 08  	li	a2, 129
802021de: 81 45        	li	a1, 0
802021e0: 97 70 00 00  	auipc	ra, 7
802021e4: e7 80 20 4b  	jalr	1202(ra)
802021e8: 93 8a f9 7f  	addi	s5, s3, 2047
802021ec: 13 85 1a 08  	addi	a0, s5, 129
802021f0: 13 06 10 08  	li	a2, 129
802021f4: 81 45        	li	a1, 0
802021f6: 97 70 00 00  	auipc	ra, 7
802021fa: e7 80 c0 49  	jalr	1180(ra)
802021fe: 13 85 9a 10  	addi	a0, s5, 265
80202202: 13 06 10 08  	li	a2, 129
80202206: 81 45        	li	a1, 0
80202208: 97 70 00 00  	auipc	ra, 7
8020220c: e7 80 a0 48  	jalr	1162(ra)
80202210: 13 85 1a 19  	addi	a0, s5, 401
80202214: 13 06 10 08  	li	a2, 129
80202218: 81 45        	li	a1, 0
8020221a: 97 70 00 00  	auipc	ra, 7
8020221e: e7 80 80 47  	jalr	1144(ra)
80202222: 13 85 9a 21  	addi	a0, s5, 537
80202226: 13 06 10 08  	li	a2, 129
8020222a: 81 45        	li	a1, 0
8020222c: 97 70 00 00  	auipc	ra, 7
80202230: e7 80 60 46  	jalr	1126(ra)
80202234: 13 85 1a 2a  	addi	a0, s5, 673
80202238: 13 06 10 08  	li	a2, 129
8020223c: 81 45        	li	a1, 0
8020223e: 97 70 00 00  	auipc	ra, 7
80202242: e7 80 40 45  	jalr	1108(ra)
80202246: 13 85 9a 32  	addi	a0, s5, 809
8020224a: 13 06 10 08  	li	a2, 129
8020224e: 81 45        	li	a1, 0
80202250: 97 70 00 00  	auipc	ra, 7
80202254: e7 80 20 44  	jalr	1090(ra)
80202258: 13 85 1a 3b  	addi	a0, s5, 945
8020225c: 13 06 10 08  	li	a2, 129
80202260: 81 45        	li	a1, 0
80202262: 97 70 00 00  	auipc	ra, 7
80202266: e7 80 00 43  	jalr	1072(ra)
8020226a: 13 85 9a 43  	addi	a0, s5, 1081
8020226e: 13 06 10 08  	li	a2, 129
80202272: 81 45        	li	a1, 0
80202274: 97 70 00 00  	auipc	ra, 7
80202278: e7 80 e0 41  	jalr	1054(ra)
8020227c: 13 85 1a 4c  	addi	a0, s5, 1217
80202280: 13 06 10 08  	li	a2, 129
80202284: 81 45        	li	a1, 0
80202286: 97 70 00 00  	auipc	ra, 7
8020228a: e7 80 c0 40  	jalr	1036(ra)
8020228e: 13 85 9a 54  	addi	a0, s5, 1353
80202292: 13 06 10 08  	li	a2, 129
80202296: 81 45        	li	a1, 0
80202298: 97 70 00 00  	auipc	ra, 7
8020229c: e7 80 a0 3f  	jalr	1018(ra)
802022a0: 13 85 1a 5d  	addi	a0, s5, 1489
802022a4: 13 06 10 08  	li	a2, 129
802022a8: 81 45        	li	a1, 0
802022aa: 97 70 00 00  	auipc	ra, 7
802022ae: e7 80 80 3e  	jalr	1000(ra)
802022b2: 13 85 9a 65  	addi	a0, s5, 1625
802022b6: 13 06 10 08  	li	a2, 129
802022ba: 81 45        	li	a1, 0
802022bc: 97 70 00 00  	auipc	ra, 7
802022c0: e7 80 60 3d  	jalr	982(ra)
802022c4: 13 85 1a 6e  	addi	a0, s5, 1761
802022c8: 13 06 10 08  	li	a2, 129
802022cc: 81 45        	li	a1, 0
802022ce: 97 70 00 00  	auipc	ra, 7
802022d2: e7 80 40 3c  	jalr	964(ra)
802022d6: 13 85 9a 76  	addi	a0, s5, 1897
802022da: 13 06 10 08  	li	a2, 129
802022de: 81 45        	li	a1, 0
802022e0: 97 70 00 00  	auipc	ra, 7
802022e4: e7 80 20 3b  	jalr	946(ra)
802022e8: 13 85 1a 7f  	addi	a0, s5, 2033
802022ec: 13 06 10 08  	li	a2, 129
802022f0: 81 45        	li	a1, 0
802022f2: 97 70 00 00  	auipc	ra, 7
802022f6: e7 80 00 3a  	jalr	928(ra)
802022fa: 05 6b        	lui	s6, 1
802022fc: 1b 05 8b 07  	addiw	a0, s6, 120
80202300: 4e 95        	add	a0, a0, s3
80202302: 13 06 10 08  	li	a2, 129
80202306: 81 45        	li	a1, 0
80202308: 97 70 00 00  	auipc	ra, 7
8020230c: e7 80 a0 38  	jalr	906(ra)
80202310: c5 4a        	li	s5, 17
80202312: 13 95 8a 00  	slli	a0, s5, 8
80202316: 4e 95        	add	a0, a0, s3
80202318: 13 06 10 08  	li	a2, 129
8020231c: 81 45        	li	a1, 0
8020231e: 97 70 00 00  	auipc	ra, 7
80202322: e7 80 40 37  	jalr	884(ra)
80202326: 1b 05 8b 18  	addiw	a0, s6, 392
8020232a: 4e 95        	add	a0, a0, s3
8020232c: 13 06 10 08  	li	a2, 129
80202330: 81 45        	li	a1, 0
80202332: 97 70 00 00  	auipc	ra, 7
80202336: e7 80 00 36  	jalr	864(ra)
8020233a: 1b 05 0b 21  	addiw	a0, s6, 528
8020233e: 4e 95        	add	a0, a0, s3
80202340: 13 06 10 08  	li	a2, 129
80202344: 81 45        	li	a1, 0
80202346: 97 70 00 00  	auipc	ra, 7
8020234a: e7 80 c0 34  	jalr	844(ra)
8020234e: 1b 05 8b 29  	addiw	a0, s6, 664
80202352: 4e 95        	add	a0, a0, s3
80202354: 13 06 10 08  	li	a2, 129
80202358: 81 45        	li	a1, 0
8020235a: 97 70 00 00  	auipc	ra, 7
8020235e: e7 80 80 33  	jalr	824(ra)
80202362: 1b 05 0b 32  	addiw	a0, s6, 800
80202366: 4e 95        	add	a0, a0, s3
80202368: 13 06 10 08  	li	a2, 129
8020236c: 81 45        	li	a1, 0
8020236e: 97 70 00 00  	auipc	ra, 7
80202372: e7 80 40 32  	jalr	804(ra)
80202376: 1b 05 8b 3a  	addiw	a0, s6, 936
8020237a: 4e 95        	add	a0, a0, s3
8020237c: 13 06 10 08  	li	a2, 129
80202380: 81 45        	li	a1, 0
80202382: 97 70 00 00  	auipc	ra, 7
80202386: e7 80 00 31  	jalr	784(ra)
8020238a: 1b 05 0b 43  	addiw	a0, s6, 1072
8020238e: 4e 95        	add	a0, a0, s3
80202390: 13 06 10 08  	li	a2, 129
80202394: 81 45        	li	a1, 0
80202396: 97 70 00 00  	auipc	ra, 7
8020239a: e7 80 c0 2f  	jalr	764(ra)
8020239e: 1b 05 8b 4b  	addiw	a0, s6, 1208
802023a2: 4e 95        	add	a0, a0, s3
802023a4: 13 06 10 08  	li	a2, 129
802023a8: 81 45        	li	a1, 0
802023aa: 97 70 00 00  	auipc	ra, 7
802023ae: e7 80 80 2e  	jalr	744(ra)
802023b2: 1b 05 0b 54  	addiw	a0, s6, 1344
802023b6: 4e 95        	add	a0, a0, s3
802023b8: 13 06 10 08  	li	a2, 129
802023bc: 81 45        	li	a1, 0
802023be: 97 70 00 00  	auipc	ra, 7
802023c2: e7 80 40 2d  	jalr	724(ra)
802023c6: 1b 05 8b 5c  	addiw	a0, s6, 1480
802023ca: 4e 95        	add	a0, a0, s3
802023cc: 13 06 10 08  	li	a2, 129
802023d0: 81 45        	li	a1, 0
802023d2: 97 70 00 00  	auipc	ra, 7
802023d6: e7 80 00 2c  	jalr	704(ra)
802023da: 1b 05 0b 65  	addiw	a0, s6, 1616
802023de: 4e 95        	add	a0, a0, s3
802023e0: 13 06 10 08  	li	a2, 129
802023e4: 81 45        	li	a1, 0
802023e6: 97 70 00 00  	auipc	ra, 7
802023ea: e7 80 c0 2a  	jalr	684(ra)
802023ee: 1b 05 8b 6d  	addiw	a0, s6, 1752
802023f2: 4e 95        	add	a0, a0, s3
802023f4: 13 06 10 08  	li	a2, 129
802023f8: 81 45        	li	a1, 0
802023fa: 97 70 00 00  	auipc	ra, 7
802023fe: e7 80 80 29  	jalr	664(ra)
80202402: 1b 05 0b 76  	addiw	a0, s6, 1888
80202406: 4e 95        	add	a0, a0, s3
80202408: 13 06 10 08  	li	a2, 129
8020240c: 81 45        	li	a1, 0
8020240e: 97 70 00 00  	auipc	ra, 7
80202412: e7 80 40 28  	jalr	644(ra)
80202416: 1b 05 8b 7e  	addiw	a0, s6, 2024
8020241a: 4e 95        	add	a0, a0, s3
8020241c: 13 06 10 08  	li	a2, 129
80202420: 81 45        	li	a1, 0
80202422: 97 70 00 00  	auipc	ra, 7
80202426: e7 80 00 27  	jalr	624(ra)
8020242a: 09 6b        	lui	s6, 2
8020242c: 1b 05 0b 87  	addiw	a0, s6, -1936
80202430: 4e 95        	add	a0, a0, s3
80202432: 13 06 10 08  	li	a2, 129
80202436: 81 45        	li	a1, 0
80202438: 97 70 00 00  	auipc	ra, 7
8020243c: e7 80 a0 25  	jalr	602(ra)
80202440: 1b 05 8b 8f  	addiw	a0, s6, -1800
80202444: 4e 95        	add	a0, a0, s3
80202446: 13 06 10 08  	li	a2, 129
8020244a: 81 45        	li	a1, 0
8020244c: 97 70 00 00  	auipc	ra, 7
80202450: e7 80 60 24  	jalr	582(ra)
80202454: 1b 05 0b 98  	addiw	a0, s6, -1664
80202458: 4e 95        	add	a0, a0, s3
8020245a: 13 06 10 08  	li	a2, 129
8020245e: 81 45        	li	a1, 0
80202460: 97 70 00 00  	auipc	ra, 7
80202464: e7 80 20 23  	jalr	562(ra)
80202468: 1b 05 8b a0  	addiw	a0, s6, -1528
8020246c: 4e 95        	add	a0, a0, s3
8020246e: 13 06 10 08  	li	a2, 129
80202472: 81 45        	li	a1, 0
80202474: 97 70 00 00  	auipc	ra, 7
80202478: e7 80 e0 21  	jalr	542(ra)
8020247c: 1b 05 0b a9  	addiw	a0, s6, -1392
80202480: 4e 95        	add	a0, a0, s3
80202482: 13 06 10 08  	li	a2, 129
80202486: 81 45        	li	a1, 0
80202488: 97 70 00 00  	auipc	ra, 7
8020248c: e7 80 a0 20  	jalr	522(ra)
80202490: 1b 05 8b b1  	addiw	a0, s6, -1256
80202494: 4e 95        	add	a0, a0, s3
80202496: 13 06 10 08  	li	a2, 129
8020249a: 81 45        	li	a1, 0
8020249c: 97 70 00 00  	auipc	ra, 7
802024a0: e7 80 60 1f  	jalr	502(ra)
802024a4: 1b 05 0b ba  	addiw	a0, s6, -1120
802024a8: 4e 95        	add	a0, a0, s3
802024aa: 13 06 10 08  	li	a2, 129
802024ae: 81 45        	li	a1, 0
802024b0: 97 70 00 00  	auipc	ra, 7
802024b4: e7 80 20 1e  	jalr	482(ra)
802024b8: 1b 05 8b c2  	addiw	a0, s6, -984
802024bc: 4e 95        	add	a0, a0, s3
802024be: 13 06 10 08  	li	a2, 129
802024c2: 81 45        	li	a1, 0
802024c4: 97 70 00 00  	auipc	ra, 7
802024c8: e7 80 e0 1c  	jalr	462(ra)
802024cc: 1b 05 0b cb  	addiw	a0, s6, -848
802024d0: 4e 95        	add	a0, a0, s3
802024d2: 13 06 10 08  	li	a2, 129
802024d6: 81 45        	li	a1, 0
802024d8: 97 70 00 00  	auipc	ra, 7
802024dc: e7 80 a0 1b  	jalr	442(ra)
802024e0: 1b 05 8b d3  	addiw	a0, s6, -712
802024e4: 4e 95        	add	a0, a0, s3
802024e6: 13 06 10 08  	li	a2, 129
802024ea: 81 45        	li	a1, 0
802024ec: 97 70 00 00  	auipc	ra, 7
802024f0: e7 80 60 1a  	jalr	422(ra)
802024f4: 1b 05 0b dc  	addiw	a0, s6, -576
802024f8: 4e 95        	add	a0, a0, s3
802024fa: 13 06 10 08  	li	a2, 129
802024fe: 81 45        	li	a1, 0
80202500: 97 70 00 00  	auipc	ra, 7
80202504: e7 80 20 19  	jalr	402(ra)
80202508: 1b 05 8b e4  	addiw	a0, s6, -440
8020250c: 4e 95        	add	a0, a0, s3
8020250e: 13 06 10 08  	li	a2, 129
80202512: 81 45        	li	a1, 0
80202514: 97 70 00 00  	auipc	ra, 7
80202518: e7 80 e0 17  	jalr	382(ra)
8020251c: 1b 05 0b ed  	addiw	a0, s6, -304
80202520: 4e 95        	add	a0, a0, s3
80202522: 13 06 10 08  	li	a2, 129
80202526: 81 45        	li	a1, 0
80202528: 97 70 00 00  	auipc	ra, 7
8020252c: e7 80 a0 16  	jalr	362(ra)
80202530: 1b 05 8b f5  	addiw	a0, s6, -168
80202534: 4e 95        	add	a0, a0, s3
80202536: 13 06 10 08  	li	a2, 129
8020253a: 81 45        	li	a1, 0
8020253c: 97 70 00 00  	auipc	ra, 7
80202540: e7 80 60 15  	jalr	342(ra)
80202544: 1b 05 0b fe  	addiw	a0, s6, -32
80202548: 4e 95        	add	a0, a0, s3
8020254a: 13 06 10 08  	li	a2, 129
8020254e: 81 45        	li	a1, 0
80202550: 97 70 00 00  	auipc	ra, 7
80202554: e7 80 20 14  	jalr	322(ra)
80202558: 1b 05 8b 06  	addiw	a0, s6, 104
8020255c: 4e 95        	add	a0, a0, s3
8020255e: 13 06 10 08  	li	a2, 129
80202562: 81 45        	li	a1, 0
80202564: 97 70 00 00  	auipc	ra, 7
80202568: e7 80 e0 12  	jalr	302(ra)
8020256c: 1b 05 0b 0f  	addiw	a0, s6, 240
80202570: 4e 95        	add	a0, a0, s3
80202572: 13 06 10 08  	li	a2, 129
80202576: 81 45        	li	a1, 0
80202578: 97 70 00 00  	auipc	ra, 7
8020257c: e7 80 a0 11  	jalr	282(ra)
80202580: 1b 05 8b 17  	addiw	a0, s6, 376
80202584: 4e 95        	add	a0, a0, s3
80202586: 13 06 10 08  	li	a2, 129
8020258a: 81 45        	li	a1, 0
8020258c: 97 70 00 00  	auipc	ra, 7
80202590: e7 80 60 10  	jalr	262(ra)
80202594: 93 99 9a 00  	slli	s3, s5, 9
80202598: 11 65        	lui	a0, 4
8020259a: 1b 05 05 45  	addiw	a0, a0, 1104
8020259e: 33 05 a4 40  	sub	a0, s0, a0
802025a2: 89 65        	lui	a1, 2
802025a4: 9b 85 05 25  	addiw	a1, a1, 592
802025a8: b3 05 b4 40  	sub	a1, s0, a1
802025ac: 4e 86        	mv	a2, s3
802025ae: 97 70 00 00  	auipc	ra, 7
802025b2: e7 80 c0 0e  	jalr	236(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802025b6: 23 b4 24 01  	sd	s2, 8(s1)
802025ba: 13 89 04 01  	addi	s2, s1, 16
802025be: 11 65        	lui	a0, 4
802025c0: 1b 05 05 45  	addiw	a0, a0, 1104
802025c4: b3 05 a4 40  	sub	a1, s0, a0
802025c8: 4a 85        	mv	a0, s2
802025ca: 4e 86        	mv	a2, s3
802025cc: 97 70 00 00  	auipc	ra, 7
802025d0: e7 80 e0 0c  	jalr	206(ra)
;                 finish.panicked = false;
802025d4: 23 04 0a 00  	sb	zero, 8(s4)
802025d8: 0f 00 10 03  	fence	rw, w
802025dc: 09 45        	li	a0, 2
802025de: 88 e0        	sd	a0, 0(s1)
802025e0: 11 65        	lui	a0, 4
802025e2: 1b 05 05 46  	addiw	a0, a0, 1120
802025e6: 33 05 a4 40  	sub	a0, s0, a0
802025ea: 97 50 00 00  	auipc	ra, 5
802025ee: e7 80 80 7d  	jalr	2008(ra)
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
80202648: 17 85 00 00  	auipc	a0, 8
8020264c: 13 05 05 a4  	addi	a0, a0, -1472

0000000080202650 <.Lpcrel_hi1>:
80202650: 97 85 00 00  	auipc	a1, 8
80202654: 13 86 05 a6  	addi	a2, a1, -1440
80202658: 93 05 80 02  	li	a1, 40
8020265c: 97 60 00 00  	auipc	ra, 6
80202660: e7 80 40 d6  	jalr	-668(ra)
80202664: 00 00        	unimp	

0000000080202666 <.Lpcrel_hi2>:
;                 PANICKED => panic!("Once has panicked"),
80202666: 17 85 00 00  	auipc	a0, 8
8020266a: 13 05 a5 99  	addi	a0, a0, -1638

000000008020266e <.Lpcrel_hi3>:
8020266e: 97 85 00 00  	auipc	a1, 8
80202672: 13 86 25 a0  	addi	a2, a1, -1534
80202676: c5 45        	li	a1, 17
80202678: 97 60 00 00  	auipc	ra, 6
8020267c: e7 80 80 d4  	jalr	-696(ra)
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
802026fe: 17 85 00 00  	auipc	a0, 8
80202702: 93 0b 95 9d  	addi	s7, a0, -1575
80202706: 11 4c        	li	s8, 4
;         Self {
80202708: 13 06 80 0b  	li	a2, 184
8020270c: 4a 85        	mv	a0, s2
8020270e: 81 45        	li	a1, 0
80202710: 97 70 00 00  	auipc	ra, 7
80202714: e7 80 20 f8  	jalr	-126(ra)
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202718: 13 85 04 ea  	addi	a0, s1, -352
8020271c: 13 06 00 08  	li	a2, 128
80202720: 81 45        	li	a1, 0
80202722: 97 70 00 00  	auipc	ra, 7
80202726: e7 80 00 f7  	jalr	-144(ra)
8020272a: 23 b0 74 f3  	sd	s7, -224(s1)
8020272e: 23 b4 84 f3  	sd	s8, -216(s1)
80202732: 23 b8 04 f2  	sd	zero, -208(s1)
80202736: 23 8c 04 f2  	sb	zero, -200(s1)
8020273a: 13 85 94 f3  	addi	a0, s1, -199
8020273e: b1 65        	lui	a1, 12
80202740: 9b 85 05 c6  	addiw	a1, a1, -928
80202744: b3 05 b4 40  	sub	a1, s0, a1
80202748: 13 06 f0 0b  	li	a2, 191
8020274c: 97 70 00 00  	auipc	ra, 7
80202750: e7 80 e0 f4  	jalr	-178(ra)
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
8020278a: 97 70 00 00  	auipc	ra, 7
8020278e: e7 80 00 f1  	jalr	-240(ra)
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
802027b6: 97 50 00 00  	auipc	ra, 5
802027ba: e7 80 c0 5f  	jalr	1532(ra)
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
80202834: 97 70 00 00  	auipc	ra, 7
80202838: e7 80 60 e6  	jalr	-410(ra)
;                 finish.panicked = false;
8020283c: 23 04 0a 00  	sb	zero, 8(s4)
80202840: 0f 00 10 03  	fence	rw, w
80202844: 09 45        	li	a0, 2
80202846: 23 b0 aa 00  	sd	a0, 0(s5)
8020284a: 31 65        	lui	a0, 12
8020284c: 1b 05 05 c7  	addiw	a0, a0, -912
80202850: 33 05 a4 40  	sub	a0, s0, a0
80202854: 97 50 00 00  	auipc	ra, 5
80202858: e7 80 e0 56  	jalr	1390(ra)
8020285c: 61 b7        	j	0x802027e4 <.Lpcrel_hi8+0xe6>
;             match status {
8020285e: 05 e1        	bnez	a0, 0x8020287e <.Lpcrel_hi11>

0000000080202860 <.Lpcrel_hi9>:
;                 INCOMPLETE => unreachable!(),
80202860: 17 85 00 00  	auipc	a0, 8
80202864: 13 05 85 82  	addi	a0, a0, -2008

0000000080202868 <.Lpcrel_hi10>:
80202868: 97 85 00 00  	auipc	a1, 8
8020286c: 13 86 85 84  	addi	a2, a1, -1976
80202870: 93 05 80 02  	li	a1, 40
80202874: 97 60 00 00  	auipc	ra, 6
80202878: e7 80 c0 b4  	jalr	-1204(ra)
8020287c: 00 00        	unimp	

000000008020287e <.Lpcrel_hi11>:
;                 PANICKED => panic!("Once has panicked"),
8020287e: 17 75 00 00  	auipc	a0, 7
80202882: 13 05 25 78  	addi	a0, a0, 1922

0000000080202886 <.Lpcrel_hi12>:
80202886: 97 75 00 00  	auipc	a1, 7
8020288a: 13 86 a5 7e  	addi	a2, a1, 2026
8020288e: c5 45        	li	a1, 17
80202890: 97 60 00 00  	auipc	ra, 6
80202894: e7 80 00 b3  	jalr	-1232(ra)
80202898: 00 00        	unimp	

000000008020289a <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.15917444581316219641>:
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
802028ac: 09 c5        	beqz	a0, 0x802028b6 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.15917444581316219641+0x1c>
;             kfree(self.trapframe as Addr);
802028ae: 97 40 00 00  	auipc	ra, 4
802028b2: e7 80 20 20  	jalr	514(ra)
;         !self.data.is_null()
802028b6: 03 b5 04 14  	ld	a0, 320(s1)
;         self.trapframe = null_mut();
802028ba: 23 b4 04 14  	sd	zero, 328(s1)
;         if self.uvm.valid() {
802028be: 39 cd        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.15917444581316219641+0x82>
802028c0: 13 89 04 14  	addi	s2, s1, 320
802028c4: 37 05 00 04  	lui	a0, 16384
802028c8: 7d 35        	addiw	a0, a0, -1
802028ca: 93 15 c5 00  	slli	a1, a0, 12
;         self.uvm.uvmunmap(TRAMPOLINE, 1, false);
802028ce: 05 46        	li	a2, 1
802028d0: 4a 85        	mv	a0, s2
802028d2: 81 46        	li	a3, 0
802028d4: 97 40 00 00  	auipc	ra, 4
802028d8: e7 80 60 8d  	jalr	-1834(ra)
802028dc: 37 05 00 02  	lui	a0, 8192
802028e0: 7d 35        	addiw	a0, a0, -1
802028e2: 93 15 d5 00  	slli	a1, a0, 13
;         self.uvm.uvmunmap(TRAPFRAME, 1, false);
802028e6: 05 46        	li	a2, 1
802028e8: 4a 85        	mv	a0, s2
802028ea: 81 46        	li	a3, 0
802028ec: 97 40 00 00  	auipc	ra, 4
802028f0: e7 80 e0 8b  	jalr	-1858(ra)
;         self.uvm.uvmfree(self.sz);
802028f4: 03 b5 84 13  	ld	a0, 312(s1)
; 		if sz > 0 {
802028f8: 15 c1        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.15917444581316219641+0x82>
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
8020290e: e7 80 00 8a  	jalr	-1888(ra)
; 			self.freewalk();
80202912: 4a 85        	mv	a0, s2
80202914: 97 40 00 00  	auipc	ra, 4
80202918: e7 80 a0 b1  	jalr	-1254(ra)
;         self.pid = 0;
8020291c: 23 b4 04 12  	sd	zero, 296(s1)
80202920: 83 b5 04 16  	ld	a1, 352(s1)
;         self.pid = 0;
80202924: 23 b0 04 12  	sd	zero, 288(s1)
80202928: 13 89 04 16  	addi	s2, s1, 352
;         self.sz = 0;
8020292c: 23 bc 04 12  	sd	zero, 312(s1)
80202930: 23 b0 04 14  	sd	zero, 320(s1)
80202934: 81 c9        	beqz	a1, 0x80202944 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.15917444581316219641+0xaa>
80202936: 03 b5 84 15  	ld	a0, 344(s1)
8020293a: 05 46        	li	a2, 1
8020293c: 97 50 00 00  	auipc	ra, 5
80202940: e7 80 60 47  	jalr	1142(ra)
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
;         asm!{
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

0000000080202982 <.Lpcrel_hi8>:
;         self.0.call_once(builder)
80202982: 17 05 09 00  	auipc	a0, 144
80202986: 13 05 e5 4d  	addi	a0, a0, 1246
8020298a: 97 f0 ff ff  	auipc	ra, 1048575
8020298e: e7 80 60 67  	jalr	1654(ra)
80202992: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202996: 63 f0 b4 06  	bgeu	s1, a1, 0x802029f6 <.Lpcrel_hi9>
8020299a: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
8020299e: 33 86 b4 02  	mul	a2, s1, a1
802029a2: 2a 96        	add	a2, a2, a0
802029a4: 2c 7e        	ld	a1, 120(a2)
802029a6: 13 05 86 07  	addi	a0, a2, 120
802029aa: 91 e5        	bnez	a1, 0x802029b6 <.Lpcrel_hi8+0x34>
;         mc.intena = old;
802029ac: 7a 19        	slli	s2, s2, 62
802029ae: 93 56 f9 03  	srli	a3, s2, 63
802029b2: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
802029b6: 85 05        	addi	a1, a1, 1
802029b8: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802029ba: 92 84        	mv	s1, tp

00000000802029bc <.Lpcrel_hi10>:
;         self.0.call_once(builder)
802029bc: 17 05 09 00  	auipc	a0, 144
802029c0: 13 05 45 4a  	addi	a0, a0, 1188
802029c4: 97 f0 ff ff  	auipc	ra, 1048575
802029c8: e7 80 c0 63  	jalr	1596(ra)
802029cc: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802029d0: 63 f8 b4 02  	bgeu	s1, a1, 0x80202a00 <.Lpcrel_hi11>
802029d4: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
802029d8: b3 85 b4 02  	mul	a1, s1, a1
802029dc: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
802029de: 04 61        	ld	s1, 0(a0)
;     pop_off();
802029e0: 97 30 00 00  	auipc	ra, 3
802029e4: e7 80 00 6e  	jalr	1760(ra)
; }
802029e8: 26 85        	mv	a0, s1
802029ea: e2 60        	ld	ra, 24(sp)
802029ec: 42 64        	ld	s0, 16(sp)
802029ee: a2 64        	ld	s1, 8(sp)
802029f0: 02 69        	ld	s2, 0(sp)
802029f2: 05 61        	addi	sp, sp, 32
802029f4: 82 80        	ret

00000000802029f6 <.Lpcrel_hi9>:
; 	&mut CPUS.get_mut()[id]
802029f6: 17 85 00 00  	auipc	a0, 8
802029fa: 13 06 25 b5  	addi	a2, a0, -1198
802029fe: 29 a0        	j	0x80202a08 <.Lpcrel_hi11+0x8>

0000000080202a00 <.Lpcrel_hi11>:
80202a00: 17 85 00 00  	auipc	a0, 8
80202a04: 13 06 85 b4  	addi	a2, a0, -1208
80202a08: 93 05 00 04  	li	a1, 64
80202a0c: 26 85        	mv	a0, s1
80202a0e: 97 60 00 00  	auipc	ra, 6
80202a12: e7 80 e0 9d  	jalr	-1570(ra)
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

0000000080202a2e <.Lpcrel_hi12>:
;         self.0.call_once(builder)
80202a2e: 17 a5 08 00  	auipc	a0, 138
80202a32: 13 05 a5 60  	addi	a0, a0, 1546
80202a36: 97 00 00 00  	auipc	ra, 0
80202a3a: e7 80 c0 c4  	jalr	-948(ra)
80202a3e: 13 0a 05 12  	addi	s4, a0, 288
80202a42: 93 09 00 04  	li	s3, 64

0000000080202a46 <.Lpcrel_hi13>:
80202a46: 17 05 09 00  	auipc	a0, 144
80202a4a: 13 09 a5 41  	addi	s2, a0, 1050
80202a4e: 93 0a 80 08  	li	s5, 136
80202a52: 13 0b 00 04  	li	s6, 64
;         p.lock.acquire();
80202a56: 13 05 0a f6  	addi	a0, s4, -160
80202a5a: 97 30 00 00  	auipc	ra, 3
80202a5e: e7 80 60 23  	jalr	566(ra)
; #[derive(PartialEq, Eq, Clone, Copy)]
80202a62: 03 45 0a 05  	lbu	a0, 80(s4)
;         if p.state == ProcState::Unused {
80202a66: 31 c5        	beqz	a0, 0x80202ab2 <.Lpcrel_hi13+0x6c>
80202a68: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202a6c: 63 02 05 34  	beqz	a0, 0x80202db0 <.Lpcrel_hi15>
80202a70: 83 3b 0a f7  	ld	s7, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202a74: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
80202a76: 4a 85        	mv	a0, s2
80202a78: 97 f0 ff ff  	auipc	ra, 1048575
80202a7c: e7 80 80 58  	jalr	1416(ra)
; 	&mut CPUS.get_mut()[id]
80202a80: 63 f8 34 2d  	bgeu	s1, s3, 0x80202d50 <.Lpcrel_hi14>
80202a84: b3 85 54 03  	mul	a1, s1, s5
80202a88: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202a8a: 63 93 ab 32  	bne	s7, a0, 0x80202db0 <.Lpcrel_hi15>
;         self.cpu = null_mut();
80202a8e: 23 38 0a f6  	sd	zero, -144(s4)
80202a92: 0f 00 30 03  	fence	rw, rw
80202a96: 0f 00 10 03  	fence	rw, w
80202a9a: 23 0c 0a f6  	sb	zero, -136(s4)
;         pop_off();
80202a9e: 97 30 00 00  	auipc	ra, 3
80202aa2: e7 80 20 62  	jalr	1570(ra)
80202aa6: 7d 1b        	addi	s6, s6, -1
80202aa8: 13 0a 8a 17  	addi	s4, s4, 376
80202aac: e3 15 0b fa  	bnez	s6, 0x80202a56 <.Lpcrel_hi13+0x10>
80202ab0: 59 a4        	j	0x80202d36 <.Lpcrel_hi29+0x3e>
80202ab2: 0f 00 30 03  	fence	rw, rw

0000000080202ab6 <.Lpcrel_hi18>:
80202ab6: 17 a5 08 00  	auipc	a0, 138
80202aba: 93 04 a5 54  	addi	s1, a0, 1354
80202abe: 88 78        	ld	a0, 48(s1)
80202ac0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202ac4: 31 e5        	bnez	a0, 0x80202b10 <.Lpcrel_hi19+0x32>
80202ac6: 13 86 04 03  	addi	a2, s1, 48
80202aca: 85 45        	li	a1, 1
80202acc: 2f 35 06 16  	lr.d.aqrl	a0, (a2)
80202ad0: 21 e1        	bnez	a0, 0x80202b10 <.Lpcrel_hi19+0x32>
80202ad2: af 36 b6 1e  	sc.d.aqrl	a3, a1, (a2)
80202ad6: fd fa        	bnez	a3, 0x80202acc <.Lpcrel_hi18+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202ad8: 23 34 c4 f8  	sd	a2, -120(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202adc: 8c e0        	sd	a1, 0(s1)

0000000080202ade <.Lpcrel_hi19>:
80202ade: 17 75 00 00  	auipc	a0, 7
80202ae2: 13 05 a5 5e  	addi	a0, a0, 1514
80202ae6: 88 e4        	sd	a0, 8(s1)
80202ae8: 1d 45        	li	a0, 7
80202aea: 88 e8        	sd	a0, 16(s1)
80202aec: 23 bc 04 00  	sd	zero, 24(s1)
80202af0: 23 80 04 02  	sb	zero, 32(s1)
80202af4: 8c f4        	sd	a1, 40(s1)
;                 finish.panicked = false;
80202af6: 23 08 04 f8  	sb	zero, -112(s0)
80202afa: 0f 00 10 03  	fence	rw, w
80202afe: 09 45        	li	a0, 2
80202b00: 88 f8        	sd	a0, 48(s1)
80202b02: 13 05 84 f8  	addi	a0, s0, -120
80202b06: 97 50 00 00  	auipc	ra, 5
80202b0a: e7 80 c0 2b  	jalr	700(ra)
80202b0e: 05 a0        	j	0x80202b2e <.Lpcrel_hi19+0x50>
80202b10: 85 45        	li	a1, 1
;             match status {
80202b12: 63 1b b5 00  	bne	a0, a1, 0x80202b28 <.Lpcrel_hi19+0x4a>
80202b16: 0f 00 00 01  	fence	w, 0
80202b1a: 0f 00 30 03  	fence	rw, rw
80202b1e: 88 78        	ld	a0, 48(s1)
80202b20: 0f 00 30 02  	fence	r, rw
;             match status {
80202b24: e3 09 b5 fe  	beq	a0, a1, 0x80202b16 <.Lpcrel_hi19+0x38>
80202b28: 89 45        	li	a1, 2
;             match status {
80202b2a: 63 11 b5 2c  	bne	a0, a1, 0x80202dec <.Lpcrel_hi17+0x16>
;     pidcnt.pid_lock.acquire();
80202b2e: 13 85 84 00  	addi	a0, s1, 8
80202b32: 97 30 00 00  	auipc	ra, 3
80202b36: e7 80 e0 15  	jalr	350(ra)
;     pid = pidcnt.nextpid;
80202b3a: 83 ba 84 02  	ld	s5, 40(s1)
;     pidcnt.nextpid += 1;
80202b3e: 13 85 1a 00  	addi	a0, s5, 1
80202b42: 88 f4        	sd	a0, 40(s1)
80202b44: 03 85 04 02  	lb	a0, 32(s1)
80202b48: 63 00 05 2e  	beqz	a0, 0x80202e28 <.Lpcrel_hi26>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202b4c: 83 b9 84 01  	ld	s3, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202b50: 12 89        	mv	s2, tp

0000000080202b52 <.Lpcrel_hi24>:
;         self.0.call_once(builder)
80202b52: 17 05 09 00  	auipc	a0, 144
80202b56: 13 05 e5 30  	addi	a0, a0, 782
80202b5a: 97 f0 ff ff  	auipc	ra, 1048575
80202b5e: e7 80 60 4a  	jalr	1190(ra)
80202b62: 93 05 00 04  	li	a1, 64
80202b66: 63 71 b9 20  	bgeu	s2, a1, 0x80202d68 <.Lpcrel_hi25>
80202b6a: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202b6e: b3 05 b9 02  	mul	a1, s2, a1
80202b72: 2e 95        	add	a0, a0, a1
80202b74: 63 9a a9 2a  	bne	s3, a0, 0x80202e28 <.Lpcrel_hi26>
80202b78: 93 09 0a ee  	addi	s3, s4, -288
;         self.cpu = null_mut();
80202b7c: 23 bc 04 00  	sd	zero, 24(s1)
80202b80: 0f 00 30 03  	fence	rw, rw
80202b84: 0f 00 10 03  	fence	rw, w
80202b88: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80202b8c: 97 30 00 00  	auipc	ra, 3
80202b90: e7 80 40 53  	jalr	1332(ra)
;             p.pid = allocpid();
80202b94: 23 30 5a 01  	sd	s5, 0(s4)
80202b98: 05 45        	li	a0, 1
;             p.state = ProcState::Used;
80202b9a: 23 08 aa 04  	sb	a0, 80(s4)
;             let pa = kalloc();
80202b9e: 97 40 00 00  	auipc	ra, 4
80202ba2: e7 80 80 ce  	jalr	-792(ra)
;             p.trapframe = pa as *mut Trapframe;
80202ba6: 23 34 aa 02  	sd	a0, 40(s4)
;             if pa == 0 {
80202baa: 63 0b 05 12  	beqz	a0, 0x80202ce0 <.Lpcrel_hi46+0x16>
80202bae: 2a 89        	mv	s2, a0
;         let pagetable = PagetableT::addr2pagetablet(kalloc());
80202bb0: 97 40 00 00  	auipc	ra, 4
80202bb4: e7 80 60 cd  	jalr	-810(ra)
80202bb8: aa 84        	mv	s1, a0
80202bba: 05 66        	lui	a2, 1
80202bbc: 81 45        	li	a1, 0
80202bbe: 97 70 00 00  	auipc	ra, 7
80202bc2: e7 80 40 ad  	jalr	-1324(ra)
;         let mut uvm = Uvm::from_pagetable(Uvm::uvmcreate());
80202bc6: 23 30 94 f8  	sd	s1, -128(s0)
;         if !uvm.valid() {
80202bca: c9 cc        	beqz	s1, 0x80202c64 <.Lpcrel_hi41+0x1a>
80202bcc: 37 05 00 04  	lui	a0, 16384
80202bd0: 7d 35        	addiw	a0, a0, -1
80202bd2: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80202bd6: 13 05 04 f8  	addi	a0, s0, -128
80202bda: 05 46        	li	a2, 1
80202bdc: 97 40 00 00  	auipc	ra, 4
80202be0: e7 80 20 8f  	jalr	-1806(ra)
;             if pte.is_null() {
80202be4: 41 c1        	beqz	a0, 0x80202c64 <.Lpcrel_hi41+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202be6: 83 45 05 00  	lbu	a1, 0(a0)
80202bea: 85 89        	andi	a1, a1, 1
80202bec: 63 9a 05 2a  	bnez	a1, 0x80202ea0 <.Lpcrel_hi35>

0000000080202bf0 <.Lpcrel_hi34>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202bf0: 97 e5 ff ff  	auipc	a1, 1048574
80202bf4: 93 85 05 41  	addi	a1, a1, 1040
80202bf8: b1 81        	srli	a1, a1, 12
80202bfa: aa 05        	slli	a1, a1, 10
80202bfc: ad 05        	addi	a1, a1, 11
80202bfe: 0c e1        	sd	a1, 0(a0)
80202c00: 37 05 00 02  	lui	a0, 8192
80202c04: 7d 35        	addiw	a0, a0, -1
80202c06: 93 15 d5 00  	slli	a1, a0, 13
;             let pte = self.walk(a, true);
80202c0a: 13 05 04 f8  	addi	a0, s0, -128
80202c0e: 05 46        	li	a2, 1
80202c10: 97 40 00 00  	auipc	ra, 4
80202c14: e7 80 e0 8b  	jalr	-1858(ra)
;             if pte.is_null() {
80202c18: 31 c5        	beqz	a0, 0x80202c64 <.Lpcrel_hi41+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202c1a: 83 45 05 00  	lbu	a1, 0(a0)
80202c1e: 85 89        	andi	a1, a1, 1
80202c20: 63 9e 05 2a  	bnez	a1, 0x80202edc <.Lpcrel_hi38>
;     (pa >> 12) << 10
80202c24: 93 55 c9 00  	srli	a1, s2, 12
80202c28: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202c2a: 9d 05        	addi	a1, a1, 7
80202c2c: 0c e1        	sd	a1, 0(a0)
;         uvm
80202c2e: 03 35 04 f8  	ld	a0, -128(s0)
;             p.uvm = p.proc_uvm();
80202c32: 23 30 aa 02  	sd	a0, 32(s4)
;             if !p.uvm.valid() {
80202c36: 0d c9        	beqz	a0, 0x80202c68 <.Lpcrel_hi41+0x1e>
80202c38: 13 05 8a f8  	addi	a0, s4, -120
80202c3c: 13 06 80 06  	li	a2, 104
80202c40: 81 45        	li	a1, 0
80202c42: 97 70 00 00  	auipc	ra, 7
80202c46: e7 80 00 a5  	jalr	-1456(ra)

0000000080202c4a <.Lpcrel_hi41>:
;             p.context.ra = forkret as usize;
80202c4a: 17 35 00 00  	auipc	a0, 3
;             p.context.sp = p.kstack + KERNEL_STACK_SIZE;
80202c4e: 83 35 0a 01  	ld	a1, 16(s4)
;             p.context.ra = forkret as usize;
80202c52: 13 05 a5 db  	addi	a0, a0, -582
80202c56: 23 30 aa f8  	sd	a0, -128(s4)
80202c5a: 11 65        	lui	a0, 4
;             p.context.sp = p.kstack + KERNEL_STACK_SIZE;
80202c5c: 2e 95        	add	a0, a0, a1
80202c5e: 23 34 aa f8  	sd	a0, -120(s4)
80202c62: d9 a8        	j	0x80202d38 <.Lpcrel_hi29+0x40>
;             p.uvm = p.proc_uvm();
80202c64: 23 30 0a 02  	sd	zero, 32(s4)
;                 p.freeproc();
80202c68: 4e 85        	mv	a0, s3
80202c6a: 97 00 00 00  	auipc	ra, 0
80202c6e: e7 80 00 c3  	jalr	-976(ra)
80202c72: 03 05 8a f7  	lb	a0, -136(s4)
80202c76: 1d c5        	beqz	a0, 0x80202ca4 <.Lpcrel_hi44>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202c78: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202c7c: 92 84        	mv	s1, tp

0000000080202c7e <.Lpcrel_hi42>:
;         self.0.call_once(builder)
80202c7e: 17 05 09 00  	auipc	a0, 144
80202c82: 13 05 25 1e  	addi	a0, a0, 482
80202c86: 97 f0 ff ff  	auipc	ra, 1048575
80202c8a: e7 80 a0 37  	jalr	890(ra)
80202c8e: 93 05 00 04  	li	a1, 64
80202c92: 63 f7 b4 0e  	bgeu	s1, a1, 0x80202d80 <.Lpcrel_hi43>
80202c96: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202c9a: b3 85 b4 02  	mul	a1, s1, a1
80202c9e: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202ca0: 63 0f a9 06  	beq	s2, a0, 0x80202d1e <.Lpcrel_hi29+0x26>

0000000080202ca4 <.Lpcrel_hi44>:
80202ca4: 17 75 00 00  	auipc	a0, 7
80202ca8: 13 05 c5 55  	addi	a0, a0, 1372
80202cac: 23 34 a4 f8  	sd	a0, -120(s0)
80202cb0: 05 45        	li	a0, 1
80202cb2: 23 38 a4 f8  	sd	a0, -112(s0)
80202cb6: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202cba <.Lpcrel_hi45>:
80202cba: 17 75 00 00  	auipc	a0, 7
80202cbe: 13 05 65 4f  	addi	a0, a0, 1270
80202cc2: 23 3c a4 f8  	sd	a0, -104(s0)
80202cc6: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202cca <.Lpcrel_hi46>:
;             panic!("release");
80202cca: 17 75 00 00  	auipc	a0, 7
80202cce: 93 05 65 54  	addi	a1, a0, 1350
80202cd2: 13 05 84 f8  	addi	a0, s0, -120
80202cd6: 97 50 00 00  	auipc	ra, 5
80202cda: e7 80 c0 6b  	jalr	1724(ra)
80202cde: 00 00        	unimp	
;                 p.freeproc();
80202ce0: 4e 85        	mv	a0, s3
80202ce2: 97 00 00 00  	auipc	ra, 0
80202ce6: e7 80 80 bb  	jalr	-1096(ra)
80202cea: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202cee: 63 0b 05 16  	beqz	a0, 0x80202e64 <.Lpcrel_hi31>
80202cf2: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202cf6: 92 84        	mv	s1, tp

0000000080202cf8 <.Lpcrel_hi29>:
;         self.0.call_once(builder)
80202cf8: 17 05 09 00  	auipc	a0, 144
80202cfc: 13 05 85 16  	addi	a0, a0, 360
80202d00: 97 f0 ff ff  	auipc	ra, 1048575
80202d04: e7 80 00 30  	jalr	768(ra)
80202d08: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202d0c: 63 f6 b4 08  	bgeu	s1, a1, 0x80202d98 <.Lpcrel_hi30>
80202d10: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202d14: b3 85 b4 02  	mul	a1, s1, a1
80202d18: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202d1a: 63 15 a9 14  	bne	s2, a0, 0x80202e64 <.Lpcrel_hi31>
80202d1e: 23 38 0a f6  	sd	zero, -144(s4)
80202d22: 0f 00 30 03  	fence	rw, rw
80202d26: 0f 00 10 03  	fence	rw, w
80202d2a: 23 0c 0a f6  	sb	zero, -136(s4)
80202d2e: 97 30 00 00  	auipc	ra, 3
80202d32: e7 80 20 39  	jalr	914(ra)
80202d36: 81 49        	li	s3, 0
; }
80202d38: 4e 85        	mv	a0, s3
80202d3a: e6 70        	ld	ra, 120(sp)
80202d3c: 46 74        	ld	s0, 112(sp)
80202d3e: a6 74        	ld	s1, 104(sp)
80202d40: 06 79        	ld	s2, 96(sp)
80202d42: e6 69        	ld	s3, 88(sp)
80202d44: 46 6a        	ld	s4, 80(sp)
80202d46: a6 6a        	ld	s5, 72(sp)
80202d48: 06 6b        	ld	s6, 64(sp)
80202d4a: e2 7b        	ld	s7, 56(sp)
80202d4c: 09 61        	addi	sp, sp, 128
80202d4e: 82 80        	ret

0000000080202d50 <.Lpcrel_hi14>:
; 	&mut CPUS.get_mut()[id]
80202d50: 17 75 00 00  	auipc	a0, 7
80202d54: 13 06 85 7f  	addi	a2, a0, 2040
80202d58: 93 05 00 04  	li	a1, 64
80202d5c: 26 85        	mv	a0, s1
80202d5e: 97 50 00 00  	auipc	ra, 5
80202d62: e7 80 e0 68  	jalr	1678(ra)
80202d66: 00 00        	unimp	

0000000080202d68 <.Lpcrel_hi25>:
; 	&mut CPUS.get_mut()[id]
80202d68: 17 75 00 00  	auipc	a0, 7
80202d6c: 13 06 05 7e  	addi	a2, a0, 2016
80202d70: 93 05 00 04  	li	a1, 64
80202d74: 4a 85        	mv	a0, s2
80202d76: 97 50 00 00  	auipc	ra, 5
80202d7a: e7 80 60 67  	jalr	1654(ra)
80202d7e: 00 00        	unimp	

0000000080202d80 <.Lpcrel_hi43>:
80202d80: 17 75 00 00  	auipc	a0, 7
80202d84: 13 06 85 7c  	addi	a2, a0, 1992
80202d88: 93 05 00 04  	li	a1, 64
80202d8c: 26 85        	mv	a0, s1
80202d8e: 97 50 00 00  	auipc	ra, 5
80202d92: e7 80 e0 65  	jalr	1630(ra)
80202d96: 00 00        	unimp	

0000000080202d98 <.Lpcrel_hi30>:
; 	&mut CPUS.get_mut()[id]
80202d98: 17 75 00 00  	auipc	a0, 7
80202d9c: 13 06 05 7b  	addi	a2, a0, 1968
80202da0: 93 05 00 04  	li	a1, 64
80202da4: 26 85        	mv	a0, s1
80202da6: 97 50 00 00  	auipc	ra, 5
80202daa: e7 80 60 64  	jalr	1606(ra)
80202dae: 00 00        	unimp	

0000000080202db0 <.Lpcrel_hi15>:
80202db0: 17 75 00 00  	auipc	a0, 7
80202db4: 13 05 05 45  	addi	a0, a0, 1104
80202db8: 23 34 a4 f8  	sd	a0, -120(s0)
80202dbc: 05 45        	li	a0, 1
80202dbe: 23 38 a4 f8  	sd	a0, -112(s0)
80202dc2: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202dc6 <.Lpcrel_hi16>:
80202dc6: 17 75 00 00  	auipc	a0, 7
80202dca: 13 05 a5 3e  	addi	a0, a0, 1002
80202dce: 23 3c a4 f8  	sd	a0, -104(s0)
80202dd2: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202dd6 <.Lpcrel_hi17>:
;             panic!("release");
80202dd6: 17 75 00 00  	auipc	a0, 7
80202dda: 93 05 a5 43  	addi	a1, a0, 1082
80202dde: 13 05 84 f8  	addi	a0, s0, -120
80202de2: 97 50 00 00  	auipc	ra, 5
80202de6: e7 80 00 5b  	jalr	1456(ra)
80202dea: 00 00        	unimp	
;             match status {
80202dec: 05 e1        	bnez	a0, 0x80202e0c <.Lpcrel_hi22>

0000000080202dee <.Lpcrel_hi20>:
;                 INCOMPLETE => unreachable!(),
80202dee: 17 75 00 00  	auipc	a0, 7
80202df2: 13 05 a5 29  	addi	a0, a0, 666

0000000080202df6 <.Lpcrel_hi21>:
80202df6: 97 75 00 00  	auipc	a1, 7
80202dfa: 13 86 a5 2b  	addi	a2, a1, 698
80202dfe: 93 05 80 02  	li	a1, 40
80202e02: 97 50 00 00  	auipc	ra, 5
80202e06: e7 80 e0 5b  	jalr	1470(ra)
80202e0a: 00 00        	unimp	

0000000080202e0c <.Lpcrel_hi22>:
;                 PANICKED => panic!("Once has panicked"),
80202e0c: 17 75 00 00  	auipc	a0, 7
80202e10: 13 05 45 1f  	addi	a0, a0, 500

0000000080202e14 <.Lpcrel_hi23>:
80202e14: 97 75 00 00  	auipc	a1, 7
80202e18: 13 86 c5 25  	addi	a2, a1, 604
80202e1c: c5 45        	li	a1, 17
80202e1e: 97 50 00 00  	auipc	ra, 5
80202e22: e7 80 20 5a  	jalr	1442(ra)
80202e26: 00 00        	unimp	

0000000080202e28 <.Lpcrel_hi26>:
80202e28: 17 75 00 00  	auipc	a0, 7
80202e2c: 13 05 85 3d  	addi	a0, a0, 984
80202e30: 23 34 a4 f8  	sd	a0, -120(s0)
80202e34: 05 45        	li	a0, 1
80202e36: 23 38 a4 f8  	sd	a0, -112(s0)
80202e3a: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202e3e <.Lpcrel_hi27>:
80202e3e: 17 75 00 00  	auipc	a0, 7
80202e42: 13 05 25 37  	addi	a0, a0, 882
80202e46: 23 3c a4 f8  	sd	a0, -104(s0)
80202e4a: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e4e <.Lpcrel_hi28>:
;             panic!("release");
80202e4e: 17 75 00 00  	auipc	a0, 7
80202e52: 93 05 25 3c  	addi	a1, a0, 962
80202e56: 13 05 84 f8  	addi	a0, s0, -120
80202e5a: 97 50 00 00  	auipc	ra, 5
80202e5e: e7 80 80 53  	jalr	1336(ra)
80202e62: 00 00        	unimp	

0000000080202e64 <.Lpcrel_hi31>:
80202e64: 17 75 00 00  	auipc	a0, 7
80202e68: 13 05 c5 39  	addi	a0, a0, 924
80202e6c: 23 34 a4 f8  	sd	a0, -120(s0)
80202e70: 05 45        	li	a0, 1
80202e72: 23 38 a4 f8  	sd	a0, -112(s0)
80202e76: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202e7a <.Lpcrel_hi32>:
80202e7a: 17 75 00 00  	auipc	a0, 7
80202e7e: 13 05 65 33  	addi	a0, a0, 822
80202e82: 23 3c a4 f8  	sd	a0, -104(s0)
80202e86: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e8a <.Lpcrel_hi33>:
;             panic!("release");
80202e8a: 17 75 00 00  	auipc	a0, 7
80202e8e: 93 05 65 38  	addi	a1, a0, 902
80202e92: 13 05 84 f8  	addi	a0, s0, -120
80202e96: 97 50 00 00  	auipc	ra, 5
80202e9a: e7 80 c0 4f  	jalr	1276(ra)
80202e9e: 00 00        	unimp	

0000000080202ea0 <.Lpcrel_hi35>:
80202ea0: 17 85 00 00  	auipc	a0, 8
80202ea4: 13 05 85 85  	addi	a0, a0, -1960
80202ea8: 23 34 a4 f8  	sd	a0, -120(s0)
80202eac: 05 45        	li	a0, 1
80202eae: 23 38 a4 f8  	sd	a0, -112(s0)
80202eb2: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202eb6 <.Lpcrel_hi36>:
80202eb6: 17 85 00 00  	auipc	a0, 8
80202eba: 13 05 25 80  	addi	a0, a0, -2046
80202ebe: 23 3c a4 f8  	sd	a0, -104(s0)
80202ec2: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ec6 <.Lpcrel_hi37>:
;                 panic!("mappages: remap");
80202ec6: 17 85 00 00  	auipc	a0, 8
80202eca: 93 05 25 84  	addi	a1, a0, -1982
80202ece: 13 05 84 f8  	addi	a0, s0, -120
80202ed2: 97 50 00 00  	auipc	ra, 5
80202ed6: e7 80 00 4c  	jalr	1216(ra)
80202eda: 00 00        	unimp	

0000000080202edc <.Lpcrel_hi38>:
80202edc: 17 85 00 00  	auipc	a0, 8
80202ee0: 13 05 c5 81  	addi	a0, a0, -2020
80202ee4: 23 34 a4 f8  	sd	a0, -120(s0)
80202ee8: 05 45        	li	a0, 1
80202eea: 23 38 a4 f8  	sd	a0, -112(s0)
80202eee: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202ef2 <.Lpcrel_hi39>:
80202ef2: 17 75 00 00  	auipc	a0, 7
80202ef6: 13 05 65 7c  	addi	a0, a0, 1990
80202efa: 23 3c a4 f8  	sd	a0, -104(s0)
80202efe: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202f02 <.Lpcrel_hi40>:
;                 panic!("mappages: remap");
80202f02: 17 85 00 00  	auipc	a0, 8
80202f06: 93 05 65 80  	addi	a1, a0, -2042
80202f0a: 13 05 84 f8  	addi	a0, s0, -120
80202f0e: 97 50 00 00  	auipc	ra, 5
80202f12: e7 80 40 48  	jalr	1156(ra)
80202f16: 00 00        	unimp	

0000000080202f18 <_ZN6kernel7process4proc8userinit17hd692e0c5cb7ab337E>:
; pub fn userinit() {
80202f18: 59 71        	addi	sp, sp, -112
80202f1a: 86 f4        	sd	ra, 104(sp)
80202f1c: a2 f0        	sd	s0, 96(sp)
80202f1e: a6 ec        	sd	s1, 88(sp)
80202f20: ca e8        	sd	s2, 80(sp)
80202f22: ce e4        	sd	s3, 72(sp)
80202f24: d2 e0        	sd	s4, 64(sp)
80202f26: 80 18        	addi	s0, sp, 112
80202f28: 0f 00 30 03  	fence	rw, rw

0000000080202f2c <.Lpcrel_hi47>:
80202f2c: 17 05 09 00  	auipc	a0, 144
80202f30: 93 04 c5 f1  	addi	s1, a0, -228
80202f34: 88 68        	ld	a0, 16(s1)
80202f36: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202f3a: 21 e1        	bnez	a0, 0x80202f7a <.Lpcrel_hi47+0x4e>
80202f3c: 93 85 04 01  	addi	a1, s1, 16
80202f40: 05 49        	li	s2, 1
80202f42: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202f46: 15 e9        	bnez	a0, 0x80202f7a <.Lpcrel_hi47+0x4e>
80202f48: 2f b6 25 1f  	sc.d.aqrl	a2, s2, (a1)
80202f4c: 7d fa        	bnez	a2, 0x80202f42 <.Lpcrel_hi47+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202f4e: 23 3c b4 f8  	sd	a1, -104(s0)
;     pub static ref INITPROC: UPCell<*mut Proc> = UPCell::new(allocproc());
80202f52: 97 00 00 00  	auipc	ra, 0
80202f56: e7 80 60 ac  	jalr	-1338(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80202f5a: 23 b0 24 01  	sd	s2, 0(s1)
80202f5e: 88 e4        	sd	a0, 8(s1)
;                 finish.panicked = false;
80202f60: 23 00 04 fa  	sb	zero, -96(s0)
80202f64: 0f 00 10 03  	fence	rw, w
80202f68: 09 45        	li	a0, 2
80202f6a: 88 e8        	sd	a0, 16(s1)
80202f6c: 13 05 84 f9  	addi	a0, s0, -104
80202f70: 97 50 00 00  	auipc	ra, 5
80202f74: e7 80 20 e5  	jalr	-430(ra)
80202f78: 05 a0        	j	0x80202f98 <.Lpcrel_hi47+0x6c>
80202f7a: 85 45        	li	a1, 1
;             match status {
80202f7c: 63 1b b5 00  	bne	a0, a1, 0x80202f92 <.Lpcrel_hi47+0x66>
80202f80: 0f 00 00 01  	fence	w, 0
80202f84: 0f 00 30 03  	fence	rw, rw
80202f88: 88 68        	ld	a0, 16(s1)
80202f8a: 0f 00 30 02  	fence	r, rw
;             match status {
80202f8e: e3 09 b5 fe  	beq	a0, a1, 0x80202f80 <.Lpcrel_hi47+0x54>
80202f92: 89 45        	li	a1, 2
;             match status {
80202f94: 63 10 b5 1a  	bne	a0, a1, 0x80203134 <.Lpcrel_hi58+0x18>
;     let p = unsafe { &mut *(*INITPROC.get_mut()) };
80202f98: 83 b9 84 00  	ld	s3, 8(s1)
;     p.uvm.uvmfirst(&INITCODE as *const u8, INITCODE.len());
80202f9c: 13 89 09 14  	addi	s2, s3, 320
;         let mem = kalloc();
80202fa0: 97 40 00 00  	auipc	ra, 4
80202fa4: e7 80 60 8e  	jalr	-1818(ra)
80202fa8: aa 84        	mv	s1, a0
80202faa: 05 66        	lui	a2, 1
80202fac: 05 6a        	lui	s4, 1
80202fae: 81 45        	li	a1, 0
80202fb0: 97 60 00 00  	auipc	ra, 6
80202fb4: e7 80 20 6e  	jalr	1762(ra)
;             let pte = self.walk(a, true);
80202fb8: 05 46        	li	a2, 1
80202fba: 4a 85        	mv	a0, s2
80202fbc: 81 45        	li	a1, 0
80202fbe: 97 30 00 00  	auipc	ra, 3
80202fc2: e7 80 00 51  	jalr	1296(ra)
80202fc6: 19 c9        	beqz	a0, 0x80202fdc <.Lpcrel_hi55>
;             if unsafe { *pte & PTE_V } != 0 {
80202fc8: 83 45 05 00  	lbu	a1, 0(a0)
80202fcc: 85 89        	andi	a1, a1, 1
80202fce: 63 95 05 20  	bnez	a1, 0x802031d8 <.Lpcrel_hi52>
;     (pa >> 12) << 10
80202fd2: 93 d5 c4 00  	srli	a1, s1, 12
80202fd6: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202fd8: fd 05        	addi	a1, a1, 31
80202fda: 0c e1        	sd	a1, 0(a0)

0000000080202fdc <.Lpcrel_hi55>:
80202fdc: 17 75 00 00  	auipc	a0, 7
80202fe0: 93 05 c5 12  	addi	a1, a0, 300
80202fe4: 13 06 40 03  	li	a2, 52
80202fe8: 26 85        	mv	a0, s1
80202fea: 97 60 00 00  	auipc	ra, 6
80202fee: e7 80 00 6b  	jalr	1712(ra)
;     let tf = unsafe { &mut *p.trapframe };
80202ff2: 03 b5 89 14  	ld	a0, 328(s3)
;     tf.epc = 0;
80202ff6: 23 3c 05 10  	sd	zero, 280(a0)
;     tf.x[2] = PGSIZE; // sp
80202ffa: 23 38 45 01  	sd	s4, 16(a0)
80202ffe: 21 45        	li	a0, 8
80203000: 85 45        	li	a1, 1
80203002: 97 50 00 00  	auipc	ra, 5
80203006: e7 80 80 da  	jalr	-600(ra)
8020300a: 63 0b 05 18  	beqz	a0, 0x802031a0 <.Lpcrel_hi61+0xa>
8020300e: aa 84        	mv	s1, a0
80203010: 13 05 50 06  	li	a0, 101
80203014: a3 83 a4 00  	sb	a0, 7(s1)
80203018: 13 05 40 06  	li	a0, 100
8020301c: 23 83 a4 00  	sb	a0, 6(s1)
80203020: 13 05 f0 06  	li	a0, 111

0000000080203024 <.Lpcrel_hi56>:
80203024: 97 95 00 00  	auipc	a1, 9
80203028: 83 b5 c5 fd  	ld	a1, -36(a1)
8020302c: a3 82 a4 00  	sb	a0, 5(s1)
80203030: 13 05 30 06  	li	a0, 99
80203034: 23 82 a4 00  	sb	a0, 4(s1)
80203038: 23 80 b4 00  	sb	a1, 0(s1)
8020303c: 13 d5 85 01  	srli	a0, a1, 24
80203040: a3 81 a4 00  	sb	a0, 3(s1)
80203044: 13 d5 05 01  	srli	a0, a1, 16
80203048: 23 81 a4 00  	sb	a0, 2(s1)
8020304c: a1 81        	srli	a1, a1, 8
8020304e: a3 80 b4 00  	sb	a1, 1(s1)
80203052: 83 b5 09 16  	ld	a1, 352(s3)
80203056: 81 c9        	beqz	a1, 0x80203066 <.Lpcrel_hi56+0x42>
80203058: 03 b5 89 15  	ld	a0, 344(s3)
8020305c: 05 46        	li	a2, 1
8020305e: 97 50 00 00  	auipc	ra, 5
80203062: e7 80 40 d5  	jalr	-684(ra)
;     p.name = String::from("initcode");
80203066: 23 bc 99 14  	sd	s1, 344(s3)
8020306a: 21 45        	li	a0, 8
8020306c: 23 b0 a9 16  	sd	a0, 352(s3)
80203070: 23 b4 a9 16  	sd	a0, 360(s3)
80203074: 0d 45        	li	a0, 3
;     p.state = ProcState::Runable;
80203076: 23 88 a9 16  	sb	a0, 368(s3)
8020307a: 03 85 89 09  	lb	a0, 152(s3)
8020307e: 6d c9        	beqz	a0, 0x80203170 <.Lpcrel_hi59>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203080: 03 b9 09 09  	ld	s2, 144(s3)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203084: 92 84        	mv	s1, tp

0000000080203086 <.Lpcrel_hi57>:
;         self.0.call_once(builder)
80203086: 17 05 09 00  	auipc	a0, 144
8020308a: 13 05 a5 dd  	addi	a0, a0, -550
8020308e: 97 f0 ff ff  	auipc	ra, 1048575
80203092: e7 80 20 f7  	jalr	-142(ra)
80203096: 93 05 00 04  	li	a1, 64
8020309a: 63 f1 b4 08  	bgeu	s1, a1, 0x8020311c <.Lpcrel_hi58>
8020309e: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
802030a2: b3 85 b4 02  	mul	a1, s1, a1
802030a6: 2e 95        	add	a0, a0, a1
802030a8: 63 14 a9 0c  	bne	s2, a0, 0x80203170 <.Lpcrel_hi59>
;         self.cpu = null_mut();
802030ac: 23 b8 09 08  	sd	zero, 144(s3)
802030b0: 0f 00 30 03  	fence	rw, rw
802030b4: 0f 00 10 03  	fence	rw, w
802030b8: 23 8c 09 08  	sb	zero, 152(s3)
;         pop_off();
802030bc: 97 30 00 00  	auipc	ra, 3
802030c0: e7 80 40 00  	jalr	4(ra)
802030c4: 13 05 84 fc  	addi	a0, s0, -56
;     Stdout.write_fmt(args).unwrap();
802030c8: 23 38 a4 f8  	sd	a0, -112(s0)

00000000802030cc <.Lpcrel_hi62>:
802030cc: 17 75 00 00  	auipc	a0, 7
802030d0: 13 05 45 08  	addi	a0, a0, 132
802030d4: 23 3c a4 f8  	sd	a0, -104(s0)
802030d8: 05 45        	li	a0, 1
802030da: 23 30 a4 fa  	sd	a0, -96(s0)

00000000802030de <.Lpcrel_hi63>:
802030de: 17 75 00 00  	auipc	a0, 7
802030e2: 13 05 a5 02  	addi	a0, a0, 42
802030e6: 23 34 a4 fa  	sd	a0, -88(s0)
802030ea: 23 38 04 fa  	sd	zero, -80(s0)
802030ee: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802030f2 <.Lpcrel_hi64>:
802030f2: 17 75 00 00  	auipc	a0, 7
802030f6: 93 05 65 13  	addi	a1, a0, 310
802030fa: 13 05 04 f9  	addi	a0, s0, -112
802030fe: 13 06 84 f9  	addi	a2, s0, -104
80203102: 97 60 00 00  	auipc	ra, 6
80203106: e7 80 c0 8a  	jalr	-1876(ra)
8020310a: 55 e1        	bnez	a0, 0x802031ae <.Lpcrel_hi65>
; }
8020310c: a6 70        	ld	ra, 104(sp)
8020310e: 06 74        	ld	s0, 96(sp)
80203110: e6 64        	ld	s1, 88(sp)
80203112: 46 69        	ld	s2, 80(sp)
80203114: a6 69        	ld	s3, 72(sp)
80203116: 06 6a        	ld	s4, 64(sp)
80203118: 65 61        	addi	sp, sp, 112
8020311a: 82 80        	ret

000000008020311c <.Lpcrel_hi58>:
; 	&mut CPUS.get_mut()[id]
8020311c: 17 75 00 00  	auipc	a0, 7
80203120: 13 06 c5 42  	addi	a2, a0, 1068
80203124: 93 05 00 04  	li	a1, 64
80203128: 26 85        	mv	a0, s1
8020312a: 97 50 00 00  	auipc	ra, 5
8020312e: e7 80 20 2c  	jalr	706(ra)
80203132: 00 00        	unimp	
;             match status {
80203134: 05 e1        	bnez	a0, 0x80203154 <.Lpcrel_hi50>

0000000080203136 <.Lpcrel_hi48>:
;                 INCOMPLETE => unreachable!(),
80203136: 17 75 00 00  	auipc	a0, 7
8020313a: 13 05 25 f5  	addi	a0, a0, -174

000000008020313e <.Lpcrel_hi49>:
8020313e: 97 75 00 00  	auipc	a1, 7
80203142: 13 86 25 f7  	addi	a2, a1, -142
80203146: 93 05 80 02  	li	a1, 40
8020314a: 97 50 00 00  	auipc	ra, 5
8020314e: e7 80 60 27  	jalr	630(ra)
80203152: 00 00        	unimp	

0000000080203154 <.Lpcrel_hi50>:
;                 PANICKED => panic!("Once has panicked"),
80203154: 17 75 00 00  	auipc	a0, 7
80203158: 13 05 c5 ea  	addi	a0, a0, -340

000000008020315c <.Lpcrel_hi51>:
8020315c: 97 75 00 00  	auipc	a1, 7
80203160: 13 86 45 f1  	addi	a2, a1, -236
80203164: c5 45        	li	a1, 17
80203166: 97 50 00 00  	auipc	ra, 5
8020316a: e7 80 a0 25  	jalr	602(ra)
8020316e: 00 00        	unimp	

0000000080203170 <.Lpcrel_hi59>:
80203170: 17 75 00 00  	auipc	a0, 7
80203174: 13 05 05 09  	addi	a0, a0, 144
80203178: 23 3c a4 f8  	sd	a0, -104(s0)
8020317c: 05 45        	li	a0, 1
8020317e: 23 30 a4 fa  	sd	a0, -96(s0)
80203182: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203186 <.Lpcrel_hi60>:
80203186: 17 75 00 00  	auipc	a0, 7
8020318a: 13 05 a5 02  	addi	a0, a0, 42
8020318e: 23 34 a4 fa  	sd	a0, -88(s0)
80203192: 23 38 04 fa  	sd	zero, -80(s0)

0000000080203196 <.Lpcrel_hi61>:
;             panic!("release");
80203196: 17 75 00 00  	auipc	a0, 7
8020319a: 93 05 a5 07  	addi	a1, a0, 122
8020319e: a5 a0        	j	0x80203206 <.Lpcrel_hi54+0x8>
802031a0: 05 45        	li	a0, 1
802031a2: a1 45        	li	a1, 8
802031a4: 97 50 00 00  	auipc	ra, 5
802031a8: e7 80 a0 17  	jalr	378(ra)
802031ac: 00 00        	unimp	

00000000802031ae <.Lpcrel_hi65>:
802031ae: 17 75 00 00  	auipc	a0, 7
802031b2: 13 05 a5 0a  	addi	a0, a0, 170

00000000802031b6 <.Lpcrel_hi66>:
802031b6: 97 75 00 00  	auipc	a1, 7
802031ba: 93 86 25 0d  	addi	a3, a1, 210

00000000802031be <.Lpcrel_hi67>:
802031be: 97 75 00 00  	auipc	a1, 7
802031c2: 13 87 a5 0f  	addi	a4, a1, 250
802031c6: 93 05 b0 02  	li	a1, 43
802031ca: 13 06 84 fc  	addi	a2, s0, -56
802031ce: 97 50 00 00  	auipc	ra, 5
802031d2: e7 80 e0 25  	jalr	606(ra)
802031d6: 00 00        	unimp	

00000000802031d8 <.Lpcrel_hi52>:
802031d8: 17 75 00 00  	auipc	a0, 7
802031dc: 13 05 05 52  	addi	a0, a0, 1312
802031e0: 23 3c a4 f8  	sd	a0, -104(s0)
802031e4: 05 45        	li	a0, 1
802031e6: 23 30 a4 fa  	sd	a0, -96(s0)
802031ea: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802031ee <.Lpcrel_hi53>:
802031ee: 17 75 00 00  	auipc	a0, 7
802031f2: 13 05 a5 4c  	addi	a0, a0, 1226
802031f6: 23 34 a4 fa  	sd	a0, -88(s0)
802031fa: 23 38 04 fa  	sd	zero, -80(s0)

00000000802031fe <.Lpcrel_hi54>:
;                 panic!("mappages: remap");
802031fe: 17 75 00 00  	auipc	a0, 7
80203202: 93 05 a5 50  	addi	a1, a0, 1290
80203206: 13 05 84 f9  	addi	a0, s0, -104
8020320a: 97 50 00 00  	auipc	ra, 5
8020320e: e7 80 80 18  	jalr	392(ra)
80203212: 00 00        	unimp	

0000000080203214 <scheduler>:
; pub fn scheduler() {
80203214: 13 01 01 81  	addi	sp, sp, -2032
80203218: 23 34 11 7e  	sd	ra, 2024(sp)
8020321c: 23 30 81 7e  	sd	s0, 2016(sp)
80203220: 23 3c 91 7c  	sd	s1, 2008(sp)
80203224: 23 38 21 7d  	sd	s2, 2000(sp)
80203228: 23 34 31 7d  	sd	s3, 1992(sp)
8020322c: 23 30 41 7d  	sd	s4, 1984(sp)
80203230: 23 3c 51 7b  	sd	s5, 1976(sp)
80203234: 23 38 61 7b  	sd	s6, 1968(sp)
80203238: 23 34 71 7b  	sd	s7, 1960(sp)
8020323c: 23 30 81 7b  	sd	s8, 1952(sp)
80203240: 23 3c 91 79  	sd	s9, 1944(sp)
80203244: 23 38 a1 79  	sd	s10, 1936(sp)
80203248: 23 34 b1 79  	sd	s11, 1928(sp)
8020324c: 13 04 01 7f  	addi	s0, sp, 2032
80203250: 09 65        	lui	a0, 2
80203252: 1b 05 05 c3  	addiw	a0, a0, -976
80203256: 33 01 a1 40  	sub	sp, sp, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020325a: 12 89        	mv	s2, tp

000000008020325c <.Lpcrel_hi68>:
;         self.0.call_once(builder)
8020325c: 17 05 09 00  	auipc	a0, 144
80203260: 93 04 45 c0  	addi	s1, a0, -1020
80203264: 26 85        	mv	a0, s1
80203266: 97 f0 ff ff  	auipc	ra, 1048575
8020326a: e7 80 a0 d9  	jalr	-614(ra)
8020326e: 93 0b 00 04  	li	s7, 64
; 	&mut CPUS.get_mut()[id]
80203272: 63 64 79 01  	bltu	s2, s7, 0x8020327a <.Lpcrel_hi68+0x1e>
80203276: 6f 20 80 6c  	j	0x8020593e <.Lpcrel_hi69>
8020327a: 13 0c 80 08  	li	s8, 136
; 	&mut CPUS.get_mut()[id]
8020327e: b3 05 89 03  	mul	a1, s2, s8
80203282: 33 09 b5 00  	add	s2, a0, a1

0000000080203286 <.Lpcrel_hi70>:
;         self.0.call_once(builder)
80203286: 17 a5 08 00  	auipc	a0, 138
8020328a: 13 05 25 db  	addi	a0, a0, -590
8020328e: 97 f0 ff ff  	auipc	ra, 1048575
80203292: e7 80 40 3f  	jalr	1012(ra)
80203296: 89 65        	lui	a1, 2
80203298: b3 05 b4 40  	sub	a1, s0, a1
8020329c: 23 b8 a5 d6  	sd	a0, -656(a1)
802032a0: c5 46        	li	a3, 17
802032a2: 93 95 76 00  	slli	a1, a3, 7
802032a6: 09 65        	lui	a0, 2
802032a8: 1b 05 85 27  	addiw	a0, a0, 632
802032ac: 33 05 a4 40  	sub	a0, s0, a0
802032b0: aa 95        	add	a1, a1, a0
802032b2: 09 66        	lui	a2, 2
802032b4: 33 06 c4 40  	sub	a2, s0, a2
802032b8: 23 34 b6 d6  	sd	a1, -664(a2)
802032bc: 85 65        	lui	a1, 1
802032be: 1b 86 85 90  	addiw	a2, a1, -1784
802032c2: 2a 96        	add	a2, a2, a0
802032c4: 09 67        	lui	a4, 2
802032c6: 33 07 e4 40  	sub	a4, s0, a4
802032ca: 23 30 c7 d6  	sd	a2, -672(a4)
802032ce: 1b 86 05 99  	addiw	a2, a1, -1648
802032d2: 2a 96        	add	a2, a2, a0
802032d4: 09 67        	lui	a4, 2
802032d6: 33 07 e4 40  	sub	a4, s0, a4
802032da: 23 3c c7 d4  	sd	a2, -680(a4)
802032de: 1b 86 85 a1  	addiw	a2, a1, -1512
802032e2: 2a 96        	add	a2, a2, a0
802032e4: 09 67        	lui	a4, 2
802032e6: 33 07 e4 40  	sub	a4, s0, a4
802032ea: 23 38 c7 d4  	sd	a2, -688(a4)
802032ee: 1b 86 05 aa  	addiw	a2, a1, -1376
802032f2: 2a 96        	add	a2, a2, a0
802032f4: 09 67        	lui	a4, 2
802032f6: 33 07 e4 40  	sub	a4, s0, a4
802032fa: 23 34 c7 d4  	sd	a2, -696(a4)
802032fe: 1b 86 85 b2  	addiw	a2, a1, -1240
80203302: 2a 96        	add	a2, a2, a0
80203304: 09 67        	lui	a4, 2
80203306: 33 07 e4 40  	sub	a4, s0, a4
8020330a: 23 30 c7 d4  	sd	a2, -704(a4)
8020330e: 1b 86 05 bb  	addiw	a2, a1, -1104
80203312: 2a 96        	add	a2, a2, a0
80203314: 09 67        	lui	a4, 2
80203316: 33 07 e4 40  	sub	a4, s0, a4
8020331a: 23 3c c7 d2  	sd	a2, -712(a4)
8020331e: 1b 86 85 c3  	addiw	a2, a1, -968
80203322: 2a 96        	add	a2, a2, a0
80203324: 09 67        	lui	a4, 2
80203326: 33 07 e4 40  	sub	a4, s0, a4
8020332a: 23 38 c7 d2  	sd	a2, -720(a4)
8020332e: 1b 86 05 cc  	addiw	a2, a1, -832
80203332: 2a 96        	add	a2, a2, a0
80203334: 09 67        	lui	a4, 2
80203336: 33 07 e4 40  	sub	a4, s0, a4
8020333a: 23 34 c7 d2  	sd	a2, -728(a4)
8020333e: 1b 86 85 d4  	addiw	a2, a1, -696
80203342: 2a 96        	add	a2, a2, a0
80203344: 09 67        	lui	a4, 2
80203346: 33 07 e4 40  	sub	a4, s0, a4
8020334a: 23 30 c7 d2  	sd	a2, -736(a4)
8020334e: 1b 86 05 dd  	addiw	a2, a1, -560
80203352: 2a 96        	add	a2, a2, a0
80203354: 09 67        	lui	a4, 2
80203356: 33 07 e4 40  	sub	a4, s0, a4
8020335a: 23 3c c7 d0  	sd	a2, -744(a4)
8020335e: 1b 86 85 e5  	addiw	a2, a1, -424
80203362: 2a 96        	add	a2, a2, a0
80203364: 09 67        	lui	a4, 2
80203366: 33 07 e4 40  	sub	a4, s0, a4
8020336a: 23 38 c7 d0  	sd	a2, -752(a4)
8020336e: 1b 86 05 ee  	addiw	a2, a1, -288
80203372: 2a 96        	add	a2, a2, a0
80203374: 09 67        	lui	a4, 2
80203376: 33 07 e4 40  	sub	a4, s0, a4
8020337a: 23 34 c7 d0  	sd	a2, -760(a4)
8020337e: 1b 86 85 f6  	addiw	a2, a1, -152
80203382: 2a 96        	add	a2, a2, a0
80203384: 09 67        	lui	a4, 2
80203386: 33 07 e4 40  	sub	a4, s0, a4
8020338a: 23 30 c7 d0  	sd	a2, -768(a4)
8020338e: 1b 86 05 ff  	addiw	a2, a1, -16
80203392: 2a 96        	add	a2, a2, a0
80203394: 09 67        	lui	a4, 2
80203396: 33 07 e4 40  	sub	a4, s0, a4
8020339a: 23 3c c7 ce  	sd	a2, -776(a4)
8020339e: 1b 86 85 07  	addiw	a2, a1, 120
802033a2: 2a 96        	add	a2, a2, a0
802033a4: 09 67        	lui	a4, 2
802033a6: 33 07 e4 40  	sub	a4, s0, a4
802033aa: 23 38 c7 ce  	sd	a2, -784(a4)
802033ae: 13 96 86 00  	slli	a2, a3, 8
802033b2: 2a 96        	add	a2, a2, a0
802033b4: 89 66        	lui	a3, 2
802033b6: b3 06 d4 40  	sub	a3, s0, a3
802033ba: 23 b4 c6 ce  	sd	a2, -792(a3)
802033be: 1b 86 85 18  	addiw	a2, a1, 392
802033c2: 2a 96        	add	a2, a2, a0
802033c4: 89 66        	lui	a3, 2
802033c6: b3 06 d4 40  	sub	a3, s0, a3
802033ca: 23 b0 c6 ce  	sd	a2, -800(a3)
802033ce: 1b 86 05 21  	addiw	a2, a1, 528
802033d2: 2a 96        	add	a2, a2, a0
802033d4: 89 66        	lui	a3, 2
802033d6: b3 06 d4 40  	sub	a3, s0, a3
802033da: 23 bc c6 cc  	sd	a2, -808(a3)
802033de: 1b 86 85 29  	addiw	a2, a1, 664
802033e2: 2a 96        	add	a2, a2, a0
802033e4: 89 66        	lui	a3, 2
802033e6: b3 06 d4 40  	sub	a3, s0, a3
802033ea: 23 b8 c6 cc  	sd	a2, -816(a3)
802033ee: 1b 86 05 32  	addiw	a2, a1, 800
802033f2: 2a 96        	add	a2, a2, a0
802033f4: 89 66        	lui	a3, 2
802033f6: b3 06 d4 40  	sub	a3, s0, a3
802033fa: 23 b4 c6 cc  	sd	a2, -824(a3)
802033fe: 1b 86 85 3a  	addiw	a2, a1, 936
80203402: 2a 96        	add	a2, a2, a0
80203404: 89 66        	lui	a3, 2
80203406: b3 06 d4 40  	sub	a3, s0, a3
8020340a: 23 b0 c6 cc  	sd	a2, -832(a3)
8020340e: 1b 86 05 43  	addiw	a2, a1, 1072
80203412: 2a 96        	add	a2, a2, a0
80203414: 89 66        	lui	a3, 2
80203416: b3 06 d4 40  	sub	a3, s0, a3
8020341a: 23 bc c6 ca  	sd	a2, -840(a3)
8020341e: 1b 86 85 4b  	addiw	a2, a1, 1208
80203422: 2a 96        	add	a2, a2, a0
80203424: 89 66        	lui	a3, 2
80203426: b3 06 d4 40  	sub	a3, s0, a3
8020342a: 23 b8 c6 ca  	sd	a2, -848(a3)
8020342e: 1b 86 05 54  	addiw	a2, a1, 1344
80203432: 2a 96        	add	a2, a2, a0
80203434: 89 66        	lui	a3, 2
80203436: b3 06 d4 40  	sub	a3, s0, a3
8020343a: 23 b4 c6 ca  	sd	a2, -856(a3)
8020343e: 1b 86 85 5c  	addiw	a2, a1, 1480
80203442: 2a 96        	add	a2, a2, a0
80203444: 89 66        	lui	a3, 2
80203446: b3 06 d4 40  	sub	a3, s0, a3
8020344a: 23 b0 c6 ca  	sd	a2, -864(a3)
8020344e: 1b 86 05 65  	addiw	a2, a1, 1616
80203452: 2a 96        	add	a2, a2, a0
80203454: 89 66        	lui	a3, 2
80203456: b3 06 d4 40  	sub	a3, s0, a3
8020345a: 23 bc c6 c8  	sd	a2, -872(a3)
8020345e: 1b 86 85 6d  	addiw	a2, a1, 1752
80203462: 2a 96        	add	a2, a2, a0
80203464: 89 66        	lui	a3, 2
80203466: b3 06 d4 40  	sub	a3, s0, a3
8020346a: 23 b8 c6 c8  	sd	a2, -880(a3)
8020346e: 1b 86 05 76  	addiw	a2, a1, 1888
80203472: 2a 96        	add	a2, a2, a0
80203474: 89 66        	lui	a3, 2
80203476: b3 06 d4 40  	sub	a3, s0, a3
8020347a: 23 b4 c6 c8  	sd	a2, -888(a3)
8020347e: 9b 85 85 7e  	addiw	a1, a1, 2024
80203482: aa 95        	add	a1, a1, a0
80203484: 09 66        	lui	a2, 2
80203486: 33 06 c4 40  	sub	a2, s0, a2
8020348a: 23 30 b6 c8  	sd	a1, -896(a2)
8020348e: 89 65        	lui	a1, 2
80203490: 1b 86 05 87  	addiw	a2, a1, -1936
80203494: 2a 96        	add	a2, a2, a0
80203496: 89 66        	lui	a3, 2
80203498: b3 06 d4 40  	sub	a3, s0, a3
8020349c: 23 bc c6 c6  	sd	a2, -904(a3)
802034a0: 1b 86 85 8f  	addiw	a2, a1, -1800
802034a4: 2a 96        	add	a2, a2, a0
802034a6: 89 66        	lui	a3, 2
802034a8: b3 06 d4 40  	sub	a3, s0, a3
802034ac: 23 b8 c6 c6  	sd	a2, -912(a3)
802034b0: 1b 86 05 98  	addiw	a2, a1, -1664
802034b4: 2a 96        	add	a2, a2, a0
802034b6: 89 66        	lui	a3, 2
802034b8: b3 06 d4 40  	sub	a3, s0, a3
802034bc: 23 b4 c6 c6  	sd	a2, -920(a3)
802034c0: 1b 86 85 a0  	addiw	a2, a1, -1528
802034c4: 2a 96        	add	a2, a2, a0
802034c6: 89 66        	lui	a3, 2
802034c8: b3 06 d4 40  	sub	a3, s0, a3
802034cc: 23 b0 c6 c6  	sd	a2, -928(a3)
802034d0: 1b 86 05 a9  	addiw	a2, a1, -1392
802034d4: 2a 96        	add	a2, a2, a0
802034d6: 89 66        	lui	a3, 2
802034d8: b3 06 d4 40  	sub	a3, s0, a3
802034dc: 23 bc c6 c4  	sd	a2, -936(a3)
802034e0: 1b 86 85 b1  	addiw	a2, a1, -1256
802034e4: 2a 96        	add	a2, a2, a0
802034e6: 89 66        	lui	a3, 2
802034e8: b3 06 d4 40  	sub	a3, s0, a3
802034ec: 23 b8 c6 c4  	sd	a2, -944(a3)
802034f0: 1b 86 05 ba  	addiw	a2, a1, -1120
802034f4: 2a 96        	add	a2, a2, a0
802034f6: 89 66        	lui	a3, 2
802034f8: b3 06 d4 40  	sub	a3, s0, a3
802034fc: 23 b4 c6 c4  	sd	a2, -952(a3)
80203500: 1b 86 85 c2  	addiw	a2, a1, -984
80203504: 2a 96        	add	a2, a2, a0
80203506: 89 66        	lui	a3, 2
80203508: b3 06 d4 40  	sub	a3, s0, a3
8020350c: 23 b0 c6 c4  	sd	a2, -960(a3)
80203510: 1b 86 05 cb  	addiw	a2, a1, -848
80203514: 2a 96        	add	a2, a2, a0
80203516: 89 66        	lui	a3, 2
80203518: b3 06 d4 40  	sub	a3, s0, a3
8020351c: 23 bc c6 c2  	sd	a2, -968(a3)
80203520: 1b 86 85 d3  	addiw	a2, a1, -712
80203524: 2a 96        	add	a2, a2, a0
80203526: 89 66        	lui	a3, 2
80203528: b3 06 d4 40  	sub	a3, s0, a3
8020352c: 23 b8 c6 c2  	sd	a2, -976(a3)
80203530: 1b 86 05 dc  	addiw	a2, a1, -576
80203534: 2a 96        	add	a2, a2, a0
80203536: 89 66        	lui	a3, 2
80203538: b3 06 d4 40  	sub	a3, s0, a3
8020353c: 23 b4 c6 c2  	sd	a2, -984(a3)
80203540: 1b 86 85 e4  	addiw	a2, a1, -440
80203544: 2a 96        	add	a2, a2, a0
80203546: 89 66        	lui	a3, 2
80203548: b3 06 d4 40  	sub	a3, s0, a3
8020354c: 23 b0 c6 c2  	sd	a2, -992(a3)
80203550: 1b 86 05 ed  	addiw	a2, a1, -304
80203554: 2a 96        	add	a2, a2, a0
80203556: 89 66        	lui	a3, 2
80203558: b3 06 d4 40  	sub	a3, s0, a3
8020355c: 23 bc c6 c0  	sd	a2, -1000(a3)
80203560: 1b 86 85 f5  	addiw	a2, a1, -168
80203564: 2a 96        	add	a2, a2, a0
80203566: 89 66        	lui	a3, 2
80203568: b3 06 d4 40  	sub	a3, s0, a3
8020356c: 23 b8 c6 c0  	sd	a2, -1008(a3)
80203570: 1b 86 05 fe  	addiw	a2, a1, -32
80203574: 2a 96        	add	a2, a2, a0
80203576: 89 66        	lui	a3, 2
80203578: b3 06 d4 40  	sub	a3, s0, a3
8020357c: 23 b4 c6 c0  	sd	a2, -1016(a3)
80203580: 1b 86 85 06  	addiw	a2, a1, 104
80203584: 2a 96        	add	a2, a2, a0
80203586: 89 66        	lui	a3, 2
80203588: b3 06 d4 40  	sub	a3, s0, a3
8020358c: 23 b0 c6 c0  	sd	a2, -1024(a3)
80203590: 1b 86 05 0f  	addiw	a2, a1, 240
80203594: 2a 96        	add	a2, a2, a0
80203596: 89 66        	lui	a3, 2
80203598: b3 06 d4 40  	sub	a3, s0, a3
8020359c: 23 bc c6 be  	sd	a2, -1032(a3)
802035a0: 9b 85 85 17  	addiw	a1, a1, 376
802035a4: 2e 95        	add	a0, a0, a1
;     c.proc = null_mut();
802035a6: 89 65        	lui	a1, 2
802035a8: b3 05 b4 40  	sub	a1, s0, a1
802035ac: 23 b8 a5 be  	sd	a0, -1040(a1)
802035b0: 23 30 09 00  	sd	zero, 0(s2)
802035b4: 09 65        	lui	a0, 2
802035b6: 33 05 a4 40  	sub	a0, s0, a0
802035ba: 23 34 25 bf  	sd	s2, -1048(a0)
802035be: 21 09        	addi	s2, s2, 8
802035c0: 09 65        	lui	a0, 2
802035c2: 33 05 a4 40  	sub	a0, s0, a0
802035c6: 23 30 25 bf  	sd	s2, -1056(a0)
802035ca: 09 4d        	li	s10, 2
802035cc: 85 4d        	li	s11, 1
802035ce: 93 09 f0 0f  	li	s3, 255
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802035d2: 73 20 0d 10  	csrs	sstatus, s10
802035d6: 01 4a        	li	s4, 0
802035d8: 19 a0        	j	0x802035de <.Lpcrel_hi70+0x358>
802035da: e3 0c 7a ff  	beq	s4, s7, 0x802035d2 <.Lpcrel_hi70+0x34c>
;         asm!{
802035de: 73 29 00 10  	csrr	s2, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802035e2: 73 30 0d 10  	csrc	sstatus, s10
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802035e6: 12 8b        	mv	s6, tp
802035e8: 0f 00 30 03  	fence	rw, rw
802035ec: 88 60        	ld	a0, 0(s1)
802035ee: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802035f2: 63 16 05 66  	bnez	a0, 0x80203c5e <.Lpcrel_hi70+0x9d8>
802035f6: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802035fa: 63 12 05 66  	bnez	a0, 0x80203c5e <.Lpcrel_hi70+0x9d8>
802035fe: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80203602: f5 f9        	bnez	a1, 0x802035f6 <.Lpcrel_hi70+0x370>
80203604: 09 65        	lui	a0, 2
80203606: 1b 05 85 28  	addiw	a0, a0, 648
8020360a: b3 0a a4 40  	sub	s5, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020360e: 23 b0 9a 00  	sd	s1, 0(s5)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80203612: 09 65        	lui	a0, 2
80203614: 1b 05 85 27  	addiw	a0, a0, 632
80203618: 33 05 a4 40  	sub	a0, s0, a0
8020361c: 13 06 10 08  	li	a2, 129
80203620: 81 45        	li	a1, 0
80203622: 97 60 00 00  	auipc	ra, 6
80203626: e7 80 00 07  	jalr	112(ra)
8020362a: 13 06 10 08  	li	a2, 129
8020362e: 09 65        	lui	a0, 2
80203630: 1b 05 05 1f  	addiw	a0, a0, 496
80203634: 33 05 a4 40  	sub	a0, s0, a0
80203638: 81 45        	li	a1, 0
8020363a: 97 60 00 00  	auipc	ra, 6
8020363e: e7 80 80 05  	jalr	88(ra)
80203642: 13 06 10 08  	li	a2, 129
80203646: 09 65        	lui	a0, 2
80203648: 1b 05 85 16  	addiw	a0, a0, 360
8020364c: 33 05 a4 40  	sub	a0, s0, a0
80203650: 81 45        	li	a1, 0
80203652: 97 60 00 00  	auipc	ra, 6
80203656: e7 80 00 04  	jalr	64(ra)
8020365a: 13 06 10 08  	li	a2, 129
8020365e: 09 65        	lui	a0, 2
80203660: 1b 05 05 0e  	addiw	a0, a0, 224
80203664: 33 05 a4 40  	sub	a0, s0, a0
80203668: 81 45        	li	a1, 0
8020366a: 97 60 00 00  	auipc	ra, 6
8020366e: e7 80 80 02  	jalr	40(ra)
80203672: 13 06 10 08  	li	a2, 129
80203676: 09 65        	lui	a0, 2
80203678: 1b 05 85 05  	addiw	a0, a0, 88
8020367c: 33 05 a4 40  	sub	a0, s0, a0
80203680: 81 45        	li	a1, 0
80203682: 97 60 00 00  	auipc	ra, 6
80203686: e7 80 00 01  	jalr	16(ra)
8020368a: 13 06 10 08  	li	a2, 129
8020368e: 09 65        	lui	a0, 2
80203690: 1b 05 05 fd  	addiw	a0, a0, -48
80203694: 33 05 a4 40  	sub	a0, s0, a0
80203698: 81 45        	li	a1, 0
8020369a: 97 60 00 00  	auipc	ra, 6
8020369e: e7 80 80 ff  	jalr	-8(ra)
802036a2: 13 06 10 08  	li	a2, 129
802036a6: 09 65        	lui	a0, 2
802036a8: 1b 05 85 f4  	addiw	a0, a0, -184
802036ac: 33 05 a4 40  	sub	a0, s0, a0
802036b0: 81 45        	li	a1, 0
802036b2: 97 60 00 00  	auipc	ra, 6
802036b6: e7 80 00 fe  	jalr	-32(ra)
802036ba: 13 06 10 08  	li	a2, 129
802036be: 09 65        	lui	a0, 2
802036c0: 1b 05 05 ec  	addiw	a0, a0, -320
802036c4: 33 05 a4 40  	sub	a0, s0, a0
802036c8: 81 45        	li	a1, 0
802036ca: 97 60 00 00  	auipc	ra, 6
802036ce: e7 80 80 fc  	jalr	-56(ra)
802036d2: 13 06 10 08  	li	a2, 129
802036d6: 09 65        	lui	a0, 2
802036d8: 1b 05 85 e3  	addiw	a0, a0, -456
802036dc: 33 05 a4 40  	sub	a0, s0, a0
802036e0: 81 45        	li	a1, 0
802036e2: 97 60 00 00  	auipc	ra, 6
802036e6: e7 80 00 fb  	jalr	-80(ra)
802036ea: 13 06 10 08  	li	a2, 129
802036ee: 09 65        	lui	a0, 2
802036f0: 1b 05 05 db  	addiw	a0, a0, -592
802036f4: 33 05 a4 40  	sub	a0, s0, a0
802036f8: 81 45        	li	a1, 0
802036fa: 97 60 00 00  	auipc	ra, 6
802036fe: e7 80 80 f9  	jalr	-104(ra)
80203702: 13 06 10 08  	li	a2, 129
80203706: 09 65        	lui	a0, 2
80203708: 1b 05 85 d2  	addiw	a0, a0, -728
8020370c: 33 05 a4 40  	sub	a0, s0, a0
80203710: 81 45        	li	a1, 0
80203712: 97 60 00 00  	auipc	ra, 6
80203716: e7 80 00 f8  	jalr	-128(ra)
8020371a: 13 06 10 08  	li	a2, 129
8020371e: 09 65        	lui	a0, 2
80203720: 1b 05 05 ca  	addiw	a0, a0, -864
80203724: 33 05 a4 40  	sub	a0, s0, a0
80203728: 81 45        	li	a1, 0
8020372a: 97 60 00 00  	auipc	ra, 6
8020372e: e7 80 80 f6  	jalr	-152(ra)
80203732: 13 06 10 08  	li	a2, 129
80203736: 09 65        	lui	a0, 2
80203738: 1b 05 85 c1  	addiw	a0, a0, -1000
8020373c: 33 05 a4 40  	sub	a0, s0, a0
80203740: 81 45        	li	a1, 0
80203742: 97 60 00 00  	auipc	ra, 6
80203746: e7 80 00 f5  	jalr	-176(ra)
8020374a: 13 06 10 08  	li	a2, 129
8020374e: 09 65        	lui	a0, 2
80203750: 1b 05 05 b9  	addiw	a0, a0, -1136
80203754: 33 05 a4 40  	sub	a0, s0, a0
80203758: 81 45        	li	a1, 0
8020375a: 97 60 00 00  	auipc	ra, 6
8020375e: e7 80 80 f3  	jalr	-200(ra)
80203762: 13 06 10 08  	li	a2, 129
80203766: 09 65        	lui	a0, 2
80203768: 1b 05 85 b0  	addiw	a0, a0, -1272
8020376c: 33 05 a4 40  	sub	a0, s0, a0
80203770: 81 45        	li	a1, 0
80203772: 97 60 00 00  	auipc	ra, 6
80203776: e7 80 00 f2  	jalr	-224(ra)
8020377a: 13 06 10 08  	li	a2, 129
8020377e: 09 65        	lui	a0, 2
80203780: 1b 05 05 a8  	addiw	a0, a0, -1408
80203784: 33 05 a4 40  	sub	a0, s0, a0
80203788: 81 45        	li	a1, 0
8020378a: 97 60 00 00  	auipc	ra, 6
8020378e: e7 80 80 f0  	jalr	-248(ra)
80203792: 13 06 10 08  	li	a2, 129
80203796: 09 65        	lui	a0, 2
80203798: 33 05 a4 40  	sub	a0, s0, a0
8020379c: 03 35 85 d6  	ld	a0, -664(a0)
802037a0: 81 45        	li	a1, 0
802037a2: 97 60 00 00  	auipc	ra, 6
802037a6: e7 80 00 ef  	jalr	-272(ra)
802037aa: 13 06 10 08  	li	a2, 129
802037ae: 09 65        	lui	a0, 2
802037b0: 33 05 a4 40  	sub	a0, s0, a0
802037b4: 03 35 05 d6  	ld	a0, -672(a0)
802037b8: 81 45        	li	a1, 0
802037ba: 97 60 00 00  	auipc	ra, 6
802037be: e7 80 80 ed  	jalr	-296(ra)
802037c2: 13 06 10 08  	li	a2, 129
802037c6: 09 65        	lui	a0, 2
802037c8: 33 05 a4 40  	sub	a0, s0, a0
802037cc: 03 35 85 d5  	ld	a0, -680(a0)
802037d0: 81 45        	li	a1, 0
802037d2: 97 60 00 00  	auipc	ra, 6
802037d6: e7 80 00 ec  	jalr	-320(ra)
802037da: 13 06 10 08  	li	a2, 129
802037de: 09 65        	lui	a0, 2
802037e0: 33 05 a4 40  	sub	a0, s0, a0
802037e4: 03 35 05 d5  	ld	a0, -688(a0)
802037e8: 81 45        	li	a1, 0
802037ea: 97 60 00 00  	auipc	ra, 6
802037ee: e7 80 80 ea  	jalr	-344(ra)
802037f2: 13 06 10 08  	li	a2, 129
802037f6: 09 65        	lui	a0, 2
802037f8: 33 05 a4 40  	sub	a0, s0, a0
802037fc: 03 35 85 d4  	ld	a0, -696(a0)
80203800: 81 45        	li	a1, 0
80203802: 97 60 00 00  	auipc	ra, 6
80203806: e7 80 00 e9  	jalr	-368(ra)
8020380a: 13 06 10 08  	li	a2, 129
8020380e: 09 65        	lui	a0, 2
80203810: 33 05 a4 40  	sub	a0, s0, a0
80203814: 03 35 05 d4  	ld	a0, -704(a0)
80203818: 81 45        	li	a1, 0
8020381a: 97 60 00 00  	auipc	ra, 6
8020381e: e7 80 80 e7  	jalr	-392(ra)
80203822: 13 06 10 08  	li	a2, 129
80203826: 09 65        	lui	a0, 2
80203828: 33 05 a4 40  	sub	a0, s0, a0
8020382c: 03 35 85 d3  	ld	a0, -712(a0)
80203830: 81 45        	li	a1, 0
80203832: 97 60 00 00  	auipc	ra, 6
80203836: e7 80 00 e6  	jalr	-416(ra)
8020383a: 13 06 10 08  	li	a2, 129
8020383e: 09 65        	lui	a0, 2
80203840: 33 05 a4 40  	sub	a0, s0, a0
80203844: 03 35 05 d3  	ld	a0, -720(a0)
80203848: 81 45        	li	a1, 0
8020384a: 97 60 00 00  	auipc	ra, 6
8020384e: e7 80 80 e4  	jalr	-440(ra)
80203852: 13 06 10 08  	li	a2, 129
80203856: 09 65        	lui	a0, 2
80203858: 33 05 a4 40  	sub	a0, s0, a0
8020385c: 03 35 85 d2  	ld	a0, -728(a0)
80203860: 81 45        	li	a1, 0
80203862: 97 60 00 00  	auipc	ra, 6
80203866: e7 80 00 e3  	jalr	-464(ra)
8020386a: 13 06 10 08  	li	a2, 129
8020386e: 09 65        	lui	a0, 2
80203870: 33 05 a4 40  	sub	a0, s0, a0
80203874: 03 35 05 d2  	ld	a0, -736(a0)
80203878: 81 45        	li	a1, 0
8020387a: 97 60 00 00  	auipc	ra, 6
8020387e: e7 80 80 e1  	jalr	-488(ra)
80203882: 13 06 10 08  	li	a2, 129
80203886: 09 65        	lui	a0, 2
80203888: 33 05 a4 40  	sub	a0, s0, a0
8020388c: 03 35 85 d1  	ld	a0, -744(a0)
80203890: 81 45        	li	a1, 0
80203892: 97 60 00 00  	auipc	ra, 6
80203896: e7 80 00 e0  	jalr	-512(ra)
8020389a: 13 06 10 08  	li	a2, 129
8020389e: 09 65        	lui	a0, 2
802038a0: 33 05 a4 40  	sub	a0, s0, a0
802038a4: 03 35 05 d1  	ld	a0, -752(a0)
802038a8: 81 45        	li	a1, 0
802038aa: 97 60 00 00  	auipc	ra, 6
802038ae: e7 80 80 de  	jalr	-536(ra)
802038b2: 13 06 10 08  	li	a2, 129
802038b6: 09 65        	lui	a0, 2
802038b8: 33 05 a4 40  	sub	a0, s0, a0
802038bc: 03 35 85 d0  	ld	a0, -760(a0)
802038c0: 81 45        	li	a1, 0
802038c2: 97 60 00 00  	auipc	ra, 6
802038c6: e7 80 00 dd  	jalr	-560(ra)
802038ca: 13 06 10 08  	li	a2, 129
802038ce: 09 65        	lui	a0, 2
802038d0: 33 05 a4 40  	sub	a0, s0, a0
802038d4: 03 35 05 d0  	ld	a0, -768(a0)
802038d8: 81 45        	li	a1, 0
802038da: 97 60 00 00  	auipc	ra, 6
802038de: e7 80 80 db  	jalr	-584(ra)
802038e2: 13 06 10 08  	li	a2, 129
802038e6: 09 65        	lui	a0, 2
802038e8: 33 05 a4 40  	sub	a0, s0, a0
802038ec: 03 35 85 cf  	ld	a0, -776(a0)
802038f0: 81 45        	li	a1, 0
802038f2: 97 60 00 00  	auipc	ra, 6
802038f6: e7 80 00 da  	jalr	-608(ra)
802038fa: 13 06 10 08  	li	a2, 129
802038fe: 09 65        	lui	a0, 2
80203900: 33 05 a4 40  	sub	a0, s0, a0
80203904: 03 35 05 cf  	ld	a0, -784(a0)
80203908: 81 45        	li	a1, 0
8020390a: 97 60 00 00  	auipc	ra, 6
8020390e: e7 80 80 d8  	jalr	-632(ra)
80203912: 13 06 10 08  	li	a2, 129
80203916: 09 65        	lui	a0, 2
80203918: 33 05 a4 40  	sub	a0, s0, a0
8020391c: 03 35 85 ce  	ld	a0, -792(a0)
80203920: 81 45        	li	a1, 0
80203922: 97 60 00 00  	auipc	ra, 6
80203926: e7 80 00 d7  	jalr	-656(ra)
8020392a: 13 06 10 08  	li	a2, 129
8020392e: 09 65        	lui	a0, 2
80203930: 33 05 a4 40  	sub	a0, s0, a0
80203934: 03 35 05 ce  	ld	a0, -800(a0)
80203938: 81 45        	li	a1, 0
8020393a: 97 60 00 00  	auipc	ra, 6
8020393e: e7 80 80 d5  	jalr	-680(ra)
80203942: 13 06 10 08  	li	a2, 129
80203946: 09 65        	lui	a0, 2
80203948: 33 05 a4 40  	sub	a0, s0, a0
8020394c: 03 35 85 cd  	ld	a0, -808(a0)
80203950: 81 45        	li	a1, 0
80203952: 97 60 00 00  	auipc	ra, 6
80203956: e7 80 00 d4  	jalr	-704(ra)
8020395a: 13 06 10 08  	li	a2, 129
8020395e: 09 65        	lui	a0, 2
80203960: 33 05 a4 40  	sub	a0, s0, a0
80203964: 03 35 05 cd  	ld	a0, -816(a0)
80203968: 81 45        	li	a1, 0
8020396a: 97 60 00 00  	auipc	ra, 6
8020396e: e7 80 80 d2  	jalr	-728(ra)
80203972: 13 06 10 08  	li	a2, 129
80203976: 09 65        	lui	a0, 2
80203978: 33 05 a4 40  	sub	a0, s0, a0
8020397c: 03 35 85 cc  	ld	a0, -824(a0)
80203980: 81 45        	li	a1, 0
80203982: 97 60 00 00  	auipc	ra, 6
80203986: e7 80 00 d1  	jalr	-752(ra)
8020398a: 13 06 10 08  	li	a2, 129
8020398e: 09 65        	lui	a0, 2
80203990: 33 05 a4 40  	sub	a0, s0, a0
80203994: 03 35 05 cc  	ld	a0, -832(a0)
80203998: 81 45        	li	a1, 0
8020399a: 97 60 00 00  	auipc	ra, 6
8020399e: e7 80 80 cf  	jalr	-776(ra)
802039a2: 13 06 10 08  	li	a2, 129
802039a6: 09 65        	lui	a0, 2
802039a8: 33 05 a4 40  	sub	a0, s0, a0
802039ac: 03 35 85 cb  	ld	a0, -840(a0)
802039b0: 81 45        	li	a1, 0
802039b2: 97 60 00 00  	auipc	ra, 6
802039b6: e7 80 00 ce  	jalr	-800(ra)
802039ba: 13 06 10 08  	li	a2, 129
802039be: 09 65        	lui	a0, 2
802039c0: 33 05 a4 40  	sub	a0, s0, a0
802039c4: 03 35 05 cb  	ld	a0, -848(a0)
802039c8: 81 45        	li	a1, 0
802039ca: 97 60 00 00  	auipc	ra, 6
802039ce: e7 80 80 cc  	jalr	-824(ra)
802039d2: 13 06 10 08  	li	a2, 129
802039d6: 09 65        	lui	a0, 2
802039d8: 33 05 a4 40  	sub	a0, s0, a0
802039dc: 03 35 85 ca  	ld	a0, -856(a0)
802039e0: 81 45        	li	a1, 0
802039e2: 97 60 00 00  	auipc	ra, 6
802039e6: e7 80 00 cb  	jalr	-848(ra)
802039ea: 13 06 10 08  	li	a2, 129
802039ee: 09 65        	lui	a0, 2
802039f0: 33 05 a4 40  	sub	a0, s0, a0
802039f4: 03 35 05 ca  	ld	a0, -864(a0)
802039f8: 81 45        	li	a1, 0
802039fa: 97 60 00 00  	auipc	ra, 6
802039fe: e7 80 80 c9  	jalr	-872(ra)
80203a02: 13 06 10 08  	li	a2, 129
80203a06: 09 65        	lui	a0, 2
80203a08: 33 05 a4 40  	sub	a0, s0, a0
80203a0c: 03 35 85 c9  	ld	a0, -872(a0)
80203a10: 81 45        	li	a1, 0
80203a12: 97 60 00 00  	auipc	ra, 6
80203a16: e7 80 00 c8  	jalr	-896(ra)
80203a1a: 13 06 10 08  	li	a2, 129
80203a1e: 09 65        	lui	a0, 2
80203a20: 33 05 a4 40  	sub	a0, s0, a0
80203a24: 03 35 05 c9  	ld	a0, -880(a0)
80203a28: 81 45        	li	a1, 0
80203a2a: 97 60 00 00  	auipc	ra, 6
80203a2e: e7 80 80 c6  	jalr	-920(ra)
80203a32: 13 06 10 08  	li	a2, 129
80203a36: 09 65        	lui	a0, 2
80203a38: 33 05 a4 40  	sub	a0, s0, a0
80203a3c: 03 35 85 c8  	ld	a0, -888(a0)
80203a40: 81 45        	li	a1, 0
80203a42: 97 60 00 00  	auipc	ra, 6
80203a46: e7 80 00 c5  	jalr	-944(ra)
80203a4a: 13 06 10 08  	li	a2, 129
80203a4e: 09 65        	lui	a0, 2
80203a50: 33 05 a4 40  	sub	a0, s0, a0
80203a54: 03 35 05 c8  	ld	a0, -896(a0)
80203a58: 81 45        	li	a1, 0
80203a5a: 97 60 00 00  	auipc	ra, 6
80203a5e: e7 80 80 c3  	jalr	-968(ra)
80203a62: 13 06 10 08  	li	a2, 129
80203a66: 09 65        	lui	a0, 2
80203a68: 33 05 a4 40  	sub	a0, s0, a0
80203a6c: 03 35 85 c7  	ld	a0, -904(a0)
80203a70: 81 45        	li	a1, 0
80203a72: 97 60 00 00  	auipc	ra, 6
80203a76: e7 80 00 c2  	jalr	-992(ra)
80203a7a: 13 06 10 08  	li	a2, 129
80203a7e: 09 65        	lui	a0, 2
80203a80: 33 05 a4 40  	sub	a0, s0, a0
80203a84: 03 35 05 c7  	ld	a0, -912(a0)
80203a88: 81 45        	li	a1, 0
80203a8a: 97 60 00 00  	auipc	ra, 6
80203a8e: e7 80 80 c0  	jalr	-1016(ra)
80203a92: 13 06 10 08  	li	a2, 129
80203a96: 09 65        	lui	a0, 2
80203a98: 33 05 a4 40  	sub	a0, s0, a0
80203a9c: 03 35 85 c6  	ld	a0, -920(a0)
80203aa0: 81 45        	li	a1, 0
80203aa2: 97 60 00 00  	auipc	ra, 6
80203aa6: e7 80 00 bf  	jalr	-1040(ra)
80203aaa: 13 06 10 08  	li	a2, 129
80203aae: 09 65        	lui	a0, 2
80203ab0: 33 05 a4 40  	sub	a0, s0, a0
80203ab4: 03 35 05 c6  	ld	a0, -928(a0)
80203ab8: 81 45        	li	a1, 0
80203aba: 97 60 00 00  	auipc	ra, 6
80203abe: e7 80 80 bd  	jalr	-1064(ra)
80203ac2: 13 06 10 08  	li	a2, 129
80203ac6: 09 65        	lui	a0, 2
80203ac8: 33 05 a4 40  	sub	a0, s0, a0
80203acc: 03 35 85 c5  	ld	a0, -936(a0)
80203ad0: 81 45        	li	a1, 0
80203ad2: 97 60 00 00  	auipc	ra, 6
80203ad6: e7 80 00 bc  	jalr	-1088(ra)
80203ada: 13 06 10 08  	li	a2, 129
80203ade: 09 65        	lui	a0, 2
80203ae0: 33 05 a4 40  	sub	a0, s0, a0
80203ae4: 03 35 05 c5  	ld	a0, -944(a0)
80203ae8: 81 45        	li	a1, 0
80203aea: 97 60 00 00  	auipc	ra, 6
80203aee: e7 80 80 ba  	jalr	-1112(ra)
80203af2: 13 06 10 08  	li	a2, 129
80203af6: 09 65        	lui	a0, 2
80203af8: 33 05 a4 40  	sub	a0, s0, a0
80203afc: 03 35 85 c4  	ld	a0, -952(a0)
80203b00: 81 45        	li	a1, 0
80203b02: 97 60 00 00  	auipc	ra, 6
80203b06: e7 80 00 b9  	jalr	-1136(ra)
80203b0a: 13 06 10 08  	li	a2, 129
80203b0e: 09 65        	lui	a0, 2
80203b10: 33 05 a4 40  	sub	a0, s0, a0
80203b14: 03 35 05 c4  	ld	a0, -960(a0)
80203b18: 81 45        	li	a1, 0
80203b1a: 97 60 00 00  	auipc	ra, 6
80203b1e: e7 80 80 b7  	jalr	-1160(ra)
80203b22: 13 06 10 08  	li	a2, 129
80203b26: 09 65        	lui	a0, 2
80203b28: 33 05 a4 40  	sub	a0, s0, a0
80203b2c: 03 35 85 c3  	ld	a0, -968(a0)
80203b30: 81 45        	li	a1, 0
80203b32: 97 60 00 00  	auipc	ra, 6
80203b36: e7 80 00 b6  	jalr	-1184(ra)
80203b3a: 13 06 10 08  	li	a2, 129
80203b3e: 09 65        	lui	a0, 2
80203b40: 33 05 a4 40  	sub	a0, s0, a0
80203b44: 03 35 05 c3  	ld	a0, -976(a0)
80203b48: 81 45        	li	a1, 0
80203b4a: 97 60 00 00  	auipc	ra, 6
80203b4e: e7 80 80 b4  	jalr	-1208(ra)
80203b52: 13 06 10 08  	li	a2, 129
80203b56: 09 65        	lui	a0, 2
80203b58: 33 05 a4 40  	sub	a0, s0, a0
80203b5c: 03 35 85 c2  	ld	a0, -984(a0)
80203b60: 81 45        	li	a1, 0
80203b62: 97 60 00 00  	auipc	ra, 6
80203b66: e7 80 00 b3  	jalr	-1232(ra)
80203b6a: 13 06 10 08  	li	a2, 129
80203b6e: 09 65        	lui	a0, 2
80203b70: 33 05 a4 40  	sub	a0, s0, a0
80203b74: 03 35 05 c2  	ld	a0, -992(a0)
80203b78: 81 45        	li	a1, 0
80203b7a: 97 60 00 00  	auipc	ra, 6
80203b7e: e7 80 80 b1  	jalr	-1256(ra)
80203b82: 13 06 10 08  	li	a2, 129
80203b86: 09 65        	lui	a0, 2
80203b88: 33 05 a4 40  	sub	a0, s0, a0
80203b8c: 03 35 85 c1  	ld	a0, -1000(a0)
80203b90: 81 45        	li	a1, 0
80203b92: 97 60 00 00  	auipc	ra, 6
80203b96: e7 80 00 b0  	jalr	-1280(ra)
80203b9a: 13 06 10 08  	li	a2, 129
80203b9e: 09 65        	lui	a0, 2
80203ba0: 33 05 a4 40  	sub	a0, s0, a0
80203ba4: 03 35 05 c1  	ld	a0, -1008(a0)
80203ba8: 81 45        	li	a1, 0
80203baa: 97 60 00 00  	auipc	ra, 6
80203bae: e7 80 80 ae  	jalr	-1304(ra)
80203bb2: 13 06 10 08  	li	a2, 129
80203bb6: 09 65        	lui	a0, 2
80203bb8: 33 05 a4 40  	sub	a0, s0, a0
80203bbc: 03 35 85 c0  	ld	a0, -1016(a0)
80203bc0: 81 45        	li	a1, 0
80203bc2: 97 60 00 00  	auipc	ra, 6
80203bc6: e7 80 00 ad  	jalr	-1328(ra)
80203bca: 13 06 10 08  	li	a2, 129
80203bce: 09 65        	lui	a0, 2
80203bd0: 33 05 a4 40  	sub	a0, s0, a0
80203bd4: 03 35 05 c0  	ld	a0, -1024(a0)
80203bd8: 81 45        	li	a1, 0
80203bda: 97 60 00 00  	auipc	ra, 6
80203bde: e7 80 80 ab  	jalr	-1352(ra)
80203be2: 13 06 10 08  	li	a2, 129
80203be6: 09 65        	lui	a0, 2
80203be8: 33 05 a4 40  	sub	a0, s0, a0
80203bec: 03 35 85 bf  	ld	a0, -1032(a0)
80203bf0: 81 45        	li	a1, 0
80203bf2: 97 60 00 00  	auipc	ra, 6
80203bf6: e7 80 00 aa  	jalr	-1376(ra)
80203bfa: 13 06 10 08  	li	a2, 129
80203bfe: 09 65        	lui	a0, 2
80203c00: 33 05 a4 40  	sub	a0, s0, a0
80203c04: 03 35 05 bf  	ld	a0, -1040(a0)
80203c08: 81 45        	li	a1, 0
80203c0a: 97 60 00 00  	auipc	ra, 6
80203c0e: e7 80 80 a8  	jalr	-1400(ra)
80203c12: 13 85 04 01  	addi	a0, s1, 16
80203c16: 45 46        	li	a2, 17
80203c18: 26 06        	slli	a2, a2, 9
80203c1a: 89 65        	lui	a1, 2
80203c1c: 9b 85 85 27  	addiw	a1, a1, 632
80203c20: b3 05 b4 40  	sub	a1, s0, a1
80203c24: 97 60 00 00  	auipc	ra, 6
80203c28: e7 80 60 a7  	jalr	-1418(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80203c2c: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
80203c30: 23 84 0a 00  	sb	zero, 8(s5)
80203c34: 0f 00 10 03  	fence	rw, w
80203c38: 23 b0 a4 01  	sd	s10, 0(s1)
80203c3c: 09 65        	lui	a0, 2
80203c3e: 1b 05 85 28  	addiw	a0, a0, 648
80203c42: 33 05 a4 40  	sub	a0, s0, a0
80203c46: 97 40 00 00  	auipc	ra, 4
80203c4a: e7 80 c0 17  	jalr	380(ra)
80203c4e: 31 a8        	j	0x80203c6a <.Lpcrel_hi70+0x9e4>
80203c50: 0f 00 00 01  	fence	w, 0
80203c54: 0f 00 30 03  	fence	rw, rw
80203c58: 88 60        	ld	a0, 0(s1)
80203c5a: 0f 00 30 02  	fence	r, rw
;             match status {
80203c5e: e3 09 b5 ff  	beq	a0, s11, 0x80203c50 <.Lpcrel_hi70+0x9ca>
80203c62: 63 04 a5 01  	beq	a0, s10, 0x80203c6a <.Lpcrel_hi70+0x9e4>
80203c66: 6f 10 10 3d  	j	0x80205836 <.Lpcrel_hi80+0x18>
80203c6a: 63 64 7b 01  	bltu	s6, s7, 0x80203c72 <.Lpcrel_hi70+0x9ec>
80203c6e: 6f 10 10 35  	j	0x802057be <.Lpcrel_hi75>
;     if mc.noff == 0 {
80203c72: b3 05 8b 03  	mul	a1, s6, s8
80203c76: a6 95        	add	a1, a1, s1
80203c78: c8 65        	ld	a0, 136(a1)
80203c7a: 11 e5        	bnez	a0, 0x80203c86 <.Lpcrel_hi70+0xa00>
;         mc.intena = old;
80203c7c: 7a 19        	slli	s2, s2, 62
80203c7e: 13 56 f9 03  	srli	a2, s2, 63
80203c82: 23 88 c5 08  	sb	a2, 144(a1)
80203c86: 93 85 85 08  	addi	a1, a1, 136
;     mc.noff += 1;
80203c8a: 05 05        	addi	a0, a0, 1
80203c8c: 88 e1        	sd	a0, 0(a1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203c8e: 13 05 80 17  	li	a0, 376
80203c92: 33 09 aa 02  	mul	s2, s4, a0
80203c96: 09 65        	lui	a0, 2
80203c98: 33 05 a4 40  	sub	a0, s0, a0
80203c9c: 03 35 05 d7  	ld	a0, -656(a0)
80203ca0: 2a 99        	add	s2, s2, a0
80203ca2: 03 05 89 09  	lb	a0, 152(s2)
80203ca6: 05 0a        	addi	s4, s4, 1
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203ca8: 93 0a 89 09  	addi	s5, s2, 152
80203cac: 63 06 05 6a  	beqz	a0, 0x80204358 <.Lpcrel_hi70+0x10d2>
80203cb0: 83 3c 09 09  	ld	s9, 144(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203cb4: 12 8b        	mv	s6, tp
80203cb6: 0f 00 30 03  	fence	rw, rw
80203cba: 88 60        	ld	a0, 0(s1)
80203cbc: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203cc0: 63 1a 05 66  	bnez	a0, 0x80204334 <.Lpcrel_hi70+0x10ae>
80203cc4: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80203cc8: 63 16 05 66  	bnez	a0, 0x80204334 <.Lpcrel_hi70+0x10ae>
80203ccc: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80203cd0: f5 f9        	bnez	a1, 0x80203cc4 <.Lpcrel_hi70+0xa3e>
80203cd2: 09 65        	lui	a0, 2
80203cd4: 1b 05 85 28  	addiw	a0, a0, 648
80203cd8: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203cdc: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80203cde: 09 65        	lui	a0, 2
80203ce0: 1b 05 85 27  	addiw	a0, a0, 632
80203ce4: 33 05 a4 40  	sub	a0, s0, a0
80203ce8: 13 06 10 08  	li	a2, 129
80203cec: 81 45        	li	a1, 0
80203cee: 97 60 00 00  	auipc	ra, 6
80203cf2: e7 80 40 9a  	jalr	-1628(ra)
80203cf6: 13 06 10 08  	li	a2, 129
80203cfa: 09 65        	lui	a0, 2
80203cfc: 1b 05 05 1f  	addiw	a0, a0, 496
80203d00: 33 05 a4 40  	sub	a0, s0, a0
80203d04: 81 45        	li	a1, 0
80203d06: 97 60 00 00  	auipc	ra, 6
80203d0a: e7 80 c0 98  	jalr	-1652(ra)
80203d0e: 13 06 10 08  	li	a2, 129
80203d12: 09 65        	lui	a0, 2
80203d14: 1b 05 85 16  	addiw	a0, a0, 360
80203d18: 33 05 a4 40  	sub	a0, s0, a0
80203d1c: 81 45        	li	a1, 0
80203d1e: 97 60 00 00  	auipc	ra, 6
80203d22: e7 80 40 97  	jalr	-1676(ra)
80203d26: 13 06 10 08  	li	a2, 129
80203d2a: 09 65        	lui	a0, 2
80203d2c: 1b 05 05 0e  	addiw	a0, a0, 224
80203d30: 33 05 a4 40  	sub	a0, s0, a0
80203d34: 81 45        	li	a1, 0
80203d36: 97 60 00 00  	auipc	ra, 6
80203d3a: e7 80 c0 95  	jalr	-1700(ra)
80203d3e: 13 06 10 08  	li	a2, 129
80203d42: 09 65        	lui	a0, 2
80203d44: 1b 05 85 05  	addiw	a0, a0, 88
80203d48: 33 05 a4 40  	sub	a0, s0, a0
80203d4c: 81 45        	li	a1, 0
80203d4e: 97 60 00 00  	auipc	ra, 6
80203d52: e7 80 40 94  	jalr	-1724(ra)
80203d56: 13 06 10 08  	li	a2, 129
80203d5a: 09 65        	lui	a0, 2
80203d5c: 1b 05 05 fd  	addiw	a0, a0, -48
80203d60: 33 05 a4 40  	sub	a0, s0, a0
80203d64: 81 45        	li	a1, 0
80203d66: 97 60 00 00  	auipc	ra, 6
80203d6a: e7 80 c0 92  	jalr	-1748(ra)
80203d6e: 13 06 10 08  	li	a2, 129
80203d72: 09 65        	lui	a0, 2
80203d74: 1b 05 85 f4  	addiw	a0, a0, -184
80203d78: 33 05 a4 40  	sub	a0, s0, a0
80203d7c: 81 45        	li	a1, 0
80203d7e: 97 60 00 00  	auipc	ra, 6
80203d82: e7 80 40 91  	jalr	-1772(ra)
80203d86: 13 06 10 08  	li	a2, 129
80203d8a: 09 65        	lui	a0, 2
80203d8c: 1b 05 05 ec  	addiw	a0, a0, -320
80203d90: 33 05 a4 40  	sub	a0, s0, a0
80203d94: 81 45        	li	a1, 0
80203d96: 97 60 00 00  	auipc	ra, 6
80203d9a: e7 80 c0 8f  	jalr	-1796(ra)
80203d9e: 13 06 10 08  	li	a2, 129
80203da2: 09 65        	lui	a0, 2
80203da4: 1b 05 85 e3  	addiw	a0, a0, -456
80203da8: 33 05 a4 40  	sub	a0, s0, a0
80203dac: 81 45        	li	a1, 0
80203dae: 97 60 00 00  	auipc	ra, 6
80203db2: e7 80 40 8e  	jalr	-1820(ra)
80203db6: 13 06 10 08  	li	a2, 129
80203dba: 09 65        	lui	a0, 2
80203dbc: 1b 05 05 db  	addiw	a0, a0, -592
80203dc0: 33 05 a4 40  	sub	a0, s0, a0
80203dc4: 81 45        	li	a1, 0
80203dc6: 97 60 00 00  	auipc	ra, 6
80203dca: e7 80 c0 8c  	jalr	-1844(ra)
80203dce: 13 06 10 08  	li	a2, 129
80203dd2: 09 65        	lui	a0, 2
80203dd4: 1b 05 85 d2  	addiw	a0, a0, -728
80203dd8: 33 05 a4 40  	sub	a0, s0, a0
80203ddc: 81 45        	li	a1, 0
80203dde: 97 60 00 00  	auipc	ra, 6
80203de2: e7 80 40 8b  	jalr	-1868(ra)
80203de6: 13 06 10 08  	li	a2, 129
80203dea: 09 65        	lui	a0, 2
80203dec: 1b 05 05 ca  	addiw	a0, a0, -864
80203df0: 33 05 a4 40  	sub	a0, s0, a0
80203df4: 81 45        	li	a1, 0
80203df6: 97 60 00 00  	auipc	ra, 6
80203dfa: e7 80 c0 89  	jalr	-1892(ra)
80203dfe: 13 06 10 08  	li	a2, 129
80203e02: 09 65        	lui	a0, 2
80203e04: 1b 05 85 c1  	addiw	a0, a0, -1000
80203e08: 33 05 a4 40  	sub	a0, s0, a0
80203e0c: 81 45        	li	a1, 0
80203e0e: 97 60 00 00  	auipc	ra, 6
80203e12: e7 80 40 88  	jalr	-1916(ra)
80203e16: 13 06 10 08  	li	a2, 129
80203e1a: 09 65        	lui	a0, 2
80203e1c: 1b 05 05 b9  	addiw	a0, a0, -1136
80203e20: 33 05 a4 40  	sub	a0, s0, a0
80203e24: 81 45        	li	a1, 0
80203e26: 97 60 00 00  	auipc	ra, 6
80203e2a: e7 80 c0 86  	jalr	-1940(ra)
80203e2e: 13 06 10 08  	li	a2, 129
80203e32: 09 65        	lui	a0, 2
80203e34: 1b 05 85 b0  	addiw	a0, a0, -1272
80203e38: 33 05 a4 40  	sub	a0, s0, a0
80203e3c: 81 45        	li	a1, 0
80203e3e: 97 60 00 00  	auipc	ra, 6
80203e42: e7 80 40 85  	jalr	-1964(ra)
80203e46: 13 06 10 08  	li	a2, 129
80203e4a: 09 65        	lui	a0, 2
80203e4c: 1b 05 05 a8  	addiw	a0, a0, -1408
80203e50: 33 05 a4 40  	sub	a0, s0, a0
80203e54: 81 45        	li	a1, 0
80203e56: 97 60 00 00  	auipc	ra, 6
80203e5a: e7 80 c0 83  	jalr	-1988(ra)
80203e5e: 13 06 10 08  	li	a2, 129
80203e62: 09 65        	lui	a0, 2
80203e64: 33 05 a4 40  	sub	a0, s0, a0
80203e68: 03 35 85 d6  	ld	a0, -664(a0)
80203e6c: 81 45        	li	a1, 0
80203e6e: 97 60 00 00  	auipc	ra, 6
80203e72: e7 80 40 82  	jalr	-2012(ra)
80203e76: 13 06 10 08  	li	a2, 129
80203e7a: 09 65        	lui	a0, 2
80203e7c: 33 05 a4 40  	sub	a0, s0, a0
80203e80: 03 35 05 d6  	ld	a0, -672(a0)
80203e84: 81 45        	li	a1, 0
80203e86: 97 60 00 00  	auipc	ra, 6
80203e8a: e7 80 c0 80  	jalr	-2036(ra)
80203e8e: 13 06 10 08  	li	a2, 129
80203e92: 09 65        	lui	a0, 2
80203e94: 33 05 a4 40  	sub	a0, s0, a0
80203e98: 03 35 85 d5  	ld	a0, -680(a0)
80203e9c: 81 45        	li	a1, 0
80203e9e: 97 50 00 00  	auipc	ra, 5
80203ea2: e7 80 40 7f  	jalr	2036(ra)
80203ea6: 13 06 10 08  	li	a2, 129
80203eaa: 09 65        	lui	a0, 2
80203eac: 33 05 a4 40  	sub	a0, s0, a0
80203eb0: 03 35 05 d5  	ld	a0, -688(a0)
80203eb4: 81 45        	li	a1, 0
80203eb6: 97 50 00 00  	auipc	ra, 5
80203eba: e7 80 c0 7d  	jalr	2012(ra)
80203ebe: 13 06 10 08  	li	a2, 129
80203ec2: 09 65        	lui	a0, 2
80203ec4: 33 05 a4 40  	sub	a0, s0, a0
80203ec8: 03 35 85 d4  	ld	a0, -696(a0)
80203ecc: 81 45        	li	a1, 0
80203ece: 97 50 00 00  	auipc	ra, 5
80203ed2: e7 80 40 7c  	jalr	1988(ra)
80203ed6: 13 06 10 08  	li	a2, 129
80203eda: 09 65        	lui	a0, 2
80203edc: 33 05 a4 40  	sub	a0, s0, a0
80203ee0: 03 35 05 d4  	ld	a0, -704(a0)
80203ee4: 81 45        	li	a1, 0
80203ee6: 97 50 00 00  	auipc	ra, 5
80203eea: e7 80 c0 7a  	jalr	1964(ra)
80203eee: 13 06 10 08  	li	a2, 129
80203ef2: 09 65        	lui	a0, 2
80203ef4: 33 05 a4 40  	sub	a0, s0, a0
80203ef8: 03 35 85 d3  	ld	a0, -712(a0)
80203efc: 81 45        	li	a1, 0
80203efe: 97 50 00 00  	auipc	ra, 5
80203f02: e7 80 40 79  	jalr	1940(ra)
80203f06: 13 06 10 08  	li	a2, 129
80203f0a: 09 65        	lui	a0, 2
80203f0c: 33 05 a4 40  	sub	a0, s0, a0
80203f10: 03 35 05 d3  	ld	a0, -720(a0)
80203f14: 81 45        	li	a1, 0
80203f16: 97 50 00 00  	auipc	ra, 5
80203f1a: e7 80 c0 77  	jalr	1916(ra)
80203f1e: 13 06 10 08  	li	a2, 129
80203f22: 09 65        	lui	a0, 2
80203f24: 33 05 a4 40  	sub	a0, s0, a0
80203f28: 03 35 85 d2  	ld	a0, -728(a0)
80203f2c: 81 45        	li	a1, 0
80203f2e: 97 50 00 00  	auipc	ra, 5
80203f32: e7 80 40 76  	jalr	1892(ra)
80203f36: 13 06 10 08  	li	a2, 129
80203f3a: 09 65        	lui	a0, 2
80203f3c: 33 05 a4 40  	sub	a0, s0, a0
80203f40: 03 35 05 d2  	ld	a0, -736(a0)
80203f44: 81 45        	li	a1, 0
80203f46: 97 50 00 00  	auipc	ra, 5
80203f4a: e7 80 c0 74  	jalr	1868(ra)
80203f4e: 13 06 10 08  	li	a2, 129
80203f52: 09 65        	lui	a0, 2
80203f54: 33 05 a4 40  	sub	a0, s0, a0
80203f58: 03 35 85 d1  	ld	a0, -744(a0)
80203f5c: 81 45        	li	a1, 0
80203f5e: 97 50 00 00  	auipc	ra, 5
80203f62: e7 80 40 73  	jalr	1844(ra)
80203f66: 13 06 10 08  	li	a2, 129
80203f6a: 09 65        	lui	a0, 2
80203f6c: 33 05 a4 40  	sub	a0, s0, a0
80203f70: 03 35 05 d1  	ld	a0, -752(a0)
80203f74: 81 45        	li	a1, 0
80203f76: 97 50 00 00  	auipc	ra, 5
80203f7a: e7 80 c0 71  	jalr	1820(ra)
80203f7e: 13 06 10 08  	li	a2, 129
80203f82: 09 65        	lui	a0, 2
80203f84: 33 05 a4 40  	sub	a0, s0, a0
80203f88: 03 35 85 d0  	ld	a0, -760(a0)
80203f8c: 81 45        	li	a1, 0
80203f8e: 97 50 00 00  	auipc	ra, 5
80203f92: e7 80 40 70  	jalr	1796(ra)
80203f96: 13 06 10 08  	li	a2, 129
80203f9a: 09 65        	lui	a0, 2
80203f9c: 33 05 a4 40  	sub	a0, s0, a0
80203fa0: 03 35 05 d0  	ld	a0, -768(a0)
80203fa4: 81 45        	li	a1, 0
80203fa6: 97 50 00 00  	auipc	ra, 5
80203faa: e7 80 c0 6e  	jalr	1772(ra)
80203fae: 13 06 10 08  	li	a2, 129
80203fb2: 09 65        	lui	a0, 2
80203fb4: 33 05 a4 40  	sub	a0, s0, a0
80203fb8: 03 35 85 cf  	ld	a0, -776(a0)
80203fbc: 81 45        	li	a1, 0
80203fbe: 97 50 00 00  	auipc	ra, 5
80203fc2: e7 80 40 6d  	jalr	1748(ra)
80203fc6: 13 06 10 08  	li	a2, 129
80203fca: 09 65        	lui	a0, 2
80203fcc: 33 05 a4 40  	sub	a0, s0, a0
80203fd0: 03 35 05 cf  	ld	a0, -784(a0)
80203fd4: 81 45        	li	a1, 0
80203fd6: 97 50 00 00  	auipc	ra, 5
80203fda: e7 80 c0 6b  	jalr	1724(ra)
80203fde: 13 06 10 08  	li	a2, 129
80203fe2: 09 65        	lui	a0, 2
80203fe4: 33 05 a4 40  	sub	a0, s0, a0
80203fe8: 03 35 85 ce  	ld	a0, -792(a0)
80203fec: 81 45        	li	a1, 0
80203fee: 97 50 00 00  	auipc	ra, 5
80203ff2: e7 80 40 6a  	jalr	1700(ra)
80203ff6: 13 06 10 08  	li	a2, 129
80203ffa: 09 65        	lui	a0, 2
80203ffc: 33 05 a4 40  	sub	a0, s0, a0
80204000: 03 35 05 ce  	ld	a0, -800(a0)
80204004: 81 45        	li	a1, 0
80204006: 97 50 00 00  	auipc	ra, 5
8020400a: e7 80 c0 68  	jalr	1676(ra)
8020400e: 13 06 10 08  	li	a2, 129
80204012: 09 65        	lui	a0, 2
80204014: 33 05 a4 40  	sub	a0, s0, a0
80204018: 03 35 85 cd  	ld	a0, -808(a0)
8020401c: 81 45        	li	a1, 0
8020401e: 97 50 00 00  	auipc	ra, 5
80204022: e7 80 40 67  	jalr	1652(ra)
80204026: 13 06 10 08  	li	a2, 129
8020402a: 09 65        	lui	a0, 2
8020402c: 33 05 a4 40  	sub	a0, s0, a0
80204030: 03 35 05 cd  	ld	a0, -816(a0)
80204034: 81 45        	li	a1, 0
80204036: 97 50 00 00  	auipc	ra, 5
8020403a: e7 80 c0 65  	jalr	1628(ra)
8020403e: 13 06 10 08  	li	a2, 129
80204042: 09 65        	lui	a0, 2
80204044: 33 05 a4 40  	sub	a0, s0, a0
80204048: 03 35 85 cc  	ld	a0, -824(a0)
8020404c: 81 45        	li	a1, 0
8020404e: 97 50 00 00  	auipc	ra, 5
80204052: e7 80 40 64  	jalr	1604(ra)
80204056: 13 06 10 08  	li	a2, 129
8020405a: 09 65        	lui	a0, 2
8020405c: 33 05 a4 40  	sub	a0, s0, a0
80204060: 03 35 05 cc  	ld	a0, -832(a0)
80204064: 81 45        	li	a1, 0
80204066: 97 50 00 00  	auipc	ra, 5
8020406a: e7 80 c0 62  	jalr	1580(ra)
8020406e: 13 06 10 08  	li	a2, 129
80204072: 09 65        	lui	a0, 2
80204074: 33 05 a4 40  	sub	a0, s0, a0
80204078: 03 35 85 cb  	ld	a0, -840(a0)
8020407c: 81 45        	li	a1, 0
8020407e: 97 50 00 00  	auipc	ra, 5
80204082: e7 80 40 61  	jalr	1556(ra)
80204086: 13 06 10 08  	li	a2, 129
8020408a: 09 65        	lui	a0, 2
8020408c: 33 05 a4 40  	sub	a0, s0, a0
80204090: 03 35 05 cb  	ld	a0, -848(a0)
80204094: 81 45        	li	a1, 0
80204096: 97 50 00 00  	auipc	ra, 5
8020409a: e7 80 c0 5f  	jalr	1532(ra)
8020409e: 13 06 10 08  	li	a2, 129
802040a2: 09 65        	lui	a0, 2
802040a4: 33 05 a4 40  	sub	a0, s0, a0
802040a8: 03 35 85 ca  	ld	a0, -856(a0)
802040ac: 81 45        	li	a1, 0
802040ae: 97 50 00 00  	auipc	ra, 5
802040b2: e7 80 40 5e  	jalr	1508(ra)
802040b6: 13 06 10 08  	li	a2, 129
802040ba: 09 65        	lui	a0, 2
802040bc: 33 05 a4 40  	sub	a0, s0, a0
802040c0: 03 35 05 ca  	ld	a0, -864(a0)
802040c4: 81 45        	li	a1, 0
802040c6: 97 50 00 00  	auipc	ra, 5
802040ca: e7 80 c0 5c  	jalr	1484(ra)
802040ce: 13 06 10 08  	li	a2, 129
802040d2: 09 65        	lui	a0, 2
802040d4: 33 05 a4 40  	sub	a0, s0, a0
802040d8: 03 35 85 c9  	ld	a0, -872(a0)
802040dc: 81 45        	li	a1, 0
802040de: 97 50 00 00  	auipc	ra, 5
802040e2: e7 80 40 5b  	jalr	1460(ra)
802040e6: 13 06 10 08  	li	a2, 129
802040ea: 09 65        	lui	a0, 2
802040ec: 33 05 a4 40  	sub	a0, s0, a0
802040f0: 03 35 05 c9  	ld	a0, -880(a0)
802040f4: 81 45        	li	a1, 0
802040f6: 97 50 00 00  	auipc	ra, 5
802040fa: e7 80 c0 59  	jalr	1436(ra)
802040fe: 13 06 10 08  	li	a2, 129
80204102: 09 65        	lui	a0, 2
80204104: 33 05 a4 40  	sub	a0, s0, a0
80204108: 03 35 85 c8  	ld	a0, -888(a0)
8020410c: 81 45        	li	a1, 0
8020410e: 97 50 00 00  	auipc	ra, 5
80204112: e7 80 40 58  	jalr	1412(ra)
80204116: 13 06 10 08  	li	a2, 129
8020411a: 09 65        	lui	a0, 2
8020411c: 33 05 a4 40  	sub	a0, s0, a0
80204120: 03 35 05 c8  	ld	a0, -896(a0)
80204124: 81 45        	li	a1, 0
80204126: 97 50 00 00  	auipc	ra, 5
8020412a: e7 80 c0 56  	jalr	1388(ra)
8020412e: 13 06 10 08  	li	a2, 129
80204132: 09 65        	lui	a0, 2
80204134: 33 05 a4 40  	sub	a0, s0, a0
80204138: 03 35 85 c7  	ld	a0, -904(a0)
8020413c: 81 45        	li	a1, 0
8020413e: 97 50 00 00  	auipc	ra, 5
80204142: e7 80 40 55  	jalr	1364(ra)
80204146: 13 06 10 08  	li	a2, 129
8020414a: 09 65        	lui	a0, 2
8020414c: 33 05 a4 40  	sub	a0, s0, a0
80204150: 03 35 05 c7  	ld	a0, -912(a0)
80204154: 81 45        	li	a1, 0
80204156: 97 50 00 00  	auipc	ra, 5
8020415a: e7 80 c0 53  	jalr	1340(ra)
8020415e: 13 06 10 08  	li	a2, 129
80204162: 09 65        	lui	a0, 2
80204164: 33 05 a4 40  	sub	a0, s0, a0
80204168: 03 35 85 c6  	ld	a0, -920(a0)
8020416c: 81 45        	li	a1, 0
8020416e: 97 50 00 00  	auipc	ra, 5
80204172: e7 80 40 52  	jalr	1316(ra)
80204176: 13 06 10 08  	li	a2, 129
8020417a: 09 65        	lui	a0, 2
8020417c: 33 05 a4 40  	sub	a0, s0, a0
80204180: 03 35 05 c6  	ld	a0, -928(a0)
80204184: 81 45        	li	a1, 0
80204186: 97 50 00 00  	auipc	ra, 5
8020418a: e7 80 c0 50  	jalr	1292(ra)
8020418e: 13 06 10 08  	li	a2, 129
80204192: 09 65        	lui	a0, 2
80204194: 33 05 a4 40  	sub	a0, s0, a0
80204198: 03 35 85 c5  	ld	a0, -936(a0)
8020419c: 81 45        	li	a1, 0
8020419e: 97 50 00 00  	auipc	ra, 5
802041a2: e7 80 40 4f  	jalr	1268(ra)
802041a6: 13 06 10 08  	li	a2, 129
802041aa: 09 65        	lui	a0, 2
802041ac: 33 05 a4 40  	sub	a0, s0, a0
802041b0: 03 35 05 c5  	ld	a0, -944(a0)
802041b4: 81 45        	li	a1, 0
802041b6: 97 50 00 00  	auipc	ra, 5
802041ba: e7 80 c0 4d  	jalr	1244(ra)
802041be: 13 06 10 08  	li	a2, 129
802041c2: 09 65        	lui	a0, 2
802041c4: 33 05 a4 40  	sub	a0, s0, a0
802041c8: 03 35 85 c4  	ld	a0, -952(a0)
802041cc: 81 45        	li	a1, 0
802041ce: 97 50 00 00  	auipc	ra, 5
802041d2: e7 80 40 4c  	jalr	1220(ra)
802041d6: 13 06 10 08  	li	a2, 129
802041da: 09 65        	lui	a0, 2
802041dc: 33 05 a4 40  	sub	a0, s0, a0
802041e0: 03 35 05 c4  	ld	a0, -960(a0)
802041e4: 81 45        	li	a1, 0
802041e6: 97 50 00 00  	auipc	ra, 5
802041ea: e7 80 c0 4a  	jalr	1196(ra)
802041ee: 13 06 10 08  	li	a2, 129
802041f2: 09 65        	lui	a0, 2
802041f4: 33 05 a4 40  	sub	a0, s0, a0
802041f8: 03 35 85 c3  	ld	a0, -968(a0)
802041fc: 81 45        	li	a1, 0
802041fe: 97 50 00 00  	auipc	ra, 5
80204202: e7 80 40 49  	jalr	1172(ra)
80204206: 13 06 10 08  	li	a2, 129
8020420a: 09 65        	lui	a0, 2
8020420c: 33 05 a4 40  	sub	a0, s0, a0
80204210: 03 35 05 c3  	ld	a0, -976(a0)
80204214: 81 45        	li	a1, 0
80204216: 97 50 00 00  	auipc	ra, 5
8020421a: e7 80 c0 47  	jalr	1148(ra)
8020421e: 13 06 10 08  	li	a2, 129
80204222: 09 65        	lui	a0, 2
80204224: 33 05 a4 40  	sub	a0, s0, a0
80204228: 03 35 85 c2  	ld	a0, -984(a0)
8020422c: 81 45        	li	a1, 0
8020422e: 97 50 00 00  	auipc	ra, 5
80204232: e7 80 40 46  	jalr	1124(ra)
80204236: 13 06 10 08  	li	a2, 129
8020423a: 09 65        	lui	a0, 2
8020423c: 33 05 a4 40  	sub	a0, s0, a0
80204240: 03 35 05 c2  	ld	a0, -992(a0)
80204244: 81 45        	li	a1, 0
80204246: 97 50 00 00  	auipc	ra, 5
8020424a: e7 80 c0 44  	jalr	1100(ra)
8020424e: 13 06 10 08  	li	a2, 129
80204252: 09 65        	lui	a0, 2
80204254: 33 05 a4 40  	sub	a0, s0, a0
80204258: 03 35 85 c1  	ld	a0, -1000(a0)
8020425c: 81 45        	li	a1, 0
8020425e: 97 50 00 00  	auipc	ra, 5
80204262: e7 80 40 43  	jalr	1076(ra)
80204266: 13 06 10 08  	li	a2, 129
8020426a: 09 65        	lui	a0, 2
8020426c: 33 05 a4 40  	sub	a0, s0, a0
80204270: 03 35 05 c1  	ld	a0, -1008(a0)
80204274: 81 45        	li	a1, 0
80204276: 97 50 00 00  	auipc	ra, 5
8020427a: e7 80 c0 41  	jalr	1052(ra)
8020427e: 13 06 10 08  	li	a2, 129
80204282: 09 65        	lui	a0, 2
80204284: 33 05 a4 40  	sub	a0, s0, a0
80204288: 03 35 85 c0  	ld	a0, -1016(a0)
8020428c: 81 45        	li	a1, 0
8020428e: 97 50 00 00  	auipc	ra, 5
80204292: e7 80 40 40  	jalr	1028(ra)
80204296: 13 06 10 08  	li	a2, 129
8020429a: 09 65        	lui	a0, 2
8020429c: 33 05 a4 40  	sub	a0, s0, a0
802042a0: 03 35 05 c0  	ld	a0, -1024(a0)
802042a4: 81 45        	li	a1, 0
802042a6: 97 50 00 00  	auipc	ra, 5
802042aa: e7 80 c0 3e  	jalr	1004(ra)
802042ae: 13 06 10 08  	li	a2, 129
802042b2: 09 65        	lui	a0, 2
802042b4: 33 05 a4 40  	sub	a0, s0, a0
802042b8: 03 35 85 bf  	ld	a0, -1032(a0)
802042bc: 81 45        	li	a1, 0
802042be: 97 50 00 00  	auipc	ra, 5
802042c2: e7 80 40 3d  	jalr	980(ra)
802042c6: 13 06 10 08  	li	a2, 129
802042ca: 09 65        	lui	a0, 2
802042cc: 33 05 a4 40  	sub	a0, s0, a0
802042d0: 03 35 05 bf  	ld	a0, -1040(a0)
802042d4: 81 45        	li	a1, 0
802042d6: 97 50 00 00  	auipc	ra, 5
802042da: e7 80 c0 3b  	jalr	956(ra)
802042de: 13 85 04 01  	addi	a0, s1, 16
802042e2: 45 46        	li	a2, 17
802042e4: 26 06        	slli	a2, a2, 9
802042e6: 89 65        	lui	a1, 2
802042e8: 9b 85 85 27  	addiw	a1, a1, 632
802042ec: b3 05 b4 40  	sub	a1, s0, a1
802042f0: 97 50 00 00  	auipc	ra, 5
802042f4: e7 80 a0 3a  	jalr	938(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802042f8: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802042fc: 09 65        	lui	a0, 2
802042fe: 1b 05 85 28  	addiw	a0, a0, 648
80204302: 33 05 a4 40  	sub	a0, s0, a0
80204306: 23 04 05 00  	sb	zero, 8(a0)
8020430a: 0f 00 10 03  	fence	rw, w
8020430e: 23 b0 a4 01  	sd	s10, 0(s1)
80204312: 09 65        	lui	a0, 2
80204314: 1b 05 85 28  	addiw	a0, a0, 648
80204318: 33 05 a4 40  	sub	a0, s0, a0
8020431c: 97 40 00 00  	auipc	ra, 4
80204320: e7 80 60 aa  	jalr	-1370(ra)
80204324: 31 a8        	j	0x80204340 <.Lpcrel_hi70+0x10ba>
80204326: 0f 00 00 01  	fence	w, 0
8020432a: 0f 00 30 03  	fence	rw, rw
8020432e: 88 60        	ld	a0, 0(s1)
80204330: 0f 00 30 02  	fence	r, rw
;             match status {
80204334: e3 09 b5 ff  	beq	a0, s11, 0x80204326 <.Lpcrel_hi70+0x10a0>
80204338: 63 04 a5 01  	beq	a0, s10, 0x80204340 <.Lpcrel_hi70+0x10ba>
8020433c: 6f 10 a0 54  	j	0x80205886 <.Lpcrel_hi98+0xa>
80204340: 63 64 7b 01  	bltu	s6, s7, 0x80204348 <.Lpcrel_hi70+0x10c2>
80204344: 6f 10 a0 4d  	j	0x8020581e <.Lpcrel_hi80>
; 	&mut CPUS.get_mut()[id]
80204348: 33 05 8b 03  	mul	a0, s6, s8
8020434c: 26 95        	add	a0, a0, s1
8020434e: 41 05        	addi	a0, a0, 16
;         if self.holding() {
80204350: 63 94 ac 00  	bne	s9, a0, 0x80204358 <.Lpcrel_hi70+0x10d2>
80204354: 6f 10 a0 66  	j	0x802059be <.Lpcrel_hi81>
80204358: 13 f5 ca ff  	andi	a0, s5, -4
8020435c: af 25 05 14  	lr.w.aq	a1, (a0)
80204360: 33 f6 35 01  	and	a2, a1, s3
80204364: 09 ea        	bnez	a2, 0x80204376 <.Lpcrel_hi70+0x10f0>
80204366: 33 c6 b5 01  	xor	a2, a1, s11
8020436a: 33 76 36 01  	and	a2, a2, s3
8020436e: 2d 8e        	xor	a2, a2, a1
80204370: 2f 26 c5 18  	sc.w	a2, a2, (a0)
80204374: 65 f6        	bnez	a2, 0x8020435c <.Lpcrel_hi70+0x10d6>
80204376: 13 f5 f5 0f  	andi	a0, a1, 255
;         while self
8020437a: 79 fd        	bnez	a0, 0x80204358 <.Lpcrel_hi70+0x10d2>
8020437c: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204380: 12 8b        	mv	s6, tp
80204382: 0f 00 30 03  	fence	rw, rw
80204386: 88 60        	ld	a0, 0(s1)
80204388: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020438c: 63 16 05 66  	bnez	a0, 0x802049f8 <.Lpcrel_hi70+0x1772>
80204390: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80204394: 63 12 05 66  	bnez	a0, 0x802049f8 <.Lpcrel_hi70+0x1772>
80204398: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
8020439c: f5 f9        	bnez	a1, 0x80204390 <.Lpcrel_hi70+0x110a>
8020439e: 09 65        	lui	a0, 2
802043a0: 1b 05 85 28  	addiw	a0, a0, 648
802043a4: b3 0c a4 40  	sub	s9, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802043a8: 23 b0 9c 00  	sd	s1, 0(s9)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
802043ac: 09 65        	lui	a0, 2
802043ae: 1b 05 85 27  	addiw	a0, a0, 632
802043b2: 33 05 a4 40  	sub	a0, s0, a0
802043b6: 13 06 10 08  	li	a2, 129
802043ba: 81 45        	li	a1, 0
802043bc: 97 50 00 00  	auipc	ra, 5
802043c0: e7 80 60 2d  	jalr	726(ra)
802043c4: 13 06 10 08  	li	a2, 129
802043c8: 09 65        	lui	a0, 2
802043ca: 1b 05 05 1f  	addiw	a0, a0, 496
802043ce: 33 05 a4 40  	sub	a0, s0, a0
802043d2: 81 45        	li	a1, 0
802043d4: 97 50 00 00  	auipc	ra, 5
802043d8: e7 80 e0 2b  	jalr	702(ra)
802043dc: 13 06 10 08  	li	a2, 129
802043e0: 09 65        	lui	a0, 2
802043e2: 1b 05 85 16  	addiw	a0, a0, 360
802043e6: 33 05 a4 40  	sub	a0, s0, a0
802043ea: 81 45        	li	a1, 0
802043ec: 97 50 00 00  	auipc	ra, 5
802043f0: e7 80 60 2a  	jalr	678(ra)
802043f4: 13 06 10 08  	li	a2, 129
802043f8: 09 65        	lui	a0, 2
802043fa: 1b 05 05 0e  	addiw	a0, a0, 224
802043fe: 33 05 a4 40  	sub	a0, s0, a0
80204402: 81 45        	li	a1, 0
80204404: 97 50 00 00  	auipc	ra, 5
80204408: e7 80 e0 28  	jalr	654(ra)
8020440c: 13 06 10 08  	li	a2, 129
80204410: 09 65        	lui	a0, 2
80204412: 1b 05 85 05  	addiw	a0, a0, 88
80204416: 33 05 a4 40  	sub	a0, s0, a0
8020441a: 81 45        	li	a1, 0
8020441c: 97 50 00 00  	auipc	ra, 5
80204420: e7 80 60 27  	jalr	630(ra)
80204424: 13 06 10 08  	li	a2, 129
80204428: 09 65        	lui	a0, 2
8020442a: 1b 05 05 fd  	addiw	a0, a0, -48
8020442e: 33 05 a4 40  	sub	a0, s0, a0
80204432: 81 45        	li	a1, 0
80204434: 97 50 00 00  	auipc	ra, 5
80204438: e7 80 e0 25  	jalr	606(ra)
8020443c: 13 06 10 08  	li	a2, 129
80204440: 09 65        	lui	a0, 2
80204442: 1b 05 85 f4  	addiw	a0, a0, -184
80204446: 33 05 a4 40  	sub	a0, s0, a0
8020444a: 81 45        	li	a1, 0
8020444c: 97 50 00 00  	auipc	ra, 5
80204450: e7 80 60 24  	jalr	582(ra)
80204454: 13 06 10 08  	li	a2, 129
80204458: 09 65        	lui	a0, 2
8020445a: 1b 05 05 ec  	addiw	a0, a0, -320
8020445e: 33 05 a4 40  	sub	a0, s0, a0
80204462: 81 45        	li	a1, 0
80204464: 97 50 00 00  	auipc	ra, 5
80204468: e7 80 e0 22  	jalr	558(ra)
8020446c: 13 06 10 08  	li	a2, 129
80204470: 09 65        	lui	a0, 2
80204472: 1b 05 85 e3  	addiw	a0, a0, -456
80204476: 33 05 a4 40  	sub	a0, s0, a0
8020447a: 81 45        	li	a1, 0
8020447c: 97 50 00 00  	auipc	ra, 5
80204480: e7 80 60 21  	jalr	534(ra)
80204484: 13 06 10 08  	li	a2, 129
80204488: 09 65        	lui	a0, 2
8020448a: 1b 05 05 db  	addiw	a0, a0, -592
8020448e: 33 05 a4 40  	sub	a0, s0, a0
80204492: 81 45        	li	a1, 0
80204494: 97 50 00 00  	auipc	ra, 5
80204498: e7 80 e0 1f  	jalr	510(ra)
8020449c: 13 06 10 08  	li	a2, 129
802044a0: 09 65        	lui	a0, 2
802044a2: 1b 05 85 d2  	addiw	a0, a0, -728
802044a6: 33 05 a4 40  	sub	a0, s0, a0
802044aa: 81 45        	li	a1, 0
802044ac: 97 50 00 00  	auipc	ra, 5
802044b0: e7 80 60 1e  	jalr	486(ra)
802044b4: 13 06 10 08  	li	a2, 129
802044b8: 09 65        	lui	a0, 2
802044ba: 1b 05 05 ca  	addiw	a0, a0, -864
802044be: 33 05 a4 40  	sub	a0, s0, a0
802044c2: 81 45        	li	a1, 0
802044c4: 97 50 00 00  	auipc	ra, 5
802044c8: e7 80 e0 1c  	jalr	462(ra)
802044cc: 13 06 10 08  	li	a2, 129
802044d0: 09 65        	lui	a0, 2
802044d2: 1b 05 85 c1  	addiw	a0, a0, -1000
802044d6: 33 05 a4 40  	sub	a0, s0, a0
802044da: 81 45        	li	a1, 0
802044dc: 97 50 00 00  	auipc	ra, 5
802044e0: e7 80 60 1b  	jalr	438(ra)
802044e4: 13 06 10 08  	li	a2, 129
802044e8: 09 65        	lui	a0, 2
802044ea: 1b 05 05 b9  	addiw	a0, a0, -1136
802044ee: 33 05 a4 40  	sub	a0, s0, a0
802044f2: 81 45        	li	a1, 0
802044f4: 97 50 00 00  	auipc	ra, 5
802044f8: e7 80 e0 19  	jalr	414(ra)
802044fc: 13 06 10 08  	li	a2, 129
80204500: 09 65        	lui	a0, 2
80204502: 1b 05 85 b0  	addiw	a0, a0, -1272
80204506: 33 05 a4 40  	sub	a0, s0, a0
8020450a: 81 45        	li	a1, 0
8020450c: 97 50 00 00  	auipc	ra, 5
80204510: e7 80 60 18  	jalr	390(ra)
80204514: 13 06 10 08  	li	a2, 129
80204518: 09 65        	lui	a0, 2
8020451a: 1b 05 05 a8  	addiw	a0, a0, -1408
8020451e: 33 05 a4 40  	sub	a0, s0, a0
80204522: 81 45        	li	a1, 0
80204524: 97 50 00 00  	auipc	ra, 5
80204528: e7 80 e0 16  	jalr	366(ra)
8020452c: 13 06 10 08  	li	a2, 129
80204530: 09 65        	lui	a0, 2
80204532: 33 05 a4 40  	sub	a0, s0, a0
80204536: 03 35 85 d6  	ld	a0, -664(a0)
8020453a: 81 45        	li	a1, 0
8020453c: 97 50 00 00  	auipc	ra, 5
80204540: e7 80 60 15  	jalr	342(ra)
80204544: 13 06 10 08  	li	a2, 129
80204548: 09 65        	lui	a0, 2
8020454a: 33 05 a4 40  	sub	a0, s0, a0
8020454e: 03 35 05 d6  	ld	a0, -672(a0)
80204552: 81 45        	li	a1, 0
80204554: 97 50 00 00  	auipc	ra, 5
80204558: e7 80 e0 13  	jalr	318(ra)
8020455c: 13 06 10 08  	li	a2, 129
80204560: 09 65        	lui	a0, 2
80204562: 33 05 a4 40  	sub	a0, s0, a0
80204566: 03 35 85 d5  	ld	a0, -680(a0)
8020456a: 81 45        	li	a1, 0
8020456c: 97 50 00 00  	auipc	ra, 5
80204570: e7 80 60 12  	jalr	294(ra)
80204574: 13 06 10 08  	li	a2, 129
80204578: 09 65        	lui	a0, 2
8020457a: 33 05 a4 40  	sub	a0, s0, a0
8020457e: 03 35 05 d5  	ld	a0, -688(a0)
80204582: 81 45        	li	a1, 0
80204584: 97 50 00 00  	auipc	ra, 5
80204588: e7 80 e0 10  	jalr	270(ra)
8020458c: 13 06 10 08  	li	a2, 129
80204590: 09 65        	lui	a0, 2
80204592: 33 05 a4 40  	sub	a0, s0, a0
80204596: 03 35 85 d4  	ld	a0, -696(a0)
8020459a: 81 45        	li	a1, 0
8020459c: 97 50 00 00  	auipc	ra, 5
802045a0: e7 80 60 0f  	jalr	246(ra)
802045a4: 13 06 10 08  	li	a2, 129
802045a8: 09 65        	lui	a0, 2
802045aa: 33 05 a4 40  	sub	a0, s0, a0
802045ae: 03 35 05 d4  	ld	a0, -704(a0)
802045b2: 81 45        	li	a1, 0
802045b4: 97 50 00 00  	auipc	ra, 5
802045b8: e7 80 e0 0d  	jalr	222(ra)
802045bc: 13 06 10 08  	li	a2, 129
802045c0: 09 65        	lui	a0, 2
802045c2: 33 05 a4 40  	sub	a0, s0, a0
802045c6: 03 35 85 d3  	ld	a0, -712(a0)
802045ca: 81 45        	li	a1, 0
802045cc: 97 50 00 00  	auipc	ra, 5
802045d0: e7 80 60 0c  	jalr	198(ra)
802045d4: 13 06 10 08  	li	a2, 129
802045d8: 09 65        	lui	a0, 2
802045da: 33 05 a4 40  	sub	a0, s0, a0
802045de: 03 35 05 d3  	ld	a0, -720(a0)
802045e2: 81 45        	li	a1, 0
802045e4: 97 50 00 00  	auipc	ra, 5
802045e8: e7 80 e0 0a  	jalr	174(ra)
802045ec: 13 06 10 08  	li	a2, 129
802045f0: 09 65        	lui	a0, 2
802045f2: 33 05 a4 40  	sub	a0, s0, a0
802045f6: 03 35 85 d2  	ld	a0, -728(a0)
802045fa: 81 45        	li	a1, 0
802045fc: 97 50 00 00  	auipc	ra, 5
80204600: e7 80 60 09  	jalr	150(ra)
80204604: 13 06 10 08  	li	a2, 129
80204608: 09 65        	lui	a0, 2
8020460a: 33 05 a4 40  	sub	a0, s0, a0
8020460e: 03 35 05 d2  	ld	a0, -736(a0)
80204612: 81 45        	li	a1, 0
80204614: 97 50 00 00  	auipc	ra, 5
80204618: e7 80 e0 07  	jalr	126(ra)
8020461c: 13 06 10 08  	li	a2, 129
80204620: 09 65        	lui	a0, 2
80204622: 33 05 a4 40  	sub	a0, s0, a0
80204626: 03 35 85 d1  	ld	a0, -744(a0)
8020462a: 81 45        	li	a1, 0
8020462c: 97 50 00 00  	auipc	ra, 5
80204630: e7 80 60 06  	jalr	102(ra)
80204634: 13 06 10 08  	li	a2, 129
80204638: 09 65        	lui	a0, 2
8020463a: 33 05 a4 40  	sub	a0, s0, a0
8020463e: 03 35 05 d1  	ld	a0, -752(a0)
80204642: 81 45        	li	a1, 0
80204644: 97 50 00 00  	auipc	ra, 5
80204648: e7 80 e0 04  	jalr	78(ra)
8020464c: 13 06 10 08  	li	a2, 129
80204650: 09 65        	lui	a0, 2
80204652: 33 05 a4 40  	sub	a0, s0, a0
80204656: 03 35 85 d0  	ld	a0, -760(a0)
8020465a: 81 45        	li	a1, 0
8020465c: 97 50 00 00  	auipc	ra, 5
80204660: e7 80 60 03  	jalr	54(ra)
80204664: 13 06 10 08  	li	a2, 129
80204668: 09 65        	lui	a0, 2
8020466a: 33 05 a4 40  	sub	a0, s0, a0
8020466e: 03 35 05 d0  	ld	a0, -768(a0)
80204672: 81 45        	li	a1, 0
80204674: 97 50 00 00  	auipc	ra, 5
80204678: e7 80 e0 01  	jalr	30(ra)
8020467c: 13 06 10 08  	li	a2, 129
80204680: 09 65        	lui	a0, 2
80204682: 33 05 a4 40  	sub	a0, s0, a0
80204686: 03 35 85 cf  	ld	a0, -776(a0)
8020468a: 81 45        	li	a1, 0
8020468c: 97 50 00 00  	auipc	ra, 5
80204690: e7 80 60 00  	jalr	6(ra)
80204694: 13 06 10 08  	li	a2, 129
80204698: 09 65        	lui	a0, 2
8020469a: 33 05 a4 40  	sub	a0, s0, a0
8020469e: 03 35 05 cf  	ld	a0, -784(a0)
802046a2: 81 45        	li	a1, 0
802046a4: 97 50 00 00  	auipc	ra, 5
802046a8: e7 80 e0 fe  	jalr	-18(ra)
802046ac: 13 06 10 08  	li	a2, 129
802046b0: 09 65        	lui	a0, 2
802046b2: 33 05 a4 40  	sub	a0, s0, a0
802046b6: 03 35 85 ce  	ld	a0, -792(a0)
802046ba: 81 45        	li	a1, 0
802046bc: 97 50 00 00  	auipc	ra, 5
802046c0: e7 80 60 fd  	jalr	-42(ra)
802046c4: 13 06 10 08  	li	a2, 129
802046c8: 09 65        	lui	a0, 2
802046ca: 33 05 a4 40  	sub	a0, s0, a0
802046ce: 03 35 05 ce  	ld	a0, -800(a0)
802046d2: 81 45        	li	a1, 0
802046d4: 97 50 00 00  	auipc	ra, 5
802046d8: e7 80 e0 fb  	jalr	-66(ra)
802046dc: 13 06 10 08  	li	a2, 129
802046e0: 09 65        	lui	a0, 2
802046e2: 33 05 a4 40  	sub	a0, s0, a0
802046e6: 03 35 85 cd  	ld	a0, -808(a0)
802046ea: 81 45        	li	a1, 0
802046ec: 97 50 00 00  	auipc	ra, 5
802046f0: e7 80 60 fa  	jalr	-90(ra)
802046f4: 13 06 10 08  	li	a2, 129
802046f8: 09 65        	lui	a0, 2
802046fa: 33 05 a4 40  	sub	a0, s0, a0
802046fe: 03 35 05 cd  	ld	a0, -816(a0)
80204702: 81 45        	li	a1, 0
80204704: 97 50 00 00  	auipc	ra, 5
80204708: e7 80 e0 f8  	jalr	-114(ra)
8020470c: 13 06 10 08  	li	a2, 129
80204710: 09 65        	lui	a0, 2
80204712: 33 05 a4 40  	sub	a0, s0, a0
80204716: 03 35 85 cc  	ld	a0, -824(a0)
8020471a: 81 45        	li	a1, 0
8020471c: 97 50 00 00  	auipc	ra, 5
80204720: e7 80 60 f7  	jalr	-138(ra)
80204724: 13 06 10 08  	li	a2, 129
80204728: 09 65        	lui	a0, 2
8020472a: 33 05 a4 40  	sub	a0, s0, a0
8020472e: 03 35 05 cc  	ld	a0, -832(a0)
80204732: 81 45        	li	a1, 0
80204734: 97 50 00 00  	auipc	ra, 5
80204738: e7 80 e0 f5  	jalr	-162(ra)
8020473c: 13 06 10 08  	li	a2, 129
80204740: 09 65        	lui	a0, 2
80204742: 33 05 a4 40  	sub	a0, s0, a0
80204746: 03 35 85 cb  	ld	a0, -840(a0)
8020474a: 81 45        	li	a1, 0
8020474c: 97 50 00 00  	auipc	ra, 5
80204750: e7 80 60 f4  	jalr	-186(ra)
80204754: 13 06 10 08  	li	a2, 129
80204758: 09 65        	lui	a0, 2
8020475a: 33 05 a4 40  	sub	a0, s0, a0
8020475e: 03 35 05 cb  	ld	a0, -848(a0)
80204762: 81 45        	li	a1, 0
80204764: 97 50 00 00  	auipc	ra, 5
80204768: e7 80 e0 f2  	jalr	-210(ra)
8020476c: 13 06 10 08  	li	a2, 129
80204770: 09 65        	lui	a0, 2
80204772: 33 05 a4 40  	sub	a0, s0, a0
80204776: 03 35 85 ca  	ld	a0, -856(a0)
8020477a: 81 45        	li	a1, 0
8020477c: 97 50 00 00  	auipc	ra, 5
80204780: e7 80 60 f1  	jalr	-234(ra)
80204784: 13 06 10 08  	li	a2, 129
80204788: 09 65        	lui	a0, 2
8020478a: 33 05 a4 40  	sub	a0, s0, a0
8020478e: 03 35 05 ca  	ld	a0, -864(a0)
80204792: 81 45        	li	a1, 0
80204794: 97 50 00 00  	auipc	ra, 5
80204798: e7 80 e0 ef  	jalr	-258(ra)
8020479c: 13 06 10 08  	li	a2, 129
802047a0: 09 65        	lui	a0, 2
802047a2: 33 05 a4 40  	sub	a0, s0, a0
802047a6: 03 35 85 c9  	ld	a0, -872(a0)
802047aa: 81 45        	li	a1, 0
802047ac: 97 50 00 00  	auipc	ra, 5
802047b0: e7 80 60 ee  	jalr	-282(ra)
802047b4: 13 06 10 08  	li	a2, 129
802047b8: 09 65        	lui	a0, 2
802047ba: 33 05 a4 40  	sub	a0, s0, a0
802047be: 03 35 05 c9  	ld	a0, -880(a0)
802047c2: 81 45        	li	a1, 0
802047c4: 97 50 00 00  	auipc	ra, 5
802047c8: e7 80 e0 ec  	jalr	-306(ra)
802047cc: 13 06 10 08  	li	a2, 129
802047d0: 09 65        	lui	a0, 2
802047d2: 33 05 a4 40  	sub	a0, s0, a0
802047d6: 03 35 85 c8  	ld	a0, -888(a0)
802047da: 81 45        	li	a1, 0
802047dc: 97 50 00 00  	auipc	ra, 5
802047e0: e7 80 60 eb  	jalr	-330(ra)
802047e4: 13 06 10 08  	li	a2, 129
802047e8: 09 65        	lui	a0, 2
802047ea: 33 05 a4 40  	sub	a0, s0, a0
802047ee: 03 35 05 c8  	ld	a0, -896(a0)
802047f2: 81 45        	li	a1, 0
802047f4: 97 50 00 00  	auipc	ra, 5
802047f8: e7 80 e0 e9  	jalr	-354(ra)
802047fc: 13 06 10 08  	li	a2, 129
80204800: 09 65        	lui	a0, 2
80204802: 33 05 a4 40  	sub	a0, s0, a0
80204806: 03 35 85 c7  	ld	a0, -904(a0)
8020480a: 81 45        	li	a1, 0
8020480c: 97 50 00 00  	auipc	ra, 5
80204810: e7 80 60 e8  	jalr	-378(ra)
80204814: 13 06 10 08  	li	a2, 129
80204818: 09 65        	lui	a0, 2
8020481a: 33 05 a4 40  	sub	a0, s0, a0
8020481e: 03 35 05 c7  	ld	a0, -912(a0)
80204822: 81 45        	li	a1, 0
80204824: 97 50 00 00  	auipc	ra, 5
80204828: e7 80 e0 e6  	jalr	-402(ra)
8020482c: 13 06 10 08  	li	a2, 129
80204830: 09 65        	lui	a0, 2
80204832: 33 05 a4 40  	sub	a0, s0, a0
80204836: 03 35 85 c6  	ld	a0, -920(a0)
8020483a: 81 45        	li	a1, 0
8020483c: 97 50 00 00  	auipc	ra, 5
80204840: e7 80 60 e5  	jalr	-426(ra)
80204844: 13 06 10 08  	li	a2, 129
80204848: 09 65        	lui	a0, 2
8020484a: 33 05 a4 40  	sub	a0, s0, a0
8020484e: 03 35 05 c6  	ld	a0, -928(a0)
80204852: 81 45        	li	a1, 0
80204854: 97 50 00 00  	auipc	ra, 5
80204858: e7 80 e0 e3  	jalr	-450(ra)
8020485c: 13 06 10 08  	li	a2, 129
80204860: 09 65        	lui	a0, 2
80204862: 33 05 a4 40  	sub	a0, s0, a0
80204866: 03 35 85 c5  	ld	a0, -936(a0)
8020486a: 81 45        	li	a1, 0
8020486c: 97 50 00 00  	auipc	ra, 5
80204870: e7 80 60 e2  	jalr	-474(ra)
80204874: 13 06 10 08  	li	a2, 129
80204878: 09 65        	lui	a0, 2
8020487a: 33 05 a4 40  	sub	a0, s0, a0
8020487e: 03 35 05 c5  	ld	a0, -944(a0)
80204882: 81 45        	li	a1, 0
80204884: 97 50 00 00  	auipc	ra, 5
80204888: e7 80 e0 e0  	jalr	-498(ra)
8020488c: 13 06 10 08  	li	a2, 129
80204890: 09 65        	lui	a0, 2
80204892: 33 05 a4 40  	sub	a0, s0, a0
80204896: 03 35 85 c4  	ld	a0, -952(a0)
8020489a: 81 45        	li	a1, 0
8020489c: 97 50 00 00  	auipc	ra, 5
802048a0: e7 80 60 df  	jalr	-522(ra)
802048a4: 13 06 10 08  	li	a2, 129
802048a8: 09 65        	lui	a0, 2
802048aa: 33 05 a4 40  	sub	a0, s0, a0
802048ae: 03 35 05 c4  	ld	a0, -960(a0)
802048b2: 81 45        	li	a1, 0
802048b4: 97 50 00 00  	auipc	ra, 5
802048b8: e7 80 e0 dd  	jalr	-546(ra)
802048bc: 13 06 10 08  	li	a2, 129
802048c0: 09 65        	lui	a0, 2
802048c2: 33 05 a4 40  	sub	a0, s0, a0
802048c6: 03 35 85 c3  	ld	a0, -968(a0)
802048ca: 81 45        	li	a1, 0
802048cc: 97 50 00 00  	auipc	ra, 5
802048d0: e7 80 60 dc  	jalr	-570(ra)
802048d4: 13 06 10 08  	li	a2, 129
802048d8: 09 65        	lui	a0, 2
802048da: 33 05 a4 40  	sub	a0, s0, a0
802048de: 03 35 05 c3  	ld	a0, -976(a0)
802048e2: 81 45        	li	a1, 0
802048e4: 97 50 00 00  	auipc	ra, 5
802048e8: e7 80 e0 da  	jalr	-594(ra)
802048ec: 13 06 10 08  	li	a2, 129
802048f0: 09 65        	lui	a0, 2
802048f2: 33 05 a4 40  	sub	a0, s0, a0
802048f6: 03 35 85 c2  	ld	a0, -984(a0)
802048fa: 81 45        	li	a1, 0
802048fc: 97 50 00 00  	auipc	ra, 5
80204900: e7 80 60 d9  	jalr	-618(ra)
80204904: 13 06 10 08  	li	a2, 129
80204908: 09 65        	lui	a0, 2
8020490a: 33 05 a4 40  	sub	a0, s0, a0
8020490e: 03 35 05 c2  	ld	a0, -992(a0)
80204912: 81 45        	li	a1, 0
80204914: 97 50 00 00  	auipc	ra, 5
80204918: e7 80 e0 d7  	jalr	-642(ra)
8020491c: 13 06 10 08  	li	a2, 129
80204920: 09 65        	lui	a0, 2
80204922: 33 05 a4 40  	sub	a0, s0, a0
80204926: 03 35 85 c1  	ld	a0, -1000(a0)
8020492a: 81 45        	li	a1, 0
8020492c: 97 50 00 00  	auipc	ra, 5
80204930: e7 80 60 d6  	jalr	-666(ra)
80204934: 13 06 10 08  	li	a2, 129
80204938: 09 65        	lui	a0, 2
8020493a: 33 05 a4 40  	sub	a0, s0, a0
8020493e: 03 35 05 c1  	ld	a0, -1008(a0)
80204942: 81 45        	li	a1, 0
80204944: 97 50 00 00  	auipc	ra, 5
80204948: e7 80 e0 d4  	jalr	-690(ra)
8020494c: 13 06 10 08  	li	a2, 129
80204950: 09 65        	lui	a0, 2
80204952: 33 05 a4 40  	sub	a0, s0, a0
80204956: 03 35 85 c0  	ld	a0, -1016(a0)
8020495a: 81 45        	li	a1, 0
8020495c: 97 50 00 00  	auipc	ra, 5
80204960: e7 80 60 d3  	jalr	-714(ra)
80204964: 13 06 10 08  	li	a2, 129
80204968: 09 65        	lui	a0, 2
8020496a: 33 05 a4 40  	sub	a0, s0, a0
8020496e: 03 35 05 c0  	ld	a0, -1024(a0)
80204972: 81 45        	li	a1, 0
80204974: 97 50 00 00  	auipc	ra, 5
80204978: e7 80 e0 d1  	jalr	-738(ra)
8020497c: 13 06 10 08  	li	a2, 129
80204980: 09 65        	lui	a0, 2
80204982: 33 05 a4 40  	sub	a0, s0, a0
80204986: 03 35 85 bf  	ld	a0, -1032(a0)
8020498a: 81 45        	li	a1, 0
8020498c: 97 50 00 00  	auipc	ra, 5
80204990: e7 80 60 d0  	jalr	-762(ra)
80204994: 13 06 10 08  	li	a2, 129
80204998: 09 65        	lui	a0, 2
8020499a: 33 05 a4 40  	sub	a0, s0, a0
8020499e: 03 35 05 bf  	ld	a0, -1040(a0)
802049a2: 81 45        	li	a1, 0
802049a4: 97 50 00 00  	auipc	ra, 5
802049a8: e7 80 e0 ce  	jalr	-786(ra)
802049ac: 13 85 04 01  	addi	a0, s1, 16
802049b0: 45 46        	li	a2, 17
802049b2: 26 06        	slli	a2, a2, 9
802049b4: 89 65        	lui	a1, 2
802049b6: 9b 85 85 27  	addiw	a1, a1, 632
802049ba: b3 05 b4 40  	sub	a1, s0, a1
802049be: 97 50 00 00  	auipc	ra, 5
802049c2: e7 80 c0 cd  	jalr	-804(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802049c6: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802049ca: 23 84 0c 00  	sb	zero, 8(s9)
802049ce: 0f 00 10 03  	fence	rw, w
802049d2: 23 b0 a4 01  	sd	s10, 0(s1)
802049d6: 09 65        	lui	a0, 2
802049d8: 1b 05 85 28  	addiw	a0, a0, 648
802049dc: 33 05 a4 40  	sub	a0, s0, a0
802049e0: 97 30 00 00  	auipc	ra, 3
802049e4: e7 80 20 3e  	jalr	994(ra)
802049e8: 21 a8        	j	0x80204a00 <.Lpcrel_hi70+0x177a>
802049ea: 0f 00 00 01  	fence	w, 0
802049ee: 0f 00 30 03  	fence	rw, rw
802049f2: 88 60        	ld	a0, 0(s1)
802049f4: 0f 00 30 02  	fence	r, rw
;             match status {
802049f8: e3 09 b5 ff  	beq	a0, s11, 0x802049ea <.Lpcrel_hi70+0x1764>
802049fc: e3 17 a5 65  	bne	a0, s10, 0x8020584a <.Lpcrel_hi72+0xa>
80204a00: e3 7b 7b 5d  	bgeu	s6, s7, 0x802057d6 <.Lpcrel_hi88>
; #[derive(PartialEq, Eq, Clone, Copy)]
80204a04: 03 45 09 17  	lbu	a0, 368(s2)
; 	&mut CPUS.get_mut()[id]
80204a08: b3 05 8b 03  	mul	a1, s6, s8
80204a0c: a6 95        	add	a1, a1, s1
80204a0e: c1 05        	addi	a1, a1, 16
;         self.cpu = mycpu();
80204a10: 23 38 b9 08  	sd	a1, 144(s2)
;             if p.state == ProcState::Runable {
80204a14: 8d 45        	li	a1, 3
80204a16: 63 1b b5 02  	bne	a0, a1, 0x80204a4c <.Lpcrel_hi70+0x17c6>
80204a1a: 13 05 09 17  	addi	a0, s2, 368
;                 p.state = ProcState::Running;
80204a1e: 91 45        	li	a1, 4
80204a20: 23 00 b5 00  	sb	a1, 0(a0)
80204a24: 09 65        	lui	a0, 2
80204a26: 33 05 a4 40  	sub	a0, s0, a0
80204a2a: 03 3b 85 be  	ld	s6, -1048(a0)
;                 c.proc = p;
80204a2e: 23 30 2b 01  	sd	s2, 0(s6)
;                     switch(&mut c.context, &p.context);
80204a32: 93 05 09 0a  	addi	a1, s2, 160
80204a36: 09 65        	lui	a0, 2
80204a38: 33 05 a4 40  	sub	a0, s0, a0
80204a3c: 03 35 05 be  	ld	a0, -1056(a0)
80204a40: 97 10 00 00  	auipc	ra, 1
80204a44: e7 80 c0 5d  	jalr	1500(ra)
;                 c.proc = null_mut();
80204a48: 23 30 0b 00  	sd	zero, 0(s6)
80204a4c: 03 85 0a 00  	lb	a0, 0(s5)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204a50: e3 0d 05 6a  	beqz	a0, 0x8020590a <.Lpcrel_hi94>
80204a54: 13 09 09 09  	addi	s2, s2, 144
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204a58: 83 3c 09 00  	ld	s9, 0(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204a5c: 12 8b        	mv	s6, tp
80204a5e: 0f 00 30 03  	fence	rw, rw
80204a62: 88 60        	ld	a0, 0(s1)
80204a64: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204a68: 63 1a 05 66  	bnez	a0, 0x802050dc <.Lpcrel_hi70+0x1e56>
80204a6c: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80204a70: 63 16 05 66  	bnez	a0, 0x802050dc <.Lpcrel_hi70+0x1e56>
80204a74: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80204a78: f5 f9        	bnez	a1, 0x80204a6c <.Lpcrel_hi70+0x17e6>
80204a7a: 09 65        	lui	a0, 2
80204a7c: 1b 05 85 28  	addiw	a0, a0, 648
80204a80: 33 05 a4 40  	sub	a0, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
80204a84: 04 e1        	sd	s1, 0(a0)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80204a86: 09 65        	lui	a0, 2
80204a88: 1b 05 85 27  	addiw	a0, a0, 632
80204a8c: 33 05 a4 40  	sub	a0, s0, a0
80204a90: 13 06 10 08  	li	a2, 129
80204a94: 81 45        	li	a1, 0
80204a96: 97 50 00 00  	auipc	ra, 5
80204a9a: e7 80 c0 bf  	jalr	-1028(ra)
80204a9e: 13 06 10 08  	li	a2, 129
80204aa2: 09 65        	lui	a0, 2
80204aa4: 1b 05 05 1f  	addiw	a0, a0, 496
80204aa8: 33 05 a4 40  	sub	a0, s0, a0
80204aac: 81 45        	li	a1, 0
80204aae: 97 50 00 00  	auipc	ra, 5
80204ab2: e7 80 40 be  	jalr	-1052(ra)
80204ab6: 13 06 10 08  	li	a2, 129
80204aba: 09 65        	lui	a0, 2
80204abc: 1b 05 85 16  	addiw	a0, a0, 360
80204ac0: 33 05 a4 40  	sub	a0, s0, a0
80204ac4: 81 45        	li	a1, 0
80204ac6: 97 50 00 00  	auipc	ra, 5
80204aca: e7 80 c0 bc  	jalr	-1076(ra)
80204ace: 13 06 10 08  	li	a2, 129
80204ad2: 09 65        	lui	a0, 2
80204ad4: 1b 05 05 0e  	addiw	a0, a0, 224
80204ad8: 33 05 a4 40  	sub	a0, s0, a0
80204adc: 81 45        	li	a1, 0
80204ade: 97 50 00 00  	auipc	ra, 5
80204ae2: e7 80 40 bb  	jalr	-1100(ra)
80204ae6: 13 06 10 08  	li	a2, 129
80204aea: 09 65        	lui	a0, 2
80204aec: 1b 05 85 05  	addiw	a0, a0, 88
80204af0: 33 05 a4 40  	sub	a0, s0, a0
80204af4: 81 45        	li	a1, 0
80204af6: 97 50 00 00  	auipc	ra, 5
80204afa: e7 80 c0 b9  	jalr	-1124(ra)
80204afe: 13 06 10 08  	li	a2, 129
80204b02: 09 65        	lui	a0, 2
80204b04: 1b 05 05 fd  	addiw	a0, a0, -48
80204b08: 33 05 a4 40  	sub	a0, s0, a0
80204b0c: 81 45        	li	a1, 0
80204b0e: 97 50 00 00  	auipc	ra, 5
80204b12: e7 80 40 b8  	jalr	-1148(ra)
80204b16: 13 06 10 08  	li	a2, 129
80204b1a: 09 65        	lui	a0, 2
80204b1c: 1b 05 85 f4  	addiw	a0, a0, -184
80204b20: 33 05 a4 40  	sub	a0, s0, a0
80204b24: 81 45        	li	a1, 0
80204b26: 97 50 00 00  	auipc	ra, 5
80204b2a: e7 80 c0 b6  	jalr	-1172(ra)
80204b2e: 13 06 10 08  	li	a2, 129
80204b32: 09 65        	lui	a0, 2
80204b34: 1b 05 05 ec  	addiw	a0, a0, -320
80204b38: 33 05 a4 40  	sub	a0, s0, a0
80204b3c: 81 45        	li	a1, 0
80204b3e: 97 50 00 00  	auipc	ra, 5
80204b42: e7 80 40 b5  	jalr	-1196(ra)
80204b46: 13 06 10 08  	li	a2, 129
80204b4a: 09 65        	lui	a0, 2
80204b4c: 1b 05 85 e3  	addiw	a0, a0, -456
80204b50: 33 05 a4 40  	sub	a0, s0, a0
80204b54: 81 45        	li	a1, 0
80204b56: 97 50 00 00  	auipc	ra, 5
80204b5a: e7 80 c0 b3  	jalr	-1220(ra)
80204b5e: 13 06 10 08  	li	a2, 129
80204b62: 09 65        	lui	a0, 2
80204b64: 1b 05 05 db  	addiw	a0, a0, -592
80204b68: 33 05 a4 40  	sub	a0, s0, a0
80204b6c: 81 45        	li	a1, 0
80204b6e: 97 50 00 00  	auipc	ra, 5
80204b72: e7 80 40 b2  	jalr	-1244(ra)
80204b76: 13 06 10 08  	li	a2, 129
80204b7a: 09 65        	lui	a0, 2
80204b7c: 1b 05 85 d2  	addiw	a0, a0, -728
80204b80: 33 05 a4 40  	sub	a0, s0, a0
80204b84: 81 45        	li	a1, 0
80204b86: 97 50 00 00  	auipc	ra, 5
80204b8a: e7 80 c0 b0  	jalr	-1268(ra)
80204b8e: 13 06 10 08  	li	a2, 129
80204b92: 09 65        	lui	a0, 2
80204b94: 1b 05 05 ca  	addiw	a0, a0, -864
80204b98: 33 05 a4 40  	sub	a0, s0, a0
80204b9c: 81 45        	li	a1, 0
80204b9e: 97 50 00 00  	auipc	ra, 5
80204ba2: e7 80 40 af  	jalr	-1292(ra)
80204ba6: 13 06 10 08  	li	a2, 129
80204baa: 09 65        	lui	a0, 2
80204bac: 1b 05 85 c1  	addiw	a0, a0, -1000
80204bb0: 33 05 a4 40  	sub	a0, s0, a0
80204bb4: 81 45        	li	a1, 0
80204bb6: 97 50 00 00  	auipc	ra, 5
80204bba: e7 80 c0 ad  	jalr	-1316(ra)
80204bbe: 13 06 10 08  	li	a2, 129
80204bc2: 09 65        	lui	a0, 2
80204bc4: 1b 05 05 b9  	addiw	a0, a0, -1136
80204bc8: 33 05 a4 40  	sub	a0, s0, a0
80204bcc: 81 45        	li	a1, 0
80204bce: 97 50 00 00  	auipc	ra, 5
80204bd2: e7 80 40 ac  	jalr	-1340(ra)
80204bd6: 13 06 10 08  	li	a2, 129
80204bda: 09 65        	lui	a0, 2
80204bdc: 1b 05 85 b0  	addiw	a0, a0, -1272
80204be0: 33 05 a4 40  	sub	a0, s0, a0
80204be4: 81 45        	li	a1, 0
80204be6: 97 50 00 00  	auipc	ra, 5
80204bea: e7 80 c0 aa  	jalr	-1364(ra)
80204bee: 13 06 10 08  	li	a2, 129
80204bf2: 09 65        	lui	a0, 2
80204bf4: 1b 05 05 a8  	addiw	a0, a0, -1408
80204bf8: 33 05 a4 40  	sub	a0, s0, a0
80204bfc: 81 45        	li	a1, 0
80204bfe: 97 50 00 00  	auipc	ra, 5
80204c02: e7 80 40 a9  	jalr	-1388(ra)
80204c06: 13 06 10 08  	li	a2, 129
80204c0a: 09 65        	lui	a0, 2
80204c0c: 33 05 a4 40  	sub	a0, s0, a0
80204c10: 03 35 85 d6  	ld	a0, -664(a0)
80204c14: 81 45        	li	a1, 0
80204c16: 97 50 00 00  	auipc	ra, 5
80204c1a: e7 80 c0 a7  	jalr	-1412(ra)
80204c1e: 13 06 10 08  	li	a2, 129
80204c22: 09 65        	lui	a0, 2
80204c24: 33 05 a4 40  	sub	a0, s0, a0
80204c28: 03 35 05 d6  	ld	a0, -672(a0)
80204c2c: 81 45        	li	a1, 0
80204c2e: 97 50 00 00  	auipc	ra, 5
80204c32: e7 80 40 a6  	jalr	-1436(ra)
80204c36: 13 06 10 08  	li	a2, 129
80204c3a: 09 65        	lui	a0, 2
80204c3c: 33 05 a4 40  	sub	a0, s0, a0
80204c40: 03 35 85 d5  	ld	a0, -680(a0)
80204c44: 81 45        	li	a1, 0
80204c46: 97 50 00 00  	auipc	ra, 5
80204c4a: e7 80 c0 a4  	jalr	-1460(ra)
80204c4e: 13 06 10 08  	li	a2, 129
80204c52: 09 65        	lui	a0, 2
80204c54: 33 05 a4 40  	sub	a0, s0, a0
80204c58: 03 35 05 d5  	ld	a0, -688(a0)
80204c5c: 81 45        	li	a1, 0
80204c5e: 97 50 00 00  	auipc	ra, 5
80204c62: e7 80 40 a3  	jalr	-1484(ra)
80204c66: 13 06 10 08  	li	a2, 129
80204c6a: 09 65        	lui	a0, 2
80204c6c: 33 05 a4 40  	sub	a0, s0, a0
80204c70: 03 35 85 d4  	ld	a0, -696(a0)
80204c74: 81 45        	li	a1, 0
80204c76: 97 50 00 00  	auipc	ra, 5
80204c7a: e7 80 c0 a1  	jalr	-1508(ra)
80204c7e: 13 06 10 08  	li	a2, 129
80204c82: 09 65        	lui	a0, 2
80204c84: 33 05 a4 40  	sub	a0, s0, a0
80204c88: 03 35 05 d4  	ld	a0, -704(a0)
80204c8c: 81 45        	li	a1, 0
80204c8e: 97 50 00 00  	auipc	ra, 5
80204c92: e7 80 40 a0  	jalr	-1532(ra)
80204c96: 13 06 10 08  	li	a2, 129
80204c9a: 09 65        	lui	a0, 2
80204c9c: 33 05 a4 40  	sub	a0, s0, a0
80204ca0: 03 35 85 d3  	ld	a0, -712(a0)
80204ca4: 81 45        	li	a1, 0
80204ca6: 97 50 00 00  	auipc	ra, 5
80204caa: e7 80 c0 9e  	jalr	-1556(ra)
80204cae: 13 06 10 08  	li	a2, 129
80204cb2: 09 65        	lui	a0, 2
80204cb4: 33 05 a4 40  	sub	a0, s0, a0
80204cb8: 03 35 05 d3  	ld	a0, -720(a0)
80204cbc: 81 45        	li	a1, 0
80204cbe: 97 50 00 00  	auipc	ra, 5
80204cc2: e7 80 40 9d  	jalr	-1580(ra)
80204cc6: 13 06 10 08  	li	a2, 129
80204cca: 09 65        	lui	a0, 2
80204ccc: 33 05 a4 40  	sub	a0, s0, a0
80204cd0: 03 35 85 d2  	ld	a0, -728(a0)
80204cd4: 81 45        	li	a1, 0
80204cd6: 97 50 00 00  	auipc	ra, 5
80204cda: e7 80 c0 9b  	jalr	-1604(ra)
80204cde: 13 06 10 08  	li	a2, 129
80204ce2: 09 65        	lui	a0, 2
80204ce4: 33 05 a4 40  	sub	a0, s0, a0
80204ce8: 03 35 05 d2  	ld	a0, -736(a0)
80204cec: 81 45        	li	a1, 0
80204cee: 97 50 00 00  	auipc	ra, 5
80204cf2: e7 80 40 9a  	jalr	-1628(ra)
80204cf6: 13 06 10 08  	li	a2, 129
80204cfa: 09 65        	lui	a0, 2
80204cfc: 33 05 a4 40  	sub	a0, s0, a0
80204d00: 03 35 85 d1  	ld	a0, -744(a0)
80204d04: 81 45        	li	a1, 0
80204d06: 97 50 00 00  	auipc	ra, 5
80204d0a: e7 80 c0 98  	jalr	-1652(ra)
80204d0e: 13 06 10 08  	li	a2, 129
80204d12: 09 65        	lui	a0, 2
80204d14: 33 05 a4 40  	sub	a0, s0, a0
80204d18: 03 35 05 d1  	ld	a0, -752(a0)
80204d1c: 81 45        	li	a1, 0
80204d1e: 97 50 00 00  	auipc	ra, 5
80204d22: e7 80 40 97  	jalr	-1676(ra)
80204d26: 13 06 10 08  	li	a2, 129
80204d2a: 09 65        	lui	a0, 2
80204d2c: 33 05 a4 40  	sub	a0, s0, a0
80204d30: 03 35 85 d0  	ld	a0, -760(a0)
80204d34: 81 45        	li	a1, 0
80204d36: 97 50 00 00  	auipc	ra, 5
80204d3a: e7 80 c0 95  	jalr	-1700(ra)
80204d3e: 13 06 10 08  	li	a2, 129
80204d42: 09 65        	lui	a0, 2
80204d44: 33 05 a4 40  	sub	a0, s0, a0
80204d48: 03 35 05 d0  	ld	a0, -768(a0)
80204d4c: 81 45        	li	a1, 0
80204d4e: 97 50 00 00  	auipc	ra, 5
80204d52: e7 80 40 94  	jalr	-1724(ra)
80204d56: 13 06 10 08  	li	a2, 129
80204d5a: 09 65        	lui	a0, 2
80204d5c: 33 05 a4 40  	sub	a0, s0, a0
80204d60: 03 35 85 cf  	ld	a0, -776(a0)
80204d64: 81 45        	li	a1, 0
80204d66: 97 50 00 00  	auipc	ra, 5
80204d6a: e7 80 c0 92  	jalr	-1748(ra)
80204d6e: 13 06 10 08  	li	a2, 129
80204d72: 09 65        	lui	a0, 2
80204d74: 33 05 a4 40  	sub	a0, s0, a0
80204d78: 03 35 05 cf  	ld	a0, -784(a0)
80204d7c: 81 45        	li	a1, 0
80204d7e: 97 50 00 00  	auipc	ra, 5
80204d82: e7 80 40 91  	jalr	-1772(ra)
80204d86: 13 06 10 08  	li	a2, 129
80204d8a: 09 65        	lui	a0, 2
80204d8c: 33 05 a4 40  	sub	a0, s0, a0
80204d90: 03 35 85 ce  	ld	a0, -792(a0)
80204d94: 81 45        	li	a1, 0
80204d96: 97 50 00 00  	auipc	ra, 5
80204d9a: e7 80 c0 8f  	jalr	-1796(ra)
80204d9e: 13 06 10 08  	li	a2, 129
80204da2: 09 65        	lui	a0, 2
80204da4: 33 05 a4 40  	sub	a0, s0, a0
80204da8: 03 35 05 ce  	ld	a0, -800(a0)
80204dac: 81 45        	li	a1, 0
80204dae: 97 50 00 00  	auipc	ra, 5
80204db2: e7 80 40 8e  	jalr	-1820(ra)
80204db6: 13 06 10 08  	li	a2, 129
80204dba: 09 65        	lui	a0, 2
80204dbc: 33 05 a4 40  	sub	a0, s0, a0
80204dc0: 03 35 85 cd  	ld	a0, -808(a0)
80204dc4: 81 45        	li	a1, 0
80204dc6: 97 50 00 00  	auipc	ra, 5
80204dca: e7 80 c0 8c  	jalr	-1844(ra)
80204dce: 13 06 10 08  	li	a2, 129
80204dd2: 09 65        	lui	a0, 2
80204dd4: 33 05 a4 40  	sub	a0, s0, a0
80204dd8: 03 35 05 cd  	ld	a0, -816(a0)
80204ddc: 81 45        	li	a1, 0
80204dde: 97 50 00 00  	auipc	ra, 5
80204de2: e7 80 40 8b  	jalr	-1868(ra)
80204de6: 13 06 10 08  	li	a2, 129
80204dea: 09 65        	lui	a0, 2
80204dec: 33 05 a4 40  	sub	a0, s0, a0
80204df0: 03 35 85 cc  	ld	a0, -824(a0)
80204df4: 81 45        	li	a1, 0
80204df6: 97 50 00 00  	auipc	ra, 5
80204dfa: e7 80 c0 89  	jalr	-1892(ra)
80204dfe: 13 06 10 08  	li	a2, 129
80204e02: 09 65        	lui	a0, 2
80204e04: 33 05 a4 40  	sub	a0, s0, a0
80204e08: 03 35 05 cc  	ld	a0, -832(a0)
80204e0c: 81 45        	li	a1, 0
80204e0e: 97 50 00 00  	auipc	ra, 5
80204e12: e7 80 40 88  	jalr	-1916(ra)
80204e16: 13 06 10 08  	li	a2, 129
80204e1a: 09 65        	lui	a0, 2
80204e1c: 33 05 a4 40  	sub	a0, s0, a0
80204e20: 03 35 85 cb  	ld	a0, -840(a0)
80204e24: 81 45        	li	a1, 0
80204e26: 97 50 00 00  	auipc	ra, 5
80204e2a: e7 80 c0 86  	jalr	-1940(ra)
80204e2e: 13 06 10 08  	li	a2, 129
80204e32: 09 65        	lui	a0, 2
80204e34: 33 05 a4 40  	sub	a0, s0, a0
80204e38: 03 35 05 cb  	ld	a0, -848(a0)
80204e3c: 81 45        	li	a1, 0
80204e3e: 97 50 00 00  	auipc	ra, 5
80204e42: e7 80 40 85  	jalr	-1964(ra)
80204e46: 13 06 10 08  	li	a2, 129
80204e4a: 09 65        	lui	a0, 2
80204e4c: 33 05 a4 40  	sub	a0, s0, a0
80204e50: 03 35 85 ca  	ld	a0, -856(a0)
80204e54: 81 45        	li	a1, 0
80204e56: 97 50 00 00  	auipc	ra, 5
80204e5a: e7 80 c0 83  	jalr	-1988(ra)
80204e5e: 13 06 10 08  	li	a2, 129
80204e62: 09 65        	lui	a0, 2
80204e64: 33 05 a4 40  	sub	a0, s0, a0
80204e68: 03 35 05 ca  	ld	a0, -864(a0)
80204e6c: 81 45        	li	a1, 0
80204e6e: 97 50 00 00  	auipc	ra, 5
80204e72: e7 80 40 82  	jalr	-2012(ra)
80204e76: 13 06 10 08  	li	a2, 129
80204e7a: 09 65        	lui	a0, 2
80204e7c: 33 05 a4 40  	sub	a0, s0, a0
80204e80: 03 35 85 c9  	ld	a0, -872(a0)
80204e84: 81 45        	li	a1, 0
80204e86: 97 50 00 00  	auipc	ra, 5
80204e8a: e7 80 c0 80  	jalr	-2036(ra)
80204e8e: 13 06 10 08  	li	a2, 129
80204e92: 09 65        	lui	a0, 2
80204e94: 33 05 a4 40  	sub	a0, s0, a0
80204e98: 03 35 05 c9  	ld	a0, -880(a0)
80204e9c: 81 45        	li	a1, 0
80204e9e: 97 40 00 00  	auipc	ra, 4
80204ea2: e7 80 40 7f  	jalr	2036(ra)
80204ea6: 13 06 10 08  	li	a2, 129
80204eaa: 09 65        	lui	a0, 2
80204eac: 33 05 a4 40  	sub	a0, s0, a0
80204eb0: 03 35 85 c8  	ld	a0, -888(a0)
80204eb4: 81 45        	li	a1, 0
80204eb6: 97 40 00 00  	auipc	ra, 4
80204eba: e7 80 c0 7d  	jalr	2012(ra)
80204ebe: 13 06 10 08  	li	a2, 129
80204ec2: 09 65        	lui	a0, 2
80204ec4: 33 05 a4 40  	sub	a0, s0, a0
80204ec8: 03 35 05 c8  	ld	a0, -896(a0)
80204ecc: 81 45        	li	a1, 0
80204ece: 97 40 00 00  	auipc	ra, 4
80204ed2: e7 80 40 7c  	jalr	1988(ra)
80204ed6: 13 06 10 08  	li	a2, 129
80204eda: 09 65        	lui	a0, 2
80204edc: 33 05 a4 40  	sub	a0, s0, a0
80204ee0: 03 35 85 c7  	ld	a0, -904(a0)
80204ee4: 81 45        	li	a1, 0
80204ee6: 97 40 00 00  	auipc	ra, 4
80204eea: e7 80 c0 7a  	jalr	1964(ra)
80204eee: 13 06 10 08  	li	a2, 129
80204ef2: 09 65        	lui	a0, 2
80204ef4: 33 05 a4 40  	sub	a0, s0, a0
80204ef8: 03 35 05 c7  	ld	a0, -912(a0)
80204efc: 81 45        	li	a1, 0
80204efe: 97 40 00 00  	auipc	ra, 4
80204f02: e7 80 40 79  	jalr	1940(ra)
80204f06: 13 06 10 08  	li	a2, 129
80204f0a: 09 65        	lui	a0, 2
80204f0c: 33 05 a4 40  	sub	a0, s0, a0
80204f10: 03 35 85 c6  	ld	a0, -920(a0)
80204f14: 81 45        	li	a1, 0
80204f16: 97 40 00 00  	auipc	ra, 4
80204f1a: e7 80 c0 77  	jalr	1916(ra)
80204f1e: 13 06 10 08  	li	a2, 129
80204f22: 09 65        	lui	a0, 2
80204f24: 33 05 a4 40  	sub	a0, s0, a0
80204f28: 03 35 05 c6  	ld	a0, -928(a0)
80204f2c: 81 45        	li	a1, 0
80204f2e: 97 40 00 00  	auipc	ra, 4
80204f32: e7 80 40 76  	jalr	1892(ra)
80204f36: 13 06 10 08  	li	a2, 129
80204f3a: 09 65        	lui	a0, 2
80204f3c: 33 05 a4 40  	sub	a0, s0, a0
80204f40: 03 35 85 c5  	ld	a0, -936(a0)
80204f44: 81 45        	li	a1, 0
80204f46: 97 40 00 00  	auipc	ra, 4
80204f4a: e7 80 c0 74  	jalr	1868(ra)
80204f4e: 13 06 10 08  	li	a2, 129
80204f52: 09 65        	lui	a0, 2
80204f54: 33 05 a4 40  	sub	a0, s0, a0
80204f58: 03 35 05 c5  	ld	a0, -944(a0)
80204f5c: 81 45        	li	a1, 0
80204f5e: 97 40 00 00  	auipc	ra, 4
80204f62: e7 80 40 73  	jalr	1844(ra)
80204f66: 13 06 10 08  	li	a2, 129
80204f6a: 09 65        	lui	a0, 2
80204f6c: 33 05 a4 40  	sub	a0, s0, a0
80204f70: 03 35 85 c4  	ld	a0, -952(a0)
80204f74: 81 45        	li	a1, 0
80204f76: 97 40 00 00  	auipc	ra, 4
80204f7a: e7 80 c0 71  	jalr	1820(ra)
80204f7e: 13 06 10 08  	li	a2, 129
80204f82: 09 65        	lui	a0, 2
80204f84: 33 05 a4 40  	sub	a0, s0, a0
80204f88: 03 35 05 c4  	ld	a0, -960(a0)
80204f8c: 81 45        	li	a1, 0
80204f8e: 97 40 00 00  	auipc	ra, 4
80204f92: e7 80 40 70  	jalr	1796(ra)
80204f96: 13 06 10 08  	li	a2, 129
80204f9a: 09 65        	lui	a0, 2
80204f9c: 33 05 a4 40  	sub	a0, s0, a0
80204fa0: 03 35 85 c3  	ld	a0, -968(a0)
80204fa4: 81 45        	li	a1, 0
80204fa6: 97 40 00 00  	auipc	ra, 4
80204faa: e7 80 c0 6e  	jalr	1772(ra)
80204fae: 13 06 10 08  	li	a2, 129
80204fb2: 09 65        	lui	a0, 2
80204fb4: 33 05 a4 40  	sub	a0, s0, a0
80204fb8: 03 35 05 c3  	ld	a0, -976(a0)
80204fbc: 81 45        	li	a1, 0
80204fbe: 97 40 00 00  	auipc	ra, 4
80204fc2: e7 80 40 6d  	jalr	1748(ra)
80204fc6: 13 06 10 08  	li	a2, 129
80204fca: 09 65        	lui	a0, 2
80204fcc: 33 05 a4 40  	sub	a0, s0, a0
80204fd0: 03 35 85 c2  	ld	a0, -984(a0)
80204fd4: 81 45        	li	a1, 0
80204fd6: 97 40 00 00  	auipc	ra, 4
80204fda: e7 80 c0 6b  	jalr	1724(ra)
80204fde: 13 06 10 08  	li	a2, 129
80204fe2: 09 65        	lui	a0, 2
80204fe4: 33 05 a4 40  	sub	a0, s0, a0
80204fe8: 03 35 05 c2  	ld	a0, -992(a0)
80204fec: 81 45        	li	a1, 0
80204fee: 97 40 00 00  	auipc	ra, 4
80204ff2: e7 80 40 6a  	jalr	1700(ra)
80204ff6: 13 06 10 08  	li	a2, 129
80204ffa: 09 65        	lui	a0, 2
80204ffc: 33 05 a4 40  	sub	a0, s0, a0
80205000: 03 35 85 c1  	ld	a0, -1000(a0)
80205004: 81 45        	li	a1, 0
80205006: 97 40 00 00  	auipc	ra, 4
8020500a: e7 80 c0 68  	jalr	1676(ra)
8020500e: 13 06 10 08  	li	a2, 129
80205012: 09 65        	lui	a0, 2
80205014: 33 05 a4 40  	sub	a0, s0, a0
80205018: 03 35 05 c1  	ld	a0, -1008(a0)
8020501c: 81 45        	li	a1, 0
8020501e: 97 40 00 00  	auipc	ra, 4
80205022: e7 80 40 67  	jalr	1652(ra)
80205026: 13 06 10 08  	li	a2, 129
8020502a: 09 65        	lui	a0, 2
8020502c: 33 05 a4 40  	sub	a0, s0, a0
80205030: 03 35 85 c0  	ld	a0, -1016(a0)
80205034: 81 45        	li	a1, 0
80205036: 97 40 00 00  	auipc	ra, 4
8020503a: e7 80 c0 65  	jalr	1628(ra)
8020503e: 13 06 10 08  	li	a2, 129
80205042: 09 65        	lui	a0, 2
80205044: 33 05 a4 40  	sub	a0, s0, a0
80205048: 03 35 05 c0  	ld	a0, -1024(a0)
8020504c: 81 45        	li	a1, 0
8020504e: 97 40 00 00  	auipc	ra, 4
80205052: e7 80 40 64  	jalr	1604(ra)
80205056: 13 06 10 08  	li	a2, 129
8020505a: 09 65        	lui	a0, 2
8020505c: 33 05 a4 40  	sub	a0, s0, a0
80205060: 03 35 85 bf  	ld	a0, -1032(a0)
80205064: 81 45        	li	a1, 0
80205066: 97 40 00 00  	auipc	ra, 4
8020506a: e7 80 c0 62  	jalr	1580(ra)
8020506e: 13 06 10 08  	li	a2, 129
80205072: 09 65        	lui	a0, 2
80205074: 33 05 a4 40  	sub	a0, s0, a0
80205078: 03 35 05 bf  	ld	a0, -1040(a0)
8020507c: 81 45        	li	a1, 0
8020507e: 97 40 00 00  	auipc	ra, 4
80205082: e7 80 40 61  	jalr	1556(ra)
80205086: 13 85 04 01  	addi	a0, s1, 16
8020508a: 45 46        	li	a2, 17
8020508c: 26 06        	slli	a2, a2, 9
8020508e: 89 65        	lui	a1, 2
80205090: 9b 85 85 27  	addiw	a1, a1, 632
80205094: b3 05 b4 40  	sub	a1, s0, a1
80205098: 97 40 00 00  	auipc	ra, 4
8020509c: e7 80 20 60  	jalr	1538(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802050a0: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
802050a4: 09 65        	lui	a0, 2
802050a6: 1b 05 85 28  	addiw	a0, a0, 648
802050aa: 33 05 a4 40  	sub	a0, s0, a0
802050ae: 23 04 05 00  	sb	zero, 8(a0)
802050b2: 0f 00 10 03  	fence	rw, w
802050b6: 23 b0 a4 01  	sd	s10, 0(s1)
802050ba: 09 65        	lui	a0, 2
802050bc: 1b 05 85 28  	addiw	a0, a0, 648
802050c0: 33 05 a4 40  	sub	a0, s0, a0
802050c4: 97 30 00 00  	auipc	ra, 3
802050c8: e7 80 e0 cf  	jalr	-770(ra)
802050cc: 21 a8        	j	0x802050e4 <.Lpcrel_hi70+0x1e5e>
802050ce: 0f 00 00 01  	fence	w, 0
802050d2: 0f 00 30 03  	fence	rw, rw
802050d6: 88 60        	ld	a0, 0(s1)
802050d8: 0f 00 30 02  	fence	r, rw
;             match status {
802050dc: e3 09 b5 ff  	beq	a0, s11, 0x802050ce <.Lpcrel_hi70+0x1e48>
802050e0: 63 1f a5 77  	bne	a0, s10, 0x8020585e <.Lpcrel_hi85+0xa>
802050e4: 63 75 7b 71  	bgeu	s6, s7, 0x802057ee <.Lpcrel_hi93>
; 	&mut CPUS.get_mut()[id]
802050e8: 33 05 8b 03  	mul	a0, s6, s8
802050ec: 26 95        	add	a0, a0, s1
802050ee: 41 05        	addi	a0, a0, 16
;         if !self.holding() {
802050f0: e3 9d ac 00  	bne	s9, a0, 0x8020590a <.Lpcrel_hi94>
;         self.cpu = null_mut();
802050f4: 23 30 09 00  	sd	zero, 0(s2)
802050f8: 0f 00 30 03  	fence	rw, rw
802050fc: 0f 00 10 03  	fence	rw, w
80205100: 23 80 0a 00  	sb	zero, 0(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205104: 12 8b        	mv	s6, tp
80205106: 0f 00 30 03  	fence	rw, rw
8020510a: 88 60        	ld	a0, 0(s1)
8020510c: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80205110: 63 16 05 66  	bnez	a0, 0x8020577c <.Lpcrel_hi70+0x24f6>
80205114: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80205118: 63 12 05 66  	bnez	a0, 0x8020577c <.Lpcrel_hi70+0x24f6>
8020511c: af b5 b4 1f  	sc.d.aqrl	a1, s11, (s1)
80205120: f5 f9        	bnez	a1, 0x80205114 <.Lpcrel_hi70+0x1e8e>
80205122: 09 65        	lui	a0, 2
80205124: 1b 05 85 28  	addiw	a0, a0, 648
80205128: 33 09 a4 40  	sub	s2, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020512c: 23 30 99 00  	sd	s1, 0(s2)
;     static ref CPUS: UPCell<[Cpu; NPROC]> = UPCell::new(array![_ => Cpu::new(); NPROC]);
80205130: 09 65        	lui	a0, 2
80205132: 1b 05 85 27  	addiw	a0, a0, 632
80205136: 33 05 a4 40  	sub	a0, s0, a0
8020513a: 13 06 10 08  	li	a2, 129
8020513e: 81 45        	li	a1, 0
80205140: 97 40 00 00  	auipc	ra, 4
80205144: e7 80 20 55  	jalr	1362(ra)
80205148: 13 06 10 08  	li	a2, 129
8020514c: 09 65        	lui	a0, 2
8020514e: 1b 05 05 1f  	addiw	a0, a0, 496
80205152: 33 05 a4 40  	sub	a0, s0, a0
80205156: 81 45        	li	a1, 0
80205158: 97 40 00 00  	auipc	ra, 4
8020515c: e7 80 a0 53  	jalr	1338(ra)
80205160: 13 06 10 08  	li	a2, 129
80205164: 09 65        	lui	a0, 2
80205166: 1b 05 85 16  	addiw	a0, a0, 360
8020516a: 33 05 a4 40  	sub	a0, s0, a0
8020516e: 81 45        	li	a1, 0
80205170: 97 40 00 00  	auipc	ra, 4
80205174: e7 80 20 52  	jalr	1314(ra)
80205178: 13 06 10 08  	li	a2, 129
8020517c: 09 65        	lui	a0, 2
8020517e: 1b 05 05 0e  	addiw	a0, a0, 224
80205182: 33 05 a4 40  	sub	a0, s0, a0
80205186: 81 45        	li	a1, 0
80205188: 97 40 00 00  	auipc	ra, 4
8020518c: e7 80 a0 50  	jalr	1290(ra)
80205190: 13 06 10 08  	li	a2, 129
80205194: 09 65        	lui	a0, 2
80205196: 1b 05 85 05  	addiw	a0, a0, 88
8020519a: 33 05 a4 40  	sub	a0, s0, a0
8020519e: 81 45        	li	a1, 0
802051a0: 97 40 00 00  	auipc	ra, 4
802051a4: e7 80 20 4f  	jalr	1266(ra)
802051a8: 13 06 10 08  	li	a2, 129
802051ac: 09 65        	lui	a0, 2
802051ae: 1b 05 05 fd  	addiw	a0, a0, -48
802051b2: 33 05 a4 40  	sub	a0, s0, a0
802051b6: 81 45        	li	a1, 0
802051b8: 97 40 00 00  	auipc	ra, 4
802051bc: e7 80 a0 4d  	jalr	1242(ra)
802051c0: 13 06 10 08  	li	a2, 129
802051c4: 09 65        	lui	a0, 2
802051c6: 1b 05 85 f4  	addiw	a0, a0, -184
802051ca: 33 05 a4 40  	sub	a0, s0, a0
802051ce: 81 45        	li	a1, 0
802051d0: 97 40 00 00  	auipc	ra, 4
802051d4: e7 80 20 4c  	jalr	1218(ra)
802051d8: 13 06 10 08  	li	a2, 129
802051dc: 09 65        	lui	a0, 2
802051de: 1b 05 05 ec  	addiw	a0, a0, -320
802051e2: 33 05 a4 40  	sub	a0, s0, a0
802051e6: 81 45        	li	a1, 0
802051e8: 97 40 00 00  	auipc	ra, 4
802051ec: e7 80 a0 4a  	jalr	1194(ra)
802051f0: 13 06 10 08  	li	a2, 129
802051f4: 09 65        	lui	a0, 2
802051f6: 1b 05 85 e3  	addiw	a0, a0, -456
802051fa: 33 05 a4 40  	sub	a0, s0, a0
802051fe: 81 45        	li	a1, 0
80205200: 97 40 00 00  	auipc	ra, 4
80205204: e7 80 20 49  	jalr	1170(ra)
80205208: 13 06 10 08  	li	a2, 129
8020520c: 09 65        	lui	a0, 2
8020520e: 1b 05 05 db  	addiw	a0, a0, -592
80205212: 33 05 a4 40  	sub	a0, s0, a0
80205216: 81 45        	li	a1, 0
80205218: 97 40 00 00  	auipc	ra, 4
8020521c: e7 80 a0 47  	jalr	1146(ra)
80205220: 13 06 10 08  	li	a2, 129
80205224: 09 65        	lui	a0, 2
80205226: 1b 05 85 d2  	addiw	a0, a0, -728
8020522a: 33 05 a4 40  	sub	a0, s0, a0
8020522e: 81 45        	li	a1, 0
80205230: 97 40 00 00  	auipc	ra, 4
80205234: e7 80 20 46  	jalr	1122(ra)
80205238: 13 06 10 08  	li	a2, 129
8020523c: 09 65        	lui	a0, 2
8020523e: 1b 05 05 ca  	addiw	a0, a0, -864
80205242: 33 05 a4 40  	sub	a0, s0, a0
80205246: 81 45        	li	a1, 0
80205248: 97 40 00 00  	auipc	ra, 4
8020524c: e7 80 a0 44  	jalr	1098(ra)
80205250: 13 06 10 08  	li	a2, 129
80205254: 09 65        	lui	a0, 2
80205256: 1b 05 85 c1  	addiw	a0, a0, -1000
8020525a: 33 05 a4 40  	sub	a0, s0, a0
8020525e: 81 45        	li	a1, 0
80205260: 97 40 00 00  	auipc	ra, 4
80205264: e7 80 20 43  	jalr	1074(ra)
80205268: 13 06 10 08  	li	a2, 129
8020526c: 09 65        	lui	a0, 2
8020526e: 1b 05 05 b9  	addiw	a0, a0, -1136
80205272: 33 05 a4 40  	sub	a0, s0, a0
80205276: 81 45        	li	a1, 0
80205278: 97 40 00 00  	auipc	ra, 4
8020527c: e7 80 a0 41  	jalr	1050(ra)
80205280: 13 06 10 08  	li	a2, 129
80205284: 09 65        	lui	a0, 2
80205286: 1b 05 85 b0  	addiw	a0, a0, -1272
8020528a: 33 05 a4 40  	sub	a0, s0, a0
8020528e: 81 45        	li	a1, 0
80205290: 97 40 00 00  	auipc	ra, 4
80205294: e7 80 20 40  	jalr	1026(ra)
80205298: 13 06 10 08  	li	a2, 129
8020529c: 09 65        	lui	a0, 2
8020529e: 1b 05 05 a8  	addiw	a0, a0, -1408
802052a2: 33 05 a4 40  	sub	a0, s0, a0
802052a6: 81 45        	li	a1, 0
802052a8: 97 40 00 00  	auipc	ra, 4
802052ac: e7 80 a0 3e  	jalr	1002(ra)
802052b0: 13 06 10 08  	li	a2, 129
802052b4: 09 65        	lui	a0, 2
802052b6: 33 05 a4 40  	sub	a0, s0, a0
802052ba: 03 35 85 d6  	ld	a0, -664(a0)
802052be: 81 45        	li	a1, 0
802052c0: 97 40 00 00  	auipc	ra, 4
802052c4: e7 80 20 3d  	jalr	978(ra)
802052c8: 13 06 10 08  	li	a2, 129
802052cc: 09 65        	lui	a0, 2
802052ce: 33 05 a4 40  	sub	a0, s0, a0
802052d2: 03 35 05 d6  	ld	a0, -672(a0)
802052d6: 81 45        	li	a1, 0
802052d8: 97 40 00 00  	auipc	ra, 4
802052dc: e7 80 a0 3b  	jalr	954(ra)
802052e0: 13 06 10 08  	li	a2, 129
802052e4: 09 65        	lui	a0, 2
802052e6: 33 05 a4 40  	sub	a0, s0, a0
802052ea: 03 35 85 d5  	ld	a0, -680(a0)
802052ee: 81 45        	li	a1, 0
802052f0: 97 40 00 00  	auipc	ra, 4
802052f4: e7 80 20 3a  	jalr	930(ra)
802052f8: 13 06 10 08  	li	a2, 129
802052fc: 09 65        	lui	a0, 2
802052fe: 33 05 a4 40  	sub	a0, s0, a0
80205302: 03 35 05 d5  	ld	a0, -688(a0)
80205306: 81 45        	li	a1, 0
80205308: 97 40 00 00  	auipc	ra, 4
8020530c: e7 80 a0 38  	jalr	906(ra)
80205310: 13 06 10 08  	li	a2, 129
80205314: 09 65        	lui	a0, 2
80205316: 33 05 a4 40  	sub	a0, s0, a0
8020531a: 03 35 85 d4  	ld	a0, -696(a0)
8020531e: 81 45        	li	a1, 0
80205320: 97 40 00 00  	auipc	ra, 4
80205324: e7 80 20 37  	jalr	882(ra)
80205328: 13 06 10 08  	li	a2, 129
8020532c: 09 65        	lui	a0, 2
8020532e: 33 05 a4 40  	sub	a0, s0, a0
80205332: 03 35 05 d4  	ld	a0, -704(a0)
80205336: 81 45        	li	a1, 0
80205338: 97 40 00 00  	auipc	ra, 4
8020533c: e7 80 a0 35  	jalr	858(ra)
80205340: 13 06 10 08  	li	a2, 129
80205344: 09 65        	lui	a0, 2
80205346: 33 05 a4 40  	sub	a0, s0, a0
8020534a: 03 35 85 d3  	ld	a0, -712(a0)
8020534e: 81 45        	li	a1, 0
80205350: 97 40 00 00  	auipc	ra, 4
80205354: e7 80 20 34  	jalr	834(ra)
80205358: 13 06 10 08  	li	a2, 129
8020535c: 09 65        	lui	a0, 2
8020535e: 33 05 a4 40  	sub	a0, s0, a0
80205362: 03 35 05 d3  	ld	a0, -720(a0)
80205366: 81 45        	li	a1, 0
80205368: 97 40 00 00  	auipc	ra, 4
8020536c: e7 80 a0 32  	jalr	810(ra)
80205370: 13 06 10 08  	li	a2, 129
80205374: 09 65        	lui	a0, 2
80205376: 33 05 a4 40  	sub	a0, s0, a0
8020537a: 03 35 85 d2  	ld	a0, -728(a0)
8020537e: 81 45        	li	a1, 0
80205380: 97 40 00 00  	auipc	ra, 4
80205384: e7 80 20 31  	jalr	786(ra)
80205388: 13 06 10 08  	li	a2, 129
8020538c: 09 65        	lui	a0, 2
8020538e: 33 05 a4 40  	sub	a0, s0, a0
80205392: 03 35 05 d2  	ld	a0, -736(a0)
80205396: 81 45        	li	a1, 0
80205398: 97 40 00 00  	auipc	ra, 4
8020539c: e7 80 a0 2f  	jalr	762(ra)
802053a0: 13 06 10 08  	li	a2, 129
802053a4: 09 65        	lui	a0, 2
802053a6: 33 05 a4 40  	sub	a0, s0, a0
802053aa: 03 35 85 d1  	ld	a0, -744(a0)
802053ae: 81 45        	li	a1, 0
802053b0: 97 40 00 00  	auipc	ra, 4
802053b4: e7 80 20 2e  	jalr	738(ra)
802053b8: 13 06 10 08  	li	a2, 129
802053bc: 09 65        	lui	a0, 2
802053be: 33 05 a4 40  	sub	a0, s0, a0
802053c2: 03 35 05 d1  	ld	a0, -752(a0)
802053c6: 81 45        	li	a1, 0
802053c8: 97 40 00 00  	auipc	ra, 4
802053cc: e7 80 a0 2c  	jalr	714(ra)
802053d0: 13 06 10 08  	li	a2, 129
802053d4: 09 65        	lui	a0, 2
802053d6: 33 05 a4 40  	sub	a0, s0, a0
802053da: 03 35 85 d0  	ld	a0, -760(a0)
802053de: 81 45        	li	a1, 0
802053e0: 97 40 00 00  	auipc	ra, 4
802053e4: e7 80 20 2b  	jalr	690(ra)
802053e8: 13 06 10 08  	li	a2, 129
802053ec: 09 65        	lui	a0, 2
802053ee: 33 05 a4 40  	sub	a0, s0, a0
802053f2: 03 35 05 d0  	ld	a0, -768(a0)
802053f6: 81 45        	li	a1, 0
802053f8: 97 40 00 00  	auipc	ra, 4
802053fc: e7 80 a0 29  	jalr	666(ra)
80205400: 13 06 10 08  	li	a2, 129
80205404: 09 65        	lui	a0, 2
80205406: 33 05 a4 40  	sub	a0, s0, a0
8020540a: 03 35 85 cf  	ld	a0, -776(a0)
8020540e: 81 45        	li	a1, 0
80205410: 97 40 00 00  	auipc	ra, 4
80205414: e7 80 20 28  	jalr	642(ra)
80205418: 13 06 10 08  	li	a2, 129
8020541c: 09 65        	lui	a0, 2
8020541e: 33 05 a4 40  	sub	a0, s0, a0
80205422: 03 35 05 cf  	ld	a0, -784(a0)
80205426: 81 45        	li	a1, 0
80205428: 97 40 00 00  	auipc	ra, 4
8020542c: e7 80 a0 26  	jalr	618(ra)
80205430: 13 06 10 08  	li	a2, 129
80205434: 09 65        	lui	a0, 2
80205436: 33 05 a4 40  	sub	a0, s0, a0
8020543a: 03 35 85 ce  	ld	a0, -792(a0)
8020543e: 81 45        	li	a1, 0
80205440: 97 40 00 00  	auipc	ra, 4
80205444: e7 80 20 25  	jalr	594(ra)
80205448: 13 06 10 08  	li	a2, 129
8020544c: 09 65        	lui	a0, 2
8020544e: 33 05 a4 40  	sub	a0, s0, a0
80205452: 03 35 05 ce  	ld	a0, -800(a0)
80205456: 81 45        	li	a1, 0
80205458: 97 40 00 00  	auipc	ra, 4
8020545c: e7 80 a0 23  	jalr	570(ra)
80205460: 13 06 10 08  	li	a2, 129
80205464: 09 65        	lui	a0, 2
80205466: 33 05 a4 40  	sub	a0, s0, a0
8020546a: 03 35 85 cd  	ld	a0, -808(a0)
8020546e: 81 45        	li	a1, 0
80205470: 97 40 00 00  	auipc	ra, 4
80205474: e7 80 20 22  	jalr	546(ra)
80205478: 13 06 10 08  	li	a2, 129
8020547c: 09 65        	lui	a0, 2
8020547e: 33 05 a4 40  	sub	a0, s0, a0
80205482: 03 35 05 cd  	ld	a0, -816(a0)
80205486: 81 45        	li	a1, 0
80205488: 97 40 00 00  	auipc	ra, 4
8020548c: e7 80 a0 20  	jalr	522(ra)
80205490: 13 06 10 08  	li	a2, 129
80205494: 09 65        	lui	a0, 2
80205496: 33 05 a4 40  	sub	a0, s0, a0
8020549a: 03 35 85 cc  	ld	a0, -824(a0)
8020549e: 81 45        	li	a1, 0
802054a0: 97 40 00 00  	auipc	ra, 4
802054a4: e7 80 20 1f  	jalr	498(ra)
802054a8: 13 06 10 08  	li	a2, 129
802054ac: 09 65        	lui	a0, 2
802054ae: 33 05 a4 40  	sub	a0, s0, a0
802054b2: 03 35 05 cc  	ld	a0, -832(a0)
802054b6: 81 45        	li	a1, 0
802054b8: 97 40 00 00  	auipc	ra, 4
802054bc: e7 80 a0 1d  	jalr	474(ra)
802054c0: 13 06 10 08  	li	a2, 129
802054c4: 09 65        	lui	a0, 2
802054c6: 33 05 a4 40  	sub	a0, s0, a0
802054ca: 03 35 85 cb  	ld	a0, -840(a0)
802054ce: 81 45        	li	a1, 0
802054d0: 97 40 00 00  	auipc	ra, 4
802054d4: e7 80 20 1c  	jalr	450(ra)
802054d8: 13 06 10 08  	li	a2, 129
802054dc: 09 65        	lui	a0, 2
802054de: 33 05 a4 40  	sub	a0, s0, a0
802054e2: 03 35 05 cb  	ld	a0, -848(a0)
802054e6: 81 45        	li	a1, 0
802054e8: 97 40 00 00  	auipc	ra, 4
802054ec: e7 80 a0 1a  	jalr	426(ra)
802054f0: 13 06 10 08  	li	a2, 129
802054f4: 09 65        	lui	a0, 2
802054f6: 33 05 a4 40  	sub	a0, s0, a0
802054fa: 03 35 85 ca  	ld	a0, -856(a0)
802054fe: 81 45        	li	a1, 0
80205500: 97 40 00 00  	auipc	ra, 4
80205504: e7 80 20 19  	jalr	402(ra)
80205508: 13 06 10 08  	li	a2, 129
8020550c: 09 65        	lui	a0, 2
8020550e: 33 05 a4 40  	sub	a0, s0, a0
80205512: 03 35 05 ca  	ld	a0, -864(a0)
80205516: 81 45        	li	a1, 0
80205518: 97 40 00 00  	auipc	ra, 4
8020551c: e7 80 a0 17  	jalr	378(ra)
80205520: 13 06 10 08  	li	a2, 129
80205524: 09 65        	lui	a0, 2
80205526: 33 05 a4 40  	sub	a0, s0, a0
8020552a: 03 35 85 c9  	ld	a0, -872(a0)
8020552e: 81 45        	li	a1, 0
80205530: 97 40 00 00  	auipc	ra, 4
80205534: e7 80 20 16  	jalr	354(ra)
80205538: 13 06 10 08  	li	a2, 129
8020553c: 09 65        	lui	a0, 2
8020553e: 33 05 a4 40  	sub	a0, s0, a0
80205542: 03 35 05 c9  	ld	a0, -880(a0)
80205546: 81 45        	li	a1, 0
80205548: 97 40 00 00  	auipc	ra, 4
8020554c: e7 80 a0 14  	jalr	330(ra)
80205550: 13 06 10 08  	li	a2, 129
80205554: 09 65        	lui	a0, 2
80205556: 33 05 a4 40  	sub	a0, s0, a0
8020555a: 03 35 85 c8  	ld	a0, -888(a0)
8020555e: 81 45        	li	a1, 0
80205560: 97 40 00 00  	auipc	ra, 4
80205564: e7 80 20 13  	jalr	306(ra)
80205568: 13 06 10 08  	li	a2, 129
8020556c: 09 65        	lui	a0, 2
8020556e: 33 05 a4 40  	sub	a0, s0, a0
80205572: 03 35 05 c8  	ld	a0, -896(a0)
80205576: 81 45        	li	a1, 0
80205578: 97 40 00 00  	auipc	ra, 4
8020557c: e7 80 a0 11  	jalr	282(ra)
80205580: 13 06 10 08  	li	a2, 129
80205584: 09 65        	lui	a0, 2
80205586: 33 05 a4 40  	sub	a0, s0, a0
8020558a: 03 35 85 c7  	ld	a0, -904(a0)
8020558e: 81 45        	li	a1, 0
80205590: 97 40 00 00  	auipc	ra, 4
80205594: e7 80 20 10  	jalr	258(ra)
80205598: 13 06 10 08  	li	a2, 129
8020559c: 09 65        	lui	a0, 2
8020559e: 33 05 a4 40  	sub	a0, s0, a0
802055a2: 03 35 05 c7  	ld	a0, -912(a0)
802055a6: 81 45        	li	a1, 0
802055a8: 97 40 00 00  	auipc	ra, 4
802055ac: e7 80 a0 0e  	jalr	234(ra)
802055b0: 13 06 10 08  	li	a2, 129
802055b4: 09 65        	lui	a0, 2
802055b6: 33 05 a4 40  	sub	a0, s0, a0
802055ba: 03 35 85 c6  	ld	a0, -920(a0)
802055be: 81 45        	li	a1, 0
802055c0: 97 40 00 00  	auipc	ra, 4
802055c4: e7 80 20 0d  	jalr	210(ra)
802055c8: 13 06 10 08  	li	a2, 129
802055cc: 09 65        	lui	a0, 2
802055ce: 33 05 a4 40  	sub	a0, s0, a0
802055d2: 03 35 05 c6  	ld	a0, -928(a0)
802055d6: 81 45        	li	a1, 0
802055d8: 97 40 00 00  	auipc	ra, 4
802055dc: e7 80 a0 0b  	jalr	186(ra)
802055e0: 13 06 10 08  	li	a2, 129
802055e4: 09 65        	lui	a0, 2
802055e6: 33 05 a4 40  	sub	a0, s0, a0
802055ea: 03 35 85 c5  	ld	a0, -936(a0)
802055ee: 81 45        	li	a1, 0
802055f0: 97 40 00 00  	auipc	ra, 4
802055f4: e7 80 20 0a  	jalr	162(ra)
802055f8: 13 06 10 08  	li	a2, 129
802055fc: 09 65        	lui	a0, 2
802055fe: 33 05 a4 40  	sub	a0, s0, a0
80205602: 03 35 05 c5  	ld	a0, -944(a0)
80205606: 81 45        	li	a1, 0
80205608: 97 40 00 00  	auipc	ra, 4
8020560c: e7 80 a0 08  	jalr	138(ra)
80205610: 13 06 10 08  	li	a2, 129
80205614: 09 65        	lui	a0, 2
80205616: 33 05 a4 40  	sub	a0, s0, a0
8020561a: 03 35 85 c4  	ld	a0, -952(a0)
8020561e: 81 45        	li	a1, 0
80205620: 97 40 00 00  	auipc	ra, 4
80205624: e7 80 20 07  	jalr	114(ra)
80205628: 13 06 10 08  	li	a2, 129
8020562c: 09 65        	lui	a0, 2
8020562e: 33 05 a4 40  	sub	a0, s0, a0
80205632: 03 35 05 c4  	ld	a0, -960(a0)
80205636: 81 45        	li	a1, 0
80205638: 97 40 00 00  	auipc	ra, 4
8020563c: e7 80 a0 05  	jalr	90(ra)
80205640: 13 06 10 08  	li	a2, 129
80205644: 09 65        	lui	a0, 2
80205646: 33 05 a4 40  	sub	a0, s0, a0
8020564a: 03 35 85 c3  	ld	a0, -968(a0)
8020564e: 81 45        	li	a1, 0
80205650: 97 40 00 00  	auipc	ra, 4
80205654: e7 80 20 04  	jalr	66(ra)
80205658: 13 06 10 08  	li	a2, 129
8020565c: 09 65        	lui	a0, 2
8020565e: 33 05 a4 40  	sub	a0, s0, a0
80205662: 03 35 05 c3  	ld	a0, -976(a0)
80205666: 81 45        	li	a1, 0
80205668: 97 40 00 00  	auipc	ra, 4
8020566c: e7 80 a0 02  	jalr	42(ra)
80205670: 13 06 10 08  	li	a2, 129
80205674: 09 65        	lui	a0, 2
80205676: 33 05 a4 40  	sub	a0, s0, a0
8020567a: 03 35 85 c2  	ld	a0, -984(a0)
8020567e: 81 45        	li	a1, 0
80205680: 97 40 00 00  	auipc	ra, 4
80205684: e7 80 20 01  	jalr	18(ra)
80205688: 13 06 10 08  	li	a2, 129
8020568c: 09 65        	lui	a0, 2
8020568e: 33 05 a4 40  	sub	a0, s0, a0
80205692: 03 35 05 c2  	ld	a0, -992(a0)
80205696: 81 45        	li	a1, 0
80205698: 97 40 00 00  	auipc	ra, 4
8020569c: e7 80 a0 ff  	jalr	-6(ra)
802056a0: 13 06 10 08  	li	a2, 129
802056a4: 09 65        	lui	a0, 2
802056a6: 33 05 a4 40  	sub	a0, s0, a0
802056aa: 03 35 85 c1  	ld	a0, -1000(a0)
802056ae: 81 45        	li	a1, 0
802056b0: 97 40 00 00  	auipc	ra, 4
802056b4: e7 80 20 fe  	jalr	-30(ra)
802056b8: 13 06 10 08  	li	a2, 129
802056bc: 09 65        	lui	a0, 2
802056be: 33 05 a4 40  	sub	a0, s0, a0
802056c2: 03 35 05 c1  	ld	a0, -1008(a0)
802056c6: 81 45        	li	a1, 0
802056c8: 97 40 00 00  	auipc	ra, 4
802056cc: e7 80 a0 fc  	jalr	-54(ra)
802056d0: 13 06 10 08  	li	a2, 129
802056d4: 09 65        	lui	a0, 2
802056d6: 33 05 a4 40  	sub	a0, s0, a0
802056da: 03 35 85 c0  	ld	a0, -1016(a0)
802056de: 81 45        	li	a1, 0
802056e0: 97 40 00 00  	auipc	ra, 4
802056e4: e7 80 20 fb  	jalr	-78(ra)
802056e8: 13 06 10 08  	li	a2, 129
802056ec: 09 65        	lui	a0, 2
802056ee: 33 05 a4 40  	sub	a0, s0, a0
802056f2: 03 35 05 c0  	ld	a0, -1024(a0)
802056f6: 81 45        	li	a1, 0
802056f8: 97 40 00 00  	auipc	ra, 4
802056fc: e7 80 a0 f9  	jalr	-102(ra)
80205700: 13 06 10 08  	li	a2, 129
80205704: 09 65        	lui	a0, 2
80205706: 33 05 a4 40  	sub	a0, s0, a0
8020570a: 03 35 85 bf  	ld	a0, -1032(a0)
8020570e: 81 45        	li	a1, 0
80205710: 97 40 00 00  	auipc	ra, 4
80205714: e7 80 20 f8  	jalr	-126(ra)
80205718: 13 06 10 08  	li	a2, 129
8020571c: 09 65        	lui	a0, 2
8020571e: 33 05 a4 40  	sub	a0, s0, a0
80205722: 03 35 05 bf  	ld	a0, -1040(a0)
80205726: 81 45        	li	a1, 0
80205728: 97 40 00 00  	auipc	ra, 4
8020572c: e7 80 a0 f6  	jalr	-150(ra)
80205730: 13 85 04 01  	addi	a0, s1, 16
80205734: 45 46        	li	a2, 17
80205736: 26 06        	slli	a2, a2, 9
80205738: 89 65        	lui	a1, 2
8020573a: 9b 85 85 27  	addiw	a1, a1, 632
8020573e: b3 05 b4 40  	sub	a1, s0, a1
80205742: 97 40 00 00  	auipc	ra, 4
80205746: e7 80 80 f5  	jalr	-168(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020574a: 23 b4 b4 01  	sd	s11, 8(s1)
;                 finish.panicked = false;
8020574e: 23 04 09 00  	sb	zero, 8(s2)
80205752: 0f 00 10 03  	fence	rw, w
80205756: 23 b0 a4 01  	sd	s10, 0(s1)
8020575a: 09 65        	lui	a0, 2
8020575c: 1b 05 85 28  	addiw	a0, a0, 648
80205760: 33 05 a4 40  	sub	a0, s0, a0
80205764: 97 20 00 00  	auipc	ra, 2
80205768: e7 80 e0 65  	jalr	1630(ra)
8020576c: 21 a8        	j	0x80205784 <.Lpcrel_hi70+0x24fe>
8020576e: 0f 00 00 01  	fence	w, 0
80205772: 0f 00 30 03  	fence	rw, rw
80205776: 88 60        	ld	a0, 0(s1)
80205778: 0f 00 30 02  	fence	r, rw
;             match status {
8020577c: e3 09 b5 ff  	beq	a0, s11, 0x8020576e <.Lpcrel_hi70+0x24e8>
80205780: 63 19 a5 0f  	bne	a0, s10, 0x80205872 <.Lpcrel_hi90+0xa>
80205784: 63 71 7b 09  	bgeu	s6, s7, 0x80205806 <.Lpcrel_hi101>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80205788: 73 25 00 10  	csrr	a0, sstatus
;                 (*self & (1 << bit)) != 0
8020578c: 09 89        	andi	a0, a0, 2
;     if sstatus::read().sie() {
8020578e: 63 14 05 1c  	bnez	a0, 0x80205956 <.Lpcrel_hi102>
;     if mc.noff < 1 {
80205792: 33 05 8b 03  	mul	a0, s6, s8
80205796: 26 95        	add	a0, a0, s1
80205798: 4c 65        	ld	a1, 136(a0)
8020579a: 63 58 b0 1e  	blez	a1, 0x8020598a <.Lpcrel_hi105>
8020579e: 13 06 85 08  	addi	a2, a0, 136
;     mc.noff -= 1;
802057a2: fd 15        	addi	a1, a1, -1
802057a4: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
802057a6: 99 c1        	beqz	a1, 0x802057ac <.Lpcrel_hi70+0x2526>
802057a8: 6f d0 3f e3  	j	0x802035da <.Lpcrel_hi70+0x354>
802057ac: 03 45 05 09  	lbu	a0, 144(a0)
802057b0: 19 e1        	bnez	a0, 0x802057b6 <.Lpcrel_hi70+0x2530>
802057b2: 6f d0 9f e2  	j	0x802035da <.Lpcrel_hi70+0x354>
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802057b6: 73 20 0d 10  	csrs	sstatus, s10
802057ba: 6f d0 1f e2  	j	0x802035da <.Lpcrel_hi70+0x354>

00000000802057be <.Lpcrel_hi75>:
; 	&mut CPUS.get_mut()[id]
802057be: 17 55 00 00  	auipc	a0, 5
802057c2: 13 06 a5 d8  	addi	a2, a0, -630
802057c6: 93 05 00 04  	li	a1, 64
802057ca: 5a 85        	mv	a0, s6
802057cc: 97 30 00 00  	auipc	ra, 3
802057d0: e7 80 00 c2  	jalr	-992(ra)
802057d4: 00 00        	unimp	

00000000802057d6 <.Lpcrel_hi88>:
; 	&mut CPUS.get_mut()[id]
802057d6: 17 55 00 00  	auipc	a0, 5
802057da: 13 06 25 d7  	addi	a2, a0, -654
802057de: 93 05 00 04  	li	a1, 64
802057e2: 5a 85        	mv	a0, s6
802057e4: 97 30 00 00  	auipc	ra, 3
802057e8: e7 80 80 c0  	jalr	-1016(ra)
802057ec: 00 00        	unimp	

00000000802057ee <.Lpcrel_hi93>:
; 	&mut CPUS.get_mut()[id]
802057ee: 17 55 00 00  	auipc	a0, 5
802057f2: 13 06 a5 d5  	addi	a2, a0, -678
802057f6: 93 05 00 04  	li	a1, 64
802057fa: 5a 85        	mv	a0, s6
802057fc: 97 30 00 00  	auipc	ra, 3
80205800: e7 80 00 bf  	jalr	-1040(ra)
80205804: 00 00        	unimp	

0000000080205806 <.Lpcrel_hi101>:
; 	&mut CPUS.get_mut()[id]
80205806: 17 55 00 00  	auipc	a0, 5
8020580a: 13 06 25 d4  	addi	a2, a0, -702
8020580e: 93 05 00 04  	li	a1, 64
80205812: 5a 85        	mv	a0, s6
80205814: 97 30 00 00  	auipc	ra, 3
80205818: e7 80 80 bd  	jalr	-1064(ra)
8020581c: 00 00        	unimp	

000000008020581e <.Lpcrel_hi80>:
; 	&mut CPUS.get_mut()[id]
8020581e: 17 55 00 00  	auipc	a0, 5
80205822: 13 06 a5 d2  	addi	a2, a0, -726
80205826: 93 05 00 04  	li	a1, 64
8020582a: 5a 85        	mv	a0, s6
8020582c: 97 30 00 00  	auipc	ra, 3
80205830: e7 80 00 bc  	jalr	-1088(ra)
80205834: 00 00        	unimp	
;             match status {
80205836: 25 e9        	bnez	a0, 0x802058a6 <.Lpcrel_hi73>

0000000080205838 <.Lpcrel_hi71>:
;                 INCOMPLETE => unreachable!(),
80205838: 17 55 00 00  	auipc	a0, 5
8020583c: 13 05 05 85  	addi	a0, a0, -1968

0000000080205840 <.Lpcrel_hi72>:
80205840: 97 55 00 00  	auipc	a1, 5
80205844: 13 86 05 87  	addi	a2, a1, -1936
80205848: 81 a8        	j	0x80205898 <.Lpcrel_hi77+0x8>
;             match status {
8020584a: 3d e5        	bnez	a0, 0x802058b8 <.Lpcrel_hi86>

000000008020584c <.Lpcrel_hi84>:
;                 INCOMPLETE => unreachable!(),
8020584c: 17 55 00 00  	auipc	a0, 5
80205850: 13 05 c5 83  	addi	a0, a0, -1988

0000000080205854 <.Lpcrel_hi85>:
80205854: 97 55 00 00  	auipc	a1, 5
80205858: 13 86 c5 85  	addi	a2, a1, -1956
8020585c: 35 a8        	j	0x80205898 <.Lpcrel_hi77+0x8>
;             match status {
8020585e: 35 e5        	bnez	a0, 0x802058ca <.Lpcrel_hi91>

0000000080205860 <.Lpcrel_hi89>:
;                 INCOMPLETE => unreachable!(),
80205860: 17 55 00 00  	auipc	a0, 5
80205864: 13 05 85 82  	addi	a0, a0, -2008

0000000080205868 <.Lpcrel_hi90>:
80205868: 97 55 00 00  	auipc	a1, 5
8020586c: 13 86 85 84  	addi	a2, a1, -1976
80205870: 25 a0        	j	0x80205898 <.Lpcrel_hi77+0x8>
;             match status {
80205872: 2d e5        	bnez	a0, 0x802058dc <.Lpcrel_hi99>

0000000080205874 <.Lpcrel_hi97>:
;                 INCOMPLETE => unreachable!(),
80205874: 17 55 00 00  	auipc	a0, 5
80205878: 13 05 45 81  	addi	a0, a0, -2028

000000008020587c <.Lpcrel_hi98>:
8020587c: 97 55 00 00  	auipc	a1, 5
80205880: 13 86 45 83  	addi	a2, a1, -1996
80205884: 11 a8        	j	0x80205898 <.Lpcrel_hi77+0x8>
;             match status {
80205886: 25 e5        	bnez	a0, 0x802058ee <.Lpcrel_hi78>

0000000080205888 <.Lpcrel_hi76>:
;                 INCOMPLETE => unreachable!(),
80205888: 17 55 00 00  	auipc	a0, 5
8020588c: 13 05 05 80  	addi	a0, a0, -2048

0000000080205890 <.Lpcrel_hi77>:
80205890: 97 55 00 00  	auipc	a1, 5
80205894: 13 86 05 82  	addi	a2, a1, -2016
80205898: 93 05 80 02  	li	a1, 40
8020589c: 97 30 00 00  	auipc	ra, 3
802058a0: e7 80 40 b2  	jalr	-1244(ra)
802058a4: 00 00        	unimp	

00000000802058a6 <.Lpcrel_hi73>:
;                 PANICKED => panic!("Once has panicked"),
802058a6: 17 45 00 00  	auipc	a0, 4
802058aa: 13 05 a5 75  	addi	a0, a0, 1882

00000000802058ae <.Lpcrel_hi74>:
802058ae: 97 45 00 00  	auipc	a1, 4
802058b2: 13 86 25 7c  	addi	a2, a1, 1986
802058b6: a1 a0        	j	0x802058fe <.Lpcrel_hi79+0x8>

00000000802058b8 <.Lpcrel_hi86>:
802058b8: 17 45 00 00  	auipc	a0, 4
802058bc: 13 05 85 74  	addi	a0, a0, 1864

00000000802058c0 <.Lpcrel_hi87>:
802058c0: 97 45 00 00  	auipc	a1, 4
802058c4: 13 86 05 7b  	addi	a2, a1, 1968
802058c8: 1d a8        	j	0x802058fe <.Lpcrel_hi79+0x8>

00000000802058ca <.Lpcrel_hi91>:
802058ca: 17 45 00 00  	auipc	a0, 4
802058ce: 13 05 65 73  	addi	a0, a0, 1846

00000000802058d2 <.Lpcrel_hi92>:
802058d2: 97 45 00 00  	auipc	a1, 4
802058d6: 13 86 e5 79  	addi	a2, a1, 1950
802058da: 15 a0        	j	0x802058fe <.Lpcrel_hi79+0x8>

00000000802058dc <.Lpcrel_hi99>:
802058dc: 17 45 00 00  	auipc	a0, 4
802058e0: 13 05 45 72  	addi	a0, a0, 1828

00000000802058e4 <.Lpcrel_hi100>:
802058e4: 97 45 00 00  	auipc	a1, 4
802058e8: 13 86 c5 78  	addi	a2, a1, 1932
802058ec: 09 a8        	j	0x802058fe <.Lpcrel_hi79+0x8>

00000000802058ee <.Lpcrel_hi78>:
802058ee: 17 45 00 00  	auipc	a0, 4
802058f2: 13 05 25 71  	addi	a0, a0, 1810

00000000802058f6 <.Lpcrel_hi79>:
802058f6: 97 45 00 00  	auipc	a1, 4
802058fa: 13 86 a5 77  	addi	a2, a1, 1914
802058fe: c5 45        	li	a1, 17
80205900: 97 30 00 00  	auipc	ra, 3
80205904: e7 80 00 ac  	jalr	-1344(ra)
80205908: 00 00        	unimp	

000000008020590a <.Lpcrel_hi94>:
8020590a: 17 55 00 00  	auipc	a0, 5
8020590e: 13 05 65 8f  	addi	a0, a0, -1802
80205912: 89 65        	lui	a1, 2
80205914: 9b 85 85 28  	addiw	a1, a1, 648
80205918: b3 05 b4 40  	sub	a1, s0, a1
8020591c: 88 e9        	sd	a0, 16(a1)
8020591e: 05 45        	li	a0, 1
80205920: 88 ed        	sd	a0, 24(a1)
80205922: 23 b8 05 02  	sd	zero, 48(a1)

0000000080205926 <.Lpcrel_hi95>:
80205926: 17 55 00 00  	auipc	a0, 5
8020592a: 13 05 a5 88  	addi	a0, a0, -1910
8020592e: 88 f1        	sd	a0, 32(a1)
80205930: 23 b4 05 02  	sd	zero, 40(a1)

0000000080205934 <.Lpcrel_hi96>:
;             panic!("release");
80205934: 17 55 00 00  	auipc	a0, 5
80205938: 93 05 c5 8d  	addi	a1, a0, -1828
8020593c: 55 a8        	j	0x802059f0 <.Lpcrel_hi83+0x8>

000000008020593e <.Lpcrel_hi69>:
; 	&mut CPUS.get_mut()[id]
8020593e: 17 55 00 00  	auipc	a0, 5
80205942: 13 06 a5 c0  	addi	a2, a0, -1014
80205946: 93 05 00 04  	li	a1, 64
8020594a: 4a 85        	mv	a0, s2
8020594c: 97 30 00 00  	auipc	ra, 3
80205950: e7 80 00 aa  	jalr	-1376(ra)
80205954: 00 00        	unimp	

0000000080205956 <.Lpcrel_hi102>:
80205956: 17 55 00 00  	auipc	a0, 5
8020595a: 13 05 25 9e  	addi	a0, a0, -1566
8020595e: 89 65        	lui	a1, 2
80205960: 9b 85 85 28  	addiw	a1, a1, 648
80205964: b3 05 b4 40  	sub	a1, s0, a1
80205968: 88 e9        	sd	a0, 16(a1)
8020596a: 05 45        	li	a0, 1
8020596c: 88 ed        	sd	a0, 24(a1)
8020596e: 23 b8 05 02  	sd	zero, 48(a1)

0000000080205972 <.Lpcrel_hi103>:
80205972: 17 55 00 00  	auipc	a0, 5
80205976: 13 05 65 9d  	addi	a0, a0, -1578
8020597a: 88 f1        	sd	a0, 32(a1)
8020597c: 23 b4 05 02  	sd	zero, 40(a1)

0000000080205980 <.Lpcrel_hi104>:
;         panic!("pop_off - interruptible");
80205980: 17 55 00 00  	auipc	a0, 5
80205984: 93 05 85 9d  	addi	a1, a0, -1576
80205988: a5 a0        	j	0x802059f0 <.Lpcrel_hi83+0x8>

000000008020598a <.Lpcrel_hi105>:
8020598a: 17 55 00 00  	auipc	a0, 5
8020598e: 13 05 e5 9e  	addi	a0, a0, -1554
80205992: 89 65        	lui	a1, 2
80205994: 9b 85 85 28  	addiw	a1, a1, 648
80205998: b3 05 b4 40  	sub	a1, s0, a1
8020599c: 88 e9        	sd	a0, 16(a1)
8020599e: 05 45        	li	a0, 1
802059a0: 88 ed        	sd	a0, 24(a1)
802059a2: 23 b8 05 02  	sd	zero, 48(a1)

00000000802059a6 <.Lpcrel_hi106>:
802059a6: 17 55 00 00  	auipc	a0, 5
802059aa: 13 05 25 9a  	addi	a0, a0, -1630
802059ae: 88 f1        	sd	a0, 32(a1)
802059b0: 23 b4 05 02  	sd	zero, 40(a1)

00000000802059b4 <.Lpcrel_hi107>:
;         panic!("pop_off");
802059b4: 17 55 00 00  	auipc	a0, 5
802059b8: 93 05 45 9d  	addi	a1, a0, -1580
802059bc: 15 a8        	j	0x802059f0 <.Lpcrel_hi83+0x8>

00000000802059be <.Lpcrel_hi81>:
802059be: 17 45 00 00  	auipc	a0, 4
802059c2: 13 05 a5 7f  	addi	a0, a0, 2042
802059c6: 89 65        	lui	a1, 2
802059c8: 9b 85 85 28  	addiw	a1, a1, 648
802059cc: b3 05 b4 40  	sub	a1, s0, a1
802059d0: 88 e9        	sd	a0, 16(a1)
802059d2: 05 45        	li	a0, 1
802059d4: 88 ed        	sd	a0, 24(a1)
802059d6: 23 b8 05 02  	sd	zero, 48(a1)

00000000802059da <.Lpcrel_hi82>:
802059da: 17 45 00 00  	auipc	a0, 4
802059de: 13 05 65 7d  	addi	a0, a0, 2006
802059e2: 88 f1        	sd	a0, 32(a1)
802059e4: 23 b4 05 02  	sd	zero, 40(a1)

00000000802059e8 <.Lpcrel_hi83>:
;             panic!("acquire");
802059e8: 17 45 00 00  	auipc	a0, 4
802059ec: 93 05 85 7f  	addi	a1, a0, 2040
802059f0: 09 65        	lui	a0, 2
802059f2: 1b 05 85 27  	addiw	a0, a0, 632
802059f6: 33 05 a4 40  	sub	a0, s0, a0
802059fa: 97 30 00 00  	auipc	ra, 3
802059fe: e7 80 80 99  	jalr	-1640(ra)
80205a02: 00 00        	unimp	

0000000080205a04 <forkret>:
; fn forkret() {
80205a04: 1d 71        	addi	sp, sp, -96
;         asm!{
80205a06: 86 ec        	sd	ra, 88(sp)
80205a08: a2 e8        	sd	s0, 80(sp)
80205a0a: a6 e4        	sd	s1, 72(sp)
80205a0c: ca e0        	sd	s2, 64(sp)
80205a0e: 4e fc        	sd	s3, 56(sp)
80205a10: 80 10        	addi	s0, sp, 96
80205a12: 73 29 00 10  	csrr	s2, sstatus
80205a16: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80205a18: 73 30 05 10  	csrc	sstatus, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205a1c: 92 84        	mv	s1, tp

0000000080205a1e <.Lpcrel_hi108>:
;         self.0.call_once(builder)
80205a1e: 17 d5 08 00  	auipc	a0, 141
80205a22: 13 05 25 44  	addi	a0, a0, 1090
80205a26: 97 c0 ff ff  	auipc	ra, 1048572
80205a2a: e7 80 a0 5d  	jalr	1498(ra)
80205a2e: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205a32: 63 f8 b4 0a  	bgeu	s1, a1, 0x80205ae2 <.Lpcrel_hi109>
80205a36: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80205a3a: 33 86 b4 02  	mul	a2, s1, a1
80205a3e: 2a 96        	add	a2, a2, a0
80205a40: 2c 7e        	ld	a1, 120(a2)
80205a42: 13 05 86 07  	addi	a0, a2, 120
80205a46: 91 e5        	bnez	a1, 0x80205a52 <.Lpcrel_hi108+0x34>
;         mc.intena = old;
80205a48: 7a 19        	slli	s2, s2, 62
80205a4a: 93 56 f9 03  	srli	a3, s2, 63
80205a4e: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80205a52: 85 05        	addi	a1, a1, 1
80205a54: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205a56: 92 84        	mv	s1, tp

0000000080205a58 <.Lpcrel_hi110>:
;         self.0.call_once(builder)
80205a58: 17 d5 08 00  	auipc	a0, 141
80205a5c: 13 05 85 40  	addi	a0, a0, 1032
80205a60: 97 c0 ff ff  	auipc	ra, 1048572
80205a64: e7 80 00 5a  	jalr	1440(ra)
80205a68: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205a6c: 63 f0 b4 08  	bgeu	s1, a1, 0x80205aec <.Lpcrel_hi111>
80205a70: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205a74: b3 85 b4 02  	mul	a1, s1, a1
80205a78: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
80205a7a: 04 61        	ld	s1, 0(a0)
;     pop_off();
80205a7c: 97 00 00 00  	auipc	ra, 0
80205a80: e7 80 40 64  	jalr	1604(ra)
80205a84: 03 85 84 09  	lb	a0, 152(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80205a88: 51 c9        	beqz	a0, 0x80205b1c <.Lpcrel_hi114>
80205a8a: 83 b9 04 09  	ld	s3, 144(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205a8e: 12 89        	mv	s2, tp

0000000080205a90 <.Lpcrel_hi112>:
;         self.0.call_once(builder)
80205a90: 17 d5 08 00  	auipc	a0, 141
80205a94: 13 05 05 3d  	addi	a0, a0, 976
80205a98: 97 c0 ff ff  	auipc	ra, 1048572
80205a9c: e7 80 80 56  	jalr	1384(ra)
80205aa0: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205aa4: 63 70 b9 06  	bgeu	s2, a1, 0x80205b04 <.Lpcrel_hi113>
80205aa8: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205aac: b3 05 b9 02  	mul	a1, s2, a1
80205ab0: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80205ab2: 63 95 a9 06  	bne	s3, a0, 0x80205b1c <.Lpcrel_hi114>
;         self.cpu = null_mut();
80205ab6: 23 b8 04 08  	sd	zero, 144(s1)
80205aba: 0f 00 30 03  	fence	rw, rw
80205abe: 0f 00 10 03  	fence	rw, w
80205ac2: 23 8c 04 08  	sb	zero, 152(s1)
;         pop_off();
80205ac6: 97 00 00 00  	auipc	ra, 0
80205aca: e7 80 a0 5f  	jalr	1530(ra)
;     usertrapret();
80205ace: e6 60        	ld	ra, 88(sp)
80205ad0: 46 64        	ld	s0, 80(sp)
80205ad2: a6 64        	ld	s1, 72(sp)
80205ad4: 06 69        	ld	s2, 64(sp)
80205ad6: e2 79        	ld	s3, 56(sp)
80205ad8: 25 61        	addi	sp, sp, 96
80205ada: 17 03 00 00  	auipc	t1, 0
80205ade: 67 00 e3 07  	jr	126(t1)

0000000080205ae2 <.Lpcrel_hi109>:
; 	&mut CPUS.get_mut()[id]
80205ae2: 17 55 00 00  	auipc	a0, 5
80205ae6: 13 06 65 a6  	addi	a2, a0, -1434
80205aea: 29 a0        	j	0x80205af4 <.Lpcrel_hi111+0x8>

0000000080205aec <.Lpcrel_hi111>:
80205aec: 17 55 00 00  	auipc	a0, 5
80205af0: 13 06 c5 a5  	addi	a2, a0, -1444
80205af4: 93 05 00 04  	li	a1, 64
80205af8: 26 85        	mv	a0, s1
80205afa: 97 30 00 00  	auipc	ra, 3
80205afe: e7 80 20 8f  	jalr	-1806(ra)
80205b02: 00 00        	unimp	

0000000080205b04 <.Lpcrel_hi113>:
; 	&mut CPUS.get_mut()[id]
80205b04: 17 55 00 00  	auipc	a0, 5
80205b08: 13 06 45 a4  	addi	a2, a0, -1468
80205b0c: 93 05 00 04  	li	a1, 64
80205b10: 4a 85        	mv	a0, s2
80205b12: 97 30 00 00  	auipc	ra, 3
80205b16: e7 80 a0 8d  	jalr	-1830(ra)
80205b1a: 00 00        	unimp	

0000000080205b1c <.Lpcrel_hi114>:
80205b1c: 17 45 00 00  	auipc	a0, 4
80205b20: 13 05 45 6e  	addi	a0, a0, 1764
80205b24: 23 34 a4 fa  	sd	a0, -88(s0)
80205b28: 05 45        	li	a0, 1
80205b2a: 23 38 a4 fa  	sd	a0, -80(s0)
80205b2e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080205b32 <.Lpcrel_hi115>:
80205b32: 17 45 00 00  	auipc	a0, 4
80205b36: 13 05 e5 67  	addi	a0, a0, 1662
80205b3a: 23 3c a4 fa  	sd	a0, -72(s0)
80205b3e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205b42 <.Lpcrel_hi116>:
;             panic!("release");
80205b42: 17 45 00 00  	auipc	a0, 4
80205b46: 93 05 e5 6c  	addi	a1, a0, 1742
80205b4a: 13 05 84 fa  	addi	a0, s0, -88
80205b4e: 97 30 00 00  	auipc	ra, 3
80205b52: e7 80 40 84  	jalr	-1980(ra)
80205b56: 00 00        	unimp	

0000000080205b58 <usertrapret>:
; pub fn usertrapret() {
80205b58: 41 11        	addi	sp, sp, -16
;     let p = unsafe { &*myproc() };
80205b5a: 06 e4        	sd	ra, 8(sp)
80205b5c: 22 e0        	sd	s0, 0(sp)
80205b5e: 00 08        	addi	s0, sp, 16
80205b60: 97 d0 ff ff  	auipc	ra, 1048573
80205b64: e7 80 a0 e0  	jalr	-502(ra)
80205b68: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80205b6a: 73 b0 05 10  	csrc	sstatus, a1

0000000080205b6e <.Lpcrel_hi0>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80205b6e: 97 b5 ff ff  	auipc	a1, 1048571
80205b72: 93 85 25 49  	addi	a1, a1, 1170

0000000080205b76 <.Lpcrel_hi1>:
80205b76: 17 b6 ff ff  	auipc	a2, 1048571
80205b7a: 13 06 a6 48  	addi	a2, a2, 1162
80205b7e: 0d 8e        	sub	a2, a2, a1
80205b80: b7 06 00 04  	lui	a3, 16384
80205b84: fd 36        	addiw	a3, a3, -1
80205b86: b2 06        	slli	a3, a3, 12
80205b88: 36 96        	add	a2, a2, a3
80205b8a: 73 10 56 10  	csrw	stvec, a2
;     let tf = unsafe { &mut *p.trapframe };
80205b8e: 03 36 85 14  	ld	a2, 328(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80205b92: 73 27 00 18  	csrr	a4, satp
;     tf.kernel_satp = unsafe { satp::read().bits() };
80205b96: 23 30 e6 10  	sd	a4, 256(a2)
;     tf.kernel_sp = p.kstack + PGSIZE;
80205b9a: 03 37 05 13  	ld	a4, 304(a0)
80205b9e: 85 67        	lui	a5, 1
80205ba0: 3e 97        	add	a4, a4, a5
80205ba2: 23 34 e6 10  	sd	a4, 264(a2)

0000000080205ba6 <.Lpcrel_hi2>:
;     tf.kernel_trap = usertrap as Addr;
80205ba6: 17 07 00 00  	auipc	a4, 0
80205baa: 13 07 c7 04  	addi	a4, a4, 76
80205bae: 23 38 e6 10  	sd	a4, 272(a2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205bb2: 12 87        	mv	a4, tp
;     tf.kernel_hartid = r_tp();
80205bb4: 23 30 e6 12  	sd	a4, 288(a2)
80205bb8: 13 07 00 10  	li	a4, 256
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80205bbc: 73 30 07 10  	csrc	sstatus, a4
80205bc0: 13 07 00 02  	li	a4, 32
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80205bc4: 73 20 07 10  	csrs	sstatus, a4
;     sepc::write(tf.epc);
80205bc8: 03 36 86 11  	ld	a2, 280(a2)
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80205bcc: 73 10 16 14  	csrw	sepc, a2
;         self.data as Addr
80205bd0: 03 35 05 14  	ld	a0, 320(a0)
;         SATP_SV39 | (satp >> PGSHIFT)
80205bd4: 31 81        	srli	a0, a0, 12
80205bd6: 7d 56        	li	a2, -1
80205bd8: 7e 16        	slli	a2, a2, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80205bda: 51 8d        	or	a0, a0, a2

0000000080205bdc <.Lpcrel_hi3>:
;         asm! {
80205bdc: 17 b6 ff ff  	auipc	a2, 1048571
80205be0: 13 06 26 4c  	addi	a2, a2, 1218
80205be4: 0d 8e        	sub	a2, a2, a1
80205be6: 36 96        	add	a2, a2, a3
80205be8: 02 86        	jr	a2
; }
80205bea: a2 60        	ld	ra, 8(sp)
80205bec: 02 64        	ld	s0, 0(sp)
80205bee: 41 01        	addi	sp, sp, 16
80205bf0: 82 80        	ret

0000000080205bf2 <usertrap>:
; pub fn kerneltrap() {}
80205bf2: 41 11        	addi	sp, sp, -16
80205bf4: 06 e4        	sd	ra, 8(sp)
80205bf6: 22 e0        	sd	s0, 0(sp)
80205bf8: 00 08        	addi	s0, sp, 16
80205bfa: a2 60        	ld	ra, 8(sp)
80205bfc: 02 64        	ld	s0, 0(sp)
80205bfe: 41 01        	addi	sp, sp, 16
80205c00: 82 80        	ret

0000000080205c02 <_ZN6kernel4trap12trapinithart17he3bac37976ea6eecE>:
; pub fn trapinithart() {
80205c02: 5d 71        	addi	sp, sp, -80
80205c04: 86 e4        	sd	ra, 72(sp)
80205c06: a2 e0        	sd	s0, 64(sp)
80205c08: 80 08        	addi	s0, sp, 80

0000000080205c0a <.Lpcrel_hi10>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80205c0a: 17 b5 ff ff  	auipc	a0, 1048571
80205c0e: 13 05 65 52  	addi	a0, a0, 1318
80205c12: 73 10 55 10  	csrw	stvec, a0
80205c16: 13 05 84 fe  	addi	a0, s0, -24
;     Stdout.write_fmt(args).unwrap();
80205c1a: 23 38 a4 fa  	sd	a0, -80(s0)

0000000080205c1e <.Lpcrel_hi11>:
80205c1e: 17 45 00 00  	auipc	a0, 4
80205c22: 13 05 25 58  	addi	a0, a0, 1410
80205c26: 23 3c a4 fa  	sd	a0, -72(s0)
80205c2a: 05 45        	li	a0, 1
80205c2c: 23 30 a4 fc  	sd	a0, -64(s0)

0000000080205c30 <.Lpcrel_hi12>:
80205c30: 17 45 00 00  	auipc	a0, 4
80205c34: 13 05 85 55  	addi	a0, a0, 1368
80205c38: 23 34 a4 fc  	sd	a0, -56(s0)
80205c3c: 23 38 04 fc  	sd	zero, -48(s0)
80205c40: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080205c44 <.Lpcrel_hi13>:
80205c44: 17 45 00 00  	auipc	a0, 4
80205c48: 93 05 45 5e  	addi	a1, a0, 1508
80205c4c: 13 05 04 fb  	addi	a0, s0, -80
80205c50: 13 06 84 fb  	addi	a2, s0, -72
80205c54: 97 30 00 00  	auipc	ra, 3
80205c58: e7 80 a0 d5  	jalr	-678(ra)
80205c5c: 09 e5        	bnez	a0, 0x80205c66 <.Lpcrel_hi14>
; }
80205c5e: a6 60        	ld	ra, 72(sp)
80205c60: 06 64        	ld	s0, 64(sp)
80205c62: 61 61        	addi	sp, sp, 80
80205c64: 82 80        	ret

0000000080205c66 <.Lpcrel_hi14>:
80205c66: 17 45 00 00  	auipc	a0, 4
80205c6a: 13 05 25 5f  	addi	a0, a0, 1522

0000000080205c6e <.Lpcrel_hi15>:
80205c6e: 97 45 00 00  	auipc	a1, 4
80205c72: 93 86 a5 61  	addi	a3, a1, 1562

0000000080205c76 <.Lpcrel_hi16>:
80205c76: 97 45 00 00  	auipc	a1, 4
80205c7a: 13 87 25 64  	addi	a4, a1, 1602
80205c7e: 93 05 b0 02  	li	a1, 43
80205c82: 13 06 84 fe  	addi	a2, s0, -24
80205c86: 97 20 00 00  	auipc	ra, 2
80205c8a: e7 80 60 7a  	jalr	1958(ra)
80205c8e: 00 00        	unimp	

0000000080205c90 <_ZN6kernel4lock8spinlock8Spinlock7acquire17h60dfe057da21b86dE>:
;     pub fn acquire(&mut self) {
80205c90: 1d 71        	addi	sp, sp, -96
;         asm!{
80205c92: 86 ec        	sd	ra, 88(sp)
80205c94: a2 e8        	sd	s0, 80(sp)
80205c96: a6 e4        	sd	s1, 72(sp)
80205c98: ca e0        	sd	s2, 64(sp)
80205c9a: 4e fc        	sd	s3, 56(sp)
80205c9c: 52 f8        	sd	s4, 48(sp)
80205c9e: 80 10        	addi	s0, sp, 96
80205ca0: f3 29 00 10  	csrr	s3, sstatus
80205ca4: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80205ca6: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205caa: 92 84        	mv	s1, tp
80205cac: 2a 89        	mv	s2, a0

0000000080205cae <.Lpcrel_hi0>:
;         self.0.call_once(builder)
80205cae: 17 d5 08 00  	auipc	a0, 141
80205cb2: 13 05 25 1b  	addi	a0, a0, 434
80205cb6: 97 c0 ff ff  	auipc	ra, 1048572
80205cba: e7 80 a0 34  	jalr	842(ra)
80205cbe: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205cc2: 63 ff b4 0a  	bgeu	s1, a1, 0x80205d80 <.Lpcrel_hi1>
80205cc6: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80205cca: 33 86 b4 02  	mul	a2, s1, a1
80205cce: 2a 96        	add	a2, a2, a0
80205cd0: 2c 7e        	ld	a1, 120(a2)
80205cd2: 13 05 86 07  	addi	a0, a2, 120
80205cd6: 91 e5        	bnez	a1, 0x80205ce2 <.Lpcrel_hi0+0x34>
;         mc.intena = old;
80205cd8: fa 19        	slli	s3, s3, 62
80205cda: 93 d6 f9 03  	srli	a3, s3, 63
80205cde: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80205ce2: 85 05        	addi	a1, a1, 1
80205ce4: 0c e1        	sd	a1, 0(a0)
80205ce6: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80205cea: 93 04 89 01  	addi	s1, s2, 24
80205cee: 1d c5        	beqz	a0, 0x80205d1c <.Lpcrel_hi2+0x26>
80205cf0: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205cf4: 92 89        	mv	s3, tp

0000000080205cf6 <.Lpcrel_hi2>:
;         self.0.call_once(builder)
80205cf6: 17 d5 08 00  	auipc	a0, 141
80205cfa: 13 05 a5 16  	addi	a0, a0, 362
80205cfe: 97 c0 ff ff  	auipc	ra, 1048572
80205d02: e7 80 20 30  	jalr	770(ra)
80205d06: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205d0a: 63 fc b9 08  	bgeu	s3, a1, 0x80205da2 <.Lpcrel_hi3>
80205d0e: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205d12: b3 85 b9 02  	mul	a1, s3, a1
80205d16: 2e 95        	add	a0, a0, a1
;         if self.holding() {
80205d18: 63 01 aa 0a  	beq	s4, a0, 0x80205dba <.Lpcrel_hi4>
80205d1c: 13 f5 c4 ff  	andi	a0, s1, -4
80205d20: 93 05 f0 0f  	li	a1, 255
80205d24: 05 46        	li	a2, 1
80205d26: af 26 05 14  	lr.w.aq	a3, (a0)
80205d2a: 33 f7 b6 00  	and	a4, a3, a1
80205d2e: 01 eb        	bnez	a4, 0x80205d3e <.Lpcrel_hi2+0x48>
80205d30: 33 c7 c6 00  	xor	a4, a3, a2
80205d34: 6d 8f        	and	a4, a4, a1
80205d36: 35 8f        	xor	a4, a4, a3
80205d38: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80205d3c: 6d f7        	bnez	a4, 0x80205d26 <.Lpcrel_hi2+0x30>
80205d3e: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
80205d42: 69 fd        	bnez	a0, 0x80205d1c <.Lpcrel_hi2+0x26>
80205d44: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80205d48: 92 84        	mv	s1, tp

0000000080205d4a <.Lpcrel_hi7>:
;         self.0.call_once(builder)
80205d4a: 17 d5 08 00  	auipc	a0, 141
80205d4e: 13 05 65 11  	addi	a0, a0, 278
80205d52: 97 c0 ff ff  	auipc	ra, 1048572
80205d56: e7 80 e0 2a  	jalr	686(ra)
80205d5a: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80205d5e: 63 f6 b4 02  	bgeu	s1, a1, 0x80205d8a <.Lpcrel_hi8>
80205d62: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80205d66: b3 85 b4 02  	mul	a1, s1, a1
80205d6a: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
80205d6c: 23 38 a9 00  	sd	a0, 16(s2)
;     }
80205d70: e6 60        	ld	ra, 88(sp)
80205d72: 46 64        	ld	s0, 80(sp)
80205d74: a6 64        	ld	s1, 72(sp)
80205d76: 06 69        	ld	s2, 64(sp)
80205d78: e2 79        	ld	s3, 56(sp)
80205d7a: 42 7a        	ld	s4, 48(sp)
80205d7c: 25 61        	addi	sp, sp, 96
80205d7e: 82 80        	ret

0000000080205d80 <.Lpcrel_hi1>:
; 	&mut CPUS.get_mut()[id]
80205d80: 17 45 00 00  	auipc	a0, 4
80205d84: 13 06 85 7c  	addi	a2, a0, 1992
80205d88: 29 a0        	j	0x80205d92 <.Lpcrel_hi8+0x8>

0000000080205d8a <.Lpcrel_hi8>:
80205d8a: 17 45 00 00  	auipc	a0, 4
80205d8e: 13 06 e5 7b  	addi	a2, a0, 1982
80205d92: 93 05 00 04  	li	a1, 64
80205d96: 26 85        	mv	a0, s1
80205d98: 97 20 00 00  	auipc	ra, 2
80205d9c: e7 80 40 65  	jalr	1620(ra)
80205da0: 00 00        	unimp	

0000000080205da2 <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
80205da2: 17 45 00 00  	auipc	a0, 4
80205da6: 13 06 65 7a  	addi	a2, a0, 1958
80205daa: 93 05 00 04  	li	a1, 64
80205dae: 4e 85        	mv	a0, s3
80205db0: 97 20 00 00  	auipc	ra, 2
80205db4: e7 80 c0 63  	jalr	1596(ra)
80205db8: 00 00        	unimp	

0000000080205dba <.Lpcrel_hi4>:
80205dba: 17 45 00 00  	auipc	a0, 4
80205dbe: 13 05 e5 3f  	addi	a0, a0, 1022
80205dc2: 23 30 a4 fa  	sd	a0, -96(s0)
80205dc6: 05 45        	li	a0, 1
80205dc8: 23 34 a4 fa  	sd	a0, -88(s0)
80205dcc: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205dd0 <.Lpcrel_hi5>:
80205dd0: 17 45 00 00  	auipc	a0, 4
80205dd4: 13 05 05 3e  	addi	a0, a0, 992
80205dd8: 23 38 a4 fa  	sd	a0, -80(s0)
80205ddc: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080205de0 <.Lpcrel_hi6>:
;             panic!("acquire");
80205de0: 17 45 00 00  	auipc	a0, 4
80205de4: 93 05 05 40  	addi	a1, a0, 1024
80205de8: 13 05 04 fa  	addi	a0, s0, -96
80205dec: 97 20 00 00  	auipc	ra, 2
80205df0: e7 80 60 5a  	jalr	1446(ra)
80205df4: 00 00        	unimp	

0000000080205df6 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h5e1a82b3c5f3019bE.llvm.2118566753648123399>:
80205df6: 41 11        	addi	sp, sp, -16
80205df8: 06 e4        	sd	ra, 8(sp)
80205dfa: 22 e0        	sd	s0, 0(sp)
80205dfc: 00 08        	addi	s0, sp, 16
80205dfe: a2 60        	ld	ra, 8(sp)
80205e00: 02 64        	ld	s0, 0(sp)
80205e02: 41 01        	addi	sp, sp, 16
80205e04: 82 80        	ret

0000000080205e06 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399>:
80205e06: 01 11        	addi	sp, sp, -32
80205e08: 06 ec        	sd	ra, 24(sp)
80205e0a: 22 e8        	sd	s0, 16(sp)
80205e0c: 00 10        	addi	s0, sp, 32
80205e0e: 1b 85 05 00  	sext.w	a0, a1
80205e12: 13 06 00 08  	li	a2, 128
80205e16: 23 26 04 fe  	sw	zero, -20(s0)
80205e1a: 63 76 c5 00  	bgeu	a0, a2, 0x80205e26 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x20>
80205e1e: 23 06 b4 fe  	sb	a1, -20(s0)
80205e22: 05 47        	li	a4, 1
80205e24: 71 a0        	j	0x80205eb0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xaa>
80205e26: 1b d5 b5 00  	srliw	a0, a1, 11
80205e2a: 19 ed        	bnez	a0, 0x80205e48 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x42>
80205e2c: 13 d5 65 00  	srli	a0, a1, 6
80205e30: 13 65 05 0c  	ori	a0, a0, 192
80205e34: 23 06 a4 fe  	sb	a0, -20(s0)
80205e38: 13 f5 f5 03  	andi	a0, a1, 63
80205e3c: 13 05 05 08  	addi	a0, a0, 128
80205e40: a3 06 a4 fe  	sb	a0, -19(s0)
80205e44: 09 47        	li	a4, 2
80205e46: ad a0        	j	0x80205eb0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xaa>
80205e48: 1b d5 05 01  	srliw	a0, a1, 16
80205e4c: 15 e5        	bnez	a0, 0x80205e78 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x72>
80205e4e: 13 d5 c5 00  	srli	a0, a1, 12
80205e52: 13 65 05 0e  	ori	a0, a0, 224
80205e56: 23 06 a4 fe  	sb	a0, -20(s0)
80205e5a: 13 95 45 03  	slli	a0, a1, 52
80205e5e: 69 91        	srli	a0, a0, 58
80205e60: 13 05 05 08  	addi	a0, a0, 128
80205e64: a3 06 a4 fe  	sb	a0, -19(s0)
80205e68: 13 f5 f5 03  	andi	a0, a1, 63
80205e6c: 13 05 05 08  	addi	a0, a0, 128
80205e70: 23 07 a4 fe  	sb	a0, -18(s0)
80205e74: 0d 47        	li	a4, 3
80205e76: 2d a8        	j	0x80205eb0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xaa>
80205e78: 13 95 b5 02  	slli	a0, a1, 43
80205e7c: 75 91        	srli	a0, a0, 61
80205e7e: 13 05 05 0f  	addi	a0, a0, 240
80205e82: 23 06 a4 fe  	sb	a0, -20(s0)
80205e86: 13 95 e5 02  	slli	a0, a1, 46
80205e8a: 69 91        	srli	a0, a0, 58
80205e8c: 13 05 05 08  	addi	a0, a0, 128
80205e90: a3 06 a4 fe  	sb	a0, -19(s0)
80205e94: 13 95 45 03  	slli	a0, a1, 52
80205e98: 69 91        	srli	a0, a0, 58
80205e9a: 13 05 05 08  	addi	a0, a0, 128
80205e9e: 23 07 a4 fe  	sb	a0, -18(s0)
80205ea2: 13 f5 f5 03  	andi	a0, a1, 63
80205ea6: 13 05 05 08  	addi	a0, a0, 128
80205eaa: a3 07 a4 fe  	sb	a0, -17(s0)
80205eae: 11 47        	li	a4, 4
80205eb0: 93 06 c4 fe  	addi	a3, s0, -20
80205eb4: 36 97        	add	a4, a4, a3
80205eb6: 13 03 f0 0d  	li	t1, 223
80205eba: 13 08 00 0f  	li	a6, 240
80205ebe: b7 02 11 00  	lui	t0, 272
80205ec2: 85 48        	li	a7, 1
80205ec4: 01 a8        	j	0x80205ed4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xce>
80205ec6: 85 06        	addi	a3, a3, 1
;         asm!(
80205ec8: 81 45        	li	a1, 0
80205eca: 01 46        	li	a2, 0
80205ecc: 73 00 00 00  	ecall	
80205ed0: 63 8f e6 04  	beq	a3, a4, 0x80205f2e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x128>
80205ed4: 83 85 06 00  	lb	a1, 0(a3)
80205ed8: 13 f5 f5 0f  	andi	a0, a1, 255
80205edc: e3 d5 05 fe  	bgez	a1, 0x80205ec6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xc0>
80205ee0: 03 c6 16 00  	lbu	a2, 1(a3)
80205ee4: 93 75 f5 01  	andi	a1, a0, 31
80205ee8: 13 76 f6 03  	andi	a2, a2, 63
80205eec: 63 77 a3 02  	bgeu	t1, a0, 0x80205f1a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x114>
80205ef0: 83 c7 26 00  	lbu	a5, 2(a3)
80205ef4: 1a 06        	slli	a2, a2, 6
80205ef6: 93 f7 f7 03  	andi	a5, a5, 63
80205efa: 5d 8e        	or	a2, a2, a5
80205efc: 63 64 05 03  	bltu	a0, a6, 0x80205f24 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x11e>
80205f00: 03 c5 36 00  	lbu	a0, 3(a3)
80205f04: f6 15        	slli	a1, a1, 61
80205f06: ad 91        	srli	a1, a1, 43
80205f08: 1a 06        	slli	a2, a2, 6
80205f0a: 13 75 f5 03  	andi	a0, a0, 63
80205f0e: 51 8d        	or	a0, a0, a2
80205f10: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80205f12: 63 0e 55 00  	beq	a0, t0, 0x80205f2e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0x128>
80205f16: 91 06        	addi	a3, a3, 4
80205f18: 45 bf        	j	0x80205ec8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xc2>
80205f1a: 89 06        	addi	a3, a3, 2
80205f1c: 13 95 65 00  	slli	a0, a1, 6
80205f20: 51 8d        	or	a0, a0, a2
80205f22: 5d b7        	j	0x80205ec8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xc2>
80205f24: 8d 06        	addi	a3, a3, 3
80205f26: 13 95 c5 00  	slli	a0, a1, 12
80205f2a: 51 8d        	or	a0, a0, a2
80205f2c: 71 bf        	j	0x80205ec8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.2118566753648123399+0xc2>
80205f2e: 01 45        	li	a0, 0
80205f30: e2 60        	ld	ra, 24(sp)
80205f32: 42 64        	ld	s0, 16(sp)
80205f34: 05 61        	addi	sp, sp, 32
80205f36: 82 80        	ret

0000000080205f38 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7a4d57cd6d1ce835E.llvm.2118566753648123399>:
80205f38: 5d 71        	addi	sp, sp, -80
80205f3a: 86 e4        	sd	ra, 72(sp)
80205f3c: a2 e0        	sd	s0, 64(sp)
80205f3e: 80 08        	addi	s0, sp, 80
80205f40: 90 75        	ld	a2, 40(a1)
80205f42: 94 71        	ld	a3, 32(a1)
80205f44: 98 6d        	ld	a4, 24(a1)
80205f46: 23 34 c4 fe  	sd	a2, -24(s0)
80205f4a: 23 30 d4 fe  	sd	a3, -32(s0)
80205f4e: 23 3c e4 fc  	sd	a4, -40(s0)
80205f52: 90 69        	ld	a2, 16(a1)
80205f54: 94 65        	ld	a3, 8(a1)
80205f56: 8c 61        	ld	a1, 0(a1)
80205f58: 08 61        	ld	a0, 0(a0)
80205f5a: 23 38 c4 fc  	sd	a2, -48(s0)
80205f5e: 23 34 d4 fc  	sd	a3, -56(s0)
80205f62: 23 30 b4 fc  	sd	a1, -64(s0)
80205f66: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080205f6a <.Lpcrel_hi0>:
80205f6a: 17 45 00 00  	auipc	a0, 4
80205f6e: 93 05 e5 2b  	addi	a1, a0, 702
80205f72: 13 05 84 fb  	addi	a0, s0, -72
80205f76: 13 06 04 fc  	addi	a2, s0, -64
80205f7a: 97 30 00 00  	auipc	ra, 3
80205f7e: e7 80 40 a3  	jalr	-1484(ra)
80205f82: a6 60        	ld	ra, 72(sp)
80205f84: 06 64        	ld	s0, 64(sp)
80205f86: 61 61        	addi	sp, sp, 80
80205f88: 82 80        	ret

0000000080205f8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399>:
80205f8a: 41 11        	addi	sp, sp, -16
80205f8c: 06 e4        	sd	ra, 8(sp)
80205f8e: 22 e0        	sd	s0, 0(sp)
80205f90: 00 08        	addi	s0, sp, 16
80205f92: 41 c2        	beqz	a2, 0x80206012 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x88>
80205f94: ae 86        	mv	a3, a1
80205f96: 33 87 c5 00  	add	a4, a1, a2
80205f9a: 13 03 f0 0d  	li	t1, 223
80205f9e: 13 08 00 0f  	li	a6, 240
80205fa2: b7 02 11 00  	lui	t0, 272
80205fa6: 85 48        	li	a7, 1
80205fa8: 01 a8        	j	0x80205fb8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x2e>
80205faa: 85 06        	addi	a3, a3, 1
;         asm!(
80205fac: 81 45        	li	a1, 0
80205fae: 01 46        	li	a2, 0
80205fb0: 73 00 00 00  	ecall	
80205fb4: 63 8f e6 04  	beq	a3, a4, 0x80206012 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x88>
80205fb8: 83 85 06 00  	lb	a1, 0(a3)
80205fbc: 13 f5 f5 0f  	andi	a0, a1, 255
80205fc0: e3 d5 05 fe  	bgez	a1, 0x80205faa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x20>
80205fc4: 03 c6 16 00  	lbu	a2, 1(a3)
80205fc8: 93 75 f5 01  	andi	a1, a0, 31
80205fcc: 13 76 f6 03  	andi	a2, a2, 63
80205fd0: 63 77 a3 02  	bgeu	t1, a0, 0x80205ffe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x74>
80205fd4: 83 c7 26 00  	lbu	a5, 2(a3)
80205fd8: 1a 06        	slli	a2, a2, 6
80205fda: 93 f7 f7 03  	andi	a5, a5, 63
80205fde: 5d 8e        	or	a2, a2, a5
80205fe0: 63 64 05 03  	bltu	a0, a6, 0x80206008 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x7e>
80205fe4: 03 c5 36 00  	lbu	a0, 3(a3)
80205fe8: f6 15        	slli	a1, a1, 61
80205fea: ad 91        	srli	a1, a1, 43
80205fec: 1a 06        	slli	a2, a2, 6
80205fee: 13 75 f5 03  	andi	a0, a0, 63
80205ff2: 51 8d        	or	a0, a0, a2
80205ff4: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80205ff6: 63 0e 55 00  	beq	a0, t0, 0x80206012 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x88>
80205ffa: 91 06        	addi	a3, a3, 4
80205ffc: 45 bf        	j	0x80205fac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x22>
80205ffe: 89 06        	addi	a3, a3, 2
80206000: 13 95 65 00  	slli	a0, a1, 6
80206004: 51 8d        	or	a0, a0, a2
80206006: 5d b7        	j	0x80205fac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x22>
80206008: 8d 06        	addi	a3, a3, 3
8020600a: 13 95 c5 00  	slli	a0, a1, 12
8020600e: 51 8d        	or	a0, a0, a2
80206010: 71 bf        	j	0x80205fac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.2118566753648123399+0x22>
80206012: 01 45        	li	a0, 0
80206014: a2 60        	ld	ra, 8(sp)
80206016: 02 64        	ld	s0, 0(sp)
80206018: 41 01        	addi	sp, sp, 16
8020601a: 82 80        	ret

000000008020601c <switch>:
8020601c: 23 30 15 00  	sd	ra, 0(a0)
80206020: 23 34 25 00  	sd	sp, 8(a0)
80206024: 00 e9        	sd	s0, 16(a0)
80206026: 04 ed        	sd	s1, 24(a0)
80206028: 23 30 25 03  	sd	s2, 32(a0)
8020602c: 23 34 35 03  	sd	s3, 40(a0)
80206030: 23 38 45 03  	sd	s4, 48(a0)
80206034: 23 3c 55 03  	sd	s5, 56(a0)
80206038: 23 30 65 05  	sd	s6, 64(a0)
8020603c: 23 34 75 05  	sd	s7, 72(a0)
80206040: 23 38 85 05  	sd	s8, 80(a0)
80206044: 23 3c 95 05  	sd	s9, 88(a0)
80206048: 23 30 a5 07  	sd	s10, 96(a0)
8020604c: 23 34 b5 07  	sd	s11, 104(a0)
80206050: 83 b0 05 00  	ld	ra, 0(a1)
80206054: 03 b1 85 00  	ld	sp, 8(a1)
80206058: 80 69        	ld	s0, 16(a1)
8020605a: 84 6d        	ld	s1, 24(a1)
8020605c: 03 b9 05 02  	ld	s2, 32(a1)
80206060: 83 b9 85 02  	ld	s3, 40(a1)
80206064: 03 ba 05 03  	ld	s4, 48(a1)
80206068: 83 ba 85 03  	ld	s5, 56(a1)
8020606c: 03 bb 05 04  	ld	s6, 64(a1)
80206070: 83 bb 85 04  	ld	s7, 72(a1)
80206074: 03 bc 05 05  	ld	s8, 80(a1)
80206078: 83 bc 85 05  	ld	s9, 88(a1)
8020607c: 03 bd 05 06  	ld	s10, 96(a1)
80206080: 83 bd 85 06  	ld	s11, 104(a1)
80206084: 82 80        	ret

0000000080206086 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h16317d1f0a306447E>:
80206086: 41 11        	addi	sp, sp, -16
80206088: 06 e4        	sd	ra, 8(sp)
8020608a: 22 e0        	sd	s0, 0(sp)
8020608c: 00 08        	addi	s0, sp, 16
8020608e: 08 61        	ld	a0, 0(a0)
80206090: a2 60        	ld	ra, 8(sp)
80206092: 02 64        	ld	s0, 0(sp)
80206094: 41 01        	addi	sp, sp, 16
80206096: 17 33 00 00  	auipc	t1, 3
8020609a: 67 00 63 90  	jr	-1786(t1)

000000008020609e <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e1c48c315dd058eE>:
8020609e: 41 11        	addi	sp, sp, -16
802060a0: 06 e4        	sd	ra, 8(sp)
802060a2: 22 e0        	sd	s0, 0(sp)
802060a4: 00 08        	addi	s0, sp, 16
802060a6: 10 61        	ld	a2, 0(a0)
802060a8: 14 65        	ld	a3, 8(a0)
802060aa: 2e 87        	mv	a4, a1
802060ac: 32 85        	mv	a0, a2
802060ae: b6 85        	mv	a1, a3
802060b0: 3a 86        	mv	a2, a4
802060b2: a2 60        	ld	ra, 8(sp)
802060b4: 02 64        	ld	s0, 0(sp)
802060b6: 41 01        	addi	sp, sp, 16
802060b8: 17 33 00 00  	auipc	t1, 3
802060bc: 67 00 23 f2  	jr	-222(t1)

00000000802060c0 <_ZN6kernel4lock7pop_off17h5d89f8cac4172ee1E>:
; pub fn pop_off() {
802060c0: 5d 71        	addi	sp, sp, -80
802060c2: 86 e4        	sd	ra, 72(sp)
802060c4: a2 e0        	sd	s0, 64(sp)
802060c6: 26 fc        	sd	s1, 56(sp)
802060c8: 80 08        	addi	s0, sp, 80
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802060ca: 92 84        	mv	s1, tp

00000000802060cc <.Lpcrel_hi2>:
;         self.0.call_once(builder)
802060cc: 17 d5 08 00  	auipc	a0, 141
802060d0: 13 05 45 d9  	addi	a0, a0, -620
802060d4: 97 c0 ff ff  	auipc	ra, 1048572
802060d8: e7 80 c0 f2  	jalr	-212(ra)
802060dc: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802060e0: 63 f3 b4 04  	bgeu	s1, a1, 0x80206126 <.Lpcrel_hi3>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802060e4: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
802060e8: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
802060ea: b1 e9        	bnez	a1, 0x8020613e <.Lpcrel_hi4>
802060ec: 93 05 80 08  	li	a1, 136
;     if mc.noff < 1 {
802060f0: 33 86 b4 02  	mul	a2, s1, a1
802060f4: 2a 96        	add	a2, a2, a0
802060f6: 2c 7e        	ld	a1, 120(a2)
802060f8: 63 5b b0 06  	blez	a1, 0x8020616e <.Lpcrel_hi7>
802060fc: 13 06 86 07  	addi	a2, a2, 120
;     mc.noff -= 1;
80206100: fd 15        	addi	a1, a1, -1
80206102: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
80206104: 81 ed        	bnez	a1, 0x8020611c <.Lpcrel_hi2+0x50>
80206106: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 && mc.intena {
8020610a: b3 85 b4 02  	mul	a1, s1, a1
8020610e: 2e 95        	add	a0, a0, a1
80206110: 03 45 05 08  	lbu	a0, 128(a0)
80206114: 01 c5        	beqz	a0, 0x8020611c <.Lpcrel_hi2+0x50>
80206116: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80206118: 73 20 05 10  	csrs	sstatus, a0
; }
8020611c: a6 60        	ld	ra, 72(sp)
8020611e: 06 64        	ld	s0, 64(sp)
80206120: e2 74        	ld	s1, 56(sp)
80206122: 61 61        	addi	sp, sp, 80
80206124: 82 80        	ret

0000000080206126 <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
80206126: 17 45 00 00  	auipc	a0, 4
8020612a: 13 06 25 42  	addi	a2, a0, 1058
8020612e: 93 05 00 04  	li	a1, 64
80206132: 26 85        	mv	a0, s1
80206134: 97 20 00 00  	auipc	ra, 2
80206138: e7 80 80 2b  	jalr	696(ra)
8020613c: 00 00        	unimp	

000000008020613e <.Lpcrel_hi4>:
8020613e: 17 45 00 00  	auipc	a0, 4
80206142: 13 05 a5 1f  	addi	a0, a0, 506
80206146: 23 3c a4 fa  	sd	a0, -72(s0)
8020614a: 05 45        	li	a0, 1
8020614c: 23 30 a4 fc  	sd	a0, -64(s0)
80206150: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080206154 <.Lpcrel_hi5>:
80206154: 17 45 00 00  	auipc	a0, 4
80206158: 13 05 45 1f  	addi	a0, a0, 500
8020615c: 23 34 a4 fc  	sd	a0, -56(s0)
80206160: 23 38 04 fc  	sd	zero, -48(s0)

0000000080206164 <.Lpcrel_hi6>:
;         panic!("pop_off - interruptible");
80206164: 17 45 00 00  	auipc	a0, 4
80206168: 93 05 45 1f  	addi	a1, a0, 500
8020616c: 05 a8        	j	0x8020619c <.Lpcrel_hi9+0x8>

000000008020616e <.Lpcrel_hi7>:
8020616e: 17 45 00 00  	auipc	a0, 4
80206172: 13 05 a5 20  	addi	a0, a0, 522
80206176: 23 3c a4 fa  	sd	a0, -72(s0)
8020617a: 05 45        	li	a0, 1
8020617c: 23 30 a4 fc  	sd	a0, -64(s0)
80206180: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080206184 <.Lpcrel_hi8>:
80206184: 17 45 00 00  	auipc	a0, 4
80206188: 13 05 45 1c  	addi	a0, a0, 452
8020618c: 23 34 a4 fc  	sd	a0, -56(s0)
80206190: 23 38 04 fc  	sd	zero, -48(s0)

0000000080206194 <.Lpcrel_hi9>:
;         panic!("pop_off");
80206194: 17 45 00 00  	auipc	a0, 4
80206198: 93 05 45 1f  	addi	a1, a0, 500
8020619c: 13 05 84 fb  	addi	a0, s0, -72
802061a0: 97 20 00 00  	auipc	ra, 2
802061a4: e7 80 20 1f  	jalr	498(ra)
802061a8: 00 00        	unimp	

00000000802061aa <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E>:
;     pub fn uvmunmap(&mut self, va: Addr, npages: usize, do_free: bool) {
802061aa: 19 71        	addi	sp, sp, -128
802061ac: 86 fc        	sd	ra, 120(sp)
802061ae: a2 f8        	sd	s0, 112(sp)
802061b0: a6 f4        	sd	s1, 104(sp)
802061b2: ca f0        	sd	s2, 96(sp)
802061b4: ce ec        	sd	s3, 88(sp)
802061b6: d2 e8        	sd	s4, 80(sp)
802061b8: d6 e4        	sd	s5, 72(sp)
802061ba: da e0        	sd	s6, 64(sp)
802061bc: 5e fc        	sd	s7, 56(sp)
802061be: 62 f8        	sd	s8, 48(sp)
802061c0: 00 01        	addi	s0, sp, 128
802061c2: 2e 8c        	mv	s8, a1
;         if va % PGSIZE != 0 {
802061c4: d2 15        	slli	a1, a1, 52
802061c6: 63 96 05 22  	bnez	a1, 0x802063f2 <.Lpcrel_hi3>
802061ca: 32 89        	mv	s2, a2
802061cc: 6d c2        	beqz	a2, 0x802062ae <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
802061ce: 83 39 05 00  	ld	s3, 0(a0)
;             if do_free {
802061d2: a5 ce        	beqz	a3, 0x8020624a <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xa0>
;         if va >= MAXVA {
802061d4: 13 5a cc 00  	srli	s4, s8, 12
802061d8: 85 6a        	lui	s5, 1
802061da: 1b 8b 8a ff  	addiw	s6, s5, -8
802061de: 85 4b        	li	s7, 1
802061e0: 13 55 6c 02  	srli	a0, s8, 38
802061e4: 63 1b 05 18  	bnez	a0, 0x8020637a <.Lpcrel_hi0>
802061e8: 13 55 bc 01  	srli	a0, s8, 27
802061ec: 61 99        	andi	a0, a0, -8
802061ee: 4e 95        	add	a0, a0, s3
;             if (*pte & PTE_V) != 0 {
802061f0: 08 61        	ld	a0, 0(a0)
802061f2: 93 75 15 00  	andi	a1, a0, 1
802061f6: e1 c9        	beqz	a1, 0x802062c6 <.Lpcrel_hi9>
;     (pte >> 10) << 12
802061f8: 29 81        	srli	a0, a0, 10
802061fa: 32 05        	slli	a0, a0, 12
802061fc: 93 55 2c 01  	srli	a1, s8, 18
80206200: b3 f5 65 01  	and	a1, a1, s6
80206204: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
80206206: 08 61        	ld	a0, 0(a0)
80206208: 93 75 15 00  	andi	a1, a0, 1
8020620c: cd cd        	beqz	a1, 0x802062c6 <.Lpcrel_hi9>
;     (pte >> 10) << 12
8020620e: 29 81        	srli	a0, a0, 10
80206210: 32 05        	slli	a0, a0, 12
80206212: 55 c9        	beqz	a0, 0x802062c6 <.Lpcrel_hi9>
80206214: 93 75 fa 1f  	andi	a1, s4, 511
80206218: 8e 05        	slli	a1, a1, 3
8020621a: b3 64 b5 00  	or	s1, a0, a1
;             if *pte & PTE_V == 0 {
8020621e: 88 60        	ld	a0, 0(s1)
80206220: 93 75 15 00  	andi	a1, a0, 1
80206224: f9 cd        	beqz	a1, 0x80206302 <.Lpcrel_hi12>
;     pte & 0x3ff
80206226: 93 75 f5 3f  	andi	a1, a0, 1023
8020622a: 63 8a 75 11  	beq	a1, s7, 0x8020633e <.Lpcrel_hi15>
;     (pte >> 10) << 12
8020622e: 29 81        	srli	a0, a0, 10
80206230: 32 05        	slli	a0, a0, 12
;                 kfree(pa);
80206232: 97 10 00 00  	auipc	ra, 1
80206236: e7 80 e0 87  	jalr	-1922(ra)
;             *pte = 0;
8020623a: 23 b0 04 00  	sd	zero, 0(s1)
;             a += PGSIZE;
8020623e: 56 9c        	add	s8, s8, s5
80206240: 7d 19        	addi	s2, s2, -1
80206242: 05 0a        	addi	s4, s4, 1
80206244: e3 1e 09 f8  	bnez	s2, 0x802061e0 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x36>
80206248: 9d a0        	j	0x802062ae <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
;         if va >= MAXVA {
8020624a: 13 55 cc 00  	srli	a0, s8, 12
8020624e: 85 65        	lui	a1, 1
80206250: 1b 86 85 ff  	addiw	a2, a1, -8
80206254: 85 46        	li	a3, 1
;         if va >= MAXVA {
80206256: 13 57 6c 02  	srli	a4, s8, 38
8020625a: 63 1e 07 14  	bnez	a4, 0x802063b6 <.Lpcrel_hi6>
8020625e: 13 57 bc 01  	srli	a4, s8, 27
80206262: 61 9b        	andi	a4, a4, -8
80206264: 4e 97        	add	a4, a4, s3
;             if (*pte & PTE_V) != 0 {
80206266: 18 63        	ld	a4, 0(a4)
80206268: 93 77 17 00  	andi	a5, a4, 1
8020626c: a9 cf        	beqz	a5, 0x802062c6 <.Lpcrel_hi9>
;     (pte >> 10) << 12
8020626e: 29 83        	srli	a4, a4, 10
80206270: 32 07        	slli	a4, a4, 12
80206272: 93 57 2c 01  	srli	a5, s8, 18
80206276: f1 8f        	and	a5, a5, a2
80206278: 5d 8f        	or	a4, a4, a5
;             if (*pte & PTE_V) != 0 {
8020627a: 18 63        	ld	a4, 0(a4)
8020627c: 93 77 17 00  	andi	a5, a4, 1
80206280: b9 c3        	beqz	a5, 0x802062c6 <.Lpcrel_hi9>
;     (pte >> 10) << 12
80206282: 29 83        	srli	a4, a4, 10
80206284: 32 07        	slli	a4, a4, 12
80206286: 21 c3        	beqz	a4, 0x802062c6 <.Lpcrel_hi9>
80206288: 93 77 f5 1f  	andi	a5, a0, 511
8020628c: 8e 07        	slli	a5, a5, 3
8020628e: 5d 8f        	or	a4, a4, a5
;             if *pte & PTE_V == 0 {
80206290: 04 63        	ld	s1, 0(a4)
80206292: 93 f7 14 00  	andi	a5, s1, 1
80206296: b5 c7        	beqz	a5, 0x80206302 <.Lpcrel_hi12>
;     pte & 0x3ff
80206298: 93 f7 f4 3f  	andi	a5, s1, 1023
;             if pte_flags(*pte) == PTE_V {
8020629c: 63 81 d7 0a  	beq	a5, a3, 0x8020633e <.Lpcrel_hi15>
;             *pte = 0;
802062a0: 23 30 07 00  	sd	zero, 0(a4)
;             a += PGSIZE;
802062a4: 2e 9c        	add	s8, s8, a1
802062a6: 7d 19        	addi	s2, s2, -1
802062a8: 05 05        	addi	a0, a0, 1
802062aa: e3 16 09 fa  	bnez	s2, 0x80206256 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xac>
;     }
802062ae: e6 70        	ld	ra, 120(sp)
802062b0: 46 74        	ld	s0, 112(sp)
802062b2: a6 74        	ld	s1, 104(sp)
802062b4: 06 79        	ld	s2, 96(sp)
802062b6: e6 69        	ld	s3, 88(sp)
802062b8: 46 6a        	ld	s4, 80(sp)
802062ba: a6 6a        	ld	s5, 72(sp)
802062bc: 06 6b        	ld	s6, 64(sp)
802062be: e2 7b        	ld	s7, 56(sp)
802062c0: 42 7c        	ld	s8, 48(sp)
802062c2: 09 61        	addi	sp, sp, 128
802062c4: 82 80        	ret

00000000802062c6 <.Lpcrel_hi9>:
802062c6: 17 45 00 00  	auipc	a0, 4
802062ca: 13 05 25 38  	addi	a0, a0, 898
802062ce: 23 30 a4 f8  	sd	a0, -128(s0)
802062d2: 05 45        	li	a0, 1
802062d4: 23 34 a4 f8  	sd	a0, -120(s0)
802062d8: 23 30 04 fa  	sd	zero, -96(s0)

00000000802062dc <.Lpcrel_hi10>:
802062dc: 17 45 00 00  	auipc	a0, 4
802062e0: 13 05 c5 2a  	addi	a0, a0, 684
802062e4: 23 38 a4 f8  	sd	a0, -112(s0)
802062e8: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802062ec <.Lpcrel_hi11>:
;                 panic!("uvmunmap: walk");
802062ec: 17 45 00 00  	auipc	a0, 4
802062f0: 93 05 c5 36  	addi	a1, a0, 876
802062f4: 13 05 04 f8  	addi	a0, s0, -128
802062f8: 97 20 00 00  	auipc	ra, 2
802062fc: e7 80 a0 09  	jalr	154(ra)
80206300: 00 00        	unimp	

0000000080206302 <.Lpcrel_hi12>:
80206302: 17 45 00 00  	auipc	a0, 4
80206306: 13 05 e5 30  	addi	a0, a0, 782
8020630a: 23 30 a4 f8  	sd	a0, -128(s0)
8020630e: 05 45        	li	a0, 1
80206310: 23 34 a4 f8  	sd	a0, -120(s0)
80206314: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206318 <.Lpcrel_hi13>:
80206318: 17 45 00 00  	auipc	a0, 4
8020631c: 13 05 05 27  	addi	a0, a0, 624
80206320: 23 38 a4 f8  	sd	a0, -112(s0)
80206324: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080206328 <.Lpcrel_hi14>:
;                 panic!("uvmunmap: not maapped");
80206328: 17 45 00 00  	auipc	a0, 4
8020632c: 93 05 85 2f  	addi	a1, a0, 760
80206330: 13 05 04 f8  	addi	a0, s0, -128
80206334: 97 20 00 00  	auipc	ra, 2
80206338: e7 80 e0 05  	jalr	94(ra)
8020633c: 00 00        	unimp	

000000008020633e <.Lpcrel_hi15>:
8020633e: 17 45 00 00  	auipc	a0, 4
80206342: 13 05 25 29  	addi	a0, a0, 658
80206346: 23 30 a4 f8  	sd	a0, -128(s0)
8020634a: 05 45        	li	a0, 1
8020634c: 23 34 a4 f8  	sd	a0, -120(s0)
80206350: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206354 <.Lpcrel_hi16>:
80206354: 17 45 00 00  	auipc	a0, 4
80206358: 13 05 45 23  	addi	a0, a0, 564
8020635c: 23 38 a4 f8  	sd	a0, -112(s0)
80206360: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080206364 <.Lpcrel_hi17>:
;                 panic!("uvmunmap: not a leaf");
80206364: 17 45 00 00  	auipc	a0, 4
80206368: 93 05 c5 27  	addi	a1, a0, 636
8020636c: 13 05 04 f8  	addi	a0, s0, -128
80206370: 97 20 00 00  	auipc	ra, 2
80206374: e7 80 20 02  	jalr	34(ra)
80206378: 00 00        	unimp	

000000008020637a <.Lpcrel_hi0>:
8020637a: 17 45 00 00  	auipc	a0, 4
8020637e: 13 05 e5 32  	addi	a0, a0, 814
80206382: 23 30 a4 f8  	sd	a0, -128(s0)
80206386: 05 45        	li	a0, 1
80206388: 23 34 a4 f8  	sd	a0, -120(s0)
8020638c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206390 <.Lpcrel_hi1>:
80206390: 17 45 00 00  	auipc	a0, 4
80206394: 13 05 85 32  	addi	a0, a0, 808
80206398: 23 38 a4 f8  	sd	a0, -112(s0)
8020639c: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802063a0 <.Lpcrel_hi2>:
;             panic!("walk");
802063a0: 17 45 00 00  	auipc	a0, 4
802063a4: 93 05 05 33  	addi	a1, a0, 816
802063a8: 13 05 04 f8  	addi	a0, s0, -128
802063ac: 97 20 00 00  	auipc	ra, 2
802063b0: e7 80 60 fe  	jalr	-26(ra)
802063b4: 00 00        	unimp	

00000000802063b6 <.Lpcrel_hi6>:
802063b6: 17 45 00 00  	auipc	a0, 4
802063ba: 13 05 25 2f  	addi	a0, a0, 754
802063be: 23 30 a4 f8  	sd	a0, -128(s0)
802063c2: 05 45        	li	a0, 1
802063c4: 23 34 a4 f8  	sd	a0, -120(s0)
802063c8: 23 30 04 fa  	sd	zero, -96(s0)

00000000802063cc <.Lpcrel_hi7>:
802063cc: 17 45 00 00  	auipc	a0, 4
802063d0: 13 05 c5 2e  	addi	a0, a0, 748
802063d4: 23 38 a4 f8  	sd	a0, -112(s0)
802063d8: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802063dc <.Lpcrel_hi8>:
;             panic!("walk");
802063dc: 17 45 00 00  	auipc	a0, 4
802063e0: 93 05 45 2f  	addi	a1, a0, 756
802063e4: 13 05 04 f8  	addi	a0, s0, -128
802063e8: 97 20 00 00  	auipc	ra, 2
802063ec: e7 80 a0 fa  	jalr	-86(ra)
802063f0: 00 00        	unimp	

00000000802063f2 <.Lpcrel_hi3>:
802063f2: 17 45 00 00  	auipc	a0, 4
802063f6: 13 05 65 18  	addi	a0, a0, 390
802063fa: 23 30 a4 f8  	sd	a0, -128(s0)
802063fe: 05 45        	li	a0, 1
80206400: 23 34 a4 f8  	sd	a0, -120(s0)
80206404: 23 30 04 fa  	sd	zero, -96(s0)

0000000080206408 <.Lpcrel_hi4>:
80206408: 17 45 00 00  	auipc	a0, 4
8020640c: 13 05 05 18  	addi	a0, a0, 384
80206410: 23 38 a4 f8  	sd	a0, -112(s0)
80206414: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080206418 <.Lpcrel_hi5>:
;             panic!("uvmunmap: not aligned");
80206418: 17 45 00 00  	auipc	a0, 4
8020641c: 93 05 85 18  	addi	a1, a0, 392
80206420: 13 05 04 f8  	addi	a0, s0, -128
80206424: 97 20 00 00  	auipc	ra, 2
80206428: e7 80 e0 f6  	jalr	-146(ra)
8020642c: 00 00        	unimp	

000000008020642e <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.7660072547913384344>:
;     pub fn freewalk(&mut self) {
8020642e: 1d 71        	addi	sp, sp, -96
80206430: 86 ec        	sd	ra, 88(sp)
80206432: a2 e8        	sd	s0, 80(sp)
80206434: a6 e4        	sd	s1, 72(sp)
80206436: ca e0        	sd	s2, 64(sp)
80206438: 4e fc        	sd	s3, 56(sp)
8020643a: 52 f8        	sd	s4, 48(sp)
8020643c: 80 10        	addi	s0, sp, 96
8020643e: 03 39 05 00  	ld	s2, 0(a0)
80206442: 13 0a 00 20  	li	s4, 512
80206446: 85 49        	li	s3, 1
80206448: ca 84        	mv	s1, s2
8020644a: 0d a0        	j	0x8020646c <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.7660072547913384344+0x3e>
;     (pte >> 10) << 12
8020644c: 29 81        	srli	a0, a0, 10
8020644e: 32 05        	slli	a0, a0, 12
;                 let mut child = Self::from_pagetable(PagetableT::addr2pagetablet(pte2pa(*pte)));
80206450: 23 30 a4 fa  	sd	a0, -96(s0)
;                 child.freewalk();
80206454: 13 05 04 fa  	addi	a0, s0, -96
80206458: 97 00 00 00  	auipc	ra, 0
8020645c: e7 80 60 fd  	jalr	-42(ra)
;                 *pte = 0;
80206460: 23 b0 04 00  	sd	zero, 0(s1)
80206464: 7d 1a        	addi	s4, s4, -1
80206466: a1 04        	addi	s1, s1, 8
80206468: 63 07 0a 04  	beqz	s4, 0x802064b6 <.Lpcrel_hi26+0x16>
;             if (*pte & PTE_V) != 0 && (*pte & (PTE_R | PTE_W | PTE_X) == 0) {
8020646c: 88 60        	ld	a0, 0(s1)
8020646e: 93 75 f5 00  	andi	a1, a0, 15
80206472: e3 8d 35 fd  	beq	a1, s3, 0x8020644c <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.7660072547913384344+0x1e>
80206476: 05 89        	andi	a0, a0, 1
;             } else if (*pte & PTE_V) != 0 {
80206478: 75 d5        	beqz	a0, 0x80206464 <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.7660072547913384344+0x36>

000000008020647a <.Lpcrel_hi24>:
8020647a: 17 45 00 00  	auipc	a0, 4
8020647e: 13 05 65 20  	addi	a0, a0, 518
80206482: 23 30 a4 fa  	sd	a0, -96(s0)
80206486: 05 45        	li	a0, 1
80206488: 23 34 a4 fa  	sd	a0, -88(s0)
8020648c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206490 <.Lpcrel_hi25>:
80206490: 17 45 00 00  	auipc	a0, 4
80206494: 13 05 85 0f  	addi	a0, a0, 248
80206498: 23 38 a4 fa  	sd	a0, -80(s0)
8020649c: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802064a0 <.Lpcrel_hi26>:
;                 panic!("freewalk: leaf");
802064a0: 17 45 00 00  	auipc	a0, 4
802064a4: 93 05 05 1f  	addi	a1, a0, 496
802064a8: 13 05 04 fa  	addi	a0, s0, -96
802064ac: 97 20 00 00  	auipc	ra, 2
802064b0: e7 80 60 ee  	jalr	-282(ra)
802064b4: 00 00        	unimp	
;         kfree(self.pagetable.pagetablet2addr());
802064b6: 4a 85        	mv	a0, s2
802064b8: e6 60        	ld	ra, 88(sp)
802064ba: 46 64        	ld	s0, 80(sp)
802064bc: a6 64        	ld	s1, 72(sp)
802064be: 06 69        	ld	s2, 64(sp)
802064c0: e2 79        	ld	s3, 56(sp)
802064c2: 42 7a        	ld	s4, 48(sp)
802064c4: 25 61        	addi	sp, sp, 96
802064c6: 17 03 00 00  	auipc	t1, 0
802064ca: 67 00 a3 5e  	jr	1514(t1)

00000000802064ce <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE>:
;     pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
802064ce: 1d 71        	addi	sp, sp, -96
802064d0: 86 ec        	sd	ra, 88(sp)
802064d2: a2 e8        	sd	s0, 80(sp)
802064d4: a6 e4        	sd	s1, 72(sp)
802064d6: ca e0        	sd	s2, 64(sp)
802064d8: 4e fc        	sd	s3, 56(sp)
802064da: 80 10        	addi	s0, sp, 96
802064dc: ae 89        	mv	s3, a1
;         if va >= MAXVA {
802064de: 99 91        	srli	a1, a1, 38
802064e0: c5 ed        	bnez	a1, 0x80206598 <.Lpcrel_hi0>
;         self.data as Addr
802064e2: 04 61        	ld	s1, 0(a0)
802064e4: 13 d5 b9 01  	srli	a0, s3, 27
802064e8: 61 99        	andi	a0, a0, -8
802064ea: aa 94        	add	s1, s1, a0
;             if (*pte & PTE_V) != 0 {
802064ec: 88 60        	ld	a0, 0(s1)
802064ee: 93 75 15 00  	andi	a1, a0, 1
;                 if !alloc {
802064f2: 05 c6        	beqz	a2, 0x8020651a <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x4c>
;             if (*pte & PTE_V) != 0 {
802064f4: b1 e1        	bnez	a1, 0x80206538 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x6a>
;                 let pa = kalloc();
802064f6: 97 00 00 00  	auipc	ra, 0
802064fa: e7 80 00 39  	jalr	912(ra)
;                 if pa == 0 {
802064fe: 51 c5        	beqz	a0, 0x8020658a <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
80206500: 2a 89        	mv	s2, a0
80206502: 05 66        	lui	a2, 1
80206504: 81 45        	li	a1, 0
80206506: 97 30 00 00  	auipc	ra, 3
8020650a: e7 80 c0 18  	jalr	396(ra)
;     (pa >> 12) << 10
8020650e: 13 55 c9 00  	srli	a0, s2, 12
80206512: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80206514: 05 05        	addi	a0, a0, 1
80206516: 88 e0        	sd	a0, 0(s1)
80206518: 1d a0        	j	0x8020653e <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x70>
;             if (*pte & PTE_V) != 0 {
8020651a: 89 cd        	beqz	a1, 0x80206534 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x66>
;     (pte >> 10) << 12
8020651c: 29 81        	srli	a0, a0, 10
8020651e: 32 05        	slli	a0, a0, 12
80206520: 93 d5 29 01  	srli	a1, s3, 18
80206524: 05 66        	lui	a2, 1
80206526: 61 36        	addiw	a2, a2, -8
80206528: f1 8d        	and	a1, a1, a2
8020652a: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
8020652c: 08 61        	ld	a0, 0(a0)
8020652e: 93 75 15 00  	andi	a1, a0, 1
80206532: b9 e1        	bnez	a1, 0x80206578 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xaa>
80206534: 01 45        	li	a0, 0
80206536: 91 a8        	j	0x8020658a <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
;     (pte >> 10) << 12
80206538: 29 81        	srli	a0, a0, 10
8020653a: 13 19 c5 00  	slli	s2, a0, 12
8020653e: 13 d5 29 01  	srli	a0, s3, 18
80206542: 85 65        	lui	a1, 1
80206544: e1 35        	addiw	a1, a1, -8
80206546: 6d 8d        	and	a0, a0, a1
80206548: b3 04 a9 00  	add	s1, s2, a0
;             if (*pte & PTE_V) != 0 {
8020654c: 88 60        	ld	a0, 0(s1)
8020654e: 93 75 15 00  	andi	a1, a0, 1
80206552: 9d e1        	bnez	a1, 0x80206578 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xaa>
;                 let pa = kalloc();
80206554: 97 00 00 00  	auipc	ra, 0
80206558: e7 80 20 33  	jalr	818(ra)
;                 if pa == 0 {
8020655c: 1d c5        	beqz	a0, 0x8020658a <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
8020655e: 2a 89        	mv	s2, a0
80206560: 05 66        	lui	a2, 1
80206562: 81 45        	li	a1, 0
80206564: 97 30 00 00  	auipc	ra, 3
80206568: e7 80 e0 12  	jalr	302(ra)
;     (pa >> 12) << 10
8020656c: 13 55 c9 00  	srli	a0, s2, 12
80206570: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80206572: 05 05        	addi	a0, a0, 1
80206574: 88 e0        	sd	a0, 0(s1)
80206576: 21 a0        	j	0x8020657e <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xb0>
;                 pagetable = PagetableT::addr2pagetablet(pte2pa(*pte));
80206578: 29 81        	srli	a0, a0, 10
8020657a: 13 19 c5 00  	slli	s2, a0, 12
8020657e: 13 d5 99 00  	srli	a0, s3, 9
80206582: 85 65        	lui	a1, 1
80206584: e1 35        	addiw	a1, a1, -8
80206586: 6d 8d        	and	a0, a0, a1
80206588: 4a 95        	add	a0, a0, s2
;     }
8020658a: e6 60        	ld	ra, 88(sp)
8020658c: 46 64        	ld	s0, 80(sp)
8020658e: a6 64        	ld	s1, 72(sp)
80206590: 06 69        	ld	s2, 64(sp)
80206592: e2 79        	ld	s3, 56(sp)
80206594: 25 61        	addi	sp, sp, 96
80206596: 82 80        	ret

0000000080206598 <.Lpcrel_hi0>:
80206598: 17 45 00 00  	auipc	a0, 4
8020659c: 13 05 05 11  	addi	a0, a0, 272
802065a0: 23 34 a4 fa  	sd	a0, -88(s0)
802065a4: 05 45        	li	a0, 1
802065a6: 23 38 a4 fa  	sd	a0, -80(s0)
802065aa: 23 34 04 fc  	sd	zero, -56(s0)

00000000802065ae <.Lpcrel_hi1>:
802065ae: 17 45 00 00  	auipc	a0, 4
802065b2: 13 05 a5 10  	addi	a0, a0, 266
802065b6: 23 3c a4 fa  	sd	a0, -72(s0)
802065ba: 23 30 04 fc  	sd	zero, -64(s0)

00000000802065be <.Lpcrel_hi2>:
;             panic!("walk");
802065be: 17 45 00 00  	auipc	a0, 4
802065c2: 93 05 25 11  	addi	a1, a0, 274
802065c6: 13 05 84 fa  	addi	a0, s0, -88
802065ca: 97 20 00 00  	auipc	ra, 2
802065ce: e7 80 80 dc  	jalr	-568(ra)
802065d2: 00 00        	unimp	

00000000802065d4 <_ZN6kernel6memory6kalloc5kinit17h29f2a10b557ae6cbE>:
; pub fn kinit() {
802065d4: 35 71        	addi	sp, sp, -160
802065d6: 06 ed        	sd	ra, 152(sp)
802065d8: 22 e9        	sd	s0, 144(sp)
802065da: 26 e5        	sd	s1, 136(sp)
802065dc: 4a e1        	sd	s2, 128(sp)
802065de: ce fc        	sd	s3, 120(sp)
802065e0: d2 f8        	sd	s4, 112(sp)
802065e2: d6 f4        	sd	s5, 104(sp)
802065e4: da f0        	sd	s6, 96(sp)
802065e6: de ec        	sd	s7, 88(sp)
802065e8: e2 e8        	sd	s8, 80(sp)
802065ea: e6 e4        	sd	s9, 72(sp)
802065ec: ea e0        	sd	s10, 64(sp)
802065ee: 00 11        	addi	s0, sp, 160
802065f0: 0f 00 30 03  	fence	rw, rw

00000000802065f4 <.Lpcrel_hi1>:
802065f4: 17 f5 08 00  	auipc	a0, 143
802065f8: 93 0a c5 a7  	addi	s5, a0, -1412
802065fc: 03 b5 0a 03  	ld	a0, 48(s5)
80206600: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206604: 39 e9        	bnez	a0, 0x8020665a <.Lpcrel_hi2+0x3a>
80206606: 93 85 0a 03  	addi	a1, s5, 48
8020660a: 05 46        	li	a2, 1
8020660c: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80206610: 29 e5        	bnez	a0, 0x8020665a <.Lpcrel_hi2+0x3a>
80206612: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80206616: fd fa        	bnez	a3, 0x8020660c <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80206618: 23 34 b4 f6  	sd	a1, -152(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020661c: 23 b0 ca 00  	sd	a2, 0(s5)

0000000080206620 <.Lpcrel_hi2>:
80206620: 17 45 00 00  	auipc	a0, 4
80206624: 13 05 f5 ab  	addi	a0, a0, -1345
80206628: 23 b4 aa 00  	sd	a0, 8(s5)
8020662c: 11 45        	li	a0, 4
8020662e: 23 b8 aa 00  	sd	a0, 16(s5)
80206632: 23 bc 0a 00  	sd	zero, 24(s5)
80206636: 23 80 0a 02  	sb	zero, 32(s5)
8020663a: 23 b4 0a 02  	sd	zero, 40(s5)
;                 finish.panicked = false;
8020663e: 23 08 04 f6  	sb	zero, -144(s0)
80206642: 0f 00 10 03  	fence	rw, w
80206646: 09 45        	li	a0, 2
80206648: 23 b8 aa 02  	sd	a0, 48(s5)
8020664c: 13 05 84 f6  	addi	a0, s0, -152
80206650: 97 10 00 00  	auipc	ra, 1
80206654: e7 80 20 77  	jalr	1906(ra)
80206658: 0d a0        	j	0x8020667a <.Lpcrel_hi7>
8020665a: 85 45        	li	a1, 1
;             match status {
8020665c: 63 1c b5 00  	bne	a0, a1, 0x80206674 <.Lpcrel_hi2+0x54>
80206660: 0f 00 00 01  	fence	w, 0
80206664: 0f 00 30 03  	fence	rw, rw
80206668: 03 b5 0a 03  	ld	a0, 48(s5)
8020666c: 0f 00 30 02  	fence	r, rw
;             match status {
80206670: e3 08 b5 fe  	beq	a0, a1, 0x80206660 <.Lpcrel_hi2+0x40>
80206674: 89 45        	li	a1, 2
;             match status {
80206676: 63 19 b5 12  	bne	a0, a1, 0x802067a8 <.Lpcrel_hi12+0x18>

000000008020667a <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
8020667a: 17 05 29 00  	auipc	a0, 656
8020667e: 13 05 65 98  	addi	a0, a0, -1658
80206682: 85 65        	lui	a1, 1
80206684: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80206686: aa 95        	add	a1, a1, a0
80206688: 7d 76        	lui	a2, 1048575
8020668a: f1 8d        	and	a1, a1, a2
8020668c: 37 86 08 00  	lui	a2, 136
80206690: 7d 36        	addiw	a2, a2, -1
80206692: 32 06        	slli	a2, a2, 12
80206694: 7d 16        	addi	a2, a2, -1
80206696: 63 6b b6 08  	bltu	a2, a1, 0x8020672c <.Lpcrel_hi8+0x7e>
8020669a: 63 e8 a5 1a  	bltu	a1, a0, 0x8020684a <.Lpcrel_hi9>
8020669e: 05 6b        	lui	s6, 1
802066a0: 9b 05 fb ff  	addiw	a1, s6, -1
802066a4: 2e 95        	add	a0, a0, a1
802066a6: fd 75        	lui	a1, 1048575
802066a8: 6d 8d        	and	a0, a0, a1
802066aa: 13 89 8a 00  	addi	s2, s5, 8

00000000802066ae <.Lpcrel_hi8>:
802066ae: 97 c5 08 00  	auipc	a1, 140
802066b2: 93 89 25 7b  	addi	s3, a1, 1970
802066b6: 93 0b 00 04  	li	s7, 64
802066ba: 13 0c 80 08  	li	s8, 136
802066be: b7 fc ff 43  	lui	s9, 278527
802066c2: 86 0c        	slli	s9, s9, 1
802066c4: 2a 8a        	mv	s4, a0
802066c6: 85 45        	li	a1, 1
802066c8: 05 66        	lui	a2, 1
802066ca: 97 30 00 00  	auipc	ra, 3
802066ce: e7 80 80 fc  	jalr	-56(ra)
;         self.lock.acquire();
802066d2: 4a 85        	mv	a0, s2
802066d4: 97 f0 ff ff  	auipc	ra, 1048575
802066d8: e7 80 c0 5b  	jalr	1468(ra)
;         unsafe { (*pa).next = self.freelist }
802066dc: 03 b5 8a 02  	ld	a0, 40(s5)
802066e0: 23 30 aa 00  	sd	a0, 0(s4)
;         self.freelist = pa;
802066e4: 23 b4 4a 03  	sd	s4, 40(s5)
802066e8: 03 85 0a 02  	lb	a0, 32(s5)
802066ec: 71 cd        	beqz	a0, 0x802067c8 <.Lpcrel_hi13>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802066ee: 03 bd 8a 01  	ld	s10, 24(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802066f2: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
802066f4: 4e 85        	mv	a0, s3
802066f6: 97 c0 ff ff  	auipc	ra, 1048572
802066fa: e7 80 a0 90  	jalr	-1782(ra)
802066fe: 63 f9 74 09  	bgeu	s1, s7, 0x80206790 <.Lpcrel_hi12>
; 	&mut CPUS.get_mut()[id]
80206702: b3 85 84 03  	mul	a1, s1, s8
80206706: 2e 95        	add	a0, a0, a1
80206708: 63 10 ad 0c  	bne	s10, a0, 0x802067c8 <.Lpcrel_hi13>
;         self.cpu = null_mut();
8020670c: 23 bc 0a 00  	sd	zero, 24(s5)
80206710: 0f 00 30 03  	fence	rw, rw
80206714: 0f 00 10 03  	fence	rw, w
80206718: 23 80 0a 02  	sb	zero, 32(s5)
;         pop_off();
8020671c: 97 00 00 00  	auipc	ra, 0
80206720: e7 80 40 9a  	jalr	-1628(ra)
;             pa += PGSIZE;
80206724: 33 05 6a 01  	add	a0, s4, s6
;         while pa < pa_end - PGSIZE {
80206728: e3 6e 9a f9  	bltu	s4, s9, 0x802066c4 <.Lpcrel_hi8+0x16>
8020672c: 13 05 84 f9  	addi	a0, s0, -104
;     Stdout.write_fmt(args).unwrap();
80206730: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080206734 <.Lpcrel_hi16>:
80206734: 17 45 00 00  	auipc	a0, 4
80206738: 13 05 c5 07  	addi	a0, a0, 124
8020673c: 23 34 a4 f6  	sd	a0, -152(s0)
80206740: 05 45        	li	a0, 1
80206742: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080206746 <.Lpcrel_hi17>:
80206746: 17 45 00 00  	auipc	a0, 4
8020674a: 13 05 a5 02  	addi	a0, a0, 42
8020674e: 23 3c a4 f6  	sd	a0, -136(s0)
80206752: 23 30 04 f8  	sd	zero, -128(s0)
80206756: 23 34 04 f8  	sd	zero, -120(s0)

000000008020675a <.Lpcrel_hi18>:
8020675a: 17 45 00 00  	auipc	a0, 4
8020675e: 93 05 e5 ac  	addi	a1, a0, -1330
80206762: 13 05 04 f6  	addi	a0, s0, -160
80206766: 13 06 84 f6  	addi	a2, s0, -152
8020676a: 97 20 00 00  	auipc	ra, 2
8020676e: e7 80 40 24  	jalr	580(ra)
80206772: 5d e5        	bnez	a0, 0x80206820 <.Lpcrel_hi19>
; }
80206774: ea 60        	ld	ra, 152(sp)
80206776: 4a 64        	ld	s0, 144(sp)
80206778: aa 64        	ld	s1, 136(sp)
8020677a: 0a 69        	ld	s2, 128(sp)
8020677c: e6 79        	ld	s3, 120(sp)
8020677e: 46 7a        	ld	s4, 112(sp)
80206780: a6 7a        	ld	s5, 104(sp)
80206782: 06 7b        	ld	s6, 96(sp)
80206784: e6 6b        	ld	s7, 88(sp)
80206786: 46 6c        	ld	s8, 80(sp)
80206788: a6 6c        	ld	s9, 72(sp)
8020678a: 06 6d        	ld	s10, 64(sp)
8020678c: 0d 61        	addi	sp, sp, 160
8020678e: 82 80        	ret

0000000080206790 <.Lpcrel_hi12>:
; 	&mut CPUS.get_mut()[id]
80206790: 17 45 00 00  	auipc	a0, 4
80206794: 13 06 85 db  	addi	a2, a0, -584
80206798: 93 05 00 04  	li	a1, 64
8020679c: 26 85        	mv	a0, s1
8020679e: 97 20 00 00  	auipc	ra, 2
802067a2: e7 80 e0 c4  	jalr	-946(ra)
802067a6: 00 00        	unimp	
;             match status {
802067a8: 31 ed        	bnez	a0, 0x80206804 <.Lpcrel_hi5>

00000000802067aa <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
802067aa: 17 45 00 00  	auipc	a0, 4
802067ae: 13 05 e5 8d  	addi	a0, a0, -1826

00000000802067b2 <.Lpcrel_hi4>:
802067b2: 97 45 00 00  	auipc	a1, 4
802067b6: 13 86 e5 8f  	addi	a2, a1, -1794
802067ba: 93 05 80 02  	li	a1, 40
802067be: 97 20 00 00  	auipc	ra, 2
802067c2: e7 80 20 c0  	jalr	-1022(ra)
802067c6: 00 00        	unimp	

00000000802067c8 <.Lpcrel_hi13>:
802067c8: 17 45 00 00  	auipc	a0, 4
802067cc: 13 05 85 a3  	addi	a0, a0, -1480
802067d0: 23 34 a4 f6  	sd	a0, -152(s0)
802067d4: 05 45        	li	a0, 1
802067d6: 23 38 a4 f6  	sd	a0, -144(s0)
802067da: 23 34 04 f8  	sd	zero, -120(s0)

00000000802067de <.Lpcrel_hi14>:
802067de: 17 45 00 00  	auipc	a0, 4
802067e2: 13 05 25 9d  	addi	a0, a0, -1582
802067e6: 23 3c a4 f6  	sd	a0, -136(s0)
802067ea: 23 30 04 f8  	sd	zero, -128(s0)

00000000802067ee <.Lpcrel_hi15>:
;             panic!("release");
802067ee: 17 45 00 00  	auipc	a0, 4
802067f2: 93 05 25 a2  	addi	a1, a0, -1502
802067f6: 13 05 84 f6  	addi	a0, s0, -152
802067fa: 97 20 00 00  	auipc	ra, 2
802067fe: e7 80 80 b9  	jalr	-1128(ra)
80206802: 00 00        	unimp	

0000000080206804 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
80206804: 17 35 00 00  	auipc	a0, 3
80206808: 13 05 c5 7f  	addi	a0, a0, 2044

000000008020680c <.Lpcrel_hi6>:
8020680c: 97 45 00 00  	auipc	a1, 4
80206810: 13 86 45 86  	addi	a2, a1, -1948
80206814: c5 45        	li	a1, 17
80206816: 97 20 00 00  	auipc	ra, 2
8020681a: e7 80 a0 ba  	jalr	-1110(ra)
8020681e: 00 00        	unimp	

0000000080206820 <.Lpcrel_hi19>:
80206820: 17 45 00 00  	auipc	a0, 4
80206824: 13 05 85 a3  	addi	a0, a0, -1480

0000000080206828 <.Lpcrel_hi20>:
80206828: 97 45 00 00  	auipc	a1, 4
8020682c: 93 86 05 a6  	addi	a3, a1, -1440

0000000080206830 <.Lpcrel_hi21>:
80206830: 97 45 00 00  	auipc	a1, 4
80206834: 13 87 85 a8  	addi	a4, a1, -1400
80206838: 93 05 b0 02  	li	a1, 43
8020683c: 13 06 84 f9  	addi	a2, s0, -104
80206840: 97 20 00 00  	auipc	ra, 2
80206844: e7 80 c0 be  	jalr	-1044(ra)
80206848: 00 00        	unimp	

000000008020684a <.Lpcrel_hi9>:
8020684a: 17 45 00 00  	auipc	a0, 4
8020684e: 13 05 65 f1  	addi	a0, a0, -234
80206852: 23 34 a4 f6  	sd	a0, -152(s0)
80206856: 05 45        	li	a0, 1
80206858: 23 38 a4 f6  	sd	a0, -144(s0)
8020685c: 23 34 04 f8  	sd	zero, -120(s0)

0000000080206860 <.Lpcrel_hi10>:
80206860: 17 45 00 00  	auipc	a0, 4
80206864: 13 05 05 f1  	addi	a0, a0, -240
80206868: 23 3c a4 f6  	sd	a0, -136(s0)
8020686c: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206870 <.Lpcrel_hi11>:
;             panic!("kfree");
80206870: 17 45 00 00  	auipc	a0, 4
80206874: 93 05 85 f1  	addi	a1, a0, -232
80206878: 13 05 84 f6  	addi	a0, s0, -152
8020687c: 97 20 00 00  	auipc	ra, 2
80206880: e7 80 60 b1  	jalr	-1258(ra)
80206884: 00 00        	unimp	

0000000080206886 <_ZN6kernel6memory6kalloc6kalloc17hce46345e445e36aeE>:
; pub fn kalloc() -> Addr {
80206886: 1d 71        	addi	sp, sp, -96
80206888: 86 ec        	sd	ra, 88(sp)
8020688a: a2 e8        	sd	s0, 80(sp)
8020688c: a6 e4        	sd	s1, 72(sp)
8020688e: ca e0        	sd	s2, 64(sp)
80206890: 4e fc        	sd	s3, 56(sp)
80206892: 52 f8        	sd	s4, 48(sp)
80206894: 80 10        	addi	s0, sp, 96
80206896: 0f 00 30 03  	fence	rw, rw

000000008020689a <.Lpcrel_hi22>:
8020689a: 17 e5 08 00  	auipc	a0, 142
8020689e: 93 04 65 7d  	addi	s1, a0, 2006
802068a2: 88 78        	ld	a0, 48(s1)
802068a4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802068a8: 39 e5        	bnez	a0, 0x802068f6 <.Lpcrel_hi23+0x34>
802068aa: 93 85 04 03  	addi	a1, s1, 48
802068ae: 05 46        	li	a2, 1
802068b0: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802068b4: 29 e1        	bnez	a0, 0x802068f6 <.Lpcrel_hi23+0x34>
802068b6: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802068ba: fd fa        	bnez	a3, 0x802068b0 <.Lpcrel_hi22+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802068bc: 23 30 b4 fa  	sd	a1, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802068c0: 90 e0        	sd	a2, 0(s1)

00000000802068c2 <.Lpcrel_hi23>:
802068c2: 17 45 00 00  	auipc	a0, 4
802068c6: 13 05 d5 81  	addi	a0, a0, -2019
802068ca: 88 e4        	sd	a0, 8(s1)
802068cc: 11 45        	li	a0, 4
802068ce: 88 e8        	sd	a0, 16(s1)
802068d0: 23 bc 04 00  	sd	zero, 24(s1)
802068d4: 23 80 04 02  	sb	zero, 32(s1)
802068d8: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
802068dc: 23 04 04 fa  	sb	zero, -88(s0)
802068e0: 0f 00 10 03  	fence	rw, w
802068e4: 09 45        	li	a0, 2
802068e6: 88 f8        	sd	a0, 48(s1)
802068e8: 13 05 04 fa  	addi	a0, s0, -96
802068ec: 97 10 00 00  	auipc	ra, 1
802068f0: e7 80 60 4d  	jalr	1238(ra)
802068f4: 05 a0        	j	0x80206914 <.Lpcrel_hi23+0x52>
802068f6: 85 45        	li	a1, 1
;             match status {
802068f8: 63 1b b5 00  	bne	a0, a1, 0x8020690e <.Lpcrel_hi23+0x4c>
802068fc: 0f 00 00 01  	fence	w, 0
80206900: 0f 00 30 03  	fence	rw, rw
80206904: 88 78        	ld	a0, 48(s1)
80206906: 0f 00 30 02  	fence	r, rw
;             match status {
8020690a: e3 09 b5 fe  	beq	a0, a1, 0x802068fc <.Lpcrel_hi23+0x3a>
8020690e: 89 45        	li	a1, 2
;             match status {
80206910: 63 1c b5 0e  	bne	a0, a1, 0x80206a08 <.Lpcrel_hi34+0x18>
;         self.lock.acquire();
80206914: 13 85 84 00  	addi	a0, s1, 8
80206918: 97 f0 ff ff  	auipc	ra, 1048575
8020691c: e7 80 80 37  	jalr	888(ra)
;         r = self.freelist;
80206920: 03 b9 84 02  	ld	s2, 40(s1)
80206924: 63 03 09 06  	beqz	s2, 0x8020698a <.Lpcrel_hi28+0x4e>
;             unsafe { self.freelist = (*r).next }
80206928: 03 35 09 00  	ld	a0, 0(s2)
8020692c: 88 f4        	sd	a0, 40(s1)
8020692e: 03 85 04 02  	lb	a0, 32(s1)
80206932: 63 09 05 10  	beqz	a0, 0x80206a44 <.Lpcrel_hi30>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80206936: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020693a: 92 89        	mv	s3, tp

000000008020693c <.Lpcrel_hi28>:
;         self.0.call_once(builder)
8020693c: 17 c5 08 00  	auipc	a0, 140
80206940: 13 05 45 52  	addi	a0, a0, 1316
80206944: 97 b0 ff ff  	auipc	ra, 1048571
80206948: e7 80 c0 6b  	jalr	1724(ra)
8020694c: 93 05 00 04  	li	a1, 64
80206950: 63 fb b9 08  	bgeu	s3, a1, 0x802069e6 <.Lpcrel_hi29>
80206954: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80206958: b3 85 b9 02  	mul	a1, s3, a1
8020695c: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
8020695e: 63 13 aa 0e  	bne	s4, a0, 0x80206a44 <.Lpcrel_hi30>
;         self.cpu = null_mut();
80206962: 23 bc 04 00  	sd	zero, 24(s1)
80206966: 0f 00 30 03  	fence	rw, rw
8020696a: 0f 00 10 03  	fence	rw, w
8020696e: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80206972: 97 f0 ff ff  	auipc	ra, 1048575
80206976: e7 80 e0 74  	jalr	1870(ra)
8020697a: 95 45        	li	a1, 5
8020697c: 05 66        	lui	a2, 1
8020697e: 4a 85        	mv	a0, s2
80206980: 97 30 00 00  	auipc	ra, 3
80206984: e7 80 20 d1  	jalr	-750(ra)
80206988: b1 a0        	j	0x802069d4 <.Lpcrel_hi33+0x3e>
8020698a: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020698e: 7d c1        	beqz	a0, 0x80206a74 <.Lpcrel_hi35>
80206990: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206994: 92 89        	mv	s3, tp

0000000080206996 <.Lpcrel_hi33>:
;         self.0.call_once(builder)
80206996: 17 c5 08 00  	auipc	a0, 140
8020699a: 13 05 a5 4c  	addi	a0, a0, 1226
8020699e: 97 b0 ff ff  	auipc	ra, 1048571
802069a2: e7 80 20 66  	jalr	1634(ra)
802069a6: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802069aa: 63 f3 b9 04  	bgeu	s3, a1, 0x802069f0 <.Lpcrel_hi34>
802069ae: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
802069b2: b3 85 b9 02  	mul	a1, s3, a1
802069b6: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
802069b8: 63 1e aa 0a  	bne	s4, a0, 0x80206a74 <.Lpcrel_hi35>
;         self.cpu = null_mut();
802069bc: 23 bc 04 00  	sd	zero, 24(s1)
802069c0: 0f 00 30 03  	fence	rw, rw
802069c4: 0f 00 10 03  	fence	rw, w
802069c8: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
802069cc: 97 f0 ff ff  	auipc	ra, 1048575
802069d0: e7 80 40 6f  	jalr	1780(ra)
; }
802069d4: 4a 85        	mv	a0, s2
802069d6: e6 60        	ld	ra, 88(sp)
802069d8: 46 64        	ld	s0, 80(sp)
802069da: a6 64        	ld	s1, 72(sp)
802069dc: 06 69        	ld	s2, 64(sp)
802069de: e2 79        	ld	s3, 56(sp)
802069e0: 42 7a        	ld	s4, 48(sp)
802069e2: 25 61        	addi	sp, sp, 96
802069e4: 82 80        	ret

00000000802069e6 <.Lpcrel_hi29>:
; 	&mut CPUS.get_mut()[id]
802069e6: 17 45 00 00  	auipc	a0, 4
802069ea: 13 06 25 b6  	addi	a2, a0, -1182
802069ee: 29 a0        	j	0x802069f8 <.Lpcrel_hi34+0x8>

00000000802069f0 <.Lpcrel_hi34>:
802069f0: 17 45 00 00  	auipc	a0, 4
802069f4: 13 06 85 b5  	addi	a2, a0, -1192
;         self.lock.release();
802069f8: 93 05 00 04  	li	a1, 64
802069fc: 4e 85        	mv	a0, s3
802069fe: 97 20 00 00  	auipc	ra, 2
80206a02: e7 80 e0 9e  	jalr	-1554(ra)
80206a06: 00 00        	unimp	
;             match status {
80206a08: 05 e1        	bnez	a0, 0x80206a28 <.Lpcrel_hi26>

0000000080206a0a <.Lpcrel_hi24>:
;                 INCOMPLETE => unreachable!(),
80206a0a: 17 35 00 00  	auipc	a0, 3
80206a0e: 13 05 e5 67  	addi	a0, a0, 1662

0000000080206a12 <.Lpcrel_hi25>:
80206a12: 97 35 00 00  	auipc	a1, 3
80206a16: 13 86 e5 69  	addi	a2, a1, 1694
80206a1a: 93 05 80 02  	li	a1, 40
80206a1e: 97 20 00 00  	auipc	ra, 2
80206a22: e7 80 20 9a  	jalr	-1630(ra)
80206a26: 00 00        	unimp	

0000000080206a28 <.Lpcrel_hi26>:
;                 PANICKED => panic!("Once has panicked"),
80206a28: 17 35 00 00  	auipc	a0, 3
80206a2c: 13 05 85 5d  	addi	a0, a0, 1496

0000000080206a30 <.Lpcrel_hi27>:
80206a30: 97 35 00 00  	auipc	a1, 3
80206a34: 13 86 05 64  	addi	a2, a1, 1600
80206a38: c5 45        	li	a1, 17
80206a3a: 97 20 00 00  	auipc	ra, 2
80206a3e: e7 80 60 98  	jalr	-1658(ra)
80206a42: 00 00        	unimp	

0000000080206a44 <.Lpcrel_hi30>:
80206a44: 17 35 00 00  	auipc	a0, 3
80206a48: 13 05 c5 7b  	addi	a0, a0, 1980
80206a4c: 23 30 a4 fa  	sd	a0, -96(s0)
80206a50: 05 45        	li	a0, 1
80206a52: 23 34 a4 fa  	sd	a0, -88(s0)
80206a56: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206a5a <.Lpcrel_hi31>:
80206a5a: 17 35 00 00  	auipc	a0, 3
80206a5e: 13 05 65 75  	addi	a0, a0, 1878
80206a62: 23 38 a4 fa  	sd	a0, -80(s0)
80206a66: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080206a6a <.Lpcrel_hi32>:
;             panic!("release");
80206a6a: 17 35 00 00  	auipc	a0, 3
80206a6e: 93 05 65 7a  	addi	a1, a0, 1958
80206a72: 05 a8        	j	0x80206aa2 <.Lpcrel_hi37+0x8>

0000000080206a74 <.Lpcrel_hi35>:
80206a74: 17 35 00 00  	auipc	a0, 3
80206a78: 13 05 c5 78  	addi	a0, a0, 1932
80206a7c: 23 30 a4 fa  	sd	a0, -96(s0)
80206a80: 05 45        	li	a0, 1
80206a82: 23 34 a4 fa  	sd	a0, -88(s0)
80206a86: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206a8a <.Lpcrel_hi36>:
80206a8a: 17 35 00 00  	auipc	a0, 3
80206a8e: 13 05 65 72  	addi	a0, a0, 1830
80206a92: 23 38 a4 fa  	sd	a0, -80(s0)
80206a96: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080206a9a <.Lpcrel_hi37>:
;             panic!("release");
80206a9a: 17 35 00 00  	auipc	a0, 3
80206a9e: 93 05 65 77  	addi	a1, a0, 1910
;         self.lock.release();
80206aa2: 13 05 04 fa  	addi	a0, s0, -96
80206aa6: 97 20 00 00  	auipc	ra, 2
80206aaa: e7 80 c0 8e  	jalr	-1812(ra)
80206aae: 00 00        	unimp	

0000000080206ab0 <_ZN6kernel6memory6kalloc5kfree17ha7702d4ed64acff8E>:
; pub fn kfree(pa: Addr) {
80206ab0: 1d 71        	addi	sp, sp, -96
80206ab2: 86 ec        	sd	ra, 88(sp)
80206ab4: a2 e8        	sd	s0, 80(sp)
80206ab6: a6 e4        	sd	s1, 72(sp)
80206ab8: ca e0        	sd	s2, 64(sp)
80206aba: 4e fc        	sd	s3, 56(sp)
80206abc: 52 f8        	sd	s4, 48(sp)
80206abe: 80 10        	addi	s0, sp, 96
80206ac0: 0f 00 30 03  	fence	rw, rw

0000000080206ac4 <.Lpcrel_hi38>:
80206ac4: 97 e5 08 00  	auipc	a1, 142
80206ac8: 93 84 c5 5a  	addi	s1, a1, 1452
80206acc: 8c 78        	ld	a1, 48(s1)
80206ace: 2a 89        	mv	s2, a0
80206ad0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206ad4: b9 e5        	bnez	a1, 0x80206b22 <.Lpcrel_hi39+0x34>
80206ad6: 13 85 04 03  	addi	a0, s1, 48
80206ada: 05 46        	li	a2, 1
80206adc: af 35 05 16  	lr.d.aqrl	a1, (a0)
80206ae0: a9 e1        	bnez	a1, 0x80206b22 <.Lpcrel_hi39+0x34>
80206ae2: af 36 c5 1e  	sc.d.aqrl	a3, a2, (a0)
80206ae6: fd fa        	bnez	a3, 0x80206adc <.Lpcrel_hi38+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80206ae8: 23 30 a4 fa  	sd	a0, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80206aec: 90 e0        	sd	a2, 0(s1)

0000000080206aee <.Lpcrel_hi39>:
80206aee: 17 35 00 00  	auipc	a0, 3
80206af2: 13 05 15 5f  	addi	a0, a0, 1521
80206af6: 88 e4        	sd	a0, 8(s1)
80206af8: 11 45        	li	a0, 4
80206afa: 88 e8        	sd	a0, 16(s1)
80206afc: 23 bc 04 00  	sd	zero, 24(s1)
80206b00: 23 80 04 02  	sb	zero, 32(s1)
80206b04: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80206b08: 23 04 04 fa  	sb	zero, -88(s0)
80206b0c: 0f 00 10 03  	fence	rw, w
80206b10: 09 45        	li	a0, 2
80206b12: 88 f8        	sd	a0, 48(s1)
80206b14: 13 05 04 fa  	addi	a0, s0, -96
80206b18: 97 10 00 00  	auipc	ra, 1
80206b1c: e7 80 a0 2a  	jalr	682(ra)
80206b20: 05 a0        	j	0x80206b40 <.Lpcrel_hi39+0x52>
80206b22: 05 45        	li	a0, 1
;             match status {
80206b24: 63 9b a5 00  	bne	a1, a0, 0x80206b3a <.Lpcrel_hi39+0x4c>
80206b28: 0f 00 00 01  	fence	w, 0
80206b2c: 0f 00 30 03  	fence	rw, rw
80206b30: 8c 78        	ld	a1, 48(s1)
80206b32: 0f 00 30 02  	fence	r, rw
;             match status {
80206b36: e3 89 a5 fe  	beq	a1, a0, 0x80206b28 <.Lpcrel_hi39+0x3a>
80206b3a: 09 45        	li	a0, 2
;             match status {
80206b3c: 63 92 a5 0c  	bne	a1, a0, 0x80206c00 <.Lpcrel_hi49+0x18>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
80206b40: 13 15 49 03  	slli	a0, s2, 52
80206b44: 51 91        	srli	a0, a0, 52
80206b46: 13 35 15 00  	seqz	a0, a0

0000000080206b4a <.Lpcrel_hi44>:
80206b4a: 97 f5 28 00  	auipc	a1, 655
80206b4e: 93 85 65 4b  	addi	a1, a1, 1206
80206b52: b3 35 b9 00  	sltu	a1, s2, a1
80206b56: 93 c5 f5 ff  	not	a1, a1
80206b5a: 6d 8d        	and	a0, a0, a1
80206b5c: 93 55 b9 01  	srli	a1, s2, 27
80206b60: 93 b5 15 01  	sltiu	a1, a1, 17
80206b64: 6d 8d        	and	a0, a0, a1
80206b66: 63 02 05 10  	beqz	a0, 0x80206c6a <.Lpcrel_hi45>
80206b6a: 85 45        	li	a1, 1
80206b6c: 05 66        	lui	a2, 1
80206b6e: 85 49        	li	s3, 1
80206b70: 4a 85        	mv	a0, s2
80206b72: 97 30 00 00  	auipc	ra, 3
80206b76: e7 80 00 b2  	jalr	-1248(ra)
;         self.lock.acquire();
80206b7a: 13 85 84 00  	addi	a0, s1, 8
80206b7e: 97 f0 ff ff  	auipc	ra, 1048575
80206b82: e7 80 20 11  	jalr	274(ra)
;         unsafe { (*pa).next = self.freelist }
80206b86: 88 74        	ld	a0, 40(s1)
80206b88: 23 30 a9 00  	sd	a0, 0(s2)
;         self.freelist = pa;
80206b8c: 23 b4 24 03  	sd	s2, 40(s1)
80206b90: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80206b94: 45 c5        	beqz	a0, 0x80206c3c <.Lpcrel_hi50>
80206b96: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80206b9a: 12 89        	mv	s2, tp

0000000080206b9c <.Lpcrel_hi48>:
;         self.0.call_once(builder)
80206b9c: 17 c5 08 00  	auipc	a0, 140
80206ba0: 13 05 45 2c  	addi	a0, a0, 708
80206ba4: 97 b0 ff ff  	auipc	ra, 1048571
80206ba8: e7 80 c0 45  	jalr	1116(ra)
80206bac: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80206bb0: 63 7c b9 02  	bgeu	s2, a1, 0x80206be8 <.Lpcrel_hi49>
80206bb4: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80206bb8: b3 05 b9 02  	mul	a1, s2, a1
80206bbc: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80206bbe: 63 1f aa 06  	bne	s4, a0, 0x80206c3c <.Lpcrel_hi50>
;         self.cpu = null_mut();
80206bc2: 23 bc 04 00  	sd	zero, 24(s1)
80206bc6: 0f 00 30 03  	fence	rw, rw
80206bca: 0f 00 10 03  	fence	rw, w
80206bce: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80206bd2: e6 60        	ld	ra, 88(sp)
80206bd4: 46 64        	ld	s0, 80(sp)
80206bd6: a6 64        	ld	s1, 72(sp)
80206bd8: 06 69        	ld	s2, 64(sp)
80206bda: e2 79        	ld	s3, 56(sp)
80206bdc: 42 7a        	ld	s4, 48(sp)
80206bde: 25 61        	addi	sp, sp, 96
80206be0: 17 f3 ff ff  	auipc	t1, 1048575
80206be4: 67 00 03 4e  	jr	1248(t1)

0000000080206be8 <.Lpcrel_hi49>:
; 	&mut CPUS.get_mut()[id]
80206be8: 17 45 00 00  	auipc	a0, 4
80206bec: 13 06 05 96  	addi	a2, a0, -1696
80206bf0: 93 05 00 04  	li	a1, 64
80206bf4: 4a 85        	mv	a0, s2
80206bf6: 97 10 00 00  	auipc	ra, 1
80206bfa: e7 80 60 7f  	jalr	2038(ra)
80206bfe: 00 00        	unimp	
;             match status {
80206c00: 85 e1        	bnez	a1, 0x80206c20 <.Lpcrel_hi42>

0000000080206c02 <.Lpcrel_hi40>:
;                 INCOMPLETE => unreachable!(),
80206c02: 17 35 00 00  	auipc	a0, 3
80206c06: 13 05 65 48  	addi	a0, a0, 1158

0000000080206c0a <.Lpcrel_hi41>:
80206c0a: 97 35 00 00  	auipc	a1, 3
80206c0e: 13 86 65 4a  	addi	a2, a1, 1190
80206c12: 93 05 80 02  	li	a1, 40
80206c16: 97 10 00 00  	auipc	ra, 1
80206c1a: e7 80 a0 7a  	jalr	1962(ra)
80206c1e: 00 00        	unimp	

0000000080206c20 <.Lpcrel_hi42>:
;                 PANICKED => panic!("Once has panicked"),
80206c20: 17 35 00 00  	auipc	a0, 3
80206c24: 13 05 05 3e  	addi	a0, a0, 992

0000000080206c28 <.Lpcrel_hi43>:
80206c28: 97 35 00 00  	auipc	a1, 3
80206c2c: 13 86 85 44  	addi	a2, a1, 1096
80206c30: c5 45        	li	a1, 17
80206c32: 97 10 00 00  	auipc	ra, 1
80206c36: e7 80 e0 78  	jalr	1934(ra)
80206c3a: 00 00        	unimp	

0000000080206c3c <.Lpcrel_hi50>:
80206c3c: 17 35 00 00  	auipc	a0, 3
80206c40: 13 05 45 5c  	addi	a0, a0, 1476
80206c44: 23 30 a4 fa  	sd	a0, -96(s0)
80206c48: 23 34 34 fb  	sd	s3, -88(s0)
80206c4c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206c50 <.Lpcrel_hi51>:
80206c50: 17 35 00 00  	auipc	a0, 3
80206c54: 13 05 05 56  	addi	a0, a0, 1376
80206c58: 23 38 a4 fa  	sd	a0, -80(s0)
80206c5c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080206c60 <.Lpcrel_hi52>:
;             panic!("release");
80206c60: 17 35 00 00  	auipc	a0, 3
80206c64: 93 05 05 5b  	addi	a1, a0, 1456
80206c68: 05 a8        	j	0x80206c98 <.Lpcrel_hi47+0x8>

0000000080206c6a <.Lpcrel_hi45>:
80206c6a: 17 45 00 00  	auipc	a0, 4
80206c6e: 13 05 65 af  	addi	a0, a0, -1290
80206c72: 23 30 a4 fa  	sd	a0, -96(s0)
80206c76: 05 45        	li	a0, 1
80206c78: 23 34 a4 fa  	sd	a0, -88(s0)
80206c7c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080206c80 <.Lpcrel_hi46>:
80206c80: 17 45 00 00  	auipc	a0, 4
80206c84: 13 05 05 af  	addi	a0, a0, -1296
80206c88: 23 38 a4 fa  	sd	a0, -80(s0)
80206c8c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080206c90 <.Lpcrel_hi47>:
;             panic!("kfree");
80206c90: 17 45 00 00  	auipc	a0, 4
80206c94: 93 05 85 af  	addi	a1, a0, -1288
80206c98: 13 05 04 fa  	addi	a0, s0, -96
80206c9c: 97 10 00 00  	auipc	ra, 1
80206ca0: e7 80 60 6f  	jalr	1782(ra)
80206ca4: 00 00        	unimp	

0000000080206ca6 <_ZN6kernel6memory3kvm7kvminit17h801e04563794e2d6E>:
; pub fn kvminit() {
80206ca6: 71 71        	addi	sp, sp, -176
80206ca8: 06 f5        	sd	ra, 168(sp)
80206caa: 22 f1        	sd	s0, 160(sp)
80206cac: 26 ed        	sd	s1, 152(sp)
80206cae: 4a e9        	sd	s2, 144(sp)
80206cb0: 4e e5        	sd	s3, 136(sp)
80206cb2: 52 e1        	sd	s4, 128(sp)
80206cb4: d6 fc        	sd	s5, 120(sp)
80206cb6: da f8        	sd	s6, 112(sp)
80206cb8: de f4        	sd	s7, 104(sp)
80206cba: e2 f0        	sd	s8, 96(sp)
80206cbc: e6 ec        	sd	s9, 88(sp)
80206cbe: ea e8        	sd	s10, 80(sp)
80206cc0: ee e4        	sd	s11, 72(sp)
80206cc2: 00 19        	addi	s0, sp, 176
80206cc4: 0f 00 30 03  	fence	rw, rw

0000000080206cc8 <.Lpcrel_hi0>:
80206cc8: 17 e5 08 00  	auipc	a0, 142
80206ccc: 13 09 05 3e  	addi	s2, a0, 992
80206cd0: 03 35 09 01  	ld	a0, 16(s2)
80206cd4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80206cd8: 29 e9        	bnez	a0, 0x80206d2a <.Lpcrel_hi0+0x62>
80206cda: 93 05 09 01  	addi	a1, s2, 16
80206cde: 85 49        	li	s3, 1
80206ce0: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80206ce4: 39 e1        	bnez	a0, 0x80206d2a <.Lpcrel_hi0+0x62>
80206ce6: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80206cea: 7d fa        	bnez	a2, 0x80206ce0 <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80206cec: 23 30 b4 f6  	sd	a1, -160(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80206cf0: 97 00 00 00  	auipc	ra, 0
80206cf4: e7 80 60 b9  	jalr	-1130(ra)
80206cf8: aa 84        	mv	s1, a0
80206cfa: 05 66        	lui	a2, 1
80206cfc: 81 45        	li	a1, 0
80206cfe: 97 30 00 00  	auipc	ra, 3
80206d02: e7 80 40 99  	jalr	-1644(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80206d06: 23 30 39 01  	sd	s3, 0(s2)
80206d0a: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
80206d0e: 23 04 04 f6  	sb	zero, -152(s0)
80206d12: 0f 00 10 03  	fence	rw, w
80206d16: 09 45        	li	a0, 2
80206d18: 23 38 a9 00  	sd	a0, 16(s2)
80206d1c: 13 05 04 f6  	addi	a0, s0, -160
80206d20: 97 10 00 00  	auipc	ra, 1
80206d24: e7 80 20 0a  	jalr	162(ra)
80206d28: 0d a0        	j	0x80206d4a <.Lpcrel_hi0+0x82>
80206d2a: 85 45        	li	a1, 1
;             match status {
80206d2c: 63 1c b5 00  	bne	a0, a1, 0x80206d44 <.Lpcrel_hi0+0x7c>
80206d30: 0f 00 00 01  	fence	w, 0
80206d34: 0f 00 30 03  	fence	rw, rw
80206d38: 03 35 09 01  	ld	a0, 16(s2)
80206d3c: 0f 00 30 02  	fence	r, rw
;             match status {
80206d40: e3 08 b5 fe  	beq	a0, a1, 0x80206d30 <.Lpcrel_hi0+0x68>
80206d44: 89 45        	li	a1, 2
;             match status {
80206d46: 63 1b b5 2c  	bne	a0, a1, 0x8020701c <.Lpcrel_hi54+0x16>
;             let pte = self.walk(a, true);
80206d4a: 21 09        	addi	s2, s2, 8
80206d4c: b7 05 00 10  	lui	a1, 65536
80206d50: 05 46        	li	a2, 1
80206d52: 85 44        	li	s1, 1
80206d54: 4a 85        	mv	a0, s2
80206d56: 97 f0 ff ff  	auipc	ra, 1048575
80206d5a: e7 80 80 77  	jalr	1912(ra)
80206d5e: 63 0f 05 48  	beqz	a0, 0x802071fc <.Lpcrel_hi8>
;             if unsafe { *pte & PTE_V } != 0 {
80206d62: 83 45 05 00  	lbu	a1, 0(a0)
80206d66: 85 89        	andi	a1, a1, 1
80206d68: 63 97 05 4c  	bnez	a1, 0x80207236 <.Lpcrel_hi5>
80206d6c: b7 05 00 04  	lui	a1, 16384
80206d70: 9d 25        	addiw	a1, a1, 7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206d72: 0c e1        	sd	a1, 0(a0)
;             let pte = self.walk(a, true);
80206d74: b7 15 00 10  	lui	a1, 65537
80206d78: 05 46        	li	a2, 1
80206d7a: 85 44        	li	s1, 1
80206d7c: 4a 85        	mv	a0, s2
80206d7e: 97 f0 ff ff  	auipc	ra, 1048575
80206d82: e7 80 00 75  	jalr	1872(ra)
80206d86: 63 06 05 4e  	beqz	a0, 0x80207272 <.Lpcrel_hi14>
;             if unsafe { *pte & PTE_V } != 0 {
80206d8a: 83 45 05 00  	lbu	a1, 0(a0)
80206d8e: 85 89        	andi	a1, a1, 1
80206d90: 63 9e 05 50  	bnez	a1, 0x802072ac <.Lpcrel_hi11>
80206d94: b7 05 00 04  	lui	a1, 16384
80206d98: 9b 85 75 40  	addiw	a1, a1, 1031
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206d9c: 0c e1        	sd	a1, 0(a0)
80206d9e: b7 09 00 0c  	lui	s3, 49152
80206da2: 37 fa ff 0b  	lui	s4, 49151
80206da6: b7 04 00 03  	lui	s1, 12288
80206daa: 9d 24        	addiw	s1, s1, 7
80206dac: 85 6a        	lui	s5, 1
80206dae: 37 eb 3f 0c  	lui	s6, 50174
;             let pte = self.walk(a, true);
80206db2: 05 46        	li	a2, 1
80206db4: 4a 85        	mv	a0, s2
80206db6: ce 85        	mv	a1, s3
80206db8: 97 f0 ff ff  	auipc	ra, 1048575
80206dbc: e7 80 60 71  	jalr	1814(ra)
;             if pte.is_null() {
80206dc0: 63 0e 05 26  	beqz	a0, 0x8020703c <.Lpcrel_hi20>
;             if unsafe { *pte & PTE_V } != 0 {
80206dc4: 83 45 05 00  	lbu	a1, 0(a0)
80206dc8: 85 89        	andi	a1, a1, 1
80206dca: 63 97 05 2a  	bnez	a1, 0x80207078 <.Lpcrel_hi17>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206dce: 04 e1        	sd	s1, 0(a0)
;             pa += PGSIZE;
80206dd0: d6 99        	add	s3, s3, s5
;         while a <= last {
80206dd2: 56 9a        	add	s4, s4, s5
80206dd4: 93 84 04 40  	addi	s1, s1, 1024
80206dd8: e3 7d 4b fd  	bgeu	s6, s4, 0x80206db2 <.Lpcrel_hi0+0xea>

0000000080206ddc <.Lpcrel_hi23>:
;         if size == 0 {
80206ddc: 17 35 00 00  	auipc	a0, 3
80206de0: 93 09 45 22  	addi	s3, a0, 548
80206de4: 93 05 10 40  	li	a1, 1025
80206de8: 13 95 55 01  	slli	a0, a1, 21
80206dec: 63 8e a9 4e  	beq	s3, a0, 0x802072e8 <.Lpcrel_hi24>
;         while a <= last {
80206df0: 13 85 f9 ff  	addi	a0, s3, -1
80206df4: 13 56 55 01  	srli	a2, a0, 21
80206df8: 63 6f b6 02  	bltu	a2, a1, 0x80206e36 <.Lpcrel_hi23+0x5a>
80206dfc: 93 04 10 40  	li	s1, 1025
80206e00: d6 04        	slli	s1, s1, 21
80206e02: 05 6a        	lui	s4, 1
80206e04: fd 75        	lui	a1, 1048575
80206e06: b3 7a b5 00  	and	s5, a0, a1
;             let pte = self.walk(a, true);
80206e0a: 05 46        	li	a2, 1
80206e0c: 4a 85        	mv	a0, s2
80206e0e: a6 85        	mv	a1, s1
80206e10: 97 f0 ff ff  	auipc	ra, 1048575
80206e14: e7 80 e0 6b  	jalr	1726(ra)
;             if pte.is_null() {
80206e18: 63 0a 05 2e  	beqz	a0, 0x8020710c <.Lpcrel_hi30>
;             if unsafe { *pte & PTE_V } != 0 {
80206e1c: 83 45 05 00  	lbu	a1, 0(a0)
80206e20: 85 89        	andi	a1, a1, 1
80206e22: 63 93 05 32  	bnez	a1, 0x80207148 <.Lpcrel_hi27>
;     (pa >> 12) << 10
80206e26: 93 d5 24 00  	srli	a1, s1, 2
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206e2a: 93 e5 b5 00  	ori	a1, a1, 11
;             pa += PGSIZE;
80206e2e: d2 94        	add	s1, s1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206e30: 0c e1        	sd	a1, 0(a0)
;         while a <= last {
80206e32: e3 fc 9a fc  	bgeu	s5, s1, 0x80206e0a <.Lpcrel_hi23+0x2e>
80206e36: 45 45        	li	a0, 17
80206e38: 6e 05        	slli	a0, a0, 27
80206e3a: 63 85 a9 4e  	beq	s3, a0, 0x80207324 <.Lpcrel_hi33>
80206e3e: 7d 75        	lui	a0, 1048575
;         while a <= last {
80206e40: b3 f4 a9 00  	and	s1, s3, a0
80206e44: b7 85 08 00  	lui	a1, 136
80206e48: fd 35        	addiw	a1, a1, -1
80206e4a: 93 9a c5 00  	slli	s5, a1, 12
80206e4e: 13 5a 25 00  	srli	s4, a0, 2
;         while a <= last {
80206e52: 63 ec 9a 02  	bltu	s5, s1, 0x80206e8a <.Lpcrel_hi23+0xae>
80206e56: 05 6b        	lui	s6, 1
;             let pte = self.walk(a, true);
80206e58: 05 46        	li	a2, 1
80206e5a: 4a 85        	mv	a0, s2
80206e5c: a6 85        	mv	a1, s1
80206e5e: 97 f0 ff ff  	auipc	ra, 1048575
80206e62: e7 80 00 67  	jalr	1648(ra)
;             if pte.is_null() {
80206e66: 63 0f 05 30  	beqz	a0, 0x80207184 <.Lpcrel_hi39>
;             if unsafe { *pte & PTE_V } != 0 {
80206e6a: 83 45 05 00  	lbu	a1, 0(a0)
80206e6e: 85 89        	andi	a1, a1, 1
80206e70: 63 98 05 34  	bnez	a1, 0x802071c0 <.Lpcrel_hi36>
;     (pa >> 12) << 10
80206e74: 93 d5 29 00  	srli	a1, s3, 2
80206e78: b3 f5 45 01  	and	a1, a1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206e7c: 93 e5 75 00  	ori	a1, a1, 7
80206e80: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
80206e82: da 94        	add	s1, s1, s6
;             pa += PGSIZE;
80206e84: da 99        	add	s3, s3, s6
;         while a <= last {
80206e86: e3 f9 9a fc  	bgeu	s5, s1, 0x80206e58 <.Lpcrel_hi23+0x7c>
80206e8a: 37 05 00 04  	lui	a0, 16384
80206e8e: 7d 35        	addiw	a0, a0, -1
80206e90: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80206e94: 05 46        	li	a2, 1
80206e96: 85 44        	li	s1, 1
80206e98: 4a 85        	mv	a0, s2
80206e9a: 97 f0 ff ff  	auipc	ra, 1048575
80206e9e: e7 80 40 63  	jalr	1588(ra)
80206ea2: 63 0f 05 4a  	beqz	a0, 0x80207360 <.Lpcrel_hi46>
;             if unsafe { *pte & PTE_V } != 0 {
80206ea6: 83 45 05 00  	lbu	a1, 0(a0)
80206eaa: 85 89        	andi	a1, a1, 1
80206eac: 63 97 05 4e  	bnez	a1, 0x8020739a <.Lpcrel_hi43>
80206eb0: 81 4a        	li	s5, 0

0000000080206eb2 <.Lpcrel_hi42>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206eb2: 97 a5 ff ff  	auipc	a1, 1048570
80206eb6: 93 85 e5 14  	addi	a1, a1, 334
80206eba: b1 81        	srli	a1, a1, 12
80206ebc: aa 05        	slli	a1, a1, 10
80206ebe: ad 05        	addi	a1, a1, 11
80206ec0: 0c e1        	sd	a1, 0(a0)
80206ec2: 37 05 00 02  	lui	a0, 8192
80206ec6: 75 35        	addiw	a0, a0, -3
80206ec8: 93 1b d5 00  	slli	s7, a0, 13
80206ecc: 37 f5 ff fd  	lui	a0, 1040383
80206ed0: 3a 05        	slli	a0, a0, 14
80206ed2: 13 5c a5 01  	srli	s8, a0, 26
80206ed6: fd 7c        	lui	s9, 1048575
80206ed8: 13 0d 00 04  	li	s10, 64
80206edc: 85 6d        	lui	s11, 1
80206ede: 21 a0        	j	0x80206ee6 <.Lpcrel_hi42+0x34>
80206ee0: 85 0a        	addi	s5, s5, 1
80206ee2: 63 8d aa 05  	beq	s5, s10, 0x80206f3c <.Lpcrel_hi42+0x8a>
;             let pa = kalloc();
80206ee6: 97 00 00 00  	auipc	ra, 0
80206eea: e7 80 00 9a  	jalr	-1632(ra)
80206eee: 63 03 05 1c  	beqz	a0, 0x802070b4 <.Lpcrel_hi49>
80206ef2: aa 89        	mv	s3, a0
;     TRAMPOLINE - (p + 1) * (KERNEL_STACK_SIZE + PGSIZE)
80206ef4: 6d 75        	lui	a0, 1048571
80206ef6: b3 85 aa 02  	mul	a1, s5, a0
80206efa: 33 85 75 01  	add	a0, a1, s7
;         let last = pgrounddown(va + size - 1);
80206efe: e2 95        	add	a1, a1, s8
;     addr & !(PGSIZE - 1)
80206f00: 33 fb 95 01  	and	s6, a1, s9
;         while a <= last {
80206f04: e3 6e ab fc  	bltu	s6, a0, 0x80206ee0 <.Lpcrel_hi42+0x2e>
;     addr & !(PGSIZE - 1)
80206f08: b3 74 95 01  	and	s1, a0, s9
;             let pte = self.walk(a, true);
80206f0c: 05 46        	li	a2, 1
80206f0e: 4a 85        	mv	a0, s2
80206f10: a6 85        	mv	a1, s1
80206f12: 97 f0 ff ff  	auipc	ra, 1048575
80206f16: e7 80 c0 5b  	jalr	1468(ra)
;             if pte.is_null() {
80206f1a: 49 c5        	beqz	a0, 0x80206fa4 <.Lpcrel_hi55>
;             if unsafe { *pte & PTE_V } != 0 {
80206f1c: 83 45 05 00  	lbu	a1, 0(a0)
80206f20: 85 89        	andi	a1, a1, 1
80206f22: dd ed        	bnez	a1, 0x80206fe0 <.Lpcrel_hi52>
;     (pa >> 12) << 10
80206f24: 93 d5 29 00  	srli	a1, s3, 2
80206f28: b3 f5 45 01  	and	a1, a1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80206f2c: 93 e5 75 00  	ori	a1, a1, 7
80206f30: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
80206f32: ee 94        	add	s1, s1, s11
;             pa += PGSIZE;
80206f34: ee 99        	add	s3, s3, s11
;         while a <= last {
80206f36: e3 7b 9b fc  	bgeu	s6, s1, 0x80206f0c <.Lpcrel_hi42+0x5a>
80206f3a: 5d b7        	j	0x80206ee0 <.Lpcrel_hi42+0x2e>
80206f3c: 13 05 04 f9  	addi	a0, s0, -112
;     Stdout.write_fmt(args).unwrap();
80206f40: 23 3c a4 f4  	sd	a0, -168(s0)

0000000080206f44 <.Lpcrel_hi58>:
80206f44: 17 45 00 00  	auipc	a0, 4
80206f48: 13 05 c5 90  	addi	a0, a0, -1780
80206f4c: 23 30 a4 f6  	sd	a0, -160(s0)
80206f50: 05 45        	li	a0, 1
80206f52: 23 34 a4 f6  	sd	a0, -152(s0)

0000000080206f56 <.Lpcrel_hi59>:
80206f56: 17 45 00 00  	auipc	a0, 4
80206f5a: 13 05 25 88  	addi	a0, a0, -1918
80206f5e: 23 38 a4 f6  	sd	a0, -144(s0)
80206f62: 23 3c 04 f6  	sd	zero, -136(s0)
80206f66: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206f6a <.Lpcrel_hi60>:
80206f6a: 17 35 00 00  	auipc	a0, 3
80206f6e: 93 05 e5 2b  	addi	a1, a0, 702
80206f72: 13 05 84 f5  	addi	a0, s0, -168
80206f76: 13 06 04 f6  	addi	a2, s0, -160
80206f7a: 97 20 00 00  	auipc	ra, 2
80206f7e: e7 80 40 a3  	jalr	-1484(ra)
80206f82: 63 1a 05 44  	bnez	a0, 0x802073d6 <.Lpcrel_hi61>
; }
80206f86: aa 70        	ld	ra, 168(sp)
80206f88: 0a 74        	ld	s0, 160(sp)
80206f8a: ea 64        	ld	s1, 152(sp)
80206f8c: 4a 69        	ld	s2, 144(sp)
80206f8e: aa 69        	ld	s3, 136(sp)
80206f90: 0a 6a        	ld	s4, 128(sp)
80206f92: e6 7a        	ld	s5, 120(sp)
80206f94: 46 7b        	ld	s6, 112(sp)
80206f96: a6 7b        	ld	s7, 104(sp)
80206f98: 06 7c        	ld	s8, 96(sp)
80206f9a: e6 6c        	ld	s9, 88(sp)
80206f9c: 46 6d        	ld	s10, 80(sp)
80206f9e: a6 6d        	ld	s11, 72(sp)
80206fa0: 4d 61        	addi	sp, sp, 176
80206fa2: 82 80        	ret

0000000080206fa4 <.Lpcrel_hi55>:
80206fa4: 17 45 00 00  	auipc	a0, 4
80206fa8: 13 05 45 82  	addi	a0, a0, -2012
80206fac: 23 30 a4 f6  	sd	a0, -160(s0)
80206fb0: 05 45        	li	a0, 1
80206fb2: 23 34 a4 f6  	sd	a0, -152(s0)
80206fb6: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206fba <.Lpcrel_hi56>:
80206fba: 17 45 00 00  	auipc	a0, 4
80206fbe: 13 05 e5 81  	addi	a0, a0, -2018
80206fc2: 23 38 a4 f6  	sd	a0, -144(s0)
80206fc6: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080206fca <.Lpcrel_hi57>:
;             panic!("kvmmap");
80206fca: 17 45 00 00  	auipc	a0, 4
80206fce: 93 05 65 82  	addi	a1, a0, -2010
80206fd2: 13 05 04 f6  	addi	a0, s0, -160
80206fd6: 97 10 00 00  	auipc	ra, 1
80206fda: e7 80 c0 3b  	jalr	956(ra)
80206fde: 00 00        	unimp	

0000000080206fe0 <.Lpcrel_hi52>:
80206fe0: 17 35 00 00  	auipc	a0, 3
80206fe4: 13 05 85 71  	addi	a0, a0, 1816
80206fe8: 23 30 a4 f6  	sd	a0, -160(s0)
80206fec: 05 45        	li	a0, 1
80206fee: 23 34 a4 f6  	sd	a0, -152(s0)
80206ff2: 23 30 04 f8  	sd	zero, -128(s0)

0000000080206ff6 <.Lpcrel_hi53>:
80206ff6: 17 35 00 00  	auipc	a0, 3
80206ffa: 13 05 25 6c  	addi	a0, a0, 1730
80206ffe: 23 38 a4 f6  	sd	a0, -144(s0)
80207002: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207006 <.Lpcrel_hi54>:
;                 panic!("mappages: remap");
80207006: 17 35 00 00  	auipc	a0, 3
8020700a: 93 05 25 70  	addi	a1, a0, 1794
8020700e: 13 05 04 f6  	addi	a0, s0, -160
80207012: 97 10 00 00  	auipc	ra, 1
80207016: e7 80 00 38  	jalr	896(ra)
8020701a: 00 00        	unimp	
;             match status {
8020701c: 71 e9        	bnez	a0, 0x802070f0 <.Lpcrel_hi3>

000000008020701e <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
8020701e: 17 35 00 00  	auipc	a0, 3
80207022: 13 05 a5 06  	addi	a0, a0, 106

0000000080207026 <.Lpcrel_hi2>:
80207026: 97 35 00 00  	auipc	a1, 3
8020702a: 13 86 a5 08  	addi	a2, a1, 138
8020702e: 93 05 80 02  	li	a1, 40
80207032: 97 10 00 00  	auipc	ra, 1
80207036: e7 80 e0 38  	jalr	910(ra)
8020703a: 00 00        	unimp	

000000008020703c <.Lpcrel_hi20>:
8020703c: 17 35 00 00  	auipc	a0, 3
80207040: 13 05 c5 78  	addi	a0, a0, 1932
80207044: 23 30 a4 f6  	sd	a0, -160(s0)
80207048: 05 45        	li	a0, 1
8020704a: 23 34 a4 f6  	sd	a0, -152(s0)
8020704e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080207052 <.Lpcrel_hi21>:
80207052: 17 35 00 00  	auipc	a0, 3
80207056: 13 05 65 78  	addi	a0, a0, 1926
8020705a: 23 38 a4 f6  	sd	a0, -144(s0)
8020705e: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207062 <.Lpcrel_hi22>:
;             panic!("kvmmap");
80207062: 17 35 00 00  	auipc	a0, 3
80207066: 93 05 e5 78  	addi	a1, a0, 1934
8020706a: 13 05 04 f6  	addi	a0, s0, -160
8020706e: 97 10 00 00  	auipc	ra, 1
80207072: e7 80 40 32  	jalr	804(ra)
80207076: 00 00        	unimp	

0000000080207078 <.Lpcrel_hi17>:
80207078: 17 35 00 00  	auipc	a0, 3
8020707c: 13 05 05 68  	addi	a0, a0, 1664
80207080: 23 30 a4 f6  	sd	a0, -160(s0)
80207084: 05 45        	li	a0, 1
80207086: 23 34 a4 f6  	sd	a0, -152(s0)
8020708a: 23 30 04 f8  	sd	zero, -128(s0)

000000008020708e <.Lpcrel_hi18>:
8020708e: 17 35 00 00  	auipc	a0, 3
80207092: 13 05 a5 62  	addi	a0, a0, 1578
80207096: 23 38 a4 f6  	sd	a0, -144(s0)
8020709a: 23 3c 04 f6  	sd	zero, -136(s0)

000000008020709e <.Lpcrel_hi19>:
;                 panic!("mappages: remap");
8020709e: 17 35 00 00  	auipc	a0, 3
802070a2: 93 05 a5 66  	addi	a1, a0, 1642
802070a6: 13 05 04 f6  	addi	a0, s0, -160
802070aa: 97 10 00 00  	auipc	ra, 1
802070ae: e7 80 80 2e  	jalr	744(ra)
802070b2: 00 00        	unimp	

00000000802070b4 <.Lpcrel_hi49>:
802070b4: 17 35 00 00  	auipc	a0, 3
802070b8: 13 05 c5 75  	addi	a0, a0, 1884
802070bc: 23 30 a4 f6  	sd	a0, -160(s0)
802070c0: 05 45        	li	a0, 1
802070c2: 23 34 a4 f6  	sd	a0, -152(s0)
802070c6: 23 30 04 f8  	sd	zero, -128(s0)

00000000802070ca <.Lpcrel_hi50>:
802070ca: 17 35 00 00  	auipc	a0, 3
802070ce: 13 05 e5 70  	addi	a0, a0, 1806
802070d2: 23 38 a4 f6  	sd	a0, -144(s0)
802070d6: 23 3c 04 f6  	sd	zero, -136(s0)

00000000802070da <.Lpcrel_hi51>:
;                 panic!("kalloc");
802070da: 17 35 00 00  	auipc	a0, 3
802070de: 93 05 65 74  	addi	a1, a0, 1862
802070e2: 13 05 04 f6  	addi	a0, s0, -160
802070e6: 97 10 00 00  	auipc	ra, 1
802070ea: e7 80 c0 2a  	jalr	684(ra)
802070ee: 00 00        	unimp	

00000000802070f0 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
802070f0: 17 35 00 00  	auipc	a0, 3
802070f4: 13 05 05 f1  	addi	a0, a0, -240

00000000802070f8 <.Lpcrel_hi4>:
802070f8: 97 35 00 00  	auipc	a1, 3
802070fc: 13 86 85 f7  	addi	a2, a1, -136
80207100: c5 45        	li	a1, 17
80207102: 97 10 00 00  	auipc	ra, 1
80207106: e7 80 e0 2b  	jalr	702(ra)
8020710a: 00 00        	unimp	

000000008020710c <.Lpcrel_hi30>:
8020710c: 17 35 00 00  	auipc	a0, 3
80207110: 13 05 c5 6b  	addi	a0, a0, 1724
80207114: 23 30 a4 f6  	sd	a0, -160(s0)
80207118: 05 45        	li	a0, 1
8020711a: 23 34 a4 f6  	sd	a0, -152(s0)
8020711e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080207122 <.Lpcrel_hi31>:
80207122: 17 35 00 00  	auipc	a0, 3
80207126: 13 05 65 6b  	addi	a0, a0, 1718
8020712a: 23 38 a4 f6  	sd	a0, -144(s0)
8020712e: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207132 <.Lpcrel_hi32>:
;             panic!("kvmmap");
80207132: 17 35 00 00  	auipc	a0, 3
80207136: 93 05 e5 6b  	addi	a1, a0, 1726
8020713a: 13 05 04 f6  	addi	a0, s0, -160
8020713e: 97 10 00 00  	auipc	ra, 1
80207142: e7 80 40 25  	jalr	596(ra)
80207146: 00 00        	unimp	

0000000080207148 <.Lpcrel_hi27>:
80207148: 17 35 00 00  	auipc	a0, 3
8020714c: 13 05 05 5b  	addi	a0, a0, 1456
80207150: 23 30 a4 f6  	sd	a0, -160(s0)
80207154: 05 45        	li	a0, 1
80207156: 23 34 a4 f6  	sd	a0, -152(s0)
8020715a: 23 30 04 f8  	sd	zero, -128(s0)

000000008020715e <.Lpcrel_hi28>:
8020715e: 17 35 00 00  	auipc	a0, 3
80207162: 13 05 a5 55  	addi	a0, a0, 1370
80207166: 23 38 a4 f6  	sd	a0, -144(s0)
8020716a: 23 3c 04 f6  	sd	zero, -136(s0)

000000008020716e <.Lpcrel_hi29>:
;                 panic!("mappages: remap");
8020716e: 17 35 00 00  	auipc	a0, 3
80207172: 93 05 a5 59  	addi	a1, a0, 1434
80207176: 13 05 04 f6  	addi	a0, s0, -160
8020717a: 97 10 00 00  	auipc	ra, 1
8020717e: e7 80 80 21  	jalr	536(ra)
80207182: 00 00        	unimp	

0000000080207184 <.Lpcrel_hi39>:
80207184: 17 35 00 00  	auipc	a0, 3
80207188: 13 05 45 64  	addi	a0, a0, 1604
8020718c: 23 30 a4 f6  	sd	a0, -160(s0)
80207190: 05 45        	li	a0, 1
80207192: 23 34 a4 f6  	sd	a0, -152(s0)
80207196: 23 30 04 f8  	sd	zero, -128(s0)

000000008020719a <.Lpcrel_hi40>:
8020719a: 17 35 00 00  	auipc	a0, 3
8020719e: 13 05 e5 63  	addi	a0, a0, 1598
802071a2: 23 38 a4 f6  	sd	a0, -144(s0)
802071a6: 23 3c 04 f6  	sd	zero, -136(s0)

00000000802071aa <.Lpcrel_hi41>:
;             panic!("kvmmap");
802071aa: 17 35 00 00  	auipc	a0, 3
802071ae: 93 05 65 64  	addi	a1, a0, 1606
802071b2: 13 05 04 f6  	addi	a0, s0, -160
802071b6: 97 10 00 00  	auipc	ra, 1
802071ba: e7 80 c0 1d  	jalr	476(ra)
802071be: 00 00        	unimp	

00000000802071c0 <.Lpcrel_hi36>:
802071c0: 17 35 00 00  	auipc	a0, 3
802071c4: 13 05 85 53  	addi	a0, a0, 1336
802071c8: 23 30 a4 f6  	sd	a0, -160(s0)
802071cc: 05 45        	li	a0, 1
802071ce: 23 34 a4 f6  	sd	a0, -152(s0)
802071d2: 23 30 04 f8  	sd	zero, -128(s0)

00000000802071d6 <.Lpcrel_hi37>:
802071d6: 17 35 00 00  	auipc	a0, 3
802071da: 13 05 25 4e  	addi	a0, a0, 1250
802071de: 23 38 a4 f6  	sd	a0, -144(s0)
802071e2: 23 3c 04 f6  	sd	zero, -136(s0)

00000000802071e6 <.Lpcrel_hi38>:
;                 panic!("mappages: remap");
802071e6: 17 35 00 00  	auipc	a0, 3
802071ea: 93 05 25 52  	addi	a1, a0, 1314
802071ee: 13 05 04 f6  	addi	a0, s0, -160
802071f2: 97 10 00 00  	auipc	ra, 1
802071f6: e7 80 00 1a  	jalr	416(ra)
802071fa: 00 00        	unimp	

00000000802071fc <.Lpcrel_hi8>:
802071fc: 17 35 00 00  	auipc	a0, 3
80207200: 13 05 c5 5c  	addi	a0, a0, 1484
80207204: 23 30 a4 f6  	sd	a0, -160(s0)
80207208: 23 34 94 f6  	sd	s1, -152(s0)
8020720c: 23 30 04 f8  	sd	zero, -128(s0)

0000000080207210 <.Lpcrel_hi9>:
80207210: 17 35 00 00  	auipc	a0, 3
80207214: 13 05 85 5c  	addi	a0, a0, 1480
80207218: 23 38 a4 f6  	sd	a0, -144(s0)
8020721c: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207220 <.Lpcrel_hi10>:
;             panic!("kvmmap");
80207220: 17 35 00 00  	auipc	a0, 3
80207224: 93 05 05 5d  	addi	a1, a0, 1488
80207228: 13 05 04 f6  	addi	a0, s0, -160
8020722c: 97 10 00 00  	auipc	ra, 1
80207230: e7 80 60 16  	jalr	358(ra)
80207234: 00 00        	unimp	

0000000080207236 <.Lpcrel_hi5>:
80207236: 17 35 00 00  	auipc	a0, 3
8020723a: 13 05 25 4c  	addi	a0, a0, 1218
8020723e: 23 30 a4 f6  	sd	a0, -160(s0)
80207242: 05 45        	li	a0, 1
80207244: 23 34 a4 f6  	sd	a0, -152(s0)
80207248: 23 30 04 f8  	sd	zero, -128(s0)

000000008020724c <.Lpcrel_hi6>:
8020724c: 17 35 00 00  	auipc	a0, 3
80207250: 13 05 c5 46  	addi	a0, a0, 1132
80207254: 23 38 a4 f6  	sd	a0, -144(s0)
80207258: 23 3c 04 f6  	sd	zero, -136(s0)

000000008020725c <.Lpcrel_hi7>:
;                 panic!("mappages: remap");
8020725c: 17 35 00 00  	auipc	a0, 3
80207260: 93 05 c5 4a  	addi	a1, a0, 1196
80207264: 13 05 04 f6  	addi	a0, s0, -160
80207268: 97 10 00 00  	auipc	ra, 1
8020726c: e7 80 a0 12  	jalr	298(ra)
80207270: 00 00        	unimp	

0000000080207272 <.Lpcrel_hi14>:
80207272: 17 35 00 00  	auipc	a0, 3
80207276: 13 05 65 55  	addi	a0, a0, 1366
8020727a: 23 30 a4 f6  	sd	a0, -160(s0)
8020727e: 23 34 94 f6  	sd	s1, -152(s0)
80207282: 23 30 04 f8  	sd	zero, -128(s0)

0000000080207286 <.Lpcrel_hi15>:
80207286: 17 35 00 00  	auipc	a0, 3
8020728a: 13 05 25 55  	addi	a0, a0, 1362
8020728e: 23 38 a4 f6  	sd	a0, -144(s0)
80207292: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207296 <.Lpcrel_hi16>:
;             panic!("kvmmap");
80207296: 17 35 00 00  	auipc	a0, 3
8020729a: 93 05 a5 55  	addi	a1, a0, 1370
8020729e: 13 05 04 f6  	addi	a0, s0, -160
802072a2: 97 10 00 00  	auipc	ra, 1
802072a6: e7 80 00 0f  	jalr	240(ra)
802072aa: 00 00        	unimp	

00000000802072ac <.Lpcrel_hi11>:
802072ac: 17 35 00 00  	auipc	a0, 3
802072b0: 13 05 c5 44  	addi	a0, a0, 1100
802072b4: 23 30 a4 f6  	sd	a0, -160(s0)
802072b8: 05 45        	li	a0, 1
802072ba: 23 34 a4 f6  	sd	a0, -152(s0)
802072be: 23 30 04 f8  	sd	zero, -128(s0)

00000000802072c2 <.Lpcrel_hi12>:
802072c2: 17 35 00 00  	auipc	a0, 3
802072c6: 13 05 65 3f  	addi	a0, a0, 1014
802072ca: 23 38 a4 f6  	sd	a0, -144(s0)
802072ce: 23 3c 04 f6  	sd	zero, -136(s0)

00000000802072d2 <.Lpcrel_hi13>:
;                 panic!("mappages: remap");
802072d2: 17 35 00 00  	auipc	a0, 3
802072d6: 93 05 65 43  	addi	a1, a0, 1078
802072da: 13 05 04 f6  	addi	a0, s0, -160
802072de: 97 10 00 00  	auipc	ra, 1
802072e2: e7 80 40 0b  	jalr	180(ra)
802072e6: 00 00        	unimp	

00000000802072e8 <.Lpcrel_hi24>:
802072e8: 17 35 00 00  	auipc	a0, 3
802072ec: 13 05 85 44  	addi	a0, a0, 1096
802072f0: 23 30 a4 f6  	sd	a0, -160(s0)
802072f4: 05 45        	li	a0, 1
802072f6: 23 34 a4 f6  	sd	a0, -152(s0)
802072fa: 23 30 04 f8  	sd	zero, -128(s0)

00000000802072fe <.Lpcrel_hi25>:
802072fe: 17 35 00 00  	auipc	a0, 3
80207302: 13 05 a5 3b  	addi	a0, a0, 954
80207306: 23 38 a4 f6  	sd	a0, -144(s0)
8020730a: 23 3c 04 f6  	sd	zero, -136(s0)

000000008020730e <.Lpcrel_hi26>:
;             panic!("mappages: size");
8020730e: 17 35 00 00  	auipc	a0, 3
80207312: 93 05 25 43  	addi	a1, a0, 1074
80207316: 13 05 04 f6  	addi	a0, s0, -160
8020731a: 97 10 00 00  	auipc	ra, 1
8020731e: e7 80 80 07  	jalr	120(ra)
80207322: 00 00        	unimp	

0000000080207324 <.Lpcrel_hi33>:
80207324: 17 35 00 00  	auipc	a0, 3
80207328: 13 05 c5 40  	addi	a0, a0, 1036
8020732c: 23 30 a4 f6  	sd	a0, -160(s0)
80207330: 05 45        	li	a0, 1
80207332: 23 34 a4 f6  	sd	a0, -152(s0)
80207336: 23 30 04 f8  	sd	zero, -128(s0)

000000008020733a <.Lpcrel_hi34>:
8020733a: 17 35 00 00  	auipc	a0, 3
8020733e: 13 05 e5 37  	addi	a0, a0, 894
80207342: 23 38 a4 f6  	sd	a0, -144(s0)
80207346: 23 3c 04 f6  	sd	zero, -136(s0)

000000008020734a <.Lpcrel_hi35>:
;             panic!("mappages: size");
8020734a: 17 35 00 00  	auipc	a0, 3
8020734e: 93 05 65 3f  	addi	a1, a0, 1014
80207352: 13 05 04 f6  	addi	a0, s0, -160
80207356: 97 10 00 00  	auipc	ra, 1
8020735a: e7 80 c0 03  	jalr	60(ra)
8020735e: 00 00        	unimp	

0000000080207360 <.Lpcrel_hi46>:
80207360: 17 35 00 00  	auipc	a0, 3
80207364: 13 05 85 46  	addi	a0, a0, 1128
80207368: 23 30 a4 f6  	sd	a0, -160(s0)
8020736c: 23 34 94 f6  	sd	s1, -152(s0)
80207370: 23 30 04 f8  	sd	zero, -128(s0)

0000000080207374 <.Lpcrel_hi47>:
80207374: 17 35 00 00  	auipc	a0, 3
80207378: 13 05 45 46  	addi	a0, a0, 1124
8020737c: 23 38 a4 f6  	sd	a0, -144(s0)
80207380: 23 3c 04 f6  	sd	zero, -136(s0)

0000000080207384 <.Lpcrel_hi48>:
;             panic!("kvmmap");
80207384: 17 35 00 00  	auipc	a0, 3
80207388: 93 05 c5 46  	addi	a1, a0, 1132
8020738c: 13 05 04 f6  	addi	a0, s0, -160
80207390: 97 10 00 00  	auipc	ra, 1
80207394: e7 80 20 00  	jalr	2(ra)
80207398: 00 00        	unimp	

000000008020739a <.Lpcrel_hi43>:
8020739a: 17 35 00 00  	auipc	a0, 3
8020739e: 13 05 e5 35  	addi	a0, a0, 862
802073a2: 23 30 a4 f6  	sd	a0, -160(s0)
802073a6: 05 45        	li	a0, 1
802073a8: 23 34 a4 f6  	sd	a0, -152(s0)
802073ac: 23 30 04 f8  	sd	zero, -128(s0)

00000000802073b0 <.Lpcrel_hi44>:
802073b0: 17 35 00 00  	auipc	a0, 3
802073b4: 13 05 85 30  	addi	a0, a0, 776
802073b8: 23 38 a4 f6  	sd	a0, -144(s0)
802073bc: 23 3c 04 f6  	sd	zero, -136(s0)

00000000802073c0 <.Lpcrel_hi45>:
;                 panic!("mappages: remap");
802073c0: 17 35 00 00  	auipc	a0, 3
802073c4: 93 05 85 34  	addi	a1, a0, 840
802073c8: 13 05 04 f6  	addi	a0, s0, -160
802073cc: 97 10 00 00  	auipc	ra, 1
802073d0: e7 80 60 fc  	jalr	-58(ra)
802073d4: 00 00        	unimp	

00000000802073d6 <.Lpcrel_hi61>:
802073d6: 17 35 00 00  	auipc	a0, 3
802073da: 13 05 25 e8  	addi	a0, a0, -382

00000000802073de <.Lpcrel_hi62>:
802073de: 97 35 00 00  	auipc	a1, 3
802073e2: 93 86 a5 ea  	addi	a3, a1, -342

00000000802073e6 <.Lpcrel_hi63>:
802073e6: 97 35 00 00  	auipc	a1, 3
802073ea: 13 87 25 ed  	addi	a4, a1, -302
802073ee: 93 05 b0 02  	li	a1, 43
802073f2: 13 06 04 f9  	addi	a2, s0, -112
802073f6: 97 10 00 00  	auipc	ra, 1
802073fa: e7 80 60 03  	jalr	54(ra)
802073fe: 00 00        	unimp	

0000000080207400 <kvminithart>:
; pub fn kvminithart() {
80207400: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
80207402: 86 f4        	sd	ra, 104(sp)
80207404: a2 f0        	sd	s0, 96(sp)
80207406: a6 ec        	sd	s1, 88(sp)
80207408: ca e8        	sd	s2, 80(sp)
8020740a: ce e4        	sd	s3, 72(sp)
8020740c: 80 18        	addi	s0, sp, 112
8020740e: 73 00 00 12  	sfence.vma
80207412: 0f 00 30 03  	fence	rw, rw

0000000080207416 <.Lpcrel_hi64>:
80207416: 17 e5 08 00  	auipc	a0, 142
8020741a: 93 04 25 c9  	addi	s1, a0, -878
8020741e: 88 68        	ld	a0, 16(s1)
80207420: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80207424: 21 e9        	bnez	a0, 0x80207474 <.Lpcrel_hi64+0x5e>
80207426: 93 85 04 01  	addi	a1, s1, 16
8020742a: 85 49        	li	s3, 1
8020742c: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80207430: 31 e1        	bnez	a0, 0x80207474 <.Lpcrel_hi64+0x5e>
80207432: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80207436: 7d fa        	bnez	a2, 0x8020742c <.Lpcrel_hi64+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80207438: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
8020743c: 97 f0 ff ff  	auipc	ra, 1048575
80207440: e7 80 a0 44  	jalr	1098(ra)
80207444: 2a 89        	mv	s2, a0
80207446: 05 66        	lui	a2, 1
80207448: 81 45        	li	a1, 0
8020744a: 97 20 00 00  	auipc	ra, 2
8020744e: e7 80 80 24  	jalr	584(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80207452: 23 b0 34 01  	sd	s3, 0(s1)
80207456: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
8020745a: 23 04 04 fa  	sb	zero, -88(s0)
8020745e: 0f 00 10 03  	fence	rw, w
80207462: 09 45        	li	a0, 2
80207464: 88 e8        	sd	a0, 16(s1)
80207466: 13 05 04 fa  	addi	a0, s0, -96
8020746a: 97 10 00 00  	auipc	ra, 1
8020746e: e7 80 80 95  	jalr	-1704(ra)
80207472: 05 a0        	j	0x80207492 <.Lpcrel_hi64+0x7c>
80207474: 85 45        	li	a1, 1
;             match status {
80207476: 63 1b b5 00  	bne	a0, a1, 0x8020748c <.Lpcrel_hi64+0x76>
8020747a: 0f 00 00 01  	fence	w, 0
8020747e: 0f 00 30 03  	fence	rw, rw
80207482: 88 68        	ld	a0, 16(s1)
80207484: 0f 00 30 02  	fence	r, rw
;             match status {
80207488: e3 09 b5 fe  	beq	a0, a1, 0x8020747a <.Lpcrel_hi64+0x64>
8020748c: 89 45        	li	a1, 2
;             match status {
8020748e: 63 16 b5 06  	bne	a0, a1, 0x802074fa <.Lpcrel_hi71+0x28>
;         self.data as Addr
80207492: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80207494: 31 81        	srli	a0, a0, 12
80207496: fd 55        	li	a1, -1
80207498: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
8020749a: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020749c: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
802074a0: 73 00 00 12  	sfence.vma
802074a4: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
802074a8: 23 3c a4 f8  	sd	a0, -104(s0)

00000000802074ac <.Lpcrel_hi69>:
802074ac: 17 35 00 00  	auipc	a0, 3
802074b0: 13 05 c5 3c  	addi	a0, a0, 972
802074b4: 23 30 a4 fa  	sd	a0, -96(s0)
802074b8: 05 45        	li	a0, 1
802074ba: 23 34 a4 fa  	sd	a0, -88(s0)

00000000802074be <.Lpcrel_hi70>:
802074be: 17 35 00 00  	auipc	a0, 3
802074c2: 13 05 a5 31  	addi	a0, a0, 794
802074c6: 23 38 a4 fa  	sd	a0, -80(s0)
802074ca: 23 3c 04 fa  	sd	zero, -72(s0)
802074ce: 23 30 04 fc  	sd	zero, -64(s0)

00000000802074d2 <.Lpcrel_hi71>:
802074d2: 17 35 00 00  	auipc	a0, 3
802074d6: 93 05 65 d5  	addi	a1, a0, -682
802074da: 13 05 84 f9  	addi	a0, s0, -104
802074de: 13 06 04 fa  	addi	a2, s0, -96
802074e2: 97 10 00 00  	auipc	ra, 1
802074e6: e7 80 c0 4c  	jalr	1228(ra)
802074ea: 31 e5        	bnez	a0, 0x80207536 <.Lpcrel_hi72>
; }
802074ec: a6 70        	ld	ra, 104(sp)
802074ee: 06 74        	ld	s0, 96(sp)
802074f0: e6 64        	ld	s1, 88(sp)
802074f2: 46 69        	ld	s2, 80(sp)
802074f4: a6 69        	ld	s3, 72(sp)
802074f6: 65 61        	addi	sp, sp, 112
802074f8: 82 80        	ret
;             match status {
802074fa: 05 e1        	bnez	a0, 0x8020751a <.Lpcrel_hi67>

00000000802074fc <.Lpcrel_hi65>:
;                 INCOMPLETE => unreachable!(),
802074fc: 17 35 00 00  	auipc	a0, 3
80207500: 13 05 c5 b8  	addi	a0, a0, -1140

0000000080207504 <.Lpcrel_hi66>:
80207504: 97 35 00 00  	auipc	a1, 3
80207508: 13 86 c5 ba  	addi	a2, a1, -1108
8020750c: 93 05 80 02  	li	a1, 40
80207510: 97 10 00 00  	auipc	ra, 1
80207514: e7 80 00 eb  	jalr	-336(ra)
80207518: 00 00        	unimp	

000000008020751a <.Lpcrel_hi67>:
;                 PANICKED => panic!("Once has panicked"),
8020751a: 17 35 00 00  	auipc	a0, 3
8020751e: 13 05 65 ae  	addi	a0, a0, -1306

0000000080207522 <.Lpcrel_hi68>:
80207522: 97 35 00 00  	auipc	a1, 3
80207526: 13 86 e5 b4  	addi	a2, a1, -1202
8020752a: c5 45        	li	a1, 17
8020752c: 97 10 00 00  	auipc	ra, 1
80207530: e7 80 40 e9  	jalr	-364(ra)
80207534: 00 00        	unimp	

0000000080207536 <.Lpcrel_hi72>:
80207536: 17 35 00 00  	auipc	a0, 3
8020753a: 13 05 25 d2  	addi	a0, a0, -734

000000008020753e <.Lpcrel_hi73>:
8020753e: 97 35 00 00  	auipc	a1, 3
80207542: 93 86 a5 d4  	addi	a3, a1, -694

0000000080207546 <.Lpcrel_hi74>:
80207546: 97 35 00 00  	auipc	a1, 3
8020754a: 13 87 25 d7  	addi	a4, a1, -654
8020754e: 93 05 b0 02  	li	a1, 43
80207552: 13 06 04 fd  	addi	a2, s0, -48
80207556: 97 10 00 00  	auipc	ra, 1
8020755a: e7 80 60 ed  	jalr	-298(ra)
8020755e: 00 00        	unimp	

0000000080207560 <main>:
; pub fn main(sp: usize) {
80207560: 19 71        	addi	sp, sp, -128
80207562: 86 fc        	sd	ra, 120(sp)
80207564: a2 f8        	sd	s0, 112(sp)
80207566: a6 f4        	sd	s1, 104(sp)
80207568: ca f0        	sd	s2, 96(sp)
8020756a: ce ec        	sd	s3, 88(sp)
8020756c: 00 01        	addi	s0, sp, 128

000000008020756e <.Lpcrel_hi2>:
8020756e: 17 f5 28 00  	auipc	a0, 655
80207572: 13 05 25 a9  	addi	a0, a0, -1390

0000000080207576 <.Lpcrel_hi3>:
80207576: 97 65 08 00  	auipc	a1, 134
8020757a: 93 85 a5 a8  	addi	a1, a1, -1398
8020757e: 63 f9 a5 00  	bgeu	a1, a0, 0x80207590 <.Lpcrel_hi4>
80207582: 13 86 15 00  	addi	a2, a1, 1
80207586: 23 80 05 00  	sb	zero, 0(a1)
8020758a: b2 85        	mv	a1, a2
8020758c: e3 6b a6 fe  	bltu	a2, a0, 0x80207582 <.Lpcrel_hi3+0xc>

0000000080207590 <.Lpcrel_hi4>:
;         HEAP_ALLOCATOR
80207590: 17 e5 28 00  	auipc	a0, 654
80207594: 13 05 05 b3  	addi	a0, a0, -1232
80207598: 97 10 00 00  	auipc	ra, 1
8020759c: e7 80 a0 cd  	jalr	-806(ra)
802075a0: 2a 89        	mv	s2, a0
802075a2: 05 45        	li	a0, 1
802075a4: af 34 a9 00  	amoadd.d	s1, a0, (s2)
802075a8: 03 35 89 00  	ld	a0, 8(s2)
802075ac: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802075b0: 63 0a 95 00  	beq	a0, s1, 0x802075c4 <.Lpcrel_hi4+0x34>
802075b4: 0f 00 00 01  	fence	w, 0
802075b8: 03 35 89 00  	ld	a0, 8(s2)
802075bc: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802075c0: e3 1a 95 fe  	bne	a0, s1, 0x802075b4 <.Lpcrel_hi4+0x24>
;             value: unsafe { &mut *self.value.get() },
802075c4: 13 05 09 01  	addi	a0, s2, 16

00000000802075c8 <.Lpcrel_hi5>:
;         HEAP_ALLOCATOR
802075c8: 97 e5 08 00  	auipc	a1, 142
802075cc: 93 85 85 af  	addi	a1, a1, -1288
802075d0: 37 06 20 00  	lui	a2, 512
802075d4: 97 10 00 00  	auipc	ra, 1
802075d8: e7 80 e0 80  	jalr	-2034(ra)
;         let new_ticket = self.ticket + 1;
802075dc: 85 04        	addi	s1, s1, 1
802075de: 0f 00 10 03  	fence	rw, w
802075e2: 23 34 99 00  	sd	s1, 8(s2)

00000000802075e6 <.Lpcrel_hi6>:
802075e6: 17 55 00 00  	auipc	a0, 5
802075ea: 13 05 25 a2  	addi	a0, a0, -1502
802075ee: 93 75 c5 ff  	andi	a1, a0, -4
802075f2: 0d 89        	andi	a0, a0, 3
802075f4: 0e 05        	slli	a0, a0, 3
802075f6: 13 06 f0 0f  	li	a2, 255
802075fa: 3b 16 a6 00  	sllw	a2, a2, a0
802075fe: af a6 05 16  	lr.w.aqrl	a3, (a1)
80207602: 01 47        	li	a4, 0
80207604: 35 8f        	xor	a4, a4, a3
80207606: 71 8f        	and	a4, a4, a2
80207608: 35 8f        	xor	a4, a4, a3
8020760a: 2f a7 e5 1e  	sc.w.aqrl	a4, a4, (a1)
8020760e: 65 fb        	bnez	a4, 0x802075fe <.Lpcrel_hi6+0x18>
80207610: 3b d5 a6 00  	srlw	a0, a3, a0
80207614: 13 75 f5 0f  	andi	a0, a0, 255
;     if FIRST.swap(false, Ordering::SeqCst){
80207618: 4d e1        	bnez	a0, 0x802076ba <.Lpcrel_hi8>

000000008020761a <.Lpcrel_hi7>:
8020761a: 17 e5 28 00  	auipc	a0, 654
8020761e: 13 05 e5 bc  	addi	a0, a0, -1074
80207622: 0f 00 30 03  	fence	rw, rw
80207626: 83 05 05 00  	lb	a1, 0(a0)
8020762a: 0f 00 30 02  	fence	r, rw
8020762e: f5 d9        	beqz	a1, 0x80207622 <.Lpcrel_hi7+0x8>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207630: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80207632: 23 30 a4 f8  	sd	a0, -128(s0)
80207636: 13 05 04 f8  	addi	a0, s0, -128
8020763a: 23 34 a4 f8  	sd	a0, -120(s0)

000000008020763e <.Lpcrel_hi51>:
8020763e: 17 25 00 00  	auipc	a0, 2
80207642: 13 05 05 ef  	addi	a0, a0, -272
80207646: 23 38 a4 f8  	sd	a0, -112(s0)
8020764a: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
8020764e: 23 3c 24 f9  	sd	s2, -104(s0)

0000000080207652 <.Lpcrel_hi52>:
80207652: 17 35 00 00  	auipc	a0, 3
80207656: 13 05 65 29  	addi	a0, a0, 662
8020765a: 23 30 a4 fa  	sd	a0, -96(s0)
8020765e: 09 45        	li	a0, 2
80207660: 23 34 a4 fa  	sd	a0, -88(s0)
80207664: 13 05 84 f8  	addi	a0, s0, -120
80207668: 23 38 a4 fa  	sd	a0, -80(s0)
8020766c: 85 44        	li	s1, 1
8020766e: 23 3c 94 fa  	sd	s1, -72(s0)
80207672: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207676 <.Lpcrel_hi53>:
80207676: 17 35 00 00  	auipc	a0, 3
8020767a: 93 05 25 bb  	addi	a1, a0, -1102
8020767e: 13 05 84 f9  	addi	a0, s0, -104
80207682: 13 06 04 fa  	addi	a2, s0, -96
80207686: 97 10 00 00  	auipc	ra, 1
8020768a: e7 80 80 32  	jalr	808(ra)
8020768e: 55 c9        	beqz	a0, 0x80207742 <.Lpcrel_hi14+0x1a>

0000000080207690 <.Lpcrel_hi54>:
80207690: 17 35 00 00  	auipc	a0, 3
80207694: 13 05 85 bc  	addi	a0, a0, -1080

0000000080207698 <.Lpcrel_hi55>:
80207698: 97 35 00 00  	auipc	a1, 3
8020769c: 93 86 05 bf  	addi	a3, a1, -1040

00000000802076a0 <.Lpcrel_hi56>:
802076a0: 97 35 00 00  	auipc	a1, 3
802076a4: 13 87 85 c1  	addi	a4, a1, -1000
802076a8: 93 05 b0 02  	li	a1, 43
802076ac: 13 06 04 fd  	addi	a2, s0, -48
802076b0: 97 10 00 00  	auipc	ra, 1
802076b4: e7 80 c0 d7  	jalr	-644(ra)
802076b8: 00 00        	unimp	

00000000802076ba <.Lpcrel_hi8>:
;     println!("{}", LOGO);
802076ba: 17 35 00 00  	auipc	a0, 3
802076be: 13 05 e5 e3  	addi	a0, a0, -450
802076c2: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802076c6 <.Lpcrel_hi9>:
802076c6: 17 f5 ff ff  	auipc	a0, 1048575
802076ca: 13 05 85 9d  	addi	a0, a0, -1576
802076ce: 23 38 a4 f8  	sd	a0, -112(s0)
802076d2: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
802076d6: 23 3c 24 f9  	sd	s2, -104(s0)

00000000802076da <.Lpcrel_hi10>:
802076da: 17 35 00 00  	auipc	a0, 3
802076de: 13 05 65 e3  	addi	a0, a0, -458
802076e2: 23 30 a4 fa  	sd	a0, -96(s0)
802076e6: 09 45        	li	a0, 2
802076e8: 23 34 a4 fa  	sd	a0, -88(s0)
802076ec: 13 05 84 f8  	addi	a0, s0, -120
802076f0: 23 38 a4 fa  	sd	a0, -80(s0)
802076f4: 85 44        	li	s1, 1
802076f6: 23 3c 94 fa  	sd	s1, -72(s0)
802076fa: 23 30 04 fc  	sd	zero, -64(s0)

00000000802076fe <.Lpcrel_hi11>:
802076fe: 17 35 00 00  	auipc	a0, 3
80207702: 93 05 a5 b2  	addi	a1, a0, -1238
80207706: 13 05 84 f9  	addi	a0, s0, -104
8020770a: 13 06 04 fa  	addi	a2, s0, -96
8020770e: 97 10 00 00  	auipc	ra, 1
80207712: e7 80 00 2a  	jalr	672(ra)
80207716: 61 c5        	beqz	a0, 0x802077de <.Lpcrel_hi62+0x1a>

0000000080207718 <.Lpcrel_hi12>:
80207718: 17 35 00 00  	auipc	a0, 3
8020771c: 13 05 05 b4  	addi	a0, a0, -1216

0000000080207720 <.Lpcrel_hi13>:
80207720: 97 35 00 00  	auipc	a1, 3
80207724: 93 86 85 b6  	addi	a3, a1, -1176

0000000080207728 <.Lpcrel_hi14>:
80207728: 97 35 00 00  	auipc	a1, 3
8020772c: 13 87 05 b9  	addi	a4, a1, -1136
80207730: 93 05 b0 02  	li	a1, 43
80207734: 13 06 04 fd  	addi	a2, s0, -48
80207738: 97 10 00 00  	auipc	ra, 1
8020773c: e7 80 40 cf  	jalr	-780(ra)
80207740: 00 00        	unimp	
;         kvminithart();
80207742: 97 00 00 00  	auipc	ra, 0
80207746: e7 80 e0 cb  	jalr	-834(ra)
;         trapinithart();
8020774a: 97 e0 ff ff  	auipc	ra, 1048574
8020774e: e7 80 80 4b  	jalr	1208(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207752: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80207754: 93 15 85 00  	slli	a1, a0, 8
80207758: 37 26 00 0c  	lui	a2, 49154
8020775c: b2 95        	add	a1, a1, a2
8020775e: 13 06 20 40  	li	a2, 1026
80207762: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80207766: 36 05        	slli	a0, a0, 13
80207768: b7 15 20 0c  	lui	a1, 49665
8020776c: 2e 95        	add	a0, a0, a1
8020776e: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80207772: 23 34 24 f9  	sd	s2, -120(s0)

0000000080207776 <.Lpcrel_hi57>:
80207776: 17 35 00 00  	auipc	a0, 3
8020777a: 13 05 a5 b9  	addi	a0, a0, -1126
8020777e: 23 30 a4 fa  	sd	a0, -96(s0)
80207782: 23 34 94 fa  	sd	s1, -88(s0)

0000000080207786 <.Lpcrel_hi58>:
80207786: 17 35 00 00  	auipc	a0, 3
8020778a: 13 05 25 b7  	addi	a0, a0, -1166
8020778e: 23 38 a4 fa  	sd	a0, -80(s0)
80207792: 23 3c 04 fa  	sd	zero, -72(s0)
80207796: 23 30 04 fc  	sd	zero, -64(s0)

000000008020779a <.Lpcrel_hi59>:
8020779a: 17 35 00 00  	auipc	a0, 3
8020779e: 93 05 e5 a8  	addi	a1, a0, -1394
802077a2: 13 05 84 f8  	addi	a0, s0, -120
802077a6: 13 06 04 fa  	addi	a2, s0, -96
802077aa: 97 10 00 00  	auipc	ra, 1
802077ae: e7 80 40 20  	jalr	516(ra)
802077b2: 41 cd        	beqz	a0, 0x8020784a <.Lpcrel_hi63>

00000000802077b4 <.Lpcrel_hi60>:
802077b4: 17 35 00 00  	auipc	a0, 3
802077b8: 13 05 45 aa  	addi	a0, a0, -1372

00000000802077bc <.Lpcrel_hi61>:
802077bc: 97 35 00 00  	auipc	a1, 3
802077c0: 93 86 c5 ac  	addi	a3, a1, -1332

00000000802077c4 <.Lpcrel_hi62>:
802077c4: 97 35 00 00  	auipc	a1, 3
802077c8: 13 87 45 af  	addi	a4, a1, -1292
802077cc: 93 05 b0 02  	li	a1, 43
802077d0: 13 06 04 fd  	addi	a2, s0, -48
802077d4: 97 10 00 00  	auipc	ra, 1
802077d8: e7 80 80 c5  	jalr	-936(ra)
802077dc: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
802077de: 23 34 24 f9  	sd	s2, -120(s0)

00000000802077e2 <.Lpcrel_hi15>:
802077e2: 17 35 00 00  	auipc	a0, 3
802077e6: 13 05 65 0c  	addi	a0, a0, 198
802077ea: 23 30 a4 fa  	sd	a0, -96(s0)
802077ee: 23 34 94 fa  	sd	s1, -88(s0)

00000000802077f2 <.Lpcrel_hi16>:
802077f2: 17 35 00 00  	auipc	a0, 3
802077f6: 93 04 65 09  	addi	s1, a0, 150
802077fa: 23 38 94 fa  	sd	s1, -80(s0)
802077fe: 23 3c 04 fa  	sd	zero, -72(s0)
80207802: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207806 <.Lpcrel_hi17>:
80207806: 17 35 00 00  	auipc	a0, 3
8020780a: 93 05 25 a2  	addi	a1, a0, -1502
8020780e: 13 05 84 f8  	addi	a0, s0, -120
80207812: 13 06 04 fa  	addi	a2, s0, -96
80207816: 97 10 00 00  	auipc	ra, 1
8020781a: e7 80 80 19  	jalr	408(ra)
8020781e: 21 c5        	beqz	a0, 0x80207866 <.Lpcrel_hi63+0x1c>

0000000080207820 <.Lpcrel_hi18>:
80207820: 17 35 00 00  	auipc	a0, 3
80207824: 13 05 85 a3  	addi	a0, a0, -1480

0000000080207828 <.Lpcrel_hi19>:
80207828: 97 35 00 00  	auipc	a1, 3
8020782c: 93 86 05 a6  	addi	a3, a1, -1440

0000000080207830 <.Lpcrel_hi20>:
80207830: 97 35 00 00  	auipc	a1, 3
80207834: 13 87 85 a8  	addi	a4, a1, -1400
80207838: 93 05 b0 02  	li	a1, 43
8020783c: 13 06 04 fd  	addi	a2, s0, -48
80207840: 97 10 00 00  	auipc	ra, 1
80207844: e7 80 c0 be  	jalr	-1044(ra)
80207848: 00 00        	unimp	

000000008020784a <.Lpcrel_hi63>:
8020784a: 17 e5 28 00  	auipc	a0, 654
8020784e: 13 05 f5 99  	addi	a0, a0, -1633
80207852: 0f 00 10 03  	fence	rw, w
80207856: 85 45        	li	a1, 1
80207858: 23 00 b5 00  	sb	a1, 0(a0)
;     scheduler();
8020785c: 97 c0 ff ff  	auipc	ra, 1048572
80207860: e7 80 80 9b  	jalr	-1608(ra)
;     panic!("Shutdown!");
80207864: 00 00        	unimp	
80207866: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
8020786a: 23 34 a4 f8  	sd	a0, -120(s0)

000000008020786e <.Lpcrel_hi21>:
8020786e: 17 35 00 00  	auipc	a0, 3
80207872: 13 05 25 05  	addi	a0, a0, 82
80207876: 23 30 a4 fa  	sd	a0, -96(s0)
8020787a: 05 45        	li	a0, 1
8020787c: 23 34 a4 fa  	sd	a0, -88(s0)
80207880: 23 38 94 fa  	sd	s1, -80(s0)
80207884: 23 3c 04 fa  	sd	zero, -72(s0)
80207888: 23 30 04 fc  	sd	zero, -64(s0)

000000008020788c <.Lpcrel_hi22>:
8020788c: 17 35 00 00  	auipc	a0, 3
80207890: 93 05 c5 99  	addi	a1, a0, -1636
80207894: 13 05 84 f8  	addi	a0, s0, -120
80207898: 13 06 04 fa  	addi	a2, s0, -96
8020789c: 97 10 00 00  	auipc	ra, 1
802078a0: e7 80 20 11  	jalr	274(ra)
802078a4: 15 c5        	beqz	a0, 0x802078d0 <.Lpcrel_hi25+0x1a>

00000000802078a6 <.Lpcrel_hi23>:
802078a6: 17 35 00 00  	auipc	a0, 3
802078aa: 13 05 25 9b  	addi	a0, a0, -1614

00000000802078ae <.Lpcrel_hi24>:
802078ae: 97 35 00 00  	auipc	a1, 3
802078b2: 93 86 a5 9d  	addi	a3, a1, -1574

00000000802078b6 <.Lpcrel_hi25>:
802078b6: 97 35 00 00  	auipc	a1, 3
802078ba: 13 87 25 a0  	addi	a4, a1, -1534
802078be: 93 05 b0 02  	li	a1, 43
802078c2: 13 06 04 fd  	addi	a2, s0, -48
802078c6: 97 10 00 00  	auipc	ra, 1
802078ca: e7 80 60 b6  	jalr	-1178(ra)
802078ce: 00 00        	unimp	
;         kinit(); 			// 初始化物理页分配器
802078d0: 97 f0 ff ff  	auipc	ra, 1048575
802078d4: e7 80 40 d0  	jalr	-764(ra)
;         kvminit(); 			// 创建内核页表
802078d8: 97 f0 ff ff  	auipc	ra, 1048575
802078dc: e7 80 e0 3c  	jalr	974(ra)
;         kvminithart(); 		// 打开分页管理
802078e0: 97 00 00 00  	auipc	ra, 0
802078e4: e7 80 00 b2  	jalr	-1248(ra)

00000000802078e8 <.Lpcrel_hi26>:
;         self.0.call_once(builder)
802078e8: 17 55 08 00  	auipc	a0, 133
802078ec: 13 05 05 75  	addi	a0, a0, 1872
802078f0: 97 b0 ff ff  	auipc	ra, 1048571
802078f4: e7 80 20 d9  	jalr	-622(ra)
802078f8: 13 05 05 13  	addi	a0, a0, 304
802078fc: 93 05 00 04  	li	a1, 64
80207900: 37 06 00 02  	lui	a2, 8192
80207904: 75 36        	addiw	a2, a2, -3
80207906: 36 06        	slli	a2, a2, 13
80207908: ed 76        	lui	a3, 1048571
;         proc[i].kstack = kstack(i);
8020790a: 10 e1        	sd	a2, 0(a0)
8020790c: 13 05 85 17  	addi	a0, a0, 376
80207910: fd 15        	addi	a1, a1, -1
80207912: 36 96        	add	a2, a2, a3
80207914: fd f9        	bnez	a1, 0x8020790a <.Lpcrel_hi26+0x22>
80207916: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
8020791a: 23 34 24 f9  	sd	s2, -120(s0)

000000008020791e <.Lpcrel_hi27>:
8020791e: 17 25 00 00  	auipc	a0, 2
80207922: 13 05 a5 7d  	addi	a0, a0, 2010
80207926: 23 30 a4 fa  	sd	a0, -96(s0)
8020792a: 85 44        	li	s1, 1
8020792c: 23 34 94 fa  	sd	s1, -88(s0)

0000000080207930 <.Lpcrel_hi28>:
80207930: 17 25 00 00  	auipc	a0, 2
80207934: 13 05 85 7d  	addi	a0, a0, 2008
80207938: 23 38 a4 fa  	sd	a0, -80(s0)
8020793c: 23 3c 04 fa  	sd	zero, -72(s0)
80207940: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207944 <.Lpcrel_hi29>:
80207944: 17 35 00 00  	auipc	a0, 3
80207948: 93 05 45 8e  	addi	a1, a0, -1820
8020794c: 13 05 84 f8  	addi	a0, s0, -120
80207950: 13 06 04 fa  	addi	a2, s0, -96
80207954: 97 10 00 00  	auipc	ra, 1
80207958: e7 80 a0 05  	jalr	90(ra)
8020795c: 15 c5        	beqz	a0, 0x80207988 <.Lpcrel_hi32+0x1a>

000000008020795e <.Lpcrel_hi30>:
8020795e: 17 35 00 00  	auipc	a0, 3
80207962: 13 05 a5 8f  	addi	a0, a0, -1798

0000000080207966 <.Lpcrel_hi31>:
80207966: 97 35 00 00  	auipc	a1, 3
8020796a: 93 86 25 92  	addi	a3, a1, -1758

000000008020796e <.Lpcrel_hi32>:
8020796e: 97 35 00 00  	auipc	a1, 3
80207972: 13 87 a5 94  	addi	a4, a1, -1718
80207976: 93 05 b0 02  	li	a1, 43
8020797a: 13 06 04 fd  	addi	a2, s0, -48
8020797e: 97 10 00 00  	auipc	ra, 1
80207982: e7 80 e0 aa  	jalr	-1362(ra)
80207986: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80207988: 23 34 24 f9  	sd	s2, -120(s0)

000000008020798c <.Lpcrel_hi33>:
8020798c: 17 25 00 00  	auipc	a0, 2
80207990: 13 05 c5 7e  	addi	a0, a0, 2028
80207994: 23 30 a4 fa  	sd	a0, -96(s0)
80207998: 23 34 94 fa  	sd	s1, -88(s0)

000000008020799c <.Lpcrel_hi34>:
8020799c: 17 25 00 00  	auipc	a0, 2
802079a0: 13 05 c5 7e  	addi	a0, a0, 2028
802079a4: 23 38 a4 fa  	sd	a0, -80(s0)
802079a8: 23 3c 04 fa  	sd	zero, -72(s0)
802079ac: 23 30 04 fc  	sd	zero, -64(s0)

00000000802079b0 <.Lpcrel_hi35>:
802079b0: 17 35 00 00  	auipc	a0, 3
802079b4: 93 05 85 87  	addi	a1, a0, -1928
802079b8: 13 05 84 f8  	addi	a0, s0, -120
802079bc: 13 06 04 fa  	addi	a2, s0, -96
802079c0: 97 10 00 00  	auipc	ra, 1
802079c4: e7 80 e0 fe  	jalr	-18(ra)
802079c8: 15 c5        	beqz	a0, 0x802079f4 <.Lpcrel_hi38+0x1a>

00000000802079ca <.Lpcrel_hi36>:
802079ca: 17 35 00 00  	auipc	a0, 3
802079ce: 13 05 e5 88  	addi	a0, a0, -1906

00000000802079d2 <.Lpcrel_hi37>:
802079d2: 97 35 00 00  	auipc	a1, 3
802079d6: 93 86 65 8b  	addi	a3, a1, -1866

00000000802079da <.Lpcrel_hi38>:
802079da: 97 35 00 00  	auipc	a1, 3
802079de: 13 87 e5 8d  	addi	a4, a1, -1826
802079e2: 93 05 b0 02  	li	a1, 43
802079e6: 13 06 04 fd  	addi	a2, s0, -48
802079ea: 97 10 00 00  	auipc	ra, 1
802079ee: e7 80 20 a4  	jalr	-1470(ra)
802079f2: 00 00        	unimp	
;         trapinithart(); 	// 设置中断向量
802079f4: 97 e0 ff ff  	auipc	ra, 1048574
802079f8: e7 80 e0 20  	jalr	526(ra)
802079fc: 37 05 00 0c  	lui	a0, 49152
80207a00: 85 49        	li	s3, 1
80207a02: 23 24 35 03  	sw	s3, 40(a0)
80207a06: 23 22 35 01  	sw	s3, 4(a0)
;     Stdout.write_fmt(args).unwrap();
80207a0a: 23 34 24 f9  	sd	s2, -120(s0)

0000000080207a0e <.Lpcrel_hi39>:
80207a0e: 17 35 00 00  	auipc	a0, 3
80207a12: 13 05 a5 8d  	addi	a0, a0, -1830
80207a16: 23 30 a4 fa  	sd	a0, -96(s0)
80207a1a: 23 34 34 fb  	sd	s3, -88(s0)

0000000080207a1e <.Lpcrel_hi40>:
80207a1e: 17 35 00 00  	auipc	a0, 3
80207a22: 93 04 a5 8d  	addi	s1, a0, -1830
80207a26: 23 38 94 fa  	sd	s1, -80(s0)
80207a2a: 23 3c 04 fa  	sd	zero, -72(s0)
80207a2e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207a32 <.Lpcrel_hi41>:
80207a32: 17 25 00 00  	auipc	a0, 2
80207a36: 93 05 65 7f  	addi	a1, a0, 2038
80207a3a: 13 05 84 f8  	addi	a0, s0, -120
80207a3e: 13 06 04 fa  	addi	a2, s0, -96
80207a42: 97 10 00 00  	auipc	ra, 1
80207a46: e7 80 c0 f6  	jalr	-148(ra)
80207a4a: 15 c5        	beqz	a0, 0x80207a76 <.Lpcrel_hi44+0x1a>

0000000080207a4c <.Lpcrel_hi42>:
80207a4c: 17 35 00 00  	auipc	a0, 3
80207a50: 13 05 c5 80  	addi	a0, a0, -2036

0000000080207a54 <.Lpcrel_hi43>:
80207a54: 97 35 00 00  	auipc	a1, 3
80207a58: 93 86 45 83  	addi	a3, a1, -1996

0000000080207a5c <.Lpcrel_hi44>:
80207a5c: 97 35 00 00  	auipc	a1, 3
80207a60: 13 87 c5 85  	addi	a4, a1, -1956
80207a64: 93 05 b0 02  	li	a1, 43
80207a68: 13 06 04 fd  	addi	a2, s0, -48
80207a6c: 97 10 00 00  	auipc	ra, 1
80207a70: e7 80 00 9c  	jalr	-1600(ra)
80207a74: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80207a76: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80207a78: 93 15 85 00  	slli	a1, a0, 8
80207a7c: 37 26 00 0c  	lui	a2, 49154
80207a80: b2 95        	add	a1, a1, a2
80207a82: 13 06 20 40  	li	a2, 1026
80207a86: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80207a8a: 36 05        	slli	a0, a0, 13
80207a8c: b7 15 20 0c  	lui	a1, 49665
80207a90: 2e 95        	add	a0, a0, a1
80207a92: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80207a96: 23 34 24 f9  	sd	s2, -120(s0)

0000000080207a9a <.Lpcrel_hi45>:
80207a9a: 17 35 00 00  	auipc	a0, 3
80207a9e: 13 05 65 87  	addi	a0, a0, -1930
80207aa2: 23 30 a4 fa  	sd	a0, -96(s0)
80207aa6: 23 34 34 fb  	sd	s3, -88(s0)
80207aaa: 23 38 94 fa  	sd	s1, -80(s0)
80207aae: 23 3c 04 fa  	sd	zero, -72(s0)
80207ab2: 23 30 04 fc  	sd	zero, -64(s0)

0000000080207ab6 <.Lpcrel_hi46>:
80207ab6: 17 25 00 00  	auipc	a0, 2
80207aba: 93 05 25 77  	addi	a1, a0, 1906
80207abe: 13 05 84 f8  	addi	a0, s0, -120
80207ac2: 13 06 04 fa  	addi	a2, s0, -96
80207ac6: 97 10 00 00  	auipc	ra, 1
80207aca: e7 80 80 ee  	jalr	-280(ra)
80207ace: 15 c5        	beqz	a0, 0x80207afa <.Lpcrel_hi49+0x1a>

0000000080207ad0 <.Lpcrel_hi47>:
80207ad0: 17 25 00 00  	auipc	a0, 2
80207ad4: 13 05 85 78  	addi	a0, a0, 1928

0000000080207ad8 <.Lpcrel_hi48>:
80207ad8: 97 25 00 00  	auipc	a1, 2
80207adc: 93 86 05 7b  	addi	a3, a1, 1968

0000000080207ae0 <.Lpcrel_hi49>:
80207ae0: 97 25 00 00  	auipc	a1, 2
80207ae4: 13 87 85 7d  	addi	a4, a1, 2008
80207ae8: 93 05 b0 02  	li	a1, 43
80207aec: 13 06 04 fd  	addi	a2, s0, -48
80207af0: 97 10 00 00  	auipc	ra, 1
80207af4: e7 80 c0 93  	jalr	-1732(ra)
80207af8: 00 00        	unimp	
;         userinit(); 		// 初始化第 0 个进程
80207afa: 97 b0 ff ff  	auipc	ra, 1048571
80207afe: e7 80 e0 41  	jalr	1054(ra)

0000000080207b02 <.Lpcrel_hi50>:
80207b02: 17 d5 28 00  	auipc	a0, 653
80207b06: 13 05 65 6e  	addi	a0, a0, 1766
80207b0a: a1 b3        	j	0x80207852 <.Lpcrel_hi63+0x8>

0000000080207b0c <__rg_alloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80207b0c: 41 11        	addi	sp, sp, -16
80207b0e: 06 e4        	sd	ra, 8(sp)
80207b10: 22 e0        	sd	s0, 0(sp)
80207b12: 00 08        	addi	s0, sp, 16

0000000080207b14 <.Lpcrel_hi2>:
80207b14: 17 d6 28 00  	auipc	a2, 653
80207b18: 13 06 c6 5a  	addi	a2, a2, 1452
80207b1c: aa 86        	mv	a3, a0
80207b1e: 32 85        	mv	a0, a2
80207b20: 36 86        	mv	a2, a3
80207b22: a2 60        	ld	ra, 8(sp)
80207b24: 02 64        	ld	s0, 0(sp)
80207b26: 41 01        	addi	sp, sp, 16
80207b28: 17 03 00 00  	auipc	t1, 0
80207b2c: 67 00 a3 75  	jr	1882(t1)

0000000080207b30 <__rg_dealloc>:
80207b30: 41 11        	addi	sp, sp, -16
80207b32: 06 e4        	sd	ra, 8(sp)
80207b34: 22 e0        	sd	s0, 0(sp)
80207b36: 00 08        	addi	s0, sp, 16

0000000080207b38 <.Lpcrel_hi3>:
80207b38: 97 d6 28 00  	auipc	a3, 653
80207b3c: 93 86 86 58  	addi	a3, a3, 1416
80207b40: 2e 87        	mv	a4, a1
80207b42: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80207b44: 36 85        	mv	a0, a3
80207b46: ba 86        	mv	a3, a4
80207b48: a2 60        	ld	ra, 8(sp)
80207b4a: 02 64        	ld	s0, 0(sp)
80207b4c: 41 01        	addi	sp, sp, 16
80207b4e: 17 03 00 00  	auipc	t1, 0
80207b52: 67 00 23 78  	jr	1922(t1)

0000000080207b56 <_ZN6kernel9allocator18handle_alloc_error17h7d97b7c619a60b7bE>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
80207b56: 1d 71        	addi	sp, sp, -96
80207b58: 86 ec        	sd	ra, 88(sp)
80207b5a: a2 e8        	sd	s0, 80(sp)
80207b5c: 80 10        	addi	s0, sp, 96
80207b5e: 23 30 a4 fa  	sd	a0, -96(s0)
80207b62: 23 34 b4 fa  	sd	a1, -88(s0)
80207b66: 13 05 04 fa  	addi	a0, s0, -96
;     panic!("Heap allocation error, layout = {:?}", layout);
80207b6a: 23 30 a4 fe  	sd	a0, -32(s0)

0000000080207b6e <.Lpcrel_hi7>:
80207b6e: 17 25 00 00  	auipc	a0, 2
80207b72: 13 05 e5 a6  	addi	a0, a0, -1426
80207b76: 23 34 a4 fe  	sd	a0, -24(s0)

0000000080207b7a <.Lpcrel_hi8>:
80207b7a: 17 35 00 00  	auipc	a0, 3
80207b7e: 13 05 e5 dc  	addi	a0, a0, -562
80207b82: 23 38 a4 fa  	sd	a0, -80(s0)
80207b86: 05 45        	li	a0, 1
80207b88: 23 3c a4 fa  	sd	a0, -72(s0)
80207b8c: 23 38 04 fc  	sd	zero, -48(s0)
80207b90: 93 05 04 fe  	addi	a1, s0, -32
80207b94: 23 30 b4 fc  	sd	a1, -64(s0)
80207b98: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080207b9c <.Lpcrel_hi9>:
;     panic!("Heap allocation error, layout = {:?}", layout);
80207b9c: 17 35 00 00  	auipc	a0, 3
80207ba0: 93 05 45 dd  	addi	a1, a0, -556
80207ba4: 13 05 04 fb  	addi	a0, s0, -80
80207ba8: 97 00 00 00  	auipc	ra, 0
80207bac: e7 80 a0 7e  	jalr	2026(ra)
80207bb0: 00 00        	unimp	

0000000080207bb2 <__rg_oom>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
80207bb2: 41 11        	addi	sp, sp, -16
80207bb4: 06 e4        	sd	ra, 8(sp)
80207bb6: 22 e0        	sd	s0, 0(sp)
80207bb8: 00 08        	addi	s0, sp, 16
80207bba: 2a 86        	mv	a2, a0
80207bbc: 2e 85        	mv	a0, a1
80207bbe: b2 85        	mv	a1, a2
80207bc0: 97 00 00 00  	auipc	ra, 0
80207bc4: e7 80 60 f9  	jalr	-106(ra)
80207bc8: 00 00        	unimp	

0000000080207bca <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80207bca: 71 71        	addi	sp, sp, -176
80207bcc: 06 f5        	sd	ra, 168(sp)
80207bce: 22 f1        	sd	s0, 160(sp)
80207bd0: 26 ed        	sd	s1, 152(sp)
80207bd2: 00 19        	addi	s0, sp, 176
80207bd4: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80207bd6: 97 00 00 00  	auipc	ra, 0
80207bda: e7 80 40 7b  	jalr	1972(ra)
80207bde: 05 e1        	bnez	a0, 0x80207bfe <.Lpcrel_hi1+0x16>

0000000080207be0 <.Lpcrel_hi0>:
80207be0: 17 35 00 00  	auipc	a0, 3
80207be4: 13 05 85 e2  	addi	a0, a0, -472

0000000080207be8 <.Lpcrel_hi1>:
80207be8: 97 35 00 00  	auipc	a1, 3
80207bec: 13 86 05 e6  	addi	a2, a1, -416
80207bf0: 93 05 b0 02  	li	a1, 43
80207bf4: 97 00 00 00  	auipc	ra, 0
80207bf8: e7 80 c0 7c  	jalr	1996(ra)
80207bfc: 00 00        	unimp	
80207bfe: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80207c02: 26 85        	mv	a0, s1
80207c04: 97 00 00 00  	auipc	ra, 0
80207c08: e7 80 a0 78  	jalr	1930(ra)
80207c0c: 59 e1        	bnez	a0, 0x80207c92 <.Lpcrel_hi15+0x1a>
80207c0e: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80207c12: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080207c16 <.Lpcrel_hi10>:
80207c16: 17 e5 ff ff  	auipc	a0, 1048574
80207c1a: 13 05 05 47  	addi	a0, a0, 1136
80207c1e: 23 34 a4 f6  	sd	a0, -152(s0)
80207c22: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80207c26: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080207c2a <.Lpcrel_hi11>:
80207c2a: 17 35 00 00  	auipc	a0, 3
80207c2e: 13 05 e5 d6  	addi	a0, a0, -658
80207c32: 23 38 a4 fa  	sd	a0, -80(s0)
80207c36: 09 45        	li	a0, 2
80207c38: 23 3c a4 fa  	sd	a0, -72(s0)
80207c3c: 13 05 04 f6  	addi	a0, s0, -160
80207c40: 23 30 a4 fc  	sd	a0, -64(s0)
80207c44: 05 45        	li	a0, 1
80207c46: 23 34 a4 fc  	sd	a0, -56(s0)
80207c4a: 23 38 04 fc  	sd	zero, -48(s0)

0000000080207c4e <.Lpcrel_hi12>:
80207c4e: 17 25 00 00  	auipc	a0, 2
80207c52: 93 05 a5 5d  	addi	a1, a0, 1498
80207c56: 13 05 04 f9  	addi	a0, s0, -112
80207c5a: 13 06 04 fb  	addi	a2, s0, -80
80207c5e: 97 10 00 00  	auipc	ra, 1
80207c62: e7 80 00 d5  	jalr	-688(ra)
80207c66: 6d c5        	beqz	a0, 0x80207d50 <.Lpcrel_hi9+0x1a>

0000000080207c68 <.Lpcrel_hi13>:
80207c68: 17 25 00 00  	auipc	a0, 2
80207c6c: 13 05 05 5f  	addi	a0, a0, 1520

0000000080207c70 <.Lpcrel_hi14>:
80207c70: 97 25 00 00  	auipc	a1, 2
80207c74: 93 86 85 61  	addi	a3, a1, 1560

0000000080207c78 <.Lpcrel_hi15>:
80207c78: 97 25 00 00  	auipc	a1, 2
80207c7c: 13 87 05 64  	addi	a4, a1, 1600
80207c80: 93 05 b0 02  	li	a1, 43
80207c84: 13 06 04 fe  	addi	a2, s0, -32
80207c88: 97 00 00 00  	auipc	ra, 0
80207c8c: e7 80 40 7a  	jalr	1956(ra)
80207c90: 00 00        	unimp	
80207c92: 0c 61        	ld	a1, 0(a0)
80207c94: 10 65        	ld	a2, 8(a0)
80207c96: 23 38 b4 f8  	sd	a1, -112(s0)
80207c9a: 23 3c c4 f8  	sd	a2, -104(s0)
80207c9e: 08 49        	lw	a0, 16(a0)
80207ca0: 23 22 a4 fa  	sw	a0, -92(s0)
80207ca4: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80207ca8: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080207cac <.Lpcrel_hi2>:
80207cac: 17 e5 ff ff  	auipc	a0, 1048574
80207cb0: 13 05 25 3f  	addi	a0, a0, 1010
80207cb4: 23 34 a4 f6  	sd	a0, -152(s0)
80207cb8: 13 05 44 fa  	addi	a0, s0, -92
80207cbc: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080207cc0 <.Lpcrel_hi3>:
80207cc0: 17 25 00 00  	auipc	a0, 2
80207cc4: 13 05 e5 85  	addi	a0, a0, -1954
80207cc8: 23 3c a4 f6  	sd	a0, -136(s0)
80207ccc: 13 05 84 f5  	addi	a0, s0, -168
80207cd0: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080207cd4 <.Lpcrel_hi4>:
80207cd4: 17 e5 ff ff  	auipc	a0, 1048574
80207cd8: 13 05 25 3b  	addi	a0, a0, 946
80207cdc: 23 34 a4 f8  	sd	a0, -120(s0)
80207ce0: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80207ce4: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080207ce8 <.Lpcrel_hi5>:
80207ce8: 17 35 00 00  	auipc	a0, 3
80207cec: 13 05 05 ce  	addi	a0, a0, -800
80207cf0: 23 38 a4 fa  	sd	a0, -80(s0)
80207cf4: 11 45        	li	a0, 4
80207cf6: 23 3c a4 fa  	sd	a0, -72(s0)
80207cfa: 13 05 04 f6  	addi	a0, s0, -160
80207cfe: 23 30 a4 fc  	sd	a0, -64(s0)
80207d02: 0d 45        	li	a0, 3
80207d04: 23 34 a4 fc  	sd	a0, -56(s0)
80207d08: 23 38 04 fc  	sd	zero, -48(s0)

0000000080207d0c <.Lpcrel_hi6>:
80207d0c: 17 25 00 00  	auipc	a0, 2
80207d10: 93 05 c5 51  	addi	a1, a0, 1308
80207d14: 13 05 84 fa  	addi	a0, s0, -88
80207d18: 13 06 04 fb  	addi	a2, s0, -80
80207d1c: 97 10 00 00  	auipc	ra, 1
80207d20: e7 80 20 c9  	jalr	-878(ra)
80207d24: 15 c5        	beqz	a0, 0x80207d50 <.Lpcrel_hi9+0x1a>

0000000080207d26 <.Lpcrel_hi7>:
80207d26: 17 25 00 00  	auipc	a0, 2
80207d2a: 13 05 25 53  	addi	a0, a0, 1330

0000000080207d2e <.Lpcrel_hi8>:
80207d2e: 97 25 00 00  	auipc	a1, 2
80207d32: 93 86 a5 55  	addi	a3, a1, 1370

0000000080207d36 <.Lpcrel_hi9>:
80207d36: 97 25 00 00  	auipc	a1, 2
80207d3a: 13 87 25 58  	addi	a4, a1, 1410
80207d3e: 93 05 b0 02  	li	a1, 43
80207d42: 13 06 04 fe  	addi	a2, s0, -32
80207d46: 97 00 00 00  	auipc	ra, 0
80207d4a: e7 80 60 6e  	jalr	1766(ra)
80207d4e: 00 00        	unimp	
;     shutdown()
80207d50: 97 00 00 00  	auipc	ra, 0
80207d54: e7 80 a0 00  	jalr	10(ra)
80207d58: 00 00        	unimp	

0000000080207d5a <_ZN6kernel3sbi8shutdown17h9a9bfddbf1c41574E>:
; pub fn shutdown() -> ! {
80207d5a: 39 71        	addi	sp, sp, -64
80207d5c: 06 fc        	sd	ra, 56(sp)
80207d5e: 22 f8        	sd	s0, 48(sp)
80207d60: 80 00        	addi	s0, sp, 64
;         asm!(
80207d62: a1 48        	li	a7, 8
80207d64: 01 45        	li	a0, 0
80207d66: 81 45        	li	a1, 0
80207d68: 01 46        	li	a2, 0
80207d6a: 73 00 00 00  	ecall	

0000000080207d6e <.Lpcrel_hi16>:
80207d6e: 17 35 00 00  	auipc	a0, 3
80207d72: 13 05 a5 d0  	addi	a0, a0, -758
80207d76: 23 30 a4 fc  	sd	a0, -64(s0)
80207d7a: 05 45        	li	a0, 1
80207d7c: 23 34 a4 fc  	sd	a0, -56(s0)
80207d80: 23 30 04 fe  	sd	zero, -32(s0)

0000000080207d84 <.Lpcrel_hi17>:
80207d84: 17 35 00 00  	auipc	a0, 3
80207d88: 13 05 45 c0  	addi	a0, a0, -1020
80207d8c: 23 38 a4 fc  	sd	a0, -48(s0)
80207d90: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080207d94 <.Lpcrel_hi18>:
;     panic!("It should shutdown!");
80207d94: 17 35 00 00  	auipc	a0, 3
80207d98: 93 05 45 d0  	addi	a1, a0, -764
80207d9c: 13 05 04 fc  	addi	a0, s0, -64
80207da0: 97 00 00 00  	auipc	ra, 0
80207da4: e7 80 20 5f  	jalr	1522(ra)
80207da8: 00 00        	unimp	

0000000080207daa <__rust_alloc>:
80207daa: 17 03 00 00  	auipc	t1, 0
80207dae: 67 00 23 d6  	jr	-670(t1)

0000000080207db2 <__rust_dealloc>:
80207db2: 17 03 00 00  	auipc	t1, 0
80207db6: 67 00 e3 d7  	jr	-642(t1)

0000000080207dba <__rust_alloc_error_handler>:
80207dba: 17 03 00 00  	auipc	t1, 0
80207dbe: 67 00 83 df  	jr	-520(t1)

0000000080207dc2 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80207dc2: 41 11        	addi	sp, sp, -16
80207dc4: 06 e4        	sd	ra, 8(sp)
80207dc6: 22 e0        	sd	s0, 0(sp)
80207dc8: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80207dca: 83 45 85 00  	lbu	a1, 8(a0)
80207dce: 91 c5        	beqz	a1, 0x80207dda <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80207dd0: 08 61        	ld	a0, 0(a0)
80207dd2: 0f 00 10 03  	fence	rw, w
80207dd6: 8d 45        	li	a1, 3
80207dd8: 0c e1        	sd	a1, 0(a0)
;     }
80207dda: a2 60        	ld	ra, 8(sp)
80207ddc: 02 64        	ld	s0, 0(sp)
80207dde: 41 01        	addi	sp, sp, 16
80207de0: 82 80        	ret

0000000080207de2 <_ZN22buddy_system_allocator4Heap4init17h4df384204bea4151E>:
;     pub unsafe fn init(&mut self, start: usize, size: usize) {
80207de2: 41 11        	addi	sp, sp, -16
;         self.add_to_heap(start, start + size);
80207de4: 06 e4        	sd	ra, 8(sp)
80207de6: 22 e0        	sd	s0, 0(sp)
80207de8: 00 08        	addi	s0, sp, 16
80207dea: 2e 96        	add	a2, a2, a1
;         start = (start + size_of::<usize>() - 1) & (!size_of::<usize>() + 1);
80207dec: 9d 05        	addi	a1, a1, 7
80207dee: 93 f7 85 ff  	andi	a5, a1, -8
;         end = end & (!size_of::<usize>() + 1);
80207df2: 93 7f 86 ff  	andi	t6, a2, -8
;         assert!(start <= end);
80207df6: 63 e9 ff 10  	bltu	t6, a5, 0x80207f08 <.Lpcrel_hi15>
80207dfa: 01 47        	li	a4, 0
;         while current_start + size_of::<usize>() <= end {
80207dfc: 93 85 87 00  	addi	a1, a5, 8
80207e00: 63 ef bf 0c  	bltu	t6, a1, 0x80207ede <.Lpcrel_hi10+0xae>
80207e04: 05 48        	li	a6, 1

0000000080207e06 <.Lpcrel_hi9>:
80207e06: 97 45 00 00  	auipc	a1, 4
80207e0a: 83 b8 25 25  	ld	a7, 594(a1)

0000000080207e0e <.Lpcrel_hi11>:
80207e0e: 97 45 00 00  	auipc	a1, 4
80207e12: 83 b2 a5 22  	ld	t0, 554(a1)

0000000080207e16 <.Lpcrel_hi12>:
80207e16: 97 45 00 00  	auipc	a1, 4
80207e1a: 03 bf a5 22  	ld	t5, 554(a1)

0000000080207e1e <.Lpcrel_hi13>:
80207e1e: 97 45 00 00  	auipc	a1, 4
80207e22: 03 b3 a5 22  	ld	t1, 554(a1)

0000000080207e26 <.Lpcrel_hi14>:
80207e26: 97 45 00 00  	auipc	a1, 4
80207e2a: 83 b3 a5 22  	ld	t2, 554(a1)
80207e2e: 7d 4e        	li	t3, 31

0000000080207e30 <.Lpcrel_hi10>:
80207e30: 97 35 00 00  	auipc	a1, 3
80207e34: 93 8e 05 cc  	addi	t4, a1, -832
;             let size = min(lowbit, prev_power_of_two(end - current_start));
80207e38: b3 85 ff 40  	sub	a1, t6, a5
80207e3c: a9 c9        	beqz	a1, 0x80207e8e <.Lpcrel_hi10+0x5e>
80207e3e: 93 d6 15 00  	srli	a3, a1, 1
80207e42: d5 8d        	or	a1, a1, a3
80207e44: 93 d6 25 00  	srli	a3, a1, 2
80207e48: d5 8d        	or	a1, a1, a3
80207e4a: 93 d6 45 00  	srli	a3, a1, 4
80207e4e: d5 8d        	or	a1, a1, a3
80207e50: 93 d6 85 00  	srli	a3, a1, 8
80207e54: d5 8d        	or	a1, a1, a3
80207e56: 93 d6 05 01  	srli	a3, a1, 16
80207e5a: d5 8d        	or	a1, a1, a3
80207e5c: 93 d6 05 02  	srli	a3, a1, 32
80207e60: d5 8d        	or	a1, a1, a3
80207e62: 93 c5 f5 ff  	not	a1, a1
80207e66: 93 d6 15 00  	srli	a3, a1, 1
80207e6a: b3 f6 56 00  	and	a3, a3, t0
80207e6e: 95 8d        	sub	a1, a1, a3
80207e70: b3 f6 e5 01  	and	a3, a1, t5
80207e74: 89 81        	srli	a1, a1, 2
80207e76: b3 f5 e5 01  	and	a1, a1, t5
80207e7a: b6 95        	add	a1, a1, a3
80207e7c: 93 d6 45 00  	srli	a3, a1, 4
80207e80: b6 95        	add	a1, a1, a3
80207e82: b3 f5 65 00  	and	a1, a1, t1
80207e86: b3 86 75 02  	mul	a3, a1, t2
80207e8a: e1 92        	srli	a3, a3, 56
80207e8c: 19 a0        	j	0x80207e92 <.Lpcrel_hi10+0x62>
80207e8e: 93 06 00 04  	li	a3, 64
80207e92: b3 05 f0 40  	neg	a1, a5
80207e96: fd 8d        	and	a1, a1, a5
;     1 << (8 * (size_of::<usize>()) - num.leading_zeros() as usize - 1)
80207e98: 93 c6 f6 ff  	not	a3, a3
80207e9c: b3 16 d8 00  	sll	a3, a6, a3
80207ea0: 63 e3 d5 00  	bltu	a1, a3, 0x80207ea6 <.Lpcrel_hi10+0x76>
80207ea4: b6 85        	mv	a1, a3
80207ea6: 89 cd        	beqz	a1, 0x80207ec0 <.Lpcrel_hi10+0x90>
80207ea8: b3 06 b0 40  	neg	a3, a1
80207eac: ed 8e        	and	a3, a3, a1
80207eae: b3 86 16 03  	mul	a3, a3, a7
80207eb2: e9 92        	srli	a3, a3, 58
80207eb4: f6 96        	add	a3, a3, t4
80207eb6: 83 c6 06 00  	lbu	a3, 0(a3)
80207eba: 63 77 de 00  	bgeu	t3, a3, 0x80207ec8 <.Lpcrel_hi10+0x98>
80207ebe: 0d a8        	j	0x80207ef0 <.Lpcrel_hi17>
80207ec0: 93 06 00 04  	li	a3, 64
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
80207ec4: 63 66 de 02  	bltu	t3, a3, 0x80207ef0 <.Lpcrel_hi17>
80207ec8: 8e 06        	slli	a3, a3, 3
80207eca: aa 96        	add	a3, a3, a0
;         *item = self.head as usize;
80207ecc: 90 62        	ld	a2, 0(a3)
80207ece: 90 e3        	sd	a2, 0(a5)
;         self.head = item;
80207ed0: 9c e2        	sd	a5, 0(a3)
;             current_start += size;
80207ed2: ae 97        	add	a5, a5, a1
;         while current_start + size_of::<usize>() <= end {
80207ed4: 13 86 87 00  	addi	a2, a5, 8
;             total += size;
80207ed8: 2e 97        	add	a4, a4, a1
;         while current_start + size_of::<usize>() <= end {
80207eda: e3 ff cf f4  	bgeu	t6, a2, 0x80207e38 <.Lpcrel_hi10+0x8>
;         self.total += total;
80207ede: 83 35 05 11  	ld	a1, 272(a0)
80207ee2: ba 95        	add	a1, a1, a4
80207ee4: 23 38 b5 10  	sd	a1, 272(a0)
;     }
80207ee8: a2 60        	ld	ra, 8(sp)
80207eea: 02 64        	ld	s0, 0(sp)
80207eec: 41 01        	addi	sp, sp, 16
80207eee: 82 80        	ret

0000000080207ef0 <.Lpcrel_hi17>:
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
80207ef0: 17 35 00 00  	auipc	a0, 3
80207ef4: 13 06 85 d6  	addi	a2, a0, -664
80207ef8: 93 05 00 02  	li	a1, 32
80207efc: 36 85        	mv	a0, a3
80207efe: 97 00 00 00  	auipc	ra, 0
80207f02: e7 80 e0 4e  	jalr	1262(ra)
80207f06: 00 00        	unimp	

0000000080207f08 <.Lpcrel_hi15>:
;         assert!(start <= end);
80207f08: 17 35 00 00  	auipc	a0, 3
80207f0c: 13 05 85 ca  	addi	a0, a0, -856

0000000080207f10 <.Lpcrel_hi16>:
80207f10: 97 35 00 00  	auipc	a1, 3
80207f14: 13 86 05 d3  	addi	a2, a1, -720
80207f18: f9 45        	li	a1, 30
80207f1a: 97 00 00 00  	auipc	ra, 0
80207f1e: e7 80 60 4a  	jalr	1190(ra)
80207f22: 00 00        	unimp	

0000000080207f24 <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E>:
;     pub fn alloc(&mut self, layout: Layout) -> Result<NonNull<u8>, ()> {
80207f24: 41 11        	addi	sp, sp, -16
80207f26: 06 e4        	sd	ra, 8(sp)
80207f28: 22 e0        	sd	s0, 0(sp)
80207f2a: 00 08        	addi	s0, sp, 16
80207f2c: 09 47        	li	a4, 2
80207f2e: 85 46        	li	a3, 1
80207f30: 63 78 e6 0c  	bgeu	a2, a4, 0x80208000 <.Lpcrel_hi23+0xaa>
80207f34: 63 f4 b6 14  	bgeu	a3, a1, 0x8020807c <.Lpcrel_hi21+0x22>
80207f38: a1 46        	li	a3, 8
80207f3a: 63 f5 b6 14  	bgeu	a3, a1, 0x80208084 <.Lpcrel_hi21+0x2a>
80207f3e: 63 86 05 14  	beqz	a1, 0x8020808a <.Lpcrel_hi21+0x30>

0000000080207f42 <.Lpcrel_hi22>:
80207f42: 97 46 00 00  	auipc	a3, 4
80207f46: 83 b6 e6 13  	ld	a3, 318(a3)
80207f4a: 33 07 b0 40  	neg	a4, a1
80207f4e: 6d 8f        	and	a4, a4, a1
80207f50: b3 06 d7 02  	mul	a3, a4, a3
80207f54: e9 92        	srli	a3, a3, 58

0000000080207f56 <.Lpcrel_hi23>:
80207f56: 17 37 00 00  	auipc	a4, 3
80207f5a: 13 07 a7 bd  	addi	a4, a4, -1062
80207f5e: ba 96        	add	a3, a3, a4
80207f60: 83 c8 06 00  	lbu	a7, 0(a3)
80207f64: 93 06 00 02  	li	a3, 32
80207f68: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
80207f6a: 63 e4 16 01  	bltu	a3, a7, 0x80207f72 <.Lpcrel_hi23+0x1c>
80207f6e: 93 02 00 02  	li	t0, 32
;         for i in class..self.free_list.len() {
80207f72: 13 98 38 00  	slli	a6, a7, 3
80207f76: 2a 98        	add	a6, a6, a0
80207f78: 93 07 08 ff  	addi	a5, a6, -16
80207f7c: 46 87        	mv	a4, a7
80207f7e: 63 8b e2 06  	beq	t0, a4, 0x80207ff4 <.Lpcrel_hi23+0x9e>
;         self.head.is_null()
80207f82: 83 be 07 01  	ld	t4, 16(a5)
80207f86: 05 07        	addi	a4, a4, 1
;             if !self.free_list[i].is_empty() {
80207f88: a1 07        	addi	a5, a5, 8
80207f8a: e3 8a 0e fe  	beqz	t4, 0x80207f7e <.Lpcrel_hi23+0x28>
80207f8e: 93 06 f7 ff  	addi	a3, a4, -1
80207f92: 63 fc d8 02  	bgeu	a7, a3, 0x80207fca <.Lpcrel_hi23+0x74>
80207f96: 93 82 18 00  	addi	t0, a7, 1
80207f9a: 7d 43        	li	t1, 31
80207f9c: 85 43        	li	t2, 1
;                 self.head = unsafe { *item as *mut usize };
80207f9e: 83 b6 0e 00  	ld	a3, 0(t4)
;                             self.free_list[j - 1]
80207fa2: 13 0e e7 ff  	addi	t3, a4, -2
;                 self.head = unsafe { *item as *mut usize };
80207fa6: 94 e7        	sd	a3, 8(a5)
;                             self.free_list[j - 1]
80207fa8: 63 69 c3 0f  	bltu	t1, t3, 0x8020809a <.Lpcrel_hi24>
;         *item = self.head as usize;
80207fac: 03 bf 07 00  	ld	t5, 0(a5)
80207fb0: 7d 17        	addi	a4, a4, -1
;                                 .push((block as usize + (1 << (j - 1))) as *mut usize);
80207fb2: b3 96 c3 01  	sll	a3, t2, t3
80207fb6: f6 96        	add	a3, a3, t4
;         *item = self.head as usize;
80207fb8: 23 b0 e6 01  	sd	t5, 0(a3)
80207fbc: 23 b0 de 00  	sd	a3, 0(t4)
;         self.head = item;
80207fc0: 23 b0 d7 01  	sd	t4, 0(a5)
80207fc4: e1 17        	addi	a5, a5, -8
80207fc6: e3 ec e2 fc  	bltu	t0, a4, 0x80207f9e <.Lpcrel_hi23+0x48>
80207fca: 93 06 00 02  	li	a3, 32
;                     self.free_list[class]
80207fce: 63 f2 d8 0e  	bgeu	a7, a3, 0x802080b2 <.Lpcrel_hi25>
;         self.head.is_null()
80207fd2: 83 36 08 00  	ld	a3, 0(a6)
;         match self.is_empty() {
80207fd6: f5 ca        	beqz	a3, 0x802080ca <.Lpcrel_hi26>
;                 self.head = unsafe { *item as *mut usize };
80207fd8: 98 62        	ld	a4, 0(a3)
80207fda: 23 30 e8 00  	sd	a4, 0(a6)
;                     self.user += layout.size();
80207fde: 03 37 05 10  	ld	a4, 256(a0)
;                     self.allocated += size;
80207fe2: 83 37 85 10  	ld	a5, 264(a0)
;                     self.user += layout.size();
80207fe6: 3a 96        	add	a2, a2, a4
80207fe8: 23 30 c5 10  	sd	a2, 256(a0)
;                     self.allocated += size;
80207fec: be 95        	add	a1, a1, a5
80207fee: 23 34 b5 10  	sd	a1, 264(a0)
80207ff2: 11 a0        	j	0x80207ff6 <.Lpcrel_hi23+0xa0>
80207ff4: 81 46        	li	a3, 0
;     }
80207ff6: 36 85        	mv	a0, a3
80207ff8: a2 60        	ld	ra, 8(sp)
80207ffa: 02 64        	ld	s0, 0(sp)
80207ffc: 41 01        	addi	sp, sp, 16
80207ffe: 82 80        	ret
80208000: 93 06 f6 ff  	addi	a3, a2, -1
80208004: 13 d7 16 00  	srli	a4, a3, 1
80208008: d9 8e        	or	a3, a3, a4
8020800a: 13 d7 26 00  	srli	a4, a3, 2
8020800e: d9 8e        	or	a3, a3, a4
80208010: 13 d7 46 00  	srli	a4, a3, 4
80208014: d9 8e        	or	a3, a3, a4
80208016: 13 d7 86 00  	srli	a4, a3, 8
8020801a: d9 8e        	or	a3, a3, a4
8020801c: 13 d7 06 01  	srli	a4, a3, 16
80208020: d9 8e        	or	a3, a3, a4
80208022: 13 d7 06 02  	srli	a4, a3, 32
80208026: d9 8e        	or	a3, a3, a4
80208028: 13 c8 f6 ff  	not	a6, a3

000000008020802c <.Lpcrel_hi18>:
8020802c: 17 47 00 00  	auipc	a4, 4
80208030: 03 37 47 03  	ld	a4, 52(a4)

0000000080208034 <.Lpcrel_hi19>:
80208034: 97 47 00 00  	auipc	a5, 4
80208038: 83 b7 47 03  	ld	a5, 52(a5)
8020803c: 93 56 18 00  	srli	a3, a6, 1
80208040: f9 8e        	and	a3, a3, a4
80208042: b3 06 d8 40  	sub	a3, a6, a3
80208046: 33 f7 f6 00  	and	a4, a3, a5
8020804a: 89 82        	srli	a3, a3, 2
8020804c: fd 8e        	and	a3, a3, a5
8020804e: 33 08 d7 00  	add	a6, a4, a3

0000000080208052 <.Lpcrel_hi20>:
80208052: 17 47 00 00  	auipc	a4, 4
80208056: 03 37 e7 01  	ld	a4, 30(a4)

000000008020805a <.Lpcrel_hi21>:
8020805a: 97 47 00 00  	auipc	a5, 4
8020805e: 83 b7 e7 01  	ld	a5, 30(a5)
80208062: 93 56 48 00  	srli	a3, a6, 4
80208066: c2 96        	add	a3, a3, a6
80208068: f9 8e        	and	a3, a3, a4
8020806a: b3 86 f6 02  	mul	a3, a3, a5
8020806e: e1 92        	srli	a3, a3, 56
80208070: 7d 57        	li	a4, -1
80208072: b3 56 d7 00  	srl	a3, a4, a3
80208076: 85 06        	addi	a3, a3, 1
80208078: e3 e0 b6 ec  	bltu	a3, a1, 0x80207f38 <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x14>
8020807c: b6 85        	mv	a1, a3
8020807e: a1 46        	li	a3, 8
80208080: e3 ef b6 ea  	bltu	a3, a1, 0x80207f3e <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x1a>
80208084: a1 45        	li	a1, 8
80208086: e3 9e 05 ea  	bnez	a1, 0x80207f42 <.Lpcrel_hi22>
8020808a: 93 08 00 04  	li	a7, 64
8020808e: 93 06 00 02  	li	a3, 32
80208092: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
80208094: e3 fd 16 ed  	bgeu	a3, a7, 0x80207f6e <.Lpcrel_hi23+0x18>
80208098: e9 bd        	j	0x80207f72 <.Lpcrel_hi23+0x1c>

000000008020809a <.Lpcrel_hi24>:
;                             self.free_list[j - 1]
8020809a: 17 35 00 00  	auipc	a0, 3
8020809e: 13 06 e5 bf  	addi	a2, a0, -1026
802080a2: 7d 55        	li	a0, -1
802080a4: 93 05 00 02  	li	a1, 32
802080a8: 97 00 00 00  	auipc	ra, 0
802080ac: e7 80 40 34  	jalr	836(ra)
802080b0: 00 00        	unimp	

00000000802080b2 <.Lpcrel_hi25>:
;                     self.free_list[class]
802080b2: 17 35 00 00  	auipc	a0, 3
802080b6: 13 06 e5 bf  	addi	a2, a0, -1026
802080ba: 93 05 00 02  	li	a1, 32
802080be: 46 85        	mv	a0, a7
802080c0: 97 00 00 00  	auipc	ra, 0
802080c4: e7 80 c0 32  	jalr	812(ra)
802080c8: 00 00        	unimp	

00000000802080ca <.Lpcrel_hi26>:
802080ca: 17 35 00 00  	auipc	a0, 3
802080ce: 13 05 65 ba  	addi	a0, a0, -1114

00000000802080d2 <.Lpcrel_hi27>:
802080d2: 97 35 00 00  	auipc	a1, 3
802080d6: 13 86 65 bf  	addi	a2, a1, -1034
802080da: 93 05 80 02  	li	a1, 40
802080de: 97 00 00 00  	auipc	ra, 0
802080e2: e7 80 20 27  	jalr	626(ra)
802080e6: 00 00        	unimp	

00000000802080e8 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
802080e8: 41 11        	addi	sp, sp, -16
802080ea: 06 e4        	sd	ra, 8(sp)
802080ec: 22 e0        	sd	s0, 0(sp)
802080ee: 00 08        	addi	s0, sp, 16
802080f0: 89 47        	li	a5, 2
802080f2: 05 47        	li	a4, 1
802080f4: 63 fa f6 0a  	bgeu	a3, a5, 0x802081a8 <.Lpcrel_hi33+0x8e>
802080f8: 63 78 c7 12  	bgeu	a4, a2, 0x80208228 <.Lpcrel_hi31+0x24>
802080fc: 21 47        	li	a4, 8
802080fe: 63 79 c7 12  	bgeu	a4, a2, 0x80208230 <.Lpcrel_hi31+0x2c>
80208102: 63 0a 06 12  	beqz	a2, 0x80208236 <.Lpcrel_hi31+0x32>

0000000080208106 <.Lpcrel_hi32>:
80208106: 17 47 00 00  	auipc	a4, 4
8020810a: 03 37 27 fa  	ld	a4, -94(a4)
8020810e: b3 07 c0 40  	neg	a5, a2
80208112: f1 8f        	and	a5, a5, a2
80208114: 33 87 e7 02  	mul	a4, a5, a4
80208118: 69 93        	srli	a4, a4, 58

000000008020811a <.Lpcrel_hi33>:
8020811a: 97 37 00 00  	auipc	a5, 3
8020811e: 93 87 67 a5  	addi	a5, a5, -1450
80208122: 3e 97        	add	a4, a4, a5
80208124: 03 43 07 00  	lbu	t1, 0(a4)
80208128: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
8020812a: 63 6b 68 10  	bltu	a6, t1, 0x80208240 <.Lpcrel_hi34>
8020812e: 13 17 33 00  	slli	a4, t1, 3
80208132: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
80208134: 1c 63        	ld	a5, 0(a4)
80208136: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80208138: 0c e3        	sd	a1, 0(a4)
8020813a: 85 48        	li	a7, 1
8020813c: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
8020813e: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
80208142: 93 13 33 00  	slli	t2, t1, 3
80208146: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80208148: 33 ce e2 00  	xor	t3, t0, a4
8020814c: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
8020814e: 9d cd        	beqz	a1, 0x8020818c <.Lpcrel_hi33+0x72>
80208150: ae 87        	mv	a5, a1
80208152: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80208154: 8c 61        	ld	a1, 0(a1)
80208156: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80208158: e3 1b fe fe  	bne	t3, a5, 0x8020814e <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
8020815c: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
80208160: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80208164: 81 c5        	beqz	a1, 0x8020816c <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
80208166: 8c 61        	ld	a1, 0(a1)
80208168: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
8020816c: 63 06 03 0f  	beq	t1, a6, 0x80208258 <.Lpcrel_hi35>
80208170: 63 e3 c2 01  	bltu	t0, t3, 0x80208176 <.Lpcrel_hi33+0x5c>
80208174: f2 82        	mv	t0, t3
80208176: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80208178: 93 15 33 00  	slli	a1, t1, 3
8020817c: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
8020817e: 98 61        	ld	a4, 0(a1)
80208180: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80208184: 23 b0 55 00  	sd	t0, 0(a1)
80208188: 96 85        	mv	a1, t0
8020818a: 55 bf        	j	0x8020813e <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
8020818c: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
80208190: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80208194: 95 8d        	sub	a1, a1, a3
80208196: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
8020819a: 11 8f        	sub	a4, a4, a2
8020819c: 23 34 e5 10  	sd	a4, 264(a0)
;     }
802081a0: a2 60        	ld	ra, 8(sp)
802081a2: 02 64        	ld	s0, 0(sp)
802081a4: 41 01        	addi	sp, sp, 16
802081a6: 82 80        	ret
802081a8: 13 87 f6 ff  	addi	a4, a3, -1
802081ac: 93 57 17 00  	srli	a5, a4, 1
802081b0: 5d 8f        	or	a4, a4, a5
802081b2: 93 57 27 00  	srli	a5, a4, 2
802081b6: 5d 8f        	or	a4, a4, a5
802081b8: 93 57 47 00  	srli	a5, a4, 4
802081bc: 5d 8f        	or	a4, a4, a5
802081be: 93 57 87 00  	srli	a5, a4, 8
802081c2: 5d 8f        	or	a4, a4, a5
802081c4: 93 57 07 01  	srli	a5, a4, 16
802081c8: 5d 8f        	or	a4, a4, a5
802081ca: 93 57 07 02  	srli	a5, a4, 32
802081ce: 5d 8f        	or	a4, a4, a5
802081d0: 93 48 f7 ff  	not	a7, a4

00000000802081d4 <.Lpcrel_hi28>:
802081d4: 97 47 00 00  	auipc	a5, 4
802081d8: 03 b8 47 eb  	ld	a6, -332(a5)

00000000802081dc <.Lpcrel_hi29>:
802081dc: 97 47 00 00  	auipc	a5, 4
802081e0: 83 b7 47 eb  	ld	a5, -332(a5)
802081e4: 13 d7 18 00  	srli	a4, a7, 1
802081e8: 33 77 07 01  	and	a4, a4, a6
802081ec: 33 87 e8 40  	sub	a4, a7, a4
802081f0: 33 78 f7 00  	and	a6, a4, a5
802081f4: 09 83        	srli	a4, a4, 2
802081f6: 7d 8f        	and	a4, a4, a5
802081f8: b3 08 e8 00  	add	a7, a6, a4

00000000802081fc <.Lpcrel_hi30>:
802081fc: 97 47 00 00  	auipc	a5, 4
80208200: 03 b8 c7 e9  	ld	a6, -356(a5)

0000000080208204 <.Lpcrel_hi31>:
80208204: 97 47 00 00  	auipc	a5, 4
80208208: 83 b7 c7 e9  	ld	a5, -356(a5)
8020820c: 13 d7 48 00  	srli	a4, a7, 4
80208210: 46 97        	add	a4, a4, a7
80208212: 33 77 07 01  	and	a4, a4, a6
80208216: 33 07 f7 02  	mul	a4, a4, a5
8020821a: 61 93        	srli	a4, a4, 56
8020821c: fd 57        	li	a5, -1
8020821e: 33 d7 e7 00  	srl	a4, a5, a4
80208222: 05 07        	addi	a4, a4, 1
80208224: e3 6c c7 ec  	bltu	a4, a2, 0x802080fc <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
80208228: 3a 86        	mv	a2, a4
8020822a: 21 47        	li	a4, 8
8020822c: e3 6b c7 ec  	bltu	a4, a2, 0x80208102 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
80208230: 21 46        	li	a2, 8
80208232: e3 1a 06 ec  	bnez	a2, 0x80208106 <.Lpcrel_hi32>
80208236: 13 03 00 04  	li	t1, 64
8020823a: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
8020823c: e3 79 68 ee  	bgeu	a6, t1, 0x8020812e <.Lpcrel_hi33+0x14>

0000000080208240 <.Lpcrel_hi34>:
80208240: 17 35 00 00  	auipc	a0, 3
80208244: 13 06 05 aa  	addi	a2, a0, -1376
80208248: 93 05 00 02  	li	a1, 32
8020824c: 1a 85        	mv	a0, t1
8020824e: 97 00 00 00  	auipc	ra, 0
80208252: e7 80 e0 19  	jalr	414(ra)
80208256: 00 00        	unimp	

0000000080208258 <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80208258: 17 35 00 00  	auipc	a0, 3
8020825c: 13 06 05 aa  	addi	a2, a0, -1376
80208260: 13 05 00 02  	li	a0, 32
80208264: 93 05 00 02  	li	a1, 32
80208268: 97 00 00 00  	auipc	ra, 0
8020826c: e7 80 40 18  	jalr	388(ra)
80208270: 00 00        	unimp	

0000000080208272 <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4bd999852049e66aE>:
;     fn deref(&self) -> &Mutex<Heap> {
80208272: 41 11        	addi	sp, sp, -16
;     }
80208274: 06 e4        	sd	ra, 8(sp)
80208276: 22 e0        	sd	s0, 0(sp)
80208278: 00 08        	addi	s0, sp, 16
8020827a: a2 60        	ld	ra, 8(sp)
8020827c: 02 64        	ld	s0, 0(sp)
8020827e: 41 01        	addi	sp, sp, 16
80208280: 82 80        	ret

0000000080208282 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E>:
;     unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
80208282: 01 11        	addi	sp, sp, -32
80208284: 06 ec        	sd	ra, 24(sp)
80208286: 22 e8        	sd	s0, 16(sp)
80208288: 26 e4        	sd	s1, 8(sp)
8020828a: 4a e0        	sd	s2, 0(sp)
8020828c: 00 10        	addi	s0, sp, 32
8020828e: aa 84        	mv	s1, a0
80208290: 05 45        	li	a0, 1
80208292: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80208296: 88 64        	ld	a0, 8(s1)
80208298: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
8020829c: 63 09 25 01  	beq	a0, s2, 0x802082ae <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x2c>
802082a0: 0f 00 00 01  	fence	w, 0
802082a4: 88 64        	ld	a0, 8(s1)
802082a6: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802082aa: e3 1b 25 ff  	bne	a0, s2, 0x802082a0 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
802082ae: 13 85 04 01  	addi	a0, s1, 16
;         self.0
802082b2: 97 00 00 00  	auipc	ra, 0
802082b6: e7 80 20 c7  	jalr	-910(ra)
;         let new_ticket = self.ticket + 1;
802082ba: 05 09        	addi	s2, s2, 1
802082bc: 0f 00 10 03  	fence	rw, w
802082c0: 23 b4 24 01  	sd	s2, 8(s1)
;     }
802082c4: e2 60        	ld	ra, 24(sp)
802082c6: 42 64        	ld	s0, 16(sp)
802082c8: a2 64        	ld	s1, 8(sp)
802082ca: 02 69        	ld	s2, 0(sp)
802082cc: 05 61        	addi	sp, sp, 32
802082ce: 82 80        	ret

00000000802082d0 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
802082d0: 01 11        	addi	sp, sp, -32
802082d2: 06 ec        	sd	ra, 24(sp)
802082d4: 22 e8        	sd	s0, 16(sp)
802082d6: 26 e4        	sd	s1, 8(sp)
802082d8: 4a e0        	sd	s2, 0(sp)
802082da: 00 10        	addi	s0, sp, 32
802082dc: aa 84        	mv	s1, a0
802082de: 05 45        	li	a0, 1
802082e0: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
802082e4: 88 64        	ld	a0, 8(s1)
802082e6: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802082ea: 63 09 25 01  	beq	a0, s2, 0x802082fc <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
802082ee: 0f 00 00 01  	fence	w, 0
802082f2: 88 64        	ld	a0, 8(s1)
802082f4: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
802082f8: e3 1b 25 ff  	bne	a0, s2, 0x802082ee <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
802082fc: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
80208300: 97 00 00 00  	auipc	ra, 0
80208304: e7 80 80 de  	jalr	-536(ra)
;         let new_ticket = self.ticket + 1;
80208308: 05 09        	addi	s2, s2, 1
8020830a: 0f 00 10 03  	fence	rw, w
8020830e: 23 b4 24 01  	sd	s2, 8(s1)
;     }
80208312: e2 60        	ld	ra, 24(sp)
80208314: 42 64        	ld	s0, 16(sp)
80208316: a2 64        	ld	s1, 8(sp)
80208318: 02 69        	ld	s2, 0(sp)
8020831a: 05 61        	addi	sp, sp, 32
8020831c: 82 80        	ret

000000008020831e <_ZN5alloc5alloc18handle_alloc_error17hfc18f66702a5f8beE>:
8020831e: 41 11        	addi	sp, sp, -16
80208320: 06 e4        	sd	ra, 8(sp)
80208322: 97 00 00 00  	auipc	ra, 0
80208326: e7 80 a0 00  	jalr	10(ra)
8020832a: 00 00        	unimp	

000000008020832c <_ZN5alloc5alloc18handle_alloc_error8rt_error17h220cf34c5c4409f6E>:
8020832c: 41 11        	addi	sp, sp, -16
8020832e: 06 e4        	sd	ra, 8(sp)
80208330: 2a 86        	mv	a2, a0
80208332: 2e 85        	mv	a0, a1
80208334: b2 85        	mv	a1, a2
80208336: 97 00 00 00  	auipc	ra, 0
8020833a: e7 80 40 a8  	jalr	-1404(ra)
8020833e: 00 00        	unimp	

0000000080208340 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
80208340: 08 61        	ld	a0, 0(a0)
80208342: 01 a0        	j	0x80208342 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

0000000080208344 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
80208344: 82 80        	ret

0000000080208346 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
80208346: 17 45 00 00  	auipc	a0, 4
8020834a: 03 35 25 ea  	ld	a0, -350(a0)
8020834e: 82 80        	ret

0000000080208350 <_ZN4core6option13expect_failed17h1f14a99d25145af5E>:
80208350: 1d 71        	addi	sp, sp, -96
80208352: 86 ec        	sd	ra, 88(sp)
80208354: 2a e4        	sd	a0, 8(sp)
80208356: 2e e8        	sd	a1, 16(sp)
80208358: 28 00        	addi	a0, sp, 8
8020835a: aa e4        	sd	a0, 72(sp)

000000008020835c <.Lpcrel_hi452>:
8020835c: 17 15 00 00  	auipc	a0, 1
80208360: 13 05 05 27  	addi	a0, a0, 624
80208364: aa e8        	sd	a0, 80(sp)

0000000080208366 <.Lpcrel_hi453>:
80208366: 17 35 00 00  	auipc	a0, 3
8020836a: 13 05 25 a6  	addi	a0, a0, -1438
8020836e: 2a ec        	sd	a0, 24(sp)
80208370: 05 45        	li	a0, 1
80208372: 2a f0        	sd	a0, 32(sp)
80208374: 02 fc        	sd	zero, 56(sp)
80208376: ac 00        	addi	a1, sp, 72
80208378: 2e f4        	sd	a1, 40(sp)
8020837a: 2a f8        	sd	a0, 48(sp)
8020837c: 28 08        	addi	a0, sp, 24
8020837e: b2 85        	mv	a1, a2
80208380: 97 00 00 00  	auipc	ra, 0
80208384: e7 80 20 01  	jalr	18(ra)
80208388: 00 00        	unimp	

000000008020838a <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
8020838a: 08 6d        	ld	a0, 24(a0)
8020838c: 82 80        	ret

000000008020838e <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
8020838e: 08 69        	ld	a0, 16(a0)
80208390: 82 80        	ret

0000000080208392 <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
80208392: 79 71        	addi	sp, sp, -48
80208394: 06 f4        	sd	ra, 40(sp)

0000000080208396 <.Lpcrel_hi466>:
80208396: 17 36 00 00  	auipc	a2, 3
8020839a: 13 06 a6 9f  	addi	a2, a2, -1542
8020839e: 32 e0        	sd	a2, 0(sp)

00000000802083a0 <.Lpcrel_hi467>:
802083a0: 17 36 00 00  	auipc	a2, 3
802083a4: 13 06 86 a3  	addi	a2, a2, -1480
802083a8: 32 e4        	sd	a2, 8(sp)
802083aa: 2a ec        	sd	a0, 24(sp)
802083ac: 2e e8        	sd	a1, 16(sp)
802083ae: 05 45        	li	a0, 1
802083b0: 23 00 a1 02  	sb	a0, 32(sp)
802083b4: 0a 85        	mv	a0, sp
802083b6: 97 00 00 00  	auipc	ra, 0
802083ba: e7 80 40 81  	jalr	-2028(ra)
802083be: 00 00        	unimp	

00000000802083c0 <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
802083c0: 5d 71        	addi	sp, sp, -80
802083c2: 86 e4        	sd	ra, 72(sp)
802083c4: 2a fc        	sd	a0, 56(sp)
802083c6: ae e0        	sd	a1, 64(sp)
802083c8: 28 18        	addi	a0, sp, 56
802083ca: 2a e4        	sd	a0, 8(sp)
802083cc: 05 45        	li	a0, 1
802083ce: 2a e8        	sd	a0, 16(sp)
802083d0: 02 f4        	sd	zero, 40(sp)

00000000802083d2 <.Lpcrel_hi470>:
802083d2: 17 35 00 00  	auipc	a0, 3
802083d6: 13 05 e5 9b  	addi	a0, a0, -1602
802083da: 2a ec        	sd	a0, 24(sp)
802083dc: 02 f0        	sd	zero, 32(sp)
802083de: 28 00        	addi	a0, sp, 8
802083e0: b2 85        	mv	a1, a2
802083e2: 97 00 00 00  	auipc	ra, 0
802083e6: e7 80 00 fb  	jalr	-80(ra)
802083ea: 00 00        	unimp	

00000000802083ec <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
802083ec: 59 71        	addi	sp, sp, -112
802083ee: 86 f4        	sd	ra, 104(sp)
802083f0: 2a e4        	sd	a0, 8(sp)
802083f2: 2e e8        	sd	a1, 16(sp)
802083f4: 08 08        	addi	a0, sp, 16
802083f6: aa e4        	sd	a0, 72(sp)

00000000802083f8 <.Lpcrel_hi473>:
802083f8: 17 15 00 00  	auipc	a0, 1
802083fc: 13 05 65 13  	addi	a0, a0, 310
80208400: aa e8        	sd	a0, 80(sp)
80208402: 2c 00        	addi	a1, sp, 8
80208404: ae ec        	sd	a1, 88(sp)
80208406: aa f0        	sd	a0, 96(sp)

0000000080208408 <.Lpcrel_hi474>:
80208408: 17 35 00 00  	auipc	a0, 3
8020840c: 13 05 85 a0  	addi	a0, a0, -1528
80208410: 2a ec        	sd	a0, 24(sp)
80208412: 09 45        	li	a0, 2
80208414: 2a f0        	sd	a0, 32(sp)
80208416: 02 fc        	sd	zero, 56(sp)
80208418: ac 00        	addi	a1, sp, 72
8020841a: 2e f4        	sd	a1, 40(sp)
8020841c: 2a f8        	sd	a0, 48(sp)
8020841e: 28 08        	addi	a0, sp, 24
80208420: b2 85        	mv	a1, a2
80208422: 97 00 00 00  	auipc	ra, 0
80208426: e7 80 00 f7  	jalr	-144(ra)
8020842a: 00 00        	unimp	

000000008020842c <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
8020842c: 19 71        	addi	sp, sp, -128
8020842e: 86 fc        	sd	ra, 120(sp)
80208430: 2a e4        	sd	a0, 8(sp)
80208432: 2e e8        	sd	a1, 16(sp)
80208434: 32 ec        	sd	a2, 24(sp)
80208436: 36 f0        	sd	a3, 32(sp)
80208438: 28 00        	addi	a0, sp, 8
8020843a: aa ec        	sd	a0, 88(sp)

000000008020843c <.Lpcrel_hi495>:
8020843c: 17 15 00 00  	auipc	a0, 1
80208440: 13 05 05 19  	addi	a0, a0, 400
80208444: aa f0        	sd	a0, 96(sp)
80208446: 28 08        	addi	a0, sp, 24
80208448: aa f4        	sd	a0, 104(sp)

000000008020844a <.Lpcrel_hi496>:
8020844a: 17 15 00 00  	auipc	a0, 1
8020844e: 13 05 a5 17  	addi	a0, a0, 378
80208452: aa f8        	sd	a0, 112(sp)

0000000080208454 <.Lpcrel_hi497>:
80208454: 17 35 00 00  	auipc	a0, 3
80208458: 13 05 45 9e  	addi	a0, a0, -1564
8020845c: 2a f4        	sd	a0, 40(sp)
8020845e: 09 45        	li	a0, 2
80208460: 2a f8        	sd	a0, 48(sp)
80208462: 82 e4        	sd	zero, 72(sp)
80208464: ac 08        	addi	a1, sp, 88
80208466: 2e fc        	sd	a1, 56(sp)
80208468: aa e0        	sd	a0, 64(sp)
8020846a: 28 10        	addi	a0, sp, 40
8020846c: ba 85        	mv	a1, a4
8020846e: 97 00 00 00  	auipc	ra, 0
80208472: e7 80 40 f2  	jalr	-220(ra)
80208476: 00 00        	unimp	

0000000080208478 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd9568184a6931636E>:
80208478: 75 71        	addi	sp, sp, -144
8020847a: 06 e5        	sd	ra, 136(sp)
8020847c: 22 e1        	sd	s0, 128(sp)
8020847e: a6 fc        	sd	s1, 120(sp)
80208480: ca f8        	sd	s2, 112(sp)
80208482: ce f4        	sd	s3, 104(sp)
80208484: d2 f0        	sd	s4, 96(sp)
80208486: d6 ec        	sd	s5, 88(sp)
80208488: da e8        	sd	s6, 80(sp)
8020848a: de e4        	sd	s7, 72(sp)
8020848c: e2 e0        	sd	s8, 64(sp)
8020848e: 66 fc        	sd	s9, 56(sp)
80208490: 6a f8        	sd	s10, 48(sp)
80208492: 6e f4        	sd	s11, 40(sp)
80208494: 32 89        	mv	s2, a2
80208496: 2e 8a        	mv	s4, a1
80208498: 01 4c        	li	s8, 0
8020849a: 81 4c        	li	s9, 0
8020849c: 81 49        	li	s3, 0

000000008020849e <.Lpcrel_hi500>:
8020849e: 97 45 00 00  	auipc	a1, 4
802084a2: 03 bb a5 d7  	ld	s6, -646(a1)

00000000802084a6 <.Lpcrel_hi501>:
802084a6: 97 45 00 00  	auipc	a1, 4
802084aa: 83 bb a5 d7  	ld	s7, -646(a1)

00000000802084ae <.Lpcrel_hi502>:
802084ae: 97 45 00 00  	auipc	a1, 4
802084b2: 83 b4 a5 d7  	ld	s1, -646(a1)
802084b6: 00 69        	ld	s0, 16(a0)
802084b8: 0c 61        	ld	a1, 0(a0)
802084ba: 2e f0        	sd	a1, 32(sp)
802084bc: 08 65        	ld	a0, 8(a0)
802084be: 2a ec        	sd	a0, 24(sp)
802084c0: 13 05 8a 00  	addi	a0, s4, 8
802084c4: 2a e0        	sd	a0, 0(sp)

00000000802084c6 <.Lpcrel_hi503>:
802084c6: 17 25 00 00  	auipc	a0, 2
802084ca: 13 05 95 c0  	addi	a0, a0, -1015
802084ce: 2a e8        	sd	a0, 16(sp)
802084d0: 29 4d        	li	s10, 10
802084d2: 22 e4        	sd	s0, 8(sp)
802084d4: 0d a0        	j	0x802084f6 <.Lpcrel_hi503+0x30>
802084d6: 33 05 b6 00  	add	a0, a2, a1
802084da: 03 45 f5 ff  	lbu	a0, -1(a0)
802084de: 59 15        	addi	a0, a0, -10
802084e0: 13 35 15 00  	seqz	a0, a0
802084e4: 23 00 a4 00  	sb	a0, 0(s0)
802084e8: 62 65        	ld	a0, 24(sp)
802084ea: 14 6d        	ld	a3, 24(a0)
802084ec: 02 75        	ld	a0, 32(sp)
802084ee: 82 96        	jalr	a3
802084f0: ee 8c        	mv	s9, s11
802084f2: 63 15 05 12  	bnez	a0, 0x8020861c <.Lpcrel_hi503+0x156>
802084f6: 13 f5 f9 0f  	andi	a0, s3, 255
802084fa: 63 1f 05 10  	bnez	a0, 0x80208618 <.Lpcrel_hi503+0x152>
802084fe: 63 75 89 01  	bgeu	s2, s8, 0x80208508 <.Lpcrel_hi503+0x42>
80208502: e9 a8        	j	0x802085dc <.Lpcrel_hi503+0x116>
80208504: 63 6c 89 0d  	bltu	s2, s8, 0x802085dc <.Lpcrel_hi503+0x116>
80208508: 33 05 89 41  	sub	a0, s2, s8
8020850c: b3 05 8a 01  	add	a1, s4, s8
80208510: 41 46        	li	a2, 16
80208512: 63 7f c5 00  	bgeu	a0, a2, 0x80208530 <.Lpcrel_hi503+0x6a>
80208516: 63 02 2c 0d  	beq	s8, s2, 0x802085da <.Lpcrel_hi503+0x114>
8020851a: 81 46        	li	a3, 0
8020851c: 33 86 d5 00  	add	a2, a1, a3
80208520: 03 46 06 00  	lbu	a2, 0(a2)
80208524: 63 0d a6 09  	beq	a2, s10, 0x802085be <.Lpcrel_hi503+0xf8>
80208528: 85 06        	addi	a3, a3, 1
8020852a: e3 19 d5 fe  	bne	a0, a3, 0x8020851c <.Lpcrel_hi503+0x56>
8020852e: 75 a0        	j	0x802085da <.Lpcrel_hi503+0x114>
80208530: 13 86 75 00  	addi	a2, a1, 7
80208534: 93 76 86 ff  	andi	a3, a2, -8
80208538: 33 86 b6 40  	sub	a2, a3, a1
8020853c: ad 8e        	xor	a3, a3, a1
8020853e: 93 b6 16 00  	seqz	a3, a3
80208542: 13 37 16 00  	seqz	a4, a2
80208546: d9 8e        	or	a3, a3, a4
80208548: a1 c2        	beqz	a3, 0x80208588 <.Lpcrel_hi503+0xc2>
8020854a: 01 46        	li	a2, 0
8020854c: 93 06 05 ff  	addi	a3, a0, -16
80208550: 02 67        	ld	a4, 0(sp)
80208552: 62 97        	add	a4, a4, s8
80208554: b3 87 c5 00  	add	a5, a1, a2
80208558: 9c 63        	ld	a5, 0(a5)
8020855a: 13 c4 f7 ff  	not	s0, a5
8020855e: a5 8f        	xor	a5, a5, s1
80208560: da 97        	add	a5, a5, s6
80208562: 33 74 74 01  	and	s0, s0, s7
80208566: e1 8f        	and	a5, a5, s0
80208568: 8d ef        	bnez	a5, 0x802085a2 <.Lpcrel_hi503+0xdc>
8020856a: b3 07 c7 00  	add	a5, a4, a2
8020856e: 9c 63        	ld	a5, 0(a5)
80208570: 13 c4 f7 ff  	not	s0, a5
80208574: a5 8f        	xor	a5, a5, s1
80208576: da 97        	add	a5, a5, s6
80208578: 33 74 74 01  	and	s0, s0, s7
8020857c: e1 8f        	and	a5, a5, s0
8020857e: 95 e3        	bnez	a5, 0x802085a2 <.Lpcrel_hi503+0xdc>
80208580: 41 06        	addi	a2, a2, 16
80208582: e3 f9 c6 fc  	bgeu	a3, a2, 0x80208554 <.Lpcrel_hi503+0x8e>
80208586: 31 a8        	j	0x802085a2 <.Lpcrel_hi503+0xdc>
80208588: 33 87 d5 00  	add	a4, a1, a3
8020858c: 03 47 07 00  	lbu	a4, 0(a4)
80208590: 63 07 a7 03  	beq	a4, s10, 0x802085be <.Lpcrel_hi503+0xf8>
80208594: 85 06        	addi	a3, a3, 1
80208596: e3 19 d6 fe  	bne	a2, a3, 0x80208588 <.Lpcrel_hi503+0xc2>
8020859a: 93 06 05 ff  	addi	a3, a0, -16
8020859e: e3 f9 c6 fa  	bgeu	a3, a2, 0x80208550 <.Lpcrel_hi503+0x8a>
802085a2: 63 04 c5 06  	beq	a0, a2, 0x8020860a <.Lpcrel_hi503+0x144>
802085a6: 22 64        	ld	s0, 8(sp)
802085a8: b3 86 c5 00  	add	a3, a1, a2
802085ac: 83 c6 06 00  	lbu	a3, 0(a3)
802085b0: 63 86 a6 01  	beq	a3, s10, 0x802085bc <.Lpcrel_hi503+0xf6>
802085b4: 05 06        	addi	a2, a2, 1
802085b6: e3 19 c5 fe  	bne	a0, a2, 0x802085a8 <.Lpcrel_hi503+0xe2>
802085ba: 05 a0        	j	0x802085da <.Lpcrel_hi503+0x114>
802085bc: b2 86        	mv	a3, a2
802085be: e2 96        	add	a3, a3, s8
802085c0: 13 8c 16 00  	addi	s8, a3, 1
802085c4: e3 f0 26 f5  	bgeu	a3, s2, 0x80208504 <.Lpcrel_hi503+0x3e>
802085c8: d2 96        	add	a3, a3, s4
802085ca: 03 c5 06 00  	lbu	a0, 0(a3)
802085ce: e3 1b a5 f3  	bne	a0, s10, 0x80208504 <.Lpcrel_hi503+0x3e>
802085d2: 81 49        	li	s3, 0
802085d4: e2 8d        	mv	s11, s8
802085d6: e2 8a        	mv	s5, s8
802085d8: 39 a0        	j	0x802085e6 <.Lpcrel_hi503+0x120>
802085da: 4a 8c        	mv	s8, s2
802085dc: 85 49        	li	s3, 1
802085de: e6 8d        	mv	s11, s9
802085e0: ca 8a        	mv	s5, s2
802085e2: 63 8b 2c 03  	beq	s9, s2, 0x80208618 <.Lpcrel_hi503+0x152>
802085e6: 03 45 04 00  	lbu	a0, 0(s0)
802085ea: 01 c9        	beqz	a0, 0x802085fa <.Lpcrel_hi503+0x134>
802085ec: 62 65        	ld	a0, 24(sp)
802085ee: 14 6d        	ld	a3, 24(a0)
802085f0: 11 46        	li	a2, 4
802085f2: 02 75        	ld	a0, 32(sp)
802085f4: c2 65        	ld	a1, 16(sp)
802085f6: 82 96        	jalr	a3
802085f8: 15 e1        	bnez	a0, 0x8020861c <.Lpcrel_hi503+0x156>
802085fa: 33 86 9a 41  	sub	a2, s5, s9
802085fe: b3 05 9a 01  	add	a1, s4, s9
80208602: e3 9a 9a ed  	bne	s5, s9, 0x802084d6 <.Lpcrel_hi503+0x10>
80208606: 01 45        	li	a0, 0
80208608: f1 bd        	j	0x802084e4 <.Lpcrel_hi503+0x1e>
8020860a: 4a 8c        	mv	s8, s2
8020860c: 22 64        	ld	s0, 8(sp)
8020860e: 85 49        	li	s3, 1
80208610: e6 8d        	mv	s11, s9
80208612: ca 8a        	mv	s5, s2
80208614: e3 99 2c fd  	bne	s9, s2, 0x802085e6 <.Lpcrel_hi503+0x120>
80208618: 01 45        	li	a0, 0
8020861a: 11 a0        	j	0x8020861e <.Lpcrel_hi503+0x158>
8020861c: 05 45        	li	a0, 1
8020861e: aa 60        	ld	ra, 136(sp)
80208620: 0a 64        	ld	s0, 128(sp)
80208622: e6 74        	ld	s1, 120(sp)
80208624: 46 79        	ld	s2, 112(sp)
80208626: a6 79        	ld	s3, 104(sp)
80208628: 06 7a        	ld	s4, 96(sp)
8020862a: e6 6a        	ld	s5, 88(sp)
8020862c: 46 6b        	ld	s6, 80(sp)
8020862e: a6 6b        	ld	s7, 72(sp)
80208630: 06 6c        	ld	s8, 64(sp)
80208632: e2 7c        	ld	s9, 56(sp)
80208634: 42 7d        	ld	s10, 48(sp)
80208636: a2 7d        	ld	s11, 40(sp)
80208638: 49 61        	addi	sp, sp, 144
8020863a: 82 80        	ret

000000008020863c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE>:
8020863c: 71 71        	addi	sp, sp, -176
8020863e: 06 f5        	sd	ra, 168(sp)
80208640: 22 f1        	sd	s0, 160(sp)
80208642: 26 ed        	sd	s1, 152(sp)
80208644: 4a e9        	sd	s2, 144(sp)
80208646: 4e e5        	sd	s3, 136(sp)
80208648: 52 e1        	sd	s4, 128(sp)
8020864a: d6 fc        	sd	s5, 120(sp)
8020864c: da f8        	sd	s6, 112(sp)
8020864e: de f4        	sd	s7, 104(sp)
80208650: 2a 84        	mv	s0, a0
80208652: 03 45 85 00  	lbu	a0, 8(a0)
80208656: 85 4b        	li	s7, 1
80208658: 85 44        	li	s1, 1
8020865a: 0d c1        	beqz	a0, 0x8020867c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x40>
8020865c: 23 04 94 00  	sb	s1, 8(s0)
80208660: a3 04 74 01  	sb	s7, 9(s0)
80208664: 22 85        	mv	a0, s0
80208666: aa 70        	ld	ra, 168(sp)
80208668: 0a 74        	ld	s0, 160(sp)
8020866a: ea 64        	ld	s1, 152(sp)
8020866c: 4a 69        	ld	s2, 144(sp)
8020866e: aa 69        	ld	s3, 136(sp)
80208670: 0a 6a        	ld	s4, 128(sp)
80208672: e6 7a        	ld	s5, 120(sp)
80208674: 46 7b        	ld	s6, 112(sp)
80208676: a6 7b        	ld	s7, 104(sp)
80208678: 4d 61        	addi	sp, sp, 176
8020867a: 82 80        	ret
8020867c: ba 89        	mv	s3, a4
8020867e: 36 89        	mv	s2, a3
80208680: 32 8a        	mv	s4, a2
80208682: ae 8a        	mv	s5, a1
80208684: 03 3b 04 00  	ld	s6, 0(s0)
80208688: 03 65 4b 03  	lwu	a0, 52(s6)
8020868c: 83 45 94 00  	lbu	a1, 9(s0)
80208690: 13 76 45 00  	andi	a2, a0, 4
80208694: 09 ea        	bnez	a2, 0x802086a6 <.Lpcrel_hi505+0xa>
80208696: 13 b6 15 00  	seqz	a2, a1
8020869a: e1 c1        	beqz	a1, 0x8020875a <.Lpcrel_hi504>

000000008020869c <.Lpcrel_hi505>:
8020869c: 17 25 00 00  	auipc	a0, 2
802086a0: 93 05 15 7f  	addi	a1, a0, 2033
802086a4: 7d a8        	j	0x80208762 <.Lpcrel_hi504+0x8>
802086a6: 85 e1        	bnez	a1, 0x802086c6 <.Lpcrel_hi507+0x14>
802086a8: 83 35 8b 02  	ld	a1, 40(s6)
802086ac: 03 35 0b 02  	ld	a0, 32(s6)
802086b0: 94 6d        	ld	a3, 24(a1)

00000000802086b2 <.Lpcrel_hi507>:
802086b2: 97 25 00 00  	auipc	a1, 2
802086b6: 93 85 65 7d  	addi	a1, a1, 2006
802086ba: 0d 46        	li	a2, 3
802086bc: 82 96        	jalr	a3
802086be: 85 44        	li	s1, 1
802086c0: 51 fd        	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
802086c2: 03 25 4b 03  	lw	a0, 52(s6)
802086c6: 85 44        	li	s1, 1
802086c8: a3 03 91 02  	sb	s1, 39(sp)
802086cc: 83 35 0b 02  	ld	a1, 32(s6)
802086d0: 03 36 8b 02  	ld	a2, 40(s6)
802086d4: 2e e4        	sd	a1, 8(sp)
802086d6: 32 e8        	sd	a2, 16(sp)
802086d8: 93 05 71 02  	addi	a1, sp, 39
802086dc: 2e ec        	sd	a1, 24(sp)
802086de: 83 25 0b 03  	lw	a1, 48(s6)
802086e2: 03 06 8b 03  	lb	a2, 56(s6)
802086e6: 83 36 0b 00  	ld	a3, 0(s6)
802086ea: 03 37 8b 00  	ld	a4, 8(s6)
802086ee: 83 37 0b 01  	ld	a5, 16(s6)
802086f2: 03 38 8b 01  	ld	a6, 24(s6)
802086f6: aa ce        	sw	a0, 92(sp)
802086f8: ae cc        	sw	a1, 88(sp)
802086fa: 23 00 c1 06  	sb	a2, 96(sp)
802086fe: 36 f4        	sd	a3, 40(sp)
80208700: 3a f8        	sd	a4, 48(sp)
80208702: 3e fc        	sd	a5, 56(sp)
80208704: c2 e0        	sd	a6, 64(sp)
80208706: 28 00        	addi	a0, sp, 8
80208708: aa e4        	sd	a0, 72(sp)

000000008020870a <.Lpcrel_hi506>:
8020870a: 17 25 00 00  	auipc	a0, 2
8020870e: 13 05 e5 74  	addi	a0, a0, 1870
80208712: aa e8        	sd	a0, 80(sp)
80208714: 28 00        	addi	a0, sp, 8
80208716: d6 85        	mv	a1, s5
80208718: 52 86        	mv	a2, s4
8020871a: 97 00 00 00  	auipc	ra, 0
8020871e: e7 80 e0 d5  	jalr	-674(ra)
80208722: 0d fd        	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

0000000080208724 <.Lpcrel_hi508>:
80208724: 17 25 00 00  	auipc	a0, 2
80208728: 93 05 c5 70  	addi	a1, a0, 1804
8020872c: 28 00        	addi	a0, sp, 8
8020872e: 09 46        	li	a2, 2
80208730: 97 00 00 00  	auipc	ra, 0
80208734: e7 80 80 d4  	jalr	-696(ra)
80208738: 15 f1        	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
8020873a: 03 b6 89 01  	ld	a2, 24(s3)
8020873e: 2c 10        	addi	a1, sp, 40
80208740: 4a 85        	mv	a0, s2
80208742: 02 96        	jalr	a2
80208744: 01 fd        	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208746: c6 65        	ld	a1, 80(sp)
80208748: 26 65        	ld	a0, 72(sp)
8020874a: 94 6d        	ld	a3, 24(a1)

000000008020874c <.Lpcrel_hi509>:
8020874c: 97 25 00 00  	auipc	a1, 2
80208750: 93 85 f5 73  	addi	a1, a1, 1855
80208754: 09 46        	li	a2, 2
80208756: 82 96        	jalr	a3
80208758: a9 a8        	j	0x802087b2 <.Lpcrel_hi510+0x1c>

000000008020875a <.Lpcrel_hi504>:
8020875a: 17 25 00 00  	auipc	a0, 2
8020875e: 93 05 55 73  	addi	a1, a0, 1845
80208762: 83 36 8b 02  	ld	a3, 40(s6)
80208766: 03 35 0b 02  	ld	a0, 32(s6)
8020876a: 94 6e        	ld	a3, 24(a3)
8020876c: 09 06        	addi	a2, a2, 2
8020876e: 82 96        	jalr	a3
80208770: 85 44        	li	s1, 1
80208772: e3 15 05 ee  	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80208776: 83 35 8b 02  	ld	a1, 40(s6)
8020877a: 03 35 0b 02  	ld	a0, 32(s6)
8020877e: 94 6d        	ld	a3, 24(a1)
80208780: d6 85        	mv	a1, s5
80208782: 52 86        	mv	a2, s4
80208784: 82 96        	jalr	a3
80208786: 85 44        	li	s1, 1
80208788: e3 1a 05 ec  	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
8020878c: 83 35 8b 02  	ld	a1, 40(s6)
80208790: 03 35 0b 02  	ld	a0, 32(s6)
80208794: 94 6d        	ld	a3, 24(a1)

0000000080208796 <.Lpcrel_hi510>:
80208796: 97 25 00 00  	auipc	a1, 2
8020879a: 93 85 a5 69  	addi	a1, a1, 1690
8020879e: 09 46        	li	a2, 2
802087a0: 82 96        	jalr	a3
802087a2: 85 44        	li	s1, 1
802087a4: e3 1c 05 ea  	bnez	a0, 0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
802087a8: 03 b6 89 01  	ld	a2, 24(s3)
802087ac: 4a 85        	mv	a0, s2
802087ae: da 85        	mv	a1, s6
802087b0: 02 96        	jalr	a2
802087b2: aa 84        	mv	s1, a0
802087b4: 65 b5        	j	0x8020865c <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

00000000802087b6 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E>:
802087b6: 41 11        	addi	sp, sp, -16
802087b8: 06 e4        	sd	ra, 8(sp)
802087ba: 1b 86 05 00  	sext.w	a2, a1
802087be: 93 06 00 08  	li	a3, 128
802087c2: 02 c2        	sw	zero, 4(sp)
802087c4: 63 76 d6 00  	bgeu	a2, a3, 0x802087d0 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x1a>
802087c8: 23 02 b1 00  	sb	a1, 4(sp)
802087cc: 05 46        	li	a2, 1
802087ce: 71 a0        	j	0x8020885a <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
802087d0: 1b d6 b5 00  	srliw	a2, a1, 11
802087d4: 19 ee        	bnez	a2, 0x802087f2 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x3c>
802087d6: 13 d6 65 00  	srli	a2, a1, 6
802087da: 13 66 06 0c  	ori	a2, a2, 192
802087de: 23 02 c1 00  	sb	a2, 4(sp)
802087e2: 93 f5 f5 03  	andi	a1, a1, 63
802087e6: 93 85 05 08  	addi	a1, a1, 128
802087ea: a3 02 b1 00  	sb	a1, 5(sp)
802087ee: 09 46        	li	a2, 2
802087f0: ad a0        	j	0x8020885a <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
802087f2: 1b d6 05 01  	srliw	a2, a1, 16
802087f6: 15 e6        	bnez	a2, 0x80208822 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x6c>
802087f8: 13 d6 c5 00  	srli	a2, a1, 12
802087fc: 13 66 06 0e  	ori	a2, a2, 224
80208800: 23 02 c1 00  	sb	a2, 4(sp)
80208804: 13 96 45 03  	slli	a2, a1, 52
80208808: 69 92        	srli	a2, a2, 58
8020880a: 13 06 06 08  	addi	a2, a2, 128
8020880e: a3 02 c1 00  	sb	a2, 5(sp)
80208812: 93 f5 f5 03  	andi	a1, a1, 63
80208816: 93 85 05 08  	addi	a1, a1, 128
8020881a: 23 03 b1 00  	sb	a1, 6(sp)
8020881e: 0d 46        	li	a2, 3
80208820: 2d a8        	j	0x8020885a <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80208822: 13 96 b5 02  	slli	a2, a1, 43
80208826: 75 92        	srli	a2, a2, 61
80208828: 13 06 06 0f  	addi	a2, a2, 240
8020882c: 23 02 c1 00  	sb	a2, 4(sp)
80208830: 13 96 e5 02  	slli	a2, a1, 46
80208834: 69 92        	srli	a2, a2, 58
80208836: 13 06 06 08  	addi	a2, a2, 128
8020883a: a3 02 c1 00  	sb	a2, 5(sp)
8020883e: 13 96 45 03  	slli	a2, a1, 52
80208842: 69 92        	srli	a2, a2, 58
80208844: 13 06 06 08  	addi	a2, a2, 128
80208848: 23 03 c1 00  	sb	a2, 6(sp)
8020884c: 93 f5 f5 03  	andi	a1, a1, 63
80208850: 93 85 05 08  	addi	a1, a1, 128
80208854: a3 03 b1 00  	sb	a1, 7(sp)
80208858: 11 46        	li	a2, 4
8020885a: 4c 00        	addi	a1, sp, 4
8020885c: 97 00 00 00  	auipc	ra, 0
80208860: e7 80 c0 c1  	jalr	-996(ra)
80208864: a2 60        	ld	ra, 8(sp)
80208866: 41 01        	addi	sp, sp, 16
80208868: 82 80        	ret

000000008020886a <_ZN4core3fmt5Write9write_fmt17h33104a4532dd589cE>:
8020886a: 39 71        	addi	sp, sp, -64
8020886c: 06 fc        	sd	ra, 56(sp)
8020886e: 90 75        	ld	a2, 40(a1)
80208870: 94 71        	ld	a3, 32(a1)
80208872: 2a e0        	sd	a0, 0(sp)
80208874: 32 f8        	sd	a2, 48(sp)
80208876: 36 f4        	sd	a3, 40(sp)
80208878: 88 6d        	ld	a0, 24(a1)
8020887a: 90 69        	ld	a2, 16(a1)
8020887c: 94 65        	ld	a3, 8(a1)
8020887e: 8c 61        	ld	a1, 0(a1)
80208880: 2a f0        	sd	a0, 32(sp)
80208882: 32 ec        	sd	a2, 24(sp)
80208884: 36 e8        	sd	a3, 16(sp)
80208886: 2e e4        	sd	a1, 8(sp)

0000000080208888 <.Lpcrel_hi663>:
80208888: 17 25 00 00  	auipc	a0, 2
8020888c: 93 05 05 71  	addi	a1, a0, 1808
80208890: 0a 85        	mv	a0, sp
80208892: 30 00        	addi	a2, sp, 8
80208894: 97 00 00 00  	auipc	ra, 0
80208898: e7 80 a0 11  	jalr	282(ra)
8020889c: e2 70        	ld	ra, 56(sp)
8020889e: 21 61        	addi	sp, sp, 64
802088a0: 82 80        	ret

00000000802088a2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha27cc45ca5b519bfE>:
802088a2: 08 61        	ld	a0, 0(a0)
802088a4: 17 03 00 00  	auipc	t1, 0
802088a8: 67 00 43 bd  	jr	-1068(t1)

00000000802088ac <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E>:
802088ac: 41 11        	addi	sp, sp, -16
802088ae: 06 e4        	sd	ra, 8(sp)
802088b0: 08 61        	ld	a0, 0(a0)
802088b2: 1b 86 05 00  	sext.w	a2, a1
802088b6: 93 06 00 08  	li	a3, 128
802088ba: 02 c2        	sw	zero, 4(sp)
802088bc: 63 76 d6 00  	bgeu	a2, a3, 0x802088c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x1c>
802088c0: 23 02 b1 00  	sb	a1, 4(sp)
802088c4: 05 46        	li	a2, 1
802088c6: 71 a0        	j	0x80208952 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
802088c8: 1b d6 b5 00  	srliw	a2, a1, 11
802088cc: 19 ee        	bnez	a2, 0x802088ea <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x3e>
802088ce: 13 d6 65 00  	srli	a2, a1, 6
802088d2: 13 66 06 0c  	ori	a2, a2, 192
802088d6: 23 02 c1 00  	sb	a2, 4(sp)
802088da: 93 f5 f5 03  	andi	a1, a1, 63
802088de: 93 85 05 08  	addi	a1, a1, 128
802088e2: a3 02 b1 00  	sb	a1, 5(sp)
802088e6: 09 46        	li	a2, 2
802088e8: ad a0        	j	0x80208952 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
802088ea: 1b d6 05 01  	srliw	a2, a1, 16
802088ee: 15 e6        	bnez	a2, 0x8020891a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x6e>
802088f0: 13 d6 c5 00  	srli	a2, a1, 12
802088f4: 13 66 06 0e  	ori	a2, a2, 224
802088f8: 23 02 c1 00  	sb	a2, 4(sp)
802088fc: 13 96 45 03  	slli	a2, a1, 52
80208900: 69 92        	srli	a2, a2, 58
80208902: 13 06 06 08  	addi	a2, a2, 128
80208906: a3 02 c1 00  	sb	a2, 5(sp)
8020890a: 93 f5 f5 03  	andi	a1, a1, 63
8020890e: 93 85 05 08  	addi	a1, a1, 128
80208912: 23 03 b1 00  	sb	a1, 6(sp)
80208916: 0d 46        	li	a2, 3
80208918: 2d a8        	j	0x80208952 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
8020891a: 13 96 b5 02  	slli	a2, a1, 43
8020891e: 75 92        	srli	a2, a2, 61
80208920: 13 06 06 0f  	addi	a2, a2, 240
80208924: 23 02 c1 00  	sb	a2, 4(sp)
80208928: 13 96 e5 02  	slli	a2, a1, 46
8020892c: 69 92        	srli	a2, a2, 58
8020892e: 13 06 06 08  	addi	a2, a2, 128
80208932: a3 02 c1 00  	sb	a2, 5(sp)
80208936: 13 96 45 03  	slli	a2, a1, 52
8020893a: 69 92        	srli	a2, a2, 58
8020893c: 13 06 06 08  	addi	a2, a2, 128
80208940: 23 03 c1 00  	sb	a2, 6(sp)
80208944: 93 f5 f5 03  	andi	a1, a1, 63
80208948: 93 85 05 08  	addi	a1, a1, 128
8020894c: a3 03 b1 00  	sb	a1, 7(sp)
80208950: 11 46        	li	a2, 4
80208952: 4c 00        	addi	a1, sp, 4
80208954: 97 00 00 00  	auipc	ra, 0
80208958: e7 80 40 b2  	jalr	-1244(ra)
8020895c: a2 60        	ld	ra, 8(sp)
8020895e: 41 01        	addi	sp, sp, 16
80208960: 82 80        	ret

0000000080208962 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h8d7d3cce603bbfe8E>:
80208962: 39 71        	addi	sp, sp, -64
80208964: 06 fc        	sd	ra, 56(sp)
80208966: 90 75        	ld	a2, 40(a1)
80208968: 94 71        	ld	a3, 32(a1)
8020896a: 98 6d        	ld	a4, 24(a1)
8020896c: 32 f8        	sd	a2, 48(sp)
8020896e: 36 f4        	sd	a3, 40(sp)
80208970: 3a f0        	sd	a4, 32(sp)
80208972: 90 69        	ld	a2, 16(a1)
80208974: 94 65        	ld	a3, 8(a1)
80208976: 8c 61        	ld	a1, 0(a1)
80208978: 08 61        	ld	a0, 0(a0)
8020897a: 32 ec        	sd	a2, 24(sp)
8020897c: 36 e8        	sd	a3, 16(sp)
8020897e: 2e e4        	sd	a1, 8(sp)
80208980: 2a e0        	sd	a0, 0(sp)

0000000080208982 <.Lpcrel_hi666>:
80208982: 17 25 00 00  	auipc	a0, 2
80208986: 93 05 65 61  	addi	a1, a0, 1558
8020898a: 0a 85        	mv	a0, sp
8020898c: 30 00        	addi	a2, sp, 8
8020898e: 97 00 00 00  	auipc	ra, 0
80208992: e7 80 00 02  	jalr	32(ra)
80208996: e2 70        	ld	ra, 56(sp)
80208998: 21 61        	addi	sp, sp, 64
8020899a: 82 80        	ret

000000008020899c <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
8020899c: 90 71        	ld	a2, 32(a1)
8020899e: 8c 75        	ld	a1, 40(a1)
802089a0: aa 86        	mv	a3, a0
802089a2: 32 85        	mv	a0, a2
802089a4: 36 86        	mv	a2, a3
802089a6: 17 03 00 00  	auipc	t1, 0
802089aa: 67 00 83 00  	jr	8(t1)

00000000802089ae <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
802089ae: 19 71        	addi	sp, sp, -128
802089b0: 86 fc        	sd	ra, 120(sp)
802089b2: a2 f8        	sd	s0, 112(sp)
802089b4: a6 f4        	sd	s1, 104(sp)
802089b6: ca f0        	sd	s2, 96(sp)
802089b8: ce ec        	sd	s3, 88(sp)
802089ba: d2 e8        	sd	s4, 80(sp)
802089bc: d6 e4        	sd	s5, 72(sp)
802089be: da e0        	sd	s6, 64(sp)
802089c0: b2 89        	mv	s3, a2
802089c2: 13 06 00 02  	li	a2, 32
802089c6: 32 f8        	sd	a2, 48(sp)
802089c8: 0d 46        	li	a2, 3
802089ca: 23 0c c1 02  	sb	a2, 56(sp)
802089ce: 03 b4 09 02  	ld	s0, 32(s3)
802089d2: 02 e0        	sd	zero, 0(sp)
802089d4: 02 e8        	sd	zero, 16(sp)
802089d6: 2a f0        	sd	a0, 32(sp)
802089d8: 2e f4        	sd	a1, 40(sp)
802089da: 61 c0        	beqz	s0, 0x80208a9a <.Lpcrel_hi670+0x98>
802089dc: 03 b5 89 02  	ld	a0, 40(s3)
802089e0: 63 07 05 10  	beqz	a0, 0x80208aee <.Lpcrel_hi670+0xec>
802089e4: 83 b4 09 00  	ld	s1, 0(s3)
802089e8: 93 05 f5 ff  	addi	a1, a0, -1
802089ec: 8e 05        	slli	a1, a1, 3
802089ee: 8d 81        	srli	a1, a1, 3
802089f0: 13 89 15 00  	addi	s2, a1, 1
802089f4: a1 04        	addi	s1, s1, 8
802089f6: 93 05 80 03  	li	a1, 56
802089fa: 33 0a b5 02  	mul	s4, a0, a1
802089fe: 61 04        	addi	s0, s0, 24
80208a00: 85 4a        	li	s5, 1

0000000080208a02 <.Lpcrel_hi670>:
80208a02: 17 05 00 00  	auipc	a0, 0
80208a06: 13 0b e5 93  	addi	s6, a0, -1730
80208a0a: 90 60        	ld	a2, 0(s1)
80208a0c: 01 ca        	beqz	a2, 0x80208a1c <.Lpcrel_hi670+0x1a>
80208a0e: a2 76        	ld	a3, 40(sp)
80208a10: 02 75        	ld	a0, 32(sp)
80208a12: 83 b5 84 ff  	ld	a1, -8(s1)
80208a16: 94 6e        	ld	a3, 24(a3)
80208a18: 82 96        	jalr	a3
80208a1a: 65 ed        	bnez	a0, 0x80208b12 <.Lpcrel_hi670+0x110>
80208a1c: 08 48        	lw	a0, 16(s0)
80208a1e: 2a d8        	sw	a0, 48(sp)
80208a20: 03 05 84 01  	lb	a0, 24(s0)
80208a24: 23 0c a1 02  	sb	a0, 56(sp)
80208a28: 4c 48        	lw	a1, 20(s0)
80208a2a: 03 b5 09 01  	ld	a0, 16(s3)
80208a2e: 2e da        	sw	a1, 52(sp)
80208a30: 03 36 84 ff  	ld	a2, -8(s0)
80208a34: 0c 60        	ld	a1, 0(s0)
80208a36: 01 ce        	beqz	a2, 0x80208a4e <.Lpcrel_hi670+0x4c>
80208a38: 63 17 56 01  	bne	a2, s5, 0x80208a46 <.Lpcrel_hi670+0x44>
80208a3c: 92 05        	slli	a1, a1, 4
80208a3e: aa 95        	add	a1, a1, a0
80208a40: 90 65        	ld	a2, 8(a1)
80208a42: 63 04 66 01  	beq	a2, s6, 0x80208a4a <.Lpcrel_hi670+0x48>
80208a46: 01 46        	li	a2, 0
80208a48: 21 a0        	j	0x80208a50 <.Lpcrel_hi670+0x4e>
80208a4a: 8c 61        	ld	a1, 0(a1)
80208a4c: 8c 61        	ld	a1, 0(a1)
80208a4e: 05 46        	li	a2, 1
80208a50: 32 e0        	sd	a2, 0(sp)
80208a52: 2e e4        	sd	a1, 8(sp)
80208a54: 03 36 84 fe  	ld	a2, -24(s0)
80208a58: 83 35 04 ff  	ld	a1, -16(s0)
80208a5c: 01 ce        	beqz	a2, 0x80208a74 <.Lpcrel_hi670+0x72>
80208a5e: 63 17 56 01  	bne	a2, s5, 0x80208a6c <.Lpcrel_hi670+0x6a>
80208a62: 92 05        	slli	a1, a1, 4
80208a64: aa 95        	add	a1, a1, a0
80208a66: 90 65        	ld	a2, 8(a1)
80208a68: 63 04 66 01  	beq	a2, s6, 0x80208a70 <.Lpcrel_hi670+0x6e>
80208a6c: 01 46        	li	a2, 0
80208a6e: 21 a0        	j	0x80208a76 <.Lpcrel_hi670+0x74>
80208a70: 8c 61        	ld	a1, 0(a1)
80208a72: 8c 61        	ld	a1, 0(a1)
80208a74: 05 46        	li	a2, 1
80208a76: 32 e8        	sd	a2, 16(sp)
80208a78: 2e ec        	sd	a1, 24(sp)
80208a7a: 0c 64        	ld	a1, 8(s0)
80208a7c: 92 05        	slli	a1, a1, 4
80208a7e: 2e 95        	add	a0, a0, a1
80208a80: 10 65        	ld	a2, 8(a0)
80208a82: 08 61        	ld	a0, 0(a0)
80208a84: 8a 85        	mv	a1, sp
80208a86: 02 96        	jalr	a2
80208a88: 49 e5        	bnez	a0, 0x80208b12 <.Lpcrel_hi670+0x110>
80208a8a: c1 04        	addi	s1, s1, 16
80208a8c: 13 0a 8a fc  	addi	s4, s4, -56
80208a90: 13 04 84 03  	addi	s0, s0, 56
80208a94: e3 1b 0a f6  	bnez	s4, 0x80208a0a <.Lpcrel_hi670+0x8>
80208a98: b1 a0        	j	0x80208ae4 <.Lpcrel_hi670+0xe2>
80208a9a: 03 ba 89 01  	ld	s4, 24(s3)
80208a9e: 63 08 0a 04  	beqz	s4, 0x80208aee <.Lpcrel_hi670+0xec>
80208aa2: 83 b4 09 01  	ld	s1, 16(s3)
80208aa6: 03 b4 09 00  	ld	s0, 0(s3)
80208aaa: 13 05 fa ff  	addi	a0, s4, -1
80208aae: 12 05        	slli	a0, a0, 4
80208ab0: 11 81        	srli	a0, a0, 4
80208ab2: 13 09 15 00  	addi	s2, a0, 1
80208ab6: 21 04        	addi	s0, s0, 8
80208ab8: 12 0a        	slli	s4, s4, 4
80208aba: a1 04        	addi	s1, s1, 8
80208abc: 10 60        	ld	a2, 0(s0)
80208abe: 01 ca        	beqz	a2, 0x80208ace <.Lpcrel_hi670+0xcc>
80208ac0: a2 76        	ld	a3, 40(sp)
80208ac2: 02 75        	ld	a0, 32(sp)
80208ac4: 83 35 84 ff  	ld	a1, -8(s0)
80208ac8: 94 6e        	ld	a3, 24(a3)
80208aca: 82 96        	jalr	a3
80208acc: 39 e1        	bnez	a0, 0x80208b12 <.Lpcrel_hi670+0x110>
80208ace: 90 60        	ld	a2, 0(s1)
80208ad0: 03 b5 84 ff  	ld	a0, -8(s1)
80208ad4: 8a 85        	mv	a1, sp
80208ad6: 02 96        	jalr	a2
80208ad8: 0d ed        	bnez	a0, 0x80208b12 <.Lpcrel_hi670+0x110>
80208ada: 41 04        	addi	s0, s0, 16
80208adc: 41 1a        	addi	s4, s4, -16
80208ade: c1 04        	addi	s1, s1, 16
80208ae0: e3 1e 0a fc  	bnez	s4, 0x80208abc <.Lpcrel_hi670+0xba>
80208ae4: 03 b5 89 00  	ld	a0, 8(s3)
80208ae8: 63 68 a9 00  	bltu	s2, a0, 0x80208af8 <.Lpcrel_hi670+0xf6>
80208aec: 2d a0        	j	0x80208b16 <.Lpcrel_hi670+0x114>
80208aee: 01 49        	li	s2, 0
80208af0: 03 b5 89 00  	ld	a0, 8(s3)
80208af4: 63 71 a9 02  	bgeu	s2, a0, 0x80208b16 <.Lpcrel_hi670+0x114>
80208af8: 03 b5 09 00  	ld	a0, 0(s3)
80208afc: 12 09        	slli	s2, s2, 4
80208afe: 2a 99        	add	s2, s2, a0
80208b00: a2 76        	ld	a3, 40(sp)
80208b02: 02 75        	ld	a0, 32(sp)
80208b04: 83 35 09 00  	ld	a1, 0(s2)
80208b08: 03 36 89 00  	ld	a2, 8(s2)
80208b0c: 94 6e        	ld	a3, 24(a3)
80208b0e: 82 96        	jalr	a3
80208b10: 19 c1        	beqz	a0, 0x80208b16 <.Lpcrel_hi670+0x114>
80208b12: 05 45        	li	a0, 1
80208b14: 11 a0        	j	0x80208b18 <.Lpcrel_hi670+0x116>
80208b16: 01 45        	li	a0, 0
80208b18: e6 70        	ld	ra, 120(sp)
80208b1a: 46 74        	ld	s0, 112(sp)
80208b1c: a6 74        	ld	s1, 104(sp)
80208b1e: 06 79        	ld	s2, 96(sp)
80208b20: e6 69        	ld	s3, 88(sp)
80208b22: 46 6a        	ld	s4, 80(sp)
80208b24: a6 6a        	ld	s5, 72(sp)
80208b26: 06 6b        	ld	s6, 64(sp)
80208b28: 09 61        	addi	sp, sp, 128
80208b2a: 82 80        	ret

0000000080208b2c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
80208b2c: 59 71        	addi	sp, sp, -112
80208b2e: 86 f4        	sd	ra, 104(sp)
80208b30: a2 f0        	sd	s0, 96(sp)
80208b32: a6 ec        	sd	s1, 88(sp)
80208b34: ca e8        	sd	s2, 80(sp)
80208b36: ce e4        	sd	s3, 72(sp)
80208b38: d2 e0        	sd	s4, 64(sp)
80208b3a: 56 fc        	sd	s5, 56(sp)
80208b3c: 5a f8        	sd	s6, 48(sp)
80208b3e: 5e f4        	sd	s7, 40(sp)
80208b40: 62 f0        	sd	s8, 32(sp)
80208b42: 66 ec        	sd	s9, 24(sp)
80208b44: 6a e8        	sd	s10, 16(sp)
80208b46: 6e e4        	sd	s11, 8(sp)
80208b48: be 89        	mv	s3, a5
80208b4a: 3a 89        	mv	s2, a4
80208b4c: 36 8b        	mv	s6, a3
80208b4e: 32 8a        	mv	s4, a2
80208b50: 2a 8c        	mv	s8, a0
80208b52: b9 c1        	beqz	a1, 0x80208b98 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
80208b54: 03 64 4c 03  	lwu	s0, 52(s8)
80208b58: 93 7c 14 00  	andi	s9, s0, 1
80208b5c: b7 0a 11 00  	lui	s5, 272
80208b60: 63 84 0c 00  	beqz	s9, 0x80208b68 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
80208b64: 93 0a b0 02  	li	s5, 43
80208b68: ce 9c        	add	s9, s9, s3
80208b6a: 13 75 44 00  	andi	a0, s0, 4
80208b6e: 15 cd        	beqz	a0, 0x80208baa <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
80208b70: 13 05 00 02  	li	a0, 32
80208b74: 63 70 ab 04  	bgeu	s6, a0, 0x80208bb4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
80208b78: 01 45        	li	a0, 0
80208b7a: 63 03 0b 04  	beqz	s6, 0x80208bc0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80208b7e: da 85        	mv	a1, s6
80208b80: 52 86        	mv	a2, s4
80208b82: 83 06 06 00  	lb	a3, 0(a2)
80208b86: 05 06        	addi	a2, a2, 1
80208b88: 93 a6 06 fc  	slti	a3, a3, -64
80208b8c: 93 c6 16 00  	xori	a3, a3, 1
80208b90: fd 15        	addi	a1, a1, -1
80208b92: 36 95        	add	a0, a0, a3
80208b94: fd f5        	bnez	a1, 0x80208b82 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
80208b96: 2d a0        	j	0x80208bc0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80208b98: 03 24 4c 03  	lw	s0, 52(s8)
80208b9c: 93 8c 19 00  	addi	s9, s3, 1
80208ba0: 93 0a d0 02  	li	s5, 45
80208ba4: 13 75 44 00  	andi	a0, s0, 4
80208ba8: 61 f5        	bnez	a0, 0x80208b70 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80208baa: 01 4a        	li	s4, 0
80208bac: 03 35 0c 00  	ld	a0, 0(s8)
80208bb0: 01 ed        	bnez	a0, 0x80208bc8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
80208bb2: 25 a8        	j	0x80208bea <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80208bb4: 52 85        	mv	a0, s4
80208bb6: da 85        	mv	a1, s6
80208bb8: 97 00 00 00  	auipc	ra, 0
80208bbc: e7 80 20 47  	jalr	1138(ra)
80208bc0: aa 9c        	add	s9, s9, a0
80208bc2: 03 35 0c 00  	ld	a0, 0(s8)
80208bc6: 15 c1        	beqz	a0, 0x80208bea <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80208bc8: 03 3d 8c 00  	ld	s10, 8(s8)
80208bcc: 63 ff ac 01  	bgeu	s9, s10, 0x80208bea <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80208bd0: 21 88        	andi	s0, s0, 8
80208bd2: 35 ec        	bnez	s0, 0x80208c4e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
80208bd4: 83 45 8c 03  	lbu	a1, 56(s8)
80208bd8: 05 46        	li	a2, 1
80208bda: 33 05 9d 41  	sub	a0, s10, s9
80208bde: 63 4f b6 0a  	blt	a2, a1, 0x80208c9c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
80208be2: f1 e5        	bnez	a1, 0x80208cae <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
80208be4: 2a 8d        	mv	s10, a0
80208be6: 2e 85        	mv	a0, a1
80208be8: e1 a0        	j	0x80208cb0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80208bea: 03 34 0c 02  	ld	s0, 32(s8)
80208bee: 83 34 8c 02  	ld	s1, 40(s8)
80208bf2: 22 85        	mv	a0, s0
80208bf4: a6 85        	mv	a1, s1
80208bf6: 56 86        	mv	a2, s5
80208bf8: d2 86        	mv	a3, s4
80208bfa: 5a 87        	mv	a4, s6
80208bfc: 97 00 00 00  	auipc	ra, 0
80208c00: e7 80 80 14  	jalr	328(ra)
80208c04: 85 4b        	li	s7, 1
80208c06: 0d c1        	beqz	a0, 0x80208c28 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
80208c08: 5e 85        	mv	a0, s7
80208c0a: a6 70        	ld	ra, 104(sp)
80208c0c: 06 74        	ld	s0, 96(sp)
80208c0e: e6 64        	ld	s1, 88(sp)
80208c10: 46 69        	ld	s2, 80(sp)
80208c12: a6 69        	ld	s3, 72(sp)
80208c14: 06 6a        	ld	s4, 64(sp)
80208c16: e2 7a        	ld	s5, 56(sp)
80208c18: 42 7b        	ld	s6, 48(sp)
80208c1a: a2 7b        	ld	s7, 40(sp)
80208c1c: 02 7c        	ld	s8, 32(sp)
80208c1e: e2 6c        	ld	s9, 24(sp)
80208c20: 42 6d        	ld	s10, 16(sp)
80208c22: a2 6d        	ld	s11, 8(sp)
80208c24: 65 61        	addi	sp, sp, 112
80208c26: 82 80        	ret
80208c28: 9c 6c        	ld	a5, 24(s1)
80208c2a: 22 85        	mv	a0, s0
80208c2c: ca 85        	mv	a1, s2
80208c2e: 4e 86        	mv	a2, s3
80208c30: a6 70        	ld	ra, 104(sp)
80208c32: 06 74        	ld	s0, 96(sp)
80208c34: e6 64        	ld	s1, 88(sp)
80208c36: 46 69        	ld	s2, 80(sp)
80208c38: a6 69        	ld	s3, 72(sp)
80208c3a: 06 6a        	ld	s4, 64(sp)
80208c3c: e2 7a        	ld	s5, 56(sp)
80208c3e: 42 7b        	ld	s6, 48(sp)
80208c40: a2 7b        	ld	s7, 40(sp)
80208c42: 02 7c        	ld	s8, 32(sp)
80208c44: e2 6c        	ld	s9, 24(sp)
80208c46: 42 6d        	ld	s10, 16(sp)
80208c48: a2 6d        	ld	s11, 8(sp)
80208c4a: 65 61        	addi	sp, sp, 112
80208c4c: 82 87        	jr	a5
80208c4e: 03 24 0c 03  	lw	s0, 48(s8)
80208c52: 13 05 00 03  	li	a0, 48
80208c56: 83 45 8c 03  	lbu	a1, 56(s8)
80208c5a: 2e e0        	sd	a1, 0(sp)
80208c5c: 83 3d 0c 02  	ld	s11, 32(s8)
80208c60: 83 34 8c 02  	ld	s1, 40(s8)
80208c64: 23 28 ac 02  	sw	a0, 48(s8)
80208c68: 85 4b        	li	s7, 1
80208c6a: 23 0c 7c 03  	sb	s7, 56(s8)
80208c6e: 6e 85        	mv	a0, s11
80208c70: a6 85        	mv	a1, s1
80208c72: 56 86        	mv	a2, s5
80208c74: d2 86        	mv	a3, s4
80208c76: 5a 87        	mv	a4, s6
80208c78: 97 00 00 00  	auipc	ra, 0
80208c7c: e7 80 c0 0c  	jalr	204(ra)
80208c80: 41 f5        	bnez	a0, 0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208c82: 22 8a        	mv	s4, s0
80208c84: 33 04 9d 41  	sub	s0, s10, s9
80208c88: 05 04        	addi	s0, s0, 1
80208c8a: 7d 14        	addi	s0, s0, -1
80208c8c: 51 c8        	beqz	s0, 0x80208d20 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
80208c8e: 90 70        	ld	a2, 32(s1)
80208c90: 93 05 00 03  	li	a1, 48
80208c94: 6e 85        	mv	a0, s11
80208c96: 02 96        	jalr	a2
80208c98: 6d d9        	beqz	a0, 0x80208c8a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
80208c9a: bd b7        	j	0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208c9c: 09 46        	li	a2, 2
80208c9e: 63 98 c5 00  	bne	a1, a2, 0x80208cae <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
80208ca2: 93 05 15 00  	addi	a1, a0, 1
80208ca6: 05 81        	srli	a0, a0, 1
80208ca8: 13 dd 15 00  	srli	s10, a1, 1
80208cac: 11 a0        	j	0x80208cb0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80208cae: 01 4d        	li	s10, 0
80208cb0: 83 3c 0c 02  	ld	s9, 32(s8)
80208cb4: 83 3d 8c 02  	ld	s11, 40(s8)
80208cb8: 83 24 0c 03  	lw	s1, 48(s8)
80208cbc: 13 04 15 00  	addi	s0, a0, 1
80208cc0: 7d 14        	addi	s0, s0, -1
80208cc2: 09 c8        	beqz	s0, 0x80208cd4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
80208cc4: 03 b6 0d 02  	ld	a2, 32(s11)
80208cc8: 66 85        	mv	a0, s9
80208cca: a6 85        	mv	a1, s1
80208ccc: 02 96        	jalr	a2
80208cce: 6d d9        	beqz	a0, 0x80208cc0 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
80208cd0: 85 4b        	li	s7, 1
80208cd2: 1d bf        	j	0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208cd4: 37 05 11 00  	lui	a0, 272
80208cd8: 85 4b        	li	s7, 1
80208cda: e3 87 a4 f2  	beq	s1, a0, 0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208cde: 66 85        	mv	a0, s9
80208ce0: ee 85        	mv	a1, s11
80208ce2: 56 86        	mv	a2, s5
80208ce4: d2 86        	mv	a3, s4
80208ce6: 5a 87        	mv	a4, s6
80208ce8: 97 00 00 00  	auipc	ra, 0
80208cec: e7 80 c0 05  	jalr	92(ra)
80208cf0: 01 fd        	bnez	a0, 0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208cf2: 83 b6 8d 01  	ld	a3, 24(s11)
80208cf6: 66 85        	mv	a0, s9
80208cf8: ca 85        	mv	a1, s2
80208cfa: 4e 86        	mv	a2, s3
80208cfc: 82 96        	jalr	a3
80208cfe: 09 f5        	bnez	a0, 0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208d00: b3 09 a0 41  	neg	s3, s10
80208d04: 7d 5a        	li	s4, -1
80208d06: 7d 59        	li	s2, -1
80208d08: 33 85 29 01  	add	a0, s3, s2
80208d0c: 63 08 45 03  	beq	a0, s4, 0x80208d3c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
80208d10: 03 b6 0d 02  	ld	a2, 32(s11)
80208d14: 66 85        	mv	a0, s9
80208d16: a6 85        	mv	a1, s1
80208d18: 02 96        	jalr	a2
80208d1a: 05 09        	addi	s2, s2, 1
80208d1c: 75 d5        	beqz	a0, 0x80208d08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
80208d1e: 05 a0        	j	0x80208d3e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
80208d20: 94 6c        	ld	a3, 24(s1)
80208d22: 6e 85        	mv	a0, s11
80208d24: ca 85        	mv	a1, s2
80208d26: 4e 86        	mv	a2, s3
80208d28: 82 96        	jalr	a3
80208d2a: e3 1f 05 ec  	bnez	a0, 0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208d2e: 81 4b        	li	s7, 0
80208d30: 23 28 4c 03  	sw	s4, 48(s8)
80208d34: 02 65        	ld	a0, 0(sp)
80208d36: 23 0c ac 02  	sb	a0, 56(s8)
80208d3a: f9 b5        	j	0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80208d3c: 6a 89        	mv	s2, s10
80208d3e: b3 3b a9 01  	sltu	s7, s2, s10
80208d42: d9 b5        	j	0x80208c08 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

0000000080208d44 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
80208d44: 79 71        	addi	sp, sp, -48
80208d46: 06 f4        	sd	ra, 40(sp)
80208d48: 22 f0        	sd	s0, 32(sp)
80208d4a: 26 ec        	sd	s1, 24(sp)
80208d4c: 4a e8        	sd	s2, 16(sp)
80208d4e: 4e e4        	sd	s3, 8(sp)
80208d50: 9b 07 06 00  	sext.w	a5, a2
80208d54: 37 08 11 00  	lui	a6, 272
80208d58: 3a 89        	mv	s2, a4
80208d5a: b6 84        	mv	s1, a3
80208d5c: 2e 84        	mv	s0, a1
80208d5e: aa 89        	mv	s3, a0
80208d60: 63 89 07 01  	beq	a5, a6, 0x80208d72 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
80208d64: 14 70        	ld	a3, 32(s0)
80208d66: 4e 85        	mv	a0, s3
80208d68: b2 85        	mv	a1, a2
80208d6a: 82 96        	jalr	a3
80208d6c: aa 85        	mv	a1, a0
80208d6e: 05 45        	li	a0, 1
80208d70: 91 ed        	bnez	a1, 0x80208d8c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
80208d72: 81 cc        	beqz	s1, 0x80208d8a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
80208d74: 1c 6c        	ld	a5, 24(s0)
80208d76: 4e 85        	mv	a0, s3
80208d78: a6 85        	mv	a1, s1
80208d7a: 4a 86        	mv	a2, s2
80208d7c: a2 70        	ld	ra, 40(sp)
80208d7e: 02 74        	ld	s0, 32(sp)
80208d80: e2 64        	ld	s1, 24(sp)
80208d82: 42 69        	ld	s2, 16(sp)
80208d84: a2 69        	ld	s3, 8(sp)
80208d86: 45 61        	addi	sp, sp, 48
80208d88: 82 87        	jr	a5
80208d8a: 01 45        	li	a0, 0
80208d8c: a2 70        	ld	ra, 40(sp)
80208d8e: 02 74        	ld	s0, 32(sp)
80208d90: e2 64        	ld	s1, 24(sp)
80208d92: 42 69        	ld	s2, 16(sp)
80208d94: a2 69        	ld	s3, 8(sp)
80208d96: 45 61        	addi	sp, sp, 48
80208d98: 82 80        	ret

0000000080208d9a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
80208d9a: 5d 71        	addi	sp, sp, -80
80208d9c: 86 e4        	sd	ra, 72(sp)
80208d9e: a2 e0        	sd	s0, 64(sp)
80208da0: 26 fc        	sd	s1, 56(sp)
80208da2: 4a f8        	sd	s2, 48(sp)
80208da4: 4e f4        	sd	s3, 40(sp)
80208da6: 52 f0        	sd	s4, 32(sp)
80208da8: 56 ec        	sd	s5, 24(sp)
80208daa: 5a e8        	sd	s6, 16(sp)
80208dac: 5e e4        	sd	s7, 8(sp)
80208dae: 2a 8a        	mv	s4, a0
80208db0: 83 32 05 00  	ld	t0, 0(a0)
80208db4: 08 69        	ld	a0, 16(a0)
80208db6: b3 e6 a2 00  	or	a3, t0, a0
80208dba: b2 89        	mv	s3, a2
80208dbc: 2e 89        	mv	s2, a1
80208dbe: 63 84 06 16  	beqz	a3, 0x80208f26 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80208dc2: 63 07 05 10  	beqz	a0, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208dc6: 03 37 8a 01  	ld	a4, 24(s4)
80208dca: 01 45        	li	a0, 0
80208dcc: b3 06 39 01  	add	a3, s2, s3
80208dd0: 05 07        	addi	a4, a4, 1
80208dd2: 37 03 11 00  	lui	t1, 272
80208dd6: 93 08 f0 0d  	li	a7, 223
80208dda: 13 08 00 0f  	li	a6, 240
80208dde: 4a 86        	mv	a2, s2
80208de0: 01 a8        	j	0x80208df0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
80208de2: 93 05 16 00  	addi	a1, a2, 1
80208de6: 11 8d        	sub	a0, a0, a2
80208de8: 2e 95        	add	a0, a0, a1
80208dea: 2e 86        	mv	a2, a1
80208dec: 63 02 64 0e  	beq	s0, t1, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208df0: 7d 17        	addi	a4, a4, -1
80208df2: 25 c7        	beqz	a4, 0x80208e5a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
80208df4: 63 0e d6 0c  	beq	a2, a3, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208df8: 83 05 06 00  	lb	a1, 0(a2)
80208dfc: 13 f4 f5 0f  	andi	s0, a1, 255
80208e00: e3 d1 05 fe  	bgez	a1, 0x80208de2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
80208e04: 83 45 16 00  	lbu	a1, 1(a2)
80208e08: 93 74 f4 01  	andi	s1, s0, 31
80208e0c: 93 f7 f5 03  	andi	a5, a1, 63
80208e10: 63 f9 88 02  	bgeu	a7, s0, 0x80208e42 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
80208e14: 83 45 26 00  	lbu	a1, 2(a2)
80208e18: 9a 07        	slli	a5, a5, 6
80208e1a: 93 f5 f5 03  	andi	a1, a1, 63
80208e1e: cd 8f        	or	a5, a5, a1
80208e20: 63 67 04 03  	bltu	s0, a6, 0x80208e4e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
80208e24: 83 45 36 00  	lbu	a1, 3(a2)
80208e28: f6 14        	slli	s1, s1, 61
80208e2a: ad 90        	srli	s1, s1, 43
80208e2c: 9a 07        	slli	a5, a5, 6
80208e2e: 93 f5 f5 03  	andi	a1, a1, 63
80208e32: dd 8d        	or	a1, a1, a5
80208e34: 33 e4 95 00  	or	s0, a1, s1
80208e38: 63 0c 64 08  	beq	s0, t1, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208e3c: 93 05 46 00  	addi	a1, a2, 4
80208e40: 5d b7        	j	0x80208de6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80208e42: 93 05 26 00  	addi	a1, a2, 2
80208e46: 13 94 64 00  	slli	s0, s1, 6
80208e4a: 5d 8c        	or	s0, s0, a5
80208e4c: 69 bf        	j	0x80208de6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80208e4e: 93 05 36 00  	addi	a1, a2, 3
80208e52: 13 94 c4 00  	slli	s0, s1, 12
80208e56: 5d 8c        	or	s0, s0, a5
80208e58: 79 b7        	j	0x80208de6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80208e5a: 63 0b d6 06  	beq	a2, a3, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208e5e: 83 05 06 00  	lb	a1, 0(a2)
80208e62: 63 d3 05 04  	bgez	a1, 0x80208ea8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80208e66: 93 f5 f5 0f  	andi	a1, a1, 255
80208e6a: 93 06 00 0e  	li	a3, 224
80208e6e: 63 ed d5 02  	bltu	a1, a3, 0x80208ea8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80208e72: 93 06 00 0f  	li	a3, 240
80208e76: 63 e9 d5 02  	bltu	a1, a3, 0x80208ea8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80208e7a: 83 46 16 00  	lbu	a3, 1(a2)
80208e7e: 03 47 26 00  	lbu	a4, 2(a2)
80208e82: 93 f6 f6 03  	andi	a3, a3, 63
80208e86: 13 77 f7 03  	andi	a4, a4, 63
80208e8a: 03 46 36 00  	lbu	a2, 3(a2)
80208e8e: f6 15        	slli	a1, a1, 61
80208e90: ad 91        	srli	a1, a1, 43
80208e92: b2 06        	slli	a3, a3, 12
80208e94: 1a 07        	slli	a4, a4, 6
80208e96: d9 8e        	or	a3, a3, a4
80208e98: 13 76 f6 03  	andi	a2, a2, 63
80208e9c: 55 8e        	or	a2, a2, a3
80208e9e: d1 8d        	or	a1, a1, a2
80208ea0: 37 06 11 00  	lui	a2, 272
80208ea4: 63 86 c5 02  	beq	a1, a2, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208ea8: 05 c1        	beqz	a0, 0x80208ec8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80208eaa: 63 7d 35 01  	bgeu	a0, s3, 0x80208ec4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
80208eae: b3 05 a9 00  	add	a1, s2, a0
80208eb2: 83 85 05 00  	lb	a1, 0(a1)
80208eb6: 13 06 00 fc  	li	a2, -64
80208eba: 63 d7 c5 00  	bge	a1, a2, 0x80208ec8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80208ebe: 81 45        	li	a1, 0
80208ec0: 91 e5        	bnez	a1, 0x80208ecc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
80208ec2: 39 a0        	j	0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208ec4: e3 1d 35 ff  	bne	a0, s3, 0x80208ebe <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
80208ec8: ca 85        	mv	a1, s2
80208eca: 99 c1        	beqz	a1, 0x80208ed0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80208ecc: aa 89        	mv	s3, a0
80208ece: 2e 89        	mv	s2, a1
80208ed0: 63 8b 02 04  	beqz	t0, 0x80208f26 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80208ed4: 03 34 8a 00  	ld	s0, 8(s4)
80208ed8: 13 05 00 02  	li	a0, 32
80208edc: 63 fd a9 02  	bgeu	s3, a0, 0x80208f16 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
80208ee0: 01 45        	li	a0, 0
80208ee2: 63 8e 09 00  	beqz	s3, 0x80208efe <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
80208ee6: ce 85        	mv	a1, s3
80208ee8: 4a 86        	mv	a2, s2
80208eea: 83 06 06 00  	lb	a3, 0(a2)
80208eee: 05 06        	addi	a2, a2, 1
80208ef0: 93 a6 06 fc  	slti	a3, a3, -64
80208ef4: 93 c6 16 00  	xori	a3, a3, 1
80208ef8: fd 15        	addi	a1, a1, -1
80208efa: 36 95        	add	a0, a0, a3
80208efc: fd f5        	bnez	a1, 0x80208eea <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
80208efe: 63 74 85 02  	bgeu	a0, s0, 0x80208f26 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80208f02: 83 45 8a 03  	lbu	a1, 56(s4)
80208f06: 05 46        	li	a2, 1
80208f08: 33 05 a4 40  	sub	a0, s0, a0
80208f0c: 63 4f b6 02  	blt	a2, a1, 0x80208f4a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
80208f10: b1 c5        	beqz	a1, 0x80208f5c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
80208f12: 81 4a        	li	s5, 0
80208f14: b1 a0        	j	0x80208f60 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
80208f16: 4a 85        	mv	a0, s2
80208f18: ce 85        	mv	a1, s3
80208f1a: 97 00 00 00  	auipc	ra, 0
80208f1e: e7 80 00 11  	jalr	272(ra)
80208f22: e3 60 85 fe  	bltu	a0, s0, 0x80208f02 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
80208f26: 83 35 8a 02  	ld	a1, 40(s4)
80208f2a: 03 35 0a 02  	ld	a0, 32(s4)
80208f2e: 9c 6d        	ld	a5, 24(a1)
80208f30: ca 85        	mv	a1, s2
80208f32: 4e 86        	mv	a2, s3
80208f34: a6 60        	ld	ra, 72(sp)
80208f36: 06 64        	ld	s0, 64(sp)
80208f38: e2 74        	ld	s1, 56(sp)
80208f3a: 42 79        	ld	s2, 48(sp)
80208f3c: a2 79        	ld	s3, 40(sp)
80208f3e: 02 7a        	ld	s4, 32(sp)
80208f40: e2 6a        	ld	s5, 24(sp)
80208f42: 42 6b        	ld	s6, 16(sp)
80208f44: a2 6b        	ld	s7, 8(sp)
80208f46: 61 61        	addi	sp, sp, 80
80208f48: 82 87        	jr	a5
80208f4a: 09 46        	li	a2, 2
80208f4c: 63 98 c5 00  	bne	a1, a2, 0x80208f5c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
80208f50: 93 05 15 00  	addi	a1, a0, 1
80208f54: 05 81        	srli	a0, a0, 1
80208f56: 93 da 15 00  	srli	s5, a1, 1
80208f5a: 19 a0        	j	0x80208f60 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
80208f5c: aa 8a        	mv	s5, a0
80208f5e: 01 45        	li	a0, 0
80208f60: 03 3b 0a 02  	ld	s6, 32(s4)
80208f64: 83 3b 8a 02  	ld	s7, 40(s4)
80208f68: 83 24 0a 03  	lw	s1, 48(s4)
80208f6c: 13 04 15 00  	addi	s0, a0, 1
80208f70: 7d 14        	addi	s0, s0, -1
80208f72: 09 c8        	beqz	s0, 0x80208f84 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
80208f74: 03 b6 0b 02  	ld	a2, 32(s7)
80208f78: 5a 85        	mv	a0, s6
80208f7a: a6 85        	mv	a1, s1
80208f7c: 02 96        	jalr	a2
80208f7e: 6d d9        	beqz	a0, 0x80208f70 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
80208f80: 05 4a        	li	s4, 1
80208f82: 81 a0        	j	0x80208fc2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80208f84: 37 05 11 00  	lui	a0, 272
80208f88: 05 4a        	li	s4, 1
80208f8a: 63 8c a4 02  	beq	s1, a0, 0x80208fc2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80208f8e: 83 b6 8b 01  	ld	a3, 24(s7)
80208f92: 5a 85        	mv	a0, s6
80208f94: ca 85        	mv	a1, s2
80208f96: 4e 86        	mv	a2, s3
80208f98: 82 96        	jalr	a3
80208f9a: 05 e5        	bnez	a0, 0x80208fc2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80208f9c: 33 09 50 41  	neg	s2, s5
80208fa0: fd 59        	li	s3, -1
80208fa2: 7d 54        	li	s0, -1
80208fa4: 33 05 89 00  	add	a0, s2, s0
80208fa8: 63 0a 35 01  	beq	a0, s3, 0x80208fbc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
80208fac: 03 b6 0b 02  	ld	a2, 32(s7)
80208fb0: 5a 85        	mv	a0, s6
80208fb2: a6 85        	mv	a1, s1
80208fb4: 02 96        	jalr	a2
80208fb6: 05 04        	addi	s0, s0, 1
80208fb8: 75 d5        	beqz	a0, 0x80208fa4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80208fba: 11 a0        	j	0x80208fbe <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
80208fbc: 56 84        	mv	s0, s5
80208fbe: 33 3a 54 01  	sltu	s4, s0, s5
80208fc2: 52 85        	mv	a0, s4
80208fc4: a6 60        	ld	ra, 72(sp)
80208fc6: 06 64        	ld	s0, 64(sp)
80208fc8: e2 74        	ld	s1, 56(sp)
80208fca: 42 79        	ld	s2, 48(sp)
80208fcc: a2 79        	ld	s3, 40(sp)
80208fce: 02 7a        	ld	s4, 32(sp)
80208fd0: e2 6a        	ld	s5, 24(sp)
80208fd2: 42 6b        	ld	s6, 16(sp)
80208fd4: a2 6b        	ld	s7, 8(sp)
80208fd6: 61 61        	addi	sp, sp, 80
80208fd8: 82 80        	ret

0000000080208fda <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
80208fda: ae 86        	mv	a3, a1
80208fdc: aa 85        	mv	a1, a0
80208fde: 32 85        	mv	a0, a2
80208fe0: 36 86        	mv	a2, a3
80208fe2: 17 03 00 00  	auipc	t1, 0
80208fe6: 67 00 83 db  	jr	-584(t1)

0000000080208fea <_ZN4core5slice5index26slice_start_index_len_fail17hd6f51de6120413ffE>:
80208fea: 59 71        	addi	sp, sp, -112
80208fec: 86 f4        	sd	ra, 104(sp)
80208fee: 2a e4        	sd	a0, 8(sp)
80208ff0: 2e e8        	sd	a1, 16(sp)
80208ff2: 28 00        	addi	a0, sp, 8
80208ff4: aa e4        	sd	a0, 72(sp)

0000000080208ff6 <.Lpcrel_hi737>:
80208ff6: 17 05 00 00  	auipc	a0, 0
80208ffa: 13 05 85 53  	addi	a0, a0, 1336
80208ffe: aa e8        	sd	a0, 80(sp)
80209000: 0c 08        	addi	a1, sp, 16
80209002: ae ec        	sd	a1, 88(sp)
80209004: aa f0        	sd	a0, 96(sp)

0000000080209006 <.Lpcrel_hi738>:
80209006: 17 25 00 00  	auipc	a0, 2
8020900a: 13 05 a5 ff  	addi	a0, a0, -6
8020900e: 2a ec        	sd	a0, 24(sp)
80209010: 09 45        	li	a0, 2
80209012: 2a f0        	sd	a0, 32(sp)
80209014: 02 fc        	sd	zero, 56(sp)
80209016: ac 00        	addi	a1, sp, 72
80209018: 2e f4        	sd	a1, 40(sp)
8020901a: 2a f8        	sd	a0, 48(sp)
8020901c: 28 08        	addi	a0, sp, 24
8020901e: b2 85        	mv	a1, a2
80209020: 97 f0 ff ff  	auipc	ra, 1048575
80209024: e7 80 20 37  	jalr	882(ra)
80209028: 00 00        	unimp	

000000008020902a <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
8020902a: 2a 86        	mv	a2, a0
8020902c: 13 07 75 00  	addi	a4, a0, 7
80209030: 61 9b        	andi	a4, a4, -8
80209032: b3 02 a7 40  	sub	t0, a4, a0
80209036: 63 e7 55 00  	bltu	a1, t0, 0x80209044 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
8020903a: 33 88 55 40  	sub	a6, a1, t0
8020903e: a1 46        	li	a3, 8
80209040: 63 7f d8 00  	bgeu	a6, a3, 0x8020905e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
80209044: 01 45        	li	a0, 0
80209046: 99 c9        	beqz	a1, 0x8020905c <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80209048: 83 06 06 00  	lb	a3, 0(a2)
8020904c: 05 06        	addi	a2, a2, 1
8020904e: 93 a6 06 fc  	slti	a3, a3, -64
80209052: 93 c6 16 00  	xori	a3, a3, 1
80209056: fd 15        	addi	a1, a1, -1
80209058: 36 95        	add	a0, a0, a3
8020905a: fd f5        	bnez	a1, 0x80209048 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
8020905c: 82 80        	ret
8020905e: 93 76 78 00  	andi	a3, a6, 7
80209062: 81 45        	li	a1, 0
80209064: 63 0f c7 00  	beq	a4, a2, 0x80209082 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
80209068: 33 07 e6 40  	sub	a4, a2, a4
8020906c: b2 87        	mv	a5, a2
8020906e: 03 85 07 00  	lb	a0, 0(a5)
80209072: 85 07        	addi	a5, a5, 1
80209074: 13 25 05 fc  	slti	a0, a0, -64
80209078: 13 45 15 00  	xori	a0, a0, 1
8020907c: 05 07        	addi	a4, a4, 1
8020907e: aa 95        	add	a1, a1, a0
80209080: 7d f7        	bnez	a4, 0x8020906e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
80209082: b2 92        	add	t0, t0, a2
80209084: 01 46        	li	a2, 0
80209086: 91 ce        	beqz	a3, 0x802090a2 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
80209088: 13 77 88 ff  	andi	a4, a6, -8
8020908c: 16 97        	add	a4, a4, t0
8020908e: 03 05 07 00  	lb	a0, 0(a4)
80209092: 05 07        	addi	a4, a4, 1
80209094: 13 25 05 fc  	slti	a0, a0, -64
80209098: 13 45 15 00  	xori	a0, a0, 1
8020909c: fd 16        	addi	a3, a3, -1
8020909e: 2a 96        	add	a2, a2, a0
802090a0: fd f6        	bnez	a3, 0x8020908e <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
802090a2: 13 57 38 00  	srli	a4, a6, 3

00000000802090a6 <.Lpcrel_hi762>:
802090a6: 17 35 00 00  	auipc	a0, 3
802090aa: 03 3f 25 26  	ld	t5, 610(a0)

00000000802090ae <.Lpcrel_hi763>:
802090ae: 17 35 00 00  	auipc	a0, 3
802090b2: 83 38 25 26  	ld	a7, 610(a0)
802090b6: 37 15 00 10  	lui	a0, 65537
802090ba: 12 05        	slli	a0, a0, 4
802090bc: 05 05        	addi	a0, a0, 1
802090be: 42 05        	slli	a0, a0, 16
802090c0: 13 08 15 00  	addi	a6, a0, 1
802090c4: 33 05 b6 00  	add	a0, a2, a1
802090c8: 1d a0        	j	0x802090ee <.Lpcrel_hi763+0x40>
802090ca: 93 12 3e 00  	slli	t0, t3, 3
802090ce: 9a 92        	add	t0, t0, t1
802090d0: 33 87 c3 41  	sub	a4, t2, t3
802090d4: 13 76 3e 00  	andi	a2, t3, 3
802090d8: b3 f6 15 01  	and	a3, a1, a7
802090dc: a1 81        	srli	a1, a1, 8
802090de: b3 f5 15 01  	and	a1, a1, a7
802090e2: b6 95        	add	a1, a1, a3
802090e4: b3 85 05 03  	mul	a1, a1, a6
802090e8: c1 91        	srli	a1, a1, 48
802090ea: 2e 95        	add	a0, a0, a1
802090ec: 35 ee        	bnez	a2, 0x80209168 <.Lpcrel_hi763+0xba>
802090ee: 3d d7        	beqz	a4, 0x8020905c <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
802090f0: ba 83        	mv	t2, a4
802090f2: 16 83        	mv	t1, t0
802090f4: 93 05 00 0c  	li	a1, 192
802090f8: 3a 8e        	mv	t3, a4
802090fa: 63 64 b7 00  	bltu	a4, a1, 0x80209102 <.Lpcrel_hi763+0x54>
802090fe: 13 0e 00 0c  	li	t3, 192
80209102: 93 75 ce 0f  	andi	a1, t3, 252
80209106: 93 97 35 00  	slli	a5, a1, 3
8020910a: b3 0e f3 00  	add	t4, t1, a5
8020910e: d5 dd        	beqz	a1, 0x802090ca <.Lpcrel_hi763+0x1c>
80209110: 81 45        	li	a1, 0
80209112: 1a 86        	mv	a2, t1
80209114: 5d da        	beqz	a2, 0x802090ca <.Lpcrel_hi763+0x1c>
80209116: 18 62        	ld	a4, 0(a2)
80209118: 93 47 f7 ff  	not	a5, a4
8020911c: 9d 83        	srli	a5, a5, 7
8020911e: 19 83        	srli	a4, a4, 6
80209120: 14 66        	ld	a3, 8(a2)
80209122: 5d 8f        	or	a4, a4, a5
80209124: 33 77 e7 01  	and	a4, a4, t5
80209128: ba 95        	add	a1, a1, a4
8020912a: 13 c7 f6 ff  	not	a4, a3
8020912e: 1d 83        	srli	a4, a4, 7
80209130: 1c 6a        	ld	a5, 16(a2)
80209132: 99 82        	srli	a3, a3, 6
80209134: d9 8e        	or	a3, a3, a4
80209136: b3 f6 e6 01  	and	a3, a3, t5
8020913a: 13 c7 f7 ff  	not	a4, a5
8020913e: 1d 83        	srli	a4, a4, 7
80209140: 99 83        	srli	a5, a5, 6
80209142: 5d 8f        	or	a4, a4, a5
80209144: 1c 6e        	ld	a5, 24(a2)
80209146: 33 77 e7 01  	and	a4, a4, t5
8020914a: ba 96        	add	a3, a3, a4
8020914c: b6 95        	add	a1, a1, a3
8020914e: 93 c6 f7 ff  	not	a3, a5
80209152: 9d 82        	srli	a3, a3, 7
80209154: 99 83        	srli	a5, a5, 6
80209156: dd 8e        	or	a3, a3, a5
80209158: b3 f6 e6 01  	and	a3, a3, t5
8020915c: 13 06 06 02  	addi	a2, a2, 32
80209160: b6 95        	add	a1, a1, a3
80209162: e3 19 d6 fb  	bne	a2, t4, 0x80209114 <.Lpcrel_hi763+0x66>
80209166: 95 b7        	j	0x802090ca <.Lpcrel_hi763+0x1c>
80209168: 63 0a 03 02  	beqz	t1, 0x8020919c <.Lpcrel_hi763+0xee>
8020916c: 93 05 00 0c  	li	a1, 192
80209170: 63 e4 b3 00  	bltu	t2, a1, 0x80209178 <.Lpcrel_hi763+0xca>
80209174: 93 03 00 0c  	li	t2, 192
80209178: 81 45        	li	a1, 0
8020917a: 13 f6 33 00  	andi	a2, t2, 3
8020917e: 0e 06        	slli	a2, a2, 3
80209180: 83 b6 0e 00  	ld	a3, 0(t4)
80209184: a1 0e        	addi	t4, t4, 8
80209186: 13 c7 f6 ff  	not	a4, a3
8020918a: 1d 83        	srli	a4, a4, 7
8020918c: 99 82        	srli	a3, a3, 6
8020918e: d9 8e        	or	a3, a3, a4
80209190: b3 f6 e6 01  	and	a3, a3, t5
80209194: 61 16        	addi	a2, a2, -8
80209196: b6 95        	add	a1, a1, a3
80209198: 65 f6        	bnez	a2, 0x80209180 <.Lpcrel_hi763+0xd2>
8020919a: 11 a0        	j	0x8020919e <.Lpcrel_hi763+0xf0>
8020919c: 81 45        	li	a1, 0
8020919e: 33 f6 15 01  	and	a2, a1, a7
802091a2: a1 81        	srli	a1, a1, 8
802091a4: b3 f5 15 01  	and	a1, a1, a7
802091a8: b2 95        	add	a1, a1, a2
802091aa: b3 85 05 03  	mul	a1, a1, a6
802091ae: c1 91        	srli	a1, a1, 48
802091b0: 2e 95        	add	a0, a0, a1
802091b2: 82 80        	ret

00000000802091b4 <_ZN69_$LT$core..num..nonzero..NonZeroUsize$u20$as$u20$core..fmt..Debug$GT$3fmt17hd14b7b131e7caa18E>:
802091b4: 41 11        	addi	sp, sp, -16
802091b6: 06 e4        	sd	ra, 8(sp)
802091b8: 08 61        	ld	a0, 0(a0)
802091ba: 2a e0        	sd	a0, 0(sp)
802091bc: 0a 85        	mv	a0, sp
802091be: 97 00 00 00  	auipc	ra, 0
802091c2: e7 80 60 10  	jalr	262(ra)
802091c6: a2 60        	ld	ra, 8(sp)
802091c8: 41 01        	addi	sp, sp, 16
802091ca: 82 80        	ret

00000000802091cc <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE>:
802091cc: 75 71        	addi	sp, sp, -144
802091ce: 06 e5        	sd	ra, 136(sp)
802091d0: 2e 88        	mv	a6, a1
802091d2: 83 e5 45 03  	lwu	a1, 52(a1)
802091d6: 13 f6 05 01  	andi	a2, a1, 16
802091da: 11 ee        	bnez	a2, 0x802091f6 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x2a>
802091dc: 93 f5 05 02  	andi	a1, a1, 32
802091e0: b5 e1        	bnez	a1, 0x80209244 <.Lpcrel_hi1452+0xa>
802091e2: 03 65 05 00  	lwu	a0, 0(a0)
802091e6: 85 45        	li	a1, 1
802091e8: 42 86        	mv	a2, a6
802091ea: aa 60        	ld	ra, 136(sp)
802091ec: 49 61        	addi	sp, sp, 144
802091ee: 17 03 00 00  	auipc	t1, 0
802091f2: 67 00 c3 1c  	jr	460(t1)
802091f6: 81 47        	li	a5, 0
802091f8: 14 41        	lw	a3, 0(a0)
802091fa: 30 01        	addi	a2, sp, 136
802091fc: a9 48        	li	a7, 10
802091fe: bd 42        	li	t0, 15
80209200: 21 a8        	j	0x80209218 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x4c>
80209202: 13 07 f6 ff  	addi	a4, a2, -1
80209206: 9b 56 45 00  	srliw	a3, a0, 4
8020920a: 9a 95        	add	a1, a1, t1
8020920c: a3 0f b6 fe  	sb	a1, -1(a2)
80209210: 85 07        	addi	a5, a5, 1
80209212: 3a 86        	mv	a2, a4
80209214: 63 fc a2 00  	bgeu	t0, a0, 0x8020922c <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x60>
80209218: 36 85        	mv	a0, a3
8020921a: 93 f5 f6 00  	andi	a1, a3, 15
8020921e: 13 03 00 03  	li	t1, 48
80209222: e3 e0 15 ff  	bltu	a1, a7, 0x80209202 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
80209226: 13 03 70 05  	li	t1, 87
8020922a: e1 bf        	j	0x80209202 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
8020922c: 13 05 00 08  	li	a0, 128
80209230: 1d 8d        	sub	a0, a0, a5
80209232: 93 05 10 08  	li	a1, 129
80209236: 63 77 b5 06  	bgeu	a0, a1, 0x802092a4 <.Lpcrel_hi1451>

000000008020923a <.Lpcrel_hi1452>:
8020923a: 17 25 00 00  	auipc	a0, 2
8020923e: 13 06 e5 c8  	addi	a2, a0, -882
80209242: b9 a0        	j	0x80209290 <.Lpcrel_hi1454+0x8>
80209244: 81 47        	li	a5, 0
80209246: 14 41        	lw	a3, 0(a0)
80209248: 30 01        	addi	a2, sp, 136
8020924a: a9 48        	li	a7, 10
8020924c: bd 42        	li	t0, 15
8020924e: 21 a8        	j	0x80209266 <.Lpcrel_hi1452+0x2c>
80209250: 13 07 f6 ff  	addi	a4, a2, -1
80209254: 9b 56 45 00  	srliw	a3, a0, 4
80209258: 9a 95        	add	a1, a1, t1
8020925a: a3 0f b6 fe  	sb	a1, -1(a2)
8020925e: 85 07        	addi	a5, a5, 1
80209260: 3a 86        	mv	a2, a4
80209262: 63 fc a2 00  	bgeu	t0, a0, 0x8020927a <.Lpcrel_hi1452+0x40>
80209266: 36 85        	mv	a0, a3
80209268: 93 f5 f6 00  	andi	a1, a3, 15
8020926c: 13 03 00 03  	li	t1, 48
80209270: e3 e0 15 ff  	bltu	a1, a7, 0x80209250 <.Lpcrel_hi1452+0x16>
80209274: 13 03 70 03  	li	t1, 55
80209278: e1 bf        	j	0x80209250 <.Lpcrel_hi1452+0x16>
8020927a: 13 05 00 08  	li	a0, 128
8020927e: 1d 8d        	sub	a0, a0, a5
80209280: 93 05 10 08  	li	a1, 129
80209284: 63 75 b5 02  	bgeu	a0, a1, 0x802092ae <.Lpcrel_hi1453>

0000000080209288 <.Lpcrel_hi1454>:
80209288: 17 25 00 00  	auipc	a0, 2
8020928c: 13 06 05 c4  	addi	a2, a0, -960
80209290: 85 45        	li	a1, 1
80209292: 89 46        	li	a3, 2
80209294: 42 85        	mv	a0, a6
80209296: 97 00 00 00  	auipc	ra, 0
8020929a: e7 80 60 89  	jalr	-1898(ra)
8020929e: aa 60        	ld	ra, 136(sp)
802092a0: 49 61        	addi	sp, sp, 144
802092a2: 82 80        	ret

00000000802092a4 <.Lpcrel_hi1451>:
802092a4: 97 25 00 00  	auipc	a1, 2
802092a8: 13 86 c5 c0  	addi	a2, a1, -1012
802092ac: 29 a0        	j	0x802092b6 <.Lpcrel_hi1453+0x8>

00000000802092ae <.Lpcrel_hi1453>:
802092ae: 97 25 00 00  	auipc	a1, 2
802092b2: 13 86 25 c0  	addi	a2, a1, -1022
802092b6: 93 05 00 08  	li	a1, 128
802092ba: 97 00 00 00  	auipc	ra, 0
802092be: e7 80 00 d3  	jalr	-720(ra)
802092c2: 00 00        	unimp	

00000000802092c4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E>:
802092c4: 75 71        	addi	sp, sp, -144
802092c6: 06 e5        	sd	ra, 136(sp)
802092c8: 2e 88        	mv	a6, a1
802092ca: 83 e5 45 03  	lwu	a1, 52(a1)
802092ce: 13 f6 05 01  	andi	a2, a1, 16
802092d2: 09 ee        	bnez	a2, 0x802092ec <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x28>
802092d4: 93 f5 05 02  	andi	a1, a1, 32
802092d8: ad e1        	bnez	a1, 0x8020933a <.Lpcrel_hi1456+0xa>
802092da: 08 61        	ld	a0, 0(a0)
802092dc: 85 45        	li	a1, 1
802092de: 42 86        	mv	a2, a6
802092e0: aa 60        	ld	ra, 136(sp)
802092e2: 49 61        	addi	sp, sp, 144
802092e4: 17 03 00 00  	auipc	t1, 0
802092e8: 67 00 63 0d  	jr	214(t1)
802092ec: 81 47        	li	a5, 0
802092ee: 14 61        	ld	a3, 0(a0)
802092f0: 30 01        	addi	a2, sp, 136
802092f2: a9 48        	li	a7, 10
802092f4: bd 42        	li	t0, 15
802092f6: 21 a8        	j	0x8020930e <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x4a>
802092f8: 13 07 f6 ff  	addi	a4, a2, -1
802092fc: 93 56 45 00  	srli	a3, a0, 4
80209300: 9a 95        	add	a1, a1, t1
80209302: a3 0f b6 fe  	sb	a1, -1(a2)
80209306: 85 07        	addi	a5, a5, 1
80209308: 3a 86        	mv	a2, a4
8020930a: 63 fc a2 00  	bgeu	t0, a0, 0x80209322 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x5e>
8020930e: 36 85        	mv	a0, a3
80209310: 93 f5 f6 00  	andi	a1, a3, 15
80209314: 13 03 00 03  	li	t1, 48
80209318: e3 e0 15 ff  	bltu	a1, a7, 0x802092f8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
8020931c: 13 03 70 05  	li	t1, 87
80209320: e1 bf        	j	0x802092f8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
80209322: 13 05 00 08  	li	a0, 128
80209326: 1d 8d        	sub	a0, a0, a5
80209328: 93 05 10 08  	li	a1, 129
8020932c: 63 77 b5 06  	bgeu	a0, a1, 0x8020939a <.Lpcrel_hi1455>

0000000080209330 <.Lpcrel_hi1456>:
80209330: 17 25 00 00  	auipc	a0, 2
80209334: 13 06 85 b9  	addi	a2, a0, -1128
80209338: b9 a0        	j	0x80209386 <.Lpcrel_hi1458+0x8>
8020933a: 81 47        	li	a5, 0
8020933c: 14 61        	ld	a3, 0(a0)
8020933e: 30 01        	addi	a2, sp, 136
80209340: a9 48        	li	a7, 10
80209342: bd 42        	li	t0, 15
80209344: 21 a8        	j	0x8020935c <.Lpcrel_hi1456+0x2c>
80209346: 13 07 f6 ff  	addi	a4, a2, -1
8020934a: 93 56 45 00  	srli	a3, a0, 4
8020934e: 9a 95        	add	a1, a1, t1
80209350: a3 0f b6 fe  	sb	a1, -1(a2)
80209354: 85 07        	addi	a5, a5, 1
80209356: 3a 86        	mv	a2, a4
80209358: 63 fc a2 00  	bgeu	t0, a0, 0x80209370 <.Lpcrel_hi1456+0x40>
8020935c: 36 85        	mv	a0, a3
8020935e: 93 f5 f6 00  	andi	a1, a3, 15
80209362: 13 03 00 03  	li	t1, 48
80209366: e3 e0 15 ff  	bltu	a1, a7, 0x80209346 <.Lpcrel_hi1456+0x16>
8020936a: 13 03 70 03  	li	t1, 55
8020936e: e1 bf        	j	0x80209346 <.Lpcrel_hi1456+0x16>
80209370: 13 05 00 08  	li	a0, 128
80209374: 1d 8d        	sub	a0, a0, a5
80209376: 93 05 10 08  	li	a1, 129
8020937a: 63 75 b5 02  	bgeu	a0, a1, 0x802093a4 <.Lpcrel_hi1457>

000000008020937e <.Lpcrel_hi1458>:
8020937e: 17 25 00 00  	auipc	a0, 2
80209382: 13 06 a5 b4  	addi	a2, a0, -1206
80209386: 85 45        	li	a1, 1
80209388: 89 46        	li	a3, 2
8020938a: 42 85        	mv	a0, a6
8020938c: 97 f0 ff ff  	auipc	ra, 1048575
80209390: e7 80 00 7a  	jalr	1952(ra)
80209394: aa 60        	ld	ra, 136(sp)
80209396: 49 61        	addi	sp, sp, 144
80209398: 82 80        	ret

000000008020939a <.Lpcrel_hi1455>:
8020939a: 97 25 00 00  	auipc	a1, 2
8020939e: 13 86 65 b1  	addi	a2, a1, -1258
802093a2: 29 a0        	j	0x802093ac <.Lpcrel_hi1457+0x8>

00000000802093a4 <.Lpcrel_hi1457>:
802093a4: 97 25 00 00  	auipc	a1, 2
802093a8: 13 86 c5 b0  	addi	a2, a1, -1268
802093ac: 93 05 00 08  	li	a1, 128
802093b0: 97 00 00 00  	auipc	ra, 0
802093b4: e7 80 a0 c3  	jalr	-966(ra)
802093b8: 00 00        	unimp	

00000000802093ba <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
802093ba: 39 71        	addi	sp, sp, -64
802093bc: 06 fc        	sd	ra, 56(sp)
802093be: 22 f8        	sd	s0, 48(sp)
802093c0: 26 f4        	sd	s1, 40(sp)
802093c2: 32 88        	mv	a6, a2
802093c4: 93 56 45 00  	srli	a3, a0, 4
802093c8: 13 07 70 02  	li	a4, 39
802093cc: 93 07 10 27  	li	a5, 625

00000000802093d0 <.Lpcrel_hi1459>:
802093d0: 17 26 00 00  	auipc	a2, 2
802093d4: 93 0e a6 af  	addi	t4, a2, -1286
802093d8: 63 f3 f6 02  	bgeu	a3, a5, 0x802093fe <.Lpcrel_hi1459+0x2e>
802093dc: 93 06 30 06  	li	a3, 99
802093e0: 63 ea a6 0a  	bltu	a3, a0, 0x80209494 <.Lpcrel_hi1460+0x8c>
802093e4: 29 46        	li	a2, 10
802093e6: 63 78 c5 0e  	bgeu	a0, a2, 0x802094d6 <.Lpcrel_hi1460+0xce>
802093ea: 93 06 f7 ff  	addi	a3, a4, -1
802093ee: 13 06 11 00  	addi	a2, sp, 1
802093f2: 36 96        	add	a2, a2, a3
802093f4: 1b 05 05 03  	addiw	a0, a0, 48
802093f8: 23 00 a6 00  	sb	a0, 0(a2)
802093fc: e5 a8        	j	0x802094f4 <.Lpcrel_hi1460+0xec>
802093fe: 01 47        	li	a4, 0
80209400: 93 08 41 02  	addi	a7, sp, 36
80209404: 93 02 61 02  	addi	t0, sp, 38

0000000080209408 <.Lpcrel_hi1460>:
80209408: 97 36 00 00  	auipc	a3, 3
8020940c: 03 b3 86 fb  	ld	t1, -72(a3)
80209410: 89 66        	lui	a3, 2
80209412: 1b 8e 06 71  	addiw	t3, a3, 1808
80209416: 85 66        	lui	a3, 1
80209418: 1b 8f b6 47  	addiw	t5, a3, 1147
8020941c: 93 03 40 06  	li	t2, 100
80209420: b7 e6 f5 05  	lui	a3, 24414
80209424: 9b 8f f6 0f  	addiw	t6, a3, 255
80209428: aa 86        	mv	a3, a0
8020942a: 33 35 65 02  	mulhu	a0, a0, t1
8020942e: 2d 81        	srli	a0, a0, 11
80209430: bb 07 c5 03  	mulw	a5, a0, t3
80209434: 3b 86 f6 40  	subw	a2, a3, a5
80209438: 93 17 06 03  	slli	a5, a2, 48
8020943c: c9 93        	srli	a5, a5, 50
8020943e: b3 87 e7 03  	mul	a5, a5, t5
80209442: 13 d4 17 01  	srli	s0, a5, 17
80209446: c1 83        	srli	a5, a5, 16
80209448: 93 f7 e7 7f  	andi	a5, a5, 2046
8020944c: 3b 04 74 02  	mulw	s0, s0, t2
80209450: 01 9e        	subw	a2, a2, s0
80209452: 46 16        	slli	a2, a2, 49
80209454: f6 97        	add	a5, a5, t4
80209456: 03 c4 17 00  	lbu	s0, 1(a5)
8020945a: 41 92        	srli	a2, a2, 48
8020945c: b3 84 e8 00  	add	s1, a7, a4
80209460: 83 c7 07 00  	lbu	a5, 0(a5)
80209464: a3 80 84 00  	sb	s0, 1(s1)
80209468: 76 96        	add	a2, a2, t4
8020946a: 03 44 16 00  	lbu	s0, 1(a2)
8020946e: 03 46 06 00  	lbu	a2, 0(a2)
80209472: 23 80 f4 00  	sb	a5, 0(s1)
80209476: b3 87 e2 00  	add	a5, t0, a4
8020947a: a3 80 87 00  	sb	s0, 1(a5)
8020947e: 23 80 c7 00  	sb	a2, 0(a5)
80209482: 71 17        	addi	a4, a4, -4
80209484: e3 e2 df fa  	bltu	t6, a3, 0x80209428 <.Lpcrel_hi1460+0x20>
80209488: 13 07 77 02  	addi	a4, a4, 39
8020948c: 93 06 30 06  	li	a3, 99
80209490: e3 fa a6 f4  	bgeu	a3, a0, 0x802093e4 <.Lpcrel_hi1459+0x14>
80209494: 13 16 05 03  	slli	a2, a0, 48
80209498: 49 92        	srli	a2, a2, 50
8020949a: 85 66        	lui	a3, 1
8020949c: 9b 86 b6 47  	addiw	a3, a3, 1147
802094a0: 33 06 d6 02  	mul	a2, a2, a3
802094a4: 45 82        	srli	a2, a2, 17
802094a6: 93 06 40 06  	li	a3, 100
802094aa: bb 06 d6 02  	mulw	a3, a2, a3
802094ae: 15 9d        	subw	a0, a0, a3
802094b0: 46 15        	slli	a0, a0, 49
802094b2: 41 91        	srli	a0, a0, 48
802094b4: 79 17        	addi	a4, a4, -2
802094b6: 76 95        	add	a0, a0, t4
802094b8: 83 46 15 00  	lbu	a3, 1(a0)
802094bc: 03 45 05 00  	lbu	a0, 0(a0)
802094c0: 93 07 11 00  	addi	a5, sp, 1
802094c4: ba 97        	add	a5, a5, a4
802094c6: a3 80 d7 00  	sb	a3, 1(a5)
802094ca: 23 80 a7 00  	sb	a0, 0(a5)
802094ce: 32 85        	mv	a0, a2
802094d0: 29 46        	li	a2, 10
802094d2: e3 6c c5 f0  	bltu	a0, a2, 0x802093ea <.Lpcrel_hi1459+0x1a>
802094d6: 06 05        	slli	a0, a0, 1
802094d8: 93 06 e7 ff  	addi	a3, a4, -2
802094dc: 76 95        	add	a0, a0, t4
802094de: 03 46 15 00  	lbu	a2, 1(a0)
802094e2: 03 45 05 00  	lbu	a0, 0(a0)
802094e6: 13 07 11 00  	addi	a4, sp, 1
802094ea: 36 97        	add	a4, a4, a3
802094ec: a3 00 c7 00  	sb	a2, 1(a4)
802094f0: 23 00 a7 00  	sb	a0, 0(a4)
802094f4: 13 07 11 00  	addi	a4, sp, 1
802094f8: 36 97        	add	a4, a4, a3
802094fa: 93 07 70 02  	li	a5, 39
802094fe: 95 8f        	sub	a5, a5, a3

0000000080209500 <.Lpcrel_hi1461>:
80209500: 17 25 00 00  	auipc	a0, 2
80209504: 13 06 05 89  	addi	a2, a0, -1904
80209508: 42 85        	mv	a0, a6
8020950a: 81 46        	li	a3, 0
8020950c: 97 f0 ff ff  	auipc	ra, 1048575
80209510: e7 80 00 62  	jalr	1568(ra)
80209514: e2 70        	ld	ra, 56(sp)
80209516: 42 74        	ld	s0, 48(sp)
80209518: a2 74        	ld	s1, 40(sp)
8020951a: 21 61        	addi	sp, sp, 64
8020951c: 82 80        	ret

000000008020951e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
8020951e: 03 65 05 00  	lwu	a0, 0(a0)
80209522: 2e 86        	mv	a2, a1
80209524: 85 45        	li	a1, 1
80209526: 17 03 00 00  	auipc	t1, 0
8020952a: 67 00 43 e9  	jr	-364(t1)

000000008020952e <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
8020952e: 08 61        	ld	a0, 0(a0)
80209530: 2e 86        	mv	a2, a1
80209532: 85 45        	li	a1, 1
80209534: 17 03 00 00  	auipc	t1, 0
80209538: 67 00 63 e8  	jr	-378(t1)

000000008020953c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
8020953c: 90 75        	ld	a2, 40(a1)
8020953e: 88 71        	ld	a0, 32(a1)
80209540: 1c 6e        	ld	a5, 24(a2)

0000000080209542 <.Lpcrel_hi1484>:
80209542: 97 25 00 00  	auipc	a1, 2
80209546: 93 85 e5 af  	addi	a1, a1, -1282
8020954a: 15 46        	li	a2, 5
8020954c: 82 87        	jr	a5

000000008020954e <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4023022547a67dd4E>:
8020954e: 59 71        	addi	sp, sp, -112
80209550: 86 f4        	sd	ra, 104(sp)
80209552: 08 61        	ld	a0, 0(a0)
80209554: 08 61        	ld	a0, 0(a0)

0000000080209556 <.Lpcrel_hi1557>:
80209556: 17 36 00 00  	auipc	a2, 3
8020955a: 03 36 a6 ec  	ld	a2, -310(a2)
8020955e: b3 06 a0 40  	neg	a3, a0
80209562: e9 8e        	and	a3, a3, a0
80209564: 33 86 c6 02  	mul	a2, a3, a2
80209568: 69 92        	srli	a2, a2, 58

000000008020956a <.Lpcrel_hi1558>:
8020956a: 97 16 00 00  	auipc	a3, 1
8020956e: 93 86 66 7e  	addi	a3, a3, 2022
80209572: 36 96        	add	a2, a2, a3
80209574: 03 46 06 00  	lbu	a2, 0(a2)
80209578: 2a f4        	sd	a0, 40(sp)
8020957a: 32 da        	sw	a2, 52(sp)
8020957c: 28 10        	addi	a0, sp, 40
8020957e: 2a e4        	sd	a0, 8(sp)

0000000080209580 <.Lpcrel_hi1559>:
80209580: 17 05 00 00  	auipc	a0, 0
80209584: 13 05 45 c3  	addi	a0, a0, -972
80209588: 2a e8        	sd	a0, 16(sp)
8020958a: 48 18        	addi	a0, sp, 52
8020958c: 2a ec        	sd	a0, 24(sp)

000000008020958e <.Lpcrel_hi1560>:
8020958e: 17 05 00 00  	auipc	a0, 0
80209592: 13 05 e5 c3  	addi	a0, a0, -962
80209596: 2a f0        	sd	a0, 32(sp)
80209598: 88 71        	ld	a0, 32(a1)
8020959a: 8c 75        	ld	a1, 40(a1)

000000008020959c <.Lpcrel_hi1561>:
8020959c: 17 16 00 00  	auipc	a2, 1
802095a0: 13 06 c6 7f  	addi	a2, a2, 2044
802095a4: 32 fc        	sd	a2, 56(sp)
802095a6: 0d 46        	li	a2, 3
802095a8: b2 e0        	sd	a2, 64(sp)
802095aa: 30 00        	addi	a2, sp, 8
802095ac: b2 e4        	sd	a2, 72(sp)
802095ae: 09 46        	li	a2, 2
802095b0: b2 e8        	sd	a2, 80(sp)
802095b2: 82 ec        	sd	zero, 88(sp)
802095b4: 30 18        	addi	a2, sp, 56
802095b6: 97 f0 ff ff  	auipc	ra, 1048575
802095ba: e7 80 80 3f  	jalr	1016(ra)
802095be: a6 70        	ld	ra, 104(sp)
802095c0: 65 61        	addi	sp, sp, 112
802095c2: 82 80        	ret

00000000802095c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
802095c4: 10 65        	ld	a2, 8(a0)
802095c6: 08 61        	ld	a0, 0(a0)
802095c8: 1c 6e        	ld	a5, 24(a2)
802095ca: 82 87        	jr	a5

00000000802095cc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
802095cc: 14 61        	ld	a3, 0(a0)
802095ce: 10 65        	ld	a2, 8(a0)
802095d0: 2e 85        	mv	a0, a1
802095d2: b6 85        	mv	a1, a3
802095d4: 17 f3 ff ff  	auipc	t1, 1048575
802095d8: 67 00 63 7c  	jr	1990(t1)

00000000802095dc <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf5c1f95bf09f2d92E>:
802095dc: 79 71        	addi	sp, sp, -48
802095de: 06 f4        	sd	ra, 40(sp)
802095e0: 22 f0        	sd	s0, 32(sp)
802095e2: 26 ec        	sd	s1, 24(sp)
802095e4: 2e 84        	mv	s0, a1
802095e6: 8c 75        	ld	a1, 40(a1)
802095e8: 2a e0        	sd	a0, 0(sp)
802095ea: 14 70        	ld	a3, 32(s0)
802095ec: 98 6d        	ld	a4, 24(a1)
802095ee: 93 04 85 00  	addi	s1, a0, 8

00000000802095f2 <.Lpcrel_hi1968>:
802095f2: 17 25 00 00  	auipc	a0, 2
802095f6: 93 05 35 a5  	addi	a1, a0, -1453
802095fa: 19 46        	li	a2, 6
802095fc: 36 85        	mv	a0, a3
802095fe: 02 97        	jalr	a4
80209600: 22 e4        	sd	s0, 8(sp)
80209602: 23 08 a1 00  	sb	a0, 16(sp)
80209606: a3 08 01 00  	sb	zero, 17(sp)

000000008020960a <.Lpcrel_hi1969>:
8020960a: 17 15 00 00  	auipc	a0, 1
8020960e: 93 05 95 ac  	addi	a1, a0, -1335

0000000080209612 <.Lpcrel_hi1970>:
80209612: 17 25 00 00  	auipc	a0, 2
80209616: 13 07 e5 a0  	addi	a4, a0, -1522
8020961a: 28 00        	addi	a0, sp, 8
8020961c: 11 46        	li	a2, 4
8020961e: a6 86        	mv	a3, s1
80209620: 97 f0 ff ff  	auipc	ra, 1048575
80209624: e7 80 c0 01  	jalr	28(ra)

0000000080209628 <.Lpcrel_hi1971>:
80209628: 17 25 00 00  	auipc	a0, 2
8020962c: 93 05 35 a2  	addi	a1, a0, -1501

0000000080209630 <.Lpcrel_hi1972>:
80209630: 17 25 00 00  	auipc	a0, 2
80209634: 13 07 05 a2  	addi	a4, a0, -1504
80209638: 28 00        	addi	a0, sp, 8
8020963a: 15 46        	li	a2, 5
8020963c: 8a 86        	mv	a3, sp
8020963e: 97 f0 ff ff  	auipc	ra, 1048575
80209642: e7 80 e0 ff  	jalr	-2(ra)
80209646: 03 45 11 01  	lbu	a0, 17(sp)
8020964a: 83 45 01 01  	lbu	a1, 16(sp)
8020964e: 0d c1        	beqz	a0, 0x80209670 <.Lpcrel_hi1973+0xc>
80209650: 05 45        	li	a0, 1
80209652: 9d e9        	bnez	a1, 0x80209688 <.Lpcrel_hi1974+0xc>
80209654: 22 65        	ld	a0, 8(sp)
80209656: 83 45 45 03  	lbu	a1, 52(a0)
8020965a: 91 89        	andi	a1, a1, 4
8020965c: 89 ed        	bnez	a1, 0x80209676 <.Lpcrel_hi1973+0x12>
8020965e: 0c 75        	ld	a1, 40(a0)
80209660: 08 71        	ld	a0, 32(a0)
80209662: 94 6d        	ld	a3, 24(a1)

0000000080209664 <.Lpcrel_hi1973>:
80209664: 97 25 00 00  	auipc	a1, 2
80209668: 93 85 f5 82  	addi	a1, a1, -2001
8020966c: 09 46        	li	a2, 2
8020966e: 21 a8        	j	0x80209686 <.Lpcrel_hi1974+0xa>
80209670: 33 35 b0 00  	snez	a0, a1
80209674: 11 a8        	j	0x80209688 <.Lpcrel_hi1974+0xc>
80209676: 0c 75        	ld	a1, 40(a0)
80209678: 08 71        	ld	a0, 32(a0)
8020967a: 94 6d        	ld	a3, 24(a1)

000000008020967c <.Lpcrel_hi1974>:
8020967c: 97 25 00 00  	auipc	a1, 2
80209680: 93 85 65 81  	addi	a1, a1, -2026
80209684: 05 46        	li	a2, 1
80209686: 82 96        	jalr	a3
80209688: a2 70        	ld	ra, 40(sp)
8020968a: 02 74        	ld	s0, 32(sp)
8020968c: e2 64        	ld	s1, 24(sp)
8020968e: 45 61        	addi	sp, sp, 48
80209690: 82 80        	ret

0000000080209692 <memset>:
80209692: 17 03 00 00  	auipc	t1, 0
80209696: 67 00 c3 0b  	jr	188(t1)

000000008020969a <memcpy>:
8020969a: 17 03 00 00  	auipc	t1, 0
8020969e: 67 00 83 00  	jr	8(t1)

00000000802096a2 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
802096a2: bd 46        	li	a3, 15
802096a4: 63 f9 c6 06  	bgeu	a3, a2, 0x80209716 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
802096a8: bb 06 a0 40  	negw	a3, a0
802096ac: 13 f8 76 00  	andi	a6, a3, 7
802096b0: b3 03 05 01  	add	t2, a0, a6
802096b4: 63 0c 08 00  	beqz	a6, 0x802096cc <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
802096b8: aa 87        	mv	a5, a0
802096ba: ae 86        	mv	a3, a1
802096bc: 03 87 06 00  	lb	a4, 0(a3)
802096c0: 23 80 e7 00  	sb	a4, 0(a5)
802096c4: 85 07        	addi	a5, a5, 1
802096c6: 85 06        	addi	a3, a3, 1
802096c8: e3 ea 77 fe  	bltu	a5, t2, 0x802096bc <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
802096cc: b3 88 05 01  	add	a7, a1, a6
802096d0: 33 08 06 41  	sub	a6, a2, a6
802096d4: 93 72 88 ff  	andi	t0, a6, -8
802096d8: 13 f3 78 00  	andi	t1, a7, 7
802096dc: b3 86 53 00  	add	a3, t2, t0
802096e0: 63 0e 03 02  	beqz	t1, 0x8020971c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
802096e4: 63 56 50 04  	blez	t0, 0x80209730 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
802096e8: 0e 03        	slli	t1, t1, 3
802096ea: 93 f7 88 ff  	andi	a5, a7, -8
802096ee: 90 63        	ld	a2, 0(a5)
802096f0: bb 05 60 40  	negw	a1, t1
802096f4: 13 fe 85 03  	andi	t3, a1, 56
802096f8: a1 07        	addi	a5, a5, 8
802096fa: 98 63        	ld	a4, 0(a5)
802096fc: 33 56 66 00  	srl	a2, a2, t1
80209700: b3 15 c7 01  	sll	a1, a4, t3
80209704: d1 8d        	or	a1, a1, a2
80209706: 23 b0 b3 00  	sd	a1, 0(t2)
8020970a: a1 03        	addi	t2, t2, 8
8020970c: a1 07        	addi	a5, a5, 8
8020970e: 3a 86        	mv	a2, a4
80209710: e3 e5 d3 fe  	bltu	t2, a3, 0x802096fa <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
80209714: 31 a8        	j	0x80209730 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80209716: aa 86        	mv	a3, a0
80209718: 0d e2        	bnez	a2, 0x8020973a <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
8020971a: 0d a8        	j	0x8020974c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020971c: 63 5a 50 00  	blez	t0, 0x80209730 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80209720: c6 85        	mv	a1, a7
80209722: 90 61        	ld	a2, 0(a1)
80209724: 23 b0 c3 00  	sd	a2, 0(t2)
80209728: a1 03        	addi	t2, t2, 8
8020972a: a1 05        	addi	a1, a1, 8
8020972c: e3 eb d3 fe  	bltu	t2, a3, 0x80209722 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
80209730: b3 85 58 00  	add	a1, a7, t0
80209734: 13 76 78 00  	andi	a2, a6, 7
80209738: 11 ca        	beqz	a2, 0x8020974c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020973a: 36 96        	add	a2, a2, a3
8020973c: 03 87 05 00  	lb	a4, 0(a1)
80209740: 23 80 e6 00  	sb	a4, 0(a3)
80209744: 85 06        	addi	a3, a3, 1
80209746: 85 05        	addi	a1, a1, 1
80209748: e3 ea c6 fe  	bltu	a3, a2, 0x8020973c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
8020974c: 82 80        	ret

000000008020974e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
8020974e: bd 46        	li	a3, 15
80209750: 63 fa c6 04  	bgeu	a3, a2, 0x802097a4 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
80209754: bb 06 a0 40  	negw	a3, a0
80209758: 9d 8a        	andi	a3, a3, 7
8020975a: 33 07 d5 00  	add	a4, a0, a3
8020975e: 99 c6        	beqz	a3, 0x8020976c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
80209760: aa 87        	mv	a5, a0
80209762: 23 80 b7 00  	sb	a1, 0(a5)
80209766: 85 07        	addi	a5, a5, 1
80209768: e3 ed e7 fe  	bltu	a5, a4, 0x80209762 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
8020976c: b3 08 d6 40  	sub	a7, a2, a3
80209770: 93 f7 88 ff  	andi	a5, a7, -8
80209774: b3 06 f7 00  	add	a3, a4, a5
80209778: 63 52 f0 02  	blez	a5, 0x8020979c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
8020977c: 13 98 85 03  	slli	a6, a1, 56
80209780: b7 17 10 10  	lui	a5, 65793
80209784: 92 07        	slli	a5, a5, 4
80209786: 93 87 07 10  	addi	a5, a5, 256
8020978a: 33 36 f8 02  	mulhu	a2, a6, a5
8020978e: 93 17 06 02  	slli	a5, a2, 32
80209792: d1 8f        	or	a5, a5, a2
80209794: 1c e3        	sd	a5, 0(a4)
80209796: 21 07        	addi	a4, a4, 8
80209798: e3 6e d7 fe  	bltu	a4, a3, 0x80209794 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
8020979c: 13 f6 78 00  	andi	a2, a7, 7
802097a0: 01 e6        	bnez	a2, 0x802097a8 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
802097a2: 09 a8        	j	0x802097b4 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
802097a4: aa 86        	mv	a3, a0
802097a6: 19 c6        	beqz	a2, 0x802097b4 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
802097a8: 36 96        	add	a2, a2, a3
802097aa: 23 80 b6 00  	sb	a1, 0(a3)
802097ae: 85 06        	addi	a3, a3, 1
802097b0: e3 ed c6 fe  	bltu	a3, a2, 0x802097aa <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
802097b4: 82 80        	ret
