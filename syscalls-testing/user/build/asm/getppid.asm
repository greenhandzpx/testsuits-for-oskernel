
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/getppid:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400a000 	bl	160(0xa0) # 10a4 <__start_main>

0000000000001008 <test_getppid>:
 * 不能通过测试则输出：
 * "  getppid error."
 */

int test_getppid()
{
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d4d084 	addi.d	$r4,$r4,1332(0x534)
{
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    TEST_START(__func__);
    1018:	54039400 	bl	916(0x394) # 13ac <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    1024:	54038800 	bl	904(0x388) # 13ac <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d4c084 	addi.d	$r4,$r4,1328(0x530)
    1030:	54037c00 	bl	892(0x37c) # 13ac <puts>
    pid_t ppid = getppid();
    1034:	5411b000 	bl	4528(0x11b0) # 21e4 <getppid>
    if(ppid > 0) printf("  getppid success. ppid : %d\n", ppid);
    1038:	64004004 	bge	$r0,$r4,64(0x40) # 1078 <test_getppid+0x70>
    103c:	00150085 	move	$r5,$r4
    1040:	1c000024 	pcaddu12i	$r4,1(0x1)
    1044:	02d4a084 	addi.d	$r4,$r4,1320(0x528)
    1048:	54039c00 	bl	924(0x39c) # 13e4 <printf>
    else printf("  getppid error.\n");
    TEST_END(__func__);
    104c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1050:	02d55084 	addi.d	$r4,$r4,1364(0x554)
    1054:	54035800 	bl	856(0x358) # 13ac <puts>
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1060:	54034c00 	bl	844(0x34c) # 13ac <puts>
}
    1064:	28c02061 	ld.d	$r1,$r3,8(0x8)
    TEST_END(__func__);
    1068:	1c000024 	pcaddu12i	$r4,1(0x1)
    106c:	02d3c084 	addi.d	$r4,$r4,1264(0x4f0)
}
    1070:	02c04063 	addi.d	$r3,$r3,16(0x10)
    TEST_END(__func__);
    1074:	50033800 	b	824(0x338) # 13ac <puts>
    else printf("  getppid error.\n");
    1078:	1c000024 	pcaddu12i	$r4,1(0x1)
    107c:	02d44084 	addi.d	$r4,$r4,1296(0x510)
    1080:	54036400 	bl	868(0x364) # 13e4 <printf>
    1084:	53ffcbff 	b	-56(0xfffffc8) # 104c <test_getppid+0x44>

0000000000001088 <main>:

int main(void) {
    1088:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    108c:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_getppid();
    1090:	57ff7bff 	bl	-136(0xfffff78) # 1008 <test_getppid>
	return 0;
}
    1094:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1098:	00150004 	move	$r4,$r0
    109c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10a0:	4c000020 	jirl	$r0,$r1,0

00000000000010a4 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10a4:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10a8:	24000084 	ldptr.w	$r4,$r4,0
{
    10ac:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10b0:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10b4:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10b8:	57ffd3ff 	bl	-48(0xfffffd0) # 1088 <main>
    10bc:	54118000 	bl	4480(0x1180) # 223c <exit>
	return 0;
}
    10c0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10c4:	00150004 	move	$r4,$r0
    10c8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10cc:	4c000020 	jirl	$r0,$r1,0

00000000000010d0 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10d0:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10d4:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10d8:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12a4 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10dc:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10e0:	1c00002c 	pcaddu12i	$r12,1(0x1)
    10e4:	02d3a18c 	addi.d	$r12,$r12,1256(0x4e8)
    10e8:	002195cf 	mod.wu	$r15,$r14,$r5
    10ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10f4 <printint.constprop.0+0x24>
    10f0:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    10f4:	002115cd 	div.wu	$r13,$r14,$r5
    10f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1100 <printint.constprop.0+0x30>
    10fc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1100:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1104:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1108:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    110c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1110:	680219c5 	bltu	$r14,$r5,536(0x218) # 1328 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1114:	002195af 	mod.wu	$r15,$r13,$r5
    1118:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1120 <printint.constprop.0+0x50>
    111c:	002a0007 	break	0x7
    1120:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1124:	002115ae 	div.wu	$r14,$r13,$r5
    1128:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1130 <printint.constprop.0+0x60>
    112c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1130:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1134:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1138:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 12f8 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    113c:	002195cf 	mod.wu	$r15,$r14,$r5
    1140:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1148 <printint.constprop.0+0x78>
    1144:	002a0007 	break	0x7
    1148:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    114c:	002115cd 	div.wu	$r13,$r14,$r5
    1150:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1158 <printint.constprop.0+0x88>
    1154:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1158:	38203d8f 	ldx.bu	$r15,$r12,$r15
    115c:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1160:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1304 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1164:	002195af 	mod.wu	$r15,$r13,$r5
    1168:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1170 <printint.constprop.0+0xa0>
    116c:	002a0007 	break	0x7
    1170:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1174:	002115ae 	div.wu	$r14,$r13,$r5
    1178:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1180 <printint.constprop.0+0xb0>
    117c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1180:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1184:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1188:	680189a5 	bltu	$r13,$r5,392(0x188) # 1310 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    118c:	002195cf 	mod.wu	$r15,$r14,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0xc8>
    1194:	002a0007 	break	0x7
    1198:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    119c:	002115cd 	div.wu	$r13,$r14,$r5
    11a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a8 <printint.constprop.0+0xd8>
    11a4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11ac:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11b0:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 131c <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11b4:	002195af 	mod.wu	$r15,$r13,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0xf0>
    11bc:	002a0007 	break	0x7
    11c0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11c4:	002115ae 	div.wu	$r14,$r13,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0x100>
    11cc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11d4:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11d8:	680115a5 	bltu	$r13,$r5,276(0x114) # 12ec <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11dc:	002195cf 	mod.wu	$r15,$r14,$r5
    11e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e8 <printint.constprop.0+0x118>
    11e4:	002a0007 	break	0x7
    11e8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11ec:	002115cd 	div.wu	$r13,$r14,$r5
    11f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f8 <printint.constprop.0+0x128>
    11f4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11fc:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1200:	680131c5 	bltu	$r14,$r5,304(0x130) # 1330 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1204:	002195af 	mod.wu	$r15,$r13,$r5
    1208:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1210 <printint.constprop.0+0x140>
    120c:	002a0007 	break	0x7
    1210:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1214:	002115ae 	div.wu	$r14,$r13,$r5
    1218:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1220 <printint.constprop.0+0x150>
    121c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1220:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1224:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1228:	680115a5 	bltu	$r13,$r5,276(0x114) # 133c <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    122c:	002195cf 	mod.wu	$r15,$r14,$r5
    1230:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1238 <printint.constprop.0+0x168>
    1234:	002a0007 	break	0x7
    1238:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    123c:	002115cd 	div.wu	$r13,$r14,$r5
    1240:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1248 <printint.constprop.0+0x178>
    1244:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1248:	38203d8f 	ldx.bu	$r15,$r12,$r15
    124c:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1250:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1348 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1254:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1258:	3820358d 	ldx.bu	$r13,$r12,$r13
    125c:	02801805 	addi.w	$r5,$r0,6(0x6)
    1260:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1264:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1268:	64001880 	bge	$r4,$r0,24(0x18) # 1280 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    126c:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1270:	0010b1ad 	add.d	$r13,$r13,$r12
    1274:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1278:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    127c:	00150185 	move	$r5,$r12
    write(f, s, l);
    1280:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1284:	02804006 	addi.w	$r6,$r0,16(0x10)
    1288:	001114c6 	sub.w	$r6,$r6,$r5
    128c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1290:	00109585 	add.d	$r5,$r12,$r5
    1294:	540f3400 	bl	3892(0xf34) # 21c8 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1298:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    129c:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12a0:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12a4:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12a8:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12ac:	02cc818c 	addi.d	$r12,$r12,800(0x320)
    12b0:	002195cf 	mod.wu	$r15,$r14,$r5
    12b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12bc <printint.constprop.0+0x1ec>
    12b8:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12bc:	002115cd 	div.wu	$r13,$r14,$r5
    12c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c8 <printint.constprop.0+0x1f8>
    12c4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12c8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12cc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12d0:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12d4:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12d8:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1114 <printint.constprop.0+0x44>
        buf[i--] = '-';
    12dc:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12e0:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    12e4:	02803805 	addi.w	$r5,$r0,14(0xe)
    12e8:	53ff9bff 	b	-104(0xfffff98) # 1280 <printint.constprop.0+0x1b0>
    12ec:	0280240c 	addi.w	$r12,$r0,9(0x9)
    12f0:	02802805 	addi.w	$r5,$r0,10(0xa)
    12f4:	53ff77ff 	b	-140(0xfffff74) # 1268 <printint.constprop.0+0x198>
    12f8:	0280340c 	addi.w	$r12,$r0,13(0xd)
    12fc:	02803805 	addi.w	$r5,$r0,14(0xe)
    1300:	53ff6bff 	b	-152(0xfffff68) # 1268 <printint.constprop.0+0x198>
    1304:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1308:	02803405 	addi.w	$r5,$r0,13(0xd)
    130c:	53ff5fff 	b	-164(0xfffff5c) # 1268 <printint.constprop.0+0x198>
    1310:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1314:	02803005 	addi.w	$r5,$r0,12(0xc)
    1318:	53ff53ff 	b	-176(0xfffff50) # 1268 <printint.constprop.0+0x198>
    131c:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1320:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1324:	53ff47ff 	b	-188(0xfffff44) # 1268 <printint.constprop.0+0x198>
    i = 15;
    1328:	02803c05 	addi.w	$r5,$r0,15(0xf)
    132c:	53ff57ff 	b	-172(0xfffff54) # 1280 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1330:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1334:	02802405 	addi.w	$r5,$r0,9(0x9)
    1338:	53ff33ff 	b	-208(0xfffff30) # 1268 <printint.constprop.0+0x198>
    133c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1340:	02802005 	addi.w	$r5,$r0,8(0x8)
    1344:	53ff27ff 	b	-220(0xfffff24) # 1268 <printint.constprop.0+0x198>
    1348:	0280180c 	addi.w	$r12,$r0,6(0x6)
    134c:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1350:	53ff1bff 	b	-232(0xfffff18) # 1268 <printint.constprop.0+0x198>

0000000000001354 <getchar>:
{
    1354:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1358:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    135c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1360:	00150004 	move	$r4,$r0
{
    1364:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1368:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    136c:	540e5000 	bl	3664(0xe50) # 21bc <read>
}
    1370:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1374:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1378:	02c08063 	addi.d	$r3,$r3,32(0x20)
    137c:	4c000020 	jirl	$r0,$r1,0

0000000000001380 <putchar>:
{
    1380:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1384:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1388:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    138c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1390:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1394:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1398:	540e3000 	bl	3632(0xe30) # 21c8 <write>
}
    139c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13a0:	00408084 	slli.w	$r4,$r4,0x0
}
    13a4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13a8:	4c000020 	jirl	$r0,$r1,0

00000000000013ac <puts>:
{
    13ac:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13b0:	29c02061 	st.d	$r1,$r3,8(0x8)
    13b4:	27000077 	stptr.d	$r23,$r3,0
    13b8:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13bc:	5406b800 	bl	1720(0x6b8) # 1a74 <strlen>
    13c0:	00150086 	move	$r6,$r4
    13c4:	001502e5 	move	$r5,$r23
    13c8:	02800404 	addi.w	$r4,$r0,1(0x1)
    13cc:	540dfc00 	bl	3580(0xdfc) # 21c8 <write>
}
    13d0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13d4:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13d8:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13dc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13e0:	4c000020 	jirl	$r0,$r1,0

00000000000013e4 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    13e4:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    13e8:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    13ec:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    13f0:	140000fa 	lu12i.w	$r26,7(0x7)
{
    13f4:	29c14079 	st.d	$r25,$r3,80(0x50)
    13f8:	29c1007b 	st.d	$r27,$r3,64(0x40)
    13fc:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1400:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1404:	29c18077 	st.d	$r23,$r3,96(0x60)
    1408:	29c16078 	st.d	$r24,$r3,88(0x58)
    140c:	0015009b 	move	$r27,$r4
    1410:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1414:	29c20066 	st.d	$r6,$r3,128(0x80)
    1418:	29c22067 	st.d	$r7,$r3,136(0x88)
    141c:	29c24068 	st.d	$r8,$r3,144(0x90)
    1420:	29c26069 	st.d	$r9,$r3,152(0x98)
    1424:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1428:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    142c:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1430:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1434:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1438:	1c00003c 	pcaddu12i	$r28,1(0x1)
    143c:	02c6439c 	addi.d	$r28,$r28,400(0x190)
        if (!*s)
    1440:	2800036c 	ld.b	$r12,$r27,0
    1444:	40008980 	beqz	$r12,136(0x88) # 14cc <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1448:	58027d99 	beq	$r12,$r25,636(0x27c) # 16c4 <printf+0x2e0>
    144c:	00150366 	move	$r6,$r27
    1450:	50000800 	b	8(0x8) # 1458 <printf+0x74>
    1454:	58009d99 	beq	$r12,$r25,156(0x9c) # 14f0 <printf+0x10c>
    1458:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    145c:	280000cc 	ld.b	$r12,$r6,0
    1460:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1454 <printf+0x70>
    1464:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1468:	0011ecd7 	sub.d	$r23,$r6,$r27
    146c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1470:	001502e6 	move	$r6,$r23
    1474:	00150365 	move	$r5,$r27
    1478:	02800404 	addi.w	$r4,$r0,1(0x1)
    147c:	540d4c00 	bl	3404(0xd4c) # 21c8 <write>
        out(f, a, l);
        if (l)
    1480:	4400b6e0 	bnez	$r23,180(0xb4) # 1534 <printf+0x150>
            continue;
        if (s[1] == 0)
    1484:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1488:	40004580 	beqz	$r12,68(0x44) # 14cc <printf+0xe8>
            break;
        switch (s[1])
    148c:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1490:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1564 <printf+0x180>
    1494:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 153c <printf+0x158>
    1498:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    149c:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 168c <printf+0x2a8>
    14a0:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14a4:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1654 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14a8:	2600006c 	ldptr.d	$r12,$r3,0
    14ac:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14b0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14b4:	24000184 	ldptr.w	$r4,$r12,0
    14b8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14bc:	2700006c 	stptr.d	$r12,$r3,0
    14c0:	57fc13ff 	bl	-1008(0xffffc10) # 10d0 <printint.constprop.0>
        if (!*s)
    14c4:	2800036c 	ld.b	$r12,$r27,0
    14c8:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1448 <printf+0x64>
    }
    va_end(ap);
}
    14cc:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14d0:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14d4:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14d8:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14dc:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14e0:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    14e4:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    14e8:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    14ec:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    14f0:	280004cc 	ld.b	$r12,$r6,1(0x1)
    14f4:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1464 <printf+0x80>
    14f8:	001500d8 	move	$r24,$r6
    14fc:	50000c00 	b	12(0xc) # 1508 <printf+0x124>
    1500:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1504:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1468 <printf+0x84>
    1508:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    150c:	2800030c 	ld.b	$r12,$r24,0
    1510:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1514:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1500 <printf+0x11c>
        l = z - a;
    1518:	0011ecd7 	sub.d	$r23,$r6,$r27
    151c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1520:	001502e6 	move	$r6,$r23
    1524:	00150365 	move	$r5,$r27
    1528:	02800404 	addi.w	$r4,$r0,1(0x1)
    152c:	540c9c00 	bl	3228(0xc9c) # 21c8 <write>
        if (l)
    1530:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1484 <printf+0xa0>
    1534:	0015031b 	move	$r27,$r24
    1538:	53ff0bff 	b	-248(0xfffff08) # 1440 <printf+0x5c>
        switch (s[1])
    153c:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1540:	5c01158d 	bne	$r12,$r13,276(0x114) # 1654 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1544:	2600006c 	ldptr.d	$r12,$r3,0
    1548:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    154c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1550:	24000184 	ldptr.w	$r4,$r12,0
    1554:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1558:	2700006c 	stptr.d	$r12,$r3,0
    155c:	57fb77ff 	bl	-1164(0xffffb74) # 10d0 <printint.constprop.0>
        s += 2;
    1560:	53ff67ff 	b	-156(0xfffff64) # 14c4 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1564:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1568:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    156c:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1570:	260001ac 	ldptr.d	$r12,$r13,0
    1574:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1578:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    157c:	0045f18a 	srli.d	$r10,$r12,0x3c
    1580:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1584:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1588:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    158c:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1590:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1594:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1598:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    159c:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15a0:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15a4:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15a8:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15ac:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15b0:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15b4:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15b8:	3820278a 	ldx.bu	$r10,$r28,$r9
    15bc:	38202389 	ldx.bu	$r9,$r28,$r8
    15c0:	38201f88 	ldx.bu	$r8,$r28,$r7
    15c4:	38201787 	ldx.bu	$r7,$r28,$r5
    15c8:	38201385 	ldx.bu	$r5,$r28,$r4
    15cc:	38205384 	ldx.bu	$r4,$r28,$r20
    15d0:	38204f94 	ldx.bu	$r20,$r28,$r19
    15d4:	38204b93 	ldx.bu	$r19,$r28,$r18
    15d8:	38204792 	ldx.bu	$r18,$r28,$r17
    15dc:	38204391 	ldx.bu	$r17,$r28,$r16
    15e0:	38203f90 	ldx.bu	$r16,$r28,$r15
    15e4:	38203b8f 	ldx.bu	$r15,$r28,$r14
    15e8:	3820378e 	ldx.bu	$r14,$r28,$r13
    15ec:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    15f0:	03403d8c 	andi	$r12,$r12,0xf
    15f4:	2900286b 	st.b	$r11,$r3,10(0xa)
    15f8:	29002c6a 	st.b	$r10,$r3,11(0xb)
    15fc:	29003069 	st.b	$r9,$r3,12(0xc)
    1600:	29003468 	st.b	$r8,$r3,13(0xd)
    1604:	29003867 	st.b	$r7,$r3,14(0xe)
    1608:	29003c65 	st.b	$r5,$r3,15(0xf)
    160c:	29004064 	st.b	$r4,$r3,16(0x10)
    1610:	29004474 	st.b	$r20,$r3,17(0x11)
    1614:	29004873 	st.b	$r19,$r3,18(0x12)
    1618:	29004c72 	st.b	$r18,$r3,19(0x13)
    161c:	29005071 	st.b	$r17,$r3,20(0x14)
    1620:	29005470 	st.b	$r16,$r3,21(0x15)
    1624:	2900586f 	st.b	$r15,$r3,22(0x16)
    1628:	29005c6e 	st.b	$r14,$r3,23(0x17)
    162c:	3820378d 	ldx.bu	$r13,$r28,$r13
    1630:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1634:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1638:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    163c:	2900606d 	st.b	$r13,$r3,24(0x18)
    1640:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1644:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1648:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    164c:	540b7c00 	bl	2940(0xb7c) # 21c8 <write>
        s += 2;
    1650:	53fe77ff 	b	-396(0xffffe74) # 14c4 <printf+0xe0>
    char byte = c;
    1654:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1658:	02800406 	addi.w	$r6,$r0,1(0x1)
    165c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1660:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1664:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1668:	540b6000 	bl	2912(0xb60) # 21c8 <write>
    char byte = c;
    166c:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1670:	02800406 	addi.w	$r6,$r0,1(0x1)
    1674:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1678:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    167c:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1680:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1684:	540b4400 	bl	2884(0xb44) # 21c8 <write>
        s += 2;
    1688:	53fe3fff 	b	-452(0xffffe3c) # 14c4 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    168c:	2600006c 	ldptr.d	$r12,$r3,0
    1690:	26000197 	ldptr.d	$r23,$r12,0
    1694:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1698:	2700006c 	stptr.d	$r12,$r3,0
    169c:	40004ee0 	beqz	$r23,76(0x4c) # 16e8 <printf+0x304>
            l = strnlen(a, 200);
    16a0:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16a4:	001502e4 	move	$r4,$r23
    16a8:	5405b400 	bl	1460(0x5b4) # 1c5c <strnlen>
    16ac:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16b0:	001502e5 	move	$r5,$r23
    16b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    16b8:	540b1000 	bl	2832(0xb10) # 21c8 <write>
        s += 2;
    16bc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16c0:	53fe07ff 	b	-508(0xffffe04) # 14c4 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16c4:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16c8:	00150366 	move	$r6,$r27
    16cc:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 14f8 <printf+0x114>
    write(f, s, l);
    16d0:	00150006 	move	$r6,$r0
    16d4:	00150365 	move	$r5,$r27
    16d8:	02800404 	addi.w	$r4,$r0,1(0x1)
    16dc:	540aec00 	bl	2796(0xaec) # 21c8 <write>
    16e0:	00150378 	move	$r24,$r27
    16e4:	53fda3ff 	b	-608(0xffffda0) # 1484 <printf+0xa0>
                a = "(null)";
    16e8:	1c000037 	pcaddu12i	$r23,1(0x1)
    16ec:	02fb22f7 	addi.d	$r23,$r23,-312(0xec8)
    16f0:	53ffb3ff 	b	-80(0xfffffb0) # 16a0 <printf+0x2bc>

00000000000016f4 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    16f4:	0280800c 	addi.w	$r12,$r0,32(0x20)
    16f8:	5800108c 	beq	$r4,$r12,16(0x10) # 1708 <isspace+0x14>
    16fc:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1700:	02401484 	sltui	$r4,$r4,5(0x5)
    1704:	4c000020 	jirl	$r0,$r1,0
    1708:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    170c:	4c000020 	jirl	$r0,$r1,0

0000000000001710 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1710:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1714:	02402884 	sltui	$r4,$r4,10(0xa)
    1718:	4c000020 	jirl	$r0,$r1,0

000000000000171c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    171c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1720:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1724:	2800008d 	ld.b	$r13,$r4,0
    1728:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    172c:	580061ae 	beq	$r13,$r14,96(0x60) # 178c <atoi+0x70>
    1730:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 178c <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1734:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1738:	580065ac 	beq	$r13,$r12,100(0x64) # 179c <atoi+0x80>
    173c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1740:	58007dac 	beq	$r13,$r12,124(0x7c) # 17bc <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1744:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1748:	0280240e 	addi.w	$r14,$r0,9(0x9)
    174c:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1750:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1754:	680061cf 	bltu	$r14,$r15,96(0x60) # 17b4 <atoi+0x98>
    int n = 0, neg = 0;
    1758:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    175c:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1760:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1764:	001c126f 	mul.w	$r15,$r19,$r4
    1768:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    176c:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1770:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1774:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1778:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    177c:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1780:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1764 <atoi+0x48>
    return neg ? n : -n;
    1784:	40001280 	beqz	$r20,16(0x10) # 1794 <atoi+0x78>
}
    1788:	4c000020 	jirl	$r0,$r1,0
        s++;
    178c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1790:	53ff97ff 	b	-108(0xfffff94) # 1724 <atoi+0x8>
    1794:	00113e04 	sub.w	$r4,$r16,$r15
    1798:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    179c:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17a0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17a4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17a8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17ac:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17b0:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1758 <atoi+0x3c>
    17b4:	00150004 	move	$r4,$r0
}
    17b8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17bc:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17c0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17c4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17c8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17cc:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17b4 <atoi+0x98>
        neg = 1;
    17d0:	02800414 	addi.w	$r20,$r0,1(0x1)
    17d4:	53ff87ff 	b	-124(0xfffff84) # 1758 <atoi+0x3c>

00000000000017d8 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    17d8:	400198c0 	beqz	$r6,408(0x198) # 1970 <memset+0x198>
    17dc:	0011900c 	sub.d	$r12,$r0,$r4
    17e0:	03401d8c 	andi	$r12,$r12,0x7
    17e4:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    17e8:	02402dae 	sltui	$r14,$r13,11(0xb)
    17ec:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    17f0:	0013b9ad 	masknez	$r13,$r13,$r14
    17f4:	001339ee 	maskeqz	$r14,$r15,$r14
    17f8:	001539ad 	or	$r13,$r13,$r14
    17fc:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1800:	00005ca5 	ext.w.b	$r5,$r5
    1804:	680191ed 	bltu	$r15,$r13,400(0x190) # 1994 <memset+0x1bc>
    1808:	40018180 	beqz	$r12,384(0x180) # 1988 <memset+0x1b0>
    180c:	29000085 	st.b	$r5,$r4,0
    1810:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1814:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1818:	5801698d 	beq	$r12,$r13,360(0x168) # 1980 <memset+0x1a8>
    181c:	29000485 	st.b	$r5,$r4,1(0x1)
    1820:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1824:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1828:	5801798d 	beq	$r12,$r13,376(0x178) # 19a0 <memset+0x1c8>
    182c:	29000885 	st.b	$r5,$r4,2(0x2)
    1830:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1834:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1838:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1974 <memset+0x19c>
    183c:	29000c85 	st.b	$r5,$r4,3(0x3)
    1840:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1844:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1848:	5801618d 	beq	$r12,$r13,352(0x160) # 19a8 <memset+0x1d0>
    184c:	29001085 	st.b	$r5,$r4,4(0x4)
    1850:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1854:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1858:	5801598d 	beq	$r12,$r13,344(0x158) # 19b0 <memset+0x1d8>
    185c:	29001485 	st.b	$r5,$r4,5(0x5)
    1860:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1864:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1868:	5c01518d 	bne	$r12,$r13,336(0x150) # 19b8 <memset+0x1e0>
    186c:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1870:	29001885 	st.b	$r5,$r4,6(0x6)
    1874:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1878:	0015000d 	move	$r13,$r0
    187c:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1880:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1884:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1888:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    188c:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1890:	0011b0d0 	sub.d	$r16,$r6,$r12
    1894:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1898:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    189c:	0010b08c 	add.d	$r12,$r4,$r12
    18a0:	00450e0f 	srli.d	$r15,$r16,0x3
    18a4:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18a8:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18ac:	2700018d 	stptr.d	$r13,$r12,0
    18b0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18b4:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18ac <memset+0xd4>
    18b8:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18bc:	0014be0f 	and	$r15,$r16,$r15
    18c0:	004081ed 	slli.w	$r13,$r15,0x0
    18c4:	0010bdcc 	add.d	$r12,$r14,$r15
    18c8:	001045ad 	add.w	$r13,$r13,$r17
    18cc:	5800b20f 	beq	$r16,$r15,176(0xb0) # 197c <memset+0x1a4>
    18d0:	29000185 	st.b	$r5,$r12,0
    18d4:	028005ae 	addi.w	$r14,$r13,1(0x1)
    18d8:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1970 <memset+0x198>
    18dc:	29000585 	st.b	$r5,$r12,1(0x1)
    18e0:	028009ae 	addi.w	$r14,$r13,2(0x2)
    18e4:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1970 <memset+0x198>
    18e8:	29000985 	st.b	$r5,$r12,2(0x2)
    18ec:	02800dae 	addi.w	$r14,$r13,3(0x3)
    18f0:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1970 <memset+0x198>
    18f4:	29000d85 	st.b	$r5,$r12,3(0x3)
    18f8:	028011ae 	addi.w	$r14,$r13,4(0x4)
    18fc:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1970 <memset+0x198>
    1900:	29001185 	st.b	$r5,$r12,4(0x4)
    1904:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1908:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1970 <memset+0x198>
    190c:	29001585 	st.b	$r5,$r12,5(0x5)
    1910:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1914:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1970 <memset+0x198>
    1918:	29001985 	st.b	$r5,$r12,6(0x6)
    191c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1920:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1970 <memset+0x198>
    1924:	29001d85 	st.b	$r5,$r12,7(0x7)
    1928:	028021ae 	addi.w	$r14,$r13,8(0x8)
    192c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1970 <memset+0x198>
    1930:	29002185 	st.b	$r5,$r12,8(0x8)
    1934:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1938:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1970 <memset+0x198>
    193c:	29002585 	st.b	$r5,$r12,9(0x9)
    1940:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1944:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1970 <memset+0x198>
    1948:	29002985 	st.b	$r5,$r12,10(0xa)
    194c:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1950:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1970 <memset+0x198>
    1954:	29002d85 	st.b	$r5,$r12,11(0xb)
    1958:	028031ae 	addi.w	$r14,$r13,12(0xc)
    195c:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1970 <memset+0x198>
    1960:	29003185 	st.b	$r5,$r12,12(0xc)
    1964:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1968:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1970 <memset+0x198>
    196c:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1970:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1974:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1978:	53ff03ff 	b	-256(0xfffff00) # 1878 <memset+0xa0>
    197c:	4c000020 	jirl	$r0,$r1,0
    1980:	02800411 	addi.w	$r17,$r0,1(0x1)
    1984:	53fef7ff 	b	-268(0xffffef4) # 1878 <memset+0xa0>
    1988:	0015008e 	move	$r14,$r4
    198c:	00150011 	move	$r17,$r0
    1990:	53feebff 	b	-280(0xffffee8) # 1878 <memset+0xa0>
    1994:	0015008c 	move	$r12,$r4
    1998:	0015000d 	move	$r13,$r0
    199c:	53ff37ff 	b	-204(0xfffff34) # 18d0 <memset+0xf8>
    19a0:	02800811 	addi.w	$r17,$r0,2(0x2)
    19a4:	53fed7ff 	b	-300(0xffffed4) # 1878 <memset+0xa0>
    19a8:	02801011 	addi.w	$r17,$r0,4(0x4)
    19ac:	53fecfff 	b	-308(0xffffecc) # 1878 <memset+0xa0>
    19b0:	02801411 	addi.w	$r17,$r0,5(0x5)
    19b4:	53fec7ff 	b	-316(0xffffec4) # 1878 <memset+0xa0>
    19b8:	02801811 	addi.w	$r17,$r0,6(0x6)
    19bc:	53febfff 	b	-324(0xffffebc) # 1878 <memset+0xa0>

00000000000019c0 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19c0:	2800008c 	ld.b	$r12,$r4,0
    19c4:	280000ae 	ld.b	$r14,$r5,0
    19c8:	5c0035cc 	bne	$r14,$r12,52(0x34) # 19fc <strcmp+0x3c>
    19cc:	40003980 	beqz	$r12,56(0x38) # 1a04 <strcmp+0x44>
    19d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19d4:	50000800 	b	8(0x8) # 19dc <strcmp+0x1c>
    19d8:	400019a0 	beqz	$r13,24(0x18) # 19f0 <strcmp+0x30>
    19dc:	3800308d 	ldx.b	$r13,$r4,$r12
    19e0:	380030ae 	ldx.b	$r14,$r5,$r12
    19e4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    19e8:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 19d8 <strcmp+0x18>
    19ec:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    19f0:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    19f4:	001111a4 	sub.w	$r4,$r13,$r4
    19f8:	4c000020 	jirl	$r0,$r1,0
    19fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a00:	53fff3ff 	b	-16(0xffffff0) # 19f0 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a04:	0015000d 	move	$r13,$r0
    1a08:	53ffebff 	b	-24(0xfffffe8) # 19f0 <strcmp+0x30>

0000000000001a0c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a0c:	400054c0 	beqz	$r6,84(0x54) # 1a60 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a10:	2a00008d 	ld.bu	$r13,$r4,0
    1a14:	2a0000ae 	ld.bu	$r14,$r5,0
    1a18:	40003da0 	beqz	$r13,60(0x3c) # 1a54 <strncmp+0x48>
    1a1c:	40003dc0 	beqz	$r14,60(0x3c) # 1a58 <strncmp+0x4c>
    if (!n--)
    1a20:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a24:	400034c0 	beqz	$r6,52(0x34) # 1a58 <strncmp+0x4c>
    1a28:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a2c:	580019ae 	beq	$r13,$r14,24(0x18) # 1a44 <strncmp+0x38>
    1a30:	50002800 	b	40(0x28) # 1a58 <strncmp+0x4c>
    1a34:	400035c0 	beqz	$r14,52(0x34) # 1a68 <strncmp+0x5c>
    1a38:	580020cc 	beq	$r6,$r12,32(0x20) # 1a58 <strncmp+0x4c>
    1a3c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a40:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a68 <strncmp+0x5c>
    1a44:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a48:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a4c:	001501af 	move	$r15,$r13
    1a50:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a34 <strncmp+0x28>
    1a54:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a58:	001139a4 	sub.w	$r4,$r13,$r14
    1a5c:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a60:	00150004 	move	$r4,$r0
}
    1a64:	4c000020 	jirl	$r0,$r1,0
    1a68:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a6c:	001139a4 	sub.w	$r4,$r13,$r14
    1a70:	4c000020 	jirl	$r0,$r1,0

0000000000001a74 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a74:	03401c8c 	andi	$r12,$r4,0x7
    1a78:	4000b180 	beqz	$r12,176(0xb0) # 1b28 <strlen+0xb4>
        if (!*s)
    1a7c:	2800008c 	ld.b	$r12,$r4,0
    1a80:	4000b180 	beqz	$r12,176(0xb0) # 1b30 <strlen+0xbc>
    1a84:	0015008c 	move	$r12,$r4
    1a88:	50000c00 	b	12(0xc) # 1a94 <strlen+0x20>
    1a8c:	2800018d 	ld.b	$r13,$r12,0
    1a90:	400091a0 	beqz	$r13,144(0x90) # 1b20 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1a94:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a98:	03401d8d 	andi	$r13,$r12,0x7
    1a9c:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1a8c <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1aa0:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1aa4:	2600018f 	ldptr.d	$r15,$r12,0
    1aa8:	03bbfdad 	ori	$r13,$r13,0xeff
    1aac:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ab0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1ab4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ab8:	038201ce 	ori	$r14,$r14,0x80
    1abc:	0010b5ed 	add.d	$r13,$r15,$r13
    1ac0:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1ac4:	0016bdad 	andn	$r13,$r13,$r15
    1ac8:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1acc:	0014b9ae 	and	$r14,$r13,$r14
    1ad0:	440049c0 	bnez	$r14,72(0x48) # 1b18 <strlen+0xa4>
    1ad4:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1ad8:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1adc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1ae0:	2600018e 	ldptr.d	$r14,$r12,0
    1ae4:	03bbfe2d 	ori	$r13,$r17,0xeff
    1ae8:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1aec:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1af0:	0382020f 	ori	$r15,$r16,0x80
    1af4:	0010b5cd 	add.d	$r13,$r14,$r13
    1af8:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1afc:	0016b9ad 	andn	$r13,$r13,$r14
    1b00:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b04:	0014bdad 	and	$r13,$r13,$r15
    1b08:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1adc <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b0c:	2800018d 	ld.b	$r13,$r12,0
    1b10:	400011a0 	beqz	$r13,16(0x10) # 1b20 <strlen+0xac>
    1b14:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b18:	2800018d 	ld.b	$r13,$r12,0
    1b1c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b14 <strlen+0xa0>
        ;
    return s - a;
    1b20:	00119184 	sub.d	$r4,$r12,$r4
}
    1b24:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b28:	0015008c 	move	$r12,$r4
    1b2c:	53ff77ff 	b	-140(0xfffff74) # 1aa0 <strlen+0x2c>
        if (!*s)
    1b30:	00150004 	move	$r4,$r0
            return s - a;
    1b34:	4c000020 	jirl	$r0,$r1,0

0000000000001b38 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b38:	03401c8c 	andi	$r12,$r4,0x7
    1b3c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b40:	44002180 	bnez	$r12,32(0x20) # 1b60 <memchr+0x28>
    1b44:	50002c00 	b	44(0x2c) # 1b70 <memchr+0x38>
    1b48:	2a00008c 	ld.bu	$r12,$r4,0
    1b4c:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c44 <memchr+0x10c>
    1b50:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b54:	03401c8c 	andi	$r12,$r4,0x7
    1b58:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b5c:	40001580 	beqz	$r12,20(0x14) # 1b70 <memchr+0x38>
    1b60:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b48 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b64:	0015000d 	move	$r13,$r0
}
    1b68:	001501a4 	move	$r4,$r13
    1b6c:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b70:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b74:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b68 <memchr+0x30>
    1b78:	2a00008c 	ld.bu	$r12,$r4,0
    1b7c:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c44 <memchr+0x10c>
        size_t k = ONES * c;
    1b80:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1b84:	0384058c 	ori	$r12,$r12,0x101
    1b88:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1b8c:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b90:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1b94:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b98:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c54 <memchr+0x11c>
    1b9c:	2600008d 	ldptr.d	$r13,$r4,0
    1ba0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1ba4:	038201ce 	ori	$r14,$r14,0x80
    1ba8:	0015b60d 	xor	$r13,$r16,$r13
    1bac:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bb0:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bb4:	0016b58c 	andn	$r12,$r12,$r13
    1bb8:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bbc:	0014b98c 	and	$r12,$r12,$r14
    1bc0:	44009580 	bnez	$r12,148(0x94) # 1c54 <memchr+0x11c>
    1bc4:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1bc8:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1bcc:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1bd0:	50002000 	b	32(0x20) # 1bf0 <memchr+0xb8>
    1bd4:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1bd8:	0015b20c 	xor	$r12,$r16,$r12
    1bdc:	0010b98e 	add.d	$r14,$r12,$r14
    1be0:	0016b1cc 	andn	$r12,$r14,$r12
    1be4:	0014bd8c 	and	$r12,$r12,$r15
    1be8:	44006580 	bnez	$r12,100(0x64) # 1c4c <memchr+0x114>
    1bec:	001501a4 	move	$r4,$r13
    1bf0:	03bbfe4e 	ori	$r14,$r18,0xeff
    1bf4:	0382022f 	ori	$r15,$r17,0x80
    1bf8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1bfc:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c00:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c04:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c08:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c0c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c10:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1bd4 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c14:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b64 <memchr+0x2c>
    1c18:	2a0001ac 	ld.bu	$r12,$r13,0
    1c1c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b68 <memchr+0x30>
    1c20:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c24:	001099a6 	add.d	$r6,$r13,$r6
    1c28:	50001000 	b	16(0x10) # 1c38 <memchr+0x100>
    1c2c:	2a00018e 	ld.bu	$r14,$r12,0
    1c30:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c34:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b68 <memchr+0x30>
    1c38:	0015018d 	move	$r13,$r12
    1c3c:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c2c <memchr+0xf4>
    1c40:	53ff27ff 	b	-220(0xfffff24) # 1b64 <memchr+0x2c>
    1c44:	0015008d 	move	$r13,$r4
    1c48:	53ffd3ff 	b	-48(0xfffffd0) # 1c18 <memchr+0xe0>
    1c4c:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c50:	53ffcfff 	b	-52(0xfffffcc) # 1c1c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c54:	0015008d 	move	$r13,$r4
    1c58:	53ffcbff 	b	-56(0xfffffc8) # 1c20 <memchr+0xe8>

0000000000001c5c <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c5c:	03401c8c 	andi	$r12,$r4,0x7
    1c60:	40011980 	beqz	$r12,280(0x118) # 1d78 <strnlen+0x11c>
    1c64:	4000f4a0 	beqz	$r5,244(0xf4) # 1d58 <strnlen+0xfc>
    1c68:	2a00008c 	ld.bu	$r12,$r4,0
    1c6c:	4000f580 	beqz	$r12,244(0xf4) # 1d60 <strnlen+0x104>
    1c70:	001500ac 	move	$r12,$r5
    1c74:	0015008d 	move	$r13,$r4
    1c78:	50001000 	b	16(0x10) # 1c88 <strnlen+0x2c>
    1c7c:	4000dd80 	beqz	$r12,220(0xdc) # 1d58 <strnlen+0xfc>
    1c80:	2a0001ae 	ld.bu	$r14,$r13,0
    1c84:	4000e5c0 	beqz	$r14,228(0xe4) # 1d68 <strnlen+0x10c>
    1c88:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1c8c:	03401dae 	andi	$r14,$r13,0x7
    1c90:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1c94:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1c7c <strnlen+0x20>
    if (n && *s != c)
    1c98:	4000c180 	beqz	$r12,192(0xc0) # 1d58 <strnlen+0xfc>
    1c9c:	2a0001ae 	ld.bu	$r14,$r13,0
    1ca0:	4000c9c0 	beqz	$r14,200(0xc8) # 1d68 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ca4:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1ca8:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1d84 <strnlen+0x128>
    1cac:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cb0:	260001b0 	ldptr.d	$r16,$r13,0
    1cb4:	03bbfdce 	ori	$r14,$r14,0xeff
    1cb8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cbc:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1cc0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cc4:	038201ef 	ori	$r15,$r15,0x80
    1cc8:	0010ba0e 	add.d	$r14,$r16,$r14
    1ccc:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cd0:	0016c1ce 	andn	$r14,$r14,$r16
    1cd4:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cd8:	0014bdcf 	and	$r15,$r14,$r15
    1cdc:	4400a9e0 	bnez	$r15,168(0xa8) # 1d84 <strnlen+0x128>
    1ce0:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1ce4:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1ce8:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1cec:	50001c00 	b	28(0x1c) # 1d08 <strnlen+0xac>
    1cf0:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1cf4:	0010b9ee 	add.d	$r14,$r15,$r14
    1cf8:	0016bdce 	andn	$r14,$r14,$r15
    1cfc:	0014c1ce 	and	$r14,$r14,$r16
    1d00:	440071c0 	bnez	$r14,112(0x70) # 1d70 <strnlen+0x114>
    1d04:	0015022d 	move	$r13,$r17
    1d08:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d0c:	03820250 	ori	$r16,$r18,0x80
    1d10:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d14:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d18:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d1c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d20:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d24:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d28:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1cf0 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d2c:	40002d80 	beqz	$r12,44(0x2c) # 1d58 <strnlen+0xfc>
    1d30:	2a00022d 	ld.bu	$r13,$r17,0
    1d34:	400021a0 	beqz	$r13,32(0x20) # 1d54 <strnlen+0xf8>
    1d38:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d3c:	0010b22c 	add.d	$r12,$r17,$r12
    1d40:	001501b1 	move	$r17,$r13
    1d44:	5800158d 	beq	$r12,$r13,20(0x14) # 1d58 <strnlen+0xfc>
    1d48:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d4c:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d50:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d40 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d54:	00119225 	sub.d	$r5,$r17,$r4
}
    1d58:	001500a4 	move	$r4,$r5
    1d5c:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d60:	001500ac 	move	$r12,$r5
    1d64:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d68:	001501b1 	move	$r17,$r13
    1d6c:	53ffc7ff 	b	-60(0xfffffc4) # 1d30 <strnlen+0xd4>
    1d70:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d74:	53ffc3ff 	b	-64(0xfffffc0) # 1d34 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d78:	001500ac 	move	$r12,$r5
    1d7c:	0015008d 	move	$r13,$r4
    1d80:	53ff1bff 	b	-232(0xfffff18) # 1c98 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d84:	001501b1 	move	$r17,$r13
    1d88:	53ffb3ff 	b	-80(0xfffffb0) # 1d38 <strnlen+0xdc>

0000000000001d8c <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1d8c:	0015948c 	xor	$r12,$r4,$r5
    1d90:	03401d8c 	andi	$r12,$r12,0x7
    1d94:	4400ad80 	bnez	$r12,172(0xac) # 1e40 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1d98:	03401cac 	andi	$r12,$r5,0x7
    1d9c:	40003180 	beqz	$r12,48(0x30) # 1dcc <strcpy+0x40>
            if (!(*d = *s))
    1da0:	280000ac 	ld.b	$r12,$r5,0
    1da4:	2900008c 	st.b	$r12,$r4,0
    1da8:	44001580 	bnez	$r12,20(0x14) # 1dbc <strcpy+0x30>
    1dac:	5000bc00 	b	188(0xbc) # 1e68 <strcpy+0xdc>
    1db0:	280000ac 	ld.b	$r12,$r5,0
    1db4:	2900008c 	st.b	$r12,$r4,0
    1db8:	4000a980 	beqz	$r12,168(0xa8) # 1e60 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1dbc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1dc0:	03401cac 	andi	$r12,$r5,0x7
    1dc4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1dc8:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1db0 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1dcc:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1dd0:	260000ae 	ldptr.d	$r14,$r5,0
    1dd4:	03bbfd8c 	ori	$r12,$r12,0xeff
    1dd8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ddc:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1de0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1de4:	038201ad 	ori	$r13,$r13,0x80
    1de8:	0010b1cc 	add.d	$r12,$r14,$r12
    1dec:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1df0:	0016b98c 	andn	$r12,$r12,$r14
    1df4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1df8:	0014b58c 	and	$r12,$r12,$r13
    1dfc:	44004580 	bnez	$r12,68(0x44) # 1e40 <strcpy+0xb4>
    1e00:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e04:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e08:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e0c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e10:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e14:	260000ae 	ldptr.d	$r14,$r5,0
    1e18:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e1c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e20:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e24:	038201ed 	ori	$r13,$r15,0x80
    1e28:	0010b1cc 	add.d	$r12,$r14,$r12
    1e2c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e30:	0016b98c 	andn	$r12,$r12,$r14
    1e34:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e38:	0014b58c 	and	$r12,$r12,$r13
    1e3c:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e08 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e40:	280000ac 	ld.b	$r12,$r5,0
    1e44:	2900008c 	st.b	$r12,$r4,0
    1e48:	40001d80 	beqz	$r12,28(0x1c) # 1e64 <strcpy+0xd8>
    1e4c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e50:	280000ac 	ld.b	$r12,$r5,0
    1e54:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e58:	2900008c 	st.b	$r12,$r4,0
    1e5c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e4c <strcpy+0xc0>
        ;
    return d;
}
    1e60:	4c000020 	jirl	$r0,$r1,0
    1e64:	4c000020 	jirl	$r0,$r1,0
    1e68:	4c000020 	jirl	$r0,$r1,0

0000000000001e6c <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e6c:	0015948c 	xor	$r12,$r4,$r5
    1e70:	03401d8c 	andi	$r12,$r12,0x7
    1e74:	4400ad80 	bnez	$r12,172(0xac) # 1f20 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1e78:	03401cac 	andi	$r12,$r5,0x7
    1e7c:	44010180 	bnez	$r12,256(0x100) # 1f7c <strncpy+0x110>
            ;
        if (!n || !*s)
    1e80:	400100c0 	beqz	$r6,256(0x100) # 1f80 <strncpy+0x114>
    1e84:	280000af 	ld.b	$r15,$r5,0
    1e88:	400105e0 	beqz	$r15,260(0x104) # 1f8c <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1e8c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1e90:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2168 <strncpy+0x2fc>
    1e94:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e98:	260000ae 	ldptr.d	$r14,$r5,0
    1e9c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ea0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ea4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ea8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1eac:	038201ad 	ori	$r13,$r13,0x80
    1eb0:	0010b1cc 	add.d	$r12,$r14,$r12
    1eb4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1eb8:	0016b98c 	andn	$r12,$r12,$r14
    1ebc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ec0:	0014b58c 	and	$r12,$r12,$r13
    1ec4:	4402a580 	bnez	$r12,676(0x2a4) # 2168 <strncpy+0x2fc>
    1ec8:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1ecc:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1ed0:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1ed4:	50001c00 	b	28(0x1c) # 1ef0 <strncpy+0x84>
    1ed8:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1edc:	0010b1cc 	add.d	$r12,$r14,$r12
    1ee0:	0016b98c 	andn	$r12,$r12,$r14
    1ee4:	0014b58c 	and	$r12,$r12,$r13
    1ee8:	44024580 	bnez	$r12,580(0x244) # 212c <strncpy+0x2c0>
    1eec:	001501e5 	move	$r5,$r15
    1ef0:	03bbfe2c 	ori	$r12,$r17,0xeff
    1ef4:	0382020d 	ori	$r13,$r16,0x80
    1ef8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1efc:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f00:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f04:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f08:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f0c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f10:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f14:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f18:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1ed8 <strncpy+0x6c>
    1f1c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f20:	400060c0 	beqz	$r6,96(0x60) # 1f80 <strncpy+0x114>
    1f24:	280000ac 	ld.b	$r12,$r5,0
    1f28:	0015008d 	move	$r13,$r4
    1f2c:	2900008c 	st.b	$r12,$r4,0
    1f30:	44001580 	bnez	$r12,20(0x14) # 1f44 <strncpy+0xd8>
    1f34:	50005c00 	b	92(0x5c) # 1f90 <strncpy+0x124>
    1f38:	280000ac 	ld.b	$r12,$r5,0
    1f3c:	290001ac 	st.b	$r12,$r13,0
    1f40:	40005180 	beqz	$r12,80(0x50) # 1f90 <strncpy+0x124>
    1f44:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f48:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f4c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f50:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f38 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f54:	001501a4 	move	$r4,$r13
    1f58:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f5c:	280000ac 	ld.b	$r12,$r5,0
    1f60:	2900008c 	st.b	$r12,$r4,0
    1f64:	40002980 	beqz	$r12,40(0x28) # 1f8c <strncpy+0x120>
    1f68:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f6c:	03401cac 	andi	$r12,$r5,0x7
    1f70:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f74:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f78:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1e80 <strncpy+0x14>
    1f7c:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f5c <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1f80:	0015008d 	move	$r13,$r4
}
    1f84:	001501a4 	move	$r4,$r13
    1f88:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1f8c:	0015008d 	move	$r13,$r4
    1f90:	0011b40c 	sub.d	$r12,$r0,$r13
    1f94:	03401d8c 	andi	$r12,$r12,0x7
    1f98:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1f9c:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fa0:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fa4:	0013bdce 	masknez	$r14,$r14,$r15
    1fa8:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fac:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fb0:	00153dce 	or	$r14,$r14,$r15
    1fb4:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fb8:	00131a31 	maskeqz	$r17,$r17,$r6
    1fbc:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1fc0:	001540d0 	or	$r16,$r6,$r16
    1fc4:	68017a2e 	bltu	$r17,$r14,376(0x178) # 213c <strncpy+0x2d0>
    1fc8:	40015980 	beqz	$r12,344(0x158) # 2120 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1fcc:	290001a0 	st.b	$r0,$r13,0
    1fd0:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1fd4:	5801458f 	beq	$r12,$r15,324(0x144) # 2118 <strncpy+0x2ac>
    1fd8:	290005a0 	st.b	$r0,$r13,1(0x1)
    1fdc:	0280080f 	addi.w	$r15,$r0,2(0x2)
    1fe0:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    1fe4:	5801658f 	beq	$r12,$r15,356(0x164) # 2148 <strncpy+0x2dc>
    1fe8:	290009a0 	st.b	$r0,$r13,2(0x2)
    1fec:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    1ff0:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    1ff4:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2110 <strncpy+0x2a4>
    1ff8:	29000da0 	st.b	$r0,$r13,3(0x3)
    1ffc:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2000:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2004:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2150 <strncpy+0x2e4>
    2008:	290011a0 	st.b	$r0,$r13,4(0x4)
    200c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2010:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2014:	5801458f 	beq	$r12,$r15,324(0x144) # 2158 <strncpy+0x2ec>
    2018:	290015a0 	st.b	$r0,$r13,5(0x5)
    201c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2020:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2024:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2160 <strncpy+0x2f4>
    2028:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    202c:	290019a0 	st.b	$r0,$r13,6(0x6)
    2030:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2034:	0011b210 	sub.d	$r16,$r16,$r12
    2038:	00450e11 	srli.d	$r17,$r16,0x3
    203c:	0010b1ac 	add.d	$r12,$r13,$r12
    2040:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2044:	27000180 	stptr.d	$r0,$r12,0
    2048:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    204c:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2044 <strncpy+0x1d8>
    2050:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2054:	0014c611 	and	$r17,$r16,$r17
    2058:	0040822f 	slli.w	$r15,$r17,0x0
    205c:	001049ef 	add.w	$r15,$r15,$r18
    2060:	0010c5cc 	add.d	$r12,$r14,$r17
    2064:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f54 <strncpy+0xe8>
    2068:	29000180 	st.b	$r0,$r12,0
    206c:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2070:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f54 <strncpy+0xe8>
    2074:	29000580 	st.b	$r0,$r12,1(0x1)
    2078:	028009ee 	addi.w	$r14,$r15,2(0x2)
    207c:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f54 <strncpy+0xe8>
    2080:	29000980 	st.b	$r0,$r12,2(0x2)
    2084:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2088:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f54 <strncpy+0xe8>
    208c:	29000d80 	st.b	$r0,$r12,3(0x3)
    2090:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2094:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f54 <strncpy+0xe8>
    2098:	29001180 	st.b	$r0,$r12,4(0x4)
    209c:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20a0:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f54 <strncpy+0xe8>
    20a4:	29001580 	st.b	$r0,$r12,5(0x5)
    20a8:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20ac:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f54 <strncpy+0xe8>
    20b0:	29001980 	st.b	$r0,$r12,6(0x6)
    20b4:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20b8:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f54 <strncpy+0xe8>
    20bc:	29001d80 	st.b	$r0,$r12,7(0x7)
    20c0:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20c4:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f54 <strncpy+0xe8>
    20c8:	29002180 	st.b	$r0,$r12,8(0x8)
    20cc:	028025ee 	addi.w	$r14,$r15,9(0x9)
    20d0:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f54 <strncpy+0xe8>
    20d4:	29002580 	st.b	$r0,$r12,9(0x9)
    20d8:	028029ee 	addi.w	$r14,$r15,10(0xa)
    20dc:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f54 <strncpy+0xe8>
    20e0:	29002980 	st.b	$r0,$r12,10(0xa)
    20e4:	02802dee 	addi.w	$r14,$r15,11(0xb)
    20e8:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f54 <strncpy+0xe8>
    20ec:	29002d80 	st.b	$r0,$r12,11(0xb)
    20f0:	028031ee 	addi.w	$r14,$r15,12(0xc)
    20f4:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f54 <strncpy+0xe8>
    20f8:	29003180 	st.b	$r0,$r12,12(0xc)
    20fc:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2100:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f54 <strncpy+0xe8>
    2104:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2108:	001501a4 	move	$r4,$r13
    210c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2110:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2114:	53ff23ff 	b	-224(0xfffff20) # 2034 <strncpy+0x1c8>
    2118:	02800412 	addi.w	$r18,$r0,1(0x1)
    211c:	53ff1bff 	b	-232(0xfffff18) # 2034 <strncpy+0x1c8>
    2120:	001501ae 	move	$r14,$r13
    2124:	00150012 	move	$r18,$r0
    2128:	53ff0fff 	b	-244(0xfffff0c) # 2034 <strncpy+0x1c8>
    212c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2130:	0015008d 	move	$r13,$r4
    2134:	001501e5 	move	$r5,$r15
    2138:	53fdf7ff 	b	-524(0xffffdf4) # 1f2c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    213c:	001501ac 	move	$r12,$r13
    2140:	0015000f 	move	$r15,$r0
    2144:	53ff27ff 	b	-220(0xfffff24) # 2068 <strncpy+0x1fc>
    2148:	02800812 	addi.w	$r18,$r0,2(0x2)
    214c:	53feebff 	b	-280(0xffffee8) # 2034 <strncpy+0x1c8>
    2150:	02801012 	addi.w	$r18,$r0,4(0x4)
    2154:	53fee3ff 	b	-288(0xffffee0) # 2034 <strncpy+0x1c8>
    2158:	02801412 	addi.w	$r18,$r0,5(0x5)
    215c:	53fedbff 	b	-296(0xffffed8) # 2034 <strncpy+0x1c8>
    2160:	02801812 	addi.w	$r18,$r0,6(0x6)
    2164:	53fed3ff 	b	-304(0xffffed0) # 2034 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2168:	2900008f 	st.b	$r15,$r4,0
    216c:	0015008d 	move	$r13,$r4
    2170:	53fdd7ff 	b	-556(0xffffdd4) # 1f44 <strncpy+0xd8>

0000000000002174 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2174:	0015008c 	move	$r12,$r4
    2178:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    217c:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2180:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2184:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2188:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    218c:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2190:	00408084 	slli.w	$r4,$r4,0x0
}
    2194:	4c000020 	jirl	$r0,$r1,0

0000000000002198 <openat>:
    register long a7 __asm__("a7") = n;
    2198:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    219c:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21a0:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21a4:	00408084 	slli.w	$r4,$r4,0x0
}
    21a8:	4c000020 	jirl	$r0,$r1,0

00000000000021ac <close>:
    register long a7 __asm__("a7") = n;
    21ac:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21b0:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21b4:	00408084 	slli.w	$r4,$r4,0x0
}
    21b8:	4c000020 	jirl	$r0,$r1,0

00000000000021bc <read>:
    register long a7 __asm__("a7") = n;
    21bc:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21c0:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21c4:	4c000020 	jirl	$r0,$r1,0

00000000000021c8 <write>:
    register long a7 __asm__("a7") = n;
    21c8:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21cc:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    21d0:	4c000020 	jirl	$r0,$r1,0

00000000000021d4 <getpid>:
    register long a7 __asm__("a7") = n;
    21d4:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    21d8:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    21dc:	00408084 	slli.w	$r4,$r4,0x0
}
    21e0:	4c000020 	jirl	$r0,$r1,0

00000000000021e4 <getppid>:
    register long a7 __asm__("a7") = n;
    21e4:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    21e8:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    21ec:	00408084 	slli.w	$r4,$r4,0x0
}
    21f0:	4c000020 	jirl	$r0,$r1,0

00000000000021f4 <sched_yield>:
    register long a7 __asm__("a7") = n;
    21f4:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    21f8:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    21fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2200:	4c000020 	jirl	$r0,$r1,0

0000000000002204 <fork>:
    register long a7 __asm__("a7") = n;
    2204:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2208:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    220c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2210:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2214:	00408084 	slli.w	$r4,$r4,0x0
}
    2218:	4c000020 	jirl	$r0,$r1,0

000000000000221c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    221c:	001500c5 	move	$r5,$r6
    if (stack)
    2220:	400008c0 	beqz	$r6,8(0x8) # 2228 <clone+0xc>
	stack += stack_size;
    2224:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2228:	00408106 	slli.w	$r6,$r8,0x0
    222c:	00150009 	move	$r9,$r0
    2230:	00150008 	move	$r8,$r0
    2234:	00150007 	move	$r7,$r0
    2238:	5002c800 	b	712(0x2c8) # 2500 <__clone>

000000000000223c <exit>:
    register long a7 __asm__("a7") = n;
    223c:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2240:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2244:	4c000020 	jirl	$r0,$r1,0

0000000000002248 <waitpid>:
    register long a7 __asm__("a7") = n;
    2248:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    224c:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2250:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2254:	00408084 	slli.w	$r4,$r4,0x0
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <exec>:
    register long a7 __asm__("a7") = n;
    225c:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2260:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2264:	00408084 	slli.w	$r4,$r4,0x0
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <execve>:
    register long a7 __asm__("a7") = n;
    226c:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2270:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2274:	00408084 	slli.w	$r4,$r4,0x0
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <times>:
    register long a7 __asm__("a7") = n;
    227c:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2280:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2284:	00408084 	slli.w	$r4,$r4,0x0
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <get_time>:

int64 get_time()
{
    228c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2290:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2294:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2298:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    229c:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22a0:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22a4:	44003c80 	bnez	$r4,60(0x3c) # 22e0 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22a8:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22ac:	039f3c8c 	ori	$r12,$r4,0x7cf
    22b0:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22b4:	2a40006d 	ld.hu	$r13,$r3,0
    22b8:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22bc:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22c0:	00450c84 	srli.d	$r4,$r4,0x3
    22c4:	001eb084 	mulh.du	$r4,$r4,$r12
    22c8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22cc:	001db1ac 	mul.d	$r12,$r13,$r12
    22d0:	00451084 	srli.d	$r4,$r4,0x4
    22d4:	00109184 	add.d	$r4,$r12,$r4
}
    22d8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    22dc:	4c000020 	jirl	$r0,$r1,0
        return -1;
    22e0:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    22e4:	53fff7ff 	b	-12(0xffffff4) # 22d8 <get_time+0x4c>

00000000000022e8 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    22e8:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22ec:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    22f0:	00408084 	slli.w	$r4,$r4,0x0
}
    22f4:	4c000020 	jirl	$r0,$r1,0

00000000000022f8 <time>:
    register long a7 __asm__("a7") = n;
    22f8:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    22fc:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2300:	00408084 	slli.w	$r4,$r4,0x0
}
    2304:	4c000020 	jirl	$r0,$r1,0

0000000000002308 <sleep>:

int sleep(unsigned long long time)
{
    2308:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    230c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2310:	00150064 	move	$r4,$r3
    2314:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2318:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    231c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2320:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2324:	44001080 	bnez	$r4,16(0x10) # 2334 <sleep+0x2c>
    return 0;
    2328:	00150004 	move	$r4,$r0
}
    232c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2330:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2334:	24000064 	ldptr.w	$r4,$r3,0
}
    2338:	02c04063 	addi.d	$r3,$r3,16(0x10)
    233c:	4c000020 	jirl	$r0,$r1,0

0000000000002340 <set_priority>:
    register long a7 __asm__("a7") = n;
    2340:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2344:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2348:	00408084 	slli.w	$r4,$r4,0x0
}
    234c:	4c000020 	jirl	$r0,$r1,0

0000000000002350 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2350:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2354:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2358:	4c000020 	jirl	$r0,$r1,0

000000000000235c <munmap>:
    register long a7 __asm__("a7") = n;
    235c:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2360:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2364:	00408084 	slli.w	$r4,$r4,0x0
}
    2368:	4c000020 	jirl	$r0,$r1,0

000000000000236c <wait>:

int wait(int *code)
{
    236c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2370:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2374:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2378:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    237c:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2380:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2384:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <spawn>:
    register long a7 __asm__("a7") = n;
    238c:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2390:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2394:	00408084 	slli.w	$r4,$r4,0x0
}
    2398:	4c000020 	jirl	$r0,$r1,0

000000000000239c <mailread>:
    register long a7 __asm__("a7") = n;
    239c:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a0:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23a4:	00408084 	slli.w	$r4,$r4,0x0
}
    23a8:	4c000020 	jirl	$r0,$r1,0

00000000000023ac <mailwrite>:
    register long a7 __asm__("a7") = n;
    23ac:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23b0:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23b4:	00408084 	slli.w	$r4,$r4,0x0
}
    23b8:	4c000020 	jirl	$r0,$r1,0

00000000000023bc <fstat>:
    register long a7 __asm__("a7") = n;
    23bc:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c0:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23c4:	00408084 	slli.w	$r4,$r4,0x0
}
    23c8:	4c000020 	jirl	$r0,$r1,0

00000000000023cc <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23cc:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    23d0:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23d4:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23d8:	00408084 	slli.w	$r4,$r4,0x0
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    23e0:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    23e4:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23e8:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <link>:

int link(char *old_path, char *new_path)
{
    23f4:	0015008c 	move	$r12,$r4
    23f8:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    23fc:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2400:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2404:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2408:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    240c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2410:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2414:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <unlink>:

int unlink(char *path)
{
    241c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2420:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2424:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2428:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    242c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2430:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <uname>:
    register long a7 __asm__("a7") = n;
    2438:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    243c:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2440:	00408084 	slli.w	$r4,$r4,0x0
}
    2444:	4c000020 	jirl	$r0,$r1,0

0000000000002448 <brk>:
    register long a7 __asm__("a7") = n;
    2448:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    244c:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2450:	00408084 	slli.w	$r4,$r4,0x0
}
    2454:	4c000020 	jirl	$r0,$r1,0

0000000000002458 <getcwd>:
    register long a7 __asm__("a7") = n;
    2458:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    245c:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <chdir>:
    register long a7 __asm__("a7") = n;
    2464:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2468:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2474:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2478:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    247c:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2480:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2484:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2488:	002b0000 	syscall	0x0
    248c:	00408084 	slli.w	$r4,$r4,0x0
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <getdents>:
    register long a7 __asm__("a7") = n;
    2494:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2498:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    249c:	00408084 	slli.w	$r4,$r4,0x0
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <pipe>:
    register long a7 __asm__("a7") = n;
    24a4:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24a8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24ac:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <dup>:
    register long a7 __asm__("a7") = n;
    24b8:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24bc:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24c0:	00408084 	slli.w	$r4,$r4,0x0
}
    24c4:	4c000020 	jirl	$r0,$r1,0

00000000000024c8 <dup2>:
    register long a7 __asm__("a7") = n;
    24c8:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24cc:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24d0:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    24d4:	00408084 	slli.w	$r4,$r4,0x0
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <mount>:
    register long a7 __asm__("a7") = n;
    24dc:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24e0:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <umount>:
    register long a7 __asm__("a7") = n;
    24ec:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    24f0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24f4:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    24f8:	00408084 	slli.w	$r4,$r4,0x0
}
    24fc:	4c000020 	jirl	$r0,$r1,0

0000000000002500 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2500:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2504:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2508:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    250c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2510:	00150106 	move	$r6,$r8
	move $a3, $a5
    2514:	00150127 	move	$r7,$r9
	move $a4, $a6
    2518:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    251c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2520:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2524:	40000880 	beqz	$r4,8(0x8) # 252c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2528:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    252c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2530:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2534:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2538:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    253c:	002b0000 	syscall	0x0
