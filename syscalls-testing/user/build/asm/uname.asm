
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/uname:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400c000 	bl	192(0xc0) # 10c4 <__start_main>

0000000000001008 <test_uname>:
	char domainname[65];
};

struct utsname un;

void test_uname() {
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d5d084 	addi.d	$r4,$r4,1396(0x574)
void test_uname() {
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
	TEST_START(__func__);
    1018:	5403b400 	bl	948(0x3b4) # 13cc <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02ddb084 	addi.d	$r4,$r4,1900(0x76c)
    1024:	5403a800 	bl	936(0x3a8) # 13cc <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    1030:	54039c00 	bl	924(0x39c) # 13cc <puts>
	int test_ret = uname(&un);
    1034:	1c000024 	pcaddu12i	$r4,1(0x1)
    1038:	28de1084 	ld.d	$r4,$r4,1924(0x784)
    103c:	54143800 	bl	5176(0x1438) # 2474 <uname>
	assert(test_ret >= 0);
    1040:	60005880 	blt	$r4,$r0,88(0x58) # 1098 <test_uname+0x90>

	printf("Uname: %s %s %s %s %s %s\n", 
    1044:	1c000025 	pcaddu12i	$r5,1(0x1)
    1048:	28ddd0a5 	ld.d	$r5,$r5,1908(0x774)
    104c:	02c514aa 	addi.d	$r10,$r5,325(0x145)
    1050:	02c410a9 	addi.d	$r9,$r5,260(0x104)
    1054:	02c30ca8 	addi.d	$r8,$r5,195(0xc3)
    1058:	02c208a7 	addi.d	$r7,$r5,130(0x82)
    105c:	02c104a6 	addi.d	$r6,$r5,65(0x41)
    1060:	1c000024 	pcaddu12i	$r4,1(0x1)
    1064:	02d5a084 	addi.d	$r4,$r4,1384(0x568)
    1068:	54039c00 	bl	924(0x39c) # 1404 <printf>
		un.sysname, un.nodename, un.release, un.version, un.machine, un.domainname);

	TEST_END(__func__);
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
    1074:	54035800 	bl	856(0x358) # 13cc <puts>
    1078:	1c000024 	pcaddu12i	$r4,1(0x1)
    107c:	02dc4084 	addi.d	$r4,$r4,1808(0x710)
    1080:	54034c00 	bl	844(0x34c) # 13cc <puts>
}
    1084:	28c02061 	ld.d	$r1,$r3,8(0x8)
	TEST_END(__func__);
    1088:	1c000024 	pcaddu12i	$r4,1(0x1)
    108c:	02d44084 	addi.d	$r4,$r4,1296(0x510)
}
    1090:	02c04063 	addi.d	$r3,$r3,16(0x10)
	TEST_END(__func__);
    1094:	50033800 	b	824(0x338) # 13cc <puts>
	assert(test_ret >= 0);
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d44084 	addi.d	$r4,$r4,1296(0x510)
    10a0:	54067400 	bl	1652(0x674) # 1714 <panic>
    10a4:	53ffa3ff 	b	-96(0xfffffa0) # 1044 <test_uname+0x3c>

00000000000010a8 <main>:

int main(void) {
    10a8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10ac:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_uname();
    10b0:	57ff5bff 	bl	-168(0xfffff58) # 1008 <test_uname>
	return 0;
}
    10b4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10b8:	00150004 	move	$r4,$r0
    10bc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10c0:	4c000020 	jirl	$r0,$r1,0

00000000000010c4 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10c4:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10c8:	24000084 	ldptr.w	$r4,$r4,0
{
    10cc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10d0:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10d4:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10d8:	57ffd3ff 	bl	-48(0xfffffd0) # 10a8 <main>
    10dc:	54119c00 	bl	4508(0x119c) # 2278 <exit>
	return 0;
}
    10e0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10e4:	00150004 	move	$r4,$r0
    10e8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10ec:	4c000020 	jirl	$r0,$r1,0

00000000000010f0 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10f0:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10f4:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10f8:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12c4 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10fc:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1100:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1104:	02da618c 	addi.d	$r12,$r12,1688(0x698)
    1108:	002195cf 	mod.wu	$r15,$r14,$r5
    110c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1114 <printint.constprop.0+0x24>
    1110:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1114:	002115cd 	div.wu	$r13,$r14,$r5
    1118:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1120 <printint.constprop.0+0x30>
    111c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1120:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1124:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1128:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    112c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1130:	680219c5 	bltu	$r14,$r5,536(0x218) # 1348 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1134:	002195af 	mod.wu	$r15,$r13,$r5
    1138:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1140 <printint.constprop.0+0x50>
    113c:	002a0007 	break	0x7
    1140:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1144:	002115ae 	div.wu	$r14,$r13,$r5
    1148:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1150 <printint.constprop.0+0x60>
    114c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1150:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1154:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1158:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1318 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    115c:	002195cf 	mod.wu	$r15,$r14,$r5
    1160:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1168 <printint.constprop.0+0x78>
    1164:	002a0007 	break	0x7
    1168:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    116c:	002115cd 	div.wu	$r13,$r14,$r5
    1170:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1178 <printint.constprop.0+0x88>
    1174:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1178:	38203d8f 	ldx.bu	$r15,$r12,$r15
    117c:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1180:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1324 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1184:	002195af 	mod.wu	$r15,$r13,$r5
    1188:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1190 <printint.constprop.0+0xa0>
    118c:	002a0007 	break	0x7
    1190:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1194:	002115ae 	div.wu	$r14,$r13,$r5
    1198:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a0 <printint.constprop.0+0xb0>
    119c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11a4:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11a8:	680189a5 	bltu	$r13,$r5,392(0x188) # 1330 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11ac:	002195cf 	mod.wu	$r15,$r14,$r5
    11b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b8 <printint.constprop.0+0xc8>
    11b4:	002a0007 	break	0x7
    11b8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11bc:	002115cd 	div.wu	$r13,$r14,$r5
    11c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c8 <printint.constprop.0+0xd8>
    11c4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11cc:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11d0:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 133c <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11d4:	002195af 	mod.wu	$r15,$r13,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0xf0>
    11dc:	002a0007 	break	0x7
    11e0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e4:	002115ae 	div.wu	$r14,$r13,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0x100>
    11ec:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f4:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11f8:	680115a5 	bltu	$r13,$r5,276(0x114) # 130c <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11fc:	002195cf 	mod.wu	$r15,$r14,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0x118>
    1204:	002a0007 	break	0x7
    1208:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    120c:	002115cd 	div.wu	$r13,$r14,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0x128>
    1214:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1218:	38203d8f 	ldx.bu	$r15,$r12,$r15
    121c:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1220:	680131c5 	bltu	$r14,$r5,304(0x130) # 1350 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1224:	002195af 	mod.wu	$r15,$r13,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0x140>
    122c:	002a0007 	break	0x7
    1230:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1234:	002115ae 	div.wu	$r14,$r13,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0x150>
    123c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1240:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1244:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1248:	680115a5 	bltu	$r13,$r5,276(0x114) # 135c <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    124c:	002195cf 	mod.wu	$r15,$r14,$r5
    1250:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1258 <printint.constprop.0+0x168>
    1254:	002a0007 	break	0x7
    1258:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    125c:	002115cd 	div.wu	$r13,$r14,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0x178>
    1264:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1268:	38203d8f 	ldx.bu	$r15,$r12,$r15
    126c:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1270:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1368 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1274:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1278:	3820358d 	ldx.bu	$r13,$r12,$r13
    127c:	02801805 	addi.w	$r5,$r0,6(0x6)
    1280:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1284:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1288:	64001880 	bge	$r4,$r0,24(0x18) # 12a0 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    128c:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1290:	0010b1ad 	add.d	$r13,$r13,$r12
    1294:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1298:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    129c:	00150185 	move	$r5,$r12
    write(f, s, l);
    12a0:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12a4:	02804006 	addi.w	$r6,$r0,16(0x10)
    12a8:	001114c6 	sub.w	$r6,$r6,$r5
    12ac:	02800404 	addi.w	$r4,$r0,1(0x1)
    12b0:	00109585 	add.d	$r5,$r12,$r5
    12b4:	540f5000 	bl	3920(0xf50) # 2204 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12b8:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12bc:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12c0:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12c4:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12c8:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12cc:	02d3418c 	addi.d	$r12,$r12,1232(0x4d0)
    12d0:	002195cf 	mod.wu	$r15,$r14,$r5
    12d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12dc <printint.constprop.0+0x1ec>
    12d8:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12dc:	002115cd 	div.wu	$r13,$r14,$r5
    12e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12e8 <printint.constprop.0+0x1f8>
    12e4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12e8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12ec:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12f0:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12f4:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12f8:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1134 <printint.constprop.0+0x44>
        buf[i--] = '-';
    12fc:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1300:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1304:	02803805 	addi.w	$r5,$r0,14(0xe)
    1308:	53ff9bff 	b	-104(0xfffff98) # 12a0 <printint.constprop.0+0x1b0>
    130c:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1310:	02802805 	addi.w	$r5,$r0,10(0xa)
    1314:	53ff77ff 	b	-140(0xfffff74) # 1288 <printint.constprop.0+0x198>
    1318:	0280340c 	addi.w	$r12,$r0,13(0xd)
    131c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1320:	53ff6bff 	b	-152(0xfffff68) # 1288 <printint.constprop.0+0x198>
    1324:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1328:	02803405 	addi.w	$r5,$r0,13(0xd)
    132c:	53ff5fff 	b	-164(0xfffff5c) # 1288 <printint.constprop.0+0x198>
    1330:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1334:	02803005 	addi.w	$r5,$r0,12(0xc)
    1338:	53ff53ff 	b	-176(0xfffff50) # 1288 <printint.constprop.0+0x198>
    133c:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1340:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1344:	53ff47ff 	b	-188(0xfffff44) # 1288 <printint.constprop.0+0x198>
    i = 15;
    1348:	02803c05 	addi.w	$r5,$r0,15(0xf)
    134c:	53ff57ff 	b	-172(0xfffff54) # 12a0 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1350:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1354:	02802405 	addi.w	$r5,$r0,9(0x9)
    1358:	53ff33ff 	b	-208(0xfffff30) # 1288 <printint.constprop.0+0x198>
    135c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1360:	02802005 	addi.w	$r5,$r0,8(0x8)
    1364:	53ff27ff 	b	-220(0xfffff24) # 1288 <printint.constprop.0+0x198>
    1368:	0280180c 	addi.w	$r12,$r0,6(0x6)
    136c:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1370:	53ff1bff 	b	-232(0xfffff18) # 1288 <printint.constprop.0+0x198>

0000000000001374 <getchar>:
{
    1374:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1378:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    137c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1380:	00150004 	move	$r4,$r0
{
    1384:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1388:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    138c:	540e6c00 	bl	3692(0xe6c) # 21f8 <read>
}
    1390:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1394:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1398:	02c08063 	addi.d	$r3,$r3,32(0x20)
    139c:	4c000020 	jirl	$r0,$r1,0

00000000000013a0 <putchar>:
{
    13a0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13a4:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13a8:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13ac:	02800406 	addi.w	$r6,$r0,1(0x1)
    13b0:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13b4:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13b8:	540e4c00 	bl	3660(0xe4c) # 2204 <write>
}
    13bc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13c0:	00408084 	slli.w	$r4,$r4,0x0
}
    13c4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13c8:	4c000020 	jirl	$r0,$r1,0

00000000000013cc <puts>:
{
    13cc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13d0:	29c02061 	st.d	$r1,$r3,8(0x8)
    13d4:	27000077 	stptr.d	$r23,$r3,0
    13d8:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13dc:	5406d400 	bl	1748(0x6d4) # 1ab0 <strlen>
    13e0:	00150086 	move	$r6,$r4
    13e4:	001502e5 	move	$r5,$r23
    13e8:	02800404 	addi.w	$r4,$r0,1(0x1)
    13ec:	540e1800 	bl	3608(0xe18) # 2204 <write>
}
    13f0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13f4:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13f8:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13fc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1400:	4c000020 	jirl	$r0,$r1,0

0000000000001404 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1404:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1408:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    140c:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1410:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1414:	29c14079 	st.d	$r25,$r3,80(0x50)
    1418:	29c1007b 	st.d	$r27,$r3,64(0x40)
    141c:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1420:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1424:	29c18077 	st.d	$r23,$r3,96(0x60)
    1428:	29c16078 	st.d	$r24,$r3,88(0x58)
    142c:	0015009b 	move	$r27,$r4
    1430:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1434:	29c20066 	st.d	$r6,$r3,128(0x80)
    1438:	29c22067 	st.d	$r7,$r3,136(0x88)
    143c:	29c24068 	st.d	$r8,$r3,144(0x90)
    1440:	29c26069 	st.d	$r9,$r3,152(0x98)
    1444:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1448:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    144c:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1450:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1454:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1458:	1c00003c 	pcaddu12i	$r28,1(0x1)
    145c:	02cd039c 	addi.d	$r28,$r28,832(0x340)
        if (!*s)
    1460:	2800036c 	ld.b	$r12,$r27,0
    1464:	40008980 	beqz	$r12,136(0x88) # 14ec <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1468:	58027d99 	beq	$r12,$r25,636(0x27c) # 16e4 <printf+0x2e0>
    146c:	00150366 	move	$r6,$r27
    1470:	50000800 	b	8(0x8) # 1478 <printf+0x74>
    1474:	58009d99 	beq	$r12,$r25,156(0x9c) # 1510 <printf+0x10c>
    1478:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    147c:	280000cc 	ld.b	$r12,$r6,0
    1480:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1474 <printf+0x70>
    1484:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1488:	0011ecd7 	sub.d	$r23,$r6,$r27
    148c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1490:	001502e6 	move	$r6,$r23
    1494:	00150365 	move	$r5,$r27
    1498:	02800404 	addi.w	$r4,$r0,1(0x1)
    149c:	540d6800 	bl	3432(0xd68) # 2204 <write>
        out(f, a, l);
        if (l)
    14a0:	4400b6e0 	bnez	$r23,180(0xb4) # 1554 <printf+0x150>
            continue;
        if (s[1] == 0)
    14a4:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14a8:	40004580 	beqz	$r12,68(0x44) # 14ec <printf+0xe8>
            break;
        switch (s[1])
    14ac:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14b0:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1584 <printf+0x180>
    14b4:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 155c <printf+0x158>
    14b8:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14bc:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16ac <printf+0x2a8>
    14c0:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14c4:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1674 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14c8:	2600006c 	ldptr.d	$r12,$r3,0
    14cc:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14d0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14d4:	24000184 	ldptr.w	$r4,$r12,0
    14d8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14dc:	2700006c 	stptr.d	$r12,$r3,0
    14e0:	57fc13ff 	bl	-1008(0xffffc10) # 10f0 <printint.constprop.0>
        if (!*s)
    14e4:	2800036c 	ld.b	$r12,$r27,0
    14e8:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1468 <printf+0x64>
    }
    va_end(ap);
}
    14ec:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14f0:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14f4:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14f8:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14fc:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1500:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1504:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1508:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    150c:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1510:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1514:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1484 <printf+0x80>
    1518:	001500d8 	move	$r24,$r6
    151c:	50000c00 	b	12(0xc) # 1528 <printf+0x124>
    1520:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1524:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1488 <printf+0x84>
    1528:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    152c:	2800030c 	ld.b	$r12,$r24,0
    1530:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1534:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1520 <printf+0x11c>
        l = z - a;
    1538:	0011ecd7 	sub.d	$r23,$r6,$r27
    153c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1540:	001502e6 	move	$r6,$r23
    1544:	00150365 	move	$r5,$r27
    1548:	02800404 	addi.w	$r4,$r0,1(0x1)
    154c:	540cb800 	bl	3256(0xcb8) # 2204 <write>
        if (l)
    1550:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14a4 <printf+0xa0>
    1554:	0015031b 	move	$r27,$r24
    1558:	53ff0bff 	b	-248(0xfffff08) # 1460 <printf+0x5c>
        switch (s[1])
    155c:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1560:	5c01158d 	bne	$r12,$r13,276(0x114) # 1674 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1564:	2600006c 	ldptr.d	$r12,$r3,0
    1568:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    156c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1570:	24000184 	ldptr.w	$r4,$r12,0
    1574:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1578:	2700006c 	stptr.d	$r12,$r3,0
    157c:	57fb77ff 	bl	-1164(0xffffb74) # 10f0 <printint.constprop.0>
        s += 2;
    1580:	53ff67ff 	b	-156(0xfffff64) # 14e4 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1584:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1588:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    158c:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1590:	260001ac 	ldptr.d	$r12,$r13,0
    1594:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1598:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    159c:	0045f18a 	srli.d	$r10,$r12,0x3c
    15a0:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15a4:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15a8:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15ac:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15b0:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15b4:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15b8:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15bc:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15c0:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15c4:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15c8:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15cc:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15d0:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15d4:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15d8:	3820278a 	ldx.bu	$r10,$r28,$r9
    15dc:	38202389 	ldx.bu	$r9,$r28,$r8
    15e0:	38201f88 	ldx.bu	$r8,$r28,$r7
    15e4:	38201787 	ldx.bu	$r7,$r28,$r5
    15e8:	38201385 	ldx.bu	$r5,$r28,$r4
    15ec:	38205384 	ldx.bu	$r4,$r28,$r20
    15f0:	38204f94 	ldx.bu	$r20,$r28,$r19
    15f4:	38204b93 	ldx.bu	$r19,$r28,$r18
    15f8:	38204792 	ldx.bu	$r18,$r28,$r17
    15fc:	38204391 	ldx.bu	$r17,$r28,$r16
    1600:	38203f90 	ldx.bu	$r16,$r28,$r15
    1604:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1608:	3820378e 	ldx.bu	$r14,$r28,$r13
    160c:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1610:	03403d8c 	andi	$r12,$r12,0xf
    1614:	2900286b 	st.b	$r11,$r3,10(0xa)
    1618:	29002c6a 	st.b	$r10,$r3,11(0xb)
    161c:	29003069 	st.b	$r9,$r3,12(0xc)
    1620:	29003468 	st.b	$r8,$r3,13(0xd)
    1624:	29003867 	st.b	$r7,$r3,14(0xe)
    1628:	29003c65 	st.b	$r5,$r3,15(0xf)
    162c:	29004064 	st.b	$r4,$r3,16(0x10)
    1630:	29004474 	st.b	$r20,$r3,17(0x11)
    1634:	29004873 	st.b	$r19,$r3,18(0x12)
    1638:	29004c72 	st.b	$r18,$r3,19(0x13)
    163c:	29005071 	st.b	$r17,$r3,20(0x14)
    1640:	29005470 	st.b	$r16,$r3,21(0x15)
    1644:	2900586f 	st.b	$r15,$r3,22(0x16)
    1648:	29005c6e 	st.b	$r14,$r3,23(0x17)
    164c:	3820378d 	ldx.bu	$r13,$r28,$r13
    1650:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1654:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1658:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    165c:	2900606d 	st.b	$r13,$r3,24(0x18)
    1660:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1664:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1668:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    166c:	540b9800 	bl	2968(0xb98) # 2204 <write>
        s += 2;
    1670:	53fe77ff 	b	-396(0xffffe74) # 14e4 <printf+0xe0>
    char byte = c;
    1674:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1678:	02800406 	addi.w	$r6,$r0,1(0x1)
    167c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1680:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1684:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1688:	540b7c00 	bl	2940(0xb7c) # 2204 <write>
    char byte = c;
    168c:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1690:	02800406 	addi.w	$r6,$r0,1(0x1)
    1694:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1698:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    169c:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16a0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16a4:	540b6000 	bl	2912(0xb60) # 2204 <write>
        s += 2;
    16a8:	53fe3fff 	b	-452(0xffffe3c) # 14e4 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16ac:	2600006c 	ldptr.d	$r12,$r3,0
    16b0:	26000197 	ldptr.d	$r23,$r12,0
    16b4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16b8:	2700006c 	stptr.d	$r12,$r3,0
    16bc:	40004ee0 	beqz	$r23,76(0x4c) # 1708 <printf+0x304>
            l = strnlen(a, 200);
    16c0:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16c4:	001502e4 	move	$r4,$r23
    16c8:	5405d000 	bl	1488(0x5d0) # 1c98 <strnlen>
    16cc:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16d0:	001502e5 	move	$r5,$r23
    16d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    16d8:	540b2c00 	bl	2860(0xb2c) # 2204 <write>
        s += 2;
    16dc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16e0:	53fe07ff 	b	-508(0xffffe04) # 14e4 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16e4:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16e8:	00150366 	move	$r6,$r27
    16ec:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1518 <printf+0x114>
    write(f, s, l);
    16f0:	00150006 	move	$r6,$r0
    16f4:	00150365 	move	$r5,$r27
    16f8:	02800404 	addi.w	$r4,$r0,1(0x1)
    16fc:	540b0800 	bl	2824(0xb08) # 2204 <write>
    1700:	00150378 	move	$r24,$r27
    1704:	53fda3ff 	b	-608(0xffffda0) # 14a4 <printf+0xa0>
                a = "(null)";
    1708:	1c000037 	pcaddu12i	$r23,1(0x1)
    170c:	02fbc2f7 	addi.d	$r23,$r23,-272(0xef0)
    1710:	53ffb3ff 	b	-80(0xfffffb0) # 16c0 <printf+0x2bc>

0000000000001714 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1714:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1718:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    171c:	57fcb3ff 	bl	-848(0xffffcb0) # 13cc <puts>
    exit(-100);
}
    1720:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1724:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1728:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    172c:	500b4c00 	b	2892(0xb4c) # 2278 <exit>

0000000000001730 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1730:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1734:	5800108c 	beq	$r4,$r12,16(0x10) # 1744 <isspace+0x14>
    1738:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    173c:	02401484 	sltui	$r4,$r4,5(0x5)
    1740:	4c000020 	jirl	$r0,$r1,0
    1744:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1748:	4c000020 	jirl	$r0,$r1,0

000000000000174c <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    174c:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1750:	02402884 	sltui	$r4,$r4,10(0xa)
    1754:	4c000020 	jirl	$r0,$r1,0

0000000000001758 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1758:	0280800e 	addi.w	$r14,$r0,32(0x20)
    175c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1760:	2800008d 	ld.b	$r13,$r4,0
    1764:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1768:	580061ae 	beq	$r13,$r14,96(0x60) # 17c8 <atoi+0x70>
    176c:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17c8 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1770:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1774:	580065ac 	beq	$r13,$r12,100(0x64) # 17d8 <atoi+0x80>
    1778:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    177c:	58007dac 	beq	$r13,$r12,124(0x7c) # 17f8 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1780:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1784:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1788:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    178c:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1790:	680061cf 	bltu	$r14,$r15,96(0x60) # 17f0 <atoi+0x98>
    int n = 0, neg = 0;
    1794:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1798:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    179c:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17a0:	001c126f 	mul.w	$r15,$r19,$r4
    17a4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17a8:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17ac:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17b0:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17b4:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17b8:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17bc:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17a0 <atoi+0x48>
    return neg ? n : -n;
    17c0:	40001280 	beqz	$r20,16(0x10) # 17d0 <atoi+0x78>
}
    17c4:	4c000020 	jirl	$r0,$r1,0
        s++;
    17c8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17cc:	53ff97ff 	b	-108(0xfffff94) # 1760 <atoi+0x8>
    17d0:	00113e04 	sub.w	$r4,$r16,$r15
    17d4:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17d8:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17dc:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17e0:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17e4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17e8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17ec:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1794 <atoi+0x3c>
    17f0:	00150004 	move	$r4,$r0
}
    17f4:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17f8:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17fc:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1800:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1804:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1808:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17f0 <atoi+0x98>
        neg = 1;
    180c:	02800414 	addi.w	$r20,$r0,1(0x1)
    1810:	53ff87ff 	b	-124(0xfffff84) # 1794 <atoi+0x3c>

0000000000001814 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1814:	400198c0 	beqz	$r6,408(0x198) # 19ac <memset+0x198>
    1818:	0011900c 	sub.d	$r12,$r0,$r4
    181c:	03401d8c 	andi	$r12,$r12,0x7
    1820:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1824:	02402dae 	sltui	$r14,$r13,11(0xb)
    1828:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    182c:	0013b9ad 	masknez	$r13,$r13,$r14
    1830:	001339ee 	maskeqz	$r14,$r15,$r14
    1834:	001539ad 	or	$r13,$r13,$r14
    1838:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    183c:	00005ca5 	ext.w.b	$r5,$r5
    1840:	680191ed 	bltu	$r15,$r13,400(0x190) # 19d0 <memset+0x1bc>
    1844:	40018180 	beqz	$r12,384(0x180) # 19c4 <memset+0x1b0>
    1848:	29000085 	st.b	$r5,$r4,0
    184c:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1850:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1854:	5801698d 	beq	$r12,$r13,360(0x168) # 19bc <memset+0x1a8>
    1858:	29000485 	st.b	$r5,$r4,1(0x1)
    185c:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1860:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1864:	5801798d 	beq	$r12,$r13,376(0x178) # 19dc <memset+0x1c8>
    1868:	29000885 	st.b	$r5,$r4,2(0x2)
    186c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1870:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1874:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19b0 <memset+0x19c>
    1878:	29000c85 	st.b	$r5,$r4,3(0x3)
    187c:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1880:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1884:	5801618d 	beq	$r12,$r13,352(0x160) # 19e4 <memset+0x1d0>
    1888:	29001085 	st.b	$r5,$r4,4(0x4)
    188c:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1890:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1894:	5801598d 	beq	$r12,$r13,344(0x158) # 19ec <memset+0x1d8>
    1898:	29001485 	st.b	$r5,$r4,5(0x5)
    189c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18a0:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18a4:	5c01518d 	bne	$r12,$r13,336(0x150) # 19f4 <memset+0x1e0>
    18a8:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18ac:	29001885 	st.b	$r5,$r4,6(0x6)
    18b0:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18b4:	0015000d 	move	$r13,$r0
    18b8:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18bc:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18c0:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18c4:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18c8:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18cc:	0011b0d0 	sub.d	$r16,$r6,$r12
    18d0:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18d4:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18d8:	0010b08c 	add.d	$r12,$r4,$r12
    18dc:	00450e0f 	srli.d	$r15,$r16,0x3
    18e0:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18e4:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18e8:	2700018d 	stptr.d	$r13,$r12,0
    18ec:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18f0:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18e8 <memset+0xd4>
    18f4:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18f8:	0014be0f 	and	$r15,$r16,$r15
    18fc:	004081ed 	slli.w	$r13,$r15,0x0
    1900:	0010bdcc 	add.d	$r12,$r14,$r15
    1904:	001045ad 	add.w	$r13,$r13,$r17
    1908:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19b8 <memset+0x1a4>
    190c:	29000185 	st.b	$r5,$r12,0
    1910:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1914:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19ac <memset+0x198>
    1918:	29000585 	st.b	$r5,$r12,1(0x1)
    191c:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1920:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19ac <memset+0x198>
    1924:	29000985 	st.b	$r5,$r12,2(0x2)
    1928:	02800dae 	addi.w	$r14,$r13,3(0x3)
    192c:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19ac <memset+0x198>
    1930:	29000d85 	st.b	$r5,$r12,3(0x3)
    1934:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1938:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19ac <memset+0x198>
    193c:	29001185 	st.b	$r5,$r12,4(0x4)
    1940:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1944:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19ac <memset+0x198>
    1948:	29001585 	st.b	$r5,$r12,5(0x5)
    194c:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1950:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19ac <memset+0x198>
    1954:	29001985 	st.b	$r5,$r12,6(0x6)
    1958:	02801dae 	addi.w	$r14,$r13,7(0x7)
    195c:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19ac <memset+0x198>
    1960:	29001d85 	st.b	$r5,$r12,7(0x7)
    1964:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1968:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19ac <memset+0x198>
    196c:	29002185 	st.b	$r5,$r12,8(0x8)
    1970:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1974:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19ac <memset+0x198>
    1978:	29002585 	st.b	$r5,$r12,9(0x9)
    197c:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1980:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19ac <memset+0x198>
    1984:	29002985 	st.b	$r5,$r12,10(0xa)
    1988:	02802dae 	addi.w	$r14,$r13,11(0xb)
    198c:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19ac <memset+0x198>
    1990:	29002d85 	st.b	$r5,$r12,11(0xb)
    1994:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1998:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19ac <memset+0x198>
    199c:	29003185 	st.b	$r5,$r12,12(0xc)
    19a0:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19a4:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19ac <memset+0x198>
    19a8:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19ac:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19b0:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19b4:	53ff03ff 	b	-256(0xfffff00) # 18b4 <memset+0xa0>
    19b8:	4c000020 	jirl	$r0,$r1,0
    19bc:	02800411 	addi.w	$r17,$r0,1(0x1)
    19c0:	53fef7ff 	b	-268(0xffffef4) # 18b4 <memset+0xa0>
    19c4:	0015008e 	move	$r14,$r4
    19c8:	00150011 	move	$r17,$r0
    19cc:	53feebff 	b	-280(0xffffee8) # 18b4 <memset+0xa0>
    19d0:	0015008c 	move	$r12,$r4
    19d4:	0015000d 	move	$r13,$r0
    19d8:	53ff37ff 	b	-204(0xfffff34) # 190c <memset+0xf8>
    19dc:	02800811 	addi.w	$r17,$r0,2(0x2)
    19e0:	53fed7ff 	b	-300(0xffffed4) # 18b4 <memset+0xa0>
    19e4:	02801011 	addi.w	$r17,$r0,4(0x4)
    19e8:	53fecfff 	b	-308(0xffffecc) # 18b4 <memset+0xa0>
    19ec:	02801411 	addi.w	$r17,$r0,5(0x5)
    19f0:	53fec7ff 	b	-316(0xffffec4) # 18b4 <memset+0xa0>
    19f4:	02801811 	addi.w	$r17,$r0,6(0x6)
    19f8:	53febfff 	b	-324(0xffffebc) # 18b4 <memset+0xa0>

00000000000019fc <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19fc:	2800008c 	ld.b	$r12,$r4,0
    1a00:	280000ae 	ld.b	$r14,$r5,0
    1a04:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a38 <strcmp+0x3c>
    1a08:	40003980 	beqz	$r12,56(0x38) # 1a40 <strcmp+0x44>
    1a0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a10:	50000800 	b	8(0x8) # 1a18 <strcmp+0x1c>
    1a14:	400019a0 	beqz	$r13,24(0x18) # 1a2c <strcmp+0x30>
    1a18:	3800308d 	ldx.b	$r13,$r4,$r12
    1a1c:	380030ae 	ldx.b	$r14,$r5,$r12
    1a20:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a24:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a14 <strcmp+0x18>
    1a28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a2c:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a30:	001111a4 	sub.w	$r4,$r13,$r4
    1a34:	4c000020 	jirl	$r0,$r1,0
    1a38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a3c:	53fff3ff 	b	-16(0xffffff0) # 1a2c <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a40:	0015000d 	move	$r13,$r0
    1a44:	53ffebff 	b	-24(0xfffffe8) # 1a2c <strcmp+0x30>

0000000000001a48 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a48:	400054c0 	beqz	$r6,84(0x54) # 1a9c <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a4c:	2a00008d 	ld.bu	$r13,$r4,0
    1a50:	2a0000ae 	ld.bu	$r14,$r5,0
    1a54:	40003da0 	beqz	$r13,60(0x3c) # 1a90 <strncmp+0x48>
    1a58:	40003dc0 	beqz	$r14,60(0x3c) # 1a94 <strncmp+0x4c>
    if (!n--)
    1a5c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a60:	400034c0 	beqz	$r6,52(0x34) # 1a94 <strncmp+0x4c>
    1a64:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a68:	580019ae 	beq	$r13,$r14,24(0x18) # 1a80 <strncmp+0x38>
    1a6c:	50002800 	b	40(0x28) # 1a94 <strncmp+0x4c>
    1a70:	400035c0 	beqz	$r14,52(0x34) # 1aa4 <strncmp+0x5c>
    1a74:	580020cc 	beq	$r6,$r12,32(0x20) # 1a94 <strncmp+0x4c>
    1a78:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a7c:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1aa4 <strncmp+0x5c>
    1a80:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a84:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a88:	001501af 	move	$r15,$r13
    1a8c:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a70 <strncmp+0x28>
    1a90:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a94:	001139a4 	sub.w	$r4,$r13,$r14
    1a98:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a9c:	00150004 	move	$r4,$r0
}
    1aa0:	4c000020 	jirl	$r0,$r1,0
    1aa4:	001501ed 	move	$r13,$r15
    return *l - *r;
    1aa8:	001139a4 	sub.w	$r4,$r13,$r14
    1aac:	4c000020 	jirl	$r0,$r1,0

0000000000001ab0 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ab0:	03401c8c 	andi	$r12,$r4,0x7
    1ab4:	4000b180 	beqz	$r12,176(0xb0) # 1b64 <strlen+0xb4>
        if (!*s)
    1ab8:	2800008c 	ld.b	$r12,$r4,0
    1abc:	4000b180 	beqz	$r12,176(0xb0) # 1b6c <strlen+0xbc>
    1ac0:	0015008c 	move	$r12,$r4
    1ac4:	50000c00 	b	12(0xc) # 1ad0 <strlen+0x20>
    1ac8:	2800018d 	ld.b	$r13,$r12,0
    1acc:	400091a0 	beqz	$r13,144(0x90) # 1b5c <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ad0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ad4:	03401d8d 	andi	$r13,$r12,0x7
    1ad8:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1ac8 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1adc:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ae0:	2600018f 	ldptr.d	$r15,$r12,0
    1ae4:	03bbfdad 	ori	$r13,$r13,0xeff
    1ae8:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1aec:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1af0:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1af4:	038201ce 	ori	$r14,$r14,0x80
    1af8:	0010b5ed 	add.d	$r13,$r15,$r13
    1afc:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b00:	0016bdad 	andn	$r13,$r13,$r15
    1b04:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b08:	0014b9ae 	and	$r14,$r13,$r14
    1b0c:	440049c0 	bnez	$r14,72(0x48) # 1b54 <strlen+0xa4>
    1b10:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b14:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b18:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b1c:	2600018e 	ldptr.d	$r14,$r12,0
    1b20:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b24:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b28:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b2c:	0382020f 	ori	$r15,$r16,0x80
    1b30:	0010b5cd 	add.d	$r13,$r14,$r13
    1b34:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b38:	0016b9ad 	andn	$r13,$r13,$r14
    1b3c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b40:	0014bdad 	and	$r13,$r13,$r15
    1b44:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b18 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b48:	2800018d 	ld.b	$r13,$r12,0
    1b4c:	400011a0 	beqz	$r13,16(0x10) # 1b5c <strlen+0xac>
    1b50:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b54:	2800018d 	ld.b	$r13,$r12,0
    1b58:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b50 <strlen+0xa0>
        ;
    return s - a;
    1b5c:	00119184 	sub.d	$r4,$r12,$r4
}
    1b60:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b64:	0015008c 	move	$r12,$r4
    1b68:	53ff77ff 	b	-140(0xfffff74) # 1adc <strlen+0x2c>
        if (!*s)
    1b6c:	00150004 	move	$r4,$r0
            return s - a;
    1b70:	4c000020 	jirl	$r0,$r1,0

0000000000001b74 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b74:	03401c8c 	andi	$r12,$r4,0x7
    1b78:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b7c:	44002180 	bnez	$r12,32(0x20) # 1b9c <memchr+0x28>
    1b80:	50002c00 	b	44(0x2c) # 1bac <memchr+0x38>
    1b84:	2a00008c 	ld.bu	$r12,$r4,0
    1b88:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c80 <memchr+0x10c>
    1b8c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b90:	03401c8c 	andi	$r12,$r4,0x7
    1b94:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b98:	40001580 	beqz	$r12,20(0x14) # 1bac <memchr+0x38>
    1b9c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b84 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1ba0:	0015000d 	move	$r13,$r0
}
    1ba4:	001501a4 	move	$r4,$r13
    1ba8:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bac:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bb0:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1ba4 <memchr+0x30>
    1bb4:	2a00008c 	ld.bu	$r12,$r4,0
    1bb8:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c80 <memchr+0x10c>
        size_t k = ONES * c;
    1bbc:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bc0:	0384058c 	ori	$r12,$r12,0x101
    1bc4:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bc8:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bcc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bd0:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bd4:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c90 <memchr+0x11c>
    1bd8:	2600008d 	ldptr.d	$r13,$r4,0
    1bdc:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1be0:	038201ce 	ori	$r14,$r14,0x80
    1be4:	0015b60d 	xor	$r13,$r16,$r13
    1be8:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bec:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bf0:	0016b58c 	andn	$r12,$r12,$r13
    1bf4:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bf8:	0014b98c 	and	$r12,$r12,$r14
    1bfc:	44009580 	bnez	$r12,148(0x94) # 1c90 <memchr+0x11c>
    1c00:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c04:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c08:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c0c:	50002000 	b	32(0x20) # 1c2c <memchr+0xb8>
    1c10:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c14:	0015b20c 	xor	$r12,$r16,$r12
    1c18:	0010b98e 	add.d	$r14,$r12,$r14
    1c1c:	0016b1cc 	andn	$r12,$r14,$r12
    1c20:	0014bd8c 	and	$r12,$r12,$r15
    1c24:	44006580 	bnez	$r12,100(0x64) # 1c88 <memchr+0x114>
    1c28:	001501a4 	move	$r4,$r13
    1c2c:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c30:	0382022f 	ori	$r15,$r17,0x80
    1c34:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c38:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c3c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c40:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c44:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c48:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c4c:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c10 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c50:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1ba0 <memchr+0x2c>
    1c54:	2a0001ac 	ld.bu	$r12,$r13,0
    1c58:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1ba4 <memchr+0x30>
    1c5c:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c60:	001099a6 	add.d	$r6,$r13,$r6
    1c64:	50001000 	b	16(0x10) # 1c74 <memchr+0x100>
    1c68:	2a00018e 	ld.bu	$r14,$r12,0
    1c6c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c70:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1ba4 <memchr+0x30>
    1c74:	0015018d 	move	$r13,$r12
    1c78:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c68 <memchr+0xf4>
    1c7c:	53ff27ff 	b	-220(0xfffff24) # 1ba0 <memchr+0x2c>
    1c80:	0015008d 	move	$r13,$r4
    1c84:	53ffd3ff 	b	-48(0xfffffd0) # 1c54 <memchr+0xe0>
    1c88:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c8c:	53ffcfff 	b	-52(0xfffffcc) # 1c58 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c90:	0015008d 	move	$r13,$r4
    1c94:	53ffcbff 	b	-56(0xfffffc8) # 1c5c <memchr+0xe8>

0000000000001c98 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c98:	03401c8c 	andi	$r12,$r4,0x7
    1c9c:	40011980 	beqz	$r12,280(0x118) # 1db4 <strnlen+0x11c>
    1ca0:	4000f4a0 	beqz	$r5,244(0xf4) # 1d94 <strnlen+0xfc>
    1ca4:	2a00008c 	ld.bu	$r12,$r4,0
    1ca8:	4000f580 	beqz	$r12,244(0xf4) # 1d9c <strnlen+0x104>
    1cac:	001500ac 	move	$r12,$r5
    1cb0:	0015008d 	move	$r13,$r4
    1cb4:	50001000 	b	16(0x10) # 1cc4 <strnlen+0x2c>
    1cb8:	4000dd80 	beqz	$r12,220(0xdc) # 1d94 <strnlen+0xfc>
    1cbc:	2a0001ae 	ld.bu	$r14,$r13,0
    1cc0:	4000e5c0 	beqz	$r14,228(0xe4) # 1da4 <strnlen+0x10c>
    1cc4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cc8:	03401dae 	andi	$r14,$r13,0x7
    1ccc:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cd0:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cb8 <strnlen+0x20>
    if (n && *s != c)
    1cd4:	4000c180 	beqz	$r12,192(0xc0) # 1d94 <strnlen+0xfc>
    1cd8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cdc:	4000c9c0 	beqz	$r14,200(0xc8) # 1da4 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ce0:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1ce4:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dc0 <strnlen+0x128>
    1ce8:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cec:	260001b0 	ldptr.d	$r16,$r13,0
    1cf0:	03bbfdce 	ori	$r14,$r14,0xeff
    1cf4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cf8:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1cfc:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d00:	038201ef 	ori	$r15,$r15,0x80
    1d04:	0010ba0e 	add.d	$r14,$r16,$r14
    1d08:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d0c:	0016c1ce 	andn	$r14,$r14,$r16
    1d10:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d14:	0014bdcf 	and	$r15,$r14,$r15
    1d18:	4400a9e0 	bnez	$r15,168(0xa8) # 1dc0 <strnlen+0x128>
    1d1c:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d20:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d24:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d28:	50001c00 	b	28(0x1c) # 1d44 <strnlen+0xac>
    1d2c:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d30:	0010b9ee 	add.d	$r14,$r15,$r14
    1d34:	0016bdce 	andn	$r14,$r14,$r15
    1d38:	0014c1ce 	and	$r14,$r14,$r16
    1d3c:	440071c0 	bnez	$r14,112(0x70) # 1dac <strnlen+0x114>
    1d40:	0015022d 	move	$r13,$r17
    1d44:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d48:	03820250 	ori	$r16,$r18,0x80
    1d4c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d50:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d54:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d58:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d5c:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d60:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d64:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d2c <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d68:	40002d80 	beqz	$r12,44(0x2c) # 1d94 <strnlen+0xfc>
    1d6c:	2a00022d 	ld.bu	$r13,$r17,0
    1d70:	400021a0 	beqz	$r13,32(0x20) # 1d90 <strnlen+0xf8>
    1d74:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d78:	0010b22c 	add.d	$r12,$r17,$r12
    1d7c:	001501b1 	move	$r17,$r13
    1d80:	5800158d 	beq	$r12,$r13,20(0x14) # 1d94 <strnlen+0xfc>
    1d84:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d88:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d8c:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d7c <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d90:	00119225 	sub.d	$r5,$r17,$r4
}
    1d94:	001500a4 	move	$r4,$r5
    1d98:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d9c:	001500ac 	move	$r12,$r5
    1da0:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1da4:	001501b1 	move	$r17,$r13
    1da8:	53ffc7ff 	b	-60(0xfffffc4) # 1d6c <strnlen+0xd4>
    1dac:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1db0:	53ffc3ff 	b	-64(0xfffffc0) # 1d70 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1db4:	001500ac 	move	$r12,$r5
    1db8:	0015008d 	move	$r13,$r4
    1dbc:	53ff1bff 	b	-232(0xfffff18) # 1cd4 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dc0:	001501b1 	move	$r17,$r13
    1dc4:	53ffb3ff 	b	-80(0xfffffb0) # 1d74 <strnlen+0xdc>

0000000000001dc8 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dc8:	0015948c 	xor	$r12,$r4,$r5
    1dcc:	03401d8c 	andi	$r12,$r12,0x7
    1dd0:	4400ad80 	bnez	$r12,172(0xac) # 1e7c <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dd4:	03401cac 	andi	$r12,$r5,0x7
    1dd8:	40003180 	beqz	$r12,48(0x30) # 1e08 <strcpy+0x40>
            if (!(*d = *s))
    1ddc:	280000ac 	ld.b	$r12,$r5,0
    1de0:	2900008c 	st.b	$r12,$r4,0
    1de4:	44001580 	bnez	$r12,20(0x14) # 1df8 <strcpy+0x30>
    1de8:	5000bc00 	b	188(0xbc) # 1ea4 <strcpy+0xdc>
    1dec:	280000ac 	ld.b	$r12,$r5,0
    1df0:	2900008c 	st.b	$r12,$r4,0
    1df4:	4000a980 	beqz	$r12,168(0xa8) # 1e9c <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1df8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1dfc:	03401cac 	andi	$r12,$r5,0x7
    1e00:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e04:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1dec <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e08:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e0c:	260000ae 	ldptr.d	$r14,$r5,0
    1e10:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e14:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e18:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e1c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e20:	038201ad 	ori	$r13,$r13,0x80
    1e24:	0010b1cc 	add.d	$r12,$r14,$r12
    1e28:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e2c:	0016b98c 	andn	$r12,$r12,$r14
    1e30:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e34:	0014b58c 	and	$r12,$r12,$r13
    1e38:	44004580 	bnez	$r12,68(0x44) # 1e7c <strcpy+0xb4>
    1e3c:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e40:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e44:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e48:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e4c:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e50:	260000ae 	ldptr.d	$r14,$r5,0
    1e54:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e58:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e5c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e60:	038201ed 	ori	$r13,$r15,0x80
    1e64:	0010b1cc 	add.d	$r12,$r14,$r12
    1e68:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e6c:	0016b98c 	andn	$r12,$r12,$r14
    1e70:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e74:	0014b58c 	and	$r12,$r12,$r13
    1e78:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e44 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e7c:	280000ac 	ld.b	$r12,$r5,0
    1e80:	2900008c 	st.b	$r12,$r4,0
    1e84:	40001d80 	beqz	$r12,28(0x1c) # 1ea0 <strcpy+0xd8>
    1e88:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e8c:	280000ac 	ld.b	$r12,$r5,0
    1e90:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e94:	2900008c 	st.b	$r12,$r4,0
    1e98:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e88 <strcpy+0xc0>
        ;
    return d;
}
    1e9c:	4c000020 	jirl	$r0,$r1,0
    1ea0:	4c000020 	jirl	$r0,$r1,0
    1ea4:	4c000020 	jirl	$r0,$r1,0

0000000000001ea8 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ea8:	0015948c 	xor	$r12,$r4,$r5
    1eac:	03401d8c 	andi	$r12,$r12,0x7
    1eb0:	4400ad80 	bnez	$r12,172(0xac) # 1f5c <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1eb4:	03401cac 	andi	$r12,$r5,0x7
    1eb8:	44010180 	bnez	$r12,256(0x100) # 1fb8 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ebc:	400100c0 	beqz	$r6,256(0x100) # 1fbc <strncpy+0x114>
    1ec0:	280000af 	ld.b	$r15,$r5,0
    1ec4:	400105e0 	beqz	$r15,260(0x104) # 1fc8 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ec8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ecc:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21a4 <strncpy+0x2fc>
    1ed0:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ed4:	260000ae 	ldptr.d	$r14,$r5,0
    1ed8:	03bbfd8c 	ori	$r12,$r12,0xeff
    1edc:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ee0:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ee4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ee8:	038201ad 	ori	$r13,$r13,0x80
    1eec:	0010b1cc 	add.d	$r12,$r14,$r12
    1ef0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ef4:	0016b98c 	andn	$r12,$r12,$r14
    1ef8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1efc:	0014b58c 	and	$r12,$r12,$r13
    1f00:	4402a580 	bnez	$r12,676(0x2a4) # 21a4 <strncpy+0x2fc>
    1f04:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f08:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f0c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f10:	50001c00 	b	28(0x1c) # 1f2c <strncpy+0x84>
    1f14:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f18:	0010b1cc 	add.d	$r12,$r14,$r12
    1f1c:	0016b98c 	andn	$r12,$r12,$r14
    1f20:	0014b58c 	and	$r12,$r12,$r13
    1f24:	44024580 	bnez	$r12,580(0x244) # 2168 <strncpy+0x2c0>
    1f28:	001501e5 	move	$r5,$r15
    1f2c:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f30:	0382020d 	ori	$r13,$r16,0x80
    1f34:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f38:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f3c:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f40:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f44:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f48:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f4c:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f50:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f54:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f14 <strncpy+0x6c>
    1f58:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f5c:	400060c0 	beqz	$r6,96(0x60) # 1fbc <strncpy+0x114>
    1f60:	280000ac 	ld.b	$r12,$r5,0
    1f64:	0015008d 	move	$r13,$r4
    1f68:	2900008c 	st.b	$r12,$r4,0
    1f6c:	44001580 	bnez	$r12,20(0x14) # 1f80 <strncpy+0xd8>
    1f70:	50005c00 	b	92(0x5c) # 1fcc <strncpy+0x124>
    1f74:	280000ac 	ld.b	$r12,$r5,0
    1f78:	290001ac 	st.b	$r12,$r13,0
    1f7c:	40005180 	beqz	$r12,80(0x50) # 1fcc <strncpy+0x124>
    1f80:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f84:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f88:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f8c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f74 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f90:	001501a4 	move	$r4,$r13
    1f94:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f98:	280000ac 	ld.b	$r12,$r5,0
    1f9c:	2900008c 	st.b	$r12,$r4,0
    1fa0:	40002980 	beqz	$r12,40(0x28) # 1fc8 <strncpy+0x120>
    1fa4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fa8:	03401cac 	andi	$r12,$r5,0x7
    1fac:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fb0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fb4:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ebc <strncpy+0x14>
    1fb8:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f98 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fbc:	0015008d 	move	$r13,$r4
}
    1fc0:	001501a4 	move	$r4,$r13
    1fc4:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fc8:	0015008d 	move	$r13,$r4
    1fcc:	0011b40c 	sub.d	$r12,$r0,$r13
    1fd0:	03401d8c 	andi	$r12,$r12,0x7
    1fd4:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fd8:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fdc:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fe0:	0013bdce 	masknez	$r14,$r14,$r15
    1fe4:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fe8:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fec:	00153dce 	or	$r14,$r14,$r15
    1ff0:	024004d0 	sltui	$r16,$r6,1(0x1)
    1ff4:	00131a31 	maskeqz	$r17,$r17,$r6
    1ff8:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1ffc:	001540d0 	or	$r16,$r6,$r16
    2000:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2178 <strncpy+0x2d0>
    2004:	40015980 	beqz	$r12,344(0x158) # 215c <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2008:	290001a0 	st.b	$r0,$r13,0
    200c:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2010:	5801458f 	beq	$r12,$r15,324(0x144) # 2154 <strncpy+0x2ac>
    2014:	290005a0 	st.b	$r0,$r13,1(0x1)
    2018:	0280080f 	addi.w	$r15,$r0,2(0x2)
    201c:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2020:	5801658f 	beq	$r12,$r15,356(0x164) # 2184 <strncpy+0x2dc>
    2024:	290009a0 	st.b	$r0,$r13,2(0x2)
    2028:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    202c:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2030:	58011d8f 	beq	$r12,$r15,284(0x11c) # 214c <strncpy+0x2a4>
    2034:	29000da0 	st.b	$r0,$r13,3(0x3)
    2038:	0280100f 	addi.w	$r15,$r0,4(0x4)
    203c:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2040:	58014d8f 	beq	$r12,$r15,332(0x14c) # 218c <strncpy+0x2e4>
    2044:	290011a0 	st.b	$r0,$r13,4(0x4)
    2048:	0280140f 	addi.w	$r15,$r0,5(0x5)
    204c:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2050:	5801458f 	beq	$r12,$r15,324(0x144) # 2194 <strncpy+0x2ec>
    2054:	290015a0 	st.b	$r0,$r13,5(0x5)
    2058:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    205c:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2060:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 219c <strncpy+0x2f4>
    2064:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2068:	290019a0 	st.b	$r0,$r13,6(0x6)
    206c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2070:	0011b210 	sub.d	$r16,$r16,$r12
    2074:	00450e11 	srli.d	$r17,$r16,0x3
    2078:	0010b1ac 	add.d	$r12,$r13,$r12
    207c:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2080:	27000180 	stptr.d	$r0,$r12,0
    2084:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2088:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2080 <strncpy+0x1d8>
    208c:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2090:	0014c611 	and	$r17,$r16,$r17
    2094:	0040822f 	slli.w	$r15,$r17,0x0
    2098:	001049ef 	add.w	$r15,$r15,$r18
    209c:	0010c5cc 	add.d	$r12,$r14,$r17
    20a0:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f90 <strncpy+0xe8>
    20a4:	29000180 	st.b	$r0,$r12,0
    20a8:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20ac:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f90 <strncpy+0xe8>
    20b0:	29000580 	st.b	$r0,$r12,1(0x1)
    20b4:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20b8:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f90 <strncpy+0xe8>
    20bc:	29000980 	st.b	$r0,$r12,2(0x2)
    20c0:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20c4:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f90 <strncpy+0xe8>
    20c8:	29000d80 	st.b	$r0,$r12,3(0x3)
    20cc:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20d0:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f90 <strncpy+0xe8>
    20d4:	29001180 	st.b	$r0,$r12,4(0x4)
    20d8:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20dc:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f90 <strncpy+0xe8>
    20e0:	29001580 	st.b	$r0,$r12,5(0x5)
    20e4:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20e8:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f90 <strncpy+0xe8>
    20ec:	29001980 	st.b	$r0,$r12,6(0x6)
    20f0:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20f4:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f90 <strncpy+0xe8>
    20f8:	29001d80 	st.b	$r0,$r12,7(0x7)
    20fc:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2100:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f90 <strncpy+0xe8>
    2104:	29002180 	st.b	$r0,$r12,8(0x8)
    2108:	028025ee 	addi.w	$r14,$r15,9(0x9)
    210c:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f90 <strncpy+0xe8>
    2110:	29002580 	st.b	$r0,$r12,9(0x9)
    2114:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2118:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f90 <strncpy+0xe8>
    211c:	29002980 	st.b	$r0,$r12,10(0xa)
    2120:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2124:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f90 <strncpy+0xe8>
    2128:	29002d80 	st.b	$r0,$r12,11(0xb)
    212c:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2130:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f90 <strncpy+0xe8>
    2134:	29003180 	st.b	$r0,$r12,12(0xc)
    2138:	028035ef 	addi.w	$r15,$r15,13(0xd)
    213c:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f90 <strncpy+0xe8>
    2140:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2144:	001501a4 	move	$r4,$r13
    2148:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    214c:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2150:	53ff23ff 	b	-224(0xfffff20) # 2070 <strncpy+0x1c8>
    2154:	02800412 	addi.w	$r18,$r0,1(0x1)
    2158:	53ff1bff 	b	-232(0xfffff18) # 2070 <strncpy+0x1c8>
    215c:	001501ae 	move	$r14,$r13
    2160:	00150012 	move	$r18,$r0
    2164:	53ff0fff 	b	-244(0xfffff0c) # 2070 <strncpy+0x1c8>
    2168:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    216c:	0015008d 	move	$r13,$r4
    2170:	001501e5 	move	$r5,$r15
    2174:	53fdf7ff 	b	-524(0xffffdf4) # 1f68 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2178:	001501ac 	move	$r12,$r13
    217c:	0015000f 	move	$r15,$r0
    2180:	53ff27ff 	b	-220(0xfffff24) # 20a4 <strncpy+0x1fc>
    2184:	02800812 	addi.w	$r18,$r0,2(0x2)
    2188:	53feebff 	b	-280(0xffffee8) # 2070 <strncpy+0x1c8>
    218c:	02801012 	addi.w	$r18,$r0,4(0x4)
    2190:	53fee3ff 	b	-288(0xffffee0) # 2070 <strncpy+0x1c8>
    2194:	02801412 	addi.w	$r18,$r0,5(0x5)
    2198:	53fedbff 	b	-296(0xffffed8) # 2070 <strncpy+0x1c8>
    219c:	02801812 	addi.w	$r18,$r0,6(0x6)
    21a0:	53fed3ff 	b	-304(0xffffed0) # 2070 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21a4:	2900008f 	st.b	$r15,$r4,0
    21a8:	0015008d 	move	$r13,$r4
    21ac:	53fdd7ff 	b	-556(0xffffdd4) # 1f80 <strncpy+0xd8>

00000000000021b0 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21b0:	0015008c 	move	$r12,$r4
    21b4:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21b8:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21bc:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21c0:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21c4:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21c8:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21cc:	00408084 	slli.w	$r4,$r4,0x0
}
    21d0:	4c000020 	jirl	$r0,$r1,0

00000000000021d4 <openat>:
    register long a7 __asm__("a7") = n;
    21d4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21d8:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21dc:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21e0:	00408084 	slli.w	$r4,$r4,0x0
}
    21e4:	4c000020 	jirl	$r0,$r1,0

00000000000021e8 <close>:
    register long a7 __asm__("a7") = n;
    21e8:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21ec:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21f0:	00408084 	slli.w	$r4,$r4,0x0
}
    21f4:	4c000020 	jirl	$r0,$r1,0

00000000000021f8 <read>:
    register long a7 __asm__("a7") = n;
    21f8:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21fc:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2200:	4c000020 	jirl	$r0,$r1,0

0000000000002204 <write>:
    register long a7 __asm__("a7") = n;
    2204:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2208:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    220c:	4c000020 	jirl	$r0,$r1,0

0000000000002210 <getpid>:
    register long a7 __asm__("a7") = n;
    2210:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2214:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2218:	00408084 	slli.w	$r4,$r4,0x0
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <getppid>:
    register long a7 __asm__("a7") = n;
    2220:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2224:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2228:	00408084 	slli.w	$r4,$r4,0x0
}
    222c:	4c000020 	jirl	$r0,$r1,0

0000000000002230 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2230:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2234:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2238:	00408084 	slli.w	$r4,$r4,0x0
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <fork>:
    register long a7 __asm__("a7") = n;
    2240:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2244:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2248:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    224c:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2250:	00408084 	slli.w	$r4,$r4,0x0
}
    2254:	4c000020 	jirl	$r0,$r1,0

0000000000002258 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2258:	001500c5 	move	$r5,$r6
    if (stack)
    225c:	400008c0 	beqz	$r6,8(0x8) # 2264 <clone+0xc>
	stack += stack_size;
    2260:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2264:	00408106 	slli.w	$r6,$r8,0x0
    2268:	00150009 	move	$r9,$r0
    226c:	00150008 	move	$r8,$r0
    2270:	00150007 	move	$r7,$r0
    2274:	5002c800 	b	712(0x2c8) # 253c <__clone>

0000000000002278 <exit>:
    register long a7 __asm__("a7") = n;
    2278:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    227c:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2280:	4c000020 	jirl	$r0,$r1,0

0000000000002284 <waitpid>:
    register long a7 __asm__("a7") = n;
    2284:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2288:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    228c:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2290:	00408084 	slli.w	$r4,$r4,0x0
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <exec>:
    register long a7 __asm__("a7") = n;
    2298:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    229c:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22a0:	00408084 	slli.w	$r4,$r4,0x0
}
    22a4:	4c000020 	jirl	$r0,$r1,0

00000000000022a8 <execve>:
    register long a7 __asm__("a7") = n;
    22a8:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22ac:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22b0:	00408084 	slli.w	$r4,$r4,0x0
}
    22b4:	4c000020 	jirl	$r0,$r1,0

00000000000022b8 <times>:
    register long a7 __asm__("a7") = n;
    22b8:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22bc:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22c0:	00408084 	slli.w	$r4,$r4,0x0
}
    22c4:	4c000020 	jirl	$r0,$r1,0

00000000000022c8 <get_time>:

int64 get_time()
{
    22c8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22cc:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22d0:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22d4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22d8:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22dc:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22e0:	44003c80 	bnez	$r4,60(0x3c) # 231c <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22e4:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22e8:	039f3c8c 	ori	$r12,$r4,0x7cf
    22ec:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22f0:	2a40006d 	ld.hu	$r13,$r3,0
    22f4:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22f8:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22fc:	00450c84 	srli.d	$r4,$r4,0x3
    2300:	001eb084 	mulh.du	$r4,$r4,$r12
    2304:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2308:	001db1ac 	mul.d	$r12,$r13,$r12
    230c:	00451084 	srli.d	$r4,$r4,0x4
    2310:	00109184 	add.d	$r4,$r12,$r4
}
    2314:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2318:	4c000020 	jirl	$r0,$r1,0
        return -1;
    231c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2320:	53fff7ff 	b	-12(0xffffff4) # 2314 <get_time+0x4c>

0000000000002324 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2324:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2328:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    232c:	00408084 	slli.w	$r4,$r4,0x0
}
    2330:	4c000020 	jirl	$r0,$r1,0

0000000000002334 <time>:
    register long a7 __asm__("a7") = n;
    2334:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2338:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    233c:	00408084 	slli.w	$r4,$r4,0x0
}
    2340:	4c000020 	jirl	$r0,$r1,0

0000000000002344 <sleep>:

int sleep(unsigned long long time)
{
    2344:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2348:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    234c:	00150064 	move	$r4,$r3
    2350:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2354:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2358:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    235c:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2360:	44001080 	bnez	$r4,16(0x10) # 2370 <sleep+0x2c>
    return 0;
    2364:	00150004 	move	$r4,$r0
}
    2368:	02c04063 	addi.d	$r3,$r3,16(0x10)
    236c:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2370:	24000064 	ldptr.w	$r4,$r3,0
}
    2374:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2378:	4c000020 	jirl	$r0,$r1,0

000000000000237c <set_priority>:
    register long a7 __asm__("a7") = n;
    237c:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2380:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2384:	00408084 	slli.w	$r4,$r4,0x0
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    238c:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2390:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2394:	4c000020 	jirl	$r0,$r1,0

0000000000002398 <munmap>:
    register long a7 __asm__("a7") = n;
    2398:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    239c:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23a0:	00408084 	slli.w	$r4,$r4,0x0
}
    23a4:	4c000020 	jirl	$r0,$r1,0

00000000000023a8 <wait>:

int wait(int *code)
{
    23a8:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23ac:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23b0:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23b4:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23b8:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23bc:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23c0:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <spawn>:
    register long a7 __asm__("a7") = n;
    23c8:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23cc:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23d0:	00408084 	slli.w	$r4,$r4,0x0
}
    23d4:	4c000020 	jirl	$r0,$r1,0

00000000000023d8 <mailread>:
    register long a7 __asm__("a7") = n;
    23d8:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23dc:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23e0:	00408084 	slli.w	$r4,$r4,0x0
}
    23e4:	4c000020 	jirl	$r0,$r1,0

00000000000023e8 <mailwrite>:
    register long a7 __asm__("a7") = n;
    23e8:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23ec:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23f0:	00408084 	slli.w	$r4,$r4,0x0
}
    23f4:	4c000020 	jirl	$r0,$r1,0

00000000000023f8 <fstat>:
    register long a7 __asm__("a7") = n;
    23f8:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23fc:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2400:	00408084 	slli.w	$r4,$r4,0x0
}
    2404:	4c000020 	jirl	$r0,$r1,0

0000000000002408 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2408:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    240c:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2410:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2414:	00408084 	slli.w	$r4,$r4,0x0
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    241c:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2420:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2424:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <link>:

int link(char *old_path, char *new_path)
{
    2430:	0015008c 	move	$r12,$r4
    2434:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2438:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    243c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2440:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2444:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2448:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    244c:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2450:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2454:	4c000020 	jirl	$r0,$r1,0

0000000000002458 <unlink>:

int unlink(char *path)
{
    2458:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    245c:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2460:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2464:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2468:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    246c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <uname>:
    register long a7 __asm__("a7") = n;
    2474:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2478:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    247c:	00408084 	slli.w	$r4,$r4,0x0
}
    2480:	4c000020 	jirl	$r0,$r1,0

0000000000002484 <brk>:
    register long a7 __asm__("a7") = n;
    2484:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2488:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    248c:	00408084 	slli.w	$r4,$r4,0x0
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <getcwd>:
    register long a7 __asm__("a7") = n;
    2494:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2498:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    249c:	4c000020 	jirl	$r0,$r1,0

00000000000024a0 <chdir>:
    register long a7 __asm__("a7") = n;
    24a0:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24a4:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24b0:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24b4:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24b8:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24bc:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24c0:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c4:	002b0000 	syscall	0x0
    24c8:	00408084 	slli.w	$r4,$r4,0x0
}
    24cc:	4c000020 	jirl	$r0,$r1,0

00000000000024d0 <getdents>:
    register long a7 __asm__("a7") = n;
    24d0:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24d4:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24d8:	00408084 	slli.w	$r4,$r4,0x0
}
    24dc:	4c000020 	jirl	$r0,$r1,0

00000000000024e0 <pipe>:
    register long a7 __asm__("a7") = n;
    24e0:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24e4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24e8:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24ec:	00408084 	slli.w	$r4,$r4,0x0
}
    24f0:	4c000020 	jirl	$r0,$r1,0

00000000000024f4 <dup>:
    register long a7 __asm__("a7") = n;
    24f4:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24f8:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2500:	4c000020 	jirl	$r0,$r1,0

0000000000002504 <dup2>:
    register long a7 __asm__("a7") = n;
    2504:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2508:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    250c:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2510:	00408084 	slli.w	$r4,$r4,0x0
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <mount>:
    register long a7 __asm__("a7") = n;
    2518:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    251c:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <umount>:
    register long a7 __asm__("a7") = n;
    2528:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    252c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2530:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    253c:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2540:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2544:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2548:	001500c4 	move	$r4,$r6
	move $a2, $a4
    254c:	00150106 	move	$r6,$r8
	move $a3, $a5
    2550:	00150127 	move	$r7,$r9
	move $a4, $a6
    2554:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2558:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    255c:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2560:	40000880 	beqz	$r4,8(0x8) # 2568 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2564:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2568:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    256c:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2570:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2574:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2578:	002b0000 	syscall	0x0
