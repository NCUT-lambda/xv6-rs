
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 51 01 00  	auipc	sp, 21
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 20 00 00  	auipc	ra, 2
8020000c: e7 80 a0 f9  	jalr	-102(ra)
		...

0000000080201000 <trampoline>:
; pub fn kinit() {
80201000: 19 71        	addi	sp, sp, -128
80201002: 86 fc        	sd	ra, 120(sp)
80201004: a2 f8        	sd	s0, 112(sp)
80201006: a6 f4        	sd	s1, 104(sp)
80201008: ca f0        	sd	s2, 96(sp)
8020100a: ce ec        	sd	s3, 88(sp)
8020100c: d2 e8        	sd	s4, 80(sp)
8020100e: d6 e4        	sd	s5, 72(sp)
80201010: 00 01        	addi	s0, sp, 128
80201012: 0f 00 30 03  	fence	rw, rw

0000000080201016 <.LBB1_22>:
80201016: 97 49 01 00  	auipc	s3, 20
8020101a: 93 89 a9 fe  	addi	s3, s3, -22
8020101e: 03 b5 09 00  	ld	a0, 0(s3)
80201022: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201026: 21 ed        	bnez	a0, 0x8020107e <.LBB1_23+0x3a>
80201028: 85 45        	li	a1, 1
8020102a: 2f b5 09 16  	lr.d.aqrl	a0, (s3)
8020102e: 01 e5        	bnez	a0, 0x80201036 <.LBB1_22+0x20>
80201030: 2f b6 b9 1e  	sc.d.aqrl	a2, a1, (s3)
80201034: 7d fa        	bnez	a2, 0x8020102a <.LBB1_22+0x14>
;             if status == INCOMPLETE { // We init
80201036: 21 e5        	bnez	a0, 0x8020107e <.LBB1_23+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201038: 23 38 34 f9  	sd	s3, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020103c: 23 b4 b9 00  	sd	a1, 8(s3)
80201040: 23 b8 09 00  	sd	zero, 16(s3)

0000000080201044 <.LBB1_23>:
80201044: 17 25 00 00  	auipc	a0, 2
80201048: 13 05 05 fc  	addi	a0, a0, -64
8020104c: 23 bc a9 00  	sd	a0, 24(s3)
80201050: 11 45        	li	a0, 4
80201052: 23 b0 a9 02  	sd	a0, 32(s3)
80201056: 23 b4 09 02  	sd	zero, 40(s3)
8020105a: 23 88 09 02  	sb	zero, 48(s3)
8020105e: 23 bc 09 02  	sd	zero, 56(s3)
;                 finish.panicked = false;
80201062: 23 0c 04 f8  	sb	zero, -104(s0)
80201066: 0f 00 10 03  	fence	rw, w
8020106a: 09 45        	li	a0, 2
8020106c: 23 b0 a9 00  	sd	a0, 0(s3)
80201070: 13 05 04 f9  	addi	a0, s0, -112
80201074: 97 10 00 00  	auipc	ra, 1
80201078: e7 80 20 02  	jalr	34(ra)
8020107c: 0d a0        	j	0x8020109e <.LBB1_23+0x5a>
8020107e: 85 45        	li	a1, 1
;             match status {
80201080: 63 1c b5 00  	bne	a0, a1, 0x80201098 <.LBB1_23+0x54>
80201084: 0f 00 00 01  	fence	w, 0
80201088: 0f 00 30 03  	fence	rw, rw
8020108c: 03 b5 09 00  	ld	a0, 0(s3)
80201090: 0f 00 30 02  	fence	r, rw
;             match status {
80201094: e3 08 b5 fe  	beq	a0, a1, 0x80201084 <.LBB1_23+0x40>
80201098: 89 45        	li	a1, 2
;             match status {
8020109a: 63 15 b5 0e  	bne	a0, a1, 0x80201184 <.LBB1_27+0x2c>
8020109e: 03 b5 09 01  	ld	a0, 16(s3)
802010a2: 63 1f 05 10  	bnez	a0, 0x802011c0 <.LBB1_32>
802010a6: 7d 56        	li	a2, -1

00000000802010a8 <.LBB1_24>:
;         while pa < pa_end - PGSIZE {
802010a8: 17 55 01 00  	auipc	a0, 21
802010ac: 13 05 85 f5  	addi	a0, a0, -168
802010b0: 85 65        	lui	a1, 1
802010b2: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
802010b4: aa 95        	add	a1, a1, a0
802010b6: fd 76        	lui	a3, 1048575
802010b8: f5 8d        	and	a1, a1, a3
802010ba: b7 86 08 00  	lui	a3, 136
802010be: fd 36        	addiw	a3, a3, -1
802010c0: b2 06        	slli	a3, a3, 12
802010c2: fd 16        	addi	a3, a3, -1
802010c4: 23 b8 c9 00  	sd	a2, 16(s3)
;         while pa < pa_end - PGSIZE {
802010c8: 63 ee b6 04  	bltu	a3, a1, 0x80201124 <.LBB1_24+0x7c>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
802010cc: 63 ed a5 12  	bltu	a1, a0, 0x80201206 <.LBB1_38>
802010d0: 05 6a        	lui	s4, 1
802010d2: 9b 05 fa ff  	addiw	a1, s4, -1
802010d6: 2e 95        	add	a0, a0, a1
802010d8: fd 75        	lui	a1, 1048575
802010da: 6d 8d        	and	a0, a0, a1
802010dc: 13 89 89 01  	addi	s2, s3, 24
802010e0: b7 f5 ff 43  	lui	a1, 278527
802010e4: 93 9a 15 00  	slli	s5, a1, 1
802010e8: aa 84        	mv	s1, a0
802010ea: 85 45        	li	a1, 1
802010ec: 05 66        	lui	a2, 1
802010ee: 97 20 00 00  	auipc	ra, 2
802010f2: e7 80 40 ac  	jalr	-1340(ra)
;         self.lock.acquire();
802010f6: 4a 85        	mv	a0, s2
802010f8: 97 00 00 00  	auipc	ra, 0
802010fc: e7 80 a0 4a  	jalr	1194(ra)
;         unsafe { (*pa).next = self.freelist }
80201100: 03 b5 89 03  	ld	a0, 56(s3)
80201104: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80201106: 23 bc 99 02  	sd	s1, 56(s3)
;         self.lock.release();
8020110a: 4a 85        	mv	a0, s2
8020110c: 97 00 00 00  	auipc	ra, 0
80201110: e7 80 20 5a  	jalr	1442(ra)
;             pa += PGSIZE;
80201114: 33 85 44 01  	add	a0, s1, s4
;         while pa < pa_end - PGSIZE {
80201118: e3 e8 54 fd  	bltu	s1, s5, 0x802010e8 <.LBB1_24+0x40>
8020111c: 03 b5 09 01  	ld	a0, 16(s3)
80201120: 05 05        	addi	a0, a0, 1
80201122: 11 a0        	j	0x80201126 <.LBB1_24+0x7e>
80201124: 01 45        	li	a0, 0
80201126: 23 b8 a9 00  	sd	a0, 16(s3)
8020112a: 13 05 04 fc  	addi	a0, s0, -64
8020112e: 23 34 a4 f8  	sd	a0, -120(s0)
80201132: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201136 <.LBB1_25>:
80201136: 17 25 00 00  	auipc	a0, 2
8020113a: 13 05 a5 f2  	addi	a0, a0, -214
8020113e: 23 30 a4 fa  	sd	a0, -96(s0)
80201142: 05 45        	li	a0, 1
80201144: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080201148 <.LBB1_26>:
80201148: 17 25 00 00  	auipc	a0, 2
8020114c: 13 05 85 eb  	addi	a0, a0, -328
80201150: 23 38 a4 fa  	sd	a0, -80(s0)
80201154: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201158 <.LBB1_27>:
80201158: 97 25 00 00  	auipc	a1, 2
8020115c: 93 85 85 45  	addi	a1, a1, 1112
80201160: 13 05 84 f8  	addi	a0, s0, -120
80201164: 13 06 04 f9  	addi	a2, s0, -112
80201168: 97 10 00 00  	auipc	ra, 1
8020116c: e7 80 20 09  	jalr	146(ra)
80201170: 35 e5        	bnez	a0, 0x802011dc <.LBB1_35>
; }
80201172: e6 70        	ld	ra, 120(sp)
80201174: 46 74        	ld	s0, 112(sp)
80201176: a6 74        	ld	s1, 104(sp)
80201178: 06 79        	ld	s2, 96(sp)
8020117a: e6 69        	ld	s3, 88(sp)
8020117c: 46 6a        	ld	s4, 80(sp)
8020117e: a6 6a        	ld	s5, 72(sp)
80201180: 09 61        	addi	sp, sp, 128
80201182: 82 80        	ret
;             match status {
80201184: 05 e1        	bnez	a0, 0x802011a4 <.LBB1_30>

0000000080201186 <.LBB1_28>:
;                 INCOMPLETE => unreachable!(),
80201186: 17 25 00 00  	auipc	a0, 2
8020118a: 13 05 25 f7  	addi	a0, a0, -142

000000008020118e <.LBB1_29>:
8020118e: 17 26 00 00  	auipc	a2, 2
80201192: 13 06 26 f9  	addi	a2, a2, -110
80201196: 93 05 80 02  	li	a1, 40
8020119a: 97 10 00 00  	auipc	ra, 1
8020119e: e7 80 60 f7  	jalr	-138(ra)
802011a2: 00 00        	unimp	

00000000802011a4 <.LBB1_30>:
;                 PANICKED => panic!("Once has panicked"),
802011a4: 17 25 00 00  	auipc	a0, 2
802011a8: 13 05 c5 ec  	addi	a0, a0, -308

00000000802011ac <.LBB1_31>:
802011ac: 17 26 00 00  	auipc	a2, 2
802011b0: 13 06 46 f3  	addi	a2, a2, -204
802011b4: c5 45        	li	a1, 17
802011b6: 97 10 00 00  	auipc	ra, 1
802011ba: e7 80 a0 f5  	jalr	-166(ra)
802011be: 00 00        	unimp	

00000000802011c0 <.LBB1_32>:
802011c0: 17 25 00 00  	auipc	a0, 2
802011c4: 13 05 85 fc  	addi	a0, a0, -56

00000000802011c8 <.LBB1_33>:
802011c8: 97 26 00 00  	auipc	a3, 2
802011cc: 93 86 06 fd  	addi	a3, a3, -48

00000000802011d0 <.LBB1_34>:
802011d0: 17 27 00 00  	auipc	a4, 2
802011d4: 13 07 07 00  	mv	a4, a4
802011d8: c1 45        	li	a1, 16
802011da: 39 a8        	j	0x802011f8 <.LBB1_37+0xc>

00000000802011dc <.LBB1_35>:
802011dc: 17 25 00 00  	auipc	a0, 2
802011e0: 13 05 45 40  	addi	a0, a0, 1028

00000000802011e4 <.LBB1_36>:
802011e4: 97 26 00 00  	auipc	a3, 2
802011e8: 93 86 c6 42  	addi	a3, a3, 1068

00000000802011ec <.LBB1_37>:
802011ec: 17 27 00 00  	auipc	a4, 2
802011f0: 13 07 47 45  	addi	a4, a4, 1108
802011f4: 93 05 b0 02  	li	a1, 43
802011f8: 13 06 04 fc  	addi	a2, s0, -64
802011fc: 97 10 00 00  	auipc	ra, 1
80201200: e7 80 00 f8  	jalr	-128(ra)
80201204: 00 00        	unimp	

0000000080201206 <.LBB1_38>:
80201206: 17 25 00 00  	auipc	a0, 2
8020120a: 13 05 a5 e0  	addi	a0, a0, -502
8020120e: 23 30 a4 fa  	sd	a0, -96(s0)
80201212: 05 45        	li	a0, 1
80201214: 23 34 a4 fa  	sd	a0, -88(s0)
80201218: 23 38 04 f8  	sd	zero, -112(s0)

000000008020121c <.LBB1_39>:
8020121c: 17 25 00 00  	auipc	a0, 2
80201220: 13 05 45 de  	addi	a0, a0, -540
80201224: 23 38 a4 fa  	sd	a0, -80(s0)
80201228: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020122c <.LBB1_40>:
;             panic!("kfree");
8020122c: 97 25 00 00  	auipc	a1, 2
80201230: 93 85 c5 e0  	addi	a1, a1, -500
80201234: 13 05 04 f9  	addi	a0, s0, -112
80201238: 97 10 00 00  	auipc	ra, 1
8020123c: e7 80 a0 ea  	jalr	-342(ra)
80201240: 00 00        	unimp	

0000000080201242 <_ZN6kernel6memory6kalloc6kalloc17h8dd363a38295c609E>:
; pub fn kalloc() -> Addr {
80201242: 39 71        	addi	sp, sp, -64
80201244: 06 fc        	sd	ra, 56(sp)
80201246: 22 f8        	sd	s0, 48(sp)
80201248: 26 f4        	sd	s1, 40(sp)
8020124a: 4a f0        	sd	s2, 32(sp)
8020124c: 4e ec        	sd	s3, 24(sp)
8020124e: 80 00        	addi	s0, sp, 64
80201250: 0f 00 30 03  	fence	rw, rw

0000000080201254 <.LBB2_15>:
80201254: 97 44 01 00  	auipc	s1, 20
80201258: 93 84 c4 da  	addi	s1, s1, -596
8020125c: 88 60        	ld	a0, 0(s1)
8020125e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201262: 21 e9        	bnez	a0, 0x802012b2 <.LBB2_16+0x34>
80201264: 85 45        	li	a1, 1
80201266: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
8020126a: 01 e5        	bnez	a0, 0x80201272 <.LBB2_15+0x1e>
8020126c: 2f b6 b4 1e  	sc.d.aqrl	a2, a1, (s1)
80201270: 7d fa        	bnez	a2, 0x80201266 <.LBB2_15+0x12>
;             if status == INCOMPLETE { // We init
80201272: 21 e1        	bnez	a0, 0x802012b2 <.LBB2_16+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201274: 23 34 94 fc  	sd	s1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80201278: 8c e4        	sd	a1, 8(s1)
8020127a: 23 b8 04 00  	sd	zero, 16(s1)

000000008020127e <.LBB2_16>:
8020127e: 17 25 00 00  	auipc	a0, 2
80201282: 13 05 65 d8  	addi	a0, a0, -634
80201286: 88 ec        	sd	a0, 24(s1)
80201288: 11 45        	li	a0, 4
8020128a: 88 f0        	sd	a0, 32(s1)
8020128c: 23 b4 04 02  	sd	zero, 40(s1)
80201290: 23 88 04 02  	sb	zero, 48(s1)
80201294: 23 bc 04 02  	sd	zero, 56(s1)
;                 finish.panicked = false;
80201298: 23 08 04 fc  	sb	zero, -48(s0)
8020129c: 0f 00 10 03  	fence	rw, w
802012a0: 09 45        	li	a0, 2
802012a2: 88 e0        	sd	a0, 0(s1)
802012a4: 13 05 84 fc  	addi	a0, s0, -56
802012a8: 97 10 00 00  	auipc	ra, 1
802012ac: e7 80 e0 de  	jalr	-530(ra)
802012b0: 05 a0        	j	0x802012d0 <.LBB2_16+0x52>
802012b2: 85 45        	li	a1, 1
;             match status {
802012b4: 63 1b b5 00  	bne	a0, a1, 0x802012ca <.LBB2_16+0x4c>
802012b8: 0f 00 00 01  	fence	w, 0
802012bc: 0f 00 30 03  	fence	rw, rw
802012c0: 88 60        	ld	a0, 0(s1)
802012c2: 0f 00 30 02  	fence	r, rw
;             match status {
802012c6: e3 09 b5 fe  	beq	a0, a1, 0x802012b8 <.LBB2_16+0x3a>
802012ca: 89 45        	li	a1, 2
;             match status {
802012cc: 63 11 b5 06  	bne	a0, a1, 0x8020132e <.LBB2_16+0xb0>
802012d0: 88 68        	ld	a0, 16(s1)
802012d2: 41 ed        	bnez	a0, 0x8020136a <.LBB2_21>
802012d4: 7d 55        	li	a0, -1
802012d6: 88 e8        	sd	a0, 16(s1)
;         self.lock.acquire();
802012d8: 13 89 84 01  	addi	s2, s1, 24
802012dc: 4a 85        	mv	a0, s2
802012de: 97 00 00 00  	auipc	ra, 0
802012e2: e7 80 40 2c  	jalr	708(ra)
;         r = self.freelist;
802012e6: 83 b9 84 03  	ld	s3, 56(s1)
802012ea: 63 82 09 02  	beqz	s3, 0x8020130e <.LBB2_16+0x90>
;             unsafe { self.freelist = (*r).next }
802012ee: 03 b5 09 00  	ld	a0, 0(s3)
802012f2: 88 fc        	sd	a0, 56(s1)
;         self.lock.release();
802012f4: 4a 85        	mv	a0, s2
802012f6: 97 00 00 00  	auipc	ra, 0
802012fa: e7 80 80 3b  	jalr	952(ra)
802012fe: 95 45        	li	a1, 5
80201300: 05 66        	lui	a2, 1
80201302: 4e 85        	mv	a0, s3
80201304: 97 20 00 00  	auipc	ra, 2
80201308: e7 80 e0 8a  	jalr	-1874(ra)
8020130c: 31 a0        	j	0x80201318 <.LBB2_16+0x9a>
;         self.lock.release();
8020130e: 4a 85        	mv	a0, s2
80201310: 97 00 00 00  	auipc	ra, 0
80201314: e7 80 e0 39  	jalr	926(ra)
80201318: 88 68        	ld	a0, 16(s1)
8020131a: 05 05        	addi	a0, a0, 1
8020131c: 88 e8        	sd	a0, 16(s1)
; }
8020131e: 4e 85        	mv	a0, s3
80201320: e2 70        	ld	ra, 56(sp)
80201322: 42 74        	ld	s0, 48(sp)
80201324: a2 74        	ld	s1, 40(sp)
80201326: 02 79        	ld	s2, 32(sp)
80201328: e2 69        	ld	s3, 24(sp)
8020132a: 21 61        	addi	sp, sp, 64
8020132c: 82 80        	ret
;             match status {
8020132e: 05 e1        	bnez	a0, 0x8020134e <.LBB2_19>

0000000080201330 <.LBB2_17>:
;                 INCOMPLETE => unreachable!(),
80201330: 17 25 00 00  	auipc	a0, 2
80201334: 13 05 85 dc  	addi	a0, a0, -568

0000000080201338 <.LBB2_18>:
80201338: 17 26 00 00  	auipc	a2, 2
8020133c: 13 06 86 de  	addi	a2, a2, -536
80201340: 93 05 80 02  	li	a1, 40
80201344: 97 10 00 00  	auipc	ra, 1
80201348: e7 80 c0 dc  	jalr	-564(ra)
8020134c: 00 00        	unimp	

000000008020134e <.LBB2_19>:
;                 PANICKED => panic!("Once has panicked"),
8020134e: 17 25 00 00  	auipc	a0, 2
80201352: 13 05 25 d2  	addi	a0, a0, -734

0000000080201356 <.LBB2_20>:
80201356: 17 26 00 00  	auipc	a2, 2
8020135a: 13 06 a6 d8  	addi	a2, a2, -630
8020135e: c5 45        	li	a1, 17
80201360: 97 10 00 00  	auipc	ra, 1
80201364: e7 80 00 db  	jalr	-592(ra)
80201368: 00 00        	unimp	

000000008020136a <.LBB2_21>:
8020136a: 17 25 00 00  	auipc	a0, 2
8020136e: 13 05 e5 e1  	addi	a0, a0, -482

0000000080201372 <.LBB2_22>:
80201372: 97 26 00 00  	auipc	a3, 2
80201376: 93 86 66 e2  	addi	a3, a3, -474

000000008020137a <.LBB2_23>:
8020137a: 17 27 00 00  	auipc	a4, 2
8020137e: 13 07 67 e5  	addi	a4, a4, -426
80201382: c1 45        	li	a1, 16
80201384: 13 06 84 fc  	addi	a2, s0, -56
80201388: 97 10 00 00  	auipc	ra, 1
8020138c: e7 80 40 df  	jalr	-524(ra)
80201390: 00 00        	unimp	

0000000080201392 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
80201392: 39 71        	addi	sp, sp, -64
80201394: 06 fc        	sd	ra, 56(sp)
80201396: 22 f8        	sd	s0, 48(sp)
80201398: 26 f4        	sd	s1, 40(sp)
8020139a: 4a f0        	sd	s2, 32(sp)
8020139c: 4e ec        	sd	s3, 24(sp)
8020139e: 80 00        	addi	s0, sp, 64
802013a0: aa 84        	mv	s1, a0
802013a2: 0f 00 30 03  	fence	rw, rw
802013a6: 08 61        	ld	a0, 0(a0)
802013a8: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802013ac: 39 e9        	bnez	a0, 0x80201402 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x70>
802013ae: 05 49        	li	s2, 1
802013b0: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802013b4: 01 e5        	bnez	a0, 0x802013bc <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x2a>
802013b6: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
802013ba: fd f9        	bnez	a1, 0x802013b0 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x1e>
;             if status == INCOMPLETE { // We init
802013bc: 39 e1        	bnez	a0, 0x80201402 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x70>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802013be: 23 34 94 fc  	sd	s1, -56(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802013c2: 97 00 00 00  	auipc	ra, 0
802013c6: e7 80 00 e8  	jalr	-384(ra)
802013ca: aa 89        	mv	s3, a0
802013cc: 05 66        	lui	a2, 1
802013ce: 81 45        	li	a1, 0
802013d0: 97 10 00 00  	auipc	ra, 1
802013d4: e7 80 20 7e  	jalr	2018(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802013d8: 23 b4 24 01  	sd	s2, 8(s1)
802013dc: 13 89 04 01  	addi	s2, s1, 16
802013e0: 23 b8 04 00  	sd	zero, 16(s1)
802013e4: 23 bc 34 01  	sd	s3, 24(s1)
;                 finish.panicked = false;
802013e8: 23 08 04 fc  	sb	zero, -48(s0)
802013ec: 0f 00 10 03  	fence	rw, w
802013f0: 09 45        	li	a0, 2
802013f2: 88 e0        	sd	a0, 0(s1)
802013f4: 13 05 84 fc  	addi	a0, s0, -56
802013f8: 97 10 00 00  	auipc	ra, 1
802013fc: e7 80 e0 c9  	jalr	-866(ra)
80201400: 15 a0        	j	0x80201424 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x92>
80201402: 85 45        	li	a1, 1
;             match status {
80201404: 63 1b b5 00  	bne	a0, a1, 0x8020141a <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x88>
80201408: 0f 00 00 01  	fence	w, 0
8020140c: 0f 00 30 03  	fence	rw, rw
80201410: 88 60        	ld	a0, 0(s1)
80201412: 0f 00 30 02  	fence	r, rw
;             match status {
80201416: e3 09 b5 fe  	beq	a0, a1, 0x80201408 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x76>
8020141a: 89 45        	li	a1, 2
;             match status {
8020141c: 63 1c b5 00  	bne	a0, a1, 0x80201434 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0xa2>
80201420: 13 89 04 01  	addi	s2, s1, 16
;     }
80201424: 4a 85        	mv	a0, s2
80201426: e2 70        	ld	ra, 56(sp)
80201428: 42 74        	ld	s0, 48(sp)
8020142a: a2 74        	ld	s1, 40(sp)
8020142c: 02 79        	ld	s2, 32(sp)
8020142e: e2 69        	ld	s3, 24(sp)
80201430: 21 61        	addi	sp, sp, 64
80201432: 82 80        	ret
;             match status {
80201434: 05 e1        	bnez	a0, 0x80201454 <.LBB0_13>

0000000080201436 <.LBB0_11>:
;                 INCOMPLETE => unreachable!(),
80201436: 17 25 00 00  	auipc	a0, 2
8020143a: 13 05 25 cc  	addi	a0, a0, -830

000000008020143e <.LBB0_12>:
8020143e: 17 26 00 00  	auipc	a2, 2
80201442: 13 06 26 ce  	addi	a2, a2, -798
80201446: 93 05 80 02  	li	a1, 40
8020144a: 97 10 00 00  	auipc	ra, 1
8020144e: e7 80 60 cc  	jalr	-826(ra)
80201452: 00 00        	unimp	

0000000080201454 <.LBB0_13>:
;                 PANICKED => panic!("Once has panicked"),
80201454: 17 25 00 00  	auipc	a0, 2
80201458: 13 05 c5 c1  	addi	a0, a0, -996

000000008020145c <.LBB0_14>:
8020145c: 17 26 00 00  	auipc	a2, 2
80201460: 13 06 46 c8  	addi	a2, a2, -892
80201464: c5 45        	li	a1, 17
80201466: 97 10 00 00  	auipc	ra, 1
8020146a: e7 80 a0 ca  	jalr	-854(ra)
8020146e: 00 00        	unimp	

0000000080201470 <_ZN6kernel3sbi8shutdown17h7d6f144840ef1a50E>:
; pub fn shutdown() -> ! {
80201470: 39 71        	addi	sp, sp, -64
;         asm!(
80201472: 06 fc        	sd	ra, 56(sp)
80201474: 22 f8        	sd	s0, 48(sp)
80201476: 80 00        	addi	s0, sp, 64
80201478: a1 48        	li	a7, 8
8020147a: 01 45        	li	a0, 0
8020147c: 81 45        	li	a1, 0
8020147e: 01 46        	li	a2, 0
80201480: 73 00 00 00  	ecall	

0000000080201484 <.LBB1_1>:
80201484: 17 25 00 00  	auipc	a0, 2
80201488: 13 05 c5 cc  	addi	a0, a0, -820
8020148c: 23 38 a4 fc  	sd	a0, -48(s0)
80201490: 05 45        	li	a0, 1
80201492: 23 3c a4 fc  	sd	a0, -40(s0)
80201496: 23 30 04 fc  	sd	zero, -64(s0)

000000008020149a <.LBB1_2>:
8020149a: 17 25 00 00  	auipc	a0, 2
8020149e: 13 05 e5 c9  	addi	a0, a0, -866
802014a2: 23 30 a4 fe  	sd	a0, -32(s0)
802014a6: 23 34 04 fe  	sd	zero, -24(s0)

00000000802014aa <.LBB1_3>:
;     panic!("It should shutdown!");
802014aa: 97 25 00 00  	auipc	a1, 2
802014ae: 93 85 65 cc  	addi	a1, a1, -826
802014b2: 13 05 04 fc  	addi	a0, s0, -64
802014b6: 97 10 00 00  	auipc	ra, 1
802014ba: e7 80 c0 c2  	jalr	-980(ra)
802014be: 00 00        	unimp	

00000000802014c0 <_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hfc6cfbc332eb8121E.llvm.5366303779482308337>:
802014c0: 41 11        	addi	sp, sp, -16
802014c2: 06 e4        	sd	ra, 8(sp)
802014c4: 22 e0        	sd	s0, 0(sp)
802014c6: 00 08        	addi	s0, sp, 16
802014c8: a2 60        	ld	ra, 8(sp)
802014ca: 02 64        	ld	s0, 0(sp)
802014cc: 41 01        	addi	sp, sp, 16
802014ce: 82 80        	ret

00000000802014d0 <_ZN6kernel4logo10print_logo17hd1e5cf57c901a23eE>:
; pub fn print_logo() {
802014d0: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
802014d2: 86 ec        	sd	ra, 88(sp)
802014d4: a2 e8        	sd	s0, 80(sp)
802014d6: 80 10        	addi	s0, sp, 96

00000000802014d8 <.LBB0_3>:
802014d8: 17 25 00 00  	auipc	a0, 2
802014dc: 13 05 05 e9  	addi	a0, a0, -368
802014e0: 23 30 a4 fa  	sd	a0, -96(s0)

00000000802014e4 <.LBB0_4>:
802014e4: 17 05 00 00  	auipc	a0, 0
802014e8: 13 05 45 08  	addi	a0, a0, 132
802014ec: 23 34 a4 fa  	sd	a0, -88(s0)
802014f0: 13 05 84 fe  	addi	a0, s0, -24
802014f4: 23 38 a4 fa  	sd	a0, -80(s0)
802014f8: 23 3c 04 fa  	sd	zero, -72(s0)

00000000802014fc <.LBB0_5>:
802014fc: 17 25 00 00  	auipc	a0, 2
80201500: 13 05 45 cf  	addi	a0, a0, -780
80201504: 23 34 a4 fc  	sd	a0, -56(s0)
80201508: 09 45        	li	a0, 2
8020150a: 23 38 a4 fc  	sd	a0, -48(s0)
8020150e: 13 05 04 fa  	addi	a0, s0, -96
80201512: 23 3c a4 fc  	sd	a0, -40(s0)
80201516: 05 45        	li	a0, 1
80201518: 23 30 a4 fe  	sd	a0, -32(s0)

000000008020151c <.LBB0_6>:
8020151c: 97 25 00 00  	auipc	a1, 2
80201520: 93 85 45 09  	addi	a1, a1, 148
80201524: 13 05 04 fb  	addi	a0, s0, -80
80201528: 13 06 84 fb  	addi	a2, s0, -72
8020152c: 97 10 00 00  	auipc	ra, 1
80201530: e7 80 e0 cc  	jalr	-818(ra)
80201534: 09 e5        	bnez	a0, 0x8020153e <.LBB0_7>
; }
80201536: e6 60        	ld	ra, 88(sp)
80201538: 46 64        	ld	s0, 80(sp)
8020153a: 25 61        	addi	sp, sp, 96
8020153c: 82 80        	ret

000000008020153e <.LBB0_7>:
8020153e: 17 25 00 00  	auipc	a0, 2
80201542: 13 05 25 0a  	addi	a0, a0, 162

0000000080201546 <.LBB0_8>:
80201546: 97 26 00 00  	auipc	a3, 2
8020154a: 93 86 a6 0c  	addi	a3, a3, 202

000000008020154e <.LBB0_9>:
8020154e: 17 27 00 00  	auipc	a4, 2
80201552: 13 07 27 0f  	addi	a4, a4, 242
80201556: 93 05 b0 02  	li	a1, 43
8020155a: 13 06 84 fe  	addi	a2, s0, -24
8020155e: 97 10 00 00  	auipc	ra, 1
80201562: e7 80 e0 c1  	jalr	-994(ra)
80201566: 00 00        	unimp	

0000000080201568 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h841398e3e815f769E>:
80201568: 41 11        	addi	sp, sp, -16
8020156a: 06 e4        	sd	ra, 8(sp)
8020156c: 22 e0        	sd	s0, 0(sp)
8020156e: 00 08        	addi	s0, sp, 16
80201570: 10 61        	ld	a2, 0(a0)
80201572: 14 65        	ld	a3, 8(a0)
80201574: 2e 87        	mv	a4, a1
80201576: 32 85        	mv	a0, a2
80201578: b6 85        	mv	a1, a3
8020157a: 3a 86        	mv	a2, a4
8020157c: a2 60        	ld	ra, 8(sp)
8020157e: 02 64        	ld	s0, 0(sp)
80201580: 41 01        	addi	sp, sp, 16
80201582: 17 13 00 00  	auipc	t1, 1
80201586: 67 00 c3 2c  	jr	716(t1)

000000008020158a <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda6921607be575eaE>:
8020158a: 41 11        	addi	sp, sp, -16
8020158c: 06 e4        	sd	ra, 8(sp)
8020158e: 22 e0        	sd	s0, 0(sp)
80201590: 00 08        	addi	s0, sp, 16
80201592: 08 61        	ld	a0, 0(a0)
80201594: a2 60        	ld	ra, 8(sp)
80201596: 02 64        	ld	s0, 0(sp)
80201598: 41 01        	addi	sp, sp, 16
8020159a: 17 13 00 00  	auipc	t1, 1
8020159e: 67 00 e3 c2  	jr	-978(t1)

00000000802015a2 <_ZN6kernel4lock8spinlock8Spinlock7acquire17hfb9c49aa9594a77bE>:
;     pub fn acquire(&mut self) {
802015a2: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802015a4: 06 fc        	sd	ra, 56(sp)
802015a6: 22 f8        	sd	s0, 48(sp)
802015a8: 80 00        	addi	s0, sp, 64
802015aa: 73 26 00 10  	csrr	a2, sstatus
802015ae: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802015b0: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802015b4: 92 86        	mv	a3, tp
802015b6: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802015b8: 63 f2 b6 0a  	bgeu	a3, a1, 0x8020165c <.LBB1_12>
802015bc: e1 45        	li	a1, 24
;     if mc.noff == 0 {
802015be: b3 86 b6 02  	mul	a3, a3, a1

00000000802015c2 <.LBB1_11>:
802015c2: 17 48 01 00  	auipc	a6, 20
802015c6: 13 08 e8 a7  	addi	a6, a6, -1410
802015ca: b3 07 d8 00  	add	a5, a6, a3
802015ce: 98 67        	ld	a4, 8(a5)
802015d0: 93 86 87 00  	addi	a3, a5, 8
802015d4: 09 e7        	bnez	a4, 0x802015de <.LBB1_11+0x1c>
;         mc.intena = old;
802015d6: 7a 16        	slli	a2, a2, 62
802015d8: 7d 92        	srli	a2, a2, 63
802015da: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
802015de: 13 06 17 00  	addi	a2, a4, 1
802015e2: 90 e2        	sd	a2, 0(a3)
802015e4: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802015e8: 93 08 85 01  	addi	a7, a0, 24
802015ec: 81 ce        	beqz	a3, 0x80201604 <.LBB1_11+0x42>
802015ee: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802015f0: 92 86        	mv	a3, tp
802015f2: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
802015f4: 63 f4 f6 06  	bgeu	a3, a5, 0x8020165c <.LBB1_12>
802015f8: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
802015fa: b3 86 f6 02  	mul	a3, a3, a5
802015fe: c2 96        	add	a3, a3, a6
;         if self.holding() {
80201600: 63 09 d7 06  	beq	a4, a3, 0x80201672 <.LBB1_13>
80201604: 93 f6 c8 ff  	andi	a3, a7, -4
80201608: 1b 97 38 00  	slliw	a4, a7, 3
8020160c: 93 07 f0 0f  	li	a5, 255
80201610: bb 97 e7 00  	sllw	a5, a5, a4
80201614: 85 45        	li	a1, 1
80201616: bb 95 e5 00  	sllw	a1, a1, a4
8020161a: 82 15        	slli	a1, a1, 32
8020161c: 81 91        	srli	a1, a1, 32
8020161e: 2f a7 06 14  	lr.w.aq	a4, (a3)
80201622: 33 76 f7 00  	and	a2, a4, a5
80201626: 01 ea        	bnez	a2, 0x80201636 <.LBB1_11+0x74>
80201628: 33 46 b7 00  	xor	a2, a4, a1
8020162c: 7d 8e        	and	a2, a2, a5
8020162e: 39 8e        	xor	a2, a2, a4
80201630: 2f a6 c6 18  	sc.w	a2, a2, (a3)
80201634: 6d f6        	bnez	a2, 0x8020161e <.LBB1_11+0x5c>
80201636: b3 75 f7 00  	and	a1, a4, a5
8020163a: 81 25        	sext.w	a1, a1
;         while self
8020163c: e1 f5        	bnez	a1, 0x80201604 <.LBB1_11+0x42>
8020163e: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201642: 92 86        	mv	a3, tp
80201644: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
80201646: 63 fb b6 00  	bgeu	a3, a1, 0x8020165c <.LBB1_12>
8020164a: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
8020164c: b3 85 b6 02  	mul	a1, a3, a1
80201650: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
80201652: 0c e9        	sd	a1, 16(a0)
;     }
80201654: e2 70        	ld	ra, 56(sp)
80201656: 42 74        	ld	s0, 48(sp)
80201658: 21 61        	addi	sp, sp, 64
8020165a: 82 80        	ret

000000008020165c <.LBB1_12>:
8020165c: 17 26 00 00  	auipc	a2, 2
80201660: 13 06 46 d3  	addi	a2, a2, -716
80201664: a1 45        	li	a1, 8
80201666: 36 85        	mv	a0, a3
80201668: 97 10 00 00  	auipc	ra, 1
8020166c: e7 80 40 ad  	jalr	-1324(ra)
80201670: 00 00        	unimp	

0000000080201672 <.LBB1_13>:
80201672: 17 25 00 00  	auipc	a0, 2
80201676: 13 05 e5 d3  	addi	a0, a0, -706
8020167a: 23 38 a4 fc  	sd	a0, -48(s0)
8020167e: 05 45        	li	a0, 1
80201680: 23 3c a4 fc  	sd	a0, -40(s0)
80201684: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201688 <.LBB1_14>:
80201688: 17 25 00 00  	auipc	a0, 2
8020168c: 13 05 05 d2  	addi	a0, a0, -736
80201690: 23 30 a4 fe  	sd	a0, -32(s0)
80201694: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201698 <.LBB1_15>:
;             panic!("acquire");
80201698: 97 25 00 00  	auipc	a1, 2
8020169c: 93 85 05 d4  	addi	a1, a1, -704
802016a0: 13 05 04 fc  	addi	a0, s0, -64
802016a4: 97 10 00 00  	auipc	ra, 1
802016a8: e7 80 e0 a3  	jalr	-1474(ra)
802016ac: 00 00        	unimp	

00000000802016ae <_ZN6kernel4lock8spinlock8Spinlock7release17h274222f3a8daa87dE>:
;     pub fn release(&mut self) {
802016ae: 39 71        	addi	sp, sp, -64
802016b0: 06 fc        	sd	ra, 56(sp)
802016b2: 22 f8        	sd	s0, 48(sp)
802016b4: 80 00        	addi	s0, sp, 64
802016b6: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802016ba: dd c1        	beqz	a1, 0x80201760 <.LBB2_19>
802016bc: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802016be: 92 86        	mv	a3, tp
802016c0: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802016c2: 63 fa b6 06  	bgeu	a3, a1, 0x80201736 <.LBB2_17>
802016c6: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802016c8: b3 86 b6 02  	mul	a3, a3, a1

00000000802016cc <.LBB2_16>:
802016cc: 97 45 01 00  	auipc	a1, 20
802016d0: 93 85 45 97  	addi	a1, a1, -1676
802016d4: ae 96        	add	a3, a3, a1
;         if !self.holding() {
802016d6: 63 15 d6 08  	bne	a2, a3, 0x80201760 <.LBB2_19>
;         self.cpu = null_mut();
802016da: 23 38 05 00  	sd	zero, 16(a0)
802016de: 0f 00 30 03  	fence	rw, rw
802016e2: 0f 00 10 03  	fence	rw, w
802016e6: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802016ea: 12 85        	mv	a0, tp
802016ec: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
802016ee: 63 7f c5 04  	bgeu	a0, a2, 0x8020174c <.LBB2_18>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802016f2: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
802016f6: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
802016f8: 41 ee        	bnez	a2, 0x80201790 <.LBB2_22>
802016fa: 61 46        	li	a2, 24
;     if mc.noff < 1 {
802016fc: 33 06 c5 02  	mul	a2, a0, a2
80201700: b3 86 c5 00  	add	a3, a1, a2
80201704: 90 66        	ld	a2, 8(a3)
80201706: 63 5d c0 0a  	blez	a2, 0x802017c0 <.LBB2_25>
8020170a: a1 06        	addi	a3, a3, 8
;     mc.noff -= 1;
8020170c: 7d 16        	addi	a2, a2, -1
8020170e: 90 e2        	sd	a2, 0(a3)
;     if mc.noff == 0 && mc.intena {
80201710: 09 c6        	beqz	a2, 0x8020171a <.LBB2_16+0x4e>
;     }
80201712: e2 70        	ld	ra, 56(sp)
80201714: 42 74        	ld	s0, 48(sp)
80201716: 21 61        	addi	sp, sp, 64
80201718: 82 80        	ret
8020171a: 61 46        	li	a2, 24
;     if mc.noff == 0 && mc.intena {
8020171c: 33 05 c5 02  	mul	a0, a0, a2
80201720: 2e 95        	add	a0, a0, a1
80201722: 03 45 05 01  	lbu	a0, 16(a0)
80201726: 75 d5        	beqz	a0, 0x80201712 <.LBB2_16+0x46>
80201728: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
8020172a: 73 20 05 10  	csrs	sstatus, a0
;     }
8020172e: e2 70        	ld	ra, 56(sp)
80201730: 42 74        	ld	s0, 48(sp)
80201732: 21 61        	addi	sp, sp, 64
80201734: 82 80        	ret

0000000080201736 <.LBB2_17>:
;     unsafe { &mut CPUS[id] }
80201736: 17 26 00 00  	auipc	a2, 2
8020173a: 13 06 a6 c5  	addi	a2, a2, -934
8020173e: a1 45        	li	a1, 8
80201740: 36 85        	mv	a0, a3
80201742: 97 10 00 00  	auipc	ra, 1
80201746: e7 80 a0 9f  	jalr	-1542(ra)
8020174a: 00 00        	unimp	

000000008020174c <.LBB2_18>:
8020174c: 17 26 00 00  	auipc	a2, 2
80201750: 13 06 46 c4  	addi	a2, a2, -956
80201754: a1 45        	li	a1, 8
80201756: 97 10 00 00  	auipc	ra, 1
8020175a: e7 80 60 9e  	jalr	-1562(ra)
8020175e: 00 00        	unimp	

0000000080201760 <.LBB2_19>:
80201760: 17 25 00 00  	auipc	a0, 2
80201764: 13 05 85 c9  	addi	a0, a0, -872
80201768: 23 38 a4 fc  	sd	a0, -48(s0)
8020176c: 05 45        	li	a0, 1
8020176e: 23 3c a4 fc  	sd	a0, -40(s0)
80201772: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201776 <.LBB2_20>:
80201776: 17 25 00 00  	auipc	a0, 2
8020177a: 13 05 25 c3  	addi	a0, a0, -974
8020177e: 23 30 a4 fe  	sd	a0, -32(s0)
80201782: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201786 <.LBB2_21>:
;             panic!("release");
80201786: 97 25 00 00  	auipc	a1, 2
8020178a: 93 85 25 c8  	addi	a1, a1, -894
8020178e: 85 a0        	j	0x802017ee <.LBB2_27+0x8>

0000000080201790 <.LBB2_22>:
80201790: 17 25 00 00  	auipc	a0, 2
80201794: 13 05 85 ca  	addi	a0, a0, -856
80201798: 23 38 a4 fc  	sd	a0, -48(s0)
8020179c: 05 45        	li	a0, 1
8020179e: 23 3c a4 fc  	sd	a0, -40(s0)
802017a2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802017a6 <.LBB2_23>:
802017a6: 17 25 00 00  	auipc	a0, 2
802017aa: 13 05 25 c0  	addi	a0, a0, -1022
802017ae: 23 30 a4 fe  	sd	a0, -32(s0)
802017b2: 23 34 04 fe  	sd	zero, -24(s0)

00000000802017b6 <.LBB2_24>:
;         panic!("pop_off - interruptible");
802017b6: 97 25 00 00  	auipc	a1, 2
802017ba: 93 85 25 c9  	addi	a1, a1, -878
802017be: 05 a8        	j	0x802017ee <.LBB2_27+0x8>

00000000802017c0 <.LBB2_25>:
802017c0: 17 25 00 00  	auipc	a0, 2
802017c4: 13 05 85 ca  	addi	a0, a0, -856
802017c8: 23 38 a4 fc  	sd	a0, -48(s0)
802017cc: 05 45        	li	a0, 1
802017ce: 23 3c a4 fc  	sd	a0, -40(s0)
802017d2: 23 30 04 fc  	sd	zero, -64(s0)

00000000802017d6 <.LBB2_26>:
802017d6: 17 25 00 00  	auipc	a0, 2
802017da: 13 05 25 bd  	addi	a0, a0, -1070
802017de: 23 30 a4 fe  	sd	a0, -32(s0)
802017e2: 23 34 04 fe  	sd	zero, -24(s0)

00000000802017e6 <.LBB2_27>:
;         panic!("pop_off");
802017e6: 97 25 00 00  	auipc	a1, 2
802017ea: 93 85 25 c9  	addi	a1, a1, -878
802017ee: 13 05 04 fc  	addi	a0, s0, -64
802017f2: 97 10 00 00  	auipc	ra, 1
802017f6: e7 80 00 8f  	jalr	-1808(ra)
802017fa: 00 00        	unimp	

00000000802017fc <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E>:
;     pub fn mappages(&mut self, mut va: Addr, size: Addr, pa: Addr, perm: usize) -> bool {
802017fc: 35 71        	addi	sp, sp, -160
;         if size == 0 {
802017fe: 06 ed        	sd	ra, 152(sp)
80201800: 22 e9        	sd	s0, 144(sp)
80201802: 26 e5        	sd	s1, 136(sp)
80201804: 4a e1        	sd	s2, 128(sp)
80201806: ce fc        	sd	s3, 120(sp)
80201808: d2 f8        	sd	s4, 112(sp)
8020180a: d6 f4        	sd	s5, 104(sp)
8020180c: da f0        	sd	s6, 96(sp)
8020180e: de ec        	sd	s7, 88(sp)
80201810: e2 e8        	sd	s8, 80(sp)
80201812: e6 e4        	sd	s9, 72(sp)
80201814: ea e0        	sd	s10, 64(sp)
80201816: 6e fc        	sd	s11, 56(sp)
80201818: 00 11        	addi	s0, sp, 160
8020181a: 63 0a 06 16  	beqz	a2, 0x8020198e <.LBB2_24>
8020181e: fd 77        	lui	a5, 1048575
;     addr & !(PGSIZE - 1)
80201820: b3 f9 f5 00  	and	s3, a1, a5
;         let last = pgrounddown(va + size - 1);
80201824: 2e 96        	add	a2, a2, a1
80201826: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
80201828: 33 7a f6 00  	and	s4, a2, a5
8020182c: 05 49        	li	s2, 1
;         while a < last {
8020182e: 63 f4 49 0d  	bgeu	s3, s4, 0x802018f6 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xfa>
80201832: 93 da 27 00  	srli	s5, a5, 2
80201836: 03 3b 05 00  	ld	s6, 0(a0)
8020183a: 13 d5 c6 00  	srli	a0, a3, 12
8020183e: 2a 05        	slli	a0, a0, 10
80201840: 59 8d        	or	a0, a0, a4
80201842: 93 6b 15 00  	ori	s7, a0, 1
;         while a < last {
80201846: 13 dc c5 00  	srli	s8, a1, 12
8020184a: 85 6c        	lui	s9, 1
8020184c: 1b 8d 8c ff  	addiw	s10, s9, -8
;         if va >= MAXVA {
80201850: 13 d5 69 02  	srli	a0, s3, 38
80201854: 69 e1        	bnez	a0, 0x80201916 <.LBB2_18>
;             pte = &mut self.data[px(level, va)];
80201856: 13 d5 b9 01  	srli	a0, s3, 27
8020185a: 61 99        	andi	a0, a0, -8
8020185c: b3 0d ab 00  	add	s11, s6, a0
;             if (*pte & PTE_V) != 0 {
80201860: 03 c5 0d 00  	lbu	a0, 0(s11)
80201864: 05 89        	andi	a0, a0, 1
80201866: 0d e5        	bnez	a0, 0x80201890 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0x94>
;                 let pa = kalloc();
80201868: 97 00 00 00  	auipc	ra, 0
8020186c: e7 80 a0 9d  	jalr	-1574(ra)
;                 if pa == 0 {
80201870: 51 c1        	beqz	a0, 0x802018f4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xf8>
80201872: aa 84        	mv	s1, a0
80201874: 05 66        	lui	a2, 1
80201876: 81 45        	li	a1, 0
80201878: 97 10 00 00  	auipc	ra, 1
8020187c: e7 80 a0 33  	jalr	826(ra)
;     (pa >> 12) << 10
80201880: 13 d5 24 00  	srli	a0, s1, 2
80201884: 33 75 55 01  	and	a0, a0, s5
;                 *pte = pa2pte(pa) | PTE_V;
80201888: 13 65 15 00  	ori	a0, a0, 1
8020188c: 23 b0 ad 00  	sd	a0, 0(s11)
;             pte = &mut self.data[px(level, va)];
80201890: 13 d5 29 01  	srli	a0, s3, 18
80201894: 33 75 a5 01  	and	a0, a0, s10
80201898: b3 0d ab 00  	add	s11, s6, a0
;             if (*pte & PTE_V) != 0 {
8020189c: 03 b5 0d 00  	ld	a0, 0(s11)
802018a0: 93 75 15 00  	andi	a1, a0, 1
802018a4: 95 e5        	bnez	a1, 0x802018d0 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xd4>
;                 let pa = kalloc();
802018a6: 97 00 00 00  	auipc	ra, 0
802018aa: e7 80 c0 99  	jalr	-1636(ra)
;                 if pa == 0 {
802018ae: 39 c1        	beqz	a0, 0x802018f4 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xf8>
802018b0: aa 84        	mv	s1, a0
802018b2: 05 66        	lui	a2, 1
802018b4: 81 45        	li	a1, 0
802018b6: 97 10 00 00  	auipc	ra, 1
802018ba: e7 80 c0 2f  	jalr	764(ra)
;     (pa >> 12) << 10
802018be: 13 d5 24 00  	srli	a0, s1, 2
802018c2: 33 75 55 01  	and	a0, a0, s5
;                 *pte = pa2pte(pa) | PTE_V;
802018c6: 13 65 15 00  	ori	a0, a0, 1
802018ca: 23 b0 ad 00  	sd	a0, 0(s11)
802018ce: 21 a0        	j	0x802018d6 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xda>
;     (pte >> 10) << 12
802018d0: 29 81        	srli	a0, a0, 10
802018d2: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
802018d6: 13 75 fc 1f  	andi	a0, s8, 511
;         &mut pagetable.data[px(0, va)]
802018da: 0e 05        	slli	a0, a0, 3
802018dc: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
802018de: 83 45 05 00  	lbu	a1, 0(a0)
802018e2: 85 89        	andi	a1, a1, 1
802018e4: bd e5        	bnez	a1, 0x80201952 <.LBB2_21>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802018e6: 23 30 75 01  	sd	s7, 0(a0)
;             a += PGSIZE;
802018ea: e6 99        	add	s3, s3, s9
;         while a < last {
802018ec: 05 0c        	addi	s8, s8, 1
802018ee: e3 e1 49 f7  	bltu	s3, s4, 0x80201850 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0x54>
802018f2: 11 a0        	j	0x802018f6 <_ZN6kernel6memory9pagetable10PagetableT8mappages17hea683668ff464e35E+0xfa>
802018f4: 01 49        	li	s2, 0
;     }
802018f6: 4a 85        	mv	a0, s2
802018f8: ea 60        	ld	ra, 152(sp)
802018fa: 4a 64        	ld	s0, 144(sp)
802018fc: aa 64        	ld	s1, 136(sp)
802018fe: 0a 69        	ld	s2, 128(sp)
80201900: e6 79        	ld	s3, 120(sp)
80201902: 46 7a        	ld	s4, 112(sp)
80201904: a6 7a        	ld	s5, 104(sp)
80201906: 06 7b        	ld	s6, 96(sp)
80201908: e6 6b        	ld	s7, 88(sp)
8020190a: 46 6c        	ld	s8, 80(sp)
8020190c: a6 6c        	ld	s9, 72(sp)
8020190e: 06 6d        	ld	s10, 64(sp)
80201910: e2 7d        	ld	s11, 56(sp)
80201912: 0d 61        	addi	sp, sp, 160
80201914: 82 80        	ret

0000000080201916 <.LBB2_18>:
80201916: 17 25 00 00  	auipc	a0, 2
8020191a: 13 05 a5 b7  	addi	a0, a0, -1158
8020191e: 23 3c a4 f6  	sd	a0, -136(s0)
80201922: 05 45        	li	a0, 1
80201924: 23 30 a4 f8  	sd	a0, -128(s0)
80201928: 23 34 04 f6  	sd	zero, -152(s0)

000000008020192c <.LBB2_19>:
8020192c: 17 25 00 00  	auipc	a0, 2
80201930: 13 05 45 b6  	addi	a0, a0, -1180
80201934: 23 34 a4 f8  	sd	a0, -120(s0)
80201938: 23 38 04 f8  	sd	zero, -112(s0)

000000008020193c <.LBB2_20>:
;             panic!("walk");
8020193c: 97 25 00 00  	auipc	a1, 2
80201940: 93 85 c5 b7  	addi	a1, a1, -1156
80201944: 13 05 84 f6  	addi	a0, s0, -152
80201948: 97 00 00 00  	auipc	ra, 0
8020194c: e7 80 a0 79  	jalr	1946(ra)
80201950: 00 00        	unimp	

0000000080201952 <.LBB2_21>:
80201952: 17 25 00 00  	auipc	a0, 2
80201956: 13 05 e5 b8  	addi	a0, a0, -1138
8020195a: 23 3c a4 f6  	sd	a0, -136(s0)
8020195e: 05 45        	li	a0, 1
80201960: 23 30 a4 f8  	sd	a0, -128(s0)
80201964: 23 34 04 f6  	sd	zero, -152(s0)

0000000080201968 <.LBB2_22>:
80201968: 17 25 00 00  	auipc	a0, 2
8020196c: 13 05 85 b2  	addi	a0, a0, -1240
80201970: 23 34 a4 f8  	sd	a0, -120(s0)
80201974: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201978 <.LBB2_23>:
;                 panic!("mappages: remap");
80201978: 97 25 00 00  	auipc	a1, 2
8020197c: 93 85 85 b7  	addi	a1, a1, -1160
80201980: 13 05 84 f6  	addi	a0, s0, -152
80201984: 97 00 00 00  	auipc	ra, 0
80201988: e7 80 e0 75  	jalr	1886(ra)
8020198c: 00 00        	unimp	

000000008020198e <.LBB2_24>:
8020198e: 17 25 00 00  	auipc	a0, 2
80201992: 13 05 a5 b8  	addi	a0, a0, -1142
80201996: 23 3c a4 f6  	sd	a0, -136(s0)
8020199a: 05 45        	li	a0, 1
8020199c: 23 30 a4 f8  	sd	a0, -128(s0)
802019a0: 23 34 04 f6  	sd	zero, -152(s0)

00000000802019a4 <.LBB2_25>:
802019a4: 17 25 00 00  	auipc	a0, 2
802019a8: 13 05 c5 ae  	addi	a0, a0, -1300
802019ac: 23 34 a4 f8  	sd	a0, -120(s0)
802019b0: 23 38 04 f8  	sd	zero, -112(s0)

00000000802019b4 <.LBB2_26>:
;             panic!("mappages: size");
802019b4: 97 25 00 00  	auipc	a1, 2
802019b8: 93 85 45 b7  	addi	a1, a1, -1164
802019bc: 13 05 84 f6  	addi	a0, s0, -152
802019c0: 97 00 00 00  	auipc	ra, 0
802019c4: e7 80 20 72  	jalr	1826(ra)
802019c8: 00 00        	unimp	

00000000802019ca <_ZN6kernel6memory3kvm7kvminit17h8793f41542848a7cE>:
; pub fn kvminit() {
802019ca: 59 71        	addi	sp, sp, -112
;         self.0.call_once(builder)
802019cc: 86 f4        	sd	ra, 104(sp)
802019ce: a2 f0        	sd	s0, 96(sp)
802019d0: a6 ec        	sd	s1, 88(sp)
802019d2: ca e8        	sd	s2, 80(sp)
802019d4: ce e4        	sd	s3, 72(sp)
802019d6: 80 18        	addi	s0, sp, 112

00000000802019d8 <.LBB1_13>:
802019d8: 17 35 01 00  	auipc	a0, 19
802019dc: 13 05 85 72  	addi	a0, a0, 1832
802019e0: 97 00 00 00  	auipc	ra, 0
802019e4: e7 80 20 9b  	jalr	-1614(ra)
802019e8: 2a 89        	mv	s2, a0
802019ea: 08 61        	ld	a0, 0(a0)
802019ec: 63 1d 05 14  	bnez	a0, 0x80201b46 <.LBB1_22>
802019f0: 7d 55        	li	a0, -1
802019f2: 23 30 a9 00  	sd	a0, 0(s2)
802019f6: 93 09 89 00  	addi	s3, s2, 8
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
802019fa: b7 05 00 10  	lui	a1, 65536
802019fe: 05 66        	lui	a2, 1
80201a00: b7 06 00 10  	lui	a3, 65536
80201a04: 19 47        	li	a4, 6
80201a06: 4e 85        	mv	a0, s3
80201a08: 97 00 00 00  	auipc	ra, 0
80201a0c: e7 80 40 df  	jalr	-524(ra)
80201a10: 6d cd        	beqz	a0, 0x80201b0a <.LBB1_19>
80201a12: b7 15 00 10  	lui	a1, 65537
80201a16: 05 66        	lui	a2, 1
80201a18: b7 16 00 10  	lui	a3, 65537
80201a1c: 19 47        	li	a4, 6
80201a1e: 4e 85        	mv	a0, s3
80201a20: 97 00 00 00  	auipc	ra, 0
80201a24: e7 80 c0 dd  	jalr	-548(ra)
80201a28: 6d c1        	beqz	a0, 0x80201b0a <.LBB1_19>
80201a2a: b7 05 00 0c  	lui	a1, 49152
80201a2e: 37 06 40 00  	lui	a2, 1024
80201a32: b7 06 00 0c  	lui	a3, 49152
80201a36: 19 47        	li	a4, 6
80201a38: 4e 85        	mv	a0, s3
80201a3a: 97 00 00 00  	auipc	ra, 0
80201a3e: e7 80 20 dc  	jalr	-574(ra)
80201a42: 61 c5        	beqz	a0, 0x80201b0a <.LBB1_19>

0000000080201a44 <.LBB1_14>:
80201a44: 97 44 01 00  	auipc	s1, 20
80201a48: 93 84 c4 5b  	addi	s1, s1, 1468
80201a4c: 13 05 f0 bf  	li	a0, -1025
80201a50: 56 05        	slli	a0, a0, 21
80201a52: 33 86 a4 00  	add	a2, s1, a0
80201a56: 13 05 10 40  	li	a0, 1025
80201a5a: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201a5e: 29 47        	li	a4, 10
80201a60: 4e 85        	mv	a0, s3
80201a62: ae 86        	mv	a3, a1
80201a64: 97 00 00 00  	auipc	ra, 0
80201a68: e7 80 80 d9  	jalr	-616(ra)
80201a6c: 59 cd        	beqz	a0, 0x80201b0a <.LBB1_19>
80201a6e: 45 45        	li	a0, 17
80201a70: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201a72: 33 06 95 40  	sub	a2, a0, s1
80201a76: 19 47        	li	a4, 6
80201a78: 4e 85        	mv	a0, s3
80201a7a: a6 85        	mv	a1, s1
80201a7c: a6 86        	mv	a3, s1
80201a7e: 97 00 00 00  	auipc	ra, 0
80201a82: e7 80 e0 d7  	jalr	-642(ra)
80201a86: 51 c1        	beqz	a0, 0x80201b0a <.LBB1_19>

0000000080201a88 <.LBB1_15>:
80201a88: 97 f6 ff ff  	auipc	a3, 1048575
80201a8c: 93 86 86 57  	addi	a3, a3, 1400
80201a90: 37 05 00 04  	lui	a0, 16384
80201a94: 7d 35        	addiw	a0, a0, -1
80201a96: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201a9a: 05 66        	lui	a2, 1
80201a9c: 29 47        	li	a4, 10
80201a9e: 4e 85        	mv	a0, s3
80201aa0: 97 00 00 00  	auipc	ra, 0
80201aa4: e7 80 c0 d5  	jalr	-676(ra)
80201aa8: 2d c1        	beqz	a0, 0x80201b0a <.LBB1_19>
80201aaa: 03 35 09 00  	ld	a0, 0(s2)
80201aae: 05 05        	addi	a0, a0, 1
80201ab0: 23 30 a9 00  	sd	a0, 0(s2)
80201ab4: 13 05 04 fd  	addi	a0, s0, -48
80201ab8: 23 3c a4 f8  	sd	a0, -104(s0)
80201abc: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201ac0 <.LBB1_16>:
80201ac0: 17 25 00 00  	auipc	a0, 2
80201ac4: 13 05 05 ae  	addi	a0, a0, -1312
80201ac8: 23 38 a4 fa  	sd	a0, -80(s0)
80201acc: 05 45        	li	a0, 1
80201ace: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201ad2 <.LBB1_17>:
80201ad2: 17 25 00 00  	auipc	a0, 2
80201ad6: 13 05 e5 a6  	addi	a0, a0, -1426
80201ada: 23 30 a4 fc  	sd	a0, -64(s0)
80201ade: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201ae2 <.LBB1_18>:
80201ae2: 97 25 00 00  	auipc	a1, 2
80201ae6: 93 85 e5 ac  	addi	a1, a1, -1330
80201aea: 13 05 84 f9  	addi	a0, s0, -104
80201aee: 13 06 04 fa  	addi	a2, s0, -96
80201af2: 97 00 00 00  	auipc	ra, 0
80201af6: e7 80 80 70  	jalr	1800(ra)
80201afa: 25 e5        	bnez	a0, 0x80201b62 <.LBB1_25>
; }
80201afc: a6 70        	ld	ra, 104(sp)
80201afe: 06 74        	ld	s0, 96(sp)
80201b00: e6 64        	ld	s1, 88(sp)
80201b02: 46 69        	ld	s2, 80(sp)
80201b04: a6 69        	ld	s3, 72(sp)
80201b06: 65 61        	addi	sp, sp, 112
80201b08: 82 80        	ret

0000000080201b0a <.LBB1_19>:
80201b0a: 17 25 00 00  	auipc	a0, 2
80201b0e: 13 05 e5 a3  	addi	a0, a0, -1474
80201b12: 23 38 a4 fa  	sd	a0, -80(s0)
80201b16: 05 45        	li	a0, 1
80201b18: 23 3c a4 fa  	sd	a0, -72(s0)
80201b1c: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201b20 <.LBB1_20>:
80201b20: 17 25 00 00  	auipc	a0, 2
80201b24: 13 05 05 a2  	addi	a0, a0, -1504
80201b28: 23 30 a4 fc  	sd	a0, -64(s0)
80201b2c: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201b30 <.LBB1_21>:
80201b30: 97 25 00 00  	auipc	a1, 2
80201b34: 93 85 05 a4  	addi	a1, a1, -1472
80201b38: 13 05 04 fa  	addi	a0, s0, -96
80201b3c: 97 00 00 00  	auipc	ra, 0
80201b40: e7 80 60 5a  	jalr	1446(ra)
80201b44: 00 00        	unimp	

0000000080201b46 <.LBB1_22>:
80201b46: 17 15 00 00  	auipc	a0, 1
80201b4a: 13 05 25 64  	addi	a0, a0, 1602

0000000080201b4e <.LBB1_23>:
80201b4e: 97 16 00 00  	auipc	a3, 1
80201b52: 93 86 a6 64  	addi	a3, a3, 1610

0000000080201b56 <.LBB1_24>:
80201b56: 17 17 00 00  	auipc	a4, 1
80201b5a: 13 07 a7 67  	addi	a4, a4, 1658
80201b5e: c1 45        	li	a1, 16
80201b60: 39 a8        	j	0x80201b7e <.LBB1_27+0xc>

0000000080201b62 <.LBB1_25>:
80201b62: 17 25 00 00  	auipc	a0, 2
80201b66: 13 05 e5 a7  	addi	a0, a0, -1410

0000000080201b6a <.LBB1_26>:
80201b6a: 97 26 00 00  	auipc	a3, 2
80201b6e: 93 86 66 aa  	addi	a3, a3, -1370

0000000080201b72 <.LBB1_27>:
80201b72: 17 27 00 00  	auipc	a4, 2
80201b76: 13 07 e7 ac  	addi	a4, a4, -1330
80201b7a: 93 05 b0 02  	li	a1, 43
80201b7e: 13 06 04 fd  	addi	a2, s0, -48
80201b82: 97 00 00 00  	auipc	ra, 0
80201b86: e7 80 a0 5f  	jalr	1530(ra)
80201b8a: 00 00        	unimp	

0000000080201b8c <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17hd0476dbd38f9b83bE.llvm.17556389892753268885>:
80201b8c: 41 11        	addi	sp, sp, -16
80201b8e: 06 e4        	sd	ra, 8(sp)
80201b90: 22 e0        	sd	s0, 0(sp)
80201b92: 00 08        	addi	s0, sp, 16
80201b94: a2 60        	ld	ra, 8(sp)
80201b96: 02 64        	ld	s0, 0(sp)
80201b98: 41 01        	addi	sp, sp, 16
80201b9a: 82 80        	ret

0000000080201b9c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885>:
80201b9c: 01 11        	addi	sp, sp, -32
80201b9e: 06 ec        	sd	ra, 24(sp)
80201ba0: 22 e8        	sd	s0, 16(sp)
80201ba2: 00 10        	addi	s0, sp, 32
80201ba4: 1b 85 05 00  	sext.w	a0, a1
80201ba8: 13 06 00 08  	li	a2, 128
80201bac: 23 26 04 fe  	sw	zero, -20(s0)
80201bb0: 63 76 c5 00  	bgeu	a0, a2, 0x80201bbc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x20>
80201bb4: 23 06 b4 fe  	sb	a1, -20(s0)
80201bb8: 05 45        	li	a0, 1
80201bba: 51 a8        	j	0x80201c4e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xb2>
80201bbc: 1b d5 b5 00  	srliw	a0, a1, 11
80201bc0: 19 ed        	bnez	a0, 0x80201bde <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x42>
80201bc2: 13 d5 65 00  	srli	a0, a1, 6
80201bc6: 13 65 05 0c  	ori	a0, a0, 192
80201bca: 23 06 a4 fe  	sb	a0, -20(s0)
80201bce: 13 f5 f5 03  	andi	a0, a1, 63
80201bd2: 13 65 05 08  	ori	a0, a0, 128
80201bd6: a3 06 a4 fe  	sb	a0, -19(s0)
80201bda: 09 45        	li	a0, 2
80201bdc: 8d a8        	j	0x80201c4e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xb2>
80201bde: 1b d5 05 01  	srliw	a0, a1, 16
80201be2: 05 e9        	bnez	a0, 0x80201c12 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x76>
80201be4: 13 95 05 02  	slli	a0, a1, 32
80201be8: 01 91        	srli	a0, a0, 32
80201bea: 1b d6 c5 00  	srliw	a2, a1, 12
80201bee: 13 66 06 0e  	ori	a2, a2, 224
80201bf2: 23 06 c4 fe  	sb	a2, -20(s0)
80201bf6: 52 15        	slli	a0, a0, 52
80201bf8: 69 91        	srli	a0, a0, 58
80201bfa: 13 65 05 08  	ori	a0, a0, 128
80201bfe: a3 06 a4 fe  	sb	a0, -19(s0)
80201c02: 13 f5 f5 03  	andi	a0, a1, 63
80201c06: 13 65 05 08  	ori	a0, a0, 128
80201c0a: 23 07 a4 fe  	sb	a0, -18(s0)
80201c0e: 0d 45        	li	a0, 3
80201c10: 3d a8        	j	0x80201c4e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xb2>
80201c12: 13 95 05 02  	slli	a0, a1, 32
80201c16: 01 91        	srli	a0, a0, 32
80201c18: 13 16 b5 02  	slli	a2, a0, 43
80201c1c: 75 92        	srli	a2, a2, 61
80201c1e: 13 66 06 0f  	ori	a2, a2, 240
80201c22: 23 06 c4 fe  	sb	a2, -20(s0)
80201c26: 13 16 e5 02  	slli	a2, a0, 46
80201c2a: 69 92        	srli	a2, a2, 58
80201c2c: 13 66 06 08  	ori	a2, a2, 128
80201c30: a3 06 c4 fe  	sb	a2, -19(s0)
80201c34: 52 15        	slli	a0, a0, 52
80201c36: 69 91        	srli	a0, a0, 58
80201c38: 13 65 05 08  	ori	a0, a0, 128
80201c3c: 23 07 a4 fe  	sb	a0, -18(s0)
80201c40: 13 f5 f5 03  	andi	a0, a1, 63
80201c44: 13 65 05 08  	ori	a0, a0, 128
80201c48: a3 07 a4 fe  	sb	a0, -17(s0)
80201c4c: 11 45        	li	a0, 4
80201c4e: 93 06 c4 fe  	addi	a3, s0, -20
80201c52: 33 87 a6 00  	add	a4, a3, a0
80201c56: 13 03 f0 0d  	li	t1, 223
80201c5a: 13 08 00 0f  	li	a6, 240
80201c5e: b7 02 11 00  	lui	t0, 272
80201c62: 85 48        	li	a7, 1
80201c64: 01 a8        	j	0x80201c74 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xd8>
80201c66: 85 06        	addi	a3, a3, 1
;         asm!(
80201c68: 81 45        	li	a1, 0
80201c6a: 01 46        	li	a2, 0
80201c6c: 73 00 00 00  	ecall	
80201c70: 63 8f e6 04  	beq	a3, a4, 0x80201cce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x132>
80201c74: 83 85 06 00  	lb	a1, 0(a3)
80201c78: 13 f5 f5 0f  	andi	a0, a1, 255
80201c7c: e3 d5 05 fe  	bgez	a1, 0x80201c66 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xca>
80201c80: 03 c6 16 00  	lbu	a2, 1(a3)
80201c84: 93 75 f5 01  	andi	a1, a0, 31
80201c88: 13 76 f6 03  	andi	a2, a2, 63
80201c8c: 63 77 a3 02  	bgeu	t1, a0, 0x80201cba <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x11e>
80201c90: 83 c7 26 00  	lbu	a5, 2(a3)
80201c94: 1a 06        	slli	a2, a2, 6
80201c96: 93 f7 f7 03  	andi	a5, a5, 63
80201c9a: 5d 8e        	or	a2, a2, a5
80201c9c: 63 64 05 03  	bltu	a0, a6, 0x80201cc4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x128>
80201ca0: 03 c5 36 00  	lbu	a0, 3(a3)
80201ca4: f6 15        	slli	a1, a1, 61
80201ca6: ad 91        	srli	a1, a1, 43
80201ca8: 1a 06        	slli	a2, a2, 6
80201caa: 13 75 f5 03  	andi	a0, a0, 63
80201cae: 51 8d        	or	a0, a0, a2
80201cb0: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201cb2: 63 0e 55 00  	beq	a0, t0, 0x80201cce <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0x132>
80201cb6: 91 06        	addi	a3, a3, 4
80201cb8: 45 bf        	j	0x80201c68 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xcc>
80201cba: 89 06        	addi	a3, a3, 2
80201cbc: 13 95 65 00  	slli	a0, a1, 6
80201cc0: 51 8d        	or	a0, a0, a2
80201cc2: 5d b7        	j	0x80201c68 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xcc>
80201cc4: 8d 06        	addi	a3, a3, 3
80201cc6: 13 95 c5 00  	slli	a0, a1, 12
80201cca: 51 8d        	or	a0, a0, a2
80201ccc: 71 bf        	j	0x80201c68 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.17556389892753268885+0xcc>
80201cce: 01 45        	li	a0, 0
80201cd0: e2 60        	ld	ra, 24(sp)
80201cd2: 42 64        	ld	s0, 16(sp)
80201cd4: 05 61        	addi	sp, sp, 32
80201cd6: 82 80        	ret

0000000080201cd8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd5f3e9c38259cfbdE.llvm.17556389892753268885>:
80201cd8: 5d 71        	addi	sp, sp, -80
80201cda: 86 e4        	sd	ra, 72(sp)
80201cdc: a2 e0        	sd	s0, 64(sp)
80201cde: 80 08        	addi	s0, sp, 80
80201ce0: 08 61        	ld	a0, 0(a0)
80201ce2: 90 75        	ld	a2, 40(a1)
80201ce4: 94 71        	ld	a3, 32(a1)
80201ce6: 23 3c a4 fa  	sd	a0, -72(s0)
80201cea: 23 34 c4 fe  	sd	a2, -24(s0)
80201cee: 23 30 d4 fe  	sd	a3, -32(s0)
80201cf2: 88 6d        	ld	a0, 24(a1)
80201cf4: 90 69        	ld	a2, 16(a1)
80201cf6: 94 65        	ld	a3, 8(a1)
80201cf8: 8c 61        	ld	a1, 0(a1)
80201cfa: 23 3c a4 fc  	sd	a0, -40(s0)
80201cfe: 23 38 c4 fc  	sd	a2, -48(s0)
80201d02: 23 34 d4 fc  	sd	a3, -56(s0)
80201d06: 23 30 b4 fc  	sd	a1, -64(s0)

0000000080201d0a <.LBB2_1>:
80201d0a: 97 25 00 00  	auipc	a1, 2
80201d0e: 93 85 65 8a  	addi	a1, a1, -1882
80201d12: 13 05 84 fb  	addi	a0, s0, -72
80201d16: 13 06 04 fc  	addi	a2, s0, -64
80201d1a: 97 00 00 00  	auipc	ra, 0
80201d1e: e7 80 00 4e  	jalr	1248(ra)
80201d22: a6 60        	ld	ra, 72(sp)
80201d24: 06 64        	ld	s0, 64(sp)
80201d26: 61 61        	addi	sp, sp, 80
80201d28: 82 80        	ret

0000000080201d2a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885>:
80201d2a: 41 11        	addi	sp, sp, -16
80201d2c: 06 e4        	sd	ra, 8(sp)
80201d2e: 22 e0        	sd	s0, 0(sp)
80201d30: 00 08        	addi	s0, sp, 16
80201d32: 41 c2        	beqz	a2, 0x80201db2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x88>
80201d34: ae 86        	mv	a3, a1
80201d36: 33 87 c5 00  	add	a4, a1, a2
80201d3a: 13 03 f0 0d  	li	t1, 223
80201d3e: 13 08 00 0f  	li	a6, 240
80201d42: b7 02 11 00  	lui	t0, 272
80201d46: 85 48        	li	a7, 1
80201d48: 01 a8        	j	0x80201d58 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x2e>
80201d4a: 85 06        	addi	a3, a3, 1
;         asm!(
80201d4c: 81 45        	li	a1, 0
80201d4e: 01 46        	li	a2, 0
80201d50: 73 00 00 00  	ecall	
80201d54: 63 8f e6 04  	beq	a3, a4, 0x80201db2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x88>
80201d58: 83 85 06 00  	lb	a1, 0(a3)
80201d5c: 13 f5 f5 0f  	andi	a0, a1, 255
80201d60: e3 d5 05 fe  	bgez	a1, 0x80201d4a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x20>
80201d64: 03 c6 16 00  	lbu	a2, 1(a3)
80201d68: 93 75 f5 01  	andi	a1, a0, 31
80201d6c: 13 76 f6 03  	andi	a2, a2, 63
80201d70: 63 77 a3 02  	bgeu	t1, a0, 0x80201d9e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x74>
80201d74: 83 c7 26 00  	lbu	a5, 2(a3)
80201d78: 1a 06        	slli	a2, a2, 6
80201d7a: 93 f7 f7 03  	andi	a5, a5, 63
80201d7e: 5d 8e        	or	a2, a2, a5
80201d80: 63 64 05 03  	bltu	a0, a6, 0x80201da8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x7e>
80201d84: 03 c5 36 00  	lbu	a0, 3(a3)
80201d88: f6 15        	slli	a1, a1, 61
80201d8a: ad 91        	srli	a1, a1, 43
80201d8c: 1a 06        	slli	a2, a2, 6
80201d8e: 13 75 f5 03  	andi	a0, a0, 63
80201d92: 51 8d        	or	a0, a0, a2
80201d94: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201d96: 63 0e 55 00  	beq	a0, t0, 0x80201db2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x88>
80201d9a: 91 06        	addi	a3, a3, 4
80201d9c: 45 bf        	j	0x80201d4c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x22>
80201d9e: 89 06        	addi	a3, a3, 2
80201da0: 13 95 65 00  	slli	a0, a1, 6
80201da4: 51 8d        	or	a0, a0, a2
80201da6: 5d b7        	j	0x80201d4c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x22>
80201da8: 8d 06        	addi	a3, a3, 3
80201daa: 13 95 c5 00  	slli	a0, a1, 12
80201dae: 51 8d        	or	a0, a0, a2
80201db0: 71 bf        	j	0x80201d4c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.17556389892753268885+0x22>
80201db2: 01 45        	li	a0, 0
80201db4: a2 60        	ld	ra, 8(sp)
80201db6: 02 64        	ld	s0, 0(sp)
80201db8: 41 01        	addi	sp, sp, 16
80201dba: 82 80        	ret

0000000080201dbc <_ZN6kernel7console5print17h1ef73275907ef8e0E>:
; pub fn print(args: fmt::Arguments) {
80201dbc: 5d 71        	addi	sp, sp, -80
80201dbe: 86 e4        	sd	ra, 72(sp)
80201dc0: a2 e0        	sd	s0, 64(sp)
80201dc2: 80 08        	addi	s0, sp, 80
80201dc4: 0c 75        	ld	a1, 40(a0)
80201dc6: 10 71        	ld	a2, 32(a0)
80201dc8: 93 06 84 fe  	addi	a3, s0, -24
80201dcc: 23 38 d4 fa  	sd	a3, -80(s0)
80201dd0: 23 30 b4 fe  	sd	a1, -32(s0)
80201dd4: 23 3c c4 fc  	sd	a2, -40(s0)
80201dd8: 0c 6d        	ld	a1, 24(a0)
80201dda: 10 69        	ld	a2, 16(a0)
80201ddc: 14 65        	ld	a3, 8(a0)
80201dde: 08 61        	ld	a0, 0(a0)
80201de0: 23 38 b4 fc  	sd	a1, -48(s0)
80201de4: 23 34 c4 fc  	sd	a2, -56(s0)
80201de8: 23 30 d4 fc  	sd	a3, -64(s0)
80201dec: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201df0 <.LBB4_3>:
80201df0: 97 15 00 00  	auipc	a1, 1
80201df4: 93 85 05 7c  	addi	a1, a1, 1984
80201df8: 13 05 04 fb  	addi	a0, s0, -80
80201dfc: 13 06 84 fb  	addi	a2, s0, -72
80201e00: 97 00 00 00  	auipc	ra, 0
80201e04: e7 80 a0 3f  	jalr	1018(ra)
80201e08: 09 e5        	bnez	a0, 0x80201e12 <.LBB4_4>
; }
80201e0a: a6 60        	ld	ra, 72(sp)
80201e0c: 06 64        	ld	s0, 64(sp)
80201e0e: 61 61        	addi	sp, sp, 80
80201e10: 82 80        	ret

0000000080201e12 <.LBB4_4>:
80201e12: 17 15 00 00  	auipc	a0, 1
80201e16: 13 05 e5 7c  	addi	a0, a0, 1998

0000000080201e1a <.LBB4_5>:
80201e1a: 97 16 00 00  	auipc	a3, 1
80201e1e: 93 86 66 7f  	addi	a3, a3, 2038

0000000080201e22 <.LBB4_6>:
80201e22: 17 27 00 00  	auipc	a4, 2
80201e26: 13 07 e7 81  	addi	a4, a4, -2018
80201e2a: 93 05 b0 02  	li	a1, 43
80201e2e: 13 06 84 fe  	addi	a2, s0, -24
80201e32: 97 00 00 00  	auipc	ra, 0
80201e36: e7 80 a0 34  	jalr	842(ra)
80201e3a: 00 00        	unimp	

0000000080201e3c <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80201e3c: 71 71        	addi	sp, sp, -176
80201e3e: 06 f5        	sd	ra, 168(sp)
80201e40: 22 f1        	sd	s0, 160(sp)
80201e42: 26 ed        	sd	s1, 152(sp)
80201e44: 00 19        	addi	s0, sp, 176
80201e46: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80201e48: 97 00 00 00  	auipc	ra, 0
80201e4c: e7 80 20 29  	jalr	658(ra)
80201e50: 05 e1        	bnez	a0, 0x80201e70 <.LBB0_8+0x16>

0000000080201e52 <.LBB0_7>:
80201e52: 17 25 00 00  	auipc	a0, 2
80201e56: 13 05 65 88  	addi	a0, a0, -1914

0000000080201e5a <.LBB0_8>:
80201e5a: 17 26 00 00  	auipc	a2, 2
80201e5e: 13 06 e6 8b  	addi	a2, a2, -1858
80201e62: 93 05 b0 02  	li	a1, 43
80201e66: 97 00 00 00  	auipc	ra, 0
80201e6a: e7 80 a0 2a  	jalr	682(ra)
80201e6e: 00 00        	unimp	
80201e70: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80201e74: 26 85        	mv	a0, s1
80201e76: 97 00 00 00  	auipc	ra, 0
80201e7a: e7 80 80 26  	jalr	616(ra)
80201e7e: 3d e1        	bnez	a0, 0x80201ee4 <.LBB0_11+0x24>
80201e80: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80201e84: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080201e88 <.LBB0_9>:
80201e88: 17 f5 ff ff  	auipc	a0, 1048575
80201e8c: 13 05 25 70  	addi	a0, a0, 1794
80201e90: 23 34 a4 f6  	sd	a0, -152(s0)
80201e94: 13 05 04 fe  	addi	a0, s0, -32
80201e98: 23 38 a4 f8  	sd	a0, -112(s0)
80201e9c: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201ea0 <.LBB0_10>:
80201ea0: 17 15 00 00  	auipc	a0, 1
80201ea4: 13 05 85 7c  	addi	a0, a0, 1992
80201ea8: 23 30 a4 fc  	sd	a0, -64(s0)
80201eac: 09 45        	li	a0, 2
80201eae: 23 34 a4 fc  	sd	a0, -56(s0)
80201eb2: 13 05 04 f6  	addi	a0, s0, -160
80201eb6: 23 38 a4 fc  	sd	a0, -48(s0)
80201eba: 05 45        	li	a0, 1
80201ebc: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201ec0 <.LBB0_11>:
80201ec0: 97 15 00 00  	auipc	a1, 1
80201ec4: 93 85 05 6f  	addi	a1, a1, 1776
80201ec8: 13 05 04 f9  	addi	a0, s0, -112
80201ecc: 13 06 04 fb  	addi	a2, s0, -80
80201ed0: 97 00 00 00  	auipc	ra, 0
80201ed4: e7 80 a0 32  	jalr	810(ra)
80201ed8: 45 e1        	bnez	a0, 0x80201f78 <.LBB0_17>
;     shutdown()
80201eda: 97 f0 ff ff  	auipc	ra, 1048575
80201ede: e7 80 60 59  	jalr	1430(ra)
80201ee2: 00 00        	unimp	
80201ee4: 0c 61        	ld	a1, 0(a0)
80201ee6: 10 65        	ld	a2, 8(a0)
80201ee8: 23 38 b4 f8  	sd	a1, -112(s0)
80201eec: 23 3c c4 f8  	sd	a2, -104(s0)
80201ef0: 08 49        	lw	a0, 16(a0)
80201ef2: 23 22 a4 fa  	sw	a0, -92(s0)
80201ef6: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80201efa: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080201efe <.LBB0_12>:
80201efe: 17 f5 ff ff  	auipc	a0, 1048575
80201f02: 13 05 a5 66  	addi	a0, a0, 1642
80201f06: 23 34 a4 f6  	sd	a0, -152(s0)
80201f0a: 13 05 44 fa  	addi	a0, s0, -92
80201f0e: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080201f12 <.LBB0_13>:
80201f12: 17 15 00 00  	auipc	a0, 1
80201f16: 13 05 85 c5  	addi	a0, a0, -936
80201f1a: 23 3c a4 f6  	sd	a0, -136(s0)
80201f1e: 13 05 84 f5  	addi	a0, s0, -168
80201f22: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080201f26 <.LBB0_14>:
80201f26: 17 f5 ff ff  	auipc	a0, 1048575
80201f2a: 13 05 45 66  	addi	a0, a0, 1636
80201f2e: 23 34 a4 f8  	sd	a0, -120(s0)
80201f32: 13 05 04 fe  	addi	a0, s0, -32
80201f36: 23 34 a4 fa  	sd	a0, -88(s0)
80201f3a: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201f3e <.LBB0_15>:
80201f3e: 17 15 00 00  	auipc	a0, 1
80201f42: 13 05 a5 75  	addi	a0, a0, 1882
80201f46: 23 30 a4 fc  	sd	a0, -64(s0)
80201f4a: 11 45        	li	a0, 4
80201f4c: 23 34 a4 fc  	sd	a0, -56(s0)
80201f50: 13 05 04 f6  	addi	a0, s0, -160
80201f54: 23 38 a4 fc  	sd	a0, -48(s0)
80201f58: 0d 45        	li	a0, 3
80201f5a: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201f5e <.LBB0_16>:
80201f5e: 97 15 00 00  	auipc	a1, 1
80201f62: 93 85 25 65  	addi	a1, a1, 1618
80201f66: 13 05 84 fa  	addi	a0, s0, -88
80201f6a: 13 06 04 fb  	addi	a2, s0, -80
80201f6e: 97 00 00 00  	auipc	ra, 0
80201f72: e7 80 c0 28  	jalr	652(ra)
80201f76: 35 d1        	beqz	a0, 0x80201eda <.LBB0_11+0x1a>

0000000080201f78 <.LBB0_17>:
80201f78: 17 15 00 00  	auipc	a0, 1
80201f7c: 13 05 85 66  	addi	a0, a0, 1640

0000000080201f80 <.LBB0_18>:
80201f80: 97 16 00 00  	auipc	a3, 1
80201f84: 93 86 06 69  	addi	a3, a3, 1680

0000000080201f88 <.LBB0_19>:
80201f88: 17 17 00 00  	auipc	a4, 1
80201f8c: 13 07 87 6b  	addi	a4, a4, 1720
80201f90: 93 05 b0 02  	li	a1, 43
80201f94: 13 06 04 fe  	addi	a2, s0, -32
80201f98: 97 00 00 00  	auipc	ra, 0
80201f9c: e7 80 40 1e  	jalr	484(ra)
80201fa0: 00 00        	unimp	

0000000080201fa2 <main>:
; pub fn main() {
80201fa2: 5d 71        	addi	sp, sp, -80
80201fa4: 86 e4        	sd	ra, 72(sp)
80201fa6: a2 e0        	sd	s0, 64(sp)
80201fa8: 26 fc        	sd	s1, 56(sp)
80201faa: 4a f8        	sd	s2, 48(sp)
80201fac: 80 08        	addi	s0, sp, 80

0000000080201fae <.LBB0_8>:
80201fae: 17 45 01 00  	auipc	a0, 20
80201fb2: 13 05 25 05  	addi	a0, a0, 82

0000000080201fb6 <.LBB0_9>:
80201fb6: 97 35 01 00  	auipc	a1, 19
80201fba: 93 85 a5 04  	addi	a1, a1, 74
80201fbe: 63 f9 a5 00  	bgeu	a1, a0, 0x80201fd0 <.LBB0_9+0x1a>
80201fc2: 13 86 15 00  	addi	a2, a1, 1
80201fc6: 23 80 05 00  	sb	zero, 0(a1)
80201fca: b2 85        	mv	a1, a2
80201fcc: e3 6b a6 fe  	bltu	a2, a0, 0x80201fc2 <.LBB0_9+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201fd0: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
80201fd2: 01 c9        	beqz	a0, 0x80201fe2 <.LBB0_10+0xe>

0000000080201fd4 <.LBB0_10>:
;         while unsafe { started } == 0 {}
80201fd4: 17 35 01 00  	auipc	a0, 19
80201fd8: 13 05 c5 14  	addi	a0, a0, 332
80201fdc: 08 61        	ld	a0, 0(a0)
80201fde: 25 ed        	bnez	a0, 0x80202056 <.LBB0_13+0x3a>
80201fe0: 01 a0        	j	0x80201fe0 <.LBB0_10+0xc>
;         print_logo();
80201fe2: 97 f0 ff ff  	auipc	ra, 1048575
80201fe6: e7 80 e0 4e  	jalr	1262(ra)

0000000080201fea <.LBB0_11>:
80201fea: 17 15 00 00  	auipc	a0, 1
80201fee: 13 05 65 76  	addi	a0, a0, 1894
80201ff2: 23 30 a4 fc  	sd	a0, -64(s0)
80201ff6: 05 49        	li	s2, 1
80201ff8: 23 34 24 fd  	sd	s2, -56(s0)
80201ffc: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202000 <.LBB0_12>:
80202000: 97 14 00 00  	auipc	s1, 1
80202004: 93 84 04 73  	addi	s1, s1, 1840
80202008: 23 38 94 fc  	sd	s1, -48(s0)
8020200c: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
80202010: 13 05 04 fb  	addi	a0, s0, -80
80202014: 97 00 00 00  	auipc	ra, 0
80202018: e7 80 80 da  	jalr	-600(ra)

000000008020201c <.LBB0_13>:
8020201c: 17 15 00 00  	auipc	a0, 1
80202020: 13 05 c5 74  	addi	a0, a0, 1868
80202024: 23 30 a4 fc  	sd	a0, -64(s0)
80202028: 23 34 24 fd  	sd	s2, -56(s0)
8020202c: 23 38 04 fa  	sd	zero, -80(s0)
80202030: 23 38 94 fc  	sd	s1, -48(s0)
80202034: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
80202038: 13 05 04 fb  	addi	a0, s0, -80
8020203c: 97 00 00 00  	auipc	ra, 0
80202040: e7 80 00 d8  	jalr	-640(ra)
;         kinit();
80202044: 97 f0 ff ff  	auipc	ra, 1048575
80202048: e7 80 c0 fb  	jalr	-68(ra)
;         kvminit();
8020204c: 97 00 00 00  	auipc	ra, 0
80202050: e7 80 e0 97  	jalr	-1666(ra)
80202054: 19 a0        	j	0x8020205a <.LBB0_14>
80202056: 0f 00 30 03  	fence	rw, rw

000000008020205a <.LBB0_14>:
8020205a: 17 15 00 00  	auipc	a0, 1
8020205e: 13 05 e5 72  	addi	a0, a0, 1838
80202062: 23 30 a4 fc  	sd	a0, -64(s0)
80202066: 05 45        	li	a0, 1
80202068: 23 34 a4 fc  	sd	a0, -56(s0)
8020206c: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202070 <.LBB0_15>:
80202070: 17 15 00 00  	auipc	a0, 1
80202074: 13 05 05 6c  	addi	a0, a0, 1728
80202078: 23 38 a4 fc  	sd	a0, -48(s0)
8020207c: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202080 <.LBB0_16>:
;     panic!("Shutdown!");
80202080: 97 15 00 00  	auipc	a1, 1
80202084: 93 85 85 72  	addi	a1, a1, 1832
80202088: 13 05 04 fb  	addi	a0, s0, -80
8020208c: 97 00 00 00  	auipc	ra, 0
80202090: e7 80 60 05  	jalr	86(ra)
80202094: 00 00        	unimp	

0000000080202096 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
80202096: 41 11        	addi	sp, sp, -16
;         if self.panicked {
80202098: 06 e4        	sd	ra, 8(sp)
8020209a: 22 e0        	sd	s0, 0(sp)
8020209c: 00 08        	addi	s0, sp, 16
8020209e: 83 45 85 00  	lbu	a1, 8(a0)
802020a2: 91 c5        	beqz	a1, 0x802020ae <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
802020a4: 08 61        	ld	a0, 0(a0)
802020a6: 0f 00 10 03  	fence	rw, w
802020aa: 8d 45        	li	a1, 3
802020ac: 0c e1        	sd	a1, 0(a0)
;     }
802020ae: a2 60        	ld	ra, 8(sp)
802020b0: 02 64        	ld	s0, 0(sp)
802020b2: 41 01        	addi	sp, sp, 16
802020b4: 82 80        	ret

00000000802020b6 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
802020b6: 08 61        	ld	a0, 0(a0)
802020b8: 01 a0        	j	0x802020b8 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

00000000802020ba <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
802020ba: 82 80        	ret

00000000802020bc <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
802020bc: 17 25 00 00  	auipc	a0, 2
802020c0: 13 05 c5 02  	addi	a0, a0, 44
802020c4: 08 61        	ld	a0, 0(a0)
802020c6: 82 80        	ret

00000000802020c8 <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b0ef2d1cc0fb767E>:
802020c8: 90 65        	ld	a2, 8(a1)
802020ca: 88 61        	ld	a0, 0(a1)
802020cc: 1c 6e        	ld	a5, 24(a2)

00000000802020ce <.LBB113_1>:
802020ce: 97 15 00 00  	auipc	a1, 1
802020d2: 93 85 25 71  	addi	a1, a1, 1810
802020d6: 39 46        	li	a2, 14
802020d8: 82 87        	jr	a5

00000000802020da <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
802020da: 08 69        	ld	a0, 16(a0)
802020dc: 82 80        	ret

00000000802020de <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
802020de: 08 6d        	ld	a0, 24(a0)
802020e0: 82 80        	ret

00000000802020e2 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
802020e2: 79 71        	addi	sp, sp, -48
802020e4: 06 f4        	sd	ra, 40(sp)

00000000802020e6 <.LBB170_1>:
802020e6: 17 16 00 00  	auipc	a2, 1
802020ea: 13 06 a6 6d  	addi	a2, a2, 1754
802020ee: 32 e0        	sd	a2, 0(sp)

00000000802020f0 <.LBB170_2>:
802020f0: 17 16 00 00  	auipc	a2, 1
802020f4: 13 06 06 73  	addi	a2, a2, 1840
802020f8: 32 e4        	sd	a2, 8(sp)
802020fa: 2a e8        	sd	a0, 16(sp)
802020fc: 2e ec        	sd	a1, 24(sp)
802020fe: 05 45        	li	a0, 1
80202100: 23 00 a1 02  	sb	a0, 32(sp)
80202104: 0a 85        	mv	a0, sp
80202106: 97 00 00 00  	auipc	ra, 0
8020210a: e7 80 60 d3  	jalr	-714(ra)
8020210e: 00 00        	unimp	

0000000080202110 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80202110: 5d 71        	addi	sp, sp, -80
80202112: 86 e4        	sd	ra, 72(sp)
80202114: 2a fc        	sd	a0, 56(sp)
80202116: ae e0        	sd	a1, 64(sp)
80202118: 28 18        	addi	a0, sp, 56
8020211a: 2a ec        	sd	a0, 24(sp)
8020211c: 05 45        	li	a0, 1
8020211e: 2a f0        	sd	a0, 32(sp)
80202120: 02 e4        	sd	zero, 8(sp)

0000000080202122 <.LBB172_1>:
80202122: 17 15 00 00  	auipc	a0, 1
80202126: 13 05 e5 69  	addi	a0, a0, 1694
8020212a: 2a f4        	sd	a0, 40(sp)
8020212c: 02 f8        	sd	zero, 48(sp)
8020212e: 28 00        	addi	a0, sp, 8
80202130: b2 85        	mv	a1, a2
80202132: 97 00 00 00  	auipc	ra, 0
80202136: e7 80 00 fb  	jalr	-80(ra)
8020213a: 00 00        	unimp	

000000008020213c <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
8020213c: 59 71        	addi	sp, sp, -112
8020213e: 86 f4        	sd	ra, 104(sp)
80202140: 2a e4        	sd	a0, 8(sp)
80202142: 2e e8        	sd	a1, 16(sp)
80202144: 08 08        	addi	a0, sp, 16
80202146: aa e4        	sd	a0, 72(sp)

0000000080202148 <.LBB176_1>:
80202148: 17 15 00 00  	auipc	a0, 1
8020214c: 13 05 25 a3  	addi	a0, a0, -1486
80202150: aa e8        	sd	a0, 80(sp)
80202152: 2c 00        	addi	a1, sp, 8
80202154: ae ec        	sd	a1, 88(sp)
80202156: aa f0        	sd	a0, 96(sp)

0000000080202158 <.LBB176_2>:
80202158: 17 15 00 00  	auipc	a0, 1
8020215c: 13 05 85 6a  	addi	a0, a0, 1704
80202160: 2a f4        	sd	a0, 40(sp)
80202162: 09 45        	li	a0, 2
80202164: 2a f8        	sd	a0, 48(sp)
80202166: 02 ec        	sd	zero, 24(sp)
80202168: ac 00        	addi	a1, sp, 72
8020216a: 2e fc        	sd	a1, 56(sp)
8020216c: aa e0        	sd	a0, 64(sp)
8020216e: 28 08        	addi	a0, sp, 24
80202170: b2 85        	mv	a1, a2
80202172: 97 00 00 00  	auipc	ra, 0
80202176: e7 80 00 f7  	jalr	-144(ra)
8020217a: 00 00        	unimp	

000000008020217c <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
8020217c: 19 71        	addi	sp, sp, -128
8020217e: 86 fc        	sd	ra, 120(sp)
80202180: 2a e4        	sd	a0, 8(sp)
80202182: 2e e8        	sd	a1, 16(sp)
80202184: 32 ec        	sd	a2, 24(sp)
80202186: 36 f0        	sd	a3, 32(sp)
80202188: 28 00        	addi	a0, sp, 8
8020218a: aa ec        	sd	a0, 88(sp)

000000008020218c <.LBB183_1>:
8020218c: 17 15 00 00  	auipc	a0, 1
80202190: 13 05 65 a1  	addi	a0, a0, -1514
80202194: aa f0        	sd	a0, 96(sp)
80202196: 28 08        	addi	a0, sp, 24
80202198: aa f4        	sd	a0, 104(sp)

000000008020219a <.LBB183_2>:
8020219a: 17 15 00 00  	auipc	a0, 1
8020219e: 13 05 05 a0  	addi	a0, a0, -1536
802021a2: aa f8        	sd	a0, 112(sp)

00000000802021a4 <.LBB183_3>:
802021a4: 17 15 00 00  	auipc	a0, 1
802021a8: 13 05 45 6a  	addi	a0, a0, 1700
802021ac: 2a fc        	sd	a0, 56(sp)
802021ae: 09 45        	li	a0, 2
802021b0: aa e0        	sd	a0, 64(sp)
802021b2: 02 f4        	sd	zero, 40(sp)
802021b4: ac 08        	addi	a1, sp, 88
802021b6: ae e4        	sd	a1, 72(sp)
802021b8: aa e8        	sd	a0, 80(sp)
802021ba: 28 10        	addi	a0, sp, 40
802021bc: ba 85        	mv	a1, a4
802021be: 97 00 00 00  	auipc	ra, 0
802021c2: e7 80 40 f2  	jalr	-220(ra)
802021c6: 00 00        	unimp	

00000000802021c8 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
802021c8: 39 71        	addi	sp, sp, -64
802021ca: 06 fc        	sd	ra, 56(sp)
802021cc: 10 75        	ld	a2, 40(a0)
802021ce: 18 71        	ld	a4, 32(a0)
802021d0: 1c 6d        	ld	a5, 24(a0)
802021d2: 32 f8        	sd	a2, 48(sp)
802021d4: 94 61        	ld	a3, 0(a1)
802021d6: 3a f4        	sd	a4, 40(sp)
802021d8: 3e f0        	sd	a5, 32(sp)
802021da: 10 69        	ld	a2, 16(a0)
802021dc: 18 65        	ld	a4, 8(a0)
802021de: 08 61        	ld	a0, 0(a0)
802021e0: 8c 65        	ld	a1, 8(a1)
802021e2: 32 ec        	sd	a2, 24(sp)
802021e4: 3a e8        	sd	a4, 16(sp)
802021e6: 2a e4        	sd	a0, 8(sp)
802021e8: 30 00        	addi	a2, sp, 8
802021ea: 36 85        	mv	a0, a3
802021ec: 97 00 00 00  	auipc	ra, 0
802021f0: e7 80 e0 00  	jalr	14(ra)
802021f4: e2 70        	ld	ra, 56(sp)
802021f6: 21 61        	addi	sp, sp, 64
802021f8: 82 80        	ret

00000000802021fa <_ZN4core3fmt5write17hb508d59c95a275a3E>:
802021fa: 19 71        	addi	sp, sp, -128
802021fc: 86 fc        	sd	ra, 120(sp)
802021fe: a2 f8        	sd	s0, 112(sp)
80202200: a6 f4        	sd	s1, 104(sp)
80202202: ca f0        	sd	s2, 96(sp)
80202204: ce ec        	sd	s3, 88(sp)
80202206: d2 e8        	sd	s4, 80(sp)
80202208: d6 e4        	sd	s5, 72(sp)
8020220a: da e0        	sd	s6, 64(sp)
8020220c: b2 89        	mv	s3, a2
8020220e: 05 46        	li	a2, 1
80202210: 16 16        	slli	a2, a2, 37
80202212: 32 f8        	sd	a2, 48(sp)
80202214: 0d 46        	li	a2, 3
80202216: 23 0c c1 02  	sb	a2, 56(sp)
8020221a: 03 b6 09 00  	ld	a2, 0(s3)
8020221e: 02 e8        	sd	zero, 16(sp)
80202220: 02 f0        	sd	zero, 32(sp)
80202222: 2a e0        	sd	a0, 0(sp)
80202224: 2e e4        	sd	a1, 8(sp)
80202226: 69 c6        	beqz	a2, 0x802022f0 <.LBB220_31+0x9e>
80202228: 03 b5 89 00  	ld	a0, 8(s3)
8020222c: 63 0e 05 10  	beqz	a0, 0x80202348 <.LBB220_31+0xf6>
80202230: 83 b5 09 01  	ld	a1, 16(s3)
80202234: 93 06 f5 ff  	addi	a3, a0, -1
80202238: 8e 06        	slli	a3, a3, 3
8020223a: 8d 82        	srli	a3, a3, 3
8020223c: 13 89 16 00  	addi	s2, a3, 1
80202240: 93 84 85 00  	addi	s1, a1, 8
80202244: 93 05 80 03  	li	a1, 56
80202248: 33 0a b5 02  	mul	s4, a0, a1
8020224c: 13 04 86 01  	addi	s0, a2, 24
80202250: 85 4a        	li	s5, 1

0000000080202252 <.LBB220_31>:
80202252: 17 0b 00 00  	auipc	s6, 0
80202256: 13 0b 4b e6  	addi	s6, s6, -412
8020225a: 90 60        	ld	a2, 0(s1)
8020225c: 09 ca        	beqz	a2, 0x8020226e <.LBB220_31+0x1c>
8020225e: a2 66        	ld	a3, 8(sp)
80202260: 02 65        	ld	a0, 0(sp)
80202262: 83 b5 84 ff  	ld	a1, -8(s1)
80202266: 94 6e        	ld	a3, 24(a3)
80202268: 82 96        	jalr	a3
8020226a: 63 11 05 10  	bnez	a0, 0x8020236c <.LBB220_31+0x11a>
8020226e: 48 44        	lw	a0, 12(s0)
80202270: 2a da        	sw	a0, 52(sp)
80202272: 03 05 04 01  	lb	a0, 16(s0)
80202276: 23 0c a1 02  	sb	a0, 56(sp)
8020227a: 0c 44        	lw	a1, 8(s0)
8020227c: 03 b5 09 02  	ld	a0, 32(s3)
80202280: 2e d8        	sw	a1, 48(sp)
80202282: 83 36 84 ff  	ld	a3, -8(s0)
80202286: 0c 60        	ld	a1, 0(s0)
80202288: 89 ce        	beqz	a3, 0x802022a2 <.LBB220_31+0x50>
8020228a: 01 46        	li	a2, 0
8020228c: 63 9c 56 01  	bne	a3, s5, 0x802022a4 <.LBB220_31+0x52>
80202290: 92 05        	slli	a1, a1, 4
80202292: aa 95        	add	a1, a1, a0
80202294: 90 65        	ld	a2, 8(a1)
80202296: 63 04 66 01  	beq	a2, s6, 0x8020229e <.LBB220_31+0x4c>
8020229a: 01 46        	li	a2, 0
8020229c: 21 a0        	j	0x802022a4 <.LBB220_31+0x52>
8020229e: 8c 61        	ld	a1, 0(a1)
802022a0: 8c 61        	ld	a1, 0(a1)
802022a2: 05 46        	li	a2, 1
802022a4: 32 e8        	sd	a2, 16(sp)
802022a6: 2e ec        	sd	a1, 24(sp)
802022a8: 83 36 84 fe  	ld	a3, -24(s0)
802022ac: 83 35 04 ff  	ld	a1, -16(s0)
802022b0: 89 ce        	beqz	a3, 0x802022ca <.LBB220_31+0x78>
802022b2: 01 46        	li	a2, 0
802022b4: 63 9c 56 01  	bne	a3, s5, 0x802022cc <.LBB220_31+0x7a>
802022b8: 92 05        	slli	a1, a1, 4
802022ba: aa 95        	add	a1, a1, a0
802022bc: 90 65        	ld	a2, 8(a1)
802022be: 63 04 66 01  	beq	a2, s6, 0x802022c6 <.LBB220_31+0x74>
802022c2: 01 46        	li	a2, 0
802022c4: 21 a0        	j	0x802022cc <.LBB220_31+0x7a>
802022c6: 8c 61        	ld	a1, 0(a1)
802022c8: 8c 61        	ld	a1, 0(a1)
802022ca: 05 46        	li	a2, 1
802022cc: 32 f0        	sd	a2, 32(sp)
802022ce: 2e f4        	sd	a1, 40(sp)
802022d0: 0c 6c        	ld	a1, 24(s0)
802022d2: 92 05        	slli	a1, a1, 4
802022d4: 2e 95        	add	a0, a0, a1
802022d6: 10 65        	ld	a2, 8(a0)
802022d8: 08 61        	ld	a0, 0(a0)
802022da: 8a 85        	mv	a1, sp
802022dc: 02 96        	jalr	a2
802022de: 59 e5        	bnez	a0, 0x8020236c <.LBB220_31+0x11a>
802022e0: c1 04        	addi	s1, s1, 16
802022e2: 13 0a 8a fc  	addi	s4, s4, -56
802022e6: 13 04 84 03  	addi	s0, s0, 56
802022ea: e3 18 0a f6  	bnez	s4, 0x8020225a <.LBB220_31+0x8>
802022ee: 81 a8        	j	0x8020233e <.LBB220_31+0xec>
802022f0: 03 b5 89 02  	ld	a0, 40(s3)
802022f4: 31 c9        	beqz	a0, 0x80202348 <.LBB220_31+0xf6>
802022f6: 83 b5 09 02  	ld	a1, 32(s3)
802022fa: 03 b6 09 01  	ld	a2, 16(s3)
802022fe: 93 06 f5 ff  	addi	a3, a0, -1
80202302: 92 06        	slli	a3, a3, 4
80202304: 91 82        	srli	a3, a3, 4
80202306: 13 89 16 00  	addi	s2, a3, 1
8020230a: 13 04 86 00  	addi	s0, a2, 8
8020230e: 13 1a 45 00  	slli	s4, a0, 4
80202312: 93 84 85 00  	addi	s1, a1, 8
80202316: 10 60        	ld	a2, 0(s0)
80202318: 01 ca        	beqz	a2, 0x80202328 <.LBB220_31+0xd6>
8020231a: a2 66        	ld	a3, 8(sp)
8020231c: 02 65        	ld	a0, 0(sp)
8020231e: 83 35 84 ff  	ld	a1, -8(s0)
80202322: 94 6e        	ld	a3, 24(a3)
80202324: 82 96        	jalr	a3
80202326: 39 e1        	bnez	a0, 0x8020236c <.LBB220_31+0x11a>
80202328: 90 60        	ld	a2, 0(s1)
8020232a: 03 b5 84 ff  	ld	a0, -8(s1)
8020232e: 8a 85        	mv	a1, sp
80202330: 02 96        	jalr	a2
80202332: 0d ed        	bnez	a0, 0x8020236c <.LBB220_31+0x11a>
80202334: 41 04        	addi	s0, s0, 16
80202336: 41 1a        	addi	s4, s4, -16
80202338: c1 04        	addi	s1, s1, 16
8020233a: e3 1e 0a fc  	bnez	s4, 0x80202316 <.LBB220_31+0xc4>
8020233e: 03 b5 89 01  	ld	a0, 24(s3)
80202342: 63 68 a9 00  	bltu	s2, a0, 0x80202352 <.LBB220_31+0x100>
80202346: 2d a0        	j	0x80202370 <.LBB220_31+0x11e>
80202348: 01 49        	li	s2, 0
8020234a: 03 b5 89 01  	ld	a0, 24(s3)
8020234e: 63 71 a9 02  	bgeu	s2, a0, 0x80202370 <.LBB220_31+0x11e>
80202352: 03 b5 09 01  	ld	a0, 16(s3)
80202356: 93 15 49 00  	slli	a1, s2, 4
8020235a: 33 06 b5 00  	add	a2, a0, a1
8020235e: a2 66        	ld	a3, 8(sp)
80202360: 02 65        	ld	a0, 0(sp)
80202362: 0c 62        	ld	a1, 0(a2)
80202364: 10 66        	ld	a2, 8(a2)
80202366: 94 6e        	ld	a3, 24(a3)
80202368: 82 96        	jalr	a3
8020236a: 19 c1        	beqz	a0, 0x80202370 <.LBB220_31+0x11e>
8020236c: 05 45        	li	a0, 1
8020236e: 11 a0        	j	0x80202372 <.LBB220_31+0x120>
80202370: 01 45        	li	a0, 0
80202372: e6 70        	ld	ra, 120(sp)
80202374: 46 74        	ld	s0, 112(sp)
80202376: a6 74        	ld	s1, 104(sp)
80202378: 06 79        	ld	s2, 96(sp)
8020237a: e6 69        	ld	s3, 88(sp)
8020237c: 46 6a        	ld	s4, 80(sp)
8020237e: a6 6a        	ld	s5, 72(sp)
80202380: 06 6b        	ld	s6, 64(sp)
80202382: 09 61        	addi	sp, sp, 128
80202384: 82 80        	ret

0000000080202386 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80202386: 59 71        	addi	sp, sp, -112
80202388: 86 f4        	sd	ra, 104(sp)
8020238a: a2 f0        	sd	s0, 96(sp)
8020238c: a6 ec        	sd	s1, 88(sp)
8020238e: ca e8        	sd	s2, 80(sp)
80202390: ce e4        	sd	s3, 72(sp)
80202392: d2 e0        	sd	s4, 64(sp)
80202394: 56 fc        	sd	s5, 56(sp)
80202396: 5a f8        	sd	s6, 48(sp)
80202398: 5e f4        	sd	s7, 40(sp)
8020239a: 62 f0        	sd	s8, 32(sp)
8020239c: 66 ec        	sd	s9, 24(sp)
8020239e: 6a e8        	sd	s10, 16(sp)
802023a0: 6e e4        	sd	s11, 8(sp)
802023a2: be 89        	mv	s3, a5
802023a4: 3a 89        	mv	s2, a4
802023a6: 36 8b        	mv	s6, a3
802023a8: 32 8a        	mv	s4, a2
802023aa: 2a 8c        	mv	s8, a0
802023ac: b9 c1        	beqz	a1, 0x802023f2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
802023ae: 03 64 0c 03  	lwu	s0, 48(s8)
802023b2: 13 75 14 00  	andi	a0, s0, 1
802023b6: b7 0a 11 00  	lui	s5, 272
802023ba: 19 c1        	beqz	a0, 0x802023c0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
802023bc: 93 0a b0 02  	li	s5, 43
802023c0: b3 0c 35 01  	add	s9, a0, s3
802023c4: 13 75 44 00  	andi	a0, s0, 4
802023c8: 15 cd        	beqz	a0, 0x80202404 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
802023ca: 13 05 00 02  	li	a0, 32
802023ce: 63 70 ab 04  	bgeu	s6, a0, 0x8020240e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
802023d2: 01 45        	li	a0, 0
802023d4: 63 03 0b 04  	beqz	s6, 0x8020241a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
802023d8: da 85        	mv	a1, s6
802023da: 52 86        	mv	a2, s4
802023dc: 83 06 06 00  	lb	a3, 0(a2)
802023e0: 05 06        	addi	a2, a2, 1
802023e2: 93 a6 06 fc  	slti	a3, a3, -64
802023e6: 93 c6 16 00  	xori	a3, a3, 1
802023ea: fd 15        	addi	a1, a1, -1
802023ec: 36 95        	add	a0, a0, a3
802023ee: fd f5        	bnez	a1, 0x802023dc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
802023f0: 2d a0        	j	0x8020241a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
802023f2: 03 24 0c 03  	lw	s0, 48(s8)
802023f6: 93 8c 19 00  	addi	s9, s3, 1
802023fa: 93 0a d0 02  	li	s5, 45
802023fe: 13 75 44 00  	andi	a0, s0, 4
80202402: 61 f5        	bnez	a0, 0x802023ca <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80202404: 01 4a        	li	s4, 0
80202406: 03 35 0c 01  	ld	a0, 16(s8)
8020240a: 01 ed        	bnez	a0, 0x80202422 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
8020240c: 99 a0        	j	0x80202452 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020240e: 52 85        	mv	a0, s4
80202410: da 85        	mv	a1, s6
80202412: 97 00 00 00  	auipc	ra, 0
80202416: e7 80 c0 44  	jalr	1100(ra)
8020241a: aa 9c        	add	s9, s9, a0
8020241c: 03 35 0c 01  	ld	a0, 16(s8)
80202420: 0d c9        	beqz	a0, 0x80202452 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80202422: 03 3d 8c 01  	ld	s10, 24(s8)
80202426: 63 f6 ac 03  	bgeu	s9, s10, 0x80202452 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020242a: 13 75 84 00  	andi	a0, s0, 8
8020242e: 41 e5        	bnez	a0, 0x802024b6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80202430: 83 45 8c 03  	lbu	a1, 56(s8)
80202434: 0d 46        	li	a2, 3
80202436: 05 45        	li	a0, 1
80202438: 63 83 c5 00  	beq	a1, a2, 0x8020243e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
8020243c: 2e 85        	mv	a0, a1
8020243e: 93 75 35 00  	andi	a1, a0, 3
80202442: 33 05 9d 41  	sub	a0, s10, s9
80202446: e1 c1        	beqz	a1, 0x80202506 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80202448: 05 46        	li	a2, 1
8020244a: 63 91 c5 0c  	bne	a1, a2, 0x8020250c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
8020244e: 01 4d        	li	s10, 0
80202450: d9 a0        	j	0x80202516 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80202452: 03 34 0c 00  	ld	s0, 0(s8)
80202456: 83 34 8c 00  	ld	s1, 8(s8)
8020245a: 22 85        	mv	a0, s0
8020245c: a6 85        	mv	a1, s1
8020245e: 56 86        	mv	a2, s5
80202460: d2 86        	mv	a3, s4
80202462: 5a 87        	mv	a4, s6
80202464: 97 00 00 00  	auipc	ra, 0
80202468: e7 80 00 14  	jalr	320(ra)
8020246c: 85 4b        	li	s7, 1
8020246e: 0d c1        	beqz	a0, 0x80202490 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80202470: 5e 85        	mv	a0, s7
80202472: a6 70        	ld	ra, 104(sp)
80202474: 06 74        	ld	s0, 96(sp)
80202476: e6 64        	ld	s1, 88(sp)
80202478: 46 69        	ld	s2, 80(sp)
8020247a: a6 69        	ld	s3, 72(sp)
8020247c: 06 6a        	ld	s4, 64(sp)
8020247e: e2 7a        	ld	s5, 56(sp)
80202480: 42 7b        	ld	s6, 48(sp)
80202482: a2 7b        	ld	s7, 40(sp)
80202484: 02 7c        	ld	s8, 32(sp)
80202486: e2 6c        	ld	s9, 24(sp)
80202488: 42 6d        	ld	s10, 16(sp)
8020248a: a2 6d        	ld	s11, 8(sp)
8020248c: 65 61        	addi	sp, sp, 112
8020248e: 82 80        	ret
80202490: 9c 6c        	ld	a5, 24(s1)
80202492: 22 85        	mv	a0, s0
80202494: ca 85        	mv	a1, s2
80202496: 4e 86        	mv	a2, s3
80202498: a6 70        	ld	ra, 104(sp)
8020249a: 06 74        	ld	s0, 96(sp)
8020249c: e6 64        	ld	s1, 88(sp)
8020249e: 46 69        	ld	s2, 80(sp)
802024a0: a6 69        	ld	s3, 72(sp)
802024a2: 06 6a        	ld	s4, 64(sp)
802024a4: e2 7a        	ld	s5, 56(sp)
802024a6: 42 7b        	ld	s6, 48(sp)
802024a8: a2 7b        	ld	s7, 40(sp)
802024aa: 02 7c        	ld	s8, 32(sp)
802024ac: e2 6c        	ld	s9, 24(sp)
802024ae: 42 6d        	ld	s10, 16(sp)
802024b0: a2 6d        	ld	s11, 8(sp)
802024b2: 65 61        	addi	sp, sp, 112
802024b4: 82 87        	jr	a5
802024b6: 03 24 4c 03  	lw	s0, 52(s8)
802024ba: 13 05 00 03  	li	a0, 48
802024be: 83 45 8c 03  	lbu	a1, 56(s8)
802024c2: 2e e0        	sd	a1, 0(sp)
802024c4: 83 3d 0c 00  	ld	s11, 0(s8)
802024c8: 83 34 8c 00  	ld	s1, 8(s8)
802024cc: 23 2a ac 02  	sw	a0, 52(s8)
802024d0: 85 4b        	li	s7, 1
802024d2: 23 0c 7c 03  	sb	s7, 56(s8)
802024d6: 6e 85        	mv	a0, s11
802024d8: a6 85        	mv	a1, s1
802024da: 56 86        	mv	a2, s5
802024dc: d2 86        	mv	a3, s4
802024de: 5a 87        	mv	a4, s6
802024e0: 97 00 00 00  	auipc	ra, 0
802024e4: e7 80 40 0c  	jalr	196(ra)
802024e8: 41 f5        	bnez	a0, 0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802024ea: 22 8a        	mv	s4, s0
802024ec: 33 05 9d 41  	sub	a0, s10, s9
802024f0: 13 04 15 00  	addi	s0, a0, 1
802024f4: 7d 14        	addi	s0, s0, -1
802024f6: 49 c4        	beqz	s0, 0x80202580 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
802024f8: 90 70        	ld	a2, 32(s1)
802024fa: 93 05 00 03  	li	a1, 48
802024fe: 6e 85        	mv	a0, s11
80202500: 02 96        	jalr	a2
80202502: 6d d9        	beqz	a0, 0x802024f4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80202504: b5 b7        	j	0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202506: 2a 8d        	mv	s10, a0
80202508: 2e 85        	mv	a0, a1
8020250a: 31 a0        	j	0x80202516 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
8020250c: 93 05 15 00  	addi	a1, a0, 1
80202510: 05 81        	srli	a0, a0, 1
80202512: 13 dd 15 00  	srli	s10, a1, 1
80202516: 83 3c 0c 00  	ld	s9, 0(s8)
8020251a: 83 3d 8c 00  	ld	s11, 8(s8)
8020251e: 03 24 4c 03  	lw	s0, 52(s8)
80202522: 93 04 15 00  	addi	s1, a0, 1
80202526: fd 14        	addi	s1, s1, -1
80202528: 89 c8        	beqz	s1, 0x8020253a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
8020252a: 03 b6 0d 02  	ld	a2, 32(s11)
8020252e: 66 85        	mv	a0, s9
80202530: a2 85        	mv	a1, s0
80202532: 02 96        	jalr	a2
80202534: 6d d9        	beqz	a0, 0x80202526 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80202536: 85 4b        	li	s7, 1
80202538: 25 bf        	j	0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020253a: 37 05 11 00  	lui	a0, 272
8020253e: 85 4b        	li	s7, 1
80202540: e3 08 a4 f2  	beq	s0, a0, 0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202544: 66 85        	mv	a0, s9
80202546: ee 85        	mv	a1, s11
80202548: 56 86        	mv	a2, s5
8020254a: d2 86        	mv	a3, s4
8020254c: 5a 87        	mv	a4, s6
8020254e: 97 00 00 00  	auipc	ra, 0
80202552: e7 80 60 05  	jalr	86(ra)
80202556: 09 fd        	bnez	a0, 0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202558: 83 b6 8d 01  	ld	a3, 24(s11)
8020255c: 66 85        	mv	a0, s9
8020255e: ca 85        	mv	a1, s2
80202560: 4e 86        	mv	a2, s3
80202562: 82 96        	jalr	a3
80202564: 11 f5        	bnez	a0, 0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202566: 81 44        	li	s1, 0
80202568: 63 0a 9d 02  	beq	s10, s1, 0x8020259c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
8020256c: 03 b6 0d 02  	ld	a2, 32(s11)
80202570: 85 04        	addi	s1, s1, 1
80202572: 66 85        	mv	a0, s9
80202574: a2 85        	mv	a1, s0
80202576: 02 96        	jalr	a2
80202578: 65 d9        	beqz	a0, 0x80202568 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
8020257a: 13 85 f4 ff  	addi	a0, s1, -1
8020257e: 05 a0        	j	0x8020259e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80202580: 94 6c        	ld	a3, 24(s1)
80202582: 6e 85        	mv	a0, s11
80202584: ca 85        	mv	a1, s2
80202586: 4e 86        	mv	a2, s3
80202588: 82 96        	jalr	a3
8020258a: e3 13 05 ee  	bnez	a0, 0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020258e: 81 4b        	li	s7, 0
80202590: 23 2a 4c 03  	sw	s4, 52(s8)
80202594: 02 65        	ld	a0, 0(sp)
80202596: 23 0c ac 02  	sb	a0, 56(s8)
8020259a: d9 bd        	j	0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020259c: 6a 85        	mv	a0, s10
8020259e: b3 3b a5 01  	sltu	s7, a0, s10
802025a2: f9 b5        	j	0x80202470 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

00000000802025a4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
802025a4: 79 71        	addi	sp, sp, -48
802025a6: 06 f4        	sd	ra, 40(sp)
802025a8: 22 f0        	sd	s0, 32(sp)
802025aa: 26 ec        	sd	s1, 24(sp)
802025ac: 4a e8        	sd	s2, 16(sp)
802025ae: 4e e4        	sd	s3, 8(sp)
802025b0: 9b 07 06 00  	sext.w	a5, a2
802025b4: 37 08 11 00  	lui	a6, 272
802025b8: 3a 89        	mv	s2, a4
802025ba: b6 84        	mv	s1, a3
802025bc: 2e 84        	mv	s0, a1
802025be: aa 89        	mv	s3, a0
802025c0: 63 89 07 01  	beq	a5, a6, 0x802025d2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
802025c4: 14 70        	ld	a3, 32(s0)
802025c6: 4e 85        	mv	a0, s3
802025c8: b2 85        	mv	a1, a2
802025ca: 82 96        	jalr	a3
802025cc: aa 85        	mv	a1, a0
802025ce: 05 45        	li	a0, 1
802025d0: 91 ed        	bnez	a1, 0x802025ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
802025d2: 81 cc        	beqz	s1, 0x802025ea <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
802025d4: 1c 6c        	ld	a5, 24(s0)
802025d6: 4e 85        	mv	a0, s3
802025d8: a6 85        	mv	a1, s1
802025da: 4a 86        	mv	a2, s2
802025dc: a2 70        	ld	ra, 40(sp)
802025de: 02 74        	ld	s0, 32(sp)
802025e0: e2 64        	ld	s1, 24(sp)
802025e2: 42 69        	ld	s2, 16(sp)
802025e4: a2 69        	ld	s3, 8(sp)
802025e6: 45 61        	addi	sp, sp, 48
802025e8: 82 87        	jr	a5
802025ea: 01 45        	li	a0, 0
802025ec: a2 70        	ld	ra, 40(sp)
802025ee: 02 74        	ld	s0, 32(sp)
802025f0: e2 64        	ld	s1, 24(sp)
802025f2: 42 69        	ld	s2, 16(sp)
802025f4: a2 69        	ld	s3, 8(sp)
802025f6: 45 61        	addi	sp, sp, 48
802025f8: 82 80        	ret

00000000802025fa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
802025fa: 5d 71        	addi	sp, sp, -80
802025fc: 86 e4        	sd	ra, 72(sp)
802025fe: a2 e0        	sd	s0, 64(sp)
80202600: 26 fc        	sd	s1, 56(sp)
80202602: 4a f8        	sd	s2, 48(sp)
80202604: 4e f4        	sd	s3, 40(sp)
80202606: 52 f0        	sd	s4, 32(sp)
80202608: 56 ec        	sd	s5, 24(sp)
8020260a: 5a e8        	sd	s6, 16(sp)
8020260c: 5e e4        	sd	s7, 8(sp)
8020260e: 2a 8a        	mv	s4, a0
80202610: 83 32 05 01  	ld	t0, 16(a0)
80202614: 08 71        	ld	a0, 32(a0)
80202616: 93 86 f2 ff  	addi	a3, t0, -1
8020261a: b3 36 d0 00  	snez	a3, a3
8020261e: 13 07 f5 ff  	addi	a4, a0, -1
80202622: 33 37 e0 00  	snez	a4, a4
80202626: f9 8e        	and	a3, a3, a4
80202628: b2 89        	mv	s3, a2
8020262a: 2e 89        	mv	s2, a1
8020262c: 63 9d 06 16  	bnez	a3, 0x802027a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202630: 85 45        	li	a1, 1
80202632: 63 18 b5 10  	bne	a0, a1, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202636: 03 35 8a 02  	ld	a0, 40(s4)
8020263a: 81 45        	li	a1, 0
8020263c: b3 06 39 01  	add	a3, s2, s3
80202640: 13 07 15 00  	addi	a4, a0, 1
80202644: 37 03 11 00  	lui	t1, 272
80202648: 93 08 f0 0d  	li	a7, 223
8020264c: 13 08 00 0f  	li	a6, 240
80202650: 4a 86        	mv	a2, s2
80202652: 01 a8        	j	0x80202662 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80202654: 13 05 16 00  	addi	a0, a2, 1
80202658: 91 8d        	sub	a1, a1, a2
8020265a: aa 95        	add	a1, a1, a0
8020265c: 2a 86        	mv	a2, a0
8020265e: 63 02 64 0e  	beq	s0, t1, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202662: 7d 17        	addi	a4, a4, -1
80202664: 25 c7        	beqz	a4, 0x802026cc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80202666: 63 0e d6 0c  	beq	a2, a3, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020266a: 03 05 06 00  	lb	a0, 0(a2)
8020266e: 13 74 f5 0f  	andi	s0, a0, 255
80202672: e3 51 05 fe  	bgez	a0, 0x80202654 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80202676: 03 45 16 00  	lbu	a0, 1(a2)
8020267a: 93 77 f4 01  	andi	a5, s0, 31
8020267e: 93 74 f5 03  	andi	s1, a0, 63
80202682: 63 f9 88 02  	bgeu	a7, s0, 0x802026b4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80202686: 03 45 26 00  	lbu	a0, 2(a2)
8020268a: 9a 04        	slli	s1, s1, 6
8020268c: 13 75 f5 03  	andi	a0, a0, 63
80202690: c9 8c        	or	s1, s1, a0
80202692: 63 67 04 03  	bltu	s0, a6, 0x802026c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80202696: 03 45 36 00  	lbu	a0, 3(a2)
8020269a: f6 17        	slli	a5, a5, 61
8020269c: ad 93        	srli	a5, a5, 43
8020269e: 9a 04        	slli	s1, s1, 6
802026a0: 13 75 f5 03  	andi	a0, a0, 63
802026a4: 45 8d        	or	a0, a0, s1
802026a6: 33 64 f5 00  	or	s0, a0, a5
802026aa: 63 0c 64 08  	beq	s0, t1, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802026ae: 13 05 46 00  	addi	a0, a2, 4
802026b2: 5d b7        	j	0x80202658 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
802026b4: 13 05 26 00  	addi	a0, a2, 2
802026b8: 9a 07        	slli	a5, a5, 6
802026ba: 33 e4 97 00  	or	s0, a5, s1
802026be: 69 bf        	j	0x80202658 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
802026c0: 13 05 36 00  	addi	a0, a2, 3
802026c4: b2 07        	slli	a5, a5, 12
802026c6: 33 e4 f4 00  	or	s0, s1, a5
802026ca: 79 b7        	j	0x80202658 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
802026cc: 63 0b d6 06  	beq	a2, a3, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802026d0: 03 05 06 00  	lb	a0, 0(a2)
802026d4: 63 53 05 04  	bgez	a0, 0x8020271a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802026d8: 13 75 f5 0f  	andi	a0, a0, 255
802026dc: 93 06 00 0e  	li	a3, 224
802026e0: 63 6d d5 02  	bltu	a0, a3, 0x8020271a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802026e4: 93 06 00 0f  	li	a3, 240
802026e8: 63 69 d5 02  	bltu	a0, a3, 0x8020271a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
802026ec: 83 46 16 00  	lbu	a3, 1(a2)
802026f0: 03 47 26 00  	lbu	a4, 2(a2)
802026f4: 93 f6 f6 03  	andi	a3, a3, 63
802026f8: 13 77 f7 03  	andi	a4, a4, 63
802026fc: 03 46 36 00  	lbu	a2, 3(a2)
80202700: 76 15        	slli	a0, a0, 61
80202702: 2d 91        	srli	a0, a0, 43
80202704: b2 06        	slli	a3, a3, 12
80202706: 1a 07        	slli	a4, a4, 6
80202708: d9 8e        	or	a3, a3, a4
8020270a: 13 76 f6 03  	andi	a2, a2, 63
8020270e: 55 8e        	or	a2, a2, a3
80202710: 51 8d        	or	a0, a0, a2
80202712: 37 06 11 00  	lui	a2, 272
80202716: 63 06 c5 02  	beq	a0, a2, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020271a: 85 c1        	beqz	a1, 0x8020273a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
8020271c: 63 fd 35 01  	bgeu	a1, s3, 0x80202736 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80202720: 33 05 b9 00  	add	a0, s2, a1
80202724: 03 05 05 00  	lb	a0, 0(a0)
80202728: 13 06 00 fc  	li	a2, -64
8020272c: 63 57 c5 00  	bge	a0, a2, 0x8020273a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80202730: 01 45        	li	a0, 0
80202732: 11 e5        	bnez	a0, 0x8020273e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80202734: 39 a0        	j	0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202736: e3 9d 35 ff  	bne	a1, s3, 0x80202730 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
8020273a: 4a 85        	mv	a0, s2
8020273c: 19 c1        	beqz	a0, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020273e: ae 89        	mv	s3, a1
80202740: 2a 89        	mv	s2, a0
80202742: 63 82 02 06  	beqz	t0, 0x802027a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202746: 03 34 8a 01  	ld	s0, 24(s4)
8020274a: 13 05 00 02  	li	a0, 32
8020274e: 63 f4 a9 04  	bgeu	s3, a0, 0x80202796 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80202752: 01 45        	li	a0, 0
80202754: 63 8e 09 00  	beqz	s3, 0x80202770 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80202758: ce 85        	mv	a1, s3
8020275a: 4a 86        	mv	a2, s2
8020275c: 83 06 06 00  	lb	a3, 0(a2)
80202760: 05 06        	addi	a2, a2, 1
80202762: 93 a6 06 fc  	slti	a3, a3, -64
80202766: 93 c6 16 00  	xori	a3, a3, 1
8020276a: fd 15        	addi	a1, a1, -1
8020276c: 36 95        	add	a0, a0, a3
8020276e: fd f5        	bnez	a1, 0x8020275c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80202770: 63 7b 85 02  	bgeu	a0, s0, 0x802027a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202774: 83 45 8a 03  	lbu	a1, 56(s4)
80202778: 8d 46        	li	a3, 3
8020277a: 01 46        	li	a2, 0
8020277c: 63 83 d5 00  	beq	a1, a3, 0x80202782 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80202780: 2e 86        	mv	a2, a1
80202782: 93 75 36 00  	andi	a1, a2, 3
80202786: 33 05 a4 40  	sub	a0, s0, a0
8020278a: a1 c1        	beqz	a1, 0x802027ca <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
8020278c: 05 46        	li	a2, 1
8020278e: 63 91 c5 04  	bne	a1, a2, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80202792: 81 4a        	li	s5, 0
80202794: 99 a0        	j	0x802027da <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80202796: 4a 85        	mv	a0, s2
80202798: ce 85        	mv	a1, s3
8020279a: 97 00 00 00  	auipc	ra, 0
8020279e: e7 80 40 0c  	jalr	196(ra)
802027a2: e3 69 85 fc  	bltu	a0, s0, 0x80202774 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
802027a6: 83 35 8a 00  	ld	a1, 8(s4)
802027aa: 03 35 0a 00  	ld	a0, 0(s4)
802027ae: 9c 6d        	ld	a5, 24(a1)
802027b0: ca 85        	mv	a1, s2
802027b2: 4e 86        	mv	a2, s3
802027b4: a6 60        	ld	ra, 72(sp)
802027b6: 06 64        	ld	s0, 64(sp)
802027b8: e2 74        	ld	s1, 56(sp)
802027ba: 42 79        	ld	s2, 48(sp)
802027bc: a2 79        	ld	s3, 40(sp)
802027be: 02 7a        	ld	s4, 32(sp)
802027c0: e2 6a        	ld	s5, 24(sp)
802027c2: 42 6b        	ld	s6, 16(sp)
802027c4: a2 6b        	ld	s7, 8(sp)
802027c6: 61 61        	addi	sp, sp, 80
802027c8: 82 87        	jr	a5
802027ca: aa 8a        	mv	s5, a0
802027cc: 2e 85        	mv	a0, a1
802027ce: 31 a0        	j	0x802027da <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
802027d0: 93 05 15 00  	addi	a1, a0, 1
802027d4: 05 81        	srli	a0, a0, 1
802027d6: 93 da 15 00  	srli	s5, a1, 1
802027da: 03 3b 0a 00  	ld	s6, 0(s4)
802027de: 83 3b 8a 00  	ld	s7, 8(s4)
802027e2: 83 24 4a 03  	lw	s1, 52(s4)
802027e6: 13 04 15 00  	addi	s0, a0, 1
802027ea: 7d 14        	addi	s0, s0, -1
802027ec: 09 c8        	beqz	s0, 0x802027fe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
802027ee: 03 b6 0b 02  	ld	a2, 32(s7)
802027f2: 5a 85        	mv	a0, s6
802027f4: a6 85        	mv	a1, s1
802027f6: 02 96        	jalr	a2
802027f8: 6d d9        	beqz	a0, 0x802027ea <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
802027fa: 05 4a        	li	s4, 1
802027fc: 2d a8        	j	0x80202836 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802027fe: 37 05 11 00  	lui	a0, 272
80202802: 05 4a        	li	s4, 1
80202804: 63 89 a4 02  	beq	s1, a0, 0x80202836 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202808: 83 b6 8b 01  	ld	a3, 24(s7)
8020280c: 5a 85        	mv	a0, s6
8020280e: ca 85        	mv	a1, s2
80202810: 4e 86        	mv	a2, s3
80202812: 82 96        	jalr	a3
80202814: 0d e1        	bnez	a0, 0x80202836 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202816: 01 44        	li	s0, 0
80202818: 63 8c 8a 00  	beq	s5, s0, 0x80202830 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
8020281c: 03 b6 0b 02  	ld	a2, 32(s7)
80202820: 05 04        	addi	s0, s0, 1
80202822: 5a 85        	mv	a0, s6
80202824: a6 85        	mv	a1, s1
80202826: 02 96        	jalr	a2
80202828: 65 d9        	beqz	a0, 0x80202818 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
8020282a: 13 05 f4 ff  	addi	a0, s0, -1
8020282e: 11 a0        	j	0x80202832 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
80202830: 56 85        	mv	a0, s5
80202832: 33 3a 55 01  	sltu	s4, a0, s5
80202836: 52 85        	mv	a0, s4
80202838: a6 60        	ld	ra, 72(sp)
8020283a: 06 64        	ld	s0, 64(sp)
8020283c: e2 74        	ld	s1, 56(sp)
8020283e: 42 79        	ld	s2, 48(sp)
80202840: a2 79        	ld	s3, 40(sp)
80202842: 02 7a        	ld	s4, 32(sp)
80202844: e2 6a        	ld	s5, 24(sp)
80202846: 42 6b        	ld	s6, 16(sp)
80202848: a2 6b        	ld	s7, 8(sp)
8020284a: 61 61        	addi	sp, sp, 80
8020284c: 82 80        	ret

000000008020284e <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
8020284e: ae 86        	mv	a3, a1
80202850: aa 85        	mv	a1, a0
80202852: 32 85        	mv	a0, a2
80202854: 36 86        	mv	a2, a3
80202856: 17 03 00 00  	auipc	t1, 0
8020285a: 67 00 43 da  	jr	-604(t1)

000000008020285e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
8020285e: 2a 86        	mv	a2, a0
80202860: 1d 05        	addi	a0, a0, 7
80202862: 13 77 85 ff  	andi	a4, a0, -8
80202866: b3 08 c7 40  	sub	a7, a4, a2
8020286a: 63 ec 15 01  	bltu	a1, a7, 0x80202882 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
8020286e: 33 88 15 41  	sub	a6, a1, a7
80202872: 13 35 88 00  	sltiu	a0, a6, 8
80202876: 93 b7 98 00  	sltiu	a5, a7, 9
8020287a: 93 c7 17 00  	xori	a5, a5, 1
8020287e: 5d 8d        	or	a0, a0, a5
80202880: 11 cd        	beqz	a0, 0x8020289c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80202882: 01 45        	li	a0, 0
80202884: 99 c9        	beqz	a1, 0x8020289a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80202886: 83 06 06 00  	lb	a3, 0(a2)
8020288a: 05 06        	addi	a2, a2, 1
8020288c: 93 a6 06 fc  	slti	a3, a3, -64
80202890: 93 c6 16 00  	xori	a3, a3, 1
80202894: fd 15        	addi	a1, a1, -1
80202896: 36 95        	add	a0, a0, a3
80202898: fd f5        	bnez	a1, 0x80202886 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
8020289a: 82 80        	ret
8020289c: 93 75 78 00  	andi	a1, a6, 7
802028a0: 81 47        	li	a5, 0
802028a2: 63 0f c7 00  	beq	a4, a2, 0x802028c0 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
802028a6: 33 07 e6 40  	sub	a4, a2, a4
802028aa: 32 85        	mv	a0, a2
802028ac: 83 06 05 00  	lb	a3, 0(a0)
802028b0: 05 05        	addi	a0, a0, 1
802028b2: 93 a6 06 fc  	slti	a3, a3, -64
802028b6: 93 c6 16 00  	xori	a3, a3, 1
802028ba: 05 07        	addi	a4, a4, 1
802028bc: b6 97        	add	a5, a5, a3
802028be: 7d f7        	bnez	a4, 0x802028ac <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
802028c0: b3 02 16 01  	add	t0, a2, a7
802028c4: 01 46        	li	a2, 0
802028c6: 99 cd        	beqz	a1, 0x802028e4 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
802028c8: 13 75 88 ff  	andi	a0, a6, -8
802028cc: b3 86 a2 00  	add	a3, t0, a0
802028d0: 03 85 06 00  	lb	a0, 0(a3)
802028d4: 85 06        	addi	a3, a3, 1
802028d6: 13 25 05 fc  	slti	a0, a0, -64
802028da: 13 45 15 00  	xori	a0, a0, 1
802028de: fd 15        	addi	a1, a1, -1
802028e0: 2a 96        	add	a2, a2, a0
802028e2: fd f5        	bnez	a1, 0x802028d0 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
802028e4: 13 57 38 00  	srli	a4, a6, 3

00000000802028e8 <.LBB292_27>:
802028e8: 17 25 00 00  	auipc	a0, 2
802028ec: 13 05 85 8d  	addi	a0, a0, -1832
802028f0: 03 3f 05 00  	ld	t5, 0(a0)

00000000802028f4 <.LBB292_28>:
802028f4: 17 25 00 00  	auipc	a0, 2
802028f8: 13 05 45 8d  	addi	a0, a0, -1836
802028fc: 83 38 05 00  	ld	a7, 0(a0)
80202900: 37 15 00 10  	lui	a0, 65537
80202904: 12 05        	slli	a0, a0, 4
80202906: 05 05        	addi	a0, a0, 1
80202908: 42 05        	slli	a0, a0, 16
8020290a: 13 08 15 00  	addi	a6, a0, 1
8020290e: 33 05 f6 00  	add	a0, a2, a5
80202912: 25 a0        	j	0x8020293a <.LBB292_28+0x46>
80202914: 13 16 3e 00  	slli	a2, t3, 3
80202918: b3 02 c3 00  	add	t0, t1, a2
8020291c: 33 87 c3 41  	sub	a4, t2, t3
80202920: 13 76 3e 00  	andi	a2, t3, 3
80202924: b3 f6 15 01  	and	a3, a1, a7
80202928: a1 81        	srli	a1, a1, 8
8020292a: b3 f5 15 01  	and	a1, a1, a7
8020292e: b6 95        	add	a1, a1, a3
80202930: b3 85 05 03  	mul	a1, a1, a6
80202934: c1 91        	srli	a1, a1, 48
80202936: 2e 95        	add	a0, a0, a1
80202938: 41 e2        	bnez	a2, 0x802029b8 <.LBB292_28+0xc4>
8020293a: 25 d3        	beqz	a4, 0x8020289a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
8020293c: ba 83        	mv	t2, a4
8020293e: 16 83        	mv	t1, t0
80202940: 93 05 00 0c  	li	a1, 192
80202944: 3a 8e        	mv	t3, a4
80202946: 63 64 b7 00  	bltu	a4, a1, 0x8020294e <.LBB292_28+0x5a>
8020294a: 13 0e 00 0c  	li	t3, 192
8020294e: 93 75 ce 0f  	andi	a1, t3, 252
80202952: 13 96 35 00  	slli	a2, a1, 3
80202956: b3 0e c3 00  	add	t4, t1, a2
8020295a: cd dd        	beqz	a1, 0x80202914 <.LBB292_28+0x20>
8020295c: 81 45        	li	a1, 0
8020295e: 1a 86        	mv	a2, t1
80202960: 55 da        	beqz	a2, 0x80202914 <.LBB292_28+0x20>
80202962: 18 62        	ld	a4, 0(a2)
80202964: 93 47 f7 ff  	not	a5, a4
80202968: 9d 83        	srli	a5, a5, 7
8020296a: 19 83        	srli	a4, a4, 6
8020296c: 14 66        	ld	a3, 8(a2)
8020296e: 5d 8f        	or	a4, a4, a5
80202970: 33 77 e7 01  	and	a4, a4, t5
80202974: ba 95        	add	a1, a1, a4
80202976: 13 c7 f6 ff  	not	a4, a3
8020297a: 1d 83        	srli	a4, a4, 7
8020297c: 99 82        	srli	a3, a3, 6
8020297e: 1c 6a        	ld	a5, 16(a2)
80202980: d9 8e        	or	a3, a3, a4
80202982: b3 f6 e6 01  	and	a3, a3, t5
80202986: b6 95        	add	a1, a1, a3
80202988: 93 c6 f7 ff  	not	a3, a5
8020298c: 9d 82        	srli	a3, a3, 7
8020298e: 13 d7 67 00  	srli	a4, a5, 6
80202992: 1c 6e        	ld	a5, 24(a2)
80202994: d9 8e        	or	a3, a3, a4
80202996: b3 f6 e6 01  	and	a3, a3, t5
8020299a: b6 95        	add	a1, a1, a3
8020299c: 93 c6 f7 ff  	not	a3, a5
802029a0: 9d 82        	srli	a3, a3, 7
802029a2: 13 d7 67 00  	srli	a4, a5, 6
802029a6: d9 8e        	or	a3, a3, a4
802029a8: b3 f6 e6 01  	and	a3, a3, t5
802029ac: 13 06 06 02  	addi	a2, a2, 32
802029b0: b6 95        	add	a1, a1, a3
802029b2: e3 17 d6 fb  	bne	a2, t4, 0x80202960 <.LBB292_28+0x6c>
802029b6: b9 bf        	j	0x80202914 <.LBB292_28+0x20>
802029b8: 63 0a 03 02  	beqz	t1, 0x802029ec <.LBB292_28+0xf8>
802029bc: 93 05 00 0c  	li	a1, 192
802029c0: 63 e4 b3 00  	bltu	t2, a1, 0x802029c8 <.LBB292_28+0xd4>
802029c4: 93 03 00 0c  	li	t2, 192
802029c8: 81 45        	li	a1, 0
802029ca: 13 f6 33 00  	andi	a2, t2, 3
802029ce: 0e 06        	slli	a2, a2, 3
802029d0: 83 b6 0e 00  	ld	a3, 0(t4)
802029d4: a1 0e        	addi	t4, t4, 8
802029d6: 13 c7 f6 ff  	not	a4, a3
802029da: 1d 83        	srli	a4, a4, 7
802029dc: 99 82        	srli	a3, a3, 6
802029de: d9 8e        	or	a3, a3, a4
802029e0: b3 f6 e6 01  	and	a3, a3, t5
802029e4: 61 16        	addi	a2, a2, -8
802029e6: b6 95        	add	a1, a1, a3
802029e8: 65 f6        	bnez	a2, 0x802029d0 <.LBB292_28+0xdc>
802029ea: 11 a0        	j	0x802029ee <.LBB292_28+0xfa>
802029ec: 81 45        	li	a1, 0
802029ee: 33 f6 15 01  	and	a2, a1, a7
802029f2: a1 81        	srli	a1, a1, 8
802029f4: b3 f5 15 01  	and	a1, a1, a7
802029f8: b2 95        	add	a1, a1, a2
802029fa: b3 85 05 03  	mul	a1, a1, a6
802029fe: c1 91        	srli	a1, a1, 48
80202a00: 2e 95        	add	a0, a0, a1
80202a02: 82 80        	ret

0000000080202a04 <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80202a04: 39 71        	addi	sp, sp, -64
80202a06: 06 fc        	sd	ra, 56(sp)
80202a08: 22 f8        	sd	s0, 48(sp)
80202a0a: 26 f4        	sd	s1, 40(sp)
80202a0c: 32 88        	mv	a6, a2
80202a0e: 93 56 45 00  	srli	a3, a0, 4
80202a12: 13 07 70 02  	li	a4, 39
80202a16: 93 07 10 27  	li	a5, 625

0000000080202a1a <.LBB580_10>:
80202a1a: 97 1e 00 00  	auipc	t4, 1
80202a1e: 93 8e ee e4  	addi	t4, t4, -434
80202a22: 63 f3 f6 02  	bgeu	a3, a5, 0x80202a48 <.LBB580_10+0x2e>
80202a26: 93 06 30 06  	li	a3, 99
80202a2a: 63 e9 a6 0a  	bltu	a3, a0, 0x80202adc <.LBB580_11+0x92>
80202a2e: 29 46        	li	a2, 10
80202a30: 63 77 c5 0e  	bgeu	a0, a2, 0x80202b1e <.LBB580_11+0xd4>
80202a34: 93 06 f7 ff  	addi	a3, a4, -1
80202a38: 13 06 11 00  	addi	a2, sp, 1
80202a3c: 36 96        	add	a2, a2, a3
80202a3e: 1b 05 05 03  	addiw	a0, a0, 48
80202a42: 23 00 a6 00  	sb	a0, 0(a2)
80202a46: dd a8        	j	0x80202b3c <.LBB580_11+0xf2>
80202a48: 01 47        	li	a4, 0

0000000080202a4a <.LBB580_11>:
80202a4a: 97 16 00 00  	auipc	a3, 1
80202a4e: 93 86 66 7e  	addi	a3, a3, 2022
80202a52: 83 b8 06 00  	ld	a7, 0(a3)
80202a56: 89 66        	lui	a3, 2
80202a58: 9b 83 06 71  	addiw	t2, a3, 1808
80202a5c: 85 66        	lui	a3, 1
80202a5e: 1b 8e b6 47  	addiw	t3, a3, 1147
80202a62: 93 02 40 06  	li	t0, 100
80202a66: 13 03 11 00  	addi	t1, sp, 1
80202a6a: b7 e6 f5 05  	lui	a3, 24414
80202a6e: 1b 8f f6 0f  	addiw	t5, a3, 255
80202a72: aa 87        	mv	a5, a0
80202a74: 33 35 15 03  	mulhu	a0, a0, a7
80202a78: 2d 81        	srli	a0, a0, 11
80202a7a: 3b 06 75 02  	mulw	a2, a0, t2
80202a7e: 3b 86 c7 40  	subw	a2, a5, a2
80202a82: 93 16 06 03  	slli	a3, a2, 48
80202a86: c9 92        	srli	a3, a3, 50
80202a88: b3 86 c6 03  	mul	a3, a3, t3
80202a8c: 93 df 16 01  	srli	t6, a3, 17
80202a90: c1 82        	srli	a3, a3, 16
80202a92: 13 f4 e6 7f  	andi	s0, a3, 2046
80202a96: bb 86 5f 02  	mulw	a3, t6, t0
80202a9a: 15 9e        	subw	a2, a2, a3
80202a9c: 46 16        	slli	a2, a2, 49
80202a9e: 41 92        	srli	a2, a2, 48
80202aa0: b3 86 8e 00  	add	a3, t4, s0
80202aa4: 33 04 e3 00  	add	s0, t1, a4
80202aa8: 83 cf 06 00  	lbu	t6, 0(a3)
80202aac: 83 86 16 00  	lb	a3, 1(a3)
80202ab0: 76 96        	add	a2, a2, t4
80202ab2: 83 04 16 00  	lb	s1, 1(a2)
80202ab6: 03 46 06 00  	lbu	a2, 0(a2)
80202aba: 23 02 d4 02  	sb	a3, 36(s0)
80202abe: a3 01 f4 03  	sb	t6, 35(s0)
80202ac2: 23 03 94 02  	sb	s1, 38(s0)
80202ac6: a3 02 c4 02  	sb	a2, 37(s0)
80202aca: 71 17        	addi	a4, a4, -4
80202acc: e3 63 ff fa  	bltu	t5, a5, 0x80202a72 <.LBB580_11+0x28>
80202ad0: 13 07 77 02  	addi	a4, a4, 39
80202ad4: 93 06 30 06  	li	a3, 99
80202ad8: e3 fb a6 f4  	bgeu	a3, a0, 0x80202a2e <.LBB580_10+0x14>
80202adc: 13 16 05 03  	slli	a2, a0, 48
80202ae0: 49 92        	srli	a2, a2, 50
80202ae2: 85 66        	lui	a3, 1
80202ae4: 9b 86 b6 47  	addiw	a3, a3, 1147
80202ae8: 33 06 d6 02  	mul	a2, a2, a3
80202aec: 45 82        	srli	a2, a2, 17
80202aee: 93 06 40 06  	li	a3, 100
80202af2: bb 06 d6 02  	mulw	a3, a2, a3
80202af6: 15 9d        	subw	a0, a0, a3
80202af8: 46 15        	slli	a0, a0, 49
80202afa: 41 91        	srli	a0, a0, 48
80202afc: 79 17        	addi	a4, a4, -2
80202afe: 76 95        	add	a0, a0, t4
80202b00: 83 06 15 00  	lb	a3, 1(a0)
80202b04: 03 45 05 00  	lbu	a0, 0(a0)
80202b08: 93 07 11 00  	addi	a5, sp, 1
80202b0c: ba 97        	add	a5, a5, a4
80202b0e: a3 80 d7 00  	sb	a3, 1(a5)
80202b12: 23 80 a7 00  	sb	a0, 0(a5)
80202b16: 32 85        	mv	a0, a2
80202b18: 29 46        	li	a2, 10
80202b1a: e3 6d c5 f0  	bltu	a0, a2, 0x80202a34 <.LBB580_10+0x1a>
80202b1e: 06 05        	slli	a0, a0, 1
80202b20: 93 06 e7 ff  	addi	a3, a4, -2
80202b24: 76 95        	add	a0, a0, t4
80202b26: 03 06 15 00  	lb	a2, 1(a0)
80202b2a: 03 45 05 00  	lbu	a0, 0(a0)
80202b2e: 13 07 11 00  	addi	a4, sp, 1
80202b32: 36 97        	add	a4, a4, a3
80202b34: a3 00 c7 00  	sb	a2, 1(a4)
80202b38: 23 00 a7 00  	sb	a0, 0(a4)
80202b3c: 13 05 11 00  	addi	a0, sp, 1
80202b40: 33 07 d5 00  	add	a4, a0, a3
80202b44: 13 05 70 02  	li	a0, 39
80202b48: b3 07 d5 40  	sub	a5, a0, a3

0000000080202b4c <.LBB580_12>:
80202b4c: 17 16 00 00  	auipc	a2, 1
80202b50: 13 06 46 c7  	addi	a2, a2, -908
80202b54: 42 85        	mv	a0, a6
80202b56: 81 46        	li	a3, 0
80202b58: 97 00 00 00  	auipc	ra, 0
80202b5c: e7 80 e0 82  	jalr	-2002(ra)
80202b60: e2 70        	ld	ra, 56(sp)
80202b62: 42 74        	ld	s0, 48(sp)
80202b64: a2 74        	ld	s1, 40(sp)
80202b66: 21 61        	addi	sp, sp, 64
80202b68: 82 80        	ret

0000000080202b6a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80202b6a: 03 65 05 00  	lwu	a0, 0(a0)
80202b6e: 2e 86        	mv	a2, a1
80202b70: 85 45        	li	a1, 1
80202b72: 17 03 00 00  	auipc	t1, 0
80202b76: 67 00 23 e9  	jr	-366(t1)

0000000080202b7a <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80202b7a: 08 61        	ld	a0, 0(a0)
80202b7c: 2e 86        	mv	a2, a1
80202b7e: 85 45        	li	a1, 1
80202b80: 17 03 00 00  	auipc	t1, 0
80202b84: 67 00 43 e8  	jr	-380(t1)

0000000080202b88 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
80202b88: 90 65        	ld	a2, 8(a1)
80202b8a: 88 61        	ld	a0, 0(a1)
80202b8c: 1c 6e        	ld	a5, 24(a2)

0000000080202b8e <.LBB612_1>:
80202b8e: 97 15 00 00  	auipc	a1, 1
80202b92: 93 85 25 da  	addi	a1, a1, -606
80202b96: 15 46        	li	a2, 5
80202b98: 82 87        	jr	a5

0000000080202b9a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80202b9a: 10 65        	ld	a2, 8(a0)
80202b9c: 08 61        	ld	a0, 0(a0)
80202b9e: 1c 6e        	ld	a5, 24(a2)
80202ba0: 82 87        	jr	a5

0000000080202ba2 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80202ba2: 14 61        	ld	a3, 0(a0)
80202ba4: 10 65        	ld	a2, 8(a0)
80202ba6: 2e 85        	mv	a0, a1
80202ba8: b6 85        	mv	a1, a3
80202baa: 17 03 00 00  	auipc	t1, 0
80202bae: 67 00 03 a5  	jr	-1456(t1)

0000000080202bb2 <memset>:
80202bb2: 17 03 00 00  	auipc	t1, 0
80202bb6: 67 00 83 00  	jr	8(t1)

0000000080202bba <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
80202bba: bd 46        	li	a3, 15
80202bbc: 63 fa c6 04  	bgeu	a3, a2, 0x80202c10 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80202bc0: bb 06 a0 40  	negw	a3, a0
80202bc4: 9d 8a        	andi	a3, a3, 7
80202bc6: 33 07 d5 00  	add	a4, a0, a3
80202bca: 99 c6        	beqz	a3, 0x80202bd8 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
80202bcc: aa 87        	mv	a5, a0
80202bce: 23 80 b7 00  	sb	a1, 0(a5)
80202bd2: 85 07        	addi	a5, a5, 1
80202bd4: e3 ed e7 fe  	bltu	a5, a4, 0x80202bce <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
80202bd8: b3 08 d6 40  	sub	a7, a2, a3
80202bdc: 93 f7 88 ff  	andi	a5, a7, -8
80202be0: b3 06 f7 00  	add	a3, a4, a5
80202be4: 63 52 f0 02  	blez	a5, 0x80202c08 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
80202be8: 13 98 85 03  	slli	a6, a1, 56
80202bec: b7 17 10 10  	lui	a5, 65793
80202bf0: 92 07        	slli	a5, a5, 4
80202bf2: 93 87 07 10  	addi	a5, a5, 256
80202bf6: b3 37 f8 02  	mulhu	a5, a6, a5
80202bfa: 13 96 07 02  	slli	a2, a5, 32
80202bfe: d1 8f        	or	a5, a5, a2
80202c00: 1c e3        	sd	a5, 0(a4)
80202c02: 21 07        	addi	a4, a4, 8
80202c04: e3 6e d7 fe  	bltu	a4, a3, 0x80202c00 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
80202c08: 13 f6 78 00  	andi	a2, a7, 7
80202c0c: 01 e6        	bnez	a2, 0x80202c14 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80202c0e: 09 a8        	j	0x80202c20 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202c10: aa 86        	mv	a3, a0
80202c12: 19 c6        	beqz	a2, 0x80202c20 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202c14: 36 96        	add	a2, a2, a3
80202c16: 23 80 b6 00  	sb	a1, 0(a3)
80202c1a: 85 06        	addi	a3, a3, 1
80202c1c: e3 ed c6 fe  	bltu	a3, a2, 0x80202c16 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80202c20: 82 80        	ret
