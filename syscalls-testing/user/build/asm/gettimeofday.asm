
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/gettimeofday:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54010800 	bl	264(0x108) # 110c <__start_main>

0000000000001008 <test_gettimeofday>:
 * "start:[num], end:[num]"
 * "interval: [num]"	注：数字[num]的值应大于0
 * 测试失败时的输出：
 * "gettimeofday error."
 */
void test_gettimeofday() {
    1008:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
void test_gettimeofday() {
    1014:	29c0a061 	st.d	$r1,$r3,40(0x28)
    1018:	29c06078 	st.d	$r24,$r3,24(0x18)
    101c:	29c08077 	st.d	$r23,$r3,32(0x20)
	TEST_START(__func__);
    1020:	5403f400 	bl	1012(0x3f4) # 1414 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02d87084 	addi.d	$r4,$r4,1564(0x61c)
    102c:	5403e800 	bl	1000(0x3e8) # 1414 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d64084 	addi.d	$r4,$r4,1424(0x590)
    1038:	5403dc00 	bl	988(0x3dc) # 1414 <puts>
	int test_ret1 = get_time();
    103c:	5412b800 	bl	4792(0x12b8) # 22f4 <get_time>
	volatile int i = 12500000;	// qemu时钟频率12500000
    1040:	14017d6c 	lu12i.w	$r12,3051(0xbeb)
    1044:	03b0818c 	ori	$r12,$r12,0xc20
    1048:	2980306c 	st.w	$r12,$r3,12(0xc)
	while(i > 0) i--;
    104c:	24000c6c 	ldptr.w	$r12,$r3,12(0xc)
	int test_ret1 = get_time();
    1050:	00408098 	slli.w	$r24,$r4,0x0
	while(i > 0) i--;
    1054:	6400180c 	bge	$r0,$r12,24(0x18) # 106c <test_gettimeofday+0x64>
    1058:	24000c6c 	ldptr.w	$r12,$r3,12(0xc)
    105c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
    1060:	2980306c 	st.w	$r12,$r3,12(0xc)
    1064:	24000c6c 	ldptr.w	$r12,$r3,12(0xc)
    1068:	63fff00c 	blt	$r0,$r12,-16(0x3fff0) # 1058 <test_gettimeofday+0x50>
	int test_ret2 = get_time();
    106c:	54128800 	bl	4744(0x1288) # 22f4 <get_time>
	if(test_ret1 > 0 && test_ret2 > 0){
    1070:	64000c18 	bge	$r0,$r24,12(0xc) # 107c <test_gettimeofday+0x74>
	int test_ret2 = get_time();
    1074:	00408097 	slli.w	$r23,$r4,0x0
	if(test_ret1 > 0 && test_ret2 > 0){
    1078:	60004417 	blt	$r0,$r23,68(0x44) # 10bc <test_gettimeofday+0xb4>
		printf("gettimeofday success.\n");
		printf("start:%d, end:%d\n", test_ret1, test_ret2);
                printf("interval: %d\n", test_ret2 - test_ret1);
	}else{
		printf("gettimeofday error.\n");
    107c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1080:	02d65084 	addi.d	$r4,$r4,1428(0x594)
    1084:	5403c800 	bl	968(0x3c8) # 144c <printf>
	}
	TEST_END(__func__);
    1088:	1c000024 	pcaddu12i	$r4,1(0x1)
    108c:	02d68084 	addi.d	$r4,$r4,1440(0x5a0)
    1090:	54038400 	bl	900(0x384) # 1414 <puts>
    1094:	1c000024 	pcaddu12i	$r4,1(0x1)
    1098:	02d6b084 	addi.d	$r4,$r4,1452(0x5ac)
    109c:	54037800 	bl	888(0x378) # 1414 <puts>
}
    10a0:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    10a4:	28c08077 	ld.d	$r23,$r3,32(0x20)
    10a8:	28c06078 	ld.d	$r24,$r3,24(0x18)
	TEST_END(__func__);
    10ac:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b0:	02d45084 	addi.d	$r4,$r4,1300(0x514)
}
    10b4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
	TEST_END(__func__);
    10b8:	50035c00 	b	860(0x35c) # 1414 <puts>
		printf("gettimeofday success.\n");
    10bc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c0:	02d45084 	addi.d	$r4,$r4,1300(0x514)
    10c4:	54038800 	bl	904(0x388) # 144c <printf>
		printf("start:%d, end:%d\n", test_ret1, test_ret2);
    10c8:	00150305 	move	$r5,$r24
    10cc:	001502e6 	move	$r6,$r23
    10d0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d4:	02d46084 	addi.d	$r4,$r4,1304(0x518)
    10d8:	54037400 	bl	884(0x374) # 144c <printf>
                printf("interval: %d\n", test_ret2 - test_ret1);
    10dc:	001162e5 	sub.w	$r5,$r23,$r24
    10e0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e4:	02d48084 	addi.d	$r4,$r4,1312(0x520)
    10e8:	54036400 	bl	868(0x364) # 144c <printf>
    10ec:	53ff9fff 	b	-100(0xfffff9c) # 1088 <test_gettimeofday+0x80>

00000000000010f0 <main>:

int main(void) {
    10f0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10f4:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_gettimeofday();
    10f8:	57ff13ff 	bl	-240(0xfffff10) # 1008 <test_gettimeofday>
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
    1124:	54118000 	bl	4480(0x1180) # 22a4 <exit>
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
    12fc:	540f3400 	bl	3892(0xf34) # 2230 <write>
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
    13d4:	540e5000 	bl	3664(0xe50) # 2224 <read>
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
    1400:	540e3000 	bl	3632(0xe30) # 2230 <write>
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
    1424:	5406b800 	bl	1720(0x6b8) # 1adc <strlen>
    1428:	00150086 	move	$r6,$r4
    142c:	001502e5 	move	$r5,$r23
    1430:	02800404 	addi.w	$r4,$r0,1(0x1)
    1434:	540dfc00 	bl	3580(0xdfc) # 2230 <write>
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
    14e4:	540d4c00 	bl	3404(0xd4c) # 2230 <write>
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
    1594:	540c9c00 	bl	3228(0xc9c) # 2230 <write>
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
    16b4:	540b7c00 	bl	2940(0xb7c) # 2230 <write>
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
    16d0:	540b6000 	bl	2912(0xb60) # 2230 <write>
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
    16ec:	540b4400 	bl	2884(0xb44) # 2230 <write>
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
    1710:	5405b400 	bl	1460(0x5b4) # 1cc4 <strnlen>
    1714:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1718:	001502e5 	move	$r5,$r23
    171c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1720:	540b1000 	bl	2832(0xb10) # 2230 <write>
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
    1744:	540aec00 	bl	2796(0xaec) # 2230 <write>
    1748:	00150378 	move	$r24,$r27
    174c:	53fda3ff 	b	-608(0xffffda0) # 14ec <printf+0xa0>
                a = "(null)";
    1750:	1c000037 	pcaddu12i	$r23,1(0x1)
    1754:	02fba2f7 	addi.d	$r23,$r23,-280(0xee8)
    1758:	53ffb3ff 	b	-80(0xfffffb0) # 1708 <printf+0x2bc>

000000000000175c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    175c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1760:	5800108c 	beq	$r4,$r12,16(0x10) # 1770 <isspace+0x14>
    1764:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1768:	02401484 	sltui	$r4,$r4,5(0x5)
    176c:	4c000020 	jirl	$r0,$r1,0
    1770:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1774:	4c000020 	jirl	$r0,$r1,0

0000000000001778 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1778:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    177c:	02402884 	sltui	$r4,$r4,10(0xa)
    1780:	4c000020 	jirl	$r0,$r1,0

0000000000001784 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1784:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1788:	0280100f 	addi.w	$r15,$r0,4(0x4)
    178c:	2800008d 	ld.b	$r13,$r4,0
    1790:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1794:	580061ae 	beq	$r13,$r14,96(0x60) # 17f4 <atoi+0x70>
    1798:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17f4 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    179c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17a0:	580065ac 	beq	$r13,$r12,100(0x64) # 1804 <atoi+0x80>
    17a4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17a8:	58007dac 	beq	$r13,$r12,124(0x7c) # 1824 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17ac:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17b0:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17b4:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17b8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17bc:	680061cf 	bltu	$r14,$r15,96(0x60) # 181c <atoi+0x98>
    int n = 0, neg = 0;
    17c0:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17c4:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17c8:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17cc:	001c126f 	mul.w	$r15,$r19,$r4
    17d0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17d4:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17d8:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17dc:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17e0:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17e4:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17e8:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17cc <atoi+0x48>
    return neg ? n : -n;
    17ec:	40001280 	beqz	$r20,16(0x10) # 17fc <atoi+0x78>
}
    17f0:	4c000020 	jirl	$r0,$r1,0
        s++;
    17f4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17f8:	53ff97ff 	b	-108(0xfffff94) # 178c <atoi+0x8>
    17fc:	00113e04 	sub.w	$r4,$r16,$r15
    1800:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1804:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1808:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    180c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1810:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1814:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1818:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17c0 <atoi+0x3c>
    181c:	00150004 	move	$r4,$r0
}
    1820:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1824:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1828:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    182c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1830:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1834:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 181c <atoi+0x98>
        neg = 1;
    1838:	02800414 	addi.w	$r20,$r0,1(0x1)
    183c:	53ff87ff 	b	-124(0xfffff84) # 17c0 <atoi+0x3c>

0000000000001840 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1840:	400198c0 	beqz	$r6,408(0x198) # 19d8 <memset+0x198>
    1844:	0011900c 	sub.d	$r12,$r0,$r4
    1848:	03401d8c 	andi	$r12,$r12,0x7
    184c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1850:	02402dae 	sltui	$r14,$r13,11(0xb)
    1854:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1858:	0013b9ad 	masknez	$r13,$r13,$r14
    185c:	001339ee 	maskeqz	$r14,$r15,$r14
    1860:	001539ad 	or	$r13,$r13,$r14
    1864:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1868:	00005ca5 	ext.w.b	$r5,$r5
    186c:	680191ed 	bltu	$r15,$r13,400(0x190) # 19fc <memset+0x1bc>
    1870:	40018180 	beqz	$r12,384(0x180) # 19f0 <memset+0x1b0>
    1874:	29000085 	st.b	$r5,$r4,0
    1878:	0280040d 	addi.w	$r13,$r0,1(0x1)
    187c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1880:	5801698d 	beq	$r12,$r13,360(0x168) # 19e8 <memset+0x1a8>
    1884:	29000485 	st.b	$r5,$r4,1(0x1)
    1888:	0280080d 	addi.w	$r13,$r0,2(0x2)
    188c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1890:	5801798d 	beq	$r12,$r13,376(0x178) # 1a08 <memset+0x1c8>
    1894:	29000885 	st.b	$r5,$r4,2(0x2)
    1898:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    189c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18a0:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19dc <memset+0x19c>
    18a4:	29000c85 	st.b	$r5,$r4,3(0x3)
    18a8:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18ac:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18b0:	5801618d 	beq	$r12,$r13,352(0x160) # 1a10 <memset+0x1d0>
    18b4:	29001085 	st.b	$r5,$r4,4(0x4)
    18b8:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18bc:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18c0:	5801598d 	beq	$r12,$r13,344(0x158) # 1a18 <memset+0x1d8>
    18c4:	29001485 	st.b	$r5,$r4,5(0x5)
    18c8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18cc:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18d0:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a20 <memset+0x1e0>
    18d4:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18d8:	29001885 	st.b	$r5,$r4,6(0x6)
    18dc:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18e0:	0015000d 	move	$r13,$r0
    18e4:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18e8:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18ec:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18f0:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18f4:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18f8:	0011b0d0 	sub.d	$r16,$r6,$r12
    18fc:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1900:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1904:	0010b08c 	add.d	$r12,$r4,$r12
    1908:	00450e0f 	srli.d	$r15,$r16,0x3
    190c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1910:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1914:	2700018d 	stptr.d	$r13,$r12,0
    1918:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    191c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1914 <memset+0xd4>
    1920:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1924:	0014be0f 	and	$r15,$r16,$r15
    1928:	004081ed 	slli.w	$r13,$r15,0x0
    192c:	0010bdcc 	add.d	$r12,$r14,$r15
    1930:	001045ad 	add.w	$r13,$r13,$r17
    1934:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19e4 <memset+0x1a4>
    1938:	29000185 	st.b	$r5,$r12,0
    193c:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1940:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19d8 <memset+0x198>
    1944:	29000585 	st.b	$r5,$r12,1(0x1)
    1948:	028009ae 	addi.w	$r14,$r13,2(0x2)
    194c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19d8 <memset+0x198>
    1950:	29000985 	st.b	$r5,$r12,2(0x2)
    1954:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1958:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19d8 <memset+0x198>
    195c:	29000d85 	st.b	$r5,$r12,3(0x3)
    1960:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1964:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19d8 <memset+0x198>
    1968:	29001185 	st.b	$r5,$r12,4(0x4)
    196c:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1970:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19d8 <memset+0x198>
    1974:	29001585 	st.b	$r5,$r12,5(0x5)
    1978:	028019ae 	addi.w	$r14,$r13,6(0x6)
    197c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19d8 <memset+0x198>
    1980:	29001985 	st.b	$r5,$r12,6(0x6)
    1984:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1988:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19d8 <memset+0x198>
    198c:	29001d85 	st.b	$r5,$r12,7(0x7)
    1990:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1994:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19d8 <memset+0x198>
    1998:	29002185 	st.b	$r5,$r12,8(0x8)
    199c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19a0:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19d8 <memset+0x198>
    19a4:	29002585 	st.b	$r5,$r12,9(0x9)
    19a8:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19ac:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19d8 <memset+0x198>
    19b0:	29002985 	st.b	$r5,$r12,10(0xa)
    19b4:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19b8:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19d8 <memset+0x198>
    19bc:	29002d85 	st.b	$r5,$r12,11(0xb)
    19c0:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19c4:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19d8 <memset+0x198>
    19c8:	29003185 	st.b	$r5,$r12,12(0xc)
    19cc:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19d0:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19d8 <memset+0x198>
    19d4:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19d8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19dc:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19e0:	53ff03ff 	b	-256(0xfffff00) # 18e0 <memset+0xa0>
    19e4:	4c000020 	jirl	$r0,$r1,0
    19e8:	02800411 	addi.w	$r17,$r0,1(0x1)
    19ec:	53fef7ff 	b	-268(0xffffef4) # 18e0 <memset+0xa0>
    19f0:	0015008e 	move	$r14,$r4
    19f4:	00150011 	move	$r17,$r0
    19f8:	53feebff 	b	-280(0xffffee8) # 18e0 <memset+0xa0>
    19fc:	0015008c 	move	$r12,$r4
    1a00:	0015000d 	move	$r13,$r0
    1a04:	53ff37ff 	b	-204(0xfffff34) # 1938 <memset+0xf8>
    1a08:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a0c:	53fed7ff 	b	-300(0xffffed4) # 18e0 <memset+0xa0>
    1a10:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a14:	53fecfff 	b	-308(0xffffecc) # 18e0 <memset+0xa0>
    1a18:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a1c:	53fec7ff 	b	-316(0xffffec4) # 18e0 <memset+0xa0>
    1a20:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a24:	53febfff 	b	-324(0xffffebc) # 18e0 <memset+0xa0>

0000000000001a28 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a28:	2800008c 	ld.b	$r12,$r4,0
    1a2c:	280000ae 	ld.b	$r14,$r5,0
    1a30:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a64 <strcmp+0x3c>
    1a34:	40003980 	beqz	$r12,56(0x38) # 1a6c <strcmp+0x44>
    1a38:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a3c:	50000800 	b	8(0x8) # 1a44 <strcmp+0x1c>
    1a40:	400019a0 	beqz	$r13,24(0x18) # 1a58 <strcmp+0x30>
    1a44:	3800308d 	ldx.b	$r13,$r4,$r12
    1a48:	380030ae 	ldx.b	$r14,$r5,$r12
    1a4c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a50:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a40 <strcmp+0x18>
    1a54:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a58:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a5c:	001111a4 	sub.w	$r4,$r13,$r4
    1a60:	4c000020 	jirl	$r0,$r1,0
    1a64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a68:	53fff3ff 	b	-16(0xffffff0) # 1a58 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a6c:	0015000d 	move	$r13,$r0
    1a70:	53ffebff 	b	-24(0xfffffe8) # 1a58 <strcmp+0x30>

0000000000001a74 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a74:	400054c0 	beqz	$r6,84(0x54) # 1ac8 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a78:	2a00008d 	ld.bu	$r13,$r4,0
    1a7c:	2a0000ae 	ld.bu	$r14,$r5,0
    1a80:	40003da0 	beqz	$r13,60(0x3c) # 1abc <strncmp+0x48>
    1a84:	40003dc0 	beqz	$r14,60(0x3c) # 1ac0 <strncmp+0x4c>
    if (!n--)
    1a88:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a8c:	400034c0 	beqz	$r6,52(0x34) # 1ac0 <strncmp+0x4c>
    1a90:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a94:	580019ae 	beq	$r13,$r14,24(0x18) # 1aac <strncmp+0x38>
    1a98:	50002800 	b	40(0x28) # 1ac0 <strncmp+0x4c>
    1a9c:	400035c0 	beqz	$r14,52(0x34) # 1ad0 <strncmp+0x5c>
    1aa0:	580020cc 	beq	$r6,$r12,32(0x20) # 1ac0 <strncmp+0x4c>
    1aa4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1aa8:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ad0 <strncmp+0x5c>
    1aac:	3820308d 	ldx.bu	$r13,$r4,$r12
    1ab0:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ab4:	001501af 	move	$r15,$r13
    1ab8:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a9c <strncmp+0x28>
    1abc:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ac0:	001139a4 	sub.w	$r4,$r13,$r14
    1ac4:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ac8:	00150004 	move	$r4,$r0
}
    1acc:	4c000020 	jirl	$r0,$r1,0
    1ad0:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ad4:	001139a4 	sub.w	$r4,$r13,$r14
    1ad8:	4c000020 	jirl	$r0,$r1,0

0000000000001adc <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1adc:	03401c8c 	andi	$r12,$r4,0x7
    1ae0:	4000b180 	beqz	$r12,176(0xb0) # 1b90 <strlen+0xb4>
        if (!*s)
    1ae4:	2800008c 	ld.b	$r12,$r4,0
    1ae8:	4000b180 	beqz	$r12,176(0xb0) # 1b98 <strlen+0xbc>
    1aec:	0015008c 	move	$r12,$r4
    1af0:	50000c00 	b	12(0xc) # 1afc <strlen+0x20>
    1af4:	2800018d 	ld.b	$r13,$r12,0
    1af8:	400091a0 	beqz	$r13,144(0x90) # 1b88 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1afc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b00:	03401d8d 	andi	$r13,$r12,0x7
    1b04:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1af4 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b08:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b0c:	2600018f 	ldptr.d	$r15,$r12,0
    1b10:	03bbfdad 	ori	$r13,$r13,0xeff
    1b14:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b18:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b1c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b20:	038201ce 	ori	$r14,$r14,0x80
    1b24:	0010b5ed 	add.d	$r13,$r15,$r13
    1b28:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b2c:	0016bdad 	andn	$r13,$r13,$r15
    1b30:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b34:	0014b9ae 	and	$r14,$r13,$r14
    1b38:	440049c0 	bnez	$r14,72(0x48) # 1b80 <strlen+0xa4>
    1b3c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b40:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b44:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b48:	2600018e 	ldptr.d	$r14,$r12,0
    1b4c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b50:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b54:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b58:	0382020f 	ori	$r15,$r16,0x80
    1b5c:	0010b5cd 	add.d	$r13,$r14,$r13
    1b60:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b64:	0016b9ad 	andn	$r13,$r13,$r14
    1b68:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b6c:	0014bdad 	and	$r13,$r13,$r15
    1b70:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b44 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b74:	2800018d 	ld.b	$r13,$r12,0
    1b78:	400011a0 	beqz	$r13,16(0x10) # 1b88 <strlen+0xac>
    1b7c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b80:	2800018d 	ld.b	$r13,$r12,0
    1b84:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b7c <strlen+0xa0>
        ;
    return s - a;
    1b88:	00119184 	sub.d	$r4,$r12,$r4
}
    1b8c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b90:	0015008c 	move	$r12,$r4
    1b94:	53ff77ff 	b	-140(0xfffff74) # 1b08 <strlen+0x2c>
        if (!*s)
    1b98:	00150004 	move	$r4,$r0
            return s - a;
    1b9c:	4c000020 	jirl	$r0,$r1,0

0000000000001ba0 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ba0:	03401c8c 	andi	$r12,$r4,0x7
    1ba4:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1ba8:	44002180 	bnez	$r12,32(0x20) # 1bc8 <memchr+0x28>
    1bac:	50002c00 	b	44(0x2c) # 1bd8 <memchr+0x38>
    1bb0:	2a00008c 	ld.bu	$r12,$r4,0
    1bb4:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cac <memchr+0x10c>
    1bb8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bbc:	03401c8c 	andi	$r12,$r4,0x7
    1bc0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bc4:	40001580 	beqz	$r12,20(0x14) # 1bd8 <memchr+0x38>
    1bc8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bb0 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bcc:	0015000d 	move	$r13,$r0
}
    1bd0:	001501a4 	move	$r4,$r13
    1bd4:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bd8:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bdc:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bd0 <memchr+0x30>
    1be0:	2a00008c 	ld.bu	$r12,$r4,0
    1be4:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cac <memchr+0x10c>
        size_t k = ONES * c;
    1be8:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bec:	0384058c 	ori	$r12,$r12,0x101
    1bf0:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bf4:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bf8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bfc:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c00:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cbc <memchr+0x11c>
    1c04:	2600008d 	ldptr.d	$r13,$r4,0
    1c08:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c0c:	038201ce 	ori	$r14,$r14,0x80
    1c10:	0015b60d 	xor	$r13,$r16,$r13
    1c14:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c18:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c1c:	0016b58c 	andn	$r12,$r12,$r13
    1c20:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c24:	0014b98c 	and	$r12,$r12,$r14
    1c28:	44009580 	bnez	$r12,148(0x94) # 1cbc <memchr+0x11c>
    1c2c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c30:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c34:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c38:	50002000 	b	32(0x20) # 1c58 <memchr+0xb8>
    1c3c:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c40:	0015b20c 	xor	$r12,$r16,$r12
    1c44:	0010b98e 	add.d	$r14,$r12,$r14
    1c48:	0016b1cc 	andn	$r12,$r14,$r12
    1c4c:	0014bd8c 	and	$r12,$r12,$r15
    1c50:	44006580 	bnez	$r12,100(0x64) # 1cb4 <memchr+0x114>
    1c54:	001501a4 	move	$r4,$r13
    1c58:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c5c:	0382022f 	ori	$r15,$r17,0x80
    1c60:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c64:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c68:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c6c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c70:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c74:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c78:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c3c <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c7c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bcc <memchr+0x2c>
    1c80:	2a0001ac 	ld.bu	$r12,$r13,0
    1c84:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bd0 <memchr+0x30>
    1c88:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c8c:	001099a6 	add.d	$r6,$r13,$r6
    1c90:	50001000 	b	16(0x10) # 1ca0 <memchr+0x100>
    1c94:	2a00018e 	ld.bu	$r14,$r12,0
    1c98:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c9c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bd0 <memchr+0x30>
    1ca0:	0015018d 	move	$r13,$r12
    1ca4:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c94 <memchr+0xf4>
    1ca8:	53ff27ff 	b	-220(0xfffff24) # 1bcc <memchr+0x2c>
    1cac:	0015008d 	move	$r13,$r4
    1cb0:	53ffd3ff 	b	-48(0xfffffd0) # 1c80 <memchr+0xe0>
    1cb4:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cb8:	53ffcfff 	b	-52(0xfffffcc) # 1c84 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cbc:	0015008d 	move	$r13,$r4
    1cc0:	53ffcbff 	b	-56(0xfffffc8) # 1c88 <memchr+0xe8>

0000000000001cc4 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cc4:	03401c8c 	andi	$r12,$r4,0x7
    1cc8:	40011980 	beqz	$r12,280(0x118) # 1de0 <strnlen+0x11c>
    1ccc:	4000f4a0 	beqz	$r5,244(0xf4) # 1dc0 <strnlen+0xfc>
    1cd0:	2a00008c 	ld.bu	$r12,$r4,0
    1cd4:	4000f580 	beqz	$r12,244(0xf4) # 1dc8 <strnlen+0x104>
    1cd8:	001500ac 	move	$r12,$r5
    1cdc:	0015008d 	move	$r13,$r4
    1ce0:	50001000 	b	16(0x10) # 1cf0 <strnlen+0x2c>
    1ce4:	4000dd80 	beqz	$r12,220(0xdc) # 1dc0 <strnlen+0xfc>
    1ce8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cec:	4000e5c0 	beqz	$r14,228(0xe4) # 1dd0 <strnlen+0x10c>
    1cf0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cf4:	03401dae 	andi	$r14,$r13,0x7
    1cf8:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cfc:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1ce4 <strnlen+0x20>
    if (n && *s != c)
    1d00:	4000c180 	beqz	$r12,192(0xc0) # 1dc0 <strnlen+0xfc>
    1d04:	2a0001ae 	ld.bu	$r14,$r13,0
    1d08:	4000c9c0 	beqz	$r14,200(0xc8) # 1dd0 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d0c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d10:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dec <strnlen+0x128>
    1d14:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d18:	260001b0 	ldptr.d	$r16,$r13,0
    1d1c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d20:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d24:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d28:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d2c:	038201ef 	ori	$r15,$r15,0x80
    1d30:	0010ba0e 	add.d	$r14,$r16,$r14
    1d34:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d38:	0016c1ce 	andn	$r14,$r14,$r16
    1d3c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d40:	0014bdcf 	and	$r15,$r14,$r15
    1d44:	4400a9e0 	bnez	$r15,168(0xa8) # 1dec <strnlen+0x128>
    1d48:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d4c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d50:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d54:	50001c00 	b	28(0x1c) # 1d70 <strnlen+0xac>
    1d58:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d5c:	0010b9ee 	add.d	$r14,$r15,$r14
    1d60:	0016bdce 	andn	$r14,$r14,$r15
    1d64:	0014c1ce 	and	$r14,$r14,$r16
    1d68:	440071c0 	bnez	$r14,112(0x70) # 1dd8 <strnlen+0x114>
    1d6c:	0015022d 	move	$r13,$r17
    1d70:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d74:	03820250 	ori	$r16,$r18,0x80
    1d78:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d7c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d80:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d84:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d88:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d8c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d90:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d58 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d94:	40002d80 	beqz	$r12,44(0x2c) # 1dc0 <strnlen+0xfc>
    1d98:	2a00022d 	ld.bu	$r13,$r17,0
    1d9c:	400021a0 	beqz	$r13,32(0x20) # 1dbc <strnlen+0xf8>
    1da0:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1da4:	0010b22c 	add.d	$r12,$r17,$r12
    1da8:	001501b1 	move	$r17,$r13
    1dac:	5800158d 	beq	$r12,$r13,20(0x14) # 1dc0 <strnlen+0xfc>
    1db0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1db4:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1db8:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1da8 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dbc:	00119225 	sub.d	$r5,$r17,$r4
}
    1dc0:	001500a4 	move	$r4,$r5
    1dc4:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dc8:	001500ac 	move	$r12,$r5
    1dcc:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dd0:	001501b1 	move	$r17,$r13
    1dd4:	53ffc7ff 	b	-60(0xfffffc4) # 1d98 <strnlen+0xd4>
    1dd8:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1ddc:	53ffc3ff 	b	-64(0xfffffc0) # 1d9c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1de0:	001500ac 	move	$r12,$r5
    1de4:	0015008d 	move	$r13,$r4
    1de8:	53ff1bff 	b	-232(0xfffff18) # 1d00 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dec:	001501b1 	move	$r17,$r13
    1df0:	53ffb3ff 	b	-80(0xfffffb0) # 1da0 <strnlen+0xdc>

0000000000001df4 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1df4:	0015948c 	xor	$r12,$r4,$r5
    1df8:	03401d8c 	andi	$r12,$r12,0x7
    1dfc:	4400ad80 	bnez	$r12,172(0xac) # 1ea8 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e00:	03401cac 	andi	$r12,$r5,0x7
    1e04:	40003180 	beqz	$r12,48(0x30) # 1e34 <strcpy+0x40>
            if (!(*d = *s))
    1e08:	280000ac 	ld.b	$r12,$r5,0
    1e0c:	2900008c 	st.b	$r12,$r4,0
    1e10:	44001580 	bnez	$r12,20(0x14) # 1e24 <strcpy+0x30>
    1e14:	5000bc00 	b	188(0xbc) # 1ed0 <strcpy+0xdc>
    1e18:	280000ac 	ld.b	$r12,$r5,0
    1e1c:	2900008c 	st.b	$r12,$r4,0
    1e20:	4000a980 	beqz	$r12,168(0xa8) # 1ec8 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e24:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e28:	03401cac 	andi	$r12,$r5,0x7
    1e2c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e30:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e18 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e34:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e38:	260000ae 	ldptr.d	$r14,$r5,0
    1e3c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e40:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e44:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e48:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e4c:	038201ad 	ori	$r13,$r13,0x80
    1e50:	0010b1cc 	add.d	$r12,$r14,$r12
    1e54:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e58:	0016b98c 	andn	$r12,$r12,$r14
    1e5c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e60:	0014b58c 	and	$r12,$r12,$r13
    1e64:	44004580 	bnez	$r12,68(0x44) # 1ea8 <strcpy+0xb4>
    1e68:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e6c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e70:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e74:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e78:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e7c:	260000ae 	ldptr.d	$r14,$r5,0
    1e80:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e84:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e88:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e8c:	038201ed 	ori	$r13,$r15,0x80
    1e90:	0010b1cc 	add.d	$r12,$r14,$r12
    1e94:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e98:	0016b98c 	andn	$r12,$r12,$r14
    1e9c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ea0:	0014b58c 	and	$r12,$r12,$r13
    1ea4:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e70 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ea8:	280000ac 	ld.b	$r12,$r5,0
    1eac:	2900008c 	st.b	$r12,$r4,0
    1eb0:	40001d80 	beqz	$r12,28(0x1c) # 1ecc <strcpy+0xd8>
    1eb4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1eb8:	280000ac 	ld.b	$r12,$r5,0
    1ebc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ec0:	2900008c 	st.b	$r12,$r4,0
    1ec4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1eb4 <strcpy+0xc0>
        ;
    return d;
}
    1ec8:	4c000020 	jirl	$r0,$r1,0
    1ecc:	4c000020 	jirl	$r0,$r1,0
    1ed0:	4c000020 	jirl	$r0,$r1,0

0000000000001ed4 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ed4:	0015948c 	xor	$r12,$r4,$r5
    1ed8:	03401d8c 	andi	$r12,$r12,0x7
    1edc:	4400ad80 	bnez	$r12,172(0xac) # 1f88 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ee0:	03401cac 	andi	$r12,$r5,0x7
    1ee4:	44010180 	bnez	$r12,256(0x100) # 1fe4 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ee8:	400100c0 	beqz	$r6,256(0x100) # 1fe8 <strncpy+0x114>
    1eec:	280000af 	ld.b	$r15,$r5,0
    1ef0:	400105e0 	beqz	$r15,260(0x104) # 1ff4 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ef4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ef8:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21d0 <strncpy+0x2fc>
    1efc:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f00:	260000ae 	ldptr.d	$r14,$r5,0
    1f04:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f08:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f0c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f10:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f14:	038201ad 	ori	$r13,$r13,0x80
    1f18:	0010b1cc 	add.d	$r12,$r14,$r12
    1f1c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f20:	0016b98c 	andn	$r12,$r12,$r14
    1f24:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f28:	0014b58c 	and	$r12,$r12,$r13
    1f2c:	4402a580 	bnez	$r12,676(0x2a4) # 21d0 <strncpy+0x2fc>
    1f30:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f34:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f38:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f3c:	50001c00 	b	28(0x1c) # 1f58 <strncpy+0x84>
    1f40:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f44:	0010b1cc 	add.d	$r12,$r14,$r12
    1f48:	0016b98c 	andn	$r12,$r12,$r14
    1f4c:	0014b58c 	and	$r12,$r12,$r13
    1f50:	44024580 	bnez	$r12,580(0x244) # 2194 <strncpy+0x2c0>
    1f54:	001501e5 	move	$r5,$r15
    1f58:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f5c:	0382020d 	ori	$r13,$r16,0x80
    1f60:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f64:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f68:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f6c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f70:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f74:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f78:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f7c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f80:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f40 <strncpy+0x6c>
    1f84:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f88:	400060c0 	beqz	$r6,96(0x60) # 1fe8 <strncpy+0x114>
    1f8c:	280000ac 	ld.b	$r12,$r5,0
    1f90:	0015008d 	move	$r13,$r4
    1f94:	2900008c 	st.b	$r12,$r4,0
    1f98:	44001580 	bnez	$r12,20(0x14) # 1fac <strncpy+0xd8>
    1f9c:	50005c00 	b	92(0x5c) # 1ff8 <strncpy+0x124>
    1fa0:	280000ac 	ld.b	$r12,$r5,0
    1fa4:	290001ac 	st.b	$r12,$r13,0
    1fa8:	40005180 	beqz	$r12,80(0x50) # 1ff8 <strncpy+0x124>
    1fac:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fb0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fb4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fb8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fa0 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fbc:	001501a4 	move	$r4,$r13
    1fc0:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fc4:	280000ac 	ld.b	$r12,$r5,0
    1fc8:	2900008c 	st.b	$r12,$r4,0
    1fcc:	40002980 	beqz	$r12,40(0x28) # 1ff4 <strncpy+0x120>
    1fd0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fd4:	03401cac 	andi	$r12,$r5,0x7
    1fd8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fdc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fe0:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ee8 <strncpy+0x14>
    1fe4:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fc4 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fe8:	0015008d 	move	$r13,$r4
}
    1fec:	001501a4 	move	$r4,$r13
    1ff0:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1ff4:	0015008d 	move	$r13,$r4
    1ff8:	0011b40c 	sub.d	$r12,$r0,$r13
    1ffc:	03401d8c 	andi	$r12,$r12,0x7
    2000:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2004:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2008:	02802c10 	addi.w	$r16,$r0,11(0xb)
    200c:	0013bdce 	masknez	$r14,$r14,$r15
    2010:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2014:	00133e0f 	maskeqz	$r15,$r16,$r15
    2018:	00153dce 	or	$r14,$r14,$r15
    201c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2020:	00131a31 	maskeqz	$r17,$r17,$r6
    2024:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2028:	001540d0 	or	$r16,$r6,$r16
    202c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21a4 <strncpy+0x2d0>
    2030:	40015980 	beqz	$r12,344(0x158) # 2188 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2034:	290001a0 	st.b	$r0,$r13,0
    2038:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    203c:	5801458f 	beq	$r12,$r15,324(0x144) # 2180 <strncpy+0x2ac>
    2040:	290005a0 	st.b	$r0,$r13,1(0x1)
    2044:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2048:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    204c:	5801658f 	beq	$r12,$r15,356(0x164) # 21b0 <strncpy+0x2dc>
    2050:	290009a0 	st.b	$r0,$r13,2(0x2)
    2054:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2058:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    205c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2178 <strncpy+0x2a4>
    2060:	29000da0 	st.b	$r0,$r13,3(0x3)
    2064:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2068:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    206c:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21b8 <strncpy+0x2e4>
    2070:	290011a0 	st.b	$r0,$r13,4(0x4)
    2074:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2078:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    207c:	5801458f 	beq	$r12,$r15,324(0x144) # 21c0 <strncpy+0x2ec>
    2080:	290015a0 	st.b	$r0,$r13,5(0x5)
    2084:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2088:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    208c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21c8 <strncpy+0x2f4>
    2090:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2094:	290019a0 	st.b	$r0,$r13,6(0x6)
    2098:	02801c12 	addi.w	$r18,$r0,7(0x7)
    209c:	0011b210 	sub.d	$r16,$r16,$r12
    20a0:	00450e11 	srli.d	$r17,$r16,0x3
    20a4:	0010b1ac 	add.d	$r12,$r13,$r12
    20a8:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20ac:	27000180 	stptr.d	$r0,$r12,0
    20b0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20b4:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20ac <strncpy+0x1d8>
    20b8:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20bc:	0014c611 	and	$r17,$r16,$r17
    20c0:	0040822f 	slli.w	$r15,$r17,0x0
    20c4:	001049ef 	add.w	$r15,$r15,$r18
    20c8:	0010c5cc 	add.d	$r12,$r14,$r17
    20cc:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fbc <strncpy+0xe8>
    20d0:	29000180 	st.b	$r0,$r12,0
    20d4:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20d8:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fbc <strncpy+0xe8>
    20dc:	29000580 	st.b	$r0,$r12,1(0x1)
    20e0:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20e4:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fbc <strncpy+0xe8>
    20e8:	29000980 	st.b	$r0,$r12,2(0x2)
    20ec:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20f0:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fbc <strncpy+0xe8>
    20f4:	29000d80 	st.b	$r0,$r12,3(0x3)
    20f8:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20fc:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fbc <strncpy+0xe8>
    2100:	29001180 	st.b	$r0,$r12,4(0x4)
    2104:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2108:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fbc <strncpy+0xe8>
    210c:	29001580 	st.b	$r0,$r12,5(0x5)
    2110:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2114:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fbc <strncpy+0xe8>
    2118:	29001980 	st.b	$r0,$r12,6(0x6)
    211c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2120:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fbc <strncpy+0xe8>
    2124:	29001d80 	st.b	$r0,$r12,7(0x7)
    2128:	028021ee 	addi.w	$r14,$r15,8(0x8)
    212c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fbc <strncpy+0xe8>
    2130:	29002180 	st.b	$r0,$r12,8(0x8)
    2134:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2138:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fbc <strncpy+0xe8>
    213c:	29002580 	st.b	$r0,$r12,9(0x9)
    2140:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2144:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fbc <strncpy+0xe8>
    2148:	29002980 	st.b	$r0,$r12,10(0xa)
    214c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2150:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fbc <strncpy+0xe8>
    2154:	29002d80 	st.b	$r0,$r12,11(0xb)
    2158:	028031ee 	addi.w	$r14,$r15,12(0xc)
    215c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fbc <strncpy+0xe8>
    2160:	29003180 	st.b	$r0,$r12,12(0xc)
    2164:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2168:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fbc <strncpy+0xe8>
    216c:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2170:	001501a4 	move	$r4,$r13
    2174:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2178:	02800c12 	addi.w	$r18,$r0,3(0x3)
    217c:	53ff23ff 	b	-224(0xfffff20) # 209c <strncpy+0x1c8>
    2180:	02800412 	addi.w	$r18,$r0,1(0x1)
    2184:	53ff1bff 	b	-232(0xfffff18) # 209c <strncpy+0x1c8>
    2188:	001501ae 	move	$r14,$r13
    218c:	00150012 	move	$r18,$r0
    2190:	53ff0fff 	b	-244(0xfffff0c) # 209c <strncpy+0x1c8>
    2194:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2198:	0015008d 	move	$r13,$r4
    219c:	001501e5 	move	$r5,$r15
    21a0:	53fdf7ff 	b	-524(0xffffdf4) # 1f94 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21a4:	001501ac 	move	$r12,$r13
    21a8:	0015000f 	move	$r15,$r0
    21ac:	53ff27ff 	b	-220(0xfffff24) # 20d0 <strncpy+0x1fc>
    21b0:	02800812 	addi.w	$r18,$r0,2(0x2)
    21b4:	53feebff 	b	-280(0xffffee8) # 209c <strncpy+0x1c8>
    21b8:	02801012 	addi.w	$r18,$r0,4(0x4)
    21bc:	53fee3ff 	b	-288(0xffffee0) # 209c <strncpy+0x1c8>
    21c0:	02801412 	addi.w	$r18,$r0,5(0x5)
    21c4:	53fedbff 	b	-296(0xffffed8) # 209c <strncpy+0x1c8>
    21c8:	02801812 	addi.w	$r18,$r0,6(0x6)
    21cc:	53fed3ff 	b	-304(0xffffed0) # 209c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21d0:	2900008f 	st.b	$r15,$r4,0
    21d4:	0015008d 	move	$r13,$r4
    21d8:	53fdd7ff 	b	-556(0xffffdd4) # 1fac <strncpy+0xd8>

00000000000021dc <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21dc:	0015008c 	move	$r12,$r4
    21e0:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21e4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21e8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21ec:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21f0:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21f4:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21f8:	00408084 	slli.w	$r4,$r4,0x0
}
    21fc:	4c000020 	jirl	$r0,$r1,0

0000000000002200 <openat>:
    register long a7 __asm__("a7") = n;
    2200:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2204:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2208:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    220c:	00408084 	slli.w	$r4,$r4,0x0
}
    2210:	4c000020 	jirl	$r0,$r1,0

0000000000002214 <close>:
    register long a7 __asm__("a7") = n;
    2214:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2218:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    221c:	00408084 	slli.w	$r4,$r4,0x0
}
    2220:	4c000020 	jirl	$r0,$r1,0

0000000000002224 <read>:
    register long a7 __asm__("a7") = n;
    2224:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2228:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    222c:	4c000020 	jirl	$r0,$r1,0

0000000000002230 <write>:
    register long a7 __asm__("a7") = n;
    2230:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2234:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2238:	4c000020 	jirl	$r0,$r1,0

000000000000223c <getpid>:
    register long a7 __asm__("a7") = n;
    223c:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2240:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2244:	00408084 	slli.w	$r4,$r4,0x0
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <getppid>:
    register long a7 __asm__("a7") = n;
    224c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2250:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2254:	00408084 	slli.w	$r4,$r4,0x0
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <sched_yield>:
    register long a7 __asm__("a7") = n;
    225c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2260:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2264:	00408084 	slli.w	$r4,$r4,0x0
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <fork>:
    register long a7 __asm__("a7") = n;
    226c:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2270:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2274:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2278:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    227c:	00408084 	slli.w	$r4,$r4,0x0
}
    2280:	4c000020 	jirl	$r0,$r1,0

0000000000002284 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2284:	001500c5 	move	$r5,$r6
    if (stack)
    2288:	400008c0 	beqz	$r6,8(0x8) # 2290 <clone+0xc>
	stack += stack_size;
    228c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2290:	00408106 	slli.w	$r6,$r8,0x0
    2294:	00150009 	move	$r9,$r0
    2298:	00150008 	move	$r8,$r0
    229c:	00150007 	move	$r7,$r0
    22a0:	5002c800 	b	712(0x2c8) # 2568 <__clone>

00000000000022a4 <exit>:
    register long a7 __asm__("a7") = n;
    22a4:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22a8:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22ac:	4c000020 	jirl	$r0,$r1,0

00000000000022b0 <waitpid>:
    register long a7 __asm__("a7") = n;
    22b0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22b4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22b8:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22bc:	00408084 	slli.w	$r4,$r4,0x0
}
    22c0:	4c000020 	jirl	$r0,$r1,0

00000000000022c4 <exec>:
    register long a7 __asm__("a7") = n;
    22c4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22c8:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22cc:	00408084 	slli.w	$r4,$r4,0x0
}
    22d0:	4c000020 	jirl	$r0,$r1,0

00000000000022d4 <execve>:
    register long a7 __asm__("a7") = n;
    22d4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22d8:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22dc:	00408084 	slli.w	$r4,$r4,0x0
}
    22e0:	4c000020 	jirl	$r0,$r1,0

00000000000022e4 <times>:
    register long a7 __asm__("a7") = n;
    22e4:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22e8:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22ec:	00408084 	slli.w	$r4,$r4,0x0
}
    22f0:	4c000020 	jirl	$r0,$r1,0

00000000000022f4 <get_time>:

int64 get_time()
{
    22f4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22f8:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22fc:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2300:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2304:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2308:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    230c:	44003c80 	bnez	$r4,60(0x3c) # 2348 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2310:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2314:	039f3c8c 	ori	$r12,$r4,0x7cf
    2318:	28c02064 	ld.d	$r4,$r3,8(0x8)
    231c:	2a40006d 	ld.hu	$r13,$r3,0
    2320:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2324:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2328:	00450c84 	srli.d	$r4,$r4,0x3
    232c:	001eb084 	mulh.du	$r4,$r4,$r12
    2330:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2334:	001db1ac 	mul.d	$r12,$r13,$r12
    2338:	00451084 	srli.d	$r4,$r4,0x4
    233c:	00109184 	add.d	$r4,$r12,$r4
}
    2340:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2344:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2348:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    234c:	53fff7ff 	b	-12(0xffffff4) # 2340 <get_time+0x4c>

0000000000002350 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2350:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2354:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2358:	00408084 	slli.w	$r4,$r4,0x0
}
    235c:	4c000020 	jirl	$r0,$r1,0

0000000000002360 <time>:
    register long a7 __asm__("a7") = n;
    2360:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2364:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2368:	00408084 	slli.w	$r4,$r4,0x0
}
    236c:	4c000020 	jirl	$r0,$r1,0

0000000000002370 <sleep>:

int sleep(unsigned long long time)
{
    2370:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2374:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2378:	00150064 	move	$r4,$r3
    237c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2380:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2384:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2388:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    238c:	44001080 	bnez	$r4,16(0x10) # 239c <sleep+0x2c>
    return 0;
    2390:	00150004 	move	$r4,$r0
}
    2394:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2398:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    239c:	24000064 	ldptr.w	$r4,$r3,0
}
    23a0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23a4:	4c000020 	jirl	$r0,$r1,0

00000000000023a8 <set_priority>:
    register long a7 __asm__("a7") = n;
    23a8:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23ac:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23b0:	00408084 	slli.w	$r4,$r4,0x0
}
    23b4:	4c000020 	jirl	$r0,$r1,0

00000000000023b8 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23b8:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23bc:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23c0:	4c000020 	jirl	$r0,$r1,0

00000000000023c4 <munmap>:
    register long a7 __asm__("a7") = n;
    23c4:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c8:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23cc:	00408084 	slli.w	$r4,$r4,0x0
}
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <wait>:

int wait(int *code)
{
    23d4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23d8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23dc:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23e0:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23e4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23e8:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <spawn>:
    register long a7 __asm__("a7") = n;
    23f4:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23f8:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <mailread>:
    register long a7 __asm__("a7") = n;
    2404:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2408:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    240c:	00408084 	slli.w	$r4,$r4,0x0
}
    2410:	4c000020 	jirl	$r0,$r1,0

0000000000002414 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2414:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2418:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <fstat>:
    register long a7 __asm__("a7") = n;
    2424:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2428:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    242c:	00408084 	slli.w	$r4,$r4,0x0
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2434:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2438:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    243c:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2440:	00408084 	slli.w	$r4,$r4,0x0
}
    2444:	4c000020 	jirl	$r0,$r1,0

0000000000002448 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2448:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    244c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2450:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2454:	00408084 	slli.w	$r4,$r4,0x0
}
    2458:	4c000020 	jirl	$r0,$r1,0

000000000000245c <link>:

int link(char *old_path, char *new_path)
{
    245c:	0015008c 	move	$r12,$r4
    2460:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2464:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2468:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    246c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2470:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2474:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2478:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    247c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2480:	4c000020 	jirl	$r0,$r1,0

0000000000002484 <unlink>:

int unlink(char *path)
{
    2484:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2488:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    248c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2490:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2494:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2498:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    249c:	4c000020 	jirl	$r0,$r1,0

00000000000024a0 <uname>:
    register long a7 __asm__("a7") = n;
    24a0:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24a4:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <brk>:
    register long a7 __asm__("a7") = n;
    24b0:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24b4:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24b8:	00408084 	slli.w	$r4,$r4,0x0
}
    24bc:	4c000020 	jirl	$r0,$r1,0

00000000000024c0 <getcwd>:
    register long a7 __asm__("a7") = n;
    24c0:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24c4:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <chdir>:
    register long a7 __asm__("a7") = n;
    24cc:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24d0:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24d4:	00408084 	slli.w	$r4,$r4,0x0
}
    24d8:	4c000020 	jirl	$r0,$r1,0

00000000000024dc <mkdir>:

int mkdir(const char *path, mode_t mode){
    24dc:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24e0:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24e4:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24e8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24ec:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f0:	002b0000 	syscall	0x0
    24f4:	00408084 	slli.w	$r4,$r4,0x0
}
    24f8:	4c000020 	jirl	$r0,$r1,0

00000000000024fc <getdents>:
    register long a7 __asm__("a7") = n;
    24fc:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2500:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2504:	00408084 	slli.w	$r4,$r4,0x0
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <pipe>:
    register long a7 __asm__("a7") = n;
    250c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2510:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2514:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2518:	00408084 	slli.w	$r4,$r4,0x0
}
    251c:	4c000020 	jirl	$r0,$r1,0

0000000000002520 <dup>:
    register long a7 __asm__("a7") = n;
    2520:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2524:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2528:	00408084 	slli.w	$r4,$r4,0x0
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <dup2>:
    register long a7 __asm__("a7") = n;
    2530:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2534:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2538:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    253c:	00408084 	slli.w	$r4,$r4,0x0
}
    2540:	4c000020 	jirl	$r0,$r1,0

0000000000002544 <mount>:
    register long a7 __asm__("a7") = n;
    2544:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2548:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    254c:	00408084 	slli.w	$r4,$r4,0x0
}
    2550:	4c000020 	jirl	$r0,$r1,0

0000000000002554 <umount>:
    register long a7 __asm__("a7") = n;
    2554:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2558:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    255c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2560:	00408084 	slli.w	$r4,$r4,0x0
}
    2564:	4c000020 	jirl	$r0,$r1,0

0000000000002568 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2568:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    256c:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2570:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2574:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2578:	00150106 	move	$r6,$r8
	move $a3, $a5
    257c:	00150127 	move	$r7,$r9
	move $a4, $a6
    2580:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2584:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2588:	002b0000 	syscall	0x0

	beqz $a0, 1f
    258c:	40000880 	beqz	$r4,8(0x8) # 2594 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2590:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2594:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2598:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    259c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25a0:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25a4:	002b0000 	syscall	0x0
