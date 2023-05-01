
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 51 01 00  	auipc	sp, 21
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 20 00 00  	auipc	ra, 2
8020000c: e7 80 20 03  	jalr	50(ra)
		...

0000000080201000 <trampoline>:
;     pub fn mappages(&mut self, va: Addr, size: Addr, mut pa: Addr, perm: usize) -> bool {
80201000: 35 71        	addi	sp, sp, -160
;         if size == 0 {
80201002: 06 ed        	sd	ra, 152(sp)
80201004: 22 e9        	sd	s0, 144(sp)
80201006: 26 e5        	sd	s1, 136(sp)
80201008: 4a e1        	sd	s2, 128(sp)
8020100a: ce fc        	sd	s3, 120(sp)
8020100c: d2 f8        	sd	s4, 112(sp)
8020100e: d6 f4        	sd	s5, 104(sp)
80201010: da f0        	sd	s6, 96(sp)
80201012: de ec        	sd	s7, 88(sp)
80201014: e2 e8        	sd	s8, 80(sp)
80201016: e6 e4        	sd	s9, 72(sp)
80201018: ea e0        	sd	s10, 64(sp)
8020101a: 6e fc        	sd	s11, 56(sp)
8020101c: 00 11        	addi	s0, sp, 160
8020101e: 63 04 06 18  	beqz	a2, 0x802011a6 <.LBB2_26>
80201022: 36 8a        	mv	s4, a3
80201024: fd 76        	lui	a3, 1048575
;     addr & !(PGSIZE - 1)
80201026: b3 fa d5 00  	and	s5, a1, a3
;         let last = pgrounddown(va + size - 1);
8020102a: 2e 96        	add	a2, a2, a1
8020102c: 7d 16        	addi	a2, a2, -1
;     addr & !(PGSIZE - 1)
8020102e: 33 7b d6 00  	and	s6, a2, a3
80201032: 05 46        	li	a2, 1
;         while a <= last {
80201034: 63 6d 5b 0d  	bltu	s6, s5, 0x8020110e <trampoline+0x10e>
80201038: 3a 89        	mv	s2, a4
8020103a: 93 db 26 00  	srli	s7, a3, 2
8020103e: 03 3c 05 00  	ld	s8, 0(a0)
;         while a <= last {
80201042: 93 dc c5 00  	srli	s9, a1, 12
80201046: 05 6d        	lui	s10, 1
80201048: 9b 0d 8d ff  	addiw	s11, s10, -8
;         if va >= MAXVA {
8020104c: 13 d5 6a 02  	srli	a0, s5, 38
80201050: 79 ed        	bnez	a0, 0x8020112e <.LBB2_20>
;             pte = &mut pagetable.data[px(level, va)];
80201052: 13 d5 ba 01  	srli	a0, s5, 27
80201056: 61 99        	andi	a0, a0, -8
80201058: b3 09 ac 00  	add	s3, s8, a0
;             if (*pte & PTE_V) != 0 {
8020105c: 03 b5 09 00  	ld	a0, 0(s3)
80201060: 93 75 15 00  	andi	a1, a0, 1
80201064: 95 e5        	bnez	a1, 0x80201090 <trampoline+0x90>
;                 let pa = kalloc();
80201066: 97 00 00 00  	auipc	ra, 0
8020106a: e7 80 20 70  	jalr	1794(ra)
;                 if pa == 0 {
8020106e: 59 cd        	beqz	a0, 0x8020110c <trampoline+0x10c>
80201070: aa 84        	mv	s1, a0
80201072: 05 66        	lui	a2, 1
80201074: 81 45        	li	a1, 0
80201076: 97 20 00 00  	auipc	ra, 2
8020107a: e7 80 a0 bc  	jalr	-1078(ra)
;     (pa >> 12) << 10
8020107e: 13 d5 24 00  	srli	a0, s1, 2
80201082: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
80201086: 13 65 15 00  	ori	a0, a0, 1
8020108a: 23 b0 a9 00  	sd	a0, 0(s3)
8020108e: 21 a0        	j	0x80201096 <trampoline+0x96>
;     (pte >> 10) << 12
80201090: 29 81        	srli	a0, a0, 10
80201092: 93 14 c5 00  	slli	s1, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
80201096: 13 d5 2a 01  	srli	a0, s5, 18
8020109a: 33 75 b5 01  	and	a0, a0, s11
8020109e: b3 89 a4 00  	add	s3, s1, a0
;             if (*pte & PTE_V) != 0 {
802010a2: 03 b5 09 00  	ld	a0, 0(s3)
802010a6: 93 75 15 00  	andi	a1, a0, 1
802010aa: 95 e5        	bnez	a1, 0x802010d6 <trampoline+0xd6>
;                 let pa = kalloc();
802010ac: 97 00 00 00  	auipc	ra, 0
802010b0: e7 80 c0 6b  	jalr	1724(ra)
;                 if pa == 0 {
802010b4: 21 cd        	beqz	a0, 0x8020110c <trampoline+0x10c>
802010b6: aa 84        	mv	s1, a0
802010b8: 05 66        	lui	a2, 1
802010ba: 81 45        	li	a1, 0
802010bc: 97 20 00 00  	auipc	ra, 2
802010c0: e7 80 40 b8  	jalr	-1148(ra)
;     (pa >> 12) << 10
802010c4: 13 d5 24 00  	srli	a0, s1, 2
802010c8: 33 75 75 01  	and	a0, a0, s7
;                 *pte = pa2pte(pa) | PTE_V;
802010cc: 13 65 15 00  	ori	a0, a0, 1
802010d0: 23 b0 a9 00  	sd	a0, 0(s3)
802010d4: 21 a0        	j	0x802010dc <trampoline+0xdc>
;     (pte >> 10) << 12
802010d6: 29 81        	srli	a0, a0, 10
802010d8: 93 14 c5 00  	slli	s1, a0, 12
;     (va >> pxshift(level)) & PXMASK
802010dc: 13 f5 fc 1f  	andi	a0, s9, 511
;         &mut pagetable.data[px(0, va)]
802010e0: 0e 05        	slli	a0, a0, 3
802010e2: 26 95        	add	a0, a0, s1
;             if unsafe { *pte & PTE_V } != 0 {
802010e4: 83 45 05 00  	lbu	a1, 0(a0)
802010e8: 85 89        	andi	a1, a1, 1
802010ea: c1 e1        	bnez	a1, 0x8020116a <.LBB2_23>
;     (pa >> 12) << 10
802010ec: 93 55 2a 00  	srli	a1, s4, 2
802010f0: b3 f5 75 01  	and	a1, a1, s7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802010f4: b3 e5 25 01  	or	a1, a1, s2
802010f8: 93 e5 15 00  	ori	a1, a1, 1
802010fc: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
802010fe: ea 9a        	add	s5, s5, s10
;             pa += PGSIZE;
80201100: 6a 9a        	add	s4, s4, s10
;         while a <= last {
80201102: 85 0c        	addi	s9, s9, 1
80201104: e3 74 5b f5  	bgeu	s6, s5, 0x8020104c <trampoline+0x4c>
80201108: 05 46        	li	a2, 1
8020110a: 11 a0        	j	0x8020110e <trampoline+0x10e>
8020110c: 01 46        	li	a2, 0
;     }
8020110e: 32 85        	mv	a0, a2
80201110: ea 60        	ld	ra, 152(sp)
80201112: 4a 64        	ld	s0, 144(sp)
80201114: aa 64        	ld	s1, 136(sp)
80201116: 0a 69        	ld	s2, 128(sp)
80201118: e6 79        	ld	s3, 120(sp)
8020111a: 46 7a        	ld	s4, 112(sp)
8020111c: a6 7a        	ld	s5, 104(sp)
8020111e: 06 7b        	ld	s6, 96(sp)
80201120: e6 6b        	ld	s7, 88(sp)
80201122: 46 6c        	ld	s8, 80(sp)
80201124: a6 6c        	ld	s9, 72(sp)
80201126: 06 6d        	ld	s10, 64(sp)
80201128: e2 7d        	ld	s11, 56(sp)
8020112a: 0d 61        	addi	sp, sp, 160
8020112c: 82 80        	ret

000000008020112e <.LBB2_20>:
8020112e: 17 25 00 00  	auipc	a0, 2
80201132: 13 05 25 fa  	addi	a0, a0, -94
80201136: 23 3c a4 f6  	sd	a0, -136(s0)
8020113a: 05 45        	li	a0, 1
8020113c: 23 30 a4 f8  	sd	a0, -128(s0)
80201140: 23 34 04 f6  	sd	zero, -152(s0)

0000000080201144 <.LBB2_21>:
80201144: 17 25 00 00  	auipc	a0, 2
80201148: 13 05 45 f8  	addi	a0, a0, -124
8020114c: 23 34 a4 f8  	sd	a0, -120(s0)
80201150: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201154 <.LBB2_22>:
;             panic!("walk");
80201154: 97 25 00 00  	auipc	a1, 2
80201158: 93 85 45 fa  	addi	a1, a1, -92
8020115c: 13 05 84 f6  	addi	a0, s0, -152
80201160: 97 10 00 00  	auipc	ra, 1
80201164: e7 80 00 01  	jalr	16(ra)
80201168: 00 00        	unimp	

000000008020116a <.LBB2_23>:
8020116a: 17 25 00 00  	auipc	a0, 2
8020116e: 13 05 65 fb  	addi	a0, a0, -74
80201172: 23 3c a4 f6  	sd	a0, -136(s0)
80201176: 05 45        	li	a0, 1
80201178: 23 30 a4 f8  	sd	a0, -128(s0)
8020117c: 23 34 04 f6  	sd	zero, -152(s0)

0000000080201180 <.LBB2_24>:
80201180: 17 25 00 00  	auipc	a0, 2
80201184: 13 05 85 f4  	addi	a0, a0, -184
80201188: 23 34 a4 f8  	sd	a0, -120(s0)
8020118c: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201190 <.LBB2_25>:
;                 panic!("mappages: remap");
80201190: 97 25 00 00  	auipc	a1, 2
80201194: 93 85 05 fa  	addi	a1, a1, -96
80201198: 13 05 84 f6  	addi	a0, s0, -152
8020119c: 97 10 00 00  	auipc	ra, 1
802011a0: e7 80 40 fd  	jalr	-44(ra)
802011a4: 00 00        	unimp	

00000000802011a6 <.LBB2_26>:
802011a6: 17 25 00 00  	auipc	a0, 2
802011aa: 13 05 25 fb  	addi	a0, a0, -78
802011ae: 23 3c a4 f6  	sd	a0, -136(s0)
802011b2: 05 45        	li	a0, 1
802011b4: 23 30 a4 f8  	sd	a0, -128(s0)
802011b8: 23 34 04 f6  	sd	zero, -152(s0)

00000000802011bc <.LBB2_27>:
802011bc: 17 25 00 00  	auipc	a0, 2
802011c0: 13 05 c5 f0  	addi	a0, a0, -244
802011c4: 23 34 a4 f8  	sd	a0, -120(s0)
802011c8: 23 38 04 f8  	sd	zero, -112(s0)

00000000802011cc <.LBB2_28>:
;             panic!("mappages: size");
802011cc: 97 25 00 00  	auipc	a1, 2
802011d0: 93 85 c5 f9  	addi	a1, a1, -100
802011d4: 13 05 84 f6  	addi	a0, s0, -152
802011d8: 97 10 00 00  	auipc	ra, 1
802011dc: e7 80 80 f9  	jalr	-104(ra)
802011e0: 00 00        	unimp	

00000000802011e2 <_ZN6kernel3sbi8shutdown17h7d6f144840ef1a50E>:
; pub fn shutdown() -> ! {
802011e2: 39 71        	addi	sp, sp, -64
;         asm!(
802011e4: 06 fc        	sd	ra, 56(sp)
802011e6: 22 f8        	sd	s0, 48(sp)
802011e8: 80 00        	addi	s0, sp, 64
802011ea: a1 48        	li	a7, 8
802011ec: 01 45        	li	a0, 0
802011ee: 81 45        	li	a1, 0
802011f0: 01 46        	li	a2, 0
802011f2: 73 00 00 00  	ecall	

00000000802011f6 <.LBB1_1>:
802011f6: 17 25 00 00  	auipc	a0, 2
802011fa: 13 05 25 fa  	addi	a0, a0, -94
802011fe: 23 38 a4 fc  	sd	a0, -48(s0)
80201202: 05 45        	li	a0, 1
80201204: 23 3c a4 fc  	sd	a0, -40(s0)
80201208: 23 30 04 fc  	sd	zero, -64(s0)

000000008020120c <.LBB1_2>:
8020120c: 17 25 00 00  	auipc	a0, 2
80201210: 13 05 45 f7  	addi	a0, a0, -140
80201214: 23 30 a4 fe  	sd	a0, -32(s0)
80201218: 23 34 04 fe  	sd	zero, -24(s0)

000000008020121c <.LBB1_3>:
;     panic!("It should shutdown!");
8020121c: 97 25 00 00  	auipc	a1, 2
80201220: 93 85 c5 f9  	addi	a1, a1, -100
80201224: 13 05 04 fc  	addi	a0, s0, -64
80201228: 97 10 00 00  	auipc	ra, 1
8020122c: e7 80 80 f4  	jalr	-184(ra)
80201230: 00 00        	unimp	

0000000080201232 <_ZN6kernel4logo10print_logo17hd1e5cf57c901a23eE>:
; pub fn print_logo() {
80201232: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
80201234: 86 ec        	sd	ra, 88(sp)
80201236: a2 e8        	sd	s0, 80(sp)
80201238: 80 10        	addi	s0, sp, 96

000000008020123a <.LBB0_3>:
8020123a: 17 25 00 00  	auipc	a0, 2
8020123e: 13 05 65 11  	addi	a0, a0, 278
80201242: 23 30 a4 fa  	sd	a0, -96(s0)

0000000080201246 <.LBB0_4>:
80201246: 17 05 00 00  	auipc	a0, 0
8020124a: 13 05 45 08  	addi	a0, a0, 132
8020124e: 23 34 a4 fa  	sd	a0, -88(s0)
80201252: 13 05 84 fe  	addi	a0, s0, -24
80201256: 23 38 a4 fa  	sd	a0, -80(s0)
8020125a: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020125e <.LBB0_5>:
8020125e: 17 25 00 00  	auipc	a0, 2
80201262: 13 05 a5 f7  	addi	a0, a0, -134
80201266: 23 34 a4 fc  	sd	a0, -56(s0)
8020126a: 09 45        	li	a0, 2
8020126c: 23 38 a4 fc  	sd	a0, -48(s0)
80201270: 13 05 04 fa  	addi	a0, s0, -96
80201274: 23 3c a4 fc  	sd	a0, -40(s0)
80201278: 05 45        	li	a0, 1
8020127a: 23 30 a4 fe  	sd	a0, -32(s0)

000000008020127e <.LBB0_6>:
8020127e: 97 25 00 00  	auipc	a1, 2
80201282: 93 85 a5 2f  	addi	a1, a1, 762
80201286: 13 05 04 fb  	addi	a0, s0, -80
8020128a: 13 06 84 fb  	addi	a2, s0, -72
8020128e: 97 10 00 00  	auipc	ra, 1
80201292: e7 80 a0 ff  	jalr	-6(ra)
80201296: 09 e5        	bnez	a0, 0x802012a0 <.LBB0_7>
; }
80201298: e6 60        	ld	ra, 88(sp)
8020129a: 46 64        	ld	s0, 80(sp)
8020129c: 25 61        	addi	sp, sp, 96
8020129e: 82 80        	ret

00000000802012a0 <.LBB0_7>:
802012a0: 17 25 00 00  	auipc	a0, 2
802012a4: 13 05 85 30  	addi	a0, a0, 776

00000000802012a8 <.LBB0_8>:
802012a8: 97 26 00 00  	auipc	a3, 2
802012ac: 93 86 06 33  	addi	a3, a3, 816

00000000802012b0 <.LBB0_9>:
802012b0: 17 27 00 00  	auipc	a4, 2
802012b4: 13 07 87 35  	addi	a4, a4, 856
802012b8: 93 05 b0 02  	li	a1, 43
802012bc: 13 06 84 fe  	addi	a2, s0, -24
802012c0: 97 10 00 00  	auipc	ra, 1
802012c4: e7 80 a0 f4  	jalr	-182(ra)
802012c8: 00 00        	unimp	

00000000802012ca <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h841398e3e815f769E>:
802012ca: 41 11        	addi	sp, sp, -16
802012cc: 06 e4        	sd	ra, 8(sp)
802012ce: 22 e0        	sd	s0, 0(sp)
802012d0: 00 08        	addi	s0, sp, 16
802012d2: 10 61        	ld	a2, 0(a0)
802012d4: 14 65        	ld	a3, 8(a0)
802012d6: 2e 87        	mv	a4, a1
802012d8: 32 85        	mv	a0, a2
802012da: b6 85        	mv	a1, a3
802012dc: 3a 86        	mv	a2, a4
802012de: a2 60        	ld	ra, 8(sp)
802012e0: 02 64        	ld	s0, 0(sp)
802012e2: 41 01        	addi	sp, sp, 16
802012e4: 17 13 00 00  	auipc	t1, 1
802012e8: 67 00 83 5f  	jr	1528(t1)

00000000802012ec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda6921607be575eaE>:
802012ec: 41 11        	addi	sp, sp, -16
802012ee: 06 e4        	sd	ra, 8(sp)
802012f0: 22 e0        	sd	s0, 0(sp)
802012f2: 00 08        	addi	s0, sp, 16
802012f4: 08 61        	ld	a0, 0(a0)
802012f6: a2 60        	ld	ra, 8(sp)
802012f8: 02 64        	ld	s0, 0(sp)
802012fa: 41 01        	addi	sp, sp, 16
802012fc: 17 13 00 00  	auipc	t1, 1
80201300: 67 00 a3 f5  	jr	-166(t1)

0000000080201304 <_ZN6kernel4lock8spinlock8Spinlock7acquire17hfb9c49aa9594a77bE>:
;     pub fn acquire(&mut self) {
80201304: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80201306: 06 fc        	sd	ra, 56(sp)
80201308: 22 f8        	sd	s0, 48(sp)
8020130a: 80 00        	addi	s0, sp, 64
8020130c: 73 26 00 10  	csrr	a2, sstatus
80201310: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
80201312: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201316: 92 86        	mv	a3, tp
80201318: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
8020131a: 63 f2 b6 0a  	bgeu	a3, a1, 0x802013be <.LBB1_12>
8020131e: e1 45        	li	a1, 24
;     if mc.noff == 0 {
80201320: b3 86 b6 02  	mul	a3, a3, a1

0000000080201324 <.LBB1_11>:
80201324: 17 48 01 00  	auipc	a6, 20
80201328: 13 08 c8 cd  	addi	a6, a6, -804
8020132c: b3 07 d8 00  	add	a5, a6, a3
80201330: 98 67        	ld	a4, 8(a5)
80201332: 93 86 87 00  	addi	a3, a5, 8
80201336: 09 e7        	bnez	a4, 0x80201340 <.LBB1_11+0x1c>
;         mc.intena = old;
80201338: 7a 16        	slli	a2, a2, 62
8020133a: 7d 92        	srli	a2, a2, 63
8020133c: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
80201340: 13 06 17 00  	addi	a2, a4, 1
80201344: 90 e2        	sd	a2, 0(a3)
80201346: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020134a: 93 08 85 01  	addi	a7, a0, 24
8020134e: 81 ce        	beqz	a3, 0x80201366 <.LBB1_11+0x42>
80201350: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201352: 92 86        	mv	a3, tp
80201354: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
80201356: 63 f4 f6 06  	bgeu	a3, a5, 0x802013be <.LBB1_12>
8020135a: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
8020135c: b3 86 f6 02  	mul	a3, a3, a5
80201360: c2 96        	add	a3, a3, a6
;         if self.holding() {
80201362: 63 09 d7 06  	beq	a4, a3, 0x802013d4 <.LBB1_13>
80201366: 93 f6 c8 ff  	andi	a3, a7, -4
8020136a: 1b 97 38 00  	slliw	a4, a7, 3
8020136e: 93 07 f0 0f  	li	a5, 255
80201372: bb 97 e7 00  	sllw	a5, a5, a4
80201376: 85 45        	li	a1, 1
80201378: bb 95 e5 00  	sllw	a1, a1, a4
8020137c: 82 15        	slli	a1, a1, 32
8020137e: 81 91        	srli	a1, a1, 32
80201380: 2f a7 06 14  	lr.w.aq	a4, (a3)
80201384: 33 76 f7 00  	and	a2, a4, a5
80201388: 01 ea        	bnez	a2, 0x80201398 <.LBB1_11+0x74>
8020138a: 33 46 b7 00  	xor	a2, a4, a1
8020138e: 7d 8e        	and	a2, a2, a5
80201390: 39 8e        	xor	a2, a2, a4
80201392: 2f a6 c6 18  	sc.w	a2, a2, (a3)
80201396: 6d f6        	bnez	a2, 0x80201380 <.LBB1_11+0x5c>
80201398: b3 75 f7 00  	and	a1, a4, a5
8020139c: 81 25        	sext.w	a1, a1
;         while self
8020139e: e1 f5        	bnez	a1, 0x80201366 <.LBB1_11+0x42>
802013a0: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802013a4: 92 86        	mv	a3, tp
802013a6: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802013a8: 63 fb b6 00  	bgeu	a3, a1, 0x802013be <.LBB1_12>
802013ac: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802013ae: b3 85 b6 02  	mul	a1, a3, a1
802013b2: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
802013b4: 0c e9        	sd	a1, 16(a0)
;     }
802013b6: e2 70        	ld	ra, 56(sp)
802013b8: 42 74        	ld	s0, 48(sp)
802013ba: 21 61        	addi	sp, sp, 64
802013bc: 82 80        	ret

00000000802013be <.LBB1_12>:
802013be: 17 26 00 00  	auipc	a2, 2
802013c2: 13 06 a6 fb  	addi	a2, a2, -70
802013c6: a1 45        	li	a1, 8
802013c8: 36 85        	mv	a0, a3
802013ca: 97 10 00 00  	auipc	ra, 1
802013ce: e7 80 00 e0  	jalr	-512(ra)
802013d2: 00 00        	unimp	

00000000802013d4 <.LBB1_13>:
802013d4: 17 25 00 00  	auipc	a0, 2
802013d8: 13 05 45 fc  	addi	a0, a0, -60
802013dc: 23 38 a4 fc  	sd	a0, -48(s0)
802013e0: 05 45        	li	a0, 1
802013e2: 23 3c a4 fc  	sd	a0, -40(s0)
802013e6: 23 30 04 fc  	sd	zero, -64(s0)

00000000802013ea <.LBB1_14>:
802013ea: 17 25 00 00  	auipc	a0, 2
802013ee: 13 05 65 fa  	addi	a0, a0, -90
802013f2: 23 30 a4 fe  	sd	a0, -32(s0)
802013f6: 23 34 04 fe  	sd	zero, -24(s0)

00000000802013fa <.LBB1_15>:
;             panic!("acquire");
802013fa: 97 25 00 00  	auipc	a1, 2
802013fe: 93 85 65 fc  	addi	a1, a1, -58
80201402: 13 05 04 fc  	addi	a0, s0, -64
80201406: 97 10 00 00  	auipc	ra, 1
8020140a: e7 80 a0 d6  	jalr	-662(ra)
8020140e: 00 00        	unimp	

0000000080201410 <_ZN6kernel4lock8spinlock8Spinlock7release17h274222f3a8daa87dE>:
;     pub fn release(&mut self) {
80201410: 39 71        	addi	sp, sp, -64
80201412: 06 fc        	sd	ra, 56(sp)
80201414: 22 f8        	sd	s0, 48(sp)
80201416: 80 00        	addi	s0, sp, 64
80201418: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
8020141c: dd c1        	beqz	a1, 0x802014c2 <.LBB2_19>
8020141e: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80201420: 92 86        	mv	a3, tp
80201422: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
80201424: 63 fa b6 06  	bgeu	a3, a1, 0x80201498 <.LBB2_17>
80201428: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
8020142a: b3 86 b6 02  	mul	a3, a3, a1

000000008020142e <.LBB2_16>:
8020142e: 97 45 01 00  	auipc	a1, 20
80201432: 93 85 25 bd  	addi	a1, a1, -1070
80201436: ae 96        	add	a3, a3, a1
;         if !self.holding() {
80201438: 63 15 d6 08  	bne	a2, a3, 0x802014c2 <.LBB2_19>
;         self.cpu = null_mut();
8020143c: 23 38 05 00  	sd	zero, 16(a0)
80201440: 0f 00 30 03  	fence	rw, rw
80201444: 0f 00 10 03  	fence	rw, w
80201448: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
8020144c: 12 85        	mv	a0, tp
8020144e: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
80201450: 63 7f c5 04  	bgeu	a0, a2, 0x802014ae <.LBB2_18>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80201454: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
80201458: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
8020145a: 41 ee        	bnez	a2, 0x802014f2 <.LBB2_22>
8020145c: 61 46        	li	a2, 24
;     if mc.noff < 1 {
8020145e: 33 06 c5 02  	mul	a2, a0, a2
80201462: b3 86 c5 00  	add	a3, a1, a2
80201466: 90 66        	ld	a2, 8(a3)
80201468: 63 5d c0 0a  	blez	a2, 0x80201522 <.LBB2_25>
8020146c: a1 06        	addi	a3, a3, 8
;     mc.noff -= 1;
8020146e: 7d 16        	addi	a2, a2, -1
80201470: 90 e2        	sd	a2, 0(a3)
;     if mc.noff == 0 && mc.intena {
80201472: 09 c6        	beqz	a2, 0x8020147c <.LBB2_16+0x4e>
;     }
80201474: e2 70        	ld	ra, 56(sp)
80201476: 42 74        	ld	s0, 48(sp)
80201478: 21 61        	addi	sp, sp, 64
8020147a: 82 80        	ret
8020147c: 61 46        	li	a2, 24
;     if mc.noff == 0 && mc.intena {
8020147e: 33 05 c5 02  	mul	a0, a0, a2
80201482: 2e 95        	add	a0, a0, a1
80201484: 03 45 05 01  	lbu	a0, 16(a0)
80201488: 75 d5        	beqz	a0, 0x80201474 <.LBB2_16+0x46>
8020148a: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
8020148c: 73 20 05 10  	csrs	sstatus, a0
;     }
80201490: e2 70        	ld	ra, 56(sp)
80201492: 42 74        	ld	s0, 48(sp)
80201494: 21 61        	addi	sp, sp, 64
80201496: 82 80        	ret

0000000080201498 <.LBB2_17>:
;     unsafe { &mut CPUS[id] }
80201498: 17 26 00 00  	auipc	a2, 2
8020149c: 13 06 06 ee  	addi	a2, a2, -288
802014a0: a1 45        	li	a1, 8
802014a2: 36 85        	mv	a0, a3
802014a4: 97 10 00 00  	auipc	ra, 1
802014a8: e7 80 60 d2  	jalr	-730(ra)
802014ac: 00 00        	unimp	

00000000802014ae <.LBB2_18>:
802014ae: 17 26 00 00  	auipc	a2, 2
802014b2: 13 06 a6 ec  	addi	a2, a2, -310
802014b6: a1 45        	li	a1, 8
802014b8: 97 10 00 00  	auipc	ra, 1
802014bc: e7 80 20 d1  	jalr	-750(ra)
802014c0: 00 00        	unimp	

00000000802014c2 <.LBB2_19>:
802014c2: 17 25 00 00  	auipc	a0, 2
802014c6: 13 05 e5 f1  	addi	a0, a0, -226
802014ca: 23 38 a4 fc  	sd	a0, -48(s0)
802014ce: 05 45        	li	a0, 1
802014d0: 23 3c a4 fc  	sd	a0, -40(s0)
802014d4: 23 30 04 fc  	sd	zero, -64(s0)

00000000802014d8 <.LBB2_20>:
802014d8: 17 25 00 00  	auipc	a0, 2
802014dc: 13 05 85 eb  	addi	a0, a0, -328
802014e0: 23 30 a4 fe  	sd	a0, -32(s0)
802014e4: 23 34 04 fe  	sd	zero, -24(s0)

00000000802014e8 <.LBB2_21>:
;             panic!("release");
802014e8: 97 25 00 00  	auipc	a1, 2
802014ec: 93 85 85 f0  	addi	a1, a1, -248
802014f0: 85 a0        	j	0x80201550 <.LBB2_27+0x8>

00000000802014f2 <.LBB2_22>:
802014f2: 17 25 00 00  	auipc	a0, 2
802014f6: 13 05 e5 f2  	addi	a0, a0, -210
802014fa: 23 38 a4 fc  	sd	a0, -48(s0)
802014fe: 05 45        	li	a0, 1
80201500: 23 3c a4 fc  	sd	a0, -40(s0)
80201504: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201508 <.LBB2_23>:
80201508: 17 25 00 00  	auipc	a0, 2
8020150c: 13 05 85 e8  	addi	a0, a0, -376
80201510: 23 30 a4 fe  	sd	a0, -32(s0)
80201514: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201518 <.LBB2_24>:
;         panic!("pop_off - interruptible");
80201518: 97 25 00 00  	auipc	a1, 2
8020151c: 93 85 85 f1  	addi	a1, a1, -232
80201520: 05 a8        	j	0x80201550 <.LBB2_27+0x8>

0000000080201522 <.LBB2_25>:
80201522: 17 25 00 00  	auipc	a0, 2
80201526: 13 05 e5 f2  	addi	a0, a0, -210
8020152a: 23 38 a4 fc  	sd	a0, -48(s0)
8020152e: 05 45        	li	a0, 1
80201530: 23 3c a4 fc  	sd	a0, -40(s0)
80201534: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201538 <.LBB2_26>:
80201538: 17 25 00 00  	auipc	a0, 2
8020153c: 13 05 85 e5  	addi	a0, a0, -424
80201540: 23 30 a4 fe  	sd	a0, -32(s0)
80201544: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201548 <.LBB2_27>:
;         panic!("pop_off");
80201548: 97 25 00 00  	auipc	a1, 2
8020154c: 93 85 85 f1  	addi	a1, a1, -232
80201550: 13 05 04 fc  	addi	a0, s0, -64
80201554: 97 10 00 00  	auipc	ra, 1
80201558: e7 80 c0 c1  	jalr	-996(ra)
8020155c: 00 00        	unimp	

000000008020155e <_ZN6kernel6memory6kalloc5kinit17h2998f4f2bfe2816cE>:
; pub fn kinit() {
8020155e: 19 71        	addi	sp, sp, -128
80201560: 86 fc        	sd	ra, 120(sp)
80201562: a2 f8        	sd	s0, 112(sp)
80201564: a6 f4        	sd	s1, 104(sp)
80201566: ca f0        	sd	s2, 96(sp)
80201568: ce ec        	sd	s3, 88(sp)
8020156a: d2 e8        	sd	s4, 80(sp)
8020156c: d6 e4        	sd	s5, 72(sp)
8020156e: 00 01        	addi	s0, sp, 128
80201570: 0f 00 30 03  	fence	rw, rw

0000000080201574 <.LBB1_17>:
80201574: 97 49 01 00  	auipc	s3, 20
80201578: 93 89 c9 b4  	addi	s3, s3, -1204
8020157c: 03 b5 09 03  	ld	a0, 48(s3)
80201580: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201584: 21 ed        	bnez	a0, 0x802015dc <.LBB1_18+0x3a>
80201586: 93 85 09 03  	addi	a1, s3, 48
8020158a: 05 46        	li	a2, 1
8020158c: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80201590: 01 e5        	bnez	a0, 0x80201598 <.LBB1_17+0x24>
80201592: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
80201596: fd fa        	bnez	a3, 0x8020158c <.LBB1_17+0x18>
;             if status == INCOMPLETE { // We init
80201598: 31 e1        	bnez	a0, 0x802015dc <.LBB1_18+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020159a: 23 38 b4 f8  	sd	a1, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
8020159e: 23 b0 c9 00  	sd	a2, 0(s3)

00000000802015a2 <.LBB1_18>:
802015a2: 17 25 00 00  	auipc	a0, 2
802015a6: 13 05 a5 b2  	addi	a0, a0, -1238
802015aa: 23 b4 a9 00  	sd	a0, 8(s3)
802015ae: 11 45        	li	a0, 4
802015b0: 23 b8 a9 00  	sd	a0, 16(s3)
802015b4: 23 bc 09 00  	sd	zero, 24(s3)
802015b8: 23 80 09 02  	sb	zero, 32(s3)
802015bc: 23 b4 09 02  	sd	zero, 40(s3)
;                 finish.panicked = false;
802015c0: 23 0c 04 f8  	sb	zero, -104(s0)
802015c4: 0f 00 10 03  	fence	rw, w
802015c8: 09 45        	li	a0, 2
802015ca: 23 b8 a9 02  	sd	a0, 48(s3)
802015ce: 13 05 04 f9  	addi	a0, s0, -112
802015d2: 97 10 00 00  	auipc	ra, 1
802015d6: e7 80 40 b6  	jalr	-1180(ra)
802015da: 0d a0        	j	0x802015fc <.LBB1_19>
802015dc: 85 45        	li	a1, 1
;             match status {
802015de: 63 1c b5 00  	bne	a0, a1, 0x802015f6 <.LBB1_18+0x54>
802015e2: 0f 00 00 01  	fence	w, 0
802015e6: 0f 00 30 03  	fence	rw, rw
802015ea: 03 b5 09 03  	ld	a0, 48(s3)
802015ee: 0f 00 30 02  	fence	r, rw
;             match status {
802015f2: e3 08 b5 fe  	beq	a0, a1, 0x802015e2 <.LBB1_18+0x40>
802015f6: 89 45        	li	a1, 2
;             match status {
802015f8: 63 17 b5 0c  	bne	a0, a1, 0x802016c6 <.LBB1_22+0x2c>

00000000802015fc <.LBB1_19>:
;         while pa < pa_end - PGSIZE {
802015fc: 17 55 01 00  	auipc	a0, 21
80201600: 13 05 45 a0  	addi	a0, a0, -1532
80201604: 85 65        	lui	a1, 1
80201606: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80201608: aa 95        	add	a1, a1, a0
8020160a: 7d 76        	lui	a2, 1048575
8020160c: f1 8d        	and	a1, a1, a2
8020160e: 37 86 08 00  	lui	a2, 136
80201612: 7d 36        	addiw	a2, a2, -1
80201614: 32 06        	slli	a2, a2, 12
80201616: 7d 16        	addi	a2, a2, -1
80201618: 63 6a b6 04  	bltu	a2, a1, 0x8020166c <.LBB1_19+0x70>
8020161c: 63 e8 a5 10  	bltu	a1, a0, 0x8020172c <.LBB1_30>
80201620: 05 6a        	lui	s4, 1
80201622: 9b 05 fa ff  	addiw	a1, s4, -1
80201626: 2e 95        	add	a0, a0, a1
80201628: fd 75        	lui	a1, 1048575
8020162a: 6d 8d        	and	a0, a0, a1
8020162c: 13 89 89 00  	addi	s2, s3, 8
80201630: b7 f5 ff 43  	lui	a1, 278527
80201634: 93 9a 15 00  	slli	s5, a1, 1
80201638: aa 84        	mv	s1, a0
8020163a: 85 45        	li	a1, 1
8020163c: 05 66        	lui	a2, 1
8020163e: 97 10 00 00  	auipc	ra, 1
80201642: e7 80 20 60  	jalr	1538(ra)
;         self.lock.acquire();
80201646: 4a 85        	mv	a0, s2
80201648: 97 00 00 00  	auipc	ra, 0
8020164c: e7 80 c0 cb  	jalr	-836(ra)
;         unsafe { (*pa).next = self.freelist }
80201650: 03 b5 89 02  	ld	a0, 40(s3)
80201654: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80201656: 23 b4 99 02  	sd	s1, 40(s3)
;         self.lock.release();
8020165a: 4a 85        	mv	a0, s2
8020165c: 97 00 00 00  	auipc	ra, 0
80201660: e7 80 40 db  	jalr	-588(ra)
;             pa += PGSIZE;
80201664: 33 85 44 01  	add	a0, s1, s4
80201668: e3 e8 54 fd  	bltu	s1, s5, 0x80201638 <.LBB1_19+0x3c>
8020166c: 13 05 04 fc  	addi	a0, s0, -64
80201670: 23 34 a4 f8  	sd	a0, -120(s0)
80201674: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201678 <.LBB1_20>:
80201678: 17 25 00 00  	auipc	a0, 2
8020167c: 13 05 85 e5  	addi	a0, a0, -424
80201680: 23 30 a4 fa  	sd	a0, -96(s0)
80201684: 05 45        	li	a0, 1
80201686: 23 34 a4 fa  	sd	a0, -88(s0)

000000008020168a <.LBB1_21>:
8020168a: 17 25 00 00  	auipc	a0, 2
8020168e: 13 05 e5 de  	addi	a0, a0, -530
80201692: 23 38 a4 fa  	sd	a0, -80(s0)
80201696: 23 3c 04 fa  	sd	zero, -72(s0)

000000008020169a <.LBB1_22>:
8020169a: 97 25 00 00  	auipc	a1, 2
8020169e: 93 85 e5 ed  	addi	a1, a1, -290
802016a2: 13 05 84 f8  	addi	a0, s0, -120
802016a6: 13 06 04 f9  	addi	a2, s0, -112
802016aa: 97 10 00 00  	auipc	ra, 1
802016ae: e7 80 e0 bd  	jalr	-1058(ra)
802016b2: 21 e9        	bnez	a0, 0x80201702 <.LBB1_27>
; }
802016b4: e6 70        	ld	ra, 120(sp)
802016b6: 46 74        	ld	s0, 112(sp)
802016b8: a6 74        	ld	s1, 104(sp)
802016ba: 06 79        	ld	s2, 96(sp)
802016bc: e6 69        	ld	s3, 88(sp)
802016be: 46 6a        	ld	s4, 80(sp)
802016c0: a6 6a        	ld	s5, 72(sp)
802016c2: 09 61        	addi	sp, sp, 128
802016c4: 82 80        	ret
;             match status {
802016c6: 05 e1        	bnez	a0, 0x802016e6 <.LBB1_25>

00000000802016c8 <.LBB1_23>:
;                 INCOMPLETE => unreachable!(),
802016c8: 17 25 00 00  	auipc	a0, 2
802016cc: 13 05 05 9c  	addi	a0, a0, -1600

00000000802016d0 <.LBB1_24>:
802016d0: 17 26 00 00  	auipc	a2, 2
802016d4: 13 06 06 9e  	addi	a2, a2, -1568
802016d8: 93 05 80 02  	li	a1, 40
802016dc: 97 10 00 00  	auipc	ra, 1
802016e0: e7 80 20 ac  	jalr	-1342(ra)
802016e4: 00 00        	unimp	

00000000802016e6 <.LBB1_25>:
;                 PANICKED => panic!("Once has panicked"),
802016e6: 17 25 00 00  	auipc	a0, 2
802016ea: 13 05 a5 91  	addi	a0, a0, -1766

00000000802016ee <.LBB1_26>:
802016ee: 17 26 00 00  	auipc	a2, 2
802016f2: 13 06 26 98  	addi	a2, a2, -1662
802016f6: c5 45        	li	a1, 17
802016f8: 97 10 00 00  	auipc	ra, 1
802016fc: e7 80 60 aa  	jalr	-1370(ra)
80201700: 00 00        	unimp	

0000000080201702 <.LBB1_27>:
80201702: 17 25 00 00  	auipc	a0, 2
80201706: 13 05 65 ea  	addi	a0, a0, -346

000000008020170a <.LBB1_28>:
8020170a: 97 26 00 00  	auipc	a3, 2
8020170e: 93 86 e6 ec  	addi	a3, a3, -306

0000000080201712 <.LBB1_29>:
80201712: 17 27 00 00  	auipc	a4, 2
80201716: 13 07 67 ef  	addi	a4, a4, -266
8020171a: 93 05 b0 02  	li	a1, 43
8020171e: 13 06 04 fc  	addi	a2, s0, -64
80201722: 97 10 00 00  	auipc	ra, 1
80201726: e7 80 80 ae  	jalr	-1304(ra)
8020172a: 00 00        	unimp	

000000008020172c <.LBB1_30>:
8020172c: 17 25 00 00  	auipc	a0, 2
80201730: 13 05 45 d5  	addi	a0, a0, -684
80201734: 23 30 a4 fa  	sd	a0, -96(s0)
80201738: 05 45        	li	a0, 1
8020173a: 23 34 a4 fa  	sd	a0, -88(s0)
8020173e: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201742 <.LBB1_31>:
80201742: 17 25 00 00  	auipc	a0, 2
80201746: 13 05 65 d3  	addi	a0, a0, -714
8020174a: 23 38 a4 fa  	sd	a0, -80(s0)
8020174e: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201752 <.LBB1_32>:
;             panic!("kfree");
80201752: 97 25 00 00  	auipc	a1, 2
80201756: 93 85 65 d5  	addi	a1, a1, -682
8020175a: 13 05 04 f9  	addi	a0, s0, -112
8020175e: 97 10 00 00  	auipc	ra, 1
80201762: e7 80 20 a1  	jalr	-1518(ra)
80201766: 00 00        	unimp	

0000000080201768 <_ZN6kernel6memory6kalloc6kalloc17h8dd363a38295c609E>:
; pub fn kalloc() -> Addr {
80201768: 39 71        	addi	sp, sp, -64
8020176a: 06 fc        	sd	ra, 56(sp)
8020176c: 22 f8        	sd	s0, 48(sp)
8020176e: 26 f4        	sd	s1, 40(sp)
80201770: 4a f0        	sd	s2, 32(sp)
80201772: 4e ec        	sd	s3, 24(sp)
80201774: 80 00        	addi	s0, sp, 64
80201776: 0f 00 30 03  	fence	rw, rw

000000008020177a <.LBB2_13>:
8020177a: 97 44 01 00  	auipc	s1, 20
8020177e: 93 84 64 94  	addi	s1, s1, -1722
80201782: 88 78        	ld	a0, 48(s1)
80201784: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201788: 21 e9        	bnez	a0, 0x802017d8 <.LBB2_14+0x34>
8020178a: 93 85 04 03  	addi	a1, s1, 48
8020178e: 05 46        	li	a2, 1
80201790: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80201794: 01 e5        	bnez	a0, 0x8020179c <.LBB2_13+0x22>
80201796: af b6 c5 1e  	sc.d.aqrl	a3, a2, (a1)
8020179a: fd fa        	bnez	a3, 0x80201790 <.LBB2_13+0x16>
;             if status == INCOMPLETE { // We init
8020179c: 15 ed        	bnez	a0, 0x802017d8 <.LBB2_14+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
8020179e: 23 34 b4 fc  	sd	a1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
802017a2: 90 e0        	sd	a2, 0(s1)

00000000802017a4 <.LBB2_14>:
802017a4: 17 25 00 00  	auipc	a0, 2
802017a8: 13 05 85 92  	addi	a0, a0, -1752
802017ac: 88 e4        	sd	a0, 8(s1)
802017ae: 11 45        	li	a0, 4
802017b0: 88 e8        	sd	a0, 16(s1)
802017b2: 23 bc 04 00  	sd	zero, 24(s1)
802017b6: 23 80 04 02  	sb	zero, 32(s1)
802017ba: 23 b4 04 02  	sd	zero, 40(s1)
;                 finish.panicked = false;
802017be: 23 08 04 fc  	sb	zero, -48(s0)
802017c2: 0f 00 10 03  	fence	rw, w
802017c6: 09 45        	li	a0, 2
802017c8: 88 f8        	sd	a0, 48(s1)
802017ca: 13 05 84 fc  	addi	a0, s0, -56
802017ce: 97 10 00 00  	auipc	ra, 1
802017d2: e7 80 80 96  	jalr	-1688(ra)
802017d6: 05 a0        	j	0x802017f6 <.LBB2_14+0x52>
802017d8: 85 45        	li	a1, 1
;             match status {
802017da: 63 1b b5 00  	bne	a0, a1, 0x802017f0 <.LBB2_14+0x4c>
802017de: 0f 00 00 01  	fence	w, 0
802017e2: 0f 00 30 03  	fence	rw, rw
802017e6: 88 78        	ld	a0, 48(s1)
802017e8: 0f 00 30 02  	fence	r, rw
;             match status {
802017ec: e3 09 b5 fe  	beq	a0, a1, 0x802017de <.LBB2_14+0x3a>
802017f0: 89 45        	li	a1, 2
;             match status {
802017f2: 63 1a b5 04  	bne	a0, a1, 0x80201846 <.LBB2_14+0xa2>
;         self.lock.acquire();
802017f6: 13 89 84 00  	addi	s2, s1, 8
802017fa: 4a 85        	mv	a0, s2
802017fc: 97 00 00 00  	auipc	ra, 0
80201800: e7 80 80 b0  	jalr	-1272(ra)
;         r = self.freelist;
80201804: 83 b9 84 02  	ld	s3, 40(s1)
80201808: 63 82 09 02  	beqz	s3, 0x8020182c <.LBB2_14+0x88>
;             unsafe { self.freelist = (*r).next }
8020180c: 03 b5 09 00  	ld	a0, 0(s3)
80201810: 88 f4        	sd	a0, 40(s1)
;         self.lock.release();
80201812: 4a 85        	mv	a0, s2
80201814: 97 00 00 00  	auipc	ra, 0
80201818: e7 80 c0 bf  	jalr	-1028(ra)
8020181c: 95 45        	li	a1, 5
8020181e: 05 66        	lui	a2, 1
80201820: 4e 85        	mv	a0, s3
80201822: 97 10 00 00  	auipc	ra, 1
80201826: e7 80 e0 41  	jalr	1054(ra)
8020182a: 31 a0        	j	0x80201836 <.LBB2_14+0x92>
;         self.lock.release();
8020182c: 4a 85        	mv	a0, s2
8020182e: 97 00 00 00  	auipc	ra, 0
80201832: e7 80 20 be  	jalr	-1054(ra)
; }
80201836: 4e 85        	mv	a0, s3
80201838: e2 70        	ld	ra, 56(sp)
8020183a: 42 74        	ld	s0, 48(sp)
8020183c: a2 74        	ld	s1, 40(sp)
8020183e: 02 79        	ld	s2, 32(sp)
80201840: e2 69        	ld	s3, 24(sp)
80201842: 21 61        	addi	sp, sp, 64
80201844: 82 80        	ret
;             match status {
80201846: 05 e1        	bnez	a0, 0x80201866 <.LBB2_17>

0000000080201848 <.LBB2_15>:
;                 INCOMPLETE => unreachable!(),
80201848: 17 25 00 00  	auipc	a0, 2
8020184c: 13 05 05 84  	addi	a0, a0, -1984

0000000080201850 <.LBB2_16>:
80201850: 17 26 00 00  	auipc	a2, 2
80201854: 13 06 06 86  	addi	a2, a2, -1952
80201858: 93 05 80 02  	li	a1, 40
8020185c: 97 10 00 00  	auipc	ra, 1
80201860: e7 80 20 94  	jalr	-1726(ra)
80201864: 00 00        	unimp	

0000000080201866 <.LBB2_17>:
;                 PANICKED => panic!("Once has panicked"),
80201866: 17 15 00 00  	auipc	a0, 1
8020186a: 13 05 a5 79  	addi	a0, a0, 1946

000000008020186e <.LBB2_18>:
8020186e: 17 26 00 00  	auipc	a2, 2
80201872: 13 06 26 80  	addi	a2, a2, -2046
80201876: c5 45        	li	a1, 17
80201878: 97 10 00 00  	auipc	ra, 1
8020187c: e7 80 60 92  	jalr	-1754(ra)
80201880: 00 00        	unimp	

0000000080201882 <_ZN6kernel6memory3kvm7kvminit17h8793f41542848a7cE>:
; pub fn kvminit() {
80201882: 59 71        	addi	sp, sp, -112
80201884: 86 f4        	sd	ra, 104(sp)
80201886: a2 f0        	sd	s0, 96(sp)
80201888: a6 ec        	sd	s1, 88(sp)
8020188a: ca e8        	sd	s2, 80(sp)
8020188c: ce e4        	sd	s3, 72(sp)
8020188e: 80 18        	addi	s0, sp, 112
80201890: 0f 00 30 03  	fence	rw, rw

0000000080201894 <.LBB1_19>:
80201894: 97 44 01 00  	auipc	s1, 20
80201898: 93 84 44 86  	addi	s1, s1, -1948
8020189c: 88 68        	ld	a0, 16(s1)
8020189e: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802018a2: 29 e9        	bnez	a0, 0x802018f4 <.LBB1_19+0x60>
802018a4: 93 85 04 01  	addi	a1, s1, 16
802018a8: 85 49        	li	s3, 1
802018aa: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
802018ae: 01 e5        	bnez	a0, 0x802018b6 <.LBB1_19+0x22>
802018b0: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
802018b4: 7d fa        	bnez	a2, 0x802018aa <.LBB1_19+0x16>
;             if status == INCOMPLETE { // We init
802018b6: 1d ed        	bnez	a0, 0x802018f4 <.LBB1_19+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802018b8: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802018bc: 97 00 00 00  	auipc	ra, 0
802018c0: e7 80 c0 ea  	jalr	-340(ra)
802018c4: 2a 89        	mv	s2, a0
802018c6: 05 66        	lui	a2, 1
802018c8: 81 45        	li	a1, 0
802018ca: 97 10 00 00  	auipc	ra, 1
802018ce: e7 80 60 37  	jalr	886(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802018d2: 23 b0 34 01  	sd	s3, 0(s1)
802018d6: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
802018da: 23 04 04 fa  	sb	zero, -88(s0)
802018de: 0f 00 10 03  	fence	rw, w
802018e2: 09 45        	li	a0, 2
802018e4: 88 e8        	sd	a0, 16(s1)
802018e6: 13 05 04 fa  	addi	a0, s0, -96
802018ea: 97 10 00 00  	auipc	ra, 1
802018ee: e7 80 c0 84  	jalr	-1972(ra)
802018f2: 05 a0        	j	0x80201912 <.LBB1_19+0x7e>
802018f4: 85 45        	li	a1, 1
;             match status {
802018f6: 63 1b b5 00  	bne	a0, a1, 0x8020190c <.LBB1_19+0x78>
802018fa: 0f 00 00 01  	fence	w, 0
802018fe: 0f 00 30 03  	fence	rw, rw
80201902: 88 68        	ld	a0, 16(s1)
80201904: 0f 00 30 02  	fence	r, rw
;             match status {
80201908: e3 09 b5 fe  	beq	a0, a1, 0x802018fa <.LBB1_19+0x66>
8020190c: 89 45        	li	a1, 2
;             match status {
8020190e: 63 19 b5 10  	bne	a0, a1, 0x80201a20 <.LBB1_24+0x28>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201912: 13 89 84 00  	addi	s2, s1, 8
80201916: b7 05 00 10  	lui	a1, 65536
8020191a: 05 66        	lui	a2, 1
8020191c: b7 06 00 10  	lui	a3, 65536
80201920: 19 47        	li	a4, 6
80201922: 4a 85        	mv	a0, s2
80201924: 97 f0 ff ff  	auipc	ra, 1048575
80201928: e7 80 c0 6d  	jalr	1756(ra)
8020192c: 63 08 05 12  	beqz	a0, 0x80201a5c <.LBB1_29>
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201930: b7 15 00 10  	lui	a1, 65537
80201934: 05 66        	lui	a2, 1
80201936: b7 16 00 10  	lui	a3, 65537
8020193a: 19 47        	li	a4, 6
8020193c: 4a 85        	mv	a0, s2
8020193e: 97 f0 ff ff  	auipc	ra, 1048575
80201942: e7 80 20 6c  	jalr	1730(ra)
80201946: 63 0b 05 10  	beqz	a0, 0x80201a5c <.LBB1_29>
8020194a: b7 05 00 0c  	lui	a1, 49152
8020194e: 37 06 40 00  	lui	a2, 1024
80201952: b7 06 00 0c  	lui	a3, 49152
80201956: 19 47        	li	a4, 6
80201958: 4a 85        	mv	a0, s2
8020195a: 97 f0 ff ff  	auipc	ra, 1048575
8020195e: e7 80 60 6a  	jalr	1702(ra)
80201962: 6d cd        	beqz	a0, 0x80201a5c <.LBB1_29>

0000000080201964 <.LBB1_20>:
80201964: 97 14 00 00  	auipc	s1, 1
80201968: 93 84 c4 69  	addi	s1, s1, 1692
8020196c: 13 05 f0 bf  	li	a0, -1025
80201970: 56 05        	slli	a0, a0, 21
80201972: 33 86 a4 00  	add	a2, s1, a0
80201976: 13 05 10 40  	li	a0, 1025
8020197a: 93 15 55 01  	slli	a1, a0, 21
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
8020197e: 29 47        	li	a4, 10
80201980: 4a 85        	mv	a0, s2
80201982: ae 86        	mv	a3, a1
80201984: 97 f0 ff ff  	auipc	ra, 1048575
80201988: e7 80 c0 67  	jalr	1660(ra)
8020198c: 61 c9        	beqz	a0, 0x80201a5c <.LBB1_29>
8020198e: 45 45        	li	a0, 17
80201990: 6e 05        	slli	a0, a0, 27
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
80201992: 33 06 95 40  	sub	a2, a0, s1
80201996: 19 47        	li	a4, 6
80201998: 4a 85        	mv	a0, s2
8020199a: a6 85        	mv	a1, s1
8020199c: a6 86        	mv	a3, s1
8020199e: 97 f0 ff ff  	auipc	ra, 1048575
802019a2: e7 80 20 66  	jalr	1634(ra)
802019a6: 5d c9        	beqz	a0, 0x80201a5c <.LBB1_29>

00000000802019a8 <.LBB1_21>:
802019a8: 97 f6 ff ff  	auipc	a3, 1048575
802019ac: 93 86 86 65  	addi	a3, a3, 1624
802019b0: 37 05 00 04  	lui	a0, 16384
802019b4: 7d 35        	addiw	a0, a0, -1
802019b6: 93 15 c5 00  	slli	a1, a0, 12
;         if self.kernel_pagetable.mappages(va, sz, pa, perm) == false {
802019ba: 05 66        	lui	a2, 1
802019bc: 29 47        	li	a4, 10
802019be: 4a 85        	mv	a0, s2
802019c0: 97 f0 ff ff  	auipc	ra, 1048575
802019c4: e7 80 00 64  	jalr	1600(ra)
802019c8: 51 c9        	beqz	a0, 0x80201a5c <.LBB1_29>
802019ca: 13 05 04 fd  	addi	a0, s0, -48
802019ce: 23 3c a4 f8  	sd	a0, -104(s0)
802019d2: 23 30 04 fa  	sd	zero, -96(s0)

00000000802019d6 <.LBB1_22>:
802019d6: 17 25 00 00  	auipc	a0, 2
802019da: 13 05 a5 b6  	addi	a0, a0, -1174
802019de: 23 38 a4 fa  	sd	a0, -80(s0)
802019e2: 05 45        	li	a0, 1
802019e4: 23 3c a4 fa  	sd	a0, -72(s0)

00000000802019e8 <.LBB1_23>:
802019e8: 17 25 00 00  	auipc	a0, 2
802019ec: 13 05 85 af  	addi	a0, a0, -1288
802019f0: 23 30 a4 fc  	sd	a0, -64(s0)
802019f4: 23 34 04 fc  	sd	zero, -56(s0)

00000000802019f8 <.LBB1_24>:
802019f8: 97 25 00 00  	auipc	a1, 2
802019fc: 93 85 05 b8  	addi	a1, a1, -1152
80201a00: 13 05 84 f9  	addi	a0, s0, -104
80201a04: 13 06 04 fa  	addi	a2, s0, -96
80201a08: 97 10 00 00  	auipc	ra, 1
80201a0c: e7 80 00 88  	jalr	-1920(ra)
80201a10: 41 e5        	bnez	a0, 0x80201a98 <.LBB1_32>
; }
80201a12: a6 70        	ld	ra, 104(sp)
80201a14: 06 74        	ld	s0, 96(sp)
80201a16: e6 64        	ld	s1, 88(sp)
80201a18: 46 69        	ld	s2, 80(sp)
80201a1a: a6 69        	ld	s3, 72(sp)
80201a1c: 65 61        	addi	sp, sp, 112
80201a1e: 82 80        	ret
;             match status {
80201a20: 05 e1        	bnez	a0, 0x80201a40 <.LBB1_27>

0000000080201a22 <.LBB1_25>:
;                 INCOMPLETE => unreachable!(),
80201a22: 17 15 00 00  	auipc	a0, 1
80201a26: 13 05 65 66  	addi	a0, a0, 1638

0000000080201a2a <.LBB1_26>:
80201a2a: 17 16 00 00  	auipc	a2, 1
80201a2e: 13 06 66 68  	addi	a2, a2, 1670
80201a32: 93 05 80 02  	li	a1, 40
80201a36: 97 00 00 00  	auipc	ra, 0
80201a3a: e7 80 80 76  	jalr	1896(ra)
80201a3e: 00 00        	unimp	

0000000080201a40 <.LBB1_27>:
;                 PANICKED => panic!("Once has panicked"),
80201a40: 17 15 00 00  	auipc	a0, 1
80201a44: 13 05 05 5c  	addi	a0, a0, 1472

0000000080201a48 <.LBB1_28>:
80201a48: 17 16 00 00  	auipc	a2, 1
80201a4c: 13 06 86 62  	addi	a2, a2, 1576
80201a50: c5 45        	li	a1, 17
80201a52: 97 00 00 00  	auipc	ra, 0
80201a56: e7 80 c0 74  	jalr	1868(ra)
80201a5a: 00 00        	unimp	

0000000080201a5c <.LBB1_29>:
80201a5c: 17 25 00 00  	auipc	a0, 2
80201a60: 13 05 c5 a8  	addi	a0, a0, -1396
80201a64: 23 38 a4 fa  	sd	a0, -80(s0)
80201a68: 05 45        	li	a0, 1
80201a6a: 23 3c a4 fa  	sd	a0, -72(s0)
80201a6e: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201a72 <.LBB1_30>:
80201a72: 17 25 00 00  	auipc	a0, 2
80201a76: 13 05 e5 a6  	addi	a0, a0, -1426
80201a7a: 23 30 a4 fc  	sd	a0, -64(s0)
80201a7e: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201a82 <.LBB1_31>:
80201a82: 97 25 00 00  	auipc	a1, 2
80201a86: 93 85 e5 a8  	addi	a1, a1, -1394
80201a8a: 13 05 04 fa  	addi	a0, s0, -96
80201a8e: 97 00 00 00  	auipc	ra, 0
80201a92: e7 80 20 6e  	jalr	1762(ra)
80201a96: 00 00        	unimp	

0000000080201a98 <.LBB1_32>:
80201a98: 17 25 00 00  	auipc	a0, 2
80201a9c: 13 05 05 b1  	addi	a0, a0, -1264

0000000080201aa0 <.LBB1_33>:
80201aa0: 97 26 00 00  	auipc	a3, 2
80201aa4: 93 86 86 b3  	addi	a3, a3, -1224

0000000080201aa8 <.LBB1_34>:
80201aa8: 17 27 00 00  	auipc	a4, 2
80201aac: 13 07 07 b6  	addi	a4, a4, -1184
80201ab0: 93 05 b0 02  	li	a1, 43
80201ab4: 13 06 04 fd  	addi	a2, s0, -48
80201ab8: 97 00 00 00  	auipc	ra, 0
80201abc: e7 80 20 75  	jalr	1874(ra)
80201ac0: 00 00        	unimp	

0000000080201ac2 <_ZN6kernel6memory3kvm11kvminithart17hc6f9cd8eaa0cbd7aE>:
; pub fn kvminithart() {
80201ac2: 59 71        	addi	sp, sp, -112
;     unsafe { asm!("sfence.vma zero, zero") }
80201ac4: 86 f4        	sd	ra, 104(sp)
80201ac6: a2 f0        	sd	s0, 96(sp)
80201ac8: a6 ec        	sd	s1, 88(sp)
80201aca: ca e8        	sd	s2, 80(sp)
80201acc: ce e4        	sd	s3, 72(sp)
80201ace: 80 18        	addi	s0, sp, 112
80201ad0: 73 00 00 12  	sfence.vma
80201ad4: 0f 00 30 03  	fence	rw, rw

0000000080201ad8 <.LBB2_12>:
80201ad8: 97 34 01 00  	auipc	s1, 19
80201adc: 93 84 04 62  	addi	s1, s1, 1568
80201ae0: 88 68        	ld	a0, 16(s1)
80201ae2: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201ae6: 29 e9        	bnez	a0, 0x80201b38 <.LBB2_12+0x60>
80201ae8: 93 85 04 01  	addi	a1, s1, 16
80201aec: 85 49        	li	s3, 1
80201aee: 2f b5 05 16  	lr.d.aqrl	a0, (a1)
80201af2: 01 e5        	bnez	a0, 0x80201afa <.LBB2_12+0x22>
80201af4: 2f b6 35 1f  	sc.d.aqrl	a2, s3, (a1)
80201af8: 7d fa        	bnez	a2, 0x80201aee <.LBB2_12+0x16>
;             if status == INCOMPLETE { // We init
80201afa: 1d ed        	bnez	a0, 0x80201b38 <.LBB2_12+0x60>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201afc: 23 30 b4 fa  	sd	a1, -96(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
80201b00: 97 00 00 00  	auipc	ra, 0
80201b04: e7 80 80 c6  	jalr	-920(ra)
80201b08: 2a 89        	mv	s2, a0
80201b0a: 05 66        	lui	a2, 1
80201b0c: 81 45        	li	a1, 0
80201b0e: 97 10 00 00  	auipc	ra, 1
80201b12: e7 80 20 13  	jalr	306(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
80201b16: 23 b0 34 01  	sd	s3, 0(s1)
80201b1a: 23 b4 24 01  	sd	s2, 8(s1)
;                 finish.panicked = false;
80201b1e: 23 04 04 fa  	sb	zero, -88(s0)
80201b22: 0f 00 10 03  	fence	rw, w
80201b26: 09 45        	li	a0, 2
80201b28: 88 e8        	sd	a0, 16(s1)
80201b2a: 13 05 04 fa  	addi	a0, s0, -96
80201b2e: 97 00 00 00  	auipc	ra, 0
80201b32: e7 80 80 60  	jalr	1544(ra)
80201b36: 05 a0        	j	0x80201b56 <.LBB2_12+0x7e>
80201b38: 85 45        	li	a1, 1
;             match status {
80201b3a: 63 1b b5 00  	bne	a0, a1, 0x80201b50 <.LBB2_12+0x78>
80201b3e: 0f 00 00 01  	fence	w, 0
80201b42: 0f 00 30 03  	fence	rw, rw
80201b46: 88 68        	ld	a0, 16(s1)
80201b48: 0f 00 30 02  	fence	r, rw
;             match status {
80201b4c: e3 09 b5 fe  	beq	a0, a1, 0x80201b3e <.LBB2_12+0x66>
80201b50: 89 45        	li	a1, 2
;             match status {
80201b52: 63 16 b5 06  	bne	a0, a1, 0x80201bbe <.LBB2_15+0x28>
;         self.data.as_ptr() as Addr
80201b56: 88 64        	ld	a0, 8(s1)
;         SATP_SV39 | (satp >> PGSHIFT)
80201b58: 31 81        	srli	a0, a0, 12
80201b5a: fd 55        	li	a1, -1
80201b5c: fe 15        	slli	a1, a1, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80201b5e: 4d 8d        	or	a0, a0, a1
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
80201b60: 73 10 05 18  	csrw	satp, a0
;     unsafe { asm!("sfence.vma zero, zero") }
80201b64: 73 00 00 12  	sfence.vma
80201b68: 13 05 04 fd  	addi	a0, s0, -48
80201b6c: 23 3c a4 f8  	sd	a0, -104(s0)
80201b70: 23 30 04 fa  	sd	zero, -96(s0)

0000000080201b74 <.LBB2_13>:
80201b74: 17 25 00 00  	auipc	a0, 2
80201b78: 13 05 45 9f  	addi	a0, a0, -1548
80201b7c: 23 38 a4 fa  	sd	a0, -80(s0)
80201b80: 05 45        	li	a0, 1
80201b82: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201b86 <.LBB2_14>:
80201b86: 17 25 00 00  	auipc	a0, 2
80201b8a: 13 05 a5 95  	addi	a0, a0, -1702
80201b8e: 23 30 a4 fc  	sd	a0, -64(s0)
80201b92: 23 34 04 fc  	sd	zero, -56(s0)

0000000080201b96 <.LBB2_15>:
80201b96: 97 25 00 00  	auipc	a1, 2
80201b9a: 93 85 25 9e  	addi	a1, a1, -1566
80201b9e: 13 05 84 f9  	addi	a0, s0, -104
80201ba2: 13 06 04 fa  	addi	a2, s0, -96
80201ba6: 97 00 00 00  	auipc	ra, 0
80201baa: e7 80 20 6e  	jalr	1762(ra)
80201bae: 31 e5        	bnez	a0, 0x80201bfa <.LBB2_20>
; }
80201bb0: a6 70        	ld	ra, 104(sp)
80201bb2: 06 74        	ld	s0, 96(sp)
80201bb4: e6 64        	ld	s1, 88(sp)
80201bb6: 46 69        	ld	s2, 80(sp)
80201bb8: a6 69        	ld	s3, 72(sp)
80201bba: 65 61        	addi	sp, sp, 112
80201bbc: 82 80        	ret
;             match status {
80201bbe: 05 e1        	bnez	a0, 0x80201bde <.LBB2_18>

0000000080201bc0 <.LBB2_16>:
;                 INCOMPLETE => unreachable!(),
80201bc0: 17 15 00 00  	auipc	a0, 1
80201bc4: 13 05 85 4c  	addi	a0, a0, 1224

0000000080201bc8 <.LBB2_17>:
80201bc8: 17 16 00 00  	auipc	a2, 1
80201bcc: 13 06 86 4e  	addi	a2, a2, 1256
80201bd0: 93 05 80 02  	li	a1, 40
80201bd4: 97 00 00 00  	auipc	ra, 0
80201bd8: e7 80 a0 5c  	jalr	1482(ra)
80201bdc: 00 00        	unimp	

0000000080201bde <.LBB2_18>:
;                 PANICKED => panic!("Once has panicked"),
80201bde: 17 15 00 00  	auipc	a0, 1
80201be2: 13 05 25 42  	addi	a0, a0, 1058

0000000080201be6 <.LBB2_19>:
80201be6: 17 16 00 00  	auipc	a2, 1
80201bea: 13 06 a6 48  	addi	a2, a2, 1162
80201bee: c5 45        	li	a1, 17
80201bf0: 97 00 00 00  	auipc	ra, 0
80201bf4: e7 80 e0 5a  	jalr	1454(ra)
80201bf8: 00 00        	unimp	

0000000080201bfa <.LBB2_20>:
80201bfa: 17 25 00 00  	auipc	a0, 2
80201bfe: 13 05 e5 9a  	addi	a0, a0, -1618

0000000080201c02 <.LBB2_21>:
80201c02: 97 26 00 00  	auipc	a3, 2
80201c06: 93 86 66 9d  	addi	a3, a3, -1578

0000000080201c0a <.LBB2_22>:
80201c0a: 17 27 00 00  	auipc	a4, 2
80201c0e: 13 07 e7 9f  	addi	a4, a4, -1538
80201c12: 93 05 b0 02  	li	a1, 43
80201c16: 13 06 04 fd  	addi	a2, s0, -48
80201c1a: 97 00 00 00  	auipc	ra, 0
80201c1e: e7 80 00 5f  	jalr	1520(ra)
80201c22: 00 00        	unimp	

0000000080201c24 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17hd0476dbd38f9b83bE.llvm.14048896066354329939>:
80201c24: 41 11        	addi	sp, sp, -16
80201c26: 06 e4        	sd	ra, 8(sp)
80201c28: 22 e0        	sd	s0, 0(sp)
80201c2a: 00 08        	addi	s0, sp, 16
80201c2c: a2 60        	ld	ra, 8(sp)
80201c2e: 02 64        	ld	s0, 0(sp)
80201c30: 41 01        	addi	sp, sp, 16
80201c32: 82 80        	ret

0000000080201c34 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939>:
80201c34: 01 11        	addi	sp, sp, -32
80201c36: 06 ec        	sd	ra, 24(sp)
80201c38: 22 e8        	sd	s0, 16(sp)
80201c3a: 00 10        	addi	s0, sp, 32
80201c3c: 1b 85 05 00  	sext.w	a0, a1
80201c40: 13 06 00 08  	li	a2, 128
80201c44: 23 26 04 fe  	sw	zero, -20(s0)
80201c48: 63 76 c5 00  	bgeu	a0, a2, 0x80201c54 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x20>
80201c4c: 23 06 b4 fe  	sb	a1, -20(s0)
80201c50: 05 45        	li	a0, 1
80201c52: 51 a8        	j	0x80201ce6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xb2>
80201c54: 1b d5 b5 00  	srliw	a0, a1, 11
80201c58: 19 ed        	bnez	a0, 0x80201c76 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x42>
80201c5a: 13 d5 65 00  	srli	a0, a1, 6
80201c5e: 13 65 05 0c  	ori	a0, a0, 192
80201c62: 23 06 a4 fe  	sb	a0, -20(s0)
80201c66: 13 f5 f5 03  	andi	a0, a1, 63
80201c6a: 13 65 05 08  	ori	a0, a0, 128
80201c6e: a3 06 a4 fe  	sb	a0, -19(s0)
80201c72: 09 45        	li	a0, 2
80201c74: 8d a8        	j	0x80201ce6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xb2>
80201c76: 1b d5 05 01  	srliw	a0, a1, 16
80201c7a: 05 e9        	bnez	a0, 0x80201caa <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x76>
80201c7c: 13 95 05 02  	slli	a0, a1, 32
80201c80: 01 91        	srli	a0, a0, 32
80201c82: 1b d6 c5 00  	srliw	a2, a1, 12
80201c86: 13 66 06 0e  	ori	a2, a2, 224
80201c8a: 23 06 c4 fe  	sb	a2, -20(s0)
80201c8e: 52 15        	slli	a0, a0, 52
80201c90: 69 91        	srli	a0, a0, 58
80201c92: 13 65 05 08  	ori	a0, a0, 128
80201c96: a3 06 a4 fe  	sb	a0, -19(s0)
80201c9a: 13 f5 f5 03  	andi	a0, a1, 63
80201c9e: 13 65 05 08  	ori	a0, a0, 128
80201ca2: 23 07 a4 fe  	sb	a0, -18(s0)
80201ca6: 0d 45        	li	a0, 3
80201ca8: 3d a8        	j	0x80201ce6 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xb2>
80201caa: 13 95 05 02  	slli	a0, a1, 32
80201cae: 01 91        	srli	a0, a0, 32
80201cb0: 13 16 b5 02  	slli	a2, a0, 43
80201cb4: 75 92        	srli	a2, a2, 61
80201cb6: 13 66 06 0f  	ori	a2, a2, 240
80201cba: 23 06 c4 fe  	sb	a2, -20(s0)
80201cbe: 13 16 e5 02  	slli	a2, a0, 46
80201cc2: 69 92        	srli	a2, a2, 58
80201cc4: 13 66 06 08  	ori	a2, a2, 128
80201cc8: a3 06 c4 fe  	sb	a2, -19(s0)
80201ccc: 52 15        	slli	a0, a0, 52
80201cce: 69 91        	srli	a0, a0, 58
80201cd0: 13 65 05 08  	ori	a0, a0, 128
80201cd4: 23 07 a4 fe  	sb	a0, -18(s0)
80201cd8: 13 f5 f5 03  	andi	a0, a1, 63
80201cdc: 13 65 05 08  	ori	a0, a0, 128
80201ce0: a3 07 a4 fe  	sb	a0, -17(s0)
80201ce4: 11 45        	li	a0, 4
80201ce6: 93 06 c4 fe  	addi	a3, s0, -20
80201cea: 33 87 a6 00  	add	a4, a3, a0
80201cee: 13 03 f0 0d  	li	t1, 223
80201cf2: 13 08 00 0f  	li	a6, 240
80201cf6: b7 02 11 00  	lui	t0, 272
80201cfa: 85 48        	li	a7, 1
80201cfc: 01 a8        	j	0x80201d0c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xd8>
80201cfe: 85 06        	addi	a3, a3, 1
;         asm!(
80201d00: 81 45        	li	a1, 0
80201d02: 01 46        	li	a2, 0
80201d04: 73 00 00 00  	ecall	
80201d08: 63 8f e6 04  	beq	a3, a4, 0x80201d66 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x132>
80201d0c: 83 85 06 00  	lb	a1, 0(a3)
80201d10: 13 f5 f5 0f  	andi	a0, a1, 255
80201d14: e3 d5 05 fe  	bgez	a1, 0x80201cfe <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xca>
80201d18: 03 c6 16 00  	lbu	a2, 1(a3)
80201d1c: 93 75 f5 01  	andi	a1, a0, 31
80201d20: 13 76 f6 03  	andi	a2, a2, 63
80201d24: 63 77 a3 02  	bgeu	t1, a0, 0x80201d52 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x11e>
80201d28: 83 c7 26 00  	lbu	a5, 2(a3)
80201d2c: 1a 06        	slli	a2, a2, 6
80201d2e: 93 f7 f7 03  	andi	a5, a5, 63
80201d32: 5d 8e        	or	a2, a2, a5
80201d34: 63 64 05 03  	bltu	a0, a6, 0x80201d5c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x128>
80201d38: 03 c5 36 00  	lbu	a0, 3(a3)
80201d3c: f6 15        	slli	a1, a1, 61
80201d3e: ad 91        	srli	a1, a1, 43
80201d40: 1a 06        	slli	a2, a2, 6
80201d42: 13 75 f5 03  	andi	a0, a0, 63
80201d46: 51 8d        	or	a0, a0, a2
80201d48: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201d4a: 63 0e 55 00  	beq	a0, t0, 0x80201d66 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0x132>
80201d4e: 91 06        	addi	a3, a3, 4
80201d50: 45 bf        	j	0x80201d00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xcc>
80201d52: 89 06        	addi	a3, a3, 2
80201d54: 13 95 65 00  	slli	a0, a1, 6
80201d58: 51 8d        	or	a0, a0, a2
80201d5a: 5d b7        	j	0x80201d00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xcc>
80201d5c: 8d 06        	addi	a3, a3, 3
80201d5e: 13 95 c5 00  	slli	a0, a1, 12
80201d62: 51 8d        	or	a0, a0, a2
80201d64: 71 bf        	j	0x80201d00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14048896066354329939+0xcc>
80201d66: 01 45        	li	a0, 0
80201d68: e2 60        	ld	ra, 24(sp)
80201d6a: 42 64        	ld	s0, 16(sp)
80201d6c: 05 61        	addi	sp, sp, 32
80201d6e: 82 80        	ret

0000000080201d70 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd5f3e9c38259cfbdE.llvm.14048896066354329939>:
80201d70: 5d 71        	addi	sp, sp, -80
80201d72: 86 e4        	sd	ra, 72(sp)
80201d74: a2 e0        	sd	s0, 64(sp)
80201d76: 80 08        	addi	s0, sp, 80
80201d78: 08 61        	ld	a0, 0(a0)
80201d7a: 90 75        	ld	a2, 40(a1)
80201d7c: 94 71        	ld	a3, 32(a1)
80201d7e: 23 3c a4 fa  	sd	a0, -72(s0)
80201d82: 23 34 c4 fe  	sd	a2, -24(s0)
80201d86: 23 30 d4 fe  	sd	a3, -32(s0)
80201d8a: 88 6d        	ld	a0, 24(a1)
80201d8c: 90 69        	ld	a2, 16(a1)
80201d8e: 94 65        	ld	a3, 8(a1)
80201d90: 8c 61        	ld	a1, 0(a1)
80201d92: 23 3c a4 fc  	sd	a0, -40(s0)
80201d96: 23 38 c4 fc  	sd	a2, -48(s0)
80201d9a: 23 34 d4 fc  	sd	a3, -56(s0)
80201d9e: 23 30 b4 fc  	sd	a1, -64(s0)

0000000080201da2 <.LBB2_1>:
80201da2: 97 15 00 00  	auipc	a1, 1
80201da6: 93 85 65 7d  	addi	a1, a1, 2006
80201daa: 13 05 84 fb  	addi	a0, s0, -72
80201dae: 13 06 04 fc  	addi	a2, s0, -64
80201db2: 97 00 00 00  	auipc	ra, 0
80201db6: e7 80 60 4d  	jalr	1238(ra)
80201dba: a6 60        	ld	ra, 72(sp)
80201dbc: 06 64        	ld	s0, 64(sp)
80201dbe: 61 61        	addi	sp, sp, 80
80201dc0: 82 80        	ret

0000000080201dc2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939>:
80201dc2: 41 11        	addi	sp, sp, -16
80201dc4: 06 e4        	sd	ra, 8(sp)
80201dc6: 22 e0        	sd	s0, 0(sp)
80201dc8: 00 08        	addi	s0, sp, 16
80201dca: 41 c2        	beqz	a2, 0x80201e4a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x88>
80201dcc: ae 86        	mv	a3, a1
80201dce: 33 87 c5 00  	add	a4, a1, a2
80201dd2: 13 03 f0 0d  	li	t1, 223
80201dd6: 13 08 00 0f  	li	a6, 240
80201dda: b7 02 11 00  	lui	t0, 272
80201dde: 85 48        	li	a7, 1
80201de0: 01 a8        	j	0x80201df0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x2e>
80201de2: 85 06        	addi	a3, a3, 1
;         asm!(
80201de4: 81 45        	li	a1, 0
80201de6: 01 46        	li	a2, 0
80201de8: 73 00 00 00  	ecall	
80201dec: 63 8f e6 04  	beq	a3, a4, 0x80201e4a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x88>
80201df0: 83 85 06 00  	lb	a1, 0(a3)
80201df4: 13 f5 f5 0f  	andi	a0, a1, 255
80201df8: e3 d5 05 fe  	bgez	a1, 0x80201de2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x20>
80201dfc: 03 c6 16 00  	lbu	a2, 1(a3)
80201e00: 93 75 f5 01  	andi	a1, a0, 31
80201e04: 13 76 f6 03  	andi	a2, a2, 63
80201e08: 63 77 a3 02  	bgeu	t1, a0, 0x80201e36 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x74>
80201e0c: 83 c7 26 00  	lbu	a5, 2(a3)
80201e10: 1a 06        	slli	a2, a2, 6
80201e12: 93 f7 f7 03  	andi	a5, a5, 63
80201e16: 5d 8e        	or	a2, a2, a5
80201e18: 63 64 05 03  	bltu	a0, a6, 0x80201e40 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x7e>
80201e1c: 03 c5 36 00  	lbu	a0, 3(a3)
80201e20: f6 15        	slli	a1, a1, 61
80201e22: ad 91        	srli	a1, a1, 43
80201e24: 1a 06        	slli	a2, a2, 6
80201e26: 13 75 f5 03  	andi	a0, a0, 63
80201e2a: 51 8d        	or	a0, a0, a2
80201e2c: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80201e2e: 63 0e 55 00  	beq	a0, t0, 0x80201e4a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x88>
80201e32: 91 06        	addi	a3, a3, 4
80201e34: 45 bf        	j	0x80201de4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x22>
80201e36: 89 06        	addi	a3, a3, 2
80201e38: 13 95 65 00  	slli	a0, a1, 6
80201e3c: 51 8d        	or	a0, a0, a2
80201e3e: 5d b7        	j	0x80201de4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x22>
80201e40: 8d 06        	addi	a3, a3, 3
80201e42: 13 95 c5 00  	slli	a0, a1, 12
80201e46: 51 8d        	or	a0, a0, a2
80201e48: 71 bf        	j	0x80201de4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14048896066354329939+0x22>
80201e4a: 01 45        	li	a0, 0
80201e4c: a2 60        	ld	ra, 8(sp)
80201e4e: 02 64        	ld	s0, 0(sp)
80201e50: 41 01        	addi	sp, sp, 16
80201e52: 82 80        	ret

0000000080201e54 <_ZN6kernel7console5print17h1ef73275907ef8e0E>:
; pub fn print(args: fmt::Arguments) {
80201e54: 5d 71        	addi	sp, sp, -80
80201e56: 86 e4        	sd	ra, 72(sp)
80201e58: a2 e0        	sd	s0, 64(sp)
80201e5a: 80 08        	addi	s0, sp, 80
80201e5c: 0c 75        	ld	a1, 40(a0)
80201e5e: 10 71        	ld	a2, 32(a0)
80201e60: 93 06 84 fe  	addi	a3, s0, -24
80201e64: 23 38 d4 fa  	sd	a3, -80(s0)
80201e68: 23 30 b4 fe  	sd	a1, -32(s0)
80201e6c: 23 3c c4 fc  	sd	a2, -40(s0)
80201e70: 0c 6d        	ld	a1, 24(a0)
80201e72: 10 69        	ld	a2, 16(a0)
80201e74: 14 65        	ld	a3, 8(a0)
80201e76: 08 61        	ld	a0, 0(a0)
80201e78: 23 38 b4 fc  	sd	a1, -48(s0)
80201e7c: 23 34 c4 fc  	sd	a2, -56(s0)
80201e80: 23 30 d4 fc  	sd	a3, -64(s0)
80201e84: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080201e88 <.LBB4_3>:
80201e88: 97 15 00 00  	auipc	a1, 1
80201e8c: 93 85 05 6f  	addi	a1, a1, 1776
80201e90: 13 05 04 fb  	addi	a0, s0, -80
80201e94: 13 06 84 fb  	addi	a2, s0, -72
80201e98: 97 00 00 00  	auipc	ra, 0
80201e9c: e7 80 00 3f  	jalr	1008(ra)
80201ea0: 09 e5        	bnez	a0, 0x80201eaa <.LBB4_4>
; }
80201ea2: a6 60        	ld	ra, 72(sp)
80201ea4: 06 64        	ld	s0, 64(sp)
80201ea6: 61 61        	addi	sp, sp, 80
80201ea8: 82 80        	ret

0000000080201eaa <.LBB4_4>:
80201eaa: 17 15 00 00  	auipc	a0, 1
80201eae: 13 05 e5 6f  	addi	a0, a0, 1790

0000000080201eb2 <.LBB4_5>:
80201eb2: 97 16 00 00  	auipc	a3, 1
80201eb6: 93 86 66 72  	addi	a3, a3, 1830

0000000080201eba <.LBB4_6>:
80201eba: 17 17 00 00  	auipc	a4, 1
80201ebe: 13 07 e7 74  	addi	a4, a4, 1870
80201ec2: 93 05 b0 02  	li	a1, 43
80201ec6: 13 06 84 fe  	addi	a2, s0, -24
80201eca: 97 00 00 00  	auipc	ra, 0
80201ece: e7 80 00 34  	jalr	832(ra)
80201ed2: 00 00        	unimp	

0000000080201ed4 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
80201ed4: 71 71        	addi	sp, sp, -176
80201ed6: 06 f5        	sd	ra, 168(sp)
80201ed8: 22 f1        	sd	s0, 160(sp)
80201eda: 26 ed        	sd	s1, 152(sp)
80201edc: 00 19        	addi	s0, sp, 176
80201ede: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
80201ee0: 97 00 00 00  	auipc	ra, 0
80201ee4: e7 80 80 28  	jalr	648(ra)
80201ee8: 05 e1        	bnez	a0, 0x80201f08 <.LBB0_8+0x16>

0000000080201eea <.LBB0_7>:
80201eea: 17 15 00 00  	auipc	a0, 1
80201eee: 13 05 65 7b  	addi	a0, a0, 1974

0000000080201ef2 <.LBB0_8>:
80201ef2: 17 16 00 00  	auipc	a2, 1
80201ef6: 13 06 e6 7e  	addi	a2, a2, 2030
80201efa: 93 05 b0 02  	li	a1, 43
80201efe: 97 00 00 00  	auipc	ra, 0
80201f02: e7 80 00 2a  	jalr	672(ra)
80201f06: 00 00        	unimp	
80201f08: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
80201f0c: 26 85        	mv	a0, s1
80201f0e: 97 00 00 00  	auipc	ra, 0
80201f12: e7 80 e0 25  	jalr	606(ra)
80201f16: 3d e1        	bnez	a0, 0x80201f7c <.LBB0_11+0x24>
80201f18: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
80201f1c: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080201f20 <.LBB0_9>:
80201f20: 17 f5 ff ff  	auipc	a0, 1048575
80201f24: 13 05 c5 3c  	addi	a0, a0, 972
80201f28: 23 34 a4 f6  	sd	a0, -152(s0)
80201f2c: 13 05 04 fe  	addi	a0, s0, -32
80201f30: 23 38 a4 f8  	sd	a0, -112(s0)
80201f34: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201f38 <.LBB0_10>:
80201f38: 17 15 00 00  	auipc	a0, 1
80201f3c: 13 05 85 6f  	addi	a0, a0, 1784
80201f40: 23 30 a4 fc  	sd	a0, -64(s0)
80201f44: 09 45        	li	a0, 2
80201f46: 23 34 a4 fc  	sd	a0, -56(s0)
80201f4a: 13 05 04 f6  	addi	a0, s0, -160
80201f4e: 23 38 a4 fc  	sd	a0, -48(s0)
80201f52: 05 45        	li	a0, 1
80201f54: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201f58 <.LBB0_11>:
80201f58: 97 15 00 00  	auipc	a1, 1
80201f5c: 93 85 05 62  	addi	a1, a1, 1568
80201f60: 13 05 04 f9  	addi	a0, s0, -112
80201f64: 13 06 04 fb  	addi	a2, s0, -80
80201f68: 97 00 00 00  	auipc	ra, 0
80201f6c: e7 80 00 32  	jalr	800(ra)
80201f70: 45 e1        	bnez	a0, 0x80202010 <.LBB0_17>
;     shutdown()
80201f72: 97 f0 ff ff  	auipc	ra, 1048575
80201f76: e7 80 00 27  	jalr	624(ra)
80201f7a: 00 00        	unimp	
80201f7c: 0c 61        	ld	a1, 0(a0)
80201f7e: 10 65        	ld	a2, 8(a0)
80201f80: 23 38 b4 f8  	sd	a1, -112(s0)
80201f84: 23 3c c4 f8  	sd	a2, -104(s0)
80201f88: 08 49        	lw	a0, 16(a0)
80201f8a: 23 22 a4 fa  	sw	a0, -92(s0)
80201f8e: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
80201f92: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080201f96 <.LBB0_12>:
80201f96: 17 f5 ff ff  	auipc	a0, 1048575
80201f9a: 13 05 45 33  	addi	a0, a0, 820
80201f9e: 23 34 a4 f6  	sd	a0, -152(s0)
80201fa2: 13 05 44 fa  	addi	a0, s0, -92
80201fa6: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080201faa <.LBB0_13>:
80201faa: 17 15 00 00  	auipc	a0, 1
80201fae: 13 05 e5 c4  	addi	a0, a0, -946
80201fb2: 23 3c a4 f6  	sd	a0, -136(s0)
80201fb6: 13 05 84 f5  	addi	a0, s0, -168
80201fba: 23 30 a4 f8  	sd	a0, -128(s0)

0000000080201fbe <.LBB0_14>:
80201fbe: 17 f5 ff ff  	auipc	a0, 1048575
80201fc2: 13 05 e5 32  	addi	a0, a0, 814
80201fc6: 23 34 a4 f8  	sd	a0, -120(s0)
80201fca: 13 05 04 fe  	addi	a0, s0, -32
80201fce: 23 34 a4 fa  	sd	a0, -88(s0)
80201fd2: 23 38 04 fa  	sd	zero, -80(s0)

0000000080201fd6 <.LBB0_15>:
80201fd6: 17 15 00 00  	auipc	a0, 1
80201fda: 13 05 a5 68  	addi	a0, a0, 1674
80201fde: 23 30 a4 fc  	sd	a0, -64(s0)
80201fe2: 11 45        	li	a0, 4
80201fe4: 23 34 a4 fc  	sd	a0, -56(s0)
80201fe8: 13 05 04 f6  	addi	a0, s0, -160
80201fec: 23 38 a4 fc  	sd	a0, -48(s0)
80201ff0: 0d 45        	li	a0, 3
80201ff2: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080201ff6 <.LBB0_16>:
80201ff6: 97 15 00 00  	auipc	a1, 1
80201ffa: 93 85 25 58  	addi	a1, a1, 1410
80201ffe: 13 05 84 fa  	addi	a0, s0, -88
80202002: 13 06 04 fb  	addi	a2, s0, -80
80202006: 97 00 00 00  	auipc	ra, 0
8020200a: e7 80 20 28  	jalr	642(ra)
8020200e: 35 d1        	beqz	a0, 0x80201f72 <.LBB0_11+0x1a>

0000000080202010 <.LBB0_17>:
80202010: 17 15 00 00  	auipc	a0, 1
80202014: 13 05 85 59  	addi	a0, a0, 1432

0000000080202018 <.LBB0_18>:
80202018: 97 16 00 00  	auipc	a3, 1
8020201c: 93 86 06 5c  	addi	a3, a3, 1472

0000000080202020 <.LBB0_19>:
80202020: 17 17 00 00  	auipc	a4, 1
80202024: 13 07 87 5e  	addi	a4, a4, 1512
80202028: 93 05 b0 02  	li	a1, 43
8020202c: 13 06 04 fe  	addi	a2, s0, -32
80202030: 97 00 00 00  	auipc	ra, 0
80202034: e7 80 a0 1d  	jalr	474(ra)
80202038: 00 00        	unimp	

000000008020203a <main>:
; pub fn main() {
8020203a: 5d 71        	addi	sp, sp, -80
8020203c: 86 e4        	sd	ra, 72(sp)
8020203e: a2 e0        	sd	s0, 64(sp)
80202040: 26 fc        	sd	s1, 56(sp)
80202042: 4a f8        	sd	s2, 48(sp)
80202044: 80 08        	addi	s0, sp, 80

0000000080202046 <.LBB0_8>:
80202046: 17 45 01 00  	auipc	a0, 20
8020204a: 13 05 a5 fb  	addi	a0, a0, -70

000000008020204e <.LBB0_9>:
8020204e: 97 35 01 00  	auipc	a1, 19
80202052: 93 85 25 fb  	addi	a1, a1, -78
80202056: 63 f9 a5 00  	bgeu	a1, a0, 0x80202068 <.LBB0_9+0x1a>
8020205a: 13 86 15 00  	addi	a2, a1, 1
8020205e: 23 80 05 00  	sb	zero, 0(a1)
80202062: b2 85        	mv	a1, a2
80202064: e3 6b a6 fe  	bltu	a2, a0, 0x8020205a <.LBB0_9+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202068: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
8020206a: 01 c9        	beqz	a0, 0x8020207a <.LBB0_10+0xe>

000000008020206c <.LBB0_10>:
;         while unsafe { started } == 0 {}
8020206c: 17 35 01 00  	auipc	a0, 19
80202070: 13 05 45 0a  	addi	a0, a0, 164
80202074: 08 61        	ld	a0, 0(a0)
80202076: 41 e1        	bnez	a0, 0x802020f6 <.LBB0_13+0x42>
80202078: 01 a0        	j	0x80202078 <.LBB0_10+0xc>
;         print_logo();
8020207a: 97 f0 ff ff  	auipc	ra, 1048575
8020207e: e7 80 80 1b  	jalr	440(ra)

0000000080202082 <.LBB0_11>:
80202082: 17 15 00 00  	auipc	a0, 1
80202086: 13 05 65 69  	addi	a0, a0, 1686
8020208a: 23 30 a4 fc  	sd	a0, -64(s0)
8020208e: 05 49        	li	s2, 1
80202090: 23 34 24 fd  	sd	s2, -56(s0)
80202094: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202098 <.LBB0_12>:
80202098: 97 14 00 00  	auipc	s1, 1
8020209c: 93 84 04 66  	addi	s1, s1, 1632
802020a0: 23 38 94 fc  	sd	s1, -48(s0)
802020a4: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
802020a8: 13 05 04 fb  	addi	a0, s0, -80
802020ac: 97 00 00 00  	auipc	ra, 0
802020b0: e7 80 80 da  	jalr	-600(ra)

00000000802020b4 <.LBB0_13>:
802020b4: 17 15 00 00  	auipc	a0, 1
802020b8: 13 05 c5 67  	addi	a0, a0, 1660
802020bc: 23 30 a4 fc  	sd	a0, -64(s0)
802020c0: 23 34 24 fd  	sd	s2, -56(s0)
802020c4: 23 38 04 fa  	sd	zero, -80(s0)
802020c8: 23 38 94 fc  	sd	s1, -48(s0)
802020cc: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
802020d0: 13 05 04 fb  	addi	a0, s0, -80
802020d4: 97 00 00 00  	auipc	ra, 0
802020d8: e7 80 00 d8  	jalr	-640(ra)
;         kinit();
802020dc: 97 f0 ff ff  	auipc	ra, 1048575
802020e0: e7 80 20 48  	jalr	1154(ra)
;         kvminit();
802020e4: 97 f0 ff ff  	auipc	ra, 1048575
802020e8: e7 80 e0 79  	jalr	1950(ra)
;         kvminithart();
802020ec: 97 00 00 00  	auipc	ra, 0
802020f0: e7 80 60 9d  	jalr	-1578(ra)
802020f4: 19 a0        	j	0x802020fa <.LBB0_14>
802020f6: 0f 00 30 03  	fence	rw, rw

00000000802020fa <.LBB0_14>:
802020fa: 17 15 00 00  	auipc	a0, 1
802020fe: 13 05 65 65  	addi	a0, a0, 1622
80202102: 23 30 a4 fc  	sd	a0, -64(s0)
80202106: 05 45        	li	a0, 1
80202108: 23 34 a4 fc  	sd	a0, -56(s0)
8020210c: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202110 <.LBB0_15>:
80202110: 17 15 00 00  	auipc	a0, 1
80202114: 13 05 85 5e  	addi	a0, a0, 1512
80202118: 23 38 a4 fc  	sd	a0, -48(s0)
8020211c: 23 3c 04 fc  	sd	zero, -40(s0)

0000000080202120 <.LBB0_16>:
;     panic!("Shutdown!");
80202120: 97 15 00 00  	auipc	a1, 1
80202124: 93 85 05 65  	addi	a1, a1, 1616
80202128: 13 05 04 fb  	addi	a0, s0, -80
8020212c: 97 00 00 00  	auipc	ra, 0
80202130: e7 80 40 04  	jalr	68(ra)
80202134: 00 00        	unimp	

0000000080202136 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
80202136: 41 11        	addi	sp, sp, -16
;         if self.panicked {
80202138: 06 e4        	sd	ra, 8(sp)
8020213a: 22 e0        	sd	s0, 0(sp)
8020213c: 00 08        	addi	s0, sp, 16
8020213e: 83 45 85 00  	lbu	a1, 8(a0)
80202142: 91 c5        	beqz	a1, 0x8020214e <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80202144: 08 61        	ld	a0, 0(a0)
80202146: 0f 00 10 03  	fence	rw, w
8020214a: 8d 45        	li	a1, 3
8020214c: 0c e1        	sd	a1, 0(a0)
;     }
8020214e: a2 60        	ld	ra, 8(sp)
80202150: 02 64        	ld	s0, 0(sp)
80202152: 41 01        	addi	sp, sp, 16
80202154: 82 80        	ret

0000000080202156 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
80202156: 08 61        	ld	a0, 0(a0)
80202158: 01 a0        	j	0x80202158 <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

000000008020215a <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
8020215a: 82 80        	ret

000000008020215c <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
8020215c: 17 25 00 00  	auipc	a0, 2
80202160: 13 05 c5 f8  	addi	a0, a0, -116
80202164: 08 61        	ld	a0, 0(a0)
80202166: 82 80        	ret

0000000080202168 <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
80202168: 08 69        	ld	a0, 16(a0)
8020216a: 82 80        	ret

000000008020216c <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
8020216c: 08 6d        	ld	a0, 24(a0)
8020216e: 82 80        	ret

0000000080202170 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80202170: 79 71        	addi	sp, sp, -48
80202172: 06 f4        	sd	ra, 40(sp)

0000000080202174 <.LBB170_1>:
80202174: 17 16 00 00  	auipc	a2, 1
80202178: 13 06 46 61  	addi	a2, a2, 1556
8020217c: 32 e0        	sd	a2, 0(sp)

000000008020217e <.LBB170_2>:
8020217e: 17 16 00 00  	auipc	a2, 1
80202182: 13 06 26 66  	addi	a2, a2, 1634
80202186: 32 e4        	sd	a2, 8(sp)
80202188: 2a e8        	sd	a0, 16(sp)
8020218a: 2e ec        	sd	a1, 24(sp)
8020218c: 05 45        	li	a0, 1
8020218e: 23 00 a1 02  	sb	a0, 32(sp)
80202192: 0a 85        	mv	a0, sp
80202194: 97 00 00 00  	auipc	ra, 0
80202198: e7 80 00 d4  	jalr	-704(ra)
8020219c: 00 00        	unimp	

000000008020219e <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
8020219e: 5d 71        	addi	sp, sp, -80
802021a0: 86 e4        	sd	ra, 72(sp)
802021a2: 2a fc        	sd	a0, 56(sp)
802021a4: ae e0        	sd	a1, 64(sp)
802021a6: 28 18        	addi	a0, sp, 56
802021a8: 2a ec        	sd	a0, 24(sp)
802021aa: 05 45        	li	a0, 1
802021ac: 2a f0        	sd	a0, 32(sp)
802021ae: 02 e4        	sd	zero, 8(sp)

00000000802021b0 <.LBB172_1>:
802021b0: 17 15 00 00  	auipc	a0, 1
802021b4: 13 05 85 5d  	addi	a0, a0, 1496
802021b8: 2a f4        	sd	a0, 40(sp)
802021ba: 02 f8        	sd	zero, 48(sp)
802021bc: 28 00        	addi	a0, sp, 8
802021be: b2 85        	mv	a1, a2
802021c0: 97 00 00 00  	auipc	ra, 0
802021c4: e7 80 00 fb  	jalr	-80(ra)
802021c8: 00 00        	unimp	

00000000802021ca <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
802021ca: 59 71        	addi	sp, sp, -112
802021cc: 86 f4        	sd	ra, 104(sp)
802021ce: 2a e4        	sd	a0, 8(sp)
802021d0: 2e e8        	sd	a1, 16(sp)
802021d2: 08 08        	addi	a0, sp, 16
802021d4: aa e4        	sd	a0, 72(sp)

00000000802021d6 <.LBB176_1>:
802021d6: 17 15 00 00  	auipc	a0, 1
802021da: 13 05 25 a3  	addi	a0, a0, -1486
802021de: aa e8        	sd	a0, 80(sp)
802021e0: 2c 00        	addi	a1, sp, 8
802021e2: ae ec        	sd	a1, 88(sp)
802021e4: aa f0        	sd	a0, 96(sp)

00000000802021e6 <.LBB176_2>:
802021e6: 17 15 00 00  	auipc	a0, 1
802021ea: 13 05 a5 5d  	addi	a0, a0, 1498
802021ee: 2a f4        	sd	a0, 40(sp)
802021f0: 09 45        	li	a0, 2
802021f2: 2a f8        	sd	a0, 48(sp)
802021f4: 02 ec        	sd	zero, 24(sp)
802021f6: ac 00        	addi	a1, sp, 72
802021f8: 2e fc        	sd	a1, 56(sp)
802021fa: aa e0        	sd	a0, 64(sp)
802021fc: 28 08        	addi	a0, sp, 24
802021fe: b2 85        	mv	a1, a2
80202200: 97 00 00 00  	auipc	ra, 0
80202204: e7 80 00 f7  	jalr	-144(ra)
80202208: 00 00        	unimp	

000000008020220a <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
8020220a: 19 71        	addi	sp, sp, -128
8020220c: 86 fc        	sd	ra, 120(sp)
8020220e: 2a e4        	sd	a0, 8(sp)
80202210: 2e e8        	sd	a1, 16(sp)
80202212: 32 ec        	sd	a2, 24(sp)
80202214: 36 f0        	sd	a3, 32(sp)
80202216: 28 00        	addi	a0, sp, 8
80202218: aa ec        	sd	a0, 88(sp)

000000008020221a <.LBB183_1>:
8020221a: 17 15 00 00  	auipc	a0, 1
8020221e: 13 05 65 a1  	addi	a0, a0, -1514
80202222: aa f0        	sd	a0, 96(sp)
80202224: 28 08        	addi	a0, sp, 24
80202226: aa f4        	sd	a0, 104(sp)

0000000080202228 <.LBB183_2>:
80202228: 17 15 00 00  	auipc	a0, 1
8020222c: 13 05 05 a0  	addi	a0, a0, -1536
80202230: aa f8        	sd	a0, 112(sp)

0000000080202232 <.LBB183_3>:
80202232: 17 15 00 00  	auipc	a0, 1
80202236: 13 05 65 5d  	addi	a0, a0, 1494
8020223a: 2a fc        	sd	a0, 56(sp)
8020223c: 09 45        	li	a0, 2
8020223e: aa e0        	sd	a0, 64(sp)
80202240: 02 f4        	sd	zero, 40(sp)
80202242: ac 08        	addi	a1, sp, 88
80202244: ae e4        	sd	a1, 72(sp)
80202246: aa e8        	sd	a0, 80(sp)
80202248: 28 10        	addi	a0, sp, 40
8020224a: ba 85        	mv	a1, a4
8020224c: 97 00 00 00  	auipc	ra, 0
80202250: e7 80 40 f2  	jalr	-220(ra)
80202254: 00 00        	unimp	

0000000080202256 <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80202256: 39 71        	addi	sp, sp, -64
80202258: 06 fc        	sd	ra, 56(sp)
8020225a: 10 75        	ld	a2, 40(a0)
8020225c: 18 71        	ld	a4, 32(a0)
8020225e: 1c 6d        	ld	a5, 24(a0)
80202260: 32 f8        	sd	a2, 48(sp)
80202262: 94 61        	ld	a3, 0(a1)
80202264: 3a f4        	sd	a4, 40(sp)
80202266: 3e f0        	sd	a5, 32(sp)
80202268: 10 69        	ld	a2, 16(a0)
8020226a: 18 65        	ld	a4, 8(a0)
8020226c: 08 61        	ld	a0, 0(a0)
8020226e: 8c 65        	ld	a1, 8(a1)
80202270: 32 ec        	sd	a2, 24(sp)
80202272: 3a e8        	sd	a4, 16(sp)
80202274: 2a e4        	sd	a0, 8(sp)
80202276: 30 00        	addi	a2, sp, 8
80202278: 36 85        	mv	a0, a3
8020227a: 97 00 00 00  	auipc	ra, 0
8020227e: e7 80 e0 00  	jalr	14(ra)
80202282: e2 70        	ld	ra, 56(sp)
80202284: 21 61        	addi	sp, sp, 64
80202286: 82 80        	ret

0000000080202288 <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80202288: 19 71        	addi	sp, sp, -128
8020228a: 86 fc        	sd	ra, 120(sp)
8020228c: a2 f8        	sd	s0, 112(sp)
8020228e: a6 f4        	sd	s1, 104(sp)
80202290: ca f0        	sd	s2, 96(sp)
80202292: ce ec        	sd	s3, 88(sp)
80202294: d2 e8        	sd	s4, 80(sp)
80202296: d6 e4        	sd	s5, 72(sp)
80202298: da e0        	sd	s6, 64(sp)
8020229a: b2 89        	mv	s3, a2
8020229c: 05 46        	li	a2, 1
8020229e: 16 16        	slli	a2, a2, 37
802022a0: 32 f8        	sd	a2, 48(sp)
802022a2: 0d 46        	li	a2, 3
802022a4: 23 0c c1 02  	sb	a2, 56(sp)
802022a8: 03 b6 09 00  	ld	a2, 0(s3)
802022ac: 02 e8        	sd	zero, 16(sp)
802022ae: 02 f0        	sd	zero, 32(sp)
802022b0: 2a e0        	sd	a0, 0(sp)
802022b2: 2e e4        	sd	a1, 8(sp)
802022b4: 69 c6        	beqz	a2, 0x8020237e <.LBB220_31+0x9e>
802022b6: 03 b5 89 00  	ld	a0, 8(s3)
802022ba: 63 0e 05 10  	beqz	a0, 0x802023d6 <.LBB220_31+0xf6>
802022be: 83 b5 09 01  	ld	a1, 16(s3)
802022c2: 93 06 f5 ff  	addi	a3, a0, -1
802022c6: 8e 06        	slli	a3, a3, 3
802022c8: 8d 82        	srli	a3, a3, 3
802022ca: 13 89 16 00  	addi	s2, a3, 1
802022ce: 93 84 85 00  	addi	s1, a1, 8
802022d2: 93 05 80 03  	li	a1, 56
802022d6: 33 0a b5 02  	mul	s4, a0, a1
802022da: 13 04 86 01  	addi	s0, a2, 24
802022de: 85 4a        	li	s5, 1

00000000802022e0 <.LBB220_31>:
802022e0: 17 0b 00 00  	auipc	s6, 0
802022e4: 13 0b 6b e7  	addi	s6, s6, -394
802022e8: 90 60        	ld	a2, 0(s1)
802022ea: 09 ca        	beqz	a2, 0x802022fc <.LBB220_31+0x1c>
802022ec: a2 66        	ld	a3, 8(sp)
802022ee: 02 65        	ld	a0, 0(sp)
802022f0: 83 b5 84 ff  	ld	a1, -8(s1)
802022f4: 94 6e        	ld	a3, 24(a3)
802022f6: 82 96        	jalr	a3
802022f8: 63 11 05 10  	bnez	a0, 0x802023fa <.LBB220_31+0x11a>
802022fc: 48 44        	lw	a0, 12(s0)
802022fe: 2a da        	sw	a0, 52(sp)
80202300: 03 05 04 01  	lb	a0, 16(s0)
80202304: 23 0c a1 02  	sb	a0, 56(sp)
80202308: 0c 44        	lw	a1, 8(s0)
8020230a: 03 b5 09 02  	ld	a0, 32(s3)
8020230e: 2e d8        	sw	a1, 48(sp)
80202310: 83 36 84 ff  	ld	a3, -8(s0)
80202314: 0c 60        	ld	a1, 0(s0)
80202316: 89 ce        	beqz	a3, 0x80202330 <.LBB220_31+0x50>
80202318: 01 46        	li	a2, 0
8020231a: 63 9c 56 01  	bne	a3, s5, 0x80202332 <.LBB220_31+0x52>
8020231e: 92 05        	slli	a1, a1, 4
80202320: aa 95        	add	a1, a1, a0
80202322: 90 65        	ld	a2, 8(a1)
80202324: 63 04 66 01  	beq	a2, s6, 0x8020232c <.LBB220_31+0x4c>
80202328: 01 46        	li	a2, 0
8020232a: 21 a0        	j	0x80202332 <.LBB220_31+0x52>
8020232c: 8c 61        	ld	a1, 0(a1)
8020232e: 8c 61        	ld	a1, 0(a1)
80202330: 05 46        	li	a2, 1
80202332: 32 e8        	sd	a2, 16(sp)
80202334: 2e ec        	sd	a1, 24(sp)
80202336: 83 36 84 fe  	ld	a3, -24(s0)
8020233a: 83 35 04 ff  	ld	a1, -16(s0)
8020233e: 89 ce        	beqz	a3, 0x80202358 <.LBB220_31+0x78>
80202340: 01 46        	li	a2, 0
80202342: 63 9c 56 01  	bne	a3, s5, 0x8020235a <.LBB220_31+0x7a>
80202346: 92 05        	slli	a1, a1, 4
80202348: aa 95        	add	a1, a1, a0
8020234a: 90 65        	ld	a2, 8(a1)
8020234c: 63 04 66 01  	beq	a2, s6, 0x80202354 <.LBB220_31+0x74>
80202350: 01 46        	li	a2, 0
80202352: 21 a0        	j	0x8020235a <.LBB220_31+0x7a>
80202354: 8c 61        	ld	a1, 0(a1)
80202356: 8c 61        	ld	a1, 0(a1)
80202358: 05 46        	li	a2, 1
8020235a: 32 f0        	sd	a2, 32(sp)
8020235c: 2e f4        	sd	a1, 40(sp)
8020235e: 0c 6c        	ld	a1, 24(s0)
80202360: 92 05        	slli	a1, a1, 4
80202362: 2e 95        	add	a0, a0, a1
80202364: 10 65        	ld	a2, 8(a0)
80202366: 08 61        	ld	a0, 0(a0)
80202368: 8a 85        	mv	a1, sp
8020236a: 02 96        	jalr	a2
8020236c: 59 e5        	bnez	a0, 0x802023fa <.LBB220_31+0x11a>
8020236e: c1 04        	addi	s1, s1, 16
80202370: 13 0a 8a fc  	addi	s4, s4, -56
80202374: 13 04 84 03  	addi	s0, s0, 56
80202378: e3 18 0a f6  	bnez	s4, 0x802022e8 <.LBB220_31+0x8>
8020237c: 81 a8        	j	0x802023cc <.LBB220_31+0xec>
8020237e: 03 b5 89 02  	ld	a0, 40(s3)
80202382: 31 c9        	beqz	a0, 0x802023d6 <.LBB220_31+0xf6>
80202384: 83 b5 09 02  	ld	a1, 32(s3)
80202388: 03 b6 09 01  	ld	a2, 16(s3)
8020238c: 93 06 f5 ff  	addi	a3, a0, -1
80202390: 92 06        	slli	a3, a3, 4
80202392: 91 82        	srli	a3, a3, 4
80202394: 13 89 16 00  	addi	s2, a3, 1
80202398: 13 04 86 00  	addi	s0, a2, 8
8020239c: 13 1a 45 00  	slli	s4, a0, 4
802023a0: 93 84 85 00  	addi	s1, a1, 8
802023a4: 10 60        	ld	a2, 0(s0)
802023a6: 01 ca        	beqz	a2, 0x802023b6 <.LBB220_31+0xd6>
802023a8: a2 66        	ld	a3, 8(sp)
802023aa: 02 65        	ld	a0, 0(sp)
802023ac: 83 35 84 ff  	ld	a1, -8(s0)
802023b0: 94 6e        	ld	a3, 24(a3)
802023b2: 82 96        	jalr	a3
802023b4: 39 e1        	bnez	a0, 0x802023fa <.LBB220_31+0x11a>
802023b6: 90 60        	ld	a2, 0(s1)
802023b8: 03 b5 84 ff  	ld	a0, -8(s1)
802023bc: 8a 85        	mv	a1, sp
802023be: 02 96        	jalr	a2
802023c0: 0d ed        	bnez	a0, 0x802023fa <.LBB220_31+0x11a>
802023c2: 41 04        	addi	s0, s0, 16
802023c4: 41 1a        	addi	s4, s4, -16
802023c6: c1 04        	addi	s1, s1, 16
802023c8: e3 1e 0a fc  	bnez	s4, 0x802023a4 <.LBB220_31+0xc4>
802023cc: 03 b5 89 01  	ld	a0, 24(s3)
802023d0: 63 68 a9 00  	bltu	s2, a0, 0x802023e0 <.LBB220_31+0x100>
802023d4: 2d a0        	j	0x802023fe <.LBB220_31+0x11e>
802023d6: 01 49        	li	s2, 0
802023d8: 03 b5 89 01  	ld	a0, 24(s3)
802023dc: 63 71 a9 02  	bgeu	s2, a0, 0x802023fe <.LBB220_31+0x11e>
802023e0: 03 b5 09 01  	ld	a0, 16(s3)
802023e4: 93 15 49 00  	slli	a1, s2, 4
802023e8: 33 06 b5 00  	add	a2, a0, a1
802023ec: a2 66        	ld	a3, 8(sp)
802023ee: 02 65        	ld	a0, 0(sp)
802023f0: 0c 62        	ld	a1, 0(a2)
802023f2: 10 66        	ld	a2, 8(a2)
802023f4: 94 6e        	ld	a3, 24(a3)
802023f6: 82 96        	jalr	a3
802023f8: 19 c1        	beqz	a0, 0x802023fe <.LBB220_31+0x11e>
802023fa: 05 45        	li	a0, 1
802023fc: 11 a0        	j	0x80202400 <.LBB220_31+0x120>
802023fe: 01 45        	li	a0, 0
80202400: e6 70        	ld	ra, 120(sp)
80202402: 46 74        	ld	s0, 112(sp)
80202404: a6 74        	ld	s1, 104(sp)
80202406: 06 79        	ld	s2, 96(sp)
80202408: e6 69        	ld	s3, 88(sp)
8020240a: 46 6a        	ld	s4, 80(sp)
8020240c: a6 6a        	ld	s5, 72(sp)
8020240e: 06 6b        	ld	s6, 64(sp)
80202410: 09 61        	addi	sp, sp, 128
80202412: 82 80        	ret

0000000080202414 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80202414: 59 71        	addi	sp, sp, -112
80202416: 86 f4        	sd	ra, 104(sp)
80202418: a2 f0        	sd	s0, 96(sp)
8020241a: a6 ec        	sd	s1, 88(sp)
8020241c: ca e8        	sd	s2, 80(sp)
8020241e: ce e4        	sd	s3, 72(sp)
80202420: d2 e0        	sd	s4, 64(sp)
80202422: 56 fc        	sd	s5, 56(sp)
80202424: 5a f8        	sd	s6, 48(sp)
80202426: 5e f4        	sd	s7, 40(sp)
80202428: 62 f0        	sd	s8, 32(sp)
8020242a: 66 ec        	sd	s9, 24(sp)
8020242c: 6a e8        	sd	s10, 16(sp)
8020242e: 6e e4        	sd	s11, 8(sp)
80202430: be 89        	mv	s3, a5
80202432: 3a 89        	mv	s2, a4
80202434: 36 8b        	mv	s6, a3
80202436: 32 8a        	mv	s4, a2
80202438: 2a 8c        	mv	s8, a0
8020243a: b9 c1        	beqz	a1, 0x80202480 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
8020243c: 03 64 0c 03  	lwu	s0, 48(s8)
80202440: 13 75 14 00  	andi	a0, s0, 1
80202444: b7 0a 11 00  	lui	s5, 272
80202448: 19 c1        	beqz	a0, 0x8020244e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
8020244a: 93 0a b0 02  	li	s5, 43
8020244e: b3 0c 35 01  	add	s9, a0, s3
80202452: 13 75 44 00  	andi	a0, s0, 4
80202456: 15 cd        	beqz	a0, 0x80202492 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80202458: 13 05 00 02  	li	a0, 32
8020245c: 63 70 ab 04  	bgeu	s6, a0, 0x8020249c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80202460: 01 45        	li	a0, 0
80202462: 63 03 0b 04  	beqz	s6, 0x802024a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80202466: da 85        	mv	a1, s6
80202468: 52 86        	mv	a2, s4
8020246a: 83 06 06 00  	lb	a3, 0(a2)
8020246e: 05 06        	addi	a2, a2, 1
80202470: 93 a6 06 fc  	slti	a3, a3, -64
80202474: 93 c6 16 00  	xori	a3, a3, 1
80202478: fd 15        	addi	a1, a1, -1
8020247a: 36 95        	add	a0, a0, a3
8020247c: fd f5        	bnez	a1, 0x8020246a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
8020247e: 2d a0        	j	0x802024a8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80202480: 03 24 0c 03  	lw	s0, 48(s8)
80202484: 93 8c 19 00  	addi	s9, s3, 1
80202488: 93 0a d0 02  	li	s5, 45
8020248c: 13 75 44 00  	andi	a0, s0, 4
80202490: 61 f5        	bnez	a0, 0x80202458 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80202492: 01 4a        	li	s4, 0
80202494: 03 35 0c 01  	ld	a0, 16(s8)
80202498: 01 ed        	bnez	a0, 0x802024b0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
8020249a: 99 a0        	j	0x802024e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
8020249c: 52 85        	mv	a0, s4
8020249e: da 85        	mv	a1, s6
802024a0: 97 00 00 00  	auipc	ra, 0
802024a4: e7 80 c0 44  	jalr	1100(ra)
802024a8: aa 9c        	add	s9, s9, a0
802024aa: 03 35 0c 01  	ld	a0, 16(s8)
802024ae: 0d c9        	beqz	a0, 0x802024e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
802024b0: 03 3d 8c 01  	ld	s10, 24(s8)
802024b4: 63 f6 ac 03  	bgeu	s9, s10, 0x802024e0 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
802024b8: 13 75 84 00  	andi	a0, s0, 8
802024bc: 41 e5        	bnez	a0, 0x80202544 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
802024be: 83 45 8c 03  	lbu	a1, 56(s8)
802024c2: 0d 46        	li	a2, 3
802024c4: 05 45        	li	a0, 1
802024c6: 63 83 c5 00  	beq	a1, a2, 0x802024cc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
802024ca: 2e 85        	mv	a0, a1
802024cc: 93 75 35 00  	andi	a1, a0, 3
802024d0: 33 05 9d 41  	sub	a0, s10, s9
802024d4: e1 c1        	beqz	a1, 0x80202594 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
802024d6: 05 46        	li	a2, 1
802024d8: 63 91 c5 0c  	bne	a1, a2, 0x8020259a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
802024dc: 01 4d        	li	s10, 0
802024de: d9 a0        	j	0x802025a4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
802024e0: 03 34 0c 00  	ld	s0, 0(s8)
802024e4: 83 34 8c 00  	ld	s1, 8(s8)
802024e8: 22 85        	mv	a0, s0
802024ea: a6 85        	mv	a1, s1
802024ec: 56 86        	mv	a2, s5
802024ee: d2 86        	mv	a3, s4
802024f0: 5a 87        	mv	a4, s6
802024f2: 97 00 00 00  	auipc	ra, 0
802024f6: e7 80 00 14  	jalr	320(ra)
802024fa: 85 4b        	li	s7, 1
802024fc: 0d c1        	beqz	a0, 0x8020251e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
802024fe: 5e 85        	mv	a0, s7
80202500: a6 70        	ld	ra, 104(sp)
80202502: 06 74        	ld	s0, 96(sp)
80202504: e6 64        	ld	s1, 88(sp)
80202506: 46 69        	ld	s2, 80(sp)
80202508: a6 69        	ld	s3, 72(sp)
8020250a: 06 6a        	ld	s4, 64(sp)
8020250c: e2 7a        	ld	s5, 56(sp)
8020250e: 42 7b        	ld	s6, 48(sp)
80202510: a2 7b        	ld	s7, 40(sp)
80202512: 02 7c        	ld	s8, 32(sp)
80202514: e2 6c        	ld	s9, 24(sp)
80202516: 42 6d        	ld	s10, 16(sp)
80202518: a2 6d        	ld	s11, 8(sp)
8020251a: 65 61        	addi	sp, sp, 112
8020251c: 82 80        	ret
8020251e: 9c 6c        	ld	a5, 24(s1)
80202520: 22 85        	mv	a0, s0
80202522: ca 85        	mv	a1, s2
80202524: 4e 86        	mv	a2, s3
80202526: a6 70        	ld	ra, 104(sp)
80202528: 06 74        	ld	s0, 96(sp)
8020252a: e6 64        	ld	s1, 88(sp)
8020252c: 46 69        	ld	s2, 80(sp)
8020252e: a6 69        	ld	s3, 72(sp)
80202530: 06 6a        	ld	s4, 64(sp)
80202532: e2 7a        	ld	s5, 56(sp)
80202534: 42 7b        	ld	s6, 48(sp)
80202536: a2 7b        	ld	s7, 40(sp)
80202538: 02 7c        	ld	s8, 32(sp)
8020253a: e2 6c        	ld	s9, 24(sp)
8020253c: 42 6d        	ld	s10, 16(sp)
8020253e: a2 6d        	ld	s11, 8(sp)
80202540: 65 61        	addi	sp, sp, 112
80202542: 82 87        	jr	a5
80202544: 03 24 4c 03  	lw	s0, 52(s8)
80202548: 13 05 00 03  	li	a0, 48
8020254c: 83 45 8c 03  	lbu	a1, 56(s8)
80202550: 2e e0        	sd	a1, 0(sp)
80202552: 83 3d 0c 00  	ld	s11, 0(s8)
80202556: 83 34 8c 00  	ld	s1, 8(s8)
8020255a: 23 2a ac 02  	sw	a0, 52(s8)
8020255e: 85 4b        	li	s7, 1
80202560: 23 0c 7c 03  	sb	s7, 56(s8)
80202564: 6e 85        	mv	a0, s11
80202566: a6 85        	mv	a1, s1
80202568: 56 86        	mv	a2, s5
8020256a: d2 86        	mv	a3, s4
8020256c: 5a 87        	mv	a4, s6
8020256e: 97 00 00 00  	auipc	ra, 0
80202572: e7 80 40 0c  	jalr	196(ra)
80202576: 41 f5        	bnez	a0, 0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202578: 22 8a        	mv	s4, s0
8020257a: 33 05 9d 41  	sub	a0, s10, s9
8020257e: 13 04 15 00  	addi	s0, a0, 1
80202582: 7d 14        	addi	s0, s0, -1
80202584: 49 c4        	beqz	s0, 0x8020260e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80202586: 90 70        	ld	a2, 32(s1)
80202588: 93 05 00 03  	li	a1, 48
8020258c: 6e 85        	mv	a0, s11
8020258e: 02 96        	jalr	a2
80202590: 6d d9        	beqz	a0, 0x80202582 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80202592: b5 b7        	j	0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202594: 2a 8d        	mv	s10, a0
80202596: 2e 85        	mv	a0, a1
80202598: 31 a0        	j	0x802025a4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
8020259a: 93 05 15 00  	addi	a1, a0, 1
8020259e: 05 81        	srli	a0, a0, 1
802025a0: 13 dd 15 00  	srli	s10, a1, 1
802025a4: 83 3c 0c 00  	ld	s9, 0(s8)
802025a8: 83 3d 8c 00  	ld	s11, 8(s8)
802025ac: 03 24 4c 03  	lw	s0, 52(s8)
802025b0: 93 04 15 00  	addi	s1, a0, 1
802025b4: fd 14        	addi	s1, s1, -1
802025b6: 89 c8        	beqz	s1, 0x802025c8 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
802025b8: 03 b6 0d 02  	ld	a2, 32(s11)
802025bc: 66 85        	mv	a0, s9
802025be: a2 85        	mv	a1, s0
802025c0: 02 96        	jalr	a2
802025c2: 6d d9        	beqz	a0, 0x802025b4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
802025c4: 85 4b        	li	s7, 1
802025c6: 25 bf        	j	0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802025c8: 37 05 11 00  	lui	a0, 272
802025cc: 85 4b        	li	s7, 1
802025ce: e3 08 a4 f2  	beq	s0, a0, 0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802025d2: 66 85        	mv	a0, s9
802025d4: ee 85        	mv	a1, s11
802025d6: 56 86        	mv	a2, s5
802025d8: d2 86        	mv	a3, s4
802025da: 5a 87        	mv	a4, s6
802025dc: 97 00 00 00  	auipc	ra, 0
802025e0: e7 80 60 05  	jalr	86(ra)
802025e4: 09 fd        	bnez	a0, 0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802025e6: 83 b6 8d 01  	ld	a3, 24(s11)
802025ea: 66 85        	mv	a0, s9
802025ec: ca 85        	mv	a1, s2
802025ee: 4e 86        	mv	a2, s3
802025f0: 82 96        	jalr	a3
802025f2: 11 f5        	bnez	a0, 0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
802025f4: 81 44        	li	s1, 0
802025f6: 63 0a 9d 02  	beq	s10, s1, 0x8020262a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
802025fa: 03 b6 0d 02  	ld	a2, 32(s11)
802025fe: 85 04        	addi	s1, s1, 1
80202600: 66 85        	mv	a0, s9
80202602: a2 85        	mv	a1, s0
80202604: 02 96        	jalr	a2
80202606: 65 d9        	beqz	a0, 0x802025f6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80202608: 13 85 f4 ff  	addi	a0, s1, -1
8020260c: 05 a0        	j	0x8020262c <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
8020260e: 94 6c        	ld	a3, 24(s1)
80202610: 6e 85        	mv	a0, s11
80202612: ca 85        	mv	a1, s2
80202614: 4e 86        	mv	a2, s3
80202616: 82 96        	jalr	a3
80202618: e3 13 05 ee  	bnez	a0, 0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020261c: 81 4b        	li	s7, 0
8020261e: 23 2a 4c 03  	sw	s4, 52(s8)
80202622: 02 65        	ld	a0, 0(sp)
80202624: 23 0c ac 02  	sb	a0, 56(s8)
80202628: d9 bd        	j	0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
8020262a: 6a 85        	mv	a0, s10
8020262c: b3 3b a5 01  	sltu	s7, a0, s10
80202630: f9 b5        	j	0x802024fe <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080202632 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80202632: 79 71        	addi	sp, sp, -48
80202634: 06 f4        	sd	ra, 40(sp)
80202636: 22 f0        	sd	s0, 32(sp)
80202638: 26 ec        	sd	s1, 24(sp)
8020263a: 4a e8        	sd	s2, 16(sp)
8020263c: 4e e4        	sd	s3, 8(sp)
8020263e: 9b 07 06 00  	sext.w	a5, a2
80202642: 37 08 11 00  	lui	a6, 272
80202646: 3a 89        	mv	s2, a4
80202648: b6 84        	mv	s1, a3
8020264a: 2e 84        	mv	s0, a1
8020264c: aa 89        	mv	s3, a0
8020264e: 63 89 07 01  	beq	a5, a6, 0x80202660 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80202652: 14 70        	ld	a3, 32(s0)
80202654: 4e 85        	mv	a0, s3
80202656: b2 85        	mv	a1, a2
80202658: 82 96        	jalr	a3
8020265a: aa 85        	mv	a1, a0
8020265c: 05 45        	li	a0, 1
8020265e: 91 ed        	bnez	a1, 0x8020267a <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80202660: 81 cc        	beqz	s1, 0x80202678 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80202662: 1c 6c        	ld	a5, 24(s0)
80202664: 4e 85        	mv	a0, s3
80202666: a6 85        	mv	a1, s1
80202668: 4a 86        	mv	a2, s2
8020266a: a2 70        	ld	ra, 40(sp)
8020266c: 02 74        	ld	s0, 32(sp)
8020266e: e2 64        	ld	s1, 24(sp)
80202670: 42 69        	ld	s2, 16(sp)
80202672: a2 69        	ld	s3, 8(sp)
80202674: 45 61        	addi	sp, sp, 48
80202676: 82 87        	jr	a5
80202678: 01 45        	li	a0, 0
8020267a: a2 70        	ld	ra, 40(sp)
8020267c: 02 74        	ld	s0, 32(sp)
8020267e: e2 64        	ld	s1, 24(sp)
80202680: 42 69        	ld	s2, 16(sp)
80202682: a2 69        	ld	s3, 8(sp)
80202684: 45 61        	addi	sp, sp, 48
80202686: 82 80        	ret

0000000080202688 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80202688: 5d 71        	addi	sp, sp, -80
8020268a: 86 e4        	sd	ra, 72(sp)
8020268c: a2 e0        	sd	s0, 64(sp)
8020268e: 26 fc        	sd	s1, 56(sp)
80202690: 4a f8        	sd	s2, 48(sp)
80202692: 4e f4        	sd	s3, 40(sp)
80202694: 52 f0        	sd	s4, 32(sp)
80202696: 56 ec        	sd	s5, 24(sp)
80202698: 5a e8        	sd	s6, 16(sp)
8020269a: 5e e4        	sd	s7, 8(sp)
8020269c: 2a 8a        	mv	s4, a0
8020269e: 83 32 05 01  	ld	t0, 16(a0)
802026a2: 08 71        	ld	a0, 32(a0)
802026a4: 93 86 f2 ff  	addi	a3, t0, -1
802026a8: b3 36 d0 00  	snez	a3, a3
802026ac: 13 07 f5 ff  	addi	a4, a0, -1
802026b0: 33 37 e0 00  	snez	a4, a4
802026b4: f9 8e        	and	a3, a3, a4
802026b6: b2 89        	mv	s3, a2
802026b8: 2e 89        	mv	s2, a1
802026ba: 63 9d 06 16  	bnez	a3, 0x80202834 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
802026be: 85 45        	li	a1, 1
802026c0: 63 18 b5 10  	bne	a0, a1, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802026c4: 03 35 8a 02  	ld	a0, 40(s4)
802026c8: 81 45        	li	a1, 0
802026ca: b3 06 39 01  	add	a3, s2, s3
802026ce: 13 07 15 00  	addi	a4, a0, 1
802026d2: 37 03 11 00  	lui	t1, 272
802026d6: 93 08 f0 0d  	li	a7, 223
802026da: 13 08 00 0f  	li	a6, 240
802026de: 4a 86        	mv	a2, s2
802026e0: 01 a8        	j	0x802026f0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
802026e2: 13 05 16 00  	addi	a0, a2, 1
802026e6: 91 8d        	sub	a1, a1, a2
802026e8: aa 95        	add	a1, a1, a0
802026ea: 2a 86        	mv	a2, a0
802026ec: 63 02 64 0e  	beq	s0, t1, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802026f0: 7d 17        	addi	a4, a4, -1
802026f2: 25 c7        	beqz	a4, 0x8020275a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
802026f4: 63 0e d6 0c  	beq	a2, a3, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802026f8: 03 05 06 00  	lb	a0, 0(a2)
802026fc: 13 74 f5 0f  	andi	s0, a0, 255
80202700: e3 51 05 fe  	bgez	a0, 0x802026e2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80202704: 03 45 16 00  	lbu	a0, 1(a2)
80202708: 93 77 f4 01  	andi	a5, s0, 31
8020270c: 93 74 f5 03  	andi	s1, a0, 63
80202710: 63 f9 88 02  	bgeu	a7, s0, 0x80202742 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80202714: 03 45 26 00  	lbu	a0, 2(a2)
80202718: 9a 04        	slli	s1, s1, 6
8020271a: 13 75 f5 03  	andi	a0, a0, 63
8020271e: c9 8c        	or	s1, s1, a0
80202720: 63 67 04 03  	bltu	s0, a6, 0x8020274e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80202724: 03 45 36 00  	lbu	a0, 3(a2)
80202728: f6 17        	slli	a5, a5, 61
8020272a: ad 93        	srli	a5, a5, 43
8020272c: 9a 04        	slli	s1, s1, 6
8020272e: 13 75 f5 03  	andi	a0, a0, 63
80202732: 45 8d        	or	a0, a0, s1
80202734: 33 64 f5 00  	or	s0, a0, a5
80202738: 63 0c 64 08  	beq	s0, t1, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020273c: 13 05 46 00  	addi	a0, a2, 4
80202740: 5d b7        	j	0x802026e6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202742: 13 05 26 00  	addi	a0, a2, 2
80202746: 9a 07        	slli	a5, a5, 6
80202748: 33 e4 97 00  	or	s0, a5, s1
8020274c: 69 bf        	j	0x802026e6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
8020274e: 13 05 36 00  	addi	a0, a2, 3
80202752: b2 07        	slli	a5, a5, 12
80202754: 33 e4 f4 00  	or	s0, s1, a5
80202758: 79 b7        	j	0x802026e6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
8020275a: 63 0b d6 06  	beq	a2, a3, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
8020275e: 03 05 06 00  	lb	a0, 0(a2)
80202762: 63 53 05 04  	bgez	a0, 0x802027a8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80202766: 13 75 f5 0f  	andi	a0, a0, 255
8020276a: 93 06 00 0e  	li	a3, 224
8020276e: 63 6d d5 02  	bltu	a0, a3, 0x802027a8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80202772: 93 06 00 0f  	li	a3, 240
80202776: 63 69 d5 02  	bltu	a0, a3, 0x802027a8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
8020277a: 83 46 16 00  	lbu	a3, 1(a2)
8020277e: 03 47 26 00  	lbu	a4, 2(a2)
80202782: 93 f6 f6 03  	andi	a3, a3, 63
80202786: 13 77 f7 03  	andi	a4, a4, 63
8020278a: 03 46 36 00  	lbu	a2, 3(a2)
8020278e: 76 15        	slli	a0, a0, 61
80202790: 2d 91        	srli	a0, a0, 43
80202792: b2 06        	slli	a3, a3, 12
80202794: 1a 07        	slli	a4, a4, 6
80202796: d9 8e        	or	a3, a3, a4
80202798: 13 76 f6 03  	andi	a2, a2, 63
8020279c: 55 8e        	or	a2, a2, a3
8020279e: 51 8d        	or	a0, a0, a2
802027a0: 37 06 11 00  	lui	a2, 272
802027a4: 63 06 c5 02  	beq	a0, a2, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802027a8: 85 c1        	beqz	a1, 0x802027c8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802027aa: 63 fd 35 01  	bgeu	a1, s3, 0x802027c4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
802027ae: 33 05 b9 00  	add	a0, s2, a1
802027b2: 03 05 05 00  	lb	a0, 0(a0)
802027b6: 13 06 00 fc  	li	a2, -64
802027ba: 63 57 c5 00  	bge	a0, a2, 0x802027c8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
802027be: 01 45        	li	a0, 0
802027c0: 11 e5        	bnez	a0, 0x802027cc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
802027c2: 39 a0        	j	0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802027c4: e3 9d 35 ff  	bne	a1, s3, 0x802027be <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
802027c8: 4a 85        	mv	a0, s2
802027ca: 19 c1        	beqz	a0, 0x802027d0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
802027cc: ae 89        	mv	s3, a1
802027ce: 2a 89        	mv	s2, a0
802027d0: 63 82 02 06  	beqz	t0, 0x80202834 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
802027d4: 03 34 8a 01  	ld	s0, 24(s4)
802027d8: 13 05 00 02  	li	a0, 32
802027dc: 63 f4 a9 04  	bgeu	s3, a0, 0x80202824 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
802027e0: 01 45        	li	a0, 0
802027e2: 63 8e 09 00  	beqz	s3, 0x802027fe <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
802027e6: ce 85        	mv	a1, s3
802027e8: 4a 86        	mv	a2, s2
802027ea: 83 06 06 00  	lb	a3, 0(a2)
802027ee: 05 06        	addi	a2, a2, 1
802027f0: 93 a6 06 fc  	slti	a3, a3, -64
802027f4: 93 c6 16 00  	xori	a3, a3, 1
802027f8: fd 15        	addi	a1, a1, -1
802027fa: 36 95        	add	a0, a0, a3
802027fc: fd f5        	bnez	a1, 0x802027ea <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
802027fe: 63 7b 85 02  	bgeu	a0, s0, 0x80202834 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202802: 83 45 8a 03  	lbu	a1, 56(s4)
80202806: 8d 46        	li	a3, 3
80202808: 01 46        	li	a2, 0
8020280a: 63 83 d5 00  	beq	a1, a3, 0x80202810 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
8020280e: 2e 86        	mv	a2, a1
80202810: 93 75 36 00  	andi	a1, a2, 3
80202814: 33 05 a4 40  	sub	a0, s0, a0
80202818: a1 c1        	beqz	a1, 0x80202858 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
8020281a: 05 46        	li	a2, 1
8020281c: 63 91 c5 04  	bne	a1, a2, 0x8020285e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80202820: 81 4a        	li	s5, 0
80202822: 99 a0        	j	0x80202868 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80202824: 4a 85        	mv	a0, s2
80202826: ce 85        	mv	a1, s3
80202828: 97 00 00 00  	auipc	ra, 0
8020282c: e7 80 40 0c  	jalr	196(ra)
80202830: e3 69 85 fc  	bltu	a0, s0, 0x80202802 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
80202834: 83 35 8a 00  	ld	a1, 8(s4)
80202838: 03 35 0a 00  	ld	a0, 0(s4)
8020283c: 9c 6d        	ld	a5, 24(a1)
8020283e: ca 85        	mv	a1, s2
80202840: 4e 86        	mv	a2, s3
80202842: a6 60        	ld	ra, 72(sp)
80202844: 06 64        	ld	s0, 64(sp)
80202846: e2 74        	ld	s1, 56(sp)
80202848: 42 79        	ld	s2, 48(sp)
8020284a: a2 79        	ld	s3, 40(sp)
8020284c: 02 7a        	ld	s4, 32(sp)
8020284e: e2 6a        	ld	s5, 24(sp)
80202850: 42 6b        	ld	s6, 16(sp)
80202852: a2 6b        	ld	s7, 8(sp)
80202854: 61 61        	addi	sp, sp, 80
80202856: 82 87        	jr	a5
80202858: aa 8a        	mv	s5, a0
8020285a: 2e 85        	mv	a0, a1
8020285c: 31 a0        	j	0x80202868 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
8020285e: 93 05 15 00  	addi	a1, a0, 1
80202862: 05 81        	srli	a0, a0, 1
80202864: 93 da 15 00  	srli	s5, a1, 1
80202868: 03 3b 0a 00  	ld	s6, 0(s4)
8020286c: 83 3b 8a 00  	ld	s7, 8(s4)
80202870: 83 24 4a 03  	lw	s1, 52(s4)
80202874: 13 04 15 00  	addi	s0, a0, 1
80202878: 7d 14        	addi	s0, s0, -1
8020287a: 09 c8        	beqz	s0, 0x8020288c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
8020287c: 03 b6 0b 02  	ld	a2, 32(s7)
80202880: 5a 85        	mv	a0, s6
80202882: a6 85        	mv	a1, s1
80202884: 02 96        	jalr	a2
80202886: 6d d9        	beqz	a0, 0x80202878 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
80202888: 05 4a        	li	s4, 1
8020288a: 2d a8        	j	0x802028c4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
8020288c: 37 05 11 00  	lui	a0, 272
80202890: 05 4a        	li	s4, 1
80202892: 63 89 a4 02  	beq	s1, a0, 0x802028c4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80202896: 83 b6 8b 01  	ld	a3, 24(s7)
8020289a: 5a 85        	mv	a0, s6
8020289c: ca 85        	mv	a1, s2
8020289e: 4e 86        	mv	a2, s3
802028a0: 82 96        	jalr	a3
802028a2: 0d e1        	bnez	a0, 0x802028c4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
802028a4: 01 44        	li	s0, 0
802028a6: 63 8c 8a 00  	beq	s5, s0, 0x802028be <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
802028aa: 03 b6 0b 02  	ld	a2, 32(s7)
802028ae: 05 04        	addi	s0, s0, 1
802028b0: 5a 85        	mv	a0, s6
802028b2: a6 85        	mv	a1, s1
802028b4: 02 96        	jalr	a2
802028b6: 65 d9        	beqz	a0, 0x802028a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
802028b8: 13 05 f4 ff  	addi	a0, s0, -1
802028bc: 11 a0        	j	0x802028c0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
802028be: 56 85        	mv	a0, s5
802028c0: 33 3a 55 01  	sltu	s4, a0, s5
802028c4: 52 85        	mv	a0, s4
802028c6: a6 60        	ld	ra, 72(sp)
802028c8: 06 64        	ld	s0, 64(sp)
802028ca: e2 74        	ld	s1, 56(sp)
802028cc: 42 79        	ld	s2, 48(sp)
802028ce: a2 79        	ld	s3, 40(sp)
802028d0: 02 7a        	ld	s4, 32(sp)
802028d2: e2 6a        	ld	s5, 24(sp)
802028d4: 42 6b        	ld	s6, 16(sp)
802028d6: a2 6b        	ld	s7, 8(sp)
802028d8: 61 61        	addi	sp, sp, 80
802028da: 82 80        	ret

00000000802028dc <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
802028dc: ae 86        	mv	a3, a1
802028de: aa 85        	mv	a1, a0
802028e0: 32 85        	mv	a0, a2
802028e2: 36 86        	mv	a2, a3
802028e4: 17 03 00 00  	auipc	t1, 0
802028e8: 67 00 43 da  	jr	-604(t1)

00000000802028ec <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
802028ec: 2a 86        	mv	a2, a0
802028ee: 1d 05        	addi	a0, a0, 7
802028f0: 13 77 85 ff  	andi	a4, a0, -8
802028f4: b3 08 c7 40  	sub	a7, a4, a2
802028f8: 63 ec 15 01  	bltu	a1, a7, 0x80202910 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
802028fc: 33 88 15 41  	sub	a6, a1, a7
80202900: 13 35 88 00  	sltiu	a0, a6, 8
80202904: 93 b7 98 00  	sltiu	a5, a7, 9
80202908: 93 c7 17 00  	xori	a5, a5, 1
8020290c: 5d 8d        	or	a0, a0, a5
8020290e: 11 cd        	beqz	a0, 0x8020292a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80202910: 01 45        	li	a0, 0
80202912: 99 c9        	beqz	a1, 0x80202928 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80202914: 83 06 06 00  	lb	a3, 0(a2)
80202918: 05 06        	addi	a2, a2, 1
8020291a: 93 a6 06 fc  	slti	a3, a3, -64
8020291e: 93 c6 16 00  	xori	a3, a3, 1
80202922: fd 15        	addi	a1, a1, -1
80202924: 36 95        	add	a0, a0, a3
80202926: fd f5        	bnez	a1, 0x80202914 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
80202928: 82 80        	ret
8020292a: 93 75 78 00  	andi	a1, a6, 7
8020292e: 81 47        	li	a5, 0
80202930: 63 0f c7 00  	beq	a4, a2, 0x8020294e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80202934: 33 07 e6 40  	sub	a4, a2, a4
80202938: 32 85        	mv	a0, a2
8020293a: 83 06 05 00  	lb	a3, 0(a0)
8020293e: 05 05        	addi	a0, a0, 1
80202940: 93 a6 06 fc  	slti	a3, a3, -64
80202944: 93 c6 16 00  	xori	a3, a3, 1
80202948: 05 07        	addi	a4, a4, 1
8020294a: b6 97        	add	a5, a5, a3
8020294c: 7d f7        	bnez	a4, 0x8020293a <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
8020294e: b3 02 16 01  	add	t0, a2, a7
80202952: 01 46        	li	a2, 0
80202954: 99 cd        	beqz	a1, 0x80202972 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
80202956: 13 75 88 ff  	andi	a0, a6, -8
8020295a: b3 86 a2 00  	add	a3, t0, a0
8020295e: 03 85 06 00  	lb	a0, 0(a3)
80202962: 85 06        	addi	a3, a3, 1
80202964: 13 25 05 fc  	slti	a0, a0, -64
80202968: 13 45 15 00  	xori	a0, a0, 1
8020296c: fd 15        	addi	a1, a1, -1
8020296e: 2a 96        	add	a2, a2, a0
80202970: fd f5        	bnez	a1, 0x8020295e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
80202972: 13 57 38 00  	srli	a4, a6, 3

0000000080202976 <.LBB292_27>:
80202976: 17 25 00 00  	auipc	a0, 2
8020297a: 13 05 a5 84  	addi	a0, a0, -1974
8020297e: 03 3f 05 00  	ld	t5, 0(a0)

0000000080202982 <.LBB292_28>:
80202982: 17 25 00 00  	auipc	a0, 2
80202986: 13 05 65 84  	addi	a0, a0, -1978
8020298a: 83 38 05 00  	ld	a7, 0(a0)
8020298e: 37 15 00 10  	lui	a0, 65537
80202992: 12 05        	slli	a0, a0, 4
80202994: 05 05        	addi	a0, a0, 1
80202996: 42 05        	slli	a0, a0, 16
80202998: 13 08 15 00  	addi	a6, a0, 1
8020299c: 33 05 f6 00  	add	a0, a2, a5
802029a0: 25 a0        	j	0x802029c8 <.LBB292_28+0x46>
802029a2: 13 16 3e 00  	slli	a2, t3, 3
802029a6: b3 02 c3 00  	add	t0, t1, a2
802029aa: 33 87 c3 41  	sub	a4, t2, t3
802029ae: 13 76 3e 00  	andi	a2, t3, 3
802029b2: b3 f6 15 01  	and	a3, a1, a7
802029b6: a1 81        	srli	a1, a1, 8
802029b8: b3 f5 15 01  	and	a1, a1, a7
802029bc: b6 95        	add	a1, a1, a3
802029be: b3 85 05 03  	mul	a1, a1, a6
802029c2: c1 91        	srli	a1, a1, 48
802029c4: 2e 95        	add	a0, a0, a1
802029c6: 41 e2        	bnez	a2, 0x80202a46 <.LBB292_28+0xc4>
802029c8: 25 d3        	beqz	a4, 0x80202928 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
802029ca: ba 83        	mv	t2, a4
802029cc: 16 83        	mv	t1, t0
802029ce: 93 05 00 0c  	li	a1, 192
802029d2: 3a 8e        	mv	t3, a4
802029d4: 63 64 b7 00  	bltu	a4, a1, 0x802029dc <.LBB292_28+0x5a>
802029d8: 13 0e 00 0c  	li	t3, 192
802029dc: 93 75 ce 0f  	andi	a1, t3, 252
802029e0: 13 96 35 00  	slli	a2, a1, 3
802029e4: b3 0e c3 00  	add	t4, t1, a2
802029e8: cd dd        	beqz	a1, 0x802029a2 <.LBB292_28+0x20>
802029ea: 81 45        	li	a1, 0
802029ec: 1a 86        	mv	a2, t1
802029ee: 55 da        	beqz	a2, 0x802029a2 <.LBB292_28+0x20>
802029f0: 18 62        	ld	a4, 0(a2)
802029f2: 93 47 f7 ff  	not	a5, a4
802029f6: 9d 83        	srli	a5, a5, 7
802029f8: 19 83        	srli	a4, a4, 6
802029fa: 14 66        	ld	a3, 8(a2)
802029fc: 5d 8f        	or	a4, a4, a5
802029fe: 33 77 e7 01  	and	a4, a4, t5
80202a02: ba 95        	add	a1, a1, a4
80202a04: 13 c7 f6 ff  	not	a4, a3
80202a08: 1d 83        	srli	a4, a4, 7
80202a0a: 99 82        	srli	a3, a3, 6
80202a0c: 1c 6a        	ld	a5, 16(a2)
80202a0e: d9 8e        	or	a3, a3, a4
80202a10: b3 f6 e6 01  	and	a3, a3, t5
80202a14: b6 95        	add	a1, a1, a3
80202a16: 93 c6 f7 ff  	not	a3, a5
80202a1a: 9d 82        	srli	a3, a3, 7
80202a1c: 13 d7 67 00  	srli	a4, a5, 6
80202a20: 1c 6e        	ld	a5, 24(a2)
80202a22: d9 8e        	or	a3, a3, a4
80202a24: b3 f6 e6 01  	and	a3, a3, t5
80202a28: b6 95        	add	a1, a1, a3
80202a2a: 93 c6 f7 ff  	not	a3, a5
80202a2e: 9d 82        	srli	a3, a3, 7
80202a30: 13 d7 67 00  	srli	a4, a5, 6
80202a34: d9 8e        	or	a3, a3, a4
80202a36: b3 f6 e6 01  	and	a3, a3, t5
80202a3a: 13 06 06 02  	addi	a2, a2, 32
80202a3e: b6 95        	add	a1, a1, a3
80202a40: e3 17 d6 fb  	bne	a2, t4, 0x802029ee <.LBB292_28+0x6c>
80202a44: b9 bf        	j	0x802029a2 <.LBB292_28+0x20>
80202a46: 63 0a 03 02  	beqz	t1, 0x80202a7a <.LBB292_28+0xf8>
80202a4a: 93 05 00 0c  	li	a1, 192
80202a4e: 63 e4 b3 00  	bltu	t2, a1, 0x80202a56 <.LBB292_28+0xd4>
80202a52: 93 03 00 0c  	li	t2, 192
80202a56: 81 45        	li	a1, 0
80202a58: 13 f6 33 00  	andi	a2, t2, 3
80202a5c: 0e 06        	slli	a2, a2, 3
80202a5e: 83 b6 0e 00  	ld	a3, 0(t4)
80202a62: a1 0e        	addi	t4, t4, 8
80202a64: 13 c7 f6 ff  	not	a4, a3
80202a68: 1d 83        	srli	a4, a4, 7
80202a6a: 99 82        	srli	a3, a3, 6
80202a6c: d9 8e        	or	a3, a3, a4
80202a6e: b3 f6 e6 01  	and	a3, a3, t5
80202a72: 61 16        	addi	a2, a2, -8
80202a74: b6 95        	add	a1, a1, a3
80202a76: 65 f6        	bnez	a2, 0x80202a5e <.LBB292_28+0xdc>
80202a78: 11 a0        	j	0x80202a7c <.LBB292_28+0xfa>
80202a7a: 81 45        	li	a1, 0
80202a7c: 33 f6 15 01  	and	a2, a1, a7
80202a80: a1 81        	srli	a1, a1, 8
80202a82: b3 f5 15 01  	and	a1, a1, a7
80202a86: b2 95        	add	a1, a1, a2
80202a88: b3 85 05 03  	mul	a1, a1, a6
80202a8c: c1 91        	srli	a1, a1, 48
80202a8e: 2e 95        	add	a0, a0, a1
80202a90: 82 80        	ret

0000000080202a92 <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
80202a92: 39 71        	addi	sp, sp, -64
80202a94: 06 fc        	sd	ra, 56(sp)
80202a96: 22 f8        	sd	s0, 48(sp)
80202a98: 26 f4        	sd	s1, 40(sp)
80202a9a: 32 88        	mv	a6, a2
80202a9c: 93 56 45 00  	srli	a3, a0, 4
80202aa0: 13 07 70 02  	li	a4, 39
80202aa4: 93 07 10 27  	li	a5, 625

0000000080202aa8 <.LBB580_10>:
80202aa8: 97 1e 00 00  	auipc	t4, 1
80202aac: 93 8e 0e d8  	addi	t4, t4, -640
80202ab0: 63 f3 f6 02  	bgeu	a3, a5, 0x80202ad6 <.LBB580_10+0x2e>
80202ab4: 93 06 30 06  	li	a3, 99
80202ab8: 63 e9 a6 0a  	bltu	a3, a0, 0x80202b6a <.LBB580_11+0x92>
80202abc: 29 46        	li	a2, 10
80202abe: 63 77 c5 0e  	bgeu	a0, a2, 0x80202bac <.LBB580_11+0xd4>
80202ac2: 93 06 f7 ff  	addi	a3, a4, -1
80202ac6: 13 06 11 00  	addi	a2, sp, 1
80202aca: 36 96        	add	a2, a2, a3
80202acc: 1b 05 05 03  	addiw	a0, a0, 48
80202ad0: 23 00 a6 00  	sb	a0, 0(a2)
80202ad4: dd a8        	j	0x80202bca <.LBB580_11+0xf2>
80202ad6: 01 47        	li	a4, 0

0000000080202ad8 <.LBB580_11>:
80202ad8: 97 16 00 00  	auipc	a3, 1
80202adc: 93 86 86 75  	addi	a3, a3, 1880
80202ae0: 83 b8 06 00  	ld	a7, 0(a3)
80202ae4: 89 66        	lui	a3, 2
80202ae6: 9b 83 06 71  	addiw	t2, a3, 1808
80202aea: 85 66        	lui	a3, 1
80202aec: 1b 8e b6 47  	addiw	t3, a3, 1147
80202af0: 93 02 40 06  	li	t0, 100
80202af4: 13 03 11 00  	addi	t1, sp, 1
80202af8: b7 e6 f5 05  	lui	a3, 24414
80202afc: 1b 8f f6 0f  	addiw	t5, a3, 255
80202b00: aa 87        	mv	a5, a0
80202b02: 33 35 15 03  	mulhu	a0, a0, a7
80202b06: 2d 81        	srli	a0, a0, 11
80202b08: 3b 06 75 02  	mulw	a2, a0, t2
80202b0c: 3b 86 c7 40  	subw	a2, a5, a2
80202b10: 93 16 06 03  	slli	a3, a2, 48
80202b14: c9 92        	srli	a3, a3, 50
80202b16: b3 86 c6 03  	mul	a3, a3, t3
80202b1a: 93 df 16 01  	srli	t6, a3, 17
80202b1e: c1 82        	srli	a3, a3, 16
80202b20: 13 f4 e6 7f  	andi	s0, a3, 2046
80202b24: bb 86 5f 02  	mulw	a3, t6, t0
80202b28: 15 9e        	subw	a2, a2, a3
80202b2a: 46 16        	slli	a2, a2, 49
80202b2c: 41 92        	srli	a2, a2, 48
80202b2e: b3 86 8e 00  	add	a3, t4, s0
80202b32: 33 04 e3 00  	add	s0, t1, a4
80202b36: 83 cf 06 00  	lbu	t6, 0(a3)
80202b3a: 83 86 16 00  	lb	a3, 1(a3)
80202b3e: 76 96        	add	a2, a2, t4
80202b40: 83 04 16 00  	lb	s1, 1(a2)
80202b44: 03 46 06 00  	lbu	a2, 0(a2)
80202b48: 23 02 d4 02  	sb	a3, 36(s0)
80202b4c: a3 01 f4 03  	sb	t6, 35(s0)
80202b50: 23 03 94 02  	sb	s1, 38(s0)
80202b54: a3 02 c4 02  	sb	a2, 37(s0)
80202b58: 71 17        	addi	a4, a4, -4
80202b5a: e3 63 ff fa  	bltu	t5, a5, 0x80202b00 <.LBB580_11+0x28>
80202b5e: 13 07 77 02  	addi	a4, a4, 39
80202b62: 93 06 30 06  	li	a3, 99
80202b66: e3 fb a6 f4  	bgeu	a3, a0, 0x80202abc <.LBB580_10+0x14>
80202b6a: 13 16 05 03  	slli	a2, a0, 48
80202b6e: 49 92        	srli	a2, a2, 50
80202b70: 85 66        	lui	a3, 1
80202b72: 9b 86 b6 47  	addiw	a3, a3, 1147
80202b76: 33 06 d6 02  	mul	a2, a2, a3
80202b7a: 45 82        	srli	a2, a2, 17
80202b7c: 93 06 40 06  	li	a3, 100
80202b80: bb 06 d6 02  	mulw	a3, a2, a3
80202b84: 15 9d        	subw	a0, a0, a3
80202b86: 46 15        	slli	a0, a0, 49
80202b88: 41 91        	srli	a0, a0, 48
80202b8a: 79 17        	addi	a4, a4, -2
80202b8c: 76 95        	add	a0, a0, t4
80202b8e: 83 06 15 00  	lb	a3, 1(a0)
80202b92: 03 45 05 00  	lbu	a0, 0(a0)
80202b96: 93 07 11 00  	addi	a5, sp, 1
80202b9a: ba 97        	add	a5, a5, a4
80202b9c: a3 80 d7 00  	sb	a3, 1(a5)
80202ba0: 23 80 a7 00  	sb	a0, 0(a5)
80202ba4: 32 85        	mv	a0, a2
80202ba6: 29 46        	li	a2, 10
80202ba8: e3 6d c5 f0  	bltu	a0, a2, 0x80202ac2 <.LBB580_10+0x1a>
80202bac: 06 05        	slli	a0, a0, 1
80202bae: 93 06 e7 ff  	addi	a3, a4, -2
80202bb2: 76 95        	add	a0, a0, t4
80202bb4: 03 06 15 00  	lb	a2, 1(a0)
80202bb8: 03 45 05 00  	lbu	a0, 0(a0)
80202bbc: 13 07 11 00  	addi	a4, sp, 1
80202bc0: 36 97        	add	a4, a4, a3
80202bc2: a3 00 c7 00  	sb	a2, 1(a4)
80202bc6: 23 00 a7 00  	sb	a0, 0(a4)
80202bca: 13 05 11 00  	addi	a0, sp, 1
80202bce: 33 07 d5 00  	add	a4, a0, a3
80202bd2: 13 05 70 02  	li	a0, 39
80202bd6: b3 07 d5 40  	sub	a5, a0, a3

0000000080202bda <.LBB580_12>:
80202bda: 17 16 00 00  	auipc	a2, 1
80202bde: 13 06 e6 ba  	addi	a2, a2, -1106
80202be2: 42 85        	mv	a0, a6
80202be4: 81 46        	li	a3, 0
80202be6: 97 00 00 00  	auipc	ra, 0
80202bea: e7 80 e0 82  	jalr	-2002(ra)
80202bee: e2 70        	ld	ra, 56(sp)
80202bf0: 42 74        	ld	s0, 48(sp)
80202bf2: a2 74        	ld	s1, 40(sp)
80202bf4: 21 61        	addi	sp, sp, 64
80202bf6: 82 80        	ret

0000000080202bf8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
80202bf8: 03 65 05 00  	lwu	a0, 0(a0)
80202bfc: 2e 86        	mv	a2, a1
80202bfe: 85 45        	li	a1, 1
80202c00: 17 03 00 00  	auipc	t1, 0
80202c04: 67 00 23 e9  	jr	-366(t1)

0000000080202c08 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
80202c08: 08 61        	ld	a0, 0(a0)
80202c0a: 2e 86        	mv	a2, a1
80202c0c: 85 45        	li	a1, 1
80202c0e: 17 03 00 00  	auipc	t1, 0
80202c12: 67 00 43 e8  	jr	-380(t1)

0000000080202c16 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
80202c16: 90 65        	ld	a2, 8(a1)
80202c18: 88 61        	ld	a0, 0(a1)
80202c1a: 1c 6e        	ld	a5, 24(a2)

0000000080202c1c <.LBB612_1>:
80202c1c: 97 15 00 00  	auipc	a1, 1
80202c20: 93 85 45 cd  	addi	a1, a1, -812
80202c24: 15 46        	li	a2, 5
80202c26: 82 87        	jr	a5

0000000080202c28 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
80202c28: 10 65        	ld	a2, 8(a0)
80202c2a: 08 61        	ld	a0, 0(a0)
80202c2c: 1c 6e        	ld	a5, 24(a2)
80202c2e: 82 87        	jr	a5

0000000080202c30 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
80202c30: 14 61        	ld	a3, 0(a0)
80202c32: 10 65        	ld	a2, 8(a0)
80202c34: 2e 85        	mv	a0, a1
80202c36: b6 85        	mv	a1, a3
80202c38: 17 03 00 00  	auipc	t1, 0
80202c3c: 67 00 03 a5  	jr	-1456(t1)

0000000080202c40 <memset>:
80202c40: 17 03 00 00  	auipc	t1, 0
80202c44: 67 00 83 00  	jr	8(t1)

0000000080202c48 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
80202c48: bd 46        	li	a3, 15
80202c4a: 63 fa c6 04  	bgeu	a3, a2, 0x80202c9e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80202c4e: bb 06 a0 40  	negw	a3, a0
80202c52: 9d 8a        	andi	a3, a3, 7
80202c54: 33 07 d5 00  	add	a4, a0, a3
80202c58: 99 c6        	beqz	a3, 0x80202c66 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
80202c5a: aa 87        	mv	a5, a0
80202c5c: 23 80 b7 00  	sb	a1, 0(a5)
80202c60: 85 07        	addi	a5, a5, 1
80202c62: e3 ed e7 fe  	bltu	a5, a4, 0x80202c5c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
80202c66: b3 08 d6 40  	sub	a7, a2, a3
80202c6a: 93 f7 88 ff  	andi	a5, a7, -8
80202c6e: b3 06 f7 00  	add	a3, a4, a5
80202c72: 63 52 f0 02  	blez	a5, 0x80202c96 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
80202c76: 13 98 85 03  	slli	a6, a1, 56
80202c7a: b7 17 10 10  	lui	a5, 65793
80202c7e: 92 07        	slli	a5, a5, 4
80202c80: 93 87 07 10  	addi	a5, a5, 256
80202c84: b3 37 f8 02  	mulhu	a5, a6, a5
80202c88: 13 96 07 02  	slli	a2, a5, 32
80202c8c: d1 8f        	or	a5, a5, a2
80202c8e: 1c e3        	sd	a5, 0(a4)
80202c90: 21 07        	addi	a4, a4, 8
80202c92: e3 6e d7 fe  	bltu	a4, a3, 0x80202c8e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
80202c96: 13 f6 78 00  	andi	a2, a7, 7
80202c9a: 01 e6        	bnez	a2, 0x80202ca2 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80202c9c: 09 a8        	j	0x80202cae <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202c9e: aa 86        	mv	a3, a0
80202ca0: 19 c6        	beqz	a2, 0x80202cae <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80202ca2: 36 96        	add	a2, a2, a3
80202ca4: 23 80 b6 00  	sb	a1, 0(a3)
80202ca8: 85 06        	addi	a3, a3, 1
80202caa: e3 ed c6 fe  	bltu	a3, a2, 0x80202ca4 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80202cae: 82 80        	ret
