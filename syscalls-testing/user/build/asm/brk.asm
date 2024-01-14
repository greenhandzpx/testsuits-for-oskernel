
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/brk:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400e000 	bl	224(0xe0) # 10e4 <__start_main>

0000000000001008 <test_brk>:
 * "After alloc,heap pos: [num+64]"
 * "Alloc again,heap pos: [num+128]"
 * 
 * Linux 中brk(0)只返回0，此处与Linux表现不同，应特殊说明。
 */
void test_brk(){
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d5d084 	addi.d	$r4,$r4,1396(0x574)
void test_brk(){
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    1018:	27000077 	stptr.d	$r23,$r3,0
    TEST_START(__func__);
    101c:	5403d000 	bl	976(0x3d0) # 13ec <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1028:	5403c400 	bl	964(0x3c4) # 13ec <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d5b084 	addi.d	$r4,$r4,1388(0x56c)
    1034:	5403b800 	bl	952(0x3b8) # 13ec <puts>
    intptr_t cur_pos, alloc_pos, alloc_pos_1;

    cur_pos = brk(0);
    1038:	00150004 	move	$r4,$r0
    103c:	54144c00 	bl	5196(0x144c) # 2488 <brk>
    printf("Before alloc,heap pos: %d\n", cur_pos);
    1040:	00150085 	move	$r5,$r4
    cur_pos = brk(0);
    1044:	00150097 	move	$r23,$r4
    printf("Before alloc,heap pos: %d\n", cur_pos);
    1048:	1c000024 	pcaddu12i	$r4,1(0x1)
    104c:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1050:	5403d400 	bl	980(0x3d4) # 1424 <printf>
    brk(cur_pos + 64);
    1054:	02c102e4 	addi.d	$r4,$r23,64(0x40)
    1058:	54143000 	bl	5168(0x1430) # 2488 <brk>
    alloc_pos = brk(0);
    105c:	00150004 	move	$r4,$r0
    1060:	54142800 	bl	5160(0x1428) # 2488 <brk>
    printf("After alloc,heap pos: %d\n",alloc_pos);
    1064:	00150085 	move	$r5,$r4
    alloc_pos = brk(0);
    1068:	00150097 	move	$r23,$r4
    printf("After alloc,heap pos: %d\n",alloc_pos);
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
    1074:	5403b000 	bl	944(0x3b0) # 1424 <printf>
    brk(alloc_pos + 64);
    1078:	02c102e4 	addi.d	$r4,$r23,64(0x40)
    107c:	54140c00 	bl	5132(0x140c) # 2488 <brk>
    alloc_pos_1 = brk(0);
    1080:	00150004 	move	$r4,$r0
    1084:	54140400 	bl	5124(0x1404) # 2488 <brk>
    printf("Alloc again,heap pos: %d\n",alloc_pos_1);
    1088:	00150085 	move	$r5,$r4
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
    1094:	54039000 	bl	912(0x390) # 1424 <printf>
    TEST_END(__func__);
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    10a0:	54034c00 	bl	844(0x34c) # 13ec <puts>
    10a4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a8:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
    10ac:	54034000 	bl	832(0x340) # 13ec <puts>
}
    10b0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10b4:	26000077 	ldptr.d	$r23,$r3,0
    TEST_END(__func__);
    10b8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10bc:	02d38084 	addi.d	$r4,$r4,1248(0x4e0)
}
    10c0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    TEST_END(__func__);
    10c4:	50032800 	b	808(0x328) # 13ec <puts>

00000000000010c8 <main>:

int main(void) {
    10c8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10cc:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_brk();
    10d0:	57ff3bff 	bl	-200(0xfffff38) # 1008 <test_brk>
    return 0;
}
    10d4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10d8:	00150004 	move	$r4,$r0
    10dc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10e0:	4c000020 	jirl	$r0,$r1,0

00000000000010e4 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10e4:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10e8:	24000084 	ldptr.w	$r4,$r4,0
{
    10ec:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10f0:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10f4:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10f8:	57ffd3ff 	bl	-48(0xfffffd0) # 10c8 <main>
    10fc:	54118000 	bl	4480(0x1180) # 227c <exit>
	return 0;
}
    1100:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1104:	00150004 	move	$r4,$r0
    1108:	02c04063 	addi.d	$r3,$r3,16(0x10)
    110c:	4c000020 	jirl	$r0,$r1,0

0000000000001110 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1110:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1114:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1118:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12e4 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    111c:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1120:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1124:	02d4418c 	addi.d	$r12,$r12,1296(0x510)
    1128:	002195cf 	mod.wu	$r15,$r14,$r5
    112c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1134 <printint.constprop.0+0x24>
    1130:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1134:	002115cd 	div.wu	$r13,$r14,$r5
    1138:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1140 <printint.constprop.0+0x30>
    113c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1140:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1144:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1148:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    114c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1150:	680219c5 	bltu	$r14,$r5,536(0x218) # 1368 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1154:	002195af 	mod.wu	$r15,$r13,$r5
    1158:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1160 <printint.constprop.0+0x50>
    115c:	002a0007 	break	0x7
    1160:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1164:	002115ae 	div.wu	$r14,$r13,$r5
    1168:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1170 <printint.constprop.0+0x60>
    116c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1170:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1174:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1178:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1338 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    117c:	002195cf 	mod.wu	$r15,$r14,$r5
    1180:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1188 <printint.constprop.0+0x78>
    1184:	002a0007 	break	0x7
    1188:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    118c:	002115cd 	div.wu	$r13,$r14,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0x88>
    1194:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1198:	38203d8f 	ldx.bu	$r15,$r12,$r15
    119c:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11a0:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1344 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11a4:	002195af 	mod.wu	$r15,$r13,$r5
    11a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b0 <printint.constprop.0+0xa0>
    11ac:	002a0007 	break	0x7
    11b0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b4:	002115ae 	div.wu	$r14,$r13,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0xb0>
    11bc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c4:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11c8:	680189a5 	bltu	$r13,$r5,392(0x188) # 1350 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11cc:	002195cf 	mod.wu	$r15,$r14,$r5
    11d0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d8 <printint.constprop.0+0xc8>
    11d4:	002a0007 	break	0x7
    11d8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11dc:	002115cd 	div.wu	$r13,$r14,$r5
    11e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e8 <printint.constprop.0+0xd8>
    11e4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11ec:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11f0:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 135c <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11f4:	002195af 	mod.wu	$r15,$r13,$r5
    11f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1200 <printint.constprop.0+0xf0>
    11fc:	002a0007 	break	0x7
    1200:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1204:	002115ae 	div.wu	$r14,$r13,$r5
    1208:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1210 <printint.constprop.0+0x100>
    120c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1210:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1214:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1218:	680115a5 	bltu	$r13,$r5,276(0x114) # 132c <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    121c:	002195cf 	mod.wu	$r15,$r14,$r5
    1220:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1228 <printint.constprop.0+0x118>
    1224:	002a0007 	break	0x7
    1228:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    122c:	002115cd 	div.wu	$r13,$r14,$r5
    1230:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1238 <printint.constprop.0+0x128>
    1234:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1238:	38203d8f 	ldx.bu	$r15,$r12,$r15
    123c:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1240:	680131c5 	bltu	$r14,$r5,304(0x130) # 1370 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1244:	002195af 	mod.wu	$r15,$r13,$r5
    1248:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1250 <printint.constprop.0+0x140>
    124c:	002a0007 	break	0x7
    1250:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1254:	002115ae 	div.wu	$r14,$r13,$r5
    1258:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1260 <printint.constprop.0+0x150>
    125c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1260:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1264:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1268:	680115a5 	bltu	$r13,$r5,276(0x114) # 137c <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    126c:	002195cf 	mod.wu	$r15,$r14,$r5
    1270:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1278 <printint.constprop.0+0x168>
    1274:	002a0007 	break	0x7
    1278:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    127c:	002115cd 	div.wu	$r13,$r14,$r5
    1280:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1288 <printint.constprop.0+0x178>
    1284:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1288:	38203d8f 	ldx.bu	$r15,$r12,$r15
    128c:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1290:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1388 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1294:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1298:	3820358d 	ldx.bu	$r13,$r12,$r13
    129c:	02801805 	addi.w	$r5,$r0,6(0x6)
    12a0:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12a4:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12a8:	64001880 	bge	$r4,$r0,24(0x18) # 12c0 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12ac:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12b0:	0010b1ad 	add.d	$r13,$r13,$r12
    12b4:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12b8:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12bc:	00150185 	move	$r5,$r12
    write(f, s, l);
    12c0:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12c4:	02804006 	addi.w	$r6,$r0,16(0x10)
    12c8:	001114c6 	sub.w	$r6,$r6,$r5
    12cc:	02800404 	addi.w	$r4,$r0,1(0x1)
    12d0:	00109585 	add.d	$r5,$r12,$r5
    12d4:	540f3400 	bl	3892(0xf34) # 2208 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12d8:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12dc:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12e0:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12e4:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12e8:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12ec:	02cd218c 	addi.d	$r12,$r12,840(0x348)
    12f0:	002195cf 	mod.wu	$r15,$r14,$r5
    12f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12fc <printint.constprop.0+0x1ec>
    12f8:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12fc:	002115cd 	div.wu	$r13,$r14,$r5
    1300:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1308 <printint.constprop.0+0x1f8>
    1304:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1308:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    130c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1310:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1314:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1318:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1154 <printint.constprop.0+0x44>
        buf[i--] = '-';
    131c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1320:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1324:	02803805 	addi.w	$r5,$r0,14(0xe)
    1328:	53ff9bff 	b	-104(0xfffff98) # 12c0 <printint.constprop.0+0x1b0>
    132c:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1330:	02802805 	addi.w	$r5,$r0,10(0xa)
    1334:	53ff77ff 	b	-140(0xfffff74) # 12a8 <printint.constprop.0+0x198>
    1338:	0280340c 	addi.w	$r12,$r0,13(0xd)
    133c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1340:	53ff6bff 	b	-152(0xfffff68) # 12a8 <printint.constprop.0+0x198>
    1344:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1348:	02803405 	addi.w	$r5,$r0,13(0xd)
    134c:	53ff5fff 	b	-164(0xfffff5c) # 12a8 <printint.constprop.0+0x198>
    1350:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1354:	02803005 	addi.w	$r5,$r0,12(0xc)
    1358:	53ff53ff 	b	-176(0xfffff50) # 12a8 <printint.constprop.0+0x198>
    135c:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1360:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1364:	53ff47ff 	b	-188(0xfffff44) # 12a8 <printint.constprop.0+0x198>
    i = 15;
    1368:	02803c05 	addi.w	$r5,$r0,15(0xf)
    136c:	53ff57ff 	b	-172(0xfffff54) # 12c0 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1370:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1374:	02802405 	addi.w	$r5,$r0,9(0x9)
    1378:	53ff33ff 	b	-208(0xfffff30) # 12a8 <printint.constprop.0+0x198>
    137c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1380:	02802005 	addi.w	$r5,$r0,8(0x8)
    1384:	53ff27ff 	b	-220(0xfffff24) # 12a8 <printint.constprop.0+0x198>
    1388:	0280180c 	addi.w	$r12,$r0,6(0x6)
    138c:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1390:	53ff1bff 	b	-232(0xfffff18) # 12a8 <printint.constprop.0+0x198>

0000000000001394 <getchar>:
{
    1394:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1398:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    139c:	02800406 	addi.w	$r6,$r0,1(0x1)
    13a0:	00150004 	move	$r4,$r0
{
    13a4:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13a8:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13ac:	540e5000 	bl	3664(0xe50) # 21fc <read>
}
    13b0:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13b4:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13b8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13bc:	4c000020 	jirl	$r0,$r1,0

00000000000013c0 <putchar>:
{
    13c0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13c4:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13c8:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13cc:	02800406 	addi.w	$r6,$r0,1(0x1)
    13d0:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13d4:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13d8:	540e3000 	bl	3632(0xe30) # 2208 <write>
}
    13dc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13e0:	00408084 	slli.w	$r4,$r4,0x0
}
    13e4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13e8:	4c000020 	jirl	$r0,$r1,0

00000000000013ec <puts>:
{
    13ec:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13f0:	29c02061 	st.d	$r1,$r3,8(0x8)
    13f4:	27000077 	stptr.d	$r23,$r3,0
    13f8:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13fc:	5406b800 	bl	1720(0x6b8) # 1ab4 <strlen>
    1400:	00150086 	move	$r6,$r4
    1404:	001502e5 	move	$r5,$r23
    1408:	02800404 	addi.w	$r4,$r0,1(0x1)
    140c:	540dfc00 	bl	3580(0xdfc) # 2208 <write>
}
    1410:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1414:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1418:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    141c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1420:	4c000020 	jirl	$r0,$r1,0

0000000000001424 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1424:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1428:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    142c:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1430:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1434:	29c14079 	st.d	$r25,$r3,80(0x50)
    1438:	29c1007b 	st.d	$r27,$r3,64(0x40)
    143c:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1440:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1444:	29c18077 	st.d	$r23,$r3,96(0x60)
    1448:	29c16078 	st.d	$r24,$r3,88(0x58)
    144c:	0015009b 	move	$r27,$r4
    1450:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1454:	29c20066 	st.d	$r6,$r3,128(0x80)
    1458:	29c22067 	st.d	$r7,$r3,136(0x88)
    145c:	29c24068 	st.d	$r8,$r3,144(0x90)
    1460:	29c26069 	st.d	$r9,$r3,152(0x98)
    1464:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1468:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    146c:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1470:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1474:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1478:	1c00003c 	pcaddu12i	$r28,1(0x1)
    147c:	02c6e39c 	addi.d	$r28,$r28,440(0x1b8)
        if (!*s)
    1480:	2800036c 	ld.b	$r12,$r27,0
    1484:	40008980 	beqz	$r12,136(0x88) # 150c <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1488:	58027d99 	beq	$r12,$r25,636(0x27c) # 1704 <printf+0x2e0>
    148c:	00150366 	move	$r6,$r27
    1490:	50000800 	b	8(0x8) # 1498 <printf+0x74>
    1494:	58009d99 	beq	$r12,$r25,156(0x9c) # 1530 <printf+0x10c>
    1498:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    149c:	280000cc 	ld.b	$r12,$r6,0
    14a0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1494 <printf+0x70>
    14a4:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14a8:	0011ecd7 	sub.d	$r23,$r6,$r27
    14ac:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14b0:	001502e6 	move	$r6,$r23
    14b4:	00150365 	move	$r5,$r27
    14b8:	02800404 	addi.w	$r4,$r0,1(0x1)
    14bc:	540d4c00 	bl	3404(0xd4c) # 2208 <write>
        out(f, a, l);
        if (l)
    14c0:	4400b6e0 	bnez	$r23,180(0xb4) # 1574 <printf+0x150>
            continue;
        if (s[1] == 0)
    14c4:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14c8:	40004580 	beqz	$r12,68(0x44) # 150c <printf+0xe8>
            break;
        switch (s[1])
    14cc:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14d0:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15a4 <printf+0x180>
    14d4:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 157c <printf+0x158>
    14d8:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14dc:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16cc <printf+0x2a8>
    14e0:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14e4:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1694 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14e8:	2600006c 	ldptr.d	$r12,$r3,0
    14ec:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14f0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14f4:	24000184 	ldptr.w	$r4,$r12,0
    14f8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14fc:	2700006c 	stptr.d	$r12,$r3,0
    1500:	57fc13ff 	bl	-1008(0xffffc10) # 1110 <printint.constprop.0>
        if (!*s)
    1504:	2800036c 	ld.b	$r12,$r27,0
    1508:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1488 <printf+0x64>
    }
    va_end(ap);
}
    150c:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1510:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1514:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1518:	28c14079 	ld.d	$r25,$r3,80(0x50)
    151c:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1520:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1524:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1528:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    152c:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1530:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1534:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14a4 <printf+0x80>
    1538:	001500d8 	move	$r24,$r6
    153c:	50000c00 	b	12(0xc) # 1548 <printf+0x124>
    1540:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1544:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14a8 <printf+0x84>
    1548:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    154c:	2800030c 	ld.b	$r12,$r24,0
    1550:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1554:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1540 <printf+0x11c>
        l = z - a;
    1558:	0011ecd7 	sub.d	$r23,$r6,$r27
    155c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1560:	001502e6 	move	$r6,$r23
    1564:	00150365 	move	$r5,$r27
    1568:	02800404 	addi.w	$r4,$r0,1(0x1)
    156c:	540c9c00 	bl	3228(0xc9c) # 2208 <write>
        if (l)
    1570:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14c4 <printf+0xa0>
    1574:	0015031b 	move	$r27,$r24
    1578:	53ff0bff 	b	-248(0xfffff08) # 1480 <printf+0x5c>
        switch (s[1])
    157c:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1580:	5c01158d 	bne	$r12,$r13,276(0x114) # 1694 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1584:	2600006c 	ldptr.d	$r12,$r3,0
    1588:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    158c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1590:	24000184 	ldptr.w	$r4,$r12,0
    1594:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1598:	2700006c 	stptr.d	$r12,$r3,0
    159c:	57fb77ff 	bl	-1164(0xffffb74) # 1110 <printint.constprop.0>
        s += 2;
    15a0:	53ff67ff 	b	-156(0xfffff64) # 1504 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15a4:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15a8:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15ac:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15b0:	260001ac 	ldptr.d	$r12,$r13,0
    15b4:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15b8:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15bc:	0045f18a 	srli.d	$r10,$r12,0x3c
    15c0:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15c4:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15c8:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15cc:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15d0:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15d4:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15d8:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15dc:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15e0:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15e4:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15e8:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15ec:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15f0:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15f4:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15f8:	3820278a 	ldx.bu	$r10,$r28,$r9
    15fc:	38202389 	ldx.bu	$r9,$r28,$r8
    1600:	38201f88 	ldx.bu	$r8,$r28,$r7
    1604:	38201787 	ldx.bu	$r7,$r28,$r5
    1608:	38201385 	ldx.bu	$r5,$r28,$r4
    160c:	38205384 	ldx.bu	$r4,$r28,$r20
    1610:	38204f94 	ldx.bu	$r20,$r28,$r19
    1614:	38204b93 	ldx.bu	$r19,$r28,$r18
    1618:	38204792 	ldx.bu	$r18,$r28,$r17
    161c:	38204391 	ldx.bu	$r17,$r28,$r16
    1620:	38203f90 	ldx.bu	$r16,$r28,$r15
    1624:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1628:	3820378e 	ldx.bu	$r14,$r28,$r13
    162c:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1630:	03403d8c 	andi	$r12,$r12,0xf
    1634:	2900286b 	st.b	$r11,$r3,10(0xa)
    1638:	29002c6a 	st.b	$r10,$r3,11(0xb)
    163c:	29003069 	st.b	$r9,$r3,12(0xc)
    1640:	29003468 	st.b	$r8,$r3,13(0xd)
    1644:	29003867 	st.b	$r7,$r3,14(0xe)
    1648:	29003c65 	st.b	$r5,$r3,15(0xf)
    164c:	29004064 	st.b	$r4,$r3,16(0x10)
    1650:	29004474 	st.b	$r20,$r3,17(0x11)
    1654:	29004873 	st.b	$r19,$r3,18(0x12)
    1658:	29004c72 	st.b	$r18,$r3,19(0x13)
    165c:	29005071 	st.b	$r17,$r3,20(0x14)
    1660:	29005470 	st.b	$r16,$r3,21(0x15)
    1664:	2900586f 	st.b	$r15,$r3,22(0x16)
    1668:	29005c6e 	st.b	$r14,$r3,23(0x17)
    166c:	3820378d 	ldx.bu	$r13,$r28,$r13
    1670:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1674:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1678:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    167c:	2900606d 	st.b	$r13,$r3,24(0x18)
    1680:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1684:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1688:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    168c:	540b7c00 	bl	2940(0xb7c) # 2208 <write>
        s += 2;
    1690:	53fe77ff 	b	-396(0xffffe74) # 1504 <printf+0xe0>
    char byte = c;
    1694:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1698:	02800406 	addi.w	$r6,$r0,1(0x1)
    169c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16a0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16a4:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16a8:	540b6000 	bl	2912(0xb60) # 2208 <write>
    char byte = c;
    16ac:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16b0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16b4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16b8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16bc:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16c0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16c4:	540b4400 	bl	2884(0xb44) # 2208 <write>
        s += 2;
    16c8:	53fe3fff 	b	-452(0xffffe3c) # 1504 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16cc:	2600006c 	ldptr.d	$r12,$r3,0
    16d0:	26000197 	ldptr.d	$r23,$r12,0
    16d4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16d8:	2700006c 	stptr.d	$r12,$r3,0
    16dc:	40004ee0 	beqz	$r23,76(0x4c) # 1728 <printf+0x304>
            l = strnlen(a, 200);
    16e0:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16e4:	001502e4 	move	$r4,$r23
    16e8:	5405b400 	bl	1460(0x5b4) # 1c9c <strnlen>
    16ec:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16f0:	001502e5 	move	$r5,$r23
    16f4:	02800404 	addi.w	$r4,$r0,1(0x1)
    16f8:	540b1000 	bl	2832(0xb10) # 2208 <write>
        s += 2;
    16fc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1700:	53fe07ff 	b	-508(0xffffe04) # 1504 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1704:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1708:	00150366 	move	$r6,$r27
    170c:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1538 <printf+0x114>
    write(f, s, l);
    1710:	00150006 	move	$r6,$r0
    1714:	00150365 	move	$r5,$r27
    1718:	02800404 	addi.w	$r4,$r0,1(0x1)
    171c:	540aec00 	bl	2796(0xaec) # 2208 <write>
    1720:	00150378 	move	$r24,$r27
    1724:	53fda3ff 	b	-608(0xffffda0) # 14c4 <printf+0xa0>
                a = "(null)";
    1728:	1c000037 	pcaddu12i	$r23,1(0x1)
    172c:	02fbc2f7 	addi.d	$r23,$r23,-272(0xef0)
    1730:	53ffb3ff 	b	-80(0xfffffb0) # 16e0 <printf+0x2bc>

0000000000001734 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1734:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1738:	5800108c 	beq	$r4,$r12,16(0x10) # 1748 <isspace+0x14>
    173c:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1740:	02401484 	sltui	$r4,$r4,5(0x5)
    1744:	4c000020 	jirl	$r0,$r1,0
    1748:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    174c:	4c000020 	jirl	$r0,$r1,0

0000000000001750 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1750:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1754:	02402884 	sltui	$r4,$r4,10(0xa)
    1758:	4c000020 	jirl	$r0,$r1,0

000000000000175c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    175c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1760:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1764:	2800008d 	ld.b	$r13,$r4,0
    1768:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    176c:	580061ae 	beq	$r13,$r14,96(0x60) # 17cc <atoi+0x70>
    1770:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17cc <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1774:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1778:	580065ac 	beq	$r13,$r12,100(0x64) # 17dc <atoi+0x80>
    177c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1780:	58007dac 	beq	$r13,$r12,124(0x7c) # 17fc <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1784:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1788:	0280240e 	addi.w	$r14,$r0,9(0x9)
    178c:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1790:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1794:	680061cf 	bltu	$r14,$r15,96(0x60) # 17f4 <atoi+0x98>
    int n = 0, neg = 0;
    1798:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    179c:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17a0:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17a4:	001c126f 	mul.w	$r15,$r19,$r4
    17a8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17ac:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17b0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17b4:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17b8:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17bc:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17c0:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17a4 <atoi+0x48>
    return neg ? n : -n;
    17c4:	40001280 	beqz	$r20,16(0x10) # 17d4 <atoi+0x78>
}
    17c8:	4c000020 	jirl	$r0,$r1,0
        s++;
    17cc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17d0:	53ff97ff 	b	-108(0xfffff94) # 1764 <atoi+0x8>
    17d4:	00113e04 	sub.w	$r4,$r16,$r15
    17d8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17dc:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17e0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17e4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17e8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17ec:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17f0:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1798 <atoi+0x3c>
    17f4:	00150004 	move	$r4,$r0
}
    17f8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17fc:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1800:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1804:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1808:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    180c:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17f4 <atoi+0x98>
        neg = 1;
    1810:	02800414 	addi.w	$r20,$r0,1(0x1)
    1814:	53ff87ff 	b	-124(0xfffff84) # 1798 <atoi+0x3c>

0000000000001818 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1818:	400198c0 	beqz	$r6,408(0x198) # 19b0 <memset+0x198>
    181c:	0011900c 	sub.d	$r12,$r0,$r4
    1820:	03401d8c 	andi	$r12,$r12,0x7
    1824:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1828:	02402dae 	sltui	$r14,$r13,11(0xb)
    182c:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1830:	0013b9ad 	masknez	$r13,$r13,$r14
    1834:	001339ee 	maskeqz	$r14,$r15,$r14
    1838:	001539ad 	or	$r13,$r13,$r14
    183c:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1840:	00005ca5 	ext.w.b	$r5,$r5
    1844:	680191ed 	bltu	$r15,$r13,400(0x190) # 19d4 <memset+0x1bc>
    1848:	40018180 	beqz	$r12,384(0x180) # 19c8 <memset+0x1b0>
    184c:	29000085 	st.b	$r5,$r4,0
    1850:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1854:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1858:	5801698d 	beq	$r12,$r13,360(0x168) # 19c0 <memset+0x1a8>
    185c:	29000485 	st.b	$r5,$r4,1(0x1)
    1860:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1864:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1868:	5801798d 	beq	$r12,$r13,376(0x178) # 19e0 <memset+0x1c8>
    186c:	29000885 	st.b	$r5,$r4,2(0x2)
    1870:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1874:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1878:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19b4 <memset+0x19c>
    187c:	29000c85 	st.b	$r5,$r4,3(0x3)
    1880:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1884:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1888:	5801618d 	beq	$r12,$r13,352(0x160) # 19e8 <memset+0x1d0>
    188c:	29001085 	st.b	$r5,$r4,4(0x4)
    1890:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1894:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1898:	5801598d 	beq	$r12,$r13,344(0x158) # 19f0 <memset+0x1d8>
    189c:	29001485 	st.b	$r5,$r4,5(0x5)
    18a0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18a4:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18a8:	5c01518d 	bne	$r12,$r13,336(0x150) # 19f8 <memset+0x1e0>
    18ac:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18b0:	29001885 	st.b	$r5,$r4,6(0x6)
    18b4:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18b8:	0015000d 	move	$r13,$r0
    18bc:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18c0:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18c4:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18c8:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18cc:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18d0:	0011b0d0 	sub.d	$r16,$r6,$r12
    18d4:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18d8:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18dc:	0010b08c 	add.d	$r12,$r4,$r12
    18e0:	00450e0f 	srli.d	$r15,$r16,0x3
    18e4:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18e8:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18ec:	2700018d 	stptr.d	$r13,$r12,0
    18f0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18f4:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18ec <memset+0xd4>
    18f8:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18fc:	0014be0f 	and	$r15,$r16,$r15
    1900:	004081ed 	slli.w	$r13,$r15,0x0
    1904:	0010bdcc 	add.d	$r12,$r14,$r15
    1908:	001045ad 	add.w	$r13,$r13,$r17
    190c:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19bc <memset+0x1a4>
    1910:	29000185 	st.b	$r5,$r12,0
    1914:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1918:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19b0 <memset+0x198>
    191c:	29000585 	st.b	$r5,$r12,1(0x1)
    1920:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1924:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19b0 <memset+0x198>
    1928:	29000985 	st.b	$r5,$r12,2(0x2)
    192c:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1930:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19b0 <memset+0x198>
    1934:	29000d85 	st.b	$r5,$r12,3(0x3)
    1938:	028011ae 	addi.w	$r14,$r13,4(0x4)
    193c:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19b0 <memset+0x198>
    1940:	29001185 	st.b	$r5,$r12,4(0x4)
    1944:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1948:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19b0 <memset+0x198>
    194c:	29001585 	st.b	$r5,$r12,5(0x5)
    1950:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1954:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19b0 <memset+0x198>
    1958:	29001985 	st.b	$r5,$r12,6(0x6)
    195c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1960:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19b0 <memset+0x198>
    1964:	29001d85 	st.b	$r5,$r12,7(0x7)
    1968:	028021ae 	addi.w	$r14,$r13,8(0x8)
    196c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19b0 <memset+0x198>
    1970:	29002185 	st.b	$r5,$r12,8(0x8)
    1974:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1978:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19b0 <memset+0x198>
    197c:	29002585 	st.b	$r5,$r12,9(0x9)
    1980:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1984:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19b0 <memset+0x198>
    1988:	29002985 	st.b	$r5,$r12,10(0xa)
    198c:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1990:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19b0 <memset+0x198>
    1994:	29002d85 	st.b	$r5,$r12,11(0xb)
    1998:	028031ae 	addi.w	$r14,$r13,12(0xc)
    199c:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19b0 <memset+0x198>
    19a0:	29003185 	st.b	$r5,$r12,12(0xc)
    19a4:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19a8:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19b0 <memset+0x198>
    19ac:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19b0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19b4:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19b8:	53ff03ff 	b	-256(0xfffff00) # 18b8 <memset+0xa0>
    19bc:	4c000020 	jirl	$r0,$r1,0
    19c0:	02800411 	addi.w	$r17,$r0,1(0x1)
    19c4:	53fef7ff 	b	-268(0xffffef4) # 18b8 <memset+0xa0>
    19c8:	0015008e 	move	$r14,$r4
    19cc:	00150011 	move	$r17,$r0
    19d0:	53feebff 	b	-280(0xffffee8) # 18b8 <memset+0xa0>
    19d4:	0015008c 	move	$r12,$r4
    19d8:	0015000d 	move	$r13,$r0
    19dc:	53ff37ff 	b	-204(0xfffff34) # 1910 <memset+0xf8>
    19e0:	02800811 	addi.w	$r17,$r0,2(0x2)
    19e4:	53fed7ff 	b	-300(0xffffed4) # 18b8 <memset+0xa0>
    19e8:	02801011 	addi.w	$r17,$r0,4(0x4)
    19ec:	53fecfff 	b	-308(0xffffecc) # 18b8 <memset+0xa0>
    19f0:	02801411 	addi.w	$r17,$r0,5(0x5)
    19f4:	53fec7ff 	b	-316(0xffffec4) # 18b8 <memset+0xa0>
    19f8:	02801811 	addi.w	$r17,$r0,6(0x6)
    19fc:	53febfff 	b	-324(0xffffebc) # 18b8 <memset+0xa0>

0000000000001a00 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a00:	2800008c 	ld.b	$r12,$r4,0
    1a04:	280000ae 	ld.b	$r14,$r5,0
    1a08:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a3c <strcmp+0x3c>
    1a0c:	40003980 	beqz	$r12,56(0x38) # 1a44 <strcmp+0x44>
    1a10:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a14:	50000800 	b	8(0x8) # 1a1c <strcmp+0x1c>
    1a18:	400019a0 	beqz	$r13,24(0x18) # 1a30 <strcmp+0x30>
    1a1c:	3800308d 	ldx.b	$r13,$r4,$r12
    1a20:	380030ae 	ldx.b	$r14,$r5,$r12
    1a24:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a28:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a18 <strcmp+0x18>
    1a2c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a30:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a34:	001111a4 	sub.w	$r4,$r13,$r4
    1a38:	4c000020 	jirl	$r0,$r1,0
    1a3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a40:	53fff3ff 	b	-16(0xffffff0) # 1a30 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a44:	0015000d 	move	$r13,$r0
    1a48:	53ffebff 	b	-24(0xfffffe8) # 1a30 <strcmp+0x30>

0000000000001a4c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a4c:	400054c0 	beqz	$r6,84(0x54) # 1aa0 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a50:	2a00008d 	ld.bu	$r13,$r4,0
    1a54:	2a0000ae 	ld.bu	$r14,$r5,0
    1a58:	40003da0 	beqz	$r13,60(0x3c) # 1a94 <strncmp+0x48>
    1a5c:	40003dc0 	beqz	$r14,60(0x3c) # 1a98 <strncmp+0x4c>
    if (!n--)
    1a60:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a64:	400034c0 	beqz	$r6,52(0x34) # 1a98 <strncmp+0x4c>
    1a68:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a6c:	580019ae 	beq	$r13,$r14,24(0x18) # 1a84 <strncmp+0x38>
    1a70:	50002800 	b	40(0x28) # 1a98 <strncmp+0x4c>
    1a74:	400035c0 	beqz	$r14,52(0x34) # 1aa8 <strncmp+0x5c>
    1a78:	580020cc 	beq	$r6,$r12,32(0x20) # 1a98 <strncmp+0x4c>
    1a7c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a80:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1aa8 <strncmp+0x5c>
    1a84:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a88:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a8c:	001501af 	move	$r15,$r13
    1a90:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a74 <strncmp+0x28>
    1a94:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a98:	001139a4 	sub.w	$r4,$r13,$r14
    1a9c:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1aa0:	00150004 	move	$r4,$r0
}
    1aa4:	4c000020 	jirl	$r0,$r1,0
    1aa8:	001501ed 	move	$r13,$r15
    return *l - *r;
    1aac:	001139a4 	sub.w	$r4,$r13,$r14
    1ab0:	4c000020 	jirl	$r0,$r1,0

0000000000001ab4 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ab4:	03401c8c 	andi	$r12,$r4,0x7
    1ab8:	4000b180 	beqz	$r12,176(0xb0) # 1b68 <strlen+0xb4>
        if (!*s)
    1abc:	2800008c 	ld.b	$r12,$r4,0
    1ac0:	4000b180 	beqz	$r12,176(0xb0) # 1b70 <strlen+0xbc>
    1ac4:	0015008c 	move	$r12,$r4
    1ac8:	50000c00 	b	12(0xc) # 1ad4 <strlen+0x20>
    1acc:	2800018d 	ld.b	$r13,$r12,0
    1ad0:	400091a0 	beqz	$r13,144(0x90) # 1b60 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ad4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ad8:	03401d8d 	andi	$r13,$r12,0x7
    1adc:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1acc <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1ae0:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ae4:	2600018f 	ldptr.d	$r15,$r12,0
    1ae8:	03bbfdad 	ori	$r13,$r13,0xeff
    1aec:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1af0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1af4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1af8:	038201ce 	ori	$r14,$r14,0x80
    1afc:	0010b5ed 	add.d	$r13,$r15,$r13
    1b00:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b04:	0016bdad 	andn	$r13,$r13,$r15
    1b08:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b0c:	0014b9ae 	and	$r14,$r13,$r14
    1b10:	440049c0 	bnez	$r14,72(0x48) # 1b58 <strlen+0xa4>
    1b14:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b18:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b1c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b20:	2600018e 	ldptr.d	$r14,$r12,0
    1b24:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b28:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b2c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b30:	0382020f 	ori	$r15,$r16,0x80
    1b34:	0010b5cd 	add.d	$r13,$r14,$r13
    1b38:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b3c:	0016b9ad 	andn	$r13,$r13,$r14
    1b40:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b44:	0014bdad 	and	$r13,$r13,$r15
    1b48:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b1c <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b4c:	2800018d 	ld.b	$r13,$r12,0
    1b50:	400011a0 	beqz	$r13,16(0x10) # 1b60 <strlen+0xac>
    1b54:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b58:	2800018d 	ld.b	$r13,$r12,0
    1b5c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b54 <strlen+0xa0>
        ;
    return s - a;
    1b60:	00119184 	sub.d	$r4,$r12,$r4
}
    1b64:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b68:	0015008c 	move	$r12,$r4
    1b6c:	53ff77ff 	b	-140(0xfffff74) # 1ae0 <strlen+0x2c>
        if (!*s)
    1b70:	00150004 	move	$r4,$r0
            return s - a;
    1b74:	4c000020 	jirl	$r0,$r1,0

0000000000001b78 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b78:	03401c8c 	andi	$r12,$r4,0x7
    1b7c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b80:	44002180 	bnez	$r12,32(0x20) # 1ba0 <memchr+0x28>
    1b84:	50002c00 	b	44(0x2c) # 1bb0 <memchr+0x38>
    1b88:	2a00008c 	ld.bu	$r12,$r4,0
    1b8c:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c84 <memchr+0x10c>
    1b90:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b94:	03401c8c 	andi	$r12,$r4,0x7
    1b98:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b9c:	40001580 	beqz	$r12,20(0x14) # 1bb0 <memchr+0x38>
    1ba0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b88 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1ba4:	0015000d 	move	$r13,$r0
}
    1ba8:	001501a4 	move	$r4,$r13
    1bac:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bb0:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bb4:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1ba8 <memchr+0x30>
    1bb8:	2a00008c 	ld.bu	$r12,$r4,0
    1bbc:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c84 <memchr+0x10c>
        size_t k = ONES * c;
    1bc0:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bc4:	0384058c 	ori	$r12,$r12,0x101
    1bc8:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bcc:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bd0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bd4:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bd8:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c94 <memchr+0x11c>
    1bdc:	2600008d 	ldptr.d	$r13,$r4,0
    1be0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1be4:	038201ce 	ori	$r14,$r14,0x80
    1be8:	0015b60d 	xor	$r13,$r16,$r13
    1bec:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bf0:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bf4:	0016b58c 	andn	$r12,$r12,$r13
    1bf8:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bfc:	0014b98c 	and	$r12,$r12,$r14
    1c00:	44009580 	bnez	$r12,148(0x94) # 1c94 <memchr+0x11c>
    1c04:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c08:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c0c:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c10:	50002000 	b	32(0x20) # 1c30 <memchr+0xb8>
    1c14:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c18:	0015b20c 	xor	$r12,$r16,$r12
    1c1c:	0010b98e 	add.d	$r14,$r12,$r14
    1c20:	0016b1cc 	andn	$r12,$r14,$r12
    1c24:	0014bd8c 	and	$r12,$r12,$r15
    1c28:	44006580 	bnez	$r12,100(0x64) # 1c8c <memchr+0x114>
    1c2c:	001501a4 	move	$r4,$r13
    1c30:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c34:	0382022f 	ori	$r15,$r17,0x80
    1c38:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c3c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c40:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c44:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c48:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c4c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c50:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c14 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c54:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1ba4 <memchr+0x2c>
    1c58:	2a0001ac 	ld.bu	$r12,$r13,0
    1c5c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1ba8 <memchr+0x30>
    1c60:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c64:	001099a6 	add.d	$r6,$r13,$r6
    1c68:	50001000 	b	16(0x10) # 1c78 <memchr+0x100>
    1c6c:	2a00018e 	ld.bu	$r14,$r12,0
    1c70:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c74:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1ba8 <memchr+0x30>
    1c78:	0015018d 	move	$r13,$r12
    1c7c:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c6c <memchr+0xf4>
    1c80:	53ff27ff 	b	-220(0xfffff24) # 1ba4 <memchr+0x2c>
    1c84:	0015008d 	move	$r13,$r4
    1c88:	53ffd3ff 	b	-48(0xfffffd0) # 1c58 <memchr+0xe0>
    1c8c:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c90:	53ffcfff 	b	-52(0xfffffcc) # 1c5c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c94:	0015008d 	move	$r13,$r4
    1c98:	53ffcbff 	b	-56(0xfffffc8) # 1c60 <memchr+0xe8>

0000000000001c9c <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c9c:	03401c8c 	andi	$r12,$r4,0x7
    1ca0:	40011980 	beqz	$r12,280(0x118) # 1db8 <strnlen+0x11c>
    1ca4:	4000f4a0 	beqz	$r5,244(0xf4) # 1d98 <strnlen+0xfc>
    1ca8:	2a00008c 	ld.bu	$r12,$r4,0
    1cac:	4000f580 	beqz	$r12,244(0xf4) # 1da0 <strnlen+0x104>
    1cb0:	001500ac 	move	$r12,$r5
    1cb4:	0015008d 	move	$r13,$r4
    1cb8:	50001000 	b	16(0x10) # 1cc8 <strnlen+0x2c>
    1cbc:	4000dd80 	beqz	$r12,220(0xdc) # 1d98 <strnlen+0xfc>
    1cc0:	2a0001ae 	ld.bu	$r14,$r13,0
    1cc4:	4000e5c0 	beqz	$r14,228(0xe4) # 1da8 <strnlen+0x10c>
    1cc8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1ccc:	03401dae 	andi	$r14,$r13,0x7
    1cd0:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cd4:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cbc <strnlen+0x20>
    if (n && *s != c)
    1cd8:	4000c180 	beqz	$r12,192(0xc0) # 1d98 <strnlen+0xfc>
    1cdc:	2a0001ae 	ld.bu	$r14,$r13,0
    1ce0:	4000c9c0 	beqz	$r14,200(0xc8) # 1da8 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ce4:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1ce8:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dc4 <strnlen+0x128>
    1cec:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cf0:	260001b0 	ldptr.d	$r16,$r13,0
    1cf4:	03bbfdce 	ori	$r14,$r14,0xeff
    1cf8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cfc:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d00:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d04:	038201ef 	ori	$r15,$r15,0x80
    1d08:	0010ba0e 	add.d	$r14,$r16,$r14
    1d0c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d10:	0016c1ce 	andn	$r14,$r14,$r16
    1d14:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d18:	0014bdcf 	and	$r15,$r14,$r15
    1d1c:	4400a9e0 	bnez	$r15,168(0xa8) # 1dc4 <strnlen+0x128>
    1d20:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d24:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d28:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d2c:	50001c00 	b	28(0x1c) # 1d48 <strnlen+0xac>
    1d30:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d34:	0010b9ee 	add.d	$r14,$r15,$r14
    1d38:	0016bdce 	andn	$r14,$r14,$r15
    1d3c:	0014c1ce 	and	$r14,$r14,$r16
    1d40:	440071c0 	bnez	$r14,112(0x70) # 1db0 <strnlen+0x114>
    1d44:	0015022d 	move	$r13,$r17
    1d48:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d4c:	03820250 	ori	$r16,$r18,0x80
    1d50:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d54:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d58:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d5c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d60:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d64:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d68:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d30 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d6c:	40002d80 	beqz	$r12,44(0x2c) # 1d98 <strnlen+0xfc>
    1d70:	2a00022d 	ld.bu	$r13,$r17,0
    1d74:	400021a0 	beqz	$r13,32(0x20) # 1d94 <strnlen+0xf8>
    1d78:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d7c:	0010b22c 	add.d	$r12,$r17,$r12
    1d80:	001501b1 	move	$r17,$r13
    1d84:	5800158d 	beq	$r12,$r13,20(0x14) # 1d98 <strnlen+0xfc>
    1d88:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d8c:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d90:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d80 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d94:	00119225 	sub.d	$r5,$r17,$r4
}
    1d98:	001500a4 	move	$r4,$r5
    1d9c:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1da0:	001500ac 	move	$r12,$r5
    1da4:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1da8:	001501b1 	move	$r17,$r13
    1dac:	53ffc7ff 	b	-60(0xfffffc4) # 1d70 <strnlen+0xd4>
    1db0:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1db4:	53ffc3ff 	b	-64(0xfffffc0) # 1d74 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1db8:	001500ac 	move	$r12,$r5
    1dbc:	0015008d 	move	$r13,$r4
    1dc0:	53ff1bff 	b	-232(0xfffff18) # 1cd8 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dc4:	001501b1 	move	$r17,$r13
    1dc8:	53ffb3ff 	b	-80(0xfffffb0) # 1d78 <strnlen+0xdc>

0000000000001dcc <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dcc:	0015948c 	xor	$r12,$r4,$r5
    1dd0:	03401d8c 	andi	$r12,$r12,0x7
    1dd4:	4400ad80 	bnez	$r12,172(0xac) # 1e80 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dd8:	03401cac 	andi	$r12,$r5,0x7
    1ddc:	40003180 	beqz	$r12,48(0x30) # 1e0c <strcpy+0x40>
            if (!(*d = *s))
    1de0:	280000ac 	ld.b	$r12,$r5,0
    1de4:	2900008c 	st.b	$r12,$r4,0
    1de8:	44001580 	bnez	$r12,20(0x14) # 1dfc <strcpy+0x30>
    1dec:	5000bc00 	b	188(0xbc) # 1ea8 <strcpy+0xdc>
    1df0:	280000ac 	ld.b	$r12,$r5,0
    1df4:	2900008c 	st.b	$r12,$r4,0
    1df8:	4000a980 	beqz	$r12,168(0xa8) # 1ea0 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1dfc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e00:	03401cac 	andi	$r12,$r5,0x7
    1e04:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e08:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1df0 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e0c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e10:	260000ae 	ldptr.d	$r14,$r5,0
    1e14:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e18:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e1c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e20:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e24:	038201ad 	ori	$r13,$r13,0x80
    1e28:	0010b1cc 	add.d	$r12,$r14,$r12
    1e2c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e30:	0016b98c 	andn	$r12,$r12,$r14
    1e34:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e38:	0014b58c 	and	$r12,$r12,$r13
    1e3c:	44004580 	bnez	$r12,68(0x44) # 1e80 <strcpy+0xb4>
    1e40:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e44:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e48:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e4c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e50:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e54:	260000ae 	ldptr.d	$r14,$r5,0
    1e58:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e5c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e60:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e64:	038201ed 	ori	$r13,$r15,0x80
    1e68:	0010b1cc 	add.d	$r12,$r14,$r12
    1e6c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e70:	0016b98c 	andn	$r12,$r12,$r14
    1e74:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e78:	0014b58c 	and	$r12,$r12,$r13
    1e7c:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e48 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e80:	280000ac 	ld.b	$r12,$r5,0
    1e84:	2900008c 	st.b	$r12,$r4,0
    1e88:	40001d80 	beqz	$r12,28(0x1c) # 1ea4 <strcpy+0xd8>
    1e8c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e90:	280000ac 	ld.b	$r12,$r5,0
    1e94:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e98:	2900008c 	st.b	$r12,$r4,0
    1e9c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e8c <strcpy+0xc0>
        ;
    return d;
}
    1ea0:	4c000020 	jirl	$r0,$r1,0
    1ea4:	4c000020 	jirl	$r0,$r1,0
    1ea8:	4c000020 	jirl	$r0,$r1,0

0000000000001eac <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1eac:	0015948c 	xor	$r12,$r4,$r5
    1eb0:	03401d8c 	andi	$r12,$r12,0x7
    1eb4:	4400ad80 	bnez	$r12,172(0xac) # 1f60 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1eb8:	03401cac 	andi	$r12,$r5,0x7
    1ebc:	44010180 	bnez	$r12,256(0x100) # 1fbc <strncpy+0x110>
            ;
        if (!n || !*s)
    1ec0:	400100c0 	beqz	$r6,256(0x100) # 1fc0 <strncpy+0x114>
    1ec4:	280000af 	ld.b	$r15,$r5,0
    1ec8:	400105e0 	beqz	$r15,260(0x104) # 1fcc <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ecc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ed0:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21a8 <strncpy+0x2fc>
    1ed4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ed8:	260000ae 	ldptr.d	$r14,$r5,0
    1edc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ee0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ee4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ee8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1eec:	038201ad 	ori	$r13,$r13,0x80
    1ef0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ef4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ef8:	0016b98c 	andn	$r12,$r12,$r14
    1efc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f00:	0014b58c 	and	$r12,$r12,$r13
    1f04:	4402a580 	bnez	$r12,676(0x2a4) # 21a8 <strncpy+0x2fc>
    1f08:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f0c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f10:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f14:	50001c00 	b	28(0x1c) # 1f30 <strncpy+0x84>
    1f18:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f1c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f20:	0016b98c 	andn	$r12,$r12,$r14
    1f24:	0014b58c 	and	$r12,$r12,$r13
    1f28:	44024580 	bnez	$r12,580(0x244) # 216c <strncpy+0x2c0>
    1f2c:	001501e5 	move	$r5,$r15
    1f30:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f34:	0382020d 	ori	$r13,$r16,0x80
    1f38:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f3c:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f40:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f44:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f48:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f4c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f50:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f54:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f58:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f18 <strncpy+0x6c>
    1f5c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f60:	400060c0 	beqz	$r6,96(0x60) # 1fc0 <strncpy+0x114>
    1f64:	280000ac 	ld.b	$r12,$r5,0
    1f68:	0015008d 	move	$r13,$r4
    1f6c:	2900008c 	st.b	$r12,$r4,0
    1f70:	44001580 	bnez	$r12,20(0x14) # 1f84 <strncpy+0xd8>
    1f74:	50005c00 	b	92(0x5c) # 1fd0 <strncpy+0x124>
    1f78:	280000ac 	ld.b	$r12,$r5,0
    1f7c:	290001ac 	st.b	$r12,$r13,0
    1f80:	40005180 	beqz	$r12,80(0x50) # 1fd0 <strncpy+0x124>
    1f84:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f88:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f8c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f90:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f78 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f94:	001501a4 	move	$r4,$r13
    1f98:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f9c:	280000ac 	ld.b	$r12,$r5,0
    1fa0:	2900008c 	st.b	$r12,$r4,0
    1fa4:	40002980 	beqz	$r12,40(0x28) # 1fcc <strncpy+0x120>
    1fa8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fac:	03401cac 	andi	$r12,$r5,0x7
    1fb0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fb4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fb8:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ec0 <strncpy+0x14>
    1fbc:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f9c <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fc0:	0015008d 	move	$r13,$r4
}
    1fc4:	001501a4 	move	$r4,$r13
    1fc8:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fcc:	0015008d 	move	$r13,$r4
    1fd0:	0011b40c 	sub.d	$r12,$r0,$r13
    1fd4:	03401d8c 	andi	$r12,$r12,0x7
    1fd8:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fdc:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fe0:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fe4:	0013bdce 	masknez	$r14,$r14,$r15
    1fe8:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fec:	00133e0f 	maskeqz	$r15,$r16,$r15
    1ff0:	00153dce 	or	$r14,$r14,$r15
    1ff4:	024004d0 	sltui	$r16,$r6,1(0x1)
    1ff8:	00131a31 	maskeqz	$r17,$r17,$r6
    1ffc:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2000:	001540d0 	or	$r16,$r6,$r16
    2004:	68017a2e 	bltu	$r17,$r14,376(0x178) # 217c <strncpy+0x2d0>
    2008:	40015980 	beqz	$r12,344(0x158) # 2160 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    200c:	290001a0 	st.b	$r0,$r13,0
    2010:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2014:	5801458f 	beq	$r12,$r15,324(0x144) # 2158 <strncpy+0x2ac>
    2018:	290005a0 	st.b	$r0,$r13,1(0x1)
    201c:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2020:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2024:	5801658f 	beq	$r12,$r15,356(0x164) # 2188 <strncpy+0x2dc>
    2028:	290009a0 	st.b	$r0,$r13,2(0x2)
    202c:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2030:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2034:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2150 <strncpy+0x2a4>
    2038:	29000da0 	st.b	$r0,$r13,3(0x3)
    203c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2040:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2044:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2190 <strncpy+0x2e4>
    2048:	290011a0 	st.b	$r0,$r13,4(0x4)
    204c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2050:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2054:	5801458f 	beq	$r12,$r15,324(0x144) # 2198 <strncpy+0x2ec>
    2058:	290015a0 	st.b	$r0,$r13,5(0x5)
    205c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2060:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2064:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21a0 <strncpy+0x2f4>
    2068:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    206c:	290019a0 	st.b	$r0,$r13,6(0x6)
    2070:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2074:	0011b210 	sub.d	$r16,$r16,$r12
    2078:	00450e11 	srli.d	$r17,$r16,0x3
    207c:	0010b1ac 	add.d	$r12,$r13,$r12
    2080:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2084:	27000180 	stptr.d	$r0,$r12,0
    2088:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    208c:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2084 <strncpy+0x1d8>
    2090:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2094:	0014c611 	and	$r17,$r16,$r17
    2098:	0040822f 	slli.w	$r15,$r17,0x0
    209c:	001049ef 	add.w	$r15,$r15,$r18
    20a0:	0010c5cc 	add.d	$r12,$r14,$r17
    20a4:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f94 <strncpy+0xe8>
    20a8:	29000180 	st.b	$r0,$r12,0
    20ac:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20b0:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f94 <strncpy+0xe8>
    20b4:	29000580 	st.b	$r0,$r12,1(0x1)
    20b8:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20bc:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f94 <strncpy+0xe8>
    20c0:	29000980 	st.b	$r0,$r12,2(0x2)
    20c4:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20c8:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f94 <strncpy+0xe8>
    20cc:	29000d80 	st.b	$r0,$r12,3(0x3)
    20d0:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20d4:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f94 <strncpy+0xe8>
    20d8:	29001180 	st.b	$r0,$r12,4(0x4)
    20dc:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20e0:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f94 <strncpy+0xe8>
    20e4:	29001580 	st.b	$r0,$r12,5(0x5)
    20e8:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20ec:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f94 <strncpy+0xe8>
    20f0:	29001980 	st.b	$r0,$r12,6(0x6)
    20f4:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20f8:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f94 <strncpy+0xe8>
    20fc:	29001d80 	st.b	$r0,$r12,7(0x7)
    2100:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2104:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f94 <strncpy+0xe8>
    2108:	29002180 	st.b	$r0,$r12,8(0x8)
    210c:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2110:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f94 <strncpy+0xe8>
    2114:	29002580 	st.b	$r0,$r12,9(0x9)
    2118:	028029ee 	addi.w	$r14,$r15,10(0xa)
    211c:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f94 <strncpy+0xe8>
    2120:	29002980 	st.b	$r0,$r12,10(0xa)
    2124:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2128:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f94 <strncpy+0xe8>
    212c:	29002d80 	st.b	$r0,$r12,11(0xb)
    2130:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2134:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f94 <strncpy+0xe8>
    2138:	29003180 	st.b	$r0,$r12,12(0xc)
    213c:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2140:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f94 <strncpy+0xe8>
    2144:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2148:	001501a4 	move	$r4,$r13
    214c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2150:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2154:	53ff23ff 	b	-224(0xfffff20) # 2074 <strncpy+0x1c8>
    2158:	02800412 	addi.w	$r18,$r0,1(0x1)
    215c:	53ff1bff 	b	-232(0xfffff18) # 2074 <strncpy+0x1c8>
    2160:	001501ae 	move	$r14,$r13
    2164:	00150012 	move	$r18,$r0
    2168:	53ff0fff 	b	-244(0xfffff0c) # 2074 <strncpy+0x1c8>
    216c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2170:	0015008d 	move	$r13,$r4
    2174:	001501e5 	move	$r5,$r15
    2178:	53fdf7ff 	b	-524(0xffffdf4) # 1f6c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    217c:	001501ac 	move	$r12,$r13
    2180:	0015000f 	move	$r15,$r0
    2184:	53ff27ff 	b	-220(0xfffff24) # 20a8 <strncpy+0x1fc>
    2188:	02800812 	addi.w	$r18,$r0,2(0x2)
    218c:	53feebff 	b	-280(0xffffee8) # 2074 <strncpy+0x1c8>
    2190:	02801012 	addi.w	$r18,$r0,4(0x4)
    2194:	53fee3ff 	b	-288(0xffffee0) # 2074 <strncpy+0x1c8>
    2198:	02801412 	addi.w	$r18,$r0,5(0x5)
    219c:	53fedbff 	b	-296(0xffffed8) # 2074 <strncpy+0x1c8>
    21a0:	02801812 	addi.w	$r18,$r0,6(0x6)
    21a4:	53fed3ff 	b	-304(0xffffed0) # 2074 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21a8:	2900008f 	st.b	$r15,$r4,0
    21ac:	0015008d 	move	$r13,$r4
    21b0:	53fdd7ff 	b	-556(0xffffdd4) # 1f84 <strncpy+0xd8>

00000000000021b4 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21b4:	0015008c 	move	$r12,$r4
    21b8:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21bc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21c0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21c4:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21c8:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21cc:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21d0:	00408084 	slli.w	$r4,$r4,0x0
}
    21d4:	4c000020 	jirl	$r0,$r1,0

00000000000021d8 <openat>:
    register long a7 __asm__("a7") = n;
    21d8:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21dc:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21e0:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21e4:	00408084 	slli.w	$r4,$r4,0x0
}
    21e8:	4c000020 	jirl	$r0,$r1,0

00000000000021ec <close>:
    register long a7 __asm__("a7") = n;
    21ec:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21f0:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21f4:	00408084 	slli.w	$r4,$r4,0x0
}
    21f8:	4c000020 	jirl	$r0,$r1,0

00000000000021fc <read>:
    register long a7 __asm__("a7") = n;
    21fc:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2200:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2204:	4c000020 	jirl	$r0,$r1,0

0000000000002208 <write>:
    register long a7 __asm__("a7") = n;
    2208:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    220c:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2210:	4c000020 	jirl	$r0,$r1,0

0000000000002214 <getpid>:
    register long a7 __asm__("a7") = n;
    2214:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2218:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    221c:	00408084 	slli.w	$r4,$r4,0x0
}
    2220:	4c000020 	jirl	$r0,$r1,0

0000000000002224 <getppid>:
    register long a7 __asm__("a7") = n;
    2224:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2228:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    222c:	00408084 	slli.w	$r4,$r4,0x0
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2234:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2238:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <fork>:
    register long a7 __asm__("a7") = n;
    2244:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2248:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    224c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2250:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2254:	00408084 	slli.w	$r4,$r4,0x0
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    225c:	001500c5 	move	$r5,$r6
    if (stack)
    2260:	400008c0 	beqz	$r6,8(0x8) # 2268 <clone+0xc>
	stack += stack_size;
    2264:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2268:	00408106 	slli.w	$r6,$r8,0x0
    226c:	00150009 	move	$r9,$r0
    2270:	00150008 	move	$r8,$r0
    2274:	00150007 	move	$r7,$r0
    2278:	5002c800 	b	712(0x2c8) # 2540 <__clone>

000000000000227c <exit>:
    register long a7 __asm__("a7") = n;
    227c:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2280:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <waitpid>:
    register long a7 __asm__("a7") = n;
    2288:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    228c:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2290:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2294:	00408084 	slli.w	$r4,$r4,0x0
}
    2298:	4c000020 	jirl	$r0,$r1,0

000000000000229c <exec>:
    register long a7 __asm__("a7") = n;
    229c:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22a0:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22a4:	00408084 	slli.w	$r4,$r4,0x0
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <execve>:
    register long a7 __asm__("a7") = n;
    22ac:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22b0:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22b4:	00408084 	slli.w	$r4,$r4,0x0
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <times>:
    register long a7 __asm__("a7") = n;
    22bc:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22c0:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <get_time>:

int64 get_time()
{
    22cc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22d0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22d4:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22d8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22dc:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22e0:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22e4:	44003c80 	bnez	$r4,60(0x3c) # 2320 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22e8:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22ec:	039f3c8c 	ori	$r12,$r4,0x7cf
    22f0:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22f4:	2a40006d 	ld.hu	$r13,$r3,0
    22f8:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22fc:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2300:	00450c84 	srli.d	$r4,$r4,0x3
    2304:	001eb084 	mulh.du	$r4,$r4,$r12
    2308:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    230c:	001db1ac 	mul.d	$r12,$r13,$r12
    2310:	00451084 	srli.d	$r4,$r4,0x4
    2314:	00109184 	add.d	$r4,$r12,$r4
}
    2318:	02c04063 	addi.d	$r3,$r3,16(0x10)
    231c:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2320:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2324:	53fff7ff 	b	-12(0xffffff4) # 2318 <get_time+0x4c>

0000000000002328 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2328:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    232c:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2330:	00408084 	slli.w	$r4,$r4,0x0
}
    2334:	4c000020 	jirl	$r0,$r1,0

0000000000002338 <time>:
    register long a7 __asm__("a7") = n;
    2338:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    233c:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2340:	00408084 	slli.w	$r4,$r4,0x0
}
    2344:	4c000020 	jirl	$r0,$r1,0

0000000000002348 <sleep>:

int sleep(unsigned long long time)
{
    2348:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    234c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2350:	00150064 	move	$r4,$r3
    2354:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2358:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    235c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2360:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2364:	44001080 	bnez	$r4,16(0x10) # 2374 <sleep+0x2c>
    return 0;
    2368:	00150004 	move	$r4,$r0
}
    236c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2370:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2374:	24000064 	ldptr.w	$r4,$r3,0
}
    2378:	02c04063 	addi.d	$r3,$r3,16(0x10)
    237c:	4c000020 	jirl	$r0,$r1,0

0000000000002380 <set_priority>:
    register long a7 __asm__("a7") = n;
    2380:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2384:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2388:	00408084 	slli.w	$r4,$r4,0x0
}
    238c:	4c000020 	jirl	$r0,$r1,0

0000000000002390 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2390:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2394:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2398:	4c000020 	jirl	$r0,$r1,0

000000000000239c <munmap>:
    register long a7 __asm__("a7") = n;
    239c:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a0:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23a4:	00408084 	slli.w	$r4,$r4,0x0
}
    23a8:	4c000020 	jirl	$r0,$r1,0

00000000000023ac <wait>:

int wait(int *code)
{
    23ac:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23b0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23b4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23b8:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23bc:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23c0:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23c4:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23c8:	4c000020 	jirl	$r0,$r1,0

00000000000023cc <spawn>:
    register long a7 __asm__("a7") = n;
    23cc:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23d0:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23d4:	00408084 	slli.w	$r4,$r4,0x0
}
    23d8:	4c000020 	jirl	$r0,$r1,0

00000000000023dc <mailread>:
    register long a7 __asm__("a7") = n;
    23dc:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e0:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23e4:	00408084 	slli.w	$r4,$r4,0x0
}
    23e8:	4c000020 	jirl	$r0,$r1,0

00000000000023ec <mailwrite>:
    register long a7 __asm__("a7") = n;
    23ec:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23f0:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <fstat>:
    register long a7 __asm__("a7") = n;
    23fc:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2400:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2404:	00408084 	slli.w	$r4,$r4,0x0
}
    2408:	4c000020 	jirl	$r0,$r1,0

000000000000240c <sys_linkat>:
    register long a7 __asm__("a7") = n;
    240c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2410:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2414:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2420:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2424:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2428:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    242c:	00408084 	slli.w	$r4,$r4,0x0
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <link>:

int link(char *old_path, char *new_path)
{
    2434:	0015008c 	move	$r12,$r4
    2438:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    243c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2440:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2444:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2448:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    244c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2450:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2454:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2458:	4c000020 	jirl	$r0,$r1,0

000000000000245c <unlink>:

int unlink(char *path)
{
    245c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2460:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2464:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2468:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    246c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2470:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2474:	4c000020 	jirl	$r0,$r1,0

0000000000002478 <uname>:
    register long a7 __asm__("a7") = n;
    2478:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    247c:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <brk>:
    register long a7 __asm__("a7") = n;
    2488:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    248c:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2490:	00408084 	slli.w	$r4,$r4,0x0
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <getcwd>:
    register long a7 __asm__("a7") = n;
    2498:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    249c:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <chdir>:
    register long a7 __asm__("a7") = n;
    24a4:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24a8:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24ac:	00408084 	slli.w	$r4,$r4,0x0
}
    24b0:	4c000020 	jirl	$r0,$r1,0

00000000000024b4 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24b4:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24b8:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24bc:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24c0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24c4:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c8:	002b0000 	syscall	0x0
    24cc:	00408084 	slli.w	$r4,$r4,0x0
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <getdents>:
    register long a7 __asm__("a7") = n;
    24d4:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24d8:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24dc:	00408084 	slli.w	$r4,$r4,0x0
}
    24e0:	4c000020 	jirl	$r0,$r1,0

00000000000024e4 <pipe>:
    register long a7 __asm__("a7") = n;
    24e4:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24e8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24ec:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24f0:	00408084 	slli.w	$r4,$r4,0x0
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <dup>:
    register long a7 __asm__("a7") = n;
    24f8:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24fc:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <dup2>:
    register long a7 __asm__("a7") = n;
    2508:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    250c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2510:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <mount>:
    register long a7 __asm__("a7") = n;
    251c:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2520:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2524:	00408084 	slli.w	$r4,$r4,0x0
}
    2528:	4c000020 	jirl	$r0,$r1,0

000000000000252c <umount>:
    register long a7 __asm__("a7") = n;
    252c:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2530:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2534:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2538:	00408084 	slli.w	$r4,$r4,0x0
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2540:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2544:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2548:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    254c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2550:	00150106 	move	$r6,$r8
	move $a3, $a5
    2554:	00150127 	move	$r7,$r9
	move $a4, $a6
    2558:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    255c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2560:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2564:	40000880 	beqz	$r4,8(0x8) # 256c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2568:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    256c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2570:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2574:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2578:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    257c:	002b0000 	syscall	0x0
