
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/execve:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54008800 	bl	136(0x88) # 108c <__start_main>

0000000000001008 <test_execve>:
 * 测试成功则输出：
 * "  I am test_echo."
 * 测试失败则输出：
 * "  execve error."
 */
void test_execve(void){
    1008:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d47084 	addi.d	$r4,$r4,1308(0x51c)
void test_execve(void){
    1014:	29c0a061 	st.d	$r1,$r3,40(0x28)
    TEST_START(__func__);
    1018:	54037c00 	bl	892(0x37c) # 1394 <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d59084 	addi.d	$r4,$r4,1380(0x564)
    1024:	54037000 	bl	880(0x370) # 1394 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d46084 	addi.d	$r4,$r4,1304(0x518)
    1030:	54036400 	bl	868(0x364) # 1394 <puts>
    char *newargv[] = {"test_echo", NULL};
    1034:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1038:	02d4718c 	addi.d	$r12,$r12,1308(0x51c)
    char *newenviron[] = {NULL};
    execve("test_echo", newargv, newenviron);
    103c:	02c02066 	addi.d	$r6,$r3,8(0x8)
    1040:	02c04065 	addi.d	$r5,$r3,16(0x10)
    1044:	00150184 	move	$r4,$r12
    char *newargv[] = {"test_echo", NULL};
    1048:	29c0406c 	st.d	$r12,$r3,16(0x10)
    104c:	29c06060 	st.d	$r0,$r3,24(0x18)
    char *newenviron[] = {NULL};
    1050:	29c02060 	st.d	$r0,$r3,8(0x8)
    execve("test_echo", newargv, newenviron);
    1054:	54120000 	bl	4608(0x1200) # 2254 <execve>
    printf("  execve error.\n");
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d42084 	addi.d	$r4,$r4,1288(0x508)
    1060:	54036c00 	bl	876(0x36c) # 13cc <printf>
    //TEST_END(__func__);
}
    1064:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1068:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    106c:	4c000020 	jirl	$r0,$r1,0

0000000000001070 <main>:

int main(void){
    1070:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1074:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_execve();
    1078:	57ff93ff 	bl	-112(0xfffff90) # 1008 <test_execve>
    return 0;
}
    107c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1080:	00150004 	move	$r4,$r0
    1084:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1088:	4c000020 	jirl	$r0,$r1,0

000000000000108c <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    108c:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1090:	24000084 	ldptr.w	$r4,$r4,0
{
    1094:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1098:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    109c:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10a0:	57ffd3ff 	bl	-48(0xfffffd0) # 1070 <main>
    10a4:	54118000 	bl	4480(0x1180) # 2224 <exit>
	return 0;
}
    10a8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10ac:	00150004 	move	$r4,$r0
    10b0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10b4:	4c000020 	jirl	$r0,$r1,0

00000000000010b8 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10b8:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10bc:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10c0:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 128c <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10c4:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10c8:	1c00002c 	pcaddu12i	$r12,1(0x1)
    10cc:	02d3218c 	addi.d	$r12,$r12,1224(0x4c8)
    10d0:	002195cf 	mod.wu	$r15,$r14,$r5
    10d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10dc <printint.constprop.0+0x24>
    10d8:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    10dc:	002115cd 	div.wu	$r13,$r14,$r5
    10e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10e8 <printint.constprop.0+0x30>
    10e4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    10e8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    10ec:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    10f0:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    10f4:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    10f8:	680219c5 	bltu	$r14,$r5,536(0x218) # 1310 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    10fc:	002195af 	mod.wu	$r15,$r13,$r5
    1100:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1108 <printint.constprop.0+0x50>
    1104:	002a0007 	break	0x7
    1108:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    110c:	002115ae 	div.wu	$r14,$r13,$r5
    1110:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1118 <printint.constprop.0+0x60>
    1114:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1118:	38203d8f 	ldx.bu	$r15,$r12,$r15
    111c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1120:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 12e0 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1124:	002195cf 	mod.wu	$r15,$r14,$r5
    1128:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1130 <printint.constprop.0+0x78>
    112c:	002a0007 	break	0x7
    1130:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1134:	002115cd 	div.wu	$r13,$r14,$r5
    1138:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1140 <printint.constprop.0+0x88>
    113c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1140:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1144:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1148:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 12ec <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    114c:	002195af 	mod.wu	$r15,$r13,$r5
    1150:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1158 <printint.constprop.0+0xa0>
    1154:	002a0007 	break	0x7
    1158:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    115c:	002115ae 	div.wu	$r14,$r13,$r5
    1160:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1168 <printint.constprop.0+0xb0>
    1164:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1168:	38203d8f 	ldx.bu	$r15,$r12,$r15
    116c:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1170:	680189a5 	bltu	$r13,$r5,392(0x188) # 12f8 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1174:	002195cf 	mod.wu	$r15,$r14,$r5
    1178:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1180 <printint.constprop.0+0xc8>
    117c:	002a0007 	break	0x7
    1180:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1184:	002115cd 	div.wu	$r13,$r14,$r5
    1188:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1190 <printint.constprop.0+0xd8>
    118c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1190:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1194:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1198:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1304 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    119c:	002195af 	mod.wu	$r15,$r13,$r5
    11a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a8 <printint.constprop.0+0xf0>
    11a4:	002a0007 	break	0x7
    11a8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11ac:	002115ae 	div.wu	$r14,$r13,$r5
    11b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b8 <printint.constprop.0+0x100>
    11b4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11bc:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11c0:	680115a5 	bltu	$r13,$r5,276(0x114) # 12d4 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11c4:	002195cf 	mod.wu	$r15,$r14,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0x118>
    11cc:	002a0007 	break	0x7
    11d0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d4:	002115cd 	div.wu	$r13,$r14,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0x128>
    11dc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e4:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    11e8:	680131c5 	bltu	$r14,$r5,304(0x130) # 1318 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    11ec:	002195af 	mod.wu	$r15,$r13,$r5
    11f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f8 <printint.constprop.0+0x140>
    11f4:	002a0007 	break	0x7
    11f8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11fc:	002115ae 	div.wu	$r14,$r13,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0x150>
    1204:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1208:	38203d8f 	ldx.bu	$r15,$r12,$r15
    120c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1210:	680115a5 	bltu	$r13,$r5,276(0x114) # 1324 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1214:	002195cf 	mod.wu	$r15,$r14,$r5
    1218:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1220 <printint.constprop.0+0x168>
    121c:	002a0007 	break	0x7
    1220:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1224:	002115cd 	div.wu	$r13,$r14,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0x178>
    122c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1230:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1234:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1238:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1330 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    123c:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1240:	3820358d 	ldx.bu	$r13,$r12,$r13
    1244:	02801805 	addi.w	$r5,$r0,6(0x6)
    1248:	0280140c 	addi.w	$r12,$r0,5(0x5)
    124c:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1250:	64001880 	bge	$r4,$r0,24(0x18) # 1268 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1254:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1258:	0010b1ad 	add.d	$r13,$r13,$r12
    125c:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1260:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1264:	00150185 	move	$r5,$r12
    write(f, s, l);
    1268:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    126c:	02804006 	addi.w	$r6,$r0,16(0x10)
    1270:	001114c6 	sub.w	$r6,$r6,$r5
    1274:	02800404 	addi.w	$r4,$r0,1(0x1)
    1278:	00109585 	add.d	$r5,$r12,$r5
    127c:	540f3400 	bl	3892(0xf34) # 21b0 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1280:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1284:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1288:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    128c:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1290:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1294:	02cc018c 	addi.d	$r12,$r12,768(0x300)
    1298:	002195cf 	mod.wu	$r15,$r14,$r5
    129c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a4 <printint.constprop.0+0x1ec>
    12a0:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12a4:	002115cd 	div.wu	$r13,$r14,$r5
    12a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b0 <printint.constprop.0+0x1f8>
    12ac:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12b8:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12bc:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12c0:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 10fc <printint.constprop.0+0x44>
        buf[i--] = '-';
    12c4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12c8:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    12cc:	02803805 	addi.w	$r5,$r0,14(0xe)
    12d0:	53ff9bff 	b	-104(0xfffff98) # 1268 <printint.constprop.0+0x1b0>
    12d4:	0280240c 	addi.w	$r12,$r0,9(0x9)
    12d8:	02802805 	addi.w	$r5,$r0,10(0xa)
    12dc:	53ff77ff 	b	-140(0xfffff74) # 1250 <printint.constprop.0+0x198>
    12e0:	0280340c 	addi.w	$r12,$r0,13(0xd)
    12e4:	02803805 	addi.w	$r5,$r0,14(0xe)
    12e8:	53ff6bff 	b	-152(0xfffff68) # 1250 <printint.constprop.0+0x198>
    12ec:	0280300c 	addi.w	$r12,$r0,12(0xc)
    12f0:	02803405 	addi.w	$r5,$r0,13(0xd)
    12f4:	53ff5fff 	b	-164(0xfffff5c) # 1250 <printint.constprop.0+0x198>
    12f8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    12fc:	02803005 	addi.w	$r5,$r0,12(0xc)
    1300:	53ff53ff 	b	-176(0xfffff50) # 1250 <printint.constprop.0+0x198>
    1304:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1308:	02802c05 	addi.w	$r5,$r0,11(0xb)
    130c:	53ff47ff 	b	-188(0xfffff44) # 1250 <printint.constprop.0+0x198>
    i = 15;
    1310:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1314:	53ff57ff 	b	-172(0xfffff54) # 1268 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1318:	0280200c 	addi.w	$r12,$r0,8(0x8)
    131c:	02802405 	addi.w	$r5,$r0,9(0x9)
    1320:	53ff33ff 	b	-208(0xfffff30) # 1250 <printint.constprop.0+0x198>
    1324:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1328:	02802005 	addi.w	$r5,$r0,8(0x8)
    132c:	53ff27ff 	b	-220(0xfffff24) # 1250 <printint.constprop.0+0x198>
    1330:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1334:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1338:	53ff1bff 	b	-232(0xfffff18) # 1250 <printint.constprop.0+0x198>

000000000000133c <getchar>:
{
    133c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1340:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1344:	02800406 	addi.w	$r6,$r0,1(0x1)
    1348:	00150004 	move	$r4,$r0
{
    134c:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1350:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1354:	540e5000 	bl	3664(0xe50) # 21a4 <read>
}
    1358:	28c06061 	ld.d	$r1,$r3,24(0x18)
    135c:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1360:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1364:	4c000020 	jirl	$r0,$r1,0

0000000000001368 <putchar>:
{
    1368:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    136c:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1370:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1374:	02800406 	addi.w	$r6,$r0,1(0x1)
    1378:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    137c:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1380:	540e3000 	bl	3632(0xe30) # 21b0 <write>
}
    1384:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1388:	00408084 	slli.w	$r4,$r4,0x0
}
    138c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1390:	4c000020 	jirl	$r0,$r1,0

0000000000001394 <puts>:
{
    1394:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1398:	29c02061 	st.d	$r1,$r3,8(0x8)
    139c:	27000077 	stptr.d	$r23,$r3,0
    13a0:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13a4:	5406b800 	bl	1720(0x6b8) # 1a5c <strlen>
    13a8:	00150086 	move	$r6,$r4
    13ac:	001502e5 	move	$r5,$r23
    13b0:	02800404 	addi.w	$r4,$r0,1(0x1)
    13b4:	540dfc00 	bl	3580(0xdfc) # 21b0 <write>
}
    13b8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13bc:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13c0:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13c4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13c8:	4c000020 	jirl	$r0,$r1,0

00000000000013cc <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    13cc:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    13d0:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    13d4:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    13d8:	140000fa 	lu12i.w	$r26,7(0x7)
{
    13dc:	29c14079 	st.d	$r25,$r3,80(0x50)
    13e0:	29c1007b 	st.d	$r27,$r3,64(0x40)
    13e4:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    13e8:	29c1a061 	st.d	$r1,$r3,104(0x68)
    13ec:	29c18077 	st.d	$r23,$r3,96(0x60)
    13f0:	29c16078 	st.d	$r24,$r3,88(0x58)
    13f4:	0015009b 	move	$r27,$r4
    13f8:	29c1e065 	st.d	$r5,$r3,120(0x78)
    13fc:	29c20066 	st.d	$r6,$r3,128(0x80)
    1400:	29c22067 	st.d	$r7,$r3,136(0x88)
    1404:	29c24068 	st.d	$r8,$r3,144(0x90)
    1408:	29c26069 	st.d	$r9,$r3,152(0x98)
    140c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1410:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1414:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1418:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    141c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1420:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1424:	02c5c39c 	addi.d	$r28,$r28,368(0x170)
        if (!*s)
    1428:	2800036c 	ld.b	$r12,$r27,0
    142c:	40008980 	beqz	$r12,136(0x88) # 14b4 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1430:	58027d99 	beq	$r12,$r25,636(0x27c) # 16ac <printf+0x2e0>
    1434:	00150366 	move	$r6,$r27
    1438:	50000800 	b	8(0x8) # 1440 <printf+0x74>
    143c:	58009d99 	beq	$r12,$r25,156(0x9c) # 14d8 <printf+0x10c>
    1440:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1444:	280000cc 	ld.b	$r12,$r6,0
    1448:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 143c <printf+0x70>
    144c:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1450:	0011ecd7 	sub.d	$r23,$r6,$r27
    1454:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1458:	001502e6 	move	$r6,$r23
    145c:	00150365 	move	$r5,$r27
    1460:	02800404 	addi.w	$r4,$r0,1(0x1)
    1464:	540d4c00 	bl	3404(0xd4c) # 21b0 <write>
        out(f, a, l);
        if (l)
    1468:	4400b6e0 	bnez	$r23,180(0xb4) # 151c <printf+0x150>
            continue;
        if (s[1] == 0)
    146c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1470:	40004580 	beqz	$r12,68(0x44) # 14b4 <printf+0xe8>
            break;
        switch (s[1])
    1474:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1478:	5800d58d 	beq	$r12,$r13,212(0xd4) # 154c <printf+0x180>
    147c:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1524 <printf+0x158>
    1480:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1484:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1674 <printf+0x2a8>
    1488:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    148c:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 163c <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1490:	2600006c 	ldptr.d	$r12,$r3,0
    1494:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1498:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    149c:	24000184 	ldptr.w	$r4,$r12,0
    14a0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14a4:	2700006c 	stptr.d	$r12,$r3,0
    14a8:	57fc13ff 	bl	-1008(0xffffc10) # 10b8 <printint.constprop.0>
        if (!*s)
    14ac:	2800036c 	ld.b	$r12,$r27,0
    14b0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1430 <printf+0x64>
    }
    va_end(ap);
}
    14b4:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14b8:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14bc:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14c0:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14c4:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14c8:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    14cc:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    14d0:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    14d4:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    14d8:	280004cc 	ld.b	$r12,$r6,1(0x1)
    14dc:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 144c <printf+0x80>
    14e0:	001500d8 	move	$r24,$r6
    14e4:	50000c00 	b	12(0xc) # 14f0 <printf+0x124>
    14e8:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14ec:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1450 <printf+0x84>
    14f0:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    14f4:	2800030c 	ld.b	$r12,$r24,0
    14f8:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14fc:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 14e8 <printf+0x11c>
        l = z - a;
    1500:	0011ecd7 	sub.d	$r23,$r6,$r27
    1504:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1508:	001502e6 	move	$r6,$r23
    150c:	00150365 	move	$r5,$r27
    1510:	02800404 	addi.w	$r4,$r0,1(0x1)
    1514:	540c9c00 	bl	3228(0xc9c) # 21b0 <write>
        if (l)
    1518:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 146c <printf+0xa0>
    151c:	0015031b 	move	$r27,$r24
    1520:	53ff0bff 	b	-248(0xfffff08) # 1428 <printf+0x5c>
        switch (s[1])
    1524:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1528:	5c01158d 	bne	$r12,$r13,276(0x114) # 163c <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    152c:	2600006c 	ldptr.d	$r12,$r3,0
    1530:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1534:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1538:	24000184 	ldptr.w	$r4,$r12,0
    153c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1540:	2700006c 	stptr.d	$r12,$r3,0
    1544:	57fb77ff 	bl	-1164(0xffffb74) # 10b8 <printint.constprop.0>
        s += 2;
    1548:	53ff67ff 	b	-156(0xfffff64) # 14ac <printf+0xe0>
            printptr(va_arg(ap, uint64));
    154c:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1550:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1554:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1558:	260001ac 	ldptr.d	$r12,$r13,0
    155c:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1560:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1564:	0045f18a 	srli.d	$r10,$r12,0x3c
    1568:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    156c:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1570:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1574:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1578:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    157c:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1580:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1584:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1588:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    158c:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1590:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1594:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1598:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    159c:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15a0:	3820278a 	ldx.bu	$r10,$r28,$r9
    15a4:	38202389 	ldx.bu	$r9,$r28,$r8
    15a8:	38201f88 	ldx.bu	$r8,$r28,$r7
    15ac:	38201787 	ldx.bu	$r7,$r28,$r5
    15b0:	38201385 	ldx.bu	$r5,$r28,$r4
    15b4:	38205384 	ldx.bu	$r4,$r28,$r20
    15b8:	38204f94 	ldx.bu	$r20,$r28,$r19
    15bc:	38204b93 	ldx.bu	$r19,$r28,$r18
    15c0:	38204792 	ldx.bu	$r18,$r28,$r17
    15c4:	38204391 	ldx.bu	$r17,$r28,$r16
    15c8:	38203f90 	ldx.bu	$r16,$r28,$r15
    15cc:	38203b8f 	ldx.bu	$r15,$r28,$r14
    15d0:	3820378e 	ldx.bu	$r14,$r28,$r13
    15d4:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    15d8:	03403d8c 	andi	$r12,$r12,0xf
    15dc:	2900286b 	st.b	$r11,$r3,10(0xa)
    15e0:	29002c6a 	st.b	$r10,$r3,11(0xb)
    15e4:	29003069 	st.b	$r9,$r3,12(0xc)
    15e8:	29003468 	st.b	$r8,$r3,13(0xd)
    15ec:	29003867 	st.b	$r7,$r3,14(0xe)
    15f0:	29003c65 	st.b	$r5,$r3,15(0xf)
    15f4:	29004064 	st.b	$r4,$r3,16(0x10)
    15f8:	29004474 	st.b	$r20,$r3,17(0x11)
    15fc:	29004873 	st.b	$r19,$r3,18(0x12)
    1600:	29004c72 	st.b	$r18,$r3,19(0x13)
    1604:	29005071 	st.b	$r17,$r3,20(0x14)
    1608:	29005470 	st.b	$r16,$r3,21(0x15)
    160c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1610:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1614:	3820378d 	ldx.bu	$r13,$r28,$r13
    1618:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    161c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1620:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1624:	2900606d 	st.b	$r13,$r3,24(0x18)
    1628:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    162c:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1630:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1634:	540b7c00 	bl	2940(0xb7c) # 21b0 <write>
        s += 2;
    1638:	53fe77ff 	b	-396(0xffffe74) # 14ac <printf+0xe0>
    char byte = c;
    163c:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1640:	02800406 	addi.w	$r6,$r0,1(0x1)
    1644:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1648:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    164c:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1650:	540b6000 	bl	2912(0xb60) # 21b0 <write>
    char byte = c;
    1654:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1658:	02800406 	addi.w	$r6,$r0,1(0x1)
    165c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1660:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1664:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1668:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    166c:	540b4400 	bl	2884(0xb44) # 21b0 <write>
        s += 2;
    1670:	53fe3fff 	b	-452(0xffffe3c) # 14ac <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1674:	2600006c 	ldptr.d	$r12,$r3,0
    1678:	26000197 	ldptr.d	$r23,$r12,0
    167c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1680:	2700006c 	stptr.d	$r12,$r3,0
    1684:	40004ee0 	beqz	$r23,76(0x4c) # 16d0 <printf+0x304>
            l = strnlen(a, 200);
    1688:	02832005 	addi.w	$r5,$r0,200(0xc8)
    168c:	001502e4 	move	$r4,$r23
    1690:	5405b400 	bl	1460(0x5b4) # 1c44 <strnlen>
    1694:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1698:	001502e5 	move	$r5,$r23
    169c:	02800404 	addi.w	$r4,$r0,1(0x1)
    16a0:	540b1000 	bl	2832(0xb10) # 21b0 <write>
        s += 2;
    16a4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16a8:	53fe07ff 	b	-508(0xffffe04) # 14ac <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16ac:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16b0:	00150366 	move	$r6,$r27
    16b4:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 14e0 <printf+0x114>
    write(f, s, l);
    16b8:	00150006 	move	$r6,$r0
    16bc:	00150365 	move	$r5,$r27
    16c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    16c4:	540aec00 	bl	2796(0xaec) # 21b0 <write>
    16c8:	00150378 	move	$r24,$r27
    16cc:	53fda3ff 	b	-608(0xffffda0) # 146c <printf+0xa0>
                a = "(null)";
    16d0:	1c000037 	pcaddu12i	$r23,1(0x1)
    16d4:	02faa2f7 	addi.d	$r23,$r23,-344(0xea8)
    16d8:	53ffb3ff 	b	-80(0xfffffb0) # 1688 <printf+0x2bc>

00000000000016dc <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    16dc:	0280800c 	addi.w	$r12,$r0,32(0x20)
    16e0:	5800108c 	beq	$r4,$r12,16(0x10) # 16f0 <isspace+0x14>
    16e4:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    16e8:	02401484 	sltui	$r4,$r4,5(0x5)
    16ec:	4c000020 	jirl	$r0,$r1,0
    16f0:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    16f4:	4c000020 	jirl	$r0,$r1,0

00000000000016f8 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    16f8:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    16fc:	02402884 	sltui	$r4,$r4,10(0xa)
    1700:	4c000020 	jirl	$r0,$r1,0

0000000000001704 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1704:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1708:	0280100f 	addi.w	$r15,$r0,4(0x4)
    170c:	2800008d 	ld.b	$r13,$r4,0
    1710:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1714:	580061ae 	beq	$r13,$r14,96(0x60) # 1774 <atoi+0x70>
    1718:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1774 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    171c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1720:	580065ac 	beq	$r13,$r12,100(0x64) # 1784 <atoi+0x80>
    1724:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1728:	58007dac 	beq	$r13,$r12,124(0x7c) # 17a4 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    172c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1730:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1734:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1738:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    173c:	680061cf 	bltu	$r14,$r15,96(0x60) # 179c <atoi+0x98>
    int n = 0, neg = 0;
    1740:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1744:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1748:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    174c:	001c126f 	mul.w	$r15,$r19,$r4
    1750:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1754:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1758:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    175c:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1760:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1764:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1768:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 174c <atoi+0x48>
    return neg ? n : -n;
    176c:	40001280 	beqz	$r20,16(0x10) # 177c <atoi+0x78>
}
    1770:	4c000020 	jirl	$r0,$r1,0
        s++;
    1774:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1778:	53ff97ff 	b	-108(0xfffff94) # 170c <atoi+0x8>
    177c:	00113e04 	sub.w	$r4,$r16,$r15
    1780:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1784:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1788:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    178c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1790:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1794:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1798:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1740 <atoi+0x3c>
    179c:	00150004 	move	$r4,$r0
}
    17a0:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17a4:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17a8:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17ac:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17b0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17b4:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 179c <atoi+0x98>
        neg = 1;
    17b8:	02800414 	addi.w	$r20,$r0,1(0x1)
    17bc:	53ff87ff 	b	-124(0xfffff84) # 1740 <atoi+0x3c>

00000000000017c0 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    17c0:	400198c0 	beqz	$r6,408(0x198) # 1958 <memset+0x198>
    17c4:	0011900c 	sub.d	$r12,$r0,$r4
    17c8:	03401d8c 	andi	$r12,$r12,0x7
    17cc:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    17d0:	02402dae 	sltui	$r14,$r13,11(0xb)
    17d4:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    17d8:	0013b9ad 	masknez	$r13,$r13,$r14
    17dc:	001339ee 	maskeqz	$r14,$r15,$r14
    17e0:	001539ad 	or	$r13,$r13,$r14
    17e4:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    17e8:	00005ca5 	ext.w.b	$r5,$r5
    17ec:	680191ed 	bltu	$r15,$r13,400(0x190) # 197c <memset+0x1bc>
    17f0:	40018180 	beqz	$r12,384(0x180) # 1970 <memset+0x1b0>
    17f4:	29000085 	st.b	$r5,$r4,0
    17f8:	0280040d 	addi.w	$r13,$r0,1(0x1)
    17fc:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1800:	5801698d 	beq	$r12,$r13,360(0x168) # 1968 <memset+0x1a8>
    1804:	29000485 	st.b	$r5,$r4,1(0x1)
    1808:	0280080d 	addi.w	$r13,$r0,2(0x2)
    180c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1810:	5801798d 	beq	$r12,$r13,376(0x178) # 1988 <memset+0x1c8>
    1814:	29000885 	st.b	$r5,$r4,2(0x2)
    1818:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    181c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1820:	58013d8d 	beq	$r12,$r13,316(0x13c) # 195c <memset+0x19c>
    1824:	29000c85 	st.b	$r5,$r4,3(0x3)
    1828:	0280100d 	addi.w	$r13,$r0,4(0x4)
    182c:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1830:	5801618d 	beq	$r12,$r13,352(0x160) # 1990 <memset+0x1d0>
    1834:	29001085 	st.b	$r5,$r4,4(0x4)
    1838:	0280140d 	addi.w	$r13,$r0,5(0x5)
    183c:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1840:	5801598d 	beq	$r12,$r13,344(0x158) # 1998 <memset+0x1d8>
    1844:	29001485 	st.b	$r5,$r4,5(0x5)
    1848:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    184c:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1850:	5c01518d 	bne	$r12,$r13,336(0x150) # 19a0 <memset+0x1e0>
    1854:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1858:	29001885 	st.b	$r5,$r4,6(0x6)
    185c:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1860:	0015000d 	move	$r13,$r0
    1864:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1868:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    186c:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1870:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1874:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1878:	0011b0d0 	sub.d	$r16,$r6,$r12
    187c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1880:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1884:	0010b08c 	add.d	$r12,$r4,$r12
    1888:	00450e0f 	srli.d	$r15,$r16,0x3
    188c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1890:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1894:	2700018d 	stptr.d	$r13,$r12,0
    1898:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    189c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1894 <memset+0xd4>
    18a0:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18a4:	0014be0f 	and	$r15,$r16,$r15
    18a8:	004081ed 	slli.w	$r13,$r15,0x0
    18ac:	0010bdcc 	add.d	$r12,$r14,$r15
    18b0:	001045ad 	add.w	$r13,$r13,$r17
    18b4:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1964 <memset+0x1a4>
    18b8:	29000185 	st.b	$r5,$r12,0
    18bc:	028005ae 	addi.w	$r14,$r13,1(0x1)
    18c0:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1958 <memset+0x198>
    18c4:	29000585 	st.b	$r5,$r12,1(0x1)
    18c8:	028009ae 	addi.w	$r14,$r13,2(0x2)
    18cc:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1958 <memset+0x198>
    18d0:	29000985 	st.b	$r5,$r12,2(0x2)
    18d4:	02800dae 	addi.w	$r14,$r13,3(0x3)
    18d8:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1958 <memset+0x198>
    18dc:	29000d85 	st.b	$r5,$r12,3(0x3)
    18e0:	028011ae 	addi.w	$r14,$r13,4(0x4)
    18e4:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1958 <memset+0x198>
    18e8:	29001185 	st.b	$r5,$r12,4(0x4)
    18ec:	028015ae 	addi.w	$r14,$r13,5(0x5)
    18f0:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1958 <memset+0x198>
    18f4:	29001585 	st.b	$r5,$r12,5(0x5)
    18f8:	028019ae 	addi.w	$r14,$r13,6(0x6)
    18fc:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1958 <memset+0x198>
    1900:	29001985 	st.b	$r5,$r12,6(0x6)
    1904:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1908:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1958 <memset+0x198>
    190c:	29001d85 	st.b	$r5,$r12,7(0x7)
    1910:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1914:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1958 <memset+0x198>
    1918:	29002185 	st.b	$r5,$r12,8(0x8)
    191c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1920:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1958 <memset+0x198>
    1924:	29002585 	st.b	$r5,$r12,9(0x9)
    1928:	028029ae 	addi.w	$r14,$r13,10(0xa)
    192c:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1958 <memset+0x198>
    1930:	29002985 	st.b	$r5,$r12,10(0xa)
    1934:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1938:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1958 <memset+0x198>
    193c:	29002d85 	st.b	$r5,$r12,11(0xb)
    1940:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1944:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1958 <memset+0x198>
    1948:	29003185 	st.b	$r5,$r12,12(0xc)
    194c:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1950:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1958 <memset+0x198>
    1954:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1958:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    195c:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1960:	53ff03ff 	b	-256(0xfffff00) # 1860 <memset+0xa0>
    1964:	4c000020 	jirl	$r0,$r1,0
    1968:	02800411 	addi.w	$r17,$r0,1(0x1)
    196c:	53fef7ff 	b	-268(0xffffef4) # 1860 <memset+0xa0>
    1970:	0015008e 	move	$r14,$r4
    1974:	00150011 	move	$r17,$r0
    1978:	53feebff 	b	-280(0xffffee8) # 1860 <memset+0xa0>
    197c:	0015008c 	move	$r12,$r4
    1980:	0015000d 	move	$r13,$r0
    1984:	53ff37ff 	b	-204(0xfffff34) # 18b8 <memset+0xf8>
    1988:	02800811 	addi.w	$r17,$r0,2(0x2)
    198c:	53fed7ff 	b	-300(0xffffed4) # 1860 <memset+0xa0>
    1990:	02801011 	addi.w	$r17,$r0,4(0x4)
    1994:	53fecfff 	b	-308(0xffffecc) # 1860 <memset+0xa0>
    1998:	02801411 	addi.w	$r17,$r0,5(0x5)
    199c:	53fec7ff 	b	-316(0xffffec4) # 1860 <memset+0xa0>
    19a0:	02801811 	addi.w	$r17,$r0,6(0x6)
    19a4:	53febfff 	b	-324(0xffffebc) # 1860 <memset+0xa0>

00000000000019a8 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19a8:	2800008c 	ld.b	$r12,$r4,0
    19ac:	280000ae 	ld.b	$r14,$r5,0
    19b0:	5c0035cc 	bne	$r14,$r12,52(0x34) # 19e4 <strcmp+0x3c>
    19b4:	40003980 	beqz	$r12,56(0x38) # 19ec <strcmp+0x44>
    19b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19bc:	50000800 	b	8(0x8) # 19c4 <strcmp+0x1c>
    19c0:	400019a0 	beqz	$r13,24(0x18) # 19d8 <strcmp+0x30>
    19c4:	3800308d 	ldx.b	$r13,$r4,$r12
    19c8:	380030ae 	ldx.b	$r14,$r5,$r12
    19cc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    19d0:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 19c0 <strcmp+0x18>
    19d4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    19d8:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    19dc:	001111a4 	sub.w	$r4,$r13,$r4
    19e0:	4c000020 	jirl	$r0,$r1,0
    19e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    19e8:	53fff3ff 	b	-16(0xffffff0) # 19d8 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    19ec:	0015000d 	move	$r13,$r0
    19f0:	53ffebff 	b	-24(0xfffffe8) # 19d8 <strcmp+0x30>

00000000000019f4 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    19f4:	400054c0 	beqz	$r6,84(0x54) # 1a48 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    19f8:	2a00008d 	ld.bu	$r13,$r4,0
    19fc:	2a0000ae 	ld.bu	$r14,$r5,0
    1a00:	40003da0 	beqz	$r13,60(0x3c) # 1a3c <strncmp+0x48>
    1a04:	40003dc0 	beqz	$r14,60(0x3c) # 1a40 <strncmp+0x4c>
    if (!n--)
    1a08:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a0c:	400034c0 	beqz	$r6,52(0x34) # 1a40 <strncmp+0x4c>
    1a10:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a14:	580019ae 	beq	$r13,$r14,24(0x18) # 1a2c <strncmp+0x38>
    1a18:	50002800 	b	40(0x28) # 1a40 <strncmp+0x4c>
    1a1c:	400035c0 	beqz	$r14,52(0x34) # 1a50 <strncmp+0x5c>
    1a20:	580020cc 	beq	$r6,$r12,32(0x20) # 1a40 <strncmp+0x4c>
    1a24:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a28:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a50 <strncmp+0x5c>
    1a2c:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a30:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a34:	001501af 	move	$r15,$r13
    1a38:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a1c <strncmp+0x28>
    1a3c:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a40:	001139a4 	sub.w	$r4,$r13,$r14
    1a44:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a48:	00150004 	move	$r4,$r0
}
    1a4c:	4c000020 	jirl	$r0,$r1,0
    1a50:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a54:	001139a4 	sub.w	$r4,$r13,$r14
    1a58:	4c000020 	jirl	$r0,$r1,0

0000000000001a5c <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a5c:	03401c8c 	andi	$r12,$r4,0x7
    1a60:	4000b180 	beqz	$r12,176(0xb0) # 1b10 <strlen+0xb4>
        if (!*s)
    1a64:	2800008c 	ld.b	$r12,$r4,0
    1a68:	4000b180 	beqz	$r12,176(0xb0) # 1b18 <strlen+0xbc>
    1a6c:	0015008c 	move	$r12,$r4
    1a70:	50000c00 	b	12(0xc) # 1a7c <strlen+0x20>
    1a74:	2800018d 	ld.b	$r13,$r12,0
    1a78:	400091a0 	beqz	$r13,144(0x90) # 1b08 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1a7c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a80:	03401d8d 	andi	$r13,$r12,0x7
    1a84:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1a74 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1a88:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1a8c:	2600018f 	ldptr.d	$r15,$r12,0
    1a90:	03bbfdad 	ori	$r13,$r13,0xeff
    1a94:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1a98:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1a9c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1aa0:	038201ce 	ori	$r14,$r14,0x80
    1aa4:	0010b5ed 	add.d	$r13,$r15,$r13
    1aa8:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1aac:	0016bdad 	andn	$r13,$r13,$r15
    1ab0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1ab4:	0014b9ae 	and	$r14,$r13,$r14
    1ab8:	440049c0 	bnez	$r14,72(0x48) # 1b00 <strlen+0xa4>
    1abc:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1ac0:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1ac4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1ac8:	2600018e 	ldptr.d	$r14,$r12,0
    1acc:	03bbfe2d 	ori	$r13,$r17,0xeff
    1ad0:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ad4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ad8:	0382020f 	ori	$r15,$r16,0x80
    1adc:	0010b5cd 	add.d	$r13,$r14,$r13
    1ae0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1ae4:	0016b9ad 	andn	$r13,$r13,$r14
    1ae8:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1aec:	0014bdad 	and	$r13,$r13,$r15
    1af0:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1ac4 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1af4:	2800018d 	ld.b	$r13,$r12,0
    1af8:	400011a0 	beqz	$r13,16(0x10) # 1b08 <strlen+0xac>
    1afc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b00:	2800018d 	ld.b	$r13,$r12,0
    1b04:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1afc <strlen+0xa0>
        ;
    return s - a;
    1b08:	00119184 	sub.d	$r4,$r12,$r4
}
    1b0c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b10:	0015008c 	move	$r12,$r4
    1b14:	53ff77ff 	b	-140(0xfffff74) # 1a88 <strlen+0x2c>
        if (!*s)
    1b18:	00150004 	move	$r4,$r0
            return s - a;
    1b1c:	4c000020 	jirl	$r0,$r1,0

0000000000001b20 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b20:	03401c8c 	andi	$r12,$r4,0x7
    1b24:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b28:	44002180 	bnez	$r12,32(0x20) # 1b48 <memchr+0x28>
    1b2c:	50002c00 	b	44(0x2c) # 1b58 <memchr+0x38>
    1b30:	2a00008c 	ld.bu	$r12,$r4,0
    1b34:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c2c <memchr+0x10c>
    1b38:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b3c:	03401c8c 	andi	$r12,$r4,0x7
    1b40:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b44:	40001580 	beqz	$r12,20(0x14) # 1b58 <memchr+0x38>
    1b48:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b30 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b4c:	0015000d 	move	$r13,$r0
}
    1b50:	001501a4 	move	$r4,$r13
    1b54:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b58:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b5c:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b50 <memchr+0x30>
    1b60:	2a00008c 	ld.bu	$r12,$r4,0
    1b64:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c2c <memchr+0x10c>
        size_t k = ONES * c;
    1b68:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1b6c:	0384058c 	ori	$r12,$r12,0x101
    1b70:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1b74:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b78:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1b7c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b80:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c3c <memchr+0x11c>
    1b84:	2600008d 	ldptr.d	$r13,$r4,0
    1b88:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b8c:	038201ce 	ori	$r14,$r14,0x80
    1b90:	0015b60d 	xor	$r13,$r16,$r13
    1b94:	0011b1ac 	sub.d	$r12,$r13,$r12
    1b98:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b9c:	0016b58c 	andn	$r12,$r12,$r13
    1ba0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1ba4:	0014b98c 	and	$r12,$r12,$r14
    1ba8:	44009580 	bnez	$r12,148(0x94) # 1c3c <memchr+0x11c>
    1bac:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1bb0:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1bb4:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1bb8:	50002000 	b	32(0x20) # 1bd8 <memchr+0xb8>
    1bbc:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1bc0:	0015b20c 	xor	$r12,$r16,$r12
    1bc4:	0010b98e 	add.d	$r14,$r12,$r14
    1bc8:	0016b1cc 	andn	$r12,$r14,$r12
    1bcc:	0014bd8c 	and	$r12,$r12,$r15
    1bd0:	44006580 	bnez	$r12,100(0x64) # 1c34 <memchr+0x114>
    1bd4:	001501a4 	move	$r4,$r13
    1bd8:	03bbfe4e 	ori	$r14,$r18,0xeff
    1bdc:	0382022f 	ori	$r15,$r17,0x80
    1be0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1be4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1be8:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1bec:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1bf0:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bf4:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1bf8:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1bbc <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1bfc:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b4c <memchr+0x2c>
    1c00:	2a0001ac 	ld.bu	$r12,$r13,0
    1c04:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b50 <memchr+0x30>
    1c08:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c0c:	001099a6 	add.d	$r6,$r13,$r6
    1c10:	50001000 	b	16(0x10) # 1c20 <memchr+0x100>
    1c14:	2a00018e 	ld.bu	$r14,$r12,0
    1c18:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c1c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b50 <memchr+0x30>
    1c20:	0015018d 	move	$r13,$r12
    1c24:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c14 <memchr+0xf4>
    1c28:	53ff27ff 	b	-220(0xfffff24) # 1b4c <memchr+0x2c>
    1c2c:	0015008d 	move	$r13,$r4
    1c30:	53ffd3ff 	b	-48(0xfffffd0) # 1c00 <memchr+0xe0>
    1c34:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c38:	53ffcfff 	b	-52(0xfffffcc) # 1c04 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c3c:	0015008d 	move	$r13,$r4
    1c40:	53ffcbff 	b	-56(0xfffffc8) # 1c08 <memchr+0xe8>

0000000000001c44 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c44:	03401c8c 	andi	$r12,$r4,0x7
    1c48:	40011980 	beqz	$r12,280(0x118) # 1d60 <strnlen+0x11c>
    1c4c:	4000f4a0 	beqz	$r5,244(0xf4) # 1d40 <strnlen+0xfc>
    1c50:	2a00008c 	ld.bu	$r12,$r4,0
    1c54:	4000f580 	beqz	$r12,244(0xf4) # 1d48 <strnlen+0x104>
    1c58:	001500ac 	move	$r12,$r5
    1c5c:	0015008d 	move	$r13,$r4
    1c60:	50001000 	b	16(0x10) # 1c70 <strnlen+0x2c>
    1c64:	4000dd80 	beqz	$r12,220(0xdc) # 1d40 <strnlen+0xfc>
    1c68:	2a0001ae 	ld.bu	$r14,$r13,0
    1c6c:	4000e5c0 	beqz	$r14,228(0xe4) # 1d50 <strnlen+0x10c>
    1c70:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1c74:	03401dae 	andi	$r14,$r13,0x7
    1c78:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1c7c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1c64 <strnlen+0x20>
    if (n && *s != c)
    1c80:	4000c180 	beqz	$r12,192(0xc0) # 1d40 <strnlen+0xfc>
    1c84:	2a0001ae 	ld.bu	$r14,$r13,0
    1c88:	4000c9c0 	beqz	$r14,200(0xc8) # 1d50 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c8c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1c90:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1d6c <strnlen+0x128>
    1c94:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1c98:	260001b0 	ldptr.d	$r16,$r13,0
    1c9c:	03bbfdce 	ori	$r14,$r14,0xeff
    1ca0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1ca4:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ca8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cac:	038201ef 	ori	$r15,$r15,0x80
    1cb0:	0010ba0e 	add.d	$r14,$r16,$r14
    1cb4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cb8:	0016c1ce 	andn	$r14,$r14,$r16
    1cbc:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cc0:	0014bdcf 	and	$r15,$r14,$r15
    1cc4:	4400a9e0 	bnez	$r15,168(0xa8) # 1d6c <strnlen+0x128>
    1cc8:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1ccc:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1cd0:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1cd4:	50001c00 	b	28(0x1c) # 1cf0 <strnlen+0xac>
    1cd8:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1cdc:	0010b9ee 	add.d	$r14,$r15,$r14
    1ce0:	0016bdce 	andn	$r14,$r14,$r15
    1ce4:	0014c1ce 	and	$r14,$r14,$r16
    1ce8:	440071c0 	bnez	$r14,112(0x70) # 1d58 <strnlen+0x114>
    1cec:	0015022d 	move	$r13,$r17
    1cf0:	03bbfe6e 	ori	$r14,$r19,0xeff
    1cf4:	03820250 	ori	$r16,$r18,0x80
    1cf8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cfc:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d00:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d04:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d08:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d0c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d10:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1cd8 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d14:	40002d80 	beqz	$r12,44(0x2c) # 1d40 <strnlen+0xfc>
    1d18:	2a00022d 	ld.bu	$r13,$r17,0
    1d1c:	400021a0 	beqz	$r13,32(0x20) # 1d3c <strnlen+0xf8>
    1d20:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d24:	0010b22c 	add.d	$r12,$r17,$r12
    1d28:	001501b1 	move	$r17,$r13
    1d2c:	5800158d 	beq	$r12,$r13,20(0x14) # 1d40 <strnlen+0xfc>
    1d30:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d34:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d38:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d28 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d3c:	00119225 	sub.d	$r5,$r17,$r4
}
    1d40:	001500a4 	move	$r4,$r5
    1d44:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d48:	001500ac 	move	$r12,$r5
    1d4c:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d50:	001501b1 	move	$r17,$r13
    1d54:	53ffc7ff 	b	-60(0xfffffc4) # 1d18 <strnlen+0xd4>
    1d58:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d5c:	53ffc3ff 	b	-64(0xfffffc0) # 1d1c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d60:	001500ac 	move	$r12,$r5
    1d64:	0015008d 	move	$r13,$r4
    1d68:	53ff1bff 	b	-232(0xfffff18) # 1c80 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d6c:	001501b1 	move	$r17,$r13
    1d70:	53ffb3ff 	b	-80(0xfffffb0) # 1d20 <strnlen+0xdc>

0000000000001d74 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1d74:	0015948c 	xor	$r12,$r4,$r5
    1d78:	03401d8c 	andi	$r12,$r12,0x7
    1d7c:	4400ad80 	bnez	$r12,172(0xac) # 1e28 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1d80:	03401cac 	andi	$r12,$r5,0x7
    1d84:	40003180 	beqz	$r12,48(0x30) # 1db4 <strcpy+0x40>
            if (!(*d = *s))
    1d88:	280000ac 	ld.b	$r12,$r5,0
    1d8c:	2900008c 	st.b	$r12,$r4,0
    1d90:	44001580 	bnez	$r12,20(0x14) # 1da4 <strcpy+0x30>
    1d94:	5000bc00 	b	188(0xbc) # 1e50 <strcpy+0xdc>
    1d98:	280000ac 	ld.b	$r12,$r5,0
    1d9c:	2900008c 	st.b	$r12,$r4,0
    1da0:	4000a980 	beqz	$r12,168(0xa8) # 1e48 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1da4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1da8:	03401cac 	andi	$r12,$r5,0x7
    1dac:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1db0:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1d98 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1db4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1db8:	260000ae 	ldptr.d	$r14,$r5,0
    1dbc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1dc0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1dc4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1dc8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1dcc:	038201ad 	ori	$r13,$r13,0x80
    1dd0:	0010b1cc 	add.d	$r12,$r14,$r12
    1dd4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1dd8:	0016b98c 	andn	$r12,$r12,$r14
    1ddc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1de0:	0014b58c 	and	$r12,$r12,$r13
    1de4:	44004580 	bnez	$r12,68(0x44) # 1e28 <strcpy+0xb4>
    1de8:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1dec:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1df0:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1df4:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1df8:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1dfc:	260000ae 	ldptr.d	$r14,$r5,0
    1e00:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e04:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e08:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e0c:	038201ed 	ori	$r13,$r15,0x80
    1e10:	0010b1cc 	add.d	$r12,$r14,$r12
    1e14:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e18:	0016b98c 	andn	$r12,$r12,$r14
    1e1c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e20:	0014b58c 	and	$r12,$r12,$r13
    1e24:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1df0 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e28:	280000ac 	ld.b	$r12,$r5,0
    1e2c:	2900008c 	st.b	$r12,$r4,0
    1e30:	40001d80 	beqz	$r12,28(0x1c) # 1e4c <strcpy+0xd8>
    1e34:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e38:	280000ac 	ld.b	$r12,$r5,0
    1e3c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e40:	2900008c 	st.b	$r12,$r4,0
    1e44:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e34 <strcpy+0xc0>
        ;
    return d;
}
    1e48:	4c000020 	jirl	$r0,$r1,0
    1e4c:	4c000020 	jirl	$r0,$r1,0
    1e50:	4c000020 	jirl	$r0,$r1,0

0000000000001e54 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e54:	0015948c 	xor	$r12,$r4,$r5
    1e58:	03401d8c 	andi	$r12,$r12,0x7
    1e5c:	4400ad80 	bnez	$r12,172(0xac) # 1f08 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1e60:	03401cac 	andi	$r12,$r5,0x7
    1e64:	44010180 	bnez	$r12,256(0x100) # 1f64 <strncpy+0x110>
            ;
        if (!n || !*s)
    1e68:	400100c0 	beqz	$r6,256(0x100) # 1f68 <strncpy+0x114>
    1e6c:	280000af 	ld.b	$r15,$r5,0
    1e70:	400105e0 	beqz	$r15,260(0x104) # 1f74 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1e74:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1e78:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2150 <strncpy+0x2fc>
    1e7c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e80:	260000ae 	ldptr.d	$r14,$r5,0
    1e84:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e88:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e8c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e90:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e94:	038201ad 	ori	$r13,$r13,0x80
    1e98:	0010b1cc 	add.d	$r12,$r14,$r12
    1e9c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ea0:	0016b98c 	andn	$r12,$r12,$r14
    1ea4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ea8:	0014b58c 	and	$r12,$r12,$r13
    1eac:	4402a580 	bnez	$r12,676(0x2a4) # 2150 <strncpy+0x2fc>
    1eb0:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1eb4:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1eb8:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1ebc:	50001c00 	b	28(0x1c) # 1ed8 <strncpy+0x84>
    1ec0:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1ec4:	0010b1cc 	add.d	$r12,$r14,$r12
    1ec8:	0016b98c 	andn	$r12,$r12,$r14
    1ecc:	0014b58c 	and	$r12,$r12,$r13
    1ed0:	44024580 	bnez	$r12,580(0x244) # 2114 <strncpy+0x2c0>
    1ed4:	001501e5 	move	$r5,$r15
    1ed8:	03bbfe2c 	ori	$r12,$r17,0xeff
    1edc:	0382020d 	ori	$r13,$r16,0x80
    1ee0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ee4:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1ee8:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1eec:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1ef0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ef4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ef8:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1efc:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f00:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1ec0 <strncpy+0x6c>
    1f04:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f08:	400060c0 	beqz	$r6,96(0x60) # 1f68 <strncpy+0x114>
    1f0c:	280000ac 	ld.b	$r12,$r5,0
    1f10:	0015008d 	move	$r13,$r4
    1f14:	2900008c 	st.b	$r12,$r4,0
    1f18:	44001580 	bnez	$r12,20(0x14) # 1f2c <strncpy+0xd8>
    1f1c:	50005c00 	b	92(0x5c) # 1f78 <strncpy+0x124>
    1f20:	280000ac 	ld.b	$r12,$r5,0
    1f24:	290001ac 	st.b	$r12,$r13,0
    1f28:	40005180 	beqz	$r12,80(0x50) # 1f78 <strncpy+0x124>
    1f2c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f30:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f34:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f38:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f20 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f3c:	001501a4 	move	$r4,$r13
    1f40:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f44:	280000ac 	ld.b	$r12,$r5,0
    1f48:	2900008c 	st.b	$r12,$r4,0
    1f4c:	40002980 	beqz	$r12,40(0x28) # 1f74 <strncpy+0x120>
    1f50:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f54:	03401cac 	andi	$r12,$r5,0x7
    1f58:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f5c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f60:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1e68 <strncpy+0x14>
    1f64:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f44 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1f68:	0015008d 	move	$r13,$r4
}
    1f6c:	001501a4 	move	$r4,$r13
    1f70:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1f74:	0015008d 	move	$r13,$r4
    1f78:	0011b40c 	sub.d	$r12,$r0,$r13
    1f7c:	03401d8c 	andi	$r12,$r12,0x7
    1f80:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1f84:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1f88:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1f8c:	0013bdce 	masknez	$r14,$r14,$r15
    1f90:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1f94:	00133e0f 	maskeqz	$r15,$r16,$r15
    1f98:	00153dce 	or	$r14,$r14,$r15
    1f9c:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fa0:	00131a31 	maskeqz	$r17,$r17,$r6
    1fa4:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1fa8:	001540d0 	or	$r16,$r6,$r16
    1fac:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2124 <strncpy+0x2d0>
    1fb0:	40015980 	beqz	$r12,344(0x158) # 2108 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1fb4:	290001a0 	st.b	$r0,$r13,0
    1fb8:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1fbc:	5801458f 	beq	$r12,$r15,324(0x144) # 2100 <strncpy+0x2ac>
    1fc0:	290005a0 	st.b	$r0,$r13,1(0x1)
    1fc4:	0280080f 	addi.w	$r15,$r0,2(0x2)
    1fc8:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    1fcc:	5801658f 	beq	$r12,$r15,356(0x164) # 2130 <strncpy+0x2dc>
    1fd0:	290009a0 	st.b	$r0,$r13,2(0x2)
    1fd4:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    1fd8:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    1fdc:	58011d8f 	beq	$r12,$r15,284(0x11c) # 20f8 <strncpy+0x2a4>
    1fe0:	29000da0 	st.b	$r0,$r13,3(0x3)
    1fe4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1fe8:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    1fec:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2138 <strncpy+0x2e4>
    1ff0:	290011a0 	st.b	$r0,$r13,4(0x4)
    1ff4:	0280140f 	addi.w	$r15,$r0,5(0x5)
    1ff8:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    1ffc:	5801458f 	beq	$r12,$r15,324(0x144) # 2140 <strncpy+0x2ec>
    2000:	290015a0 	st.b	$r0,$r13,5(0x5)
    2004:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2008:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    200c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2148 <strncpy+0x2f4>
    2010:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2014:	290019a0 	st.b	$r0,$r13,6(0x6)
    2018:	02801c12 	addi.w	$r18,$r0,7(0x7)
    201c:	0011b210 	sub.d	$r16,$r16,$r12
    2020:	00450e11 	srli.d	$r17,$r16,0x3
    2024:	0010b1ac 	add.d	$r12,$r13,$r12
    2028:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    202c:	27000180 	stptr.d	$r0,$r12,0
    2030:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2034:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 202c <strncpy+0x1d8>
    2038:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    203c:	0014c611 	and	$r17,$r16,$r17
    2040:	0040822f 	slli.w	$r15,$r17,0x0
    2044:	001049ef 	add.w	$r15,$r15,$r18
    2048:	0010c5cc 	add.d	$r12,$r14,$r17
    204c:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f3c <strncpy+0xe8>
    2050:	29000180 	st.b	$r0,$r12,0
    2054:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2058:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f3c <strncpy+0xe8>
    205c:	29000580 	st.b	$r0,$r12,1(0x1)
    2060:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2064:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f3c <strncpy+0xe8>
    2068:	29000980 	st.b	$r0,$r12,2(0x2)
    206c:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2070:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f3c <strncpy+0xe8>
    2074:	29000d80 	st.b	$r0,$r12,3(0x3)
    2078:	028011ee 	addi.w	$r14,$r15,4(0x4)
    207c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f3c <strncpy+0xe8>
    2080:	29001180 	st.b	$r0,$r12,4(0x4)
    2084:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2088:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f3c <strncpy+0xe8>
    208c:	29001580 	st.b	$r0,$r12,5(0x5)
    2090:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2094:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f3c <strncpy+0xe8>
    2098:	29001980 	st.b	$r0,$r12,6(0x6)
    209c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20a0:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f3c <strncpy+0xe8>
    20a4:	29001d80 	st.b	$r0,$r12,7(0x7)
    20a8:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20ac:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f3c <strncpy+0xe8>
    20b0:	29002180 	st.b	$r0,$r12,8(0x8)
    20b4:	028025ee 	addi.w	$r14,$r15,9(0x9)
    20b8:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f3c <strncpy+0xe8>
    20bc:	29002580 	st.b	$r0,$r12,9(0x9)
    20c0:	028029ee 	addi.w	$r14,$r15,10(0xa)
    20c4:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f3c <strncpy+0xe8>
    20c8:	29002980 	st.b	$r0,$r12,10(0xa)
    20cc:	02802dee 	addi.w	$r14,$r15,11(0xb)
    20d0:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f3c <strncpy+0xe8>
    20d4:	29002d80 	st.b	$r0,$r12,11(0xb)
    20d8:	028031ee 	addi.w	$r14,$r15,12(0xc)
    20dc:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f3c <strncpy+0xe8>
    20e0:	29003180 	st.b	$r0,$r12,12(0xc)
    20e4:	028035ef 	addi.w	$r15,$r15,13(0xd)
    20e8:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f3c <strncpy+0xe8>
    20ec:	29003580 	st.b	$r0,$r12,13(0xd)
}
    20f0:	001501a4 	move	$r4,$r13
    20f4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    20f8:	02800c12 	addi.w	$r18,$r0,3(0x3)
    20fc:	53ff23ff 	b	-224(0xfffff20) # 201c <strncpy+0x1c8>
    2100:	02800412 	addi.w	$r18,$r0,1(0x1)
    2104:	53ff1bff 	b	-232(0xfffff18) # 201c <strncpy+0x1c8>
    2108:	001501ae 	move	$r14,$r13
    210c:	00150012 	move	$r18,$r0
    2110:	53ff0fff 	b	-244(0xfffff0c) # 201c <strncpy+0x1c8>
    2114:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2118:	0015008d 	move	$r13,$r4
    211c:	001501e5 	move	$r5,$r15
    2120:	53fdf7ff 	b	-524(0xffffdf4) # 1f14 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2124:	001501ac 	move	$r12,$r13
    2128:	0015000f 	move	$r15,$r0
    212c:	53ff27ff 	b	-220(0xfffff24) # 2050 <strncpy+0x1fc>
    2130:	02800812 	addi.w	$r18,$r0,2(0x2)
    2134:	53feebff 	b	-280(0xffffee8) # 201c <strncpy+0x1c8>
    2138:	02801012 	addi.w	$r18,$r0,4(0x4)
    213c:	53fee3ff 	b	-288(0xffffee0) # 201c <strncpy+0x1c8>
    2140:	02801412 	addi.w	$r18,$r0,5(0x5)
    2144:	53fedbff 	b	-296(0xffffed8) # 201c <strncpy+0x1c8>
    2148:	02801812 	addi.w	$r18,$r0,6(0x6)
    214c:	53fed3ff 	b	-304(0xffffed0) # 201c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2150:	2900008f 	st.b	$r15,$r4,0
    2154:	0015008d 	move	$r13,$r4
    2158:	53fdd7ff 	b	-556(0xffffdd4) # 1f2c <strncpy+0xd8>

000000000000215c <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    215c:	0015008c 	move	$r12,$r4
    2160:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2164:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2168:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    216c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2170:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2174:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2178:	00408084 	slli.w	$r4,$r4,0x0
}
    217c:	4c000020 	jirl	$r0,$r1,0

0000000000002180 <openat>:
    register long a7 __asm__("a7") = n;
    2180:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2184:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2188:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    218c:	00408084 	slli.w	$r4,$r4,0x0
}
    2190:	4c000020 	jirl	$r0,$r1,0

0000000000002194 <close>:
    register long a7 __asm__("a7") = n;
    2194:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2198:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    219c:	00408084 	slli.w	$r4,$r4,0x0
}
    21a0:	4c000020 	jirl	$r0,$r1,0

00000000000021a4 <read>:
    register long a7 __asm__("a7") = n;
    21a4:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21a8:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21ac:	4c000020 	jirl	$r0,$r1,0

00000000000021b0 <write>:
    register long a7 __asm__("a7") = n;
    21b0:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21b4:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    21b8:	4c000020 	jirl	$r0,$r1,0

00000000000021bc <getpid>:
    register long a7 __asm__("a7") = n;
    21bc:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    21c0:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    21c4:	00408084 	slli.w	$r4,$r4,0x0
}
    21c8:	4c000020 	jirl	$r0,$r1,0

00000000000021cc <getppid>:
    register long a7 __asm__("a7") = n;
    21cc:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    21d0:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    21d4:	00408084 	slli.w	$r4,$r4,0x0
}
    21d8:	4c000020 	jirl	$r0,$r1,0

00000000000021dc <sched_yield>:
    register long a7 __asm__("a7") = n;
    21dc:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    21e0:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    21e4:	00408084 	slli.w	$r4,$r4,0x0
}
    21e8:	4c000020 	jirl	$r0,$r1,0

00000000000021ec <fork>:
    register long a7 __asm__("a7") = n;
    21ec:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    21f0:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    21f4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    21f8:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    21fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2200:	4c000020 	jirl	$r0,$r1,0

0000000000002204 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2204:	001500c5 	move	$r5,$r6
    if (stack)
    2208:	400008c0 	beqz	$r6,8(0x8) # 2210 <clone+0xc>
	stack += stack_size;
    220c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2210:	00408106 	slli.w	$r6,$r8,0x0
    2214:	00150009 	move	$r9,$r0
    2218:	00150008 	move	$r8,$r0
    221c:	00150007 	move	$r7,$r0
    2220:	5002c800 	b	712(0x2c8) # 24e8 <__clone>

0000000000002224 <exit>:
    register long a7 __asm__("a7") = n;
    2224:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2228:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    222c:	4c000020 	jirl	$r0,$r1,0

0000000000002230 <waitpid>:
    register long a7 __asm__("a7") = n;
    2230:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2234:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2238:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <exec>:
    register long a7 __asm__("a7") = n;
    2244:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2248:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    224c:	00408084 	slli.w	$r4,$r4,0x0
}
    2250:	4c000020 	jirl	$r0,$r1,0

0000000000002254 <execve>:
    register long a7 __asm__("a7") = n;
    2254:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2258:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    225c:	00408084 	slli.w	$r4,$r4,0x0
}
    2260:	4c000020 	jirl	$r0,$r1,0

0000000000002264 <times>:
    register long a7 __asm__("a7") = n;
    2264:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2268:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    226c:	00408084 	slli.w	$r4,$r4,0x0
}
    2270:	4c000020 	jirl	$r0,$r1,0

0000000000002274 <get_time>:

int64 get_time()
{
    2274:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2278:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    227c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2280:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2284:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2288:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    228c:	44003c80 	bnez	$r4,60(0x3c) # 22c8 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2290:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2294:	039f3c8c 	ori	$r12,$r4,0x7cf
    2298:	28c02064 	ld.d	$r4,$r3,8(0x8)
    229c:	2a40006d 	ld.hu	$r13,$r3,0
    22a0:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22a4:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22a8:	00450c84 	srli.d	$r4,$r4,0x3
    22ac:	001eb084 	mulh.du	$r4,$r4,$r12
    22b0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22b4:	001db1ac 	mul.d	$r12,$r13,$r12
    22b8:	00451084 	srli.d	$r4,$r4,0x4
    22bc:	00109184 	add.d	$r4,$r12,$r4
}
    22c0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    22c4:	4c000020 	jirl	$r0,$r1,0
        return -1;
    22c8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    22cc:	53fff7ff 	b	-12(0xffffff4) # 22c0 <get_time+0x4c>

00000000000022d0 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    22d0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22d4:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    22d8:	00408084 	slli.w	$r4,$r4,0x0
}
    22dc:	4c000020 	jirl	$r0,$r1,0

00000000000022e0 <time>:
    register long a7 __asm__("a7") = n;
    22e0:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    22e4:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    22e8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <sleep>:

int sleep(unsigned long long time)
{
    22f0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    22f4:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    22f8:	00150064 	move	$r4,$r3
    22fc:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2300:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2304:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2308:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    230c:	44001080 	bnez	$r4,16(0x10) # 231c <sleep+0x2c>
    return 0;
    2310:	00150004 	move	$r4,$r0
}
    2314:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2318:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    231c:	24000064 	ldptr.w	$r4,$r3,0
}
    2320:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2324:	4c000020 	jirl	$r0,$r1,0

0000000000002328 <set_priority>:
    register long a7 __asm__("a7") = n;
    2328:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    232c:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2330:	00408084 	slli.w	$r4,$r4,0x0
}
    2334:	4c000020 	jirl	$r0,$r1,0

0000000000002338 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2338:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    233c:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2340:	4c000020 	jirl	$r0,$r1,0

0000000000002344 <munmap>:
    register long a7 __asm__("a7") = n;
    2344:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2348:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    234c:	00408084 	slli.w	$r4,$r4,0x0
}
    2350:	4c000020 	jirl	$r0,$r1,0

0000000000002354 <wait>:

int wait(int *code)
{
    2354:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2358:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    235c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2360:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2364:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2368:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    236c:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2370:	4c000020 	jirl	$r0,$r1,0

0000000000002374 <spawn>:
    register long a7 __asm__("a7") = n;
    2374:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2378:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    237c:	00408084 	slli.w	$r4,$r4,0x0
}
    2380:	4c000020 	jirl	$r0,$r1,0

0000000000002384 <mailread>:
    register long a7 __asm__("a7") = n;
    2384:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2388:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    238c:	00408084 	slli.w	$r4,$r4,0x0
}
    2390:	4c000020 	jirl	$r0,$r1,0

0000000000002394 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2394:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2398:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    239c:	00408084 	slli.w	$r4,$r4,0x0
}
    23a0:	4c000020 	jirl	$r0,$r1,0

00000000000023a4 <fstat>:
    register long a7 __asm__("a7") = n;
    23a4:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a8:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23ac:	00408084 	slli.w	$r4,$r4,0x0
}
    23b0:	4c000020 	jirl	$r0,$r1,0

00000000000023b4 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23b4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    23b8:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23bc:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23c0:	00408084 	slli.w	$r4,$r4,0x0
}
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    23c8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    23cc:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23d0:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    23d4:	00408084 	slli.w	$r4,$r4,0x0
}
    23d8:	4c000020 	jirl	$r0,$r1,0

00000000000023dc <link>:

int link(char *old_path, char *new_path)
{
    23dc:	0015008c 	move	$r12,$r4
    23e0:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    23e4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    23e8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    23ec:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    23f0:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    23f4:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23f8:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <unlink>:

int unlink(char *path)
{
    2404:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2408:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    240c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2410:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2414:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2418:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <uname>:
    register long a7 __asm__("a7") = n;
    2420:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2424:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <brk>:
    register long a7 __asm__("a7") = n;
    2430:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2434:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <getcwd>:
    register long a7 __asm__("a7") = n;
    2440:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2444:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2448:	4c000020 	jirl	$r0,$r1,0

000000000000244c <chdir>:
    register long a7 __asm__("a7") = n;
    244c:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2450:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2454:	00408084 	slli.w	$r4,$r4,0x0
}
    2458:	4c000020 	jirl	$r0,$r1,0

000000000000245c <mkdir>:

int mkdir(const char *path, mode_t mode){
    245c:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2460:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2464:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2468:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    246c:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2470:	002b0000 	syscall	0x0
    2474:	00408084 	slli.w	$r4,$r4,0x0
}
    2478:	4c000020 	jirl	$r0,$r1,0

000000000000247c <getdents>:
    register long a7 __asm__("a7") = n;
    247c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2480:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2484:	00408084 	slli.w	$r4,$r4,0x0
}
    2488:	4c000020 	jirl	$r0,$r1,0

000000000000248c <pipe>:
    register long a7 __asm__("a7") = n;
    248c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2490:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2494:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2498:	00408084 	slli.w	$r4,$r4,0x0
}
    249c:	4c000020 	jirl	$r0,$r1,0

00000000000024a0 <dup>:
    register long a7 __asm__("a7") = n;
    24a0:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24a4:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24a8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <dup2>:
    register long a7 __asm__("a7") = n;
    24b0:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24b4:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b8:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    24bc:	00408084 	slli.w	$r4,$r4,0x0
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <mount>:
    register long a7 __asm__("a7") = n;
    24c4:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24c8:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    24cc:	00408084 	slli.w	$r4,$r4,0x0
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <umount>:
    register long a7 __asm__("a7") = n;
    24d4:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    24d8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24dc:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    24e0:	00408084 	slli.w	$r4,$r4,0x0
}
    24e4:	4c000020 	jirl	$r0,$r1,0

00000000000024e8 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    24e8:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    24ec:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    24f0:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    24f4:	001500c4 	move	$r4,$r6
	move $a2, $a4
    24f8:	00150106 	move	$r6,$r8
	move $a3, $a5
    24fc:	00150127 	move	$r7,$r9
	move $a4, $a6
    2500:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2504:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2508:	002b0000 	syscall	0x0

	beqz $a0, 1f
    250c:	40000880 	beqz	$r4,8(0x8) # 2514 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2510:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2514:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2518:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    251c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2520:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2524:	002b0000 	syscall	0x0
