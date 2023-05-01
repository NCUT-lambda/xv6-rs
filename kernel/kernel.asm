
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 51 01 00  	auipc	sp, 21
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 20 00 00  	auipc	ra, 2
8020000c: e7 80 20 26  	jalr	610(ra)
		...

0000000080201000 <trampoline>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80201000: 13 01 01 81  	addi	sp, sp, -2032
80201004: 23 34 11 7e  	sd	ra, 2024(sp)
80201008: 23 30 81 7e  	sd	s0, 2016(sp)
8020100c: 23 3c 91 7c  	sd	s1, 2008(sp)
80201010: 23 38 21 7d  	sd	s2, 2000(sp)
80201014: 23 34 31 7d  	sd	s3, 1992(sp)
80201018: 13 04 01 7f  	addi	s0, sp, 2032
8020101c: 85 65        	lui	a1, 1
8020101e: 9b 85 05 06  	addiw	a1, a1, 96
80201022: 33 01 b1 40  	sub	sp, sp, a1
80201026: aa 84        	mv	s1, a0
80201028: 0f 00 30 03  	fence	rw, rw
8020102c: 08 61        	ld	a0, 0(a0)
8020102e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201032: 71 e5        	bnez	a0, 0x802010fe <.LBB2_13+0x96>
80201034: 85 45        	li	a1, 1
80201036: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
8020103a: 01 e5        	bnez	a0, 0x80201042 <trampoline+0x42>
8020103c: 2f b6 b4 1e  	sc.d.aqrl	a2, a1, (s1)
80201040: 7d fa        	bnez	a2, 0x80201036 <trampoline+0x36>
;             if status == INCOMPLETE { // We init
80201042: 55 ed        	bnez	a0, 0x802010fe <.LBB2_13+0x96>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201044: f9 75        	lui	a1, 1048574
80201046: 9b 85 85 7b  	addiw	a1, a1, 1976
8020104a: a2 95        	add	a1, a1, s0
8020104c: 84 e1        	sd	s1, 0(a1)
8020104e: fd 75        	lui	a1, 1048575
80201050: 9b 85 85 3c  	addiw	a1, a1, 968
80201054: 33 08 b4 00  	add	a6, s0, a1
;         Self {
80201058: 13 06 f8 7f  	addi	a2, a6, 2047
8020105c: 93 05 16 40  	addi	a1, a2, 1025
80201060: a3 30 06 40  	sd	zero, 1025(a2)
80201064: 13 06 00 03  	li	a2, 48

0000000080201068 <.LBB2_13>:
80201068: 97 26 00 00  	auipc	a3, 2
8020106c: 93 86 06 06  	addi	a3, a3, 96
80201070: 11 47        	li	a4, 4
80201072: 93 07 00 04  	li	a5, 64
;     static ref PROC: UPCell<[Proc; NPROC]> = UPCell::new(array![_ => Proc::new(); NPROC]);
80201076: 33 05 c5 02  	mul	a0, a0, a2
8020107a: 42 95        	add	a0, a0, a6
8020107c: 14 e1        	sd	a3, 0(a0)
8020107e: 18 e5        	sd	a4, 8(a0)
80201080: 23 38 05 00  	sd	zero, 16(a0)
80201084: 23 0c 05 00  	sb	zero, 24(a0)
80201088: 23 30 05 02  	sd	zero, 32(a0)
8020108c: 23 04 05 02  	sb	zero, 40(a0)
80201090: 88 61        	ld	a0, 0(a1)
80201092: 05 05        	addi	a0, a0, 1
80201094: 88 e1        	sd	a0, 0(a1)
80201096: e3 60 f5 fe  	bltu	a0, a5, 0x80201076 <.LBB2_13+0xe>
8020109a: 05 65        	lui	a0, 1
8020109c: 9b 09 05 c0  	addiw	s3, a0, -1024
802010a0: 79 75        	lui	a0, 1048574
802010a2: 1b 05 85 7c  	addiw	a0, a0, 1992
802010a6: 22 95        	add	a0, a0, s0
802010a8: fd 75        	lui	a1, 1048575
802010aa: 9b 85 85 3c  	addiw	a1, a1, 968
802010ae: a2 95        	add	a1, a1, s0
802010b0: 4e 86        	mv	a2, s3
802010b2: 97 20 00 00  	auipc	ra, 2
802010b6: e7 80 40 ee  	jalr	-284(ra)
802010ba: 05 45        	li	a0, 1
;                 unsafe { *self.data.get() = Some(builder()) };
802010bc: 88 e4        	sd	a0, 8(s1)
802010be: 13 89 04 01  	addi	s2, s1, 16
802010c2: 79 75        	lui	a0, 1048574
802010c4: 1b 05 85 7c  	addiw	a0, a0, 1992
802010c8: b3 05 a4 00  	add	a1, s0, a0
802010cc: 4a 85        	mv	a0, s2
802010ce: 4e 86        	mv	a2, s3
802010d0: 97 20 00 00  	auipc	ra, 2
802010d4: e7 80 60 ec  	jalr	-314(ra)
;                 finish.panicked = false;
802010d8: 79 75        	lui	a0, 1048574
802010da: 1b 05 05 7c  	addiw	a0, a0, 1984
802010de: 22 95        	add	a0, a0, s0
802010e0: 23 00 05 00  	sb	zero, 0(a0)
802010e4: 0f 00 10 03  	fence	rw, w
802010e8: 09 45        	li	a0, 2
802010ea: 88 e0        	sd	a0, 0(s1)
802010ec: 79 75        	lui	a0, 1048574
802010ee: 1b 05 85 7b  	addiw	a0, a0, 1976
802010f2: 22 95        	add	a0, a0, s0
802010f4: 97 10 00 00  	auipc	ra, 1
802010f8: e7 80 a0 27  	jalr	634(ra)
802010fc: 15 a0        	j	0x80201120 <.LBB2_13+0xb8>
802010fe: 85 45        	li	a1, 1
;             match status {
80201100: 63 1b b5 00  	bne	a0, a1, 0x80201116 <.LBB2_13+0xae>
80201104: 0f 00 00 01  	fence	w, 0
80201108: 0f 00 30 03  	fence	rw, rw
8020110c: 88 60        	ld	a0, 0(s1)
8020110e: 0f 00 30 02  	fence	r, rw
;             match status {
80201112: e3 09 b5 fe  	beq	a0, a1, 0x80201104 <.LBB2_13+0x9c>
80201116: 89 45        	li	a1, 2
;             match status {
80201118: 63 16 b5 02  	bne	a0, a1, 0x80201144 <.LBB2_13+0xdc>
8020111c: 13 89 04 01  	addi	s2, s1, 16
;     }
80201120: 4a 85        	mv	a0, s2
80201122: 85 65        	lui	a1, 1
80201124: 9b 85 05 06  	addiw	a1, a1, 96
80201128: 2e 91        	add	sp, sp, a1
8020112a: 83 30 81 7e  	ld	ra, 2024(sp)
8020112e: 03 34 01 7e  	ld	s0, 2016(sp)
80201132: 83 34 81 7d  	ld	s1, 2008(sp)
80201136: 03 39 01 7d  	ld	s2, 2000(sp)
8020113a: 83 39 81 7c  	ld	s3, 1992(sp)
8020113e: 13 01 01 7f  	addi	sp, sp, 2032
80201142: 82 80        	ret
;             match status {
80201144: 05 e1        	bnez	a0, 0x80201164 <.LBB2_16>

0000000080201146 <.LBB2_14>:
;                 INCOMPLETE => unreachable!(),
80201146: 17 25 00 00  	auipc	a0, 2
8020114a: 13 05 25 f4  	addi	a0, a0, -190

000000008020114e <.LBB2_15>:
8020114e: 17 26 00 00  	auipc	a2, 2
80201152: 13 06 26 f6  	addi	a2, a2, -158
80201156: 93 05 80 02  	li	a1, 40
8020115a: 97 10 00 00  	auipc	ra, 1
8020115e: e7 80 c0 27  	jalr	636(ra)
80201162: 00 00        	unimp	

0000000080201164 <.LBB2_16>:
;                 PANICKED => panic!("Once has panicked"),
80201164: 17 25 00 00  	auipc	a0, 2
80201168: 13 05 c5 e9  	addi	a0, a0, -356

000000008020116c <.LBB2_17>:
8020116c: 17 26 00 00  	auipc	a2, 2
80201170: 13 06 46 f0  	addi	a2, a2, -252
80201174: c5 45        	li	a1, 17
80201176: 97 10 00 00  	auipc	ra, 1
8020117a: e7 80 00 26  	jalr	608(ra)
8020117e: 00 00        	unimp	

0000000080201180 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
80201180: 35 71        	addi	sp, sp, -160
;         if size == 0 {
80201182: 06 ed        	sd	ra, 152(sp)
80201184: 22 e9        	sd	s0, 144(sp)
80201186: 26 e5        	sd	s1, 136(sp)
80201188: 4a e1        	sd	s2, 128(sp)
8020118a: ce fc        	sd	s3, 120(sp)
8020118c: d2 f8        	sd	s4, 112(sp)
8020118e: d6 f4        	sd	s5, 104(sp)
80201190: da f0        	sd	s6, 96(sp)
80201192: de ec        	sd	s7, 88(sp)
80201194: e2 e8        	sd	s8, 80(sp)
80201196: e6 e4        	sd	s9, 72(sp)
80201198: ea e0        	sd	s10, 64(sp)
8020119a: 6e fc        	sd	s11, 56(sp)
8020119c: 00 11        	addi	s0, sp, 160
8020119e: 63 04 06 18  	beqz	a2, 0x80201326 <.LBB2_26>
802011a2: 36 8a        	mv	s4, a3
802011a4: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
802011a6: b3 fa d5 00  	and	s5, a1, a3
;         let last = pgrounddown(va + size - 1);
802011aa: 2e 96        	add	a2, a2, a1
802011ac: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
802011ae: 33 7b d6 00  	and	s6, a2, a3
802011b2: 05 46        	li	a2, 1
;         while a <= last {
802011b4: 63 6d 5b 0d  	bltu	s6, s5, 0x8020128e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x10e>
802011b8: 3a 89        	mv	s2, a4
802011ba: 93 db 26 00  	srli	s7, a3, 2
802011be: 03 3c 05 00  	ld	s8, 0(a0)
;         while a <= last {
802011c2: 93 dc c5 00  	srli	s9, a1, 12
802011c6: 05 6d        	lui	s10, 1
802011c8: 9b 0d 8d ff  	addiw	s11, s10, -8
;         if va >= MAXVA {
802011cc: 13 d5 6a 02  	srli	a0, s5, 38
802011d0: 79 ed        	bnez	a0, 0x802012ae <.LBB2_20>
;             pte = &mut pagetable.data[px(level, va)];
802011d2: 13 d5 ba 01  	srli	a0, s5, 27
802011d6: 61 99        	andi	a0, a0, -8
802011d8: b3 09 ac 00  	add	s3, s8, a0
;             if (*pte & PTE_V) != 0 {
802011dc: 03 b5 09 00  	ld	a0, 0(s3)
802011e0: 93 75 15 00  	andi	a1, a0, 1
802011e4: 95 e5        	bnez	a1, 0x80201210 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x90>
;                 let pa = kalloc();
802011e6: 97 00 00 00  	auipc	ra, 0
802011ea: e7 80 20 7b  	jalr	1970(ra)
;                 if pa == 0 {
802011ee: 59 cd        	beqz	a0, 0x8020128c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x10c>
802011f0: aa 84        	mv	s1, a0
802011f2: 05 66        	lui	a2, 1
802011f4: 81 45        	li	a1, 0
802011f6: 97 20 00 00  	auipc	ra, 2
802011fa: e7 80 20 c8  	jalr	-894(ra)
;     (pa >> 12) << 10
802011fe: 13 d5 24 00  	srli	a0, s1, 2
80201202: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
80201206: 13 65 15 00  	ori	a0, a0, 1
8020120a: 23 b0 a9 00  	sd	a0, 0(s3)
8020120e: 21 a0        	j	0x80201216 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x96>
;     (pte >> 10) << 12
80201210: 29 81        	srli	a0, a0, 10
80201212: 93 14 c5 00  	slli	s1, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
80201216: 13 d5 2a 01  	srli	a0, s5, 18
8020121a: 33 75 b5 01  	and	a0, a0, s11
8020121e: b3 89 a4 00  	add	s3, s1, a0
;             if (*pte & PTE_V) != 0 {
80201222: 03 b5 09 00  	ld	a0, 0(s3)
80201226: 93 75 15 00  	andi	a1, a0, 1
8020122a: 95 e5        	bnez	a1, 0x80201256 <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0xd6>
;                 let pa = kalloc();
8020122c: 97 00 00 00  	auipc	ra, 0
80201230: e7 80 c0 76  	jalr	1900(ra)
;                 if pa == 0 {
80201234: 21 cd        	beqz	a0, 0x8020128c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x10c>
80201236: aa 84        	mv	s1, a0
80201238: 05 66        	lui	a2, 1
8020123a: 81 45        	li	a1, 0
8020123c: 97 20 00 00  	auipc	ra, 2
80201240: e7 80 c0 c3  	jalr	-964(ra)
;     (pa >> 12) << 10
80201244: 13 d5 24 00  	srli	a0, s1, 2
80201248: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
8020124c: 13 65 15 00  	ori	a0, a0, 1
80201250: 23 b0 a9 00  	sd	a0, 0(s3)
80201254: 21 a0        	j	0x8020125c <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0xdc>
;     (pte >> 10) << 12
80201256: 29 81        	srli	a0, a0, 10
80201258: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
8020125c: 13 f5 fc 1f  	andi	a0, s9, 511
;         &mut pagetable.data[px(0, va)]
80201260: 0e 05        	slli	a0, a0, 3
80201262: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
80201264: 83 45 05 00  	lbu	a1, 0(a0)
80201268: 85 89        	andi	a1, a1, 1
8020126a: c1 e1        	bnez	a1, 0x802012ea <.LBB2_23>
;     (pa >> 12) << 10
8020126c: 93 55 2a 00  	srli	a1, s4, 2
80201270: b3 f5 75 01  	and	a1, a1, s7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201274: b3 e5 25 01  	or	a1, a1, s2
80201278: 93 e5 15 00  	ori	a1, a1, 1
8020127c: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
8020127e: ea 9a        	add	s5, s5, s10
;             pa += PGSIZE;
80201280: 6a 9a        	add	s4, s4, s10
;         while a <= last {
80201282: 85 0c        	addi	s9, s9, 1
80201284: e3 74 5b f5  	bgeu	s6, s5, 0x802011cc <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x4c>
80201288: 05 46        	li	a2, 1
8020128a: 11 a0        	j	0x8020128e <_ZN6kernel6memory9pagetable10PagetableT8mappages17h4f59f251692957f1E+0x10e>
8020128c: 01 46        	li	a2, 0
;     }
8020128e: 32 85        	mv	a0, a2
80201290: ea 60        	ld	ra, 152(sp)
80201292: 4a 64        	ld	s0, 144(sp)
80201294: aa 64        	ld	s1, 136(sp)
80201296: 0a 69        	ld	s2, 128(sp)
80201298: e6 79        	ld	s3, 120(sp)
8020129a: 46 7a        	ld	s4, 112(sp)
8020129c: a6 7a        	ld	s5, 104(sp)
8020129e: 06 7b        	ld	s6, 96(sp)
802012a0: e6 6b        	ld	s7, 88(sp)
802012a2: 46 6c        	ld	s8, 80(sp)
802012a4: a6 6c        	ld	s9, 72(sp)
802012a6: 06 6d        	ld	s10, 64(sp)
802012a8: e2 7d        	ld	s11, 56(sp)
802012aa: 0d 61        	addi	sp, sp, 160
802012ac: 82 80        	ret

00000000802012ae <.LBB2_20>:
802012ae: 17 25 00 00  	auipc	a0, 2
802012b2: 13 05 a5 e2  	addi	a0, a0, -470
802012b6: 23 3c a4 f6  	sd	a0, -136(s0)
802012ba: 05 45        	li	a0, 1
802012bc: 23 30 a4 f8  	sd	a0, -128(s0)
802012c0: 23 34 04 f6  	sd	zero, -152(s0)

00000000802012c4 <.LBB2_21>:
802012c4: 17 25 00 00  	auipc	a0, 2
802012c8: 13 05 45 e0  	addi	a0, a0, -508
802012cc: 23 34 a4 f8  	sd	a0, -120(s0)
802012d0: 23 38 04 f8  	sd	zero, -112(s0)

00000000802012d4 <.LBB2_22>:
;             panic!("walk");
802012d4: 97 25 00 00  	auipc	a1, 2
802012d8: 93 85 c5 e2  	addi	a1, a1, -468
802012dc: 13 05 84 f6  	addi	a0, s0, -152
802012e0: 97 10 00 00  	auipc	ra, 1
802012e4: e7 80 80 0c  	jalr	200(ra)
802012e8: 00 00        	unimp	

00000000802012ea <.LBB2_23>:
802012ea: 17 25 00 00  	auipc	a0, 2
802012ee: 13 05 e5 e3  	addi	a0, a0, -450
802012f2: 23 3c a4 f6  	sd	a0, -136(s0)
802012f6: 05 45        	li	a0, 1
802012f8: 23 30 a4 f8  	sd	a0, -128(s0)
802012fc: 23 34 04 f6  	sd	zero, -152(s0)

0000000080201300 <.LBB2_24>:
80201300: 17 25 00 00  	auipc	a0, 2
80201304: 13 05 85 dc  	addi	a0, a0, -568
80201308: 23 34 a4 f8  	sd	a0, -120(s0)
8020130c: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201310 <.LBB2_25>:
;                 panic!("mappages: remap");
80201310: 97 25 00 00  	auipc	a1, 2
80201314: 93 85 85 e2  	addi	a1, a1, -472
80201318: 13 05 84 f6  	addi	a0, s0, -152
8020131c: 97 10 00 00  	auipc	ra, 1
80201320: e7 80 c0 08  	jalr	140(ra)
80201324: 00 00        	unimp	

0000000080201326 <.LBB2_26>:
80201326: 17 25 00 00  	auipc	a0, 2
8020132a: 13 05 a5 e3  	addi	a0, a0, -454
8020132e: 23 3c a4 f6  	sd	a0, -136(s0)
80201332: 05 45        	li	a0, 1
80201334: 23 30 a4 f8  	sd	a0, -128(s0)
80201338: 23 34 04 f6  	sd	zero, -152(s0)

000000008020133c <.LBB2_27>:
8020133c: 17 25 00 00  	auipc	a0, 2
80201340: 13 05 c5 d8  	addi	a0, a0, -628
80201344: 23 34 a4 f8  	sd	a0, -120(s0)
80201348: 23 38 04 f8  	sd	zero, -112(s0)

000000008020134c <.LBB2_28>:
;             panic!("mappages: size");
8020134c: 97 25 00 00  	auipc	a1, 2
80201350: 93 85 45 e2  	addi	a1, a1, -476
80201354: 13 05 84 f6  	addi	a0, s0, -152
80201358: 97 10 00 00  	auipc	ra, 1
8020135c: e7 80 00 05  	jalr	80(ra)
80201360: 00 00        	unimp	

0000000080201362 <_ZN6kernel7process4proc8procinit17h9dfd349b29923b26E>:
; pub fn procinit() {
80201362: 5d 71        	addi	sp, sp, -80
;         self.0.call_once(builder)
80201364: 86 e4        	sd	ra, 72(sp)
80201366: a2 e0        	sd	s0, 64(sp)
80201368: 80 08        	addi	s0, sp, 80

000000008020136a <.LBB1_5>:
8020136a: 17 45 01 00  	auipc	a0, 20
8020136e: 13 05 65 c9  	addi	a0, a0, -874
80201372: 97 00 00 00  	auipc	ra, 0
80201376: e7 80 e0 c8  	jalr	-882(ra)
8020137a: 13 05 05 02  	addi	a0, a0, 32
8020137e: 93 05 00 04  	li	a1, 64
80201382: 37 06 00 04  	lui	a2, 16384
80201386: 75 36        	addiw	a2, a2, -3
80201388: 32 06        	slli	a2, a2, 12
8020138a: f9 76        	lui	a3, 1048574
;         proc[i].kstack = kstack(i);
8020138c: 10 e1        	sd	a2, 0(a0)
8020138e: 36 96        	add	a2, a2, a3
80201390: fd 15        	addi	a1, a1, -1
80201392: 13 05 05 03  	addi	a0, a0, 48
80201396: fd f9        	bnez	a1, 0x8020138c <.LBB1_5+0x22>
80201398: 13 05 84 fe  	addi	a0, s0, -24
8020139c: 23 38 a4 fa  	sd	a0, -80(s0)
802013a0: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802013a4 <.LBB1_6>:
802013a4: 17 25 00 00  	auipc	a0, 2
802013a8: 13 05 c5 df  	addi	a0, a0, -516
802013ac: 23 34 a4 fc  	sd	a0, -56(s0)
802013b0: 05 45        	li	a0, 1
802013b2: 23 38 a4 fc  	sd	a0, -48(s0)

00000000802013b6 <.LBB1_7>:
802013b6: 17 25 00 00  	auipc	a0, 2
802013ba: 13 05 25 dd  	addi	a0, a0, -558
802013be: 23 3c a4 fc  	sd	a0, -40(s0)
802013c2: 23 30 04 fe  	sd	zero, -32(s0)

00000000802013c6 <.LBB1_8>:
802013c6: 97 25 00 00  	auipc	a1, 2
802013ca: 93 85 25 1e  	addi	a1, a1, 482
802013ce: 13 05 04 fb  	addi	a0, s0, -80
802013d2: 13 06 84 fb  	addi	a2, s0, -72
802013d6: 97 10 00 00  	auipc	ra, 1
802013da: e7 80 a0 0e  	jalr	234(ra)
802013de: 09 e5        	bnez	a0, 0x802013e8 <.LBB1_9>
; }
802013e0: a6 60        	ld	ra, 72(sp)
802013e2: 06 64        	ld	s0, 64(sp)
802013e4: 61 61        	addi	sp, sp, 80
802013e6: 82 80        	ret

00000000802013e8 <.LBB1_9>:
802013e8: 17 25 00 00  	auipc	a0, 2
802013ec: 13 05 05 1f  	addi	a0, a0, 496

00000000802013f0 <.LBB1_10>:
802013f0: 97 26 00 00  	auipc	a3, 2
802013f4: 93 86 86 21  	addi	a3, a3, 536

00000000802013f8 <.LBB1_11>:
802013f8: 17 27 00 00  	auipc	a4, 2
802013fc: 13 07 07 24  	addi	a4, a4, 576
80201400: 93 05 b0 02  	li	a1, 43
80201404: 13 06 84 fe  	addi	a2, s0, -24
80201408: 97 10 00 00  	auipc	ra, 1
8020140c: e7 80 a0 03  	jalr	58(ra)
80201410: 00 00        	unimp	

0000000080201412 <_ZN6kernel3sbi8shutdown17hd361d6be3bb08acfE>:
; pub fn shutdown() -> ! {
80201412: 39 71        	addi	sp, sp, -64
;         asm!(
80201414: 06 fc        	sd	ra, 56(sp)
80201416: 22 f8        	sd	s0, 48(sp)
80201418: 80 00        	addi	s0, sp, 64
8020141a: a1 48        	li	a7, 8
8020141c: 01 45        	li	a0, 0
8020141e: 81 45        	li	a1, 0
80201420: 01 46        	li	a2, 0
80201422: 73 00 00 00  	ecall	

0000000080201426 <.LBB1_1>:
80201426: 17 25 00 00  	auipc	a0, 2
8020142a: 13 05 25 da  	addi	a0, a0, -606
8020142e: 23 38 a4 fc  	sd	a0, -48(s0)
80201432: 05 45        	li	a0, 1
80201434: 23 3c a4 fc  	sd	a0, -40(s0)
80201438: 23 30 04 fc  	sd	zero, -64(s0)

000000008020143c <.LBB1_2>:
8020143c: 17 25 00 00  	auipc	a0, 2
80201440: 13 05 45 d7  	addi	a0, a0, -652
80201444: 23 30 a4 fe  	sd	a0, -32(s0)
80201448: 23 34 04 fe  	sd	zero, -24(s0)

000000008020144c <.LBB1_3>:
;     panic!("It should shutdown!");
8020144c: 97 25 00 00  	auipc	a1, 2
80201450: 93 85 c5 d9  	addi	a1, a1, -612
80201454: 13 05 04 fc  	addi	a0, s0, -64
80201458: 97 10 00 00  	auipc	ra, 1
8020145c: e7 80 00 f5  	jalr	-176(ra)
80201460: 00 00        	unimp	

0000000080201462 <_ZN6kernel4logo10print_logo17h58a325dd139e3d66E>:
; pub fn print_logo() {
80201462: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
80201464: 86 ec        	sd	ra, 88(sp)
80201466: a2 e8        	sd	s0, 80(sp)
80201468: 80 10        	addi	s0, sp, 96

000000008020146a <.LBB0_3>:
8020146a: 17 25 00 00  	auipc	a0, 2
8020146e: 13 05 65 f1  	addi	a0, a0, -234
80201472: 23 30 a4 fa  	sd	a0, -96(s0)

0000000080201476 <.LBB0_4>:
80201476: 17 05 00 00  	auipc	a0, 0
8020147a: 13 05 45 08  	addi	a0, a0, 132
8020147e: 23 34 a4 fa  	sd	a0, -88(s0)
80201482: 13 05 84 fe  	addi	a0, s0, -24
80201486: 23 38 a4 fa  	sd	a0, -80(s0)
8020148a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020148e <.LBB0_5>:
8020148e: 17 25 00 00  	auipc	a0, 2
80201492: 13 05 a5 d7  	addi	a0, a0, -646
80201496: 23 34 a4 fc  	sd	a0, -56(s0)
8020149a: 09 45        	li	a0, 2
8020149c: 23 38 a4 fc  	sd	a0, -48(s0)
802014a0: 13 05 04 fa  	addi	a0, s0, -96
802014a4: 23 3c a4 fc  	sd	a0, -40(s0)
802014a8: 05 45        	li	a0, 1
802014aa: 23 30 a4 fe  	sd	a0, -32(s0)

00000000802014ae <.LBB0_6>:
802014ae: 97 25 00 00  	auipc	a1, 2
802014b2: 93 85 a5 0f  	addi	a1, a1, 250
802014b6: 13 05 04 fb  	addi	a0, s0, -80
802014ba: 13 06 84 fb  	addi	a2, s0, -72
802014be: 97 10 00 00  	auipc	ra, 1
802014c2: e7 80 20 00  	jalr	2(ra)
802014c6: 09 e5        	bnez	a0, 0x802014d0 <.LBB0_7>
; }
802014c8: e6 60        	ld	ra, 88(sp)
802014ca: 46 64        	ld	s0, 80(sp)
802014cc: 25 61        	addi	sp, sp, 96
802014ce: 82 80        	ret

00000000802014d0 <.LBB0_7>:
802014d0: 17 25 00 00  	auipc	a0, 2
802014d4: 13 05 85 10  	addi	a0, a0, 264

00000000802014d8 <.LBB0_8>:
802014d8: 97 26 00 00  	auipc	a3, 2
802014dc: 93 86 06 13  	addi	a3, a3, 304

00000000802014e0 <.LBB0_9>:
802014e0: 17 27 00 00  	auipc	a4, 2
802014e4: 13 07 87 15  	addi	a4, a4, 344
802014e8: 93 05 b0 02  	li	a1, 43
802014ec: 13 06 84 fe  	addi	a2, s0, -24
802014f0: 97 10 00 00  	auipc	ra, 1
802014f4: e7 80 20 f5  	jalr	-174(ra)
802014f8: 00 00        	unimp	

00000000802014fa <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h48d9087dd4711a3dE>:
802014fa: 41 11        	addi	sp, sp, -16
802014fc: 06 e4        	sd	ra, 8(sp)
802014fe: 22 e0        	sd	s0, 0(sp)
80201500: 00 08        	addi	s0, sp, 16
80201502: 10 61        	ld	a2, 0(a0)
80201504: 14 65        	ld	a3, 8(a0)
80201506: 2e 87        	mv	a4, a1
80201508: 32 85        	mv	a0, a2
8020150a: b6 85        	mv	a1, a3
8020150c: 3a 86        	mv	a2, a4
8020150e: a2 60        	ld	ra, 8(sp)
80201510: 02 64        	ld	s0, 0(sp)
80201512: 41 01        	addi	sp, sp, 16
80201514: 17 13 00 00  	auipc	t1, 1
80201518: 67 00 03 60  	jr	1536(t1)

000000008020151c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbedaf3cb1d18143eE>:
8020151c: 41 11        	addi	sp, sp, -16
8020151e: 06 e4        	sd	ra, 8(sp)
80201520: 22 e0        	sd	s0, 0(sp)
80201522: 00 08        	addi	s0, sp, 16
80201524: 08 61        	ld	a0, 0(a0)
80201526: a2 60        	ld	ra, 8(sp)
80201528: 02 64        	ld	s0, 0(sp)
8020152a: 41 01        	addi	sp, sp, 16
8020152c: 17 13 00 00  	auipc	t1, 1
80201530: 67 00 23 f6  	jr	-158(t1)

0000000080201534 <_ZN6kernel4lock8spinlock8Spinlock7acquire17hda67305e3bb91066E>:
;     pub fn acquire(&mut self) {
80201534: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80201536: 06 fc        	sd	ra, 56(sp)
80201538: 22 f8        	sd	s0, 48(sp)
8020153a: 80 00        	addi	s0, sp, 64
8020153c: 73 26 00 10  	csrr	a2, sstatus
80201540: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80201542: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201546: 92 86        	mv	a3, tp
80201548: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
8020154a: 63 f2 b6 0a  	bgeu	a3, a1, 0x802015ee <.LBB1_12>
8020154e: e1 45        	li	a1, 24
;     if mc.noff == 0 {
80201550: b3 86 b6 02  	mul	a3, a3, a1

0000000080201554 <.LBB1_11>:
80201554: 17 48 01 00  	auipc	a6, 20
80201558: 13 08 c8 6b  	addi	a6, a6, 1724
8020155c: b3 07 d8 00  	add	a5, a6, a3
80201560: 98 67        	ld	a4, 8(a5)
80201562: 93 86 87 00  	addi	a3, a5, 8
80201566: 09 e7        	bnez	a4, 0x80201570 <.LBB1_11+0x1c>
;         mc.intena = old;
80201568: 7a 16        	slli	a2, a2, 62
8020156a: 7d 92        	srli	a2, a2, 63
8020156c: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
80201570: 13 06 17 00  	addi	a2, a4, 1
80201574: 90 e2        	sd	a2, 0(a3)
80201576: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020157a: 93 08 85 01  	addi	a7, a0, 24
8020157e: 81 ce        	beqz	a3, 0x80201596 <.LBB1_11+0x42>
80201580: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201582: 92 86        	mv	a3, tp
80201584: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
80201586: 63 f4 f6 06  	bgeu	a3, a5, 0x802015ee <.LBB1_12>
8020158a: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
8020158c: b3 86 f6 02  	mul	a3, a3, a5
80201590: c2 96        	add	a3, a3, a6
;         if self.holding() {
80201592: 63 09 d7 06  	beq	a4, a3, 0x80201604 <.LBB1_13>
80201596: 93 f6 c8 ff  	andi	a3, a7, -4
8020159a: 1b 97 38 00  	slliw	a4, a7, 3
8020159e: 93 07 f0 0f  	li	a5, 255
802015a2: bb 97 e7 00  	sllw	a5, a5, a4
802015a6: 85 45        	li	a1, 1
802015a8: bb 95 e5 00  	sllw	a1, a1, a4
802015ac: 82 15        	slli	a1, a1, 32
802015ae: 81 91        	srli	a1, a1, 32
802015b0: 2f a7 06 14  	lr.w.aq	a4, (a3)
802015b4: 33 76 f7 00  	and	a2, a4, a5
802015b8: 01 ea        	bnez	a2, 0x802015c8 <.LBB1_11+0x74>
802015ba: 33 46 b7 00  	xor	a2, a4, a1
802015be: 7d 8e        	and	a2, a2, a5
802015c0: 39 8e        	xor	a2, a2, a4
802015c2: 2f a6 c6 18  	sc.w	a2, a2, (a3)
802015c6: 6d f6        	bnez	a2, 0x802015b0 <.LBB1_11+0x5c>
802015c8: b3 75 f7 00  	and	a1, a4, a5
802015cc: 81 25        	sext.w	a1, a1
;         while self
802015ce: e1 f5        	bnez	a1, 0x80201596 <.LBB1_11+0x42>
802015d0: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802015d4: 92 86        	mv	a3, tp
802015d6: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802015d8: 63 fb b6 00  	bgeu	a3, a1, 0x802015ee <.LBB1_12>
802015dc: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802015de: b3 85 b6 02  	mul	a1, a3, a1
802015e2: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
802015e4: 0c e9        	sd	a1, 16(a0)
;     }
802015e6: e2 70        	ld	ra, 56(sp)
802015e8: 42 74        	ld	s0, 48(sp)
802015ea: 21 61        	addi	sp, sp, 64
802015ec: 82 80        	ret

00000000802015ee <.LBB1_12>:
802015ee: 17 26 00 00  	auipc	a2, 2
802015f2: 13 06 a6 db  	addi	a2, a2, -582
802015f6: a1 45        	li	a1, 8
802015f8: 36 85        	mv	a0, a3
802015fa: 97 10 00 00  	auipc	ra, 1
802015fe: e7 80 80 e0  	jalr	-504(ra)
80201602: 00 00        	unimp	

0000000080201604 <.LBB1_13>:
80201604: 17 25 00 00  	auipc	a0, 2
80201608: 13 05 45 dc  	addi	a0, a0, -572
8020160c: 23 38 a4 fc  	sd	a0, -48(s0)
80201610: 05 45        	li	a0, 1
80201612: 23 3c a4 fc  	sd	a0, -40(s0)
80201616: 23 30 04 fc  	sd	zero, -64(s0)

000000008020161a <.LBB1_14>:
8020161a: 17 25 00 00  	auipc	a0, 2
8020161e: 13 05 65 da  	addi	a0, a0, -602
80201622: 23 30 a4 fe  	sd	a0, -32(s0)
80201626: 23 34 04 fe  	sd	zero, -24(s0)

000000008020162a <.LBB1_15>:
;             panic!("acquire");
8020162a: 97 25 00 00  	auipc	a1, 2
8020162e: 93 85 65 dc  	addi	a1, a1, -570
80201632: 13 05 04 fc  	addi	a0, s0, -64
80201636: 97 10 00 00  	auipc	ra, 1
8020163a: e7 80 20 d7  	jalr	-654(ra)
8020163e: 00 00        	unimp	

0000000080201640 <_ZN6kernel4lock8spinlock8Spinlock7release17ha6b34005adcff3a7E>:
;     pub fn release(&mut self) {
80201640: 39 71        	addi	sp, sp, -64
80201642: 06 fc        	sd	ra, 56(sp)
80201644: 22 f8        	sd	s0, 48(sp)
80201646: 80 00        	addi	s0, sp, 64
80201648: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020164c: dd c1        	beqz	a1, 0x802016f2 <.LBB2_19>
8020164e: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201650: 92 86        	mv	a3, tp
80201652: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
80201654: 63 fa b6 06  	bgeu	a3, a1, 0x802016c8 <.LBB2_17>
80201658: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
8020165a: b3 86 b6 02  	mul	a3, a3, a1

000000008020165e <.LBB2_16>:
8020165e: 97 45 01 00  	auipc	a1, 20
80201662: 93 85 25 5b  	addi	a1, a1, 1458
80201666: ae 96        	add	a3, a3, a1
;         if !self.holding() {
80201668: 63 15 d6 08  	bne	a2, a3, 0x802016f2 <.LBB2_19>
;         self.cpu = null_mut();
8020166c: 23 38 05 00  	sd	zero, 16(a0)
80201670: 0f 00 30 03  	fence	rw, rw
80201674: 0f 00 10 03  	fence	rw, w
80201678: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020167c: 12 85        	mv	a0, tp
8020167e: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
80201680: 63 7f c5 04  	bgeu	a0, a2, 0x802016de <.LBB2_18>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80201684: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
80201688: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
8020168a: 41 ee        	bnez	a2, 0x80201722 <.LBB2_22>
8020168c: 61 46        	li	a2, 24
;     if mc.noff < 1 {
8020168e: 33 06 c5 02  	mul	a2, a0, a2
80201692: b3 86 c5 00  	add	a3, a1, a2
80201696: 90 66        	ld	a2, 8(a3)
80201698: 63 5d c0 0a  	blez	a2, 0x80201752 <.LBB2_25>
8020169c: a1 06        	addi	a3, a3, 8
;     mc.noff -= 1;
8020169e: 7d 16        	addi	a2, a2, -1
802016a0: 90 e2        	sd	a2, 0(a3)
;     if mc.noff == 0 && mc.intena {
802016a2: 09 c6        	beqz	a2, 0x802016ac <.LBB2_16+0x4e>
;     }
802016a4: e2 70        	ld	ra, 56(sp)
802016a6: 42 74        	ld	s0, 48(sp)
802016a8: 21 61        	addi	sp, sp, 64
802016aa: 82 80        	ret
802016ac: 61 46        	li	a2, 24
;     if mc.noff == 0 && mc.intena {
802016ae: 33 05 c5 02  	mul	a0, a0, a2
802016b2: 2e 95        	add	a0, a0, a1
802016b4: 03 45 05 01  	lbu	a0, 16(a0)
802016b8: 75 d5        	beqz	a0, 0x802016a4 <.LBB2_16+0x46>
802016ba: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
802016bc: 73 20 05 10  	csrs	sstatus, a0
;     }
802016c0: e2 70        	ld	ra, 56(sp)
802016c2: 42 74        	ld	s0, 48(sp)
802016c4: 21 61        	addi	sp, sp, 64
802016c6: 82 80        	ret

00000000802016c8 <.LBB2_17>:
;     unsafe { &mut CPUS[id] }
802016c8: 17 26 00 00  	auipc	a2, 2
802016cc: 13 06 06 ce  	addi	a2, a2, -800
802016d0: a1 45        	li	a1, 8
802016d2: 36 85        	mv	a0, a3
802016d4: 97 10 00 00  	auipc	ra, 1
802016d8: e7 80 e0 d2  	jalr	-722(ra)
802016dc: 00 00        	unimp	

00000000802016de <.LBB2_18>:
802016de: 17 26 00 00  	auipc	a2, 2
802016e2: 13 06 a6 cc  	addi	a2, a2, -822
802016e6: a1 45        	li	a1, 8
802016e8: 97 10 00 00  	auipc	ra, 1
802016ec: e7 80 a0 d1  	jalr	-742(ra)
802016f0: 00 00        	unimp	

00000000802016f2 <.LBB2_19>:
802016f2: 17 25 00 00  	auipc	a0, 2
802016f6: 13 05 e5 d1  	addi	a0, a0, -738
802016fa: 23 38 a4 fc  	sd	a0, -48(s0)
802016fe: 05 45        	li	a0, 1
80201700: 23 3c a4 fc  	sd	a0, -40(s0)
80201704: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201708 <.LBB2_20>:
80201708: 17 25 00 00  	auipc	a0, 2
8020170c: 13 05 85 cb  	addi	a0, a0, -840
80201710: 23 30 a4 fe  	sd	a0, -32(s0)
80201714: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201718 <.LBB2_21>:
;             panic!("release");
80201718: 97 25 00 00  	auipc	a1, 2
8020171c: 93 85 85 d0  	addi	a1, a1, -760
80201720: 85 a0        	j	0x80201780 <.LBB2_27+0x8>

0000000080201722 <.LBB2_22>:
80201722: 17 25 00 00  	auipc	a0, 2
80201726: 13 05 e5 d2  	addi	a0, a0, -722
8020172a: 23 38 a4 fc  	sd	a0, -48(s0)
8020172e: 05 45        	li	a0, 1
80201730: 23 3c a4 fc  	sd	a0, -40(s0)
80201734: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201738 <.LBB2_23>:
80201738: 17 25 00 00  	auipc	a0, 2
8020173c: 13 05 85 c8  	addi	a0, a0, -888
80201740: 23 30 a4 fe  	sd	a0, -32(s0)
80201744: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201748 <.LBB2_24>:
;         panic!("pop_off - interruptible");
80201748: 97 25 00 00  	auipc	a1, 2
8020174c: 93 85 85 d1  	addi	a1, a1, -744
80201750: 05 a8        	j	0x80201780 <.LBB2_27+0x8>

0000000080201752 <.LBB2_25>:
80201752: 17 25 00 00  	auipc	a0, 2
80201756: 13 05 e5 d2  	addi	a0, a0, -722
8020175a: 23 38 a4 fc  	sd	a0, -48(s0)
8020175e: 05 45        	li	a0, 1
80201760: 23 3c a4 fc  	sd	a0, -40(s0)
80201764: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201768 <.LBB2_26>:
80201768: 17 25 00 00  	auipc	a0, 2
8020176c: 13 05 85 c5  	addi	a0, a0, -936
80201770: 23 30 a4 fe  	sd	a0, -32(s0)
80201774: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201778 <.LBB2_27>:
;         panic!("pop_off");
80201778: 97 25 00 00  	auipc	a1, 2
8020177c: 93 85 85 d1  	addi	a1, a1, -744
80201780: 13 05 04 fc  	addi	a0, s0, -64
80201784: 97 10 00 00  	auipc	ra, 1
80201788: e7 80 40 c2  	jalr	-988(ra)
8020178c: 00 00        	unimp	

000000008020178e <_ZN6kernel6memory6kalloc5kinit17hb06d34dacad1b97cE>:
; pub fn kinit() {
8020178e: 19 71        	addi	sp, sp, -128
80201790: 86 fc        	sd	ra, 120(sp)
80201792: a2 f8        	sd	s0, 112(sp)
80201794: a6 f4        	sd	s1, 104(sp)
80201796: ca f0        	sd	s2, 96(sp)
80201798: ce ec        	sd	s3, 88(sp)
8020179a: d2 e8        	sd	s4, 80(sp)
8020179c: d6 e4        	sd	s5, 72(sp)
8020179e: 00 01        	addi	s0, sp, 128
802017a0: 0f 00 30 03  	fence	rw, rw

00000000802017a4 <.LBB1_17>:
802017a4: 97 49 01 00  	auipc	s3, 20
802017a8: 93 89 c9 52  	addi	s3, s3, 1324
802017ac: 03 b5 09 03  	ld	a0, 48(s3)
802017b0: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802017b4: 21 ed        	bnez	a0, 0x8020180c <.LBB1_18+0x3a>
802017b6: 93 85 09 03  	addi	a1, s3, 48
802017ba: 05 46        	li	a2, 1
802017bc: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802017c0: 01 e5        	bnez	a0, 0x802017c8 <.LBB1_17+0x24>
802017c2: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802017c6: fd fa        	bnez	a3, 0x802017bc <.LBB1_17+0x18>
;             if status == INCOMPLETE { // We init
802017c8: 31 e1        	bnez	a0, 0x8020180c <.LBB1_18+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802017ca: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802017ce: 23 b0 c9 00  	sd	a2, 0(s3)

00000000802017d2 <.LBB1_18>:
802017d2: 17 25 00 00  	auipc	a0, 2
802017d6: 13 05 e5 8f  	addi	a0, a0, -1794
802017da: 23 b4 a9 00  	sd	a0, 8(s3)
802017de: 11 45        	li	a0, 4
802017e0: 23 b8 a9 00  	sd	a0, 16(s3)
802017e4: 23 bc 09 00  	sd	zero, 24(s3)
802017e8: 23 80 09 02  	sb	zero, 32(s3)
802017ec: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
802017f0: 23 0c 04 f8  	sb	zero, -104(s0)
802017f4: 0f 00 10 03  	fence	rw, w
802017f8: 09 45        	li	a0, 2
802017fa: 23 b8 a9 02  	sd	a0, 48(s3)
802017fe: 13 05 04 f9  	addi	a0, s0, -112
80201802: 97 10 00 00  	auipc	ra, 1
80201806: e7 80 c0 b6  	jalr	-1172(ra)
8020180a: 0d a0        	j	0x8020182c <.LBB1_19>
8020180c: 85 45        	li	a1, 1
;             match status {
8020180e: 63 1c b5 00  	bne	a0, a1, 0x80201826 <.LBB1_18+0x54>
80201812: 0f 00 00 01  	fence	w, 0
80201816: 0f 00 30 03  	fence	rw, rw
8020181a: 03 b5 09 03  	ld	a0, 48(s3)
8020181e: 0f 00 30 02  	fence	r, rw
;             match status {
80201822: e3 08 b5 fe  	beq	a0, a1, 0x80201812 <.LBB1_18+0x40>
80201826: 89 45        	li	a1, 2
;             match status {
80201828: 63 17 b5 0c  	bne	a0, a1, 0x802018f6 <.LBB1_22+0x2c>

000000008020182c <.LBB1_19>:
;         while pa < pa_end - PGSIZE {
8020182c: 17 45 01 00  	auipc	a0, 20
80201830: 13 05 45 7d  	addi	a0, a0, 2004
80201834: 85 65        	lui	a1, 1
80201836: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80201838: aa 95        	add	a1, a1, a0
8020183a: 7d 76        	lui	a2, 1048575
8020183c: f1 8d        	and	a1, a1, a2
8020183e: 37 86 08 00  	lui	a2, 136
80201842: 7d 36        	addiw	a2, a2, -1
80201844: 32 06        	slli	a2, a2, 12
80201846: 7d 16        	addi	a2, a2, -1
80201848: 63 6a b6 04  	bltu	a2, a1, 0x8020189c <.LBB1_19+0x70>
8020184c: 63 e8 a5 10  	bltu	a1, a0, 0x8020195c <.LBB1_30>
80201850: 05 6a        	lui	s4, 1
80201852: 9b 05 fa ff  	addiw	a1, s4, -1
80201856: 2e 95        	add	a0, a0, a1
80201858: fd 75        	lui	a1, 1048575
8020185a: 6d 8d        	and	a0, a0, a1
8020185c: 13 89 89 00  	addi	s2, s3, 8
80201860: b7 f5 ff 43  	lui	a1, 278527
80201864: 93 9a 15 00  	slli	s5, a1, 1
80201868: aa 84        	mv	s1, a0
8020186a: 85 45        	li	a1, 1
8020186c: 05 66        	lui	a2, 1
8020186e: 97 10 00 00  	auipc	ra, 1
80201872: e7 80 a0 60  	jalr	1546(ra)
;         self.lock.acquire();
80201876: 4a 85        	mv	a0, s2
80201878: 97 00 00 00  	auipc	ra, 0
8020187c: e7 80 c0 cb  	jalr	-836(ra)
;         unsafe { (*pa).next = self.freelist }
80201880: 03 b5 89 02  	ld	a0, 40(s3)
80201884: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80201886: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
8020188a: 4a 85        	mv	a0, s2
8020188c: 97 00 00 00  	auipc	ra, 0
80201890: e7 80 40 db  	jalr	-588(ra)
;             pa += PGSIZE;
80201894: 33 85 44 01  	add	a0, s1, s4
80201898: e3 e8 54 fd  	bltu	s1, s5, 0x80201868 <.LBB1_19+0x3c>
8020189c: 13 05 04 fc  	addi	a0, s0, -64
802018a0: 23 34 a4 f8  	sd	a0, -120(s0)
802018a4: 23 38 04 f8  	sd	zero, -112(s0)

00000000802018a8 <.LBB1_20>:
802018a8: 17 25 00 00  	auipc	a0, 2
802018ac: 13 05 85 c5  	addi	a0, a0, -936
802018b0: 23 30 a4 fa  	sd	a0, -96(s0)
802018b4: 05 45        	li	a0, 1
802018b6: 23 34 a4 fa  	sd	a0, -88(s0)

00000000802018ba <.LBB1_21>:
802018ba: 17 25 00 00  	auipc	a0, 2
802018be: 13 05 e5 be  	addi	a0, a0, -1042
802018c2: 23 38 a4 fa  	sd	a0, -80(s0)
802018c6: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802018ca <.LBB1_22>:
802018ca: 97 25 00 00  	auipc	a1, 2
802018ce: 93 85 e5 cd  	addi	a1, a1, -802
802018d2: 13 05 84 f8  	addi	a0, s0, -120
802018d6: 13 06 04 f9  	addi	a2, s0, -112
802018da: 97 10 00 00  	auipc	ra, 1
802018de: e7 80 60 be  	jalr	-1050(ra)
802018e2: 21 e9        	bnez	a0, 0x80201932 <.LBB1_27>
; }
802018e4: e6 70        	ld	ra, 120(sp)
802018e6: 46 74        	ld	s0, 112(sp)
802018e8: a6 74        	ld	s1, 104(sp)
802018ea: 06 79        	ld	s2, 96(sp)
802018ec: e6 69        	ld	s3, 88(sp)
802018ee: 46 6a        	ld	s4, 80(sp)
802018f0: a6 6a        	ld	s5, 72(sp)
802018f2: 09 61        	addi	sp, sp, 128
802018f4: 82 80        	ret
;             match status {
802018f6: 05 e1        	bnez	a0, 0x80201916 <.LBB1_25>

00000000802018f8 <.LBB1_23>:
;                 INCOMPLETE => unreachable!(),
802018f8: 17 15 00 00  	auipc	a0, 1
802018fc: 13 05 05 79  	addi	a0, a0, 1936

0000000080201900 <.LBB1_24>:
80201900: 17 16 00 00  	auipc	a2, 1
80201904: 13 06 06 7b  	addi	a2, a2, 1968
80201908: 93 05 80 02  	li	a1, 40
8020190c: 97 10 00 00  	auipc	ra, 1
80201910: e7 80 a0 ac  	jalr	-1334(ra)
80201914: 00 00        	unimp	

0000000080201916 <.LBB1_25>:
;                 PANICKED => panic!("Once has panicked"),
80201916: 17 15 00 00  	auipc	a0, 1
8020191a: 13 05 a5 6e  	addi	a0, a0, 1770

000000008020191e <.LBB1_26>:
8020191e: 17 16 00 00  	auipc	a2, 1
80201922: 13 06 26 75  	addi	a2, a2, 1874
80201926: c5 45        	li	a1, 17
80201928: 97 10 00 00  	auipc	ra, 1
8020192c: e7 80 e0 aa  	jalr	-1362(ra)
80201930: 00 00        	unimp	

0000000080201932 <.LBB1_27>:
80201932: 17 25 00 00  	auipc	a0, 2
80201936: 13 05 65 ca  	addi	a0, a0, -858

000000008020193a <.LBB1_28>:
8020193a: 97 26 00 00  	auipc	a3, 2
8020193e: 93 86 e6 cc  	addi	a3, a3, -818

0000000080201942 <.LBB1_29>:
80201942: 17 27 00 00  	auipc	a4, 2
80201946: 13 07 67 cf  	addi	a4, a4, -778
8020194a: 93 05 b0 02  	li	a1, 43
8020194e: 13 06 04 fc  	addi	a2, s0, -64
80201952: 97 10 00 00  	auipc	ra, 1
80201956: e7 80 00 af  	jalr	-1296(ra)
8020195a: 00 00        	unimp	

000000008020195c <.LBB1_30>:
8020195c: 17 25 00 00  	auipc	a0, 2
80201960: 13 05 45 b5  	addi	a0, a0, -1196
80201964: 23 30 a4 fa  	sd	a0, -96(s0)
80201968: 05 45        	li	a0, 1
8020196a: 23 34 a4 fa  	sd	a0, -88(s0)
8020196e: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201972 <.LBB1_31>:
80201972: 17 25 00 00  	auipc	a0, 2
80201976: 13 05 65 b3  	addi	a0, a0, -1226
8020197a: 23 38 a4 fa  	sd	a0, -80(s0)
8020197e: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201982 <.LBB1_32>:
;             panic!("kfree");
80201982: 97 25 00 00  	auipc	a1, 2
80201986: 93 85 65 b5  	addi	a1, a1, -1194
8020198a: 13 05 04 f9  	addi	a0, s0, -112
8020198e: 97 10 00 00  	auipc	ra, 1
80201992: e7 80 a0 a1  	jalr	-1510(ra)
80201996: 00 00        	unimp	

0000000080201998 <_ZN6kernel6memory6kalloc6kalloc17h5aaf3c1e5e8c6edeE>:
; pub fn kalloc() -> Addr {
80201998: 39 71        	addi	sp, sp, -64
8020199a: 06 fc        	sd	ra, 56(sp)
8020199c: 22 f8        	sd	s0, 48(sp)
8020199e: 26 f4        	sd	s1, 40(sp)
802019a0: 4a f0        	sd	s2, 32(sp)
802019a2: 4e ec        	sd	s3, 24(sp)
802019a4: 80 00        	addi	s0, sp, 64
802019a6: 0f 00 30 03  	fence	rw, rw

00000000802019aa <.LBB2_13>:
802019aa: 97 44 01 00  	auipc	s1, 20
802019ae: 93 84 64 32  	addi	s1, s1, 806
802019b2: 88 78        	ld	a0, 48(s1)
802019b4: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802019b8: 21 e9        	bnez	a0, 0x80201a08 <.LBB2_14+0x34>
802019ba: 93 85 04 03  	addi	a1, s1, 48
802019be: 05 46        	li	a2, 1
802019c0: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802019c4: 01 e5        	bnez	a0, 0x802019cc <.LBB2_13+0x22>
802019c6: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
802019ca: fd fa        	bnez	a3, 0x802019c0 <.LBB2_13+0x16>
;             if status == INCOMPLETE { // We init
802019cc: 15 ed        	bnez	a0, 0x80201a08 <.LBB2_14+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802019ce: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802019d2: 90 e0        	sd	a2, 0(s1)

00000000802019d4 <.LBB2_14>:
802019d4: 17 15 00 00  	auipc	a0, 1
802019d8: 13 05 c5 6f  	addi	a0, a0, 1788
802019dc: 88 e4        	sd	a0, 8(s1)
802019de: 11 45        	li	a0, 4
802019e0: 88 e8        	sd	a0, 16(s1)
802019e2: 23 bc 04 00  	sd	zero, 24(s1)
802019e6: 23 80 04 02  	sb	zero, 32(s1)
802019ea: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
802019ee: 23 08 04 fc  	sb	zero, -48(s0)
802019f2: 0f 00 10 03  	fence	rw, w
802019f6: 09 45        	li	a0, 2
802019f8: 88 f8        	sd	a0, 48(s1)
802019fa: 13 05 84 fc  	addi	a0, s0, -56
802019fe: 97 10 00 00  	auipc	ra, 1
80201a02: e7 80 00 97  	jalr	-1680(ra)
80201a06: 05 a0        	j	0x80201a26 <.LBB2_14+0x52>
80201a08: 85 45        	li	a1, 1
;             match status {
80201a0a: 63 1b b5 00  	bne	a0, a1, 0x80201a20 <.LBB2_14+0x4c>
80201a0e: 0f 00 00 01  	fence	w, 0
80201a12: 0f 00 30 03  	fence	rw, rw
80201a16: 88 78        	ld	a0, 48(s1)
80201a18: 0f 00 30 02  	fence	r, rw
;             match status {
80201a1c: e3 09 b5 fe  	beq	a0, a1, 0x80201a0e <.LBB2_14+0x3a>
80201a20: 89 45        	li	a1, 2
;             match status {
80201a22: 63 1a b5 04  	bne	a0, a1, 0x80201a76 <.LBB2_14+0xa2>
;         self.lock.acquire();
80201a26: 13 89 84 00  	addi	s2, s1, 8
80201a2a: 4a 85        	mv	a0, s2
80201a2c: 97 00 00 00  	auipc	ra, 0
80201a30: e7 80 80 b0  	jalr	-1272(ra)
;         r = self.freelist;
80201a34: 83 b9 84 02  	ld	s3, 40(s1)
80201a38: 63 82 09 02  	beqz	s3, 0x80201a5c <.LBB2_14+0x88>
;             unsafe { self.freelist = (*r).next }
80201a3c: 03 b5 09 00  	ld	a0, 0(s3)
80201a40: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
80201a42: 4a 85        	mv	a0, s2
80201a44: 97 00 00 00  	auipc	ra, 0
80201a48: e7 80 c0 bf  	jalr	-1028(ra)
80201a4c: 95 45        	li	a1, 5
80201a4e: 05 66        	lui	a2, 1
80201a50: 4e 85        	mv	a0, s3
80201a52: 97 10 00 00  	auipc	ra, 1
80201a56: e7 80 60 42  	jalr	1062(ra)
80201a5a: 31 a0        	j	0x80201a66 <.LBB2_14+0x92>
;         self.lock.release();
80201a5c: 4a 85        	mv	a0, s2
80201a5e: 97 00 00 00  	auipc	ra, 0
80201a62: e7 80 20 be  	jalr	-1054(ra)
; }
80201a66: 4e 85        	mv	a0, s3
80201a68: e2 70        	ld	ra, 56(sp)
80201a6a: 42 74        	ld	s0, 48(sp)
80201a6c: a2 74        	ld	s1, 40(sp)
80201a6e: 02 79        	ld	s2, 32(sp)
80201a70: e2 69        	ld	s3, 24(sp)
80201a72: 21 61        	addi	sp, sp, 64
80201a74: 82 80        	ret
;             match status {
80201a76: 05 e1        	bnez	a0, 0x80201a96 <.LBB2_17>

0000000080201a78 <.LBB2_15>:
;                 INCOMPLETE => unreachable!(),
80201a78: 17 15 00 00  	auipc	a0, 1
80201a7c: 13 05 05 61  	addi	a0, a0, 1552

0000000080201a80 <.LBB2_16>:
80201a80: 17 16 00 00  	auipc	a2, 1
80201a84: 13 06 06 63  	addi	a2, a2, 1584
80201a88: 93 05 80 02  	li	a1, 40
80201a8c: 97 10 00 00  	auipc	ra, 1
80201a90: e7 80 a0 94  	jalr	-1718(ra)
80201a94: 00 00        	unimp	

0000000080201a96 <.LBB2_17>:
;                 PANICKED => panic!("Once has panicked"),
80201a96: 17 15 00 00  	auipc	a0, 1
80201a9a: 13 05 a5 56  	addi	a0, a0, 1386

0000000080201a9e <.LBB2_18>:
80201a9e: 17 16 00 00  	auipc	a2, 1
80201aa2: 13 06 26 5d  	addi	a2, a2, 1490
80201aa6: c5 45        	li	a1, 17
80201aa8: 97 10 00 00  	auipc	ra, 1
80201aac: e7 80 e0 92  	jalr	-1746(ra)
80201ab0: 00 00        	unimp	

0000000080201ab2 <_ZN6kernel6memory3kvm7kvminit17h11d16f641ec1a37eE>:
; pub fn kvminit() {
80201ab2: 59 71        	addi	sp, sp, -112
80201ab4: 86 f4        	sd	ra, 104(sp)
80201ab6: a2 f0        	sd	s0, 96(sp)
80201ab8: a6 ec        	sd	s1, 88(sp)
80201aba: ca e8        	sd	s2, 80(sp)
80201abc: ce e4        	sd	s3, 72(sp)
80201abe: 80 18        	addi	s0, sp, 112
80201ac0: 0f 00 30 03  	fence	rw, rw

0000000080201ac4 <.LBB1_19>:
80201ac4: 97 44 01 00  	auipc	s1, 20
80201ac8: 93 84 44 24  	addi	s1, s1, 580
80201acc: 88 68        	ld	a0, 16(s1)
80201ace: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201ad2: 29 e9        	bnez	a0, 0x80201b24 <.LBB1_19+0x60>
80201ad4: 93 85 04 01  	addi	a1, s1, 16
80201ad8: 85 49        	li	s3, 1
80201ada: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80201ade: 01 e5        	bnez	a0, 0x80201ae6 <.LBB1_19+0x22>
80201ae0: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80201ae4: 7d fa        	bnez	a2, 0x80201ada <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
80201ae6: 1d ed        	bnez	a0, 0x80201b24 <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201ae8: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80201aec: 97 00 00 00  	auipc	ra, 0
80201af0: e7 80 c0 ea  	jalr	-340(ra)
80201af4: 2a 89        	mv	s2, a0
80201af6: 05 66        	lui	a2, 1
80201af8: 81 45        	li	a1, 0
80201afa: 97 10 00 00  	auipc	ra, 1
80201afe: e7 80 e0 37  	jalr	894(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80201b02: 23 b0 34 01  	sd	s3, 0(s1)
80201b06: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80201b0a: 23 04 04 fa  	sb	zero, -88(s0)
80201b0e: 0f 00 10 03  	fence	rw, w
80201b12: 09 45        	li	a0, 2
80201b14: 88 e8        	sd	a0, 16(s1)
80201b16: 13 05 04 fa  	addi	a0, s0, -96
80201b1a: 97 10 00 00  	auipc	ra, 1
80201b1e: e7 80 40 85  	jalr	-1964(ra)
80201b22: 05 a0        	j	0x80201b42 <.LBB1_19+0x7e>
80201b24: 85 45        	li	a1, 1
;             match status {
80201b26: 63 1b b5 00  	bne	a0, a1, 0x80201b3c <.LBB1_19+0x78>
80201b2a: 0f 00 00 01  	fence	w, 0
80201b2e: 0f 00 30 03  	fence	rw, rw
80201b32: 88 68        	ld	a0, 16(s1)
80201b34: 0f 00 30 02  	fence	r, rw
;             match status {
80201b38: e3 09 b5 fe  	beq	a0, a1, 0x80201b2a <.LBB1_19+0x66>
80201b3c: 89 45        	li	a1, 2
;             match status {
80201b3e: 63 19 b5 10  	bne	a0, a1, 0x80201c50 <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201b42: 13 89 84 00  	addi	s2, s1, 8
80201b46: b7 05 00 10  	lui	a1, 65536
80201b4a: 05 66        	lui	a2, 1
80201b4c: b7 06 00 10  	lui	a3, 65536
80201b50: 19 47        	li	a4, 6
80201b52: 4a 85        	mv	a0, s2
80201b54: 97 f0 ff ff  	auipc	ra, 1048575
80201b58: e7 80 c0 62  	jalr	1580(ra)
80201b5c: 63 08 05 12  	beqz	a0, 0x80201c8c <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201b60: b7 15 00 10  	lui	a1, 65537
80201b64: 05 66        	lui	a2, 1
80201b66: b7 16 00 10  	lui	a3, 65537
80201b6a: 19 47        	li	a4, 6
80201b6c: 4a 85        	mv	a0, s2
80201b6e: 97 f0 ff ff  	auipc	ra, 1048575
80201b72: e7 80 20 61  	jalr	1554(ra)
80201b76: 63 0b 05 10  	beqz	a0, 0x80201c8c <.LBB1_29>
80201b7a: b7 05 00 0c  	lui	a1, 49152
80201b7e: 37 06 40 00  	lui	a2, 1024
80201b82: b7 06 00 0c  	lui	a3, 49152
80201b86: 19 47        	li	a4, 6
80201b88: 4a 85        	mv	a0, s2
80201b8a: 97 f0 ff ff  	auipc	ra, 1048575
80201b8e: e7 80 60 5f  	jalr	1526(ra)
80201b92: 6d cd        	beqz	a0, 0x80201c8c <.LBB1_29>

0000000080201b94 <.LBB1_20>:
80201b94: 97 14 00 00  	auipc	s1, 1
80201b98: 93 84 c4 46  	addi	s1, s1, 1132
80201b9c: 13 05 f0 bf  	li	a0, -1025
80201ba0: 56 05        	slli	a0, a0, 21
80201ba2: 33 86 a4 00  	add	a2, s1, a0
80201ba6: 13 05 10 40  	li	a0, 1025
80201baa: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201bae: 29 47        	li	a4, 10
80201bb0: 4a 85        	mv	a0, s2
80201bb2: ae 86        	mv	a3, a1
80201bb4: 97 f0 ff ff  	auipc	ra, 1048575
80201bb8: e7 80 c0 5c  	jalr	1484(ra)
80201bbc: 61 c9        	beqz	a0, 0x80201c8c <.LBB1_29>
80201bbe: 45 45        	li	a0, 17
80201bc0: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201bc2: 33 06 95 40  	sub	a2, a0, s1
80201bc6: 19 47        	li	a4, 6
80201bc8: 4a 85        	mv	a0, s2
80201bca: a6 85        	mv	a1, s1
80201bcc: a6 86        	mv	a3, s1
80201bce: 97 f0 ff ff  	auipc	ra, 1048575
80201bd2: e7 80 20 5b  	jalr	1458(ra)
80201bd6: 5d c9        	beqz	a0, 0x80201c8c <.LBB1_29>

0000000080201bd8 <.LBB1_21>:
80201bd8: 97 f6 ff ff  	auipc	a3, 1048575
80201bdc: 93 86 86 42  	addi	a3, a3, 1064
80201be0: 37 05 00 04  	lui	a0, 16384
80201be4: 7d 35        	addiw	a0, a0, -1
80201be6: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201bea: 05 66        	lui	a2, 1
80201bec: 29 47        	li	a4, 10
80201bee: 4a 85        	mv	a0, s2
80201bf0: 97 f0 ff ff  	auipc	ra, 1048575
80201bf4: e7 80 00 59  	jalr	1424(ra)
80201bf8: 51 c9        	beqz	a0, 0x80201c8c <.LBB1_29>
80201bfa: 13 05 04 fd  	addi	a0, s0, -48
80201bfe: 23 3c a4 f8  	sd	a0, -104(s0)
80201c02: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201c06 <.LBB1_22>:
80201c06: 17 25 00 00  	auipc	a0, 2
80201c0a: 13 05 a5 96  	addi	a0, a0, -1686
80201c0e: 23 38 a4 fa  	sd	a0, -80(s0)
80201c12: 05 45        	li	a0, 1
80201c14: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201c18 <.LBB1_23>:
80201c18: 17 25 00 00  	auipc	a0, 2
80201c1c: 13 05 85 8f  	addi	a0, a0, -1800
80201c20: 23 30 a4 fc  	sd	a0, -64(s0)
80201c24: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201c28 <.LBB1_24>:
80201c28: 97 25 00 00  	auipc	a1, 2
80201c2c: 93 85 05 98  	addi	a1, a1, -1664
80201c30: 13 05 84 f9  	addi	a0, s0, -104
80201c34: 13 06 04 fa  	addi	a2, s0, -96
80201c38: 97 10 00 00  	auipc	ra, 1
80201c3c: e7 80 80 88  	jalr	-1912(ra)
80201c40: 41 e5        	bnez	a0, 0x80201cc8 <.LBB1_32>
; }
80201c42: a6 70        	ld	ra, 104(sp)
80201c44: 06 74        	ld	s0, 96(sp)
80201c46: e6 64        	ld	s1, 88(sp)
80201c48: 46 69        	ld	s2, 80(sp)
80201c4a: a6 69        	ld	s3, 72(sp)
80201c4c: 65 61        	addi	sp, sp, 112
80201c4e: 82 80        	ret
;             match status {
80201c50: 05 e1        	bnez	a0, 0x80201c70 <.LBB1_27>

0000000080201c52 <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
80201c52: 17 15 00 00  	auipc	a0, 1
80201c56: 13 05 65 43  	addi	a0, a0, 1078

0000000080201c5a <.LBB1_26>:
80201c5a: 17 16 00 00  	auipc	a2, 1
80201c5e: 13 06 66 45  	addi	a2, a2, 1110
80201c62: 93 05 80 02  	li	a1, 40
80201c66: 97 00 00 00  	auipc	ra, 0
80201c6a: e7 80 00 77  	jalr	1904(ra)
80201c6e: 00 00        	unimp	

0000000080201c70 <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
80201c70: 17 15 00 00  	auipc	a0, 1
80201c74: 13 05 05 39  	addi	a0, a0, 912

0000000080201c78 <.LBB1_28>:
80201c78: 17 16 00 00  	auipc	a2, 1
80201c7c: 13 06 86 3f  	addi	a2, a2, 1016
80201c80: c5 45        	li	a1, 17
80201c82: 97 00 00 00  	auipc	ra, 0
80201c86: e7 80 40 75  	jalr	1876(ra)
80201c8a: 00 00        	unimp	

0000000080201c8c <.LBB1_29>:
80201c8c: 17 25 00 00  	auipc	a0, 2
80201c90: 13 05 c5 88  	addi	a0, a0, -1908
80201c94: 23 38 a4 fa  	sd	a0, -80(s0)
80201c98: 05 45        	li	a0, 1
80201c9a: 23 3c a4 fa  	sd	a0, -72(s0)
80201c9e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201ca2 <.LBB1_30>:
80201ca2: 17 25 00 00  	auipc	a0, 2
80201ca6: 13 05 e5 86  	addi	a0, a0, -1938
80201caa: 23 30 a4 fc  	sd	a0, -64(s0)
80201cae: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201cb2 <.LBB1_31>:
80201cb2: 97 25 00 00  	auipc	a1, 2
80201cb6: 93 85 e5 88  	addi	a1, a1, -1906
80201cba: 13 05 04 fa  	addi	a0, s0, -96
80201cbe: 97 00 00 00  	auipc	ra, 0
80201cc2: e7 80 a0 6e  	jalr	1770(ra)
80201cc6: 00 00        	unimp	

0000000080201cc8 <.LBB1_32>:
80201cc8: 17 25 00 00  	auipc	a0, 2
80201ccc: 13 05 05 91  	addi	a0, a0, -1776

0000000080201cd0 <.LBB1_33>:
80201cd0: 97 26 00 00  	auipc	a3, 2
80201cd4: 93 86 86 93  	addi	a3, a3, -1736

0000000080201cd8 <.LBB1_34>:
80201cd8: 17 27 00 00  	auipc	a4, 2
80201cdc: 13 07 07 96  	addi	a4, a4, -1696
80201ce0: 93 05 b0 02  	li	a1, 43
80201ce4: 13 06 04 fd  	addi	a2, s0, -48
80201ce8: 97 00 00 00  	auipc	ra, 0
80201cec: e7 80 a0 75  	jalr	1882(ra)
80201cf0: 00 00        	unimp	

0000000080201cf2 <_ZN6kernel6memory3kvm11kvminithart17h185fa5d96338c566E>:
; pub fn kvminithart() {
80201cf2: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
80201cf4: 86 f4        	sd	ra, 104(sp)
80201cf6: a2 f0        	sd	s0, 96(sp)
80201cf8: a6 ec        	sd	s1, 88(sp)
80201cfa: ca e8        	sd	s2, 80(sp)
80201cfc: ce e4        	sd	s3, 72(sp)
80201cfe: 80 18        	addi	s0, sp, 112
80201d00: 73 00 00 12  	sfence.vma
80201d04: 0f 00 30 03  	fence	rw, rw

0000000080201d08 <.LBB2_12>:
80201d08: 97 44 01 00  	auipc	s1, 20
80201d0c: 93 84 04 00  	mv	s1, s1
80201d10: 88 68        	ld	a0, 16(s1)
80201d12: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201d16: 29 e9        	bnez	a0, 0x80201d68 <.LBB2_12+0x60>
80201d18: 93 85 04 01  	addi	a1, s1, 16
80201d1c: 85 49        	li	s3, 1
80201d1e: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80201d22: 01 e5        	bnez	a0, 0x80201d2a <.LBB2_12+0x22>
80201d24: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80201d28: 7d fa        	bnez	a2, 0x80201d1e <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
80201d2a: 1d ed        	bnez	a0, 0x80201d68 <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201d2c: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80201d30: 97 00 00 00  	auipc	ra, 0
80201d34: e7 80 80 c6  	jalr	-920(ra)
80201d38: 2a 89        	mv	s2, a0
80201d3a: 05 66        	lui	a2, 1
80201d3c: 81 45        	li	a1, 0
80201d3e: 97 10 00 00  	auipc	ra, 1
80201d42: e7 80 a0 13  	jalr	314(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80201d46: 23 b0 34 01  	sd	s3, 0(s1)
80201d4a: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80201d4e: 23 04 04 fa  	sb	zero, -88(s0)
80201d52: 0f 00 10 03  	fence	rw, w
80201d56: 09 45        	li	a0, 2
80201d58: 88 e8        	sd	a0, 16(s1)
80201d5a: 13 05 04 fa  	addi	a0, s0, -96
80201d5e: 97 00 00 00  	auipc	ra, 0
80201d62: e7 80 00 61  	jalr	1552(ra)
80201d66: 05 a0        	j	0x80201d86 <.LBB2_12+0x7e>
80201d68: 85 45        	li	a1, 1
;             match status {
80201d6a: 63 1b b5 00  	bne	a0, a1, 0x80201d80 <.LBB2_12+0x78>
80201d6e: 0f 00 00 01  	fence	w, 0
80201d72: 0f 00 30 03  	fence	rw, rw
80201d76: 88 68        	ld	a0, 16(s1)
80201d78: 0f 00 30 02  	fence	r, rw
;             match status {
80201d7c: e3 09 b5 fe  	beq	a0, a1, 0x80201d6e <.LBB2_12+0x66>
80201d80: 89 45        	li	a1, 2
;             match status {
80201d82: 63 16 b5 06  	bne	a0, a1, 0x80201dee <.LBB2_15+0x28>
;         self.data.as_ptr() as Addr
80201d86: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80201d88: 31 81        	srli	a0, a0, 12
80201d8a: fd 55        	li	a1, -1
80201d8c: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80201d8e: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80201d90: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80201d94: 73 00 00 12  	sfence.vma
80201d98: 13 05 04 fd  	addi	a0, s0, -48
80201d9c: 23 3c a4 f8  	sd	a0, -104(s0)
80201da0: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201da4 <.LBB2_13>:
80201da4: 17 15 00 00  	auipc	a0, 1
80201da8: 13 05 45 7f  	addi	a0, a0, 2036
80201dac: 23 38 a4 fa  	sd	a0, -80(s0)
80201db0: 05 45        	li	a0, 1
80201db2: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201db6 <.LBB2_14>:
80201db6: 17 15 00 00  	auipc	a0, 1
80201dba: 13 05 a5 75  	addi	a0, a0, 1882
80201dbe: 23 30 a4 fc  	sd	a0, -64(s0)
80201dc2: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201dc6 <.LBB2_15>:
80201dc6: 97 15 00 00  	auipc	a1, 1
80201dca: 93 85 25 7e  	addi	a1, a1, 2018
80201dce: 13 05 84 f9  	addi	a0, s0, -104
80201dd2: 13 06 04 fa  	addi	a2, s0, -96
80201dd6: 97 00 00 00  	auipc	ra, 0
80201dda: e7 80 a0 6e  	jalr	1770(ra)
80201dde: 31 e5        	bnez	a0, 0x80201e2a <.LBB2_20>
; }
80201de0: a6 70        	ld	ra, 104(sp)
80201de2: 06 74        	ld	s0, 96(sp)
80201de4: e6 64        	ld	s1, 88(sp)
80201de6: 46 69        	ld	s2, 80(sp)
80201de8: a6 69        	ld	s3, 72(sp)
80201dea: 65 61        	addi	sp, sp, 112
80201dec: 82 80        	ret
;             match status {
80201dee: 05 e1        	bnez	a0, 0x80201e0e <.LBB2_18>

0000000080201df0 <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
80201df0: 17 15 00 00  	auipc	a0, 1
80201df4: 13 05 85 29  	addi	a0, a0, 664

0000000080201df8 <.LBB2_17>:
80201df8: 17 16 00 00  	auipc	a2, 1
80201dfc: 13 06 86 2b  	addi	a2, a2, 696
80201e00: 93 05 80 02  	li	a1, 40
80201e04: 97 00 00 00  	auipc	ra, 0
80201e08: e7 80 20 5d  	jalr	1490(ra)
80201e0c: 00 00        	unimp	

0000000080201e0e <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
80201e0e: 17 15 00 00  	auipc	a0, 1
80201e12: 13 05 25 1f  	addi	a0, a0, 498

0000000080201e16 <.LBB2_19>:
80201e16: 17 16 00 00  	auipc	a2, 1
80201e1a: 13 06 a6 25  	addi	a2, a2, 602
80201e1e: c5 45        	li	a1, 17
80201e20: 97 00 00 00  	auipc	ra, 0
80201e24: e7 80 60 5b  	jalr	1462(ra)
80201e28: 00 00        	unimp	

0000000080201e2a <.LBB2_20>:
80201e2a: 17 15 00 00  	auipc	a0, 1
80201e2e: 13 05 e5 7a  	addi	a0, a0, 1966

0000000080201e32 <.LBB2_21>:
80201e32: 97 16 00 00  	auipc	a3, 1
80201e36: 93 86 66 7d  	addi	a3, a3, 2006

0000000080201e3a <.LBB2_22>:
80201e3a: 17 17 00 00  	auipc	a4, 1
80201e3e: 13 07 e7 7f  	addi	a4, a4, 2046
80201e42: 93 05 b0 02  	li	a1, 43
80201e46: 13 06 04 fd  	addi	a2, s0, -48
80201e4a: 97 00 00 00  	auipc	ra, 0
80201e4e: e7 80 80 5f  	jalr	1528(ra)
80201e52: 00 00        	unimp	

0000000080201e54 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17haee0d0747cc0269dE.llvm.18328167959780197272>:
80201e54: 41 11        	addi	sp, sp, -16
80201e56: 06 e4        	sd	ra, 8(sp)
80201e58: 22 e0        	sd	s0, 0(sp)
80201e5a: 00 08        	addi	s0, sp, 16
80201e5c: a2 60        	ld	ra, 8(sp)
80201e5e: 02 64        	ld	s0, 0(sp)
80201e60: 41 01        	addi	sp, sp, 16
80201e62: 82 80        	ret

0000000080201e64 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272>:
80201e64: 01 11        	addi	sp, sp, -32
80201e66: 06 ec        	sd	ra, 24(sp)
80201e68: 22 e8        	sd	s0, 16(sp)
80201e6a: 00 10        	addi	s0, sp, 32
80201e6c: 1b 85 05 00  	sext.w	a0, a1
80201e70: 13 06 00 08  	li	a2, 128
80201e74: 23 26 04 fe  	sw	zero, -20(s0)
80201e78: 63 76 c5 00  	bgeu	a0, a2, 0x80201e84 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x20>
80201e7c: 23 06 b4 fe  	sb	a1, -20(s0)
80201e80: 05 45        	li	a0, 1
80201e82: 51 a8        	j	0x80201f16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xb2>
80201e84: 1b d5 b5 00  	srliw	a0, a1, 11
80201e88: 19 ed        	bnez	a0, 0x80201ea6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x42>
80201e8a: 13 d5 65 00  	srli	a0, a1, 6
80201e8e: 13 65 05 0c  	ori	a0, a0, 192
80201e92: 23 06 a4 fe  	sb	a0, -20(s0)
80201e96: 13 f5 f5 03  	andi	a0, a1, 63
80201e9a: 13 65 05 08  	ori	a0, a0, 128
80201e9e: a3 06 a4 fe  	sb	a0, -19(s0)
80201ea2: 09 45        	li	a0, 2
80201ea4: 8d a8        	j	0x80201f16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xb2>
80201ea6: 1b d5 05 01  	srliw	a0, a1, 16
80201eaa: 05 e9        	bnez	a0, 0x80201eda <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x76>
80201eac: 13 95 05 02  	slli	a0, a1, 32
80201eb0: 01 91        	srli	a0, a0, 32
80201eb2: 1b d6 c5 00  	srliw	a2, a1, 12
80201eb6: 13 66 06 0e  	ori	a2, a2, 224
80201eba: 23 06 c4 fe  	sb	a2, -20(s0)
80201ebe: 52 15        	slli	a0, a0, 52
80201ec0: 69 91        	srli	a0, a0, 58
80201ec2: 13 65 05 08  	ori	a0, a0, 128
80201ec6: a3 06 a4 fe  	sb	a0, -19(s0)
80201eca: 13 f5 f5 03  	andi	a0, a1, 63
80201ece: 13 65 05 08  	ori	a0, a0, 128
80201ed2: 23 07 a4 fe  	sb	a0, -18(s0)
80201ed6: 0d 45        	li	a0, 3
80201ed8: 3d a8        	j	0x80201f16 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xb2>
80201eda: 13 95 05 02  	slli	a0, a1, 32
80201ede: 01 91        	srli	a0, a0, 32
80201ee0: 13 16 b5 02  	slli	a2, a0, 43
80201ee4: 75 92        	srli	a2, a2, 61
80201ee6: 13 66 06 0f  	ori	a2, a2, 240
80201eea: 23 06 c4 fe  	sb	a2, -20(s0)
80201eee: 13 16 e5 02  	slli	a2, a0, 46
80201ef2: 69 92        	srli	a2, a2, 58
80201ef4: 13 66 06 08  	ori	a2, a2, 128
80201ef8: a3 06 c4 fe  	sb	a2, -19(s0)
80201efc: 52 15        	slli	a0, a0, 52
80201efe: 69 91        	srli	a0, a0, 58
80201f00: 13 65 05 08  	ori	a0, a0, 128
80201f04: 23 07 a4 fe  	sb	a0, -18(s0)
80201f08: 13 f5 f5 03  	andi	a0, a1, 63
80201f0c: 13 65 05 08  	ori	a0, a0, 128
80201f10: a3 07 a4 fe  	sb	a0, -17(s0)
80201f14: 11 45        	li	a0, 4
80201f16: 93 06 c4 fe  	addi	a3, s0, -20
80201f1a: 33 87 a6 00  	add	a4, a3, a0
80201f1e: 13 03 f0 0d  	li	t1, 223
80201f22: 13 08 00 0f  	li	a6, 240
80201f26: b7 02 11 00  	lui	t0, 272
80201f2a: 85 48        	li	a7, 1
80201f2c: 01 a8        	j	0x80201f3c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xd8>
80201f2e: 85 06        	addi	a3, a3, 1
;         asm!(
80201f30: 81 45        	li	a1, 0
80201f32: 01 46        	li	a2, 0
80201f34: 73 00 00 00  	ecall	
80201f38: 63 8f e6 04  	beq	a3, a4, 0x80201f96 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x132>
80201f3c: 83 85 06 00  	lb	a1, 0(a3)
80201f40: 13 f5 f5 0f  	andi	a0, a1, 255
80201f44: e3 d5 05 fe  	bgez	a1, 0x80201f2e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xca>
80201f48: 03 c6 16 00  	lbu	a2, 1(a3)
80201f4c: 93 75 f5 01  	andi	a1, a0, 31
80201f50: 13 76 f6 03  	andi	a2, a2, 63
80201f54: 63 77 a3 02  	bgeu	t1, a0, 0x80201f82 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x11e>
80201f58: 83 c7 26 00  	lbu	a5, 2(a3)
80201f5c: 1a 06        	slli	a2, a2, 6
80201f5e: 93 f7 f7 03  	andi	a5, a5, 63
80201f62: 5d 8e        	or	a2, a2, a5
80201f64: 63 64 05 03  	bltu	a0, a6, 0x80201f8c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x128>
80201f68: 03 c5 36 00  	lbu	a0, 3(a3)
80201f6c: f6 15        	slli	a1, a1, 61
80201f6e: ad 91        	srli	a1, a1, 43
80201f70: 1a 06        	slli	a2, a2, 6
80201f72: 13 75 f5 03  	andi	a0, a0, 63
80201f76: 51 8d        	or	a0, a0, a2
80201f78: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201f7a: 63 0e 55 00  	beq	a0, t0, 0x80201f96 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0x132>
80201f7e: 91 06        	addi	a3, a3, 4
80201f80: 45 bf        	j	0x80201f30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xcc>
80201f82: 89 06        	addi	a3, a3, 2
80201f84: 13 95 65 00  	slli	a0, a1, 6
80201f88: 51 8d        	or	a0, a0, a2
80201f8a: 5d b7        	j	0x80201f30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xcc>
80201f8c: 8d 06        	addi	a3, a3, 3
80201f8e: 13 95 c5 00  	slli	a0, a1, 12
80201f92: 51 8d        	or	a0, a0, a2
80201f94: 71 bf        	j	0x80201f30 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h1d7d59ed0aaa214aE.llvm.18328167959780197272+0xcc>
80201f96: 01 45        	li	a0, 0
80201f98: e2 60        	ld	ra, 24(sp)
80201f9a: 42 64        	ld	s0, 16(sp)
80201f9c: 05 61        	addi	sp, sp, 32
80201f9e: 82 80        	ret

0000000080201fa0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h031d142d85e2c2a7E.llvm.18328167959780197272>:
80201fa0: 5d 71        	addi	sp, sp, -80
80201fa2: 86 e4        	sd	ra, 72(sp)
80201fa4: a2 e0        	sd	s0, 64(sp)
80201fa6: 80 08        	addi	s0, sp, 80
80201fa8: 08 61        	ld	a0, 0(a0)
80201faa: 90 75        	ld	a2, 40(a1)
80201fac: 94 71        	ld	a3, 32(a1)
80201fae: 23 3c a4 fa  	sd	a0, -72(s0)
80201fb2: 23 34 c4 fe  	sd	a2, -24(s0)
80201fb6: 23 30 d4 fe  	sd	a3, -32(s0)
80201fba: 88 6d        	ld	a0, 24(a1)
80201fbc: 90 69        	ld	a2, 16(a1)
80201fbe: 94 65        	ld	a3, 8(a1)
80201fc0: 8c 61        	ld	a1, 0(a1)
80201fc2: 23 3c a4 fc  	sd	a0, -40(s0)
80201fc6: 23 38 c4 fc  	sd	a2, -48(s0)
80201fca: 23 34 d4 fc  	sd	a3, -56(s0)
80201fce: 23 30 b4 fc  	sd	a1, -64(s0)

0000000080201fd2 <.LBB2_1>:
80201fd2: 97 15 00 00  	auipc	a1, 1
80201fd6: 93 85 65 5d  	addi	a1, a1, 1494
80201fda: 13 05 84 fb  	addi	a0, s0, -72
80201fde: 13 06 04 fc  	addi	a2, s0, -64
80201fe2: 97 00 00 00  	auipc	ra, 0
80201fe6: e7 80 e0 4d  	jalr	1246(ra)
80201fea: a6 60        	ld	ra, 72(sp)
80201fec: 06 64        	ld	s0, 64(sp)
80201fee: 61 61        	addi	sp, sp, 80
80201ff0: 82 80        	ret

0000000080201ff2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272>:
80201ff2: 41 11        	addi	sp, sp, -16
80201ff4: 06 e4        	sd	ra, 8(sp)
80201ff6: 22 e0        	sd	s0, 0(sp)
80201ff8: 00 08        	addi	s0, sp, 16
80201ffa: 41 c2        	beqz	a2, 0x8020207a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x88>
80201ffc: ae 86        	mv	a3, a1
80201ffe: 33 87 c5 00  	add	a4, a1, a2
80202002: 13 03 f0 0d  	li	t1, 223
80202006: 13 08 00 0f  	li	a6, 240
8020200a: b7 02 11 00  	lui	t0, 272
8020200e: 85 48        	li	a7, 1
80202010: 01 a8        	j	0x80202020 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x2e>
80202012: 85 06        	addi	a3, a3, 1
;         asm!(
80202014: 81 45        	li	a1, 0
80202016: 01 46        	li	a2, 0
80202018: 73 00 00 00  	ecall	
8020201c: 63 8f e6 04  	beq	a3, a4, 0x8020207a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x88>
80202020: 83 85 06 00  	lb	a1, 0(a3)
80202024: 13 f5 f5 0f  	andi	a0, a1, 255
80202028: e3 d5 05 fe  	bgez	a1, 0x80202012 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x20>
8020202c: 03 c6 16 00  	lbu	a2, 1(a3)
80202030: 93 75 f5 01  	andi	a1, a0, 31
80202034: 13 76 f6 03  	andi	a2, a2, 63
80202038: 63 77 a3 02  	bgeu	t1, a0, 0x80202066 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x74>
8020203c: 83 c7 26 00  	lbu	a5, 2(a3)
80202040: 1a 06        	slli	a2, a2, 6
80202042: 93 f7 f7 03  	andi	a5, a5, 63
80202046: 5d 8e        	or	a2, a2, a5
80202048: 63 64 05 03  	bltu	a0, a6, 0x80202070 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x7e>
8020204c: 03 c5 36 00  	lbu	a0, 3(a3)
80202050: f6 15        	slli	a1, a1, 61
80202052: ad 91        	srli	a1, a1, 43
80202054: 1a 06        	slli	a2, a2, 6
80202056: 13 75 f5 03  	andi	a0, a0, 63
8020205a: 51 8d        	or	a0, a0, a2
8020205c: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
8020205e: 63 0e 55 00  	beq	a0, t0, 0x8020207a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x88>
80202062: 91 06        	addi	a3, a3, 4
80202064: 45 bf        	j	0x80202014 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x22>
80202066: 89 06        	addi	a3, a3, 2
80202068: 13 95 65 00  	slli	a0, a1, 6
8020206c: 51 8d        	or	a0, a0, a2
8020206e: 5d b7        	j	0x80202014 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x22>
80202070: 8d 06        	addi	a3, a3, 3
80202072: 13 95 c5 00  	slli	a0, a1, 12
80202076: 51 8d        	or	a0, a0, a2
80202078: 71 bf        	j	0x80202014 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hc4d69446c93a1d8dE.llvm.18328167959780197272+0x22>
8020207a: 01 45        	li	a0, 0
8020207c: a2 60        	ld	ra, 8(sp)
8020207e: 02 64        	ld	s0, 0(sp)
80202080: 41 01        	addi	sp, sp, 16
80202082: 82 80        	ret

0000000080202084 <_ZN6kernel7console5print17had9ee80af3cff84dE>:
; pub fn print(args: fmt::Arguments) {
80202084: 5d 71        	addi	sp, sp, -80
80202086: 86 e4        	sd	ra, 72(sp)
80202088: a2 e0        	sd	s0, 64(sp)
8020208a: 80 08        	addi	s0, sp, 80
8020208c: 0c 75        	ld	a1, 40(a0)
8020208e: 10 71        	ld	a2, 32(a0)
80202090: 93 06 84 fe  	addi	a3, s0, -24
80202094: 23 38 d4 fa  	sd	a3, -80(s0)
80202098: 23 30 b4 fe  	sd	a1, -32(s0)
8020209c: 23 3c c4 fc  	sd	a2, -40(s0)
802020a0: 0c 6d        	ld	a1, 24(a0)
802020a2: 10 69        	ld	a2, 16(a0)
802020a4: 14 65        	ld	a3, 8(a0)
802020a6: 08 61        	ld	a0, 0(a0)
802020a8: 23 38 b4 fc  	sd	a1, -48(s0)
802020ac: 23 34 c4 fc  	sd	a2, -56(s0)
802020b0: 23 30 d4 fc  	sd	a3, -64(s0)
802020b4: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802020b8 <.LBB4_3>:
802020b8: 97 15 00 00  	auipc	a1, 1
802020bc: 93 85 05 4f  	addi	a1, a1, 1264
802020c0: 13 05 04 fb  	addi	a0, s0, -80
802020c4: 13 06 84 fb  	addi	a2, s0, -72
802020c8: 97 00 00 00  	auipc	ra, 0
802020cc: e7 80 80 3f  	jalr	1016(ra)
802020d0: 09 e5        	bnez	a0, 0x802020da <.LBB4_4>
; }
802020d2: a6 60        	ld	ra, 72(sp)
802020d4: 06 64        	ld	s0, 64(sp)
802020d6: 61 61        	addi	sp, sp, 80
802020d8: 82 80        	ret

00000000802020da <.LBB4_4>:
802020da: 17 15 00 00  	auipc	a0, 1
802020de: 13 05 e5 4f  	addi	a0, a0, 1278

00000000802020e2 <.LBB4_5>:
802020e2: 97 16 00 00  	auipc	a3, 1
802020e6: 93 86 66 52  	addi	a3, a3, 1318

00000000802020ea <.LBB4_6>:
802020ea: 17 17 00 00  	auipc	a4, 1
802020ee: 13 07 e7 54  	addi	a4, a4, 1358
802020f2: 93 05 b0 02  	li	a1, 43
802020f6: 13 06 84 fe  	addi	a2, s0, -24
802020fa: 97 00 00 00  	auipc	ra, 0
802020fe: e7 80 80 34  	jalr	840(ra)
80202102: 00 00        	unimp	

0000000080202104 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80202104: 71 71        	addi	sp, sp, -176
80202106: 06 f5        	sd	ra, 168(sp)
80202108: 22 f1        	sd	s0, 160(sp)
8020210a: 26 ed        	sd	s1, 152(sp)
8020210c: 00 19        	addi	s0, sp, 176
8020210e: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80202110: 97 00 00 00  	auipc	ra, 0
80202114: e7 80 00 29  	jalr	656(ra)
80202118: 05 e1        	bnez	a0, 0x80202138 <.LBB0_8+0x16>

000000008020211a <.LBB0_7>:
8020211a: 17 15 00 00  	auipc	a0, 1
8020211e: 13 05 65 5b  	addi	a0, a0, 1462

0000000080202122 <.LBB0_8>:
80202122: 17 16 00 00  	auipc	a2, 1
80202126: 13 06 e6 5e  	addi	a2, a2, 1518
8020212a: 93 05 b0 02  	li	a1, 43
8020212e: 97 00 00 00  	auipc	ra, 0
80202132: e7 80 80 2a  	jalr	680(ra)
80202136: 00 00        	unimp	
80202138: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
8020213c: 26 85        	mv	a0, s1
8020213e: 97 00 00 00  	auipc	ra, 0
80202142: e7 80 60 26  	jalr	614(ra)
80202146: 3d e1        	bnez	a0, 0x802021ac <.LBB0_11+0x24>
80202148: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
8020214c: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202150 <.LBB0_9>:
80202150: 17 f5 ff ff  	auipc	a0, 1048575
80202154: 13 05 c5 3c  	addi	a0, a0, 972
80202158: 23 34 a4 f6  	sd	a0, -152(s0)
8020215c: 13 05 04 fe  	addi	a0, s0, -32
80202160: 23 38 a4 f8  	sd	a0, -112(s0)
80202164: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202168 <.LBB0_10>:
80202168: 17 15 00 00  	auipc	a0, 1
8020216c: 13 05 85 4f  	addi	a0, a0, 1272
80202170: 23 30 a4 fc  	sd	a0, -64(s0)
80202174: 09 45        	li	a0, 2
80202176: 23 34 a4 fc  	sd	a0, -56(s0)
8020217a: 13 05 04 f6  	addi	a0, s0, -160
8020217e: 23 38 a4 fc  	sd	a0, -48(s0)
80202182: 05 45        	li	a0, 1
80202184: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080202188 <.LBB0_11>:
80202188: 97 15 00 00  	auipc	a1, 1
8020218c: 93 85 05 42  	addi	a1, a1, 1056
80202190: 13 05 04 f9  	addi	a0, s0, -112
80202194: 13 06 04 fb  	addi	a2, s0, -80
80202198: 97 00 00 00  	auipc	ra, 0
8020219c: e7 80 80 32  	jalr	808(ra)
802021a0: 45 e1        	bnez	a0, 0x80202240 <.LBB0_17>
;     shutdown()
802021a2: 97 f0 ff ff  	auipc	ra, 1048575
802021a6: e7 80 00 27  	jalr	624(ra)
802021aa: 00 00        	unimp	
802021ac: 0c 61        	ld	a1, 0(a0)
802021ae: 10 65        	ld	a2, 8(a0)
802021b0: 23 38 b4 f8  	sd	a1, -112(s0)
802021b4: 23 3c c4 f8  	sd	a2, -104(s0)
802021b8: 08 49        	lw	a0, 16(a0)
802021ba: 23 22 a4 fa  	sw	a0, -92(s0)
802021be: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
802021c2: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802021c6 <.LBB0_12>:
802021c6: 17 f5 ff ff  	auipc	a0, 1048575
802021ca: 13 05 45 33  	addi	a0, a0, 820
802021ce: 23 34 a4 f6  	sd	a0, -152(s0)
802021d2: 13 05 44 fa  	addi	a0, s0, -92
802021d6: 23 38 a4 f6  	sd	a0, -144(s0)

00000000802021da <.LBB0_13>:
802021da: 17 15 00 00  	auipc	a0, 1
802021de: 13 05 65 c5  	addi	a0, a0, -938
802021e2: 23 3c a4 f6  	sd	a0, -136(s0)
802021e6: 13 05 84 f5  	addi	a0, s0, -168
802021ea: 23 30 a4 f8  	sd	a0, -128(s0)

00000000802021ee <.LBB0_14>:
802021ee: 17 f5 ff ff  	auipc	a0, 1048575
802021f2: 13 05 e5 32  	addi	a0, a0, 814
802021f6: 23 34 a4 f8  	sd	a0, -120(s0)
802021fa: 13 05 04 fe  	addi	a0, s0, -32
802021fe: 23 34 a4 fa  	sd	a0, -88(s0)
80202202: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202206 <.LBB0_15>:
80202206: 17 15 00 00  	auipc	a0, 1
8020220a: 13 05 a5 48  	addi	a0, a0, 1162
8020220e: 23 30 a4 fc  	sd	a0, -64(s0)
80202212: 11 45        	li	a0, 4
80202214: 23 34 a4 fc  	sd	a0, -56(s0)
80202218: 13 05 04 f6  	addi	a0, s0, -160
8020221c: 23 38 a4 fc  	sd	a0, -48(s0)
80202220: 0d 45        	li	a0, 3
80202222: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080202226 <.LBB0_16>:
80202226: 97 15 00 00  	auipc	a1, 1
8020222a: 93 85 25 38  	addi	a1, a1, 898
8020222e: 13 05 84 fa  	addi	a0, s0, -88
80202232: 13 06 04 fb  	addi	a2, s0, -80
80202236: 97 00 00 00  	auipc	ra, 0
8020223a: e7 80 a0 28  	jalr	650(ra)
8020223e: 35 d1        	beqz	a0, 0x802021a2 <.LBB0_11+0x1a>

0000000080202240 <.LBB0_17>:
80202240: 17 15 00 00  	auipc	a0, 1
80202244: 13 05 85 39  	addi	a0, a0, 920

0000000080202248 <.LBB0_18>:
80202248: 97 16 00 00  	auipc	a3, 1
8020224c: 93 86 06 3c  	addi	a3, a3, 960

0000000080202250 <.LBB0_19>:
80202250: 17 17 00 00  	auipc	a4, 1
80202254: 13 07 87 3e  	addi	a4, a4, 1000
80202258: 93 05 b0 02  	li	a1, 43
8020225c: 13 06 04 fe  	addi	a2, s0, -32
80202260: 97 00 00 00  	auipc	ra, 0
80202264: e7 80 20 1e  	jalr	482(ra)
80202268: 00 00        	unimp	

000000008020226a <main>:
; pub fn main() {
8020226a: 5d 71        	addi	sp, sp, -80
8020226c: 86 e4        	sd	ra, 72(sp)
8020226e: a2 e0        	sd	s0, 64(sp)
80202270: 26 fc        	sd	s1, 56(sp)
80202272: 4a f8        	sd	s2, 48(sp)
80202274: 80 08        	addi	s0, sp, 80

0000000080202276 <.LBB0_8>:
80202276: 17 45 01 00  	auipc	a0, 20
8020227a: 13 05 a5 d8  	addi	a0, a0, -630

000000008020227e <.LBB0_9>:
8020227e: 97 35 01 00  	auipc	a1, 19
80202282: 93 85 25 d8  	addi	a1, a1, -638
80202286: 63 f9 a5 00  	bgeu	a1, a0, 0x80202298 <.LBB0_9+0x1a>
8020228a: 13 86 15 00  	addi	a2, a1, 1
8020228e: 23 80 05 00  	sb	zero, 0(a1)
80202292: b2 85        	mv	a1, a2
80202294: e3 6b a6 fe  	bltu	a2, a0, 0x8020228a <.LBB0_9+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202298: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
8020229a: 01 c9        	beqz	a0, 0x802022aa <.LBB0_10+0xe>

000000008020229c <.LBB0_10>:
;         while unsafe { started } == 0 {}
8020229c: 17 45 01 00  	auipc	a0, 20
802022a0: 13 05 45 a8  	addi	a0, a0, -1404
802022a4: 08 61        	ld	a0, 0(a0)
802022a6: 41 e5        	bnez	a0, 0x8020232e <.LBB0_13+0x4a>
802022a8: 01 a0        	j	0x802022a8 <.LBB0_10+0xc>
;         print_logo();
802022aa: 97 f0 ff ff  	auipc	ra, 1048575
802022ae: e7 80 80 1b  	jalr	440(ra)

00000000802022b2 <.LBB0_11>:
802022b2: 17 15 00 00  	auipc	a0, 1
802022b6: 13 05 65 49  	addi	a0, a0, 1174
802022ba: 23 30 a4 fc  	sd	a0, -64(s0)
802022be: 05 49        	li	s2, 1
802022c0: 23 34 24 fd  	sd	s2, -56(s0)
802022c4: 23 38 04 fa  	sd	zero, -80(s0)

00000000802022c8 <.LBB0_12>:
802022c8: 97 14 00 00  	auipc	s1, 1
802022cc: 93 84 04 46  	addi	s1, s1, 1120
802022d0: 23 38 94 fc  	sd	s1, -48(s0)
802022d4: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
802022d8: 13 05 04 fb  	addi	a0, s0, -80
802022dc: 97 00 00 00  	auipc	ra, 0
802022e0: e7 80 80 da  	jalr	-600(ra)

00000000802022e4 <.LBB0_13>:
802022e4: 17 15 00 00  	auipc	a0, 1
802022e8: 13 05 c5 47  	addi	a0, a0, 1148
802022ec: 23 30 a4 fc  	sd	a0, -64(s0)
802022f0: 23 34 24 fd  	sd	s2, -56(s0)
802022f4: 23 38 04 fa  	sd	zero, -80(s0)
802022f8: 23 38 94 fc  	sd	s1, -48(s0)
802022fc: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
80202300: 13 05 04 fb  	addi	a0, s0, -80
80202304: 97 00 00 00  	auipc	ra, 0
80202308: e7 80 00 d8  	jalr	-640(ra)
;         kinit();
8020230c: 97 f0 ff ff  	auipc	ra, 1048575
80202310: e7 80 20 48  	jalr	1154(ra)
;         kvminit();
80202314: 97 f0 ff ff  	auipc	ra, 1048575
80202318: e7 80 e0 79  	jalr	1950(ra)
;         kvminithart();
8020231c: 97 00 00 00  	auipc	ra, 0
80202320: e7 80 60 9d  	jalr	-1578(ra)
;         procinit();
80202324: 97 f0 ff ff  	auipc	ra, 1048575
80202328: e7 80 e0 03  	jalr	62(ra)
8020232c: 19 a0        	j	0x80202332 <.LBB0_14>
8020232e: 0f 00 30 03  	fence	rw, rw

0000000080202332 <.LBB0_14>:
80202332: 17 15 00 00  	auipc	a0, 1
80202336: 13 05 e5 44  	addi	a0, a0, 1102
8020233a: 23 30 a4 fc  	sd	a0, -64(s0)
8020233e: 05 45        	li	a0, 1
80202340: 23 34 a4 fc  	sd	a0, -56(s0)
80202344: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202348 <.LBB0_15>:
80202348: 17 15 00 00  	auipc	a0, 1
8020234c: 13 05 05 3e  	addi	a0, a0, 992
80202350: 23 38 a4 fc  	sd	a0, -48(s0)
80202354: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202358 <.LBB0_16>:
;     panic!("Shutdown!");
80202358: 97 15 00 00  	auipc	a1, 1
8020235c: 93 85 85 44  	addi	a1, a1, 1096
80202360: 13 05 04 fb  	addi	a0, s0, -80
80202364: 97 00 00 00  	auipc	ra, 0
80202368: e7 80 40 04  	jalr	68(ra)
8020236c: 00 00        	unimp	

000000008020236e <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
8020236e: 41 11        	addi	sp, sp, -16
;         if self.panicked {
80202370: 06 e4        	sd	ra, 8(sp)
80202372: 22 e0        	sd	s0, 0(sp)
80202374: 00 08        	addi	s0, sp, 16
80202376: 83 45 85 00  	lbu	a1, 8(a0)
8020237a: 91 c5        	beqz	a1, 0x80202386 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
8020237c: 08 61        	ld	a0, 0(a0)
8020237e: 0f 00 10 03  	fence	rw, w
80202382: 8d 45        	li	a1, 3
80202384: 0c e1        	sd	a1, 0(a0)
;     }
80202386: a2 60        	ld	ra, 8(sp)
80202388: 02 64        	ld	s0, 0(sp)
8020238a: 41 01        	addi	sp, sp, 16
8020238c: 82 80        	ret

000000008020238e <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
8020238e: 08 61        	ld	a0, 0(a0)
80202390: 01 a0        	j	0x80202390 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

0000000080202392 <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
80202392: 82 80        	ret

0000000080202394 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80202394: 17 25 00 00  	auipc	a0, 2
80202398: 13 05 45 d5  	addi	a0, a0, -684
8020239c: 08 61        	ld	a0, 0(a0)
8020239e: 82 80        	ret

00000000802023a0 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
802023a0: 08 69        	ld	a0, 16(a0)
802023a2: 82 80        	ret

00000000802023a4 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
802023a4: 08 6d        	ld	a0, 24(a0)
802023a6: 82 80        	ret

00000000802023a8 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
802023a8: 79 71        	addi	sp, sp, -48
802023aa: 06 f4        	sd	ra, 40(sp)

00000000802023ac <.LBB170_1>:
802023ac: 17 16 00 00  	auipc	a2, 1
802023b0: 13 06 c6 40  	addi	a2, a2, 1036
802023b4: 32 e0        	sd	a2, 0(sp)

00000000802023b6 <.LBB170_2>:
802023b6: 17 16 00 00  	auipc	a2, 1
802023ba: 13 06 a6 45  	addi	a2, a2, 1114
802023be: 32 e4        	sd	a2, 8(sp)
802023c0: 2a e8        	sd	a0, 16(sp)
802023c2: 2e ec        	sd	a1, 24(sp)
802023c4: 05 45        	li	a0, 1
802023c6: 23 00 a1 02  	sb	a0, 32(sp)
802023ca: 0a 85        	mv	a0, sp
802023cc: 97 00 00 00  	auipc	ra, 0
802023d0: e7 80 80 d3  	jalr	-712(ra)
802023d4: 00 00        	unimp	

00000000802023d6 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
802023d6: 5d 71        	addi	sp, sp, -80
802023d8: 86 e4        	sd	ra, 72(sp)
802023da: 2a fc        	sd	a0, 56(sp)
802023dc: ae e0        	sd	a1, 64(sp)
802023de: 28 18        	addi	a0, sp, 56
802023e0: 2a ec        	sd	a0, 24(sp)
802023e2: 05 45        	li	a0, 1
802023e4: 2a f0        	sd	a0, 32(sp)
802023e6: 02 e4        	sd	zero, 8(sp)

00000000802023e8 <.LBB172_1>:
802023e8: 17 15 00 00  	auipc	a0, 1
802023ec: 13 05 05 3d  	addi	a0, a0, 976
802023f0: 2a f4        	sd	a0, 40(sp)
802023f2: 02 f8        	sd	zero, 48(sp)
802023f4: 28 00        	addi	a0, sp, 8
802023f6: b2 85        	mv	a1, a2
802023f8: 97 00 00 00  	auipc	ra, 0
802023fc: e7 80 00 fb  	jalr	-80(ra)
80202400: 00 00        	unimp	

0000000080202402 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
80202402: 59 71        	addi	sp, sp, -112
80202404: 86 f4        	sd	ra, 104(sp)
80202406: 2a e4        	sd	a0, 8(sp)
80202408: 2e e8        	sd	a1, 16(sp)
8020240a: 08 08        	addi	a0, sp, 16
8020240c: aa e4        	sd	a0, 72(sp)

000000008020240e <.LBB176_1>:
8020240e: 17 15 00 00  	auipc	a0, 1
80202412: 13 05 25 a3  	addi	a0, a0, -1486
80202416: aa e8        	sd	a0, 80(sp)
80202418: 2c 00        	addi	a1, sp, 8
8020241a: ae ec        	sd	a1, 88(sp)
8020241c: aa f0        	sd	a0, 96(sp)

000000008020241e <.LBB176_2>:
8020241e: 17 15 00 00  	auipc	a0, 1
80202422: 13 05 25 3d  	addi	a0, a0, 978
80202426: 2a f4        	sd	a0, 40(sp)
80202428: 09 45        	li	a0, 2
8020242a: 2a f8        	sd	a0, 48(sp)
8020242c: 02 ec        	sd	zero, 24(sp)
8020242e: ac 00        	addi	a1, sp, 72
80202430: 2e fc        	sd	a1, 56(sp)
80202432: aa e0        	sd	a0, 64(sp)
80202434: 28 08        	addi	a0, sp, 24
80202436: b2 85        	mv	a1, a2
80202438: 97 00 00 00  	auipc	ra, 0
8020243c: e7 80 00 f7  	jalr	-144(ra)
80202440: 00 00        	unimp	

0000000080202442 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
80202442: 19 71        	addi	sp, sp, -128
80202444: 86 fc        	sd	ra, 120(sp)
80202446: 2a e4        	sd	a0, 8(sp)
80202448: 2e e8        	sd	a1, 16(sp)
8020244a: 32 ec        	sd	a2, 24(sp)
8020244c: 36 f0        	sd	a3, 32(sp)
8020244e: 28 00        	addi	a0, sp, 8
80202450: aa ec        	sd	a0, 88(sp)

0000000080202452 <.LBB183_1>:
80202452: 17 15 00 00  	auipc	a0, 1
80202456: 13 05 65 a1  	addi	a0, a0, -1514
8020245a: aa f0        	sd	a0, 96(sp)
8020245c: 28 08        	addi	a0, sp, 24
8020245e: aa f4        	sd	a0, 104(sp)

0000000080202460 <.LBB183_2>:
80202460: 17 15 00 00  	auipc	a0, 1
80202464: 13 05 05 a0  	addi	a0, a0, -1536
80202468: aa f8        	sd	a0, 112(sp)

000000008020246a <.LBB183_3>:
8020246a: 17 15 00 00  	auipc	a0, 1
8020246e: 13 05 e5 3c  	addi	a0, a0, 974
80202472: 2a fc        	sd	a0, 56(sp)
80202474: 09 45        	li	a0, 2
80202476: aa e0        	sd	a0, 64(sp)
80202478: 02 f4        	sd	zero, 40(sp)
8020247a: ac 08        	addi	a1, sp, 88
8020247c: ae e4        	sd	a1, 72(sp)
8020247e: aa e8        	sd	a0, 80(sp)
80202480: 28 10        	addi	a0, sp, 40
80202482: ba 85        	mv	a1, a4
80202484: 97 00 00 00  	auipc	ra, 0
80202488: e7 80 40 f2  	jalr	-220(ra)
8020248c: 00 00        	unimp	

000000008020248e <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
8020248e: 39 71        	addi	sp, sp, -64
80202490: 06 fc        	sd	ra, 56(sp)
80202492: 10 75        	ld	a2, 40(a0)
80202494: 18 71        	ld	a4, 32(a0)
80202496: 1c 6d        	ld	a5, 24(a0)
80202498: 32 f8        	sd	a2, 48(sp)
8020249a: 94 61        	ld	a3, 0(a1)
8020249c: 3a f4        	sd	a4, 40(sp)
8020249e: 3e f0        	sd	a5, 32(sp)
802024a0: 10 69        	ld	a2, 16(a0)
802024a2: 18 65        	ld	a4, 8(a0)
802024a4: 08 61        	ld	a0, 0(a0)
802024a6: 8c 65        	ld	a1, 8(a1)
802024a8: 32 ec        	sd	a2, 24(sp)
802024aa: 3a e8        	sd	a4, 16(sp)
802024ac: 2a e4        	sd	a0, 8(sp)
802024ae: 30 00        	addi	a2, sp, 8
802024b0: 36 85        	mv	a0, a3
802024b2: 97 00 00 00  	auipc	ra, 0
802024b6: e7 80 e0 00  	jalr	14(ra)
802024ba: e2 70        	ld	ra, 56(sp)
802024bc: 21 61        	addi	sp, sp, 64
802024be: 82 80        	ret

00000000802024c0 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
802024c0: 19 71        	addi	sp, sp, -128
802024c2: 86 fc        	sd	ra, 120(sp)
802024c4: a2 f8        	sd	s0, 112(sp)
802024c6: a6 f4        	sd	s1, 104(sp)
802024c8: ca f0        	sd	s2, 96(sp)
802024ca: ce ec        	sd	s3, 88(sp)
802024cc: d2 e8        	sd	s4, 80(sp)
802024ce: d6 e4        	sd	s5, 72(sp)
802024d0: da e0        	sd	s6, 64(sp)
802024d2: b2 89        	mv	s3, a2
802024d4: 05 46        	li	a2, 1
802024d6: 16 16        	slli	a2, a2, 37
802024d8: 32 f8        	sd	a2, 48(sp)
802024da: 0d 46        	li	a2, 3
802024dc: 23 0c c1 02  	sb	a2, 56(sp)
802024e0: 03 b6 09 00  	ld	a2, 0(s3)
802024e4: 02 e8        	sd	zero, 16(sp)
802024e6: 02 f0        	sd	zero, 32(sp)
802024e8: 2a e0        	sd	a0, 0(sp)
802024ea: 2e e4        	sd	a1, 8(sp)
802024ec: 69 c6        	beqz	a2, 0x802025b6 <.LBB220_31+0x9e>
802024ee: 03 b5 89 00  	ld	a0, 8(s3)
802024f2: 63 0e 05 10  	beqz	a0, 0x8020260e <.LBB220_31+0xf6>
802024f6: 83 b5 09 01  	ld	a1, 16(s3)
802024fa: 93 06 f5 ff  	addi	a3, a0, -1
802024fe: 8e 06        	slli	a3, a3, 3
80202500: 8d 82        	srli	a3, a3, 3
80202502: 13 89 16 00  	addi	s2, a3, 1
80202506: 93 84 85 00  	addi	s1, a1, 8
8020250a: 93 05 80 03  	li	a1, 56
8020250e: 33 0a b5 02  	mul	s4, a0, a1
80202512: 13 04 86 01  	addi	s0, a2, 24
80202516: 85 4a        	li	s5, 1

0000000080202518 <.LBB220_31>:
80202518: 17 0b 00 00  	auipc	s6, 0
8020251c: 13 0b 6b e7  	addi	s6, s6, -394
80202520: 90 60        	ld	a2, 0(s1)
80202522: 09 ca        	beqz	a2, 0x80202534 <.LBB220_31+0x1c>
80202524: a2 66        	ld	a3, 8(sp)
80202526: 02 65        	ld	a0, 0(sp)
80202528: 83 b5 84 ff  	ld	a1, -8(s1)
8020252c: 94 6e        	ld	a3, 24(a3)
8020252e: 82 96        	jalr	a3
80202530: 63 11 05 10  	bnez	a0, 0x80202632 <.LBB220_31+0x11a>
80202534: 48 44        	lw	a0, 12(s0)
80202536: 2a da        	sw	a0, 52(sp)
80202538: 03 05 04 01  	lb	a0, 16(s0)
8020253c: 23 0c a1 02  	sb	a0, 56(sp)
80202540: 0c 44        	lw	a1, 8(s0)
80202542: 03 b5 09 02  	ld	a0, 32(s3)
80202546: 2e d8        	sw	a1, 48(sp)
80202548: 83 36 84 ff  	ld	a3, -8(s0)
8020254c: 0c 60        	ld	a1, 0(s0)
8020254e: 89 ce        	beqz	a3, 0x80202568 <.LBB220_31+0x50>
80202550: 01 46        	li	a2, 0
80202552: 63 9c 56 01  	bne	a3, s5, 0x8020256a <.LBB220_31+0x52>
80202556: 92 05        	slli	a1, a1, 4
80202558: aa 95        	add	a1, a1, a0
8020255a: 90 65        	ld	a2, 8(a1)
8020255c: 63 04 66 01  	beq	a2, s6, 0x80202564 <.LBB220_31+0x4c>
80202560: 01 46        	li	a2, 0
80202562: 21 a0        	j	0x8020256a <.LBB220_31+0x52>
80202564: 8c 61        	ld	a1, 0(a1)
80202566: 8c 61        	ld	a1, 0(a1)
80202568: 05 46        	li	a2, 1
8020256a: 32 e8        	sd	a2, 16(sp)
8020256c: 2e ec        	sd	a1, 24(sp)
8020256e: 83 36 84 fe  	ld	a3, -24(s0)
80202572: 83 35 04 ff  	ld	a1, -16(s0)
80202576: 89 ce        	beqz	a3, 0x80202590 <.LBB220_31+0x78>
80202578: 01 46        	li	a2, 0
8020257a: 63 9c 56 01  	bne	a3, s5, 0x80202592 <.LBB220_31+0x7a>
8020257e: 92 05        	slli	a1, a1, 4
80202580: aa 95        	add	a1, a1, a0
80202582: 90 65        	ld	a2, 8(a1)
80202584: 63 04 66 01  	beq	a2, s6, 0x8020258c <.LBB220_31+0x74>
80202588: 01 46        	li	a2, 0
8020258a: 21 a0        	j	0x80202592 <.LBB220_31+0x7a>
8020258c: 8c 61        	ld	a1, 0(a1)
8020258e: 8c 61        	ld	a1, 0(a1)
80202590: 05 46        	li	a2, 1
80202592: 32 f0        	sd	a2, 32(sp)
80202594: 2e f4        	sd	a1, 40(sp)
80202596: 0c 6c        	ld	a1, 24(s0)
80202598: 92 05        	slli	a1, a1, 4
8020259a: 2e 95        	add	a0, a0, a1
8020259c: 10 65        	ld	a2, 8(a0)
8020259e: 08 61        	ld	a0, 0(a0)
802025a0: 8a 85        	mv	a1, sp
802025a2: 02 96        	jalr	a2
802025a4: 59 e5        	bnez	a0, 0x80202632 <.LBB220_31+0x11a>
802025a6: c1 04        	addi	s1, s1, 16
802025a8: 13 0a 8a fc  	addi	s4, s4, -56
802025ac: 13 04 84 03  	addi	s0, s0, 56
802025b0: e3 18 0a f6  	bnez	s4, 0x80202520 <.LBB220_31+0x8>
802025b4: 81 a8        	j	0x80202604 <.LBB220_31+0xec>
802025b6: 03 b5 89 02  	ld	a0, 40(s3)
802025ba: 31 c9        	beqz	a0, 0x8020260e <.LBB220_31+0xf6>
802025bc: 83 b5 09 02  	ld	a1, 32(s3)
802025c0: 03 b6 09 01  	ld	a2, 16(s3)
802025c4: 93 06 f5 ff  	addi	a3, a0, -1
802025c8: 92 06        	slli	a3, a3, 4
802025ca: 91 82        	srli	a3, a3, 4
802025cc: 13 89 16 00  	addi	s2, a3, 1
802025d0: 13 04 86 00  	addi	s0, a2, 8
802025d4: 13 1a 45 00  	slli	s4, a0, 4
802025d8: 93 84 85 00  	addi	s1, a1, 8
802025dc: 10 60        	ld	a2, 0(s0)
802025de: 01 ca        	beqz	a2, 0x802025ee <.LBB220_31+0xd6>
802025e0: a2 66        	ld	a3, 8(sp)
802025e2: 02 65        	ld	a0, 0(sp)
802025e4: 83 35 84 ff  	ld	a1, -8(s0)
802025e8: 94 6e        	ld	a3, 24(a3)
802025ea: 82 96        	jalr	a3
802025ec: 39 e1        	bnez	a0, 0x80202632 <.LBB220_31+0x11a>
802025ee: 90 60        	ld	a2, 0(s1)
802025f0: 03 b5 84 ff  	ld	a0, -8(s1)
802025f4: 8a 85        	mv	a1, sp
802025f6: 02 96        	jalr	a2
802025f8: 0d ed        	bnez	a0, 0x80202632 <.LBB220_31+0x11a>
802025fa: 41 04        	addi	s0, s0, 16
802025fc: 41 1a        	addi	s4, s4, -16
802025fe: c1 04        	addi	s1, s1, 16
80202600: e3 1e 0a fc  	bnez	s4, 0x802025dc <.LBB220_31+0xc4>
80202604: 03 b5 89 01  	ld	a0, 24(s3)
80202608: 63 68 a9 00  	bltu	s2, a0, 0x80202618 <.LBB220_31+0x100>
8020260c: 2d a0        	j	0x80202636 <.LBB220_31+0x11e>
8020260e: 01 49        	li	s2, 0
80202610: 03 b5 89 01  	ld	a0, 24(s3)
80202614: 63 71 a9 02  	bgeu	s2, a0, 0x80202636 <.LBB220_31+0x11e>
80202618: 03 b5 09 01  	ld	a0, 16(s3)
8020261c: 93 15 49 00  	slli	a1, s2, 4
80202620: 33 06 b5 00  	add	a2, a0, a1
80202624: a2 66        	ld	a3, 8(sp)
80202626: 02 65        	ld	a0, 0(sp)
80202628: 0c 62        	ld	a1, 0(a2)
8020262a: 10 66        	ld	a2, 8(a2)
8020262c: 94 6e        	ld	a3, 24(a3)
8020262e: 82 96        	jalr	a3
80202630: 19 c1        	beqz	a0, 0x80202636 <.LBB220_31+0x11e>
80202632: 05 45        	li	a0, 1
80202634: 11 a0        	j	0x80202638 <.LBB220_31+0x120>
80202636: 01 45        	li	a0, 0
80202638: e6 70        	ld	ra, 120(sp)
8020263a: 46 74        	ld	s0, 112(sp)
8020263c: a6 74        	ld	s1, 104(sp)
8020263e: 06 79        	ld	s2, 96(sp)
80202640: e6 69        	ld	s3, 88(sp)
80202642: 46 6a        	ld	s4, 80(sp)
80202644: a6 6a        	ld	s5, 72(sp)
80202646: 06 6b        	ld	s6, 64(sp)
80202648: 09 61        	addi	sp, sp, 128
8020264a: 82 80        	ret

000000008020264c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
8020264c: 59 71        	addi	sp, sp, -112
8020264e: 86 f4        	sd	ra, 104(sp)
80202650: a2 f0        	sd	s0, 96(sp)
80202652: a6 ec        	sd	s1, 88(sp)
80202654: ca e8        	sd	s2, 80(sp)
80202656: ce e4        	sd	s3, 72(sp)
80202658: d2 e0        	sd	s4, 64(sp)
8020265a: 56 fc        	sd	s5, 56(sp)
8020265c: 5a f8        	sd	s6, 48(sp)
8020265e: 5e f4        	sd	s7, 40(sp)
80202660: 62 f0        	sd	s8, 32(sp)
80202662: 66 ec        	sd	s9, 24(sp)
80202664: 6a e8        	sd	s10, 16(sp)
80202666: 6e e4        	sd	s11, 8(sp)
80202668: be 89        	mv	s3, a5
8020266a: 3a 89        	mv	s2, a4
8020266c: 36 8b        	mv	s6, a3
8020266e: 32 8a        	mv	s4, a2
80202670: 2a 8c        	mv	s8, a0
80202672: b9 c1        	beqz	a1, 0x802026b8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
80202674: 03 64 0c 03  	lwu	s0, 48(s8)
80202678: 13 75 14 00  	andi	a0, s0, 1
8020267c: b7 0a 11 00  	lui	s5, 272
80202680: 19 c1        	beqz	a0, 0x80202686 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
80202682: 93 0a b0 02  	li	s5, 43
80202686: b3 0c 35 01  	add	s9, a0, s3
8020268a: 13 75 44 00  	andi	a0, s0, 4
8020268e: 15 cd        	beqz	a0, 0x802026ca <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80202690: 13 05 00 02  	li	a0, 32
80202694: 63 70 ab 04  	bgeu	s6, a0, 0x802026d4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80202698: 01 45        	li	a0, 0
8020269a: 63 03 0b 04  	beqz	s6, 0x802026e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
8020269e: da 85        	mv	a1, s6
802026a0: 52 86        	mv	a2, s4
802026a2: 83 06 06 00  	lb	a3, 0(a2)
802026a6: 05 06        	addi	a2, a2, 1
802026a8: 93 a6 06 fc  	slti	a3, a3, -64
802026ac: 93 c6 16 00  	xori	a3, a3, 1
802026b0: fd 15        	addi	a1, a1, -1
802026b2: 36 95        	add	a0, a0, a3
802026b4: fd f5        	bnez	a1, 0x802026a2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
802026b6: 2d a0        	j	0x802026e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
802026b8: 03 24 0c 03  	lw	s0, 48(s8)
802026bc: 93 8c 19 00  	addi	s9, s3, 1
802026c0: 93 0a d0 02  	li	s5, 45
802026c4: 13 75 44 00  	andi	a0, s0, 4
802026c8: 61 f5        	bnez	a0, 0x80202690 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
802026ca: 01 4a        	li	s4, 0
802026cc: 03 35 0c 01  	ld	a0, 16(s8)
802026d0: 01 ed        	bnez	a0, 0x802026e8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
802026d2: 99 a0        	j	0x80202718 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
802026d4: 52 85        	mv	a0, s4
802026d6: da 85        	mv	a1, s6
802026d8: 97 00 00 00  	auipc	ra, 0
802026dc: e7 80 c0 44  	jalr	1100(ra)
802026e0: aa 9c        	add	s9, s9, a0
802026e2: 03 35 0c 01  	ld	a0, 16(s8)
802026e6: 0d c9        	beqz	a0, 0x80202718 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
802026e8: 03 3d 8c 01  	ld	s10, 24(s8)
802026ec: 63 f6 ac 03  	bgeu	s9, s10, 0x80202718 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
802026f0: 13 75 84 00  	andi	a0, s0, 8
802026f4: 41 e5        	bnez	a0, 0x8020277c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
802026f6: 83 45 8c 03  	lbu	a1, 56(s8)
802026fa: 0d 46        	li	a2, 3
802026fc: 05 45        	li	a0, 1
802026fe: 63 83 c5 00  	beq	a1, a2, 0x80202704 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80202702: 2e 85        	mv	a0, a1
80202704: 93 75 35 00  	andi	a1, a0, 3
80202708: 33 05 9d 41  	sub	a0, s10, s9
8020270c: e1 c1        	beqz	a1, 0x802027cc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
8020270e: 05 46        	li	a2, 1
80202710: 63 91 c5 0c  	bne	a1, a2, 0x802027d2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80202714: 01 4d        	li	s10, 0
80202716: d9 a0        	j	0x802027dc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80202718: 03 34 0c 00  	ld	s0, 0(s8)
8020271c: 83 34 8c 00  	ld	s1, 8(s8)
80202720: 22 85        	mv	a0, s0
80202722: a6 85        	mv	a1, s1
80202724: 56 86        	mv	a2, s5
80202726: d2 86        	mv	a3, s4
80202728: 5a 87        	mv	a4, s6
8020272a: 97 00 00 00  	auipc	ra, 0
8020272e: e7 80 00 14  	jalr	320(ra)
80202732: 85 4b        	li	s7, 1
80202734: 0d c1        	beqz	a0, 0x80202756 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80202736: 5e 85        	mv	a0, s7
80202738: a6 70        	ld	ra, 104(sp)
8020273a: 06 74        	ld	s0, 96(sp)
8020273c: e6 64        	ld	s1, 88(sp)
8020273e: 46 69        	ld	s2, 80(sp)
80202740: a6 69        	ld	s3, 72(sp)
80202742: 06 6a        	ld	s4, 64(sp)
80202744: e2 7a        	ld	s5, 56(sp)
80202746: 42 7b        	ld	s6, 48(sp)
80202748: a2 7b        	ld	s7, 40(sp)
8020274a: 02 7c        	ld	s8, 32(sp)
8020274c: e2 6c        	ld	s9, 24(sp)
8020274e: 42 6d        	ld	s10, 16(sp)
80202750: a2 6d        	ld	s11, 8(sp)
80202752: 65 61        	addi	sp, sp, 112
80202754: 82 80        	ret
80202756: 9c 6c        	ld	a5, 24(s1)
80202758: 22 85        	mv	a0, s0
8020275a: ca 85        	mv	a1, s2
8020275c: 4e 86        	mv	a2, s3
8020275e: a6 70        	ld	ra, 104(sp)
80202760: 06 74        	ld	s0, 96(sp)
80202762: e6 64        	ld	s1, 88(sp)
80202764: 46 69        	ld	s2, 80(sp)
80202766: a6 69        	ld	s3, 72(sp)
80202768: 06 6a        	ld	s4, 64(sp)
8020276a: e2 7a        	ld	s5, 56(sp)
8020276c: 42 7b        	ld	s6, 48(sp)
8020276e: a2 7b        	ld	s7, 40(sp)
80202770: 02 7c        	ld	s8, 32(sp)
80202772: e2 6c        	ld	s9, 24(sp)
80202774: 42 6d        	ld	s10, 16(sp)
80202776: a2 6d        	ld	s11, 8(sp)
80202778: 65 61        	addi	sp, sp, 112
8020277a: 82 87        	jr	a5
8020277c: 03 24 4c 03  	lw	s0, 52(s8)
80202780: 13 05 00 03  	li	a0, 48
80202784: 83 45 8c 03  	lbu	a1, 56(s8)
80202788: 2e e0        	sd	a1, 0(sp)
8020278a: 83 3d 0c 00  	ld	s11, 0(s8)
8020278e: 83 34 8c 00  	ld	s1, 8(s8)
80202792: 23 2a ac 02  	sw	a0, 52(s8)
80202796: 85 4b        	li	s7, 1
80202798: 23 0c 7c 03  	sb	s7, 56(s8)
8020279c: 6e 85        	mv	a0, s11
8020279e: a6 85        	mv	a1, s1
802027a0: 56 86        	mv	a2, s5
802027a2: d2 86        	mv	a3, s4
802027a4: 5a 87        	mv	a4, s6
802027a6: 97 00 00 00  	auipc	ra, 0
802027aa: e7 80 40 0c  	jalr	196(ra)
802027ae: 41 f5        	bnez	a0, 0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802027b0: 22 8a        	mv	s4, s0
802027b2: 33 05 9d 41  	sub	a0, s10, s9
802027b6: 13 04 15 00  	addi	s0, a0, 1
802027ba: 7d 14        	addi	s0, s0, -1
802027bc: 49 c4        	beqz	s0, 0x80202846 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
802027be: 90 70        	ld	a2, 32(s1)
802027c0: 93 05 00 03  	li	a1, 48
802027c4: 6e 85        	mv	a0, s11
802027c6: 02 96        	jalr	a2
802027c8: 6d d9        	beqz	a0, 0x802027ba <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
802027ca: b5 b7        	j	0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802027cc: 2a 8d        	mv	s10, a0
802027ce: 2e 85        	mv	a0, a1
802027d0: 31 a0        	j	0x802027dc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
802027d2: 93 05 15 00  	addi	a1, a0, 1
802027d6: 05 81        	srli	a0, a0, 1
802027d8: 13 dd 15 00  	srli	s10, a1, 1
802027dc: 83 3c 0c 00  	ld	s9, 0(s8)
802027e0: 83 3d 8c 00  	ld	s11, 8(s8)
802027e4: 03 24 4c 03  	lw	s0, 52(s8)
802027e8: 93 04 15 00  	addi	s1, a0, 1
802027ec: fd 14        	addi	s1, s1, -1
802027ee: 89 c8        	beqz	s1, 0x80202800 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
802027f0: 03 b6 0d 02  	ld	a2, 32(s11)
802027f4: 66 85        	mv	a0, s9
802027f6: a2 85        	mv	a1, s0
802027f8: 02 96        	jalr	a2
802027fa: 6d d9        	beqz	a0, 0x802027ec <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
802027fc: 85 4b        	li	s7, 1
802027fe: 25 bf        	j	0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202800: 37 05 11 00  	lui	a0, 272
80202804: 85 4b        	li	s7, 1
80202806: e3 08 a4 f2  	beq	s0, a0, 0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020280a: 66 85        	mv	a0, s9
8020280c: ee 85        	mv	a1, s11
8020280e: 56 86        	mv	a2, s5
80202810: d2 86        	mv	a3, s4
80202812: 5a 87        	mv	a4, s6
80202814: 97 00 00 00  	auipc	ra, 0
80202818: e7 80 60 05  	jalr	86(ra)
8020281c: 09 fd        	bnez	a0, 0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020281e: 83 b6 8d 01  	ld	a3, 24(s11)
80202822: 66 85        	mv	a0, s9
80202824: ca 85        	mv	a1, s2
80202826: 4e 86        	mv	a2, s3
80202828: 82 96        	jalr	a3
8020282a: 11 f5        	bnez	a0, 0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020282c: 81 44        	li	s1, 0
8020282e: 63 0a 9d 02  	beq	s10, s1, 0x80202862 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80202832: 03 b6 0d 02  	ld	a2, 32(s11)
80202836: 85 04        	addi	s1, s1, 1
80202838: 66 85        	mv	a0, s9
8020283a: a2 85        	mv	a1, s0
8020283c: 02 96        	jalr	a2
8020283e: 65 d9        	beqz	a0, 0x8020282e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80202840: 13 85 f4 ff  	addi	a0, s1, -1
80202844: 05 a0        	j	0x80202864 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80202846: 94 6c        	ld	a3, 24(s1)
80202848: 6e 85        	mv	a0, s11
8020284a: ca 85        	mv	a1, s2
8020284c: 4e 86        	mv	a2, s3
8020284e: 82 96        	jalr	a3
80202850: e3 13 05 ee  	bnez	a0, 0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202854: 81 4b        	li	s7, 0
80202856: 23 2a 4c 03  	sw	s4, 52(s8)
8020285a: 02 65        	ld	a0, 0(sp)
8020285c: 23 0c ac 02  	sb	a0, 56(s8)
80202860: d9 bd        	j	0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202862: 6a 85        	mv	a0, s10
80202864: b3 3b a5 01  	sltu	s7, a0, s10
80202868: f9 b5        	j	0x80202736 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

000000008020286a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
8020286a: 79 71        	addi	sp, sp, -48
8020286c: 06 f4        	sd	ra, 40(sp)
8020286e: 22 f0        	sd	s0, 32(sp)
80202870: 26 ec        	sd	s1, 24(sp)
80202872: 4a e8        	sd	s2, 16(sp)
80202874: 4e e4        	sd	s3, 8(sp)
80202876: 9b 07 06 00  	sext.w	a5, a2
8020287a: 37 08 11 00  	lui	a6, 272
8020287e: 3a 89        	mv	s2, a4
80202880: b6 84        	mv	s1, a3
80202882: 2e 84        	mv	s0, a1
80202884: aa 89        	mv	s3, a0
80202886: 63 89 07 01  	beq	a5, a6, 0x80202898 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
8020288a: 14 70        	ld	a3, 32(s0)
8020288c: 4e 85        	mv	a0, s3
8020288e: b2 85        	mv	a1, a2
80202890: 82 96        	jalr	a3
80202892: aa 85        	mv	a1, a0
80202894: 05 45        	li	a0, 1
80202896: 91 ed        	bnez	a1, 0x802028b2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80202898: 81 cc        	beqz	s1, 0x802028b0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
8020289a: 1c 6c        	ld	a5, 24(s0)
8020289c: 4e 85        	mv	a0, s3
8020289e: a6 85        	mv	a1, s1
802028a0: 4a 86        	mv	a2, s2
802028a2: a2 70        	ld	ra, 40(sp)
802028a4: 02 74        	ld	s0, 32(sp)
802028a6: e2 64        	ld	s1, 24(sp)
802028a8: 42 69        	ld	s2, 16(sp)
802028aa: a2 69        	ld	s3, 8(sp)
802028ac: 45 61        	addi	sp, sp, 48
802028ae: 82 87        	jr	a5
802028b0: 01 45        	li	a0, 0
802028b2: a2 70        	ld	ra, 40(sp)
802028b4: 02 74        	ld	s0, 32(sp)
802028b6: e2 64        	ld	s1, 24(sp)
802028b8: 42 69        	ld	s2, 16(sp)
802028ba: a2 69        	ld	s3, 8(sp)
802028bc: 45 61        	addi	sp, sp, 48
802028be: 82 80        	ret

00000000802028c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
802028c0: 5d 71        	addi	sp, sp, -80
802028c2: 86 e4        	sd	ra, 72(sp)
802028c4: a2 e0        	sd	s0, 64(sp)
802028c6: 26 fc        	sd	s1, 56(sp)
802028c8: 4a f8        	sd	s2, 48(sp)
802028ca: 4e f4        	sd	s3, 40(sp)
802028cc: 52 f0        	sd	s4, 32(sp)
802028ce: 56 ec        	sd	s5, 24(sp)
802028d0: 5a e8        	sd	s6, 16(sp)
802028d2: 5e e4        	sd	s7, 8(sp)
802028d4: 2a 8a        	mv	s4, a0
802028d6: 83 32 05 01  	ld	t0, 16(a0)
802028da: 08 71        	ld	a0, 32(a0)
802028dc: 93 86 f2 ff  	addi	a3, t0, -1
802028e0: b3 36 d0 00  	snez	a3, a3
802028e4: 13 07 f5 ff  	addi	a4, a0, -1
802028e8: 33 37 e0 00  	snez	a4, a4
802028ec: f9 8e        	and	a3, a3, a4
802028ee: b2 89        	mv	s3, a2
802028f0: 2e 89        	mv	s2, a1
802028f2: 63 9d 06 16  	bnez	a3, 0x80202a6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
802028f6: 85 45        	li	a1, 1
802028f8: 63 18 b5 10  	bne	a0, a1, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802028fc: 03 35 8a 02  	ld	a0, 40(s4)
80202900: 81 45        	li	a1, 0
80202902: b3 06 39 01  	add	a3, s2, s3
80202906: 13 07 15 00  	addi	a4, a0, 1
8020290a: 37 03 11 00  	lui	t1, 272
8020290e: 93 08 f0 0d  	li	a7, 223
80202912: 13 08 00 0f  	li	a6, 240
80202916: 4a 86        	mv	a2, s2
80202918: 01 a8        	j	0x80202928 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
8020291a: 13 05 16 00  	addi	a0, a2, 1
8020291e: 91 8d        	sub	a1, a1, a2
80202920: aa 95        	add	a1, a1, a0
80202922: 2a 86        	mv	a2, a0
80202924: 63 02 64 0e  	beq	s0, t1, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202928: 7d 17        	addi	a4, a4, -1
8020292a: 25 c7        	beqz	a4, 0x80202992 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
8020292c: 63 0e d6 0c  	beq	a2, a3, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202930: 03 05 06 00  	lb	a0, 0(a2)
80202934: 13 74 f5 0f  	andi	s0, a0, 255
80202938: e3 51 05 fe  	bgez	a0, 0x8020291a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
8020293c: 03 45 16 00  	lbu	a0, 1(a2)
80202940: 93 77 f4 01  	andi	a5, s0, 31
80202944: 93 74 f5 03  	andi	s1, a0, 63
80202948: 63 f9 88 02  	bgeu	a7, s0, 0x8020297a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
8020294c: 03 45 26 00  	lbu	a0, 2(a2)
80202950: 9a 04        	slli	s1, s1, 6
80202952: 13 75 f5 03  	andi	a0, a0, 63
80202956: c9 8c        	or	s1, s1, a0
80202958: 63 67 04 03  	bltu	s0, a6, 0x80202986 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
8020295c: 03 45 36 00  	lbu	a0, 3(a2)
80202960: f6 17        	slli	a5, a5, 61
80202962: ad 93        	srli	a5, a5, 43
80202964: 9a 04        	slli	s1, s1, 6
80202966: 13 75 f5 03  	andi	a0, a0, 63
8020296a: 45 8d        	or	a0, a0, s1
8020296c: 33 64 f5 00  	or	s0, a0, a5
80202970: 63 0c 64 08  	beq	s0, t1, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202974: 13 05 46 00  	addi	a0, a2, 4
80202978: 5d b7        	j	0x8020291e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
8020297a: 13 05 26 00  	addi	a0, a2, 2
8020297e: 9a 07        	slli	a5, a5, 6
80202980: 33 e4 97 00  	or	s0, a5, s1
80202984: 69 bf        	j	0x8020291e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202986: 13 05 36 00  	addi	a0, a2, 3
8020298a: b2 07        	slli	a5, a5, 12
8020298c: 33 e4 f4 00  	or	s0, s1, a5
80202990: 79 b7        	j	0x8020291e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202992: 63 0b d6 06  	beq	a2, a3, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202996: 03 05 06 00  	lb	a0, 0(a2)
8020299a: 63 53 05 04  	bgez	a0, 0x802029e0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
8020299e: 13 75 f5 0f  	andi	a0, a0, 255
802029a2: 93 06 00 0e  	li	a3, 224
802029a6: 63 6d d5 02  	bltu	a0, a3, 0x802029e0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802029aa: 93 06 00 0f  	li	a3, 240
802029ae: 63 69 d5 02  	bltu	a0, a3, 0x802029e0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802029b2: 83 46 16 00  	lbu	a3, 1(a2)
802029b6: 03 47 26 00  	lbu	a4, 2(a2)
802029ba: 93 f6 f6 03  	andi	a3, a3, 63
802029be: 13 77 f7 03  	andi	a4, a4, 63
802029c2: 03 46 36 00  	lbu	a2, 3(a2)
802029c6: 76 15        	slli	a0, a0, 61
802029c8: 2d 91        	srli	a0, a0, 43
802029ca: b2 06        	slli	a3, a3, 12
802029cc: 1a 07        	slli	a4, a4, 6
802029ce: d9 8e        	or	a3, a3, a4
802029d0: 13 76 f6 03  	andi	a2, a2, 63
802029d4: 55 8e        	or	a2, a2, a3
802029d6: 51 8d        	or	a0, a0, a2
802029d8: 37 06 11 00  	lui	a2, 272
802029dc: 63 06 c5 02  	beq	a0, a2, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802029e0: 85 c1        	beqz	a1, 0x80202a00 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802029e2: 63 fd 35 01  	bgeu	a1, s3, 0x802029fc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
802029e6: 33 05 b9 00  	add	a0, s2, a1
802029ea: 03 05 05 00  	lb	a0, 0(a0)
802029ee: 13 06 00 fc  	li	a2, -64
802029f2: 63 57 c5 00  	bge	a0, a2, 0x80202a00 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802029f6: 01 45        	li	a0, 0
802029f8: 11 e5        	bnez	a0, 0x80202a04 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
802029fa: 39 a0        	j	0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802029fc: e3 9d 35 ff  	bne	a1, s3, 0x802029f6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80202a00: 4a 85        	mv	a0, s2
80202a02: 19 c1        	beqz	a0, 0x80202a08 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202a04: ae 89        	mv	s3, a1
80202a06: 2a 89        	mv	s2, a0
80202a08: 63 82 02 06  	beqz	t0, 0x80202a6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202a0c: 03 34 8a 01  	ld	s0, 24(s4)
80202a10: 13 05 00 02  	li	a0, 32
80202a14: 63 f4 a9 04  	bgeu	s3, a0, 0x80202a5c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80202a18: 01 45        	li	a0, 0
80202a1a: 63 8e 09 00  	beqz	s3, 0x80202a36 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80202a1e: ce 85        	mv	a1, s3
80202a20: 4a 86        	mv	a2, s2
80202a22: 83 06 06 00  	lb	a3, 0(a2)
80202a26: 05 06        	addi	a2, a2, 1
80202a28: 93 a6 06 fc  	slti	a3, a3, -64
80202a2c: 93 c6 16 00  	xori	a3, a3, 1
80202a30: fd 15        	addi	a1, a1, -1
80202a32: 36 95        	add	a0, a0, a3
80202a34: fd f5        	bnez	a1, 0x80202a22 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80202a36: 63 7b 85 02  	bgeu	a0, s0, 0x80202a6c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202a3a: 83 45 8a 03  	lbu	a1, 56(s4)
80202a3e: 8d 46        	li	a3, 3
80202a40: 01 46        	li	a2, 0
80202a42: 63 83 d5 00  	beq	a1, a3, 0x80202a48 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80202a46: 2e 86        	mv	a2, a1
80202a48: 93 75 36 00  	andi	a1, a2, 3
80202a4c: 33 05 a4 40  	sub	a0, s0, a0
80202a50: a1 c1        	beqz	a1, 0x80202a90 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80202a52: 05 46        	li	a2, 1
80202a54: 63 91 c5 04  	bne	a1, a2, 0x80202a96 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80202a58: 81 4a        	li	s5, 0
80202a5a: 99 a0        	j	0x80202aa0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80202a5c: 4a 85        	mv	a0, s2
80202a5e: ce 85        	mv	a1, s3
80202a60: 97 00 00 00  	auipc	ra, 0
80202a64: e7 80 40 0c  	jalr	196(ra)
80202a68: e3 69 85 fc  	bltu	a0, s0, 0x80202a3a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80202a6c: 83 35 8a 00  	ld	a1, 8(s4)
80202a70: 03 35 0a 00  	ld	a0, 0(s4)
80202a74: 9c 6d        	ld	a5, 24(a1)
80202a76: ca 85        	mv	a1, s2
80202a78: 4e 86        	mv	a2, s3
80202a7a: a6 60        	ld	ra, 72(sp)
80202a7c: 06 64        	ld	s0, 64(sp)
80202a7e: e2 74        	ld	s1, 56(sp)
80202a80: 42 79        	ld	s2, 48(sp)
80202a82: a2 79        	ld	s3, 40(sp)
80202a84: 02 7a        	ld	s4, 32(sp)
80202a86: e2 6a        	ld	s5, 24(sp)
80202a88: 42 6b        	ld	s6, 16(sp)
80202a8a: a2 6b        	ld	s7, 8(sp)
80202a8c: 61 61        	addi	sp, sp, 80
80202a8e: 82 87        	jr	a5
80202a90: aa 8a        	mv	s5, a0
80202a92: 2e 85        	mv	a0, a1
80202a94: 31 a0        	j	0x80202aa0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80202a96: 93 05 15 00  	addi	a1, a0, 1
80202a9a: 05 81        	srli	a0, a0, 1
80202a9c: 93 da 15 00  	srli	s5, a1, 1
80202aa0: 03 3b 0a 00  	ld	s6, 0(s4)
80202aa4: 83 3b 8a 00  	ld	s7, 8(s4)
80202aa8: 83 24 4a 03  	lw	s1, 52(s4)
80202aac: 13 04 15 00  	addi	s0, a0, 1
80202ab0: 7d 14        	addi	s0, s0, -1
80202ab2: 09 c8        	beqz	s0, 0x80202ac4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80202ab4: 03 b6 0b 02  	ld	a2, 32(s7)
80202ab8: 5a 85        	mv	a0, s6
80202aba: a6 85        	mv	a1, s1
80202abc: 02 96        	jalr	a2
80202abe: 6d d9        	beqz	a0, 0x80202ab0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80202ac0: 05 4a        	li	s4, 1
80202ac2: 2d a8        	j	0x80202afc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202ac4: 37 05 11 00  	lui	a0, 272
80202ac8: 05 4a        	li	s4, 1
80202aca: 63 89 a4 02  	beq	s1, a0, 0x80202afc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202ace: 83 b6 8b 01  	ld	a3, 24(s7)
80202ad2: 5a 85        	mv	a0, s6
80202ad4: ca 85        	mv	a1, s2
80202ad6: 4e 86        	mv	a2, s3
80202ad8: 82 96        	jalr	a3
80202ada: 0d e1        	bnez	a0, 0x80202afc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202adc: 01 44        	li	s0, 0
80202ade: 63 8c 8a 00  	beq	s5, s0, 0x80202af6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80202ae2: 03 b6 0b 02  	ld	a2, 32(s7)
80202ae6: 05 04        	addi	s0, s0, 1
80202ae8: 5a 85        	mv	a0, s6
80202aea: a6 85        	mv	a1, s1
80202aec: 02 96        	jalr	a2
80202aee: 65 d9        	beqz	a0, 0x80202ade <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
80202af0: 13 05 f4 ff  	addi	a0, s0, -1
80202af4: 11 a0        	j	0x80202af8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80202af6: 56 85        	mv	a0, s5
80202af8: 33 3a 55 01  	sltu	s4, a0, s5
80202afc: 52 85        	mv	a0, s4
80202afe: a6 60        	ld	ra, 72(sp)
80202b00: 06 64        	ld	s0, 64(sp)
80202b02: e2 74        	ld	s1, 56(sp)
80202b04: 42 79        	ld	s2, 48(sp)
80202b06: a2 79        	ld	s3, 40(sp)
80202b08: 02 7a        	ld	s4, 32(sp)
80202b0a: e2 6a        	ld	s5, 24(sp)
80202b0c: 42 6b        	ld	s6, 16(sp)
80202b0e: a2 6b        	ld	s7, 8(sp)
80202b10: 61 61        	addi	sp, sp, 80
80202b12: 82 80        	ret

0000000080202b14 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
80202b14: ae 86        	mv	a3, a1
80202b16: aa 85        	mv	a1, a0
80202b18: 32 85        	mv	a0, a2
80202b1a: 36 86        	mv	a2, a3
80202b1c: 17 03 00 00  	auipc	t1, 0
80202b20: 67 00 43 da  	jr	-604(t1)

0000000080202b24 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80202b24: 2a 86        	mv	a2, a0
80202b26: 1d 05        	addi	a0, a0, 7
80202b28: 13 77 85 ff  	andi	a4, a0, -8
80202b2c: b3 08 c7 40  	sub	a7, a4, a2
80202b30: 63 ec 15 01  	bltu	a1, a7, 0x80202b48 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80202b34: 33 88 15 41  	sub	a6, a1, a7
80202b38: 13 35 88 00  	sltiu	a0, a6, 8
80202b3c: 93 b7 98 00  	sltiu	a5, a7, 9
80202b40: 93 c7 17 00  	xori	a5, a5, 1
80202b44: 5d 8d        	or	a0, a0, a5
80202b46: 11 cd        	beqz	a0, 0x80202b62 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80202b48: 01 45        	li	a0, 0
80202b4a: 99 c9        	beqz	a1, 0x80202b60 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80202b4c: 83 06 06 00  	lb	a3, 0(a2)
80202b50: 05 06        	addi	a2, a2, 1
80202b52: 93 a6 06 fc  	slti	a3, a3, -64
80202b56: 93 c6 16 00  	xori	a3, a3, 1
80202b5a: fd 15        	addi	a1, a1, -1
80202b5c: 36 95        	add	a0, a0, a3
80202b5e: fd f5        	bnez	a1, 0x80202b4c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80202b60: 82 80        	ret
80202b62: 93 75 78 00  	andi	a1, a6, 7
80202b66: 81 47        	li	a5, 0
80202b68: 63 0f c7 00  	beq	a4, a2, 0x80202b86 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80202b6c: 33 07 e6 40  	sub	a4, a2, a4
80202b70: 32 85        	mv	a0, a2
80202b72: 83 06 05 00  	lb	a3, 0(a0)
80202b76: 05 05        	addi	a0, a0, 1
80202b78: 93 a6 06 fc  	slti	a3, a3, -64
80202b7c: 93 c6 16 00  	xori	a3, a3, 1
80202b80: 05 07        	addi	a4, a4, 1
80202b82: b6 97        	add	a5, a5, a3
80202b84: 7d f7        	bnez	a4, 0x80202b72 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80202b86: b3 02 16 01  	add	t0, a2, a7
80202b8a: 01 46        	li	a2, 0
80202b8c: 99 cd        	beqz	a1, 0x80202baa <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80202b8e: 13 75 88 ff  	andi	a0, a6, -8
80202b92: b3 86 a2 00  	add	a3, t0, a0
80202b96: 03 85 06 00  	lb	a0, 0(a3)
80202b9a: 85 06        	addi	a3, a3, 1
80202b9c: 13 25 05 fc  	slti	a0, a0, -64
80202ba0: 13 45 15 00  	xori	a0, a0, 1
80202ba4: fd 15        	addi	a1, a1, -1
80202ba6: 2a 96        	add	a2, a2, a0
80202ba8: fd f5        	bnez	a1, 0x80202b96 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80202baa: 13 57 38 00  	srli	a4, a6, 3

0000000080202bae <.LBB292_27>:
80202bae: 17 15 00 00  	auipc	a0, 1
80202bb2: 13 05 25 61  	addi	a0, a0, 1554
80202bb6: 03 3f 05 00  	ld	t5, 0(a0)

0000000080202bba <.LBB292_28>:
80202bba: 17 15 00 00  	auipc	a0, 1
80202bbe: 13 05 e5 60  	addi	a0, a0, 1550
80202bc2: 83 38 05 00  	ld	a7, 0(a0)
80202bc6: 37 15 00 10  	lui	a0, 65537
80202bca: 12 05        	slli	a0, a0, 4
80202bcc: 05 05        	addi	a0, a0, 1
80202bce: 42 05        	slli	a0, a0, 16
80202bd0: 13 08 15 00  	addi	a6, a0, 1
80202bd4: 33 05 f6 00  	add	a0, a2, a5
80202bd8: 25 a0        	j	0x80202c00 <.LBB292_28+0x46>
80202bda: 13 16 3e 00  	slli	a2, t3, 3
80202bde: b3 02 c3 00  	add	t0, t1, a2
80202be2: 33 87 c3 41  	sub	a4, t2, t3
80202be6: 13 76 3e 00  	andi	a2, t3, 3
80202bea: b3 f6 15 01  	and	a3, a1, a7
80202bee: a1 81        	srli	a1, a1, 8
80202bf0: b3 f5 15 01  	and	a1, a1, a7
80202bf4: b6 95        	add	a1, a1, a3
80202bf6: b3 85 05 03  	mul	a1, a1, a6
80202bfa: c1 91        	srli	a1, a1, 48
80202bfc: 2e 95        	add	a0, a0, a1
80202bfe: 41 e2        	bnez	a2, 0x80202c7e <.LBB292_28+0xc4>
80202c00: 25 d3        	beqz	a4, 0x80202b60 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80202c02: ba 83        	mv	t2, a4
80202c04: 16 83        	mv	t1, t0
80202c06: 93 05 00 0c  	li	a1, 192
80202c0a: 3a 8e        	mv	t3, a4
80202c0c: 63 64 b7 00  	bltu	a4, a1, 0x80202c14 <.LBB292_28+0x5a>
80202c10: 13 0e 00 0c  	li	t3, 192
80202c14: 93 75 ce 0f  	andi	a1, t3, 252
80202c18: 13 96 35 00  	slli	a2, a1, 3
80202c1c: b3 0e c3 00  	add	t4, t1, a2
80202c20: cd dd        	beqz	a1, 0x80202bda <.LBB292_28+0x20>
80202c22: 81 45        	li	a1, 0
80202c24: 1a 86        	mv	a2, t1
80202c26: 55 da        	beqz	a2, 0x80202bda <.LBB292_28+0x20>
80202c28: 18 62        	ld	a4, 0(a2)
80202c2a: 93 47 f7 ff  	not	a5, a4
80202c2e: 9d 83        	srli	a5, a5, 7
80202c30: 19 83        	srli	a4, a4, 6
80202c32: 14 66        	ld	a3, 8(a2)
80202c34: 5d 8f        	or	a4, a4, a5
80202c36: 33 77 e7 01  	and	a4, a4, t5
80202c3a: ba 95        	add	a1, a1, a4
80202c3c: 13 c7 f6 ff  	not	a4, a3
80202c40: 1d 83        	srli	a4, a4, 7
80202c42: 99 82        	srli	a3, a3, 6
80202c44: 1c 6a        	ld	a5, 16(a2)
80202c46: d9 8e        	or	a3, a3, a4
80202c48: b3 f6 e6 01  	and	a3, a3, t5
80202c4c: b6 95        	add	a1, a1, a3
80202c4e: 93 c6 f7 ff  	not	a3, a5
80202c52: 9d 82        	srli	a3, a3, 7
80202c54: 13 d7 67 00  	srli	a4, a5, 6
80202c58: 1c 6e        	ld	a5, 24(a2)
80202c5a: d9 8e        	or	a3, a3, a4
80202c5c: b3 f6 e6 01  	and	a3, a3, t5
80202c60: b6 95        	add	a1, a1, a3
80202c62: 93 c6 f7 ff  	not	a3, a5
80202c66: 9d 82        	srli	a3, a3, 7
80202c68: 13 d7 67 00  	srli	a4, a5, 6
80202c6c: d9 8e        	or	a3, a3, a4
80202c6e: b3 f6 e6 01  	and	a3, a3, t5
80202c72: 13 06 06 02  	addi	a2, a2, 32
80202c76: b6 95        	add	a1, a1, a3
80202c78: e3 17 d6 fb  	bne	a2, t4, 0x80202c26 <.LBB292_28+0x6c>
80202c7c: b9 bf        	j	0x80202bda <.LBB292_28+0x20>
80202c7e: 63 0a 03 02  	beqz	t1, 0x80202cb2 <.LBB292_28+0xf8>
80202c82: 93 05 00 0c  	li	a1, 192
80202c86: 63 e4 b3 00  	bltu	t2, a1, 0x80202c8e <.LBB292_28+0xd4>
80202c8a: 93 03 00 0c  	li	t2, 192
80202c8e: 81 45        	li	a1, 0
80202c90: 13 f6 33 00  	andi	a2, t2, 3
80202c94: 0e 06        	slli	a2, a2, 3
80202c96: 83 b6 0e 00  	ld	a3, 0(t4)
80202c9a: a1 0e        	addi	t4, t4, 8
80202c9c: 13 c7 f6 ff  	not	a4, a3
80202ca0: 1d 83        	srli	a4, a4, 7
80202ca2: 99 82        	srli	a3, a3, 6
80202ca4: d9 8e        	or	a3, a3, a4
80202ca6: b3 f6 e6 01  	and	a3, a3, t5
80202caa: 61 16        	addi	a2, a2, -8
80202cac: b6 95        	add	a1, a1, a3
80202cae: 65 f6        	bnez	a2, 0x80202c96 <.LBB292_28+0xdc>
80202cb0: 11 a0        	j	0x80202cb4 <.LBB292_28+0xfa>
80202cb2: 81 45        	li	a1, 0
80202cb4: 33 f6 15 01  	and	a2, a1, a7
80202cb8: a1 81        	srli	a1, a1, 8
80202cba: b3 f5 15 01  	and	a1, a1, a7
80202cbe: b2 95        	add	a1, a1, a2
80202cc0: b3 85 05 03  	mul	a1, a1, a6
80202cc4: c1 91        	srli	a1, a1, 48
80202cc6: 2e 95        	add	a0, a0, a1
80202cc8: 82 80        	ret

0000000080202cca <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80202cca: 39 71        	addi	sp, sp, -64
80202ccc: 06 fc        	sd	ra, 56(sp)
80202cce: 22 f8        	sd	s0, 48(sp)
80202cd0: 26 f4        	sd	s1, 40(sp)
80202cd2: 32 88        	mv	a6, a2
80202cd4: 93 56 45 00  	srli	a3, a0, 4
80202cd8: 13 07 70 02  	li	a4, 39
80202cdc: 93 07 10 27  	li	a5, 625

0000000080202ce0 <.LBB580_10>:
80202ce0: 97 1e 00 00  	auipc	t4, 1
80202ce4: 93 8e 8e b7  	addi	t4, t4, -1160
80202ce8: 63 f3 f6 02  	bgeu	a3, a5, 0x80202d0e <.LBB580_10+0x2e>
80202cec: 93 06 30 06  	li	a3, 99
80202cf0: 63 e9 a6 0a  	bltu	a3, a0, 0x80202da2 <.LBB580_11+0x92>
80202cf4: 29 46        	li	a2, 10
80202cf6: 63 77 c5 0e  	bgeu	a0, a2, 0x80202de4 <.LBB580_11+0xd4>
80202cfa: 93 06 f7 ff  	addi	a3, a4, -1
80202cfe: 13 06 11 00  	addi	a2, sp, 1
80202d02: 36 96        	add	a2, a2, a3
80202d04: 1b 05 05 03  	addiw	a0, a0, 48
80202d08: 23 00 a6 00  	sb	a0, 0(a2)
80202d0c: dd a8        	j	0x80202e02 <.LBB580_11+0xf2>
80202d0e: 01 47        	li	a4, 0

0000000080202d10 <.LBB580_11>:
80202d10: 97 16 00 00  	auipc	a3, 1
80202d14: 93 86 06 52  	addi	a3, a3, 1312
80202d18: 83 b8 06 00  	ld	a7, 0(a3)
80202d1c: 89 66        	lui	a3, 2
80202d1e: 9b 83 06 71  	addiw	t2, a3, 1808
80202d22: 85 66        	lui	a3, 1
80202d24: 1b 8e b6 47  	addiw	t3, a3, 1147
80202d28: 93 02 40 06  	li	t0, 100
80202d2c: 13 03 11 00  	addi	t1, sp, 1
80202d30: b7 e6 f5 05  	lui	a3, 24414
80202d34: 1b 8f f6 0f  	addiw	t5, a3, 255
80202d38: aa 87        	mv	a5, a0
80202d3a: 33 35 15 03  	mulhu	a0, a0, a7
80202d3e: 2d 81        	srli	a0, a0, 11
80202d40: 3b 06 75 02  	mulw	a2, a0, t2
80202d44: 3b 86 c7 40  	subw	a2, a5, a2
80202d48: 93 16 06 03  	slli	a3, a2, 48
80202d4c: c9 92        	srli	a3, a3, 50
80202d4e: b3 86 c6 03  	mul	a3, a3, t3
80202d52: 93 df 16 01  	srli	t6, a3, 17
80202d56: c1 82        	srli	a3, a3, 16
80202d58: 13 f4 e6 7f  	andi	s0, a3, 2046
80202d5c: bb 86 5f 02  	mulw	a3, t6, t0
80202d60: 15 9e        	subw	a2, a2, a3
80202d62: 46 16        	slli	a2, a2, 49
80202d64: 41 92        	srli	a2, a2, 48
80202d66: b3 86 8e 00  	add	a3, t4, s0
80202d6a: 33 04 e3 00  	add	s0, t1, a4
80202d6e: 83 cf 06 00  	lbu	t6, 0(a3)
80202d72: 83 86 16 00  	lb	a3, 1(a3)
80202d76: 76 96        	add	a2, a2, t4
80202d78: 83 04 16 00  	lb	s1, 1(a2)
80202d7c: 03 46 06 00  	lbu	a2, 0(a2)
80202d80: 23 02 d4 02  	sb	a3, 36(s0)
80202d84: a3 01 f4 03  	sb	t6, 35(s0)
80202d88: 23 03 94 02  	sb	s1, 38(s0)
80202d8c: a3 02 c4 02  	sb	a2, 37(s0)
80202d90: 71 17        	addi	a4, a4, -4
80202d92: e3 63 ff fa  	bltu	t5, a5, 0x80202d38 <.LBB580_11+0x28>
80202d96: 13 07 77 02  	addi	a4, a4, 39
80202d9a: 93 06 30 06  	li	a3, 99
80202d9e: e3 fb a6 f4  	bgeu	a3, a0, 0x80202cf4 <.LBB580_10+0x14>
80202da2: 13 16 05 03  	slli	a2, a0, 48
80202da6: 49 92        	srli	a2, a2, 50
80202da8: 85 66        	lui	a3, 1
80202daa: 9b 86 b6 47  	addiw	a3, a3, 1147
80202dae: 33 06 d6 02  	mul	a2, a2, a3
80202db2: 45 82        	srli	a2, a2, 17
80202db4: 93 06 40 06  	li	a3, 100
80202db8: bb 06 d6 02  	mulw	a3, a2, a3
80202dbc: 15 9d        	subw	a0, a0, a3
80202dbe: 46 15        	slli	a0, a0, 49
80202dc0: 41 91        	srli	a0, a0, 48
80202dc2: 79 17        	addi	a4, a4, -2
80202dc4: 76 95        	add	a0, a0, t4
80202dc6: 83 06 15 00  	lb	a3, 1(a0)
80202dca: 03 45 05 00  	lbu	a0, 0(a0)
80202dce: 93 07 11 00  	addi	a5, sp, 1
80202dd2: ba 97        	add	a5, a5, a4
80202dd4: a3 80 d7 00  	sb	a3, 1(a5)
80202dd8: 23 80 a7 00  	sb	a0, 0(a5)
80202ddc: 32 85        	mv	a0, a2
80202dde: 29 46        	li	a2, 10
80202de0: e3 6d c5 f0  	bltu	a0, a2, 0x80202cfa <.LBB580_10+0x1a>
80202de4: 06 05        	slli	a0, a0, 1
80202de6: 93 06 e7 ff  	addi	a3, a4, -2
80202dea: 76 95        	add	a0, a0, t4
80202dec: 03 06 15 00  	lb	a2, 1(a0)
80202df0: 03 45 05 00  	lbu	a0, 0(a0)
80202df4: 13 07 11 00  	addi	a4, sp, 1
80202df8: 36 97        	add	a4, a4, a3
80202dfa: a3 00 c7 00  	sb	a2, 1(a4)
80202dfe: 23 00 a7 00  	sb	a0, 0(a4)
80202e02: 13 05 11 00  	addi	a0, sp, 1
80202e06: 33 07 d5 00  	add	a4, a0, a3
80202e0a: 13 05 70 02  	li	a0, 39
80202e0e: b3 07 d5 40  	sub	a5, a0, a3

0000000080202e12 <.LBB580_12>:
80202e12: 17 16 00 00  	auipc	a2, 1
80202e16: 13 06 66 9a  	addi	a2, a2, -1626
80202e1a: 42 85        	mv	a0, a6
80202e1c: 81 46        	li	a3, 0
80202e1e: 97 00 00 00  	auipc	ra, 0
80202e22: e7 80 e0 82  	jalr	-2002(ra)
80202e26: e2 70        	ld	ra, 56(sp)
80202e28: 42 74        	ld	s0, 48(sp)
80202e2a: a2 74        	ld	s1, 40(sp)
80202e2c: 21 61        	addi	sp, sp, 64
80202e2e: 82 80        	ret

0000000080202e30 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80202e30: 03 65 05 00  	lwu	a0, 0(a0)
80202e34: 2e 86        	mv	a2, a1
80202e36: 85 45        	li	a1, 1
80202e38: 17 03 00 00  	auipc	t1, 0
80202e3c: 67 00 23 e9  	jr	-366(t1)

0000000080202e40 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80202e40: 08 61        	ld	a0, 0(a0)
80202e42: 2e 86        	mv	a2, a1
80202e44: 85 45        	li	a1, 1
80202e46: 17 03 00 00  	auipc	t1, 0
80202e4a: 67 00 43 e8  	jr	-380(t1)

0000000080202e4e <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
80202e4e: 90 65        	ld	a2, 8(a1)
80202e50: 88 61        	ld	a0, 0(a1)
80202e52: 1c 6e        	ld	a5, 24(a2)

0000000080202e54 <.LBB612_1>:
80202e54: 97 15 00 00  	auipc	a1, 1
80202e58: 93 85 c5 ac  	addi	a1, a1, -1332
80202e5c: 15 46        	li	a2, 5
80202e5e: 82 87        	jr	a5

0000000080202e60 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80202e60: 10 65        	ld	a2, 8(a0)
80202e62: 08 61        	ld	a0, 0(a0)
80202e64: 1c 6e        	ld	a5, 24(a2)
80202e66: 82 87        	jr	a5

0000000080202e68 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80202e68: 14 61        	ld	a3, 0(a0)
80202e6a: 10 65        	ld	a2, 8(a0)
80202e6c: 2e 85        	mv	a0, a1
80202e6e: b6 85        	mv	a1, a3
80202e70: 17 03 00 00  	auipc	t1, 0
80202e74: 67 00 03 a5  	jr	-1456(t1)

0000000080202e78 <memset>:
80202e78: 17 03 00 00  	auipc	t1, 0
80202e7c: 67 00 63 0b  	jr	182(t1)

0000000080202e80 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE>:
80202e80: bd 46        	li	a3, 15
80202e82: 63 fa c6 06  	bgeu	a3, a2, 0x80202ef6 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x76>
80202e86: bb 06 a0 40  	negw	a3, a0
80202e8a: 13 f8 76 00  	andi	a6, a3, 7
80202e8e: b3 03 05 01  	add	t2, a0, a6
80202e92: 63 0c 08 00  	beqz	a6, 0x80202eaa <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x2a>
80202e96: aa 87        	mv	a5, a0
80202e98: ae 86        	mv	a3, a1
80202e9a: 03 87 06 00  	lb	a4, 0(a3)
80202e9e: 23 80 e7 00  	sb	a4, 0(a5)
80202ea2: 85 07        	addi	a5, a5, 1
80202ea4: 85 06        	addi	a3, a3, 1
80202ea6: e3 ea 77 fe  	bltu	a5, t2, 0x80202e9a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x1a>
80202eaa: b3 88 05 01  	add	a7, a1, a6
80202eae: 33 08 06 41  	sub	a6, a2, a6
80202eb2: 93 72 88 ff  	andi	t0, a6, -8
80202eb6: 93 f5 78 00  	andi	a1, a7, 7
80202eba: b3 86 53 00  	add	a3, t2, t0
80202ebe: 9d cd        	beqz	a1, 0x80202efc <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x7c>
80202ec0: 63 58 50 04  	blez	t0, 0x80202f10 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80202ec4: 13 93 35 00  	slli	t1, a1, 3
80202ec8: 13 f7 88 ff  	andi	a4, a7, -8
80202ecc: 10 63        	ld	a2, 0(a4)
80202ece: bb 05 60 40  	negw	a1, t1
80202ed2: 13 fe 85 03  	andi	t3, a1, 56
80202ed6: 93 07 87 00  	addi	a5, a4, 8
80202eda: 98 63        	ld	a4, 0(a5)
80202edc: 33 56 66 00  	srl	a2, a2, t1
80202ee0: b3 15 c7 01  	sll	a1, a4, t3
80202ee4: d1 8d        	or	a1, a1, a2
80202ee6: 23 b0 b3 00  	sd	a1, 0(t2)
80202eea: a1 03        	addi	t2, t2, 8
80202eec: a1 07        	addi	a5, a5, 8
80202eee: 3a 86        	mv	a2, a4
80202ef0: e3 e5 d3 fe  	bltu	t2, a3, 0x80202eda <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x5a>
80202ef4: 31 a8        	j	0x80202f10 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80202ef6: aa 86        	mv	a3, a0
80202ef8: 0d e2        	bnez	a2, 0x80202f1a <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9a>
80202efa: 0d a8        	j	0x80202f2c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
80202efc: 63 5a 50 00  	blez	t0, 0x80202f10 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x90>
80202f00: c6 85        	mv	a1, a7
80202f02: 90 61        	ld	a2, 0(a1)
80202f04: 23 b0 c3 00  	sd	a2, 0(t2)
80202f08: a1 03        	addi	t2, t2, 8
80202f0a: a1 05        	addi	a1, a1, 8
80202f0c: e3 eb d3 fe  	bltu	t2, a3, 0x80202f02 <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x82>
80202f10: b3 85 58 00  	add	a1, a7, t0
80202f14: 13 76 78 00  	andi	a2, a6, 7
80202f18: 11 ca        	beqz	a2, 0x80202f2c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0xac>
80202f1a: 36 96        	add	a2, a2, a3
80202f1c: 03 87 05 00  	lb	a4, 0(a1)
80202f20: 23 80 e6 00  	sb	a4, 0(a3)
80202f24: 85 06        	addi	a3, a3, 1
80202f26: 85 05        	addi	a1, a1, 1
80202f28: e3 ea c6 fe  	bltu	a3, a2, 0x80202f1c <_ZN17compiler_builtins3mem6memcpy17hed732dd59768624aE+0x9c>
80202f2c: 82 80        	ret

0000000080202f2e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
80202f2e: bd 46        	li	a3, 15
80202f30: 63 fa c6 04  	bgeu	a3, a2, 0x80202f84 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80202f34: bb 06 a0 40  	negw	a3, a0
80202f38: 9d 8a        	andi	a3, a3, 7
80202f3a: 33 07 d5 00  	add	a4, a0, a3
80202f3e: 99 c6        	beqz	a3, 0x80202f4c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
80202f40: aa 87        	mv	a5, a0
80202f42: 23 80 b7 00  	sb	a1, 0(a5)
80202f46: 85 07        	addi	a5, a5, 1
80202f48: e3 ed e7 fe  	bltu	a5, a4, 0x80202f42 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
80202f4c: b3 08 d6 40  	sub	a7, a2, a3
80202f50: 93 f7 88 ff  	andi	a5, a7, -8
80202f54: b3 06 f7 00  	add	a3, a4, a5
80202f58: 63 52 f0 02  	blez	a5, 0x80202f7c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
80202f5c: 13 98 85 03  	slli	a6, a1, 56
80202f60: b7 17 10 10  	lui	a5, 65793
80202f64: 92 07        	slli	a5, a5, 4
80202f66: 93 87 07 10  	addi	a5, a5, 256
80202f6a: b3 37 f8 02  	mulhu	a5, a6, a5
80202f6e: 13 96 07 02  	slli	a2, a5, 32
80202f72: d1 8f        	or	a5, a5, a2
80202f74: 1c e3        	sd	a5, 0(a4)
80202f76: 21 07        	addi	a4, a4, 8
80202f78: e3 6e d7 fe  	bltu	a4, a3, 0x80202f74 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
80202f7c: 13 f6 78 00  	andi	a2, a7, 7
80202f80: 01 e6        	bnez	a2, 0x80202f88 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80202f82: 09 a8        	j	0x80202f94 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202f84: aa 86        	mv	a3, a0
80202f86: 19 c6        	beqz	a2, 0x80202f94 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202f88: 36 96        	add	a2, a2, a3
80202f8a: 23 80 b6 00  	sb	a1, 0(a3)
80202f8e: 85 06        	addi	a3, a3, 1
80202f90: e3 ed c6 fe  	bltu	a3, a2, 0x80202f8a <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80202f94: 82 80        	ret

0000000080202f96 <memcpy>:
80202f96: 17 03 00 00  	auipc	t1, 0
80202f9a: 67 00 a3 ee  	jr	-278(t1)
