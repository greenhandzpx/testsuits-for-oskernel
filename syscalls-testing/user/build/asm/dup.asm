
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/dup:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400ac00 	bl	172(0xac) # 10b0 <__start_main>

0000000000001008 <test_dup>:
/*
 * 测试通过时应输出：
 * "  new fd is 3."
 */

void test_dup(){
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
void test_dup(){
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
	TEST_START(__func__);
    1018:	5403a000 	bl	928(0x3a0) # 13b8 <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d71084 	addi.d	$r4,$r4,1476(0x5c4)
    1024:	54039400 	bl	916(0x394) # 13b8 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d56084 	addi.d	$r4,$r4,1368(0x558)
    1030:	54038800 	bl	904(0x388) # 13b8 <puts>
	int fd = dup(STDOUT);
    1034:	02800404 	addi.w	$r4,$r0,1(0x1)
    1038:	5414a800 	bl	5288(0x14a8) # 24e0 <dup>
    103c:	00150085 	move	$r5,$r4
	assert(fd >=0);
    1040:	60003c80 	blt	$r4,$r0,60(0x3c) # 107c <test_dup+0x74>
	printf("  new fd is %d.\n", fd);
    1044:	1c000024 	pcaddu12i	$r4,1(0x1)
    1048:	02d5b084 	addi.d	$r4,$r4,1388(0x56c)
    104c:	5403a400 	bl	932(0x3a4) # 13f0 <printf>
	TEST_END(__func__);
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d5e084 	addi.d	$r4,$r4,1400(0x578)
    1058:	54036000 	bl	864(0x360) # 13b8 <puts>
    105c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1060:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1064:	54035400 	bl	852(0x354) # 13b8 <puts>
}
    1068:	28c06061 	ld.d	$r1,$r3,24(0x18)
	TEST_END(__func__);
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d45084 	addi.d	$r4,$r4,1300(0x514)
}
    1074:	02c08063 	addi.d	$r3,$r3,32(0x20)
	TEST_END(__func__);
    1078:	50034000 	b	832(0x340) # 13b8 <puts>
    107c:	29c02064 	st.d	$r4,$r3,8(0x8)
	assert(fd >=0);
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d44084 	addi.d	$r4,$r4,1296(0x510)
    1088:	54067800 	bl	1656(0x678) # 1700 <panic>
    108c:	28c02065 	ld.d	$r5,$r3,8(0x8)
    1090:	53ffb7ff 	b	-76(0xfffffb4) # 1044 <test_dup+0x3c>

0000000000001094 <main>:

int main(void) {
    1094:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1098:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_dup();
    109c:	57ff6fff 	bl	-148(0xfffff6c) # 1008 <test_dup>
	return 0;
}
    10a0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10a4:	00150004 	move	$r4,$r0
    10a8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10ac:	4c000020 	jirl	$r0,$r1,0

00000000000010b0 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10b0:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10b4:	24000084 	ldptr.w	$r4,$r4,0
{
    10b8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10bc:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10c0:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10c4:	57ffd3ff 	bl	-48(0xfffffd0) # 1094 <main>
    10c8:	54119c00 	bl	4508(0x119c) # 2264 <exit>
	return 0;
}
    10cc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10d0:	00150004 	move	$r4,$r0
    10d4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10d8:	4c000020 	jirl	$r0,$r1,0

00000000000010dc <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10dc:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10e0:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10e4:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12b0 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10e8:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10ec:	1c00002c 	pcaddu12i	$r12,1(0x1)
    10f0:	02d4118c 	addi.d	$r12,$r12,1284(0x504)
    10f4:	002195cf 	mod.wu	$r15,$r14,$r5
    10f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1100 <printint.constprop.0+0x24>
    10fc:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1100:	002115cd 	div.wu	$r13,$r14,$r5
    1104:	5c0008a0 	bne	$r5,$r0,8(0x8) # 110c <printint.constprop.0+0x30>
    1108:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    110c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1110:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1114:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1118:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    111c:	680219c5 	bltu	$r14,$r5,536(0x218) # 1334 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1120:	002195af 	mod.wu	$r15,$r13,$r5
    1124:	5c0008a0 	bne	$r5,$r0,8(0x8) # 112c <printint.constprop.0+0x50>
    1128:	002a0007 	break	0x7
    112c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1130:	002115ae 	div.wu	$r14,$r13,$r5
    1134:	5c0008a0 	bne	$r5,$r0,8(0x8) # 113c <printint.constprop.0+0x60>
    1138:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    113c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1140:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1144:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1304 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1148:	002195cf 	mod.wu	$r15,$r14,$r5
    114c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1154 <printint.constprop.0+0x78>
    1150:	002a0007 	break	0x7
    1154:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1158:	002115cd 	div.wu	$r13,$r14,$r5
    115c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1164 <printint.constprop.0+0x88>
    1160:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1164:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1168:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    116c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1310 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1170:	002195af 	mod.wu	$r15,$r13,$r5
    1174:	5c0008a0 	bne	$r5,$r0,8(0x8) # 117c <printint.constprop.0+0xa0>
    1178:	002a0007 	break	0x7
    117c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1180:	002115ae 	div.wu	$r14,$r13,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0xb0>
    1188:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    118c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1190:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1194:	680189a5 	bltu	$r13,$r5,392(0x188) # 131c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1198:	002195cf 	mod.wu	$r15,$r14,$r5
    119c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a4 <printint.constprop.0+0xc8>
    11a0:	002a0007 	break	0x7
    11a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a8:	002115cd 	div.wu	$r13,$r14,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0xd8>
    11b0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b8:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11bc:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1328 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11c0:	002195af 	mod.wu	$r15,$r13,$r5
    11c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11cc <printint.constprop.0+0xf0>
    11c8:	002a0007 	break	0x7
    11cc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d0:	002115ae 	div.wu	$r14,$r13,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0x100>
    11d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11dc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e0:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11e4:	680115a5 	bltu	$r13,$r5,276(0x114) # 12f8 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11e8:	002195cf 	mod.wu	$r15,$r14,$r5
    11ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f4 <printint.constprop.0+0x118>
    11f0:	002a0007 	break	0x7
    11f4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f8:	002115cd 	div.wu	$r13,$r14,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0x128>
    1200:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1204:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1208:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    120c:	680131c5 	bltu	$r14,$r5,304(0x130) # 133c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1210:	002195af 	mod.wu	$r15,$r13,$r5
    1214:	5c0008a0 	bne	$r5,$r0,8(0x8) # 121c <printint.constprop.0+0x140>
    1218:	002a0007 	break	0x7
    121c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1220:	002115ae 	div.wu	$r14,$r13,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0x150>
    1228:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    122c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1230:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1234:	680115a5 	bltu	$r13,$r5,276(0x114) # 1348 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1238:	002195cf 	mod.wu	$r15,$r14,$r5
    123c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1244 <printint.constprop.0+0x168>
    1240:	002a0007 	break	0x7
    1244:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1248:	002115cd 	div.wu	$r13,$r14,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0x178>
    1250:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1254:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1258:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    125c:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1354 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1260:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1264:	3820358d 	ldx.bu	$r13,$r12,$r13
    1268:	02801805 	addi.w	$r5,$r0,6(0x6)
    126c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1270:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1274:	64001880 	bge	$r4,$r0,24(0x18) # 128c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1278:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    127c:	0010b1ad 	add.d	$r13,$r13,$r12
    1280:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1284:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1288:	00150185 	move	$r5,$r12
    write(f, s, l);
    128c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1290:	02804006 	addi.w	$r6,$r0,16(0x10)
    1294:	001114c6 	sub.w	$r6,$r6,$r5
    1298:	02800404 	addi.w	$r4,$r0,1(0x1)
    129c:	00109585 	add.d	$r5,$r12,$r5
    12a0:	540f5000 	bl	3920(0xf50) # 21f0 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12a4:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12a8:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12ac:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12b0:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12b4:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12b8:	02ccf18c 	addi.d	$r12,$r12,828(0x33c)
    12bc:	002195cf 	mod.wu	$r15,$r14,$r5
    12c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c8 <printint.constprop.0+0x1ec>
    12c4:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12c8:	002115cd 	div.wu	$r13,$r14,$r5
    12cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d4 <printint.constprop.0+0x1f8>
    12d0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12d4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12d8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12dc:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12e0:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12e4:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1120 <printint.constprop.0+0x44>
        buf[i--] = '-';
    12e8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12ec:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    12f0:	02803805 	addi.w	$r5,$r0,14(0xe)
    12f4:	53ff9bff 	b	-104(0xfffff98) # 128c <printint.constprop.0+0x1b0>
    12f8:	0280240c 	addi.w	$r12,$r0,9(0x9)
    12fc:	02802805 	addi.w	$r5,$r0,10(0xa)
    1300:	53ff77ff 	b	-140(0xfffff74) # 1274 <printint.constprop.0+0x198>
    1304:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1308:	02803805 	addi.w	$r5,$r0,14(0xe)
    130c:	53ff6bff 	b	-152(0xfffff68) # 1274 <printint.constprop.0+0x198>
    1310:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1314:	02803405 	addi.w	$r5,$r0,13(0xd)
    1318:	53ff5fff 	b	-164(0xfffff5c) # 1274 <printint.constprop.0+0x198>
    131c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1320:	02803005 	addi.w	$r5,$r0,12(0xc)
    1324:	53ff53ff 	b	-176(0xfffff50) # 1274 <printint.constprop.0+0x198>
    1328:	0280280c 	addi.w	$r12,$r0,10(0xa)
    132c:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1330:	53ff47ff 	b	-188(0xfffff44) # 1274 <printint.constprop.0+0x198>
    i = 15;
    1334:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1338:	53ff57ff 	b	-172(0xfffff54) # 128c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    133c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1340:	02802405 	addi.w	$r5,$r0,9(0x9)
    1344:	53ff33ff 	b	-208(0xfffff30) # 1274 <printint.constprop.0+0x198>
    1348:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    134c:	02802005 	addi.w	$r5,$r0,8(0x8)
    1350:	53ff27ff 	b	-220(0xfffff24) # 1274 <printint.constprop.0+0x198>
    1354:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1358:	02801c05 	addi.w	$r5,$r0,7(0x7)
    135c:	53ff1bff 	b	-232(0xfffff18) # 1274 <printint.constprop.0+0x198>

0000000000001360 <getchar>:
{
    1360:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1364:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1368:	02800406 	addi.w	$r6,$r0,1(0x1)
    136c:	00150004 	move	$r4,$r0
{
    1370:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1374:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1378:	540e6c00 	bl	3692(0xe6c) # 21e4 <read>
}
    137c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1380:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1384:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1388:	4c000020 	jirl	$r0,$r1,0

000000000000138c <putchar>:
{
    138c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1390:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1394:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1398:	02800406 	addi.w	$r6,$r0,1(0x1)
    139c:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13a0:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13a4:	540e4c00 	bl	3660(0xe4c) # 21f0 <write>
}
    13a8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13ac:	00408084 	slli.w	$r4,$r4,0x0
}
    13b0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13b4:	4c000020 	jirl	$r0,$r1,0

00000000000013b8 <puts>:
{
    13b8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13bc:	29c02061 	st.d	$r1,$r3,8(0x8)
    13c0:	27000077 	stptr.d	$r23,$r3,0
    13c4:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13c8:	5406d400 	bl	1748(0x6d4) # 1a9c <strlen>
    13cc:	00150086 	move	$r6,$r4
    13d0:	001502e5 	move	$r5,$r23
    13d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    13d8:	540e1800 	bl	3608(0xe18) # 21f0 <write>
}
    13dc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13e0:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13e4:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13e8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13ec:	4c000020 	jirl	$r0,$r1,0

00000000000013f0 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    13f0:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    13f4:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    13f8:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    13fc:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1400:	29c14079 	st.d	$r25,$r3,80(0x50)
    1404:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1408:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    140c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1410:	29c18077 	st.d	$r23,$r3,96(0x60)
    1414:	29c16078 	st.d	$r24,$r3,88(0x58)
    1418:	0015009b 	move	$r27,$r4
    141c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1420:	29c20066 	st.d	$r6,$r3,128(0x80)
    1424:	29c22067 	st.d	$r7,$r3,136(0x88)
    1428:	29c24068 	st.d	$r8,$r3,144(0x90)
    142c:	29c26069 	st.d	$r9,$r3,152(0x98)
    1430:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1434:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1438:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    143c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1440:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1444:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1448:	02c6b39c 	addi.d	$r28,$r28,428(0x1ac)
        if (!*s)
    144c:	2800036c 	ld.b	$r12,$r27,0
    1450:	40008980 	beqz	$r12,136(0x88) # 14d8 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1454:	58027d99 	beq	$r12,$r25,636(0x27c) # 16d0 <printf+0x2e0>
    1458:	00150366 	move	$r6,$r27
    145c:	50000800 	b	8(0x8) # 1464 <printf+0x74>
    1460:	58009d99 	beq	$r12,$r25,156(0x9c) # 14fc <printf+0x10c>
    1464:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1468:	280000cc 	ld.b	$r12,$r6,0
    146c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1460 <printf+0x70>
    1470:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1474:	0011ecd7 	sub.d	$r23,$r6,$r27
    1478:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    147c:	001502e6 	move	$r6,$r23
    1480:	00150365 	move	$r5,$r27
    1484:	02800404 	addi.w	$r4,$r0,1(0x1)
    1488:	540d6800 	bl	3432(0xd68) # 21f0 <write>
        out(f, a, l);
        if (l)
    148c:	4400b6e0 	bnez	$r23,180(0xb4) # 1540 <printf+0x150>
            continue;
        if (s[1] == 0)
    1490:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1494:	40004580 	beqz	$r12,68(0x44) # 14d8 <printf+0xe8>
            break;
        switch (s[1])
    1498:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    149c:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1570 <printf+0x180>
    14a0:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1548 <printf+0x158>
    14a4:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14a8:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1698 <printf+0x2a8>
    14ac:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14b0:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1660 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14b4:	2600006c 	ldptr.d	$r12,$r3,0
    14b8:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14bc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14c0:	24000184 	ldptr.w	$r4,$r12,0
    14c4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14c8:	2700006c 	stptr.d	$r12,$r3,0
    14cc:	57fc13ff 	bl	-1008(0xffffc10) # 10dc <printint.constprop.0>
        if (!*s)
    14d0:	2800036c 	ld.b	$r12,$r27,0
    14d4:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1454 <printf+0x64>
    }
    va_end(ap);
}
    14d8:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14dc:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14e0:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14e4:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14e8:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14ec:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    14f0:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    14f4:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    14f8:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    14fc:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1500:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1470 <printf+0x80>
    1504:	001500d8 	move	$r24,$r6
    1508:	50000c00 	b	12(0xc) # 1514 <printf+0x124>
    150c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1510:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1474 <printf+0x84>
    1514:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1518:	2800030c 	ld.b	$r12,$r24,0
    151c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1520:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 150c <printf+0x11c>
        l = z - a;
    1524:	0011ecd7 	sub.d	$r23,$r6,$r27
    1528:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    152c:	001502e6 	move	$r6,$r23
    1530:	00150365 	move	$r5,$r27
    1534:	02800404 	addi.w	$r4,$r0,1(0x1)
    1538:	540cb800 	bl	3256(0xcb8) # 21f0 <write>
        if (l)
    153c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1490 <printf+0xa0>
    1540:	0015031b 	move	$r27,$r24
    1544:	53ff0bff 	b	-248(0xfffff08) # 144c <printf+0x5c>
        switch (s[1])
    1548:	0281900d 	addi.w	$r13,$r0,100(0x64)
    154c:	5c01158d 	bne	$r12,$r13,276(0x114) # 1660 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1550:	2600006c 	ldptr.d	$r12,$r3,0
    1554:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1558:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    155c:	24000184 	ldptr.w	$r4,$r12,0
    1560:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1564:	2700006c 	stptr.d	$r12,$r3,0
    1568:	57fb77ff 	bl	-1164(0xffffb74) # 10dc <printint.constprop.0>
        s += 2;
    156c:	53ff67ff 	b	-156(0xfffff64) # 14d0 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1570:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1574:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1578:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    157c:	260001ac 	ldptr.d	$r12,$r13,0
    1580:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1584:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1588:	0045f18a 	srli.d	$r10,$r12,0x3c
    158c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1590:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1594:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1598:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    159c:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15a0:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15a4:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15a8:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15ac:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15b0:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15b4:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15b8:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15bc:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15c0:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15c4:	3820278a 	ldx.bu	$r10,$r28,$r9
    15c8:	38202389 	ldx.bu	$r9,$r28,$r8
    15cc:	38201f88 	ldx.bu	$r8,$r28,$r7
    15d0:	38201787 	ldx.bu	$r7,$r28,$r5
    15d4:	38201385 	ldx.bu	$r5,$r28,$r4
    15d8:	38205384 	ldx.bu	$r4,$r28,$r20
    15dc:	38204f94 	ldx.bu	$r20,$r28,$r19
    15e0:	38204b93 	ldx.bu	$r19,$r28,$r18
    15e4:	38204792 	ldx.bu	$r18,$r28,$r17
    15e8:	38204391 	ldx.bu	$r17,$r28,$r16
    15ec:	38203f90 	ldx.bu	$r16,$r28,$r15
    15f0:	38203b8f 	ldx.bu	$r15,$r28,$r14
    15f4:	3820378e 	ldx.bu	$r14,$r28,$r13
    15f8:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    15fc:	03403d8c 	andi	$r12,$r12,0xf
    1600:	2900286b 	st.b	$r11,$r3,10(0xa)
    1604:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1608:	29003069 	st.b	$r9,$r3,12(0xc)
    160c:	29003468 	st.b	$r8,$r3,13(0xd)
    1610:	29003867 	st.b	$r7,$r3,14(0xe)
    1614:	29003c65 	st.b	$r5,$r3,15(0xf)
    1618:	29004064 	st.b	$r4,$r3,16(0x10)
    161c:	29004474 	st.b	$r20,$r3,17(0x11)
    1620:	29004873 	st.b	$r19,$r3,18(0x12)
    1624:	29004c72 	st.b	$r18,$r3,19(0x13)
    1628:	29005071 	st.b	$r17,$r3,20(0x14)
    162c:	29005470 	st.b	$r16,$r3,21(0x15)
    1630:	2900586f 	st.b	$r15,$r3,22(0x16)
    1634:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1638:	3820378d 	ldx.bu	$r13,$r28,$r13
    163c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1640:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1644:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1648:	2900606d 	st.b	$r13,$r3,24(0x18)
    164c:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1650:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1654:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1658:	540b9800 	bl	2968(0xb98) # 21f0 <write>
        s += 2;
    165c:	53fe77ff 	b	-396(0xffffe74) # 14d0 <printf+0xe0>
    char byte = c;
    1660:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1664:	02800406 	addi.w	$r6,$r0,1(0x1)
    1668:	02c02065 	addi.d	$r5,$r3,8(0x8)
    166c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1670:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1674:	540b7c00 	bl	2940(0xb7c) # 21f0 <write>
    char byte = c;
    1678:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    167c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1680:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1684:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1688:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    168c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1690:	540b6000 	bl	2912(0xb60) # 21f0 <write>
        s += 2;
    1694:	53fe3fff 	b	-452(0xffffe3c) # 14d0 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1698:	2600006c 	ldptr.d	$r12,$r3,0
    169c:	26000197 	ldptr.d	$r23,$r12,0
    16a0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16a4:	2700006c 	stptr.d	$r12,$r3,0
    16a8:	40004ee0 	beqz	$r23,76(0x4c) # 16f4 <printf+0x304>
            l = strnlen(a, 200);
    16ac:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16b0:	001502e4 	move	$r4,$r23
    16b4:	5405d000 	bl	1488(0x5d0) # 1c84 <strnlen>
    16b8:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16bc:	001502e5 	move	$r5,$r23
    16c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    16c4:	540b2c00 	bl	2860(0xb2c) # 21f0 <write>
        s += 2;
    16c8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16cc:	53fe07ff 	b	-508(0xffffe04) # 14d0 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16d0:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16d4:	00150366 	move	$r6,$r27
    16d8:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1504 <printf+0x114>
    write(f, s, l);
    16dc:	00150006 	move	$r6,$r0
    16e0:	00150365 	move	$r5,$r27
    16e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    16e8:	540b0800 	bl	2824(0xb08) # 21f0 <write>
    16ec:	00150378 	move	$r24,$r27
    16f0:	53fda3ff 	b	-608(0xffffda0) # 1490 <printf+0xa0>
                a = "(null)";
    16f4:	1c000037 	pcaddu12i	$r23,1(0x1)
    16f8:	02fb92f7 	addi.d	$r23,$r23,-284(0xee4)
    16fc:	53ffb3ff 	b	-80(0xfffffb0) # 16ac <printf+0x2bc>

0000000000001700 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1700:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1704:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1708:	57fcb3ff 	bl	-848(0xffffcb0) # 13b8 <puts>
    exit(-100);
}
    170c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1710:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1714:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1718:	500b4c00 	b	2892(0xb4c) # 2264 <exit>

000000000000171c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    171c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1720:	5800108c 	beq	$r4,$r12,16(0x10) # 1730 <isspace+0x14>
    1724:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1728:	02401484 	sltui	$r4,$r4,5(0x5)
    172c:	4c000020 	jirl	$r0,$r1,0
    1730:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1734:	4c000020 	jirl	$r0,$r1,0

0000000000001738 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1738:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    173c:	02402884 	sltui	$r4,$r4,10(0xa)
    1740:	4c000020 	jirl	$r0,$r1,0

0000000000001744 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1744:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1748:	0280100f 	addi.w	$r15,$r0,4(0x4)
    174c:	2800008d 	ld.b	$r13,$r4,0
    1750:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1754:	580061ae 	beq	$r13,$r14,96(0x60) # 17b4 <atoi+0x70>
    1758:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17b4 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    175c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1760:	580065ac 	beq	$r13,$r12,100(0x64) # 17c4 <atoi+0x80>
    1764:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1768:	58007dac 	beq	$r13,$r12,124(0x7c) # 17e4 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    176c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1770:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1774:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1778:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    177c:	680061cf 	bltu	$r14,$r15,96(0x60) # 17dc <atoi+0x98>
    int n = 0, neg = 0;
    1780:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1784:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1788:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    178c:	001c126f 	mul.w	$r15,$r19,$r4
    1790:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1794:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1798:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    179c:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17a0:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17a4:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17a8:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 178c <atoi+0x48>
    return neg ? n : -n;
    17ac:	40001280 	beqz	$r20,16(0x10) # 17bc <atoi+0x78>
}
    17b0:	4c000020 	jirl	$r0,$r1,0
        s++;
    17b4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17b8:	53ff97ff 	b	-108(0xfffff94) # 174c <atoi+0x8>
    17bc:	00113e04 	sub.w	$r4,$r16,$r15
    17c0:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17c4:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17c8:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17cc:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17d0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17d4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17d8:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1780 <atoi+0x3c>
    17dc:	00150004 	move	$r4,$r0
}
    17e0:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17e4:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17e8:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17ec:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17f0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17f4:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17dc <atoi+0x98>
        neg = 1;
    17f8:	02800414 	addi.w	$r20,$r0,1(0x1)
    17fc:	53ff87ff 	b	-124(0xfffff84) # 1780 <atoi+0x3c>

0000000000001800 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1800:	400198c0 	beqz	$r6,408(0x198) # 1998 <memset+0x198>
    1804:	0011900c 	sub.d	$r12,$r0,$r4
    1808:	03401d8c 	andi	$r12,$r12,0x7
    180c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1810:	02402dae 	sltui	$r14,$r13,11(0xb)
    1814:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1818:	0013b9ad 	masknez	$r13,$r13,$r14
    181c:	001339ee 	maskeqz	$r14,$r15,$r14
    1820:	001539ad 	or	$r13,$r13,$r14
    1824:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1828:	00005ca5 	ext.w.b	$r5,$r5
    182c:	680191ed 	bltu	$r15,$r13,400(0x190) # 19bc <memset+0x1bc>
    1830:	40018180 	beqz	$r12,384(0x180) # 19b0 <memset+0x1b0>
    1834:	29000085 	st.b	$r5,$r4,0
    1838:	0280040d 	addi.w	$r13,$r0,1(0x1)
    183c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1840:	5801698d 	beq	$r12,$r13,360(0x168) # 19a8 <memset+0x1a8>
    1844:	29000485 	st.b	$r5,$r4,1(0x1)
    1848:	0280080d 	addi.w	$r13,$r0,2(0x2)
    184c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1850:	5801798d 	beq	$r12,$r13,376(0x178) # 19c8 <memset+0x1c8>
    1854:	29000885 	st.b	$r5,$r4,2(0x2)
    1858:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    185c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1860:	58013d8d 	beq	$r12,$r13,316(0x13c) # 199c <memset+0x19c>
    1864:	29000c85 	st.b	$r5,$r4,3(0x3)
    1868:	0280100d 	addi.w	$r13,$r0,4(0x4)
    186c:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1870:	5801618d 	beq	$r12,$r13,352(0x160) # 19d0 <memset+0x1d0>
    1874:	29001085 	st.b	$r5,$r4,4(0x4)
    1878:	0280140d 	addi.w	$r13,$r0,5(0x5)
    187c:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1880:	5801598d 	beq	$r12,$r13,344(0x158) # 19d8 <memset+0x1d8>
    1884:	29001485 	st.b	$r5,$r4,5(0x5)
    1888:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    188c:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1890:	5c01518d 	bne	$r12,$r13,336(0x150) # 19e0 <memset+0x1e0>
    1894:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1898:	29001885 	st.b	$r5,$r4,6(0x6)
    189c:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18a0:	0015000d 	move	$r13,$r0
    18a4:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18a8:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18ac:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18b0:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18b4:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18b8:	0011b0d0 	sub.d	$r16,$r6,$r12
    18bc:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18c0:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18c4:	0010b08c 	add.d	$r12,$r4,$r12
    18c8:	00450e0f 	srli.d	$r15,$r16,0x3
    18cc:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18d0:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18d4:	2700018d 	stptr.d	$r13,$r12,0
    18d8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18dc:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18d4 <memset+0xd4>
    18e0:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18e4:	0014be0f 	and	$r15,$r16,$r15
    18e8:	004081ed 	slli.w	$r13,$r15,0x0
    18ec:	0010bdcc 	add.d	$r12,$r14,$r15
    18f0:	001045ad 	add.w	$r13,$r13,$r17
    18f4:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19a4 <memset+0x1a4>
    18f8:	29000185 	st.b	$r5,$r12,0
    18fc:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1900:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1998 <memset+0x198>
    1904:	29000585 	st.b	$r5,$r12,1(0x1)
    1908:	028009ae 	addi.w	$r14,$r13,2(0x2)
    190c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1998 <memset+0x198>
    1910:	29000985 	st.b	$r5,$r12,2(0x2)
    1914:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1918:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1998 <memset+0x198>
    191c:	29000d85 	st.b	$r5,$r12,3(0x3)
    1920:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1924:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1998 <memset+0x198>
    1928:	29001185 	st.b	$r5,$r12,4(0x4)
    192c:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1930:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1998 <memset+0x198>
    1934:	29001585 	st.b	$r5,$r12,5(0x5)
    1938:	028019ae 	addi.w	$r14,$r13,6(0x6)
    193c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1998 <memset+0x198>
    1940:	29001985 	st.b	$r5,$r12,6(0x6)
    1944:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1948:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1998 <memset+0x198>
    194c:	29001d85 	st.b	$r5,$r12,7(0x7)
    1950:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1954:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1998 <memset+0x198>
    1958:	29002185 	st.b	$r5,$r12,8(0x8)
    195c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1960:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1998 <memset+0x198>
    1964:	29002585 	st.b	$r5,$r12,9(0x9)
    1968:	028029ae 	addi.w	$r14,$r13,10(0xa)
    196c:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1998 <memset+0x198>
    1970:	29002985 	st.b	$r5,$r12,10(0xa)
    1974:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1978:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1998 <memset+0x198>
    197c:	29002d85 	st.b	$r5,$r12,11(0xb)
    1980:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1984:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1998 <memset+0x198>
    1988:	29003185 	st.b	$r5,$r12,12(0xc)
    198c:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1990:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1998 <memset+0x198>
    1994:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1998:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    199c:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19a0:	53ff03ff 	b	-256(0xfffff00) # 18a0 <memset+0xa0>
    19a4:	4c000020 	jirl	$r0,$r1,0
    19a8:	02800411 	addi.w	$r17,$r0,1(0x1)
    19ac:	53fef7ff 	b	-268(0xffffef4) # 18a0 <memset+0xa0>
    19b0:	0015008e 	move	$r14,$r4
    19b4:	00150011 	move	$r17,$r0
    19b8:	53feebff 	b	-280(0xffffee8) # 18a0 <memset+0xa0>
    19bc:	0015008c 	move	$r12,$r4
    19c0:	0015000d 	move	$r13,$r0
    19c4:	53ff37ff 	b	-204(0xfffff34) # 18f8 <memset+0xf8>
    19c8:	02800811 	addi.w	$r17,$r0,2(0x2)
    19cc:	53fed7ff 	b	-300(0xffffed4) # 18a0 <memset+0xa0>
    19d0:	02801011 	addi.w	$r17,$r0,4(0x4)
    19d4:	53fecfff 	b	-308(0xffffecc) # 18a0 <memset+0xa0>
    19d8:	02801411 	addi.w	$r17,$r0,5(0x5)
    19dc:	53fec7ff 	b	-316(0xffffec4) # 18a0 <memset+0xa0>
    19e0:	02801811 	addi.w	$r17,$r0,6(0x6)
    19e4:	53febfff 	b	-324(0xffffebc) # 18a0 <memset+0xa0>

00000000000019e8 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19e8:	2800008c 	ld.b	$r12,$r4,0
    19ec:	280000ae 	ld.b	$r14,$r5,0
    19f0:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a24 <strcmp+0x3c>
    19f4:	40003980 	beqz	$r12,56(0x38) # 1a2c <strcmp+0x44>
    19f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19fc:	50000800 	b	8(0x8) # 1a04 <strcmp+0x1c>
    1a00:	400019a0 	beqz	$r13,24(0x18) # 1a18 <strcmp+0x30>
    1a04:	3800308d 	ldx.b	$r13,$r4,$r12
    1a08:	380030ae 	ldx.b	$r14,$r5,$r12
    1a0c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a10:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a00 <strcmp+0x18>
    1a14:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a18:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a1c:	001111a4 	sub.w	$r4,$r13,$r4
    1a20:	4c000020 	jirl	$r0,$r1,0
    1a24:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a28:	53fff3ff 	b	-16(0xffffff0) # 1a18 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a2c:	0015000d 	move	$r13,$r0
    1a30:	53ffebff 	b	-24(0xfffffe8) # 1a18 <strcmp+0x30>

0000000000001a34 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a34:	400054c0 	beqz	$r6,84(0x54) # 1a88 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a38:	2a00008d 	ld.bu	$r13,$r4,0
    1a3c:	2a0000ae 	ld.bu	$r14,$r5,0
    1a40:	40003da0 	beqz	$r13,60(0x3c) # 1a7c <strncmp+0x48>
    1a44:	40003dc0 	beqz	$r14,60(0x3c) # 1a80 <strncmp+0x4c>
    if (!n--)
    1a48:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a4c:	400034c0 	beqz	$r6,52(0x34) # 1a80 <strncmp+0x4c>
    1a50:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a54:	580019ae 	beq	$r13,$r14,24(0x18) # 1a6c <strncmp+0x38>
    1a58:	50002800 	b	40(0x28) # 1a80 <strncmp+0x4c>
    1a5c:	400035c0 	beqz	$r14,52(0x34) # 1a90 <strncmp+0x5c>
    1a60:	580020cc 	beq	$r6,$r12,32(0x20) # 1a80 <strncmp+0x4c>
    1a64:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a68:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a90 <strncmp+0x5c>
    1a6c:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a70:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a74:	001501af 	move	$r15,$r13
    1a78:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a5c <strncmp+0x28>
    1a7c:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a80:	001139a4 	sub.w	$r4,$r13,$r14
    1a84:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a88:	00150004 	move	$r4,$r0
}
    1a8c:	4c000020 	jirl	$r0,$r1,0
    1a90:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a94:	001139a4 	sub.w	$r4,$r13,$r14
    1a98:	4c000020 	jirl	$r0,$r1,0

0000000000001a9c <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a9c:	03401c8c 	andi	$r12,$r4,0x7
    1aa0:	4000b180 	beqz	$r12,176(0xb0) # 1b50 <strlen+0xb4>
        if (!*s)
    1aa4:	2800008c 	ld.b	$r12,$r4,0
    1aa8:	4000b180 	beqz	$r12,176(0xb0) # 1b58 <strlen+0xbc>
    1aac:	0015008c 	move	$r12,$r4
    1ab0:	50000c00 	b	12(0xc) # 1abc <strlen+0x20>
    1ab4:	2800018d 	ld.b	$r13,$r12,0
    1ab8:	400091a0 	beqz	$r13,144(0x90) # 1b48 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1abc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac0:	03401d8d 	andi	$r13,$r12,0x7
    1ac4:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1ab4 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1ac8:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1acc:	2600018f 	ldptr.d	$r15,$r12,0
    1ad0:	03bbfdad 	ori	$r13,$r13,0xeff
    1ad4:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ad8:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1adc:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ae0:	038201ce 	ori	$r14,$r14,0x80
    1ae4:	0010b5ed 	add.d	$r13,$r15,$r13
    1ae8:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1aec:	0016bdad 	andn	$r13,$r13,$r15
    1af0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1af4:	0014b9ae 	and	$r14,$r13,$r14
    1af8:	440049c0 	bnez	$r14,72(0x48) # 1b40 <strlen+0xa4>
    1afc:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b00:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b04:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b08:	2600018e 	ldptr.d	$r14,$r12,0
    1b0c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b10:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b14:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b18:	0382020f 	ori	$r15,$r16,0x80
    1b1c:	0010b5cd 	add.d	$r13,$r14,$r13
    1b20:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b24:	0016b9ad 	andn	$r13,$r13,$r14
    1b28:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b2c:	0014bdad 	and	$r13,$r13,$r15
    1b30:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b04 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b34:	2800018d 	ld.b	$r13,$r12,0
    1b38:	400011a0 	beqz	$r13,16(0x10) # 1b48 <strlen+0xac>
    1b3c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b40:	2800018d 	ld.b	$r13,$r12,0
    1b44:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b3c <strlen+0xa0>
        ;
    return s - a;
    1b48:	00119184 	sub.d	$r4,$r12,$r4
}
    1b4c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b50:	0015008c 	move	$r12,$r4
    1b54:	53ff77ff 	b	-140(0xfffff74) # 1ac8 <strlen+0x2c>
        if (!*s)
    1b58:	00150004 	move	$r4,$r0
            return s - a;
    1b5c:	4c000020 	jirl	$r0,$r1,0

0000000000001b60 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b60:	03401c8c 	andi	$r12,$r4,0x7
    1b64:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b68:	44002180 	bnez	$r12,32(0x20) # 1b88 <memchr+0x28>
    1b6c:	50002c00 	b	44(0x2c) # 1b98 <memchr+0x38>
    1b70:	2a00008c 	ld.bu	$r12,$r4,0
    1b74:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c6c <memchr+0x10c>
    1b78:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b7c:	03401c8c 	andi	$r12,$r4,0x7
    1b80:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b84:	40001580 	beqz	$r12,20(0x14) # 1b98 <memchr+0x38>
    1b88:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b70 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b8c:	0015000d 	move	$r13,$r0
}
    1b90:	001501a4 	move	$r4,$r13
    1b94:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b98:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b9c:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b90 <memchr+0x30>
    1ba0:	2a00008c 	ld.bu	$r12,$r4,0
    1ba4:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c6c <memchr+0x10c>
        size_t k = ONES * c;
    1ba8:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bac:	0384058c 	ori	$r12,$r12,0x101
    1bb0:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bb4:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bb8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bbc:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bc0:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c7c <memchr+0x11c>
    1bc4:	2600008d 	ldptr.d	$r13,$r4,0
    1bc8:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bcc:	038201ce 	ori	$r14,$r14,0x80
    1bd0:	0015b60d 	xor	$r13,$r16,$r13
    1bd4:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bd8:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bdc:	0016b58c 	andn	$r12,$r12,$r13
    1be0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1be4:	0014b98c 	and	$r12,$r12,$r14
    1be8:	44009580 	bnez	$r12,148(0x94) # 1c7c <memchr+0x11c>
    1bec:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1bf0:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1bf4:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1bf8:	50002000 	b	32(0x20) # 1c18 <memchr+0xb8>
    1bfc:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c00:	0015b20c 	xor	$r12,$r16,$r12
    1c04:	0010b98e 	add.d	$r14,$r12,$r14
    1c08:	0016b1cc 	andn	$r12,$r14,$r12
    1c0c:	0014bd8c 	and	$r12,$r12,$r15
    1c10:	44006580 	bnez	$r12,100(0x64) # 1c74 <memchr+0x114>
    1c14:	001501a4 	move	$r4,$r13
    1c18:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c1c:	0382022f 	ori	$r15,$r17,0x80
    1c20:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c24:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c28:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c2c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c30:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c34:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c38:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1bfc <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c3c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b8c <memchr+0x2c>
    1c40:	2a0001ac 	ld.bu	$r12,$r13,0
    1c44:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b90 <memchr+0x30>
    1c48:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c4c:	001099a6 	add.d	$r6,$r13,$r6
    1c50:	50001000 	b	16(0x10) # 1c60 <memchr+0x100>
    1c54:	2a00018e 	ld.bu	$r14,$r12,0
    1c58:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c5c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b90 <memchr+0x30>
    1c60:	0015018d 	move	$r13,$r12
    1c64:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c54 <memchr+0xf4>
    1c68:	53ff27ff 	b	-220(0xfffff24) # 1b8c <memchr+0x2c>
    1c6c:	0015008d 	move	$r13,$r4
    1c70:	53ffd3ff 	b	-48(0xfffffd0) # 1c40 <memchr+0xe0>
    1c74:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c78:	53ffcfff 	b	-52(0xfffffcc) # 1c44 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c7c:	0015008d 	move	$r13,$r4
    1c80:	53ffcbff 	b	-56(0xfffffc8) # 1c48 <memchr+0xe8>

0000000000001c84 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c84:	03401c8c 	andi	$r12,$r4,0x7
    1c88:	40011980 	beqz	$r12,280(0x118) # 1da0 <strnlen+0x11c>
    1c8c:	4000f4a0 	beqz	$r5,244(0xf4) # 1d80 <strnlen+0xfc>
    1c90:	2a00008c 	ld.bu	$r12,$r4,0
    1c94:	4000f580 	beqz	$r12,244(0xf4) # 1d88 <strnlen+0x104>
    1c98:	001500ac 	move	$r12,$r5
    1c9c:	0015008d 	move	$r13,$r4
    1ca0:	50001000 	b	16(0x10) # 1cb0 <strnlen+0x2c>
    1ca4:	4000dd80 	beqz	$r12,220(0xdc) # 1d80 <strnlen+0xfc>
    1ca8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cac:	4000e5c0 	beqz	$r14,228(0xe4) # 1d90 <strnlen+0x10c>
    1cb0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cb4:	03401dae 	andi	$r14,$r13,0x7
    1cb8:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cbc:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1ca4 <strnlen+0x20>
    if (n && *s != c)
    1cc0:	4000c180 	beqz	$r12,192(0xc0) # 1d80 <strnlen+0xfc>
    1cc4:	2a0001ae 	ld.bu	$r14,$r13,0
    1cc8:	4000c9c0 	beqz	$r14,200(0xc8) # 1d90 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ccc:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1cd0:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dac <strnlen+0x128>
    1cd4:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cd8:	260001b0 	ldptr.d	$r16,$r13,0
    1cdc:	03bbfdce 	ori	$r14,$r14,0xeff
    1ce0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1ce4:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ce8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cec:	038201ef 	ori	$r15,$r15,0x80
    1cf0:	0010ba0e 	add.d	$r14,$r16,$r14
    1cf4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cf8:	0016c1ce 	andn	$r14,$r14,$r16
    1cfc:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d00:	0014bdcf 	and	$r15,$r14,$r15
    1d04:	4400a9e0 	bnez	$r15,168(0xa8) # 1dac <strnlen+0x128>
    1d08:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d0c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d10:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d14:	50001c00 	b	28(0x1c) # 1d30 <strnlen+0xac>
    1d18:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d1c:	0010b9ee 	add.d	$r14,$r15,$r14
    1d20:	0016bdce 	andn	$r14,$r14,$r15
    1d24:	0014c1ce 	and	$r14,$r14,$r16
    1d28:	440071c0 	bnez	$r14,112(0x70) # 1d98 <strnlen+0x114>
    1d2c:	0015022d 	move	$r13,$r17
    1d30:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d34:	03820250 	ori	$r16,$r18,0x80
    1d38:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d3c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d40:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d44:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d48:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d4c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d50:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d18 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d54:	40002d80 	beqz	$r12,44(0x2c) # 1d80 <strnlen+0xfc>
    1d58:	2a00022d 	ld.bu	$r13,$r17,0
    1d5c:	400021a0 	beqz	$r13,32(0x20) # 1d7c <strnlen+0xf8>
    1d60:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d64:	0010b22c 	add.d	$r12,$r17,$r12
    1d68:	001501b1 	move	$r17,$r13
    1d6c:	5800158d 	beq	$r12,$r13,20(0x14) # 1d80 <strnlen+0xfc>
    1d70:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d74:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d78:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d68 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d7c:	00119225 	sub.d	$r5,$r17,$r4
}
    1d80:	001500a4 	move	$r4,$r5
    1d84:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d88:	001500ac 	move	$r12,$r5
    1d8c:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d90:	001501b1 	move	$r17,$r13
    1d94:	53ffc7ff 	b	-60(0xfffffc4) # 1d58 <strnlen+0xd4>
    1d98:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d9c:	53ffc3ff 	b	-64(0xfffffc0) # 1d5c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1da0:	001500ac 	move	$r12,$r5
    1da4:	0015008d 	move	$r13,$r4
    1da8:	53ff1bff 	b	-232(0xfffff18) # 1cc0 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dac:	001501b1 	move	$r17,$r13
    1db0:	53ffb3ff 	b	-80(0xfffffb0) # 1d60 <strnlen+0xdc>

0000000000001db4 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1db4:	0015948c 	xor	$r12,$r4,$r5
    1db8:	03401d8c 	andi	$r12,$r12,0x7
    1dbc:	4400ad80 	bnez	$r12,172(0xac) # 1e68 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dc0:	03401cac 	andi	$r12,$r5,0x7
    1dc4:	40003180 	beqz	$r12,48(0x30) # 1df4 <strcpy+0x40>
            if (!(*d = *s))
    1dc8:	280000ac 	ld.b	$r12,$r5,0
    1dcc:	2900008c 	st.b	$r12,$r4,0
    1dd0:	44001580 	bnez	$r12,20(0x14) # 1de4 <strcpy+0x30>
    1dd4:	5000bc00 	b	188(0xbc) # 1e90 <strcpy+0xdc>
    1dd8:	280000ac 	ld.b	$r12,$r5,0
    1ddc:	2900008c 	st.b	$r12,$r4,0
    1de0:	4000a980 	beqz	$r12,168(0xa8) # 1e88 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1de4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1de8:	03401cac 	andi	$r12,$r5,0x7
    1dec:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1df0:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1dd8 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1df4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1df8:	260000ae 	ldptr.d	$r14,$r5,0
    1dfc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e00:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e04:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e08:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e0c:	038201ad 	ori	$r13,$r13,0x80
    1e10:	0010b1cc 	add.d	$r12,$r14,$r12
    1e14:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e18:	0016b98c 	andn	$r12,$r12,$r14
    1e1c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e20:	0014b58c 	and	$r12,$r12,$r13
    1e24:	44004580 	bnez	$r12,68(0x44) # 1e68 <strcpy+0xb4>
    1e28:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e2c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e30:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e34:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e38:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e3c:	260000ae 	ldptr.d	$r14,$r5,0
    1e40:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e44:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e48:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e4c:	038201ed 	ori	$r13,$r15,0x80
    1e50:	0010b1cc 	add.d	$r12,$r14,$r12
    1e54:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e58:	0016b98c 	andn	$r12,$r12,$r14
    1e5c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e60:	0014b58c 	and	$r12,$r12,$r13
    1e64:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e30 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e68:	280000ac 	ld.b	$r12,$r5,0
    1e6c:	2900008c 	st.b	$r12,$r4,0
    1e70:	40001d80 	beqz	$r12,28(0x1c) # 1e8c <strcpy+0xd8>
    1e74:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e78:	280000ac 	ld.b	$r12,$r5,0
    1e7c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e80:	2900008c 	st.b	$r12,$r4,0
    1e84:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e74 <strcpy+0xc0>
        ;
    return d;
}
    1e88:	4c000020 	jirl	$r0,$r1,0
    1e8c:	4c000020 	jirl	$r0,$r1,0
    1e90:	4c000020 	jirl	$r0,$r1,0

0000000000001e94 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e94:	0015948c 	xor	$r12,$r4,$r5
    1e98:	03401d8c 	andi	$r12,$r12,0x7
    1e9c:	4400ad80 	bnez	$r12,172(0xac) # 1f48 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ea0:	03401cac 	andi	$r12,$r5,0x7
    1ea4:	44010180 	bnez	$r12,256(0x100) # 1fa4 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ea8:	400100c0 	beqz	$r6,256(0x100) # 1fa8 <strncpy+0x114>
    1eac:	280000af 	ld.b	$r15,$r5,0
    1eb0:	400105e0 	beqz	$r15,260(0x104) # 1fb4 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1eb4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1eb8:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2190 <strncpy+0x2fc>
    1ebc:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ec0:	260000ae 	ldptr.d	$r14,$r5,0
    1ec4:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ec8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ecc:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ed0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ed4:	038201ad 	ori	$r13,$r13,0x80
    1ed8:	0010b1cc 	add.d	$r12,$r14,$r12
    1edc:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ee0:	0016b98c 	andn	$r12,$r12,$r14
    1ee4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ee8:	0014b58c 	and	$r12,$r12,$r13
    1eec:	4402a580 	bnez	$r12,676(0x2a4) # 2190 <strncpy+0x2fc>
    1ef0:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1ef4:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1ef8:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1efc:	50001c00 	b	28(0x1c) # 1f18 <strncpy+0x84>
    1f00:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f04:	0010b1cc 	add.d	$r12,$r14,$r12
    1f08:	0016b98c 	andn	$r12,$r12,$r14
    1f0c:	0014b58c 	and	$r12,$r12,$r13
    1f10:	44024580 	bnez	$r12,580(0x244) # 2154 <strncpy+0x2c0>
    1f14:	001501e5 	move	$r5,$r15
    1f18:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f1c:	0382020d 	ori	$r13,$r16,0x80
    1f20:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f24:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f28:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f2c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f30:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f34:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f38:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f3c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f40:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f00 <strncpy+0x6c>
    1f44:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f48:	400060c0 	beqz	$r6,96(0x60) # 1fa8 <strncpy+0x114>
    1f4c:	280000ac 	ld.b	$r12,$r5,0
    1f50:	0015008d 	move	$r13,$r4
    1f54:	2900008c 	st.b	$r12,$r4,0
    1f58:	44001580 	bnez	$r12,20(0x14) # 1f6c <strncpy+0xd8>
    1f5c:	50005c00 	b	92(0x5c) # 1fb8 <strncpy+0x124>
    1f60:	280000ac 	ld.b	$r12,$r5,0
    1f64:	290001ac 	st.b	$r12,$r13,0
    1f68:	40005180 	beqz	$r12,80(0x50) # 1fb8 <strncpy+0x124>
    1f6c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f70:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f74:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f78:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f60 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f7c:	001501a4 	move	$r4,$r13
    1f80:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f84:	280000ac 	ld.b	$r12,$r5,0
    1f88:	2900008c 	st.b	$r12,$r4,0
    1f8c:	40002980 	beqz	$r12,40(0x28) # 1fb4 <strncpy+0x120>
    1f90:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f94:	03401cac 	andi	$r12,$r5,0x7
    1f98:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f9c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fa0:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ea8 <strncpy+0x14>
    1fa4:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f84 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fa8:	0015008d 	move	$r13,$r4
}
    1fac:	001501a4 	move	$r4,$r13
    1fb0:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fb4:	0015008d 	move	$r13,$r4
    1fb8:	0011b40c 	sub.d	$r12,$r0,$r13
    1fbc:	03401d8c 	andi	$r12,$r12,0x7
    1fc0:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fc4:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fc8:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fcc:	0013bdce 	masknez	$r14,$r14,$r15
    1fd0:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fd4:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fd8:	00153dce 	or	$r14,$r14,$r15
    1fdc:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fe0:	00131a31 	maskeqz	$r17,$r17,$r6
    1fe4:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1fe8:	001540d0 	or	$r16,$r6,$r16
    1fec:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2164 <strncpy+0x2d0>
    1ff0:	40015980 	beqz	$r12,344(0x158) # 2148 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1ff4:	290001a0 	st.b	$r0,$r13,0
    1ff8:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1ffc:	5801458f 	beq	$r12,$r15,324(0x144) # 2140 <strncpy+0x2ac>
    2000:	290005a0 	st.b	$r0,$r13,1(0x1)
    2004:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2008:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    200c:	5801658f 	beq	$r12,$r15,356(0x164) # 2170 <strncpy+0x2dc>
    2010:	290009a0 	st.b	$r0,$r13,2(0x2)
    2014:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2018:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    201c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2138 <strncpy+0x2a4>
    2020:	29000da0 	st.b	$r0,$r13,3(0x3)
    2024:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2028:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    202c:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2178 <strncpy+0x2e4>
    2030:	290011a0 	st.b	$r0,$r13,4(0x4)
    2034:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2038:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    203c:	5801458f 	beq	$r12,$r15,324(0x144) # 2180 <strncpy+0x2ec>
    2040:	290015a0 	st.b	$r0,$r13,5(0x5)
    2044:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2048:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    204c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2188 <strncpy+0x2f4>
    2050:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2054:	290019a0 	st.b	$r0,$r13,6(0x6)
    2058:	02801c12 	addi.w	$r18,$r0,7(0x7)
    205c:	0011b210 	sub.d	$r16,$r16,$r12
    2060:	00450e11 	srli.d	$r17,$r16,0x3
    2064:	0010b1ac 	add.d	$r12,$r13,$r12
    2068:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    206c:	27000180 	stptr.d	$r0,$r12,0
    2070:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2074:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 206c <strncpy+0x1d8>
    2078:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    207c:	0014c611 	and	$r17,$r16,$r17
    2080:	0040822f 	slli.w	$r15,$r17,0x0
    2084:	001049ef 	add.w	$r15,$r15,$r18
    2088:	0010c5cc 	add.d	$r12,$r14,$r17
    208c:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f7c <strncpy+0xe8>
    2090:	29000180 	st.b	$r0,$r12,0
    2094:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2098:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f7c <strncpy+0xe8>
    209c:	29000580 	st.b	$r0,$r12,1(0x1)
    20a0:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20a4:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f7c <strncpy+0xe8>
    20a8:	29000980 	st.b	$r0,$r12,2(0x2)
    20ac:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20b0:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f7c <strncpy+0xe8>
    20b4:	29000d80 	st.b	$r0,$r12,3(0x3)
    20b8:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20bc:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f7c <strncpy+0xe8>
    20c0:	29001180 	st.b	$r0,$r12,4(0x4)
    20c4:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20c8:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f7c <strncpy+0xe8>
    20cc:	29001580 	st.b	$r0,$r12,5(0x5)
    20d0:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20d4:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f7c <strncpy+0xe8>
    20d8:	29001980 	st.b	$r0,$r12,6(0x6)
    20dc:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20e0:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f7c <strncpy+0xe8>
    20e4:	29001d80 	st.b	$r0,$r12,7(0x7)
    20e8:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20ec:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f7c <strncpy+0xe8>
    20f0:	29002180 	st.b	$r0,$r12,8(0x8)
    20f4:	028025ee 	addi.w	$r14,$r15,9(0x9)
    20f8:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f7c <strncpy+0xe8>
    20fc:	29002580 	st.b	$r0,$r12,9(0x9)
    2100:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2104:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f7c <strncpy+0xe8>
    2108:	29002980 	st.b	$r0,$r12,10(0xa)
    210c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2110:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f7c <strncpy+0xe8>
    2114:	29002d80 	st.b	$r0,$r12,11(0xb)
    2118:	028031ee 	addi.w	$r14,$r15,12(0xc)
    211c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f7c <strncpy+0xe8>
    2120:	29003180 	st.b	$r0,$r12,12(0xc)
    2124:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2128:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f7c <strncpy+0xe8>
    212c:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2130:	001501a4 	move	$r4,$r13
    2134:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2138:	02800c12 	addi.w	$r18,$r0,3(0x3)
    213c:	53ff23ff 	b	-224(0xfffff20) # 205c <strncpy+0x1c8>
    2140:	02800412 	addi.w	$r18,$r0,1(0x1)
    2144:	53ff1bff 	b	-232(0xfffff18) # 205c <strncpy+0x1c8>
    2148:	001501ae 	move	$r14,$r13
    214c:	00150012 	move	$r18,$r0
    2150:	53ff0fff 	b	-244(0xfffff0c) # 205c <strncpy+0x1c8>
    2154:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2158:	0015008d 	move	$r13,$r4
    215c:	001501e5 	move	$r5,$r15
    2160:	53fdf7ff 	b	-524(0xffffdf4) # 1f54 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2164:	001501ac 	move	$r12,$r13
    2168:	0015000f 	move	$r15,$r0
    216c:	53ff27ff 	b	-220(0xfffff24) # 2090 <strncpy+0x1fc>
    2170:	02800812 	addi.w	$r18,$r0,2(0x2)
    2174:	53feebff 	b	-280(0xffffee8) # 205c <strncpy+0x1c8>
    2178:	02801012 	addi.w	$r18,$r0,4(0x4)
    217c:	53fee3ff 	b	-288(0xffffee0) # 205c <strncpy+0x1c8>
    2180:	02801412 	addi.w	$r18,$r0,5(0x5)
    2184:	53fedbff 	b	-296(0xffffed8) # 205c <strncpy+0x1c8>
    2188:	02801812 	addi.w	$r18,$r0,6(0x6)
    218c:	53fed3ff 	b	-304(0xffffed0) # 205c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2190:	2900008f 	st.b	$r15,$r4,0
    2194:	0015008d 	move	$r13,$r4
    2198:	53fdd7ff 	b	-556(0xffffdd4) # 1f6c <strncpy+0xd8>

000000000000219c <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    219c:	0015008c 	move	$r12,$r4
    21a0:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21a4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21a8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21ac:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21b0:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21b4:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21b8:	00408084 	slli.w	$r4,$r4,0x0
}
    21bc:	4c000020 	jirl	$r0,$r1,0

00000000000021c0 <openat>:
    register long a7 __asm__("a7") = n;
    21c0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21c4:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21c8:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21cc:	00408084 	slli.w	$r4,$r4,0x0
}
    21d0:	4c000020 	jirl	$r0,$r1,0

00000000000021d4 <close>:
    register long a7 __asm__("a7") = n;
    21d4:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21d8:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21dc:	00408084 	slli.w	$r4,$r4,0x0
}
    21e0:	4c000020 	jirl	$r0,$r1,0

00000000000021e4 <read>:
    register long a7 __asm__("a7") = n;
    21e4:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21e8:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21ec:	4c000020 	jirl	$r0,$r1,0

00000000000021f0 <write>:
    register long a7 __asm__("a7") = n;
    21f0:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21f4:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    21f8:	4c000020 	jirl	$r0,$r1,0

00000000000021fc <getpid>:
    register long a7 __asm__("a7") = n;
    21fc:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2200:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2204:	00408084 	slli.w	$r4,$r4,0x0
}
    2208:	4c000020 	jirl	$r0,$r1,0

000000000000220c <getppid>:
    register long a7 __asm__("a7") = n;
    220c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2210:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2214:	00408084 	slli.w	$r4,$r4,0x0
}
    2218:	4c000020 	jirl	$r0,$r1,0

000000000000221c <sched_yield>:
    register long a7 __asm__("a7") = n;
    221c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2220:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2224:	00408084 	slli.w	$r4,$r4,0x0
}
    2228:	4c000020 	jirl	$r0,$r1,0

000000000000222c <fork>:
    register long a7 __asm__("a7") = n;
    222c:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2230:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2234:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2238:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2244:	001500c5 	move	$r5,$r6
    if (stack)
    2248:	400008c0 	beqz	$r6,8(0x8) # 2250 <clone+0xc>
	stack += stack_size;
    224c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2250:	00408106 	slli.w	$r6,$r8,0x0
    2254:	00150009 	move	$r9,$r0
    2258:	00150008 	move	$r8,$r0
    225c:	00150007 	move	$r7,$r0
    2260:	5002c800 	b	712(0x2c8) # 2528 <__clone>

0000000000002264 <exit>:
    register long a7 __asm__("a7") = n;
    2264:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2268:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    226c:	4c000020 	jirl	$r0,$r1,0

0000000000002270 <waitpid>:
    register long a7 __asm__("a7") = n;
    2270:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2274:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2278:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    227c:	00408084 	slli.w	$r4,$r4,0x0
}
    2280:	4c000020 	jirl	$r0,$r1,0

0000000000002284 <exec>:
    register long a7 __asm__("a7") = n;
    2284:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2288:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    228c:	00408084 	slli.w	$r4,$r4,0x0
}
    2290:	4c000020 	jirl	$r0,$r1,0

0000000000002294 <execve>:
    register long a7 __asm__("a7") = n;
    2294:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2298:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    229c:	00408084 	slli.w	$r4,$r4,0x0
}
    22a0:	4c000020 	jirl	$r0,$r1,0

00000000000022a4 <times>:
    register long a7 __asm__("a7") = n;
    22a4:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22a8:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22ac:	00408084 	slli.w	$r4,$r4,0x0
}
    22b0:	4c000020 	jirl	$r0,$r1,0

00000000000022b4 <get_time>:

int64 get_time()
{
    22b4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22b8:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22bc:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22c0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22c4:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22cc:	44003c80 	bnez	$r4,60(0x3c) # 2308 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22d0:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22d4:	039f3c8c 	ori	$r12,$r4,0x7cf
    22d8:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22dc:	2a40006d 	ld.hu	$r13,$r3,0
    22e0:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22e4:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22e8:	00450c84 	srli.d	$r4,$r4,0x3
    22ec:	001eb084 	mulh.du	$r4,$r4,$r12
    22f0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22f4:	001db1ac 	mul.d	$r12,$r13,$r12
    22f8:	00451084 	srli.d	$r4,$r4,0x4
    22fc:	00109184 	add.d	$r4,$r12,$r4
}
    2300:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2304:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2308:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    230c:	53fff7ff 	b	-12(0xffffff4) # 2300 <get_time+0x4c>

0000000000002310 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2310:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2314:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2318:	00408084 	slli.w	$r4,$r4,0x0
}
    231c:	4c000020 	jirl	$r0,$r1,0

0000000000002320 <time>:
    register long a7 __asm__("a7") = n;
    2320:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2324:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2328:	00408084 	slli.w	$r4,$r4,0x0
}
    232c:	4c000020 	jirl	$r0,$r1,0

0000000000002330 <sleep>:

int sleep(unsigned long long time)
{
    2330:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2334:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2338:	00150064 	move	$r4,$r3
    233c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2340:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2344:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2348:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    234c:	44001080 	bnez	$r4,16(0x10) # 235c <sleep+0x2c>
    return 0;
    2350:	00150004 	move	$r4,$r0
}
    2354:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2358:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    235c:	24000064 	ldptr.w	$r4,$r3,0
}
    2360:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2364:	4c000020 	jirl	$r0,$r1,0

0000000000002368 <set_priority>:
    register long a7 __asm__("a7") = n;
    2368:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    236c:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2370:	00408084 	slli.w	$r4,$r4,0x0
}
    2374:	4c000020 	jirl	$r0,$r1,0

0000000000002378 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2378:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    237c:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2380:	4c000020 	jirl	$r0,$r1,0

0000000000002384 <munmap>:
    register long a7 __asm__("a7") = n;
    2384:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2388:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    238c:	00408084 	slli.w	$r4,$r4,0x0
}
    2390:	4c000020 	jirl	$r0,$r1,0

0000000000002394 <wait>:

int wait(int *code)
{
    2394:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2398:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    239c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23a0:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23a4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23a8:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23ac:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23b0:	4c000020 	jirl	$r0,$r1,0

00000000000023b4 <spawn>:
    register long a7 __asm__("a7") = n;
    23b4:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23b8:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23bc:	00408084 	slli.w	$r4,$r4,0x0
}
    23c0:	4c000020 	jirl	$r0,$r1,0

00000000000023c4 <mailread>:
    register long a7 __asm__("a7") = n;
    23c4:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c8:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23cc:	00408084 	slli.w	$r4,$r4,0x0
}
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <mailwrite>:
    register long a7 __asm__("a7") = n;
    23d4:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23d8:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <fstat>:
    register long a7 __asm__("a7") = n;
    23e4:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e8:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23f4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    23f8:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23fc:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2400:	00408084 	slli.w	$r4,$r4,0x0
}
    2404:	4c000020 	jirl	$r0,$r1,0

0000000000002408 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2408:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    240c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2410:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2414:	00408084 	slli.w	$r4,$r4,0x0
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <link>:

int link(char *old_path, char *new_path)
{
    241c:	0015008c 	move	$r12,$r4
    2420:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2424:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2428:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    242c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2430:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2434:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2438:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    243c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <unlink>:

int unlink(char *path)
{
    2444:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2448:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    244c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2450:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2454:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2458:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    245c:	4c000020 	jirl	$r0,$r1,0

0000000000002460 <uname>:
    register long a7 __asm__("a7") = n;
    2460:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2464:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2468:	00408084 	slli.w	$r4,$r4,0x0
}
    246c:	4c000020 	jirl	$r0,$r1,0

0000000000002470 <brk>:
    register long a7 __asm__("a7") = n;
    2470:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2474:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2478:	00408084 	slli.w	$r4,$r4,0x0
}
    247c:	4c000020 	jirl	$r0,$r1,0

0000000000002480 <getcwd>:
    register long a7 __asm__("a7") = n;
    2480:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2484:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2488:	4c000020 	jirl	$r0,$r1,0

000000000000248c <chdir>:
    register long a7 __asm__("a7") = n;
    248c:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2490:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2494:	00408084 	slli.w	$r4,$r4,0x0
}
    2498:	4c000020 	jirl	$r0,$r1,0

000000000000249c <mkdir>:

int mkdir(const char *path, mode_t mode){
    249c:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24a0:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24a4:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24a8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24ac:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b0:	002b0000 	syscall	0x0
    24b4:	00408084 	slli.w	$r4,$r4,0x0
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <getdents>:
    register long a7 __asm__("a7") = n;
    24bc:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c0:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <pipe>:
    register long a7 __asm__("a7") = n;
    24cc:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24d0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24d4:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24d8:	00408084 	slli.w	$r4,$r4,0x0
}
    24dc:	4c000020 	jirl	$r0,$r1,0

00000000000024e0 <dup>:
    register long a7 __asm__("a7") = n;
    24e0:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24e4:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24e8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ec:	4c000020 	jirl	$r0,$r1,0

00000000000024f0 <dup2>:
    register long a7 __asm__("a7") = n;
    24f0:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24f4:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f8:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    24fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2500:	4c000020 	jirl	$r0,$r1,0

0000000000002504 <mount>:
    register long a7 __asm__("a7") = n;
    2504:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2508:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    250c:	00408084 	slli.w	$r4,$r4,0x0
}
    2510:	4c000020 	jirl	$r0,$r1,0

0000000000002514 <umount>:
    register long a7 __asm__("a7") = n;
    2514:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2518:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    251c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2528:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    252c:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2530:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2534:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2538:	00150106 	move	$r6,$r8
	move $a3, $a5
    253c:	00150127 	move	$r7,$r9
	move $a4, $a6
    2540:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2544:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2548:	002b0000 	syscall	0x0

	beqz $a0, 1f
    254c:	40000880 	beqz	$r4,8(0x8) # 2554 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2550:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2554:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2558:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    255c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2560:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2564:	002b0000 	syscall	0x0
