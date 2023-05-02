
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 71 01 00  	auipc	sp, 23
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 30 00 00  	auipc	ra, 3
8020000c: e7 80 00 a0  	jalr	-1536(ra)
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
80201174: e7 80 20 24  	jalr	578(ra)
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

0000000080202000 <_ZN4spin4once13Once$LT$T$GT$9call_once17h0430b93924115fb8E>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80202000: 13 01 01 81  	addi	sp, sp, -2032
80202004: 23 34 11 7e  	sd	ra, 2024(sp)
80202008: 23 30 81 7e  	sd	s0, 2016(sp)
8020200c: 23 3c 91 7c  	sd	s1, 2008(sp)
80202010: 23 38 21 7d  	sd	s2, 2000(sp)
80202014: 23 34 31 7d  	sd	s3, 1992(sp)
80202018: 13 04 01 7f  	addi	s0, sp, 2032
8020201c: 85 65        	lui	a1, 1
8020201e: 9b 85 05 06  	addiw	a1, a1, 96
80202022: 33 01 b1 40  	sub	sp, sp, a1
80202026: aa 84        	mv	s1, a0
80202028: 0f 00 30 03  	fence	rw, rw
8020202c: 08 61        	ld	a0, 0(a0)
8020202e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202032: 71 e5        	bnez	a0, 0x802020fe <.LBB0_13+0x96>
80202034: 85 45        	li	a1, 1
80202036: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
8020203a: 01 e5        	bnez	a0, 0x80202042 <_ZN4spin4once13Once$LT$T$GT$9call_once17h0430b93924115fb8E+0x42>
8020203c: 2f b6 b4 1e  	sc.d.aqrl	a2, a1, (s1)
80202040: 7d fa        	bnez	a2, 0x80202036 <_ZN4spin4once13Once$LT$T$GT$9call_once17h0430b93924115fb8E+0x36>
;             if status == INCOMPLETE { // We init
80202042: 55 ed        	bnez	a0, 0x802020fe <.LBB0_13+0x96>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202044: f9 75        	lui	a1, 1048574
80202046: 9b 85 85 7b  	addiw	a1, a1, 1976
8020204a: a2 95        	add	a1, a1, s0
8020204c: 84 e1        	sd	s1, 0(a1)
8020204e: fd 75        	lui	a1, 1048575
80202050: 9b 85 85 3c  	addiw	a1, a1, 968
80202054: 33 08 b4 00  	add	a6, s0, a1
;         Self {
80202058: 13 06 f8 7f  	addi	a2, a6, 2047
8020205c: 93 05 16 40  	addi	a1, a2, 1025
80202060: a3 30 06 40  	sd	zero, 1025(a2)
80202064: 13 06 00 03  	li	a2, 48

0000000080202068 <.LBB0_13>:
80202068: 97 36 00 00  	auipc	a3, 3
8020206c: 93 86 06 06  	addi	a3, a3, 96
80202070: 11 47        	li	a4, 4
80202072: 93 07 00 04  	li	a5, 64
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80202076: 33 05 c5 02  	mul	a0, a0, a2
8020207a: 42 95        	add	a0, a0, a6
8020207c: 14 e1        	sd	a3, 0(a0)
8020207e: 18 e5        	sd	a4, 8(a0)
80202080: 23 38 05 00  	sd	zero, 16(a0)
80202084: 23 0c 05 00  	sb	zero, 24(a0)
80202088: 23 30 05 02  	sd	zero, 32(a0)
8020208c: 23 04 05 02  	sb	zero, 40(a0)
80202090: 88 61        	ld	a0, 0(a1)
80202092: 05 05        	addi	a0, a0, 1
80202094: 88 e1        	sd	a0, 0(a1)
80202096: e3 60 f5 fe  	bltu	a0, a5, 0x80202076 <.LBB0_13+0xe>
8020209a: 05 65        	lui	a0, 1
8020209c: 9b 09 05 c0  	addiw	s3, a0, -1024
802020a0: 79 75        	lui	a0, 1048574
802020a2: 1b 05 85 7c  	addiw	a0, a0, 1992
802020a6: 22 95        	add	a0, a0, s0
802020a8: fd 75        	lui	a1, 1048575
802020aa: 9b 85 85 3c  	addiw	a1, a1, 968
802020ae: a2 95        	add	a1, a1, s0
802020b0: 4e 86        	mv	a2, s3
802020b2: 97 20 00 00  	auipc	ra, 2
802020b6: e7 80 40 05  	jalr	84(ra)
802020ba: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
802020bc: 88 e4        	sd	a0, 8(s1)
802020be: 13 89 04 01  	addi	s2, s1, 16
802020c2: 79 75        	lui	a0, 1048574
802020c4: 1b 05 85 7c  	addiw	a0, a0, 1992
802020c8: b3 05 a4 00  	add	a1, s0, a0
802020cc: 4a 85        	mv	a0, s2
802020ce: 4e 86        	mv	a2, s3
802020d0: 97 20 00 00  	auipc	ra, 2
802020d4: e7 80 60 03  	jalr	54(ra)
;                 finish.panicked = false;
802020d8: 79 75        	lui	a0, 1048574
802020da: 1b 05 05 7c  	addiw	a0, a0, 1984
802020de: 22 95        	add	a0, a0, s0
802020e0: 23 00 05 00  	sb	zero, 0(a0)
802020e4: 0f 00 10 03  	fence	rw, w
802020e8: 09 45        	li	a0, 2
802020ea: 88 e0        	sd	a0, 0(s1)
802020ec: 79 75        	lui	a0, 1048574
802020ee: 1b 05 85 7b  	addiw	a0, a0, 1976
802020f2: 22 95        	add	a0, a0, s0
802020f4: 97 10 00 00  	auipc	ra, 1
802020f8: e7 80 a0 3e  	jalr	1002(ra)
802020fc: 15 a0        	j	0x80202120 <.LBB0_13+0xb8>
802020fe: 85 45        	li	a1, 1
;             match status {
80202100: 63 1b b5 00  	bne	a0, a1, 0x80202116 <.LBB0_13+0xae>
80202104: 0f 00 00 01  	fence	w, 0
80202108: 0f 00 30 03  	fence	rw, rw
8020210c: 88 60        	ld	a0, 0(s1)
8020210e: 0f 00 30 02  	fence	r, rw
;             match status {
80202112: e3 09 b5 fe  	beq	a0, a1, 0x80202104 <.LBB0_13+0x9c>
80202116: 89 45        	li	a1, 2
;             match status {
80202118: 63 16 b5 02  	bne	a0, a1, 0x80202144 <.LBB0_13+0xdc>
8020211c: 13 89 04 01  	addi	s2, s1, 16
;     }
80202120: 4a 85        	mv	a0, s2
80202122: 85 65        	lui	a1, 1
80202124: 9b 85 05 06  	addiw	a1, a1, 96
80202128: 2e 91        	add	sp, sp, a1
8020212a: 83 30 81 7e  	ld	ra, 2024(sp)
8020212e: 03 34 01 7e  	ld	s0, 2016(sp)
80202132: 83 34 81 7d  	ld	s1, 2008(sp)
80202136: 03 39 01 7d  	ld	s2, 2000(sp)
8020213a: 83 39 81 7c  	ld	s3, 1992(sp)
8020213e: 13 01 01 7f  	addi	sp, sp, 2032
80202142: 82 80        	ret
;             match status {
80202144: 05 e1        	bnez	a0, 0x80202164 <.LBB0_16>

0000000080202146 <.LBB0_14>:
;                 INCOMPLETE => unreachable!(),
80202146: 17 35 00 00  	auipc	a0, 3
8020214a: 13 05 25 f4  	addi	a0, a0, -190

000000008020214e <.LBB0_15>:
8020214e: 17 36 00 00  	auipc	a2, 3
80202152: 13 06 26 f6  	addi	a2, a2, -158
80202156: 93 05 80 02  	li	a1, 40
8020215a: 97 10 00 00  	auipc	ra, 1
8020215e: e7 80 c0 3e  	jalr	1004(ra)
80202162: 00 00        	unimp	

0000000080202164 <.LBB0_16>:
;                 PANICKED => panic!("Once has panicked"),
80202164: 17 35 00 00  	auipc	a0, 3
80202168: 13 05 c5 e9  	addi	a0, a0, -356

000000008020216c <.LBB0_17>:
8020216c: 17 36 00 00  	auipc	a2, 3
80202170: 13 06 46 f0  	addi	a2, a2, -252
80202174: c5 45        	li	a1, 17
80202176: 97 10 00 00  	auipc	ra, 1
8020217a: e7 80 00 3d  	jalr	976(ra)
8020217e: 00 00        	unimp	

0000000080202180 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
80202180: 35 71        	addi	sp, sp, -160
;         if size == 0 {
80202182: 06 ed        	sd	ra, 152(sp)
80202184: 22 e9        	sd	s0, 144(sp)
80202186: 26 e5        	sd	s1, 136(sp)
80202188: 4a e1        	sd	s2, 128(sp)
8020218a: ce fc        	sd	s3, 120(sp)
8020218c: d2 f8        	sd	s4, 112(sp)
8020218e: d6 f4        	sd	s5, 104(sp)
80202190: da f0        	sd	s6, 96(sp)
80202192: de ec        	sd	s7, 88(sp)
80202194: e2 e8        	sd	s8, 80(sp)
80202196: e6 e4        	sd	s9, 72(sp)
80202198: ea e0        	sd	s10, 64(sp)
8020219a: 6e fc        	sd	s11, 56(sp)
8020219c: 00 11        	addi	s0, sp, 160
8020219e: 63 04 06 18  	beqz	a2, 0x80202326 <.LBB2_26>
802021a2: 36 8a        	mv	s4, a3
802021a4: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
802021a6: b3 fa d5 00  	and	s5, a1, a3
;         let last = pgrounddown(va + size - 1);
802021aa: 2e 96        	add	a2, a2, a1
802021ac: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
802021ae: 33 7b d6 00  	and	s6, a2, a3
802021b2: 05 46        	li	a2, 1
;         while a <= last {
802021b4: 63 6d 5b 0d  	bltu	s6, s5, 0x8020228e <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10e>
802021b8: 3a 89        	mv	s2, a4
802021ba: 93 db 26 00  	srli	s7, a3, 2
802021be: 03 3c 05 00  	ld	s8, 0(a0)
;         while a <= last {
802021c2: 93 dc c5 00  	srli	s9, a1, 12
802021c6: 05 6d        	lui	s10, 1
802021c8: 9b 0d 8d ff  	addiw	s11, s10, -8
;         if va >= MAXVA {
802021cc: 13 d5 6a 02  	srli	a0, s5, 38
802021d0: 79 ed        	bnez	a0, 0x802022ae <.LBB2_20>
;             pte = &mut pagetable.data[px(level, va)];
802021d2: 13 d5 ba 01  	srli	a0, s5, 27
802021d6: 61 99        	andi	a0, a0, -8
802021d8: b3 09 ac 00  	add	s3, s8, a0
;             if (*pte & PTE_V) != 0 {
802021dc: 03 b5 09 00  	ld	a0, 0(s3)
802021e0: 93 75 15 00  	andi	a1, a0, 1
802021e4: 95 e5        	bnez	a1, 0x80202210 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x90>
;                 let pa = kalloc();
802021e6: 97 00 00 00  	auipc	ra, 0
802021ea: e7 80 80 70  	jalr	1800(ra)
;                 if pa == 0 {
802021ee: 59 cd        	beqz	a0, 0x8020228c <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10c>
802021f0: aa 84        	mv	s1, a0
802021f2: 05 66        	lui	a2, 1
802021f4: 81 45        	li	a1, 0
802021f6: 97 20 00 00  	auipc	ra, 2
802021fa: e7 80 20 df  	jalr	-526(ra)
;     (pa >> 12) << 10
802021fe: 13 d5 24 00  	srli	a0, s1, 2
80202202: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
80202206: 13 65 15 00  	ori	a0, a0, 1
8020220a: 23 b0 a9 00  	sd	a0, 0(s3)
8020220e: 21 a0        	j	0x80202216 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x96>
;     (pte >> 10) << 12
80202210: 29 81        	srli	a0, a0, 10
80202212: 93 14 c5 00  	slli	s1, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
80202216: 13 d5 2a 01  	srli	a0, s5, 18
8020221a: 33 75 b5 01  	and	a0, a0, s11
8020221e: b3 89 a4 00  	add	s3, s1, a0
;             if (*pte & PTE_V) != 0 {
80202222: 03 b5 09 00  	ld	a0, 0(s3)
80202226: 93 75 15 00  	andi	a1, a0, 1
8020222a: 95 e5        	bnez	a1, 0x80202256 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0xd6>
;                 let pa = kalloc();
8020222c: 97 00 00 00  	auipc	ra, 0
80202230: e7 80 20 6c  	jalr	1730(ra)
;                 if pa == 0 {
80202234: 21 cd        	beqz	a0, 0x8020228c <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10c>
80202236: aa 84        	mv	s1, a0
80202238: 05 66        	lui	a2, 1
8020223a: 81 45        	li	a1, 0
8020223c: 97 20 00 00  	auipc	ra, 2
80202240: e7 80 c0 da  	jalr	-596(ra)
;     (pa >> 12) << 10
80202244: 13 d5 24 00  	srli	a0, s1, 2
80202248: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
8020224c: 13 65 15 00  	ori	a0, a0, 1
80202250: 23 b0 a9 00  	sd	a0, 0(s3)
80202254: 21 a0        	j	0x8020225c <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0xdc>
;     (pte >> 10) << 12
80202256: 29 81        	srli	a0, a0, 10
80202258: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
8020225c: 13 f5 fc 1f  	andi	a0, s9, 511
;         &mut pagetable.data[px(0, va)]
80202260: 0e 05        	slli	a0, a0, 3
80202262: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
80202264: 83 45 05 00  	lbu	a1, 0(a0)
80202268: 85 89        	andi	a1, a1, 1
8020226a: c1 e1        	bnez	a1, 0x802022ea <.LBB2_23>
;     (pa >> 12) << 10
8020226c: 93 55 2a 00  	srli	a1, s4, 2
80202270: b3 f5 75 01  	and	a1, a1, s7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80202274: b3 e5 25 01  	or	a1, a1, s2
80202278: 93 e5 15 00  	ori	a1, a1, 1
8020227c: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
8020227e: ea 9a        	add	s5, s5, s10
;             pa += PGSIZE;
80202280: 6a 9a        	add	s4, s4, s10
;         while a <= last {
80202282: 85 0c        	addi	s9, s9, 1
80202284: e3 74 5b f5  	bgeu	s6, s5, 0x802021cc <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x4c>
80202288: 05 46        	li	a2, 1
8020228a: 11 a0        	j	0x8020228e <_ZN6kernel6memory9pagetable10PagetableT8mappages17hc86f5c2f00a04267E+0x10e>
8020228c: 01 46        	li	a2, 0
;     }
8020228e: 32 85        	mv	a0, a2
80202290: ea 60        	ld	ra, 152(sp)
80202292: 4a 64        	ld	s0, 144(sp)
80202294: aa 64        	ld	s1, 136(sp)
80202296: 0a 69        	ld	s2, 128(sp)
80202298: e6 79        	ld	s3, 120(sp)
8020229a: 46 7a        	ld	s4, 112(sp)
8020229c: a6 7a        	ld	s5, 104(sp)
8020229e: 06 7b        	ld	s6, 96(sp)
802022a0: e6 6b        	ld	s7, 88(sp)
802022a2: 46 6c        	ld	s8, 80(sp)
802022a4: a6 6c        	ld	s9, 72(sp)
802022a6: 06 6d        	ld	s10, 64(sp)
802022a8: e2 7d        	ld	s11, 56(sp)
802022aa: 0d 61        	addi	sp, sp, 160
802022ac: 82 80        	ret

00000000802022ae <.LBB2_20>:
802022ae: 17 35 00 00  	auipc	a0, 3
802022b2: 13 05 a5 e2  	addi	a0, a0, -470
802022b6: 23 3c a4 f6  	sd	a0, -136(s0)
802022ba: 05 45        	li	a0, 1
802022bc: 23 30 a4 f8  	sd	a0, -128(s0)
802022c0: 23 34 04 f6  	sd	zero, -152(s0)

00000000802022c4 <.LBB2_21>:
802022c4: 17 35 00 00  	auipc	a0, 3
802022c8: 13 05 45 e0  	addi	a0, a0, -508
802022cc: 23 34 a4 f8  	sd	a0, -120(s0)
802022d0: 23 38 04 f8  	sd	zero, -112(s0)

00000000802022d4 <.LBB2_22>:
;             panic!("walk");
802022d4: 97 35 00 00  	auipc	a1, 3
802022d8: 93 85 c5 e2  	addi	a1, a1, -468
802022dc: 13 05 84 f6  	addi	a0, s0, -152
802022e0: 97 10 00 00  	auipc	ra, 1
802022e4: e7 80 80 23  	jalr	568(ra)
802022e8: 00 00        	unimp	

00000000802022ea <.LBB2_23>:
802022ea: 17 35 00 00  	auipc	a0, 3
802022ee: 13 05 e5 e3  	addi	a0, a0, -450
802022f2: 23 3c a4 f6  	sd	a0, -136(s0)
802022f6: 05 45        	li	a0, 1
802022f8: 23 30 a4 f8  	sd	a0, -128(s0)
802022fc: 23 34 04 f6  	sd	zero, -152(s0)

0000000080202300 <.LBB2_24>:
80202300: 17 35 00 00  	auipc	a0, 3
80202304: 13 05 85 dc  	addi	a0, a0, -568
80202308: 23 34 a4 f8  	sd	a0, -120(s0)
8020230c: 23 38 04 f8  	sd	zero, -112(s0)

0000000080202310 <.LBB2_25>:
;                 panic!("mappages: remap");
80202310: 97 35 00 00  	auipc	a1, 3
80202314: 93 85 85 e2  	addi	a1, a1, -472
80202318: 13 05 84 f6  	addi	a0, s0, -152
8020231c: 97 10 00 00  	auipc	ra, 1
80202320: e7 80 c0 1f  	jalr	508(ra)
80202324: 00 00        	unimp	

0000000080202326 <.LBB2_26>:
80202326: 17 35 00 00  	auipc	a0, 3
8020232a: 13 05 a5 e3  	addi	a0, a0, -454
8020232e: 23 3c a4 f6  	sd	a0, -136(s0)
80202332: 05 45        	li	a0, 1
80202334: 23 30 a4 f8  	sd	a0, -128(s0)
80202338: 23 34 04 f6  	sd	zero, -152(s0)

000000008020233c <.LBB2_27>:
8020233c: 17 35 00 00  	auipc	a0, 3
80202340: 13 05 c5 d8  	addi	a0, a0, -628
80202344: 23 34 a4 f8  	sd	a0, -120(s0)
80202348: 23 38 04 f8  	sd	zero, -112(s0)

000000008020234c <.LBB2_28>:
;             panic!("mappages: size");
8020234c: 97 35 00 00  	auipc	a1, 3
80202350: 93 85 45 e2  	addi	a1, a1, -476
80202354: 13 05 84 f6  	addi	a0, s0, -152
80202358: 97 10 00 00  	auipc	ra, 1
8020235c: e7 80 00 1c  	jalr	448(ra)
80202360: 00 00        	unimp	

0000000080202362 <_ZN6kernel3sbi8shutdown17ha1ef8f97a31cd2d1E>:
; pub fn shutdown() -> ! {
80202362: 39 71        	addi	sp, sp, -64
;         asm!(
80202364: 06 fc        	sd	ra, 56(sp)
80202366: 22 f8        	sd	s0, 48(sp)
80202368: 80 00        	addi	s0, sp, 64
8020236a: a1 48        	li	a7, 8
8020236c: 01 45        	li	a0, 0
8020236e: 81 45        	li	a1, 0
80202370: 01 46        	li	a2, 0
80202372: 73 00 00 00  	ecall	

0000000080202376 <.LBB4_1>:
80202376: 17 35 00 00  	auipc	a0, 3
8020237a: 13 05 a5 e7  	addi	a0, a0, -390
8020237e: 23 38 a4 fc  	sd	a0, -48(s0)
80202382: 05 45        	li	a0, 1
80202384: 23 3c a4 fc  	sd	a0, -40(s0)
80202388: 23 30 04 fc  	sd	zero, -64(s0)

000000008020238c <.LBB4_2>:
8020238c: 17 35 00 00  	auipc	a0, 3
80202390: 13 05 c5 e4  	addi	a0, a0, -436
80202394: 23 30 a4 fe  	sd	a0, -32(s0)
80202398: 23 34 04 fe  	sd	zero, -24(s0)

000000008020239c <.LBB4_3>:
;     panic!("It should shutdown!");
8020239c: 97 35 00 00  	auipc	a1, 3
802023a0: 93 85 45 e7  	addi	a1, a1, -396
802023a4: 13 05 04 fc  	addi	a0, s0, -64
802023a8: 97 10 00 00  	auipc	ra, 1
802023ac: e7 80 00 17  	jalr	368(ra)
802023b0: 00 00        	unimp	

00000000802023b2 <usertrapret>:
; pub fn kerneltrap() {}
802023b2: 41 11        	addi	sp, sp, -16
802023b4: 06 e4        	sd	ra, 8(sp)
802023b6: 22 e0        	sd	s0, 0(sp)
802023b8: 00 08        	addi	s0, sp, 16
802023ba: a2 60        	ld	ra, 8(sp)
802023bc: 02 64        	ld	s0, 0(sp)
802023be: 41 01        	addi	sp, sp, 16
802023c0: 82 80        	ret

00000000802023c2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01404a8176509c97E>:
802023c2: 41 11        	addi	sp, sp, -16
802023c4: 06 e4        	sd	ra, 8(sp)
802023c6: 22 e0        	sd	s0, 0(sp)
802023c8: 00 08        	addi	s0, sp, 16
802023ca: 10 61        	ld	a2, 0(a0)
802023cc: 14 65        	ld	a3, 8(a0)
802023ce: 2e 87        	mv	a4, a1
802023d0: 32 85        	mv	a0, a2
802023d2: b6 85        	mv	a1, a3
802023d4: 3a 86        	mv	a2, a4
802023d6: a2 60        	ld	ra, 8(sp)
802023d8: 02 64        	ld	s0, 0(sp)
802023da: 41 01        	addi	sp, sp, 16
802023dc: 17 23 00 00  	auipc	t1, 2
802023e0: 67 00 83 8a  	jr	-1880(t1)

00000000802023e4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h24079b98717b7d77E>:
802023e4: 41 11        	addi	sp, sp, -16
802023e6: 06 e4        	sd	ra, 8(sp)
802023e8: 22 e0        	sd	s0, 0(sp)
802023ea: 00 08        	addi	s0, sp, 16
802023ec: 08 61        	ld	a0, 0(a0)
802023ee: a2 60        	ld	ra, 8(sp)
802023f0: 02 64        	ld	s0, 0(sp)
802023f2: 41 01        	addi	sp, sp, 16
802023f4: 17 13 00 00  	auipc	t1, 1
802023f8: 67 00 a3 20  	jr	522(t1)

00000000802023fc <_ZN6kernel4trap12trapinithart17he6cca289112bcdcaE>:
; pub fn trapinithart() {
802023fc: 5d 71        	addi	sp, sp, -80
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
802023fe: 86 e4        	sd	ra, 72(sp)
80202400: a2 e0        	sd	s0, 64(sp)
80202402: 80 08        	addi	s0, sp, 80

0000000080202404 <.LBB5_3>:
80202404: 17 f5 ff ff  	auipc	a0, 1048575
80202408: 13 05 c5 d2  	addi	a0, a0, -724
8020240c: 73 10 55 10  	csrw	stvec, a0
80202410: 13 05 84 fe  	addi	a0, s0, -24
80202414: 23 38 a4 fa  	sd	a0, -80(s0)
80202418: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020241c <.LBB5_4>:
8020241c: 17 35 00 00  	auipc	a0, 3
80202420: 13 05 45 03  	addi	a0, a0, 52
80202424: 23 34 a4 fc  	sd	a0, -56(s0)
80202428: 05 45        	li	a0, 1
8020242a: 23 38 a4 fc  	sd	a0, -48(s0)

000000008020242e <.LBB5_5>:
8020242e: 17 35 00 00  	auipc	a0, 3
80202432: 13 05 25 fe  	addi	a0, a0, -30
80202436: 23 3c a4 fc  	sd	a0, -40(s0)
8020243a: 23 30 04 fe  	sd	zero, -32(s0)

000000008020243e <.LBB5_6>:
8020243e: 97 35 00 00  	auipc	a1, 3
80202442: 93 85 25 2d  	addi	a1, a1, 722
80202446: 13 05 04 fb  	addi	a0, s0, -80
8020244a: 13 06 84 fb  	addi	a2, s0, -72
8020244e: 97 10 00 00  	auipc	ra, 1
80202452: e7 80 20 1e  	jalr	482(ra)
80202456: 09 e5        	bnez	a0, 0x80202460 <.LBB5_7>
; }
80202458: a6 60        	ld	ra, 72(sp)
8020245a: 06 64        	ld	s0, 64(sp)
8020245c: 61 61        	addi	sp, sp, 80
8020245e: 82 80        	ret

0000000080202460 <.LBB5_7>:
80202460: 17 35 00 00  	auipc	a0, 3
80202464: 13 05 05 2e  	addi	a0, a0, 736

0000000080202468 <.LBB5_8>:
80202468: 97 36 00 00  	auipc	a3, 3
8020246c: 93 86 86 30  	addi	a3, a3, 776

0000000080202470 <.LBB5_9>:
80202470: 17 37 00 00  	auipc	a4, 3
80202474: 13 07 07 33  	addi	a4, a4, 816
80202478: 93 05 b0 02  	li	a1, 43
8020247c: 13 06 84 fe  	addi	a2, s0, -24
80202480: 97 10 00 00  	auipc	ra, 1
80202484: e7 80 20 13  	jalr	306(ra)
80202488: 00 00        	unimp	

000000008020248a <_ZN6kernel4lock8spinlock8Spinlock7acquire17hadc8fde615a0162eE>:
;     pub fn acquire(&mut self) {
8020248a: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
8020248c: 06 fc        	sd	ra, 56(sp)
8020248e: 22 f8        	sd	s0, 48(sp)
80202490: 80 00        	addi	s0, sp, 64
80202492: 73 26 00 10  	csrr	a2, sstatus
80202496: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80202498: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020249c: 92 86        	mv	a3, tp
8020249e: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802024a0: 63 f2 b6 0a  	bgeu	a3, a1, 0x80202544 <.LBB1_12>
802024a4: e1 45        	li	a1, 24
;     if mc.noff == 0 {
802024a6: b3 86 b6 02  	mul	a3, a3, a1

00000000802024aa <.LBB1_11>:
802024aa: 17 58 01 00  	auipc	a6, 21
802024ae: 13 08 68 b5  	addi	a6, a6, -1194
802024b2: b3 07 d8 00  	add	a5, a6, a3
802024b6: 98 67        	ld	a4, 8(a5)
802024b8: 93 86 87 00  	addi	a3, a5, 8
802024bc: 09 e7        	bnez	a4, 0x802024c6 <.LBB1_11+0x1c>
;         mc.intena = old;
802024be: 7a 16        	slli	a2, a2, 62
802024c0: 7d 92        	srli	a2, a2, 63
802024c2: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
802024c6: 13 06 17 00  	addi	a2, a4, 1
802024ca: 90 e2        	sd	a2, 0(a3)
802024cc: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802024d0: 93 08 85 01  	addi	a7, a0, 24
802024d4: 81 ce        	beqz	a3, 0x802024ec <.LBB1_11+0x42>
802024d6: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802024d8: 92 86        	mv	a3, tp
802024da: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
802024dc: 63 f4 f6 06  	bgeu	a3, a5, 0x80202544 <.LBB1_12>
802024e0: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
802024e2: b3 86 f6 02  	mul	a3, a3, a5
802024e6: c2 96        	add	a3, a3, a6
;         if self.holding() {
802024e8: 63 09 d7 06  	beq	a4, a3, 0x8020255a <.LBB1_13>
802024ec: 93 f6 c8 ff  	andi	a3, a7, -4
802024f0: 1b 97 38 00  	slliw	a4, a7, 3
802024f4: 93 07 f0 0f  	li	a5, 255
802024f8: bb 97 e7 00  	sllw	a5, a5, a4
802024fc: 85 45        	li	a1, 1
802024fe: bb 95 e5 00  	sllw	a1, a1, a4
80202502: 82 15        	slli	a1, a1, 32
80202504: 81 91        	srli	a1, a1, 32
80202506: 2f a7 06 14  	lr.w.aq	a4, (a3)
8020250a: 33 76 f7 00  	and	a2, a4, a5
8020250e: 01 ea        	bnez	a2, 0x8020251e <.LBB1_11+0x74>
80202510: 33 46 b7 00  	xor	a2, a4, a1
80202514: 7d 8e        	and	a2, a2, a5
80202516: 39 8e        	xor	a2, a2, a4
80202518: 2f a6 c6 18  	sc.w	a2, a2, (a3)
8020251c: 6d f6        	bnez	a2, 0x80202506 <.LBB1_11+0x5c>
8020251e: b3 75 f7 00  	and	a1, a4, a5
80202522: 81 25        	sext.w	a1, a1
;         while self
80202524: e1 f5        	bnez	a1, 0x802024ec <.LBB1_11+0x42>
80202526: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020252a: 92 86        	mv	a3, tp
8020252c: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
8020252e: 63 fb b6 00  	bgeu	a3, a1, 0x80202544 <.LBB1_12>
80202532: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
80202534: b3 85 b6 02  	mul	a1, a3, a1
80202538: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
8020253a: 0c e9        	sd	a1, 16(a0)
;     }
8020253c: e2 70        	ld	ra, 56(sp)
8020253e: 42 74        	ld	s0, 48(sp)
80202540: 21 61        	addi	sp, sp, 64
80202542: 82 80        	ret

0000000080202544 <.LBB1_12>:
80202544: 17 36 00 00  	auipc	a2, 3
80202548: 13 06 c6 cf  	addi	a2, a2, -772
8020254c: a1 45        	li	a1, 8
8020254e: 36 85        	mv	a0, a3
80202550: 97 10 00 00  	auipc	ra, 1
80202554: e7 80 20 02  	jalr	34(ra)
80202558: 00 00        	unimp	

000000008020255a <.LBB1_13>:
8020255a: 17 35 00 00  	auipc	a0, 3
8020255e: 13 05 e5 f0  	addi	a0, a0, -242
80202562: 23 38 a4 fc  	sd	a0, -48(s0)
80202566: 05 45        	li	a0, 1
80202568: 23 3c a4 fc  	sd	a0, -40(s0)
8020256c: 23 30 04 fc  	sd	zero, -64(s0)

0000000080202570 <.LBB1_14>:
80202570: 17 35 00 00  	auipc	a0, 3
80202574: 13 05 05 ef  	addi	a0, a0, -272
80202578: 23 30 a4 fe  	sd	a0, -32(s0)
8020257c: 23 34 04 fe  	sd	zero, -24(s0)

0000000080202580 <.LBB1_15>:
;             panic!("acquire");
80202580: 97 35 00 00  	auipc	a1, 3
80202584: 93 85 05 f1  	addi	a1, a1, -240
80202588: 13 05 04 fc  	addi	a0, s0, -64
8020258c: 97 10 00 00  	auipc	ra, 1
80202590: e7 80 c0 f8  	jalr	-116(ra)
80202594: 00 00        	unimp	

0000000080202596 <_ZN6kernel4lock8spinlock8Spinlock7release17hd3ee99541839ef26E>:
;     pub fn release(&mut self) {
80202596: 39 71        	addi	sp, sp, -64
80202598: 06 fc        	sd	ra, 56(sp)
8020259a: 22 f8        	sd	s0, 48(sp)
8020259c: 80 00        	addi	s0, sp, 64
8020259e: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802025a2: dd c1        	beqz	a1, 0x80202648 <.LBB2_19>
802025a4: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802025a6: 92 86        	mv	a3, tp
802025a8: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802025aa: 63 fa b6 06  	bgeu	a3, a1, 0x8020261e <.LBB2_17>
802025ae: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802025b0: b3 86 b6 02  	mul	a3, a3, a1

00000000802025b4 <.LBB2_16>:
802025b4: 97 55 01 00  	auipc	a1, 21
802025b8: 93 85 c5 a4  	addi	a1, a1, -1460
802025bc: ae 96        	add	a3, a3, a1
;         if !self.holding() {
802025be: 63 15 d6 08  	bne	a2, a3, 0x80202648 <.LBB2_19>
;         self.cpu = null_mut();
802025c2: 23 38 05 00  	sd	zero, 16(a0)
802025c6: 0f 00 30 03  	fence	rw, rw
802025ca: 0f 00 10 03  	fence	rw, w
802025ce: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802025d2: 12 85        	mv	a0, tp
802025d4: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
802025d6: 63 7f c5 04  	bgeu	a0, a2, 0x80202634 <.LBB2_18>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802025da: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
802025de: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
802025e0: 41 ee        	bnez	a2, 0x80202678 <.LBB2_22>
802025e2: 61 46        	li	a2, 24
;     if mc.noff < 1 {
802025e4: 33 06 c5 02  	mul	a2, a0, a2
802025e8: b3 86 c5 00  	add	a3, a1, a2
802025ec: 90 66        	ld	a2, 8(a3)
802025ee: 63 5d c0 0a  	blez	a2, 0x802026a8 <.LBB2_25>
802025f2: a1 06        	addi	a3, a3, 8
;     mc.noff -= 1;
802025f4: 7d 16        	addi	a2, a2, -1
802025f6: 90 e2        	sd	a2, 0(a3)
;     if mc.noff == 0 && mc.intena {
802025f8: 09 c6        	beqz	a2, 0x80202602 <.LBB2_16+0x4e>
;     }
802025fa: e2 70        	ld	ra, 56(sp)
802025fc: 42 74        	ld	s0, 48(sp)
802025fe: 21 61        	addi	sp, sp, 64
80202600: 82 80        	ret
80202602: 61 46        	li	a2, 24
;     if mc.noff == 0 && mc.intena {
80202604: 33 05 c5 02  	mul	a0, a0, a2
80202608: 2e 95        	add	a0, a0, a1
8020260a: 03 45 05 01  	lbu	a0, 16(a0)
8020260e: 75 d5        	beqz	a0, 0x802025fa <.LBB2_16+0x46>
80202610: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
80202612: 73 20 05 10  	csrs	sstatus, a0
;     }
80202616: e2 70        	ld	ra, 56(sp)
80202618: 42 74        	ld	s0, 48(sp)
8020261a: 21 61        	addi	sp, sp, 64
8020261c: 82 80        	ret

000000008020261e <.LBB2_17>:
;     unsafe { &mut CPUS[id] }
8020261e: 17 36 00 00  	auipc	a2, 3
80202622: 13 06 26 c2  	addi	a2, a2, -990
80202626: a1 45        	li	a1, 8
80202628: 36 85        	mv	a0, a3
8020262a: 97 10 00 00  	auipc	ra, 1
8020262e: e7 80 80 f4  	jalr	-184(ra)
80202632: 00 00        	unimp	

0000000080202634 <.LBB2_18>:
80202634: 17 36 00 00  	auipc	a2, 3
80202638: 13 06 c6 c0  	addi	a2, a2, -1012
8020263c: a1 45        	li	a1, 8
8020263e: 97 10 00 00  	auipc	ra, 1
80202642: e7 80 40 f3  	jalr	-204(ra)
80202646: 00 00        	unimp	

0000000080202648 <.LBB2_19>:
80202648: 17 35 00 00  	auipc	a0, 3
8020264c: 13 05 85 e6  	addi	a0, a0, -408
80202650: 23 38 a4 fc  	sd	a0, -48(s0)
80202654: 05 45        	li	a0, 1
80202656: 23 3c a4 fc  	sd	a0, -40(s0)
8020265a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020265e <.LBB2_20>:
8020265e: 17 35 00 00  	auipc	a0, 3
80202662: 13 05 25 e0  	addi	a0, a0, -510
80202666: 23 30 a4 fe  	sd	a0, -32(s0)
8020266a: 23 34 04 fe  	sd	zero, -24(s0)

000000008020266e <.LBB2_21>:
;             panic!("release");
8020266e: 97 35 00 00  	auipc	a1, 3
80202672: 93 85 25 e5  	addi	a1, a1, -430
80202676: 85 a0        	j	0x802026d6 <.LBB2_27+0x8>

0000000080202678 <.LBB2_22>:
80202678: 17 35 00 00  	auipc	a0, 3
8020267c: 13 05 85 e7  	addi	a0, a0, -392
80202680: 23 38 a4 fc  	sd	a0, -48(s0)
80202684: 05 45        	li	a0, 1
80202686: 23 3c a4 fc  	sd	a0, -40(s0)
8020268a: 23 30 04 fc  	sd	zero, -64(s0)

000000008020268e <.LBB2_23>:
8020268e: 17 35 00 00  	auipc	a0, 3
80202692: 13 05 25 dd  	addi	a0, a0, -558
80202696: 23 30 a4 fe  	sd	a0, -32(s0)
8020269a: 23 34 04 fe  	sd	zero, -24(s0)

000000008020269e <.LBB2_24>:
;         panic!("pop_off - interruptible");
8020269e: 97 35 00 00  	auipc	a1, 3
802026a2: 93 85 25 e6  	addi	a1, a1, -414
802026a6: 05 a8        	j	0x802026d6 <.LBB2_27+0x8>

00000000802026a8 <.LBB2_25>:
802026a8: 17 35 00 00  	auipc	a0, 3
802026ac: 13 05 85 e7  	addi	a0, a0, -392
802026b0: 23 38 a4 fc  	sd	a0, -48(s0)
802026b4: 05 45        	li	a0, 1
802026b6: 23 3c a4 fc  	sd	a0, -40(s0)
802026ba: 23 30 04 fc  	sd	zero, -64(s0)

00000000802026be <.LBB2_26>:
802026be: 17 35 00 00  	auipc	a0, 3
802026c2: 13 05 25 da  	addi	a0, a0, -606
802026c6: 23 30 a4 fe  	sd	a0, -32(s0)
802026ca: 23 34 04 fe  	sd	zero, -24(s0)

00000000802026ce <.LBB2_27>:
;         panic!("pop_off");
802026ce: 97 35 00 00  	auipc	a1, 3
802026d2: 93 85 25 e6  	addi	a1, a1, -414
802026d6: 13 05 04 fc  	addi	a0, s0, -64
802026da: 97 10 00 00  	auipc	ra, 1
802026de: e7 80 e0 e3  	jalr	-450(ra)
802026e2: 00 00        	unimp	

00000000802026e4 <_ZN6kernel6memory6kalloc5kinit17h4f25e2f38cdb0cf5E>:
; pub fn kinit() {
802026e4: 19 71        	addi	sp, sp, -128
802026e6: 86 fc        	sd	ra, 120(sp)
802026e8: a2 f8        	sd	s0, 112(sp)
802026ea: a6 f4        	sd	s1, 104(sp)
802026ec: ca f0        	sd	s2, 96(sp)
802026ee: ce ec        	sd	s3, 88(sp)
802026f0: d2 e8        	sd	s4, 80(sp)
802026f2: d6 e4        	sd	s5, 72(sp)
802026f4: 00 01        	addi	s0, sp, 128
802026f6: 0f 00 30 03  	fence	rw, rw

00000000802026fa <.LBB1_17>:
802026fa: 97 59 01 00  	auipc	s3, 21
802026fe: 93 89 69 5d  	addi	s3, s3, 1494
80202702: 03 b5 09 03  	ld	a0, 48(s3)
80202706: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020270a: 21 ed        	bnez	a0, 0x80202762 <.LBB1_18+0x3a>
8020270c: 93 85 09 03  	addi	a1, s3, 48
80202710: 05 46        	li	a2, 1
80202712: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202716: 01 e5        	bnez	a0, 0x8020271e <.LBB1_17+0x24>
80202718: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
8020271c: fd fa        	bnez	a3, 0x80202712 <.LBB1_17+0x18>
;             if status == INCOMPLETE { // We init
8020271e: 31 e1        	bnez	a0, 0x80202762 <.LBB1_18+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202720: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202724: 23 b0 c9 00  	sd	a2, 0(s3)

0000000080202728 <.LBB1_18>:
80202728: 17 35 00 00  	auipc	a0, 3
8020272c: 13 05 85 9a  	addi	a0, a0, -1624
80202730: 23 b4 a9 00  	sd	a0, 8(s3)
80202734: 11 45        	li	a0, 4
80202736: 23 b8 a9 00  	sd	a0, 16(s3)
8020273a: 23 bc 09 00  	sd	zero, 24(s3)
8020273e: 23 80 09 02  	sb	zero, 32(s3)
80202742: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
80202746: 23 0c 04 f8  	sb	zero, -104(s0)
8020274a: 0f 00 10 03  	fence	rw, w
8020274e: 09 45        	li	a0, 2
80202750: 23 b8 a9 02  	sd	a0, 48(s3)
80202754: 13 05 04 f9  	addi	a0, s0, -112
80202758: 97 10 00 00  	auipc	ra, 1
8020275c: e7 80 60 d8  	jalr	-634(ra)
80202760: 0d a0        	j	0x80202782 <.LBB1_19>
80202762: 85 45        	li	a1, 1
;             match status {
80202764: 63 1c b5 00  	bne	a0, a1, 0x8020277c <.LBB1_18+0x54>
80202768: 0f 00 00 01  	fence	w, 0
8020276c: 0f 00 30 03  	fence	rw, rw
80202770: 03 b5 09 03  	ld	a0, 48(s3)
80202774: 0f 00 30 02  	fence	r, rw
;             match status {
80202778: e3 08 b5 fe  	beq	a0, a1, 0x80202768 <.LBB1_18+0x40>
8020277c: 89 45        	li	a1, 2
;             match status {
8020277e: 63 17 b5 0c  	bne	a0, a1, 0x8020284c <.LBB1_22+0x2c>

0000000080202782 <.LBB1_19>:
;         while pa < pa_end - PGSIZE {
80202782: 17 65 01 00  	auipc	a0, 22
80202786: 13 05 e5 87  	addi	a0, a0, -1922
8020278a: 85 65        	lui	a1, 1
8020278c: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
8020278e: aa 95        	add	a1, a1, a0
80202790: 7d 76        	lui	a2, 1048575
80202792: f1 8d        	and	a1, a1, a2
80202794: 37 86 08 00  	lui	a2, 136
80202798: 7d 36        	addiw	a2, a2, -1
8020279a: 32 06        	slli	a2, a2, 12
8020279c: 7d 16        	addi	a2, a2, -1
8020279e: 63 6a b6 04  	bltu	a2, a1, 0x802027f2 <.LBB1_19+0x70>
802027a2: 63 e8 a5 10  	bltu	a1, a0, 0x802028b2 <.LBB1_30>
802027a6: 05 6a        	lui	s4, 1
802027a8: 9b 05 fa ff  	addiw	a1, s4, -1
802027ac: 2e 95        	add	a0, a0, a1
802027ae: fd 75        	lui	a1, 1048575
802027b0: 6d 8d        	and	a0, a0, a1
802027b2: 13 89 89 00  	addi	s2, s3, 8
802027b6: b7 f5 ff 43  	lui	a1, 278527
802027ba: 93 9a 15 00  	slli	s5, a1, 1
802027be: aa 84        	mv	s1, a0
802027c0: 85 45        	li	a1, 1
802027c2: 05 66        	lui	a2, 1
802027c4: 97 20 00 00  	auipc	ra, 2
802027c8: e7 80 40 82  	jalr	-2012(ra)
;         self.lock.acquire();
802027cc: 4a 85        	mv	a0, s2
802027ce: 97 00 00 00  	auipc	ra, 0
802027d2: e7 80 c0 cb  	jalr	-836(ra)
;         unsafe { (*pa).next = self.freelist }
802027d6: 03 b5 89 02  	ld	a0, 40(s3)
802027da: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
802027dc: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
802027e0: 4a 85        	mv	a0, s2
802027e2: 97 00 00 00  	auipc	ra, 0
802027e6: e7 80 40 db  	jalr	-588(ra)
;             pa += PGSIZE;
802027ea: 33 85 44 01  	add	a0, s1, s4
802027ee: e3 e8 54 fd  	bltu	s1, s5, 0x802027be <.LBB1_19+0x3c>
802027f2: 13 05 04 fc  	addi	a0, s0, -64
802027f6: 23 34 a4 f8  	sd	a0, -120(s0)
802027fa: 23 38 04 f8  	sd	zero, -112(s0)

00000000802027fe <.LBB1_20>:
802027fe: 17 35 00 00  	auipc	a0, 3
80202802: 13 05 25 da  	addi	a0, a0, -606
80202806: 23 30 a4 fa  	sd	a0, -96(s0)
8020280a: 05 45        	li	a0, 1
8020280c: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080202810 <.LBB1_21>:
80202810: 17 35 00 00  	auipc	a0, 3
80202814: 13 05 85 d3  	addi	a0, a0, -712
80202818: 23 38 a4 fa  	sd	a0, -80(s0)
8020281c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080202820 <.LBB1_22>:
80202820: 97 35 00 00  	auipc	a1, 3
80202824: 93 85 05 ef  	addi	a1, a1, -272
80202828: 13 05 84 f8  	addi	a0, s0, -120
8020282c: 13 06 04 f9  	addi	a2, s0, -112
80202830: 97 10 00 00  	auipc	ra, 1
80202834: e7 80 00 e0  	jalr	-512(ra)
80202838: 21 e9        	bnez	a0, 0x80202888 <.LBB1_27>
; }
8020283a: e6 70        	ld	ra, 120(sp)
8020283c: 46 74        	ld	s0, 112(sp)
8020283e: a6 74        	ld	s1, 104(sp)
80202840: 06 79        	ld	s2, 96(sp)
80202842: e6 69        	ld	s3, 88(sp)
80202844: 46 6a        	ld	s4, 80(sp)
80202846: a6 6a        	ld	s5, 72(sp)
80202848: 09 61        	addi	sp, sp, 128
8020284a: 82 80        	ret
;             match status {
8020284c: 05 e1        	bnez	a0, 0x8020286c <.LBB1_25>

000000008020284e <.LBB1_23>:
;                 INCOMPLETE => unreachable!(),
8020284e: 17 35 00 00  	auipc	a0, 3
80202852: 13 05 a5 83  	addi	a0, a0, -1990

0000000080202856 <.LBB1_24>:
80202856: 17 36 00 00  	auipc	a2, 3
8020285a: 13 06 a6 85  	addi	a2, a2, -1958
8020285e: 93 05 80 02  	li	a1, 40
80202862: 97 10 00 00  	auipc	ra, 1
80202866: e7 80 40 ce  	jalr	-796(ra)
8020286a: 00 00        	unimp	

000000008020286c <.LBB1_25>:
;                 PANICKED => panic!("Once has panicked"),
8020286c: 17 25 00 00  	auipc	a0, 2
80202870: 13 05 45 79  	addi	a0, a0, 1940

0000000080202874 <.LBB1_26>:
80202874: 17 26 00 00  	auipc	a2, 2
80202878: 13 06 c6 7f  	addi	a2, a2, 2044
8020287c: c5 45        	li	a1, 17
8020287e: 97 10 00 00  	auipc	ra, 1
80202882: e7 80 80 cc  	jalr	-824(ra)
80202886: 00 00        	unimp	

0000000080202888 <.LBB1_27>:
80202888: 17 35 00 00  	auipc	a0, 3
8020288c: 13 05 85 eb  	addi	a0, a0, -328

0000000080202890 <.LBB1_28>:
80202890: 97 36 00 00  	auipc	a3, 3
80202894: 93 86 06 ee  	addi	a3, a3, -288

0000000080202898 <.LBB1_29>:
80202898: 17 37 00 00  	auipc	a4, 3
8020289c: 13 07 87 f0  	addi	a4, a4, -248
802028a0: 93 05 b0 02  	li	a1, 43
802028a4: 13 06 04 fc  	addi	a2, s0, -64
802028a8: 97 10 00 00  	auipc	ra, 1
802028ac: e7 80 a0 d0  	jalr	-758(ra)
802028b0: 00 00        	unimp	

00000000802028b2 <.LBB1_30>:
802028b2: 17 35 00 00  	auipc	a0, 3
802028b6: 13 05 e5 c9  	addi	a0, a0, -866
802028ba: 23 30 a4 fa  	sd	a0, -96(s0)
802028be: 05 45        	li	a0, 1
802028c0: 23 34 a4 fa  	sd	a0, -88(s0)
802028c4: 23 38 04 f8  	sd	zero, -112(s0)

00000000802028c8 <.LBB1_31>:
802028c8: 17 35 00 00  	auipc	a0, 3
802028cc: 13 05 05 c8  	addi	a0, a0, -896
802028d0: 23 38 a4 fa  	sd	a0, -80(s0)
802028d4: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802028d8 <.LBB1_32>:
;             panic!("kfree");
802028d8: 97 35 00 00  	auipc	a1, 3
802028dc: 93 85 05 ca  	addi	a1, a1, -864
802028e0: 13 05 04 f9  	addi	a0, s0, -112
802028e4: 97 10 00 00  	auipc	ra, 1
802028e8: e7 80 40 c3  	jalr	-972(ra)
802028ec: 00 00        	unimp	

00000000802028ee <_ZN6kernel6memory6kalloc6kalloc17h8a70add4bd9ad31fE>:
; pub fn kalloc() -> Addr {
802028ee: 39 71        	addi	sp, sp, -64
802028f0: 06 fc        	sd	ra, 56(sp)
802028f2: 22 f8        	sd	s0, 48(sp)
802028f4: 26 f4        	sd	s1, 40(sp)
802028f6: 4a f0        	sd	s2, 32(sp)
802028f8: 4e ec        	sd	s3, 24(sp)
802028fa: 80 00        	addi	s0, sp, 64
802028fc: 0f 00 30 03  	fence	rw, rw

0000000080202900 <.LBB2_13>:
80202900: 97 54 01 00  	auipc	s1, 21
80202904: 93 84 04 3d  	addi	s1, s1, 976
80202908: 88 78        	ld	a0, 48(s1)
8020290a: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020290e: 21 e9        	bnez	a0, 0x8020295e <.LBB2_14+0x34>
80202910: 93 85 04 03  	addi	a1, s1, 48
80202914: 05 46        	li	a2, 1
80202916: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
8020291a: 01 e5        	bnez	a0, 0x80202922 <.LBB2_13+0x22>
8020291c: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80202920: fd fa        	bnez	a3, 0x80202916 <.LBB2_13+0x16>
;             if status == INCOMPLETE { // We init
80202922: 15 ed        	bnez	a0, 0x8020295e <.LBB2_14+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202924: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80202928: 90 e0        	sd	a2, 0(s1)

000000008020292a <.LBB2_14>:
8020292a: 17 25 00 00  	auipc	a0, 2
8020292e: 13 05 65 7a  	addi	a0, a0, 1958
80202932: 88 e4        	sd	a0, 8(s1)
80202934: 11 45        	li	a0, 4
80202936: 88 e8        	sd	a0, 16(s1)
80202938: 23 bc 04 00  	sd	zero, 24(s1)
8020293c: 23 80 04 02  	sb	zero, 32(s1)
80202940: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
80202944: 23 08 04 fc  	sb	zero, -48(s0)
80202948: 0f 00 10 03  	fence	rw, w
8020294c: 09 45        	li	a0, 2
8020294e: 88 f8        	sd	a0, 48(s1)
80202950: 13 05 84 fc  	addi	a0, s0, -56
80202954: 97 10 00 00  	auipc	ra, 1
80202958: e7 80 a0 b8  	jalr	-1142(ra)
8020295c: 05 a0        	j	0x8020297c <.LBB2_14+0x52>
8020295e: 85 45        	li	a1, 1
;             match status {
80202960: 63 1b b5 00  	bne	a0, a1, 0x80202976 <.LBB2_14+0x4c>
80202964: 0f 00 00 01  	fence	w, 0
80202968: 0f 00 30 03  	fence	rw, rw
8020296c: 88 78        	ld	a0, 48(s1)
8020296e: 0f 00 30 02  	fence	r, rw
;             match status {
80202972: e3 09 b5 fe  	beq	a0, a1, 0x80202964 <.LBB2_14+0x3a>
80202976: 89 45        	li	a1, 2
;             match status {
80202978: 63 1a b5 04  	bne	a0, a1, 0x802029cc <.LBB2_14+0xa2>
;         self.lock.acquire();
8020297c: 13 89 84 00  	addi	s2, s1, 8
80202980: 4a 85        	mv	a0, s2
80202982: 97 00 00 00  	auipc	ra, 0
80202986: e7 80 80 b0  	jalr	-1272(ra)
;         r = self.freelist;
8020298a: 83 b9 84 02  	ld	s3, 40(s1)
8020298e: 63 82 09 02  	beqz	s3, 0x802029b2 <.LBB2_14+0x88>
;             unsafe { self.freelist = (*r).next }
80202992: 03 b5 09 00  	ld	a0, 0(s3)
80202996: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
80202998: 4a 85        	mv	a0, s2
8020299a: 97 00 00 00  	auipc	ra, 0
8020299e: e7 80 c0 bf  	jalr	-1028(ra)
802029a2: 95 45        	li	a1, 5
802029a4: 05 66        	lui	a2, 1
802029a6: 4e 85        	mv	a0, s3
802029a8: 97 10 00 00  	auipc	ra, 1
802029ac: e7 80 00 64  	jalr	1600(ra)
802029b0: 31 a0        	j	0x802029bc <.LBB2_14+0x92>
;         self.lock.release();
802029b2: 4a 85        	mv	a0, s2
802029b4: 97 00 00 00  	auipc	ra, 0
802029b8: e7 80 20 be  	jalr	-1054(ra)
; }
802029bc: 4e 85        	mv	a0, s3
802029be: e2 70        	ld	ra, 56(sp)
802029c0: 42 74        	ld	s0, 48(sp)
802029c2: a2 74        	ld	s1, 40(sp)
802029c4: 02 79        	ld	s2, 32(sp)
802029c6: e2 69        	ld	s3, 24(sp)
802029c8: 21 61        	addi	sp, sp, 64
802029ca: 82 80        	ret
;             match status {
802029cc: 05 e1        	bnez	a0, 0x802029ec <.LBB2_17>

00000000802029ce <.LBB2_15>:
;                 INCOMPLETE => unreachable!(),
802029ce: 17 25 00 00  	auipc	a0, 2
802029d2: 13 05 a5 6b  	addi	a0, a0, 1722

00000000802029d6 <.LBB2_16>:
802029d6: 17 26 00 00  	auipc	a2, 2
802029da: 13 06 a6 6d  	addi	a2, a2, 1754
802029de: 93 05 80 02  	li	a1, 40
802029e2: 97 10 00 00  	auipc	ra, 1
802029e6: e7 80 40 b6  	jalr	-1180(ra)
802029ea: 00 00        	unimp	

00000000802029ec <.LBB2_17>:
;                 PANICKED => panic!("Once has panicked"),
802029ec: 17 25 00 00  	auipc	a0, 2
802029f0: 13 05 45 61  	addi	a0, a0, 1556

00000000802029f4 <.LBB2_18>:
802029f4: 17 26 00 00  	auipc	a2, 2
802029f8: 13 06 c6 67  	addi	a2, a2, 1660
802029fc: c5 45        	li	a1, 17
802029fe: 97 10 00 00  	auipc	ra, 1
80202a02: e7 80 80 b4  	jalr	-1208(ra)
80202a06: 00 00        	unimp	

0000000080202a08 <main>:
; pub fn main() {
80202a08: 19 71        	addi	sp, sp, -128
80202a0a: 86 fc        	sd	ra, 120(sp)
80202a0c: a2 f8        	sd	s0, 112(sp)
80202a0e: a6 f4        	sd	s1, 104(sp)
80202a10: ca f0        	sd	s2, 96(sp)
80202a12: ce ec        	sd	s3, 88(sp)
80202a14: 00 01        	addi	s0, sp, 128

0000000080202a16 <.LBB0_19>:
80202a16: 17 55 01 00  	auipc	a0, 21
80202a1a: 13 05 a5 5e  	addi	a0, a0, 1514

0000000080202a1e <.LBB0_20>:
80202a1e: 97 45 01 00  	auipc	a1, 20
80202a22: 93 85 25 5e  	addi	a1, a1, 1506
80202a26: 63 f9 a5 00  	bgeu	a1, a0, 0x80202a38 <.LBB0_20+0x1a>
80202a2a: 13 86 15 00  	addi	a2, a1, 1
80202a2e: 23 80 05 00  	sb	zero, 0(a1)
80202a32: b2 85        	mv	a1, a2
80202a34: e3 6b a6 fe  	bltu	a2, a0, 0x80202a2a <.LBB0_20+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202a38: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
80202a3a: 63 14 05 28  	bnez	a0, 0x80202cc2 <.LBB0_43>

0000000080202a3e <.LBB0_21>:
;     println!("{}", LOGO);
80202a3e: 17 35 00 00  	auipc	a0, 3
80202a42: 13 05 25 9c  	addi	a0, a0, -1598
80202a46: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202a4a <.LBB0_22>:
80202a4a: 17 05 00 00  	auipc	a0, 0
80202a4e: 13 05 85 97  	addi	a0, a0, -1672
80202a52: 23 38 a4 f8  	sd	a0, -112(s0)
80202a56: 13 09 04 fd  	addi	s2, s0, -48
80202a5a: 23 3c 24 f9  	sd	s2, -104(s0)
80202a5e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202a62 <.LBB0_23>:
80202a62: 17 35 00 00  	auipc	a0, 3
80202a66: 13 05 65 82  	addi	a0, a0, -2010
80202a6a: 23 38 a4 fa  	sd	a0, -80(s0)
80202a6e: 09 45        	li	a0, 2
80202a70: 23 3c a4 fa  	sd	a0, -72(s0)
80202a74: 13 05 84 f8  	addi	a0, s0, -120
80202a78: 23 30 a4 fc  	sd	a0, -64(s0)
80202a7c: 85 44        	li	s1, 1
80202a7e: 23 34 94 fc  	sd	s1, -56(s0)

0000000080202a82 <.LBB0_24>:
80202a82: 97 35 00 00  	auipc	a1, 3
80202a86: 93 85 e5 c8  	addi	a1, a1, -882
80202a8a: 13 05 84 f9  	addi	a0, s0, -104
80202a8e: 13 06 04 fa  	addi	a2, s0, -96
80202a92: 97 10 00 00  	auipc	ra, 1
80202a96: e7 80 e0 b9  	jalr	-1122(ra)
80202a9a: 63 1f 05 28  	bnez	a0, 0x80202d38 <.LBB0_47>
80202a9e: 23 34 24 f9  	sd	s2, -120(s0)
80202aa2: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202aa6 <.LBB0_25>:
80202aa6: 17 35 00 00  	auipc	a0, 3
80202aaa: 13 05 25 b6  	addi	a0, a0, -1182
80202aae: 23 38 a4 fa  	sd	a0, -80(s0)
80202ab2: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202ab6 <.LBB0_26>:
80202ab6: 97 34 00 00  	auipc	s1, 3
80202aba: 93 84 a4 af  	addi	s1, s1, -1286
80202abe: 23 30 94 fc  	sd	s1, -64(s0)
80202ac2: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202ac6 <.LBB0_27>:
80202ac6: 97 35 00 00  	auipc	a1, 3
80202aca: 93 85 a5 c4  	addi	a1, a1, -950
80202ace: 13 05 84 f8  	addi	a0, s0, -120
80202ad2: 13 06 04 fa  	addi	a2, s0, -96
80202ad6: 97 10 00 00  	auipc	ra, 1
80202ada: e7 80 a0 b5  	jalr	-1190(ra)
80202ade: 63 1d 05 24  	bnez	a0, 0x80202d38 <.LBB0_47>
80202ae2: 13 05 04 fd  	addi	a0, s0, -48
80202ae6: 23 34 a4 f8  	sd	a0, -120(s0)
80202aea: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202aee <.LBB0_28>:
80202aee: 17 35 00 00  	auipc	a0, 3
80202af2: 13 05 25 b3  	addi	a0, a0, -1230
80202af6: 23 38 a4 fa  	sd	a0, -80(s0)
80202afa: 05 45        	li	a0, 1
80202afc: 23 3c a4 fa  	sd	a0, -72(s0)
80202b00: 23 30 94 fc  	sd	s1, -64(s0)
80202b04: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202b08 <.LBB0_29>:
80202b08: 97 35 00 00  	auipc	a1, 3
80202b0c: 93 85 85 c0  	addi	a1, a1, -1016
80202b10: 13 05 84 f8  	addi	a0, s0, -120
80202b14: 13 06 04 fa  	addi	a2, s0, -96
80202b18: 97 10 00 00  	auipc	ra, 1
80202b1c: e7 80 80 b1  	jalr	-1256(ra)
80202b20: 63 1c 05 20  	bnez	a0, 0x80202d38 <.LBB0_47>
;         kinit();
80202b24: 97 00 00 00  	auipc	ra, 0
80202b28: e7 80 00 bc  	jalr	-1088(ra)
;         kvminit();
80202b2c: 97 00 00 00  	auipc	ra, 0
80202b30: e7 80 a0 27  	jalr	634(ra)
;         kvminithart();
80202b34: 97 00 00 00  	auipc	ra, 0
80202b38: e7 80 20 4b  	jalr	1202(ra)

0000000080202b3c <.LBB0_30>:
;         self.0.call_once(builder)
80202b3c: 17 45 01 00  	auipc	a0, 20
80202b40: 13 05 45 58  	addi	a0, a0, 1412
80202b44: 97 f0 ff ff  	auipc	ra, 1048575
80202b48: e7 80 c0 4b  	jalr	1212(ra)
80202b4c: 13 05 05 02  	addi	a0, a0, 32
80202b50: 93 05 00 04  	li	a1, 64
80202b54: 37 06 00 04  	lui	a2, 16384
80202b58: 75 36        	addiw	a2, a2, -3
80202b5a: 32 06        	slli	a2, a2, 12
80202b5c: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
80202b5e: 10 e1        	sd	a2, 0(a0)
80202b60: 13 05 05 03  	addi	a0, a0, 48
80202b64: fd 15        	addi	a1, a1, -1
80202b66: 36 96        	add	a2, a2, a3
80202b68: fd f9        	bnez	a1, 0x80202b5e <.LBB0_30+0x22>
80202b6a: 13 09 04 fd  	addi	s2, s0, -48
80202b6e: 23 34 24 f9  	sd	s2, -120(s0)
80202b72: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202b76 <.LBB0_31>:
80202b76: 17 25 00 00  	auipc	a0, 2
80202b7a: 13 05 a5 6f  	addi	a0, a0, 1786
80202b7e: 23 38 a4 fa  	sd	a0, -80(s0)
80202b82: 85 44        	li	s1, 1
80202b84: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202b88 <.LBB0_32>:
80202b88: 17 25 00 00  	auipc	a0, 2
80202b8c: 13 05 05 6d  	addi	a0, a0, 1744
80202b90: 23 30 a4 fc  	sd	a0, -64(s0)
80202b94: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202b98 <.LBB0_33>:
80202b98: 97 35 00 00  	auipc	a1, 3
80202b9c: 93 85 85 b7  	addi	a1, a1, -1160
80202ba0: 13 05 84 f8  	addi	a0, s0, -120
80202ba4: 13 06 04 fa  	addi	a2, s0, -96
80202ba8: 97 10 00 00  	auipc	ra, 1
80202bac: e7 80 80 a8  	jalr	-1400(ra)
80202bb0: 63 14 05 18  	bnez	a0, 0x80202d38 <.LBB0_47>
80202bb4: 23 34 24 f9  	sd	s2, -120(s0)
80202bb8: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202bbc <.LBB0_34>:
80202bbc: 17 35 00 00  	auipc	a0, 3
80202bc0: 13 05 c5 86  	addi	a0, a0, -1940
80202bc4: 23 38 a4 fa  	sd	a0, -80(s0)
80202bc8: 23 3c 94 fa  	sd	s1, -72(s0)

0000000080202bcc <.LBB0_35>:
80202bcc: 17 35 00 00  	auipc	a0, 3
80202bd0: 13 05 45 84  	addi	a0, a0, -1980
80202bd4: 23 30 a4 fc  	sd	a0, -64(s0)
80202bd8: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202bdc <.LBB0_36>:
80202bdc: 97 35 00 00  	auipc	a1, 3
80202be0: 93 85 45 b3  	addi	a1, a1, -1228
80202be4: 13 05 84 f8  	addi	a0, s0, -120
80202be8: 13 06 04 fa  	addi	a2, s0, -96
80202bec: 97 10 00 00  	auipc	ra, 1
80202bf0: e7 80 40 a4  	jalr	-1468(ra)
80202bf4: 63 12 05 14  	bnez	a0, 0x80202d38 <.LBB0_47>
;         trapinithart();
80202bf8: 97 00 00 00  	auipc	ra, 0
80202bfc: e7 80 40 80  	jalr	-2044(ra)
80202c00: 37 05 00 0c  	lui	a0, 49152
80202c04: 85 49        	li	s3, 1
80202c06: 23 24 35 03  	sw	s3, 40(a0)
80202c0a: 23 22 35 01  	sw	s3, 4(a0)
80202c0e: 13 09 04 fd  	addi	s2, s0, -48
80202c12: 23 34 24 f9  	sd	s2, -120(s0)
80202c16: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202c1a <.LBB0_37>:
80202c1a: 17 25 00 00  	auipc	a0, 2
80202c1e: 13 05 65 58  	addi	a0, a0, 1414
80202c22: 23 38 a4 fa  	sd	a0, -80(s0)
80202c26: 23 3c 34 fb  	sd	s3, -72(s0)

0000000080202c2a <.LBB0_38>:
80202c2a: 97 24 00 00  	auipc	s1, 2
80202c2e: 93 84 e4 55  	addi	s1, s1, 1374
80202c32: 23 30 94 fc  	sd	s1, -64(s0)
80202c36: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202c3a <.LBB0_39>:
80202c3a: 97 35 00 00  	auipc	a1, 3
80202c3e: 93 85 65 ad  	addi	a1, a1, -1322
80202c42: 13 05 84 f8  	addi	a0, s0, -120
80202c46: 13 06 04 fa  	addi	a2, s0, -96
80202c4a: 97 10 00 00  	auipc	ra, 1
80202c4e: e7 80 60 9e  	jalr	-1562(ra)
80202c52: 7d e1        	bnez	a0, 0x80202d38 <.LBB0_47>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202c54: 12 85        	mv	a0, tp
;     PLIC + 0x2080 + hart * 0x100
80202c56: 93 15 85 00  	slli	a1, a0, 8
80202c5a: 37 26 00 0c  	lui	a2, 49154
80202c5e: b2 95        	add	a1, a1, a2
80202c60: 13 06 20 40  	li	a2, 1026
80202c64: 23 a0 c5 08  	sw	a2, 128(a1)
;     PLIC + 0x201000 + hart * 0x2000
80202c68: 36 05        	slli	a0, a0, 13
80202c6a: b7 15 20 0c  	lui	a1, 49665
80202c6e: 2e 95        	add	a0, a0, a1
80202c70: 23 20 05 00  	sw	zero, 0(a0)
80202c74: 23 34 24 f9  	sd	s2, -120(s0)
80202c78: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202c7c <.LBB0_40>:
80202c7c: 17 25 00 00  	auipc	a0, 2
80202c80: 13 05 c5 54  	addi	a0, a0, 1356
80202c84: 23 38 a4 fa  	sd	a0, -80(s0)
80202c88: 23 3c 34 fb  	sd	s3, -72(s0)
80202c8c: 23 30 94 fc  	sd	s1, -64(s0)
80202c90: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202c94 <.LBB0_41>:
80202c94: 97 35 00 00  	auipc	a1, 3
80202c98: 93 85 c5 a7  	addi	a1, a1, -1412
80202c9c: 13 05 84 f8  	addi	a0, s0, -120
80202ca0: 13 06 04 fa  	addi	a2, s0, -96
80202ca4: 97 10 00 00  	auipc	ra, 1
80202ca8: e7 80 c0 98  	jalr	-1652(ra)
80202cac: 51 e5        	bnez	a0, 0x80202d38 <.LBB0_47>
80202cae: 0f 00 10 03  	fence	rw, w

0000000080202cb2 <.LBB0_42>:
80202cb2: 17 55 01 00  	auipc	a0, 21
80202cb6: 13 05 e5 06  	addi	a0, a0, 110
80202cba: 85 45        	li	a1, 1
80202cbc: 23 00 b5 00  	sb	a1, 0(a0)
80202cc0: 6d a0        	j	0x80202d6a <.LBB0_50>

0000000080202cc2 <.LBB0_43>:
80202cc2: 17 55 01 00  	auipc	a0, 21
80202cc6: 13 05 e5 05  	addi	a0, a0, 94
80202cca: 0f 00 30 03  	fence	rw, rw
80202cce: 83 05 05 00  	lb	a1, 0(a0)
80202cd2: 0f 00 30 02  	fence	r, rw
80202cd6: f5 d9        	beqz	a1, 0x80202cca <.LBB0_43+0x8>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202cd8: 12 85        	mv	a0, tp
;         println!("hart {} starting...", cpuid());
80202cda: 23 30 a4 f8  	sd	a0, -128(s0)
80202cde: 13 05 04 f8  	addi	a0, s0, -128
80202ce2: 23 34 a4 f8  	sd	a0, -120(s0)

0000000080202ce6 <.LBB0_44>:
80202ce6: 17 15 00 00  	auipc	a0, 1
80202cea: 13 05 a5 2c  	addi	a0, a0, 714
80202cee: 23 38 a4 f8  	sd	a0, -112(s0)
80202cf2: 13 05 04 fd  	addi	a0, s0, -48
80202cf6: 23 3c a4 f8  	sd	a0, -104(s0)
80202cfa: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202cfe <.LBB0_45>:
80202cfe: 17 35 00 00  	auipc	a0, 3
80202d02: 13 05 a5 8c  	addi	a0, a0, -1846
80202d06: 23 38 a4 fa  	sd	a0, -80(s0)
80202d0a: 09 45        	li	a0, 2
80202d0c: 23 3c a4 fa  	sd	a0, -72(s0)
80202d10: 13 05 84 f8  	addi	a0, s0, -120
80202d14: 23 30 a4 fc  	sd	a0, -64(s0)
80202d18: 05 45        	li	a0, 1
80202d1a: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080202d1e <.LBB0_46>:
80202d1e: 97 35 00 00  	auipc	a1, 3
80202d22: 93 85 25 9f  	addi	a1, a1, -1550
80202d26: 13 05 84 f9  	addi	a0, s0, -104
80202d2a: 13 06 04 fa  	addi	a2, s0, -96
80202d2e: 97 10 00 00  	auipc	ra, 1
80202d32: e7 80 20 90  	jalr	-1790(ra)
80202d36: 15 c5        	beqz	a0, 0x80202d62 <.LBB0_49+0x1a>

0000000080202d38 <.LBB0_47>:
80202d38: 17 35 00 00  	auipc	a0, 3
80202d3c: 13 05 85 a0  	addi	a0, a0, -1528

0000000080202d40 <.LBB0_48>:
80202d40: 97 36 00 00  	auipc	a3, 3
80202d44: 93 86 06 a3  	addi	a3, a3, -1488

0000000080202d48 <.LBB0_49>:
80202d48: 17 37 00 00  	auipc	a4, 3
80202d4c: 13 07 87 a5  	addi	a4, a4, -1448
80202d50: 93 05 b0 02  	li	a1, 43
80202d54: 13 06 04 fd  	addi	a2, s0, -48
80202d58: 97 10 00 00  	auipc	ra, 1
80202d5c: e7 80 a0 85  	jalr	-1958(ra)
80202d60: 00 00        	unimp	
;         kvminithart();
80202d62: 97 00 00 00  	auipc	ra, 0
80202d66: e7 80 40 28  	jalr	644(ra)

0000000080202d6a <.LBB0_50>:
80202d6a: 17 35 00 00  	auipc	a0, 3
80202d6e: 13 05 65 8d  	addi	a0, a0, -1834
80202d72: 23 38 a4 fa  	sd	a0, -80(s0)
80202d76: 05 45        	li	a0, 1
80202d78: 23 3c a4 fa  	sd	a0, -72(s0)
80202d7c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202d80 <.LBB0_51>:
80202d80: 17 35 00 00  	auipc	a0, 3
80202d84: 13 05 05 83  	addi	a0, a0, -2000
80202d88: 23 30 a4 fc  	sd	a0, -64(s0)
80202d8c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202d90 <.LBB0_52>:
;     panic!("Shutdown!");
80202d90: 97 35 00 00  	auipc	a1, 3
80202d94: 93 85 05 8d  	addi	a1, a1, -1840
80202d98: 13 05 04 fa  	addi	a0, s0, -96
80202d9c: 97 00 00 00  	auipc	ra, 0
80202da0: e7 80 c0 77  	jalr	1916(ra)
80202da4: 00 00        	unimp	

0000000080202da6 <_ZN6kernel6memory3kvm7kvminit17h69f7d250a71e7693E>:
; pub fn kvminit() {
80202da6: 59 71        	addi	sp, sp, -112
80202da8: 86 f4        	sd	ra, 104(sp)
80202daa: a2 f0        	sd	s0, 96(sp)
80202dac: a6 ec        	sd	s1, 88(sp)
80202dae: ca e8        	sd	s2, 80(sp)
80202db0: ce e4        	sd	s3, 72(sp)
80202db2: 80 18        	addi	s0, sp, 112
80202db4: 0f 00 30 03  	fence	rw, rw

0000000080202db8 <.LBB1_19>:
80202db8: 97 54 01 00  	auipc	s1, 21
80202dbc: 93 84 04 f5  	addi	s1, s1, -176
80202dc0: 88 68        	ld	a0, 16(s1)
80202dc2: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80202dc6: 29 e9        	bnez	a0, 0x80202e18 <.LBB1_19+0x60>
80202dc8: 93 85 04 01  	addi	a1, s1, 16
80202dcc: 85 49        	li	s3, 1
80202dce: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80202dd2: 01 e5        	bnez	a0, 0x80202dda <.LBB1_19+0x22>
80202dd4: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80202dd8: 7d fa        	bnez	a2, 0x80202dce <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
80202dda: 1d ed        	bnez	a0, 0x80202e18 <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80202ddc: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80202de0: 97 00 00 00  	auipc	ra, 0
80202de4: e7 80 e0 b0  	jalr	-1266(ra)
80202de8: 2a 89        	mv	s2, a0
80202dea: 05 66        	lui	a2, 1
80202dec: 81 45        	li	a1, 0
80202dee: 97 10 00 00  	auipc	ra, 1
80202df2: e7 80 a0 1f  	jalr	506(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80202df6: 23 b0 34 01  	sd	s3, 0(s1)
80202dfa: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80202dfe: 23 04 04 fa  	sb	zero, -88(s0)
80202e02: 0f 00 10 03  	fence	rw, w
80202e06: 09 45        	li	a0, 2
80202e08: 88 e8        	sd	a0, 16(s1)
80202e0a: 13 05 04 fa  	addi	a0, s0, -96
80202e0e: 97 00 00 00  	auipc	ra, 0
80202e12: e7 80 00 6d  	jalr	1744(ra)
80202e16: 05 a0        	j	0x80202e36 <.LBB1_19+0x7e>
80202e18: 85 45        	li	a1, 1
;             match status {
80202e1a: 63 1b b5 00  	bne	a0, a1, 0x80202e30 <.LBB1_19+0x78>
80202e1e: 0f 00 00 01  	fence	w, 0
80202e22: 0f 00 30 03  	fence	rw, rw
80202e26: 88 68        	ld	a0, 16(s1)
80202e28: 0f 00 30 02  	fence	r, rw
;             match status {
80202e2c: e3 09 b5 fe  	beq	a0, a1, 0x80202e1e <.LBB1_19+0x66>
80202e30: 89 45        	li	a1, 2
;             match status {
80202e32: 63 19 b5 10  	bne	a0, a1, 0x80202f44 <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202e36: 13 89 84 00  	addi	s2, s1, 8
80202e3a: b7 05 00 10  	lui	a1, 65536
80202e3e: 05 66        	lui	a2, 1
80202e40: b7 06 00 10  	lui	a3, 65536
80202e44: 19 47        	li	a4, 6
80202e46: 4a 85        	mv	a0, s2
80202e48: 97 f0 ff ff  	auipc	ra, 1048575
80202e4c: e7 80 80 33  	jalr	824(ra)
80202e50: 63 08 05 12  	beqz	a0, 0x80202f80 <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202e54: b7 15 00 10  	lui	a1, 65537
80202e58: 05 66        	lui	a2, 1
80202e5a: b7 16 00 10  	lui	a3, 65537
80202e5e: 19 47        	li	a4, 6
80202e60: 4a 85        	mv	a0, s2
80202e62: 97 f0 ff ff  	auipc	ra, 1048575
80202e66: e7 80 e0 31  	jalr	798(ra)
80202e6a: 63 0b 05 10  	beqz	a0, 0x80202f80 <.LBB1_29>
80202e6e: b7 05 00 0c  	lui	a1, 49152
80202e72: 37 06 40 00  	lui	a2, 1024
80202e76: b7 06 00 0c  	lui	a3, 49152
80202e7a: 19 47        	li	a4, 6
80202e7c: 4a 85        	mv	a0, s2
80202e7e: 97 f0 ff ff  	auipc	ra, 1048575
80202e82: e7 80 20 30  	jalr	770(ra)
80202e86: 6d cd        	beqz	a0, 0x80202f80 <.LBB1_29>

0000000080202e88 <.LBB1_20>:
80202e88: 97 24 00 00  	auipc	s1, 2
80202e8c: 93 84 84 17  	addi	s1, s1, 376
80202e90: 13 05 f0 bf  	li	a0, -1025
80202e94: 56 05        	slli	a0, a0, 21
80202e96: 33 86 a4 00  	add	a2, s1, a0
80202e9a: 13 05 10 40  	li	a0, 1025
80202e9e: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202ea2: 29 47        	li	a4, 10
80202ea4: 4a 85        	mv	a0, s2
80202ea6: ae 86        	mv	a3, a1
80202ea8: 97 f0 ff ff  	auipc	ra, 1048575
80202eac: e7 80 80 2d  	jalr	728(ra)
80202eb0: 61 c9        	beqz	a0, 0x80202f80 <.LBB1_29>
80202eb2: 45 45        	li	a0, 17
80202eb4: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202eb6: 33 06 95 40  	sub	a2, a0, s1
80202eba: 19 47        	li	a4, 6
80202ebc: 4a 85        	mv	a0, s2
80202ebe: a6 85        	mv	a1, s1
80202ec0: a6 86        	mv	a3, s1
80202ec2: 97 f0 ff ff  	auipc	ra, 1048575
80202ec6: e7 80 e0 2b  	jalr	702(ra)
80202eca: 5d c9        	beqz	a0, 0x80202f80 <.LBB1_29>

0000000080202ecc <.LBB1_21>:
80202ecc: 97 e6 ff ff  	auipc	a3, 1048574
80202ed0: 93 86 46 13  	addi	a3, a3, 308
80202ed4: 37 05 00 04  	lui	a0, 16384
80202ed8: 7d 35        	addiw	a0, a0, -1
80202eda: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80202ede: 05 66        	lui	a2, 1
80202ee0: 29 47        	li	a4, 10
80202ee2: 4a 85        	mv	a0, s2
80202ee4: 97 f0 ff ff  	auipc	ra, 1048575
80202ee8: e7 80 c0 29  	jalr	668(ra)
80202eec: 51 c9        	beqz	a0, 0x80202f80 <.LBB1_29>
80202eee: 13 05 04 fd  	addi	a0, s0, -48
80202ef2: 23 3c a4 f8  	sd	a0, -104(s0)
80202ef6: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202efa <.LBB1_22>:
80202efa: 17 25 00 00  	auipc	a0, 2
80202efe: 13 05 e5 7d  	addi	a0, a0, 2014
80202f02: 23 38 a4 fa  	sd	a0, -80(s0)
80202f06: 05 45        	li	a0, 1
80202f08: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080202f0c <.LBB1_23>:
80202f0c: 17 25 00 00  	auipc	a0, 2
80202f10: 13 05 c5 76  	addi	a0, a0, 1900
80202f14: 23 30 a4 fc  	sd	a0, -64(s0)
80202f18: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202f1c <.LBB1_24>:
80202f1c: 97 25 00 00  	auipc	a1, 2
80202f20: 93 85 45 7f  	addi	a1, a1, 2036
80202f24: 13 05 84 f9  	addi	a0, s0, -104
80202f28: 13 06 04 fa  	addi	a2, s0, -96
80202f2c: 97 00 00 00  	auipc	ra, 0
80202f30: e7 80 40 70  	jalr	1796(ra)
80202f34: 41 e5        	bnez	a0, 0x80202fbc <.LBB1_32>
; }
80202f36: a6 70        	ld	ra, 104(sp)
80202f38: 06 74        	ld	s0, 96(sp)
80202f3a: e6 64        	ld	s1, 88(sp)
80202f3c: 46 69        	ld	s2, 80(sp)
80202f3e: a6 69        	ld	s3, 72(sp)
80202f40: 65 61        	addi	sp, sp, 112
80202f42: 82 80        	ret
;             match status {
80202f44: 05 e1        	bnez	a0, 0x80202f64 <.LBB1_27>

0000000080202f46 <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
80202f46: 17 25 00 00  	auipc	a0, 2
80202f4a: 13 05 25 14  	addi	a0, a0, 322

0000000080202f4e <.LBB1_26>:
80202f4e: 17 26 00 00  	auipc	a2, 2
80202f52: 13 06 26 16  	addi	a2, a2, 354
80202f56: 93 05 80 02  	li	a1, 40
80202f5a: 97 00 00 00  	auipc	ra, 0
80202f5e: e7 80 c0 5e  	jalr	1516(ra)
80202f62: 00 00        	unimp	

0000000080202f64 <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
80202f64: 17 25 00 00  	auipc	a0, 2
80202f68: 13 05 c5 09  	addi	a0, a0, 156

0000000080202f6c <.LBB1_28>:
80202f6c: 17 26 00 00  	auipc	a2, 2
80202f70: 13 06 46 10  	addi	a2, a2, 260
80202f74: c5 45        	li	a1, 17
80202f76: 97 00 00 00  	auipc	ra, 0
80202f7a: e7 80 00 5d  	jalr	1488(ra)
80202f7e: 00 00        	unimp	

0000000080202f80 <.LBB1_29>:
80202f80: 17 25 00 00  	auipc	a0, 2
80202f84: 13 05 05 70  	addi	a0, a0, 1792
80202f88: 23 38 a4 fa  	sd	a0, -80(s0)
80202f8c: 05 45        	li	a0, 1
80202f8e: 23 3c a4 fa  	sd	a0, -72(s0)
80202f92: 23 30 04 fa  	sd	zero, -96(s0)

0000000080202f96 <.LBB1_30>:
80202f96: 17 25 00 00  	auipc	a0, 2
80202f9a: 13 05 25 6e  	addi	a0, a0, 1762
80202f9e: 23 30 a4 fc  	sd	a0, -64(s0)
80202fa2: 23 34 04 fc  	sd	zero, -56(s0)

0000000080202fa6 <.LBB1_31>:
80202fa6: 97 25 00 00  	auipc	a1, 2
80202faa: 93 85 25 70  	addi	a1, a1, 1794
80202fae: 13 05 04 fa  	addi	a0, s0, -96
80202fb2: 97 00 00 00  	auipc	ra, 0
80202fb6: e7 80 60 56  	jalr	1382(ra)
80202fba: 00 00        	unimp	

0000000080202fbc <.LBB1_32>:
80202fbc: 17 25 00 00  	auipc	a0, 2
80202fc0: 13 05 45 78  	addi	a0, a0, 1924

0000000080202fc4 <.LBB1_33>:
80202fc4: 97 26 00 00  	auipc	a3, 2
80202fc8: 93 86 c6 7a  	addi	a3, a3, 1964

0000000080202fcc <.LBB1_34>:
80202fcc: 17 27 00 00  	auipc	a4, 2
80202fd0: 13 07 47 7d  	addi	a4, a4, 2004
80202fd4: 93 05 b0 02  	li	a1, 43
80202fd8: 13 06 04 fd  	addi	a2, s0, -48
80202fdc: 97 00 00 00  	auipc	ra, 0
80202fe0: e7 80 60 5d  	jalr	1494(ra)
80202fe4: 00 00        	unimp	

0000000080202fe6 <_ZN6kernel6memory3kvm11kvminithart17h64b330979084956eE>:
; pub fn kvminithart() {
80202fe6: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
80202fe8: 86 f4        	sd	ra, 104(sp)
80202fea: a2 f0        	sd	s0, 96(sp)
80202fec: a6 ec        	sd	s1, 88(sp)
80202fee: ca e8        	sd	s2, 80(sp)
80202ff0: ce e4        	sd	s3, 72(sp)
80202ff2: 80 18        	addi	s0, sp, 112
80202ff4: 73 00 00 12  	sfence.vma
80202ff8: 0f 00 30 03  	fence	rw, rw

0000000080202ffc <.LBB2_12>:
80202ffc: 97 54 01 00  	auipc	s1, 21
80203000: 93 84 c4 d0  	addi	s1, s1, -756
80203004: 88 68        	ld	a0, 16(s1)
80203006: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
8020300a: 29 e9        	bnez	a0, 0x8020305c <.LBB2_12+0x60>
8020300c: 93 85 04 01  	addi	a1, s1, 16
80203010: 85 49        	li	s3, 1
80203012: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80203016: 01 e5        	bnez	a0, 0x8020301e <.LBB2_12+0x22>
80203018: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
8020301c: 7d fa        	bnez	a2, 0x80203012 <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
8020301e: 1d ed        	bnez	a0, 0x8020305c <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80203020: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80203024: 97 00 00 00  	auipc	ra, 0
80203028: e7 80 a0 8c  	jalr	-1846(ra)
8020302c: 2a 89        	mv	s2, a0
8020302e: 05 66        	lui	a2, 1
80203030: 81 45        	li	a1, 0
80203032: 97 10 00 00  	auipc	ra, 1
80203036: e7 80 60 fb  	jalr	-74(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
8020303a: 23 b0 34 01  	sd	s3, 0(s1)
8020303e: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80203042: 23 04 04 fa  	sb	zero, -88(s0)
80203046: 0f 00 10 03  	fence	rw, w
8020304a: 09 45        	li	a0, 2
8020304c: 88 e8        	sd	a0, 16(s1)
8020304e: 13 05 04 fa  	addi	a0, s0, -96
80203052: 97 00 00 00  	auipc	ra, 0
80203056: e7 80 c0 48  	jalr	1164(ra)
8020305a: 05 a0        	j	0x8020307a <.LBB2_12+0x7e>
8020305c: 85 45        	li	a1, 1
;             match status {
8020305e: 63 1b b5 00  	bne	a0, a1, 0x80203074 <.LBB2_12+0x78>
80203062: 0f 00 00 01  	fence	w, 0
80203066: 0f 00 30 03  	fence	rw, rw
8020306a: 88 68        	ld	a0, 16(s1)
8020306c: 0f 00 30 02  	fence	r, rw
;             match status {
80203070: e3 09 b5 fe  	beq	a0, a1, 0x80203062 <.LBB2_12+0x66>
80203074: 89 45        	li	a1, 2
;             match status {
80203076: 63 16 b5 06  	bne	a0, a1, 0x802030e2 <.LBB2_15+0x28>
;         self.data.as_ptr() as Addr
8020307a: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
8020307c: 31 81        	srli	a0, a0, 12
8020307e: fd 55        	li	a1, -1
80203080: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80203082: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80203084: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80203088: 73 00 00 12  	sfence.vma
8020308c: 13 05 04 fd  	addi	a0, s0, -48
80203090: 23 3c a4 f8  	sd	a0, -104(s0)
80203094: 23 30 04 fa  	sd	zero, -96(s0)

0000000080203098 <.LBB2_13>:
80203098: 17 25 00 00  	auipc	a0, 2
8020309c: 13 05 85 66  	addi	a0, a0, 1640
802030a0: 23 38 a4 fa  	sd	a0, -80(s0)
802030a4: 05 45        	li	a0, 1
802030a6: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802030aa <.LBB2_14>:
802030aa: 17 25 00 00  	auipc	a0, 2
802030ae: 13 05 e5 5c  	addi	a0, a0, 1486
802030b2: 23 30 a4 fc  	sd	a0, -64(s0)
802030b6: 23 34 04 fc  	sd	zero, -56(s0)

00000000802030ba <.LBB2_15>:
802030ba: 97 25 00 00  	auipc	a1, 2
802030be: 93 85 65 65  	addi	a1, a1, 1622
802030c2: 13 05 84 f9  	addi	a0, s0, -104
802030c6: 13 06 04 fa  	addi	a2, s0, -96
802030ca: 97 00 00 00  	auipc	ra, 0
802030ce: e7 80 60 56  	jalr	1382(ra)
802030d2: 31 e5        	bnez	a0, 0x8020311e <.LBB2_20>
; }
802030d4: a6 70        	ld	ra, 104(sp)
802030d6: 06 74        	ld	s0, 96(sp)
802030d8: e6 64        	ld	s1, 88(sp)
802030da: 46 69        	ld	s2, 80(sp)
802030dc: a6 69        	ld	s3, 72(sp)
802030de: 65 61        	addi	sp, sp, 112
802030e0: 82 80        	ret
;             match status {
802030e2: 05 e1        	bnez	a0, 0x80203102 <.LBB2_18>

00000000802030e4 <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
802030e4: 17 25 00 00  	auipc	a0, 2
802030e8: 13 05 45 fa  	addi	a0, a0, -92

00000000802030ec <.LBB2_17>:
802030ec: 17 26 00 00  	auipc	a2, 2
802030f0: 13 06 46 fc  	addi	a2, a2, -60
802030f4: 93 05 80 02  	li	a1, 40
802030f8: 97 00 00 00  	auipc	ra, 0
802030fc: e7 80 e0 44  	jalr	1102(ra)
80203100: 00 00        	unimp	

0000000080203102 <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
80203102: 17 25 00 00  	auipc	a0, 2
80203106: 13 05 e5 ef  	addi	a0, a0, -258

000000008020310a <.LBB2_19>:
8020310a: 17 26 00 00  	auipc	a2, 2
8020310e: 13 06 66 f6  	addi	a2, a2, -154
80203112: c5 45        	li	a1, 17
80203114: 97 00 00 00  	auipc	ra, 0
80203118: e7 80 20 43  	jalr	1074(ra)
8020311c: 00 00        	unimp	

000000008020311e <.LBB2_20>:
8020311e: 17 25 00 00  	auipc	a0, 2
80203122: 13 05 25 62  	addi	a0, a0, 1570

0000000080203126 <.LBB2_21>:
80203126: 97 26 00 00  	auipc	a3, 2
8020312a: 93 86 a6 64  	addi	a3, a3, 1610

000000008020312e <.LBB2_22>:
8020312e: 17 27 00 00  	auipc	a4, 2
80203132: 13 07 27 67  	addi	a4, a4, 1650
80203136: 93 05 b0 02  	li	a1, 43
8020313a: 13 06 04 fd  	addi	a2, s0, -48
8020313e: 97 00 00 00  	auipc	ra, 0
80203142: e7 80 40 47  	jalr	1140(ra)
80203146: 00 00        	unimp	

0000000080203148 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17h2249d29917c459d5E.llvm.3209458173673373810>:
80203148: 41 11        	addi	sp, sp, -16
8020314a: 06 e4        	sd	ra, 8(sp)
8020314c: 22 e0        	sd	s0, 0(sp)
8020314e: 00 08        	addi	s0, sp, 16
80203150: a2 60        	ld	ra, 8(sp)
80203152: 02 64        	ld	s0, 0(sp)
80203154: 41 01        	addi	sp, sp, 16
80203156: 82 80        	ret

0000000080203158 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810>:
80203158: 01 11        	addi	sp, sp, -32
8020315a: 06 ec        	sd	ra, 24(sp)
8020315c: 22 e8        	sd	s0, 16(sp)
8020315e: 00 10        	addi	s0, sp, 32
80203160: 1b 85 05 00  	sext.w	a0, a1
80203164: 13 06 00 08  	li	a2, 128
80203168: 23 26 04 fe  	sw	zero, -20(s0)
8020316c: 63 76 c5 00  	bgeu	a0, a2, 0x80203178 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x20>
80203170: 23 06 b4 fe  	sb	a1, -20(s0)
80203174: 05 45        	li	a0, 1
80203176: 51 a8        	j	0x8020320a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xb2>
80203178: 1b d5 b5 00  	srliw	a0, a1, 11
8020317c: 19 ed        	bnez	a0, 0x8020319a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x42>
8020317e: 13 d5 65 00  	srli	a0, a1, 6
80203182: 13 65 05 0c  	ori	a0, a0, 192
80203186: 23 06 a4 fe  	sb	a0, -20(s0)
8020318a: 13 f5 f5 03  	andi	a0, a1, 63
8020318e: 13 65 05 08  	ori	a0, a0, 128
80203192: a3 06 a4 fe  	sb	a0, -19(s0)
80203196: 09 45        	li	a0, 2
80203198: 8d a8        	j	0x8020320a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xb2>
8020319a: 1b d5 05 01  	srliw	a0, a1, 16
8020319e: 05 e9        	bnez	a0, 0x802031ce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x76>
802031a0: 13 95 05 02  	slli	a0, a1, 32
802031a4: 01 91        	srli	a0, a0, 32
802031a6: 1b d6 c5 00  	srliw	a2, a1, 12
802031aa: 13 66 06 0e  	ori	a2, a2, 224
802031ae: 23 06 c4 fe  	sb	a2, -20(s0)
802031b2: 52 15        	slli	a0, a0, 52
802031b4: 69 91        	srli	a0, a0, 58
802031b6: 13 65 05 08  	ori	a0, a0, 128
802031ba: a3 06 a4 fe  	sb	a0, -19(s0)
802031be: 13 f5 f5 03  	andi	a0, a1, 63
802031c2: 13 65 05 08  	ori	a0, a0, 128
802031c6: 23 07 a4 fe  	sb	a0, -18(s0)
802031ca: 0d 45        	li	a0, 3
802031cc: 3d a8        	j	0x8020320a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xb2>
802031ce: 13 95 05 02  	slli	a0, a1, 32
802031d2: 01 91        	srli	a0, a0, 32
802031d4: 13 16 b5 02  	slli	a2, a0, 43
802031d8: 75 92        	srli	a2, a2, 61
802031da: 13 66 06 0f  	ori	a2, a2, 240
802031de: 23 06 c4 fe  	sb	a2, -20(s0)
802031e2: 13 16 e5 02  	slli	a2, a0, 46
802031e6: 69 92        	srli	a2, a2, 58
802031e8: 13 66 06 08  	ori	a2, a2, 128
802031ec: a3 06 c4 fe  	sb	a2, -19(s0)
802031f0: 52 15        	slli	a0, a0, 52
802031f2: 69 91        	srli	a0, a0, 58
802031f4: 13 65 05 08  	ori	a0, a0, 128
802031f8: 23 07 a4 fe  	sb	a0, -18(s0)
802031fc: 13 f5 f5 03  	andi	a0, a1, 63
80203200: 13 65 05 08  	ori	a0, a0, 128
80203204: a3 07 a4 fe  	sb	a0, -17(s0)
80203208: 11 45        	li	a0, 4
8020320a: 93 06 c4 fe  	addi	a3, s0, -20
8020320e: 33 87 a6 00  	add	a4, a3, a0
80203212: 13 03 f0 0d  	li	t1, 223
80203216: 13 08 00 0f  	li	a6, 240
8020321a: b7 02 11 00  	lui	t0, 272
8020321e: 85 48        	li	a7, 1
80203220: 01 a8        	j	0x80203230 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xd8>
80203222: 85 06        	addi	a3, a3, 1
;         asm!(
80203224: 81 45        	li	a1, 0
80203226: 01 46        	li	a2, 0
80203228: 73 00 00 00  	ecall	
8020322c: 63 8f e6 04  	beq	a3, a4, 0x8020328a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x132>
80203230: 83 85 06 00  	lb	a1, 0(a3)
80203234: 13 f5 f5 0f  	andi	a0, a1, 255
80203238: e3 d5 05 fe  	bgez	a1, 0x80203222 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xca>
8020323c: 03 c6 16 00  	lbu	a2, 1(a3)
80203240: 93 75 f5 01  	andi	a1, a0, 31
80203244: 13 76 f6 03  	andi	a2, a2, 63
80203248: 63 77 a3 02  	bgeu	t1, a0, 0x80203276 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x11e>
8020324c: 83 c7 26 00  	lbu	a5, 2(a3)
80203250: 1a 06        	slli	a2, a2, 6
80203252: 93 f7 f7 03  	andi	a5, a5, 63
80203256: 5d 8e        	or	a2, a2, a5
80203258: 63 64 05 03  	bltu	a0, a6, 0x80203280 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x128>
8020325c: 03 c5 36 00  	lbu	a0, 3(a3)
80203260: f6 15        	slli	a1, a1, 61
80203262: ad 91        	srli	a1, a1, 43
80203264: 1a 06        	slli	a2, a2, 6
80203266: 13 75 f5 03  	andi	a0, a0, 63
8020326a: 51 8d        	or	a0, a0, a2
8020326c: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020326e: 63 0e 55 00  	beq	a0, t0, 0x8020328a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0x132>
80203272: 91 06        	addi	a3, a3, 4
80203274: 45 bf        	j	0x80203224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xcc>
80203276: 89 06        	addi	a3, a3, 2
80203278: 13 95 65 00  	slli	a0, a1, 6
8020327c: 51 8d        	or	a0, a0, a2
8020327e: 5d b7        	j	0x80203224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xcc>
80203280: 8d 06        	addi	a3, a3, 3
80203282: 13 95 c5 00  	slli	a0, a1, 12
80203286: 51 8d        	or	a0, a0, a2
80203288: 71 bf        	j	0x80203224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d4ca110eef83028E.llvm.3209458173673373810+0xcc>
8020328a: 01 45        	li	a0, 0
8020328c: e2 60        	ld	ra, 24(sp)
8020328e: 42 64        	ld	s0, 16(sp)
80203290: 05 61        	addi	sp, sp, 32
80203292: 82 80        	ret

0000000080203294 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he6d319fcf4a5da0eE.llvm.3209458173673373810>:
80203294: 5d 71        	addi	sp, sp, -80
80203296: 86 e4        	sd	ra, 72(sp)
80203298: a2 e0        	sd	s0, 64(sp)
8020329a: 80 08        	addi	s0, sp, 80
8020329c: 08 61        	ld	a0, 0(a0)
8020329e: 90 75        	ld	a2, 40(a1)
802032a0: 94 71        	ld	a3, 32(a1)
802032a2: 23 3c a4 fa  	sd	a0, -72(s0)
802032a6: 23 34 c4 fe  	sd	a2, -24(s0)
802032aa: 23 30 d4 fe  	sd	a3, -32(s0)
802032ae: 88 6d        	ld	a0, 24(a1)
802032b0: 90 69        	ld	a2, 16(a1)
802032b2: 94 65        	ld	a3, 8(a1)
802032b4: 8c 61        	ld	a1, 0(a1)
802032b6: 23 3c a4 fc  	sd	a0, -40(s0)
802032ba: 23 38 c4 fc  	sd	a2, -48(s0)
802032be: 23 34 d4 fc  	sd	a3, -56(s0)
802032c2: 23 30 b4 fc  	sd	a1, -64(s0)

00000000802032c6 <.LBB2_1>:
802032c6: 97 25 00 00  	auipc	a1, 2
802032ca: 93 85 a5 44  	addi	a1, a1, 1098
802032ce: 13 05 84 fb  	addi	a0, s0, -72
802032d2: 13 06 04 fc  	addi	a2, s0, -64
802032d6: 97 00 00 00  	auipc	ra, 0
802032da: e7 80 a0 35  	jalr	858(ra)
802032de: a6 60        	ld	ra, 72(sp)
802032e0: 06 64        	ld	s0, 64(sp)
802032e2: 61 61        	addi	sp, sp, 80
802032e4: 82 80        	ret

00000000802032e6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810>:
802032e6: 41 11        	addi	sp, sp, -16
802032e8: 06 e4        	sd	ra, 8(sp)
802032ea: 22 e0        	sd	s0, 0(sp)
802032ec: 00 08        	addi	s0, sp, 16
802032ee: 41 c2        	beqz	a2, 0x8020336e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x88>
802032f0: ae 86        	mv	a3, a1
802032f2: 33 87 c5 00  	add	a4, a1, a2
802032f6: 13 03 f0 0d  	li	t1, 223
802032fa: 13 08 00 0f  	li	a6, 240
802032fe: b7 02 11 00  	lui	t0, 272
80203302: 85 48        	li	a7, 1
80203304: 01 a8        	j	0x80203314 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x2e>
80203306: 85 06        	addi	a3, a3, 1
;         asm!(
80203308: 81 45        	li	a1, 0
8020330a: 01 46        	li	a2, 0
8020330c: 73 00 00 00  	ecall	
80203310: 63 8f e6 04  	beq	a3, a4, 0x8020336e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x88>
80203314: 83 85 06 00  	lb	a1, 0(a3)
80203318: 13 f5 f5 0f  	andi	a0, a1, 255
8020331c: e3 d5 05 fe  	bgez	a1, 0x80203306 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x20>
80203320: 03 c6 16 00  	lbu	a2, 1(a3)
80203324: 93 75 f5 01  	andi	a1, a0, 31
80203328: 13 76 f6 03  	andi	a2, a2, 63
8020332c: 63 77 a3 02  	bgeu	t1, a0, 0x8020335a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x74>
80203330: 83 c7 26 00  	lbu	a5, 2(a3)
80203334: 1a 06        	slli	a2, a2, 6
80203336: 93 f7 f7 03  	andi	a5, a5, 63
8020333a: 5d 8e        	or	a2, a2, a5
8020333c: 63 64 05 03  	bltu	a0, a6, 0x80203364 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x7e>
80203340: 03 c5 36 00  	lbu	a0, 3(a3)
80203344: f6 15        	slli	a1, a1, 61
80203346: ad 91        	srli	a1, a1, 43
80203348: 1a 06        	slli	a2, a2, 6
8020334a: 13 75 f5 03  	andi	a0, a0, 63
8020334e: 51 8d        	or	a0, a0, a2
80203350: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80203352: 63 0e 55 00  	beq	a0, t0, 0x8020336e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x88>
80203356: 91 06        	addi	a3, a3, 4
80203358: 45 bf        	j	0x80203308 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x22>
8020335a: 89 06        	addi	a3, a3, 2
8020335c: 13 95 65 00  	slli	a0, a1, 6
80203360: 51 8d        	or	a0, a0, a2
80203362: 5d b7        	j	0x80203308 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x22>
80203364: 8d 06        	addi	a3, a3, 3
80203366: 13 95 c5 00  	slli	a0, a1, 12
8020336a: 51 8d        	or	a0, a0, a2
8020336c: 71 bf        	j	0x80203308 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h8bba3b75742e5ae1E.llvm.3209458173673373810+0x22>
8020336e: 01 45        	li	a0, 0
80203370: a2 60        	ld	ra, 8(sp)
80203372: 02 64        	ld	s0, 0(sp)
80203374: 41 01        	addi	sp, sp, 16
80203376: 82 80        	ret

0000000080203378 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80203378: 71 71        	addi	sp, sp, -176
8020337a: 06 f5        	sd	ra, 168(sp)
8020337c: 22 f1        	sd	s0, 160(sp)
8020337e: 26 ed        	sd	s1, 152(sp)
80203380: 00 19        	addi	s0, sp, 176
80203382: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80203384: 97 00 00 00  	auipc	ra, 0
80203388: e7 80 c0 18  	jalr	396(ra)
8020338c: 05 e1        	bnez	a0, 0x802033ac <.LBB0_8+0x16>

000000008020338e <.LBB0_7>:
8020338e: 17 25 00 00  	auipc	a0, 2
80203392: 13 05 a5 4a  	addi	a0, a0, 1194

0000000080203396 <.LBB0_8>:
80203396: 17 26 00 00  	auipc	a2, 2
8020339a: 13 06 26 4e  	addi	a2, a2, 1250
8020339e: 93 05 b0 02  	li	a1, 43
802033a2: 97 00 00 00  	auipc	ra, 0
802033a6: e7 80 40 1a  	jalr	420(ra)
802033aa: 00 00        	unimp	
802033ac: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802033b0: 26 85        	mv	a0, s1
802033b2: 97 00 00 00  	auipc	ra, 0
802033b6: e7 80 20 16  	jalr	354(ra)
802033ba: 3d e1        	bnez	a0, 0x80203420 <.LBB0_11+0x24>
802033bc: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
802033c0: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802033c4 <.LBB0_9>:
802033c4: 17 f5 ff ff  	auipc	a0, 1048575
802033c8: 13 05 05 02  	addi	a0, a0, 32
802033cc: 23 34 a4 f6  	sd	a0, -152(s0)
802033d0: 13 05 04 fe  	addi	a0, s0, -32
802033d4: 23 38 a4 f8  	sd	a0, -112(s0)
802033d8: 23 38 04 fa  	sd	zero, -80(s0)

00000000802033dc <.LBB0_10>:
802033dc: 17 25 00 00  	auipc	a0, 2
802033e0: 13 05 c5 3e  	addi	a0, a0, 1004
802033e4: 23 30 a4 fc  	sd	a0, -64(s0)
802033e8: 09 45        	li	a0, 2
802033ea: 23 34 a4 fc  	sd	a0, -56(s0)
802033ee: 13 05 04 f6  	addi	a0, s0, -160
802033f2: 23 38 a4 fc  	sd	a0, -48(s0)
802033f6: 05 45        	li	a0, 1
802033f8: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802033fc <.LBB0_11>:
802033fc: 97 25 00 00  	auipc	a1, 2
80203400: 93 85 45 31  	addi	a1, a1, 788
80203404: 13 05 04 f9  	addi	a0, s0, -112
80203408: 13 06 04 fb  	addi	a2, s0, -80
8020340c: 97 00 00 00  	auipc	ra, 0
80203410: e7 80 40 22  	jalr	548(ra)
80203414: 45 e1        	bnez	a0, 0x802034b4 <.LBB0_17>
;     shutdown()
80203416: 97 f0 ff ff  	auipc	ra, 1048575
8020341a: e7 80 c0 f4  	jalr	-180(ra)
8020341e: 00 00        	unimp	
80203420: 0c 61        	ld	a1, 0(a0)
80203422: 10 65        	ld	a2, 8(a0)
80203424: 23 38 b4 f8  	sd	a1, -112(s0)
80203428: 23 3c c4 f8  	sd	a2, -104(s0)
8020342c: 08 49        	lw	a0, 16(a0)
8020342e: 23 22 a4 fa  	sw	a0, -92(s0)
80203432: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80203436: 23 30 a4 f6  	sd	a0, -160(s0)

000000008020343a <.LBB0_12>:
8020343a: 17 f5 ff ff  	auipc	a0, 1048575
8020343e: 13 05 85 f8  	addi	a0, a0, -120
80203442: 23 34 a4 f6  	sd	a0, -152(s0)
80203446: 13 05 44 fa  	addi	a0, s0, -92
8020344a: 23 38 a4 f6  	sd	a0, -144(s0)

000000008020344e <.LBB0_13>:
8020344e: 17 15 00 00  	auipc	a0, 1
80203452: 13 05 25 b5  	addi	a0, a0, -1198
80203456: 23 3c a4 f6  	sd	a0, -136(s0)
8020345a: 13 05 84 f5  	addi	a0, s0, -168
8020345e: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080203462 <.LBB0_14>:
80203462: 17 f5 ff ff  	auipc	a0, 1048575
80203466: 13 05 25 f8  	addi	a0, a0, -126
8020346a: 23 34 a4 f8  	sd	a0, -120(s0)
8020346e: 13 05 04 fe  	addi	a0, s0, -32
80203472: 23 34 a4 fa  	sd	a0, -88(s0)
80203476: 23 38 04 fa  	sd	zero, -80(s0)

000000008020347a <.LBB0_15>:
8020347a: 17 25 00 00  	auipc	a0, 2
8020347e: 13 05 e5 37  	addi	a0, a0, 894
80203482: 23 30 a4 fc  	sd	a0, -64(s0)
80203486: 11 45        	li	a0, 4
80203488: 23 34 a4 fc  	sd	a0, -56(s0)
8020348c: 13 05 04 f6  	addi	a0, s0, -160
80203490: 23 38 a4 fc  	sd	a0, -48(s0)
80203494: 0d 45        	li	a0, 3
80203496: 23 3c a4 fc  	sd	a0, -40(s0)

000000008020349a <.LBB0_16>:
8020349a: 97 25 00 00  	auipc	a1, 2
8020349e: 93 85 65 27  	addi	a1, a1, 630
802034a2: 13 05 84 fa  	addi	a0, s0, -88
802034a6: 13 06 04 fb  	addi	a2, s0, -80
802034aa: 97 00 00 00  	auipc	ra, 0
802034ae: e7 80 60 18  	jalr	390(ra)
802034b2: 35 d1        	beqz	a0, 0x80203416 <.LBB0_11+0x1a>

00000000802034b4 <.LBB0_17>:
802034b4: 17 25 00 00  	auipc	a0, 2
802034b8: 13 05 c5 28  	addi	a0, a0, 652

00000000802034bc <.LBB0_18>:
802034bc: 97 26 00 00  	auipc	a3, 2
802034c0: 93 86 46 2b  	addi	a3, a3, 692

00000000802034c4 <.LBB0_19>:
802034c4: 17 27 00 00  	auipc	a4, 2
802034c8: 13 07 c7 2d  	addi	a4, a4, 732
802034cc: 93 05 b0 02  	li	a1, 43
802034d0: 13 06 04 fe  	addi	a2, s0, -32
802034d4: 97 00 00 00  	auipc	ra, 0
802034d8: e7 80 e0 0d  	jalr	222(ra)
802034dc: 00 00        	unimp	

00000000802034de <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
802034de: 41 11        	addi	sp, sp, -16
;         if self.panicked {
802034e0: 06 e4        	sd	ra, 8(sp)
802034e2: 22 e0        	sd	s0, 0(sp)
802034e4: 00 08        	addi	s0, sp, 16
802034e6: 83 45 85 00  	lbu	a1, 8(a0)
802034ea: 91 c5        	beqz	a1, 0x802034f6 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
802034ec: 08 61        	ld	a0, 0(a0)
802034ee: 0f 00 10 03  	fence	rw, w
802034f2: 8d 45        	li	a1, 3
802034f4: 0c e1        	sd	a1, 0(a0)
;     }
802034f6: a2 60        	ld	ra, 8(sp)
802034f8: 02 64        	ld	s0, 0(sp)
802034fa: 41 01        	addi	sp, sp, 16
802034fc: 82 80        	ret

00000000802034fe <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
802034fe: 08 61        	ld	a0, 0(a0)
80203500: 01 a0        	j	0x80203500 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080203502 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80203502: 82 80        	ret

0000000080203504 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80203504: 17 35 00 00  	auipc	a0, 3
80203508: 13 05 45 be  	addi	a0, a0, -1052
8020350c: 08 61        	ld	a0, 0(a0)
8020350e: 82 80        	ret

0000000080203510 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80203510: 08 69        	ld	a0, 16(a0)
80203512: 82 80        	ret

0000000080203514 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80203514: 08 6d        	ld	a0, 24(a0)
80203516: 82 80        	ret

0000000080203518 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80203518: 79 71        	addi	sp, sp, -48
8020351a: 06 f4        	sd	ra, 40(sp)

000000008020351c <.LBB170_1>:
8020351c: 17 26 00 00  	auipc	a2, 2
80203520: 13 06 46 37  	addi	a2, a2, 884
80203524: 32 e0        	sd	a2, 0(sp)

0000000080203526 <.LBB170_2>:
80203526: 17 26 00 00  	auipc	a2, 2
8020352a: 13 06 26 3c  	addi	a2, a2, 962
8020352e: 32 e4        	sd	a2, 8(sp)
80203530: 2a e8        	sd	a0, 16(sp)
80203532: 2e ec        	sd	a1, 24(sp)
80203534: 05 45        	li	a0, 1
80203536: 23 00 a1 02  	sb	a0, 32(sp)
8020353a: 0a 85        	mv	a0, sp
8020353c: 97 00 00 00  	auipc	ra, 0
80203540: e7 80 c0 e3  	jalr	-452(ra)
80203544: 00 00        	unimp	

0000000080203546 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80203546: 5d 71        	addi	sp, sp, -80
80203548: 86 e4        	sd	ra, 72(sp)
8020354a: 2a fc        	sd	a0, 56(sp)
8020354c: ae e0        	sd	a1, 64(sp)
8020354e: 28 18        	addi	a0, sp, 56
80203550: 2a ec        	sd	a0, 24(sp)
80203552: 05 45        	li	a0, 1
80203554: 2a f0        	sd	a0, 32(sp)
80203556: 02 e4        	sd	zero, 8(sp)

0000000080203558 <.LBB172_1>:
80203558: 17 25 00 00  	auipc	a0, 2
8020355c: 13 05 85 33  	addi	a0, a0, 824
80203560: 2a f4        	sd	a0, 40(sp)
80203562: 02 f8        	sd	zero, 48(sp)
80203564: 28 00        	addi	a0, sp, 8
80203566: b2 85        	mv	a1, a2
80203568: 97 00 00 00  	auipc	ra, 0
8020356c: e7 80 00 fb  	jalr	-80(ra)
80203570: 00 00        	unimp	

0000000080203572 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80203572: 59 71        	addi	sp, sp, -112
80203574: 86 f4        	sd	ra, 104(sp)
80203576: 2a e4        	sd	a0, 8(sp)
80203578: 2e e8        	sd	a1, 16(sp)
8020357a: 08 08        	addi	a0, sp, 16
8020357c: aa e4        	sd	a0, 72(sp)

000000008020357e <.LBB176_1>:
8020357e: 17 15 00 00  	auipc	a0, 1
80203582: 13 05 25 a3  	addi	a0, a0, -1486
80203586: aa e8        	sd	a0, 80(sp)
80203588: 2c 00        	addi	a1, sp, 8
8020358a: ae ec        	sd	a1, 88(sp)
8020358c: aa f0        	sd	a0, 96(sp)

000000008020358e <.LBB176_2>:
8020358e: 17 25 00 00  	auipc	a0, 2
80203592: 13 05 a5 33  	addi	a0, a0, 826
80203596: 2a f4        	sd	a0, 40(sp)
80203598: 09 45        	li	a0, 2
8020359a: 2a f8        	sd	a0, 48(sp)
8020359c: 02 ec        	sd	zero, 24(sp)
8020359e: ac 00        	addi	a1, sp, 72
802035a0: 2e fc        	sd	a1, 56(sp)
802035a2: aa e0        	sd	a0, 64(sp)
802035a4: 28 08        	addi	a0, sp, 24
802035a6: b2 85        	mv	a1, a2
802035a8: 97 00 00 00  	auipc	ra, 0
802035ac: e7 80 00 f7  	jalr	-144(ra)
802035b0: 00 00        	unimp	

00000000802035b2 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
802035b2: 19 71        	addi	sp, sp, -128
802035b4: 86 fc        	sd	ra, 120(sp)
802035b6: 2a e4        	sd	a0, 8(sp)
802035b8: 2e e8        	sd	a1, 16(sp)
802035ba: 32 ec        	sd	a2, 24(sp)
802035bc: 36 f0        	sd	a3, 32(sp)
802035be: 28 00        	addi	a0, sp, 8
802035c0: aa ec        	sd	a0, 88(sp)

00000000802035c2 <.LBB183_1>:
802035c2: 17 15 00 00  	auipc	a0, 1
802035c6: 13 05 65 a1  	addi	a0, a0, -1514
802035ca: aa f0        	sd	a0, 96(sp)
802035cc: 28 08        	addi	a0, sp, 24
802035ce: aa f4        	sd	a0, 104(sp)

00000000802035d0 <.LBB183_2>:
802035d0: 17 15 00 00  	auipc	a0, 1
802035d4: 13 05 05 a0  	addi	a0, a0, -1536
802035d8: aa f8        	sd	a0, 112(sp)

00000000802035da <.LBB183_3>:
802035da: 17 25 00 00  	auipc	a0, 2
802035de: 13 05 65 33  	addi	a0, a0, 822
802035e2: 2a fc        	sd	a0, 56(sp)
802035e4: 09 45        	li	a0, 2
802035e6: aa e0        	sd	a0, 64(sp)
802035e8: 02 f4        	sd	zero, 40(sp)
802035ea: ac 08        	addi	a1, sp, 88
802035ec: ae e4        	sd	a1, 72(sp)
802035ee: aa e8        	sd	a0, 80(sp)
802035f0: 28 10        	addi	a0, sp, 40
802035f2: ba 85        	mv	a1, a4
802035f4: 97 00 00 00  	auipc	ra, 0
802035f8: e7 80 40 f2  	jalr	-220(ra)
802035fc: 00 00        	unimp	

00000000802035fe <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
802035fe: 39 71        	addi	sp, sp, -64
80203600: 06 fc        	sd	ra, 56(sp)
80203602: 10 75        	ld	a2, 40(a0)
80203604: 18 71        	ld	a4, 32(a0)
80203606: 1c 6d        	ld	a5, 24(a0)
80203608: 32 f8        	sd	a2, 48(sp)
8020360a: 94 61        	ld	a3, 0(a1)
8020360c: 3a f4        	sd	a4, 40(sp)
8020360e: 3e f0        	sd	a5, 32(sp)
80203610: 10 69        	ld	a2, 16(a0)
80203612: 18 65        	ld	a4, 8(a0)
80203614: 08 61        	ld	a0, 0(a0)
80203616: 8c 65        	ld	a1, 8(a1)
80203618: 32 ec        	sd	a2, 24(sp)
8020361a: 3a e8        	sd	a4, 16(sp)
8020361c: 2a e4        	sd	a0, 8(sp)
8020361e: 30 00        	addi	a2, sp, 8
80203620: 36 85        	mv	a0, a3
80203622: 97 00 00 00  	auipc	ra, 0
80203626: e7 80 e0 00  	jalr	14(ra)
8020362a: e2 70        	ld	ra, 56(sp)
8020362c: 21 61        	addi	sp, sp, 64
8020362e: 82 80        	ret

0000000080203630 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80203630: 19 71        	addi	sp, sp, -128
80203632: 86 fc        	sd	ra, 120(sp)
80203634: a2 f8        	sd	s0, 112(sp)
80203636: a6 f4        	sd	s1, 104(sp)
80203638: ca f0        	sd	s2, 96(sp)
8020363a: ce ec        	sd	s3, 88(sp)
8020363c: d2 e8        	sd	s4, 80(sp)
8020363e: d6 e4        	sd	s5, 72(sp)
80203640: da e0        	sd	s6, 64(sp)
80203642: b2 89        	mv	s3, a2
80203644: 05 46        	li	a2, 1
80203646: 16 16        	slli	a2, a2, 37
80203648: 32 f8        	sd	a2, 48(sp)
8020364a: 0d 46        	li	a2, 3
8020364c: 23 0c c1 02  	sb	a2, 56(sp)
80203650: 03 b6 09 00  	ld	a2, 0(s3)
80203654: 02 e8        	sd	zero, 16(sp)
80203656: 02 f0        	sd	zero, 32(sp)
80203658: 2a e0        	sd	a0, 0(sp)
8020365a: 2e e4        	sd	a1, 8(sp)
8020365c: 69 c6        	beqz	a2, 0x80203726 <.LBB220_31+0x9e>
8020365e: 03 b5 89 00  	ld	a0, 8(s3)
80203662: 63 0e 05 10  	beqz	a0, 0x8020377e <.LBB220_31+0xf6>
80203666: 83 b5 09 01  	ld	a1, 16(s3)
8020366a: 93 06 f5 ff  	addi	a3, a0, -1
8020366e: 8e 06        	slli	a3, a3, 3
80203670: 8d 82        	srli	a3, a3, 3
80203672: 13 89 16 00  	addi	s2, a3, 1
80203676: 93 84 85 00  	addi	s1, a1, 8
8020367a: 93 05 80 03  	li	a1, 56
8020367e: 33 0a b5 02  	mul	s4, a0, a1
80203682: 13 04 86 01  	addi	s0, a2, 24
80203686: 85 4a        	li	s5, 1

0000000080203688 <.LBB220_31>:
80203688: 17 0b 00 00  	auipc	s6, 0
8020368c: 13 0b 6b e7  	addi	s6, s6, -394
80203690: 90 60        	ld	a2, 0(s1)
80203692: 09 ca        	beqz	a2, 0x802036a4 <.LBB220_31+0x1c>
80203694: a2 66        	ld	a3, 8(sp)
80203696: 02 65        	ld	a0, 0(sp)
80203698: 83 b5 84 ff  	ld	a1, -8(s1)
8020369c: 94 6e        	ld	a3, 24(a3)
8020369e: 82 96        	jalr	a3
802036a0: 63 11 05 10  	bnez	a0, 0x802037a2 <.LBB220_31+0x11a>
802036a4: 48 44        	lw	a0, 12(s0)
802036a6: 2a da        	sw	a0, 52(sp)
802036a8: 03 05 04 01  	lb	a0, 16(s0)
802036ac: 23 0c a1 02  	sb	a0, 56(sp)
802036b0: 0c 44        	lw	a1, 8(s0)
802036b2: 03 b5 09 02  	ld	a0, 32(s3)
802036b6: 2e d8        	sw	a1, 48(sp)
802036b8: 83 36 84 ff  	ld	a3, -8(s0)
802036bc: 0c 60        	ld	a1, 0(s0)
802036be: 89 ce        	beqz	a3, 0x802036d8 <.LBB220_31+0x50>
802036c0: 01 46        	li	a2, 0
802036c2: 63 9c 56 01  	bne	a3, s5, 0x802036da <.LBB220_31+0x52>
802036c6: 92 05        	slli	a1, a1, 4
802036c8: aa 95        	add	a1, a1, a0
802036ca: 90 65        	ld	a2, 8(a1)
802036cc: 63 04 66 01  	beq	a2, s6, 0x802036d4 <.LBB220_31+0x4c>
802036d0: 01 46        	li	a2, 0
802036d2: 21 a0        	j	0x802036da <.LBB220_31+0x52>
802036d4: 8c 61        	ld	a1, 0(a1)
802036d6: 8c 61        	ld	a1, 0(a1)
802036d8: 05 46        	li	a2, 1
802036da: 32 e8        	sd	a2, 16(sp)
802036dc: 2e ec        	sd	a1, 24(sp)
802036de: 83 36 84 fe  	ld	a3, -24(s0)
802036e2: 83 35 04 ff  	ld	a1, -16(s0)
802036e6: 89 ce        	beqz	a3, 0x80203700 <.LBB220_31+0x78>
802036e8: 01 46        	li	a2, 0
802036ea: 63 9c 56 01  	bne	a3, s5, 0x80203702 <.LBB220_31+0x7a>
802036ee: 92 05        	slli	a1, a1, 4
802036f0: aa 95        	add	a1, a1, a0
802036f2: 90 65        	ld	a2, 8(a1)
802036f4: 63 04 66 01  	beq	a2, s6, 0x802036fc <.LBB220_31+0x74>
802036f8: 01 46        	li	a2, 0
802036fa: 21 a0        	j	0x80203702 <.LBB220_31+0x7a>
802036fc: 8c 61        	ld	a1, 0(a1)
802036fe: 8c 61        	ld	a1, 0(a1)
80203700: 05 46        	li	a2, 1
80203702: 32 f0        	sd	a2, 32(sp)
80203704: 2e f4        	sd	a1, 40(sp)
80203706: 0c 6c        	ld	a1, 24(s0)
80203708: 92 05        	slli	a1, a1, 4
8020370a: 2e 95        	add	a0, a0, a1
8020370c: 10 65        	ld	a2, 8(a0)
8020370e: 08 61        	ld	a0, 0(a0)
80203710: 8a 85        	mv	a1, sp
80203712: 02 96        	jalr	a2
80203714: 59 e5        	bnez	a0, 0x802037a2 <.LBB220_31+0x11a>
80203716: c1 04        	addi	s1, s1, 16
80203718: 13 0a 8a fc  	addi	s4, s4, -56
8020371c: 13 04 84 03  	addi	s0, s0, 56
80203720: e3 18 0a f6  	bnez	s4, 0x80203690 <.LBB220_31+0x8>
80203724: 81 a8        	j	0x80203774 <.LBB220_31+0xec>
80203726: 03 b5 89 02  	ld	a0, 40(s3)
8020372a: 31 c9        	beqz	a0, 0x8020377e <.LBB220_31+0xf6>
8020372c: 83 b5 09 02  	ld	a1, 32(s3)
80203730: 03 b6 09 01  	ld	a2, 16(s3)
80203734: 93 06 f5 ff  	addi	a3, a0, -1
80203738: 92 06        	slli	a3, a3, 4
8020373a: 91 82        	srli	a3, a3, 4
8020373c: 13 89 16 00  	addi	s2, a3, 1
80203740: 13 04 86 00  	addi	s0, a2, 8
80203744: 13 1a 45 00  	slli	s4, a0, 4
80203748: 93 84 85 00  	addi	s1, a1, 8
8020374c: 10 60        	ld	a2, 0(s0)
8020374e: 01 ca        	beqz	a2, 0x8020375e <.LBB220_31+0xd6>
80203750: a2 66        	ld	a3, 8(sp)
80203752: 02 65        	ld	a0, 0(sp)
80203754: 83 35 84 ff  	ld	a1, -8(s0)
80203758: 94 6e        	ld	a3, 24(a3)
8020375a: 82 96        	jalr	a3
8020375c: 39 e1        	bnez	a0, 0x802037a2 <.LBB220_31+0x11a>
8020375e: 90 60        	ld	a2, 0(s1)
80203760: 03 b5 84 ff  	ld	a0, -8(s1)
80203764: 8a 85        	mv	a1, sp
80203766: 02 96        	jalr	a2
80203768: 0d ed        	bnez	a0, 0x802037a2 <.LBB220_31+0x11a>
8020376a: 41 04        	addi	s0, s0, 16
8020376c: 41 1a        	addi	s4, s4, -16
8020376e: c1 04        	addi	s1, s1, 16
80203770: e3 1e 0a fc  	bnez	s4, 0x8020374c <.LBB220_31+0xc4>
80203774: 03 b5 89 01  	ld	a0, 24(s3)
80203778: 63 68 a9 00  	bltu	s2, a0, 0x80203788 <.LBB220_31+0x100>
8020377c: 2d a0        	j	0x802037a6 <.LBB220_31+0x11e>
8020377e: 01 49        	li	s2, 0
80203780: 03 b5 89 01  	ld	a0, 24(s3)
80203784: 63 71 a9 02  	bgeu	s2, a0, 0x802037a6 <.LBB220_31+0x11e>
80203788: 03 b5 09 01  	ld	a0, 16(s3)
8020378c: 93 15 49 00  	slli	a1, s2, 4
80203790: 33 06 b5 00  	add	a2, a0, a1
80203794: a2 66        	ld	a3, 8(sp)
80203796: 02 65        	ld	a0, 0(sp)
80203798: 0c 62        	ld	a1, 0(a2)
8020379a: 10 66        	ld	a2, 8(a2)
8020379c: 94 6e        	ld	a3, 24(a3)
8020379e: 82 96        	jalr	a3
802037a0: 19 c1        	beqz	a0, 0x802037a6 <.LBB220_31+0x11e>
802037a2: 05 45        	li	a0, 1
802037a4: 11 a0        	j	0x802037a8 <.LBB220_31+0x120>
802037a6: 01 45        	li	a0, 0
802037a8: e6 70        	ld	ra, 120(sp)
802037aa: 46 74        	ld	s0, 112(sp)
802037ac: a6 74        	ld	s1, 104(sp)
802037ae: 06 79        	ld	s2, 96(sp)
802037b0: e6 69        	ld	s3, 88(sp)
802037b2: 46 6a        	ld	s4, 80(sp)
802037b4: a6 6a        	ld	s5, 72(sp)
802037b6: 06 6b        	ld	s6, 64(sp)
802037b8: 09 61        	addi	sp, sp, 128
802037ba: 82 80        	ret

00000000802037bc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
802037bc: 59 71        	addi	sp, sp, -112
802037be: 86 f4        	sd	ra, 104(sp)
802037c0: a2 f0        	sd	s0, 96(sp)
802037c2: a6 ec        	sd	s1, 88(sp)
802037c4: ca e8        	sd	s2, 80(sp)
802037c6: ce e4        	sd	s3, 72(sp)
802037c8: d2 e0        	sd	s4, 64(sp)
802037ca: 56 fc        	sd	s5, 56(sp)
802037cc: 5a f8        	sd	s6, 48(sp)
802037ce: 5e f4        	sd	s7, 40(sp)
802037d0: 62 f0        	sd	s8, 32(sp)
802037d2: 66 ec        	sd	s9, 24(sp)
802037d4: 6a e8        	sd	s10, 16(sp)
802037d6: 6e e4        	sd	s11, 8(sp)
802037d8: be 89        	mv	s3, a5
802037da: 3a 89        	mv	s2, a4
802037dc: 36 8b        	mv	s6, a3
802037de: 32 8a        	mv	s4, a2
802037e0: 2a 8c        	mv	s8, a0
802037e2: b9 c1        	beqz	a1, 0x80203828 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
802037e4: 03 64 0c 03  	lwu	s0, 48(s8)
802037e8: 13 75 14 00  	andi	a0, s0, 1
802037ec: b7 0a 11 00  	lui	s5, 272
802037f0: 19 c1        	beqz	a0, 0x802037f6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
802037f2: 93 0a b0 02  	li	s5, 43
802037f6: b3 0c 35 01  	add	s9, a0, s3
802037fa: 13 75 44 00  	andi	a0, s0, 4
802037fe: 15 cd        	beqz	a0, 0x8020383a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80203800: 13 05 00 02  	li	a0, 32
80203804: 63 70 ab 04  	bgeu	s6, a0, 0x80203844 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80203808: 01 45        	li	a0, 0
8020380a: 63 03 0b 04  	beqz	s6, 0x80203850 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
8020380e: da 85        	mv	a1, s6
80203810: 52 86        	mv	a2, s4
80203812: 83 06 06 00  	lb	a3, 0(a2)
80203816: 05 06        	addi	a2, a2, 1
80203818: 93 a6 06 fc  	slti	a3, a3, -64
8020381c: 93 c6 16 00  	xori	a3, a3, 1
80203820: fd 15        	addi	a1, a1, -1
80203822: 36 95        	add	a0, a0, a3
80203824: fd f5        	bnez	a1, 0x80203812 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80203826: 2d a0        	j	0x80203850 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80203828: 03 24 0c 03  	lw	s0, 48(s8)
8020382c: 93 8c 19 00  	addi	s9, s3, 1
80203830: 93 0a d0 02  	li	s5, 45
80203834: 13 75 44 00  	andi	a0, s0, 4
80203838: 61 f5        	bnez	a0, 0x80203800 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
8020383a: 01 4a        	li	s4, 0
8020383c: 03 35 0c 01  	ld	a0, 16(s8)
80203840: 01 ed        	bnez	a0, 0x80203858 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80203842: 99 a0        	j	0x80203888 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203844: 52 85        	mv	a0, s4
80203846: da 85        	mv	a1, s6
80203848: 97 00 00 00  	auipc	ra, 0
8020384c: e7 80 c0 44  	jalr	1100(ra)
80203850: aa 9c        	add	s9, s9, a0
80203852: 03 35 0c 01  	ld	a0, 16(s8)
80203856: 0d c9        	beqz	a0, 0x80203888 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203858: 03 3d 8c 01  	ld	s10, 24(s8)
8020385c: 63 f6 ac 03  	bgeu	s9, s10, 0x80203888 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80203860: 13 75 84 00  	andi	a0, s0, 8
80203864: 41 e5        	bnez	a0, 0x802038ec <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80203866: 83 45 8c 03  	lbu	a1, 56(s8)
8020386a: 0d 46        	li	a2, 3
8020386c: 05 45        	li	a0, 1
8020386e: 63 83 c5 00  	beq	a1, a2, 0x80203874 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80203872: 2e 85        	mv	a0, a1
80203874: 93 75 35 00  	andi	a1, a0, 3
80203878: 33 05 9d 41  	sub	a0, s10, s9
8020387c: e1 c1        	beqz	a1, 0x8020393c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
8020387e: 05 46        	li	a2, 1
80203880: 63 91 c5 0c  	bne	a1, a2, 0x80203942 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80203884: 01 4d        	li	s10, 0
80203886: d9 a0        	j	0x8020394c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203888: 03 34 0c 00  	ld	s0, 0(s8)
8020388c: 83 34 8c 00  	ld	s1, 8(s8)
80203890: 22 85        	mv	a0, s0
80203892: a6 85        	mv	a1, s1
80203894: 56 86        	mv	a2, s5
80203896: d2 86        	mv	a3, s4
80203898: 5a 87        	mv	a4, s6
8020389a: 97 00 00 00  	auipc	ra, 0
8020389e: e7 80 00 14  	jalr	320(ra)
802038a2: 85 4b        	li	s7, 1
802038a4: 0d c1        	beqz	a0, 0x802038c6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
802038a6: 5e 85        	mv	a0, s7
802038a8: a6 70        	ld	ra, 104(sp)
802038aa: 06 74        	ld	s0, 96(sp)
802038ac: e6 64        	ld	s1, 88(sp)
802038ae: 46 69        	ld	s2, 80(sp)
802038b0: a6 69        	ld	s3, 72(sp)
802038b2: 06 6a        	ld	s4, 64(sp)
802038b4: e2 7a        	ld	s5, 56(sp)
802038b6: 42 7b        	ld	s6, 48(sp)
802038b8: a2 7b        	ld	s7, 40(sp)
802038ba: 02 7c        	ld	s8, 32(sp)
802038bc: e2 6c        	ld	s9, 24(sp)
802038be: 42 6d        	ld	s10, 16(sp)
802038c0: a2 6d        	ld	s11, 8(sp)
802038c2: 65 61        	addi	sp, sp, 112
802038c4: 82 80        	ret
802038c6: 9c 6c        	ld	a5, 24(s1)
802038c8: 22 85        	mv	a0, s0
802038ca: ca 85        	mv	a1, s2
802038cc: 4e 86        	mv	a2, s3
802038ce: a6 70        	ld	ra, 104(sp)
802038d0: 06 74        	ld	s0, 96(sp)
802038d2: e6 64        	ld	s1, 88(sp)
802038d4: 46 69        	ld	s2, 80(sp)
802038d6: a6 69        	ld	s3, 72(sp)
802038d8: 06 6a        	ld	s4, 64(sp)
802038da: e2 7a        	ld	s5, 56(sp)
802038dc: 42 7b        	ld	s6, 48(sp)
802038de: a2 7b        	ld	s7, 40(sp)
802038e0: 02 7c        	ld	s8, 32(sp)
802038e2: e2 6c        	ld	s9, 24(sp)
802038e4: 42 6d        	ld	s10, 16(sp)
802038e6: a2 6d        	ld	s11, 8(sp)
802038e8: 65 61        	addi	sp, sp, 112
802038ea: 82 87        	jr	a5
802038ec: 03 24 4c 03  	lw	s0, 52(s8)
802038f0: 13 05 00 03  	li	a0, 48
802038f4: 83 45 8c 03  	lbu	a1, 56(s8)
802038f8: 2e e0        	sd	a1, 0(sp)
802038fa: 83 3d 0c 00  	ld	s11, 0(s8)
802038fe: 83 34 8c 00  	ld	s1, 8(s8)
80203902: 23 2a ac 02  	sw	a0, 52(s8)
80203906: 85 4b        	li	s7, 1
80203908: 23 0c 7c 03  	sb	s7, 56(s8)
8020390c: 6e 85        	mv	a0, s11
8020390e: a6 85        	mv	a1, s1
80203910: 56 86        	mv	a2, s5
80203912: d2 86        	mv	a3, s4
80203914: 5a 87        	mv	a4, s6
80203916: 97 00 00 00  	auipc	ra, 0
8020391a: e7 80 40 0c  	jalr	196(ra)
8020391e: 41 f5        	bnez	a0, 0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203920: 22 8a        	mv	s4, s0
80203922: 33 05 9d 41  	sub	a0, s10, s9
80203926: 13 04 15 00  	addi	s0, a0, 1
8020392a: 7d 14        	addi	s0, s0, -1
8020392c: 49 c4        	beqz	s0, 0x802039b6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
8020392e: 90 70        	ld	a2, 32(s1)
80203930: 93 05 00 03  	li	a1, 48
80203934: 6e 85        	mv	a0, s11
80203936: 02 96        	jalr	a2
80203938: 6d d9        	beqz	a0, 0x8020392a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
8020393a: b5 b7        	j	0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020393c: 2a 8d        	mv	s10, a0
8020393e: 2e 85        	mv	a0, a1
80203940: 31 a0        	j	0x8020394c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80203942: 93 05 15 00  	addi	a1, a0, 1
80203946: 05 81        	srli	a0, a0, 1
80203948: 13 dd 15 00  	srli	s10, a1, 1
8020394c: 83 3c 0c 00  	ld	s9, 0(s8)
80203950: 83 3d 8c 00  	ld	s11, 8(s8)
80203954: 03 24 4c 03  	lw	s0, 52(s8)
80203958: 93 04 15 00  	addi	s1, a0, 1
8020395c: fd 14        	addi	s1, s1, -1
8020395e: 89 c8        	beqz	s1, 0x80203970 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80203960: 03 b6 0d 02  	ld	a2, 32(s11)
80203964: 66 85        	mv	a0, s9
80203966: a2 85        	mv	a1, s0
80203968: 02 96        	jalr	a2
8020396a: 6d d9        	beqz	a0, 0x8020395c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
8020396c: 85 4b        	li	s7, 1
8020396e: 25 bf        	j	0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80203970: 37 05 11 00  	lui	a0, 272
80203974: 85 4b        	li	s7, 1
80203976: e3 08 a4 f2  	beq	s0, a0, 0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020397a: 66 85        	mv	a0, s9
8020397c: ee 85        	mv	a1, s11
8020397e: 56 86        	mv	a2, s5
80203980: d2 86        	mv	a3, s4
80203982: 5a 87        	mv	a4, s6
80203984: 97 00 00 00  	auipc	ra, 0
80203988: e7 80 60 05  	jalr	86(ra)
8020398c: 09 fd        	bnez	a0, 0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020398e: 83 b6 8d 01  	ld	a3, 24(s11)
80203992: 66 85        	mv	a0, s9
80203994: ca 85        	mv	a1, s2
80203996: 4e 86        	mv	a2, s3
80203998: 82 96        	jalr	a3
8020399a: 11 f5        	bnez	a0, 0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020399c: 81 44        	li	s1, 0
8020399e: 63 0a 9d 02  	beq	s10, s1, 0x802039d2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
802039a2: 03 b6 0d 02  	ld	a2, 32(s11)
802039a6: 85 04        	addi	s1, s1, 1
802039a8: 66 85        	mv	a0, s9
802039aa: a2 85        	mv	a1, s0
802039ac: 02 96        	jalr	a2
802039ae: 65 d9        	beqz	a0, 0x8020399e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
802039b0: 13 85 f4 ff  	addi	a0, s1, -1
802039b4: 05 a0        	j	0x802039d4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
802039b6: 94 6c        	ld	a3, 24(s1)
802039b8: 6e 85        	mv	a0, s11
802039ba: ca 85        	mv	a1, s2
802039bc: 4e 86        	mv	a2, s3
802039be: 82 96        	jalr	a3
802039c0: e3 13 05 ee  	bnez	a0, 0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802039c4: 81 4b        	li	s7, 0
802039c6: 23 2a 4c 03  	sw	s4, 52(s8)
802039ca: 02 65        	ld	a0, 0(sp)
802039cc: 23 0c ac 02  	sb	a0, 56(s8)
802039d0: d9 bd        	j	0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802039d2: 6a 85        	mv	a0, s10
802039d4: b3 3b a5 01  	sltu	s7, a0, s10
802039d8: f9 b5        	j	0x802038a6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

00000000802039da <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
802039da: 79 71        	addi	sp, sp, -48
802039dc: 06 f4        	sd	ra, 40(sp)
802039de: 22 f0        	sd	s0, 32(sp)
802039e0: 26 ec        	sd	s1, 24(sp)
802039e2: 4a e8        	sd	s2, 16(sp)
802039e4: 4e e4        	sd	s3, 8(sp)
802039e6: 9b 07 06 00  	sext.w	a5, a2
802039ea: 37 08 11 00  	lui	a6, 272
802039ee: 3a 89        	mv	s2, a4
802039f0: b6 84        	mv	s1, a3
802039f2: 2e 84        	mv	s0, a1
802039f4: aa 89        	mv	s3, a0
802039f6: 63 89 07 01  	beq	a5, a6, 0x80203a08 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
802039fa: 14 70        	ld	a3, 32(s0)
802039fc: 4e 85        	mv	a0, s3
802039fe: b2 85        	mv	a1, a2
80203a00: 82 96        	jalr	a3
80203a02: aa 85        	mv	a1, a0
80203a04: 05 45        	li	a0, 1
80203a06: 91 ed        	bnez	a1, 0x80203a22 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80203a08: 81 cc        	beqz	s1, 0x80203a20 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80203a0a: 1c 6c        	ld	a5, 24(s0)
80203a0c: 4e 85        	mv	a0, s3
80203a0e: a6 85        	mv	a1, s1
80203a10: 4a 86        	mv	a2, s2
80203a12: a2 70        	ld	ra, 40(sp)
80203a14: 02 74        	ld	s0, 32(sp)
80203a16: e2 64        	ld	s1, 24(sp)
80203a18: 42 69        	ld	s2, 16(sp)
80203a1a: a2 69        	ld	s3, 8(sp)
80203a1c: 45 61        	addi	sp, sp, 48
80203a1e: 82 87        	jr	a5
80203a20: 01 45        	li	a0, 0
80203a22: a2 70        	ld	ra, 40(sp)
80203a24: 02 74        	ld	s0, 32(sp)
80203a26: e2 64        	ld	s1, 24(sp)
80203a28: 42 69        	ld	s2, 16(sp)
80203a2a: a2 69        	ld	s3, 8(sp)
80203a2c: 45 61        	addi	sp, sp, 48
80203a2e: 82 80        	ret

0000000080203a30 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80203a30: 5d 71        	addi	sp, sp, -80
80203a32: 86 e4        	sd	ra, 72(sp)
80203a34: a2 e0        	sd	s0, 64(sp)
80203a36: 26 fc        	sd	s1, 56(sp)
80203a38: 4a f8        	sd	s2, 48(sp)
80203a3a: 4e f4        	sd	s3, 40(sp)
80203a3c: 52 f0        	sd	s4, 32(sp)
80203a3e: 56 ec        	sd	s5, 24(sp)
80203a40: 5a e8        	sd	s6, 16(sp)
80203a42: 5e e4        	sd	s7, 8(sp)
80203a44: 2a 8a        	mv	s4, a0
80203a46: 83 32 05 01  	ld	t0, 16(a0)
80203a4a: 08 71        	ld	a0, 32(a0)
80203a4c: 93 86 f2 ff  	addi	a3, t0, -1
80203a50: b3 36 d0 00  	snez	a3, a3
80203a54: 13 07 f5 ff  	addi	a4, a0, -1
80203a58: 33 37 e0 00  	snez	a4, a4
80203a5c: f9 8e        	and	a3, a3, a4
80203a5e: b2 89        	mv	s3, a2
80203a60: 2e 89        	mv	s2, a1
80203a62: 63 9d 06 16  	bnez	a3, 0x80203bdc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203a66: 85 45        	li	a1, 1
80203a68: 63 18 b5 10  	bne	a0, a1, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203a6c: 03 35 8a 02  	ld	a0, 40(s4)
80203a70: 81 45        	li	a1, 0
80203a72: b3 06 39 01  	add	a3, s2, s3
80203a76: 13 07 15 00  	addi	a4, a0, 1
80203a7a: 37 03 11 00  	lui	t1, 272
80203a7e: 93 08 f0 0d  	li	a7, 223
80203a82: 13 08 00 0f  	li	a6, 240
80203a86: 4a 86        	mv	a2, s2
80203a88: 01 a8        	j	0x80203a98 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80203a8a: 13 05 16 00  	addi	a0, a2, 1
80203a8e: 91 8d        	sub	a1, a1, a2
80203a90: aa 95        	add	a1, a1, a0
80203a92: 2a 86        	mv	a2, a0
80203a94: 63 02 64 0e  	beq	s0, t1, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203a98: 7d 17        	addi	a4, a4, -1
80203a9a: 25 c7        	beqz	a4, 0x80203b02 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80203a9c: 63 0e d6 0c  	beq	a2, a3, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203aa0: 03 05 06 00  	lb	a0, 0(a2)
80203aa4: 13 74 f5 0f  	andi	s0, a0, 255
80203aa8: e3 51 05 fe  	bgez	a0, 0x80203a8a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80203aac: 03 45 16 00  	lbu	a0, 1(a2)
80203ab0: 93 77 f4 01  	andi	a5, s0, 31
80203ab4: 93 74 f5 03  	andi	s1, a0, 63
80203ab8: 63 f9 88 02  	bgeu	a7, s0, 0x80203aea <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80203abc: 03 45 26 00  	lbu	a0, 2(a2)
80203ac0: 9a 04        	slli	s1, s1, 6
80203ac2: 13 75 f5 03  	andi	a0, a0, 63
80203ac6: c9 8c        	or	s1, s1, a0
80203ac8: 63 67 04 03  	bltu	s0, a6, 0x80203af6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80203acc: 03 45 36 00  	lbu	a0, 3(a2)
80203ad0: f6 17        	slli	a5, a5, 61
80203ad2: ad 93        	srli	a5, a5, 43
80203ad4: 9a 04        	slli	s1, s1, 6
80203ad6: 13 75 f5 03  	andi	a0, a0, 63
80203ada: 45 8d        	or	a0, a0, s1
80203adc: 33 64 f5 00  	or	s0, a0, a5
80203ae0: 63 0c 64 08  	beq	s0, t1, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203ae4: 13 05 46 00  	addi	a0, a2, 4
80203ae8: 5d b7        	j	0x80203a8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203aea: 13 05 26 00  	addi	a0, a2, 2
80203aee: 9a 07        	slli	a5, a5, 6
80203af0: 33 e4 97 00  	or	s0, a5, s1
80203af4: 69 bf        	j	0x80203a8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203af6: 13 05 36 00  	addi	a0, a2, 3
80203afa: b2 07        	slli	a5, a5, 12
80203afc: 33 e4 f4 00  	or	s0, s1, a5
80203b00: 79 b7        	j	0x80203a8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80203b02: 63 0b d6 06  	beq	a2, a3, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b06: 03 05 06 00  	lb	a0, 0(a2)
80203b0a: 63 53 05 04  	bgez	a0, 0x80203b50 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203b0e: 13 75 f5 0f  	andi	a0, a0, 255
80203b12: 93 06 00 0e  	li	a3, 224
80203b16: 63 6d d5 02  	bltu	a0, a3, 0x80203b50 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203b1a: 93 06 00 0f  	li	a3, 240
80203b1e: 63 69 d5 02  	bltu	a0, a3, 0x80203b50 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80203b22: 83 46 16 00  	lbu	a3, 1(a2)
80203b26: 03 47 26 00  	lbu	a4, 2(a2)
80203b2a: 93 f6 f6 03  	andi	a3, a3, 63
80203b2e: 13 77 f7 03  	andi	a4, a4, 63
80203b32: 03 46 36 00  	lbu	a2, 3(a2)
80203b36: 76 15        	slli	a0, a0, 61
80203b38: 2d 91        	srli	a0, a0, 43
80203b3a: b2 06        	slli	a3, a3, 12
80203b3c: 1a 07        	slli	a4, a4, 6
80203b3e: d9 8e        	or	a3, a3, a4
80203b40: 13 76 f6 03  	andi	a2, a2, 63
80203b44: 55 8e        	or	a2, a2, a3
80203b46: 51 8d        	or	a0, a0, a2
80203b48: 37 06 11 00  	lui	a2, 272
80203b4c: 63 06 c5 02  	beq	a0, a2, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b50: 85 c1        	beqz	a1, 0x80203b70 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80203b52: 63 fd 35 01  	bgeu	a1, s3, 0x80203b6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80203b56: 33 05 b9 00  	add	a0, s2, a1
80203b5a: 03 05 05 00  	lb	a0, 0(a0)
80203b5e: 13 06 00 fc  	li	a2, -64
80203b62: 63 57 c5 00  	bge	a0, a2, 0x80203b70 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80203b66: 01 45        	li	a0, 0
80203b68: 11 e5        	bnez	a0, 0x80203b74 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80203b6a: 39 a0        	j	0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b6c: e3 9d 35 ff  	bne	a1, s3, 0x80203b66 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80203b70: 4a 85        	mv	a0, s2
80203b72: 19 c1        	beqz	a0, 0x80203b78 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80203b74: ae 89        	mv	s3, a1
80203b76: 2a 89        	mv	s2, a0
80203b78: 63 82 02 06  	beqz	t0, 0x80203bdc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203b7c: 03 34 8a 01  	ld	s0, 24(s4)
80203b80: 13 05 00 02  	li	a0, 32
80203b84: 63 f4 a9 04  	bgeu	s3, a0, 0x80203bcc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80203b88: 01 45        	li	a0, 0
80203b8a: 63 8e 09 00  	beqz	s3, 0x80203ba6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80203b8e: ce 85        	mv	a1, s3
80203b90: 4a 86        	mv	a2, s2
80203b92: 83 06 06 00  	lb	a3, 0(a2)
80203b96: 05 06        	addi	a2, a2, 1
80203b98: 93 a6 06 fc  	slti	a3, a3, -64
80203b9c: 93 c6 16 00  	xori	a3, a3, 1
80203ba0: fd 15        	addi	a1, a1, -1
80203ba2: 36 95        	add	a0, a0, a3
80203ba4: fd f5        	bnez	a1, 0x80203b92 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80203ba6: 63 7b 85 02  	bgeu	a0, s0, 0x80203bdc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80203baa: 83 45 8a 03  	lbu	a1, 56(s4)
80203bae: 8d 46        	li	a3, 3
80203bb0: 01 46        	li	a2, 0
80203bb2: 63 83 d5 00  	beq	a1, a3, 0x80203bb8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80203bb6: 2e 86        	mv	a2, a1
80203bb8: 93 75 36 00  	andi	a1, a2, 3
80203bbc: 33 05 a4 40  	sub	a0, s0, a0
80203bc0: a1 c1        	beqz	a1, 0x80203c00 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80203bc2: 05 46        	li	a2, 1
80203bc4: 63 91 c5 04  	bne	a1, a2, 0x80203c06 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80203bc8: 81 4a        	li	s5, 0
80203bca: 99 a0        	j	0x80203c10 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80203bcc: 4a 85        	mv	a0, s2
80203bce: ce 85        	mv	a1, s3
80203bd0: 97 00 00 00  	auipc	ra, 0
80203bd4: e7 80 40 0c  	jalr	196(ra)
80203bd8: e3 69 85 fc  	bltu	a0, s0, 0x80203baa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80203bdc: 83 35 8a 00  	ld	a1, 8(s4)
80203be0: 03 35 0a 00  	ld	a0, 0(s4)
80203be4: 9c 6d        	ld	a5, 24(a1)
80203be6: ca 85        	mv	a1, s2
80203be8: 4e 86        	mv	a2, s3
80203bea: a6 60        	ld	ra, 72(sp)
80203bec: 06 64        	ld	s0, 64(sp)
80203bee: e2 74        	ld	s1, 56(sp)
80203bf0: 42 79        	ld	s2, 48(sp)
80203bf2: a2 79        	ld	s3, 40(sp)
80203bf4: 02 7a        	ld	s4, 32(sp)
80203bf6: e2 6a        	ld	s5, 24(sp)
80203bf8: 42 6b        	ld	s6, 16(sp)
80203bfa: a2 6b        	ld	s7, 8(sp)
80203bfc: 61 61        	addi	sp, sp, 80
80203bfe: 82 87        	jr	a5
80203c00: aa 8a        	mv	s5, a0
80203c02: 2e 85        	mv	a0, a1
80203c04: 31 a0        	j	0x80203c10 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80203c06: 93 05 15 00  	addi	a1, a0, 1
80203c0a: 05 81        	srli	a0, a0, 1
80203c0c: 93 da 15 00  	srli	s5, a1, 1
80203c10: 03 3b 0a 00  	ld	s6, 0(s4)
80203c14: 83 3b 8a 00  	ld	s7, 8(s4)
80203c18: 83 24 4a 03  	lw	s1, 52(s4)
80203c1c: 13 04 15 00  	addi	s0, a0, 1
80203c20: 7d 14        	addi	s0, s0, -1
80203c22: 09 c8        	beqz	s0, 0x80203c34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80203c24: 03 b6 0b 02  	ld	a2, 32(s7)
80203c28: 5a 85        	mv	a0, s6
80203c2a: a6 85        	mv	a1, s1
80203c2c: 02 96        	jalr	a2
80203c2e: 6d d9        	beqz	a0, 0x80203c20 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80203c30: 05 4a        	li	s4, 1
80203c32: 2d a8        	j	0x80203c6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203c34: 37 05 11 00  	lui	a0, 272
80203c38: 05 4a        	li	s4, 1
80203c3a: 63 89 a4 02  	beq	s1, a0, 0x80203c6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203c3e: 83 b6 8b 01  	ld	a3, 24(s7)
80203c42: 5a 85        	mv	a0, s6
80203c44: ca 85        	mv	a1, s2
80203c46: 4e 86        	mv	a2, s3
80203c48: 82 96        	jalr	a3
80203c4a: 0d e1        	bnez	a0, 0x80203c6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203c4c: 01 44        	li	s0, 0
80203c4e: 63 8c 8a 00  	beq	s5, s0, 0x80203c66 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80203c52: 03 b6 0b 02  	ld	a2, 32(s7)
80203c56: 05 04        	addi	s0, s0, 1
80203c58: 5a 85        	mv	a0, s6
80203c5a: a6 85        	mv	a1, s1
80203c5c: 02 96        	jalr	a2
80203c5e: 65 d9        	beqz	a0, 0x80203c4e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80203c60: 13 05 f4 ff  	addi	a0, s0, -1
80203c64: 11 a0        	j	0x80203c68 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80203c66: 56 85        	mv	a0, s5
80203c68: 33 3a 55 01  	sltu	s4, a0, s5
80203c6c: 52 85        	mv	a0, s4
80203c6e: a6 60        	ld	ra, 72(sp)
80203c70: 06 64        	ld	s0, 64(sp)
80203c72: e2 74        	ld	s1, 56(sp)
80203c74: 42 79        	ld	s2, 48(sp)
80203c76: a2 79        	ld	s3, 40(sp)
80203c78: 02 7a        	ld	s4, 32(sp)
80203c7a: e2 6a        	ld	s5, 24(sp)
80203c7c: 42 6b        	ld	s6, 16(sp)
80203c7e: a2 6b        	ld	s7, 8(sp)
80203c80: 61 61        	addi	sp, sp, 80
80203c82: 82 80        	ret

0000000080203c84 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80203c84: ae 86        	mv	a3, a1
80203c86: aa 85        	mv	a1, a0
80203c88: 32 85        	mv	a0, a2
80203c8a: 36 86        	mv	a2, a3
80203c8c: 17 03 00 00  	auipc	t1, 0
80203c90: 67 00 43 da  	jr	-604(t1)

0000000080203c94 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80203c94: 2a 86        	mv	a2, a0
80203c96: 1d 05        	addi	a0, a0, 7
80203c98: 13 77 85 ff  	andi	a4, a0, -8
80203c9c: b3 08 c7 40  	sub	a7, a4, a2
80203ca0: 63 ec 15 01  	bltu	a1, a7, 0x80203cb8 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80203ca4: 33 88 15 41  	sub	a6, a1, a7
80203ca8: 13 35 88 00  	sltiu	a0, a6, 8
80203cac: 93 b7 98 00  	sltiu	a5, a7, 9
80203cb0: 93 c7 17 00  	xori	a5, a5, 1
80203cb4: 5d 8d        	or	a0, a0, a5
80203cb6: 11 cd        	beqz	a0, 0x80203cd2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80203cb8: 01 45        	li	a0, 0
80203cba: 99 c9        	beqz	a1, 0x80203cd0 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80203cbc: 83 06 06 00  	lb	a3, 0(a2)
80203cc0: 05 06        	addi	a2, a2, 1
80203cc2: 93 a6 06 fc  	slti	a3, a3, -64
80203cc6: 93 c6 16 00  	xori	a3, a3, 1
80203cca: fd 15        	addi	a1, a1, -1
80203ccc: 36 95        	add	a0, a0, a3
80203cce: fd f5        	bnez	a1, 0x80203cbc <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80203cd0: 82 80        	ret
80203cd2: 93 75 78 00  	andi	a1, a6, 7
80203cd6: 81 47        	li	a5, 0
80203cd8: 63 0f c7 00  	beq	a4, a2, 0x80203cf6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80203cdc: 33 07 e6 40  	sub	a4, a2, a4
80203ce0: 32 85        	mv	a0, a2
80203ce2: 83 06 05 00  	lb	a3, 0(a0)
80203ce6: 05 05        	addi	a0, a0, 1
80203ce8: 93 a6 06 fc  	slti	a3, a3, -64
80203cec: 93 c6 16 00  	xori	a3, a3, 1
80203cf0: 05 07        	addi	a4, a4, 1
80203cf2: b6 97        	add	a5, a5, a3
80203cf4: 7d f7        	bnez	a4, 0x80203ce2 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80203cf6: b3 02 16 01  	add	t0, a2, a7
80203cfa: 01 46        	li	a2, 0
80203cfc: 99 cd        	beqz	a1, 0x80203d1a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80203cfe: 13 75 88 ff  	andi	a0, a6, -8
80203d02: b3 86 a2 00  	add	a3, t0, a0
80203d06: 03 85 06 00  	lb	a0, 0(a3)
80203d0a: 85 06        	addi	a3, a3, 1
80203d0c: 13 25 05 fc  	slti	a0, a0, -64
80203d10: 13 45 15 00  	xori	a0, a0, 1
80203d14: fd 15        	addi	a1, a1, -1
80203d16: 2a 96        	add	a2, a2, a0
80203d18: fd f5        	bnez	a1, 0x80203d06 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80203d1a: 13 57 38 00  	srli	a4, a6, 3

0000000080203d1e <.LBB292_27>:
80203d1e: 17 25 00 00  	auipc	a0, 2
80203d22: 13 05 25 4a  	addi	a0, a0, 1186
80203d26: 03 3f 05 00  	ld	t5, 0(a0)

0000000080203d2a <.LBB292_28>:
80203d2a: 17 25 00 00  	auipc	a0, 2
80203d2e: 13 05 e5 49  	addi	a0, a0, 1182
80203d32: 83 38 05 00  	ld	a7, 0(a0)
80203d36: 37 15 00 10  	lui	a0, 65537
80203d3a: 12 05        	slli	a0, a0, 4
80203d3c: 05 05        	addi	a0, a0, 1
80203d3e: 42 05        	slli	a0, a0, 16
80203d40: 13 08 15 00  	addi	a6, a0, 1
80203d44: 33 05 f6 00  	add	a0, a2, a5
80203d48: 25 a0        	j	0x80203d70 <.LBB292_28+0x46>
80203d4a: 13 16 3e 00  	slli	a2, t3, 3
80203d4e: b3 02 c3 00  	add	t0, t1, a2
80203d52: 33 87 c3 41  	sub	a4, t2, t3
80203d56: 13 76 3e 00  	andi	a2, t3, 3
80203d5a: b3 f6 15 01  	and	a3, a1, a7
80203d5e: a1 81        	srli	a1, a1, 8
80203d60: b3 f5 15 01  	and	a1, a1, a7
80203d64: b6 95        	add	a1, a1, a3
80203d66: b3 85 05 03  	mul	a1, a1, a6
80203d6a: c1 91        	srli	a1, a1, 48
80203d6c: 2e 95        	add	a0, a0, a1
80203d6e: 41 e2        	bnez	a2, 0x80203dee <.LBB292_28+0xc4>
80203d70: 25 d3        	beqz	a4, 0x80203cd0 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80203d72: ba 83        	mv	t2, a4
80203d74: 16 83        	mv	t1, t0
80203d76: 93 05 00 0c  	li	a1, 192
80203d7a: 3a 8e        	mv	t3, a4
80203d7c: 63 64 b7 00  	bltu	a4, a1, 0x80203d84 <.LBB292_28+0x5a>
80203d80: 13 0e 00 0c  	li	t3, 192
80203d84: 93 75 ce 0f  	andi	a1, t3, 252
80203d88: 13 96 35 00  	slli	a2, a1, 3
80203d8c: b3 0e c3 00  	add	t4, t1, a2
80203d90: cd dd        	beqz	a1, 0x80203d4a <.LBB292_28+0x20>
80203d92: 81 45        	li	a1, 0
80203d94: 1a 86        	mv	a2, t1
80203d96: 55 da        	beqz	a2, 0x80203d4a <.LBB292_28+0x20>
80203d98: 18 62        	ld	a4, 0(a2)
80203d9a: 93 47 f7 ff  	not	a5, a4
80203d9e: 9d 83        	srli	a5, a5, 7
80203da0: 19 83        	srli	a4, a4, 6
80203da2: 14 66        	ld	a3, 8(a2)
80203da4: 5d 8f        	or	a4, a4, a5
80203da6: 33 77 e7 01  	and	a4, a4, t5
80203daa: ba 95        	add	a1, a1, a4
80203dac: 13 c7 f6 ff  	not	a4, a3
80203db0: 1d 83        	srli	a4, a4, 7
80203db2: 99 82        	srli	a3, a3, 6
80203db4: 1c 6a        	ld	a5, 16(a2)
80203db6: d9 8e        	or	a3, a3, a4
80203db8: b3 f6 e6 01  	and	a3, a3, t5
80203dbc: b6 95        	add	a1, a1, a3
80203dbe: 93 c6 f7 ff  	not	a3, a5
80203dc2: 9d 82        	srli	a3, a3, 7
80203dc4: 13 d7 67 00  	srli	a4, a5, 6
80203dc8: 1c 6e        	ld	a5, 24(a2)
80203dca: d9 8e        	or	a3, a3, a4
80203dcc: b3 f6 e6 01  	and	a3, a3, t5
80203dd0: b6 95        	add	a1, a1, a3
80203dd2: 93 c6 f7 ff  	not	a3, a5
80203dd6: 9d 82        	srli	a3, a3, 7
80203dd8: 13 d7 67 00  	srli	a4, a5, 6
80203ddc: d9 8e        	or	a3, a3, a4
80203dde: b3 f6 e6 01  	and	a3, a3, t5
80203de2: 13 06 06 02  	addi	a2, a2, 32
80203de6: b6 95        	add	a1, a1, a3
80203de8: e3 17 d6 fb  	bne	a2, t4, 0x80203d96 <.LBB292_28+0x6c>
80203dec: b9 bf        	j	0x80203d4a <.LBB292_28+0x20>
80203dee: 63 0a 03 02  	beqz	t1, 0x80203e22 <.LBB292_28+0xf8>
80203df2: 93 05 00 0c  	li	a1, 192
80203df6: 63 e4 b3 00  	bltu	t2, a1, 0x80203dfe <.LBB292_28+0xd4>
80203dfa: 93 03 00 0c  	li	t2, 192
80203dfe: 81 45        	li	a1, 0
80203e00: 13 f6 33 00  	andi	a2, t2, 3
80203e04: 0e 06        	slli	a2, a2, 3
80203e06: 83 b6 0e 00  	ld	a3, 0(t4)
80203e0a: a1 0e        	addi	t4, t4, 8
80203e0c: 13 c7 f6 ff  	not	a4, a3
80203e10: 1d 83        	srli	a4, a4, 7
80203e12: 99 82        	srli	a3, a3, 6
80203e14: d9 8e        	or	a3, a3, a4
80203e16: b3 f6 e6 01  	and	a3, a3, t5
80203e1a: 61 16        	addi	a2, a2, -8
80203e1c: b6 95        	add	a1, a1, a3
80203e1e: 65 f6        	bnez	a2, 0x80203e06 <.LBB292_28+0xdc>
80203e20: 11 a0        	j	0x80203e24 <.LBB292_28+0xfa>
80203e22: 81 45        	li	a1, 0
80203e24: 33 f6 15 01  	and	a2, a1, a7
80203e28: a1 81        	srli	a1, a1, 8
80203e2a: b3 f5 15 01  	and	a1, a1, a7
80203e2e: b2 95        	add	a1, a1, a2
80203e30: b3 85 05 03  	mul	a1, a1, a6
80203e34: c1 91        	srli	a1, a1, 48
80203e36: 2e 95        	add	a0, a0, a1
80203e38: 82 80        	ret

0000000080203e3a <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80203e3a: 39 71        	addi	sp, sp, -64
80203e3c: 06 fc        	sd	ra, 56(sp)
80203e3e: 22 f8        	sd	s0, 48(sp)
80203e40: 26 f4        	sd	s1, 40(sp)
80203e42: 32 88        	mv	a6, a2
80203e44: 93 56 45 00  	srli	a3, a0, 4
80203e48: 13 07 70 02  	li	a4, 39
80203e4c: 93 07 10 27  	li	a5, 625

0000000080203e50 <.LBB580_10>:
80203e50: 97 2e 00 00  	auipc	t4, 2
80203e54: 93 8e 0e ae  	addi	t4, t4, -1312
80203e58: 63 f3 f6 02  	bgeu	a3, a5, 0x80203e7e <.LBB580_10+0x2e>
80203e5c: 93 06 30 06  	li	a3, 99
80203e60: 63 e9 a6 0a  	bltu	a3, a0, 0x80203f12 <.LBB580_11+0x92>
80203e64: 29 46        	li	a2, 10
80203e66: 63 77 c5 0e  	bgeu	a0, a2, 0x80203f54 <.LBB580_11+0xd4>
80203e6a: 93 06 f7 ff  	addi	a3, a4, -1
80203e6e: 13 06 11 00  	addi	a2, sp, 1
80203e72: 36 96        	add	a2, a2, a3
80203e74: 1b 05 05 03  	addiw	a0, a0, 48
80203e78: 23 00 a6 00  	sb	a0, 0(a2)
80203e7c: dd a8        	j	0x80203f72 <.LBB580_11+0xf2>
80203e7e: 01 47        	li	a4, 0

0000000080203e80 <.LBB580_11>:
80203e80: 97 26 00 00  	auipc	a3, 2
80203e84: 93 86 06 3b  	addi	a3, a3, 944
80203e88: 83 b8 06 00  	ld	a7, 0(a3)
80203e8c: 89 66        	lui	a3, 2
80203e8e: 9b 83 06 71  	addiw	t2, a3, 1808
80203e92: 85 66        	lui	a3, 1
80203e94: 1b 8e b6 47  	addiw	t3, a3, 1147
80203e98: 93 02 40 06  	li	t0, 100
80203e9c: 13 03 11 00  	addi	t1, sp, 1
80203ea0: b7 e6 f5 05  	lui	a3, 24414
80203ea4: 1b 8f f6 0f  	addiw	t5, a3, 255
80203ea8: aa 87        	mv	a5, a0
80203eaa: 33 35 15 03  	mulhu	a0, a0, a7
80203eae: 2d 81        	srli	a0, a0, 11
80203eb0: 3b 06 75 02  	mulw	a2, a0, t2
80203eb4: 3b 86 c7 40  	subw	a2, a5, a2
80203eb8: 93 16 06 03  	slli	a3, a2, 48
80203ebc: c9 92        	srli	a3, a3, 50
80203ebe: b3 86 c6 03  	mul	a3, a3, t3
80203ec2: 93 df 16 01  	srli	t6, a3, 17
80203ec6: c1 82        	srli	a3, a3, 16
80203ec8: 13 f4 e6 7f  	andi	s0, a3, 2046
80203ecc: bb 86 5f 02  	mulw	a3, t6, t0
80203ed0: 15 9e        	subw	a2, a2, a3
80203ed2: 46 16        	slli	a2, a2, 49
80203ed4: 41 92        	srli	a2, a2, 48
80203ed6: b3 86 8e 00  	add	a3, t4, s0
80203eda: 33 04 e3 00  	add	s0, t1, a4
80203ede: 83 cf 06 00  	lbu	t6, 0(a3)
80203ee2: 83 86 16 00  	lb	a3, 1(a3)
80203ee6: 76 96        	add	a2, a2, t4
80203ee8: 83 04 16 00  	lb	s1, 1(a2)
80203eec: 03 46 06 00  	lbu	a2, 0(a2)
80203ef0: 23 02 d4 02  	sb	a3, 36(s0)
80203ef4: a3 01 f4 03  	sb	t6, 35(s0)
80203ef8: 23 03 94 02  	sb	s1, 38(s0)
80203efc: a3 02 c4 02  	sb	a2, 37(s0)
80203f00: 71 17        	addi	a4, a4, -4
80203f02: e3 63 ff fa  	bltu	t5, a5, 0x80203ea8 <.LBB580_11+0x28>
80203f06: 13 07 77 02  	addi	a4, a4, 39
80203f0a: 93 06 30 06  	li	a3, 99
80203f0e: e3 fb a6 f4  	bgeu	a3, a0, 0x80203e64 <.LBB580_10+0x14>
80203f12: 13 16 05 03  	slli	a2, a0, 48
80203f16: 49 92        	srli	a2, a2, 50
80203f18: 85 66        	lui	a3, 1
80203f1a: 9b 86 b6 47  	addiw	a3, a3, 1147
80203f1e: 33 06 d6 02  	mul	a2, a2, a3
80203f22: 45 82        	srli	a2, a2, 17
80203f24: 93 06 40 06  	li	a3, 100
80203f28: bb 06 d6 02  	mulw	a3, a2, a3
80203f2c: 15 9d        	subw	a0, a0, a3
80203f2e: 46 15        	slli	a0, a0, 49
80203f30: 41 91        	srli	a0, a0, 48
80203f32: 79 17        	addi	a4, a4, -2
80203f34: 76 95        	add	a0, a0, t4
80203f36: 83 06 15 00  	lb	a3, 1(a0)
80203f3a: 03 45 05 00  	lbu	a0, 0(a0)
80203f3e: 93 07 11 00  	addi	a5, sp, 1
80203f42: ba 97        	add	a5, a5, a4
80203f44: a3 80 d7 00  	sb	a3, 1(a5)
80203f48: 23 80 a7 00  	sb	a0, 0(a5)
80203f4c: 32 85        	mv	a0, a2
80203f4e: 29 46        	li	a2, 10
80203f50: e3 6d c5 f0  	bltu	a0, a2, 0x80203e6a <.LBB580_10+0x1a>
80203f54: 06 05        	slli	a0, a0, 1
80203f56: 93 06 e7 ff  	addi	a3, a4, -2
80203f5a: 76 95        	add	a0, a0, t4
80203f5c: 03 06 15 00  	lb	a2, 1(a0)
80203f60: 03 45 05 00  	lbu	a0, 0(a0)
80203f64: 13 07 11 00  	addi	a4, sp, 1
80203f68: 36 97        	add	a4, a4, a3
80203f6a: a3 00 c7 00  	sb	a2, 1(a4)
80203f6e: 23 00 a7 00  	sb	a0, 0(a4)
80203f72: 13 05 11 00  	addi	a0, sp, 1
80203f76: 33 07 d5 00  	add	a4, a0, a3
80203f7a: 13 05 70 02  	li	a0, 39
80203f7e: b3 07 d5 40  	sub	a5, a0, a3

0000000080203f82 <.LBB580_12>:
80203f82: 17 26 00 00  	auipc	a2, 2
80203f86: 13 06 e6 90  	addi	a2, a2, -1778
80203f8a: 42 85        	mv	a0, a6
80203f8c: 81 46        	li	a3, 0
80203f8e: 97 00 00 00  	auipc	ra, 0
80203f92: e7 80 e0 82  	jalr	-2002(ra)
80203f96: e2 70        	ld	ra, 56(sp)
80203f98: 42 74        	ld	s0, 48(sp)
80203f9a: a2 74        	ld	s1, 40(sp)
80203f9c: 21 61        	addi	sp, sp, 64
80203f9e: 82 80        	ret

0000000080203fa0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80203fa0: 03 65 05 00  	lwu	a0, 0(a0)
80203fa4: 2e 86        	mv	a2, a1
80203fa6: 85 45        	li	a1, 1
80203fa8: 17 03 00 00  	auipc	t1, 0
80203fac: 67 00 23 e9  	jr	-366(t1)

0000000080203fb0 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80203fb0: 08 61        	ld	a0, 0(a0)
80203fb2: 2e 86        	mv	a2, a1
80203fb4: 85 45        	li	a1, 1
80203fb6: 17 03 00 00  	auipc	t1, 0
80203fba: 67 00 43 e8  	jr	-380(t1)

0000000080203fbe <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
80203fbe: 90 65        	ld	a2, 8(a1)
80203fc0: 88 61        	ld	a0, 0(a1)
80203fc2: 1c 6e        	ld	a5, 24(a2)

0000000080203fc4 <.LBB612_1>:
80203fc4: 97 25 00 00  	auipc	a1, 2
80203fc8: 93 85 45 a3  	addi	a1, a1, -1484
80203fcc: 15 46        	li	a2, 5
80203fce: 82 87        	jr	a5

0000000080203fd0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80203fd0: 10 65        	ld	a2, 8(a0)
80203fd2: 08 61        	ld	a0, 0(a0)
80203fd4: 1c 6e        	ld	a5, 24(a2)
80203fd6: 82 87        	jr	a5

0000000080203fd8 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80203fd8: 14 61        	ld	a3, 0(a0)
80203fda: 10 65        	ld	a2, 8(a0)
80203fdc: 2e 85        	mv	a0, a1
80203fde: b6 85        	mv	a1, a3
80203fe0: 17 03 00 00  	auipc	t1, 0
80203fe4: 67 00 03 a5  	jr	-1456(t1)

0000000080203fe8 <memset>:
80203fe8: 17 03 00 00  	auipc	t1, 0
80203fec: 67 00 63 0b  	jr	182(t1)

0000000080203ff0 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE>:
80203ff0: bd 46        	li	a3, 15
80203ff2: 63 fa c6 06  	bgeu	a3, a2, 0x80204066 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x76>
80203ff6: bb 06 a0 40  	negw	a3, a0
80203ffa: 13 f8 76 00  	andi	a6, a3, 7
80203ffe: b3 03 05 01  	add	t2, a0, a6
80204002: 63 0c 08 00  	beqz	a6, 0x8020401a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x2a>
80204006: aa 87        	mv	a5, a0
80204008: ae 86        	mv	a3, a1
8020400a: 03 87 06 00  	lb	a4, 0(a3)
8020400e: 23 80 e7 00  	sb	a4, 0(a5)
80204012: 85 07        	addi	a5, a5, 1
80204014: 85 06        	addi	a3, a3, 1
80204016: e3 ea 77 fe  	bltu	a5, t2, 0x8020400a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x1a>
8020401a: b3 88 05 01  	add	a7, a1, a6
8020401e: 33 08 06 41  	sub	a6, a2, a6
80204022: 93 72 88 ff  	andi	t0, a6, -8
80204026: 93 f5 78 00  	andi	a1, a7, 7
8020402a: b3 86 53 00  	add	a3, t2, t0
8020402e: 9d cd        	beqz	a1, 0x8020406c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x7c>
80204030: 63 58 50 04  	blez	t0, 0x80204080 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204034: 13 93 35 00  	slli	t1, a1, 3
80204038: 13 f7 88 ff  	andi	a4, a7, -8
8020403c: 10 63        	ld	a2, 0(a4)
8020403e: bb 05 60 40  	negw	a1, t1
80204042: 13 fe 85 03  	andi	t3, a1, 56
80204046: 93 07 87 00  	addi	a5, a4, 8
8020404a: 98 63        	ld	a4, 0(a5)
8020404c: 33 56 66 00  	srl	a2, a2, t1
80204050: b3 15 c7 01  	sll	a1, a4, t3
80204054: d1 8d        	or	a1, a1, a2
80204056: 23 b0 b3 00  	sd	a1, 0(t2)
8020405a: a1 03        	addi	t2, t2, 8
8020405c: a1 07        	addi	a5, a5, 8
8020405e: 3a 86        	mv	a2, a4
80204060: e3 e5 d3 fe  	bltu	t2, a3, 0x8020404a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x5a>
80204064: 31 a8        	j	0x80204080 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204066: aa 86        	mv	a3, a0
80204068: 0d e2        	bnez	a2, 0x8020408a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9a>
8020406a: 0d a8        	j	0x8020409c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020406c: 63 5a 50 00  	blez	t0, 0x80204080 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80204070: c6 85        	mv	a1, a7
80204072: 90 61        	ld	a2, 0(a1)
80204074: 23 b0 c3 00  	sd	a2, 0(t2)
80204078: a1 03        	addi	t2, t2, 8
8020407a: a1 05        	addi	a1, a1, 8
8020407c: e3 eb d3 fe  	bltu	t2, a3, 0x80204072 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x82>
80204080: b3 85 58 00  	add	a1, a7, t0
80204084: 13 76 78 00  	andi	a2, a6, 7
80204088: 11 ca        	beqz	a2, 0x8020409c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
8020408a: 36 96        	add	a2, a2, a3
8020408c: 03 87 05 00  	lb	a4, 0(a1)
80204090: 23 80 e6 00  	sb	a4, 0(a3)
80204094: 85 06        	addi	a3, a3, 1
80204096: 85 05        	addi	a1, a1, 1
80204098: e3 ea c6 fe  	bltu	a3, a2, 0x8020408c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9c>
8020409c: 82 80        	ret

000000008020409e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
8020409e: bd 46        	li	a3, 15
802040a0: 63 fa c6 04  	bgeu	a3, a2, 0x802040f4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
802040a4: bb 06 a0 40  	negw	a3, a0
802040a8: 9d 8a        	andi	a3, a3, 7
802040aa: 33 07 d5 00  	add	a4, a0, a3
802040ae: 99 c6        	beqz	a3, 0x802040bc <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
802040b0: aa 87        	mv	a5, a0
802040b2: 23 80 b7 00  	sb	a1, 0(a5)
802040b6: 85 07        	addi	a5, a5, 1
802040b8: e3 ed e7 fe  	bltu	a5, a4, 0x802040b2 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
802040bc: b3 08 d6 40  	sub	a7, a2, a3
802040c0: 93 f7 88 ff  	andi	a5, a7, -8
802040c4: b3 06 f7 00  	add	a3, a4, a5
802040c8: 63 52 f0 02  	blez	a5, 0x802040ec <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
802040cc: 13 98 85 03  	slli	a6, a1, 56
802040d0: b7 17 10 10  	lui	a5, 65793
802040d4: 92 07        	slli	a5, a5, 4
802040d6: 93 87 07 10  	addi	a5, a5, 256
802040da: b3 37 f8 02  	mulhu	a5, a6, a5
802040de: 13 96 07 02  	slli	a2, a5, 32
802040e2: d1 8f        	or	a5, a5, a2
802040e4: 1c e3        	sd	a5, 0(a4)
802040e6: 21 07        	addi	a4, a4, 8
802040e8: e3 6e d7 fe  	bltu	a4, a3, 0x802040e4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
802040ec: 13 f6 78 00  	andi	a2, a7, 7
802040f0: 01 e6        	bnez	a2, 0x802040f8 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
802040f2: 09 a8        	j	0x80204104 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802040f4: aa 86        	mv	a3, a0
802040f6: 19 c6        	beqz	a2, 0x80204104 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
802040f8: 36 96        	add	a2, a2, a3
802040fa: 23 80 b6 00  	sb	a1, 0(a3)
802040fe: 85 06        	addi	a3, a3, 1
80204100: e3 ed c6 fe  	bltu	a3, a2, 0x802040fa <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80204104: 82 80        	ret

0000000080204106 <memcpy>:
80204106: 17 03 00 00  	auipc	t1, 0
8020410a: 67 00 a3 ee  	jr	-278(t1)
