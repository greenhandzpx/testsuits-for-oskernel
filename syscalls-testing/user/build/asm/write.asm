
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/write:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400b400 	bl	180(0xb4) # 10b8 <__start_main>

0000000000001008 <test_write>:
#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

void test_write(){
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d59084 	addi.d	$r4,$r4,1380(0x564)
void test_write(){
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    1018:	27000077 	stptr.d	$r23,$r3,0
	TEST_START(__func__);
    101c:	5403a400 	bl	932(0x3a4) # 13c0 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d76084 	addi.d	$r4,$r4,1496(0x5d8)
    1028:	54039800 	bl	920(0x398) # 13c0 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
    1034:	54038c00 	bl	908(0x38c) # 13c0 <puts>
	const char *str = "Hello operating system contest.\n";
	int str_len = strlen(str);
    1038:	1c000024 	pcaddu12i	$r4,1(0x1)
    103c:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1040:	540a6400 	bl	2660(0xa64) # 1aa4 <strlen>
    1044:	00408097 	slli.w	$r23,$r4,0x0
	assert(write(STDOUT, str, str_len) == str_len);
    1048:	001502e6 	move	$r6,$r23
    104c:	1c000025 	pcaddu12i	$r5,1(0x1)
    1050:	02d530a5 	addi.d	$r5,$r5,1356(0x54c)
    1054:	02800404 	addi.w	$r4,$r0,1(0x1)
    1058:	5411a000 	bl	4512(0x11a0) # 21f8 <write>
    105c:	58001097 	beq	$r4,$r23,16(0x10) # 106c <test_write+0x64>
    1060:	1c000024 	pcaddu12i	$r4,1(0x1)
    1064:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1068:	5406a000 	bl	1696(0x6a0) # 1708 <panic>
	TEST_END(__func__);
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d5d084 	addi.d	$r4,$r4,1396(0x574)
    1074:	54034c00 	bl	844(0x34c) # 13c0 <puts>
    1078:	1c000024 	pcaddu12i	$r4,1(0x1)
    107c:	02d60084 	addi.d	$r4,$r4,1408(0x580)
    1080:	54034000 	bl	832(0x340) # 13c0 <puts>
}
    1084:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1088:	26000077 	ldptr.d	$r23,$r3,0
	TEST_END(__func__);
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d3f084 	addi.d	$r4,$r4,1276(0x4fc)
}
    1094:	02c04063 	addi.d	$r3,$r3,16(0x10)
	TEST_END(__func__);
    1098:	50032800 	b	808(0x328) # 13c0 <puts>

000000000000109c <main>:

int main(void) {
    109c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10a0:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_write();
    10a4:	57ff67ff 	bl	-156(0xfffff64) # 1008 <test_write>
	return 0;
}
    10a8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10ac:	00150004 	move	$r4,$r0
    10b0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10b4:	4c000020 	jirl	$r0,$r1,0

00000000000010b8 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10b8:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10bc:	24000084 	ldptr.w	$r4,$r4,0
{
    10c0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10c4:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10c8:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10cc:	57ffd3ff 	bl	-48(0xfffffd0) # 109c <main>
    10d0:	54119c00 	bl	4508(0x119c) # 226c <exit>
	return 0;
}
    10d4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10d8:	00150004 	move	$r4,$r0
    10dc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10e0:	4c000020 	jirl	$r0,$r1,0

00000000000010e4 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10e4:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10e8:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10ec:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12b8 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10f0:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10f4:	1c00002c 	pcaddu12i	$r12,1(0x1)
    10f8:	02d4518c 	addi.d	$r12,$r12,1300(0x514)
    10fc:	002195cf 	mod.wu	$r15,$r14,$r5
    1100:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1108 <printint.constprop.0+0x24>
    1104:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1108:	002115cd 	div.wu	$r13,$r14,$r5
    110c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1114 <printint.constprop.0+0x30>
    1110:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1114:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1118:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    111c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1120:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1124:	680219c5 	bltu	$r14,$r5,536(0x218) # 133c <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1128:	002195af 	mod.wu	$r15,$r13,$r5
    112c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1134 <printint.constprop.0+0x50>
    1130:	002a0007 	break	0x7
    1134:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1138:	002115ae 	div.wu	$r14,$r13,$r5
    113c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1144 <printint.constprop.0+0x60>
    1140:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1144:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1148:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    114c:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 130c <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1150:	002195cf 	mod.wu	$r15,$r14,$r5
    1154:	5c0008a0 	bne	$r5,$r0,8(0x8) # 115c <printint.constprop.0+0x78>
    1158:	002a0007 	break	0x7
    115c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1160:	002115cd 	div.wu	$r13,$r14,$r5
    1164:	5c0008a0 	bne	$r5,$r0,8(0x8) # 116c <printint.constprop.0+0x88>
    1168:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    116c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1170:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1174:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1318 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1178:	002195af 	mod.wu	$r15,$r13,$r5
    117c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1184 <printint.constprop.0+0xa0>
    1180:	002a0007 	break	0x7
    1184:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1188:	002115ae 	div.wu	$r14,$r13,$r5
    118c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1194 <printint.constprop.0+0xb0>
    1190:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1194:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1198:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    119c:	680189a5 	bltu	$r13,$r5,392(0x188) # 1324 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11a0:	002195cf 	mod.wu	$r15,$r14,$r5
    11a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ac <printint.constprop.0+0xc8>
    11a8:	002a0007 	break	0x7
    11ac:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b0:	002115cd 	div.wu	$r13,$r14,$r5
    11b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11bc <printint.constprop.0+0xd8>
    11b8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11bc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c0:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11c4:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1330 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11c8:	002195af 	mod.wu	$r15,$r13,$r5
    11cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d4 <printint.constprop.0+0xf0>
    11d0:	002a0007 	break	0x7
    11d4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d8:	002115ae 	div.wu	$r14,$r13,$r5
    11dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e4 <printint.constprop.0+0x100>
    11e0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e8:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11ec:	680115a5 	bltu	$r13,$r5,276(0x114) # 1300 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11f0:	002195cf 	mod.wu	$r15,$r14,$r5
    11f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11fc <printint.constprop.0+0x118>
    11f8:	002a0007 	break	0x7
    11fc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1200:	002115cd 	div.wu	$r13,$r14,$r5
    1204:	5c0008a0 	bne	$r5,$r0,8(0x8) # 120c <printint.constprop.0+0x128>
    1208:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    120c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1210:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1214:	680131c5 	bltu	$r14,$r5,304(0x130) # 1344 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1218:	002195af 	mod.wu	$r15,$r13,$r5
    121c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1224 <printint.constprop.0+0x140>
    1220:	002a0007 	break	0x7
    1224:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1228:	002115ae 	div.wu	$r14,$r13,$r5
    122c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1234 <printint.constprop.0+0x150>
    1230:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1234:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1238:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    123c:	680115a5 	bltu	$r13,$r5,276(0x114) # 1350 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1240:	002195cf 	mod.wu	$r15,$r14,$r5
    1244:	5c0008a0 	bne	$r5,$r0,8(0x8) # 124c <printint.constprop.0+0x168>
    1248:	002a0007 	break	0x7
    124c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1250:	002115cd 	div.wu	$r13,$r14,$r5
    1254:	5c0008a0 	bne	$r5,$r0,8(0x8) # 125c <printint.constprop.0+0x178>
    1258:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    125c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1260:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1264:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 135c <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1268:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    126c:	3820358d 	ldx.bu	$r13,$r12,$r13
    1270:	02801805 	addi.w	$r5,$r0,6(0x6)
    1274:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1278:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    127c:	64001880 	bge	$r4,$r0,24(0x18) # 1294 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1280:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1284:	0010b1ad 	add.d	$r13,$r13,$r12
    1288:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    128c:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1290:	00150185 	move	$r5,$r12
    write(f, s, l);
    1294:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1298:	02804006 	addi.w	$r6,$r0,16(0x10)
    129c:	001114c6 	sub.w	$r6,$r6,$r5
    12a0:	02800404 	addi.w	$r4,$r0,1(0x1)
    12a4:	00109585 	add.d	$r5,$r12,$r5
    12a8:	540f5000 	bl	3920(0xf50) # 21f8 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12ac:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12b0:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12b4:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12b8:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12bc:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12c0:	02cd318c 	addi.d	$r12,$r12,844(0x34c)
    12c4:	002195cf 	mod.wu	$r15,$r14,$r5
    12c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d0 <printint.constprop.0+0x1ec>
    12cc:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12d0:	002115cd 	div.wu	$r13,$r14,$r5
    12d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12dc <printint.constprop.0+0x1f8>
    12d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12dc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12e4:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12e8:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12ec:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1128 <printint.constprop.0+0x44>
        buf[i--] = '-';
    12f0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12f4:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    12f8:	02803805 	addi.w	$r5,$r0,14(0xe)
    12fc:	53ff9bff 	b	-104(0xfffff98) # 1294 <printint.constprop.0+0x1b0>
    1300:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1304:	02802805 	addi.w	$r5,$r0,10(0xa)
    1308:	53ff77ff 	b	-140(0xfffff74) # 127c <printint.constprop.0+0x198>
    130c:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1310:	02803805 	addi.w	$r5,$r0,14(0xe)
    1314:	53ff6bff 	b	-152(0xfffff68) # 127c <printint.constprop.0+0x198>
    1318:	0280300c 	addi.w	$r12,$r0,12(0xc)
    131c:	02803405 	addi.w	$r5,$r0,13(0xd)
    1320:	53ff5fff 	b	-164(0xfffff5c) # 127c <printint.constprop.0+0x198>
    1324:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1328:	02803005 	addi.w	$r5,$r0,12(0xc)
    132c:	53ff53ff 	b	-176(0xfffff50) # 127c <printint.constprop.0+0x198>
    1330:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1334:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1338:	53ff47ff 	b	-188(0xfffff44) # 127c <printint.constprop.0+0x198>
    i = 15;
    133c:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1340:	53ff57ff 	b	-172(0xfffff54) # 1294 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1344:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1348:	02802405 	addi.w	$r5,$r0,9(0x9)
    134c:	53ff33ff 	b	-208(0xfffff30) # 127c <printint.constprop.0+0x198>
    1350:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1354:	02802005 	addi.w	$r5,$r0,8(0x8)
    1358:	53ff27ff 	b	-220(0xfffff24) # 127c <printint.constprop.0+0x198>
    135c:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1360:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1364:	53ff1bff 	b	-232(0xfffff18) # 127c <printint.constprop.0+0x198>

0000000000001368 <getchar>:
{
    1368:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    136c:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1370:	02800406 	addi.w	$r6,$r0,1(0x1)
    1374:	00150004 	move	$r4,$r0
{
    1378:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    137c:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1380:	540e6c00 	bl	3692(0xe6c) # 21ec <read>
}
    1384:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1388:	28003c64 	ld.b	$r4,$r3,15(0xf)
    138c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1390:	4c000020 	jirl	$r0,$r1,0

0000000000001394 <putchar>:
{
    1394:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1398:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    139c:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13a0:	02800406 	addi.w	$r6,$r0,1(0x1)
    13a4:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13a8:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13ac:	540e4c00 	bl	3660(0xe4c) # 21f8 <write>
}
    13b0:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13b4:	00408084 	slli.w	$r4,$r4,0x0
}
    13b8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13bc:	4c000020 	jirl	$r0,$r1,0

00000000000013c0 <puts>:
{
    13c0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13c4:	29c02061 	st.d	$r1,$r3,8(0x8)
    13c8:	27000077 	stptr.d	$r23,$r3,0
    13cc:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13d0:	5406d400 	bl	1748(0x6d4) # 1aa4 <strlen>
    13d4:	00150086 	move	$r6,$r4
    13d8:	001502e5 	move	$r5,$r23
    13dc:	02800404 	addi.w	$r4,$r0,1(0x1)
    13e0:	540e1800 	bl	3608(0xe18) # 21f8 <write>
}
    13e4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13e8:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13ec:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13f0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13f4:	4c000020 	jirl	$r0,$r1,0

00000000000013f8 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    13f8:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    13fc:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1400:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1404:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1408:	29c14079 	st.d	$r25,$r3,80(0x50)
    140c:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1410:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1414:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1418:	29c18077 	st.d	$r23,$r3,96(0x60)
    141c:	29c16078 	st.d	$r24,$r3,88(0x58)
    1420:	0015009b 	move	$r27,$r4
    1424:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1428:	29c20066 	st.d	$r6,$r3,128(0x80)
    142c:	29c22067 	st.d	$r7,$r3,136(0x88)
    1430:	29c24068 	st.d	$r8,$r3,144(0x90)
    1434:	29c26069 	st.d	$r9,$r3,152(0x98)
    1438:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    143c:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1440:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1444:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1448:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    144c:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1450:	02c6f39c 	addi.d	$r28,$r28,444(0x1bc)
        if (!*s)
    1454:	2800036c 	ld.b	$r12,$r27,0
    1458:	40008980 	beqz	$r12,136(0x88) # 14e0 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    145c:	58027d99 	beq	$r12,$r25,636(0x27c) # 16d8 <printf+0x2e0>
    1460:	00150366 	move	$r6,$r27
    1464:	50000800 	b	8(0x8) # 146c <printf+0x74>
    1468:	58009d99 	beq	$r12,$r25,156(0x9c) # 1504 <printf+0x10c>
    146c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1470:	280000cc 	ld.b	$r12,$r6,0
    1474:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1468 <printf+0x70>
    1478:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    147c:	0011ecd7 	sub.d	$r23,$r6,$r27
    1480:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1484:	001502e6 	move	$r6,$r23
    1488:	00150365 	move	$r5,$r27
    148c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1490:	540d6800 	bl	3432(0xd68) # 21f8 <write>
        out(f, a, l);
        if (l)
    1494:	4400b6e0 	bnez	$r23,180(0xb4) # 1548 <printf+0x150>
            continue;
        if (s[1] == 0)
    1498:	2800070c 	ld.b	$r12,$r24,1(0x1)
    149c:	40004580 	beqz	$r12,68(0x44) # 14e0 <printf+0xe8>
            break;
        switch (s[1])
    14a0:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14a4:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1578 <printf+0x180>
    14a8:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1550 <printf+0x158>
    14ac:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14b0:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16a0 <printf+0x2a8>
    14b4:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14b8:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1668 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14bc:	2600006c 	ldptr.d	$r12,$r3,0
    14c0:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14c4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14c8:	24000184 	ldptr.w	$r4,$r12,0
    14cc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14d0:	2700006c 	stptr.d	$r12,$r3,0
    14d4:	57fc13ff 	bl	-1008(0xffffc10) # 10e4 <printint.constprop.0>
        if (!*s)
    14d8:	2800036c 	ld.b	$r12,$r27,0
    14dc:	47ff819f 	bnez	$r12,-128(0x7fff80) # 145c <printf+0x64>
    }
    va_end(ap);
}
    14e0:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14e4:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14e8:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14ec:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14f0:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14f4:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    14f8:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    14fc:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1500:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1504:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1508:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1478 <printf+0x80>
    150c:	001500d8 	move	$r24,$r6
    1510:	50000c00 	b	12(0xc) # 151c <printf+0x124>
    1514:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1518:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 147c <printf+0x84>
    151c:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1520:	2800030c 	ld.b	$r12,$r24,0
    1524:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1528:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1514 <printf+0x11c>
        l = z - a;
    152c:	0011ecd7 	sub.d	$r23,$r6,$r27
    1530:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1534:	001502e6 	move	$r6,$r23
    1538:	00150365 	move	$r5,$r27
    153c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1540:	540cb800 	bl	3256(0xcb8) # 21f8 <write>
        if (l)
    1544:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1498 <printf+0xa0>
    1548:	0015031b 	move	$r27,$r24
    154c:	53ff0bff 	b	-248(0xfffff08) # 1454 <printf+0x5c>
        switch (s[1])
    1550:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1554:	5c01158d 	bne	$r12,$r13,276(0x114) # 1668 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1558:	2600006c 	ldptr.d	$r12,$r3,0
    155c:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1560:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1564:	24000184 	ldptr.w	$r4,$r12,0
    1568:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    156c:	2700006c 	stptr.d	$r12,$r3,0
    1570:	57fb77ff 	bl	-1164(0xffffb74) # 10e4 <printint.constprop.0>
        s += 2;
    1574:	53ff67ff 	b	-156(0xfffff64) # 14d8 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1578:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    157c:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1580:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1584:	260001ac 	ldptr.d	$r12,$r13,0
    1588:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    158c:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1590:	0045f18a 	srli.d	$r10,$r12,0x3c
    1594:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1598:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    159c:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15a0:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15a4:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15a8:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15ac:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15b0:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15b4:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15b8:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15bc:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15c0:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15c4:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15c8:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15cc:	3820278a 	ldx.bu	$r10,$r28,$r9
    15d0:	38202389 	ldx.bu	$r9,$r28,$r8
    15d4:	38201f88 	ldx.bu	$r8,$r28,$r7
    15d8:	38201787 	ldx.bu	$r7,$r28,$r5
    15dc:	38201385 	ldx.bu	$r5,$r28,$r4
    15e0:	38205384 	ldx.bu	$r4,$r28,$r20
    15e4:	38204f94 	ldx.bu	$r20,$r28,$r19
    15e8:	38204b93 	ldx.bu	$r19,$r28,$r18
    15ec:	38204792 	ldx.bu	$r18,$r28,$r17
    15f0:	38204391 	ldx.bu	$r17,$r28,$r16
    15f4:	38203f90 	ldx.bu	$r16,$r28,$r15
    15f8:	38203b8f 	ldx.bu	$r15,$r28,$r14
    15fc:	3820378e 	ldx.bu	$r14,$r28,$r13
    1600:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1604:	03403d8c 	andi	$r12,$r12,0xf
    1608:	2900286b 	st.b	$r11,$r3,10(0xa)
    160c:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1610:	29003069 	st.b	$r9,$r3,12(0xc)
    1614:	29003468 	st.b	$r8,$r3,13(0xd)
    1618:	29003867 	st.b	$r7,$r3,14(0xe)
    161c:	29003c65 	st.b	$r5,$r3,15(0xf)
    1620:	29004064 	st.b	$r4,$r3,16(0x10)
    1624:	29004474 	st.b	$r20,$r3,17(0x11)
    1628:	29004873 	st.b	$r19,$r3,18(0x12)
    162c:	29004c72 	st.b	$r18,$r3,19(0x13)
    1630:	29005071 	st.b	$r17,$r3,20(0x14)
    1634:	29005470 	st.b	$r16,$r3,21(0x15)
    1638:	2900586f 	st.b	$r15,$r3,22(0x16)
    163c:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1640:	3820378d 	ldx.bu	$r13,$r28,$r13
    1644:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1648:	02c02065 	addi.d	$r5,$r3,8(0x8)
    164c:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1650:	2900606d 	st.b	$r13,$r3,24(0x18)
    1654:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1658:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    165c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1660:	540b9800 	bl	2968(0xb98) # 21f8 <write>
        s += 2;
    1664:	53fe77ff 	b	-396(0xffffe74) # 14d8 <printf+0xe0>
    char byte = c;
    1668:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    166c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1670:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1674:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1678:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    167c:	540b7c00 	bl	2940(0xb7c) # 21f8 <write>
    char byte = c;
    1680:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1684:	02800406 	addi.w	$r6,$r0,1(0x1)
    1688:	02c02065 	addi.d	$r5,$r3,8(0x8)
    168c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1690:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1694:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1698:	540b6000 	bl	2912(0xb60) # 21f8 <write>
        s += 2;
    169c:	53fe3fff 	b	-452(0xffffe3c) # 14d8 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16a0:	2600006c 	ldptr.d	$r12,$r3,0
    16a4:	26000197 	ldptr.d	$r23,$r12,0
    16a8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16ac:	2700006c 	stptr.d	$r12,$r3,0
    16b0:	40004ee0 	beqz	$r23,76(0x4c) # 16fc <printf+0x304>
            l = strnlen(a, 200);
    16b4:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16b8:	001502e4 	move	$r4,$r23
    16bc:	5405d000 	bl	1488(0x5d0) # 1c8c <strnlen>
    16c0:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16c4:	001502e5 	move	$r5,$r23
    16c8:	02800404 	addi.w	$r4,$r0,1(0x1)
    16cc:	540b2c00 	bl	2860(0xb2c) # 21f8 <write>
        s += 2;
    16d0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16d4:	53fe07ff 	b	-508(0xffffe04) # 14d8 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16d8:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16dc:	00150366 	move	$r6,$r27
    16e0:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 150c <printf+0x114>
    write(f, s, l);
    16e4:	00150006 	move	$r6,$r0
    16e8:	00150365 	move	$r5,$r27
    16ec:	02800404 	addi.w	$r4,$r0,1(0x1)
    16f0:	540b0800 	bl	2824(0xb08) # 21f8 <write>
    16f4:	00150378 	move	$r24,$r27
    16f8:	53fda3ff 	b	-608(0xffffda0) # 1498 <printf+0xa0>
                a = "(null)";
    16fc:	1c000037 	pcaddu12i	$r23,1(0x1)
    1700:	02fbd2f7 	addi.d	$r23,$r23,-268(0xef4)
    1704:	53ffb3ff 	b	-80(0xfffffb0) # 16b4 <printf+0x2bc>

0000000000001708 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1708:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    170c:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1710:	57fcb3ff 	bl	-848(0xffffcb0) # 13c0 <puts>
    exit(-100);
}
    1714:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1718:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    171c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1720:	500b4c00 	b	2892(0xb4c) # 226c <exit>

0000000000001724 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1724:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1728:	5800108c 	beq	$r4,$r12,16(0x10) # 1738 <isspace+0x14>
    172c:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1730:	02401484 	sltui	$r4,$r4,5(0x5)
    1734:	4c000020 	jirl	$r0,$r1,0
    1738:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    173c:	4c000020 	jirl	$r0,$r1,0

0000000000001740 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1740:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1744:	02402884 	sltui	$r4,$r4,10(0xa)
    1748:	4c000020 	jirl	$r0,$r1,0

000000000000174c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    174c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1750:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1754:	2800008d 	ld.b	$r13,$r4,0
    1758:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    175c:	580061ae 	beq	$r13,$r14,96(0x60) # 17bc <atoi+0x70>
    1760:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17bc <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1764:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1768:	580065ac 	beq	$r13,$r12,100(0x64) # 17cc <atoi+0x80>
    176c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1770:	58007dac 	beq	$r13,$r12,124(0x7c) # 17ec <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1774:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1778:	0280240e 	addi.w	$r14,$r0,9(0x9)
    177c:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1780:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1784:	680061cf 	bltu	$r14,$r15,96(0x60) # 17e4 <atoi+0x98>
    int n = 0, neg = 0;
    1788:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    178c:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1790:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1794:	001c126f 	mul.w	$r15,$r19,$r4
    1798:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    179c:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17a0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17a4:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17a8:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17ac:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17b0:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1794 <atoi+0x48>
    return neg ? n : -n;
    17b4:	40001280 	beqz	$r20,16(0x10) # 17c4 <atoi+0x78>
}
    17b8:	4c000020 	jirl	$r0,$r1,0
        s++;
    17bc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17c0:	53ff97ff 	b	-108(0xfffff94) # 1754 <atoi+0x8>
    17c4:	00113e04 	sub.w	$r4,$r16,$r15
    17c8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17cc:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17d0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17d4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17d8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17dc:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17e0:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1788 <atoi+0x3c>
    17e4:	00150004 	move	$r4,$r0
}
    17e8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17ec:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17f0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17f4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17f8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17fc:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17e4 <atoi+0x98>
        neg = 1;
    1800:	02800414 	addi.w	$r20,$r0,1(0x1)
    1804:	53ff87ff 	b	-124(0xfffff84) # 1788 <atoi+0x3c>

0000000000001808 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1808:	400198c0 	beqz	$r6,408(0x198) # 19a0 <memset+0x198>
    180c:	0011900c 	sub.d	$r12,$r0,$r4
    1810:	03401d8c 	andi	$r12,$r12,0x7
    1814:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1818:	02402dae 	sltui	$r14,$r13,11(0xb)
    181c:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1820:	0013b9ad 	masknez	$r13,$r13,$r14
    1824:	001339ee 	maskeqz	$r14,$r15,$r14
    1828:	001539ad 	or	$r13,$r13,$r14
    182c:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1830:	00005ca5 	ext.w.b	$r5,$r5
    1834:	680191ed 	bltu	$r15,$r13,400(0x190) # 19c4 <memset+0x1bc>
    1838:	40018180 	beqz	$r12,384(0x180) # 19b8 <memset+0x1b0>
    183c:	29000085 	st.b	$r5,$r4,0
    1840:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1844:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1848:	5801698d 	beq	$r12,$r13,360(0x168) # 19b0 <memset+0x1a8>
    184c:	29000485 	st.b	$r5,$r4,1(0x1)
    1850:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1854:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1858:	5801798d 	beq	$r12,$r13,376(0x178) # 19d0 <memset+0x1c8>
    185c:	29000885 	st.b	$r5,$r4,2(0x2)
    1860:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1864:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1868:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19a4 <memset+0x19c>
    186c:	29000c85 	st.b	$r5,$r4,3(0x3)
    1870:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1874:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1878:	5801618d 	beq	$r12,$r13,352(0x160) # 19d8 <memset+0x1d0>
    187c:	29001085 	st.b	$r5,$r4,4(0x4)
    1880:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1884:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1888:	5801598d 	beq	$r12,$r13,344(0x158) # 19e0 <memset+0x1d8>
    188c:	29001485 	st.b	$r5,$r4,5(0x5)
    1890:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1894:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1898:	5c01518d 	bne	$r12,$r13,336(0x150) # 19e8 <memset+0x1e0>
    189c:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18a0:	29001885 	st.b	$r5,$r4,6(0x6)
    18a4:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18a8:	0015000d 	move	$r13,$r0
    18ac:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18b0:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18b4:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18b8:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18bc:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18c0:	0011b0d0 	sub.d	$r16,$r6,$r12
    18c4:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18c8:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18cc:	0010b08c 	add.d	$r12,$r4,$r12
    18d0:	00450e0f 	srli.d	$r15,$r16,0x3
    18d4:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18d8:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18dc:	2700018d 	stptr.d	$r13,$r12,0
    18e0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18e4:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18dc <memset+0xd4>
    18e8:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18ec:	0014be0f 	and	$r15,$r16,$r15
    18f0:	004081ed 	slli.w	$r13,$r15,0x0
    18f4:	0010bdcc 	add.d	$r12,$r14,$r15
    18f8:	001045ad 	add.w	$r13,$r13,$r17
    18fc:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19ac <memset+0x1a4>
    1900:	29000185 	st.b	$r5,$r12,0
    1904:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1908:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19a0 <memset+0x198>
    190c:	29000585 	st.b	$r5,$r12,1(0x1)
    1910:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1914:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19a0 <memset+0x198>
    1918:	29000985 	st.b	$r5,$r12,2(0x2)
    191c:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1920:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19a0 <memset+0x198>
    1924:	29000d85 	st.b	$r5,$r12,3(0x3)
    1928:	028011ae 	addi.w	$r14,$r13,4(0x4)
    192c:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19a0 <memset+0x198>
    1930:	29001185 	st.b	$r5,$r12,4(0x4)
    1934:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1938:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19a0 <memset+0x198>
    193c:	29001585 	st.b	$r5,$r12,5(0x5)
    1940:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1944:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19a0 <memset+0x198>
    1948:	29001985 	st.b	$r5,$r12,6(0x6)
    194c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1950:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19a0 <memset+0x198>
    1954:	29001d85 	st.b	$r5,$r12,7(0x7)
    1958:	028021ae 	addi.w	$r14,$r13,8(0x8)
    195c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19a0 <memset+0x198>
    1960:	29002185 	st.b	$r5,$r12,8(0x8)
    1964:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1968:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19a0 <memset+0x198>
    196c:	29002585 	st.b	$r5,$r12,9(0x9)
    1970:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1974:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19a0 <memset+0x198>
    1978:	29002985 	st.b	$r5,$r12,10(0xa)
    197c:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1980:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19a0 <memset+0x198>
    1984:	29002d85 	st.b	$r5,$r12,11(0xb)
    1988:	028031ae 	addi.w	$r14,$r13,12(0xc)
    198c:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19a0 <memset+0x198>
    1990:	29003185 	st.b	$r5,$r12,12(0xc)
    1994:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1998:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19a0 <memset+0x198>
    199c:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19a0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19a4:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19a8:	53ff03ff 	b	-256(0xfffff00) # 18a8 <memset+0xa0>
    19ac:	4c000020 	jirl	$r0,$r1,0
    19b0:	02800411 	addi.w	$r17,$r0,1(0x1)
    19b4:	53fef7ff 	b	-268(0xffffef4) # 18a8 <memset+0xa0>
    19b8:	0015008e 	move	$r14,$r4
    19bc:	00150011 	move	$r17,$r0
    19c0:	53feebff 	b	-280(0xffffee8) # 18a8 <memset+0xa0>
    19c4:	0015008c 	move	$r12,$r4
    19c8:	0015000d 	move	$r13,$r0
    19cc:	53ff37ff 	b	-204(0xfffff34) # 1900 <memset+0xf8>
    19d0:	02800811 	addi.w	$r17,$r0,2(0x2)
    19d4:	53fed7ff 	b	-300(0xffffed4) # 18a8 <memset+0xa0>
    19d8:	02801011 	addi.w	$r17,$r0,4(0x4)
    19dc:	53fecfff 	b	-308(0xffffecc) # 18a8 <memset+0xa0>
    19e0:	02801411 	addi.w	$r17,$r0,5(0x5)
    19e4:	53fec7ff 	b	-316(0xffffec4) # 18a8 <memset+0xa0>
    19e8:	02801811 	addi.w	$r17,$r0,6(0x6)
    19ec:	53febfff 	b	-324(0xffffebc) # 18a8 <memset+0xa0>

00000000000019f0 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19f0:	2800008c 	ld.b	$r12,$r4,0
    19f4:	280000ae 	ld.b	$r14,$r5,0
    19f8:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a2c <strcmp+0x3c>
    19fc:	40003980 	beqz	$r12,56(0x38) # 1a34 <strcmp+0x44>
    1a00:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a04:	50000800 	b	8(0x8) # 1a0c <strcmp+0x1c>
    1a08:	400019a0 	beqz	$r13,24(0x18) # 1a20 <strcmp+0x30>
    1a0c:	3800308d 	ldx.b	$r13,$r4,$r12
    1a10:	380030ae 	ldx.b	$r14,$r5,$r12
    1a14:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a18:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a08 <strcmp+0x18>
    1a1c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a20:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a24:	001111a4 	sub.w	$r4,$r13,$r4
    1a28:	4c000020 	jirl	$r0,$r1,0
    1a2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a30:	53fff3ff 	b	-16(0xffffff0) # 1a20 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a34:	0015000d 	move	$r13,$r0
    1a38:	53ffebff 	b	-24(0xfffffe8) # 1a20 <strcmp+0x30>

0000000000001a3c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a3c:	400054c0 	beqz	$r6,84(0x54) # 1a90 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a40:	2a00008d 	ld.bu	$r13,$r4,0
    1a44:	2a0000ae 	ld.bu	$r14,$r5,0
    1a48:	40003da0 	beqz	$r13,60(0x3c) # 1a84 <strncmp+0x48>
    1a4c:	40003dc0 	beqz	$r14,60(0x3c) # 1a88 <strncmp+0x4c>
    if (!n--)
    1a50:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a54:	400034c0 	beqz	$r6,52(0x34) # 1a88 <strncmp+0x4c>
    1a58:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a5c:	580019ae 	beq	$r13,$r14,24(0x18) # 1a74 <strncmp+0x38>
    1a60:	50002800 	b	40(0x28) # 1a88 <strncmp+0x4c>
    1a64:	400035c0 	beqz	$r14,52(0x34) # 1a98 <strncmp+0x5c>
    1a68:	580020cc 	beq	$r6,$r12,32(0x20) # 1a88 <strncmp+0x4c>
    1a6c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a70:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a98 <strncmp+0x5c>
    1a74:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a78:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a7c:	001501af 	move	$r15,$r13
    1a80:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a64 <strncmp+0x28>
    1a84:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a88:	001139a4 	sub.w	$r4,$r13,$r14
    1a8c:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a90:	00150004 	move	$r4,$r0
}
    1a94:	4c000020 	jirl	$r0,$r1,0
    1a98:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a9c:	001139a4 	sub.w	$r4,$r13,$r14
    1aa0:	4c000020 	jirl	$r0,$r1,0

0000000000001aa4 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1aa4:	03401c8c 	andi	$r12,$r4,0x7
    1aa8:	4000b180 	beqz	$r12,176(0xb0) # 1b58 <strlen+0xb4>
        if (!*s)
    1aac:	2800008c 	ld.b	$r12,$r4,0
    1ab0:	4000b180 	beqz	$r12,176(0xb0) # 1b60 <strlen+0xbc>
    1ab4:	0015008c 	move	$r12,$r4
    1ab8:	50000c00 	b	12(0xc) # 1ac4 <strlen+0x20>
    1abc:	2800018d 	ld.b	$r13,$r12,0
    1ac0:	400091a0 	beqz	$r13,144(0x90) # 1b50 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ac4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac8:	03401d8d 	andi	$r13,$r12,0x7
    1acc:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1abc <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1ad0:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ad4:	2600018f 	ldptr.d	$r15,$r12,0
    1ad8:	03bbfdad 	ori	$r13,$r13,0xeff
    1adc:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ae0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1ae4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ae8:	038201ce 	ori	$r14,$r14,0x80
    1aec:	0010b5ed 	add.d	$r13,$r15,$r13
    1af0:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1af4:	0016bdad 	andn	$r13,$r13,$r15
    1af8:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1afc:	0014b9ae 	and	$r14,$r13,$r14
    1b00:	440049c0 	bnez	$r14,72(0x48) # 1b48 <strlen+0xa4>
    1b04:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b08:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b0c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b10:	2600018e 	ldptr.d	$r14,$r12,0
    1b14:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b18:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b1c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b20:	0382020f 	ori	$r15,$r16,0x80
    1b24:	0010b5cd 	add.d	$r13,$r14,$r13
    1b28:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b2c:	0016b9ad 	andn	$r13,$r13,$r14
    1b30:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b34:	0014bdad 	and	$r13,$r13,$r15
    1b38:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b0c <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b3c:	2800018d 	ld.b	$r13,$r12,0
    1b40:	400011a0 	beqz	$r13,16(0x10) # 1b50 <strlen+0xac>
    1b44:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b48:	2800018d 	ld.b	$r13,$r12,0
    1b4c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b44 <strlen+0xa0>
        ;
    return s - a;
    1b50:	00119184 	sub.d	$r4,$r12,$r4
}
    1b54:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b58:	0015008c 	move	$r12,$r4
    1b5c:	53ff77ff 	b	-140(0xfffff74) # 1ad0 <strlen+0x2c>
        if (!*s)
    1b60:	00150004 	move	$r4,$r0
            return s - a;
    1b64:	4c000020 	jirl	$r0,$r1,0

0000000000001b68 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b68:	03401c8c 	andi	$r12,$r4,0x7
    1b6c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b70:	44002180 	bnez	$r12,32(0x20) # 1b90 <memchr+0x28>
    1b74:	50002c00 	b	44(0x2c) # 1ba0 <memchr+0x38>
    1b78:	2a00008c 	ld.bu	$r12,$r4,0
    1b7c:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c74 <memchr+0x10c>
    1b80:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b84:	03401c8c 	andi	$r12,$r4,0x7
    1b88:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b8c:	40001580 	beqz	$r12,20(0x14) # 1ba0 <memchr+0x38>
    1b90:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b78 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b94:	0015000d 	move	$r13,$r0
}
    1b98:	001501a4 	move	$r4,$r13
    1b9c:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1ba0:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1ba4:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b98 <memchr+0x30>
    1ba8:	2a00008c 	ld.bu	$r12,$r4,0
    1bac:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c74 <memchr+0x10c>
        size_t k = ONES * c;
    1bb0:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bb4:	0384058c 	ori	$r12,$r12,0x101
    1bb8:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bbc:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bc0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bc4:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bc8:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c84 <memchr+0x11c>
    1bcc:	2600008d 	ldptr.d	$r13,$r4,0
    1bd0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bd4:	038201ce 	ori	$r14,$r14,0x80
    1bd8:	0015b60d 	xor	$r13,$r16,$r13
    1bdc:	0011b1ac 	sub.d	$r12,$r13,$r12
    1be0:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1be4:	0016b58c 	andn	$r12,$r12,$r13
    1be8:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bec:	0014b98c 	and	$r12,$r12,$r14
    1bf0:	44009580 	bnez	$r12,148(0x94) # 1c84 <memchr+0x11c>
    1bf4:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1bf8:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1bfc:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c00:	50002000 	b	32(0x20) # 1c20 <memchr+0xb8>
    1c04:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c08:	0015b20c 	xor	$r12,$r16,$r12
    1c0c:	0010b98e 	add.d	$r14,$r12,$r14
    1c10:	0016b1cc 	andn	$r12,$r14,$r12
    1c14:	0014bd8c 	and	$r12,$r12,$r15
    1c18:	44006580 	bnez	$r12,100(0x64) # 1c7c <memchr+0x114>
    1c1c:	001501a4 	move	$r4,$r13
    1c20:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c24:	0382022f 	ori	$r15,$r17,0x80
    1c28:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c2c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c30:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c34:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c38:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c3c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c40:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c04 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c44:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b94 <memchr+0x2c>
    1c48:	2a0001ac 	ld.bu	$r12,$r13,0
    1c4c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b98 <memchr+0x30>
    1c50:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c54:	001099a6 	add.d	$r6,$r13,$r6
    1c58:	50001000 	b	16(0x10) # 1c68 <memchr+0x100>
    1c5c:	2a00018e 	ld.bu	$r14,$r12,0
    1c60:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c64:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b98 <memchr+0x30>
    1c68:	0015018d 	move	$r13,$r12
    1c6c:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c5c <memchr+0xf4>
    1c70:	53ff27ff 	b	-220(0xfffff24) # 1b94 <memchr+0x2c>
    1c74:	0015008d 	move	$r13,$r4
    1c78:	53ffd3ff 	b	-48(0xfffffd0) # 1c48 <memchr+0xe0>
    1c7c:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c80:	53ffcfff 	b	-52(0xfffffcc) # 1c4c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c84:	0015008d 	move	$r13,$r4
    1c88:	53ffcbff 	b	-56(0xfffffc8) # 1c50 <memchr+0xe8>

0000000000001c8c <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c8c:	03401c8c 	andi	$r12,$r4,0x7
    1c90:	40011980 	beqz	$r12,280(0x118) # 1da8 <strnlen+0x11c>
    1c94:	4000f4a0 	beqz	$r5,244(0xf4) # 1d88 <strnlen+0xfc>
    1c98:	2a00008c 	ld.bu	$r12,$r4,0
    1c9c:	4000f580 	beqz	$r12,244(0xf4) # 1d90 <strnlen+0x104>
    1ca0:	001500ac 	move	$r12,$r5
    1ca4:	0015008d 	move	$r13,$r4
    1ca8:	50001000 	b	16(0x10) # 1cb8 <strnlen+0x2c>
    1cac:	4000dd80 	beqz	$r12,220(0xdc) # 1d88 <strnlen+0xfc>
    1cb0:	2a0001ae 	ld.bu	$r14,$r13,0
    1cb4:	4000e5c0 	beqz	$r14,228(0xe4) # 1d98 <strnlen+0x10c>
    1cb8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cbc:	03401dae 	andi	$r14,$r13,0x7
    1cc0:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cc4:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cac <strnlen+0x20>
    if (n && *s != c)
    1cc8:	4000c180 	beqz	$r12,192(0xc0) # 1d88 <strnlen+0xfc>
    1ccc:	2a0001ae 	ld.bu	$r14,$r13,0
    1cd0:	4000c9c0 	beqz	$r14,200(0xc8) # 1d98 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cd4:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1cd8:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1db4 <strnlen+0x128>
    1cdc:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1ce0:	260001b0 	ldptr.d	$r16,$r13,0
    1ce4:	03bbfdce 	ori	$r14,$r14,0xeff
    1ce8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cec:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1cf0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cf4:	038201ef 	ori	$r15,$r15,0x80
    1cf8:	0010ba0e 	add.d	$r14,$r16,$r14
    1cfc:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d00:	0016c1ce 	andn	$r14,$r14,$r16
    1d04:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d08:	0014bdcf 	and	$r15,$r14,$r15
    1d0c:	4400a9e0 	bnez	$r15,168(0xa8) # 1db4 <strnlen+0x128>
    1d10:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d14:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d18:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d1c:	50001c00 	b	28(0x1c) # 1d38 <strnlen+0xac>
    1d20:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d24:	0010b9ee 	add.d	$r14,$r15,$r14
    1d28:	0016bdce 	andn	$r14,$r14,$r15
    1d2c:	0014c1ce 	and	$r14,$r14,$r16
    1d30:	440071c0 	bnez	$r14,112(0x70) # 1da0 <strnlen+0x114>
    1d34:	0015022d 	move	$r13,$r17
    1d38:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d3c:	03820250 	ori	$r16,$r18,0x80
    1d40:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d44:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d48:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d4c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d50:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d54:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d58:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d20 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d5c:	40002d80 	beqz	$r12,44(0x2c) # 1d88 <strnlen+0xfc>
    1d60:	2a00022d 	ld.bu	$r13,$r17,0
    1d64:	400021a0 	beqz	$r13,32(0x20) # 1d84 <strnlen+0xf8>
    1d68:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d6c:	0010b22c 	add.d	$r12,$r17,$r12
    1d70:	001501b1 	move	$r17,$r13
    1d74:	5800158d 	beq	$r12,$r13,20(0x14) # 1d88 <strnlen+0xfc>
    1d78:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d7c:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d80:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d70 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d84:	00119225 	sub.d	$r5,$r17,$r4
}
    1d88:	001500a4 	move	$r4,$r5
    1d8c:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d90:	001500ac 	move	$r12,$r5
    1d94:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d98:	001501b1 	move	$r17,$r13
    1d9c:	53ffc7ff 	b	-60(0xfffffc4) # 1d60 <strnlen+0xd4>
    1da0:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1da4:	53ffc3ff 	b	-64(0xfffffc0) # 1d64 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1da8:	001500ac 	move	$r12,$r5
    1dac:	0015008d 	move	$r13,$r4
    1db0:	53ff1bff 	b	-232(0xfffff18) # 1cc8 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1db4:	001501b1 	move	$r17,$r13
    1db8:	53ffb3ff 	b	-80(0xfffffb0) # 1d68 <strnlen+0xdc>

0000000000001dbc <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dbc:	0015948c 	xor	$r12,$r4,$r5
    1dc0:	03401d8c 	andi	$r12,$r12,0x7
    1dc4:	4400ad80 	bnez	$r12,172(0xac) # 1e70 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dc8:	03401cac 	andi	$r12,$r5,0x7
    1dcc:	40003180 	beqz	$r12,48(0x30) # 1dfc <strcpy+0x40>
            if (!(*d = *s))
    1dd0:	280000ac 	ld.b	$r12,$r5,0
    1dd4:	2900008c 	st.b	$r12,$r4,0
    1dd8:	44001580 	bnez	$r12,20(0x14) # 1dec <strcpy+0x30>
    1ddc:	5000bc00 	b	188(0xbc) # 1e98 <strcpy+0xdc>
    1de0:	280000ac 	ld.b	$r12,$r5,0
    1de4:	2900008c 	st.b	$r12,$r4,0
    1de8:	4000a980 	beqz	$r12,168(0xa8) # 1e90 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1dec:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1df0:	03401cac 	andi	$r12,$r5,0x7
    1df4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1df8:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1de0 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1dfc:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e00:	260000ae 	ldptr.d	$r14,$r5,0
    1e04:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e08:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e0c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e10:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e14:	038201ad 	ori	$r13,$r13,0x80
    1e18:	0010b1cc 	add.d	$r12,$r14,$r12
    1e1c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e20:	0016b98c 	andn	$r12,$r12,$r14
    1e24:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e28:	0014b58c 	and	$r12,$r12,$r13
    1e2c:	44004580 	bnez	$r12,68(0x44) # 1e70 <strcpy+0xb4>
    1e30:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e34:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e38:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e3c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e40:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e44:	260000ae 	ldptr.d	$r14,$r5,0
    1e48:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e4c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e50:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e54:	038201ed 	ori	$r13,$r15,0x80
    1e58:	0010b1cc 	add.d	$r12,$r14,$r12
    1e5c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e60:	0016b98c 	andn	$r12,$r12,$r14
    1e64:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e68:	0014b58c 	and	$r12,$r12,$r13
    1e6c:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e38 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e70:	280000ac 	ld.b	$r12,$r5,0
    1e74:	2900008c 	st.b	$r12,$r4,0
    1e78:	40001d80 	beqz	$r12,28(0x1c) # 1e94 <strcpy+0xd8>
    1e7c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e80:	280000ac 	ld.b	$r12,$r5,0
    1e84:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e88:	2900008c 	st.b	$r12,$r4,0
    1e8c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e7c <strcpy+0xc0>
        ;
    return d;
}
    1e90:	4c000020 	jirl	$r0,$r1,0
    1e94:	4c000020 	jirl	$r0,$r1,0
    1e98:	4c000020 	jirl	$r0,$r1,0

0000000000001e9c <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e9c:	0015948c 	xor	$r12,$r4,$r5
    1ea0:	03401d8c 	andi	$r12,$r12,0x7
    1ea4:	4400ad80 	bnez	$r12,172(0xac) # 1f50 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ea8:	03401cac 	andi	$r12,$r5,0x7
    1eac:	44010180 	bnez	$r12,256(0x100) # 1fac <strncpy+0x110>
            ;
        if (!n || !*s)
    1eb0:	400100c0 	beqz	$r6,256(0x100) # 1fb0 <strncpy+0x114>
    1eb4:	280000af 	ld.b	$r15,$r5,0
    1eb8:	400105e0 	beqz	$r15,260(0x104) # 1fbc <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ebc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ec0:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2198 <strncpy+0x2fc>
    1ec4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ec8:	260000ae 	ldptr.d	$r14,$r5,0
    1ecc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ed0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ed4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ed8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1edc:	038201ad 	ori	$r13,$r13,0x80
    1ee0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ee4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ee8:	0016b98c 	andn	$r12,$r12,$r14
    1eec:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ef0:	0014b58c 	and	$r12,$r12,$r13
    1ef4:	4402a580 	bnez	$r12,676(0x2a4) # 2198 <strncpy+0x2fc>
    1ef8:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1efc:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f00:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f04:	50001c00 	b	28(0x1c) # 1f20 <strncpy+0x84>
    1f08:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f0c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f10:	0016b98c 	andn	$r12,$r12,$r14
    1f14:	0014b58c 	and	$r12,$r12,$r13
    1f18:	44024580 	bnez	$r12,580(0x244) # 215c <strncpy+0x2c0>
    1f1c:	001501e5 	move	$r5,$r15
    1f20:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f24:	0382020d 	ori	$r13,$r16,0x80
    1f28:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f2c:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f30:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f34:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f38:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f3c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f40:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f44:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f48:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f08 <strncpy+0x6c>
    1f4c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f50:	400060c0 	beqz	$r6,96(0x60) # 1fb0 <strncpy+0x114>
    1f54:	280000ac 	ld.b	$r12,$r5,0
    1f58:	0015008d 	move	$r13,$r4
    1f5c:	2900008c 	st.b	$r12,$r4,0
    1f60:	44001580 	bnez	$r12,20(0x14) # 1f74 <strncpy+0xd8>
    1f64:	50005c00 	b	92(0x5c) # 1fc0 <strncpy+0x124>
    1f68:	280000ac 	ld.b	$r12,$r5,0
    1f6c:	290001ac 	st.b	$r12,$r13,0
    1f70:	40005180 	beqz	$r12,80(0x50) # 1fc0 <strncpy+0x124>
    1f74:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f78:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f7c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f80:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f68 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f84:	001501a4 	move	$r4,$r13
    1f88:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f8c:	280000ac 	ld.b	$r12,$r5,0
    1f90:	2900008c 	st.b	$r12,$r4,0
    1f94:	40002980 	beqz	$r12,40(0x28) # 1fbc <strncpy+0x120>
    1f98:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f9c:	03401cac 	andi	$r12,$r5,0x7
    1fa0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fa4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fa8:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1eb0 <strncpy+0x14>
    1fac:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f8c <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fb0:	0015008d 	move	$r13,$r4
}
    1fb4:	001501a4 	move	$r4,$r13
    1fb8:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fbc:	0015008d 	move	$r13,$r4
    1fc0:	0011b40c 	sub.d	$r12,$r0,$r13
    1fc4:	03401d8c 	andi	$r12,$r12,0x7
    1fc8:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fcc:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fd0:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fd4:	0013bdce 	masknez	$r14,$r14,$r15
    1fd8:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fdc:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fe0:	00153dce 	or	$r14,$r14,$r15
    1fe4:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fe8:	00131a31 	maskeqz	$r17,$r17,$r6
    1fec:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1ff0:	001540d0 	or	$r16,$r6,$r16
    1ff4:	68017a2e 	bltu	$r17,$r14,376(0x178) # 216c <strncpy+0x2d0>
    1ff8:	40015980 	beqz	$r12,344(0x158) # 2150 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1ffc:	290001a0 	st.b	$r0,$r13,0
    2000:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2004:	5801458f 	beq	$r12,$r15,324(0x144) # 2148 <strncpy+0x2ac>
    2008:	290005a0 	st.b	$r0,$r13,1(0x1)
    200c:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2010:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2014:	5801658f 	beq	$r12,$r15,356(0x164) # 2178 <strncpy+0x2dc>
    2018:	290009a0 	st.b	$r0,$r13,2(0x2)
    201c:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2020:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2024:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2140 <strncpy+0x2a4>
    2028:	29000da0 	st.b	$r0,$r13,3(0x3)
    202c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2030:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2034:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2180 <strncpy+0x2e4>
    2038:	290011a0 	st.b	$r0,$r13,4(0x4)
    203c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2040:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2044:	5801458f 	beq	$r12,$r15,324(0x144) # 2188 <strncpy+0x2ec>
    2048:	290015a0 	st.b	$r0,$r13,5(0x5)
    204c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2050:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2054:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2190 <strncpy+0x2f4>
    2058:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    205c:	290019a0 	st.b	$r0,$r13,6(0x6)
    2060:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2064:	0011b210 	sub.d	$r16,$r16,$r12
    2068:	00450e11 	srli.d	$r17,$r16,0x3
    206c:	0010b1ac 	add.d	$r12,$r13,$r12
    2070:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2074:	27000180 	stptr.d	$r0,$r12,0
    2078:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    207c:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2074 <strncpy+0x1d8>
    2080:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2084:	0014c611 	and	$r17,$r16,$r17
    2088:	0040822f 	slli.w	$r15,$r17,0x0
    208c:	001049ef 	add.w	$r15,$r15,$r18
    2090:	0010c5cc 	add.d	$r12,$r14,$r17
    2094:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f84 <strncpy+0xe8>
    2098:	29000180 	st.b	$r0,$r12,0
    209c:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20a0:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f84 <strncpy+0xe8>
    20a4:	29000580 	st.b	$r0,$r12,1(0x1)
    20a8:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20ac:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f84 <strncpy+0xe8>
    20b0:	29000980 	st.b	$r0,$r12,2(0x2)
    20b4:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20b8:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f84 <strncpy+0xe8>
    20bc:	29000d80 	st.b	$r0,$r12,3(0x3)
    20c0:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20c4:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f84 <strncpy+0xe8>
    20c8:	29001180 	st.b	$r0,$r12,4(0x4)
    20cc:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20d0:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f84 <strncpy+0xe8>
    20d4:	29001580 	st.b	$r0,$r12,5(0x5)
    20d8:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20dc:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f84 <strncpy+0xe8>
    20e0:	29001980 	st.b	$r0,$r12,6(0x6)
    20e4:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20e8:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f84 <strncpy+0xe8>
    20ec:	29001d80 	st.b	$r0,$r12,7(0x7)
    20f0:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20f4:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f84 <strncpy+0xe8>
    20f8:	29002180 	st.b	$r0,$r12,8(0x8)
    20fc:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2100:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f84 <strncpy+0xe8>
    2104:	29002580 	st.b	$r0,$r12,9(0x9)
    2108:	028029ee 	addi.w	$r14,$r15,10(0xa)
    210c:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f84 <strncpy+0xe8>
    2110:	29002980 	st.b	$r0,$r12,10(0xa)
    2114:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2118:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f84 <strncpy+0xe8>
    211c:	29002d80 	st.b	$r0,$r12,11(0xb)
    2120:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2124:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f84 <strncpy+0xe8>
    2128:	29003180 	st.b	$r0,$r12,12(0xc)
    212c:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2130:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f84 <strncpy+0xe8>
    2134:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2138:	001501a4 	move	$r4,$r13
    213c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2140:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2144:	53ff23ff 	b	-224(0xfffff20) # 2064 <strncpy+0x1c8>
    2148:	02800412 	addi.w	$r18,$r0,1(0x1)
    214c:	53ff1bff 	b	-232(0xfffff18) # 2064 <strncpy+0x1c8>
    2150:	001501ae 	move	$r14,$r13
    2154:	00150012 	move	$r18,$r0
    2158:	53ff0fff 	b	-244(0xfffff0c) # 2064 <strncpy+0x1c8>
    215c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2160:	0015008d 	move	$r13,$r4
    2164:	001501e5 	move	$r5,$r15
    2168:	53fdf7ff 	b	-524(0xffffdf4) # 1f5c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    216c:	001501ac 	move	$r12,$r13
    2170:	0015000f 	move	$r15,$r0
    2174:	53ff27ff 	b	-220(0xfffff24) # 2098 <strncpy+0x1fc>
    2178:	02800812 	addi.w	$r18,$r0,2(0x2)
    217c:	53feebff 	b	-280(0xffffee8) # 2064 <strncpy+0x1c8>
    2180:	02801012 	addi.w	$r18,$r0,4(0x4)
    2184:	53fee3ff 	b	-288(0xffffee0) # 2064 <strncpy+0x1c8>
    2188:	02801412 	addi.w	$r18,$r0,5(0x5)
    218c:	53fedbff 	b	-296(0xffffed8) # 2064 <strncpy+0x1c8>
    2190:	02801812 	addi.w	$r18,$r0,6(0x6)
    2194:	53fed3ff 	b	-304(0xffffed0) # 2064 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2198:	2900008f 	st.b	$r15,$r4,0
    219c:	0015008d 	move	$r13,$r4
    21a0:	53fdd7ff 	b	-556(0xffffdd4) # 1f74 <strncpy+0xd8>

00000000000021a4 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21a4:	0015008c 	move	$r12,$r4
    21a8:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21ac:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21b0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21b4:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21b8:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21bc:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21c0:	00408084 	slli.w	$r4,$r4,0x0
}
    21c4:	4c000020 	jirl	$r0,$r1,0

00000000000021c8 <openat>:
    register long a7 __asm__("a7") = n;
    21c8:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21cc:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21d0:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21d4:	00408084 	slli.w	$r4,$r4,0x0
}
    21d8:	4c000020 	jirl	$r0,$r1,0

00000000000021dc <close>:
    register long a7 __asm__("a7") = n;
    21dc:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21e0:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21e4:	00408084 	slli.w	$r4,$r4,0x0
}
    21e8:	4c000020 	jirl	$r0,$r1,0

00000000000021ec <read>:
    register long a7 __asm__("a7") = n;
    21ec:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21f0:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21f4:	4c000020 	jirl	$r0,$r1,0

00000000000021f8 <write>:
    register long a7 __asm__("a7") = n;
    21f8:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21fc:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2200:	4c000020 	jirl	$r0,$r1,0

0000000000002204 <getpid>:
    register long a7 __asm__("a7") = n;
    2204:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2208:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    220c:	00408084 	slli.w	$r4,$r4,0x0
}
    2210:	4c000020 	jirl	$r0,$r1,0

0000000000002214 <getppid>:
    register long a7 __asm__("a7") = n;
    2214:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2218:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    221c:	00408084 	slli.w	$r4,$r4,0x0
}
    2220:	4c000020 	jirl	$r0,$r1,0

0000000000002224 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2224:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2228:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    222c:	00408084 	slli.w	$r4,$r4,0x0
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <fork>:
    register long a7 __asm__("a7") = n;
    2234:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2238:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    223c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2240:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2244:	00408084 	slli.w	$r4,$r4,0x0
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    224c:	001500c5 	move	$r5,$r6
    if (stack)
    2250:	400008c0 	beqz	$r6,8(0x8) # 2258 <clone+0xc>
	stack += stack_size;
    2254:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2258:	00408106 	slli.w	$r6,$r8,0x0
    225c:	00150009 	move	$r9,$r0
    2260:	00150008 	move	$r8,$r0
    2264:	00150007 	move	$r7,$r0
    2268:	5002c800 	b	712(0x2c8) # 2530 <__clone>

000000000000226c <exit>:
    register long a7 __asm__("a7") = n;
    226c:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2270:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2274:	4c000020 	jirl	$r0,$r1,0

0000000000002278 <waitpid>:
    register long a7 __asm__("a7") = n;
    2278:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    227c:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2280:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2284:	00408084 	slli.w	$r4,$r4,0x0
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <exec>:
    register long a7 __asm__("a7") = n;
    228c:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2290:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2294:	00408084 	slli.w	$r4,$r4,0x0
}
    2298:	4c000020 	jirl	$r0,$r1,0

000000000000229c <execve>:
    register long a7 __asm__("a7") = n;
    229c:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22a0:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22a4:	00408084 	slli.w	$r4,$r4,0x0
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <times>:
    register long a7 __asm__("a7") = n;
    22ac:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22b0:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22b4:	00408084 	slli.w	$r4,$r4,0x0
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <get_time>:

int64 get_time()
{
    22bc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22c0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22c4:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22c8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22cc:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22d0:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22d4:	44003c80 	bnez	$r4,60(0x3c) # 2310 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22d8:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22dc:	039f3c8c 	ori	$r12,$r4,0x7cf
    22e0:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22e4:	2a40006d 	ld.hu	$r13,$r3,0
    22e8:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22ec:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22f0:	00450c84 	srli.d	$r4,$r4,0x3
    22f4:	001eb084 	mulh.du	$r4,$r4,$r12
    22f8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22fc:	001db1ac 	mul.d	$r12,$r13,$r12
    2300:	00451084 	srli.d	$r4,$r4,0x4
    2304:	00109184 	add.d	$r4,$r12,$r4
}
    2308:	02c04063 	addi.d	$r3,$r3,16(0x10)
    230c:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2310:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2314:	53fff7ff 	b	-12(0xffffff4) # 2308 <get_time+0x4c>

0000000000002318 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2318:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    231c:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2320:	00408084 	slli.w	$r4,$r4,0x0
}
    2324:	4c000020 	jirl	$r0,$r1,0

0000000000002328 <time>:
    register long a7 __asm__("a7") = n;
    2328:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    232c:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2330:	00408084 	slli.w	$r4,$r4,0x0
}
    2334:	4c000020 	jirl	$r0,$r1,0

0000000000002338 <sleep>:

int sleep(unsigned long long time)
{
    2338:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    233c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2340:	00150064 	move	$r4,$r3
    2344:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2348:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    234c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2350:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2354:	44001080 	bnez	$r4,16(0x10) # 2364 <sleep+0x2c>
    return 0;
    2358:	00150004 	move	$r4,$r0
}
    235c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2360:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2364:	24000064 	ldptr.w	$r4,$r3,0
}
    2368:	02c04063 	addi.d	$r3,$r3,16(0x10)
    236c:	4c000020 	jirl	$r0,$r1,0

0000000000002370 <set_priority>:
    register long a7 __asm__("a7") = n;
    2370:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2374:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2378:	00408084 	slli.w	$r4,$r4,0x0
}
    237c:	4c000020 	jirl	$r0,$r1,0

0000000000002380 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2380:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2384:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <munmap>:
    register long a7 __asm__("a7") = n;
    238c:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2390:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2394:	00408084 	slli.w	$r4,$r4,0x0
}
    2398:	4c000020 	jirl	$r0,$r1,0

000000000000239c <wait>:

int wait(int *code)
{
    239c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23a0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23a4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23a8:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23ac:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23b0:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23b4:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23b8:	4c000020 	jirl	$r0,$r1,0

00000000000023bc <spawn>:
    register long a7 __asm__("a7") = n;
    23bc:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23c0:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23c4:	00408084 	slli.w	$r4,$r4,0x0
}
    23c8:	4c000020 	jirl	$r0,$r1,0

00000000000023cc <mailread>:
    register long a7 __asm__("a7") = n;
    23cc:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23d0:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23d4:	00408084 	slli.w	$r4,$r4,0x0
}
    23d8:	4c000020 	jirl	$r0,$r1,0

00000000000023dc <mailwrite>:
    register long a7 __asm__("a7") = n;
    23dc:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23e0:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23e4:	00408084 	slli.w	$r4,$r4,0x0
}
    23e8:	4c000020 	jirl	$r0,$r1,0

00000000000023ec <fstat>:
    register long a7 __asm__("a7") = n;
    23ec:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23f0:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23fc:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2400:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2404:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2408:	00408084 	slli.w	$r4,$r4,0x0
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2410:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2414:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2418:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <link>:

int link(char *old_path, char *new_path)
{
    2424:	0015008c 	move	$r12,$r4
    2428:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    242c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2430:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2434:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2438:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    243c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2440:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2444:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2448:	4c000020 	jirl	$r0,$r1,0

000000000000244c <unlink>:

int unlink(char *path)
{
    244c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2450:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2454:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2458:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    245c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2460:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2464:	4c000020 	jirl	$r0,$r1,0

0000000000002468 <uname>:
    register long a7 __asm__("a7") = n;
    2468:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    246c:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2470:	00408084 	slli.w	$r4,$r4,0x0
}
    2474:	4c000020 	jirl	$r0,$r1,0

0000000000002478 <brk>:
    register long a7 __asm__("a7") = n;
    2478:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    247c:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <getcwd>:
    register long a7 __asm__("a7") = n;
    2488:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    248c:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <chdir>:
    register long a7 __asm__("a7") = n;
    2494:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2498:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    249c:	00408084 	slli.w	$r4,$r4,0x0
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24a4:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24a8:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24ac:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24b0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24b4:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b8:	002b0000 	syscall	0x0
    24bc:	00408084 	slli.w	$r4,$r4,0x0
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <getdents>:
    register long a7 __asm__("a7") = n;
    24c4:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c8:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24cc:	00408084 	slli.w	$r4,$r4,0x0
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <pipe>:
    register long a7 __asm__("a7") = n;
    24d4:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24d8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24dc:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24e0:	00408084 	slli.w	$r4,$r4,0x0
}
    24e4:	4c000020 	jirl	$r0,$r1,0

00000000000024e8 <dup>:
    register long a7 __asm__("a7") = n;
    24e8:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24ec:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24f0:	00408084 	slli.w	$r4,$r4,0x0
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <dup2>:
    register long a7 __asm__("a7") = n;
    24f8:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24fc:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2500:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2504:	00408084 	slli.w	$r4,$r4,0x0
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <mount>:
    register long a7 __asm__("a7") = n;
    250c:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2510:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <umount>:
    register long a7 __asm__("a7") = n;
    251c:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2520:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2524:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2528:	00408084 	slli.w	$r4,$r4,0x0
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2530:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2534:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2538:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    253c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2540:	00150106 	move	$r6,$r8
	move $a3, $a5
    2544:	00150127 	move	$r7,$r9
	move $a4, $a6
    2548:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    254c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2550:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2554:	40000880 	beqz	$r4,8(0x8) # 255c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2558:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    255c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2560:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2564:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2568:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    256c:	002b0000 	syscall	0x0
