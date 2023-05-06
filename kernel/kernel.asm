
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 00 af  	jalr	-1296(ra)
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
80201174: e7 80 00 32  	jalr	800(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2de8974df403c2cdE>:
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
80202030: 89 65        	lui	a1, 2
80202032: 9b 85 05 88  	addiw	a1, a1, -1920
80202036: 33 01 b1 40  	sub	sp, sp, a1
8020203a: 2a 8a        	mv	s4, a0
8020203c: 0f 00 30 03  	fence	rw, rw
80202040: 08 61        	ld	a0, 0(a0)
80202042: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202046: 65 ed        	bnez	a0, 0x8020213e <.LBB1_13+0xba>
80202048: 85 45        	li	a1, 1
8020204a: 2f 35 0a 16  	lr.d.aqrl	a0, (s4)
8020204e: 01 e5        	bnez	a0, 0x80202056 <_ZN4spin4once13Once$LT$T$GT$9call_once17h2de8974df403c2cdE+0x56>
80202050: 2f 36 ba 1e  	sc.d.aqrl	a2, a1, (s4)
80202054: 7d fa        	bnez	a2, 0x8020204a <_ZN4spin4once13Once$LT$T$GT$9call_once17h2de8974df403c2cdE+0x4a>
;             if status == INCOMPLETE { // We init
80202056: 65 e5        	bnez	a0, 0x8020213e <.LBB1_13+0xba>
80202058: 81 44        	li	s1, 0
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020205a: 79 75        	lui	a0, 1048574
8020205c: 1b 05 05 f9  	addiw	a0, a0, -112
80202060: 22 95        	add	a0, a0, s0
80202062: 23 30 45 01  	sd	s4, 0(a0)
80202066: 05 65        	lui	a0, 1
80202068: fd 75        	lui	a1, 1048575
8020206a: 9b 85 05 fa  	addiw	a1, a1, -96
8020206e: b3 09 b4 00  	add	s3, s0, a1
;         Self {
80202072: 33 8c a9 00  	add	s8, s3, a0
80202076: 23 30 0c 00  	sd	zero, 0(s8)
8020207a: 79 75        	lui	a0, 1048574
8020207c: 1b 05 75 fa  	addiw	a0, a0, -89
80202080: 33 09 a4 00  	add	s2, s0, a0

0000000080202084 <.LBB1_13>:
80202084: 97 3a 00 00  	auipc	s5, 3
80202088: 93 8a 4a 04  	addi	s5, s5, 68
8020208c: 11 4b        	li	s6, 4
8020208e: 93 0b 00 04  	li	s7, 64
;         Self {
80202092: 65 46        	li	a2, 25
80202094: 4a 85        	mv	a0, s2
80202096: 81 45        	li	a1, 0
80202098: 97 20 00 00  	auipc	ra, 2
8020209c: e7 80 20 05  	jalr	82(ra)
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
802020a0: 13 95 64 00  	slli	a0, s1, 6
802020a4: 4e 95        	add	a0, a0, s3
802020a6: 23 30 55 01  	sd	s5, 0(a0)
802020aa: 23 34 65 01  	sd	s6, 8(a0)
802020ae: 23 38 05 00  	sd	zero, 16(a0)
802020b2: 23 0c 05 00  	sb	zero, 24(a0)
802020b6: 65 05        	addi	a0, a0, 25
802020b8: f9 75        	lui	a1, 1048574
802020ba: 9b 85 05 fa  	addiw	a1, a1, -96
802020be: a2 95        	add	a1, a1, s0
802020c0: 13 06 00 02  	li	a2, 32
802020c4: 97 20 00 00  	auipc	ra, 2
802020c8: e7 80 40 14  	jalr	324(ra)
802020cc: 03 35 0c 00  	ld	a0, 0(s8)
802020d0: 93 04 15 00  	addi	s1, a0, 1
802020d4: 23 30 9c 00  	sd	s1, 0(s8)
802020d8: e3 ed 74 fb  	bltu	s1, s7, 0x80202092 <.LBB1_13+0xe>
802020dc: 79 75        	lui	a0, 1048574
802020de: 1b 05 05 fa  	addiw	a0, a0, -96
802020e2: 22 95        	add	a0, a0, s0
802020e4: fd 75        	lui	a1, 1048575
802020e6: 9b 85 05 fa  	addiw	a1, a1, -96
802020ea: a2 95        	add	a1, a1, s0
802020ec: 05 66        	lui	a2, 1
802020ee: 97 20 00 00  	auipc	ra, 2
802020f2: e7 80 a0 11  	jalr	282(ra)
802020f6: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
802020f8: 23 34 aa 00  	sd	a0, 8(s4)
802020fc: 13 09 0a 01  	addi	s2, s4, 16
80202100: 79 75        	lui	a0, 1048574
80202102: 1b 05 05 fa  	addiw	a0, a0, -96
80202106: b3 05 a4 00  	add	a1, s0, a0
8020210a: 05 66        	lui	a2, 1
8020210c: 4a 85        	mv	a0, s2
8020210e: 97 20 00 00  	auipc	ra, 2
80202112: e7 80 a0 0f  	jalr	250(ra)
;                 finish.panicked = false;
80202116: 79 75        	lui	a0, 1048574
80202118: 1b 05 85 f9  	addiw	a0, a0, -104
8020211c: 22 95        	add	a0, a0, s0
8020211e: 23 00 05 00  	sb	zero, 0(a0)
80202122: 0f 00 10 03  	fence	rw, w
80202126: 09 45        	li	a0, 2
80202128: 23 30 aa 00  	sd	a0, 0(s4)
8020212c: 79 75        	lui	a0, 1048574
8020212e: 1b 05 05 f9  	addiw	a0, a0, -112
80202132: 22 95        	add	a0, a0, s0
80202134: 97 10 00 00  	auipc	ra, 1
80202138: e7 80 c0 4a  	jalr	1196(ra)
8020213c: 1d a0        	j	0x80202162 <.LBB1_13+0xde>
8020213e: 85 45        	li	a1, 1
;             match status {
80202140: 63 1c b5 00  	bne	a0, a1, 0x80202158 <.LBB1_13+0xd4>
80202144: 0f 00 00 01  	fence	w, 0
80202148: 0f 00 30 03  	fence	rw, rw
8020214c: 03 35 0a 00  	ld	a0, 0(s4)
80202150: 0f 00 30 02  	fence	r, rw
;             match status {
80202154: e3 08 b5 fe  	beq	a0, a1, 0x80202144 <.LBB1_13+0xc0>
80202158: 89 45        	li	a1, 2
;             match status {
8020215a: 63 10 b5 04  	bne	a0, a1, 0x8020219a <.LBB1_13+0x116>
8020215e: 13 09 0a 01  	addi	s2, s4, 16
;     }
80202162: 4a 85        	mv	a0, s2
80202164: 89 65        	lui	a1, 2
80202166: 9b 85 05 88  	addiw	a1, a1, -1920
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
;             match status {
8020219a: 05 e1        	bnez	a0, 0x802021ba <.LBB1_16>

000000008020219c <.LBB1_14>:
;                 INCOMPLETE => unreachable!(),
8020219c: 17 35 00 00  	auipc	a0, 3
802021a0: 13 05 c5 ee  	addi	a0, a0, -276

00000000802021a4 <.LBB1_15>:
802021a4: 17 36 00 00  	auipc	a2, 3
802021a8: 13 06 c6 f0  	addi	a2, a2, -244
802021ac: 93 05 80 02  	li	a1, 40
802021b0: 97 10 00 00  	auipc	ra, 1
802021b4: e7 80 80 49  	jalr	1176(ra)
802021b8: 00 00        	unimp	

00000000802021ba <.LBB1_16>:
;                 PANICKED => panic!("Once has panicked"),
802021ba: 17 35 00 00  	auipc	a0, 3
802021be: 13 05 65 e4  	addi	a0, a0, -442

00000000802021c2 <.LBB1_17>:
802021c2: 17 36 00 00  	auipc	a2, 3
802021c6: 13 06 e6 ea  	addi	a2, a2, -338
802021ca: c5 45        	li	a1, 17
802021cc: 97 10 00 00  	auipc	ra, 1
802021d0: e7 80 c0 47  	jalr	1148(ra)
802021d4: 00 00        	unimp	

00000000802021d6 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
802021d6: 35 71        	addi	sp, sp, -160
;         if size == 0 {
802021d8: 06 ed        	sd	ra, 152(sp)
802021da: 22 e9        	sd	s0, 144(sp)
802021dc: 26 e5        	sd	s1, 136(sp)
802021de: 4a e1        	sd	s2, 128(sp)
802021e0: ce fc        	sd	s3, 120(sp)
802021e2: d2 f8        	sd	s4, 112(sp)
802021e4: d6 f4        	sd	s5, 104(sp)
802021e6: da f0        	sd	s6, 96(sp)
802021e8: de ec        	sd	s7, 88(sp)
802021ea: e2 e8        	sd	s8, 80(sp)
802021ec: e6 e4        	sd	s9, 72(sp)
802021ee: ea e0        	sd	s10, 64(sp)
802021f0: 6e fc        	sd	s11, 56(sp)
802021f2: 00 11        	addi	s0, sp, 160
802021f4: 63 04 06 18  	beqz	a2, 0x8020237c <.LBB2_26>
802021f8: 36 8a        	mv	s4, a3
802021fa: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
802021fc: b3 fa d5 00  	and	s5, a1, a3
;         let last = pgrounddown(va + size - 1);
80202200: 2e 96        	add	a2, a2, a1
80202202: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
80202204: 33 7b d6 00  	and	s6, a2, a3
80202208: 05 46        	li	a2, 1
;         while a <= last {
8020220a: 63 6d 5b 0d  	bltu	s6, s5, 0x802022e4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10e>
8020220e: 3a 89        	mv	s2, a4
80202210: 93 db 26 00  	srli	s7, a3, 2
80202214: 03 3c 05 00  	ld	s8, 0(a0)
;         while a <= last {
80202218: 93 dc c5 00  	srli	s9, a1, 12
8020221c: 05 6d        	lui	s10, 1
8020221e: 9b 0d 8d ff  	addiw	s11, s10, -8
;         if va >= MAXVA {
80202222: 13 d5 6a 02  	srli	a0, s5, 38
80202226: 79 ed        	bnez	a0, 0x80202304 <.LBB2_20>
;             pte = &mut pagetable.data[px(level, va)];
80202228: 13 d5 ba 01  	srli	a0, s5, 27
8020222c: 61 99        	andi	a0, a0, -8
8020222e: b3 09 ac 00  	add	s3, s8, a0
;             if (*pte & PTE_V) != 0 {
80202232: 03 b5 09 00  	ld	a0, 0(s3)
80202236: 93 75 15 00  	andi	a1, a0, 1
8020223a: 95 e5        	bnez	a1, 0x80202266 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x90>
;                 let pa = kalloc();
8020223c: 97 00 00 00  	auipc	ra, 0
80202240: e7 80 00 6e  	jalr	1760(ra)
;                 if pa == 0 {
80202244: 59 cd        	beqz	a0, 0x802022e2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10c>
80202246: aa 84        	mv	s1, a0
80202248: 05 66        	lui	a2, 1
8020224a: 81 45        	li	a1, 0
8020224c: 97 20 00 00  	auipc	ra, 2
80202250: e7 80 e0 e9  	jalr	-354(ra)
;     (pa >> 12) << 10
80202254: 13 d5 24 00  	srli	a0, s1, 2
80202258: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
8020225c: 13 65 15 00  	ori	a0, a0, 1
80202260: 23 b0 a9 00  	sd	a0, 0(s3)
80202264: 21 a0        	j	0x8020226c <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x96>
;     (pte >> 10) << 12
80202266: 29 81        	srli	a0, a0, 10
80202268: 93 14 c5 00  	slli	s1, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
8020226c: 13 d5 2a 01  	srli	a0, s5, 18
80202270: 33 75 b5 01  	and	a0, a0, s11
80202274: b3 89 a4 00  	add	s3, s1, a0
;             if (*pte & PTE_V) != 0 {
80202278: 03 b5 09 00  	ld	a0, 0(s3)
8020227c: 93 75 15 00  	andi	a1, a0, 1
80202280: 95 e5        	bnez	a1, 0x802022ac <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0xd6>
;                 let pa = kalloc();
80202282: 97 00 00 00  	auipc	ra, 0
80202286: e7 80 a0 69  	jalr	1690(ra)
;                 if pa == 0 {
8020228a: 21 cd        	beqz	a0, 0x802022e2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10c>
8020228c: aa 84        	mv	s1, a0
8020228e: 05 66        	lui	a2, 1
80202290: 81 45        	li	a1, 0
80202292: 97 20 00 00  	auipc	ra, 2
80202296: e7 80 80 e5  	jalr	-424(ra)
;     (pa >> 12) << 10
8020229a: 13 d5 24 00  	srli	a0, s1, 2
8020229e: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
802022a2: 13 65 15 00  	ori	a0, a0, 1
802022a6: 23 b0 a9 00  	sd	a0, 0(s3)
802022aa: 21 a0        	j	0x802022b2 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0xdc>
;     (pte >> 10) << 12
802022ac: 29 81        	srli	a0, a0, 10
802022ae: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
802022b2: 13 f5 fc 1f  	andi	a0, s9, 511
;         &mut pagetable.data[px(0, va)]
802022b6: 0e 05        	slli	a0, a0, 3
802022b8: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
802022ba: 83 45 05 00  	lbu	a1, 0(a0)
802022be: 85 89        	andi	a1, a1, 1
802022c0: c1 e1        	bnez	a1, 0x80202340 <.LBB2_23>
;     (pa >> 12) << 10
802022c2: 93 55 2a 00  	srli	a1, s4, 2
802022c6: b3 f5 75 01  	and	a1, a1, s7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802022ca: b3 e5 25 01  	or	a1, a1, s2
802022ce: 93 e5 15 00  	ori	a1, a1, 1
802022d2: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
802022d4: ea 9a        	add	s5, s5, s10
;             pa += PGSIZE;
802022d6: 6a 9a        	add	s4, s4, s10
;         while a <= last {
802022d8: 85 0c        	addi	s9, s9, 1
802022da: e3 74 5b f5  	bgeu	s6, s5, 0x80202222 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x4c>
802022de: 05 46        	li	a2, 1
802022e0: 11 a0        	j	0x802022e4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10e>
802022e2: 01 46        	li	a2, 0
;     }
802022e4: 32 85        	mv	a0, a2
802022e6: ea 60        	ld	ra, 152(sp)
802022e8: 4a 64        	ld	s0, 144(sp)
802022ea: aa 64        	ld	s1, 136(sp)
802022ec: 0a 69        	ld	s2, 128(sp)
802022ee: e6 79        	ld	s3, 120(sp)
802022f0: 46 7a        	ld	s4, 112(sp)
802022f2: a6 7a        	ld	s5, 104(sp)
802022f4: 06 7b        	ld	s6, 96(sp)
802022f6: e6 6b        	ld	s7, 88(sp)
802022f8: 46 6c        	ld	s8, 80(sp)
802022fa: a6 6c        	ld	s9, 72(sp)
802022fc: 06 6d        	ld	s10, 64(sp)
802022fe: e2 7d        	ld	s11, 56(sp)
80202300: 0d 61        	addi	sp, sp, 160
80202302: 82 80        	ret

0000000080202304 <.LBB2_20>:
80202304: 17 35 00 00  	auipc	a0, 3
80202308: 13 05 45 dd  	addi	a0, a0, -556
8020230c: 23 3c a4 f6  	sd	a0, -136(s0)
80202310: 05 45        	li	a0, 1
80202312: 23 30 a4 f8  	sd	a0, -128(s0)
80202316: 23 34 04 f6  	sd	zero, -152(s0)

000000008020231a <.LBB2_21>:
8020231a: 17 35 00 00  	auipc	a0, 3
8020231e: 13 05 e5 da  	addi	a0, a0, -594
80202322: 23 34 a4 f8  	sd	a0, -120(s0)
80202326: 23 38 04 f8  	sd	zero, -112(s0)

000000008020232a <.LBB2_22>:
;             panic!("walk");
8020232a: 97 35 00 00  	auipc	a1, 3
8020232e: 93 85 65 dd  	addi	a1, a1, -554
80202332: 13 05 84 f6  	addi	a0, s0, -152
80202336: 97 10 00 00  	auipc	ra, 1
8020233a: e7 80 40 2e  	jalr	740(ra)
8020233e: 00 00        	unimp	

0000000080202340 <.LBB2_23>:
80202340: 17 35 00 00  	auipc	a0, 3
80202344: 13 05 85 de  	addi	a0, a0, -536
80202348: 23 3c a4 f6  	sd	a0, -136(s0)
8020234c: 05 45        	li	a0, 1
8020234e: 23 30 a4 f8  	sd	a0, -128(s0)
80202352: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202356 <.LBB2_24>:
80202356: 17 35 00 00  	auipc	a0, 3
8020235a: 13 05 25 d7  	addi	a0, a0, -654
8020235e: 23 34 a4 f8  	sd	a0, -120(s0)
80202362: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202366 <.LBB2_25>:
;                 panic!("mappages: remap");
80202366: 97 35 00 00  	auipc	a1, 3
8020236a: 93 85 25 dd  	addi	a1, a1, -558
8020236e: 13 05 84 f6  	addi	a0, s0, -152
80202372: 97 10 00 00  	auipc	ra, 1
80202376: e7 80 80 2a  	jalr	680(ra)
8020237a: 00 00        	unimp	

000000008020237c <.LBB2_26>:
8020237c: 17 35 00 00  	auipc	a0, 3
80202380: 13 05 45 de  	addi	a0, a0, -540
80202384: 23 3c a4 f6  	sd	a0, -136(s0)
80202388: 05 45        	li	a0, 1
8020238a: 23 30 a4 f8  	sd	a0, -128(s0)
8020238e: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202392 <.LBB2_27>:
80202392: 17 35 00 00  	auipc	a0, 3
80202396: 13 05 65 d3  	addi	a0, a0, -714
8020239a: 23 34 a4 f8  	sd	a0, -120(s0)
8020239e: 23 38 04 f8  	sd	zero, -112(s0)

00000000802023a2 <.LBB2_28>:
;             panic!("mappages: size");
802023a2: 97 35 00 00  	auipc	a1, 3
802023a6: 93 85 e5 dc  	addi	a1, a1, -562
802023aa: 13 05 84 f6  	addi	a0, s0, -152
802023ae: 97 10 00 00  	auipc	ra, 1
802023b2: e7 80 c0 26  	jalr	620(ra)
802023b6: 00 00        	unimp	

00000000802023b8 <_ZN6kernel3sbi8shutdown17ha1ef8f97a31cd2d1E>:
; pub fn shutdown() -> ! {
802023b8: 39 71        	addi	sp, sp, -64
;         asm!(
802023ba: 06 fc        	sd	ra, 56(sp)
802023bc: 22 f8        	sd	s0, 48(sp)
802023be: 80 00        	addi	s0, sp, 64
802023c0: a1 48        	li	a7, 8
802023c2: 01 45        	li	a0, 0
802023c4: 81 45        	li	a1, 0
802023c6: 01 46        	li	a2, 0
802023c8: 73 00 00 00  	ecall	

00000000802023cc <.LBB1_1>:
802023cc: 17 35 00 00  	auipc	a0, 3
802023d0: 13 05 45 dd  	addi	a0, a0, -556
802023d4: 23 38 a4 fc  	sd	a0, -48(s0)
802023d8: 05 45        	li	a0, 1
802023da: 23 3c a4 fc  	sd	a0, -40(s0)
802023de: 23 30 04 fc  	sd	zero, -64(s0)

00000000802023e2 <.LBB1_2>:
802023e2: 17 35 00 00  	auipc	a0, 3
802023e6: 13 05 65 da  	addi	a0, a0, -602
802023ea: 23 30 a4 fe  	sd	a0, -32(s0)
802023ee: 23 34 04 fe  	sd	zero, -24(s0)

00000000802023f2 <.LBB1_3>:
;     panic!("It should shutdown!");
802023f2: 97 35 00 00  	auipc	a1, 3
802023f6: 93 85 e5 dc  	addi	a1, a1, -562
802023fa: 13 05 04 fc  	addi	a0, s0, -64
802023fe: 97 10 00 00  	auipc	ra, 1
80202402: e7 80 c0 21  	jalr	540(ra)
80202406: 00 00        	unimp	

0000000080202408 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01404a8176509c97E>:
80202408: 41 11        	addi	sp, sp, -16
8020240a: 06 e4        	sd	ra, 8(sp)
8020240c: 22 e0        	sd	s0, 0(sp)
8020240e: 00 08        	addi	s0, sp, 16
80202410: 10 61        	ld	a2, 0(a0)
80202412: 14 65        	ld	a3, 8(a0)
80202414: 2e 87        	mv	a4, a1
80202416: 32 85        	mv	a0, a2
80202418: b6 85        	mv	a1, a3
8020241a: 3a 86        	mv	a2, a4
8020241c: a2 60        	ld	ra, 8(sp)
8020241e: 02 64        	ld	s0, 0(sp)
80202420: 41 01        	addi	sp, sp, 16
80202422: 17 23 00 00  	auipc	t1, 2
80202426: 67 00 43 96  	jr	-1692(t1)

000000008020242a <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h24079b98717b7d77E>:
8020242a: 41 11        	addi	sp, sp, -16
8020242c: 06 e4        	sd	ra, 8(sp)
8020242e: 22 e0        	sd	s0, 0(sp)
80202430: 00 08        	addi	s0, sp, 16
80202432: 08 61        	ld	a0, 0(a0)
80202434: a2 60        	ld	ra, 8(sp)
80202436: 02 64        	ld	s0, 0(sp)
80202438: 41 01        	addi	sp, sp, 16
8020243a: 17 13 00 00  	auipc	t1, 1
8020243e: 67 00 63 2c  	jr	710(t1)

0000000080202442 <_ZN6kernel7process3cpu5cpuid17h63fd58697e69a2d8E>:
; pub fn cpuid() -> usize {
80202442: 41 11        	addi	sp, sp, -16
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202444: 06 e4        	sd	ra, 8(sp)
80202446: 22 e0        	sd	s0, 0(sp)
80202448: 00 08        	addi	s0, sp, 16
8020244a: 12 85        	mv	a0, tp
; }
8020244c: a2 60        	ld	ra, 8(sp)
8020244e: 02 64        	ld	s0, 0(sp)
80202450: 41 01        	addi	sp, sp, 16
80202452: 82 80        	ret

0000000080202454 <_ZN6kernel7process3cpu5mycpu17hba8d96572f55b33fE>:
; pub fn mycpu() -> *mut Cpu {
80202454: 41 11        	addi	sp, sp, -16
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202456: 06 e4        	sd	ra, 8(sp)
80202458: 22 e0        	sd	s0, 0(sp)
8020245a: 00 08        	addi	s0, sp, 16
8020245c: 12 85        	mv	a0, tp
8020245e: 9d 45        	li	a1, 7
;     unsafe { &mut CPUS[id] }
80202460: 63 ee a5 00  	bltu	a1, a0, 0x8020247c <.LBB7_4>
80202464: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
80202466: 33 05 b5 02  	mul	a0, a0, a1

000000008020246a <.LBB7_3>:
8020246a: 97 65 01 00  	auipc	a1, 22
8020246e: 93 85 65 ba  	addi	a1, a1, -1114
80202472: 2e 95        	add	a0, a0, a1
; }
80202474: a2 60        	ld	ra, 8(sp)
80202476: 02 64        	ld	s0, 0(sp)
80202478: 41 01        	addi	sp, sp, 16
8020247a: 82 80        	ret

000000008020247c <.LBB7_4>:
;     unsafe { &mut CPUS[id] }
8020247c: 17 36 00 00  	auipc	a2, 3
80202480: 13 06 c6 f7  	addi	a2, a2, -132
80202484: a1 45        	li	a1, 8
80202486: 97 10 00 00  	auipc	ra, 1
8020248a: e7 80 e0 1e  	jalr	494(ra)
8020248e: 00 00        	unimp	

0000000080202490 <usertrapret>:
; pub fn kerneltrap() {}
80202490: 41 11        	addi	sp, sp, -16
80202492: 06 e4        	sd	ra, 8(sp)
80202494: 22 e0        	sd	s0, 0(sp)
80202496: 00 08        	addi	s0, sp, 16
80202498: a2 60        	ld	ra, 8(sp)
8020249a: 02 64        	ld	s0, 0(sp)
8020249c: 41 01        	addi	sp, sp, 16
8020249e: 82 80        	ret

00000000802024a0 <_ZN6kernel4trap12trapinithart17he6cca289112bcdcaE>:
; pub fn trapinithart() {
802024a0: 5d 71        	addi	sp, sp, -80
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
802024a2: 86 e4        	sd	ra, 72(sp)
802024a4: a2 e0        	sd	s0, 64(sp)
802024a6: 80 08        	addi	s0, sp, 80

00000000802024a8 <.LBB10_3>:
802024a8: 17 f5 ff ff  	auipc	a0, 1048575
802024ac: 13 05 85 c8  	addi	a0, a0, -888
802024b0: 73 10 55 10  	csrw	stvec, a0
802024b4: 13 05 84 fe  	addi	a0, s0, -24
802024b8: 23 38 a4 fa  	sd	a0, -80(s0)
802024bc: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802024c0 <.LBB10_4>:
802024c0: 17 35 00 00  	auipc	a0, 3
802024c4: 13 05 05 f9  	addi	a0, a0, -112
802024c8: 23 34 a4 fc  	sd	a0, -56(s0)
802024cc: 05 45        	li	a0, 1
802024ce: 23 38 a4 fc  	sd	a0, -48(s0)

00000000802024d2 <.LBB10_5>:
802024d2: 17 35 00 00  	auipc	a0, 3
802024d6: 13 05 e5 f0  	addi	a0, a0, -242
802024da: 23 3c a4 fc  	sd	a0, -40(s0)
802024de: 23 30 04 fe  	sd	zero, -32(s0)

00000000802024e2 <.LBB10_6>:
802024e2: 97 35 00 00  	auipc	a1, 3
802024e6: 93 85 e5 22  	addi	a1, a1, 558
802024ea: 13 05 04 fb  	addi	a0, s0, -80
802024ee: 13 06 84 fb  	addi	a2, s0, -72
802024f2: 97 10 00 00  	auipc	ra, 1
802024f6: e7 80 00 24  	jalr	576(ra)
802024fa: 09 e5        	bnez	a0, 0x80202504 <.LBB10_7>
; }
802024fc: a6 60        	ld	ra, 72(sp)
802024fe: 06 64        	ld	s0, 64(sp)
80202500: 61 61        	addi	sp, sp, 80
80202502: 82 80        	ret

0000000080202504 <.LBB10_7>:
80202504: 17 35 00 00  	auipc	a0, 3
80202508: 13 05 c5 23  	addi	a0, a0, 572

000000008020250c <.LBB10_8>:
8020250c: 97 36 00 00  	auipc	a3, 3
80202510: 93 86 46 26  	addi	a3, a3, 612

0000000080202514 <.LBB10_9>:
80202514: 17 37 00 00  	auipc	a4, 3
80202518: 13 07 c7 28  	addi	a4, a4, 652
8020251c: 93 05 b0 02  	li	a1, 43
80202520: 13 06 84 fe  	addi	a2, s0, -24
80202524: 97 10 00 00  	auipc	ra, 1
80202528: e7 80 00 19  	jalr	400(ra)
8020252c: 00 00        	unimp	

000000008020252e <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E>:
;     pub fn release(&mut self) {
8020252e: 5d 71        	addi	sp, sp, -80
80202530: 86 e4        	sd	ra, 72(sp)
80202532: a2 e0        	sd	s0, 64(sp)
80202534: 26 fc        	sd	s1, 56(sp)
80202536: 4a f8        	sd	s2, 48(sp)
80202538: 80 08        	addi	s0, sp, 80
8020253a: aa 84        	mv	s1, a0
8020253c: 03 05 85 01  	lb	a0, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
80202540: 39 c9        	beqz	a0, 0x80202596 <.LBB2_12>
80202542: 03 b9 04 01  	ld	s2, 16(s1)
80202546: 97 00 00 00  	auipc	ra, 0
8020254a: e7 80 e0 f0  	jalr	-242(ra)
;         if !self.holding() {
8020254e: 63 14 a9 04  	bne	s2, a0, 0x80202596 <.LBB2_12>
;         self.cpu = null_mut();
80202552: 23 b8 04 00  	sd	zero, 16(s1)
80202556: 0f 00 30 03  	fence	rw, rw
8020255a: 0f 00 10 03  	fence	rw, w
8020255e: 23 8c 04 00  	sb	zero, 24(s1)
;     let mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202562: 97 00 00 00  	auipc	ra, 0
80202566: e7 80 20 ef  	jalr	-270(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020256a: f3 25 00 10  	csrr	a1, sstatus
;                 (*self & (1 << bit)) != 0
8020256e: 89 89        	andi	a1, a1, 2
;     if sstatus::read().sie() {
80202570: b9 e9        	bnez	a1, 0x802025c6 <.LBB2_15>
;     if mc.noff < 1 {
80202572: 0c 65        	ld	a1, 8(a0)
80202574: 63 51 b0 08  	blez	a1, 0x802025f6 <.LBB2_18>
;     mc.noff -= 1;
80202578: fd 15        	addi	a1, a1, -1
8020257a: 0c e5        	sd	a1, 8(a0)
;     if mc.noff == 0 && mc.intena {
8020257c: 99 e5        	bnez	a1, 0x8020258a <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
8020257e: 03 45 05 01  	lbu	a0, 16(a0)
80202582: 01 c5        	beqz	a0, 0x8020258a <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E+0x5c>
80202584: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80202586: 73 20 05 10  	csrs	sstatus, a0
;     }
8020258a: a6 60        	ld	ra, 72(sp)
8020258c: 06 64        	ld	s0, 64(sp)
8020258e: e2 74        	ld	s1, 56(sp)
80202590: 42 79        	ld	s2, 48(sp)
80202592: 61 61        	addi	sp, sp, 80
80202594: 82 80        	ret

0000000080202596 <.LBB2_12>:
80202596: 17 35 00 00  	auipc	a0, 3
8020259a: 13 05 a5 f1  	addi	a0, a0, -230
8020259e: 23 30 a4 fc  	sd	a0, -64(s0)
802025a2: 05 45        	li	a0, 1
802025a4: 23 34 a4 fc  	sd	a0, -56(s0)
802025a8: 23 38 04 fa  	sd	zero, -80(s0)

00000000802025ac <.LBB2_13>:
802025ac: 17 35 00 00  	auipc	a0, 3
802025b0: 13 05 45 eb  	addi	a0, a0, -332
802025b4: 23 38 a4 fc  	sd	a0, -48(s0)
802025b8: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802025bc <.LBB2_14>:
;             panic!("release");
802025bc: 97 35 00 00  	auipc	a1, 3
802025c0: 93 85 45 f0  	addi	a1, a1, -252
802025c4: 85 a0        	j	0x80202624 <.LBB2_20+0x8>

00000000802025c6 <.LBB2_15>:
802025c6: 17 35 00 00  	auipc	a0, 3
802025ca: 13 05 a5 f2  	addi	a0, a0, -214
802025ce: 23 30 a4 fc  	sd	a0, -64(s0)
802025d2: 05 45        	li	a0, 1
802025d4: 23 34 a4 fc  	sd	a0, -56(s0)
802025d8: 23 38 04 fa  	sd	zero, -80(s0)

00000000802025dc <.LBB2_16>:
802025dc: 17 35 00 00  	auipc	a0, 3
802025e0: 13 05 45 e8  	addi	a0, a0, -380
802025e4: 23 38 a4 fc  	sd	a0, -48(s0)
802025e8: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802025ec <.LBB2_17>:
;         panic!("pop_off - interruptible");
802025ec: 97 35 00 00  	auipc	a1, 3
802025f0: 93 85 45 f1  	addi	a1, a1, -236
802025f4: 05 a8        	j	0x80202624 <.LBB2_20+0x8>

00000000802025f6 <.LBB2_18>:
802025f6: 17 35 00 00  	auipc	a0, 3
802025fa: 13 05 a5 f2  	addi	a0, a0, -214
802025fe: 23 30 a4 fc  	sd	a0, -64(s0)
80202602: 05 45        	li	a0, 1
80202604: 23 34 a4 fc  	sd	a0, -56(s0)
80202608: 23 38 04 fa  	sd	zero, -80(s0)

000000008020260c <.LBB2_19>:
8020260c: 17 35 00 00  	auipc	a0, 3
80202610: 13 05 45 e5  	addi	a0, a0, -428
80202614: 23 38 a4 fc  	sd	a0, -48(s0)
80202618: 23 3c 04 fc  	sd	zero, -40(s0)

000000008020261c <.LBB2_20>:
;         panic!("pop_off");
8020261c: 97 35 00 00  	auipc	a1, 3
80202620: 93 85 45 f1  	addi	a1, a1, -236
80202624: 13 05 04 fb  	addi	a0, s0, -80
80202628: 97 10 00 00  	auipc	ra, 1
8020262c: e7 80 20 ff  	jalr	-14(ra)
80202630: 00 00        	unimp	

0000000080202632 <_ZN6kernel6memory6kalloc5kinit17h4f25e2f38cdb0cf5E>:
; pub fn kinit() {
80202632: 35 71        	addi	sp, sp, -160
80202634: 06 ed        	sd	ra, 152(sp)
80202636: 22 e9        	sd	s0, 144(sp)
80202638: 26 e5        	sd	s1, 136(sp)
8020263a: 4a e1        	sd	s2, 128(sp)
8020263c: ce fc        	sd	s3, 120(sp)
8020263e: d2 f8        	sd	s4, 112(sp)
80202640: d6 f4        	sd	s5, 104(sp)
80202642: da f0        	sd	s6, 96(sp)
80202644: de ec        	sd	s7, 88(sp)
80202646: e2 e8        	sd	s8, 80(sp)
80202648: e6 e4        	sd	s9, 72(sp)
8020264a: ea e0        	sd	s10, 64(sp)
8020264c: 00 11        	addi	s0, sp, 160
8020264e: 0f 00 30 03  	fence	rw, rw

0000000080202652 <.LBB1_23>:
80202652: 97 69 01 00  	auipc	s3, 22
80202656: 93 89 e9 a7  	addi	s3, s3, -1410
8020265a: 03 b5 09 03  	ld	a0, 48(s3)
8020265e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202662: 21 ed        	bnez	a0, 0x802026ba <.LBB1_24+0x3a>
80202664: 93 85 09 03  	addi	a1, s3, 48
80202668: 05 46        	li	a2, 1
8020266a: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020266e: 01 e5        	bnez	a0, 0x80202676 <.LBB1_23+0x24>
80202670: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202674: fd fa        	bnez	a3, 0x8020266a <.LBB1_23+0x18>
;             if status == INCOMPLETE { // We init
80202676: 31 e1        	bnez	a0, 0x802026ba <.LBB1_24+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202678: 23 34 b4 f6  	sd	a1, -152(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020267c: 23 b0 c9 00  	sd	a2, 0(s3)

0000000080202680 <.LBB1_24>:
80202680: 17 35 00 00  	auipc	a0, 3
80202684: 13 05 05 a5  	addi	a0, a0, -1456
80202688: 23 b4 a9 00  	sd	a0, 8(s3)
8020268c: 11 45        	li	a0, 4
8020268e: 23 b8 a9 00  	sd	a0, 16(s3)
80202692: 23 bc 09 00  	sd	zero, 24(s3)
80202696: 23 80 09 02  	sb	zero, 32(s3)
8020269a: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
8020269e: 23 08 04 f6  	sb	zero, -144(s0)
802026a2: 0f 00 10 03  	fence	rw, w
802026a6: 09 45        	li	a0, 2
802026a8: 23 b8 a9 02  	sd	a0, 48(s3)
802026ac: 13 05 84 f6  	addi	a0, s0, -152
802026b0: 97 10 00 00  	auipc	ra, 1
802026b4: e7 80 00 f3  	jalr	-208(ra)
802026b8: 0d a0        	j	0x802026da <.LBB1_25>
802026ba: 85 45        	li	a1, 1
;             match status {
802026bc: 63 1c b5 00  	bne	a0, a1, 0x802026d4 <.LBB1_24+0x54>
802026c0: 0f 00 00 01  	fence	w, 0
802026c4: 0f 00 30 03  	fence	rw, rw
802026c8: 03 b5 09 03  	ld	a0, 48(s3)
802026cc: 0f 00 30 02  	fence	r, rw
;             match status {
802026d0: e3 08 b5 fe  	beq	a0, a1, 0x802026c0 <.LBB1_24+0x40>
802026d4: 89 45        	li	a1, 2
;             match status {
802026d6: 63 14 b5 16  	bne	a0, a1, 0x8020283e <.LBB1_28+0x36>

00000000802026da <.LBB1_25>:
;         while pa < pa_end - PGSIZE {
802026da: 17 75 01 00  	auipc	a0, 23
802026de: 13 05 65 92  	addi	a0, a0, -1754
802026e2: 85 65        	lui	a1, 1
802026e4: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
802026e6: aa 95        	add	a1, a1, a0
802026e8: 7d 76        	lui	a2, 1048575
802026ea: f1 8d        	and	a1, a1, a2
802026ec: 37 86 08 00  	lui	a2, 136
802026f0: 7d 36        	addiw	a2, a2, -1
802026f2: 32 06        	slli	a2, a2, 12
802026f4: 7d 16        	addi	a2, a2, -1
802026f6: 63 62 b6 0e  	bltu	a2, a1, 0x802027da <.LBB1_25+0x100>
802026fa: 63 e3 a5 1e  	bltu	a1, a0, 0x802028e0 <.LBB1_39>
802026fe: 05 6a        	lui	s4, 1
80202700: 9b 05 fa ff  	addiw	a1, s4, -1
80202704: 2e 95        	add	a0, a0, a1
80202706: fd 75        	lui	a1, 1048575
80202708: 6d 8d        	and	a0, a0, a1
8020270a: 85 45        	li	a1, 1
8020270c: 89 4a        	li	s5, 2
8020270e: 13 86 09 02  	addi	a2, s3, 32
80202712: 93 76 36 00  	andi	a3, a2, 3
80202716: 9b 96 36 00  	slliw	a3, a3, 3
8020271a: 13 07 f0 0f  	li	a4, 255
8020271e: bb 14 d7 00  	sllw	s1, a4, a3
80202722: bb 95 d5 00  	sllw	a1, a1, a3
80202726: 82 15        	slli	a1, a1, 32
80202728: 93 db 05 02  	srli	s7, a1, 32
8020272c: 13 7c c6 ff  	andi	s8, a2, -4
80202730: 13 89 89 00  	addi	s2, s3, 8
80202734: b7 f5 ff 43  	lui	a1, 278527
80202738: 93 9c 15 00  	slli	s9, a1, 1
8020273c: 2a 8b        	mv	s6, a0
8020273e: 85 45        	li	a1, 1
80202740: 05 66        	lui	a2, 1
80202742: 97 20 00 00  	auipc	ra, 2
80202746: e7 80 80 9a  	jalr	-1624(ra)
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020274a: 73 2d 00 10  	csrr	s10, sstatus
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
8020274e: 73 b0 0a 10  	csrc	sstatus, s5
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
80202752: 97 00 00 00  	auipc	ra, 0
80202756: e7 80 20 d0  	jalr	-766(ra)
;     if mc.noff == 0 {
8020275a: 0c 65        	ld	a1, 8(a0)
8020275c: 99 c5        	beqz	a1, 0x8020276a <.LBB1_25+0x90>
;     mc.noff += 1;
8020275e: 85 05        	addi	a1, a1, 1
80202760: 0c e5        	sd	a1, 8(a0)
80202762: 03 85 09 02  	lb	a0, 32(s3)
80202766: 01 ed        	bnez	a0, 0x8020277e <.LBB1_25+0xa4>
80202768: 1d a0        	j	0x8020278e <.LBB1_25+0xb4>
;         mc.intena = old;
8020276a: 13 16 ed 03  	slli	a2, s10, 62
8020276e: 7d 92        	srli	a2, a2, 63
80202770: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
80202774: 85 05        	addi	a1, a1, 1
80202776: 0c e5        	sd	a1, 8(a0)
80202778: 03 85 09 02  	lb	a0, 32(s3)
8020277c: 09 c9        	beqz	a0, 0x8020278e <.LBB1_25+0xb4>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020277e: 03 bd 89 01  	ld	s10, 24(s3)
80202782: 97 00 00 00  	auipc	ra, 0
80202786: e7 80 20 cd  	jalr	-814(ra)
8020278a: 63 08 ad 0e  	beq	s10, a0, 0x8020287a <.LBB1_33>
8020278e: 2f 25 0c 14  	lr.w.aq	a0, (s8)
80202792: b3 75 95 00  	and	a1, a0, s1
80202796: 81 e9        	bnez	a1, 0x802027a6 <.LBB1_25+0xcc>
80202798: b3 45 75 01  	xor	a1, a0, s7
8020279c: e5 8d        	and	a1, a1, s1
8020279e: a9 8d        	xor	a1, a1, a0
802027a0: af 25 bc 18  	sc.w	a1, a1, (s8)
802027a4: ed f5        	bnez	a1, 0x8020278e <.LBB1_25+0xb4>
802027a6: 65 8d        	and	a0, a0, s1
802027a8: 01 25        	sext.w	a0, a0
;         while self
802027aa: 75 f1        	bnez	a0, 0x8020278e <.LBB1_25+0xb4>
802027ac: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
802027b0: 97 00 00 00  	auipc	ra, 0
802027b4: e7 80 40 ca  	jalr	-860(ra)
;         unsafe { (*pa).next = self.freelist }
802027b8: 83 b5 89 02  	ld	a1, 40(s3)
;         self.cpu = mycpu();
802027bc: 23 bc a9 00  	sd	a0, 24(s3)
;         unsafe { (*pa).next = self.freelist }
802027c0: 23 30 bb 00  	sd	a1, 0(s6)
;         self.freelist = pa;
802027c4: 23 b4 69 03  	sd	s6, 40(s3)
;         self.lock.release();
802027c8: 4a 85        	mv	a0, s2
802027ca: 97 00 00 00  	auipc	ra, 0
802027ce: e7 80 40 d6  	jalr	-668(ra)
;             pa += PGSIZE;
802027d2: 33 05 4b 01  	add	a0, s6, s4
;         while pa < pa_end - PGSIZE {
802027d6: e3 63 9b f7  	bltu	s6, s9, 0x8020273c <.LBB1_25+0x62>
802027da: 13 05 84 f9  	addi	a0, s0, -104
802027de: 23 30 a4 f6  	sd	a0, -160(s0)
802027e2: 23 34 04 f6  	sd	zero, -152(s0)

00000000802027e6 <.LBB1_26>:
802027e6: 17 35 00 00  	auipc	a0, 3
802027ea: 13 05 a5 db  	addi	a0, a0, -582
802027ee: 23 3c a4 f6  	sd	a0, -136(s0)
802027f2: 05 45        	li	a0, 1
802027f4: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802027f8 <.LBB1_27>:
802027f8: 17 35 00 00  	auipc	a0, 3
802027fc: 13 05 05 d5  	addi	a0, a0, -688
80202800: 23 34 a4 f8  	sd	a0, -120(s0)
80202804: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202808 <.LBB1_28>:
80202808: 97 35 00 00  	auipc	a1, 3
8020280c: 93 85 85 f0  	addi	a1, a1, -248
80202810: 13 05 04 f6  	addi	a0, s0, -160
80202814: 13 06 84 f6  	addi	a2, s0, -152
80202818: 97 10 00 00  	auipc	ra, 1
8020281c: e7 80 a0 f1  	jalr	-230(ra)
80202820: 59 e9        	bnez	a0, 0x802028b6 <.LBB1_36>
; }
80202822: ea 60        	ld	ra, 152(sp)
80202824: 4a 64        	ld	s0, 144(sp)
80202826: aa 64        	ld	s1, 136(sp)
80202828: 0a 69        	ld	s2, 128(sp)
8020282a: e6 79        	ld	s3, 120(sp)
8020282c: 46 7a        	ld	s4, 112(sp)
8020282e: a6 7a        	ld	s5, 104(sp)
80202830: 06 7b        	ld	s6, 96(sp)
80202832: e6 6b        	ld	s7, 88(sp)
80202834: 46 6c        	ld	s8, 80(sp)
80202836: a6 6c        	ld	s9, 72(sp)
80202838: 06 6d        	ld	s10, 64(sp)
8020283a: 0d 61        	addi	sp, sp, 160
8020283c: 82 80        	ret
;             match status {
8020283e: 05 e1        	bnez	a0, 0x8020285e <.LBB1_31>

0000000080202840 <.LBB1_29>:
;                 INCOMPLETE => unreachable!(),
80202840: 17 35 00 00  	auipc	a0, 3
80202844: 13 05 85 84  	addi	a0, a0, -1976

0000000080202848 <.LBB1_30>:
80202848: 17 36 00 00  	auipc	a2, 3
8020284c: 13 06 86 86  	addi	a2, a2, -1944
80202850: 93 05 80 02  	li	a1, 40
80202854: 97 10 00 00  	auipc	ra, 1
80202858: e7 80 40 df  	jalr	-524(ra)
8020285c: 00 00        	unimp	

000000008020285e <.LBB1_31>:
;                 PANICKED => panic!("Once has panicked"),
8020285e: 17 25 00 00  	auipc	a0, 2
80202862: 13 05 25 7a  	addi	a0, a0, 1954

0000000080202866 <.LBB1_32>:
80202866: 17 36 00 00  	auipc	a2, 3
8020286a: 13 06 a6 80  	addi	a2, a2, -2038
8020286e: c5 45        	li	a1, 17
80202870: 97 10 00 00  	auipc	ra, 1
80202874: e7 80 80 dd  	jalr	-552(ra)
80202878: 00 00        	unimp	

000000008020287a <.LBB1_33>:
8020287a: 17 35 00 00  	auipc	a0, 3
8020287e: 13 05 e5 be  	addi	a0, a0, -1042
80202882: 23 3c a4 f6  	sd	a0, -136(s0)
80202886: 05 45        	li	a0, 1
80202888: 23 30 a4 f8  	sd	a0, -128(s0)
8020288c: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202890 <.LBB1_34>:
80202890: 17 35 00 00  	auipc	a0, 3
80202894: 13 05 05 bd  	addi	a0, a0, -1072
80202898: 23 34 a4 f8  	sd	a0, -120(s0)
8020289c: 23 38 04 f8  	sd	zero, -112(s0)

00000000802028a0 <.LBB1_35>:
;             panic!("acquire");
802028a0: 97 35 00 00  	auipc	a1, 3
802028a4: 93 85 05 bf  	addi	a1, a1, -1040
802028a8: 13 05 84 f6  	addi	a0, s0, -152
802028ac: 97 10 00 00  	auipc	ra, 1
802028b0: e7 80 e0 d6  	jalr	-658(ra)
802028b4: 00 00        	unimp	

00000000802028b6 <.LBB1_36>:
802028b6: 17 35 00 00  	auipc	a0, 3
802028ba: 13 05 a5 e8  	addi	a0, a0, -374

00000000802028be <.LBB1_37>:
802028be: 97 36 00 00  	auipc	a3, 3
802028c2: 93 86 26 eb  	addi	a3, a3, -334

00000000802028c6 <.LBB1_38>:
802028c6: 17 37 00 00  	auipc	a4, 3
802028ca: 13 07 a7 ed  	addi	a4, a4, -294
802028ce: 93 05 b0 02  	li	a1, 43
802028d2: 13 06 84 f9  	addi	a2, s0, -104
802028d6: 97 10 00 00  	auipc	ra, 1
802028da: e7 80 e0 dd  	jalr	-546(ra)
802028de: 00 00        	unimp	

00000000802028e0 <.LBB1_39>:
802028e0: 17 35 00 00  	auipc	a0, 3
802028e4: 13 05 05 c7  	addi	a0, a0, -912
802028e8: 23 3c a4 f6  	sd	a0, -136(s0)
802028ec: 05 45        	li	a0, 1
802028ee: 23 30 a4 f8  	sd	a0, -128(s0)
802028f2: 23 34 04 f6  	sd	zero, -152(s0)

00000000802028f6 <.LBB1_40>:
802028f6: 17 35 00 00  	auipc	a0, 3
802028fa: 13 05 25 c5  	addi	a0, a0, -942
802028fe: 23 34 a4 f8  	sd	a0, -120(s0)
80202902: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202906 <.LBB1_41>:
;             panic!("kfree");
80202906: 97 35 00 00  	auipc	a1, 3
8020290a: 93 85 25 c7  	addi	a1, a1, -910
8020290e: 13 05 84 f6  	addi	a0, s0, -152
80202912: 97 10 00 00  	auipc	ra, 1
80202916: e7 80 80 d0  	jalr	-760(ra)
8020291a: 00 00        	unimp	

000000008020291c <_ZN6kernel6memory6kalloc6kalloc17h8a70add4bd9ad31fE>:
; pub fn kalloc() -> Addr {
8020291c: 5d 71        	addi	sp, sp, -80
8020291e: 86 e4        	sd	ra, 72(sp)
80202920: a2 e0        	sd	s0, 64(sp)
80202922: 26 fc        	sd	s1, 56(sp)
80202924: 4a f8        	sd	s2, 48(sp)
80202926: 80 08        	addi	s0, sp, 80
80202928: 0f 00 30 03  	fence	rw, rw

000000008020292c <.LBB2_19>:
8020292c: 97 54 01 00  	auipc	s1, 21
80202930: 93 84 44 7a  	addi	s1, s1, 1956
80202934: 88 78        	ld	a0, 48(s1)
80202936: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020293a: 21 e9        	bnez	a0, 0x8020298a <.LBB2_20+0x34>
8020293c: 93 85 04 03  	addi	a1, s1, 48
80202940: 05 46        	li	a2, 1
80202942: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202946: 01 e5        	bnez	a0, 0x8020294e <.LBB2_19+0x22>
80202948: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
8020294c: fd fa        	bnez	a3, 0x80202942 <.LBB2_19+0x16>
;             if status == INCOMPLETE { // We init
8020294e: 15 ed        	bnez	a0, 0x8020298a <.LBB2_20+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202950: 23 38 b4 fa  	sd	a1, -80(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202954: 90 e0        	sd	a2, 0(s1)

0000000080202956 <.LBB2_20>:
80202956: 17 25 00 00  	auipc	a0, 2
8020295a: 13 05 a5 77  	addi	a0, a0, 1914
8020295e: 88 e4        	sd	a0, 8(s1)
80202960: 11 45        	li	a0, 4
80202962: 88 e8        	sd	a0, 16(s1)
80202964: 23 bc 04 00  	sd	zero, 24(s1)
80202968: 23 80 04 02  	sb	zero, 32(s1)
8020296c: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80202970: 23 0c 04 fa  	sb	zero, -72(s0)
80202974: 0f 00 10 03  	fence	rw, w
80202978: 09 45        	li	a0, 2
8020297a: 88 f8        	sd	a0, 48(s1)
8020297c: 13 05 04 fb  	addi	a0, s0, -80
80202980: 97 10 00 00  	auipc	ra, 1
80202984: e7 80 00 c6  	jalr	-928(ra)
80202988: 05 a0        	j	0x802029a8 <.LBB2_20+0x52>
8020298a: 85 45        	li	a1, 1
;             match status {
8020298c: 63 1b b5 00  	bne	a0, a1, 0x802029a2 <.LBB2_20+0x4c>
80202990: 0f 00 00 01  	fence	w, 0
80202994: 0f 00 30 03  	fence	rw, rw
80202998: 88 78        	ld	a0, 48(s1)
8020299a: 0f 00 30 02  	fence	r, rw
;             match status {
8020299e: e3 09 b5 fe  	beq	a0, a1, 0x80202990 <.LBB2_20+0x3a>
802029a2: 89 45        	li	a1, 2
;             match status {
802029a4: 63 1e b5 0c  	bne	a0, a1, 0x80202a80 <.LBB2_20+0x12a>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802029a8: 73 29 00 10  	csrr	s2, sstatus
802029ac: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802029ae: 73 30 05 10  	csrc	sstatus, a0
;     let mut mc: &mut Cpu = unsafe { transmute(mycpu()) };
802029b2: 97 00 00 00  	auipc	ra, 0
802029b6: e7 80 20 aa  	jalr	-1374(ra)
;     if mc.noff == 0 {
802029ba: 0c 65        	ld	a1, 8(a0)
802029bc: 99 c5        	beqz	a1, 0x802029ca <.LBB2_20+0x74>
;     mc.noff += 1;
802029be: 85 05        	addi	a1, a1, 1
802029c0: 0c e5        	sd	a1, 8(a0)
802029c2: 03 85 04 02  	lb	a0, 32(s1)
802029c6: 01 ed        	bnez	a0, 0x802029de <.LBB2_20+0x88>
802029c8: 1d a0        	j	0x802029ee <.LBB2_20+0x98>
;         mc.intena = old;
802029ca: 13 16 e9 03  	slli	a2, s2, 62
802029ce: 7d 92        	srli	a2, a2, 63
802029d0: 23 08 c5 00  	sb	a2, 16(a0)
;     mc.noff += 1;
802029d4: 85 05        	addi	a1, a1, 1
802029d6: 0c e5        	sd	a1, 8(a0)
802029d8: 03 85 04 02  	lb	a0, 32(s1)
802029dc: 09 c9        	beqz	a0, 0x802029ee <.LBB2_20+0x98>
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802029de: 03 b9 84 01  	ld	s2, 24(s1)
802029e2: 97 00 00 00  	auipc	ra, 0
802029e6: e7 80 20 a7  	jalr	-1422(ra)
802029ea: 63 09 a9 0c  	beq	s2, a0, 0x80202abc <.LBB2_25>
802029ee: 13 85 04 02  	addi	a0, s1, 32
802029f2: 93 75 35 00  	andi	a1, a0, 3
802029f6: 9b 95 35 00  	slliw	a1, a1, 3
802029fa: 13 06 f0 0f  	li	a2, 255
802029fe: 3b 16 b6 00  	sllw	a2, a2, a1
80202a02: 85 46        	li	a3, 1
80202a04: bb 95 b6 00  	sllw	a1, a3, a1
80202a08: 82 15        	slli	a1, a1, 32
80202a0a: 81 91        	srli	a1, a1, 32
80202a0c: 71 99        	andi	a0, a0, -4
80202a0e: af 26 05 14  	lr.w.aq	a3, (a0)
80202a12: 33 f7 c6 00  	and	a4, a3, a2
80202a16: 01 eb        	bnez	a4, 0x80202a26 <.LBB2_20+0xd0>
80202a18: 33 c7 b6 00  	xor	a4, a3, a1
80202a1c: 71 8f        	and	a4, a4, a2
80202a1e: 35 8f        	xor	a4, a4, a3
80202a20: 2f 27 e5 18  	sc.w	a4, a4, (a0)
80202a24: 6d f7        	bnez	a4, 0x80202a0e <.LBB2_20+0xb8>
80202a26: 33 f5 c6 00  	and	a0, a3, a2
80202a2a: 01 25        	sext.w	a0, a0
;         while self
80202a2c: 69 f1        	bnez	a0, 0x802029ee <.LBB2_20+0x98>
80202a2e: 0f 00 30 03  	fence	rw, rw
;         self.cpu = mycpu();
80202a32: 97 00 00 00  	auipc	ra, 0
80202a36: e7 80 20 a2  	jalr	-1502(ra)
;         r = self.freelist;
80202a3a: 03 b9 84 02  	ld	s2, 40(s1)
;         self.cpu = mycpu();
80202a3e: 88 ec        	sd	a0, 24(s1)
;         if r != null_mut() {
80202a40: 63 03 09 02  	beqz	s2, 0x80202a66 <.LBB2_20+0x110>
;             unsafe { self.freelist = (*r).next }
80202a44: 03 35 09 00  	ld	a0, 0(s2)
80202a48: 88 f4        	sd	a0, 40(s1)
80202a4a: 13 85 84 00  	addi	a0, s1, 8
;         self.lock.release();
80202a4e: 97 00 00 00  	auipc	ra, 0
80202a52: e7 80 00 ae  	jalr	-1312(ra)
80202a56: 95 45        	li	a1, 5
80202a58: 05 66        	lui	a2, 1
80202a5a: 4a 85        	mv	a0, s2
80202a5c: 97 10 00 00  	auipc	ra, 1
80202a60: e7 80 e0 68  	jalr	1678(ra)
80202a64: 39 a0        	j	0x80202a72 <.LBB2_20+0x11c>
;         self.lock.release();
80202a66: 13 85 84 00  	addi	a0, s1, 8
80202a6a: 97 00 00 00  	auipc	ra, 0
80202a6e: e7 80 40 ac  	jalr	-1340(ra)
; }
80202a72: 4a 85        	mv	a0, s2
80202a74: a6 60        	ld	ra, 72(sp)
80202a76: 06 64        	ld	s0, 64(sp)
80202a78: e2 74        	ld	s1, 56(sp)
80202a7a: 42 79        	ld	s2, 48(sp)
80202a7c: 61 61        	addi	sp, sp, 80
80202a7e: 82 80        	ret
;             match status {
80202a80: 05 e1        	bnez	a0, 0x80202aa0 <.LBB2_23>

0000000080202a82 <.LBB2_21>:
;                 INCOMPLETE => unreachable!(),
80202a82: 17 25 00 00  	auipc	a0, 2
80202a86: 13 05 65 60  	addi	a0, a0, 1542

0000000080202a8a <.LBB2_22>:
80202a8a: 17 26 00 00  	auipc	a2, 2
80202a8e: 13 06 66 62  	addi	a2, a2, 1574
80202a92: 93 05 80 02  	li	a1, 40
80202a96: 97 10 00 00  	auipc	ra, 1
80202a9a: e7 80 20 bb  	jalr	-1102(ra)
80202a9e: 00 00        	unimp	

0000000080202aa0 <.LBB2_23>:
;                 PANICKED => panic!("Once has panicked"),
80202aa0: 17 25 00 00  	auipc	a0, 2
80202aa4: 13 05 05 56  	addi	a0, a0, 1376

0000000080202aa8 <.LBB2_24>:
80202aa8: 17 26 00 00  	auipc	a2, 2
80202aac: 13 06 86 5c  	addi	a2, a2, 1480
80202ab0: c5 45        	li	a1, 17
80202ab2: 97 10 00 00  	auipc	ra, 1
80202ab6: e7 80 60 b9  	jalr	-1130(ra)
80202aba: 00 00        	unimp	

0000000080202abc <.LBB2_25>:
80202abc: 17 35 00 00  	auipc	a0, 3
80202ac0: 13 05 c5 9a  	addi	a0, a0, -1620
80202ac4: 23 30 a4 fc  	sd	a0, -64(s0)
80202ac8: 05 45        	li	a0, 1
80202aca: 23 34 a4 fc  	sd	a0, -56(s0)
80202ace: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202ad2 <.LBB2_26>:
80202ad2: 17 35 00 00  	auipc	a0, 3
80202ad6: 13 05 e5 98  	addi	a0, a0, -1650
80202ada: 23 38 a4 fc  	sd	a0, -48(s0)
80202ade: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202ae2 <.LBB2_27>:
;             panic!("acquire");
80202ae2: 97 35 00 00  	auipc	a1, 3
80202ae6: 93 85 e5 9a  	addi	a1, a1, -1618
80202aea: 13 05 04 fb  	addi	a0, s0, -80
80202aee: 97 10 00 00  	auipc	ra, 1
80202af2: e7 80 c0 b2  	jalr	-1236(ra)
80202af6: 00 00        	unimp	

0000000080202af8 <main>:
; pub fn main() {
80202af8: 19 71        	addi	sp, sp, -128
80202afa: 86 fc        	sd	ra, 120(sp)
80202afc: a2 f8        	sd	s0, 112(sp)
80202afe: a6 f4        	sd	s1, 104(sp)
80202b00: ca f0        	sd	s2, 96(sp)
80202b02: ce ec        	sd	s3, 88(sp)
80202b04: 00 01        	addi	s0, sp, 128

0000000080202b06 <.LBB0_19>:
80202b06: 17 65 01 00  	auipc	a0, 22
80202b0a: 13 05 a5 4f  	addi	a0, a0, 1274

0000000080202b0e <.LBB0_20>:
80202b0e: 97 45 01 00  	auipc	a1, 20
80202b12: 93 85 25 4f  	addi	a1, a1, 1266
80202b16: 63 f9 a5 00  	bgeu	a1, a0, 0x80202b28 <.LBB0_20+0x1a>
80202b1a: 13 86 15 00  	addi	a2, a1, 1
80202b1e: 23 80 05 00  	sb	zero, 0(a1)
80202b22: b2 85        	mv	a1, a2
80202b24: e3 6b a6 fe  	bltu	a2, a0, 0x80202b1a <.LBB0_20+0xc>
;     if cpuid() == 0 {
80202b28: 97 00 00 00  	auipc	ra, 0
80202b2c: e7 80 a0 91  	jalr	-1766(ra)
80202b30: 63 17 05 28  	bnez	a0, 0x80202dbe <.LBB0_43>

0000000080202b34 <.LBB0_21>:
;     println!("{}", LOGO);
80202b34: 17 35 00 00  	auipc	a0, 3
80202b38: 13 05 c5 84  	addi	a0, a0, -1972
80202b3c: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202b40 <.LBB0_22>:
80202b40: 17 05 00 00  	auipc	a0, 0
80202b44: 13 05 85 8c  	addi	a0, a0, -1848
80202b48: 23 38 a4 f8  	sd	a0, -112(s0)
80202b4c: 13 09 04 fd  	addi	s2, s0, -48
80202b50: 23 3c 24 f9  	sd	s2, -104(s0)
80202b54: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202b58 <.LBB0_23>:
80202b58: 17 25 00 00  	auipc	a0, 2
80202b5c: 13 05 05 6b  	addi	a0, a0, 1712
80202b60: 23 38 a4 fa  	sd	a0, -80(s0)
80202b64: 09 45        	li	a0, 2
80202b66: 23 3c a4 fa  	sd	a0, -72(s0)
80202b6a: 13 05 84 f8  	addi	a0, s0, -120
80202b6e: 23 30 a4 fc  	sd	a0, -64(s0)
80202b72: 85 44        	li	s1, 1
80202b74: 23 34 94 fc  	sd	s1, -56(s0)

0000000080202b78 <.LBB0_24>:
80202b78: 97 35 00 00  	auipc	a1, 3
80202b7c: 93 85 85 b9  	addi	a1, a1, -1128
80202b80: 13 05 84 f9  	addi	a0, s0, -104
80202b84: 13 06 04 fa  	addi	a2, s0, -96
80202b88: 97 10 00 00  	auipc	ra, 1
80202b8c: e7 80 a0 ba  	jalr	-1110(ra)
80202b90: 63 15 05 2a  	bnez	a0, 0x80202e3a <.LBB0_47>
80202b94: 23 34 24 f9  	sd	s2, -120(s0)
80202b98: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202b9c <.LBB0_25>:
80202b9c: 17 35 00 00  	auipc	a0, 3
80202ba0: 13 05 c5 a6  	addi	a0, a0, -1428
80202ba4: 23 38 a4 fa  	sd	a0, -80(s0)
80202ba8: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202bac <.LBB0_26>:
80202bac: 97 34 00 00  	auipc	s1, 3
80202bb0: 93 84 44 a0  	addi	s1, s1, -1532
80202bb4: 23 30 94 fc  	sd	s1, -64(s0)
80202bb8: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202bbc <.LBB0_27>:
80202bbc: 97 35 00 00  	auipc	a1, 3
80202bc0: 93 85 45 b5  	addi	a1, a1, -1196
80202bc4: 13 05 84 f8  	addi	a0, s0, -120
80202bc8: 13 06 04 fa  	addi	a2, s0, -96
80202bcc: 97 10 00 00  	auipc	ra, 1
80202bd0: e7 80 60 b6  	jalr	-1178(ra)
80202bd4: 63 13 05 26  	bnez	a0, 0x80202e3a <.LBB0_47>
80202bd8: 13 05 04 fd  	addi	a0, s0, -48
80202bdc: 23 34 a4 f8  	sd	a0, -120(s0)
80202be0: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202be4 <.LBB0_28>:
80202be4: 17 35 00 00  	auipc	a0, 3
80202be8: 13 05 c5 a3  	addi	a0, a0, -1476
80202bec: 23 38 a4 fa  	sd	a0, -80(s0)
80202bf0: 05 45        	li	a0, 1
80202bf2: 23 3c a4 fa  	sd	a0, -72(s0)
80202bf6: 23 30 94 fc  	sd	s1, -64(s0)
80202bfa: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202bfe <.LBB0_29>:
80202bfe: 97 35 00 00  	auipc	a1, 3
80202c02: 93 85 25 b1  	addi	a1, a1, -1262
80202c06: 13 05 84 f8  	addi	a0, s0, -120
80202c0a: 13 06 04 fa  	addi	a2, s0, -96
80202c0e: 97 10 00 00  	auipc	ra, 1
80202c12: e7 80 40 b2  	jalr	-1244(ra)
80202c16: 63 12 05 22  	bnez	a0, 0x80202e3a <.LBB0_47>
;         kinit();
80202c1a: 97 00 00 00  	auipc	ra, 0
80202c1e: e7 80 80 a1  	jalr	-1512(ra)
;         kvminit();
80202c22: 97 00 00 00  	auipc	ra, 0
80202c26: e7 80 60 28  	jalr	646(ra)
;         kvminithart();
80202c2a: 97 00 00 00  	auipc	ra, 0
80202c2e: e7 80 e0 4b  	jalr	1214(ra)

0000000080202c32 <.LBB0_30>:
;         self.0.call_once(builder)
80202c32: 17 45 01 00  	auipc	a0, 20
80202c36: 13 05 e5 3c  	addi	a0, a0, 974
80202c3a: 97 f0 ff ff  	auipc	ra, 1048575
80202c3e: e7 80 60 3c  	jalr	966(ra)
80202c42: 13 05 05 03  	addi	a0, a0, 48
80202c46: 93 05 00 04  	li	a1, 64
80202c4a: 37 06 00 04  	lui	a2, 16384
80202c4e: 75 36        	addiw	a2, a2, -3
80202c50: 32 06        	slli	a2, a2, 12
80202c52: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80202c54: 10 e1        	sd	a2, 0(a0)
80202c56: 13 05 05 04  	addi	a0, a0, 64
80202c5a: fd 15        	addi	a1, a1, -1
80202c5c: 36 96        	add	a2, a2, a3
80202c5e: fd f9        	bnez	a1, 0x80202c54 <.LBB0_30+0x22>
80202c60: 13 09 04 fd  	addi	s2, s0, -48
80202c64: 23 34 24 f9  	sd	s2, -120(s0)
80202c68: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202c6c <.LBB0_31>:
80202c6c: 17 25 00 00  	auipc	a0, 2
80202c70: 13 05 45 58  	addi	a0, a0, 1412
80202c74: 23 38 a4 fa  	sd	a0, -80(s0)
80202c78: 85 44        	li	s1, 1
80202c7a: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202c7e <.LBB0_32>:
80202c7e: 17 25 00 00  	auipc	a0, 2
80202c82: 13 05 a5 55  	addi	a0, a0, 1370
80202c86: 23 30 a4 fc  	sd	a0, -64(s0)
80202c8a: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202c8e <.LBB0_33>:
80202c8e: 97 35 00 00  	auipc	a1, 3
80202c92: 93 85 25 a8  	addi	a1, a1, -1406
80202c96: 13 05 84 f8  	addi	a0, s0, -120
80202c9a: 13 06 04 fa  	addi	a2, s0, -96
80202c9e: 97 10 00 00  	auipc	ra, 1
80202ca2: e7 80 40 a9  	jalr	-1388(ra)
80202ca6: 63 1a 05 18  	bnez	a0, 0x80202e3a <.LBB0_47>
80202caa: 23 34 24 f9  	sd	s2, -120(s0)
80202cae: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202cb2 <.LBB0_34>:
80202cb2: 17 25 00 00  	auipc	a0, 2
80202cb6: 13 05 65 77  	addi	a0, a0, 1910
80202cba: 23 38 a4 fa  	sd	a0, -80(s0)
80202cbe: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202cc2 <.LBB0_35>:
80202cc2: 17 25 00 00  	auipc	a0, 2
80202cc6: 13 05 e5 71  	addi	a0, a0, 1822
80202cca: 23 30 a4 fc  	sd	a0, -64(s0)
80202cce: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202cd2 <.LBB0_36>:
80202cd2: 97 35 00 00  	auipc	a1, 3
80202cd6: 93 85 e5 a3  	addi	a1, a1, -1474
80202cda: 13 05 84 f8  	addi	a0, s0, -120
80202cde: 13 06 04 fa  	addi	a2, s0, -96
80202ce2: 97 10 00 00  	auipc	ra, 1
80202ce6: e7 80 00 a5  	jalr	-1456(ra)
80202cea: 63 18 05 14  	bnez	a0, 0x80202e3a <.LBB0_47>
;         trapinithart();
80202cee: 97 f0 ff ff  	auipc	ra, 1048575
80202cf2: e7 80 20 7b  	jalr	1970(ra)
80202cf6: 37 05 00 0c  	lui	a0, 49152
80202cfa: 85 49        	li	s3, 1
80202cfc: 23 24 35 03  	sw	s3, 40(a0)
80202d00: 23 22 35 01  	sw	s3, 4(a0)
80202d04: 13 09 04 fd  	addi	s2, s0, -48
80202d08: 23 34 24 f9  	sd	s2, -120(s0)
80202d0c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202d10 <.LBB0_37>:
80202d10: 17 25 00 00  	auipc	a0, 2
80202d14: 13 05 85 69  	addi	a0, a0, 1688
80202d18: 23 38 a4 fa  	sd	a0, -80(s0)
80202d1c: 23 3c 34 fb  	sd	s3, -72(s0)

0000000080202d20 <.LBB0_38>:
80202d20: 97 24 00 00  	auipc	s1, 2
80202d24: 93 84 04 67  	addi	s1, s1, 1648
80202d28: 23 30 94 fc  	sd	s1, -64(s0)
80202d2c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202d30 <.LBB0_39>:
80202d30: 97 35 00 00  	auipc	a1, 3
80202d34: 93 85 05 9e  	addi	a1, a1, -1568
80202d38: 13 05 84 f8  	addi	a0, s0, -120
80202d3c: 13 06 04 fa  	addi	a2, s0, -96
80202d40: 97 10 00 00  	auipc	ra, 1
80202d44: e7 80 20 9f  	jalr	-1550(ra)
80202d48: 6d e9        	bnez	a0, 0x80202e3a <.LBB0_47>
;     let hart = cpuid();
80202d4a: 97 f0 ff ff  	auipc	ra, 1048575
80202d4e: e7 80 80 6f  	jalr	1784(ra)
;     PLIC + 0x2080 + hart * 0x100
80202d52: 93 15 85 00  	slli	a1, a0, 8
80202d56: 37 26 00 0c  	lui	a2, 49154
80202d5a: b2 95        	add	a1, a1, a2
80202d5c: 13 06 20 40  	li	a2, 1026
80202d60: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80202d64: 36 05        	slli	a0, a0, 13
80202d66: b7 15 20 0c  	lui	a1, 49665
80202d6a: 2e 95        	add	a0, a0, a1
80202d6c: 23 20 05 00  	sw	zero, 0(a0)
80202d70: 23 34 24 f9  	sd	s2, -120(s0)
80202d74: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202d78 <.LBB0_40>:
80202d78: 17 25 00 00  	auipc	a0, 2
80202d7c: 13 05 85 65  	addi	a0, a0, 1624
80202d80: 23 38 a4 fa  	sd	a0, -80(s0)
80202d84: 23 3c 34 fb  	sd	s3, -72(s0)
80202d88: 23 30 94 fc  	sd	s1, -64(s0)
80202d8c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202d90 <.LBB0_41>:
80202d90: 97 35 00 00  	auipc	a1, 3
80202d94: 93 85 05 98  	addi	a1, a1, -1664
80202d98: 13 05 84 f8  	addi	a0, s0, -120
80202d9c: 13 06 04 fa  	addi	a2, s0, -96
80202da0: 97 10 00 00  	auipc	ra, 1
80202da4: e7 80 20 99  	jalr	-1646(ra)
80202da8: 49 e9        	bnez	a0, 0x80202e3a <.LBB0_47>
80202daa: 0f 00 10 03  	fence	rw, w

0000000080202dae <.LBB0_42>:
80202dae: 17 55 01 00  	auipc	a0, 21
80202db2: 13 05 25 37  	addi	a0, a0, 882
80202db6: 85 45        	li	a1, 1
80202db8: 23 00 b5 00  	sb	a1, 0(a0)
80202dbc: 45 a8        	j	0x80202e6c <.LBB0_50>

0000000080202dbe <.LBB0_43>:
80202dbe: 17 55 01 00  	auipc	a0, 21
80202dc2: 13 05 25 36  	addi	a0, a0, 866
80202dc6: 0f 00 30 03  	fence	rw, rw
80202dca: 83 05 05 00  	lb	a1, 0(a0)
80202dce: 0f 00 30 02  	fence	r, rw
80202dd2: f5 d9        	beqz	a1, 0x80202dc6 <.LBB0_43+0x8>
;         println!("hart {} starting...", cpuid());
80202dd4: 97 f0 ff ff  	auipc	ra, 1048575
80202dd8: e7 80 e0 66  	jalr	1646(ra)
80202ddc: 23 30 a4 f8  	sd	a0, -128(s0)
80202de0: 13 05 04 f8  	addi	a0, s0, -128
80202de4: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202de8 <.LBB0_44>:
80202de8: 17 15 00 00  	auipc	a0, 1
80202dec: 13 05 a5 2c  	addi	a0, a0, 714
80202df0: 23 38 a4 f8  	sd	a0, -112(s0)
80202df4: 13 05 04 fd  	addi	a0, s0, -48
80202df8: 23 3c a4 f8  	sd	a0, -104(s0)
80202dfc: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e00 <.LBB0_45>:
80202e00: 17 25 00 00  	auipc	a0, 2
80202e04: 13 05 85 7c  	addi	a0, a0, 1992
80202e08: 23 38 a4 fa  	sd	a0, -80(s0)
80202e0c: 09 45        	li	a0, 2
80202e0e: 23 3c a4 fa  	sd	a0, -72(s0)
80202e12: 13 05 84 f8  	addi	a0, s0, -120
80202e16: 23 30 a4 fc  	sd	a0, -64(s0)
80202e1a: 05 45        	li	a0, 1
80202e1c: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080202e20 <.LBB0_46>:
80202e20: 97 35 00 00  	auipc	a1, 3
80202e24: 93 85 05 8f  	addi	a1, a1, -1808
80202e28: 13 05 84 f9  	addi	a0, s0, -104
80202e2c: 13 06 04 fa  	addi	a2, s0, -96
80202e30: 97 10 00 00  	auipc	ra, 1
80202e34: e7 80 20 90  	jalr	-1790(ra)
80202e38: 15 c5        	beqz	a0, 0x80202e64 <.LBB0_49+0x1a>

0000000080202e3a <.LBB0_47>:
80202e3a: 17 35 00 00  	auipc	a0, 3
80202e3e: 13 05 65 90  	addi	a0, a0, -1786

0000000080202e42 <.LBB0_48>:
80202e42: 97 36 00 00  	auipc	a3, 3
80202e46: 93 86 e6 92  	addi	a3, a3, -1746

0000000080202e4a <.LBB0_49>:
80202e4a: 17 37 00 00  	auipc	a4, 3
80202e4e: 13 07 67 95  	addi	a4, a4, -1706
80202e52: 93 05 b0 02  	li	a1, 43
80202e56: 13 06 04 fd  	addi	a2, s0, -48
80202e5a: 97 10 00 00  	auipc	ra, 1
80202e5e: e7 80 a0 85  	jalr	-1958(ra)
80202e62: 00 00        	unimp	
;         kvminithart();
80202e64: 97 00 00 00  	auipc	ra, 0
80202e68: e7 80 40 28  	jalr	644(ra)

0000000080202e6c <.LBB0_50>:
80202e6c: 17 25 00 00  	auipc	a0, 2
80202e70: 13 05 45 7d  	addi	a0, a0, 2004
80202e74: 23 38 a4 fa  	sd	a0, -80(s0)
80202e78: 05 45        	li	a0, 1
80202e7a: 23 3c a4 fa  	sd	a0, -72(s0)
80202e7e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202e82 <.LBB0_51>:
80202e82: 17 25 00 00  	auipc	a0, 2
80202e86: 13 05 e5 72  	addi	a0, a0, 1838
80202e8a: 23 30 a4 fc  	sd	a0, -64(s0)
80202e8e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202e92 <.LBB0_52>:
;     panic!("Shutdown!");
80202e92: 97 25 00 00  	auipc	a1, 2
80202e96: 93 85 e5 7c  	addi	a1, a1, 1998
80202e9a: 13 05 04 fa  	addi	a0, s0, -96
80202e9e: 97 00 00 00  	auipc	ra, 0
80202ea2: e7 80 c0 77  	jalr	1916(ra)
80202ea6: 00 00        	unimp	

0000000080202ea8 <_ZN6kernel6memory3kvm7kvminit17h69f7d250a71e7693E>:
; pub fn kvminit() {
80202ea8: 59 71        	addi	sp, sp, -112
80202eaa: 86 f4        	sd	ra, 104(sp)
80202eac: a2 f0        	sd	s0, 96(sp)
80202eae: a6 ec        	sd	s1, 88(sp)
80202eb0: ca e8        	sd	s2, 80(sp)
80202eb2: ce e4        	sd	s3, 72(sp)
80202eb4: 80 18        	addi	s0, sp, 112
80202eb6: 0f 00 30 03  	fence	rw, rw

0000000080202eba <.LBB1_19>:
80202eba: 97 54 01 00  	auipc	s1, 21
80202ebe: 93 84 e4 24  	addi	s1, s1, 590
80202ec2: 88 68        	ld	a0, 16(s1)
80202ec4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202ec8: 29 e9        	bnez	a0, 0x80202f1a <.LBB1_19+0x60>
80202eca: 93 85 04 01  	addi	a1, s1, 16
80202ece: 85 49        	li	s3, 1
80202ed0: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202ed4: 01 e5        	bnez	a0, 0x80202edc <.LBB1_19+0x22>
80202ed6: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80202eda: 7d fa        	bnez	a2, 0x80202ed0 <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
80202edc: 1d ed        	bnez	a0, 0x80202f1a <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202ede: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80202ee2: 97 00 00 00  	auipc	ra, 0
80202ee6: e7 80 a0 a3  	jalr	-1478(ra)
80202eea: 2a 89        	mv	s2, a0
80202eec: 05 66        	lui	a2, 1
80202eee: 81 45        	li	a1, 0
80202ef0: 97 10 00 00  	auipc	ra, 1
80202ef4: e7 80 a0 1f  	jalr	506(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80202ef8: 23 b0 34 01  	sd	s3, 0(s1)
80202efc: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80202f00: 23 04 04 fa  	sb	zero, -88(s0)
80202f04: 0f 00 10 03  	fence	rw, w
80202f08: 09 45        	li	a0, 2
80202f0a: 88 e8        	sd	a0, 16(s1)
80202f0c: 13 05 04 fa  	addi	a0, s0, -96
80202f10: 97 00 00 00  	auipc	ra, 0
80202f14: e7 80 00 6d  	jalr	1744(ra)
80202f18: 05 a0        	j	0x80202f38 <.LBB1_19+0x7e>
80202f1a: 85 45        	li	a1, 1
;             match status {
80202f1c: 63 1b b5 00  	bne	a0, a1, 0x80202f32 <.LBB1_19+0x78>
80202f20: 0f 00 00 01  	fence	w, 0
80202f24: 0f 00 30 03  	fence	rw, rw
80202f28: 88 68        	ld	a0, 16(s1)
80202f2a: 0f 00 30 02  	fence	r, rw
;             match status {
80202f2e: e3 09 b5 fe  	beq	a0, a1, 0x80202f20 <.LBB1_19+0x66>
80202f32: 89 45        	li	a1, 2
;             match status {
80202f34: 63 19 b5 10  	bne	a0, a1, 0x80203046 <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202f38: 13 89 84 00  	addi	s2, s1, 8
80202f3c: b7 05 00 10  	lui	a1, 65536
80202f40: 05 66        	lui	a2, 1
80202f42: b7 06 00 10  	lui	a3, 65536
80202f46: 19 47        	li	a4, 6
80202f48: 4a 85        	mv	a0, s2
80202f4a: 97 f0 ff ff  	auipc	ra, 1048575
80202f4e: e7 80 c0 28  	jalr	652(ra)
80202f52: 63 08 05 12  	beqz	a0, 0x80203082 <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202f56: b7 15 00 10  	lui	a1, 65537
80202f5a: 05 66        	lui	a2, 1
80202f5c: b7 16 00 10  	lui	a3, 65537
80202f60: 19 47        	li	a4, 6
80202f62: 4a 85        	mv	a0, s2
80202f64: 97 f0 ff ff  	auipc	ra, 1048575
80202f68: e7 80 20 27  	jalr	626(ra)
80202f6c: 63 0b 05 10  	beqz	a0, 0x80203082 <.LBB1_29>
80202f70: b7 05 00 0c  	lui	a1, 49152
80202f74: 37 06 40 00  	lui	a2, 1024
80202f78: b7 06 00 0c  	lui	a3, 49152
80202f7c: 19 47        	li	a4, 6
80202f7e: 4a 85        	mv	a0, s2
80202f80: 97 f0 ff ff  	auipc	ra, 1048575
80202f84: e7 80 60 25  	jalr	598(ra)
80202f88: 6d cd        	beqz	a0, 0x80203082 <.LBB1_29>

0000000080202f8a <.LBB1_20>:
80202f8a: 97 24 00 00  	auipc	s1, 2
80202f8e: 93 84 64 07  	addi	s1, s1, 118
80202f92: 13 05 f0 bf  	li	a0, -1025
80202f96: 56 05        	slli	a0, a0, 21
80202f98: 33 86 a4 00  	add	a2, s1, a0
80202f9c: 13 05 10 40  	li	a0, 1025
80202fa0: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202fa4: 29 47        	li	a4, 10
80202fa6: 4a 85        	mv	a0, s2
80202fa8: ae 86        	mv	a3, a1
80202faa: 97 f0 ff ff  	auipc	ra, 1048575
80202fae: e7 80 c0 22  	jalr	556(ra)
80202fb2: 61 c9        	beqz	a0, 0x80203082 <.LBB1_29>
80202fb4: 45 45        	li	a0, 17
80202fb6: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202fb8: 33 06 95 40  	sub	a2, a0, s1
80202fbc: 19 47        	li	a4, 6
80202fbe: 4a 85        	mv	a0, s2
80202fc0: a6 85        	mv	a1, s1
80202fc2: a6 86        	mv	a3, s1
80202fc4: 97 f0 ff ff  	auipc	ra, 1048575
80202fc8: e7 80 20 21  	jalr	530(ra)
80202fcc: 5d c9        	beqz	a0, 0x80203082 <.LBB1_29>

0000000080202fce <.LBB1_21>:
80202fce: 97 e6 ff ff  	auipc	a3, 1048574
80202fd2: 93 86 26 03  	addi	a3, a3, 50
80202fd6: 37 05 00 04  	lui	a0, 16384
80202fda: 7d 35        	addiw	a0, a0, -1
80202fdc: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202fe0: 05 66        	lui	a2, 1
80202fe2: 29 47        	li	a4, 10
80202fe4: 4a 85        	mv	a0, s2
80202fe6: 97 f0 ff ff  	auipc	ra, 1048575
80202fea: e7 80 00 1f  	jalr	496(ra)
80202fee: 51 c9        	beqz	a0, 0x80203082 <.LBB1_29>
80202ff0: 13 05 04 fd  	addi	a0, s0, -48
80202ff4: 23 3c a4 f8  	sd	a0, -104(s0)
80202ff8: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202ffc <.LBB1_22>:
80202ffc: 17 25 00 00  	auipc	a0, 2
80203000: 13 05 c5 6d  	addi	a0, a0, 1756
80203004: 23 38 a4 fa  	sd	a0, -80(s0)
80203008: 05 45        	li	a0, 1
8020300a: 23 3c a4 fa  	sd	a0, -72(s0)

000000008020300e <.LBB1_23>:
8020300e: 17 25 00 00  	auipc	a0, 2
80203012: 13 05 a5 66  	addi	a0, a0, 1642
80203016: 23 30 a4 fc  	sd	a0, -64(s0)
8020301a: 23 34 04 fc  	sd	zero, -56(s0)

000000008020301e <.LBB1_24>:
8020301e: 97 25 00 00  	auipc	a1, 2
80203022: 93 85 25 6f  	addi	a1, a1, 1778
80203026: 13 05 84 f9  	addi	a0, s0, -104
8020302a: 13 06 04 fa  	addi	a2, s0, -96
8020302e: 97 00 00 00  	auipc	ra, 0
80203032: e7 80 40 70  	jalr	1796(ra)
80203036: 41 e5        	bnez	a0, 0x802030be <.LBB1_32>
; }
80203038: a6 70        	ld	ra, 104(sp)
8020303a: 06 74        	ld	s0, 96(sp)
8020303c: e6 64        	ld	s1, 88(sp)
8020303e: 46 69        	ld	s2, 80(sp)
80203040: a6 69        	ld	s3, 72(sp)
80203042: 65 61        	addi	sp, sp, 112
80203044: 82 80        	ret
;             match status {
80203046: 05 e1        	bnez	a0, 0x80203066 <.LBB1_27>

0000000080203048 <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
80203048: 17 25 00 00  	auipc	a0, 2
8020304c: 13 05 05 04  	addi	a0, a0, 64

0000000080203050 <.LBB1_26>:
80203050: 17 26 00 00  	auipc	a2, 2
80203054: 13 06 06 06  	addi	a2, a2, 96
80203058: 93 05 80 02  	li	a1, 40
8020305c: 97 00 00 00  	auipc	ra, 0
80203060: e7 80 c0 5e  	jalr	1516(ra)
80203064: 00 00        	unimp	

0000000080203066 <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
80203066: 17 25 00 00  	auipc	a0, 2
8020306a: 13 05 a5 f9  	addi	a0, a0, -102

000000008020306e <.LBB1_28>:
8020306e: 17 26 00 00  	auipc	a2, 2
80203072: 13 06 26 00  	addi	a2, a2, 2
80203076: c5 45        	li	a1, 17
80203078: 97 00 00 00  	auipc	ra, 0
8020307c: e7 80 00 5d  	jalr	1488(ra)
80203080: 00 00        	unimp	

0000000080203082 <.LBB1_29>:
80203082: 17 25 00 00  	auipc	a0, 2
80203086: 13 05 e5 5f  	addi	a0, a0, 1534
8020308a: 23 38 a4 fa  	sd	a0, -80(s0)
8020308e: 05 45        	li	a0, 1
80203090: 23 3c a4 fa  	sd	a0, -72(s0)
80203094: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203098 <.LBB1_30>:
80203098: 17 25 00 00  	auipc	a0, 2
8020309c: 13 05 05 5e  	addi	a0, a0, 1504
802030a0: 23 30 a4 fc  	sd	a0, -64(s0)
802030a4: 23 34 04 fc  	sd	zero, -56(s0)

00000000802030a8 <.LBB1_31>:
802030a8: 97 25 00 00  	auipc	a1, 2
802030ac: 93 85 05 60  	addi	a1, a1, 1536
802030b0: 13 05 04 fa  	addi	a0, s0, -96
802030b4: 97 00 00 00  	auipc	ra, 0
802030b8: e7 80 60 56  	jalr	1382(ra)
802030bc: 00 00        	unimp	

00000000802030be <.LBB1_32>:
802030be: 17 25 00 00  	auipc	a0, 2
802030c2: 13 05 25 68  	addi	a0, a0, 1666

00000000802030c6 <.LBB1_33>:
802030c6: 97 26 00 00  	auipc	a3, 2
802030ca: 93 86 a6 6a  	addi	a3, a3, 1706

00000000802030ce <.LBB1_34>:
802030ce: 17 27 00 00  	auipc	a4, 2
802030d2: 13 07 27 6d  	addi	a4, a4, 1746
802030d6: 93 05 b0 02  	li	a1, 43
802030da: 13 06 04 fd  	addi	a2, s0, -48
802030de: 97 00 00 00  	auipc	ra, 0
802030e2: e7 80 60 5d  	jalr	1494(ra)
802030e6: 00 00        	unimp	

00000000802030e8 <_ZN6kernel6memory3kvm11kvminithart17h64b330979084956eE>:
; pub fn kvminithart() {
802030e8: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
802030ea: 86 f4        	sd	ra, 104(sp)
802030ec: a2 f0        	sd	s0, 96(sp)
802030ee: a6 ec        	sd	s1, 88(sp)
802030f0: ca e8        	sd	s2, 80(sp)
802030f2: ce e4        	sd	s3, 72(sp)
802030f4: 80 18        	addi	s0, sp, 112
802030f6: 73 00 00 12  	sfence.vma
802030fa: 0f 00 30 03  	fence	rw, rw

00000000802030fe <.LBB2_12>:
802030fe: 97 54 01 00  	auipc	s1, 21
80203102: 93 84 a4 00  	addi	s1, s1, 10
80203106: 88 68        	ld	a0, 16(s1)
80203108: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020310c: 29 e9        	bnez	a0, 0x8020315e <.LBB2_12+0x60>
8020310e: 93 85 04 01  	addi	a1, s1, 16
80203112: 85 49        	li	s3, 1
80203114: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203118: 01 e5        	bnez	a0, 0x80203120 <.LBB2_12+0x22>
8020311a: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
8020311e: 7d fa        	bnez	a2, 0x80203114 <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
80203120: 1d ed        	bnez	a0, 0x8020315e <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203122: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80203126: 97 f0 ff ff  	auipc	ra, 1048575
8020312a: e7 80 60 7f  	jalr	2038(ra)
8020312e: 2a 89        	mv	s2, a0
80203130: 05 66        	lui	a2, 1
80203132: 81 45        	li	a1, 0
80203134: 97 10 00 00  	auipc	ra, 1
80203138: e7 80 60 fb  	jalr	-74(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020313c: 23 b0 34 01  	sd	s3, 0(s1)
80203140: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80203144: 23 04 04 fa  	sb	zero, -88(s0)
80203148: 0f 00 10 03  	fence	rw, w
8020314c: 09 45        	li	a0, 2
8020314e: 88 e8        	sd	a0, 16(s1)
80203150: 13 05 04 fa  	addi	a0, s0, -96
80203154: 97 00 00 00  	auipc	ra, 0
80203158: e7 80 c0 48  	jalr	1164(ra)
8020315c: 05 a0        	j	0x8020317c <.LBB2_12+0x7e>
8020315e: 85 45        	li	a1, 1
;             match status {
80203160: 63 1b b5 00  	bne	a0, a1, 0x80203176 <.LBB2_12+0x78>
80203164: 0f 00 00 01  	fence	w, 0
80203168: 0f 00 30 03  	fence	rw, rw
8020316c: 88 68        	ld	a0, 16(s1)
8020316e: 0f 00 30 02  	fence	r, rw
;             match status {
80203172: e3 09 b5 fe  	beq	a0, a1, 0x80203164 <.LBB2_12+0x66>
80203176: 89 45        	li	a1, 2
;             match status {
80203178: 63 16 b5 06  	bne	a0, a1, 0x802031e4 <.LBB2_15+0x28>
;         self.data.as_ptr() as Addr
8020317c: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
8020317e: 31 81        	srli	a0, a0, 12
80203180: fd 55        	li	a1, -1
80203182: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80203184: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80203186: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
8020318a: 73 00 00 12  	sfence.vma
8020318e: 13 05 04 fd  	addi	a0, s0, -48
80203192: 23 3c a4 f8  	sd	a0, -104(s0)
80203196: 23 30 04 fa  	sd	zero, -96(s0)

000000008020319a <.LBB2_13>:
8020319a: 17 25 00 00  	auipc	a0, 2
8020319e: 13 05 65 56  	addi	a0, a0, 1382
802031a2: 23 38 a4 fa  	sd	a0, -80(s0)
802031a6: 05 45        	li	a0, 1
802031a8: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802031ac <.LBB2_14>:
802031ac: 17 25 00 00  	auipc	a0, 2
802031b0: 13 05 c5 4c  	addi	a0, a0, 1228
802031b4: 23 30 a4 fc  	sd	a0, -64(s0)
802031b8: 23 34 04 fc  	sd	zero, -56(s0)

00000000802031bc <.LBB2_15>:
802031bc: 97 25 00 00  	auipc	a1, 2
802031c0: 93 85 45 55  	addi	a1, a1, 1364
802031c4: 13 05 84 f9  	addi	a0, s0, -104
802031c8: 13 06 04 fa  	addi	a2, s0, -96
802031cc: 97 00 00 00  	auipc	ra, 0
802031d0: e7 80 60 56  	jalr	1382(ra)
802031d4: 31 e5        	bnez	a0, 0x80203220 <.LBB2_20>
; }
802031d6: a6 70        	ld	ra, 104(sp)
802031d8: 06 74        	ld	s0, 96(sp)
802031da: e6 64        	ld	s1, 88(sp)
802031dc: 46 69        	ld	s2, 80(sp)
802031de: a6 69        	ld	s3, 72(sp)
802031e0: 65 61        	addi	sp, sp, 112
802031e2: 82 80        	ret
;             match status {
802031e4: 05 e1        	bnez	a0, 0x80203204 <.LBB2_18>

00000000802031e6 <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
802031e6: 17 25 00 00  	auipc	a0, 2
802031ea: 13 05 25 ea  	addi	a0, a0, -350

00000000802031ee <.LBB2_17>:
802031ee: 17 26 00 00  	auipc	a2, 2
802031f2: 13 06 26 ec  	addi	a2, a2, -318
802031f6: 93 05 80 02  	li	a1, 40
802031fa: 97 00 00 00  	auipc	ra, 0
802031fe: e7 80 e0 44  	jalr	1102(ra)
80203202: 00 00        	unimp	

0000000080203204 <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
80203204: 17 25 00 00  	auipc	a0, 2
80203208: 13 05 c5 df  	addi	a0, a0, -516

000000008020320c <.LBB2_19>:
8020320c: 17 26 00 00  	auipc	a2, 2
80203210: 13 06 46 e6  	addi	a2, a2, -412
80203214: c5 45        	li	a1, 17
80203216: 97 00 00 00  	auipc	ra, 0
8020321a: e7 80 20 43  	jalr	1074(ra)
8020321e: 00 00        	unimp	

0000000080203220 <.LBB2_20>:
80203220: 17 25 00 00  	auipc	a0, 2
80203224: 13 05 05 52  	addi	a0, a0, 1312

0000000080203228 <.LBB2_21>:
80203228: 97 26 00 00  	auipc	a3, 2
8020322c: 93 86 86 54  	addi	a3, a3, 1352

0000000080203230 <.LBB2_22>:
80203230: 17 27 00 00  	auipc	a4, 2
80203234: 13 07 07 57  	addi	a4, a4, 1392
80203238: 93 05 b0 02  	li	a1, 43
8020323c: 13 06 04 fd  	addi	a2, s0, -48
80203240: 97 00 00 00  	auipc	ra, 0
80203244: e7 80 40 47  	jalr	1140(ra)
80203248: 00 00        	unimp	

000000008020324a <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h2249d29917c459d5E.llvm.6597660389123060105>:
8020324a: 41 11        	addi	sp, sp, -16
8020324c: 06 e4        	sd	ra, 8(sp)
8020324e: 22 e0        	sd	s0, 0(sp)
80203250: 00 08        	addi	s0, sp, 16
80203252: a2 60        	ld	ra, 8(sp)
80203254: 02 64        	ld	s0, 0(sp)
80203256: 41 01        	addi	sp, sp, 16
80203258: 82 80        	ret

000000008020325a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105>:
8020325a: 01 11        	addi	sp, sp, -32
8020325c: 06 ec        	sd	ra, 24(sp)
8020325e: 22 e8        	sd	s0, 16(sp)
80203260: 00 10        	addi	s0, sp, 32
80203262: 1b 85 05 00  	sext.w	a0, a1
80203266: 13 06 00 08  	li	a2, 128
8020326a: 23 26 04 fe  	sw	zero, -20(s0)
8020326e: 63 76 c5 00  	bgeu	a0, a2, 0x8020327a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x20>
80203272: 23 06 b4 fe  	sb	a1, -20(s0)
80203276: 05 45        	li	a0, 1
80203278: 51 a8        	j	0x8020330c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xb2>
8020327a: 1b d5 b5 00  	srliw	a0, a1, 11
8020327e: 19 ed        	bnez	a0, 0x8020329c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x42>
80203280: 13 d5 65 00  	srli	a0, a1, 6
80203284: 13 65 05 0c  	ori	a0, a0, 192
80203288: 23 06 a4 fe  	sb	a0, -20(s0)
8020328c: 13 f5 f5 03  	andi	a0, a1, 63
80203290: 13 65 05 08  	ori	a0, a0, 128
80203294: a3 06 a4 fe  	sb	a0, -19(s0)
80203298: 09 45        	li	a0, 2
8020329a: 8d a8        	j	0x8020330c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xb2>
8020329c: 1b d5 05 01  	srliw	a0, a1, 16
802032a0: 05 e9        	bnez	a0, 0x802032d0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x76>
802032a2: 13 95 05 02  	slli	a0, a1, 32
802032a6: 01 91        	srli	a0, a0, 32
802032a8: 1b d6 c5 00  	srliw	a2, a1, 12
802032ac: 13 66 06 0e  	ori	a2, a2, 224
802032b0: 23 06 c4 fe  	sb	a2, -20(s0)
802032b4: 52 15        	slli	a0, a0, 52
802032b6: 69 91        	srli	a0, a0, 58
802032b8: 13 65 05 08  	ori	a0, a0, 128
802032bc: a3 06 a4 fe  	sb	a0, -19(s0)
802032c0: 13 f5 f5 03  	andi	a0, a1, 63
802032c4: 13 65 05 08  	ori	a0, a0, 128
802032c8: 23 07 a4 fe  	sb	a0, -18(s0)
802032cc: 0d 45        	li	a0, 3
802032ce: 3d a8        	j	0x8020330c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xb2>
802032d0: 13 95 05 02  	slli	a0, a1, 32
802032d4: 01 91        	srli	a0, a0, 32
802032d6: 13 16 b5 02  	slli	a2, a0, 43
802032da: 75 92        	srli	a2, a2, 61
802032dc: 13 66 06 0f  	ori	a2, a2, 240
802032e0: 23 06 c4 fe  	sb	a2, -20(s0)
802032e4: 13 16 e5 02  	slli	a2, a0, 46
802032e8: 69 92        	srli	a2, a2, 58
802032ea: 13 66 06 08  	ori	a2, a2, 128
802032ee: a3 06 c4 fe  	sb	a2, -19(s0)
802032f2: 52 15        	slli	a0, a0, 52
802032f4: 69 91        	srli	a0, a0, 58
802032f6: 13 65 05 08  	ori	a0, a0, 128
802032fa: 23 07 a4 fe  	sb	a0, -18(s0)
802032fe: 13 f5 f5 03  	andi	a0, a1, 63
80203302: 13 65 05 08  	ori	a0, a0, 128
80203306: a3 07 a4 fe  	sb	a0, -17(s0)
8020330a: 11 45        	li	a0, 4
8020330c: 93 06 c4 fe  	addi	a3, s0, -20
80203310: 33 87 a6 00  	add	a4, a3, a0
80203314: 13 03 f0 0d  	li	t1, 223
80203318: 13 08 00 0f  	li	a6, 240
8020331c: b7 02 11 00  	lui	t0, 272
80203320: 85 48        	li	a7, 1
80203322: 01 a8        	j	0x80203332 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xd8>
80203324: 85 06        	addi	a3, a3, 1
;         asm!(
80203326: 81 45        	li	a1, 0
80203328: 01 46        	li	a2, 0
8020332a: 73 00 00 00  	ecall	
8020332e: 63 8f e6 04  	beq	a3, a4, 0x8020338c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x132>
80203332: 83 85 06 00  	lb	a1, 0(a3)
80203336: 13 f5 f5 0f  	andi	a0, a1, 255
8020333a: e3 d5 05 fe  	bgez	a1, 0x80203324 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xca>
8020333e: 03 c6 16 00  	lbu	a2, 1(a3)
80203342: 93 75 f5 01  	andi	a1, a0, 31
80203346: 13 76 f6 03  	andi	a2, a2, 63
8020334a: 63 77 a3 02  	bgeu	t1, a0, 0x80203378 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x11e>
8020334e: 83 c7 26 00  	lbu	a5, 2(a3)
80203352: 1a 06        	slli	a2, a2, 6
80203354: 93 f7 f7 03  	andi	a5, a5, 63
80203358: 5d 8e        	or	a2, a2, a5
8020335a: 63 64 05 03  	bltu	a0, a6, 0x80203382 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x128>
8020335e: 03 c5 36 00  	lbu	a0, 3(a3)
80203362: f6 15        	slli	a1, a1, 61
80203364: ad 91        	srli	a1, a1, 43
80203366: 1a 06        	slli	a2, a2, 6
80203368: 13 75 f5 03  	andi	a0, a0, 63
8020336c: 51 8d        	or	a0, a0, a2
8020336e: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203370: 63 0e 55 00  	beq	a0, t0, 0x8020338c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0x132>
80203374: 91 06        	addi	a3, a3, 4
80203376: 45 bf        	j	0x80203326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xcc>
80203378: 89 06        	addi	a3, a3, 2
8020337a: 13 95 65 00  	slli	a0, a1, 6
8020337e: 51 8d        	or	a0, a0, a2
80203380: 5d b7        	j	0x80203326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xcc>
80203382: 8d 06        	addi	a3, a3, 3
80203384: 13 95 c5 00  	slli	a0, a1, 12
80203388: 51 8d        	or	a0, a0, a2
8020338a: 71 bf        	j	0x80203326 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.6597660389123060105+0xcc>
8020338c: 01 45        	li	a0, 0
8020338e: e2 60        	ld	ra, 24(sp)
80203390: 42 64        	ld	s0, 16(sp)
80203392: 05 61        	addi	sp, sp, 32
80203394: 82 80        	ret

0000000080203396 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he6d319fcf4a5da0eE.llvm.6597660389123060105>:
80203396: 5d 71        	addi	sp, sp, -80
80203398: 86 e4        	sd	ra, 72(sp)
8020339a: a2 e0        	sd	s0, 64(sp)
8020339c: 80 08        	addi	s0, sp, 80
8020339e: 08 61        	ld	a0, 0(a0)
802033a0: 90 75        	ld	a2, 40(a1)
802033a2: 94 71        	ld	a3, 32(a1)
802033a4: 23 3c a4 fa  	sd	a0, -72(s0)
802033a8: 23 34 c4 fe  	sd	a2, -24(s0)
802033ac: 23 30 d4 fe  	sd	a3, -32(s0)
802033b0: 88 6d        	ld	a0, 24(a1)
802033b2: 90 69        	ld	a2, 16(a1)
802033b4: 94 65        	ld	a3, 8(a1)
802033b6: 8c 61        	ld	a1, 0(a1)
802033b8: 23 3c a4 fc  	sd	a0, -40(s0)
802033bc: 23 38 c4 fc  	sd	a2, -48(s0)
802033c0: 23 34 d4 fc  	sd	a3, -56(s0)
802033c4: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802033c8 <.LBB2_1>:
802033c8: 97 25 00 00  	auipc	a1, 2
802033cc: 93 85 85 34  	addi	a1, a1, 840
802033d0: 13 05 84 fb  	addi	a0, s0, -72
802033d4: 13 06 04 fc  	addi	a2, s0, -64
802033d8: 97 00 00 00  	auipc	ra, 0
802033dc: e7 80 a0 35  	jalr	858(ra)
802033e0: a6 60        	ld	ra, 72(sp)
802033e2: 06 64        	ld	s0, 64(sp)
802033e4: 61 61        	addi	sp, sp, 80
802033e6: 82 80        	ret

00000000802033e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105>:
802033e8: 41 11        	addi	sp, sp, -16
802033ea: 06 e4        	sd	ra, 8(sp)
802033ec: 22 e0        	sd	s0, 0(sp)
802033ee: 00 08        	addi	s0, sp, 16
802033f0: 41 c2        	beqz	a2, 0x80203470 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x88>
802033f2: ae 86        	mv	a3, a1
802033f4: 33 87 c5 00  	add	a4, a1, a2
802033f8: 13 03 f0 0d  	li	t1, 223
802033fc: 13 08 00 0f  	li	a6, 240
80203400: b7 02 11 00  	lui	t0, 272
80203404: 85 48        	li	a7, 1
80203406: 01 a8        	j	0x80203416 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x2e>
80203408: 85 06        	addi	a3, a3, 1
;         asm!(
8020340a: 81 45        	li	a1, 0
8020340c: 01 46        	li	a2, 0
8020340e: 73 00 00 00  	ecall	
80203412: 63 8f e6 04  	beq	a3, a4, 0x80203470 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x88>
80203416: 83 85 06 00  	lb	a1, 0(a3)
8020341a: 13 f5 f5 0f  	andi	a0, a1, 255
8020341e: e3 d5 05 fe  	bgez	a1, 0x80203408 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x20>
80203422: 03 c6 16 00  	lbu	a2, 1(a3)
80203426: 93 75 f5 01  	andi	a1, a0, 31
8020342a: 13 76 f6 03  	andi	a2, a2, 63
8020342e: 63 77 a3 02  	bgeu	t1, a0, 0x8020345c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x74>
80203432: 83 c7 26 00  	lbu	a5, 2(a3)
80203436: 1a 06        	slli	a2, a2, 6
80203438: 93 f7 f7 03  	andi	a5, a5, 63
8020343c: 5d 8e        	or	a2, a2, a5
8020343e: 63 64 05 03  	bltu	a0, a6, 0x80203466 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x7e>
80203442: 03 c5 36 00  	lbu	a0, 3(a3)
80203446: f6 15        	slli	a1, a1, 61
80203448: ad 91        	srli	a1, a1, 43
8020344a: 1a 06        	slli	a2, a2, 6
8020344c: 13 75 f5 03  	andi	a0, a0, 63
80203450: 51 8d        	or	a0, a0, a2
80203452: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203454: 63 0e 55 00  	beq	a0, t0, 0x80203470 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x88>
80203458: 91 06        	addi	a3, a3, 4
8020345a: 45 bf        	j	0x8020340a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x22>
8020345c: 89 06        	addi	a3, a3, 2
8020345e: 13 95 65 00  	slli	a0, a1, 6
80203462: 51 8d        	or	a0, a0, a2
80203464: 5d b7        	j	0x8020340a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x22>
80203466: 8d 06        	addi	a3, a3, 3
80203468: 13 95 c5 00  	slli	a0, a1, 12
8020346c: 51 8d        	or	a0, a0, a2
8020346e: 71 bf        	j	0x8020340a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.6597660389123060105+0x22>
80203470: 01 45        	li	a0, 0
80203472: a2 60        	ld	ra, 8(sp)
80203474: 02 64        	ld	s0, 0(sp)
80203476: 41 01        	addi	sp, sp, 16
80203478: 82 80        	ret

000000008020347a <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
8020347a: 71 71        	addi	sp, sp, -176
8020347c: 06 f5        	sd	ra, 168(sp)
8020347e: 22 f1        	sd	s0, 160(sp)
80203480: 26 ed        	sd	s1, 152(sp)
80203482: 00 19        	addi	s0, sp, 176
80203484: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80203486: 97 00 00 00  	auipc	ra, 0
8020348a: e7 80 c0 18  	jalr	396(ra)
8020348e: 05 e1        	bnez	a0, 0x802034ae <.LBB0_8+0x16>

0000000080203490 <.LBB0_7>:
80203490: 17 25 00 00  	auipc	a0, 2
80203494: 13 05 85 3a  	addi	a0, a0, 936

0000000080203498 <.LBB0_8>:
80203498: 17 26 00 00  	auipc	a2, 2
8020349c: 13 06 06 3e  	addi	a2, a2, 992
802034a0: 93 05 b0 02  	li	a1, 43
802034a4: 97 00 00 00  	auipc	ra, 0
802034a8: e7 80 40 1a  	jalr	420(ra)
802034ac: 00 00        	unimp	
802034ae: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802034b2: 26 85        	mv	a0, s1
802034b4: 97 00 00 00  	auipc	ra, 0
802034b8: e7 80 20 16  	jalr	354(ra)
802034bc: 3d e1        	bnez	a0, 0x80203522 <.LBB0_11+0x24>
802034be: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
802034c2: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802034c6 <.LBB0_9>:
802034c6: 17 f5 ff ff  	auipc	a0, 1048575
802034ca: 13 05 45 f6  	addi	a0, a0, -156
802034ce: 23 34 a4 f6  	sd	a0, -152(s0)
802034d2: 13 05 04 fe  	addi	a0, s0, -32
802034d6: 23 38 a4 f8  	sd	a0, -112(s0)
802034da: 23 38 04 fa  	sd	zero, -80(s0)

00000000802034de <.LBB0_10>:
802034de: 17 25 00 00  	auipc	a0, 2
802034e2: 13 05 a5 2e  	addi	a0, a0, 746
802034e6: 23 30 a4 fc  	sd	a0, -64(s0)
802034ea: 09 45        	li	a0, 2
802034ec: 23 34 a4 fc  	sd	a0, -56(s0)
802034f0: 13 05 04 f6  	addi	a0, s0, -160
802034f4: 23 38 a4 fc  	sd	a0, -48(s0)
802034f8: 05 45        	li	a0, 1
802034fa: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802034fe <.LBB0_11>:
802034fe: 97 25 00 00  	auipc	a1, 2
80203502: 93 85 25 21  	addi	a1, a1, 530
80203506: 13 05 04 f9  	addi	a0, s0, -112
8020350a: 13 06 04 fb  	addi	a2, s0, -80
8020350e: 97 00 00 00  	auipc	ra, 0
80203512: e7 80 40 22  	jalr	548(ra)
80203516: 45 e1        	bnez	a0, 0x802035b6 <.LBB0_17>
;     shutdown()
80203518: 97 f0 ff ff  	auipc	ra, 1048575
8020351c: e7 80 00 ea  	jalr	-352(ra)
80203520: 00 00        	unimp	
80203522: 0c 61        	ld	a1, 0(a0)
80203524: 10 65        	ld	a2, 8(a0)
80203526: 23 38 b4 f8  	sd	a1, -112(s0)
8020352a: 23 3c c4 f8  	sd	a2, -104(s0)
8020352e: 08 49        	lw	a0, 16(a0)
80203530: 23 22 a4 fa  	sw	a0, -92(s0)
80203534: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80203538: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020353c <.LBB0_12>:
8020353c: 17 f5 ff ff  	auipc	a0, 1048575
80203540: 13 05 c5 ec  	addi	a0, a0, -308
80203544: 23 34 a4 f6  	sd	a0, -152(s0)
80203548: 13 05 44 fa  	addi	a0, s0, -92
8020354c: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080203550 <.LBB0_13>:
80203550: 17 15 00 00  	auipc	a0, 1
80203554: 13 05 25 b5  	addi	a0, a0, -1198
80203558: 23 3c a4 f6  	sd	a0, -136(s0)
8020355c: 13 05 84 f5  	addi	a0, s0, -168
80203560: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080203564 <.LBB0_14>:
80203564: 17 f5 ff ff  	auipc	a0, 1048575
80203568: 13 05 65 ec  	addi	a0, a0, -314
8020356c: 23 34 a4 f8  	sd	a0, -120(s0)
80203570: 13 05 04 fe  	addi	a0, s0, -32
80203574: 23 34 a4 fa  	sd	a0, -88(s0)
80203578: 23 38 04 fa  	sd	zero, -80(s0)

000000008020357c <.LBB0_15>:
8020357c: 17 25 00 00  	auipc	a0, 2
80203580: 13 05 c5 27  	addi	a0, a0, 636
80203584: 23 30 a4 fc  	sd	a0, -64(s0)
80203588: 11 45        	li	a0, 4
8020358a: 23 34 a4 fc  	sd	a0, -56(s0)
8020358e: 13 05 04 f6  	addi	a0, s0, -160
80203592: 23 38 a4 fc  	sd	a0, -48(s0)
80203596: 0d 45        	li	a0, 3
80203598: 23 3c a4 fc  	sd	a0, -40(s0)

000000008020359c <.LBB0_16>:
8020359c: 97 25 00 00  	auipc	a1, 2
802035a0: 93 85 45 17  	addi	a1, a1, 372
802035a4: 13 05 84 fa  	addi	a0, s0, -88
802035a8: 13 06 04 fb  	addi	a2, s0, -80
802035ac: 97 00 00 00  	auipc	ra, 0
802035b0: e7 80 60 18  	jalr	390(ra)
802035b4: 35 d1        	beqz	a0, 0x80203518 <.LBB0_11+0x1a>

00000000802035b6 <.LBB0_17>:
802035b6: 17 25 00 00  	auipc	a0, 2
802035ba: 13 05 a5 18  	addi	a0, a0, 394

00000000802035be <.LBB0_18>:
802035be: 97 26 00 00  	auipc	a3, 2
802035c2: 93 86 26 1b  	addi	a3, a3, 434

00000000802035c6 <.LBB0_19>:
802035c6: 17 27 00 00  	auipc	a4, 2
802035ca: 13 07 a7 1d  	addi	a4, a4, 474
802035ce: 93 05 b0 02  	li	a1, 43
802035d2: 13 06 04 fe  	addi	a2, s0, -32
802035d6: 97 00 00 00  	auipc	ra, 0
802035da: e7 80 e0 0d  	jalr	222(ra)
802035de: 00 00        	unimp	

00000000802035e0 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
802035e0: 41 11        	addi	sp, sp, -16
;         if self.panicked {
802035e2: 06 e4        	sd	ra, 8(sp)
802035e4: 22 e0        	sd	s0, 0(sp)
802035e6: 00 08        	addi	s0, sp, 16
802035e8: 83 45 85 00  	lbu	a1, 8(a0)
802035ec: 91 c5        	beqz	a1, 0x802035f8 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
802035ee: 08 61        	ld	a0, 0(a0)
802035f0: 0f 00 10 03  	fence	rw, w
802035f4: 8d 45        	li	a1, 3
802035f6: 0c e1        	sd	a1, 0(a0)
;     }
802035f8: a2 60        	ld	ra, 8(sp)
802035fa: 02 64        	ld	s0, 0(sp)
802035fc: 41 01        	addi	sp, sp, 16
802035fe: 82 80        	ret

0000000080203600 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
80203600: 08 61        	ld	a0, 0(a0)
80203602: 01 a0        	j	0x80203602 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080203604 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80203604: 82 80        	ret

0000000080203606 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80203606: 17 35 00 00  	auipc	a0, 3
8020360a: 13 05 25 ae  	addi	a0, a0, -1310
8020360e: 08 61        	ld	a0, 0(a0)
80203610: 82 80        	ret

0000000080203612 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80203612: 08 69        	ld	a0, 16(a0)
80203614: 82 80        	ret

0000000080203616 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80203616: 08 6d        	ld	a0, 24(a0)
80203618: 82 80        	ret

000000008020361a <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
8020361a: 79 71        	addi	sp, sp, -48
8020361c: 06 f4        	sd	ra, 40(sp)

000000008020361e <.LBB170_1>:
8020361e: 17 26 00 00  	auipc	a2, 2
80203622: 13 06 26 27  	addi	a2, a2, 626
80203626: 32 e0        	sd	a2, 0(sp)

0000000080203628 <.LBB170_2>:
80203628: 17 26 00 00  	auipc	a2, 2
8020362c: 13 06 06 2c  	addi	a2, a2, 704
80203630: 32 e4        	sd	a2, 8(sp)
80203632: 2a e8        	sd	a0, 16(sp)
80203634: 2e ec        	sd	a1, 24(sp)
80203636: 05 45        	li	a0, 1
80203638: 23 00 a1 02  	sb	a0, 32(sp)
8020363c: 0a 85        	mv	a0, sp
8020363e: 97 00 00 00  	auipc	ra, 0
80203642: e7 80 c0 e3  	jalr	-452(ra)
80203646: 00 00        	unimp	

0000000080203648 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80203648: 5d 71        	addi	sp, sp, -80
8020364a: 86 e4        	sd	ra, 72(sp)
8020364c: 2a fc        	sd	a0, 56(sp)
8020364e: ae e0        	sd	a1, 64(sp)
80203650: 28 18        	addi	a0, sp, 56
80203652: 2a ec        	sd	a0, 24(sp)
80203654: 05 45        	li	a0, 1
80203656: 2a f0        	sd	a0, 32(sp)
80203658: 02 e4        	sd	zero, 8(sp)

000000008020365a <.LBB172_1>:
8020365a: 17 25 00 00  	auipc	a0, 2
8020365e: 13 05 65 23  	addi	a0, a0, 566
80203662: 2a f4        	sd	a0, 40(sp)
80203664: 02 f8        	sd	zero, 48(sp)
80203666: 28 00        	addi	a0, sp, 8
80203668: b2 85        	mv	a1, a2
8020366a: 97 00 00 00  	auipc	ra, 0
8020366e: e7 80 00 fb  	jalr	-80(ra)
80203672: 00 00        	unimp	

0000000080203674 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80203674: 59 71        	addi	sp, sp, -112
80203676: 86 f4        	sd	ra, 104(sp)
80203678: 2a e4        	sd	a0, 8(sp)
8020367a: 2e e8        	sd	a1, 16(sp)
8020367c: 08 08        	addi	a0, sp, 16
8020367e: aa e4        	sd	a0, 72(sp)

0000000080203680 <.LBB176_1>:
80203680: 17 15 00 00  	auipc	a0, 1
80203684: 13 05 25 a3  	addi	a0, a0, -1486
80203688: aa e8        	sd	a0, 80(sp)
8020368a: 2c 00        	addi	a1, sp, 8
8020368c: ae ec        	sd	a1, 88(sp)
8020368e: aa f0        	sd	a0, 96(sp)

0000000080203690 <.LBB176_2>:
80203690: 17 25 00 00  	auipc	a0, 2
80203694: 13 05 85 23  	addi	a0, a0, 568
80203698: 2a f4        	sd	a0, 40(sp)
8020369a: 09 45        	li	a0, 2
8020369c: 2a f8        	sd	a0, 48(sp)
8020369e: 02 ec        	sd	zero, 24(sp)
802036a0: ac 00        	addi	a1, sp, 72
802036a2: 2e fc        	sd	a1, 56(sp)
802036a4: aa e0        	sd	a0, 64(sp)
802036a6: 28 08        	addi	a0, sp, 24
802036a8: b2 85        	mv	a1, a2
802036aa: 97 00 00 00  	auipc	ra, 0
802036ae: e7 80 00 f7  	jalr	-144(ra)
802036b2: 00 00        	unimp	

00000000802036b4 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
802036b4: 19 71        	addi	sp, sp, -128
802036b6: 86 fc        	sd	ra, 120(sp)
802036b8: 2a e4        	sd	a0, 8(sp)
802036ba: 2e e8        	sd	a1, 16(sp)
802036bc: 32 ec        	sd	a2, 24(sp)
802036be: 36 f0        	sd	a3, 32(sp)
802036c0: 28 00        	addi	a0, sp, 8
802036c2: aa ec        	sd	a0, 88(sp)

00000000802036c4 <.LBB183_1>:
802036c4: 17 15 00 00  	auipc	a0, 1
802036c8: 13 05 65 a1  	addi	a0, a0, -1514
802036cc: aa f0        	sd	a0, 96(sp)
802036ce: 28 08        	addi	a0, sp, 24
802036d0: aa f4        	sd	a0, 104(sp)

00000000802036d2 <.LBB183_2>:
802036d2: 17 15 00 00  	auipc	a0, 1
802036d6: 13 05 05 a0  	addi	a0, a0, -1536
802036da: aa f8        	sd	a0, 112(sp)

00000000802036dc <.LBB183_3>:
802036dc: 17 25 00 00  	auipc	a0, 2
802036e0: 13 05 45 23  	addi	a0, a0, 564
802036e4: 2a fc        	sd	a0, 56(sp)
802036e6: 09 45        	li	a0, 2
802036e8: aa e0        	sd	a0, 64(sp)
802036ea: 02 f4        	sd	zero, 40(sp)
802036ec: ac 08        	addi	a1, sp, 88
802036ee: ae e4        	sd	a1, 72(sp)
802036f0: aa e8        	sd	a0, 80(sp)
802036f2: 28 10        	addi	a0, sp, 40
802036f4: ba 85        	mv	a1, a4
802036f6: 97 00 00 00  	auipc	ra, 0
802036fa: e7 80 40 f2  	jalr	-220(ra)
802036fe: 00 00        	unimp	

0000000080203700 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80203700: 39 71        	addi	sp, sp, -64
80203702: 06 fc        	sd	ra, 56(sp)
80203704: 10 75        	ld	a2, 40(a0)
80203706: 18 71        	ld	a4, 32(a0)
80203708: 1c 6d        	ld	a5, 24(a0)
8020370a: 32 f8        	sd	a2, 48(sp)
8020370c: 94 61        	ld	a3, 0(a1)
8020370e: 3a f4        	sd	a4, 40(sp)
80203710: 3e f0        	sd	a5, 32(sp)
80203712: 10 69        	ld	a2, 16(a0)
80203714: 18 65        	ld	a4, 8(a0)
80203716: 08 61        	ld	a0, 0(a0)
80203718: 8c 65        	ld	a1, 8(a1)
8020371a: 32 ec        	sd	a2, 24(sp)
8020371c: 3a e8        	sd	a4, 16(sp)
8020371e: 2a e4        	sd	a0, 8(sp)
80203720: 30 00        	addi	a2, sp, 8
80203722: 36 85        	mv	a0, a3
80203724: 97 00 00 00  	auipc	ra, 0
80203728: e7 80 e0 00  	jalr	14(ra)
8020372c: e2 70        	ld	ra, 56(sp)
8020372e: 21 61        	addi	sp, sp, 64
80203730: 82 80        	ret

0000000080203732 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80203732: 19 71        	addi	sp, sp, -128
80203734: 86 fc        	sd	ra, 120(sp)
80203736: a2 f8        	sd	s0, 112(sp)
80203738: a6 f4        	sd	s1, 104(sp)
8020373a: ca f0        	sd	s2, 96(sp)
8020373c: ce ec        	sd	s3, 88(sp)
8020373e: d2 e8        	sd	s4, 80(sp)
80203740: d6 e4        	sd	s5, 72(sp)
80203742: da e0        	sd	s6, 64(sp)
80203744: b2 89        	mv	s3, a2
80203746: 05 46        	li	a2, 1
80203748: 16 16        	slli	a2, a2, 37
8020374a: 32 f8        	sd	a2, 48(sp)
8020374c: 0d 46        	li	a2, 3
8020374e: 23 0c c1 02  	sb	a2, 56(sp)
80203752: 03 b6 09 00  	ld	a2, 0(s3)
80203756: 02 e8        	sd	zero, 16(sp)
80203758: 02 f0        	sd	zero, 32(sp)
8020375a: 2a e0        	sd	a0, 0(sp)
8020375c: 2e e4        	sd	a1, 8(sp)
8020375e: 69 c6        	beqz	a2, 0x80203828 <.LBB220_31+0x9e>
80203760: 03 b5 89 00  	ld	a0, 8(s3)
80203764: 63 0e 05 10  	beqz	a0, 0x80203880 <.LBB220_31+0xf6>
80203768: 83 b5 09 01  	ld	a1, 16(s3)
8020376c: 93 06 f5 ff  	addi	a3, a0, -1
80203770: 8e 06        	slli	a3, a3, 3
80203772: 8d 82        	srli	a3, a3, 3
80203774: 13 89 16 00  	addi	s2, a3, 1
80203778: 93 84 85 00  	addi	s1, a1, 8
8020377c: 93 05 80 03  	li	a1, 56
80203780: 33 0a b5 02  	mul	s4, a0, a1
80203784: 13 04 86 01  	addi	s0, a2, 24
80203788: 85 4a        	li	s5, 1

000000008020378a <.LBB220_31>:
8020378a: 17 0b 00 00  	auipc	s6, 0
8020378e: 13 0b 6b e7  	addi	s6, s6, -394
80203792: 90 60        	ld	a2, 0(s1)
80203794: 09 ca        	beqz	a2, 0x802037a6 <.LBB220_31+0x1c>
80203796: a2 66        	ld	a3, 8(sp)
80203798: 02 65        	ld	a0, 0(sp)
8020379a: 83 b5 84 ff  	ld	a1, -8(s1)
8020379e: 94 6e        	ld	a3, 24(a3)
802037a0: 82 96        	jalr	a3
802037a2: 63 11 05 10  	bnez	a0, 0x802038a4 <.LBB220_31+0x11a>
802037a6: 48 44        	lw	a0, 12(s0)
802037a8: 2a da        	sw	a0, 52(sp)
802037aa: 03 05 04 01  	lb	a0, 16(s0)
802037ae: 23 0c a1 02  	sb	a0, 56(sp)
802037b2: 0c 44        	lw	a1, 8(s0)
802037b4: 03 b5 09 02  	ld	a0, 32(s3)
802037b8: 2e d8        	sw	a1, 48(sp)
802037ba: 83 36 84 ff  	ld	a3, -8(s0)
802037be: 0c 60        	ld	a1, 0(s0)
802037c0: 89 ce        	beqz	a3, 0x802037da <.LBB220_31+0x50>
802037c2: 01 46        	li	a2, 0
802037c4: 63 9c 56 01  	bne	a3, s5, 0x802037dc <.LBB220_31+0x52>
802037c8: 92 05        	slli	a1, a1, 4
802037ca: aa 95        	add	a1, a1, a0
802037cc: 90 65        	ld	a2, 8(a1)
802037ce: 63 04 66 01  	beq	a2, s6, 0x802037d6 <.LBB220_31+0x4c>
802037d2: 01 46        	li	a2, 0
802037d4: 21 a0        	j	0x802037dc <.LBB220_31+0x52>
802037d6: 8c 61        	ld	a1, 0(a1)
802037d8: 8c 61        	ld	a1, 0(a1)
802037da: 05 46        	li	a2, 1
802037dc: 32 e8        	sd	a2, 16(sp)
802037de: 2e ec        	sd	a1, 24(sp)
802037e0: 83 36 84 fe  	ld	a3, -24(s0)
802037e4: 83 35 04 ff  	ld	a1, -16(s0)
802037e8: 89 ce        	beqz	a3, 0x80203802 <.LBB220_31+0x78>
802037ea: 01 46        	li	a2, 0
802037ec: 63 9c 56 01  	bne	a3, s5, 0x80203804 <.LBB220_31+0x7a>
802037f0: 92 05        	slli	a1, a1, 4
802037f2: aa 95        	add	a1, a1, a0
802037f4: 90 65        	ld	a2, 8(a1)
802037f6: 63 04 66 01  	beq	a2, s6, 0x802037fe <.LBB220_31+0x74>
802037fa: 01 46        	li	a2, 0
802037fc: 21 a0        	j	0x80203804 <.LBB220_31+0x7a>
802037fe: 8c 61        	ld	a1, 0(a1)
80203800: 8c 61        	ld	a1, 0(a1)
80203802: 05 46        	li	a2, 1
80203804: 32 f0        	sd	a2, 32(sp)
80203806: 2e f4        	sd	a1, 40(sp)
80203808: 0c 6c        	ld	a1, 24(s0)
8020380a: 92 05        	slli	a1, a1, 4
8020380c: 2e 95        	add	a0, a0, a1
8020380e: 10 65        	ld	a2, 8(a0)
80203810: 08 61        	ld	a0, 0(a0)
80203812: 8a 85        	mv	a1, sp
80203814: 02 96        	jalr	a2
80203816: 59 e5        	bnez	a0, 0x802038a4 <.LBB220_31+0x11a>
80203818: c1 04        	addi	s1, s1, 16
8020381a: 13 0a 8a fc  	addi	s4, s4, -56
8020381e: 13 04 84 03  	addi	s0, s0, 56
80203822: e3 18 0a f6  	bnez	s4, 0x80203792 <.LBB220_31+0x8>
80203826: 81 a8        	j	0x80203876 <.LBB220_31+0xec>
80203828: 03 b5 89 02  	ld	a0, 40(s3)
8020382c: 31 c9        	beqz	a0, 0x80203880 <.LBB220_31+0xf6>
8020382e: 83 b5 09 02  	ld	a1, 32(s3)
80203832: 03 b6 09 01  	ld	a2, 16(s3)
80203836: 93 06 f5 ff  	addi	a3, a0, -1
8020383a: 92 06        	slli	a3, a3, 4
8020383c: 91 82        	srli	a3, a3, 4
8020383e: 13 89 16 00  	addi	s2, a3, 1
80203842: 13 04 86 00  	addi	s0, a2, 8
80203846: 13 1a 45 00  	slli	s4, a0, 4
8020384a: 93 84 85 00  	addi	s1, a1, 8
8020384e: 10 60        	ld	a2, 0(s0)
80203850: 01 ca        	beqz	a2, 0x80203860 <.LBB220_31+0xd6>
80203852: a2 66        	ld	a3, 8(sp)
80203854: 02 65        	ld	a0, 0(sp)
80203856: 83 35 84 ff  	ld	a1, -8(s0)
8020385a: 94 6e        	ld	a3, 24(a3)
8020385c: 82 96        	jalr	a3
8020385e: 39 e1        	bnez	a0, 0x802038a4 <.LBB220_31+0x11a>
80203860: 90 60        	ld	a2, 0(s1)
80203862: 03 b5 84 ff  	ld	a0, -8(s1)
80203866: 8a 85        	mv	a1, sp
80203868: 02 96        	jalr	a2
8020386a: 0d ed        	bnez	a0, 0x802038a4 <.LBB220_31+0x11a>
8020386c: 41 04        	addi	s0, s0, 16
8020386e: 41 1a        	addi	s4, s4, -16
80203870: c1 04        	addi	s1, s1, 16
80203872: e3 1e 0a fc  	bnez	s4, 0x8020384e <.LBB220_31+0xc4>
80203876: 03 b5 89 01  	ld	a0, 24(s3)
8020387a: 63 68 a9 00  	bltu	s2, a0, 0x8020388a <.LBB220_31+0x100>
8020387e: 2d a0        	j	0x802038a8 <.LBB220_31+0x11e>
80203880: 01 49        	li	s2, 0
80203882: 03 b5 89 01  	ld	a0, 24(s3)
80203886: 63 71 a9 02  	bgeu	s2, a0, 0x802038a8 <.LBB220_31+0x11e>
8020388a: 03 b5 09 01  	ld	a0, 16(s3)
8020388e: 93 15 49 00  	slli	a1, s2, 4
80203892: 33 06 b5 00  	add	a2, a0, a1
80203896: a2 66        	ld	a3, 8(sp)
80203898: 02 65        	ld	a0, 0(sp)
8020389a: 0c 62        	ld	a1, 0(a2)
8020389c: 10 66        	ld	a2, 8(a2)
8020389e: 94 6e        	ld	a3, 24(a3)
802038a0: 82 96        	jalr	a3
802038a2: 19 c1        	beqz	a0, 0x802038a8 <.LBB220_31+0x11e>
802038a4: 05 45        	li	a0, 1
802038a6: 11 a0        	j	0x802038aa <.LBB220_31+0x120>
802038a8: 01 45        	li	a0, 0
802038aa: e6 70        	ld	ra, 120(sp)
802038ac: 46 74        	ld	s0, 112(sp)
802038ae: a6 74        	ld	s1, 104(sp)
802038b0: 06 79        	ld	s2, 96(sp)
802038b2: e6 69        	ld	s3, 88(sp)
802038b4: 46 6a        	ld	s4, 80(sp)
802038b6: a6 6a        	ld	s5, 72(sp)
802038b8: 06 6b        	ld	s6, 64(sp)
802038ba: 09 61        	addi	sp, sp, 128
802038bc: 82 80        	ret

00000000802038be <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
802038be: 59 71        	addi	sp, sp, -112
802038c0: 86 f4        	sd	ra, 104(sp)
802038c2: a2 f0        	sd	s0, 96(sp)
802038c4: a6 ec        	sd	s1, 88(sp)
802038c6: ca e8        	sd	s2, 80(sp)
802038c8: ce e4        	sd	s3, 72(sp)
802038ca: d2 e0        	sd	s4, 64(sp)
802038cc: 56 fc        	sd	s5, 56(sp)
802038ce: 5a f8        	sd	s6, 48(sp)
802038d0: 5e f4        	sd	s7, 40(sp)
802038d2: 62 f0        	sd	s8, 32(sp)
802038d4: 66 ec        	sd	s9, 24(sp)
802038d6: 6a e8        	sd	s10, 16(sp)
802038d8: 6e e4        	sd	s11, 8(sp)
802038da: be 89        	mv	s3, a5
802038dc: 3a 89        	mv	s2, a4
802038de: 36 8b        	mv	s6, a3
802038e0: 32 8a        	mv	s4, a2
802038e2: 2a 8c        	mv	s8, a0
802038e4: b9 c1        	beqz	a1, 0x8020392a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
802038e6: 03 64 0c 03  	lwu	s0, 48(s8)
802038ea: 13 75 14 00  	andi	a0, s0, 1
802038ee: b7 0a 11 00  	lui	s5, 272
802038f2: 19 c1        	beqz	a0, 0x802038f8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
802038f4: 93 0a b0 02  	li	s5, 43
802038f8: b3 0c 35 01  	add	s9, a0, s3
802038fc: 13 75 44 00  	andi	a0, s0, 4
80203900: 15 cd        	beqz	a0, 0x8020393c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80203902: 13 05 00 02  	li	a0, 32
80203906: 63 70 ab 04  	bgeu	s6, a0, 0x80203946 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
8020390a: 01 45        	li	a0, 0
8020390c: 63 03 0b 04  	beqz	s6, 0x80203952 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203910: da 85        	mv	a1, s6
80203912: 52 86        	mv	a2, s4
80203914: 83 06 06 00  	lb	a3, 0(a2)
80203918: 05 06        	addi	a2, a2, 1
8020391a: 93 a6 06 fc  	slti	a3, a3, -64
8020391e: 93 c6 16 00  	xori	a3, a3, 1
80203922: fd 15        	addi	a1, a1, -1
80203924: 36 95        	add	a0, a0, a3
80203926: fd f5        	bnez	a1, 0x80203914 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80203928: 2d a0        	j	0x80203952 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
8020392a: 03 24 0c 03  	lw	s0, 48(s8)
8020392e: 93 8c 19 00  	addi	s9, s3, 1
80203932: 93 0a d0 02  	li	s5, 45
80203936: 13 75 44 00  	andi	a0, s0, 4
8020393a: 61 f5        	bnez	a0, 0x80203902 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
8020393c: 01 4a        	li	s4, 0
8020393e: 03 35 0c 01  	ld	a0, 16(s8)
80203942: 01 ed        	bnez	a0, 0x8020395a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80203944: 99 a0        	j	0x8020398a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203946: 52 85        	mv	a0, s4
80203948: da 85        	mv	a1, s6
8020394a: 97 00 00 00  	auipc	ra, 0
8020394e: e7 80 c0 44  	jalr	1100(ra)
80203952: aa 9c        	add	s9, s9, a0
80203954: 03 35 0c 01  	ld	a0, 16(s8)
80203958: 0d c9        	beqz	a0, 0x8020398a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020395a: 03 3d 8c 01  	ld	s10, 24(s8)
8020395e: 63 f6 ac 03  	bgeu	s9, s10, 0x8020398a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203962: 13 75 84 00  	andi	a0, s0, 8
80203966: 41 e5        	bnez	a0, 0x802039ee <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80203968: 83 45 8c 03  	lbu	a1, 56(s8)
8020396c: 0d 46        	li	a2, 3
8020396e: 05 45        	li	a0, 1
80203970: 63 83 c5 00  	beq	a1, a2, 0x80203976 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80203974: 2e 85        	mv	a0, a1
80203976: 93 75 35 00  	andi	a1, a0, 3
8020397a: 33 05 9d 41  	sub	a0, s10, s9
8020397e: e1 c1        	beqz	a1, 0x80203a3e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80203980: 05 46        	li	a2, 1
80203982: 63 91 c5 0c  	bne	a1, a2, 0x80203a44 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80203986: 01 4d        	li	s10, 0
80203988: d9 a0        	j	0x80203a4e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
8020398a: 03 34 0c 00  	ld	s0, 0(s8)
8020398e: 83 34 8c 00  	ld	s1, 8(s8)
80203992: 22 85        	mv	a0, s0
80203994: a6 85        	mv	a1, s1
80203996: 56 86        	mv	a2, s5
80203998: d2 86        	mv	a3, s4
8020399a: 5a 87        	mv	a4, s6
8020399c: 97 00 00 00  	auipc	ra, 0
802039a0: e7 80 00 14  	jalr	320(ra)
802039a4: 85 4b        	li	s7, 1
802039a6: 0d c1        	beqz	a0, 0x802039c8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
802039a8: 5e 85        	mv	a0, s7
802039aa: a6 70        	ld	ra, 104(sp)
802039ac: 06 74        	ld	s0, 96(sp)
802039ae: e6 64        	ld	s1, 88(sp)
802039b0: 46 69        	ld	s2, 80(sp)
802039b2: a6 69        	ld	s3, 72(sp)
802039b4: 06 6a        	ld	s4, 64(sp)
802039b6: e2 7a        	ld	s5, 56(sp)
802039b8: 42 7b        	ld	s6, 48(sp)
802039ba: a2 7b        	ld	s7, 40(sp)
802039bc: 02 7c        	ld	s8, 32(sp)
802039be: e2 6c        	ld	s9, 24(sp)
802039c0: 42 6d        	ld	s10, 16(sp)
802039c2: a2 6d        	ld	s11, 8(sp)
802039c4: 65 61        	addi	sp, sp, 112
802039c6: 82 80        	ret
802039c8: 9c 6c        	ld	a5, 24(s1)
802039ca: 22 85        	mv	a0, s0
802039cc: ca 85        	mv	a1, s2
802039ce: 4e 86        	mv	a2, s3
802039d0: a6 70        	ld	ra, 104(sp)
802039d2: 06 74        	ld	s0, 96(sp)
802039d4: e6 64        	ld	s1, 88(sp)
802039d6: 46 69        	ld	s2, 80(sp)
802039d8: a6 69        	ld	s3, 72(sp)
802039da: 06 6a        	ld	s4, 64(sp)
802039dc: e2 7a        	ld	s5, 56(sp)
802039de: 42 7b        	ld	s6, 48(sp)
802039e0: a2 7b        	ld	s7, 40(sp)
802039e2: 02 7c        	ld	s8, 32(sp)
802039e4: e2 6c        	ld	s9, 24(sp)
802039e6: 42 6d        	ld	s10, 16(sp)
802039e8: a2 6d        	ld	s11, 8(sp)
802039ea: 65 61        	addi	sp, sp, 112
802039ec: 82 87        	jr	a5
802039ee: 03 24 4c 03  	lw	s0, 52(s8)
802039f2: 13 05 00 03  	li	a0, 48
802039f6: 83 45 8c 03  	lbu	a1, 56(s8)
802039fa: 2e e0        	sd	a1, 0(sp)
802039fc: 83 3d 0c 00  	ld	s11, 0(s8)
80203a00: 83 34 8c 00  	ld	s1, 8(s8)
80203a04: 23 2a ac 02  	sw	a0, 52(s8)
80203a08: 85 4b        	li	s7, 1
80203a0a: 23 0c 7c 03  	sb	s7, 56(s8)
80203a0e: 6e 85        	mv	a0, s11
80203a10: a6 85        	mv	a1, s1
80203a12: 56 86        	mv	a2, s5
80203a14: d2 86        	mv	a3, s4
80203a16: 5a 87        	mv	a4, s6
80203a18: 97 00 00 00  	auipc	ra, 0
80203a1c: e7 80 40 0c  	jalr	196(ra)
80203a20: 41 f5        	bnez	a0, 0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a22: 22 8a        	mv	s4, s0
80203a24: 33 05 9d 41  	sub	a0, s10, s9
80203a28: 13 04 15 00  	addi	s0, a0, 1
80203a2c: 7d 14        	addi	s0, s0, -1
80203a2e: 49 c4        	beqz	s0, 0x80203ab8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80203a30: 90 70        	ld	a2, 32(s1)
80203a32: 93 05 00 03  	li	a1, 48
80203a36: 6e 85        	mv	a0, s11
80203a38: 02 96        	jalr	a2
80203a3a: 6d d9        	beqz	a0, 0x80203a2c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80203a3c: b5 b7        	j	0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a3e: 2a 8d        	mv	s10, a0
80203a40: 2e 85        	mv	a0, a1
80203a42: 31 a0        	j	0x80203a4e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203a44: 93 05 15 00  	addi	a1, a0, 1
80203a48: 05 81        	srli	a0, a0, 1
80203a4a: 13 dd 15 00  	srli	s10, a1, 1
80203a4e: 83 3c 0c 00  	ld	s9, 0(s8)
80203a52: 83 3d 8c 00  	ld	s11, 8(s8)
80203a56: 03 24 4c 03  	lw	s0, 52(s8)
80203a5a: 93 04 15 00  	addi	s1, a0, 1
80203a5e: fd 14        	addi	s1, s1, -1
80203a60: 89 c8        	beqz	s1, 0x80203a72 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80203a62: 03 b6 0d 02  	ld	a2, 32(s11)
80203a66: 66 85        	mv	a0, s9
80203a68: a2 85        	mv	a1, s0
80203a6a: 02 96        	jalr	a2
80203a6c: 6d d9        	beqz	a0, 0x80203a5e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80203a6e: 85 4b        	li	s7, 1
80203a70: 25 bf        	j	0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a72: 37 05 11 00  	lui	a0, 272
80203a76: 85 4b        	li	s7, 1
80203a78: e3 08 a4 f2  	beq	s0, a0, 0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a7c: 66 85        	mv	a0, s9
80203a7e: ee 85        	mv	a1, s11
80203a80: 56 86        	mv	a2, s5
80203a82: d2 86        	mv	a3, s4
80203a84: 5a 87        	mv	a4, s6
80203a86: 97 00 00 00  	auipc	ra, 0
80203a8a: e7 80 60 05  	jalr	86(ra)
80203a8e: 09 fd        	bnez	a0, 0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a90: 83 b6 8d 01  	ld	a3, 24(s11)
80203a94: 66 85        	mv	a0, s9
80203a96: ca 85        	mv	a1, s2
80203a98: 4e 86        	mv	a2, s3
80203a9a: 82 96        	jalr	a3
80203a9c: 11 f5        	bnez	a0, 0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203a9e: 81 44        	li	s1, 0
80203aa0: 63 0a 9d 02  	beq	s10, s1, 0x80203ad4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80203aa4: 03 b6 0d 02  	ld	a2, 32(s11)
80203aa8: 85 04        	addi	s1, s1, 1
80203aaa: 66 85        	mv	a0, s9
80203aac: a2 85        	mv	a1, s0
80203aae: 02 96        	jalr	a2
80203ab0: 65 d9        	beqz	a0, 0x80203aa0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80203ab2: 13 85 f4 ff  	addi	a0, s1, -1
80203ab6: 05 a0        	j	0x80203ad6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80203ab8: 94 6c        	ld	a3, 24(s1)
80203aba: 6e 85        	mv	a0, s11
80203abc: ca 85        	mv	a1, s2
80203abe: 4e 86        	mv	a2, s3
80203ac0: 82 96        	jalr	a3
80203ac2: e3 13 05 ee  	bnez	a0, 0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203ac6: 81 4b        	li	s7, 0
80203ac8: 23 2a 4c 03  	sw	s4, 52(s8)
80203acc: 02 65        	ld	a0, 0(sp)
80203ace: 23 0c ac 02  	sb	a0, 56(s8)
80203ad2: d9 bd        	j	0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203ad4: 6a 85        	mv	a0, s10
80203ad6: b3 3b a5 01  	sltu	s7, a0, s10
80203ada: f9 b5        	j	0x802039a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080203adc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80203adc: 79 71        	addi	sp, sp, -48
80203ade: 06 f4        	sd	ra, 40(sp)
80203ae0: 22 f0        	sd	s0, 32(sp)
80203ae2: 26 ec        	sd	s1, 24(sp)
80203ae4: 4a e8        	sd	s2, 16(sp)
80203ae6: 4e e4        	sd	s3, 8(sp)
80203ae8: 9b 07 06 00  	sext.w	a5, a2
80203aec: 37 08 11 00  	lui	a6, 272
80203af0: 3a 89        	mv	s2, a4
80203af2: b6 84        	mv	s1, a3
80203af4: 2e 84        	mv	s0, a1
80203af6: aa 89        	mv	s3, a0
80203af8: 63 89 07 01  	beq	a5, a6, 0x80203b0a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80203afc: 14 70        	ld	a3, 32(s0)
80203afe: 4e 85        	mv	a0, s3
80203b00: b2 85        	mv	a1, a2
80203b02: 82 96        	jalr	a3
80203b04: aa 85        	mv	a1, a0
80203b06: 05 45        	li	a0, 1
80203b08: 91 ed        	bnez	a1, 0x80203b24 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80203b0a: 81 cc        	beqz	s1, 0x80203b22 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80203b0c: 1c 6c        	ld	a5, 24(s0)
80203b0e: 4e 85        	mv	a0, s3
80203b10: a6 85        	mv	a1, s1
80203b12: 4a 86        	mv	a2, s2
80203b14: a2 70        	ld	ra, 40(sp)
80203b16: 02 74        	ld	s0, 32(sp)
80203b18: e2 64        	ld	s1, 24(sp)
80203b1a: 42 69        	ld	s2, 16(sp)
80203b1c: a2 69        	ld	s3, 8(sp)
80203b1e: 45 61        	addi	sp, sp, 48
80203b20: 82 87        	jr	a5
80203b22: 01 45        	li	a0, 0
80203b24: a2 70        	ld	ra, 40(sp)
80203b26: 02 74        	ld	s0, 32(sp)
80203b28: e2 64        	ld	s1, 24(sp)
80203b2a: 42 69        	ld	s2, 16(sp)
80203b2c: a2 69        	ld	s3, 8(sp)
80203b2e: 45 61        	addi	sp, sp, 48
80203b30: 82 80        	ret

0000000080203b32 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80203b32: 5d 71        	addi	sp, sp, -80
80203b34: 86 e4        	sd	ra, 72(sp)
80203b36: a2 e0        	sd	s0, 64(sp)
80203b38: 26 fc        	sd	s1, 56(sp)
80203b3a: 4a f8        	sd	s2, 48(sp)
80203b3c: 4e f4        	sd	s3, 40(sp)
80203b3e: 52 f0        	sd	s4, 32(sp)
80203b40: 56 ec        	sd	s5, 24(sp)
80203b42: 5a e8        	sd	s6, 16(sp)
80203b44: 5e e4        	sd	s7, 8(sp)
80203b46: 2a 8a        	mv	s4, a0
80203b48: 83 32 05 01  	ld	t0, 16(a0)
80203b4c: 08 71        	ld	a0, 32(a0)
80203b4e: 93 86 f2 ff  	addi	a3, t0, -1
80203b52: b3 36 d0 00  	snez	a3, a3
80203b56: 13 07 f5 ff  	addi	a4, a0, -1
80203b5a: 33 37 e0 00  	snez	a4, a4
80203b5e: f9 8e        	and	a3, a3, a4
80203b60: b2 89        	mv	s3, a2
80203b62: 2e 89        	mv	s2, a1
80203b64: 63 9d 06 16  	bnez	a3, 0x80203cde <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203b68: 85 45        	li	a1, 1
80203b6a: 63 18 b5 10  	bne	a0, a1, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b6e: 03 35 8a 02  	ld	a0, 40(s4)
80203b72: 81 45        	li	a1, 0
80203b74: b3 06 39 01  	add	a3, s2, s3
80203b78: 13 07 15 00  	addi	a4, a0, 1
80203b7c: 37 03 11 00  	lui	t1, 272
80203b80: 93 08 f0 0d  	li	a7, 223
80203b84: 13 08 00 0f  	li	a6, 240
80203b88: 4a 86        	mv	a2, s2
80203b8a: 01 a8        	j	0x80203b9a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80203b8c: 13 05 16 00  	addi	a0, a2, 1
80203b90: 91 8d        	sub	a1, a1, a2
80203b92: aa 95        	add	a1, a1, a0
80203b94: 2a 86        	mv	a2, a0
80203b96: 63 02 64 0e  	beq	s0, t1, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b9a: 7d 17        	addi	a4, a4, -1
80203b9c: 25 c7        	beqz	a4, 0x80203c04 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80203b9e: 63 0e d6 0c  	beq	a2, a3, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203ba2: 03 05 06 00  	lb	a0, 0(a2)
80203ba6: 13 74 f5 0f  	andi	s0, a0, 255
80203baa: e3 51 05 fe  	bgez	a0, 0x80203b8c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80203bae: 03 45 16 00  	lbu	a0, 1(a2)
80203bb2: 93 77 f4 01  	andi	a5, s0, 31
80203bb6: 93 74 f5 03  	andi	s1, a0, 63
80203bba: 63 f9 88 02  	bgeu	a7, s0, 0x80203bec <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80203bbe: 03 45 26 00  	lbu	a0, 2(a2)
80203bc2: 9a 04        	slli	s1, s1, 6
80203bc4: 13 75 f5 03  	andi	a0, a0, 63
80203bc8: c9 8c        	or	s1, s1, a0
80203bca: 63 67 04 03  	bltu	s0, a6, 0x80203bf8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80203bce: 03 45 36 00  	lbu	a0, 3(a2)
80203bd2: f6 17        	slli	a5, a5, 61
80203bd4: ad 93        	srli	a5, a5, 43
80203bd6: 9a 04        	slli	s1, s1, 6
80203bd8: 13 75 f5 03  	andi	a0, a0, 63
80203bdc: 45 8d        	or	a0, a0, s1
80203bde: 33 64 f5 00  	or	s0, a0, a5
80203be2: 63 0c 64 08  	beq	s0, t1, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203be6: 13 05 46 00  	addi	a0, a2, 4
80203bea: 5d b7        	j	0x80203b90 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203bec: 13 05 26 00  	addi	a0, a2, 2
80203bf0: 9a 07        	slli	a5, a5, 6
80203bf2: 33 e4 97 00  	or	s0, a5, s1
80203bf6: 69 bf        	j	0x80203b90 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203bf8: 13 05 36 00  	addi	a0, a2, 3
80203bfc: b2 07        	slli	a5, a5, 12
80203bfe: 33 e4 f4 00  	or	s0, s1, a5
80203c02: 79 b7        	j	0x80203b90 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203c04: 63 0b d6 06  	beq	a2, a3, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203c08: 03 05 06 00  	lb	a0, 0(a2)
80203c0c: 63 53 05 04  	bgez	a0, 0x80203c52 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203c10: 13 75 f5 0f  	andi	a0, a0, 255
80203c14: 93 06 00 0e  	li	a3, 224
80203c18: 63 6d d5 02  	bltu	a0, a3, 0x80203c52 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203c1c: 93 06 00 0f  	li	a3, 240
80203c20: 63 69 d5 02  	bltu	a0, a3, 0x80203c52 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203c24: 83 46 16 00  	lbu	a3, 1(a2)
80203c28: 03 47 26 00  	lbu	a4, 2(a2)
80203c2c: 93 f6 f6 03  	andi	a3, a3, 63
80203c30: 13 77 f7 03  	andi	a4, a4, 63
80203c34: 03 46 36 00  	lbu	a2, 3(a2)
80203c38: 76 15        	slli	a0, a0, 61
80203c3a: 2d 91        	srli	a0, a0, 43
80203c3c: b2 06        	slli	a3, a3, 12
80203c3e: 1a 07        	slli	a4, a4, 6
80203c40: d9 8e        	or	a3, a3, a4
80203c42: 13 76 f6 03  	andi	a2, a2, 63
80203c46: 55 8e        	or	a2, a2, a3
80203c48: 51 8d        	or	a0, a0, a2
80203c4a: 37 06 11 00  	lui	a2, 272
80203c4e: 63 06 c5 02  	beq	a0, a2, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203c52: 85 c1        	beqz	a1, 0x80203c72 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80203c54: 63 fd 35 01  	bgeu	a1, s3, 0x80203c6e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80203c58: 33 05 b9 00  	add	a0, s2, a1
80203c5c: 03 05 05 00  	lb	a0, 0(a0)
80203c60: 13 06 00 fc  	li	a2, -64
80203c64: 63 57 c5 00  	bge	a0, a2, 0x80203c72 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80203c68: 01 45        	li	a0, 0
80203c6a: 11 e5        	bnez	a0, 0x80203c76 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80203c6c: 39 a0        	j	0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203c6e: e3 9d 35 ff  	bne	a1, s3, 0x80203c68 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80203c72: 4a 85        	mv	a0, s2
80203c74: 19 c1        	beqz	a0, 0x80203c7a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203c76: ae 89        	mv	s3, a1
80203c78: 2a 89        	mv	s2, a0
80203c7a: 63 82 02 06  	beqz	t0, 0x80203cde <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203c7e: 03 34 8a 01  	ld	s0, 24(s4)
80203c82: 13 05 00 02  	li	a0, 32
80203c86: 63 f4 a9 04  	bgeu	s3, a0, 0x80203cce <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80203c8a: 01 45        	li	a0, 0
80203c8c: 63 8e 09 00  	beqz	s3, 0x80203ca8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80203c90: ce 85        	mv	a1, s3
80203c92: 4a 86        	mv	a2, s2
80203c94: 83 06 06 00  	lb	a3, 0(a2)
80203c98: 05 06        	addi	a2, a2, 1
80203c9a: 93 a6 06 fc  	slti	a3, a3, -64
80203c9e: 93 c6 16 00  	xori	a3, a3, 1
80203ca2: fd 15        	addi	a1, a1, -1
80203ca4: 36 95        	add	a0, a0, a3
80203ca6: fd f5        	bnez	a1, 0x80203c94 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80203ca8: 63 7b 85 02  	bgeu	a0, s0, 0x80203cde <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203cac: 83 45 8a 03  	lbu	a1, 56(s4)
80203cb0: 8d 46        	li	a3, 3
80203cb2: 01 46        	li	a2, 0
80203cb4: 63 83 d5 00  	beq	a1, a3, 0x80203cba <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80203cb8: 2e 86        	mv	a2, a1
80203cba: 93 75 36 00  	andi	a1, a2, 3
80203cbe: 33 05 a4 40  	sub	a0, s0, a0
80203cc2: a1 c1        	beqz	a1, 0x80203d02 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80203cc4: 05 46        	li	a2, 1
80203cc6: 63 91 c5 04  	bne	a1, a2, 0x80203d08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80203cca: 81 4a        	li	s5, 0
80203ccc: 99 a0        	j	0x80203d12 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80203cce: 4a 85        	mv	a0, s2
80203cd0: ce 85        	mv	a1, s3
80203cd2: 97 00 00 00  	auipc	ra, 0
80203cd6: e7 80 40 0c  	jalr	196(ra)
80203cda: e3 69 85 fc  	bltu	a0, s0, 0x80203cac <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80203cde: 83 35 8a 00  	ld	a1, 8(s4)
80203ce2: 03 35 0a 00  	ld	a0, 0(s4)
80203ce6: 9c 6d        	ld	a5, 24(a1)
80203ce8: ca 85        	mv	a1, s2
80203cea: 4e 86        	mv	a2, s3
80203cec: a6 60        	ld	ra, 72(sp)
80203cee: 06 64        	ld	s0, 64(sp)
80203cf0: e2 74        	ld	s1, 56(sp)
80203cf2: 42 79        	ld	s2, 48(sp)
80203cf4: a2 79        	ld	s3, 40(sp)
80203cf6: 02 7a        	ld	s4, 32(sp)
80203cf8: e2 6a        	ld	s5, 24(sp)
80203cfa: 42 6b        	ld	s6, 16(sp)
80203cfc: a2 6b        	ld	s7, 8(sp)
80203cfe: 61 61        	addi	sp, sp, 80
80203d00: 82 87        	jr	a5
80203d02: aa 8a        	mv	s5, a0
80203d04: 2e 85        	mv	a0, a1
80203d06: 31 a0        	j	0x80203d12 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80203d08: 93 05 15 00  	addi	a1, a0, 1
80203d0c: 05 81        	srli	a0, a0, 1
80203d0e: 93 da 15 00  	srli	s5, a1, 1
80203d12: 03 3b 0a 00  	ld	s6, 0(s4)
80203d16: 83 3b 8a 00  	ld	s7, 8(s4)
80203d1a: 83 24 4a 03  	lw	s1, 52(s4)
80203d1e: 13 04 15 00  	addi	s0, a0, 1
80203d22: 7d 14        	addi	s0, s0, -1
80203d24: 09 c8        	beqz	s0, 0x80203d36 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80203d26: 03 b6 0b 02  	ld	a2, 32(s7)
80203d2a: 5a 85        	mv	a0, s6
80203d2c: a6 85        	mv	a1, s1
80203d2e: 02 96        	jalr	a2
80203d30: 6d d9        	beqz	a0, 0x80203d22 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80203d32: 05 4a        	li	s4, 1
80203d34: 2d a8        	j	0x80203d6e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203d36: 37 05 11 00  	lui	a0, 272
80203d3a: 05 4a        	li	s4, 1
80203d3c: 63 89 a4 02  	beq	s1, a0, 0x80203d6e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203d40: 83 b6 8b 01  	ld	a3, 24(s7)
80203d44: 5a 85        	mv	a0, s6
80203d46: ca 85        	mv	a1, s2
80203d48: 4e 86        	mv	a2, s3
80203d4a: 82 96        	jalr	a3
80203d4c: 0d e1        	bnez	a0, 0x80203d6e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203d4e: 01 44        	li	s0, 0
80203d50: 63 8c 8a 00  	beq	s5, s0, 0x80203d68 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80203d54: 03 b6 0b 02  	ld	a2, 32(s7)
80203d58: 05 04        	addi	s0, s0, 1
80203d5a: 5a 85        	mv	a0, s6
80203d5c: a6 85        	mv	a1, s1
80203d5e: 02 96        	jalr	a2
80203d60: 65 d9        	beqz	a0, 0x80203d50 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80203d62: 13 05 f4 ff  	addi	a0, s0, -1
80203d66: 11 a0        	j	0x80203d6a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80203d68: 56 85        	mv	a0, s5
80203d6a: 33 3a 55 01  	sltu	s4, a0, s5
80203d6e: 52 85        	mv	a0, s4
80203d70: a6 60        	ld	ra, 72(sp)
80203d72: 06 64        	ld	s0, 64(sp)
80203d74: e2 74        	ld	s1, 56(sp)
80203d76: 42 79        	ld	s2, 48(sp)
80203d78: a2 79        	ld	s3, 40(sp)
80203d7a: 02 7a        	ld	s4, 32(sp)
80203d7c: e2 6a        	ld	s5, 24(sp)
80203d7e: 42 6b        	ld	s6, 16(sp)
80203d80: a2 6b        	ld	s7, 8(sp)
80203d82: 61 61        	addi	sp, sp, 80
80203d84: 82 80        	ret

0000000080203d86 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80203d86: ae 86        	mv	a3, a1
80203d88: aa 85        	mv	a1, a0
80203d8a: 32 85        	mv	a0, a2
80203d8c: 36 86        	mv	a2, a3
80203d8e: 17 03 00 00  	auipc	t1, 0
80203d92: 67 00 43 da  	jr	-604(t1)

0000000080203d96 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80203d96: 2a 86        	mv	a2, a0
80203d98: 1d 05        	addi	a0, a0, 7
80203d9a: 13 77 85 ff  	andi	a4, a0, -8
80203d9e: b3 08 c7 40  	sub	a7, a4, a2
80203da2: 63 ec 15 01  	bltu	a1, a7, 0x80203dba <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80203da6: 33 88 15 41  	sub	a6, a1, a7
80203daa: 13 35 88 00  	sltiu	a0, a6, 8
80203dae: 93 b7 98 00  	sltiu	a5, a7, 9
80203db2: 93 c7 17 00  	xori	a5, a5, 1
80203db6: 5d 8d        	or	a0, a0, a5
80203db8: 11 cd        	beqz	a0, 0x80203dd4 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80203dba: 01 45        	li	a0, 0
80203dbc: 99 c9        	beqz	a1, 0x80203dd2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80203dbe: 83 06 06 00  	lb	a3, 0(a2)
80203dc2: 05 06        	addi	a2, a2, 1
80203dc4: 93 a6 06 fc  	slti	a3, a3, -64
80203dc8: 93 c6 16 00  	xori	a3, a3, 1
80203dcc: fd 15        	addi	a1, a1, -1
80203dce: 36 95        	add	a0, a0, a3
80203dd0: fd f5        	bnez	a1, 0x80203dbe <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80203dd2: 82 80        	ret
80203dd4: 93 75 78 00  	andi	a1, a6, 7
80203dd8: 81 47        	li	a5, 0
80203dda: 63 0f c7 00  	beq	a4, a2, 0x80203df8 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80203dde: 33 07 e6 40  	sub	a4, a2, a4
80203de2: 32 85        	mv	a0, a2
80203de4: 83 06 05 00  	lb	a3, 0(a0)
80203de8: 05 05        	addi	a0, a0, 1
80203dea: 93 a6 06 fc  	slti	a3, a3, -64
80203dee: 93 c6 16 00  	xori	a3, a3, 1
80203df2: 05 07        	addi	a4, a4, 1
80203df4: b6 97        	add	a5, a5, a3
80203df6: 7d f7        	bnez	a4, 0x80203de4 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80203df8: b3 02 16 01  	add	t0, a2, a7
80203dfc: 01 46        	li	a2, 0
80203dfe: 99 cd        	beqz	a1, 0x80203e1c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80203e00: 13 75 88 ff  	andi	a0, a6, -8
80203e04: b3 86 a2 00  	add	a3, t0, a0
80203e08: 03 85 06 00  	lb	a0, 0(a3)
80203e0c: 85 06        	addi	a3, a3, 1
80203e0e: 13 25 05 fc  	slti	a0, a0, -64
80203e12: 13 45 15 00  	xori	a0, a0, 1
80203e16: fd 15        	addi	a1, a1, -1
80203e18: 2a 96        	add	a2, a2, a0
80203e1a: fd f5        	bnez	a1, 0x80203e08 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80203e1c: 13 57 38 00  	srli	a4, a6, 3

0000000080203e20 <.LBB292_27>:
80203e20: 17 25 00 00  	auipc	a0, 2
80203e24: 13 05 05 3a  	addi	a0, a0, 928
80203e28: 03 3f 05 00  	ld	t5, 0(a0)

0000000080203e2c <.LBB292_28>:
80203e2c: 17 25 00 00  	auipc	a0, 2
80203e30: 13 05 c5 39  	addi	a0, a0, 924
80203e34: 83 38 05 00  	ld	a7, 0(a0)
80203e38: 37 15 00 10  	lui	a0, 65537
80203e3c: 12 05        	slli	a0, a0, 4
80203e3e: 05 05        	addi	a0, a0, 1
80203e40: 42 05        	slli	a0, a0, 16
80203e42: 13 08 15 00  	addi	a6, a0, 1
80203e46: 33 05 f6 00  	add	a0, a2, a5
80203e4a: 25 a0        	j	0x80203e72 <.LBB292_28+0x46>
80203e4c: 13 16 3e 00  	slli	a2, t3, 3
80203e50: b3 02 c3 00  	add	t0, t1, a2
80203e54: 33 87 c3 41  	sub	a4, t2, t3
80203e58: 13 76 3e 00  	andi	a2, t3, 3
80203e5c: b3 f6 15 01  	and	a3, a1, a7
80203e60: a1 81        	srli	a1, a1, 8
80203e62: b3 f5 15 01  	and	a1, a1, a7
80203e66: b6 95        	add	a1, a1, a3
80203e68: b3 85 05 03  	mul	a1, a1, a6
80203e6c: c1 91        	srli	a1, a1, 48
80203e6e: 2e 95        	add	a0, a0, a1
80203e70: 41 e2        	bnez	a2, 0x80203ef0 <.LBB292_28+0xc4>
80203e72: 25 d3        	beqz	a4, 0x80203dd2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80203e74: ba 83        	mv	t2, a4
80203e76: 16 83        	mv	t1, t0
80203e78: 93 05 00 0c  	li	a1, 192
80203e7c: 3a 8e        	mv	t3, a4
80203e7e: 63 64 b7 00  	bltu	a4, a1, 0x80203e86 <.LBB292_28+0x5a>
80203e82: 13 0e 00 0c  	li	t3, 192
80203e86: 93 75 ce 0f  	andi	a1, t3, 252
80203e8a: 13 96 35 00  	slli	a2, a1, 3
80203e8e: b3 0e c3 00  	add	t4, t1, a2
80203e92: cd dd        	beqz	a1, 0x80203e4c <.LBB292_28+0x20>
80203e94: 81 45        	li	a1, 0
80203e96: 1a 86        	mv	a2, t1
80203e98: 55 da        	beqz	a2, 0x80203e4c <.LBB292_28+0x20>
80203e9a: 18 62        	ld	a4, 0(a2)
80203e9c: 93 47 f7 ff  	not	a5, a4
80203ea0: 9d 83        	srli	a5, a5, 7
80203ea2: 19 83        	srli	a4, a4, 6
80203ea4: 14 66        	ld	a3, 8(a2)
80203ea6: 5d 8f        	or	a4, a4, a5
80203ea8: 33 77 e7 01  	and	a4, a4, t5
80203eac: ba 95        	add	a1, a1, a4
80203eae: 13 c7 f6 ff  	not	a4, a3
80203eb2: 1d 83        	srli	a4, a4, 7
80203eb4: 99 82        	srli	a3, a3, 6
80203eb6: 1c 6a        	ld	a5, 16(a2)
80203eb8: d9 8e        	or	a3, a3, a4
80203eba: b3 f6 e6 01  	and	a3, a3, t5
80203ebe: b6 95        	add	a1, a1, a3
80203ec0: 93 c6 f7 ff  	not	a3, a5
80203ec4: 9d 82        	srli	a3, a3, 7
80203ec6: 13 d7 67 00  	srli	a4, a5, 6
80203eca: 1c 6e        	ld	a5, 24(a2)
80203ecc: d9 8e        	or	a3, a3, a4
80203ece: b3 f6 e6 01  	and	a3, a3, t5
80203ed2: b6 95        	add	a1, a1, a3
80203ed4: 93 c6 f7 ff  	not	a3, a5
80203ed8: 9d 82        	srli	a3, a3, 7
80203eda: 13 d7 67 00  	srli	a4, a5, 6
80203ede: d9 8e        	or	a3, a3, a4
80203ee0: b3 f6 e6 01  	and	a3, a3, t5
80203ee4: 13 06 06 02  	addi	a2, a2, 32
80203ee8: b6 95        	add	a1, a1, a3
80203eea: e3 17 d6 fb  	bne	a2, t4, 0x80203e98 <.LBB292_28+0x6c>
80203eee: b9 bf        	j	0x80203e4c <.LBB292_28+0x20>
80203ef0: 63 0a 03 02  	beqz	t1, 0x80203f24 <.LBB292_28+0xf8>
80203ef4: 93 05 00 0c  	li	a1, 192
80203ef8: 63 e4 b3 00  	bltu	t2, a1, 0x80203f00 <.LBB292_28+0xd4>
80203efc: 93 03 00 0c  	li	t2, 192
80203f00: 81 45        	li	a1, 0
80203f02: 13 f6 33 00  	andi	a2, t2, 3
80203f06: 0e 06        	slli	a2, a2, 3
80203f08: 83 b6 0e 00  	ld	a3, 0(t4)
80203f0c: a1 0e        	addi	t4, t4, 8
80203f0e: 13 c7 f6 ff  	not	a4, a3
80203f12: 1d 83        	srli	a4, a4, 7
80203f14: 99 82        	srli	a3, a3, 6
80203f16: d9 8e        	or	a3, a3, a4
80203f18: b3 f6 e6 01  	and	a3, a3, t5
80203f1c: 61 16        	addi	a2, a2, -8
80203f1e: b6 95        	add	a1, a1, a3
80203f20: 65 f6        	bnez	a2, 0x80203f08 <.LBB292_28+0xdc>
80203f22: 11 a0        	j	0x80203f26 <.LBB292_28+0xfa>
80203f24: 81 45        	li	a1, 0
80203f26: 33 f6 15 01  	and	a2, a1, a7
80203f2a: a1 81        	srli	a1, a1, 8
80203f2c: b3 f5 15 01  	and	a1, a1, a7
80203f30: b2 95        	add	a1, a1, a2
80203f32: b3 85 05 03  	mul	a1, a1, a6
80203f36: c1 91        	srli	a1, a1, 48
80203f38: 2e 95        	add	a0, a0, a1
80203f3a: 82 80        	ret

0000000080203f3c <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80203f3c: 39 71        	addi	sp, sp, -64
80203f3e: 06 fc        	sd	ra, 56(sp)
80203f40: 22 f8        	sd	s0, 48(sp)
80203f42: 26 f4        	sd	s1, 40(sp)
80203f44: 32 88        	mv	a6, a2
80203f46: 93 56 45 00  	srli	a3, a0, 4
80203f4a: 13 07 70 02  	li	a4, 39
80203f4e: 93 07 10 27  	li	a5, 625

0000000080203f52 <.LBB580_10>:
80203f52: 97 2e 00 00  	auipc	t4, 2
80203f56: 93 8e ee 9d  	addi	t4, t4, -1570
80203f5a: 63 f3 f6 02  	bgeu	a3, a5, 0x80203f80 <.LBB580_10+0x2e>
80203f5e: 93 06 30 06  	li	a3, 99
80203f62: 63 e9 a6 0a  	bltu	a3, a0, 0x80204014 <.LBB580_11+0x92>
80203f66: 29 46        	li	a2, 10
80203f68: 63 77 c5 0e  	bgeu	a0, a2, 0x80204056 <.LBB580_11+0xd4>
80203f6c: 93 06 f7 ff  	addi	a3, a4, -1
80203f70: 13 06 11 00  	addi	a2, sp, 1
80203f74: 36 96        	add	a2, a2, a3
80203f76: 1b 05 05 03  	addiw	a0, a0, 48
80203f7a: 23 00 a6 00  	sb	a0, 0(a2)
80203f7e: dd a8        	j	0x80204074 <.LBB580_11+0xf2>
80203f80: 01 47        	li	a4, 0

0000000080203f82 <.LBB580_11>:
80203f82: 97 26 00 00  	auipc	a3, 2
80203f86: 93 86 e6 2a  	addi	a3, a3, 686
80203f8a: 83 b8 06 00  	ld	a7, 0(a3)
80203f8e: 89 66        	lui	a3, 2
80203f90: 9b 83 06 71  	addiw	t2, a3, 1808
80203f94: 85 66        	lui	a3, 1
80203f96: 1b 8e b6 47  	addiw	t3, a3, 1147
80203f9a: 93 02 40 06  	li	t0, 100
80203f9e: 13 03 11 00  	addi	t1, sp, 1
80203fa2: b7 e6 f5 05  	lui	a3, 24414
80203fa6: 1b 8f f6 0f  	addiw	t5, a3, 255
80203faa: aa 87        	mv	a5, a0
80203fac: 33 35 15 03  	mulhu	a0, a0, a7
80203fb0: 2d 81        	srli	a0, a0, 11
80203fb2: 3b 06 75 02  	mulw	a2, a0, t2
80203fb6: 3b 86 c7 40  	subw	a2, a5, a2
80203fba: 93 16 06 03  	slli	a3, a2, 48
80203fbe: c9 92        	srli	a3, a3, 50
80203fc0: b3 86 c6 03  	mul	a3, a3, t3
80203fc4: 93 df 16 01  	srli	t6, a3, 17
80203fc8: c1 82        	srli	a3, a3, 16
80203fca: 13 f4 e6 7f  	andi	s0, a3, 2046
80203fce: bb 86 5f 02  	mulw	a3, t6, t0
80203fd2: 15 9e        	subw	a2, a2, a3
80203fd4: 46 16        	slli	a2, a2, 49
80203fd6: 41 92        	srli	a2, a2, 48
80203fd8: b3 86 8e 00  	add	a3, t4, s0
80203fdc: 33 04 e3 00  	add	s0, t1, a4
80203fe0: 83 cf 06 00  	lbu	t6, 0(a3)
80203fe4: 83 86 16 00  	lb	a3, 1(a3)
80203fe8: 76 96        	add	a2, a2, t4
80203fea: 83 04 16 00  	lb	s1, 1(a2)
80203fee: 03 46 06 00  	lbu	a2, 0(a2)
80203ff2: 23 02 d4 02  	sb	a3, 36(s0)
80203ff6: a3 01 f4 03  	sb	t6, 35(s0)
80203ffa: 23 03 94 02  	sb	s1, 38(s0)
80203ffe: a3 02 c4 02  	sb	a2, 37(s0)
80204002: 71 17        	addi	a4, a4, -4
80204004: e3 63 ff fa  	bltu	t5, a5, 0x80203faa <.LBB580_11+0x28>
80204008: 13 07 77 02  	addi	a4, a4, 39
8020400c: 93 06 30 06  	li	a3, 99
80204010: e3 fb a6 f4  	bgeu	a3, a0, 0x80203f66 <.LBB580_10+0x14>
80204014: 13 16 05 03  	slli	a2, a0, 48
80204018: 49 92        	srli	a2, a2, 50
8020401a: 85 66        	lui	a3, 1
8020401c: 9b 86 b6 47  	addiw	a3, a3, 1147
80204020: 33 06 d6 02  	mul	a2, a2, a3
80204024: 45 82        	srli	a2, a2, 17
80204026: 93 06 40 06  	li	a3, 100
8020402a: bb 06 d6 02  	mulw	a3, a2, a3
8020402e: 15 9d        	subw	a0, a0, a3
80204030: 46 15        	slli	a0, a0, 49
80204032: 41 91        	srli	a0, a0, 48
80204034: 79 17        	addi	a4, a4, -2
80204036: 76 95        	add	a0, a0, t4
80204038: 83 06 15 00  	lb	a3, 1(a0)
8020403c: 03 45 05 00  	lbu	a0, 0(a0)
80204040: 93 07 11 00  	addi	a5, sp, 1
80204044: ba 97        	add	a5, a5, a4
80204046: a3 80 d7 00  	sb	a3, 1(a5)
8020404a: 23 80 a7 00  	sb	a0, 0(a5)
8020404e: 32 85        	mv	a0, a2
80204050: 29 46        	li	a2, 10
80204052: e3 6d c5 f0  	bltu	a0, a2, 0x80203f6c <.LBB580_10+0x1a>
80204056: 06 05        	slli	a0, a0, 1
80204058: 93 06 e7 ff  	addi	a3, a4, -2
8020405c: 76 95        	add	a0, a0, t4
8020405e: 03 06 15 00  	lb	a2, 1(a0)
80204062: 03 45 05 00  	lbu	a0, 0(a0)
80204066: 13 07 11 00  	addi	a4, sp, 1
8020406a: 36 97        	add	a4, a4, a3
8020406c: a3 00 c7 00  	sb	a2, 1(a4)
80204070: 23 00 a7 00  	sb	a0, 0(a4)
80204074: 13 05 11 00  	addi	a0, sp, 1
80204078: 33 07 d5 00  	add	a4, a0, a3
8020407c: 13 05 70 02  	li	a0, 39
80204080: b3 07 d5 40  	sub	a5, a0, a3

0000000080204084 <.LBB580_12>:
80204084: 17 26 00 00  	auipc	a2, 2
80204088: 13 06 c6 80  	addi	a2, a2, -2036
8020408c: 42 85        	mv	a0, a6
8020408e: 81 46        	li	a3, 0
80204090: 97 00 00 00  	auipc	ra, 0
80204094: e7 80 e0 82  	jalr	-2002(ra)
80204098: e2 70        	ld	ra, 56(sp)
8020409a: 42 74        	ld	s0, 48(sp)
8020409c: a2 74        	ld	s1, 40(sp)
8020409e: 21 61        	addi	sp, sp, 64
802040a0: 82 80        	ret

00000000802040a2 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
802040a2: 03 65 05 00  	lwu	a0, 0(a0)
802040a6: 2e 86        	mv	a2, a1
802040a8: 85 45        	li	a1, 1
802040aa: 17 03 00 00  	auipc	t1, 0
802040ae: 67 00 23 e9  	jr	-366(t1)

00000000802040b2 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
802040b2: 08 61        	ld	a0, 0(a0)
802040b4: 2e 86        	mv	a2, a1
802040b6: 85 45        	li	a1, 1
802040b8: 17 03 00 00  	auipc	t1, 0
802040bc: 67 00 43 e8  	jr	-380(t1)

00000000802040c0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
802040c0: 90 65        	ld	a2, 8(a1)
802040c2: 88 61        	ld	a0, 0(a1)
802040c4: 1c 6e        	ld	a5, 24(a2)

00000000802040c6 <.LBB612_1>:
802040c6: 97 25 00 00  	auipc	a1, 2
802040ca: 93 85 25 93  	addi	a1, a1, -1742
802040ce: 15 46        	li	a2, 5
802040d0: 82 87        	jr	a5

00000000802040d2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
802040d2: 10 65        	ld	a2, 8(a0)
802040d4: 08 61        	ld	a0, 0(a0)
802040d6: 1c 6e        	ld	a5, 24(a2)
802040d8: 82 87        	jr	a5

00000000802040da <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
802040da: 14 61        	ld	a3, 0(a0)
802040dc: 10 65        	ld	a2, 8(a0)
802040de: 2e 85        	mv	a0, a1
802040e0: b6 85        	mv	a1, a3
802040e2: 17 03 00 00  	auipc	t1, 0
802040e6: 67 00 03 a5  	jr	-1456(t1)

00000000802040ea <memset>:
802040ea: 17 03 00 00  	auipc	t1, 0
802040ee: 67 00 63 0b  	jr	182(t1)

00000000802040f2 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE>:
802040f2: bd 46        	li	a3, 15
802040f4: 63 fa c6 06  	bgeu	a3, a2, 0x80204168 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x76>
802040f8: bb 06 a0 40  	negw	a3, a0
802040fc: 13 f8 76 00  	andi	a6, a3, 7
80204100: b3 03 05 01  	add	t2, a0, a6
80204104: 63 0c 08 00  	beqz	a6, 0x8020411c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x2a>
80204108: aa 87        	mv	a5, a0
8020410a: ae 86        	mv	a3, a1
8020410c: 03 87 06 00  	lb	a4, 0(a3)
80204110: 23 80 e7 00  	sb	a4, 0(a5)
80204114: 85 07        	addi	a5, a5, 1
80204116: 85 06        	addi	a3, a3, 1
80204118: e3 ea 77 fe  	bltu	a5, t2, 0x8020410c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x1a>
8020411c: b3 88 05 01  	add	a7, a1, a6
80204120: 33 08 06 41  	sub	a6, a2, a6
80204124: 93 72 88 ff  	andi	t0, a6, -8
80204128: 93 f5 78 00  	andi	a1, a7, 7
8020412c: b3 86 53 00  	add	a3, t2, t0
80204130: 9d cd        	beqz	a1, 0x8020416e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x7c>
80204132: 63 58 50 04  	blez	t0, 0x80204182 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204136: 13 93 35 00  	slli	t1, a1, 3
8020413a: 13 f7 88 ff  	andi	a4, a7, -8
8020413e: 10 63        	ld	a2, 0(a4)
80204140: bb 05 60 40  	negw	a1, t1
80204144: 13 fe 85 03  	andi	t3, a1, 56
80204148: 93 07 87 00  	addi	a5, a4, 8
8020414c: 98 63        	ld	a4, 0(a5)
8020414e: 33 56 66 00  	srl	a2, a2, t1
80204152: b3 15 c7 01  	sll	a1, a4, t3
80204156: d1 8d        	or	a1, a1, a2
80204158: 23 b0 b3 00  	sd	a1, 0(t2)
8020415c: a1 03        	addi	t2, t2, 8
8020415e: a1 07        	addi	a5, a5, 8
80204160: 3a 86        	mv	a2, a4
80204162: e3 e5 d3 fe  	bltu	t2, a3, 0x8020414c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x5a>
80204166: 31 a8        	j	0x80204182 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204168: aa 86        	mv	a3, a0
8020416a: 0d e2        	bnez	a2, 0x8020418c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9a>
8020416c: 0d a8        	j	0x8020419e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020416e: 63 5a 50 00  	blez	t0, 0x80204182 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204172: c6 85        	mv	a1, a7
80204174: 90 61        	ld	a2, 0(a1)
80204176: 23 b0 c3 00  	sd	a2, 0(t2)
8020417a: a1 03        	addi	t2, t2, 8
8020417c: a1 05        	addi	a1, a1, 8
8020417e: e3 eb d3 fe  	bltu	t2, a3, 0x80204174 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x82>
80204182: b3 85 58 00  	add	a1, a7, t0
80204186: 13 76 78 00  	andi	a2, a6, 7
8020418a: 11 ca        	beqz	a2, 0x8020419e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020418c: 36 96        	add	a2, a2, a3
8020418e: 03 87 05 00  	lb	a4, 0(a1)
80204192: 23 80 e6 00  	sb	a4, 0(a3)
80204196: 85 06        	addi	a3, a3, 1
80204198: 85 05        	addi	a1, a1, 1
8020419a: e3 ea c6 fe  	bltu	a3, a2, 0x8020418e <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9c>
8020419e: 82 80        	ret

00000000802041a0 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
802041a0: bd 46        	li	a3, 15
802041a2: 63 fa c6 04  	bgeu	a3, a2, 0x802041f6 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
802041a6: bb 06 a0 40  	negw	a3, a0
802041aa: 9d 8a        	andi	a3, a3, 7
802041ac: 33 07 d5 00  	add	a4, a0, a3
802041b0: 99 c6        	beqz	a3, 0x802041be <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
802041b2: aa 87        	mv	a5, a0
802041b4: 23 80 b7 00  	sb	a1, 0(a5)
802041b8: 85 07        	addi	a5, a5, 1
802041ba: e3 ed e7 fe  	bltu	a5, a4, 0x802041b4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
802041be: b3 08 d6 40  	sub	a7, a2, a3
802041c2: 93 f7 88 ff  	andi	a5, a7, -8
802041c6: b3 06 f7 00  	add	a3, a4, a5
802041ca: 63 52 f0 02  	blez	a5, 0x802041ee <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
802041ce: 13 98 85 03  	slli	a6, a1, 56
802041d2: b7 17 10 10  	lui	a5, 65793
802041d6: 92 07        	slli	a5, a5, 4
802041d8: 93 87 07 10  	addi	a5, a5, 256
802041dc: b3 37 f8 02  	mulhu	a5, a6, a5
802041e0: 13 96 07 02  	slli	a2, a5, 32
802041e4: d1 8f        	or	a5, a5, a2
802041e6: 1c e3        	sd	a5, 0(a4)
802041e8: 21 07        	addi	a4, a4, 8
802041ea: e3 6e d7 fe  	bltu	a4, a3, 0x802041e6 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
802041ee: 13 f6 78 00  	andi	a2, a7, 7
802041f2: 01 e6        	bnez	a2, 0x802041fa <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
802041f4: 09 a8        	j	0x80204206 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802041f6: aa 86        	mv	a3, a0
802041f8: 19 c6        	beqz	a2, 0x80204206 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802041fa: 36 96        	add	a2, a2, a3
802041fc: 23 80 b6 00  	sb	a1, 0(a3)
80204200: 85 06        	addi	a3, a3, 1
80204202: e3 ed c6 fe  	bltu	a3, a2, 0x802041fc <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80204206: 82 80        	ret

0000000080204208 <memcpy>:
80204208: 17 03 00 00  	auipc	t1, 0
8020420c: 67 00 a3 ee  	jr	-278(t1)
