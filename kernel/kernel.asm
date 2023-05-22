
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 e0 7f  	jalr	2046(ra)
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
80201170: 97 20 00 00  	auipc	ra, 2
80201174: e7 80 80 a4  	jalr	-1464(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E>:
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
8020203e: 63 1b 05 5a  	bnez	a0, 0x802025f4 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x5f4>
80202042: 05 49        	li	s2, 1
80202044: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80202048: 63 16 05 5a  	bnez	a0, 0x802025f4 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x5f4>
8020204c: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
80202050: f5 f9        	bnez	a1, 0x80202044 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x44>
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
8020207a: 97 30 00 00  	auipc	ra, 3
8020207e: e7 80 40 b7  	jalr	-1164(ra)
80202082: 09 65        	lui	a0, 2
80202084: 1b 05 85 1c  	addiw	a0, a0, 456
80202088: 33 05 a4 40  	sub	a0, s0, a0
8020208c: 13 06 10 08  	li	a2, 129
80202090: 81 45        	li	a1, 0
80202092: 97 30 00 00  	auipc	ra, 3
80202096: e7 80 c0 b5  	jalr	-1188(ra)
8020209a: 09 65        	lui	a0, 2
8020209c: 1b 05 05 14  	addiw	a0, a0, 320
802020a0: 33 05 a4 40  	sub	a0, s0, a0
802020a4: 13 06 10 08  	li	a2, 129
802020a8: 81 45        	li	a1, 0
802020aa: 97 30 00 00  	auipc	ra, 3
802020ae: e7 80 40 b4  	jalr	-1212(ra)
802020b2: 09 65        	lui	a0, 2
802020b4: 1b 05 85 0b  	addiw	a0, a0, 184
802020b8: 33 05 a4 40  	sub	a0, s0, a0
802020bc: 13 06 10 08  	li	a2, 129
802020c0: 81 45        	li	a1, 0
802020c2: 97 30 00 00  	auipc	ra, 3
802020c6: e7 80 c0 b2  	jalr	-1236(ra)
802020ca: 09 65        	lui	a0, 2
802020cc: 1b 05 05 03  	addiw	a0, a0, 48
802020d0: 33 05 a4 40  	sub	a0, s0, a0
802020d4: 13 06 10 08  	li	a2, 129
802020d8: 81 45        	li	a1, 0
802020da: 97 30 00 00  	auipc	ra, 3
802020de: e7 80 40 b1  	jalr	-1260(ra)
802020e2: 09 65        	lui	a0, 2
802020e4: 1b 05 85 fa  	addiw	a0, a0, -88
802020e8: 33 05 a4 40  	sub	a0, s0, a0
802020ec: 13 06 10 08  	li	a2, 129
802020f0: 81 45        	li	a1, 0
802020f2: 97 30 00 00  	auipc	ra, 3
802020f6: e7 80 c0 af  	jalr	-1284(ra)
802020fa: 09 65        	lui	a0, 2
802020fc: 1b 05 05 f2  	addiw	a0, a0, -224
80202100: 33 05 a4 40  	sub	a0, s0, a0
80202104: 13 06 10 08  	li	a2, 129
80202108: 81 45        	li	a1, 0
8020210a: 97 30 00 00  	auipc	ra, 3
8020210e: e7 80 40 ae  	jalr	-1308(ra)
80202112: 09 65        	lui	a0, 2
80202114: 1b 05 85 e9  	addiw	a0, a0, -360
80202118: 33 05 a4 40  	sub	a0, s0, a0
8020211c: 13 06 10 08  	li	a2, 129
80202120: 81 45        	li	a1, 0
80202122: 97 30 00 00  	auipc	ra, 3
80202126: e7 80 c0 ac  	jalr	-1332(ra)
8020212a: 09 65        	lui	a0, 2
8020212c: 1b 05 05 e1  	addiw	a0, a0, -496
80202130: 33 05 a4 40  	sub	a0, s0, a0
80202134: 13 06 10 08  	li	a2, 129
80202138: 81 45        	li	a1, 0
8020213a: 97 30 00 00  	auipc	ra, 3
8020213e: e7 80 40 ab  	jalr	-1356(ra)
80202142: 09 65        	lui	a0, 2
80202144: 1b 05 85 d8  	addiw	a0, a0, -632
80202148: 33 05 a4 40  	sub	a0, s0, a0
8020214c: 13 06 10 08  	li	a2, 129
80202150: 81 45        	li	a1, 0
80202152: 97 30 00 00  	auipc	ra, 3
80202156: e7 80 c0 a9  	jalr	-1380(ra)
8020215a: 75 45        	li	a0, 29
8020215c: 22 05        	slli	a0, a0, 8
8020215e: 33 05 a4 40  	sub	a0, s0, a0
80202162: 13 06 10 08  	li	a2, 129
80202166: 81 45        	li	a1, 0
80202168: 97 30 00 00  	auipc	ra, 3
8020216c: e7 80 60 a8  	jalr	-1402(ra)
80202170: 09 65        	lui	a0, 2
80202172: 1b 05 85 c7  	addiw	a0, a0, -904
80202176: 33 05 a4 40  	sub	a0, s0, a0
8020217a: 13 06 10 08  	li	a2, 129
8020217e: 81 45        	li	a1, 0
80202180: 97 30 00 00  	auipc	ra, 3
80202184: e7 80 e0 a6  	jalr	-1426(ra)
80202188: 09 65        	lui	a0, 2
8020218a: 1b 05 05 bf  	addiw	a0, a0, -1040
8020218e: 33 05 a4 40  	sub	a0, s0, a0
80202192: 13 06 10 08  	li	a2, 129
80202196: 81 45        	li	a1, 0
80202198: 97 30 00 00  	auipc	ra, 3
8020219c: e7 80 60 a5  	jalr	-1450(ra)
802021a0: 09 65        	lui	a0, 2
802021a2: 1b 05 85 b6  	addiw	a0, a0, -1176
802021a6: 33 05 a4 40  	sub	a0, s0, a0
802021aa: 13 06 10 08  	li	a2, 129
802021ae: 81 45        	li	a1, 0
802021b0: 97 30 00 00  	auipc	ra, 3
802021b4: e7 80 e0 a3  	jalr	-1474(ra)
802021b8: 09 65        	lui	a0, 2
802021ba: 1b 05 05 ae  	addiw	a0, a0, -1312
802021be: 33 05 a4 40  	sub	a0, s0, a0
802021c2: 13 06 10 08  	li	a2, 129
802021c6: 81 45        	li	a1, 0
802021c8: 97 30 00 00  	auipc	ra, 3
802021cc: e7 80 60 a2  	jalr	-1498(ra)
802021d0: 09 65        	lui	a0, 2
802021d2: 1b 05 85 a5  	addiw	a0, a0, -1448
802021d6: 33 05 a4 40  	sub	a0, s0, a0
802021da: 13 06 10 08  	li	a2, 129
802021de: 81 45        	li	a1, 0
802021e0: 97 30 00 00  	auipc	ra, 3
802021e4: e7 80 e0 a0  	jalr	-1522(ra)
802021e8: 93 8a f9 7f  	addi	s5, s3, 2047
802021ec: 13 85 1a 08  	addi	a0, s5, 129
802021f0: 13 06 10 08  	li	a2, 129
802021f4: 81 45        	li	a1, 0
802021f6: 97 30 00 00  	auipc	ra, 3
802021fa: e7 80 80 9f  	jalr	-1544(ra)
802021fe: 13 85 9a 10  	addi	a0, s5, 265
80202202: 13 06 10 08  	li	a2, 129
80202206: 81 45        	li	a1, 0
80202208: 97 30 00 00  	auipc	ra, 3
8020220c: e7 80 60 9e  	jalr	-1562(ra)
80202210: 13 85 1a 19  	addi	a0, s5, 401
80202214: 13 06 10 08  	li	a2, 129
80202218: 81 45        	li	a1, 0
8020221a: 97 30 00 00  	auipc	ra, 3
8020221e: e7 80 40 9d  	jalr	-1580(ra)
80202222: 13 85 9a 21  	addi	a0, s5, 537
80202226: 13 06 10 08  	li	a2, 129
8020222a: 81 45        	li	a1, 0
8020222c: 97 30 00 00  	auipc	ra, 3
80202230: e7 80 20 9c  	jalr	-1598(ra)
80202234: 13 85 1a 2a  	addi	a0, s5, 673
80202238: 13 06 10 08  	li	a2, 129
8020223c: 81 45        	li	a1, 0
8020223e: 97 30 00 00  	auipc	ra, 3
80202242: e7 80 00 9b  	jalr	-1616(ra)
80202246: 13 85 9a 32  	addi	a0, s5, 809
8020224a: 13 06 10 08  	li	a2, 129
8020224e: 81 45        	li	a1, 0
80202250: 97 30 00 00  	auipc	ra, 3
80202254: e7 80 e0 99  	jalr	-1634(ra)
80202258: 13 85 1a 3b  	addi	a0, s5, 945
8020225c: 13 06 10 08  	li	a2, 129
80202260: 81 45        	li	a1, 0
80202262: 97 30 00 00  	auipc	ra, 3
80202266: e7 80 c0 98  	jalr	-1652(ra)
8020226a: 13 85 9a 43  	addi	a0, s5, 1081
8020226e: 13 06 10 08  	li	a2, 129
80202272: 81 45        	li	a1, 0
80202274: 97 30 00 00  	auipc	ra, 3
80202278: e7 80 a0 97  	jalr	-1670(ra)
8020227c: 13 85 1a 4c  	addi	a0, s5, 1217
80202280: 13 06 10 08  	li	a2, 129
80202284: 81 45        	li	a1, 0
80202286: 97 30 00 00  	auipc	ra, 3
8020228a: e7 80 80 96  	jalr	-1688(ra)
8020228e: 13 85 9a 54  	addi	a0, s5, 1353
80202292: 13 06 10 08  	li	a2, 129
80202296: 81 45        	li	a1, 0
80202298: 97 30 00 00  	auipc	ra, 3
8020229c: e7 80 60 95  	jalr	-1706(ra)
802022a0: 13 85 1a 5d  	addi	a0, s5, 1489
802022a4: 13 06 10 08  	li	a2, 129
802022a8: 81 45        	li	a1, 0
802022aa: 97 30 00 00  	auipc	ra, 3
802022ae: e7 80 40 94  	jalr	-1724(ra)
802022b2: 13 85 9a 65  	addi	a0, s5, 1625
802022b6: 13 06 10 08  	li	a2, 129
802022ba: 81 45        	li	a1, 0
802022bc: 97 30 00 00  	auipc	ra, 3
802022c0: e7 80 20 93  	jalr	-1742(ra)
802022c4: 13 85 1a 6e  	addi	a0, s5, 1761
802022c8: 13 06 10 08  	li	a2, 129
802022cc: 81 45        	li	a1, 0
802022ce: 97 30 00 00  	auipc	ra, 3
802022d2: e7 80 00 92  	jalr	-1760(ra)
802022d6: 13 85 9a 76  	addi	a0, s5, 1897
802022da: 13 06 10 08  	li	a2, 129
802022de: 81 45        	li	a1, 0
802022e0: 97 30 00 00  	auipc	ra, 3
802022e4: e7 80 e0 90  	jalr	-1778(ra)
802022e8: 13 85 1a 7f  	addi	a0, s5, 2033
802022ec: 13 06 10 08  	li	a2, 129
802022f0: 81 45        	li	a1, 0
802022f2: 97 30 00 00  	auipc	ra, 3
802022f6: e7 80 c0 8f  	jalr	-1796(ra)
802022fa: 05 6b        	lui	s6, 1
802022fc: 1b 05 8b 07  	addiw	a0, s6, 120
80202300: 4e 95        	add	a0, a0, s3
80202302: 13 06 10 08  	li	a2, 129
80202306: 81 45        	li	a1, 0
80202308: 97 30 00 00  	auipc	ra, 3
8020230c: e7 80 60 8e  	jalr	-1818(ra)
80202310: c5 4a        	li	s5, 17
80202312: 13 95 8a 00  	slli	a0, s5, 8
80202316: 4e 95        	add	a0, a0, s3
80202318: 13 06 10 08  	li	a2, 129
8020231c: 81 45        	li	a1, 0
8020231e: 97 30 00 00  	auipc	ra, 3
80202322: e7 80 00 8d  	jalr	-1840(ra)
80202326: 1b 05 8b 18  	addiw	a0, s6, 392
8020232a: 4e 95        	add	a0, a0, s3
8020232c: 13 06 10 08  	li	a2, 129
80202330: 81 45        	li	a1, 0
80202332: 97 30 00 00  	auipc	ra, 3
80202336: e7 80 c0 8b  	jalr	-1860(ra)
8020233a: 1b 05 0b 21  	addiw	a0, s6, 528
8020233e: 4e 95        	add	a0, a0, s3
80202340: 13 06 10 08  	li	a2, 129
80202344: 81 45        	li	a1, 0
80202346: 97 30 00 00  	auipc	ra, 3
8020234a: e7 80 80 8a  	jalr	-1880(ra)
8020234e: 1b 05 8b 29  	addiw	a0, s6, 664
80202352: 4e 95        	add	a0, a0, s3
80202354: 13 06 10 08  	li	a2, 129
80202358: 81 45        	li	a1, 0
8020235a: 97 30 00 00  	auipc	ra, 3
8020235e: e7 80 40 89  	jalr	-1900(ra)
80202362: 1b 05 0b 32  	addiw	a0, s6, 800
80202366: 4e 95        	add	a0, a0, s3
80202368: 13 06 10 08  	li	a2, 129
8020236c: 81 45        	li	a1, 0
8020236e: 97 30 00 00  	auipc	ra, 3
80202372: e7 80 00 88  	jalr	-1920(ra)
80202376: 1b 05 8b 3a  	addiw	a0, s6, 936
8020237a: 4e 95        	add	a0, a0, s3
8020237c: 13 06 10 08  	li	a2, 129
80202380: 81 45        	li	a1, 0
80202382: 97 30 00 00  	auipc	ra, 3
80202386: e7 80 c0 86  	jalr	-1940(ra)
8020238a: 1b 05 0b 43  	addiw	a0, s6, 1072
8020238e: 4e 95        	add	a0, a0, s3
80202390: 13 06 10 08  	li	a2, 129
80202394: 81 45        	li	a1, 0
80202396: 97 30 00 00  	auipc	ra, 3
8020239a: e7 80 80 85  	jalr	-1960(ra)
8020239e: 1b 05 8b 4b  	addiw	a0, s6, 1208
802023a2: 4e 95        	add	a0, a0, s3
802023a4: 13 06 10 08  	li	a2, 129
802023a8: 81 45        	li	a1, 0
802023aa: 97 30 00 00  	auipc	ra, 3
802023ae: e7 80 40 84  	jalr	-1980(ra)
802023b2: 1b 05 0b 54  	addiw	a0, s6, 1344
802023b6: 4e 95        	add	a0, a0, s3
802023b8: 13 06 10 08  	li	a2, 129
802023bc: 81 45        	li	a1, 0
802023be: 97 30 00 00  	auipc	ra, 3
802023c2: e7 80 00 83  	jalr	-2000(ra)
802023c6: 1b 05 8b 5c  	addiw	a0, s6, 1480
802023ca: 4e 95        	add	a0, a0, s3
802023cc: 13 06 10 08  	li	a2, 129
802023d0: 81 45        	li	a1, 0
802023d2: 97 30 00 00  	auipc	ra, 3
802023d6: e7 80 c0 81  	jalr	-2020(ra)
802023da: 1b 05 0b 65  	addiw	a0, s6, 1616
802023de: 4e 95        	add	a0, a0, s3
802023e0: 13 06 10 08  	li	a2, 129
802023e4: 81 45        	li	a1, 0
802023e6: 97 30 00 00  	auipc	ra, 3
802023ea: e7 80 80 80  	jalr	-2040(ra)
802023ee: 1b 05 8b 6d  	addiw	a0, s6, 1752
802023f2: 4e 95        	add	a0, a0, s3
802023f4: 13 06 10 08  	li	a2, 129
802023f8: 81 45        	li	a1, 0
802023fa: 97 20 00 00  	auipc	ra, 2
802023fe: e7 80 40 7f  	jalr	2036(ra)
80202402: 1b 05 0b 76  	addiw	a0, s6, 1888
80202406: 4e 95        	add	a0, a0, s3
80202408: 13 06 10 08  	li	a2, 129
8020240c: 81 45        	li	a1, 0
8020240e: 97 20 00 00  	auipc	ra, 2
80202412: e7 80 00 7e  	jalr	2016(ra)
80202416: 1b 05 8b 7e  	addiw	a0, s6, 2024
8020241a: 4e 95        	add	a0, a0, s3
8020241c: 13 06 10 08  	li	a2, 129
80202420: 81 45        	li	a1, 0
80202422: 97 20 00 00  	auipc	ra, 2
80202426: e7 80 c0 7c  	jalr	1996(ra)
8020242a: 09 6b        	lui	s6, 2
8020242c: 1b 05 0b 87  	addiw	a0, s6, -1936
80202430: 4e 95        	add	a0, a0, s3
80202432: 13 06 10 08  	li	a2, 129
80202436: 81 45        	li	a1, 0
80202438: 97 20 00 00  	auipc	ra, 2
8020243c: e7 80 60 7b  	jalr	1974(ra)
80202440: 1b 05 8b 8f  	addiw	a0, s6, -1800
80202444: 4e 95        	add	a0, a0, s3
80202446: 13 06 10 08  	li	a2, 129
8020244a: 81 45        	li	a1, 0
8020244c: 97 20 00 00  	auipc	ra, 2
80202450: e7 80 20 7a  	jalr	1954(ra)
80202454: 1b 05 0b 98  	addiw	a0, s6, -1664
80202458: 4e 95        	add	a0, a0, s3
8020245a: 13 06 10 08  	li	a2, 129
8020245e: 81 45        	li	a1, 0
80202460: 97 20 00 00  	auipc	ra, 2
80202464: e7 80 e0 78  	jalr	1934(ra)
80202468: 1b 05 8b a0  	addiw	a0, s6, -1528
8020246c: 4e 95        	add	a0, a0, s3
8020246e: 13 06 10 08  	li	a2, 129
80202472: 81 45        	li	a1, 0
80202474: 97 20 00 00  	auipc	ra, 2
80202478: e7 80 a0 77  	jalr	1914(ra)
8020247c: 1b 05 0b a9  	addiw	a0, s6, -1392
80202480: 4e 95        	add	a0, a0, s3
80202482: 13 06 10 08  	li	a2, 129
80202486: 81 45        	li	a1, 0
80202488: 97 20 00 00  	auipc	ra, 2
8020248c: e7 80 60 76  	jalr	1894(ra)
80202490: 1b 05 8b b1  	addiw	a0, s6, -1256
80202494: 4e 95        	add	a0, a0, s3
80202496: 13 06 10 08  	li	a2, 129
8020249a: 81 45        	li	a1, 0
8020249c: 97 20 00 00  	auipc	ra, 2
802024a0: e7 80 20 75  	jalr	1874(ra)
802024a4: 1b 05 0b ba  	addiw	a0, s6, -1120
802024a8: 4e 95        	add	a0, a0, s3
802024aa: 13 06 10 08  	li	a2, 129
802024ae: 81 45        	li	a1, 0
802024b0: 97 20 00 00  	auipc	ra, 2
802024b4: e7 80 e0 73  	jalr	1854(ra)
802024b8: 1b 05 8b c2  	addiw	a0, s6, -984
802024bc: 4e 95        	add	a0, a0, s3
802024be: 13 06 10 08  	li	a2, 129
802024c2: 81 45        	li	a1, 0
802024c4: 97 20 00 00  	auipc	ra, 2
802024c8: e7 80 a0 72  	jalr	1834(ra)
802024cc: 1b 05 0b cb  	addiw	a0, s6, -848
802024d0: 4e 95        	add	a0, a0, s3
802024d2: 13 06 10 08  	li	a2, 129
802024d6: 81 45        	li	a1, 0
802024d8: 97 20 00 00  	auipc	ra, 2
802024dc: e7 80 60 71  	jalr	1814(ra)
802024e0: 1b 05 8b d3  	addiw	a0, s6, -712
802024e4: 4e 95        	add	a0, a0, s3
802024e6: 13 06 10 08  	li	a2, 129
802024ea: 81 45        	li	a1, 0
802024ec: 97 20 00 00  	auipc	ra, 2
802024f0: e7 80 20 70  	jalr	1794(ra)
802024f4: 1b 05 0b dc  	addiw	a0, s6, -576
802024f8: 4e 95        	add	a0, a0, s3
802024fa: 13 06 10 08  	li	a2, 129
802024fe: 81 45        	li	a1, 0
80202500: 97 20 00 00  	auipc	ra, 2
80202504: e7 80 e0 6e  	jalr	1774(ra)
80202508: 1b 05 8b e4  	addiw	a0, s6, -440
8020250c: 4e 95        	add	a0, a0, s3
8020250e: 13 06 10 08  	li	a2, 129
80202512: 81 45        	li	a1, 0
80202514: 97 20 00 00  	auipc	ra, 2
80202518: e7 80 a0 6d  	jalr	1754(ra)
8020251c: 1b 05 0b ed  	addiw	a0, s6, -304
80202520: 4e 95        	add	a0, a0, s3
80202522: 13 06 10 08  	li	a2, 129
80202526: 81 45        	li	a1, 0
80202528: 97 20 00 00  	auipc	ra, 2
8020252c: e7 80 60 6c  	jalr	1734(ra)
80202530: 1b 05 8b f5  	addiw	a0, s6, -168
80202534: 4e 95        	add	a0, a0, s3
80202536: 13 06 10 08  	li	a2, 129
8020253a: 81 45        	li	a1, 0
8020253c: 97 20 00 00  	auipc	ra, 2
80202540: e7 80 20 6b  	jalr	1714(ra)
80202544: 1b 05 0b fe  	addiw	a0, s6, -32
80202548: 4e 95        	add	a0, a0, s3
8020254a: 13 06 10 08  	li	a2, 129
8020254e: 81 45        	li	a1, 0
80202550: 97 20 00 00  	auipc	ra, 2
80202554: e7 80 e0 69  	jalr	1694(ra)
80202558: 1b 05 8b 06  	addiw	a0, s6, 104
8020255c: 4e 95        	add	a0, a0, s3
8020255e: 13 06 10 08  	li	a2, 129
80202562: 81 45        	li	a1, 0
80202564: 97 20 00 00  	auipc	ra, 2
80202568: e7 80 a0 68  	jalr	1674(ra)
8020256c: 1b 05 0b 0f  	addiw	a0, s6, 240
80202570: 4e 95        	add	a0, a0, s3
80202572: 13 06 10 08  	li	a2, 129
80202576: 81 45        	li	a1, 0
80202578: 97 20 00 00  	auipc	ra, 2
8020257c: e7 80 60 67  	jalr	1654(ra)
80202580: 1b 05 8b 17  	addiw	a0, s6, 376
80202584: 4e 95        	add	a0, a0, s3
80202586: 13 06 10 08  	li	a2, 129
8020258a: 81 45        	li	a1, 0
8020258c: 97 20 00 00  	auipc	ra, 2
80202590: e7 80 20 66  	jalr	1634(ra)
80202594: 93 99 9a 00  	slli	s3, s5, 9
80202598: 11 65        	lui	a0, 4
8020259a: 1b 05 05 45  	addiw	a0, a0, 1104
8020259e: 33 05 a4 40  	sub	a0, s0, a0
802025a2: 89 65        	lui	a1, 2
802025a4: 9b 85 05 25  	addiw	a1, a1, 592
802025a8: b3 05 b4 40  	sub	a1, s0, a1
802025ac: 4e 86        	mv	a2, s3
802025ae: 97 20 00 00  	auipc	ra, 2
802025b2: e7 80 80 64  	jalr	1608(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802025b6: 23 b4 24 01  	sd	s2, 8(s1)
802025ba: 13 89 04 01  	addi	s2, s1, 16
802025be: 11 65        	lui	a0, 4
802025c0: 1b 05 05 45  	addiw	a0, a0, 1104
802025c4: b3 05 a4 40  	sub	a1, s0, a0
802025c8: 4a 85        	mv	a0, s2
802025ca: 4e 86        	mv	a2, s3
802025cc: 97 20 00 00  	auipc	ra, 2
802025d0: e7 80 a0 62  	jalr	1578(ra)
;                 finish.panicked = false;
802025d4: 23 04 0a 00  	sb	zero, 8(s4)
802025d8: 0f 00 10 03  	fence	rw, w
802025dc: 09 45        	li	a0, 2
802025de: 88 e0        	sd	a0, 0(s1)
802025e0: 11 65        	lui	a0, 4
802025e2: 1b 05 05 46  	addiw	a0, a0, 1120
802025e6: 33 05 a4 40  	sub	a0, s0, a0
802025ea: 97 20 00 00  	auipc	ra, 2
802025ee: e7 80 a0 98  	jalr	-1654(ra)
802025f2: 15 a0        	j	0x80202616 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x616>
802025f4: 85 45        	li	a1, 1
;             match status {
802025f6: 63 1b b5 00  	bne	a0, a1, 0x8020260c <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x60c>
802025fa: 0f 00 00 01  	fence	w, 0
802025fe: 0f 00 30 03  	fence	rw, rw
80202602: 88 60        	ld	a0, 0(s1)
80202604: 0f 00 30 02  	fence	r, rw
;             match status {
80202608: e3 09 b5 fe  	beq	a0, a1, 0x802025fa <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x5fa>
8020260c: 89 45        	li	a1, 2
;             match status {
8020260e: 63 1c b5 02  	bne	a0, a1, 0x80202646 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2f02deb64ade8c39E+0x646>
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
80202648: 17 35 00 00  	auipc	a0, 3
8020264c: 13 05 05 a4  	addi	a0, a0, -1472

0000000080202650 <.Lpcrel_hi1>:
80202650: 97 35 00 00  	auipc	a1, 3
80202654: 13 86 05 a6  	addi	a2, a1, -1440
80202658: 93 05 80 02  	li	a1, 40
8020265c: 97 20 00 00  	auipc	ra, 2
80202660: e7 80 60 b5  	jalr	-1194(ra)
80202664: 00 00        	unimp	

0000000080202666 <.Lpcrel_hi2>:
;                 PANICKED => panic!("Once has panicked"),
80202666: 17 35 00 00  	auipc	a0, 3
8020266a: 13 05 a5 99  	addi	a0, a0, -1638

000000008020266e <.Lpcrel_hi3>:
8020266e: 97 35 00 00  	auipc	a1, 3
80202672: 13 86 25 a0  	addi	a2, a1, -1534
80202676: c5 45        	li	a1, 17
80202678: 97 20 00 00  	auipc	ra, 2
8020267c: e7 80 a0 b3  	jalr	-1222(ra)
80202680: 00 00        	unimp	

0000000080202682 <_ZN4spin4once13Once$LT$T$GT$9call_once17h74f976eb3eacc5b3E>:
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
802026c8: 65 ed        	bnez	a0, 0x802027c0 <.Lpcrel_hi13+0xc2>
802026ca: 85 49        	li	s3, 1
802026cc: 2f b5 0a 16  	lr.d.aqrl	a0, (s5)
802026d0: 65 e9        	bnez	a0, 0x802027c0 <.Lpcrel_hi13+0xc2>
802026d2: af b5 3a 1f  	sc.d.aqrl	a1, s3, (s5)
802026d6: fd f9        	bnez	a1, 0x802026cc <_ZN4spin4once13Once$LT$T$GT$9call_once17h74f976eb3eacc5b3E+0x4a>
802026d8: 31 65        	lui	a0, 12
802026da: 1b 05 05 c7  	addiw	a0, a0, -912
802026de: 33 0a a4 40  	sub	s4, s0, a0
;                 let mut finish = Finish { state: &self.state, panicked: true };
802026e2: 23 30 5a 01  	sd	s5, 0(s4)
802026e6: 31 65        	lui	a0, 12
802026e8: 1b 05 95 c5  	addiw	a0, a0, -935
802026ec: 33 09 a4 40  	sub	s2, s0, a0
802026f0: 13 0b 00 04  	li	s6, 64
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
802026f4: 19 65        	lui	a0, 6
802026f6: 1b 05 05 d0  	addiw	a0, a0, -768
802026fa: b3 04 a4 40  	sub	s1, s0, a0

00000000802026fe <.Lpcrel_hi13>:
802026fe: 17 35 00 00  	auipc	a0, 3
80202702: 93 0b a5 e3  	addi	s7, a0, -454
80202706: 11 4c        	li	s8, 4
;         Self {
80202708: 13 06 80 0b  	li	a2, 184
8020270c: 4a 85        	mv	a0, s2
8020270e: 81 45        	li	a1, 0
80202710: 97 20 00 00  	auipc	ra, 2
80202714: e7 80 e0 4d  	jalr	1246(ra)
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202718: 13 85 04 ea  	addi	a0, s1, -352
8020271c: 13 06 00 08  	li	a2, 128
80202720: 81 45        	li	a1, 0
80202722: 97 20 00 00  	auipc	ra, 2
80202726: e7 80 c0 4c  	jalr	1228(ra)
8020272a: 23 b0 74 f3  	sd	s7, -224(s1)
8020272e: 23 b4 84 f3  	sd	s8, -216(s1)
80202732: 23 b8 04 f2  	sd	zero, -208(s1)
80202736: 23 8c 04 f2  	sb	zero, -200(s1)
8020273a: 13 85 94 f3  	addi	a0, s1, -199
8020273e: b1 65        	lui	a1, 12
80202740: 9b 85 05 c6  	addiw	a1, a1, -928
80202744: b3 05 b4 40  	sub	a1, s0, a1
80202748: 13 06 f0 0b  	li	a2, 191
8020274c: 97 20 00 00  	auipc	ra, 2
80202750: e7 80 a0 4a  	jalr	1194(ra)
80202754: 23 bc 34 ff  	sd	s3, -8(s1)
80202758: 23 b0 04 00  	sd	zero, 0(s1)
8020275c: 23 b4 04 00  	sd	zero, 8(s1)
80202760: 23 98 04 00  	sh	zero, 16(s1)
80202764: 7d 1b        	addi	s6, s6, -1
80202766: 93 84 84 17  	addi	s1, s1, 376
8020276a: e3 1f 0b f8  	bnez	s6, 0x80202708 <.Lpcrel_hi13+0xa>
8020276e: 19 65        	lui	a0, 6
80202770: 1b 09 05 e0  	addiw	s2, a0, -512
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202774: 31 65        	lui	a0, 12
80202776: 1b 05 05 c6  	addiw	a0, a0, -928
8020277a: 33 05 a4 40  	sub	a0, s0, a0
8020277e: 99 65        	lui	a1, 6
80202780: 9b 85 05 e6  	addiw	a1, a1, -416
80202784: b3 05 b4 40  	sub	a1, s0, a1
80202788: 4a 86        	mv	a2, s2
8020278a: 97 20 00 00  	auipc	ra, 2
8020278e: e7 80 c0 46  	jalr	1132(ra)
80202792: 03 b5 8a 00  	ld	a0, 8(s5)
80202796: 59 c1        	beqz	a0, 0x8020281c <.Lpcrel_hi13+0x11e>
80202798: 93 84 0a 17  	addi	s1, s5, 368
8020279c: 93 09 00 04  	li	s3, 64
802027a0: 31 a0        	j	0x802027ac <.Lpcrel_hi13+0xae>
802027a2: fd 19        	addi	s3, s3, -1
802027a4: 93 84 84 17  	addi	s1, s1, 376
802027a8: 63 8a 09 06  	beqz	s3, 0x8020281c <.Lpcrel_hi13+0x11e>
802027ac: 8c 60        	ld	a1, 0(s1)
802027ae: f5 d9        	beqz	a1, 0x802027a2 <.Lpcrel_hi13+0xa4>
802027b0: 03 b5 84 ff  	ld	a0, -8(s1)
802027b4: 05 46        	li	a2, 1
802027b6: 97 10 00 00  	auipc	ra, 1
802027ba: e7 80 60 7b  	jalr	1974(ra)
802027be: d5 b7        	j	0x802027a2 <.Lpcrel_hi13+0xa4>
802027c0: 85 45        	li	a1, 1
;             match status {
802027c2: 63 1c b5 00  	bne	a0, a1, 0x802027da <.Lpcrel_hi13+0xdc>
802027c6: 0f 00 00 01  	fence	w, 0
802027ca: 0f 00 30 03  	fence	rw, rw
802027ce: 03 b5 0a 00  	ld	a0, 0(s5)
802027d2: 0f 00 30 02  	fence	r, rw
;             match status {
802027d6: e3 08 b5 fe  	beq	a0, a1, 0x802027c6 <.Lpcrel_hi13+0xc8>
802027da: 89 45        	li	a1, 2
;             match status {
802027dc: 63 11 b5 08  	bne	a0, a1, 0x8020285e <.Lpcrel_hi13+0x160>
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
80202834: 97 20 00 00  	auipc	ra, 2
80202838: e7 80 20 3c  	jalr	962(ra)
;                 finish.panicked = false;
8020283c: 23 04 0a 00  	sb	zero, 8(s4)
80202840: 0f 00 10 03  	fence	rw, w
80202844: 09 45        	li	a0, 2
80202846: 23 b0 aa 00  	sd	a0, 0(s5)
8020284a: 31 65        	lui	a0, 12
8020284c: 1b 05 05 c7  	addiw	a0, a0, -912
80202850: 33 05 a4 40  	sub	a0, s0, a0
80202854: 97 10 00 00  	auipc	ra, 1
80202858: e7 80 00 72  	jalr	1824(ra)
8020285c: 61 b7        	j	0x802027e4 <.Lpcrel_hi13+0xe6>
;             match status {
8020285e: 05 e1        	bnez	a0, 0x8020287e <.Lpcrel_hi16>

0000000080202860 <.Lpcrel_hi14>:
;                 INCOMPLETE => unreachable!(),
80202860: 17 35 00 00  	auipc	a0, 3
80202864: 13 05 85 82  	addi	a0, a0, -2008

0000000080202868 <.Lpcrel_hi15>:
80202868: 97 35 00 00  	auipc	a1, 3
8020286c: 13 86 85 84  	addi	a2, a1, -1976
80202870: 93 05 80 02  	li	a1, 40
80202874: 97 20 00 00  	auipc	ra, 2
80202878: e7 80 e0 93  	jalr	-1730(ra)
8020287c: 00 00        	unimp	

000000008020287e <.Lpcrel_hi16>:
;                 PANICKED => panic!("Once has panicked"),
8020287e: 17 25 00 00  	auipc	a0, 2
80202882: 13 05 25 78  	addi	a0, a0, 1922

0000000080202886 <.Lpcrel_hi17>:
80202886: 97 25 00 00  	auipc	a1, 2
8020288a: 13 86 a5 7e  	addi	a2, a1, 2026
8020288e: c5 45        	li	a1, 17
80202890: 97 20 00 00  	auipc	ra, 2
80202894: e7 80 20 92  	jalr	-1758(ra)
80202898: 00 00        	unimp	

000000008020289a <_ZN6kernel4lock8spinlock8Spinlock7acquire17h6879e5810c4fe9a4E>:
;     pub fn acquire(&mut self) {
8020289a: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020289c: 86 ec        	sd	ra, 88(sp)
8020289e: a2 e8        	sd	s0, 80(sp)
802028a0: a6 e4        	sd	s1, 72(sp)
802028a2: ca e0        	sd	s2, 64(sp)
802028a4: 4e fc        	sd	s3, 56(sp)
802028a6: 52 f8        	sd	s4, 48(sp)
802028a8: 80 10        	addi	s0, sp, 96
802028aa: f3 29 00 10  	csrr	s3, sstatus
802028ae: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802028b0: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802028b4: 92 84        	mv	s1, tp
802028b6: 2a 89        	mv	s2, a0

00000000802028b8 <.Lpcrel_hi0>:
;         self.0.call_once(builder)
802028b8: 17 55 01 00  	auipc	a0, 21
802028bc: 13 05 05 87  	addi	a0, a0, -1936
802028c0: 97 f0 ff ff  	auipc	ra, 1048575
802028c4: e7 80 00 74  	jalr	1856(ra)
802028c8: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802028cc: 63 ff b4 0a  	bgeu	s1, a1, 0x8020298a <.Lpcrel_hi1>
802028d0: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
802028d4: 33 86 b4 02  	mul	a2, s1, a1
802028d8: 2a 96        	add	a2, a2, a0
802028da: 2c 7e        	ld	a1, 120(a2)
802028dc: 13 05 86 07  	addi	a0, a2, 120
802028e0: 91 e5        	bnez	a1, 0x802028ec <.Lpcrel_hi0+0x34>
;         mc.intena = old;
802028e2: fa 19        	slli	s3, s3, 62
802028e4: 93 d6 f9 03  	srli	a3, s3, 63
802028e8: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
802028ec: 85 05        	addi	a1, a1, 1
802028ee: 0c e1        	sd	a1, 0(a0)
802028f0: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802028f4: 93 04 89 01  	addi	s1, s2, 24
802028f8: 1d c5        	beqz	a0, 0x80202926 <.Lpcrel_hi2+0x26>
802028fa: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802028fe: 92 89        	mv	s3, tp

0000000080202900 <.Lpcrel_hi2>:
;         self.0.call_once(builder)
80202900: 17 55 01 00  	auipc	a0, 21
80202904: 13 05 85 82  	addi	a0, a0, -2008
80202908: 97 f0 ff ff  	auipc	ra, 1048575
8020290c: e7 80 80 6f  	jalr	1784(ra)
80202910: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202914: 63 fc b9 08  	bgeu	s3, a1, 0x802029ac <.Lpcrel_hi3>
80202918: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
8020291c: b3 85 b9 02  	mul	a1, s3, a1
80202920: 2e 95        	add	a0, a0, a1
;         if self.holding() {
80202922: 63 01 aa 0a  	beq	s4, a0, 0x802029c4 <.Lpcrel_hi4>
80202926: 13 f5 c4 ff  	andi	a0, s1, -4
8020292a: 93 05 f0 0f  	li	a1, 255
8020292e: 05 46        	li	a2, 1
80202930: af 26 05 14  	lr.w.aq	a3, (a0)
80202934: 33 f7 b6 00  	and	a4, a3, a1
80202938: 01 eb        	bnez	a4, 0x80202948 <.Lpcrel_hi2+0x48>
8020293a: 33 c7 c6 00  	xor	a4, a3, a2
8020293e: 6d 8f        	and	a4, a4, a1
80202940: 35 8f        	xor	a4, a4, a3
80202942: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80202946: 6d f7        	bnez	a4, 0x80202930 <.Lpcrel_hi2+0x30>
80202948: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
8020294c: 69 fd        	bnez	a0, 0x80202926 <.Lpcrel_hi2+0x26>
8020294e: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202952: 92 84        	mv	s1, tp

0000000080202954 <.Lpcrel_hi7>:
;         self.0.call_once(builder)
80202954: 17 45 01 00  	auipc	a0, 20
80202958: 13 05 45 7d  	addi	a0, a0, 2004
8020295c: 97 f0 ff ff  	auipc	ra, 1048575
80202960: e7 80 40 6a  	jalr	1700(ra)
80202964: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202968: 63 f6 b4 02  	bgeu	s1, a1, 0x80202994 <.Lpcrel_hi8>
8020296c: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202970: b3 85 b4 02  	mul	a1, s1, a1
80202974: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
80202976: 23 38 a9 00  	sd	a0, 16(s2)
;     }
8020297a: e6 60        	ld	ra, 88(sp)
8020297c: 46 64        	ld	s0, 80(sp)
8020297e: a6 64        	ld	s1, 72(sp)
80202980: 06 69        	ld	s2, 64(sp)
80202982: e2 79        	ld	s3, 56(sp)
80202984: 42 7a        	ld	s4, 48(sp)
80202986: 25 61        	addi	sp, sp, 96
80202988: 82 80        	ret

000000008020298a <.Lpcrel_hi1>:
; 	&mut CPUS.get_mut()[id]
8020298a: 17 35 00 00  	auipc	a0, 3
8020298e: 13 06 65 b9  	addi	a2, a0, -1130
80202992: 29 a0        	j	0x8020299c <.Lpcrel_hi8+0x8>

0000000080202994 <.Lpcrel_hi8>:
80202994: 17 35 00 00  	auipc	a0, 3
80202998: 13 06 c5 b8  	addi	a2, a0, -1140
8020299c: 93 05 00 04  	li	a1, 64
802029a0: 26 85        	mv	a0, s1
802029a2: 97 20 00 00  	auipc	ra, 2
802029a6: e7 80 c0 83  	jalr	-1988(ra)
802029aa: 00 00        	unimp	

00000000802029ac <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
802029ac: 17 35 00 00  	auipc	a0, 3
802029b0: 13 06 45 b7  	addi	a2, a0, -1164
802029b4: 93 05 00 04  	li	a1, 64
802029b8: 4e 85        	mv	a0, s3
802029ba: 97 20 00 00  	auipc	ra, 2
802029be: e7 80 40 82  	jalr	-2012(ra)
802029c2: 00 00        	unimp	

00000000802029c4 <.Lpcrel_hi4>:
802029c4: 17 25 00 00  	auipc	a0, 2
802029c8: 13 05 c5 70  	addi	a0, a0, 1804
802029cc: 23 30 a4 fa  	sd	a0, -96(s0)
802029d0: 05 45        	li	a0, 1
802029d2: 23 34 a4 fa  	sd	a0, -88(s0)
802029d6: 23 30 04 fc  	sd	zero, -64(s0)

00000000802029da <.Lpcrel_hi5>:
802029da: 17 25 00 00  	auipc	a0, 2
802029de: 13 05 e5 6e  	addi	a0, a0, 1774
802029e2: 23 38 a4 fa  	sd	a0, -80(s0)
802029e6: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802029ea <.Lpcrel_hi6>:
;             panic!("acquire");
802029ea: 17 25 00 00  	auipc	a0, 2
802029ee: 93 05 e5 70  	addi	a1, a0, 1806
802029f2: 13 05 04 fa  	addi	a0, s0, -96
802029f6: 97 10 00 00  	auipc	ra, 1
802029fa: e7 80 e0 78  	jalr	1934(ra)
802029fe: 00 00        	unimp	

0000000080202a00 <_ZN6kernel4lock8spinlock8Spinlock7release17hebb772d5e67e18aaE>:
;     pub fn release(&mut self) {
80202a00: 1d 71        	addi	sp, sp, -96
80202a02: 86 ec        	sd	ra, 88(sp)
80202a04: a2 e8        	sd	s0, 80(sp)
80202a06: a6 e4        	sd	s1, 72(sp)
80202a08: ca e0        	sd	s2, 64(sp)
80202a0a: 4e fc        	sd	s3, 56(sp)
80202a0c: 80 10        	addi	s0, sp, 96
80202a0e: aa 84        	mv	s1, a0
80202a10: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202a14: 79 c5        	beqz	a0, 0x80202ae2 <.Lpcrel_hi19>
80202a16: 83 b9 04 01  	ld	s3, 16(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202a1a: 12 89        	mv	s2, tp

0000000080202a1c <.Lpcrel_hi9>:
;         self.0.call_once(builder)
80202a1c: 17 45 01 00  	auipc	a0, 20
80202a20: 13 05 c5 70  	addi	a0, a0, 1804
80202a24: 97 f0 ff ff  	auipc	ra, 1048575
80202a28: e7 80 c0 5d  	jalr	1500(ra)
80202a2c: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202a30: 63 71 b9 08  	bgeu	s2, a1, 0x80202ab2 <.Lpcrel_hi10>
80202a34: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202a38: b3 05 b9 02  	mul	a1, s2, a1
80202a3c: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202a3e: 63 92 a9 0a  	bne	s3, a0, 0x80202ae2 <.Lpcrel_hi19>
;         self.cpu = null_mut();
80202a42: 23 b8 04 00  	sd	zero, 16(s1)
80202a46: 0f 00 30 03  	fence	rw, rw
80202a4a: 0f 00 10 03  	fence	rw, w
80202a4e: 23 8c 04 00  	sb	zero, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202a52: 92 84        	mv	s1, tp

0000000080202a54 <.Lpcrel_hi11>:
;         self.0.call_once(builder)
80202a54: 17 45 01 00  	auipc	a0, 20
80202a58: 13 05 45 6d  	addi	a0, a0, 1748
80202a5c: 97 f0 ff ff  	auipc	ra, 1048575
80202a60: e7 80 40 5a  	jalr	1444(ra)
80202a64: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202a68: 63 f1 b4 06  	bgeu	s1, a1, 0x80202aca <.Lpcrel_hi12>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202a6c: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
80202a70: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
80202a72: c5 e1        	bnez	a1, 0x80202b12 <.Lpcrel_hi13>
80202a74: 93 05 80 08  	li	a1, 136
;     if mc.noff < 1 {
80202a78: 33 86 b4 02  	mul	a2, s1, a1
80202a7c: 2a 96        	add	a2, a2, a0
80202a7e: 2c 7e        	ld	a1, 120(a2)
80202a80: 63 51 b0 0c  	blez	a1, 0x80202b42 <.Lpcrel_hi16>
80202a84: 13 06 86 07  	addi	a2, a2, 120
;     mc.noff -= 1;
80202a88: fd 15        	addi	a1, a1, -1
80202a8a: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
80202a8c: 81 ed        	bnez	a1, 0x80202aa4 <.Lpcrel_hi11+0x50>
80202a8e: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 && mc.intena {
80202a92: b3 85 b4 02  	mul	a1, s1, a1
80202a96: 2e 95        	add	a0, a0, a1
80202a98: 03 45 05 08  	lbu	a0, 128(a0)
80202a9c: 01 c5        	beqz	a0, 0x80202aa4 <.Lpcrel_hi11+0x50>
80202a9e: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80202aa0: 73 20 05 10  	csrs	sstatus, a0
;     }
80202aa4: e6 60        	ld	ra, 88(sp)
80202aa6: 46 64        	ld	s0, 80(sp)
80202aa8: a6 64        	ld	s1, 72(sp)
80202aaa: 06 69        	ld	s2, 64(sp)
80202aac: e2 79        	ld	s3, 56(sp)
80202aae: 25 61        	addi	sp, sp, 96
80202ab0: 82 80        	ret

0000000080202ab2 <.Lpcrel_hi10>:
; 	&mut CPUS.get_mut()[id]
80202ab2: 17 35 00 00  	auipc	a0, 3
80202ab6: 13 06 e5 a6  	addi	a2, a0, -1426
80202aba: 93 05 00 04  	li	a1, 64
80202abe: 4a 85        	mv	a0, s2
80202ac0: 97 10 00 00  	auipc	ra, 1
80202ac4: e7 80 e0 71  	jalr	1822(ra)
80202ac8: 00 00        	unimp	

0000000080202aca <.Lpcrel_hi12>:
80202aca: 17 35 00 00  	auipc	a0, 3
80202ace: 13 06 65 a5  	addi	a2, a0, -1450
80202ad2: 93 05 00 04  	li	a1, 64
80202ad6: 26 85        	mv	a0, s1
80202ad8: 97 10 00 00  	auipc	ra, 1
80202adc: e7 80 60 70  	jalr	1798(ra)
80202ae0: 00 00        	unimp	

0000000080202ae2 <.Lpcrel_hi19>:
80202ae2: 17 25 00 00  	auipc	a0, 2
80202ae6: 13 05 65 63  	addi	a0, a0, 1590
80202aea: 23 34 a4 fa  	sd	a0, -88(s0)
80202aee: 05 45        	li	a0, 1
80202af0: 23 38 a4 fa  	sd	a0, -80(s0)
80202af4: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202af8 <.Lpcrel_hi20>:
80202af8: 17 25 00 00  	auipc	a0, 2
80202afc: 13 05 05 5d  	addi	a0, a0, 1488
80202b00: 23 3c a4 fa  	sd	a0, -72(s0)
80202b04: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202b08 <.Lpcrel_hi21>:
;             panic!("release");
80202b08: 17 25 00 00  	auipc	a0, 2
80202b0c: 93 05 05 62  	addi	a1, a0, 1568
80202b10: 85 a0        	j	0x80202b70 <.Lpcrel_hi18+0x8>

0000000080202b12 <.Lpcrel_hi13>:
80202b12: 17 25 00 00  	auipc	a0, 2
80202b16: 13 05 65 64  	addi	a0, a0, 1606
80202b1a: 23 34 a4 fa  	sd	a0, -88(s0)
80202b1e: 05 45        	li	a0, 1
80202b20: 23 38 a4 fa  	sd	a0, -80(s0)
80202b24: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202b28 <.Lpcrel_hi14>:
80202b28: 17 25 00 00  	auipc	a0, 2
80202b2c: 13 05 05 5a  	addi	a0, a0, 1440
80202b30: 23 3c a4 fa  	sd	a0, -72(s0)
80202b34: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202b38 <.Lpcrel_hi15>:
;         panic!("pop_off - interruptible");
80202b38: 17 25 00 00  	auipc	a0, 2
80202b3c: 93 05 05 63  	addi	a1, a0, 1584
80202b40: 05 a8        	j	0x80202b70 <.Lpcrel_hi18+0x8>

0000000080202b42 <.Lpcrel_hi16>:
80202b42: 17 25 00 00  	auipc	a0, 2
80202b46: 13 05 65 64  	addi	a0, a0, 1606
80202b4a: 23 34 a4 fa  	sd	a0, -88(s0)
80202b4e: 05 45        	li	a0, 1
80202b50: 23 38 a4 fa  	sd	a0, -80(s0)
80202b54: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202b58 <.Lpcrel_hi17>:
80202b58: 17 25 00 00  	auipc	a0, 2
80202b5c: 13 05 05 57  	addi	a0, a0, 1392
80202b60: 23 3c a4 fa  	sd	a0, -72(s0)
80202b64: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202b68 <.Lpcrel_hi18>:
;         panic!("pop_off");
80202b68: 17 25 00 00  	auipc	a0, 2
80202b6c: 93 05 05 63  	addi	a1, a0, 1584
80202b70: 13 05 84 fa  	addi	a0, s0, -88
80202b74: 97 10 00 00  	auipc	ra, 1
80202b78: e7 80 00 61  	jalr	1552(ra)
80202b7c: 00 00        	unimp	

0000000080202b7e <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h30a6860acd8aa9f2E>:
80202b7e: 41 11        	addi	sp, sp, -16
80202b80: 06 e4        	sd	ra, 8(sp)
80202b82: 22 e0        	sd	s0, 0(sp)
80202b84: 00 08        	addi	s0, sp, 16
80202b86: 08 61        	ld	a0, 0(a0)
80202b88: a2 60        	ld	ra, 8(sp)
80202b8a: 02 64        	ld	s0, 0(sp)
80202b8c: 41 01        	addi	sp, sp, 16
80202b8e: 17 13 00 00  	auipc	t1, 1
80202b92: 67 00 c3 6d  	jr	1756(t1)

0000000080202b96 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h52059c8ef346db23E>:
80202b96: 41 11        	addi	sp, sp, -16
80202b98: 06 e4        	sd	ra, 8(sp)
80202b9a: 22 e0        	sd	s0, 0(sp)
80202b9c: 00 08        	addi	s0, sp, 16
80202b9e: 10 61        	ld	a2, 0(a0)
80202ba0: 14 65        	ld	a3, 8(a0)
80202ba2: 2e 87        	mv	a4, a1
80202ba4: 32 85        	mv	a0, a2
80202ba6: b6 85        	mv	a1, a3
80202ba8: 3a 86        	mv	a2, a4
80202baa: a2 60        	ld	ra, 8(sp)
80202bac: 02 64        	ld	s0, 0(sp)
80202bae: 41 01        	addi	sp, sp, 16
80202bb0: 17 23 00 00  	auipc	t1, 2
80202bb4: 67 00 83 cf  	jr	-776(t1)

0000000080202bb8 <usertrapret>:
; pub fn binit() {}
80202bb8: 41 11        	addi	sp, sp, -16
80202bba: 06 e4        	sd	ra, 8(sp)
80202bbc: 22 e0        	sd	s0, 0(sp)
80202bbe: 00 08        	addi	s0, sp, 16
80202bc0: a2 60        	ld	ra, 8(sp)
80202bc2: 02 64        	ld	s0, 0(sp)
80202bc4: 41 01        	addi	sp, sp, 16
80202bc6: 82 80        	ret

0000000080202bc8 <_ZN6kernel4trap12trapinithart17h94706168cc591251E>:
; pub fn trapinithart() {
80202bc8: 5d 71        	addi	sp, sp, -80
80202bca: 86 e4        	sd	ra, 72(sp)
80202bcc: a2 e0        	sd	s0, 64(sp)
80202bce: 80 08        	addi	s0, sp, 80

0000000080202bd0 <.Lpcrel_hi6>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80202bd0: 17 e5 ff ff  	auipc	a0, 1048574
80202bd4: 13 05 05 56  	addi	a0, a0, 1376
80202bd8: 73 10 55 10  	csrw	stvec, a0
80202bdc: 13 05 84 fe  	addi	a0, s0, -24
;     Stdout.write_fmt(args).unwrap();
80202be0: 23 38 a4 fa  	sd	a0, -80(s0)

0000000080202be4 <.Lpcrel_hi7>:
80202be4: 17 25 00 00  	auipc	a0, 2
80202be8: 13 05 c5 60  	addi	a0, a0, 1548
80202bec: 23 3c a4 fa  	sd	a0, -72(s0)
80202bf0: 05 45        	li	a0, 1
80202bf2: 23 30 a4 fc  	sd	a0, -64(s0)

0000000080202bf6 <.Lpcrel_hi8>:
80202bf6: 17 25 00 00  	auipc	a0, 2
80202bfa: 13 05 25 5e  	addi	a0, a0, 1506
80202bfe: 23 34 a4 fc  	sd	a0, -56(s0)
80202c02: 23 38 04 fc  	sd	zero, -48(s0)
80202c06: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202c0a <.Lpcrel_hi9>:
80202c0a: 17 35 00 00  	auipc	a0, 3
80202c0e: 93 05 65 bb  	addi	a1, a0, -1098
80202c12: 13 05 04 fb  	addi	a0, s0, -80
80202c16: 13 06 84 fb  	addi	a2, s0, -72
80202c1a: 97 10 00 00  	auipc	ra, 1
80202c1e: e7 80 20 66  	jalr	1634(ra)
80202c22: 09 e5        	bnez	a0, 0x80202c2c <.Lpcrel_hi10>
; }
80202c24: a6 60        	ld	ra, 72(sp)
80202c26: 06 64        	ld	s0, 64(sp)
80202c28: 61 61        	addi	sp, sp, 80
80202c2a: 82 80        	ret

0000000080202c2c <.Lpcrel_hi10>:
80202c2c: 17 35 00 00  	auipc	a0, 3
80202c30: 13 05 45 bc  	addi	a0, a0, -1084

0000000080202c34 <.Lpcrel_hi11>:
80202c34: 97 35 00 00  	auipc	a1, 3
80202c38: 93 86 c5 be  	addi	a3, a1, -1044

0000000080202c3c <.Lpcrel_hi12>:
80202c3c: 97 35 00 00  	auipc	a1, 3
80202c40: 13 87 45 c1  	addi	a4, a1, -1004
80202c44: 93 05 b0 02  	li	a1, 43
80202c48: 13 06 84 fe  	addi	a2, s0, -24
80202c4c: 97 10 00 00  	auipc	ra, 1
80202c50: e7 80 20 5d  	jalr	1490(ra)
80202c54: 00 00        	unimp	

0000000080202c56 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80202c56: 71 71        	addi	sp, sp, -176
80202c58: 06 f5        	sd	ra, 168(sp)
80202c5a: 22 f1        	sd	s0, 160(sp)
80202c5c: 26 ed        	sd	s1, 152(sp)
80202c5e: 00 19        	addi	s0, sp, 176
80202c60: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80202c62: 97 10 00 00  	auipc	ra, 1
80202c66: e7 80 a0 51  	jalr	1306(ra)
80202c6a: 05 e1        	bnez	a0, 0x80202c8a <.Lpcrel_hi1+0x16>

0000000080202c6c <.Lpcrel_hi0>:
80202c6c: 17 25 00 00  	auipc	a0, 2
80202c70: 13 05 45 61  	addi	a0, a0, 1556

0000000080202c74 <.Lpcrel_hi1>:
80202c74: 97 25 00 00  	auipc	a1, 2
80202c78: 13 86 c5 64  	addi	a2, a1, 1612
80202c7c: 93 05 b0 02  	li	a1, 43
80202c80: 97 10 00 00  	auipc	ra, 1
80202c84: e7 80 20 53  	jalr	1330(ra)
80202c88: 00 00        	unimp	
80202c8a: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80202c8e: 26 85        	mv	a0, s1
80202c90: 97 10 00 00  	auipc	ra, 1
80202c94: e7 80 00 4f  	jalr	1264(ra)
80202c98: 59 e1        	bnez	a0, 0x80202d1e <.Lpcrel_hi15+0x1a>
80202c9a: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80202c9e: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202ca2 <.Lpcrel_hi10>:
80202ca2: 17 05 00 00  	auipc	a0, 0
80202ca6: 13 05 c5 ed  	addi	a0, a0, -292
80202caa: 23 34 a4 f6  	sd	a0, -152(s0)
80202cae: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80202cb2: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080202cb6 <.Lpcrel_hi11>:
80202cb6: 17 25 00 00  	auipc	a0, 2
80202cba: 13 05 a5 55  	addi	a0, a0, 1370
80202cbe: 23 38 a4 fa  	sd	a0, -80(s0)
80202cc2: 09 45        	li	a0, 2
80202cc4: 23 3c a4 fa  	sd	a0, -72(s0)
80202cc8: 13 05 04 f6  	addi	a0, s0, -160
80202ccc: 23 30 a4 fc  	sd	a0, -64(s0)
80202cd0: 05 45        	li	a0, 1
80202cd2: 23 34 a4 fc  	sd	a0, -56(s0)
80202cd6: 23 38 04 fc  	sd	zero, -48(s0)

0000000080202cda <.Lpcrel_hi12>:
80202cda: 17 35 00 00  	auipc	a0, 3
80202cde: 93 05 65 ae  	addi	a1, a0, -1306
80202ce2: 13 05 04 f9  	addi	a0, s0, -112
80202ce6: 13 06 04 fb  	addi	a2, s0, -80
80202cea: 97 10 00 00  	auipc	ra, 1
80202cee: e7 80 20 59  	jalr	1426(ra)
80202cf2: 6d c5        	beqz	a0, 0x80202ddc <.Lpcrel_hi9+0x1a>

0000000080202cf4 <.Lpcrel_hi13>:
80202cf4: 17 35 00 00  	auipc	a0, 3
80202cf8: 13 05 c5 af  	addi	a0, a0, -1284

0000000080202cfc <.Lpcrel_hi14>:
80202cfc: 97 35 00 00  	auipc	a1, 3
80202d00: 93 86 45 b2  	addi	a3, a1, -1244

0000000080202d04 <.Lpcrel_hi15>:
80202d04: 97 35 00 00  	auipc	a1, 3
80202d08: 13 87 c5 b4  	addi	a4, a1, -1204
80202d0c: 93 05 b0 02  	li	a1, 43
80202d10: 13 06 04 fe  	addi	a2, s0, -32
80202d14: 97 10 00 00  	auipc	ra, 1
80202d18: e7 80 a0 50  	jalr	1290(ra)
80202d1c: 00 00        	unimp	
80202d1e: 0c 61        	ld	a1, 0(a0)
80202d20: 10 65        	ld	a2, 8(a0)
80202d22: 23 38 b4 f8  	sd	a1, -112(s0)
80202d26: 23 3c c4 f8  	sd	a2, -104(s0)
80202d2a: 08 49        	lw	a0, 16(a0)
80202d2c: 23 22 a4 fa  	sw	a0, -92(s0)
80202d30: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80202d34: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202d38 <.Lpcrel_hi2>:
80202d38: 17 05 00 00  	auipc	a0, 0
80202d3c: 13 05 e5 e5  	addi	a0, a0, -418
80202d40: 23 34 a4 f6  	sd	a0, -152(s0)
80202d44: 13 05 44 fa  	addi	a0, s0, -92
80202d48: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080202d4c <.Lpcrel_hi3>:
80202d4c: 17 25 00 00  	auipc	a0, 2
80202d50: 13 05 a5 e5  	addi	a0, a0, -422
80202d54: 23 3c a4 f6  	sd	a0, -136(s0)
80202d58: 13 05 84 f5  	addi	a0, s0, -168
80202d5c: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080202d60 <.Lpcrel_hi4>:
80202d60: 17 05 00 00  	auipc	a0, 0
80202d64: 13 05 e5 e1  	addi	a0, a0, -482
80202d68: 23 34 a4 f8  	sd	a0, -120(s0)
80202d6c: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80202d70: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080202d74 <.Lpcrel_hi5>:
80202d74: 17 25 00 00  	auipc	a0, 2
80202d78: 13 05 c5 4c  	addi	a0, a0, 1228
80202d7c: 23 38 a4 fa  	sd	a0, -80(s0)
80202d80: 11 45        	li	a0, 4
80202d82: 23 3c a4 fa  	sd	a0, -72(s0)
80202d86: 13 05 04 f6  	addi	a0, s0, -160
80202d8a: 23 30 a4 fc  	sd	a0, -64(s0)
80202d8e: 0d 45        	li	a0, 3
80202d90: 23 34 a4 fc  	sd	a0, -56(s0)
80202d94: 23 38 04 fc  	sd	zero, -48(s0)

0000000080202d98 <.Lpcrel_hi6>:
80202d98: 17 35 00 00  	auipc	a0, 3
80202d9c: 93 05 85 a2  	addi	a1, a0, -1496
80202da0: 13 05 84 fa  	addi	a0, s0, -88
80202da4: 13 06 04 fb  	addi	a2, s0, -80
80202da8: 97 10 00 00  	auipc	ra, 1
80202dac: e7 80 40 4d  	jalr	1236(ra)
80202db0: 15 c5        	beqz	a0, 0x80202ddc <.Lpcrel_hi9+0x1a>

0000000080202db2 <.Lpcrel_hi7>:
80202db2: 17 35 00 00  	auipc	a0, 3
80202db6: 13 05 e5 a3  	addi	a0, a0, -1474

0000000080202dba <.Lpcrel_hi8>:
80202dba: 97 35 00 00  	auipc	a1, 3
80202dbe: 93 86 65 a6  	addi	a3, a1, -1434

0000000080202dc2 <.Lpcrel_hi9>:
80202dc2: 97 35 00 00  	auipc	a1, 3
80202dc6: 13 87 e5 a8  	addi	a4, a1, -1394
80202dca: 93 05 b0 02  	li	a1, 43
80202dce: 13 06 04 fe  	addi	a2, s0, -32
80202dd2: 97 10 00 00  	auipc	ra, 1
80202dd6: e7 80 c0 44  	jalr	1100(ra)
80202dda: 00 00        	unimp	
;     shutdown()
80202ddc: 97 00 00 00  	auipc	ra, 0
80202de0: e7 80 a0 00  	jalr	10(ra)
80202de4: 00 00        	unimp	

0000000080202de6 <_ZN6kernel3sbi8shutdown17ha34b2f5a5af9ddbbE>:
; pub fn shutdown() -> ! {
80202de6: 39 71        	addi	sp, sp, -64
80202de8: 06 fc        	sd	ra, 56(sp)
80202dea: 22 f8        	sd	s0, 48(sp)
80202dec: 80 00        	addi	s0, sp, 64
;         asm!(
80202dee: a1 48        	li	a7, 8
80202df0: 01 45        	li	a0, 0
80202df2: 81 45        	li	a1, 0
80202df4: 01 46        	li	a2, 0
80202df6: 73 00 00 00  	ecall	

0000000080202dfa <.Lpcrel_hi0>:
80202dfa: 17 25 00 00  	auipc	a0, 2
80202dfe: 13 05 65 54  	addi	a0, a0, 1350
80202e02: 23 30 a4 fc  	sd	a0, -64(s0)
80202e06: 05 45        	li	a0, 1
80202e08: 23 34 a4 fc  	sd	a0, -56(s0)
80202e0c: 23 30 04 fe  	sd	zero, -32(s0)

0000000080202e10 <.Lpcrel_hi1>:
80202e10: 17 25 00 00  	auipc	a0, 2
80202e14: 13 05 05 54  	addi	a0, a0, 1344
80202e18: 23 38 a4 fc  	sd	a0, -48(s0)
80202e1c: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202e20 <.Lpcrel_hi2>:
;     panic!("It should shutdown!");
80202e20: 17 25 00 00  	auipc	a0, 2
80202e24: 93 05 05 54  	addi	a1, a0, 1344
80202e28: 13 05 04 fc  	addi	a0, s0, -64
80202e2c: 97 10 00 00  	auipc	ra, 1
80202e30: e7 80 80 35  	jalr	856(ra)
80202e34: 00 00        	unimp	

0000000080202e36 <__rg_dealloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80202e36: 41 11        	addi	sp, sp, -16
80202e38: 06 e4        	sd	ra, 8(sp)
80202e3a: 22 e0        	sd	s0, 0(sp)
80202e3c: 00 08        	addi	s0, sp, 16

0000000080202e3e <.Lpcrel_hi1>:
80202e3e: 97 46 01 00  	auipc	a3, 20
80202e42: 93 86 26 1c  	addi	a3, a3, 450
80202e46: 2e 87        	mv	a4, a1
80202e48: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80202e4a: 36 85        	mv	a0, a3
80202e4c: ba 86        	mv	a3, a4
80202e4e: a2 60        	ld	ra, 8(sp)
80202e50: 02 64        	ld	s0, 0(sp)
80202e52: 41 01        	addi	sp, sp, 16
80202e54: 17 13 00 00  	auipc	t1, 1
80202e58: 67 00 a3 2c  	jr	714(t1)

0000000080202e5c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> i32 {
80202e5c: 35 71        	addi	sp, sp, -160
;         if size == 0 {
80202e5e: 06 ed        	sd	ra, 152(sp)
80202e60: 22 e9        	sd	s0, 144(sp)
80202e62: 26 e5        	sd	s1, 136(sp)
80202e64: 4a e1        	sd	s2, 128(sp)
80202e66: ce fc        	sd	s3, 120(sp)
80202e68: d2 f8        	sd	s4, 112(sp)
80202e6a: d6 f4        	sd	s5, 104(sp)
80202e6c: da f0        	sd	s6, 96(sp)
80202e6e: de ec        	sd	s7, 88(sp)
80202e70: e2 e8        	sd	s8, 80(sp)
80202e72: e6 e4        	sd	s9, 72(sp)
80202e74: ea e0        	sd	s10, 64(sp)
80202e76: 6e fc        	sd	s11, 56(sp)
80202e78: 00 11        	addi	s0, sp, 160
80202e7a: 63 06 06 18  	beqz	a2, 0x80203006 <.Lpcrel_hi0>
80202e7e: b6 89        	mv	s3, a3
80202e80: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
80202e82: 33 fa d5 00  	and	s4, a1, a3
;         let last = pgrounddown(va + size - 1);
80202e86: 2e 96        	add	a2, a2, a1
80202e88: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
80202e8a: b3 7a d6 00  	and	s5, a2, a3
;         while a <= last {
80202e8e: 63 ee 4a 0d  	bltu	s5, s4, 0x80202f6a <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x10e>
80202e92: 3a 89        	mv	s2, a4
80202e94: 13 db 26 00  	srli	s6, a3, 2
80202e98: 83 3b 05 00  	ld	s7, 0(a0)
;         while a <= last {
80202e9c: 13 dc c5 00  	srli	s8, a1, 12
80202ea0: 85 6c        	lui	s9, 1
80202ea2: 1b 8d 8c ff  	addiw	s10, s9, -8
;         if va >= MAXVA {
80202ea6: 13 55 6a 02  	srli	a0, s4, 38
80202eaa: 75 e1        	bnez	a0, 0x80202f8e <.Lpcrel_hi3>
80202eac: 13 55 ba 01  	srli	a0, s4, 27
80202eb0: 61 99        	andi	a0, a0, -8
80202eb2: b3 8d ab 00  	add	s11, s7, a0
;             if (*pte & PTE_V) != 0 {
80202eb6: 03 b5 0d 00  	ld	a0, 0(s11)
80202eba: 93 75 15 00  	andi	a1, a0, 1
80202ebe: 95 e5        	bnez	a1, 0x80202eea <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x8e>
;                 let pa = kalloc();
80202ec0: 97 00 00 00  	auipc	ra, 0
80202ec4: e7 80 80 38  	jalr	904(ra)
;                 if pa == 0 {
80202ec8: 5d c1        	beqz	a0, 0x80202f6e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x112>
80202eca: aa 84        	mv	s1, a0
80202ecc: 05 66        	lui	a2, 1
80202ece: 81 45        	li	a1, 0
80202ed0: 97 20 00 00  	auipc	ra, 2
80202ed4: e7 80 e0 d1  	jalr	-738(ra)
;     (pa >> 12) << 10
80202ed8: 13 d5 24 00  	srli	a0, s1, 2
80202edc: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
80202ee0: 13 65 15 00  	ori	a0, a0, 1
80202ee4: 23 b0 ad 00  	sd	a0, 0(s11)
80202ee8: 21 a0        	j	0x80202ef0 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x94>
;     (pte >> 10) << 12
80202eea: 29 81        	srli	a0, a0, 10
80202eec: 93 14 c5 00  	slli	s1, a0, 12
80202ef0: 13 55 2a 01  	srli	a0, s4, 18
80202ef4: b3 7d a5 01  	and	s11, a0, s10
80202ef8: a6 9d        	add	s11, s11, s1
;             if (*pte & PTE_V) != 0 {
80202efa: 03 b5 0d 00  	ld	a0, 0(s11)
80202efe: 93 75 15 00  	andi	a1, a0, 1
80202f02: 95 e9        	bnez	a1, 0x80202f36 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0xda>
;                 let pa = kalloc();
80202f04: 97 00 00 00  	auipc	ra, 0
80202f08: e7 80 40 34  	jalr	836(ra)
;                 if pa == 0 {
80202f0c: 2d c1        	beqz	a0, 0x80202f6e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x112>
80202f0e: aa 84        	mv	s1, a0
80202f10: 05 66        	lui	a2, 1
80202f12: 81 45        	li	a1, 0
80202f14: 97 20 00 00  	auipc	ra, 2
80202f18: e7 80 a0 cd  	jalr	-806(ra)
;     (pa >> 12) << 10
80202f1c: 13 d5 24 00  	srli	a0, s1, 2
80202f20: 33 75 65 01  	and	a0, a0, s6
;                 *pte = pa2pte(pa) | PTE_V;
80202f24: 13 65 15 00  	ori	a0, a0, 1
80202f28: 23 b0 ad 00  	sd	a0, 0(s11)
;     (va >> pxshift(level)) & PXMASK
80202f2c: 13 75 fc 1f  	andi	a0, s8, 511
80202f30: 0e 05        	slli	a0, a0, 3
80202f32: aa 94        	add	s1, s1, a0
80202f34: 09 a8        	j	0x80202f46 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0xea>
;     (pte >> 10) << 12
80202f36: 29 81        	srli	a0, a0, 10
80202f38: 32 05        	slli	a0, a0, 12
;             if pte.is_null() {
80202f3a: 15 c9        	beqz	a0, 0x80202f6e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x112>
80202f3c: 93 75 fc 1f  	andi	a1, s8, 511
80202f40: 8e 05        	slli	a1, a1, 3
80202f42: b3 64 b5 00  	or	s1, a0, a1
;             if unsafe { *pte & PTE_V } != 0 {
80202f46: 03 c5 04 00  	lbu	a0, 0(s1)
80202f4a: 05 89        	andi	a0, a0, 1
80202f4c: 3d ed        	bnez	a0, 0x80202fca <.Lpcrel_hi6>
;     (pa >> 12) << 10
80202f4e: 13 d5 29 00  	srli	a0, s3, 2
80202f52: 33 75 65 01  	and	a0, a0, s6
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202f56: 33 65 25 01  	or	a0, a0, s2
80202f5a: 13 65 15 00  	ori	a0, a0, 1
80202f5e: 88 e0        	sd	a0, 0(s1)
;             a += PGSIZE;
80202f60: 66 9a        	add	s4, s4, s9
;             pa += PGSIZE;
80202f62: e6 99        	add	s3, s3, s9
;         while a <= last {
80202f64: 05 0c        	addi	s8, s8, 1
80202f66: e3 f0 4a f5  	bgeu	s5, s4, 0x80202ea6 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x4a>
80202f6a: 01 45        	li	a0, 0
80202f6c: 11 a0        	j	0x80202f70 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h42d7c6adf155f419E+0x114>
80202f6e: 7d 55        	li	a0, -1
;     }
80202f70: ea 60        	ld	ra, 152(sp)
80202f72: 4a 64        	ld	s0, 144(sp)
80202f74: aa 64        	ld	s1, 136(sp)
80202f76: 0a 69        	ld	s2, 128(sp)
80202f78: e6 79        	ld	s3, 120(sp)
80202f7a: 46 7a        	ld	s4, 112(sp)
80202f7c: a6 7a        	ld	s5, 104(sp)
80202f7e: 06 7b        	ld	s6, 96(sp)
80202f80: e6 6b        	ld	s7, 88(sp)
80202f82: 46 6c        	ld	s8, 80(sp)
80202f84: a6 6c        	ld	s9, 72(sp)
80202f86: 06 6d        	ld	s10, 64(sp)
80202f88: e2 7d        	ld	s11, 56(sp)
80202f8a: 0d 61        	addi	sp, sp, 160
80202f8c: 82 80        	ret

0000000080202f8e <.Lpcrel_hi3>:
80202f8e: 17 25 00 00  	auipc	a0, 2
80202f92: 13 05 a5 5b  	addi	a0, a0, 1466
80202f96: 23 34 a4 f6  	sd	a0, -152(s0)
80202f9a: 05 45        	li	a0, 1
80202f9c: 23 38 a4 f6  	sd	a0, -144(s0)
80202fa0: 23 34 04 f8  	sd	zero, -120(s0)

0000000080202fa4 <.Lpcrel_hi4>:
80202fa4: 17 25 00 00  	auipc	a0, 2
80202fa8: 13 05 45 5b  	addi	a0, a0, 1460
80202fac: 23 3c a4 f6  	sd	a0, -136(s0)
80202fb0: 23 30 04 f8  	sd	zero, -128(s0)

0000000080202fb4 <.Lpcrel_hi5>:
;             panic!("walk");
80202fb4: 17 25 00 00  	auipc	a0, 2
80202fb8: 93 05 c5 5b  	addi	a1, a0, 1468
80202fbc: 13 05 84 f6  	addi	a0, s0, -152
80202fc0: 97 10 00 00  	auipc	ra, 1
80202fc4: e7 80 40 1c  	jalr	452(ra)
80202fc8: 00 00        	unimp	

0000000080202fca <.Lpcrel_hi6>:
80202fca: 17 25 00 00  	auipc	a0, 2
80202fce: 13 05 e5 5c  	addi	a0, a0, 1486
80202fd2: 23 34 a4 f6  	sd	a0, -152(s0)
80202fd6: 05 45        	li	a0, 1
80202fd8: 23 38 a4 f6  	sd	a0, -144(s0)
80202fdc: 23 34 04 f8  	sd	zero, -120(s0)

0000000080202fe0 <.Lpcrel_hi7>:
80202fe0: 17 25 00 00  	auipc	a0, 2
80202fe4: 13 05 85 57  	addi	a0, a0, 1400
80202fe8: 23 3c a4 f6  	sd	a0, -136(s0)
80202fec: 23 30 04 f8  	sd	zero, -128(s0)

0000000080202ff0 <.Lpcrel_hi8>:
;                 panic!("mappages: remap");
80202ff0: 17 25 00 00  	auipc	a0, 2
80202ff4: 93 05 85 5b  	addi	a1, a0, 1464
80202ff8: 13 05 84 f6  	addi	a0, s0, -152
80202ffc: 97 10 00 00  	auipc	ra, 1
80203000: e7 80 80 18  	jalr	392(ra)
80203004: 00 00        	unimp	

0000000080203006 <.Lpcrel_hi0>:
80203006: 17 25 00 00  	auipc	a0, 2
8020300a: 13 05 a5 5c  	addi	a0, a0, 1482
8020300e: 23 34 a4 f6  	sd	a0, -152(s0)
80203012: 05 45        	li	a0, 1
80203014: 23 38 a4 f6  	sd	a0, -144(s0)
80203018: 23 34 04 f8  	sd	zero, -120(s0)

000000008020301c <.Lpcrel_hi1>:
8020301c: 17 25 00 00  	auipc	a0, 2
80203020: 13 05 c5 53  	addi	a0, a0, 1340
80203024: 23 3c a4 f6  	sd	a0, -136(s0)
80203028: 23 30 04 f8  	sd	zero, -128(s0)

000000008020302c <.Lpcrel_hi2>:
;             panic!("mappages: size");
8020302c: 17 25 00 00  	auipc	a0, 2
80203030: 93 05 45 5b  	addi	a1, a0, 1460
80203034: 13 05 84 f6  	addi	a0, s0, -152
80203038: 97 10 00 00  	auipc	ra, 1
8020303c: e7 80 c0 14  	jalr	332(ra)
80203040: 00 00        	unimp	

0000000080203042 <_ZN6kernel6memory6kalloc5kinit17h112ddf26daa68293E>:
; pub fn kinit() {
80203042: 19 71        	addi	sp, sp, -128
80203044: 86 fc        	sd	ra, 120(sp)
80203046: a2 f8        	sd	s0, 112(sp)
80203048: a6 f4        	sd	s1, 104(sp)
8020304a: ca f0        	sd	s2, 96(sp)
8020304c: ce ec        	sd	s3, 88(sp)
8020304e: d2 e8        	sd	s4, 80(sp)
80203050: d6 e4        	sd	s5, 72(sp)
80203052: 00 01        	addi	s0, sp, 128
80203054: 0f 00 30 03  	fence	rw, rw

0000000080203058 <.Lpcrel_hi1>:
80203058: 17 65 01 00  	auipc	a0, 22
8020305c: 93 09 05 2e  	addi	s3, a0, 736
80203060: 03 b5 09 03  	ld	a0, 48(s3)
80203064: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203068: 39 e9        	bnez	a0, 0x802030be <.Lpcrel_hi2+0x3a>
8020306a: 93 85 09 03  	addi	a1, s3, 48
8020306e: 05 46        	li	a2, 1
80203070: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203074: 29 e5        	bnez	a0, 0x802030be <.Lpcrel_hi2+0x3a>
80203076: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
8020307a: fd fa        	bnez	a3, 0x80203070 <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020307c: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80203080: 23 b0 c9 00  	sd	a2, 0(s3)

0000000080203084 <.Lpcrel_hi2>:
80203084: 17 25 00 00  	auipc	a0, 2
80203088: 13 05 c5 4b  	addi	a0, a0, 1212
8020308c: 23 b4 a9 00  	sd	a0, 8(s3)
80203090: 11 45        	li	a0, 4
80203092: 23 b8 a9 00  	sd	a0, 16(s3)
80203096: 23 bc 09 00  	sd	zero, 24(s3)
8020309a: 23 80 09 02  	sb	zero, 32(s3)
8020309e: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
802030a2: 23 0c 04 f8  	sb	zero, -104(s0)
802030a6: 0f 00 10 03  	fence	rw, w
802030aa: 09 45        	li	a0, 2
802030ac: 23 b8 a9 02  	sd	a0, 48(s3)
802030b0: 13 05 04 f9  	addi	a0, s0, -112
802030b4: 97 10 00 00  	auipc	ra, 1
802030b8: e7 80 00 ec  	jalr	-320(ra)
802030bc: 0d a0        	j	0x802030de <.Lpcrel_hi7>
802030be: 85 45        	li	a1, 1
;             match status {
802030c0: 63 1c b5 00  	bne	a0, a1, 0x802030d8 <.Lpcrel_hi2+0x54>
802030c4: 0f 00 00 01  	fence	w, 0
802030c8: 0f 00 30 03  	fence	rw, rw
802030cc: 03 b5 09 03  	ld	a0, 48(s3)
802030d0: 0f 00 30 02  	fence	r, rw
;             match status {
802030d4: e3 08 b5 fe  	beq	a0, a1, 0x802030c4 <.Lpcrel_hi2+0x40>
802030d8: 89 45        	li	a1, 2
;             match status {
802030da: 63 16 b5 0c  	bne	a0, a1, 0x802031a6 <.Lpcrel_hi13+0x2c>

00000000802030de <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
802030de: 17 d5 01 00  	auipc	a0, 29
802030e2: 13 05 25 f2  	addi	a0, a0, -222
802030e6: 85 65        	lui	a1, 1
802030e8: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
802030ea: aa 95        	add	a1, a1, a0
802030ec: 7d 76        	lui	a2, 1048575
802030ee: f1 8d        	and	a1, a1, a2
802030f0: 37 86 08 00  	lui	a2, 136
802030f4: 7d 36        	addiw	a2, a2, -1
802030f6: 32 06        	slli	a2, a2, 12
802030f8: 7d 16        	addi	a2, a2, -1
802030fa: 63 69 b6 04  	bltu	a2, a1, 0x8020314c <.Lpcrel_hi7+0x6e>
802030fe: 63 e7 a5 10  	bltu	a1, a0, 0x8020320c <.Lpcrel_hi8>
80203102: 05 6a        	lui	s4, 1
80203104: 9b 05 fa ff  	addiw	a1, s4, -1
80203108: 2e 95        	add	a0, a0, a1
8020310a: fd 75        	lui	a1, 1048575
8020310c: 6d 8d        	and	a0, a0, a1
8020310e: 13 89 89 00  	addi	s2, s3, 8
80203112: b7 fa ff 43  	lui	s5, 278527
80203116: 86 0a        	slli	s5, s5, 1
80203118: aa 84        	mv	s1, a0
8020311a: 85 45        	li	a1, 1
8020311c: 05 66        	lui	a2, 1
8020311e: 97 20 00 00  	auipc	ra, 2
80203122: e7 80 00 ad  	jalr	-1328(ra)
;         self.lock.acquire();
80203126: 4a 85        	mv	a0, s2
80203128: 97 f0 ff ff  	auipc	ra, 1048575
8020312c: e7 80 20 77  	jalr	1906(ra)
;         unsafe { (*pa).next = self.freelist }
80203130: 03 b5 89 02  	ld	a0, 40(s3)
80203134: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80203136: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
8020313a: 4a 85        	mv	a0, s2
8020313c: 97 00 00 00  	auipc	ra, 0
80203140: e7 80 40 8c  	jalr	-1852(ra)
;             pa += PGSIZE;
80203144: 33 85 44 01  	add	a0, s1, s4
80203148: e3 e8 54 fd  	bltu	s1, s5, 0x80203118 <.Lpcrel_hi7+0x3a>
8020314c: 13 05 04 fc  	addi	a0, s0, -64
;     Stdout.write_fmt(args).unwrap();
80203150: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203154 <.Lpcrel_hi11>:
80203154: 17 25 00 00  	auipc	a0, 2
80203158: 13 05 c5 4f  	addi	a0, a0, 1276
8020315c: 23 38 a4 f8  	sd	a0, -112(s0)
80203160: 05 45        	li	a0, 1
80203162: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080203166 <.Lpcrel_hi12>:
80203166: 17 25 00 00  	auipc	a0, 2
8020316a: 13 05 a5 4a  	addi	a0, a0, 1194
8020316e: 23 30 a4 fa  	sd	a0, -96(s0)
80203172: 23 34 04 fa  	sd	zero, -88(s0)
80203176: 23 38 04 fa  	sd	zero, -80(s0)

000000008020317a <.Lpcrel_hi13>:
8020317a: 17 25 00 00  	auipc	a0, 2
8020317e: 93 05 65 64  	addi	a1, a0, 1606
80203182: 13 05 84 f8  	addi	a0, s0, -120
80203186: 13 06 04 f9  	addi	a2, s0, -112
8020318a: 97 10 00 00  	auipc	ra, 1
8020318e: e7 80 20 0f  	jalr	242(ra)
80203192: 21 e9        	bnez	a0, 0x802031e2 <.Lpcrel_hi14>
; }
80203194: e6 70        	ld	ra, 120(sp)
80203196: 46 74        	ld	s0, 112(sp)
80203198: a6 74        	ld	s1, 104(sp)
8020319a: 06 79        	ld	s2, 96(sp)
8020319c: e6 69        	ld	s3, 88(sp)
8020319e: 46 6a        	ld	s4, 80(sp)
802031a0: a6 6a        	ld	s5, 72(sp)
802031a2: 09 61        	addi	sp, sp, 128
802031a4: 82 80        	ret
;             match status {
802031a6: 05 e1        	bnez	a0, 0x802031c6 <.Lpcrel_hi5>

00000000802031a8 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
802031a8: 17 25 00 00  	auipc	a0, 2
802031ac: 13 05 05 ee  	addi	a0, a0, -288

00000000802031b0 <.Lpcrel_hi4>:
802031b0: 97 25 00 00  	auipc	a1, 2
802031b4: 13 86 05 f0  	addi	a2, a1, -256
802031b8: 93 05 80 02  	li	a1, 40
802031bc: 97 10 00 00  	auipc	ra, 1
802031c0: e7 80 60 ff  	jalr	-10(ra)
802031c4: 00 00        	unimp	

00000000802031c6 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
802031c6: 17 25 00 00  	auipc	a0, 2
802031ca: 13 05 a5 e3  	addi	a0, a0, -454

00000000802031ce <.Lpcrel_hi6>:
802031ce: 97 25 00 00  	auipc	a1, 2
802031d2: 13 86 25 ea  	addi	a2, a1, -350
802031d6: c5 45        	li	a1, 17
802031d8: 97 10 00 00  	auipc	ra, 1
802031dc: e7 80 a0 fd  	jalr	-38(ra)
802031e0: 00 00        	unimp	

00000000802031e2 <.Lpcrel_hi14>:
802031e2: 17 25 00 00  	auipc	a0, 2
802031e6: 13 05 e5 60  	addi	a0, a0, 1550

00000000802031ea <.Lpcrel_hi15>:
802031ea: 97 25 00 00  	auipc	a1, 2
802031ee: 93 86 65 63  	addi	a3, a1, 1590

00000000802031f2 <.Lpcrel_hi16>:
802031f2: 97 25 00 00  	auipc	a1, 2
802031f6: 13 87 e5 65  	addi	a4, a1, 1630
802031fa: 93 05 b0 02  	li	a1, 43
802031fe: 13 06 04 fc  	addi	a2, s0, -64
80203202: 97 10 00 00  	auipc	ra, 1
80203206: e7 80 c0 01  	jalr	28(ra)
8020320a: 00 00        	unimp	

000000008020320c <.Lpcrel_hi8>:
8020320c: 17 25 00 00  	auipc	a0, 2
80203210: 13 05 45 3f  	addi	a0, a0, 1012
80203214: 23 38 a4 f8  	sd	a0, -112(s0)
80203218: 05 45        	li	a0, 1
8020321a: 23 3c a4 f8  	sd	a0, -104(s0)
8020321e: 23 38 04 fa  	sd	zero, -80(s0)

0000000080203222 <.Lpcrel_hi9>:
80203222: 17 25 00 00  	auipc	a0, 2
80203226: 13 05 e5 3e  	addi	a0, a0, 1006
8020322a: 23 30 a4 fa  	sd	a0, -96(s0)
8020322e: 23 34 04 fa  	sd	zero, -88(s0)

0000000080203232 <.Lpcrel_hi10>:
;             panic!("kfree");
80203232: 17 25 00 00  	auipc	a0, 2
80203236: 93 05 65 3f  	addi	a1, a0, 1014
8020323a: 13 05 04 f9  	addi	a0, s0, -112
8020323e: 97 10 00 00  	auipc	ra, 1
80203242: e7 80 60 f4  	jalr	-186(ra)
80203246: 00 00        	unimp	

0000000080203248 <_ZN6kernel6memory6kalloc6kalloc17he4cbcf3120f34501E>:
; pub fn kalloc() -> Addr {
80203248: 39 71        	addi	sp, sp, -64
8020324a: 06 fc        	sd	ra, 56(sp)
8020324c: 22 f8        	sd	s0, 48(sp)
8020324e: 26 f4        	sd	s1, 40(sp)
80203250: 4a f0        	sd	s2, 32(sp)
80203252: 4e ec        	sd	s3, 24(sp)
80203254: 80 00        	addi	s0, sp, 64
80203256: 0f 00 30 03  	fence	rw, rw

000000008020325a <.Lpcrel_hi17>:
8020325a: 17 65 01 00  	auipc	a0, 22
8020325e: 93 04 e5 0d  	addi	s1, a0, 222
80203262: 88 78        	ld	a0, 48(s1)
80203264: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203268: 39 e5        	bnez	a0, 0x802032b6 <.Lpcrel_hi18+0x34>
8020326a: 93 85 04 03  	addi	a1, s1, 48
8020326e: 05 46        	li	a2, 1
80203270: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203274: 29 e1        	bnez	a0, 0x802032b6 <.Lpcrel_hi18+0x34>
80203276: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
8020327a: fd fa        	bnez	a3, 0x80203270 <.Lpcrel_hi17+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020327c: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80203280: 90 e0        	sd	a2, 0(s1)

0000000080203282 <.Lpcrel_hi18>:
80203282: 17 25 00 00  	auipc	a0, 2
80203286: 13 05 e5 2b  	addi	a0, a0, 702
8020328a: 88 e4        	sd	a0, 8(s1)
8020328c: 11 45        	li	a0, 4
8020328e: 88 e8        	sd	a0, 16(s1)
80203290: 23 bc 04 00  	sd	zero, 24(s1)
80203294: 23 80 04 02  	sb	zero, 32(s1)
80203298: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
8020329c: 23 08 04 fc  	sb	zero, -48(s0)
802032a0: 0f 00 10 03  	fence	rw, w
802032a4: 09 45        	li	a0, 2
802032a6: 88 f8        	sd	a0, 48(s1)
802032a8: 13 05 84 fc  	addi	a0, s0, -56
802032ac: 97 10 00 00  	auipc	ra, 1
802032b0: e7 80 80 cc  	jalr	-824(ra)
802032b4: 05 a0        	j	0x802032d4 <.Lpcrel_hi18+0x52>
802032b6: 85 45        	li	a1, 1
;             match status {
802032b8: 63 1b b5 00  	bne	a0, a1, 0x802032ce <.Lpcrel_hi18+0x4c>
802032bc: 0f 00 00 01  	fence	w, 0
802032c0: 0f 00 30 03  	fence	rw, rw
802032c4: 88 78        	ld	a0, 48(s1)
802032c6: 0f 00 30 02  	fence	r, rw
;             match status {
802032ca: e3 09 b5 fe  	beq	a0, a1, 0x802032bc <.Lpcrel_hi18+0x3a>
802032ce: 89 45        	li	a1, 2
;             match status {
802032d0: 63 1a b5 04  	bne	a0, a1, 0x80203324 <.Lpcrel_hi18+0xa2>
;         self.lock.acquire();
802032d4: 13 89 84 00  	addi	s2, s1, 8
802032d8: 4a 85        	mv	a0, s2
802032da: 97 f0 ff ff  	auipc	ra, 1048575
802032de: e7 80 00 5c  	jalr	1472(ra)
;         r = self.freelist;
802032e2: 83 b9 84 02  	ld	s3, 40(s1)
802032e6: 63 82 09 02  	beqz	s3, 0x8020330a <.Lpcrel_hi18+0x88>
;             unsafe { self.freelist = (*r).next }
802032ea: 03 b5 09 00  	ld	a0, 0(s3)
802032ee: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
802032f0: 4a 85        	mv	a0, s2
802032f2: 97 f0 ff ff  	auipc	ra, 1048575
802032f6: e7 80 e0 70  	jalr	1806(ra)
802032fa: 95 45        	li	a1, 5
802032fc: 05 66        	lui	a2, 1
802032fe: 4e 85        	mv	a0, s3
80203300: 97 20 00 00  	auipc	ra, 2
80203304: e7 80 e0 8e  	jalr	-1810(ra)
80203308: 31 a0        	j	0x80203314 <.Lpcrel_hi18+0x92>
;         self.lock.release();
8020330a: 4a 85        	mv	a0, s2
8020330c: 97 f0 ff ff  	auipc	ra, 1048575
80203310: e7 80 40 6f  	jalr	1780(ra)
; }
80203314: 4e 85        	mv	a0, s3
80203316: e2 70        	ld	ra, 56(sp)
80203318: 42 74        	ld	s0, 48(sp)
8020331a: a2 74        	ld	s1, 40(sp)
8020331c: 02 79        	ld	s2, 32(sp)
8020331e: e2 69        	ld	s3, 24(sp)
80203320: 21 61        	addi	sp, sp, 64
80203322: 82 80        	ret
;             match status {
80203324: 05 e1        	bnez	a0, 0x80203344 <.Lpcrel_hi21>

0000000080203326 <.Lpcrel_hi19>:
;                 INCOMPLETE => unreachable!(),
80203326: 17 25 00 00  	auipc	a0, 2
8020332a: 13 05 25 d6  	addi	a0, a0, -670

000000008020332e <.Lpcrel_hi20>:
8020332e: 97 25 00 00  	auipc	a1, 2
80203332: 13 86 25 d8  	addi	a2, a1, -638
80203336: 93 05 80 02  	li	a1, 40
8020333a: 97 10 00 00  	auipc	ra, 1
8020333e: e7 80 80 e7  	jalr	-392(ra)
80203342: 00 00        	unimp	

0000000080203344 <.Lpcrel_hi21>:
;                 PANICKED => panic!("Once has panicked"),
80203344: 17 25 00 00  	auipc	a0, 2
80203348: 13 05 c5 cb  	addi	a0, a0, -836

000000008020334c <.Lpcrel_hi22>:
8020334c: 97 25 00 00  	auipc	a1, 2
80203350: 13 86 45 d2  	addi	a2, a1, -732
80203354: c5 45        	li	a1, 17
80203356: 97 10 00 00  	auipc	ra, 1
8020335a: e7 80 c0 e5  	jalr	-420(ra)
8020335e: 00 00        	unimp	

0000000080203360 <_ZN6kernel6memory3kvm7kvminit17h70071457edabff96E>:
; pub fn kvminit() {
80203360: 59 71        	addi	sp, sp, -112
80203362: 86 f4        	sd	ra, 104(sp)
80203364: a2 f0        	sd	s0, 96(sp)
80203366: a6 ec        	sd	s1, 88(sp)
80203368: ca e8        	sd	s2, 80(sp)
8020336a: ce e4        	sd	s3, 72(sp)
8020336c: 80 18        	addi	s0, sp, 112
8020336e: 0f 00 30 03  	fence	rw, rw

0000000080203372 <.Lpcrel_hi0>:
80203372: 17 65 01 00  	auipc	a0, 22
80203376: 13 09 e5 ff  	addi	s2, a0, -2
8020337a: 03 35 09 01  	ld	a0, 16(s2)
8020337e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80203382: 29 e9        	bnez	a0, 0x802033d4 <.Lpcrel_hi0+0x62>
80203384: 93 05 09 01  	addi	a1, s2, 16
80203388: 85 49        	li	s3, 1
8020338a: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020338e: 39 e1        	bnez	a0, 0x802033d4 <.Lpcrel_hi0+0x62>
80203390: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80203394: 7d fa        	bnez	a2, 0x8020338a <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203396: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
8020339a: 97 00 00 00  	auipc	ra, 0
8020339e: e7 80 e0 ea  	jalr	-338(ra)
802033a2: aa 84        	mv	s1, a0
802033a4: 05 66        	lui	a2, 1
802033a6: 81 45        	li	a1, 0
802033a8: 97 20 00 00  	auipc	ra, 2
802033ac: e7 80 60 84  	jalr	-1978(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802033b0: 23 30 39 01  	sd	s3, 0(s2)
802033b4: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
802033b8: 23 04 04 fa  	sb	zero, -88(s0)
802033bc: 0f 00 10 03  	fence	rw, w
802033c0: 09 45        	li	a0, 2
802033c2: 23 38 a9 00  	sd	a0, 16(s2)
802033c6: 13 05 04 fa  	addi	a0, s0, -96
802033ca: 97 10 00 00  	auipc	ra, 1
802033ce: e7 80 a0 ba  	jalr	-1110(ra)
802033d2: 0d a0        	j	0x802033f4 <.Lpcrel_hi0+0x82>
802033d4: 85 45        	li	a1, 1
;             match status {
802033d6: 63 1c b5 00  	bne	a0, a1, 0x802033ee <.Lpcrel_hi0+0x7c>
802033da: 0f 00 00 01  	fence	w, 0
802033de: 0f 00 30 03  	fence	rw, rw
802033e2: 03 35 09 01  	ld	a0, 16(s2)
802033e6: 0f 00 30 02  	fence	r, rw
;             match status {
802033ea: e3 08 b5 fe  	beq	a0, a1, 0x802033da <.Lpcrel_hi0+0x68>
802033ee: 89 45        	li	a1, 2
;             match status {
802033f0: 63 12 b5 12  	bne	a0, a1, 0x80203514 <.Lpcrel_hi27+0x2a>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802033f4: 21 09        	addi	s2, s2, 8
802033f6: b7 05 00 10  	lui	a1, 65536
802033fa: 05 66        	lui	a2, 1
802033fc: b7 06 00 10  	lui	a3, 65536
80203400: 19 47        	li	a4, 6
80203402: 4a 85        	mv	a0, s2
80203404: 97 00 00 00  	auipc	ra, 0
80203408: e7 80 80 a5  	jalr	-1448(ra)
8020340c: 01 25        	sext.w	a0, a0
8020340e: 63 11 05 14  	bnez	a0, 0x80203550 <.Lpcrel_hi5>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203412: b7 15 00 10  	lui	a1, 65537
80203416: 05 66        	lui	a2, 1
80203418: b7 16 00 10  	lui	a3, 65537
8020341c: 19 47        	li	a4, 6
8020341e: 4a 85        	mv	a0, s2
80203420: 97 00 00 00  	auipc	ra, 0
80203424: e7 80 c0 a3  	jalr	-1476(ra)
80203428: 01 25        	sext.w	a0, a0
8020342a: 63 1b 05 14  	bnez	a0, 0x80203580 <.Lpcrel_hi8>
8020342e: b7 05 00 0c  	lui	a1, 49152
80203432: 37 06 40 00  	lui	a2, 1024
80203436: b7 06 00 0c  	lui	a3, 49152
8020343a: 19 47        	li	a4, 6
8020343c: 4a 85        	mv	a0, s2
8020343e: 97 00 00 00  	auipc	ra, 0
80203442: e7 80 e0 a1  	jalr	-1506(ra)
80203446: 01 25        	sext.w	a0, a0
80203448: 63 14 05 16  	bnez	a0, 0x802035b0 <.Lpcrel_hi11>

000000008020344c <.Lpcrel_hi14>:
8020344c: 17 25 00 00  	auipc	a0, 2
80203450: 93 04 45 bb  	addi	s1, a0, -1100
80203454: 13 05 f0 bf  	li	a0, -1025
80203458: 56 05        	slli	a0, a0, 21
8020345a: 33 86 a4 00  	add	a2, s1, a0
8020345e: 93 05 10 40  	li	a1, 1025
80203462: d6 05        	slli	a1, a1, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
80203464: 29 47        	li	a4, 10
80203466: 4a 85        	mv	a0, s2
80203468: ae 86        	mv	a3, a1
8020346a: 97 00 00 00  	auipc	ra, 0
8020346e: e7 80 20 9f  	jalr	-1550(ra)
80203472: 01 25        	sext.w	a0, a0
80203474: 63 16 05 16  	bnez	a0, 0x802035e0 <.Lpcrel_hi15>
80203478: 45 45        	li	a0, 17
8020347a: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
8020347c: 33 06 95 40  	sub	a2, a0, s1
80203480: 19 47        	li	a4, 6
80203482: 4a 85        	mv	a0, s2
80203484: a6 85        	mv	a1, s1
80203486: a6 86        	mv	a3, s1
80203488: 97 00 00 00  	auipc	ra, 0
8020348c: e7 80 40 9d  	jalr	-1580(ra)
80203490: 01 25        	sext.w	a0, a0
80203492: 63 1f 05 16  	bnez	a0, 0x80203610 <.Lpcrel_hi18>

0000000080203496 <.Lpcrel_hi21>:
80203496: 17 e5 ff ff  	auipc	a0, 1048574
8020349a: 93 06 a5 b6  	addi	a3, a0, -1174
8020349e: 37 05 00 04  	lui	a0, 16384
802034a2: 7d 35        	addiw	a0, a0, -1
802034a4: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) != 0 {
802034a8: 05 66        	lui	a2, 1
802034aa: 29 47        	li	a4, 10
802034ac: 4a 85        	mv	a0, s2
802034ae: 97 00 00 00  	auipc	ra, 0
802034b2: e7 80 e0 9a  	jalr	-1618(ra)
802034b6: 01 25        	sext.w	a0, a0
802034b8: 63 14 05 18  	bnez	a0, 0x80203640 <.Lpcrel_hi22>
802034bc: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
802034c0: 23 3c a4 f8  	sd	a0, -104(s0)

00000000802034c4 <.Lpcrel_hi25>:
802034c4: 17 25 00 00  	auipc	a0, 2
802034c8: 13 05 c5 1f  	addi	a0, a0, 508
802034cc: 23 30 a4 fa  	sd	a0, -96(s0)
802034d0: 05 45        	li	a0, 1
802034d2: 23 34 a4 fa  	sd	a0, -88(s0)

00000000802034d6 <.Lpcrel_hi26>:
802034d6: 17 25 00 00  	auipc	a0, 2
802034da: 13 05 25 1a  	addi	a0, a0, 418
802034de: 23 38 a4 fa  	sd	a0, -80(s0)
802034e2: 23 3c 04 fa  	sd	zero, -72(s0)
802034e6: 23 30 04 fc  	sd	zero, -64(s0)

00000000802034ea <.Lpcrel_hi27>:
802034ea: 17 25 00 00  	auipc	a0, 2
802034ee: 93 05 65 2d  	addi	a1, a0, 726
802034f2: 13 05 84 f9  	addi	a0, s0, -104
802034f6: 13 06 04 fa  	addi	a2, s0, -96
802034fa: 97 10 00 00  	auipc	ra, 1
802034fe: e7 80 20 d8  	jalr	-638(ra)
80203502: 63 1d 05 16  	bnez	a0, 0x8020367c <.Lpcrel_hi28>
; }
80203506: a6 70        	ld	ra, 104(sp)
80203508: 06 74        	ld	s0, 96(sp)
8020350a: e6 64        	ld	s1, 88(sp)
8020350c: 46 69        	ld	s2, 80(sp)
8020350e: a6 69        	ld	s3, 72(sp)
80203510: 65 61        	addi	sp, sp, 112
80203512: 82 80        	ret
;             match status {
80203514: 05 e1        	bnez	a0, 0x80203534 <.Lpcrel_hi3>

0000000080203516 <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
80203516: 17 25 00 00  	auipc	a0, 2
8020351a: 13 05 25 b7  	addi	a0, a0, -1166

000000008020351e <.Lpcrel_hi2>:
8020351e: 97 25 00 00  	auipc	a1, 2
80203522: 13 86 25 b9  	addi	a2, a1, -1134
80203526: 93 05 80 02  	li	a1, 40
8020352a: 97 10 00 00  	auipc	ra, 1
8020352e: e7 80 80 c8  	jalr	-888(ra)
80203532: 00 00        	unimp	

0000000080203534 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
80203534: 17 25 00 00  	auipc	a0, 2
80203538: 13 05 c5 ac  	addi	a0, a0, -1332

000000008020353c <.Lpcrel_hi4>:
8020353c: 97 25 00 00  	auipc	a1, 2
80203540: 13 86 45 b3  	addi	a2, a1, -1228
80203544: c5 45        	li	a1, 17
80203546: 97 10 00 00  	auipc	ra, 1
8020354a: e7 80 c0 c6  	jalr	-916(ra)
8020354e: 00 00        	unimp	

0000000080203550 <.Lpcrel_hi5>:
80203550: 17 25 00 00  	auipc	a0, 2
80203554: 13 05 85 11  	addi	a0, a0, 280
80203558: 23 30 a4 fa  	sd	a0, -96(s0)
8020355c: 05 45        	li	a0, 1
8020355e: 23 34 a4 fa  	sd	a0, -88(s0)
80203562: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203566 <.Lpcrel_hi6>:
80203566: 17 25 00 00  	auipc	a0, 2
8020356a: 13 05 25 11  	addi	a0, a0, 274
8020356e: 23 38 a4 fa  	sd	a0, -80(s0)
80203572: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203576 <.Lpcrel_hi7>:
;             panic!("kvmmap");
80203576: 17 25 00 00  	auipc	a0, 2
8020357a: 93 05 a5 11  	addi	a1, a0, 282
8020357e: c5 a8        	j	0x8020366e <.Lpcrel_hi24+0x8>

0000000080203580 <.Lpcrel_hi8>:
80203580: 17 25 00 00  	auipc	a0, 2
80203584: 13 05 85 0e  	addi	a0, a0, 232
80203588: 23 30 a4 fa  	sd	a0, -96(s0)
8020358c: 05 45        	li	a0, 1
8020358e: 23 34 a4 fa  	sd	a0, -88(s0)
80203592: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203596 <.Lpcrel_hi9>:
80203596: 17 25 00 00  	auipc	a0, 2
8020359a: 13 05 25 0e  	addi	a0, a0, 226
8020359e: 23 38 a4 fa  	sd	a0, -80(s0)
802035a2: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802035a6 <.Lpcrel_hi10>:
;             panic!("kvmmap");
802035a6: 17 25 00 00  	auipc	a0, 2
802035aa: 93 05 a5 0e  	addi	a1, a0, 234
802035ae: c1 a0        	j	0x8020366e <.Lpcrel_hi24+0x8>

00000000802035b0 <.Lpcrel_hi11>:
802035b0: 17 25 00 00  	auipc	a0, 2
802035b4: 13 05 85 0b  	addi	a0, a0, 184
802035b8: 23 30 a4 fa  	sd	a0, -96(s0)
802035bc: 05 45        	li	a0, 1
802035be: 23 34 a4 fa  	sd	a0, -88(s0)
802035c2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802035c6 <.Lpcrel_hi12>:
802035c6: 17 25 00 00  	auipc	a0, 2
802035ca: 13 05 25 0b  	addi	a0, a0, 178
802035ce: 23 38 a4 fa  	sd	a0, -80(s0)
802035d2: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802035d6 <.Lpcrel_hi13>:
;             panic!("kvmmap");
802035d6: 17 25 00 00  	auipc	a0, 2
802035da: 93 05 a5 0b  	addi	a1, a0, 186
802035de: 41 a8        	j	0x8020366e <.Lpcrel_hi24+0x8>

00000000802035e0 <.Lpcrel_hi15>:
802035e0: 17 25 00 00  	auipc	a0, 2
802035e4: 13 05 85 08  	addi	a0, a0, 136
802035e8: 23 30 a4 fa  	sd	a0, -96(s0)
802035ec: 05 45        	li	a0, 1
802035ee: 23 34 a4 fa  	sd	a0, -88(s0)
802035f2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802035f6 <.Lpcrel_hi16>:
802035f6: 17 25 00 00  	auipc	a0, 2
802035fa: 13 05 25 08  	addi	a0, a0, 130
802035fe: 23 38 a4 fa  	sd	a0, -80(s0)
80203602: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203606 <.Lpcrel_hi17>:
;             panic!("kvmmap");
80203606: 17 25 00 00  	auipc	a0, 2
8020360a: 93 05 a5 08  	addi	a1, a0, 138
8020360e: 85 a0        	j	0x8020366e <.Lpcrel_hi24+0x8>

0000000080203610 <.Lpcrel_hi18>:
80203610: 17 25 00 00  	auipc	a0, 2
80203614: 13 05 85 05  	addi	a0, a0, 88
80203618: 23 30 a4 fa  	sd	a0, -96(s0)
8020361c: 05 45        	li	a0, 1
8020361e: 23 34 a4 fa  	sd	a0, -88(s0)
80203622: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203626 <.Lpcrel_hi19>:
80203626: 17 25 00 00  	auipc	a0, 2
8020362a: 13 05 25 05  	addi	a0, a0, 82
8020362e: 23 38 a4 fa  	sd	a0, -80(s0)
80203632: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203636 <.Lpcrel_hi20>:
;             panic!("kvmmap");
80203636: 17 25 00 00  	auipc	a0, 2
8020363a: 93 05 a5 05  	addi	a1, a0, 90
8020363e: 05 a8        	j	0x8020366e <.Lpcrel_hi24+0x8>

0000000080203640 <.Lpcrel_hi22>:
80203640: 17 25 00 00  	auipc	a0, 2
80203644: 13 05 85 02  	addi	a0, a0, 40
80203648: 23 30 a4 fa  	sd	a0, -96(s0)
8020364c: 05 45        	li	a0, 1
8020364e: 23 34 a4 fa  	sd	a0, -88(s0)
80203652: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203656 <.Lpcrel_hi23>:
80203656: 17 25 00 00  	auipc	a0, 2
8020365a: 13 05 25 02  	addi	a0, a0, 34
8020365e: 23 38 a4 fa  	sd	a0, -80(s0)
80203662: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203666 <.Lpcrel_hi24>:
;             panic!("kvmmap");
80203666: 17 25 00 00  	auipc	a0, 2
8020366a: 93 05 a5 02  	addi	a1, a0, 42
8020366e: 13 05 04 fa  	addi	a0, s0, -96
80203672: 97 10 00 00  	auipc	ra, 1
80203676: e7 80 20 b1  	jalr	-1262(ra)
8020367a: 00 00        	unimp	

000000008020367c <.Lpcrel_hi28>:
8020367c: 17 25 00 00  	auipc	a0, 2
80203680: 13 05 45 17  	addi	a0, a0, 372

0000000080203684 <.Lpcrel_hi29>:
80203684: 97 25 00 00  	auipc	a1, 2
80203688: 93 86 c5 19  	addi	a3, a1, 412

000000008020368c <.Lpcrel_hi30>:
8020368c: 97 25 00 00  	auipc	a1, 2
80203690: 13 87 45 1c  	addi	a4, a1, 452
80203694: 93 05 b0 02  	li	a1, 43
80203698: 13 06 04 fd  	addi	a2, s0, -48
8020369c: 97 10 00 00  	auipc	ra, 1
802036a0: e7 80 20 b8  	jalr	-1150(ra)
802036a4: 00 00        	unimp	

00000000802036a6 <_ZN6kernel6memory3kvm11kvminithart17he13a3ed0baab4e15E>:
; pub fn kvminithart() {
802036a6: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802036a8: 86 f4        	sd	ra, 104(sp)
802036aa: a2 f0        	sd	s0, 96(sp)
802036ac: a6 ec        	sd	s1, 88(sp)
802036ae: ca e8        	sd	s2, 80(sp)
802036b0: ce e4        	sd	s3, 72(sp)
802036b2: 80 18        	addi	s0, sp, 112
802036b4: 73 00 00 12  	sfence.vma
802036b8: 0f 00 30 03  	fence	rw, rw

00000000802036bc <.Lpcrel_hi31>:
802036bc: 17 65 01 00  	auipc	a0, 22
802036c0: 93 04 45 cb  	addi	s1, a0, -844
802036c4: 88 68        	ld	a0, 16(s1)
802036c6: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802036ca: 21 e9        	bnez	a0, 0x8020371a <.Lpcrel_hi31+0x5e>
802036cc: 93 85 04 01  	addi	a1, s1, 16
802036d0: 85 49        	li	s3, 1
802036d2: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802036d6: 31 e1        	bnez	a0, 0x8020371a <.Lpcrel_hi31+0x5e>
802036d8: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802036dc: 7d fa        	bnez	a2, 0x802036d2 <.Lpcrel_hi31+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802036de: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802036e2: 97 00 00 00  	auipc	ra, 0
802036e6: e7 80 60 b6  	jalr	-1178(ra)
802036ea: 2a 89        	mv	s2, a0
802036ec: 05 66        	lui	a2, 1
802036ee: 81 45        	li	a1, 0
802036f0: 97 10 00 00  	auipc	ra, 1
802036f4: e7 80 e0 4f  	jalr	1278(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802036f8: 23 b0 34 01  	sd	s3, 0(s1)
802036fc: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80203700: 23 04 04 fa  	sb	zero, -88(s0)
80203704: 0f 00 10 03  	fence	rw, w
80203708: 09 45        	li	a0, 2
8020370a: 88 e8        	sd	a0, 16(s1)
8020370c: 13 05 04 fa  	addi	a0, s0, -96
80203710: 97 10 00 00  	auipc	ra, 1
80203714: e7 80 40 86  	jalr	-1948(ra)
80203718: 05 a0        	j	0x80203738 <.Lpcrel_hi31+0x7c>
8020371a: 85 45        	li	a1, 1
;             match status {
8020371c: 63 1b b5 00  	bne	a0, a1, 0x80203732 <.Lpcrel_hi31+0x76>
80203720: 0f 00 00 01  	fence	w, 0
80203724: 0f 00 30 03  	fence	rw, rw
80203728: 88 68        	ld	a0, 16(s1)
8020372a: 0f 00 30 02  	fence	r, rw
;             match status {
8020372e: e3 09 b5 fe  	beq	a0, a1, 0x80203720 <.Lpcrel_hi31+0x64>
80203732: 89 45        	li	a1, 2
;             match status {
80203734: 63 16 b5 06  	bne	a0, a1, 0x802037a0 <.Lpcrel_hi38+0x28>
;         self.data as Addr
80203738: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
8020373a: 31 81        	srli	a0, a0, 12
8020373c: fd 55        	li	a1, -1
8020373e: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80203740: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80203742: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80203746: 73 00 00 12  	sfence.vma
8020374a: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
8020374e: 23 3c a4 f8  	sd	a0, -104(s0)

0000000080203752 <.Lpcrel_hi36>:
80203752: 17 25 00 00  	auipc	a0, 2
80203756: 13 05 65 f9  	addi	a0, a0, -106
8020375a: 23 30 a4 fa  	sd	a0, -96(s0)
8020375e: 05 45        	li	a0, 1
80203760: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080203764 <.Lpcrel_hi37>:
80203764: 17 25 00 00  	auipc	a0, 2
80203768: 13 05 45 f1  	addi	a0, a0, -236
8020376c: 23 38 a4 fa  	sd	a0, -80(s0)
80203770: 23 3c 04 fa  	sd	zero, -72(s0)
80203774: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203778 <.Lpcrel_hi38>:
80203778: 17 25 00 00  	auipc	a0, 2
8020377c: 93 05 85 04  	addi	a1, a0, 72
80203780: 13 05 84 f9  	addi	a0, s0, -104
80203784: 13 06 04 fa  	addi	a2, s0, -96
80203788: 97 10 00 00  	auipc	ra, 1
8020378c: e7 80 40 af  	jalr	-1292(ra)
80203790: 31 e5        	bnez	a0, 0x802037dc <.Lpcrel_hi39>
; }
80203792: a6 70        	ld	ra, 104(sp)
80203794: 06 74        	ld	s0, 96(sp)
80203796: e6 64        	ld	s1, 88(sp)
80203798: 46 69        	ld	s2, 80(sp)
8020379a: a6 69        	ld	s3, 72(sp)
8020379c: 65 61        	addi	sp, sp, 112
8020379e: 82 80        	ret
;             match status {
802037a0: 05 e1        	bnez	a0, 0x802037c0 <.Lpcrel_hi34>

00000000802037a2 <.Lpcrel_hi32>:
;                 INCOMPLETE => unreachable!(),
802037a2: 17 25 00 00  	auipc	a0, 2
802037a6: 13 05 65 8e  	addi	a0, a0, -1818

00000000802037aa <.Lpcrel_hi33>:
802037aa: 97 25 00 00  	auipc	a1, 2
802037ae: 13 86 65 90  	addi	a2, a1, -1786
802037b2: 93 05 80 02  	li	a1, 40
802037b6: 97 10 00 00  	auipc	ra, 1
802037ba: e7 80 c0 9f  	jalr	-1540(ra)
802037be: 00 00        	unimp	

00000000802037c0 <.Lpcrel_hi34>:
;                 PANICKED => panic!("Once has panicked"),
802037c0: 17 25 00 00  	auipc	a0, 2
802037c4: 13 05 05 84  	addi	a0, a0, -1984

00000000802037c8 <.Lpcrel_hi35>:
802037c8: 97 25 00 00  	auipc	a1, 2
802037cc: 13 86 85 8a  	addi	a2, a1, -1880
802037d0: c5 45        	li	a1, 17
802037d2: 97 10 00 00  	auipc	ra, 1
802037d6: e7 80 00 9e  	jalr	-1568(ra)
802037da: 00 00        	unimp	

00000000802037dc <.Lpcrel_hi39>:
802037dc: 17 25 00 00  	auipc	a0, 2
802037e0: 13 05 45 01  	addi	a0, a0, 20

00000000802037e4 <.Lpcrel_hi40>:
802037e4: 97 25 00 00  	auipc	a1, 2
802037e8: 93 86 c5 03  	addi	a3, a1, 60

00000000802037ec <.Lpcrel_hi41>:
802037ec: 97 25 00 00  	auipc	a1, 2
802037f0: 13 87 45 06  	addi	a4, a1, 100
802037f4: 93 05 b0 02  	li	a1, 43
802037f8: 13 06 04 fd  	addi	a2, s0, -48
802037fc: 97 10 00 00  	auipc	ra, 1
80203800: e7 80 20 a2  	jalr	-1502(ra)
80203804: 00 00        	unimp	

0000000080203806 <main>:
; pub fn main(hartid: usize) {
80203806: 19 71        	addi	sp, sp, -128
80203808: 86 fc        	sd	ra, 120(sp)
8020380a: a2 f8        	sd	s0, 112(sp)
8020380c: a6 f4        	sd	s1, 104(sp)
8020380e: ca f0        	sd	s2, 96(sp)
80203810: ce ec        	sd	s3, 88(sp)
80203812: 00 01        	addi	s0, sp, 128

0000000080203814 <.Lpcrel_hi1>:
80203814: 17 c5 01 00  	auipc	a0, 28
80203818: 13 05 c5 7e  	addi	a0, a0, 2028

000000008020381c <.Lpcrel_hi2>:
8020381c: 97 35 01 00  	auipc	a1, 19
80203820: 93 85 45 7e  	addi	a1, a1, 2020
80203824: 63 f9 a5 00  	bgeu	a1, a0, 0x80203836 <.Lpcrel_hi2+0x1a>
80203828: 13 86 15 00  	addi	a2, a1, 1
8020382c: 23 80 05 00  	sb	zero, 0(a1)
80203830: b2 85        	mv	a1, a2
80203832: e3 6b a6 fe  	bltu	a2, a0, 0x80203828 <.Lpcrel_hi2+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203836: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
80203838: 49 e5        	bnez	a0, 0x802038c2 <.Lpcrel_hi3>

000000008020383a <.Lpcrel_hi4>:
;     println!("{}", LOGO);
8020383a: 17 25 00 00  	auipc	a0, 2
8020383e: 13 05 65 c9  	addi	a0, a0, -874
80203842: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203846 <.Lpcrel_hi5>:
80203846: 17 f5 ff ff  	auipc	a0, 1048575
8020384a: 13 05 05 35  	addi	a0, a0, 848
8020384e: 23 38 a4 f8  	sd	a0, -112(s0)
80203852: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80203856: 23 3c 24 f9  	sd	s2, -104(s0)

000000008020385a <.Lpcrel_hi6>:
8020385a: 17 25 00 00  	auipc	a0, 2
8020385e: 13 05 e5 c8  	addi	a0, a0, -882
80203862: 23 30 a4 fa  	sd	a0, -96(s0)
80203866: 09 45        	li	a0, 2
80203868: 23 34 a4 fa  	sd	a0, -88(s0)
8020386c: 13 05 84 f8  	addi	a0, s0, -120
80203870: 23 38 a4 fa  	sd	a0, -80(s0)
80203874: 85 44        	li	s1, 1
80203876: 23 3c 94 fa  	sd	s1, -72(s0)
8020387a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020387e <.Lpcrel_hi7>:
8020387e: 17 25 00 00  	auipc	a0, 2
80203882: 93 05 25 f4  	addi	a1, a0, -190
80203886: 13 05 84 f9  	addi	a0, s0, -104
8020388a: 13 06 04 fa  	addi	a2, s0, -96
8020388e: 97 10 00 00  	auipc	ra, 1
80203892: e7 80 e0 9e  	jalr	-1554(ra)
80203896: 61 c5        	beqz	a0, 0x8020395e <.Lpcrel_hi52+0x1a>

0000000080203898 <.Lpcrel_hi8>:
80203898: 17 25 00 00  	auipc	a0, 2
8020389c: 13 05 85 f5  	addi	a0, a0, -168

00000000802038a0 <.Lpcrel_hi9>:
802038a0: 97 25 00 00  	auipc	a1, 2
802038a4: 93 86 05 f8  	addi	a3, a1, -128

00000000802038a8 <.Lpcrel_hi10>:
802038a8: 97 25 00 00  	auipc	a1, 2
802038ac: 13 87 85 fa  	addi	a4, a1, -88
802038b0: 93 05 b0 02  	li	a1, 43
802038b4: 13 06 04 fd  	addi	a2, s0, -48
802038b8: 97 10 00 00  	auipc	ra, 1
802038bc: e7 80 60 96  	jalr	-1690(ra)
802038c0: 00 00        	unimp	

00000000802038c2 <.Lpcrel_hi3>:
802038c2: 17 c5 01 00  	auipc	a0, 28
802038c6: 0f 00 30 03  	fence	rw, rw
802038ca: 83 05 65 8d  	lb	a1, -1834(a0)
802038ce: 0f 00 30 02  	fence	r, rw
802038d2: f5 d9        	beqz	a1, 0x802038c6 <.Lpcrel_hi3+0x4>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802038d4: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
802038d6: 23 30 a4 f8  	sd	a0, -128(s0)
802038da: 13 05 04 f8  	addi	a0, s0, -128
802038de: 23 34 a4 f8  	sd	a0, -120(s0)

00000000802038e2 <.Lpcrel_hi47>:
802038e2: 17 15 00 00  	auipc	a0, 1
802038e6: 13 05 45 2d  	addi	a0, a0, 724
802038ea: 23 38 a4 f8  	sd	a0, -112(s0)
802038ee: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
802038f2: 23 3c 24 f9  	sd	s2, -104(s0)

00000000802038f6 <.Lpcrel_hi48>:
802038f6: 17 25 00 00  	auipc	a0, 2
802038fa: 13 05 a5 e1  	addi	a0, a0, -486
802038fe: 23 30 a4 fa  	sd	a0, -96(s0)
80203902: 09 45        	li	a0, 2
80203904: 23 34 a4 fa  	sd	a0, -88(s0)
80203908: 13 05 84 f8  	addi	a0, s0, -120
8020390c: 23 38 a4 fa  	sd	a0, -80(s0)
80203910: 85 44        	li	s1, 1
80203912: 23 3c 94 fa  	sd	s1, -72(s0)
80203916: 23 30 04 fc  	sd	zero, -64(s0)

000000008020391a <.Lpcrel_hi49>:
8020391a: 17 25 00 00  	auipc	a0, 2
8020391e: 93 05 65 ea  	addi	a1, a0, -346
80203922: 13 05 84 f9  	addi	a0, s0, -104
80203926: 13 06 04 fa  	addi	a2, s0, -96
8020392a: 97 10 00 00  	auipc	ra, 1
8020392e: e7 80 20 95  	jalr	-1710(ra)
80203932: 41 cd        	beqz	a0, 0x802039ca <.Lpcrel_hi16+0x1a>

0000000080203934 <.Lpcrel_hi50>:
80203934: 17 25 00 00  	auipc	a0, 2
80203938: 13 05 c5 eb  	addi	a0, a0, -324

000000008020393c <.Lpcrel_hi51>:
8020393c: 97 25 00 00  	auipc	a1, 2
80203940: 93 86 45 ee  	addi	a3, a1, -284

0000000080203944 <.Lpcrel_hi52>:
80203944: 97 25 00 00  	auipc	a1, 2
80203948: 13 87 c5 f0  	addi	a4, a1, -244
8020394c: 93 05 b0 02  	li	a1, 43
80203950: 13 06 04 fd  	addi	a2, s0, -48
80203954: 97 10 00 00  	auipc	ra, 1
80203958: e7 80 a0 8c  	jalr	-1846(ra)
8020395c: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
8020395e: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203962 <.Lpcrel_hi11>:
80203962: 17 25 00 00  	auipc	a0, 2
80203966: 13 05 e5 de  	addi	a0, a0, -530
8020396a: 23 30 a4 fa  	sd	a0, -96(s0)
8020396e: 23 34 94 fa  	sd	s1, -88(s0)

0000000080203972 <.Lpcrel_hi12>:
80203972: 17 25 00 00  	auipc	a0, 2
80203976: 93 04 65 d8  	addi	s1, a0, -634
8020397a: 23 38 94 fa  	sd	s1, -80(s0)
8020397e: 23 3c 04 fa  	sd	zero, -72(s0)
80203982: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203986 <.Lpcrel_hi13>:
80203986: 17 25 00 00  	auipc	a0, 2
8020398a: 93 05 a5 e3  	addi	a1, a0, -454
8020398e: 13 05 84 f8  	addi	a0, s0, -120
80203992: 13 06 04 fa  	addi	a2, s0, -96
80203996: 97 10 00 00  	auipc	ra, 1
8020399a: e7 80 60 8e  	jalr	-1818(ra)
8020399e: 69 c5        	beqz	a0, 0x80203a68 <.Lpcrel_hi58+0x1a>

00000000802039a0 <.Lpcrel_hi14>:
802039a0: 17 25 00 00  	auipc	a0, 2
802039a4: 13 05 05 e5  	addi	a0, a0, -432

00000000802039a8 <.Lpcrel_hi15>:
802039a8: 97 25 00 00  	auipc	a1, 2
802039ac: 93 86 85 e7  	addi	a3, a1, -392

00000000802039b0 <.Lpcrel_hi16>:
802039b0: 97 25 00 00  	auipc	a1, 2
802039b4: 13 87 05 ea  	addi	a4, a1, -352
802039b8: 93 05 b0 02  	li	a1, 43
802039bc: 13 06 04 fd  	addi	a2, s0, -48
802039c0: 97 10 00 00  	auipc	ra, 1
802039c4: e7 80 e0 85  	jalr	-1954(ra)
802039c8: 00 00        	unimp	
;         kvminithart();
802039ca: 97 00 00 00  	auipc	ra, 0
802039ce: e7 80 c0 cd  	jalr	-804(ra)
;         trapinithart();
802039d2: 97 f0 ff ff  	auipc	ra, 1048575
802039d6: e7 80 60 1f  	jalr	502(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802039da: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
802039dc: 93 15 85 00  	slli	a1, a0, 8
802039e0: 37 26 00 0c  	lui	a2, 49154
802039e4: b2 95        	add	a1, a1, a2
802039e6: 13 06 20 40  	li	a2, 1026
802039ea: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802039ee: 36 05        	slli	a0, a0, 13
802039f0: b7 15 20 0c  	lui	a1, 49665
802039f4: 2e 95        	add	a0, a0, a1
802039f6: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
802039fa: 23 34 24 f9  	sd	s2, -120(s0)

00000000802039fe <.Lpcrel_hi53>:
802039fe: 17 25 00 00  	auipc	a0, 2
80203a02: 13 05 a5 91  	addi	a0, a0, -1766
80203a06: 23 30 a4 fa  	sd	a0, -96(s0)
80203a0a: 23 34 94 fa  	sd	s1, -88(s0)

0000000080203a0e <.Lpcrel_hi54>:
80203a0e: 17 25 00 00  	auipc	a0, 2
80203a12: 13 05 25 8f  	addi	a0, a0, -1806
80203a16: 23 38 a4 fa  	sd	a0, -80(s0)
80203a1a: 23 3c 04 fa  	sd	zero, -72(s0)
80203a1e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203a22 <.Lpcrel_hi55>:
80203a22: 17 25 00 00  	auipc	a0, 2
80203a26: 93 05 e5 d9  	addi	a1, a0, -610
80203a2a: 13 05 84 f8  	addi	a0, s0, -120
80203a2e: 13 06 04 fa  	addi	a2, s0, -96
80203a32: 97 10 00 00  	auipc	ra, 1
80203a36: e7 80 a0 84  	jalr	-1974(ra)
80203a3a: 63 08 05 2c  	beqz	a0, 0x80203d0a <.Lpcrel_hi59>

0000000080203a3e <.Lpcrel_hi56>:
80203a3e: 17 25 00 00  	auipc	a0, 2
80203a42: 13 05 25 db  	addi	a0, a0, -590

0000000080203a46 <.Lpcrel_hi57>:
80203a46: 97 25 00 00  	auipc	a1, 2
80203a4a: 93 86 a5 dd  	addi	a3, a1, -550

0000000080203a4e <.Lpcrel_hi58>:
80203a4e: 97 25 00 00  	auipc	a1, 2
80203a52: 13 87 25 e0  	addi	a4, a1, -510
80203a56: 93 05 b0 02  	li	a1, 43
80203a5a: 13 06 04 fd  	addi	a2, s0, -48
80203a5e: 97 00 00 00  	auipc	ra, 0
80203a62: e7 80 00 7c  	jalr	1984(ra)
80203a66: 00 00        	unimp	
80203a68: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
80203a6c: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203a70 <.Lpcrel_hi17>:
80203a70: 17 25 00 00  	auipc	a0, 2
80203a74: 13 05 85 cf  	addi	a0, a0, -776
80203a78: 23 30 a4 fa  	sd	a0, -96(s0)
80203a7c: 05 45        	li	a0, 1
80203a7e: 23 34 a4 fa  	sd	a0, -88(s0)
80203a82: 23 38 94 fa  	sd	s1, -80(s0)
80203a86: 23 3c 04 fa  	sd	zero, -72(s0)
80203a8a: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203a8e <.Lpcrel_hi18>:
80203a8e: 17 25 00 00  	auipc	a0, 2
80203a92: 93 05 25 d3  	addi	a1, a0, -718
80203a96: 13 05 84 f8  	addi	a0, s0, -120
80203a9a: 13 06 04 fa  	addi	a2, s0, -96
80203a9e: 97 00 00 00  	auipc	ra, 0
80203aa2: e7 80 e0 7d  	jalr	2014(ra)
80203aa6: 15 c5        	beqz	a0, 0x80203ad2 <.Lpcrel_hi21+0x1a>

0000000080203aa8 <.Lpcrel_hi19>:
80203aa8: 17 25 00 00  	auipc	a0, 2
80203aac: 13 05 85 d4  	addi	a0, a0, -696

0000000080203ab0 <.Lpcrel_hi20>:
80203ab0: 97 25 00 00  	auipc	a1, 2
80203ab4: 93 86 05 d7  	addi	a3, a1, -656

0000000080203ab8 <.Lpcrel_hi21>:
80203ab8: 97 25 00 00  	auipc	a1, 2
80203abc: 13 87 85 d9  	addi	a4, a1, -616
80203ac0: 93 05 b0 02  	li	a1, 43
80203ac4: 13 06 04 fd  	addi	a2, s0, -48
80203ac8: 97 00 00 00  	auipc	ra, 0
80203acc: e7 80 60 75  	jalr	1878(ra)
80203ad0: 00 00        	unimp	
;         kinit(); 			// 初始化物理页分配器
80203ad2: 97 f0 ff ff  	auipc	ra, 1048575
80203ad6: e7 80 00 57  	jalr	1392(ra)
;         kvminit(); 			// 创建内核页表
80203ada: 97 00 00 00  	auipc	ra, 0
80203ade: e7 80 60 88  	jalr	-1914(ra)
;         kvminithart(); 		// 打开分页管理
80203ae2: 97 00 00 00  	auipc	ra, 0
80203ae6: e7 80 40 bc  	jalr	-1084(ra)

0000000080203aea <.Lpcrel_hi22>:
;         self.0.call_once(builder)
80203aea: 17 65 01 00  	auipc	a0, 22
80203aee: 13 05 e5 89  	addi	a0, a0, -1890
80203af2: 97 f0 ff ff  	auipc	ra, 1048575
80203af6: e7 80 00 b9  	jalr	-1136(ra)
80203afa: 13 05 05 13  	addi	a0, a0, 304
80203afe: 93 05 00 04  	li	a1, 64
80203b02: 37 06 00 04  	lui	a2, 16384
80203b06: 75 36        	addiw	a2, a2, -3
80203b08: 32 06        	slli	a2, a2, 12
80203b0a: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80203b0c: 10 e1        	sd	a2, 0(a0)
80203b0e: 13 05 85 17  	addi	a0, a0, 376
80203b12: fd 15        	addi	a1, a1, -1
80203b14: 36 96        	add	a2, a2, a3
80203b16: fd f9        	bnez	a1, 0x80203b0c <.Lpcrel_hi22+0x22>
80203b18: 13 09 04 fd  	addi	s2, s0, -48
;     Stdout.write_fmt(args).unwrap();
80203b1c: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203b20 <.Lpcrel_hi23>:
80203b20: 17 25 00 00  	auipc	a0, 2
80203b24: 13 05 05 d6  	addi	a0, a0, -672
80203b28: 23 30 a4 fa  	sd	a0, -96(s0)
80203b2c: 85 44        	li	s1, 1
80203b2e: 23 34 94 fa  	sd	s1, -88(s0)

0000000080203b32 <.Lpcrel_hi24>:
80203b32: 17 25 00 00  	auipc	a0, 2
80203b36: 13 05 e5 d5  	addi	a0, a0, -674
80203b3a: 23 38 a4 fa  	sd	a0, -80(s0)
80203b3e: 23 3c 04 fa  	sd	zero, -72(s0)
80203b42: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203b46 <.Lpcrel_hi25>:
80203b46: 17 25 00 00  	auipc	a0, 2
80203b4a: 93 05 a5 c7  	addi	a1, a0, -902
80203b4e: 13 05 84 f8  	addi	a0, s0, -120
80203b52: 13 06 04 fa  	addi	a2, s0, -96
80203b56: 97 00 00 00  	auipc	ra, 0
80203b5a: e7 80 60 72  	jalr	1830(ra)
80203b5e: 15 c5        	beqz	a0, 0x80203b8a <.Lpcrel_hi28+0x1a>

0000000080203b60 <.Lpcrel_hi26>:
80203b60: 17 25 00 00  	auipc	a0, 2
80203b64: 13 05 05 c9  	addi	a0, a0, -880

0000000080203b68 <.Lpcrel_hi27>:
80203b68: 97 25 00 00  	auipc	a1, 2
80203b6c: 93 86 85 cb  	addi	a3, a1, -840

0000000080203b70 <.Lpcrel_hi28>:
80203b70: 97 25 00 00  	auipc	a1, 2
80203b74: 13 87 05 ce  	addi	a4, a1, -800
80203b78: 93 05 b0 02  	li	a1, 43
80203b7c: 13 06 04 fd  	addi	a2, s0, -48
80203b80: 97 00 00 00  	auipc	ra, 0
80203b84: e7 80 e0 69  	jalr	1694(ra)
80203b88: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80203b8a: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203b8e <.Lpcrel_hi29>:
80203b8e: 17 15 00 00  	auipc	a0, 1
80203b92: 13 05 a5 63  	addi	a0, a0, 1594
80203b96: 23 30 a4 fa  	sd	a0, -96(s0)
80203b9a: 23 34 94 fa  	sd	s1, -88(s0)

0000000080203b9e <.Lpcrel_hi30>:
80203b9e: 17 15 00 00  	auipc	a0, 1
80203ba2: 13 05 a5 63  	addi	a0, a0, 1594
80203ba6: 23 38 a4 fa  	sd	a0, -80(s0)
80203baa: 23 3c 04 fa  	sd	zero, -72(s0)
80203bae: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203bb2 <.Lpcrel_hi31>:
80203bb2: 17 25 00 00  	auipc	a0, 2
80203bb6: 93 05 e5 c0  	addi	a1, a0, -1010
80203bba: 13 05 84 f8  	addi	a0, s0, -120
80203bbe: 13 06 04 fa  	addi	a2, s0, -96
80203bc2: 97 00 00 00  	auipc	ra, 0
80203bc6: e7 80 a0 6b  	jalr	1722(ra)
80203bca: 15 c5        	beqz	a0, 0x80203bf6 <.Lpcrel_hi34+0x1a>

0000000080203bcc <.Lpcrel_hi32>:
80203bcc: 17 25 00 00  	auipc	a0, 2
80203bd0: 13 05 45 c2  	addi	a0, a0, -988

0000000080203bd4 <.Lpcrel_hi33>:
80203bd4: 97 25 00 00  	auipc	a1, 2
80203bd8: 93 86 c5 c4  	addi	a3, a1, -948

0000000080203bdc <.Lpcrel_hi34>:
80203bdc: 97 25 00 00  	auipc	a1, 2
80203be0: 13 87 45 c7  	addi	a4, a1, -908
80203be4: 93 05 b0 02  	li	a1, 43
80203be8: 13 06 04 fd  	addi	a2, s0, -48
80203bec: 97 00 00 00  	auipc	ra, 0
80203bf0: e7 80 20 63  	jalr	1586(ra)
80203bf4: 00 00        	unimp	
;         trapinithart(); 	// 设置中断向量
80203bf6: 97 f0 ff ff  	auipc	ra, 1048575
80203bfa: e7 80 20 fd  	jalr	-46(ra)
80203bfe: 37 05 00 0c  	lui	a0, 49152
80203c02: 85 49        	li	s3, 1
80203c04: 23 24 35 03  	sw	s3, 40(a0)
80203c08: 23 22 35 01  	sw	s3, 4(a0)
;     Stdout.write_fmt(args).unwrap();
80203c0c: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203c10 <.Lpcrel_hi35>:
80203c10: 17 15 00 00  	auipc	a0, 1
80203c14: 13 05 05 6e  	addi	a0, a0, 1760
80203c18: 23 30 a4 fa  	sd	a0, -96(s0)
80203c1c: 23 34 34 fb  	sd	s3, -88(s0)

0000000080203c20 <.Lpcrel_hi36>:
80203c20: 17 15 00 00  	auipc	a0, 1
80203c24: 93 04 05 6e  	addi	s1, a0, 1760
80203c28: 23 38 94 fa  	sd	s1, -80(s0)
80203c2c: 23 3c 04 fa  	sd	zero, -72(s0)
80203c30: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203c34 <.Lpcrel_hi37>:
80203c34: 17 25 00 00  	auipc	a0, 2
80203c38: 93 05 c5 b8  	addi	a1, a0, -1140
80203c3c: 13 05 84 f8  	addi	a0, s0, -120
80203c40: 13 06 04 fa  	addi	a2, s0, -96
80203c44: 97 00 00 00  	auipc	ra, 0
80203c48: e7 80 80 63  	jalr	1592(ra)
80203c4c: 15 c5        	beqz	a0, 0x80203c78 <.Lpcrel_hi40+0x1a>

0000000080203c4e <.Lpcrel_hi38>:
80203c4e: 17 25 00 00  	auipc	a0, 2
80203c52: 13 05 25 ba  	addi	a0, a0, -1118

0000000080203c56 <.Lpcrel_hi39>:
80203c56: 97 25 00 00  	auipc	a1, 2
80203c5a: 93 86 a5 bc  	addi	a3, a1, -1078

0000000080203c5e <.Lpcrel_hi40>:
80203c5e: 97 25 00 00  	auipc	a1, 2
80203c62: 13 87 25 bf  	addi	a4, a1, -1038
80203c66: 93 05 b0 02  	li	a1, 43
80203c6a: 13 06 04 fd  	addi	a2, s0, -48
80203c6e: 97 00 00 00  	auipc	ra, 0
80203c72: e7 80 00 5b  	jalr	1456(ra)
80203c76: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203c78: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80203c7a: 93 15 85 00  	slli	a1, a0, 8
80203c7e: 37 26 00 0c  	lui	a2, 49154
80203c82: b2 95        	add	a1, a1, a2
80203c84: 13 06 20 40  	li	a2, 1026
80203c88: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80203c8c: 36 05        	slli	a0, a0, 13
80203c8e: b7 15 20 0c  	lui	a1, 49665
80203c92: 2e 95        	add	a0, a0, a1
80203c94: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80203c98: 23 34 24 f9  	sd	s2, -120(s0)

0000000080203c9c <.Lpcrel_hi41>:
80203c9c: 17 15 00 00  	auipc	a0, 1
80203ca0: 13 05 c5 67  	addi	a0, a0, 1660
80203ca4: 23 30 a4 fa  	sd	a0, -96(s0)
80203ca8: 23 34 34 fb  	sd	s3, -88(s0)
80203cac: 23 38 94 fa  	sd	s1, -80(s0)
80203cb0: 23 3c 04 fa  	sd	zero, -72(s0)
80203cb4: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203cb8 <.Lpcrel_hi42>:
80203cb8: 17 25 00 00  	auipc	a0, 2
80203cbc: 93 05 85 b0  	addi	a1, a0, -1272
80203cc0: 13 05 84 f8  	addi	a0, s0, -120
80203cc4: 13 06 04 fa  	addi	a2, s0, -96
80203cc8: 97 00 00 00  	auipc	ra, 0
80203ccc: e7 80 40 5b  	jalr	1460(ra)
80203cd0: 15 c5        	beqz	a0, 0x80203cfc <.Lpcrel_hi45+0x1a>

0000000080203cd2 <.Lpcrel_hi43>:
80203cd2: 17 25 00 00  	auipc	a0, 2
80203cd6: 13 05 e5 b1  	addi	a0, a0, -1250

0000000080203cda <.Lpcrel_hi44>:
80203cda: 97 25 00 00  	auipc	a1, 2
80203cde: 93 86 65 b4  	addi	a3, a1, -1210

0000000080203ce2 <.Lpcrel_hi45>:
80203ce2: 97 25 00 00  	auipc	a1, 2
80203ce6: 13 87 e5 b6  	addi	a4, a1, -1170
80203cea: 93 05 b0 02  	li	a1, 43
80203cee: 13 06 04 fd  	addi	a2, s0, -48
80203cf2: 97 00 00 00  	auipc	ra, 0
80203cf6: e7 80 c0 52  	jalr	1324(ra)
80203cfa: 00 00        	unimp	
80203cfc: 0f 00 10 03  	fence	rw, w

0000000080203d00 <.Lpcrel_hi46>:
80203d00: 17 b5 01 00  	auipc	a0, 27
80203d04: 85 45        	li	a1, 1
80203d06: 23 0c b5 48  	sb	a1, 1176(a0)

0000000080203d0a <.Lpcrel_hi59>:
80203d0a: 17 25 00 00  	auipc	a0, 2
80203d0e: 13 05 e5 a7  	addi	a0, a0, -1410
80203d12: 23 30 a4 fa  	sd	a0, -96(s0)
80203d16: 05 45        	li	a0, 1
80203d18: 23 34 a4 fa  	sd	a0, -88(s0)
80203d1c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203d20 <.Lpcrel_hi60>:
80203d20: 17 25 00 00  	auipc	a0, 2
80203d24: 13 05 85 9d  	addi	a0, a0, -1576
80203d28: 23 38 a4 fa  	sd	a0, -80(s0)
80203d2c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080203d30 <.Lpcrel_hi61>:
;     panic!("Shutdown!");
80203d30: 17 25 00 00  	auipc	a0, 2
80203d34: 93 05 85 a7  	addi	a1, a0, -1416
80203d38: 13 05 04 fa  	addi	a0, s0, -96
80203d3c: 97 00 00 00  	auipc	ra, 0
80203d40: e7 80 80 44  	jalr	1096(ra)
80203d44: 00 00        	unimp	

0000000080203d46 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h10b932b94db4976aE.llvm.14815820648166838485>:
80203d46: 41 11        	addi	sp, sp, -16
80203d48: 06 e4        	sd	ra, 8(sp)
80203d4a: 22 e0        	sd	s0, 0(sp)
80203d4c: 00 08        	addi	s0, sp, 16
80203d4e: a2 60        	ld	ra, 8(sp)
80203d50: 02 64        	ld	s0, 0(sp)
80203d52: 41 01        	addi	sp, sp, 16
80203d54: 82 80        	ret

0000000080203d56 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485>:
80203d56: 01 11        	addi	sp, sp, -32
80203d58: 06 ec        	sd	ra, 24(sp)
80203d5a: 22 e8        	sd	s0, 16(sp)
80203d5c: 00 10        	addi	s0, sp, 32
80203d5e: 1b 85 05 00  	sext.w	a0, a1
80203d62: 13 06 00 08  	li	a2, 128
80203d66: 23 26 04 fe  	sw	zero, -20(s0)
80203d6a: 63 76 c5 00  	bgeu	a0, a2, 0x80203d76 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x20>
80203d6e: 23 06 b4 fe  	sb	a1, -20(s0)
80203d72: 05 47        	li	a4, 1
80203d74: 71 a0        	j	0x80203e00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xaa>
80203d76: 1b d5 b5 00  	srliw	a0, a1, 11
80203d7a: 19 ed        	bnez	a0, 0x80203d98 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x42>
80203d7c: 13 d5 65 00  	srli	a0, a1, 6
80203d80: 13 65 05 0c  	ori	a0, a0, 192
80203d84: 23 06 a4 fe  	sb	a0, -20(s0)
80203d88: 13 f5 f5 03  	andi	a0, a1, 63
80203d8c: 13 05 05 08  	addi	a0, a0, 128
80203d90: a3 06 a4 fe  	sb	a0, -19(s0)
80203d94: 09 47        	li	a4, 2
80203d96: ad a0        	j	0x80203e00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xaa>
80203d98: 1b d5 05 01  	srliw	a0, a1, 16
80203d9c: 15 e5        	bnez	a0, 0x80203dc8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x72>
80203d9e: 13 d5 c5 00  	srli	a0, a1, 12
80203da2: 13 65 05 0e  	ori	a0, a0, 224
80203da6: 23 06 a4 fe  	sb	a0, -20(s0)
80203daa: 13 95 45 03  	slli	a0, a1, 52
80203dae: 69 91        	srli	a0, a0, 58
80203db0: 13 05 05 08  	addi	a0, a0, 128
80203db4: a3 06 a4 fe  	sb	a0, -19(s0)
80203db8: 13 f5 f5 03  	andi	a0, a1, 63
80203dbc: 13 05 05 08  	addi	a0, a0, 128
80203dc0: 23 07 a4 fe  	sb	a0, -18(s0)
80203dc4: 0d 47        	li	a4, 3
80203dc6: 2d a8        	j	0x80203e00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xaa>
80203dc8: 13 95 b5 02  	slli	a0, a1, 43
80203dcc: 75 91        	srli	a0, a0, 61
80203dce: 13 05 05 0f  	addi	a0, a0, 240
80203dd2: 23 06 a4 fe  	sb	a0, -20(s0)
80203dd6: 13 95 e5 02  	slli	a0, a1, 46
80203dda: 69 91        	srli	a0, a0, 58
80203ddc: 13 05 05 08  	addi	a0, a0, 128
80203de0: a3 06 a4 fe  	sb	a0, -19(s0)
80203de4: 13 95 45 03  	slli	a0, a1, 52
80203de8: 69 91        	srli	a0, a0, 58
80203dea: 13 05 05 08  	addi	a0, a0, 128
80203dee: 23 07 a4 fe  	sb	a0, -18(s0)
80203df2: 13 f5 f5 03  	andi	a0, a1, 63
80203df6: 13 05 05 08  	addi	a0, a0, 128
80203dfa: a3 07 a4 fe  	sb	a0, -17(s0)
80203dfe: 11 47        	li	a4, 4
80203e00: 93 06 c4 fe  	addi	a3, s0, -20
80203e04: 36 97        	add	a4, a4, a3
80203e06: 13 03 f0 0d  	li	t1, 223
80203e0a: 13 08 00 0f  	li	a6, 240
80203e0e: b7 02 11 00  	lui	t0, 272
80203e12: 85 48        	li	a7, 1
80203e14: 01 a8        	j	0x80203e24 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xce>
80203e16: 85 06        	addi	a3, a3, 1
;         asm!(
80203e18: 81 45        	li	a1, 0
80203e1a: 01 46        	li	a2, 0
80203e1c: 73 00 00 00  	ecall	
80203e20: 63 8f e6 04  	beq	a3, a4, 0x80203e7e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x128>
80203e24: 83 85 06 00  	lb	a1, 0(a3)
80203e28: 13 f5 f5 0f  	andi	a0, a1, 255
80203e2c: e3 d5 05 fe  	bgez	a1, 0x80203e16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xc0>
80203e30: 03 c6 16 00  	lbu	a2, 1(a3)
80203e34: 93 75 f5 01  	andi	a1, a0, 31
80203e38: 13 76 f6 03  	andi	a2, a2, 63
80203e3c: 63 77 a3 02  	bgeu	t1, a0, 0x80203e6a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x114>
80203e40: 83 c7 26 00  	lbu	a5, 2(a3)
80203e44: 1a 06        	slli	a2, a2, 6
80203e46: 93 f7 f7 03  	andi	a5, a5, 63
80203e4a: 5d 8e        	or	a2, a2, a5
80203e4c: 63 64 05 03  	bltu	a0, a6, 0x80203e74 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x11e>
80203e50: 03 c5 36 00  	lbu	a0, 3(a3)
80203e54: f6 15        	slli	a1, a1, 61
80203e56: ad 91        	srli	a1, a1, 43
80203e58: 1a 06        	slli	a2, a2, 6
80203e5a: 13 75 f5 03  	andi	a0, a0, 63
80203e5e: 51 8d        	or	a0, a0, a2
80203e60: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203e62: 63 0e 55 00  	beq	a0, t0, 0x80203e7e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0x128>
80203e66: 91 06        	addi	a3, a3, 4
80203e68: 45 bf        	j	0x80203e18 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xc2>
80203e6a: 89 06        	addi	a3, a3, 2
80203e6c: 13 95 65 00  	slli	a0, a1, 6
80203e70: 51 8d        	or	a0, a0, a2
80203e72: 5d b7        	j	0x80203e18 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xc2>
80203e74: 8d 06        	addi	a3, a3, 3
80203e76: 13 95 c5 00  	slli	a0, a1, 12
80203e7a: 51 8d        	or	a0, a0, a2
80203e7c: 71 bf        	j	0x80203e18 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1919765def1fac9aE.llvm.14815820648166838485+0xc2>
80203e7e: 01 45        	li	a0, 0
80203e80: e2 60        	ld	ra, 24(sp)
80203e82: 42 64        	ld	s0, 16(sp)
80203e84: 05 61        	addi	sp, sp, 32
80203e86: 82 80        	ret

0000000080203e88 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hcc8962fd8c530725E.llvm.14815820648166838485>:
80203e88: 5d 71        	addi	sp, sp, -80
80203e8a: 86 e4        	sd	ra, 72(sp)
80203e8c: a2 e0        	sd	s0, 64(sp)
80203e8e: 80 08        	addi	s0, sp, 80
80203e90: 90 75        	ld	a2, 40(a1)
80203e92: 94 71        	ld	a3, 32(a1)
80203e94: 98 6d        	ld	a4, 24(a1)
80203e96: 23 34 c4 fe  	sd	a2, -24(s0)
80203e9a: 23 30 d4 fe  	sd	a3, -32(s0)
80203e9e: 23 3c e4 fc  	sd	a4, -40(s0)
80203ea2: 90 69        	ld	a2, 16(a1)
80203ea4: 94 65        	ld	a3, 8(a1)
80203ea6: 8c 61        	ld	a1, 0(a1)
80203ea8: 08 61        	ld	a0, 0(a0)
80203eaa: 23 38 c4 fc  	sd	a2, -48(s0)
80203eae: 23 34 d4 fc  	sd	a3, -56(s0)
80203eb2: 23 30 b4 fc  	sd	a1, -64(s0)
80203eb6: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080203eba <.Lpcrel_hi0>:
80203eba: 17 25 00 00  	auipc	a0, 2
80203ebe: 93 05 65 90  	addi	a1, a0, -1786
80203ec2: 13 05 84 fb  	addi	a0, s0, -72
80203ec6: 13 06 04 fc  	addi	a2, s0, -64
80203eca: 97 00 00 00  	auipc	ra, 0
80203ece: e7 80 20 3b  	jalr	946(ra)
80203ed2: a6 60        	ld	ra, 72(sp)
80203ed4: 06 64        	ld	s0, 64(sp)
80203ed6: 61 61        	addi	sp, sp, 80
80203ed8: 82 80        	ret

0000000080203eda <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485>:
80203eda: 41 11        	addi	sp, sp, -16
80203edc: 06 e4        	sd	ra, 8(sp)
80203ede: 22 e0        	sd	s0, 0(sp)
80203ee0: 00 08        	addi	s0, sp, 16
80203ee2: 41 c2        	beqz	a2, 0x80203f62 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x88>
80203ee4: ae 86        	mv	a3, a1
80203ee6: 33 87 c5 00  	add	a4, a1, a2
80203eea: 13 03 f0 0d  	li	t1, 223
80203eee: 13 08 00 0f  	li	a6, 240
80203ef2: b7 02 11 00  	lui	t0, 272
80203ef6: 85 48        	li	a7, 1
80203ef8: 01 a8        	j	0x80203f08 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x2e>
80203efa: 85 06        	addi	a3, a3, 1
;         asm!(
80203efc: 81 45        	li	a1, 0
80203efe: 01 46        	li	a2, 0
80203f00: 73 00 00 00  	ecall	
80203f04: 63 8f e6 04  	beq	a3, a4, 0x80203f62 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x88>
80203f08: 83 85 06 00  	lb	a1, 0(a3)
80203f0c: 13 f5 f5 0f  	andi	a0, a1, 255
80203f10: e3 d5 05 fe  	bgez	a1, 0x80203efa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x20>
80203f14: 03 c6 16 00  	lbu	a2, 1(a3)
80203f18: 93 75 f5 01  	andi	a1, a0, 31
80203f1c: 13 76 f6 03  	andi	a2, a2, 63
80203f20: 63 77 a3 02  	bgeu	t1, a0, 0x80203f4e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x74>
80203f24: 83 c7 26 00  	lbu	a5, 2(a3)
80203f28: 1a 06        	slli	a2, a2, 6
80203f2a: 93 f7 f7 03  	andi	a5, a5, 63
80203f2e: 5d 8e        	or	a2, a2, a5
80203f30: 63 64 05 03  	bltu	a0, a6, 0x80203f58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x7e>
80203f34: 03 c5 36 00  	lbu	a0, 3(a3)
80203f38: f6 15        	slli	a1, a1, 61
80203f3a: ad 91        	srli	a1, a1, 43
80203f3c: 1a 06        	slli	a2, a2, 6
80203f3e: 13 75 f5 03  	andi	a0, a0, 63
80203f42: 51 8d        	or	a0, a0, a2
80203f44: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203f46: 63 0e 55 00  	beq	a0, t0, 0x80203f62 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x88>
80203f4a: 91 06        	addi	a3, a3, 4
80203f4c: 45 bf        	j	0x80203efc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x22>
80203f4e: 89 06        	addi	a3, a3, 2
80203f50: 13 95 65 00  	slli	a0, a1, 6
80203f54: 51 8d        	or	a0, a0, a2
80203f56: 5d b7        	j	0x80203efc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x22>
80203f58: 8d 06        	addi	a3, a3, 3
80203f5a: 13 95 c5 00  	slli	a0, a1, 12
80203f5e: 51 8d        	or	a0, a0, a2
80203f60: 71 bf        	j	0x80203efc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d001c302b8f519bE.llvm.14815820648166838485+0x22>
80203f62: 01 45        	li	a0, 0
80203f64: a2 60        	ld	ra, 8(sp)
80203f66: 02 64        	ld	s0, 0(sp)
80203f68: 41 01        	addi	sp, sp, 16
80203f6a: 82 80        	ret

0000000080203f6c <__rust_dealloc>:
80203f6c: 17 f3 ff ff  	auipc	t1, 1048575
80203f70: 67 00 a3 ec  	jr	-310(t1)

0000000080203f74 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80203f74: 41 11        	addi	sp, sp, -16
80203f76: 06 e4        	sd	ra, 8(sp)
80203f78: 22 e0        	sd	s0, 0(sp)
80203f7a: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80203f7c: 83 45 85 00  	lbu	a1, 8(a0)
80203f80: 91 c5        	beqz	a1, 0x80203f8c <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80203f82: 08 61        	ld	a0, 0(a0)
80203f84: 0f 00 10 03  	fence	rw, w
80203f88: 8d 45        	li	a1, 3
80203f8a: 0c e1        	sd	a1, 0(a0)
;     }
80203f8c: a2 60        	ld	ra, 8(sp)
80203f8e: 02 64        	ld	s0, 0(sp)
80203f90: 41 01        	addi	sp, sp, 16
80203f92: 82 80        	ret

0000000080203f94 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80203f94: 41 11        	addi	sp, sp, -16
80203f96: 06 e4        	sd	ra, 8(sp)
80203f98: 22 e0        	sd	s0, 0(sp)
80203f9a: 00 08        	addi	s0, sp, 16
80203f9c: 89 47        	li	a5, 2
80203f9e: 05 47        	li	a4, 1
80203fa0: 63 fa f6 0a  	bgeu	a3, a5, 0x80204054 <.Lpcrel_hi33+0x8e>
80203fa4: 63 78 c7 12  	bgeu	a4, a2, 0x802040d4 <.Lpcrel_hi31+0x24>
80203fa8: 21 47        	li	a4, 8
80203faa: 63 79 c7 12  	bgeu	a4, a2, 0x802040dc <.Lpcrel_hi31+0x2c>
80203fae: 63 0a 06 12  	beqz	a2, 0x802040e2 <.Lpcrel_hi31+0x32>

0000000080203fb2 <.Lpcrel_hi32>:
80203fb2: 17 27 00 00  	auipc	a4, 2
80203fb6: 03 37 67 0e  	ld	a4, 230(a4)
80203fba: b3 07 c0 40  	neg	a5, a2
80203fbe: f1 8f        	and	a5, a5, a2
80203fc0: 33 87 e7 02  	mul	a4, a5, a4
80203fc4: 69 93        	srli	a4, a4, 58

0000000080203fc6 <.Lpcrel_hi33>:
80203fc6: 97 27 00 00  	auipc	a5, 2
80203fca: 93 87 a7 98  	addi	a5, a5, -1654
80203fce: 3e 97        	add	a4, a4, a5
80203fd0: 03 43 07 00  	lbu	t1, 0(a4)
80203fd4: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80203fd6: 63 6b 68 10  	bltu	a6, t1, 0x802040ec <.Lpcrel_hi34>
80203fda: 13 17 33 00  	slli	a4, t1, 3
80203fde: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
80203fe0: 1c 63        	ld	a5, 0(a4)
80203fe2: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80203fe4: 0c e3        	sd	a1, 0(a4)
80203fe6: 85 48        	li	a7, 1
80203fe8: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80203fea: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
80203fee: 93 13 33 00  	slli	t2, t1, 3
80203ff2: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80203ff4: 33 ce e2 00  	xor	t3, t0, a4
80203ff8: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
80203ffa: 9d cd        	beqz	a1, 0x80204038 <.Lpcrel_hi33+0x72>
80203ffc: ae 87        	mv	a5, a1
80203ffe: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80204000: 8c 61        	ld	a1, 0(a1)
80204002: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80204004: e3 1b fe fe  	bne	t3, a5, 0x80203ffa <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
80204008: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
8020400c: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80204010: 81 c5        	beqz	a1, 0x80204018 <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
80204012: 8c 61        	ld	a1, 0(a1)
80204014: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80204018: 63 06 03 0f  	beq	t1, a6, 0x80204104 <.Lpcrel_hi35>
8020401c: 63 e3 c2 01  	bltu	t0, t3, 0x80204022 <.Lpcrel_hi33+0x5c>
80204020: f2 82        	mv	t0, t3
80204022: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80204024: 93 15 33 00  	slli	a1, t1, 3
80204028: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
8020402a: 98 61        	ld	a4, 0(a1)
8020402c: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80204030: 23 b0 55 00  	sd	t0, 0(a1)
80204034: 96 85        	mv	a1, t0
80204036: 55 bf        	j	0x80203fea <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
80204038: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
8020403c: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80204040: 95 8d        	sub	a1, a1, a3
80204042: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
80204046: 11 8f        	sub	a4, a4, a2
80204048: 23 34 e5 10  	sd	a4, 264(a0)
;     }
8020404c: a2 60        	ld	ra, 8(sp)
8020404e: 02 64        	ld	s0, 0(sp)
80204050: 41 01        	addi	sp, sp, 16
80204052: 82 80        	ret
80204054: 13 87 f6 ff  	addi	a4, a3, -1
80204058: 93 57 17 00  	srli	a5, a4, 1
8020405c: 5d 8f        	or	a4, a4, a5
8020405e: 93 57 27 00  	srli	a5, a4, 2
80204062: 5d 8f        	or	a4, a4, a5
80204064: 93 57 47 00  	srli	a5, a4, 4
80204068: 5d 8f        	or	a4, a4, a5
8020406a: 93 57 87 00  	srli	a5, a4, 8
8020406e: 5d 8f        	or	a4, a4, a5
80204070: 93 57 07 01  	srli	a5, a4, 16
80204074: 5d 8f        	or	a4, a4, a5
80204076: 93 57 07 02  	srli	a5, a4, 32
8020407a: 5d 8f        	or	a4, a4, a5
8020407c: 93 48 f7 ff  	not	a7, a4

0000000080204080 <.Lpcrel_hi28>:
80204080: 97 27 00 00  	auipc	a5, 2
80204084: 03 b8 87 ff  	ld	a6, -8(a5)

0000000080204088 <.Lpcrel_hi29>:
80204088: 97 27 00 00  	auipc	a5, 2
8020408c: 83 b7 87 ff  	ld	a5, -8(a5)
80204090: 13 d7 18 00  	srli	a4, a7, 1
80204094: 33 77 07 01  	and	a4, a4, a6
80204098: 33 87 e8 40  	sub	a4, a7, a4
8020409c: 33 78 f7 00  	and	a6, a4, a5
802040a0: 09 83        	srli	a4, a4, 2
802040a2: 7d 8f        	and	a4, a4, a5
802040a4: b3 08 e8 00  	add	a7, a6, a4

00000000802040a8 <.Lpcrel_hi30>:
802040a8: 97 27 00 00  	auipc	a5, 2
802040ac: 03 b8 07 fe  	ld	a6, -32(a5)

00000000802040b0 <.Lpcrel_hi31>:
802040b0: 97 27 00 00  	auipc	a5, 2
802040b4: 83 b7 07 fe  	ld	a5, -32(a5)
802040b8: 13 d7 48 00  	srli	a4, a7, 4
802040bc: 46 97        	add	a4, a4, a7
802040be: 33 77 07 01  	and	a4, a4, a6
802040c2: 33 07 f7 02  	mul	a4, a4, a5
802040c6: 61 93        	srli	a4, a4, 56
802040c8: fd 57        	li	a5, -1
802040ca: 33 d7 e7 00  	srl	a4, a5, a4
802040ce: 05 07        	addi	a4, a4, 1
802040d0: e3 6c c7 ec  	bltu	a4, a2, 0x80203fa8 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
802040d4: 3a 86        	mv	a2, a4
802040d6: 21 47        	li	a4, 8
802040d8: e3 6b c7 ec  	bltu	a4, a2, 0x80203fae <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
802040dc: 21 46        	li	a2, 8
802040de: e3 1a 06 ec  	bnez	a2, 0x80203fb2 <.Lpcrel_hi32>
802040e2: 13 03 00 04  	li	t1, 64
802040e6: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
802040e8: e3 79 68 ee  	bgeu	a6, t1, 0x80203fda <.Lpcrel_hi33+0x14>

00000000802040ec <.Lpcrel_hi34>:
802040ec: 17 25 00 00  	auipc	a0, 2
802040f0: 13 06 45 91  	addi	a2, a0, -1772
802040f4: 93 05 00 02  	li	a1, 32
802040f8: 1a 85        	mv	a0, t1
802040fa: 97 00 00 00  	auipc	ra, 0
802040fe: e7 80 40 0e  	jalr	228(ra)
80204102: 00 00        	unimp	

0000000080204104 <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80204104: 17 25 00 00  	auipc	a0, 2
80204108: 13 06 45 91  	addi	a2, a0, -1772
8020410c: 13 05 00 02  	li	a0, 32
80204110: 93 05 00 02  	li	a1, 32
80204114: 97 00 00 00  	auipc	ra, 0
80204118: e7 80 a0 0c  	jalr	202(ra)
8020411c: 00 00        	unimp	

000000008020411e <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
8020411e: 01 11        	addi	sp, sp, -32
80204120: 06 ec        	sd	ra, 24(sp)
80204122: 22 e8        	sd	s0, 16(sp)
80204124: 26 e4        	sd	s1, 8(sp)
80204126: 4a e0        	sd	s2, 0(sp)
80204128: 00 10        	addi	s0, sp, 32
8020412a: aa 84        	mv	s1, a0
8020412c: 05 45        	li	a0, 1
8020412e: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80204132: 88 64        	ld	a0, 8(s1)
80204134: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80204138: 63 09 25 01  	beq	a0, s2, 0x8020414a <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
8020413c: 0f 00 00 01  	fence	w, 0
80204140: 88 64        	ld	a0, 8(s1)
80204142: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80204146: e3 1b 25 ff  	bne	a0, s2, 0x8020413c <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
8020414a: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
8020414e: 97 00 00 00  	auipc	ra, 0
80204152: e7 80 60 e4  	jalr	-442(ra)
;         let new_ticket = self.ticket + 1;
80204156: 05 09        	addi	s2, s2, 1
80204158: 0f 00 10 03  	fence	rw, w
8020415c: 23 b4 24 01  	sd	s2, 8(s1)
;     }
80204160: e2 60        	ld	ra, 24(sp)
80204162: 42 64        	ld	s0, 16(sp)
80204164: a2 64        	ld	s1, 8(sp)
80204166: 02 69        	ld	s2, 0(sp)
80204168: 05 61        	addi	sp, sp, 32
8020416a: 82 80        	ret

000000008020416c <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
8020416c: 08 61        	ld	a0, 0(a0)
8020416e: 01 a0        	j	0x8020416e <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

0000000080204170 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
80204170: 82 80        	ret

0000000080204172 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
80204172: 17 25 00 00  	auipc	a0, 2
80204176: 03 35 65 06  	ld	a0, 102(a0)
8020417a: 82 80        	ret

000000008020417c <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
8020417c: 08 6d        	ld	a0, 24(a0)
8020417e: 82 80        	ret

0000000080204180 <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
80204180: 08 69        	ld	a0, 16(a0)
80204182: 82 80        	ret

0000000080204184 <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
80204184: 79 71        	addi	sp, sp, -48
80204186: 06 f4        	sd	ra, 40(sp)

0000000080204188 <.Lpcrel_hi466>:
80204188: 17 26 00 00  	auipc	a2, 2
8020418c: 13 06 86 8a  	addi	a2, a2, -1880
80204190: 32 e0        	sd	a2, 0(sp)

0000000080204192 <.Lpcrel_hi467>:
80204192: 17 26 00 00  	auipc	a2, 2
80204196: 13 06 e6 8b  	addi	a2, a2, -1858
8020419a: 32 e4        	sd	a2, 8(sp)
8020419c: 2a ec        	sd	a0, 24(sp)
8020419e: 2e e8        	sd	a1, 16(sp)
802041a0: 05 45        	li	a0, 1
802041a2: 23 00 a1 02  	sb	a0, 32(sp)
802041a6: 0a 85        	mv	a0, sp
802041a8: 97 f0 ff ff  	auipc	ra, 1048575
802041ac: e7 80 e0 aa  	jalr	-1362(ra)
802041b0: 00 00        	unimp	

00000000802041b2 <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
802041b2: 5d 71        	addi	sp, sp, -80
802041b4: 86 e4        	sd	ra, 72(sp)
802041b6: 2a fc        	sd	a0, 56(sp)
802041b8: ae e0        	sd	a1, 64(sp)
802041ba: 28 18        	addi	a0, sp, 56
802041bc: 2a e4        	sd	a0, 8(sp)
802041be: 05 45        	li	a0, 1
802041c0: 2a e8        	sd	a0, 16(sp)
802041c2: 02 f4        	sd	zero, 40(sp)

00000000802041c4 <.Lpcrel_hi470>:
802041c4: 17 25 00 00  	auipc	a0, 2
802041c8: 13 05 c5 86  	addi	a0, a0, -1940
802041cc: 2a ec        	sd	a0, 24(sp)
802041ce: 02 f0        	sd	zero, 32(sp)
802041d0: 28 00        	addi	a0, sp, 8
802041d2: b2 85        	mv	a1, a2
802041d4: 97 00 00 00  	auipc	ra, 0
802041d8: e7 80 00 fb  	jalr	-80(ra)
802041dc: 00 00        	unimp	

00000000802041de <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
802041de: 59 71        	addi	sp, sp, -112
802041e0: 86 f4        	sd	ra, 104(sp)
802041e2: 2a e4        	sd	a0, 8(sp)
802041e4: 2e e8        	sd	a1, 16(sp)
802041e6: 08 08        	addi	a0, sp, 16
802041e8: aa e4        	sd	a0, 72(sp)

00000000802041ea <.Lpcrel_hi473>:
802041ea: 17 15 00 00  	auipc	a0, 1
802041ee: 13 05 c5 9c  	addi	a0, a0, -1588
802041f2: aa e8        	sd	a0, 80(sp)
802041f4: 2c 00        	addi	a1, sp, 8
802041f6: ae ec        	sd	a1, 88(sp)
802041f8: aa f0        	sd	a0, 96(sp)

00000000802041fa <.Lpcrel_hi474>:
802041fa: 17 25 00 00  	auipc	a0, 2
802041fe: 13 05 e5 88  	addi	a0, a0, -1906
80204202: 2a ec        	sd	a0, 24(sp)
80204204: 09 45        	li	a0, 2
80204206: 2a f0        	sd	a0, 32(sp)
80204208: 02 fc        	sd	zero, 56(sp)
8020420a: ac 00        	addi	a1, sp, 72
8020420c: 2e f4        	sd	a1, 40(sp)
8020420e: 2a f8        	sd	a0, 48(sp)
80204210: 28 08        	addi	a0, sp, 24
80204212: b2 85        	mv	a1, a2
80204214: 97 00 00 00  	auipc	ra, 0
80204218: e7 80 00 f7  	jalr	-144(ra)
8020421c: 00 00        	unimp	

000000008020421e <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
8020421e: 19 71        	addi	sp, sp, -128
80204220: 86 fc        	sd	ra, 120(sp)
80204222: 2a e4        	sd	a0, 8(sp)
80204224: 2e e8        	sd	a1, 16(sp)
80204226: 32 ec        	sd	a2, 24(sp)
80204228: 36 f0        	sd	a3, 32(sp)
8020422a: 28 00        	addi	a0, sp, 8
8020422c: aa ec        	sd	a0, 88(sp)

000000008020422e <.Lpcrel_hi495>:
8020422e: 17 15 00 00  	auipc	a0, 1
80204232: 13 05 05 9b  	addi	a0, a0, -1616
80204236: aa f0        	sd	a0, 96(sp)
80204238: 28 08        	addi	a0, sp, 24
8020423a: aa f4        	sd	a0, 104(sp)

000000008020423c <.Lpcrel_hi496>:
8020423c: 17 15 00 00  	auipc	a0, 1
80204240: 13 05 a5 99  	addi	a0, a0, -1638
80204244: aa f8        	sd	a0, 112(sp)

0000000080204246 <.Lpcrel_hi497>:
80204246: 17 25 00 00  	auipc	a0, 2
8020424a: 13 05 a5 86  	addi	a0, a0, -1942
8020424e: 2a f4        	sd	a0, 40(sp)
80204250: 09 45        	li	a0, 2
80204252: 2a f8        	sd	a0, 48(sp)
80204254: 82 e4        	sd	zero, 72(sp)
80204256: ac 08        	addi	a1, sp, 88
80204258: 2e fc        	sd	a1, 56(sp)
8020425a: aa e0        	sd	a0, 64(sp)
8020425c: 28 10        	addi	a0, sp, 40
8020425e: ba 85        	mv	a1, a4
80204260: 97 00 00 00  	auipc	ra, 0
80204264: e7 80 40 f2  	jalr	-220(ra)
80204268: 00 00        	unimp	

000000008020426a <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
8020426a: 90 71        	ld	a2, 32(a1)
8020426c: 8c 75        	ld	a1, 40(a1)
8020426e: aa 86        	mv	a3, a0
80204270: 32 85        	mv	a0, a2
80204272: 36 86        	mv	a2, a3
80204274: 17 03 00 00  	auipc	t1, 0
80204278: 67 00 83 00  	jr	8(t1)

000000008020427c <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
8020427c: 19 71        	addi	sp, sp, -128
8020427e: 86 fc        	sd	ra, 120(sp)
80204280: a2 f8        	sd	s0, 112(sp)
80204282: a6 f4        	sd	s1, 104(sp)
80204284: ca f0        	sd	s2, 96(sp)
80204286: ce ec        	sd	s3, 88(sp)
80204288: d2 e8        	sd	s4, 80(sp)
8020428a: d6 e4        	sd	s5, 72(sp)
8020428c: da e0        	sd	s6, 64(sp)
8020428e: b2 89        	mv	s3, a2
80204290: 13 06 00 02  	li	a2, 32
80204294: 32 f8        	sd	a2, 48(sp)
80204296: 0d 46        	li	a2, 3
80204298: 23 0c c1 02  	sb	a2, 56(sp)
8020429c: 03 b4 09 02  	ld	s0, 32(s3)
802042a0: 02 e0        	sd	zero, 0(sp)
802042a2: 02 e8        	sd	zero, 16(sp)
802042a4: 2a f0        	sd	a0, 32(sp)
802042a6: 2e f4        	sd	a1, 40(sp)
802042a8: 61 c0        	beqz	s0, 0x80204368 <.Lpcrel_hi670+0x98>
802042aa: 03 b5 89 02  	ld	a0, 40(s3)
802042ae: 63 07 05 10  	beqz	a0, 0x802043bc <.Lpcrel_hi670+0xec>
802042b2: 83 b4 09 00  	ld	s1, 0(s3)
802042b6: 93 05 f5 ff  	addi	a1, a0, -1
802042ba: 8e 05        	slli	a1, a1, 3
802042bc: 8d 81        	srli	a1, a1, 3
802042be: 13 89 15 00  	addi	s2, a1, 1
802042c2: a1 04        	addi	s1, s1, 8
802042c4: 93 05 80 03  	li	a1, 56
802042c8: 33 0a b5 02  	mul	s4, a0, a1
802042cc: 61 04        	addi	s0, s0, 24
802042ce: 85 4a        	li	s5, 1

00000000802042d0 <.Lpcrel_hi670>:
802042d0: 17 05 00 00  	auipc	a0, 0
802042d4: 13 0b c5 e9  	addi	s6, a0, -356
802042d8: 90 60        	ld	a2, 0(s1)
802042da: 01 ca        	beqz	a2, 0x802042ea <.Lpcrel_hi670+0x1a>
802042dc: a2 76        	ld	a3, 40(sp)
802042de: 02 75        	ld	a0, 32(sp)
802042e0: 83 b5 84 ff  	ld	a1, -8(s1)
802042e4: 94 6e        	ld	a3, 24(a3)
802042e6: 82 96        	jalr	a3
802042e8: 65 ed        	bnez	a0, 0x802043e0 <.Lpcrel_hi670+0x110>
802042ea: 08 48        	lw	a0, 16(s0)
802042ec: 2a d8        	sw	a0, 48(sp)
802042ee: 03 05 84 01  	lb	a0, 24(s0)
802042f2: 23 0c a1 02  	sb	a0, 56(sp)
802042f6: 4c 48        	lw	a1, 20(s0)
802042f8: 03 b5 09 01  	ld	a0, 16(s3)
802042fc: 2e da        	sw	a1, 52(sp)
802042fe: 03 36 84 ff  	ld	a2, -8(s0)
80204302: 0c 60        	ld	a1, 0(s0)
80204304: 01 ce        	beqz	a2, 0x8020431c <.Lpcrel_hi670+0x4c>
80204306: 63 17 56 01  	bne	a2, s5, 0x80204314 <.Lpcrel_hi670+0x44>
8020430a: 92 05        	slli	a1, a1, 4
8020430c: aa 95        	add	a1, a1, a0
8020430e: 90 65        	ld	a2, 8(a1)
80204310: 63 04 66 01  	beq	a2, s6, 0x80204318 <.Lpcrel_hi670+0x48>
80204314: 01 46        	li	a2, 0
80204316: 21 a0        	j	0x8020431e <.Lpcrel_hi670+0x4e>
80204318: 8c 61        	ld	a1, 0(a1)
8020431a: 8c 61        	ld	a1, 0(a1)
8020431c: 05 46        	li	a2, 1
8020431e: 32 e0        	sd	a2, 0(sp)
80204320: 2e e4        	sd	a1, 8(sp)
80204322: 03 36 84 fe  	ld	a2, -24(s0)
80204326: 83 35 04 ff  	ld	a1, -16(s0)
8020432a: 01 ce        	beqz	a2, 0x80204342 <.Lpcrel_hi670+0x72>
8020432c: 63 17 56 01  	bne	a2, s5, 0x8020433a <.Lpcrel_hi670+0x6a>
80204330: 92 05        	slli	a1, a1, 4
80204332: aa 95        	add	a1, a1, a0
80204334: 90 65        	ld	a2, 8(a1)
80204336: 63 04 66 01  	beq	a2, s6, 0x8020433e <.Lpcrel_hi670+0x6e>
8020433a: 01 46        	li	a2, 0
8020433c: 21 a0        	j	0x80204344 <.Lpcrel_hi670+0x74>
8020433e: 8c 61        	ld	a1, 0(a1)
80204340: 8c 61        	ld	a1, 0(a1)
80204342: 05 46        	li	a2, 1
80204344: 32 e8        	sd	a2, 16(sp)
80204346: 2e ec        	sd	a1, 24(sp)
80204348: 0c 64        	ld	a1, 8(s0)
8020434a: 92 05        	slli	a1, a1, 4
8020434c: 2e 95        	add	a0, a0, a1
8020434e: 10 65        	ld	a2, 8(a0)
80204350: 08 61        	ld	a0, 0(a0)
80204352: 8a 85        	mv	a1, sp
80204354: 02 96        	jalr	a2
80204356: 49 e5        	bnez	a0, 0x802043e0 <.Lpcrel_hi670+0x110>
80204358: c1 04        	addi	s1, s1, 16
8020435a: 13 0a 8a fc  	addi	s4, s4, -56
8020435e: 13 04 84 03  	addi	s0, s0, 56
80204362: e3 1b 0a f6  	bnez	s4, 0x802042d8 <.Lpcrel_hi670+0x8>
80204366: b1 a0        	j	0x802043b2 <.Lpcrel_hi670+0xe2>
80204368: 03 ba 89 01  	ld	s4, 24(s3)
8020436c: 63 08 0a 04  	beqz	s4, 0x802043bc <.Lpcrel_hi670+0xec>
80204370: 83 b4 09 01  	ld	s1, 16(s3)
80204374: 03 b4 09 00  	ld	s0, 0(s3)
80204378: 13 05 fa ff  	addi	a0, s4, -1
8020437c: 12 05        	slli	a0, a0, 4
8020437e: 11 81        	srli	a0, a0, 4
80204380: 13 09 15 00  	addi	s2, a0, 1
80204384: 21 04        	addi	s0, s0, 8
80204386: 12 0a        	slli	s4, s4, 4
80204388: a1 04        	addi	s1, s1, 8
8020438a: 10 60        	ld	a2, 0(s0)
8020438c: 01 ca        	beqz	a2, 0x8020439c <.Lpcrel_hi670+0xcc>
8020438e: a2 76        	ld	a3, 40(sp)
80204390: 02 75        	ld	a0, 32(sp)
80204392: 83 35 84 ff  	ld	a1, -8(s0)
80204396: 94 6e        	ld	a3, 24(a3)
80204398: 82 96        	jalr	a3
8020439a: 39 e1        	bnez	a0, 0x802043e0 <.Lpcrel_hi670+0x110>
8020439c: 90 60        	ld	a2, 0(s1)
8020439e: 03 b5 84 ff  	ld	a0, -8(s1)
802043a2: 8a 85        	mv	a1, sp
802043a4: 02 96        	jalr	a2
802043a6: 0d ed        	bnez	a0, 0x802043e0 <.Lpcrel_hi670+0x110>
802043a8: 41 04        	addi	s0, s0, 16
802043aa: 41 1a        	addi	s4, s4, -16
802043ac: c1 04        	addi	s1, s1, 16
802043ae: e3 1e 0a fc  	bnez	s4, 0x8020438a <.Lpcrel_hi670+0xba>
802043b2: 03 b5 89 00  	ld	a0, 8(s3)
802043b6: 63 68 a9 00  	bltu	s2, a0, 0x802043c6 <.Lpcrel_hi670+0xf6>
802043ba: 2d a0        	j	0x802043e4 <.Lpcrel_hi670+0x114>
802043bc: 01 49        	li	s2, 0
802043be: 03 b5 89 00  	ld	a0, 8(s3)
802043c2: 63 71 a9 02  	bgeu	s2, a0, 0x802043e4 <.Lpcrel_hi670+0x114>
802043c6: 03 b5 09 00  	ld	a0, 0(s3)
802043ca: 12 09        	slli	s2, s2, 4
802043cc: 2a 99        	add	s2, s2, a0
802043ce: a2 76        	ld	a3, 40(sp)
802043d0: 02 75        	ld	a0, 32(sp)
802043d2: 83 35 09 00  	ld	a1, 0(s2)
802043d6: 03 36 89 00  	ld	a2, 8(s2)
802043da: 94 6e        	ld	a3, 24(a3)
802043dc: 82 96        	jalr	a3
802043de: 19 c1        	beqz	a0, 0x802043e4 <.Lpcrel_hi670+0x114>
802043e0: 05 45        	li	a0, 1
802043e2: 11 a0        	j	0x802043e6 <.Lpcrel_hi670+0x116>
802043e4: 01 45        	li	a0, 0
802043e6: e6 70        	ld	ra, 120(sp)
802043e8: 46 74        	ld	s0, 112(sp)
802043ea: a6 74        	ld	s1, 104(sp)
802043ec: 06 79        	ld	s2, 96(sp)
802043ee: e6 69        	ld	s3, 88(sp)
802043f0: 46 6a        	ld	s4, 80(sp)
802043f2: a6 6a        	ld	s5, 72(sp)
802043f4: 06 6b        	ld	s6, 64(sp)
802043f6: 09 61        	addi	sp, sp, 128
802043f8: 82 80        	ret

00000000802043fa <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
802043fa: 59 71        	addi	sp, sp, -112
802043fc: 86 f4        	sd	ra, 104(sp)
802043fe: a2 f0        	sd	s0, 96(sp)
80204400: a6 ec        	sd	s1, 88(sp)
80204402: ca e8        	sd	s2, 80(sp)
80204404: ce e4        	sd	s3, 72(sp)
80204406: d2 e0        	sd	s4, 64(sp)
80204408: 56 fc        	sd	s5, 56(sp)
8020440a: 5a f8        	sd	s6, 48(sp)
8020440c: 5e f4        	sd	s7, 40(sp)
8020440e: 62 f0        	sd	s8, 32(sp)
80204410: 66 ec        	sd	s9, 24(sp)
80204412: 6a e8        	sd	s10, 16(sp)
80204414: 6e e4        	sd	s11, 8(sp)
80204416: be 89        	mv	s3, a5
80204418: 3a 89        	mv	s2, a4
8020441a: 36 8b        	mv	s6, a3
8020441c: 32 8a        	mv	s4, a2
8020441e: 2a 8c        	mv	s8, a0
80204420: b9 c1        	beqz	a1, 0x80204466 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
80204422: 03 64 4c 03  	lwu	s0, 52(s8)
80204426: 93 7c 14 00  	andi	s9, s0, 1
8020442a: b7 0a 11 00  	lui	s5, 272
8020442e: 63 84 0c 00  	beqz	s9, 0x80204436 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
80204432: 93 0a b0 02  	li	s5, 43
80204436: ce 9c        	add	s9, s9, s3
80204438: 13 75 44 00  	andi	a0, s0, 4
8020443c: 15 cd        	beqz	a0, 0x80204478 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
8020443e: 13 05 00 02  	li	a0, 32
80204442: 63 70 ab 04  	bgeu	s6, a0, 0x80204482 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
80204446: 01 45        	li	a0, 0
80204448: 63 03 0b 04  	beqz	s6, 0x8020448e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
8020444c: da 85        	mv	a1, s6
8020444e: 52 86        	mv	a2, s4
80204450: 83 06 06 00  	lb	a3, 0(a2)
80204454: 05 06        	addi	a2, a2, 1
80204456: 93 a6 06 fc  	slti	a3, a3, -64
8020445a: 93 c6 16 00  	xori	a3, a3, 1
8020445e: fd 15        	addi	a1, a1, -1
80204460: 36 95        	add	a0, a0, a3
80204462: fd f5        	bnez	a1, 0x80204450 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
80204464: 2d a0        	j	0x8020448e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
80204466: 03 24 4c 03  	lw	s0, 52(s8)
8020446a: 93 8c 19 00  	addi	s9, s3, 1
8020446e: 93 0a d0 02  	li	s5, 45
80204472: 13 75 44 00  	andi	a0, s0, 4
80204476: 61 f5        	bnez	a0, 0x8020443e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80204478: 01 4a        	li	s4, 0
8020447a: 03 35 0c 00  	ld	a0, 0(s8)
8020447e: 01 ed        	bnez	a0, 0x80204496 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
80204480: 25 a8        	j	0x802044b8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80204482: 52 85        	mv	a0, s4
80204484: da 85        	mv	a1, s6
80204486: 97 00 00 00  	auipc	ra, 0
8020448a: e7 80 20 43  	jalr	1074(ra)
8020448e: aa 9c        	add	s9, s9, a0
80204490: 03 35 0c 00  	ld	a0, 0(s8)
80204494: 15 c1        	beqz	a0, 0x802044b8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80204496: 03 3d 8c 00  	ld	s10, 8(s8)
8020449a: 63 ff ac 01  	bgeu	s9, s10, 0x802044b8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020449e: 21 88        	andi	s0, s0, 8
802044a0: 35 ec        	bnez	s0, 0x8020451c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
802044a2: 83 45 8c 03  	lbu	a1, 56(s8)
802044a6: 05 46        	li	a2, 1
802044a8: 33 05 9d 41  	sub	a0, s10, s9
802044ac: 63 4f b6 0a  	blt	a2, a1, 0x8020456a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
802044b0: f1 e5        	bnez	a1, 0x8020457c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
802044b2: 2a 8d        	mv	s10, a0
802044b4: 2e 85        	mv	a0, a1
802044b6: e1 a0        	j	0x8020457e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
802044b8: 03 34 0c 02  	ld	s0, 32(s8)
802044bc: 83 34 8c 02  	ld	s1, 40(s8)
802044c0: 22 85        	mv	a0, s0
802044c2: a6 85        	mv	a1, s1
802044c4: 56 86        	mv	a2, s5
802044c6: d2 86        	mv	a3, s4
802044c8: 5a 87        	mv	a4, s6
802044ca: 97 00 00 00  	auipc	ra, 0
802044ce: e7 80 80 14  	jalr	328(ra)
802044d2: 85 4b        	li	s7, 1
802044d4: 0d c1        	beqz	a0, 0x802044f6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
802044d6: 5e 85        	mv	a0, s7
802044d8: a6 70        	ld	ra, 104(sp)
802044da: 06 74        	ld	s0, 96(sp)
802044dc: e6 64        	ld	s1, 88(sp)
802044de: 46 69        	ld	s2, 80(sp)
802044e0: a6 69        	ld	s3, 72(sp)
802044e2: 06 6a        	ld	s4, 64(sp)
802044e4: e2 7a        	ld	s5, 56(sp)
802044e6: 42 7b        	ld	s6, 48(sp)
802044e8: a2 7b        	ld	s7, 40(sp)
802044ea: 02 7c        	ld	s8, 32(sp)
802044ec: e2 6c        	ld	s9, 24(sp)
802044ee: 42 6d        	ld	s10, 16(sp)
802044f0: a2 6d        	ld	s11, 8(sp)
802044f2: 65 61        	addi	sp, sp, 112
802044f4: 82 80        	ret
802044f6: 9c 6c        	ld	a5, 24(s1)
802044f8: 22 85        	mv	a0, s0
802044fa: ca 85        	mv	a1, s2
802044fc: 4e 86        	mv	a2, s3
802044fe: a6 70        	ld	ra, 104(sp)
80204500: 06 74        	ld	s0, 96(sp)
80204502: e6 64        	ld	s1, 88(sp)
80204504: 46 69        	ld	s2, 80(sp)
80204506: a6 69        	ld	s3, 72(sp)
80204508: 06 6a        	ld	s4, 64(sp)
8020450a: e2 7a        	ld	s5, 56(sp)
8020450c: 42 7b        	ld	s6, 48(sp)
8020450e: a2 7b        	ld	s7, 40(sp)
80204510: 02 7c        	ld	s8, 32(sp)
80204512: e2 6c        	ld	s9, 24(sp)
80204514: 42 6d        	ld	s10, 16(sp)
80204516: a2 6d        	ld	s11, 8(sp)
80204518: 65 61        	addi	sp, sp, 112
8020451a: 82 87        	jr	a5
8020451c: 03 24 0c 03  	lw	s0, 48(s8)
80204520: 13 05 00 03  	li	a0, 48
80204524: 83 45 8c 03  	lbu	a1, 56(s8)
80204528: 2e e0        	sd	a1, 0(sp)
8020452a: 83 3d 0c 02  	ld	s11, 32(s8)
8020452e: 83 34 8c 02  	ld	s1, 40(s8)
80204532: 23 28 ac 02  	sw	a0, 48(s8)
80204536: 85 4b        	li	s7, 1
80204538: 23 0c 7c 03  	sb	s7, 56(s8)
8020453c: 6e 85        	mv	a0, s11
8020453e: a6 85        	mv	a1, s1
80204540: 56 86        	mv	a2, s5
80204542: d2 86        	mv	a3, s4
80204544: 5a 87        	mv	a4, s6
80204546: 97 00 00 00  	auipc	ra, 0
8020454a: e7 80 c0 0c  	jalr	204(ra)
8020454e: 41 f5        	bnez	a0, 0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80204550: 22 8a        	mv	s4, s0
80204552: 33 04 9d 41  	sub	s0, s10, s9
80204556: 05 04        	addi	s0, s0, 1
80204558: 7d 14        	addi	s0, s0, -1
8020455a: 51 c8        	beqz	s0, 0x802045ee <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
8020455c: 90 70        	ld	a2, 32(s1)
8020455e: 93 05 00 03  	li	a1, 48
80204562: 6e 85        	mv	a0, s11
80204564: 02 96        	jalr	a2
80204566: 6d d9        	beqz	a0, 0x80204558 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
80204568: bd b7        	j	0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020456a: 09 46        	li	a2, 2
8020456c: 63 98 c5 00  	bne	a1, a2, 0x8020457c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
80204570: 93 05 15 00  	addi	a1, a0, 1
80204574: 05 81        	srli	a0, a0, 1
80204576: 13 dd 15 00  	srli	s10, a1, 1
8020457a: 11 a0        	j	0x8020457e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
8020457c: 01 4d        	li	s10, 0
8020457e: 83 3c 0c 02  	ld	s9, 32(s8)
80204582: 83 3d 8c 02  	ld	s11, 40(s8)
80204586: 83 24 0c 03  	lw	s1, 48(s8)
8020458a: 13 04 15 00  	addi	s0, a0, 1
8020458e: 7d 14        	addi	s0, s0, -1
80204590: 09 c8        	beqz	s0, 0x802045a2 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
80204592: 03 b6 0d 02  	ld	a2, 32(s11)
80204596: 66 85        	mv	a0, s9
80204598: a6 85        	mv	a1, s1
8020459a: 02 96        	jalr	a2
8020459c: 6d d9        	beqz	a0, 0x8020458e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
8020459e: 85 4b        	li	s7, 1
802045a0: 1d bf        	j	0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802045a2: 37 05 11 00  	lui	a0, 272
802045a6: 85 4b        	li	s7, 1
802045a8: e3 87 a4 f2  	beq	s1, a0, 0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802045ac: 66 85        	mv	a0, s9
802045ae: ee 85        	mv	a1, s11
802045b0: 56 86        	mv	a2, s5
802045b2: d2 86        	mv	a3, s4
802045b4: 5a 87        	mv	a4, s6
802045b6: 97 00 00 00  	auipc	ra, 0
802045ba: e7 80 c0 05  	jalr	92(ra)
802045be: 01 fd        	bnez	a0, 0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802045c0: 83 b6 8d 01  	ld	a3, 24(s11)
802045c4: 66 85        	mv	a0, s9
802045c6: ca 85        	mv	a1, s2
802045c8: 4e 86        	mv	a2, s3
802045ca: 82 96        	jalr	a3
802045cc: 09 f5        	bnez	a0, 0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802045ce: b3 09 a0 41  	neg	s3, s10
802045d2: 7d 5a        	li	s4, -1
802045d4: 7d 59        	li	s2, -1
802045d6: 33 85 29 01  	add	a0, s3, s2
802045da: 63 08 45 03  	beq	a0, s4, 0x8020460a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
802045de: 03 b6 0d 02  	ld	a2, 32(s11)
802045e2: 66 85        	mv	a0, s9
802045e4: a6 85        	mv	a1, s1
802045e6: 02 96        	jalr	a2
802045e8: 05 09        	addi	s2, s2, 1
802045ea: 75 d5        	beqz	a0, 0x802045d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
802045ec: 05 a0        	j	0x8020460c <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
802045ee: 94 6c        	ld	a3, 24(s1)
802045f0: 6e 85        	mv	a0, s11
802045f2: ca 85        	mv	a1, s2
802045f4: 4e 86        	mv	a2, s3
802045f6: 82 96        	jalr	a3
802045f8: e3 1f 05 ec  	bnez	a0, 0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802045fc: 81 4b        	li	s7, 0
802045fe: 23 28 4c 03  	sw	s4, 48(s8)
80204602: 02 65        	ld	a0, 0(sp)
80204604: 23 0c ac 02  	sb	a0, 56(s8)
80204608: f9 b5        	j	0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020460a: 6a 89        	mv	s2, s10
8020460c: b3 3b a9 01  	sltu	s7, s2, s10
80204610: d9 b5        	j	0x802044d6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

0000000080204612 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
80204612: 79 71        	addi	sp, sp, -48
80204614: 06 f4        	sd	ra, 40(sp)
80204616: 22 f0        	sd	s0, 32(sp)
80204618: 26 ec        	sd	s1, 24(sp)
8020461a: 4a e8        	sd	s2, 16(sp)
8020461c: 4e e4        	sd	s3, 8(sp)
8020461e: 9b 07 06 00  	sext.w	a5, a2
80204622: 37 08 11 00  	lui	a6, 272
80204626: 3a 89        	mv	s2, a4
80204628: b6 84        	mv	s1, a3
8020462a: 2e 84        	mv	s0, a1
8020462c: aa 89        	mv	s3, a0
8020462e: 63 89 07 01  	beq	a5, a6, 0x80204640 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
80204632: 14 70        	ld	a3, 32(s0)
80204634: 4e 85        	mv	a0, s3
80204636: b2 85        	mv	a1, a2
80204638: 82 96        	jalr	a3
8020463a: aa 85        	mv	a1, a0
8020463c: 05 45        	li	a0, 1
8020463e: 91 ed        	bnez	a1, 0x8020465a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
80204640: 81 cc        	beqz	s1, 0x80204658 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
80204642: 1c 6c        	ld	a5, 24(s0)
80204644: 4e 85        	mv	a0, s3
80204646: a6 85        	mv	a1, s1
80204648: 4a 86        	mv	a2, s2
8020464a: a2 70        	ld	ra, 40(sp)
8020464c: 02 74        	ld	s0, 32(sp)
8020464e: e2 64        	ld	s1, 24(sp)
80204650: 42 69        	ld	s2, 16(sp)
80204652: a2 69        	ld	s3, 8(sp)
80204654: 45 61        	addi	sp, sp, 48
80204656: 82 87        	jr	a5
80204658: 01 45        	li	a0, 0
8020465a: a2 70        	ld	ra, 40(sp)
8020465c: 02 74        	ld	s0, 32(sp)
8020465e: e2 64        	ld	s1, 24(sp)
80204660: 42 69        	ld	s2, 16(sp)
80204662: a2 69        	ld	s3, 8(sp)
80204664: 45 61        	addi	sp, sp, 48
80204666: 82 80        	ret

0000000080204668 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
80204668: 5d 71        	addi	sp, sp, -80
8020466a: 86 e4        	sd	ra, 72(sp)
8020466c: a2 e0        	sd	s0, 64(sp)
8020466e: 26 fc        	sd	s1, 56(sp)
80204670: 4a f8        	sd	s2, 48(sp)
80204672: 4e f4        	sd	s3, 40(sp)
80204674: 52 f0        	sd	s4, 32(sp)
80204676: 56 ec        	sd	s5, 24(sp)
80204678: 5a e8        	sd	s6, 16(sp)
8020467a: 5e e4        	sd	s7, 8(sp)
8020467c: 2a 8a        	mv	s4, a0
8020467e: 83 32 05 00  	ld	t0, 0(a0)
80204682: 08 69        	ld	a0, 16(a0)
80204684: b3 e6 a2 00  	or	a3, t0, a0
80204688: b2 89        	mv	s3, a2
8020468a: 2e 89        	mv	s2, a1
8020468c: 63 84 06 16  	beqz	a3, 0x802047f4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80204690: 63 07 05 10  	beqz	a0, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204694: 03 37 8a 01  	ld	a4, 24(s4)
80204698: 01 45        	li	a0, 0
8020469a: b3 06 39 01  	add	a3, s2, s3
8020469e: 05 07        	addi	a4, a4, 1
802046a0: 37 03 11 00  	lui	t1, 272
802046a4: 93 08 f0 0d  	li	a7, 223
802046a8: 13 08 00 0f  	li	a6, 240
802046ac: 4a 86        	mv	a2, s2
802046ae: 01 a8        	j	0x802046be <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
802046b0: 93 05 16 00  	addi	a1, a2, 1
802046b4: 11 8d        	sub	a0, a0, a2
802046b6: 2e 95        	add	a0, a0, a1
802046b8: 2e 86        	mv	a2, a1
802046ba: 63 02 64 0e  	beq	s0, t1, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802046be: 7d 17        	addi	a4, a4, -1
802046c0: 25 c7        	beqz	a4, 0x80204728 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
802046c2: 63 0e d6 0c  	beq	a2, a3, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802046c6: 83 05 06 00  	lb	a1, 0(a2)
802046ca: 13 f4 f5 0f  	andi	s0, a1, 255
802046ce: e3 d1 05 fe  	bgez	a1, 0x802046b0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
802046d2: 83 45 16 00  	lbu	a1, 1(a2)
802046d6: 93 74 f4 01  	andi	s1, s0, 31
802046da: 93 f7 f5 03  	andi	a5, a1, 63
802046de: 63 f9 88 02  	bgeu	a7, s0, 0x80204710 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
802046e2: 83 45 26 00  	lbu	a1, 2(a2)
802046e6: 9a 07        	slli	a5, a5, 6
802046e8: 93 f5 f5 03  	andi	a1, a1, 63
802046ec: cd 8f        	or	a5, a5, a1
802046ee: 63 67 04 03  	bltu	s0, a6, 0x8020471c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
802046f2: 83 45 36 00  	lbu	a1, 3(a2)
802046f6: f6 14        	slli	s1, s1, 61
802046f8: ad 90        	srli	s1, s1, 43
802046fa: 9a 07        	slli	a5, a5, 6
802046fc: 93 f5 f5 03  	andi	a1, a1, 63
80204700: dd 8d        	or	a1, a1, a5
80204702: 33 e4 95 00  	or	s0, a1, s1
80204706: 63 0c 64 08  	beq	s0, t1, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020470a: 93 05 46 00  	addi	a1, a2, 4
8020470e: 5d b7        	j	0x802046b4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80204710: 93 05 26 00  	addi	a1, a2, 2
80204714: 13 94 64 00  	slli	s0, s1, 6
80204718: 5d 8c        	or	s0, s0, a5
8020471a: 69 bf        	j	0x802046b4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
8020471c: 93 05 36 00  	addi	a1, a2, 3
80204720: 13 94 c4 00  	slli	s0, s1, 12
80204724: 5d 8c        	or	s0, s0, a5
80204726: 79 b7        	j	0x802046b4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
80204728: 63 0b d6 06  	beq	a2, a3, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020472c: 83 05 06 00  	lb	a1, 0(a2)
80204730: 63 d3 05 04  	bgez	a1, 0x80204776 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80204734: 93 f5 f5 0f  	andi	a1, a1, 255
80204738: 93 06 00 0e  	li	a3, 224
8020473c: 63 ed d5 02  	bltu	a1, a3, 0x80204776 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80204740: 93 06 00 0f  	li	a3, 240
80204744: 63 e9 d5 02  	bltu	a1, a3, 0x80204776 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
80204748: 83 46 16 00  	lbu	a3, 1(a2)
8020474c: 03 47 26 00  	lbu	a4, 2(a2)
80204750: 93 f6 f6 03  	andi	a3, a3, 63
80204754: 13 77 f7 03  	andi	a4, a4, 63
80204758: 03 46 36 00  	lbu	a2, 3(a2)
8020475c: f6 15        	slli	a1, a1, 61
8020475e: ad 91        	srli	a1, a1, 43
80204760: b2 06        	slli	a3, a3, 12
80204762: 1a 07        	slli	a4, a4, 6
80204764: d9 8e        	or	a3, a3, a4
80204766: 13 76 f6 03  	andi	a2, a2, 63
8020476a: 55 8e        	or	a2, a2, a3
8020476c: d1 8d        	or	a1, a1, a2
8020476e: 37 06 11 00  	lui	a2, 272
80204772: 63 86 c5 02  	beq	a1, a2, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204776: 05 c1        	beqz	a0, 0x80204796 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80204778: 63 7d 35 01  	bgeu	a0, s3, 0x80204792 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
8020477c: b3 05 a9 00  	add	a1, s2, a0
80204780: 83 85 05 00  	lb	a1, 0(a1)
80204784: 13 06 00 fc  	li	a2, -64
80204788: 63 d7 c5 00  	bge	a1, a2, 0x80204796 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
8020478c: 81 45        	li	a1, 0
8020478e: 91 e5        	bnez	a1, 0x8020479a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
80204790: 39 a0        	j	0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80204792: e3 1d 35 ff  	bne	a0, s3, 0x8020478c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
80204796: ca 85        	mv	a1, s2
80204798: 99 c1        	beqz	a1, 0x8020479e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020479a: aa 89        	mv	s3, a0
8020479c: 2e 89        	mv	s2, a1
8020479e: 63 8b 02 04  	beqz	t0, 0x802047f4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
802047a2: 03 34 8a 00  	ld	s0, 8(s4)
802047a6: 13 05 00 02  	li	a0, 32
802047aa: 63 fd a9 02  	bgeu	s3, a0, 0x802047e4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
802047ae: 01 45        	li	a0, 0
802047b0: 63 8e 09 00  	beqz	s3, 0x802047cc <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
802047b4: ce 85        	mv	a1, s3
802047b6: 4a 86        	mv	a2, s2
802047b8: 83 06 06 00  	lb	a3, 0(a2)
802047bc: 05 06        	addi	a2, a2, 1
802047be: 93 a6 06 fc  	slti	a3, a3, -64
802047c2: 93 c6 16 00  	xori	a3, a3, 1
802047c6: fd 15        	addi	a1, a1, -1
802047c8: 36 95        	add	a0, a0, a3
802047ca: fd f5        	bnez	a1, 0x802047b8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
802047cc: 63 74 85 02  	bgeu	a0, s0, 0x802047f4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
802047d0: 83 45 8a 03  	lbu	a1, 56(s4)
802047d4: 05 46        	li	a2, 1
802047d6: 33 05 a4 40  	sub	a0, s0, a0
802047da: 63 4f b6 02  	blt	a2, a1, 0x80204818 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
802047de: b1 c5        	beqz	a1, 0x8020482a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
802047e0: 81 4a        	li	s5, 0
802047e2: b1 a0        	j	0x8020482e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
802047e4: 4a 85        	mv	a0, s2
802047e6: ce 85        	mv	a1, s3
802047e8: 97 00 00 00  	auipc	ra, 0
802047ec: e7 80 00 0d  	jalr	208(ra)
802047f0: e3 60 85 fe  	bltu	a0, s0, 0x802047d0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
802047f4: 83 35 8a 02  	ld	a1, 40(s4)
802047f8: 03 35 0a 02  	ld	a0, 32(s4)
802047fc: 9c 6d        	ld	a5, 24(a1)
802047fe: ca 85        	mv	a1, s2
80204800: 4e 86        	mv	a2, s3
80204802: a6 60        	ld	ra, 72(sp)
80204804: 06 64        	ld	s0, 64(sp)
80204806: e2 74        	ld	s1, 56(sp)
80204808: 42 79        	ld	s2, 48(sp)
8020480a: a2 79        	ld	s3, 40(sp)
8020480c: 02 7a        	ld	s4, 32(sp)
8020480e: e2 6a        	ld	s5, 24(sp)
80204810: 42 6b        	ld	s6, 16(sp)
80204812: a2 6b        	ld	s7, 8(sp)
80204814: 61 61        	addi	sp, sp, 80
80204816: 82 87        	jr	a5
80204818: 09 46        	li	a2, 2
8020481a: 63 98 c5 00  	bne	a1, a2, 0x8020482a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
8020481e: 93 05 15 00  	addi	a1, a0, 1
80204822: 05 81        	srli	a0, a0, 1
80204824: 93 da 15 00  	srli	s5, a1, 1
80204828: 19 a0        	j	0x8020482e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
8020482a: aa 8a        	mv	s5, a0
8020482c: 01 45        	li	a0, 0
8020482e: 03 3b 0a 02  	ld	s6, 32(s4)
80204832: 83 3b 8a 02  	ld	s7, 40(s4)
80204836: 83 24 0a 03  	lw	s1, 48(s4)
8020483a: 13 04 15 00  	addi	s0, a0, 1
8020483e: 7d 14        	addi	s0, s0, -1
80204840: 09 c8        	beqz	s0, 0x80204852 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
80204842: 03 b6 0b 02  	ld	a2, 32(s7)
80204846: 5a 85        	mv	a0, s6
80204848: a6 85        	mv	a1, s1
8020484a: 02 96        	jalr	a2
8020484c: 6d d9        	beqz	a0, 0x8020483e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
8020484e: 05 4a        	li	s4, 1
80204850: 81 a0        	j	0x80204890 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80204852: 37 05 11 00  	lui	a0, 272
80204856: 05 4a        	li	s4, 1
80204858: 63 8c a4 02  	beq	s1, a0, 0x80204890 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
8020485c: 83 b6 8b 01  	ld	a3, 24(s7)
80204860: 5a 85        	mv	a0, s6
80204862: ca 85        	mv	a1, s2
80204864: 4e 86        	mv	a2, s3
80204866: 82 96        	jalr	a3
80204868: 05 e5        	bnez	a0, 0x80204890 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
8020486a: 33 09 50 41  	neg	s2, s5
8020486e: fd 59        	li	s3, -1
80204870: 7d 54        	li	s0, -1
80204872: 33 05 89 00  	add	a0, s2, s0
80204876: 63 0a 35 01  	beq	a0, s3, 0x8020488a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
8020487a: 03 b6 0b 02  	ld	a2, 32(s7)
8020487e: 5a 85        	mv	a0, s6
80204880: a6 85        	mv	a1, s1
80204882: 02 96        	jalr	a2
80204884: 05 04        	addi	s0, s0, 1
80204886: 75 d5        	beqz	a0, 0x80204872 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80204888: 11 a0        	j	0x8020488c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
8020488a: 56 84        	mv	s0, s5
8020488c: 33 3a 54 01  	sltu	s4, s0, s5
80204890: 52 85        	mv	a0, s4
80204892: a6 60        	ld	ra, 72(sp)
80204894: 06 64        	ld	s0, 64(sp)
80204896: e2 74        	ld	s1, 56(sp)
80204898: 42 79        	ld	s2, 48(sp)
8020489a: a2 79        	ld	s3, 40(sp)
8020489c: 02 7a        	ld	s4, 32(sp)
8020489e: e2 6a        	ld	s5, 24(sp)
802048a0: 42 6b        	ld	s6, 16(sp)
802048a2: a2 6b        	ld	s7, 8(sp)
802048a4: 61 61        	addi	sp, sp, 80
802048a6: 82 80        	ret

00000000802048a8 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
802048a8: ae 86        	mv	a3, a1
802048aa: aa 85        	mv	a1, a0
802048ac: 32 85        	mv	a0, a2
802048ae: 36 86        	mv	a2, a3
802048b0: 17 03 00 00  	auipc	t1, 0
802048b4: 67 00 83 db  	jr	-584(t1)

00000000802048b8 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
802048b8: 2a 86        	mv	a2, a0
802048ba: 13 07 75 00  	addi	a4, a0, 7
802048be: 61 9b        	andi	a4, a4, -8
802048c0: b3 02 a7 40  	sub	t0, a4, a0
802048c4: 63 e7 55 00  	bltu	a1, t0, 0x802048d2 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
802048c8: 33 88 55 40  	sub	a6, a1, t0
802048cc: a1 46        	li	a3, 8
802048ce: 63 7f d8 00  	bgeu	a6, a3, 0x802048ec <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
802048d2: 01 45        	li	a0, 0
802048d4: 99 c9        	beqz	a1, 0x802048ea <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
802048d6: 83 06 06 00  	lb	a3, 0(a2)
802048da: 05 06        	addi	a2, a2, 1
802048dc: 93 a6 06 fc  	slti	a3, a3, -64
802048e0: 93 c6 16 00  	xori	a3, a3, 1
802048e4: fd 15        	addi	a1, a1, -1
802048e6: 36 95        	add	a0, a0, a3
802048e8: fd f5        	bnez	a1, 0x802048d6 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
802048ea: 82 80        	ret
802048ec: 93 76 78 00  	andi	a3, a6, 7
802048f0: 81 45        	li	a1, 0
802048f2: 63 0f c7 00  	beq	a4, a2, 0x80204910 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
802048f6: 33 07 e6 40  	sub	a4, a2, a4
802048fa: b2 87        	mv	a5, a2
802048fc: 03 85 07 00  	lb	a0, 0(a5)
80204900: 85 07        	addi	a5, a5, 1
80204902: 13 25 05 fc  	slti	a0, a0, -64
80204906: 13 45 15 00  	xori	a0, a0, 1
8020490a: 05 07        	addi	a4, a4, 1
8020490c: aa 95        	add	a1, a1, a0
8020490e: 7d f7        	bnez	a4, 0x802048fc <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
80204910: b2 92        	add	t0, t0, a2
80204912: 01 46        	li	a2, 0
80204914: 91 ce        	beqz	a3, 0x80204930 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
80204916: 13 77 88 ff  	andi	a4, a6, -8
8020491a: 16 97        	add	a4, a4, t0
8020491c: 03 05 07 00  	lb	a0, 0(a4)
80204920: 05 07        	addi	a4, a4, 1
80204922: 13 25 05 fc  	slti	a0, a0, -64
80204926: 13 45 15 00  	xori	a0, a0, 1
8020492a: fd 16        	addi	a3, a3, -1
8020492c: 2a 96        	add	a2, a2, a0
8020492e: fd f6        	bnez	a3, 0x8020491c <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
80204930: 13 57 38 00  	srli	a4, a6, 3

0000000080204934 <.Lpcrel_hi762>:
80204934: 17 25 00 00  	auipc	a0, 2
80204938: 03 3f 45 9c  	ld	t5, -1596(a0)

000000008020493c <.Lpcrel_hi763>:
8020493c: 17 25 00 00  	auipc	a0, 2
80204940: 83 38 45 9c  	ld	a7, -1596(a0)
80204944: 37 15 00 10  	lui	a0, 65537
80204948: 12 05        	slli	a0, a0, 4
8020494a: 05 05        	addi	a0, a0, 1
8020494c: 42 05        	slli	a0, a0, 16
8020494e: 13 08 15 00  	addi	a6, a0, 1
80204952: 33 05 b6 00  	add	a0, a2, a1
80204956: 1d a0        	j	0x8020497c <.Lpcrel_hi763+0x40>
80204958: 93 12 3e 00  	slli	t0, t3, 3
8020495c: 9a 92        	add	t0, t0, t1
8020495e: 33 87 c3 41  	sub	a4, t2, t3
80204962: 13 76 3e 00  	andi	a2, t3, 3
80204966: b3 f6 15 01  	and	a3, a1, a7
8020496a: a1 81        	srli	a1, a1, 8
8020496c: b3 f5 15 01  	and	a1, a1, a7
80204970: b6 95        	add	a1, a1, a3
80204972: b3 85 05 03  	mul	a1, a1, a6
80204976: c1 91        	srli	a1, a1, 48
80204978: 2e 95        	add	a0, a0, a1
8020497a: 35 ee        	bnez	a2, 0x802049f6 <.Lpcrel_hi763+0xba>
8020497c: 3d d7        	beqz	a4, 0x802048ea <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
8020497e: ba 83        	mv	t2, a4
80204980: 16 83        	mv	t1, t0
80204982: 93 05 00 0c  	li	a1, 192
80204986: 3a 8e        	mv	t3, a4
80204988: 63 64 b7 00  	bltu	a4, a1, 0x80204990 <.Lpcrel_hi763+0x54>
8020498c: 13 0e 00 0c  	li	t3, 192
80204990: 93 75 ce 0f  	andi	a1, t3, 252
80204994: 93 97 35 00  	slli	a5, a1, 3
80204998: b3 0e f3 00  	add	t4, t1, a5
8020499c: d5 dd        	beqz	a1, 0x80204958 <.Lpcrel_hi763+0x1c>
8020499e: 81 45        	li	a1, 0
802049a0: 1a 86        	mv	a2, t1
802049a2: 5d da        	beqz	a2, 0x80204958 <.Lpcrel_hi763+0x1c>
802049a4: 18 62        	ld	a4, 0(a2)
802049a6: 93 47 f7 ff  	not	a5, a4
802049aa: 9d 83        	srli	a5, a5, 7
802049ac: 19 83        	srli	a4, a4, 6
802049ae: 14 66        	ld	a3, 8(a2)
802049b0: 5d 8f        	or	a4, a4, a5
802049b2: 33 77 e7 01  	and	a4, a4, t5
802049b6: ba 95        	add	a1, a1, a4
802049b8: 13 c7 f6 ff  	not	a4, a3
802049bc: 1d 83        	srli	a4, a4, 7
802049be: 1c 6a        	ld	a5, 16(a2)
802049c0: 99 82        	srli	a3, a3, 6
802049c2: d9 8e        	or	a3, a3, a4
802049c4: b3 f6 e6 01  	and	a3, a3, t5
802049c8: 13 c7 f7 ff  	not	a4, a5
802049cc: 1d 83        	srli	a4, a4, 7
802049ce: 99 83        	srli	a5, a5, 6
802049d0: 5d 8f        	or	a4, a4, a5
802049d2: 1c 6e        	ld	a5, 24(a2)
802049d4: 33 77 e7 01  	and	a4, a4, t5
802049d8: ba 96        	add	a3, a3, a4
802049da: b6 95        	add	a1, a1, a3
802049dc: 93 c6 f7 ff  	not	a3, a5
802049e0: 9d 82        	srli	a3, a3, 7
802049e2: 99 83        	srli	a5, a5, 6
802049e4: dd 8e        	or	a3, a3, a5
802049e6: b3 f6 e6 01  	and	a3, a3, t5
802049ea: 13 06 06 02  	addi	a2, a2, 32
802049ee: b6 95        	add	a1, a1, a3
802049f0: e3 19 d6 fb  	bne	a2, t4, 0x802049a2 <.Lpcrel_hi763+0x66>
802049f4: 95 b7        	j	0x80204958 <.Lpcrel_hi763+0x1c>
802049f6: 63 0a 03 02  	beqz	t1, 0x80204a2a <.Lpcrel_hi763+0xee>
802049fa: 93 05 00 0c  	li	a1, 192
802049fe: 63 e4 b3 00  	bltu	t2, a1, 0x80204a06 <.Lpcrel_hi763+0xca>
80204a02: 93 03 00 0c  	li	t2, 192
80204a06: 81 45        	li	a1, 0
80204a08: 13 f6 33 00  	andi	a2, t2, 3
80204a0c: 0e 06        	slli	a2, a2, 3
80204a0e: 83 b6 0e 00  	ld	a3, 0(t4)
80204a12: a1 0e        	addi	t4, t4, 8
80204a14: 13 c7 f6 ff  	not	a4, a3
80204a18: 1d 83        	srli	a4, a4, 7
80204a1a: 99 82        	srli	a3, a3, 6
80204a1c: d9 8e        	or	a3, a3, a4
80204a1e: b3 f6 e6 01  	and	a3, a3, t5
80204a22: 61 16        	addi	a2, a2, -8
80204a24: b6 95        	add	a1, a1, a3
80204a26: 65 f6        	bnez	a2, 0x80204a0e <.Lpcrel_hi763+0xd2>
80204a28: 11 a0        	j	0x80204a2c <.Lpcrel_hi763+0xf0>
80204a2a: 81 45        	li	a1, 0
80204a2c: 33 f6 15 01  	and	a2, a1, a7
80204a30: a1 81        	srli	a1, a1, 8
80204a32: b3 f5 15 01  	and	a1, a1, a7
80204a36: b2 95        	add	a1, a1, a2
80204a38: b3 85 05 03  	mul	a1, a1, a6
80204a3c: c1 91        	srli	a1, a1, 48
80204a3e: 2e 95        	add	a0, a0, a1
80204a40: 82 80        	ret

0000000080204a42 <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
80204a42: 39 71        	addi	sp, sp, -64
80204a44: 06 fc        	sd	ra, 56(sp)
80204a46: 22 f8        	sd	s0, 48(sp)
80204a48: 26 f4        	sd	s1, 40(sp)
80204a4a: 32 88        	mv	a6, a2
80204a4c: 93 56 45 00  	srli	a3, a0, 4
80204a50: 13 07 70 02  	li	a4, 39
80204a54: 93 07 10 27  	li	a5, 625

0000000080204a58 <.Lpcrel_hi1459>:
80204a58: 17 16 00 00  	auipc	a2, 1
80204a5c: 93 0e 86 07  	addi	t4, a2, 120
80204a60: 63 f3 f6 02  	bgeu	a3, a5, 0x80204a86 <.Lpcrel_hi1459+0x2e>
80204a64: 93 06 30 06  	li	a3, 99
80204a68: 63 ea a6 0a  	bltu	a3, a0, 0x80204b1c <.Lpcrel_hi1460+0x8c>
80204a6c: 29 46        	li	a2, 10
80204a6e: 63 78 c5 0e  	bgeu	a0, a2, 0x80204b5e <.Lpcrel_hi1460+0xce>
80204a72: 93 06 f7 ff  	addi	a3, a4, -1
80204a76: 13 06 11 00  	addi	a2, sp, 1
80204a7a: 36 96        	add	a2, a2, a3
80204a7c: 1b 05 05 03  	addiw	a0, a0, 48
80204a80: 23 00 a6 00  	sb	a0, 0(a2)
80204a84: e5 a8        	j	0x80204b7c <.Lpcrel_hi1460+0xec>
80204a86: 01 47        	li	a4, 0
80204a88: 93 08 41 02  	addi	a7, sp, 36
80204a8c: 93 02 61 02  	addi	t0, sp, 38

0000000080204a90 <.Lpcrel_hi1460>:
80204a90: 97 26 00 00  	auipc	a3, 2
80204a94: 03 b3 06 92  	ld	t1, -1760(a3)
80204a98: 89 66        	lui	a3, 2
80204a9a: 1b 8e 06 71  	addiw	t3, a3, 1808
80204a9e: 85 66        	lui	a3, 1
80204aa0: 1b 8f b6 47  	addiw	t5, a3, 1147
80204aa4: 93 03 40 06  	li	t2, 100
80204aa8: b7 e6 f5 05  	lui	a3, 24414
80204aac: 9b 8f f6 0f  	addiw	t6, a3, 255
80204ab0: aa 86        	mv	a3, a0
80204ab2: 33 35 65 02  	mulhu	a0, a0, t1
80204ab6: 2d 81        	srli	a0, a0, 11
80204ab8: bb 07 c5 03  	mulw	a5, a0, t3
80204abc: 3b 86 f6 40  	subw	a2, a3, a5
80204ac0: 93 17 06 03  	slli	a5, a2, 48
80204ac4: c9 93        	srli	a5, a5, 50
80204ac6: b3 87 e7 03  	mul	a5, a5, t5
80204aca: 13 d4 17 01  	srli	s0, a5, 17
80204ace: c1 83        	srli	a5, a5, 16
80204ad0: 93 f7 e7 7f  	andi	a5, a5, 2046
80204ad4: 3b 04 74 02  	mulw	s0, s0, t2
80204ad8: 01 9e        	subw	a2, a2, s0
80204ada: 46 16        	slli	a2, a2, 49
80204adc: f6 97        	add	a5, a5, t4
80204ade: 03 c4 17 00  	lbu	s0, 1(a5)
80204ae2: 41 92        	srli	a2, a2, 48
80204ae4: b3 84 e8 00  	add	s1, a7, a4
80204ae8: 83 c7 07 00  	lbu	a5, 0(a5)
80204aec: a3 80 84 00  	sb	s0, 1(s1)
80204af0: 76 96        	add	a2, a2, t4
80204af2: 03 44 16 00  	lbu	s0, 1(a2)
80204af6: 03 46 06 00  	lbu	a2, 0(a2)
80204afa: 23 80 f4 00  	sb	a5, 0(s1)
80204afe: b3 87 e2 00  	add	a5, t0, a4
80204b02: a3 80 87 00  	sb	s0, 1(a5)
80204b06: 23 80 c7 00  	sb	a2, 0(a5)
80204b0a: 71 17        	addi	a4, a4, -4
80204b0c: e3 e2 df fa  	bltu	t6, a3, 0x80204ab0 <.Lpcrel_hi1460+0x20>
80204b10: 13 07 77 02  	addi	a4, a4, 39
80204b14: 93 06 30 06  	li	a3, 99
80204b18: e3 fa a6 f4  	bgeu	a3, a0, 0x80204a6c <.Lpcrel_hi1459+0x14>
80204b1c: 13 16 05 03  	slli	a2, a0, 48
80204b20: 49 92        	srli	a2, a2, 50
80204b22: 85 66        	lui	a3, 1
80204b24: 9b 86 b6 47  	addiw	a3, a3, 1147
80204b28: 33 06 d6 02  	mul	a2, a2, a3
80204b2c: 45 82        	srli	a2, a2, 17
80204b2e: 93 06 40 06  	li	a3, 100
80204b32: bb 06 d6 02  	mulw	a3, a2, a3
80204b36: 15 9d        	subw	a0, a0, a3
80204b38: 46 15        	slli	a0, a0, 49
80204b3a: 41 91        	srli	a0, a0, 48
80204b3c: 79 17        	addi	a4, a4, -2
80204b3e: 76 95        	add	a0, a0, t4
80204b40: 83 46 15 00  	lbu	a3, 1(a0)
80204b44: 03 45 05 00  	lbu	a0, 0(a0)
80204b48: 93 07 11 00  	addi	a5, sp, 1
80204b4c: ba 97        	add	a5, a5, a4
80204b4e: a3 80 d7 00  	sb	a3, 1(a5)
80204b52: 23 80 a7 00  	sb	a0, 0(a5)
80204b56: 32 85        	mv	a0, a2
80204b58: 29 46        	li	a2, 10
80204b5a: e3 6c c5 f0  	bltu	a0, a2, 0x80204a72 <.Lpcrel_hi1459+0x1a>
80204b5e: 06 05        	slli	a0, a0, 1
80204b60: 93 06 e7 ff  	addi	a3, a4, -2
80204b64: 76 95        	add	a0, a0, t4
80204b66: 03 46 15 00  	lbu	a2, 1(a0)
80204b6a: 03 45 05 00  	lbu	a0, 0(a0)
80204b6e: 13 07 11 00  	addi	a4, sp, 1
80204b72: 36 97        	add	a4, a4, a3
80204b74: a3 00 c7 00  	sb	a2, 1(a4)
80204b78: 23 00 a7 00  	sb	a0, 0(a4)
80204b7c: 13 07 11 00  	addi	a4, sp, 1
80204b80: 36 97        	add	a4, a4, a3
80204b82: 93 07 70 02  	li	a5, 39
80204b86: 95 8f        	sub	a5, a5, a3

0000000080204b88 <.Lpcrel_hi1461>:
80204b88: 17 15 00 00  	auipc	a0, 1
80204b8c: 13 06 85 ea  	addi	a2, a0, -344
80204b90: 42 85        	mv	a0, a6
80204b92: 81 46        	li	a3, 0
80204b94: 97 00 00 00  	auipc	ra, 0
80204b98: e7 80 60 86  	jalr	-1946(ra)
80204b9c: e2 70        	ld	ra, 56(sp)
80204b9e: 42 74        	ld	s0, 48(sp)
80204ba0: a2 74        	ld	s1, 40(sp)
80204ba2: 21 61        	addi	sp, sp, 64
80204ba4: 82 80        	ret

0000000080204ba6 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
80204ba6: 03 65 05 00  	lwu	a0, 0(a0)
80204baa: 2e 86        	mv	a2, a1
80204bac: 85 45        	li	a1, 1
80204bae: 17 03 00 00  	auipc	t1, 0
80204bb2: 67 00 43 e9  	jr	-364(t1)

0000000080204bb6 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
80204bb6: 08 61        	ld	a0, 0(a0)
80204bb8: 2e 86        	mv	a2, a1
80204bba: 85 45        	li	a1, 1
80204bbc: 17 03 00 00  	auipc	t1, 0
80204bc0: 67 00 63 e8  	jr	-378(t1)

0000000080204bc4 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
80204bc4: 90 75        	ld	a2, 40(a1)
80204bc6: 88 71        	ld	a0, 32(a1)
80204bc8: 1c 6e        	ld	a5, 24(a2)

0000000080204bca <.Lpcrel_hi1484>:
80204bca: 97 15 00 00  	auipc	a1, 1
80204bce: 93 85 e5 fc  	addi	a1, a1, -50
80204bd2: 15 46        	li	a2, 5
80204bd4: 82 87        	jr	a5

0000000080204bd6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
80204bd6: 10 65        	ld	a2, 8(a0)
80204bd8: 08 61        	ld	a0, 0(a0)
80204bda: 1c 6e        	ld	a5, 24(a2)
80204bdc: 82 87        	jr	a5

0000000080204bde <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
80204bde: 14 61        	ld	a3, 0(a0)
80204be0: 10 65        	ld	a2, 8(a0)
80204be2: 2e 85        	mv	a0, a1
80204be4: b6 85        	mv	a1, a3
80204be6: 17 03 00 00  	auipc	t1, 0
80204bea: 67 00 23 a8  	jr	-1406(t1)

0000000080204bee <memset>:
80204bee: 17 03 00 00  	auipc	t1, 0
80204bf2: 67 00 c3 0b  	jr	188(t1)

0000000080204bf6 <memcpy>:
80204bf6: 17 03 00 00  	auipc	t1, 0
80204bfa: 67 00 83 00  	jr	8(t1)

0000000080204bfe <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
80204bfe: bd 46        	li	a3, 15
80204c00: 63 f9 c6 06  	bgeu	a3, a2, 0x80204c72 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
80204c04: bb 06 a0 40  	negw	a3, a0
80204c08: 13 f8 76 00  	andi	a6, a3, 7
80204c0c: b3 03 05 01  	add	t2, a0, a6
80204c10: 63 0c 08 00  	beqz	a6, 0x80204c28 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
80204c14: aa 87        	mv	a5, a0
80204c16: ae 86        	mv	a3, a1
80204c18: 03 87 06 00  	lb	a4, 0(a3)
80204c1c: 23 80 e7 00  	sb	a4, 0(a5)
80204c20: 85 07        	addi	a5, a5, 1
80204c22: 85 06        	addi	a3, a3, 1
80204c24: e3 ea 77 fe  	bltu	a5, t2, 0x80204c18 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
80204c28: b3 88 05 01  	add	a7, a1, a6
80204c2c: 33 08 06 41  	sub	a6, a2, a6
80204c30: 93 72 88 ff  	andi	t0, a6, -8
80204c34: 13 f3 78 00  	andi	t1, a7, 7
80204c38: b3 86 53 00  	add	a3, t2, t0
80204c3c: 63 0e 03 02  	beqz	t1, 0x80204c78 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
80204c40: 63 56 50 04  	blez	t0, 0x80204c8c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80204c44: 0e 03        	slli	t1, t1, 3
80204c46: 93 f7 88 ff  	andi	a5, a7, -8
80204c4a: 90 63        	ld	a2, 0(a5)
80204c4c: bb 05 60 40  	negw	a1, t1
80204c50: 13 fe 85 03  	andi	t3, a1, 56
80204c54: a1 07        	addi	a5, a5, 8
80204c56: 98 63        	ld	a4, 0(a5)
80204c58: 33 56 66 00  	srl	a2, a2, t1
80204c5c: b3 15 c7 01  	sll	a1, a4, t3
80204c60: d1 8d        	or	a1, a1, a2
80204c62: 23 b0 b3 00  	sd	a1, 0(t2)
80204c66: a1 03        	addi	t2, t2, 8
80204c68: a1 07        	addi	a5, a5, 8
80204c6a: 3a 86        	mv	a2, a4
80204c6c: e3 e5 d3 fe  	bltu	t2, a3, 0x80204c56 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
80204c70: 31 a8        	j	0x80204c8c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80204c72: aa 86        	mv	a3, a0
80204c74: 0d e2        	bnez	a2, 0x80204c96 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
80204c76: 0d a8        	j	0x80204ca8 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80204c78: 63 5a 50 00  	blez	t0, 0x80204c8c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80204c7c: c6 85        	mv	a1, a7
80204c7e: 90 61        	ld	a2, 0(a1)
80204c80: 23 b0 c3 00  	sd	a2, 0(t2)
80204c84: a1 03        	addi	t2, t2, 8
80204c86: a1 05        	addi	a1, a1, 8
80204c88: e3 eb d3 fe  	bltu	t2, a3, 0x80204c7e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
80204c8c: b3 85 58 00  	add	a1, a7, t0
80204c90: 13 76 78 00  	andi	a2, a6, 7
80204c94: 11 ca        	beqz	a2, 0x80204ca8 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
80204c96: 36 96        	add	a2, a2, a3
80204c98: 03 87 05 00  	lb	a4, 0(a1)
80204c9c: 23 80 e6 00  	sb	a4, 0(a3)
80204ca0: 85 06        	addi	a3, a3, 1
80204ca2: 85 05        	addi	a1, a1, 1
80204ca4: e3 ea c6 fe  	bltu	a3, a2, 0x80204c98 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
80204ca8: 82 80        	ret

0000000080204caa <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
80204caa: bd 46        	li	a3, 15
80204cac: 63 fa c6 04  	bgeu	a3, a2, 0x80204d00 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
80204cb0: bb 06 a0 40  	negw	a3, a0
80204cb4: 9d 8a        	andi	a3, a3, 7
80204cb6: 33 07 d5 00  	add	a4, a0, a3
80204cba: 99 c6        	beqz	a3, 0x80204cc8 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
80204cbc: aa 87        	mv	a5, a0
80204cbe: 23 80 b7 00  	sb	a1, 0(a5)
80204cc2: 85 07        	addi	a5, a5, 1
80204cc4: e3 ed e7 fe  	bltu	a5, a4, 0x80204cbe <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
80204cc8: b3 08 d6 40  	sub	a7, a2, a3
80204ccc: 93 f7 88 ff  	andi	a5, a7, -8
80204cd0: b3 06 f7 00  	add	a3, a4, a5
80204cd4: 63 52 f0 02  	blez	a5, 0x80204cf8 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
80204cd8: 13 98 85 03  	slli	a6, a1, 56
80204cdc: b7 17 10 10  	lui	a5, 65793
80204ce0: 92 07        	slli	a5, a5, 4
80204ce2: 93 87 07 10  	addi	a5, a5, 256
80204ce6: 33 36 f8 02  	mulhu	a2, a6, a5
80204cea: 93 17 06 02  	slli	a5, a2, 32
80204cee: d1 8f        	or	a5, a5, a2
80204cf0: 1c e3        	sd	a5, 0(a4)
80204cf2: 21 07        	addi	a4, a4, 8
80204cf4: e3 6e d7 fe  	bltu	a4, a3, 0x80204cf0 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
80204cf8: 13 f6 78 00  	andi	a2, a7, 7
80204cfc: 01 e6        	bnez	a2, 0x80204d04 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
80204cfe: 09 a8        	j	0x80204d10 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
80204d00: aa 86        	mv	a3, a0
80204d02: 19 c6        	beqz	a2, 0x80204d10 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
80204d04: 36 96        	add	a2, a2, a3
80204d06: 23 80 b6 00  	sb	a1, 0(a3)
80204d0a: 85 06        	addi	a3, a3, 1
80204d0c: e3 ed c6 fe  	bltu	a3, a2, 0x80204d06 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
80204d10: 82 80        	ret
