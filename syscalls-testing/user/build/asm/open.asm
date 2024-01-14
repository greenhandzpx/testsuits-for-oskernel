
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/open:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400dc00 	bl	220(0xdc) # 10e0 <__start_main>

0000000000001008 <test_open>:
#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"

void test_open() {
    1008:	02fbc063 	addi.d	$r3,$r3,-272(0xef0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d63084 	addi.d	$r4,$r4,1420(0x58c)
void test_open() {
    1014:	29c42061 	st.d	$r1,$r3,264(0x108)
    1018:	29c40077 	st.d	$r23,$r3,256(0x100)
	TEST_START(__func__);
    101c:	5403cc00 	bl	972(0x3cc) # 13e8 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d7a084 	addi.d	$r4,$r4,1512(0x5e8)
    1028:	5403c000 	bl	960(0x3c0) # 13e8 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1034:	5403b400 	bl	948(0x3b4) # 13e8 <puts>
	// O_RDONLY = 0, O_WRONLY = 1
	int fd = open("./text.txt", 0);
    1038:	00150005 	move	$r5,$r0
    103c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1040:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1044:	54118800 	bl	4488(0x1188) # 21cc <open>
    1048:	00150097 	move	$r23,$r4
	assert(fd >= 0);
    104c:	60006880 	blt	$r4,$r0,104(0x68) # 10b4 <test_open+0xac>
	char buf[256];
	int size = read(fd, buf, 256);
    1050:	00150065 	move	$r5,$r3
    1054:	02840006 	addi.w	$r6,$r0,256(0x100)
    1058:	001502e4 	move	$r4,$r23
    105c:	5411b800 	bl	4536(0x11b8) # 2214 <read>
    1060:	00408084 	slli.w	$r4,$r4,0x0
	if (size < 0) {
		size = 0;
	}
	write(STDOUT, buf, size);
    1064:	00df7c86 	bstrpick.d	$r6,$r4,0x1f,0x1f
    1068:	00139886 	masknez	$r6,$r4,$r6
    106c:	00150065 	move	$r5,$r3
    1070:	02800404 	addi.w	$r4,$r0,1(0x1)
    1074:	5411ac00 	bl	4524(0x11ac) # 2220 <write>
	close(fd);
    1078:	001502e4 	move	$r4,$r23
    107c:	54118800 	bl	4488(0x1188) # 2204 <close>
	TEST_END(__func__);
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    1088:	54036000 	bl	864(0x360) # 13e8 <puts>
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
    1094:	54035400 	bl	852(0x354) # 13e8 <puts>
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d46084 	addi.d	$r4,$r4,1304(0x518)
    10a0:	54034800 	bl	840(0x348) # 13e8 <puts>
}
    10a4:	28c42061 	ld.d	$r1,$r3,264(0x108)
    10a8:	28c40077 	ld.d	$r23,$r3,256(0x100)
    10ac:	02c44063 	addi.d	$r3,$r3,272(0x110)
    10b0:	4c000020 	jirl	$r0,$r1,0
	assert(fd >= 0);
    10b4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b8:	02d47084 	addi.d	$r4,$r4,1308(0x51c)
    10bc:	54067400 	bl	1652(0x674) # 1730 <panic>
    10c0:	53ff93ff 	b	-112(0xfffff90) # 1050 <test_open+0x48>

00000000000010c4 <main>:

int main(void) {
    10c4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10c8:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_open();
    10cc:	57ff3fff 	bl	-196(0xfffff3c) # 1008 <test_open>
	return 0;
}
    10d0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10d4:	00150004 	move	$r4,$r0
    10d8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10dc:	4c000020 	jirl	$r0,$r1,0

00000000000010e0 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10e0:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10e4:	24000084 	ldptr.w	$r4,$r4,0
{
    10e8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10ec:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10f0:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10f4:	57ffd3ff 	bl	-48(0xfffffd0) # 10c4 <main>
    10f8:	54119c00 	bl	4508(0x119c) # 2294 <exit>
	return 0;
}
    10fc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1100:	00150004 	move	$r4,$r0
    1104:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1108:	4c000020 	jirl	$r0,$r1,0

000000000000110c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    110c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1110:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1114:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12e0 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1118:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    111c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1120:	02d3f18c 	addi.d	$r12,$r12,1276(0x4fc)
    1124:	002195cf 	mod.wu	$r15,$r14,$r5
    1128:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1130 <printint.constprop.0+0x24>
    112c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1130:	002115cd 	div.wu	$r13,$r14,$r5
    1134:	5c0008a0 	bne	$r5,$r0,8(0x8) # 113c <printint.constprop.0+0x30>
    1138:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    113c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1140:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1144:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1148:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    114c:	680219c5 	bltu	$r14,$r5,536(0x218) # 1364 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1150:	002195af 	mod.wu	$r15,$r13,$r5
    1154:	5c0008a0 	bne	$r5,$r0,8(0x8) # 115c <printint.constprop.0+0x50>
    1158:	002a0007 	break	0x7
    115c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1160:	002115ae 	div.wu	$r14,$r13,$r5
    1164:	5c0008a0 	bne	$r5,$r0,8(0x8) # 116c <printint.constprop.0+0x60>
    1168:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    116c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1170:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1174:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1334 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1178:	002195cf 	mod.wu	$r15,$r14,$r5
    117c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1184 <printint.constprop.0+0x78>
    1180:	002a0007 	break	0x7
    1184:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1188:	002115cd 	div.wu	$r13,$r14,$r5
    118c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1194 <printint.constprop.0+0x88>
    1190:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1194:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1198:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    119c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1340 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11a0:	002195af 	mod.wu	$r15,$r13,$r5
    11a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ac <printint.constprop.0+0xa0>
    11a8:	002a0007 	break	0x7
    11ac:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b0:	002115ae 	div.wu	$r14,$r13,$r5
    11b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11bc <printint.constprop.0+0xb0>
    11b8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11bc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c0:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11c4:	680189a5 	bltu	$r13,$r5,392(0x188) # 134c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11c8:	002195cf 	mod.wu	$r15,$r14,$r5
    11cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d4 <printint.constprop.0+0xc8>
    11d0:	002a0007 	break	0x7
    11d4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d8:	002115cd 	div.wu	$r13,$r14,$r5
    11dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e4 <printint.constprop.0+0xd8>
    11e0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e8:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11ec:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1358 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11f0:	002195af 	mod.wu	$r15,$r13,$r5
    11f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11fc <printint.constprop.0+0xf0>
    11f8:	002a0007 	break	0x7
    11fc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1200:	002115ae 	div.wu	$r14,$r13,$r5
    1204:	5c0008a0 	bne	$r5,$r0,8(0x8) # 120c <printint.constprop.0+0x100>
    1208:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    120c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1210:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1214:	680115a5 	bltu	$r13,$r5,276(0x114) # 1328 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1218:	002195cf 	mod.wu	$r15,$r14,$r5
    121c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1224 <printint.constprop.0+0x118>
    1220:	002a0007 	break	0x7
    1224:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1228:	002115cd 	div.wu	$r13,$r14,$r5
    122c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1234 <printint.constprop.0+0x128>
    1230:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1234:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1238:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    123c:	680131c5 	bltu	$r14,$r5,304(0x130) # 136c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1240:	002195af 	mod.wu	$r15,$r13,$r5
    1244:	5c0008a0 	bne	$r5,$r0,8(0x8) # 124c <printint.constprop.0+0x140>
    1248:	002a0007 	break	0x7
    124c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1250:	002115ae 	div.wu	$r14,$r13,$r5
    1254:	5c0008a0 	bne	$r5,$r0,8(0x8) # 125c <printint.constprop.0+0x150>
    1258:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    125c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1260:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1264:	680115a5 	bltu	$r13,$r5,276(0x114) # 1378 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1268:	002195cf 	mod.wu	$r15,$r14,$r5
    126c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1274 <printint.constprop.0+0x168>
    1270:	002a0007 	break	0x7
    1274:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1278:	002115cd 	div.wu	$r13,$r14,$r5
    127c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1284 <printint.constprop.0+0x178>
    1280:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1284:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1288:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    128c:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1384 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1290:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1294:	3820358d 	ldx.bu	$r13,$r12,$r13
    1298:	02801805 	addi.w	$r5,$r0,6(0x6)
    129c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12a0:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12a4:	64001880 	bge	$r4,$r0,24(0x18) # 12bc <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12a8:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12ac:	0010b1ad 	add.d	$r13,$r13,$r12
    12b0:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12b4:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12b8:	00150185 	move	$r5,$r12
    write(f, s, l);
    12bc:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12c0:	02804006 	addi.w	$r6,$r0,16(0x10)
    12c4:	001114c6 	sub.w	$r6,$r6,$r5
    12c8:	02800404 	addi.w	$r4,$r0,1(0x1)
    12cc:	00109585 	add.d	$r5,$r12,$r5
    12d0:	540f5000 	bl	3920(0xf50) # 2220 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12d4:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12d8:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12dc:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12e0:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12e4:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12e8:	02ccd18c 	addi.d	$r12,$r12,820(0x334)
    12ec:	002195cf 	mod.wu	$r15,$r14,$r5
    12f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12f8 <printint.constprop.0+0x1ec>
    12f4:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12f8:	002115cd 	div.wu	$r13,$r14,$r5
    12fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1304 <printint.constprop.0+0x1f8>
    1300:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1304:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1308:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    130c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1310:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1314:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1150 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1318:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    131c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1320:	02803805 	addi.w	$r5,$r0,14(0xe)
    1324:	53ff9bff 	b	-104(0xfffff98) # 12bc <printint.constprop.0+0x1b0>
    1328:	0280240c 	addi.w	$r12,$r0,9(0x9)
    132c:	02802805 	addi.w	$r5,$r0,10(0xa)
    1330:	53ff77ff 	b	-140(0xfffff74) # 12a4 <printint.constprop.0+0x198>
    1334:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1338:	02803805 	addi.w	$r5,$r0,14(0xe)
    133c:	53ff6bff 	b	-152(0xfffff68) # 12a4 <printint.constprop.0+0x198>
    1340:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1344:	02803405 	addi.w	$r5,$r0,13(0xd)
    1348:	53ff5fff 	b	-164(0xfffff5c) # 12a4 <printint.constprop.0+0x198>
    134c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1350:	02803005 	addi.w	$r5,$r0,12(0xc)
    1354:	53ff53ff 	b	-176(0xfffff50) # 12a4 <printint.constprop.0+0x198>
    1358:	0280280c 	addi.w	$r12,$r0,10(0xa)
    135c:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1360:	53ff47ff 	b	-188(0xfffff44) # 12a4 <printint.constprop.0+0x198>
    i = 15;
    1364:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1368:	53ff57ff 	b	-172(0xfffff54) # 12bc <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    136c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1370:	02802405 	addi.w	$r5,$r0,9(0x9)
    1374:	53ff33ff 	b	-208(0xfffff30) # 12a4 <printint.constprop.0+0x198>
    1378:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    137c:	02802005 	addi.w	$r5,$r0,8(0x8)
    1380:	53ff27ff 	b	-220(0xfffff24) # 12a4 <printint.constprop.0+0x198>
    1384:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1388:	02801c05 	addi.w	$r5,$r0,7(0x7)
    138c:	53ff1bff 	b	-232(0xfffff18) # 12a4 <printint.constprop.0+0x198>

0000000000001390 <getchar>:
{
    1390:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1394:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1398:	02800406 	addi.w	$r6,$r0,1(0x1)
    139c:	00150004 	move	$r4,$r0
{
    13a0:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13a4:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13a8:	540e6c00 	bl	3692(0xe6c) # 2214 <read>
}
    13ac:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13b0:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13b4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13b8:	4c000020 	jirl	$r0,$r1,0

00000000000013bc <putchar>:
{
    13bc:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13c0:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13c4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13c8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13cc:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13d0:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13d4:	540e4c00 	bl	3660(0xe4c) # 2220 <write>
}
    13d8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13dc:	00408084 	slli.w	$r4,$r4,0x0
}
    13e0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13e4:	4c000020 	jirl	$r0,$r1,0

00000000000013e8 <puts>:
{
    13e8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13ec:	29c02061 	st.d	$r1,$r3,8(0x8)
    13f0:	27000077 	stptr.d	$r23,$r3,0
    13f4:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13f8:	5406d400 	bl	1748(0x6d4) # 1acc <strlen>
    13fc:	00150086 	move	$r6,$r4
    1400:	001502e5 	move	$r5,$r23
    1404:	02800404 	addi.w	$r4,$r0,1(0x1)
    1408:	540e1800 	bl	3608(0xe18) # 2220 <write>
}
    140c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1410:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1414:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1418:	02c04063 	addi.d	$r3,$r3,16(0x10)
    141c:	4c000020 	jirl	$r0,$r1,0

0000000000001420 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1420:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1424:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1428:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    142c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1430:	29c14079 	st.d	$r25,$r3,80(0x50)
    1434:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1438:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    143c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1440:	29c18077 	st.d	$r23,$r3,96(0x60)
    1444:	29c16078 	st.d	$r24,$r3,88(0x58)
    1448:	0015009b 	move	$r27,$r4
    144c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1450:	29c20066 	st.d	$r6,$r3,128(0x80)
    1454:	29c22067 	st.d	$r7,$r3,136(0x88)
    1458:	29c24068 	st.d	$r8,$r3,144(0x90)
    145c:	29c26069 	st.d	$r9,$r3,152(0x98)
    1460:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1464:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1468:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    146c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1470:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1474:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1478:	02c6939c 	addi.d	$r28,$r28,420(0x1a4)
        if (!*s)
    147c:	2800036c 	ld.b	$r12,$r27,0
    1480:	40008980 	beqz	$r12,136(0x88) # 1508 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1484:	58027d99 	beq	$r12,$r25,636(0x27c) # 1700 <printf+0x2e0>
    1488:	00150366 	move	$r6,$r27
    148c:	50000800 	b	8(0x8) # 1494 <printf+0x74>
    1490:	58009d99 	beq	$r12,$r25,156(0x9c) # 152c <printf+0x10c>
    1494:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1498:	280000cc 	ld.b	$r12,$r6,0
    149c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1490 <printf+0x70>
    14a0:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14a4:	0011ecd7 	sub.d	$r23,$r6,$r27
    14a8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14ac:	001502e6 	move	$r6,$r23
    14b0:	00150365 	move	$r5,$r27
    14b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    14b8:	540d6800 	bl	3432(0xd68) # 2220 <write>
        out(f, a, l);
        if (l)
    14bc:	4400b6e0 	bnez	$r23,180(0xb4) # 1570 <printf+0x150>
            continue;
        if (s[1] == 0)
    14c0:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14c4:	40004580 	beqz	$r12,68(0x44) # 1508 <printf+0xe8>
            break;
        switch (s[1])
    14c8:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14cc:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15a0 <printf+0x180>
    14d0:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1578 <printf+0x158>
    14d4:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14d8:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16c8 <printf+0x2a8>
    14dc:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14e0:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1690 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14e4:	2600006c 	ldptr.d	$r12,$r3,0
    14e8:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14ec:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14f0:	24000184 	ldptr.w	$r4,$r12,0
    14f4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14f8:	2700006c 	stptr.d	$r12,$r3,0
    14fc:	57fc13ff 	bl	-1008(0xffffc10) # 110c <printint.constprop.0>
        if (!*s)
    1500:	2800036c 	ld.b	$r12,$r27,0
    1504:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1484 <printf+0x64>
    }
    va_end(ap);
}
    1508:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    150c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1510:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1514:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1518:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    151c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1520:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1524:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1528:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    152c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1530:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14a0 <printf+0x80>
    1534:	001500d8 	move	$r24,$r6
    1538:	50000c00 	b	12(0xc) # 1544 <printf+0x124>
    153c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1540:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14a4 <printf+0x84>
    1544:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1548:	2800030c 	ld.b	$r12,$r24,0
    154c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1550:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 153c <printf+0x11c>
        l = z - a;
    1554:	0011ecd7 	sub.d	$r23,$r6,$r27
    1558:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    155c:	001502e6 	move	$r6,$r23
    1560:	00150365 	move	$r5,$r27
    1564:	02800404 	addi.w	$r4,$r0,1(0x1)
    1568:	540cb800 	bl	3256(0xcb8) # 2220 <write>
        if (l)
    156c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14c0 <printf+0xa0>
    1570:	0015031b 	move	$r27,$r24
    1574:	53ff0bff 	b	-248(0xfffff08) # 147c <printf+0x5c>
        switch (s[1])
    1578:	0281900d 	addi.w	$r13,$r0,100(0x64)
    157c:	5c01158d 	bne	$r12,$r13,276(0x114) # 1690 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1580:	2600006c 	ldptr.d	$r12,$r3,0
    1584:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1588:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    158c:	24000184 	ldptr.w	$r4,$r12,0
    1590:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1594:	2700006c 	stptr.d	$r12,$r3,0
    1598:	57fb77ff 	bl	-1164(0xffffb74) # 110c <printint.constprop.0>
        s += 2;
    159c:	53ff67ff 	b	-156(0xfffff64) # 1500 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15a0:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15a4:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15a8:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15ac:	260001ac 	ldptr.d	$r12,$r13,0
    15b0:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15b4:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15b8:	0045f18a 	srli.d	$r10,$r12,0x3c
    15bc:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15c0:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15c4:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15c8:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15cc:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15d0:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15d4:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15d8:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15dc:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15e0:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15e4:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15e8:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15ec:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15f0:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15f4:	3820278a 	ldx.bu	$r10,$r28,$r9
    15f8:	38202389 	ldx.bu	$r9,$r28,$r8
    15fc:	38201f88 	ldx.bu	$r8,$r28,$r7
    1600:	38201787 	ldx.bu	$r7,$r28,$r5
    1604:	38201385 	ldx.bu	$r5,$r28,$r4
    1608:	38205384 	ldx.bu	$r4,$r28,$r20
    160c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1610:	38204b93 	ldx.bu	$r19,$r28,$r18
    1614:	38204792 	ldx.bu	$r18,$r28,$r17
    1618:	38204391 	ldx.bu	$r17,$r28,$r16
    161c:	38203f90 	ldx.bu	$r16,$r28,$r15
    1620:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1624:	3820378e 	ldx.bu	$r14,$r28,$r13
    1628:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    162c:	03403d8c 	andi	$r12,$r12,0xf
    1630:	2900286b 	st.b	$r11,$r3,10(0xa)
    1634:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1638:	29003069 	st.b	$r9,$r3,12(0xc)
    163c:	29003468 	st.b	$r8,$r3,13(0xd)
    1640:	29003867 	st.b	$r7,$r3,14(0xe)
    1644:	29003c65 	st.b	$r5,$r3,15(0xf)
    1648:	29004064 	st.b	$r4,$r3,16(0x10)
    164c:	29004474 	st.b	$r20,$r3,17(0x11)
    1650:	29004873 	st.b	$r19,$r3,18(0x12)
    1654:	29004c72 	st.b	$r18,$r3,19(0x13)
    1658:	29005071 	st.b	$r17,$r3,20(0x14)
    165c:	29005470 	st.b	$r16,$r3,21(0x15)
    1660:	2900586f 	st.b	$r15,$r3,22(0x16)
    1664:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1668:	3820378d 	ldx.bu	$r13,$r28,$r13
    166c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1670:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1674:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1678:	2900606d 	st.b	$r13,$r3,24(0x18)
    167c:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1680:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1684:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1688:	540b9800 	bl	2968(0xb98) # 2220 <write>
        s += 2;
    168c:	53fe77ff 	b	-396(0xffffe74) # 1500 <printf+0xe0>
    char byte = c;
    1690:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1694:	02800406 	addi.w	$r6,$r0,1(0x1)
    1698:	02c02065 	addi.d	$r5,$r3,8(0x8)
    169c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16a0:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16a4:	540b7c00 	bl	2940(0xb7c) # 2220 <write>
    char byte = c;
    16a8:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16ac:	02800406 	addi.w	$r6,$r0,1(0x1)
    16b0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16b8:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16bc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16c0:	540b6000 	bl	2912(0xb60) # 2220 <write>
        s += 2;
    16c4:	53fe3fff 	b	-452(0xffffe3c) # 1500 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16c8:	2600006c 	ldptr.d	$r12,$r3,0
    16cc:	26000197 	ldptr.d	$r23,$r12,0
    16d0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16d4:	2700006c 	stptr.d	$r12,$r3,0
    16d8:	40004ee0 	beqz	$r23,76(0x4c) # 1724 <printf+0x304>
            l = strnlen(a, 200);
    16dc:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16e0:	001502e4 	move	$r4,$r23
    16e4:	5405d000 	bl	1488(0x5d0) # 1cb4 <strnlen>
    16e8:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16ec:	001502e5 	move	$r5,$r23
    16f0:	02800404 	addi.w	$r4,$r0,1(0x1)
    16f4:	540b2c00 	bl	2860(0xb2c) # 2220 <write>
        s += 2;
    16f8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16fc:	53fe07ff 	b	-508(0xffffe04) # 1500 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1700:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1704:	00150366 	move	$r6,$r27
    1708:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1534 <printf+0x114>
    write(f, s, l);
    170c:	00150006 	move	$r6,$r0
    1710:	00150365 	move	$r5,$r27
    1714:	02800404 	addi.w	$r4,$r0,1(0x1)
    1718:	540b0800 	bl	2824(0xb08) # 2220 <write>
    171c:	00150378 	move	$r24,$r27
    1720:	53fda3ff 	b	-608(0xffffda0) # 14c0 <printf+0xa0>
                a = "(null)";
    1724:	1c000037 	pcaddu12i	$r23,1(0x1)
    1728:	02fb72f7 	addi.d	$r23,$r23,-292(0xedc)
    172c:	53ffb3ff 	b	-80(0xfffffb0) # 16dc <printf+0x2bc>

0000000000001730 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1730:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1734:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1738:	57fcb3ff 	bl	-848(0xffffcb0) # 13e8 <puts>
    exit(-100);
}
    173c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1740:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1744:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1748:	500b4c00 	b	2892(0xb4c) # 2294 <exit>

000000000000174c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    174c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1750:	5800108c 	beq	$r4,$r12,16(0x10) # 1760 <isspace+0x14>
    1754:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1758:	02401484 	sltui	$r4,$r4,5(0x5)
    175c:	4c000020 	jirl	$r0,$r1,0
    1760:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1764:	4c000020 	jirl	$r0,$r1,0

0000000000001768 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1768:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    176c:	02402884 	sltui	$r4,$r4,10(0xa)
    1770:	4c000020 	jirl	$r0,$r1,0

0000000000001774 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1774:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1778:	0280100f 	addi.w	$r15,$r0,4(0x4)
    177c:	2800008d 	ld.b	$r13,$r4,0
    1780:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1784:	580061ae 	beq	$r13,$r14,96(0x60) # 17e4 <atoi+0x70>
    1788:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17e4 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    178c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1790:	580065ac 	beq	$r13,$r12,100(0x64) # 17f4 <atoi+0x80>
    1794:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1798:	58007dac 	beq	$r13,$r12,124(0x7c) # 1814 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    179c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17a0:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17a4:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17a8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17ac:	680061cf 	bltu	$r14,$r15,96(0x60) # 180c <atoi+0x98>
    int n = 0, neg = 0;
    17b0:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17b4:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17b8:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17bc:	001c126f 	mul.w	$r15,$r19,$r4
    17c0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17c4:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17c8:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17cc:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17d0:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17d4:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17d8:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17bc <atoi+0x48>
    return neg ? n : -n;
    17dc:	40001280 	beqz	$r20,16(0x10) # 17ec <atoi+0x78>
}
    17e0:	4c000020 	jirl	$r0,$r1,0
        s++;
    17e4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17e8:	53ff97ff 	b	-108(0xfffff94) # 177c <atoi+0x8>
    17ec:	00113e04 	sub.w	$r4,$r16,$r15
    17f0:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17f4:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17f8:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17fc:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1800:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1804:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1808:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17b0 <atoi+0x3c>
    180c:	00150004 	move	$r4,$r0
}
    1810:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1814:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1818:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    181c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1820:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1824:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 180c <atoi+0x98>
        neg = 1;
    1828:	02800414 	addi.w	$r20,$r0,1(0x1)
    182c:	53ff87ff 	b	-124(0xfffff84) # 17b0 <atoi+0x3c>

0000000000001830 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1830:	400198c0 	beqz	$r6,408(0x198) # 19c8 <memset+0x198>
    1834:	0011900c 	sub.d	$r12,$r0,$r4
    1838:	03401d8c 	andi	$r12,$r12,0x7
    183c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1840:	02402dae 	sltui	$r14,$r13,11(0xb)
    1844:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1848:	0013b9ad 	masknez	$r13,$r13,$r14
    184c:	001339ee 	maskeqz	$r14,$r15,$r14
    1850:	001539ad 	or	$r13,$r13,$r14
    1854:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1858:	00005ca5 	ext.w.b	$r5,$r5
    185c:	680191ed 	bltu	$r15,$r13,400(0x190) # 19ec <memset+0x1bc>
    1860:	40018180 	beqz	$r12,384(0x180) # 19e0 <memset+0x1b0>
    1864:	29000085 	st.b	$r5,$r4,0
    1868:	0280040d 	addi.w	$r13,$r0,1(0x1)
    186c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1870:	5801698d 	beq	$r12,$r13,360(0x168) # 19d8 <memset+0x1a8>
    1874:	29000485 	st.b	$r5,$r4,1(0x1)
    1878:	0280080d 	addi.w	$r13,$r0,2(0x2)
    187c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1880:	5801798d 	beq	$r12,$r13,376(0x178) # 19f8 <memset+0x1c8>
    1884:	29000885 	st.b	$r5,$r4,2(0x2)
    1888:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    188c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1890:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19cc <memset+0x19c>
    1894:	29000c85 	st.b	$r5,$r4,3(0x3)
    1898:	0280100d 	addi.w	$r13,$r0,4(0x4)
    189c:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18a0:	5801618d 	beq	$r12,$r13,352(0x160) # 1a00 <memset+0x1d0>
    18a4:	29001085 	st.b	$r5,$r4,4(0x4)
    18a8:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18ac:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18b0:	5801598d 	beq	$r12,$r13,344(0x158) # 1a08 <memset+0x1d8>
    18b4:	29001485 	st.b	$r5,$r4,5(0x5)
    18b8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18bc:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18c0:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a10 <memset+0x1e0>
    18c4:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18c8:	29001885 	st.b	$r5,$r4,6(0x6)
    18cc:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18d0:	0015000d 	move	$r13,$r0
    18d4:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18d8:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18dc:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18e0:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18e4:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18e8:	0011b0d0 	sub.d	$r16,$r6,$r12
    18ec:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18f0:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18f4:	0010b08c 	add.d	$r12,$r4,$r12
    18f8:	00450e0f 	srli.d	$r15,$r16,0x3
    18fc:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1900:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1904:	2700018d 	stptr.d	$r13,$r12,0
    1908:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    190c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1904 <memset+0xd4>
    1910:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1914:	0014be0f 	and	$r15,$r16,$r15
    1918:	004081ed 	slli.w	$r13,$r15,0x0
    191c:	0010bdcc 	add.d	$r12,$r14,$r15
    1920:	001045ad 	add.w	$r13,$r13,$r17
    1924:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19d4 <memset+0x1a4>
    1928:	29000185 	st.b	$r5,$r12,0
    192c:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1930:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19c8 <memset+0x198>
    1934:	29000585 	st.b	$r5,$r12,1(0x1)
    1938:	028009ae 	addi.w	$r14,$r13,2(0x2)
    193c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19c8 <memset+0x198>
    1940:	29000985 	st.b	$r5,$r12,2(0x2)
    1944:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1948:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19c8 <memset+0x198>
    194c:	29000d85 	st.b	$r5,$r12,3(0x3)
    1950:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1954:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19c8 <memset+0x198>
    1958:	29001185 	st.b	$r5,$r12,4(0x4)
    195c:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1960:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19c8 <memset+0x198>
    1964:	29001585 	st.b	$r5,$r12,5(0x5)
    1968:	028019ae 	addi.w	$r14,$r13,6(0x6)
    196c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19c8 <memset+0x198>
    1970:	29001985 	st.b	$r5,$r12,6(0x6)
    1974:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1978:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19c8 <memset+0x198>
    197c:	29001d85 	st.b	$r5,$r12,7(0x7)
    1980:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1984:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19c8 <memset+0x198>
    1988:	29002185 	st.b	$r5,$r12,8(0x8)
    198c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1990:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19c8 <memset+0x198>
    1994:	29002585 	st.b	$r5,$r12,9(0x9)
    1998:	028029ae 	addi.w	$r14,$r13,10(0xa)
    199c:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19c8 <memset+0x198>
    19a0:	29002985 	st.b	$r5,$r12,10(0xa)
    19a4:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19a8:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19c8 <memset+0x198>
    19ac:	29002d85 	st.b	$r5,$r12,11(0xb)
    19b0:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19b4:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19c8 <memset+0x198>
    19b8:	29003185 	st.b	$r5,$r12,12(0xc)
    19bc:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19c0:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19c8 <memset+0x198>
    19c4:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19c8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19cc:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19d0:	53ff03ff 	b	-256(0xfffff00) # 18d0 <memset+0xa0>
    19d4:	4c000020 	jirl	$r0,$r1,0
    19d8:	02800411 	addi.w	$r17,$r0,1(0x1)
    19dc:	53fef7ff 	b	-268(0xffffef4) # 18d0 <memset+0xa0>
    19e0:	0015008e 	move	$r14,$r4
    19e4:	00150011 	move	$r17,$r0
    19e8:	53feebff 	b	-280(0xffffee8) # 18d0 <memset+0xa0>
    19ec:	0015008c 	move	$r12,$r4
    19f0:	0015000d 	move	$r13,$r0
    19f4:	53ff37ff 	b	-204(0xfffff34) # 1928 <memset+0xf8>
    19f8:	02800811 	addi.w	$r17,$r0,2(0x2)
    19fc:	53fed7ff 	b	-300(0xffffed4) # 18d0 <memset+0xa0>
    1a00:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a04:	53fecfff 	b	-308(0xffffecc) # 18d0 <memset+0xa0>
    1a08:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a0c:	53fec7ff 	b	-316(0xffffec4) # 18d0 <memset+0xa0>
    1a10:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a14:	53febfff 	b	-324(0xffffebc) # 18d0 <memset+0xa0>

0000000000001a18 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a18:	2800008c 	ld.b	$r12,$r4,0
    1a1c:	280000ae 	ld.b	$r14,$r5,0
    1a20:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a54 <strcmp+0x3c>
    1a24:	40003980 	beqz	$r12,56(0x38) # 1a5c <strcmp+0x44>
    1a28:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a2c:	50000800 	b	8(0x8) # 1a34 <strcmp+0x1c>
    1a30:	400019a0 	beqz	$r13,24(0x18) # 1a48 <strcmp+0x30>
    1a34:	3800308d 	ldx.b	$r13,$r4,$r12
    1a38:	380030ae 	ldx.b	$r14,$r5,$r12
    1a3c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a40:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a30 <strcmp+0x18>
    1a44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a48:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a4c:	001111a4 	sub.w	$r4,$r13,$r4
    1a50:	4c000020 	jirl	$r0,$r1,0
    1a54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a58:	53fff3ff 	b	-16(0xffffff0) # 1a48 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a5c:	0015000d 	move	$r13,$r0
    1a60:	53ffebff 	b	-24(0xfffffe8) # 1a48 <strcmp+0x30>

0000000000001a64 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a64:	400054c0 	beqz	$r6,84(0x54) # 1ab8 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a68:	2a00008d 	ld.bu	$r13,$r4,0
    1a6c:	2a0000ae 	ld.bu	$r14,$r5,0
    1a70:	40003da0 	beqz	$r13,60(0x3c) # 1aac <strncmp+0x48>
    1a74:	40003dc0 	beqz	$r14,60(0x3c) # 1ab0 <strncmp+0x4c>
    if (!n--)
    1a78:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a7c:	400034c0 	beqz	$r6,52(0x34) # 1ab0 <strncmp+0x4c>
    1a80:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a84:	580019ae 	beq	$r13,$r14,24(0x18) # 1a9c <strncmp+0x38>
    1a88:	50002800 	b	40(0x28) # 1ab0 <strncmp+0x4c>
    1a8c:	400035c0 	beqz	$r14,52(0x34) # 1ac0 <strncmp+0x5c>
    1a90:	580020cc 	beq	$r6,$r12,32(0x20) # 1ab0 <strncmp+0x4c>
    1a94:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a98:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ac0 <strncmp+0x5c>
    1a9c:	3820308d 	ldx.bu	$r13,$r4,$r12
    1aa0:	382030ae 	ldx.bu	$r14,$r5,$r12
    1aa4:	001501af 	move	$r15,$r13
    1aa8:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a8c <strncmp+0x28>
    1aac:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ab0:	001139a4 	sub.w	$r4,$r13,$r14
    1ab4:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ab8:	00150004 	move	$r4,$r0
}
    1abc:	4c000020 	jirl	$r0,$r1,0
    1ac0:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ac4:	001139a4 	sub.w	$r4,$r13,$r14
    1ac8:	4c000020 	jirl	$r0,$r1,0

0000000000001acc <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1acc:	03401c8c 	andi	$r12,$r4,0x7
    1ad0:	4000b180 	beqz	$r12,176(0xb0) # 1b80 <strlen+0xb4>
        if (!*s)
    1ad4:	2800008c 	ld.b	$r12,$r4,0
    1ad8:	4000b180 	beqz	$r12,176(0xb0) # 1b88 <strlen+0xbc>
    1adc:	0015008c 	move	$r12,$r4
    1ae0:	50000c00 	b	12(0xc) # 1aec <strlen+0x20>
    1ae4:	2800018d 	ld.b	$r13,$r12,0
    1ae8:	400091a0 	beqz	$r13,144(0x90) # 1b78 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1aec:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1af0:	03401d8d 	andi	$r13,$r12,0x7
    1af4:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1ae4 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1af8:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1afc:	2600018f 	ldptr.d	$r15,$r12,0
    1b00:	03bbfdad 	ori	$r13,$r13,0xeff
    1b04:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b08:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b0c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b10:	038201ce 	ori	$r14,$r14,0x80
    1b14:	0010b5ed 	add.d	$r13,$r15,$r13
    1b18:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b1c:	0016bdad 	andn	$r13,$r13,$r15
    1b20:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b24:	0014b9ae 	and	$r14,$r13,$r14
    1b28:	440049c0 	bnez	$r14,72(0x48) # 1b70 <strlen+0xa4>
    1b2c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b30:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b34:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b38:	2600018e 	ldptr.d	$r14,$r12,0
    1b3c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b40:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b44:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b48:	0382020f 	ori	$r15,$r16,0x80
    1b4c:	0010b5cd 	add.d	$r13,$r14,$r13
    1b50:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b54:	0016b9ad 	andn	$r13,$r13,$r14
    1b58:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b5c:	0014bdad 	and	$r13,$r13,$r15
    1b60:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b34 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b64:	2800018d 	ld.b	$r13,$r12,0
    1b68:	400011a0 	beqz	$r13,16(0x10) # 1b78 <strlen+0xac>
    1b6c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b70:	2800018d 	ld.b	$r13,$r12,0
    1b74:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b6c <strlen+0xa0>
        ;
    return s - a;
    1b78:	00119184 	sub.d	$r4,$r12,$r4
}
    1b7c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b80:	0015008c 	move	$r12,$r4
    1b84:	53ff77ff 	b	-140(0xfffff74) # 1af8 <strlen+0x2c>
        if (!*s)
    1b88:	00150004 	move	$r4,$r0
            return s - a;
    1b8c:	4c000020 	jirl	$r0,$r1,0

0000000000001b90 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b90:	03401c8c 	andi	$r12,$r4,0x7
    1b94:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b98:	44002180 	bnez	$r12,32(0x20) # 1bb8 <memchr+0x28>
    1b9c:	50002c00 	b	44(0x2c) # 1bc8 <memchr+0x38>
    1ba0:	2a00008c 	ld.bu	$r12,$r4,0
    1ba4:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c9c <memchr+0x10c>
    1ba8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bac:	03401c8c 	andi	$r12,$r4,0x7
    1bb0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bb4:	40001580 	beqz	$r12,20(0x14) # 1bc8 <memchr+0x38>
    1bb8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1ba0 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bbc:	0015000d 	move	$r13,$r0
}
    1bc0:	001501a4 	move	$r4,$r13
    1bc4:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bc8:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bcc:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bc0 <memchr+0x30>
    1bd0:	2a00008c 	ld.bu	$r12,$r4,0
    1bd4:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c9c <memchr+0x10c>
        size_t k = ONES * c;
    1bd8:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bdc:	0384058c 	ori	$r12,$r12,0x101
    1be0:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1be4:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1be8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bec:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bf0:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cac <memchr+0x11c>
    1bf4:	2600008d 	ldptr.d	$r13,$r4,0
    1bf8:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bfc:	038201ce 	ori	$r14,$r14,0x80
    1c00:	0015b60d 	xor	$r13,$r16,$r13
    1c04:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c08:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c0c:	0016b58c 	andn	$r12,$r12,$r13
    1c10:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c14:	0014b98c 	and	$r12,$r12,$r14
    1c18:	44009580 	bnez	$r12,148(0x94) # 1cac <memchr+0x11c>
    1c1c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c20:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c24:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c28:	50002000 	b	32(0x20) # 1c48 <memchr+0xb8>
    1c2c:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c30:	0015b20c 	xor	$r12,$r16,$r12
    1c34:	0010b98e 	add.d	$r14,$r12,$r14
    1c38:	0016b1cc 	andn	$r12,$r14,$r12
    1c3c:	0014bd8c 	and	$r12,$r12,$r15
    1c40:	44006580 	bnez	$r12,100(0x64) # 1ca4 <memchr+0x114>
    1c44:	001501a4 	move	$r4,$r13
    1c48:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c4c:	0382022f 	ori	$r15,$r17,0x80
    1c50:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c54:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c58:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c5c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c60:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c64:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c68:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c2c <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c6c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bbc <memchr+0x2c>
    1c70:	2a0001ac 	ld.bu	$r12,$r13,0
    1c74:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bc0 <memchr+0x30>
    1c78:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c7c:	001099a6 	add.d	$r6,$r13,$r6
    1c80:	50001000 	b	16(0x10) # 1c90 <memchr+0x100>
    1c84:	2a00018e 	ld.bu	$r14,$r12,0
    1c88:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c8c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bc0 <memchr+0x30>
    1c90:	0015018d 	move	$r13,$r12
    1c94:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c84 <memchr+0xf4>
    1c98:	53ff27ff 	b	-220(0xfffff24) # 1bbc <memchr+0x2c>
    1c9c:	0015008d 	move	$r13,$r4
    1ca0:	53ffd3ff 	b	-48(0xfffffd0) # 1c70 <memchr+0xe0>
    1ca4:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1ca8:	53ffcfff 	b	-52(0xfffffcc) # 1c74 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cac:	0015008d 	move	$r13,$r4
    1cb0:	53ffcbff 	b	-56(0xfffffc8) # 1c78 <memchr+0xe8>

0000000000001cb4 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cb4:	03401c8c 	andi	$r12,$r4,0x7
    1cb8:	40011980 	beqz	$r12,280(0x118) # 1dd0 <strnlen+0x11c>
    1cbc:	4000f4a0 	beqz	$r5,244(0xf4) # 1db0 <strnlen+0xfc>
    1cc0:	2a00008c 	ld.bu	$r12,$r4,0
    1cc4:	4000f580 	beqz	$r12,244(0xf4) # 1db8 <strnlen+0x104>
    1cc8:	001500ac 	move	$r12,$r5
    1ccc:	0015008d 	move	$r13,$r4
    1cd0:	50001000 	b	16(0x10) # 1ce0 <strnlen+0x2c>
    1cd4:	4000dd80 	beqz	$r12,220(0xdc) # 1db0 <strnlen+0xfc>
    1cd8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cdc:	4000e5c0 	beqz	$r14,228(0xe4) # 1dc0 <strnlen+0x10c>
    1ce0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1ce4:	03401dae 	andi	$r14,$r13,0x7
    1ce8:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cec:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cd4 <strnlen+0x20>
    if (n && *s != c)
    1cf0:	4000c180 	beqz	$r12,192(0xc0) # 1db0 <strnlen+0xfc>
    1cf4:	2a0001ae 	ld.bu	$r14,$r13,0
    1cf8:	4000c9c0 	beqz	$r14,200(0xc8) # 1dc0 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cfc:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d00:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1ddc <strnlen+0x128>
    1d04:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d08:	260001b0 	ldptr.d	$r16,$r13,0
    1d0c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d10:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d14:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d18:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d1c:	038201ef 	ori	$r15,$r15,0x80
    1d20:	0010ba0e 	add.d	$r14,$r16,$r14
    1d24:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d28:	0016c1ce 	andn	$r14,$r14,$r16
    1d2c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d30:	0014bdcf 	and	$r15,$r14,$r15
    1d34:	4400a9e0 	bnez	$r15,168(0xa8) # 1ddc <strnlen+0x128>
    1d38:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d3c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d40:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d44:	50001c00 	b	28(0x1c) # 1d60 <strnlen+0xac>
    1d48:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d4c:	0010b9ee 	add.d	$r14,$r15,$r14
    1d50:	0016bdce 	andn	$r14,$r14,$r15
    1d54:	0014c1ce 	and	$r14,$r14,$r16
    1d58:	440071c0 	bnez	$r14,112(0x70) # 1dc8 <strnlen+0x114>
    1d5c:	0015022d 	move	$r13,$r17
    1d60:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d64:	03820250 	ori	$r16,$r18,0x80
    1d68:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d6c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d70:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d74:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d78:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d7c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d80:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d48 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d84:	40002d80 	beqz	$r12,44(0x2c) # 1db0 <strnlen+0xfc>
    1d88:	2a00022d 	ld.bu	$r13,$r17,0
    1d8c:	400021a0 	beqz	$r13,32(0x20) # 1dac <strnlen+0xf8>
    1d90:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d94:	0010b22c 	add.d	$r12,$r17,$r12
    1d98:	001501b1 	move	$r17,$r13
    1d9c:	5800158d 	beq	$r12,$r13,20(0x14) # 1db0 <strnlen+0xfc>
    1da0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1da4:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1da8:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d98 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dac:	00119225 	sub.d	$r5,$r17,$r4
}
    1db0:	001500a4 	move	$r4,$r5
    1db4:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1db8:	001500ac 	move	$r12,$r5
    1dbc:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dc0:	001501b1 	move	$r17,$r13
    1dc4:	53ffc7ff 	b	-60(0xfffffc4) # 1d88 <strnlen+0xd4>
    1dc8:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dcc:	53ffc3ff 	b	-64(0xfffffc0) # 1d8c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dd0:	001500ac 	move	$r12,$r5
    1dd4:	0015008d 	move	$r13,$r4
    1dd8:	53ff1bff 	b	-232(0xfffff18) # 1cf0 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ddc:	001501b1 	move	$r17,$r13
    1de0:	53ffb3ff 	b	-80(0xfffffb0) # 1d90 <strnlen+0xdc>

0000000000001de4 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1de4:	0015948c 	xor	$r12,$r4,$r5
    1de8:	03401d8c 	andi	$r12,$r12,0x7
    1dec:	4400ad80 	bnez	$r12,172(0xac) # 1e98 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1df0:	03401cac 	andi	$r12,$r5,0x7
    1df4:	40003180 	beqz	$r12,48(0x30) # 1e24 <strcpy+0x40>
            if (!(*d = *s))
    1df8:	280000ac 	ld.b	$r12,$r5,0
    1dfc:	2900008c 	st.b	$r12,$r4,0
    1e00:	44001580 	bnez	$r12,20(0x14) # 1e14 <strcpy+0x30>
    1e04:	5000bc00 	b	188(0xbc) # 1ec0 <strcpy+0xdc>
    1e08:	280000ac 	ld.b	$r12,$r5,0
    1e0c:	2900008c 	st.b	$r12,$r4,0
    1e10:	4000a980 	beqz	$r12,168(0xa8) # 1eb8 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e14:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e18:	03401cac 	andi	$r12,$r5,0x7
    1e1c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e20:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e08 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e24:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e28:	260000ae 	ldptr.d	$r14,$r5,0
    1e2c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e30:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e34:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e38:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e3c:	038201ad 	ori	$r13,$r13,0x80
    1e40:	0010b1cc 	add.d	$r12,$r14,$r12
    1e44:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e48:	0016b98c 	andn	$r12,$r12,$r14
    1e4c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e50:	0014b58c 	and	$r12,$r12,$r13
    1e54:	44004580 	bnez	$r12,68(0x44) # 1e98 <strcpy+0xb4>
    1e58:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e5c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e60:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e64:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e68:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e6c:	260000ae 	ldptr.d	$r14,$r5,0
    1e70:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e74:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e78:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e7c:	038201ed 	ori	$r13,$r15,0x80
    1e80:	0010b1cc 	add.d	$r12,$r14,$r12
    1e84:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e88:	0016b98c 	andn	$r12,$r12,$r14
    1e8c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e90:	0014b58c 	and	$r12,$r12,$r13
    1e94:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e60 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e98:	280000ac 	ld.b	$r12,$r5,0
    1e9c:	2900008c 	st.b	$r12,$r4,0
    1ea0:	40001d80 	beqz	$r12,28(0x1c) # 1ebc <strcpy+0xd8>
    1ea4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ea8:	280000ac 	ld.b	$r12,$r5,0
    1eac:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1eb0:	2900008c 	st.b	$r12,$r4,0
    1eb4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ea4 <strcpy+0xc0>
        ;
    return d;
}
    1eb8:	4c000020 	jirl	$r0,$r1,0
    1ebc:	4c000020 	jirl	$r0,$r1,0
    1ec0:	4c000020 	jirl	$r0,$r1,0

0000000000001ec4 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ec4:	0015948c 	xor	$r12,$r4,$r5
    1ec8:	03401d8c 	andi	$r12,$r12,0x7
    1ecc:	4400ad80 	bnez	$r12,172(0xac) # 1f78 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ed0:	03401cac 	andi	$r12,$r5,0x7
    1ed4:	44010180 	bnez	$r12,256(0x100) # 1fd4 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ed8:	400100c0 	beqz	$r6,256(0x100) # 1fd8 <strncpy+0x114>
    1edc:	280000af 	ld.b	$r15,$r5,0
    1ee0:	400105e0 	beqz	$r15,260(0x104) # 1fe4 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ee4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ee8:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21c0 <strncpy+0x2fc>
    1eec:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ef0:	260000ae 	ldptr.d	$r14,$r5,0
    1ef4:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ef8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1efc:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f00:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f04:	038201ad 	ori	$r13,$r13,0x80
    1f08:	0010b1cc 	add.d	$r12,$r14,$r12
    1f0c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f10:	0016b98c 	andn	$r12,$r12,$r14
    1f14:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f18:	0014b58c 	and	$r12,$r12,$r13
    1f1c:	4402a580 	bnez	$r12,676(0x2a4) # 21c0 <strncpy+0x2fc>
    1f20:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f24:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f28:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f2c:	50001c00 	b	28(0x1c) # 1f48 <strncpy+0x84>
    1f30:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f34:	0010b1cc 	add.d	$r12,$r14,$r12
    1f38:	0016b98c 	andn	$r12,$r12,$r14
    1f3c:	0014b58c 	and	$r12,$r12,$r13
    1f40:	44024580 	bnez	$r12,580(0x244) # 2184 <strncpy+0x2c0>
    1f44:	001501e5 	move	$r5,$r15
    1f48:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f4c:	0382020d 	ori	$r13,$r16,0x80
    1f50:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f54:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f58:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f5c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f60:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f64:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f68:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f6c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f70:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f30 <strncpy+0x6c>
    1f74:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f78:	400060c0 	beqz	$r6,96(0x60) # 1fd8 <strncpy+0x114>
    1f7c:	280000ac 	ld.b	$r12,$r5,0
    1f80:	0015008d 	move	$r13,$r4
    1f84:	2900008c 	st.b	$r12,$r4,0
    1f88:	44001580 	bnez	$r12,20(0x14) # 1f9c <strncpy+0xd8>
    1f8c:	50005c00 	b	92(0x5c) # 1fe8 <strncpy+0x124>
    1f90:	280000ac 	ld.b	$r12,$r5,0
    1f94:	290001ac 	st.b	$r12,$r13,0
    1f98:	40005180 	beqz	$r12,80(0x50) # 1fe8 <strncpy+0x124>
    1f9c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fa0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fa4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fa8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f90 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fac:	001501a4 	move	$r4,$r13
    1fb0:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fb4:	280000ac 	ld.b	$r12,$r5,0
    1fb8:	2900008c 	st.b	$r12,$r4,0
    1fbc:	40002980 	beqz	$r12,40(0x28) # 1fe4 <strncpy+0x120>
    1fc0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fc4:	03401cac 	andi	$r12,$r5,0x7
    1fc8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fcc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fd0:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ed8 <strncpy+0x14>
    1fd4:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fb4 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fd8:	0015008d 	move	$r13,$r4
}
    1fdc:	001501a4 	move	$r4,$r13
    1fe0:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fe4:	0015008d 	move	$r13,$r4
    1fe8:	0011b40c 	sub.d	$r12,$r0,$r13
    1fec:	03401d8c 	andi	$r12,$r12,0x7
    1ff0:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1ff4:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1ff8:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1ffc:	0013bdce 	masknez	$r14,$r14,$r15
    2000:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2004:	00133e0f 	maskeqz	$r15,$r16,$r15
    2008:	00153dce 	or	$r14,$r14,$r15
    200c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2010:	00131a31 	maskeqz	$r17,$r17,$r6
    2014:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2018:	001540d0 	or	$r16,$r6,$r16
    201c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2194 <strncpy+0x2d0>
    2020:	40015980 	beqz	$r12,344(0x158) # 2178 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2024:	290001a0 	st.b	$r0,$r13,0
    2028:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    202c:	5801458f 	beq	$r12,$r15,324(0x144) # 2170 <strncpy+0x2ac>
    2030:	290005a0 	st.b	$r0,$r13,1(0x1)
    2034:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2038:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    203c:	5801658f 	beq	$r12,$r15,356(0x164) # 21a0 <strncpy+0x2dc>
    2040:	290009a0 	st.b	$r0,$r13,2(0x2)
    2044:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2048:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    204c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2168 <strncpy+0x2a4>
    2050:	29000da0 	st.b	$r0,$r13,3(0x3)
    2054:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2058:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    205c:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21a8 <strncpy+0x2e4>
    2060:	290011a0 	st.b	$r0,$r13,4(0x4)
    2064:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2068:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    206c:	5801458f 	beq	$r12,$r15,324(0x144) # 21b0 <strncpy+0x2ec>
    2070:	290015a0 	st.b	$r0,$r13,5(0x5)
    2074:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2078:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    207c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21b8 <strncpy+0x2f4>
    2080:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2084:	290019a0 	st.b	$r0,$r13,6(0x6)
    2088:	02801c12 	addi.w	$r18,$r0,7(0x7)
    208c:	0011b210 	sub.d	$r16,$r16,$r12
    2090:	00450e11 	srli.d	$r17,$r16,0x3
    2094:	0010b1ac 	add.d	$r12,$r13,$r12
    2098:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    209c:	27000180 	stptr.d	$r0,$r12,0
    20a0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20a4:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 209c <strncpy+0x1d8>
    20a8:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20ac:	0014c611 	and	$r17,$r16,$r17
    20b0:	0040822f 	slli.w	$r15,$r17,0x0
    20b4:	001049ef 	add.w	$r15,$r15,$r18
    20b8:	0010c5cc 	add.d	$r12,$r14,$r17
    20bc:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fac <strncpy+0xe8>
    20c0:	29000180 	st.b	$r0,$r12,0
    20c4:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20c8:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fac <strncpy+0xe8>
    20cc:	29000580 	st.b	$r0,$r12,1(0x1)
    20d0:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20d4:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fac <strncpy+0xe8>
    20d8:	29000980 	st.b	$r0,$r12,2(0x2)
    20dc:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20e0:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fac <strncpy+0xe8>
    20e4:	29000d80 	st.b	$r0,$r12,3(0x3)
    20e8:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20ec:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fac <strncpy+0xe8>
    20f0:	29001180 	st.b	$r0,$r12,4(0x4)
    20f4:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20f8:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fac <strncpy+0xe8>
    20fc:	29001580 	st.b	$r0,$r12,5(0x5)
    2100:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2104:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fac <strncpy+0xe8>
    2108:	29001980 	st.b	$r0,$r12,6(0x6)
    210c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2110:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fac <strncpy+0xe8>
    2114:	29001d80 	st.b	$r0,$r12,7(0x7)
    2118:	028021ee 	addi.w	$r14,$r15,8(0x8)
    211c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fac <strncpy+0xe8>
    2120:	29002180 	st.b	$r0,$r12,8(0x8)
    2124:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2128:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fac <strncpy+0xe8>
    212c:	29002580 	st.b	$r0,$r12,9(0x9)
    2130:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2134:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fac <strncpy+0xe8>
    2138:	29002980 	st.b	$r0,$r12,10(0xa)
    213c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2140:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fac <strncpy+0xe8>
    2144:	29002d80 	st.b	$r0,$r12,11(0xb)
    2148:	028031ee 	addi.w	$r14,$r15,12(0xc)
    214c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fac <strncpy+0xe8>
    2150:	29003180 	st.b	$r0,$r12,12(0xc)
    2154:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2158:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fac <strncpy+0xe8>
    215c:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2160:	001501a4 	move	$r4,$r13
    2164:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2168:	02800c12 	addi.w	$r18,$r0,3(0x3)
    216c:	53ff23ff 	b	-224(0xfffff20) # 208c <strncpy+0x1c8>
    2170:	02800412 	addi.w	$r18,$r0,1(0x1)
    2174:	53ff1bff 	b	-232(0xfffff18) # 208c <strncpy+0x1c8>
    2178:	001501ae 	move	$r14,$r13
    217c:	00150012 	move	$r18,$r0
    2180:	53ff0fff 	b	-244(0xfffff0c) # 208c <strncpy+0x1c8>
    2184:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2188:	0015008d 	move	$r13,$r4
    218c:	001501e5 	move	$r5,$r15
    2190:	53fdf7ff 	b	-524(0xffffdf4) # 1f84 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2194:	001501ac 	move	$r12,$r13
    2198:	0015000f 	move	$r15,$r0
    219c:	53ff27ff 	b	-220(0xfffff24) # 20c0 <strncpy+0x1fc>
    21a0:	02800812 	addi.w	$r18,$r0,2(0x2)
    21a4:	53feebff 	b	-280(0xffffee8) # 208c <strncpy+0x1c8>
    21a8:	02801012 	addi.w	$r18,$r0,4(0x4)
    21ac:	53fee3ff 	b	-288(0xffffee0) # 208c <strncpy+0x1c8>
    21b0:	02801412 	addi.w	$r18,$r0,5(0x5)
    21b4:	53fedbff 	b	-296(0xffffed8) # 208c <strncpy+0x1c8>
    21b8:	02801812 	addi.w	$r18,$r0,6(0x6)
    21bc:	53fed3ff 	b	-304(0xffffed0) # 208c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21c0:	2900008f 	st.b	$r15,$r4,0
    21c4:	0015008d 	move	$r13,$r4
    21c8:	53fdd7ff 	b	-556(0xffffdd4) # 1f9c <strncpy+0xd8>

00000000000021cc <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21cc:	0015008c 	move	$r12,$r4
    21d0:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21d4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21d8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21dc:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21e0:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21e4:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21e8:	00408084 	slli.w	$r4,$r4,0x0
}
    21ec:	4c000020 	jirl	$r0,$r1,0

00000000000021f0 <openat>:
    register long a7 __asm__("a7") = n;
    21f0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21f4:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21f8:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2200:	4c000020 	jirl	$r0,$r1,0

0000000000002204 <close>:
    register long a7 __asm__("a7") = n;
    2204:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2208:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    220c:	00408084 	slli.w	$r4,$r4,0x0
}
    2210:	4c000020 	jirl	$r0,$r1,0

0000000000002214 <read>:
    register long a7 __asm__("a7") = n;
    2214:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2218:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <write>:
    register long a7 __asm__("a7") = n;
    2220:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2224:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2228:	4c000020 	jirl	$r0,$r1,0

000000000000222c <getpid>:
    register long a7 __asm__("a7") = n;
    222c:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2230:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2234:	00408084 	slli.w	$r4,$r4,0x0
}
    2238:	4c000020 	jirl	$r0,$r1,0

000000000000223c <getppid>:
    register long a7 __asm__("a7") = n;
    223c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2240:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2244:	00408084 	slli.w	$r4,$r4,0x0
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <sched_yield>:
    register long a7 __asm__("a7") = n;
    224c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2250:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2254:	00408084 	slli.w	$r4,$r4,0x0
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <fork>:
    register long a7 __asm__("a7") = n;
    225c:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2260:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2264:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2268:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    226c:	00408084 	slli.w	$r4,$r4,0x0
}
    2270:	4c000020 	jirl	$r0,$r1,0

0000000000002274 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2274:	001500c5 	move	$r5,$r6
    if (stack)
    2278:	400008c0 	beqz	$r6,8(0x8) # 2280 <clone+0xc>
	stack += stack_size;
    227c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2280:	00408106 	slli.w	$r6,$r8,0x0
    2284:	00150009 	move	$r9,$r0
    2288:	00150008 	move	$r8,$r0
    228c:	00150007 	move	$r7,$r0
    2290:	5002c800 	b	712(0x2c8) # 2558 <__clone>

0000000000002294 <exit>:
    register long a7 __asm__("a7") = n;
    2294:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2298:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    229c:	4c000020 	jirl	$r0,$r1,0

00000000000022a0 <waitpid>:
    register long a7 __asm__("a7") = n;
    22a0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22a4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22a8:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22ac:	00408084 	slli.w	$r4,$r4,0x0
}
    22b0:	4c000020 	jirl	$r0,$r1,0

00000000000022b4 <exec>:
    register long a7 __asm__("a7") = n;
    22b4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22b8:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22bc:	00408084 	slli.w	$r4,$r4,0x0
}
    22c0:	4c000020 	jirl	$r0,$r1,0

00000000000022c4 <execve>:
    register long a7 __asm__("a7") = n;
    22c4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22c8:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22cc:	00408084 	slli.w	$r4,$r4,0x0
}
    22d0:	4c000020 	jirl	$r0,$r1,0

00000000000022d4 <times>:
    register long a7 __asm__("a7") = n;
    22d4:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22d8:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22dc:	00408084 	slli.w	$r4,$r4,0x0
}
    22e0:	4c000020 	jirl	$r0,$r1,0

00000000000022e4 <get_time>:

int64 get_time()
{
    22e4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22e8:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22ec:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22f0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22f4:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22f8:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22fc:	44003c80 	bnez	$r4,60(0x3c) # 2338 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2300:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2304:	039f3c8c 	ori	$r12,$r4,0x7cf
    2308:	28c02064 	ld.d	$r4,$r3,8(0x8)
    230c:	2a40006d 	ld.hu	$r13,$r3,0
    2310:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2314:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2318:	00450c84 	srli.d	$r4,$r4,0x3
    231c:	001eb084 	mulh.du	$r4,$r4,$r12
    2320:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2324:	001db1ac 	mul.d	$r12,$r13,$r12
    2328:	00451084 	srli.d	$r4,$r4,0x4
    232c:	00109184 	add.d	$r4,$r12,$r4
}
    2330:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2334:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2338:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    233c:	53fff7ff 	b	-12(0xffffff4) # 2330 <get_time+0x4c>

0000000000002340 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2340:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2344:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2348:	00408084 	slli.w	$r4,$r4,0x0
}
    234c:	4c000020 	jirl	$r0,$r1,0

0000000000002350 <time>:
    register long a7 __asm__("a7") = n;
    2350:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2354:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2358:	00408084 	slli.w	$r4,$r4,0x0
}
    235c:	4c000020 	jirl	$r0,$r1,0

0000000000002360 <sleep>:

int sleep(unsigned long long time)
{
    2360:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2364:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2368:	00150064 	move	$r4,$r3
    236c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2370:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2374:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2378:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    237c:	44001080 	bnez	$r4,16(0x10) # 238c <sleep+0x2c>
    return 0;
    2380:	00150004 	move	$r4,$r0
}
    2384:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2388:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    238c:	24000064 	ldptr.w	$r4,$r3,0
}
    2390:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2394:	4c000020 	jirl	$r0,$r1,0

0000000000002398 <set_priority>:
    register long a7 __asm__("a7") = n;
    2398:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    239c:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23a0:	00408084 	slli.w	$r4,$r4,0x0
}
    23a4:	4c000020 	jirl	$r0,$r1,0

00000000000023a8 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23a8:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23ac:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23b0:	4c000020 	jirl	$r0,$r1,0

00000000000023b4 <munmap>:
    register long a7 __asm__("a7") = n;
    23b4:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23b8:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23bc:	00408084 	slli.w	$r4,$r4,0x0
}
    23c0:	4c000020 	jirl	$r0,$r1,0

00000000000023c4 <wait>:

int wait(int *code)
{
    23c4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23c8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23cc:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23d0:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23d4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23d8:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <spawn>:
    register long a7 __asm__("a7") = n;
    23e4:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23e8:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <mailread>:
    register long a7 __asm__("a7") = n;
    23f4:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23f8:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2404:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2408:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    240c:	00408084 	slli.w	$r4,$r4,0x0
}
    2410:	4c000020 	jirl	$r0,$r1,0

0000000000002414 <fstat>:
    register long a7 __asm__("a7") = n;
    2414:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2418:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2424:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2428:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    242c:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2430:	00408084 	slli.w	$r4,$r4,0x0
}
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2438:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    243c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2440:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2444:	00408084 	slli.w	$r4,$r4,0x0
}
    2448:	4c000020 	jirl	$r0,$r1,0

000000000000244c <link>:

int link(char *old_path, char *new_path)
{
    244c:	0015008c 	move	$r12,$r4
    2450:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2454:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2458:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    245c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2460:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2464:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2468:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    246c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <unlink>:

int unlink(char *path)
{
    2474:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2478:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    247c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2480:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2484:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2488:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    248c:	4c000020 	jirl	$r0,$r1,0

0000000000002490 <uname>:
    register long a7 __asm__("a7") = n;
    2490:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2494:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2498:	00408084 	slli.w	$r4,$r4,0x0
}
    249c:	4c000020 	jirl	$r0,$r1,0

00000000000024a0 <brk>:
    register long a7 __asm__("a7") = n;
    24a0:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24a4:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <getcwd>:
    register long a7 __asm__("a7") = n;
    24b0:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24b4:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <chdir>:
    register long a7 __asm__("a7") = n;
    24bc:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24c0:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <mkdir>:

int mkdir(const char *path, mode_t mode){
    24cc:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24d0:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24d4:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24d8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24dc:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24e0:	002b0000 	syscall	0x0
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <getdents>:
    register long a7 __asm__("a7") = n;
    24ec:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f0:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24f4:	00408084 	slli.w	$r4,$r4,0x0
}
    24f8:	4c000020 	jirl	$r0,$r1,0

00000000000024fc <pipe>:
    register long a7 __asm__("a7") = n;
    24fc:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2500:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2504:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2508:	00408084 	slli.w	$r4,$r4,0x0
}
    250c:	4c000020 	jirl	$r0,$r1,0

0000000000002510 <dup>:
    register long a7 __asm__("a7") = n;
    2510:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2514:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2518:	00408084 	slli.w	$r4,$r4,0x0
}
    251c:	4c000020 	jirl	$r0,$r1,0

0000000000002520 <dup2>:
    register long a7 __asm__("a7") = n;
    2520:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2524:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2528:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    252c:	00408084 	slli.w	$r4,$r4,0x0
}
    2530:	4c000020 	jirl	$r0,$r1,0

0000000000002534 <mount>:
    register long a7 __asm__("a7") = n;
    2534:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2538:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    253c:	00408084 	slli.w	$r4,$r4,0x0
}
    2540:	4c000020 	jirl	$r0,$r1,0

0000000000002544 <umount>:
    register long a7 __asm__("a7") = n;
    2544:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2548:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    254c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2550:	00408084 	slli.w	$r4,$r4,0x0
}
    2554:	4c000020 	jirl	$r0,$r1,0

0000000000002558 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2558:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    255c:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2560:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2564:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2568:	00150106 	move	$r6,$r8
	move $a3, $a5
    256c:	00150127 	move	$r7,$r9
	move $a4, $a6
    2570:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2574:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2578:	002b0000 	syscall	0x0

	beqz $a0, 1f
    257c:	40000880 	beqz	$r4,8(0x8) # 2584 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2580:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2584:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2588:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    258c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2590:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2594:	002b0000 	syscall	0x0
