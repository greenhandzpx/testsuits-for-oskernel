
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/chdir:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400e800 	bl	232(0xe8) # 10ec <__start_main>

0000000000001008 <test_chdir>:
#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"

static char buffer[30];
void test_chdir(void){
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
void test_chdir(void){
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    1018:	27000077 	stptr.d	$r23,$r3,0
    TEST_START(__func__);
    101c:	5403d800 	bl	984(0x3d8) # 13f4 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d92084 	addi.d	$r4,$r4,1608(0x648)
    1028:	5403cc00 	bl	972(0x3cc) # 13f4 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d65084 	addi.d	$r4,$r4,1428(0x594)
    1034:	5403c000 	bl	960(0x3c0) # 13f4 <puts>
    mkdir("test_chdir", 0666);
    1038:	0286d805 	addi.w	$r5,$r0,438(0x1b6)
    103c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1040:	02d65084 	addi.d	$r4,$r4,1428(0x594)
    1044:	54149400 	bl	5268(0x1494) # 24d8 <mkdir>
    int ret = chdir("test_chdir");
    1048:	1c000024 	pcaddu12i	$r4,1(0x1)
    104c:	02d62084 	addi.d	$r4,$r4,1416(0x588)
    1050:	54147800 	bl	5240(0x1478) # 24c8 <chdir>
    1054:	00150097 	move	$r23,$r4
    printf("chdir ret: %d\n", ret);
    1058:	00150085 	move	$r5,$r4
    105c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1060:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1064:	5403c800 	bl	968(0x3c8) # 142c <printf>
    assert(ret == 0);
    1068:	44005ae0 	bnez	$r23,88(0x58) # 10c0 <test_chdir+0xb8>
    getcwd(buffer, 30);
    106c:	02807805 	addi.w	$r5,$r0,30(0x1e)
    1070:	1c000024 	pcaddu12i	$r4,1(0x1)
    1074:	02d76084 	addi.d	$r4,$r4,1496(0x5d8)
    1078:	54144400 	bl	5188(0x1444) # 24bc <getcwd>
    printf("  current working dir : %s\n", buffer);
    107c:	1c000025 	pcaddu12i	$r5,1(0x1)
    1080:	02d730a5 	addi.d	$r5,$r5,1484(0x5cc)
    1084:	1c000024 	pcaddu12i	$r4,1(0x1)
    1088:	02d63084 	addi.d	$r4,$r4,1420(0x58c)
    108c:	5403a000 	bl	928(0x3a0) # 142c <printf>
    TEST_END(__func__);
    1090:	1c000024 	pcaddu12i	$r4,1(0x1)
    1094:	02d68084 	addi.d	$r4,$r4,1440(0x5a0)
    1098:	54035c00 	bl	860(0x35c) # 13f4 <puts>
    109c:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a0:	02d73084 	addi.d	$r4,$r4,1484(0x5cc)
    10a4:	54035000 	bl	848(0x350) # 13f4 <puts>
}
    10a8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10ac:	26000077 	ldptr.d	$r23,$r3,0
    TEST_END(__func__);
    10b0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b4:	02d44084 	addi.d	$r4,$r4,1296(0x510)
}
    10b8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    TEST_END(__func__);
    10bc:	50033800 	b	824(0x338) # 13f4 <puts>
    assert(ret == 0);
    10c0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c4:	02d4c084 	addi.d	$r4,$r4,1328(0x530)
    10c8:	54067400 	bl	1652(0x674) # 173c <panic>
    10cc:	53ffa3ff 	b	-96(0xfffffa0) # 106c <test_chdir+0x64>

00000000000010d0 <main>:

int main(void){
    10d0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10d4:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_chdir();
    10d8:	57ff33ff 	bl	-208(0xfffff30) # 1008 <test_chdir>
    return 0;
}
    10dc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10e0:	00150004 	move	$r4,$r0
    10e4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10e8:	4c000020 	jirl	$r0,$r1,0

00000000000010ec <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10ec:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10f0:	24000084 	ldptr.w	$r4,$r4,0
{
    10f4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10f8:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10fc:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1100:	57ffd3ff 	bl	-48(0xfffffd0) # 10d0 <main>
    1104:	54119c00 	bl	4508(0x119c) # 22a0 <exit>
	return 0;
}
    1108:	28c02061 	ld.d	$r1,$r3,8(0x8)
    110c:	00150004 	move	$r4,$r0
    1110:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1114:	4c000020 	jirl	$r0,$r1,0

0000000000001118 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1118:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    111c:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1120:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12ec <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1124:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1128:	1c00002c 	pcaddu12i	$r12,1(0x1)
    112c:	02d5418c 	addi.d	$r12,$r12,1360(0x550)
    1130:	002195cf 	mod.wu	$r15,$r14,$r5
    1134:	5c0008a0 	bne	$r5,$r0,8(0x8) # 113c <printint.constprop.0+0x24>
    1138:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    113c:	002115cd 	div.wu	$r13,$r14,$r5
    1140:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1148 <printint.constprop.0+0x30>
    1144:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1148:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    114c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1150:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1154:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1158:	680219c5 	bltu	$r14,$r5,536(0x218) # 1370 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    115c:	002195af 	mod.wu	$r15,$r13,$r5
    1160:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1168 <printint.constprop.0+0x50>
    1164:	002a0007 	break	0x7
    1168:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    116c:	002115ae 	div.wu	$r14,$r13,$r5
    1170:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1178 <printint.constprop.0+0x60>
    1174:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1178:	38203d8f 	ldx.bu	$r15,$r12,$r15
    117c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1180:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1340 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1184:	002195cf 	mod.wu	$r15,$r14,$r5
    1188:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1190 <printint.constprop.0+0x78>
    118c:	002a0007 	break	0x7
    1190:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1194:	002115cd 	div.wu	$r13,$r14,$r5
    1198:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a0 <printint.constprop.0+0x88>
    119c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11a4:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11a8:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 134c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11ac:	002195af 	mod.wu	$r15,$r13,$r5
    11b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b8 <printint.constprop.0+0xa0>
    11b4:	002a0007 	break	0x7
    11b8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11bc:	002115ae 	div.wu	$r14,$r13,$r5
    11c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c8 <printint.constprop.0+0xb0>
    11c4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11cc:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11d0:	680189a5 	bltu	$r13,$r5,392(0x188) # 1358 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11d4:	002195cf 	mod.wu	$r15,$r14,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0xc8>
    11dc:	002a0007 	break	0x7
    11e0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e4:	002115cd 	div.wu	$r13,$r14,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0xd8>
    11ec:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f4:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11f8:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1364 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11fc:	002195af 	mod.wu	$r15,$r13,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0xf0>
    1204:	002a0007 	break	0x7
    1208:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    120c:	002115ae 	div.wu	$r14,$r13,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0x100>
    1214:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1218:	38203d8f 	ldx.bu	$r15,$r12,$r15
    121c:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1220:	680115a5 	bltu	$r13,$r5,276(0x114) # 1334 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1224:	002195cf 	mod.wu	$r15,$r14,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0x118>
    122c:	002a0007 	break	0x7
    1230:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1234:	002115cd 	div.wu	$r13,$r14,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0x128>
    123c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1240:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1244:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1248:	680131c5 	bltu	$r14,$r5,304(0x130) # 1378 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    124c:	002195af 	mod.wu	$r15,$r13,$r5
    1250:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1258 <printint.constprop.0+0x140>
    1254:	002a0007 	break	0x7
    1258:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    125c:	002115ae 	div.wu	$r14,$r13,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0x150>
    1264:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1268:	38203d8f 	ldx.bu	$r15,$r12,$r15
    126c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1270:	680115a5 	bltu	$r13,$r5,276(0x114) # 1384 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1274:	002195cf 	mod.wu	$r15,$r14,$r5
    1278:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1280 <printint.constprop.0+0x168>
    127c:	002a0007 	break	0x7
    1280:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1284:	002115cd 	div.wu	$r13,$r14,$r5
    1288:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1290 <printint.constprop.0+0x178>
    128c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1290:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1294:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1298:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1390 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    129c:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12a0:	3820358d 	ldx.bu	$r13,$r12,$r13
    12a4:	02801805 	addi.w	$r5,$r0,6(0x6)
    12a8:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12ac:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12b0:	64001880 	bge	$r4,$r0,24(0x18) # 12c8 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12b4:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12b8:	0010b1ad 	add.d	$r13,$r13,$r12
    12bc:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12c0:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12c4:	00150185 	move	$r5,$r12
    write(f, s, l);
    12c8:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12cc:	02804006 	addi.w	$r6,$r0,16(0x10)
    12d0:	001114c6 	sub.w	$r6,$r6,$r5
    12d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    12d8:	00109585 	add.d	$r5,$r12,$r5
    12dc:	540f5000 	bl	3920(0xf50) # 222c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12e0:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12e4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12e8:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12ec:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12f0:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12f4:	02ce218c 	addi.d	$r12,$r12,904(0x388)
    12f8:	002195cf 	mod.wu	$r15,$r14,$r5
    12fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1304 <printint.constprop.0+0x1ec>
    1300:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1304:	002115cd 	div.wu	$r13,$r14,$r5
    1308:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1310 <printint.constprop.0+0x1f8>
    130c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1310:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1314:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1318:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    131c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1320:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 115c <printint.constprop.0+0x44>
        buf[i--] = '-';
    1324:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1328:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    132c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1330:	53ff9bff 	b	-104(0xfffff98) # 12c8 <printint.constprop.0+0x1b0>
    1334:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1338:	02802805 	addi.w	$r5,$r0,10(0xa)
    133c:	53ff77ff 	b	-140(0xfffff74) # 12b0 <printint.constprop.0+0x198>
    1340:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1344:	02803805 	addi.w	$r5,$r0,14(0xe)
    1348:	53ff6bff 	b	-152(0xfffff68) # 12b0 <printint.constprop.0+0x198>
    134c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1350:	02803405 	addi.w	$r5,$r0,13(0xd)
    1354:	53ff5fff 	b	-164(0xfffff5c) # 12b0 <printint.constprop.0+0x198>
    1358:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    135c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1360:	53ff53ff 	b	-176(0xfffff50) # 12b0 <printint.constprop.0+0x198>
    1364:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1368:	02802c05 	addi.w	$r5,$r0,11(0xb)
    136c:	53ff47ff 	b	-188(0xfffff44) # 12b0 <printint.constprop.0+0x198>
    i = 15;
    1370:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1374:	53ff57ff 	b	-172(0xfffff54) # 12c8 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1378:	0280200c 	addi.w	$r12,$r0,8(0x8)
    137c:	02802405 	addi.w	$r5,$r0,9(0x9)
    1380:	53ff33ff 	b	-208(0xfffff30) # 12b0 <printint.constprop.0+0x198>
    1384:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1388:	02802005 	addi.w	$r5,$r0,8(0x8)
    138c:	53ff27ff 	b	-220(0xfffff24) # 12b0 <printint.constprop.0+0x198>
    1390:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1394:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1398:	53ff1bff 	b	-232(0xfffff18) # 12b0 <printint.constprop.0+0x198>

000000000000139c <getchar>:
{
    139c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13a0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13a4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13a8:	00150004 	move	$r4,$r0
{
    13ac:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13b0:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13b4:	540e6c00 	bl	3692(0xe6c) # 2220 <read>
}
    13b8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13bc:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13c0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13c4:	4c000020 	jirl	$r0,$r1,0

00000000000013c8 <putchar>:
{
    13c8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13cc:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13d0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13d4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13d8:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13dc:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13e0:	540e4c00 	bl	3660(0xe4c) # 222c <write>
}
    13e4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13e8:	00408084 	slli.w	$r4,$r4,0x0
}
    13ec:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13f0:	4c000020 	jirl	$r0,$r1,0

00000000000013f4 <puts>:
{
    13f4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13f8:	29c02061 	st.d	$r1,$r3,8(0x8)
    13fc:	27000077 	stptr.d	$r23,$r3,0
    1400:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1404:	5406d400 	bl	1748(0x6d4) # 1ad8 <strlen>
    1408:	00150086 	move	$r6,$r4
    140c:	001502e5 	move	$r5,$r23
    1410:	02800404 	addi.w	$r4,$r0,1(0x1)
    1414:	540e1800 	bl	3608(0xe18) # 222c <write>
}
    1418:	28c02061 	ld.d	$r1,$r3,8(0x8)
    141c:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1420:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1424:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1428:	4c000020 	jirl	$r0,$r1,0

000000000000142c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    142c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1430:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1434:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1438:	140000fa 	lu12i.w	$r26,7(0x7)
{
    143c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1440:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1444:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1448:	29c1a061 	st.d	$r1,$r3,104(0x68)
    144c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1450:	29c16078 	st.d	$r24,$r3,88(0x58)
    1454:	0015009b 	move	$r27,$r4
    1458:	29c1e065 	st.d	$r5,$r3,120(0x78)
    145c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1460:	29c22067 	st.d	$r7,$r3,136(0x88)
    1464:	29c24068 	st.d	$r8,$r3,144(0x90)
    1468:	29c26069 	st.d	$r9,$r3,152(0x98)
    146c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1470:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1474:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1478:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    147c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1480:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1484:	02c7e39c 	addi.d	$r28,$r28,504(0x1f8)
        if (!*s)
    1488:	2800036c 	ld.b	$r12,$r27,0
    148c:	40008980 	beqz	$r12,136(0x88) # 1514 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1490:	58027d99 	beq	$r12,$r25,636(0x27c) # 170c <printf+0x2e0>
    1494:	00150366 	move	$r6,$r27
    1498:	50000800 	b	8(0x8) # 14a0 <printf+0x74>
    149c:	58009d99 	beq	$r12,$r25,156(0x9c) # 1538 <printf+0x10c>
    14a0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14a4:	280000cc 	ld.b	$r12,$r6,0
    14a8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 149c <printf+0x70>
    14ac:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14b0:	0011ecd7 	sub.d	$r23,$r6,$r27
    14b4:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14b8:	001502e6 	move	$r6,$r23
    14bc:	00150365 	move	$r5,$r27
    14c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    14c4:	540d6800 	bl	3432(0xd68) # 222c <write>
        out(f, a, l);
        if (l)
    14c8:	4400b6e0 	bnez	$r23,180(0xb4) # 157c <printf+0x150>
            continue;
        if (s[1] == 0)
    14cc:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14d0:	40004580 	beqz	$r12,68(0x44) # 1514 <printf+0xe8>
            break;
        switch (s[1])
    14d4:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14d8:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15ac <printf+0x180>
    14dc:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1584 <printf+0x158>
    14e0:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14e4:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16d4 <printf+0x2a8>
    14e8:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14ec:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 169c <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14f0:	2600006c 	ldptr.d	$r12,$r3,0
    14f4:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14f8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14fc:	24000184 	ldptr.w	$r4,$r12,0
    1500:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1504:	2700006c 	stptr.d	$r12,$r3,0
    1508:	57fc13ff 	bl	-1008(0xffffc10) # 1118 <printint.constprop.0>
        if (!*s)
    150c:	2800036c 	ld.b	$r12,$r27,0
    1510:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1490 <printf+0x64>
    }
    va_end(ap);
}
    1514:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1518:	28c18077 	ld.d	$r23,$r3,96(0x60)
    151c:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1520:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1524:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1528:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    152c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1530:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1534:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1538:	280004cc 	ld.b	$r12,$r6,1(0x1)
    153c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14ac <printf+0x80>
    1540:	001500d8 	move	$r24,$r6
    1544:	50000c00 	b	12(0xc) # 1550 <printf+0x124>
    1548:	2800070c 	ld.b	$r12,$r24,1(0x1)
    154c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14b0 <printf+0x84>
    1550:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1554:	2800030c 	ld.b	$r12,$r24,0
    1558:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    155c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1548 <printf+0x11c>
        l = z - a;
    1560:	0011ecd7 	sub.d	$r23,$r6,$r27
    1564:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1568:	001502e6 	move	$r6,$r23
    156c:	00150365 	move	$r5,$r27
    1570:	02800404 	addi.w	$r4,$r0,1(0x1)
    1574:	540cb800 	bl	3256(0xcb8) # 222c <write>
        if (l)
    1578:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14cc <printf+0xa0>
    157c:	0015031b 	move	$r27,$r24
    1580:	53ff0bff 	b	-248(0xfffff08) # 1488 <printf+0x5c>
        switch (s[1])
    1584:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1588:	5c01158d 	bne	$r12,$r13,276(0x114) # 169c <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    158c:	2600006c 	ldptr.d	$r12,$r3,0
    1590:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1594:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1598:	24000184 	ldptr.w	$r4,$r12,0
    159c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15a0:	2700006c 	stptr.d	$r12,$r3,0
    15a4:	57fb77ff 	bl	-1164(0xffffb74) # 1118 <printint.constprop.0>
        s += 2;
    15a8:	53ff67ff 	b	-156(0xfffff64) # 150c <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15ac:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15b0:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15b4:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15b8:	260001ac 	ldptr.d	$r12,$r13,0
    15bc:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15c0:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15c4:	0045f18a 	srli.d	$r10,$r12,0x3c
    15c8:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15cc:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15d0:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15d4:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15d8:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15dc:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15e0:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15e4:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15e8:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15ec:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15f0:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15f4:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15f8:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15fc:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1600:	3820278a 	ldx.bu	$r10,$r28,$r9
    1604:	38202389 	ldx.bu	$r9,$r28,$r8
    1608:	38201f88 	ldx.bu	$r8,$r28,$r7
    160c:	38201787 	ldx.bu	$r7,$r28,$r5
    1610:	38201385 	ldx.bu	$r5,$r28,$r4
    1614:	38205384 	ldx.bu	$r4,$r28,$r20
    1618:	38204f94 	ldx.bu	$r20,$r28,$r19
    161c:	38204b93 	ldx.bu	$r19,$r28,$r18
    1620:	38204792 	ldx.bu	$r18,$r28,$r17
    1624:	38204391 	ldx.bu	$r17,$r28,$r16
    1628:	38203f90 	ldx.bu	$r16,$r28,$r15
    162c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1630:	3820378e 	ldx.bu	$r14,$r28,$r13
    1634:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1638:	03403d8c 	andi	$r12,$r12,0xf
    163c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1640:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1644:	29003069 	st.b	$r9,$r3,12(0xc)
    1648:	29003468 	st.b	$r8,$r3,13(0xd)
    164c:	29003867 	st.b	$r7,$r3,14(0xe)
    1650:	29003c65 	st.b	$r5,$r3,15(0xf)
    1654:	29004064 	st.b	$r4,$r3,16(0x10)
    1658:	29004474 	st.b	$r20,$r3,17(0x11)
    165c:	29004873 	st.b	$r19,$r3,18(0x12)
    1660:	29004c72 	st.b	$r18,$r3,19(0x13)
    1664:	29005071 	st.b	$r17,$r3,20(0x14)
    1668:	29005470 	st.b	$r16,$r3,21(0x15)
    166c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1670:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1674:	3820378d 	ldx.bu	$r13,$r28,$r13
    1678:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    167c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1680:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1684:	2900606d 	st.b	$r13,$r3,24(0x18)
    1688:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    168c:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1690:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1694:	540b9800 	bl	2968(0xb98) # 222c <write>
        s += 2;
    1698:	53fe77ff 	b	-396(0xffffe74) # 150c <printf+0xe0>
    char byte = c;
    169c:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16a0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16a4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16a8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16ac:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16b0:	540b7c00 	bl	2940(0xb7c) # 222c <write>
    char byte = c;
    16b4:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16b8:	02800406 	addi.w	$r6,$r0,1(0x1)
    16bc:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16c4:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16c8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16cc:	540b6000 	bl	2912(0xb60) # 222c <write>
        s += 2;
    16d0:	53fe3fff 	b	-452(0xffffe3c) # 150c <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16d4:	2600006c 	ldptr.d	$r12,$r3,0
    16d8:	26000197 	ldptr.d	$r23,$r12,0
    16dc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16e0:	2700006c 	stptr.d	$r12,$r3,0
    16e4:	40004ee0 	beqz	$r23,76(0x4c) # 1730 <printf+0x304>
            l = strnlen(a, 200);
    16e8:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16ec:	001502e4 	move	$r4,$r23
    16f0:	5405d000 	bl	1488(0x5d0) # 1cc0 <strnlen>
    16f4:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16f8:	001502e5 	move	$r5,$r23
    16fc:	02800404 	addi.w	$r4,$r0,1(0x1)
    1700:	540b2c00 	bl	2860(0xb2c) # 222c <write>
        s += 2;
    1704:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1708:	53fe07ff 	b	-508(0xffffe04) # 150c <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    170c:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1710:	00150366 	move	$r6,$r27
    1714:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1540 <printf+0x114>
    write(f, s, l);
    1718:	00150006 	move	$r6,$r0
    171c:	00150365 	move	$r5,$r27
    1720:	02800404 	addi.w	$r4,$r0,1(0x1)
    1724:	540b0800 	bl	2824(0xb08) # 222c <write>
    1728:	00150378 	move	$r24,$r27
    172c:	53fda3ff 	b	-608(0xffffda0) # 14cc <printf+0xa0>
                a = "(null)";
    1730:	1c000037 	pcaddu12i	$r23,1(0x1)
    1734:	02fc42f7 	addi.d	$r23,$r23,-240(0xf10)
    1738:	53ffb3ff 	b	-80(0xfffffb0) # 16e8 <printf+0x2bc>

000000000000173c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    173c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1740:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1744:	57fcb3ff 	bl	-848(0xffffcb0) # 13f4 <puts>
    exit(-100);
}
    1748:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    174c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1750:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1754:	500b4c00 	b	2892(0xb4c) # 22a0 <exit>

0000000000001758 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1758:	0280800c 	addi.w	$r12,$r0,32(0x20)
    175c:	5800108c 	beq	$r4,$r12,16(0x10) # 176c <isspace+0x14>
    1760:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1764:	02401484 	sltui	$r4,$r4,5(0x5)
    1768:	4c000020 	jirl	$r0,$r1,0
    176c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1770:	4c000020 	jirl	$r0,$r1,0

0000000000001774 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1774:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1778:	02402884 	sltui	$r4,$r4,10(0xa)
    177c:	4c000020 	jirl	$r0,$r1,0

0000000000001780 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1780:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1784:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1788:	2800008d 	ld.b	$r13,$r4,0
    178c:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1790:	580061ae 	beq	$r13,$r14,96(0x60) # 17f0 <atoi+0x70>
    1794:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17f0 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1798:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    179c:	580065ac 	beq	$r13,$r12,100(0x64) # 1800 <atoi+0x80>
    17a0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17a4:	58007dac 	beq	$r13,$r12,124(0x7c) # 1820 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17a8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17ac:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17b0:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17b4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17b8:	680061cf 	bltu	$r14,$r15,96(0x60) # 1818 <atoi+0x98>
    int n = 0, neg = 0;
    17bc:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17c0:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17c4:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17c8:	001c126f 	mul.w	$r15,$r19,$r4
    17cc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17d0:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17d4:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17d8:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17dc:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17e0:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17e4:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17c8 <atoi+0x48>
    return neg ? n : -n;
    17e8:	40001280 	beqz	$r20,16(0x10) # 17f8 <atoi+0x78>
}
    17ec:	4c000020 	jirl	$r0,$r1,0
        s++;
    17f0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17f4:	53ff97ff 	b	-108(0xfffff94) # 1788 <atoi+0x8>
    17f8:	00113e04 	sub.w	$r4,$r16,$r15
    17fc:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1800:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1804:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1808:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    180c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1810:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1814:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17bc <atoi+0x3c>
    1818:	00150004 	move	$r4,$r0
}
    181c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1820:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1824:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1828:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    182c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1830:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1818 <atoi+0x98>
        neg = 1;
    1834:	02800414 	addi.w	$r20,$r0,1(0x1)
    1838:	53ff87ff 	b	-124(0xfffff84) # 17bc <atoi+0x3c>

000000000000183c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    183c:	400198c0 	beqz	$r6,408(0x198) # 19d4 <memset+0x198>
    1840:	0011900c 	sub.d	$r12,$r0,$r4
    1844:	03401d8c 	andi	$r12,$r12,0x7
    1848:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    184c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1850:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1854:	0013b9ad 	masknez	$r13,$r13,$r14
    1858:	001339ee 	maskeqz	$r14,$r15,$r14
    185c:	001539ad 	or	$r13,$r13,$r14
    1860:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1864:	00005ca5 	ext.w.b	$r5,$r5
    1868:	680191ed 	bltu	$r15,$r13,400(0x190) # 19f8 <memset+0x1bc>
    186c:	40018180 	beqz	$r12,384(0x180) # 19ec <memset+0x1b0>
    1870:	29000085 	st.b	$r5,$r4,0
    1874:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1878:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    187c:	5801698d 	beq	$r12,$r13,360(0x168) # 19e4 <memset+0x1a8>
    1880:	29000485 	st.b	$r5,$r4,1(0x1)
    1884:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1888:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    188c:	5801798d 	beq	$r12,$r13,376(0x178) # 1a04 <memset+0x1c8>
    1890:	29000885 	st.b	$r5,$r4,2(0x2)
    1894:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1898:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    189c:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19d8 <memset+0x19c>
    18a0:	29000c85 	st.b	$r5,$r4,3(0x3)
    18a4:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18a8:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18ac:	5801618d 	beq	$r12,$r13,352(0x160) # 1a0c <memset+0x1d0>
    18b0:	29001085 	st.b	$r5,$r4,4(0x4)
    18b4:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18b8:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18bc:	5801598d 	beq	$r12,$r13,344(0x158) # 1a14 <memset+0x1d8>
    18c0:	29001485 	st.b	$r5,$r4,5(0x5)
    18c4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18c8:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18cc:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a1c <memset+0x1e0>
    18d0:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18d4:	29001885 	st.b	$r5,$r4,6(0x6)
    18d8:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18dc:	0015000d 	move	$r13,$r0
    18e0:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18e4:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18e8:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18ec:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18f0:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18f4:	0011b0d0 	sub.d	$r16,$r6,$r12
    18f8:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18fc:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1900:	0010b08c 	add.d	$r12,$r4,$r12
    1904:	00450e0f 	srli.d	$r15,$r16,0x3
    1908:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    190c:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1910:	2700018d 	stptr.d	$r13,$r12,0
    1914:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1918:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1910 <memset+0xd4>
    191c:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1920:	0014be0f 	and	$r15,$r16,$r15
    1924:	004081ed 	slli.w	$r13,$r15,0x0
    1928:	0010bdcc 	add.d	$r12,$r14,$r15
    192c:	001045ad 	add.w	$r13,$r13,$r17
    1930:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19e0 <memset+0x1a4>
    1934:	29000185 	st.b	$r5,$r12,0
    1938:	028005ae 	addi.w	$r14,$r13,1(0x1)
    193c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19d4 <memset+0x198>
    1940:	29000585 	st.b	$r5,$r12,1(0x1)
    1944:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1948:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19d4 <memset+0x198>
    194c:	29000985 	st.b	$r5,$r12,2(0x2)
    1950:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1954:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19d4 <memset+0x198>
    1958:	29000d85 	st.b	$r5,$r12,3(0x3)
    195c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1960:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19d4 <memset+0x198>
    1964:	29001185 	st.b	$r5,$r12,4(0x4)
    1968:	028015ae 	addi.w	$r14,$r13,5(0x5)
    196c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19d4 <memset+0x198>
    1970:	29001585 	st.b	$r5,$r12,5(0x5)
    1974:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1978:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19d4 <memset+0x198>
    197c:	29001985 	st.b	$r5,$r12,6(0x6)
    1980:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1984:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19d4 <memset+0x198>
    1988:	29001d85 	st.b	$r5,$r12,7(0x7)
    198c:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1990:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19d4 <memset+0x198>
    1994:	29002185 	st.b	$r5,$r12,8(0x8)
    1998:	028025ae 	addi.w	$r14,$r13,9(0x9)
    199c:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19d4 <memset+0x198>
    19a0:	29002585 	st.b	$r5,$r12,9(0x9)
    19a4:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19a8:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19d4 <memset+0x198>
    19ac:	29002985 	st.b	$r5,$r12,10(0xa)
    19b0:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19b4:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19d4 <memset+0x198>
    19b8:	29002d85 	st.b	$r5,$r12,11(0xb)
    19bc:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19c0:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19d4 <memset+0x198>
    19c4:	29003185 	st.b	$r5,$r12,12(0xc)
    19c8:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19cc:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19d4 <memset+0x198>
    19d0:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19d4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19d8:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19dc:	53ff03ff 	b	-256(0xfffff00) # 18dc <memset+0xa0>
    19e0:	4c000020 	jirl	$r0,$r1,0
    19e4:	02800411 	addi.w	$r17,$r0,1(0x1)
    19e8:	53fef7ff 	b	-268(0xffffef4) # 18dc <memset+0xa0>
    19ec:	0015008e 	move	$r14,$r4
    19f0:	00150011 	move	$r17,$r0
    19f4:	53feebff 	b	-280(0xffffee8) # 18dc <memset+0xa0>
    19f8:	0015008c 	move	$r12,$r4
    19fc:	0015000d 	move	$r13,$r0
    1a00:	53ff37ff 	b	-204(0xfffff34) # 1934 <memset+0xf8>
    1a04:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a08:	53fed7ff 	b	-300(0xffffed4) # 18dc <memset+0xa0>
    1a0c:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a10:	53fecfff 	b	-308(0xffffecc) # 18dc <memset+0xa0>
    1a14:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a18:	53fec7ff 	b	-316(0xffffec4) # 18dc <memset+0xa0>
    1a1c:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a20:	53febfff 	b	-324(0xffffebc) # 18dc <memset+0xa0>

0000000000001a24 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a24:	2800008c 	ld.b	$r12,$r4,0
    1a28:	280000ae 	ld.b	$r14,$r5,0
    1a2c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a60 <strcmp+0x3c>
    1a30:	40003980 	beqz	$r12,56(0x38) # 1a68 <strcmp+0x44>
    1a34:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a38:	50000800 	b	8(0x8) # 1a40 <strcmp+0x1c>
    1a3c:	400019a0 	beqz	$r13,24(0x18) # 1a54 <strcmp+0x30>
    1a40:	3800308d 	ldx.b	$r13,$r4,$r12
    1a44:	380030ae 	ldx.b	$r14,$r5,$r12
    1a48:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a4c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a3c <strcmp+0x18>
    1a50:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a54:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a58:	001111a4 	sub.w	$r4,$r13,$r4
    1a5c:	4c000020 	jirl	$r0,$r1,0
    1a60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a64:	53fff3ff 	b	-16(0xffffff0) # 1a54 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a68:	0015000d 	move	$r13,$r0
    1a6c:	53ffebff 	b	-24(0xfffffe8) # 1a54 <strcmp+0x30>

0000000000001a70 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a70:	400054c0 	beqz	$r6,84(0x54) # 1ac4 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a74:	2a00008d 	ld.bu	$r13,$r4,0
    1a78:	2a0000ae 	ld.bu	$r14,$r5,0
    1a7c:	40003da0 	beqz	$r13,60(0x3c) # 1ab8 <strncmp+0x48>
    1a80:	40003dc0 	beqz	$r14,60(0x3c) # 1abc <strncmp+0x4c>
    if (!n--)
    1a84:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a88:	400034c0 	beqz	$r6,52(0x34) # 1abc <strncmp+0x4c>
    1a8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a90:	580019ae 	beq	$r13,$r14,24(0x18) # 1aa8 <strncmp+0x38>
    1a94:	50002800 	b	40(0x28) # 1abc <strncmp+0x4c>
    1a98:	400035c0 	beqz	$r14,52(0x34) # 1acc <strncmp+0x5c>
    1a9c:	580020cc 	beq	$r6,$r12,32(0x20) # 1abc <strncmp+0x4c>
    1aa0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1aa4:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1acc <strncmp+0x5c>
    1aa8:	3820308d 	ldx.bu	$r13,$r4,$r12
    1aac:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ab0:	001501af 	move	$r15,$r13
    1ab4:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a98 <strncmp+0x28>
    1ab8:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1abc:	001139a4 	sub.w	$r4,$r13,$r14
    1ac0:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ac4:	00150004 	move	$r4,$r0
}
    1ac8:	4c000020 	jirl	$r0,$r1,0
    1acc:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ad0:	001139a4 	sub.w	$r4,$r13,$r14
    1ad4:	4c000020 	jirl	$r0,$r1,0

0000000000001ad8 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ad8:	03401c8c 	andi	$r12,$r4,0x7
    1adc:	4000b180 	beqz	$r12,176(0xb0) # 1b8c <strlen+0xb4>
        if (!*s)
    1ae0:	2800008c 	ld.b	$r12,$r4,0
    1ae4:	4000b180 	beqz	$r12,176(0xb0) # 1b94 <strlen+0xbc>
    1ae8:	0015008c 	move	$r12,$r4
    1aec:	50000c00 	b	12(0xc) # 1af8 <strlen+0x20>
    1af0:	2800018d 	ld.b	$r13,$r12,0
    1af4:	400091a0 	beqz	$r13,144(0x90) # 1b84 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1af8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1afc:	03401d8d 	andi	$r13,$r12,0x7
    1b00:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1af0 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b04:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b08:	2600018f 	ldptr.d	$r15,$r12,0
    1b0c:	03bbfdad 	ori	$r13,$r13,0xeff
    1b10:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b14:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b18:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b1c:	038201ce 	ori	$r14,$r14,0x80
    1b20:	0010b5ed 	add.d	$r13,$r15,$r13
    1b24:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b28:	0016bdad 	andn	$r13,$r13,$r15
    1b2c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b30:	0014b9ae 	and	$r14,$r13,$r14
    1b34:	440049c0 	bnez	$r14,72(0x48) # 1b7c <strlen+0xa4>
    1b38:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b3c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b40:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b44:	2600018e 	ldptr.d	$r14,$r12,0
    1b48:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b4c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b50:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b54:	0382020f 	ori	$r15,$r16,0x80
    1b58:	0010b5cd 	add.d	$r13,$r14,$r13
    1b5c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b60:	0016b9ad 	andn	$r13,$r13,$r14
    1b64:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b68:	0014bdad 	and	$r13,$r13,$r15
    1b6c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b40 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b70:	2800018d 	ld.b	$r13,$r12,0
    1b74:	400011a0 	beqz	$r13,16(0x10) # 1b84 <strlen+0xac>
    1b78:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b7c:	2800018d 	ld.b	$r13,$r12,0
    1b80:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b78 <strlen+0xa0>
        ;
    return s - a;
    1b84:	00119184 	sub.d	$r4,$r12,$r4
}
    1b88:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b8c:	0015008c 	move	$r12,$r4
    1b90:	53ff77ff 	b	-140(0xfffff74) # 1b04 <strlen+0x2c>
        if (!*s)
    1b94:	00150004 	move	$r4,$r0
            return s - a;
    1b98:	4c000020 	jirl	$r0,$r1,0

0000000000001b9c <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b9c:	03401c8c 	andi	$r12,$r4,0x7
    1ba0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1ba4:	44002180 	bnez	$r12,32(0x20) # 1bc4 <memchr+0x28>
    1ba8:	50002c00 	b	44(0x2c) # 1bd4 <memchr+0x38>
    1bac:	2a00008c 	ld.bu	$r12,$r4,0
    1bb0:	5800f985 	beq	$r12,$r5,248(0xf8) # 1ca8 <memchr+0x10c>
    1bb4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bb8:	03401c8c 	andi	$r12,$r4,0x7
    1bbc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bc0:	40001580 	beqz	$r12,20(0x14) # 1bd4 <memchr+0x38>
    1bc4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bac <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bc8:	0015000d 	move	$r13,$r0
}
    1bcc:	001501a4 	move	$r4,$r13
    1bd0:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bd4:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bd8:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bcc <memchr+0x30>
    1bdc:	2a00008c 	ld.bu	$r12,$r4,0
    1be0:	5800c985 	beq	$r12,$r5,200(0xc8) # 1ca8 <memchr+0x10c>
        size_t k = ONES * c;
    1be4:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1be8:	0384058c 	ori	$r12,$r12,0x101
    1bec:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bf0:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bf4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bf8:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bfc:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cb8 <memchr+0x11c>
    1c00:	2600008d 	ldptr.d	$r13,$r4,0
    1c04:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c08:	038201ce 	ori	$r14,$r14,0x80
    1c0c:	0015b60d 	xor	$r13,$r16,$r13
    1c10:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c14:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c18:	0016b58c 	andn	$r12,$r12,$r13
    1c1c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c20:	0014b98c 	and	$r12,$r12,$r14
    1c24:	44009580 	bnez	$r12,148(0x94) # 1cb8 <memchr+0x11c>
    1c28:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c2c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c30:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c34:	50002000 	b	32(0x20) # 1c54 <memchr+0xb8>
    1c38:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c3c:	0015b20c 	xor	$r12,$r16,$r12
    1c40:	0010b98e 	add.d	$r14,$r12,$r14
    1c44:	0016b1cc 	andn	$r12,$r14,$r12
    1c48:	0014bd8c 	and	$r12,$r12,$r15
    1c4c:	44006580 	bnez	$r12,100(0x64) # 1cb0 <memchr+0x114>
    1c50:	001501a4 	move	$r4,$r13
    1c54:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c58:	0382022f 	ori	$r15,$r17,0x80
    1c5c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c60:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c64:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c68:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c6c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c70:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c74:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c38 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c78:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bc8 <memchr+0x2c>
    1c7c:	2a0001ac 	ld.bu	$r12,$r13,0
    1c80:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bcc <memchr+0x30>
    1c84:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c88:	001099a6 	add.d	$r6,$r13,$r6
    1c8c:	50001000 	b	16(0x10) # 1c9c <memchr+0x100>
    1c90:	2a00018e 	ld.bu	$r14,$r12,0
    1c94:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c98:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bcc <memchr+0x30>
    1c9c:	0015018d 	move	$r13,$r12
    1ca0:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c90 <memchr+0xf4>
    1ca4:	53ff27ff 	b	-220(0xfffff24) # 1bc8 <memchr+0x2c>
    1ca8:	0015008d 	move	$r13,$r4
    1cac:	53ffd3ff 	b	-48(0xfffffd0) # 1c7c <memchr+0xe0>
    1cb0:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cb4:	53ffcfff 	b	-52(0xfffffcc) # 1c80 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cb8:	0015008d 	move	$r13,$r4
    1cbc:	53ffcbff 	b	-56(0xfffffc8) # 1c84 <memchr+0xe8>

0000000000001cc0 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cc0:	03401c8c 	andi	$r12,$r4,0x7
    1cc4:	40011980 	beqz	$r12,280(0x118) # 1ddc <strnlen+0x11c>
    1cc8:	4000f4a0 	beqz	$r5,244(0xf4) # 1dbc <strnlen+0xfc>
    1ccc:	2a00008c 	ld.bu	$r12,$r4,0
    1cd0:	4000f580 	beqz	$r12,244(0xf4) # 1dc4 <strnlen+0x104>
    1cd4:	001500ac 	move	$r12,$r5
    1cd8:	0015008d 	move	$r13,$r4
    1cdc:	50001000 	b	16(0x10) # 1cec <strnlen+0x2c>
    1ce0:	4000dd80 	beqz	$r12,220(0xdc) # 1dbc <strnlen+0xfc>
    1ce4:	2a0001ae 	ld.bu	$r14,$r13,0
    1ce8:	4000e5c0 	beqz	$r14,228(0xe4) # 1dcc <strnlen+0x10c>
    1cec:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cf0:	03401dae 	andi	$r14,$r13,0x7
    1cf4:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cf8:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1ce0 <strnlen+0x20>
    if (n && *s != c)
    1cfc:	4000c180 	beqz	$r12,192(0xc0) # 1dbc <strnlen+0xfc>
    1d00:	2a0001ae 	ld.bu	$r14,$r13,0
    1d04:	4000c9c0 	beqz	$r14,200(0xc8) # 1dcc <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d08:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d0c:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1de8 <strnlen+0x128>
    1d10:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d14:	260001b0 	ldptr.d	$r16,$r13,0
    1d18:	03bbfdce 	ori	$r14,$r14,0xeff
    1d1c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d20:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d24:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d28:	038201ef 	ori	$r15,$r15,0x80
    1d2c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d30:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d34:	0016c1ce 	andn	$r14,$r14,$r16
    1d38:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d3c:	0014bdcf 	and	$r15,$r14,$r15
    1d40:	4400a9e0 	bnez	$r15,168(0xa8) # 1de8 <strnlen+0x128>
    1d44:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d48:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d4c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d50:	50001c00 	b	28(0x1c) # 1d6c <strnlen+0xac>
    1d54:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d58:	0010b9ee 	add.d	$r14,$r15,$r14
    1d5c:	0016bdce 	andn	$r14,$r14,$r15
    1d60:	0014c1ce 	and	$r14,$r14,$r16
    1d64:	440071c0 	bnez	$r14,112(0x70) # 1dd4 <strnlen+0x114>
    1d68:	0015022d 	move	$r13,$r17
    1d6c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d70:	03820250 	ori	$r16,$r18,0x80
    1d74:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d78:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d7c:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d80:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d84:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d88:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d8c:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d54 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d90:	40002d80 	beqz	$r12,44(0x2c) # 1dbc <strnlen+0xfc>
    1d94:	2a00022d 	ld.bu	$r13,$r17,0
    1d98:	400021a0 	beqz	$r13,32(0x20) # 1db8 <strnlen+0xf8>
    1d9c:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1da0:	0010b22c 	add.d	$r12,$r17,$r12
    1da4:	001501b1 	move	$r17,$r13
    1da8:	5800158d 	beq	$r12,$r13,20(0x14) # 1dbc <strnlen+0xfc>
    1dac:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1db0:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1db4:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1da4 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1db8:	00119225 	sub.d	$r5,$r17,$r4
}
    1dbc:	001500a4 	move	$r4,$r5
    1dc0:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dc4:	001500ac 	move	$r12,$r5
    1dc8:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dcc:	001501b1 	move	$r17,$r13
    1dd0:	53ffc7ff 	b	-60(0xfffffc4) # 1d94 <strnlen+0xd4>
    1dd4:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dd8:	53ffc3ff 	b	-64(0xfffffc0) # 1d98 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ddc:	001500ac 	move	$r12,$r5
    1de0:	0015008d 	move	$r13,$r4
    1de4:	53ff1bff 	b	-232(0xfffff18) # 1cfc <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1de8:	001501b1 	move	$r17,$r13
    1dec:	53ffb3ff 	b	-80(0xfffffb0) # 1d9c <strnlen+0xdc>

0000000000001df0 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1df0:	0015948c 	xor	$r12,$r4,$r5
    1df4:	03401d8c 	andi	$r12,$r12,0x7
    1df8:	4400ad80 	bnez	$r12,172(0xac) # 1ea4 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dfc:	03401cac 	andi	$r12,$r5,0x7
    1e00:	40003180 	beqz	$r12,48(0x30) # 1e30 <strcpy+0x40>
            if (!(*d = *s))
    1e04:	280000ac 	ld.b	$r12,$r5,0
    1e08:	2900008c 	st.b	$r12,$r4,0
    1e0c:	44001580 	bnez	$r12,20(0x14) # 1e20 <strcpy+0x30>
    1e10:	5000bc00 	b	188(0xbc) # 1ecc <strcpy+0xdc>
    1e14:	280000ac 	ld.b	$r12,$r5,0
    1e18:	2900008c 	st.b	$r12,$r4,0
    1e1c:	4000a980 	beqz	$r12,168(0xa8) # 1ec4 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e20:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e24:	03401cac 	andi	$r12,$r5,0x7
    1e28:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e2c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e14 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e30:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e34:	260000ae 	ldptr.d	$r14,$r5,0
    1e38:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e3c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e40:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e44:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e48:	038201ad 	ori	$r13,$r13,0x80
    1e4c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e50:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e54:	0016b98c 	andn	$r12,$r12,$r14
    1e58:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e5c:	0014b58c 	and	$r12,$r12,$r13
    1e60:	44004580 	bnez	$r12,68(0x44) # 1ea4 <strcpy+0xb4>
    1e64:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e68:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e6c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e70:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e74:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e78:	260000ae 	ldptr.d	$r14,$r5,0
    1e7c:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e80:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e84:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e88:	038201ed 	ori	$r13,$r15,0x80
    1e8c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e90:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e94:	0016b98c 	andn	$r12,$r12,$r14
    1e98:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e9c:	0014b58c 	and	$r12,$r12,$r13
    1ea0:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e6c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ea4:	280000ac 	ld.b	$r12,$r5,0
    1ea8:	2900008c 	st.b	$r12,$r4,0
    1eac:	40001d80 	beqz	$r12,28(0x1c) # 1ec8 <strcpy+0xd8>
    1eb0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1eb4:	280000ac 	ld.b	$r12,$r5,0
    1eb8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ebc:	2900008c 	st.b	$r12,$r4,0
    1ec0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1eb0 <strcpy+0xc0>
        ;
    return d;
}
    1ec4:	4c000020 	jirl	$r0,$r1,0
    1ec8:	4c000020 	jirl	$r0,$r1,0
    1ecc:	4c000020 	jirl	$r0,$r1,0

0000000000001ed0 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ed0:	0015948c 	xor	$r12,$r4,$r5
    1ed4:	03401d8c 	andi	$r12,$r12,0x7
    1ed8:	4400ad80 	bnez	$r12,172(0xac) # 1f84 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1edc:	03401cac 	andi	$r12,$r5,0x7
    1ee0:	44010180 	bnez	$r12,256(0x100) # 1fe0 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ee4:	400100c0 	beqz	$r6,256(0x100) # 1fe4 <strncpy+0x114>
    1ee8:	280000af 	ld.b	$r15,$r5,0
    1eec:	400105e0 	beqz	$r15,260(0x104) # 1ff0 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ef0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ef4:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21cc <strncpy+0x2fc>
    1ef8:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1efc:	260000ae 	ldptr.d	$r14,$r5,0
    1f00:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f04:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f08:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f0c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f10:	038201ad 	ori	$r13,$r13,0x80
    1f14:	0010b1cc 	add.d	$r12,$r14,$r12
    1f18:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f1c:	0016b98c 	andn	$r12,$r12,$r14
    1f20:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f24:	0014b58c 	and	$r12,$r12,$r13
    1f28:	4402a580 	bnez	$r12,676(0x2a4) # 21cc <strncpy+0x2fc>
    1f2c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f30:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f34:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f38:	50001c00 	b	28(0x1c) # 1f54 <strncpy+0x84>
    1f3c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f40:	0010b1cc 	add.d	$r12,$r14,$r12
    1f44:	0016b98c 	andn	$r12,$r12,$r14
    1f48:	0014b58c 	and	$r12,$r12,$r13
    1f4c:	44024580 	bnez	$r12,580(0x244) # 2190 <strncpy+0x2c0>
    1f50:	001501e5 	move	$r5,$r15
    1f54:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f58:	0382020d 	ori	$r13,$r16,0x80
    1f5c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f60:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f64:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f68:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f6c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f70:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f74:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f78:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f7c:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f3c <strncpy+0x6c>
    1f80:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f84:	400060c0 	beqz	$r6,96(0x60) # 1fe4 <strncpy+0x114>
    1f88:	280000ac 	ld.b	$r12,$r5,0
    1f8c:	0015008d 	move	$r13,$r4
    1f90:	2900008c 	st.b	$r12,$r4,0
    1f94:	44001580 	bnez	$r12,20(0x14) # 1fa8 <strncpy+0xd8>
    1f98:	50005c00 	b	92(0x5c) # 1ff4 <strncpy+0x124>
    1f9c:	280000ac 	ld.b	$r12,$r5,0
    1fa0:	290001ac 	st.b	$r12,$r13,0
    1fa4:	40005180 	beqz	$r12,80(0x50) # 1ff4 <strncpy+0x124>
    1fa8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fac:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fb0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fb4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f9c <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fb8:	001501a4 	move	$r4,$r13
    1fbc:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fc0:	280000ac 	ld.b	$r12,$r5,0
    1fc4:	2900008c 	st.b	$r12,$r4,0
    1fc8:	40002980 	beqz	$r12,40(0x28) # 1ff0 <strncpy+0x120>
    1fcc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fd0:	03401cac 	andi	$r12,$r5,0x7
    1fd4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fd8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fdc:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ee4 <strncpy+0x14>
    1fe0:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fc0 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fe4:	0015008d 	move	$r13,$r4
}
    1fe8:	001501a4 	move	$r4,$r13
    1fec:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1ff0:	0015008d 	move	$r13,$r4
    1ff4:	0011b40c 	sub.d	$r12,$r0,$r13
    1ff8:	03401d8c 	andi	$r12,$r12,0x7
    1ffc:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2000:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2004:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2008:	0013bdce 	masknez	$r14,$r14,$r15
    200c:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2010:	00133e0f 	maskeqz	$r15,$r16,$r15
    2014:	00153dce 	or	$r14,$r14,$r15
    2018:	024004d0 	sltui	$r16,$r6,1(0x1)
    201c:	00131a31 	maskeqz	$r17,$r17,$r6
    2020:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2024:	001540d0 	or	$r16,$r6,$r16
    2028:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21a0 <strncpy+0x2d0>
    202c:	40015980 	beqz	$r12,344(0x158) # 2184 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2030:	290001a0 	st.b	$r0,$r13,0
    2034:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2038:	5801458f 	beq	$r12,$r15,324(0x144) # 217c <strncpy+0x2ac>
    203c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2040:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2044:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2048:	5801658f 	beq	$r12,$r15,356(0x164) # 21ac <strncpy+0x2dc>
    204c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2050:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2054:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2058:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2174 <strncpy+0x2a4>
    205c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2060:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2064:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2068:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21b4 <strncpy+0x2e4>
    206c:	290011a0 	st.b	$r0,$r13,4(0x4)
    2070:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2074:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2078:	5801458f 	beq	$r12,$r15,324(0x144) # 21bc <strncpy+0x2ec>
    207c:	290015a0 	st.b	$r0,$r13,5(0x5)
    2080:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2084:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2088:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21c4 <strncpy+0x2f4>
    208c:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2090:	290019a0 	st.b	$r0,$r13,6(0x6)
    2094:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2098:	0011b210 	sub.d	$r16,$r16,$r12
    209c:	00450e11 	srli.d	$r17,$r16,0x3
    20a0:	0010b1ac 	add.d	$r12,$r13,$r12
    20a4:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20a8:	27000180 	stptr.d	$r0,$r12,0
    20ac:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20b0:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20a8 <strncpy+0x1d8>
    20b4:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20b8:	0014c611 	and	$r17,$r16,$r17
    20bc:	0040822f 	slli.w	$r15,$r17,0x0
    20c0:	001049ef 	add.w	$r15,$r15,$r18
    20c4:	0010c5cc 	add.d	$r12,$r14,$r17
    20c8:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fb8 <strncpy+0xe8>
    20cc:	29000180 	st.b	$r0,$r12,0
    20d0:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20d4:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fb8 <strncpy+0xe8>
    20d8:	29000580 	st.b	$r0,$r12,1(0x1)
    20dc:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20e0:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fb8 <strncpy+0xe8>
    20e4:	29000980 	st.b	$r0,$r12,2(0x2)
    20e8:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20ec:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fb8 <strncpy+0xe8>
    20f0:	29000d80 	st.b	$r0,$r12,3(0x3)
    20f4:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20f8:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fb8 <strncpy+0xe8>
    20fc:	29001180 	st.b	$r0,$r12,4(0x4)
    2100:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2104:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fb8 <strncpy+0xe8>
    2108:	29001580 	st.b	$r0,$r12,5(0x5)
    210c:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2110:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fb8 <strncpy+0xe8>
    2114:	29001980 	st.b	$r0,$r12,6(0x6)
    2118:	02801dee 	addi.w	$r14,$r15,7(0x7)
    211c:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fb8 <strncpy+0xe8>
    2120:	29001d80 	st.b	$r0,$r12,7(0x7)
    2124:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2128:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fb8 <strncpy+0xe8>
    212c:	29002180 	st.b	$r0,$r12,8(0x8)
    2130:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2134:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fb8 <strncpy+0xe8>
    2138:	29002580 	st.b	$r0,$r12,9(0x9)
    213c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2140:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fb8 <strncpy+0xe8>
    2144:	29002980 	st.b	$r0,$r12,10(0xa)
    2148:	02802dee 	addi.w	$r14,$r15,11(0xb)
    214c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fb8 <strncpy+0xe8>
    2150:	29002d80 	st.b	$r0,$r12,11(0xb)
    2154:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2158:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fb8 <strncpy+0xe8>
    215c:	29003180 	st.b	$r0,$r12,12(0xc)
    2160:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2164:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fb8 <strncpy+0xe8>
    2168:	29003580 	st.b	$r0,$r12,13(0xd)
}
    216c:	001501a4 	move	$r4,$r13
    2170:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2174:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2178:	53ff23ff 	b	-224(0xfffff20) # 2098 <strncpy+0x1c8>
    217c:	02800412 	addi.w	$r18,$r0,1(0x1)
    2180:	53ff1bff 	b	-232(0xfffff18) # 2098 <strncpy+0x1c8>
    2184:	001501ae 	move	$r14,$r13
    2188:	00150012 	move	$r18,$r0
    218c:	53ff0fff 	b	-244(0xfffff0c) # 2098 <strncpy+0x1c8>
    2190:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2194:	0015008d 	move	$r13,$r4
    2198:	001501e5 	move	$r5,$r15
    219c:	53fdf7ff 	b	-524(0xffffdf4) # 1f90 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21a0:	001501ac 	move	$r12,$r13
    21a4:	0015000f 	move	$r15,$r0
    21a8:	53ff27ff 	b	-220(0xfffff24) # 20cc <strncpy+0x1fc>
    21ac:	02800812 	addi.w	$r18,$r0,2(0x2)
    21b0:	53feebff 	b	-280(0xffffee8) # 2098 <strncpy+0x1c8>
    21b4:	02801012 	addi.w	$r18,$r0,4(0x4)
    21b8:	53fee3ff 	b	-288(0xffffee0) # 2098 <strncpy+0x1c8>
    21bc:	02801412 	addi.w	$r18,$r0,5(0x5)
    21c0:	53fedbff 	b	-296(0xffffed8) # 2098 <strncpy+0x1c8>
    21c4:	02801812 	addi.w	$r18,$r0,6(0x6)
    21c8:	53fed3ff 	b	-304(0xffffed0) # 2098 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21cc:	2900008f 	st.b	$r15,$r4,0
    21d0:	0015008d 	move	$r13,$r4
    21d4:	53fdd7ff 	b	-556(0xffffdd4) # 1fa8 <strncpy+0xd8>

00000000000021d8 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21d8:	0015008c 	move	$r12,$r4
    21dc:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21e0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21e4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21e8:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21ec:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21f0:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21f4:	00408084 	slli.w	$r4,$r4,0x0
}
    21f8:	4c000020 	jirl	$r0,$r1,0

00000000000021fc <openat>:
    register long a7 __asm__("a7") = n;
    21fc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2200:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2204:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2208:	00408084 	slli.w	$r4,$r4,0x0
}
    220c:	4c000020 	jirl	$r0,$r1,0

0000000000002210 <close>:
    register long a7 __asm__("a7") = n;
    2210:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2214:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2218:	00408084 	slli.w	$r4,$r4,0x0
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <read>:
    register long a7 __asm__("a7") = n;
    2220:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2224:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2228:	4c000020 	jirl	$r0,$r1,0

000000000000222c <write>:
    register long a7 __asm__("a7") = n;
    222c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2230:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2234:	4c000020 	jirl	$r0,$r1,0

0000000000002238 <getpid>:
    register long a7 __asm__("a7") = n;
    2238:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    223c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2240:	00408084 	slli.w	$r4,$r4,0x0
}
    2244:	4c000020 	jirl	$r0,$r1,0

0000000000002248 <getppid>:
    register long a7 __asm__("a7") = n;
    2248:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    224c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2250:	00408084 	slli.w	$r4,$r4,0x0
}
    2254:	4c000020 	jirl	$r0,$r1,0

0000000000002258 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2258:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    225c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2260:	00408084 	slli.w	$r4,$r4,0x0
}
    2264:	4c000020 	jirl	$r0,$r1,0

0000000000002268 <fork>:
    register long a7 __asm__("a7") = n;
    2268:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    226c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2270:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2274:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2278:	00408084 	slli.w	$r4,$r4,0x0
}
    227c:	4c000020 	jirl	$r0,$r1,0

0000000000002280 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2280:	001500c5 	move	$r5,$r6
    if (stack)
    2284:	400008c0 	beqz	$r6,8(0x8) # 228c <clone+0xc>
	stack += stack_size;
    2288:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    228c:	00408106 	slli.w	$r6,$r8,0x0
    2290:	00150009 	move	$r9,$r0
    2294:	00150008 	move	$r8,$r0
    2298:	00150007 	move	$r7,$r0
    229c:	5002c800 	b	712(0x2c8) # 2564 <__clone>

00000000000022a0 <exit>:
    register long a7 __asm__("a7") = n;
    22a0:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22a4:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <waitpid>:
    register long a7 __asm__("a7") = n;
    22ac:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22b0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22b4:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22b8:	00408084 	slli.w	$r4,$r4,0x0
}
    22bc:	4c000020 	jirl	$r0,$r1,0

00000000000022c0 <exec>:
    register long a7 __asm__("a7") = n;
    22c0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22c4:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <execve>:
    register long a7 __asm__("a7") = n;
    22d0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22d4:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22d8:	00408084 	slli.w	$r4,$r4,0x0
}
    22dc:	4c000020 	jirl	$r0,$r1,0

00000000000022e0 <times>:
    register long a7 __asm__("a7") = n;
    22e0:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22e4:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22e8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <get_time>:

int64 get_time()
{
    22f0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22f4:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22f8:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22fc:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2300:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2304:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2308:	44003c80 	bnez	$r4,60(0x3c) # 2344 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    230c:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2310:	039f3c8c 	ori	$r12,$r4,0x7cf
    2314:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2318:	2a40006d 	ld.hu	$r13,$r3,0
    231c:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2320:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2324:	00450c84 	srli.d	$r4,$r4,0x3
    2328:	001eb084 	mulh.du	$r4,$r4,$r12
    232c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2330:	001db1ac 	mul.d	$r12,$r13,$r12
    2334:	00451084 	srli.d	$r4,$r4,0x4
    2338:	00109184 	add.d	$r4,$r12,$r4
}
    233c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2340:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2344:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2348:	53fff7ff 	b	-12(0xffffff4) # 233c <get_time+0x4c>

000000000000234c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    234c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2350:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2354:	00408084 	slli.w	$r4,$r4,0x0
}
    2358:	4c000020 	jirl	$r0,$r1,0

000000000000235c <time>:
    register long a7 __asm__("a7") = n;
    235c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2360:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2364:	00408084 	slli.w	$r4,$r4,0x0
}
    2368:	4c000020 	jirl	$r0,$r1,0

000000000000236c <sleep>:

int sleep(unsigned long long time)
{
    236c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2370:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2374:	00150064 	move	$r4,$r3
    2378:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    237c:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2380:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2384:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2388:	44001080 	bnez	$r4,16(0x10) # 2398 <sleep+0x2c>
    return 0;
    238c:	00150004 	move	$r4,$r0
}
    2390:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2394:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2398:	24000064 	ldptr.w	$r4,$r3,0
}
    239c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23a0:	4c000020 	jirl	$r0,$r1,0

00000000000023a4 <set_priority>:
    register long a7 __asm__("a7") = n;
    23a4:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23a8:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23ac:	00408084 	slli.w	$r4,$r4,0x0
}
    23b0:	4c000020 	jirl	$r0,$r1,0

00000000000023b4 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23b4:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23b8:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23bc:	4c000020 	jirl	$r0,$r1,0

00000000000023c0 <munmap>:
    register long a7 __asm__("a7") = n;
    23c0:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c4:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23c8:	00408084 	slli.w	$r4,$r4,0x0
}
    23cc:	4c000020 	jirl	$r0,$r1,0

00000000000023d0 <wait>:

int wait(int *code)
{
    23d0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23d4:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23d8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23dc:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23e0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23e4:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23e8:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <spawn>:
    register long a7 __asm__("a7") = n;
    23f0:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23f4:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23f8:	00408084 	slli.w	$r4,$r4,0x0
}
    23fc:	4c000020 	jirl	$r0,$r1,0

0000000000002400 <mailread>:
    register long a7 __asm__("a7") = n;
    2400:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2404:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2408:	00408084 	slli.w	$r4,$r4,0x0
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2410:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2414:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <fstat>:
    register long a7 __asm__("a7") = n;
    2420:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2424:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2430:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2434:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2438:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2444:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2448:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    244c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2450:	00408084 	slli.w	$r4,$r4,0x0
}
    2454:	4c000020 	jirl	$r0,$r1,0

0000000000002458 <link>:

int link(char *old_path, char *new_path)
{
    2458:	0015008c 	move	$r12,$r4
    245c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2460:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2464:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2468:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    246c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2470:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2474:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2478:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    247c:	4c000020 	jirl	$r0,$r1,0

0000000000002480 <unlink>:

int unlink(char *path)
{
    2480:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2484:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2488:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    248c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2490:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2494:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2498:	4c000020 	jirl	$r0,$r1,0

000000000000249c <uname>:
    register long a7 __asm__("a7") = n;
    249c:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24a0:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24a4:	00408084 	slli.w	$r4,$r4,0x0
}
    24a8:	4c000020 	jirl	$r0,$r1,0

00000000000024ac <brk>:
    register long a7 __asm__("a7") = n;
    24ac:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24b0:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24b4:	00408084 	slli.w	$r4,$r4,0x0
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <getcwd>:
    register long a7 __asm__("a7") = n;
    24bc:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24c0:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24c4:	4c000020 	jirl	$r0,$r1,0

00000000000024c8 <chdir>:
    register long a7 __asm__("a7") = n;
    24c8:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24cc:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24d0:	00408084 	slli.w	$r4,$r4,0x0
}
    24d4:	4c000020 	jirl	$r0,$r1,0

00000000000024d8 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24d8:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24dc:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24e0:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24e4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24e8:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24ec:	002b0000 	syscall	0x0
    24f0:	00408084 	slli.w	$r4,$r4,0x0
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <getdents>:
    register long a7 __asm__("a7") = n;
    24f8:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24fc:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <pipe>:
    register long a7 __asm__("a7") = n;
    2508:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    250c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2510:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <dup>:
    register long a7 __asm__("a7") = n;
    251c:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2520:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2524:	00408084 	slli.w	$r4,$r4,0x0
}
    2528:	4c000020 	jirl	$r0,$r1,0

000000000000252c <dup2>:
    register long a7 __asm__("a7") = n;
    252c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2530:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2534:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2538:	00408084 	slli.w	$r4,$r4,0x0
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <mount>:
    register long a7 __asm__("a7") = n;
    2540:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2544:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <umount>:
    register long a7 __asm__("a7") = n;
    2550:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2554:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2558:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    255c:	00408084 	slli.w	$r4,$r4,0x0
}
    2560:	4c000020 	jirl	$r0,$r1,0

0000000000002564 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2564:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2568:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    256c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2570:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2574:	00150106 	move	$r6,$r8
	move $a3, $a5
    2578:	00150127 	move	$r7,$r9
	move $a4, $a6
    257c:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2580:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2584:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2588:	40000880 	beqz	$r4,8(0x8) # 2590 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    258c:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2590:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2594:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2598:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    259c:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25a0:	002b0000 	syscall	0x0
