
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/unlink:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54010c00 	bl	268(0x10c) # 1110 <__start_main>

0000000000001008 <test_unlink>:
 * 测试失败，应有如下输出：
 * "  unlink error!"
 */

int test_unlink()
{
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d6f084 	addi.d	$r4,$r4,1468(0x5bc)
{
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    1018:	27000077 	stptr.d	$r23,$r3,0
    TEST_START(__func__);
    101c:	5403fc00 	bl	1020(0x3fc) # 1418 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d92084 	addi.d	$r4,$r4,1608(0x648)
    1028:	5403f000 	bl	1008(0x3f0) # 1418 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    1034:	5403e400 	bl	996(0x3e4) # 1418 <puts>

    char *fname = "./test_unlink";
    int fd, ret;

    fd = open(fname, O_CREATE | O_WRONLY);
    1038:	02810405 	addi.w	$r5,$r0,65(0x41)
    103c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1040:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    1044:	5411b800 	bl	4536(0x11b8) # 21fc <open>
    1048:	00150097 	move	$r23,$r4
    assert(fd > 0);
    104c:	64009804 	bge	$r0,$r4,152(0x98) # 10e4 <test_unlink+0xdc>
    close(fd);
    1050:	001502e4 	move	$r4,$r23
    1054:	5411e000 	bl	4576(0x11e0) # 2234 <close>

    // unlink test
    ret = unlink(fname);
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d66084 	addi.d	$r4,$r4,1432(0x598)
    1060:	54144400 	bl	5188(0x1444) # 24a4 <unlink>
    assert(ret == 0);
    1064:	44007080 	bnez	$r4,112(0x70) # 10d4 <test_unlink+0xcc>
    fd = open(fname, O_RDONLY);
    1068:	00150005 	move	$r5,$r0
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1074:	54118800 	bl	4488(0x1188) # 21fc <open>
    1078:	00150097 	move	$r23,$r4
    if(fd < 0){
    107c:	60004880 	blt	$r4,$r0,72(0x48) # 10c4 <test_unlink+0xbc>
        printf("  unlink success!\n");
    }else{
	printf("  unlink error!\n");
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d6e084 	addi.d	$r4,$r4,1464(0x5b8)
    1088:	5403c800 	bl	968(0x3c8) # 1450 <printf>
        close(fd);
    108c:	001502e4 	move	$r4,$r23
    1090:	5411a400 	bl	4516(0x11a4) # 2234 <close>
    }
    // It's Ok if you don't delete the inode and data blocks.

    TEST_END(__func__);
    1094:	1c000024 	pcaddu12i	$r4,1(0x1)
    1098:	02d6f084 	addi.d	$r4,$r4,1468(0x5bc)
    109c:	54037c00 	bl	892(0x37c) # 1418 <puts>
    10a0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a4:	02d72084 	addi.d	$r4,$r4,1480(0x5c8)
    10a8:	54037000 	bl	880(0x370) # 1418 <puts>
}
    10ac:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10b0:	26000077 	ldptr.d	$r23,$r3,0
    TEST_END(__func__);
    10b4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b8:	02d4b084 	addi.d	$r4,$r4,1324(0x52c)
}
    10bc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    TEST_END(__func__);
    10c0:	50035800 	b	856(0x358) # 1418 <puts>
        printf("  unlink success!\n");
    10c4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c8:	02d57084 	addi.d	$r4,$r4,1372(0x55c)
    10cc:	54038400 	bl	900(0x384) # 1450 <printf>
    10d0:	53ffc7ff 	b	-60(0xfffffc4) # 1094 <test_unlink+0x8c>
    assert(ret == 0);
    10d4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d8:	02d4b084 	addi.d	$r4,$r4,1324(0x52c)
    10dc:	54068400 	bl	1668(0x684) # 1760 <panic>
    10e0:	53ff8bff 	b	-120(0xfffff88) # 1068 <test_unlink+0x60>
    assert(fd > 0);
    10e4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e8:	02d47084 	addi.d	$r4,$r4,1308(0x51c)
    10ec:	54067400 	bl	1652(0x674) # 1760 <panic>
    10f0:	53ff63ff 	b	-160(0xfffff60) # 1050 <test_unlink+0x48>

00000000000010f4 <main>:

int main(void) {
    10f4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10f8:	29c02061 	st.d	$r1,$r3,8(0x8)
	test_unlink();
    10fc:	57ff0fff 	bl	-244(0xfffff0c) # 1008 <test_unlink>
	return 0;
}
    1100:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1104:	00150004 	move	$r4,$r0
    1108:	02c04063 	addi.d	$r3,$r3,16(0x10)
    110c:	4c000020 	jirl	$r0,$r1,0

0000000000001110 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1110:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1114:	24000084 	ldptr.w	$r4,$r4,0
{
    1118:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    111c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1120:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1124:	57ffd3ff 	bl	-48(0xfffffd0) # 10f4 <main>
    1128:	54119c00 	bl	4508(0x119c) # 22c4 <exit>
	return 0;
}
    112c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1130:	00150004 	move	$r4,$r0
    1134:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1138:	4c000020 	jirl	$r0,$r1,0

000000000000113c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    113c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1140:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1144:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1310 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1148:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    114c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1150:	02d4b18c 	addi.d	$r12,$r12,1324(0x52c)
    1154:	002195cf 	mod.wu	$r15,$r14,$r5
    1158:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1160 <printint.constprop.0+0x24>
    115c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1160:	002115cd 	div.wu	$r13,$r14,$r5
    1164:	5c0008a0 	bne	$r5,$r0,8(0x8) # 116c <printint.constprop.0+0x30>
    1168:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    116c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1170:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1174:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1178:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    117c:	680219c5 	bltu	$r14,$r5,536(0x218) # 1394 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1180:	002195af 	mod.wu	$r15,$r13,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0x50>
    1188:	002a0007 	break	0x7
    118c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1190:	002115ae 	div.wu	$r14,$r13,$r5
    1194:	5c0008a0 	bne	$r5,$r0,8(0x8) # 119c <printint.constprop.0+0x60>
    1198:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    119c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11a0:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11a4:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1364 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11a8:	002195cf 	mod.wu	$r15,$r14,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0x78>
    11b0:	002a0007 	break	0x7
    11b4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b8:	002115cd 	div.wu	$r13,$r14,$r5
    11bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c4 <printint.constprop.0+0x88>
    11c0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c8:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11cc:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1370 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11d0:	002195af 	mod.wu	$r15,$r13,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0xa0>
    11d8:	002a0007 	break	0x7
    11dc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e0:	002115ae 	div.wu	$r14,$r13,$r5
    11e4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ec <printint.constprop.0+0xb0>
    11e8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11ec:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f0:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11f4:	680189a5 	bltu	$r13,$r5,392(0x188) # 137c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11f8:	002195cf 	mod.wu	$r15,$r14,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0xc8>
    1200:	002a0007 	break	0x7
    1204:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1208:	002115cd 	div.wu	$r13,$r14,$r5
    120c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1214 <printint.constprop.0+0xd8>
    1210:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1214:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1218:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    121c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1388 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1220:	002195af 	mod.wu	$r15,$r13,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0xf0>
    1228:	002a0007 	break	0x7
    122c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1230:	002115ae 	div.wu	$r14,$r13,$r5
    1234:	5c0008a0 	bne	$r5,$r0,8(0x8) # 123c <printint.constprop.0+0x100>
    1238:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    123c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1240:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1244:	680115a5 	bltu	$r13,$r5,276(0x114) # 1358 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1248:	002195cf 	mod.wu	$r15,$r14,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0x118>
    1250:	002a0007 	break	0x7
    1254:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1258:	002115cd 	div.wu	$r13,$r14,$r5
    125c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1264 <printint.constprop.0+0x128>
    1260:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1264:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1268:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    126c:	680131c5 	bltu	$r14,$r5,304(0x130) # 139c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1270:	002195af 	mod.wu	$r15,$r13,$r5
    1274:	5c0008a0 	bne	$r5,$r0,8(0x8) # 127c <printint.constprop.0+0x140>
    1278:	002a0007 	break	0x7
    127c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1280:	002115ae 	div.wu	$r14,$r13,$r5
    1284:	5c0008a0 	bne	$r5,$r0,8(0x8) # 128c <printint.constprop.0+0x150>
    1288:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    128c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1290:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1294:	680115a5 	bltu	$r13,$r5,276(0x114) # 13a8 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1298:	002195cf 	mod.wu	$r15,$r14,$r5
    129c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a4 <printint.constprop.0+0x168>
    12a0:	002a0007 	break	0x7
    12a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12a8:	002115cd 	div.wu	$r13,$r14,$r5
    12ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b4 <printint.constprop.0+0x178>
    12b0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12b8:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12bc:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13b4 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12c0:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12c4:	3820358d 	ldx.bu	$r13,$r12,$r13
    12c8:	02801805 	addi.w	$r5,$r0,6(0x6)
    12cc:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12d0:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12d4:	64001880 	bge	$r4,$r0,24(0x18) # 12ec <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12d8:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12dc:	0010b1ad 	add.d	$r13,$r13,$r12
    12e0:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12e4:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12e8:	00150185 	move	$r5,$r12
    write(f, s, l);
    12ec:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12f0:	02804006 	addi.w	$r6,$r0,16(0x10)
    12f4:	001114c6 	sub.w	$r6,$r6,$r5
    12f8:	02800404 	addi.w	$r4,$r0,1(0x1)
    12fc:	00109585 	add.d	$r5,$r12,$r5
    1300:	540f5000 	bl	3920(0xf50) # 2250 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1304:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1308:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    130c:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1310:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1314:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1318:	02cd918c 	addi.d	$r12,$r12,868(0x364)
    131c:	002195cf 	mod.wu	$r15,$r14,$r5
    1320:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1328 <printint.constprop.0+0x1ec>
    1324:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1328:	002115cd 	div.wu	$r13,$r14,$r5
    132c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1334 <printint.constprop.0+0x1f8>
    1330:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1334:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1338:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    133c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1340:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1344:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1180 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1348:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    134c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1350:	02803805 	addi.w	$r5,$r0,14(0xe)
    1354:	53ff9bff 	b	-104(0xfffff98) # 12ec <printint.constprop.0+0x1b0>
    1358:	0280240c 	addi.w	$r12,$r0,9(0x9)
    135c:	02802805 	addi.w	$r5,$r0,10(0xa)
    1360:	53ff77ff 	b	-140(0xfffff74) # 12d4 <printint.constprop.0+0x198>
    1364:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1368:	02803805 	addi.w	$r5,$r0,14(0xe)
    136c:	53ff6bff 	b	-152(0xfffff68) # 12d4 <printint.constprop.0+0x198>
    1370:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1374:	02803405 	addi.w	$r5,$r0,13(0xd)
    1378:	53ff5fff 	b	-164(0xfffff5c) # 12d4 <printint.constprop.0+0x198>
    137c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1380:	02803005 	addi.w	$r5,$r0,12(0xc)
    1384:	53ff53ff 	b	-176(0xfffff50) # 12d4 <printint.constprop.0+0x198>
    1388:	0280280c 	addi.w	$r12,$r0,10(0xa)
    138c:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1390:	53ff47ff 	b	-188(0xfffff44) # 12d4 <printint.constprop.0+0x198>
    i = 15;
    1394:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1398:	53ff57ff 	b	-172(0xfffff54) # 12ec <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    139c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13a0:	02802405 	addi.w	$r5,$r0,9(0x9)
    13a4:	53ff33ff 	b	-208(0xfffff30) # 12d4 <printint.constprop.0+0x198>
    13a8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13ac:	02802005 	addi.w	$r5,$r0,8(0x8)
    13b0:	53ff27ff 	b	-220(0xfffff24) # 12d4 <printint.constprop.0+0x198>
    13b4:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13b8:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13bc:	53ff1bff 	b	-232(0xfffff18) # 12d4 <printint.constprop.0+0x198>

00000000000013c0 <getchar>:
{
    13c0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13c4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13c8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13cc:	00150004 	move	$r4,$r0
{
    13d0:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13d4:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13d8:	540e6c00 	bl	3692(0xe6c) # 2244 <read>
}
    13dc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13e0:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13e4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13e8:	4c000020 	jirl	$r0,$r1,0

00000000000013ec <putchar>:
{
    13ec:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13f0:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13f4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13f8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13fc:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1400:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1404:	540e4c00 	bl	3660(0xe4c) # 2250 <write>
}
    1408:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    140c:	00408084 	slli.w	$r4,$r4,0x0
}
    1410:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1414:	4c000020 	jirl	$r0,$r1,0

0000000000001418 <puts>:
{
    1418:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    141c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1420:	27000077 	stptr.d	$r23,$r3,0
    1424:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1428:	5406d400 	bl	1748(0x6d4) # 1afc <strlen>
    142c:	00150086 	move	$r6,$r4
    1430:	001502e5 	move	$r5,$r23
    1434:	02800404 	addi.w	$r4,$r0,1(0x1)
    1438:	540e1800 	bl	3608(0xe18) # 2250 <write>
}
    143c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1440:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1444:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1448:	02c04063 	addi.d	$r3,$r3,16(0x10)
    144c:	4c000020 	jirl	$r0,$r1,0

0000000000001450 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1450:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1454:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1458:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    145c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1460:	29c14079 	st.d	$r25,$r3,80(0x50)
    1464:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1468:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    146c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1470:	29c18077 	st.d	$r23,$r3,96(0x60)
    1474:	29c16078 	st.d	$r24,$r3,88(0x58)
    1478:	0015009b 	move	$r27,$r4
    147c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1480:	29c20066 	st.d	$r6,$r3,128(0x80)
    1484:	29c22067 	st.d	$r7,$r3,136(0x88)
    1488:	29c24068 	st.d	$r8,$r3,144(0x90)
    148c:	29c26069 	st.d	$r9,$r3,152(0x98)
    1490:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1494:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1498:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    149c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14a0:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14a4:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14a8:	02c7539c 	addi.d	$r28,$r28,468(0x1d4)
        if (!*s)
    14ac:	2800036c 	ld.b	$r12,$r27,0
    14b0:	40008980 	beqz	$r12,136(0x88) # 1538 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14b4:	58027d99 	beq	$r12,$r25,636(0x27c) # 1730 <printf+0x2e0>
    14b8:	00150366 	move	$r6,$r27
    14bc:	50000800 	b	8(0x8) # 14c4 <printf+0x74>
    14c0:	58009d99 	beq	$r12,$r25,156(0x9c) # 155c <printf+0x10c>
    14c4:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14c8:	280000cc 	ld.b	$r12,$r6,0
    14cc:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14c0 <printf+0x70>
    14d0:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14d4:	0011ecd7 	sub.d	$r23,$r6,$r27
    14d8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14dc:	001502e6 	move	$r6,$r23
    14e0:	00150365 	move	$r5,$r27
    14e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    14e8:	540d6800 	bl	3432(0xd68) # 2250 <write>
        out(f, a, l);
        if (l)
    14ec:	4400b6e0 	bnez	$r23,180(0xb4) # 15a0 <printf+0x150>
            continue;
        if (s[1] == 0)
    14f0:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14f4:	40004580 	beqz	$r12,68(0x44) # 1538 <printf+0xe8>
            break;
        switch (s[1])
    14f8:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14fc:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15d0 <printf+0x180>
    1500:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15a8 <printf+0x158>
    1504:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1508:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16f8 <printf+0x2a8>
    150c:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1510:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16c0 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1514:	2600006c 	ldptr.d	$r12,$r3,0
    1518:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    151c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1520:	24000184 	ldptr.w	$r4,$r12,0
    1524:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1528:	2700006c 	stptr.d	$r12,$r3,0
    152c:	57fc13ff 	bl	-1008(0xffffc10) # 113c <printint.constprop.0>
        if (!*s)
    1530:	2800036c 	ld.b	$r12,$r27,0
    1534:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14b4 <printf+0x64>
    }
    va_end(ap);
}
    1538:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    153c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1540:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1544:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1548:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    154c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1550:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1554:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1558:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    155c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1560:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14d0 <printf+0x80>
    1564:	001500d8 	move	$r24,$r6
    1568:	50000c00 	b	12(0xc) # 1574 <printf+0x124>
    156c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1570:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14d4 <printf+0x84>
    1574:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1578:	2800030c 	ld.b	$r12,$r24,0
    157c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1580:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 156c <printf+0x11c>
        l = z - a;
    1584:	0011ecd7 	sub.d	$r23,$r6,$r27
    1588:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    158c:	001502e6 	move	$r6,$r23
    1590:	00150365 	move	$r5,$r27
    1594:	02800404 	addi.w	$r4,$r0,1(0x1)
    1598:	540cb800 	bl	3256(0xcb8) # 2250 <write>
        if (l)
    159c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14f0 <printf+0xa0>
    15a0:	0015031b 	move	$r27,$r24
    15a4:	53ff0bff 	b	-248(0xfffff08) # 14ac <printf+0x5c>
        switch (s[1])
    15a8:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15ac:	5c01158d 	bne	$r12,$r13,276(0x114) # 16c0 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15b0:	2600006c 	ldptr.d	$r12,$r3,0
    15b4:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15b8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15bc:	24000184 	ldptr.w	$r4,$r12,0
    15c0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15c4:	2700006c 	stptr.d	$r12,$r3,0
    15c8:	57fb77ff 	bl	-1164(0xffffb74) # 113c <printint.constprop.0>
        s += 2;
    15cc:	53ff67ff 	b	-156(0xfffff64) # 1530 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15d0:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15d4:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15d8:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15dc:	260001ac 	ldptr.d	$r12,$r13,0
    15e0:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15e4:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15e8:	0045f18a 	srli.d	$r10,$r12,0x3c
    15ec:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15f0:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15f4:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15f8:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15fc:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1600:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1604:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1608:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    160c:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1610:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1614:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1618:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    161c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1620:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1624:	3820278a 	ldx.bu	$r10,$r28,$r9
    1628:	38202389 	ldx.bu	$r9,$r28,$r8
    162c:	38201f88 	ldx.bu	$r8,$r28,$r7
    1630:	38201787 	ldx.bu	$r7,$r28,$r5
    1634:	38201385 	ldx.bu	$r5,$r28,$r4
    1638:	38205384 	ldx.bu	$r4,$r28,$r20
    163c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1640:	38204b93 	ldx.bu	$r19,$r28,$r18
    1644:	38204792 	ldx.bu	$r18,$r28,$r17
    1648:	38204391 	ldx.bu	$r17,$r28,$r16
    164c:	38203f90 	ldx.bu	$r16,$r28,$r15
    1650:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1654:	3820378e 	ldx.bu	$r14,$r28,$r13
    1658:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    165c:	03403d8c 	andi	$r12,$r12,0xf
    1660:	2900286b 	st.b	$r11,$r3,10(0xa)
    1664:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1668:	29003069 	st.b	$r9,$r3,12(0xc)
    166c:	29003468 	st.b	$r8,$r3,13(0xd)
    1670:	29003867 	st.b	$r7,$r3,14(0xe)
    1674:	29003c65 	st.b	$r5,$r3,15(0xf)
    1678:	29004064 	st.b	$r4,$r3,16(0x10)
    167c:	29004474 	st.b	$r20,$r3,17(0x11)
    1680:	29004873 	st.b	$r19,$r3,18(0x12)
    1684:	29004c72 	st.b	$r18,$r3,19(0x13)
    1688:	29005071 	st.b	$r17,$r3,20(0x14)
    168c:	29005470 	st.b	$r16,$r3,21(0x15)
    1690:	2900586f 	st.b	$r15,$r3,22(0x16)
    1694:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1698:	3820378d 	ldx.bu	$r13,$r28,$r13
    169c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16a0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16a4:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16a8:	2900606d 	st.b	$r13,$r3,24(0x18)
    16ac:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16b0:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16b4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16b8:	540b9800 	bl	2968(0xb98) # 2250 <write>
        s += 2;
    16bc:	53fe77ff 	b	-396(0xffffe74) # 1530 <printf+0xe0>
    char byte = c;
    16c0:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16c4:	02800406 	addi.w	$r6,$r0,1(0x1)
    16c8:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16cc:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16d0:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16d4:	540b7c00 	bl	2940(0xb7c) # 2250 <write>
    char byte = c;
    16d8:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16dc:	02800406 	addi.w	$r6,$r0,1(0x1)
    16e0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16e8:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16ec:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16f0:	540b6000 	bl	2912(0xb60) # 2250 <write>
        s += 2;
    16f4:	53fe3fff 	b	-452(0xffffe3c) # 1530 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16f8:	2600006c 	ldptr.d	$r12,$r3,0
    16fc:	26000197 	ldptr.d	$r23,$r12,0
    1700:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1704:	2700006c 	stptr.d	$r12,$r3,0
    1708:	40004ee0 	beqz	$r23,76(0x4c) # 1754 <printf+0x304>
            l = strnlen(a, 200);
    170c:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1710:	001502e4 	move	$r4,$r23
    1714:	5405d000 	bl	1488(0x5d0) # 1ce4 <strnlen>
    1718:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    171c:	001502e5 	move	$r5,$r23
    1720:	02800404 	addi.w	$r4,$r0,1(0x1)
    1724:	540b2c00 	bl	2860(0xb2c) # 2250 <write>
        s += 2;
    1728:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    172c:	53fe07ff 	b	-508(0xffffe04) # 1530 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1730:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1734:	00150366 	move	$r6,$r27
    1738:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1564 <printf+0x114>
    write(f, s, l);
    173c:	00150006 	move	$r6,$r0
    1740:	00150365 	move	$r5,$r27
    1744:	02800404 	addi.w	$r4,$r0,1(0x1)
    1748:	540b0800 	bl	2824(0xb08) # 2250 <write>
    174c:	00150378 	move	$r24,$r27
    1750:	53fda3ff 	b	-608(0xffffda0) # 14f0 <printf+0xa0>
                a = "(null)";
    1754:	1c000037 	pcaddu12i	$r23,1(0x1)
    1758:	02fc32f7 	addi.d	$r23,$r23,-244(0xf0c)
    175c:	53ffb3ff 	b	-80(0xfffffb0) # 170c <printf+0x2bc>

0000000000001760 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1760:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1764:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1768:	57fcb3ff 	bl	-848(0xffffcb0) # 1418 <puts>
    exit(-100);
}
    176c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1770:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1774:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1778:	500b4c00 	b	2892(0xb4c) # 22c4 <exit>

000000000000177c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    177c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1780:	5800108c 	beq	$r4,$r12,16(0x10) # 1790 <isspace+0x14>
    1784:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1788:	02401484 	sltui	$r4,$r4,5(0x5)
    178c:	4c000020 	jirl	$r0,$r1,0
    1790:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1794:	4c000020 	jirl	$r0,$r1,0

0000000000001798 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1798:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    179c:	02402884 	sltui	$r4,$r4,10(0xa)
    17a0:	4c000020 	jirl	$r0,$r1,0

00000000000017a4 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17a4:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17a8:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17ac:	2800008d 	ld.b	$r13,$r4,0
    17b0:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17b4:	580061ae 	beq	$r13,$r14,96(0x60) # 1814 <atoi+0x70>
    17b8:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1814 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17bc:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17c0:	580065ac 	beq	$r13,$r12,100(0x64) # 1824 <atoi+0x80>
    17c4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17c8:	58007dac 	beq	$r13,$r12,124(0x7c) # 1844 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17cc:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17d0:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17d4:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17d8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17dc:	680061cf 	bltu	$r14,$r15,96(0x60) # 183c <atoi+0x98>
    int n = 0, neg = 0;
    17e0:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17e4:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17e8:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17ec:	001c126f 	mul.w	$r15,$r19,$r4
    17f0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17f4:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17f8:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17fc:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1800:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1804:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1808:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17ec <atoi+0x48>
    return neg ? n : -n;
    180c:	40001280 	beqz	$r20,16(0x10) # 181c <atoi+0x78>
}
    1810:	4c000020 	jirl	$r0,$r1,0
        s++;
    1814:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1818:	53ff97ff 	b	-108(0xfffff94) # 17ac <atoi+0x8>
    181c:	00113e04 	sub.w	$r4,$r16,$r15
    1820:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1824:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1828:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    182c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1830:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1834:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1838:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17e0 <atoi+0x3c>
    183c:	00150004 	move	$r4,$r0
}
    1840:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1844:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1848:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    184c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1850:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1854:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 183c <atoi+0x98>
        neg = 1;
    1858:	02800414 	addi.w	$r20,$r0,1(0x1)
    185c:	53ff87ff 	b	-124(0xfffff84) # 17e0 <atoi+0x3c>

0000000000001860 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1860:	400198c0 	beqz	$r6,408(0x198) # 19f8 <memset+0x198>
    1864:	0011900c 	sub.d	$r12,$r0,$r4
    1868:	03401d8c 	andi	$r12,$r12,0x7
    186c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1870:	02402dae 	sltui	$r14,$r13,11(0xb)
    1874:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1878:	0013b9ad 	masknez	$r13,$r13,$r14
    187c:	001339ee 	maskeqz	$r14,$r15,$r14
    1880:	001539ad 	or	$r13,$r13,$r14
    1884:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1888:	00005ca5 	ext.w.b	$r5,$r5
    188c:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a1c <memset+0x1bc>
    1890:	40018180 	beqz	$r12,384(0x180) # 1a10 <memset+0x1b0>
    1894:	29000085 	st.b	$r5,$r4,0
    1898:	0280040d 	addi.w	$r13,$r0,1(0x1)
    189c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18a0:	5801698d 	beq	$r12,$r13,360(0x168) # 1a08 <memset+0x1a8>
    18a4:	29000485 	st.b	$r5,$r4,1(0x1)
    18a8:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18ac:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18b0:	5801798d 	beq	$r12,$r13,376(0x178) # 1a28 <memset+0x1c8>
    18b4:	29000885 	st.b	$r5,$r4,2(0x2)
    18b8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18bc:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18c0:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19fc <memset+0x19c>
    18c4:	29000c85 	st.b	$r5,$r4,3(0x3)
    18c8:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18cc:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18d0:	5801618d 	beq	$r12,$r13,352(0x160) # 1a30 <memset+0x1d0>
    18d4:	29001085 	st.b	$r5,$r4,4(0x4)
    18d8:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18dc:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18e0:	5801598d 	beq	$r12,$r13,344(0x158) # 1a38 <memset+0x1d8>
    18e4:	29001485 	st.b	$r5,$r4,5(0x5)
    18e8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18ec:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18f0:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a40 <memset+0x1e0>
    18f4:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18f8:	29001885 	st.b	$r5,$r4,6(0x6)
    18fc:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1900:	0015000d 	move	$r13,$r0
    1904:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1908:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    190c:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1910:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1914:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1918:	0011b0d0 	sub.d	$r16,$r6,$r12
    191c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1920:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1924:	0010b08c 	add.d	$r12,$r4,$r12
    1928:	00450e0f 	srli.d	$r15,$r16,0x3
    192c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1930:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1934:	2700018d 	stptr.d	$r13,$r12,0
    1938:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    193c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1934 <memset+0xd4>
    1940:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1944:	0014be0f 	and	$r15,$r16,$r15
    1948:	004081ed 	slli.w	$r13,$r15,0x0
    194c:	0010bdcc 	add.d	$r12,$r14,$r15
    1950:	001045ad 	add.w	$r13,$r13,$r17
    1954:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a04 <memset+0x1a4>
    1958:	29000185 	st.b	$r5,$r12,0
    195c:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1960:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19f8 <memset+0x198>
    1964:	29000585 	st.b	$r5,$r12,1(0x1)
    1968:	028009ae 	addi.w	$r14,$r13,2(0x2)
    196c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19f8 <memset+0x198>
    1970:	29000985 	st.b	$r5,$r12,2(0x2)
    1974:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1978:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19f8 <memset+0x198>
    197c:	29000d85 	st.b	$r5,$r12,3(0x3)
    1980:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1984:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19f8 <memset+0x198>
    1988:	29001185 	st.b	$r5,$r12,4(0x4)
    198c:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1990:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19f8 <memset+0x198>
    1994:	29001585 	st.b	$r5,$r12,5(0x5)
    1998:	028019ae 	addi.w	$r14,$r13,6(0x6)
    199c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19f8 <memset+0x198>
    19a0:	29001985 	st.b	$r5,$r12,6(0x6)
    19a4:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19a8:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19f8 <memset+0x198>
    19ac:	29001d85 	st.b	$r5,$r12,7(0x7)
    19b0:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19b4:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19f8 <memset+0x198>
    19b8:	29002185 	st.b	$r5,$r12,8(0x8)
    19bc:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19c0:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19f8 <memset+0x198>
    19c4:	29002585 	st.b	$r5,$r12,9(0x9)
    19c8:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19cc:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19f8 <memset+0x198>
    19d0:	29002985 	st.b	$r5,$r12,10(0xa)
    19d4:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19d8:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19f8 <memset+0x198>
    19dc:	29002d85 	st.b	$r5,$r12,11(0xb)
    19e0:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19e4:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19f8 <memset+0x198>
    19e8:	29003185 	st.b	$r5,$r12,12(0xc)
    19ec:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19f0:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19f8 <memset+0x198>
    19f4:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19f8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19fc:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a00:	53ff03ff 	b	-256(0xfffff00) # 1900 <memset+0xa0>
    1a04:	4c000020 	jirl	$r0,$r1,0
    1a08:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a0c:	53fef7ff 	b	-268(0xffffef4) # 1900 <memset+0xa0>
    1a10:	0015008e 	move	$r14,$r4
    1a14:	00150011 	move	$r17,$r0
    1a18:	53feebff 	b	-280(0xffffee8) # 1900 <memset+0xa0>
    1a1c:	0015008c 	move	$r12,$r4
    1a20:	0015000d 	move	$r13,$r0
    1a24:	53ff37ff 	b	-204(0xfffff34) # 1958 <memset+0xf8>
    1a28:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a2c:	53fed7ff 	b	-300(0xffffed4) # 1900 <memset+0xa0>
    1a30:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a34:	53fecfff 	b	-308(0xffffecc) # 1900 <memset+0xa0>
    1a38:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a3c:	53fec7ff 	b	-316(0xffffec4) # 1900 <memset+0xa0>
    1a40:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a44:	53febfff 	b	-324(0xffffebc) # 1900 <memset+0xa0>

0000000000001a48 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a48:	2800008c 	ld.b	$r12,$r4,0
    1a4c:	280000ae 	ld.b	$r14,$r5,0
    1a50:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a84 <strcmp+0x3c>
    1a54:	40003980 	beqz	$r12,56(0x38) # 1a8c <strcmp+0x44>
    1a58:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a5c:	50000800 	b	8(0x8) # 1a64 <strcmp+0x1c>
    1a60:	400019a0 	beqz	$r13,24(0x18) # 1a78 <strcmp+0x30>
    1a64:	3800308d 	ldx.b	$r13,$r4,$r12
    1a68:	380030ae 	ldx.b	$r14,$r5,$r12
    1a6c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a70:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a60 <strcmp+0x18>
    1a74:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a78:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a7c:	001111a4 	sub.w	$r4,$r13,$r4
    1a80:	4c000020 	jirl	$r0,$r1,0
    1a84:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a88:	53fff3ff 	b	-16(0xffffff0) # 1a78 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a8c:	0015000d 	move	$r13,$r0
    1a90:	53ffebff 	b	-24(0xfffffe8) # 1a78 <strcmp+0x30>

0000000000001a94 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a94:	400054c0 	beqz	$r6,84(0x54) # 1ae8 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a98:	2a00008d 	ld.bu	$r13,$r4,0
    1a9c:	2a0000ae 	ld.bu	$r14,$r5,0
    1aa0:	40003da0 	beqz	$r13,60(0x3c) # 1adc <strncmp+0x48>
    1aa4:	40003dc0 	beqz	$r14,60(0x3c) # 1ae0 <strncmp+0x4c>
    if (!n--)
    1aa8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1aac:	400034c0 	beqz	$r6,52(0x34) # 1ae0 <strncmp+0x4c>
    1ab0:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ab4:	580019ae 	beq	$r13,$r14,24(0x18) # 1acc <strncmp+0x38>
    1ab8:	50002800 	b	40(0x28) # 1ae0 <strncmp+0x4c>
    1abc:	400035c0 	beqz	$r14,52(0x34) # 1af0 <strncmp+0x5c>
    1ac0:	580020cc 	beq	$r6,$r12,32(0x20) # 1ae0 <strncmp+0x4c>
    1ac4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac8:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1af0 <strncmp+0x5c>
    1acc:	3820308d 	ldx.bu	$r13,$r4,$r12
    1ad0:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ad4:	001501af 	move	$r15,$r13
    1ad8:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1abc <strncmp+0x28>
    1adc:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ae0:	001139a4 	sub.w	$r4,$r13,$r14
    1ae4:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ae8:	00150004 	move	$r4,$r0
}
    1aec:	4c000020 	jirl	$r0,$r1,0
    1af0:	001501ed 	move	$r13,$r15
    return *l - *r;
    1af4:	001139a4 	sub.w	$r4,$r13,$r14
    1af8:	4c000020 	jirl	$r0,$r1,0

0000000000001afc <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1afc:	03401c8c 	andi	$r12,$r4,0x7
    1b00:	4000b180 	beqz	$r12,176(0xb0) # 1bb0 <strlen+0xb4>
        if (!*s)
    1b04:	2800008c 	ld.b	$r12,$r4,0
    1b08:	4000b180 	beqz	$r12,176(0xb0) # 1bb8 <strlen+0xbc>
    1b0c:	0015008c 	move	$r12,$r4
    1b10:	50000c00 	b	12(0xc) # 1b1c <strlen+0x20>
    1b14:	2800018d 	ld.b	$r13,$r12,0
    1b18:	400091a0 	beqz	$r13,144(0x90) # 1ba8 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b1c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b20:	03401d8d 	andi	$r13,$r12,0x7
    1b24:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b14 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b28:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b2c:	2600018f 	ldptr.d	$r15,$r12,0
    1b30:	03bbfdad 	ori	$r13,$r13,0xeff
    1b34:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b38:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b3c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b40:	038201ce 	ori	$r14,$r14,0x80
    1b44:	0010b5ed 	add.d	$r13,$r15,$r13
    1b48:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b4c:	0016bdad 	andn	$r13,$r13,$r15
    1b50:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b54:	0014b9ae 	and	$r14,$r13,$r14
    1b58:	440049c0 	bnez	$r14,72(0x48) # 1ba0 <strlen+0xa4>
    1b5c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b60:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b64:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b68:	2600018e 	ldptr.d	$r14,$r12,0
    1b6c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b70:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b74:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b78:	0382020f 	ori	$r15,$r16,0x80
    1b7c:	0010b5cd 	add.d	$r13,$r14,$r13
    1b80:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b84:	0016b9ad 	andn	$r13,$r13,$r14
    1b88:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b8c:	0014bdad 	and	$r13,$r13,$r15
    1b90:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b64 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b94:	2800018d 	ld.b	$r13,$r12,0
    1b98:	400011a0 	beqz	$r13,16(0x10) # 1ba8 <strlen+0xac>
    1b9c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ba0:	2800018d 	ld.b	$r13,$r12,0
    1ba4:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b9c <strlen+0xa0>
        ;
    return s - a;
    1ba8:	00119184 	sub.d	$r4,$r12,$r4
}
    1bac:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1bb0:	0015008c 	move	$r12,$r4
    1bb4:	53ff77ff 	b	-140(0xfffff74) # 1b28 <strlen+0x2c>
        if (!*s)
    1bb8:	00150004 	move	$r4,$r0
            return s - a;
    1bbc:	4c000020 	jirl	$r0,$r1,0

0000000000001bc0 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bc0:	03401c8c 	andi	$r12,$r4,0x7
    1bc4:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bc8:	44002180 	bnez	$r12,32(0x20) # 1be8 <memchr+0x28>
    1bcc:	50002c00 	b	44(0x2c) # 1bf8 <memchr+0x38>
    1bd0:	2a00008c 	ld.bu	$r12,$r4,0
    1bd4:	5800f985 	beq	$r12,$r5,248(0xf8) # 1ccc <memchr+0x10c>
    1bd8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bdc:	03401c8c 	andi	$r12,$r4,0x7
    1be0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1be4:	40001580 	beqz	$r12,20(0x14) # 1bf8 <memchr+0x38>
    1be8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bd0 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bec:	0015000d 	move	$r13,$r0
}
    1bf0:	001501a4 	move	$r4,$r13
    1bf4:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bf8:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bfc:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bf0 <memchr+0x30>
    1c00:	2a00008c 	ld.bu	$r12,$r4,0
    1c04:	5800c985 	beq	$r12,$r5,200(0xc8) # 1ccc <memchr+0x10c>
        size_t k = ONES * c;
    1c08:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c0c:	0384058c 	ori	$r12,$r12,0x101
    1c10:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c14:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c18:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c1c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c20:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cdc <memchr+0x11c>
    1c24:	2600008d 	ldptr.d	$r13,$r4,0
    1c28:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c2c:	038201ce 	ori	$r14,$r14,0x80
    1c30:	0015b60d 	xor	$r13,$r16,$r13
    1c34:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c38:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c3c:	0016b58c 	andn	$r12,$r12,$r13
    1c40:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c44:	0014b98c 	and	$r12,$r12,$r14
    1c48:	44009580 	bnez	$r12,148(0x94) # 1cdc <memchr+0x11c>
    1c4c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c50:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c54:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c58:	50002000 	b	32(0x20) # 1c78 <memchr+0xb8>
    1c5c:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c60:	0015b20c 	xor	$r12,$r16,$r12
    1c64:	0010b98e 	add.d	$r14,$r12,$r14
    1c68:	0016b1cc 	andn	$r12,$r14,$r12
    1c6c:	0014bd8c 	and	$r12,$r12,$r15
    1c70:	44006580 	bnez	$r12,100(0x64) # 1cd4 <memchr+0x114>
    1c74:	001501a4 	move	$r4,$r13
    1c78:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c7c:	0382022f 	ori	$r15,$r17,0x80
    1c80:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c84:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c88:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c8c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c90:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c94:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c98:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c5c <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c9c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bec <memchr+0x2c>
    1ca0:	2a0001ac 	ld.bu	$r12,$r13,0
    1ca4:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bf0 <memchr+0x30>
    1ca8:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1cac:	001099a6 	add.d	$r6,$r13,$r6
    1cb0:	50001000 	b	16(0x10) # 1cc0 <memchr+0x100>
    1cb4:	2a00018e 	ld.bu	$r14,$r12,0
    1cb8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1cbc:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bf0 <memchr+0x30>
    1cc0:	0015018d 	move	$r13,$r12
    1cc4:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1cb4 <memchr+0xf4>
    1cc8:	53ff27ff 	b	-220(0xfffff24) # 1bec <memchr+0x2c>
    1ccc:	0015008d 	move	$r13,$r4
    1cd0:	53ffd3ff 	b	-48(0xfffffd0) # 1ca0 <memchr+0xe0>
    1cd4:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cd8:	53ffcfff 	b	-52(0xfffffcc) # 1ca4 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cdc:	0015008d 	move	$r13,$r4
    1ce0:	53ffcbff 	b	-56(0xfffffc8) # 1ca8 <memchr+0xe8>

0000000000001ce4 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ce4:	03401c8c 	andi	$r12,$r4,0x7
    1ce8:	40011980 	beqz	$r12,280(0x118) # 1e00 <strnlen+0x11c>
    1cec:	4000f4a0 	beqz	$r5,244(0xf4) # 1de0 <strnlen+0xfc>
    1cf0:	2a00008c 	ld.bu	$r12,$r4,0
    1cf4:	4000f580 	beqz	$r12,244(0xf4) # 1de8 <strnlen+0x104>
    1cf8:	001500ac 	move	$r12,$r5
    1cfc:	0015008d 	move	$r13,$r4
    1d00:	50001000 	b	16(0x10) # 1d10 <strnlen+0x2c>
    1d04:	4000dd80 	beqz	$r12,220(0xdc) # 1de0 <strnlen+0xfc>
    1d08:	2a0001ae 	ld.bu	$r14,$r13,0
    1d0c:	4000e5c0 	beqz	$r14,228(0xe4) # 1df0 <strnlen+0x10c>
    1d10:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d14:	03401dae 	andi	$r14,$r13,0x7
    1d18:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d1c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d04 <strnlen+0x20>
    if (n && *s != c)
    1d20:	4000c180 	beqz	$r12,192(0xc0) # 1de0 <strnlen+0xfc>
    1d24:	2a0001ae 	ld.bu	$r14,$r13,0
    1d28:	4000c9c0 	beqz	$r14,200(0xc8) # 1df0 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d2c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d30:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e0c <strnlen+0x128>
    1d34:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d38:	260001b0 	ldptr.d	$r16,$r13,0
    1d3c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d40:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d44:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d48:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d4c:	038201ef 	ori	$r15,$r15,0x80
    1d50:	0010ba0e 	add.d	$r14,$r16,$r14
    1d54:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d58:	0016c1ce 	andn	$r14,$r14,$r16
    1d5c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d60:	0014bdcf 	and	$r15,$r14,$r15
    1d64:	4400a9e0 	bnez	$r15,168(0xa8) # 1e0c <strnlen+0x128>
    1d68:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d6c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d70:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d74:	50001c00 	b	28(0x1c) # 1d90 <strnlen+0xac>
    1d78:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d7c:	0010b9ee 	add.d	$r14,$r15,$r14
    1d80:	0016bdce 	andn	$r14,$r14,$r15
    1d84:	0014c1ce 	and	$r14,$r14,$r16
    1d88:	440071c0 	bnez	$r14,112(0x70) # 1df8 <strnlen+0x114>
    1d8c:	0015022d 	move	$r13,$r17
    1d90:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d94:	03820250 	ori	$r16,$r18,0x80
    1d98:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d9c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1da0:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1da4:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1da8:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1dac:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1db0:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d78 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1db4:	40002d80 	beqz	$r12,44(0x2c) # 1de0 <strnlen+0xfc>
    1db8:	2a00022d 	ld.bu	$r13,$r17,0
    1dbc:	400021a0 	beqz	$r13,32(0x20) # 1ddc <strnlen+0xf8>
    1dc0:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1dc4:	0010b22c 	add.d	$r12,$r17,$r12
    1dc8:	001501b1 	move	$r17,$r13
    1dcc:	5800158d 	beq	$r12,$r13,20(0x14) # 1de0 <strnlen+0xfc>
    1dd0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dd4:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1dd8:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1dc8 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1ddc:	00119225 	sub.d	$r5,$r17,$r4
}
    1de0:	001500a4 	move	$r4,$r5
    1de4:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1de8:	001500ac 	move	$r12,$r5
    1dec:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1df0:	001501b1 	move	$r17,$r13
    1df4:	53ffc7ff 	b	-60(0xfffffc4) # 1db8 <strnlen+0xd4>
    1df8:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dfc:	53ffc3ff 	b	-64(0xfffffc0) # 1dbc <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e00:	001500ac 	move	$r12,$r5
    1e04:	0015008d 	move	$r13,$r4
    1e08:	53ff1bff 	b	-232(0xfffff18) # 1d20 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e0c:	001501b1 	move	$r17,$r13
    1e10:	53ffb3ff 	b	-80(0xfffffb0) # 1dc0 <strnlen+0xdc>

0000000000001e14 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e14:	0015948c 	xor	$r12,$r4,$r5
    1e18:	03401d8c 	andi	$r12,$r12,0x7
    1e1c:	4400ad80 	bnez	$r12,172(0xac) # 1ec8 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e20:	03401cac 	andi	$r12,$r5,0x7
    1e24:	40003180 	beqz	$r12,48(0x30) # 1e54 <strcpy+0x40>
            if (!(*d = *s))
    1e28:	280000ac 	ld.b	$r12,$r5,0
    1e2c:	2900008c 	st.b	$r12,$r4,0
    1e30:	44001580 	bnez	$r12,20(0x14) # 1e44 <strcpy+0x30>
    1e34:	5000bc00 	b	188(0xbc) # 1ef0 <strcpy+0xdc>
    1e38:	280000ac 	ld.b	$r12,$r5,0
    1e3c:	2900008c 	st.b	$r12,$r4,0
    1e40:	4000a980 	beqz	$r12,168(0xa8) # 1ee8 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e44:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e48:	03401cac 	andi	$r12,$r5,0x7
    1e4c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e50:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e38 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e54:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e58:	260000ae 	ldptr.d	$r14,$r5,0
    1e5c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e60:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e64:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e68:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e6c:	038201ad 	ori	$r13,$r13,0x80
    1e70:	0010b1cc 	add.d	$r12,$r14,$r12
    1e74:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e78:	0016b98c 	andn	$r12,$r12,$r14
    1e7c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e80:	0014b58c 	and	$r12,$r12,$r13
    1e84:	44004580 	bnez	$r12,68(0x44) # 1ec8 <strcpy+0xb4>
    1e88:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e8c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e90:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e94:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e98:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e9c:	260000ae 	ldptr.d	$r14,$r5,0
    1ea0:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ea4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ea8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1eac:	038201ed 	ori	$r13,$r15,0x80
    1eb0:	0010b1cc 	add.d	$r12,$r14,$r12
    1eb4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1eb8:	0016b98c 	andn	$r12,$r12,$r14
    1ebc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ec0:	0014b58c 	and	$r12,$r12,$r13
    1ec4:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e90 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ec8:	280000ac 	ld.b	$r12,$r5,0
    1ecc:	2900008c 	st.b	$r12,$r4,0
    1ed0:	40001d80 	beqz	$r12,28(0x1c) # 1eec <strcpy+0xd8>
    1ed4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ed8:	280000ac 	ld.b	$r12,$r5,0
    1edc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ee0:	2900008c 	st.b	$r12,$r4,0
    1ee4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ed4 <strcpy+0xc0>
        ;
    return d;
}
    1ee8:	4c000020 	jirl	$r0,$r1,0
    1eec:	4c000020 	jirl	$r0,$r1,0
    1ef0:	4c000020 	jirl	$r0,$r1,0

0000000000001ef4 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ef4:	0015948c 	xor	$r12,$r4,$r5
    1ef8:	03401d8c 	andi	$r12,$r12,0x7
    1efc:	4400ad80 	bnez	$r12,172(0xac) # 1fa8 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f00:	03401cac 	andi	$r12,$r5,0x7
    1f04:	44010180 	bnez	$r12,256(0x100) # 2004 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f08:	400100c0 	beqz	$r6,256(0x100) # 2008 <strncpy+0x114>
    1f0c:	280000af 	ld.b	$r15,$r5,0
    1f10:	400105e0 	beqz	$r15,260(0x104) # 2014 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f14:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f18:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21f0 <strncpy+0x2fc>
    1f1c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f20:	260000ae 	ldptr.d	$r14,$r5,0
    1f24:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f28:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f2c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f30:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f34:	038201ad 	ori	$r13,$r13,0x80
    1f38:	0010b1cc 	add.d	$r12,$r14,$r12
    1f3c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f40:	0016b98c 	andn	$r12,$r12,$r14
    1f44:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f48:	0014b58c 	and	$r12,$r12,$r13
    1f4c:	4402a580 	bnez	$r12,676(0x2a4) # 21f0 <strncpy+0x2fc>
    1f50:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f54:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f58:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f5c:	50001c00 	b	28(0x1c) # 1f78 <strncpy+0x84>
    1f60:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f64:	0010b1cc 	add.d	$r12,$r14,$r12
    1f68:	0016b98c 	andn	$r12,$r12,$r14
    1f6c:	0014b58c 	and	$r12,$r12,$r13
    1f70:	44024580 	bnez	$r12,580(0x244) # 21b4 <strncpy+0x2c0>
    1f74:	001501e5 	move	$r5,$r15
    1f78:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f7c:	0382020d 	ori	$r13,$r16,0x80
    1f80:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f84:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f88:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f8c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f90:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f94:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f98:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f9c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1fa0:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f60 <strncpy+0x6c>
    1fa4:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1fa8:	400060c0 	beqz	$r6,96(0x60) # 2008 <strncpy+0x114>
    1fac:	280000ac 	ld.b	$r12,$r5,0
    1fb0:	0015008d 	move	$r13,$r4
    1fb4:	2900008c 	st.b	$r12,$r4,0
    1fb8:	44001580 	bnez	$r12,20(0x14) # 1fcc <strncpy+0xd8>
    1fbc:	50005c00 	b	92(0x5c) # 2018 <strncpy+0x124>
    1fc0:	280000ac 	ld.b	$r12,$r5,0
    1fc4:	290001ac 	st.b	$r12,$r13,0
    1fc8:	40005180 	beqz	$r12,80(0x50) # 2018 <strncpy+0x124>
    1fcc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fd0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fd4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fd8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fc0 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fdc:	001501a4 	move	$r4,$r13
    1fe0:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fe4:	280000ac 	ld.b	$r12,$r5,0
    1fe8:	2900008c 	st.b	$r12,$r4,0
    1fec:	40002980 	beqz	$r12,40(0x28) # 2014 <strncpy+0x120>
    1ff0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ff4:	03401cac 	andi	$r12,$r5,0x7
    1ff8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ffc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    2000:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f08 <strncpy+0x14>
    2004:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fe4 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2008:	0015008d 	move	$r13,$r4
}
    200c:	001501a4 	move	$r4,$r13
    2010:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2014:	0015008d 	move	$r13,$r4
    2018:	0011b40c 	sub.d	$r12,$r0,$r13
    201c:	03401d8c 	andi	$r12,$r12,0x7
    2020:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2024:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2028:	02802c10 	addi.w	$r16,$r0,11(0xb)
    202c:	0013bdce 	masknez	$r14,$r14,$r15
    2030:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2034:	00133e0f 	maskeqz	$r15,$r16,$r15
    2038:	00153dce 	or	$r14,$r14,$r15
    203c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2040:	00131a31 	maskeqz	$r17,$r17,$r6
    2044:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2048:	001540d0 	or	$r16,$r6,$r16
    204c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21c4 <strncpy+0x2d0>
    2050:	40015980 	beqz	$r12,344(0x158) # 21a8 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2054:	290001a0 	st.b	$r0,$r13,0
    2058:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    205c:	5801458f 	beq	$r12,$r15,324(0x144) # 21a0 <strncpy+0x2ac>
    2060:	290005a0 	st.b	$r0,$r13,1(0x1)
    2064:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2068:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    206c:	5801658f 	beq	$r12,$r15,356(0x164) # 21d0 <strncpy+0x2dc>
    2070:	290009a0 	st.b	$r0,$r13,2(0x2)
    2074:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2078:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    207c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2198 <strncpy+0x2a4>
    2080:	29000da0 	st.b	$r0,$r13,3(0x3)
    2084:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2088:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    208c:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21d8 <strncpy+0x2e4>
    2090:	290011a0 	st.b	$r0,$r13,4(0x4)
    2094:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2098:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    209c:	5801458f 	beq	$r12,$r15,324(0x144) # 21e0 <strncpy+0x2ec>
    20a0:	290015a0 	st.b	$r0,$r13,5(0x5)
    20a4:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20a8:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20ac:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21e8 <strncpy+0x2f4>
    20b0:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20b4:	290019a0 	st.b	$r0,$r13,6(0x6)
    20b8:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20bc:	0011b210 	sub.d	$r16,$r16,$r12
    20c0:	00450e11 	srli.d	$r17,$r16,0x3
    20c4:	0010b1ac 	add.d	$r12,$r13,$r12
    20c8:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20cc:	27000180 	stptr.d	$r0,$r12,0
    20d0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20d4:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20cc <strncpy+0x1d8>
    20d8:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20dc:	0014c611 	and	$r17,$r16,$r17
    20e0:	0040822f 	slli.w	$r15,$r17,0x0
    20e4:	001049ef 	add.w	$r15,$r15,$r18
    20e8:	0010c5cc 	add.d	$r12,$r14,$r17
    20ec:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fdc <strncpy+0xe8>
    20f0:	29000180 	st.b	$r0,$r12,0
    20f4:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20f8:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fdc <strncpy+0xe8>
    20fc:	29000580 	st.b	$r0,$r12,1(0x1)
    2100:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2104:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fdc <strncpy+0xe8>
    2108:	29000980 	st.b	$r0,$r12,2(0x2)
    210c:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2110:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fdc <strncpy+0xe8>
    2114:	29000d80 	st.b	$r0,$r12,3(0x3)
    2118:	028011ee 	addi.w	$r14,$r15,4(0x4)
    211c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fdc <strncpy+0xe8>
    2120:	29001180 	st.b	$r0,$r12,4(0x4)
    2124:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2128:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fdc <strncpy+0xe8>
    212c:	29001580 	st.b	$r0,$r12,5(0x5)
    2130:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2134:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fdc <strncpy+0xe8>
    2138:	29001980 	st.b	$r0,$r12,6(0x6)
    213c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2140:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fdc <strncpy+0xe8>
    2144:	29001d80 	st.b	$r0,$r12,7(0x7)
    2148:	028021ee 	addi.w	$r14,$r15,8(0x8)
    214c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fdc <strncpy+0xe8>
    2150:	29002180 	st.b	$r0,$r12,8(0x8)
    2154:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2158:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fdc <strncpy+0xe8>
    215c:	29002580 	st.b	$r0,$r12,9(0x9)
    2160:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2164:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fdc <strncpy+0xe8>
    2168:	29002980 	st.b	$r0,$r12,10(0xa)
    216c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2170:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fdc <strncpy+0xe8>
    2174:	29002d80 	st.b	$r0,$r12,11(0xb)
    2178:	028031ee 	addi.w	$r14,$r15,12(0xc)
    217c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fdc <strncpy+0xe8>
    2180:	29003180 	st.b	$r0,$r12,12(0xc)
    2184:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2188:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fdc <strncpy+0xe8>
    218c:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2190:	001501a4 	move	$r4,$r13
    2194:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2198:	02800c12 	addi.w	$r18,$r0,3(0x3)
    219c:	53ff23ff 	b	-224(0xfffff20) # 20bc <strncpy+0x1c8>
    21a0:	02800412 	addi.w	$r18,$r0,1(0x1)
    21a4:	53ff1bff 	b	-232(0xfffff18) # 20bc <strncpy+0x1c8>
    21a8:	001501ae 	move	$r14,$r13
    21ac:	00150012 	move	$r18,$r0
    21b0:	53ff0fff 	b	-244(0xfffff0c) # 20bc <strncpy+0x1c8>
    21b4:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21b8:	0015008d 	move	$r13,$r4
    21bc:	001501e5 	move	$r5,$r15
    21c0:	53fdf7ff 	b	-524(0xffffdf4) # 1fb4 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21c4:	001501ac 	move	$r12,$r13
    21c8:	0015000f 	move	$r15,$r0
    21cc:	53ff27ff 	b	-220(0xfffff24) # 20f0 <strncpy+0x1fc>
    21d0:	02800812 	addi.w	$r18,$r0,2(0x2)
    21d4:	53feebff 	b	-280(0xffffee8) # 20bc <strncpy+0x1c8>
    21d8:	02801012 	addi.w	$r18,$r0,4(0x4)
    21dc:	53fee3ff 	b	-288(0xffffee0) # 20bc <strncpy+0x1c8>
    21e0:	02801412 	addi.w	$r18,$r0,5(0x5)
    21e4:	53fedbff 	b	-296(0xffffed8) # 20bc <strncpy+0x1c8>
    21e8:	02801812 	addi.w	$r18,$r0,6(0x6)
    21ec:	53fed3ff 	b	-304(0xffffed0) # 20bc <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21f0:	2900008f 	st.b	$r15,$r4,0
    21f4:	0015008d 	move	$r13,$r4
    21f8:	53fdd7ff 	b	-556(0xffffdd4) # 1fcc <strncpy+0xd8>

00000000000021fc <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21fc:	0015008c 	move	$r12,$r4
    2200:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2204:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2208:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    220c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2210:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2214:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2218:	00408084 	slli.w	$r4,$r4,0x0
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <openat>:
    register long a7 __asm__("a7") = n;
    2220:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2224:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2228:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    222c:	00408084 	slli.w	$r4,$r4,0x0
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <close>:
    register long a7 __asm__("a7") = n;
    2234:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2238:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <read>:
    register long a7 __asm__("a7") = n;
    2244:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2248:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    224c:	4c000020 	jirl	$r0,$r1,0

0000000000002250 <write>:
    register long a7 __asm__("a7") = n;
    2250:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2254:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2258:	4c000020 	jirl	$r0,$r1,0

000000000000225c <getpid>:
    register long a7 __asm__("a7") = n;
    225c:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2260:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2264:	00408084 	slli.w	$r4,$r4,0x0
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <getppid>:
    register long a7 __asm__("a7") = n;
    226c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2270:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2274:	00408084 	slli.w	$r4,$r4,0x0
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <sched_yield>:
    register long a7 __asm__("a7") = n;
    227c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2280:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2284:	00408084 	slli.w	$r4,$r4,0x0
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <fork>:
    register long a7 __asm__("a7") = n;
    228c:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2290:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2294:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2298:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    229c:	00408084 	slli.w	$r4,$r4,0x0
}
    22a0:	4c000020 	jirl	$r0,$r1,0

00000000000022a4 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22a4:	001500c5 	move	$r5,$r6
    if (stack)
    22a8:	400008c0 	beqz	$r6,8(0x8) # 22b0 <clone+0xc>
	stack += stack_size;
    22ac:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22b0:	00408106 	slli.w	$r6,$r8,0x0
    22b4:	00150009 	move	$r9,$r0
    22b8:	00150008 	move	$r8,$r0
    22bc:	00150007 	move	$r7,$r0
    22c0:	5002c800 	b	712(0x2c8) # 2588 <__clone>

00000000000022c4 <exit>:
    register long a7 __asm__("a7") = n;
    22c4:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22c8:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <waitpid>:
    register long a7 __asm__("a7") = n;
    22d0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22d4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22d8:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22dc:	00408084 	slli.w	$r4,$r4,0x0
}
    22e0:	4c000020 	jirl	$r0,$r1,0

00000000000022e4 <exec>:
    register long a7 __asm__("a7") = n;
    22e4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22e8:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22ec:	00408084 	slli.w	$r4,$r4,0x0
}
    22f0:	4c000020 	jirl	$r0,$r1,0

00000000000022f4 <execve>:
    register long a7 __asm__("a7") = n;
    22f4:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22f8:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2300:	4c000020 	jirl	$r0,$r1,0

0000000000002304 <times>:
    register long a7 __asm__("a7") = n;
    2304:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2308:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    230c:	00408084 	slli.w	$r4,$r4,0x0
}
    2310:	4c000020 	jirl	$r0,$r1,0

0000000000002314 <get_time>:

int64 get_time()
{
    2314:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2318:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    231c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2320:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2324:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2328:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    232c:	44003c80 	bnez	$r4,60(0x3c) # 2368 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2330:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2334:	039f3c8c 	ori	$r12,$r4,0x7cf
    2338:	28c02064 	ld.d	$r4,$r3,8(0x8)
    233c:	2a40006d 	ld.hu	$r13,$r3,0
    2340:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2344:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2348:	00450c84 	srli.d	$r4,$r4,0x3
    234c:	001eb084 	mulh.du	$r4,$r4,$r12
    2350:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2354:	001db1ac 	mul.d	$r12,$r13,$r12
    2358:	00451084 	srli.d	$r4,$r4,0x4
    235c:	00109184 	add.d	$r4,$r12,$r4
}
    2360:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2364:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2368:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    236c:	53fff7ff 	b	-12(0xffffff4) # 2360 <get_time+0x4c>

0000000000002370 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2370:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2374:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2378:	00408084 	slli.w	$r4,$r4,0x0
}
    237c:	4c000020 	jirl	$r0,$r1,0

0000000000002380 <time>:
    register long a7 __asm__("a7") = n;
    2380:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2384:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2388:	00408084 	slli.w	$r4,$r4,0x0
}
    238c:	4c000020 	jirl	$r0,$r1,0

0000000000002390 <sleep>:

int sleep(unsigned long long time)
{
    2390:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2394:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2398:	00150064 	move	$r4,$r3
    239c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23a0:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23a4:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a8:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23ac:	44001080 	bnez	$r4,16(0x10) # 23bc <sleep+0x2c>
    return 0;
    23b0:	00150004 	move	$r4,$r0
}
    23b4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b8:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23bc:	24000064 	ldptr.w	$r4,$r3,0
}
    23c0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <set_priority>:
    register long a7 __asm__("a7") = n;
    23c8:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23cc:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23d0:	00408084 	slli.w	$r4,$r4,0x0
}
    23d4:	4c000020 	jirl	$r0,$r1,0

00000000000023d8 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23d8:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23dc:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <munmap>:
    register long a7 __asm__("a7") = n;
    23e4:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e8:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <wait>:

int wait(int *code)
{
    23f4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23f8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23fc:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2400:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2404:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2408:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    240c:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2410:	4c000020 	jirl	$r0,$r1,0

0000000000002414 <spawn>:
    register long a7 __asm__("a7") = n;
    2414:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2418:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <mailread>:
    register long a7 __asm__("a7") = n;
    2424:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2428:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    242c:	00408084 	slli.w	$r4,$r4,0x0
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2434:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2438:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <fstat>:
    register long a7 __asm__("a7") = n;
    2444:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2448:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    244c:	00408084 	slli.w	$r4,$r4,0x0
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2454:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2458:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    245c:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2460:	00408084 	slli.w	$r4,$r4,0x0
}
    2464:	4c000020 	jirl	$r0,$r1,0

0000000000002468 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2468:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    246c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2470:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2474:	00408084 	slli.w	$r4,$r4,0x0
}
    2478:	4c000020 	jirl	$r0,$r1,0

000000000000247c <link>:

int link(char *old_path, char *new_path)
{
    247c:	0015008c 	move	$r12,$r4
    2480:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2484:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2488:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    248c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2490:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2494:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2498:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    249c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <unlink>:

int unlink(char *path)
{
    24a4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24a8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24ac:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24b0:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b4:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24b8:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24bc:	4c000020 	jirl	$r0,$r1,0

00000000000024c0 <uname>:
    register long a7 __asm__("a7") = n;
    24c0:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24c4:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24c8:	00408084 	slli.w	$r4,$r4,0x0
}
    24cc:	4c000020 	jirl	$r0,$r1,0

00000000000024d0 <brk>:
    register long a7 __asm__("a7") = n;
    24d0:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24d4:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24d8:	00408084 	slli.w	$r4,$r4,0x0
}
    24dc:	4c000020 	jirl	$r0,$r1,0

00000000000024e0 <getcwd>:
    register long a7 __asm__("a7") = n;
    24e0:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24e4:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <chdir>:
    register long a7 __asm__("a7") = n;
    24ec:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24f0:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24f4:	00408084 	slli.w	$r4,$r4,0x0
}
    24f8:	4c000020 	jirl	$r0,$r1,0

00000000000024fc <mkdir>:

int mkdir(const char *path, mode_t mode){
    24fc:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2500:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2504:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2508:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    250c:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2510:	002b0000 	syscall	0x0
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <getdents>:
    register long a7 __asm__("a7") = n;
    251c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2520:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2524:	00408084 	slli.w	$r4,$r4,0x0
}
    2528:	4c000020 	jirl	$r0,$r1,0

000000000000252c <pipe>:
    register long a7 __asm__("a7") = n;
    252c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2530:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2534:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2538:	00408084 	slli.w	$r4,$r4,0x0
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <dup>:
    register long a7 __asm__("a7") = n;
    2540:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2544:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <dup2>:
    register long a7 __asm__("a7") = n;
    2550:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2554:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2558:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    255c:	00408084 	slli.w	$r4,$r4,0x0
}
    2560:	4c000020 	jirl	$r0,$r1,0

0000000000002564 <mount>:
    register long a7 __asm__("a7") = n;
    2564:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2568:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    256c:	00408084 	slli.w	$r4,$r4,0x0
}
    2570:	4c000020 	jirl	$r0,$r1,0

0000000000002574 <umount>:
    register long a7 __asm__("a7") = n;
    2574:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2578:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    257c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2580:	00408084 	slli.w	$r4,$r4,0x0
}
    2584:	4c000020 	jirl	$r0,$r1,0

0000000000002588 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2588:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    258c:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2590:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2594:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2598:	00150106 	move	$r6,$r8
	move $a3, $a5
    259c:	00150127 	move	$r7,$r9
	move $a4, $a6
    25a0:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25a4:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25a8:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25ac:	40000880 	beqz	$r4,8(0x8) # 25b4 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25b0:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25b4:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25b8:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25bc:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25c0:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25c4:	002b0000 	syscall	0x0
