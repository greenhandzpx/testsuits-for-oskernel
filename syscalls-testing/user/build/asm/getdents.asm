
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/getdents:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54011800 	bl	280(0x118) # 111c <__start_main>

0000000000001008 <test_getdents>:
#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"

char buf[512];
void test_getdents(void){
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d73084 	addi.d	$r4,$r4,1484(0x5cc)
void test_getdents(void){
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c04077 	st.d	$r23,$r3,16(0x10)
    101c:	29c02078 	st.d	$r24,$r3,8(0x8)
    TEST_START(__func__);
    1020:	54040400 	bl	1028(0x404) # 1424 <puts>
    1024:	1c000044 	pcaddu12i	$r4,2(0x2)
    1028:	02e15084 	addi.d	$r4,$r4,-1964(0x854)
    102c:	5403f800 	bl	1016(0x3f8) # 1424 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d70084 	addi.d	$r4,$r4,1472(0x5c0)
    1038:	5403ec00 	bl	1004(0x3ec) # 1424 <puts>
    int fd, nread;
    struct linux_dirent64 *dirp64;
    dirp64 = buf;
    //fd = open(".", O_DIRECTORY);
    fd = open(".", O_RDONLY);
    103c:	00150005 	move	$r5,$r0
    1040:	1c000024 	pcaddu12i	$r4,1(0x1)
    1044:	02d70084 	addi.d	$r4,$r4,1472(0x5c0)
    1048:	5411c000 	bl	4544(0x11c0) # 2208 <open>
    printf("open fd:%d\n", fd);
    104c:	00150085 	move	$r5,$r4
    fd = open(".", O_RDONLY);
    1050:	00150097 	move	$r23,$r4
    printf("open fd:%d\n", fd);
    1054:	1c000024 	pcaddu12i	$r4,1(0x1)
    1058:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    105c:	54040000 	bl	1024(0x400) # 145c <printf>

	nread = getdents(fd, dirp64, 512);
    1060:	02880006 	addi.w	$r6,$r0,512(0x200)
    1064:	1c000045 	pcaddu12i	$r5,2(0x2)
    1068:	28e110a5 	ld.d	$r5,$r5,-1980(0x844)
    106c:	001502e4 	move	$r4,$r23
    1070:	5414b800 	bl	5304(0x14b8) # 2528 <getdents>
	printf("getdents fd:%d\n", nread);
    1074:	00150085 	move	$r5,$r4
	nread = getdents(fd, dirp64, 512);
    1078:	00150098 	move	$r24,$r4
	printf("getdents fd:%d\n", nread);
    107c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1080:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    1084:	5403d800 	bl	984(0x3d8) # 145c <printf>
	assert(nread != -1);
    1088:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    108c:	5800670c 	beq	$r24,$r12,100(0x64) # 10f0 <test_getdents+0xe8>
	printf("getdents success.\n%s\n", dirp64->d_name);
    1090:	1c000045 	pcaddu12i	$r5,2(0x2)
    1094:	28e060a5 	ld.d	$r5,$r5,-2024(0x818)
    1098:	02c04ca5 	addi.d	$r5,$r5,19(0x13)
    109c:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a0:	02d6b084 	addi.d	$r4,$r4,1452(0x5ac)
    10a4:	5403b800 	bl	952(0x3b8) # 145c <printf>
	    printf(  "%s\t", d->d_name);
	    bpos += d->d_reclen;
	}
	*/

    printf("\n");
    10a8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10ac:	02d66084 	addi.d	$r4,$r4,1432(0x598)
    10b0:	5403ac00 	bl	940(0x3ac) # 145c <printf>
    close(fd);
    10b4:	001502e4 	move	$r4,$r23
    10b8:	54118800 	bl	4488(0x1188) # 2240 <close>
    TEST_END(__func__);
    10bc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c0:	02d69084 	addi.d	$r4,$r4,1444(0x5a4)
    10c4:	54036000 	bl	864(0x360) # 1424 <puts>
    10c8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10cc:	02dec084 	addi.d	$r4,$r4,1968(0x7b0)
    10d0:	54035400 	bl	852(0x354) # 1424 <puts>
}
    10d4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    10d8:	28c04077 	ld.d	$r23,$r3,16(0x10)
    10dc:	28c02078 	ld.d	$r24,$r3,8(0x8)
    TEST_END(__func__);
    10e0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e4:	02d44084 	addi.d	$r4,$r4,1296(0x510)
}
    10e8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    TEST_END(__func__);
    10ec:	50033800 	b	824(0x338) # 1424 <puts>
	assert(nread != -1);
    10f0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10f4:	02d4e084 	addi.d	$r4,$r4,1336(0x538)
    10f8:	54067400 	bl	1652(0x674) # 176c <panic>
    10fc:	53ff97ff 	b	-108(0xfffff94) # 1090 <test_getdents+0x88>

0000000000001100 <main>:

int main(void){
    1100:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1104:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_getdents();
    1108:	57ff03ff 	bl	-256(0xfffff00) # 1008 <test_getdents>
    return 0;
}
    110c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1110:	00150004 	move	$r4,$r0
    1114:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1118:	4c000020 	jirl	$r0,$r1,0

000000000000111c <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    111c:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1120:	24000084 	ldptr.w	$r4,$r4,0
{
    1124:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1128:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    112c:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1130:	57ffd3ff 	bl	-48(0xfffffd0) # 1100 <main>
    1134:	54119c00 	bl	4508(0x119c) # 22d0 <exit>
	return 0;
}
    1138:	28c02061 	ld.d	$r1,$r3,8(0x8)
    113c:	00150004 	move	$r4,$r0
    1140:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1144:	4c000020 	jirl	$r0,$r1,0

0000000000001148 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1148:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    114c:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1150:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 131c <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1154:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1158:	1c00002c 	pcaddu12i	$r12,1(0x1)
    115c:	02dcc18c 	addi.d	$r12,$r12,1840(0x730)
    1160:	002195cf 	mod.wu	$r15,$r14,$r5
    1164:	5c0008a0 	bne	$r5,$r0,8(0x8) # 116c <printint.constprop.0+0x24>
    1168:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    116c:	002115cd 	div.wu	$r13,$r14,$r5
    1170:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1178 <printint.constprop.0+0x30>
    1174:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1178:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    117c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1180:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1184:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1188:	680219c5 	bltu	$r14,$r5,536(0x218) # 13a0 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    118c:	002195af 	mod.wu	$r15,$r13,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0x50>
    1194:	002a0007 	break	0x7
    1198:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    119c:	002115ae 	div.wu	$r14,$r13,$r5
    11a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a8 <printint.constprop.0+0x60>
    11a4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11ac:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11b0:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1370 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11b4:	002195cf 	mod.wu	$r15,$r14,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0x78>
    11bc:	002a0007 	break	0x7
    11c0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11c4:	002115cd 	div.wu	$r13,$r14,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0x88>
    11cc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11d4:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11d8:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 137c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11dc:	002195af 	mod.wu	$r15,$r13,$r5
    11e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e8 <printint.constprop.0+0xa0>
    11e4:	002a0007 	break	0x7
    11e8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11ec:	002115ae 	div.wu	$r14,$r13,$r5
    11f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f8 <printint.constprop.0+0xb0>
    11f4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11fc:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1200:	680189a5 	bltu	$r13,$r5,392(0x188) # 1388 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1204:	002195cf 	mod.wu	$r15,$r14,$r5
    1208:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1210 <printint.constprop.0+0xc8>
    120c:	002a0007 	break	0x7
    1210:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1214:	002115cd 	div.wu	$r13,$r14,$r5
    1218:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1220 <printint.constprop.0+0xd8>
    121c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1220:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1224:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1228:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1394 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    122c:	002195af 	mod.wu	$r15,$r13,$r5
    1230:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1238 <printint.constprop.0+0xf0>
    1234:	002a0007 	break	0x7
    1238:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    123c:	002115ae 	div.wu	$r14,$r13,$r5
    1240:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1248 <printint.constprop.0+0x100>
    1244:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1248:	38203d8f 	ldx.bu	$r15,$r12,$r15
    124c:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1250:	680115a5 	bltu	$r13,$r5,276(0x114) # 1364 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1254:	002195cf 	mod.wu	$r15,$r14,$r5
    1258:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1260 <printint.constprop.0+0x118>
    125c:	002a0007 	break	0x7
    1260:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1264:	002115cd 	div.wu	$r13,$r14,$r5
    1268:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1270 <printint.constprop.0+0x128>
    126c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1270:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1274:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1278:	680131c5 	bltu	$r14,$r5,304(0x130) # 13a8 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    127c:	002195af 	mod.wu	$r15,$r13,$r5
    1280:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1288 <printint.constprop.0+0x140>
    1284:	002a0007 	break	0x7
    1288:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    128c:	002115ae 	div.wu	$r14,$r13,$r5
    1290:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1298 <printint.constprop.0+0x150>
    1294:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1298:	38203d8f 	ldx.bu	$r15,$r12,$r15
    129c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    12a0:	680115a5 	bltu	$r13,$r5,276(0x114) # 13b4 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    12a4:	002195cf 	mod.wu	$r15,$r14,$r5
    12a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b0 <printint.constprop.0+0x168>
    12ac:	002a0007 	break	0x7
    12b0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12b4:	002115cd 	div.wu	$r13,$r14,$r5
    12b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c0 <printint.constprop.0+0x178>
    12bc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12c0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12c4:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12c8:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13c0 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12cc:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12d0:	3820358d 	ldx.bu	$r13,$r12,$r13
    12d4:	02801805 	addi.w	$r5,$r0,6(0x6)
    12d8:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12dc:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12e0:	64001880 	bge	$r4,$r0,24(0x18) # 12f8 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12e4:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12e8:	0010b1ad 	add.d	$r13,$r13,$r12
    12ec:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12f0:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12f4:	00150185 	move	$r5,$r12
    write(f, s, l);
    12f8:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12fc:	02804006 	addi.w	$r6,$r0,16(0x10)
    1300:	001114c6 	sub.w	$r6,$r6,$r5
    1304:	02800404 	addi.w	$r4,$r0,1(0x1)
    1308:	00109585 	add.d	$r5,$r12,$r5
    130c:	540f5000 	bl	3920(0xf50) # 225c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1310:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1314:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1318:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    131c:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1320:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1324:	02d5a18c 	addi.d	$r12,$r12,1384(0x568)
    1328:	002195cf 	mod.wu	$r15,$r14,$r5
    132c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1334 <printint.constprop.0+0x1ec>
    1330:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1334:	002115cd 	div.wu	$r13,$r14,$r5
    1338:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1340 <printint.constprop.0+0x1f8>
    133c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1340:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1344:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1348:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    134c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1350:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 118c <printint.constprop.0+0x44>
        buf[i--] = '-';
    1354:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1358:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    135c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1360:	53ff9bff 	b	-104(0xfffff98) # 12f8 <printint.constprop.0+0x1b0>
    1364:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1368:	02802805 	addi.w	$r5,$r0,10(0xa)
    136c:	53ff77ff 	b	-140(0xfffff74) # 12e0 <printint.constprop.0+0x198>
    1370:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1374:	02803805 	addi.w	$r5,$r0,14(0xe)
    1378:	53ff6bff 	b	-152(0xfffff68) # 12e0 <printint.constprop.0+0x198>
    137c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1380:	02803405 	addi.w	$r5,$r0,13(0xd)
    1384:	53ff5fff 	b	-164(0xfffff5c) # 12e0 <printint.constprop.0+0x198>
    1388:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    138c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1390:	53ff53ff 	b	-176(0xfffff50) # 12e0 <printint.constprop.0+0x198>
    1394:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1398:	02802c05 	addi.w	$r5,$r0,11(0xb)
    139c:	53ff47ff 	b	-188(0xfffff44) # 12e0 <printint.constprop.0+0x198>
    i = 15;
    13a0:	02803c05 	addi.w	$r5,$r0,15(0xf)
    13a4:	53ff57ff 	b	-172(0xfffff54) # 12f8 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    13a8:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13ac:	02802405 	addi.w	$r5,$r0,9(0x9)
    13b0:	53ff33ff 	b	-208(0xfffff30) # 12e0 <printint.constprop.0+0x198>
    13b4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13b8:	02802005 	addi.w	$r5,$r0,8(0x8)
    13bc:	53ff27ff 	b	-220(0xfffff24) # 12e0 <printint.constprop.0+0x198>
    13c0:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13c4:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13c8:	53ff1bff 	b	-232(0xfffff18) # 12e0 <printint.constprop.0+0x198>

00000000000013cc <getchar>:
{
    13cc:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13d0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13d4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13d8:	00150004 	move	$r4,$r0
{
    13dc:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13e0:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13e4:	540e6c00 	bl	3692(0xe6c) # 2250 <read>
}
    13e8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13ec:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13f0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13f4:	4c000020 	jirl	$r0,$r1,0

00000000000013f8 <putchar>:
{
    13f8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13fc:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1400:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1404:	02800406 	addi.w	$r6,$r0,1(0x1)
    1408:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    140c:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1410:	540e4c00 	bl	3660(0xe4c) # 225c <write>
}
    1414:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1418:	00408084 	slli.w	$r4,$r4,0x0
}
    141c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1420:	4c000020 	jirl	$r0,$r1,0

0000000000001424 <puts>:
{
    1424:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1428:	29c02061 	st.d	$r1,$r3,8(0x8)
    142c:	27000077 	stptr.d	$r23,$r3,0
    1430:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1434:	5406d400 	bl	1748(0x6d4) # 1b08 <strlen>
    1438:	00150086 	move	$r6,$r4
    143c:	001502e5 	move	$r5,$r23
    1440:	02800404 	addi.w	$r4,$r0,1(0x1)
    1444:	540e1800 	bl	3608(0xe18) # 225c <write>
}
    1448:	28c02061 	ld.d	$r1,$r3,8(0x8)
    144c:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1450:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1454:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1458:	4c000020 	jirl	$r0,$r1,0

000000000000145c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    145c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1460:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1464:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1468:	140000fa 	lu12i.w	$r26,7(0x7)
{
    146c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1470:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1474:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1478:	29c1a061 	st.d	$r1,$r3,104(0x68)
    147c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1480:	29c16078 	st.d	$r24,$r3,88(0x58)
    1484:	0015009b 	move	$r27,$r4
    1488:	29c1e065 	st.d	$r5,$r3,120(0x78)
    148c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1490:	29c22067 	st.d	$r7,$r3,136(0x88)
    1494:	29c24068 	st.d	$r8,$r3,144(0x90)
    1498:	29c26069 	st.d	$r9,$r3,152(0x98)
    149c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    14a0:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    14a4:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    14a8:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14ac:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14b0:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14b4:	02cf639c 	addi.d	$r28,$r28,984(0x3d8)
        if (!*s)
    14b8:	2800036c 	ld.b	$r12,$r27,0
    14bc:	40008980 	beqz	$r12,136(0x88) # 1544 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14c0:	58027d99 	beq	$r12,$r25,636(0x27c) # 173c <printf+0x2e0>
    14c4:	00150366 	move	$r6,$r27
    14c8:	50000800 	b	8(0x8) # 14d0 <printf+0x74>
    14cc:	58009d99 	beq	$r12,$r25,156(0x9c) # 1568 <printf+0x10c>
    14d0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14d4:	280000cc 	ld.b	$r12,$r6,0
    14d8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14cc <printf+0x70>
    14dc:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14e0:	0011ecd7 	sub.d	$r23,$r6,$r27
    14e4:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14e8:	001502e6 	move	$r6,$r23
    14ec:	00150365 	move	$r5,$r27
    14f0:	02800404 	addi.w	$r4,$r0,1(0x1)
    14f4:	540d6800 	bl	3432(0xd68) # 225c <write>
        out(f, a, l);
        if (l)
    14f8:	4400b6e0 	bnez	$r23,180(0xb4) # 15ac <printf+0x150>
            continue;
        if (s[1] == 0)
    14fc:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1500:	40004580 	beqz	$r12,68(0x44) # 1544 <printf+0xe8>
            break;
        switch (s[1])
    1504:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1508:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15dc <printf+0x180>
    150c:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15b4 <printf+0x158>
    1510:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1514:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1704 <printf+0x2a8>
    1518:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    151c:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16cc <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1520:	2600006c 	ldptr.d	$r12,$r3,0
    1524:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1528:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    152c:	24000184 	ldptr.w	$r4,$r12,0
    1530:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1534:	2700006c 	stptr.d	$r12,$r3,0
    1538:	57fc13ff 	bl	-1008(0xffffc10) # 1148 <printint.constprop.0>
        if (!*s)
    153c:	2800036c 	ld.b	$r12,$r27,0
    1540:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14c0 <printf+0x64>
    }
    va_end(ap);
}
    1544:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1548:	28c18077 	ld.d	$r23,$r3,96(0x60)
    154c:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1550:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1554:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1558:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    155c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1560:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1564:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1568:	280004cc 	ld.b	$r12,$r6,1(0x1)
    156c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14dc <printf+0x80>
    1570:	001500d8 	move	$r24,$r6
    1574:	50000c00 	b	12(0xc) # 1580 <printf+0x124>
    1578:	2800070c 	ld.b	$r12,$r24,1(0x1)
    157c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14e0 <printf+0x84>
    1580:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1584:	2800030c 	ld.b	$r12,$r24,0
    1588:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    158c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1578 <printf+0x11c>
        l = z - a;
    1590:	0011ecd7 	sub.d	$r23,$r6,$r27
    1594:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1598:	001502e6 	move	$r6,$r23
    159c:	00150365 	move	$r5,$r27
    15a0:	02800404 	addi.w	$r4,$r0,1(0x1)
    15a4:	540cb800 	bl	3256(0xcb8) # 225c <write>
        if (l)
    15a8:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14fc <printf+0xa0>
    15ac:	0015031b 	move	$r27,$r24
    15b0:	53ff0bff 	b	-248(0xfffff08) # 14b8 <printf+0x5c>
        switch (s[1])
    15b4:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15b8:	5c01158d 	bne	$r12,$r13,276(0x114) # 16cc <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15bc:	2600006c 	ldptr.d	$r12,$r3,0
    15c0:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15c4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15c8:	24000184 	ldptr.w	$r4,$r12,0
    15cc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15d0:	2700006c 	stptr.d	$r12,$r3,0
    15d4:	57fb77ff 	bl	-1164(0xffffb74) # 1148 <printint.constprop.0>
        s += 2;
    15d8:	53ff67ff 	b	-156(0xfffff64) # 153c <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15dc:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15e0:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15e4:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15e8:	260001ac 	ldptr.d	$r12,$r13,0
    15ec:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15f0:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15f4:	0045f18a 	srli.d	$r10,$r12,0x3c
    15f8:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15fc:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1600:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1604:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1608:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    160c:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1610:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1614:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1618:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    161c:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1620:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1624:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1628:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    162c:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1630:	3820278a 	ldx.bu	$r10,$r28,$r9
    1634:	38202389 	ldx.bu	$r9,$r28,$r8
    1638:	38201f88 	ldx.bu	$r8,$r28,$r7
    163c:	38201787 	ldx.bu	$r7,$r28,$r5
    1640:	38201385 	ldx.bu	$r5,$r28,$r4
    1644:	38205384 	ldx.bu	$r4,$r28,$r20
    1648:	38204f94 	ldx.bu	$r20,$r28,$r19
    164c:	38204b93 	ldx.bu	$r19,$r28,$r18
    1650:	38204792 	ldx.bu	$r18,$r28,$r17
    1654:	38204391 	ldx.bu	$r17,$r28,$r16
    1658:	38203f90 	ldx.bu	$r16,$r28,$r15
    165c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1660:	3820378e 	ldx.bu	$r14,$r28,$r13
    1664:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1668:	03403d8c 	andi	$r12,$r12,0xf
    166c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1670:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1674:	29003069 	st.b	$r9,$r3,12(0xc)
    1678:	29003468 	st.b	$r8,$r3,13(0xd)
    167c:	29003867 	st.b	$r7,$r3,14(0xe)
    1680:	29003c65 	st.b	$r5,$r3,15(0xf)
    1684:	29004064 	st.b	$r4,$r3,16(0x10)
    1688:	29004474 	st.b	$r20,$r3,17(0x11)
    168c:	29004873 	st.b	$r19,$r3,18(0x12)
    1690:	29004c72 	st.b	$r18,$r3,19(0x13)
    1694:	29005071 	st.b	$r17,$r3,20(0x14)
    1698:	29005470 	st.b	$r16,$r3,21(0x15)
    169c:	2900586f 	st.b	$r15,$r3,22(0x16)
    16a0:	29005c6e 	st.b	$r14,$r3,23(0x17)
    16a4:	3820378d 	ldx.bu	$r13,$r28,$r13
    16a8:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16ac:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16b0:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16b4:	2900606d 	st.b	$r13,$r3,24(0x18)
    16b8:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16bc:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16c0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16c4:	540b9800 	bl	2968(0xb98) # 225c <write>
        s += 2;
    16c8:	53fe77ff 	b	-396(0xffffe74) # 153c <printf+0xe0>
    char byte = c;
    16cc:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16d0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16d4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16d8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16dc:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16e0:	540b7c00 	bl	2940(0xb7c) # 225c <write>
    char byte = c;
    16e4:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16e8:	02800406 	addi.w	$r6,$r0,1(0x1)
    16ec:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16f0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16f4:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16f8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16fc:	540b6000 	bl	2912(0xb60) # 225c <write>
        s += 2;
    1700:	53fe3fff 	b	-452(0xffffe3c) # 153c <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1704:	2600006c 	ldptr.d	$r12,$r3,0
    1708:	26000197 	ldptr.d	$r23,$r12,0
    170c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1710:	2700006c 	stptr.d	$r12,$r3,0
    1714:	40004ee0 	beqz	$r23,76(0x4c) # 1760 <printf+0x304>
            l = strnlen(a, 200);
    1718:	02832005 	addi.w	$r5,$r0,200(0xc8)
    171c:	001502e4 	move	$r4,$r23
    1720:	5405d000 	bl	1488(0x5d0) # 1cf0 <strnlen>
    1724:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1728:	001502e5 	move	$r5,$r23
    172c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1730:	540b2c00 	bl	2860(0xb2c) # 225c <write>
        s += 2;
    1734:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1738:	53fe07ff 	b	-508(0xffffe04) # 153c <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    173c:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1740:	00150366 	move	$r6,$r27
    1744:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1570 <printf+0x114>
    write(f, s, l);
    1748:	00150006 	move	$r6,$r0
    174c:	00150365 	move	$r5,$r27
    1750:	02800404 	addi.w	$r4,$r0,1(0x1)
    1754:	540b0800 	bl	2824(0xb08) # 225c <write>
    1758:	00150378 	move	$r24,$r27
    175c:	53fda3ff 	b	-608(0xffffda0) # 14fc <printf+0xa0>
                a = "(null)";
    1760:	1c000037 	pcaddu12i	$r23,1(0x1)
    1764:	02fc42f7 	addi.d	$r23,$r23,-240(0xf10)
    1768:	53ffb3ff 	b	-80(0xfffffb0) # 1718 <printf+0x2bc>

000000000000176c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    176c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1770:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1774:	57fcb3ff 	bl	-848(0xffffcb0) # 1424 <puts>
    exit(-100);
}
    1778:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    177c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1780:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1784:	500b4c00 	b	2892(0xb4c) # 22d0 <exit>

0000000000001788 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1788:	0280800c 	addi.w	$r12,$r0,32(0x20)
    178c:	5800108c 	beq	$r4,$r12,16(0x10) # 179c <isspace+0x14>
    1790:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1794:	02401484 	sltui	$r4,$r4,5(0x5)
    1798:	4c000020 	jirl	$r0,$r1,0
    179c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    17a0:	4c000020 	jirl	$r0,$r1,0

00000000000017a4 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    17a4:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    17a8:	02402884 	sltui	$r4,$r4,10(0xa)
    17ac:	4c000020 	jirl	$r0,$r1,0

00000000000017b0 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17b0:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17b4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17b8:	2800008d 	ld.b	$r13,$r4,0
    17bc:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17c0:	580061ae 	beq	$r13,$r14,96(0x60) # 1820 <atoi+0x70>
    17c4:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1820 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17c8:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17cc:	580065ac 	beq	$r13,$r12,100(0x64) # 1830 <atoi+0x80>
    17d0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17d4:	58007dac 	beq	$r13,$r12,124(0x7c) # 1850 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17d8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17dc:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17e0:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17e4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17e8:	680061cf 	bltu	$r14,$r15,96(0x60) # 1848 <atoi+0x98>
    int n = 0, neg = 0;
    17ec:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17f0:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17f4:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17f8:	001c126f 	mul.w	$r15,$r19,$r4
    17fc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1800:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1804:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1808:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    180c:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1810:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1814:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17f8 <atoi+0x48>
    return neg ? n : -n;
    1818:	40001280 	beqz	$r20,16(0x10) # 1828 <atoi+0x78>
}
    181c:	4c000020 	jirl	$r0,$r1,0
        s++;
    1820:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1824:	53ff97ff 	b	-108(0xfffff94) # 17b8 <atoi+0x8>
    1828:	00113e04 	sub.w	$r4,$r16,$r15
    182c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1830:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1834:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1838:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    183c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1840:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1844:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17ec <atoi+0x3c>
    1848:	00150004 	move	$r4,$r0
}
    184c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1850:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1854:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1858:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    185c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1860:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1848 <atoi+0x98>
        neg = 1;
    1864:	02800414 	addi.w	$r20,$r0,1(0x1)
    1868:	53ff87ff 	b	-124(0xfffff84) # 17ec <atoi+0x3c>

000000000000186c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    186c:	400198c0 	beqz	$r6,408(0x198) # 1a04 <memset+0x198>
    1870:	0011900c 	sub.d	$r12,$r0,$r4
    1874:	03401d8c 	andi	$r12,$r12,0x7
    1878:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    187c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1880:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1884:	0013b9ad 	masknez	$r13,$r13,$r14
    1888:	001339ee 	maskeqz	$r14,$r15,$r14
    188c:	001539ad 	or	$r13,$r13,$r14
    1890:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1894:	00005ca5 	ext.w.b	$r5,$r5
    1898:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a28 <memset+0x1bc>
    189c:	40018180 	beqz	$r12,384(0x180) # 1a1c <memset+0x1b0>
    18a0:	29000085 	st.b	$r5,$r4,0
    18a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
    18a8:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18ac:	5801698d 	beq	$r12,$r13,360(0x168) # 1a14 <memset+0x1a8>
    18b0:	29000485 	st.b	$r5,$r4,1(0x1)
    18b4:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18b8:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18bc:	5801798d 	beq	$r12,$r13,376(0x178) # 1a34 <memset+0x1c8>
    18c0:	29000885 	st.b	$r5,$r4,2(0x2)
    18c4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18c8:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18cc:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a08 <memset+0x19c>
    18d0:	29000c85 	st.b	$r5,$r4,3(0x3)
    18d4:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18d8:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18dc:	5801618d 	beq	$r12,$r13,352(0x160) # 1a3c <memset+0x1d0>
    18e0:	29001085 	st.b	$r5,$r4,4(0x4)
    18e4:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18e8:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18ec:	5801598d 	beq	$r12,$r13,344(0x158) # 1a44 <memset+0x1d8>
    18f0:	29001485 	st.b	$r5,$r4,5(0x5)
    18f4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18f8:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18fc:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a4c <memset+0x1e0>
    1900:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1904:	29001885 	st.b	$r5,$r4,6(0x6)
    1908:	02801c11 	addi.w	$r17,$r0,7(0x7)
    190c:	0015000d 	move	$r13,$r0
    1910:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1914:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1918:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    191c:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1920:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1924:	0011b0d0 	sub.d	$r16,$r6,$r12
    1928:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    192c:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1930:	0010b08c 	add.d	$r12,$r4,$r12
    1934:	00450e0f 	srli.d	$r15,$r16,0x3
    1938:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    193c:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1940:	2700018d 	stptr.d	$r13,$r12,0
    1944:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1948:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1940 <memset+0xd4>
    194c:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1950:	0014be0f 	and	$r15,$r16,$r15
    1954:	004081ed 	slli.w	$r13,$r15,0x0
    1958:	0010bdcc 	add.d	$r12,$r14,$r15
    195c:	001045ad 	add.w	$r13,$r13,$r17
    1960:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a10 <memset+0x1a4>
    1964:	29000185 	st.b	$r5,$r12,0
    1968:	028005ae 	addi.w	$r14,$r13,1(0x1)
    196c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a04 <memset+0x198>
    1970:	29000585 	st.b	$r5,$r12,1(0x1)
    1974:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1978:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a04 <memset+0x198>
    197c:	29000985 	st.b	$r5,$r12,2(0x2)
    1980:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1984:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a04 <memset+0x198>
    1988:	29000d85 	st.b	$r5,$r12,3(0x3)
    198c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1990:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a04 <memset+0x198>
    1994:	29001185 	st.b	$r5,$r12,4(0x4)
    1998:	028015ae 	addi.w	$r14,$r13,5(0x5)
    199c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a04 <memset+0x198>
    19a0:	29001585 	st.b	$r5,$r12,5(0x5)
    19a4:	028019ae 	addi.w	$r14,$r13,6(0x6)
    19a8:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a04 <memset+0x198>
    19ac:	29001985 	st.b	$r5,$r12,6(0x6)
    19b0:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19b4:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a04 <memset+0x198>
    19b8:	29001d85 	st.b	$r5,$r12,7(0x7)
    19bc:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19c0:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a04 <memset+0x198>
    19c4:	29002185 	st.b	$r5,$r12,8(0x8)
    19c8:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19cc:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a04 <memset+0x198>
    19d0:	29002585 	st.b	$r5,$r12,9(0x9)
    19d4:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19d8:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a04 <memset+0x198>
    19dc:	29002985 	st.b	$r5,$r12,10(0xa)
    19e0:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19e4:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a04 <memset+0x198>
    19e8:	29002d85 	st.b	$r5,$r12,11(0xb)
    19ec:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19f0:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a04 <memset+0x198>
    19f4:	29003185 	st.b	$r5,$r12,12(0xc)
    19f8:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19fc:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a04 <memset+0x198>
    1a00:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a04:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a08:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a0c:	53ff03ff 	b	-256(0xfffff00) # 190c <memset+0xa0>
    1a10:	4c000020 	jirl	$r0,$r1,0
    1a14:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a18:	53fef7ff 	b	-268(0xffffef4) # 190c <memset+0xa0>
    1a1c:	0015008e 	move	$r14,$r4
    1a20:	00150011 	move	$r17,$r0
    1a24:	53feebff 	b	-280(0xffffee8) # 190c <memset+0xa0>
    1a28:	0015008c 	move	$r12,$r4
    1a2c:	0015000d 	move	$r13,$r0
    1a30:	53ff37ff 	b	-204(0xfffff34) # 1964 <memset+0xf8>
    1a34:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a38:	53fed7ff 	b	-300(0xffffed4) # 190c <memset+0xa0>
    1a3c:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a40:	53fecfff 	b	-308(0xffffecc) # 190c <memset+0xa0>
    1a44:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a48:	53fec7ff 	b	-316(0xffffec4) # 190c <memset+0xa0>
    1a4c:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a50:	53febfff 	b	-324(0xffffebc) # 190c <memset+0xa0>

0000000000001a54 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a54:	2800008c 	ld.b	$r12,$r4,0
    1a58:	280000ae 	ld.b	$r14,$r5,0
    1a5c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a90 <strcmp+0x3c>
    1a60:	40003980 	beqz	$r12,56(0x38) # 1a98 <strcmp+0x44>
    1a64:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a68:	50000800 	b	8(0x8) # 1a70 <strcmp+0x1c>
    1a6c:	400019a0 	beqz	$r13,24(0x18) # 1a84 <strcmp+0x30>
    1a70:	3800308d 	ldx.b	$r13,$r4,$r12
    1a74:	380030ae 	ldx.b	$r14,$r5,$r12
    1a78:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a7c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a6c <strcmp+0x18>
    1a80:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a84:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a88:	001111a4 	sub.w	$r4,$r13,$r4
    1a8c:	4c000020 	jirl	$r0,$r1,0
    1a90:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a94:	53fff3ff 	b	-16(0xffffff0) # 1a84 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a98:	0015000d 	move	$r13,$r0
    1a9c:	53ffebff 	b	-24(0xfffffe8) # 1a84 <strcmp+0x30>

0000000000001aa0 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1aa0:	400054c0 	beqz	$r6,84(0x54) # 1af4 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1aa4:	2a00008d 	ld.bu	$r13,$r4,0
    1aa8:	2a0000ae 	ld.bu	$r14,$r5,0
    1aac:	40003da0 	beqz	$r13,60(0x3c) # 1ae8 <strncmp+0x48>
    1ab0:	40003dc0 	beqz	$r14,60(0x3c) # 1aec <strncmp+0x4c>
    if (!n--)
    1ab4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1ab8:	400034c0 	beqz	$r6,52(0x34) # 1aec <strncmp+0x4c>
    1abc:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ac0:	580019ae 	beq	$r13,$r14,24(0x18) # 1ad8 <strncmp+0x38>
    1ac4:	50002800 	b	40(0x28) # 1aec <strncmp+0x4c>
    1ac8:	400035c0 	beqz	$r14,52(0x34) # 1afc <strncmp+0x5c>
    1acc:	580020cc 	beq	$r6,$r12,32(0x20) # 1aec <strncmp+0x4c>
    1ad0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ad4:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1afc <strncmp+0x5c>
    1ad8:	3820308d 	ldx.bu	$r13,$r4,$r12
    1adc:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ae0:	001501af 	move	$r15,$r13
    1ae4:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1ac8 <strncmp+0x28>
    1ae8:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1aec:	001139a4 	sub.w	$r4,$r13,$r14
    1af0:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1af4:	00150004 	move	$r4,$r0
}
    1af8:	4c000020 	jirl	$r0,$r1,0
    1afc:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b00:	001139a4 	sub.w	$r4,$r13,$r14
    1b04:	4c000020 	jirl	$r0,$r1,0

0000000000001b08 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b08:	03401c8c 	andi	$r12,$r4,0x7
    1b0c:	4000b180 	beqz	$r12,176(0xb0) # 1bbc <strlen+0xb4>
        if (!*s)
    1b10:	2800008c 	ld.b	$r12,$r4,0
    1b14:	4000b180 	beqz	$r12,176(0xb0) # 1bc4 <strlen+0xbc>
    1b18:	0015008c 	move	$r12,$r4
    1b1c:	50000c00 	b	12(0xc) # 1b28 <strlen+0x20>
    1b20:	2800018d 	ld.b	$r13,$r12,0
    1b24:	400091a0 	beqz	$r13,144(0x90) # 1bb4 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b28:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b2c:	03401d8d 	andi	$r13,$r12,0x7
    1b30:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b20 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b34:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b38:	2600018f 	ldptr.d	$r15,$r12,0
    1b3c:	03bbfdad 	ori	$r13,$r13,0xeff
    1b40:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b44:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b48:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b4c:	038201ce 	ori	$r14,$r14,0x80
    1b50:	0010b5ed 	add.d	$r13,$r15,$r13
    1b54:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b58:	0016bdad 	andn	$r13,$r13,$r15
    1b5c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b60:	0014b9ae 	and	$r14,$r13,$r14
    1b64:	440049c0 	bnez	$r14,72(0x48) # 1bac <strlen+0xa4>
    1b68:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b6c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b70:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b74:	2600018e 	ldptr.d	$r14,$r12,0
    1b78:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b7c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b80:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b84:	0382020f 	ori	$r15,$r16,0x80
    1b88:	0010b5cd 	add.d	$r13,$r14,$r13
    1b8c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b90:	0016b9ad 	andn	$r13,$r13,$r14
    1b94:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b98:	0014bdad 	and	$r13,$r13,$r15
    1b9c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b70 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1ba0:	2800018d 	ld.b	$r13,$r12,0
    1ba4:	400011a0 	beqz	$r13,16(0x10) # 1bb4 <strlen+0xac>
    1ba8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1bac:	2800018d 	ld.b	$r13,$r12,0
    1bb0:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1ba8 <strlen+0xa0>
        ;
    return s - a;
    1bb4:	00119184 	sub.d	$r4,$r12,$r4
}
    1bb8:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1bbc:	0015008c 	move	$r12,$r4
    1bc0:	53ff77ff 	b	-140(0xfffff74) # 1b34 <strlen+0x2c>
        if (!*s)
    1bc4:	00150004 	move	$r4,$r0
            return s - a;
    1bc8:	4c000020 	jirl	$r0,$r1,0

0000000000001bcc <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bcc:	03401c8c 	andi	$r12,$r4,0x7
    1bd0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bd4:	44002180 	bnez	$r12,32(0x20) # 1bf4 <memchr+0x28>
    1bd8:	50002c00 	b	44(0x2c) # 1c04 <memchr+0x38>
    1bdc:	2a00008c 	ld.bu	$r12,$r4,0
    1be0:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cd8 <memchr+0x10c>
    1be4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1be8:	03401c8c 	andi	$r12,$r4,0x7
    1bec:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bf0:	40001580 	beqz	$r12,20(0x14) # 1c04 <memchr+0x38>
    1bf4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bdc <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bf8:	0015000d 	move	$r13,$r0
}
    1bfc:	001501a4 	move	$r4,$r13
    1c00:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c04:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c08:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bfc <memchr+0x30>
    1c0c:	2a00008c 	ld.bu	$r12,$r4,0
    1c10:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cd8 <memchr+0x10c>
        size_t k = ONES * c;
    1c14:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c18:	0384058c 	ori	$r12,$r12,0x101
    1c1c:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c20:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c24:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c28:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c2c:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1ce8 <memchr+0x11c>
    1c30:	2600008d 	ldptr.d	$r13,$r4,0
    1c34:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c38:	038201ce 	ori	$r14,$r14,0x80
    1c3c:	0015b60d 	xor	$r13,$r16,$r13
    1c40:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c44:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c48:	0016b58c 	andn	$r12,$r12,$r13
    1c4c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c50:	0014b98c 	and	$r12,$r12,$r14
    1c54:	44009580 	bnez	$r12,148(0x94) # 1ce8 <memchr+0x11c>
    1c58:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c5c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c60:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c64:	50002000 	b	32(0x20) # 1c84 <memchr+0xb8>
    1c68:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c6c:	0015b20c 	xor	$r12,$r16,$r12
    1c70:	0010b98e 	add.d	$r14,$r12,$r14
    1c74:	0016b1cc 	andn	$r12,$r14,$r12
    1c78:	0014bd8c 	and	$r12,$r12,$r15
    1c7c:	44006580 	bnez	$r12,100(0x64) # 1ce0 <memchr+0x114>
    1c80:	001501a4 	move	$r4,$r13
    1c84:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c88:	0382022f 	ori	$r15,$r17,0x80
    1c8c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c90:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c94:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c98:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c9c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1ca0:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1ca4:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c68 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1ca8:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bf8 <memchr+0x2c>
    1cac:	2a0001ac 	ld.bu	$r12,$r13,0
    1cb0:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bfc <memchr+0x30>
    1cb4:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1cb8:	001099a6 	add.d	$r6,$r13,$r6
    1cbc:	50001000 	b	16(0x10) # 1ccc <memchr+0x100>
    1cc0:	2a00018e 	ld.bu	$r14,$r12,0
    1cc4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1cc8:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bfc <memchr+0x30>
    1ccc:	0015018d 	move	$r13,$r12
    1cd0:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1cc0 <memchr+0xf4>
    1cd4:	53ff27ff 	b	-220(0xfffff24) # 1bf8 <memchr+0x2c>
    1cd8:	0015008d 	move	$r13,$r4
    1cdc:	53ffd3ff 	b	-48(0xfffffd0) # 1cac <memchr+0xe0>
    1ce0:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1ce4:	53ffcfff 	b	-52(0xfffffcc) # 1cb0 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ce8:	0015008d 	move	$r13,$r4
    1cec:	53ffcbff 	b	-56(0xfffffc8) # 1cb4 <memchr+0xe8>

0000000000001cf0 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cf0:	03401c8c 	andi	$r12,$r4,0x7
    1cf4:	40011980 	beqz	$r12,280(0x118) # 1e0c <strnlen+0x11c>
    1cf8:	4000f4a0 	beqz	$r5,244(0xf4) # 1dec <strnlen+0xfc>
    1cfc:	2a00008c 	ld.bu	$r12,$r4,0
    1d00:	4000f580 	beqz	$r12,244(0xf4) # 1df4 <strnlen+0x104>
    1d04:	001500ac 	move	$r12,$r5
    1d08:	0015008d 	move	$r13,$r4
    1d0c:	50001000 	b	16(0x10) # 1d1c <strnlen+0x2c>
    1d10:	4000dd80 	beqz	$r12,220(0xdc) # 1dec <strnlen+0xfc>
    1d14:	2a0001ae 	ld.bu	$r14,$r13,0
    1d18:	4000e5c0 	beqz	$r14,228(0xe4) # 1dfc <strnlen+0x10c>
    1d1c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d20:	03401dae 	andi	$r14,$r13,0x7
    1d24:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d28:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d10 <strnlen+0x20>
    if (n && *s != c)
    1d2c:	4000c180 	beqz	$r12,192(0xc0) # 1dec <strnlen+0xfc>
    1d30:	2a0001ae 	ld.bu	$r14,$r13,0
    1d34:	4000c9c0 	beqz	$r14,200(0xc8) # 1dfc <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d38:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d3c:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e18 <strnlen+0x128>
    1d40:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d44:	260001b0 	ldptr.d	$r16,$r13,0
    1d48:	03bbfdce 	ori	$r14,$r14,0xeff
    1d4c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d50:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d54:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d58:	038201ef 	ori	$r15,$r15,0x80
    1d5c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d60:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d64:	0016c1ce 	andn	$r14,$r14,$r16
    1d68:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d6c:	0014bdcf 	and	$r15,$r14,$r15
    1d70:	4400a9e0 	bnez	$r15,168(0xa8) # 1e18 <strnlen+0x128>
    1d74:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d78:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d7c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d80:	50001c00 	b	28(0x1c) # 1d9c <strnlen+0xac>
    1d84:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d88:	0010b9ee 	add.d	$r14,$r15,$r14
    1d8c:	0016bdce 	andn	$r14,$r14,$r15
    1d90:	0014c1ce 	and	$r14,$r14,$r16
    1d94:	440071c0 	bnez	$r14,112(0x70) # 1e04 <strnlen+0x114>
    1d98:	0015022d 	move	$r13,$r17
    1d9c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1da0:	03820250 	ori	$r16,$r18,0x80
    1da4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1da8:	16101010 	lu32i.d	$r16,32896(0x8080)
    1dac:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1db0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1db4:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1db8:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1dbc:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d84 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1dc0:	40002d80 	beqz	$r12,44(0x2c) # 1dec <strnlen+0xfc>
    1dc4:	2a00022d 	ld.bu	$r13,$r17,0
    1dc8:	400021a0 	beqz	$r13,32(0x20) # 1de8 <strnlen+0xf8>
    1dcc:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1dd0:	0010b22c 	add.d	$r12,$r17,$r12
    1dd4:	001501b1 	move	$r17,$r13
    1dd8:	5800158d 	beq	$r12,$r13,20(0x14) # 1dec <strnlen+0xfc>
    1ddc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1de0:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1de4:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1dd4 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1de8:	00119225 	sub.d	$r5,$r17,$r4
}
    1dec:	001500a4 	move	$r4,$r5
    1df0:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1df4:	001500ac 	move	$r12,$r5
    1df8:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dfc:	001501b1 	move	$r17,$r13
    1e00:	53ffc7ff 	b	-60(0xfffffc4) # 1dc4 <strnlen+0xd4>
    1e04:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e08:	53ffc3ff 	b	-64(0xfffffc0) # 1dc8 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e0c:	001500ac 	move	$r12,$r5
    1e10:	0015008d 	move	$r13,$r4
    1e14:	53ff1bff 	b	-232(0xfffff18) # 1d2c <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e18:	001501b1 	move	$r17,$r13
    1e1c:	53ffb3ff 	b	-80(0xfffffb0) # 1dcc <strnlen+0xdc>

0000000000001e20 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e20:	0015948c 	xor	$r12,$r4,$r5
    1e24:	03401d8c 	andi	$r12,$r12,0x7
    1e28:	4400ad80 	bnez	$r12,172(0xac) # 1ed4 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e2c:	03401cac 	andi	$r12,$r5,0x7
    1e30:	40003180 	beqz	$r12,48(0x30) # 1e60 <strcpy+0x40>
            if (!(*d = *s))
    1e34:	280000ac 	ld.b	$r12,$r5,0
    1e38:	2900008c 	st.b	$r12,$r4,0
    1e3c:	44001580 	bnez	$r12,20(0x14) # 1e50 <strcpy+0x30>
    1e40:	5000bc00 	b	188(0xbc) # 1efc <strcpy+0xdc>
    1e44:	280000ac 	ld.b	$r12,$r5,0
    1e48:	2900008c 	st.b	$r12,$r4,0
    1e4c:	4000a980 	beqz	$r12,168(0xa8) # 1ef4 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e50:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e54:	03401cac 	andi	$r12,$r5,0x7
    1e58:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e5c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e44 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e60:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e64:	260000ae 	ldptr.d	$r14,$r5,0
    1e68:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e6c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e70:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e74:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e78:	038201ad 	ori	$r13,$r13,0x80
    1e7c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e80:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e84:	0016b98c 	andn	$r12,$r12,$r14
    1e88:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e8c:	0014b58c 	and	$r12,$r12,$r13
    1e90:	44004580 	bnez	$r12,68(0x44) # 1ed4 <strcpy+0xb4>
    1e94:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e98:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e9c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ea0:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1ea4:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1ea8:	260000ae 	ldptr.d	$r14,$r5,0
    1eac:	03bbfe0c 	ori	$r12,$r16,0xeff
    1eb0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1eb4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1eb8:	038201ed 	ori	$r13,$r15,0x80
    1ebc:	0010b1cc 	add.d	$r12,$r14,$r12
    1ec0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ec4:	0016b98c 	andn	$r12,$r12,$r14
    1ec8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ecc:	0014b58c 	and	$r12,$r12,$r13
    1ed0:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e9c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ed4:	280000ac 	ld.b	$r12,$r5,0
    1ed8:	2900008c 	st.b	$r12,$r4,0
    1edc:	40001d80 	beqz	$r12,28(0x1c) # 1ef8 <strcpy+0xd8>
    1ee0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ee4:	280000ac 	ld.b	$r12,$r5,0
    1ee8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1eec:	2900008c 	st.b	$r12,$r4,0
    1ef0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ee0 <strcpy+0xc0>
        ;
    return d;
}
    1ef4:	4c000020 	jirl	$r0,$r1,0
    1ef8:	4c000020 	jirl	$r0,$r1,0
    1efc:	4c000020 	jirl	$r0,$r1,0

0000000000001f00 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f00:	0015948c 	xor	$r12,$r4,$r5
    1f04:	03401d8c 	andi	$r12,$r12,0x7
    1f08:	4400ad80 	bnez	$r12,172(0xac) # 1fb4 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f0c:	03401cac 	andi	$r12,$r5,0x7
    1f10:	44010180 	bnez	$r12,256(0x100) # 2010 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f14:	400100c0 	beqz	$r6,256(0x100) # 2014 <strncpy+0x114>
    1f18:	280000af 	ld.b	$r15,$r5,0
    1f1c:	400105e0 	beqz	$r15,260(0x104) # 2020 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f20:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f24:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21fc <strncpy+0x2fc>
    1f28:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f2c:	260000ae 	ldptr.d	$r14,$r5,0
    1f30:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f34:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f38:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f3c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f40:	038201ad 	ori	$r13,$r13,0x80
    1f44:	0010b1cc 	add.d	$r12,$r14,$r12
    1f48:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f4c:	0016b98c 	andn	$r12,$r12,$r14
    1f50:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f54:	0014b58c 	and	$r12,$r12,$r13
    1f58:	4402a580 	bnez	$r12,676(0x2a4) # 21fc <strncpy+0x2fc>
    1f5c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f60:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f64:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f68:	50001c00 	b	28(0x1c) # 1f84 <strncpy+0x84>
    1f6c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f70:	0010b1cc 	add.d	$r12,$r14,$r12
    1f74:	0016b98c 	andn	$r12,$r12,$r14
    1f78:	0014b58c 	and	$r12,$r12,$r13
    1f7c:	44024580 	bnez	$r12,580(0x244) # 21c0 <strncpy+0x2c0>
    1f80:	001501e5 	move	$r5,$r15
    1f84:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f88:	0382020d 	ori	$r13,$r16,0x80
    1f8c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f90:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f94:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f98:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f9c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fa0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fa4:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1fa8:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1fac:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f6c <strncpy+0x6c>
    1fb0:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1fb4:	400060c0 	beqz	$r6,96(0x60) # 2014 <strncpy+0x114>
    1fb8:	280000ac 	ld.b	$r12,$r5,0
    1fbc:	0015008d 	move	$r13,$r4
    1fc0:	2900008c 	st.b	$r12,$r4,0
    1fc4:	44001580 	bnez	$r12,20(0x14) # 1fd8 <strncpy+0xd8>
    1fc8:	50005c00 	b	92(0x5c) # 2024 <strncpy+0x124>
    1fcc:	280000ac 	ld.b	$r12,$r5,0
    1fd0:	290001ac 	st.b	$r12,$r13,0
    1fd4:	40005180 	beqz	$r12,80(0x50) # 2024 <strncpy+0x124>
    1fd8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fdc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fe0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fe4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fcc <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fe8:	001501a4 	move	$r4,$r13
    1fec:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ff0:	280000ac 	ld.b	$r12,$r5,0
    1ff4:	2900008c 	st.b	$r12,$r4,0
    1ff8:	40002980 	beqz	$r12,40(0x28) # 2020 <strncpy+0x120>
    1ffc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2000:	03401cac 	andi	$r12,$r5,0x7
    2004:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2008:	02c00484 	addi.d	$r4,$r4,1(0x1)
    200c:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f14 <strncpy+0x14>
    2010:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1ff0 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2014:	0015008d 	move	$r13,$r4
}
    2018:	001501a4 	move	$r4,$r13
    201c:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2020:	0015008d 	move	$r13,$r4
    2024:	0011b40c 	sub.d	$r12,$r0,$r13
    2028:	03401d8c 	andi	$r12,$r12,0x7
    202c:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2030:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2034:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2038:	0013bdce 	masknez	$r14,$r14,$r15
    203c:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2040:	00133e0f 	maskeqz	$r15,$r16,$r15
    2044:	00153dce 	or	$r14,$r14,$r15
    2048:	024004d0 	sltui	$r16,$r6,1(0x1)
    204c:	00131a31 	maskeqz	$r17,$r17,$r6
    2050:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2054:	001540d0 	or	$r16,$r6,$r16
    2058:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21d0 <strncpy+0x2d0>
    205c:	40015980 	beqz	$r12,344(0x158) # 21b4 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2060:	290001a0 	st.b	$r0,$r13,0
    2064:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2068:	5801458f 	beq	$r12,$r15,324(0x144) # 21ac <strncpy+0x2ac>
    206c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2070:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2074:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2078:	5801658f 	beq	$r12,$r15,356(0x164) # 21dc <strncpy+0x2dc>
    207c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2080:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2084:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2088:	58011d8f 	beq	$r12,$r15,284(0x11c) # 21a4 <strncpy+0x2a4>
    208c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2090:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2094:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2098:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21e4 <strncpy+0x2e4>
    209c:	290011a0 	st.b	$r0,$r13,4(0x4)
    20a0:	0280140f 	addi.w	$r15,$r0,5(0x5)
    20a4:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    20a8:	5801458f 	beq	$r12,$r15,324(0x144) # 21ec <strncpy+0x2ec>
    20ac:	290015a0 	st.b	$r0,$r13,5(0x5)
    20b0:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20b4:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20b8:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21f4 <strncpy+0x2f4>
    20bc:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20c0:	290019a0 	st.b	$r0,$r13,6(0x6)
    20c4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20c8:	0011b210 	sub.d	$r16,$r16,$r12
    20cc:	00450e11 	srli.d	$r17,$r16,0x3
    20d0:	0010b1ac 	add.d	$r12,$r13,$r12
    20d4:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20d8:	27000180 	stptr.d	$r0,$r12,0
    20dc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20e0:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20d8 <strncpy+0x1d8>
    20e4:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20e8:	0014c611 	and	$r17,$r16,$r17
    20ec:	0040822f 	slli.w	$r15,$r17,0x0
    20f0:	001049ef 	add.w	$r15,$r15,$r18
    20f4:	0010c5cc 	add.d	$r12,$r14,$r17
    20f8:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fe8 <strncpy+0xe8>
    20fc:	29000180 	st.b	$r0,$r12,0
    2100:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2104:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fe8 <strncpy+0xe8>
    2108:	29000580 	st.b	$r0,$r12,1(0x1)
    210c:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2110:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fe8 <strncpy+0xe8>
    2114:	29000980 	st.b	$r0,$r12,2(0x2)
    2118:	02800dee 	addi.w	$r14,$r15,3(0x3)
    211c:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fe8 <strncpy+0xe8>
    2120:	29000d80 	st.b	$r0,$r12,3(0x3)
    2124:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2128:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fe8 <strncpy+0xe8>
    212c:	29001180 	st.b	$r0,$r12,4(0x4)
    2130:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2134:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fe8 <strncpy+0xe8>
    2138:	29001580 	st.b	$r0,$r12,5(0x5)
    213c:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2140:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fe8 <strncpy+0xe8>
    2144:	29001980 	st.b	$r0,$r12,6(0x6)
    2148:	02801dee 	addi.w	$r14,$r15,7(0x7)
    214c:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fe8 <strncpy+0xe8>
    2150:	29001d80 	st.b	$r0,$r12,7(0x7)
    2154:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2158:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fe8 <strncpy+0xe8>
    215c:	29002180 	st.b	$r0,$r12,8(0x8)
    2160:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2164:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fe8 <strncpy+0xe8>
    2168:	29002580 	st.b	$r0,$r12,9(0x9)
    216c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2170:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fe8 <strncpy+0xe8>
    2174:	29002980 	st.b	$r0,$r12,10(0xa)
    2178:	02802dee 	addi.w	$r14,$r15,11(0xb)
    217c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fe8 <strncpy+0xe8>
    2180:	29002d80 	st.b	$r0,$r12,11(0xb)
    2184:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2188:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fe8 <strncpy+0xe8>
    218c:	29003180 	st.b	$r0,$r12,12(0xc)
    2190:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2194:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fe8 <strncpy+0xe8>
    2198:	29003580 	st.b	$r0,$r12,13(0xd)
}
    219c:	001501a4 	move	$r4,$r13
    21a0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    21a4:	02800c12 	addi.w	$r18,$r0,3(0x3)
    21a8:	53ff23ff 	b	-224(0xfffff20) # 20c8 <strncpy+0x1c8>
    21ac:	02800412 	addi.w	$r18,$r0,1(0x1)
    21b0:	53ff1bff 	b	-232(0xfffff18) # 20c8 <strncpy+0x1c8>
    21b4:	001501ae 	move	$r14,$r13
    21b8:	00150012 	move	$r18,$r0
    21bc:	53ff0fff 	b	-244(0xfffff0c) # 20c8 <strncpy+0x1c8>
    21c0:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21c4:	0015008d 	move	$r13,$r4
    21c8:	001501e5 	move	$r5,$r15
    21cc:	53fdf7ff 	b	-524(0xffffdf4) # 1fc0 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21d0:	001501ac 	move	$r12,$r13
    21d4:	0015000f 	move	$r15,$r0
    21d8:	53ff27ff 	b	-220(0xfffff24) # 20fc <strncpy+0x1fc>
    21dc:	02800812 	addi.w	$r18,$r0,2(0x2)
    21e0:	53feebff 	b	-280(0xffffee8) # 20c8 <strncpy+0x1c8>
    21e4:	02801012 	addi.w	$r18,$r0,4(0x4)
    21e8:	53fee3ff 	b	-288(0xffffee0) # 20c8 <strncpy+0x1c8>
    21ec:	02801412 	addi.w	$r18,$r0,5(0x5)
    21f0:	53fedbff 	b	-296(0xffffed8) # 20c8 <strncpy+0x1c8>
    21f4:	02801812 	addi.w	$r18,$r0,6(0x6)
    21f8:	53fed3ff 	b	-304(0xffffed0) # 20c8 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21fc:	2900008f 	st.b	$r15,$r4,0
    2200:	0015008d 	move	$r13,$r4
    2204:	53fdd7ff 	b	-556(0xffffdd4) # 1fd8 <strncpy+0xd8>

0000000000002208 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2208:	0015008c 	move	$r12,$r4
    220c:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2210:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2214:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2218:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    221c:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2220:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2224:	00408084 	slli.w	$r4,$r4,0x0
}
    2228:	4c000020 	jirl	$r0,$r1,0

000000000000222c <openat>:
    register long a7 __asm__("a7") = n;
    222c:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2230:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2234:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2238:	00408084 	slli.w	$r4,$r4,0x0
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <close>:
    register long a7 __asm__("a7") = n;
    2240:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2244:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2248:	00408084 	slli.w	$r4,$r4,0x0
}
    224c:	4c000020 	jirl	$r0,$r1,0

0000000000002250 <read>:
    register long a7 __asm__("a7") = n;
    2250:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2254:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <write>:
    register long a7 __asm__("a7") = n;
    225c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2260:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2264:	4c000020 	jirl	$r0,$r1,0

0000000000002268 <getpid>:
    register long a7 __asm__("a7") = n;
    2268:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    226c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2270:	00408084 	slli.w	$r4,$r4,0x0
}
    2274:	4c000020 	jirl	$r0,$r1,0

0000000000002278 <getppid>:
    register long a7 __asm__("a7") = n;
    2278:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    227c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2280:	00408084 	slli.w	$r4,$r4,0x0
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2288:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    228c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2290:	00408084 	slli.w	$r4,$r4,0x0
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <fork>:
    register long a7 __asm__("a7") = n;
    2298:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    229c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    22a0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22a4:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    22a8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ac:	4c000020 	jirl	$r0,$r1,0

00000000000022b0 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22b0:	001500c5 	move	$r5,$r6
    if (stack)
    22b4:	400008c0 	beqz	$r6,8(0x8) # 22bc <clone+0xc>
	stack += stack_size;
    22b8:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22bc:	00408106 	slli.w	$r6,$r8,0x0
    22c0:	00150009 	move	$r9,$r0
    22c4:	00150008 	move	$r8,$r0
    22c8:	00150007 	move	$r7,$r0
    22cc:	5002c800 	b	712(0x2c8) # 2594 <__clone>

00000000000022d0 <exit>:
    register long a7 __asm__("a7") = n;
    22d0:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22d4:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <waitpid>:
    register long a7 __asm__("a7") = n;
    22dc:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22e0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22e4:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22e8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <exec>:
    register long a7 __asm__("a7") = n;
    22f0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22f4:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22f8:	00408084 	slli.w	$r4,$r4,0x0
}
    22fc:	4c000020 	jirl	$r0,$r1,0

0000000000002300 <execve>:
    register long a7 __asm__("a7") = n;
    2300:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2304:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2308:	00408084 	slli.w	$r4,$r4,0x0
}
    230c:	4c000020 	jirl	$r0,$r1,0

0000000000002310 <times>:
    register long a7 __asm__("a7") = n;
    2310:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2314:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2318:	00408084 	slli.w	$r4,$r4,0x0
}
    231c:	4c000020 	jirl	$r0,$r1,0

0000000000002320 <get_time>:

int64 get_time()
{
    2320:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2324:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2328:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    232c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2330:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2334:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2338:	44003c80 	bnez	$r4,60(0x3c) # 2374 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    233c:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2340:	039f3c8c 	ori	$r12,$r4,0x7cf
    2344:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2348:	2a40006d 	ld.hu	$r13,$r3,0
    234c:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2350:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2354:	00450c84 	srli.d	$r4,$r4,0x3
    2358:	001eb084 	mulh.du	$r4,$r4,$r12
    235c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2360:	001db1ac 	mul.d	$r12,$r13,$r12
    2364:	00451084 	srli.d	$r4,$r4,0x4
    2368:	00109184 	add.d	$r4,$r12,$r4
}
    236c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2370:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2374:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2378:	53fff7ff 	b	-12(0xffffff4) # 236c <get_time+0x4c>

000000000000237c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    237c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2380:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2384:	00408084 	slli.w	$r4,$r4,0x0
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <time>:
    register long a7 __asm__("a7") = n;
    238c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2390:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2394:	00408084 	slli.w	$r4,$r4,0x0
}
    2398:	4c000020 	jirl	$r0,$r1,0

000000000000239c <sleep>:

int sleep(unsigned long long time)
{
    239c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    23a0:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    23a4:	00150064 	move	$r4,$r3
    23a8:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23ac:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23b0:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23b4:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23b8:	44001080 	bnez	$r4,16(0x10) # 23c8 <sleep+0x2c>
    return 0;
    23bc:	00150004 	move	$r4,$r0
}
    23c0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23c4:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23c8:	24000064 	ldptr.w	$r4,$r3,0
}
    23cc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <set_priority>:
    register long a7 __asm__("a7") = n;
    23d4:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23d8:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23e4:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23e8:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <munmap>:
    register long a7 __asm__("a7") = n;
    23f0:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23f4:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23f8:	00408084 	slli.w	$r4,$r4,0x0
}
    23fc:	4c000020 	jirl	$r0,$r1,0

0000000000002400 <wait>:

int wait(int *code)
{
    2400:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2404:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2408:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    240c:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2410:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2414:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2418:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <spawn>:
    register long a7 __asm__("a7") = n;
    2420:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2424:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <mailread>:
    register long a7 __asm__("a7") = n;
    2430:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2434:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2440:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2444:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2448:	00408084 	slli.w	$r4,$r4,0x0
}
    244c:	4c000020 	jirl	$r0,$r1,0

0000000000002450 <fstat>:
    register long a7 __asm__("a7") = n;
    2450:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2454:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2458:	00408084 	slli.w	$r4,$r4,0x0
}
    245c:	4c000020 	jirl	$r0,$r1,0

0000000000002460 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2460:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2464:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2468:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2474:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2478:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    247c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <link>:

int link(char *old_path, char *new_path)
{
    2488:	0015008c 	move	$r12,$r4
    248c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2490:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2494:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2498:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    249c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    24a0:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24a4:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <unlink>:

int unlink(char *path)
{
    24b0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24b4:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24b8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24bc:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c0:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <uname>:
    register long a7 __asm__("a7") = n;
    24cc:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24d0:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24d4:	00408084 	slli.w	$r4,$r4,0x0
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <brk>:
    register long a7 __asm__("a7") = n;
    24dc:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24e0:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <getcwd>:
    register long a7 __asm__("a7") = n;
    24ec:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24f0:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <chdir>:
    register long a7 __asm__("a7") = n;
    24f8:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24fc:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2508:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    250c:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2510:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2514:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2518:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    251c:	002b0000 	syscall	0x0
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <getdents>:
    register long a7 __asm__("a7") = n;
    2528:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    252c:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2530:	00408084 	slli.w	$r4,$r4,0x0
}
    2534:	4c000020 	jirl	$r0,$r1,0

0000000000002538 <pipe>:
    register long a7 __asm__("a7") = n;
    2538:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    253c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2540:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <dup>:
    register long a7 __asm__("a7") = n;
    254c:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2550:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2554:	00408084 	slli.w	$r4,$r4,0x0
}
    2558:	4c000020 	jirl	$r0,$r1,0

000000000000255c <dup2>:
    register long a7 __asm__("a7") = n;
    255c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2560:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2564:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2568:	00408084 	slli.w	$r4,$r4,0x0
}
    256c:	4c000020 	jirl	$r0,$r1,0

0000000000002570 <mount>:
    register long a7 __asm__("a7") = n;
    2570:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2574:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2578:	00408084 	slli.w	$r4,$r4,0x0
}
    257c:	4c000020 	jirl	$r0,$r1,0

0000000000002580 <umount>:
    register long a7 __asm__("a7") = n;
    2580:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2584:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2588:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    258c:	00408084 	slli.w	$r4,$r4,0x0
}
    2590:	4c000020 	jirl	$r0,$r1,0

0000000000002594 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2594:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2598:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    259c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    25a0:	001500c4 	move	$r4,$r6
	move $a2, $a4
    25a4:	00150106 	move	$r6,$r8
	move $a3, $a5
    25a8:	00150127 	move	$r7,$r9
	move $a4, $a6
    25ac:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25b0:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25b4:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25b8:	40000880 	beqz	$r4,8(0x8) # 25c0 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25bc:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25c0:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25c4:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25c8:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25cc:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25d0:	002b0000 	syscall	0x0
