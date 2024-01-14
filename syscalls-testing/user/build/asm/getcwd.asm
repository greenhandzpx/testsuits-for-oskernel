
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/getcwd:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400bc00 	bl	188(0xbc) # 10c0 <__start_main>

0000000000001008 <test_getcwd>:
 * 测试通过时输出：
 * "getcwd OK."
 * 测试失败时输出：
 * "getcwd ERROR."
 */
void test_getcwd(void){
    1008:	02fdc063 	addi.d	$r3,$r3,-144(0xf70)
   TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d55084 	addi.d	$r4,$r4,1364(0x554)
void test_getcwd(void){
    1014:	29c22061 	st.d	$r1,$r3,136(0x88)
   TEST_START(__func__);
    1018:	5403b000 	bl	944(0x3b0) # 13c8 <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    1024:	5403a400 	bl	932(0x3a4) # 13c8 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d54084 	addi.d	$r4,$r4,1360(0x550)
    1030:	54039800 	bl	920(0x398) # 13c8 <puts>
    char *cwd = NULL;
    char buf[128] = {0};
    1034:	00150005 	move	$r5,$r0
    1038:	02820006 	addi.w	$r6,$r0,128(0x80)
    103c:	00150064 	move	$r4,$r3
    1040:	5407b400 	bl	1972(0x7b4) # 17f4 <memset>
    cwd = getcwd(buf, 128);
    1044:	02820005 	addi.w	$r5,$r0,128(0x80)
    1048:	00150064 	move	$r4,$r3
    104c:	54142800 	bl	5160(0x1428) # 2474 <getcwd>
    if(cwd != NULL) printf("getcwd: %s successfully!\n", buf);
    1050:	40004480 	beqz	$r4,68(0x44) # 1094 <test_getcwd+0x8c>
    1054:	00150065 	move	$r5,$r3
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d4c084 	addi.d	$r4,$r4,1328(0x530)
    1060:	5403a000 	bl	928(0x3a0) # 1400 <printf>
    else printf("getcwd ERROR.\n");
   TEST_END(__func__);
    1064:	1c000024 	pcaddu12i	$r4,1(0x1)
    1068:	02d55084 	addi.d	$r4,$r4,1364(0x554)
    106c:	54035c00 	bl	860(0x35c) # 13c8 <puts>
    1070:	1c000024 	pcaddu12i	$r4,1(0x1)
    1074:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1078:	54035000 	bl	848(0x350) # 13c8 <puts>
    107c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1080:	02d3f084 	addi.d	$r4,$r4,1276(0x4fc)
    1084:	54034400 	bl	836(0x344) # 13c8 <puts>
}
    1088:	28c22061 	ld.d	$r1,$r3,136(0x88)
    108c:	02c24063 	addi.d	$r3,$r3,144(0x90)
    1090:	4c000020 	jirl	$r0,$r1,0
    else printf("getcwd ERROR.\n");
    1094:	1c000024 	pcaddu12i	$r4,1(0x1)
    1098:	02d45084 	addi.d	$r4,$r4,1300(0x514)
    109c:	54036400 	bl	868(0x364) # 1400 <printf>
    10a0:	53ffc7ff 	b	-60(0xfffffc4) # 1064 <test_getcwd+0x5c>

00000000000010a4 <main>:

int main(void){
    10a4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10a8:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_getcwd();
    10ac:	57ff5fff 	bl	-164(0xfffff5c) # 1008 <test_getcwd>
    return 0;
}
    10b0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10b4:	00150004 	move	$r4,$r0
    10b8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10bc:	4c000020 	jirl	$r0,$r1,0

00000000000010c0 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10c0:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10c4:	24000084 	ldptr.w	$r4,$r4,0
{
    10c8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10cc:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10d0:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10d4:	57ffd3ff 	bl	-48(0xfffffd0) # 10a4 <main>
    10d8:	54118000 	bl	4480(0x1180) # 2258 <exit>
	return 0;
}
    10dc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10e0:	00150004 	move	$r4,$r0
    10e4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10e8:	4c000020 	jirl	$r0,$r1,0

00000000000010ec <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10ec:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10f0:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    10f4:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12c0 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    10f8:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    10fc:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1100:	02d3918c 	addi.d	$r12,$r12,1252(0x4e4)
    1104:	002195cf 	mod.wu	$r15,$r14,$r5
    1108:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1110 <printint.constprop.0+0x24>
    110c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1110:	002115cd 	div.wu	$r13,$r14,$r5
    1114:	5c0008a0 	bne	$r5,$r0,8(0x8) # 111c <printint.constprop.0+0x30>
    1118:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    111c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1120:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1124:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1128:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    112c:	680219c5 	bltu	$r14,$r5,536(0x218) # 1344 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1130:	002195af 	mod.wu	$r15,$r13,$r5
    1134:	5c0008a0 	bne	$r5,$r0,8(0x8) # 113c <printint.constprop.0+0x50>
    1138:	002a0007 	break	0x7
    113c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1140:	002115ae 	div.wu	$r14,$r13,$r5
    1144:	5c0008a0 	bne	$r5,$r0,8(0x8) # 114c <printint.constprop.0+0x60>
    1148:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    114c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1150:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1154:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1314 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1158:	002195cf 	mod.wu	$r15,$r14,$r5
    115c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1164 <printint.constprop.0+0x78>
    1160:	002a0007 	break	0x7
    1164:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1168:	002115cd 	div.wu	$r13,$r14,$r5
    116c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1174 <printint.constprop.0+0x88>
    1170:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1174:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1178:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    117c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1320 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1180:	002195af 	mod.wu	$r15,$r13,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0xa0>
    1188:	002a0007 	break	0x7
    118c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1190:	002115ae 	div.wu	$r14,$r13,$r5
    1194:	5c0008a0 	bne	$r5,$r0,8(0x8) # 119c <printint.constprop.0+0xb0>
    1198:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    119c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11a0:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11a4:	680189a5 	bltu	$r13,$r5,392(0x188) # 132c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11a8:	002195cf 	mod.wu	$r15,$r14,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0xc8>
    11b0:	002a0007 	break	0x7
    11b4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b8:	002115cd 	div.wu	$r13,$r14,$r5
    11bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c4 <printint.constprop.0+0xd8>
    11c0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c8:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11cc:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1338 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11d0:	002195af 	mod.wu	$r15,$r13,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0xf0>
    11d8:	002a0007 	break	0x7
    11dc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e0:	002115ae 	div.wu	$r14,$r13,$r5
    11e4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ec <printint.constprop.0+0x100>
    11e8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11ec:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f0:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    11f4:	680115a5 	bltu	$r13,$r5,276(0x114) # 1308 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    11f8:	002195cf 	mod.wu	$r15,$r14,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0x118>
    1200:	002a0007 	break	0x7
    1204:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1208:	002115cd 	div.wu	$r13,$r14,$r5
    120c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1214 <printint.constprop.0+0x128>
    1210:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1214:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1218:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    121c:	680131c5 	bltu	$r14,$r5,304(0x130) # 134c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1220:	002195af 	mod.wu	$r15,$r13,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0x140>
    1228:	002a0007 	break	0x7
    122c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1230:	002115ae 	div.wu	$r14,$r13,$r5
    1234:	5c0008a0 	bne	$r5,$r0,8(0x8) # 123c <printint.constprop.0+0x150>
    1238:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    123c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1240:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1244:	680115a5 	bltu	$r13,$r5,276(0x114) # 1358 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1248:	002195cf 	mod.wu	$r15,$r14,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0x168>
    1250:	002a0007 	break	0x7
    1254:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1258:	002115cd 	div.wu	$r13,$r14,$r5
    125c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1264 <printint.constprop.0+0x178>
    1260:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1264:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1268:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    126c:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1364 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1270:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1274:	3820358d 	ldx.bu	$r13,$r12,$r13
    1278:	02801805 	addi.w	$r5,$r0,6(0x6)
    127c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1280:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1284:	64001880 	bge	$r4,$r0,24(0x18) # 129c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1288:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    128c:	0010b1ad 	add.d	$r13,$r13,$r12
    1290:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1294:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1298:	00150185 	move	$r5,$r12
    write(f, s, l);
    129c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12a0:	02804006 	addi.w	$r6,$r0,16(0x10)
    12a4:	001114c6 	sub.w	$r6,$r6,$r5
    12a8:	02800404 	addi.w	$r4,$r0,1(0x1)
    12ac:	00109585 	add.d	$r5,$r12,$r5
    12b0:	540f3400 	bl	3892(0xf34) # 21e4 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12b4:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12b8:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12bc:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12c0:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12c4:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12c8:	02cc718c 	addi.d	$r12,$r12,796(0x31c)
    12cc:	002195cf 	mod.wu	$r15,$r14,$r5
    12d0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d8 <printint.constprop.0+0x1ec>
    12d4:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12d8:	002115cd 	div.wu	$r13,$r14,$r5
    12dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12e4 <printint.constprop.0+0x1f8>
    12e0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12e4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12e8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12ec:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12f0:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    12f4:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1130 <printint.constprop.0+0x44>
        buf[i--] = '-';
    12f8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    12fc:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1300:	02803805 	addi.w	$r5,$r0,14(0xe)
    1304:	53ff9bff 	b	-104(0xfffff98) # 129c <printint.constprop.0+0x1b0>
    1308:	0280240c 	addi.w	$r12,$r0,9(0x9)
    130c:	02802805 	addi.w	$r5,$r0,10(0xa)
    1310:	53ff77ff 	b	-140(0xfffff74) # 1284 <printint.constprop.0+0x198>
    1314:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1318:	02803805 	addi.w	$r5,$r0,14(0xe)
    131c:	53ff6bff 	b	-152(0xfffff68) # 1284 <printint.constprop.0+0x198>
    1320:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1324:	02803405 	addi.w	$r5,$r0,13(0xd)
    1328:	53ff5fff 	b	-164(0xfffff5c) # 1284 <printint.constprop.0+0x198>
    132c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1330:	02803005 	addi.w	$r5,$r0,12(0xc)
    1334:	53ff53ff 	b	-176(0xfffff50) # 1284 <printint.constprop.0+0x198>
    1338:	0280280c 	addi.w	$r12,$r0,10(0xa)
    133c:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1340:	53ff47ff 	b	-188(0xfffff44) # 1284 <printint.constprop.0+0x198>
    i = 15;
    1344:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1348:	53ff57ff 	b	-172(0xfffff54) # 129c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    134c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1350:	02802405 	addi.w	$r5,$r0,9(0x9)
    1354:	53ff33ff 	b	-208(0xfffff30) # 1284 <printint.constprop.0+0x198>
    1358:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    135c:	02802005 	addi.w	$r5,$r0,8(0x8)
    1360:	53ff27ff 	b	-220(0xfffff24) # 1284 <printint.constprop.0+0x198>
    1364:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1368:	02801c05 	addi.w	$r5,$r0,7(0x7)
    136c:	53ff1bff 	b	-232(0xfffff18) # 1284 <printint.constprop.0+0x198>

0000000000001370 <getchar>:
{
    1370:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1374:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1378:	02800406 	addi.w	$r6,$r0,1(0x1)
    137c:	00150004 	move	$r4,$r0
{
    1380:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1384:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1388:	540e5000 	bl	3664(0xe50) # 21d8 <read>
}
    138c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1390:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1394:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1398:	4c000020 	jirl	$r0,$r1,0

000000000000139c <putchar>:
{
    139c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13a0:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13a4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13a8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13ac:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13b0:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13b4:	540e3000 	bl	3632(0xe30) # 21e4 <write>
}
    13b8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13bc:	00408084 	slli.w	$r4,$r4,0x0
}
    13c0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13c4:	4c000020 	jirl	$r0,$r1,0

00000000000013c8 <puts>:
{
    13c8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13cc:	29c02061 	st.d	$r1,$r3,8(0x8)
    13d0:	27000077 	stptr.d	$r23,$r3,0
    13d4:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13d8:	5406b800 	bl	1720(0x6b8) # 1a90 <strlen>
    13dc:	00150086 	move	$r6,$r4
    13e0:	001502e5 	move	$r5,$r23
    13e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    13e8:	540dfc00 	bl	3580(0xdfc) # 21e4 <write>
}
    13ec:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13f0:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    13f4:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    13f8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    13fc:	4c000020 	jirl	$r0,$r1,0

0000000000001400 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1400:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1404:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1408:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    140c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1410:	29c14079 	st.d	$r25,$r3,80(0x50)
    1414:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1418:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    141c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1420:	29c18077 	st.d	$r23,$r3,96(0x60)
    1424:	29c16078 	st.d	$r24,$r3,88(0x58)
    1428:	0015009b 	move	$r27,$r4
    142c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1430:	29c20066 	st.d	$r6,$r3,128(0x80)
    1434:	29c22067 	st.d	$r7,$r3,136(0x88)
    1438:	29c24068 	st.d	$r8,$r3,144(0x90)
    143c:	29c26069 	st.d	$r9,$r3,152(0x98)
    1440:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1444:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1448:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    144c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1450:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1454:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1458:	02c6339c 	addi.d	$r28,$r28,396(0x18c)
        if (!*s)
    145c:	2800036c 	ld.b	$r12,$r27,0
    1460:	40008980 	beqz	$r12,136(0x88) # 14e8 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1464:	58027d99 	beq	$r12,$r25,636(0x27c) # 16e0 <printf+0x2e0>
    1468:	00150366 	move	$r6,$r27
    146c:	50000800 	b	8(0x8) # 1474 <printf+0x74>
    1470:	58009d99 	beq	$r12,$r25,156(0x9c) # 150c <printf+0x10c>
    1474:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1478:	280000cc 	ld.b	$r12,$r6,0
    147c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1470 <printf+0x70>
    1480:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1484:	0011ecd7 	sub.d	$r23,$r6,$r27
    1488:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    148c:	001502e6 	move	$r6,$r23
    1490:	00150365 	move	$r5,$r27
    1494:	02800404 	addi.w	$r4,$r0,1(0x1)
    1498:	540d4c00 	bl	3404(0xd4c) # 21e4 <write>
        out(f, a, l);
        if (l)
    149c:	4400b6e0 	bnez	$r23,180(0xb4) # 1550 <printf+0x150>
            continue;
        if (s[1] == 0)
    14a0:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14a4:	40004580 	beqz	$r12,68(0x44) # 14e8 <printf+0xe8>
            break;
        switch (s[1])
    14a8:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14ac:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1580 <printf+0x180>
    14b0:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1558 <printf+0x158>
    14b4:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14b8:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16a8 <printf+0x2a8>
    14bc:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14c0:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1670 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14c4:	2600006c 	ldptr.d	$r12,$r3,0
    14c8:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14cc:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14d0:	24000184 	ldptr.w	$r4,$r12,0
    14d4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14d8:	2700006c 	stptr.d	$r12,$r3,0
    14dc:	57fc13ff 	bl	-1008(0xffffc10) # 10ec <printint.constprop.0>
        if (!*s)
    14e0:	2800036c 	ld.b	$r12,$r27,0
    14e4:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1464 <printf+0x64>
    }
    va_end(ap);
}
    14e8:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14ec:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14f0:	28c16078 	ld.d	$r24,$r3,88(0x58)
    14f4:	28c14079 	ld.d	$r25,$r3,80(0x50)
    14f8:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    14fc:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1500:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1504:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1508:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    150c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1510:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1480 <printf+0x80>
    1514:	001500d8 	move	$r24,$r6
    1518:	50000c00 	b	12(0xc) # 1524 <printf+0x124>
    151c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1520:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1484 <printf+0x84>
    1524:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1528:	2800030c 	ld.b	$r12,$r24,0
    152c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1530:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 151c <printf+0x11c>
        l = z - a;
    1534:	0011ecd7 	sub.d	$r23,$r6,$r27
    1538:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    153c:	001502e6 	move	$r6,$r23
    1540:	00150365 	move	$r5,$r27
    1544:	02800404 	addi.w	$r4,$r0,1(0x1)
    1548:	540c9c00 	bl	3228(0xc9c) # 21e4 <write>
        if (l)
    154c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14a0 <printf+0xa0>
    1550:	0015031b 	move	$r27,$r24
    1554:	53ff0bff 	b	-248(0xfffff08) # 145c <printf+0x5c>
        switch (s[1])
    1558:	0281900d 	addi.w	$r13,$r0,100(0x64)
    155c:	5c01158d 	bne	$r12,$r13,276(0x114) # 1670 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1560:	2600006c 	ldptr.d	$r12,$r3,0
    1564:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1568:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    156c:	24000184 	ldptr.w	$r4,$r12,0
    1570:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1574:	2700006c 	stptr.d	$r12,$r3,0
    1578:	57fb77ff 	bl	-1164(0xffffb74) # 10ec <printint.constprop.0>
        s += 2;
    157c:	53ff67ff 	b	-156(0xfffff64) # 14e0 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1580:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1584:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1588:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    158c:	260001ac 	ldptr.d	$r12,$r13,0
    1590:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1594:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1598:	0045f18a 	srli.d	$r10,$r12,0x3c
    159c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15a0:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15a4:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15a8:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15ac:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15b0:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15b4:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15b8:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15bc:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15c0:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15c4:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15c8:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15cc:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15d0:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15d4:	3820278a 	ldx.bu	$r10,$r28,$r9
    15d8:	38202389 	ldx.bu	$r9,$r28,$r8
    15dc:	38201f88 	ldx.bu	$r8,$r28,$r7
    15e0:	38201787 	ldx.bu	$r7,$r28,$r5
    15e4:	38201385 	ldx.bu	$r5,$r28,$r4
    15e8:	38205384 	ldx.bu	$r4,$r28,$r20
    15ec:	38204f94 	ldx.bu	$r20,$r28,$r19
    15f0:	38204b93 	ldx.bu	$r19,$r28,$r18
    15f4:	38204792 	ldx.bu	$r18,$r28,$r17
    15f8:	38204391 	ldx.bu	$r17,$r28,$r16
    15fc:	38203f90 	ldx.bu	$r16,$r28,$r15
    1600:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1604:	3820378e 	ldx.bu	$r14,$r28,$r13
    1608:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    160c:	03403d8c 	andi	$r12,$r12,0xf
    1610:	2900286b 	st.b	$r11,$r3,10(0xa)
    1614:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1618:	29003069 	st.b	$r9,$r3,12(0xc)
    161c:	29003468 	st.b	$r8,$r3,13(0xd)
    1620:	29003867 	st.b	$r7,$r3,14(0xe)
    1624:	29003c65 	st.b	$r5,$r3,15(0xf)
    1628:	29004064 	st.b	$r4,$r3,16(0x10)
    162c:	29004474 	st.b	$r20,$r3,17(0x11)
    1630:	29004873 	st.b	$r19,$r3,18(0x12)
    1634:	29004c72 	st.b	$r18,$r3,19(0x13)
    1638:	29005071 	st.b	$r17,$r3,20(0x14)
    163c:	29005470 	st.b	$r16,$r3,21(0x15)
    1640:	2900586f 	st.b	$r15,$r3,22(0x16)
    1644:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1648:	3820378d 	ldx.bu	$r13,$r28,$r13
    164c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1650:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1654:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1658:	2900606d 	st.b	$r13,$r3,24(0x18)
    165c:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1660:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1664:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1668:	540b7c00 	bl	2940(0xb7c) # 21e4 <write>
        s += 2;
    166c:	53fe77ff 	b	-396(0xffffe74) # 14e0 <printf+0xe0>
    char byte = c;
    1670:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1674:	02800406 	addi.w	$r6,$r0,1(0x1)
    1678:	02c02065 	addi.d	$r5,$r3,8(0x8)
    167c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1680:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1684:	540b6000 	bl	2912(0xb60) # 21e4 <write>
    char byte = c;
    1688:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    168c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1690:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1694:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1698:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    169c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16a0:	540b4400 	bl	2884(0xb44) # 21e4 <write>
        s += 2;
    16a4:	53fe3fff 	b	-452(0xffffe3c) # 14e0 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16a8:	2600006c 	ldptr.d	$r12,$r3,0
    16ac:	26000197 	ldptr.d	$r23,$r12,0
    16b0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16b4:	2700006c 	stptr.d	$r12,$r3,0
    16b8:	40004ee0 	beqz	$r23,76(0x4c) # 1704 <printf+0x304>
            l = strnlen(a, 200);
    16bc:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16c0:	001502e4 	move	$r4,$r23
    16c4:	5405b400 	bl	1460(0x5b4) # 1c78 <strnlen>
    16c8:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16cc:	001502e5 	move	$r5,$r23
    16d0:	02800404 	addi.w	$r4,$r0,1(0x1)
    16d4:	540b1000 	bl	2832(0xb10) # 21e4 <write>
        s += 2;
    16d8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16dc:	53fe07ff 	b	-508(0xffffe04) # 14e0 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16e0:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16e4:	00150366 	move	$r6,$r27
    16e8:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1514 <printf+0x114>
    write(f, s, l);
    16ec:	00150006 	move	$r6,$r0
    16f0:	00150365 	move	$r5,$r27
    16f4:	02800404 	addi.w	$r4,$r0,1(0x1)
    16f8:	540aec00 	bl	2796(0xaec) # 21e4 <write>
    16fc:	00150378 	move	$r24,$r27
    1700:	53fda3ff 	b	-608(0xffffda0) # 14a0 <printf+0xa0>
                a = "(null)";
    1704:	1c000037 	pcaddu12i	$r23,1(0x1)
    1708:	02fb12f7 	addi.d	$r23,$r23,-316(0xec4)
    170c:	53ffb3ff 	b	-80(0xfffffb0) # 16bc <printf+0x2bc>

0000000000001710 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1710:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1714:	5800108c 	beq	$r4,$r12,16(0x10) # 1724 <isspace+0x14>
    1718:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    171c:	02401484 	sltui	$r4,$r4,5(0x5)
    1720:	4c000020 	jirl	$r0,$r1,0
    1724:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1728:	4c000020 	jirl	$r0,$r1,0

000000000000172c <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    172c:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1730:	02402884 	sltui	$r4,$r4,10(0xa)
    1734:	4c000020 	jirl	$r0,$r1,0

0000000000001738 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1738:	0280800e 	addi.w	$r14,$r0,32(0x20)
    173c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1740:	2800008d 	ld.b	$r13,$r4,0
    1744:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1748:	580061ae 	beq	$r13,$r14,96(0x60) # 17a8 <atoi+0x70>
    174c:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17a8 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1750:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1754:	580065ac 	beq	$r13,$r12,100(0x64) # 17b8 <atoi+0x80>
    1758:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    175c:	58007dac 	beq	$r13,$r12,124(0x7c) # 17d8 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1760:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1764:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1768:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    176c:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1770:	680061cf 	bltu	$r14,$r15,96(0x60) # 17d0 <atoi+0x98>
    int n = 0, neg = 0;
    1774:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1778:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    177c:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1780:	001c126f 	mul.w	$r15,$r19,$r4
    1784:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1788:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    178c:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1790:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1794:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1798:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    179c:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1780 <atoi+0x48>
    return neg ? n : -n;
    17a0:	40001280 	beqz	$r20,16(0x10) # 17b0 <atoi+0x78>
}
    17a4:	4c000020 	jirl	$r0,$r1,0
        s++;
    17a8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17ac:	53ff97ff 	b	-108(0xfffff94) # 1740 <atoi+0x8>
    17b0:	00113e04 	sub.w	$r4,$r16,$r15
    17b4:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17b8:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17bc:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17c0:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17c4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17c8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17cc:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1774 <atoi+0x3c>
    17d0:	00150004 	move	$r4,$r0
}
    17d4:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17d8:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17dc:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17e0:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17e4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17e8:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17d0 <atoi+0x98>
        neg = 1;
    17ec:	02800414 	addi.w	$r20,$r0,1(0x1)
    17f0:	53ff87ff 	b	-124(0xfffff84) # 1774 <atoi+0x3c>

00000000000017f4 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    17f4:	400198c0 	beqz	$r6,408(0x198) # 198c <memset+0x198>
    17f8:	0011900c 	sub.d	$r12,$r0,$r4
    17fc:	03401d8c 	andi	$r12,$r12,0x7
    1800:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1804:	02402dae 	sltui	$r14,$r13,11(0xb)
    1808:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    180c:	0013b9ad 	masknez	$r13,$r13,$r14
    1810:	001339ee 	maskeqz	$r14,$r15,$r14
    1814:	001539ad 	or	$r13,$r13,$r14
    1818:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    181c:	00005ca5 	ext.w.b	$r5,$r5
    1820:	680191ed 	bltu	$r15,$r13,400(0x190) # 19b0 <memset+0x1bc>
    1824:	40018180 	beqz	$r12,384(0x180) # 19a4 <memset+0x1b0>
    1828:	29000085 	st.b	$r5,$r4,0
    182c:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1830:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1834:	5801698d 	beq	$r12,$r13,360(0x168) # 199c <memset+0x1a8>
    1838:	29000485 	st.b	$r5,$r4,1(0x1)
    183c:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1840:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1844:	5801798d 	beq	$r12,$r13,376(0x178) # 19bc <memset+0x1c8>
    1848:	29000885 	st.b	$r5,$r4,2(0x2)
    184c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1850:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1854:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1990 <memset+0x19c>
    1858:	29000c85 	st.b	$r5,$r4,3(0x3)
    185c:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1860:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1864:	5801618d 	beq	$r12,$r13,352(0x160) # 19c4 <memset+0x1d0>
    1868:	29001085 	st.b	$r5,$r4,4(0x4)
    186c:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1870:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1874:	5801598d 	beq	$r12,$r13,344(0x158) # 19cc <memset+0x1d8>
    1878:	29001485 	st.b	$r5,$r4,5(0x5)
    187c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1880:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1884:	5c01518d 	bne	$r12,$r13,336(0x150) # 19d4 <memset+0x1e0>
    1888:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    188c:	29001885 	st.b	$r5,$r4,6(0x6)
    1890:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1894:	0015000d 	move	$r13,$r0
    1898:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    189c:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18a0:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18a4:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18a8:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18ac:	0011b0d0 	sub.d	$r16,$r6,$r12
    18b0:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18b4:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18b8:	0010b08c 	add.d	$r12,$r4,$r12
    18bc:	00450e0f 	srli.d	$r15,$r16,0x3
    18c0:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18c4:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18c8:	2700018d 	stptr.d	$r13,$r12,0
    18cc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18d0:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18c8 <memset+0xd4>
    18d4:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    18d8:	0014be0f 	and	$r15,$r16,$r15
    18dc:	004081ed 	slli.w	$r13,$r15,0x0
    18e0:	0010bdcc 	add.d	$r12,$r14,$r15
    18e4:	001045ad 	add.w	$r13,$r13,$r17
    18e8:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1998 <memset+0x1a4>
    18ec:	29000185 	st.b	$r5,$r12,0
    18f0:	028005ae 	addi.w	$r14,$r13,1(0x1)
    18f4:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 198c <memset+0x198>
    18f8:	29000585 	st.b	$r5,$r12,1(0x1)
    18fc:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1900:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 198c <memset+0x198>
    1904:	29000985 	st.b	$r5,$r12,2(0x2)
    1908:	02800dae 	addi.w	$r14,$r13,3(0x3)
    190c:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 198c <memset+0x198>
    1910:	29000d85 	st.b	$r5,$r12,3(0x3)
    1914:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1918:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 198c <memset+0x198>
    191c:	29001185 	st.b	$r5,$r12,4(0x4)
    1920:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1924:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 198c <memset+0x198>
    1928:	29001585 	st.b	$r5,$r12,5(0x5)
    192c:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1930:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 198c <memset+0x198>
    1934:	29001985 	st.b	$r5,$r12,6(0x6)
    1938:	02801dae 	addi.w	$r14,$r13,7(0x7)
    193c:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 198c <memset+0x198>
    1940:	29001d85 	st.b	$r5,$r12,7(0x7)
    1944:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1948:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 198c <memset+0x198>
    194c:	29002185 	st.b	$r5,$r12,8(0x8)
    1950:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1954:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 198c <memset+0x198>
    1958:	29002585 	st.b	$r5,$r12,9(0x9)
    195c:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1960:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 198c <memset+0x198>
    1964:	29002985 	st.b	$r5,$r12,10(0xa)
    1968:	02802dae 	addi.w	$r14,$r13,11(0xb)
    196c:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 198c <memset+0x198>
    1970:	29002d85 	st.b	$r5,$r12,11(0xb)
    1974:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1978:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 198c <memset+0x198>
    197c:	29003185 	st.b	$r5,$r12,12(0xc)
    1980:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1984:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 198c <memset+0x198>
    1988:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    198c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1990:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1994:	53ff03ff 	b	-256(0xfffff00) # 1894 <memset+0xa0>
    1998:	4c000020 	jirl	$r0,$r1,0
    199c:	02800411 	addi.w	$r17,$r0,1(0x1)
    19a0:	53fef7ff 	b	-268(0xffffef4) # 1894 <memset+0xa0>
    19a4:	0015008e 	move	$r14,$r4
    19a8:	00150011 	move	$r17,$r0
    19ac:	53feebff 	b	-280(0xffffee8) # 1894 <memset+0xa0>
    19b0:	0015008c 	move	$r12,$r4
    19b4:	0015000d 	move	$r13,$r0
    19b8:	53ff37ff 	b	-204(0xfffff34) # 18ec <memset+0xf8>
    19bc:	02800811 	addi.w	$r17,$r0,2(0x2)
    19c0:	53fed7ff 	b	-300(0xffffed4) # 1894 <memset+0xa0>
    19c4:	02801011 	addi.w	$r17,$r0,4(0x4)
    19c8:	53fecfff 	b	-308(0xffffecc) # 1894 <memset+0xa0>
    19cc:	02801411 	addi.w	$r17,$r0,5(0x5)
    19d0:	53fec7ff 	b	-316(0xffffec4) # 1894 <memset+0xa0>
    19d4:	02801811 	addi.w	$r17,$r0,6(0x6)
    19d8:	53febfff 	b	-324(0xffffebc) # 1894 <memset+0xa0>

00000000000019dc <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    19dc:	2800008c 	ld.b	$r12,$r4,0
    19e0:	280000ae 	ld.b	$r14,$r5,0
    19e4:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a18 <strcmp+0x3c>
    19e8:	40003980 	beqz	$r12,56(0x38) # 1a20 <strcmp+0x44>
    19ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19f0:	50000800 	b	8(0x8) # 19f8 <strcmp+0x1c>
    19f4:	400019a0 	beqz	$r13,24(0x18) # 1a0c <strcmp+0x30>
    19f8:	3800308d 	ldx.b	$r13,$r4,$r12
    19fc:	380030ae 	ldx.b	$r14,$r5,$r12
    1a00:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a04:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 19f4 <strcmp+0x18>
    1a08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a0c:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a10:	001111a4 	sub.w	$r4,$r13,$r4
    1a14:	4c000020 	jirl	$r0,$r1,0
    1a18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a1c:	53fff3ff 	b	-16(0xffffff0) # 1a0c <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a20:	0015000d 	move	$r13,$r0
    1a24:	53ffebff 	b	-24(0xfffffe8) # 1a0c <strcmp+0x30>

0000000000001a28 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a28:	400054c0 	beqz	$r6,84(0x54) # 1a7c <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a2c:	2a00008d 	ld.bu	$r13,$r4,0
    1a30:	2a0000ae 	ld.bu	$r14,$r5,0
    1a34:	40003da0 	beqz	$r13,60(0x3c) # 1a70 <strncmp+0x48>
    1a38:	40003dc0 	beqz	$r14,60(0x3c) # 1a74 <strncmp+0x4c>
    if (!n--)
    1a3c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a40:	400034c0 	beqz	$r6,52(0x34) # 1a74 <strncmp+0x4c>
    1a44:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a48:	580019ae 	beq	$r13,$r14,24(0x18) # 1a60 <strncmp+0x38>
    1a4c:	50002800 	b	40(0x28) # 1a74 <strncmp+0x4c>
    1a50:	400035c0 	beqz	$r14,52(0x34) # 1a84 <strncmp+0x5c>
    1a54:	580020cc 	beq	$r6,$r12,32(0x20) # 1a74 <strncmp+0x4c>
    1a58:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a5c:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a84 <strncmp+0x5c>
    1a60:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a64:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a68:	001501af 	move	$r15,$r13
    1a6c:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a50 <strncmp+0x28>
    1a70:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a74:	001139a4 	sub.w	$r4,$r13,$r14
    1a78:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a7c:	00150004 	move	$r4,$r0
}
    1a80:	4c000020 	jirl	$r0,$r1,0
    1a84:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a88:	001139a4 	sub.w	$r4,$r13,$r14
    1a8c:	4c000020 	jirl	$r0,$r1,0

0000000000001a90 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a90:	03401c8c 	andi	$r12,$r4,0x7
    1a94:	4000b180 	beqz	$r12,176(0xb0) # 1b44 <strlen+0xb4>
        if (!*s)
    1a98:	2800008c 	ld.b	$r12,$r4,0
    1a9c:	4000b180 	beqz	$r12,176(0xb0) # 1b4c <strlen+0xbc>
    1aa0:	0015008c 	move	$r12,$r4
    1aa4:	50000c00 	b	12(0xc) # 1ab0 <strlen+0x20>
    1aa8:	2800018d 	ld.b	$r13,$r12,0
    1aac:	400091a0 	beqz	$r13,144(0x90) # 1b3c <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ab0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ab4:	03401d8d 	andi	$r13,$r12,0x7
    1ab8:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1aa8 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1abc:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ac0:	2600018f 	ldptr.d	$r15,$r12,0
    1ac4:	03bbfdad 	ori	$r13,$r13,0xeff
    1ac8:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1acc:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1ad0:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ad4:	038201ce 	ori	$r14,$r14,0x80
    1ad8:	0010b5ed 	add.d	$r13,$r15,$r13
    1adc:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1ae0:	0016bdad 	andn	$r13,$r13,$r15
    1ae4:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1ae8:	0014b9ae 	and	$r14,$r13,$r14
    1aec:	440049c0 	bnez	$r14,72(0x48) # 1b34 <strlen+0xa4>
    1af0:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1af4:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1af8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1afc:	2600018e 	ldptr.d	$r14,$r12,0
    1b00:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b04:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b08:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b0c:	0382020f 	ori	$r15,$r16,0x80
    1b10:	0010b5cd 	add.d	$r13,$r14,$r13
    1b14:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b18:	0016b9ad 	andn	$r13,$r13,$r14
    1b1c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b20:	0014bdad 	and	$r13,$r13,$r15
    1b24:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1af8 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b28:	2800018d 	ld.b	$r13,$r12,0
    1b2c:	400011a0 	beqz	$r13,16(0x10) # 1b3c <strlen+0xac>
    1b30:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b34:	2800018d 	ld.b	$r13,$r12,0
    1b38:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b30 <strlen+0xa0>
        ;
    return s - a;
    1b3c:	00119184 	sub.d	$r4,$r12,$r4
}
    1b40:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b44:	0015008c 	move	$r12,$r4
    1b48:	53ff77ff 	b	-140(0xfffff74) # 1abc <strlen+0x2c>
        if (!*s)
    1b4c:	00150004 	move	$r4,$r0
            return s - a;
    1b50:	4c000020 	jirl	$r0,$r1,0

0000000000001b54 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b54:	03401c8c 	andi	$r12,$r4,0x7
    1b58:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b5c:	44002180 	bnez	$r12,32(0x20) # 1b7c <memchr+0x28>
    1b60:	50002c00 	b	44(0x2c) # 1b8c <memchr+0x38>
    1b64:	2a00008c 	ld.bu	$r12,$r4,0
    1b68:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c60 <memchr+0x10c>
    1b6c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b70:	03401c8c 	andi	$r12,$r4,0x7
    1b74:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b78:	40001580 	beqz	$r12,20(0x14) # 1b8c <memchr+0x38>
    1b7c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b64 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b80:	0015000d 	move	$r13,$r0
}
    1b84:	001501a4 	move	$r4,$r13
    1b88:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b8c:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b90:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b84 <memchr+0x30>
    1b94:	2a00008c 	ld.bu	$r12,$r4,0
    1b98:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c60 <memchr+0x10c>
        size_t k = ONES * c;
    1b9c:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1ba0:	0384058c 	ori	$r12,$r12,0x101
    1ba4:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1ba8:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bac:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bb0:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bb4:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c70 <memchr+0x11c>
    1bb8:	2600008d 	ldptr.d	$r13,$r4,0
    1bbc:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bc0:	038201ce 	ori	$r14,$r14,0x80
    1bc4:	0015b60d 	xor	$r13,$r16,$r13
    1bc8:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bcc:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bd0:	0016b58c 	andn	$r12,$r12,$r13
    1bd4:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bd8:	0014b98c 	and	$r12,$r12,$r14
    1bdc:	44009580 	bnez	$r12,148(0x94) # 1c70 <memchr+0x11c>
    1be0:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1be4:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1be8:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1bec:	50002000 	b	32(0x20) # 1c0c <memchr+0xb8>
    1bf0:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1bf4:	0015b20c 	xor	$r12,$r16,$r12
    1bf8:	0010b98e 	add.d	$r14,$r12,$r14
    1bfc:	0016b1cc 	andn	$r12,$r14,$r12
    1c00:	0014bd8c 	and	$r12,$r12,$r15
    1c04:	44006580 	bnez	$r12,100(0x64) # 1c68 <memchr+0x114>
    1c08:	001501a4 	move	$r4,$r13
    1c0c:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c10:	0382022f 	ori	$r15,$r17,0x80
    1c14:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c18:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c1c:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c20:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c24:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c28:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c2c:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1bf0 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c30:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b80 <memchr+0x2c>
    1c34:	2a0001ac 	ld.bu	$r12,$r13,0
    1c38:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b84 <memchr+0x30>
    1c3c:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c40:	001099a6 	add.d	$r6,$r13,$r6
    1c44:	50001000 	b	16(0x10) # 1c54 <memchr+0x100>
    1c48:	2a00018e 	ld.bu	$r14,$r12,0
    1c4c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c50:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b84 <memchr+0x30>
    1c54:	0015018d 	move	$r13,$r12
    1c58:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c48 <memchr+0xf4>
    1c5c:	53ff27ff 	b	-220(0xfffff24) # 1b80 <memchr+0x2c>
    1c60:	0015008d 	move	$r13,$r4
    1c64:	53ffd3ff 	b	-48(0xfffffd0) # 1c34 <memchr+0xe0>
    1c68:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c6c:	53ffcfff 	b	-52(0xfffffcc) # 1c38 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c70:	0015008d 	move	$r13,$r4
    1c74:	53ffcbff 	b	-56(0xfffffc8) # 1c3c <memchr+0xe8>

0000000000001c78 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c78:	03401c8c 	andi	$r12,$r4,0x7
    1c7c:	40011980 	beqz	$r12,280(0x118) # 1d94 <strnlen+0x11c>
    1c80:	4000f4a0 	beqz	$r5,244(0xf4) # 1d74 <strnlen+0xfc>
    1c84:	2a00008c 	ld.bu	$r12,$r4,0
    1c88:	4000f580 	beqz	$r12,244(0xf4) # 1d7c <strnlen+0x104>
    1c8c:	001500ac 	move	$r12,$r5
    1c90:	0015008d 	move	$r13,$r4
    1c94:	50001000 	b	16(0x10) # 1ca4 <strnlen+0x2c>
    1c98:	4000dd80 	beqz	$r12,220(0xdc) # 1d74 <strnlen+0xfc>
    1c9c:	2a0001ae 	ld.bu	$r14,$r13,0
    1ca0:	4000e5c0 	beqz	$r14,228(0xe4) # 1d84 <strnlen+0x10c>
    1ca4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1ca8:	03401dae 	andi	$r14,$r13,0x7
    1cac:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cb0:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1c98 <strnlen+0x20>
    if (n && *s != c)
    1cb4:	4000c180 	beqz	$r12,192(0xc0) # 1d74 <strnlen+0xfc>
    1cb8:	2a0001ae 	ld.bu	$r14,$r13,0
    1cbc:	4000c9c0 	beqz	$r14,200(0xc8) # 1d84 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cc0:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1cc4:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1da0 <strnlen+0x128>
    1cc8:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1ccc:	260001b0 	ldptr.d	$r16,$r13,0
    1cd0:	03bbfdce 	ori	$r14,$r14,0xeff
    1cd4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cd8:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1cdc:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1ce0:	038201ef 	ori	$r15,$r15,0x80
    1ce4:	0010ba0e 	add.d	$r14,$r16,$r14
    1ce8:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cec:	0016c1ce 	andn	$r14,$r14,$r16
    1cf0:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cf4:	0014bdcf 	and	$r15,$r14,$r15
    1cf8:	4400a9e0 	bnez	$r15,168(0xa8) # 1da0 <strnlen+0x128>
    1cfc:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d00:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d04:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d08:	50001c00 	b	28(0x1c) # 1d24 <strnlen+0xac>
    1d0c:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d10:	0010b9ee 	add.d	$r14,$r15,$r14
    1d14:	0016bdce 	andn	$r14,$r14,$r15
    1d18:	0014c1ce 	and	$r14,$r14,$r16
    1d1c:	440071c0 	bnez	$r14,112(0x70) # 1d8c <strnlen+0x114>
    1d20:	0015022d 	move	$r13,$r17
    1d24:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d28:	03820250 	ori	$r16,$r18,0x80
    1d2c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d30:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d34:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d38:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d3c:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d40:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d44:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d0c <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d48:	40002d80 	beqz	$r12,44(0x2c) # 1d74 <strnlen+0xfc>
    1d4c:	2a00022d 	ld.bu	$r13,$r17,0
    1d50:	400021a0 	beqz	$r13,32(0x20) # 1d70 <strnlen+0xf8>
    1d54:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d58:	0010b22c 	add.d	$r12,$r17,$r12
    1d5c:	001501b1 	move	$r17,$r13
    1d60:	5800158d 	beq	$r12,$r13,20(0x14) # 1d74 <strnlen+0xfc>
    1d64:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d68:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d6c:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d5c <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d70:	00119225 	sub.d	$r5,$r17,$r4
}
    1d74:	001500a4 	move	$r4,$r5
    1d78:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d7c:	001500ac 	move	$r12,$r5
    1d80:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d84:	001501b1 	move	$r17,$r13
    1d88:	53ffc7ff 	b	-60(0xfffffc4) # 1d4c <strnlen+0xd4>
    1d8c:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d90:	53ffc3ff 	b	-64(0xfffffc0) # 1d50 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d94:	001500ac 	move	$r12,$r5
    1d98:	0015008d 	move	$r13,$r4
    1d9c:	53ff1bff 	b	-232(0xfffff18) # 1cb4 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1da0:	001501b1 	move	$r17,$r13
    1da4:	53ffb3ff 	b	-80(0xfffffb0) # 1d54 <strnlen+0xdc>

0000000000001da8 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1da8:	0015948c 	xor	$r12,$r4,$r5
    1dac:	03401d8c 	andi	$r12,$r12,0x7
    1db0:	4400ad80 	bnez	$r12,172(0xac) # 1e5c <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1db4:	03401cac 	andi	$r12,$r5,0x7
    1db8:	40003180 	beqz	$r12,48(0x30) # 1de8 <strcpy+0x40>
            if (!(*d = *s))
    1dbc:	280000ac 	ld.b	$r12,$r5,0
    1dc0:	2900008c 	st.b	$r12,$r4,0
    1dc4:	44001580 	bnez	$r12,20(0x14) # 1dd8 <strcpy+0x30>
    1dc8:	5000bc00 	b	188(0xbc) # 1e84 <strcpy+0xdc>
    1dcc:	280000ac 	ld.b	$r12,$r5,0
    1dd0:	2900008c 	st.b	$r12,$r4,0
    1dd4:	4000a980 	beqz	$r12,168(0xa8) # 1e7c <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1dd8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ddc:	03401cac 	andi	$r12,$r5,0x7
    1de0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1de4:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1dcc <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1de8:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1dec:	260000ae 	ldptr.d	$r14,$r5,0
    1df0:	03bbfd8c 	ori	$r12,$r12,0xeff
    1df4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1df8:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1dfc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e00:	038201ad 	ori	$r13,$r13,0x80
    1e04:	0010b1cc 	add.d	$r12,$r14,$r12
    1e08:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e0c:	0016b98c 	andn	$r12,$r12,$r14
    1e10:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e14:	0014b58c 	and	$r12,$r12,$r13
    1e18:	44004580 	bnez	$r12,68(0x44) # 1e5c <strcpy+0xb4>
    1e1c:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e20:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e24:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e28:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e2c:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e30:	260000ae 	ldptr.d	$r14,$r5,0
    1e34:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e38:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e3c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e40:	038201ed 	ori	$r13,$r15,0x80
    1e44:	0010b1cc 	add.d	$r12,$r14,$r12
    1e48:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e4c:	0016b98c 	andn	$r12,$r12,$r14
    1e50:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e54:	0014b58c 	and	$r12,$r12,$r13
    1e58:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e24 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e5c:	280000ac 	ld.b	$r12,$r5,0
    1e60:	2900008c 	st.b	$r12,$r4,0
    1e64:	40001d80 	beqz	$r12,28(0x1c) # 1e80 <strcpy+0xd8>
    1e68:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e6c:	280000ac 	ld.b	$r12,$r5,0
    1e70:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e74:	2900008c 	st.b	$r12,$r4,0
    1e78:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e68 <strcpy+0xc0>
        ;
    return d;
}
    1e7c:	4c000020 	jirl	$r0,$r1,0
    1e80:	4c000020 	jirl	$r0,$r1,0
    1e84:	4c000020 	jirl	$r0,$r1,0

0000000000001e88 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e88:	0015948c 	xor	$r12,$r4,$r5
    1e8c:	03401d8c 	andi	$r12,$r12,0x7
    1e90:	4400ad80 	bnez	$r12,172(0xac) # 1f3c <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1e94:	03401cac 	andi	$r12,$r5,0x7
    1e98:	44010180 	bnez	$r12,256(0x100) # 1f98 <strncpy+0x110>
            ;
        if (!n || !*s)
    1e9c:	400100c0 	beqz	$r6,256(0x100) # 1f9c <strncpy+0x114>
    1ea0:	280000af 	ld.b	$r15,$r5,0
    1ea4:	400105e0 	beqz	$r15,260(0x104) # 1fa8 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ea8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1eac:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2184 <strncpy+0x2fc>
    1eb0:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1eb4:	260000ae 	ldptr.d	$r14,$r5,0
    1eb8:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ebc:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ec0:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ec4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ec8:	038201ad 	ori	$r13,$r13,0x80
    1ecc:	0010b1cc 	add.d	$r12,$r14,$r12
    1ed0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ed4:	0016b98c 	andn	$r12,$r12,$r14
    1ed8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1edc:	0014b58c 	and	$r12,$r12,$r13
    1ee0:	4402a580 	bnez	$r12,676(0x2a4) # 2184 <strncpy+0x2fc>
    1ee4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1ee8:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1eec:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1ef0:	50001c00 	b	28(0x1c) # 1f0c <strncpy+0x84>
    1ef4:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1ef8:	0010b1cc 	add.d	$r12,$r14,$r12
    1efc:	0016b98c 	andn	$r12,$r12,$r14
    1f00:	0014b58c 	and	$r12,$r12,$r13
    1f04:	44024580 	bnez	$r12,580(0x244) # 2148 <strncpy+0x2c0>
    1f08:	001501e5 	move	$r5,$r15
    1f0c:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f10:	0382020d 	ori	$r13,$r16,0x80
    1f14:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f18:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f1c:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f20:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f24:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f28:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f2c:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f30:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f34:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1ef4 <strncpy+0x6c>
    1f38:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f3c:	400060c0 	beqz	$r6,96(0x60) # 1f9c <strncpy+0x114>
    1f40:	280000ac 	ld.b	$r12,$r5,0
    1f44:	0015008d 	move	$r13,$r4
    1f48:	2900008c 	st.b	$r12,$r4,0
    1f4c:	44001580 	bnez	$r12,20(0x14) # 1f60 <strncpy+0xd8>
    1f50:	50005c00 	b	92(0x5c) # 1fac <strncpy+0x124>
    1f54:	280000ac 	ld.b	$r12,$r5,0
    1f58:	290001ac 	st.b	$r12,$r13,0
    1f5c:	40005180 	beqz	$r12,80(0x50) # 1fac <strncpy+0x124>
    1f60:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f64:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f68:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f6c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f54 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f70:	001501a4 	move	$r4,$r13
    1f74:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f78:	280000ac 	ld.b	$r12,$r5,0
    1f7c:	2900008c 	st.b	$r12,$r4,0
    1f80:	40002980 	beqz	$r12,40(0x28) # 1fa8 <strncpy+0x120>
    1f84:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f88:	03401cac 	andi	$r12,$r5,0x7
    1f8c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f90:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f94:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1e9c <strncpy+0x14>
    1f98:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f78 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1f9c:	0015008d 	move	$r13,$r4
}
    1fa0:	001501a4 	move	$r4,$r13
    1fa4:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fa8:	0015008d 	move	$r13,$r4
    1fac:	0011b40c 	sub.d	$r12,$r0,$r13
    1fb0:	03401d8c 	andi	$r12,$r12,0x7
    1fb4:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fb8:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fbc:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fc0:	0013bdce 	masknez	$r14,$r14,$r15
    1fc4:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1fc8:	00133e0f 	maskeqz	$r15,$r16,$r15
    1fcc:	00153dce 	or	$r14,$r14,$r15
    1fd0:	024004d0 	sltui	$r16,$r6,1(0x1)
    1fd4:	00131a31 	maskeqz	$r17,$r17,$r6
    1fd8:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1fdc:	001540d0 	or	$r16,$r6,$r16
    1fe0:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2158 <strncpy+0x2d0>
    1fe4:	40015980 	beqz	$r12,344(0x158) # 213c <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1fe8:	290001a0 	st.b	$r0,$r13,0
    1fec:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1ff0:	5801458f 	beq	$r12,$r15,324(0x144) # 2134 <strncpy+0x2ac>
    1ff4:	290005a0 	st.b	$r0,$r13,1(0x1)
    1ff8:	0280080f 	addi.w	$r15,$r0,2(0x2)
    1ffc:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2000:	5801658f 	beq	$r12,$r15,356(0x164) # 2164 <strncpy+0x2dc>
    2004:	290009a0 	st.b	$r0,$r13,2(0x2)
    2008:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    200c:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2010:	58011d8f 	beq	$r12,$r15,284(0x11c) # 212c <strncpy+0x2a4>
    2014:	29000da0 	st.b	$r0,$r13,3(0x3)
    2018:	0280100f 	addi.w	$r15,$r0,4(0x4)
    201c:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2020:	58014d8f 	beq	$r12,$r15,332(0x14c) # 216c <strncpy+0x2e4>
    2024:	290011a0 	st.b	$r0,$r13,4(0x4)
    2028:	0280140f 	addi.w	$r15,$r0,5(0x5)
    202c:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2030:	5801458f 	beq	$r12,$r15,324(0x144) # 2174 <strncpy+0x2ec>
    2034:	290015a0 	st.b	$r0,$r13,5(0x5)
    2038:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    203c:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2040:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 217c <strncpy+0x2f4>
    2044:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2048:	290019a0 	st.b	$r0,$r13,6(0x6)
    204c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2050:	0011b210 	sub.d	$r16,$r16,$r12
    2054:	00450e11 	srli.d	$r17,$r16,0x3
    2058:	0010b1ac 	add.d	$r12,$r13,$r12
    205c:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2060:	27000180 	stptr.d	$r0,$r12,0
    2064:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2068:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2060 <strncpy+0x1d8>
    206c:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2070:	0014c611 	and	$r17,$r16,$r17
    2074:	0040822f 	slli.w	$r15,$r17,0x0
    2078:	001049ef 	add.w	$r15,$r15,$r18
    207c:	0010c5cc 	add.d	$r12,$r14,$r17
    2080:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f70 <strncpy+0xe8>
    2084:	29000180 	st.b	$r0,$r12,0
    2088:	028005ee 	addi.w	$r14,$r15,1(0x1)
    208c:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f70 <strncpy+0xe8>
    2090:	29000580 	st.b	$r0,$r12,1(0x1)
    2094:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2098:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f70 <strncpy+0xe8>
    209c:	29000980 	st.b	$r0,$r12,2(0x2)
    20a0:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20a4:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f70 <strncpy+0xe8>
    20a8:	29000d80 	st.b	$r0,$r12,3(0x3)
    20ac:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20b0:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f70 <strncpy+0xe8>
    20b4:	29001180 	st.b	$r0,$r12,4(0x4)
    20b8:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20bc:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f70 <strncpy+0xe8>
    20c0:	29001580 	st.b	$r0,$r12,5(0x5)
    20c4:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20c8:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f70 <strncpy+0xe8>
    20cc:	29001980 	st.b	$r0,$r12,6(0x6)
    20d0:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20d4:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f70 <strncpy+0xe8>
    20d8:	29001d80 	st.b	$r0,$r12,7(0x7)
    20dc:	028021ee 	addi.w	$r14,$r15,8(0x8)
    20e0:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f70 <strncpy+0xe8>
    20e4:	29002180 	st.b	$r0,$r12,8(0x8)
    20e8:	028025ee 	addi.w	$r14,$r15,9(0x9)
    20ec:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f70 <strncpy+0xe8>
    20f0:	29002580 	st.b	$r0,$r12,9(0x9)
    20f4:	028029ee 	addi.w	$r14,$r15,10(0xa)
    20f8:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f70 <strncpy+0xe8>
    20fc:	29002980 	st.b	$r0,$r12,10(0xa)
    2100:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2104:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f70 <strncpy+0xe8>
    2108:	29002d80 	st.b	$r0,$r12,11(0xb)
    210c:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2110:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f70 <strncpy+0xe8>
    2114:	29003180 	st.b	$r0,$r12,12(0xc)
    2118:	028035ef 	addi.w	$r15,$r15,13(0xd)
    211c:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f70 <strncpy+0xe8>
    2120:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2124:	001501a4 	move	$r4,$r13
    2128:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    212c:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2130:	53ff23ff 	b	-224(0xfffff20) # 2050 <strncpy+0x1c8>
    2134:	02800412 	addi.w	$r18,$r0,1(0x1)
    2138:	53ff1bff 	b	-232(0xfffff18) # 2050 <strncpy+0x1c8>
    213c:	001501ae 	move	$r14,$r13
    2140:	00150012 	move	$r18,$r0
    2144:	53ff0fff 	b	-244(0xfffff0c) # 2050 <strncpy+0x1c8>
    2148:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    214c:	0015008d 	move	$r13,$r4
    2150:	001501e5 	move	$r5,$r15
    2154:	53fdf7ff 	b	-524(0xffffdf4) # 1f48 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2158:	001501ac 	move	$r12,$r13
    215c:	0015000f 	move	$r15,$r0
    2160:	53ff27ff 	b	-220(0xfffff24) # 2084 <strncpy+0x1fc>
    2164:	02800812 	addi.w	$r18,$r0,2(0x2)
    2168:	53feebff 	b	-280(0xffffee8) # 2050 <strncpy+0x1c8>
    216c:	02801012 	addi.w	$r18,$r0,4(0x4)
    2170:	53fee3ff 	b	-288(0xffffee0) # 2050 <strncpy+0x1c8>
    2174:	02801412 	addi.w	$r18,$r0,5(0x5)
    2178:	53fedbff 	b	-296(0xffffed8) # 2050 <strncpy+0x1c8>
    217c:	02801812 	addi.w	$r18,$r0,6(0x6)
    2180:	53fed3ff 	b	-304(0xffffed0) # 2050 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2184:	2900008f 	st.b	$r15,$r4,0
    2188:	0015008d 	move	$r13,$r4
    218c:	53fdd7ff 	b	-556(0xffffdd4) # 1f60 <strncpy+0xd8>

0000000000002190 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2190:	0015008c 	move	$r12,$r4
    2194:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2198:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    219c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21a0:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21a4:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21a8:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21ac:	00408084 	slli.w	$r4,$r4,0x0
}
    21b0:	4c000020 	jirl	$r0,$r1,0

00000000000021b4 <openat>:
    register long a7 __asm__("a7") = n;
    21b4:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21b8:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21bc:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21c0:	00408084 	slli.w	$r4,$r4,0x0
}
    21c4:	4c000020 	jirl	$r0,$r1,0

00000000000021c8 <close>:
    register long a7 __asm__("a7") = n;
    21c8:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21cc:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21d0:	00408084 	slli.w	$r4,$r4,0x0
}
    21d4:	4c000020 	jirl	$r0,$r1,0

00000000000021d8 <read>:
    register long a7 __asm__("a7") = n;
    21d8:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21dc:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    21e0:	4c000020 	jirl	$r0,$r1,0

00000000000021e4 <write>:
    register long a7 __asm__("a7") = n;
    21e4:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    21e8:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    21ec:	4c000020 	jirl	$r0,$r1,0

00000000000021f0 <getpid>:
    register long a7 __asm__("a7") = n;
    21f0:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    21f4:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    21f8:	00408084 	slli.w	$r4,$r4,0x0
}
    21fc:	4c000020 	jirl	$r0,$r1,0

0000000000002200 <getppid>:
    register long a7 __asm__("a7") = n;
    2200:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2204:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2208:	00408084 	slli.w	$r4,$r4,0x0
}
    220c:	4c000020 	jirl	$r0,$r1,0

0000000000002210 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2210:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2214:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2218:	00408084 	slli.w	$r4,$r4,0x0
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <fork>:
    register long a7 __asm__("a7") = n;
    2220:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2224:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2228:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    222c:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2230:	00408084 	slli.w	$r4,$r4,0x0
}
    2234:	4c000020 	jirl	$r0,$r1,0

0000000000002238 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2238:	001500c5 	move	$r5,$r6
    if (stack)
    223c:	400008c0 	beqz	$r6,8(0x8) # 2244 <clone+0xc>
	stack += stack_size;
    2240:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2244:	00408106 	slli.w	$r6,$r8,0x0
    2248:	00150009 	move	$r9,$r0
    224c:	00150008 	move	$r8,$r0
    2250:	00150007 	move	$r7,$r0
    2254:	5002c800 	b	712(0x2c8) # 251c <__clone>

0000000000002258 <exit>:
    register long a7 __asm__("a7") = n;
    2258:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    225c:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2260:	4c000020 	jirl	$r0,$r1,0

0000000000002264 <waitpid>:
    register long a7 __asm__("a7") = n;
    2264:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2268:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    226c:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2270:	00408084 	slli.w	$r4,$r4,0x0
}
    2274:	4c000020 	jirl	$r0,$r1,0

0000000000002278 <exec>:
    register long a7 __asm__("a7") = n;
    2278:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    227c:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2280:	00408084 	slli.w	$r4,$r4,0x0
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <execve>:
    register long a7 __asm__("a7") = n;
    2288:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    228c:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2290:	00408084 	slli.w	$r4,$r4,0x0
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <times>:
    register long a7 __asm__("a7") = n;
    2298:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    229c:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22a0:	00408084 	slli.w	$r4,$r4,0x0
}
    22a4:	4c000020 	jirl	$r0,$r1,0

00000000000022a8 <get_time>:

int64 get_time()
{
    22a8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22ac:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22b0:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22b4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22b8:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22bc:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22c0:	44003c80 	bnez	$r4,60(0x3c) # 22fc <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22c4:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22c8:	039f3c8c 	ori	$r12,$r4,0x7cf
    22cc:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22d0:	2a40006d 	ld.hu	$r13,$r3,0
    22d4:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    22d8:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    22dc:	00450c84 	srli.d	$r4,$r4,0x3
    22e0:	001eb084 	mulh.du	$r4,$r4,$r12
    22e4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    22e8:	001db1ac 	mul.d	$r12,$r13,$r12
    22ec:	00451084 	srli.d	$r4,$r4,0x4
    22f0:	00109184 	add.d	$r4,$r12,$r4
}
    22f4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    22f8:	4c000020 	jirl	$r0,$r1,0
        return -1;
    22fc:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2300:	53fff7ff 	b	-12(0xffffff4) # 22f4 <get_time+0x4c>

0000000000002304 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2304:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2308:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    230c:	00408084 	slli.w	$r4,$r4,0x0
}
    2310:	4c000020 	jirl	$r0,$r1,0

0000000000002314 <time>:
    register long a7 __asm__("a7") = n;
    2314:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2318:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    231c:	00408084 	slli.w	$r4,$r4,0x0
}
    2320:	4c000020 	jirl	$r0,$r1,0

0000000000002324 <sleep>:

int sleep(unsigned long long time)
{
    2324:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2328:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    232c:	00150064 	move	$r4,$r3
    2330:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2334:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2338:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    233c:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2340:	44001080 	bnez	$r4,16(0x10) # 2350 <sleep+0x2c>
    return 0;
    2344:	00150004 	move	$r4,$r0
}
    2348:	02c04063 	addi.d	$r3,$r3,16(0x10)
    234c:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2350:	24000064 	ldptr.w	$r4,$r3,0
}
    2354:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2358:	4c000020 	jirl	$r0,$r1,0

000000000000235c <set_priority>:
    register long a7 __asm__("a7") = n;
    235c:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2360:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2364:	00408084 	slli.w	$r4,$r4,0x0
}
    2368:	4c000020 	jirl	$r0,$r1,0

000000000000236c <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    236c:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2370:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2374:	4c000020 	jirl	$r0,$r1,0

0000000000002378 <munmap>:
    register long a7 __asm__("a7") = n;
    2378:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    237c:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2380:	00408084 	slli.w	$r4,$r4,0x0
}
    2384:	4c000020 	jirl	$r0,$r1,0

0000000000002388 <wait>:

int wait(int *code)
{
    2388:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    238c:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2390:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2394:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2398:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    239c:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23a0:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23a4:	4c000020 	jirl	$r0,$r1,0

00000000000023a8 <spawn>:
    register long a7 __asm__("a7") = n;
    23a8:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23ac:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23b0:	00408084 	slli.w	$r4,$r4,0x0
}
    23b4:	4c000020 	jirl	$r0,$r1,0

00000000000023b8 <mailread>:
    register long a7 __asm__("a7") = n;
    23b8:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23bc:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23c0:	00408084 	slli.w	$r4,$r4,0x0
}
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <mailwrite>:
    register long a7 __asm__("a7") = n;
    23c8:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23cc:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23d0:	00408084 	slli.w	$r4,$r4,0x0
}
    23d4:	4c000020 	jirl	$r0,$r1,0

00000000000023d8 <fstat>:
    register long a7 __asm__("a7") = n;
    23d8:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23dc:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    23e0:	00408084 	slli.w	$r4,$r4,0x0
}
    23e4:	4c000020 	jirl	$r0,$r1,0

00000000000023e8 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    23e8:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    23ec:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23f0:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    23fc:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2400:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2404:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2408:	00408084 	slli.w	$r4,$r4,0x0
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <link>:

int link(char *old_path, char *new_path)
{
    2410:	0015008c 	move	$r12,$r4
    2414:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2418:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    241c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2420:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2424:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2428:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    242c:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2430:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <unlink>:

int unlink(char *path)
{
    2438:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    243c:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2440:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2444:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2448:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    244c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <uname>:
    register long a7 __asm__("a7") = n;
    2454:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2458:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <brk>:
    register long a7 __asm__("a7") = n;
    2464:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2468:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <getcwd>:
    register long a7 __asm__("a7") = n;
    2474:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2478:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    247c:	4c000020 	jirl	$r0,$r1,0

0000000000002480 <chdir>:
    register long a7 __asm__("a7") = n;
    2480:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2484:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2488:	00408084 	slli.w	$r4,$r4,0x0
}
    248c:	4c000020 	jirl	$r0,$r1,0

0000000000002490 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2490:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2494:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2498:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    249c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24a0:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24a4:	002b0000 	syscall	0x0
    24a8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ac:	4c000020 	jirl	$r0,$r1,0

00000000000024b0 <getdents>:
    register long a7 __asm__("a7") = n;
    24b0:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24b4:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24b8:	00408084 	slli.w	$r4,$r4,0x0
}
    24bc:	4c000020 	jirl	$r0,$r1,0

00000000000024c0 <pipe>:
    register long a7 __asm__("a7") = n;
    24c0:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24c4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24c8:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24cc:	00408084 	slli.w	$r4,$r4,0x0
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <dup>:
    register long a7 __asm__("a7") = n;
    24d4:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    24d8:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    24dc:	00408084 	slli.w	$r4,$r4,0x0
}
    24e0:	4c000020 	jirl	$r0,$r1,0

00000000000024e4 <dup2>:
    register long a7 __asm__("a7") = n;
    24e4:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    24e8:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24ec:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    24f0:	00408084 	slli.w	$r4,$r4,0x0
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <mount>:
    register long a7 __asm__("a7") = n;
    24f8:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24fc:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <umount>:
    register long a7 __asm__("a7") = n;
    2508:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    250c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2510:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    251c:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2520:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2524:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2528:	001500c4 	move	$r4,$r6
	move $a2, $a4
    252c:	00150106 	move	$r6,$r8
	move $a3, $a5
    2530:	00150127 	move	$r7,$r9
	move $a4, $a6
    2534:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2538:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    253c:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2540:	40000880 	beqz	$r4,8(0x8) # 2548 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2544:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2548:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    254c:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2550:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2554:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2558:	002b0000 	syscall	0x0
