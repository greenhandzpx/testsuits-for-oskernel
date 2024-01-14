
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/sleep:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54010800 	bl	264(0x108) # 110c <__start_main>

0000000000001008 <test_sleep>:
 * 测试通过时的输出：
 * "sleep success."
 * 测试失败时的输出：
 * "sleep error."
 */
void test_sleep() {
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d6f084 	addi.d	$r4,$r4,1468(0x5bc)
void test_sleep() {
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c02078 	st.d	$r24,$r3,8(0x8)
    101c:	29c04077 	st.d	$r23,$r3,16(0x10)
	TEST_START(__func__);
    1020:	5403f400 	bl	1012(0x3f4) # 1414 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02d89084 	addi.d	$r4,$r4,1572(0x624)
    102c:	5403e800 	bl	1000(0x3e8) # 1414 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d6c084 	addi.d	$r4,$r4,1456(0x5b0)
    1038:	5403dc00 	bl	988(0x3dc) # 1414 <puts>

	int time1 = get_time();
    103c:	5412d400 	bl	4820(0x12d4) # 2310 <get_time>
    1040:	00408098 	slli.w	$r24,$r4,0x0
	assert(time1 >= 0);
    1044:	60009f00 	blt	$r24,$r0,156(0x9c) # 10e0 <test_sleep+0xd8>
	int ret = sleep(1);
    1048:	02800404 	addi.w	$r4,$r0,1(0x1)
    104c:	54134000 	bl	4928(0x1340) # 238c <sleep>
	assert(ret == 0);
    1050:	44006880 	bnez	$r4,104(0x68) # 10b8 <test_sleep+0xb0>
	int time2 = get_time();
    1054:	5412bc00 	bl	4796(0x12bc) # 2310 <get_time>
    1058:	00408097 	slli.w	$r23,$r4,0x0
	assert(time2 >= 0);
    105c:	600076e0 	blt	$r23,$r0,116(0x74) # 10d0 <test_sleep+0xc8>

	if(time2 - time1 >= 1){	
    1060:	001162f7 	sub.w	$r23,$r23,$r24
    1064:	64004417 	bge	$r0,$r23,68(0x44) # 10a8 <test_sleep+0xa0>
		printf("sleep success.\n");
    1068:	1c000024 	pcaddu12i	$r4,1(0x1)
    106c:	02d6a084 	addi.d	$r4,$r4,1448(0x5a8)
    1070:	5403dc00 	bl	988(0x3dc) # 144c <printf>
	}else{
		printf("sleep error.\n");
	}
	TEST_END(__func__);
    1074:	1c000024 	pcaddu12i	$r4,1(0x1)
    1078:	02d6f084 	addi.d	$r4,$r4,1468(0x5bc)
    107c:	54039800 	bl	920(0x398) # 1414 <puts>
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d72084 	addi.d	$r4,$r4,1480(0x5c8)
    1088:	54038c00 	bl	908(0x38c) # 1414 <puts>
}
    108c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1090:	28c04077 	ld.d	$r23,$r3,16(0x10)
    1094:	28c02078 	ld.d	$r24,$r3,8(0x8)
	TEST_END(__func__);
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d52084 	addi.d	$r4,$r4,1352(0x548)
}
    10a0:	02c08063 	addi.d	$r3,$r3,32(0x20)
	TEST_END(__func__);
    10a4:	50037000 	b	880(0x370) # 1414 <puts>
		printf("sleep error.\n");
    10a8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10ac:	02d5e084 	addi.d	$r4,$r4,1400(0x578)
    10b0:	54039c00 	bl	924(0x39c) # 144c <printf>
    10b4:	53ffc3ff 	b	-64(0xfffffc0) # 1074 <test_sleep+0x6c>
	assert(ret == 0);
    10b8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10bc:	02d4e084 	addi.d	$r4,$r4,1336(0x538)
    10c0:	54069c00 	bl	1692(0x69c) # 175c <panic>
	int time2 = get_time();
    10c4:	54124c00 	bl	4684(0x124c) # 2310 <get_time>
    10c8:	00408097 	slli.w	$r23,$r4,0x0
	assert(time2 >= 0);
    10cc:	67ff96e0 	bge	$r23,$r0,-108(0x3ff94) # 1060 <test_sleep+0x58>
    10d0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d4:	02d48084 	addi.d	$r4,$r4,1312(0x520)
    10d8:	54068400 	bl	1668(0x684) # 175c <panic>
    10dc:	53ff87ff 	b	-124(0xfffff84) # 1060 <test_sleep+0x58>
	assert(time1 >= 0);
    10e0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e4:	02d44084 	addi.d	$r4,$r4,1296(0x510)
    10e8:	54067400 	bl	1652(0x674) # 175c <panic>
    10ec:	53ff5fff 	b	-164(0xfffff5c) # 1048 <test_sleep+0x40>

00000000000010f0 <main>:

int main(void) {
    10f0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10f4:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_sleep();
    10f8:	57ff13ff 	bl	-240(0xfffff10) # 1008 <test_sleep>
	return 0;
}
    10fc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1100:	00150004 	move	$r4,$r0
    1104:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1108:	4c000020 	jirl	$r0,$r1,0

000000000000110c <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    110c:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1110:	24000084 	ldptr.w	$r4,$r4,0
{
    1114:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1118:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    111c:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1120:	57ffd3ff 	bl	-48(0xfffffd0) # 10f0 <main>
    1124:	54119c00 	bl	4508(0x119c) # 22c0 <exit>
	return 0;
}
    1128:	28c02061 	ld.d	$r1,$r3,8(0x8)
    112c:	00150004 	move	$r4,$r0
    1130:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1134:	4c000020 	jirl	$r0,$r1,0

0000000000001138 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1138:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    113c:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1140:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 130c <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1144:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1148:	1c00002c 	pcaddu12i	$r12,1(0x1)
    114c:	02d4418c 	addi.d	$r12,$r12,1296(0x510)
    1150:	002195cf 	mod.wu	$r15,$r14,$r5
    1154:	5c0008a0 	bne	$r5,$r0,8(0x8) # 115c <printint.constprop.0+0x24>
    1158:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    115c:	002115cd 	div.wu	$r13,$r14,$r5
    1160:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1168 <printint.constprop.0+0x30>
    1164:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1168:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    116c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1170:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1174:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1178:	680219c5 	bltu	$r14,$r5,536(0x218) # 1390 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    117c:	002195af 	mod.wu	$r15,$r13,$r5
    1180:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1188 <printint.constprop.0+0x50>
    1184:	002a0007 	break	0x7
    1188:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    118c:	002115ae 	div.wu	$r14,$r13,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0x60>
    1194:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1198:	38203d8f 	ldx.bu	$r15,$r12,$r15
    119c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11a0:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1360 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11a4:	002195cf 	mod.wu	$r15,$r14,$r5
    11a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b0 <printint.constprop.0+0x78>
    11ac:	002a0007 	break	0x7
    11b0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b4:	002115cd 	div.wu	$r13,$r14,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0x88>
    11bc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c4:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11c8:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 136c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11cc:	002195af 	mod.wu	$r15,$r13,$r5
    11d0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d8 <printint.constprop.0+0xa0>
    11d4:	002a0007 	break	0x7
    11d8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11dc:	002115ae 	div.wu	$r14,$r13,$r5
    11e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e8 <printint.constprop.0+0xb0>
    11e4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11ec:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11f0:	680189a5 	bltu	$r13,$r5,392(0x188) # 1378 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11f4:	002195cf 	mod.wu	$r15,$r14,$r5
    11f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1200 <printint.constprop.0+0xc8>
    11fc:	002a0007 	break	0x7
    1200:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1204:	002115cd 	div.wu	$r13,$r14,$r5
    1208:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1210 <printint.constprop.0+0xd8>
    120c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1210:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1214:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1218:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1384 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    121c:	002195af 	mod.wu	$r15,$r13,$r5
    1220:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1228 <printint.constprop.0+0xf0>
    1224:	002a0007 	break	0x7
    1228:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    122c:	002115ae 	div.wu	$r14,$r13,$r5
    1230:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1238 <printint.constprop.0+0x100>
    1234:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1238:	38203d8f 	ldx.bu	$r15,$r12,$r15
    123c:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1240:	680115a5 	bltu	$r13,$r5,276(0x114) # 1354 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1244:	002195cf 	mod.wu	$r15,$r14,$r5
    1248:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1250 <printint.constprop.0+0x118>
    124c:	002a0007 	break	0x7
    1250:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1254:	002115cd 	div.wu	$r13,$r14,$r5
    1258:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1260 <printint.constprop.0+0x128>
    125c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1260:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1264:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1268:	680131c5 	bltu	$r14,$r5,304(0x130) # 1398 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    126c:	002195af 	mod.wu	$r15,$r13,$r5
    1270:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1278 <printint.constprop.0+0x140>
    1274:	002a0007 	break	0x7
    1278:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    127c:	002115ae 	div.wu	$r14,$r13,$r5
    1280:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1288 <printint.constprop.0+0x150>
    1284:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1288:	38203d8f 	ldx.bu	$r15,$r12,$r15
    128c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1290:	680115a5 	bltu	$r13,$r5,276(0x114) # 13a4 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1294:	002195cf 	mod.wu	$r15,$r14,$r5
    1298:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a0 <printint.constprop.0+0x168>
    129c:	002a0007 	break	0x7
    12a0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12a4:	002115cd 	div.wu	$r13,$r14,$r5
    12a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b0 <printint.constprop.0+0x178>
    12ac:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12b4:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12b8:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13b0 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12bc:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12c0:	3820358d 	ldx.bu	$r13,$r12,$r13
    12c4:	02801805 	addi.w	$r5,$r0,6(0x6)
    12c8:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12cc:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12d0:	64001880 	bge	$r4,$r0,24(0x18) # 12e8 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12d4:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12d8:	0010b1ad 	add.d	$r13,$r13,$r12
    12dc:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12e0:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12e4:	00150185 	move	$r5,$r12
    write(f, s, l);
    12e8:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12ec:	02804006 	addi.w	$r6,$r0,16(0x10)
    12f0:	001114c6 	sub.w	$r6,$r6,$r5
    12f4:	02800404 	addi.w	$r4,$r0,1(0x1)
    12f8:	00109585 	add.d	$r5,$r12,$r5
    12fc:	540f5000 	bl	3920(0xf50) # 224c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1300:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1304:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1308:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    130c:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1310:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1314:	02cd218c 	addi.d	$r12,$r12,840(0x348)
    1318:	002195cf 	mod.wu	$r15,$r14,$r5
    131c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1324 <printint.constprop.0+0x1ec>
    1320:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1324:	002115cd 	div.wu	$r13,$r14,$r5
    1328:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1330 <printint.constprop.0+0x1f8>
    132c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1330:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1334:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1338:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    133c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1340:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 117c <printint.constprop.0+0x44>
        buf[i--] = '-';
    1344:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1348:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    134c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1350:	53ff9bff 	b	-104(0xfffff98) # 12e8 <printint.constprop.0+0x1b0>
    1354:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1358:	02802805 	addi.w	$r5,$r0,10(0xa)
    135c:	53ff77ff 	b	-140(0xfffff74) # 12d0 <printint.constprop.0+0x198>
    1360:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1364:	02803805 	addi.w	$r5,$r0,14(0xe)
    1368:	53ff6bff 	b	-152(0xfffff68) # 12d0 <printint.constprop.0+0x198>
    136c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1370:	02803405 	addi.w	$r5,$r0,13(0xd)
    1374:	53ff5fff 	b	-164(0xfffff5c) # 12d0 <printint.constprop.0+0x198>
    1378:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    137c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1380:	53ff53ff 	b	-176(0xfffff50) # 12d0 <printint.constprop.0+0x198>
    1384:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1388:	02802c05 	addi.w	$r5,$r0,11(0xb)
    138c:	53ff47ff 	b	-188(0xfffff44) # 12d0 <printint.constprop.0+0x198>
    i = 15;
    1390:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1394:	53ff57ff 	b	-172(0xfffff54) # 12e8 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1398:	0280200c 	addi.w	$r12,$r0,8(0x8)
    139c:	02802405 	addi.w	$r5,$r0,9(0x9)
    13a0:	53ff33ff 	b	-208(0xfffff30) # 12d0 <printint.constprop.0+0x198>
    13a4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13a8:	02802005 	addi.w	$r5,$r0,8(0x8)
    13ac:	53ff27ff 	b	-220(0xfffff24) # 12d0 <printint.constprop.0+0x198>
    13b0:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13b4:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13b8:	53ff1bff 	b	-232(0xfffff18) # 12d0 <printint.constprop.0+0x198>

00000000000013bc <getchar>:
{
    13bc:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13c0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13c4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13c8:	00150004 	move	$r4,$r0
{
    13cc:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13d0:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13d4:	540e6c00 	bl	3692(0xe6c) # 2240 <read>
}
    13d8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13dc:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13e0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13e4:	4c000020 	jirl	$r0,$r1,0

00000000000013e8 <putchar>:
{
    13e8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13ec:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13f0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13f4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13f8:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13fc:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1400:	540e4c00 	bl	3660(0xe4c) # 224c <write>
}
    1404:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1408:	00408084 	slli.w	$r4,$r4,0x0
}
    140c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1410:	4c000020 	jirl	$r0,$r1,0

0000000000001414 <puts>:
{
    1414:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1418:	29c02061 	st.d	$r1,$r3,8(0x8)
    141c:	27000077 	stptr.d	$r23,$r3,0
    1420:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1424:	5406d400 	bl	1748(0x6d4) # 1af8 <strlen>
    1428:	00150086 	move	$r6,$r4
    142c:	001502e5 	move	$r5,$r23
    1430:	02800404 	addi.w	$r4,$r0,1(0x1)
    1434:	540e1800 	bl	3608(0xe18) # 224c <write>
}
    1438:	28c02061 	ld.d	$r1,$r3,8(0x8)
    143c:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1440:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1444:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1448:	4c000020 	jirl	$r0,$r1,0

000000000000144c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    144c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1450:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1454:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1458:	140000fa 	lu12i.w	$r26,7(0x7)
{
    145c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1460:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1464:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1468:	29c1a061 	st.d	$r1,$r3,104(0x68)
    146c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1470:	29c16078 	st.d	$r24,$r3,88(0x58)
    1474:	0015009b 	move	$r27,$r4
    1478:	29c1e065 	st.d	$r5,$r3,120(0x78)
    147c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1480:	29c22067 	st.d	$r7,$r3,136(0x88)
    1484:	29c24068 	st.d	$r8,$r3,144(0x90)
    1488:	29c26069 	st.d	$r9,$r3,152(0x98)
    148c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1490:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1494:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1498:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    149c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14a0:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14a4:	02c6e39c 	addi.d	$r28,$r28,440(0x1b8)
        if (!*s)
    14a8:	2800036c 	ld.b	$r12,$r27,0
    14ac:	40008980 	beqz	$r12,136(0x88) # 1534 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14b0:	58027d99 	beq	$r12,$r25,636(0x27c) # 172c <printf+0x2e0>
    14b4:	00150366 	move	$r6,$r27
    14b8:	50000800 	b	8(0x8) # 14c0 <printf+0x74>
    14bc:	58009d99 	beq	$r12,$r25,156(0x9c) # 1558 <printf+0x10c>
    14c0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14c4:	280000cc 	ld.b	$r12,$r6,0
    14c8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14bc <printf+0x70>
    14cc:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14d0:	0011ecd7 	sub.d	$r23,$r6,$r27
    14d4:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14d8:	001502e6 	move	$r6,$r23
    14dc:	00150365 	move	$r5,$r27
    14e0:	02800404 	addi.w	$r4,$r0,1(0x1)
    14e4:	540d6800 	bl	3432(0xd68) # 224c <write>
        out(f, a, l);
        if (l)
    14e8:	4400b6e0 	bnez	$r23,180(0xb4) # 159c <printf+0x150>
            continue;
        if (s[1] == 0)
    14ec:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14f0:	40004580 	beqz	$r12,68(0x44) # 1534 <printf+0xe8>
            break;
        switch (s[1])
    14f4:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14f8:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15cc <printf+0x180>
    14fc:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15a4 <printf+0x158>
    1500:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1504:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16f4 <printf+0x2a8>
    1508:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    150c:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16bc <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1510:	2600006c 	ldptr.d	$r12,$r3,0
    1514:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1518:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    151c:	24000184 	ldptr.w	$r4,$r12,0
    1520:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1524:	2700006c 	stptr.d	$r12,$r3,0
    1528:	57fc13ff 	bl	-1008(0xffffc10) # 1138 <printint.constprop.0>
        if (!*s)
    152c:	2800036c 	ld.b	$r12,$r27,0
    1530:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14b0 <printf+0x64>
    }
    va_end(ap);
}
    1534:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1538:	28c18077 	ld.d	$r23,$r3,96(0x60)
    153c:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1540:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1544:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1548:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    154c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1550:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1554:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1558:	280004cc 	ld.b	$r12,$r6,1(0x1)
    155c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14cc <printf+0x80>
    1560:	001500d8 	move	$r24,$r6
    1564:	50000c00 	b	12(0xc) # 1570 <printf+0x124>
    1568:	2800070c 	ld.b	$r12,$r24,1(0x1)
    156c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14d0 <printf+0x84>
    1570:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1574:	2800030c 	ld.b	$r12,$r24,0
    1578:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    157c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1568 <printf+0x11c>
        l = z - a;
    1580:	0011ecd7 	sub.d	$r23,$r6,$r27
    1584:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1588:	001502e6 	move	$r6,$r23
    158c:	00150365 	move	$r5,$r27
    1590:	02800404 	addi.w	$r4,$r0,1(0x1)
    1594:	540cb800 	bl	3256(0xcb8) # 224c <write>
        if (l)
    1598:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14ec <printf+0xa0>
    159c:	0015031b 	move	$r27,$r24
    15a0:	53ff0bff 	b	-248(0xfffff08) # 14a8 <printf+0x5c>
        switch (s[1])
    15a4:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15a8:	5c01158d 	bne	$r12,$r13,276(0x114) # 16bc <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15ac:	2600006c 	ldptr.d	$r12,$r3,0
    15b0:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15b4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15b8:	24000184 	ldptr.w	$r4,$r12,0
    15bc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15c0:	2700006c 	stptr.d	$r12,$r3,0
    15c4:	57fb77ff 	bl	-1164(0xffffb74) # 1138 <printint.constprop.0>
        s += 2;
    15c8:	53ff67ff 	b	-156(0xfffff64) # 152c <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15cc:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15d0:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15d4:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15d8:	260001ac 	ldptr.d	$r12,$r13,0
    15dc:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15e0:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15e4:	0045f18a 	srli.d	$r10,$r12,0x3c
    15e8:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15ec:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15f0:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15f4:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15f8:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15fc:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1600:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1604:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1608:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    160c:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1610:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1614:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1618:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    161c:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1620:	3820278a 	ldx.bu	$r10,$r28,$r9
    1624:	38202389 	ldx.bu	$r9,$r28,$r8
    1628:	38201f88 	ldx.bu	$r8,$r28,$r7
    162c:	38201787 	ldx.bu	$r7,$r28,$r5
    1630:	38201385 	ldx.bu	$r5,$r28,$r4
    1634:	38205384 	ldx.bu	$r4,$r28,$r20
    1638:	38204f94 	ldx.bu	$r20,$r28,$r19
    163c:	38204b93 	ldx.bu	$r19,$r28,$r18
    1640:	38204792 	ldx.bu	$r18,$r28,$r17
    1644:	38204391 	ldx.bu	$r17,$r28,$r16
    1648:	38203f90 	ldx.bu	$r16,$r28,$r15
    164c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1650:	3820378e 	ldx.bu	$r14,$r28,$r13
    1654:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1658:	03403d8c 	andi	$r12,$r12,0xf
    165c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1660:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1664:	29003069 	st.b	$r9,$r3,12(0xc)
    1668:	29003468 	st.b	$r8,$r3,13(0xd)
    166c:	29003867 	st.b	$r7,$r3,14(0xe)
    1670:	29003c65 	st.b	$r5,$r3,15(0xf)
    1674:	29004064 	st.b	$r4,$r3,16(0x10)
    1678:	29004474 	st.b	$r20,$r3,17(0x11)
    167c:	29004873 	st.b	$r19,$r3,18(0x12)
    1680:	29004c72 	st.b	$r18,$r3,19(0x13)
    1684:	29005071 	st.b	$r17,$r3,20(0x14)
    1688:	29005470 	st.b	$r16,$r3,21(0x15)
    168c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1690:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1694:	3820378d 	ldx.bu	$r13,$r28,$r13
    1698:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    169c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16a0:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16a4:	2900606d 	st.b	$r13,$r3,24(0x18)
    16a8:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16ac:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16b0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16b4:	540b9800 	bl	2968(0xb98) # 224c <write>
        s += 2;
    16b8:	53fe77ff 	b	-396(0xffffe74) # 152c <printf+0xe0>
    char byte = c;
    16bc:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16c0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16c4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16c8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16cc:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16d0:	540b7c00 	bl	2940(0xb7c) # 224c <write>
    char byte = c;
    16d4:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16d8:	02800406 	addi.w	$r6,$r0,1(0x1)
    16dc:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16e0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16e4:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16e8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16ec:	540b6000 	bl	2912(0xb60) # 224c <write>
        s += 2;
    16f0:	53fe3fff 	b	-452(0xffffe3c) # 152c <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16f4:	2600006c 	ldptr.d	$r12,$r3,0
    16f8:	26000197 	ldptr.d	$r23,$r12,0
    16fc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1700:	2700006c 	stptr.d	$r12,$r3,0
    1704:	40004ee0 	beqz	$r23,76(0x4c) # 1750 <printf+0x304>
            l = strnlen(a, 200);
    1708:	02832005 	addi.w	$r5,$r0,200(0xc8)
    170c:	001502e4 	move	$r4,$r23
    1710:	5405d000 	bl	1488(0x5d0) # 1ce0 <strnlen>
    1714:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1718:	001502e5 	move	$r5,$r23
    171c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1720:	540b2c00 	bl	2860(0xb2c) # 224c <write>
        s += 2;
    1724:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1728:	53fe07ff 	b	-508(0xffffe04) # 152c <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    172c:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1730:	00150366 	move	$r6,$r27
    1734:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1560 <printf+0x114>
    write(f, s, l);
    1738:	00150006 	move	$r6,$r0
    173c:	00150365 	move	$r5,$r27
    1740:	02800404 	addi.w	$r4,$r0,1(0x1)
    1744:	540b0800 	bl	2824(0xb08) # 224c <write>
    1748:	00150378 	move	$r24,$r27
    174c:	53fda3ff 	b	-608(0xffffda0) # 14ec <printf+0xa0>
                a = "(null)";
    1750:	1c000037 	pcaddu12i	$r23,1(0x1)
    1754:	02fbc2f7 	addi.d	$r23,$r23,-272(0xef0)
    1758:	53ffb3ff 	b	-80(0xfffffb0) # 1708 <printf+0x2bc>

000000000000175c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    175c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1760:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1764:	57fcb3ff 	bl	-848(0xffffcb0) # 1414 <puts>
    exit(-100);
}
    1768:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    176c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1770:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1774:	500b4c00 	b	2892(0xb4c) # 22c0 <exit>

0000000000001778 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1778:	0280800c 	addi.w	$r12,$r0,32(0x20)
    177c:	5800108c 	beq	$r4,$r12,16(0x10) # 178c <isspace+0x14>
    1780:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1784:	02401484 	sltui	$r4,$r4,5(0x5)
    1788:	4c000020 	jirl	$r0,$r1,0
    178c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1790:	4c000020 	jirl	$r0,$r1,0

0000000000001794 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1794:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1798:	02402884 	sltui	$r4,$r4,10(0xa)
    179c:	4c000020 	jirl	$r0,$r1,0

00000000000017a0 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17a0:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17a4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17a8:	2800008d 	ld.b	$r13,$r4,0
    17ac:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17b0:	580061ae 	beq	$r13,$r14,96(0x60) # 1810 <atoi+0x70>
    17b4:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1810 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17b8:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17bc:	580065ac 	beq	$r13,$r12,100(0x64) # 1820 <atoi+0x80>
    17c0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17c4:	58007dac 	beq	$r13,$r12,124(0x7c) # 1840 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17c8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17cc:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17d0:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17d4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17d8:	680061cf 	bltu	$r14,$r15,96(0x60) # 1838 <atoi+0x98>
    int n = 0, neg = 0;
    17dc:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17e0:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17e4:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17e8:	001c126f 	mul.w	$r15,$r19,$r4
    17ec:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17f0:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17f4:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17f8:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17fc:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1800:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1804:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17e8 <atoi+0x48>
    return neg ? n : -n;
    1808:	40001280 	beqz	$r20,16(0x10) # 1818 <atoi+0x78>
}
    180c:	4c000020 	jirl	$r0,$r1,0
        s++;
    1810:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1814:	53ff97ff 	b	-108(0xfffff94) # 17a8 <atoi+0x8>
    1818:	00113e04 	sub.w	$r4,$r16,$r15
    181c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1820:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1824:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1828:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    182c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1830:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1834:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17dc <atoi+0x3c>
    1838:	00150004 	move	$r4,$r0
}
    183c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1840:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1844:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1848:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    184c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1850:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1838 <atoi+0x98>
        neg = 1;
    1854:	02800414 	addi.w	$r20,$r0,1(0x1)
    1858:	53ff87ff 	b	-124(0xfffff84) # 17dc <atoi+0x3c>

000000000000185c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    185c:	400198c0 	beqz	$r6,408(0x198) # 19f4 <memset+0x198>
    1860:	0011900c 	sub.d	$r12,$r0,$r4
    1864:	03401d8c 	andi	$r12,$r12,0x7
    1868:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    186c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1870:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1874:	0013b9ad 	masknez	$r13,$r13,$r14
    1878:	001339ee 	maskeqz	$r14,$r15,$r14
    187c:	001539ad 	or	$r13,$r13,$r14
    1880:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1884:	00005ca5 	ext.w.b	$r5,$r5
    1888:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a18 <memset+0x1bc>
    188c:	40018180 	beqz	$r12,384(0x180) # 1a0c <memset+0x1b0>
    1890:	29000085 	st.b	$r5,$r4,0
    1894:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1898:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    189c:	5801698d 	beq	$r12,$r13,360(0x168) # 1a04 <memset+0x1a8>
    18a0:	29000485 	st.b	$r5,$r4,1(0x1)
    18a4:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18a8:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18ac:	5801798d 	beq	$r12,$r13,376(0x178) # 1a24 <memset+0x1c8>
    18b0:	29000885 	st.b	$r5,$r4,2(0x2)
    18b4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18b8:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18bc:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19f8 <memset+0x19c>
    18c0:	29000c85 	st.b	$r5,$r4,3(0x3)
    18c4:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18c8:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18cc:	5801618d 	beq	$r12,$r13,352(0x160) # 1a2c <memset+0x1d0>
    18d0:	29001085 	st.b	$r5,$r4,4(0x4)
    18d4:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18d8:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18dc:	5801598d 	beq	$r12,$r13,344(0x158) # 1a34 <memset+0x1d8>
    18e0:	29001485 	st.b	$r5,$r4,5(0x5)
    18e4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18e8:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18ec:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a3c <memset+0x1e0>
    18f0:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18f4:	29001885 	st.b	$r5,$r4,6(0x6)
    18f8:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18fc:	0015000d 	move	$r13,$r0
    1900:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1904:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1908:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    190c:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1910:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1914:	0011b0d0 	sub.d	$r16,$r6,$r12
    1918:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    191c:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1920:	0010b08c 	add.d	$r12,$r4,$r12
    1924:	00450e0f 	srli.d	$r15,$r16,0x3
    1928:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    192c:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1930:	2700018d 	stptr.d	$r13,$r12,0
    1934:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1938:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1930 <memset+0xd4>
    193c:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1940:	0014be0f 	and	$r15,$r16,$r15
    1944:	004081ed 	slli.w	$r13,$r15,0x0
    1948:	0010bdcc 	add.d	$r12,$r14,$r15
    194c:	001045ad 	add.w	$r13,$r13,$r17
    1950:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a00 <memset+0x1a4>
    1954:	29000185 	st.b	$r5,$r12,0
    1958:	028005ae 	addi.w	$r14,$r13,1(0x1)
    195c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19f4 <memset+0x198>
    1960:	29000585 	st.b	$r5,$r12,1(0x1)
    1964:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1968:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19f4 <memset+0x198>
    196c:	29000985 	st.b	$r5,$r12,2(0x2)
    1970:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1974:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19f4 <memset+0x198>
    1978:	29000d85 	st.b	$r5,$r12,3(0x3)
    197c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1980:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19f4 <memset+0x198>
    1984:	29001185 	st.b	$r5,$r12,4(0x4)
    1988:	028015ae 	addi.w	$r14,$r13,5(0x5)
    198c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19f4 <memset+0x198>
    1990:	29001585 	st.b	$r5,$r12,5(0x5)
    1994:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1998:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19f4 <memset+0x198>
    199c:	29001985 	st.b	$r5,$r12,6(0x6)
    19a0:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19a4:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19f4 <memset+0x198>
    19a8:	29001d85 	st.b	$r5,$r12,7(0x7)
    19ac:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19b0:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19f4 <memset+0x198>
    19b4:	29002185 	st.b	$r5,$r12,8(0x8)
    19b8:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19bc:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19f4 <memset+0x198>
    19c0:	29002585 	st.b	$r5,$r12,9(0x9)
    19c4:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19c8:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19f4 <memset+0x198>
    19cc:	29002985 	st.b	$r5,$r12,10(0xa)
    19d0:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19d4:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19f4 <memset+0x198>
    19d8:	29002d85 	st.b	$r5,$r12,11(0xb)
    19dc:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19e0:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19f4 <memset+0x198>
    19e4:	29003185 	st.b	$r5,$r12,12(0xc)
    19e8:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19ec:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19f4 <memset+0x198>
    19f0:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19f4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19f8:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19fc:	53ff03ff 	b	-256(0xfffff00) # 18fc <memset+0xa0>
    1a00:	4c000020 	jirl	$r0,$r1,0
    1a04:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a08:	53fef7ff 	b	-268(0xffffef4) # 18fc <memset+0xa0>
    1a0c:	0015008e 	move	$r14,$r4
    1a10:	00150011 	move	$r17,$r0
    1a14:	53feebff 	b	-280(0xffffee8) # 18fc <memset+0xa0>
    1a18:	0015008c 	move	$r12,$r4
    1a1c:	0015000d 	move	$r13,$r0
    1a20:	53ff37ff 	b	-204(0xfffff34) # 1954 <memset+0xf8>
    1a24:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a28:	53fed7ff 	b	-300(0xffffed4) # 18fc <memset+0xa0>
    1a2c:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a30:	53fecfff 	b	-308(0xffffecc) # 18fc <memset+0xa0>
    1a34:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a38:	53fec7ff 	b	-316(0xffffec4) # 18fc <memset+0xa0>
    1a3c:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a40:	53febfff 	b	-324(0xffffebc) # 18fc <memset+0xa0>

0000000000001a44 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a44:	2800008c 	ld.b	$r12,$r4,0
    1a48:	280000ae 	ld.b	$r14,$r5,0
    1a4c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a80 <strcmp+0x3c>
    1a50:	40003980 	beqz	$r12,56(0x38) # 1a88 <strcmp+0x44>
    1a54:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a58:	50000800 	b	8(0x8) # 1a60 <strcmp+0x1c>
    1a5c:	400019a0 	beqz	$r13,24(0x18) # 1a74 <strcmp+0x30>
    1a60:	3800308d 	ldx.b	$r13,$r4,$r12
    1a64:	380030ae 	ldx.b	$r14,$r5,$r12
    1a68:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a6c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a5c <strcmp+0x18>
    1a70:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a74:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a78:	001111a4 	sub.w	$r4,$r13,$r4
    1a7c:	4c000020 	jirl	$r0,$r1,0
    1a80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a84:	53fff3ff 	b	-16(0xffffff0) # 1a74 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a88:	0015000d 	move	$r13,$r0
    1a8c:	53ffebff 	b	-24(0xfffffe8) # 1a74 <strcmp+0x30>

0000000000001a90 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a90:	400054c0 	beqz	$r6,84(0x54) # 1ae4 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a94:	2a00008d 	ld.bu	$r13,$r4,0
    1a98:	2a0000ae 	ld.bu	$r14,$r5,0
    1a9c:	40003da0 	beqz	$r13,60(0x3c) # 1ad8 <strncmp+0x48>
    1aa0:	40003dc0 	beqz	$r14,60(0x3c) # 1adc <strncmp+0x4c>
    if (!n--)
    1aa4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1aa8:	400034c0 	beqz	$r6,52(0x34) # 1adc <strncmp+0x4c>
    1aac:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ab0:	580019ae 	beq	$r13,$r14,24(0x18) # 1ac8 <strncmp+0x38>
    1ab4:	50002800 	b	40(0x28) # 1adc <strncmp+0x4c>
    1ab8:	400035c0 	beqz	$r14,52(0x34) # 1aec <strncmp+0x5c>
    1abc:	580020cc 	beq	$r6,$r12,32(0x20) # 1adc <strncmp+0x4c>
    1ac0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac4:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1aec <strncmp+0x5c>
    1ac8:	3820308d 	ldx.bu	$r13,$r4,$r12
    1acc:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ad0:	001501af 	move	$r15,$r13
    1ad4:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1ab8 <strncmp+0x28>
    1ad8:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1adc:	001139a4 	sub.w	$r4,$r13,$r14
    1ae0:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ae4:	00150004 	move	$r4,$r0
}
    1ae8:	4c000020 	jirl	$r0,$r1,0
    1aec:	001501ed 	move	$r13,$r15
    return *l - *r;
    1af0:	001139a4 	sub.w	$r4,$r13,$r14
    1af4:	4c000020 	jirl	$r0,$r1,0

0000000000001af8 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1af8:	03401c8c 	andi	$r12,$r4,0x7
    1afc:	4000b180 	beqz	$r12,176(0xb0) # 1bac <strlen+0xb4>
        if (!*s)
    1b00:	2800008c 	ld.b	$r12,$r4,0
    1b04:	4000b180 	beqz	$r12,176(0xb0) # 1bb4 <strlen+0xbc>
    1b08:	0015008c 	move	$r12,$r4
    1b0c:	50000c00 	b	12(0xc) # 1b18 <strlen+0x20>
    1b10:	2800018d 	ld.b	$r13,$r12,0
    1b14:	400091a0 	beqz	$r13,144(0x90) # 1ba4 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b18:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b1c:	03401d8d 	andi	$r13,$r12,0x7
    1b20:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b10 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b24:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b28:	2600018f 	ldptr.d	$r15,$r12,0
    1b2c:	03bbfdad 	ori	$r13,$r13,0xeff
    1b30:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b34:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b38:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b3c:	038201ce 	ori	$r14,$r14,0x80
    1b40:	0010b5ed 	add.d	$r13,$r15,$r13
    1b44:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b48:	0016bdad 	andn	$r13,$r13,$r15
    1b4c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b50:	0014b9ae 	and	$r14,$r13,$r14
    1b54:	440049c0 	bnez	$r14,72(0x48) # 1b9c <strlen+0xa4>
    1b58:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b5c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b60:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b64:	2600018e 	ldptr.d	$r14,$r12,0
    1b68:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b6c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b70:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b74:	0382020f 	ori	$r15,$r16,0x80
    1b78:	0010b5cd 	add.d	$r13,$r14,$r13
    1b7c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b80:	0016b9ad 	andn	$r13,$r13,$r14
    1b84:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b88:	0014bdad 	and	$r13,$r13,$r15
    1b8c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b60 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b90:	2800018d 	ld.b	$r13,$r12,0
    1b94:	400011a0 	beqz	$r13,16(0x10) # 1ba4 <strlen+0xac>
    1b98:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b9c:	2800018d 	ld.b	$r13,$r12,0
    1ba0:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b98 <strlen+0xa0>
        ;
    return s - a;
    1ba4:	00119184 	sub.d	$r4,$r12,$r4
}
    1ba8:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1bac:	0015008c 	move	$r12,$r4
    1bb0:	53ff77ff 	b	-140(0xfffff74) # 1b24 <strlen+0x2c>
        if (!*s)
    1bb4:	00150004 	move	$r4,$r0
            return s - a;
    1bb8:	4c000020 	jirl	$r0,$r1,0

0000000000001bbc <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bbc:	03401c8c 	andi	$r12,$r4,0x7
    1bc0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bc4:	44002180 	bnez	$r12,32(0x20) # 1be4 <memchr+0x28>
    1bc8:	50002c00 	b	44(0x2c) # 1bf4 <memchr+0x38>
    1bcc:	2a00008c 	ld.bu	$r12,$r4,0
    1bd0:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cc8 <memchr+0x10c>
    1bd4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bd8:	03401c8c 	andi	$r12,$r4,0x7
    1bdc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1be0:	40001580 	beqz	$r12,20(0x14) # 1bf4 <memchr+0x38>
    1be4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bcc <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1be8:	0015000d 	move	$r13,$r0
}
    1bec:	001501a4 	move	$r4,$r13
    1bf0:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bf4:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bf8:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bec <memchr+0x30>
    1bfc:	2a00008c 	ld.bu	$r12,$r4,0
    1c00:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cc8 <memchr+0x10c>
        size_t k = ONES * c;
    1c04:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c08:	0384058c 	ori	$r12,$r12,0x101
    1c0c:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c10:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c14:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c18:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c1c:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cd8 <memchr+0x11c>
    1c20:	2600008d 	ldptr.d	$r13,$r4,0
    1c24:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c28:	038201ce 	ori	$r14,$r14,0x80
    1c2c:	0015b60d 	xor	$r13,$r16,$r13
    1c30:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c34:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c38:	0016b58c 	andn	$r12,$r12,$r13
    1c3c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c40:	0014b98c 	and	$r12,$r12,$r14
    1c44:	44009580 	bnez	$r12,148(0x94) # 1cd8 <memchr+0x11c>
    1c48:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c4c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c50:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c54:	50002000 	b	32(0x20) # 1c74 <memchr+0xb8>
    1c58:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c5c:	0015b20c 	xor	$r12,$r16,$r12
    1c60:	0010b98e 	add.d	$r14,$r12,$r14
    1c64:	0016b1cc 	andn	$r12,$r14,$r12
    1c68:	0014bd8c 	and	$r12,$r12,$r15
    1c6c:	44006580 	bnez	$r12,100(0x64) # 1cd0 <memchr+0x114>
    1c70:	001501a4 	move	$r4,$r13
    1c74:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c78:	0382022f 	ori	$r15,$r17,0x80
    1c7c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c80:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c84:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c88:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c8c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c90:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c94:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c58 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c98:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1be8 <memchr+0x2c>
    1c9c:	2a0001ac 	ld.bu	$r12,$r13,0
    1ca0:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bec <memchr+0x30>
    1ca4:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1ca8:	001099a6 	add.d	$r6,$r13,$r6
    1cac:	50001000 	b	16(0x10) # 1cbc <memchr+0x100>
    1cb0:	2a00018e 	ld.bu	$r14,$r12,0
    1cb4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1cb8:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bec <memchr+0x30>
    1cbc:	0015018d 	move	$r13,$r12
    1cc0:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1cb0 <memchr+0xf4>
    1cc4:	53ff27ff 	b	-220(0xfffff24) # 1be8 <memchr+0x2c>
    1cc8:	0015008d 	move	$r13,$r4
    1ccc:	53ffd3ff 	b	-48(0xfffffd0) # 1c9c <memchr+0xe0>
    1cd0:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cd4:	53ffcfff 	b	-52(0xfffffcc) # 1ca0 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cd8:	0015008d 	move	$r13,$r4
    1cdc:	53ffcbff 	b	-56(0xfffffc8) # 1ca4 <memchr+0xe8>

0000000000001ce0 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ce0:	03401c8c 	andi	$r12,$r4,0x7
    1ce4:	40011980 	beqz	$r12,280(0x118) # 1dfc <strnlen+0x11c>
    1ce8:	4000f4a0 	beqz	$r5,244(0xf4) # 1ddc <strnlen+0xfc>
    1cec:	2a00008c 	ld.bu	$r12,$r4,0
    1cf0:	4000f580 	beqz	$r12,244(0xf4) # 1de4 <strnlen+0x104>
    1cf4:	001500ac 	move	$r12,$r5
    1cf8:	0015008d 	move	$r13,$r4
    1cfc:	50001000 	b	16(0x10) # 1d0c <strnlen+0x2c>
    1d00:	4000dd80 	beqz	$r12,220(0xdc) # 1ddc <strnlen+0xfc>
    1d04:	2a0001ae 	ld.bu	$r14,$r13,0
    1d08:	4000e5c0 	beqz	$r14,228(0xe4) # 1dec <strnlen+0x10c>
    1d0c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d10:	03401dae 	andi	$r14,$r13,0x7
    1d14:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d18:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d00 <strnlen+0x20>
    if (n && *s != c)
    1d1c:	4000c180 	beqz	$r12,192(0xc0) # 1ddc <strnlen+0xfc>
    1d20:	2a0001ae 	ld.bu	$r14,$r13,0
    1d24:	4000c9c0 	beqz	$r14,200(0xc8) # 1dec <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d28:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d2c:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e08 <strnlen+0x128>
    1d30:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d34:	260001b0 	ldptr.d	$r16,$r13,0
    1d38:	03bbfdce 	ori	$r14,$r14,0xeff
    1d3c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d40:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d44:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d48:	038201ef 	ori	$r15,$r15,0x80
    1d4c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d50:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d54:	0016c1ce 	andn	$r14,$r14,$r16
    1d58:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d5c:	0014bdcf 	and	$r15,$r14,$r15
    1d60:	4400a9e0 	bnez	$r15,168(0xa8) # 1e08 <strnlen+0x128>
    1d64:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d68:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d6c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d70:	50001c00 	b	28(0x1c) # 1d8c <strnlen+0xac>
    1d74:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d78:	0010b9ee 	add.d	$r14,$r15,$r14
    1d7c:	0016bdce 	andn	$r14,$r14,$r15
    1d80:	0014c1ce 	and	$r14,$r14,$r16
    1d84:	440071c0 	bnez	$r14,112(0x70) # 1df4 <strnlen+0x114>
    1d88:	0015022d 	move	$r13,$r17
    1d8c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d90:	03820250 	ori	$r16,$r18,0x80
    1d94:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d98:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d9c:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1da0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1da4:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1da8:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1dac:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d74 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1db0:	40002d80 	beqz	$r12,44(0x2c) # 1ddc <strnlen+0xfc>
    1db4:	2a00022d 	ld.bu	$r13,$r17,0
    1db8:	400021a0 	beqz	$r13,32(0x20) # 1dd8 <strnlen+0xf8>
    1dbc:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1dc0:	0010b22c 	add.d	$r12,$r17,$r12
    1dc4:	001501b1 	move	$r17,$r13
    1dc8:	5800158d 	beq	$r12,$r13,20(0x14) # 1ddc <strnlen+0xfc>
    1dcc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dd0:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1dd4:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1dc4 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dd8:	00119225 	sub.d	$r5,$r17,$r4
}
    1ddc:	001500a4 	move	$r4,$r5
    1de0:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1de4:	001500ac 	move	$r12,$r5
    1de8:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dec:	001501b1 	move	$r17,$r13
    1df0:	53ffc7ff 	b	-60(0xfffffc4) # 1db4 <strnlen+0xd4>
    1df4:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1df8:	53ffc3ff 	b	-64(0xfffffc0) # 1db8 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dfc:	001500ac 	move	$r12,$r5
    1e00:	0015008d 	move	$r13,$r4
    1e04:	53ff1bff 	b	-232(0xfffff18) # 1d1c <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e08:	001501b1 	move	$r17,$r13
    1e0c:	53ffb3ff 	b	-80(0xfffffb0) # 1dbc <strnlen+0xdc>

0000000000001e10 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e10:	0015948c 	xor	$r12,$r4,$r5
    1e14:	03401d8c 	andi	$r12,$r12,0x7
    1e18:	4400ad80 	bnez	$r12,172(0xac) # 1ec4 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e1c:	03401cac 	andi	$r12,$r5,0x7
    1e20:	40003180 	beqz	$r12,48(0x30) # 1e50 <strcpy+0x40>
            if (!(*d = *s))
    1e24:	280000ac 	ld.b	$r12,$r5,0
    1e28:	2900008c 	st.b	$r12,$r4,0
    1e2c:	44001580 	bnez	$r12,20(0x14) # 1e40 <strcpy+0x30>
    1e30:	5000bc00 	b	188(0xbc) # 1eec <strcpy+0xdc>
    1e34:	280000ac 	ld.b	$r12,$r5,0
    1e38:	2900008c 	st.b	$r12,$r4,0
    1e3c:	4000a980 	beqz	$r12,168(0xa8) # 1ee4 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e40:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e44:	03401cac 	andi	$r12,$r5,0x7
    1e48:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e4c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e34 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e50:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e54:	260000ae 	ldptr.d	$r14,$r5,0
    1e58:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e5c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e60:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e64:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e68:	038201ad 	ori	$r13,$r13,0x80
    1e6c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e70:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e74:	0016b98c 	andn	$r12,$r12,$r14
    1e78:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e7c:	0014b58c 	and	$r12,$r12,$r13
    1e80:	44004580 	bnez	$r12,68(0x44) # 1ec4 <strcpy+0xb4>
    1e84:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e88:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e8c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e90:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e94:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e98:	260000ae 	ldptr.d	$r14,$r5,0
    1e9c:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ea0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ea4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ea8:	038201ed 	ori	$r13,$r15,0x80
    1eac:	0010b1cc 	add.d	$r12,$r14,$r12
    1eb0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1eb4:	0016b98c 	andn	$r12,$r12,$r14
    1eb8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ebc:	0014b58c 	and	$r12,$r12,$r13
    1ec0:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e8c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ec4:	280000ac 	ld.b	$r12,$r5,0
    1ec8:	2900008c 	st.b	$r12,$r4,0
    1ecc:	40001d80 	beqz	$r12,28(0x1c) # 1ee8 <strcpy+0xd8>
    1ed0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ed4:	280000ac 	ld.b	$r12,$r5,0
    1ed8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1edc:	2900008c 	st.b	$r12,$r4,0
    1ee0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ed0 <strcpy+0xc0>
        ;
    return d;
}
    1ee4:	4c000020 	jirl	$r0,$r1,0
    1ee8:	4c000020 	jirl	$r0,$r1,0
    1eec:	4c000020 	jirl	$r0,$r1,0

0000000000001ef0 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ef0:	0015948c 	xor	$r12,$r4,$r5
    1ef4:	03401d8c 	andi	$r12,$r12,0x7
    1ef8:	4400ad80 	bnez	$r12,172(0xac) # 1fa4 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1efc:	03401cac 	andi	$r12,$r5,0x7
    1f00:	44010180 	bnez	$r12,256(0x100) # 2000 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f04:	400100c0 	beqz	$r6,256(0x100) # 2004 <strncpy+0x114>
    1f08:	280000af 	ld.b	$r15,$r5,0
    1f0c:	400105e0 	beqz	$r15,260(0x104) # 2010 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f10:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f14:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21ec <strncpy+0x2fc>
    1f18:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f1c:	260000ae 	ldptr.d	$r14,$r5,0
    1f20:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f24:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f28:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f2c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f30:	038201ad 	ori	$r13,$r13,0x80
    1f34:	0010b1cc 	add.d	$r12,$r14,$r12
    1f38:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f3c:	0016b98c 	andn	$r12,$r12,$r14
    1f40:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f44:	0014b58c 	and	$r12,$r12,$r13
    1f48:	4402a580 	bnez	$r12,676(0x2a4) # 21ec <strncpy+0x2fc>
    1f4c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f50:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f54:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f58:	50001c00 	b	28(0x1c) # 1f74 <strncpy+0x84>
    1f5c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f60:	0010b1cc 	add.d	$r12,$r14,$r12
    1f64:	0016b98c 	andn	$r12,$r12,$r14
    1f68:	0014b58c 	and	$r12,$r12,$r13
    1f6c:	44024580 	bnez	$r12,580(0x244) # 21b0 <strncpy+0x2c0>
    1f70:	001501e5 	move	$r5,$r15
    1f74:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f78:	0382020d 	ori	$r13,$r16,0x80
    1f7c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f80:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f84:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f88:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f8c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f90:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f94:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f98:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f9c:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f5c <strncpy+0x6c>
    1fa0:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1fa4:	400060c0 	beqz	$r6,96(0x60) # 2004 <strncpy+0x114>
    1fa8:	280000ac 	ld.b	$r12,$r5,0
    1fac:	0015008d 	move	$r13,$r4
    1fb0:	2900008c 	st.b	$r12,$r4,0
    1fb4:	44001580 	bnez	$r12,20(0x14) # 1fc8 <strncpy+0xd8>
    1fb8:	50005c00 	b	92(0x5c) # 2014 <strncpy+0x124>
    1fbc:	280000ac 	ld.b	$r12,$r5,0
    1fc0:	290001ac 	st.b	$r12,$r13,0
    1fc4:	40005180 	beqz	$r12,80(0x50) # 2014 <strncpy+0x124>
    1fc8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fcc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fd0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fd4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fbc <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fd8:	001501a4 	move	$r4,$r13
    1fdc:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fe0:	280000ac 	ld.b	$r12,$r5,0
    1fe4:	2900008c 	st.b	$r12,$r4,0
    1fe8:	40002980 	beqz	$r12,40(0x28) # 2010 <strncpy+0x120>
    1fec:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ff0:	03401cac 	andi	$r12,$r5,0x7
    1ff4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ff8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ffc:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f04 <strncpy+0x14>
    2000:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fe0 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2004:	0015008d 	move	$r13,$r4
}
    2008:	001501a4 	move	$r4,$r13
    200c:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2010:	0015008d 	move	$r13,$r4
    2014:	0011b40c 	sub.d	$r12,$r0,$r13
    2018:	03401d8c 	andi	$r12,$r12,0x7
    201c:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2020:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2024:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2028:	0013bdce 	masknez	$r14,$r14,$r15
    202c:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2030:	00133e0f 	maskeqz	$r15,$r16,$r15
    2034:	00153dce 	or	$r14,$r14,$r15
    2038:	024004d0 	sltui	$r16,$r6,1(0x1)
    203c:	00131a31 	maskeqz	$r17,$r17,$r6
    2040:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2044:	001540d0 	or	$r16,$r6,$r16
    2048:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21c0 <strncpy+0x2d0>
    204c:	40015980 	beqz	$r12,344(0x158) # 21a4 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2050:	290001a0 	st.b	$r0,$r13,0
    2054:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2058:	5801458f 	beq	$r12,$r15,324(0x144) # 219c <strncpy+0x2ac>
    205c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2060:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2064:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2068:	5801658f 	beq	$r12,$r15,356(0x164) # 21cc <strncpy+0x2dc>
    206c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2070:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2074:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2078:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2194 <strncpy+0x2a4>
    207c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2080:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2084:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2088:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21d4 <strncpy+0x2e4>
    208c:	290011a0 	st.b	$r0,$r13,4(0x4)
    2090:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2094:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2098:	5801458f 	beq	$r12,$r15,324(0x144) # 21dc <strncpy+0x2ec>
    209c:	290015a0 	st.b	$r0,$r13,5(0x5)
    20a0:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20a4:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20a8:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21e4 <strncpy+0x2f4>
    20ac:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20b0:	290019a0 	st.b	$r0,$r13,6(0x6)
    20b4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20b8:	0011b210 	sub.d	$r16,$r16,$r12
    20bc:	00450e11 	srli.d	$r17,$r16,0x3
    20c0:	0010b1ac 	add.d	$r12,$r13,$r12
    20c4:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20c8:	27000180 	stptr.d	$r0,$r12,0
    20cc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20d0:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20c8 <strncpy+0x1d8>
    20d4:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20d8:	0014c611 	and	$r17,$r16,$r17
    20dc:	0040822f 	slli.w	$r15,$r17,0x0
    20e0:	001049ef 	add.w	$r15,$r15,$r18
    20e4:	0010c5cc 	add.d	$r12,$r14,$r17
    20e8:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fd8 <strncpy+0xe8>
    20ec:	29000180 	st.b	$r0,$r12,0
    20f0:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20f4:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fd8 <strncpy+0xe8>
    20f8:	29000580 	st.b	$r0,$r12,1(0x1)
    20fc:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2100:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fd8 <strncpy+0xe8>
    2104:	29000980 	st.b	$r0,$r12,2(0x2)
    2108:	02800dee 	addi.w	$r14,$r15,3(0x3)
    210c:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fd8 <strncpy+0xe8>
    2110:	29000d80 	st.b	$r0,$r12,3(0x3)
    2114:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2118:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fd8 <strncpy+0xe8>
    211c:	29001180 	st.b	$r0,$r12,4(0x4)
    2120:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2124:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fd8 <strncpy+0xe8>
    2128:	29001580 	st.b	$r0,$r12,5(0x5)
    212c:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2130:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fd8 <strncpy+0xe8>
    2134:	29001980 	st.b	$r0,$r12,6(0x6)
    2138:	02801dee 	addi.w	$r14,$r15,7(0x7)
    213c:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fd8 <strncpy+0xe8>
    2140:	29001d80 	st.b	$r0,$r12,7(0x7)
    2144:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2148:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fd8 <strncpy+0xe8>
    214c:	29002180 	st.b	$r0,$r12,8(0x8)
    2150:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2154:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fd8 <strncpy+0xe8>
    2158:	29002580 	st.b	$r0,$r12,9(0x9)
    215c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2160:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fd8 <strncpy+0xe8>
    2164:	29002980 	st.b	$r0,$r12,10(0xa)
    2168:	02802dee 	addi.w	$r14,$r15,11(0xb)
    216c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fd8 <strncpy+0xe8>
    2170:	29002d80 	st.b	$r0,$r12,11(0xb)
    2174:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2178:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fd8 <strncpy+0xe8>
    217c:	29003180 	st.b	$r0,$r12,12(0xc)
    2180:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2184:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fd8 <strncpy+0xe8>
    2188:	29003580 	st.b	$r0,$r12,13(0xd)
}
    218c:	001501a4 	move	$r4,$r13
    2190:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2194:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2198:	53ff23ff 	b	-224(0xfffff20) # 20b8 <strncpy+0x1c8>
    219c:	02800412 	addi.w	$r18,$r0,1(0x1)
    21a0:	53ff1bff 	b	-232(0xfffff18) # 20b8 <strncpy+0x1c8>
    21a4:	001501ae 	move	$r14,$r13
    21a8:	00150012 	move	$r18,$r0
    21ac:	53ff0fff 	b	-244(0xfffff0c) # 20b8 <strncpy+0x1c8>
    21b0:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21b4:	0015008d 	move	$r13,$r4
    21b8:	001501e5 	move	$r5,$r15
    21bc:	53fdf7ff 	b	-524(0xffffdf4) # 1fb0 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21c0:	001501ac 	move	$r12,$r13
    21c4:	0015000f 	move	$r15,$r0
    21c8:	53ff27ff 	b	-220(0xfffff24) # 20ec <strncpy+0x1fc>
    21cc:	02800812 	addi.w	$r18,$r0,2(0x2)
    21d0:	53feebff 	b	-280(0xffffee8) # 20b8 <strncpy+0x1c8>
    21d4:	02801012 	addi.w	$r18,$r0,4(0x4)
    21d8:	53fee3ff 	b	-288(0xffffee0) # 20b8 <strncpy+0x1c8>
    21dc:	02801412 	addi.w	$r18,$r0,5(0x5)
    21e0:	53fedbff 	b	-296(0xffffed8) # 20b8 <strncpy+0x1c8>
    21e4:	02801812 	addi.w	$r18,$r0,6(0x6)
    21e8:	53fed3ff 	b	-304(0xffffed0) # 20b8 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21ec:	2900008f 	st.b	$r15,$r4,0
    21f0:	0015008d 	move	$r13,$r4
    21f4:	53fdd7ff 	b	-556(0xffffdd4) # 1fc8 <strncpy+0xd8>

00000000000021f8 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21f8:	0015008c 	move	$r12,$r4
    21fc:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2200:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2204:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2208:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    220c:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2210:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2214:	00408084 	slli.w	$r4,$r4,0x0
}
    2218:	4c000020 	jirl	$r0,$r1,0

000000000000221c <openat>:
    register long a7 __asm__("a7") = n;
    221c:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2220:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2224:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2228:	00408084 	slli.w	$r4,$r4,0x0
}
    222c:	4c000020 	jirl	$r0,$r1,0

0000000000002230 <close>:
    register long a7 __asm__("a7") = n;
    2230:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2234:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2238:	00408084 	slli.w	$r4,$r4,0x0
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <read>:
    register long a7 __asm__("a7") = n;
    2240:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2244:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <write>:
    register long a7 __asm__("a7") = n;
    224c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2250:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2254:	4c000020 	jirl	$r0,$r1,0

0000000000002258 <getpid>:
    register long a7 __asm__("a7") = n;
    2258:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    225c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2260:	00408084 	slli.w	$r4,$r4,0x0
}
    2264:	4c000020 	jirl	$r0,$r1,0

0000000000002268 <getppid>:
    register long a7 __asm__("a7") = n;
    2268:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    226c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2270:	00408084 	slli.w	$r4,$r4,0x0
}
    2274:	4c000020 	jirl	$r0,$r1,0

0000000000002278 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2278:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    227c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2280:	00408084 	slli.w	$r4,$r4,0x0
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <fork>:
    register long a7 __asm__("a7") = n;
    2288:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    228c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2290:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2294:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2298:	00408084 	slli.w	$r4,$r4,0x0
}
    229c:	4c000020 	jirl	$r0,$r1,0

00000000000022a0 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22a0:	001500c5 	move	$r5,$r6
    if (stack)
    22a4:	400008c0 	beqz	$r6,8(0x8) # 22ac <clone+0xc>
	stack += stack_size;
    22a8:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22ac:	00408106 	slli.w	$r6,$r8,0x0
    22b0:	00150009 	move	$r9,$r0
    22b4:	00150008 	move	$r8,$r0
    22b8:	00150007 	move	$r7,$r0
    22bc:	5002c800 	b	712(0x2c8) # 2584 <__clone>

00000000000022c0 <exit>:
    register long a7 __asm__("a7") = n;
    22c0:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22c4:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <waitpid>:
    register long a7 __asm__("a7") = n;
    22cc:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22d0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22d4:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22d8:	00408084 	slli.w	$r4,$r4,0x0
}
    22dc:	4c000020 	jirl	$r0,$r1,0

00000000000022e0 <exec>:
    register long a7 __asm__("a7") = n;
    22e0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22e4:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22e8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <execve>:
    register long a7 __asm__("a7") = n;
    22f0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22f4:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22f8:	00408084 	slli.w	$r4,$r4,0x0
}
    22fc:	4c000020 	jirl	$r0,$r1,0

0000000000002300 <times>:
    register long a7 __asm__("a7") = n;
    2300:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2304:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2308:	00408084 	slli.w	$r4,$r4,0x0
}
    230c:	4c000020 	jirl	$r0,$r1,0

0000000000002310 <get_time>:

int64 get_time()
{
    2310:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2314:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2318:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    231c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2320:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2324:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2328:	44003c80 	bnez	$r4,60(0x3c) # 2364 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    232c:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2330:	039f3c8c 	ori	$r12,$r4,0x7cf
    2334:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2338:	2a40006d 	ld.hu	$r13,$r3,0
    233c:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2340:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2344:	00450c84 	srli.d	$r4,$r4,0x3
    2348:	001eb084 	mulh.du	$r4,$r4,$r12
    234c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2350:	001db1ac 	mul.d	$r12,$r13,$r12
    2354:	00451084 	srli.d	$r4,$r4,0x4
    2358:	00109184 	add.d	$r4,$r12,$r4
}
    235c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2360:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2364:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2368:	53fff7ff 	b	-12(0xffffff4) # 235c <get_time+0x4c>

000000000000236c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    236c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2370:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2374:	00408084 	slli.w	$r4,$r4,0x0
}
    2378:	4c000020 	jirl	$r0,$r1,0

000000000000237c <time>:
    register long a7 __asm__("a7") = n;
    237c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2380:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2384:	00408084 	slli.w	$r4,$r4,0x0
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <sleep>:

int sleep(unsigned long long time)
{
    238c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2390:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2394:	00150064 	move	$r4,$r3
    2398:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    239c:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23a0:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a4:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23a8:	44001080 	bnez	$r4,16(0x10) # 23b8 <sleep+0x2c>
    return 0;
    23ac:	00150004 	move	$r4,$r0
}
    23b0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b4:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23b8:	24000064 	ldptr.w	$r4,$r3,0
}
    23bc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23c0:	4c000020 	jirl	$r0,$r1,0

00000000000023c4 <set_priority>:
    register long a7 __asm__("a7") = n;
    23c4:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23c8:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23cc:	00408084 	slli.w	$r4,$r4,0x0
}
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23d4:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23d8:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <munmap>:
    register long a7 __asm__("a7") = n;
    23e0:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e4:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23e8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <wait>:

int wait(int *code)
{
    23f0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23f4:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23f8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23fc:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2400:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2404:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2408:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <spawn>:
    register long a7 __asm__("a7") = n;
    2410:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2414:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <mailread>:
    register long a7 __asm__("a7") = n;
    2420:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2424:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2430:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2434:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <fstat>:
    register long a7 __asm__("a7") = n;
    2440:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2444:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2448:	00408084 	slli.w	$r4,$r4,0x0
}
    244c:	4c000020 	jirl	$r0,$r1,0

0000000000002450 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2450:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2454:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2458:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2464:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2468:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    246c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2470:	00408084 	slli.w	$r4,$r4,0x0
}
    2474:	4c000020 	jirl	$r0,$r1,0

0000000000002478 <link>:

int link(char *old_path, char *new_path)
{
    2478:	0015008c 	move	$r12,$r4
    247c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2480:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2484:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2488:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    248c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2490:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2494:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2498:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    249c:	4c000020 	jirl	$r0,$r1,0

00000000000024a0 <unlink>:

int unlink(char *path)
{
    24a0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24a4:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24a8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24ac:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b0:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24b4:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <uname>:
    register long a7 __asm__("a7") = n;
    24bc:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24c0:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <brk>:
    register long a7 __asm__("a7") = n;
    24cc:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24d0:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24d4:	00408084 	slli.w	$r4,$r4,0x0
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <getcwd>:
    register long a7 __asm__("a7") = n;
    24dc:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24e0:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24e4:	4c000020 	jirl	$r0,$r1,0

00000000000024e8 <chdir>:
    register long a7 __asm__("a7") = n;
    24e8:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24ec:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24f0:	00408084 	slli.w	$r4,$r4,0x0
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24f8:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24fc:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2500:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2504:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2508:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    250c:	002b0000 	syscall	0x0
    2510:	00408084 	slli.w	$r4,$r4,0x0
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <getdents>:
    register long a7 __asm__("a7") = n;
    2518:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    251c:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <pipe>:
    register long a7 __asm__("a7") = n;
    2528:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    252c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2530:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <dup>:
    register long a7 __asm__("a7") = n;
    253c:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2540:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <dup2>:
    register long a7 __asm__("a7") = n;
    254c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2550:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2554:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2558:	00408084 	slli.w	$r4,$r4,0x0
}
    255c:	4c000020 	jirl	$r0,$r1,0

0000000000002560 <mount>:
    register long a7 __asm__("a7") = n;
    2560:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2564:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2568:	00408084 	slli.w	$r4,$r4,0x0
}
    256c:	4c000020 	jirl	$r0,$r1,0

0000000000002570 <umount>:
    register long a7 __asm__("a7") = n;
    2570:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2574:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2578:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    257c:	00408084 	slli.w	$r4,$r4,0x0
}
    2580:	4c000020 	jirl	$r0,$r1,0

0000000000002584 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2584:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2588:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    258c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2590:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2594:	00150106 	move	$r6,$r8
	move $a3, $a5
    2598:	00150127 	move	$r7,$r9
	move $a4, $a6
    259c:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25a0:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25a4:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25a8:	40000880 	beqz	$r4,8(0x8) # 25b0 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25ac:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25b0:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25b4:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25b8:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25bc:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25c0:	002b0000 	syscall	0x0
