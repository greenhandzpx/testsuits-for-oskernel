
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/fstat:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400fc00 	bl	252(0xfc) # 1100 <__start_main>

0000000000001008 <test_fstat>:

#define AT_FDCWD (-100) //相对路径

//Stat *kst;
static struct kstat kst;
void test_fstat() {
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d6b084 	addi.d	$r4,$r4,1452(0x5ac)
void test_fstat() {
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c04077 	st.d	$r23,$r3,16(0x10)
	TEST_START(__func__);
    101c:	5403ec00 	bl	1004(0x3ec) # 1408 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02dbe084 	addi.d	$r4,$r4,1784(0x6f8)
    1028:	5403e000 	bl	992(0x3e0) # 1408 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d69084 	addi.d	$r4,$r4,1444(0x5a4)
    1034:	5403d400 	bl	980(0x3d4) # 1408 <puts>
	int fd = open("./text.txt", 0);
    1038:	00150005 	move	$r5,$r0
    103c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1040:	02d69084 	addi.d	$r4,$r4,1444(0x5a4)
    1044:	5411a800 	bl	4520(0x11a8) # 21ec <open>
	int ret = fstat(fd, &kst);
    1048:	1c000025 	pcaddu12i	$r5,1(0x1)
    104c:	02d940a5 	addi.d	$r5,$r5,1616(0x650)
    1050:	5413e400 	bl	5092(0x13e4) # 2434 <fstat>
    1054:	00150097 	move	$r23,$r4
	printf("fstat ret: %d\n", ret);
    1058:	00150085 	move	$r5,$r4
    105c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1060:	02d65084 	addi.d	$r4,$r4,1428(0x594)
    1064:	5403dc00 	bl	988(0x3dc) # 1440 <printf>
	assert(ret >= 0);
    1068:	60006ee0 	blt	$r23,$r0,108(0x6c) # 10d4 <test_fstat+0xcc>

	printf("fstat: dev: %d, inode: %d, mode: %d, nlink: %d, size: %d, atime: %d, mtime: %d, ctime: %d\n",
    106c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1070:	02d8b18c 	addi.d	$r12,$r12,1580(0x62c)
    1074:	28c1a18d 	ld.d	$r13,$r12,104(0x68)
    1078:	28c1618b 	ld.d	$r11,$r12,88(0x58)
    107c:	28c1218a 	ld.d	$r10,$r12,72(0x48)
    1080:	28c0c189 	ld.d	$r9,$r12,48(0x30)
    1084:	24001588 	ldptr.w	$r8,$r12,20(0x14)
    1088:	24001187 	ldptr.w	$r7,$r12,16(0x10)
    108c:	28c02186 	ld.d	$r6,$r12,8(0x8)
    1090:	26000185 	ldptr.d	$r5,$r12,0
    1094:	2700006d 	stptr.d	$r13,$r3,0
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d62084 	addi.d	$r4,$r4,1416(0x588)
    10a0:	5403a000 	bl	928(0x3a0) # 1440 <printf>
	      kst.st_dev, kst.st_ino, kst.st_mode, kst.st_nlink, kst.st_size, kst.st_atime_sec, kst.st_mtime_sec, kst.st_ctime_sec);

	TEST_END(__func__);
    10a4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a8:	02d77084 	addi.d	$r4,$r4,1500(0x5dc)
    10ac:	54035c00 	bl	860(0x35c) # 1408 <puts>
    10b0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b4:	02d9a084 	addi.d	$r4,$r4,1640(0x668)
    10b8:	54035000 	bl	848(0x350) # 1408 <puts>
}
    10bc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    10c0:	28c04077 	ld.d	$r23,$r3,16(0x10)
	TEST_END(__func__);
    10c4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c8:	02d43084 	addi.d	$r4,$r4,1292(0x50c)
}
    10cc:	02c08063 	addi.d	$r3,$r3,32(0x20)
	TEST_END(__func__);
    10d0:	50033800 	b	824(0x338) # 1408 <puts>
	assert(ret >= 0);
    10d4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d8:	02d4b084 	addi.d	$r4,$r4,1324(0x52c)
    10dc:	54067400 	bl	1652(0x674) # 1750 <panic>
    10e0:	53ff8fff 	b	-116(0xfffff8c) # 106c <test_fstat+0x64>

00000000000010e4 <main>:

int main(void) {
    10e4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10e8:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_fstat();
    10ec:	57ff1fff 	bl	-228(0xfffff1c) # 1008 <test_fstat>
	return 0;
}
    10f0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10f4:	00150004 	move	$r4,$r0
    10f8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10fc:	4c000020 	jirl	$r0,$r1,0

0000000000001100 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1100:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1104:	24000084 	ldptr.w	$r4,$r4,0
{
    1108:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    110c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1110:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1114:	57ffd3ff 	bl	-48(0xfffffd0) # 10e4 <main>
    1118:	54119c00 	bl	4508(0x119c) # 22b4 <exit>
	return 0;
}
    111c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1120:	00150004 	move	$r4,$r0
    1124:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1128:	4c000020 	jirl	$r0,$r1,0

000000000000112c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    112c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1130:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1134:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1300 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1138:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    113c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1140:	02d7b18c 	addi.d	$r12,$r12,1516(0x5ec)
    1144:	002195cf 	mod.wu	$r15,$r14,$r5
    1148:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1150 <printint.constprop.0+0x24>
    114c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1150:	002115cd 	div.wu	$r13,$r14,$r5
    1154:	5c0008a0 	bne	$r5,$r0,8(0x8) # 115c <printint.constprop.0+0x30>
    1158:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    115c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1160:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1164:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1168:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    116c:	680219c5 	bltu	$r14,$r5,536(0x218) # 1384 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1170:	002195af 	mod.wu	$r15,$r13,$r5
    1174:	5c0008a0 	bne	$r5,$r0,8(0x8) # 117c <printint.constprop.0+0x50>
    1178:	002a0007 	break	0x7
    117c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1180:	002115ae 	div.wu	$r14,$r13,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0x60>
    1188:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    118c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1190:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1194:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1354 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1198:	002195cf 	mod.wu	$r15,$r14,$r5
    119c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a4 <printint.constprop.0+0x78>
    11a0:	002a0007 	break	0x7
    11a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a8:	002115cd 	div.wu	$r13,$r14,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0x88>
    11b0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b8:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11bc:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1360 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11c0:	002195af 	mod.wu	$r15,$r13,$r5
    11c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11cc <printint.constprop.0+0xa0>
    11c8:	002a0007 	break	0x7
    11cc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d0:	002115ae 	div.wu	$r14,$r13,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0xb0>
    11d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11dc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e0:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11e4:	680189a5 	bltu	$r13,$r5,392(0x188) # 136c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11e8:	002195cf 	mod.wu	$r15,$r14,$r5
    11ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f4 <printint.constprop.0+0xc8>
    11f0:	002a0007 	break	0x7
    11f4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f8:	002115cd 	div.wu	$r13,$r14,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0xd8>
    1200:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1204:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1208:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    120c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1378 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1210:	002195af 	mod.wu	$r15,$r13,$r5
    1214:	5c0008a0 	bne	$r5,$r0,8(0x8) # 121c <printint.constprop.0+0xf0>
    1218:	002a0007 	break	0x7
    121c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1220:	002115ae 	div.wu	$r14,$r13,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0x100>
    1228:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    122c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1230:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1234:	680115a5 	bltu	$r13,$r5,276(0x114) # 1348 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1238:	002195cf 	mod.wu	$r15,$r14,$r5
    123c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1244 <printint.constprop.0+0x118>
    1240:	002a0007 	break	0x7
    1244:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1248:	002115cd 	div.wu	$r13,$r14,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0x128>
    1250:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1254:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1258:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    125c:	680131c5 	bltu	$r14,$r5,304(0x130) # 138c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1260:	002195af 	mod.wu	$r15,$r13,$r5
    1264:	5c0008a0 	bne	$r5,$r0,8(0x8) # 126c <printint.constprop.0+0x140>
    1268:	002a0007 	break	0x7
    126c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1270:	002115ae 	div.wu	$r14,$r13,$r5
    1274:	5c0008a0 	bne	$r5,$r0,8(0x8) # 127c <printint.constprop.0+0x150>
    1278:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    127c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1280:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1284:	680115a5 	bltu	$r13,$r5,276(0x114) # 1398 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1288:	002195cf 	mod.wu	$r15,$r14,$r5
    128c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1294 <printint.constprop.0+0x168>
    1290:	002a0007 	break	0x7
    1294:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1298:	002115cd 	div.wu	$r13,$r14,$r5
    129c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a4 <printint.constprop.0+0x178>
    12a0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12a4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12a8:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12ac:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13a4 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12b0:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12b4:	3820358d 	ldx.bu	$r13,$r12,$r13
    12b8:	02801805 	addi.w	$r5,$r0,6(0x6)
    12bc:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12c0:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12c4:	64001880 	bge	$r4,$r0,24(0x18) # 12dc <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12c8:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12cc:	0010b1ad 	add.d	$r13,$r13,$r12
    12d0:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12d4:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12d8:	00150185 	move	$r5,$r12
    write(f, s, l);
    12dc:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12e0:	02804006 	addi.w	$r6,$r0,16(0x10)
    12e4:	001114c6 	sub.w	$r6,$r6,$r5
    12e8:	02800404 	addi.w	$r4,$r0,1(0x1)
    12ec:	00109585 	add.d	$r5,$r12,$r5
    12f0:	540f5000 	bl	3920(0xf50) # 2240 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12f4:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12f8:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12fc:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1300:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1304:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1308:	02d0918c 	addi.d	$r12,$r12,1060(0x424)
    130c:	002195cf 	mod.wu	$r15,$r14,$r5
    1310:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1318 <printint.constprop.0+0x1ec>
    1314:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1318:	002115cd 	div.wu	$r13,$r14,$r5
    131c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1324 <printint.constprop.0+0x1f8>
    1320:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1324:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1328:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    132c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1330:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1334:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1170 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1338:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    133c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1340:	02803805 	addi.w	$r5,$r0,14(0xe)
    1344:	53ff9bff 	b	-104(0xfffff98) # 12dc <printint.constprop.0+0x1b0>
    1348:	0280240c 	addi.w	$r12,$r0,9(0x9)
    134c:	02802805 	addi.w	$r5,$r0,10(0xa)
    1350:	53ff77ff 	b	-140(0xfffff74) # 12c4 <printint.constprop.0+0x198>
    1354:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1358:	02803805 	addi.w	$r5,$r0,14(0xe)
    135c:	53ff6bff 	b	-152(0xfffff68) # 12c4 <printint.constprop.0+0x198>
    1360:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1364:	02803405 	addi.w	$r5,$r0,13(0xd)
    1368:	53ff5fff 	b	-164(0xfffff5c) # 12c4 <printint.constprop.0+0x198>
    136c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1370:	02803005 	addi.w	$r5,$r0,12(0xc)
    1374:	53ff53ff 	b	-176(0xfffff50) # 12c4 <printint.constprop.0+0x198>
    1378:	0280280c 	addi.w	$r12,$r0,10(0xa)
    137c:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1380:	53ff47ff 	b	-188(0xfffff44) # 12c4 <printint.constprop.0+0x198>
    i = 15;
    1384:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1388:	53ff57ff 	b	-172(0xfffff54) # 12dc <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    138c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1390:	02802405 	addi.w	$r5,$r0,9(0x9)
    1394:	53ff33ff 	b	-208(0xfffff30) # 12c4 <printint.constprop.0+0x198>
    1398:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    139c:	02802005 	addi.w	$r5,$r0,8(0x8)
    13a0:	53ff27ff 	b	-220(0xfffff24) # 12c4 <printint.constprop.0+0x198>
    13a4:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13a8:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13ac:	53ff1bff 	b	-232(0xfffff18) # 12c4 <printint.constprop.0+0x198>

00000000000013b0 <getchar>:
{
    13b0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13b4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13b8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13bc:	00150004 	move	$r4,$r0
{
    13c0:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13c4:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13c8:	540e6c00 	bl	3692(0xe6c) # 2234 <read>
}
    13cc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13d0:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13d4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13d8:	4c000020 	jirl	$r0,$r1,0

00000000000013dc <putchar>:
{
    13dc:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13e0:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13e4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13e8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13ec:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13f0:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13f4:	540e4c00 	bl	3660(0xe4c) # 2240 <write>
}
    13f8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13fc:	00408084 	slli.w	$r4,$r4,0x0
}
    1400:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1404:	4c000020 	jirl	$r0,$r1,0

0000000000001408 <puts>:
{
    1408:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    140c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1410:	27000077 	stptr.d	$r23,$r3,0
    1414:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1418:	5406d400 	bl	1748(0x6d4) # 1aec <strlen>
    141c:	00150086 	move	$r6,$r4
    1420:	001502e5 	move	$r5,$r23
    1424:	02800404 	addi.w	$r4,$r0,1(0x1)
    1428:	540e1800 	bl	3608(0xe18) # 2240 <write>
}
    142c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1430:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1434:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1438:	02c04063 	addi.d	$r3,$r3,16(0x10)
    143c:	4c000020 	jirl	$r0,$r1,0

0000000000001440 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1440:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1444:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1448:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    144c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1450:	29c14079 	st.d	$r25,$r3,80(0x50)
    1454:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1458:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    145c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1460:	29c18077 	st.d	$r23,$r3,96(0x60)
    1464:	29c16078 	st.d	$r24,$r3,88(0x58)
    1468:	0015009b 	move	$r27,$r4
    146c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1470:	29c20066 	st.d	$r6,$r3,128(0x80)
    1474:	29c22067 	st.d	$r7,$r3,136(0x88)
    1478:	29c24068 	st.d	$r8,$r3,144(0x90)
    147c:	29c26069 	st.d	$r9,$r3,152(0x98)
    1480:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1484:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1488:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    148c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1490:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1494:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1498:	02ca539c 	addi.d	$r28,$r28,660(0x294)
        if (!*s)
    149c:	2800036c 	ld.b	$r12,$r27,0
    14a0:	40008980 	beqz	$r12,136(0x88) # 1528 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14a4:	58027d99 	beq	$r12,$r25,636(0x27c) # 1720 <printf+0x2e0>
    14a8:	00150366 	move	$r6,$r27
    14ac:	50000800 	b	8(0x8) # 14b4 <printf+0x74>
    14b0:	58009d99 	beq	$r12,$r25,156(0x9c) # 154c <printf+0x10c>
    14b4:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14b8:	280000cc 	ld.b	$r12,$r6,0
    14bc:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14b0 <printf+0x70>
    14c0:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14c4:	0011ecd7 	sub.d	$r23,$r6,$r27
    14c8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14cc:	001502e6 	move	$r6,$r23
    14d0:	00150365 	move	$r5,$r27
    14d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    14d8:	540d6800 	bl	3432(0xd68) # 2240 <write>
        out(f, a, l);
        if (l)
    14dc:	4400b6e0 	bnez	$r23,180(0xb4) # 1590 <printf+0x150>
            continue;
        if (s[1] == 0)
    14e0:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14e4:	40004580 	beqz	$r12,68(0x44) # 1528 <printf+0xe8>
            break;
        switch (s[1])
    14e8:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14ec:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15c0 <printf+0x180>
    14f0:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1598 <printf+0x158>
    14f4:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14f8:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16e8 <printf+0x2a8>
    14fc:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1500:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16b0 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1504:	2600006c 	ldptr.d	$r12,$r3,0
    1508:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    150c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1510:	24000184 	ldptr.w	$r4,$r12,0
    1514:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1518:	2700006c 	stptr.d	$r12,$r3,0
    151c:	57fc13ff 	bl	-1008(0xffffc10) # 112c <printint.constprop.0>
        if (!*s)
    1520:	2800036c 	ld.b	$r12,$r27,0
    1524:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14a4 <printf+0x64>
    }
    va_end(ap);
}
    1528:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    152c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1530:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1534:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1538:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    153c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1540:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1544:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1548:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    154c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1550:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14c0 <printf+0x80>
    1554:	001500d8 	move	$r24,$r6
    1558:	50000c00 	b	12(0xc) # 1564 <printf+0x124>
    155c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1560:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14c4 <printf+0x84>
    1564:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1568:	2800030c 	ld.b	$r12,$r24,0
    156c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1570:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 155c <printf+0x11c>
        l = z - a;
    1574:	0011ecd7 	sub.d	$r23,$r6,$r27
    1578:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    157c:	001502e6 	move	$r6,$r23
    1580:	00150365 	move	$r5,$r27
    1584:	02800404 	addi.w	$r4,$r0,1(0x1)
    1588:	540cb800 	bl	3256(0xcb8) # 2240 <write>
        if (l)
    158c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14e0 <printf+0xa0>
    1590:	0015031b 	move	$r27,$r24
    1594:	53ff0bff 	b	-248(0xfffff08) # 149c <printf+0x5c>
        switch (s[1])
    1598:	0281900d 	addi.w	$r13,$r0,100(0x64)
    159c:	5c01158d 	bne	$r12,$r13,276(0x114) # 16b0 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15a0:	2600006c 	ldptr.d	$r12,$r3,0
    15a4:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15a8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15ac:	24000184 	ldptr.w	$r4,$r12,0
    15b0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15b4:	2700006c 	stptr.d	$r12,$r3,0
    15b8:	57fb77ff 	bl	-1164(0xffffb74) # 112c <printint.constprop.0>
        s += 2;
    15bc:	53ff67ff 	b	-156(0xfffff64) # 1520 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15c0:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15c4:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15c8:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15cc:	260001ac 	ldptr.d	$r12,$r13,0
    15d0:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15d4:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15d8:	0045f18a 	srli.d	$r10,$r12,0x3c
    15dc:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15e0:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15e4:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15e8:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15ec:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15f0:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15f4:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15f8:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15fc:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1600:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1604:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1608:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    160c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1610:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1614:	3820278a 	ldx.bu	$r10,$r28,$r9
    1618:	38202389 	ldx.bu	$r9,$r28,$r8
    161c:	38201f88 	ldx.bu	$r8,$r28,$r7
    1620:	38201787 	ldx.bu	$r7,$r28,$r5
    1624:	38201385 	ldx.bu	$r5,$r28,$r4
    1628:	38205384 	ldx.bu	$r4,$r28,$r20
    162c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1630:	38204b93 	ldx.bu	$r19,$r28,$r18
    1634:	38204792 	ldx.bu	$r18,$r28,$r17
    1638:	38204391 	ldx.bu	$r17,$r28,$r16
    163c:	38203f90 	ldx.bu	$r16,$r28,$r15
    1640:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1644:	3820378e 	ldx.bu	$r14,$r28,$r13
    1648:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    164c:	03403d8c 	andi	$r12,$r12,0xf
    1650:	2900286b 	st.b	$r11,$r3,10(0xa)
    1654:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1658:	29003069 	st.b	$r9,$r3,12(0xc)
    165c:	29003468 	st.b	$r8,$r3,13(0xd)
    1660:	29003867 	st.b	$r7,$r3,14(0xe)
    1664:	29003c65 	st.b	$r5,$r3,15(0xf)
    1668:	29004064 	st.b	$r4,$r3,16(0x10)
    166c:	29004474 	st.b	$r20,$r3,17(0x11)
    1670:	29004873 	st.b	$r19,$r3,18(0x12)
    1674:	29004c72 	st.b	$r18,$r3,19(0x13)
    1678:	29005071 	st.b	$r17,$r3,20(0x14)
    167c:	29005470 	st.b	$r16,$r3,21(0x15)
    1680:	2900586f 	st.b	$r15,$r3,22(0x16)
    1684:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1688:	3820378d 	ldx.bu	$r13,$r28,$r13
    168c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1690:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1694:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1698:	2900606d 	st.b	$r13,$r3,24(0x18)
    169c:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16a0:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16a4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16a8:	540b9800 	bl	2968(0xb98) # 2240 <write>
        s += 2;
    16ac:	53fe77ff 	b	-396(0xffffe74) # 1520 <printf+0xe0>
    char byte = c;
    16b0:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16b4:	02800406 	addi.w	$r6,$r0,1(0x1)
    16b8:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16bc:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16c0:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16c4:	540b7c00 	bl	2940(0xb7c) # 2240 <write>
    char byte = c;
    16c8:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16cc:	02800406 	addi.w	$r6,$r0,1(0x1)
    16d0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16d8:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16dc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16e0:	540b6000 	bl	2912(0xb60) # 2240 <write>
        s += 2;
    16e4:	53fe3fff 	b	-452(0xffffe3c) # 1520 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16e8:	2600006c 	ldptr.d	$r12,$r3,0
    16ec:	26000197 	ldptr.d	$r23,$r12,0
    16f0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16f4:	2700006c 	stptr.d	$r12,$r3,0
    16f8:	40004ee0 	beqz	$r23,76(0x4c) # 1744 <printf+0x304>
            l = strnlen(a, 200);
    16fc:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1700:	001502e4 	move	$r4,$r23
    1704:	5405d000 	bl	1488(0x5d0) # 1cd4 <strnlen>
    1708:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    170c:	001502e5 	move	$r5,$r23
    1710:	02800404 	addi.w	$r4,$r0,1(0x1)
    1714:	540b2c00 	bl	2860(0xb2c) # 2240 <write>
        s += 2;
    1718:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    171c:	53fe07ff 	b	-508(0xffffe04) # 1520 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1720:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1724:	00150366 	move	$r6,$r27
    1728:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1554 <printf+0x114>
    write(f, s, l);
    172c:	00150006 	move	$r6,$r0
    1730:	00150365 	move	$r5,$r27
    1734:	02800404 	addi.w	$r4,$r0,1(0x1)
    1738:	540b0800 	bl	2824(0xb08) # 2240 <write>
    173c:	00150378 	move	$r24,$r27
    1740:	53fda3ff 	b	-608(0xffffda0) # 14e0 <printf+0xa0>
                a = "(null)";
    1744:	1c000037 	pcaddu12i	$r23,1(0x1)
    1748:	02fd32f7 	addi.d	$r23,$r23,-180(0xf4c)
    174c:	53ffb3ff 	b	-80(0xfffffb0) # 16fc <printf+0x2bc>

0000000000001750 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1750:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1754:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1758:	57fcb3ff 	bl	-848(0xffffcb0) # 1408 <puts>
    exit(-100);
}
    175c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1760:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1764:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1768:	500b4c00 	b	2892(0xb4c) # 22b4 <exit>

000000000000176c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    176c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1770:	5800108c 	beq	$r4,$r12,16(0x10) # 1780 <isspace+0x14>
    1774:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1778:	02401484 	sltui	$r4,$r4,5(0x5)
    177c:	4c000020 	jirl	$r0,$r1,0
    1780:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1784:	4c000020 	jirl	$r0,$r1,0

0000000000001788 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1788:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    178c:	02402884 	sltui	$r4,$r4,10(0xa)
    1790:	4c000020 	jirl	$r0,$r1,0

0000000000001794 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1794:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1798:	0280100f 	addi.w	$r15,$r0,4(0x4)
    179c:	2800008d 	ld.b	$r13,$r4,0
    17a0:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17a4:	580061ae 	beq	$r13,$r14,96(0x60) # 1804 <atoi+0x70>
    17a8:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1804 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17ac:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17b0:	580065ac 	beq	$r13,$r12,100(0x64) # 1814 <atoi+0x80>
    17b4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17b8:	58007dac 	beq	$r13,$r12,124(0x7c) # 1834 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17bc:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17c0:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17c4:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17c8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17cc:	680061cf 	bltu	$r14,$r15,96(0x60) # 182c <atoi+0x98>
    int n = 0, neg = 0;
    17d0:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17d4:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17d8:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17dc:	001c126f 	mul.w	$r15,$r19,$r4
    17e0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17e4:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17e8:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17ec:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17f0:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17f4:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17f8:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17dc <atoi+0x48>
    return neg ? n : -n;
    17fc:	40001280 	beqz	$r20,16(0x10) # 180c <atoi+0x78>
}
    1800:	4c000020 	jirl	$r0,$r1,0
        s++;
    1804:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1808:	53ff97ff 	b	-108(0xfffff94) # 179c <atoi+0x8>
    180c:	00113e04 	sub.w	$r4,$r16,$r15
    1810:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1814:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1818:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    181c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1820:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1824:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1828:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17d0 <atoi+0x3c>
    182c:	00150004 	move	$r4,$r0
}
    1830:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1834:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1838:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    183c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1840:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1844:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 182c <atoi+0x98>
        neg = 1;
    1848:	02800414 	addi.w	$r20,$r0,1(0x1)
    184c:	53ff87ff 	b	-124(0xfffff84) # 17d0 <atoi+0x3c>

0000000000001850 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1850:	400198c0 	beqz	$r6,408(0x198) # 19e8 <memset+0x198>
    1854:	0011900c 	sub.d	$r12,$r0,$r4
    1858:	03401d8c 	andi	$r12,$r12,0x7
    185c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1860:	02402dae 	sltui	$r14,$r13,11(0xb)
    1864:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1868:	0013b9ad 	masknez	$r13,$r13,$r14
    186c:	001339ee 	maskeqz	$r14,$r15,$r14
    1870:	001539ad 	or	$r13,$r13,$r14
    1874:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1878:	00005ca5 	ext.w.b	$r5,$r5
    187c:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a0c <memset+0x1bc>
    1880:	40018180 	beqz	$r12,384(0x180) # 1a00 <memset+0x1b0>
    1884:	29000085 	st.b	$r5,$r4,0
    1888:	0280040d 	addi.w	$r13,$r0,1(0x1)
    188c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1890:	5801698d 	beq	$r12,$r13,360(0x168) # 19f8 <memset+0x1a8>
    1894:	29000485 	st.b	$r5,$r4,1(0x1)
    1898:	0280080d 	addi.w	$r13,$r0,2(0x2)
    189c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18a0:	5801798d 	beq	$r12,$r13,376(0x178) # 1a18 <memset+0x1c8>
    18a4:	29000885 	st.b	$r5,$r4,2(0x2)
    18a8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18ac:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18b0:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19ec <memset+0x19c>
    18b4:	29000c85 	st.b	$r5,$r4,3(0x3)
    18b8:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18bc:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18c0:	5801618d 	beq	$r12,$r13,352(0x160) # 1a20 <memset+0x1d0>
    18c4:	29001085 	st.b	$r5,$r4,4(0x4)
    18c8:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18cc:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18d0:	5801598d 	beq	$r12,$r13,344(0x158) # 1a28 <memset+0x1d8>
    18d4:	29001485 	st.b	$r5,$r4,5(0x5)
    18d8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18dc:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18e0:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a30 <memset+0x1e0>
    18e4:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18e8:	29001885 	st.b	$r5,$r4,6(0x6)
    18ec:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18f0:	0015000d 	move	$r13,$r0
    18f4:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18f8:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18fc:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1900:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1904:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1908:	0011b0d0 	sub.d	$r16,$r6,$r12
    190c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1910:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1914:	0010b08c 	add.d	$r12,$r4,$r12
    1918:	00450e0f 	srli.d	$r15,$r16,0x3
    191c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1920:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1924:	2700018d 	stptr.d	$r13,$r12,0
    1928:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    192c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1924 <memset+0xd4>
    1930:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1934:	0014be0f 	and	$r15,$r16,$r15
    1938:	004081ed 	slli.w	$r13,$r15,0x0
    193c:	0010bdcc 	add.d	$r12,$r14,$r15
    1940:	001045ad 	add.w	$r13,$r13,$r17
    1944:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19f4 <memset+0x1a4>
    1948:	29000185 	st.b	$r5,$r12,0
    194c:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1950:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19e8 <memset+0x198>
    1954:	29000585 	st.b	$r5,$r12,1(0x1)
    1958:	028009ae 	addi.w	$r14,$r13,2(0x2)
    195c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19e8 <memset+0x198>
    1960:	29000985 	st.b	$r5,$r12,2(0x2)
    1964:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1968:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19e8 <memset+0x198>
    196c:	29000d85 	st.b	$r5,$r12,3(0x3)
    1970:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1974:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19e8 <memset+0x198>
    1978:	29001185 	st.b	$r5,$r12,4(0x4)
    197c:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1980:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19e8 <memset+0x198>
    1984:	29001585 	st.b	$r5,$r12,5(0x5)
    1988:	028019ae 	addi.w	$r14,$r13,6(0x6)
    198c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19e8 <memset+0x198>
    1990:	29001985 	st.b	$r5,$r12,6(0x6)
    1994:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1998:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19e8 <memset+0x198>
    199c:	29001d85 	st.b	$r5,$r12,7(0x7)
    19a0:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19a4:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19e8 <memset+0x198>
    19a8:	29002185 	st.b	$r5,$r12,8(0x8)
    19ac:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19b0:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19e8 <memset+0x198>
    19b4:	29002585 	st.b	$r5,$r12,9(0x9)
    19b8:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19bc:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19e8 <memset+0x198>
    19c0:	29002985 	st.b	$r5,$r12,10(0xa)
    19c4:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19c8:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19e8 <memset+0x198>
    19cc:	29002d85 	st.b	$r5,$r12,11(0xb)
    19d0:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19d4:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19e8 <memset+0x198>
    19d8:	29003185 	st.b	$r5,$r12,12(0xc)
    19dc:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19e0:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19e8 <memset+0x198>
    19e4:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19e8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19ec:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19f0:	53ff03ff 	b	-256(0xfffff00) # 18f0 <memset+0xa0>
    19f4:	4c000020 	jirl	$r0,$r1,0
    19f8:	02800411 	addi.w	$r17,$r0,1(0x1)
    19fc:	53fef7ff 	b	-268(0xffffef4) # 18f0 <memset+0xa0>
    1a00:	0015008e 	move	$r14,$r4
    1a04:	00150011 	move	$r17,$r0
    1a08:	53feebff 	b	-280(0xffffee8) # 18f0 <memset+0xa0>
    1a0c:	0015008c 	move	$r12,$r4
    1a10:	0015000d 	move	$r13,$r0
    1a14:	53ff37ff 	b	-204(0xfffff34) # 1948 <memset+0xf8>
    1a18:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a1c:	53fed7ff 	b	-300(0xffffed4) # 18f0 <memset+0xa0>
    1a20:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a24:	53fecfff 	b	-308(0xffffecc) # 18f0 <memset+0xa0>
    1a28:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a2c:	53fec7ff 	b	-316(0xffffec4) # 18f0 <memset+0xa0>
    1a30:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a34:	53febfff 	b	-324(0xffffebc) # 18f0 <memset+0xa0>

0000000000001a38 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a38:	2800008c 	ld.b	$r12,$r4,0
    1a3c:	280000ae 	ld.b	$r14,$r5,0
    1a40:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a74 <strcmp+0x3c>
    1a44:	40003980 	beqz	$r12,56(0x38) # 1a7c <strcmp+0x44>
    1a48:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a4c:	50000800 	b	8(0x8) # 1a54 <strcmp+0x1c>
    1a50:	400019a0 	beqz	$r13,24(0x18) # 1a68 <strcmp+0x30>
    1a54:	3800308d 	ldx.b	$r13,$r4,$r12
    1a58:	380030ae 	ldx.b	$r14,$r5,$r12
    1a5c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a60:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a50 <strcmp+0x18>
    1a64:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a68:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a6c:	001111a4 	sub.w	$r4,$r13,$r4
    1a70:	4c000020 	jirl	$r0,$r1,0
    1a74:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a78:	53fff3ff 	b	-16(0xffffff0) # 1a68 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a7c:	0015000d 	move	$r13,$r0
    1a80:	53ffebff 	b	-24(0xfffffe8) # 1a68 <strcmp+0x30>

0000000000001a84 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a84:	400054c0 	beqz	$r6,84(0x54) # 1ad8 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a88:	2a00008d 	ld.bu	$r13,$r4,0
    1a8c:	2a0000ae 	ld.bu	$r14,$r5,0
    1a90:	40003da0 	beqz	$r13,60(0x3c) # 1acc <strncmp+0x48>
    1a94:	40003dc0 	beqz	$r14,60(0x3c) # 1ad0 <strncmp+0x4c>
    if (!n--)
    1a98:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a9c:	400034c0 	beqz	$r6,52(0x34) # 1ad0 <strncmp+0x4c>
    1aa0:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1aa4:	580019ae 	beq	$r13,$r14,24(0x18) # 1abc <strncmp+0x38>
    1aa8:	50002800 	b	40(0x28) # 1ad0 <strncmp+0x4c>
    1aac:	400035c0 	beqz	$r14,52(0x34) # 1ae0 <strncmp+0x5c>
    1ab0:	580020cc 	beq	$r6,$r12,32(0x20) # 1ad0 <strncmp+0x4c>
    1ab4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ab8:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ae0 <strncmp+0x5c>
    1abc:	3820308d 	ldx.bu	$r13,$r4,$r12
    1ac0:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ac4:	001501af 	move	$r15,$r13
    1ac8:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1aac <strncmp+0x28>
    1acc:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ad0:	001139a4 	sub.w	$r4,$r13,$r14
    1ad4:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ad8:	00150004 	move	$r4,$r0
}
    1adc:	4c000020 	jirl	$r0,$r1,0
    1ae0:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ae4:	001139a4 	sub.w	$r4,$r13,$r14
    1ae8:	4c000020 	jirl	$r0,$r1,0

0000000000001aec <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1aec:	03401c8c 	andi	$r12,$r4,0x7
    1af0:	4000b180 	beqz	$r12,176(0xb0) # 1ba0 <strlen+0xb4>
        if (!*s)
    1af4:	2800008c 	ld.b	$r12,$r4,0
    1af8:	4000b180 	beqz	$r12,176(0xb0) # 1ba8 <strlen+0xbc>
    1afc:	0015008c 	move	$r12,$r4
    1b00:	50000c00 	b	12(0xc) # 1b0c <strlen+0x20>
    1b04:	2800018d 	ld.b	$r13,$r12,0
    1b08:	400091a0 	beqz	$r13,144(0x90) # 1b98 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b0c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b10:	03401d8d 	andi	$r13,$r12,0x7
    1b14:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b04 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b18:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b1c:	2600018f 	ldptr.d	$r15,$r12,0
    1b20:	03bbfdad 	ori	$r13,$r13,0xeff
    1b24:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b28:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b2c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b30:	038201ce 	ori	$r14,$r14,0x80
    1b34:	0010b5ed 	add.d	$r13,$r15,$r13
    1b38:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b3c:	0016bdad 	andn	$r13,$r13,$r15
    1b40:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b44:	0014b9ae 	and	$r14,$r13,$r14
    1b48:	440049c0 	bnez	$r14,72(0x48) # 1b90 <strlen+0xa4>
    1b4c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b50:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b54:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b58:	2600018e 	ldptr.d	$r14,$r12,0
    1b5c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b60:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b64:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b68:	0382020f 	ori	$r15,$r16,0x80
    1b6c:	0010b5cd 	add.d	$r13,$r14,$r13
    1b70:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b74:	0016b9ad 	andn	$r13,$r13,$r14
    1b78:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b7c:	0014bdad 	and	$r13,$r13,$r15
    1b80:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b54 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b84:	2800018d 	ld.b	$r13,$r12,0
    1b88:	400011a0 	beqz	$r13,16(0x10) # 1b98 <strlen+0xac>
    1b8c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b90:	2800018d 	ld.b	$r13,$r12,0
    1b94:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b8c <strlen+0xa0>
        ;
    return s - a;
    1b98:	00119184 	sub.d	$r4,$r12,$r4
}
    1b9c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1ba0:	0015008c 	move	$r12,$r4
    1ba4:	53ff77ff 	b	-140(0xfffff74) # 1b18 <strlen+0x2c>
        if (!*s)
    1ba8:	00150004 	move	$r4,$r0
            return s - a;
    1bac:	4c000020 	jirl	$r0,$r1,0

0000000000001bb0 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bb0:	03401c8c 	andi	$r12,$r4,0x7
    1bb4:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bb8:	44002180 	bnez	$r12,32(0x20) # 1bd8 <memchr+0x28>
    1bbc:	50002c00 	b	44(0x2c) # 1be8 <memchr+0x38>
    1bc0:	2a00008c 	ld.bu	$r12,$r4,0
    1bc4:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cbc <memchr+0x10c>
    1bc8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bcc:	03401c8c 	andi	$r12,$r4,0x7
    1bd0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bd4:	40001580 	beqz	$r12,20(0x14) # 1be8 <memchr+0x38>
    1bd8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bc0 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bdc:	0015000d 	move	$r13,$r0
}
    1be0:	001501a4 	move	$r4,$r13
    1be4:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1be8:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bec:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1be0 <memchr+0x30>
    1bf0:	2a00008c 	ld.bu	$r12,$r4,0
    1bf4:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cbc <memchr+0x10c>
        size_t k = ONES * c;
    1bf8:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bfc:	0384058c 	ori	$r12,$r12,0x101
    1c00:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c04:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c08:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c0c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c10:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1ccc <memchr+0x11c>
    1c14:	2600008d 	ldptr.d	$r13,$r4,0
    1c18:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c1c:	038201ce 	ori	$r14,$r14,0x80
    1c20:	0015b60d 	xor	$r13,$r16,$r13
    1c24:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c28:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c2c:	0016b58c 	andn	$r12,$r12,$r13
    1c30:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c34:	0014b98c 	and	$r12,$r12,$r14
    1c38:	44009580 	bnez	$r12,148(0x94) # 1ccc <memchr+0x11c>
    1c3c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c40:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c44:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c48:	50002000 	b	32(0x20) # 1c68 <memchr+0xb8>
    1c4c:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c50:	0015b20c 	xor	$r12,$r16,$r12
    1c54:	0010b98e 	add.d	$r14,$r12,$r14
    1c58:	0016b1cc 	andn	$r12,$r14,$r12
    1c5c:	0014bd8c 	and	$r12,$r12,$r15
    1c60:	44006580 	bnez	$r12,100(0x64) # 1cc4 <memchr+0x114>
    1c64:	001501a4 	move	$r4,$r13
    1c68:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c6c:	0382022f 	ori	$r15,$r17,0x80
    1c70:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c74:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c78:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c7c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c80:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c84:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c88:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c4c <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c8c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bdc <memchr+0x2c>
    1c90:	2a0001ac 	ld.bu	$r12,$r13,0
    1c94:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1be0 <memchr+0x30>
    1c98:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c9c:	001099a6 	add.d	$r6,$r13,$r6
    1ca0:	50001000 	b	16(0x10) # 1cb0 <memchr+0x100>
    1ca4:	2a00018e 	ld.bu	$r14,$r12,0
    1ca8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1cac:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1be0 <memchr+0x30>
    1cb0:	0015018d 	move	$r13,$r12
    1cb4:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1ca4 <memchr+0xf4>
    1cb8:	53ff27ff 	b	-220(0xfffff24) # 1bdc <memchr+0x2c>
    1cbc:	0015008d 	move	$r13,$r4
    1cc0:	53ffd3ff 	b	-48(0xfffffd0) # 1c90 <memchr+0xe0>
    1cc4:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cc8:	53ffcfff 	b	-52(0xfffffcc) # 1c94 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ccc:	0015008d 	move	$r13,$r4
    1cd0:	53ffcbff 	b	-56(0xfffffc8) # 1c98 <memchr+0xe8>

0000000000001cd4 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cd4:	03401c8c 	andi	$r12,$r4,0x7
    1cd8:	40011980 	beqz	$r12,280(0x118) # 1df0 <strnlen+0x11c>
    1cdc:	4000f4a0 	beqz	$r5,244(0xf4) # 1dd0 <strnlen+0xfc>
    1ce0:	2a00008c 	ld.bu	$r12,$r4,0
    1ce4:	4000f580 	beqz	$r12,244(0xf4) # 1dd8 <strnlen+0x104>
    1ce8:	001500ac 	move	$r12,$r5
    1cec:	0015008d 	move	$r13,$r4
    1cf0:	50001000 	b	16(0x10) # 1d00 <strnlen+0x2c>
    1cf4:	4000dd80 	beqz	$r12,220(0xdc) # 1dd0 <strnlen+0xfc>
    1cf8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cfc:	4000e5c0 	beqz	$r14,228(0xe4) # 1de0 <strnlen+0x10c>
    1d00:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d04:	03401dae 	andi	$r14,$r13,0x7
    1d08:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d0c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cf4 <strnlen+0x20>
    if (n && *s != c)
    1d10:	4000c180 	beqz	$r12,192(0xc0) # 1dd0 <strnlen+0xfc>
    1d14:	2a0001ae 	ld.bu	$r14,$r13,0
    1d18:	4000c9c0 	beqz	$r14,200(0xc8) # 1de0 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d1c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d20:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dfc <strnlen+0x128>
    1d24:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d28:	260001b0 	ldptr.d	$r16,$r13,0
    1d2c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d30:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d34:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d38:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d3c:	038201ef 	ori	$r15,$r15,0x80
    1d40:	0010ba0e 	add.d	$r14,$r16,$r14
    1d44:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d48:	0016c1ce 	andn	$r14,$r14,$r16
    1d4c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d50:	0014bdcf 	and	$r15,$r14,$r15
    1d54:	4400a9e0 	bnez	$r15,168(0xa8) # 1dfc <strnlen+0x128>
    1d58:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d5c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d60:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d64:	50001c00 	b	28(0x1c) # 1d80 <strnlen+0xac>
    1d68:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d6c:	0010b9ee 	add.d	$r14,$r15,$r14
    1d70:	0016bdce 	andn	$r14,$r14,$r15
    1d74:	0014c1ce 	and	$r14,$r14,$r16
    1d78:	440071c0 	bnez	$r14,112(0x70) # 1de8 <strnlen+0x114>
    1d7c:	0015022d 	move	$r13,$r17
    1d80:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d84:	03820250 	ori	$r16,$r18,0x80
    1d88:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d8c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d90:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d94:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d98:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d9c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1da0:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d68 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1da4:	40002d80 	beqz	$r12,44(0x2c) # 1dd0 <strnlen+0xfc>
    1da8:	2a00022d 	ld.bu	$r13,$r17,0
    1dac:	400021a0 	beqz	$r13,32(0x20) # 1dcc <strnlen+0xf8>
    1db0:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1db4:	0010b22c 	add.d	$r12,$r17,$r12
    1db8:	001501b1 	move	$r17,$r13
    1dbc:	5800158d 	beq	$r12,$r13,20(0x14) # 1dd0 <strnlen+0xfc>
    1dc0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dc4:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1dc8:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1db8 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dcc:	00119225 	sub.d	$r5,$r17,$r4
}
    1dd0:	001500a4 	move	$r4,$r5
    1dd4:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dd8:	001500ac 	move	$r12,$r5
    1ddc:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1de0:	001501b1 	move	$r17,$r13
    1de4:	53ffc7ff 	b	-60(0xfffffc4) # 1da8 <strnlen+0xd4>
    1de8:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dec:	53ffc3ff 	b	-64(0xfffffc0) # 1dac <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1df0:	001500ac 	move	$r12,$r5
    1df4:	0015008d 	move	$r13,$r4
    1df8:	53ff1bff 	b	-232(0xfffff18) # 1d10 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dfc:	001501b1 	move	$r17,$r13
    1e00:	53ffb3ff 	b	-80(0xfffffb0) # 1db0 <strnlen+0xdc>

0000000000001e04 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e04:	0015948c 	xor	$r12,$r4,$r5
    1e08:	03401d8c 	andi	$r12,$r12,0x7
    1e0c:	4400ad80 	bnez	$r12,172(0xac) # 1eb8 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e10:	03401cac 	andi	$r12,$r5,0x7
    1e14:	40003180 	beqz	$r12,48(0x30) # 1e44 <strcpy+0x40>
            if (!(*d = *s))
    1e18:	280000ac 	ld.b	$r12,$r5,0
    1e1c:	2900008c 	st.b	$r12,$r4,0
    1e20:	44001580 	bnez	$r12,20(0x14) # 1e34 <strcpy+0x30>
    1e24:	5000bc00 	b	188(0xbc) # 1ee0 <strcpy+0xdc>
    1e28:	280000ac 	ld.b	$r12,$r5,0
    1e2c:	2900008c 	st.b	$r12,$r4,0
    1e30:	4000a980 	beqz	$r12,168(0xa8) # 1ed8 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e34:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e38:	03401cac 	andi	$r12,$r5,0x7
    1e3c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e40:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e28 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e44:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e48:	260000ae 	ldptr.d	$r14,$r5,0
    1e4c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e50:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e54:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e58:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e5c:	038201ad 	ori	$r13,$r13,0x80
    1e60:	0010b1cc 	add.d	$r12,$r14,$r12
    1e64:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e68:	0016b98c 	andn	$r12,$r12,$r14
    1e6c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e70:	0014b58c 	and	$r12,$r12,$r13
    1e74:	44004580 	bnez	$r12,68(0x44) # 1eb8 <strcpy+0xb4>
    1e78:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e7c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e80:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e84:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e88:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e8c:	260000ae 	ldptr.d	$r14,$r5,0
    1e90:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e94:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e98:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e9c:	038201ed 	ori	$r13,$r15,0x80
    1ea0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ea4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ea8:	0016b98c 	andn	$r12,$r12,$r14
    1eac:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1eb0:	0014b58c 	and	$r12,$r12,$r13
    1eb4:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e80 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1eb8:	280000ac 	ld.b	$r12,$r5,0
    1ebc:	2900008c 	st.b	$r12,$r4,0
    1ec0:	40001d80 	beqz	$r12,28(0x1c) # 1edc <strcpy+0xd8>
    1ec4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ec8:	280000ac 	ld.b	$r12,$r5,0
    1ecc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ed0:	2900008c 	st.b	$r12,$r4,0
    1ed4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ec4 <strcpy+0xc0>
        ;
    return d;
}
    1ed8:	4c000020 	jirl	$r0,$r1,0
    1edc:	4c000020 	jirl	$r0,$r1,0
    1ee0:	4c000020 	jirl	$r0,$r1,0

0000000000001ee4 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ee4:	0015948c 	xor	$r12,$r4,$r5
    1ee8:	03401d8c 	andi	$r12,$r12,0x7
    1eec:	4400ad80 	bnez	$r12,172(0xac) # 1f98 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ef0:	03401cac 	andi	$r12,$r5,0x7
    1ef4:	44010180 	bnez	$r12,256(0x100) # 1ff4 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ef8:	400100c0 	beqz	$r6,256(0x100) # 1ff8 <strncpy+0x114>
    1efc:	280000af 	ld.b	$r15,$r5,0
    1f00:	400105e0 	beqz	$r15,260(0x104) # 2004 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f04:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f08:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21e0 <strncpy+0x2fc>
    1f0c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f10:	260000ae 	ldptr.d	$r14,$r5,0
    1f14:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f18:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f1c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f20:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f24:	038201ad 	ori	$r13,$r13,0x80
    1f28:	0010b1cc 	add.d	$r12,$r14,$r12
    1f2c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f30:	0016b98c 	andn	$r12,$r12,$r14
    1f34:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f38:	0014b58c 	and	$r12,$r12,$r13
    1f3c:	4402a580 	bnez	$r12,676(0x2a4) # 21e0 <strncpy+0x2fc>
    1f40:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f44:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f48:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f4c:	50001c00 	b	28(0x1c) # 1f68 <strncpy+0x84>
    1f50:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f54:	0010b1cc 	add.d	$r12,$r14,$r12
    1f58:	0016b98c 	andn	$r12,$r12,$r14
    1f5c:	0014b58c 	and	$r12,$r12,$r13
    1f60:	44024580 	bnez	$r12,580(0x244) # 21a4 <strncpy+0x2c0>
    1f64:	001501e5 	move	$r5,$r15
    1f68:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f6c:	0382020d 	ori	$r13,$r16,0x80
    1f70:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f74:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f78:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f7c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f80:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f84:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f88:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f8c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f90:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f50 <strncpy+0x6c>
    1f94:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f98:	400060c0 	beqz	$r6,96(0x60) # 1ff8 <strncpy+0x114>
    1f9c:	280000ac 	ld.b	$r12,$r5,0
    1fa0:	0015008d 	move	$r13,$r4
    1fa4:	2900008c 	st.b	$r12,$r4,0
    1fa8:	44001580 	bnez	$r12,20(0x14) # 1fbc <strncpy+0xd8>
    1fac:	50005c00 	b	92(0x5c) # 2008 <strncpy+0x124>
    1fb0:	280000ac 	ld.b	$r12,$r5,0
    1fb4:	290001ac 	st.b	$r12,$r13,0
    1fb8:	40005180 	beqz	$r12,80(0x50) # 2008 <strncpy+0x124>
    1fbc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fc0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fc4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fc8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fb0 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fcc:	001501a4 	move	$r4,$r13
    1fd0:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fd4:	280000ac 	ld.b	$r12,$r5,0
    1fd8:	2900008c 	st.b	$r12,$r4,0
    1fdc:	40002980 	beqz	$r12,40(0x28) # 2004 <strncpy+0x120>
    1fe0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fe4:	03401cac 	andi	$r12,$r5,0x7
    1fe8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fec:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ff0:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ef8 <strncpy+0x14>
    1ff4:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fd4 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1ff8:	0015008d 	move	$r13,$r4
}
    1ffc:	001501a4 	move	$r4,$r13
    2000:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2004:	0015008d 	move	$r13,$r4
    2008:	0011b40c 	sub.d	$r12,$r0,$r13
    200c:	03401d8c 	andi	$r12,$r12,0x7
    2010:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2014:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2018:	02802c10 	addi.w	$r16,$r0,11(0xb)
    201c:	0013bdce 	masknez	$r14,$r14,$r15
    2020:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2024:	00133e0f 	maskeqz	$r15,$r16,$r15
    2028:	00153dce 	or	$r14,$r14,$r15
    202c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2030:	00131a31 	maskeqz	$r17,$r17,$r6
    2034:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2038:	001540d0 	or	$r16,$r6,$r16
    203c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21b4 <strncpy+0x2d0>
    2040:	40015980 	beqz	$r12,344(0x158) # 2198 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2044:	290001a0 	st.b	$r0,$r13,0
    2048:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    204c:	5801458f 	beq	$r12,$r15,324(0x144) # 2190 <strncpy+0x2ac>
    2050:	290005a0 	st.b	$r0,$r13,1(0x1)
    2054:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2058:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    205c:	5801658f 	beq	$r12,$r15,356(0x164) # 21c0 <strncpy+0x2dc>
    2060:	290009a0 	st.b	$r0,$r13,2(0x2)
    2064:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2068:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    206c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2188 <strncpy+0x2a4>
    2070:	29000da0 	st.b	$r0,$r13,3(0x3)
    2074:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2078:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    207c:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21c8 <strncpy+0x2e4>
    2080:	290011a0 	st.b	$r0,$r13,4(0x4)
    2084:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2088:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    208c:	5801458f 	beq	$r12,$r15,324(0x144) # 21d0 <strncpy+0x2ec>
    2090:	290015a0 	st.b	$r0,$r13,5(0x5)
    2094:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2098:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    209c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21d8 <strncpy+0x2f4>
    20a0:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20a4:	290019a0 	st.b	$r0,$r13,6(0x6)
    20a8:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20ac:	0011b210 	sub.d	$r16,$r16,$r12
    20b0:	00450e11 	srli.d	$r17,$r16,0x3
    20b4:	0010b1ac 	add.d	$r12,$r13,$r12
    20b8:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20bc:	27000180 	stptr.d	$r0,$r12,0
    20c0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20c4:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20bc <strncpy+0x1d8>
    20c8:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20cc:	0014c611 	and	$r17,$r16,$r17
    20d0:	0040822f 	slli.w	$r15,$r17,0x0
    20d4:	001049ef 	add.w	$r15,$r15,$r18
    20d8:	0010c5cc 	add.d	$r12,$r14,$r17
    20dc:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fcc <strncpy+0xe8>
    20e0:	29000180 	st.b	$r0,$r12,0
    20e4:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20e8:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fcc <strncpy+0xe8>
    20ec:	29000580 	st.b	$r0,$r12,1(0x1)
    20f0:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20f4:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fcc <strncpy+0xe8>
    20f8:	29000980 	st.b	$r0,$r12,2(0x2)
    20fc:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2100:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fcc <strncpy+0xe8>
    2104:	29000d80 	st.b	$r0,$r12,3(0x3)
    2108:	028011ee 	addi.w	$r14,$r15,4(0x4)
    210c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fcc <strncpy+0xe8>
    2110:	29001180 	st.b	$r0,$r12,4(0x4)
    2114:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2118:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fcc <strncpy+0xe8>
    211c:	29001580 	st.b	$r0,$r12,5(0x5)
    2120:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2124:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fcc <strncpy+0xe8>
    2128:	29001980 	st.b	$r0,$r12,6(0x6)
    212c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2130:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fcc <strncpy+0xe8>
    2134:	29001d80 	st.b	$r0,$r12,7(0x7)
    2138:	028021ee 	addi.w	$r14,$r15,8(0x8)
    213c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fcc <strncpy+0xe8>
    2140:	29002180 	st.b	$r0,$r12,8(0x8)
    2144:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2148:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fcc <strncpy+0xe8>
    214c:	29002580 	st.b	$r0,$r12,9(0x9)
    2150:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2154:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fcc <strncpy+0xe8>
    2158:	29002980 	st.b	$r0,$r12,10(0xa)
    215c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2160:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fcc <strncpy+0xe8>
    2164:	29002d80 	st.b	$r0,$r12,11(0xb)
    2168:	028031ee 	addi.w	$r14,$r15,12(0xc)
    216c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fcc <strncpy+0xe8>
    2170:	29003180 	st.b	$r0,$r12,12(0xc)
    2174:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2178:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fcc <strncpy+0xe8>
    217c:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2180:	001501a4 	move	$r4,$r13
    2184:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2188:	02800c12 	addi.w	$r18,$r0,3(0x3)
    218c:	53ff23ff 	b	-224(0xfffff20) # 20ac <strncpy+0x1c8>
    2190:	02800412 	addi.w	$r18,$r0,1(0x1)
    2194:	53ff1bff 	b	-232(0xfffff18) # 20ac <strncpy+0x1c8>
    2198:	001501ae 	move	$r14,$r13
    219c:	00150012 	move	$r18,$r0
    21a0:	53ff0fff 	b	-244(0xfffff0c) # 20ac <strncpy+0x1c8>
    21a4:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21a8:	0015008d 	move	$r13,$r4
    21ac:	001501e5 	move	$r5,$r15
    21b0:	53fdf7ff 	b	-524(0xffffdf4) # 1fa4 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21b4:	001501ac 	move	$r12,$r13
    21b8:	0015000f 	move	$r15,$r0
    21bc:	53ff27ff 	b	-220(0xfffff24) # 20e0 <strncpy+0x1fc>
    21c0:	02800812 	addi.w	$r18,$r0,2(0x2)
    21c4:	53feebff 	b	-280(0xffffee8) # 20ac <strncpy+0x1c8>
    21c8:	02801012 	addi.w	$r18,$r0,4(0x4)
    21cc:	53fee3ff 	b	-288(0xffffee0) # 20ac <strncpy+0x1c8>
    21d0:	02801412 	addi.w	$r18,$r0,5(0x5)
    21d4:	53fedbff 	b	-296(0xffffed8) # 20ac <strncpy+0x1c8>
    21d8:	02801812 	addi.w	$r18,$r0,6(0x6)
    21dc:	53fed3ff 	b	-304(0xffffed0) # 20ac <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21e0:	2900008f 	st.b	$r15,$r4,0
    21e4:	0015008d 	move	$r13,$r4
    21e8:	53fdd7ff 	b	-556(0xffffdd4) # 1fbc <strncpy+0xd8>

00000000000021ec <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21ec:	0015008c 	move	$r12,$r4
    21f0:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21f4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21f8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21fc:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2200:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2204:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2208:	00408084 	slli.w	$r4,$r4,0x0
}
    220c:	4c000020 	jirl	$r0,$r1,0

0000000000002210 <openat>:
    register long a7 __asm__("a7") = n;
    2210:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2214:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2218:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    221c:	00408084 	slli.w	$r4,$r4,0x0
}
    2220:	4c000020 	jirl	$r0,$r1,0

0000000000002224 <close>:
    register long a7 __asm__("a7") = n;
    2224:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2228:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    222c:	00408084 	slli.w	$r4,$r4,0x0
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <read>:
    register long a7 __asm__("a7") = n;
    2234:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2238:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <write>:
    register long a7 __asm__("a7") = n;
    2240:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2244:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <getpid>:
    register long a7 __asm__("a7") = n;
    224c:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2250:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2254:	00408084 	slli.w	$r4,$r4,0x0
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <getppid>:
    register long a7 __asm__("a7") = n;
    225c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2260:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2264:	00408084 	slli.w	$r4,$r4,0x0
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <sched_yield>:
    register long a7 __asm__("a7") = n;
    226c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2270:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2274:	00408084 	slli.w	$r4,$r4,0x0
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <fork>:
    register long a7 __asm__("a7") = n;
    227c:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2280:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2284:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2288:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    228c:	00408084 	slli.w	$r4,$r4,0x0
}
    2290:	4c000020 	jirl	$r0,$r1,0

0000000000002294 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2294:	001500c5 	move	$r5,$r6
    if (stack)
    2298:	400008c0 	beqz	$r6,8(0x8) # 22a0 <clone+0xc>
	stack += stack_size;
    229c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22a0:	00408106 	slli.w	$r6,$r8,0x0
    22a4:	00150009 	move	$r9,$r0
    22a8:	00150008 	move	$r8,$r0
    22ac:	00150007 	move	$r7,$r0
    22b0:	5002c800 	b	712(0x2c8) # 2578 <__clone>

00000000000022b4 <exit>:
    register long a7 __asm__("a7") = n;
    22b4:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22b8:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22bc:	4c000020 	jirl	$r0,$r1,0

00000000000022c0 <waitpid>:
    register long a7 __asm__("a7") = n;
    22c0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22c4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22c8:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22cc:	00408084 	slli.w	$r4,$r4,0x0
}
    22d0:	4c000020 	jirl	$r0,$r1,0

00000000000022d4 <exec>:
    register long a7 __asm__("a7") = n;
    22d4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22d8:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22dc:	00408084 	slli.w	$r4,$r4,0x0
}
    22e0:	4c000020 	jirl	$r0,$r1,0

00000000000022e4 <execve>:
    register long a7 __asm__("a7") = n;
    22e4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22e8:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22ec:	00408084 	slli.w	$r4,$r4,0x0
}
    22f0:	4c000020 	jirl	$r0,$r1,0

00000000000022f4 <times>:
    register long a7 __asm__("a7") = n;
    22f4:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22f8:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2300:	4c000020 	jirl	$r0,$r1,0

0000000000002304 <get_time>:

int64 get_time()
{
    2304:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2308:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    230c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2310:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2314:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2318:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    231c:	44003c80 	bnez	$r4,60(0x3c) # 2358 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2320:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2324:	039f3c8c 	ori	$r12,$r4,0x7cf
    2328:	28c02064 	ld.d	$r4,$r3,8(0x8)
    232c:	2a40006d 	ld.hu	$r13,$r3,0
    2330:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2334:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2338:	00450c84 	srli.d	$r4,$r4,0x3
    233c:	001eb084 	mulh.du	$r4,$r4,$r12
    2340:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2344:	001db1ac 	mul.d	$r12,$r13,$r12
    2348:	00451084 	srli.d	$r4,$r4,0x4
    234c:	00109184 	add.d	$r4,$r12,$r4
}
    2350:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2354:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2358:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    235c:	53fff7ff 	b	-12(0xffffff4) # 2350 <get_time+0x4c>

0000000000002360 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2360:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2364:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2368:	00408084 	slli.w	$r4,$r4,0x0
}
    236c:	4c000020 	jirl	$r0,$r1,0

0000000000002370 <time>:
    register long a7 __asm__("a7") = n;
    2370:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2374:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2378:	00408084 	slli.w	$r4,$r4,0x0
}
    237c:	4c000020 	jirl	$r0,$r1,0

0000000000002380 <sleep>:

int sleep(unsigned long long time)
{
    2380:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2384:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2388:	00150064 	move	$r4,$r3
    238c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2390:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2394:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2398:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    239c:	44001080 	bnez	$r4,16(0x10) # 23ac <sleep+0x2c>
    return 0;
    23a0:	00150004 	move	$r4,$r0
}
    23a4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23a8:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23ac:	24000064 	ldptr.w	$r4,$r3,0
}
    23b0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b4:	4c000020 	jirl	$r0,$r1,0

00000000000023b8 <set_priority>:
    register long a7 __asm__("a7") = n;
    23b8:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23bc:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23c0:	00408084 	slli.w	$r4,$r4,0x0
}
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23c8:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23cc:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <munmap>:
    register long a7 __asm__("a7") = n;
    23d4:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23d8:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <wait>:

int wait(int *code)
{
    23e4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23e8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23ec:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23f0:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23f4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23f8:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <spawn>:
    register long a7 __asm__("a7") = n;
    2404:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2408:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    240c:	00408084 	slli.w	$r4,$r4,0x0
}
    2410:	4c000020 	jirl	$r0,$r1,0

0000000000002414 <mailread>:
    register long a7 __asm__("a7") = n;
    2414:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2418:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2424:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2428:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    242c:	00408084 	slli.w	$r4,$r4,0x0
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <fstat>:
    register long a7 __asm__("a7") = n;
    2434:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2438:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2444:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2448:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    244c:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2450:	00408084 	slli.w	$r4,$r4,0x0
}
    2454:	4c000020 	jirl	$r0,$r1,0

0000000000002458 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2458:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    245c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2460:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2464:	00408084 	slli.w	$r4,$r4,0x0
}
    2468:	4c000020 	jirl	$r0,$r1,0

000000000000246c <link>:

int link(char *old_path, char *new_path)
{
    246c:	0015008c 	move	$r12,$r4
    2470:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2474:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2478:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    247c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2480:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2484:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2488:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    248c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <unlink>:

int unlink(char *path)
{
    2494:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2498:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    249c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24a0:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24a4:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <uname>:
    register long a7 __asm__("a7") = n;
    24b0:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24b4:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24b8:	00408084 	slli.w	$r4,$r4,0x0
}
    24bc:	4c000020 	jirl	$r0,$r1,0

00000000000024c0 <brk>:
    register long a7 __asm__("a7") = n;
    24c0:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24c4:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24c8:	00408084 	slli.w	$r4,$r4,0x0
}
    24cc:	4c000020 	jirl	$r0,$r1,0

00000000000024d0 <getcwd>:
    register long a7 __asm__("a7") = n;
    24d0:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24d4:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <chdir>:
    register long a7 __asm__("a7") = n;
    24dc:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24e0:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <mkdir>:

int mkdir(const char *path, mode_t mode){
    24ec:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24f0:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24f4:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24f8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24fc:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2500:	002b0000 	syscall	0x0
    2504:	00408084 	slli.w	$r4,$r4,0x0
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <getdents>:
    register long a7 __asm__("a7") = n;
    250c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2510:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <pipe>:
    register long a7 __asm__("a7") = n;
    251c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2520:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2524:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2528:	00408084 	slli.w	$r4,$r4,0x0
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <dup>:
    register long a7 __asm__("a7") = n;
    2530:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2534:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2538:	00408084 	slli.w	$r4,$r4,0x0
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <dup2>:
    register long a7 __asm__("a7") = n;
    2540:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2544:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2548:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    254c:	00408084 	slli.w	$r4,$r4,0x0
}
    2550:	4c000020 	jirl	$r0,$r1,0

0000000000002554 <mount>:
    register long a7 __asm__("a7") = n;
    2554:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2558:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    255c:	00408084 	slli.w	$r4,$r4,0x0
}
    2560:	4c000020 	jirl	$r0,$r1,0

0000000000002564 <umount>:
    register long a7 __asm__("a7") = n;
    2564:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2568:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    256c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2570:	00408084 	slli.w	$r4,$r4,0x0
}
    2574:	4c000020 	jirl	$r0,$r1,0

0000000000002578 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2578:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    257c:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2580:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2584:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2588:	00150106 	move	$r6,$r8
	move $a3, $a5
    258c:	00150127 	move	$r7,$r9
	move $a4, $a6
    2590:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2594:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2598:	002b0000 	syscall	0x0

	beqz $a0, 1f
    259c:	40000880 	beqz	$r4,8(0x8) # 25a4 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25a0:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25a4:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25a8:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25ac:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25b0:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25b4:	002b0000 	syscall	0x0
