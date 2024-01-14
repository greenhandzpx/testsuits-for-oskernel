
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/openat:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400f400 	bl	244(0xf4) # 10f8 <__start_main>

0000000000001008 <test_openat>:
#include "unistd.h"
#include "stdio.h"
#include "stdlib.h"

void test_openat(void) {
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d69084 	addi.d	$r4,$r4,1444(0x5a4)
void test_openat(void) {
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    1018:	27000077 	stptr.d	$r23,$r3,0
    TEST_START(__func__);
    101c:	5403e400 	bl	996(0x3e4) # 1400 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d92084 	addi.d	$r4,$r4,1608(0x648)
    1028:	5403d800 	bl	984(0x3d8) # 1400 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    1034:	5403cc00 	bl	972(0x3cc) # 1400 <puts>
    //int fd_dir = open(".", O_RDONLY | O_CREATE);
    int fd_dir = open("./mnt", O_DIRECTORY);
    1038:	14004005 	lu12i.w	$r5,512(0x200)
    103c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1040:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    1044:	5411a000 	bl	4512(0x11a0) # 21e4 <open>
    1048:	00150097 	move	$r23,$r4
    printf("open dir fd: %d\n", fd_dir);
    104c:	00150085 	move	$r5,$r4
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d64084 	addi.d	$r4,$r4,1424(0x590)
    1058:	5403e000 	bl	992(0x3e0) # 1438 <printf>
    int fd = openat(fd_dir, "test_openat.txt", O_CREATE | O_RDWR);
    105c:	1c000025 	pcaddu12i	$r5,1(0x1)
    1060:	02d670a5 	addi.d	$r5,$r5,1436(0x59c)
    1064:	001502e4 	move	$r4,$r23
    1068:	02810806 	addi.w	$r6,$r0,66(0x42)
    106c:	54119c00 	bl	4508(0x119c) # 2208 <openat>
    1070:	00150097 	move	$r23,$r4
    printf("openat fd: %d\n", fd);
    1074:	00150085 	move	$r5,$r4
    1078:	1c000024 	pcaddu12i	$r4,1(0x1)
    107c:	02d64084 	addi.d	$r4,$r4,1424(0x590)
    1080:	5403b800 	bl	952(0x3b8) # 1438 <printf>
    assert(fd > 0);
    1084:	64004817 	bge	$r0,$r23,72(0x48) # 10cc <test_openat+0xc4>
    printf("openat success.\n");
    1088:	1c000024 	pcaddu12i	$r4,1(0x1)
    108c:	02d6c084 	addi.d	$r4,$r4,1456(0x5b0)
    1090:	5403a800 	bl	936(0x3a8) # 1438 <printf>
    write(fd, buf, strlen(buf));
    int size = read(fd, buf, 256);
    if (size > 0) printf("  openat success.\n");
    else printf("  openat error.\n");
    */
    close(fd);	
    1094:	001502e4 	move	$r4,$r23
    1098:	54118400 	bl	4484(0x1184) # 221c <close>
	
    TEST_END(__func__);
    109c:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a0:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    10a4:	54035c00 	bl	860(0x35c) # 1400 <puts>
    10a8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10ac:	02d70084 	addi.d	$r4,$r4,1472(0x5c0)
    10b0:	54035000 	bl	848(0x350) # 1400 <puts>
}
    10b4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10b8:	26000077 	ldptr.d	$r23,$r3,0
    TEST_END(__func__);
    10bc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c0:	02d43084 	addi.d	$r4,$r4,1292(0x50c)
}
    10c4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    TEST_END(__func__);
    10c8:	50033800 	b	824(0x338) # 1400 <puts>
    assert(fd > 0);
    10cc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d0:	02d53084 	addi.d	$r4,$r4,1356(0x54c)
    10d4:	54067400 	bl	1652(0x674) # 1748 <panic>
    10d8:	53ffb3ff 	b	-80(0xfffffb0) # 1088 <test_openat+0x80>

00000000000010dc <main>:

int main(void) {
    10dc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10e0:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_openat();
    10e4:	57ff27ff 	bl	-220(0xfffff24) # 1008 <test_openat>
    return 0;
}
    10e8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10ec:	00150004 	move	$r4,$r0
    10f0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10f4:	4c000020 	jirl	$r0,$r1,0

00000000000010f8 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10f8:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10fc:	24000084 	ldptr.w	$r4,$r4,0
{
    1100:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1104:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1108:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    110c:	57ffd3ff 	bl	-48(0xfffffd0) # 10dc <main>
    1110:	54119c00 	bl	4508(0x119c) # 22ac <exit>
	return 0;
}
    1114:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1118:	00150004 	move	$r4,$r0
    111c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1120:	4c000020 	jirl	$r0,$r1,0

0000000000001124 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1124:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1128:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    112c:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12f8 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1130:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1134:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1138:	02d5118c 	addi.d	$r12,$r12,1348(0x544)
    113c:	002195cf 	mod.wu	$r15,$r14,$r5
    1140:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1148 <printint.constprop.0+0x24>
    1144:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1148:	002115cd 	div.wu	$r13,$r14,$r5
    114c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1154 <printint.constprop.0+0x30>
    1150:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1154:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1158:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    115c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1160:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1164:	680219c5 	bltu	$r14,$r5,536(0x218) # 137c <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1168:	002195af 	mod.wu	$r15,$r13,$r5
    116c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1174 <printint.constprop.0+0x50>
    1170:	002a0007 	break	0x7
    1174:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1178:	002115ae 	div.wu	$r14,$r13,$r5
    117c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1184 <printint.constprop.0+0x60>
    1180:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1184:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1188:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    118c:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 134c <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1190:	002195cf 	mod.wu	$r15,$r14,$r5
    1194:	5c0008a0 	bne	$r5,$r0,8(0x8) # 119c <printint.constprop.0+0x78>
    1198:	002a0007 	break	0x7
    119c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a0:	002115cd 	div.wu	$r13,$r14,$r5
    11a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ac <printint.constprop.0+0x88>
    11a8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11ac:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b0:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11b4:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1358 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11b8:	002195af 	mod.wu	$r15,$r13,$r5
    11bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c4 <printint.constprop.0+0xa0>
    11c0:	002a0007 	break	0x7
    11c4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11c8:	002115ae 	div.wu	$r14,$r13,$r5
    11cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d4 <printint.constprop.0+0xb0>
    11d0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11d8:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11dc:	680189a5 	bltu	$r13,$r5,392(0x188) # 1364 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11e0:	002195cf 	mod.wu	$r15,$r14,$r5
    11e4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ec <printint.constprop.0+0xc8>
    11e8:	002a0007 	break	0x7
    11ec:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f0:	002115cd 	div.wu	$r13,$r14,$r5
    11f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11fc <printint.constprop.0+0xd8>
    11f8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11fc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1200:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1204:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1370 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1208:	002195af 	mod.wu	$r15,$r13,$r5
    120c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1214 <printint.constprop.0+0xf0>
    1210:	002a0007 	break	0x7
    1214:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1218:	002115ae 	div.wu	$r14,$r13,$r5
    121c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1224 <printint.constprop.0+0x100>
    1220:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1224:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1228:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    122c:	680115a5 	bltu	$r13,$r5,276(0x114) # 1340 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1230:	002195cf 	mod.wu	$r15,$r14,$r5
    1234:	5c0008a0 	bne	$r5,$r0,8(0x8) # 123c <printint.constprop.0+0x118>
    1238:	002a0007 	break	0x7
    123c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1240:	002115cd 	div.wu	$r13,$r14,$r5
    1244:	5c0008a0 	bne	$r5,$r0,8(0x8) # 124c <printint.constprop.0+0x128>
    1248:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    124c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1250:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1254:	680131c5 	bltu	$r14,$r5,304(0x130) # 1384 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1258:	002195af 	mod.wu	$r15,$r13,$r5
    125c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1264 <printint.constprop.0+0x140>
    1260:	002a0007 	break	0x7
    1264:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1268:	002115ae 	div.wu	$r14,$r13,$r5
    126c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1274 <printint.constprop.0+0x150>
    1270:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1274:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1278:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    127c:	680115a5 	bltu	$r13,$r5,276(0x114) # 1390 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1280:	002195cf 	mod.wu	$r15,$r14,$r5
    1284:	5c0008a0 	bne	$r5,$r0,8(0x8) # 128c <printint.constprop.0+0x168>
    1288:	002a0007 	break	0x7
    128c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1290:	002115cd 	div.wu	$r13,$r14,$r5
    1294:	5c0008a0 	bne	$r5,$r0,8(0x8) # 129c <printint.constprop.0+0x178>
    1298:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    129c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12a0:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12a4:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 139c <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12a8:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12ac:	3820358d 	ldx.bu	$r13,$r12,$r13
    12b0:	02801805 	addi.w	$r5,$r0,6(0x6)
    12b4:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12b8:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12bc:	64001880 	bge	$r4,$r0,24(0x18) # 12d4 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12c0:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12c4:	0010b1ad 	add.d	$r13,$r13,$r12
    12c8:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12cc:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12d0:	00150185 	move	$r5,$r12
    write(f, s, l);
    12d4:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12d8:	02804006 	addi.w	$r6,$r0,16(0x10)
    12dc:	001114c6 	sub.w	$r6,$r6,$r5
    12e0:	02800404 	addi.w	$r4,$r0,1(0x1)
    12e4:	00109585 	add.d	$r5,$r12,$r5
    12e8:	540f5000 	bl	3920(0xf50) # 2238 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12ec:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12f0:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12f4:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12f8:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12fc:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1300:	02cdf18c 	addi.d	$r12,$r12,892(0x37c)
    1304:	002195cf 	mod.wu	$r15,$r14,$r5
    1308:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1310 <printint.constprop.0+0x1ec>
    130c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1310:	002115cd 	div.wu	$r13,$r14,$r5
    1314:	5c0008a0 	bne	$r5,$r0,8(0x8) # 131c <printint.constprop.0+0x1f8>
    1318:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    131c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1320:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1324:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1328:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    132c:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1168 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1330:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1334:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1338:	02803805 	addi.w	$r5,$r0,14(0xe)
    133c:	53ff9bff 	b	-104(0xfffff98) # 12d4 <printint.constprop.0+0x1b0>
    1340:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1344:	02802805 	addi.w	$r5,$r0,10(0xa)
    1348:	53ff77ff 	b	-140(0xfffff74) # 12bc <printint.constprop.0+0x198>
    134c:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1350:	02803805 	addi.w	$r5,$r0,14(0xe)
    1354:	53ff6bff 	b	-152(0xfffff68) # 12bc <printint.constprop.0+0x198>
    1358:	0280300c 	addi.w	$r12,$r0,12(0xc)
    135c:	02803405 	addi.w	$r5,$r0,13(0xd)
    1360:	53ff5fff 	b	-164(0xfffff5c) # 12bc <printint.constprop.0+0x198>
    1364:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1368:	02803005 	addi.w	$r5,$r0,12(0xc)
    136c:	53ff53ff 	b	-176(0xfffff50) # 12bc <printint.constprop.0+0x198>
    1370:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1374:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1378:	53ff47ff 	b	-188(0xfffff44) # 12bc <printint.constprop.0+0x198>
    i = 15;
    137c:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1380:	53ff57ff 	b	-172(0xfffff54) # 12d4 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1384:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1388:	02802405 	addi.w	$r5,$r0,9(0x9)
    138c:	53ff33ff 	b	-208(0xfffff30) # 12bc <printint.constprop.0+0x198>
    1390:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1394:	02802005 	addi.w	$r5,$r0,8(0x8)
    1398:	53ff27ff 	b	-220(0xfffff24) # 12bc <printint.constprop.0+0x198>
    139c:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13a0:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13a4:	53ff1bff 	b	-232(0xfffff18) # 12bc <printint.constprop.0+0x198>

00000000000013a8 <getchar>:
{
    13a8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13ac:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13b0:	02800406 	addi.w	$r6,$r0,1(0x1)
    13b4:	00150004 	move	$r4,$r0
{
    13b8:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13bc:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13c0:	540e6c00 	bl	3692(0xe6c) # 222c <read>
}
    13c4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13c8:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13cc:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13d0:	4c000020 	jirl	$r0,$r1,0

00000000000013d4 <putchar>:
{
    13d4:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13d8:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13dc:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13e0:	02800406 	addi.w	$r6,$r0,1(0x1)
    13e4:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13e8:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13ec:	540e4c00 	bl	3660(0xe4c) # 2238 <write>
}
    13f0:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13f4:	00408084 	slli.w	$r4,$r4,0x0
}
    13f8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13fc:	4c000020 	jirl	$r0,$r1,0

0000000000001400 <puts>:
{
    1400:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1404:	29c02061 	st.d	$r1,$r3,8(0x8)
    1408:	27000077 	stptr.d	$r23,$r3,0
    140c:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1410:	5406d400 	bl	1748(0x6d4) # 1ae4 <strlen>
    1414:	00150086 	move	$r6,$r4
    1418:	001502e5 	move	$r5,$r23
    141c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1420:	540e1800 	bl	3608(0xe18) # 2238 <write>
}
    1424:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1428:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    142c:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1430:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1434:	4c000020 	jirl	$r0,$r1,0

0000000000001438 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1438:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    143c:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1440:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1444:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1448:	29c14079 	st.d	$r25,$r3,80(0x50)
    144c:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1450:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1454:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1458:	29c18077 	st.d	$r23,$r3,96(0x60)
    145c:	29c16078 	st.d	$r24,$r3,88(0x58)
    1460:	0015009b 	move	$r27,$r4
    1464:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1468:	29c20066 	st.d	$r6,$r3,128(0x80)
    146c:	29c22067 	st.d	$r7,$r3,136(0x88)
    1470:	29c24068 	st.d	$r8,$r3,144(0x90)
    1474:	29c26069 	st.d	$r9,$r3,152(0x98)
    1478:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    147c:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1480:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1484:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1488:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    148c:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1490:	02c7b39c 	addi.d	$r28,$r28,492(0x1ec)
        if (!*s)
    1494:	2800036c 	ld.b	$r12,$r27,0
    1498:	40008980 	beqz	$r12,136(0x88) # 1520 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    149c:	58027d99 	beq	$r12,$r25,636(0x27c) # 1718 <printf+0x2e0>
    14a0:	00150366 	move	$r6,$r27
    14a4:	50000800 	b	8(0x8) # 14ac <printf+0x74>
    14a8:	58009d99 	beq	$r12,$r25,156(0x9c) # 1544 <printf+0x10c>
    14ac:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14b0:	280000cc 	ld.b	$r12,$r6,0
    14b4:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14a8 <printf+0x70>
    14b8:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14bc:	0011ecd7 	sub.d	$r23,$r6,$r27
    14c0:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14c4:	001502e6 	move	$r6,$r23
    14c8:	00150365 	move	$r5,$r27
    14cc:	02800404 	addi.w	$r4,$r0,1(0x1)
    14d0:	540d6800 	bl	3432(0xd68) # 2238 <write>
        out(f, a, l);
        if (l)
    14d4:	4400b6e0 	bnez	$r23,180(0xb4) # 1588 <printf+0x150>
            continue;
        if (s[1] == 0)
    14d8:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14dc:	40004580 	beqz	$r12,68(0x44) # 1520 <printf+0xe8>
            break;
        switch (s[1])
    14e0:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14e4:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15b8 <printf+0x180>
    14e8:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1590 <printf+0x158>
    14ec:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14f0:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16e0 <printf+0x2a8>
    14f4:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14f8:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16a8 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14fc:	2600006c 	ldptr.d	$r12,$r3,0
    1500:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1504:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1508:	24000184 	ldptr.w	$r4,$r12,0
    150c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1510:	2700006c 	stptr.d	$r12,$r3,0
    1514:	57fc13ff 	bl	-1008(0xffffc10) # 1124 <printint.constprop.0>
        if (!*s)
    1518:	2800036c 	ld.b	$r12,$r27,0
    151c:	47ff819f 	bnez	$r12,-128(0x7fff80) # 149c <printf+0x64>
    }
    va_end(ap);
}
    1520:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1524:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1528:	28c16078 	ld.d	$r24,$r3,88(0x58)
    152c:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1530:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1534:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1538:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    153c:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1540:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1544:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1548:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14b8 <printf+0x80>
    154c:	001500d8 	move	$r24,$r6
    1550:	50000c00 	b	12(0xc) # 155c <printf+0x124>
    1554:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1558:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14bc <printf+0x84>
    155c:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1560:	2800030c 	ld.b	$r12,$r24,0
    1564:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1568:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1554 <printf+0x11c>
        l = z - a;
    156c:	0011ecd7 	sub.d	$r23,$r6,$r27
    1570:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1574:	001502e6 	move	$r6,$r23
    1578:	00150365 	move	$r5,$r27
    157c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1580:	540cb800 	bl	3256(0xcb8) # 2238 <write>
        if (l)
    1584:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14d8 <printf+0xa0>
    1588:	0015031b 	move	$r27,$r24
    158c:	53ff0bff 	b	-248(0xfffff08) # 1494 <printf+0x5c>
        switch (s[1])
    1590:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1594:	5c01158d 	bne	$r12,$r13,276(0x114) # 16a8 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1598:	2600006c 	ldptr.d	$r12,$r3,0
    159c:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15a0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15a4:	24000184 	ldptr.w	$r4,$r12,0
    15a8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15ac:	2700006c 	stptr.d	$r12,$r3,0
    15b0:	57fb77ff 	bl	-1164(0xffffb74) # 1124 <printint.constprop.0>
        s += 2;
    15b4:	53ff67ff 	b	-156(0xfffff64) # 1518 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15b8:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15bc:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15c0:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15c4:	260001ac 	ldptr.d	$r12,$r13,0
    15c8:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15cc:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15d0:	0045f18a 	srli.d	$r10,$r12,0x3c
    15d4:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15d8:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15dc:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15e0:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15e4:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15e8:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15ec:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15f0:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15f4:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15f8:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15fc:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1600:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1604:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1608:	38202b8b 	ldx.bu	$r11,$r28,$r10
    160c:	3820278a 	ldx.bu	$r10,$r28,$r9
    1610:	38202389 	ldx.bu	$r9,$r28,$r8
    1614:	38201f88 	ldx.bu	$r8,$r28,$r7
    1618:	38201787 	ldx.bu	$r7,$r28,$r5
    161c:	38201385 	ldx.bu	$r5,$r28,$r4
    1620:	38205384 	ldx.bu	$r4,$r28,$r20
    1624:	38204f94 	ldx.bu	$r20,$r28,$r19
    1628:	38204b93 	ldx.bu	$r19,$r28,$r18
    162c:	38204792 	ldx.bu	$r18,$r28,$r17
    1630:	38204391 	ldx.bu	$r17,$r28,$r16
    1634:	38203f90 	ldx.bu	$r16,$r28,$r15
    1638:	38203b8f 	ldx.bu	$r15,$r28,$r14
    163c:	3820378e 	ldx.bu	$r14,$r28,$r13
    1640:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1644:	03403d8c 	andi	$r12,$r12,0xf
    1648:	2900286b 	st.b	$r11,$r3,10(0xa)
    164c:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1650:	29003069 	st.b	$r9,$r3,12(0xc)
    1654:	29003468 	st.b	$r8,$r3,13(0xd)
    1658:	29003867 	st.b	$r7,$r3,14(0xe)
    165c:	29003c65 	st.b	$r5,$r3,15(0xf)
    1660:	29004064 	st.b	$r4,$r3,16(0x10)
    1664:	29004474 	st.b	$r20,$r3,17(0x11)
    1668:	29004873 	st.b	$r19,$r3,18(0x12)
    166c:	29004c72 	st.b	$r18,$r3,19(0x13)
    1670:	29005071 	st.b	$r17,$r3,20(0x14)
    1674:	29005470 	st.b	$r16,$r3,21(0x15)
    1678:	2900586f 	st.b	$r15,$r3,22(0x16)
    167c:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1680:	3820378d 	ldx.bu	$r13,$r28,$r13
    1684:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1688:	02c02065 	addi.d	$r5,$r3,8(0x8)
    168c:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1690:	2900606d 	st.b	$r13,$r3,24(0x18)
    1694:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1698:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    169c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16a0:	540b9800 	bl	2968(0xb98) # 2238 <write>
        s += 2;
    16a4:	53fe77ff 	b	-396(0xffffe74) # 1518 <printf+0xe0>
    char byte = c;
    16a8:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16ac:	02800406 	addi.w	$r6,$r0,1(0x1)
    16b0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16b8:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16bc:	540b7c00 	bl	2940(0xb7c) # 2238 <write>
    char byte = c;
    16c0:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16c4:	02800406 	addi.w	$r6,$r0,1(0x1)
    16c8:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16cc:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16d0:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16d4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16d8:	540b6000 	bl	2912(0xb60) # 2238 <write>
        s += 2;
    16dc:	53fe3fff 	b	-452(0xffffe3c) # 1518 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16e0:	2600006c 	ldptr.d	$r12,$r3,0
    16e4:	26000197 	ldptr.d	$r23,$r12,0
    16e8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16ec:	2700006c 	stptr.d	$r12,$r3,0
    16f0:	40004ee0 	beqz	$r23,76(0x4c) # 173c <printf+0x304>
            l = strnlen(a, 200);
    16f4:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16f8:	001502e4 	move	$r4,$r23
    16fc:	5405d000 	bl	1488(0x5d0) # 1ccc <strnlen>
    1700:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1704:	001502e5 	move	$r5,$r23
    1708:	02800404 	addi.w	$r4,$r0,1(0x1)
    170c:	540b2c00 	bl	2860(0xb2c) # 2238 <write>
        s += 2;
    1710:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1714:	53fe07ff 	b	-508(0xffffe04) # 1518 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1718:	2800076c 	ld.b	$r12,$r27,1(0x1)
    171c:	00150366 	move	$r6,$r27
    1720:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 154c <printf+0x114>
    write(f, s, l);
    1724:	00150006 	move	$r6,$r0
    1728:	00150365 	move	$r5,$r27
    172c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1730:	540b0800 	bl	2824(0xb08) # 2238 <write>
    1734:	00150378 	move	$r24,$r27
    1738:	53fda3ff 	b	-608(0xffffda0) # 14d8 <printf+0xa0>
                a = "(null)";
    173c:	1c000037 	pcaddu12i	$r23,1(0x1)
    1740:	02fc92f7 	addi.d	$r23,$r23,-220(0xf24)
    1744:	53ffb3ff 	b	-80(0xfffffb0) # 16f4 <printf+0x2bc>

0000000000001748 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1748:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    174c:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1750:	57fcb3ff 	bl	-848(0xffffcb0) # 1400 <puts>
    exit(-100);
}
    1754:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1758:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    175c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1760:	500b4c00 	b	2892(0xb4c) # 22ac <exit>

0000000000001764 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1764:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1768:	5800108c 	beq	$r4,$r12,16(0x10) # 1778 <isspace+0x14>
    176c:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1770:	02401484 	sltui	$r4,$r4,5(0x5)
    1774:	4c000020 	jirl	$r0,$r1,0
    1778:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    177c:	4c000020 	jirl	$r0,$r1,0

0000000000001780 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1780:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1784:	02402884 	sltui	$r4,$r4,10(0xa)
    1788:	4c000020 	jirl	$r0,$r1,0

000000000000178c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    178c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1790:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1794:	2800008d 	ld.b	$r13,$r4,0
    1798:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    179c:	580061ae 	beq	$r13,$r14,96(0x60) # 17fc <atoi+0x70>
    17a0:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17fc <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17a4:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17a8:	580065ac 	beq	$r13,$r12,100(0x64) # 180c <atoi+0x80>
    17ac:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17b0:	58007dac 	beq	$r13,$r12,124(0x7c) # 182c <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17b4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17b8:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17bc:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17c0:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17c4:	680061cf 	bltu	$r14,$r15,96(0x60) # 1824 <atoi+0x98>
    int n = 0, neg = 0;
    17c8:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17cc:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17d0:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17d4:	001c126f 	mul.w	$r15,$r19,$r4
    17d8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17dc:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17e0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17e4:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17e8:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17ec:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17f0:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17d4 <atoi+0x48>
    return neg ? n : -n;
    17f4:	40001280 	beqz	$r20,16(0x10) # 1804 <atoi+0x78>
}
    17f8:	4c000020 	jirl	$r0,$r1,0
        s++;
    17fc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1800:	53ff97ff 	b	-108(0xfffff94) # 1794 <atoi+0x8>
    1804:	00113e04 	sub.w	$r4,$r16,$r15
    1808:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    180c:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1810:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1814:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1818:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    181c:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1820:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17c8 <atoi+0x3c>
    1824:	00150004 	move	$r4,$r0
}
    1828:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    182c:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1830:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1834:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1838:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    183c:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1824 <atoi+0x98>
        neg = 1;
    1840:	02800414 	addi.w	$r20,$r0,1(0x1)
    1844:	53ff87ff 	b	-124(0xfffff84) # 17c8 <atoi+0x3c>

0000000000001848 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1848:	400198c0 	beqz	$r6,408(0x198) # 19e0 <memset+0x198>
    184c:	0011900c 	sub.d	$r12,$r0,$r4
    1850:	03401d8c 	andi	$r12,$r12,0x7
    1854:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1858:	02402dae 	sltui	$r14,$r13,11(0xb)
    185c:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1860:	0013b9ad 	masknez	$r13,$r13,$r14
    1864:	001339ee 	maskeqz	$r14,$r15,$r14
    1868:	001539ad 	or	$r13,$r13,$r14
    186c:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1870:	00005ca5 	ext.w.b	$r5,$r5
    1874:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a04 <memset+0x1bc>
    1878:	40018180 	beqz	$r12,384(0x180) # 19f8 <memset+0x1b0>
    187c:	29000085 	st.b	$r5,$r4,0
    1880:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1884:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1888:	5801698d 	beq	$r12,$r13,360(0x168) # 19f0 <memset+0x1a8>
    188c:	29000485 	st.b	$r5,$r4,1(0x1)
    1890:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1894:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1898:	5801798d 	beq	$r12,$r13,376(0x178) # 1a10 <memset+0x1c8>
    189c:	29000885 	st.b	$r5,$r4,2(0x2)
    18a0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18a4:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18a8:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19e4 <memset+0x19c>
    18ac:	29000c85 	st.b	$r5,$r4,3(0x3)
    18b0:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18b4:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18b8:	5801618d 	beq	$r12,$r13,352(0x160) # 1a18 <memset+0x1d0>
    18bc:	29001085 	st.b	$r5,$r4,4(0x4)
    18c0:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18c4:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18c8:	5801598d 	beq	$r12,$r13,344(0x158) # 1a20 <memset+0x1d8>
    18cc:	29001485 	st.b	$r5,$r4,5(0x5)
    18d0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18d4:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18d8:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a28 <memset+0x1e0>
    18dc:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18e0:	29001885 	st.b	$r5,$r4,6(0x6)
    18e4:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18e8:	0015000d 	move	$r13,$r0
    18ec:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18f0:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18f4:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18f8:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18fc:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1900:	0011b0d0 	sub.d	$r16,$r6,$r12
    1904:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1908:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    190c:	0010b08c 	add.d	$r12,$r4,$r12
    1910:	00450e0f 	srli.d	$r15,$r16,0x3
    1914:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1918:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    191c:	2700018d 	stptr.d	$r13,$r12,0
    1920:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1924:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 191c <memset+0xd4>
    1928:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    192c:	0014be0f 	and	$r15,$r16,$r15
    1930:	004081ed 	slli.w	$r13,$r15,0x0
    1934:	0010bdcc 	add.d	$r12,$r14,$r15
    1938:	001045ad 	add.w	$r13,$r13,$r17
    193c:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19ec <memset+0x1a4>
    1940:	29000185 	st.b	$r5,$r12,0
    1944:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1948:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19e0 <memset+0x198>
    194c:	29000585 	st.b	$r5,$r12,1(0x1)
    1950:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1954:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19e0 <memset+0x198>
    1958:	29000985 	st.b	$r5,$r12,2(0x2)
    195c:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1960:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19e0 <memset+0x198>
    1964:	29000d85 	st.b	$r5,$r12,3(0x3)
    1968:	028011ae 	addi.w	$r14,$r13,4(0x4)
    196c:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19e0 <memset+0x198>
    1970:	29001185 	st.b	$r5,$r12,4(0x4)
    1974:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1978:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19e0 <memset+0x198>
    197c:	29001585 	st.b	$r5,$r12,5(0x5)
    1980:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1984:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19e0 <memset+0x198>
    1988:	29001985 	st.b	$r5,$r12,6(0x6)
    198c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1990:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19e0 <memset+0x198>
    1994:	29001d85 	st.b	$r5,$r12,7(0x7)
    1998:	028021ae 	addi.w	$r14,$r13,8(0x8)
    199c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19e0 <memset+0x198>
    19a0:	29002185 	st.b	$r5,$r12,8(0x8)
    19a4:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19a8:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19e0 <memset+0x198>
    19ac:	29002585 	st.b	$r5,$r12,9(0x9)
    19b0:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19b4:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19e0 <memset+0x198>
    19b8:	29002985 	st.b	$r5,$r12,10(0xa)
    19bc:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19c0:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19e0 <memset+0x198>
    19c4:	29002d85 	st.b	$r5,$r12,11(0xb)
    19c8:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19cc:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19e0 <memset+0x198>
    19d0:	29003185 	st.b	$r5,$r12,12(0xc)
    19d4:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19d8:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19e0 <memset+0x198>
    19dc:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19e0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19e4:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19e8:	53ff03ff 	b	-256(0xfffff00) # 18e8 <memset+0xa0>
    19ec:	4c000020 	jirl	$r0,$r1,0
    19f0:	02800411 	addi.w	$r17,$r0,1(0x1)
    19f4:	53fef7ff 	b	-268(0xffffef4) # 18e8 <memset+0xa0>
    19f8:	0015008e 	move	$r14,$r4
    19fc:	00150011 	move	$r17,$r0
    1a00:	53feebff 	b	-280(0xffffee8) # 18e8 <memset+0xa0>
    1a04:	0015008c 	move	$r12,$r4
    1a08:	0015000d 	move	$r13,$r0
    1a0c:	53ff37ff 	b	-204(0xfffff34) # 1940 <memset+0xf8>
    1a10:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a14:	53fed7ff 	b	-300(0xffffed4) # 18e8 <memset+0xa0>
    1a18:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a1c:	53fecfff 	b	-308(0xffffecc) # 18e8 <memset+0xa0>
    1a20:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a24:	53fec7ff 	b	-316(0xffffec4) # 18e8 <memset+0xa0>
    1a28:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a2c:	53febfff 	b	-324(0xffffebc) # 18e8 <memset+0xa0>

0000000000001a30 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a30:	2800008c 	ld.b	$r12,$r4,0
    1a34:	280000ae 	ld.b	$r14,$r5,0
    1a38:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a6c <strcmp+0x3c>
    1a3c:	40003980 	beqz	$r12,56(0x38) # 1a74 <strcmp+0x44>
    1a40:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a44:	50000800 	b	8(0x8) # 1a4c <strcmp+0x1c>
    1a48:	400019a0 	beqz	$r13,24(0x18) # 1a60 <strcmp+0x30>
    1a4c:	3800308d 	ldx.b	$r13,$r4,$r12
    1a50:	380030ae 	ldx.b	$r14,$r5,$r12
    1a54:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a58:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a48 <strcmp+0x18>
    1a5c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a60:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a64:	001111a4 	sub.w	$r4,$r13,$r4
    1a68:	4c000020 	jirl	$r0,$r1,0
    1a6c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a70:	53fff3ff 	b	-16(0xffffff0) # 1a60 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a74:	0015000d 	move	$r13,$r0
    1a78:	53ffebff 	b	-24(0xfffffe8) # 1a60 <strcmp+0x30>

0000000000001a7c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a7c:	400054c0 	beqz	$r6,84(0x54) # 1ad0 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a80:	2a00008d 	ld.bu	$r13,$r4,0
    1a84:	2a0000ae 	ld.bu	$r14,$r5,0
    1a88:	40003da0 	beqz	$r13,60(0x3c) # 1ac4 <strncmp+0x48>
    1a8c:	40003dc0 	beqz	$r14,60(0x3c) # 1ac8 <strncmp+0x4c>
    if (!n--)
    1a90:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a94:	400034c0 	beqz	$r6,52(0x34) # 1ac8 <strncmp+0x4c>
    1a98:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a9c:	580019ae 	beq	$r13,$r14,24(0x18) # 1ab4 <strncmp+0x38>
    1aa0:	50002800 	b	40(0x28) # 1ac8 <strncmp+0x4c>
    1aa4:	400035c0 	beqz	$r14,52(0x34) # 1ad8 <strncmp+0x5c>
    1aa8:	580020cc 	beq	$r6,$r12,32(0x20) # 1ac8 <strncmp+0x4c>
    1aac:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ab0:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ad8 <strncmp+0x5c>
    1ab4:	3820308d 	ldx.bu	$r13,$r4,$r12
    1ab8:	382030ae 	ldx.bu	$r14,$r5,$r12
    1abc:	001501af 	move	$r15,$r13
    1ac0:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1aa4 <strncmp+0x28>
    1ac4:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ac8:	001139a4 	sub.w	$r4,$r13,$r14
    1acc:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ad0:	00150004 	move	$r4,$r0
}
    1ad4:	4c000020 	jirl	$r0,$r1,0
    1ad8:	001501ed 	move	$r13,$r15
    return *l - *r;
    1adc:	001139a4 	sub.w	$r4,$r13,$r14
    1ae0:	4c000020 	jirl	$r0,$r1,0

0000000000001ae4 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ae4:	03401c8c 	andi	$r12,$r4,0x7
    1ae8:	4000b180 	beqz	$r12,176(0xb0) # 1b98 <strlen+0xb4>
        if (!*s)
    1aec:	2800008c 	ld.b	$r12,$r4,0
    1af0:	4000b180 	beqz	$r12,176(0xb0) # 1ba0 <strlen+0xbc>
    1af4:	0015008c 	move	$r12,$r4
    1af8:	50000c00 	b	12(0xc) # 1b04 <strlen+0x20>
    1afc:	2800018d 	ld.b	$r13,$r12,0
    1b00:	400091a0 	beqz	$r13,144(0x90) # 1b90 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b04:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b08:	03401d8d 	andi	$r13,$r12,0x7
    1b0c:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1afc <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b10:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b14:	2600018f 	ldptr.d	$r15,$r12,0
    1b18:	03bbfdad 	ori	$r13,$r13,0xeff
    1b1c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b20:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b24:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b28:	038201ce 	ori	$r14,$r14,0x80
    1b2c:	0010b5ed 	add.d	$r13,$r15,$r13
    1b30:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b34:	0016bdad 	andn	$r13,$r13,$r15
    1b38:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b3c:	0014b9ae 	and	$r14,$r13,$r14
    1b40:	440049c0 	bnez	$r14,72(0x48) # 1b88 <strlen+0xa4>
    1b44:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b48:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b4c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b50:	2600018e 	ldptr.d	$r14,$r12,0
    1b54:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b58:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b5c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b60:	0382020f 	ori	$r15,$r16,0x80
    1b64:	0010b5cd 	add.d	$r13,$r14,$r13
    1b68:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b6c:	0016b9ad 	andn	$r13,$r13,$r14
    1b70:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b74:	0014bdad 	and	$r13,$r13,$r15
    1b78:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b4c <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b7c:	2800018d 	ld.b	$r13,$r12,0
    1b80:	400011a0 	beqz	$r13,16(0x10) # 1b90 <strlen+0xac>
    1b84:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b88:	2800018d 	ld.b	$r13,$r12,0
    1b8c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b84 <strlen+0xa0>
        ;
    return s - a;
    1b90:	00119184 	sub.d	$r4,$r12,$r4
}
    1b94:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b98:	0015008c 	move	$r12,$r4
    1b9c:	53ff77ff 	b	-140(0xfffff74) # 1b10 <strlen+0x2c>
        if (!*s)
    1ba0:	00150004 	move	$r4,$r0
            return s - a;
    1ba4:	4c000020 	jirl	$r0,$r1,0

0000000000001ba8 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ba8:	03401c8c 	andi	$r12,$r4,0x7
    1bac:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bb0:	44002180 	bnez	$r12,32(0x20) # 1bd0 <memchr+0x28>
    1bb4:	50002c00 	b	44(0x2c) # 1be0 <memchr+0x38>
    1bb8:	2a00008c 	ld.bu	$r12,$r4,0
    1bbc:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cb4 <memchr+0x10c>
    1bc0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bc4:	03401c8c 	andi	$r12,$r4,0x7
    1bc8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bcc:	40001580 	beqz	$r12,20(0x14) # 1be0 <memchr+0x38>
    1bd0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bb8 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bd4:	0015000d 	move	$r13,$r0
}
    1bd8:	001501a4 	move	$r4,$r13
    1bdc:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1be0:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1be4:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bd8 <memchr+0x30>
    1be8:	2a00008c 	ld.bu	$r12,$r4,0
    1bec:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cb4 <memchr+0x10c>
        size_t k = ONES * c;
    1bf0:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bf4:	0384058c 	ori	$r12,$r12,0x101
    1bf8:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bfc:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c00:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c04:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c08:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cc4 <memchr+0x11c>
    1c0c:	2600008d 	ldptr.d	$r13,$r4,0
    1c10:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c14:	038201ce 	ori	$r14,$r14,0x80
    1c18:	0015b60d 	xor	$r13,$r16,$r13
    1c1c:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c20:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c24:	0016b58c 	andn	$r12,$r12,$r13
    1c28:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c2c:	0014b98c 	and	$r12,$r12,$r14
    1c30:	44009580 	bnez	$r12,148(0x94) # 1cc4 <memchr+0x11c>
    1c34:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c38:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c3c:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c40:	50002000 	b	32(0x20) # 1c60 <memchr+0xb8>
    1c44:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c48:	0015b20c 	xor	$r12,$r16,$r12
    1c4c:	0010b98e 	add.d	$r14,$r12,$r14
    1c50:	0016b1cc 	andn	$r12,$r14,$r12
    1c54:	0014bd8c 	and	$r12,$r12,$r15
    1c58:	44006580 	bnez	$r12,100(0x64) # 1cbc <memchr+0x114>
    1c5c:	001501a4 	move	$r4,$r13
    1c60:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c64:	0382022f 	ori	$r15,$r17,0x80
    1c68:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c6c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c70:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c74:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c78:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c7c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c80:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c44 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c84:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bd4 <memchr+0x2c>
    1c88:	2a0001ac 	ld.bu	$r12,$r13,0
    1c8c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bd8 <memchr+0x30>
    1c90:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c94:	001099a6 	add.d	$r6,$r13,$r6
    1c98:	50001000 	b	16(0x10) # 1ca8 <memchr+0x100>
    1c9c:	2a00018e 	ld.bu	$r14,$r12,0
    1ca0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ca4:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bd8 <memchr+0x30>
    1ca8:	0015018d 	move	$r13,$r12
    1cac:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c9c <memchr+0xf4>
    1cb0:	53ff27ff 	b	-220(0xfffff24) # 1bd4 <memchr+0x2c>
    1cb4:	0015008d 	move	$r13,$r4
    1cb8:	53ffd3ff 	b	-48(0xfffffd0) # 1c88 <memchr+0xe0>
    1cbc:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cc0:	53ffcfff 	b	-52(0xfffffcc) # 1c8c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cc4:	0015008d 	move	$r13,$r4
    1cc8:	53ffcbff 	b	-56(0xfffffc8) # 1c90 <memchr+0xe8>

0000000000001ccc <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ccc:	03401c8c 	andi	$r12,$r4,0x7
    1cd0:	40011980 	beqz	$r12,280(0x118) # 1de8 <strnlen+0x11c>
    1cd4:	4000f4a0 	beqz	$r5,244(0xf4) # 1dc8 <strnlen+0xfc>
    1cd8:	2a00008c 	ld.bu	$r12,$r4,0
    1cdc:	4000f580 	beqz	$r12,244(0xf4) # 1dd0 <strnlen+0x104>
    1ce0:	001500ac 	move	$r12,$r5
    1ce4:	0015008d 	move	$r13,$r4
    1ce8:	50001000 	b	16(0x10) # 1cf8 <strnlen+0x2c>
    1cec:	4000dd80 	beqz	$r12,220(0xdc) # 1dc8 <strnlen+0xfc>
    1cf0:	2a0001ae 	ld.bu	$r14,$r13,0
    1cf4:	4000e5c0 	beqz	$r14,228(0xe4) # 1dd8 <strnlen+0x10c>
    1cf8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cfc:	03401dae 	andi	$r14,$r13,0x7
    1d00:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d04:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cec <strnlen+0x20>
    if (n && *s != c)
    1d08:	4000c180 	beqz	$r12,192(0xc0) # 1dc8 <strnlen+0xfc>
    1d0c:	2a0001ae 	ld.bu	$r14,$r13,0
    1d10:	4000c9c0 	beqz	$r14,200(0xc8) # 1dd8 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d14:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d18:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1df4 <strnlen+0x128>
    1d1c:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d20:	260001b0 	ldptr.d	$r16,$r13,0
    1d24:	03bbfdce 	ori	$r14,$r14,0xeff
    1d28:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d2c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d30:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d34:	038201ef 	ori	$r15,$r15,0x80
    1d38:	0010ba0e 	add.d	$r14,$r16,$r14
    1d3c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d40:	0016c1ce 	andn	$r14,$r14,$r16
    1d44:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d48:	0014bdcf 	and	$r15,$r14,$r15
    1d4c:	4400a9e0 	bnez	$r15,168(0xa8) # 1df4 <strnlen+0x128>
    1d50:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d54:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d58:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d5c:	50001c00 	b	28(0x1c) # 1d78 <strnlen+0xac>
    1d60:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d64:	0010b9ee 	add.d	$r14,$r15,$r14
    1d68:	0016bdce 	andn	$r14,$r14,$r15
    1d6c:	0014c1ce 	and	$r14,$r14,$r16
    1d70:	440071c0 	bnez	$r14,112(0x70) # 1de0 <strnlen+0x114>
    1d74:	0015022d 	move	$r13,$r17
    1d78:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d7c:	03820250 	ori	$r16,$r18,0x80
    1d80:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d84:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d88:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d8c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d90:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d94:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d98:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d60 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d9c:	40002d80 	beqz	$r12,44(0x2c) # 1dc8 <strnlen+0xfc>
    1da0:	2a00022d 	ld.bu	$r13,$r17,0
    1da4:	400021a0 	beqz	$r13,32(0x20) # 1dc4 <strnlen+0xf8>
    1da8:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1dac:	0010b22c 	add.d	$r12,$r17,$r12
    1db0:	001501b1 	move	$r17,$r13
    1db4:	5800158d 	beq	$r12,$r13,20(0x14) # 1dc8 <strnlen+0xfc>
    1db8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dbc:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1dc0:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1db0 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dc4:	00119225 	sub.d	$r5,$r17,$r4
}
    1dc8:	001500a4 	move	$r4,$r5
    1dcc:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dd0:	001500ac 	move	$r12,$r5
    1dd4:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dd8:	001501b1 	move	$r17,$r13
    1ddc:	53ffc7ff 	b	-60(0xfffffc4) # 1da0 <strnlen+0xd4>
    1de0:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1de4:	53ffc3ff 	b	-64(0xfffffc0) # 1da4 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1de8:	001500ac 	move	$r12,$r5
    1dec:	0015008d 	move	$r13,$r4
    1df0:	53ff1bff 	b	-232(0xfffff18) # 1d08 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1df4:	001501b1 	move	$r17,$r13
    1df8:	53ffb3ff 	b	-80(0xfffffb0) # 1da8 <strnlen+0xdc>

0000000000001dfc <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dfc:	0015948c 	xor	$r12,$r4,$r5
    1e00:	03401d8c 	andi	$r12,$r12,0x7
    1e04:	4400ad80 	bnez	$r12,172(0xac) # 1eb0 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e08:	03401cac 	andi	$r12,$r5,0x7
    1e0c:	40003180 	beqz	$r12,48(0x30) # 1e3c <strcpy+0x40>
            if (!(*d = *s))
    1e10:	280000ac 	ld.b	$r12,$r5,0
    1e14:	2900008c 	st.b	$r12,$r4,0
    1e18:	44001580 	bnez	$r12,20(0x14) # 1e2c <strcpy+0x30>
    1e1c:	5000bc00 	b	188(0xbc) # 1ed8 <strcpy+0xdc>
    1e20:	280000ac 	ld.b	$r12,$r5,0
    1e24:	2900008c 	st.b	$r12,$r4,0
    1e28:	4000a980 	beqz	$r12,168(0xa8) # 1ed0 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e2c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e30:	03401cac 	andi	$r12,$r5,0x7
    1e34:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e38:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e20 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e3c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e40:	260000ae 	ldptr.d	$r14,$r5,0
    1e44:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e48:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e4c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e50:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e54:	038201ad 	ori	$r13,$r13,0x80
    1e58:	0010b1cc 	add.d	$r12,$r14,$r12
    1e5c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e60:	0016b98c 	andn	$r12,$r12,$r14
    1e64:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e68:	0014b58c 	and	$r12,$r12,$r13
    1e6c:	44004580 	bnez	$r12,68(0x44) # 1eb0 <strcpy+0xb4>
    1e70:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e74:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e78:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e7c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e80:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e84:	260000ae 	ldptr.d	$r14,$r5,0
    1e88:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e8c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e90:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e94:	038201ed 	ori	$r13,$r15,0x80
    1e98:	0010b1cc 	add.d	$r12,$r14,$r12
    1e9c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ea0:	0016b98c 	andn	$r12,$r12,$r14
    1ea4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ea8:	0014b58c 	and	$r12,$r12,$r13
    1eac:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e78 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1eb0:	280000ac 	ld.b	$r12,$r5,0
    1eb4:	2900008c 	st.b	$r12,$r4,0
    1eb8:	40001d80 	beqz	$r12,28(0x1c) # 1ed4 <strcpy+0xd8>
    1ebc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ec0:	280000ac 	ld.b	$r12,$r5,0
    1ec4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ec8:	2900008c 	st.b	$r12,$r4,0
    1ecc:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ebc <strcpy+0xc0>
        ;
    return d;
}
    1ed0:	4c000020 	jirl	$r0,$r1,0
    1ed4:	4c000020 	jirl	$r0,$r1,0
    1ed8:	4c000020 	jirl	$r0,$r1,0

0000000000001edc <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1edc:	0015948c 	xor	$r12,$r4,$r5
    1ee0:	03401d8c 	andi	$r12,$r12,0x7
    1ee4:	4400ad80 	bnez	$r12,172(0xac) # 1f90 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ee8:	03401cac 	andi	$r12,$r5,0x7
    1eec:	44010180 	bnez	$r12,256(0x100) # 1fec <strncpy+0x110>
            ;
        if (!n || !*s)
    1ef0:	400100c0 	beqz	$r6,256(0x100) # 1ff0 <strncpy+0x114>
    1ef4:	280000af 	ld.b	$r15,$r5,0
    1ef8:	400105e0 	beqz	$r15,260(0x104) # 1ffc <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1efc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f00:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21d8 <strncpy+0x2fc>
    1f04:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f08:	260000ae 	ldptr.d	$r14,$r5,0
    1f0c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f10:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f14:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f18:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f1c:	038201ad 	ori	$r13,$r13,0x80
    1f20:	0010b1cc 	add.d	$r12,$r14,$r12
    1f24:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f28:	0016b98c 	andn	$r12,$r12,$r14
    1f2c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f30:	0014b58c 	and	$r12,$r12,$r13
    1f34:	4402a580 	bnez	$r12,676(0x2a4) # 21d8 <strncpy+0x2fc>
    1f38:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f3c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f40:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f44:	50001c00 	b	28(0x1c) # 1f60 <strncpy+0x84>
    1f48:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f4c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f50:	0016b98c 	andn	$r12,$r12,$r14
    1f54:	0014b58c 	and	$r12,$r12,$r13
    1f58:	44024580 	bnez	$r12,580(0x244) # 219c <strncpy+0x2c0>
    1f5c:	001501e5 	move	$r5,$r15
    1f60:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f64:	0382020d 	ori	$r13,$r16,0x80
    1f68:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f6c:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f70:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f74:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f78:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f7c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f80:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f84:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f88:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f48 <strncpy+0x6c>
    1f8c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f90:	400060c0 	beqz	$r6,96(0x60) # 1ff0 <strncpy+0x114>
    1f94:	280000ac 	ld.b	$r12,$r5,0
    1f98:	0015008d 	move	$r13,$r4
    1f9c:	2900008c 	st.b	$r12,$r4,0
    1fa0:	44001580 	bnez	$r12,20(0x14) # 1fb4 <strncpy+0xd8>
    1fa4:	50005c00 	b	92(0x5c) # 2000 <strncpy+0x124>
    1fa8:	280000ac 	ld.b	$r12,$r5,0
    1fac:	290001ac 	st.b	$r12,$r13,0
    1fb0:	40005180 	beqz	$r12,80(0x50) # 2000 <strncpy+0x124>
    1fb4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fb8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fbc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fc0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fa8 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fc4:	001501a4 	move	$r4,$r13
    1fc8:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fcc:	280000ac 	ld.b	$r12,$r5,0
    1fd0:	2900008c 	st.b	$r12,$r4,0
    1fd4:	40002980 	beqz	$r12,40(0x28) # 1ffc <strncpy+0x120>
    1fd8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fdc:	03401cac 	andi	$r12,$r5,0x7
    1fe0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fe4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fe8:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ef0 <strncpy+0x14>
    1fec:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fcc <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1ff0:	0015008d 	move	$r13,$r4
}
    1ff4:	001501a4 	move	$r4,$r13
    1ff8:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1ffc:	0015008d 	move	$r13,$r4
    2000:	0011b40c 	sub.d	$r12,$r0,$r13
    2004:	03401d8c 	andi	$r12,$r12,0x7
    2008:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    200c:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2010:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2014:	0013bdce 	masknez	$r14,$r14,$r15
    2018:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    201c:	00133e0f 	maskeqz	$r15,$r16,$r15
    2020:	00153dce 	or	$r14,$r14,$r15
    2024:	024004d0 	sltui	$r16,$r6,1(0x1)
    2028:	00131a31 	maskeqz	$r17,$r17,$r6
    202c:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2030:	001540d0 	or	$r16,$r6,$r16
    2034:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21ac <strncpy+0x2d0>
    2038:	40015980 	beqz	$r12,344(0x158) # 2190 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    203c:	290001a0 	st.b	$r0,$r13,0
    2040:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2044:	5801458f 	beq	$r12,$r15,324(0x144) # 2188 <strncpy+0x2ac>
    2048:	290005a0 	st.b	$r0,$r13,1(0x1)
    204c:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2050:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2054:	5801658f 	beq	$r12,$r15,356(0x164) # 21b8 <strncpy+0x2dc>
    2058:	290009a0 	st.b	$r0,$r13,2(0x2)
    205c:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2060:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2064:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2180 <strncpy+0x2a4>
    2068:	29000da0 	st.b	$r0,$r13,3(0x3)
    206c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2070:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2074:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21c0 <strncpy+0x2e4>
    2078:	290011a0 	st.b	$r0,$r13,4(0x4)
    207c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2080:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2084:	5801458f 	beq	$r12,$r15,324(0x144) # 21c8 <strncpy+0x2ec>
    2088:	290015a0 	st.b	$r0,$r13,5(0x5)
    208c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2090:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2094:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21d0 <strncpy+0x2f4>
    2098:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    209c:	290019a0 	st.b	$r0,$r13,6(0x6)
    20a0:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20a4:	0011b210 	sub.d	$r16,$r16,$r12
    20a8:	00450e11 	srli.d	$r17,$r16,0x3
    20ac:	0010b1ac 	add.d	$r12,$r13,$r12
    20b0:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20b4:	27000180 	stptr.d	$r0,$r12,0
    20b8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20bc:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20b4 <strncpy+0x1d8>
    20c0:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20c4:	0014c611 	and	$r17,$r16,$r17
    20c8:	0040822f 	slli.w	$r15,$r17,0x0
    20cc:	001049ef 	add.w	$r15,$r15,$r18
    20d0:	0010c5cc 	add.d	$r12,$r14,$r17
    20d4:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fc4 <strncpy+0xe8>
    20d8:	29000180 	st.b	$r0,$r12,0
    20dc:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20e0:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fc4 <strncpy+0xe8>
    20e4:	29000580 	st.b	$r0,$r12,1(0x1)
    20e8:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20ec:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fc4 <strncpy+0xe8>
    20f0:	29000980 	st.b	$r0,$r12,2(0x2)
    20f4:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20f8:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fc4 <strncpy+0xe8>
    20fc:	29000d80 	st.b	$r0,$r12,3(0x3)
    2100:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2104:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fc4 <strncpy+0xe8>
    2108:	29001180 	st.b	$r0,$r12,4(0x4)
    210c:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2110:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fc4 <strncpy+0xe8>
    2114:	29001580 	st.b	$r0,$r12,5(0x5)
    2118:	028019ee 	addi.w	$r14,$r15,6(0x6)
    211c:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fc4 <strncpy+0xe8>
    2120:	29001980 	st.b	$r0,$r12,6(0x6)
    2124:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2128:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fc4 <strncpy+0xe8>
    212c:	29001d80 	st.b	$r0,$r12,7(0x7)
    2130:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2134:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fc4 <strncpy+0xe8>
    2138:	29002180 	st.b	$r0,$r12,8(0x8)
    213c:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2140:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fc4 <strncpy+0xe8>
    2144:	29002580 	st.b	$r0,$r12,9(0x9)
    2148:	028029ee 	addi.w	$r14,$r15,10(0xa)
    214c:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fc4 <strncpy+0xe8>
    2150:	29002980 	st.b	$r0,$r12,10(0xa)
    2154:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2158:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fc4 <strncpy+0xe8>
    215c:	29002d80 	st.b	$r0,$r12,11(0xb)
    2160:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2164:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fc4 <strncpy+0xe8>
    2168:	29003180 	st.b	$r0,$r12,12(0xc)
    216c:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2170:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fc4 <strncpy+0xe8>
    2174:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2178:	001501a4 	move	$r4,$r13
    217c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2180:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2184:	53ff23ff 	b	-224(0xfffff20) # 20a4 <strncpy+0x1c8>
    2188:	02800412 	addi.w	$r18,$r0,1(0x1)
    218c:	53ff1bff 	b	-232(0xfffff18) # 20a4 <strncpy+0x1c8>
    2190:	001501ae 	move	$r14,$r13
    2194:	00150012 	move	$r18,$r0
    2198:	53ff0fff 	b	-244(0xfffff0c) # 20a4 <strncpy+0x1c8>
    219c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21a0:	0015008d 	move	$r13,$r4
    21a4:	001501e5 	move	$r5,$r15
    21a8:	53fdf7ff 	b	-524(0xffffdf4) # 1f9c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21ac:	001501ac 	move	$r12,$r13
    21b0:	0015000f 	move	$r15,$r0
    21b4:	53ff27ff 	b	-220(0xfffff24) # 20d8 <strncpy+0x1fc>
    21b8:	02800812 	addi.w	$r18,$r0,2(0x2)
    21bc:	53feebff 	b	-280(0xffffee8) # 20a4 <strncpy+0x1c8>
    21c0:	02801012 	addi.w	$r18,$r0,4(0x4)
    21c4:	53fee3ff 	b	-288(0xffffee0) # 20a4 <strncpy+0x1c8>
    21c8:	02801412 	addi.w	$r18,$r0,5(0x5)
    21cc:	53fedbff 	b	-296(0xffffed8) # 20a4 <strncpy+0x1c8>
    21d0:	02801812 	addi.w	$r18,$r0,6(0x6)
    21d4:	53fed3ff 	b	-304(0xffffed0) # 20a4 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21d8:	2900008f 	st.b	$r15,$r4,0
    21dc:	0015008d 	move	$r13,$r4
    21e0:	53fdd7ff 	b	-556(0xffffdd4) # 1fb4 <strncpy+0xd8>

00000000000021e4 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21e4:	0015008c 	move	$r12,$r4
    21e8:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21ec:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21f0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21f4:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21f8:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21fc:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2200:	00408084 	slli.w	$r4,$r4,0x0
}
    2204:	4c000020 	jirl	$r0,$r1,0

0000000000002208 <openat>:
    register long a7 __asm__("a7") = n;
    2208:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    220c:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2210:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2214:	00408084 	slli.w	$r4,$r4,0x0
}
    2218:	4c000020 	jirl	$r0,$r1,0

000000000000221c <close>:
    register long a7 __asm__("a7") = n;
    221c:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2220:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2224:	00408084 	slli.w	$r4,$r4,0x0
}
    2228:	4c000020 	jirl	$r0,$r1,0

000000000000222c <read>:
    register long a7 __asm__("a7") = n;
    222c:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2230:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2234:	4c000020 	jirl	$r0,$r1,0

0000000000002238 <write>:
    register long a7 __asm__("a7") = n;
    2238:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    223c:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <getpid>:
    register long a7 __asm__("a7") = n;
    2244:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2248:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    224c:	00408084 	slli.w	$r4,$r4,0x0
}
    2250:	4c000020 	jirl	$r0,$r1,0

0000000000002254 <getppid>:
    register long a7 __asm__("a7") = n;
    2254:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2258:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    225c:	00408084 	slli.w	$r4,$r4,0x0
}
    2260:	4c000020 	jirl	$r0,$r1,0

0000000000002264 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2264:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2268:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    226c:	00408084 	slli.w	$r4,$r4,0x0
}
    2270:	4c000020 	jirl	$r0,$r1,0

0000000000002274 <fork>:
    register long a7 __asm__("a7") = n;
    2274:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2278:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    227c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2280:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2284:	00408084 	slli.w	$r4,$r4,0x0
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    228c:	001500c5 	move	$r5,$r6
    if (stack)
    2290:	400008c0 	beqz	$r6,8(0x8) # 2298 <clone+0xc>
	stack += stack_size;
    2294:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2298:	00408106 	slli.w	$r6,$r8,0x0
    229c:	00150009 	move	$r9,$r0
    22a0:	00150008 	move	$r8,$r0
    22a4:	00150007 	move	$r7,$r0
    22a8:	5002c800 	b	712(0x2c8) # 2570 <__clone>

00000000000022ac <exit>:
    register long a7 __asm__("a7") = n;
    22ac:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22b0:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22b4:	4c000020 	jirl	$r0,$r1,0

00000000000022b8 <waitpid>:
    register long a7 __asm__("a7") = n;
    22b8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22bc:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22c0:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <exec>:
    register long a7 __asm__("a7") = n;
    22cc:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22d0:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22d4:	00408084 	slli.w	$r4,$r4,0x0
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <execve>:
    register long a7 __asm__("a7") = n;
    22dc:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22e0:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22e4:	00408084 	slli.w	$r4,$r4,0x0
}
    22e8:	4c000020 	jirl	$r0,$r1,0

00000000000022ec <times>:
    register long a7 __asm__("a7") = n;
    22ec:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22f0:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22f4:	00408084 	slli.w	$r4,$r4,0x0
}
    22f8:	4c000020 	jirl	$r0,$r1,0

00000000000022fc <get_time>:

int64 get_time()
{
    22fc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2300:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2304:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2308:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    230c:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2310:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2314:	44003c80 	bnez	$r4,60(0x3c) # 2350 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2318:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    231c:	039f3c8c 	ori	$r12,$r4,0x7cf
    2320:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2324:	2a40006d 	ld.hu	$r13,$r3,0
    2328:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    232c:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2330:	00450c84 	srli.d	$r4,$r4,0x3
    2334:	001eb084 	mulh.du	$r4,$r4,$r12
    2338:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    233c:	001db1ac 	mul.d	$r12,$r13,$r12
    2340:	00451084 	srli.d	$r4,$r4,0x4
    2344:	00109184 	add.d	$r4,$r12,$r4
}
    2348:	02c04063 	addi.d	$r3,$r3,16(0x10)
    234c:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2350:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2354:	53fff7ff 	b	-12(0xffffff4) # 2348 <get_time+0x4c>

0000000000002358 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2358:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    235c:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2360:	00408084 	slli.w	$r4,$r4,0x0
}
    2364:	4c000020 	jirl	$r0,$r1,0

0000000000002368 <time>:
    register long a7 __asm__("a7") = n;
    2368:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    236c:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2370:	00408084 	slli.w	$r4,$r4,0x0
}
    2374:	4c000020 	jirl	$r0,$r1,0

0000000000002378 <sleep>:

int sleep(unsigned long long time)
{
    2378:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    237c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2380:	00150064 	move	$r4,$r3
    2384:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2388:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    238c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2390:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2394:	44001080 	bnez	$r4,16(0x10) # 23a4 <sleep+0x2c>
    return 0;
    2398:	00150004 	move	$r4,$r0
}
    239c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23a0:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23a4:	24000064 	ldptr.w	$r4,$r3,0
}
    23a8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23ac:	4c000020 	jirl	$r0,$r1,0

00000000000023b0 <set_priority>:
    register long a7 __asm__("a7") = n;
    23b0:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23b4:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23b8:	00408084 	slli.w	$r4,$r4,0x0
}
    23bc:	4c000020 	jirl	$r0,$r1,0

00000000000023c0 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23c0:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23c4:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23c8:	4c000020 	jirl	$r0,$r1,0

00000000000023cc <munmap>:
    register long a7 __asm__("a7") = n;
    23cc:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23d0:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23d4:	00408084 	slli.w	$r4,$r4,0x0
}
    23d8:	4c000020 	jirl	$r0,$r1,0

00000000000023dc <wait>:

int wait(int *code)
{
    23dc:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23e0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23e4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23e8:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23ec:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23f0:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <spawn>:
    register long a7 __asm__("a7") = n;
    23fc:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2400:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2404:	00408084 	slli.w	$r4,$r4,0x0
}
    2408:	4c000020 	jirl	$r0,$r1,0

000000000000240c <mailread>:
    register long a7 __asm__("a7") = n;
    240c:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2410:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2414:	00408084 	slli.w	$r4,$r4,0x0
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <mailwrite>:
    register long a7 __asm__("a7") = n;
    241c:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2420:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2424:	00408084 	slli.w	$r4,$r4,0x0
}
    2428:	4c000020 	jirl	$r0,$r1,0

000000000000242c <fstat>:
    register long a7 __asm__("a7") = n;
    242c:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2430:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2434:	00408084 	slli.w	$r4,$r4,0x0
}
    2438:	4c000020 	jirl	$r0,$r1,0

000000000000243c <sys_linkat>:
    register long a7 __asm__("a7") = n;
    243c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2440:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2444:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2448:	00408084 	slli.w	$r4,$r4,0x0
}
    244c:	4c000020 	jirl	$r0,$r1,0

0000000000002450 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2450:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2454:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2458:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <link>:

int link(char *old_path, char *new_path)
{
    2464:	0015008c 	move	$r12,$r4
    2468:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    246c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2470:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2474:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2478:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    247c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2480:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2484:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2488:	4c000020 	jirl	$r0,$r1,0

000000000000248c <unlink>:

int unlink(char *path)
{
    248c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2490:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2494:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2498:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    249c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24a0:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <uname>:
    register long a7 __asm__("a7") = n;
    24a8:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24ac:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <brk>:
    register long a7 __asm__("a7") = n;
    24b8:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24bc:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24c0:	00408084 	slli.w	$r4,$r4,0x0
}
    24c4:	4c000020 	jirl	$r0,$r1,0

00000000000024c8 <getcwd>:
    register long a7 __asm__("a7") = n;
    24c8:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24cc:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <chdir>:
    register long a7 __asm__("a7") = n;
    24d4:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24d8:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24dc:	00408084 	slli.w	$r4,$r4,0x0
}
    24e0:	4c000020 	jirl	$r0,$r1,0

00000000000024e4 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24e4:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24e8:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24ec:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24f0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24f4:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f8:	002b0000 	syscall	0x0
    24fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2500:	4c000020 	jirl	$r0,$r1,0

0000000000002504 <getdents>:
    register long a7 __asm__("a7") = n;
    2504:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2508:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    250c:	00408084 	slli.w	$r4,$r4,0x0
}
    2510:	4c000020 	jirl	$r0,$r1,0

0000000000002514 <pipe>:
    register long a7 __asm__("a7") = n;
    2514:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2518:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    251c:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <dup>:
    register long a7 __asm__("a7") = n;
    2528:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    252c:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2530:	00408084 	slli.w	$r4,$r4,0x0
}
    2534:	4c000020 	jirl	$r0,$r1,0

0000000000002538 <dup2>:
    register long a7 __asm__("a7") = n;
    2538:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    253c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2540:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <mount>:
    register long a7 __asm__("a7") = n;
    254c:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2550:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2554:	00408084 	slli.w	$r4,$r4,0x0
}
    2558:	4c000020 	jirl	$r0,$r1,0

000000000000255c <umount>:
    register long a7 __asm__("a7") = n;
    255c:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2560:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2564:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2568:	00408084 	slli.w	$r4,$r4,0x0
}
    256c:	4c000020 	jirl	$r0,$r1,0

0000000000002570 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2570:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2574:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2578:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    257c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2580:	00150106 	move	$r6,$r8
	move $a3, $a5
    2584:	00150127 	move	$r7,$r9
	move $a4, $a6
    2588:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    258c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2590:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2594:	40000880 	beqz	$r4,8(0x8) # 259c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2598:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    259c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25a0:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25a4:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25a8:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25ac:	002b0000 	syscall	0x0
