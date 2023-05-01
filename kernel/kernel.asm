
kernel/target/riscv64gc-unknown-none-elf/release/kernel:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 17 61 01 00  	auipc	sp, 22
80200004: 13 01 01 00  	mv	sp, sp
80200008: 97 20 00 00  	auipc	ra, 2
8020000c: e7 80 e0 7f  	jalr	2046(ra)
		...

0000000080201000 <trampoline>:
;     pub fn walk(&mut self, va: Addr, alloc: bool) -> *mut PteT {
80201000: 29 71        	addi	sp, sp, -320
80201002: 06 fe        	sd	ra, 312(sp)
80201004: 22 fa        	sd	s0, 304(sp)
80201006: 26 f6        	sd	s1, 296(sp)
80201008: 4a f2        	sd	s2, 288(sp)
8020100a: 4e ee        	sd	s3, 280(sp)
8020100c: 52 ea        	sd	s4, 272(sp)
8020100e: 56 e6        	sd	s5, 264(sp)
80201010: 5a e2        	sd	s6, 256(sp)
80201012: de fd        	sd	s7, 248(sp)
80201014: e2 f9        	sd	s8, 240(sp)
80201016: e6 f5        	sd	s9, 232(sp)
80201018: ea f1        	sd	s10, 224(sp)
8020101a: ee ed        	sd	s11, 216(sp)
8020101c: 80 02        	addi	s0, sp, 320
8020101e: ae 89        	mv	s3, a1
;         if va >= MAXVA {
80201020: 99 91        	srli	a1, a1, 38
80201022: 23 3c c4 ec  	sd	a2, -296(s0)
80201026: 63 9d 05 46  	bnez	a1, 0x802014a0 <.LBB2_54>
8020102a: aa 84        	mv	s1, a0
8020102c: 45 45        	li	a0, 17
8020102e: 6e 05        	slli	a0, a0, 27
80201030: 7d 15        	addi	a0, a0, -1
;             if va == 0x87ffffff {
80201032: 63 95 a9 34  	bne	s3, a0, 0x8020137c <.LBB2_49+0x30>
80201036: 23 34 34 ed  	sd	s3, -312(s0)
8020103a: 7d 75        	lui	a0, 1048575
8020103c: 09 81        	srli	a0, a0, 2
8020103e: 23 38 a4 ec  	sd	a0, -304(s0)
80201042: 37 85 08 00  	lui	a0, 136
80201046: 7d 35        	addiw	a0, a0, -1
80201048: 23 30 a4 ee  	sd	a0, -288(s0)

000000008020104c <.LBB2_39>:
8020104c: 17 25 00 00  	auipc	a0, 2
80201050: 13 05 65 47  	addi	a0, a0, 1142
80201054: 23 3c a4 ee  	sd	a0, -264(s0)
80201058: 13 0d 04 f9  	addi	s10, s0, -112

000000008020105c <.LBB2_40>:
8020105c: 17 35 00 00  	auipc	a0, 3
80201060: 13 05 c5 ff  	addi	a0, a0, -4
80201064: 23 38 a4 ee  	sd	a0, -272(s0)
80201068: 09 4b        	li	s6, 2
8020106a: 85 49        	li	s3, 1

000000008020106c <.LBB2_41>:
8020106c: 17 3a 00 00  	auipc	s4, 3
80201070: 13 0a ca 62  	addi	s4, s4, 1580
80201074: 13 09 f0 1f  	li	s2, 511
80201078: 93 0c 84 f1  	addi	s9, s0, -232

000000008020107c <.LBB2_42>:
8020107c: 97 2d 00 00  	auipc	s11, 2
80201080: 93 8d ad 24  	addi	s11, s11, 586
80201084: 13 95 59 02  	slli	a0, s3, 37
80201088: 93 0a 45 00  	addi	s5, a0, 4

000000008020108c <.LBB2_43>:
8020108c: 97 3b 00 00  	auipc	s7, 3
80201090: 93 8b 4b ff  	addi	s7, s7, -12
80201094: 0d 46        	li	a2, 3
80201096: 7d 16        	addi	a2, a2, -1
;     PGSHIFT + 9 * level
80201098: 13 15 36 00  	slli	a0, a2, 3
8020109c: 32 95        	add	a0, a0, a2
;     (va >> pxshift(level)) & PXMASK
8020109e: 83 35 04 ee  	ld	a1, -288(s0)
802010a2: 33 d5 a5 00  	srl	a0, a1, a0
802010a6: 13 75 f5 1f  	andi	a0, a0, 511
;             pte = &mut pagetable.data[px(level, va)];
802010aa: 0e 05        	slli	a0, a0, 3
802010ac: 33 8c a4 00  	add	s8, s1, a0
;             if (*pte & PTE_V) != 0 {
802010b0: 03 35 0c 00  	ld	a0, 0(s8)
802010b4: 93 75 15 00  	andi	a1, a0, 1
802010b8: 23 34 c4 ee  	sd	a2, -280(s0)
802010bc: 85 ed        	bnez	a1, 0x802010f4 <.LBB2_43+0x68>
;                 if !alloc {
802010be: 03 35 84 ed  	ld	a0, -296(s0)
802010c2: 63 0b 05 38  	beqz	a0, 0x80201458 <.LBB2_50+0x78>
;                 let pa = kalloc();
802010c6: 97 10 00 00  	auipc	ra, 1
802010ca: e7 80 20 ea  	jalr	-350(ra)
;                 if pa == 0 {
802010ce: 63 05 05 38  	beqz	a0, 0x80201458 <.LBB2_50+0x78>
802010d2: aa 84        	mv	s1, a0
802010d4: 05 66        	lui	a2, 1
802010d6: 81 45        	li	a1, 0
802010d8: 97 20 00 00  	auipc	ra, 2
802010dc: e7 80 20 42  	jalr	1058(ra)
;     (pa >> 12) << 10
802010e0: 13 d5 24 00  	srli	a0, s1, 2
802010e4: 83 35 04 ed  	ld	a1, -304(s0)
802010e8: 6d 8d        	and	a0, a0, a1
;                 *pte = pa2pte(pa) | PTE_V;
802010ea: 13 65 15 00  	ori	a0, a0, 1
802010ee: 23 30 ac 00  	sd	a0, 0(s8)
802010f2: 21 a0        	j	0x802010fa <.LBB2_43+0x6e>
;     (pte >> 10) << 12
802010f4: 29 81        	srli	a0, a0, 10
802010f6: 93 14 c5 00  	slli	s1, a0, 12
802010fa: 01 4c        	li	s8, 0
;                 for i in 0..128 {
802010fc: 23 30 84 f1  	sd	s8, -256(s0)
;                     print!("{}: ", i);
80201100: 13 05 04 f0  	addi	a0, s0, -256
80201104: 23 30 a4 f6  	sd	a0, -160(s0)
80201108: 03 35 84 ef  	ld	a0, -264(s0)
8020110c: 23 34 a4 f6  	sd	a0, -152(s0)
80201110: 23 34 a4 f1  	sd	s10, -248(s0)
80201114: 23 30 04 f2  	sd	zero, -224(s0)
80201118: 03 35 04 ef  	ld	a0, -272(s0)
8020111c: 23 38 a4 f2  	sd	a0, -208(s0)
80201120: 23 3c 64 f3  	sd	s6, -200(s0)
80201124: 13 05 04 f6  	addi	a0, s0, -160
80201128: 23 30 a4 f4  	sd	a0, -192(s0)
8020112c: 23 34 34 f5  	sd	s3, -184(s0)
80201130: 13 05 84 f0  	addi	a0, s0, -248
80201134: 13 06 04 f2  	addi	a2, s0, -224
80201138: d2 85        	mv	a1, s4
8020113a: 97 20 00 00  	auipc	ra, 2
8020113e: e7 80 40 93  	jalr	-1740(ra)
80201142: 63 1a 05 32  	bnez	a0, 0x80201476 <.LBB2_51>
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
80201146: 03 35 04 f0  	ld	a0, -256(s0)
8020114a: 0a 05        	slli	a0, a0, 2
8020114c: 63 6a a9 28  	bltu	s2, a0, 0x802013e0 <.LBB2_50>
80201150: 0e 05        	slli	a0, a0, 3
80201152: 26 95        	add	a0, a0, s1
80201154: 08 61        	ld	a0, 0(a0)
;     (pte >> 10) << 12
80201156: 29 81        	srli	a0, a0, 10
80201158: 32 05        	slli	a0, a0, 12
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
8020115a: 23 3c a4 f0  	sd	a0, -232(s0)
8020115e: 23 34 94 f1  	sd	s9, -248(s0)
80201162: 23 38 b4 f1  	sd	s11, -240(s0)
80201166: 23 30 64 f3  	sd	s6, -224(s0)
8020116a: 23 38 64 f3  	sd	s6, -208(s0)
8020116e: 23 30 54 f5  	sd	s5, -192(s0)
80201172: 0d 45        	li	a0, 3
80201174: 23 04 a4 f4  	sb	a0, -184(s0)
80201178: 23 38 04 f4  	sd	zero, -176(s0)
8020117c: 23 3c a4 f5  	sd	s10, -168(s0)
80201180: 13 05 04 f2  	addi	a0, s0, -224
80201184: 23 30 a4 f6  	sd	a0, -160(s0)
80201188: 23 34 34 f7  	sd	s3, -152(s0)
8020118c: 23 38 74 f7  	sd	s7, -144(s0)
80201190: 23 3c 64 f7  	sd	s6, -136(s0)
80201194: 13 05 84 f0  	addi	a0, s0, -248
80201198: 23 30 a4 f8  	sd	a0, -128(s0)
8020119c: 23 34 34 f9  	sd	s3, -120(s0)
802011a0: 13 05 84 f5  	addi	a0, s0, -168
802011a4: 13 06 04 f6  	addi	a2, s0, -160
802011a8: d2 85        	mv	a1, s4
802011aa: 97 20 00 00  	auipc	ra, 2
802011ae: e7 80 40 8c  	jalr	-1852(ra)
802011b2: 63 12 05 2c  	bnez	a0, 0x80201476 <.LBB2_51>
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
802011b6: 03 35 04 f0  	ld	a0, -256(s0)
802011ba: 0a 05        	slli	a0, a0, 2
802011bc: 13 65 15 00  	ori	a0, a0, 1
802011c0: 63 60 a9 22  	bltu	s2, a0, 0x802013e0 <.LBB2_50>
802011c4: 0e 05        	slli	a0, a0, 3
802011c6: 26 95        	add	a0, a0, s1
802011c8: 08 61        	ld	a0, 0(a0)
;     (pte >> 10) << 12
802011ca: 29 81        	srli	a0, a0, 10
802011cc: 32 05        	slli	a0, a0, 12
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
802011ce: 23 3c a4 f0  	sd	a0, -232(s0)
802011d2: 23 34 94 f1  	sd	s9, -248(s0)
802011d6: 23 38 b4 f1  	sd	s11, -240(s0)
802011da: 23 30 64 f3  	sd	s6, -224(s0)
802011de: 23 38 64 f3  	sd	s6, -208(s0)
802011e2: 23 30 54 f5  	sd	s5, -192(s0)
802011e6: 0d 45        	li	a0, 3
802011e8: 23 04 a4 f4  	sb	a0, -184(s0)
802011ec: 23 38 04 f4  	sd	zero, -176(s0)
802011f0: 23 3c a4 f5  	sd	s10, -168(s0)
802011f4: 13 05 04 f2  	addi	a0, s0, -224
802011f8: 23 30 a4 f6  	sd	a0, -160(s0)
802011fc: 23 34 34 f7  	sd	s3, -152(s0)
80201200: 23 38 74 f7  	sd	s7, -144(s0)
80201204: 23 3c 64 f7  	sd	s6, -136(s0)
80201208: 13 05 84 f0  	addi	a0, s0, -248
8020120c: 23 30 a4 f8  	sd	a0, -128(s0)
80201210: 23 34 34 f9  	sd	s3, -120(s0)

0000000080201214 <.LBB2_44>:
80201214: 97 35 00 00  	auipc	a1, 3
80201218: 93 85 45 48  	addi	a1, a1, 1156
8020121c: 13 05 84 f5  	addi	a0, s0, -168
80201220: 13 06 04 f6  	addi	a2, s0, -160
80201224: 97 20 00 00  	auipc	ra, 2
80201228: e7 80 a0 84  	jalr	-1974(ra)
8020122c: 63 15 05 24  	bnez	a0, 0x80201476 <.LBB2_51>
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
80201230: 03 35 04 f0  	ld	a0, -256(s0)
80201234: 0a 05        	slli	a0, a0, 2
80201236: 13 65 25 00  	ori	a0, a0, 2
8020123a: 63 63 a9 1a  	bltu	s2, a0, 0x802013e0 <.LBB2_50>
8020123e: 0e 05        	slli	a0, a0, 3
80201240: 26 95        	add	a0, a0, s1
80201242: 08 61        	ld	a0, 0(a0)
;     (pte >> 10) << 12
80201244: 29 81        	srli	a0, a0, 10
80201246: 32 05        	slli	a0, a0, 12
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
80201248: 23 3c a4 f0  	sd	a0, -232(s0)
8020124c: 23 34 94 f1  	sd	s9, -248(s0)
80201250: 23 38 b4 f1  	sd	s11, -240(s0)
80201254: 23 30 64 f3  	sd	s6, -224(s0)
80201258: 23 38 64 f3  	sd	s6, -208(s0)
8020125c: 23 30 54 f5  	sd	s5, -192(s0)
80201260: 0d 45        	li	a0, 3
80201262: 23 04 a4 f4  	sb	a0, -184(s0)
80201266: 23 38 04 f4  	sd	zero, -176(s0)
8020126a: 23 3c a4 f5  	sd	s10, -168(s0)
8020126e: 13 05 04 f2  	addi	a0, s0, -224
80201272: 23 30 a4 f6  	sd	a0, -160(s0)
80201276: 23 34 34 f7  	sd	s3, -152(s0)
8020127a: 23 38 74 f7  	sd	s7, -144(s0)
8020127e: 23 3c 64 f7  	sd	s6, -136(s0)
80201282: 13 05 84 f0  	addi	a0, s0, -248
80201286: 23 30 a4 f8  	sd	a0, -128(s0)
8020128a: 23 34 34 f9  	sd	s3, -120(s0)

000000008020128e <.LBB2_45>:
8020128e: 97 35 00 00  	auipc	a1, 3
80201292: 93 85 a5 40  	addi	a1, a1, 1034
80201296: 13 05 84 f5  	addi	a0, s0, -168
8020129a: 13 06 04 f6  	addi	a2, s0, -160
8020129e: 97 10 00 00  	auipc	ra, 1
802012a2: e7 80 00 7d  	jalr	2000(ra)
802012a6: 63 18 05 1c  	bnez	a0, 0x80201476 <.LBB2_51>
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
802012aa: 03 35 04 f0  	ld	a0, -256(s0)
802012ae: 0a 05        	slli	a0, a0, 2
802012b0: 13 65 35 00  	ori	a0, a0, 3
802012b4: 63 66 a9 12  	bltu	s2, a0, 0x802013e0 <.LBB2_50>
802012b8: 0e 05        	slli	a0, a0, 3
802012ba: 26 95        	add	a0, a0, s1
802012bc: 08 61        	ld	a0, 0(a0)
;     (pte >> 10) << 12
802012be: 29 81        	srli	a0, a0, 10
802012c0: 32 05        	slli	a0, a0, 12
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
802012c2: 23 3c a4 f0  	sd	a0, -232(s0)
802012c6: 23 34 94 f1  	sd	s9, -248(s0)
802012ca: 23 38 b4 f1  	sd	s11, -240(s0)
802012ce: 23 30 64 f3  	sd	s6, -224(s0)
802012d2: 23 38 64 f3  	sd	s6, -208(s0)
802012d6: 23 30 54 f5  	sd	s5, -192(s0)
802012da: 0d 45        	li	a0, 3
802012dc: 23 04 a4 f4  	sb	a0, -184(s0)
802012e0: 23 38 04 f4  	sd	zero, -176(s0)
802012e4: 23 3c a4 f5  	sd	s10, -168(s0)
802012e8: 13 05 04 f2  	addi	a0, s0, -224
802012ec: 23 30 a4 f6  	sd	a0, -160(s0)
802012f0: 23 34 34 f7  	sd	s3, -152(s0)
802012f4: 23 38 74 f7  	sd	s7, -144(s0)
802012f8: 23 3c 64 f7  	sd	s6, -136(s0)
802012fc: 13 05 84 f0  	addi	a0, s0, -248
80201300: 23 30 a4 f8  	sd	a0, -128(s0)
80201304: 23 34 34 f9  	sd	s3, -120(s0)

0000000080201308 <.LBB2_46>:
80201308: 97 35 00 00  	auipc	a1, 3
8020130c: 93 85 05 39  	addi	a1, a1, 912
80201310: 13 05 84 f5  	addi	a0, s0, -168
80201314: 13 06 04 f6  	addi	a2, s0, -160
80201318: 97 10 00 00  	auipc	ra, 1
8020131c: e7 80 60 75  	jalr	1878(ra)
80201320: 63 1b 05 14  	bnez	a0, 0x80201476 <.LBB2_51>
80201324: 23 30 a4 f7  	sd	s10, -160(s0)
80201328: 23 30 04 f2  	sd	zero, -224(s0)

000000008020132c <.LBB2_47>:
8020132c: 17 35 00 00  	auipc	a0, 3
80201330: 13 05 45 d9  	addi	a0, a0, -620
80201334: 23 38 a4 f2  	sd	a0, -208(s0)
80201338: 23 3c 34 f3  	sd	s3, -200(s0)

000000008020133c <.LBB2_48>:
8020133c: 17 35 00 00  	auipc	a0, 3
80201340: 13 05 45 cc  	addi	a0, a0, -828
80201344: 23 30 a4 f4  	sd	a0, -192(s0)
80201348: 23 34 04 f4  	sd	zero, -184(s0)

000000008020134c <.LBB2_49>:
8020134c: 97 35 00 00  	auipc	a1, 3
80201350: 93 85 c5 34  	addi	a1, a1, 844
80201354: 13 05 04 f6  	addi	a0, s0, -160
80201358: 13 06 04 f2  	addi	a2, s0, -224
8020135c: 97 10 00 00  	auipc	ra, 1
80201360: e7 80 20 71  	jalr	1810(ra)
80201364: 63 19 05 10  	bnez	a0, 0x80201476 <.LBB2_51>
80201368: 05 0c        	addi	s8, s8, 1
8020136a: 13 05 00 08  	li	a0, 128
8020136e: e3 17 ac d8  	bne	s8, a0, 0x802010fc <.LBB2_43+0x70>
80201372: 03 36 84 ee  	ld	a2, -280(s0)
80201376: e3 e0 c9 d2  	bltu	s3, a2, 0x80201096 <.LBB2_43+0xa>
8020137a: c1 a8        	j	0x8020144a <.LBB2_50+0x6a>
;             pte = &mut pagetable.data[px(level, va)];
8020137c: 13 d5 b9 01  	srli	a0, s3, 27
80201380: 61 99        	andi	a0, a0, -8
80201382: aa 94        	add	s1, s1, a0
;             if (*pte & PTE_V) != 0 {
80201384: 8c 60        	ld	a1, 0(s1)
80201386: 13 f6 15 00  	andi	a2, a1, 1
;                 if !alloc {
8020138a: 03 35 84 ed  	ld	a0, -296(s0)
8020138e: 0d c5        	beqz	a0, 0x802013b8 <.LBB2_49+0x6c>
;             if (*pte & PTE_V) != 0 {
80201390: 3d e2        	bnez	a2, 0x802013f6 <.LBB2_50+0x16>
;                 let pa = kalloc();
80201392: 97 10 00 00  	auipc	ra, 1
80201396: e7 80 60 bd  	jalr	-1066(ra)
;                 if pa == 0 {
8020139a: 5d cd        	beqz	a0, 0x80201458 <.LBB2_50+0x78>
8020139c: 2a 89        	mv	s2, a0
8020139e: 05 66        	lui	a2, 1
802013a0: 81 45        	li	a1, 0
802013a2: 97 20 00 00  	auipc	ra, 2
802013a6: e7 80 80 15  	jalr	344(ra)
;     (pa >> 12) << 10
802013aa: 13 55 c9 00  	srli	a0, s2, 12
802013ae: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
802013b0: 13 65 15 00  	ori	a0, a0, 1
802013b4: 88 e0        	sd	a0, 0(s1)
802013b6: a1 a0        	j	0x802013fe <.LBB2_50+0x1e>
;             if (*pte & PTE_V) != 0 {
802013b8: 45 c2        	beqz	a2, 0x80201458 <.LBB2_50+0x78>
;     (pte >> 10) << 12
802013ba: 13 d5 a5 00  	srli	a0, a1, 10
802013be: 32 05        	slli	a0, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
802013c0: 93 d5 29 01  	srli	a1, s3, 18
802013c4: 05 66        	lui	a2, 1
802013c6: 61 36        	addiw	a2, a2, -8
;             pte = &mut pagetable.data[px(level, va)];
802013c8: f1 8d        	and	a1, a1, a2
802013ca: 4d 8d        	or	a0, a0, a1
;             if (*pte & PTE_V) != 0 {
802013cc: 0c 61        	ld	a1, 0(a0)
802013ce: 13 f6 15 00  	andi	a2, a1, 1
802013d2: 01 45        	li	a0, 0
802013d4: 51 c2        	beqz	a2, 0x80201458 <.LBB2_50+0x78>
802013d6: 23 34 34 ed  	sd	s3, -312(s0)
;     (pte >> 10) << 12
802013da: 13 d5 a5 00  	srli	a0, a1, 10
802013de: a5 a0        	j	0x80201446 <.LBB2_50+0x66>

00000000802013e0 <.LBB2_50>:
;                         print!("{:#x}  ", pte2pa(pagetable.data[i * 4 + j]));
802013e0: 17 36 00 00  	auipc	a2, 3
802013e4: 13 06 06 cc  	addi	a2, a2, -832
802013e8: 93 05 00 20  	li	a1, 512
802013ec: 97 10 00 00  	auipc	ra, 1
802013f0: e7 80 40 5c  	jalr	1476(ra)
802013f4: 00 00        	unimp	
;     (pte >> 10) << 12
802013f6: 13 d5 a5 00  	srli	a0, a1, 10
802013fa: 13 19 c5 00  	slli	s2, a0, 12
;             pte = &mut pagetable.data[px(level, va)];
802013fe: 13 d5 29 01  	srli	a0, s3, 18
80201402: 85 65        	lui	a1, 1
80201404: e1 35        	addiw	a1, a1, -8
80201406: 6d 8d        	and	a0, a0, a1
80201408: 2a 99        	add	s2, s2, a0
;             if (*pte & PTE_V) != 0 {
8020140a: 03 35 09 00  	ld	a0, 0(s2)
8020140e: 93 75 15 00  	andi	a1, a0, 1
80201412: 9d e5        	bnez	a1, 0x80201440 <.LBB2_50+0x60>
;                 let pa = kalloc();
80201414: 97 10 00 00  	auipc	ra, 1
80201418: e7 80 40 b5  	jalr	-1196(ra)
;                 if pa == 0 {
8020141c: 15 cd        	beqz	a0, 0x80201458 <.LBB2_50+0x78>
8020141e: aa 84        	mv	s1, a0
80201420: 23 34 34 ed  	sd	s3, -312(s0)
80201424: 05 66        	lui	a2, 1
80201426: 81 45        	li	a1, 0
80201428: 97 20 00 00  	auipc	ra, 2
8020142c: e7 80 20 0d  	jalr	210(ra)
;     (pa >> 12) << 10
80201430: 13 d5 c4 00  	srli	a0, s1, 12
80201434: 2a 05        	slli	a0, a0, 10
;                 *pte = pa2pte(pa) | PTE_V;
80201436: 13 65 15 00  	ori	a0, a0, 1
8020143a: 23 30 a9 00  	sd	a0, 0(s2)
8020143e: 31 a0        	j	0x8020144a <.LBB2_50+0x6a>
80201440: 23 34 34 ed  	sd	s3, -312(s0)
;     (pte >> 10) << 12
80201444: 29 81        	srli	a0, a0, 10
80201446: 93 14 c5 00  	slli	s1, a0, 12
;         &mut pagetable.data[px(0, va)]
8020144a: 03 35 84 ec  	ld	a0, -312(s0)
8020144e: 25 81        	srli	a0, a0, 9
80201450: 85 65        	lui	a1, 1
80201452: e1 35        	addiw	a1, a1, -8
;         &mut pagetable.data[px(0, va)]
80201454: 6d 8d        	and	a0, a0, a1
80201456: 26 95        	add	a0, a0, s1
;     }
80201458: f2 70        	ld	ra, 312(sp)
8020145a: 52 74        	ld	s0, 304(sp)
8020145c: b2 74        	ld	s1, 296(sp)
8020145e: 12 79        	ld	s2, 288(sp)
80201460: f2 69        	ld	s3, 280(sp)
80201462: 52 6a        	ld	s4, 272(sp)
80201464: b2 6a        	ld	s5, 264(sp)
80201466: 12 6b        	ld	s6, 256(sp)
80201468: ee 7b        	ld	s7, 248(sp)
8020146a: 4e 7c        	ld	s8, 240(sp)
8020146c: ae 7c        	ld	s9, 232(sp)
8020146e: 0e 7d        	ld	s10, 224(sp)
80201470: ee 6d        	ld	s11, 216(sp)
80201472: 31 61        	addi	sp, sp, 320
80201474: 82 80        	ret

0000000080201476 <.LBB2_51>:
80201476: 17 35 00 00  	auipc	a0, 3
8020147a: 13 05 25 25  	addi	a0, a0, 594

000000008020147e <.LBB2_52>:
8020147e: 97 36 00 00  	auipc	a3, 3
80201482: 93 86 a6 27  	addi	a3, a3, 634

0000000080201486 <.LBB2_53>:
80201486: 17 37 00 00  	auipc	a4, 3
8020148a: 13 07 27 2a  	addi	a4, a4, 674
8020148e: 93 05 b0 02  	li	a1, 43
80201492: 13 06 04 f9  	addi	a2, s0, -112
80201496: 97 10 00 00  	auipc	ra, 1
8020149a: e7 80 a0 55  	jalr	1370(ra)
8020149e: 00 00        	unimp	

00000000802014a0 <.LBB2_54>:
802014a0: 17 35 00 00  	auipc	a0, 3
802014a4: 13 05 05 b7  	addi	a0, a0, -1168
802014a8: 23 38 a4 f2  	sd	a0, -208(s0)
802014ac: 05 45        	li	a0, 1
802014ae: 23 3c a4 f2  	sd	a0, -200(s0)
802014b2: 23 30 04 f2  	sd	zero, -224(s0)

00000000802014b6 <.LBB2_55>:
802014b6: 17 35 00 00  	auipc	a0, 3
802014ba: 13 05 a5 b4  	addi	a0, a0, -1206
802014be: 23 30 a4 f4  	sd	a0, -192(s0)
802014c2: 23 34 04 f4  	sd	zero, -184(s0)

00000000802014c6 <.LBB2_56>:
;             panic!("walk");
802014c6: 97 35 00 00  	auipc	a1, 3
802014ca: 93 85 25 b7  	addi	a1, a1, -1166
802014ce: 13 05 04 f2  	addi	a0, s0, -224
802014d2: 97 10 00 00  	auipc	ra, 1
802014d6: e7 80 40 48  	jalr	1156(ra)
802014da: 00 00        	unimp	

00000000802014dc <_ZN6kernel6memory3kvm7kvminit17h8793f41542848a7cE>:
; pub fn kvminit() {
802014dc: 75 71        	addi	sp, sp, -144
;         self.0.call_once(builder)
802014de: 06 e5        	sd	ra, 136(sp)
802014e0: 22 e1        	sd	s0, 128(sp)
802014e2: a6 fc        	sd	s1, 120(sp)
802014e4: ca f8        	sd	s2, 112(sp)
802014e6: ce f4        	sd	s3, 104(sp)
802014e8: d2 f0        	sd	s4, 96(sp)
802014ea: d6 ec        	sd	s5, 88(sp)
802014ec: da e8        	sd	s6, 80(sp)
802014ee: de e4        	sd	s7, 72(sp)
802014f0: 00 09        	addi	s0, sp, 144

00000000802014f2 <.LBB1_33>:
802014f2: 17 55 01 00  	auipc	a0, 21
802014f6: 13 05 e5 b0  	addi	a0, a0, -1266
802014fa: 97 10 00 00  	auipc	ra, 1
802014fe: e7 80 e0 bb  	jalr	-1090(ra)
80201502: 2a 89        	mv	s2, a0
80201504: 08 61        	ld	a0, 0(a0)
80201506: 63 19 05 2a  	bnez	a0, 0x802017b8 <.LBB1_49>
8020150a: 03 35 89 00  	ld	a0, 8(s2)
8020150e: fd 55        	li	a1, -1
80201510: 23 30 b9 00  	sd	a1, 0(s2)
;             let pte = self.walk(a, true);
80201514: b7 05 00 10  	lui	a1, 65536
80201518: 05 46        	li	a2, 1
8020151a: 85 44        	li	s1, 1
8020151c: 97 00 00 00  	auipc	ra, 0
80201520: e7 80 40 ae  	jalr	-1308(ra)
;             if pte == null_mut() {
80201524: 63 03 05 24  	beqz	a0, 0x8020176a <.LBB1_45>
;             if unsafe { *pte & PTE_V } != 0 {
80201528: 83 45 05 00  	lbu	a1, 0(a0)
8020152c: 85 89        	andi	a1, a1, 1
8020152e: 63 92 05 1c  	bnez	a1, 0x802016f2 <.LBB1_39>
80201532: b7 05 00 04  	lui	a1, 16384
80201536: 9d 25        	addiw	a1, a1, 7
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201538: 0c e1        	sd	a1, 0(a0)
8020153a: 03 35 89 00  	ld	a0, 8(s2)
;             let pte = self.walk(a, true);
8020153e: b7 15 00 10  	lui	a1, 65537
80201542: 05 46        	li	a2, 1
80201544: 85 44        	li	s1, 1
80201546: 97 00 00 00  	auipc	ra, 0
8020154a: e7 80 a0 ab  	jalr	-1350(ra)
;             if pte == null_mut() {
8020154e: 63 0e 05 20  	beqz	a0, 0x8020176a <.LBB1_45>
;             if unsafe { *pte & PTE_V } != 0 {
80201552: 83 45 05 00  	lbu	a1, 0(a0)
80201556: 85 89        	andi	a1, a1, 1
80201558: 63 9d 05 18  	bnez	a1, 0x802016f2 <.LBB1_39>
8020155c: b7 05 00 04  	lui	a1, 16384
80201560: 9b 85 75 40  	addiw	a1, a1, 1031
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201564: 0c e1        	sd	a1, 0(a0)
80201566: 83 39 89 00  	ld	s3, 8(s2)
8020156a: 37 0a 00 0c  	lui	s4, 49152
8020156e: b7 fa ff 0b  	lui	s5, 49151
80201572: 37 05 00 03  	lui	a0, 12288
80201576: 9b 04 75 00  	addiw	s1, a0, 7
8020157a: 05 6b        	lui	s6, 1
8020157c: b7 eb 3f 0c  	lui	s7, 50174
;             let pte = self.walk(a, true);
80201580: 05 46        	li	a2, 1
80201582: 4e 85        	mv	a0, s3
80201584: d2 85        	mv	a1, s4
80201586: 97 00 00 00  	auipc	ra, 0
8020158a: e7 80 a0 a7  	jalr	-1414(ra)
;             if pte == null_mut() {
8020158e: 63 00 05 1a  	beqz	a0, 0x8020172e <.LBB1_42>
;             if unsafe { *pte & PTE_V } != 0 {
80201592: 83 45 05 00  	lbu	a1, 0(a0)
80201596: 85 89        	andi	a1, a1, 1
80201598: 63 9d 05 14  	bnez	a1, 0x802016f2 <.LBB1_39>
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
8020159c: 04 e1        	sd	s1, 0(a0)
;             pa += PGSIZE;
8020159e: 5a 9a        	add	s4, s4, s6
;         while a <= last {
802015a0: da 9a        	add	s5, s5, s6
802015a2: 93 84 04 40  	addi	s1, s1, 1024
802015a6: e3 fd 5b fd  	bgeu	s7, s5, 0x80201580 <.LBB1_33+0x8e>

00000000802015aa <.LBB1_34>:
;         if size == 0 {
802015aa: 17 3a 00 00  	auipc	s4, 3
802015ae: 13 0a 6a a5  	addi	s4, s4, -1450
802015b2: 93 05 10 40  	li	a1, 1025
802015b6: 13 95 55 01  	slli	a0, a1, 21
802015ba: 63 01 aa 1c  	beq	s4, a0, 0x8020177c <.LBB1_46>
;         while a <= last {
802015be: 13 05 fa ff  	addi	a0, s4, -1
802015c2: 13 56 55 01  	srli	a2, a0, 21
802015c6: 63 61 b6 04  	bltu	a2, a1, 0x80201608 <.LBB1_34+0x5e>
802015ca: 83 39 89 00  	ld	s3, 8(s2)
802015ce: 93 05 10 40  	li	a1, 1025
802015d2: 93 94 55 01  	slli	s1, a1, 21
802015d6: 85 6a        	lui	s5, 1
802015d8: fd 75        	lui	a1, 1048575
802015da: 33 7b b5 00  	and	s6, a0, a1
;             let pte = self.walk(a, true);
802015de: 05 46        	li	a2, 1
802015e0: 4e 85        	mv	a0, s3
802015e2: a6 85        	mv	a1, s1
802015e4: 97 00 00 00  	auipc	ra, 0
802015e8: e7 80 c0 a1  	jalr	-1508(ra)
;             if pte == null_mut() {
802015ec: 63 01 05 14  	beqz	a0, 0x8020172e <.LBB1_42>
;             if unsafe { *pte & PTE_V } != 0 {
802015f0: 83 45 05 00  	lbu	a1, 0(a0)
802015f4: 85 89        	andi	a1, a1, 1
802015f6: f5 ed        	bnez	a1, 0x802016f2 <.LBB1_39>
;     (pa >> 12) << 10
802015f8: 93 d5 24 00  	srli	a1, s1, 2
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
802015fc: 93 e5 b5 00  	ori	a1, a1, 11
;             pa += PGSIZE;
80201600: d6 94        	add	s1, s1, s5
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201602: 0c e1        	sd	a1, 0(a0)
;         while a <= last {
80201604: e3 7d 9b fc  	bgeu	s6, s1, 0x802015de <.LBB1_34+0x34>
80201608: 45 45        	li	a0, 17
8020160a: 6e 05        	slli	a0, a0, 27
;         if size == 0 {
8020160c: 63 08 aa 16  	beq	s4, a0, 0x8020177c <.LBB1_46>
80201610: 7d 75        	lui	a0, 1048575
;         while a <= last {
80201612: b3 74 aa 00  	and	s1, s4, a0
80201616: 37 85 08 00  	lui	a0, 136
8020161a: 7d 35        	addiw	a0, a0, -1
8020161c: 93 1a c5 00  	slli	s5, a0, 12
;         while a <= last {
80201620: 63 eb 9a 02  	bltu	s5, s1, 0x80201656 <.LBB1_34+0xac>
80201624: 83 39 89 00  	ld	s3, 8(s2)
80201628: 05 6b        	lui	s6, 1
;             let pte = self.walk(a, true);
8020162a: 05 46        	li	a2, 1
8020162c: 4e 85        	mv	a0, s3
8020162e: a6 85        	mv	a1, s1
80201630: 97 00 00 00  	auipc	ra, 0
80201634: e7 80 00 9d  	jalr	-1584(ra)
;             if pte == null_mut() {
80201638: 7d c9        	beqz	a0, 0x8020172e <.LBB1_42>
;             if unsafe { *pte & PTE_V } != 0 {
8020163a: 83 45 05 00  	lbu	a1, 0(a0)
8020163e: 85 89        	andi	a1, a1, 1
80201640: cd e9        	bnez	a1, 0x802016f2 <.LBB1_39>
;     (pa >> 12) << 10
80201642: 93 55 ca 00  	srli	a1, s4, 12
80201646: aa 05        	slli	a1, a1, 10
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201648: 93 e5 75 00  	ori	a1, a1, 7
8020164c: 0c e1        	sd	a1, 0(a0)
;             a += PGSIZE;
8020164e: da 94        	add	s1, s1, s6
;             pa += PGSIZE;
80201650: 5a 9a        	add	s4, s4, s6
;         while a <= last {
80201652: e3 fc 9a fc  	bgeu	s5, s1, 0x8020162a <.LBB1_34+0x80>
80201656: 03 35 89 00  	ld	a0, 8(s2)
8020165a: b7 05 00 04  	lui	a1, 16384
8020165e: fd 35        	addiw	a1, a1, -1
80201660: b2 05        	slli	a1, a1, 12
;             let pte = self.walk(a, true);
80201662: 05 46        	li	a2, 1
80201664: 85 44        	li	s1, 1
80201666: 97 00 00 00  	auipc	ra, 0
8020166a: e7 80 a0 99  	jalr	-1638(ra)
;             if pte == null_mut() {
8020166e: 75 cd        	beqz	a0, 0x8020176a <.LBB1_45>
;             if unsafe { *pte & PTE_V } != 0 {
80201670: 83 45 05 00  	lbu	a1, 0(a0)
80201674: 85 89        	andi	a1, a1, 1
80201676: b5 ed        	bnez	a1, 0x802016f2 <.LBB1_39>

0000000080201678 <.LBB1_35>:
;             unsafe { *pte = pa2pte(pa) | perm | PTE_V }
80201678: 97 05 00 00  	auipc	a1, 0
8020167c: 93 85 85 98  	addi	a1, a1, -1656
80201680: b1 81        	srli	a1, a1, 12
80201682: aa 05        	slli	a1, a1, 10
80201684: 93 e5 b5 00  	ori	a1, a1, 11
80201688: 0c e1        	sd	a1, 0(a0)
8020168a: 03 35 09 00  	ld	a0, 0(s2)
8020168e: 05 05        	addi	a0, a0, 1
80201690: 23 30 a9 00  	sd	a0, 0(s2)
80201694: 13 05 04 fb  	addi	a0, s0, -80
80201698: 23 3c a4 f6  	sd	a0, -136(s0)
8020169c: 23 30 04 f8  	sd	zero, -128(s0)

00000000802016a0 <.LBB1_36>:
802016a0: 17 35 00 00  	auipc	a0, 3
802016a4: 13 05 05 b0  	addi	a0, a0, -1280
802016a8: 23 38 a4 f8  	sd	a0, -112(s0)
802016ac: 05 45        	li	a0, 1
802016ae: 23 3c a4 f8  	sd	a0, -104(s0)

00000000802016b2 <.LBB1_37>:
802016b2: 17 35 00 00  	auipc	a0, 3
802016b6: 13 05 e5 a8  	addi	a0, a0, -1394
802016ba: 23 30 a4 fa  	sd	a0, -96(s0)
802016be: 23 34 04 fa  	sd	zero, -88(s0)

00000000802016c2 <.LBB1_38>:
802016c2: 97 35 00 00  	auipc	a1, 3
802016c6: 93 85 65 fd  	addi	a1, a1, -42
802016ca: 13 05 84 f7  	addi	a0, s0, -136
802016ce: 13 06 04 f8  	addi	a2, s0, -128
802016d2: 97 10 00 00  	auipc	ra, 1
802016d6: e7 80 c0 39  	jalr	924(ra)
802016da: 6d ed        	bnez	a0, 0x802017d4 <.LBB1_52>
; }
802016dc: aa 60        	ld	ra, 136(sp)
802016de: 0a 64        	ld	s0, 128(sp)
802016e0: e6 74        	ld	s1, 120(sp)
802016e2: 46 79        	ld	s2, 112(sp)
802016e4: a6 79        	ld	s3, 104(sp)
802016e6: 06 7a        	ld	s4, 96(sp)
802016e8: e6 6a        	ld	s5, 88(sp)
802016ea: 46 6b        	ld	s6, 80(sp)
802016ec: a6 6b        	ld	s7, 72(sp)
802016ee: 49 61        	addi	sp, sp, 144
802016f0: 82 80        	ret

00000000802016f2 <.LBB1_39>:
802016f2: 17 35 00 00  	auipc	a0, 3
802016f6: 13 05 e5 9e  	addi	a0, a0, -1554
802016fa: 23 38 a4 f8  	sd	a0, -112(s0)
802016fe: 05 45        	li	a0, 1
80201700: 23 3c a4 f8  	sd	a0, -104(s0)
80201704: 23 30 04 f8  	sd	zero, -128(s0)

0000000080201708 <.LBB1_40>:
80201708: 17 35 00 00  	auipc	a0, 3
8020170c: 13 05 85 8f  	addi	a0, a0, -1800
80201710: 23 30 a4 fa  	sd	a0, -96(s0)
80201714: 23 34 04 fa  	sd	zero, -88(s0)

0000000080201718 <.LBB1_41>:
80201718: 97 35 00 00  	auipc	a1, 3
8020171c: 93 85 85 9d  	addi	a1, a1, -1576
80201720: 13 05 04 f8  	addi	a0, s0, -128
80201724: 97 10 00 00  	auipc	ra, 1
80201728: e7 80 20 23  	jalr	562(ra)
8020172c: 00 00        	unimp	

000000008020172e <.LBB1_42>:
8020172e: 17 35 00 00  	auipc	a0, 3
80201732: 13 05 a5 a1  	addi	a0, a0, -1510
80201736: 23 38 a4 f8  	sd	a0, -112(s0)
8020173a: 05 45        	li	a0, 1
8020173c: 23 3c a4 f8  	sd	a0, -104(s0)
80201740: 23 30 04 f8  	sd	zero, -128(s0)

0000000080201744 <.LBB1_43>:
80201744: 17 35 00 00  	auipc	a0, 3
80201748: 13 05 c5 9f  	addi	a0, a0, -1540
8020174c: 23 30 a4 fa  	sd	a0, -96(s0)
80201750: 23 34 04 fa  	sd	zero, -88(s0)

0000000080201754 <.LBB1_44>:
80201754: 97 35 00 00  	auipc	a1, 3
80201758: 93 85 c5 a1  	addi	a1, a1, -1508
8020175c: 13 05 04 f8  	addi	a0, s0, -128
80201760: 97 10 00 00  	auipc	ra, 1
80201764: e7 80 60 1f  	jalr	502(ra)
80201768: 00 00        	unimp	

000000008020176a <.LBB1_45>:
8020176a: 17 35 00 00  	auipc	a0, 3
8020176e: 13 05 e5 9d  	addi	a0, a0, -1570
80201772: 23 38 a4 f8  	sd	a0, -112(s0)
80201776: 23 3c 94 f8  	sd	s1, -104(s0)
8020177a: d9 b7        	j	0x80201740 <.LBB1_42+0x12>

000000008020177c <.LBB1_46>:
8020177c: 17 35 00 00  	auipc	a0, 3
80201780: 13 05 c5 99  	addi	a0, a0, -1636
80201784: 23 38 a4 f8  	sd	a0, -112(s0)
80201788: 05 45        	li	a0, 1
8020178a: 23 3c a4 f8  	sd	a0, -104(s0)
8020178e: 23 30 04 f8  	sd	zero, -128(s0)

0000000080201792 <.LBB1_47>:
80201792: 17 35 00 00  	auipc	a0, 3
80201796: 13 05 e5 86  	addi	a0, a0, -1938
8020179a: 23 30 a4 fa  	sd	a0, -96(s0)
8020179e: 23 34 04 fa  	sd	zero, -88(s0)

00000000802017a2 <.LBB1_48>:
802017a2: 97 35 00 00  	auipc	a1, 3
802017a6: 93 85 65 98  	addi	a1, a1, -1658
802017aa: 13 05 04 f8  	addi	a0, s0, -128
802017ae: 97 10 00 00  	auipc	ra, 1
802017b2: e7 80 80 1a  	jalr	424(ra)
802017b6: 00 00        	unimp	

00000000802017b8 <.LBB1_49>:
802017b8: 17 35 00 00  	auipc	a0, 3
802017bc: 13 05 85 aa  	addi	a0, a0, -1368

00000000802017c0 <.LBB1_50>:
802017c0: 97 36 00 00  	auipc	a3, 3
802017c4: 93 86 06 ab  	addi	a3, a3, -1360

00000000802017c8 <.LBB1_51>:
802017c8: 17 37 00 00  	auipc	a4, 3
802017cc: 13 07 07 ae  	addi	a4, a4, -1312
802017d0: c1 45        	li	a1, 16
802017d2: 39 a8        	j	0x802017f0 <.LBB1_54+0xc>

00000000802017d4 <.LBB1_52>:
802017d4: 17 35 00 00  	auipc	a0, 3
802017d8: 13 05 45 ef  	addi	a0, a0, -268

00000000802017dc <.LBB1_53>:
802017dc: 97 36 00 00  	auipc	a3, 3
802017e0: 93 86 c6 f1  	addi	a3, a3, -228

00000000802017e4 <.LBB1_54>:
802017e4: 17 37 00 00  	auipc	a4, 3
802017e8: 13 07 47 f4  	addi	a4, a4, -188
802017ec: 93 05 b0 02  	li	a1, 43
802017f0: 13 06 04 fb  	addi	a2, s0, -80
802017f4: 97 10 00 00  	auipc	ra, 1
802017f8: e7 80 c0 1f  	jalr	508(ra)
802017fc: 00 00        	unimp	

00000000802017fe <_ZN6kernel6memory3kvm11kvminithart17hc6f9cd8eaa0cbd7aE>:
; pub fn kvminithart() {
802017fe: 5d 71        	addi	sp, sp, -80
;     unsafe { asm!("sfence.vma zero, zero") }
80201800: 86 e4        	sd	ra, 72(sp)
80201802: a2 e0        	sd	s0, 64(sp)
80201804: 80 08        	addi	s0, sp, 80
80201806: 73 00 00 12  	sfence.vma

000000008020180a <.LBB2_6>:
;         self.0.call_once(builder)
8020180a: 17 45 01 00  	auipc	a0, 20
8020180e: 13 05 65 7f  	addi	a0, a0, 2038
80201812: 97 10 00 00  	auipc	ra, 1
80201816: e7 80 60 8a  	jalr	-1882(ra)
8020181a: 0c 61        	ld	a1, 0(a0)
8020181c: b5 e5        	bnez	a1, 0x80201888 <.LBB2_10>
;         self.data.as_ptr() as Addr
8020181e: 0c 65        	ld	a1, 8(a0)
80201820: 7d 56        	li	a2, -1
80201822: 10 e1        	sd	a2, 0(a0)
;         SATP_SV39 | (satp >> PGSHIFT)
80201824: b1 81        	srli	a1, a1, 12
80201826: 7e 16        	slli	a2, a2, 63
;         SATP_SV39 | (satp >> PGSHIFT)
80201828: d1 8d        	or	a1, a1, a2
;                 () => core::arch::asm!("csrrw x0, {1}, {0}", in(reg) bits, const $csr_number),
8020182a: 73 90 05 18  	csrw	satp, a1
8020182e: 0c 61        	ld	a1, 0(a0)
80201830: 85 05        	addi	a1, a1, 1
80201832: 0c e1        	sd	a1, 0(a0)
;     unsafe { asm!("sfence.vma zero, zero") }
80201834: 73 00 00 12  	sfence.vma
80201838: 13 05 84 fe  	addi	a0, s0, -24
8020183c: 23 38 a4 fa  	sd	a0, -80(s0)
80201840: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201844 <.LBB2_7>:
80201844: 17 35 00 00  	auipc	a0, 3
80201848: 13 05 45 98  	addi	a0, a0, -1660
8020184c: 23 34 a4 fc  	sd	a0, -56(s0)
80201850: 05 45        	li	a0, 1
80201852: 23 38 a4 fc  	sd	a0, -48(s0)

0000000080201856 <.LBB2_8>:
80201856: 17 35 00 00  	auipc	a0, 3
8020185a: 13 05 a5 8e  	addi	a0, a0, -1814
8020185e: 23 3c a4 fc  	sd	a0, -40(s0)
80201862: 23 30 04 fe  	sd	zero, -32(s0)

0000000080201866 <.LBB2_9>:
80201866: 97 35 00 00  	auipc	a1, 3
8020186a: 93 85 25 e3  	addi	a1, a1, -462
8020186e: 13 05 04 fb  	addi	a0, s0, -80
80201872: 13 06 84 fb  	addi	a2, s0, -72
80201876: 97 10 00 00  	auipc	ra, 1
8020187a: e7 80 80 1f  	jalr	504(ra)
8020187e: 1d e1        	bnez	a0, 0x802018a4 <.LBB2_13>
; }
80201880: a6 60        	ld	ra, 72(sp)
80201882: 06 64        	ld	s0, 64(sp)
80201884: 61 61        	addi	sp, sp, 80
80201886: 82 80        	ret

0000000080201888 <.LBB2_10>:
80201888: 17 35 00 00  	auipc	a0, 3
8020188c: 13 05 85 9d  	addi	a0, a0, -1576

0000000080201890 <.LBB2_11>:
80201890: 97 36 00 00  	auipc	a3, 3
80201894: 93 86 06 9e  	addi	a3, a3, -1568

0000000080201898 <.LBB2_12>:
80201898: 17 37 00 00  	auipc	a4, 3
8020189c: 13 07 07 a1  	addi	a4, a4, -1520
802018a0: c1 45        	li	a1, 16
802018a2: 39 a8        	j	0x802018c0 <.LBB2_15+0xc>

00000000802018a4 <.LBB2_13>:
802018a4: 17 35 00 00  	auipc	a0, 3
802018a8: 13 05 45 e2  	addi	a0, a0, -476

00000000802018ac <.LBB2_14>:
802018ac: 97 36 00 00  	auipc	a3, 3
802018b0: 93 86 c6 e4  	addi	a3, a3, -436

00000000802018b4 <.LBB2_15>:
802018b4: 17 37 00 00  	auipc	a4, 3
802018b8: 13 07 47 e7  	addi	a4, a4, -396
802018bc: 93 05 b0 02  	li	a1, 43
802018c0: 13 06 84 fe  	addi	a2, s0, -24
802018c4: 97 10 00 00  	auipc	ra, 1
802018c8: e7 80 c0 12  	jalr	300(ra)
802018cc: 00 00        	unimp	

00000000802018ce <_ZN6kernel6memory3kvm7kvmtest17h7309ef6583680698E>:
; pub fn kvmtest() {
802018ce: 69 71        	addi	sp, sp, -304
802018d0: 06 f6        	sd	ra, 296(sp)
802018d2: 22 f2        	sd	s0, 288(sp)
802018d4: 26 ee        	sd	s1, 280(sp)
802018d6: 4a ea        	sd	s2, 272(sp)
802018d8: 4e e6        	sd	s3, 264(sp)
802018da: 00 1a        	addi	s0, sp, 304
802018dc: 37 f5 47 10  	lui	a0, 66687
802018e0: 93 14 35 00  	slli	s1, a0, 3
;     let va: [usize; 3] = [0x823f8000, KERNBASE, 0x87fff000];
802018e4: 23 3c 94 ec  	sd	s1, -296(s0)
802018e8: 13 05 10 40  	li	a0, 1025
802018ec: 56 05        	slli	a0, a0, 21
802018ee: 23 30 a4 ee  	sd	a0, -288(s0)
802018f2: 37 85 08 00  	lui	a0, 136
802018f6: 7d 35        	addiw	a0, a0, -1
802018f8: 32 05        	slli	a0, a0, 12
802018fa: 23 34 a4 ee  	sd	a0, -280(s0)
;     let mut pa: [usize; 3] = [0; 3];
802018fe: 23 30 04 f0  	sd	zero, -256(s0)
80201902: 23 3c 04 ee  	sd	zero, -264(s0)

0000000080201906 <.LBB3_23>:
;         self.0.call_once(builder)
80201906: 17 45 01 00  	auipc	a0, 20
8020190a: 13 05 a5 6f  	addi	a0, a0, 1786
8020190e: 97 00 00 00  	auipc	ra, 0
80201912: e7 80 a0 7a  	jalr	1962(ra)
80201916: 2a 89        	mv	s2, a0
80201918: 08 61        	ld	a0, 0(a0)
8020191a: 63 19 05 2a  	bnez	a0, 0x80201bcc <.LBB3_32>
;         let pte = self.walk(va, false);
8020191e: 03 35 89 00  	ld	a0, 8(s2)
80201922: fd 55        	li	a1, -1
80201924: 23 30 b9 00  	sd	a1, 0(s2)
;         let pte = self.walk(va, false);
80201928: a6 85        	mv	a1, s1
8020192a: 01 46        	li	a2, 0
8020192c: 97 f0 ff ff  	auipc	ra, 1048575
80201930: e7 80 40 6d  	jalr	1748(ra)

0000000080201934 <.LBB3_24>:
80201934: 97 24 00 00  	auipc	s1, 2
80201938: 93 84 24 99  	addi	s1, s1, -1646

000000008020193c <.LBB3_25>:
8020193c: 97 39 00 00  	auipc	s3, 3
80201940: 93 89 49 8a  	addi	s3, s3, -1884
;         if pte == null_mut() {
80201944: 09 c5        	beqz	a0, 0x8020194e <.LBB3_25+0x12>
;         let pte = unsafe { *pte };
80201946: 08 61        	ld	a0, 0(a0)
;         if (pte & PTE_V) == 0 {
80201948: 93 75 15 00  	andi	a1, a0, 1
8020194c: cd e9        	bnez	a1, 0x802019fe <.LBB3_26+0x38>
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
8020194e: 23 38 04 ee  	sd	zero, -272(s0)
80201952: 13 05 04 ef  	addi	a0, s0, -272
;             println!("pa: {:#x}, va: {:#x}", pa[i], va[i]);
80201956: 23 34 a4 f0  	sd	a0, -248(s0)
8020195a: 23 38 94 f0  	sd	s1, -240(s0)
8020195e: 13 05 84 ed  	addi	a0, s0, -296
80201962: 23 3c a4 f0  	sd	a0, -232(s0)
80201966: 23 30 94 f2  	sd	s1, -224(s0)
8020196a: 09 45        	li	a0, 2
8020196c: 23 34 a4 f2  	sd	a0, -216(s0)
80201970: 23 3c a4 f2  	sd	a0, -200(s0)
80201974: 85 45        	li	a1, 1
80201976: 13 96 55 02  	slli	a2, a1, 37
8020197a: 11 06        	addi	a2, a2, 4
8020197c: 23 34 c4 f4  	sd	a2, -184(s0)
80201980: 8d 46        	li	a3, 3
80201982: 23 08 d4 f4  	sb	a3, -176(s0)
80201986: 23 3c 04 f4  	sd	zero, -168(s0)
8020198a: 23 30 a4 f6  	sd	a0, -160(s0)
8020198e: 23 38 a4 f6  	sd	a0, -144(s0)
80201992: 23 30 c4 f8  	sd	a2, -128(s0)
80201996: 23 04 d4 f8  	sb	a3, -120(s0)
8020199a: 23 38 b4 f8  	sd	a1, -112(s0)
8020199e: 93 05 04 fd  	addi	a1, s0, -48
802019a2: 23 3c b4 f8  	sd	a1, -104(s0)
802019a6: 93 05 84 f2  	addi	a1, s0, -216
802019aa: 23 30 b4 fa  	sd	a1, -96(s0)
802019ae: 23 34 a4 fa  	sd	a0, -88(s0)
802019b2: 23 38 34 fb  	sd	s3, -80(s0)
802019b6: 23 3c d4 fa  	sd	a3, -72(s0)
802019ba: 93 05 84 f0  	addi	a1, s0, -248
802019be: 23 30 b4 fc  	sd	a1, -64(s0)
802019c2: 23 34 a4 fc  	sd	a0, -56(s0)

00000000802019c6 <.LBB3_26>:
802019c6: 97 35 00 00  	auipc	a1, 3
802019ca: 93 85 25 cd  	addi	a1, a1, -814
802019ce: 13 05 84 f9  	addi	a0, s0, -104
802019d2: 13 06 04 fa  	addi	a2, s0, -96
802019d6: 97 10 00 00  	auipc	ra, 1
802019da: e7 80 80 09  	jalr	152(ra)
802019de: 63 18 05 1c  	bnez	a0, 0x80201bae <.LBB3_29>
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
802019e2: 83 35 04 ee  	ld	a1, -288(s0)
;         if va >= MAXVA {
802019e6: 13 d6 65 02  	srli	a2, a1, 38
802019ea: 39 e6        	bnez	a2, 0x80201a38 <.LBB3_26+0x72>
;         let pte = self.walk(va, false);
802019ec: 03 35 89 00  	ld	a0, 8(s2)
802019f0: 01 46        	li	a2, 0
802019f2: 97 f0 ff ff  	auipc	ra, 1048575
802019f6: e7 80 e0 60  	jalr	1550(ra)
;         if pte == null_mut() {
802019fa: 1d e5        	bnez	a0, 0x80201a28 <.LBB3_26+0x62>
802019fc: 35 a8        	j	0x80201a38 <.LBB3_26+0x72>
;     (pte >> 10) << 12
802019fe: 29 81        	srli	a0, a0, 10
80201a00: 32 05        	slli	a0, a0, 12
80201a02: b7 f5 47 10  	lui	a1, 66687
80201a06: 8e 05        	slli	a1, a1, 3
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
80201a08: 23 38 a4 ee  	sd	a0, -272(s0)
;         if pa[i] != va[i] {
80201a0c: e3 13 b5 f4  	bne	a0, a1, 0x80201952 <.LBB3_25+0x16>
80201a10: 13 05 10 40  	li	a0, 1025
80201a14: 93 15 55 01  	slli	a1, a0, 21
;         let pte = self.walk(va, false);
80201a18: 03 35 89 00  	ld	a0, 8(s2)
80201a1c: 01 46        	li	a2, 0
80201a1e: 97 f0 ff ff  	auipc	ra, 1048575
80201a22: e7 80 20 5e  	jalr	1506(ra)
;         if pte == null_mut() {
80201a26: 09 c9        	beqz	a0, 0x80201a38 <.LBB3_26+0x72>
;         let pte = unsafe { *pte };
80201a28: 0c 61        	ld	a1, 0(a0)
;         if (pte & PTE_V) == 0 {
80201a2a: 13 f6 15 00  	andi	a2, a1, 1
80201a2e: 01 45        	li	a0, 0
80201a30: 01 c6        	beqz	a2, 0x80201a38 <.LBB3_26+0x72>
;     (pte >> 10) << 12
80201a32: 13 d5 a5 00  	srli	a0, a1, 10
80201a36: 32 05        	slli	a0, a0, 12
;         if pa[i] != va[i] {
80201a38: 83 35 04 ee  	ld	a1, -288(s0)
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
80201a3c: 23 3c a4 ee  	sd	a0, -264(s0)
;         if pa[i] != va[i] {
80201a40: 63 09 b5 08  	beq	a0, a1, 0x80201ad2 <.LBB3_27+0x1a>
80201a44: 13 05 04 ee  	addi	a0, s0, -288
80201a48: 93 05 84 ef  	addi	a1, s0, -264
;             println!("pa: {:#x}, va: {:#x}", pa[i], va[i]);
80201a4c: 23 34 b4 f0  	sd	a1, -248(s0)
80201a50: 23 38 94 f0  	sd	s1, -240(s0)
80201a54: 23 3c a4 f0  	sd	a0, -232(s0)
80201a58: 23 30 94 f2  	sd	s1, -224(s0)
80201a5c: 09 45        	li	a0, 2
80201a5e: 23 34 a4 f2  	sd	a0, -216(s0)
80201a62: 23 3c a4 f2  	sd	a0, -200(s0)
80201a66: 85 45        	li	a1, 1
80201a68: 13 96 55 02  	slli	a2, a1, 37
80201a6c: 11 06        	addi	a2, a2, 4
80201a6e: 23 34 c4 f4  	sd	a2, -184(s0)
80201a72: 8d 46        	li	a3, 3
80201a74: 23 08 d4 f4  	sb	a3, -176(s0)
80201a78: 23 3c 04 f4  	sd	zero, -168(s0)
80201a7c: 23 30 a4 f6  	sd	a0, -160(s0)
80201a80: 23 38 a4 f6  	sd	a0, -144(s0)
80201a84: 23 30 c4 f8  	sd	a2, -128(s0)
80201a88: 23 04 d4 f8  	sb	a3, -120(s0)
80201a8c: 23 38 b4 f8  	sd	a1, -112(s0)
80201a90: 93 05 04 fd  	addi	a1, s0, -48
80201a94: 23 3c b4 f8  	sd	a1, -104(s0)
80201a98: 93 05 84 f2  	addi	a1, s0, -216
80201a9c: 23 30 b4 fa  	sd	a1, -96(s0)
80201aa0: 23 34 a4 fa  	sd	a0, -88(s0)
80201aa4: 23 38 34 fb  	sd	s3, -80(s0)
80201aa8: 23 3c d4 fa  	sd	a3, -72(s0)
80201aac: 93 05 84 f0  	addi	a1, s0, -248
80201ab0: 23 30 b4 fc  	sd	a1, -64(s0)
80201ab4: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080201ab8 <.LBB3_27>:
80201ab8: 97 35 00 00  	auipc	a1, 3
80201abc: 93 85 05 be  	addi	a1, a1, -1056
80201ac0: 13 05 84 f9  	addi	a0, s0, -104
80201ac4: 13 06 04 fa  	addi	a2, s0, -96
80201ac8: 97 10 00 00  	auipc	ra, 1
80201acc: e7 80 60 fa  	jalr	-90(ra)
80201ad0: 79 ed        	bnez	a0, 0x80201bae <.LBB3_29>
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
80201ad2: 83 35 84 ee  	ld	a1, -280(s0)
;         if va >= MAXVA {
80201ad6: 13 d6 65 02  	srli	a2, a1, 38
80201ada: 01 45        	li	a0, 0
;         if va >= MAXVA {
80201adc: 05 e2        	bnez	a2, 0x80201afc <.LBB3_27+0x44>
;         let pte = self.walk(va, false);
80201ade: 03 35 89 00  	ld	a0, 8(s2)
80201ae2: 97 f0 ff ff  	auipc	ra, 1048575
80201ae6: e7 80 e0 51  	jalr	1310(ra)
;         if pte == null_mut() {
80201aea: 09 c9        	beqz	a0, 0x80201afc <.LBB3_27+0x44>
;         let pte = unsafe { *pte };
80201aec: 0c 61        	ld	a1, 0(a0)
;         if (pte & PTE_V) == 0 {
80201aee: 13 f6 15 00  	andi	a2, a1, 1
80201af2: 01 45        	li	a0, 0
80201af4: 01 c6        	beqz	a2, 0x80201afc <.LBB3_27+0x44>
;     (pte >> 10) << 12
80201af6: 13 d5 a5 00  	srli	a0, a1, 10
80201afa: 32 05        	slli	a0, a0, 12
;         if pa[i] != va[i] {
80201afc: 83 35 84 ee  	ld	a1, -280(s0)
;         pa[i] = kvm.kernel_pagetable.walkaddr(va[i]);
80201b00: 23 30 a4 f0  	sd	a0, -256(s0)
;         if pa[i] != va[i] {
80201b04: 63 09 b5 08  	beq	a0, a1, 0x80201b96 <.LBB3_28+0x1a>
80201b08: 13 05 84 ee  	addi	a0, s0, -280
80201b0c: 93 05 04 f0  	addi	a1, s0, -256
;             println!("pa: {:#x}, va: {:#x}", pa[i], va[i]);
80201b10: 23 34 b4 f0  	sd	a1, -248(s0)
80201b14: 23 38 94 f0  	sd	s1, -240(s0)
80201b18: 23 3c a4 f0  	sd	a0, -232(s0)
80201b1c: 23 30 94 f2  	sd	s1, -224(s0)
80201b20: 09 45        	li	a0, 2
80201b22: 23 34 a4 f2  	sd	a0, -216(s0)
80201b26: 23 3c a4 f2  	sd	a0, -200(s0)
80201b2a: 85 45        	li	a1, 1
80201b2c: 13 96 55 02  	slli	a2, a1, 37
80201b30: 11 06        	addi	a2, a2, 4
80201b32: 23 34 c4 f4  	sd	a2, -184(s0)
80201b36: 8d 46        	li	a3, 3
80201b38: 23 08 d4 f4  	sb	a3, -176(s0)
80201b3c: 23 3c 04 f4  	sd	zero, -168(s0)
80201b40: 23 30 a4 f6  	sd	a0, -160(s0)
80201b44: 23 38 a4 f6  	sd	a0, -144(s0)
80201b48: 23 30 c4 f8  	sd	a2, -128(s0)
80201b4c: 23 04 d4 f8  	sb	a3, -120(s0)
80201b50: 23 38 b4 f8  	sd	a1, -112(s0)
80201b54: 93 05 04 fd  	addi	a1, s0, -48
80201b58: 23 3c b4 f8  	sd	a1, -104(s0)
80201b5c: 93 05 84 f2  	addi	a1, s0, -216
80201b60: 23 30 b4 fa  	sd	a1, -96(s0)
80201b64: 23 34 a4 fa  	sd	a0, -88(s0)
80201b68: 23 38 34 fb  	sd	s3, -80(s0)
80201b6c: 23 3c d4 fa  	sd	a3, -72(s0)
80201b70: 93 05 84 f0  	addi	a1, s0, -248
80201b74: 23 30 b4 fc  	sd	a1, -64(s0)
80201b78: 23 34 a4 fc  	sd	a0, -56(s0)

0000000080201b7c <.LBB3_28>:
80201b7c: 97 35 00 00  	auipc	a1, 3
80201b80: 93 85 c5 b1  	addi	a1, a1, -1252
80201b84: 13 05 84 f9  	addi	a0, s0, -104
80201b88: 13 06 04 fa  	addi	a2, s0, -96
80201b8c: 97 10 00 00  	auipc	ra, 1
80201b90: e7 80 20 ee  	jalr	-286(ra)
80201b94: 09 ed        	bnez	a0, 0x80201bae <.LBB3_29>
80201b96: 03 35 09 00  	ld	a0, 0(s2)
80201b9a: 05 05        	addi	a0, a0, 1
80201b9c: 23 30 a9 00  	sd	a0, 0(s2)
; }
80201ba0: b2 70        	ld	ra, 296(sp)
80201ba2: 12 74        	ld	s0, 288(sp)
80201ba4: f2 64        	ld	s1, 280(sp)
80201ba6: 52 69        	ld	s2, 272(sp)
80201ba8: b2 69        	ld	s3, 264(sp)
80201baa: 55 61        	addi	sp, sp, 304
80201bac: 82 80        	ret

0000000080201bae <.LBB3_29>:
80201bae: 17 35 00 00  	auipc	a0, 3
80201bb2: 13 05 a5 b1  	addi	a0, a0, -1254

0000000080201bb6 <.LBB3_30>:
80201bb6: 97 36 00 00  	auipc	a3, 3
80201bba: 93 86 26 b4  	addi	a3, a3, -1214

0000000080201bbe <.LBB3_31>:
80201bbe: 17 37 00 00  	auipc	a4, 3
80201bc2: 13 07 a7 b6  	addi	a4, a4, -1174
80201bc6: 93 05 b0 02  	li	a1, 43
80201bca: 31 a8        	j	0x80201be6 <.LBB3_34+0xa>

0000000080201bcc <.LBB3_32>:
80201bcc: 17 25 00 00  	auipc	a0, 2
80201bd0: 13 05 45 69  	addi	a0, a0, 1684

0000000080201bd4 <.LBB3_33>:
80201bd4: 97 26 00 00  	auipc	a3, 2
80201bd8: 93 86 c6 69  	addi	a3, a3, 1692

0000000080201bdc <.LBB3_34>:
80201bdc: 17 27 00 00  	auipc	a4, 2
80201be0: 13 07 c7 6c  	addi	a4, a4, 1740
80201be4: c1 45        	li	a1, 16
80201be6: 13 06 04 fd  	addi	a2, s0, -48
80201bea: 97 10 00 00  	auipc	ra, 1
80201bee: e7 80 60 e0  	jalr	-506(ra)
80201bf2: 00 00        	unimp	

0000000080201bf4 <_ZN6kernel3sbi8shutdown17h7d6f144840ef1a50E>:
; pub fn shutdown() -> ! {
80201bf4: 39 71        	addi	sp, sp, -64
;         asm!(
80201bf6: 06 fc        	sd	ra, 56(sp)
80201bf8: 22 f8        	sd	s0, 48(sp)
80201bfa: 80 00        	addi	s0, sp, 64
80201bfc: a1 48        	li	a7, 8
80201bfe: 01 45        	li	a0, 0
80201c00: 81 45        	li	a1, 0
80201c02: 01 46        	li	a2, 0
80201c04: 73 00 00 00  	ecall	

0000000080201c08 <.LBB1_1>:
80201c08: 17 25 00 00  	auipc	a0, 2
80201c0c: 13 05 05 62  	addi	a0, a0, 1568
80201c10: 23 38 a4 fc  	sd	a0, -48(s0)
80201c14: 05 45        	li	a0, 1
80201c16: 23 3c a4 fc  	sd	a0, -40(s0)
80201c1a: 23 30 04 fc  	sd	zero, -64(s0)

0000000080201c1e <.LBB1_2>:
80201c1e: 17 25 00 00  	auipc	a0, 2
80201c22: 13 05 25 5f  	addi	a0, a0, 1522
80201c26: 23 30 a4 fe  	sd	a0, -32(s0)
80201c2a: 23 34 04 fe  	sd	zero, -24(s0)

0000000080201c2e <.LBB1_3>:
;     panic!("It should shutdown!");
80201c2e: 97 25 00 00  	auipc	a1, 2
80201c32: 93 85 a5 61  	addi	a1, a1, 1562
80201c36: 13 05 04 fc  	addi	a0, s0, -64
80201c3a: 97 10 00 00  	auipc	ra, 1
80201c3e: e7 80 c0 d1  	jalr	-740(ra)
80201c42: 00 00        	unimp	

0000000080201c44 <_ZN4core3ptr47drop_in_place$LT$core..cell..BorrowMutError$GT$17hfc6cfbc332eb8121E.llvm.5366303779482308337>:
80201c44: 41 11        	addi	sp, sp, -16
80201c46: 06 e4        	sd	ra, 8(sp)
80201c48: 22 e0        	sd	s0, 0(sp)
80201c4a: 00 08        	addi	s0, sp, 16
80201c4c: a2 60        	ld	ra, 8(sp)
80201c4e: 02 64        	ld	s0, 0(sp)
80201c50: 41 01        	addi	sp, sp, 16
80201c52: 82 80        	ret

0000000080201c54 <_ZN6kernel4logo10print_logo17hd1e5cf57c901a23eE>:
; pub fn print_logo() {
80201c54: 1d 71        	addi	sp, sp, -96
;     println!("{}", LOGO);
80201c56: 86 ec        	sd	ra, 88(sp)
80201c58: a2 e8        	sd	s0, 80(sp)
80201c5a: 80 10        	addi	s0, sp, 96

0000000080201c5c <.LBB0_3>:
80201c5c: 17 25 00 00  	auipc	a0, 2
80201c60: 13 05 45 7e  	addi	a0, a0, 2020
80201c64: 23 30 a4 fa  	sd	a0, -96(s0)

0000000080201c68 <.LBB0_4>:
80201c68: 17 05 00 00  	auipc	a0, 0
80201c6c: 13 05 45 08  	addi	a0, a0, 132
80201c70: 23 34 a4 fa  	sd	a0, -88(s0)
80201c74: 13 05 84 fe  	addi	a0, s0, -24
80201c78: 23 38 a4 fa  	sd	a0, -80(s0)
80201c7c: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201c80 <.LBB0_5>:
80201c80: 17 25 00 00  	auipc	a0, 2
80201c84: 13 05 85 64  	addi	a0, a0, 1608
80201c88: 23 34 a4 fc  	sd	a0, -56(s0)
80201c8c: 09 45        	li	a0, 2
80201c8e: 23 38 a4 fc  	sd	a0, -48(s0)
80201c92: 13 05 04 fa  	addi	a0, s0, -96
80201c96: 23 3c a4 fc  	sd	a0, -40(s0)
80201c9a: 05 45        	li	a0, 1
80201c9c: 23 30 a4 fe  	sd	a0, -32(s0)

0000000080201ca0 <.LBB0_6>:
80201ca0: 97 35 00 00  	auipc	a1, 3
80201ca4: 93 85 85 9f  	addi	a1, a1, -1544
80201ca8: 13 05 04 fb  	addi	a0, s0, -80
80201cac: 13 06 84 fb  	addi	a2, s0, -72
80201cb0: 97 10 00 00  	auipc	ra, 1
80201cb4: e7 80 e0 db  	jalr	-578(ra)
80201cb8: 09 e5        	bnez	a0, 0x80201cc2 <.LBB0_7>
; }
80201cba: e6 60        	ld	ra, 88(sp)
80201cbc: 46 64        	ld	s0, 80(sp)
80201cbe: 25 61        	addi	sp, sp, 96
80201cc0: 82 80        	ret

0000000080201cc2 <.LBB0_7>:
80201cc2: 17 35 00 00  	auipc	a0, 3
80201cc6: 13 05 65 a0  	addi	a0, a0, -1530

0000000080201cca <.LBB0_8>:
80201cca: 97 36 00 00  	auipc	a3, 3
80201cce: 93 86 e6 a2  	addi	a3, a3, -1490

0000000080201cd2 <.LBB0_9>:
80201cd2: 17 37 00 00  	auipc	a4, 3
80201cd6: 13 07 67 a5  	addi	a4, a4, -1450
80201cda: 93 05 b0 02  	li	a1, 43
80201cde: 13 06 84 fe  	addi	a2, s0, -24
80201ce2: 97 10 00 00  	auipc	ra, 1
80201ce6: e7 80 e0 d0  	jalr	-754(ra)
80201cea: 00 00        	unimp	

0000000080201cec <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h841398e3e815f769E>:
80201cec: 41 11        	addi	sp, sp, -16
80201cee: 06 e4        	sd	ra, 8(sp)
80201cf0: 22 e0        	sd	s0, 0(sp)
80201cf2: 00 08        	addi	s0, sp, 16
80201cf4: 10 61        	ld	a2, 0(a0)
80201cf6: 14 65        	ld	a3, 8(a0)
80201cf8: 2e 87        	mv	a4, a1
80201cfa: 32 85        	mv	a0, a2
80201cfc: b6 85        	mv	a1, a3
80201cfe: 3a 86        	mv	a2, a4
80201d00: a2 60        	ld	ra, 8(sp)
80201d02: 02 64        	ld	s0, 0(sp)
80201d04: 41 01        	addi	sp, sp, 16
80201d06: 17 13 00 00  	auipc	t1, 1
80201d0a: 67 00 c3 3b  	jr	956(t1)

0000000080201d0e <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hda6921607be575eaE>:
80201d0e: 41 11        	addi	sp, sp, -16
80201d10: 06 e4        	sd	ra, 8(sp)
80201d12: 22 e0        	sd	s0, 0(sp)
80201d14: 00 08        	addi	s0, sp, 16
80201d16: 08 61        	ld	a0, 0(a0)
80201d18: a2 60        	ld	ra, 8(sp)
80201d1a: 02 64        	ld	s0, 0(sp)
80201d1c: 41 01        	addi	sp, sp, 16
80201d1e: 17 13 00 00  	auipc	t1, 1
80201d22: 67 00 e3 d1  	jr	-738(t1)

0000000080201d26 <_ZN6kernel6memory6kalloc5kinit17h2998f4f2bfe2816cE>:
; pub fn kinit() {
80201d26: 19 71        	addi	sp, sp, -128
80201d28: 86 fc        	sd	ra, 120(sp)
80201d2a: a2 f8        	sd	s0, 112(sp)
80201d2c: a6 f4        	sd	s1, 104(sp)
80201d2e: ca f0        	sd	s2, 96(sp)
80201d30: ce ec        	sd	s3, 88(sp)
80201d32: d2 e8        	sd	s4, 80(sp)
80201d34: d6 e4        	sd	s5, 72(sp)
80201d36: 00 01        	addi	s0, sp, 128
80201d38: 0f 00 30 03  	fence	rw, rw

0000000080201d3c <.LBB1_22>:
80201d3c: 97 49 01 00  	auipc	s3, 20
80201d40: 93 89 49 3a  	addi	s3, s3, 932
80201d44: 03 b5 09 00  	ld	a0, 0(s3)
80201d48: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201d4c: 21 ed        	bnez	a0, 0x80201da4 <.LBB1_23+0x3a>
80201d4e: 85 45        	li	a1, 1
80201d50: 2f b5 09 16  	lr.d.aqrl	a0, (s3)
80201d54: 01 e5        	bnez	a0, 0x80201d5c <.LBB1_22+0x20>
80201d56: 2f b6 b9 1e  	sc.d.aqrl	a2, a1, (s3)
80201d5a: 7d fa        	bnez	a2, 0x80201d50 <.LBB1_22+0x14>
;             if status == INCOMPLETE { // We init
80201d5c: 21 e5        	bnez	a0, 0x80201da4 <.LBB1_23+0x3a>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201d5e: 23 38 34 f9  	sd	s3, -112(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80201d62: 23 b4 b9 00  	sd	a1, 8(s3)
80201d66: 23 b8 09 00  	sd	zero, 16(s3)

0000000080201d6a <.LBB1_23>:
80201d6a: 17 25 00 00  	auipc	a0, 2
80201d6e: 13 05 a5 29  	addi	a0, a0, 666
80201d72: 23 bc a9 00  	sd	a0, 24(s3)
80201d76: 11 45        	li	a0, 4
80201d78: 23 b0 a9 02  	sd	a0, 32(s3)
80201d7c: 23 b4 09 02  	sd	zero, 40(s3)
80201d80: 23 88 09 02  	sb	zero, 48(s3)
80201d84: 23 bc 09 02  	sd	zero, 56(s3)
;                 finish.panicked = false;
80201d88: 23 0c 04 f8  	sb	zero, -104(s0)
80201d8c: 0f 00 10 03  	fence	rw, w
80201d90: 09 45        	li	a0, 2
80201d92: 23 b0 a9 00  	sd	a0, 0(s3)
80201d96: 13 05 04 f9  	addi	a0, s0, -112
80201d9a: 97 10 00 00  	auipc	ra, 1
80201d9e: e7 80 00 b7  	jalr	-1168(ra)
80201da2: 0d a0        	j	0x80201dc4 <.LBB1_23+0x5a>
80201da4: 85 45        	li	a1, 1
;             match status {
80201da6: 63 1c b5 00  	bne	a0, a1, 0x80201dbe <.LBB1_23+0x54>
80201daa: 0f 00 00 01  	fence	w, 0
80201dae: 0f 00 30 03  	fence	rw, rw
80201db2: 03 b5 09 00  	ld	a0, 0(s3)
80201db6: 0f 00 30 02  	fence	r, rw
;             match status {
80201dba: e3 08 b5 fe  	beq	a0, a1, 0x80201daa <.LBB1_23+0x40>
80201dbe: 89 45        	li	a1, 2
;             match status {
80201dc0: 63 15 b5 0e  	bne	a0, a1, 0x80201eaa <.LBB1_27+0x2c>
80201dc4: 03 b5 09 01  	ld	a0, 16(s3)
80201dc8: 63 1f 05 10  	bnez	a0, 0x80201ee6 <.LBB1_32>
80201dcc: 7d 56        	li	a2, -1

0000000080201dce <.LBB1_24>:
;         while pa < pa_end - PGSIZE {
80201dce: 17 55 01 00  	auipc	a0, 21
80201dd2: 13 05 25 23  	addi	a0, a0, 562
80201dd6: 85 65        	lui	a1, 1
80201dd8: fd 35        	addiw	a1, a1, -1
;         while pa < pa_end - PGSIZE {
80201dda: aa 95        	add	a1, a1, a0
80201ddc: fd 76        	lui	a3, 1048575
80201dde: f5 8d        	and	a1, a1, a3
80201de0: b7 86 08 00  	lui	a3, 136
80201de4: fd 36        	addiw	a3, a3, -1
80201de6: b2 06        	slli	a3, a3, 12
80201de8: fd 16        	addi	a3, a3, -1
80201dea: 23 b8 c9 00  	sd	a2, 16(s3)
;         while pa < pa_end - PGSIZE {
80201dee: 63 ee b6 04  	bltu	a3, a1, 0x80201e4a <.LBB1_24+0x7c>
;         if pa % PGSIZE != 0 || pa < ekernel as Addr || pa >= PHYSTOP {
80201df2: 63 ed a5 12  	bltu	a1, a0, 0x80201f2c <.LBB1_38>
80201df6: 05 6a        	lui	s4, 1
80201df8: 9b 05 fa ff  	addiw	a1, s4, -1
80201dfc: 2e 95        	add	a0, a0, a1
80201dfe: fd 75        	lui	a1, 1048575
80201e00: 6d 8d        	and	a0, a0, a1
80201e02: 13 89 89 01  	addi	s2, s3, 24
80201e06: b7 f5 ff 43  	lui	a1, 278527
80201e0a: 93 9a 15 00  	slli	s5, a1, 1
80201e0e: aa 84        	mv	s1, a0
80201e10: 85 45        	li	a1, 1
80201e12: 05 66        	lui	a2, 1
80201e14: 97 10 00 00  	auipc	ra, 1
80201e18: e7 80 60 6e  	jalr	1766(ra)
;         self.lock.acquire();
80201e1c: 4a 85        	mv	a0, s2
80201e1e: 97 00 00 00  	auipc	ra, 0
80201e22: e7 80 80 37  	jalr	888(ra)
;         unsafe { (*pa).next = self.freelist }
80201e26: 03 b5 89 03  	ld	a0, 56(s3)
80201e2a: 88 e0        	sd	a0, 0(s1)
;         self.freelist = pa;
80201e2c: 23 bc 99 02  	sd	s1, 56(s3)
;         self.lock.release();
80201e30: 4a 85        	mv	a0, s2
80201e32: 97 00 00 00  	auipc	ra, 0
80201e36: e7 80 00 47  	jalr	1136(ra)
;             pa += PGSIZE;
80201e3a: 33 85 44 01  	add	a0, s1, s4
;         while pa < pa_end - PGSIZE {
80201e3e: e3 e8 54 fd  	bltu	s1, s5, 0x80201e0e <.LBB1_24+0x40>
80201e42: 03 b5 09 01  	ld	a0, 16(s3)
80201e46: 05 05        	addi	a0, a0, 1
80201e48: 11 a0        	j	0x80201e4c <.LBB1_24+0x7e>
80201e4a: 01 45        	li	a0, 0
80201e4c: 23 b8 a9 00  	sd	a0, 16(s3)
80201e50: 13 05 04 fc  	addi	a0, s0, -64
80201e54: 23 34 a4 f8  	sd	a0, -120(s0)
80201e58: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201e5c <.LBB1_25>:
80201e5c: 17 25 00 00  	auipc	a0, 2
80201e60: 13 05 c5 67  	addi	a0, a0, 1660
80201e64: 23 30 a4 fa  	sd	a0, -96(s0)
80201e68: 05 45        	li	a0, 1
80201e6a: 23 34 a4 fa  	sd	a0, -88(s0)

0000000080201e6e <.LBB1_26>:
80201e6e: 17 25 00 00  	auipc	a0, 2
80201e72: 13 05 25 61  	addi	a0, a0, 1554
80201e76: 23 38 a4 fa  	sd	a0, -80(s0)
80201e7a: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201e7e <.LBB1_27>:
80201e7e: 97 35 00 00  	auipc	a1, 3
80201e82: 93 85 a5 81  	addi	a1, a1, -2022
80201e86: 13 05 84 f8  	addi	a0, s0, -120
80201e8a: 13 06 04 f9  	addi	a2, s0, -112
80201e8e: 97 10 00 00  	auipc	ra, 1
80201e92: e7 80 00 be  	jalr	-1056(ra)
80201e96: 35 e5        	bnez	a0, 0x80201f02 <.LBB1_35>
; }
80201e98: e6 70        	ld	ra, 120(sp)
80201e9a: 46 74        	ld	s0, 112(sp)
80201e9c: a6 74        	ld	s1, 104(sp)
80201e9e: 06 79        	ld	s2, 96(sp)
80201ea0: e6 69        	ld	s3, 88(sp)
80201ea2: 46 6a        	ld	s4, 80(sp)
80201ea4: a6 6a        	ld	s5, 72(sp)
80201ea6: 09 61        	addi	sp, sp, 128
80201ea8: 82 80        	ret
;             match status {
80201eaa: 05 e1        	bnez	a0, 0x80201eca <.LBB1_30>

0000000080201eac <.LBB1_28>:
;                 INCOMPLETE => unreachable!(),
80201eac: 17 25 00 00  	auipc	a0, 2
80201eb0: 13 05 45 6c  	addi	a0, a0, 1732

0000000080201eb4 <.LBB1_29>:
80201eb4: 17 26 00 00  	auipc	a2, 2
80201eb8: 13 06 46 6e  	addi	a2, a2, 1764
80201ebc: 93 05 80 02  	li	a1, 40
80201ec0: 97 10 00 00  	auipc	ra, 1
80201ec4: e7 80 40 ac  	jalr	-1340(ra)
80201ec8: 00 00        	unimp	

0000000080201eca <.LBB1_30>:
;                 PANICKED => panic!("Once has panicked"),
80201eca: 17 25 00 00  	auipc	a0, 2
80201ece: 13 05 e5 61  	addi	a0, a0, 1566

0000000080201ed2 <.LBB1_31>:
80201ed2: 17 26 00 00  	auipc	a2, 2
80201ed6: 13 06 66 68  	addi	a2, a2, 1670
80201eda: c5 45        	li	a1, 17
80201edc: 97 10 00 00  	auipc	ra, 1
80201ee0: e7 80 80 aa  	jalr	-1368(ra)
80201ee4: 00 00        	unimp	

0000000080201ee6 <.LBB1_32>:
80201ee6: 17 25 00 00  	auipc	a0, 2
80201eea: 13 05 a5 37  	addi	a0, a0, 890

0000000080201eee <.LBB1_33>:
80201eee: 97 26 00 00  	auipc	a3, 2
80201ef2: 93 86 26 38  	addi	a3, a3, 898

0000000080201ef6 <.LBB1_34>:
80201ef6: 17 27 00 00  	auipc	a4, 2
80201efa: 13 07 27 3b  	addi	a4, a4, 946
80201efe: c1 45        	li	a1, 16
80201f00: 39 a8        	j	0x80201f1e <.LBB1_37+0xc>

0000000080201f02 <.LBB1_35>:
80201f02: 17 25 00 00  	auipc	a0, 2
80201f06: 13 05 65 7c  	addi	a0, a0, 1990

0000000080201f0a <.LBB1_36>:
80201f0a: 97 26 00 00  	auipc	a3, 2
80201f0e: 93 86 e6 7e  	addi	a3, a3, 2030

0000000080201f12 <.LBB1_37>:
80201f12: 17 37 00 00  	auipc	a4, 3
80201f16: 13 07 67 81  	addi	a4, a4, -2026
80201f1a: 93 05 b0 02  	li	a1, 43
80201f1e: 13 06 04 fc  	addi	a2, s0, -64
80201f22: 97 10 00 00  	auipc	ra, 1
80201f26: e7 80 e0 ac  	jalr	-1330(ra)
80201f2a: 00 00        	unimp	

0000000080201f2c <.LBB1_38>:
80201f2c: 17 25 00 00  	auipc	a0, 2
80201f30: 13 05 c5 55  	addi	a0, a0, 1372
80201f34: 23 30 a4 fa  	sd	a0, -96(s0)
80201f38: 05 45        	li	a0, 1
80201f3a: 23 34 a4 fa  	sd	a0, -88(s0)
80201f3e: 23 38 04 f8  	sd	zero, -112(s0)

0000000080201f42 <.LBB1_39>:
80201f42: 17 25 00 00  	auipc	a0, 2
80201f46: 13 05 e5 53  	addi	a0, a0, 1342
80201f4a: 23 38 a4 fa  	sd	a0, -80(s0)
80201f4e: 23 3c 04 fa  	sd	zero, -72(s0)

0000000080201f52 <.LBB1_40>:
;             panic!("kfree");
80201f52: 97 25 00 00  	auipc	a1, 2
80201f56: 93 85 e5 55  	addi	a1, a1, 1374
80201f5a: 13 05 04 f9  	addi	a0, s0, -112
80201f5e: 97 10 00 00  	auipc	ra, 1
80201f62: e7 80 80 9f  	jalr	-1544(ra)
80201f66: 00 00        	unimp	

0000000080201f68 <_ZN6kernel6memory6kalloc6kalloc17h8dd363a38295c609E>:
; pub fn kalloc() -> Addr {
80201f68: 39 71        	addi	sp, sp, -64
80201f6a: 06 fc        	sd	ra, 56(sp)
80201f6c: 22 f8        	sd	s0, 48(sp)
80201f6e: 26 f4        	sd	s1, 40(sp)
80201f70: 4a f0        	sd	s2, 32(sp)
80201f72: 4e ec        	sd	s3, 24(sp)
80201f74: 80 00        	addi	s0, sp, 64
80201f76: 0f 00 30 03  	fence	rw, rw

0000000080201f7a <.LBB2_15>:
80201f7a: 97 44 01 00  	auipc	s1, 20
80201f7e: 93 84 64 16  	addi	s1, s1, 358
80201f82: 88 60        	ld	a0, 0(s1)
80201f84: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
80201f88: 21 e9        	bnez	a0, 0x80201fd8 <.LBB2_16+0x34>
80201f8a: 85 45        	li	a1, 1
80201f8c: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
80201f90: 01 e5        	bnez	a0, 0x80201f98 <.LBB2_15+0x1e>
80201f92: 2f b6 b4 1e  	sc.d.aqrl	a2, a1, (s1)
80201f96: 7d fa        	bnez	a2, 0x80201f8c <.LBB2_15+0x12>
;             if status == INCOMPLETE { // We init
80201f98: 21 e1        	bnez	a0, 0x80201fd8 <.LBB2_16+0x34>
;                 let mut finish = Finish { state: &self.state, panicked: true };
80201f9a: 23 34 94 fc  	sd	s1, -56(s0)
;                 unsafe { *self.data.get() = Some(builder()) };
80201f9e: 8c e4        	sd	a1, 8(s1)
80201fa0: 23 b8 04 00  	sd	zero, 16(s1)

0000000080201fa4 <.LBB2_16>:
80201fa4: 17 25 00 00  	auipc	a0, 2
80201fa8: 13 05 05 06  	addi	a0, a0, 96
80201fac: 88 ec        	sd	a0, 24(s1)
80201fae: 11 45        	li	a0, 4
80201fb0: 88 f0        	sd	a0, 32(s1)
80201fb2: 23 b4 04 02  	sd	zero, 40(s1)
80201fb6: 23 88 04 02  	sb	zero, 48(s1)
80201fba: 23 bc 04 02  	sd	zero, 56(s1)
;                 finish.panicked = false;
80201fbe: 23 08 04 fc  	sb	zero, -48(s0)
80201fc2: 0f 00 10 03  	fence	rw, w
80201fc6: 09 45        	li	a0, 2
80201fc8: 88 e0        	sd	a0, 0(s1)
80201fca: 13 05 84 fc  	addi	a0, s0, -56
80201fce: 97 10 00 00  	auipc	ra, 1
80201fd2: e7 80 c0 93  	jalr	-1732(ra)
80201fd6: 05 a0        	j	0x80201ff6 <.LBB2_16+0x52>
80201fd8: 85 45        	li	a1, 1
;             match status {
80201fda: 63 1b b5 00  	bne	a0, a1, 0x80201ff0 <.LBB2_16+0x4c>
80201fde: 0f 00 00 01  	fence	w, 0
80201fe2: 0f 00 30 03  	fence	rw, rw
80201fe6: 88 60        	ld	a0, 0(s1)
80201fe8: 0f 00 30 02  	fence	r, rw
;             match status {
80201fec: e3 09 b5 fe  	beq	a0, a1, 0x80201fde <.LBB2_16+0x3a>
80201ff0: 89 45        	li	a1, 2
;             match status {
80201ff2: 63 11 b5 06  	bne	a0, a1, 0x80202054 <.LBB2_16+0xb0>
80201ff6: 88 68        	ld	a0, 16(s1)
80201ff8: 41 ed        	bnez	a0, 0x80202090 <.LBB2_21>
80201ffa: 7d 55        	li	a0, -1
80201ffc: 88 e8        	sd	a0, 16(s1)
;         self.lock.acquire();
80201ffe: 13 89 84 01  	addi	s2, s1, 24
80202002: 4a 85        	mv	a0, s2
80202004: 97 00 00 00  	auipc	ra, 0
80202008: e7 80 20 19  	jalr	402(ra)
;         r = self.freelist;
8020200c: 83 b9 84 03  	ld	s3, 56(s1)
80202010: 63 82 09 02  	beqz	s3, 0x80202034 <.LBB2_16+0x90>
;             unsafe { self.freelist = (*r).next }
80202014: 03 b5 09 00  	ld	a0, 0(s3)
80202018: 88 fc        	sd	a0, 56(s1)
;         self.lock.release();
8020201a: 4a 85        	mv	a0, s2
8020201c: 97 00 00 00  	auipc	ra, 0
80202020: e7 80 60 28  	jalr	646(ra)
80202024: 95 45        	li	a1, 5
80202026: 05 66        	lui	a2, 1
80202028: 4e 85        	mv	a0, s3
8020202a: 97 10 00 00  	auipc	ra, 1
8020202e: e7 80 00 4d  	jalr	1232(ra)
80202032: 31 a0        	j	0x8020203e <.LBB2_16+0x9a>
;         self.lock.release();
80202034: 4a 85        	mv	a0, s2
80202036: 97 00 00 00  	auipc	ra, 0
8020203a: e7 80 c0 26  	jalr	620(ra)
8020203e: 88 68        	ld	a0, 16(s1)
80202040: 05 05        	addi	a0, a0, 1
80202042: 88 e8        	sd	a0, 16(s1)
; }
80202044: 4e 85        	mv	a0, s3
80202046: e2 70        	ld	ra, 56(sp)
80202048: 42 74        	ld	s0, 48(sp)
8020204a: a2 74        	ld	s1, 40(sp)
8020204c: 02 79        	ld	s2, 32(sp)
8020204e: e2 69        	ld	s3, 24(sp)
80202050: 21 61        	addi	sp, sp, 64
80202052: 82 80        	ret
;             match status {
80202054: 05 e1        	bnez	a0, 0x80202074 <.LBB2_19>

0000000080202056 <.LBB2_17>:
;                 INCOMPLETE => unreachable!(),
80202056: 17 25 00 00  	auipc	a0, 2
8020205a: 13 05 a5 51  	addi	a0, a0, 1306

000000008020205e <.LBB2_18>:
8020205e: 17 26 00 00  	auipc	a2, 2
80202062: 13 06 a6 53  	addi	a2, a2, 1338
80202066: 93 05 80 02  	li	a1, 40
8020206a: 97 10 00 00  	auipc	ra, 1
8020206e: e7 80 a0 91  	jalr	-1766(ra)
80202072: 00 00        	unimp	

0000000080202074 <.LBB2_19>:
;                 PANICKED => panic!("Once has panicked"),
80202074: 17 25 00 00  	auipc	a0, 2
80202078: 13 05 45 47  	addi	a0, a0, 1140

000000008020207c <.LBB2_20>:
8020207c: 17 26 00 00  	auipc	a2, 2
80202080: 13 06 c6 4d  	addi	a2, a2, 1244
80202084: c5 45        	li	a1, 17
80202086: 97 10 00 00  	auipc	ra, 1
8020208a: e7 80 e0 8f  	jalr	-1794(ra)
8020208e: 00 00        	unimp	

0000000080202090 <.LBB2_21>:
80202090: 17 25 00 00  	auipc	a0, 2
80202094: 13 05 05 1d  	addi	a0, a0, 464

0000000080202098 <.LBB2_22>:
80202098: 97 26 00 00  	auipc	a3, 2
8020209c: 93 86 86 1d  	addi	a3, a3, 472

00000000802020a0 <.LBB2_23>:
802020a0: 17 27 00 00  	auipc	a4, 2
802020a4: 13 07 87 20  	addi	a4, a4, 520
802020a8: c1 45        	li	a1, 16
802020aa: 13 06 84 fc  	addi	a2, s0, -56
802020ae: 97 10 00 00  	auipc	ra, 1
802020b2: e7 80 20 94  	jalr	-1726(ra)
802020b6: 00 00        	unimp	

00000000802020b8 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE>:
;     pub fn call_once<'a, F>(&'a self, builder: F) -> &'a T
802020b8: 39 71        	addi	sp, sp, -64
802020ba: 06 fc        	sd	ra, 56(sp)
802020bc: 22 f8        	sd	s0, 48(sp)
802020be: 26 f4        	sd	s1, 40(sp)
802020c0: 4a f0        	sd	s2, 32(sp)
802020c2: 4e ec        	sd	s3, 24(sp)
802020c4: 80 00        	addi	s0, sp, 64
802020c6: aa 84        	mv	s1, a0
802020c8: 0f 00 30 03  	fence	rw, rw
802020cc: 08 61        	ld	a0, 0(a0)
802020ce: 0f 00 30 02  	fence	r, rw
;         if status == INCOMPLETE {
802020d2: 39 e9        	bnez	a0, 0x80202128 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x70>
802020d4: 05 49        	li	s2, 1
802020d6: 2f b5 04 16  	lr.d.aqrl	a0, (s1)
802020da: 01 e5        	bnez	a0, 0x802020e2 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x2a>
802020dc: af b5 24 1f  	sc.d.aqrl	a1, s2, (s1)
802020e0: fd f9        	bnez	a1, 0x802020d6 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x1e>
;             if status == INCOMPLETE { // We init
802020e2: 39 e1        	bnez	a0, 0x80202128 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x70>
;                 let mut finish = Finish { state: &self.state, panicked: true };
802020e4: 23 34 94 fc  	sd	s1, -56(s0)
;         let kpgtbl = PagetableT::addr2pagetablet(kalloc());
802020e8: 97 00 00 00  	auipc	ra, 0
802020ec: e7 80 00 e8  	jalr	-384(ra)
802020f0: aa 89        	mv	s3, a0
802020f2: 05 66        	lui	a2, 1
802020f4: 81 45        	li	a1, 0
802020f6: 97 10 00 00  	auipc	ra, 1
802020fa: e7 80 40 40  	jalr	1028(ra)
;                 unsafe { *self.data.get() = Some(builder()) };
802020fe: 23 b4 24 01  	sd	s2, 8(s1)
80202102: 13 89 04 01  	addi	s2, s1, 16
80202106: 23 b8 04 00  	sd	zero, 16(s1)
8020210a: 23 bc 34 01  	sd	s3, 24(s1)
;                 finish.panicked = false;
8020210e: 23 08 04 fc  	sb	zero, -48(s0)
80202112: 0f 00 10 03  	fence	rw, w
80202116: 09 45        	li	a0, 2
80202118: 88 e0        	sd	a0, 0(s1)
8020211a: 13 05 84 fc  	addi	a0, s0, -56
8020211e: 97 00 00 00  	auipc	ra, 0
80202122: e7 80 c0 7e  	jalr	2028(ra)
80202126: 15 a0        	j	0x8020214a <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x92>
80202128: 85 45        	li	a1, 1
;             match status {
8020212a: 63 1b b5 00  	bne	a0, a1, 0x80202140 <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x88>
8020212e: 0f 00 00 01  	fence	w, 0
80202132: 0f 00 30 03  	fence	rw, rw
80202136: 88 60        	ld	a0, 0(s1)
80202138: 0f 00 30 02  	fence	r, rw
;             match status {
8020213c: e3 09 b5 fe  	beq	a0, a1, 0x8020212e <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0x76>
80202140: 89 45        	li	a1, 2
;             match status {
80202142: 63 1c b5 00  	bne	a0, a1, 0x8020215a <_ZN4spin4once13Once$LT$T$GT$9call_once17h30c98d0c9c7aa4faE+0xa2>
80202146: 13 89 04 01  	addi	s2, s1, 16
;     }
8020214a: 4a 85        	mv	a0, s2
8020214c: e2 70        	ld	ra, 56(sp)
8020214e: 42 74        	ld	s0, 48(sp)
80202150: a2 74        	ld	s1, 40(sp)
80202152: 02 79        	ld	s2, 32(sp)
80202154: e2 69        	ld	s3, 24(sp)
80202156: 21 61        	addi	sp, sp, 64
80202158: 82 80        	ret
;             match status {
8020215a: 05 e1        	bnez	a0, 0x8020217a <.LBB0_13>

000000008020215c <.LBB0_11>:
;                 INCOMPLETE => unreachable!(),
8020215c: 17 25 00 00  	auipc	a0, 2
80202160: 13 05 45 41  	addi	a0, a0, 1044

0000000080202164 <.LBB0_12>:
80202164: 17 26 00 00  	auipc	a2, 2
80202168: 13 06 46 43  	addi	a2, a2, 1076
8020216c: 93 05 80 02  	li	a1, 40
80202170: 97 10 00 00  	auipc	ra, 1
80202174: e7 80 40 81  	jalr	-2028(ra)
80202178: 00 00        	unimp	

000000008020217a <.LBB0_13>:
;                 PANICKED => panic!("Once has panicked"),
8020217a: 17 25 00 00  	auipc	a0, 2
8020217e: 13 05 e5 36  	addi	a0, a0, 878

0000000080202182 <.LBB0_14>:
80202182: 17 26 00 00  	auipc	a2, 2
80202186: 13 06 66 3d  	addi	a2, a2, 982
8020218a: c5 45        	li	a1, 17
8020218c: 97 00 00 00  	auipc	ra, 0
80202190: e7 80 80 7f  	jalr	2040(ra)
80202194: 00 00        	unimp	

0000000080202196 <_ZN6kernel4lock8spinlock8Spinlock7acquire17hfb9c49aa9594a77bE>:
;     pub fn acquire(&mut self) {
80202196: 39 71        	addi	sp, sp, -64
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
80202198: 06 fc        	sd	ra, 56(sp)
8020219a: 22 f8        	sd	s0, 48(sp)
8020219c: 80 00        	addi	s0, sp, 64
8020219e: 73 26 00 10  	csrr	a2, sstatus
802021a2: 89 45        	li	a1, 2
;                 () => core::arch::asm!("csrrc x0, {1}, {0}", in(reg) bits, const $csr_number),
802021a4: 73 b0 05 10  	csrc	sstatus, a1
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802021a8: 92 86        	mv	a3, tp
802021aa: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802021ac: 63 f2 b6 0a  	bgeu	a3, a1, 0x80202250 <.LBB1_12>
802021b0: e1 45        	li	a1, 24
;     if mc.noff == 0 {
802021b2: b3 86 b6 02  	mul	a3, a3, a1

00000000802021b6 <.LBB1_11>:
802021b6: 17 48 01 00  	auipc	a6, 20
802021ba: 13 08 a8 e6  	addi	a6, a6, -406
802021be: b3 07 d8 00  	add	a5, a6, a3
802021c2: 98 67        	ld	a4, 8(a5)
802021c4: 93 86 87 00  	addi	a3, a5, 8
802021c8: 09 e7        	bnez	a4, 0x802021d2 <.LBB1_11+0x1c>
;         mc.intena = old;
802021ca: 7a 16        	slli	a2, a2, 62
802021cc: 7d 92        	srli	a2, a2, 63
802021ce: 23 88 c7 00  	sb	a2, 16(a5)
;     mc.noff += 1;
802021d2: 13 06 17 00  	addi	a2, a4, 1
802021d6: 90 e2        	sd	a2, 0(a3)
802021d8: 83 06 85 01  	lb	a3, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802021dc: 93 08 85 01  	addi	a7, a0, 24
802021e0: 81 ce        	beqz	a3, 0x802021f8 <.LBB1_11+0x42>
802021e2: 18 69        	ld	a4, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802021e4: 92 86        	mv	a3, tp
802021e6: a1 47        	li	a5, 8
;     unsafe { &mut CPUS[id] }
802021e8: 63 f4 f6 06  	bgeu	a3, a5, 0x80202250 <.LBB1_12>
802021ec: e1 47        	li	a5, 24
;     unsafe { &mut CPUS[id] }
802021ee: b3 86 f6 02  	mul	a3, a3, a5
802021f2: c2 96        	add	a3, a3, a6
;         if self.holding() {
802021f4: 63 09 d7 06  	beq	a4, a3, 0x80202266 <.LBB1_13>
802021f8: 93 f6 c8 ff  	andi	a3, a7, -4
802021fc: 1b 97 38 00  	slliw	a4, a7, 3
80202200: 93 07 f0 0f  	li	a5, 255
80202204: bb 97 e7 00  	sllw	a5, a5, a4
80202208: 85 45        	li	a1, 1
8020220a: bb 95 e5 00  	sllw	a1, a1, a4
8020220e: 82 15        	slli	a1, a1, 32
80202210: 81 91        	srli	a1, a1, 32
80202212: 2f a7 06 14  	lr.w.aq	a4, (a3)
80202216: 33 76 f7 00  	and	a2, a4, a5
8020221a: 01 ea        	bnez	a2, 0x8020222a <.LBB1_11+0x74>
8020221c: 33 46 b7 00  	xor	a2, a4, a1
80202220: 7d 8e        	and	a2, a2, a5
80202222: 39 8e        	xor	a2, a2, a4
80202224: 2f a6 c6 18  	sc.w	a2, a2, (a3)
80202228: 6d f6        	bnez	a2, 0x80202212 <.LBB1_11+0x5c>
8020222a: b3 75 f7 00  	and	a1, a4, a5
8020222e: 81 25        	sext.w	a1, a1
;         while self
80202230: e1 f5        	bnez	a1, 0x802021f8 <.LBB1_11+0x42>
80202232: 0f 00 30 03  	fence	rw, rw
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202236: 92 86        	mv	a3, tp
80202238: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
8020223a: 63 fb b6 00  	bgeu	a3, a1, 0x80202250 <.LBB1_12>
8020223e: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
80202240: b3 85 b6 02  	mul	a1, a3, a1
80202244: c2 95        	add	a1, a1, a6
;         self.cpu = mycpu();
80202246: 0c e9        	sd	a1, 16(a0)
;     }
80202248: e2 70        	ld	ra, 56(sp)
8020224a: 42 74        	ld	s0, 48(sp)
8020224c: 21 61        	addi	sp, sp, 64
8020224e: 82 80        	ret

0000000080202250 <.LBB1_12>:
80202250: 17 26 00 00  	auipc	a2, 2
80202254: 13 06 86 21  	addi	a2, a2, 536
80202258: a1 45        	li	a1, 8
8020225a: 36 85        	mv	a0, a3
8020225c: 97 00 00 00  	auipc	ra, 0
80202260: e7 80 40 75  	jalr	1876(ra)
80202264: 00 00        	unimp	

0000000080202266 <.LBB1_13>:
80202266: 17 25 00 00  	auipc	a0, 2
8020226a: 13 05 25 35  	addi	a0, a0, 850
8020226e: 23 38 a4 fc  	sd	a0, -48(s0)
80202272: 05 45        	li	a0, 1
80202274: 23 3c a4 fc  	sd	a0, -40(s0)
80202278: 23 30 04 fc  	sd	zero, -64(s0)

000000008020227c <.LBB1_14>:
8020227c: 17 25 00 00  	auipc	a0, 2
80202280: 13 05 45 33  	addi	a0, a0, 820
80202284: 23 30 a4 fe  	sd	a0, -32(s0)
80202288: 23 34 04 fe  	sd	zero, -24(s0)

000000008020228c <.LBB1_15>:
;             panic!("acquire");
8020228c: 97 25 00 00  	auipc	a1, 2
80202290: 93 85 45 35  	addi	a1, a1, 852
80202294: 13 05 04 fc  	addi	a0, s0, -64
80202298: 97 00 00 00  	auipc	ra, 0
8020229c: e7 80 e0 6b  	jalr	1726(ra)
802022a0: 00 00        	unimp	

00000000802022a2 <_ZN6kernel4lock8spinlock8Spinlock7release17h274222f3a8daa87dE>:
;     pub fn release(&mut self) {
802022a2: 39 71        	addi	sp, sp, -64
802022a4: 06 fc        	sd	ra, 56(sp)
802022a6: 22 f8        	sd	s0, 48(sp)
802022a8: 80 00        	addi	s0, sp, 64
802022aa: 83 05 85 01  	lb	a1, 24(a0)
;         self.locked.load(Ordering::Relaxed) && self.cpu == mycpu()
802022ae: dd c1        	beqz	a1, 0x80202354 <.LBB2_19>
802022b0: 10 69        	ld	a2, 16(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802022b2: 92 86        	mv	a3, tp
802022b4: a1 45        	li	a1, 8
;     unsafe { &mut CPUS[id] }
802022b6: 63 fa b6 06  	bgeu	a3, a1, 0x8020232a <.LBB2_17>
802022ba: e1 45        	li	a1, 24
;     unsafe { &mut CPUS[id] }
802022bc: b3 86 b6 02  	mul	a3, a3, a1

00000000802022c0 <.LBB2_16>:
802022c0: 97 45 01 00  	auipc	a1, 20
802022c4: 93 85 05 d6  	addi	a1, a1, -672
802022c8: ae 96        	add	a3, a3, a1
;         if !self.holding() {
802022ca: 63 15 d6 08  	bne	a2, a3, 0x80202354 <.LBB2_19>
;         self.cpu = null_mut();
802022ce: 23 38 05 00  	sd	zero, 16(a0)
802022d2: 0f 00 30 03  	fence	rw, rw
802022d6: 0f 00 10 03  	fence	rw, w
802022da: 23 0c 05 00  	sb	zero, 24(a0)
;     unsafe { asm!("mv {}, tp", out(reg) x) }
802022de: 12 85        	mv	a0, tp
802022e0: 21 46        	li	a2, 8
;     unsafe { &mut CPUS[id] }
802022e2: 63 7f c5 04  	bgeu	a0, a2, 0x80202340 <.LBB2_18>
;                     core::arch::asm!("csrrs {0}, {1}, x0", out(reg) r, const $csr_number);
802022e6: 73 26 00 10  	csrr	a2, sstatus
;                 (*self & (1 << bit)) != 0
802022ea: 09 8a        	andi	a2, a2, 2
;     if sstatus::read().sie() {
802022ec: 41 ee        	bnez	a2, 0x80202384 <.LBB2_22>
802022ee: 61 46        	li	a2, 24
;     if mc.noff < 1 {
802022f0: 33 06 c5 02  	mul	a2, a0, a2
802022f4: b3 86 c5 00  	add	a3, a1, a2
802022f8: 90 66        	ld	a2, 8(a3)
802022fa: 63 5d c0 0a  	blez	a2, 0x802023b4 <.LBB2_25>
802022fe: a1 06        	addi	a3, a3, 8
;     mc.noff -= 1;
80202300: 7d 16        	addi	a2, a2, -1
80202302: 90 e2        	sd	a2, 0(a3)
;     if mc.noff == 0 && mc.intena {
80202304: 09 c6        	beqz	a2, 0x8020230e <.LBB2_16+0x4e>
;     }
80202306: e2 70        	ld	ra, 56(sp)
80202308: 42 74        	ld	s0, 48(sp)
8020230a: 21 61        	addi	sp, sp, 64
8020230c: 82 80        	ret
8020230e: 61 46        	li	a2, 24
;     if mc.noff == 0 && mc.intena {
80202310: 33 05 c5 02  	mul	a0, a0, a2
80202314: 2e 95        	add	a0, a0, a1
80202316: 03 45 05 01  	lbu	a0, 16(a0)
8020231a: 75 d5        	beqz	a0, 0x80202306 <.LBB2_16+0x46>
8020231c: 09 45        	li	a0, 2
;                 () => core::arch::asm!("csrrs x0, {1}, {0}", in(reg) bits, const $csr_number),
8020231e: 73 20 05 10  	csrs	sstatus, a0
;     }
80202322: e2 70        	ld	ra, 56(sp)
80202324: 42 74        	ld	s0, 48(sp)
80202326: 21 61        	addi	sp, sp, 64
80202328: 82 80        	ret

000000008020232a <.LBB2_17>:
;     unsafe { &mut CPUS[id] }
8020232a: 17 26 00 00  	auipc	a2, 2
8020232e: 13 06 e6 13  	addi	a2, a2, 318
80202332: a1 45        	li	a1, 8
80202334: 36 85        	mv	a0, a3
80202336: 97 00 00 00  	auipc	ra, 0
8020233a: e7 80 a0 67  	jalr	1658(ra)
8020233e: 00 00        	unimp	

0000000080202340 <.LBB2_18>:
80202340: 17 26 00 00  	auipc	a2, 2
80202344: 13 06 86 12  	addi	a2, a2, 296
80202348: a1 45        	li	a1, 8
8020234a: 97 00 00 00  	auipc	ra, 0
8020234e: e7 80 60 66  	jalr	1638(ra)
80202352: 00 00        	unimp	

0000000080202354 <.LBB2_19>:
80202354: 17 25 00 00  	auipc	a0, 2
80202358: 13 05 c5 2a  	addi	a0, a0, 684
8020235c: 23 38 a4 fc  	sd	a0, -48(s0)
80202360: 05 45        	li	a0, 1
80202362: 23 3c a4 fc  	sd	a0, -40(s0)
80202366: 23 30 04 fc  	sd	zero, -64(s0)

000000008020236a <.LBB2_20>:
8020236a: 17 25 00 00  	auipc	a0, 2
8020236e: 13 05 65 24  	addi	a0, a0, 582
80202372: 23 30 a4 fe  	sd	a0, -32(s0)
80202376: 23 34 04 fe  	sd	zero, -24(s0)

000000008020237a <.LBB2_21>:
;             panic!("release");
8020237a: 97 25 00 00  	auipc	a1, 2
8020237e: 93 85 65 29  	addi	a1, a1, 662
80202382: 85 a0        	j	0x802023e2 <.LBB2_27+0x8>

0000000080202384 <.LBB2_22>:
80202384: 17 25 00 00  	auipc	a0, 2
80202388: 13 05 c5 2b  	addi	a0, a0, 700
8020238c: 23 38 a4 fc  	sd	a0, -48(s0)
80202390: 05 45        	li	a0, 1
80202392: 23 3c a4 fc  	sd	a0, -40(s0)
80202396: 23 30 04 fc  	sd	zero, -64(s0)

000000008020239a <.LBB2_23>:
8020239a: 17 25 00 00  	auipc	a0, 2
8020239e: 13 05 65 21  	addi	a0, a0, 534
802023a2: 23 30 a4 fe  	sd	a0, -32(s0)
802023a6: 23 34 04 fe  	sd	zero, -24(s0)

00000000802023aa <.LBB2_24>:
;         panic!("pop_off - interruptible");
802023aa: 97 25 00 00  	auipc	a1, 2
802023ae: 93 85 65 2a  	addi	a1, a1, 678
802023b2: 05 a8        	j	0x802023e2 <.LBB2_27+0x8>

00000000802023b4 <.LBB2_25>:
802023b4: 17 25 00 00  	auipc	a0, 2
802023b8: 13 05 c5 2b  	addi	a0, a0, 700
802023bc: 23 38 a4 fc  	sd	a0, -48(s0)
802023c0: 05 45        	li	a0, 1
802023c2: 23 3c a4 fc  	sd	a0, -40(s0)
802023c6: 23 30 04 fc  	sd	zero, -64(s0)

00000000802023ca <.LBB2_26>:
802023ca: 17 25 00 00  	auipc	a0, 2
802023ce: 13 05 65 1e  	addi	a0, a0, 486
802023d2: 23 30 a4 fe  	sd	a0, -32(s0)
802023d6: 23 34 04 fe  	sd	zero, -24(s0)

00000000802023da <.LBB2_27>:
;         panic!("pop_off");
802023da: 97 25 00 00  	auipc	a1, 2
802023de: 93 85 65 2a  	addi	a1, a1, 678
802023e2: 13 05 04 fc  	addi	a0, s0, -64
802023e6: 97 00 00 00  	auipc	ra, 0
802023ea: e7 80 00 57  	jalr	1392(ra)
802023ee: 00 00        	unimp	

00000000802023f0 <_ZN4core3ptr56drop_in_place$LT$$RF$mut$u20$kernel..console..Stdout$GT$17hd0476dbd38f9b83bE.llvm.14925168440623367020>:
802023f0: 41 11        	addi	sp, sp, -16
802023f2: 06 e4        	sd	ra, 8(sp)
802023f4: 22 e0        	sd	s0, 0(sp)
802023f6: 00 08        	addi	s0, sp, 16
802023f8: a2 60        	ld	ra, 8(sp)
802023fa: 02 64        	ld	s0, 0(sp)
802023fc: 41 01        	addi	sp, sp, 16
802023fe: 82 80        	ret

0000000080202400 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020>:
80202400: 01 11        	addi	sp, sp, -32
80202402: 06 ec        	sd	ra, 24(sp)
80202404: 22 e8        	sd	s0, 16(sp)
80202406: 00 10        	addi	s0, sp, 32
80202408: 1b 85 05 00  	sext.w	a0, a1
8020240c: 13 06 00 08  	li	a2, 128
80202410: 23 26 04 fe  	sw	zero, -20(s0)
80202414: 63 76 c5 00  	bgeu	a0, a2, 0x80202420 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x20>
80202418: 23 06 b4 fe  	sb	a1, -20(s0)
8020241c: 05 45        	li	a0, 1
8020241e: 51 a8        	j	0x802024b2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xb2>
80202420: 1b d5 b5 00  	srliw	a0, a1, 11
80202424: 19 ed        	bnez	a0, 0x80202442 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x42>
80202426: 13 d5 65 00  	srli	a0, a1, 6
8020242a: 13 65 05 0c  	ori	a0, a0, 192
8020242e: 23 06 a4 fe  	sb	a0, -20(s0)
80202432: 13 f5 f5 03  	andi	a0, a1, 63
80202436: 13 65 05 08  	ori	a0, a0, 128
8020243a: a3 06 a4 fe  	sb	a0, -19(s0)
8020243e: 09 45        	li	a0, 2
80202440: 8d a8        	j	0x802024b2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xb2>
80202442: 1b d5 05 01  	srliw	a0, a1, 16
80202446: 05 e9        	bnez	a0, 0x80202476 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x76>
80202448: 13 95 05 02  	slli	a0, a1, 32
8020244c: 01 91        	srli	a0, a0, 32
8020244e: 1b d6 c5 00  	srliw	a2, a1, 12
80202452: 13 66 06 0e  	ori	a2, a2, 224
80202456: 23 06 c4 fe  	sb	a2, -20(s0)
8020245a: 52 15        	slli	a0, a0, 52
8020245c: 69 91        	srli	a0, a0, 58
8020245e: 13 65 05 08  	ori	a0, a0, 128
80202462: a3 06 a4 fe  	sb	a0, -19(s0)
80202466: 13 f5 f5 03  	andi	a0, a1, 63
8020246a: 13 65 05 08  	ori	a0, a0, 128
8020246e: 23 07 a4 fe  	sb	a0, -18(s0)
80202472: 0d 45        	li	a0, 3
80202474: 3d a8        	j	0x802024b2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xb2>
80202476: 13 95 05 02  	slli	a0, a1, 32
8020247a: 01 91        	srli	a0, a0, 32
8020247c: 13 16 b5 02  	slli	a2, a0, 43
80202480: 75 92        	srli	a2, a2, 61
80202482: 13 66 06 0f  	ori	a2, a2, 240
80202486: 23 06 c4 fe  	sb	a2, -20(s0)
8020248a: 13 16 e5 02  	slli	a2, a0, 46
8020248e: 69 92        	srli	a2, a2, 58
80202490: 13 66 06 08  	ori	a2, a2, 128
80202494: a3 06 c4 fe  	sb	a2, -19(s0)
80202498: 52 15        	slli	a0, a0, 52
8020249a: 69 91        	srli	a0, a0, 58
8020249c: 13 65 05 08  	ori	a0, a0, 128
802024a0: 23 07 a4 fe  	sb	a0, -18(s0)
802024a4: 13 f5 f5 03  	andi	a0, a1, 63
802024a8: 13 65 05 08  	ori	a0, a0, 128
802024ac: a3 07 a4 fe  	sb	a0, -17(s0)
802024b0: 11 45        	li	a0, 4
802024b2: 93 06 c4 fe  	addi	a3, s0, -20
802024b6: 33 87 a6 00  	add	a4, a3, a0
802024ba: 13 03 f0 0d  	li	t1, 223
802024be: 13 08 00 0f  	li	a6, 240
802024c2: b7 02 11 00  	lui	t0, 272
802024c6: 85 48        	li	a7, 1
802024c8: 01 a8        	j	0x802024d8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xd8>
802024ca: 85 06        	addi	a3, a3, 1
;         asm!(
802024cc: 81 45        	li	a1, 0
802024ce: 01 46        	li	a2, 0
802024d0: 73 00 00 00  	ecall	
802024d4: 63 8f e6 04  	beq	a3, a4, 0x80202532 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x132>
802024d8: 83 85 06 00  	lb	a1, 0(a3)
802024dc: 13 f5 f5 0f  	andi	a0, a1, 255
802024e0: e3 d5 05 fe  	bgez	a1, 0x802024ca <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xca>
802024e4: 03 c6 16 00  	lbu	a2, 1(a3)
802024e8: 93 75 f5 01  	andi	a1, a0, 31
802024ec: 13 76 f6 03  	andi	a2, a2, 63
802024f0: 63 77 a3 02  	bgeu	t1, a0, 0x8020251e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x11e>
802024f4: 83 c7 26 00  	lbu	a5, 2(a3)
802024f8: 1a 06        	slli	a2, a2, 6
802024fa: 93 f7 f7 03  	andi	a5, a5, 63
802024fe: 5d 8e        	or	a2, a2, a5
80202500: 63 64 05 03  	bltu	a0, a6, 0x80202528 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x128>
80202504: 03 c5 36 00  	lbu	a0, 3(a3)
80202508: f6 15        	slli	a1, a1, 61
8020250a: ad 91        	srli	a1, a1, 43
8020250c: 1a 06        	slli	a2, a2, 6
8020250e: 13 75 f5 03  	andi	a0, a0, 63
80202512: 51 8d        	or	a0, a0, a2
80202514: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
80202516: 63 0e 55 00  	beq	a0, t0, 0x80202532 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0x132>
8020251a: 91 06        	addi	a3, a3, 4
8020251c: 45 bf        	j	0x802024cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xcc>
8020251e: 89 06        	addi	a3, a3, 2
80202520: 13 95 65 00  	slli	a0, a1, 6
80202524: 51 8d        	or	a0, a0, a2
80202526: 5d b7        	j	0x802024cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xcc>
80202528: 8d 06        	addi	a3, a3, 3
8020252a: 13 95 c5 00  	slli	a0, a1, 12
8020252e: 51 8d        	or	a0, a0, a2
80202530: 71 bf        	j	0x802024cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17ha6089827fed50751E.llvm.14925168440623367020+0xcc>
80202532: 01 45        	li	a0, 0
80202534: e2 60        	ld	ra, 24(sp)
80202536: 42 64        	ld	s0, 16(sp)
80202538: 05 61        	addi	sp, sp, 32
8020253a: 82 80        	ret

000000008020253c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hd5f3e9c38259cfbdE.llvm.14925168440623367020>:
8020253c: 5d 71        	addi	sp, sp, -80
8020253e: 86 e4        	sd	ra, 72(sp)
80202540: a2 e0        	sd	s0, 64(sp)
80202542: 80 08        	addi	s0, sp, 80
80202544: 08 61        	ld	a0, 0(a0)
80202546: 90 75        	ld	a2, 40(a1)
80202548: 94 71        	ld	a3, 32(a1)
8020254a: 23 3c a4 fa  	sd	a0, -72(s0)
8020254e: 23 34 c4 fe  	sd	a2, -24(s0)
80202552: 23 30 d4 fe  	sd	a3, -32(s0)
80202556: 88 6d        	ld	a0, 24(a1)
80202558: 90 69        	ld	a2, 16(a1)
8020255a: 94 65        	ld	a3, 8(a1)
8020255c: 8c 61        	ld	a1, 0(a1)
8020255e: 23 3c a4 fc  	sd	a0, -40(s0)
80202562: 23 38 c4 fc  	sd	a2, -48(s0)
80202566: 23 34 d4 fc  	sd	a3, -56(s0)
8020256a: 23 30 b4 fc  	sd	a1, -64(s0)

000000008020256e <.LBB2_1>:
8020256e: 97 25 00 00  	auipc	a1, 2
80202572: 93 85 a5 12  	addi	a1, a1, 298
80202576: 13 05 84 fb  	addi	a0, s0, -72
8020257a: 13 06 04 fc  	addi	a2, s0, -64
8020257e: 97 00 00 00  	auipc	ra, 0
80202582: e7 80 00 4f  	jalr	1264(ra)
80202586: a6 60        	ld	ra, 72(sp)
80202588: 06 64        	ld	s0, 64(sp)
8020258a: 61 61        	addi	sp, sp, 80
8020258c: 82 80        	ret

000000008020258e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020>:
8020258e: 41 11        	addi	sp, sp, -16
80202590: 06 e4        	sd	ra, 8(sp)
80202592: 22 e0        	sd	s0, 0(sp)
80202594: 00 08        	addi	s0, sp, 16
80202596: 41 c2        	beqz	a2, 0x80202616 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x88>
80202598: ae 86        	mv	a3, a1
8020259a: 33 87 c5 00  	add	a4, a1, a2
8020259e: 13 03 f0 0d  	li	t1, 223
802025a2: 13 08 00 0f  	li	a6, 240
802025a6: b7 02 11 00  	lui	t0, 272
802025aa: 85 48        	li	a7, 1
802025ac: 01 a8        	j	0x802025bc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x2e>
802025ae: 85 06        	addi	a3, a3, 1
;         asm!(
802025b0: 81 45        	li	a1, 0
802025b2: 01 46        	li	a2, 0
802025b4: 73 00 00 00  	ecall	
802025b8: 63 8f e6 04  	beq	a3, a4, 0x80202616 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x88>
802025bc: 83 85 06 00  	lb	a1, 0(a3)
802025c0: 13 f5 f5 0f  	andi	a0, a1, 255
802025c4: e3 d5 05 fe  	bgez	a1, 0x802025ae <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x20>
802025c8: 03 c6 16 00  	lbu	a2, 1(a3)
802025cc: 93 75 f5 01  	andi	a1, a0, 31
802025d0: 13 76 f6 03  	andi	a2, a2, 63
802025d4: 63 77 a3 02  	bgeu	t1, a0, 0x80202602 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x74>
802025d8: 83 c7 26 00  	lbu	a5, 2(a3)
802025dc: 1a 06        	slli	a2, a2, 6
802025de: 93 f7 f7 03  	andi	a5, a5, 63
802025e2: 5d 8e        	or	a2, a2, a5
802025e4: 63 64 05 03  	bltu	a0, a6, 0x8020260c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x7e>
802025e8: 03 c5 36 00  	lbu	a0, 3(a3)
802025ec: f6 15        	slli	a1, a1, 61
802025ee: ad 91        	srli	a1, a1, 43
802025f0: 1a 06        	slli	a2, a2, 6
802025f2: 13 75 f5 03  	andi	a0, a0, 63
802025f6: 51 8d        	or	a0, a0, a2
802025f8: 4d 8d        	or	a0, a0, a1
;         for c in s.chars() {
802025fa: 63 0e 55 00  	beq	a0, t0, 0x80202616 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x88>
802025fe: 91 06        	addi	a3, a3, 4
80202600: 45 bf        	j	0x802025b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x22>
80202602: 89 06        	addi	a3, a3, 2
80202604: 13 95 65 00  	slli	a0, a1, 6
80202608: 51 8d        	or	a0, a0, a2
8020260a: 5d b7        	j	0x802025b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x22>
8020260c: 8d 06        	addi	a3, a3, 3
8020260e: 13 95 c5 00  	slli	a0, a1, 12
80202612: 51 8d        	or	a0, a0, a2
80202614: 71 bf        	j	0x802025b0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h096428ed75cf3712E.llvm.14925168440623367020+0x22>
80202616: 01 45        	li	a0, 0
80202618: a2 60        	ld	ra, 8(sp)
8020261a: 02 64        	ld	s0, 0(sp)
8020261c: 41 01        	addi	sp, sp, 16
8020261e: 82 80        	ret

0000000080202620 <_ZN6kernel7console5print17h1ef73275907ef8e0E>:
; pub fn print(args: fmt::Arguments) {
80202620: 5d 71        	addi	sp, sp, -80
80202622: 86 e4        	sd	ra, 72(sp)
80202624: a2 e0        	sd	s0, 64(sp)
80202626: 80 08        	addi	s0, sp, 80
80202628: 0c 75        	ld	a1, 40(a0)
8020262a: 10 71        	ld	a2, 32(a0)
8020262c: 93 06 84 fe  	addi	a3, s0, -24
80202630: 23 38 d4 fa  	sd	a3, -80(s0)
80202634: 23 30 b4 fe  	sd	a1, -32(s0)
80202638: 23 3c c4 fc  	sd	a2, -40(s0)
8020263c: 0c 6d        	ld	a1, 24(a0)
8020263e: 10 69        	ld	a2, 16(a0)
80202640: 14 65        	ld	a3, 8(a0)
80202642: 08 61        	ld	a0, 0(a0)
80202644: 23 38 b4 fc  	sd	a1, -48(s0)
80202648: 23 34 c4 fc  	sd	a2, -56(s0)
8020264c: 23 30 d4 fc  	sd	a3, -64(s0)
80202650: 23 3c a4 fa  	sd	a0, -72(s0)

0000000080202654 <.LBB4_3>:
80202654: 97 25 00 00  	auipc	a1, 2
80202658: 93 85 45 04  	addi	a1, a1, 68
8020265c: 13 05 04 fb  	addi	a0, s0, -80
80202660: 13 06 84 fb  	addi	a2, s0, -72
80202664: 97 00 00 00  	auipc	ra, 0
80202668: e7 80 a0 40  	jalr	1034(ra)
8020266c: 09 e5        	bnez	a0, 0x80202676 <.LBB4_4>
; }
8020266e: a6 60        	ld	ra, 72(sp)
80202670: 06 64        	ld	s0, 64(sp)
80202672: 61 61        	addi	sp, sp, 80
80202674: 82 80        	ret

0000000080202676 <.LBB4_4>:
80202676: 17 25 00 00  	auipc	a0, 2
8020267a: 13 05 25 05  	addi	a0, a0, 82

000000008020267e <.LBB4_5>:
8020267e: 97 26 00 00  	auipc	a3, 2
80202682: 93 86 a6 07  	addi	a3, a3, 122

0000000080202686 <.LBB4_6>:
80202686: 17 27 00 00  	auipc	a4, 2
8020268a: 13 07 27 0a  	addi	a4, a4, 162
8020268e: 93 05 b0 02  	li	a1, 43
80202692: 13 06 84 fe  	addi	a2, s0, -24
80202696: 97 00 00 00  	auipc	ra, 0
8020269a: e7 80 a0 35  	jalr	858(ra)
8020269e: 00 00        	unimp	

00000000802026a0 <rust_begin_unwind>:
; fn panic(info: &PanicInfo) -> ! {
802026a0: 71 71        	addi	sp, sp, -176
802026a2: 06 f5        	sd	ra, 168(sp)
802026a4: 22 f1        	sd	s0, 160(sp)
802026a6: 26 ed        	sd	s1, 152(sp)
802026a8: 00 19        	addi	s0, sp, 176
802026aa: aa 84        	mv	s1, a0
;     let err = info.message().unwrap();
802026ac: 97 00 00 00  	auipc	ra, 0
802026b0: e7 80 20 2a  	jalr	674(ra)
802026b4: 05 e1        	bnez	a0, 0x802026d4 <.LBB0_8+0x16>

00000000802026b6 <.LBB0_7>:
802026b6: 17 25 00 00  	auipc	a0, 2
802026ba: 13 05 a5 10  	addi	a0, a0, 266

00000000802026be <.LBB0_8>:
802026be: 17 26 00 00  	auipc	a2, 2
802026c2: 13 06 26 14  	addi	a2, a2, 322
802026c6: 93 05 b0 02  	li	a1, 43
802026ca: 97 00 00 00  	auipc	ra, 0
802026ce: e7 80 a0 2b  	jalr	698(ra)
802026d2: 00 00        	unimp	
802026d4: 23 3c a4 f4  	sd	a0, -168(s0)
;     if let Some(location) = info.location() {
802026d8: 26 85        	mv	a0, s1
802026da: 97 00 00 00  	auipc	ra, 0
802026de: e7 80 80 27  	jalr	632(ra)
802026e2: 3d e1        	bnez	a0, 0x80202748 <.LBB0_11+0x24>
802026e4: 13 05 84 f5  	addi	a0, s0, -168
;         println!("Panicked: {}", err);
802026e8: 23 30 a4 f6  	sd	a0, -160(s0)

00000000802026ec <.LBB0_9>:
802026ec: 17 f5 ff ff  	auipc	a0, 1048575
802026f0: 13 05 25 62  	addi	a0, a0, 1570
802026f4: 23 34 a4 f6  	sd	a0, -152(s0)
802026f8: 13 05 04 fe  	addi	a0, s0, -32
802026fc: 23 38 a4 f8  	sd	a0, -112(s0)
80202700: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202704 <.LBB0_10>:
80202704: 17 25 00 00  	auipc	a0, 2
80202708: 13 05 c5 04  	addi	a0, a0, 76
8020270c: 23 30 a4 fc  	sd	a0, -64(s0)
80202710: 09 45        	li	a0, 2
80202712: 23 34 a4 fc  	sd	a0, -56(s0)
80202716: 13 05 04 f6  	addi	a0, s0, -160
8020271a: 23 38 a4 fc  	sd	a0, -48(s0)
8020271e: 05 45        	li	a0, 1
80202720: 23 3c a4 fc  	sd	a0, -40(s0)

0000000080202724 <.LBB0_11>:
80202724: 97 25 00 00  	auipc	a1, 2
80202728: 93 85 45 f7  	addi	a1, a1, -140
8020272c: 13 05 04 f9  	addi	a0, s0, -112
80202730: 13 06 04 fb  	addi	a2, s0, -80
80202734: 97 00 00 00  	auipc	ra, 0
80202738: e7 80 a0 33  	jalr	826(ra)
8020273c: 45 e1        	bnez	a0, 0x802027dc <.LBB0_17>
;     shutdown()
8020273e: 97 f0 ff ff  	auipc	ra, 1048575
80202742: e7 80 60 4b  	jalr	1206(ra)
80202746: 00 00        	unimp	
80202748: 0c 61        	ld	a1, 0(a0)
8020274a: 10 65        	ld	a2, 8(a0)
8020274c: 23 38 b4 f8  	sd	a1, -112(s0)
80202750: 23 3c c4 f8  	sd	a2, -104(s0)
80202754: 08 49        	lw	a0, 16(a0)
80202756: 23 22 a4 fa  	sw	a0, -92(s0)
8020275a: 13 05 04 f9  	addi	a0, s0, -112
;         println!(
8020275e: 23 30 a4 f6  	sd	a0, -160(s0)

0000000080202762 <.LBB0_12>:
80202762: 17 f5 ff ff  	auipc	a0, 1048575
80202766: 13 05 a5 58  	addi	a0, a0, 1418
8020276a: 23 34 a4 f6  	sd	a0, -152(s0)
8020276e: 13 05 44 fa  	addi	a0, s0, -92
80202772: 23 38 a4 f6  	sd	a0, -144(s0)

0000000080202776 <.LBB0_13>:
80202776: 17 15 00 00  	auipc	a0, 1
8020277a: 13 05 c5 d3  	addi	a0, a0, -708
8020277e: 23 3c a4 f6  	sd	a0, -136(s0)
80202782: 13 05 84 f5  	addi	a0, s0, -168
80202786: 23 30 a4 f8  	sd	a0, -128(s0)

000000008020278a <.LBB0_14>:
8020278a: 17 f5 ff ff  	auipc	a0, 1048575
8020278e: 13 05 45 58  	addi	a0, a0, 1412
80202792: 23 34 a4 f8  	sd	a0, -120(s0)
80202796: 13 05 04 fe  	addi	a0, s0, -32
8020279a: 23 34 a4 fa  	sd	a0, -88(s0)
8020279e: 23 38 04 fa  	sd	zero, -80(s0)

00000000802027a2 <.LBB0_15>:
802027a2: 17 25 00 00  	auipc	a0, 2
802027a6: 13 05 e5 fd  	addi	a0, a0, -34
802027aa: 23 30 a4 fc  	sd	a0, -64(s0)
802027ae: 11 45        	li	a0, 4
802027b0: 23 34 a4 fc  	sd	a0, -56(s0)
802027b4: 13 05 04 f6  	addi	a0, s0, -160
802027b8: 23 38 a4 fc  	sd	a0, -48(s0)
802027bc: 0d 45        	li	a0, 3
802027be: 23 3c a4 fc  	sd	a0, -40(s0)

00000000802027c2 <.LBB0_16>:
802027c2: 97 25 00 00  	auipc	a1, 2
802027c6: 93 85 65 ed  	addi	a1, a1, -298
802027ca: 13 05 84 fa  	addi	a0, s0, -88
802027ce: 13 06 04 fb  	addi	a2, s0, -80
802027d2: 97 00 00 00  	auipc	ra, 0
802027d6: e7 80 c0 29  	jalr	668(ra)
802027da: 35 d1        	beqz	a0, 0x8020273e <.LBB0_11+0x1a>

00000000802027dc <.LBB0_17>:
802027dc: 17 25 00 00  	auipc	a0, 2
802027e0: 13 05 c5 ee  	addi	a0, a0, -276

00000000802027e4 <.LBB0_18>:
802027e4: 97 26 00 00  	auipc	a3, 2
802027e8: 93 86 46 f1  	addi	a3, a3, -236

00000000802027ec <.LBB0_19>:
802027ec: 17 27 00 00  	auipc	a4, 2
802027f0: 13 07 c7 f3  	addi	a4, a4, -196
802027f4: 93 05 b0 02  	li	a1, 43
802027f8: 13 06 04 fe  	addi	a2, s0, -32
802027fc: 97 00 00 00  	auipc	ra, 0
80202800: e7 80 40 1f  	jalr	500(ra)
80202804: 00 00        	unimp	

0000000080202806 <main>:
; pub fn main() {
80202806: 5d 71        	addi	sp, sp, -80
80202808: 86 e4        	sd	ra, 72(sp)
8020280a: a2 e0        	sd	s0, 64(sp)
8020280c: 26 fc        	sd	s1, 56(sp)
8020280e: 4a f8        	sd	s2, 48(sp)
80202810: 80 08        	addi	s0, sp, 80

0000000080202812 <.LBB0_8>:
80202812: 17 45 01 00  	auipc	a0, 20
80202816: 13 05 e5 7e  	addi	a0, a0, 2030

000000008020281a <.LBB0_9>:
8020281a: 97 35 01 00  	auipc	a1, 19
8020281e: 93 85 65 7e  	addi	a1, a1, 2022
80202822: 63 f9 a5 00  	bgeu	a1, a0, 0x80202834 <.LBB0_9+0x1a>
80202826: 13 86 15 00  	addi	a2, a1, 1
8020282a: 23 80 05 00  	sb	zero, 0(a1)
8020282e: b2 85        	mv	a1, a2
80202830: e3 6b a6 fe  	bltu	a2, a0, 0x80202826 <.LBB0_9+0xc>
;     unsafe { asm!("mv {}, tp", out(reg) x) }
80202834: 12 85        	mv	a0, tp
;     if cpuid() == 0 {
80202836: 01 c9        	beqz	a0, 0x80202846 <.LBB0_10+0xe>

0000000080202838 <.LBB0_10>:
;         while unsafe { started } == 0 {}
80202838: 17 45 01 00  	auipc	a0, 20
8020283c: 13 05 85 8e  	addi	a0, a0, -1816
80202840: 08 61        	ld	a0, 0(a0)
80202842: 41 e5        	bnez	a0, 0x802028ca <.LBB0_13+0x4a>
80202844: 01 a0        	j	0x80202844 <.LBB0_10+0xc>
;         print_logo();
80202846: 97 f0 ff ff  	auipc	ra, 1048575
8020284a: e7 80 e0 40  	jalr	1038(ra)

000000008020284e <.LBB0_11>:
8020284e: 17 25 00 00  	auipc	a0, 2
80202852: 13 05 a5 fe  	addi	a0, a0, -22
80202856: 23 30 a4 fc  	sd	a0, -64(s0)
8020285a: 05 49        	li	s2, 1
8020285c: 23 34 24 fd  	sd	s2, -56(s0)
80202860: 23 38 04 fa  	sd	zero, -80(s0)

0000000080202864 <.LBB0_12>:
80202864: 97 24 00 00  	auipc	s1, 2
80202868: 93 84 44 fb  	addi	s1, s1, -76
8020286c: 23 38 94 fc  	sd	s1, -48(s0)
80202870: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("xv6-rust kernel is booting...");
80202874: 13 05 04 fb  	addi	a0, s0, -80
80202878: 97 00 00 00  	auipc	ra, 0
8020287c: e7 80 80 da  	jalr	-600(ra)

0000000080202880 <.LBB0_13>:
80202880: 17 25 00 00  	auipc	a0, 2
80202884: 13 05 05 fd  	addi	a0, a0, -48
80202888: 23 30 a4 fc  	sd	a0, -64(s0)
8020288c: 23 34 24 fd  	sd	s2, -56(s0)
80202890: 23 38 04 fa  	sd	zero, -80(s0)
80202894: 23 38 94 fc  	sd	s1, -48(s0)
80202898: 23 3c 04 fc  	sd	zero, -40(s0)
;         println!("");
8020289c: 13 05 04 fb  	addi	a0, s0, -80
802028a0: 97 00 00 00  	auipc	ra, 0
802028a4: e7 80 00 d8  	jalr	-640(ra)
;         kinit();
802028a8: 97 f0 ff ff  	auipc	ra, 1048575
802028ac: e7 80 e0 47  	jalr	1150(ra)
;         kvminit();
802028b0: 97 f0 ff ff  	auipc	ra, 1048575
802028b4: e7 80 c0 c2  	jalr	-980(ra)
;         kvminithart();
802028b8: 97 f0 ff ff  	auipc	ra, 1048575
802028bc: e7 80 60 f4  	jalr	-186(ra)
;         kvmtest();
802028c0: 97 f0 ff ff  	auipc	ra, 1048575
802028c4: e7 80 e0 00  	jalr	14(ra)
802028c8: 19 a0        	j	0x802028ce <.LBB0_14>
802028ca: 0f 00 30 03  	fence	rw, rw

00000000802028ce <.LBB0_14>:
802028ce: 17 25 00 00  	auipc	a0, 2
802028d2: 13 05 25 fa  	addi	a0, a0, -94
802028d6: 23 30 a4 fc  	sd	a0, -64(s0)
802028da: 05 45        	li	a0, 1
802028dc: 23 34 a4 fc  	sd	a0, -56(s0)
802028e0: 23 38 04 fa  	sd	zero, -80(s0)

00000000802028e4 <.LBB0_15>:
802028e4: 17 25 00 00  	auipc	a0, 2
802028e8: 13 05 45 f3  	addi	a0, a0, -204
802028ec: 23 38 a4 fc  	sd	a0, -48(s0)
802028f0: 23 3c 04 fc  	sd	zero, -40(s0)

00000000802028f4 <.LBB0_16>:
;     panic!("Shutdown!");
802028f4: 97 25 00 00  	auipc	a1, 2
802028f8: 93 85 c5 f9  	addi	a1, a1, -100
802028fc: 13 05 04 fb  	addi	a0, s0, -80
80202900: 97 00 00 00  	auipc	ra, 0
80202904: e7 80 60 05  	jalr	86(ra)
80202908: 00 00        	unimp	

000000008020290a <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E>:
;     fn drop(&mut self) {
8020290a: 41 11        	addi	sp, sp, -16
;         if self.panicked {
8020290c: 06 e4        	sd	ra, 8(sp)
8020290e: 22 e0        	sd	s0, 0(sp)
80202910: 00 08        	addi	s0, sp, 16
80202912: 83 45 85 00  	lbu	a1, 8(a0)
80202916: 91 c5        	beqz	a1, 0x80202922 <_ZN60_$LT$spin..once..Finish$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0875e653801e0c55E+0x18>
;             self.state.store(PANICKED, Ordering::SeqCst);
80202918: 08 61        	ld	a0, 0(a0)
8020291a: 0f 00 10 03  	fence	rw, w
8020291e: 8d 45        	li	a1, 3
80202920: 0c e1        	sd	a1, 0(a0)
;     }
80202922: a2 60        	ld	ra, 8(sp)
80202924: 02 64        	ld	s0, 0(sp)
80202926: 41 01        	addi	sp, sp, 16
80202928: 82 80        	ret

000000008020292a <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E>:
8020292a: 08 61        	ld	a0, 0(a0)
8020292c: 01 a0        	j	0x8020292c <_ZN4core3ops8function6FnOnce9call_once17hfd74a64f5f95da46E+0x2>

000000008020292e <_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h42edef5e44029159E>:
8020292e: 82 80        	ret

0000000080202930 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h712c8c5f5e1c8feeE>:
80202930: 17 25 00 00  	auipc	a0, 2
80202934: 13 05 85 7b  	addi	a0, a0, 1976
80202938: 08 61        	ld	a0, 0(a0)
8020293a: 82 80        	ret

000000008020293c <_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2b0ef2d1cc0fb767E>:
8020293c: 90 65        	ld	a2, 8(a1)
8020293e: 88 61        	ld	a0, 0(a1)
80202940: 1c 6e        	ld	a5, 24(a2)

0000000080202942 <.LBB113_1>:
80202942: 97 25 00 00  	auipc	a1, 2
80202946: 93 85 65 f8  	addi	a1, a1, -122
8020294a: 39 46        	li	a2, 14
8020294c: 82 87        	jr	a5

000000008020294e <_ZN4core5panic10panic_info9PanicInfo7message17h77015b56abc9ac2eE>:
8020294e: 08 69        	ld	a0, 16(a0)
80202950: 82 80        	ret

0000000080202952 <_ZN4core5panic10panic_info9PanicInfo8location17h93c90936653aeb94E>:
80202952: 08 6d        	ld	a0, 24(a0)
80202954: 82 80        	ret

0000000080202956 <_ZN4core9panicking9panic_fmt17h8b879530bc49ec0eE>:
80202956: 79 71        	addi	sp, sp, -48
80202958: 06 f4        	sd	ra, 40(sp)

000000008020295a <.LBB170_1>:
8020295a: 17 26 00 00  	auipc	a2, 2
8020295e: 13 06 e6 f4  	addi	a2, a2, -178
80202962: 32 e0        	sd	a2, 0(sp)

0000000080202964 <.LBB170_2>:
80202964: 17 26 00 00  	auipc	a2, 2
80202968: 13 06 46 fa  	addi	a2, a2, -92
8020296c: 32 e4        	sd	a2, 8(sp)
8020296e: 2a e8        	sd	a0, 16(sp)
80202970: 2e ec        	sd	a1, 24(sp)
80202972: 05 45        	li	a0, 1
80202974: 23 00 a1 02  	sb	a0, 32(sp)
80202978: 0a 85        	mv	a0, sp
8020297a: 97 00 00 00  	auipc	ra, 0
8020297e: e7 80 60 d2  	jalr	-730(ra)
80202982: 00 00        	unimp	

0000000080202984 <_ZN4core9panicking5panic17h443f20430e37e0d8E>:
80202984: 5d 71        	addi	sp, sp, -80
80202986: 86 e4        	sd	ra, 72(sp)
80202988: 2a fc        	sd	a0, 56(sp)
8020298a: ae e0        	sd	a1, 64(sp)
8020298c: 28 18        	addi	a0, sp, 56
8020298e: 2a ec        	sd	a0, 24(sp)
80202990: 05 45        	li	a0, 1
80202992: 2a f0        	sd	a0, 32(sp)
80202994: 02 e4        	sd	zero, 8(sp)

0000000080202996 <.LBB172_1>:
80202996: 17 25 00 00  	auipc	a0, 2
8020299a: 13 05 25 f1  	addi	a0, a0, -238
8020299e: 2a f4        	sd	a0, 40(sp)
802029a0: 02 f8        	sd	zero, 48(sp)
802029a2: 28 00        	addi	a0, sp, 8
802029a4: b2 85        	mv	a1, a2
802029a6: 97 00 00 00  	auipc	ra, 0
802029aa: e7 80 00 fb  	jalr	-80(ra)
802029ae: 00 00        	unimp	

00000000802029b0 <_ZN4core9panicking18panic_bounds_check17h002d383078a7bd5dE>:
802029b0: 59 71        	addi	sp, sp, -112
802029b2: 86 f4        	sd	ra, 104(sp)
802029b4: 2a e4        	sd	a0, 8(sp)
802029b6: 2e e8        	sd	a1, 16(sp)
802029b8: 08 08        	addi	a0, sp, 16
802029ba: aa e4        	sd	a0, 72(sp)

00000000802029bc <.LBB176_1>:
802029bc: 17 15 00 00  	auipc	a0, 1
802029c0: 13 05 65 b0  	addi	a0, a0, -1274
802029c4: aa e8        	sd	a0, 80(sp)
802029c6: 2c 00        	addi	a1, sp, 8
802029c8: ae ec        	sd	a1, 88(sp)
802029ca: aa f0        	sd	a0, 96(sp)

00000000802029cc <.LBB176_2>:
802029cc: 17 25 00 00  	auipc	a0, 2
802029d0: 13 05 c5 f1  	addi	a0, a0, -228
802029d4: 2a f4        	sd	a0, 40(sp)
802029d6: 09 45        	li	a0, 2
802029d8: 2a f8        	sd	a0, 48(sp)
802029da: 02 ec        	sd	zero, 24(sp)
802029dc: ac 00        	addi	a1, sp, 72
802029de: 2e fc        	sd	a1, 56(sp)
802029e0: aa e0        	sd	a0, 64(sp)
802029e2: 28 08        	addi	a0, sp, 24
802029e4: b2 85        	mv	a1, a2
802029e6: 97 00 00 00  	auipc	ra, 0
802029ea: e7 80 00 f7  	jalr	-144(ra)
802029ee: 00 00        	unimp	

00000000802029f0 <_ZN4core6result13unwrap_failed17h987e534fc43c90d9E>:
802029f0: 19 71        	addi	sp, sp, -128
802029f2: 86 fc        	sd	ra, 120(sp)
802029f4: 2a e4        	sd	a0, 8(sp)
802029f6: 2e e8        	sd	a1, 16(sp)
802029f8: 32 ec        	sd	a2, 24(sp)
802029fa: 36 f0        	sd	a3, 32(sp)
802029fc: 28 00        	addi	a0, sp, 8
802029fe: aa ec        	sd	a0, 88(sp)

0000000080202a00 <.LBB183_1>:
80202a00: 17 15 00 00  	auipc	a0, 1
80202a04: 13 05 a5 ae  	addi	a0, a0, -1302
80202a08: aa f0        	sd	a0, 96(sp)
80202a0a: 28 08        	addi	a0, sp, 24
80202a0c: aa f4        	sd	a0, 104(sp)

0000000080202a0e <.LBB183_2>:
80202a0e: 17 15 00 00  	auipc	a0, 1
80202a12: 13 05 45 ad  	addi	a0, a0, -1324
80202a16: aa f8        	sd	a0, 112(sp)

0000000080202a18 <.LBB183_3>:
80202a18: 17 25 00 00  	auipc	a0, 2
80202a1c: 13 05 85 f1  	addi	a0, a0, -232
80202a20: 2a fc        	sd	a0, 56(sp)
80202a22: 09 45        	li	a0, 2
80202a24: aa e0        	sd	a0, 64(sp)
80202a26: 02 f4        	sd	zero, 40(sp)
80202a28: ac 08        	addi	a1, sp, 88
80202a2a: ae e4        	sd	a1, 72(sp)
80202a2c: aa e8        	sd	a0, 80(sp)
80202a2e: 28 10        	addi	a0, sp, 40
80202a30: ba 85        	mv	a1, a4
80202a32: 97 00 00 00  	auipc	ra, 0
80202a36: e7 80 40 f2  	jalr	-220(ra)
80202a3a: 00 00        	unimp	

0000000080202a3c <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h2067e92303743363E>:
80202a3c: 39 71        	addi	sp, sp, -64
80202a3e: 06 fc        	sd	ra, 56(sp)
80202a40: 10 75        	ld	a2, 40(a0)
80202a42: 18 71        	ld	a4, 32(a0)
80202a44: 1c 6d        	ld	a5, 24(a0)
80202a46: 32 f8        	sd	a2, 48(sp)
80202a48: 94 61        	ld	a3, 0(a1)
80202a4a: 3a f4        	sd	a4, 40(sp)
80202a4c: 3e f0        	sd	a5, 32(sp)
80202a4e: 10 69        	ld	a2, 16(a0)
80202a50: 18 65        	ld	a4, 8(a0)
80202a52: 08 61        	ld	a0, 0(a0)
80202a54: 8c 65        	ld	a1, 8(a1)
80202a56: 32 ec        	sd	a2, 24(sp)
80202a58: 3a e8        	sd	a4, 16(sp)
80202a5a: 2a e4        	sd	a0, 8(sp)
80202a5c: 30 00        	addi	a2, sp, 8
80202a5e: 36 85        	mv	a0, a3
80202a60: 97 00 00 00  	auipc	ra, 0
80202a64: e7 80 e0 00  	jalr	14(ra)
80202a68: e2 70        	ld	ra, 56(sp)
80202a6a: 21 61        	addi	sp, sp, 64
80202a6c: 82 80        	ret

0000000080202a6e <_ZN4core3fmt5write17hb508d59c95a275a3E>:
80202a6e: 19 71        	addi	sp, sp, -128
80202a70: 86 fc        	sd	ra, 120(sp)
80202a72: a2 f8        	sd	s0, 112(sp)
80202a74: a6 f4        	sd	s1, 104(sp)
80202a76: ca f0        	sd	s2, 96(sp)
80202a78: ce ec        	sd	s3, 88(sp)
80202a7a: d2 e8        	sd	s4, 80(sp)
80202a7c: d6 e4        	sd	s5, 72(sp)
80202a7e: da e0        	sd	s6, 64(sp)
80202a80: b2 89        	mv	s3, a2
80202a82: 05 46        	li	a2, 1
80202a84: 16 16        	slli	a2, a2, 37
80202a86: 32 f8        	sd	a2, 48(sp)
80202a88: 0d 46        	li	a2, 3
80202a8a: 23 0c c1 02  	sb	a2, 56(sp)
80202a8e: 03 b6 09 00  	ld	a2, 0(s3)
80202a92: 02 e8        	sd	zero, 16(sp)
80202a94: 02 f0        	sd	zero, 32(sp)
80202a96: 2a e0        	sd	a0, 0(sp)
80202a98: 2e e4        	sd	a1, 8(sp)
80202a9a: 69 c6        	beqz	a2, 0x80202b64 <.LBB220_31+0x9e>
80202a9c: 03 b5 89 00  	ld	a0, 8(s3)
80202aa0: 63 0e 05 10  	beqz	a0, 0x80202bbc <.LBB220_31+0xf6>
80202aa4: 83 b5 09 01  	ld	a1, 16(s3)
80202aa8: 93 06 f5 ff  	addi	a3, a0, -1
80202aac: 8e 06        	slli	a3, a3, 3
80202aae: 8d 82        	srli	a3, a3, 3
80202ab0: 13 89 16 00  	addi	s2, a3, 1
80202ab4: 93 84 85 00  	addi	s1, a1, 8
80202ab8: 93 05 80 03  	li	a1, 56
80202abc: 33 0a b5 02  	mul	s4, a0, a1
80202ac0: 13 04 86 01  	addi	s0, a2, 24
80202ac4: 85 4a        	li	s5, 1

0000000080202ac6 <.LBB220_31>:
80202ac6: 17 0b 00 00  	auipc	s6, 0
80202aca: 13 0b 4b e6  	addi	s6, s6, -412
80202ace: 90 60        	ld	a2, 0(s1)
80202ad0: 09 ca        	beqz	a2, 0x80202ae2 <.LBB220_31+0x1c>
80202ad2: a2 66        	ld	a3, 8(sp)
80202ad4: 02 65        	ld	a0, 0(sp)
80202ad6: 83 b5 84 ff  	ld	a1, -8(s1)
80202ada: 94 6e        	ld	a3, 24(a3)
80202adc: 82 96        	jalr	a3
80202ade: 63 11 05 10  	bnez	a0, 0x80202be0 <.LBB220_31+0x11a>
80202ae2: 48 44        	lw	a0, 12(s0)
80202ae4: 2a da        	sw	a0, 52(sp)
80202ae6: 03 05 04 01  	lb	a0, 16(s0)
80202aea: 23 0c a1 02  	sb	a0, 56(sp)
80202aee: 0c 44        	lw	a1, 8(s0)
80202af0: 03 b5 09 02  	ld	a0, 32(s3)
80202af4: 2e d8        	sw	a1, 48(sp)
80202af6: 83 36 84 ff  	ld	a3, -8(s0)
80202afa: 0c 60        	ld	a1, 0(s0)
80202afc: 89 ce        	beqz	a3, 0x80202b16 <.LBB220_31+0x50>
80202afe: 01 46        	li	a2, 0
80202b00: 63 9c 56 01  	bne	a3, s5, 0x80202b18 <.LBB220_31+0x52>
80202b04: 92 05        	slli	a1, a1, 4
80202b06: aa 95        	add	a1, a1, a0
80202b08: 90 65        	ld	a2, 8(a1)
80202b0a: 63 04 66 01  	beq	a2, s6, 0x80202b12 <.LBB220_31+0x4c>
80202b0e: 01 46        	li	a2, 0
80202b10: 21 a0        	j	0x80202b18 <.LBB220_31+0x52>
80202b12: 8c 61        	ld	a1, 0(a1)
80202b14: 8c 61        	ld	a1, 0(a1)
80202b16: 05 46        	li	a2, 1
80202b18: 32 e8        	sd	a2, 16(sp)
80202b1a: 2e ec        	sd	a1, 24(sp)
80202b1c: 83 36 84 fe  	ld	a3, -24(s0)
80202b20: 83 35 04 ff  	ld	a1, -16(s0)
80202b24: 89 ce        	beqz	a3, 0x80202b3e <.LBB220_31+0x78>
80202b26: 01 46        	li	a2, 0
80202b28: 63 9c 56 01  	bne	a3, s5, 0x80202b40 <.LBB220_31+0x7a>
80202b2c: 92 05        	slli	a1, a1, 4
80202b2e: aa 95        	add	a1, a1, a0
80202b30: 90 65        	ld	a2, 8(a1)
80202b32: 63 04 66 01  	beq	a2, s6, 0x80202b3a <.LBB220_31+0x74>
80202b36: 01 46        	li	a2, 0
80202b38: 21 a0        	j	0x80202b40 <.LBB220_31+0x7a>
80202b3a: 8c 61        	ld	a1, 0(a1)
80202b3c: 8c 61        	ld	a1, 0(a1)
80202b3e: 05 46        	li	a2, 1
80202b40: 32 f0        	sd	a2, 32(sp)
80202b42: 2e f4        	sd	a1, 40(sp)
80202b44: 0c 6c        	ld	a1, 24(s0)
80202b46: 92 05        	slli	a1, a1, 4
80202b48: 2e 95        	add	a0, a0, a1
80202b4a: 10 65        	ld	a2, 8(a0)
80202b4c: 08 61        	ld	a0, 0(a0)
80202b4e: 8a 85        	mv	a1, sp
80202b50: 02 96        	jalr	a2
80202b52: 59 e5        	bnez	a0, 0x80202be0 <.LBB220_31+0x11a>
80202b54: c1 04        	addi	s1, s1, 16
80202b56: 13 0a 8a fc  	addi	s4, s4, -56
80202b5a: 13 04 84 03  	addi	s0, s0, 56
80202b5e: e3 18 0a f6  	bnez	s4, 0x80202ace <.LBB220_31+0x8>
80202b62: 81 a8        	j	0x80202bb2 <.LBB220_31+0xec>
80202b64: 03 b5 89 02  	ld	a0, 40(s3)
80202b68: 31 c9        	beqz	a0, 0x80202bbc <.LBB220_31+0xf6>
80202b6a: 83 b5 09 02  	ld	a1, 32(s3)
80202b6e: 03 b6 09 01  	ld	a2, 16(s3)
80202b72: 93 06 f5 ff  	addi	a3, a0, -1
80202b76: 92 06        	slli	a3, a3, 4
80202b78: 91 82        	srli	a3, a3, 4
80202b7a: 13 89 16 00  	addi	s2, a3, 1
80202b7e: 13 04 86 00  	addi	s0, a2, 8
80202b82: 13 1a 45 00  	slli	s4, a0, 4
80202b86: 93 84 85 00  	addi	s1, a1, 8
80202b8a: 10 60        	ld	a2, 0(s0)
80202b8c: 01 ca        	beqz	a2, 0x80202b9c <.LBB220_31+0xd6>
80202b8e: a2 66        	ld	a3, 8(sp)
80202b90: 02 65        	ld	a0, 0(sp)
80202b92: 83 35 84 ff  	ld	a1, -8(s0)
80202b96: 94 6e        	ld	a3, 24(a3)
80202b98: 82 96        	jalr	a3
80202b9a: 39 e1        	bnez	a0, 0x80202be0 <.LBB220_31+0x11a>
80202b9c: 90 60        	ld	a2, 0(s1)
80202b9e: 03 b5 84 ff  	ld	a0, -8(s1)
80202ba2: 8a 85        	mv	a1, sp
80202ba4: 02 96        	jalr	a2
80202ba6: 0d ed        	bnez	a0, 0x80202be0 <.LBB220_31+0x11a>
80202ba8: 41 04        	addi	s0, s0, 16
80202baa: 41 1a        	addi	s4, s4, -16
80202bac: c1 04        	addi	s1, s1, 16
80202bae: e3 1e 0a fc  	bnez	s4, 0x80202b8a <.LBB220_31+0xc4>
80202bb2: 03 b5 89 01  	ld	a0, 24(s3)
80202bb6: 63 68 a9 00  	bltu	s2, a0, 0x80202bc6 <.LBB220_31+0x100>
80202bba: 2d a0        	j	0x80202be4 <.LBB220_31+0x11e>
80202bbc: 01 49        	li	s2, 0
80202bbe: 03 b5 89 01  	ld	a0, 24(s3)
80202bc2: 63 71 a9 02  	bgeu	s2, a0, 0x80202be4 <.LBB220_31+0x11e>
80202bc6: 03 b5 09 01  	ld	a0, 16(s3)
80202bca: 93 15 49 00  	slli	a1, s2, 4
80202bce: 33 06 b5 00  	add	a2, a0, a1
80202bd2: a2 66        	ld	a3, 8(sp)
80202bd4: 02 65        	ld	a0, 0(sp)
80202bd6: 0c 62        	ld	a1, 0(a2)
80202bd8: 10 66        	ld	a2, 8(a2)
80202bda: 94 6e        	ld	a3, 24(a3)
80202bdc: 82 96        	jalr	a3
80202bde: 19 c1        	beqz	a0, 0x80202be4 <.LBB220_31+0x11e>
80202be0: 05 45        	li	a0, 1
80202be2: 11 a0        	j	0x80202be6 <.LBB220_31+0x120>
80202be4: 01 45        	li	a0, 0
80202be6: e6 70        	ld	ra, 120(sp)
80202be8: 46 74        	ld	s0, 112(sp)
80202bea: a6 74        	ld	s1, 104(sp)
80202bec: 06 79        	ld	s2, 96(sp)
80202bee: e6 69        	ld	s3, 88(sp)
80202bf0: 46 6a        	ld	s4, 80(sp)
80202bf2: a6 6a        	ld	s5, 72(sp)
80202bf4: 06 6b        	ld	s6, 64(sp)
80202bf6: 09 61        	addi	sp, sp, 128
80202bf8: 82 80        	ret

0000000080202bfa <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E>:
80202bfa: 59 71        	addi	sp, sp, -112
80202bfc: 86 f4        	sd	ra, 104(sp)
80202bfe: a2 f0        	sd	s0, 96(sp)
80202c00: a6 ec        	sd	s1, 88(sp)
80202c02: ca e8        	sd	s2, 80(sp)
80202c04: ce e4        	sd	s3, 72(sp)
80202c06: d2 e0        	sd	s4, 64(sp)
80202c08: 56 fc        	sd	s5, 56(sp)
80202c0a: 5a f8        	sd	s6, 48(sp)
80202c0c: 5e f4        	sd	s7, 40(sp)
80202c0e: 62 f0        	sd	s8, 32(sp)
80202c10: 66 ec        	sd	s9, 24(sp)
80202c12: 6a e8        	sd	s10, 16(sp)
80202c14: 6e e4        	sd	s11, 8(sp)
80202c16: be 89        	mv	s3, a5
80202c18: 3a 89        	mv	s2, a4
80202c1a: 36 8b        	mv	s6, a3
80202c1c: 32 8a        	mv	s4, a2
80202c1e: 2a 8c        	mv	s8, a0
80202c20: b9 c1        	beqz	a1, 0x80202c66 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x6c>
80202c22: 03 64 0c 03  	lwu	s0, 48(s8)
80202c26: 13 75 14 00  	andi	a0, s0, 1
80202c2a: b7 0a 11 00  	lui	s5, 272
80202c2e: 19 c1        	beqz	a0, 0x80202c34 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x3a>
80202c30: 93 0a b0 02  	li	s5, 43
80202c34: b3 0c 35 01  	add	s9, a0, s3
80202c38: 13 75 44 00  	andi	a0, s0, 4
80202c3c: 15 cd        	beqz	a0, 0x80202c78 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x7e>
80202c3e: 13 05 00 02  	li	a0, 32
80202c42: 63 70 ab 04  	bgeu	s6, a0, 0x80202c82 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x88>
80202c46: 01 45        	li	a0, 0
80202c48: 63 03 0b 04  	beqz	s6, 0x80202c8e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80202c4c: da 85        	mv	a1, s6
80202c4e: 52 86        	mv	a2, s4
80202c50: 83 06 06 00  	lb	a3, 0(a2)
80202c54: 05 06        	addi	a2, a2, 1
80202c56: 93 a6 06 fc  	slti	a3, a3, -64
80202c5a: 93 c6 16 00  	xori	a3, a3, 1
80202c5e: fd 15        	addi	a1, a1, -1
80202c60: 36 95        	add	a0, a0, a3
80202c62: fd f5        	bnez	a1, 0x80202c50 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x56>
80202c64: 2d a0        	j	0x80202c8e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x94>
80202c66: 03 24 0c 03  	lw	s0, 48(s8)
80202c6a: 93 8c 19 00  	addi	s9, s3, 1
80202c6e: 93 0a d0 02  	li	s5, 45
80202c72: 13 75 44 00  	andi	a0, s0, 4
80202c76: 61 f5        	bnez	a0, 0x80202c3e <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x44>
80202c78: 01 4a        	li	s4, 0
80202c7a: 03 35 0c 01  	ld	a0, 16(s8)
80202c7e: 01 ed        	bnez	a0, 0x80202c96 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x9c>
80202c80: 99 a0        	j	0x80202cc6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80202c82: 52 85        	mv	a0, s4
80202c84: da 85        	mv	a1, s6
80202c86: 97 00 00 00  	auipc	ra, 0
80202c8a: e7 80 a0 49  	jalr	1178(ra)
80202c8e: aa 9c        	add	s9, s9, a0
80202c90: 03 35 0c 01  	ld	a0, 16(s8)
80202c94: 0d c9        	beqz	a0, 0x80202cc6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80202c96: 03 3d 8c 01  	ld	s10, 24(s8)
80202c9a: 63 f6 ac 03  	bgeu	s9, s10, 0x80202cc6 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xcc>
80202c9e: 13 75 84 00  	andi	a0, s0, 8
80202ca2: 41 e5        	bnez	a0, 0x80202d2a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x130>
80202ca4: 83 45 8c 03  	lbu	a1, 56(s8)
80202ca8: 0d 46        	li	a2, 3
80202caa: 05 45        	li	a0, 1
80202cac: 63 83 c5 00  	beq	a1, a2, 0x80202cb2 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xb8>
80202cb0: 2e 85        	mv	a0, a1
80202cb2: 93 75 35 00  	andi	a1, a0, 3
80202cb6: 33 05 9d 41  	sub	a0, s10, s9
80202cba: e1 c1        	beqz	a1, 0x80202d7a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x180>
80202cbc: 05 46        	li	a2, 1
80202cbe: 63 91 c5 0c  	bne	a1, a2, 0x80202d80 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x186>
80202cc2: 01 4d        	li	s10, 0
80202cc4: d9 a0        	j	0x80202d8a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80202cc6: 03 34 0c 00  	ld	s0, 0(s8)
80202cca: 83 34 8c 00  	ld	s1, 8(s8)
80202cce: 22 85        	mv	a0, s0
80202cd0: a6 85        	mv	a1, s1
80202cd2: 56 86        	mv	a2, s5
80202cd4: d2 86        	mv	a3, s4
80202cd6: 5a 87        	mv	a4, s6
80202cd8: 97 00 00 00  	auipc	ra, 0
80202cdc: e7 80 00 14  	jalr	320(ra)
80202ce0: 85 4b        	li	s7, 1
80202ce2: 0d c1        	beqz	a0, 0x80202d04 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x10a>
80202ce4: 5e 85        	mv	a0, s7
80202ce6: a6 70        	ld	ra, 104(sp)
80202ce8: 06 74        	ld	s0, 96(sp)
80202cea: e6 64        	ld	s1, 88(sp)
80202cec: 46 69        	ld	s2, 80(sp)
80202cee: a6 69        	ld	s3, 72(sp)
80202cf0: 06 6a        	ld	s4, 64(sp)
80202cf2: e2 7a        	ld	s5, 56(sp)
80202cf4: 42 7b        	ld	s6, 48(sp)
80202cf6: a2 7b        	ld	s7, 40(sp)
80202cf8: 02 7c        	ld	s8, 32(sp)
80202cfa: e2 6c        	ld	s9, 24(sp)
80202cfc: 42 6d        	ld	s10, 16(sp)
80202cfe: a2 6d        	ld	s11, 8(sp)
80202d00: 65 61        	addi	sp, sp, 112
80202d02: 82 80        	ret
80202d04: 9c 6c        	ld	a5, 24(s1)
80202d06: 22 85        	mv	a0, s0
80202d08: ca 85        	mv	a1, s2
80202d0a: 4e 86        	mv	a2, s3
80202d0c: a6 70        	ld	ra, 104(sp)
80202d0e: 06 74        	ld	s0, 96(sp)
80202d10: e6 64        	ld	s1, 88(sp)
80202d12: 46 69        	ld	s2, 80(sp)
80202d14: a6 69        	ld	s3, 72(sp)
80202d16: 06 6a        	ld	s4, 64(sp)
80202d18: e2 7a        	ld	s5, 56(sp)
80202d1a: 42 7b        	ld	s6, 48(sp)
80202d1c: a2 7b        	ld	s7, 40(sp)
80202d1e: 02 7c        	ld	s8, 32(sp)
80202d20: e2 6c        	ld	s9, 24(sp)
80202d22: 42 6d        	ld	s10, 16(sp)
80202d24: a2 6d        	ld	s11, 8(sp)
80202d26: 65 61        	addi	sp, sp, 112
80202d28: 82 87        	jr	a5
80202d2a: 03 24 4c 03  	lw	s0, 52(s8)
80202d2e: 13 05 00 03  	li	a0, 48
80202d32: 83 45 8c 03  	lbu	a1, 56(s8)
80202d36: 2e e0        	sd	a1, 0(sp)
80202d38: 83 3d 0c 00  	ld	s11, 0(s8)
80202d3c: 83 34 8c 00  	ld	s1, 8(s8)
80202d40: 23 2a ac 02  	sw	a0, 52(s8)
80202d44: 85 4b        	li	s7, 1
80202d46: 23 0c 7c 03  	sb	s7, 56(s8)
80202d4a: 6e 85        	mv	a0, s11
80202d4c: a6 85        	mv	a1, s1
80202d4e: 56 86        	mv	a2, s5
80202d50: d2 86        	mv	a3, s4
80202d52: 5a 87        	mv	a4, s6
80202d54: 97 00 00 00  	auipc	ra, 0
80202d58: e7 80 40 0c  	jalr	196(ra)
80202d5c: 41 f5        	bnez	a0, 0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202d5e: 22 8a        	mv	s4, s0
80202d60: 33 05 9d 41  	sub	a0, s10, s9
80202d64: 13 04 15 00  	addi	s0, a0, 1
80202d68: 7d 14        	addi	s0, s0, -1
80202d6a: 49 c4        	beqz	s0, 0x80202df4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1fa>
80202d6c: 90 70        	ld	a2, 32(s1)
80202d6e: 93 05 00 03  	li	a1, 48
80202d72: 6e 85        	mv	a0, s11
80202d74: 02 96        	jalr	a2
80202d76: 6d d9        	beqz	a0, 0x80202d68 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x16e>
80202d78: b5 b7        	j	0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202d7a: 2a 8d        	mv	s10, a0
80202d7c: 2e 85        	mv	a0, a1
80202d7e: 31 a0        	j	0x80202d8a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x190>
80202d80: 93 05 15 00  	addi	a1, a0, 1
80202d84: 05 81        	srli	a0, a0, 1
80202d86: 13 dd 15 00  	srli	s10, a1, 1
80202d8a: 83 3c 0c 00  	ld	s9, 0(s8)
80202d8e: 83 3d 8c 00  	ld	s11, 8(s8)
80202d92: 03 24 4c 03  	lw	s0, 52(s8)
80202d96: 93 04 15 00  	addi	s1, a0, 1
80202d9a: fd 14        	addi	s1, s1, -1
80202d9c: 89 c8        	beqz	s1, 0x80202dae <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1b4>
80202d9e: 03 b6 0d 02  	ld	a2, 32(s11)
80202da2: 66 85        	mv	a0, s9
80202da4: a2 85        	mv	a1, s0
80202da6: 02 96        	jalr	a2
80202da8: 6d d9        	beqz	a0, 0x80202d9a <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1a0>
80202daa: 85 4b        	li	s7, 1
80202dac: 25 bf        	j	0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202dae: 37 05 11 00  	lui	a0, 272
80202db2: 85 4b        	li	s7, 1
80202db4: e3 08 a4 f2  	beq	s0, a0, 0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202db8: 66 85        	mv	a0, s9
80202dba: ee 85        	mv	a1, s11
80202dbc: 56 86        	mv	a2, s5
80202dbe: d2 86        	mv	a3, s4
80202dc0: 5a 87        	mv	a4, s6
80202dc2: 97 00 00 00  	auipc	ra, 0
80202dc6: e7 80 60 05  	jalr	86(ra)
80202dca: 09 fd        	bnez	a0, 0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202dcc: 83 b6 8d 01  	ld	a3, 24(s11)
80202dd0: 66 85        	mv	a0, s9
80202dd2: ca 85        	mv	a1, s2
80202dd4: 4e 86        	mv	a2, s3
80202dd6: 82 96        	jalr	a3
80202dd8: 11 f5        	bnez	a0, 0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202dda: 81 44        	li	s1, 0
80202ddc: 63 0a 9d 02  	beq	s10, s1, 0x80202e10 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x216>
80202de0: 03 b6 0d 02  	ld	a2, 32(s11)
80202de4: 85 04        	addi	s1, s1, 1
80202de6: 66 85        	mv	a0, s9
80202de8: a2 85        	mv	a1, s0
80202dea: 02 96        	jalr	a2
80202dec: 65 d9        	beqz	a0, 0x80202ddc <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x1e2>
80202dee: 13 85 f4 ff  	addi	a0, s1, -1
80202df2: 05 a0        	j	0x80202e12 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0x218>
80202df4: 94 6c        	ld	a3, 24(s1)
80202df6: 6e 85        	mv	a0, s11
80202df8: ca 85        	mv	a1, s2
80202dfa: 4e 86        	mv	a2, s3
80202dfc: 82 96        	jalr	a3
80202dfe: e3 13 05 ee  	bnez	a0, 0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202e02: 81 4b        	li	s7, 0
80202e04: 23 2a 4c 03  	sw	s4, 52(s8)
80202e08: 02 65        	ld	a0, 0(sp)
80202e0a: 23 0c ac 02  	sb	a0, 56(s8)
80202e0e: d9 bd        	j	0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>
80202e10: 6a 85        	mv	a0, s10
80202e12: b3 3b a5 01  	sltu	s7, a0, s10
80202e16: f9 b5        	j	0x80202ce4 <_ZN4core3fmt9Formatter12pad_integral17h982745c86ffda6b7E+0xea>

0000000080202e18 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E>:
80202e18: 79 71        	addi	sp, sp, -48
80202e1a: 06 f4        	sd	ra, 40(sp)
80202e1c: 22 f0        	sd	s0, 32(sp)
80202e1e: 26 ec        	sd	s1, 24(sp)
80202e20: 4a e8        	sd	s2, 16(sp)
80202e22: 4e e4        	sd	s3, 8(sp)
80202e24: 9b 07 06 00  	sext.w	a5, a2
80202e28: 37 08 11 00  	lui	a6, 272
80202e2c: 3a 89        	mv	s2, a4
80202e2e: b6 84        	mv	s1, a3
80202e30: 2e 84        	mv	s0, a1
80202e32: aa 89        	mv	s3, a0
80202e34: 63 89 07 01  	beq	a5, a6, 0x80202e46 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x2e>
80202e38: 14 70        	ld	a3, 32(s0)
80202e3a: 4e 85        	mv	a0, s3
80202e3c: b2 85        	mv	a1, a2
80202e3e: 82 96        	jalr	a3
80202e40: aa 85        	mv	a1, a0
80202e42: 05 45        	li	a0, 1
80202e44: 91 ed        	bnez	a1, 0x80202e60 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x48>
80202e46: 81 cc        	beqz	s1, 0x80202e5e <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h4ded80a466180b84E+0x46>
80202e48: 1c 6c        	ld	a5, 24(s0)
80202e4a: 4e 85        	mv	a0, s3
80202e4c: a6 85        	mv	a1, s1
80202e4e: 4a 86        	mv	a2, s2
80202e50: a2 70        	ld	ra, 40(sp)
80202e52: 02 74        	ld	s0, 32(sp)
80202e54: e2 64        	ld	s1, 24(sp)
80202e56: 42 69        	ld	s2, 16(sp)
80202e58: a2 69        	ld	s3, 8(sp)
80202e5a: 45 61        	addi	sp, sp, 48
80202e5c: 82 87        	jr	a5
80202e5e: 01 45        	li	a0, 0
80202e60: a2 70        	ld	ra, 40(sp)
80202e62: 02 74        	ld	s0, 32(sp)
80202e64: e2 64        	ld	s1, 24(sp)
80202e66: 42 69        	ld	s2, 16(sp)
80202e68: a2 69        	ld	s3, 8(sp)
80202e6a: 45 61        	addi	sp, sp, 48
80202e6c: 82 80        	ret

0000000080202e6e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E>:
80202e6e: 5d 71        	addi	sp, sp, -80
80202e70: 86 e4        	sd	ra, 72(sp)
80202e72: a2 e0        	sd	s0, 64(sp)
80202e74: 26 fc        	sd	s1, 56(sp)
80202e76: 4a f8        	sd	s2, 48(sp)
80202e78: 4e f4        	sd	s3, 40(sp)
80202e7a: 52 f0        	sd	s4, 32(sp)
80202e7c: 56 ec        	sd	s5, 24(sp)
80202e7e: 5a e8        	sd	s6, 16(sp)
80202e80: 5e e4        	sd	s7, 8(sp)
80202e82: 2a 8a        	mv	s4, a0
80202e84: 83 32 05 01  	ld	t0, 16(a0)
80202e88: 08 71        	ld	a0, 32(a0)
80202e8a: 93 86 f2 ff  	addi	a3, t0, -1
80202e8e: b3 36 d0 00  	snez	a3, a3
80202e92: 13 07 f5 ff  	addi	a4, a0, -1
80202e96: 33 37 e0 00  	snez	a4, a4
80202e9a: f9 8e        	and	a3, a3, a4
80202e9c: b2 89        	mv	s3, a2
80202e9e: 2e 89        	mv	s2, a1
80202ea0: 63 9d 06 16  	bnez	a3, 0x8020301a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202ea4: 85 45        	li	a1, 1
80202ea6: 63 18 b5 10  	bne	a0, a1, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202eaa: 03 35 8a 02  	ld	a0, 40(s4)
80202eae: 81 45        	li	a1, 0
80202eb0: b3 06 39 01  	add	a3, s2, s3
80202eb4: 13 07 15 00  	addi	a4, a0, 1
80202eb8: 37 03 11 00  	lui	t1, 272
80202ebc: 93 08 f0 0d  	li	a7, 223
80202ec0: 13 08 00 0f  	li	a6, 240
80202ec4: 4a 86        	mv	a2, s2
80202ec6: 01 a8        	j	0x80202ed6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x68>
80202ec8: 13 05 16 00  	addi	a0, a2, 1
80202ecc: 91 8d        	sub	a1, a1, a2
80202ece: aa 95        	add	a1, a1, a0
80202ed0: 2a 86        	mv	a2, a0
80202ed2: 63 02 64 0e  	beq	s0, t1, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202ed6: 7d 17        	addi	a4, a4, -1
80202ed8: 25 c7        	beqz	a4, 0x80202f40 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xd2>
80202eda: 63 0e d6 0c  	beq	a2, a3, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202ede: 03 05 06 00  	lb	a0, 0(a2)
80202ee2: 13 74 f5 0f  	andi	s0, a0, 255
80202ee6: e3 51 05 fe  	bgez	a0, 0x80202ec8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5a>
80202eea: 03 45 16 00  	lbu	a0, 1(a2)
80202eee: 93 77 f4 01  	andi	a5, s0, 31
80202ef2: 93 74 f5 03  	andi	s1, a0, 63
80202ef6: 63 f9 88 02  	bgeu	a7, s0, 0x80202f28 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xba>
80202efa: 03 45 26 00  	lbu	a0, 2(a2)
80202efe: 9a 04        	slli	s1, s1, 6
80202f00: 13 75 f5 03  	andi	a0, a0, 63
80202f04: c9 8c        	or	s1, s1, a0
80202f06: 63 67 04 03  	bltu	s0, a6, 0x80202f34 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0xc6>
80202f0a: 03 45 36 00  	lbu	a0, 3(a2)
80202f0e: f6 17        	slli	a5, a5, 61
80202f10: ad 93        	srli	a5, a5, 43
80202f12: 9a 04        	slli	s1, s1, 6
80202f14: 13 75 f5 03  	andi	a0, a0, 63
80202f18: 45 8d        	or	a0, a0, s1
80202f1a: 33 64 f5 00  	or	s0, a0, a5
80202f1e: 63 0c 64 08  	beq	s0, t1, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202f22: 13 05 46 00  	addi	a0, a2, 4
80202f26: 5d b7        	j	0x80202ecc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202f28: 13 05 26 00  	addi	a0, a2, 2
80202f2c: 9a 07        	slli	a5, a5, 6
80202f2e: 33 e4 97 00  	or	s0, a5, s1
80202f32: 69 bf        	j	0x80202ecc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202f34: 13 05 36 00  	addi	a0, a2, 3
80202f38: b2 07        	slli	a5, a5, 12
80202f3a: 33 e4 f4 00  	or	s0, s1, a5
80202f3e: 79 b7        	j	0x80202ecc <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x5e>
80202f40: 63 0b d6 06  	beq	a2, a3, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202f44: 03 05 06 00  	lb	a0, 0(a2)
80202f48: 63 53 05 04  	bgez	a0, 0x80202f8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80202f4c: 13 75 f5 0f  	andi	a0, a0, 255
80202f50: 93 06 00 0e  	li	a3, 224
80202f54: 63 6d d5 02  	bltu	a0, a3, 0x80202f8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80202f58: 93 06 00 0f  	li	a3, 240
80202f5c: 63 69 d5 02  	bltu	a0, a3, 0x80202f8e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x120>
80202f60: 83 46 16 00  	lbu	a3, 1(a2)
80202f64: 03 47 26 00  	lbu	a4, 2(a2)
80202f68: 93 f6 f6 03  	andi	a3, a3, 63
80202f6c: 13 77 f7 03  	andi	a4, a4, 63
80202f70: 03 46 36 00  	lbu	a2, 3(a2)
80202f74: 76 15        	slli	a0, a0, 61
80202f76: 2d 91        	srli	a0, a0, 43
80202f78: b2 06        	slli	a3, a3, 12
80202f7a: 1a 07        	slli	a4, a4, 6
80202f7c: d9 8e        	or	a3, a3, a4
80202f7e: 13 76 f6 03  	andi	a2, a2, 63
80202f82: 55 8e        	or	a2, a2, a3
80202f84: 51 8d        	or	a0, a0, a2
80202f86: 37 06 11 00  	lui	a2, 272
80202f8a: 63 06 c5 02  	beq	a0, a2, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202f8e: 85 c1        	beqz	a1, 0x80202fae <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80202f90: 63 fd 35 01  	bgeu	a1, s3, 0x80202faa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x13c>
80202f94: 33 05 b9 00  	add	a0, s2, a1
80202f98: 03 05 05 00  	lb	a0, 0(a0)
80202f9c: 13 06 00 fc  	li	a2, -64
80202fa0: 63 57 c5 00  	bge	a0, a2, 0x80202fae <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x140>
80202fa4: 01 45        	li	a0, 0
80202fa6: 11 e5        	bnez	a0, 0x80202fb2 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x144>
80202fa8: 39 a0        	j	0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202faa: e3 9d 35 ff  	bne	a1, s3, 0x80202fa4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x136>
80202fae: 4a 85        	mv	a0, s2
80202fb0: 19 c1        	beqz	a0, 0x80202fb6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x148>
80202fb2: ae 89        	mv	s3, a1
80202fb4: 2a 89        	mv	s2, a0
80202fb6: 63 82 02 06  	beqz	t0, 0x8020301a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202fba: 03 34 8a 01  	ld	s0, 24(s4)
80202fbe: 13 05 00 02  	li	a0, 32
80202fc2: 63 f4 a9 04  	bgeu	s3, a0, 0x8020300a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x19c>
80202fc6: 01 45        	li	a0, 0
80202fc8: 63 8e 09 00  	beqz	s3, 0x80202fe4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x176>
80202fcc: ce 85        	mv	a1, s3
80202fce: 4a 86        	mv	a2, s2
80202fd0: 83 06 06 00  	lb	a3, 0(a2)
80202fd4: 05 06        	addi	a2, a2, 1
80202fd6: 93 a6 06 fc  	slti	a3, a3, -64
80202fda: 93 c6 16 00  	xori	a3, a3, 1
80202fde: fd 15        	addi	a1, a1, -1
80202fe0: 36 95        	add	a0, a0, a3
80202fe2: fd f5        	bnez	a1, 0x80202fd0 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x162>
80202fe4: 63 7b 85 02  	bgeu	a0, s0, 0x8020301a <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1ac>
80202fe8: 83 45 8a 03  	lbu	a1, 56(s4)
80202fec: 8d 46        	li	a3, 3
80202fee: 01 46        	li	a2, 0
80202ff0: 63 83 d5 00  	beq	a1, a3, 0x80202ff6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x188>
80202ff4: 2e 86        	mv	a2, a1
80202ff6: 93 75 36 00  	andi	a1, a2, 3
80202ffa: 33 05 a4 40  	sub	a0, s0, a0
80202ffe: a1 c1        	beqz	a1, 0x8020303e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d0>
80203000: 05 46        	li	a2, 1
80203002: 63 91 c5 04  	bne	a1, a2, 0x80203044 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1d6>
80203006: 81 4a        	li	s5, 0
80203008: 99 a0        	j	0x8020304e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
8020300a: 4a 85        	mv	a0, s2
8020300c: ce 85        	mv	a1, s3
8020300e: 97 00 00 00  	auipc	ra, 0
80203012: e7 80 20 11  	jalr	274(ra)
80203016: e3 69 85 fc  	bltu	a0, s0, 0x80202fe8 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x17a>
8020301a: 83 35 8a 00  	ld	a1, 8(s4)
8020301e: 03 35 0a 00  	ld	a0, 0(s4)
80203022: 9c 6d        	ld	a5, 24(a1)
80203024: ca 85        	mv	a1, s2
80203026: 4e 86        	mv	a2, s3
80203028: a6 60        	ld	ra, 72(sp)
8020302a: 06 64        	ld	s0, 64(sp)
8020302c: e2 74        	ld	s1, 56(sp)
8020302e: 42 79        	ld	s2, 48(sp)
80203030: a2 79        	ld	s3, 40(sp)
80203032: 02 7a        	ld	s4, 32(sp)
80203034: e2 6a        	ld	s5, 24(sp)
80203036: 42 6b        	ld	s6, 16(sp)
80203038: a2 6b        	ld	s7, 8(sp)
8020303a: 61 61        	addi	sp, sp, 80
8020303c: 82 87        	jr	a5
8020303e: aa 8a        	mv	s5, a0
80203040: 2e 85        	mv	a0, a1
80203042: 31 a0        	j	0x8020304e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1e0>
80203044: 93 05 15 00  	addi	a1, a0, 1
80203048: 05 81        	srli	a0, a0, 1
8020304a: 93 da 15 00  	srli	s5, a1, 1
8020304e: 03 3b 0a 00  	ld	s6, 0(s4)
80203052: 83 3b 8a 00  	ld	s7, 8(s4)
80203056: 83 24 4a 03  	lw	s1, 52(s4)
8020305a: 13 04 15 00  	addi	s0, a0, 1
8020305e: 7d 14        	addi	s0, s0, -1
80203060: 09 c8        	beqz	s0, 0x80203072 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x204>
80203062: 03 b6 0b 02  	ld	a2, 32(s7)
80203066: 5a 85        	mv	a0, s6
80203068: a6 85        	mv	a1, s1
8020306a: 02 96        	jalr	a2
8020306c: 6d d9        	beqz	a0, 0x8020305e <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x1f0>
8020306e: 05 4a        	li	s4, 1
80203070: 2d a8        	j	0x802030aa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
80203072: 37 05 11 00  	lui	a0, 272
80203076: 05 4a        	li	s4, 1
80203078: 63 89 a4 02  	beq	s1, a0, 0x802030aa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
8020307c: 83 b6 8b 01  	ld	a3, 24(s7)
80203080: 5a 85        	mv	a0, s6
80203082: ca 85        	mv	a1, s2
80203084: 4e 86        	mv	a2, s3
80203086: 82 96        	jalr	a3
80203088: 0d e1        	bnez	a0, 0x802030aa <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x23c>
8020308a: 01 44        	li	s0, 0
8020308c: 63 8c 8a 00  	beq	s5, s0, 0x802030a4 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x236>
80203090: 03 b6 0b 02  	ld	a2, 32(s7)
80203094: 05 04        	addi	s0, s0, 1
80203096: 5a 85        	mv	a0, s6
80203098: a6 85        	mv	a1, s1
8020309a: 02 96        	jalr	a2
8020309c: 65 d9        	beqz	a0, 0x8020308c <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x21e>
8020309e: 13 05 f4 ff  	addi	a0, s0, -1
802030a2: 11 a0        	j	0x802030a6 <_ZN4core3fmt9Formatter3pad17h5c9020dff5fa6520E+0x238>
802030a4: 56 85        	mv	a0, s5
802030a6: 33 3a 55 01  	sltu	s4, a0, s5
802030aa: 52 85        	mv	a0, s4
802030ac: a6 60        	ld	ra, 72(sp)
802030ae: 06 64        	ld	s0, 64(sp)
802030b0: e2 74        	ld	s1, 56(sp)
802030b2: 42 79        	ld	s2, 48(sp)
802030b4: a2 79        	ld	s3, 40(sp)
802030b6: 02 7a        	ld	s4, 32(sp)
802030b8: e2 6a        	ld	s5, 24(sp)
802030ba: 42 6b        	ld	s6, 16(sp)
802030bc: a2 6b        	ld	s7, 8(sp)
802030be: 61 61        	addi	sp, sp, 80
802030c0: 82 80        	ret

00000000802030c2 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hd6665d5076258f13E>:
802030c2: ae 86        	mv	a3, a1
802030c4: aa 85        	mv	a1, a0
802030c6: 32 85        	mv	a0, a2
802030c8: 36 86        	mv	a2, a3
802030ca: 17 03 00 00  	auipc	t1, 0
802030ce: 67 00 43 da  	jr	-604(t1)

00000000802030d2 <_ZN4core5slice5index26slice_start_index_len_fail17h904d3ab13cebac03E>:
802030d2: 41 11        	addi	sp, sp, -16
802030d4: 06 e4        	sd	ra, 8(sp)
802030d6: 97 00 00 00  	auipc	ra, 0
802030da: e7 80 a0 00  	jalr	10(ra)
802030de: 00 00        	unimp	

00000000802030e0 <_ZN4core5slice5index29slice_start_index_len_fail_rt17h88a91e86a87809a7E>:
802030e0: 59 71        	addi	sp, sp, -112
802030e2: 86 f4        	sd	ra, 104(sp)
802030e4: 2a e4        	sd	a0, 8(sp)
802030e6: 2e e8        	sd	a1, 16(sp)
802030e8: 28 00        	addi	a0, sp, 8
802030ea: aa e4        	sd	a0, 72(sp)

00000000802030ec <.LBB278_1>:
802030ec: 17 05 00 00  	auipc	a0, 0
802030f0: 13 05 65 3d  	addi	a0, a0, 982
802030f4: aa e8        	sd	a0, 80(sp)
802030f6: 0c 08        	addi	a1, sp, 16
802030f8: ae ec        	sd	a1, 88(sp)
802030fa: aa f0        	sd	a0, 96(sp)

00000000802030fc <.LBB278_2>:
802030fc: 17 25 00 00  	auipc	a0, 2
80203100: 13 05 c5 98  	addi	a0, a0, -1652
80203104: 2a f4        	sd	a0, 40(sp)
80203106: 09 45        	li	a0, 2
80203108: 2a f8        	sd	a0, 48(sp)
8020310a: 02 ec        	sd	zero, 24(sp)
8020310c: ac 00        	addi	a1, sp, 72
8020310e: 2e fc        	sd	a1, 56(sp)
80203110: aa e0        	sd	a0, 64(sp)
80203112: 28 08        	addi	a0, sp, 24
80203114: b2 85        	mv	a1, a2
80203116: 97 00 00 00  	auipc	ra, 0
8020311a: e7 80 00 84  	jalr	-1984(ra)
8020311e: 00 00        	unimp	

0000000080203120 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E>:
80203120: 2a 86        	mv	a2, a0
80203122: 1d 05        	addi	a0, a0, 7
80203124: 13 77 85 ff  	andi	a4, a0, -8
80203128: b3 08 c7 40  	sub	a7, a4, a2
8020312c: 63 ec 15 01  	bltu	a1, a7, 0x80203144 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x24>
80203130: 33 88 15 41  	sub	a6, a1, a7
80203134: 13 35 88 00  	sltiu	a0, a6, 8
80203138: 93 b7 98 00  	sltiu	a5, a7, 9
8020313c: 93 c7 17 00  	xori	a5, a5, 1
80203140: 5d 8d        	or	a0, a0, a5
80203142: 11 cd        	beqz	a0, 0x8020315e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3e>
80203144: 01 45        	li	a0, 0
80203146: 99 c9        	beqz	a1, 0x8020315c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
80203148: 83 06 06 00  	lb	a3, 0(a2)
8020314c: 05 06        	addi	a2, a2, 1
8020314e: 93 a6 06 fc  	slti	a3, a3, -64
80203152: 93 c6 16 00  	xori	a3, a3, 1
80203156: fd 15        	addi	a1, a1, -1
80203158: 36 95        	add	a0, a0, a3
8020315a: fd f5        	bnez	a1, 0x80203148 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x28>
8020315c: 82 80        	ret
8020315e: 93 75 78 00  	andi	a1, a6, 7
80203162: 81 47        	li	a5, 0
80203164: 63 0f c7 00  	beq	a4, a2, 0x80203182 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x62>
80203168: 33 07 e6 40  	sub	a4, a2, a4
8020316c: 32 85        	mv	a0, a2
8020316e: 83 06 05 00  	lb	a3, 0(a0)
80203172: 05 05        	addi	a0, a0, 1
80203174: 93 a6 06 fc  	slti	a3, a3, -64
80203178: 93 c6 16 00  	xori	a3, a3, 1
8020317c: 05 07        	addi	a4, a4, 1
8020317e: b6 97        	add	a5, a5, a3
80203180: 7d f7        	bnez	a4, 0x8020316e <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x4e>
80203182: b3 02 16 01  	add	t0, a2, a7
80203186: 01 46        	li	a2, 0
80203188: 99 cd        	beqz	a1, 0x802031a6 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x86>
8020318a: 13 75 88 ff  	andi	a0, a6, -8
8020318e: b3 86 a2 00  	add	a3, t0, a0
80203192: 03 85 06 00  	lb	a0, 0(a3)
80203196: 85 06        	addi	a3, a3, 1
80203198: 13 25 05 fc  	slti	a0, a0, -64
8020319c: 13 45 15 00  	xori	a0, a0, 1
802031a0: fd 15        	addi	a1, a1, -1
802031a2: 2a 96        	add	a2, a2, a0
802031a4: fd f5        	bnez	a1, 0x80203192 <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x72>
802031a6: 13 57 38 00  	srli	a4, a6, 3

00000000802031aa <.LBB292_27>:
802031aa: 17 25 00 00  	auipc	a0, 2
802031ae: 13 05 65 01  	addi	a0, a0, 22
802031b2: 03 3f 05 00  	ld	t5, 0(a0)

00000000802031b6 <.LBB292_28>:
802031b6: 17 25 00 00  	auipc	a0, 2
802031ba: 13 05 25 01  	addi	a0, a0, 18
802031be: 83 38 05 00  	ld	a7, 0(a0)
802031c2: 37 15 00 10  	lui	a0, 65537
802031c6: 12 05        	slli	a0, a0, 4
802031c8: 05 05        	addi	a0, a0, 1
802031ca: 42 05        	slli	a0, a0, 16
802031cc: 13 08 15 00  	addi	a6, a0, 1
802031d0: 33 05 f6 00  	add	a0, a2, a5
802031d4: 25 a0        	j	0x802031fc <.LBB292_28+0x46>
802031d6: 13 16 3e 00  	slli	a2, t3, 3
802031da: b3 02 c3 00  	add	t0, t1, a2
802031de: 33 87 c3 41  	sub	a4, t2, t3
802031e2: 13 76 3e 00  	andi	a2, t3, 3
802031e6: b3 f6 15 01  	and	a3, a1, a7
802031ea: a1 81        	srli	a1, a1, 8
802031ec: b3 f5 15 01  	and	a1, a1, a7
802031f0: b6 95        	add	a1, a1, a3
802031f2: b3 85 05 03  	mul	a1, a1, a6
802031f6: c1 91        	srli	a1, a1, 48
802031f8: 2e 95        	add	a0, a0, a1
802031fa: 41 e2        	bnez	a2, 0x8020327a <.LBB292_28+0xc4>
802031fc: 25 d3        	beqz	a4, 0x8020315c <_ZN4core3str5count14do_count_chars17hfaff96369fc4ff28E+0x3c>
802031fe: ba 83        	mv	t2, a4
80203200: 16 83        	mv	t1, t0
80203202: 93 05 00 0c  	li	a1, 192
80203206: 3a 8e        	mv	t3, a4
80203208: 63 64 b7 00  	bltu	a4, a1, 0x80203210 <.LBB292_28+0x5a>
8020320c: 13 0e 00 0c  	li	t3, 192
80203210: 93 75 ce 0f  	andi	a1, t3, 252
80203214: 13 96 35 00  	slli	a2, a1, 3
80203218: b3 0e c3 00  	add	t4, t1, a2
8020321c: cd dd        	beqz	a1, 0x802031d6 <.LBB292_28+0x20>
8020321e: 81 45        	li	a1, 0
80203220: 1a 86        	mv	a2, t1
80203222: 55 da        	beqz	a2, 0x802031d6 <.LBB292_28+0x20>
80203224: 18 62        	ld	a4, 0(a2)
80203226: 93 47 f7 ff  	not	a5, a4
8020322a: 9d 83        	srli	a5, a5, 7
8020322c: 19 83        	srli	a4, a4, 6
8020322e: 14 66        	ld	a3, 8(a2)
80203230: 5d 8f        	or	a4, a4, a5
80203232: 33 77 e7 01  	and	a4, a4, t5
80203236: ba 95        	add	a1, a1, a4
80203238: 13 c7 f6 ff  	not	a4, a3
8020323c: 1d 83        	srli	a4, a4, 7
8020323e: 99 82        	srli	a3, a3, 6
80203240: 1c 6a        	ld	a5, 16(a2)
80203242: d9 8e        	or	a3, a3, a4
80203244: b3 f6 e6 01  	and	a3, a3, t5
80203248: b6 95        	add	a1, a1, a3
8020324a: 93 c6 f7 ff  	not	a3, a5
8020324e: 9d 82        	srli	a3, a3, 7
80203250: 13 d7 67 00  	srli	a4, a5, 6
80203254: 1c 6e        	ld	a5, 24(a2)
80203256: d9 8e        	or	a3, a3, a4
80203258: b3 f6 e6 01  	and	a3, a3, t5
8020325c: b6 95        	add	a1, a1, a3
8020325e: 93 c6 f7 ff  	not	a3, a5
80203262: 9d 82        	srli	a3, a3, 7
80203264: 13 d7 67 00  	srli	a4, a5, 6
80203268: d9 8e        	or	a3, a3, a4
8020326a: b3 f6 e6 01  	and	a3, a3, t5
8020326e: 13 06 06 02  	addi	a2, a2, 32
80203272: b6 95        	add	a1, a1, a3
80203274: e3 17 d6 fb  	bne	a2, t4, 0x80203222 <.LBB292_28+0x6c>
80203278: b9 bf        	j	0x802031d6 <.LBB292_28+0x20>
8020327a: 63 0a 03 02  	beqz	t1, 0x802032ae <.LBB292_28+0xf8>
8020327e: 93 05 00 0c  	li	a1, 192
80203282: 63 e4 b3 00  	bltu	t2, a1, 0x8020328a <.LBB292_28+0xd4>
80203286: 93 03 00 0c  	li	t2, 192
8020328a: 81 45        	li	a1, 0
8020328c: 13 f6 33 00  	andi	a2, t2, 3
80203290: 0e 06        	slli	a2, a2, 3
80203292: 83 b6 0e 00  	ld	a3, 0(t4)
80203296: a1 0e        	addi	t4, t4, 8
80203298: 13 c7 f6 ff  	not	a4, a3
8020329c: 1d 83        	srli	a4, a4, 7
8020329e: 99 82        	srli	a3, a3, 6
802032a0: d9 8e        	or	a3, a3, a4
802032a2: b3 f6 e6 01  	and	a3, a3, t5
802032a6: 61 16        	addi	a2, a2, -8
802032a8: b6 95        	add	a1, a1, a3
802032aa: 65 f6        	bnez	a2, 0x80203292 <.LBB292_28+0xdc>
802032ac: 11 a0        	j	0x802032b0 <.LBB292_28+0xfa>
802032ae: 81 45        	li	a1, 0
802032b0: 33 f6 15 01  	and	a2, a1, a7
802032b4: a1 81        	srli	a1, a1, 8
802032b6: b3 f5 15 01  	and	a1, a1, a7
802032ba: b2 95        	add	a1, a1, a2
802032bc: b3 85 05 03  	mul	a1, a1, a6
802032c0: c1 91        	srli	a1, a1, 48
802032c2: 2e 95        	add	a0, a0, a1
802032c4: 82 80        	ret

00000000802032c6 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hbae65bea1e6a497dE>:
802032c6: 75 71        	addi	sp, sp, -144
802032c8: 06 e5        	sd	ra, 136(sp)
802032ca: 2e 88        	mv	a6, a1
802032cc: 81 45        	li	a1, 0
802032ce: 18 61        	ld	a4, 0(a0)
802032d0: 93 08 81 00  	addi	a7, sp, 8
802032d4: a9 42        	li	t0, 10
802032d6: 3d 43        	li	t1, 15
802032d8: 19 a8        	j	0x802032ee <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hbae65bea1e6a497dE+0x28>
802032da: b3 86 b8 00  	add	a3, a7, a1
802032de: 13 57 45 00  	srli	a4, a0, 4
802032e2: 3d 9e        	addw	a2, a2, a5
802032e4: a3 8f c6 06  	sb	a2, 127(a3)
802032e8: fd 15        	addi	a1, a1, -1
802032ea: 63 7c a3 00  	bgeu	t1, a0, 0x80203302 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hbae65bea1e6a497dE+0x3c>
802032ee: 3a 85        	mv	a0, a4
802032f0: 93 77 f7 00  	andi	a5, a4, 15
802032f4: 13 06 00 03  	li	a2, 48
802032f8: e3 e1 57 fe  	bltu	a5, t0, 0x802032da <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hbae65bea1e6a497dE+0x14>
802032fc: 13 06 70 05  	li	a2, 87
80203300: e9 bf        	j	0x802032da <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17hbae65bea1e6a497dE+0x14>
80203302: 13 85 05 08  	addi	a0, a1, 128
80203306: 13 06 10 08  	li	a2, 129
8020330a: 63 76 c5 02  	bgeu	a0, a2, 0x80203336 <.LBB566_8>
8020330e: 28 00        	addi	a0, sp, 8
80203310: 2e 95        	add	a0, a0, a1
80203312: 13 07 05 08  	addi	a4, a0, 128
80203316: b3 07 b0 40  	neg	a5, a1

000000008020331a <.LBB566_7>:
8020331a: 17 16 00 00  	auipc	a2, 1
8020331e: 13 06 e6 66  	addi	a2, a2, 1646
80203322: 85 45        	li	a1, 1
80203324: 89 46        	li	a3, 2
80203326: 42 85        	mv	a0, a6
80203328: 97 00 00 00  	auipc	ra, 0
8020332c: e7 80 20 8d  	jalr	-1838(ra)
80203330: aa 60        	ld	ra, 136(sp)
80203332: 49 61        	addi	sp, sp, 144
80203334: 82 80        	ret

0000000080203336 <.LBB566_8>:
80203336: 17 16 00 00  	auipc	a2, 1
8020333a: 13 06 a6 63  	addi	a2, a2, 1594
8020333e: 93 05 00 08  	li	a1, 128
80203342: 97 00 00 00  	auipc	ra, 0
80203346: e7 80 00 d9  	jalr	-624(ra)
8020334a: 00 00        	unimp	

000000008020334c <_ZN4core3fmt3num3imp7fmt_u6417hc4590113e7130087E>:
8020334c: 39 71        	addi	sp, sp, -64
8020334e: 06 fc        	sd	ra, 56(sp)
80203350: 22 f8        	sd	s0, 48(sp)
80203352: 26 f4        	sd	s1, 40(sp)
80203354: 32 88        	mv	a6, a2
80203356: 93 56 45 00  	srli	a3, a0, 4
8020335a: 13 07 70 02  	li	a4, 39
8020335e: 93 07 10 27  	li	a5, 625

0000000080203362 <.LBB580_10>:
80203362: 97 1e 00 00  	auipc	t4, 1
80203366: 93 8e 8e 62  	addi	t4, t4, 1576
8020336a: 63 f3 f6 02  	bgeu	a3, a5, 0x80203390 <.LBB580_10+0x2e>
8020336e: 93 06 30 06  	li	a3, 99
80203372: 63 e9 a6 0a  	bltu	a3, a0, 0x80203424 <.LBB580_11+0x92>
80203376: 29 46        	li	a2, 10
80203378: 63 77 c5 0e  	bgeu	a0, a2, 0x80203466 <.LBB580_11+0xd4>
8020337c: 93 06 f7 ff  	addi	a3, a4, -1
80203380: 13 06 11 00  	addi	a2, sp, 1
80203384: 36 96        	add	a2, a2, a3
80203386: 1b 05 05 03  	addiw	a0, a0, 48
8020338a: 23 00 a6 00  	sb	a0, 0(a2)
8020338e: dd a8        	j	0x80203484 <.LBB580_11+0xf2>
80203390: 01 47        	li	a4, 0

0000000080203392 <.LBB580_11>:
80203392: 97 26 00 00  	auipc	a3, 2
80203396: 93 86 e6 e9  	addi	a3, a3, -354
8020339a: 83 b8 06 00  	ld	a7, 0(a3)
8020339e: 89 66        	lui	a3, 2
802033a0: 9b 83 06 71  	addiw	t2, a3, 1808
802033a4: 85 66        	lui	a3, 1
802033a6: 1b 8e b6 47  	addiw	t3, a3, 1147
802033aa: 93 02 40 06  	li	t0, 100
802033ae: 13 03 11 00  	addi	t1, sp, 1
802033b2: b7 e6 f5 05  	lui	a3, 24414
802033b6: 1b 8f f6 0f  	addiw	t5, a3, 255
802033ba: aa 87        	mv	a5, a0
802033bc: 33 35 15 03  	mulhu	a0, a0, a7
802033c0: 2d 81        	srli	a0, a0, 11
802033c2: 3b 06 75 02  	mulw	a2, a0, t2
802033c6: 3b 86 c7 40  	subw	a2, a5, a2
802033ca: 93 16 06 03  	slli	a3, a2, 48
802033ce: c9 92        	srli	a3, a3, 50
802033d0: b3 86 c6 03  	mul	a3, a3, t3
802033d4: 93 df 16 01  	srli	t6, a3, 17
802033d8: c1 82        	srli	a3, a3, 16
802033da: 13 f4 e6 7f  	andi	s0, a3, 2046
802033de: bb 86 5f 02  	mulw	a3, t6, t0
802033e2: 15 9e        	subw	a2, a2, a3
802033e4: 46 16        	slli	a2, a2, 49
802033e6: 41 92        	srli	a2, a2, 48
802033e8: b3 86 8e 00  	add	a3, t4, s0
802033ec: 33 04 e3 00  	add	s0, t1, a4
802033f0: 83 cf 06 00  	lbu	t6, 0(a3)
802033f4: 83 86 16 00  	lb	a3, 1(a3)
802033f8: 76 96        	add	a2, a2, t4
802033fa: 83 04 16 00  	lb	s1, 1(a2)
802033fe: 03 46 06 00  	lbu	a2, 0(a2)
80203402: 23 02 d4 02  	sb	a3, 36(s0)
80203406: a3 01 f4 03  	sb	t6, 35(s0)
8020340a: 23 03 94 02  	sb	s1, 38(s0)
8020340e: a3 02 c4 02  	sb	a2, 37(s0)
80203412: 71 17        	addi	a4, a4, -4
80203414: e3 63 ff fa  	bltu	t5, a5, 0x802033ba <.LBB580_11+0x28>
80203418: 13 07 77 02  	addi	a4, a4, 39
8020341c: 93 06 30 06  	li	a3, 99
80203420: e3 fb a6 f4  	bgeu	a3, a0, 0x80203376 <.LBB580_10+0x14>
80203424: 13 16 05 03  	slli	a2, a0, 48
80203428: 49 92        	srli	a2, a2, 50
8020342a: 85 66        	lui	a3, 1
8020342c: 9b 86 b6 47  	addiw	a3, a3, 1147
80203430: 33 06 d6 02  	mul	a2, a2, a3
80203434: 45 82        	srli	a2, a2, 17
80203436: 93 06 40 06  	li	a3, 100
8020343a: bb 06 d6 02  	mulw	a3, a2, a3
8020343e: 15 9d        	subw	a0, a0, a3
80203440: 46 15        	slli	a0, a0, 49
80203442: 41 91        	srli	a0, a0, 48
80203444: 79 17        	addi	a4, a4, -2
80203446: 76 95        	add	a0, a0, t4
80203448: 83 06 15 00  	lb	a3, 1(a0)
8020344c: 03 45 05 00  	lbu	a0, 0(a0)
80203450: 93 07 11 00  	addi	a5, sp, 1
80203454: ba 97        	add	a5, a5, a4
80203456: a3 80 d7 00  	sb	a3, 1(a5)
8020345a: 23 80 a7 00  	sb	a0, 0(a5)
8020345e: 32 85        	mv	a0, a2
80203460: 29 46        	li	a2, 10
80203462: e3 6d c5 f0  	bltu	a0, a2, 0x8020337c <.LBB580_10+0x1a>
80203466: 06 05        	slli	a0, a0, 1
80203468: 93 06 e7 ff  	addi	a3, a4, -2
8020346c: 76 95        	add	a0, a0, t4
8020346e: 03 06 15 00  	lb	a2, 1(a0)
80203472: 03 45 05 00  	lbu	a0, 0(a0)
80203476: 13 07 11 00  	addi	a4, sp, 1
8020347a: 36 97        	add	a4, a4, a3
8020347c: a3 00 c7 00  	sb	a2, 1(a4)
80203480: 23 00 a7 00  	sb	a0, 0(a4)
80203484: 13 05 11 00  	addi	a0, sp, 1
80203488: 33 07 d5 00  	add	a4, a0, a3
8020348c: 13 05 70 02  	li	a0, 39
80203490: b3 07 d5 40  	sub	a5, a0, a3

0000000080203494 <.LBB580_12>:
80203494: 17 16 00 00  	auipc	a2, 1
80203498: 13 06 46 41  	addi	a2, a2, 1044
8020349c: 42 85        	mv	a0, a6
8020349e: 81 46        	li	a3, 0
802034a0: 97 f0 ff ff  	auipc	ra, 1048575
802034a4: e7 80 a0 75  	jalr	1882(ra)
802034a8: e2 70        	ld	ra, 56(sp)
802034aa: 42 74        	ld	s0, 48(sp)
802034ac: a2 74        	ld	s1, 40(sp)
802034ae: 21 61        	addi	sp, sp, 64
802034b0: 82 80        	ret

00000000802034b2 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h87948b5d96253de1E>:
802034b2: 03 65 05 00  	lwu	a0, 0(a0)
802034b6: 2e 86        	mv	a2, a1
802034b8: 85 45        	li	a1, 1
802034ba: 17 03 00 00  	auipc	t1, 0
802034be: 67 00 23 e9  	jr	-366(t1)

00000000802034c2 <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17he40dda5f91ea8961E>:
802034c2: 08 61        	ld	a0, 0(a0)
802034c4: 2e 86        	mv	a2, a1
802034c6: 85 45        	li	a1, 1
802034c8: 17 03 00 00  	auipc	t1, 0
802034cc: 67 00 43 e8  	jr	-380(t1)

00000000802034d0 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5693be72213c23ccE>:
802034d0: 90 65        	ld	a2, 8(a1)
802034d2: 88 61        	ld	a0, 0(a1)
802034d4: 1c 6e        	ld	a5, 24(a2)

00000000802034d6 <.LBB612_1>:
802034d6: 97 15 00 00  	auipc	a1, 1
802034da: 93 85 25 5d  	addi	a1, a1, 1490
802034de: 15 46        	li	a2, 5
802034e0: 82 87        	jr	a5

00000000802034e2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he5645b5aeadbe02aE>:
802034e2: 10 65        	ld	a2, 8(a0)
802034e4: 08 61        	ld	a0, 0(a0)
802034e6: 1c 6e        	ld	a5, 24(a2)
802034e8: 82 87        	jr	a5

00000000802034ea <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4e7ee4af2b38e49eE>:
802034ea: 14 61        	ld	a3, 0(a0)
802034ec: 10 65        	ld	a2, 8(a0)
802034ee: 2e 85        	mv	a0, a1
802034f0: b6 85        	mv	a1, a3
802034f2: 17 03 00 00  	auipc	t1, 0
802034f6: 67 00 c3 97  	jr	-1668(t1)

00000000802034fa <memset>:
802034fa: 17 03 00 00  	auipc	t1, 0
802034fe: 67 00 83 00  	jr	8(t1)

0000000080203502 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE>:
80203502: bd 46        	li	a3, 15
80203504: 63 fa c6 04  	bgeu	a3, a2, 0x80203558 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x56>
80203508: bb 06 a0 40  	negw	a3, a0
8020350c: 9d 8a        	andi	a3, a3, 7
8020350e: 33 07 d5 00  	add	a4, a0, a3
80203512: 99 c6        	beqz	a3, 0x80203520 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x1e>
80203514: aa 87        	mv	a5, a0
80203516: 23 80 b7 00  	sb	a1, 0(a5)
8020351a: 85 07        	addi	a5, a5, 1
8020351c: e3 ed e7 fe  	bltu	a5, a4, 0x80203516 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x14>
80203520: b3 08 d6 40  	sub	a7, a2, a3
80203524: 93 f7 88 ff  	andi	a5, a7, -8
80203528: b3 06 f7 00  	add	a3, a4, a5
8020352c: 63 52 f0 02  	blez	a5, 0x80203550 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x4e>
80203530: 13 98 85 03  	slli	a6, a1, 56
80203534: b7 17 10 10  	lui	a5, 65793
80203538: 92 07        	slli	a5, a5, 4
8020353a: 93 87 07 10  	addi	a5, a5, 256
8020353e: b3 37 f8 02  	mulhu	a5, a6, a5
80203542: 13 96 07 02  	slli	a2, a5, 32
80203546: d1 8f        	or	a5, a5, a2
80203548: 1c e3        	sd	a5, 0(a4)
8020354a: 21 07        	addi	a4, a4, 8
8020354c: e3 6e d7 fe  	bltu	a4, a3, 0x80203548 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x46>
80203550: 13 f6 78 00  	andi	a2, a7, 7
80203554: 01 e6        	bnez	a2, 0x8020355c <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5a>
80203556: 09 a8        	j	0x80203568 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
80203558: aa 86        	mv	a3, a0
8020355a: 19 c6        	beqz	a2, 0x80203568 <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x66>
8020355c: 36 96        	add	a2, a2, a3
8020355e: 23 80 b6 00  	sb	a1, 0(a3)
80203562: 85 06        	addi	a3, a3, 1
80203564: e3 ed c6 fe  	bltu	a3, a2, 0x8020355e <_ZN17compiler_builtins3mem6memset17h3e359e8e406aba1aE+0x5c>
80203568: 82 80        	ret
