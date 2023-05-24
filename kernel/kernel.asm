
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 2a 82        	mv	tp, a0

0000000080200002 <.Lpcrel_hi0>:
80200002: 17 b1 00 00  	auipc	sp, 11
80200006: 13 01 e1 ff  	addi	sp, sp, -2
8020000a: c1 62        	lui	t0, 16
8020000c: 05 05        	addi	a0, a0, 1
8020000e: 33 83 a2 02  	mul	t1, t0, a0
80200012: 1a 91        	add	sp, sp, t1

0000000080200014 <.Lpcrel_hi1>:
80200014: 17 b5 00 00  	auipc	a0, 11
80200018: 13 05 c5 fe  	addi	a0, a0, -20
8020001c: 1a 95        	add	a0, a0, t1
8020001e: 97 40 00 00  	auipc	ra, 4
80200022: e7 80 e0 ac  	jalr	-1330(ra)
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
80201170: 97 40 00 00  	auipc	ra, 4
80201174: e7 80 40 d7  	jalr	-652(ra)
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
8020207a: 97 50 00 00  	auipc	ra, 5
8020207e: e7 80 a0 00  	jalr	10(ra)
80202082: 09 65        	lui	a0, 2
80202084: 1b 05 85 1c  	addiw	a0, a0, 456
80202088: 33 05 a4 40  	sub	a0, s0, a0
8020208c: 13 06 10 08  	li	a2, 129
80202090: 81 45        	li	a1, 0
80202092: 97 50 00 00  	auipc	ra, 5
80202096: e7 80 20 ff  	jalr	-14(ra)
8020209a: 09 65        	lui	a0, 2
8020209c: 1b 05 05 14  	addiw	a0, a0, 320
802020a0: 33 05 a4 40  	sub	a0, s0, a0
802020a4: 13 06 10 08  	li	a2, 129
802020a8: 81 45        	li	a1, 0
802020aa: 97 50 00 00  	auipc	ra, 5
802020ae: e7 80 a0 fd  	jalr	-38(ra)
802020b2: 09 65        	lui	a0, 2
802020b4: 1b 05 85 0b  	addiw	a0, a0, 184
802020b8: 33 05 a4 40  	sub	a0, s0, a0
802020bc: 13 06 10 08  	li	a2, 129
802020c0: 81 45        	li	a1, 0
802020c2: 97 50 00 00  	auipc	ra, 5
802020c6: e7 80 20 fc  	jalr	-62(ra)
802020ca: 09 65        	lui	a0, 2
802020cc: 1b 05 05 03  	addiw	a0, a0, 48
802020d0: 33 05 a4 40  	sub	a0, s0, a0
802020d4: 13 06 10 08  	li	a2, 129
802020d8: 81 45        	li	a1, 0
802020da: 97 50 00 00  	auipc	ra, 5
802020de: e7 80 a0 fa  	jalr	-86(ra)
802020e2: 09 65        	lui	a0, 2
802020e4: 1b 05 85 fa  	addiw	a0, a0, -88
802020e8: 33 05 a4 40  	sub	a0, s0, a0
802020ec: 13 06 10 08  	li	a2, 129
802020f0: 81 45        	li	a1, 0
802020f2: 97 50 00 00  	auipc	ra, 5
802020f6: e7 80 20 f9  	jalr	-110(ra)
802020fa: 09 65        	lui	a0, 2
802020fc: 1b 05 05 f2  	addiw	a0, a0, -224
80202100: 33 05 a4 40  	sub	a0, s0, a0
80202104: 13 06 10 08  	li	a2, 129
80202108: 81 45        	li	a1, 0
8020210a: 97 50 00 00  	auipc	ra, 5
8020210e: e7 80 a0 f7  	jalr	-134(ra)
80202112: 09 65        	lui	a0, 2
80202114: 1b 05 85 e9  	addiw	a0, a0, -360
80202118: 33 05 a4 40  	sub	a0, s0, a0
8020211c: 13 06 10 08  	li	a2, 129
80202120: 81 45        	li	a1, 0
80202122: 97 50 00 00  	auipc	ra, 5
80202126: e7 80 20 f6  	jalr	-158(ra)
8020212a: 09 65        	lui	a0, 2
8020212c: 1b 05 05 e1  	addiw	a0, a0, -496
80202130: 33 05 a4 40  	sub	a0, s0, a0
80202134: 13 06 10 08  	li	a2, 129
80202138: 81 45        	li	a1, 0
8020213a: 97 50 00 00  	auipc	ra, 5
8020213e: e7 80 a0 f4  	jalr	-182(ra)
80202142: 09 65        	lui	a0, 2
80202144: 1b 05 85 d8  	addiw	a0, a0, -632
80202148: 33 05 a4 40  	sub	a0, s0, a0
8020214c: 13 06 10 08  	li	a2, 129
80202150: 81 45        	li	a1, 0
80202152: 97 50 00 00  	auipc	ra, 5
80202156: e7 80 20 f3  	jalr	-206(ra)
8020215a: 75 45        	li	a0, 29
8020215c: 22 05        	slli	a0, a0, 8
8020215e: 33 05 a4 40  	sub	a0, s0, a0
80202162: 13 06 10 08  	li	a2, 129
80202166: 81 45        	li	a1, 0
80202168: 97 50 00 00  	auipc	ra, 5
8020216c: e7 80 c0 f1  	jalr	-228(ra)
80202170: 09 65        	lui	a0, 2
80202172: 1b 05 85 c7  	addiw	a0, a0, -904
80202176: 33 05 a4 40  	sub	a0, s0, a0
8020217a: 13 06 10 08  	li	a2, 129
8020217e: 81 45        	li	a1, 0
80202180: 97 50 00 00  	auipc	ra, 5
80202184: e7 80 40 f0  	jalr	-252(ra)
80202188: 09 65        	lui	a0, 2
8020218a: 1b 05 05 bf  	addiw	a0, a0, -1040
8020218e: 33 05 a4 40  	sub	a0, s0, a0
80202192: 13 06 10 08  	li	a2, 129
80202196: 81 45        	li	a1, 0
80202198: 97 50 00 00  	auipc	ra, 5
8020219c: e7 80 c0 ee  	jalr	-276(ra)
802021a0: 09 65        	lui	a0, 2
802021a2: 1b 05 85 b6  	addiw	a0, a0, -1176
802021a6: 33 05 a4 40  	sub	a0, s0, a0
802021aa: 13 06 10 08  	li	a2, 129
802021ae: 81 45        	li	a1, 0
802021b0: 97 50 00 00  	auipc	ra, 5
802021b4: e7 80 40 ed  	jalr	-300(ra)
802021b8: 09 65        	lui	a0, 2
802021ba: 1b 05 05 ae  	addiw	a0, a0, -1312
802021be: 33 05 a4 40  	sub	a0, s0, a0
802021c2: 13 06 10 08  	li	a2, 129
802021c6: 81 45        	li	a1, 0
802021c8: 97 50 00 00  	auipc	ra, 5
802021cc: e7 80 c0 eb  	jalr	-324(ra)
802021d0: 09 65        	lui	a0, 2
802021d2: 1b 05 85 a5  	addiw	a0, a0, -1448
802021d6: 33 05 a4 40  	sub	a0, s0, a0
802021da: 13 06 10 08  	li	a2, 129
802021de: 81 45        	li	a1, 0
802021e0: 97 50 00 00  	auipc	ra, 5
802021e4: e7 80 40 ea  	jalr	-348(ra)
802021e8: 93 8a f9 7f  	addi	s5, s3, 2047
802021ec: 13 85 1a 08  	addi	a0, s5, 129
802021f0: 13 06 10 08  	li	a2, 129
802021f4: 81 45        	li	a1, 0
802021f6: 97 50 00 00  	auipc	ra, 5
802021fa: e7 80 e0 e8  	jalr	-370(ra)
802021fe: 13 85 9a 10  	addi	a0, s5, 265
80202202: 13 06 10 08  	li	a2, 129
80202206: 81 45        	li	a1, 0
80202208: 97 50 00 00  	auipc	ra, 5
8020220c: e7 80 c0 e7  	jalr	-388(ra)
80202210: 13 85 1a 19  	addi	a0, s5, 401
80202214: 13 06 10 08  	li	a2, 129
80202218: 81 45        	li	a1, 0
8020221a: 97 50 00 00  	auipc	ra, 5
8020221e: e7 80 a0 e6  	jalr	-406(ra)
80202222: 13 85 9a 21  	addi	a0, s5, 537
80202226: 13 06 10 08  	li	a2, 129
8020222a: 81 45        	li	a1, 0
8020222c: 97 50 00 00  	auipc	ra, 5
80202230: e7 80 80 e5  	jalr	-424(ra)
80202234: 13 85 1a 2a  	addi	a0, s5, 673
80202238: 13 06 10 08  	li	a2, 129
8020223c: 81 45        	li	a1, 0
8020223e: 97 50 00 00  	auipc	ra, 5
80202242: e7 80 60 e4  	jalr	-442(ra)
80202246: 13 85 9a 32  	addi	a0, s5, 809
8020224a: 13 06 10 08  	li	a2, 129
8020224e: 81 45        	li	a1, 0
80202250: 97 50 00 00  	auipc	ra, 5
80202254: e7 80 40 e3  	jalr	-460(ra)
80202258: 13 85 1a 3b  	addi	a0, s5, 945
8020225c: 13 06 10 08  	li	a2, 129
80202260: 81 45        	li	a1, 0
80202262: 97 50 00 00  	auipc	ra, 5
80202266: e7 80 20 e2  	jalr	-478(ra)
8020226a: 13 85 9a 43  	addi	a0, s5, 1081
8020226e: 13 06 10 08  	li	a2, 129
80202272: 81 45        	li	a1, 0
80202274: 97 50 00 00  	auipc	ra, 5
80202278: e7 80 00 e1  	jalr	-496(ra)
8020227c: 13 85 1a 4c  	addi	a0, s5, 1217
80202280: 13 06 10 08  	li	a2, 129
80202284: 81 45        	li	a1, 0
80202286: 97 50 00 00  	auipc	ra, 5
8020228a: e7 80 e0 df  	jalr	-514(ra)
8020228e: 13 85 9a 54  	addi	a0, s5, 1353
80202292: 13 06 10 08  	li	a2, 129
80202296: 81 45        	li	a1, 0
80202298: 97 50 00 00  	auipc	ra, 5
8020229c: e7 80 c0 de  	jalr	-532(ra)
802022a0: 13 85 1a 5d  	addi	a0, s5, 1489
802022a4: 13 06 10 08  	li	a2, 129
802022a8: 81 45        	li	a1, 0
802022aa: 97 50 00 00  	auipc	ra, 5
802022ae: e7 80 a0 dd  	jalr	-550(ra)
802022b2: 13 85 9a 65  	addi	a0, s5, 1625
802022b6: 13 06 10 08  	li	a2, 129
802022ba: 81 45        	li	a1, 0
802022bc: 97 50 00 00  	auipc	ra, 5
802022c0: e7 80 80 dc  	jalr	-568(ra)
802022c4: 13 85 1a 6e  	addi	a0, s5, 1761
802022c8: 13 06 10 08  	li	a2, 129
802022cc: 81 45        	li	a1, 0
802022ce: 97 50 00 00  	auipc	ra, 5
802022d2: e7 80 60 db  	jalr	-586(ra)
802022d6: 13 85 9a 76  	addi	a0, s5, 1897
802022da: 13 06 10 08  	li	a2, 129
802022de: 81 45        	li	a1, 0
802022e0: 97 50 00 00  	auipc	ra, 5
802022e4: e7 80 40 da  	jalr	-604(ra)
802022e8: 13 85 1a 7f  	addi	a0, s5, 2033
802022ec: 13 06 10 08  	li	a2, 129
802022f0: 81 45        	li	a1, 0
802022f2: 97 50 00 00  	auipc	ra, 5
802022f6: e7 80 20 d9  	jalr	-622(ra)
802022fa: 05 6b        	lui	s6, 1
802022fc: 1b 05 8b 07  	addiw	a0, s6, 120
80202300: 4e 95        	add	a0, a0, s3
80202302: 13 06 10 08  	li	a2, 129
80202306: 81 45        	li	a1, 0
80202308: 97 50 00 00  	auipc	ra, 5
8020230c: e7 80 c0 d7  	jalr	-644(ra)
80202310: c5 4a        	li	s5, 17
80202312: 13 95 8a 00  	slli	a0, s5, 8
80202316: 4e 95        	add	a0, a0, s3
80202318: 13 06 10 08  	li	a2, 129
8020231c: 81 45        	li	a1, 0
8020231e: 97 50 00 00  	auipc	ra, 5
80202322: e7 80 60 d6  	jalr	-666(ra)
80202326: 1b 05 8b 18  	addiw	a0, s6, 392
8020232a: 4e 95        	add	a0, a0, s3
8020232c: 13 06 10 08  	li	a2, 129
80202330: 81 45        	li	a1, 0
80202332: 97 50 00 00  	auipc	ra, 5
80202336: e7 80 20 d5  	jalr	-686(ra)
8020233a: 1b 05 0b 21  	addiw	a0, s6, 528
8020233e: 4e 95        	add	a0, a0, s3
80202340: 13 06 10 08  	li	a2, 129
80202344: 81 45        	li	a1, 0
80202346: 97 50 00 00  	auipc	ra, 5
8020234a: e7 80 e0 d3  	jalr	-706(ra)
8020234e: 1b 05 8b 29  	addiw	a0, s6, 664
80202352: 4e 95        	add	a0, a0, s3
80202354: 13 06 10 08  	li	a2, 129
80202358: 81 45        	li	a1, 0
8020235a: 97 50 00 00  	auipc	ra, 5
8020235e: e7 80 a0 d2  	jalr	-726(ra)
80202362: 1b 05 0b 32  	addiw	a0, s6, 800
80202366: 4e 95        	add	a0, a0, s3
80202368: 13 06 10 08  	li	a2, 129
8020236c: 81 45        	li	a1, 0
8020236e: 97 50 00 00  	auipc	ra, 5
80202372: e7 80 60 d1  	jalr	-746(ra)
80202376: 1b 05 8b 3a  	addiw	a0, s6, 936
8020237a: 4e 95        	add	a0, a0, s3
8020237c: 13 06 10 08  	li	a2, 129
80202380: 81 45        	li	a1, 0
80202382: 97 50 00 00  	auipc	ra, 5
80202386: e7 80 20 d0  	jalr	-766(ra)
8020238a: 1b 05 0b 43  	addiw	a0, s6, 1072
8020238e: 4e 95        	add	a0, a0, s3
80202390: 13 06 10 08  	li	a2, 129
80202394: 81 45        	li	a1, 0
80202396: 97 50 00 00  	auipc	ra, 5
8020239a: e7 80 e0 ce  	jalr	-786(ra)
8020239e: 1b 05 8b 4b  	addiw	a0, s6, 1208
802023a2: 4e 95        	add	a0, a0, s3
802023a4: 13 06 10 08  	li	a2, 129
802023a8: 81 45        	li	a1, 0
802023aa: 97 50 00 00  	auipc	ra, 5
802023ae: e7 80 a0 cd  	jalr	-806(ra)
802023b2: 1b 05 0b 54  	addiw	a0, s6, 1344
802023b6: 4e 95        	add	a0, a0, s3
802023b8: 13 06 10 08  	li	a2, 129
802023bc: 81 45        	li	a1, 0
802023be: 97 50 00 00  	auipc	ra, 5
802023c2: e7 80 60 cc  	jalr	-826(ra)
802023c6: 1b 05 8b 5c  	addiw	a0, s6, 1480
802023ca: 4e 95        	add	a0, a0, s3
802023cc: 13 06 10 08  	li	a2, 129
802023d0: 81 45        	li	a1, 0
802023d2: 97 50 00 00  	auipc	ra, 5
802023d6: e7 80 20 cb  	jalr	-846(ra)
802023da: 1b 05 0b 65  	addiw	a0, s6, 1616
802023de: 4e 95        	add	a0, a0, s3
802023e0: 13 06 10 08  	li	a2, 129
802023e4: 81 45        	li	a1, 0
802023e6: 97 50 00 00  	auipc	ra, 5
802023ea: e7 80 e0 c9  	jalr	-866(ra)
802023ee: 1b 05 8b 6d  	addiw	a0, s6, 1752
802023f2: 4e 95        	add	a0, a0, s3
802023f4: 13 06 10 08  	li	a2, 129
802023f8: 81 45        	li	a1, 0
802023fa: 97 50 00 00  	auipc	ra, 5
802023fe: e7 80 a0 c8  	jalr	-886(ra)
80202402: 1b 05 0b 76  	addiw	a0, s6, 1888
80202406: 4e 95        	add	a0, a0, s3
80202408: 13 06 10 08  	li	a2, 129
8020240c: 81 45        	li	a1, 0
8020240e: 97 50 00 00  	auipc	ra, 5
80202412: e7 80 60 c7  	jalr	-906(ra)
80202416: 1b 05 8b 7e  	addiw	a0, s6, 2024
8020241a: 4e 95        	add	a0, a0, s3
8020241c: 13 06 10 08  	li	a2, 129
80202420: 81 45        	li	a1, 0
80202422: 97 50 00 00  	auipc	ra, 5
80202426: e7 80 20 c6  	jalr	-926(ra)
8020242a: 09 6b        	lui	s6, 2
8020242c: 1b 05 0b 87  	addiw	a0, s6, -1936
80202430: 4e 95        	add	a0, a0, s3
80202432: 13 06 10 08  	li	a2, 129
80202436: 81 45        	li	a1, 0
80202438: 97 50 00 00  	auipc	ra, 5
8020243c: e7 80 c0 c4  	jalr	-948(ra)
80202440: 1b 05 8b 8f  	addiw	a0, s6, -1800
80202444: 4e 95        	add	a0, a0, s3
80202446: 13 06 10 08  	li	a2, 129
8020244a: 81 45        	li	a1, 0
8020244c: 97 50 00 00  	auipc	ra, 5
80202450: e7 80 80 c3  	jalr	-968(ra)
80202454: 1b 05 0b 98  	addiw	a0, s6, -1664
80202458: 4e 95        	add	a0, a0, s3
8020245a: 13 06 10 08  	li	a2, 129
8020245e: 81 45        	li	a1, 0
80202460: 97 50 00 00  	auipc	ra, 5
80202464: e7 80 40 c2  	jalr	-988(ra)
80202468: 1b 05 8b a0  	addiw	a0, s6, -1528
8020246c: 4e 95        	add	a0, a0, s3
8020246e: 13 06 10 08  	li	a2, 129
80202472: 81 45        	li	a1, 0
80202474: 97 50 00 00  	auipc	ra, 5
80202478: e7 80 00 c1  	jalr	-1008(ra)
8020247c: 1b 05 0b a9  	addiw	a0, s6, -1392
80202480: 4e 95        	add	a0, a0, s3
80202482: 13 06 10 08  	li	a2, 129
80202486: 81 45        	li	a1, 0
80202488: 97 50 00 00  	auipc	ra, 5
8020248c: e7 80 c0 bf  	jalr	-1028(ra)
80202490: 1b 05 8b b1  	addiw	a0, s6, -1256
80202494: 4e 95        	add	a0, a0, s3
80202496: 13 06 10 08  	li	a2, 129
8020249a: 81 45        	li	a1, 0
8020249c: 97 50 00 00  	auipc	ra, 5
802024a0: e7 80 80 be  	jalr	-1048(ra)
802024a4: 1b 05 0b ba  	addiw	a0, s6, -1120
802024a8: 4e 95        	add	a0, a0, s3
802024aa: 13 06 10 08  	li	a2, 129
802024ae: 81 45        	li	a1, 0
802024b0: 97 50 00 00  	auipc	ra, 5
802024b4: e7 80 40 bd  	jalr	-1068(ra)
802024b8: 1b 05 8b c2  	addiw	a0, s6, -984
802024bc: 4e 95        	add	a0, a0, s3
802024be: 13 06 10 08  	li	a2, 129
802024c2: 81 45        	li	a1, 0
802024c4: 97 50 00 00  	auipc	ra, 5
802024c8: e7 80 00 bc  	jalr	-1088(ra)
802024cc: 1b 05 0b cb  	addiw	a0, s6, -848
802024d0: 4e 95        	add	a0, a0, s3
802024d2: 13 06 10 08  	li	a2, 129
802024d6: 81 45        	li	a1, 0
802024d8: 97 50 00 00  	auipc	ra, 5
802024dc: e7 80 c0 ba  	jalr	-1108(ra)
802024e0: 1b 05 8b d3  	addiw	a0, s6, -712
802024e4: 4e 95        	add	a0, a0, s3
802024e6: 13 06 10 08  	li	a2, 129
802024ea: 81 45        	li	a1, 0
802024ec: 97 50 00 00  	auipc	ra, 5
802024f0: e7 80 80 b9  	jalr	-1128(ra)
802024f4: 1b 05 0b dc  	addiw	a0, s6, -576
802024f8: 4e 95        	add	a0, a0, s3
802024fa: 13 06 10 08  	li	a2, 129
802024fe: 81 45        	li	a1, 0
80202500: 97 50 00 00  	auipc	ra, 5
80202504: e7 80 40 b8  	jalr	-1148(ra)
80202508: 1b 05 8b e4  	addiw	a0, s6, -440
8020250c: 4e 95        	add	a0, a0, s3
8020250e: 13 06 10 08  	li	a2, 129
80202512: 81 45        	li	a1, 0
80202514: 97 50 00 00  	auipc	ra, 5
80202518: e7 80 00 b7  	jalr	-1168(ra)
8020251c: 1b 05 0b ed  	addiw	a0, s6, -304
80202520: 4e 95        	add	a0, a0, s3
80202522: 13 06 10 08  	li	a2, 129
80202526: 81 45        	li	a1, 0
80202528: 97 50 00 00  	auipc	ra, 5
8020252c: e7 80 c0 b5  	jalr	-1188(ra)
80202530: 1b 05 8b f5  	addiw	a0, s6, -168
80202534: 4e 95        	add	a0, a0, s3
80202536: 13 06 10 08  	li	a2, 129
8020253a: 81 45        	li	a1, 0
8020253c: 97 50 00 00  	auipc	ra, 5
80202540: e7 80 80 b4  	jalr	-1208(ra)
80202544: 1b 05 0b fe  	addiw	a0, s6, -32
80202548: 4e 95        	add	a0, a0, s3
8020254a: 13 06 10 08  	li	a2, 129
8020254e: 81 45        	li	a1, 0
80202550: 97 50 00 00  	auipc	ra, 5
80202554: e7 80 40 b3  	jalr	-1228(ra)
80202558: 1b 05 8b 06  	addiw	a0, s6, 104
8020255c: 4e 95        	add	a0, a0, s3
8020255e: 13 06 10 08  	li	a2, 129
80202562: 81 45        	li	a1, 0
80202564: 97 50 00 00  	auipc	ra, 5
80202568: e7 80 00 b2  	jalr	-1248(ra)
8020256c: 1b 05 0b 0f  	addiw	a0, s6, 240
80202570: 4e 95        	add	a0, a0, s3
80202572: 13 06 10 08  	li	a2, 129
80202576: 81 45        	li	a1, 0
80202578: 97 50 00 00  	auipc	ra, 5
8020257c: e7 80 c0 b0  	jalr	-1268(ra)
80202580: 1b 05 8b 17  	addiw	a0, s6, 376
80202584: 4e 95        	add	a0, a0, s3
80202586: 13 06 10 08  	li	a2, 129
8020258a: 81 45        	li	a1, 0
8020258c: 97 50 00 00  	auipc	ra, 5
80202590: e7 80 80 af  	jalr	-1288(ra)
80202594: 93 99 9a 00  	slli	s3, s5, 9
80202598: 11 65        	lui	a0, 4
8020259a: 1b 05 05 45  	addiw	a0, a0, 1104
8020259e: 33 05 a4 40  	sub	a0, s0, a0
802025a2: 89 65        	lui	a1, 2
802025a4: 9b 85 05 25  	addiw	a1, a1, 592
802025a8: b3 05 b4 40  	sub	a1, s0, a1
802025ac: 4e 86        	mv	a2, s3
802025ae: 97 50 00 00  	auipc	ra, 5
802025b2: e7 80 e0 ad  	jalr	-1314(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802025b6: 23 b4 24 01  	sd	s2, 8(s1)
802025ba: 13 89 04 01  	addi	s2, s1, 16
802025be: 11 65        	lui	a0, 4
802025c0: 1b 05 05 45  	addiw	a0, a0, 1104
802025c4: b3 05 a4 40  	sub	a1, s0, a0
802025c8: 4a 85        	mv	a0, s2
802025ca: 4e 86        	mv	a2, s3
802025cc: 97 50 00 00  	auipc	ra, 5
802025d0: e7 80 00 ac  	jalr	-1344(ra)
;                 finish.panicked = false;
802025d4: 23 04 0a 00  	sb	zero, 8(s4)
802025d8: 0f 00 10 03  	fence	rw, w
802025dc: 09 45        	li	a0, 2
802025de: 88 e0        	sd	a0, 0(s1)
802025e0: 11 65        	lui	a0, 4
802025e2: 1b 05 05 46  	addiw	a0, a0, 1120
802025e6: 33 05 a4 40  	sub	a0, s0, a0
802025ea: 97 30 00 00  	auipc	ra, 3
802025ee: e7 80 e0 14  	jalr	334(ra)
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
80202648: 17 65 00 00  	auipc	a0, 6
8020264c: 13 05 05 a4  	addi	a0, a0, -1472

0000000080202650 <.Lpcrel_hi1>:
80202650: 97 65 00 00  	auipc	a1, 6
80202654: 13 86 05 a6  	addi	a2, a1, -1440
80202658: 93 05 80 02  	li	a1, 40
8020265c: 97 30 00 00  	auipc	ra, 3
80202660: e7 80 a0 6d  	jalr	1754(ra)
80202664: 00 00        	unimp	

0000000080202666 <.Lpcrel_hi2>:
;                 PANICKED => panic!("Once has panicked"),
80202666: 17 65 00 00  	auipc	a0, 6
8020266a: 13 05 a5 99  	addi	a0, a0, -1638

000000008020266e <.Lpcrel_hi3>:
8020266e: 97 65 00 00  	auipc	a1, 6
80202672: 13 86 25 a0  	addi	a2, a1, -1534
80202676: c5 45        	li	a1, 17
80202678: 97 30 00 00  	auipc	ra, 3
8020267c: e7 80 e0 6b  	jalr	1726(ra)
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
802026fe: 17 65 00 00  	auipc	a0, 6
80202702: 93 0b 95 9d  	addi	s7, a0, -1575
80202706: 11 4c        	li	s8, 4
;         Self {
80202708: 13 06 80 0b  	li	a2, 184
8020270c: 4a 85        	mv	a0, s2
8020270e: 81 45        	li	a1, 0
80202710: 97 50 00 00  	auipc	ra, 5
80202714: e7 80 40 97  	jalr	-1676(ra)
;     pub static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202718: 13 85 04 ea  	addi	a0, s1, -352
8020271c: 13 06 00 08  	li	a2, 128
80202720: 81 45        	li	a1, 0
80202722: 97 50 00 00  	auipc	ra, 5
80202726: e7 80 20 96  	jalr	-1694(ra)
8020272a: 23 b0 74 f3  	sd	s7, -224(s1)
8020272e: 23 b4 84 f3  	sd	s8, -216(s1)
80202732: 23 b8 04 f2  	sd	zero, -208(s1)
80202736: 23 8c 04 f2  	sb	zero, -200(s1)
8020273a: 13 85 94 f3  	addi	a0, s1, -199
8020273e: b1 65        	lui	a1, 12
80202740: 9b 85 05 c6  	addiw	a1, a1, -928
80202744: b3 05 b4 40  	sub	a1, s0, a1
80202748: 13 06 f0 0b  	li	a2, 191
8020274c: 97 50 00 00  	auipc	ra, 5
80202750: e7 80 00 94  	jalr	-1728(ra)
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
8020278a: 97 50 00 00  	auipc	ra, 5
8020278e: e7 80 20 90  	jalr	-1790(ra)
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
802027b6: 97 30 00 00  	auipc	ra, 3
802027ba: e7 80 20 f7  	jalr	-142(ra)
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
80202834: 97 50 00 00  	auipc	ra, 5
80202838: e7 80 80 85  	jalr	-1960(ra)
;                 finish.panicked = false;
8020283c: 23 04 0a 00  	sb	zero, 8(s4)
80202840: 0f 00 10 03  	fence	rw, w
80202844: 09 45        	li	a0, 2
80202846: 23 b0 aa 00  	sd	a0, 0(s5)
8020284a: 31 65        	lui	a0, 12
8020284c: 1b 05 05 c7  	addiw	a0, a0, -912
80202850: 33 05 a4 40  	sub	a0, s0, a0
80202854: 97 30 00 00  	auipc	ra, 3
80202858: e7 80 40 ee  	jalr	-284(ra)
8020285c: 61 b7        	j	0x802027e4 <.Lpcrel_hi8+0xe6>
;             match status {
8020285e: 05 e1        	bnez	a0, 0x8020287e <.Lpcrel_hi11>

0000000080202860 <.Lpcrel_hi9>:
;                 INCOMPLETE => unreachable!(),
80202860: 17 65 00 00  	auipc	a0, 6
80202864: 13 05 85 82  	addi	a0, a0, -2008

0000000080202868 <.Lpcrel_hi10>:
80202868: 97 65 00 00  	auipc	a1, 6
8020286c: 13 86 85 84  	addi	a2, a1, -1976
80202870: 93 05 80 02  	li	a1, 40
80202874: 97 30 00 00  	auipc	ra, 3
80202878: e7 80 20 4c  	jalr	1218(ra)
8020287c: 00 00        	unimp	

000000008020287e <.Lpcrel_hi11>:
;                 PANICKED => panic!("Once has panicked"),
8020287e: 17 55 00 00  	auipc	a0, 5
80202882: 13 05 25 78  	addi	a0, a0, 1922

0000000080202886 <.Lpcrel_hi12>:
80202886: 97 55 00 00  	auipc	a1, 5
8020288a: 13 86 a5 7e  	addi	a2, a1, 2026
8020288e: c5 45        	li	a1, 17
80202890: 97 30 00 00  	auipc	ra, 3
80202894: e7 80 60 4a  	jalr	1190(ra)
80202898: 00 00        	unimp	

000000008020289a <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.13919938664286092757>:
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
802028ac: 09 c5        	beqz	a0, 0x802028b6 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.13919938664286092757+0x1c>
;             kfree(self.trapframe as Addr);
802028ae: 97 20 00 00  	auipc	ra, 2
802028b2: e7 80 00 2b  	jalr	688(ra)
;         !self.data.is_null()
802028b6: 03 b5 04 14  	ld	a0, 320(s1)
;         self.trapframe = null_mut();
802028ba: 23 b4 04 14  	sd	zero, 328(s1)
;         if self.uvm.valid() {
802028be: 39 cd        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.13919938664286092757+0x82>
802028c0: 13 89 04 14  	addi	s2, s1, 320
802028c4: 37 05 00 04  	lui	a0, 16384
802028c8: 7d 35        	addiw	a0, a0, -1
802028ca: 93 15 c5 00  	slli	a1, a0, 12
;         self.uvm.uvmunmap(TRAMPOLINE, 1, false);
802028ce: 05 46        	li	a2, 1
802028d0: 4a 85        	mv	a0, s2
802028d2: 81 46        	li	a3, 0
802028d4: 97 20 00 00  	auipc	ra, 2
802028d8: e7 80 40 98  	jalr	-1660(ra)
802028dc: 37 05 00 02  	lui	a0, 8192
802028e0: 7d 35        	addiw	a0, a0, -1
802028e2: 93 15 d5 00  	slli	a1, a0, 13
;         self.uvm.uvmunmap(TRAPFRAME, 1, false);
802028e6: 05 46        	li	a2, 1
802028e8: 4a 85        	mv	a0, s2
802028ea: 81 46        	li	a3, 0
802028ec: 97 20 00 00  	auipc	ra, 2
802028f0: e7 80 c0 96  	jalr	-1684(ra)
;         self.uvm.uvmfree(self.sz);
802028f4: 03 b5 84 13  	ld	a0, 312(s1)
; 		if sz > 0 {
802028f8: 15 c1        	beqz	a0, 0x8020291c <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.13919938664286092757+0x82>
802028fa: 85 65        	lui	a1, 1
802028fc: fd 35        	addiw	a1, a1, -1
;     (addr + PGSIZE - 1) & !(PGSIZE - 1)
802028fe: 2e 95        	add	a0, a0, a1
; 			self.uvmunmap(0, pgroundup(sz) / PGSIZE, true);
80202900: 13 56 c5 00  	srli	a2, a0, 12
80202904: 85 46        	li	a3, 1
80202906: 4a 85        	mv	a0, s2
80202908: 81 45        	li	a1, 0
8020290a: 97 20 00 00  	auipc	ra, 2
8020290e: e7 80 e0 94  	jalr	-1714(ra)
; 			self.freewalk();
80202912: 4a 85        	mv	a0, s2
80202914: 97 20 00 00  	auipc	ra, 2
80202918: e7 80 80 bc  	jalr	-1080(ra)
;         self.pid = 0;
8020291c: 23 b4 04 12  	sd	zero, 296(s1)
80202920: 83 b5 04 16  	ld	a1, 352(s1)
;         self.pid = 0;
80202924: 23 b0 04 12  	sd	zero, 288(s1)
80202928: 13 89 04 16  	addi	s2, s1, 352
;         self.sz = 0;
8020292c: 23 bc 04 12  	sd	zero, 312(s1)
80202930: 23 b0 04 14  	sd	zero, 320(s1)
80202934: 81 c9        	beqz	a1, 0x80202944 <_ZN6kernel7process4proc4Proc8freeproc17hcbbca6047994eaebE.llvm.13919938664286092757+0xaa>
80202936: 03 b5 84 15  	ld	a0, 344(s1)
8020293a: 05 46        	li	a2, 1
8020293c: 97 30 00 00  	auipc	ra, 3
80202940: e7 80 c0 de  	jalr	-532(ra)
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

000000008020296a <_ZN6kernel7process4proc8procinit17hc066ce9f1e6a7dc0E>:
; pub fn procinit() {
8020296a: 11 71        	addi	sp, sp, -256
;     unsafe { asm!("mv {}, sp", out(reg) x) }
8020296c: 86 fd        	sd	ra, 248(sp)
8020296e: a2 f9        	sd	s0, 240(sp)
80202970: a6 f5        	sd	s1, 232(sp)
80202972: ca f1        	sd	s2, 224(sp)
80202974: ce ed        	sd	s3, 216(sp)
80202976: d2 e9        	sd	s4, 208(sp)
80202978: d6 e5        	sd	s5, 200(sp)
8020297a: da e1        	sd	s6, 192(sp)
8020297c: 5e fd        	sd	s7, 184(sp)
8020297e: 62 f9        	sd	s8, 176(sp)
80202980: 66 f5        	sd	s9, 168(sp)
80202982: 6a f1        	sd	s10, 160(sp)
80202984: 6e ed        	sd	s11, 152(sp)
80202986: 00 02        	addi	s0, sp, 256
80202988: 0a 85        	mv	a0, sp
;     x
8020298a: 23 3c a4 f0  	sd	a0, -232(s0)
8020298e: 13 0a 84 f1  	addi	s4, s0, -232
;     println!("{:#x}", r_sp());
80202992: 23 34 44 f1  	sd	s4, -248(s0)

0000000080202996 <.Lpcrel_hi1>:
80202996: 17 45 00 00  	auipc	a0, 4
8020299a: 93 0a c5 1a  	addi	s5, a0, 428
8020299e: 23 38 54 f1  	sd	s5, -240(s0)
802029a2: 89 4c        	li	s9, 2
802029a4: 23 30 94 f3  	sd	s9, -224(s0)
802029a8: 23 38 94 f3  	sd	s9, -208(s0)
802029ac: 23 30 04 f4  	sd	zero, -192(s0)
802029b0: 85 49        	li	s3, 1
802029b2: 13 95 29 02  	slli	a0, s3, 34
802029b6: 13 0b 05 02  	addi	s6, a0, 32
802029ba: 23 34 64 f5  	sd	s6, -184(s0)
802029be: 8d 4b        	li	s7, 3
802029c0: 23 08 74 f5  	sb	s7, -176(s0)
802029c4: 13 0c 04 f9  	addi	s8, s0, -112
;     Stdout.write_fmt(args).unwrap();
802029c8: 23 3c 84 f5  	sd	s8, -168(s0)

00000000802029cc <.Lpcrel_hi2>:
802029cc: 17 55 00 00  	auipc	a0, 5
802029d0: 93 04 45 72  	addi	s1, a0, 1828
802029d4: 23 30 94 f6  	sd	s1, -160(s0)
802029d8: 23 34 94 f7  	sd	s9, -152(s0)
802029dc: 13 0d 84 f0  	addi	s10, s0, -248
802029e0: 23 38 a4 f7  	sd	s10, -144(s0)
802029e4: 23 3c 34 f7  	sd	s3, -136(s0)
802029e8: 93 0d 04 f2  	addi	s11, s0, -224
802029ec: 23 30 b4 f9  	sd	s11, -128(s0)
802029f0: 23 34 34 f9  	sd	s3, -120(s0)

00000000802029f4 <.Lpcrel_hi3>:
802029f4: 17 65 00 00  	auipc	a0, 6
802029f8: 93 05 45 89  	addi	a1, a0, -1900
802029fc: 13 05 84 f5  	addi	a0, s0, -168
80202a00: 13 06 04 f6  	addi	a2, s0, -160
80202a04: 97 40 00 00  	auipc	ra, 4
80202a08: e7 80 00 92  	jalr	-1760(ra)
80202a0c: 65 e9        	bnez	a0, 0x80202afc <.Lpcrel_hi4>

0000000080202a0e <.Lpcrel_hi7>:
;         self.0.call_once(builder)
80202a0e: 17 85 08 00  	auipc	a0, 136
80202a12: 13 05 a5 62  	addi	a0, a0, 1578
80202a16: 97 00 00 00  	auipc	ra, 0
80202a1a: e7 80 c0 c6  	jalr	-916(ra)
;     unsafe { asm!("mv {}, sp", out(reg) x) }
80202a1e: 8a 85        	mv	a1, sp
;         self.0.call_once(builder)
80202a20: 2a 89        	mv	s2, a0
;     x
80202a22: 23 3c b4 f0  	sd	a1, -232(s0)
;     println!("{:#x}", r_sp());
80202a26: 23 34 44 f1  	sd	s4, -248(s0)
80202a2a: 23 38 54 f1  	sd	s5, -240(s0)
80202a2e: 23 30 94 f3  	sd	s9, -224(s0)
80202a32: 23 38 94 f3  	sd	s9, -208(s0)
80202a36: 23 30 04 f4  	sd	zero, -192(s0)
80202a3a: 23 34 64 f5  	sd	s6, -184(s0)
80202a3e: 23 08 74 f5  	sb	s7, -176(s0)
;     Stdout.write_fmt(args).unwrap();
80202a42: 23 3c 84 f5  	sd	s8, -168(s0)
80202a46: 23 30 94 f6  	sd	s1, -160(s0)
80202a4a: 23 34 94 f7  	sd	s9, -152(s0)
80202a4e: 23 38 a4 f7  	sd	s10, -144(s0)
80202a52: 23 3c 34 f7  	sd	s3, -136(s0)
80202a56: 23 30 b4 f9  	sd	s11, -128(s0)
80202a5a: 23 34 34 f9  	sd	s3, -120(s0)

0000000080202a5e <.Lpcrel_hi8>:
80202a5e: 17 65 00 00  	auipc	a0, 6
80202a62: 93 05 a5 82  	addi	a1, a0, -2006
80202a66: 13 05 84 f5  	addi	a0, s0, -168
80202a6a: 13 06 04 f6  	addi	a2, s0, -160
80202a6e: 97 40 00 00  	auipc	ra, 4
80202a72: e7 80 60 8b  	jalr	-1866(ra)
80202a76: 45 e1        	bnez	a0, 0x80202b16 <.Lpcrel_hi9>
80202a78: 13 05 09 13  	addi	a0, s2, 304
80202a7c: 93 05 00 04  	li	a1, 64
80202a80: 37 06 00 04  	lui	a2, 16384
80202a84: 75 36        	addiw	a2, a2, -3
80202a86: 32 06        	slli	a2, a2, 12
80202a88: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80202a8a: 10 e1        	sd	a2, 0(a0)
80202a8c: 36 96        	add	a2, a2, a3
80202a8e: fd 15        	addi	a1, a1, -1
80202a90: 13 05 85 17  	addi	a0, a0, 376
80202a94: fd f9        	bnez	a1, 0x80202a8a <.Lpcrel_hi8+0x2c>
80202a96: 13 05 04 f9  	addi	a0, s0, -112
;     Stdout.write_fmt(args).unwrap();
80202a9a: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202a9e <.Lpcrel_hi12>:
80202a9e: 17 55 00 00  	auipc	a0, 5
80202aa2: 13 05 a5 68  	addi	a0, a0, 1674
80202aa6: 23 30 a4 f2  	sd	a0, -224(s0)
80202aaa: 05 45        	li	a0, 1
80202aac: 23 34 a4 f2  	sd	a0, -216(s0)

0000000080202ab0 <.Lpcrel_hi13>:
80202ab0: 17 55 00 00  	auipc	a0, 5
80202ab4: 13 05 85 63  	addi	a0, a0, 1592
80202ab8: 23 38 a4 f2  	sd	a0, -208(s0)
80202abc: 23 3c 04 f2  	sd	zero, -200(s0)
80202ac0: 23 30 04 f4  	sd	zero, -192(s0)

0000000080202ac4 <.Lpcrel_hi14>:
80202ac4: 17 55 00 00  	auipc	a0, 5
80202ac8: 93 05 45 7c  	addi	a1, a0, 1988
80202acc: 13 05 04 f6  	addi	a0, s0, -160
80202ad0: 13 06 04 f2  	addi	a2, s0, -224
80202ad4: 97 40 00 00  	auipc	ra, 4
80202ad8: e7 80 00 85  	jalr	-1968(ra)
80202adc: 31 e9        	bnez	a0, 0x80202b30 <.Lpcrel_hi15>
; }
80202ade: ee 70        	ld	ra, 248(sp)
80202ae0: 4e 74        	ld	s0, 240(sp)
80202ae2: ae 74        	ld	s1, 232(sp)
80202ae4: 0e 79        	ld	s2, 224(sp)
80202ae6: ee 69        	ld	s3, 216(sp)
80202ae8: 4e 6a        	ld	s4, 208(sp)
80202aea: ae 6a        	ld	s5, 200(sp)
80202aec: 0e 6b        	ld	s6, 192(sp)
80202aee: ea 7b        	ld	s7, 184(sp)
80202af0: 4a 7c        	ld	s8, 176(sp)
80202af2: aa 7c        	ld	s9, 168(sp)
80202af4: 0a 7d        	ld	s10, 160(sp)
80202af6: ea 6d        	ld	s11, 152(sp)
80202af8: 11 61        	addi	sp, sp, 256
80202afa: 82 80        	ret

0000000080202afc <.Lpcrel_hi4>:
80202afc: 17 55 00 00  	auipc	a0, 5
80202b00: 13 05 c5 7b  	addi	a0, a0, 1980

0000000080202b04 <.Lpcrel_hi5>:
80202b04: 97 55 00 00  	auipc	a1, 5
80202b08: 93 86 45 7e  	addi	a3, a1, 2020

0000000080202b0c <.Lpcrel_hi6>:
80202b0c: 97 65 00 00  	auipc	a1, 6
80202b10: 13 87 c5 80  	addi	a4, a1, -2036
80202b14: 15 a8        	j	0x80202b48 <.Lpcrel_hi17+0x8>

0000000080202b16 <.Lpcrel_hi9>:
80202b16: 17 55 00 00  	auipc	a0, 5
80202b1a: 13 05 25 7a  	addi	a0, a0, 1954

0000000080202b1e <.Lpcrel_hi10>:
80202b1e: 97 55 00 00  	auipc	a1, 5
80202b22: 93 86 a5 7c  	addi	a3, a1, 1994

0000000080202b26 <.Lpcrel_hi11>:
80202b26: 97 55 00 00  	auipc	a1, 5
80202b2a: 13 87 25 7f  	addi	a4, a1, 2034
80202b2e: 29 a8        	j	0x80202b48 <.Lpcrel_hi17+0x8>

0000000080202b30 <.Lpcrel_hi15>:
80202b30: 17 55 00 00  	auipc	a0, 5
80202b34: 13 05 85 78  	addi	a0, a0, 1928

0000000080202b38 <.Lpcrel_hi16>:
80202b38: 97 55 00 00  	auipc	a1, 5
80202b3c: 93 86 05 7b  	addi	a3, a1, 1968

0000000080202b40 <.Lpcrel_hi17>:
80202b40: 97 55 00 00  	auipc	a1, 5
80202b44: 13 87 85 7d  	addi	a4, a1, 2008
80202b48: 93 05 b0 02  	li	a1, 43
80202b4c: 13 06 04 f9  	addi	a2, s0, -112
80202b50: 97 30 00 00  	auipc	ra, 3
80202b54: e7 80 20 25  	jalr	594(ra)
80202b58: 00 00        	unimp	

0000000080202b5a <_ZN6kernel7process4proc6myproc17ha55a1285f0dbc7ddE>:
; pub fn myproc() -> *mut Proc {
80202b5a: 01 11        	addi	sp, sp, -32
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202b5c: 06 ec        	sd	ra, 24(sp)
80202b5e: 22 e8        	sd	s0, 16(sp)
80202b60: 26 e4        	sd	s1, 8(sp)
80202b62: 4a e0        	sd	s2, 0(sp)
80202b64: 00 10        	addi	s0, sp, 32
80202b66: 73 29 00 10  	csrr	s2, sstatus
80202b6a: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202b6c: 73 30 05 10  	csrc	sstatus, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202b70: 92 84        	mv	s1, tp

0000000080202b72 <.Lpcrel_hi18>:
;         self.0.call_once(builder)
80202b72: 17 e5 08 00  	auipc	a0, 142
80202b76: 13 05 e5 2e  	addi	a0, a0, 750
80202b7a: 97 f0 ff ff  	auipc	ra, 1048575
80202b7e: e7 80 60 48  	jalr	1158(ra)
80202b82: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202b86: 63 f0 b4 06  	bgeu	s1, a1, 0x80202be6 <.Lpcrel_hi19>
80202b8a: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
80202b8e: 33 86 b4 02  	mul	a2, s1, a1
80202b92: 2a 96        	add	a2, a2, a0
80202b94: 2c 7e        	ld	a1, 120(a2)
80202b96: 13 05 86 07  	addi	a0, a2, 120
80202b9a: 91 e5        	bnez	a1, 0x80202ba6 <.Lpcrel_hi18+0x34>
;         mc.intena = old;
80202b9c: 7a 19        	slli	s2, s2, 62
80202b9e: 93 56 f9 03  	srli	a3, s2, 63
80202ba2: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80202ba6: 85 05        	addi	a1, a1, 1
80202ba8: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202baa: 92 84        	mv	s1, tp

0000000080202bac <.Lpcrel_hi20>:
;         self.0.call_once(builder)
80202bac: 17 e5 08 00  	auipc	a0, 142
80202bb0: 13 05 45 2b  	addi	a0, a0, 692
80202bb4: 97 f0 ff ff  	auipc	ra, 1048575
80202bb8: e7 80 c0 44  	jalr	1100(ra)
80202bbc: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202bc0: 63 f8 b4 02  	bgeu	s1, a1, 0x80202bf0 <.Lpcrel_hi21>
80202bc4: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202bc8: b3 85 b4 02  	mul	a1, s1, a1
80202bcc: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
80202bce: 04 61        	ld	s1, 0(a0)
;     pop_off();
80202bd0: 97 10 00 00  	auipc	ra, 1
80202bd4: e7 80 a0 d6  	jalr	-662(ra)
; }
80202bd8: 26 85        	mv	a0, s1
80202bda: e2 60        	ld	ra, 24(sp)
80202bdc: 42 64        	ld	s0, 16(sp)
80202bde: a2 64        	ld	s1, 8(sp)
80202be0: 02 69        	ld	s2, 0(sp)
80202be2: 05 61        	addi	sp, sp, 32
80202be4: 82 80        	ret

0000000080202be6 <.Lpcrel_hi19>:
; 	&mut CPUS.get_mut()[id]
80202be6: 17 55 00 00  	auipc	a0, 5
80202bea: 13 06 25 7e  	addi	a2, a0, 2018
80202bee: 29 a0        	j	0x80202bf8 <.Lpcrel_hi21+0x8>

0000000080202bf0 <.Lpcrel_hi21>:
80202bf0: 17 55 00 00  	auipc	a0, 5
80202bf4: 13 06 85 7d  	addi	a2, a0, 2008
80202bf8: 93 05 00 04  	li	a1, 64
80202bfc: 26 85        	mv	a0, s1
80202bfe: 97 30 00 00  	auipc	ra, 3
80202c02: e7 80 40 16  	jalr	356(ra)
80202c06: 00 00        	unimp	

0000000080202c08 <_ZN6kernel7process4proc9allocproc17hbff1f622c20dfe4bE>:
; fn allocproc() -> *mut Proc {
80202c08: 19 71        	addi	sp, sp, -128
80202c0a: 86 fc        	sd	ra, 120(sp)
80202c0c: a2 f8        	sd	s0, 112(sp)
80202c0e: a6 f4        	sd	s1, 104(sp)
80202c10: ca f0        	sd	s2, 96(sp)
80202c12: ce ec        	sd	s3, 88(sp)
80202c14: d2 e8        	sd	s4, 80(sp)
80202c16: d6 e4        	sd	s5, 72(sp)
80202c18: da e0        	sd	s6, 64(sp)
80202c1a: 5e fc        	sd	s7, 56(sp)
80202c1c: 00 01        	addi	s0, sp, 128

0000000080202c1e <.Lpcrel_hi22>:
;         self.0.call_once(builder)
80202c1e: 17 85 08 00  	auipc	a0, 136
80202c22: 13 05 a5 41  	addi	a0, a0, 1050
80202c26: 97 00 00 00  	auipc	ra, 0
80202c2a: e7 80 c0 a5  	jalr	-1444(ra)
80202c2e: 13 0a 05 12  	addi	s4, a0, 288
80202c32: 93 09 00 04  	li	s3, 64

0000000080202c36 <.Lpcrel_hi23>:
80202c36: 17 e5 08 00  	auipc	a0, 142
80202c3a: 13 09 a5 22  	addi	s2, a0, 554
80202c3e: 93 0a 80 08  	li	s5, 136
80202c42: 13 0b 00 04  	li	s6, 64
;         p.lock.acquire();
80202c46: 13 05 0a f6  	addi	a0, s4, -160
80202c4a: 97 10 00 00  	auipc	ra, 1
80202c4e: e7 80 40 96  	jalr	-1692(ra)
; #[derive(PartialEq, Eq, Clone, Copy)]
80202c52: 03 45 0a 05  	lbu	a0, 80(s4)
;         if p.state == ProcState::Unused {
80202c56: 31 c5        	beqz	a0, 0x80202ca2 <.Lpcrel_hi23+0x6c>
80202c58: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202c5c: 63 02 05 34  	beqz	a0, 0x80202fa0 <.Lpcrel_hi25>
80202c60: 83 3b 0a f7  	ld	s7, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202c64: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
80202c66: 4a 85        	mv	a0, s2
80202c68: 97 f0 ff ff  	auipc	ra, 1048575
80202c6c: e7 80 80 39  	jalr	920(ra)
; 	&mut CPUS.get_mut()[id]
80202c70: 63 f8 34 2d  	bgeu	s1, s3, 0x80202f40 <.Lpcrel_hi24>
80202c74: b3 85 54 03  	mul	a1, s1, s5
80202c78: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202c7a: 63 93 ab 32  	bne	s7, a0, 0x80202fa0 <.Lpcrel_hi25>
;         self.cpu = null_mut();
80202c7e: 23 38 0a f6  	sd	zero, -144(s4)
80202c82: 0f 00 30 03  	fence	rw, rw
80202c86: 0f 00 10 03  	fence	rw, w
80202c8a: 23 0c 0a f6  	sb	zero, -136(s4)
;         pop_off();
80202c8e: 97 10 00 00  	auipc	ra, 1
80202c92: e7 80 c0 ca  	jalr	-852(ra)
80202c96: 7d 1b        	addi	s6, s6, -1
80202c98: 13 0a 8a 17  	addi	s4, s4, 376
80202c9c: e3 15 0b fa  	bnez	s6, 0x80202c46 <.Lpcrel_hi23+0x10>
80202ca0: 59 a4        	j	0x80202f26 <.Lpcrel_hi39+0x3e>
80202ca2: 0f 00 30 03  	fence	rw, rw

0000000080202ca6 <.Lpcrel_hi28>:
80202ca6: 17 85 08 00  	auipc	a0, 136
80202caa: 93 04 a5 35  	addi	s1, a0, 858
80202cae: 88 78        	ld	a0, 48(s1)
80202cb0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202cb4: 31 e5        	bnez	a0, 0x80202d00 <.Lpcrel_hi29+0x32>
80202cb6: 13 86 04 03  	addi	a2, s1, 48
80202cba: 85 45        	li	a1, 1
80202cbc: 2f 35 06 16  	lr.d.aqrl	a0, (a2)
80202cc0: 21 e1        	bnez	a0, 0x80202d00 <.Lpcrel_hi29+0x32>
80202cc2: af 36 b6 1e  	sc.d.aqrl	a3, a1, (a2)
80202cc6: fd fa        	bnez	a3, 0x80202cbc <.Lpcrel_hi28+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202cc8: 23 34 c4 f8  	sd	a2, -120(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202ccc: 8c e0        	sd	a1, 0(s1)

0000000080202cce <.Lpcrel_hi29>:
80202cce: 17 55 00 00  	auipc	a0, 5
80202cd2: 13 05 a5 3f  	addi	a0, a0, 1018
80202cd6: 88 e4        	sd	a0, 8(s1)
80202cd8: 1d 45        	li	a0, 7
80202cda: 88 e8        	sd	a0, 16(s1)
80202cdc: 23 bc 04 00  	sd	zero, 24(s1)
80202ce0: 23 80 04 02  	sb	zero, 32(s1)
80202ce4: 8c f4        	sd	a1, 40(s1)
;                 finish.panicked = false;
80202ce6: 23 08 04 f8  	sb	zero, -112(s0)
80202cea: 0f 00 10 03  	fence	rw, w
80202cee: 09 45        	li	a0, 2
80202cf0: 88 f8        	sd	a0, 48(s1)
80202cf2: 13 05 84 f8  	addi	a0, s0, -120
80202cf6: 97 30 00 00  	auipc	ra, 3
80202cfa: e7 80 20 a4  	jalr	-1470(ra)
80202cfe: 05 a0        	j	0x80202d1e <.Lpcrel_hi29+0x50>
80202d00: 85 45        	li	a1, 1
;             match status {
80202d02: 63 1b b5 00  	bne	a0, a1, 0x80202d18 <.Lpcrel_hi29+0x4a>
80202d06: 0f 00 00 01  	fence	w, 0
80202d0a: 0f 00 30 03  	fence	rw, rw
80202d0e: 88 78        	ld	a0, 48(s1)
80202d10: 0f 00 30 02  	fence	r, rw
;             match status {
80202d14: e3 09 b5 fe  	beq	a0, a1, 0x80202d06 <.Lpcrel_hi29+0x38>
80202d18: 89 45        	li	a1, 2
;             match status {
80202d1a: 63 11 b5 2c  	bne	a0, a1, 0x80202fdc <.Lpcrel_hi27+0x16>
;     pidcnt.pid_lock.acquire();
80202d1e: 13 85 84 00  	addi	a0, s1, 8
80202d22: 97 10 00 00  	auipc	ra, 1
80202d26: e7 80 c0 88  	jalr	-1908(ra)
;     pid = pidcnt.nextpid;
80202d2a: 83 ba 84 02  	ld	s5, 40(s1)
;     pidcnt.nextpid += 1;
80202d2e: 13 85 1a 00  	addi	a0, s5, 1
80202d32: 88 f4        	sd	a0, 40(s1)
80202d34: 03 85 04 02  	lb	a0, 32(s1)
80202d38: 63 00 05 2e  	beqz	a0, 0x80203018 <.Lpcrel_hi36>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202d3c: 83 b9 84 01  	ld	s3, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202d40: 12 89        	mv	s2, tp

0000000080202d42 <.Lpcrel_hi34>:
;         self.0.call_once(builder)
80202d42: 17 e5 08 00  	auipc	a0, 142
80202d46: 13 05 e5 11  	addi	a0, a0, 286
80202d4a: 97 f0 ff ff  	auipc	ra, 1048575
80202d4e: e7 80 60 2b  	jalr	694(ra)
80202d52: 93 05 00 04  	li	a1, 64
80202d56: 63 71 b9 20  	bgeu	s2, a1, 0x80202f58 <.Lpcrel_hi35>
80202d5a: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202d5e: b3 05 b9 02  	mul	a1, s2, a1
80202d62: 2e 95        	add	a0, a0, a1
80202d64: 63 9a a9 2a  	bne	s3, a0, 0x80203018 <.Lpcrel_hi36>
80202d68: 93 09 0a ee  	addi	s3, s4, -288
;         self.cpu = null_mut();
80202d6c: 23 bc 04 00  	sd	zero, 24(s1)
80202d70: 0f 00 30 03  	fence	rw, rw
80202d74: 0f 00 10 03  	fence	rw, w
80202d78: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80202d7c: 97 10 00 00  	auipc	ra, 1
80202d80: e7 80 e0 bb  	jalr	-1090(ra)
;             p.pid = allocpid();
80202d84: 23 30 5a 01  	sd	s5, 0(s4)
80202d88: 05 45        	li	a0, 1
;             p.state = ProcState::Used;
80202d8a: 23 08 aa 04  	sb	a0, 80(s4)
;             let pa = kalloc();
80202d8e: 97 20 00 00  	auipc	ra, 2
80202d92: e7 80 60 ba  	jalr	-1114(ra)
;             p.trapframe = pa as *mut Trapframe;
80202d96: 23 34 aa 02  	sd	a0, 40(s4)
;             if pa == 0 {
80202d9a: 63 0b 05 12  	beqz	a0, 0x80202ed0 <.Lpcrel_hi56+0x16>
80202d9e: 2a 89        	mv	s2, a0
;         let pagetable = PagetableT::addr2pagetablet(kalloc());
80202da0: 97 20 00 00  	auipc	ra, 2
80202da4: e7 80 40 b9  	jalr	-1132(ra)
80202da8: aa 84        	mv	s1, a0
80202daa: 05 66        	lui	a2, 1
80202dac: 81 45        	li	a1, 0
80202dae: 97 40 00 00  	auipc	ra, 4
80202db2: e7 80 60 2d  	jalr	726(ra)
;         let mut uvm = Uvm::from_pagetable(Uvm::uvmcreate());
80202db6: 23 30 94 f8  	sd	s1, -128(s0)
;         if !uvm.valid() {
80202dba: c9 cc        	beqz	s1, 0x80202e54 <.Lpcrel_hi51+0x1a>
80202dbc: 37 05 00 04  	lui	a0, 16384
80202dc0: 7d 35        	addiw	a0, a0, -1
80202dc2: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
80202dc6: 13 05 04 f8  	addi	a0, s0, -128
80202dca: 05 46        	li	a2, 1
80202dcc: 97 10 00 00  	auipc	ra, 1
80202dd0: e7 80 00 7b  	jalr	1968(ra)
;             if pte.is_null() {
80202dd4: 41 c1        	beqz	a0, 0x80202e54 <.Lpcrel_hi51+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202dd6: 83 45 05 00  	lbu	a1, 0(a0)
80202dda: 85 89        	andi	a1, a1, 1
80202ddc: 63 9a 05 2a  	bnez	a1, 0x80203090 <.Lpcrel_hi45>

0000000080202de0 <.Lpcrel_hi44>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202de0: 97 e5 ff ff  	auipc	a1, 1048574
80202de4: 93 85 05 22  	addi	a1, a1, 544
80202de8: b1 81        	srli	a1, a1, 12
80202dea: aa 05        	slli	a1, a1, 10
80202dec: ad 05        	addi	a1, a1, 11
80202dee: 0c e1        	sd	a1, 0(a0)
80202df0: 37 05 00 02  	lui	a0, 8192
80202df4: 7d 35        	addiw	a0, a0, -1
80202df6: 93 15 d5 00  	slli	a1, a0, 13
;             let pte = self.walk(a, true);
80202dfa: 13 05 04 f8  	addi	a0, s0, -128
80202dfe: 05 46        	li	a2, 1
80202e00: 97 10 00 00  	auipc	ra, 1
80202e04: e7 80 c0 77  	jalr	1916(ra)
;             if pte.is_null() {
80202e08: 31 c5        	beqz	a0, 0x80202e54 <.Lpcrel_hi51+0x1a>
;             if unsafe { *pte & PTE_V } != 0 {
80202e0a: 83 45 05 00  	lbu	a1, 0(a0)
80202e0e: 85 89        	andi	a1, a1, 1
80202e10: 63 9e 05 2a  	bnez	a1, 0x802030cc <.Lpcrel_hi48>
;     (pa >> 12) << 10
80202e14: 93 55 c9 00  	srli	a1, s2, 12
80202e18: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202e1a: ad 05        	addi	a1, a1, 11
80202e1c: 0c e1        	sd	a1, 0(a0)
;         uvm
80202e1e: 03 35 04 f8  	ld	a0, -128(s0)
;             p.uvm = p.proc_uvm();
80202e22: 23 30 aa 02  	sd	a0, 32(s4)
;             if !p.uvm.valid() {
80202e26: 0d c9        	beqz	a0, 0x80202e58 <.Lpcrel_hi51+0x1e>
80202e28: 13 05 8a f8  	addi	a0, s4, -120
80202e2c: 13 06 80 06  	li	a2, 104
80202e30: 81 45        	li	a1, 0
80202e32: 97 40 00 00  	auipc	ra, 4
80202e36: e7 80 20 25  	jalr	594(ra)

0000000080202e3a <.Lpcrel_hi51>:
;             p.context.ra = forkret as usize;
80202e3a: 17 05 00 00  	auipc	a0, 0
;             p.context.sp = p.kstack + PGSIZE;
80202e3e: 83 35 0a 01  	ld	a1, 16(s4)
;             p.context.ra = forkret as usize;
80202e42: 13 05 65 55  	addi	a0, a0, 1366
80202e46: 23 30 aa f8  	sd	a0, -128(s4)
80202e4a: 05 65        	lui	a0, 1
;             p.context.sp = p.kstack + PGSIZE;
80202e4c: 2e 95        	add	a0, a0, a1
80202e4e: 23 34 aa f8  	sd	a0, -120(s4)
80202e52: d9 a8        	j	0x80202f28 <.Lpcrel_hi39+0x40>
;             p.uvm = p.proc_uvm();
80202e54: 23 30 0a 02  	sd	zero, 32(s4)
;                 p.freeproc();
80202e58: 4e 85        	mv	a0, s3
80202e5a: 97 00 00 00  	auipc	ra, 0
80202e5e: e7 80 00 a4  	jalr	-1472(ra)
80202e62: 03 05 8a f7  	lb	a0, -136(s4)
80202e66: 1d c5        	beqz	a0, 0x80202e94 <.Lpcrel_hi54>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202e68: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202e6c: 92 84        	mv	s1, tp

0000000080202e6e <.Lpcrel_hi52>:
;         self.0.call_once(builder)
80202e6e: 17 e5 08 00  	auipc	a0, 142
80202e72: 13 05 25 ff  	addi	a0, a0, -14
80202e76: 97 f0 ff ff  	auipc	ra, 1048575
80202e7a: e7 80 a0 18  	jalr	394(ra)
80202e7e: 93 05 00 04  	li	a1, 64
80202e82: 63 f7 b4 0e  	bgeu	s1, a1, 0x80202f70 <.Lpcrel_hi53>
80202e86: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202e8a: b3 85 b4 02  	mul	a1, s1, a1
80202e8e: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202e90: 63 0f a9 06  	beq	s2, a0, 0x80202f0e <.Lpcrel_hi39+0x26>

0000000080202e94 <.Lpcrel_hi54>:
80202e94: 17 55 00 00  	auipc	a0, 5
80202e98: 13 05 c5 3c  	addi	a0, a0, 972
80202e9c: 23 34 a4 f8  	sd	a0, -120(s0)
80202ea0: 05 45        	li	a0, 1
80202ea2: 23 38 a4 f8  	sd	a0, -112(s0)
80202ea6: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202eaa <.Lpcrel_hi55>:
80202eaa: 17 55 00 00  	auipc	a0, 5
80202eae: 13 05 65 36  	addi	a0, a0, 870
80202eb2: 23 3c a4 f8  	sd	a0, -104(s0)
80202eb6: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202eba <.Lpcrel_hi56>:
;             panic!("release");
80202eba: 17 55 00 00  	auipc	a0, 5
80202ebe: 93 05 65 3b  	addi	a1, a0, 950
80202ec2: 13 05 84 f8  	addi	a0, s0, -120
80202ec6: 97 30 00 00  	auipc	ra, 3
80202eca: e7 80 20 e4  	jalr	-446(ra)
80202ece: 00 00        	unimp	
;                 p.freeproc();
80202ed0: 4e 85        	mv	a0, s3
80202ed2: 97 00 00 00  	auipc	ra, 0
80202ed6: e7 80 80 9c  	jalr	-1592(ra)
80202eda: 03 05 8a f7  	lb	a0, -136(s4)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202ede: 63 0b 05 16  	beqz	a0, 0x80203054 <.Lpcrel_hi41>
80202ee2: 03 39 0a f7  	ld	s2, -144(s4)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202ee6: 92 84        	mv	s1, tp

0000000080202ee8 <.Lpcrel_hi39>:
;         self.0.call_once(builder)
80202ee8: 17 e5 08 00  	auipc	a0, 142
80202eec: 13 05 85 f7  	addi	a0, a0, -136
80202ef0: 97 f0 ff ff  	auipc	ra, 1048575
80202ef4: e7 80 00 11  	jalr	272(ra)
80202ef8: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80202efc: 63 f6 b4 08  	bgeu	s1, a1, 0x80202f88 <.Lpcrel_hi40>
80202f00: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80202f04: b3 85 b4 02  	mul	a1, s1, a1
80202f08: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80202f0a: 63 15 a9 14  	bne	s2, a0, 0x80203054 <.Lpcrel_hi41>
80202f0e: 23 38 0a f6  	sd	zero, -144(s4)
80202f12: 0f 00 30 03  	fence	rw, rw
80202f16: 0f 00 10 03  	fence	rw, w
80202f1a: 23 0c 0a f6  	sb	zero, -136(s4)
80202f1e: 97 10 00 00  	auipc	ra, 1
80202f22: e7 80 c0 a1  	jalr	-1508(ra)
80202f26: 81 49        	li	s3, 0
; }
80202f28: 4e 85        	mv	a0, s3
80202f2a: e6 70        	ld	ra, 120(sp)
80202f2c: 46 74        	ld	s0, 112(sp)
80202f2e: a6 74        	ld	s1, 104(sp)
80202f30: 06 79        	ld	s2, 96(sp)
80202f32: e6 69        	ld	s3, 88(sp)
80202f34: 46 6a        	ld	s4, 80(sp)
80202f36: a6 6a        	ld	s5, 72(sp)
80202f38: 06 6b        	ld	s6, 64(sp)
80202f3a: e2 7b        	ld	s7, 56(sp)
80202f3c: 09 61        	addi	sp, sp, 128
80202f3e: 82 80        	ret

0000000080202f40 <.Lpcrel_hi24>:
; 	&mut CPUS.get_mut()[id]
80202f40: 17 55 00 00  	auipc	a0, 5
80202f44: 13 06 85 48  	addi	a2, a0, 1160
80202f48: 93 05 00 04  	li	a1, 64
80202f4c: 26 85        	mv	a0, s1
80202f4e: 97 30 00 00  	auipc	ra, 3
80202f52: e7 80 40 e1  	jalr	-492(ra)
80202f56: 00 00        	unimp	

0000000080202f58 <.Lpcrel_hi35>:
; 	&mut CPUS.get_mut()[id]
80202f58: 17 55 00 00  	auipc	a0, 5
80202f5c: 13 06 05 47  	addi	a2, a0, 1136
80202f60: 93 05 00 04  	li	a1, 64
80202f64: 4a 85        	mv	a0, s2
80202f66: 97 30 00 00  	auipc	ra, 3
80202f6a: e7 80 c0 df  	jalr	-516(ra)
80202f6e: 00 00        	unimp	

0000000080202f70 <.Lpcrel_hi53>:
80202f70: 17 55 00 00  	auipc	a0, 5
80202f74: 13 06 85 45  	addi	a2, a0, 1112
80202f78: 93 05 00 04  	li	a1, 64
80202f7c: 26 85        	mv	a0, s1
80202f7e: 97 30 00 00  	auipc	ra, 3
80202f82: e7 80 40 de  	jalr	-540(ra)
80202f86: 00 00        	unimp	

0000000080202f88 <.Lpcrel_hi40>:
; 	&mut CPUS.get_mut()[id]
80202f88: 17 55 00 00  	auipc	a0, 5
80202f8c: 13 06 05 44  	addi	a2, a0, 1088
80202f90: 93 05 00 04  	li	a1, 64
80202f94: 26 85        	mv	a0, s1
80202f96: 97 30 00 00  	auipc	ra, 3
80202f9a: e7 80 c0 dc  	jalr	-564(ra)
80202f9e: 00 00        	unimp	

0000000080202fa0 <.Lpcrel_hi25>:
80202fa0: 17 55 00 00  	auipc	a0, 5
80202fa4: 13 05 05 2c  	addi	a0, a0, 704
80202fa8: 23 34 a4 f8  	sd	a0, -120(s0)
80202fac: 05 45        	li	a0, 1
80202fae: 23 38 a4 f8  	sd	a0, -112(s0)
80202fb2: 23 34 04 fa  	sd	zero, -88(s0)

0000000080202fb6 <.Lpcrel_hi26>:
80202fb6: 17 55 00 00  	auipc	a0, 5
80202fba: 13 05 a5 25  	addi	a0, a0, 602
80202fbe: 23 3c a4 f8  	sd	a0, -104(s0)
80202fc2: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202fc6 <.Lpcrel_hi27>:
;             panic!("release");
80202fc6: 17 55 00 00  	auipc	a0, 5
80202fca: 93 05 a5 2a  	addi	a1, a0, 682
80202fce: 13 05 84 f8  	addi	a0, s0, -120
80202fd2: 97 30 00 00  	auipc	ra, 3
80202fd6: e7 80 60 d3  	jalr	-714(ra)
80202fda: 00 00        	unimp	
;             match status {
80202fdc: 05 e1        	bnez	a0, 0x80202ffc <.Lpcrel_hi32>

0000000080202fde <.Lpcrel_hi30>:
;                 INCOMPLETE => unreachable!(),
80202fde: 17 55 00 00  	auipc	a0, 5
80202fe2: 13 05 a5 0a  	addi	a0, a0, 170

0000000080202fe6 <.Lpcrel_hi31>:
80202fe6: 97 55 00 00  	auipc	a1, 5
80202fea: 13 86 a5 0c  	addi	a2, a1, 202
80202fee: 93 05 80 02  	li	a1, 40
80202ff2: 97 30 00 00  	auipc	ra, 3
80202ff6: e7 80 40 d4  	jalr	-700(ra)
80202ffa: 00 00        	unimp	

0000000080202ffc <.Lpcrel_hi32>:
;                 PANICKED => panic!("Once has panicked"),
80202ffc: 17 55 00 00  	auipc	a0, 5
80203000: 13 05 45 00  	addi	a0, a0, 4

0000000080203004 <.Lpcrel_hi33>:
80203004: 97 55 00 00  	auipc	a1, 5
80203008: 13 86 c5 06  	addi	a2, a1, 108
8020300c: c5 45        	li	a1, 17
8020300e: 97 30 00 00  	auipc	ra, 3
80203012: e7 80 80 d2  	jalr	-728(ra)
80203016: 00 00        	unimp	

0000000080203018 <.Lpcrel_hi36>:
80203018: 17 55 00 00  	auipc	a0, 5
8020301c: 13 05 85 24  	addi	a0, a0, 584
80203020: 23 34 a4 f8  	sd	a0, -120(s0)
80203024: 05 45        	li	a0, 1
80203026: 23 38 a4 f8  	sd	a0, -112(s0)
8020302a: 23 34 04 fa  	sd	zero, -88(s0)

000000008020302e <.Lpcrel_hi37>:
8020302e: 17 55 00 00  	auipc	a0, 5
80203032: 13 05 25 1e  	addi	a0, a0, 482
80203036: 23 3c a4 f8  	sd	a0, -104(s0)
8020303a: 23 30 04 fa  	sd	zero, -96(s0)

000000008020303e <.Lpcrel_hi38>:
;             panic!("release");
8020303e: 17 55 00 00  	auipc	a0, 5
80203042: 93 05 25 23  	addi	a1, a0, 562
80203046: 13 05 84 f8  	addi	a0, s0, -120
8020304a: 97 30 00 00  	auipc	ra, 3
8020304e: e7 80 e0 cb  	jalr	-834(ra)
80203052: 00 00        	unimp	

0000000080203054 <.Lpcrel_hi41>:
80203054: 17 55 00 00  	auipc	a0, 5
80203058: 13 05 c5 20  	addi	a0, a0, 524
8020305c: 23 34 a4 f8  	sd	a0, -120(s0)
80203060: 05 45        	li	a0, 1
80203062: 23 38 a4 f8  	sd	a0, -112(s0)
80203066: 23 34 04 fa  	sd	zero, -88(s0)

000000008020306a <.Lpcrel_hi42>:
8020306a: 17 55 00 00  	auipc	a0, 5
8020306e: 13 05 65 1a  	addi	a0, a0, 422
80203072: 23 3c a4 f8  	sd	a0, -104(s0)
80203076: 23 30 04 fa  	sd	zero, -96(s0)

000000008020307a <.Lpcrel_hi43>:
;             panic!("release");
8020307a: 17 55 00 00  	auipc	a0, 5
8020307e: 93 05 65 1f  	addi	a1, a0, 502
80203082: 13 05 84 f8  	addi	a0, s0, -120
80203086: 97 30 00 00  	auipc	ra, 3
8020308a: e7 80 20 c8  	jalr	-894(ra)
8020308e: 00 00        	unimp	

0000000080203090 <.Lpcrel_hi45>:
80203090: 17 65 00 00  	auipc	a0, 6
80203094: 13 05 05 82  	addi	a0, a0, -2016
80203098: 23 34 a4 f8  	sd	a0, -120(s0)
8020309c: 05 45        	li	a0, 1
8020309e: 23 38 a4 f8  	sd	a0, -112(s0)
802030a2: 23 34 04 fa  	sd	zero, -88(s0)

00000000802030a6 <.Lpcrel_hi46>:
802030a6: 17 55 00 00  	auipc	a0, 5
802030aa: 13 05 a5 7c  	addi	a0, a0, 1994
802030ae: 23 3c a4 f8  	sd	a0, -104(s0)
802030b2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802030b6 <.Lpcrel_hi47>:
;                 panic!("mappages: remap");
802030b6: 17 65 00 00  	auipc	a0, 6
802030ba: 93 05 a5 80  	addi	a1, a0, -2038
802030be: 13 05 84 f8  	addi	a0, s0, -120
802030c2: 97 30 00 00  	auipc	ra, 3
802030c6: e7 80 60 c4  	jalr	-954(ra)
802030ca: 00 00        	unimp	

00000000802030cc <.Lpcrel_hi48>:
802030cc: 17 55 00 00  	auipc	a0, 5
802030d0: 13 05 45 7e  	addi	a0, a0, 2020
802030d4: 23 34 a4 f8  	sd	a0, -120(s0)
802030d8: 05 45        	li	a0, 1
802030da: 23 38 a4 f8  	sd	a0, -112(s0)
802030de: 23 34 04 fa  	sd	zero, -88(s0)

00000000802030e2 <.Lpcrel_hi49>:
802030e2: 17 55 00 00  	auipc	a0, 5
802030e6: 13 05 e5 78  	addi	a0, a0, 1934
802030ea: 23 3c a4 f8  	sd	a0, -104(s0)
802030ee: 23 30 04 fa  	sd	zero, -96(s0)

00000000802030f2 <.Lpcrel_hi50>:
;                 panic!("mappages: remap");
802030f2: 17 55 00 00  	auipc	a0, 5
802030f6: 93 05 e5 7c  	addi	a1, a0, 1998
802030fa: 13 05 84 f8  	addi	a0, s0, -120
802030fe: 97 30 00 00  	auipc	ra, 3
80203102: e7 80 a0 c0  	jalr	-1014(ra)
80203106: 00 00        	unimp	

0000000080203108 <_ZN6kernel7process4proc8userinit17hd692e0c5cb7ab337E>:
; pub fn userinit() {
80203108: 1d 71        	addi	sp, sp, -96
8020310a: 86 ec        	sd	ra, 88(sp)
8020310c: a2 e8        	sd	s0, 80(sp)
8020310e: a6 e4        	sd	s1, 72(sp)
80203110: ca e0        	sd	s2, 64(sp)
80203112: 4e fc        	sd	s3, 56(sp)
80203114: 52 f8        	sd	s4, 48(sp)
80203116: 80 10        	addi	s0, sp, 96
80203118: 0f 00 30 03  	fence	rw, rw

000000008020311c <.Lpcrel_hi57>:
8020311c: 17 e5 08 00  	auipc	a0, 142
80203120: 93 04 c5 d2  	addi	s1, a0, -724
80203124: 88 68        	ld	a0, 16(s1)
80203126: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020312a: 21 e1        	bnez	a0, 0x8020316a <.Lpcrel_hi57+0x4e>
8020312c: 93 85 04 01  	addi	a1, s1, 16
80203130: 05 49        	li	s2, 1
80203132: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203136: 15 e9        	bnez	a0, 0x8020316a <.Lpcrel_hi57+0x4e>
80203138: 2f b6 25 1f  	sc.d.aqrl	a2, s2, (a1)
8020313c: 7d fa        	bnez	a2, 0x80203132 <.Lpcrel_hi57+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020313e: 23 30 b4 fa  	sd	a1, -96(s0)
;     pub static ref INITPROC: UPCell<*mut Proc> = UPCell::new(allocproc());
80203142: 97 00 00 00  	auipc	ra, 0
80203146: e7 80 60 ac  	jalr	-1338(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020314a: 23 b0 24 01  	sd	s2, 0(s1)
8020314e: 88 e4        	sd	a0, 8(s1)
;                 finish.panicked = false;
80203150: 23 04 04 fa  	sb	zero, -88(s0)
80203154: 0f 00 10 03  	fence	rw, w
80203158: 09 45        	li	a0, 2
8020315a: 88 e8        	sd	a0, 16(s1)
8020315c: 13 05 04 fa  	addi	a0, s0, -96
80203160: 97 20 00 00  	auipc	ra, 2
80203164: e7 80 80 5d  	jalr	1496(ra)
80203168: 05 a0        	j	0x80203188 <.Lpcrel_hi57+0x6c>
8020316a: 85 45        	li	a1, 1
;             match status {
8020316c: 63 1b b5 00  	bne	a0, a1, 0x80203182 <.Lpcrel_hi57+0x66>
80203170: 0f 00 00 01  	fence	w, 0
80203174: 0f 00 30 03  	fence	rw, rw
80203178: 88 68        	ld	a0, 16(s1)
8020317a: 0f 00 30 02  	fence	r, rw
;             match status {
8020317e: e3 09 b5 fe  	beq	a0, a1, 0x80203170 <.Lpcrel_hi57+0x54>
80203182: 89 45        	li	a1, 2
;             match status {
80203184: 63 1b b5 14  	bne	a0, a1, 0x802032da <.Lpcrel_hi68+0x18>
;     let p = unsafe { &mut *(*INITPROC.get_mut()) };
80203188: 83 b9 84 00  	ld	s3, 8(s1)
;     p.uvm.uvmfirst(&INITCODE as *const u8, INITCODE.len());
8020318c: 13 89 09 14  	addi	s2, s3, 320
;         let mem = kalloc();
80203190: 97 10 00 00  	auipc	ra, 1
80203194: e7 80 40 7a  	jalr	1956(ra)
80203198: aa 84        	mv	s1, a0
8020319a: 05 66        	lui	a2, 1
8020319c: 05 6a        	lui	s4, 1
8020319e: 81 45        	li	a1, 0
802031a0: 97 40 00 00  	auipc	ra, 4
802031a4: e7 80 40 ee  	jalr	-284(ra)
;             let pte = self.walk(a, true);
802031a8: 05 46        	li	a2, 1
802031aa: 4a 85        	mv	a0, s2
802031ac: 81 45        	li	a1, 0
802031ae: 97 10 00 00  	auipc	ra, 1
802031b2: e7 80 e0 3c  	jalr	974(ra)
802031b6: 19 c9        	beqz	a0, 0x802031cc <.Lpcrel_hi65>
;             if unsafe { *pte & PTE_V } != 0 {
802031b8: 83 45 05 00  	lbu	a1, 0(a0)
802031bc: 85 89        	andi	a1, a1, 1
802031be: 63 9b 05 18  	bnez	a1, 0x80203354 <.Lpcrel_hi62>
;     (pa >> 12) << 10
802031c2: 93 d5 c4 00  	srli	a1, s1, 12
802031c6: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802031c8: fd 05        	addi	a1, a1, 31
802031ca: 0c e1        	sd	a1, 0(a0)

00000000802031cc <.Lpcrel_hi65>:
802031cc: 17 55 00 00  	auipc	a0, 5
802031d0: 93 05 c5 f6  	addi	a1, a0, -148
802031d4: 13 06 40 03  	li	a2, 52
802031d8: 26 85        	mv	a0, s1
802031da: 97 40 00 00  	auipc	ra, 4
802031de: e7 80 20 eb  	jalr	-334(ra)
;     let tf = unsafe { &mut *p.trapframe };
802031e2: 03 b5 89 14  	ld	a0, 328(s3)
;     tf.epc = 0;
802031e6: 23 3c 05 10  	sd	zero, 280(a0)
;     tf.x[2] = PGSIZE; // sp
802031ea: 23 38 45 01  	sd	s4, 16(a0)
802031ee: 21 45        	li	a0, 8
802031f0: 85 45        	li	a1, 1
802031f2: 97 20 00 00  	auipc	ra, 2
802031f6: e7 80 e0 52  	jalr	1326(ra)
802031fa: 63 06 05 14  	beqz	a0, 0x80203346 <.Lpcrel_hi71+0xa>
802031fe: aa 84        	mv	s1, a0
80203200: 13 05 50 06  	li	a0, 101
80203204: a3 83 a4 00  	sb	a0, 7(s1)
80203208: 13 05 40 06  	li	a0, 100
8020320c: 23 83 a4 00  	sb	a0, 6(s1)
80203210: 13 05 f0 06  	li	a0, 111

0000000080203214 <.Lpcrel_hi66>:
80203214: 97 75 00 00  	auipc	a1, 7
80203218: 83 b5 c5 de  	ld	a1, -532(a1)
8020321c: a3 82 a4 00  	sb	a0, 5(s1)
80203220: 13 05 30 06  	li	a0, 99
80203224: 23 82 a4 00  	sb	a0, 4(s1)
80203228: 23 80 b4 00  	sb	a1, 0(s1)
8020322c: 13 d5 85 01  	srli	a0, a1, 24
80203230: a3 81 a4 00  	sb	a0, 3(s1)
80203234: 13 d5 05 01  	srli	a0, a1, 16
80203238: 23 81 a4 00  	sb	a0, 2(s1)
8020323c: a1 81        	srli	a1, a1, 8
8020323e: a3 80 b4 00  	sb	a1, 1(s1)
80203242: 83 b5 09 16  	ld	a1, 352(s3)
80203246: 81 c9        	beqz	a1, 0x80203256 <.Lpcrel_hi66+0x42>
80203248: 03 b5 89 15  	ld	a0, 344(s3)
8020324c: 05 46        	li	a2, 1
8020324e: 97 20 00 00  	auipc	ra, 2
80203252: e7 80 a0 4d  	jalr	1242(ra)
;     p.name = String::from("initcode");
80203256: 23 bc 99 14  	sd	s1, 344(s3)
8020325a: 21 45        	li	a0, 8
8020325c: 23 b0 a9 16  	sd	a0, 352(s3)
80203260: 23 b4 a9 16  	sd	a0, 360(s3)
80203264: 0d 45        	li	a0, 3
;     p.state = ProcState::Runable;
80203266: 23 88 a9 16  	sb	a0, 368(s3)
8020326a: 03 85 89 09  	lb	a0, 152(s3)
8020326e: 45 c5        	beqz	a0, 0x80203316 <.Lpcrel_hi69>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203270: 03 b9 09 09  	ld	s2, 144(s3)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203274: 92 84        	mv	s1, tp

0000000080203276 <.Lpcrel_hi67>:
;         self.0.call_once(builder)
80203276: 17 e5 08 00  	auipc	a0, 142
8020327a: 13 05 a5 be  	addi	a0, a0, -1046
8020327e: 97 f0 ff ff  	auipc	ra, 1048575
80203282: e7 80 20 d8  	jalr	-638(ra)
80203286: 93 05 00 04  	li	a1, 64
8020328a: 63 fc b4 02  	bgeu	s1, a1, 0x802032c2 <.Lpcrel_hi68>
8020328e: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80203292: b3 85 b4 02  	mul	a1, s1, a1
80203296: 2e 95        	add	a0, a0, a1
80203298: 63 1f a9 06  	bne	s2, a0, 0x80203316 <.Lpcrel_hi69>
;         self.cpu = null_mut();
8020329c: 23 b8 09 08  	sd	zero, 144(s3)
802032a0: 0f 00 30 03  	fence	rw, rw
802032a4: 0f 00 10 03  	fence	rw, w
802032a8: 23 8c 09 08  	sb	zero, 152(s3)
;         pop_off();
802032ac: e6 60        	ld	ra, 88(sp)
802032ae: 46 64        	ld	s0, 80(sp)
802032b0: a6 64        	ld	s1, 72(sp)
802032b2: 06 69        	ld	s2, 64(sp)
802032b4: e2 79        	ld	s3, 56(sp)
802032b6: 42 7a        	ld	s4, 48(sp)
802032b8: 25 61        	addi	sp, sp, 96
802032ba: 17 03 00 00  	auipc	t1, 0
802032be: 67 00 03 68  	jr	1664(t1)

00000000802032c2 <.Lpcrel_hi68>:
; 	&mut CPUS.get_mut()[id]
802032c2: 17 55 00 00  	auipc	a0, 5
802032c6: 13 06 65 10  	addi	a2, a0, 262
802032ca: 93 05 00 04  	li	a1, 64
802032ce: 26 85        	mv	a0, s1
802032d0: 97 30 00 00  	auipc	ra, 3
802032d4: e7 80 20 a9  	jalr	-1390(ra)
802032d8: 00 00        	unimp	
;             match status {
802032da: 05 e1        	bnez	a0, 0x802032fa <.Lpcrel_hi60>

00000000802032dc <.Lpcrel_hi58>:
;                 INCOMPLETE => unreachable!(),
802032dc: 17 55 00 00  	auipc	a0, 5
802032e0: 13 05 c5 da  	addi	a0, a0, -596

00000000802032e4 <.Lpcrel_hi59>:
802032e4: 97 55 00 00  	auipc	a1, 5
802032e8: 13 86 c5 dc  	addi	a2, a1, -564
802032ec: 93 05 80 02  	li	a1, 40
802032f0: 97 30 00 00  	auipc	ra, 3
802032f4: e7 80 60 a4  	jalr	-1466(ra)
802032f8: 00 00        	unimp	

00000000802032fa <.Lpcrel_hi60>:
;                 PANICKED => panic!("Once has panicked"),
802032fa: 17 55 00 00  	auipc	a0, 5
802032fe: 13 05 65 d0  	addi	a0, a0, -762

0000000080203302 <.Lpcrel_hi61>:
80203302: 97 55 00 00  	auipc	a1, 5
80203306: 13 86 e5 d6  	addi	a2, a1, -658
8020330a: c5 45        	li	a1, 17
8020330c: 97 30 00 00  	auipc	ra, 3
80203310: e7 80 a0 a2  	jalr	-1494(ra)
80203314: 00 00        	unimp	

0000000080203316 <.Lpcrel_hi69>:
80203316: 17 55 00 00  	auipc	a0, 5
8020331a: 13 05 a5 f4  	addi	a0, a0, -182
8020331e: 23 30 a4 fa  	sd	a0, -96(s0)
80203322: 05 45        	li	a0, 1
80203324: 23 34 a4 fa  	sd	a0, -88(s0)
80203328: 23 30 04 fc  	sd	zero, -64(s0)

000000008020332c <.Lpcrel_hi70>:
8020332c: 17 55 00 00  	auipc	a0, 5
80203330: 13 05 45 ee  	addi	a0, a0, -284
80203334: 23 38 a4 fa  	sd	a0, -80(s0)
80203338: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020333c <.Lpcrel_hi71>:
;             panic!("release");
8020333c: 17 55 00 00  	auipc	a0, 5
80203340: 93 05 45 f3  	addi	a1, a0, -204
80203344: 3d a8        	j	0x80203382 <.Lpcrel_hi64+0x8>
80203346: 05 45        	li	a0, 1
80203348: a1 45        	li	a1, 8
8020334a: 97 30 00 00  	auipc	ra, 3
8020334e: e7 80 a0 94  	jalr	-1718(ra)
80203352: 00 00        	unimp	

0000000080203354 <.Lpcrel_hi62>:
80203354: 17 55 00 00  	auipc	a0, 5
80203358: 13 05 c5 55  	addi	a0, a0, 1372
8020335c: 23 30 a4 fa  	sd	a0, -96(s0)
80203360: 05 45        	li	a0, 1
80203362: 23 34 a4 fa  	sd	a0, -88(s0)
80203366: 23 30 04 fc  	sd	zero, -64(s0)

000000008020336a <.Lpcrel_hi63>:
8020336a: 17 55 00 00  	auipc	a0, 5
8020336e: 13 05 65 50  	addi	a0, a0, 1286
80203372: 23 38 a4 fa  	sd	a0, -80(s0)
80203376: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020337a <.Lpcrel_hi64>:
;                 panic!("mappages: remap");
8020337a: 17 55 00 00  	auipc	a0, 5
8020337e: 93 05 65 54  	addi	a1, a0, 1350
80203382: 13 05 04 fa  	addi	a0, s0, -96
80203386: 97 30 00 00  	auipc	ra, 3
8020338a: e7 80 20 98  	jalr	-1662(ra)
8020338e: 00 00        	unimp	

0000000080203390 <forkret>:
; fn forkret() {
80203390: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80203392: 86 ec        	sd	ra, 88(sp)
80203394: a2 e8        	sd	s0, 80(sp)
80203396: a6 e4        	sd	s1, 72(sp)
80203398: ca e0        	sd	s2, 64(sp)
8020339a: 4e fc        	sd	s3, 56(sp)
8020339c: 80 10        	addi	s0, sp, 96
8020339e: 73 29 00 10  	csrr	s2, sstatus
802033a2: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802033a4: 73 30 05 10  	csrc	sstatus, a0
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802033a8: 92 84        	mv	s1, tp

00000000802033aa <.Lpcrel_hi72>:
;         self.0.call_once(builder)
802033aa: 17 e5 08 00  	auipc	a0, 142
802033ae: 13 05 65 ab  	addi	a0, a0, -1354
802033b2: 97 f0 ff ff  	auipc	ra, 1048575
802033b6: e7 80 e0 c4  	jalr	-946(ra)
802033ba: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802033be: 63 f5 b4 12  	bgeu	s1, a1, 0x802034e8 <.Lpcrel_hi73>
802033c2: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
802033c6: 33 86 b4 02  	mul	a2, s1, a1
802033ca: 2a 96        	add	a2, a2, a0
802033cc: 2c 7e        	ld	a1, 120(a2)
802033ce: 13 05 86 07  	addi	a0, a2, 120
802033d2: 91 e5        	bnez	a1, 0x802033de <.Lpcrel_hi72+0x34>
;         mc.intena = old;
802033d4: 7a 19        	slli	s2, s2, 62
802033d6: 93 56 f9 03  	srli	a3, s2, 63
802033da: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
802033de: 85 05        	addi	a1, a1, 1
802033e0: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802033e2: 92 84        	mv	s1, tp

00000000802033e4 <.Lpcrel_hi74>:
;         self.0.call_once(builder)
802033e4: 17 e5 08 00  	auipc	a0, 142
802033e8: 13 05 c5 a7  	addi	a0, a0, -1412
802033ec: 97 f0 ff ff  	auipc	ra, 1048575
802033f0: e7 80 40 c1  	jalr	-1004(ra)
802033f4: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802033f8: 63 fd b4 0e  	bgeu	s1, a1, 0x802034f2 <.Lpcrel_hi75>
802033fc: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80203400: b3 85 b4 02  	mul	a1, s1, a1
80203404: 2e 95        	add	a0, a0, a1
;     let p = c.proc;
80203406: 04 61        	ld	s1, 0(a0)
;     pop_off();
80203408: 97 00 00 00  	auipc	ra, 0
8020340c: e7 80 20 53  	jalr	1330(ra)
80203410: 03 85 84 09  	lb	a0, 152(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203414: 63 07 05 10  	beqz	a0, 0x80203522 <.Lpcrel_hi78>
80203418: 83 b9 04 09  	ld	s3, 144(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020341c: 12 89        	mv	s2, tp

000000008020341e <.Lpcrel_hi76>:
;         self.0.call_once(builder)
8020341e: 17 e5 08 00  	auipc	a0, 142
80203422: 13 05 25 a4  	addi	a0, a0, -1470
80203426: 97 f0 ff ff  	auipc	ra, 1048575
8020342a: e7 80 a0 bd  	jalr	-1062(ra)
8020342e: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80203432: 63 7c b9 0c  	bgeu	s2, a1, 0x8020350a <.Lpcrel_hi77>
80203436: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
8020343a: b3 05 b9 02  	mul	a1, s2, a1
8020343e: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80203440: 63 91 a9 0e  	bne	s3, a0, 0x80203522 <.Lpcrel_hi78>
;         self.cpu = null_mut();
80203444: 23 b8 04 08  	sd	zero, 144(s1)
80203448: 0f 00 30 03  	fence	rw, rw
8020344c: 0f 00 10 03  	fence	rw, w
80203450: 23 8c 04 08  	sb	zero, 152(s1)
;         pop_off();
80203454: 97 00 00 00  	auipc	ra, 0
80203458: e7 80 60 4e  	jalr	1254(ra)
;     let p = unsafe { &*myproc() };
8020345c: 97 f0 ff ff  	auipc	ra, 1048575
80203460: e7 80 e0 6f  	jalr	1790(ra)
80203464: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80203466: 73 b0 05 10  	csrc	sstatus, a1

000000008020346a <.Lpcrel_hi81>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020346a: 97 e5 ff ff  	auipc	a1, 1048574
8020346e: 93 85 65 b9  	addi	a1, a1, -1130

0000000080203472 <.Lpcrel_hi82>:
80203472: 17 e6 ff ff  	auipc	a2, 1048574
80203476: 13 06 e6 b8  	addi	a2, a2, -1138
8020347a: 0d 8e        	sub	a2, a2, a1
8020347c: b7 06 00 04  	lui	a3, 16384
80203480: fd 36        	addiw	a3, a3, -1
80203482: b2 06        	slli	a3, a3, 12
80203484: 36 96        	add	a2, a2, a3
80203486: 73 10 56 10  	csrw	stvec, a2
;     let tf = unsafe { &mut *p.trapframe };
8020348a: 03 36 85 14  	ld	a2, 328(a0)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020348e: 73 27 00 18  	csrr	a4, satp
;     tf.kernel_satp = unsafe { satp::read().bits() };
80203492: 23 30 e6 10  	sd	a4, 256(a2)
;     tf.kernel_sp = p.kstack + PGSIZE;
80203496: 03 35 05 13  	ld	a0, 304(a0)
8020349a: 05 67        	lui	a4, 1
;     tf.kernel_sp = p.kstack + PGSIZE;
8020349c: 3a 95        	add	a0, a0, a4
8020349e: 23 34 a6 10  	sd	a0, 264(a2)

00000000802034a2 <.Lpcrel_hi83>:
;     tf.kernel_trap = usertrap as Addr;
802034a2: 17 25 00 00  	auipc	a0, 2
802034a6: 13 05 25 a4  	addi	a0, a0, -1470
802034aa: 23 38 a6 10  	sd	a0, 272(a2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802034ae: 12 85        	mv	a0, tp
;     tf.kernel_hartid = r_tp();
802034b0: 23 30 a6 12  	sd	a0, 288(a2)
802034b4: 13 05 00 10  	li	a0, 256
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802034b8: 73 30 05 10  	csrc	sstatus, a0
802034bc: 13 05 00 02  	li	a0, 32
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802034c0: 73 20 05 10  	csrs	sstatus, a0
;     sepc::write(tf.epc);
802034c4: 03 35 86 11  	ld	a0, 280(a2)
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
802034c8: 73 10 15 14  	csrw	sepc, a0

00000000802034cc <.Lpcrel_hi84>:
;         asm! {
802034cc: 17 e5 ff ff  	auipc	a0, 1048574
802034d0: 13 05 25 bd  	addi	a0, a0, -1070
802034d4: 0d 8d        	sub	a0, a0, a1
802034d6: 36 95        	add	a0, a0, a3
802034d8: 02 85        	jr	a0
; }
802034da: e6 60        	ld	ra, 88(sp)
802034dc: 46 64        	ld	s0, 80(sp)
802034de: a6 64        	ld	s1, 72(sp)
802034e0: 06 69        	ld	s2, 64(sp)
802034e2: e2 79        	ld	s3, 56(sp)
802034e4: 25 61        	addi	sp, sp, 96
802034e6: 82 80        	ret

00000000802034e8 <.Lpcrel_hi73>:
; 	&mut CPUS.get_mut()[id]
802034e8: 17 55 00 00  	auipc	a0, 5
802034ec: 13 06 05 ee  	addi	a2, a0, -288
802034f0: 29 a0        	j	0x802034fa <.Lpcrel_hi75+0x8>

00000000802034f2 <.Lpcrel_hi75>:
802034f2: 17 55 00 00  	auipc	a0, 5
802034f6: 13 06 65 ed  	addi	a2, a0, -298
802034fa: 93 05 00 04  	li	a1, 64
802034fe: 26 85        	mv	a0, s1
80203500: 97 30 00 00  	auipc	ra, 3
80203504: e7 80 20 86  	jalr	-1950(ra)
80203508: 00 00        	unimp	

000000008020350a <.Lpcrel_hi77>:
; 	&mut CPUS.get_mut()[id]
8020350a: 17 55 00 00  	auipc	a0, 5
8020350e: 13 06 e5 eb  	addi	a2, a0, -322
80203512: 93 05 00 04  	li	a1, 64
80203516: 4a 85        	mv	a0, s2
80203518: 97 30 00 00  	auipc	ra, 3
8020351c: e7 80 a0 84  	jalr	-1974(ra)
80203520: 00 00        	unimp	

0000000080203522 <.Lpcrel_hi78>:
80203522: 17 55 00 00  	auipc	a0, 5
80203526: 13 05 e5 d3  	addi	a0, a0, -706
8020352a: 23 34 a4 fa  	sd	a0, -88(s0)
8020352e: 05 45        	li	a0, 1
80203530: 23 38 a4 fa  	sd	a0, -80(s0)
80203534: 23 34 04 fc  	sd	zero, -56(s0)

0000000080203538 <.Lpcrel_hi79>:
80203538: 17 55 00 00  	auipc	a0, 5
8020353c: 13 05 85 cd  	addi	a0, a0, -808
80203540: 23 3c a4 fa  	sd	a0, -72(s0)
80203544: 23 30 04 fc  	sd	zero, -64(s0)

0000000080203548 <.Lpcrel_hi80>:
;             panic!("release");
80203548: 17 55 00 00  	auipc	a0, 5
8020354c: 93 05 85 d2  	addi	a1, a0, -728
80203550: 13 05 84 fa  	addi	a0, s0, -88
80203554: 97 20 00 00  	auipc	ra, 2
80203558: e7 80 40 7b  	jalr	1972(ra)
8020355c: 00 00        	unimp	

000000008020355e <_ZN6kernel3sbi8shutdown17h9a9bfddbf1c41574E>:
; pub fn shutdown() -> ! {
8020355e: 39 71        	addi	sp, sp, -64
80203560: 06 fc        	sd	ra, 56(sp)
80203562: 22 f8        	sd	s0, 48(sp)
80203564: 80 00        	addi	s0, sp, 64
;         asm!(
80203566: a1 48        	li	a7, 8
80203568: 01 45        	li	a0, 0
8020356a: 81 45        	li	a1, 0
8020356c: 01 46        	li	a2, 0
8020356e: 73 00 00 00  	ecall	

0000000080203572 <.Lpcrel_hi0>:
80203572: 17 55 00 00  	auipc	a0, 5
80203576: 13 05 65 c1  	addi	a0, a0, -1002
8020357a: 23 30 a4 fc  	sd	a0, -64(s0)
8020357e: 05 45        	li	a0, 1
80203580: 23 34 a4 fc  	sd	a0, -56(s0)
80203584: 23 30 04 fe  	sd	zero, -32(s0)

0000000080203588 <.Lpcrel_hi1>:
80203588: 17 55 00 00  	auipc	a0, 5
8020358c: 13 05 85 be  	addi	a0, a0, -1048
80203590: 23 38 a4 fc  	sd	a0, -48(s0)
80203594: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080203598 <.Lpcrel_hi2>:
;     panic!("It should shutdown!");
80203598: 17 55 00 00  	auipc	a0, 5
8020359c: 93 05 05 c1  	addi	a1, a0, -1008
802035a0: 13 05 04 fc  	addi	a0, s0, -64
802035a4: 97 20 00 00  	auipc	ra, 2
802035a8: e7 80 40 76  	jalr	1892(ra)
802035ac: 00 00        	unimp	

00000000802035ae <_ZN6kernel4lock8spinlock8Spinlock7acquire17h60dfe057da21b86dE>:
;     pub fn acquire(&mut self) {
802035ae: 1d 71        	addi	sp, sp, -96
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802035b0: 86 ec        	sd	ra, 88(sp)
802035b2: a2 e8        	sd	s0, 80(sp)
802035b4: a6 e4        	sd	s1, 72(sp)
802035b6: ca e0        	sd	s2, 64(sp)
802035b8: 4e fc        	sd	s3, 56(sp)
802035ba: 52 f8        	sd	s4, 48(sp)
802035bc: 80 10        	addi	s0, sp, 96
802035be: f3 29 00 10  	csrr	s3, sstatus
802035c2: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802035c4: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802035c8: 92 84        	mv	s1, tp
802035ca: 2a 89        	mv	s2, a0

00000000802035cc <.Lpcrel_hi0>:
;         self.0.call_once(builder)
802035cc: 17 e5 08 00  	auipc	a0, 142
802035d0: 13 05 45 89  	addi	a0, a0, -1900
802035d4: 97 f0 ff ff  	auipc	ra, 1048575
802035d8: e7 80 c0 a2  	jalr	-1492(ra)
802035dc: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
802035e0: 63 ff b4 0a  	bgeu	s1, a1, 0x8020369e <.Lpcrel_hi1>
802035e4: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 {
802035e8: 33 86 b4 02  	mul	a2, s1, a1
802035ec: 2a 96        	add	a2, a2, a0
802035ee: 2c 7e        	ld	a1, 120(a2)
802035f0: 13 05 86 07  	addi	a0, a2, 120
802035f4: 91 e5        	bnez	a1, 0x80203600 <.Lpcrel_hi0+0x34>
;         mc.intena = old;
802035f6: fa 19        	slli	s3, s3, 62
802035f8: 93 d6 f9 03  	srli	a3, s3, 63
802035fc: 23 00 d6 08  	sb	a3, 128(a2)
;     mc.noff += 1;
80203600: 85 05        	addi	a1, a1, 1
80203602: 0c e1        	sd	a1, 0(a0)
80203604: 03 05 89 01  	lb	a0, 24(s2)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80203608: 93 04 89 01  	addi	s1, s2, 24
8020360c: 1d c5        	beqz	a0, 0x8020363a <.Lpcrel_hi2+0x26>
8020360e: 03 3a 09 01  	ld	s4, 16(s2)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203612: 92 89        	mv	s3, tp

0000000080203614 <.Lpcrel_hi2>:
;         self.0.call_once(builder)
80203614: 17 e5 08 00  	auipc	a0, 142
80203618: 13 05 c5 84  	addi	a0, a0, -1972
8020361c: 97 f0 ff ff  	auipc	ra, 1048575
80203620: e7 80 40 9e  	jalr	-1564(ra)
80203624: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80203628: 63 fc b9 08  	bgeu	s3, a1, 0x802036c0 <.Lpcrel_hi3>
8020362c: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80203630: b3 85 b9 02  	mul	a1, s3, a1
80203634: 2e 95        	add	a0, a0, a1
;         if self.holding() {
80203636: 63 01 aa 0a  	beq	s4, a0, 0x802036d8 <.Lpcrel_hi4>
8020363a: 13 f5 c4 ff  	andi	a0, s1, -4
8020363e: 93 05 f0 0f  	li	a1, 255
80203642: 05 46        	li	a2, 1
80203644: af 26 05 14  	lr.w.aq	a3, (a0)
80203648: 33 f7 b6 00  	and	a4, a3, a1
8020364c: 01 eb        	bnez	a4, 0x8020365c <.Lpcrel_hi2+0x48>
8020364e: 33 c7 c6 00  	xor	a4, a3, a2
80203652: 6d 8f        	and	a4, a4, a1
80203654: 35 8f        	xor	a4, a4, a3
80203656: 2f 27 e5 18  	sc.w	a4, a4, (a0)
8020365a: 6d f7        	bnez	a4, 0x80203644 <.Lpcrel_hi2+0x30>
8020365c: 13 f5 f6 0f  	andi	a0, a3, 255
;         while self
80203660: 69 fd        	bnez	a0, 0x8020363a <.Lpcrel_hi2+0x26>
80203662: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203666: 92 84        	mv	s1, tp

0000000080203668 <.Lpcrel_hi7>:
;         self.0.call_once(builder)
80203668: 17 d5 08 00  	auipc	a0, 141
8020366c: 13 05 85 7f  	addi	a0, a0, 2040
80203670: 97 f0 ff ff  	auipc	ra, 1048575
80203674: e7 80 00 99  	jalr	-1648(ra)
80203678: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
8020367c: 63 f6 b4 02  	bgeu	s1, a1, 0x802036a8 <.Lpcrel_hi8>
80203680: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80203684: b3 85 b4 02  	mul	a1, s1, a1
80203688: 2e 95        	add	a0, a0, a1
;         self.cpu = mycpu();
8020368a: 23 38 a9 00  	sd	a0, 16(s2)
;     }
8020368e: e6 60        	ld	ra, 88(sp)
80203690: 46 64        	ld	s0, 80(sp)
80203692: a6 64        	ld	s1, 72(sp)
80203694: 06 69        	ld	s2, 64(sp)
80203696: e2 79        	ld	s3, 56(sp)
80203698: 42 7a        	ld	s4, 48(sp)
8020369a: 25 61        	addi	sp, sp, 96
8020369c: 82 80        	ret

000000008020369e <.Lpcrel_hi1>:
; 	&mut CPUS.get_mut()[id]
8020369e: 17 55 00 00  	auipc	a0, 5
802036a2: 13 06 a5 d2  	addi	a2, a0, -726
802036a6: 29 a0        	j	0x802036b0 <.Lpcrel_hi8+0x8>

00000000802036a8 <.Lpcrel_hi8>:
802036a8: 17 55 00 00  	auipc	a0, 5
802036ac: 13 06 05 d2  	addi	a2, a0, -736
802036b0: 93 05 00 04  	li	a1, 64
802036b4: 26 85        	mv	a0, s1
802036b6: 97 20 00 00  	auipc	ra, 2
802036ba: e7 80 c0 6a  	jalr	1708(ra)
802036be: 00 00        	unimp	

00000000802036c0 <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
802036c0: 17 55 00 00  	auipc	a0, 5
802036c4: 13 06 85 d0  	addi	a2, a0, -760
802036c8: 93 05 00 04  	li	a1, 64
802036cc: 4e 85        	mv	a0, s3
802036ce: 97 20 00 00  	auipc	ra, 2
802036d2: e7 80 40 69  	jalr	1684(ra)
802036d6: 00 00        	unimp	

00000000802036d8 <.Lpcrel_hi4>:
802036d8: 17 55 00 00  	auipc	a0, 5
802036dc: 13 05 05 b4  	addi	a0, a0, -1216
802036e0: 23 30 a4 fa  	sd	a0, -96(s0)
802036e4: 05 45        	li	a0, 1
802036e6: 23 34 a4 fa  	sd	a0, -88(s0)
802036ea: 23 30 04 fc  	sd	zero, -64(s0)

00000000802036ee <.Lpcrel_hi5>:
802036ee: 17 55 00 00  	auipc	a0, 5
802036f2: 13 05 25 b2  	addi	a0, a0, -1246
802036f6: 23 38 a4 fa  	sd	a0, -80(s0)
802036fa: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802036fe <.Lpcrel_hi6>:
;             panic!("acquire");
802036fe: 17 55 00 00  	auipc	a0, 5
80203702: 93 05 25 b4  	addi	a1, a0, -1214
80203706: 13 05 04 fa  	addi	a0, s0, -96
8020370a: 97 20 00 00  	auipc	ra, 2
8020370e: e7 80 e0 5f  	jalr	1534(ra)
80203712: 00 00        	unimp	

0000000080203714 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h5e1a82b3c5f3019bE.llvm.8274304003063592636>:
80203714: 41 11        	addi	sp, sp, -16
80203716: 06 e4        	sd	ra, 8(sp)
80203718: 22 e0        	sd	s0, 0(sp)
8020371a: 00 08        	addi	s0, sp, 16
8020371c: a2 60        	ld	ra, 8(sp)
8020371e: 02 64        	ld	s0, 0(sp)
80203720: 41 01        	addi	sp, sp, 16
80203722: 82 80        	ret

0000000080203724 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636>:
80203724: 01 11        	addi	sp, sp, -32
80203726: 06 ec        	sd	ra, 24(sp)
80203728: 22 e8        	sd	s0, 16(sp)
8020372a: 00 10        	addi	s0, sp, 32
8020372c: 1b 85 05 00  	sext.w	a0, a1
80203730: 13 06 00 08  	li	a2, 128
80203734: 23 26 04 fe  	sw	zero, -20(s0)
80203738: 63 76 c5 00  	bgeu	a0, a2, 0x80203744 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x20>
8020373c: 23 06 b4 fe  	sb	a1, -20(s0)
80203740: 05 47        	li	a4, 1
80203742: 71 a0        	j	0x802037ce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xaa>
80203744: 1b d5 b5 00  	srliw	a0, a1, 11
80203748: 19 ed        	bnez	a0, 0x80203766 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x42>
8020374a: 13 d5 65 00  	srli	a0, a1, 6
8020374e: 13 65 05 0c  	ori	a0, a0, 192
80203752: 23 06 a4 fe  	sb	a0, -20(s0)
80203756: 13 f5 f5 03  	andi	a0, a1, 63
8020375a: 13 05 05 08  	addi	a0, a0, 128
8020375e: a3 06 a4 fe  	sb	a0, -19(s0)
80203762: 09 47        	li	a4, 2
80203764: ad a0        	j	0x802037ce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xaa>
80203766: 1b d5 05 01  	srliw	a0, a1, 16
8020376a: 15 e5        	bnez	a0, 0x80203796 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x72>
8020376c: 13 d5 c5 00  	srli	a0, a1, 12
80203770: 13 65 05 0e  	ori	a0, a0, 224
80203774: 23 06 a4 fe  	sb	a0, -20(s0)
80203778: 13 95 45 03  	slli	a0, a1, 52
8020377c: 69 91        	srli	a0, a0, 58
8020377e: 13 05 05 08  	addi	a0, a0, 128
80203782: a3 06 a4 fe  	sb	a0, -19(s0)
80203786: 13 f5 f5 03  	andi	a0, a1, 63
8020378a: 13 05 05 08  	addi	a0, a0, 128
8020378e: 23 07 a4 fe  	sb	a0, -18(s0)
80203792: 0d 47        	li	a4, 3
80203794: 2d a8        	j	0x802037ce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xaa>
80203796: 13 95 b5 02  	slli	a0, a1, 43
8020379a: 75 91        	srli	a0, a0, 61
8020379c: 13 05 05 0f  	addi	a0, a0, 240
802037a0: 23 06 a4 fe  	sb	a0, -20(s0)
802037a4: 13 95 e5 02  	slli	a0, a1, 46
802037a8: 69 91        	srli	a0, a0, 58
802037aa: 13 05 05 08  	addi	a0, a0, 128
802037ae: a3 06 a4 fe  	sb	a0, -19(s0)
802037b2: 13 95 45 03  	slli	a0, a1, 52
802037b6: 69 91        	srli	a0, a0, 58
802037b8: 13 05 05 08  	addi	a0, a0, 128
802037bc: 23 07 a4 fe  	sb	a0, -18(s0)
802037c0: 13 f5 f5 03  	andi	a0, a1, 63
802037c4: 13 05 05 08  	addi	a0, a0, 128
802037c8: a3 07 a4 fe  	sb	a0, -17(s0)
802037cc: 11 47        	li	a4, 4
802037ce: 93 06 c4 fe  	addi	a3, s0, -20
802037d2: 36 97        	add	a4, a4, a3
802037d4: 13 03 f0 0d  	li	t1, 223
802037d8: 13 08 00 0f  	li	a6, 240
802037dc: b7 02 11 00  	lui	t0, 272
802037e0: 85 48        	li	a7, 1
802037e2: 01 a8        	j	0x802037f2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xce>
802037e4: 85 06        	addi	a3, a3, 1
;         asm!(
802037e6: 81 45        	li	a1, 0
802037e8: 01 46        	li	a2, 0
802037ea: 73 00 00 00  	ecall	
802037ee: 63 8f e6 04  	beq	a3, a4, 0x8020384c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x128>
802037f2: 83 85 06 00  	lb	a1, 0(a3)
802037f6: 13 f5 f5 0f  	andi	a0, a1, 255
802037fa: e3 d5 05 fe  	bgez	a1, 0x802037e4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xc0>
802037fe: 03 c6 16 00  	lbu	a2, 1(a3)
80203802: 93 75 f5 01  	andi	a1, a0, 31
80203806: 13 76 f6 03  	andi	a2, a2, 63
8020380a: 63 77 a3 02  	bgeu	t1, a0, 0x80203838 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x114>
8020380e: 83 c7 26 00  	lbu	a5, 2(a3)
80203812: 1a 06        	slli	a2, a2, 6
80203814: 93 f7 f7 03  	andi	a5, a5, 63
80203818: 5d 8e        	or	a2, a2, a5
8020381a: 63 64 05 03  	bltu	a0, a6, 0x80203842 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x11e>
8020381e: 03 c5 36 00  	lbu	a0, 3(a3)
80203822: f6 15        	slli	a1, a1, 61
80203824: ad 91        	srli	a1, a1, 43
80203826: 1a 06        	slli	a2, a2, 6
80203828: 13 75 f5 03  	andi	a0, a0, 63
8020382c: 51 8d        	or	a0, a0, a2
8020382e: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203830: 63 0e 55 00  	beq	a0, t0, 0x8020384c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0x128>
80203834: 91 06        	addi	a3, a3, 4
80203836: 45 bf        	j	0x802037e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xc2>
80203838: 89 06        	addi	a3, a3, 2
8020383a: 13 95 65 00  	slli	a0, a1, 6
8020383e: 51 8d        	or	a0, a0, a2
80203840: 5d b7        	j	0x802037e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xc2>
80203842: 8d 06        	addi	a3, a3, 3
80203844: 13 95 c5 00  	slli	a0, a1, 12
80203848: 51 8d        	or	a0, a0, a2
8020384a: 71 bf        	j	0x802037e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h54a88018df154cbdE.llvm.8274304003063592636+0xc2>
8020384c: 01 45        	li	a0, 0
8020384e: e2 60        	ld	ra, 24(sp)
80203850: 42 64        	ld	s0, 16(sp)
80203852: 05 61        	addi	sp, sp, 32
80203854: 82 80        	ret

0000000080203856 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7a4d57cd6d1ce835E.llvm.8274304003063592636>:
80203856: 5d 71        	addi	sp, sp, -80
80203858: 86 e4        	sd	ra, 72(sp)
8020385a: a2 e0        	sd	s0, 64(sp)
8020385c: 80 08        	addi	s0, sp, 80
8020385e: 90 75        	ld	a2, 40(a1)
80203860: 94 71        	ld	a3, 32(a1)
80203862: 98 6d        	ld	a4, 24(a1)
80203864: 23 34 c4 fe  	sd	a2, -24(s0)
80203868: 23 30 d4 fe  	sd	a3, -32(s0)
8020386c: 23 3c e4 fc  	sd	a4, -40(s0)
80203870: 90 69        	ld	a2, 16(a1)
80203872: 94 65        	ld	a3, 8(a1)
80203874: 8c 61        	ld	a1, 0(a1)
80203876: 08 61        	ld	a0, 0(a0)
80203878: 23 38 c4 fc  	sd	a2, -48(s0)
8020387c: 23 34 d4 fc  	sd	a3, -56(s0)
80203880: 23 30 b4 fc  	sd	a1, -64(s0)
80203884: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080203888 <.Lpcrel_hi0>:
80203888: 17 55 00 00  	auipc	a0, 5
8020388c: 93 05 05 a0  	addi	a1, a0, -1536
80203890: 13 05 84 fb  	addi	a0, s0, -72
80203894: 13 06 04 fc  	addi	a2, s0, -64
80203898: 97 30 00 00  	auipc	ra, 3
8020389c: e7 80 c0 a8  	jalr	-1396(ra)
802038a0: a6 60        	ld	ra, 72(sp)
802038a2: 06 64        	ld	s0, 64(sp)
802038a4: 61 61        	addi	sp, sp, 80
802038a6: 82 80        	ret

00000000802038a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636>:
802038a8: 41 11        	addi	sp, sp, -16
802038aa: 06 e4        	sd	ra, 8(sp)
802038ac: 22 e0        	sd	s0, 0(sp)
802038ae: 00 08        	addi	s0, sp, 16
802038b0: 41 c2        	beqz	a2, 0x80203930 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x88>
802038b2: ae 86        	mv	a3, a1
802038b4: 33 87 c5 00  	add	a4, a1, a2
802038b8: 13 03 f0 0d  	li	t1, 223
802038bc: 13 08 00 0f  	li	a6, 240
802038c0: b7 02 11 00  	lui	t0, 272
802038c4: 85 48        	li	a7, 1
802038c6: 01 a8        	j	0x802038d6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x2e>
802038c8: 85 06        	addi	a3, a3, 1
;         asm!(
802038ca: 81 45        	li	a1, 0
802038cc: 01 46        	li	a2, 0
802038ce: 73 00 00 00  	ecall	
802038d2: 63 8f e6 04  	beq	a3, a4, 0x80203930 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x88>
802038d6: 83 85 06 00  	lb	a1, 0(a3)
802038da: 13 f5 f5 0f  	andi	a0, a1, 255
802038de: e3 d5 05 fe  	bgez	a1, 0x802038c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x20>
802038e2: 03 c6 16 00  	lbu	a2, 1(a3)
802038e6: 93 75 f5 01  	andi	a1, a0, 31
802038ea: 13 76 f6 03  	andi	a2, a2, 63
802038ee: 63 77 a3 02  	bgeu	t1, a0, 0x8020391c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x74>
802038f2: 83 c7 26 00  	lbu	a5, 2(a3)
802038f6: 1a 06        	slli	a2, a2, 6
802038f8: 93 f7 f7 03  	andi	a5, a5, 63
802038fc: 5d 8e        	or	a2, a2, a5
802038fe: 63 64 05 03  	bltu	a0, a6, 0x80203926 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x7e>
80203902: 03 c5 36 00  	lbu	a0, 3(a3)
80203906: f6 15        	slli	a1, a1, 61
80203908: ad 91        	srli	a1, a1, 43
8020390a: 1a 06        	slli	a2, a2, 6
8020390c: 13 75 f5 03  	andi	a0, a0, 63
80203910: 51 8d        	or	a0, a0, a2
80203912: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203914: 63 0e 55 00  	beq	a0, t0, 0x80203930 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x88>
80203918: 91 06        	addi	a3, a3, 4
8020391a: 45 bf        	j	0x802038ca <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x22>
8020391c: 89 06        	addi	a3, a3, 2
8020391e: 13 95 65 00  	slli	a0, a1, 6
80203922: 51 8d        	or	a0, a0, a2
80203924: 5d b7        	j	0x802038ca <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x22>
80203926: 8d 06        	addi	a3, a3, 3
80203928: 13 95 c5 00  	slli	a0, a1, 12
8020392c: 51 8d        	or	a0, a0, a2
8020392e: 71 bf        	j	0x802038ca <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h3a767421605dd3e1E.llvm.8274304003063592636+0x22>
80203930: 01 45        	li	a0, 0
80203932: a2 60        	ld	ra, 8(sp)
80203934: 02 64        	ld	s0, 0(sp)
80203936: 41 01        	addi	sp, sp, 16
80203938: 82 80        	ret

000000008020393a <_ZN6kernel4lock7pop_off17h5d89f8cac4172ee1E>:
; pub fn pop_off() {
8020393a: 5d 71        	addi	sp, sp, -80
8020393c: 86 e4        	sd	ra, 72(sp)
8020393e: a2 e0        	sd	s0, 64(sp)
80203940: 26 fc        	sd	s1, 56(sp)
80203942: 80 08        	addi	s0, sp, 80
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203944: 92 84        	mv	s1, tp

0000000080203946 <.Lpcrel_hi2>:
;         self.0.call_once(builder)
80203946: 17 d5 08 00  	auipc	a0, 141
8020394a: 13 05 a5 51  	addi	a0, a0, 1306
8020394e: 97 e0 ff ff  	auipc	ra, 1048574
80203952: e7 80 20 6b  	jalr	1714(ra)
80203956: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
8020395a: 63 f3 b4 04  	bgeu	s1, a1, 0x802039a0 <.Lpcrel_hi3>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020395e: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
80203962: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
80203964: b1 e9        	bnez	a1, 0x802039b8 <.Lpcrel_hi4>
80203966: 93 05 80 08  	li	a1, 136
;     if mc.noff < 1 {
8020396a: 33 86 b4 02  	mul	a2, s1, a1
8020396e: 2a 96        	add	a2, a2, a0
80203970: 2c 7e        	ld	a1, 120(a2)
80203972: 63 5b b0 06  	blez	a1, 0x802039e8 <.Lpcrel_hi7>
80203976: 13 06 86 07  	addi	a2, a2, 120
;     mc.noff -= 1;
8020397a: fd 15        	addi	a1, a1, -1
8020397c: 0c e2        	sd	a1, 0(a2)
;     if mc.noff == 0 && mc.intena {
8020397e: 81 ed        	bnez	a1, 0x80203996 <.Lpcrel_hi2+0x50>
80203980: 93 05 80 08  	li	a1, 136
;     if mc.noff == 0 && mc.intena {
80203984: b3 85 b4 02  	mul	a1, s1, a1
80203988: 2e 95        	add	a0, a0, a1
8020398a: 03 45 05 08  	lbu	a0, 128(a0)
8020398e: 01 c5        	beqz	a0, 0x80203996 <.Lpcrel_hi2+0x50>
80203990: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80203992: 73 20 05 10  	csrs	sstatus, a0
; }
80203996: a6 60        	ld	ra, 72(sp)
80203998: 06 64        	ld	s0, 64(sp)
8020399a: e2 74        	ld	s1, 56(sp)
8020399c: 61 61        	addi	sp, sp, 80
8020399e: 82 80        	ret

00000000802039a0 <.Lpcrel_hi3>:
; 	&mut CPUS.get_mut()[id]
802039a0: 17 55 00 00  	auipc	a0, 5
802039a4: 13 06 85 a2  	addi	a2, a0, -1496
802039a8: 93 05 00 04  	li	a1, 64
802039ac: 26 85        	mv	a0, s1
802039ae: 97 20 00 00  	auipc	ra, 2
802039b2: e7 80 40 3b  	jalr	948(ra)
802039b6: 00 00        	unimp	

00000000802039b8 <.Lpcrel_hi4>:
802039b8: 17 55 00 00  	auipc	a0, 5
802039bc: 13 05 05 99  	addi	a0, a0, -1648
802039c0: 23 3c a4 fa  	sd	a0, -72(s0)
802039c4: 05 45        	li	a0, 1
802039c6: 23 30 a4 fc  	sd	a0, -64(s0)
802039ca: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802039ce <.Lpcrel_hi5>:
802039ce: 17 55 00 00  	auipc	a0, 5
802039d2: 13 05 a5 98  	addi	a0, a0, -1654
802039d6: 23 34 a4 fc  	sd	a0, -56(s0)
802039da: 23 38 04 fc  	sd	zero, -48(s0)

00000000802039de <.Lpcrel_hi6>:
;         panic!("pop_off - interruptible");
802039de: 17 55 00 00  	auipc	a0, 5
802039e2: 93 05 a5 98  	addi	a1, a0, -1654
802039e6: 05 a8        	j	0x80203a16 <.Lpcrel_hi9+0x8>

00000000802039e8 <.Lpcrel_hi7>:
802039e8: 17 55 00 00  	auipc	a0, 5
802039ec: 13 05 05 9a  	addi	a0, a0, -1632
802039f0: 23 3c a4 fa  	sd	a0, -72(s0)
802039f4: 05 45        	li	a0, 1
802039f6: 23 30 a4 fc  	sd	a0, -64(s0)
802039fa: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802039fe <.Lpcrel_hi8>:
802039fe: 17 55 00 00  	auipc	a0, 5
80203a02: 13 05 a5 95  	addi	a0, a0, -1702
80203a06: 23 34 a4 fc  	sd	a0, -56(s0)
80203a0a: 23 38 04 fc  	sd	zero, -48(s0)

0000000080203a0e <.Lpcrel_hi9>:
;         panic!("pop_off");
80203a0e: 17 55 00 00  	auipc	a0, 5
80203a12: 93 05 a5 98  	addi	a1, a0, -1654
80203a16: 13 05 84 fb  	addi	a0, s0, -72
80203a1a: 97 20 00 00  	auipc	ra, 2
80203a1e: e7 80 e0 2e  	jalr	750(ra)
80203a22: 00 00        	unimp	

0000000080203a24 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h16317d1f0a306447E>:
80203a24: 41 11        	addi	sp, sp, -16
80203a26: 06 e4        	sd	ra, 8(sp)
80203a28: 22 e0        	sd	s0, 0(sp)
80203a2a: 00 08        	addi	s0, sp, 16
80203a2c: 08 61        	ld	a0, 0(a0)
80203a2e: a2 60        	ld	ra, 8(sp)
80203a30: 02 64        	ld	s0, 0(sp)
80203a32: 41 01        	addi	sp, sp, 16
80203a34: 17 33 00 00  	auipc	t1, 3
80203a38: 67 00 e3 8d  	jr	-1826(t1)

0000000080203a3c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e1c48c315dd058eE>:
80203a3c: 41 11        	addi	sp, sp, -16
80203a3e: 06 e4        	sd	ra, 8(sp)
80203a40: 22 e0        	sd	s0, 0(sp)
80203a42: 00 08        	addi	s0, sp, 16
80203a44: 10 61        	ld	a2, 0(a0)
80203a46: 14 65        	ld	a3, 8(a0)
80203a48: 2e 87        	mv	a4, a1
80203a4a: 32 85        	mv	a0, a2
80203a4c: b6 85        	mv	a1, a3
80203a4e: 3a 86        	mv	a2, a4
80203a50: a2 60        	ld	ra, 8(sp)
80203a52: 02 64        	ld	s0, 0(sp)
80203a54: 41 01        	addi	sp, sp, 16
80203a56: 17 33 00 00  	auipc	t1, 3
80203a5a: 67 00 a3 ef  	jr	-262(t1)

0000000080203a5e <_ZN6kernel4trap12trapinithart17he3bac37976ea6eecE>:
; pub fn trapinithart() {
80203a5e: 5d 71        	addi	sp, sp, -80
80203a60: 86 e4        	sd	ra, 72(sp)
80203a62: a2 e0        	sd	s0, 64(sp)
80203a64: 80 08        	addi	s0, sp, 80

0000000080203a66 <.Lpcrel_hi13>:
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80203a66: 17 d5 ff ff  	auipc	a0, 1048573
80203a6a: 13 05 a5 6c  	addi	a0, a0, 1738
80203a6e: 73 10 55 10  	csrw	stvec, a0
80203a72: 13 05 84 fe  	addi	a0, s0, -24
;     Stdout.write_fmt(args).unwrap();
80203a76: 23 38 a4 fa  	sd	a0, -80(s0)

0000000080203a7a <.Lpcrel_hi14>:
80203a7a: 17 55 00 00  	auipc	a0, 5
80203a7e: 13 05 65 b3  	addi	a0, a0, -1226
80203a82: 23 3c a4 fa  	sd	a0, -72(s0)
80203a86: 05 45        	li	a0, 1
80203a88: 23 30 a4 fc  	sd	a0, -64(s0)

0000000080203a8c <.Lpcrel_hi15>:
80203a8c: 17 55 00 00  	auipc	a0, 5
80203a90: 13 05 45 95  	addi	a0, a0, -1708
80203a94: 23 34 a4 fc  	sd	a0, -56(s0)
80203a98: 23 38 04 fc  	sd	zero, -48(s0)
80203a9c: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080203aa0 <.Lpcrel_hi16>:
80203aa0: 17 45 00 00  	auipc	a0, 4
80203aa4: 93 05 85 7e  	addi	a1, a0, 2024
80203aa8: 13 05 04 fb  	addi	a0, s0, -80
80203aac: 13 06 84 fb  	addi	a2, s0, -72
80203ab0: 97 30 00 00  	auipc	ra, 3
80203ab4: e7 80 40 87  	jalr	-1932(ra)
80203ab8: 09 e5        	bnez	a0, 0x80203ac2 <.Lpcrel_hi17>
; }
80203aba: a6 60        	ld	ra, 72(sp)
80203abc: 06 64        	ld	s0, 64(sp)
80203abe: 61 61        	addi	sp, sp, 80
80203ac0: 82 80        	ret

0000000080203ac2 <.Lpcrel_hi17>:
80203ac2: 17 45 00 00  	auipc	a0, 4
80203ac6: 13 05 65 7f  	addi	a0, a0, 2038

0000000080203aca <.Lpcrel_hi18>:
80203aca: 97 55 00 00  	auipc	a1, 5
80203ace: 93 86 e5 81  	addi	a3, a1, -2018

0000000080203ad2 <.Lpcrel_hi19>:
80203ad2: 97 55 00 00  	auipc	a1, 5
80203ad6: 13 87 65 84  	addi	a4, a1, -1978
80203ada: 93 05 b0 02  	li	a1, 43
80203ade: 13 06 84 fe  	addi	a2, s0, -24
80203ae2: 97 20 00 00  	auipc	ra, 2
80203ae6: e7 80 00 2c  	jalr	704(ra)
80203aea: 00 00        	unimp	

0000000080203aec <main>:
; pub fn main(sp: usize) {
80203aec: 49 71        	addi	sp, sp, -368
80203aee: 86 f6        	sd	ra, 360(sp)
80203af0: a2 f2        	sd	s0, 352(sp)
80203af2: a6 ee        	sd	s1, 344(sp)
80203af4: ca ea        	sd	s2, 336(sp)
80203af6: ce e6        	sd	s3, 328(sp)
80203af8: d2 e2        	sd	s4, 320(sp)
80203afa: 56 fe        	sd	s5, 312(sp)
80203afc: 80 1a        	addi	s0, sp, 368

0000000080203afe <.Lpcrel_hi2>:
80203afe: 97 05 29 00  	auipc	a1, 656
80203b02: 93 85 25 50  	addi	a1, a1, 1282

0000000080203b06 <.Lpcrel_hi3>:
80203b06: 17 76 08 00  	auipc	a2, 135
80203b0a: 13 06 a6 4f  	addi	a2, a2, 1274
80203b0e: 23 3c a4 e8  	sd	a0, -360(s0)
80203b12: 63 79 b6 00  	bgeu	a2, a1, 0x80203b24 <.Lpcrel_hi4>
80203b16: 13 05 16 00  	addi	a0, a2, 1
80203b1a: 23 00 06 00  	sb	zero, 0(a2)
80203b1e: 2a 86        	mv	a2, a0
80203b20: e3 6b b5 fe  	bltu	a0, a1, 0x80203b16 <.Lpcrel_hi3+0x10>

0000000080203b24 <.Lpcrel_hi4>:
;         HEAP_ALLOCATOR
80203b24: 17 f5 28 00  	auipc	a0, 655
80203b28: 13 05 45 58  	addi	a0, a0, 1412
80203b2c: 97 20 00 00  	auipc	ra, 2
80203b30: e7 80 c0 0b  	jalr	188(ra)
80203b34: aa 89        	mv	s3, a0
80203b36: 05 49        	li	s2, 1
80203b38: af 34 25 01  	amoadd.d	s1, s2, (a0)
80203b3c: 08 65        	ld	a0, 8(a0)
80203b3e: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203b42: 63 0a 95 00  	beq	a0, s1, 0x80203b56 <.Lpcrel_hi4+0x32>
80203b46: 0f 00 00 01  	fence	w, 0
80203b4a: 03 b5 89 00  	ld	a0, 8(s3)
80203b4e: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80203b52: e3 1a 95 fe  	bne	a0, s1, 0x80203b46 <.Lpcrel_hi4+0x22>
;             value: unsafe { &mut *self.value.get() },
80203b56: 13 85 09 01  	addi	a0, s3, 16

0000000080203b5a <.Lpcrel_hi5>:
;         HEAP_ALLOCATOR
80203b5a: 97 f5 08 00  	auipc	a1, 143
80203b5e: 93 85 e5 54  	addi	a1, a1, 1358
80203b62: 37 06 20 00  	lui	a2, 512
80203b66: 97 20 00 00  	auipc	ra, 2
80203b6a: e7 80 20 bf  	jalr	-1038(ra)
;         let new_ticket = self.ticket + 1;
80203b6e: 85 04        	addi	s1, s1, 1
80203b70: 0f 00 10 03  	fence	rw, w
80203b74: 23 b4 99 00  	sd	s1, 8(s3)
;     unsafe { asm!("mv {}, sp", out(reg) x) }
80203b78: 0a 85        	mv	a0, sp
;     x
80203b7a: 23 38 a4 ec  	sd	a0, -304(s0)

0000000080203b7e <.Lpcrel_hi6>:
;     println!("{:#x} {:#x}, {:#x}",sp, r_sp(), boot_stack_bottom as usize);
80203b7e: 17 75 00 00  	auipc	a0, 7
80203b82: 13 05 25 48  	addi	a0, a0, 1154
80203b86: 23 30 a4 f8  	sd	a0, -128(s0)
80203b8a: 13 05 84 e9  	addi	a0, s0, -360
80203b8e: 23 30 a4 ea  	sd	a0, -352(s0)

0000000080203b92 <.Lpcrel_hi7>:
80203b92: 17 35 00 00  	auipc	a0, 3
80203b96: 93 04 05 fb  	addi	s1, a0, -80
80203b9a: 23 34 94 ea  	sd	s1, -344(s0)
80203b9e: 13 05 04 ed  	addi	a0, s0, -304
80203ba2: 23 38 a4 ea  	sd	a0, -336(s0)
80203ba6: 23 3c 94 ea  	sd	s1, -328(s0)
80203baa: 13 05 04 f8  	addi	a0, s0, -128
80203bae: 23 30 a4 ec  	sd	a0, -320(s0)
80203bb2: 23 34 94 ec  	sd	s1, -312(s0)
80203bb6: 09 45        	li	a0, 2
80203bb8: 23 3c a4 ec  	sd	a0, -296(s0)
80203bbc: 23 34 a4 ee  	sd	a0, -280(s0)
80203bc0: 23 3c 04 ee  	sd	zero, -264(s0)
80203bc4: 93 15 29 02  	slli	a1, s2, 34
80203bc8: 93 85 05 02  	addi	a1, a1, 32
80203bcc: 23 30 b4 f0  	sd	a1, -256(s0)
80203bd0: 0d 46        	li	a2, 3
80203bd2: 23 04 c4 f0  	sb	a2, -248(s0)
80203bd6: 23 38 a4 f0  	sd	a0, -240(s0)
80203bda: 23 30 a4 f2  	sd	a0, -224(s0)
80203bde: 23 38 24 f3  	sd	s2, -208(s0)
80203be2: 23 3c b4 f2  	sd	a1, -200(s0)
80203be6: 23 00 c4 f4  	sb	a2, -192(s0)
80203bea: 23 34 a4 f4  	sd	a0, -184(s0)
80203bee: 23 3c a4 f4  	sd	a0, -168(s0)
80203bf2: 23 34 a4 f6  	sd	a0, -152(s0)
80203bf6: 23 38 b4 f6  	sd	a1, -144(s0)
80203bfa: 23 0c c4 f6  	sb	a2, -136(s0)
80203bfe: 13 05 04 fc  	addi	a0, s0, -64
;     Stdout.write_fmt(args).unwrap();
80203c02: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080203c06 <.Lpcrel_hi8>:
80203c06: 17 55 00 00  	auipc	a0, 5
80203c0a: 13 05 25 9c  	addi	a0, a0, -1598
80203c0e: 23 38 a4 f8  	sd	a0, -112(s0)
80203c12: 11 45        	li	a0, 4
80203c14: 23 3c a4 f8  	sd	a0, -104(s0)
80203c18: 13 05 04 ea  	addi	a0, s0, -352
80203c1c: 23 30 a4 fa  	sd	a0, -96(s0)
80203c20: 23 34 c4 fa  	sd	a2, -88(s0)
80203c24: 13 05 84 ed  	addi	a0, s0, -296
80203c28: 23 38 a4 fa  	sd	a0, -80(s0)
80203c2c: 23 3c c4 fa  	sd	a2, -72(s0)

0000000080203c30 <.Lpcrel_hi9>:
80203c30: 17 45 00 00  	auipc	a0, 4
80203c34: 93 05 85 65  	addi	a1, a0, 1624
80203c38: 13 05 84 f8  	addi	a0, s0, -120
80203c3c: 13 06 04 f9  	addi	a2, s0, -112
80203c40: 97 20 00 00  	auipc	ra, 2
80203c44: e7 80 40 6e  	jalr	1764(ra)
80203c48: 15 c5        	beqz	a0, 0x80203c74 <.Lpcrel_hi13>

0000000080203c4a <.Lpcrel_hi10>:
80203c4a: 17 45 00 00  	auipc	a0, 4
80203c4e: 13 05 e5 66  	addi	a0, a0, 1646

0000000080203c52 <.Lpcrel_hi11>:
80203c52: 97 45 00 00  	auipc	a1, 4
80203c56: 93 86 65 69  	addi	a3, a1, 1686

0000000080203c5a <.Lpcrel_hi12>:
80203c5a: 97 45 00 00  	auipc	a1, 4
80203c5e: 13 87 e5 6b  	addi	a4, a1, 1726
80203c62: 93 05 b0 02  	li	a1, 43
80203c66: 13 06 04 fc  	addi	a2, s0, -64
80203c6a: 97 20 00 00  	auipc	ra, 2
80203c6e: e7 80 80 13  	jalr	312(ra)
80203c72: 00 00        	unimp	

0000000080203c74 <.Lpcrel_hi13>:
80203c74: 17 65 00 00  	auipc	a0, 6
80203c78: 13 05 45 39  	addi	a0, a0, 916
80203c7c: 93 75 c5 ff  	andi	a1, a0, -4
80203c80: 0d 89        	andi	a0, a0, 3
80203c82: 0e 05        	slli	a0, a0, 3
80203c84: 13 06 f0 0f  	li	a2, 255
80203c88: 3b 16 a6 00  	sllw	a2, a2, a0
80203c8c: af a6 05 16  	lr.w.aqrl	a3, (a1)
80203c90: 01 47        	li	a4, 0
80203c92: 35 8f        	xor	a4, a4, a3
80203c94: 71 8f        	and	a4, a4, a2
80203c96: 35 8f        	xor	a4, a4, a3
80203c98: 2f a7 e5 1e  	sc.w.aqrl	a4, a4, (a1)
80203c9c: 65 fb        	bnez	a4, 0x80203c8c <.Lpcrel_hi13+0x18>
80203c9e: 3b d5 a6 00  	srlw	a0, a3, a0
80203ca2: 13 75 f5 0f  	andi	a0, a0, 255
;     if FIRST.swap(false, Ordering::SeqCst){
80203ca6: 4d e1        	bnez	a0, 0x80203d48 <.Lpcrel_hi70+0x1a>

0000000080203ca8 <.Lpcrel_hi14>:
80203ca8: 17 f5 28 00  	auipc	a0, 655
80203cac: 13 05 05 54  	addi	a0, a0, 1344
80203cb0: 0f 00 30 03  	fence	rw, rw
80203cb4: 83 05 05 00  	lb	a1, 0(a0)
80203cb8: 0f 00 30 02  	fence	r, rw
80203cbc: f5 d9        	beqz	a1, 0x80203cb0 <.Lpcrel_hi14+0x8>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203cbe: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80203cc0: 23 34 a4 f8  	sd	a0, -120(s0)
80203cc4: 13 05 84 f8  	addi	a0, s0, -120
80203cc8: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080203ccc <.Lpcrel_hi65>:
80203ccc: 17 35 00 00  	auipc	a0, 3
80203cd0: 13 05 45 25  	addi	a0, a0, 596
80203cd4: 23 3c a4 f8  	sd	a0, -104(s0)
80203cd8: 13 09 04 fc  	addi	s2, s0, -64
;     Stdout.write_fmt(args).unwrap();
80203cdc: 23 30 24 eb  	sd	s2, -352(s0)

0000000080203ce0 <.Lpcrel_hi66>:
80203ce0: 17 55 00 00  	auipc	a0, 5
80203ce4: 13 05 05 9d  	addi	a0, a0, -1584
80203ce8: 23 3c a4 ec  	sd	a0, -296(s0)
80203cec: 09 45        	li	a0, 2
80203cee: 23 30 a4 ee  	sd	a0, -288(s0)
80203cf2: 13 05 04 f9  	addi	a0, s0, -112
80203cf6: 23 34 a4 ee  	sd	a0, -280(s0)
80203cfa: 85 44        	li	s1, 1
80203cfc: 23 38 94 ee  	sd	s1, -272(s0)
80203d00: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203d04 <.Lpcrel_hi67>:
80203d04: 17 45 00 00  	auipc	a0, 4
80203d08: 93 05 45 58  	addi	a1, a0, 1412
80203d0c: 13 05 04 ea  	addi	a0, s0, -352
80203d10: 13 06 84 ed  	addi	a2, s0, -296
80203d14: 97 20 00 00  	auipc	ra, 2
80203d18: e7 80 00 61  	jalr	1552(ra)
80203d1c: 5d c9        	beqz	a0, 0x80203dd2 <.Lpcrel_hi20+0x1a>

0000000080203d1e <.Lpcrel_hi68>:
80203d1e: 17 45 00 00  	auipc	a0, 4
80203d22: 13 05 a5 59  	addi	a0, a0, 1434

0000000080203d26 <.Lpcrel_hi69>:
80203d26: 97 45 00 00  	auipc	a1, 4
80203d2a: 93 86 25 5c  	addi	a3, a1, 1474

0000000080203d2e <.Lpcrel_hi70>:
80203d2e: 97 45 00 00  	auipc	a1, 4
80203d32: 13 87 a5 5e  	addi	a4, a1, 1514
80203d36: 93 05 b0 02  	li	a1, 43
80203d3a: 13 06 04 fc  	addi	a2, s0, -64
80203d3e: 97 20 00 00  	auipc	ra, 2
80203d42: e7 80 40 06  	jalr	100(ra)
80203d46: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203d48: 12 85        	mv	a0, tp
;     x
80203d4a: 23 34 a4 f8  	sd	a0, -120(s0)
80203d4e: 13 05 84 f8  	addi	a0, s0, -120
;         println!("hart_id: {}", r_tp());
80203d52: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080203d56 <.Lpcrel_hi15>:
80203d56: 17 35 00 00  	auipc	a0, 3
80203d5a: 13 05 a5 1c  	addi	a0, a0, 458
80203d5e: 23 3c a4 f8  	sd	a0, -104(s0)
80203d62: 13 09 04 fc  	addi	s2, s0, -64
;     Stdout.write_fmt(args).unwrap();
80203d66: 23 30 24 eb  	sd	s2, -352(s0)

0000000080203d6a <.Lpcrel_hi16>:
80203d6a: 17 55 00 00  	auipc	a0, 5
80203d6e: 13 05 e5 8a  	addi	a0, a0, -1874
80203d72: 23 3c a4 ec  	sd	a0, -296(s0)
80203d76: 89 49        	li	s3, 2
80203d78: 23 30 34 ef  	sd	s3, -288(s0)
80203d7c: 13 0a 04 f9  	addi	s4, s0, -112
80203d80: 23 34 44 ef  	sd	s4, -280(s0)
80203d84: 85 4a        	li	s5, 1
80203d86: 23 38 54 ef  	sd	s5, -272(s0)
80203d8a: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203d8e <.Lpcrel_hi17>:
80203d8e: 17 45 00 00  	auipc	a0, 4
80203d92: 93 05 a5 4f  	addi	a1, a0, 1274
80203d96: 13 05 04 ea  	addi	a0, s0, -352
80203d9a: 13 06 84 ed  	addi	a2, s0, -296
80203d9e: 97 20 00 00  	auipc	ra, 2
80203da2: e7 80 60 58  	jalr	1414(ra)
80203da6: 61 c5        	beqz	a0, 0x80203e6e <.Lpcrel_hi21>

0000000080203da8 <.Lpcrel_hi18>:
80203da8: 17 45 00 00  	auipc	a0, 4
80203dac: 13 05 05 51  	addi	a0, a0, 1296

0000000080203db0 <.Lpcrel_hi19>:
80203db0: 97 45 00 00  	auipc	a1, 4
80203db4: 93 86 85 53  	addi	a3, a1, 1336

0000000080203db8 <.Lpcrel_hi20>:
80203db8: 97 45 00 00  	auipc	a1, 4
80203dbc: 13 87 05 56  	addi	a4, a1, 1376
80203dc0: 93 05 b0 02  	li	a1, 43
80203dc4: 13 06 04 fc  	addi	a2, s0, -64
80203dc8: 97 20 00 00  	auipc	ra, 2
80203dcc: e7 80 a0 fd  	jalr	-38(ra)
80203dd0: 00 00        	unimp	
;         kvminithart();
80203dd2: 97 10 00 00  	auipc	ra, 1
80203dd6: e7 80 e0 7e  	jalr	2030(ra)
;         trapinithart();
80203dda: 97 00 00 00  	auipc	ra, 0
80203dde: e7 80 40 c8  	jalr	-892(ra)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80203de2: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80203de4: 93 15 85 00  	slli	a1, a0, 8
80203de8: 37 26 00 0c  	lui	a2, 49154
80203dec: b2 95        	add	a1, a1, a2
80203dee: 13 06 20 40  	li	a2, 1026
80203df2: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80203df6: 36 05        	slli	a0, a0, 13
80203df8: b7 15 20 0c  	lui	a1, 49665
80203dfc: 2e 95        	add	a0, a0, a1
80203dfe: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
80203e02: 23 38 24 f9  	sd	s2, -112(s0)

0000000080203e06 <.Lpcrel_hi71>:
80203e06: 17 45 00 00  	auipc	a0, 4
80203e0a: 13 05 a5 3f  	addi	a0, a0, 1018
80203e0e: 23 3c a4 ec  	sd	a0, -296(s0)
80203e12: 23 30 94 ee  	sd	s1, -288(s0)

0000000080203e16 <.Lpcrel_hi72>:
80203e16: 17 45 00 00  	auipc	a0, 4
80203e1a: 13 05 a5 35  	addi	a0, a0, 858
80203e1e: 23 34 a4 ee  	sd	a0, -280(s0)
80203e22: 23 38 04 ee  	sd	zero, -272(s0)
80203e26: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203e2a <.Lpcrel_hi73>:
80203e2a: 17 45 00 00  	auipc	a0, 4
80203e2e: 93 05 e5 45  	addi	a1, a0, 1118
80203e32: 13 05 04 f9  	addi	a0, s0, -112
80203e36: 13 06 84 ed  	addi	a2, s0, -296
80203e3a: 97 20 00 00  	auipc	ra, 2
80203e3e: e7 80 a0 4e  	jalr	1258(ra)
80203e42: 45 c5        	beqz	a0, 0x80203eea <.Lpcrel_hi77>

0000000080203e44 <.Lpcrel_hi74>:
80203e44: 17 45 00 00  	auipc	a0, 4
80203e48: 13 05 45 47  	addi	a0, a0, 1140

0000000080203e4c <.Lpcrel_hi75>:
80203e4c: 97 45 00 00  	auipc	a1, 4
80203e50: 93 86 c5 49  	addi	a3, a1, 1180

0000000080203e54 <.Lpcrel_hi76>:
80203e54: 97 45 00 00  	auipc	a1, 4
80203e58: 13 87 45 4c  	addi	a4, a1, 1220
80203e5c: 93 05 b0 02  	li	a1, 43
80203e60: 13 06 04 fc  	addi	a2, s0, -64
80203e64: 97 20 00 00  	auipc	ra, 2
80203e68: e7 80 e0 f3  	jalr	-194(ra)
80203e6c: 00 00        	unimp	

0000000080203e6e <.Lpcrel_hi21>:
;     println!("{}", LOGO);
80203e6e: 17 45 00 00  	auipc	a0, 4
80203e72: 13 05 a5 6c  	addi	a0, a0, 1738
80203e76: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080203e7a <.Lpcrel_hi22>:
80203e7a: 17 05 00 00  	auipc	a0, 0
80203e7e: 13 05 25 bc  	addi	a0, a0, -1086
80203e82: 23 3c a4 f8  	sd	a0, -104(s0)
;     Stdout.write_fmt(args).unwrap();
80203e86: 23 30 24 eb  	sd	s2, -352(s0)

0000000080203e8a <.Lpcrel_hi23>:
80203e8a: 17 45 00 00  	auipc	a0, 4
80203e8e: 13 05 65 6c  	addi	a0, a0, 1734
80203e92: 23 3c a4 ec  	sd	a0, -296(s0)
80203e96: 23 30 34 ef  	sd	s3, -288(s0)
80203e9a: 23 34 44 ef  	sd	s4, -280(s0)
80203e9e: 23 38 54 ef  	sd	s5, -272(s0)
80203ea2: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203ea6 <.Lpcrel_hi24>:
80203ea6: 17 45 00 00  	auipc	a0, 4
80203eaa: 93 05 25 3e  	addi	a1, a0, 994
80203eae: 13 05 04 ea  	addi	a0, s0, -352
80203eb2: 13 06 84 ed  	addi	a2, s0, -296
80203eb6: 97 20 00 00  	auipc	ra, 2
80203eba: e7 80 e0 46  	jalr	1134(ra)
80203ebe: 25 cd        	beqz	a0, 0x80203f36 <.Lpcrel_hi64+0x16>

0000000080203ec0 <.Lpcrel_hi25>:
80203ec0: 17 45 00 00  	auipc	a0, 4
80203ec4: 13 05 85 3f  	addi	a0, a0, 1016

0000000080203ec8 <.Lpcrel_hi26>:
80203ec8: 97 45 00 00  	auipc	a1, 4
80203ecc: 93 86 05 42  	addi	a3, a1, 1056

0000000080203ed0 <.Lpcrel_hi27>:
80203ed0: 97 45 00 00  	auipc	a1, 4
80203ed4: 13 87 85 44  	addi	a4, a1, 1096
80203ed8: 93 05 b0 02  	li	a1, 43
80203edc: 13 06 04 fc  	addi	a2, s0, -64
80203ee0: 97 20 00 00  	auipc	ra, 2
80203ee4: e7 80 20 ec  	jalr	-318(ra)
80203ee8: 00 00        	unimp	

0000000080203eea <.Lpcrel_hi77>:
80203eea: 17 f5 28 00  	auipc	a0, 655
80203eee: 13 05 f5 2f  	addi	a0, a0, 767
80203ef2: 0f 00 10 03  	fence	rw, w
80203ef6: 85 45        	li	a1, 1
80203ef8: 23 00 b5 00  	sb	a1, 0(a0)

0000000080203efc <.Lpcrel_hi62>:
80203efc: 17 45 00 00  	auipc	a0, 4
80203f00: 13 05 45 7e  	addi	a0, a0, 2020
80203f04: 23 3c a4 ec  	sd	a0, -296(s0)
80203f08: 23 30 b4 ee  	sd	a1, -288(s0)
80203f0c: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203f10 <.Lpcrel_hi63>:
80203f10: 17 45 00 00  	auipc	a0, 4
80203f14: 13 05 05 6b  	addi	a0, a0, 1712
80203f18: 23 34 a4 ee  	sd	a0, -280(s0)
80203f1c: 23 38 04 ee  	sd	zero, -272(s0)

0000000080203f20 <.Lpcrel_hi64>:
;     panic!("Shutdown!");
80203f20: 17 45 00 00  	auipc	a0, 4
80203f24: 93 05 05 7e  	addi	a1, a0, 2016
80203f28: 13 05 84 ed  	addi	a0, s0, -296
80203f2c: 97 20 00 00  	auipc	ra, 2
80203f30: e7 80 c0 dd  	jalr	-548(ra)
80203f34: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80203f36: 23 38 24 f9  	sd	s2, -112(s0)

0000000080203f3a <.Lpcrel_hi28>:
80203f3a: 17 45 00 00  	auipc	a0, 4
80203f3e: 13 05 e5 71  	addi	a0, a0, 1822
80203f42: 23 3c a4 ec  	sd	a0, -296(s0)
80203f46: 85 49        	li	s3, 1
80203f48: 23 30 34 ef  	sd	s3, -288(s0)

0000000080203f4c <.Lpcrel_hi29>:
80203f4c: 17 45 00 00  	auipc	a0, 4
80203f50: 13 0a 45 67  	addi	s4, a0, 1652
80203f54: 23 34 44 ef  	sd	s4, -280(s0)
80203f58: 23 38 04 ee  	sd	zero, -272(s0)
80203f5c: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203f60 <.Lpcrel_hi30>:
80203f60: 17 45 00 00  	auipc	a0, 4
80203f64: 93 05 85 32  	addi	a1, a0, 808
80203f68: 13 05 04 f9  	addi	a0, s0, -112
80203f6c: 13 06 84 ed  	addi	a2, s0, -296
80203f70: 97 20 00 00  	auipc	ra, 2
80203f74: e7 80 40 3b  	jalr	948(ra)
80203f78: 15 c5        	beqz	a0, 0x80203fa4 <.Lpcrel_hi33+0x1a>

0000000080203f7a <.Lpcrel_hi31>:
80203f7a: 17 45 00 00  	auipc	a0, 4
80203f7e: 13 05 e5 33  	addi	a0, a0, 830

0000000080203f82 <.Lpcrel_hi32>:
80203f82: 97 45 00 00  	auipc	a1, 4
80203f86: 93 86 65 36  	addi	a3, a1, 870

0000000080203f8a <.Lpcrel_hi33>:
80203f8a: 97 45 00 00  	auipc	a1, 4
80203f8e: 13 87 e5 38  	addi	a4, a1, 910
80203f92: 93 05 b0 02  	li	a1, 43
80203f96: 13 06 04 fc  	addi	a2, s0, -64
80203f9a: 97 20 00 00  	auipc	ra, 2
80203f9e: e7 80 80 e0  	jalr	-504(ra)
80203fa2: 00 00        	unimp	
;     Stdout.write_fmt(args).unwrap();
80203fa4: 23 38 24 f9  	sd	s2, -112(s0)

0000000080203fa8 <.Lpcrel_hi34>:
80203fa8: 17 45 00 00  	auipc	a0, 4
80203fac: 13 05 05 6c  	addi	a0, a0, 1728
80203fb0: 23 3c a4 ec  	sd	a0, -296(s0)
80203fb4: 23 30 34 ef  	sd	s3, -288(s0)
80203fb8: 23 34 44 ef  	sd	s4, -280(s0)
80203fbc: 23 38 04 ee  	sd	zero, -272(s0)
80203fc0: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080203fc4 <.Lpcrel_hi35>:
80203fc4: 17 45 00 00  	auipc	a0, 4
80203fc8: 93 05 45 2c  	addi	a1, a0, 708
80203fcc: 13 05 04 f9  	addi	a0, s0, -112
80203fd0: 13 06 84 ed  	addi	a2, s0, -296
80203fd4: 13 09 84 ed  	addi	s2, s0, -296
80203fd8: 97 20 00 00  	auipc	ra, 2
80203fdc: e7 80 c0 34  	jalr	844(ra)
80203fe0: 15 c5        	beqz	a0, 0x8020400c <.Lpcrel_hi38+0x1a>

0000000080203fe2 <.Lpcrel_hi36>:
80203fe2: 17 45 00 00  	auipc	a0, 4
80203fe6: 13 05 65 2d  	addi	a0, a0, 726

0000000080203fea <.Lpcrel_hi37>:
80203fea: 97 45 00 00  	auipc	a1, 4
80203fee: 93 86 e5 2f  	addi	a3, a1, 766

0000000080203ff2 <.Lpcrel_hi38>:
80203ff2: 97 45 00 00  	auipc	a1, 4
80203ff6: 13 87 65 32  	addi	a4, a1, 806
80203ffa: 93 05 b0 02  	li	a1, 43
80203ffe: 13 06 04 fc  	addi	a2, s0, -64
80204002: 97 20 00 00  	auipc	ra, 2
80204006: e7 80 00 da  	jalr	-608(ra)
8020400a: 00 00        	unimp	
;         kinit(); 			// 初始化物理页分配器
8020400c: 97 00 00 00  	auipc	ra, 0
80204010: e7 80 60 67  	jalr	1654(ra)
;         kvminit(); 			// 创建内核页表
80204014: 97 10 00 00  	auipc	ra, 1
80204018: e7 80 e0 f9  	jalr	-98(ra)
;         kvminithart(); 		// 打开分页管理
8020401c: 97 10 00 00  	auipc	ra, 1
80204020: e7 80 40 5a  	jalr	1444(ra)
;     unsafe { asm!("mv {}, sp", out(reg) x) }
80204024: 0a 85        	mv	a0, sp
;     x
80204026: 23 30 a4 f8  	sd	a0, -128(s0)
8020402a: 13 05 04 f8  	addi	a0, s0, -128
;         println!("{:#x}", r_sp());
8020402e: 23 30 a4 ea  	sd	a0, -352(s0)
80204032: 23 34 94 ea  	sd	s1, -344(s0)
80204036: 09 45        	li	a0, 2
80204038: 23 3c a4 ec  	sd	a0, -296(s0)
8020403c: 23 34 a4 ee  	sd	a0, -280(s0)
80204040: 23 3c 04 ee  	sd	zero, -264(s0)
80204044: 85 44        	li	s1, 1
80204046: 93 95 24 02  	slli	a1, s1, 34
8020404a: 93 85 05 02  	addi	a1, a1, 32
8020404e: 23 30 b4 f0  	sd	a1, -256(s0)
80204052: 8d 45        	li	a1, 3
80204054: 23 04 b4 f0  	sb	a1, -248(s0)
80204058: 93 09 04 fc  	addi	s3, s0, -64
;     Stdout.write_fmt(args).unwrap();
8020405c: 23 34 34 f9  	sd	s3, -120(s0)

0000000080204060 <.Lpcrel_hi39>:
80204060: 97 45 00 00  	auipc	a1, 4
80204064: 93 85 85 61  	addi	a1, a1, 1560
80204068: 23 38 b4 f8  	sd	a1, -112(s0)
8020406c: 23 3c a4 f8  	sd	a0, -104(s0)
80204070: 13 05 04 ea  	addi	a0, s0, -352
80204074: 23 30 a4 fa  	sd	a0, -96(s0)
80204078: 23 34 94 fa  	sd	s1, -88(s0)
8020407c: 23 38 24 fb  	sd	s2, -80(s0)
80204080: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080204084 <.Lpcrel_hi40>:
80204084: 17 45 00 00  	auipc	a0, 4
80204088: 93 05 45 20  	addi	a1, a0, 516
8020408c: 13 05 84 f8  	addi	a0, s0, -120
80204090: 13 06 04 f9  	addi	a2, s0, -112
80204094: 97 20 00 00  	auipc	ra, 2
80204098: e7 80 00 29  	jalr	656(ra)
8020409c: 15 c5        	beqz	a0, 0x802040c8 <.Lpcrel_hi43+0x1a>

000000008020409e <.Lpcrel_hi41>:
8020409e: 17 45 00 00  	auipc	a0, 4
802040a2: 13 05 a5 21  	addi	a0, a0, 538

00000000802040a6 <.Lpcrel_hi42>:
802040a6: 97 45 00 00  	auipc	a1, 4
802040aa: 93 86 25 24  	addi	a3, a1, 578

00000000802040ae <.Lpcrel_hi43>:
802040ae: 97 45 00 00  	auipc	a1, 4
802040b2: 13 87 a5 26  	addi	a4, a1, 618
802040b6: 93 05 b0 02  	li	a1, 43
802040ba: 13 06 04 fc  	addi	a2, s0, -64
802040be: 97 20 00 00  	auipc	ra, 2
802040c2: e7 80 40 ce  	jalr	-796(ra)
802040c6: 00 00        	unimp	
;         procinit(); 		// 初始化进程表
802040c8: 97 f0 ff ff  	auipc	ra, 1048575
802040cc: e7 80 20 8a  	jalr	-1886(ra)
;     Stdout.write_fmt(args).unwrap();
802040d0: 23 38 34 f9  	sd	s3, -112(s0)

00000000802040d4 <.Lpcrel_hi44>:
802040d4: 17 45 00 00  	auipc	a0, 4
802040d8: 13 05 45 4b  	addi	a0, a0, 1204
802040dc: 23 3c a4 ec  	sd	a0, -296(s0)
802040e0: 23 30 94 ee  	sd	s1, -288(s0)

00000000802040e4 <.Lpcrel_hi45>:
802040e4: 17 45 00 00  	auipc	a0, 4
802040e8: 13 05 c5 2f  	addi	a0, a0, 764
802040ec: 23 34 a4 ee  	sd	a0, -280(s0)
802040f0: 23 38 04 ee  	sd	zero, -272(s0)
802040f4: 23 3c 04 ee  	sd	zero, -264(s0)

00000000802040f8 <.Lpcrel_hi46>:
802040f8: 17 45 00 00  	auipc	a0, 4
802040fc: 93 05 05 19  	addi	a1, a0, 400
80204100: 13 05 04 f9  	addi	a0, s0, -112
80204104: 13 06 84 ed  	addi	a2, s0, -296
80204108: 97 20 00 00  	auipc	ra, 2
8020410c: e7 80 c0 21  	jalr	540(ra)
80204110: 15 c5        	beqz	a0, 0x8020413c <.Lpcrel_hi49+0x1a>

0000000080204112 <.Lpcrel_hi47>:
80204112: 17 45 00 00  	auipc	a0, 4
80204116: 13 05 65 1a  	addi	a0, a0, 422

000000008020411a <.Lpcrel_hi48>:
8020411a: 97 45 00 00  	auipc	a1, 4
8020411e: 93 86 e5 1c  	addi	a3, a1, 462

0000000080204122 <.Lpcrel_hi49>:
80204122: 97 45 00 00  	auipc	a1, 4
80204126: 13 87 65 1f  	addi	a4, a1, 502
8020412a: 93 05 b0 02  	li	a1, 43
8020412e: 13 06 04 fc  	addi	a2, s0, -64
80204132: 97 20 00 00  	auipc	ra, 2
80204136: e7 80 00 c7  	jalr	-912(ra)
8020413a: 00 00        	unimp	
;         trapinithart(); 	// 设置中断向量
8020413c: 97 00 00 00  	auipc	ra, 0
80204140: e7 80 20 92  	jalr	-1758(ra)
80204144: 37 05 00 0c  	lui	a0, 49152
80204148: 85 49        	li	s3, 1
8020414a: 23 24 35 03  	sw	s3, 40(a0)
8020414e: 23 22 35 01  	sw	s3, 4(a0)
80204152: 13 09 04 fc  	addi	s2, s0, -64
;     Stdout.write_fmt(args).unwrap();
80204156: 23 38 24 f9  	sd	s2, -112(s0)

000000008020415a <.Lpcrel_hi50>:
8020415a: 17 45 00 00  	auipc	a0, 4
8020415e: 13 05 e5 07  	addi	a0, a0, 126
80204162: 23 3c a4 ec  	sd	a0, -296(s0)
80204166: 23 30 34 ef  	sd	s3, -288(s0)

000000008020416a <.Lpcrel_hi51>:
8020416a: 17 45 00 00  	auipc	a0, 4
8020416e: 93 04 65 00  	addi	s1, a0, 6
80204172: 23 34 94 ee  	sd	s1, -280(s0)
80204176: 23 38 04 ee  	sd	zero, -272(s0)
8020417a: 23 3c 04 ee  	sd	zero, -264(s0)

000000008020417e <.Lpcrel_hi52>:
8020417e: 17 45 00 00  	auipc	a0, 4
80204182: 93 05 a5 10  	addi	a1, a0, 266
80204186: 13 05 04 f9  	addi	a0, s0, -112
8020418a: 13 06 84 ed  	addi	a2, s0, -296
8020418e: 97 20 00 00  	auipc	ra, 2
80204192: e7 80 60 19  	jalr	406(ra)
80204196: 15 c5        	beqz	a0, 0x802041c2 <.Lpcrel_hi55+0x1a>

0000000080204198 <.Lpcrel_hi53>:
80204198: 17 45 00 00  	auipc	a0, 4
8020419c: 13 05 05 12  	addi	a0, a0, 288

00000000802041a0 <.Lpcrel_hi54>:
802041a0: 97 45 00 00  	auipc	a1, 4
802041a4: 93 86 85 14  	addi	a3, a1, 328

00000000802041a8 <.Lpcrel_hi55>:
802041a8: 97 45 00 00  	auipc	a1, 4
802041ac: 13 87 05 17  	addi	a4, a1, 368
802041b0: 93 05 b0 02  	li	a1, 43
802041b4: 13 06 04 fc  	addi	a2, s0, -64
802041b8: 97 20 00 00  	auipc	ra, 2
802041bc: e7 80 a0 be  	jalr	-1046(ra)
802041c0: 00 00        	unimp	
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802041c2: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
802041c4: 93 15 85 00  	slli	a1, a0, 8
802041c8: 37 26 00 0c  	lui	a2, 49154
802041cc: b2 95        	add	a1, a1, a2
802041ce: 13 06 20 40  	li	a2, 1026
802041d2: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
802041d6: 36 05        	slli	a0, a0, 13
802041d8: b7 15 20 0c  	lui	a1, 49665
802041dc: 2e 95        	add	a0, a0, a1
802041de: 23 20 05 00  	sw	zero, 0(a0)
;     Stdout.write_fmt(args).unwrap();
802041e2: 23 38 24 f9  	sd	s2, -112(s0)

00000000802041e6 <.Lpcrel_hi56>:
802041e6: 17 45 00 00  	auipc	a0, 4
802041ea: 13 05 a5 01  	addi	a0, a0, 26
802041ee: 23 3c a4 ec  	sd	a0, -296(s0)
802041f2: 23 30 34 ef  	sd	s3, -288(s0)
802041f6: 23 34 94 ee  	sd	s1, -280(s0)
802041fa: 23 38 04 ee  	sd	zero, -272(s0)
802041fe: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080204202 <.Lpcrel_hi57>:
80204202: 17 45 00 00  	auipc	a0, 4
80204206: 93 05 65 08  	addi	a1, a0, 134
8020420a: 13 05 04 f9  	addi	a0, s0, -112
8020420e: 13 06 84 ed  	addi	a2, s0, -296
80204212: 97 20 00 00  	auipc	ra, 2
80204216: e7 80 20 11  	jalr	274(ra)
8020421a: 15 c5        	beqz	a0, 0x80204246 <.Lpcrel_hi60+0x1a>

000000008020421c <.Lpcrel_hi58>:
8020421c: 17 45 00 00  	auipc	a0, 4
80204220: 13 05 c5 09  	addi	a0, a0, 156

0000000080204224 <.Lpcrel_hi59>:
80204224: 97 45 00 00  	auipc	a1, 4
80204228: 93 86 45 0c  	addi	a3, a1, 196

000000008020422c <.Lpcrel_hi60>:
8020422c: 97 45 00 00  	auipc	a1, 4
80204230: 13 87 c5 0e  	addi	a4, a1, 236
80204234: 93 05 b0 02  	li	a1, 43
80204238: 13 06 04 fc  	addi	a2, s0, -64
8020423c: 97 20 00 00  	auipc	ra, 2
80204240: e7 80 60 b6  	jalr	-1178(ra)
80204244: 00 00        	unimp	
;         userinit(); 		// 初始化第 0 个进程
80204246: 97 f0 ff ff  	auipc	ra, 1048575
8020424a: e7 80 20 ec  	jalr	-318(ra)

000000008020424e <.Lpcrel_hi61>:
8020424e: 17 f5 28 00  	auipc	a0, 655
80204252: 13 05 a5 f9  	addi	a0, a0, -102
80204256: 71 b9        	j	0x80203ef2 <.Lpcrel_hi77+0x8>

0000000080204258 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E>:
;     pub fn uvmunmap(&mut self, va: Addr, npages: usize, do_free: bool) {
80204258: 19 71        	addi	sp, sp, -128
8020425a: 86 fc        	sd	ra, 120(sp)
8020425c: a2 f8        	sd	s0, 112(sp)
8020425e: a6 f4        	sd	s1, 104(sp)
80204260: ca f0        	sd	s2, 96(sp)
80204262: ce ec        	sd	s3, 88(sp)
80204264: d2 e8        	sd	s4, 80(sp)
80204266: d6 e4        	sd	s5, 72(sp)
80204268: da e0        	sd	s6, 64(sp)
8020426a: 5e fc        	sd	s7, 56(sp)
8020426c: 62 f8        	sd	s8, 48(sp)
8020426e: 00 01        	addi	s0, sp, 128
80204270: 2e 8c        	mv	s8, a1
;         if va % PGSIZE != 0 {
80204272: d2 15        	slli	a1, a1, 52
80204274: 63 96 05 22  	bnez	a1, 0x802044a0 <.Lpcrel_hi3>
80204278: 32 89        	mv	s2, a2
8020427a: 6d c2        	beqz	a2, 0x8020435c <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
8020427c: 83 39 05 00  	ld	s3, 0(a0)
;             if do_free {
80204280: a5 ce        	beqz	a3, 0x802042f8 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xa0>
;         if va >= MAXVA {
80204282: 13 5a cc 00  	srli	s4, s8, 12
80204286: 85 6a        	lui	s5, 1
80204288: 1b 8b 8a ff  	addiw	s6, s5, -8
8020428c: 85 4b        	li	s7, 1
8020428e: 13 55 6c 02  	srli	a0, s8, 38
80204292: 63 1b 05 18  	bnez	a0, 0x80204428 <.Lpcrel_hi0>
80204296: 13 55 bc 01  	srli	a0, s8, 27
8020429a: 61 99        	andi	a0, a0, -8
8020429c: 4e 95        	add	a0, a0, s3
;             if (*pte & PTE_V) != 0 {
8020429e: 08 61        	ld	a0, 0(a0)
802042a0: 93 75 15 00  	andi	a1, a0, 1
802042a4: e1 c9        	beqz	a1, 0x80204374 <.Lpcrel_hi9>
;     (pte >> 10) << 12
802042a6: 29 81        	srli	a0, a0, 10
802042a8: 32 05        	slli	a0, a0, 12
802042aa: 93 55 2c 01  	srli	a1, s8, 18
802042ae: b3 f5 65 01  	and	a1, a1, s6
802042b2: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
802042b4: 08 61        	ld	a0, 0(a0)
802042b6: 93 75 15 00  	andi	a1, a0, 1
802042ba: cd cd        	beqz	a1, 0x80204374 <.Lpcrel_hi9>
;     (pte >> 10) << 12
802042bc: 29 81        	srli	a0, a0, 10
802042be: 32 05        	slli	a0, a0, 12
802042c0: 55 c9        	beqz	a0, 0x80204374 <.Lpcrel_hi9>
802042c2: 93 75 fa 1f  	andi	a1, s4, 511
802042c6: 8e 05        	slli	a1, a1, 3
802042c8: b3 64 b5 00  	or	s1, a0, a1
;             if *pte & PTE_V == 0 {
802042cc: 88 60        	ld	a0, 0(s1)
802042ce: 93 75 15 00  	andi	a1, a0, 1
802042d2: f9 cd        	beqz	a1, 0x802043b0 <.Lpcrel_hi12>
;     pte & 0x3ff
802042d4: 93 75 f5 3f  	andi	a1, a0, 1023
802042d8: 63 8a 75 11  	beq	a1, s7, 0x802043ec <.Lpcrel_hi15>
;     (pte >> 10) << 12
802042dc: 29 81        	srli	a0, a0, 10
802042de: 32 05        	slli	a0, a0, 12
;                 kfree(pa);
802042e0: 97 10 00 00  	auipc	ra, 1
802042e4: e7 80 e0 87  	jalr	-1922(ra)
;             *pte = 0;
802042e8: 23 b0 04 00  	sd	zero, 0(s1)
;             a += PGSIZE;
802042ec: 56 9c        	add	s8, s8, s5
802042ee: 7d 19        	addi	s2, s2, -1
802042f0: 05 0a        	addi	s4, s4, 1
802042f2: e3 1e 09 f8  	bnez	s2, 0x8020428e <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x36>
802042f6: 9d a0        	j	0x8020435c <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0x104>
;         if va >= MAXVA {
802042f8: 13 55 cc 00  	srli	a0, s8, 12
802042fc: 85 65        	lui	a1, 1
802042fe: 1b 86 85 ff  	addiw	a2, a1, -8
80204302: 85 46        	li	a3, 1
;         if va >= MAXVA {
80204304: 13 57 6c 02  	srli	a4, s8, 38
80204308: 63 1e 07 14  	bnez	a4, 0x80204464 <.Lpcrel_hi6>
8020430c: 13 57 bc 01  	srli	a4, s8, 27
80204310: 61 9b        	andi	a4, a4, -8
80204312: 4e 97        	add	a4, a4, s3
;             if (*pte & PTE_V) != 0 {
80204314: 18 63        	ld	a4, 0(a4)
80204316: 93 77 17 00  	andi	a5, a4, 1
8020431a: a9 cf        	beqz	a5, 0x80204374 <.Lpcrel_hi9>
;     (pte >> 10) << 12
8020431c: 29 83        	srli	a4, a4, 10
8020431e: 32 07        	slli	a4, a4, 12
80204320: 93 57 2c 01  	srli	a5, s8, 18
80204324: f1 8f        	and	a5, a5, a2
80204326: 5d 8f        	or	a4, a4, a5
;             if (*pte & PTE_V) != 0 {
80204328: 18 63        	ld	a4, 0(a4)
8020432a: 93 77 17 00  	andi	a5, a4, 1
8020432e: b9 c3        	beqz	a5, 0x80204374 <.Lpcrel_hi9>
;     (pte >> 10) << 12
80204330: 29 83        	srli	a4, a4, 10
80204332: 32 07        	slli	a4, a4, 12
80204334: 21 c3        	beqz	a4, 0x80204374 <.Lpcrel_hi9>
80204336: 93 77 f5 1f  	andi	a5, a0, 511
8020433a: 8e 07        	slli	a5, a5, 3
8020433c: 5d 8f        	or	a4, a4, a5
;             if *pte & PTE_V == 0 {
8020433e: 04 63        	ld	s1, 0(a4)
80204340: 93 f7 14 00  	andi	a5, s1, 1
80204344: b5 c7        	beqz	a5, 0x802043b0 <.Lpcrel_hi12>
;     pte & 0x3ff
80204346: 93 f7 f4 3f  	andi	a5, s1, 1023
;             if pte_flags(*pte) == PTE_V {
8020434a: 63 81 d7 0a  	beq	a5, a3, 0x802043ec <.Lpcrel_hi15>
;             *pte = 0;
8020434e: 23 30 07 00  	sd	zero, 0(a4)
;             a += PGSIZE;
80204352: 2e 9c        	add	s8, s8, a1
80204354: 7d 19        	addi	s2, s2, -1
80204356: 05 05        	addi	a0, a0, 1
80204358: e3 16 09 fa  	bnez	s2, 0x80204304 <_ZN6kernel6memory3uvm3Uvm8uvmunmap17h0e4d694ca2e3d7a0E+0xac>
;     }
8020435c: e6 70        	ld	ra, 120(sp)
8020435e: 46 74        	ld	s0, 112(sp)
80204360: a6 74        	ld	s1, 104(sp)
80204362: 06 79        	ld	s2, 96(sp)
80204364: e6 69        	ld	s3, 88(sp)
80204366: 46 6a        	ld	s4, 80(sp)
80204368: a6 6a        	ld	s5, 72(sp)
8020436a: 06 6b        	ld	s6, 64(sp)
8020436c: e2 7b        	ld	s7, 56(sp)
8020436e: 42 7c        	ld	s8, 48(sp)
80204370: 09 61        	addi	sp, sp, 128
80204372: 82 80        	ret

0000000080204374 <.Lpcrel_hi9>:
80204374: 17 45 00 00  	auipc	a0, 4
80204378: 13 05 c5 48  	addi	a0, a0, 1164
8020437c: 23 30 a4 f8  	sd	a0, -128(s0)
80204380: 05 45        	li	a0, 1
80204382: 23 34 a4 f8  	sd	a0, -120(s0)
80204386: 23 30 04 fa  	sd	zero, -96(s0)

000000008020438a <.Lpcrel_hi10>:
8020438a: 17 45 00 00  	auipc	a0, 4
8020438e: 13 05 65 3b  	addi	a0, a0, 950
80204392: 23 38 a4 f8  	sd	a0, -112(s0)
80204396: 23 3c 04 f8  	sd	zero, -104(s0)

000000008020439a <.Lpcrel_hi11>:
;                 panic!("uvmunmap: walk");
8020439a: 17 45 00 00  	auipc	a0, 4
8020439e: 93 05 65 47  	addi	a1, a0, 1142
802043a2: 13 05 04 f8  	addi	a0, s0, -128
802043a6: 97 20 00 00  	auipc	ra, 2
802043aa: e7 80 20 96  	jalr	-1694(ra)
802043ae: 00 00        	unimp	

00000000802043b0 <.Lpcrel_hi12>:
802043b0: 17 45 00 00  	auipc	a0, 4
802043b4: 13 05 85 41  	addi	a0, a0, 1048
802043b8: 23 30 a4 f8  	sd	a0, -128(s0)
802043bc: 05 45        	li	a0, 1
802043be: 23 34 a4 f8  	sd	a0, -120(s0)
802043c2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802043c6 <.Lpcrel_hi13>:
802043c6: 17 45 00 00  	auipc	a0, 4
802043ca: 13 05 a5 37  	addi	a0, a0, 890
802043ce: 23 38 a4 f8  	sd	a0, -112(s0)
802043d2: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802043d6 <.Lpcrel_hi14>:
;                 panic!("uvmunmap: not maapped");
802043d6: 17 45 00 00  	auipc	a0, 4
802043da: 93 05 25 40  	addi	a1, a0, 1026
802043de: 13 05 04 f8  	addi	a0, s0, -128
802043e2: 97 20 00 00  	auipc	ra, 2
802043e6: e7 80 60 92  	jalr	-1754(ra)
802043ea: 00 00        	unimp	

00000000802043ec <.Lpcrel_hi15>:
802043ec: 17 45 00 00  	auipc	a0, 4
802043f0: 13 05 c5 39  	addi	a0, a0, 924
802043f4: 23 30 a4 f8  	sd	a0, -128(s0)
802043f8: 05 45        	li	a0, 1
802043fa: 23 34 a4 f8  	sd	a0, -120(s0)
802043fe: 23 30 04 fa  	sd	zero, -96(s0)

0000000080204402 <.Lpcrel_hi16>:
80204402: 17 45 00 00  	auipc	a0, 4
80204406: 13 05 e5 33  	addi	a0, a0, 830
8020440a: 23 38 a4 f8  	sd	a0, -112(s0)
8020440e: 23 3c 04 f8  	sd	zero, -104(s0)

0000000080204412 <.Lpcrel_hi17>:
;                 panic!("uvmunmap: not a leaf");
80204412: 17 45 00 00  	auipc	a0, 4
80204416: 93 05 65 38  	addi	a1, a0, 902
8020441a: 13 05 04 f8  	addi	a0, s0, -128
8020441e: 97 20 00 00  	auipc	ra, 2
80204422: e7 80 a0 8e  	jalr	-1814(ra)
80204426: 00 00        	unimp	

0000000080204428 <.Lpcrel_hi0>:
80204428: 17 45 00 00  	auipc	a0, 4
8020442c: 13 05 85 43  	addi	a0, a0, 1080
80204430: 23 30 a4 f8  	sd	a0, -128(s0)
80204434: 05 45        	li	a0, 1
80204436: 23 34 a4 f8  	sd	a0, -120(s0)
8020443a: 23 30 04 fa  	sd	zero, -96(s0)

000000008020443e <.Lpcrel_hi1>:
8020443e: 17 45 00 00  	auipc	a0, 4
80204442: 13 05 25 43  	addi	a0, a0, 1074
80204446: 23 38 a4 f8  	sd	a0, -112(s0)
8020444a: 23 3c 04 f8  	sd	zero, -104(s0)

000000008020444e <.Lpcrel_hi2>:
;             panic!("walk");
8020444e: 17 45 00 00  	auipc	a0, 4
80204452: 93 05 a5 43  	addi	a1, a0, 1082
80204456: 13 05 04 f8  	addi	a0, s0, -128
8020445a: 97 20 00 00  	auipc	ra, 2
8020445e: e7 80 e0 8a  	jalr	-1874(ra)
80204462: 00 00        	unimp	

0000000080204464 <.Lpcrel_hi6>:
80204464: 17 45 00 00  	auipc	a0, 4
80204468: 13 05 c5 3f  	addi	a0, a0, 1020
8020446c: 23 30 a4 f8  	sd	a0, -128(s0)
80204470: 05 45        	li	a0, 1
80204472: 23 34 a4 f8  	sd	a0, -120(s0)
80204476: 23 30 04 fa  	sd	zero, -96(s0)

000000008020447a <.Lpcrel_hi7>:
8020447a: 17 45 00 00  	auipc	a0, 4
8020447e: 13 05 65 3f  	addi	a0, a0, 1014
80204482: 23 38 a4 f8  	sd	a0, -112(s0)
80204486: 23 3c 04 f8  	sd	zero, -104(s0)

000000008020448a <.Lpcrel_hi8>:
;             panic!("walk");
8020448a: 17 45 00 00  	auipc	a0, 4
8020448e: 93 05 e5 3f  	addi	a1, a0, 1022
80204492: 13 05 04 f8  	addi	a0, s0, -128
80204496: 97 20 00 00  	auipc	ra, 2
8020449a: e7 80 20 87  	jalr	-1934(ra)
8020449e: 00 00        	unimp	

00000000802044a0 <.Lpcrel_hi3>:
802044a0: 17 45 00 00  	auipc	a0, 4
802044a4: 13 05 05 29  	addi	a0, a0, 656
802044a8: 23 30 a4 f8  	sd	a0, -128(s0)
802044ac: 05 45        	li	a0, 1
802044ae: 23 34 a4 f8  	sd	a0, -120(s0)
802044b2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802044b6 <.Lpcrel_hi4>:
802044b6: 17 45 00 00  	auipc	a0, 4
802044ba: 13 05 a5 28  	addi	a0, a0, 650
802044be: 23 38 a4 f8  	sd	a0, -112(s0)
802044c2: 23 3c 04 f8  	sd	zero, -104(s0)

00000000802044c6 <.Lpcrel_hi5>:
;             panic!("uvmunmap: not aligned");
802044c6: 17 45 00 00  	auipc	a0, 4
802044ca: 93 05 25 29  	addi	a1, a0, 658
802044ce: 13 05 04 f8  	addi	a0, s0, -128
802044d2: 97 20 00 00  	auipc	ra, 2
802044d6: e7 80 60 83  	jalr	-1994(ra)
802044da: 00 00        	unimp	

00000000802044dc <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.6977012744463202467>:
;     pub fn freewalk(&mut self) {
802044dc: 1d 71        	addi	sp, sp, -96
802044de: 86 ec        	sd	ra, 88(sp)
802044e0: a2 e8        	sd	s0, 80(sp)
802044e2: a6 e4        	sd	s1, 72(sp)
802044e4: ca e0        	sd	s2, 64(sp)
802044e6: 4e fc        	sd	s3, 56(sp)
802044e8: 52 f8        	sd	s4, 48(sp)
802044ea: 80 10        	addi	s0, sp, 96
802044ec: 03 39 05 00  	ld	s2, 0(a0)
802044f0: 13 0a 00 20  	li	s4, 512
802044f4: 85 49        	li	s3, 1
802044f6: ca 84        	mv	s1, s2
802044f8: 0d a0        	j	0x8020451a <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.6977012744463202467+0x3e>
;     (pte >> 10) << 12
802044fa: 29 81        	srli	a0, a0, 10
802044fc: 32 05        	slli	a0, a0, 12
;                 let mut child = Self::from_pagetable(PagetableT::addr2pagetablet(pte2pa(*pte)));
802044fe: 23 30 a4 fa  	sd	a0, -96(s0)
;                 child.freewalk();
80204502: 13 05 04 fa  	addi	a0, s0, -96
80204506: 97 00 00 00  	auipc	ra, 0
8020450a: e7 80 60 fd  	jalr	-42(ra)
;                 *pte = 0;
8020450e: 23 b0 04 00  	sd	zero, 0(s1)
80204512: 7d 1a        	addi	s4, s4, -1
80204514: a1 04        	addi	s1, s1, 8
80204516: 63 07 0a 04  	beqz	s4, 0x80204564 <.Lpcrel_hi26+0x16>
;             if (*pte & PTE_V) != 0 && (*pte & (PTE_R | PTE_W | PTE_X) == 0) {
8020451a: 88 60        	ld	a0, 0(s1)
8020451c: 93 75 f5 00  	andi	a1, a0, 15
80204520: e3 8d 35 fd  	beq	a1, s3, 0x802044fa <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.6977012744463202467+0x1e>
80204524: 05 89        	andi	a0, a0, 1
;             } else if (*pte & PTE_V) != 0 {
80204526: 75 d5        	beqz	a0, 0x80204512 <_ZN6kernel6memory3uvm3Uvm8freewalk17hed6560fb8eb6ed14E.llvm.6977012744463202467+0x36>

0000000080204528 <.Lpcrel_hi24>:
80204528: 17 45 00 00  	auipc	a0, 4
8020452c: 13 05 05 31  	addi	a0, a0, 784
80204530: 23 30 a4 fa  	sd	a0, -96(s0)
80204534: 05 45        	li	a0, 1
80204536: 23 34 a4 fa  	sd	a0, -88(s0)
8020453a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020453e <.Lpcrel_hi25>:
8020453e: 17 45 00 00  	auipc	a0, 4
80204542: 13 05 25 20  	addi	a0, a0, 514
80204546: 23 38 a4 fa  	sd	a0, -80(s0)
8020454a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020454e <.Lpcrel_hi26>:
;                 panic!("freewalk: leaf");
8020454e: 17 45 00 00  	auipc	a0, 4
80204552: 93 05 a5 2f  	addi	a1, a0, 762
80204556: 13 05 04 fa  	addi	a0, s0, -96
8020455a: 97 10 00 00  	auipc	ra, 1
8020455e: e7 80 e0 7a  	jalr	1966(ra)
80204562: 00 00        	unimp	
;         kfree(self.pagetable.pagetablet2addr());
80204564: 4a 85        	mv	a0, s2
80204566: e6 60        	ld	ra, 88(sp)
80204568: 46 64        	ld	s0, 80(sp)
8020456a: a6 64        	ld	s1, 72(sp)
8020456c: 06 69        	ld	s2, 64(sp)
8020456e: e2 79        	ld	s3, 56(sp)
80204570: 42 7a        	ld	s4, 48(sp)
80204572: 25 61        	addi	sp, sp, 96
80204574: 17 03 00 00  	auipc	t1, 0
80204578: 67 00 a3 5e  	jr	1514(t1)

000000008020457c <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE>:
;     pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
8020457c: 1d 71        	addi	sp, sp, -96
8020457e: 86 ec        	sd	ra, 88(sp)
80204580: a2 e8        	sd	s0, 80(sp)
80204582: a6 e4        	sd	s1, 72(sp)
80204584: ca e0        	sd	s2, 64(sp)
80204586: 4e fc        	sd	s3, 56(sp)
80204588: 80 10        	addi	s0, sp, 96
8020458a: ae 89        	mv	s3, a1
;         if va >= MAXVA {
8020458c: 99 91        	srli	a1, a1, 38
8020458e: c5 ed        	bnez	a1, 0x80204646 <.Lpcrel_hi0>
;         self.data as Addr
80204590: 04 61        	ld	s1, 0(a0)
80204592: 13 d5 b9 01  	srli	a0, s3, 27
80204596: 61 99        	andi	a0, a0, -8
80204598: aa 94        	add	s1, s1, a0
;             if (*pte & PTE_V) != 0 {
8020459a: 88 60        	ld	a0, 0(s1)
8020459c: 93 75 15 00  	andi	a1, a0, 1
;                 if !alloc {
802045a0: 05 c6        	beqz	a2, 0x802045c8 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x4c>
;             if (*pte & PTE_V) != 0 {
802045a2: b1 e1        	bnez	a1, 0x802045e6 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x6a>
;                 let pa = kalloc();
802045a4: 97 00 00 00  	auipc	ra, 0
802045a8: e7 80 00 39  	jalr	912(ra)
;                 if pa == 0 {
802045ac: 51 c5        	beqz	a0, 0x80204638 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
802045ae: 2a 89        	mv	s2, a0
802045b0: 05 66        	lui	a2, 1
802045b2: 81 45        	li	a1, 0
802045b4: 97 30 00 00  	auipc	ra, 3
802045b8: e7 80 00 ad  	jalr	-1328(ra)
;     (pa >> 12) << 10
802045bc: 13 55 c9 00  	srli	a0, s2, 12
802045c0: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
802045c2: 05 05        	addi	a0, a0, 1
802045c4: 88 e0        	sd	a0, 0(s1)
802045c6: 1d a0        	j	0x802045ec <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x70>
;             if (*pte & PTE_V) != 0 {
802045c8: 89 cd        	beqz	a1, 0x802045e2 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0x66>
;     (pte >> 10) << 12
802045ca: 29 81        	srli	a0, a0, 10
802045cc: 32 05        	slli	a0, a0, 12
802045ce: 93 d5 29 01  	srli	a1, s3, 18
802045d2: 05 66        	lui	a2, 1
802045d4: 61 36        	addiw	a2, a2, -8
802045d6: f1 8d        	and	a1, a1, a2
802045d8: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
802045da: 08 61        	ld	a0, 0(a0)
802045dc: 93 75 15 00  	andi	a1, a0, 1
802045e0: b9 e1        	bnez	a1, 0x80204626 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xaa>
802045e2: 01 45        	li	a0, 0
802045e4: 91 a8        	j	0x80204638 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
;     (pte >> 10) << 12
802045e6: 29 81        	srli	a0, a0, 10
802045e8: 13 19 c5 00  	slli	s2, a0, 12
802045ec: 13 d5 29 01  	srli	a0, s3, 18
802045f0: 85 65        	lui	a1, 1
802045f2: e1 35        	addiw	a1, a1, -8
802045f4: 6d 8d        	and	a0, a0, a1
802045f6: b3 04 a9 00  	add	s1, s2, a0
;             if (*pte & PTE_V) != 0 {
802045fa: 88 60        	ld	a0, 0(s1)
802045fc: 93 75 15 00  	andi	a1, a0, 1
80204600: 9d e1        	bnez	a1, 0x80204626 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xaa>
;                 let pa = kalloc();
80204602: 97 00 00 00  	auipc	ra, 0
80204606: e7 80 20 33  	jalr	818(ra)
;                 if pa == 0 {
8020460a: 1d c5        	beqz	a0, 0x80204638 <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xbc>
8020460c: 2a 89        	mv	s2, a0
8020460e: 05 66        	lui	a2, 1
80204610: 81 45        	li	a1, 0
80204612: 97 30 00 00  	auipc	ra, 3
80204616: e7 80 20 a7  	jalr	-1422(ra)
;     (pa >> 12) << 10
8020461a: 13 55 c9 00  	srli	a0, s2, 12
8020461e: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80204620: 05 05        	addi	a0, a0, 1
80204622: 88 e0        	sd	a0, 0(s1)
80204624: 21 a0        	j	0x8020462c <_ZN6kernel6memory9pagetable10PagetableT4walk17ha84deab42253da1bE+0xb0>
;                 pagetable = PagetableT::addr2pagetablet(pte2pa(*pte));
80204626: 29 81        	srli	a0, a0, 10
80204628: 13 19 c5 00  	slli	s2, a0, 12
8020462c: 13 d5 99 00  	srli	a0, s3, 9
80204630: 85 65        	lui	a1, 1
80204632: e1 35        	addiw	a1, a1, -8
80204634: 6d 8d        	and	a0, a0, a1
80204636: 4a 95        	add	a0, a0, s2
;     }
80204638: e6 60        	ld	ra, 88(sp)
8020463a: 46 64        	ld	s0, 80(sp)
8020463c: a6 64        	ld	s1, 72(sp)
8020463e: 06 69        	ld	s2, 64(sp)
80204640: e2 79        	ld	s3, 56(sp)
80204642: 25 61        	addi	sp, sp, 96
80204644: 82 80        	ret

0000000080204646 <.Lpcrel_hi0>:
80204646: 17 45 00 00  	auipc	a0, 4
8020464a: 13 05 a5 21  	addi	a0, a0, 538
8020464e: 23 34 a4 fa  	sd	a0, -88(s0)
80204652: 05 45        	li	a0, 1
80204654: 23 38 a4 fa  	sd	a0, -80(s0)
80204658: 23 34 04 fc  	sd	zero, -56(s0)

000000008020465c <.Lpcrel_hi1>:
8020465c: 17 45 00 00  	auipc	a0, 4
80204660: 13 05 45 21  	addi	a0, a0, 532
80204664: 23 3c a4 fa  	sd	a0, -72(s0)
80204668: 23 30 04 fc  	sd	zero, -64(s0)

000000008020466c <.Lpcrel_hi2>:
;             panic!("walk");
8020466c: 17 45 00 00  	auipc	a0, 4
80204670: 93 05 c5 21  	addi	a1, a0, 540
80204674: 13 05 84 fa  	addi	a0, s0, -88
80204678: 97 10 00 00  	auipc	ra, 1
8020467c: e7 80 00 69  	jalr	1680(ra)
80204680: 00 00        	unimp	

0000000080204682 <_ZN6kernel6memory6kalloc5kinit17h29f2a10b557ae6cbE>:
; pub fn kinit() {
80204682: 35 71        	addi	sp, sp, -160
80204684: 06 ed        	sd	ra, 152(sp)
80204686: 22 e9        	sd	s0, 144(sp)
80204688: 26 e5        	sd	s1, 136(sp)
8020468a: 4a e1        	sd	s2, 128(sp)
8020468c: ce fc        	sd	s3, 120(sp)
8020468e: d2 f8        	sd	s4, 112(sp)
80204690: d6 f4        	sd	s5, 104(sp)
80204692: da f0        	sd	s6, 96(sp)
80204694: de ec        	sd	s7, 88(sp)
80204696: e2 e8        	sd	s8, 80(sp)
80204698: e6 e4        	sd	s9, 72(sp)
8020469a: ea e0        	sd	s10, 64(sp)
8020469c: 00 11        	addi	s0, sp, 160
8020469e: 0f 00 30 03  	fence	rw, rw

00000000802046a2 <.Lpcrel_hi1>:
802046a2: 17 f5 08 00  	auipc	a0, 143
802046a6: 93 0a e5 9c  	addi	s5, a0, -1586
802046aa: 03 b5 0a 03  	ld	a0, 48(s5)
802046ae: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802046b2: 39 e9        	bnez	a0, 0x80204708 <.Lpcrel_hi2+0x3a>
802046b4: 93 85 0a 03  	addi	a1, s5, 48
802046b8: 05 46        	li	a2, 1
802046ba: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802046be: 29 e5        	bnez	a0, 0x80204708 <.Lpcrel_hi2+0x3a>
802046c0: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802046c4: fd fa        	bnez	a3, 0x802046ba <.Lpcrel_hi1+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802046c6: 23 34 b4 f6  	sd	a1, -152(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802046ca: 23 b0 ca 00  	sd	a2, 0(s5)

00000000802046ce <.Lpcrel_hi2>:
802046ce: 17 45 00 00  	auipc	a0, 4
802046d2: 13 05 15 a1  	addi	a0, a0, -1519
802046d6: 23 b4 aa 00  	sd	a0, 8(s5)
802046da: 11 45        	li	a0, 4
802046dc: 23 b8 aa 00  	sd	a0, 16(s5)
802046e0: 23 bc 0a 00  	sd	zero, 24(s5)
802046e4: 23 80 0a 02  	sb	zero, 32(s5)
802046e8: 23 b4 0a 02  	sd	zero, 40(s5)
;                 finish.panicked = false;
802046ec: 23 08 04 f6  	sb	zero, -144(s0)
802046f0: 0f 00 10 03  	fence	rw, w
802046f4: 09 45        	li	a0, 2
802046f6: 23 b8 aa 02  	sd	a0, 48(s5)
802046fa: 13 05 84 f6  	addi	a0, s0, -152
802046fe: 97 10 00 00  	auipc	ra, 1
80204702: e7 80 a0 03  	jalr	58(ra)
80204706: 0d a0        	j	0x80204728 <.Lpcrel_hi7>
80204708: 85 45        	li	a1, 1
;             match status {
8020470a: 63 1c b5 00  	bne	a0, a1, 0x80204722 <.Lpcrel_hi2+0x54>
8020470e: 0f 00 00 01  	fence	w, 0
80204712: 0f 00 30 03  	fence	rw, rw
80204716: 03 b5 0a 03  	ld	a0, 48(s5)
8020471a: 0f 00 30 02  	fence	r, rw
;             match status {
8020471e: e3 08 b5 fe  	beq	a0, a1, 0x8020470e <.Lpcrel_hi2+0x40>
80204722: 89 45        	li	a1, 2
;             match status {
80204724: 63 19 b5 12  	bne	a0, a1, 0x80204856 <.Lpcrel_hi12+0x18>

0000000080204728 <.Lpcrel_hi7>:
;         while pa < pa_end - PGSIZE {
80204728: 17 05 29 00  	auipc	a0, 656
8020472c: 13 05 85 8d  	addi	a0, a0, -1832
80204730: 85 65        	lui	a1, 1
80204732: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80204734: aa 95        	add	a1, a1, a0
80204736: 7d 76        	lui	a2, 1048575
80204738: f1 8d        	and	a1, a1, a2
8020473a: 37 86 08 00  	lui	a2, 136
8020473e: 7d 36        	addiw	a2, a2, -1
80204740: 32 06        	slli	a2, a2, 12
80204742: 7d 16        	addi	a2, a2, -1
80204744: 63 6b b6 08  	bltu	a2, a1, 0x802047da <.Lpcrel_hi8+0x7e>
80204748: 63 e8 a5 1a  	bltu	a1, a0, 0x802048f8 <.Lpcrel_hi9>
8020474c: 05 6b        	lui	s6, 1
8020474e: 9b 05 fb ff  	addiw	a1, s6, -1
80204752: 2e 95        	add	a0, a0, a1
80204754: fd 75        	lui	a1, 1048575
80204756: 6d 8d        	and	a0, a0, a1
80204758: 13 89 8a 00  	addi	s2, s5, 8

000000008020475c <.Lpcrel_hi8>:
8020475c: 97 c5 08 00  	auipc	a1, 140
80204760: 93 89 45 70  	addi	s3, a1, 1796
80204764: 93 0b 00 04  	li	s7, 64
80204768: 13 0c 80 08  	li	s8, 136
8020476c: b7 fc ff 43  	lui	s9, 278527
80204770: 86 0c        	slli	s9, s9, 1
80204772: 2a 8a        	mv	s4, a0
80204774: 85 45        	li	a1, 1
80204776: 05 66        	lui	a2, 1
80204778: 97 30 00 00  	auipc	ra, 3
8020477c: e7 80 c0 90  	jalr	-1780(ra)
;         self.lock.acquire();
80204780: 4a 85        	mv	a0, s2
80204782: 97 f0 ff ff  	auipc	ra, 1048575
80204786: e7 80 c0 e2  	jalr	-468(ra)
;         unsafe { (*pa).next = self.freelist }
8020478a: 03 b5 8a 02  	ld	a0, 40(s5)
8020478e: 23 30 aa 00  	sd	a0, 0(s4)
;         self.freelist = pa;
80204792: 23 b4 4a 03  	sd	s4, 40(s5)
80204796: 03 85 0a 02  	lb	a0, 32(s5)
8020479a: 71 cd        	beqz	a0, 0x80204876 <.Lpcrel_hi13>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020479c: 03 bd 8a 01  	ld	s10, 24(s5)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802047a0: 92 84        	mv	s1, tp
;         self.0.call_once(builder)
802047a2: 4e 85        	mv	a0, s3
802047a4: 97 e0 ff ff  	auipc	ra, 1048574
802047a8: e7 80 c0 85  	jalr	-1956(ra)
802047ac: 63 f9 74 09  	bgeu	s1, s7, 0x8020483e <.Lpcrel_hi12>
; 	&mut CPUS.get_mut()[id]
802047b0: b3 85 84 03  	mul	a1, s1, s8
802047b4: 2e 95        	add	a0, a0, a1
802047b6: 63 10 ad 0c  	bne	s10, a0, 0x80204876 <.Lpcrel_hi13>
;         self.cpu = null_mut();
802047ba: 23 bc 0a 00  	sd	zero, 24(s5)
802047be: 0f 00 30 03  	fence	rw, rw
802047c2: 0f 00 10 03  	fence	rw, w
802047c6: 23 80 0a 02  	sb	zero, 32(s5)
;         pop_off();
802047ca: 97 f0 ff ff  	auipc	ra, 1048575
802047ce: e7 80 00 17  	jalr	368(ra)
;             pa += PGSIZE;
802047d2: 33 05 6a 01  	add	a0, s4, s6
;         while pa < pa_end - PGSIZE {
802047d6: e3 6e 9a f9  	bltu	s4, s9, 0x80204772 <.Lpcrel_hi8+0x16>
802047da: 13 05 84 f9  	addi	a0, s0, -104
;     Stdout.write_fmt(args).unwrap();
802047de: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802047e2 <.Lpcrel_hi16>:
802047e2: 17 45 00 00  	auipc	a0, 4
802047e6: 13 05 65 18  	addi	a0, a0, 390
802047ea: 23 34 a4 f6  	sd	a0, -152(s0)
802047ee: 05 45        	li	a0, 1
802047f0: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802047f4 <.Lpcrel_hi17>:
802047f4: 17 45 00 00  	auipc	a0, 4
802047f8: 13 05 45 13  	addi	a0, a0, 308
802047fc: 23 3c a4 f6  	sd	a0, -136(s0)
80204800: 23 30 04 f8  	sd	zero, -128(s0)
80204804: 23 34 04 f8  	sd	zero, -120(s0)

0000000080204808 <.Lpcrel_hi18>:
80204808: 17 45 00 00  	auipc	a0, 4
8020480c: 93 05 05 a8  	addi	a1, a0, -1408
80204810: 13 05 04 f6  	addi	a0, s0, -160
80204814: 13 06 84 f6  	addi	a2, s0, -152
80204818: 97 20 00 00  	auipc	ra, 2
8020481c: e7 80 c0 b0  	jalr	-1268(ra)
80204820: 5d e5        	bnez	a0, 0x802048ce <.Lpcrel_hi19>
; }
80204822: ea 60        	ld	ra, 152(sp)
80204824: 4a 64        	ld	s0, 144(sp)
80204826: aa 64        	ld	s1, 136(sp)
80204828: 0a 69        	ld	s2, 128(sp)
8020482a: e6 79        	ld	s3, 120(sp)
8020482c: 46 7a        	ld	s4, 112(sp)
8020482e: a6 7a        	ld	s5, 104(sp)
80204830: 06 7b        	ld	s6, 96(sp)
80204832: e6 6b        	ld	s7, 88(sp)
80204834: 46 6c        	ld	s8, 80(sp)
80204836: a6 6c        	ld	s9, 72(sp)
80204838: 06 6d        	ld	s10, 64(sp)
8020483a: 0d 61        	addi	sp, sp, 160
8020483c: 82 80        	ret

000000008020483e <.Lpcrel_hi12>:
; 	&mut CPUS.get_mut()[id]
8020483e: 17 45 00 00  	auipc	a0, 4
80204842: 13 06 a5 b8  	addi	a2, a0, -1142
80204846: 93 05 00 04  	li	a1, 64
8020484a: 26 85        	mv	a0, s1
8020484c: 97 10 00 00  	auipc	ra, 1
80204850: e7 80 60 51  	jalr	1302(ra)
80204854: 00 00        	unimp	
;             match status {
80204856: 31 ed        	bnez	a0, 0x802048b2 <.Lpcrel_hi5>

0000000080204858 <.Lpcrel_hi3>:
;                 INCOMPLETE => unreachable!(),
80204858: 17 45 00 00  	auipc	a0, 4
8020485c: 13 05 05 83  	addi	a0, a0, -2000

0000000080204860 <.Lpcrel_hi4>:
80204860: 97 45 00 00  	auipc	a1, 4
80204864: 13 86 05 85  	addi	a2, a1, -1968
80204868: 93 05 80 02  	li	a1, 40
8020486c: 97 10 00 00  	auipc	ra, 1
80204870: e7 80 a0 4c  	jalr	1226(ra)
80204874: 00 00        	unimp	

0000000080204876 <.Lpcrel_hi13>:
80204876: 17 45 00 00  	auipc	a0, 4
8020487a: 13 05 a5 9e  	addi	a0, a0, -1558
8020487e: 23 34 a4 f6  	sd	a0, -152(s0)
80204882: 05 45        	li	a0, 1
80204884: 23 38 a4 f6  	sd	a0, -144(s0)
80204888: 23 34 04 f8  	sd	zero, -120(s0)

000000008020488c <.Lpcrel_hi14>:
8020488c: 17 45 00 00  	auipc	a0, 4
80204890: 13 05 45 98  	addi	a0, a0, -1660
80204894: 23 3c a4 f6  	sd	a0, -136(s0)
80204898: 23 30 04 f8  	sd	zero, -128(s0)

000000008020489c <.Lpcrel_hi15>:
;             panic!("release");
8020489c: 17 45 00 00  	auipc	a0, 4
802048a0: 93 05 45 9d  	addi	a1, a0, -1580
802048a4: 13 05 84 f6  	addi	a0, s0, -152
802048a8: 97 10 00 00  	auipc	ra, 1
802048ac: e7 80 00 46  	jalr	1120(ra)
802048b0: 00 00        	unimp	

00000000802048b2 <.Lpcrel_hi5>:
;                 PANICKED => panic!("Once has panicked"),
802048b2: 17 35 00 00  	auipc	a0, 3
802048b6: 13 05 e5 74  	addi	a0, a0, 1870

00000000802048ba <.Lpcrel_hi6>:
802048ba: 97 35 00 00  	auipc	a1, 3
802048be: 13 86 65 7b  	addi	a2, a1, 1974
802048c2: c5 45        	li	a1, 17
802048c4: 97 10 00 00  	auipc	ra, 1
802048c8: e7 80 20 47  	jalr	1138(ra)
802048cc: 00 00        	unimp	

00000000802048ce <.Lpcrel_hi19>:
802048ce: 17 45 00 00  	auipc	a0, 4
802048d2: 13 05 a5 9e  	addi	a0, a0, -1558

00000000802048d6 <.Lpcrel_hi20>:
802048d6: 97 45 00 00  	auipc	a1, 4
802048da: 93 86 25 a1  	addi	a3, a1, -1518

00000000802048de <.Lpcrel_hi21>:
802048de: 97 45 00 00  	auipc	a1, 4
802048e2: 13 87 a5 a3  	addi	a4, a1, -1478
802048e6: 93 05 b0 02  	li	a1, 43
802048ea: 13 06 84 f9  	addi	a2, s0, -104
802048ee: 97 10 00 00  	auipc	ra, 1
802048f2: e7 80 40 4b  	jalr	1204(ra)
802048f6: 00 00        	unimp	

00000000802048f8 <.Lpcrel_hi9>:
802048f8: 17 45 00 00  	auipc	a0, 4
802048fc: 13 05 05 02  	addi	a0, a0, 32
80204900: 23 34 a4 f6  	sd	a0, -152(s0)
80204904: 05 45        	li	a0, 1
80204906: 23 38 a4 f6  	sd	a0, -144(s0)
8020490a: 23 34 04 f8  	sd	zero, -120(s0)

000000008020490e <.Lpcrel_hi10>:
8020490e: 17 45 00 00  	auipc	a0, 4
80204912: 13 05 a5 01  	addi	a0, a0, 26
80204916: 23 3c a4 f6  	sd	a0, -136(s0)
8020491a: 23 30 04 f8  	sd	zero, -128(s0)

000000008020491e <.Lpcrel_hi11>:
;             panic!("kfree");
8020491e: 17 45 00 00  	auipc	a0, 4
80204922: 93 05 25 02  	addi	a1, a0, 34
80204926: 13 05 84 f6  	addi	a0, s0, -152
8020492a: 97 10 00 00  	auipc	ra, 1
8020492e: e7 80 e0 3d  	jalr	990(ra)
80204932: 00 00        	unimp	

0000000080204934 <_ZN6kernel6memory6kalloc6kalloc17hce46345e445e36aeE>:
; pub fn kalloc() -> Addr {
80204934: 1d 71        	addi	sp, sp, -96
80204936: 86 ec        	sd	ra, 88(sp)
80204938: a2 e8        	sd	s0, 80(sp)
8020493a: a6 e4        	sd	s1, 72(sp)
8020493c: ca e0        	sd	s2, 64(sp)
8020493e: 4e fc        	sd	s3, 56(sp)
80204940: 52 f8        	sd	s4, 48(sp)
80204942: 80 10        	addi	s0, sp, 96
80204944: 0f 00 30 03  	fence	rw, rw

0000000080204948 <.Lpcrel_hi22>:
80204948: 17 e5 08 00  	auipc	a0, 142
8020494c: 93 04 85 72  	addi	s1, a0, 1832
80204950: 88 78        	ld	a0, 48(s1)
80204952: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204956: 39 e5        	bnez	a0, 0x802049a4 <.Lpcrel_hi23+0x34>
80204958: 93 85 04 03  	addi	a1, s1, 48
8020495c: 05 46        	li	a2, 1
8020495e: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80204962: 29 e1        	bnez	a0, 0x802049a4 <.Lpcrel_hi23+0x34>
80204964: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80204968: fd fa        	bnez	a3, 0x8020495e <.Lpcrel_hi22+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020496a: 23 30 b4 fa  	sd	a1, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020496e: 90 e0        	sd	a2, 0(s1)

0000000080204970 <.Lpcrel_hi23>:
80204970: 17 35 00 00  	auipc	a0, 3
80204974: 13 05 f5 76  	addi	a0, a0, 1903
80204978: 88 e4        	sd	a0, 8(s1)
8020497a: 11 45        	li	a0, 4
8020497c: 88 e8        	sd	a0, 16(s1)
8020497e: 23 bc 04 00  	sd	zero, 24(s1)
80204982: 23 80 04 02  	sb	zero, 32(s1)
80204986: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
8020498a: 23 04 04 fa  	sb	zero, -88(s0)
8020498e: 0f 00 10 03  	fence	rw, w
80204992: 09 45        	li	a0, 2
80204994: 88 f8        	sd	a0, 48(s1)
80204996: 13 05 04 fa  	addi	a0, s0, -96
8020499a: 97 10 00 00  	auipc	ra, 1
8020499e: e7 80 e0 d9  	jalr	-610(ra)
802049a2: 05 a0        	j	0x802049c2 <.Lpcrel_hi23+0x52>
802049a4: 85 45        	li	a1, 1
;             match status {
802049a6: 63 1b b5 00  	bne	a0, a1, 0x802049bc <.Lpcrel_hi23+0x4c>
802049aa: 0f 00 00 01  	fence	w, 0
802049ae: 0f 00 30 03  	fence	rw, rw
802049b2: 88 78        	ld	a0, 48(s1)
802049b4: 0f 00 30 02  	fence	r, rw
;             match status {
802049b8: e3 09 b5 fe  	beq	a0, a1, 0x802049aa <.Lpcrel_hi23+0x3a>
802049bc: 89 45        	li	a1, 2
;             match status {
802049be: 63 1c b5 0e  	bne	a0, a1, 0x80204ab6 <.Lpcrel_hi34+0x18>
;         self.lock.acquire();
802049c2: 13 85 84 00  	addi	a0, s1, 8
802049c6: 97 f0 ff ff  	auipc	ra, 1048575
802049ca: e7 80 80 be  	jalr	-1048(ra)
;         r = self.freelist;
802049ce: 03 b9 84 02  	ld	s2, 40(s1)
802049d2: 63 03 09 06  	beqz	s2, 0x80204a38 <.Lpcrel_hi28+0x4e>
;             unsafe { self.freelist = (*r).next }
802049d6: 03 35 09 00  	ld	a0, 0(s2)
802049da: 88 f4        	sd	a0, 40(s1)
802049dc: 03 85 04 02  	lb	a0, 32(s1)
802049e0: 63 09 05 10  	beqz	a0, 0x80204af2 <.Lpcrel_hi30>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802049e4: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802049e8: 92 89        	mv	s3, tp

00000000802049ea <.Lpcrel_hi28>:
;         self.0.call_once(builder)
802049ea: 17 c5 08 00  	auipc	a0, 140
802049ee: 13 05 65 47  	addi	a0, a0, 1142
802049f2: 97 d0 ff ff  	auipc	ra, 1048573
802049f6: e7 80 e0 60  	jalr	1550(ra)
802049fa: 93 05 00 04  	li	a1, 64
802049fe: 63 fb b9 08  	bgeu	s3, a1, 0x80204a94 <.Lpcrel_hi29>
80204a02: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80204a06: b3 85 b9 02  	mul	a1, s3, a1
80204a0a: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80204a0c: 63 13 aa 0e  	bne	s4, a0, 0x80204af2 <.Lpcrel_hi30>
;         self.cpu = null_mut();
80204a10: 23 bc 04 00  	sd	zero, 24(s1)
80204a14: 0f 00 30 03  	fence	rw, rw
80204a18: 0f 00 10 03  	fence	rw, w
80204a1c: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80204a20: 97 f0 ff ff  	auipc	ra, 1048575
80204a24: e7 80 a0 f1  	jalr	-230(ra)
80204a28: 95 45        	li	a1, 5
80204a2a: 05 66        	lui	a2, 1
80204a2c: 4a 85        	mv	a0, s2
80204a2e: 97 20 00 00  	auipc	ra, 2
80204a32: e7 80 60 65  	jalr	1622(ra)
80204a36: b1 a0        	j	0x80204a82 <.Lpcrel_hi33+0x3e>
80204a38: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204a3c: 7d c1        	beqz	a0, 0x80204b22 <.Lpcrel_hi35>
80204a3e: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204a42: 92 89        	mv	s3, tp

0000000080204a44 <.Lpcrel_hi33>:
;         self.0.call_once(builder)
80204a44: 17 c5 08 00  	auipc	a0, 140
80204a48: 13 05 c5 41  	addi	a0, a0, 1052
80204a4c: 97 d0 ff ff  	auipc	ra, 1048573
80204a50: e7 80 40 5b  	jalr	1460(ra)
80204a54: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80204a58: 63 f3 b9 04  	bgeu	s3, a1, 0x80204a9e <.Lpcrel_hi34>
80204a5c: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80204a60: b3 85 b9 02  	mul	a1, s3, a1
80204a64: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80204a66: 63 1e aa 0a  	bne	s4, a0, 0x80204b22 <.Lpcrel_hi35>
;         self.cpu = null_mut();
80204a6a: 23 bc 04 00  	sd	zero, 24(s1)
80204a6e: 0f 00 30 03  	fence	rw, rw
80204a72: 0f 00 10 03  	fence	rw, w
80204a76: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80204a7a: 97 f0 ff ff  	auipc	ra, 1048575
80204a7e: e7 80 00 ec  	jalr	-320(ra)
; }
80204a82: 4a 85        	mv	a0, s2
80204a84: e6 60        	ld	ra, 88(sp)
80204a86: 46 64        	ld	s0, 80(sp)
80204a88: a6 64        	ld	s1, 72(sp)
80204a8a: 06 69        	ld	s2, 64(sp)
80204a8c: e2 79        	ld	s3, 56(sp)
80204a8e: 42 7a        	ld	s4, 48(sp)
80204a90: 25 61        	addi	sp, sp, 96
80204a92: 82 80        	ret

0000000080204a94 <.Lpcrel_hi29>:
; 	&mut CPUS.get_mut()[id]
80204a94: 17 45 00 00  	auipc	a0, 4
80204a98: 13 06 45 93  	addi	a2, a0, -1740
80204a9c: 29 a0        	j	0x80204aa6 <.Lpcrel_hi34+0x8>

0000000080204a9e <.Lpcrel_hi34>:
80204a9e: 17 45 00 00  	auipc	a0, 4
80204aa2: 13 06 a5 92  	addi	a2, a0, -1750
;         self.lock.release();
80204aa6: 93 05 00 04  	li	a1, 64
80204aaa: 4e 85        	mv	a0, s3
80204aac: 97 10 00 00  	auipc	ra, 1
80204ab0: e7 80 60 2b  	jalr	694(ra)
80204ab4: 00 00        	unimp	
;             match status {
80204ab6: 05 e1        	bnez	a0, 0x80204ad6 <.Lpcrel_hi26>

0000000080204ab8 <.Lpcrel_hi24>:
;                 INCOMPLETE => unreachable!(),
80204ab8: 17 35 00 00  	auipc	a0, 3
80204abc: 13 05 05 5d  	addi	a0, a0, 1488

0000000080204ac0 <.Lpcrel_hi25>:
80204ac0: 97 35 00 00  	auipc	a1, 3
80204ac4: 13 86 05 5f  	addi	a2, a1, 1520
80204ac8: 93 05 80 02  	li	a1, 40
80204acc: 97 10 00 00  	auipc	ra, 1
80204ad0: e7 80 a0 26  	jalr	618(ra)
80204ad4: 00 00        	unimp	

0000000080204ad6 <.Lpcrel_hi26>:
;                 PANICKED => panic!("Once has panicked"),
80204ad6: 17 35 00 00  	auipc	a0, 3
80204ada: 13 05 a5 52  	addi	a0, a0, 1322

0000000080204ade <.Lpcrel_hi27>:
80204ade: 97 35 00 00  	auipc	a1, 3
80204ae2: 13 86 25 59  	addi	a2, a1, 1426
80204ae6: c5 45        	li	a1, 17
80204ae8: 97 10 00 00  	auipc	ra, 1
80204aec: e7 80 e0 24  	jalr	590(ra)
80204af0: 00 00        	unimp	

0000000080204af2 <.Lpcrel_hi30>:
80204af2: 17 35 00 00  	auipc	a0, 3
80204af6: 13 05 e5 76  	addi	a0, a0, 1902
80204afa: 23 30 a4 fa  	sd	a0, -96(s0)
80204afe: 05 45        	li	a0, 1
80204b00: 23 34 a4 fa  	sd	a0, -88(s0)
80204b04: 23 30 04 fc  	sd	zero, -64(s0)

0000000080204b08 <.Lpcrel_hi31>:
80204b08: 17 35 00 00  	auipc	a0, 3
80204b0c: 13 05 85 70  	addi	a0, a0, 1800
80204b10: 23 38 a4 fa  	sd	a0, -80(s0)
80204b14: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080204b18 <.Lpcrel_hi32>:
;             panic!("release");
80204b18: 17 35 00 00  	auipc	a0, 3
80204b1c: 93 05 85 75  	addi	a1, a0, 1880
80204b20: 05 a8        	j	0x80204b50 <.Lpcrel_hi37+0x8>

0000000080204b22 <.Lpcrel_hi35>:
80204b22: 17 35 00 00  	auipc	a0, 3
80204b26: 13 05 e5 73  	addi	a0, a0, 1854
80204b2a: 23 30 a4 fa  	sd	a0, -96(s0)
80204b2e: 05 45        	li	a0, 1
80204b30: 23 34 a4 fa  	sd	a0, -88(s0)
80204b34: 23 30 04 fc  	sd	zero, -64(s0)

0000000080204b38 <.Lpcrel_hi36>:
80204b38: 17 35 00 00  	auipc	a0, 3
80204b3c: 13 05 85 6d  	addi	a0, a0, 1752
80204b40: 23 38 a4 fa  	sd	a0, -80(s0)
80204b44: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080204b48 <.Lpcrel_hi37>:
;             panic!("release");
80204b48: 17 35 00 00  	auipc	a0, 3
80204b4c: 93 05 85 72  	addi	a1, a0, 1832
;         self.lock.release();
80204b50: 13 05 04 fa  	addi	a0, s0, -96
80204b54: 97 10 00 00  	auipc	ra, 1
80204b58: e7 80 40 1b  	jalr	436(ra)
80204b5c: 00 00        	unimp	

0000000080204b5e <_ZN6kernel6memory6kalloc5kfree17ha7702d4ed64acff8E>:
; pub fn kfree(pa: Addr) {
80204b5e: 1d 71        	addi	sp, sp, -96
80204b60: 86 ec        	sd	ra, 88(sp)
80204b62: a2 e8        	sd	s0, 80(sp)
80204b64: a6 e4        	sd	s1, 72(sp)
80204b66: ca e0        	sd	s2, 64(sp)
80204b68: 4e fc        	sd	s3, 56(sp)
80204b6a: 52 f8        	sd	s4, 48(sp)
80204b6c: 80 10        	addi	s0, sp, 96
80204b6e: 0f 00 30 03  	fence	rw, rw

0000000080204b72 <.Lpcrel_hi38>:
80204b72: 97 e5 08 00  	auipc	a1, 142
80204b76: 93 84 e5 4f  	addi	s1, a1, 1278
80204b7a: 8c 78        	ld	a1, 48(s1)
80204b7c: 2a 89        	mv	s2, a0
80204b7e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204b82: b9 e5        	bnez	a1, 0x80204bd0 <.Lpcrel_hi39+0x34>
80204b84: 13 85 04 03  	addi	a0, s1, 48
80204b88: 05 46        	li	a2, 1
80204b8a: af 35 05 16  	lr.d.aqrl	a1, (a0)
80204b8e: a9 e1        	bnez	a1, 0x80204bd0 <.Lpcrel_hi39+0x34>
80204b90: af 36 c5 1e  	sc.d.aqrl	a3, a2, (a0)
80204b94: fd fa        	bnez	a3, 0x80204b8a <.Lpcrel_hi38+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80204b96: 23 30 a4 fa  	sd	a0, -96(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80204b9a: 90 e0        	sd	a2, 0(s1)

0000000080204b9c <.Lpcrel_hi39>:
80204b9c: 17 35 00 00  	auipc	a0, 3
80204ba0: 13 05 35 54  	addi	a0, a0, 1347
80204ba4: 88 e4        	sd	a0, 8(s1)
80204ba6: 11 45        	li	a0, 4
80204ba8: 88 e8        	sd	a0, 16(s1)
80204baa: 23 bc 04 00  	sd	zero, 24(s1)
80204bae: 23 80 04 02  	sb	zero, 32(s1)
80204bb2: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80204bb6: 23 04 04 fa  	sb	zero, -88(s0)
80204bba: 0f 00 10 03  	fence	rw, w
80204bbe: 09 45        	li	a0, 2
80204bc0: 88 f8        	sd	a0, 48(s1)
80204bc2: 13 05 04 fa  	addi	a0, s0, -96
80204bc6: 97 10 00 00  	auipc	ra, 1
80204bca: e7 80 20 b7  	jalr	-1166(ra)
80204bce: 05 a0        	j	0x80204bee <.Lpcrel_hi39+0x52>
80204bd0: 05 45        	li	a0, 1
;             match status {
80204bd2: 63 9b a5 00  	bne	a1, a0, 0x80204be8 <.Lpcrel_hi39+0x4c>
80204bd6: 0f 00 00 01  	fence	w, 0
80204bda: 0f 00 30 03  	fence	rw, rw
80204bde: 8c 78        	ld	a1, 48(s1)
80204be0: 0f 00 30 02  	fence	r, rw
;             match status {
80204be4: e3 89 a5 fe  	beq	a1, a0, 0x80204bd6 <.Lpcrel_hi39+0x3a>
80204be8: 09 45        	li	a0, 2
;             match status {
80204bea: 63 92 a5 0c  	bne	a1, a0, 0x80204cae <.Lpcrel_hi49+0x18>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
80204bee: 13 15 49 03  	slli	a0, s2, 52
80204bf2: 51 91        	srli	a0, a0, 52
80204bf4: 13 35 15 00  	seqz	a0, a0

0000000080204bf8 <.Lpcrel_hi44>:
80204bf8: 97 f5 28 00  	auipc	a1, 655
80204bfc: 93 85 85 40  	addi	a1, a1, 1032
80204c00: b3 35 b9 00  	sltu	a1, s2, a1
80204c04: 93 c5 f5 ff  	not	a1, a1
80204c08: 6d 8d        	and	a0, a0, a1
80204c0a: 93 55 b9 01  	srli	a1, s2, 27
80204c0e: 93 b5 15 01  	sltiu	a1, a1, 17
80204c12: 6d 8d        	and	a0, a0, a1
80204c14: 63 02 05 10  	beqz	a0, 0x80204d18 <.Lpcrel_hi45>
80204c18: 85 45        	li	a1, 1
80204c1a: 05 66        	lui	a2, 1
80204c1c: 85 49        	li	s3, 1
80204c1e: 4a 85        	mv	a0, s2
80204c20: 97 20 00 00  	auipc	ra, 2
80204c24: e7 80 40 46  	jalr	1124(ra)
;         self.lock.acquire();
80204c28: 13 85 84 00  	addi	a0, s1, 8
80204c2c: 97 f0 ff ff  	auipc	ra, 1048575
80204c30: e7 80 20 98  	jalr	-1662(ra)
;         unsafe { (*pa).next = self.freelist }
80204c34: 88 74        	ld	a0, 40(s1)
80204c36: 23 30 a9 00  	sd	a0, 0(s2)
;         self.freelist = pa;
80204c3a: 23 b4 24 03  	sd	s2, 40(s1)
80204c3e: 03 85 04 02  	lb	a0, 32(s1)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80204c42: 45 c5        	beqz	a0, 0x80204cea <.Lpcrel_hi50>
80204c44: 03 ba 84 01  	ld	s4, 24(s1)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80204c48: 12 89        	mv	s2, tp

0000000080204c4a <.Lpcrel_hi48>:
;         self.0.call_once(builder)
80204c4a: 17 c5 08 00  	auipc	a0, 140
80204c4e: 13 05 65 21  	addi	a0, a0, 534
80204c52: 97 d0 ff ff  	auipc	ra, 1048573
80204c56: e7 80 e0 3a  	jalr	942(ra)
80204c5a: 93 05 00 04  	li	a1, 64
; 	&mut CPUS.get_mut()[id]
80204c5e: 63 7c b9 02  	bgeu	s2, a1, 0x80204c96 <.Lpcrel_hi49>
80204c62: 93 05 80 08  	li	a1, 136
; 	&mut CPUS.get_mut()[id]
80204c66: b3 05 b9 02  	mul	a1, s2, a1
80204c6a: 2e 95        	add	a0, a0, a1
;         if !self.holding() {
80204c6c: 63 1f aa 06  	bne	s4, a0, 0x80204cea <.Lpcrel_hi50>
;         self.cpu = null_mut();
80204c70: 23 bc 04 00  	sd	zero, 24(s1)
80204c74: 0f 00 30 03  	fence	rw, rw
80204c78: 0f 00 10 03  	fence	rw, w
80204c7c: 23 80 04 02  	sb	zero, 32(s1)
;         pop_off();
80204c80: e6 60        	ld	ra, 88(sp)
80204c82: 46 64        	ld	s0, 80(sp)
80204c84: a6 64        	ld	s1, 72(sp)
80204c86: 06 69        	ld	s2, 64(sp)
80204c88: e2 79        	ld	s3, 56(sp)
80204c8a: 42 7a        	ld	s4, 48(sp)
80204c8c: 25 61        	addi	sp, sp, 96
80204c8e: 17 f3 ff ff  	auipc	t1, 1048575
80204c92: 67 00 c3 ca  	jr	-852(t1)

0000000080204c96 <.Lpcrel_hi49>:
; 	&mut CPUS.get_mut()[id]
80204c96: 17 35 00 00  	auipc	a0, 3
80204c9a: 13 06 25 73  	addi	a2, a0, 1842
80204c9e: 93 05 00 04  	li	a1, 64
80204ca2: 4a 85        	mv	a0, s2
80204ca4: 97 10 00 00  	auipc	ra, 1
80204ca8: e7 80 e0 0b  	jalr	190(ra)
80204cac: 00 00        	unimp	
;             match status {
80204cae: 85 e1        	bnez	a1, 0x80204cce <.Lpcrel_hi42>

0000000080204cb0 <.Lpcrel_hi40>:
;                 INCOMPLETE => unreachable!(),
80204cb0: 17 35 00 00  	auipc	a0, 3
80204cb4: 13 05 85 3d  	addi	a0, a0, 984

0000000080204cb8 <.Lpcrel_hi41>:
80204cb8: 97 35 00 00  	auipc	a1, 3
80204cbc: 13 86 85 3f  	addi	a2, a1, 1016
80204cc0: 93 05 80 02  	li	a1, 40
80204cc4: 97 10 00 00  	auipc	ra, 1
80204cc8: e7 80 20 07  	jalr	114(ra)
80204ccc: 00 00        	unimp	

0000000080204cce <.Lpcrel_hi42>:
;                 PANICKED => panic!("Once has panicked"),
80204cce: 17 35 00 00  	auipc	a0, 3
80204cd2: 13 05 25 33  	addi	a0, a0, 818

0000000080204cd6 <.Lpcrel_hi43>:
80204cd6: 97 35 00 00  	auipc	a1, 3
80204cda: 13 86 a5 39  	addi	a2, a1, 922
80204cde: c5 45        	li	a1, 17
80204ce0: 97 10 00 00  	auipc	ra, 1
80204ce4: e7 80 60 05  	jalr	86(ra)
80204ce8: 00 00        	unimp	

0000000080204cea <.Lpcrel_hi50>:
80204cea: 17 35 00 00  	auipc	a0, 3
80204cee: 13 05 65 57  	addi	a0, a0, 1398
80204cf2: 23 30 a4 fa  	sd	a0, -96(s0)
80204cf6: 23 34 34 fb  	sd	s3, -88(s0)
80204cfa: 23 30 04 fc  	sd	zero, -64(s0)

0000000080204cfe <.Lpcrel_hi51>:
80204cfe: 17 35 00 00  	auipc	a0, 3
80204d02: 13 05 25 51  	addi	a0, a0, 1298
80204d06: 23 38 a4 fa  	sd	a0, -80(s0)
80204d0a: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080204d0e <.Lpcrel_hi52>:
;             panic!("release");
80204d0e: 17 35 00 00  	auipc	a0, 3
80204d12: 93 05 25 56  	addi	a1, a0, 1378
80204d16: 05 a8        	j	0x80204d46 <.Lpcrel_hi47+0x8>

0000000080204d18 <.Lpcrel_hi45>:
80204d18: 17 45 00 00  	auipc	a0, 4
80204d1c: 13 05 05 c0  	addi	a0, a0, -1024
80204d20: 23 30 a4 fa  	sd	a0, -96(s0)
80204d24: 05 45        	li	a0, 1
80204d26: 23 34 a4 fa  	sd	a0, -88(s0)
80204d2a: 23 30 04 fc  	sd	zero, -64(s0)

0000000080204d2e <.Lpcrel_hi46>:
80204d2e: 17 45 00 00  	auipc	a0, 4
80204d32: 13 05 a5 bf  	addi	a0, a0, -1030
80204d36: 23 38 a4 fa  	sd	a0, -80(s0)
80204d3a: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080204d3e <.Lpcrel_hi47>:
;             panic!("kfree");
80204d3e: 17 45 00 00  	auipc	a0, 4
80204d42: 93 05 25 c0  	addi	a1, a0, -1022
80204d46: 13 05 04 fa  	addi	a0, s0, -96
80204d4a: 97 10 00 00  	auipc	ra, 1
80204d4e: e7 80 e0 fb  	jalr	-66(ra)
80204d52: 00 00        	unimp	

0000000080204d54 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80204d54: 71 71        	addi	sp, sp, -176
80204d56: 06 f5        	sd	ra, 168(sp)
80204d58: 22 f1        	sd	s0, 160(sp)
80204d5a: 26 ed        	sd	s1, 152(sp)
80204d5c: 00 19        	addi	s0, sp, 176
80204d5e: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80204d60: 97 10 00 00  	auipc	ra, 1
80204d64: e7 80 00 fa  	jalr	-96(ra)
80204d68: 05 e1        	bnez	a0, 0x80204d88 <.Lpcrel_hi1+0x16>

0000000080204d6a <.Lpcrel_hi0>:
80204d6a: 17 45 00 00  	auipc	a0, 4
80204d6e: 13 05 e5 c8  	addi	a0, a0, -882

0000000080204d72 <.Lpcrel_hi1>:
80204d72: 97 45 00 00  	auipc	a1, 4
80204d76: 13 86 65 cc  	addi	a2, a1, -826
80204d7a: 93 05 b0 02  	li	a1, 43
80204d7e: 97 10 00 00  	auipc	ra, 1
80204d82: e7 80 80 fb  	jalr	-72(ra)
80204d86: 00 00        	unimp	
80204d88: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80204d8c: 26 85        	mv	a0, s1
80204d8e: 97 10 00 00  	auipc	ra, 1
80204d92: e7 80 60 f7  	jalr	-138(ra)
80204d96: 59 e1        	bnez	a0, 0x80204e1c <.Lpcrel_hi15+0x1a>
80204d98: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80204d9c: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080204da0 <.Lpcrel_hi10>:
80204da0: 17 f5 ff ff  	auipc	a0, 1048575
80204da4: 13 05 45 c8  	addi	a0, a0, -892
80204da8: 23 34 a4 f6  	sd	a0, -152(s0)
80204dac: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80204db0: 23 38 a4 f8  	sd	a0, -112(s0)

0000000080204db4 <.Lpcrel_hi11>:
80204db4: 17 45 00 00  	auipc	a0, 4
80204db8: 13 05 45 bd  	addi	a0, a0, -1068
80204dbc: 23 38 a4 fa  	sd	a0, -80(s0)
80204dc0: 09 45        	li	a0, 2
80204dc2: 23 3c a4 fa  	sd	a0, -72(s0)
80204dc6: 13 05 04 f6  	addi	a0, s0, -160
80204dca: 23 30 a4 fc  	sd	a0, -64(s0)
80204dce: 05 45        	li	a0, 1
80204dd0: 23 34 a4 fc  	sd	a0, -56(s0)
80204dd4: 23 38 04 fc  	sd	zero, -48(s0)

0000000080204dd8 <.Lpcrel_hi12>:
80204dd8: 17 35 00 00  	auipc	a0, 3
80204ddc: 93 05 05 4b  	addi	a1, a0, 1200
80204de0: 13 05 04 f9  	addi	a0, s0, -112
80204de4: 13 06 04 fb  	addi	a2, s0, -80
80204de8: 97 10 00 00  	auipc	ra, 1
80204dec: e7 80 c0 53  	jalr	1340(ra)
80204df0: 6d c5        	beqz	a0, 0x80204eda <.Lpcrel_hi9+0x1a>

0000000080204df2 <.Lpcrel_hi13>:
80204df2: 17 35 00 00  	auipc	a0, 3
80204df6: 13 05 65 4c  	addi	a0, a0, 1222

0000000080204dfa <.Lpcrel_hi14>:
80204dfa: 97 35 00 00  	auipc	a1, 3
80204dfe: 93 86 e5 4e  	addi	a3, a1, 1262

0000000080204e02 <.Lpcrel_hi15>:
80204e02: 97 35 00 00  	auipc	a1, 3
80204e06: 13 87 65 51  	addi	a4, a1, 1302
80204e0a: 93 05 b0 02  	li	a1, 43
80204e0e: 13 06 04 fe  	addi	a2, s0, -32
80204e12: 97 10 00 00  	auipc	ra, 1
80204e16: e7 80 00 f9  	jalr	-112(ra)
80204e1a: 00 00        	unimp	
80204e1c: 0c 61        	ld	a1, 0(a0)
80204e1e: 10 65        	ld	a2, 8(a0)
80204e20: 23 38 b4 f8  	sd	a1, -112(s0)
80204e24: 23 3c c4 f8  	sd	a2, -104(s0)
80204e28: 08 49        	lw	a0, 16(a0)
80204e2a: 23 22 a4 fa  	sw	a0, -92(s0)
80204e2e: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80204e32: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080204e36 <.Lpcrel_hi2>:
80204e36: 17 f5 ff ff  	auipc	a0, 1048575
80204e3a: 13 05 65 c0  	addi	a0, a0, -1018
80204e3e: 23 34 a4 f6  	sd	a0, -152(s0)
80204e42: 13 05 44 fa  	addi	a0, s0, -92
80204e46: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080204e4a <.Lpcrel_hi3>:
80204e4a: 17 25 00 00  	auipc	a0, 2
80204e4e: 13 05 65 0c  	addi	a0, a0, 198
80204e52: 23 3c a4 f6  	sd	a0, -136(s0)
80204e56: 13 05 84 f5  	addi	a0, s0, -168
80204e5a: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080204e5e <.Lpcrel_hi4>:
80204e5e: 17 f5 ff ff  	auipc	a0, 1048575
80204e62: 13 05 65 bc  	addi	a0, a0, -1082
80204e66: 23 34 a4 f8  	sd	a0, -120(s0)
80204e6a: 13 05 04 fe  	addi	a0, s0, -32
;     Stdout.write_fmt(args).unwrap();
80204e6e: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080204e72 <.Lpcrel_hi5>:
80204e72: 17 45 00 00  	auipc	a0, 4
80204e76: 13 05 65 b4  	addi	a0, a0, -1210
80204e7a: 23 38 a4 fa  	sd	a0, -80(s0)
80204e7e: 11 45        	li	a0, 4
80204e80: 23 3c a4 fa  	sd	a0, -72(s0)
80204e84: 13 05 04 f6  	addi	a0, s0, -160
80204e88: 23 30 a4 fc  	sd	a0, -64(s0)
80204e8c: 0d 45        	li	a0, 3
80204e8e: 23 34 a4 fc  	sd	a0, -56(s0)
80204e92: 23 38 04 fc  	sd	zero, -48(s0)

0000000080204e96 <.Lpcrel_hi6>:
80204e96: 17 35 00 00  	auipc	a0, 3
80204e9a: 93 05 25 3f  	addi	a1, a0, 1010
80204e9e: 13 05 84 fa  	addi	a0, s0, -88
80204ea2: 13 06 04 fb  	addi	a2, s0, -80
80204ea6: 97 10 00 00  	auipc	ra, 1
80204eaa: e7 80 e0 47  	jalr	1150(ra)
80204eae: 15 c5        	beqz	a0, 0x80204eda <.Lpcrel_hi9+0x1a>

0000000080204eb0 <.Lpcrel_hi7>:
80204eb0: 17 35 00 00  	auipc	a0, 3
80204eb4: 13 05 85 40  	addi	a0, a0, 1032

0000000080204eb8 <.Lpcrel_hi8>:
80204eb8: 97 35 00 00  	auipc	a1, 3
80204ebc: 93 86 05 43  	addi	a3, a1, 1072

0000000080204ec0 <.Lpcrel_hi9>:
80204ec0: 97 35 00 00  	auipc	a1, 3
80204ec4: 13 87 85 45  	addi	a4, a1, 1112
80204ec8: 93 05 b0 02  	li	a1, 43
80204ecc: 13 06 04 fe  	addi	a2, s0, -32
80204ed0: 97 10 00 00  	auipc	ra, 1
80204ed4: e7 80 20 ed  	jalr	-302(ra)
80204ed8: 00 00        	unimp	
;     shutdown()
80204eda: 97 e0 ff ff  	auipc	ra, 1048574
80204ede: e7 80 40 68  	jalr	1668(ra)
80204ee2: 00 00        	unimp	

0000000080204ee4 <usertrap>:
; pub fn kerneltrap() {}
80204ee4: 41 11        	addi	sp, sp, -16
80204ee6: 06 e4        	sd	ra, 8(sp)
80204ee8: 22 e0        	sd	s0, 0(sp)
80204eea: 00 08        	addi	s0, sp, 16
80204eec: a2 60        	ld	ra, 8(sp)
80204eee: 02 64        	ld	s0, 0(sp)
80204ef0: 41 01        	addi	sp, sp, 16
80204ef2: 82 80        	ret

0000000080204ef4 <__rg_alloc>:
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80204ef4: 41 11        	addi	sp, sp, -16
80204ef6: 06 e4        	sd	ra, 8(sp)
80204ef8: 22 e0        	sd	s0, 0(sp)
80204efa: 00 08        	addi	s0, sp, 16

0000000080204efc <.Lpcrel_hi2>:
80204efc: 17 e6 28 00  	auipc	a2, 654
80204f00: 13 06 c6 1a  	addi	a2, a2, 428
80204f04: aa 86        	mv	a3, a0
80204f06: 32 85        	mv	a0, a2
80204f08: 36 86        	mv	a2, a3
80204f0a: a2 60        	ld	ra, 8(sp)
80204f0c: 02 64        	ld	s0, 0(sp)
80204f0e: 41 01        	addi	sp, sp, 16
80204f10: 17 13 00 00  	auipc	t1, 1
80204f14: 67 00 83 ce  	jr	-792(t1)

0000000080204f18 <__rg_dealloc>:
80204f18: 41 11        	addi	sp, sp, -16
80204f1a: 06 e4        	sd	ra, 8(sp)
80204f1c: 22 e0        	sd	s0, 0(sp)
80204f1e: 00 08        	addi	s0, sp, 16

0000000080204f20 <.Lpcrel_hi3>:
80204f20: 97 e6 28 00  	auipc	a3, 654
80204f24: 93 86 86 18  	addi	a3, a3, 392
80204f28: 2e 87        	mv	a4, a1
80204f2a: aa 85        	mv	a1, a0
; static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
80204f2c: 36 85        	mv	a0, a3
80204f2e: ba 86        	mv	a3, a4
80204f30: a2 60        	ld	ra, 8(sp)
80204f32: 02 64        	ld	s0, 0(sp)
80204f34: 41 01        	addi	sp, sp, 16
80204f36: 17 13 00 00  	auipc	t1, 1
80204f3a: 67 00 03 d1  	jr	-752(t1)

0000000080204f3e <_ZN6kernel9allocator18handle_alloc_error17h7d97b7c619a60b7bE>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
80204f3e: 1d 71        	addi	sp, sp, -96
80204f40: 86 ec        	sd	ra, 88(sp)
80204f42: a2 e8        	sd	s0, 80(sp)
80204f44: 80 10        	addi	s0, sp, 96
80204f46: 23 30 a4 fa  	sd	a0, -96(s0)
80204f4a: 23 34 b4 fa  	sd	a1, -88(s0)
80204f4e: 13 05 04 fa  	addi	a0, s0, -96
;     panic!("Heap allocation error, layout = {:?}", layout);
80204f52: 23 30 a4 fe  	sd	a0, -32(s0)

0000000080204f56 <.Lpcrel_hi7>:
80204f56: 17 25 00 00  	auipc	a0, 2
80204f5a: 13 05 85 07  	addi	a0, a0, 120
80204f5e: 23 34 a4 fe  	sd	a0, -24(s0)

0000000080204f62 <.Lpcrel_hi8>:
80204f62: 17 45 00 00  	auipc	a0, 4
80204f66: 13 05 e5 b2  	addi	a0, a0, -1234
80204f6a: 23 38 a4 fa  	sd	a0, -80(s0)
80204f6e: 05 45        	li	a0, 1
80204f70: 23 3c a4 fa  	sd	a0, -72(s0)
80204f74: 23 38 04 fc  	sd	zero, -48(s0)
80204f78: 93 05 04 fe  	addi	a1, s0, -32
80204f7c: 23 30 b4 fc  	sd	a1, -64(s0)
80204f80: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080204f84 <.Lpcrel_hi9>:
;     panic!("Heap allocation error, layout = {:?}", layout);
80204f84: 17 45 00 00  	auipc	a0, 4
80204f88: 93 05 45 b3  	addi	a1, a0, -1228
80204f8c: 13 05 04 fb  	addi	a0, s0, -80
80204f90: 97 10 00 00  	auipc	ra, 1
80204f94: e7 80 80 d7  	jalr	-648(ra)
80204f98: 00 00        	unimp	

0000000080204f9a <__rg_oom>:
; pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
80204f9a: 41 11        	addi	sp, sp, -16
80204f9c: 06 e4        	sd	ra, 8(sp)
80204f9e: 22 e0        	sd	s0, 0(sp)
80204fa0: 00 08        	addi	s0, sp, 16
80204fa2: 2a 86        	mv	a2, a0
80204fa4: 2e 85        	mv	a0, a1
80204fa6: b2 85        	mv	a1, a2
80204fa8: 97 00 00 00  	auipc	ra, 0
80204fac: e7 80 60 f9  	jalr	-106(ra)
80204fb0: 00 00        	unimp	

0000000080204fb2 <_ZN6kernel6memory3kvm7kvminit17h801e04563794e2d6E>:
; pub fn kvminit() {
80204fb2: 19 71        	addi	sp, sp, -128
80204fb4: 86 fc        	sd	ra, 120(sp)
80204fb6: a2 f8        	sd	s0, 112(sp)
80204fb8: a6 f4        	sd	s1, 104(sp)
80204fba: ca f0        	sd	s2, 96(sp)
80204fbc: ce ec        	sd	s3, 88(sp)
80204fbe: d2 e8        	sd	s4, 80(sp)
80204fc0: d6 e4        	sd	s5, 72(sp)
80204fc2: da e0        	sd	s6, 64(sp)
80204fc4: 00 01        	addi	s0, sp, 128
80204fc6: 0f 00 30 03  	fence	rw, rw

0000000080204fca <.Lpcrel_hi0>:
80204fca: 17 e5 28 00  	auipc	a0, 654
80204fce: 13 09 65 20  	addi	s2, a0, 518
80204fd2: 03 35 09 01  	ld	a0, 16(s2)
80204fd6: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80204fda: 29 e9        	bnez	a0, 0x8020502c <.Lpcrel_hi0+0x62>
80204fdc: 93 05 09 01  	addi	a1, s2, 16
80204fe0: 85 49        	li	s3, 1
80204fe2: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80204fe6: 39 e1        	bnez	a0, 0x8020502c <.Lpcrel_hi0+0x62>
80204fe8: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80204fec: 7d fa        	bnez	a2, 0x80204fe2 <.Lpcrel_hi0+0x18>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80204fee: 23 34 b4 f8  	sd	a1, -120(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80204ff2: 97 00 00 00  	auipc	ra, 0
80204ff6: e7 80 20 94  	jalr	-1726(ra)
80204ffa: aa 84        	mv	s1, a0
80204ffc: 05 66        	lui	a2, 1
80204ffe: 81 45        	li	a1, 0
80205000: 97 20 00 00  	auipc	ra, 2
80205004: e7 80 40 08  	jalr	132(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80205008: 23 30 39 01  	sd	s3, 0(s2)
8020500c: 23 34 99 00  	sd	s1, 8(s2)
;                 finish.panicked = false;
80205010: 23 08 04 f8  	sb	zero, -112(s0)
80205014: 0f 00 10 03  	fence	rw, w
80205018: 09 45        	li	a0, 2
8020501a: 23 38 a9 00  	sd	a0, 16(s2)
8020501e: 13 05 84 f8  	addi	a0, s0, -120
80205022: 97 00 00 00  	auipc	ra, 0
80205026: e7 80 60 71  	jalr	1814(ra)
8020502a: 0d a0        	j	0x8020504c <.Lpcrel_hi0+0x82>
8020502c: 85 45        	li	a1, 1
;             match status {
8020502e: 63 1c b5 00  	bne	a0, a1, 0x80205046 <.Lpcrel_hi0+0x7c>
80205032: 0f 00 00 01  	fence	w, 0
80205036: 0f 00 30 03  	fence	rw, rw
8020503a: 03 35 09 01  	ld	a0, 16(s2)
8020503e: 0f 00 30 02  	fence	r, rw
;             match status {
80205042: e3 08 b5 fe  	beq	a0, a1, 0x80205032 <.Lpcrel_hi0+0x68>
80205046: 89 45        	li	a1, 2
;             match status {
80205048: 63 18 b5 1c  	bne	a0, a1, 0x80205218 <.Lpcrel_hi45+0x30>
;             let pte = self.walk(a, true);
8020504c: 21 09        	addi	s2, s2, 8
8020504e: b7 05 00 10  	lui	a1, 65536
80205052: 05 46        	li	a2, 1
80205054: 85 44        	li	s1, 1
80205056: 4a 85        	mv	a0, s2
80205058: 97 f0 ff ff  	auipc	ra, 1048575
8020505c: e7 80 40 52  	jalr	1316(ra)
80205060: 63 0e 05 34  	beqz	a0, 0x802053bc <.Lpcrel_hi8>
;             if unsafe { *pte & PTE_V } != 0 {
80205064: 83 45 05 00  	lbu	a1, 0(a0)
80205068: 85 89        	andi	a1, a1, 1
8020506a: 63 96 05 38  	bnez	a1, 0x802053f6 <.Lpcrel_hi5>
8020506e: b7 05 00 04  	lui	a1, 16384
80205072: 9d 25        	addiw	a1, a1, 7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205074: 0c e1        	sd	a1, 0(a0)
;             let pte = self.walk(a, true);
80205076: b7 15 00 10  	lui	a1, 65537
8020507a: 05 46        	li	a2, 1
8020507c: 85 44        	li	s1, 1
8020507e: 4a 85        	mv	a0, s2
80205080: 97 f0 ff ff  	auipc	ra, 1048575
80205084: e7 80 c0 4f  	jalr	1276(ra)
80205088: 63 05 05 3a  	beqz	a0, 0x80205432 <.Lpcrel_hi14>
;             if unsafe { *pte & PTE_V } != 0 {
8020508c: 83 45 05 00  	lbu	a1, 0(a0)
80205090: 85 89        	andi	a1, a1, 1
80205092: 63 9d 05 3c  	bnez	a1, 0x8020546c <.Lpcrel_hi11>
80205096: b7 05 00 04  	lui	a1, 16384
8020509a: 9b 85 75 40  	addiw	a1, a1, 1031
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020509e: 0c e1        	sd	a1, 0(a0)
802050a0: b7 09 00 0c  	lui	s3, 49152
802050a4: 37 fa ff 0b  	lui	s4, 49151
802050a8: b7 04 00 03  	lui	s1, 12288
802050ac: 9d 24        	addiw	s1, s1, 7
802050ae: 85 6a        	lui	s5, 1
802050b0: 37 eb 3f 0c  	lui	s6, 50174
;             let pte = self.walk(a, true);
802050b4: 05 46        	li	a2, 1
802050b6: 4a 85        	mv	a0, s2
802050b8: ce 85        	mv	a1, s3
802050ba: 97 f0 ff ff  	auipc	ra, 1048575
802050be: e7 80 20 4c  	jalr	1218(ra)
;             if pte.is_null() {
802050c2: 63 0b 05 16  	beqz	a0, 0x80205238 <.Lpcrel_hi20>
;             if unsafe { *pte & PTE_V } != 0 {
802050c6: 83 45 05 00  	lbu	a1, 0(a0)
802050ca: 85 89        	andi	a1, a1, 1
802050cc: 63 94 05 1a  	bnez	a1, 0x80205274 <.Lpcrel_hi17>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802050d0: 04 e1        	sd	s1, 0(a0)
;             pa += PGSIZE;
802050d2: d6 99        	add	s3, s3, s5
;         while a <= last {
802050d4: 56 9a        	add	s4, s4, s5
802050d6: 93 84 04 40  	addi	s1, s1, 1024
802050da: e3 7d 4b fd  	bgeu	s6, s4, 0x802050b4 <.Lpcrel_hi0+0xea>

00000000802050de <.Lpcrel_hi23>:
;         if size == 0 {
802050de: 17 35 00 00  	auipc	a0, 3
802050e2: 93 09 25 f2  	addi	s3, a0, -222
802050e6: 93 05 10 40  	li	a1, 1025
802050ea: 13 95 55 01  	slli	a0, a1, 21
802050ee: 63 8d a9 3a  	beq	s3, a0, 0x802054a8 <.Lpcrel_hi24>
;         while a <= last {
802050f2: 13 85 f9 ff  	addi	a0, s3, -1
802050f6: 13 56 55 01  	srli	a2, a0, 21
802050fa: 63 6f b6 02  	bltu	a2, a1, 0x80205138 <.Lpcrel_hi23+0x5a>
802050fe: 93 04 10 40  	li	s1, 1025
80205102: d6 04        	slli	s1, s1, 21
80205104: 05 6a        	lui	s4, 1
80205106: fd 75        	lui	a1, 1048575
80205108: b3 7a b5 00  	and	s5, a0, a1
;             let pte = self.walk(a, true);
8020510c: 05 46        	li	a2, 1
8020510e: 4a 85        	mv	a0, s2
80205110: a6 85        	mv	a1, s1
80205112: 97 f0 ff ff  	auipc	ra, 1048575
80205116: e7 80 a0 46  	jalr	1130(ra)
;             if pte.is_null() {
8020511a: 63 09 05 1a  	beqz	a0, 0x802052cc <.Lpcrel_hi30>
;             if unsafe { *pte & PTE_V } != 0 {
8020511e: 83 45 05 00  	lbu	a1, 0(a0)
80205122: 85 89        	andi	a1, a1, 1
80205124: 63 92 05 1e  	bnez	a1, 0x80205308 <.Lpcrel_hi27>
;     (pa >> 12) << 10
80205128: 93 d5 24 00  	srli	a1, s1, 2
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020512c: 93 e5 b5 00  	ori	a1, a1, 11
;             pa += PGSIZE;
80205130: d2 94        	add	s1, s1, s4
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205132: 0c e1        	sd	a1, 0(a0)
;         while a <= last {
80205134: e3 fc 9a fc  	bgeu	s5, s1, 0x8020510c <.Lpcrel_hi23+0x2e>
80205138: 45 45        	li	a0, 17
8020513a: 6e 05        	slli	a0, a0, 27
8020513c: 63 84 a9 3a  	beq	s3, a0, 0x802054e4 <.Lpcrel_hi33>
80205140: 7d 75        	lui	a0, 1048575
;         while a <= last {
80205142: b3 f4 a9 00  	and	s1, s3, a0
80205146: 37 85 08 00  	lui	a0, 136
8020514a: 7d 35        	addiw	a0, a0, -1
8020514c: 13 1a c5 00  	slli	s4, a0, 12
;         while a <= last {
80205150: 63 6a 9a 02  	bltu	s4, s1, 0x80205184 <.Lpcrel_hi23+0xa6>
80205154: 85 6a        	lui	s5, 1
;             let pte = self.walk(a, true);
80205156: 05 46        	li	a2, 1
80205158: 4a 85        	mv	a0, s2
8020515a: a6 85        	mv	a1, s1
8020515c: 97 f0 ff ff  	auipc	ra, 1048575
80205160: e7 80 00 42  	jalr	1056(ra)
;             if pte.is_null() {
80205164: 63 00 05 1e  	beqz	a0, 0x80205344 <.Lpcrel_hi39>
;             if unsafe { *pte & PTE_V } != 0 {
80205168: 83 45 05 00  	lbu	a1, 0(a0)
8020516c: 85 89        	andi	a1, a1, 1
8020516e: 63 99 05 20  	bnez	a1, 0x80205380 <.Lpcrel_hi36>
;     (pa >> 12) << 10
80205172: 93 d5 c9 00  	srli	a1, s3, 12
80205176: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80205178: 9d 05        	addi	a1, a1, 7
8020517a: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
8020517c: d6 94        	add	s1, s1, s5
;             pa += PGSIZE;
8020517e: d6 99        	add	s3, s3, s5
;         while a <= last {
80205180: e3 7b 9a fc  	bgeu	s4, s1, 0x80205156 <.Lpcrel_hi23+0x78>
80205184: 37 05 00 04  	lui	a0, 16384
80205188: 7d 35        	addiw	a0, a0, -1
8020518a: 93 15 c5 00  	slli	a1, a0, 12
;             let pte = self.walk(a, true);
8020518e: 05 46        	li	a2, 1
80205190: 85 44        	li	s1, 1
80205192: 4a 85        	mv	a0, s2
80205194: 97 f0 ff ff  	auipc	ra, 1048575
80205198: e7 80 80 3e  	jalr	1000(ra)
8020519c: 63 02 05 38  	beqz	a0, 0x80205520 <.Lpcrel_hi49>
;             if unsafe { *pte & PTE_V } != 0 {
802051a0: 83 45 05 00  	lbu	a1, 0(a0)
802051a4: 85 89        	andi	a1, a1, 1
802051a6: 63 9a 05 3a  	bnez	a1, 0x8020555a <.Lpcrel_hi46>

00000000802051aa <.Lpcrel_hi42>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802051aa: 97 c5 ff ff  	auipc	a1, 1048572
802051ae: 93 85 65 e5  	addi	a1, a1, -426
802051b2: b1 81        	srli	a1, a1, 12
802051b4: aa 05        	slli	a1, a1, 10
802051b6: ad 05        	addi	a1, a1, 11
802051b8: 0c e1        	sd	a1, 0(a0)
802051ba: 13 05 84 fb  	addi	a0, s0, -72
;     Stdout.write_fmt(args).unwrap();
802051be: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802051c2 <.Lpcrel_hi43>:
802051c2: 17 45 00 00  	auipc	a0, 4
802051c6: 13 05 e5 96  	addi	a0, a0, -1682
802051ca: 23 34 a4 f8  	sd	a0, -120(s0)
802051ce: 05 45        	li	a0, 1
802051d0: 23 38 a4 f8  	sd	a0, -112(s0)

00000000802051d4 <.Lpcrel_hi44>:
802051d4: 17 45 00 00  	auipc	a0, 4
802051d8: 13 05 45 91  	addi	a0, a0, -1772
802051dc: 23 3c a4 f8  	sd	a0, -104(s0)
802051e0: 23 30 04 fa  	sd	zero, -96(s0)
802051e4: 23 34 04 fa  	sd	zero, -88(s0)

00000000802051e8 <.Lpcrel_hi45>:
802051e8: 17 35 00 00  	auipc	a0, 3
802051ec: 93 05 05 0a  	addi	a1, a0, 160
802051f0: 13 05 04 f8  	addi	a0, s0, -128
802051f4: 13 06 84 f8  	addi	a2, s0, -120
802051f8: 97 10 00 00  	auipc	ra, 1
802051fc: e7 80 c0 12  	jalr	300(ra)
80205200: 63 1b 05 38  	bnez	a0, 0x80205596 <.Lpcrel_hi52>
; }
80205204: e6 70        	ld	ra, 120(sp)
80205206: 46 74        	ld	s0, 112(sp)
80205208: a6 74        	ld	s1, 104(sp)
8020520a: 06 79        	ld	s2, 96(sp)
8020520c: e6 69        	ld	s3, 88(sp)
8020520e: 46 6a        	ld	s4, 80(sp)
80205210: a6 6a        	ld	s5, 72(sp)
80205212: 06 6b        	ld	s6, 64(sp)
80205214: 09 61        	addi	sp, sp, 128
80205216: 82 80        	ret
;             match status {
80205218: 41 ed        	bnez	a0, 0x802052b0 <.Lpcrel_hi3>

000000008020521a <.Lpcrel_hi1>:
;                 INCOMPLETE => unreachable!(),
8020521a: 17 35 00 00  	auipc	a0, 3
8020521e: 13 05 e5 e6  	addi	a0, a0, -402

0000000080205222 <.Lpcrel_hi2>:
80205222: 97 35 00 00  	auipc	a1, 3
80205226: 13 86 e5 e8  	addi	a2, a1, -370
8020522a: 93 05 80 02  	li	a1, 40
8020522e: 97 10 00 00  	auipc	ra, 1
80205232: e7 80 80 b0  	jalr	-1272(ra)
80205236: 00 00        	unimp	

0000000080205238 <.Lpcrel_hi20>:
80205238: 17 45 00 00  	auipc	a0, 4
8020523c: 13 05 05 8a  	addi	a0, a0, -1888
80205240: 23 34 a4 f8  	sd	a0, -120(s0)
80205244: 05 45        	li	a0, 1
80205246: 23 38 a4 f8  	sd	a0, -112(s0)
8020524a: 23 34 04 fa  	sd	zero, -88(s0)

000000008020524e <.Lpcrel_hi21>:
8020524e: 17 45 00 00  	auipc	a0, 4
80205252: 13 05 a5 89  	addi	a0, a0, -1894
80205256: 23 3c a4 f8  	sd	a0, -104(s0)
8020525a: 23 30 04 fa  	sd	zero, -96(s0)

000000008020525e <.Lpcrel_hi22>:
;             panic!("kvmmap");
8020525e: 17 45 00 00  	auipc	a0, 4
80205262: 93 05 25 8a  	addi	a1, a0, -1886
80205266: 13 05 84 f8  	addi	a0, s0, -120
8020526a: 97 10 00 00  	auipc	ra, 1
8020526e: e7 80 e0 a9  	jalr	-1378(ra)
80205272: 00 00        	unimp	

0000000080205274 <.Lpcrel_hi17>:
80205274: 17 35 00 00  	auipc	a0, 3
80205278: 13 05 c5 63  	addi	a0, a0, 1596
8020527c: 23 34 a4 f8  	sd	a0, -120(s0)
80205280: 05 45        	li	a0, 1
80205282: 23 38 a4 f8  	sd	a0, -112(s0)
80205286: 23 34 04 fa  	sd	zero, -88(s0)

000000008020528a <.Lpcrel_hi18>:
8020528a: 17 35 00 00  	auipc	a0, 3
8020528e: 13 05 65 5e  	addi	a0, a0, 1510
80205292: 23 3c a4 f8  	sd	a0, -104(s0)
80205296: 23 30 04 fa  	sd	zero, -96(s0)

000000008020529a <.Lpcrel_hi19>:
;                 panic!("mappages: remap");
8020529a: 17 35 00 00  	auipc	a0, 3
8020529e: 93 05 65 62  	addi	a1, a0, 1574
802052a2: 13 05 84 f8  	addi	a0, s0, -120
802052a6: 97 10 00 00  	auipc	ra, 1
802052aa: e7 80 20 a6  	jalr	-1438(ra)
802052ae: 00 00        	unimp	

00000000802052b0 <.Lpcrel_hi3>:
;                 PANICKED => panic!("Once has panicked"),
802052b0: 17 35 00 00  	auipc	a0, 3
802052b4: 13 05 05 d5  	addi	a0, a0, -688

00000000802052b8 <.Lpcrel_hi4>:
802052b8: 97 35 00 00  	auipc	a1, 3
802052bc: 13 86 85 db  	addi	a2, a1, -584
802052c0: c5 45        	li	a1, 17
802052c2: 97 10 00 00  	auipc	ra, 1
802052c6: e7 80 40 a7  	jalr	-1420(ra)
802052ca: 00 00        	unimp	

00000000802052cc <.Lpcrel_hi30>:
802052cc: 17 45 00 00  	auipc	a0, 4
802052d0: 13 05 c5 80  	addi	a0, a0, -2036
802052d4: 23 34 a4 f8  	sd	a0, -120(s0)
802052d8: 05 45        	li	a0, 1
802052da: 23 38 a4 f8  	sd	a0, -112(s0)
802052de: 23 34 04 fa  	sd	zero, -88(s0)

00000000802052e2 <.Lpcrel_hi31>:
802052e2: 17 45 00 00  	auipc	a0, 4
802052e6: 13 05 65 80  	addi	a0, a0, -2042
802052ea: 23 3c a4 f8  	sd	a0, -104(s0)
802052ee: 23 30 04 fa  	sd	zero, -96(s0)

00000000802052f2 <.Lpcrel_hi32>:
;             panic!("kvmmap");
802052f2: 17 45 00 00  	auipc	a0, 4
802052f6: 93 05 e5 80  	addi	a1, a0, -2034
802052fa: 13 05 84 f8  	addi	a0, s0, -120
802052fe: 97 10 00 00  	auipc	ra, 1
80205302: e7 80 a0 a0  	jalr	-1526(ra)
80205306: 00 00        	unimp	

0000000080205308 <.Lpcrel_hi27>:
80205308: 17 35 00 00  	auipc	a0, 3
8020530c: 13 05 85 5a  	addi	a0, a0, 1448
80205310: 23 34 a4 f8  	sd	a0, -120(s0)
80205314: 05 45        	li	a0, 1
80205316: 23 38 a4 f8  	sd	a0, -112(s0)
8020531a: 23 34 04 fa  	sd	zero, -88(s0)

000000008020531e <.Lpcrel_hi28>:
8020531e: 17 35 00 00  	auipc	a0, 3
80205322: 13 05 25 55  	addi	a0, a0, 1362
80205326: 23 3c a4 f8  	sd	a0, -104(s0)
8020532a: 23 30 04 fa  	sd	zero, -96(s0)

000000008020532e <.Lpcrel_hi29>:
;                 panic!("mappages: remap");
8020532e: 17 35 00 00  	auipc	a0, 3
80205332: 93 05 25 59  	addi	a1, a0, 1426
80205336: 13 05 84 f8  	addi	a0, s0, -120
8020533a: 97 10 00 00  	auipc	ra, 1
8020533e: e7 80 e0 9c  	jalr	-1586(ra)
80205342: 00 00        	unimp	

0000000080205344 <.Lpcrel_hi39>:
80205344: 17 35 00 00  	auipc	a0, 3
80205348: 13 05 45 79  	addi	a0, a0, 1940
8020534c: 23 34 a4 f8  	sd	a0, -120(s0)
80205350: 05 45        	li	a0, 1
80205352: 23 38 a4 f8  	sd	a0, -112(s0)
80205356: 23 34 04 fa  	sd	zero, -88(s0)

000000008020535a <.Lpcrel_hi40>:
8020535a: 17 35 00 00  	auipc	a0, 3
8020535e: 13 05 e5 78  	addi	a0, a0, 1934
80205362: 23 3c a4 f8  	sd	a0, -104(s0)
80205366: 23 30 04 fa  	sd	zero, -96(s0)

000000008020536a <.Lpcrel_hi41>:
;             panic!("kvmmap");
8020536a: 17 35 00 00  	auipc	a0, 3
8020536e: 93 05 65 79  	addi	a1, a0, 1942
80205372: 13 05 84 f8  	addi	a0, s0, -120
80205376: 97 10 00 00  	auipc	ra, 1
8020537a: e7 80 20 99  	jalr	-1646(ra)
8020537e: 00 00        	unimp	

0000000080205380 <.Lpcrel_hi36>:
80205380: 17 35 00 00  	auipc	a0, 3
80205384: 13 05 05 53  	addi	a0, a0, 1328
80205388: 23 34 a4 f8  	sd	a0, -120(s0)
8020538c: 05 45        	li	a0, 1
8020538e: 23 38 a4 f8  	sd	a0, -112(s0)
80205392: 23 34 04 fa  	sd	zero, -88(s0)

0000000080205396 <.Lpcrel_hi37>:
80205396: 17 35 00 00  	auipc	a0, 3
8020539a: 13 05 a5 4d  	addi	a0, a0, 1242
8020539e: 23 3c a4 f8  	sd	a0, -104(s0)
802053a2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802053a6 <.Lpcrel_hi38>:
;                 panic!("mappages: remap");
802053a6: 17 35 00 00  	auipc	a0, 3
802053aa: 93 05 a5 51  	addi	a1, a0, 1306
802053ae: 13 05 84 f8  	addi	a0, s0, -120
802053b2: 97 10 00 00  	auipc	ra, 1
802053b6: e7 80 60 95  	jalr	-1706(ra)
802053ba: 00 00        	unimp	

00000000802053bc <.Lpcrel_hi8>:
802053bc: 17 35 00 00  	auipc	a0, 3
802053c0: 13 05 c5 71  	addi	a0, a0, 1820
802053c4: 23 34 a4 f8  	sd	a0, -120(s0)
802053c8: 23 38 94 f8  	sd	s1, -112(s0)
802053cc: 23 34 04 fa  	sd	zero, -88(s0)

00000000802053d0 <.Lpcrel_hi9>:
802053d0: 17 35 00 00  	auipc	a0, 3
802053d4: 13 05 85 71  	addi	a0, a0, 1816
802053d8: 23 3c a4 f8  	sd	a0, -104(s0)
802053dc: 23 30 04 fa  	sd	zero, -96(s0)

00000000802053e0 <.Lpcrel_hi10>:
;             panic!("kvmmap");
802053e0: 17 35 00 00  	auipc	a0, 3
802053e4: 93 05 05 72  	addi	a1, a0, 1824
802053e8: 13 05 84 f8  	addi	a0, s0, -120
802053ec: 97 10 00 00  	auipc	ra, 1
802053f0: e7 80 c0 91  	jalr	-1764(ra)
802053f4: 00 00        	unimp	

00000000802053f6 <.Lpcrel_hi5>:
802053f6: 17 35 00 00  	auipc	a0, 3
802053fa: 13 05 a5 4b  	addi	a0, a0, 1210
802053fe: 23 34 a4 f8  	sd	a0, -120(s0)
80205402: 05 45        	li	a0, 1
80205404: 23 38 a4 f8  	sd	a0, -112(s0)
80205408: 23 34 04 fa  	sd	zero, -88(s0)

000000008020540c <.Lpcrel_hi6>:
8020540c: 17 35 00 00  	auipc	a0, 3
80205410: 13 05 45 46  	addi	a0, a0, 1124
80205414: 23 3c a4 f8  	sd	a0, -104(s0)
80205418: 23 30 04 fa  	sd	zero, -96(s0)

000000008020541c <.Lpcrel_hi7>:
;                 panic!("mappages: remap");
8020541c: 17 35 00 00  	auipc	a0, 3
80205420: 93 05 45 4a  	addi	a1, a0, 1188
80205424: 13 05 84 f8  	addi	a0, s0, -120
80205428: 97 10 00 00  	auipc	ra, 1
8020542c: e7 80 00 8e  	jalr	-1824(ra)
80205430: 00 00        	unimp	

0000000080205432 <.Lpcrel_hi14>:
80205432: 17 35 00 00  	auipc	a0, 3
80205436: 13 05 65 6a  	addi	a0, a0, 1702
8020543a: 23 34 a4 f8  	sd	a0, -120(s0)
8020543e: 23 38 94 f8  	sd	s1, -112(s0)
80205442: 23 34 04 fa  	sd	zero, -88(s0)

0000000080205446 <.Lpcrel_hi15>:
80205446: 17 35 00 00  	auipc	a0, 3
8020544a: 13 05 25 6a  	addi	a0, a0, 1698
8020544e: 23 3c a4 f8  	sd	a0, -104(s0)
80205452: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205456 <.Lpcrel_hi16>:
;             panic!("kvmmap");
80205456: 17 35 00 00  	auipc	a0, 3
8020545a: 93 05 a5 6a  	addi	a1, a0, 1706
8020545e: 13 05 84 f8  	addi	a0, s0, -120
80205462: 97 10 00 00  	auipc	ra, 1
80205466: e7 80 60 8a  	jalr	-1882(ra)
8020546a: 00 00        	unimp	

000000008020546c <.Lpcrel_hi11>:
8020546c: 17 35 00 00  	auipc	a0, 3
80205470: 13 05 45 44  	addi	a0, a0, 1092
80205474: 23 34 a4 f8  	sd	a0, -120(s0)
80205478: 05 45        	li	a0, 1
8020547a: 23 38 a4 f8  	sd	a0, -112(s0)
8020547e: 23 34 04 fa  	sd	zero, -88(s0)

0000000080205482 <.Lpcrel_hi12>:
80205482: 17 35 00 00  	auipc	a0, 3
80205486: 13 05 e5 3e  	addi	a0, a0, 1006
8020548a: 23 3c a4 f8  	sd	a0, -104(s0)
8020548e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205492 <.Lpcrel_hi13>:
;                 panic!("mappages: remap");
80205492: 17 35 00 00  	auipc	a0, 3
80205496: 93 05 e5 42  	addi	a1, a0, 1070
8020549a: 13 05 84 f8  	addi	a0, s0, -120
8020549e: 97 10 00 00  	auipc	ra, 1
802054a2: e7 80 a0 86  	jalr	-1942(ra)
802054a6: 00 00        	unimp	

00000000802054a8 <.Lpcrel_hi24>:
802054a8: 17 35 00 00  	auipc	a0, 3
802054ac: 13 05 05 44  	addi	a0, a0, 1088
802054b0: 23 34 a4 f8  	sd	a0, -120(s0)
802054b4: 05 45        	li	a0, 1
802054b6: 23 38 a4 f8  	sd	a0, -112(s0)
802054ba: 23 34 04 fa  	sd	zero, -88(s0)

00000000802054be <.Lpcrel_hi25>:
802054be: 17 35 00 00  	auipc	a0, 3
802054c2: 13 05 25 3b  	addi	a0, a0, 946
802054c6: 23 3c a4 f8  	sd	a0, -104(s0)
802054ca: 23 30 04 fa  	sd	zero, -96(s0)

00000000802054ce <.Lpcrel_hi26>:
;             panic!("mappages: size");
802054ce: 17 35 00 00  	auipc	a0, 3
802054d2: 93 05 a5 42  	addi	a1, a0, 1066
802054d6: 13 05 84 f8  	addi	a0, s0, -120
802054da: 97 10 00 00  	auipc	ra, 1
802054de: e7 80 e0 82  	jalr	-2002(ra)
802054e2: 00 00        	unimp	

00000000802054e4 <.Lpcrel_hi33>:
802054e4: 17 35 00 00  	auipc	a0, 3
802054e8: 13 05 45 40  	addi	a0, a0, 1028
802054ec: 23 34 a4 f8  	sd	a0, -120(s0)
802054f0: 05 45        	li	a0, 1
802054f2: 23 38 a4 f8  	sd	a0, -112(s0)
802054f6: 23 34 04 fa  	sd	zero, -88(s0)

00000000802054fa <.Lpcrel_hi34>:
802054fa: 17 35 00 00  	auipc	a0, 3
802054fe: 13 05 65 37  	addi	a0, a0, 886
80205502: 23 3c a4 f8  	sd	a0, -104(s0)
80205506: 23 30 04 fa  	sd	zero, -96(s0)

000000008020550a <.Lpcrel_hi35>:
;             panic!("mappages: size");
8020550a: 17 35 00 00  	auipc	a0, 3
8020550e: 93 05 e5 3e  	addi	a1, a0, 1006
80205512: 13 05 84 f8  	addi	a0, s0, -120
80205516: 97 00 00 00  	auipc	ra, 0
8020551a: e7 80 20 7f  	jalr	2034(ra)
8020551e: 00 00        	unimp	

0000000080205520 <.Lpcrel_hi49>:
80205520: 17 35 00 00  	auipc	a0, 3
80205524: 13 05 85 5b  	addi	a0, a0, 1464
80205528: 23 34 a4 f8  	sd	a0, -120(s0)
8020552c: 23 38 94 f8  	sd	s1, -112(s0)
80205530: 23 34 04 fa  	sd	zero, -88(s0)

0000000080205534 <.Lpcrel_hi50>:
80205534: 17 35 00 00  	auipc	a0, 3
80205538: 13 05 45 5b  	addi	a0, a0, 1460
8020553c: 23 3c a4 f8  	sd	a0, -104(s0)
80205540: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205544 <.Lpcrel_hi51>:
;             panic!("kvmmap");
80205544: 17 35 00 00  	auipc	a0, 3
80205548: 93 05 c5 5b  	addi	a1, a0, 1468
8020554c: 13 05 84 f8  	addi	a0, s0, -120
80205550: 97 00 00 00  	auipc	ra, 0
80205554: e7 80 80 7b  	jalr	1976(ra)
80205558: 00 00        	unimp	

000000008020555a <.Lpcrel_hi46>:
8020555a: 17 35 00 00  	auipc	a0, 3
8020555e: 13 05 65 35  	addi	a0, a0, 854
80205562: 23 34 a4 f8  	sd	a0, -120(s0)
80205566: 05 45        	li	a0, 1
80205568: 23 38 a4 f8  	sd	a0, -112(s0)
8020556c: 23 34 04 fa  	sd	zero, -88(s0)

0000000080205570 <.Lpcrel_hi47>:
80205570: 17 35 00 00  	auipc	a0, 3
80205574: 13 05 05 30  	addi	a0, a0, 768
80205578: 23 3c a4 f8  	sd	a0, -104(s0)
8020557c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080205580 <.Lpcrel_hi48>:
;                 panic!("mappages: remap");
80205580: 17 35 00 00  	auipc	a0, 3
80205584: 93 05 05 34  	addi	a1, a0, 832
80205588: 13 05 84 f8  	addi	a0, s0, -120
8020558c: 97 00 00 00  	auipc	ra, 0
80205590: e7 80 c0 77  	jalr	1916(ra)
80205594: 00 00        	unimp	

0000000080205596 <.Lpcrel_hi52>:
80205596: 17 35 00 00  	auipc	a0, 3
8020559a: 13 05 25 d2  	addi	a0, a0, -734

000000008020559e <.Lpcrel_hi53>:
8020559e: 97 35 00 00  	auipc	a1, 3
802055a2: 93 86 a5 d4  	addi	a3, a1, -694

00000000802055a6 <.Lpcrel_hi54>:
802055a6: 97 35 00 00  	auipc	a1, 3
802055aa: 13 87 25 d7  	addi	a4, a1, -654
802055ae: 93 05 b0 02  	li	a1, 43
802055b2: 13 06 84 fb  	addi	a2, s0, -72
802055b6: 97 00 00 00  	auipc	ra, 0
802055ba: e7 80 c0 7e  	jalr	2028(ra)
802055be: 00 00        	unimp	

00000000802055c0 <kvminithart>:
; pub fn kvminithart() {
802055c0: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802055c2: 86 f4        	sd	ra, 104(sp)
802055c4: a2 f0        	sd	s0, 96(sp)
802055c6: a6 ec        	sd	s1, 88(sp)
802055c8: ca e8        	sd	s2, 80(sp)
802055ca: ce e4        	sd	s3, 72(sp)
802055cc: 80 18        	addi	s0, sp, 112
802055ce: 73 00 00 12  	sfence.vma
802055d2: 0f 00 30 03  	fence	rw, rw

00000000802055d6 <.Lpcrel_hi55>:
802055d6: 17 e5 28 00  	auipc	a0, 654
802055da: 93 04 a5 bf  	addi	s1, a0, -1030
802055de: 88 68        	ld	a0, 16(s1)
802055e0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802055e4: 21 e9        	bnez	a0, 0x80205634 <.Lpcrel_hi55+0x5e>
802055e6: 93 85 04 01  	addi	a1, s1, 16
802055ea: 85 49        	li	s3, 1
802055ec: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802055f0: 31 e1        	bnez	a0, 0x80205634 <.Lpcrel_hi55+0x5e>
802055f2: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802055f6: 7d fa        	bnez	a2, 0x802055ec <.Lpcrel_hi55+0x16>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802055f8: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802055fc: 97 f0 ff ff  	auipc	ra, 1048575
80205600: e7 80 80 33  	jalr	824(ra)
80205604: 2a 89        	mv	s2, a0
80205606: 05 66        	lui	a2, 1
80205608: 81 45        	li	a1, 0
8020560a: 97 20 00 00  	auipc	ra, 2
8020560e: e7 80 a0 a7  	jalr	-1414(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80205612: 23 b0 34 01  	sd	s3, 0(s1)
80205616: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
8020561a: 23 04 04 fa  	sb	zero, -88(s0)
8020561e: 0f 00 10 03  	fence	rw, w
80205622: 09 45        	li	a0, 2
80205624: 88 e8        	sd	a0, 16(s1)
80205626: 13 05 04 fa  	addi	a0, s0, -96
8020562a: 97 00 00 00  	auipc	ra, 0
8020562e: e7 80 e0 10  	jalr	270(ra)
80205632: 05 a0        	j	0x80205652 <.Lpcrel_hi55+0x7c>
80205634: 85 45        	li	a1, 1
;             match status {
80205636: 63 1b b5 00  	bne	a0, a1, 0x8020564c <.Lpcrel_hi55+0x76>
8020563a: 0f 00 00 01  	fence	w, 0
8020563e: 0f 00 30 03  	fence	rw, rw
80205642: 88 68        	ld	a0, 16(s1)
80205644: 0f 00 30 02  	fence	r, rw
;             match status {
80205648: e3 09 b5 fe  	beq	a0, a1, 0x8020563a <.Lpcrel_hi55+0x64>
8020564c: 89 45        	li	a1, 2
;             match status {
8020564e: 63 16 b5 06  	bne	a0, a1, 0x802056ba <.Lpcrel_hi62+0x28>
;         self.data as Addr
80205652: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80205654: 31 81        	srli	a0, a0, 12
80205656: fd 55        	li	a1, -1
80205658: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
8020565a: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020565c: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80205660: 73 00 00 12  	sfence.vma
80205664: 13 05 04 fd  	addi	a0, s0, -48
;     Stdout.write_fmt(args).unwrap();
80205668: 23 3c a4 f8  	sd	a0, -104(s0)

000000008020566c <.Lpcrel_hi60>:
8020566c: 17 35 00 00  	auipc	a0, 3
80205670: 13 05 c5 4e  	addi	a0, a0, 1260
80205674: 23 30 a4 fa  	sd	a0, -96(s0)
80205678: 05 45        	li	a0, 1
8020567a: 23 34 a4 fa  	sd	a0, -88(s0)

000000008020567e <.Lpcrel_hi61>:
8020567e: 17 35 00 00  	auipc	a0, 3
80205682: 13 05 a5 46  	addi	a0, a0, 1130
80205686: 23 38 a4 fa  	sd	a0, -80(s0)
8020568a: 23 3c 04 fa  	sd	zero, -72(s0)
8020568e: 23 30 04 fc  	sd	zero, -64(s0)

0000000080205692 <.Lpcrel_hi62>:
80205692: 17 35 00 00  	auipc	a0, 3
80205696: 93 05 65 bf  	addi	a1, a0, -1034
8020569a: 13 05 84 f9  	addi	a0, s0, -104
8020569e: 13 06 04 fa  	addi	a2, s0, -96
802056a2: 97 10 00 00  	auipc	ra, 1
802056a6: e7 80 20 c8  	jalr	-894(ra)
802056aa: 31 e5        	bnez	a0, 0x802056f6 <.Lpcrel_hi63>
; }
802056ac: a6 70        	ld	ra, 104(sp)
802056ae: 06 74        	ld	s0, 96(sp)
802056b0: e6 64        	ld	s1, 88(sp)
802056b2: 46 69        	ld	s2, 80(sp)
802056b4: a6 69        	ld	s3, 72(sp)
802056b6: 65 61        	addi	sp, sp, 112
802056b8: 82 80        	ret
;             match status {
802056ba: 05 e1        	bnez	a0, 0x802056da <.Lpcrel_hi58>

00000000802056bc <.Lpcrel_hi56>:
;                 INCOMPLETE => unreachable!(),
802056bc: 17 35 00 00  	auipc	a0, 3
802056c0: 13 05 c5 9c  	addi	a0, a0, -1588

00000000802056c4 <.Lpcrel_hi57>:
802056c4: 97 35 00 00  	auipc	a1, 3
802056c8: 13 86 c5 9e  	addi	a2, a1, -1556
802056cc: 93 05 80 02  	li	a1, 40
802056d0: 97 00 00 00  	auipc	ra, 0
802056d4: e7 80 60 66  	jalr	1638(ra)
802056d8: 00 00        	unimp	

00000000802056da <.Lpcrel_hi58>:
;                 PANICKED => panic!("Once has panicked"),
802056da: 17 35 00 00  	auipc	a0, 3
802056de: 13 05 65 92  	addi	a0, a0, -1754

00000000802056e2 <.Lpcrel_hi59>:
802056e2: 97 35 00 00  	auipc	a1, 3
802056e6: 13 86 e5 98  	addi	a2, a1, -1650
802056ea: c5 45        	li	a1, 17
802056ec: 97 00 00 00  	auipc	ra, 0
802056f0: e7 80 a0 64  	jalr	1610(ra)
802056f4: 00 00        	unimp	

00000000802056f6 <.Lpcrel_hi63>:
802056f6: 17 35 00 00  	auipc	a0, 3
802056fa: 13 05 25 bc  	addi	a0, a0, -1086

00000000802056fe <.Lpcrel_hi64>:
802056fe: 97 35 00 00  	auipc	a1, 3
80205702: 93 86 a5 be  	addi	a3, a1, -1046

0000000080205706 <.Lpcrel_hi65>:
80205706: 97 35 00 00  	auipc	a1, 3
8020570a: 13 87 25 c1  	addi	a4, a1, -1006
8020570e: 93 05 b0 02  	li	a1, 43
80205712: 13 06 04 fd  	addi	a2, s0, -48
80205716: 97 00 00 00  	auipc	ra, 0
8020571a: e7 80 c0 68  	jalr	1676(ra)
8020571e: 00 00        	unimp	

0000000080205720 <__rust_alloc>:
80205720: 17 f3 ff ff  	auipc	t1, 1048575
80205724: 67 00 43 7d  	jr	2004(t1)

0000000080205728 <__rust_dealloc>:
80205728: 17 f3 ff ff  	auipc	t1, 1048575
8020572c: 67 00 03 7f  	jr	2032(t1)

0000000080205730 <__rust_alloc_error_handler>:
80205730: 17 03 00 00  	auipc	t1, 0
80205734: 67 00 a3 86  	jr	-1942(t1)

0000000080205738 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE>:
;     fn drop(&mut self) {
80205738: 41 11        	addi	sp, sp, -16
8020573a: 06 e4        	sd	ra, 8(sp)
8020573c: 22 e0        	sd	s0, 0(sp)
8020573e: 00 08        	addi	s0, sp, 16
;         if self.panicked {
80205740: 83 45 85 00  	lbu	a1, 8(a0)
80205744: 91 c5        	beqz	a1, 0x80205750 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h53168255b4c56abfE+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80205746: 08 61        	ld	a0, 0(a0)
80205748: 0f 00 10 03  	fence	rw, w
8020574c: 8d 45        	li	a1, 3
8020574e: 0c e1        	sd	a1, 0(a0)
;     }
80205750: a2 60        	ld	ra, 8(sp)
80205752: 02 64        	ld	s0, 0(sp)
80205754: 41 01        	addi	sp, sp, 16
80205756: 82 80        	ret

0000000080205758 <_ZN22buddy_system_allocator4Heap4init17h4df384204bea4151E>:
;     pub unsafe fn init(&mut self, start: usize, size: usize) {
80205758: 41 11        	addi	sp, sp, -16
;         self.add_to_heap(start, start + size);
8020575a: 06 e4        	sd	ra, 8(sp)
8020575c: 22 e0        	sd	s0, 0(sp)
8020575e: 00 08        	addi	s0, sp, 16
80205760: 2e 96        	add	a2, a2, a1
;         start = (start + size_of::<usize>() - 1) & (!size_of::<usize>() + 1);
80205762: 9d 05        	addi	a1, a1, 7
80205764: 93 f7 85 ff  	andi	a5, a1, -8
;         end = end & (!size_of::<usize>() + 1);
80205768: 93 7f 86 ff  	andi	t6, a2, -8
;         assert!(start <= end);
8020576c: 63 e9 ff 10  	bltu	t6, a5, 0x8020587e <.Lpcrel_hi15>
80205770: 01 47        	li	a4, 0
;         while current_start + size_of::<usize>() <= end {
80205772: 93 85 87 00  	addi	a1, a5, 8
80205776: 63 ef bf 0c  	bltu	t6, a1, 0x80205854 <.Lpcrel_hi10+0xae>
8020577a: 05 48        	li	a6, 1

000000008020577c <.Lpcrel_hi9>:
8020577c: 97 55 00 00  	auipc	a1, 5
80205780: 83 b8 c5 8d  	ld	a7, -1828(a1)

0000000080205784 <.Lpcrel_hi11>:
80205784: 97 55 00 00  	auipc	a1, 5
80205788: 83 b2 45 8b  	ld	t0, -1868(a1)

000000008020578c <.Lpcrel_hi12>:
8020578c: 97 55 00 00  	auipc	a1, 5
80205790: 03 bf 45 8b  	ld	t5, -1868(a1)

0000000080205794 <.Lpcrel_hi13>:
80205794: 97 55 00 00  	auipc	a1, 5
80205798: 03 b3 45 8b  	ld	t1, -1868(a1)

000000008020579c <.Lpcrel_hi14>:
8020579c: 97 55 00 00  	auipc	a1, 5
802057a0: 83 b3 45 8b  	ld	t2, -1868(a1)
802057a4: 7d 4e        	li	t3, 31

00000000802057a6 <.Lpcrel_hi10>:
802057a6: 97 35 00 00  	auipc	a1, 3
802057aa: 93 8e 25 40  	addi	t4, a1, 1026
;             let size = min(lowbit, prev_power_of_two(end - current_start));
802057ae: b3 85 ff 40  	sub	a1, t6, a5
802057b2: a9 c9        	beqz	a1, 0x80205804 <.Lpcrel_hi10+0x5e>
802057b4: 93 d6 15 00  	srli	a3, a1, 1
802057b8: d5 8d        	or	a1, a1, a3
802057ba: 93 d6 25 00  	srli	a3, a1, 2
802057be: d5 8d        	or	a1, a1, a3
802057c0: 93 d6 45 00  	srli	a3, a1, 4
802057c4: d5 8d        	or	a1, a1, a3
802057c6: 93 d6 85 00  	srli	a3, a1, 8
802057ca: d5 8d        	or	a1, a1, a3
802057cc: 93 d6 05 01  	srli	a3, a1, 16
802057d0: d5 8d        	or	a1, a1, a3
802057d2: 93 d6 05 02  	srli	a3, a1, 32
802057d6: d5 8d        	or	a1, a1, a3
802057d8: 93 c5 f5 ff  	not	a1, a1
802057dc: 93 d6 15 00  	srli	a3, a1, 1
802057e0: b3 f6 56 00  	and	a3, a3, t0
802057e4: 95 8d        	sub	a1, a1, a3
802057e6: b3 f6 e5 01  	and	a3, a1, t5
802057ea: 89 81        	srli	a1, a1, 2
802057ec: b3 f5 e5 01  	and	a1, a1, t5
802057f0: b6 95        	add	a1, a1, a3
802057f2: 93 d6 45 00  	srli	a3, a1, 4
802057f6: b6 95        	add	a1, a1, a3
802057f8: b3 f5 65 00  	and	a1, a1, t1
802057fc: b3 86 75 02  	mul	a3, a1, t2
80205800: e1 92        	srli	a3, a3, 56
80205802: 19 a0        	j	0x80205808 <.Lpcrel_hi10+0x62>
80205804: 93 06 00 04  	li	a3, 64
80205808: b3 05 f0 40  	neg	a1, a5
8020580c: fd 8d        	and	a1, a1, a5
;     1 << (8 * (size_of::<usize>()) - num.leading_zeros() as usize - 1)
8020580e: 93 c6 f6 ff  	not	a3, a3
80205812: b3 16 d8 00  	sll	a3, a6, a3
80205816: 63 e3 d5 00  	bltu	a1, a3, 0x8020581c <.Lpcrel_hi10+0x76>
8020581a: b6 85        	mv	a1, a3
8020581c: 89 cd        	beqz	a1, 0x80205836 <.Lpcrel_hi10+0x90>
8020581e: b3 06 b0 40  	neg	a3, a1
80205822: ed 8e        	and	a3, a3, a1
80205824: b3 86 16 03  	mul	a3, a3, a7
80205828: e9 92        	srli	a3, a3, 58
8020582a: f6 96        	add	a3, a3, t4
8020582c: 83 c6 06 00  	lbu	a3, 0(a3)
80205830: 63 77 de 00  	bgeu	t3, a3, 0x8020583e <.Lpcrel_hi10+0x98>
80205834: 0d a8        	j	0x80205866 <.Lpcrel_hi17>
80205836: 93 06 00 04  	li	a3, 64
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
8020583a: 63 66 de 02  	bltu	t3, a3, 0x80205866 <.Lpcrel_hi17>
8020583e: 8e 06        	slli	a3, a3, 3
80205840: aa 96        	add	a3, a3, a0
;         *item = self.head as usize;
80205842: 90 62        	ld	a2, 0(a3)
80205844: 90 e3        	sd	a2, 0(a5)
;         self.head = item;
80205846: 9c e2        	sd	a5, 0(a3)
;             current_start += size;
80205848: ae 97        	add	a5, a5, a1
;         while current_start + size_of::<usize>() <= end {
8020584a: 13 86 87 00  	addi	a2, a5, 8
;             total += size;
8020584e: 2e 97        	add	a4, a4, a1
;         while current_start + size_of::<usize>() <= end {
80205850: e3 ff cf f4  	bgeu	t6, a2, 0x802057ae <.Lpcrel_hi10+0x8>
;         self.total += total;
80205854: 83 35 05 11  	ld	a1, 272(a0)
80205858: ba 95        	add	a1, a1, a4
8020585a: 23 38 b5 10  	sd	a1, 272(a0)
;     }
8020585e: a2 60        	ld	ra, 8(sp)
80205860: 02 64        	ld	s0, 0(sp)
80205862: 41 01        	addi	sp, sp, 16
80205864: 82 80        	ret

0000000080205866 <.Lpcrel_hi17>:
;             self.free_list[size.trailing_zeros() as usize].push(current_start as *mut usize);
80205866: 17 35 00 00  	auipc	a0, 3
8020586a: 13 06 a5 4a  	addi	a2, a0, 1194
8020586e: 93 05 00 02  	li	a1, 32
80205872: 36 85        	mv	a0, a3
80205874: 97 00 00 00  	auipc	ra, 0
80205878: e7 80 e0 4e  	jalr	1262(ra)
8020587c: 00 00        	unimp	

000000008020587e <.Lpcrel_hi15>:
;         assert!(start <= end);
8020587e: 17 35 00 00  	auipc	a0, 3
80205882: 13 05 a5 3e  	addi	a0, a0, 1002

0000000080205886 <.Lpcrel_hi16>:
80205886: 97 35 00 00  	auipc	a1, 3
8020588a: 13 86 25 47  	addi	a2, a1, 1138
8020588e: f9 45        	li	a1, 30
80205890: 97 00 00 00  	auipc	ra, 0
80205894: e7 80 60 4a  	jalr	1190(ra)
80205898: 00 00        	unimp	

000000008020589a <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E>:
;     pub fn alloc(&mut self, layout: Layout) -> Result<NonNull<u8>, ()> {
8020589a: 41 11        	addi	sp, sp, -16
8020589c: 06 e4        	sd	ra, 8(sp)
8020589e: 22 e0        	sd	s0, 0(sp)
802058a0: 00 08        	addi	s0, sp, 16
802058a2: 09 47        	li	a4, 2
802058a4: 85 46        	li	a3, 1
802058a6: 63 78 e6 0c  	bgeu	a2, a4, 0x80205976 <.Lpcrel_hi23+0xaa>
802058aa: 63 f4 b6 14  	bgeu	a3, a1, 0x802059f2 <.Lpcrel_hi21+0x22>
802058ae: a1 46        	li	a3, 8
802058b0: 63 f5 b6 14  	bgeu	a3, a1, 0x802059fa <.Lpcrel_hi21+0x2a>
802058b4: 63 86 05 14  	beqz	a1, 0x80205a00 <.Lpcrel_hi21+0x30>

00000000802058b8 <.Lpcrel_hi22>:
802058b8: 97 46 00 00  	auipc	a3, 4
802058bc: 83 b6 86 7c  	ld	a3, 1992(a3)
802058c0: 33 07 b0 40  	neg	a4, a1
802058c4: 6d 8f        	and	a4, a4, a1
802058c6: b3 06 d7 02  	mul	a3, a4, a3
802058ca: e9 92        	srli	a3, a3, 58

00000000802058cc <.Lpcrel_hi23>:
802058cc: 17 37 00 00  	auipc	a4, 3
802058d0: 13 07 c7 31  	addi	a4, a4, 796
802058d4: ba 96        	add	a3, a3, a4
802058d6: 83 c8 06 00  	lbu	a7, 0(a3)
802058da: 93 06 00 02  	li	a3, 32
802058de: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
802058e0: 63 e4 16 01  	bltu	a3, a7, 0x802058e8 <.Lpcrel_hi23+0x1c>
802058e4: 93 02 00 02  	li	t0, 32
;         for i in class..self.free_list.len() {
802058e8: 13 98 38 00  	slli	a6, a7, 3
802058ec: 2a 98        	add	a6, a6, a0
802058ee: 93 07 08 ff  	addi	a5, a6, -16
802058f2: 46 87        	mv	a4, a7
802058f4: 63 8b e2 06  	beq	t0, a4, 0x8020596a <.Lpcrel_hi23+0x9e>
;         self.head.is_null()
802058f8: 83 be 07 01  	ld	t4, 16(a5)
802058fc: 05 07        	addi	a4, a4, 1
;             if !self.free_list[i].is_empty() {
802058fe: a1 07        	addi	a5, a5, 8
80205900: e3 8a 0e fe  	beqz	t4, 0x802058f4 <.Lpcrel_hi23+0x28>
80205904: 93 06 f7 ff  	addi	a3, a4, -1
80205908: 63 fc d8 02  	bgeu	a7, a3, 0x80205940 <.Lpcrel_hi23+0x74>
8020590c: 93 82 18 00  	addi	t0, a7, 1
80205910: 7d 43        	li	t1, 31
80205912: 85 43        	li	t2, 1
;                 self.head = unsafe { *item as *mut usize };
80205914: 83 b6 0e 00  	ld	a3, 0(t4)
;                             self.free_list[j - 1]
80205918: 13 0e e7 ff  	addi	t3, a4, -2
;                 self.head = unsafe { *item as *mut usize };
8020591c: 94 e7        	sd	a3, 8(a5)
;                             self.free_list[j - 1]
8020591e: 63 69 c3 0f  	bltu	t1, t3, 0x80205a10 <.Lpcrel_hi24>
;         *item = self.head as usize;
80205922: 03 bf 07 00  	ld	t5, 0(a5)
80205926: 7d 17        	addi	a4, a4, -1
;                                 .push((block as usize + (1 << (j - 1))) as *mut usize);
80205928: b3 96 c3 01  	sll	a3, t2, t3
8020592c: f6 96        	add	a3, a3, t4
;         *item = self.head as usize;
8020592e: 23 b0 e6 01  	sd	t5, 0(a3)
80205932: 23 b0 de 00  	sd	a3, 0(t4)
;         self.head = item;
80205936: 23 b0 d7 01  	sd	t4, 0(a5)
8020593a: e1 17        	addi	a5, a5, -8
8020593c: e3 ec e2 fc  	bltu	t0, a4, 0x80205914 <.Lpcrel_hi23+0x48>
80205940: 93 06 00 02  	li	a3, 32
;                     self.free_list[class]
80205944: 63 f2 d8 0e  	bgeu	a7, a3, 0x80205a28 <.Lpcrel_hi25>
;         self.head.is_null()
80205948: 83 36 08 00  	ld	a3, 0(a6)
;         match self.is_empty() {
8020594c: f5 ca        	beqz	a3, 0x80205a40 <.Lpcrel_hi26>
;                 self.head = unsafe { *item as *mut usize };
8020594e: 98 62        	ld	a4, 0(a3)
80205950: 23 30 e8 00  	sd	a4, 0(a6)
;                     self.user += layout.size();
80205954: 03 37 05 10  	ld	a4, 256(a0)
;                     self.allocated += size;
80205958: 83 37 85 10  	ld	a5, 264(a0)
;                     self.user += layout.size();
8020595c: 3a 96        	add	a2, a2, a4
8020595e: 23 30 c5 10  	sd	a2, 256(a0)
;                     self.allocated += size;
80205962: be 95        	add	a1, a1, a5
80205964: 23 34 b5 10  	sd	a1, 264(a0)
80205968: 11 a0        	j	0x8020596c <.Lpcrel_hi23+0xa0>
8020596a: 81 46        	li	a3, 0
;     }
8020596c: 36 85        	mv	a0, a3
8020596e: a2 60        	ld	ra, 8(sp)
80205970: 02 64        	ld	s0, 0(sp)
80205972: 41 01        	addi	sp, sp, 16
80205974: 82 80        	ret
80205976: 93 06 f6 ff  	addi	a3, a2, -1
8020597a: 13 d7 16 00  	srli	a4, a3, 1
8020597e: d9 8e        	or	a3, a3, a4
80205980: 13 d7 26 00  	srli	a4, a3, 2
80205984: d9 8e        	or	a3, a3, a4
80205986: 13 d7 46 00  	srli	a4, a3, 4
8020598a: d9 8e        	or	a3, a3, a4
8020598c: 13 d7 86 00  	srli	a4, a3, 8
80205990: d9 8e        	or	a3, a3, a4
80205992: 13 d7 06 01  	srli	a4, a3, 16
80205996: d9 8e        	or	a3, a3, a4
80205998: 13 d7 06 02  	srli	a4, a3, 32
8020599c: d9 8e        	or	a3, a3, a4
8020599e: 13 c8 f6 ff  	not	a6, a3

00000000802059a2 <.Lpcrel_hi18>:
802059a2: 17 47 00 00  	auipc	a4, 4
802059a6: 03 37 e7 6b  	ld	a4, 1726(a4)

00000000802059aa <.Lpcrel_hi19>:
802059aa: 97 47 00 00  	auipc	a5, 4
802059ae: 83 b7 e7 6b  	ld	a5, 1726(a5)
802059b2: 93 56 18 00  	srli	a3, a6, 1
802059b6: f9 8e        	and	a3, a3, a4
802059b8: b3 06 d8 40  	sub	a3, a6, a3
802059bc: 33 f7 f6 00  	and	a4, a3, a5
802059c0: 89 82        	srli	a3, a3, 2
802059c2: fd 8e        	and	a3, a3, a5
802059c4: 33 08 d7 00  	add	a6, a4, a3

00000000802059c8 <.Lpcrel_hi20>:
802059c8: 17 47 00 00  	auipc	a4, 4
802059cc: 03 37 87 6a  	ld	a4, 1704(a4)

00000000802059d0 <.Lpcrel_hi21>:
802059d0: 97 47 00 00  	auipc	a5, 4
802059d4: 83 b7 87 6a  	ld	a5, 1704(a5)
802059d8: 93 56 48 00  	srli	a3, a6, 4
802059dc: c2 96        	add	a3, a3, a6
802059de: f9 8e        	and	a3, a3, a4
802059e0: b3 86 f6 02  	mul	a3, a3, a5
802059e4: e1 92        	srli	a3, a3, 56
802059e6: 7d 57        	li	a4, -1
802059e8: b3 56 d7 00  	srl	a3, a4, a3
802059ec: 85 06        	addi	a3, a3, 1
802059ee: e3 e0 b6 ec  	bltu	a3, a1, 0x802058ae <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x14>
802059f2: b6 85        	mv	a1, a3
802059f4: a1 46        	li	a3, 8
802059f6: e3 ef b6 ea  	bltu	a3, a1, 0x802058b4 <_ZN22buddy_system_allocator4Heap5alloc17had7467662c23da40E+0x1a>
802059fa: a1 45        	li	a1, 8
802059fc: e3 9e 05 ea  	bnez	a1, 0x802058b8 <.Lpcrel_hi22>
80205a00: 93 08 00 04  	li	a7, 64
80205a04: 93 06 00 02  	li	a3, 32
80205a08: c6 82        	mv	t0, a7
;         for i in class..self.free_list.len() {
80205a0a: e3 fd 16 ed  	bgeu	a3, a7, 0x802058e4 <.Lpcrel_hi23+0x18>
80205a0e: e9 bd        	j	0x802058e8 <.Lpcrel_hi23+0x1c>

0000000080205a10 <.Lpcrel_hi24>:
;                             self.free_list[j - 1]
80205a10: 17 35 00 00  	auipc	a0, 3
80205a14: 13 06 05 34  	addi	a2, a0, 832
80205a18: 7d 55        	li	a0, -1
80205a1a: 93 05 00 02  	li	a1, 32
80205a1e: 97 00 00 00  	auipc	ra, 0
80205a22: e7 80 40 34  	jalr	836(ra)
80205a26: 00 00        	unimp	

0000000080205a28 <.Lpcrel_hi25>:
;                     self.free_list[class]
80205a28: 17 35 00 00  	auipc	a0, 3
80205a2c: 13 06 05 34  	addi	a2, a0, 832
80205a30: 93 05 00 02  	li	a1, 32
80205a34: 46 85        	mv	a0, a7
80205a36: 97 00 00 00  	auipc	ra, 0
80205a3a: e7 80 c0 32  	jalr	812(ra)
80205a3e: 00 00        	unimp	

0000000080205a40 <.Lpcrel_hi26>:
80205a40: 17 35 00 00  	auipc	a0, 3
80205a44: 13 05 85 2e  	addi	a0, a0, 744

0000000080205a48 <.Lpcrel_hi27>:
80205a48: 97 35 00 00  	auipc	a1, 3
80205a4c: 13 86 85 33  	addi	a2, a1, 824
80205a50: 93 05 80 02  	li	a1, 40
80205a54: 97 00 00 00  	auipc	ra, 0
80205a58: e7 80 20 27  	jalr	626(ra)
80205a5c: 00 00        	unimp	

0000000080205a5e <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE>:
;     pub fn dealloc(&mut self, ptr: NonNull<u8>, layout: Layout) {
80205a5e: 41 11        	addi	sp, sp, -16
80205a60: 06 e4        	sd	ra, 8(sp)
80205a62: 22 e0        	sd	s0, 0(sp)
80205a64: 00 08        	addi	s0, sp, 16
80205a66: 89 47        	li	a5, 2
80205a68: 05 47        	li	a4, 1
80205a6a: 63 fa f6 0a  	bgeu	a3, a5, 0x80205b1e <.Lpcrel_hi33+0x8e>
80205a6e: 63 78 c7 12  	bgeu	a4, a2, 0x80205b9e <.Lpcrel_hi31+0x24>
80205a72: 21 47        	li	a4, 8
80205a74: 63 79 c7 12  	bgeu	a4, a2, 0x80205ba6 <.Lpcrel_hi31+0x2c>
80205a78: 63 0a 06 12  	beqz	a2, 0x80205bac <.Lpcrel_hi31+0x32>

0000000080205a7c <.Lpcrel_hi32>:
80205a7c: 17 47 00 00  	auipc	a4, 4
80205a80: 03 37 c7 62  	ld	a4, 1580(a4)
80205a84: b3 07 c0 40  	neg	a5, a2
80205a88: f1 8f        	and	a5, a5, a2
80205a8a: 33 87 e7 02  	mul	a4, a5, a4
80205a8e: 69 93        	srli	a4, a4, 58

0000000080205a90 <.Lpcrel_hi33>:
80205a90: 97 37 00 00  	auipc	a5, 3
80205a94: 93 87 87 19  	addi	a5, a5, 408
80205a98: 3e 97        	add	a4, a4, a5
80205a9a: 03 43 07 00  	lbu	t1, 0(a4)
80205a9e: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80205aa0: 63 6b 68 10  	bltu	a6, t1, 0x80205bb6 <.Lpcrel_hi34>
80205aa4: 13 17 33 00  	slli	a4, t1, 3
80205aa8: 2a 97        	add	a4, a4, a0
;         *item = self.head as usize;
80205aaa: 1c 63        	ld	a5, 0(a4)
80205aac: 9c e1        	sd	a5, 0(a1)
;         self.head = item;
80205aae: 0c e3        	sd	a1, 0(a4)
80205ab0: 85 48        	li	a7, 1
80205ab2: ae 82        	mv	t0, a1
;                 let buddy = current_ptr ^ (1 << current_class);
80205ab4: 33 97 68 00  	sll	a4, a7, t1
;                 for block in self.free_list[current_class].iter_mut() {
80205ab8: 93 13 33 00  	slli	t2, t1, 3
80205abc: aa 93        	add	t2, t2, a0
;                 let buddy = current_ptr ^ (1 << current_class);
80205abe: 33 ce e2 00  	xor	t3, t0, a4
80205ac2: 1e 87        	mv	a4, t2
;         if self.curr.is_null() {
80205ac4: 9d cd        	beqz	a1, 0x80205b02 <.Lpcrel_hi33+0x72>
80205ac6: ae 87        	mv	a5, a1
80205ac8: ba 8e        	mv	t4, a4
;             self.curr = unsafe { *self.curr as *mut usize };
80205aca: 8c 61        	ld	a1, 0(a1)
80205acc: 3e 87        	mv	a4, a5
;                     if block.value() as usize == buddy {
80205ace: e3 1b fe fe  	bne	t3, a5, 0x80205ac4 <.Lpcrel_hi33+0x34>
;             *(self.prev) = *(self.curr);
80205ad2: 23 b0 be 00  	sd	a1, 0(t4)
;         self.head.is_null()
80205ad6: 83 b5 03 00  	ld	a1, 0(t2)
;         match self.is_empty() {
80205ada: 81 c5        	beqz	a1, 0x80205ae2 <.Lpcrel_hi33+0x52>
;                 self.head = unsafe { *item as *mut usize };
80205adc: 8c 61        	ld	a1, 0(a1)
80205ade: 23 b0 b3 00  	sd	a1, 0(t2)
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80205ae2: 63 06 03 0f  	beq	t1, a6, 0x80205bce <.Lpcrel_hi35>
80205ae6: 63 e3 c2 01  	bltu	t0, t3, 0x80205aec <.Lpcrel_hi33+0x5c>
80205aea: f2 82        	mv	t0, t3
80205aec: 05 03        	addi	t1, t1, 1
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80205aee: 93 15 33 00  	slli	a1, t1, 3
80205af2: aa 95        	add	a1, a1, a0
;         *item = self.head as usize;
80205af4: 98 61        	ld	a4, 0(a1)
80205af6: 23 b0 e2 00  	sd	a4, 0(t0)
;         self.head = item;
80205afa: 23 b0 55 00  	sd	t0, 0(a1)
80205afe: 96 85        	mv	a1, t0
80205b00: 55 bf        	j	0x80205ab4 <.Lpcrel_hi33+0x24>
;         self.user -= layout.size();
80205b02: 83 35 05 10  	ld	a1, 256(a0)
;         self.allocated -= size;
80205b06: 03 37 85 10  	ld	a4, 264(a0)
;         self.user -= layout.size();
80205b0a: 95 8d        	sub	a1, a1, a3
80205b0c: 23 30 b5 10  	sd	a1, 256(a0)
;         self.allocated -= size;
80205b10: 11 8f        	sub	a4, a4, a2
80205b12: 23 34 e5 10  	sd	a4, 264(a0)
;     }
80205b16: a2 60        	ld	ra, 8(sp)
80205b18: 02 64        	ld	s0, 0(sp)
80205b1a: 41 01        	addi	sp, sp, 16
80205b1c: 82 80        	ret
80205b1e: 13 87 f6 ff  	addi	a4, a3, -1
80205b22: 93 57 17 00  	srli	a5, a4, 1
80205b26: 5d 8f        	or	a4, a4, a5
80205b28: 93 57 27 00  	srli	a5, a4, 2
80205b2c: 5d 8f        	or	a4, a4, a5
80205b2e: 93 57 47 00  	srli	a5, a4, 4
80205b32: 5d 8f        	or	a4, a4, a5
80205b34: 93 57 87 00  	srli	a5, a4, 8
80205b38: 5d 8f        	or	a4, a4, a5
80205b3a: 93 57 07 01  	srli	a5, a4, 16
80205b3e: 5d 8f        	or	a4, a4, a5
80205b40: 93 57 07 02  	srli	a5, a4, 32
80205b44: 5d 8f        	or	a4, a4, a5
80205b46: 93 48 f7 ff  	not	a7, a4

0000000080205b4a <.Lpcrel_hi28>:
80205b4a: 97 47 00 00  	auipc	a5, 4
80205b4e: 03 b8 e7 53  	ld	a6, 1342(a5)

0000000080205b52 <.Lpcrel_hi29>:
80205b52: 97 47 00 00  	auipc	a5, 4
80205b56: 83 b7 e7 53  	ld	a5, 1342(a5)
80205b5a: 13 d7 18 00  	srli	a4, a7, 1
80205b5e: 33 77 07 01  	and	a4, a4, a6
80205b62: 33 87 e8 40  	sub	a4, a7, a4
80205b66: 33 78 f7 00  	and	a6, a4, a5
80205b6a: 09 83        	srli	a4, a4, 2
80205b6c: 7d 8f        	and	a4, a4, a5
80205b6e: b3 08 e8 00  	add	a7, a6, a4

0000000080205b72 <.Lpcrel_hi30>:
80205b72: 97 47 00 00  	auipc	a5, 4
80205b76: 03 b8 67 52  	ld	a6, 1318(a5)

0000000080205b7a <.Lpcrel_hi31>:
80205b7a: 97 47 00 00  	auipc	a5, 4
80205b7e: 83 b7 67 52  	ld	a5, 1318(a5)
80205b82: 13 d7 48 00  	srli	a4, a7, 4
80205b86: 46 97        	add	a4, a4, a7
80205b88: 33 77 07 01  	and	a4, a4, a6
80205b8c: 33 07 f7 02  	mul	a4, a4, a5
80205b90: 61 93        	srli	a4, a4, 56
80205b92: fd 57        	li	a5, -1
80205b94: 33 d7 e7 00  	srl	a4, a5, a4
80205b98: 05 07        	addi	a4, a4, 1
80205b9a: e3 6c c7 ec  	bltu	a4, a2, 0x80205a72 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x14>
80205b9e: 3a 86        	mv	a2, a4
80205ba0: 21 47        	li	a4, 8
80205ba2: e3 6b c7 ec  	bltu	a4, a2, 0x80205a78 <_ZN22buddy_system_allocator4Heap7dealloc17h9c4be755fa31d48bE+0x1a>
80205ba6: 21 46        	li	a2, 8
80205ba8: e3 1a 06 ec  	bnez	a2, 0x80205a7c <.Lpcrel_hi32>
80205bac: 13 03 00 04  	li	t1, 64
80205bb0: 7d 48        	li	a6, 31
;             self.free_list[class].push(ptr.as_ptr() as *mut usize);
80205bb2: e3 79 68 ee  	bgeu	a6, t1, 0x80205aa4 <.Lpcrel_hi33+0x14>

0000000080205bb6 <.Lpcrel_hi34>:
80205bb6: 17 35 00 00  	auipc	a0, 3
80205bba: 13 06 25 1e  	addi	a2, a0, 482
80205bbe: 93 05 00 02  	li	a1, 32
80205bc2: 1a 85        	mv	a0, t1
80205bc4: 97 00 00 00  	auipc	ra, 0
80205bc8: e7 80 e0 19  	jalr	414(ra)
80205bcc: 00 00        	unimp	

0000000080205bce <.Lpcrel_hi35>:
;                     self.free_list[current_class].push(current_ptr as *mut usize);
80205bce: 17 35 00 00  	auipc	a0, 3
80205bd2: 13 06 25 1e  	addi	a2, a0, 482
80205bd6: 13 05 00 02  	li	a0, 32
80205bda: 93 05 00 02  	li	a1, 32
80205bde: 97 00 00 00  	auipc	ra, 0
80205be2: e7 80 40 18  	jalr	388(ra)
80205be6: 00 00        	unimp	

0000000080205be8 <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4bd999852049e66aE>:
;     fn deref(&self) -> &Mutex<Heap> {
80205be8: 41 11        	addi	sp, sp, -16
;     }
80205bea: 06 e4        	sd	ra, 8(sp)
80205bec: 22 e0        	sd	s0, 0(sp)
80205bee: 00 08        	addi	s0, sp, 16
80205bf0: a2 60        	ld	ra, 8(sp)
80205bf2: 02 64        	ld	s0, 0(sp)
80205bf4: 41 01        	addi	sp, sp, 16
80205bf6: 82 80        	ret

0000000080205bf8 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E>:
;     unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
80205bf8: 01 11        	addi	sp, sp, -32
80205bfa: 06 ec        	sd	ra, 24(sp)
80205bfc: 22 e8        	sd	s0, 16(sp)
80205bfe: 26 e4        	sd	s1, 8(sp)
80205c00: 4a e0        	sd	s2, 0(sp)
80205c02: 00 10        	addi	s0, sp, 32
80205c04: aa 84        	mv	s1, a0
80205c06: 05 45        	li	a0, 1
80205c08: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80205c0c: 88 64        	ld	a0, 8(s1)
80205c0e: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80205c12: 63 09 25 01  	beq	a0, s2, 0x80205c24 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x2c>
80205c16: 0f 00 00 01  	fence	w, 0
80205c1a: 88 64        	ld	a0, 8(s1)
80205c1c: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80205c20: e3 1b 25 ff  	bne	a0, s2, 0x80205c16 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hff91ed37068e57b3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80205c24: 13 85 04 01  	addi	a0, s1, 16
;         self.0
80205c28: 97 00 00 00  	auipc	ra, 0
80205c2c: e7 80 20 c7  	jalr	-910(ra)
;         let new_ticket = self.ticket + 1;
80205c30: 05 09        	addi	s2, s2, 1
80205c32: 0f 00 10 03  	fence	rw, w
80205c36: 23 b4 24 01  	sd	s2, 8(s1)
;     }
80205c3a: e2 60        	ld	ra, 24(sp)
80205c3c: 42 64        	ld	s0, 16(sp)
80205c3e: a2 64        	ld	s1, 8(sp)
80205c40: 02 69        	ld	s2, 0(sp)
80205c42: 05 61        	addi	sp, sp, 32
80205c44: 82 80        	ret

0000000080205c46 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E>:
;     unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
80205c46: 01 11        	addi	sp, sp, -32
80205c48: 06 ec        	sd	ra, 24(sp)
80205c4a: 22 e8        	sd	s0, 16(sp)
80205c4c: 26 e4        	sd	s1, 8(sp)
80205c4e: 4a e0        	sd	s2, 0(sp)
80205c50: 00 10        	addi	s0, sp, 32
80205c52: aa 84        	mv	s1, a0
80205c54: 05 45        	li	a0, 1
80205c56: 2f b9 a4 00  	amoadd.d	s2, a0, (s1)
80205c5a: 88 64        	ld	a0, 8(s1)
80205c5c: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80205c60: 63 09 25 01  	beq	a0, s2, 0x80205c72 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x2c>
80205c64: 0f 00 00 01  	fence	w, 0
80205c68: 88 64        	ld	a0, 8(s1)
80205c6a: 0f 00 30 02  	fence	r, rw
;         while self.next_serving.load(Ordering::Acquire) != ticket {
80205c6e: e3 1b 25 ff  	bne	a0, s2, 0x80205c64 <_ZN87_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17hc5ea1f580531e4c3E+0x1e>
;             value: unsafe { &mut *self.value.get() },
80205c72: 13 85 04 01  	addi	a0, s1, 16
;         self.0.lock().dealloc(NonNull::new_unchecked(ptr), layout)
80205c76: 97 00 00 00  	auipc	ra, 0
80205c7a: e7 80 80 de  	jalr	-536(ra)
;         let new_ticket = self.ticket + 1;
80205c7e: 05 09        	addi	s2, s2, 1
80205c80: 0f 00 10 03  	fence	rw, w
80205c84: 23 b4 24 01  	sd	s2, 8(s1)
;     }
80205c88: e2 60        	ld	ra, 24(sp)
80205c8a: 42 64        	ld	s0, 16(sp)
80205c8c: a2 64        	ld	s1, 8(sp)
80205c8e: 02 69        	ld	s2, 0(sp)
80205c90: 05 61        	addi	sp, sp, 32
80205c92: 82 80        	ret

0000000080205c94 <_ZN5alloc5alloc18handle_alloc_error17hfc18f66702a5f8beE>:
80205c94: 41 11        	addi	sp, sp, -16
80205c96: 06 e4        	sd	ra, 8(sp)
80205c98: 97 00 00 00  	auipc	ra, 0
80205c9c: e7 80 a0 00  	jalr	10(ra)
80205ca0: 00 00        	unimp	

0000000080205ca2 <_ZN5alloc5alloc18handle_alloc_error8rt_error17h220cf34c5c4409f6E>:
80205ca2: 41 11        	addi	sp, sp, -16
80205ca4: 06 e4        	sd	ra, 8(sp)
80205ca6: 2a 86        	mv	a2, a0
80205ca8: 2e 85        	mv	a0, a1
80205caa: b2 85        	mv	a1, a2
80205cac: 97 00 00 00  	auipc	ra, 0
80205cb0: e7 80 40 a8  	jalr	-1404(ra)
80205cb4: 00 00        	unimp	

0000000080205cb6 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E>:
80205cb6: 08 61        	ld	a0, 0(a0)
80205cb8: 01 a0        	j	0x80205cb8 <_ZN4core3ops8function6FnOnce9call_once17h306486fb198b9f00E+0x2>

0000000080205cba <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h2fc17d7bb72e872bE>:
80205cba: 82 80        	ret

0000000080205cbc <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hefbdec640a0b52b8E>:
80205cbc: 17 45 00 00  	auipc	a0, 4
80205cc0: 03 35 c5 52  	ld	a0, 1324(a0)
80205cc4: 82 80        	ret

0000000080205cc6 <_ZN4core6option13expect_failed17h1f14a99d25145af5E>:
80205cc6: 1d 71        	addi	sp, sp, -96
80205cc8: 86 ec        	sd	ra, 88(sp)
80205cca: 2a e4        	sd	a0, 8(sp)
80205ccc: 2e e8        	sd	a1, 16(sp)
80205cce: 28 00        	addi	a0, sp, 8
80205cd0: aa e4        	sd	a0, 72(sp)

0000000080205cd2 <.Lpcrel_hi452>:
80205cd2: 17 15 00 00  	auipc	a0, 1
80205cd6: 13 05 c5 2e  	addi	a0, a0, 748
80205cda: aa e8        	sd	a0, 80(sp)

0000000080205cdc <.Lpcrel_hi453>:
80205cdc: 17 35 00 00  	auipc	a0, 3
80205ce0: 13 05 45 1a  	addi	a0, a0, 420
80205ce4: 2a ec        	sd	a0, 24(sp)
80205ce6: 05 45        	li	a0, 1
80205ce8: 2a f0        	sd	a0, 32(sp)
80205cea: 02 fc        	sd	zero, 56(sp)
80205cec: ac 00        	addi	a1, sp, 72
80205cee: 2e f4        	sd	a1, 40(sp)
80205cf0: 2a f8        	sd	a0, 48(sp)
80205cf2: 28 08        	addi	a0, sp, 24
80205cf4: b2 85        	mv	a1, a2
80205cf6: 97 00 00 00  	auipc	ra, 0
80205cfa: e7 80 20 01  	jalr	18(ra)
80205cfe: 00 00        	unimp	

0000000080205d00 <_ZN4core5panic10panic_info9PanicInfo7message17h865721735bde2e5cE>:
80205d00: 08 6d        	ld	a0, 24(a0)
80205d02: 82 80        	ret

0000000080205d04 <_ZN4core5panic10panic_info9PanicInfo8location17hab410b740d403f17E>:
80205d04: 08 69        	ld	a0, 16(a0)
80205d06: 82 80        	ret

0000000080205d08 <_ZN4core9panicking9panic_fmt17haf8cb4547c561967E>:
80205d08: 79 71        	addi	sp, sp, -48
80205d0a: 06 f4        	sd	ra, 40(sp)

0000000080205d0c <.Lpcrel_hi466>:
80205d0c: 17 36 00 00  	auipc	a2, 3
80205d10: 13 06 c6 13  	addi	a2, a2, 316
80205d14: 32 e0        	sd	a2, 0(sp)

0000000080205d16 <.Lpcrel_hi467>:
80205d16: 17 36 00 00  	auipc	a2, 3
80205d1a: 13 06 a6 17  	addi	a2, a2, 378
80205d1e: 32 e4        	sd	a2, 8(sp)
80205d20: 2a ec        	sd	a0, 24(sp)
80205d22: 2e e8        	sd	a1, 16(sp)
80205d24: 05 45        	li	a0, 1
80205d26: 23 00 a1 02  	sb	a0, 32(sp)
80205d2a: 0a 85        	mv	a0, sp
80205d2c: 97 f0 ff ff  	auipc	ra, 1048575
80205d30: e7 80 80 02  	jalr	40(ra)
80205d34: 00 00        	unimp	

0000000080205d36 <_ZN4core9panicking5panic17hbe4f5fa2411b8631E>:
80205d36: 5d 71        	addi	sp, sp, -80
80205d38: 86 e4        	sd	ra, 72(sp)
80205d3a: 2a fc        	sd	a0, 56(sp)
80205d3c: ae e0        	sd	a1, 64(sp)
80205d3e: 28 18        	addi	a0, sp, 56
80205d40: 2a e4        	sd	a0, 8(sp)
80205d42: 05 45        	li	a0, 1
80205d44: 2a e8        	sd	a0, 16(sp)
80205d46: 02 f4        	sd	zero, 40(sp)

0000000080205d48 <.Lpcrel_hi470>:
80205d48: 17 35 00 00  	auipc	a0, 3
80205d4c: 13 05 05 10  	addi	a0, a0, 256
80205d50: 2a ec        	sd	a0, 24(sp)
80205d52: 02 f0        	sd	zero, 32(sp)
80205d54: 28 00        	addi	a0, sp, 8
80205d56: b2 85        	mv	a1, a2
80205d58: 97 00 00 00  	auipc	ra, 0
80205d5c: e7 80 00 fb  	jalr	-80(ra)
80205d60: 00 00        	unimp	

0000000080205d62 <_ZN4core9panicking18panic_bounds_check17hac7015385cf55132E>:
80205d62: 59 71        	addi	sp, sp, -112
80205d64: 86 f4        	sd	ra, 104(sp)
80205d66: 2a e4        	sd	a0, 8(sp)
80205d68: 2e e8        	sd	a1, 16(sp)
80205d6a: 08 08        	addi	a0, sp, 16
80205d6c: aa e4        	sd	a0, 72(sp)

0000000080205d6e <.Lpcrel_hi473>:
80205d6e: 17 15 00 00  	auipc	a0, 1
80205d72: 13 05 25 1b  	addi	a0, a0, 434
80205d76: aa e8        	sd	a0, 80(sp)
80205d78: 2c 00        	addi	a1, sp, 8
80205d7a: ae ec        	sd	a1, 88(sp)
80205d7c: aa f0        	sd	a0, 96(sp)

0000000080205d7e <.Lpcrel_hi474>:
80205d7e: 17 35 00 00  	auipc	a0, 3
80205d82: 13 05 a5 14  	addi	a0, a0, 330
80205d86: 2a ec        	sd	a0, 24(sp)
80205d88: 09 45        	li	a0, 2
80205d8a: 2a f0        	sd	a0, 32(sp)
80205d8c: 02 fc        	sd	zero, 56(sp)
80205d8e: ac 00        	addi	a1, sp, 72
80205d90: 2e f4        	sd	a1, 40(sp)
80205d92: 2a f8        	sd	a0, 48(sp)
80205d94: 28 08        	addi	a0, sp, 24
80205d96: b2 85        	mv	a1, a2
80205d98: 97 00 00 00  	auipc	ra, 0
80205d9c: e7 80 00 f7  	jalr	-144(ra)
80205da0: 00 00        	unimp	

0000000080205da2 <_ZN4core6result13unwrap_failed17h969676d91dd7c3d3E>:
80205da2: 19 71        	addi	sp, sp, -128
80205da4: 86 fc        	sd	ra, 120(sp)
80205da6: 2a e4        	sd	a0, 8(sp)
80205da8: 2e e8        	sd	a1, 16(sp)
80205daa: 32 ec        	sd	a2, 24(sp)
80205dac: 36 f0        	sd	a3, 32(sp)
80205dae: 28 00        	addi	a0, sp, 8
80205db0: aa ec        	sd	a0, 88(sp)

0000000080205db2 <.Lpcrel_hi495>:
80205db2: 17 15 00 00  	auipc	a0, 1
80205db6: 13 05 c5 20  	addi	a0, a0, 524
80205dba: aa f0        	sd	a0, 96(sp)
80205dbc: 28 08        	addi	a0, sp, 24
80205dbe: aa f4        	sd	a0, 104(sp)

0000000080205dc0 <.Lpcrel_hi496>:
80205dc0: 17 15 00 00  	auipc	a0, 1
80205dc4: 13 05 65 1f  	addi	a0, a0, 502
80205dc8: aa f8        	sd	a0, 112(sp)

0000000080205dca <.Lpcrel_hi497>:
80205dca: 17 35 00 00  	auipc	a0, 3
80205dce: 13 05 65 12  	addi	a0, a0, 294
80205dd2: 2a f4        	sd	a0, 40(sp)
80205dd4: 09 45        	li	a0, 2
80205dd6: 2a f8        	sd	a0, 48(sp)
80205dd8: 82 e4        	sd	zero, 72(sp)
80205dda: ac 08        	addi	a1, sp, 88
80205ddc: 2e fc        	sd	a1, 56(sp)
80205dde: aa e0        	sd	a0, 64(sp)
80205de0: 28 10        	addi	a0, sp, 40
80205de2: ba 85        	mv	a1, a4
80205de4: 97 00 00 00  	auipc	ra, 0
80205de8: e7 80 40 f2  	jalr	-220(ra)
80205dec: 00 00        	unimp	

0000000080205dee <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd9568184a6931636E>:
80205dee: 75 71        	addi	sp, sp, -144
80205df0: 06 e5        	sd	ra, 136(sp)
80205df2: 22 e1        	sd	s0, 128(sp)
80205df4: a6 fc        	sd	s1, 120(sp)
80205df6: ca f8        	sd	s2, 112(sp)
80205df8: ce f4        	sd	s3, 104(sp)
80205dfa: d2 f0        	sd	s4, 96(sp)
80205dfc: d6 ec        	sd	s5, 88(sp)
80205dfe: da e8        	sd	s6, 80(sp)
80205e00: de e4        	sd	s7, 72(sp)
80205e02: e2 e0        	sd	s8, 64(sp)
80205e04: 66 fc        	sd	s9, 56(sp)
80205e06: 6a f8        	sd	s10, 48(sp)
80205e08: 6e f4        	sd	s11, 40(sp)
80205e0a: 32 89        	mv	s2, a2
80205e0c: 2e 8a        	mv	s4, a1
80205e0e: 01 4c        	li	s8, 0
80205e10: 81 4c        	li	s9, 0
80205e12: 81 49        	li	s3, 0

0000000080205e14 <.Lpcrel_hi500>:
80205e14: 97 45 00 00  	auipc	a1, 4
80205e18: 03 bb 45 40  	ld	s6, 1028(a1)

0000000080205e1c <.Lpcrel_hi501>:
80205e1c: 97 45 00 00  	auipc	a1, 4
80205e20: 83 bb 45 40  	ld	s7, 1028(a1)

0000000080205e24 <.Lpcrel_hi502>:
80205e24: 97 45 00 00  	auipc	a1, 4
80205e28: 83 b4 45 40  	ld	s1, 1028(a1)
80205e2c: 00 69        	ld	s0, 16(a0)
80205e2e: 0c 61        	ld	a1, 0(a0)
80205e30: 2e f0        	sd	a1, 32(sp)
80205e32: 08 65        	ld	a0, 8(a0)
80205e34: 2a ec        	sd	a0, 24(sp)
80205e36: 13 05 8a 00  	addi	a0, s4, 8
80205e3a: 2a e0        	sd	a0, 0(sp)

0000000080205e3c <.Lpcrel_hi503>:
80205e3c: 17 25 00 00  	auipc	a0, 2
80205e40: 13 05 35 29  	addi	a0, a0, 659
80205e44: 2a e8        	sd	a0, 16(sp)
80205e46: 29 4d        	li	s10, 10
80205e48: 22 e4        	sd	s0, 8(sp)
80205e4a: 0d a0        	j	0x80205e6c <.Lpcrel_hi503+0x30>
80205e4c: 33 05 b6 00  	add	a0, a2, a1
80205e50: 03 45 f5 ff  	lbu	a0, -1(a0)
80205e54: 59 15        	addi	a0, a0, -10
80205e56: 13 35 15 00  	seqz	a0, a0
80205e5a: 23 00 a4 00  	sb	a0, 0(s0)
80205e5e: 62 65        	ld	a0, 24(sp)
80205e60: 14 6d        	ld	a3, 24(a0)
80205e62: 02 75        	ld	a0, 32(sp)
80205e64: 82 96        	jalr	a3
80205e66: ee 8c        	mv	s9, s11
80205e68: 63 15 05 12  	bnez	a0, 0x80205f92 <.Lpcrel_hi503+0x156>
80205e6c: 13 f5 f9 0f  	andi	a0, s3, 255
80205e70: 63 1f 05 10  	bnez	a0, 0x80205f8e <.Lpcrel_hi503+0x152>
80205e74: 63 75 89 01  	bgeu	s2, s8, 0x80205e7e <.Lpcrel_hi503+0x42>
80205e78: e9 a8        	j	0x80205f52 <.Lpcrel_hi503+0x116>
80205e7a: 63 6c 89 0d  	bltu	s2, s8, 0x80205f52 <.Lpcrel_hi503+0x116>
80205e7e: 33 05 89 41  	sub	a0, s2, s8
80205e82: b3 05 8a 01  	add	a1, s4, s8
80205e86: 41 46        	li	a2, 16
80205e88: 63 7f c5 00  	bgeu	a0, a2, 0x80205ea6 <.Lpcrel_hi503+0x6a>
80205e8c: 63 02 2c 0d  	beq	s8, s2, 0x80205f50 <.Lpcrel_hi503+0x114>
80205e90: 81 46        	li	a3, 0
80205e92: 33 86 d5 00  	add	a2, a1, a3
80205e96: 03 46 06 00  	lbu	a2, 0(a2)
80205e9a: 63 0d a6 09  	beq	a2, s10, 0x80205f34 <.Lpcrel_hi503+0xf8>
80205e9e: 85 06        	addi	a3, a3, 1
80205ea0: e3 19 d5 fe  	bne	a0, a3, 0x80205e92 <.Lpcrel_hi503+0x56>
80205ea4: 75 a0        	j	0x80205f50 <.Lpcrel_hi503+0x114>
80205ea6: 13 86 75 00  	addi	a2, a1, 7
80205eaa: 93 76 86 ff  	andi	a3, a2, -8
80205eae: 33 86 b6 40  	sub	a2, a3, a1
80205eb2: ad 8e        	xor	a3, a3, a1
80205eb4: 93 b6 16 00  	seqz	a3, a3
80205eb8: 13 37 16 00  	seqz	a4, a2
80205ebc: d9 8e        	or	a3, a3, a4
80205ebe: a1 c2        	beqz	a3, 0x80205efe <.Lpcrel_hi503+0xc2>
80205ec0: 01 46        	li	a2, 0
80205ec2: 93 06 05 ff  	addi	a3, a0, -16
80205ec6: 02 67        	ld	a4, 0(sp)
80205ec8: 62 97        	add	a4, a4, s8
80205eca: b3 87 c5 00  	add	a5, a1, a2
80205ece: 9c 63        	ld	a5, 0(a5)
80205ed0: 13 c4 f7 ff  	not	s0, a5
80205ed4: a5 8f        	xor	a5, a5, s1
80205ed6: da 97        	add	a5, a5, s6
80205ed8: 33 74 74 01  	and	s0, s0, s7
80205edc: e1 8f        	and	a5, a5, s0
80205ede: 8d ef        	bnez	a5, 0x80205f18 <.Lpcrel_hi503+0xdc>
80205ee0: b3 07 c7 00  	add	a5, a4, a2
80205ee4: 9c 63        	ld	a5, 0(a5)
80205ee6: 13 c4 f7 ff  	not	s0, a5
80205eea: a5 8f        	xor	a5, a5, s1
80205eec: da 97        	add	a5, a5, s6
80205eee: 33 74 74 01  	and	s0, s0, s7
80205ef2: e1 8f        	and	a5, a5, s0
80205ef4: 95 e3        	bnez	a5, 0x80205f18 <.Lpcrel_hi503+0xdc>
80205ef6: 41 06        	addi	a2, a2, 16
80205ef8: e3 f9 c6 fc  	bgeu	a3, a2, 0x80205eca <.Lpcrel_hi503+0x8e>
80205efc: 31 a8        	j	0x80205f18 <.Lpcrel_hi503+0xdc>
80205efe: 33 87 d5 00  	add	a4, a1, a3
80205f02: 03 47 07 00  	lbu	a4, 0(a4)
80205f06: 63 07 a7 03  	beq	a4, s10, 0x80205f34 <.Lpcrel_hi503+0xf8>
80205f0a: 85 06        	addi	a3, a3, 1
80205f0c: e3 19 d6 fe  	bne	a2, a3, 0x80205efe <.Lpcrel_hi503+0xc2>
80205f10: 93 06 05 ff  	addi	a3, a0, -16
80205f14: e3 f9 c6 fa  	bgeu	a3, a2, 0x80205ec6 <.Lpcrel_hi503+0x8a>
80205f18: 63 04 c5 06  	beq	a0, a2, 0x80205f80 <.Lpcrel_hi503+0x144>
80205f1c: 22 64        	ld	s0, 8(sp)
80205f1e: b3 86 c5 00  	add	a3, a1, a2
80205f22: 83 c6 06 00  	lbu	a3, 0(a3)
80205f26: 63 86 a6 01  	beq	a3, s10, 0x80205f32 <.Lpcrel_hi503+0xf6>
80205f2a: 05 06        	addi	a2, a2, 1
80205f2c: e3 19 c5 fe  	bne	a0, a2, 0x80205f1e <.Lpcrel_hi503+0xe2>
80205f30: 05 a0        	j	0x80205f50 <.Lpcrel_hi503+0x114>
80205f32: b2 86        	mv	a3, a2
80205f34: e2 96        	add	a3, a3, s8
80205f36: 13 8c 16 00  	addi	s8, a3, 1
80205f3a: e3 f0 26 f5  	bgeu	a3, s2, 0x80205e7a <.Lpcrel_hi503+0x3e>
80205f3e: d2 96        	add	a3, a3, s4
80205f40: 03 c5 06 00  	lbu	a0, 0(a3)
80205f44: e3 1b a5 f3  	bne	a0, s10, 0x80205e7a <.Lpcrel_hi503+0x3e>
80205f48: 81 49        	li	s3, 0
80205f4a: e2 8d        	mv	s11, s8
80205f4c: e2 8a        	mv	s5, s8
80205f4e: 39 a0        	j	0x80205f5c <.Lpcrel_hi503+0x120>
80205f50: 4a 8c        	mv	s8, s2
80205f52: 85 49        	li	s3, 1
80205f54: e6 8d        	mv	s11, s9
80205f56: ca 8a        	mv	s5, s2
80205f58: 63 8b 2c 03  	beq	s9, s2, 0x80205f8e <.Lpcrel_hi503+0x152>
80205f5c: 03 45 04 00  	lbu	a0, 0(s0)
80205f60: 01 c9        	beqz	a0, 0x80205f70 <.Lpcrel_hi503+0x134>
80205f62: 62 65        	ld	a0, 24(sp)
80205f64: 14 6d        	ld	a3, 24(a0)
80205f66: 11 46        	li	a2, 4
80205f68: 02 75        	ld	a0, 32(sp)
80205f6a: c2 65        	ld	a1, 16(sp)
80205f6c: 82 96        	jalr	a3
80205f6e: 15 e1        	bnez	a0, 0x80205f92 <.Lpcrel_hi503+0x156>
80205f70: 33 86 9a 41  	sub	a2, s5, s9
80205f74: b3 05 9a 01  	add	a1, s4, s9
80205f78: e3 9a 9a ed  	bne	s5, s9, 0x80205e4c <.Lpcrel_hi503+0x10>
80205f7c: 01 45        	li	a0, 0
80205f7e: f1 bd        	j	0x80205e5a <.Lpcrel_hi503+0x1e>
80205f80: 4a 8c        	mv	s8, s2
80205f82: 22 64        	ld	s0, 8(sp)
80205f84: 85 49        	li	s3, 1
80205f86: e6 8d        	mv	s11, s9
80205f88: ca 8a        	mv	s5, s2
80205f8a: e3 99 2c fd  	bne	s9, s2, 0x80205f5c <.Lpcrel_hi503+0x120>
80205f8e: 01 45        	li	a0, 0
80205f90: 11 a0        	j	0x80205f94 <.Lpcrel_hi503+0x158>
80205f92: 05 45        	li	a0, 1
80205f94: aa 60        	ld	ra, 136(sp)
80205f96: 0a 64        	ld	s0, 128(sp)
80205f98: e6 74        	ld	s1, 120(sp)
80205f9a: 46 79        	ld	s2, 112(sp)
80205f9c: a6 79        	ld	s3, 104(sp)
80205f9e: 06 7a        	ld	s4, 96(sp)
80205fa0: e6 6a        	ld	s5, 88(sp)
80205fa2: 46 6b        	ld	s6, 80(sp)
80205fa4: a6 6b        	ld	s7, 72(sp)
80205fa6: 06 6c        	ld	s8, 64(sp)
80205fa8: e2 7c        	ld	s9, 56(sp)
80205faa: 42 7d        	ld	s10, 48(sp)
80205fac: a2 7d        	ld	s11, 40(sp)
80205fae: 49 61        	addi	sp, sp, 144
80205fb0: 82 80        	ret

0000000080205fb2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE>:
80205fb2: 71 71        	addi	sp, sp, -176
80205fb4: 06 f5        	sd	ra, 168(sp)
80205fb6: 22 f1        	sd	s0, 160(sp)
80205fb8: 26 ed        	sd	s1, 152(sp)
80205fba: 4a e9        	sd	s2, 144(sp)
80205fbc: 4e e5        	sd	s3, 136(sp)
80205fbe: 52 e1        	sd	s4, 128(sp)
80205fc0: d6 fc        	sd	s5, 120(sp)
80205fc2: da f8        	sd	s6, 112(sp)
80205fc4: de f4        	sd	s7, 104(sp)
80205fc6: 2a 84        	mv	s0, a0
80205fc8: 03 45 85 00  	lbu	a0, 8(a0)
80205fcc: 85 4b        	li	s7, 1
80205fce: 85 44        	li	s1, 1
80205fd0: 0d c1        	beqz	a0, 0x80205ff2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x40>
80205fd2: 23 04 94 00  	sb	s1, 8(s0)
80205fd6: a3 04 74 01  	sb	s7, 9(s0)
80205fda: 22 85        	mv	a0, s0
80205fdc: aa 70        	ld	ra, 168(sp)
80205fde: 0a 74        	ld	s0, 160(sp)
80205fe0: ea 64        	ld	s1, 152(sp)
80205fe2: 4a 69        	ld	s2, 144(sp)
80205fe4: aa 69        	ld	s3, 136(sp)
80205fe6: 0a 6a        	ld	s4, 128(sp)
80205fe8: e6 7a        	ld	s5, 120(sp)
80205fea: 46 7b        	ld	s6, 112(sp)
80205fec: a6 7b        	ld	s7, 104(sp)
80205fee: 4d 61        	addi	sp, sp, 176
80205ff0: 82 80        	ret
80205ff2: ba 89        	mv	s3, a4
80205ff4: 36 89        	mv	s2, a3
80205ff6: 32 8a        	mv	s4, a2
80205ff8: ae 8a        	mv	s5, a1
80205ffa: 03 3b 04 00  	ld	s6, 0(s0)
80205ffe: 03 65 4b 03  	lwu	a0, 52(s6)
80206002: 83 45 94 00  	lbu	a1, 9(s0)
80206006: 13 76 45 00  	andi	a2, a0, 4
8020600a: 09 ea        	bnez	a2, 0x8020601c <.Lpcrel_hi505+0xa>
8020600c: 13 b6 15 00  	seqz	a2, a1
80206010: e1 c1        	beqz	a1, 0x802060d0 <.Lpcrel_hi504>

0000000080206012 <.Lpcrel_hi505>:
80206012: 17 35 00 00  	auipc	a0, 3
80206016: 93 05 35 f3  	addi	a1, a0, -205
8020601a: 7d a8        	j	0x802060d8 <.Lpcrel_hi504+0x8>
8020601c: 85 e1        	bnez	a1, 0x8020603c <.Lpcrel_hi507+0x14>
8020601e: 83 35 8b 02  	ld	a1, 40(s6)
80206022: 03 35 0b 02  	ld	a0, 32(s6)
80206026: 94 6d        	ld	a3, 24(a1)

0000000080206028 <.Lpcrel_hi507>:
80206028: 97 35 00 00  	auipc	a1, 3
8020602c: 93 85 85 f1  	addi	a1, a1, -232
80206030: 0d 46        	li	a2, 3
80206032: 82 96        	jalr	a3
80206034: 85 44        	li	s1, 1
80206036: 51 fd        	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80206038: 03 25 4b 03  	lw	a0, 52(s6)
8020603c: 85 44        	li	s1, 1
8020603e: a3 03 91 02  	sb	s1, 39(sp)
80206042: 83 35 0b 02  	ld	a1, 32(s6)
80206046: 03 36 8b 02  	ld	a2, 40(s6)
8020604a: 2e e4        	sd	a1, 8(sp)
8020604c: 32 e8        	sd	a2, 16(sp)
8020604e: 93 05 71 02  	addi	a1, sp, 39
80206052: 2e ec        	sd	a1, 24(sp)
80206054: 83 25 0b 03  	lw	a1, 48(s6)
80206058: 03 06 8b 03  	lb	a2, 56(s6)
8020605c: 83 36 0b 00  	ld	a3, 0(s6)
80206060: 03 37 8b 00  	ld	a4, 8(s6)
80206064: 83 37 0b 01  	ld	a5, 16(s6)
80206068: 03 38 8b 01  	ld	a6, 24(s6)
8020606c: aa ce        	sw	a0, 92(sp)
8020606e: ae cc        	sw	a1, 88(sp)
80206070: 23 00 c1 06  	sb	a2, 96(sp)
80206074: 36 f4        	sd	a3, 40(sp)
80206076: 3a f8        	sd	a4, 48(sp)
80206078: 3e fc        	sd	a5, 56(sp)
8020607a: c2 e0        	sd	a6, 64(sp)
8020607c: 28 00        	addi	a0, sp, 8
8020607e: aa e4        	sd	a0, 72(sp)

0000000080206080 <.Lpcrel_hi506>:
80206080: 17 35 00 00  	auipc	a0, 3
80206084: 13 05 05 e9  	addi	a0, a0, -368
80206088: aa e8        	sd	a0, 80(sp)
8020608a: 28 00        	addi	a0, sp, 8
8020608c: d6 85        	mv	a1, s5
8020608e: 52 86        	mv	a2, s4
80206090: 97 00 00 00  	auipc	ra, 0
80206094: e7 80 e0 d5  	jalr	-674(ra)
80206098: 0d fd        	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

000000008020609a <.Lpcrel_hi508>:
8020609a: 17 35 00 00  	auipc	a0, 3
8020609e: 93 05 e5 e4  	addi	a1, a0, -434
802060a2: 28 00        	addi	a0, sp, 8
802060a4: 09 46        	li	a2, 2
802060a6: 97 00 00 00  	auipc	ra, 0
802060aa: e7 80 80 d4  	jalr	-696(ra)
802060ae: 15 f1        	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
802060b0: 03 b6 89 01  	ld	a2, 24(s3)
802060b4: 2c 10        	addi	a1, sp, 40
802060b6: 4a 85        	mv	a0, s2
802060b8: 02 96        	jalr	a2
802060ba: 01 fd        	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
802060bc: c6 65        	ld	a1, 80(sp)
802060be: 26 65        	ld	a0, 72(sp)
802060c0: 94 6d        	ld	a3, 24(a1)

00000000802060c2 <.Lpcrel_hi509>:
802060c2: 97 35 00 00  	auipc	a1, 3
802060c6: 93 85 15 e8  	addi	a1, a1, -383
802060ca: 09 46        	li	a2, 2
802060cc: 82 96        	jalr	a3
802060ce: a9 a8        	j	0x80206128 <.Lpcrel_hi510+0x1c>

00000000802060d0 <.Lpcrel_hi504>:
802060d0: 17 35 00 00  	auipc	a0, 3
802060d4: 93 05 75 e7  	addi	a1, a0, -393
802060d8: 83 36 8b 02  	ld	a3, 40(s6)
802060dc: 03 35 0b 02  	ld	a0, 32(s6)
802060e0: 94 6e        	ld	a3, 24(a3)
802060e2: 09 06        	addi	a2, a2, 2
802060e4: 82 96        	jalr	a3
802060e6: 85 44        	li	s1, 1
802060e8: e3 15 05 ee  	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
802060ec: 83 35 8b 02  	ld	a1, 40(s6)
802060f0: 03 35 0b 02  	ld	a0, 32(s6)
802060f4: 94 6d        	ld	a3, 24(a1)
802060f6: d6 85        	mv	a1, s5
802060f8: 52 86        	mv	a2, s4
802060fa: 82 96        	jalr	a3
802060fc: 85 44        	li	s1, 1
802060fe: e3 1a 05 ec  	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
80206102: 83 35 8b 02  	ld	a1, 40(s6)
80206106: 03 35 0b 02  	ld	a0, 32(s6)
8020610a: 94 6d        	ld	a3, 24(a1)

000000008020610c <.Lpcrel_hi510>:
8020610c: 97 35 00 00  	auipc	a1, 3
80206110: 93 85 c5 dd  	addi	a1, a1, -548
80206114: 09 46        	li	a2, 2
80206116: 82 96        	jalr	a3
80206118: 85 44        	li	s1, 1
8020611a: e3 1c 05 ea  	bnez	a0, 0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>
8020611e: 03 b6 89 01  	ld	a2, 24(s3)
80206122: 4a 85        	mv	a0, s2
80206124: da 85        	mv	a1, s6
80206126: 02 96        	jalr	a2
80206128: aa 84        	mv	s1, a0
8020612a: 65 b5        	j	0x80205fd2 <_ZN4core3fmt8builders11DebugStruct5field17hf84d13d8a436fc3bE+0x20>

000000008020612c <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E>:
8020612c: 41 11        	addi	sp, sp, -16
8020612e: 06 e4        	sd	ra, 8(sp)
80206130: 1b 86 05 00  	sext.w	a2, a1
80206134: 93 06 00 08  	li	a3, 128
80206138: 02 c2        	sw	zero, 4(sp)
8020613a: 63 76 d6 00  	bgeu	a2, a3, 0x80206146 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x1a>
8020613e: 23 02 b1 00  	sb	a1, 4(sp)
80206142: 05 46        	li	a2, 1
80206144: 71 a0        	j	0x802061d0 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80206146: 1b d6 b5 00  	srliw	a2, a1, 11
8020614a: 19 ee        	bnez	a2, 0x80206168 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x3c>
8020614c: 13 d6 65 00  	srli	a2, a1, 6
80206150: 13 66 06 0c  	ori	a2, a2, 192
80206154: 23 02 c1 00  	sb	a2, 4(sp)
80206158: 93 f5 f5 03  	andi	a1, a1, 63
8020615c: 93 85 05 08  	addi	a1, a1, 128
80206160: a3 02 b1 00  	sb	a1, 5(sp)
80206164: 09 46        	li	a2, 2
80206166: ad a0        	j	0x802061d0 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80206168: 1b d6 05 01  	srliw	a2, a1, 16
8020616c: 15 e6        	bnez	a2, 0x80206198 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0x6c>
8020616e: 13 d6 c5 00  	srli	a2, a1, 12
80206172: 13 66 06 0e  	ori	a2, a2, 224
80206176: 23 02 c1 00  	sb	a2, 4(sp)
8020617a: 13 96 45 03  	slli	a2, a1, 52
8020617e: 69 92        	srli	a2, a2, 58
80206180: 13 06 06 08  	addi	a2, a2, 128
80206184: a3 02 c1 00  	sb	a2, 5(sp)
80206188: 93 f5 f5 03  	andi	a1, a1, 63
8020618c: 93 85 05 08  	addi	a1, a1, 128
80206190: 23 03 b1 00  	sb	a1, 6(sp)
80206194: 0d 46        	li	a2, 3
80206196: 2d a8        	j	0x802061d0 <_ZN4core3fmt5Write10write_char17hffc04ed953ac0726E+0xa4>
80206198: 13 96 b5 02  	slli	a2, a1, 43
8020619c: 75 92        	srli	a2, a2, 61
8020619e: 13 06 06 0f  	addi	a2, a2, 240
802061a2: 23 02 c1 00  	sb	a2, 4(sp)
802061a6: 13 96 e5 02  	slli	a2, a1, 46
802061aa: 69 92        	srli	a2, a2, 58
802061ac: 13 06 06 08  	addi	a2, a2, 128
802061b0: a3 02 c1 00  	sb	a2, 5(sp)
802061b4: 13 96 45 03  	slli	a2, a1, 52
802061b8: 69 92        	srli	a2, a2, 58
802061ba: 13 06 06 08  	addi	a2, a2, 128
802061be: 23 03 c1 00  	sb	a2, 6(sp)
802061c2: 93 f5 f5 03  	andi	a1, a1, 63
802061c6: 93 85 05 08  	addi	a1, a1, 128
802061ca: a3 03 b1 00  	sb	a1, 7(sp)
802061ce: 11 46        	li	a2, 4
802061d0: 4c 00        	addi	a1, sp, 4
802061d2: 97 00 00 00  	auipc	ra, 0
802061d6: e7 80 c0 c1  	jalr	-996(ra)
802061da: a2 60        	ld	ra, 8(sp)
802061dc: 41 01        	addi	sp, sp, 16
802061de: 82 80        	ret

00000000802061e0 <_ZN4core3fmt5Write9write_fmt17h33104a4532dd589cE>:
802061e0: 39 71        	addi	sp, sp, -64
802061e2: 06 fc        	sd	ra, 56(sp)
802061e4: 90 75        	ld	a2, 40(a1)
802061e6: 94 71        	ld	a3, 32(a1)
802061e8: 2a e0        	sd	a0, 0(sp)
802061ea: 32 f8        	sd	a2, 48(sp)
802061ec: 36 f4        	sd	a3, 40(sp)
802061ee: 88 6d        	ld	a0, 24(a1)
802061f0: 90 69        	ld	a2, 16(a1)
802061f2: 94 65        	ld	a3, 8(a1)
802061f4: 8c 61        	ld	a1, 0(a1)
802061f6: 2a f0        	sd	a0, 32(sp)
802061f8: 32 ec        	sd	a2, 24(sp)
802061fa: 36 e8        	sd	a3, 16(sp)
802061fc: 2e e4        	sd	a1, 8(sp)

00000000802061fe <.Lpcrel_hi663>:
802061fe: 17 35 00 00  	auipc	a0, 3
80206202: 93 05 25 e5  	addi	a1, a0, -430
80206206: 0a 85        	mv	a0, sp
80206208: 30 00        	addi	a2, sp, 8
8020620a: 97 00 00 00  	auipc	ra, 0
8020620e: e7 80 a0 11  	jalr	282(ra)
80206212: e2 70        	ld	ra, 56(sp)
80206214: 21 61        	addi	sp, sp, 64
80206216: 82 80        	ret

0000000080206218 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha27cc45ca5b519bfE>:
80206218: 08 61        	ld	a0, 0(a0)
8020621a: 17 03 00 00  	auipc	t1, 0
8020621e: 67 00 43 bd  	jr	-1068(t1)

0000000080206222 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E>:
80206222: 41 11        	addi	sp, sp, -16
80206224: 06 e4        	sd	ra, 8(sp)
80206226: 08 61        	ld	a0, 0(a0)
80206228: 1b 86 05 00  	sext.w	a2, a1
8020622c: 93 06 00 08  	li	a3, 128
80206230: 02 c2        	sw	zero, 4(sp)
80206232: 63 76 d6 00  	bgeu	a2, a3, 0x8020623e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x1c>
80206236: 23 02 b1 00  	sb	a1, 4(sp)
8020623a: 05 46        	li	a2, 1
8020623c: 71 a0        	j	0x802062c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
8020623e: 1b d6 b5 00  	srliw	a2, a1, 11
80206242: 19 ee        	bnez	a2, 0x80206260 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x3e>
80206244: 13 d6 65 00  	srli	a2, a1, 6
80206248: 13 66 06 0c  	ori	a2, a2, 192
8020624c: 23 02 c1 00  	sb	a2, 4(sp)
80206250: 93 f5 f5 03  	andi	a1, a1, 63
80206254: 93 85 05 08  	addi	a1, a1, 128
80206258: a3 02 b1 00  	sb	a1, 5(sp)
8020625c: 09 46        	li	a2, 2
8020625e: ad a0        	j	0x802062c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
80206260: 1b d6 05 01  	srliw	a2, a1, 16
80206264: 15 e6        	bnez	a2, 0x80206290 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0x6e>
80206266: 13 d6 c5 00  	srli	a2, a1, 12
8020626a: 13 66 06 0e  	ori	a2, a2, 224
8020626e: 23 02 c1 00  	sb	a2, 4(sp)
80206272: 13 96 45 03  	slli	a2, a1, 52
80206276: 69 92        	srli	a2, a2, 58
80206278: 13 06 06 08  	addi	a2, a2, 128
8020627c: a3 02 c1 00  	sb	a2, 5(sp)
80206280: 93 f5 f5 03  	andi	a1, a1, 63
80206284: 93 85 05 08  	addi	a1, a1, 128
80206288: 23 03 b1 00  	sb	a1, 6(sp)
8020628c: 0d 46        	li	a2, 3
8020628e: 2d a8        	j	0x802062c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h2b004950d2baad01E+0xa6>
80206290: 13 96 b5 02  	slli	a2, a1, 43
80206294: 75 92        	srli	a2, a2, 61
80206296: 13 06 06 0f  	addi	a2, a2, 240
8020629a: 23 02 c1 00  	sb	a2, 4(sp)
8020629e: 13 96 e5 02  	slli	a2, a1, 46
802062a2: 69 92        	srli	a2, a2, 58
802062a4: 13 06 06 08  	addi	a2, a2, 128
802062a8: a3 02 c1 00  	sb	a2, 5(sp)
802062ac: 13 96 45 03  	slli	a2, a1, 52
802062b0: 69 92        	srli	a2, a2, 58
802062b2: 13 06 06 08  	addi	a2, a2, 128
802062b6: 23 03 c1 00  	sb	a2, 6(sp)
802062ba: 93 f5 f5 03  	andi	a1, a1, 63
802062be: 93 85 05 08  	addi	a1, a1, 128
802062c2: a3 03 b1 00  	sb	a1, 7(sp)
802062c6: 11 46        	li	a2, 4
802062c8: 4c 00        	addi	a1, sp, 4
802062ca: 97 00 00 00  	auipc	ra, 0
802062ce: e7 80 40 b2  	jalr	-1244(ra)
802062d2: a2 60        	ld	ra, 8(sp)
802062d4: 41 01        	addi	sp, sp, 16
802062d6: 82 80        	ret

00000000802062d8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h8d7d3cce603bbfe8E>:
802062d8: 39 71        	addi	sp, sp, -64
802062da: 06 fc        	sd	ra, 56(sp)
802062dc: 90 75        	ld	a2, 40(a1)
802062de: 94 71        	ld	a3, 32(a1)
802062e0: 98 6d        	ld	a4, 24(a1)
802062e2: 32 f8        	sd	a2, 48(sp)
802062e4: 36 f4        	sd	a3, 40(sp)
802062e6: 3a f0        	sd	a4, 32(sp)
802062e8: 90 69        	ld	a2, 16(a1)
802062ea: 94 65        	ld	a3, 8(a1)
802062ec: 8c 61        	ld	a1, 0(a1)
802062ee: 08 61        	ld	a0, 0(a0)
802062f0: 32 ec        	sd	a2, 24(sp)
802062f2: 36 e8        	sd	a3, 16(sp)
802062f4: 2e e4        	sd	a1, 8(sp)
802062f6: 2a e0        	sd	a0, 0(sp)

00000000802062f8 <.Lpcrel_hi666>:
802062f8: 17 35 00 00  	auipc	a0, 3
802062fc: 93 05 85 d5  	addi	a1, a0, -680
80206300: 0a 85        	mv	a0, sp
80206302: 30 00        	addi	a2, sp, 8
80206304: 97 00 00 00  	auipc	ra, 0
80206308: e7 80 00 02  	jalr	32(ra)
8020630c: e2 70        	ld	ra, 56(sp)
8020630e: 21 61        	addi	sp, sp, 64
80206310: 82 80        	ret

0000000080206312 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h62fe7bb9612eb0c7E>:
80206312: 90 71        	ld	a2, 32(a1)
80206314: 8c 75        	ld	a1, 40(a1)
80206316: aa 86        	mv	a3, a0
80206318: 32 85        	mv	a0, a2
8020631a: 36 86        	mv	a2, a3
8020631c: 17 03 00 00  	auipc	t1, 0
80206320: 67 00 83 00  	jr	8(t1)

0000000080206324 <_ZN4core3fmt5write17h1dd832d12f1d4c76E>:
80206324: 19 71        	addi	sp, sp, -128
80206326: 86 fc        	sd	ra, 120(sp)
80206328: a2 f8        	sd	s0, 112(sp)
8020632a: a6 f4        	sd	s1, 104(sp)
8020632c: ca f0        	sd	s2, 96(sp)
8020632e: ce ec        	sd	s3, 88(sp)
80206330: d2 e8        	sd	s4, 80(sp)
80206332: d6 e4        	sd	s5, 72(sp)
80206334: da e0        	sd	s6, 64(sp)
80206336: b2 89        	mv	s3, a2
80206338: 13 06 00 02  	li	a2, 32
8020633c: 32 f8        	sd	a2, 48(sp)
8020633e: 0d 46        	li	a2, 3
80206340: 23 0c c1 02  	sb	a2, 56(sp)
80206344: 03 b4 09 02  	ld	s0, 32(s3)
80206348: 02 e0        	sd	zero, 0(sp)
8020634a: 02 e8        	sd	zero, 16(sp)
8020634c: 2a f0        	sd	a0, 32(sp)
8020634e: 2e f4        	sd	a1, 40(sp)
80206350: 61 c0        	beqz	s0, 0x80206410 <.Lpcrel_hi670+0x98>
80206352: 03 b5 89 02  	ld	a0, 40(s3)
80206356: 63 07 05 10  	beqz	a0, 0x80206464 <.Lpcrel_hi670+0xec>
8020635a: 83 b4 09 00  	ld	s1, 0(s3)
8020635e: 93 05 f5 ff  	addi	a1, a0, -1
80206362: 8e 05        	slli	a1, a1, 3
80206364: 8d 81        	srli	a1, a1, 3
80206366: 13 89 15 00  	addi	s2, a1, 1
8020636a: a1 04        	addi	s1, s1, 8
8020636c: 93 05 80 03  	li	a1, 56
80206370: 33 0a b5 02  	mul	s4, a0, a1
80206374: 61 04        	addi	s0, s0, 24
80206376: 85 4a        	li	s5, 1

0000000080206378 <.Lpcrel_hi670>:
80206378: 17 05 00 00  	auipc	a0, 0
8020637c: 13 0b e5 93  	addi	s6, a0, -1730
80206380: 90 60        	ld	a2, 0(s1)
80206382: 01 ca        	beqz	a2, 0x80206392 <.Lpcrel_hi670+0x1a>
80206384: a2 76        	ld	a3, 40(sp)
80206386: 02 75        	ld	a0, 32(sp)
80206388: 83 b5 84 ff  	ld	a1, -8(s1)
8020638c: 94 6e        	ld	a3, 24(a3)
8020638e: 82 96        	jalr	a3
80206390: 65 ed        	bnez	a0, 0x80206488 <.Lpcrel_hi670+0x110>
80206392: 08 48        	lw	a0, 16(s0)
80206394: 2a d8        	sw	a0, 48(sp)
80206396: 03 05 84 01  	lb	a0, 24(s0)
8020639a: 23 0c a1 02  	sb	a0, 56(sp)
8020639e: 4c 48        	lw	a1, 20(s0)
802063a0: 03 b5 09 01  	ld	a0, 16(s3)
802063a4: 2e da        	sw	a1, 52(sp)
802063a6: 03 36 84 ff  	ld	a2, -8(s0)
802063aa: 0c 60        	ld	a1, 0(s0)
802063ac: 01 ce        	beqz	a2, 0x802063c4 <.Lpcrel_hi670+0x4c>
802063ae: 63 17 56 01  	bne	a2, s5, 0x802063bc <.Lpcrel_hi670+0x44>
802063b2: 92 05        	slli	a1, a1, 4
802063b4: aa 95        	add	a1, a1, a0
802063b6: 90 65        	ld	a2, 8(a1)
802063b8: 63 04 66 01  	beq	a2, s6, 0x802063c0 <.Lpcrel_hi670+0x48>
802063bc: 01 46        	li	a2, 0
802063be: 21 a0        	j	0x802063c6 <.Lpcrel_hi670+0x4e>
802063c0: 8c 61        	ld	a1, 0(a1)
802063c2: 8c 61        	ld	a1, 0(a1)
802063c4: 05 46        	li	a2, 1
802063c6: 32 e0        	sd	a2, 0(sp)
802063c8: 2e e4        	sd	a1, 8(sp)
802063ca: 03 36 84 fe  	ld	a2, -24(s0)
802063ce: 83 35 04 ff  	ld	a1, -16(s0)
802063d2: 01 ce        	beqz	a2, 0x802063ea <.Lpcrel_hi670+0x72>
802063d4: 63 17 56 01  	bne	a2, s5, 0x802063e2 <.Lpcrel_hi670+0x6a>
802063d8: 92 05        	slli	a1, a1, 4
802063da: aa 95        	add	a1, a1, a0
802063dc: 90 65        	ld	a2, 8(a1)
802063de: 63 04 66 01  	beq	a2, s6, 0x802063e6 <.Lpcrel_hi670+0x6e>
802063e2: 01 46        	li	a2, 0
802063e4: 21 a0        	j	0x802063ec <.Lpcrel_hi670+0x74>
802063e6: 8c 61        	ld	a1, 0(a1)
802063e8: 8c 61        	ld	a1, 0(a1)
802063ea: 05 46        	li	a2, 1
802063ec: 32 e8        	sd	a2, 16(sp)
802063ee: 2e ec        	sd	a1, 24(sp)
802063f0: 0c 64        	ld	a1, 8(s0)
802063f2: 92 05        	slli	a1, a1, 4
802063f4: 2e 95        	add	a0, a0, a1
802063f6: 10 65        	ld	a2, 8(a0)
802063f8: 08 61        	ld	a0, 0(a0)
802063fa: 8a 85        	mv	a1, sp
802063fc: 02 96        	jalr	a2
802063fe: 49 e5        	bnez	a0, 0x80206488 <.Lpcrel_hi670+0x110>
80206400: c1 04        	addi	s1, s1, 16
80206402: 13 0a 8a fc  	addi	s4, s4, -56
80206406: 13 04 84 03  	addi	s0, s0, 56
8020640a: e3 1b 0a f6  	bnez	s4, 0x80206380 <.Lpcrel_hi670+0x8>
8020640e: b1 a0        	j	0x8020645a <.Lpcrel_hi670+0xe2>
80206410: 03 ba 89 01  	ld	s4, 24(s3)
80206414: 63 08 0a 04  	beqz	s4, 0x80206464 <.Lpcrel_hi670+0xec>
80206418: 83 b4 09 01  	ld	s1, 16(s3)
8020641c: 03 b4 09 00  	ld	s0, 0(s3)
80206420: 13 05 fa ff  	addi	a0, s4, -1
80206424: 12 05        	slli	a0, a0, 4
80206426: 11 81        	srli	a0, a0, 4
80206428: 13 09 15 00  	addi	s2, a0, 1
8020642c: 21 04        	addi	s0, s0, 8
8020642e: 12 0a        	slli	s4, s4, 4
80206430: a1 04        	addi	s1, s1, 8
80206432: 10 60        	ld	a2, 0(s0)
80206434: 01 ca        	beqz	a2, 0x80206444 <.Lpcrel_hi670+0xcc>
80206436: a2 76        	ld	a3, 40(sp)
80206438: 02 75        	ld	a0, 32(sp)
8020643a: 83 35 84 ff  	ld	a1, -8(s0)
8020643e: 94 6e        	ld	a3, 24(a3)
80206440: 82 96        	jalr	a3
80206442: 39 e1        	bnez	a0, 0x80206488 <.Lpcrel_hi670+0x110>
80206444: 90 60        	ld	a2, 0(s1)
80206446: 03 b5 84 ff  	ld	a0, -8(s1)
8020644a: 8a 85        	mv	a1, sp
8020644c: 02 96        	jalr	a2
8020644e: 0d ed        	bnez	a0, 0x80206488 <.Lpcrel_hi670+0x110>
80206450: 41 04        	addi	s0, s0, 16
80206452: 41 1a        	addi	s4, s4, -16
80206454: c1 04        	addi	s1, s1, 16
80206456: e3 1e 0a fc  	bnez	s4, 0x80206432 <.Lpcrel_hi670+0xba>
8020645a: 03 b5 89 00  	ld	a0, 8(s3)
8020645e: 63 68 a9 00  	bltu	s2, a0, 0x8020646e <.Lpcrel_hi670+0xf6>
80206462: 2d a0        	j	0x8020648c <.Lpcrel_hi670+0x114>
80206464: 01 49        	li	s2, 0
80206466: 03 b5 89 00  	ld	a0, 8(s3)
8020646a: 63 71 a9 02  	bgeu	s2, a0, 0x8020648c <.Lpcrel_hi670+0x114>
8020646e: 03 b5 09 00  	ld	a0, 0(s3)
80206472: 12 09        	slli	s2, s2, 4
80206474: 2a 99        	add	s2, s2, a0
80206476: a2 76        	ld	a3, 40(sp)
80206478: 02 75        	ld	a0, 32(sp)
8020647a: 83 35 09 00  	ld	a1, 0(s2)
8020647e: 03 36 89 00  	ld	a2, 8(s2)
80206482: 94 6e        	ld	a3, 24(a3)
80206484: 82 96        	jalr	a3
80206486: 19 c1        	beqz	a0, 0x8020648c <.Lpcrel_hi670+0x114>
80206488: 05 45        	li	a0, 1
8020648a: 11 a0        	j	0x8020648e <.Lpcrel_hi670+0x116>
8020648c: 01 45        	li	a0, 0
8020648e: e6 70        	ld	ra, 120(sp)
80206490: 46 74        	ld	s0, 112(sp)
80206492: a6 74        	ld	s1, 104(sp)
80206494: 06 79        	ld	s2, 96(sp)
80206496: e6 69        	ld	s3, 88(sp)
80206498: 46 6a        	ld	s4, 80(sp)
8020649a: a6 6a        	ld	s5, 72(sp)
8020649c: 06 6b        	ld	s6, 64(sp)
8020649e: 09 61        	addi	sp, sp, 128
802064a0: 82 80        	ret

00000000802064a2 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E>:
802064a2: 59 71        	addi	sp, sp, -112
802064a4: 86 f4        	sd	ra, 104(sp)
802064a6: a2 f0        	sd	s0, 96(sp)
802064a8: a6 ec        	sd	s1, 88(sp)
802064aa: ca e8        	sd	s2, 80(sp)
802064ac: ce e4        	sd	s3, 72(sp)
802064ae: d2 e0        	sd	s4, 64(sp)
802064b0: 56 fc        	sd	s5, 56(sp)
802064b2: 5a f8        	sd	s6, 48(sp)
802064b4: 5e f4        	sd	s7, 40(sp)
802064b6: 62 f0        	sd	s8, 32(sp)
802064b8: 66 ec        	sd	s9, 24(sp)
802064ba: 6a e8        	sd	s10, 16(sp)
802064bc: 6e e4        	sd	s11, 8(sp)
802064be: be 89        	mv	s3, a5
802064c0: 3a 89        	mv	s2, a4
802064c2: 36 8b        	mv	s6, a3
802064c4: 32 8a        	mv	s4, a2
802064c6: 2a 8c        	mv	s8, a0
802064c8: b9 c1        	beqz	a1, 0x8020650e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x6c>
802064ca: 03 64 4c 03  	lwu	s0, 52(s8)
802064ce: 93 7c 14 00  	andi	s9, s0, 1
802064d2: b7 0a 11 00  	lui	s5, 272
802064d6: 63 84 0c 00  	beqz	s9, 0x802064de <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x3c>
802064da: 93 0a b0 02  	li	s5, 43
802064de: ce 9c        	add	s9, s9, s3
802064e0: 13 75 44 00  	andi	a0, s0, 4
802064e4: 15 cd        	beqz	a0, 0x80206520 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x7e>
802064e6: 13 05 00 02  	li	a0, 32
802064ea: 63 70 ab 04  	bgeu	s6, a0, 0x8020652a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x88>
802064ee: 01 45        	li	a0, 0
802064f0: 63 03 0b 04  	beqz	s6, 0x80206536 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
802064f4: da 85        	mv	a1, s6
802064f6: 52 86        	mv	a2, s4
802064f8: 83 06 06 00  	lb	a3, 0(a2)
802064fc: 05 06        	addi	a2, a2, 1
802064fe: 93 a6 06 fc  	slti	a3, a3, -64
80206502: 93 c6 16 00  	xori	a3, a3, 1
80206506: fd 15        	addi	a1, a1, -1
80206508: 36 95        	add	a0, a0, a3
8020650a: fd f5        	bnez	a1, 0x802064f8 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x56>
8020650c: 2d a0        	j	0x80206536 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x94>
8020650e: 03 24 4c 03  	lw	s0, 52(s8)
80206512: 93 8c 19 00  	addi	s9, s3, 1
80206516: 93 0a d0 02  	li	s5, 45
8020651a: 13 75 44 00  	andi	a0, s0, 4
8020651e: 61 f5        	bnez	a0, 0x802064e6 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x44>
80206520: 01 4a        	li	s4, 0
80206522: 03 35 0c 00  	ld	a0, 0(s8)
80206526: 01 ed        	bnez	a0, 0x8020653e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x9c>
80206528: 25 a8        	j	0x80206560 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020652a: 52 85        	mv	a0, s4
8020652c: da 85        	mv	a1, s6
8020652e: 97 00 00 00  	auipc	ra, 0
80206532: e7 80 20 47  	jalr	1138(ra)
80206536: aa 9c        	add	s9, s9, a0
80206538: 03 35 0c 00  	ld	a0, 0(s8)
8020653c: 15 c1        	beqz	a0, 0x80206560 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
8020653e: 03 3d 8c 00  	ld	s10, 8(s8)
80206542: 63 ff ac 01  	bgeu	s9, s10, 0x80206560 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xbe>
80206546: 21 88        	andi	s0, s0, 8
80206548: 35 ec        	bnez	s0, 0x802065c4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x122>
8020654a: 83 45 8c 03  	lbu	a1, 56(s8)
8020654e: 05 46        	li	a2, 1
80206550: 33 05 9d 41  	sub	a0, s10, s9
80206554: 63 4f b6 0a  	blt	a2, a1, 0x80206612 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x170>
80206558: f1 e5        	bnez	a1, 0x80206624 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
8020655a: 2a 8d        	mv	s10, a0
8020655c: 2e 85        	mv	a0, a1
8020655e: e1 a0        	j	0x80206626 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80206560: 03 34 0c 02  	ld	s0, 32(s8)
80206564: 83 34 8c 02  	ld	s1, 40(s8)
80206568: 22 85        	mv	a0, s0
8020656a: a6 85        	mv	a1, s1
8020656c: 56 86        	mv	a2, s5
8020656e: d2 86        	mv	a3, s4
80206570: 5a 87        	mv	a4, s6
80206572: 97 00 00 00  	auipc	ra, 0
80206576: e7 80 80 14  	jalr	328(ra)
8020657a: 85 4b        	li	s7, 1
8020657c: 0d c1        	beqz	a0, 0x8020659e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xfc>
8020657e: 5e 85        	mv	a0, s7
80206580: a6 70        	ld	ra, 104(sp)
80206582: 06 74        	ld	s0, 96(sp)
80206584: e6 64        	ld	s1, 88(sp)
80206586: 46 69        	ld	s2, 80(sp)
80206588: a6 69        	ld	s3, 72(sp)
8020658a: 06 6a        	ld	s4, 64(sp)
8020658c: e2 7a        	ld	s5, 56(sp)
8020658e: 42 7b        	ld	s6, 48(sp)
80206590: a2 7b        	ld	s7, 40(sp)
80206592: 02 7c        	ld	s8, 32(sp)
80206594: e2 6c        	ld	s9, 24(sp)
80206596: 42 6d        	ld	s10, 16(sp)
80206598: a2 6d        	ld	s11, 8(sp)
8020659a: 65 61        	addi	sp, sp, 112
8020659c: 82 80        	ret
8020659e: 9c 6c        	ld	a5, 24(s1)
802065a0: 22 85        	mv	a0, s0
802065a2: ca 85        	mv	a1, s2
802065a4: 4e 86        	mv	a2, s3
802065a6: a6 70        	ld	ra, 104(sp)
802065a8: 06 74        	ld	s0, 96(sp)
802065aa: e6 64        	ld	s1, 88(sp)
802065ac: 46 69        	ld	s2, 80(sp)
802065ae: a6 69        	ld	s3, 72(sp)
802065b0: 06 6a        	ld	s4, 64(sp)
802065b2: e2 7a        	ld	s5, 56(sp)
802065b4: 42 7b        	ld	s6, 48(sp)
802065b6: a2 7b        	ld	s7, 40(sp)
802065b8: 02 7c        	ld	s8, 32(sp)
802065ba: e2 6c        	ld	s9, 24(sp)
802065bc: 42 6d        	ld	s10, 16(sp)
802065be: a2 6d        	ld	s11, 8(sp)
802065c0: 65 61        	addi	sp, sp, 112
802065c2: 82 87        	jr	a5
802065c4: 03 24 0c 03  	lw	s0, 48(s8)
802065c8: 13 05 00 03  	li	a0, 48
802065cc: 83 45 8c 03  	lbu	a1, 56(s8)
802065d0: 2e e0        	sd	a1, 0(sp)
802065d2: 83 3d 0c 02  	ld	s11, 32(s8)
802065d6: 83 34 8c 02  	ld	s1, 40(s8)
802065da: 23 28 ac 02  	sw	a0, 48(s8)
802065de: 85 4b        	li	s7, 1
802065e0: 23 0c 7c 03  	sb	s7, 56(s8)
802065e4: 6e 85        	mv	a0, s11
802065e6: a6 85        	mv	a1, s1
802065e8: 56 86        	mv	a2, s5
802065ea: d2 86        	mv	a3, s4
802065ec: 5a 87        	mv	a4, s6
802065ee: 97 00 00 00  	auipc	ra, 0
802065f2: e7 80 c0 0c  	jalr	204(ra)
802065f6: 41 f5        	bnez	a0, 0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802065f8: 22 8a        	mv	s4, s0
802065fa: 33 04 9d 41  	sub	s0, s10, s9
802065fe: 05 04        	addi	s0, s0, 1
80206600: 7d 14        	addi	s0, s0, -1
80206602: 51 c8        	beqz	s0, 0x80206696 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1f4>
80206604: 90 70        	ld	a2, 32(s1)
80206606: 93 05 00 03  	li	a1, 48
8020660a: 6e 85        	mv	a0, s11
8020660c: 02 96        	jalr	a2
8020660e: 6d d9        	beqz	a0, 0x80206600 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x15e>
80206610: bd b7        	j	0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80206612: 09 46        	li	a2, 2
80206614: 63 98 c5 00  	bne	a1, a2, 0x80206624 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x182>
80206618: 93 05 15 00  	addi	a1, a0, 1
8020661c: 05 81        	srli	a0, a0, 1
8020661e: 13 dd 15 00  	srli	s10, a1, 1
80206622: 11 a0        	j	0x80206626 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x184>
80206624: 01 4d        	li	s10, 0
80206626: 83 3c 0c 02  	ld	s9, 32(s8)
8020662a: 83 3d 8c 02  	ld	s11, 40(s8)
8020662e: 83 24 0c 03  	lw	s1, 48(s8)
80206632: 13 04 15 00  	addi	s0, a0, 1
80206636: 7d 14        	addi	s0, s0, -1
80206638: 09 c8        	beqz	s0, 0x8020664a <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1a8>
8020663a: 03 b6 0d 02  	ld	a2, 32(s11)
8020663e: 66 85        	mv	a0, s9
80206640: a6 85        	mv	a1, s1
80206642: 02 96        	jalr	a2
80206644: 6d d9        	beqz	a0, 0x80206636 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x194>
80206646: 85 4b        	li	s7, 1
80206648: 1d bf        	j	0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
8020664a: 37 05 11 00  	lui	a0, 272
8020664e: 85 4b        	li	s7, 1
80206650: e3 87 a4 f2  	beq	s1, a0, 0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80206654: 66 85        	mv	a0, s9
80206656: ee 85        	mv	a1, s11
80206658: 56 86        	mv	a2, s5
8020665a: d2 86        	mv	a3, s4
8020665c: 5a 87        	mv	a4, s6
8020665e: 97 00 00 00  	auipc	ra, 0
80206662: e7 80 c0 05  	jalr	92(ra)
80206666: 01 fd        	bnez	a0, 0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80206668: 83 b6 8d 01  	ld	a3, 24(s11)
8020666c: 66 85        	mv	a0, s9
8020666e: ca 85        	mv	a1, s2
80206670: 4e 86        	mv	a2, s3
80206672: 82 96        	jalr	a3
80206674: 09 f5        	bnez	a0, 0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
80206676: b3 09 a0 41  	neg	s3, s10
8020667a: 7d 5a        	li	s4, -1
8020667c: 7d 59        	li	s2, -1
8020667e: 33 85 29 01  	add	a0, s3, s2
80206682: 63 08 45 03  	beq	a0, s4, 0x802066b2 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x210>
80206686: 03 b6 0d 02  	ld	a2, 32(s11)
8020668a: 66 85        	mv	a0, s9
8020668c: a6 85        	mv	a1, s1
8020668e: 02 96        	jalr	a2
80206690: 05 09        	addi	s2, s2, 1
80206692: 75 d5        	beqz	a0, 0x8020667e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x1dc>
80206694: 05 a0        	j	0x802066b4 <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0x212>
80206696: 94 6c        	ld	a3, 24(s1)
80206698: 6e 85        	mv	a0, s11
8020669a: ca 85        	mv	a1, s2
8020669c: 4e 86        	mv	a2, s3
8020669e: 82 96        	jalr	a3
802066a0: e3 1f 05 ec  	bnez	a0, 0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802066a4: 81 4b        	li	s7, 0
802066a6: 23 28 4c 03  	sw	s4, 48(s8)
802066aa: 02 65        	ld	a0, 0(sp)
802066ac: 23 0c ac 02  	sb	a0, 56(s8)
802066b0: f9 b5        	j	0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>
802066b2: 6a 89        	mv	s2, s10
802066b4: b3 3b a9 01  	sltu	s7, s2, s10
802066b8: d9 b5        	j	0x8020657e <_ZN4core3fmt9Formatter12pad_integral17h1a9bce3758414fa1E+0xdc>

00000000802066ba <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE>:
802066ba: 79 71        	addi	sp, sp, -48
802066bc: 06 f4        	sd	ra, 40(sp)
802066be: 22 f0        	sd	s0, 32(sp)
802066c0: 26 ec        	sd	s1, 24(sp)
802066c2: 4a e8        	sd	s2, 16(sp)
802066c4: 4e e4        	sd	s3, 8(sp)
802066c6: 9b 07 06 00  	sext.w	a5, a2
802066ca: 37 08 11 00  	lui	a6, 272
802066ce: 3a 89        	mv	s2, a4
802066d0: b6 84        	mv	s1, a3
802066d2: 2e 84        	mv	s0, a1
802066d4: aa 89        	mv	s3, a0
802066d6: 63 89 07 01  	beq	a5, a6, 0x802066e8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x2e>
802066da: 14 70        	ld	a3, 32(s0)
802066dc: 4e 85        	mv	a0, s3
802066de: b2 85        	mv	a1, a2
802066e0: 82 96        	jalr	a3
802066e2: aa 85        	mv	a1, a0
802066e4: 05 45        	li	a0, 1
802066e6: 91 ed        	bnez	a1, 0x80206702 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x48>
802066e8: 81 cc        	beqz	s1, 0x80206700 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4265b5fcbd9ec64bE+0x46>
802066ea: 1c 6c        	ld	a5, 24(s0)
802066ec: 4e 85        	mv	a0, s3
802066ee: a6 85        	mv	a1, s1
802066f0: 4a 86        	mv	a2, s2
802066f2: a2 70        	ld	ra, 40(sp)
802066f4: 02 74        	ld	s0, 32(sp)
802066f6: e2 64        	ld	s1, 24(sp)
802066f8: 42 69        	ld	s2, 16(sp)
802066fa: a2 69        	ld	s3, 8(sp)
802066fc: 45 61        	addi	sp, sp, 48
802066fe: 82 87        	jr	a5
80206700: 01 45        	li	a0, 0
80206702: a2 70        	ld	ra, 40(sp)
80206704: 02 74        	ld	s0, 32(sp)
80206706: e2 64        	ld	s1, 24(sp)
80206708: 42 69        	ld	s2, 16(sp)
8020670a: a2 69        	ld	s3, 8(sp)
8020670c: 45 61        	addi	sp, sp, 48
8020670e: 82 80        	ret

0000000080206710 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE>:
80206710: 5d 71        	addi	sp, sp, -80
80206712: 86 e4        	sd	ra, 72(sp)
80206714: a2 e0        	sd	s0, 64(sp)
80206716: 26 fc        	sd	s1, 56(sp)
80206718: 4a f8        	sd	s2, 48(sp)
8020671a: 4e f4        	sd	s3, 40(sp)
8020671c: 52 f0        	sd	s4, 32(sp)
8020671e: 56 ec        	sd	s5, 24(sp)
80206720: 5a e8        	sd	s6, 16(sp)
80206722: 5e e4        	sd	s7, 8(sp)
80206724: 2a 8a        	mv	s4, a0
80206726: 83 32 05 00  	ld	t0, 0(a0)
8020672a: 08 69        	ld	a0, 16(a0)
8020672c: b3 e6 a2 00  	or	a3, t0, a0
80206730: b2 89        	mv	s3, a2
80206732: 2e 89        	mv	s2, a1
80206734: 63 84 06 16  	beqz	a3, 0x8020689c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80206738: 63 07 05 10  	beqz	a0, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020673c: 03 37 8a 01  	ld	a4, 24(s4)
80206740: 01 45        	li	a0, 0
80206742: b3 06 39 01  	add	a3, s2, s3
80206746: 05 07        	addi	a4, a4, 1
80206748: 37 03 11 00  	lui	t1, 272
8020674c: 93 08 f0 0d  	li	a7, 223
80206750: 13 08 00 0f  	li	a6, 240
80206754: 4a 86        	mv	a2, s2
80206756: 01 a8        	j	0x80206766 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x56>
80206758: 93 05 16 00  	addi	a1, a2, 1
8020675c: 11 8d        	sub	a0, a0, a2
8020675e: 2e 95        	add	a0, a0, a1
80206760: 2e 86        	mv	a2, a1
80206762: 63 02 64 0e  	beq	s0, t1, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80206766: 7d 17        	addi	a4, a4, -1
80206768: 25 c7        	beqz	a4, 0x802067d0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xc0>
8020676a: 63 0e d6 0c  	beq	a2, a3, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020676e: 83 05 06 00  	lb	a1, 0(a2)
80206772: 13 f4 f5 0f  	andi	s0, a1, 255
80206776: e3 d1 05 fe  	bgez	a1, 0x80206758 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x48>
8020677a: 83 45 16 00  	lbu	a1, 1(a2)
8020677e: 93 74 f4 01  	andi	s1, s0, 31
80206782: 93 f7 f5 03  	andi	a5, a1, 63
80206786: 63 f9 88 02  	bgeu	a7, s0, 0x802067b8 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xa8>
8020678a: 83 45 26 00  	lbu	a1, 2(a2)
8020678e: 9a 07        	slli	a5, a5, 6
80206790: 93 f5 f5 03  	andi	a1, a1, 63
80206794: cd 8f        	or	a5, a5, a1
80206796: 63 67 04 03  	bltu	s0, a6, 0x802067c4 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0xb4>
8020679a: 83 45 36 00  	lbu	a1, 3(a2)
8020679e: f6 14        	slli	s1, s1, 61
802067a0: ad 90        	srli	s1, s1, 43
802067a2: 9a 07        	slli	a5, a5, 6
802067a4: 93 f5 f5 03  	andi	a1, a1, 63
802067a8: dd 8d        	or	a1, a1, a5
802067aa: 33 e4 95 00  	or	s0, a1, s1
802067ae: 63 0c 64 08  	beq	s0, t1, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802067b2: 93 05 46 00  	addi	a1, a2, 4
802067b6: 5d b7        	j	0x8020675c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802067b8: 93 05 26 00  	addi	a1, a2, 2
802067bc: 13 94 64 00  	slli	s0, s1, 6
802067c0: 5d 8c        	or	s0, s0, a5
802067c2: 69 bf        	j	0x8020675c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802067c4: 93 05 36 00  	addi	a1, a2, 3
802067c8: 13 94 c4 00  	slli	s0, s1, 12
802067cc: 5d 8c        	or	s0, s0, a5
802067ce: 79 b7        	j	0x8020675c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x4c>
802067d0: 63 0b d6 06  	beq	a2, a3, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
802067d4: 83 05 06 00  	lb	a1, 0(a2)
802067d8: 63 d3 05 04  	bgez	a1, 0x8020681e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802067dc: 93 f5 f5 0f  	andi	a1, a1, 255
802067e0: 93 06 00 0e  	li	a3, 224
802067e4: 63 ed d5 02  	bltu	a1, a3, 0x8020681e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802067e8: 93 06 00 0f  	li	a3, 240
802067ec: 63 e9 d5 02  	bltu	a1, a3, 0x8020681e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x10e>
802067f0: 83 46 16 00  	lbu	a3, 1(a2)
802067f4: 03 47 26 00  	lbu	a4, 2(a2)
802067f8: 93 f6 f6 03  	andi	a3, a3, 63
802067fc: 13 77 f7 03  	andi	a4, a4, 63
80206800: 03 46 36 00  	lbu	a2, 3(a2)
80206804: f6 15        	slli	a1, a1, 61
80206806: ad 91        	srli	a1, a1, 43
80206808: b2 06        	slli	a3, a3, 12
8020680a: 1a 07        	slli	a4, a4, 6
8020680c: d9 8e        	or	a3, a3, a4
8020680e: 13 76 f6 03  	andi	a2, a2, 63
80206812: 55 8e        	or	a2, a2, a3
80206814: d1 8d        	or	a1, a1, a2
80206816: 37 06 11 00  	lui	a2, 272
8020681a: 63 86 c5 02  	beq	a1, a2, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020681e: 05 c1        	beqz	a0, 0x8020683e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80206820: 63 7d 35 01  	bgeu	a0, s3, 0x8020683a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12a>
80206824: b3 05 a9 00  	add	a1, s2, a0
80206828: 83 85 05 00  	lb	a1, 0(a1)
8020682c: 13 06 00 fc  	li	a2, -64
80206830: 63 d7 c5 00  	bge	a1, a2, 0x8020683e <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x12e>
80206834: 81 45        	li	a1, 0
80206836: 91 e5        	bnez	a1, 0x80206842 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x132>
80206838: 39 a0        	j	0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
8020683a: e3 1d 35 ff  	bne	a0, s3, 0x80206834 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x124>
8020683e: ca 85        	mv	a1, s2
80206840: 99 c1        	beqz	a1, 0x80206846 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x136>
80206842: aa 89        	mv	s3, a0
80206844: 2e 89        	mv	s2, a1
80206846: 63 8b 02 04  	beqz	t0, 0x8020689c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
8020684a: 03 34 8a 00  	ld	s0, 8(s4)
8020684e: 13 05 00 02  	li	a0, 32
80206852: 63 fd a9 02  	bgeu	s3, a0, 0x8020688c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x17c>
80206856: 01 45        	li	a0, 0
80206858: 63 8e 09 00  	beqz	s3, 0x80206874 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x164>
8020685c: ce 85        	mv	a1, s3
8020685e: 4a 86        	mv	a2, s2
80206860: 83 06 06 00  	lb	a3, 0(a2)
80206864: 05 06        	addi	a2, a2, 1
80206866: 93 a6 06 fc  	slti	a3, a3, -64
8020686a: 93 c6 16 00  	xori	a3, a3, 1
8020686e: fd 15        	addi	a1, a1, -1
80206870: 36 95        	add	a0, a0, a3
80206872: fd f5        	bnez	a1, 0x80206860 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x150>
80206874: 63 74 85 02  	bgeu	a0, s0, 0x8020689c <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x18c>
80206878: 83 45 8a 03  	lbu	a1, 56(s4)
8020687c: 05 46        	li	a2, 1
8020687e: 33 05 a4 40  	sub	a0, s0, a0
80206882: 63 4f b6 02  	blt	a2, a1, 0x802068c0 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1b0>
80206886: b1 c5        	beqz	a1, 0x802068d2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
80206888: 81 4a        	li	s5, 0
8020688a: b1 a0        	j	0x802068d6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
8020688c: 4a 85        	mv	a0, s2
8020688e: ce 85        	mv	a1, s3
80206890: 97 00 00 00  	auipc	ra, 0
80206894: e7 80 00 11  	jalr	272(ra)
80206898: e3 60 85 fe  	bltu	a0, s0, 0x80206878 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x168>
8020689c: 83 35 8a 02  	ld	a1, 40(s4)
802068a0: 03 35 0a 02  	ld	a0, 32(s4)
802068a4: 9c 6d        	ld	a5, 24(a1)
802068a6: ca 85        	mv	a1, s2
802068a8: 4e 86        	mv	a2, s3
802068aa: a6 60        	ld	ra, 72(sp)
802068ac: 06 64        	ld	s0, 64(sp)
802068ae: e2 74        	ld	s1, 56(sp)
802068b0: 42 79        	ld	s2, 48(sp)
802068b2: a2 79        	ld	s3, 40(sp)
802068b4: 02 7a        	ld	s4, 32(sp)
802068b6: e2 6a        	ld	s5, 24(sp)
802068b8: 42 6b        	ld	s6, 16(sp)
802068ba: a2 6b        	ld	s7, 8(sp)
802068bc: 61 61        	addi	sp, sp, 80
802068be: 82 87        	jr	a5
802068c0: 09 46        	li	a2, 2
802068c2: 63 98 c5 00  	bne	a1, a2, 0x802068d2 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c2>
802068c6: 93 05 15 00  	addi	a1, a0, 1
802068ca: 05 81        	srli	a0, a0, 1
802068cc: 93 da 15 00  	srli	s5, a1, 1
802068d0: 19 a0        	j	0x802068d6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1c6>
802068d2: aa 8a        	mv	s5, a0
802068d4: 01 45        	li	a0, 0
802068d6: 03 3b 0a 02  	ld	s6, 32(s4)
802068da: 83 3b 8a 02  	ld	s7, 40(s4)
802068de: 83 24 0a 03  	lw	s1, 48(s4)
802068e2: 13 04 15 00  	addi	s0, a0, 1
802068e6: 7d 14        	addi	s0, s0, -1
802068e8: 09 c8        	beqz	s0, 0x802068fa <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1ea>
802068ea: 03 b6 0b 02  	ld	a2, 32(s7)
802068ee: 5a 85        	mv	a0, s6
802068f0: a6 85        	mv	a1, s1
802068f2: 02 96        	jalr	a2
802068f4: 6d d9        	beqz	a0, 0x802068e6 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x1d6>
802068f6: 05 4a        	li	s4, 1
802068f8: 81 a0        	j	0x80206938 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
802068fa: 37 05 11 00  	lui	a0, 272
802068fe: 05 4a        	li	s4, 1
80206900: 63 8c a4 02  	beq	s1, a0, 0x80206938 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80206904: 83 b6 8b 01  	ld	a3, 24(s7)
80206908: 5a 85        	mv	a0, s6
8020690a: ca 85        	mv	a1, s2
8020690c: 4e 86        	mv	a2, s3
8020690e: 82 96        	jalr	a3
80206910: 05 e5        	bnez	a0, 0x80206938 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x228>
80206912: 33 09 50 41  	neg	s2, s5
80206916: fd 59        	li	s3, -1
80206918: 7d 54        	li	s0, -1
8020691a: 33 05 89 00  	add	a0, s2, s0
8020691e: 63 0a 35 01  	beq	a0, s3, 0x80206932 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x222>
80206922: 03 b6 0b 02  	ld	a2, 32(s7)
80206926: 5a 85        	mv	a0, s6
80206928: a6 85        	mv	a1, s1
8020692a: 02 96        	jalr	a2
8020692c: 05 04        	addi	s0, s0, 1
8020692e: 75 d5        	beqz	a0, 0x8020691a <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x20a>
80206930: 11 a0        	j	0x80206934 <_ZN4core3fmt9Formatter3pad17hda79bd7ddde08dceE+0x224>
80206932: 56 84        	mv	s0, s5
80206934: 33 3a 54 01  	sltu	s4, s0, s5
80206938: 52 85        	mv	a0, s4
8020693a: a6 60        	ld	ra, 72(sp)
8020693c: 06 64        	ld	s0, 64(sp)
8020693e: e2 74        	ld	s1, 56(sp)
80206940: 42 79        	ld	s2, 48(sp)
80206942: a2 79        	ld	s3, 40(sp)
80206944: 02 7a        	ld	s4, 32(sp)
80206946: e2 6a        	ld	s5, 24(sp)
80206948: 42 6b        	ld	s6, 16(sp)
8020694a: a2 6b        	ld	s7, 8(sp)
8020694c: 61 61        	addi	sp, sp, 80
8020694e: 82 80        	ret

0000000080206950 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hfc5c3bdf90937d5cE>:
80206950: ae 86        	mv	a3, a1
80206952: aa 85        	mv	a1, a0
80206954: 32 85        	mv	a0, a2
80206956: 36 86        	mv	a2, a3
80206958: 17 03 00 00  	auipc	t1, 0
8020695c: 67 00 83 db  	jr	-584(t1)

0000000080206960 <_ZN4core5slice5index26slice_start_index_len_fail17hd6f51de6120413ffE>:
80206960: 59 71        	addi	sp, sp, -112
80206962: 86 f4        	sd	ra, 104(sp)
80206964: 2a e4        	sd	a0, 8(sp)
80206966: 2e e8        	sd	a1, 16(sp)
80206968: 28 00        	addi	a0, sp, 8
8020696a: aa e4        	sd	a0, 72(sp)

000000008020696c <.Lpcrel_hi737>:
8020696c: 17 05 00 00  	auipc	a0, 0
80206970: 13 05 45 5b  	addi	a0, a0, 1460
80206974: aa e8        	sd	a0, 80(sp)
80206976: 0c 08        	addi	a1, sp, 16
80206978: ae ec        	sd	a1, 88(sp)
8020697a: aa f0        	sd	a0, 96(sp)

000000008020697c <.Lpcrel_hi738>:
8020697c: 17 25 00 00  	auipc	a0, 2
80206980: 13 05 c5 73  	addi	a0, a0, 1852
80206984: 2a ec        	sd	a0, 24(sp)
80206986: 09 45        	li	a0, 2
80206988: 2a f0        	sd	a0, 32(sp)
8020698a: 02 fc        	sd	zero, 56(sp)
8020698c: ac 00        	addi	a1, sp, 72
8020698e: 2e f4        	sd	a1, 40(sp)
80206990: 2a f8        	sd	a0, 48(sp)
80206992: 28 08        	addi	a0, sp, 24
80206994: b2 85        	mv	a1, a2
80206996: 97 f0 ff ff  	auipc	ra, 1048575
8020699a: e7 80 20 37  	jalr	882(ra)
8020699e: 00 00        	unimp	

00000000802069a0 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E>:
802069a0: 2a 86        	mv	a2, a0
802069a2: 13 07 75 00  	addi	a4, a0, 7
802069a6: 61 9b        	andi	a4, a4, -8
802069a8: b3 02 a7 40  	sub	t0, a4, a0
802069ac: 63 e7 55 00  	bltu	a1, t0, 0x802069ba <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1a>
802069b0: 33 88 55 40  	sub	a6, a1, t0
802069b4: a1 46        	li	a3, 8
802069b6: 63 7f d8 00  	bgeu	a6, a3, 0x802069d4 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x34>
802069ba: 01 45        	li	a0, 0
802069bc: 99 c9        	beqz	a1, 0x802069d2 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
802069be: 83 06 06 00  	lb	a3, 0(a2)
802069c2: 05 06        	addi	a2, a2, 1
802069c4: 93 a6 06 fc  	slti	a3, a3, -64
802069c8: 93 c6 16 00  	xori	a3, a3, 1
802069cc: fd 15        	addi	a1, a1, -1
802069ce: 36 95        	add	a0, a0, a3
802069d0: fd f5        	bnez	a1, 0x802069be <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x1e>
802069d2: 82 80        	ret
802069d4: 93 76 78 00  	andi	a3, a6, 7
802069d8: 81 45        	li	a1, 0
802069da: 63 0f c7 00  	beq	a4, a2, 0x802069f8 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x58>
802069de: 33 07 e6 40  	sub	a4, a2, a4
802069e2: b2 87        	mv	a5, a2
802069e4: 03 85 07 00  	lb	a0, 0(a5)
802069e8: 85 07        	addi	a5, a5, 1
802069ea: 13 25 05 fc  	slti	a0, a0, -64
802069ee: 13 45 15 00  	xori	a0, a0, 1
802069f2: 05 07        	addi	a4, a4, 1
802069f4: aa 95        	add	a1, a1, a0
802069f6: 7d f7        	bnez	a4, 0x802069e4 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x44>
802069f8: b2 92        	add	t0, t0, a2
802069fa: 01 46        	li	a2, 0
802069fc: 91 ce        	beqz	a3, 0x80206a18 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x78>
802069fe: 13 77 88 ff  	andi	a4, a6, -8
80206a02: 16 97        	add	a4, a4, t0
80206a04: 03 05 07 00  	lb	a0, 0(a4)
80206a08: 05 07        	addi	a4, a4, 1
80206a0a: 13 25 05 fc  	slti	a0, a0, -64
80206a0e: 13 45 15 00  	xori	a0, a0, 1
80206a12: fd 16        	addi	a3, a3, -1
80206a14: 2a 96        	add	a2, a2, a0
80206a16: fd f6        	bnez	a3, 0x80206a04 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x64>
80206a18: 13 57 38 00  	srli	a4, a6, 3

0000000080206a1c <.Lpcrel_hi762>:
80206a1c: 17 45 00 00  	auipc	a0, 4
80206a20: 03 3f c5 8e  	ld	t5, -1812(a0)

0000000080206a24 <.Lpcrel_hi763>:
80206a24: 17 45 00 00  	auipc	a0, 4
80206a28: 83 38 c5 8e  	ld	a7, -1812(a0)
80206a2c: 37 15 00 10  	lui	a0, 65537
80206a30: 12 05        	slli	a0, a0, 4
80206a32: 05 05        	addi	a0, a0, 1
80206a34: 42 05        	slli	a0, a0, 16
80206a36: 13 08 15 00  	addi	a6, a0, 1
80206a3a: 33 05 b6 00  	add	a0, a2, a1
80206a3e: 1d a0        	j	0x80206a64 <.Lpcrel_hi763+0x40>
80206a40: 93 12 3e 00  	slli	t0, t3, 3
80206a44: 9a 92        	add	t0, t0, t1
80206a46: 33 87 c3 41  	sub	a4, t2, t3
80206a4a: 13 76 3e 00  	andi	a2, t3, 3
80206a4e: b3 f6 15 01  	and	a3, a1, a7
80206a52: a1 81        	srli	a1, a1, 8
80206a54: b3 f5 15 01  	and	a1, a1, a7
80206a58: b6 95        	add	a1, a1, a3
80206a5a: b3 85 05 03  	mul	a1, a1, a6
80206a5e: c1 91        	srli	a1, a1, 48
80206a60: 2e 95        	add	a0, a0, a1
80206a62: 35 ee        	bnez	a2, 0x80206ade <.Lpcrel_hi763+0xba>
80206a64: 3d d7        	beqz	a4, 0x802069d2 <_ZN4core3str5count14do_count_chars17h9cdea1010c655a17E+0x32>
80206a66: ba 83        	mv	t2, a4
80206a68: 16 83        	mv	t1, t0
80206a6a: 93 05 00 0c  	li	a1, 192
80206a6e: 3a 8e        	mv	t3, a4
80206a70: 63 64 b7 00  	bltu	a4, a1, 0x80206a78 <.Lpcrel_hi763+0x54>
80206a74: 13 0e 00 0c  	li	t3, 192
80206a78: 93 75 ce 0f  	andi	a1, t3, 252
80206a7c: 93 97 35 00  	slli	a5, a1, 3
80206a80: b3 0e f3 00  	add	t4, t1, a5
80206a84: d5 dd        	beqz	a1, 0x80206a40 <.Lpcrel_hi763+0x1c>
80206a86: 81 45        	li	a1, 0
80206a88: 1a 86        	mv	a2, t1
80206a8a: 5d da        	beqz	a2, 0x80206a40 <.Lpcrel_hi763+0x1c>
80206a8c: 18 62        	ld	a4, 0(a2)
80206a8e: 93 47 f7 ff  	not	a5, a4
80206a92: 9d 83        	srli	a5, a5, 7
80206a94: 19 83        	srli	a4, a4, 6
80206a96: 14 66        	ld	a3, 8(a2)
80206a98: 5d 8f        	or	a4, a4, a5
80206a9a: 33 77 e7 01  	and	a4, a4, t5
80206a9e: ba 95        	add	a1, a1, a4
80206aa0: 13 c7 f6 ff  	not	a4, a3
80206aa4: 1d 83        	srli	a4, a4, 7
80206aa6: 1c 6a        	ld	a5, 16(a2)
80206aa8: 99 82        	srli	a3, a3, 6
80206aaa: d9 8e        	or	a3, a3, a4
80206aac: b3 f6 e6 01  	and	a3, a3, t5
80206ab0: 13 c7 f7 ff  	not	a4, a5
80206ab4: 1d 83        	srli	a4, a4, 7
80206ab6: 99 83        	srli	a5, a5, 6
80206ab8: 5d 8f        	or	a4, a4, a5
80206aba: 1c 6e        	ld	a5, 24(a2)
80206abc: 33 77 e7 01  	and	a4, a4, t5
80206ac0: ba 96        	add	a3, a3, a4
80206ac2: b6 95        	add	a1, a1, a3
80206ac4: 93 c6 f7 ff  	not	a3, a5
80206ac8: 9d 82        	srli	a3, a3, 7
80206aca: 99 83        	srli	a5, a5, 6
80206acc: dd 8e        	or	a3, a3, a5
80206ace: b3 f6 e6 01  	and	a3, a3, t5
80206ad2: 13 06 06 02  	addi	a2, a2, 32
80206ad6: b6 95        	add	a1, a1, a3
80206ad8: e3 19 d6 fb  	bne	a2, t4, 0x80206a8a <.Lpcrel_hi763+0x66>
80206adc: 95 b7        	j	0x80206a40 <.Lpcrel_hi763+0x1c>
80206ade: 63 0a 03 02  	beqz	t1, 0x80206b12 <.Lpcrel_hi763+0xee>
80206ae2: 93 05 00 0c  	li	a1, 192
80206ae6: 63 e4 b3 00  	bltu	t2, a1, 0x80206aee <.Lpcrel_hi763+0xca>
80206aea: 93 03 00 0c  	li	t2, 192
80206aee: 81 45        	li	a1, 0
80206af0: 13 f6 33 00  	andi	a2, t2, 3
80206af4: 0e 06        	slli	a2, a2, 3
80206af6: 83 b6 0e 00  	ld	a3, 0(t4)
80206afa: a1 0e        	addi	t4, t4, 8
80206afc: 13 c7 f6 ff  	not	a4, a3
80206b00: 1d 83        	srli	a4, a4, 7
80206b02: 99 82        	srli	a3, a3, 6
80206b04: d9 8e        	or	a3, a3, a4
80206b06: b3 f6 e6 01  	and	a3, a3, t5
80206b0a: 61 16        	addi	a2, a2, -8
80206b0c: b6 95        	add	a1, a1, a3
80206b0e: 65 f6        	bnez	a2, 0x80206af6 <.Lpcrel_hi763+0xd2>
80206b10: 11 a0        	j	0x80206b14 <.Lpcrel_hi763+0xf0>
80206b12: 81 45        	li	a1, 0
80206b14: 33 f6 15 01  	and	a2, a1, a7
80206b18: a1 81        	srli	a1, a1, 8
80206b1a: b3 f5 15 01  	and	a1, a1, a7
80206b1e: b2 95        	add	a1, a1, a2
80206b20: b3 85 05 03  	mul	a1, a1, a6
80206b24: c1 91        	srli	a1, a1, 48
80206b26: 2e 95        	add	a0, a0, a1
80206b28: 82 80        	ret

0000000080206b2a <_ZN69_$LT$core..num..nonzero..NonZeroUsize$u20$as$u20$core..fmt..Debug$GT$3fmt17hd14b7b131e7caa18E>:
80206b2a: 41 11        	addi	sp, sp, -16
80206b2c: 06 e4        	sd	ra, 8(sp)
80206b2e: 08 61        	ld	a0, 0(a0)
80206b30: 2a e0        	sd	a0, 0(sp)
80206b32: 0a 85        	mv	a0, sp
80206b34: 97 00 00 00  	auipc	ra, 0
80206b38: e7 80 20 18  	jalr	386(ra)
80206b3c: a2 60        	ld	ra, 8(sp)
80206b3e: 41 01        	addi	sp, sp, 16
80206b40: 82 80        	ret

0000000080206b42 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E>:
80206b42: 75 71        	addi	sp, sp, -144
80206b44: 06 e5        	sd	ra, 136(sp)
80206b46: 2e 88        	mv	a6, a1
80206b48: 81 47        	li	a5, 0
80206b4a: 14 61        	ld	a3, 0(a0)
80206b4c: 30 01        	addi	a2, sp, 136
80206b4e: a9 48        	li	a7, 10
80206b50: bd 42        	li	t0, 15
80206b52: 21 a8        	j	0x80206b6a <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x28>
80206b54: 13 07 f6 ff  	addi	a4, a2, -1
80206b58: 93 56 45 00  	srli	a3, a0, 4
80206b5c: 9a 95        	add	a1, a1, t1
80206b5e: a3 0f b6 fe  	sb	a1, -1(a2)
80206b62: 85 07        	addi	a5, a5, 1
80206b64: 3a 86        	mv	a2, a4
80206b66: 63 fc a2 00  	bgeu	t0, a0, 0x80206b7e <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x3c>
80206b6a: 36 85        	mv	a0, a3
80206b6c: 93 f5 f6 00  	andi	a1, a3, 15
80206b70: 13 03 00 03  	li	t1, 48
80206b74: e3 e0 15 ff  	bltu	a1, a7, 0x80206b54 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x12>
80206b78: 13 03 70 05  	li	t1, 87
80206b7c: e1 bf        	j	0x80206b54 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h3add34de19d70c33E+0x12>
80206b7e: 13 05 00 08  	li	a0, 128
80206b82: 1d 8d        	sub	a0, a0, a5
80206b84: 93 05 10 08  	li	a1, 129
80206b88: 63 70 b5 02  	bgeu	a0, a1, 0x80206ba8 <.Lpcrel_hi1415>

0000000080206b8c <.Lpcrel_hi1416>:
80206b8c: 17 25 00 00  	auipc	a0, 2
80206b90: 13 06 45 3f  	addi	a2, a0, 1012
80206b94: 85 45        	li	a1, 1
80206b96: 89 46        	li	a3, 2
80206b98: 42 85        	mv	a0, a6
80206b9a: 97 00 00 00  	auipc	ra, 0
80206b9e: e7 80 80 90  	jalr	-1784(ra)
80206ba2: aa 60        	ld	ra, 136(sp)
80206ba4: 49 61        	addi	sp, sp, 144
80206ba6: 82 80        	ret

0000000080206ba8 <.Lpcrel_hi1415>:
80206ba8: 97 25 00 00  	auipc	a1, 2
80206bac: 13 86 05 3c  	addi	a2, a1, 960
80206bb0: 93 05 00 08  	li	a1, 128
80206bb4: 97 00 00 00  	auipc	ra, 0
80206bb8: e7 80 c0 da  	jalr	-596(ra)
80206bbc: 00 00        	unimp	

0000000080206bbe <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE>:
80206bbe: 75 71        	addi	sp, sp, -144
80206bc0: 06 e5        	sd	ra, 136(sp)
80206bc2: 2e 88        	mv	a6, a1
80206bc4: 83 e5 45 03  	lwu	a1, 52(a1)
80206bc8: 13 f6 05 01  	andi	a2, a1, 16
80206bcc: 11 ee        	bnez	a2, 0x80206be8 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x2a>
80206bce: 93 f5 05 02  	andi	a1, a1, 32
80206bd2: b5 e1        	bnez	a1, 0x80206c36 <.Lpcrel_hi1452+0xa>
80206bd4: 03 65 05 00  	lwu	a0, 0(a0)
80206bd8: 85 45        	li	a1, 1
80206bda: 42 86        	mv	a2, a6
80206bdc: aa 60        	ld	ra, 136(sp)
80206bde: 49 61        	addi	sp, sp, 144
80206be0: 17 03 00 00  	auipc	t1, 0
80206be4: 67 00 c3 1c  	jr	460(t1)
80206be8: 81 47        	li	a5, 0
80206bea: 14 41        	lw	a3, 0(a0)
80206bec: 30 01        	addi	a2, sp, 136
80206bee: a9 48        	li	a7, 10
80206bf0: bd 42        	li	t0, 15
80206bf2: 21 a8        	j	0x80206c0a <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x4c>
80206bf4: 13 07 f6 ff  	addi	a4, a2, -1
80206bf8: 9b 56 45 00  	srliw	a3, a0, 4
80206bfc: 9a 95        	add	a1, a1, t1
80206bfe: a3 0f b6 fe  	sb	a1, -1(a2)
80206c02: 85 07        	addi	a5, a5, 1
80206c04: 3a 86        	mv	a2, a4
80206c06: 63 fc a2 00  	bgeu	t0, a0, 0x80206c1e <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x60>
80206c0a: 36 85        	mv	a0, a3
80206c0c: 93 f5 f6 00  	andi	a1, a3, 15
80206c10: 13 03 00 03  	li	t1, 48
80206c14: e3 e0 15 ff  	bltu	a1, a7, 0x80206bf4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
80206c18: 13 03 70 05  	li	t1, 87
80206c1c: e1 bf        	j	0x80206bf4 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hf15cd655a93ea44eE+0x36>
80206c1e: 13 05 00 08  	li	a0, 128
80206c22: 1d 8d        	sub	a0, a0, a5
80206c24: 93 05 10 08  	li	a1, 129
80206c28: 63 77 b5 06  	bgeu	a0, a1, 0x80206c96 <.Lpcrel_hi1451>

0000000080206c2c <.Lpcrel_hi1452>:
80206c2c: 17 25 00 00  	auipc	a0, 2
80206c30: 13 06 45 35  	addi	a2, a0, 852
80206c34: b9 a0        	j	0x80206c82 <.Lpcrel_hi1454+0x8>
80206c36: 81 47        	li	a5, 0
80206c38: 14 41        	lw	a3, 0(a0)
80206c3a: 30 01        	addi	a2, sp, 136
80206c3c: a9 48        	li	a7, 10
80206c3e: bd 42        	li	t0, 15
80206c40: 21 a8        	j	0x80206c58 <.Lpcrel_hi1452+0x2c>
80206c42: 13 07 f6 ff  	addi	a4, a2, -1
80206c46: 9b 56 45 00  	srliw	a3, a0, 4
80206c4a: 9a 95        	add	a1, a1, t1
80206c4c: a3 0f b6 fe  	sb	a1, -1(a2)
80206c50: 85 07        	addi	a5, a5, 1
80206c52: 3a 86        	mv	a2, a4
80206c54: 63 fc a2 00  	bgeu	t0, a0, 0x80206c6c <.Lpcrel_hi1452+0x40>
80206c58: 36 85        	mv	a0, a3
80206c5a: 93 f5 f6 00  	andi	a1, a3, 15
80206c5e: 13 03 00 03  	li	t1, 48
80206c62: e3 e0 15 ff  	bltu	a1, a7, 0x80206c42 <.Lpcrel_hi1452+0x16>
80206c66: 13 03 70 03  	li	t1, 55
80206c6a: e1 bf        	j	0x80206c42 <.Lpcrel_hi1452+0x16>
80206c6c: 13 05 00 08  	li	a0, 128
80206c70: 1d 8d        	sub	a0, a0, a5
80206c72: 93 05 10 08  	li	a1, 129
80206c76: 63 75 b5 02  	bgeu	a0, a1, 0x80206ca0 <.Lpcrel_hi1453>

0000000080206c7a <.Lpcrel_hi1454>:
80206c7a: 17 25 00 00  	auipc	a0, 2
80206c7e: 13 06 65 30  	addi	a2, a0, 774
80206c82: 85 45        	li	a1, 1
80206c84: 89 46        	li	a3, 2
80206c86: 42 85        	mv	a0, a6
80206c88: 97 00 00 00  	auipc	ra, 0
80206c8c: e7 80 a0 81  	jalr	-2022(ra)
80206c90: aa 60        	ld	ra, 136(sp)
80206c92: 49 61        	addi	sp, sp, 144
80206c94: 82 80        	ret

0000000080206c96 <.Lpcrel_hi1451>:
80206c96: 97 25 00 00  	auipc	a1, 2
80206c9a: 13 86 25 2d  	addi	a2, a1, 722
80206c9e: 29 a0        	j	0x80206ca8 <.Lpcrel_hi1453+0x8>

0000000080206ca0 <.Lpcrel_hi1453>:
80206ca0: 97 25 00 00  	auipc	a1, 2
80206ca4: 13 86 85 2c  	addi	a2, a1, 712
80206ca8: 93 05 00 08  	li	a1, 128
80206cac: 97 00 00 00  	auipc	ra, 0
80206cb0: e7 80 40 cb  	jalr	-844(ra)
80206cb4: 00 00        	unimp	

0000000080206cb6 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E>:
80206cb6: 75 71        	addi	sp, sp, -144
80206cb8: 06 e5        	sd	ra, 136(sp)
80206cba: 2e 88        	mv	a6, a1
80206cbc: 83 e5 45 03  	lwu	a1, 52(a1)
80206cc0: 13 f6 05 01  	andi	a2, a1, 16
80206cc4: 09 ee        	bnez	a2, 0x80206cde <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x28>
80206cc6: 93 f5 05 02  	andi	a1, a1, 32
80206cca: ad e1        	bnez	a1, 0x80206d2c <.Lpcrel_hi1456+0xa>
80206ccc: 08 61        	ld	a0, 0(a0)
80206cce: 85 45        	li	a1, 1
80206cd0: 42 86        	mv	a2, a6
80206cd2: aa 60        	ld	ra, 136(sp)
80206cd4: 49 61        	addi	sp, sp, 144
80206cd6: 17 03 00 00  	auipc	t1, 0
80206cda: 67 00 63 0d  	jr	214(t1)
80206cde: 81 47        	li	a5, 0
80206ce0: 14 61        	ld	a3, 0(a0)
80206ce2: 30 01        	addi	a2, sp, 136
80206ce4: a9 48        	li	a7, 10
80206ce6: bd 42        	li	t0, 15
80206ce8: 21 a8        	j	0x80206d00 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x4a>
80206cea: 13 07 f6 ff  	addi	a4, a2, -1
80206cee: 93 56 45 00  	srli	a3, a0, 4
80206cf2: 9a 95        	add	a1, a1, t1
80206cf4: a3 0f b6 fe  	sb	a1, -1(a2)
80206cf8: 85 07        	addi	a5, a5, 1
80206cfa: 3a 86        	mv	a2, a4
80206cfc: 63 fc a2 00  	bgeu	t0, a0, 0x80206d14 <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x5e>
80206d00: 36 85        	mv	a0, a3
80206d02: 93 f5 f6 00  	andi	a1, a3, 15
80206d06: 13 03 00 03  	li	t1, 48
80206d0a: e3 e0 15 ff  	bltu	a1, a7, 0x80206cea <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
80206d0e: 13 03 70 05  	li	t1, 87
80206d12: e1 bf        	j	0x80206cea <_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17hf1758e4ce6f59523E+0x34>
80206d14: 13 05 00 08  	li	a0, 128
80206d18: 1d 8d        	sub	a0, a0, a5
80206d1a: 93 05 10 08  	li	a1, 129
80206d1e: 63 77 b5 06  	bgeu	a0, a1, 0x80206d8c <.Lpcrel_hi1455>

0000000080206d22 <.Lpcrel_hi1456>:
80206d22: 17 25 00 00  	auipc	a0, 2
80206d26: 13 06 e5 25  	addi	a2, a0, 606
80206d2a: b9 a0        	j	0x80206d78 <.Lpcrel_hi1458+0x8>
80206d2c: 81 47        	li	a5, 0
80206d2e: 14 61        	ld	a3, 0(a0)
80206d30: 30 01        	addi	a2, sp, 136
80206d32: a9 48        	li	a7, 10
80206d34: bd 42        	li	t0, 15
80206d36: 21 a8        	j	0x80206d4e <.Lpcrel_hi1456+0x2c>
80206d38: 13 07 f6 ff  	addi	a4, a2, -1
80206d3c: 93 56 45 00  	srli	a3, a0, 4
80206d40: 9a 95        	add	a1, a1, t1
80206d42: a3 0f b6 fe  	sb	a1, -1(a2)
80206d46: 85 07        	addi	a5, a5, 1
80206d48: 3a 86        	mv	a2, a4
80206d4a: 63 fc a2 00  	bgeu	t0, a0, 0x80206d62 <.Lpcrel_hi1456+0x40>
80206d4e: 36 85        	mv	a0, a3
80206d50: 93 f5 f6 00  	andi	a1, a3, 15
80206d54: 13 03 00 03  	li	t1, 48
80206d58: e3 e0 15 ff  	bltu	a1, a7, 0x80206d38 <.Lpcrel_hi1456+0x16>
80206d5c: 13 03 70 03  	li	t1, 55
80206d60: e1 bf        	j	0x80206d38 <.Lpcrel_hi1456+0x16>
80206d62: 13 05 00 08  	li	a0, 128
80206d66: 1d 8d        	sub	a0, a0, a5
80206d68: 93 05 10 08  	li	a1, 129
80206d6c: 63 75 b5 02  	bgeu	a0, a1, 0x80206d96 <.Lpcrel_hi1457>

0000000080206d70 <.Lpcrel_hi1458>:
80206d70: 17 25 00 00  	auipc	a0, 2
80206d74: 13 06 05 21  	addi	a2, a0, 528
80206d78: 85 45        	li	a1, 1
80206d7a: 89 46        	li	a3, 2
80206d7c: 42 85        	mv	a0, a6
80206d7e: 97 f0 ff ff  	auipc	ra, 1048575
80206d82: e7 80 40 72  	jalr	1828(ra)
80206d86: aa 60        	ld	ra, 136(sp)
80206d88: 49 61        	addi	sp, sp, 144
80206d8a: 82 80        	ret

0000000080206d8c <.Lpcrel_hi1455>:
80206d8c: 97 25 00 00  	auipc	a1, 2
80206d90: 13 86 c5 1d  	addi	a2, a1, 476
80206d94: 29 a0        	j	0x80206d9e <.Lpcrel_hi1457+0x8>

0000000080206d96 <.Lpcrel_hi1457>:
80206d96: 97 25 00 00  	auipc	a1, 2
80206d9a: 13 86 25 1d  	addi	a2, a1, 466
80206d9e: 93 05 00 08  	li	a1, 128
80206da2: 97 00 00 00  	auipc	ra, 0
80206da6: e7 80 e0 bb  	jalr	-1090(ra)
80206daa: 00 00        	unimp	

0000000080206dac <_ZN4core3fmt3num3imp7fmt_u6417h5808a89312fb4b72E>:
80206dac: 39 71        	addi	sp, sp, -64
80206dae: 06 fc        	sd	ra, 56(sp)
80206db0: 22 f8        	sd	s0, 48(sp)
80206db2: 26 f4        	sd	s1, 40(sp)
80206db4: 32 88        	mv	a6, a2
80206db6: 93 56 45 00  	srli	a3, a0, 4
80206dba: 13 07 70 02  	li	a4, 39
80206dbe: 93 07 10 27  	li	a5, 625

0000000080206dc2 <.Lpcrel_hi1459>:
80206dc2: 17 26 00 00  	auipc	a2, 2
80206dc6: 93 0e 06 1c  	addi	t4, a2, 448
80206dca: 63 f3 f6 02  	bgeu	a3, a5, 0x80206df0 <.Lpcrel_hi1459+0x2e>
80206dce: 93 06 30 06  	li	a3, 99
80206dd2: 63 ea a6 0a  	bltu	a3, a0, 0x80206e86 <.Lpcrel_hi1460+0x8c>
80206dd6: 29 46        	li	a2, 10
80206dd8: 63 78 c5 0e  	bgeu	a0, a2, 0x80206ec8 <.Lpcrel_hi1460+0xce>
80206ddc: 93 06 f7 ff  	addi	a3, a4, -1
80206de0: 13 06 11 00  	addi	a2, sp, 1
80206de4: 36 96        	add	a2, a2, a3
80206de6: 1b 05 05 03  	addiw	a0, a0, 48
80206dea: 23 00 a6 00  	sb	a0, 0(a2)
80206dee: e5 a8        	j	0x80206ee6 <.Lpcrel_hi1460+0xec>
80206df0: 01 47        	li	a4, 0
80206df2: 93 08 41 02  	addi	a7, sp, 36
80206df6: 93 02 61 02  	addi	t0, sp, 38

0000000080206dfa <.Lpcrel_hi1460>:
80206dfa: 97 36 00 00  	auipc	a3, 3
80206dfe: 03 b3 66 5c  	ld	t1, 1478(a3)
80206e02: 89 66        	lui	a3, 2
80206e04: 1b 8e 06 71  	addiw	t3, a3, 1808
80206e08: 85 66        	lui	a3, 1
80206e0a: 1b 8f b6 47  	addiw	t5, a3, 1147
80206e0e: 93 03 40 06  	li	t2, 100
80206e12: b7 e6 f5 05  	lui	a3, 24414
80206e16: 9b 8f f6 0f  	addiw	t6, a3, 255
80206e1a: aa 86        	mv	a3, a0
80206e1c: 33 35 65 02  	mulhu	a0, a0, t1
80206e20: 2d 81        	srli	a0, a0, 11
80206e22: bb 07 c5 03  	mulw	a5, a0, t3
80206e26: 3b 86 f6 40  	subw	a2, a3, a5
80206e2a: 93 17 06 03  	slli	a5, a2, 48
80206e2e: c9 93        	srli	a5, a5, 50
80206e30: b3 87 e7 03  	mul	a5, a5, t5
80206e34: 13 d4 17 01  	srli	s0, a5, 17
80206e38: c1 83        	srli	a5, a5, 16
80206e3a: 93 f7 e7 7f  	andi	a5, a5, 2046
80206e3e: 3b 04 74 02  	mulw	s0, s0, t2
80206e42: 01 9e        	subw	a2, a2, s0
80206e44: 46 16        	slli	a2, a2, 49
80206e46: f6 97        	add	a5, a5, t4
80206e48: 03 c4 17 00  	lbu	s0, 1(a5)
80206e4c: 41 92        	srli	a2, a2, 48
80206e4e: b3 84 e8 00  	add	s1, a7, a4
80206e52: 83 c7 07 00  	lbu	a5, 0(a5)
80206e56: a3 80 84 00  	sb	s0, 1(s1)
80206e5a: 76 96        	add	a2, a2, t4
80206e5c: 03 44 16 00  	lbu	s0, 1(a2)
80206e60: 03 46 06 00  	lbu	a2, 0(a2)
80206e64: 23 80 f4 00  	sb	a5, 0(s1)
80206e68: b3 87 e2 00  	add	a5, t0, a4
80206e6c: a3 80 87 00  	sb	s0, 1(a5)
80206e70: 23 80 c7 00  	sb	a2, 0(a5)
80206e74: 71 17        	addi	a4, a4, -4
80206e76: e3 e2 df fa  	bltu	t6, a3, 0x80206e1a <.Lpcrel_hi1460+0x20>
80206e7a: 13 07 77 02  	addi	a4, a4, 39
80206e7e: 93 06 30 06  	li	a3, 99
80206e82: e3 fa a6 f4  	bgeu	a3, a0, 0x80206dd6 <.Lpcrel_hi1459+0x14>
80206e86: 13 16 05 03  	slli	a2, a0, 48
80206e8a: 49 92        	srli	a2, a2, 50
80206e8c: 85 66        	lui	a3, 1
80206e8e: 9b 86 b6 47  	addiw	a3, a3, 1147
80206e92: 33 06 d6 02  	mul	a2, a2, a3
80206e96: 45 82        	srli	a2, a2, 17
80206e98: 93 06 40 06  	li	a3, 100
80206e9c: bb 06 d6 02  	mulw	a3, a2, a3
80206ea0: 15 9d        	subw	a0, a0, a3
80206ea2: 46 15        	slli	a0, a0, 49
80206ea4: 41 91        	srli	a0, a0, 48
80206ea6: 79 17        	addi	a4, a4, -2
80206ea8: 76 95        	add	a0, a0, t4
80206eaa: 83 46 15 00  	lbu	a3, 1(a0)
80206eae: 03 45 05 00  	lbu	a0, 0(a0)
80206eb2: 93 07 11 00  	addi	a5, sp, 1
80206eb6: ba 97        	add	a5, a5, a4
80206eb8: a3 80 d7 00  	sb	a3, 1(a5)
80206ebc: 23 80 a7 00  	sb	a0, 0(a5)
80206ec0: 32 85        	mv	a0, a2
80206ec2: 29 46        	li	a2, 10
80206ec4: e3 6c c5 f0  	bltu	a0, a2, 0x80206ddc <.Lpcrel_hi1459+0x1a>
80206ec8: 06 05        	slli	a0, a0, 1
80206eca: 93 06 e7 ff  	addi	a3, a4, -2
80206ece: 76 95        	add	a0, a0, t4
80206ed0: 03 46 15 00  	lbu	a2, 1(a0)
80206ed4: 03 45 05 00  	lbu	a0, 0(a0)
80206ed8: 13 07 11 00  	addi	a4, sp, 1
80206edc: 36 97        	add	a4, a4, a3
80206ede: a3 00 c7 00  	sb	a2, 1(a4)
80206ee2: 23 00 a7 00  	sb	a0, 0(a4)
80206ee6: 13 07 11 00  	addi	a4, sp, 1
80206eea: 36 97        	add	a4, a4, a3
80206eec: 93 07 70 02  	li	a5, 39
80206ef0: 95 8f        	sub	a5, a5, a3

0000000080206ef2 <.Lpcrel_hi1461>:
80206ef2: 17 25 00 00  	auipc	a0, 2
80206ef6: 13 06 65 f5  	addi	a2, a0, -170
80206efa: 42 85        	mv	a0, a6
80206efc: 81 46        	li	a3, 0
80206efe: 97 f0 ff ff  	auipc	ra, 1048575
80206f02: e7 80 40 5a  	jalr	1444(ra)
80206f06: e2 70        	ld	ra, 56(sp)
80206f08: 42 74        	ld	s0, 48(sp)
80206f0a: a2 74        	ld	s1, 40(sp)
80206f0c: 21 61        	addi	sp, sp, 64
80206f0e: 82 80        	ret

0000000080206f10 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha5cd78cd0724794bE>:
80206f10: 03 65 05 00  	lwu	a0, 0(a0)
80206f14: 2e 86        	mv	a2, a1
80206f16: 85 45        	li	a1, 1
80206f18: 17 03 00 00  	auipc	t1, 0
80206f1c: 67 00 43 e9  	jr	-364(t1)

0000000080206f20 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf39e8020f67c473eE>:
80206f20: 08 61        	ld	a0, 0(a0)
80206f22: 2e 86        	mv	a2, a1
80206f24: 85 45        	li	a1, 1
80206f26: 17 03 00 00  	auipc	t1, 0
80206f2a: 67 00 63 e8  	jr	-378(t1)

0000000080206f2e <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hb851a48113438134E>:
80206f2e: 90 75        	ld	a2, 40(a1)
80206f30: 88 71        	ld	a0, 32(a1)
80206f32: 1c 6e        	ld	a5, 24(a2)

0000000080206f34 <.Lpcrel_hi1484>:
80206f34: 97 25 00 00  	auipc	a1, 2
80206f38: 93 85 45 1c  	addi	a1, a1, 452
80206f3c: 15 46        	li	a2, 5
80206f3e: 82 87        	jr	a5

0000000080206f40 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4023022547a67dd4E>:
80206f40: 59 71        	addi	sp, sp, -112
80206f42: 86 f4        	sd	ra, 104(sp)
80206f44: 08 61        	ld	a0, 0(a0)
80206f46: 08 61        	ld	a0, 0(a0)

0000000080206f48 <.Lpcrel_hi1557>:
80206f48: 17 36 00 00  	auipc	a2, 3
80206f4c: 03 36 86 4d  	ld	a2, 1240(a2)
80206f50: b3 06 a0 40  	neg	a3, a0
80206f54: e9 8e        	and	a3, a3, a0
80206f56: 33 86 c6 02  	mul	a2, a3, a2
80206f5a: 69 92        	srli	a2, a2, 58

0000000080206f5c <.Lpcrel_hi1558>:
80206f5c: 97 26 00 00  	auipc	a3, 2
80206f60: 93 86 c6 ea  	addi	a3, a3, -340
80206f64: 36 96        	add	a2, a2, a3
80206f66: 03 46 06 00  	lbu	a2, 0(a2)
80206f6a: 2a f4        	sd	a0, 40(sp)
80206f6c: 32 da        	sw	a2, 52(sp)
80206f6e: 28 10        	addi	a0, sp, 40
80206f70: 2a e4        	sd	a0, 8(sp)

0000000080206f72 <.Lpcrel_hi1559>:
80206f72: 17 05 00 00  	auipc	a0, 0
80206f76: 13 05 85 bb  	addi	a0, a0, -1096
80206f7a: 2a e8        	sd	a0, 16(sp)
80206f7c: 48 18        	addi	a0, sp, 52
80206f7e: 2a ec        	sd	a0, 24(sp)

0000000080206f80 <.Lpcrel_hi1560>:
80206f80: 17 05 00 00  	auipc	a0, 0
80206f84: 13 05 e5 c3  	addi	a0, a0, -962
80206f88: 2a f0        	sd	a0, 32(sp)
80206f8a: 88 71        	ld	a0, 32(a1)
80206f8c: 8c 75        	ld	a1, 40(a1)

0000000080206f8e <.Lpcrel_hi1561>:
80206f8e: 17 26 00 00  	auipc	a2, 2
80206f92: 13 06 26 ec  	addi	a2, a2, -318
80206f96: 32 fc        	sd	a2, 56(sp)
80206f98: 0d 46        	li	a2, 3
80206f9a: b2 e0        	sd	a2, 64(sp)
80206f9c: 30 00        	addi	a2, sp, 8
80206f9e: b2 e4        	sd	a2, 72(sp)
80206fa0: 09 46        	li	a2, 2
80206fa2: b2 e8        	sd	a2, 80(sp)
80206fa4: 82 ec        	sd	zero, 88(sp)
80206fa6: 30 18        	addi	a2, sp, 56
80206fa8: 97 f0 ff ff  	auipc	ra, 1048575
80206fac: e7 80 c0 37  	jalr	892(ra)
80206fb0: a6 70        	ld	ra, 104(sp)
80206fb2: 65 61        	addi	sp, sp, 112
80206fb4: 82 80        	ret

0000000080206fb6 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc718de1f83af0ad8E>:
80206fb6: 10 65        	ld	a2, 8(a0)
80206fb8: 08 61        	ld	a0, 0(a0)
80206fba: 1c 6e        	ld	a5, 24(a2)
80206fbc: 82 87        	jr	a5

0000000080206fbe <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5142aec65f74f371E>:
80206fbe: 14 61        	ld	a3, 0(a0)
80206fc0: 10 65        	ld	a2, 8(a0)
80206fc2: 2e 85        	mv	a0, a1
80206fc4: b6 85        	mv	a1, a3
80206fc6: 17 f3 ff ff  	auipc	t1, 1048575
80206fca: 67 00 a3 74  	jr	1866(t1)

0000000080206fce <_ZN64_$LT$core..alloc..layout..Layout$u20$as$u20$core..fmt..Debug$GT$3fmt17hf5c1f95bf09f2d92E>:
80206fce: 79 71        	addi	sp, sp, -48
80206fd0: 06 f4        	sd	ra, 40(sp)
80206fd2: 22 f0        	sd	s0, 32(sp)
80206fd4: 26 ec        	sd	s1, 24(sp)
80206fd6: 2e 84        	mv	s0, a1
80206fd8: 8c 75        	ld	a1, 40(a1)
80206fda: 2a e0        	sd	a0, 0(sp)
80206fdc: 14 70        	ld	a3, 32(s0)
80206fde: 98 6d        	ld	a4, 24(a1)
80206fe0: 93 04 85 00  	addi	s1, a0, 8

0000000080206fe4 <.Lpcrel_hi1968>:
80206fe4: 17 25 00 00  	auipc	a0, 2
80206fe8: 93 05 95 11  	addi	a1, a0, 281
80206fec: 19 46        	li	a2, 6
80206fee: 36 85        	mv	a0, a3
80206ff0: 02 97        	jalr	a4
80206ff2: 22 e4        	sd	s0, 8(sp)
80206ff4: 23 08 a1 00  	sb	a0, 16(sp)
80206ff8: a3 08 01 00  	sb	zero, 17(sp)

0000000080206ffc <.Lpcrel_hi1969>:
80206ffc: 17 15 00 00  	auipc	a0, 1
80207000: 93 05 75 0d  	addi	a1, a0, 215

0000000080207004 <.Lpcrel_hi1970>:
80207004: 17 25 00 00  	auipc	a0, 2
80207008: 13 07 45 0d  	addi	a4, a0, 212
8020700c: 28 00        	addi	a0, sp, 8
8020700e: 11 46        	li	a2, 4
80207010: a6 86        	mv	a3, s1
80207012: 97 f0 ff ff  	auipc	ra, 1048575
80207016: e7 80 00 fa  	jalr	-96(ra)

000000008020701a <.Lpcrel_hi1971>:
8020701a: 17 25 00 00  	auipc	a0, 2
8020701e: 93 05 95 0e  	addi	a1, a0, 233

0000000080207022 <.Lpcrel_hi1972>:
80207022: 17 25 00 00  	auipc	a0, 2
80207026: 13 07 65 0e  	addi	a4, a0, 230
8020702a: 28 00        	addi	a0, sp, 8
8020702c: 15 46        	li	a2, 5
8020702e: 8a 86        	mv	a3, sp
80207030: 97 f0 ff ff  	auipc	ra, 1048575
80207034: e7 80 20 f8  	jalr	-126(ra)
80207038: 03 45 11 01  	lbu	a0, 17(sp)
8020703c: 83 45 01 01  	lbu	a1, 16(sp)
80207040: 0d c1        	beqz	a0, 0x80207062 <.Lpcrel_hi1973+0xc>
80207042: 05 45        	li	a0, 1
80207044: 9d e9        	bnez	a1, 0x8020707a <.Lpcrel_hi1974+0xc>
80207046: 22 65        	ld	a0, 8(sp)
80207048: 83 45 45 03  	lbu	a1, 52(a0)
8020704c: 91 89        	andi	a1, a1, 4
8020704e: 89 ed        	bnez	a1, 0x80207068 <.Lpcrel_hi1973+0x12>
80207050: 0c 75        	ld	a1, 40(a0)
80207052: 08 71        	ld	a0, 32(a0)
80207054: 94 6d        	ld	a3, 24(a1)

0000000080207056 <.Lpcrel_hi1973>:
80207056: 97 25 00 00  	auipc	a1, 2
8020705a: 93 85 55 ef  	addi	a1, a1, -267
8020705e: 09 46        	li	a2, 2
80207060: 21 a8        	j	0x80207078 <.Lpcrel_hi1974+0xa>
80207062: 33 35 b0 00  	snez	a0, a1
80207066: 11 a8        	j	0x8020707a <.Lpcrel_hi1974+0xc>
80207068: 0c 75        	ld	a1, 40(a0)
8020706a: 08 71        	ld	a0, 32(a0)
8020706c: 94 6d        	ld	a3, 24(a1)

000000008020706e <.Lpcrel_hi1974>:
8020706e: 97 25 00 00  	auipc	a1, 2
80207072: 93 85 c5 ed  	addi	a1, a1, -292
80207076: 05 46        	li	a2, 1
80207078: 82 96        	jalr	a3
8020707a: a2 70        	ld	ra, 40(sp)
8020707c: 02 74        	ld	s0, 32(sp)
8020707e: e2 64        	ld	s1, 24(sp)
80207080: 45 61        	addi	sp, sp, 48
80207082: 82 80        	ret

0000000080207084 <memset>:
80207084: 17 03 00 00  	auipc	t1, 0
80207088: 67 00 c3 0b  	jr	188(t1)

000000008020708c <memcpy>:
8020708c: 17 03 00 00  	auipc	t1, 0
80207090: 67 00 83 00  	jr	8(t1)

0000000080207094 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE>:
80207094: bd 46        	li	a3, 15
80207096: 63 f9 c6 06  	bgeu	a3, a2, 0x80207108 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x74>
8020709a: bb 06 a0 40  	negw	a3, a0
8020709e: 13 f8 76 00  	andi	a6, a3, 7
802070a2: b3 03 05 01  	add	t2, a0, a6
802070a6: 63 0c 08 00  	beqz	a6, 0x802070be <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x2a>
802070aa: aa 87        	mv	a5, a0
802070ac: ae 86        	mv	a3, a1
802070ae: 03 87 06 00  	lb	a4, 0(a3)
802070b2: 23 80 e7 00  	sb	a4, 0(a5)
802070b6: 85 07        	addi	a5, a5, 1
802070b8: 85 06        	addi	a3, a3, 1
802070ba: e3 ea 77 fe  	bltu	a5, t2, 0x802070ae <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x1a>
802070be: b3 88 05 01  	add	a7, a1, a6
802070c2: 33 08 06 41  	sub	a6, a2, a6
802070c6: 93 72 88 ff  	andi	t0, a6, -8
802070ca: 13 f3 78 00  	andi	t1, a7, 7
802070ce: b3 86 53 00  	add	a3, t2, t0
802070d2: 63 0e 03 02  	beqz	t1, 0x8020710e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x7a>
802070d6: 63 56 50 04  	blez	t0, 0x80207122 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
802070da: 0e 03        	slli	t1, t1, 3
802070dc: 93 f7 88 ff  	andi	a5, a7, -8
802070e0: 90 63        	ld	a2, 0(a5)
802070e2: bb 05 60 40  	negw	a1, t1
802070e6: 13 fe 85 03  	andi	t3, a1, 56
802070ea: a1 07        	addi	a5, a5, 8
802070ec: 98 63        	ld	a4, 0(a5)
802070ee: 33 56 66 00  	srl	a2, a2, t1
802070f2: b3 15 c7 01  	sll	a1, a4, t3
802070f6: d1 8d        	or	a1, a1, a2
802070f8: 23 b0 b3 00  	sd	a1, 0(t2)
802070fc: a1 03        	addi	t2, t2, 8
802070fe: a1 07        	addi	a5, a5, 8
80207100: 3a 86        	mv	a2, a4
80207102: e3 e5 d3 fe  	bltu	t2, a3, 0x802070ec <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x58>
80207106: 31 a8        	j	0x80207122 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80207108: aa 86        	mv	a3, a0
8020710a: 0d e2        	bnez	a2, 0x8020712c <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x98>
8020710c: 0d a8        	j	0x8020713e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020710e: 63 5a 50 00  	blez	t0, 0x80207122 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x8e>
80207112: c6 85        	mv	a1, a7
80207114: 90 61        	ld	a2, 0(a1)
80207116: 23 b0 c3 00  	sd	a2, 0(t2)
8020711a: a1 03        	addi	t2, t2, 8
8020711c: a1 05        	addi	a1, a1, 8
8020711e: e3 eb d3 fe  	bltu	t2, a3, 0x80207114 <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x80>
80207122: b3 85 58 00  	add	a1, a7, t0
80207126: 13 76 78 00  	andi	a2, a6, 7
8020712a: 11 ca        	beqz	a2, 0x8020713e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0xaa>
8020712c: 36 96        	add	a2, a2, a3
8020712e: 03 87 05 00  	lb	a4, 0(a1)
80207132: 23 80 e6 00  	sb	a4, 0(a3)
80207136: 85 06        	addi	a3, a3, 1
80207138: 85 05        	addi	a1, a1, 1
8020713a: e3 ea c6 fe  	bltu	a3, a2, 0x8020712e <_ZN17compiler_builtins3mem6memcpy17h20f213cdb399b35eE+0x9a>
8020713e: 82 80        	ret

0000000080207140 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E>:
80207140: bd 46        	li	a3, 15
80207142: 63 fa c6 04  	bgeu	a3, a2, 0x80207196 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x56>
80207146: bb 06 a0 40  	negw	a3, a0
8020714a: 9d 8a        	andi	a3, a3, 7
8020714c: 33 07 d5 00  	add	a4, a0, a3
80207150: 99 c6        	beqz	a3, 0x8020715e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x1e>
80207152: aa 87        	mv	a5, a0
80207154: 23 80 b7 00  	sb	a1, 0(a5)
80207158: 85 07        	addi	a5, a5, 1
8020715a: e3 ed e7 fe  	bltu	a5, a4, 0x80207154 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x14>
8020715e: b3 08 d6 40  	sub	a7, a2, a3
80207162: 93 f7 88 ff  	andi	a5, a7, -8
80207166: b3 06 f7 00  	add	a3, a4, a5
8020716a: 63 52 f0 02  	blez	a5, 0x8020718e <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x4e>
8020716e: 13 98 85 03  	slli	a6, a1, 56
80207172: b7 17 10 10  	lui	a5, 65793
80207176: 92 07        	slli	a5, a5, 4
80207178: 93 87 07 10  	addi	a5, a5, 256
8020717c: 33 36 f8 02  	mulhu	a2, a6, a5
80207180: 93 17 06 02  	slli	a5, a2, 32
80207184: d1 8f        	or	a5, a5, a2
80207186: 1c e3        	sd	a5, 0(a4)
80207188: 21 07        	addi	a4, a4, 8
8020718a: e3 6e d7 fe  	bltu	a4, a3, 0x80207186 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x46>
8020718e: 13 f6 78 00  	andi	a2, a7, 7
80207192: 01 e6        	bnez	a2, 0x8020719a <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5a>
80207194: 09 a8        	j	0x802071a6 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
80207196: aa 86        	mv	a3, a0
80207198: 19 c6        	beqz	a2, 0x802071a6 <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x66>
8020719a: 36 96        	add	a2, a2, a3
8020719c: 23 80 b6 00  	sb	a1, 0(a3)
802071a0: 85 06        	addi	a3, a3, 1
802071a2: e3 ed c6 fe  	bltu	a3, a2, 0x8020719c <_ZN17compiler_builtins3mem6memset17hf5a9fdd7898f4290E+0x5c>
802071a6: 82 80        	ret
