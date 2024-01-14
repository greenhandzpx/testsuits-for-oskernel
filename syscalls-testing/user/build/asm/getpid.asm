
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/getpid:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400a800 	bl	168(0xa8) # 10ac <__start_main>

0000000000001008 <test_getpid>:
/*
理想结果：得到进程 pid，注意要关注 pid 是否符合内核逻辑，不要单纯以 Test OK! 作为判断。
*/

int test_getpid()
{
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
{
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    TEST_START(__func__);
    1018:	54039c00 	bl	924(0x39c) # 13b4 <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d73084 	addi.d	$r4,$r4,1484(0x5cc)
    1024:	54039000 	bl	912(0x390) # 13b4 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d56084 	addi.d	$r4,$r4,1368(0x558)
    1030:	54038400 	bl	900(0x384) # 13b4 <puts>
    int pid = getpid();
    1034:	5411c400 	bl	4548(0x11c4) # 21f8 <getpid>
    1038:	00150085 	move	$r5,$r4
    assert(pid >= 0);
    103c:	60003c80 	blt	$r4,$r0,60(0x3c) # 1078 <test_getpid+0x70>
    printf("getpid success.\npid = %d\n", pid);
    1040:	1c000024 	pcaddu12i	$r4,1(0x1)
    1044:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    1048:	5403a400 	bl	932(0x3a4) # 13ec <printf>
    TEST_END(__func__);
    104c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1050:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1054:	54036000 	bl	864(0x360) # 13b4 <puts>
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d64084 	addi.d	$r4,$r4,1424(0x590)
    1060:	54035400 	bl	852(0x354) # 13b4 <puts>
}
    1064:	28c06061 	ld.d	$r1,$r3,24(0x18)
    TEST_END(__func__);
    1068:	1c000024 	pcaddu12i	$r4,1(0x1)
    106c:	02d46084 	addi.d	$r4,$r4,1304(0x518)
}
    1070:	02c08063 	addi.d	$r3,$r3,32(0x20)
    TEST_END(__func__);
    1074:	50034000 	b	832(0x340) # 13b4 <puts>
    1078:	29c02064 	st.d	$r4,$r3,8(0x8)
    assert(pid >= 0);
    107c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1080:	02d45084 	addi.d	$r4,$r4,1300(0x514)
    1084:	54067800 	bl	1656(0x678) # 16fc <panic>
    1088:	28c02065 	ld.d	$r5,$r3,8(0x8)
    108c:	53ffb7ff 	b	-76(0xfffffb4) # 1040 <test_getpid+0x38>

0000000000001090 <main>:

int main(void) {
    1090:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1094:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_getpid();
    1098:	57ff73ff 	bl	-144(0xfffff70) # 1008 <test_getpid>
	return 0;
}
    109c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10a0:	00150004 	move	$r4,$r0
    10a4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10a8:	4c000020 	jirl	$r0,$r1,0

00000000000010ac <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10ac:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10b0:	24000084 	ldptr.w	$r4,$r4,0
{
    10b4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10b8:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10bc:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10c0:	57ffd3ff 	bl	-48(0xfffffd0) # 1090 <main>
    10c4:	54119c00 	bl	4508(0x119c) # 2260 <exit>
	return 0;
}
    10c8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10cc:	00150004 	move	$r4,$r0
    10d0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10d4:	4c000020 	jirl	$r0,$r1,0

00000000000010d8 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10d8:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10dc:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10e0:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12ac <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10e4:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10e8:	1c00002c 	pcaddu12i	$r12,1(0x1)
    10ec:	02d4418c 	addi.d	$r12,$r12,1296(0x510)
    10f0:	002195cf 	mod.wu	$r15,$r14,$r5
    10f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10fc <printint.constprop.0+0x24>
    10f8:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    10fc:	002115cd 	div.wu	$r13,$r14,$r5
    1100:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1108 <printint.constprop.0+0x30>
    1104:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1108:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    110c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1110:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1114:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1118:	680219c5 	bltu	$r14,$r5,536(0x218) # 1330 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    111c:	002195af 	mod.wu	$r15,$r13,$r5
    1120:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1128 <printint.constprop.0+0x50>
    1124:	002a0007 	break	0x7
    1128:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    112c:	002115ae 	div.wu	$r14,$r13,$r5
    1130:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1138 <printint.constprop.0+0x60>
    1134:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1138:	38203d8f 	ldx.bu	$r15,$r12,$r15
    113c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1140:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1300 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1144:	002195cf 	mod.wu	$r15,$r14,$r5
    1148:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1150 <printint.constprop.0+0x78>
    114c:	002a0007 	break	0x7
    1150:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1154:	002115cd 	div.wu	$r13,$r14,$r5
    1158:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1160 <printint.constprop.0+0x88>
    115c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1160:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1164:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1168:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 130c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    116c:	002195af 	mod.wu	$r15,$r13,$r5
    1170:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1178 <printint.constprop.0+0xa0>
    1174:	002a0007 	break	0x7
    1178:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    117c:	002115ae 	div.wu	$r14,$r13,$r5
    1180:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1188 <printint.constprop.0+0xb0>
    1184:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1188:	38203d8f 	ldx.bu	$r15,$r12,$r15
    118c:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1190:	680189a5 	bltu	$r13,$r5,392(0x188) # 1318 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1194:	002195cf 	mod.wu	$r15,$r14,$r5
    1198:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a0 <printint.constprop.0+0xc8>
    119c:	002a0007 	break	0x7
    11a0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a4:	002115cd 	div.wu	$r13,$r14,$r5
    11a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b0 <printint.constprop.0+0xd8>
    11ac:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b4:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11b8:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1324 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11bc:	002195af 	mod.wu	$r15,$r13,$r5
    11c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c8 <printint.constprop.0+0xf0>
    11c4:	002a0007 	break	0x7
    11c8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11cc:	002115ae 	div.wu	$r14,$r13,$r5
    11d0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d8 <printint.constprop.0+0x100>
    11d4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11dc:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11e0:	680115a5 	bltu	$r13,$r5,276(0x114) # 12f4 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11e4:	002195cf 	mod.wu	$r15,$r14,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0x118>
    11ec:	002a0007 	break	0x7
    11f0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f4:	002115cd 	div.wu	$r13,$r14,$r5
    11f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1200 <printint.constprop.0+0x128>
    11fc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1200:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1204:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1208:	680131c5 	bltu	$r14,$r5,304(0x130) # 1338 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    120c:	002195af 	mod.wu	$r15,$r13,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0x140>
    1214:	002a0007 	break	0x7
    1218:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    121c:	002115ae 	div.wu	$r14,$r13,$r5
    1220:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1228 <printint.constprop.0+0x150>
    1224:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1228:	38203d8f 	ldx.bu	$r15,$r12,$r15
    122c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1230:	680115a5 	bltu	$r13,$r5,276(0x114) # 1344 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1234:	002195cf 	mod.wu	$r15,$r14,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0x168>
    123c:	002a0007 	break	0x7
    1240:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1244:	002115cd 	div.wu	$r13,$r14,$r5
    1248:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1250 <printint.constprop.0+0x178>
    124c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1250:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1254:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1258:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1350 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    125c:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1260:	3820358d 	ldx.bu	$r13,$r12,$r13
    1264:	02801805 	addi.w	$r5,$r0,6(0x6)
    1268:	0280140c 	addi.w	$r12,$r0,5(0x5)
    126c:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1270:	64001880 	bge	$r4,$r0,24(0x18) # 1288 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1274:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1278:	0010b1ad 	add.d	$r13,$r13,$r12
    127c:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1280:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1284:	00150185 	move	$r5,$r12
    write(f, s, l);
    1288:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    128c:	02804006 	addi.w	$r6,$r0,16(0x10)
    1290:	001114c6 	sub.w	$r6,$r6,$r5
    1294:	02800404 	addi.w	$r4,$r0,1(0x1)
    1298:	00109585 	add.d	$r5,$r12,$r5
    129c:	540f5000 	bl	3920(0xf50) # 21ec <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12a0:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12a4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12a8:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12ac:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12b0:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12b4:	02cd218c 	addi.d	$r12,$r12,840(0x348)
    12b8:	002195cf 	mod.wu	$r15,$r14,$r5
    12bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c4 <printint.constprop.0+0x1ec>
    12c0:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12c4:	002115cd 	div.wu	$r13,$r14,$r5
    12c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d0 <printint.constprop.0+0x1f8>
    12cc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12d0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12d4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12d8:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12dc:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12e0:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 111c <printint.constprop.0+0x44>
        buf[i--] = '-';
    12e4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12e8:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    12ec:	02803805 	addi.w	$r5,$r0,14(0xe)
    12f0:	53ff9bff 	b	-104(0xfffff98) # 1288 <printint.constprop.0+0x1b0>
    12f4:	0280240c 	addi.w	$r12,$r0,9(0x9)
    12f8:	02802805 	addi.w	$r5,$r0,10(0xa)
    12fc:	53ff77ff 	b	-140(0xfffff74) # 1270 <printint.constprop.0+0x198>
    1300:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1304:	02803805 	addi.w	$r5,$r0,14(0xe)
    1308:	53ff6bff 	b	-152(0xfffff68) # 1270 <printint.constprop.0+0x198>
    130c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1310:	02803405 	addi.w	$r5,$r0,13(0xd)
    1314:	53ff5fff 	b	-164(0xfffff5c) # 1270 <printint.constprop.0+0x198>
    1318:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    131c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1320:	53ff53ff 	b	-176(0xfffff50) # 1270 <printint.constprop.0+0x198>
    1324:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1328:	02802c05 	addi.w	$r5,$r0,11(0xb)
    132c:	53ff47ff 	b	-188(0xfffff44) # 1270 <printint.constprop.0+0x198>
    i = 15;
    1330:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1334:	53ff57ff 	b	-172(0xfffff54) # 1288 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1338:	0280200c 	addi.w	$r12,$r0,8(0x8)
    133c:	02802405 	addi.w	$r5,$r0,9(0x9)
    1340:	53ff33ff 	b	-208(0xfffff30) # 1270 <printint.constprop.0+0x198>
    1344:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1348:	02802005 	addi.w	$r5,$r0,8(0x8)
    134c:	53ff27ff 	b	-220(0xfffff24) # 1270 <printint.constprop.0+0x198>
    1350:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1354:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1358:	53ff1bff 	b	-232(0xfffff18) # 1270 <printint.constprop.0+0x198>

000000000000135c <getchar>:
{
    135c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1360:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1364:	02800406 	addi.w	$r6,$r0,1(0x1)
    1368:	00150004 	move	$r4,$r0
{
    136c:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1370:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1374:	540e6c00 	bl	3692(0xe6c) # 21e0 <read>
}
    1378:	28c06061 	ld.d	$r1,$r3,24(0x18)
    137c:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1380:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1384:	4c000020 	jirl	$r0,$r1,0

0000000000001388 <putchar>:
{
    1388:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    138c:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1390:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1394:	02800406 	addi.w	$r6,$r0,1(0x1)
    1398:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    139c:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13a0:	540e4c00 	bl	3660(0xe4c) # 21ec <write>
}
    13a4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13a8:	00408084 	slli.w	$r4,$r4,0x0
}
    13ac:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13b0:	4c000020 	jirl	$r0,$r1,0

00000000000013b4 <puts>:
{
    13b4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13b8:	29c02061 	st.d	$r1,$r3,8(0x8)
    13bc:	27000077 	stptr.d	$r23,$r3,0
    13c0:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13c4:	5406d400 	bl	1748(0x6d4) # 1a98 <strlen>
    13c8:	00150086 	move	$r6,$r4
    13cc:	001502e5 	move	$r5,$r23
    13d0:	02800404 	addi.w	$r4,$r0,1(0x1)
    13d4:	540e1800 	bl	3608(0xe18) # 21ec <write>
}
    13d8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13dc:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13e0:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13e4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13e8:	4c000020 	jirl	$r0,$r1,0

00000000000013ec <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    13ec:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    13f0:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    13f4:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    13f8:	140000fa 	lu12i.w	$r26,7(0x7)
{
    13fc:	29c14079 	st.d	$r25,$r3,80(0x50)
    1400:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1404:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1408:	29c1a061 	st.d	$r1,$r3,104(0x68)
    140c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1410:	29c16078 	st.d	$r24,$r3,88(0x58)
    1414:	0015009b 	move	$r27,$r4
    1418:	29c1e065 	st.d	$r5,$r3,120(0x78)
    141c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1420:	29c22067 	st.d	$r7,$r3,136(0x88)
    1424:	29c24068 	st.d	$r8,$r3,144(0x90)
    1428:	29c26069 	st.d	$r9,$r3,152(0x98)
    142c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1430:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1434:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1438:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    143c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1440:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1444:	02c6e39c 	addi.d	$r28,$r28,440(0x1b8)
        if (!*s)
    1448:	2800036c 	ld.b	$r12,$r27,0
    144c:	40008980 	beqz	$r12,136(0x88) # 14d4 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1450:	58027d99 	beq	$r12,$r25,636(0x27c) # 16cc <printf+0x2e0>
    1454:	00150366 	move	$r6,$r27
    1458:	50000800 	b	8(0x8) # 1460 <printf+0x74>
    145c:	58009d99 	beq	$r12,$r25,156(0x9c) # 14f8 <printf+0x10c>
    1460:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1464:	280000cc 	ld.b	$r12,$r6,0
    1468:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 145c <printf+0x70>
    146c:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1470:	0011ecd7 	sub.d	$r23,$r6,$r27
    1474:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1478:	001502e6 	move	$r6,$r23
    147c:	00150365 	move	$r5,$r27
    1480:	02800404 	addi.w	$r4,$r0,1(0x1)
    1484:	540d6800 	bl	3432(0xd68) # 21ec <write>
        out(f, a, l);
        if (l)
    1488:	4400b6e0 	bnez	$r23,180(0xb4) # 153c <printf+0x150>
            continue;
        if (s[1] == 0)
    148c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1490:	40004580 	beqz	$r12,68(0x44) # 14d4 <printf+0xe8>
            break;
        switch (s[1])
    1494:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1498:	5800d58d 	beq	$r12,$r13,212(0xd4) # 156c <printf+0x180>
    149c:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1544 <printf+0x158>
    14a0:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14a4:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1694 <printf+0x2a8>
    14a8:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14ac:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 165c <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14b0:	2600006c 	ldptr.d	$r12,$r3,0
    14b4:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14b8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14bc:	24000184 	ldptr.w	$r4,$r12,0
    14c0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14c4:	2700006c 	stptr.d	$r12,$r3,0
    14c8:	57fc13ff 	bl	-1008(0xffffc10) # 10d8 <printint.constprop.0>
        if (!*s)
    14cc:	2800036c 	ld.b	$r12,$r27,0
    14d0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1450 <printf+0x64>
    }
    va_end(ap);
}
    14d4:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14d8:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14dc:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14e0:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14e4:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14e8:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    14ec:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    14f0:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    14f4:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    14f8:	280004cc 	ld.b	$r12,$r6,1(0x1)
    14fc:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 146c <printf+0x80>
    1500:	001500d8 	move	$r24,$r6
    1504:	50000c00 	b	12(0xc) # 1510 <printf+0x124>
    1508:	2800070c 	ld.b	$r12,$r24,1(0x1)
    150c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1470 <printf+0x84>
    1510:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1514:	2800030c 	ld.b	$r12,$r24,0
    1518:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    151c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1508 <printf+0x11c>
        l = z - a;
    1520:	0011ecd7 	sub.d	$r23,$r6,$r27
    1524:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1528:	001502e6 	move	$r6,$r23
    152c:	00150365 	move	$r5,$r27
    1530:	02800404 	addi.w	$r4,$r0,1(0x1)
    1534:	540cb800 	bl	3256(0xcb8) # 21ec <write>
        if (l)
    1538:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 148c <printf+0xa0>
    153c:	0015031b 	move	$r27,$r24
    1540:	53ff0bff 	b	-248(0xfffff08) # 1448 <printf+0x5c>
        switch (s[1])
    1544:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1548:	5c01158d 	bne	$r12,$r13,276(0x114) # 165c <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    154c:	2600006c 	ldptr.d	$r12,$r3,0
    1550:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1554:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1558:	24000184 	ldptr.w	$r4,$r12,0
    155c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1560:	2700006c 	stptr.d	$r12,$r3,0
    1564:	57fb77ff 	bl	-1164(0xffffb74) # 10d8 <printint.constprop.0>
        s += 2;
    1568:	53ff67ff 	b	-156(0xfffff64) # 14cc <printf+0xe0>
            printptr(va_arg(ap, uint64));
    156c:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1570:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1574:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1578:	260001ac 	ldptr.d	$r12,$r13,0
    157c:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1580:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1584:	0045f18a 	srli.d	$r10,$r12,0x3c
    1588:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    158c:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1590:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1594:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1598:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    159c:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15a0:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15a4:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15a8:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15ac:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15b0:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15b4:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15b8:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15bc:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15c0:	3820278a 	ldx.bu	$r10,$r28,$r9
    15c4:	38202389 	ldx.bu	$r9,$r28,$r8
    15c8:	38201f88 	ldx.bu	$r8,$r28,$r7
    15cc:	38201787 	ldx.bu	$r7,$r28,$r5
    15d0:	38201385 	ldx.bu	$r5,$r28,$r4
    15d4:	38205384 	ldx.bu	$r4,$r28,$r20
    15d8:	38204f94 	ldx.bu	$r20,$r28,$r19
    15dc:	38204b93 	ldx.bu	$r19,$r28,$r18
    15e0:	38204792 	ldx.bu	$r18,$r28,$r17
    15e4:	38204391 	ldx.bu	$r17,$r28,$r16
    15e8:	38203f90 	ldx.bu	$r16,$r28,$r15
    15ec:	38203b8f 	ldx.bu	$r15,$r28,$r14
    15f0:	3820378e 	ldx.bu	$r14,$r28,$r13
    15f4:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    15f8:	03403d8c 	andi	$r12,$r12,0xf
    15fc:	2900286b 	st.b	$r11,$r3,10(0xa)
    1600:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1604:	29003069 	st.b	$r9,$r3,12(0xc)
    1608:	29003468 	st.b	$r8,$r3,13(0xd)
    160c:	29003867 	st.b	$r7,$r3,14(0xe)
    1610:	29003c65 	st.b	$r5,$r3,15(0xf)
    1614:	29004064 	st.b	$r4,$r3,16(0x10)
    1618:	29004474 	st.b	$r20,$r3,17(0x11)
    161c:	29004873 	st.b	$r19,$r3,18(0x12)
    1620:	29004c72 	st.b	$r18,$r3,19(0x13)
    1624:	29005071 	st.b	$r17,$r3,20(0x14)
    1628:	29005470 	st.b	$r16,$r3,21(0x15)
    162c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1630:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1634:	3820378d 	ldx.bu	$r13,$r28,$r13
    1638:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    163c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1640:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1644:	2900606d 	st.b	$r13,$r3,24(0x18)
    1648:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    164c:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1650:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1654:	540b9800 	bl	2968(0xb98) # 21ec <write>
        s += 2;
    1658:	53fe77ff 	b	-396(0xffffe74) # 14cc <printf+0xe0>
    char byte = c;
    165c:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1660:	02800406 	addi.w	$r6,$r0,1(0x1)
    1664:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1668:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    166c:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1670:	540b7c00 	bl	2940(0xb7c) # 21ec <write>
    char byte = c;
    1674:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1678:	02800406 	addi.w	$r6,$r0,1(0x1)
    167c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1680:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1684:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1688:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    168c:	540b6000 	bl	2912(0xb60) # 21ec <write>
        s += 2;
    1690:	53fe3fff 	b	-452(0xffffe3c) # 14cc <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1694:	2600006c 	ldptr.d	$r12,$r3,0
    1698:	26000197 	ldptr.d	$r23,$r12,0
    169c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16a0:	2700006c 	stptr.d	$r12,$r3,0
    16a4:	40004ee0 	beqz	$r23,76(0x4c) # 16f0 <printf+0x304>
            l = strnlen(a, 200);
    16a8:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16ac:	001502e4 	move	$r4,$r23
    16b0:	5405d000 	bl	1488(0x5d0) # 1c80 <strnlen>
    16b4:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16b8:	001502e5 	move	$r5,$r23
    16bc:	02800404 	addi.w	$r4,$r0,1(0x1)
    16c0:	540b2c00 	bl	2860(0xb2c) # 21ec <write>
        s += 2;
    16c4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16c8:	53fe07ff 	b	-508(0xffffe04) # 14cc <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16cc:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16d0:	00150366 	move	$r6,$r27
    16d4:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1500 <printf+0x114>
    write(f, s, l);
    16d8:	00150006 	move	$r6,$r0
    16dc:	00150365 	move	$r5,$r27
    16e0:	02800404 	addi.w	$r4,$r0,1(0x1)
    16e4:	540b0800 	bl	2824(0xb08) # 21ec <write>
    16e8:	00150378 	move	$r24,$r27
    16ec:	53fda3ff 	b	-608(0xffffda0) # 148c <printf+0xa0>
                a = "(null)";
    16f0:	1c000037 	pcaddu12i	$r23,1(0x1)
    16f4:	02fbc2f7 	addi.d	$r23,$r23,-272(0xef0)
    16f8:	53ffb3ff 	b	-80(0xfffffb0) # 16a8 <printf+0x2bc>

00000000000016fc <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    16fc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1700:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1704:	57fcb3ff 	bl	-848(0xffffcb0) # 13b4 <puts>
    exit(-100);
}
    1708:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    170c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1710:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1714:	500b4c00 	b	2892(0xb4c) # 2260 <exit>

0000000000001718 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1718:	0280800c 	addi.w	$r12,$r0,32(0x20)
    171c:	5800108c 	beq	$r4,$r12,16(0x10) # 172c <isspace+0x14>
    1720:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1724:	02401484 	sltui	$r4,$r4,5(0x5)
    1728:	4c000020 	jirl	$r0,$r1,0
    172c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1730:	4c000020 	jirl	$r0,$r1,0

0000000000001734 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1734:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1738:	02402884 	sltui	$r4,$r4,10(0xa)
    173c:	4c000020 	jirl	$r0,$r1,0

0000000000001740 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1740:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1744:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1748:	2800008d 	ld.b	$r13,$r4,0
    174c:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1750:	580061ae 	beq	$r13,$r14,96(0x60) # 17b0 <atoi+0x70>
    1754:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17b0 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1758:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    175c:	580065ac 	beq	$r13,$r12,100(0x64) # 17c0 <atoi+0x80>
    1760:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1764:	58007dac 	beq	$r13,$r12,124(0x7c) # 17e0 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1768:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    176c:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1770:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1774:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1778:	680061cf 	bltu	$r14,$r15,96(0x60) # 17d8 <atoi+0x98>
    int n = 0, neg = 0;
    177c:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1780:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1784:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1788:	001c126f 	mul.w	$r15,$r19,$r4
    178c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1790:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1794:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1798:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    179c:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17a0:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17a4:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1788 <atoi+0x48>
    return neg ? n : -n;
    17a8:	40001280 	beqz	$r20,16(0x10) # 17b8 <atoi+0x78>
}
    17ac:	4c000020 	jirl	$r0,$r1,0
        s++;
    17b0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17b4:	53ff97ff 	b	-108(0xfffff94) # 1748 <atoi+0x8>
    17b8:	00113e04 	sub.w	$r4,$r16,$r15
    17bc:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17c0:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17c4:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17c8:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17cc:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17d0:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17d4:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 177c <atoi+0x3c>
    17d8:	00150004 	move	$r4,$r0
}
    17dc:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17e0:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17e4:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17e8:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17ec:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17f0:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17d8 <atoi+0x98>
        neg = 1;
    17f4:	02800414 	addi.w	$r20,$r0,1(0x1)
    17f8:	53ff87ff 	b	-124(0xfffff84) # 177c <atoi+0x3c>

00000000000017fc <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    17fc:	400198c0 	beqz	$r6,408(0x198) # 1994 <memset+0x198>
    1800:	0011900c 	sub.d	$r12,$r0,$r4
    1804:	03401d8c 	andi	$r12,$r12,0x7
    1808:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    180c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1810:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1814:	0013b9ad 	masknez	$r13,$r13,$r14
    1818:	001339ee 	maskeqz	$r14,$r15,$r14
    181c:	001539ad 	or	$r13,$r13,$r14
    1820:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1824:	00005ca5 	ext.w.b	$r5,$r5
    1828:	680191ed 	bltu	$r15,$r13,400(0x190) # 19b8 <memset+0x1bc>
    182c:	40018180 	beqz	$r12,384(0x180) # 19ac <memset+0x1b0>
    1830:	29000085 	st.b	$r5,$r4,0
    1834:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1838:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    183c:	5801698d 	beq	$r12,$r13,360(0x168) # 19a4 <memset+0x1a8>
    1840:	29000485 	st.b	$r5,$r4,1(0x1)
    1844:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1848:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    184c:	5801798d 	beq	$r12,$r13,376(0x178) # 19c4 <memset+0x1c8>
    1850:	29000885 	st.b	$r5,$r4,2(0x2)
    1854:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1858:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    185c:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1998 <memset+0x19c>
    1860:	29000c85 	st.b	$r5,$r4,3(0x3)
    1864:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1868:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    186c:	5801618d 	beq	$r12,$r13,352(0x160) # 19cc <memset+0x1d0>
    1870:	29001085 	st.b	$r5,$r4,4(0x4)
    1874:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1878:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    187c:	5801598d 	beq	$r12,$r13,344(0x158) # 19d4 <memset+0x1d8>
    1880:	29001485 	st.b	$r5,$r4,5(0x5)
    1884:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1888:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    188c:	5c01518d 	bne	$r12,$r13,336(0x150) # 19dc <memset+0x1e0>
    1890:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1894:	29001885 	st.b	$r5,$r4,6(0x6)
    1898:	02801c11 	addi.w	$r17,$r0,7(0x7)
    189c:	0015000d 	move	$r13,$r0
    18a0:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18a4:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18a8:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18ac:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18b0:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18b4:	0011b0d0 	sub.d	$r16,$r6,$r12
    18b8:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18bc:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18c0:	0010b08c 	add.d	$r12,$r4,$r12
    18c4:	00450e0f 	srli.d	$r15,$r16,0x3
    18c8:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18cc:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18d0:	2700018d 	stptr.d	$r13,$r12,0
    18d4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18d8:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18d0 <memset+0xd4>
    18dc:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18e0:	0014be0f 	and	$r15,$r16,$r15
    18e4:	004081ed 	slli.w	$r13,$r15,0x0
    18e8:	0010bdcc 	add.d	$r12,$r14,$r15
    18ec:	001045ad 	add.w	$r13,$r13,$r17
    18f0:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19a0 <memset+0x1a4>
    18f4:	29000185 	st.b	$r5,$r12,0
    18f8:	028005ae 	addi.w	$r14,$r13,1(0x1)
    18fc:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1994 <memset+0x198>
    1900:	29000585 	st.b	$r5,$r12,1(0x1)
    1904:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1908:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1994 <memset+0x198>
    190c:	29000985 	st.b	$r5,$r12,2(0x2)
    1910:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1914:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1994 <memset+0x198>
    1918:	29000d85 	st.b	$r5,$r12,3(0x3)
    191c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1920:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1994 <memset+0x198>
    1924:	29001185 	st.b	$r5,$r12,4(0x4)
    1928:	028015ae 	addi.w	$r14,$r13,5(0x5)
    192c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1994 <memset+0x198>
    1930:	29001585 	st.b	$r5,$r12,5(0x5)
    1934:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1938:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1994 <memset+0x198>
    193c:	29001985 	st.b	$r5,$r12,6(0x6)
    1940:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1944:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1994 <memset+0x198>
    1948:	29001d85 	st.b	$r5,$r12,7(0x7)
    194c:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1950:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1994 <memset+0x198>
    1954:	29002185 	st.b	$r5,$r12,8(0x8)
    1958:	028025ae 	addi.w	$r14,$r13,9(0x9)
    195c:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1994 <memset+0x198>
    1960:	29002585 	st.b	$r5,$r12,9(0x9)
    1964:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1968:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1994 <memset+0x198>
    196c:	29002985 	st.b	$r5,$r12,10(0xa)
    1970:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1974:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1994 <memset+0x198>
    1978:	29002d85 	st.b	$r5,$r12,11(0xb)
    197c:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1980:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1994 <memset+0x198>
    1984:	29003185 	st.b	$r5,$r12,12(0xc)
    1988:	028035ad 	addi.w	$r13,$r13,13(0xd)
    198c:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1994 <memset+0x198>
    1990:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1994:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1998:	02800c11 	addi.w	$r17,$r0,3(0x3)
    199c:	53ff03ff 	b	-256(0xfffff00) # 189c <memset+0xa0>
    19a0:	4c000020 	jirl	$r0,$r1,0
    19a4:	02800411 	addi.w	$r17,$r0,1(0x1)
    19a8:	53fef7ff 	b	-268(0xffffef4) # 189c <memset+0xa0>
    19ac:	0015008e 	move	$r14,$r4
    19b0:	00150011 	move	$r17,$r0
    19b4:	53feebff 	b	-280(0xffffee8) # 189c <memset+0xa0>
    19b8:	0015008c 	move	$r12,$r4
    19bc:	0015000d 	move	$r13,$r0
    19c0:	53ff37ff 	b	-204(0xfffff34) # 18f4 <memset+0xf8>
    19c4:	02800811 	addi.w	$r17,$r0,2(0x2)
    19c8:	53fed7ff 	b	-300(0xffffed4) # 189c <memset+0xa0>
    19cc:	02801011 	addi.w	$r17,$r0,4(0x4)
    19d0:	53fecfff 	b	-308(0xffffecc) # 189c <memset+0xa0>
    19d4:	02801411 	addi.w	$r17,$r0,5(0x5)
    19d8:	53fec7ff 	b	-316(0xffffec4) # 189c <memset+0xa0>
    19dc:	02801811 	addi.w	$r17,$r0,6(0x6)
    19e0:	53febfff 	b	-324(0xffffebc) # 189c <memset+0xa0>

00000000000019e4 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19e4:	2800008c 	ld.b	$r12,$r4,0
    19e8:	280000ae 	ld.b	$r14,$r5,0
    19ec:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a20 <strcmp+0x3c>
    19f0:	40003980 	beqz	$r12,56(0x38) # 1a28 <strcmp+0x44>
    19f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19f8:	50000800 	b	8(0x8) # 1a00 <strcmp+0x1c>
    19fc:	400019a0 	beqz	$r13,24(0x18) # 1a14 <strcmp+0x30>
    1a00:	3800308d 	ldx.b	$r13,$r4,$r12
    1a04:	380030ae 	ldx.b	$r14,$r5,$r12
    1a08:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a0c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 19fc <strcmp+0x18>
    1a10:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a14:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a18:	001111a4 	sub.w	$r4,$r13,$r4
    1a1c:	4c000020 	jirl	$r0,$r1,0
    1a20:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a24:	53fff3ff 	b	-16(0xffffff0) # 1a14 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a28:	0015000d 	move	$r13,$r0
    1a2c:	53ffebff 	b	-24(0xfffffe8) # 1a14 <strcmp+0x30>

0000000000001a30 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a30:	400054c0 	beqz	$r6,84(0x54) # 1a84 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a34:	2a00008d 	ld.bu	$r13,$r4,0
    1a38:	2a0000ae 	ld.bu	$r14,$r5,0
    1a3c:	40003da0 	beqz	$r13,60(0x3c) # 1a78 <strncmp+0x48>
    1a40:	40003dc0 	beqz	$r14,60(0x3c) # 1a7c <strncmp+0x4c>
    if (!n--)
    1a44:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a48:	400034c0 	beqz	$r6,52(0x34) # 1a7c <strncmp+0x4c>
    1a4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a50:	580019ae 	beq	$r13,$r14,24(0x18) # 1a68 <strncmp+0x38>
    1a54:	50002800 	b	40(0x28) # 1a7c <strncmp+0x4c>
    1a58:	400035c0 	beqz	$r14,52(0x34) # 1a8c <strncmp+0x5c>
    1a5c:	580020cc 	beq	$r6,$r12,32(0x20) # 1a7c <strncmp+0x4c>
    1a60:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a64:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a8c <strncmp+0x5c>
    1a68:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a6c:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a70:	001501af 	move	$r15,$r13
    1a74:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a58 <strncmp+0x28>
    1a78:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a7c:	001139a4 	sub.w	$r4,$r13,$r14
    1a80:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a84:	00150004 	move	$r4,$r0
}
    1a88:	4c000020 	jirl	$r0,$r1,0
    1a8c:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a90:	001139a4 	sub.w	$r4,$r13,$r14
    1a94:	4c000020 	jirl	$r0,$r1,0

0000000000001a98 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a98:	03401c8c 	andi	$r12,$r4,0x7
    1a9c:	4000b180 	beqz	$r12,176(0xb0) # 1b4c <strlen+0xb4>
        if (!*s)
    1aa0:	2800008c 	ld.b	$r12,$r4,0
    1aa4:	4000b180 	beqz	$r12,176(0xb0) # 1b54 <strlen+0xbc>
    1aa8:	0015008c 	move	$r12,$r4
    1aac:	50000c00 	b	12(0xc) # 1ab8 <strlen+0x20>
    1ab0:	2800018d 	ld.b	$r13,$r12,0
    1ab4:	400091a0 	beqz	$r13,144(0x90) # 1b44 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ab8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1abc:	03401d8d 	andi	$r13,$r12,0x7
    1ac0:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1ab0 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1ac4:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ac8:	2600018f 	ldptr.d	$r15,$r12,0
    1acc:	03bbfdad 	ori	$r13,$r13,0xeff
    1ad0:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ad4:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1ad8:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1adc:	038201ce 	ori	$r14,$r14,0x80
    1ae0:	0010b5ed 	add.d	$r13,$r15,$r13
    1ae4:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1ae8:	0016bdad 	andn	$r13,$r13,$r15
    1aec:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1af0:	0014b9ae 	and	$r14,$r13,$r14
    1af4:	440049c0 	bnez	$r14,72(0x48) # 1b3c <strlen+0xa4>
    1af8:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1afc:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b00:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b04:	2600018e 	ldptr.d	$r14,$r12,0
    1b08:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b0c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b10:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b14:	0382020f 	ori	$r15,$r16,0x80
    1b18:	0010b5cd 	add.d	$r13,$r14,$r13
    1b1c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b20:	0016b9ad 	andn	$r13,$r13,$r14
    1b24:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b28:	0014bdad 	and	$r13,$r13,$r15
    1b2c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b00 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b30:	2800018d 	ld.b	$r13,$r12,0
    1b34:	400011a0 	beqz	$r13,16(0x10) # 1b44 <strlen+0xac>
    1b38:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b3c:	2800018d 	ld.b	$r13,$r12,0
    1b40:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b38 <strlen+0xa0>
        ;
    return s - a;
    1b44:	00119184 	sub.d	$r4,$r12,$r4
}
    1b48:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b4c:	0015008c 	move	$r12,$r4
    1b50:	53ff77ff 	b	-140(0xfffff74) # 1ac4 <strlen+0x2c>
        if (!*s)
    1b54:	00150004 	move	$r4,$r0
            return s - a;
    1b58:	4c000020 	jirl	$r0,$r1,0

0000000000001b5c <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b5c:	03401c8c 	andi	$r12,$r4,0x7
    1b60:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b64:	44002180 	bnez	$r12,32(0x20) # 1b84 <memchr+0x28>
    1b68:	50002c00 	b	44(0x2c) # 1b94 <memchr+0x38>
    1b6c:	2a00008c 	ld.bu	$r12,$r4,0
    1b70:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c68 <memchr+0x10c>
    1b74:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b78:	03401c8c 	andi	$r12,$r4,0x7
    1b7c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b80:	40001580 	beqz	$r12,20(0x14) # 1b94 <memchr+0x38>
    1b84:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b6c <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b88:	0015000d 	move	$r13,$r0
}
    1b8c:	001501a4 	move	$r4,$r13
    1b90:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b94:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b98:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b8c <memchr+0x30>
    1b9c:	2a00008c 	ld.bu	$r12,$r4,0
    1ba0:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c68 <memchr+0x10c>
        size_t k = ONES * c;
    1ba4:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1ba8:	0384058c 	ori	$r12,$r12,0x101
    1bac:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bb0:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bb4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bb8:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bbc:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c78 <memchr+0x11c>
    1bc0:	2600008d 	ldptr.d	$r13,$r4,0
    1bc4:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bc8:	038201ce 	ori	$r14,$r14,0x80
    1bcc:	0015b60d 	xor	$r13,$r16,$r13
    1bd0:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bd4:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bd8:	0016b58c 	andn	$r12,$r12,$r13
    1bdc:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1be0:	0014b98c 	and	$r12,$r12,$r14
    1be4:	44009580 	bnez	$r12,148(0x94) # 1c78 <memchr+0x11c>
    1be8:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1bec:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1bf0:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1bf4:	50002000 	b	32(0x20) # 1c14 <memchr+0xb8>
    1bf8:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1bfc:	0015b20c 	xor	$r12,$r16,$r12
    1c00:	0010b98e 	add.d	$r14,$r12,$r14
    1c04:	0016b1cc 	andn	$r12,$r14,$r12
    1c08:	0014bd8c 	and	$r12,$r12,$r15
    1c0c:	44006580 	bnez	$r12,100(0x64) # 1c70 <memchr+0x114>
    1c10:	001501a4 	move	$r4,$r13
    1c14:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c18:	0382022f 	ori	$r15,$r17,0x80
    1c1c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c20:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c24:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c28:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c2c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c30:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c34:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1bf8 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c38:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b88 <memchr+0x2c>
    1c3c:	2a0001ac 	ld.bu	$r12,$r13,0
    1c40:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b8c <memchr+0x30>
    1c44:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c48:	001099a6 	add.d	$r6,$r13,$r6
    1c4c:	50001000 	b	16(0x10) # 1c5c <memchr+0x100>
    1c50:	2a00018e 	ld.bu	$r14,$r12,0
    1c54:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c58:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b8c <memchr+0x30>
    1c5c:	0015018d 	move	$r13,$r12
    1c60:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c50 <memchr+0xf4>
    1c64:	53ff27ff 	b	-220(0xfffff24) # 1b88 <memchr+0x2c>
    1c68:	0015008d 	move	$r13,$r4
    1c6c:	53ffd3ff 	b	-48(0xfffffd0) # 1c3c <memchr+0xe0>
    1c70:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c74:	53ffcfff 	b	-52(0xfffffcc) # 1c40 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c78:	0015008d 	move	$r13,$r4
    1c7c:	53ffcbff 	b	-56(0xfffffc8) # 1c44 <memchr+0xe8>

0000000000001c80 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c80:	03401c8c 	andi	$r12,$r4,0x7
    1c84:	40011980 	beqz	$r12,280(0x118) # 1d9c <strnlen+0x11c>
    1c88:	4000f4a0 	beqz	$r5,244(0xf4) # 1d7c <strnlen+0xfc>
    1c8c:	2a00008c 	ld.bu	$r12,$r4,0
    1c90:	4000f580 	beqz	$r12,244(0xf4) # 1d84 <strnlen+0x104>
    1c94:	001500ac 	move	$r12,$r5
    1c98:	0015008d 	move	$r13,$r4
    1c9c:	50001000 	b	16(0x10) # 1cac <strnlen+0x2c>
    1ca0:	4000dd80 	beqz	$r12,220(0xdc) # 1d7c <strnlen+0xfc>
    1ca4:	2a0001ae 	ld.bu	$r14,$r13,0
    1ca8:	4000e5c0 	beqz	$r14,228(0xe4) # 1d8c <strnlen+0x10c>
    1cac:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cb0:	03401dae 	andi	$r14,$r13,0x7
    1cb4:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cb8:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1ca0 <strnlen+0x20>
    if (n && *s != c)
    1cbc:	4000c180 	beqz	$r12,192(0xc0) # 1d7c <strnlen+0xfc>
    1cc0:	2a0001ae 	ld.bu	$r14,$r13,0
    1cc4:	4000c9c0 	beqz	$r14,200(0xc8) # 1d8c <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cc8:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1ccc:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1da8 <strnlen+0x128>
    1cd0:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cd4:	260001b0 	ldptr.d	$r16,$r13,0
    1cd8:	03bbfdce 	ori	$r14,$r14,0xeff
    1cdc:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1ce0:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ce4:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1ce8:	038201ef 	ori	$r15,$r15,0x80
    1cec:	0010ba0e 	add.d	$r14,$r16,$r14
    1cf0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cf4:	0016c1ce 	andn	$r14,$r14,$r16
    1cf8:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cfc:	0014bdcf 	and	$r15,$r14,$r15
    1d00:	4400a9e0 	bnez	$r15,168(0xa8) # 1da8 <strnlen+0x128>
    1d04:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d08:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d0c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d10:	50001c00 	b	28(0x1c) # 1d2c <strnlen+0xac>
    1d14:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d18:	0010b9ee 	add.d	$r14,$r15,$r14
    1d1c:	0016bdce 	andn	$r14,$r14,$r15
    1d20:	0014c1ce 	and	$r14,$r14,$r16
    1d24:	440071c0 	bnez	$r14,112(0x70) # 1d94 <strnlen+0x114>
    1d28:	0015022d 	move	$r13,$r17
    1d2c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d30:	03820250 	ori	$r16,$r18,0x80
    1d34:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d38:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d3c:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d40:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d44:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d48:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d4c:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d14 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d50:	40002d80 	beqz	$r12,44(0x2c) # 1d7c <strnlen+0xfc>
    1d54:	2a00022d 	ld.bu	$r13,$r17,0
    1d58:	400021a0 	beqz	$r13,32(0x20) # 1d78 <strnlen+0xf8>
    1d5c:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d60:	0010b22c 	add.d	$r12,$r17,$r12
    1d64:	001501b1 	move	$r17,$r13
    1d68:	5800158d 	beq	$r12,$r13,20(0x14) # 1d7c <strnlen+0xfc>
    1d6c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d70:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d74:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d64 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d78:	00119225 	sub.d	$r5,$r17,$r4
}
    1d7c:	001500a4 	move	$r4,$r5
    1d80:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d84:	001500ac 	move	$r12,$r5
    1d88:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d8c:	001501b1 	move	$r17,$r13
    1d90:	53ffc7ff 	b	-60(0xfffffc4) # 1d54 <strnlen+0xd4>
    1d94:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d98:	53ffc3ff 	b	-64(0xfffffc0) # 1d58 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d9c:	001500ac 	move	$r12,$r5
    1da0:	0015008d 	move	$r13,$r4
    1da4:	53ff1bff 	b	-232(0xfffff18) # 1cbc <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1da8:	001501b1 	move	$r17,$r13
    1dac:	53ffb3ff 	b	-80(0xfffffb0) # 1d5c <strnlen+0xdc>

0000000000001db0 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1db0:	0015948c 	xor	$r12,$r4,$r5
    1db4:	03401d8c 	andi	$r12,$r12,0x7
    1db8:	4400ad80 	bnez	$r12,172(0xac) # 1e64 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1dbc:	03401cac 	andi	$r12,$r5,0x7
    1dc0:	40003180 	beqz	$r12,48(0x30) # 1df0 <strcpy+0x40>
            if (!(*d = *s))
    1dc4:	280000ac 	ld.b	$r12,$r5,0
    1dc8:	2900008c 	st.b	$r12,$r4,0
    1dcc:	44001580 	bnez	$r12,20(0x14) # 1de0 <strcpy+0x30>
    1dd0:	5000bc00 	b	188(0xbc) # 1e8c <strcpy+0xdc>
    1dd4:	280000ac 	ld.b	$r12,$r5,0
    1dd8:	2900008c 	st.b	$r12,$r4,0
    1ddc:	4000a980 	beqz	$r12,168(0xa8) # 1e84 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1de0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1de4:	03401cac 	andi	$r12,$r5,0x7
    1de8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1dec:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1dd4 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1df0:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1df4:	260000ae 	ldptr.d	$r14,$r5,0
    1df8:	03bbfd8c 	ori	$r12,$r12,0xeff
    1dfc:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e00:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e04:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e08:	038201ad 	ori	$r13,$r13,0x80
    1e0c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e10:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e14:	0016b98c 	andn	$r12,$r12,$r14
    1e18:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e1c:	0014b58c 	and	$r12,$r12,$r13
    1e20:	44004580 	bnez	$r12,68(0x44) # 1e64 <strcpy+0xb4>
    1e24:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e28:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e2c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e30:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e34:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e38:	260000ae 	ldptr.d	$r14,$r5,0
    1e3c:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e40:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e44:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e48:	038201ed 	ori	$r13,$r15,0x80
    1e4c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e50:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e54:	0016b98c 	andn	$r12,$r12,$r14
    1e58:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e5c:	0014b58c 	and	$r12,$r12,$r13
    1e60:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e2c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e64:	280000ac 	ld.b	$r12,$r5,0
    1e68:	2900008c 	st.b	$r12,$r4,0
    1e6c:	40001d80 	beqz	$r12,28(0x1c) # 1e88 <strcpy+0xd8>
    1e70:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e74:	280000ac 	ld.b	$r12,$r5,0
    1e78:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e7c:	2900008c 	st.b	$r12,$r4,0
    1e80:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e70 <strcpy+0xc0>
        ;
    return d;
}
    1e84:	4c000020 	jirl	$r0,$r1,0
    1e88:	4c000020 	jirl	$r0,$r1,0
    1e8c:	4c000020 	jirl	$r0,$r1,0

0000000000001e90 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e90:	0015948c 	xor	$r12,$r4,$r5
    1e94:	03401d8c 	andi	$r12,$r12,0x7
    1e98:	4400ad80 	bnez	$r12,172(0xac) # 1f44 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1e9c:	03401cac 	andi	$r12,$r5,0x7
    1ea0:	44010180 	bnez	$r12,256(0x100) # 1fa0 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ea4:	400100c0 	beqz	$r6,256(0x100) # 1fa4 <strncpy+0x114>
    1ea8:	280000af 	ld.b	$r15,$r5,0
    1eac:	400105e0 	beqz	$r15,260(0x104) # 1fb0 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1eb0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1eb4:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 218c <strncpy+0x2fc>
    1eb8:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ebc:	260000ae 	ldptr.d	$r14,$r5,0
    1ec0:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ec4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ec8:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ecc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ed0:	038201ad 	ori	$r13,$r13,0x80
    1ed4:	0010b1cc 	add.d	$r12,$r14,$r12
    1ed8:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1edc:	0016b98c 	andn	$r12,$r12,$r14
    1ee0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ee4:	0014b58c 	and	$r12,$r12,$r13
    1ee8:	4402a580 	bnez	$r12,676(0x2a4) # 218c <strncpy+0x2fc>
    1eec:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1ef0:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1ef4:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1ef8:	50001c00 	b	28(0x1c) # 1f14 <strncpy+0x84>
    1efc:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f00:	0010b1cc 	add.d	$r12,$r14,$r12
    1f04:	0016b98c 	andn	$r12,$r12,$r14
    1f08:	0014b58c 	and	$r12,$r12,$r13
    1f0c:	44024580 	bnez	$r12,580(0x244) # 2150 <strncpy+0x2c0>
    1f10:	001501e5 	move	$r5,$r15
    1f14:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f18:	0382020d 	ori	$r13,$r16,0x80
    1f1c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f20:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f24:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f28:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f2c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f30:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f34:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f38:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f3c:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1efc <strncpy+0x6c>
    1f40:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f44:	400060c0 	beqz	$r6,96(0x60) # 1fa4 <strncpy+0x114>
    1f48:	280000ac 	ld.b	$r12,$r5,0
    1f4c:	0015008d 	move	$r13,$r4
    1f50:	2900008c 	st.b	$r12,$r4,0
    1f54:	44001580 	bnez	$r12,20(0x14) # 1f68 <strncpy+0xd8>
    1f58:	50005c00 	b	92(0x5c) # 1fb4 <strncpy+0x124>
    1f5c:	280000ac 	ld.b	$r12,$r5,0
    1f60:	290001ac 	st.b	$r12,$r13,0
    1f64:	40005180 	beqz	$r12,80(0x50) # 1fb4 <strncpy+0x124>
    1f68:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f6c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f70:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f74:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f5c <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f78:	001501a4 	move	$r4,$r13
    1f7c:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f80:	280000ac 	ld.b	$r12,$r5,0
    1f84:	2900008c 	st.b	$r12,$r4,0
    1f88:	40002980 	beqz	$r12,40(0x28) # 1fb0 <strncpy+0x120>
    1f8c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f90:	03401cac 	andi	$r12,$r5,0x7
    1f94:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f98:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f9c:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ea4 <strncpy+0x14>
    1fa0:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f80 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fa4:	0015008d 	move	$r13,$r4
}
    1fa8:	001501a4 	move	$r4,$r13
    1fac:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fb0:	0015008d 	move	$r13,$r4
    1fb4:	0011b40c 	sub.d	$r12,$r0,$r13
    1fb8:	03401d8c 	andi	$r12,$r12,0x7
    1fbc:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fc0:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fc4:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fc8:	0013bdce 	masknez	$r14,$r14,$r15
    1fcc:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fd0:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fd4:	00153dce 	or	$r14,$r14,$r15
    1fd8:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fdc:	00131a31 	maskeqz	$r17,$r17,$r6
    1fe0:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1fe4:	001540d0 	or	$r16,$r6,$r16
    1fe8:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2160 <strncpy+0x2d0>
    1fec:	40015980 	beqz	$r12,344(0x158) # 2144 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1ff0:	290001a0 	st.b	$r0,$r13,0
    1ff4:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1ff8:	5801458f 	beq	$r12,$r15,324(0x144) # 213c <strncpy+0x2ac>
    1ffc:	290005a0 	st.b	$r0,$r13,1(0x1)
    2000:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2004:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2008:	5801658f 	beq	$r12,$r15,356(0x164) # 216c <strncpy+0x2dc>
    200c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2010:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2014:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2018:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2134 <strncpy+0x2a4>
    201c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2020:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2024:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2028:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2174 <strncpy+0x2e4>
    202c:	290011a0 	st.b	$r0,$r13,4(0x4)
    2030:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2034:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2038:	5801458f 	beq	$r12,$r15,324(0x144) # 217c <strncpy+0x2ec>
    203c:	290015a0 	st.b	$r0,$r13,5(0x5)
    2040:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2044:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2048:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2184 <strncpy+0x2f4>
    204c:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2050:	290019a0 	st.b	$r0,$r13,6(0x6)
    2054:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2058:	0011b210 	sub.d	$r16,$r16,$r12
    205c:	00450e11 	srli.d	$r17,$r16,0x3
    2060:	0010b1ac 	add.d	$r12,$r13,$r12
    2064:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2068:	27000180 	stptr.d	$r0,$r12,0
    206c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2070:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2068 <strncpy+0x1d8>
    2074:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2078:	0014c611 	and	$r17,$r16,$r17
    207c:	0040822f 	slli.w	$r15,$r17,0x0
    2080:	001049ef 	add.w	$r15,$r15,$r18
    2084:	0010c5cc 	add.d	$r12,$r14,$r17
    2088:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f78 <strncpy+0xe8>
    208c:	29000180 	st.b	$r0,$r12,0
    2090:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2094:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f78 <strncpy+0xe8>
    2098:	29000580 	st.b	$r0,$r12,1(0x1)
    209c:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20a0:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f78 <strncpy+0xe8>
    20a4:	29000980 	st.b	$r0,$r12,2(0x2)
    20a8:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20ac:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f78 <strncpy+0xe8>
    20b0:	29000d80 	st.b	$r0,$r12,3(0x3)
    20b4:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20b8:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f78 <strncpy+0xe8>
    20bc:	29001180 	st.b	$r0,$r12,4(0x4)
    20c0:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20c4:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f78 <strncpy+0xe8>
    20c8:	29001580 	st.b	$r0,$r12,5(0x5)
    20cc:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20d0:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f78 <strncpy+0xe8>
    20d4:	29001980 	st.b	$r0,$r12,6(0x6)
    20d8:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20dc:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f78 <strncpy+0xe8>
    20e0:	29001d80 	st.b	$r0,$r12,7(0x7)
    20e4:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20e8:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f78 <strncpy+0xe8>
    20ec:	29002180 	st.b	$r0,$r12,8(0x8)
    20f0:	028025ee 	addi.w	$r14,$r15,9(0x9)
    20f4:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f78 <strncpy+0xe8>
    20f8:	29002580 	st.b	$r0,$r12,9(0x9)
    20fc:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2100:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f78 <strncpy+0xe8>
    2104:	29002980 	st.b	$r0,$r12,10(0xa)
    2108:	02802dee 	addi.w	$r14,$r15,11(0xb)
    210c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f78 <strncpy+0xe8>
    2110:	29002d80 	st.b	$r0,$r12,11(0xb)
    2114:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2118:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f78 <strncpy+0xe8>
    211c:	29003180 	st.b	$r0,$r12,12(0xc)
    2120:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2124:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f78 <strncpy+0xe8>
    2128:	29003580 	st.b	$r0,$r12,13(0xd)
}
    212c:	001501a4 	move	$r4,$r13
    2130:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2134:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2138:	53ff23ff 	b	-224(0xfffff20) # 2058 <strncpy+0x1c8>
    213c:	02800412 	addi.w	$r18,$r0,1(0x1)
    2140:	53ff1bff 	b	-232(0xfffff18) # 2058 <strncpy+0x1c8>
    2144:	001501ae 	move	$r14,$r13
    2148:	00150012 	move	$r18,$r0
    214c:	53ff0fff 	b	-244(0xfffff0c) # 2058 <strncpy+0x1c8>
    2150:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2154:	0015008d 	move	$r13,$r4
    2158:	001501e5 	move	$r5,$r15
    215c:	53fdf7ff 	b	-524(0xffffdf4) # 1f50 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2160:	001501ac 	move	$r12,$r13
    2164:	0015000f 	move	$r15,$r0
    2168:	53ff27ff 	b	-220(0xfffff24) # 208c <strncpy+0x1fc>
    216c:	02800812 	addi.w	$r18,$r0,2(0x2)
    2170:	53feebff 	b	-280(0xffffee8) # 2058 <strncpy+0x1c8>
    2174:	02801012 	addi.w	$r18,$r0,4(0x4)
    2178:	53fee3ff 	b	-288(0xffffee0) # 2058 <strncpy+0x1c8>
    217c:	02801412 	addi.w	$r18,$r0,5(0x5)
    2180:	53fedbff 	b	-296(0xffffed8) # 2058 <strncpy+0x1c8>
    2184:	02801812 	addi.w	$r18,$r0,6(0x6)
    2188:	53fed3ff 	b	-304(0xffffed0) # 2058 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    218c:	2900008f 	st.b	$r15,$r4,0
    2190:	0015008d 	move	$r13,$r4
    2194:	53fdd7ff 	b	-556(0xffffdd4) # 1f68 <strncpy+0xd8>

0000000000002198 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2198:	0015008c 	move	$r12,$r4
    219c:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21a0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21a4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21a8:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21ac:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21b0:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21b4:	00408084 	slli.w	$r4,$r4,0x0
}
    21b8:	4c000020 	jirl	$r0,$r1,0

00000000000021bc <openat>:
    register long a7 __asm__("a7") = n;
    21bc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21c0:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21c4:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21c8:	00408084 	slli.w	$r4,$r4,0x0
}
    21cc:	4c000020 	jirl	$r0,$r1,0

00000000000021d0 <close>:
    register long a7 __asm__("a7") = n;
    21d0:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21d4:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21d8:	00408084 	slli.w	$r4,$r4,0x0
}
    21dc:	4c000020 	jirl	$r0,$r1,0

00000000000021e0 <read>:
    register long a7 __asm__("a7") = n;
    21e0:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21e4:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21e8:	4c000020 	jirl	$r0,$r1,0

00000000000021ec <write>:
    register long a7 __asm__("a7") = n;
    21ec:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21f0:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    21f4:	4c000020 	jirl	$r0,$r1,0

00000000000021f8 <getpid>:
    register long a7 __asm__("a7") = n;
    21f8:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    21fc:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2200:	00408084 	slli.w	$r4,$r4,0x0
}
    2204:	4c000020 	jirl	$r0,$r1,0

0000000000002208 <getppid>:
    register long a7 __asm__("a7") = n;
    2208:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    220c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2210:	00408084 	slli.w	$r4,$r4,0x0
}
    2214:	4c000020 	jirl	$r0,$r1,0

0000000000002218 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2218:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    221c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2220:	00408084 	slli.w	$r4,$r4,0x0
}
    2224:	4c000020 	jirl	$r0,$r1,0

0000000000002228 <fork>:
    register long a7 __asm__("a7") = n;
    2228:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    222c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2230:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2234:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2238:	00408084 	slli.w	$r4,$r4,0x0
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2240:	001500c5 	move	$r5,$r6
    if (stack)
    2244:	400008c0 	beqz	$r6,8(0x8) # 224c <clone+0xc>
	stack += stack_size;
    2248:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    224c:	00408106 	slli.w	$r6,$r8,0x0
    2250:	00150009 	move	$r9,$r0
    2254:	00150008 	move	$r8,$r0
    2258:	00150007 	move	$r7,$r0
    225c:	5002c800 	b	712(0x2c8) # 2524 <__clone>

0000000000002260 <exit>:
    register long a7 __asm__("a7") = n;
    2260:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2264:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <waitpid>:
    register long a7 __asm__("a7") = n;
    226c:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2270:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2274:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2278:	00408084 	slli.w	$r4,$r4,0x0
}
    227c:	4c000020 	jirl	$r0,$r1,0

0000000000002280 <exec>:
    register long a7 __asm__("a7") = n;
    2280:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2284:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2288:	00408084 	slli.w	$r4,$r4,0x0
}
    228c:	4c000020 	jirl	$r0,$r1,0

0000000000002290 <execve>:
    register long a7 __asm__("a7") = n;
    2290:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2294:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2298:	00408084 	slli.w	$r4,$r4,0x0
}
    229c:	4c000020 	jirl	$r0,$r1,0

00000000000022a0 <times>:
    register long a7 __asm__("a7") = n;
    22a0:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22a4:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22a8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ac:	4c000020 	jirl	$r0,$r1,0

00000000000022b0 <get_time>:

int64 get_time()
{
    22b0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22b4:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22b8:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22bc:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22c0:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22c8:	44003c80 	bnez	$r4,60(0x3c) # 2304 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22cc:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22d0:	039f3c8c 	ori	$r12,$r4,0x7cf
    22d4:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22d8:	2a40006d 	ld.hu	$r13,$r3,0
    22dc:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22e0:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22e4:	00450c84 	srli.d	$r4,$r4,0x3
    22e8:	001eb084 	mulh.du	$r4,$r4,$r12
    22ec:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22f0:	001db1ac 	mul.d	$r12,$r13,$r12
    22f4:	00451084 	srli.d	$r4,$r4,0x4
    22f8:	00109184 	add.d	$r4,$r12,$r4
}
    22fc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2300:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2304:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2308:	53fff7ff 	b	-12(0xffffff4) # 22fc <get_time+0x4c>

000000000000230c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    230c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2310:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2314:	00408084 	slli.w	$r4,$r4,0x0
}
    2318:	4c000020 	jirl	$r0,$r1,0

000000000000231c <time>:
    register long a7 __asm__("a7") = n;
    231c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2320:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2324:	00408084 	slli.w	$r4,$r4,0x0
}
    2328:	4c000020 	jirl	$r0,$r1,0

000000000000232c <sleep>:

int sleep(unsigned long long time)
{
    232c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2330:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2334:	00150064 	move	$r4,$r3
    2338:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    233c:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2340:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2344:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2348:	44001080 	bnez	$r4,16(0x10) # 2358 <sleep+0x2c>
    return 0;
    234c:	00150004 	move	$r4,$r0
}
    2350:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2354:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2358:	24000064 	ldptr.w	$r4,$r3,0
}
    235c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2360:	4c000020 	jirl	$r0,$r1,0

0000000000002364 <set_priority>:
    register long a7 __asm__("a7") = n;
    2364:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2368:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    236c:	00408084 	slli.w	$r4,$r4,0x0
}
    2370:	4c000020 	jirl	$r0,$r1,0

0000000000002374 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2374:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2378:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    237c:	4c000020 	jirl	$r0,$r1,0

0000000000002380 <munmap>:
    register long a7 __asm__("a7") = n;
    2380:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2384:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2388:	00408084 	slli.w	$r4,$r4,0x0
}
    238c:	4c000020 	jirl	$r0,$r1,0

0000000000002390 <wait>:

int wait(int *code)
{
    2390:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2394:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2398:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    239c:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23a0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23a4:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23a8:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23ac:	4c000020 	jirl	$r0,$r1,0

00000000000023b0 <spawn>:
    register long a7 __asm__("a7") = n;
    23b0:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23b4:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23b8:	00408084 	slli.w	$r4,$r4,0x0
}
    23bc:	4c000020 	jirl	$r0,$r1,0

00000000000023c0 <mailread>:
    register long a7 __asm__("a7") = n;
    23c0:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c4:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23c8:	00408084 	slli.w	$r4,$r4,0x0
}
    23cc:	4c000020 	jirl	$r0,$r1,0

00000000000023d0 <mailwrite>:
    register long a7 __asm__("a7") = n;
    23d0:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23d4:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23d8:	00408084 	slli.w	$r4,$r4,0x0
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <fstat>:
    register long a7 __asm__("a7") = n;
    23e0:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e4:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23e8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23f0:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    23f4:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23f8:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2404:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2408:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    240c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2410:	00408084 	slli.w	$r4,$r4,0x0
}
    2414:	4c000020 	jirl	$r0,$r1,0

0000000000002418 <link>:

int link(char *old_path, char *new_path)
{
    2418:	0015008c 	move	$r12,$r4
    241c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2420:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2424:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2428:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    242c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2430:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2434:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2438:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <unlink>:

int unlink(char *path)
{
    2440:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2444:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2448:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    244c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2450:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2454:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2458:	4c000020 	jirl	$r0,$r1,0

000000000000245c <uname>:
    register long a7 __asm__("a7") = n;
    245c:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2460:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2464:	00408084 	slli.w	$r4,$r4,0x0
}
    2468:	4c000020 	jirl	$r0,$r1,0

000000000000246c <brk>:
    register long a7 __asm__("a7") = n;
    246c:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2470:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2474:	00408084 	slli.w	$r4,$r4,0x0
}
    2478:	4c000020 	jirl	$r0,$r1,0

000000000000247c <getcwd>:
    register long a7 __asm__("a7") = n;
    247c:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2480:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <chdir>:
    register long a7 __asm__("a7") = n;
    2488:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    248c:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2490:	00408084 	slli.w	$r4,$r4,0x0
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2498:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    249c:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24a0:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24a4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24a8:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24ac:	002b0000 	syscall	0x0
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <getdents>:
    register long a7 __asm__("a7") = n;
    24b8:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24bc:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24c0:	00408084 	slli.w	$r4,$r4,0x0
}
    24c4:	4c000020 	jirl	$r0,$r1,0

00000000000024c8 <pipe>:
    register long a7 __asm__("a7") = n;
    24c8:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24cc:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24d0:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24d4:	00408084 	slli.w	$r4,$r4,0x0
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <dup>:
    register long a7 __asm__("a7") = n;
    24dc:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24e0:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <dup2>:
    register long a7 __asm__("a7") = n;
    24ec:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24f0:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f4:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    24f8:	00408084 	slli.w	$r4,$r4,0x0
}
    24fc:	4c000020 	jirl	$r0,$r1,0

0000000000002500 <mount>:
    register long a7 __asm__("a7") = n;
    2500:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2504:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2508:	00408084 	slli.w	$r4,$r4,0x0
}
    250c:	4c000020 	jirl	$r0,$r1,0

0000000000002510 <umount>:
    register long a7 __asm__("a7") = n;
    2510:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2514:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2518:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    251c:	00408084 	slli.w	$r4,$r4,0x0
}
    2520:	4c000020 	jirl	$r0,$r1,0

0000000000002524 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2524:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2528:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    252c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2530:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2534:	00150106 	move	$r6,$r8
	move $a3, $a5
    2538:	00150127 	move	$r7,$r9
	move $a4, $a6
    253c:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2540:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2544:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2548:	40000880 	beqz	$r4,8(0x8) # 2550 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    254c:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2550:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2554:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2558:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    255c:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2560:	002b0000 	syscall	0x0
