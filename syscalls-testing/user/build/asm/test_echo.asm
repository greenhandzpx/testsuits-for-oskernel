
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/test_echo:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54004c00 	bl	76(0x4c) # 1050 <__start_main>

0000000000001008 <main>:

/*
 * for execve
 */

int main(int argc, char *argv[]){
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    printf("  I am test_echo.\nexecve success.\n");
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d39084 	addi.d	$r4,$r4,1252(0x4e4)
int main(int argc, char *argv[]){
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    printf("  I am test_echo.\nexecve success.\n");
    1018:	54037800 	bl	888(0x378) # 1390 <printf>
    TEST_END(__func__);
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d3f084 	addi.d	$r4,$r4,1276(0x4fc)
    1024:	54033400 	bl	820(0x334) # 1358 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d46084 	addi.d	$r4,$r4,1304(0x518)
    1030:	54032800 	bl	808(0x328) # 1358 <puts>
    1034:	1c000024 	pcaddu12i	$r4,1(0x1)
    1038:	02d3d084 	addi.d	$r4,$r4,1268(0x4f4)
    103c:	54031c00 	bl	796(0x31c) # 1358 <puts>
    return 0;
}
    1040:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1044:	00150004 	move	$r4,$r0
    1048:	02c04063 	addi.d	$r3,$r3,16(0x10)
    104c:	4c000020 	jirl	$r0,$r1,0

0000000000001050 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1050:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1054:	24000084 	ldptr.w	$r4,$r4,0
{
    1058:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    105c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1060:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1064:	57ffa7ff 	bl	-92(0xfffffa4) # 1008 <main>
    1068:	54118000 	bl	4480(0x1180) # 21e8 <exit>
	return 0;
}
    106c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1070:	00150004 	move	$r4,$r0
    1074:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1078:	4c000020 	jirl	$r0,$r1,0

000000000000107c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    107c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1080:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1084:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1250 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1088:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    108c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1090:	02d2f18c 	addi.d	$r12,$r12,1212(0x4bc)
    1094:	002195cf 	mod.wu	$r15,$r14,$r5
    1098:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10a0 <printint.constprop.0+0x24>
    109c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    10a0:	002115cd 	div.wu	$r13,$r14,$r5
    10a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10ac <printint.constprop.0+0x30>
    10a8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    10ac:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    10b0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    10b4:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    10b8:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    10bc:	680219c5 	bltu	$r14,$r5,536(0x218) # 12d4 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    10c0:	002195af 	mod.wu	$r15,$r13,$r5
    10c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10cc <printint.constprop.0+0x50>
    10c8:	002a0007 	break	0x7
    10cc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    10d0:	002115ae 	div.wu	$r14,$r13,$r5
    10d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10dc <printint.constprop.0+0x60>
    10d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    10dc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    10e0:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    10e4:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 12a4 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    10e8:	002195cf 	mod.wu	$r15,$r14,$r5
    10ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 10f4 <printint.constprop.0+0x78>
    10f0:	002a0007 	break	0x7
    10f4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    10f8:	002115cd 	div.wu	$r13,$r14,$r5
    10fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1104 <printint.constprop.0+0x88>
    1100:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1104:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1108:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    110c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 12b0 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1110:	002195af 	mod.wu	$r15,$r13,$r5
    1114:	5c0008a0 	bne	$r5,$r0,8(0x8) # 111c <printint.constprop.0+0xa0>
    1118:	002a0007 	break	0x7
    111c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1120:	002115ae 	div.wu	$r14,$r13,$r5
    1124:	5c0008a0 	bne	$r5,$r0,8(0x8) # 112c <printint.constprop.0+0xb0>
    1128:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    112c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1130:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1134:	680189a5 	bltu	$r13,$r5,392(0x188) # 12bc <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1138:	002195cf 	mod.wu	$r15,$r14,$r5
    113c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1144 <printint.constprop.0+0xc8>
    1140:	002a0007 	break	0x7
    1144:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1148:	002115cd 	div.wu	$r13,$r14,$r5
    114c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1154 <printint.constprop.0+0xd8>
    1150:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1154:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1158:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    115c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 12c8 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1160:	002195af 	mod.wu	$r15,$r13,$r5
    1164:	5c0008a0 	bne	$r5,$r0,8(0x8) # 116c <printint.constprop.0+0xf0>
    1168:	002a0007 	break	0x7
    116c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1170:	002115ae 	div.wu	$r14,$r13,$r5
    1174:	5c0008a0 	bne	$r5,$r0,8(0x8) # 117c <printint.constprop.0+0x100>
    1178:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    117c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1180:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1184:	680115a5 	bltu	$r13,$r5,276(0x114) # 1298 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1188:	002195cf 	mod.wu	$r15,$r14,$r5
    118c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1194 <printint.constprop.0+0x118>
    1190:	002a0007 	break	0x7
    1194:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1198:	002115cd 	div.wu	$r13,$r14,$r5
    119c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a4 <printint.constprop.0+0x128>
    11a0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11a8:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    11ac:	680131c5 	bltu	$r14,$r5,304(0x130) # 12dc <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    11b0:	002195af 	mod.wu	$r15,$r13,$r5
    11b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11bc <printint.constprop.0+0x140>
    11b8:	002a0007 	break	0x7
    11bc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11c0:	002115ae 	div.wu	$r14,$r13,$r5
    11c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11cc <printint.constprop.0+0x150>
    11c8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11cc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11d0:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    11d4:	680115a5 	bltu	$r13,$r5,276(0x114) # 12e8 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    11d8:	002195cf 	mod.wu	$r15,$r14,$r5
    11dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e4 <printint.constprop.0+0x168>
    11e0:	002a0007 	break	0x7
    11e4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e8:	002115cd 	div.wu	$r13,$r14,$r5
    11ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f4 <printint.constprop.0+0x178>
    11f0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f8:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    11fc:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 12f4 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1200:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1204:	3820358d 	ldx.bu	$r13,$r12,$r13
    1208:	02801805 	addi.w	$r5,$r0,6(0x6)
    120c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1210:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1214:	64001880 	bge	$r4,$r0,24(0x18) # 122c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1218:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    121c:	0010b1ad 	add.d	$r13,$r13,$r12
    1220:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1224:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1228:	00150185 	move	$r5,$r12
    write(f, s, l);
    122c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1230:	02804006 	addi.w	$r6,$r0,16(0x10)
    1234:	001114c6 	sub.w	$r6,$r6,$r5
    1238:	02800404 	addi.w	$r4,$r0,1(0x1)
    123c:	00109585 	add.d	$r5,$r12,$r5
    1240:	540f3400 	bl	3892(0xf34) # 2174 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1244:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1248:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    124c:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1250:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1254:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1258:	02cbd18c 	addi.d	$r12,$r12,756(0x2f4)
    125c:	002195cf 	mod.wu	$r15,$r14,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0x1ec>
    1264:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1268:	002115cd 	div.wu	$r13,$r14,$r5
    126c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1274 <printint.constprop.0+0x1f8>
    1270:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1274:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1278:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    127c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1280:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1284:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 10c0 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1288:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    128c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1290:	02803805 	addi.w	$r5,$r0,14(0xe)
    1294:	53ff9bff 	b	-104(0xfffff98) # 122c <printint.constprop.0+0x1b0>
    1298:	0280240c 	addi.w	$r12,$r0,9(0x9)
    129c:	02802805 	addi.w	$r5,$r0,10(0xa)
    12a0:	53ff77ff 	b	-140(0xfffff74) # 1214 <printint.constprop.0+0x198>
    12a4:	0280340c 	addi.w	$r12,$r0,13(0xd)
    12a8:	02803805 	addi.w	$r5,$r0,14(0xe)
    12ac:	53ff6bff 	b	-152(0xfffff68) # 1214 <printint.constprop.0+0x198>
    12b0:	0280300c 	addi.w	$r12,$r0,12(0xc)
    12b4:	02803405 	addi.w	$r5,$r0,13(0xd)
    12b8:	53ff5fff 	b	-164(0xfffff5c) # 1214 <printint.constprop.0+0x198>
    12bc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    12c0:	02803005 	addi.w	$r5,$r0,12(0xc)
    12c4:	53ff53ff 	b	-176(0xfffff50) # 1214 <printint.constprop.0+0x198>
    12c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
    12cc:	02802c05 	addi.w	$r5,$r0,11(0xb)
    12d0:	53ff47ff 	b	-188(0xfffff44) # 1214 <printint.constprop.0+0x198>
    i = 15;
    12d4:	02803c05 	addi.w	$r5,$r0,15(0xf)
    12d8:	53ff57ff 	b	-172(0xfffff54) # 122c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    12dc:	0280200c 	addi.w	$r12,$r0,8(0x8)
    12e0:	02802405 	addi.w	$r5,$r0,9(0x9)
    12e4:	53ff33ff 	b	-208(0xfffff30) # 1214 <printint.constprop.0+0x198>
    12e8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    12ec:	02802005 	addi.w	$r5,$r0,8(0x8)
    12f0:	53ff27ff 	b	-220(0xfffff24) # 1214 <printint.constprop.0+0x198>
    12f4:	0280180c 	addi.w	$r12,$r0,6(0x6)
    12f8:	02801c05 	addi.w	$r5,$r0,7(0x7)
    12fc:	53ff1bff 	b	-232(0xfffff18) # 1214 <printint.constprop.0+0x198>

0000000000001300 <getchar>:
{
    1300:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1304:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1308:	02800406 	addi.w	$r6,$r0,1(0x1)
    130c:	00150004 	move	$r4,$r0
{
    1310:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1314:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1318:	540e5000 	bl	3664(0xe50) # 2168 <read>
}
    131c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1320:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1324:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1328:	4c000020 	jirl	$r0,$r1,0

000000000000132c <putchar>:
{
    132c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1330:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1334:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1338:	02800406 	addi.w	$r6,$r0,1(0x1)
    133c:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1340:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1344:	540e3000 	bl	3632(0xe30) # 2174 <write>
}
    1348:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    134c:	00408084 	slli.w	$r4,$r4,0x0
}
    1350:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1354:	4c000020 	jirl	$r0,$r1,0

0000000000001358 <puts>:
{
    1358:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    135c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1360:	27000077 	stptr.d	$r23,$r3,0
    1364:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1368:	5406b800 	bl	1720(0x6b8) # 1a20 <strlen>
    136c:	00150086 	move	$r6,$r4
    1370:	001502e5 	move	$r5,$r23
    1374:	02800404 	addi.w	$r4,$r0,1(0x1)
    1378:	540dfc00 	bl	3580(0xdfc) # 2174 <write>
}
    137c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1380:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1384:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1388:	02c04063 	addi.d	$r3,$r3,16(0x10)
    138c:	4c000020 	jirl	$r0,$r1,0

0000000000001390 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1390:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1394:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1398:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    139c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    13a0:	29c14079 	st.d	$r25,$r3,80(0x50)
    13a4:	29c1007b 	st.d	$r27,$r3,64(0x40)
    13a8:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    13ac:	29c1a061 	st.d	$r1,$r3,104(0x68)
    13b0:	29c18077 	st.d	$r23,$r3,96(0x60)
    13b4:	29c16078 	st.d	$r24,$r3,88(0x58)
    13b8:	0015009b 	move	$r27,$r4
    13bc:	29c1e065 	st.d	$r5,$r3,120(0x78)
    13c0:	29c20066 	st.d	$r6,$r3,128(0x80)
    13c4:	29c22067 	st.d	$r7,$r3,136(0x88)
    13c8:	29c24068 	st.d	$r8,$r3,144(0x90)
    13cc:	29c26069 	st.d	$r9,$r3,152(0x98)
    13d0:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    13d4:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    13d8:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    13dc:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    13e0:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    13e4:	1c00003c 	pcaddu12i	$r28,1(0x1)
    13e8:	02c5939c 	addi.d	$r28,$r28,356(0x164)
        if (!*s)
    13ec:	2800036c 	ld.b	$r12,$r27,0
    13f0:	40008980 	beqz	$r12,136(0x88) # 1478 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    13f4:	58027d99 	beq	$r12,$r25,636(0x27c) # 1670 <printf+0x2e0>
    13f8:	00150366 	move	$r6,$r27
    13fc:	50000800 	b	8(0x8) # 1404 <printf+0x74>
    1400:	58009d99 	beq	$r12,$r25,156(0x9c) # 149c <printf+0x10c>
    1404:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1408:	280000cc 	ld.b	$r12,$r6,0
    140c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1400 <printf+0x70>
    1410:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1414:	0011ecd7 	sub.d	$r23,$r6,$r27
    1418:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    141c:	001502e6 	move	$r6,$r23
    1420:	00150365 	move	$r5,$r27
    1424:	02800404 	addi.w	$r4,$r0,1(0x1)
    1428:	540d4c00 	bl	3404(0xd4c) # 2174 <write>
        out(f, a, l);
        if (l)
    142c:	4400b6e0 	bnez	$r23,180(0xb4) # 14e0 <printf+0x150>
            continue;
        if (s[1] == 0)
    1430:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1434:	40004580 	beqz	$r12,68(0x44) # 1478 <printf+0xe8>
            break;
        switch (s[1])
    1438:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    143c:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1510 <printf+0x180>
    1440:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 14e8 <printf+0x158>
    1444:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1448:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1638 <printf+0x2a8>
    144c:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1450:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1600 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1454:	2600006c 	ldptr.d	$r12,$r3,0
    1458:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    145c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1460:	24000184 	ldptr.w	$r4,$r12,0
    1464:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1468:	2700006c 	stptr.d	$r12,$r3,0
    146c:	57fc13ff 	bl	-1008(0xffffc10) # 107c <printint.constprop.0>
        if (!*s)
    1470:	2800036c 	ld.b	$r12,$r27,0
    1474:	47ff819f 	bnez	$r12,-128(0x7fff80) # 13f4 <printf+0x64>
    }
    va_end(ap);
}
    1478:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    147c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1480:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1484:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1488:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    148c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1490:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1494:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1498:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    149c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    14a0:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1410 <printf+0x80>
    14a4:	001500d8 	move	$r24,$r6
    14a8:	50000c00 	b	12(0xc) # 14b4 <printf+0x124>
    14ac:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14b0:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1414 <printf+0x84>
    14b4:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    14b8:	2800030c 	ld.b	$r12,$r24,0
    14bc:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14c0:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 14ac <printf+0x11c>
        l = z - a;
    14c4:	0011ecd7 	sub.d	$r23,$r6,$r27
    14c8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14cc:	001502e6 	move	$r6,$r23
    14d0:	00150365 	move	$r5,$r27
    14d4:	02800404 	addi.w	$r4,$r0,1(0x1)
    14d8:	540c9c00 	bl	3228(0xc9c) # 2174 <write>
        if (l)
    14dc:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1430 <printf+0xa0>
    14e0:	0015031b 	move	$r27,$r24
    14e4:	53ff0bff 	b	-248(0xfffff08) # 13ec <printf+0x5c>
        switch (s[1])
    14e8:	0281900d 	addi.w	$r13,$r0,100(0x64)
    14ec:	5c01158d 	bne	$r12,$r13,276(0x114) # 1600 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    14f0:	2600006c 	ldptr.d	$r12,$r3,0
    14f4:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    14f8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    14fc:	24000184 	ldptr.w	$r4,$r12,0
    1500:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1504:	2700006c 	stptr.d	$r12,$r3,0
    1508:	57fb77ff 	bl	-1164(0xffffb74) # 107c <printint.constprop.0>
        s += 2;
    150c:	53ff67ff 	b	-156(0xfffff64) # 1470 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1510:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1514:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1518:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    151c:	260001ac 	ldptr.d	$r12,$r13,0
    1520:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1524:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1528:	0045f18a 	srli.d	$r10,$r12,0x3c
    152c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1530:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1534:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1538:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    153c:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1540:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1544:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1548:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    154c:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1550:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1554:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1558:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    155c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1560:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1564:	3820278a 	ldx.bu	$r10,$r28,$r9
    1568:	38202389 	ldx.bu	$r9,$r28,$r8
    156c:	38201f88 	ldx.bu	$r8,$r28,$r7
    1570:	38201787 	ldx.bu	$r7,$r28,$r5
    1574:	38201385 	ldx.bu	$r5,$r28,$r4
    1578:	38205384 	ldx.bu	$r4,$r28,$r20
    157c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1580:	38204b93 	ldx.bu	$r19,$r28,$r18
    1584:	38204792 	ldx.bu	$r18,$r28,$r17
    1588:	38204391 	ldx.bu	$r17,$r28,$r16
    158c:	38203f90 	ldx.bu	$r16,$r28,$r15
    1590:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1594:	3820378e 	ldx.bu	$r14,$r28,$r13
    1598:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    159c:	03403d8c 	andi	$r12,$r12,0xf
    15a0:	2900286b 	st.b	$r11,$r3,10(0xa)
    15a4:	29002c6a 	st.b	$r10,$r3,11(0xb)
    15a8:	29003069 	st.b	$r9,$r3,12(0xc)
    15ac:	29003468 	st.b	$r8,$r3,13(0xd)
    15b0:	29003867 	st.b	$r7,$r3,14(0xe)
    15b4:	29003c65 	st.b	$r5,$r3,15(0xf)
    15b8:	29004064 	st.b	$r4,$r3,16(0x10)
    15bc:	29004474 	st.b	$r20,$r3,17(0x11)
    15c0:	29004873 	st.b	$r19,$r3,18(0x12)
    15c4:	29004c72 	st.b	$r18,$r3,19(0x13)
    15c8:	29005071 	st.b	$r17,$r3,20(0x14)
    15cc:	29005470 	st.b	$r16,$r3,21(0x15)
    15d0:	2900586f 	st.b	$r15,$r3,22(0x16)
    15d4:	29005c6e 	st.b	$r14,$r3,23(0x17)
    15d8:	3820378d 	ldx.bu	$r13,$r28,$r13
    15dc:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    15e0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    15e4:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15e8:	2900606d 	st.b	$r13,$r3,24(0x18)
    15ec:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    15f0:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    15f4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    15f8:	540b7c00 	bl	2940(0xb7c) # 2174 <write>
        s += 2;
    15fc:	53fe77ff 	b	-396(0xffffe74) # 1470 <printf+0xe0>
    char byte = c;
    1600:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1604:	02800406 	addi.w	$r6,$r0,1(0x1)
    1608:	02c02065 	addi.d	$r5,$r3,8(0x8)
    160c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1610:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1614:	540b6000 	bl	2912(0xb60) # 2174 <write>
    char byte = c;
    1618:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    161c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1620:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1624:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1628:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    162c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1630:	540b4400 	bl	2884(0xb44) # 2174 <write>
        s += 2;
    1634:	53fe3fff 	b	-452(0xffffe3c) # 1470 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1638:	2600006c 	ldptr.d	$r12,$r3,0
    163c:	26000197 	ldptr.d	$r23,$r12,0
    1640:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1644:	2700006c 	stptr.d	$r12,$r3,0
    1648:	40004ee0 	beqz	$r23,76(0x4c) # 1694 <printf+0x304>
            l = strnlen(a, 200);
    164c:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1650:	001502e4 	move	$r4,$r23
    1654:	5405b400 	bl	1460(0x5b4) # 1c08 <strnlen>
    1658:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    165c:	001502e5 	move	$r5,$r23
    1660:	02800404 	addi.w	$r4,$r0,1(0x1)
    1664:	540b1000 	bl	2832(0xb10) # 2174 <write>
        s += 2;
    1668:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    166c:	53fe07ff 	b	-508(0xffffe04) # 1470 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1670:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1674:	00150366 	move	$r6,$r27
    1678:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 14a4 <printf+0x114>
    write(f, s, l);
    167c:	00150006 	move	$r6,$r0
    1680:	00150365 	move	$r5,$r27
    1684:	02800404 	addi.w	$r4,$r0,1(0x1)
    1688:	540aec00 	bl	2796(0xaec) # 2174 <write>
    168c:	00150378 	move	$r24,$r27
    1690:	53fda3ff 	b	-608(0xffffda0) # 1430 <printf+0xa0>
                a = "(null)";
    1694:	1c000037 	pcaddu12i	$r23,1(0x1)
    1698:	02fa92f7 	addi.d	$r23,$r23,-348(0xea4)
    169c:	53ffb3ff 	b	-80(0xfffffb0) # 164c <printf+0x2bc>

00000000000016a0 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    16a0:	0280800c 	addi.w	$r12,$r0,32(0x20)
    16a4:	5800108c 	beq	$r4,$r12,16(0x10) # 16b4 <isspace+0x14>
    16a8:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    16ac:	02401484 	sltui	$r4,$r4,5(0x5)
    16b0:	4c000020 	jirl	$r0,$r1,0
    16b4:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    16b8:	4c000020 	jirl	$r0,$r1,0

00000000000016bc <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    16bc:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    16c0:	02402884 	sltui	$r4,$r4,10(0xa)
    16c4:	4c000020 	jirl	$r0,$r1,0

00000000000016c8 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    16c8:	0280800e 	addi.w	$r14,$r0,32(0x20)
    16cc:	0280100f 	addi.w	$r15,$r0,4(0x4)
    16d0:	2800008d 	ld.b	$r13,$r4,0
    16d4:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    16d8:	580061ae 	beq	$r13,$r14,96(0x60) # 1738 <atoi+0x70>
    16dc:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1738 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    16e0:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    16e4:	580065ac 	beq	$r13,$r12,100(0x64) # 1748 <atoi+0x80>
    16e8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    16ec:	58007dac 	beq	$r13,$r12,124(0x7c) # 1768 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    16f0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    16f4:	0280240e 	addi.w	$r14,$r0,9(0x9)
    16f8:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    16fc:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1700:	680061cf 	bltu	$r14,$r15,96(0x60) # 1760 <atoi+0x98>
    int n = 0, neg = 0;
    1704:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1708:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    170c:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1710:	001c126f 	mul.w	$r15,$r19,$r4
    1714:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1718:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    171c:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1720:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1724:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1728:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    172c:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1710 <atoi+0x48>
    return neg ? n : -n;
    1730:	40001280 	beqz	$r20,16(0x10) # 1740 <atoi+0x78>
}
    1734:	4c000020 	jirl	$r0,$r1,0
        s++;
    1738:	02c00484 	addi.d	$r4,$r4,1(0x1)
    173c:	53ff97ff 	b	-108(0xfffff94) # 16d0 <atoi+0x8>
    1740:	00113e04 	sub.w	$r4,$r16,$r15
    1744:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1748:	2800048d 	ld.b	$r13,$r4,1(0x1)
    174c:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1750:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1754:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1758:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    175c:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1704 <atoi+0x3c>
    1760:	00150004 	move	$r4,$r0
}
    1764:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1768:	2800048d 	ld.b	$r13,$r4,1(0x1)
    176c:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1770:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1774:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1778:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1760 <atoi+0x98>
        neg = 1;
    177c:	02800414 	addi.w	$r20,$r0,1(0x1)
    1780:	53ff87ff 	b	-124(0xfffff84) # 1704 <atoi+0x3c>

0000000000001784 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1784:	400198c0 	beqz	$r6,408(0x198) # 191c <memset+0x198>
    1788:	0011900c 	sub.d	$r12,$r0,$r4
    178c:	03401d8c 	andi	$r12,$r12,0x7
    1790:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1794:	02402dae 	sltui	$r14,$r13,11(0xb)
    1798:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    179c:	0013b9ad 	masknez	$r13,$r13,$r14
    17a0:	001339ee 	maskeqz	$r14,$r15,$r14
    17a4:	001539ad 	or	$r13,$r13,$r14
    17a8:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    17ac:	00005ca5 	ext.w.b	$r5,$r5
    17b0:	680191ed 	bltu	$r15,$r13,400(0x190) # 1940 <memset+0x1bc>
    17b4:	40018180 	beqz	$r12,384(0x180) # 1934 <memset+0x1b0>
    17b8:	29000085 	st.b	$r5,$r4,0
    17bc:	0280040d 	addi.w	$r13,$r0,1(0x1)
    17c0:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    17c4:	5801698d 	beq	$r12,$r13,360(0x168) # 192c <memset+0x1a8>
    17c8:	29000485 	st.b	$r5,$r4,1(0x1)
    17cc:	0280080d 	addi.w	$r13,$r0,2(0x2)
    17d0:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    17d4:	5801798d 	beq	$r12,$r13,376(0x178) # 194c <memset+0x1c8>
    17d8:	29000885 	st.b	$r5,$r4,2(0x2)
    17dc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    17e0:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    17e4:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1920 <memset+0x19c>
    17e8:	29000c85 	st.b	$r5,$r4,3(0x3)
    17ec:	0280100d 	addi.w	$r13,$r0,4(0x4)
    17f0:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    17f4:	5801618d 	beq	$r12,$r13,352(0x160) # 1954 <memset+0x1d0>
    17f8:	29001085 	st.b	$r5,$r4,4(0x4)
    17fc:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1800:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1804:	5801598d 	beq	$r12,$r13,344(0x158) # 195c <memset+0x1d8>
    1808:	29001485 	st.b	$r5,$r4,5(0x5)
    180c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1810:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1814:	5c01518d 	bne	$r12,$r13,336(0x150) # 1964 <memset+0x1e0>
    1818:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    181c:	29001885 	st.b	$r5,$r4,6(0x6)
    1820:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1824:	0015000d 	move	$r13,$r0
    1828:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    182c:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1830:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1834:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1838:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    183c:	0011b0d0 	sub.d	$r16,$r6,$r12
    1840:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1844:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1848:	0010b08c 	add.d	$r12,$r4,$r12
    184c:	00450e0f 	srli.d	$r15,$r16,0x3
    1850:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1854:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1858:	2700018d 	stptr.d	$r13,$r12,0
    185c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1860:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1858 <memset+0xd4>
    1864:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1868:	0014be0f 	and	$r15,$r16,$r15
    186c:	004081ed 	slli.w	$r13,$r15,0x0
    1870:	0010bdcc 	add.d	$r12,$r14,$r15
    1874:	001045ad 	add.w	$r13,$r13,$r17
    1878:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1928 <memset+0x1a4>
    187c:	29000185 	st.b	$r5,$r12,0
    1880:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1884:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 191c <memset+0x198>
    1888:	29000585 	st.b	$r5,$r12,1(0x1)
    188c:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1890:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 191c <memset+0x198>
    1894:	29000985 	st.b	$r5,$r12,2(0x2)
    1898:	02800dae 	addi.w	$r14,$r13,3(0x3)
    189c:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 191c <memset+0x198>
    18a0:	29000d85 	st.b	$r5,$r12,3(0x3)
    18a4:	028011ae 	addi.w	$r14,$r13,4(0x4)
    18a8:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 191c <memset+0x198>
    18ac:	29001185 	st.b	$r5,$r12,4(0x4)
    18b0:	028015ae 	addi.w	$r14,$r13,5(0x5)
    18b4:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 191c <memset+0x198>
    18b8:	29001585 	st.b	$r5,$r12,5(0x5)
    18bc:	028019ae 	addi.w	$r14,$r13,6(0x6)
    18c0:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 191c <memset+0x198>
    18c4:	29001985 	st.b	$r5,$r12,6(0x6)
    18c8:	02801dae 	addi.w	$r14,$r13,7(0x7)
    18cc:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 191c <memset+0x198>
    18d0:	29001d85 	st.b	$r5,$r12,7(0x7)
    18d4:	028021ae 	addi.w	$r14,$r13,8(0x8)
    18d8:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 191c <memset+0x198>
    18dc:	29002185 	st.b	$r5,$r12,8(0x8)
    18e0:	028025ae 	addi.w	$r14,$r13,9(0x9)
    18e4:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 191c <memset+0x198>
    18e8:	29002585 	st.b	$r5,$r12,9(0x9)
    18ec:	028029ae 	addi.w	$r14,$r13,10(0xa)
    18f0:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 191c <memset+0x198>
    18f4:	29002985 	st.b	$r5,$r12,10(0xa)
    18f8:	02802dae 	addi.w	$r14,$r13,11(0xb)
    18fc:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 191c <memset+0x198>
    1900:	29002d85 	st.b	$r5,$r12,11(0xb)
    1904:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1908:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 191c <memset+0x198>
    190c:	29003185 	st.b	$r5,$r12,12(0xc)
    1910:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1914:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 191c <memset+0x198>
    1918:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    191c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1920:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1924:	53ff03ff 	b	-256(0xfffff00) # 1824 <memset+0xa0>
    1928:	4c000020 	jirl	$r0,$r1,0
    192c:	02800411 	addi.w	$r17,$r0,1(0x1)
    1930:	53fef7ff 	b	-268(0xffffef4) # 1824 <memset+0xa0>
    1934:	0015008e 	move	$r14,$r4
    1938:	00150011 	move	$r17,$r0
    193c:	53feebff 	b	-280(0xffffee8) # 1824 <memset+0xa0>
    1940:	0015008c 	move	$r12,$r4
    1944:	0015000d 	move	$r13,$r0
    1948:	53ff37ff 	b	-204(0xfffff34) # 187c <memset+0xf8>
    194c:	02800811 	addi.w	$r17,$r0,2(0x2)
    1950:	53fed7ff 	b	-300(0xffffed4) # 1824 <memset+0xa0>
    1954:	02801011 	addi.w	$r17,$r0,4(0x4)
    1958:	53fecfff 	b	-308(0xffffecc) # 1824 <memset+0xa0>
    195c:	02801411 	addi.w	$r17,$r0,5(0x5)
    1960:	53fec7ff 	b	-316(0xffffec4) # 1824 <memset+0xa0>
    1964:	02801811 	addi.w	$r17,$r0,6(0x6)
    1968:	53febfff 	b	-324(0xffffebc) # 1824 <memset+0xa0>

000000000000196c <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    196c:	2800008c 	ld.b	$r12,$r4,0
    1970:	280000ae 	ld.b	$r14,$r5,0
    1974:	5c0035cc 	bne	$r14,$r12,52(0x34) # 19a8 <strcmp+0x3c>
    1978:	40003980 	beqz	$r12,56(0x38) # 19b0 <strcmp+0x44>
    197c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1980:	50000800 	b	8(0x8) # 1988 <strcmp+0x1c>
    1984:	400019a0 	beqz	$r13,24(0x18) # 199c <strcmp+0x30>
    1988:	3800308d 	ldx.b	$r13,$r4,$r12
    198c:	380030ae 	ldx.b	$r14,$r5,$r12
    1990:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1994:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1984 <strcmp+0x18>
    1998:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    199c:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    19a0:	001111a4 	sub.w	$r4,$r13,$r4
    19a4:	4c000020 	jirl	$r0,$r1,0
    19a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    19ac:	53fff3ff 	b	-16(0xffffff0) # 199c <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    19b0:	0015000d 	move	$r13,$r0
    19b4:	53ffebff 	b	-24(0xfffffe8) # 199c <strcmp+0x30>

00000000000019b8 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    19b8:	400054c0 	beqz	$r6,84(0x54) # 1a0c <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    19bc:	2a00008d 	ld.bu	$r13,$r4,0
    19c0:	2a0000ae 	ld.bu	$r14,$r5,0
    19c4:	40003da0 	beqz	$r13,60(0x3c) # 1a00 <strncmp+0x48>
    19c8:	40003dc0 	beqz	$r14,60(0x3c) # 1a04 <strncmp+0x4c>
    if (!n--)
    19cc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    19d0:	400034c0 	beqz	$r6,52(0x34) # 1a04 <strncmp+0x4c>
    19d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
    19d8:	580019ae 	beq	$r13,$r14,24(0x18) # 19f0 <strncmp+0x38>
    19dc:	50002800 	b	40(0x28) # 1a04 <strncmp+0x4c>
    19e0:	400035c0 	beqz	$r14,52(0x34) # 1a14 <strncmp+0x5c>
    19e4:	580020cc 	beq	$r6,$r12,32(0x20) # 1a04 <strncmp+0x4c>
    19e8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    19ec:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1a14 <strncmp+0x5c>
    19f0:	3820308d 	ldx.bu	$r13,$r4,$r12
    19f4:	382030ae 	ldx.bu	$r14,$r5,$r12
    19f8:	001501af 	move	$r15,$r13
    19fc:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 19e0 <strncmp+0x28>
    1a00:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a04:	001139a4 	sub.w	$r4,$r13,$r14
    1a08:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1a0c:	00150004 	move	$r4,$r0
}
    1a10:	4c000020 	jirl	$r0,$r1,0
    1a14:	001501ed 	move	$r13,$r15
    return *l - *r;
    1a18:	001139a4 	sub.w	$r4,$r13,$r14
    1a1c:	4c000020 	jirl	$r0,$r1,0

0000000000001a20 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1a20:	03401c8c 	andi	$r12,$r4,0x7
    1a24:	4000b180 	beqz	$r12,176(0xb0) # 1ad4 <strlen+0xb4>
        if (!*s)
    1a28:	2800008c 	ld.b	$r12,$r4,0
    1a2c:	4000b180 	beqz	$r12,176(0xb0) # 1adc <strlen+0xbc>
    1a30:	0015008c 	move	$r12,$r4
    1a34:	50000c00 	b	12(0xc) # 1a40 <strlen+0x20>
    1a38:	2800018d 	ld.b	$r13,$r12,0
    1a3c:	400091a0 	beqz	$r13,144(0x90) # 1acc <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1a40:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a44:	03401d8d 	andi	$r13,$r12,0x7
    1a48:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1a38 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1a4c:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1a50:	2600018f 	ldptr.d	$r15,$r12,0
    1a54:	03bbfdad 	ori	$r13,$r13,0xeff
    1a58:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1a5c:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1a60:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1a64:	038201ce 	ori	$r14,$r14,0x80
    1a68:	0010b5ed 	add.d	$r13,$r15,$r13
    1a6c:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1a70:	0016bdad 	andn	$r13,$r13,$r15
    1a74:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1a78:	0014b9ae 	and	$r14,$r13,$r14
    1a7c:	440049c0 	bnez	$r14,72(0x48) # 1ac4 <strlen+0xa4>
    1a80:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1a84:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1a88:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1a8c:	2600018e 	ldptr.d	$r14,$r12,0
    1a90:	03bbfe2d 	ori	$r13,$r17,0xeff
    1a94:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1a98:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1a9c:	0382020f 	ori	$r15,$r16,0x80
    1aa0:	0010b5cd 	add.d	$r13,$r14,$r13
    1aa4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1aa8:	0016b9ad 	andn	$r13,$r13,$r14
    1aac:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1ab0:	0014bdad 	and	$r13,$r13,$r15
    1ab4:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1a88 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1ab8:	2800018d 	ld.b	$r13,$r12,0
    1abc:	400011a0 	beqz	$r13,16(0x10) # 1acc <strlen+0xac>
    1ac0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac4:	2800018d 	ld.b	$r13,$r12,0
    1ac8:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1ac0 <strlen+0xa0>
        ;
    return s - a;
    1acc:	00119184 	sub.d	$r4,$r12,$r4
}
    1ad0:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1ad4:	0015008c 	move	$r12,$r4
    1ad8:	53ff77ff 	b	-140(0xfffff74) # 1a4c <strlen+0x2c>
        if (!*s)
    1adc:	00150004 	move	$r4,$r0
            return s - a;
    1ae0:	4c000020 	jirl	$r0,$r1,0

0000000000001ae4 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ae4:	03401c8c 	andi	$r12,$r4,0x7
    1ae8:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1aec:	44002180 	bnez	$r12,32(0x20) # 1b0c <memchr+0x28>
    1af0:	50002c00 	b	44(0x2c) # 1b1c <memchr+0x38>
    1af4:	2a00008c 	ld.bu	$r12,$r4,0
    1af8:	5800f985 	beq	$r12,$r5,248(0xf8) # 1bf0 <memchr+0x10c>
    1afc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b00:	03401c8c 	andi	$r12,$r4,0x7
    1b04:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1b08:	40001580 	beqz	$r12,20(0x14) # 1b1c <memchr+0x38>
    1b0c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1af4 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1b10:	0015000d 	move	$r13,$r0
}
    1b14:	001501a4 	move	$r4,$r13
    1b18:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1b1c:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1b20:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1b14 <memchr+0x30>
    1b24:	2a00008c 	ld.bu	$r12,$r4,0
    1b28:	5800c985 	beq	$r12,$r5,200(0xc8) # 1bf0 <memchr+0x10c>
        size_t k = ONES * c;
    1b2c:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1b30:	0384058c 	ori	$r12,$r12,0x101
    1b34:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1b38:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b3c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1b40:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1b44:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c00 <memchr+0x11c>
    1b48:	2600008d 	ldptr.d	$r13,$r4,0
    1b4c:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b50:	038201ce 	ori	$r14,$r14,0x80
    1b54:	0015b60d 	xor	$r13,$r16,$r13
    1b58:	0011b1ac 	sub.d	$r12,$r13,$r12
    1b5c:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b60:	0016b58c 	andn	$r12,$r12,$r13
    1b64:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b68:	0014b98c 	and	$r12,$r12,$r14
    1b6c:	44009580 	bnez	$r12,148(0x94) # 1c00 <memchr+0x11c>
    1b70:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1b74:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1b78:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1b7c:	50002000 	b	32(0x20) # 1b9c <memchr+0xb8>
    1b80:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1b84:	0015b20c 	xor	$r12,$r16,$r12
    1b88:	0010b98e 	add.d	$r14,$r12,$r14
    1b8c:	0016b1cc 	andn	$r12,$r14,$r12
    1b90:	0014bd8c 	and	$r12,$r12,$r15
    1b94:	44006580 	bnez	$r12,100(0x64) # 1bf8 <memchr+0x114>
    1b98:	001501a4 	move	$r4,$r13
    1b9c:	03bbfe4e 	ori	$r14,$r18,0xeff
    1ba0:	0382022f 	ori	$r15,$r17,0x80
    1ba4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1ba8:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1bac:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1bb0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1bb4:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bb8:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1bbc:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1b80 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1bc0:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1b10 <memchr+0x2c>
    1bc4:	2a0001ac 	ld.bu	$r12,$r13,0
    1bc8:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1b14 <memchr+0x30>
    1bcc:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1bd0:	001099a6 	add.d	$r6,$r13,$r6
    1bd4:	50001000 	b	16(0x10) # 1be4 <memchr+0x100>
    1bd8:	2a00018e 	ld.bu	$r14,$r12,0
    1bdc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1be0:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1b14 <memchr+0x30>
    1be4:	0015018d 	move	$r13,$r12
    1be8:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1bd8 <memchr+0xf4>
    1bec:	53ff27ff 	b	-220(0xfffff24) # 1b10 <memchr+0x2c>
    1bf0:	0015008d 	move	$r13,$r4
    1bf4:	53ffd3ff 	b	-48(0xfffffd0) # 1bc4 <memchr+0xe0>
    1bf8:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1bfc:	53ffcfff 	b	-52(0xfffffcc) # 1bc8 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c00:	0015008d 	move	$r13,$r4
    1c04:	53ffcbff 	b	-56(0xfffffc8) # 1bcc <memchr+0xe8>

0000000000001c08 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c08:	03401c8c 	andi	$r12,$r4,0x7
    1c0c:	40011980 	beqz	$r12,280(0x118) # 1d24 <strnlen+0x11c>
    1c10:	4000f4a0 	beqz	$r5,244(0xf4) # 1d04 <strnlen+0xfc>
    1c14:	2a00008c 	ld.bu	$r12,$r4,0
    1c18:	4000f580 	beqz	$r12,244(0xf4) # 1d0c <strnlen+0x104>
    1c1c:	001500ac 	move	$r12,$r5
    1c20:	0015008d 	move	$r13,$r4
    1c24:	50001000 	b	16(0x10) # 1c34 <strnlen+0x2c>
    1c28:	4000dd80 	beqz	$r12,220(0xdc) # 1d04 <strnlen+0xfc>
    1c2c:	2a0001ae 	ld.bu	$r14,$r13,0
    1c30:	4000e5c0 	beqz	$r14,228(0xe4) # 1d14 <strnlen+0x10c>
    1c34:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1c38:	03401dae 	andi	$r14,$r13,0x7
    1c3c:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1c40:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1c28 <strnlen+0x20>
    if (n && *s != c)
    1c44:	4000c180 	beqz	$r12,192(0xc0) # 1d04 <strnlen+0xfc>
    1c48:	2a0001ae 	ld.bu	$r14,$r13,0
    1c4c:	4000c9c0 	beqz	$r14,200(0xc8) # 1d14 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c50:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1c54:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1d30 <strnlen+0x128>
    1c58:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1c5c:	260001b0 	ldptr.d	$r16,$r13,0
    1c60:	03bbfdce 	ori	$r14,$r14,0xeff
    1c64:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c68:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1c6c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c70:	038201ef 	ori	$r15,$r15,0x80
    1c74:	0010ba0e 	add.d	$r14,$r16,$r14
    1c78:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c7c:	0016c1ce 	andn	$r14,$r14,$r16
    1c80:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c84:	0014bdcf 	and	$r15,$r14,$r15
    1c88:	4400a9e0 	bnez	$r15,168(0xa8) # 1d30 <strnlen+0x128>
    1c8c:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1c90:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1c94:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1c98:	50001c00 	b	28(0x1c) # 1cb4 <strnlen+0xac>
    1c9c:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1ca0:	0010b9ee 	add.d	$r14,$r15,$r14
    1ca4:	0016bdce 	andn	$r14,$r14,$r15
    1ca8:	0014c1ce 	and	$r14,$r14,$r16
    1cac:	440071c0 	bnez	$r14,112(0x70) # 1d1c <strnlen+0x114>
    1cb0:	0015022d 	move	$r13,$r17
    1cb4:	03bbfe6e 	ori	$r14,$r19,0xeff
    1cb8:	03820250 	ori	$r16,$r18,0x80
    1cbc:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cc0:	16101010 	lu32i.d	$r16,32896(0x8080)
    1cc4:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1cc8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1ccc:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1cd0:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1cd4:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1c9c <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1cd8:	40002d80 	beqz	$r12,44(0x2c) # 1d04 <strnlen+0xfc>
    1cdc:	2a00022d 	ld.bu	$r13,$r17,0
    1ce0:	400021a0 	beqz	$r13,32(0x20) # 1d00 <strnlen+0xf8>
    1ce4:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1ce8:	0010b22c 	add.d	$r12,$r17,$r12
    1cec:	001501b1 	move	$r17,$r13
    1cf0:	5800158d 	beq	$r12,$r13,20(0x14) # 1d04 <strnlen+0xfc>
    1cf4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cf8:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1cfc:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1cec <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d00:	00119225 	sub.d	$r5,$r17,$r4
}
    1d04:	001500a4 	move	$r4,$r5
    1d08:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d0c:	001500ac 	move	$r12,$r5
    1d10:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1d14:	001501b1 	move	$r17,$r13
    1d18:	53ffc7ff 	b	-60(0xfffffc4) # 1cdc <strnlen+0xd4>
    1d1c:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1d20:	53ffc3ff 	b	-64(0xfffffc0) # 1ce0 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d24:	001500ac 	move	$r12,$r5
    1d28:	0015008d 	move	$r13,$r4
    1d2c:	53ff1bff 	b	-232(0xfffff18) # 1c44 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d30:	001501b1 	move	$r17,$r13
    1d34:	53ffb3ff 	b	-80(0xfffffb0) # 1ce4 <strnlen+0xdc>

0000000000001d38 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1d38:	0015948c 	xor	$r12,$r4,$r5
    1d3c:	03401d8c 	andi	$r12,$r12,0x7
    1d40:	4400ad80 	bnez	$r12,172(0xac) # 1dec <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1d44:	03401cac 	andi	$r12,$r5,0x7
    1d48:	40003180 	beqz	$r12,48(0x30) # 1d78 <strcpy+0x40>
            if (!(*d = *s))
    1d4c:	280000ac 	ld.b	$r12,$r5,0
    1d50:	2900008c 	st.b	$r12,$r4,0
    1d54:	44001580 	bnez	$r12,20(0x14) # 1d68 <strcpy+0x30>
    1d58:	5000bc00 	b	188(0xbc) # 1e14 <strcpy+0xdc>
    1d5c:	280000ac 	ld.b	$r12,$r5,0
    1d60:	2900008c 	st.b	$r12,$r4,0
    1d64:	4000a980 	beqz	$r12,168(0xa8) # 1e0c <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1d68:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1d6c:	03401cac 	andi	$r12,$r5,0x7
    1d70:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1d74:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1d5c <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1d78:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1d7c:	260000ae 	ldptr.d	$r14,$r5,0
    1d80:	03bbfd8c 	ori	$r12,$r12,0xeff
    1d84:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1d88:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1d8c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1d90:	038201ad 	ori	$r13,$r13,0x80
    1d94:	0010b1cc 	add.d	$r12,$r14,$r12
    1d98:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1d9c:	0016b98c 	andn	$r12,$r12,$r14
    1da0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1da4:	0014b58c 	and	$r12,$r12,$r13
    1da8:	44004580 	bnez	$r12,68(0x44) # 1dec <strcpy+0xb4>
    1dac:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1db0:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1db4:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1db8:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1dbc:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1dc0:	260000ae 	ldptr.d	$r14,$r5,0
    1dc4:	03bbfe0c 	ori	$r12,$r16,0xeff
    1dc8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1dcc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1dd0:	038201ed 	ori	$r13,$r15,0x80
    1dd4:	0010b1cc 	add.d	$r12,$r14,$r12
    1dd8:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ddc:	0016b98c 	andn	$r12,$r12,$r14
    1de0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1de4:	0014b58c 	and	$r12,$r12,$r13
    1de8:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1db4 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1dec:	280000ac 	ld.b	$r12,$r5,0
    1df0:	2900008c 	st.b	$r12,$r4,0
    1df4:	40001d80 	beqz	$r12,28(0x1c) # 1e10 <strcpy+0xd8>
    1df8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1dfc:	280000ac 	ld.b	$r12,$r5,0
    1e00:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e04:	2900008c 	st.b	$r12,$r4,0
    1e08:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1df8 <strcpy+0xc0>
        ;
    return d;
}
    1e0c:	4c000020 	jirl	$r0,$r1,0
    1e10:	4c000020 	jirl	$r0,$r1,0
    1e14:	4c000020 	jirl	$r0,$r1,0

0000000000001e18 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1e18:	0015948c 	xor	$r12,$r4,$r5
    1e1c:	03401d8c 	andi	$r12,$r12,0x7
    1e20:	4400ad80 	bnez	$r12,172(0xac) # 1ecc <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1e24:	03401cac 	andi	$r12,$r5,0x7
    1e28:	44010180 	bnez	$r12,256(0x100) # 1f28 <strncpy+0x110>
            ;
        if (!n || !*s)
    1e2c:	400100c0 	beqz	$r6,256(0x100) # 1f2c <strncpy+0x114>
    1e30:	280000af 	ld.b	$r15,$r5,0
    1e34:	400105e0 	beqz	$r15,260(0x104) # 1f38 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1e38:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1e3c:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2114 <strncpy+0x2fc>
    1e40:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e44:	260000ae 	ldptr.d	$r14,$r5,0
    1e48:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e4c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e50:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e54:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e58:	038201ad 	ori	$r13,$r13,0x80
    1e5c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e60:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e64:	0016b98c 	andn	$r12,$r12,$r14
    1e68:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e6c:	0014b58c 	and	$r12,$r12,$r13
    1e70:	4402a580 	bnez	$r12,676(0x2a4) # 2114 <strncpy+0x2fc>
    1e74:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1e78:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1e7c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1e80:	50001c00 	b	28(0x1c) # 1e9c <strncpy+0x84>
    1e84:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1e88:	0010b1cc 	add.d	$r12,$r14,$r12
    1e8c:	0016b98c 	andn	$r12,$r12,$r14
    1e90:	0014b58c 	and	$r12,$r12,$r13
    1e94:	44024580 	bnez	$r12,580(0x244) # 20d8 <strncpy+0x2c0>
    1e98:	001501e5 	move	$r5,$r15
    1e9c:	03bbfe2c 	ori	$r12,$r17,0xeff
    1ea0:	0382020d 	ori	$r13,$r16,0x80
    1ea4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ea8:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1eac:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1eb0:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1eb4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1eb8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ebc:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1ec0:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ec4:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1e84 <strncpy+0x6c>
    1ec8:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1ecc:	400060c0 	beqz	$r6,96(0x60) # 1f2c <strncpy+0x114>
    1ed0:	280000ac 	ld.b	$r12,$r5,0
    1ed4:	0015008d 	move	$r13,$r4
    1ed8:	2900008c 	st.b	$r12,$r4,0
    1edc:	44001580 	bnez	$r12,20(0x14) # 1ef0 <strncpy+0xd8>
    1ee0:	50005c00 	b	92(0x5c) # 1f3c <strncpy+0x124>
    1ee4:	280000ac 	ld.b	$r12,$r5,0
    1ee8:	290001ac 	st.b	$r12,$r13,0
    1eec:	40005180 	beqz	$r12,80(0x50) # 1f3c <strncpy+0x124>
    1ef0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ef4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ef8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1efc:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1ee4 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f00:	001501a4 	move	$r4,$r13
    1f04:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f08:	280000ac 	ld.b	$r12,$r5,0
    1f0c:	2900008c 	st.b	$r12,$r4,0
    1f10:	40002980 	beqz	$r12,40(0x28) # 1f38 <strncpy+0x120>
    1f14:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f18:	03401cac 	andi	$r12,$r5,0x7
    1f1c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f20:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f24:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1e2c <strncpy+0x14>
    1f28:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1f08 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1f2c:	0015008d 	move	$r13,$r4
}
    1f30:	001501a4 	move	$r4,$r13
    1f34:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1f38:	0015008d 	move	$r13,$r4
    1f3c:	0011b40c 	sub.d	$r12,$r0,$r13
    1f40:	03401d8c 	andi	$r12,$r12,0x7
    1f44:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1f48:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1f4c:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1f50:	0013bdce 	masknez	$r14,$r14,$r15
    1f54:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1f58:	00133e0f 	maskeqz	$r15,$r16,$r15
    1f5c:	00153dce 	or	$r14,$r14,$r15
    1f60:	024004d0 	sltui	$r16,$r6,1(0x1)
    1f64:	00131a31 	maskeqz	$r17,$r17,$r6
    1f68:	0280040f 	addi.w	$r15,$r0,1(0x1)
    1f6c:	001540d0 	or	$r16,$r6,$r16
    1f70:	68017a2e 	bltu	$r17,$r14,376(0x178) # 20e8 <strncpy+0x2d0>
    1f74:	40015980 	beqz	$r12,344(0x158) # 20cc <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    1f78:	290001a0 	st.b	$r0,$r13,0
    1f7c:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    1f80:	5801458f 	beq	$r12,$r15,324(0x144) # 20c4 <strncpy+0x2ac>
    1f84:	290005a0 	st.b	$r0,$r13,1(0x1)
    1f88:	0280080f 	addi.w	$r15,$r0,2(0x2)
    1f8c:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    1f90:	5801658f 	beq	$r12,$r15,356(0x164) # 20f4 <strncpy+0x2dc>
    1f94:	290009a0 	st.b	$r0,$r13,2(0x2)
    1f98:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    1f9c:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    1fa0:	58011d8f 	beq	$r12,$r15,284(0x11c) # 20bc <strncpy+0x2a4>
    1fa4:	29000da0 	st.b	$r0,$r13,3(0x3)
    1fa8:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1fac:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    1fb0:	58014d8f 	beq	$r12,$r15,332(0x14c) # 20fc <strncpy+0x2e4>
    1fb4:	290011a0 	st.b	$r0,$r13,4(0x4)
    1fb8:	0280140f 	addi.w	$r15,$r0,5(0x5)
    1fbc:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    1fc0:	5801458f 	beq	$r12,$r15,324(0x144) # 2104 <strncpy+0x2ec>
    1fc4:	290015a0 	st.b	$r0,$r13,5(0x5)
    1fc8:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    1fcc:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    1fd0:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 210c <strncpy+0x2f4>
    1fd4:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    1fd8:	290019a0 	st.b	$r0,$r13,6(0x6)
    1fdc:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1fe0:	0011b210 	sub.d	$r16,$r16,$r12
    1fe4:	00450e11 	srli.d	$r17,$r16,0x3
    1fe8:	0010b1ac 	add.d	$r12,$r13,$r12
    1fec:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    1ff0:	27000180 	stptr.d	$r0,$r12,0
    1ff4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1ff8:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 1ff0 <strncpy+0x1d8>
    1ffc:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2000:	0014c611 	and	$r17,$r16,$r17
    2004:	0040822f 	slli.w	$r15,$r17,0x0
    2008:	001049ef 	add.w	$r15,$r15,$r18
    200c:	0010c5cc 	add.d	$r12,$r14,$r17
    2010:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f00 <strncpy+0xe8>
    2014:	29000180 	st.b	$r0,$r12,0
    2018:	028005ee 	addi.w	$r14,$r15,1(0x1)
    201c:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f00 <strncpy+0xe8>
    2020:	29000580 	st.b	$r0,$r12,1(0x1)
    2024:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2028:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f00 <strncpy+0xe8>
    202c:	29000980 	st.b	$r0,$r12,2(0x2)
    2030:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2034:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f00 <strncpy+0xe8>
    2038:	29000d80 	st.b	$r0,$r12,3(0x3)
    203c:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2040:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f00 <strncpy+0xe8>
    2044:	29001180 	st.b	$r0,$r12,4(0x4)
    2048:	028015ee 	addi.w	$r14,$r15,5(0x5)
    204c:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f00 <strncpy+0xe8>
    2050:	29001580 	st.b	$r0,$r12,5(0x5)
    2054:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2058:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f00 <strncpy+0xe8>
    205c:	29001980 	st.b	$r0,$r12,6(0x6)
    2060:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2064:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f00 <strncpy+0xe8>
    2068:	29001d80 	st.b	$r0,$r12,7(0x7)
    206c:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2070:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f00 <strncpy+0xe8>
    2074:	29002180 	st.b	$r0,$r12,8(0x8)
    2078:	028025ee 	addi.w	$r14,$r15,9(0x9)
    207c:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f00 <strncpy+0xe8>
    2080:	29002580 	st.b	$r0,$r12,9(0x9)
    2084:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2088:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f00 <strncpy+0xe8>
    208c:	29002980 	st.b	$r0,$r12,10(0xa)
    2090:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2094:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f00 <strncpy+0xe8>
    2098:	29002d80 	st.b	$r0,$r12,11(0xb)
    209c:	028031ee 	addi.w	$r14,$r15,12(0xc)
    20a0:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f00 <strncpy+0xe8>
    20a4:	29003180 	st.b	$r0,$r12,12(0xc)
    20a8:	028035ef 	addi.w	$r15,$r15,13(0xd)
    20ac:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f00 <strncpy+0xe8>
    20b0:	29003580 	st.b	$r0,$r12,13(0xd)
}
    20b4:	001501a4 	move	$r4,$r13
    20b8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    20bc:	02800c12 	addi.w	$r18,$r0,3(0x3)
    20c0:	53ff23ff 	b	-224(0xfffff20) # 1fe0 <strncpy+0x1c8>
    20c4:	02800412 	addi.w	$r18,$r0,1(0x1)
    20c8:	53ff1bff 	b	-232(0xfffff18) # 1fe0 <strncpy+0x1c8>
    20cc:	001501ae 	move	$r14,$r13
    20d0:	00150012 	move	$r18,$r0
    20d4:	53ff0fff 	b	-244(0xfffff0c) # 1fe0 <strncpy+0x1c8>
    20d8:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    20dc:	0015008d 	move	$r13,$r4
    20e0:	001501e5 	move	$r5,$r15
    20e4:	53fdf7ff 	b	-524(0xffffdf4) # 1ed8 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    20e8:	001501ac 	move	$r12,$r13
    20ec:	0015000f 	move	$r15,$r0
    20f0:	53ff27ff 	b	-220(0xfffff24) # 2014 <strncpy+0x1fc>
    20f4:	02800812 	addi.w	$r18,$r0,2(0x2)
    20f8:	53feebff 	b	-280(0xffffee8) # 1fe0 <strncpy+0x1c8>
    20fc:	02801012 	addi.w	$r18,$r0,4(0x4)
    2100:	53fee3ff 	b	-288(0xffffee0) # 1fe0 <strncpy+0x1c8>
    2104:	02801412 	addi.w	$r18,$r0,5(0x5)
    2108:	53fedbff 	b	-296(0xffffed8) # 1fe0 <strncpy+0x1c8>
    210c:	02801812 	addi.w	$r18,$r0,6(0x6)
    2110:	53fed3ff 	b	-304(0xffffed0) # 1fe0 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2114:	2900008f 	st.b	$r15,$r4,0
    2118:	0015008d 	move	$r13,$r4
    211c:	53fdd7ff 	b	-556(0xffffdd4) # 1ef0 <strncpy+0xd8>

0000000000002120 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2120:	0015008c 	move	$r12,$r4
    2124:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2128:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    212c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2130:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2134:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2138:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    213c:	00408084 	slli.w	$r4,$r4,0x0
}
    2140:	4c000020 	jirl	$r0,$r1,0

0000000000002144 <openat>:
    register long a7 __asm__("a7") = n;
    2144:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2148:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    214c:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2150:	00408084 	slli.w	$r4,$r4,0x0
}
    2154:	4c000020 	jirl	$r0,$r1,0

0000000000002158 <close>:
    register long a7 __asm__("a7") = n;
    2158:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    215c:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2160:	00408084 	slli.w	$r4,$r4,0x0
}
    2164:	4c000020 	jirl	$r0,$r1,0

0000000000002168 <read>:
    register long a7 __asm__("a7") = n;
    2168:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    216c:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2170:	4c000020 	jirl	$r0,$r1,0

0000000000002174 <write>:
    register long a7 __asm__("a7") = n;
    2174:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2178:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    217c:	4c000020 	jirl	$r0,$r1,0

0000000000002180 <getpid>:
    register long a7 __asm__("a7") = n;
    2180:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2184:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2188:	00408084 	slli.w	$r4,$r4,0x0
}
    218c:	4c000020 	jirl	$r0,$r1,0

0000000000002190 <getppid>:
    register long a7 __asm__("a7") = n;
    2190:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2194:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2198:	00408084 	slli.w	$r4,$r4,0x0
}
    219c:	4c000020 	jirl	$r0,$r1,0

00000000000021a0 <sched_yield>:
    register long a7 __asm__("a7") = n;
    21a0:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    21a4:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    21a8:	00408084 	slli.w	$r4,$r4,0x0
}
    21ac:	4c000020 	jirl	$r0,$r1,0

00000000000021b0 <fork>:
    register long a7 __asm__("a7") = n;
    21b0:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    21b4:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    21b8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    21bc:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    21c0:	00408084 	slli.w	$r4,$r4,0x0
}
    21c4:	4c000020 	jirl	$r0,$r1,0

00000000000021c8 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    21c8:	001500c5 	move	$r5,$r6
    if (stack)
    21cc:	400008c0 	beqz	$r6,8(0x8) # 21d4 <clone+0xc>
	stack += stack_size;
    21d0:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    21d4:	00408106 	slli.w	$r6,$r8,0x0
    21d8:	00150009 	move	$r9,$r0
    21dc:	00150008 	move	$r8,$r0
    21e0:	00150007 	move	$r7,$r0
    21e4:	5002c800 	b	712(0x2c8) # 24ac <__clone>

00000000000021e8 <exit>:
    register long a7 __asm__("a7") = n;
    21e8:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    21ec:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    21f0:	4c000020 	jirl	$r0,$r1,0

00000000000021f4 <waitpid>:
    register long a7 __asm__("a7") = n;
    21f4:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    21f8:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21fc:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2200:	00408084 	slli.w	$r4,$r4,0x0
}
    2204:	4c000020 	jirl	$r0,$r1,0

0000000000002208 <exec>:
    register long a7 __asm__("a7") = n;
    2208:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    220c:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2210:	00408084 	slli.w	$r4,$r4,0x0
}
    2214:	4c000020 	jirl	$r0,$r1,0

0000000000002218 <execve>:
    register long a7 __asm__("a7") = n;
    2218:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    221c:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2220:	00408084 	slli.w	$r4,$r4,0x0
}
    2224:	4c000020 	jirl	$r0,$r1,0

0000000000002228 <times>:
    register long a7 __asm__("a7") = n;
    2228:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    222c:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2230:	00408084 	slli.w	$r4,$r4,0x0
}
    2234:	4c000020 	jirl	$r0,$r1,0

0000000000002238 <get_time>:

int64 get_time()
{
    2238:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    223c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2240:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2244:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2248:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    224c:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2250:	44003c80 	bnez	$r4,60(0x3c) # 228c <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2254:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2258:	039f3c8c 	ori	$r12,$r4,0x7cf
    225c:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2260:	2a40006d 	ld.hu	$r13,$r3,0
    2264:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2268:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    226c:	00450c84 	srli.d	$r4,$r4,0x3
    2270:	001eb084 	mulh.du	$r4,$r4,$r12
    2274:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2278:	001db1ac 	mul.d	$r12,$r13,$r12
    227c:	00451084 	srli.d	$r4,$r4,0x4
    2280:	00109184 	add.d	$r4,$r12,$r4
}
    2284:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2288:	4c000020 	jirl	$r0,$r1,0
        return -1;
    228c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2290:	53fff7ff 	b	-12(0xffffff4) # 2284 <get_time+0x4c>

0000000000002294 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2294:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2298:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    229c:	00408084 	slli.w	$r4,$r4,0x0
}
    22a0:	4c000020 	jirl	$r0,$r1,0

00000000000022a4 <time>:
    register long a7 __asm__("a7") = n;
    22a4:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    22a8:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    22ac:	00408084 	slli.w	$r4,$r4,0x0
}
    22b0:	4c000020 	jirl	$r0,$r1,0

00000000000022b4 <sleep>:

int sleep(unsigned long long time)
{
    22b4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    22b8:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    22bc:	00150064 	move	$r4,$r3
    22c0:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    22c4:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    22c8:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22cc:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    22d0:	44001080 	bnez	$r4,16(0x10) # 22e0 <sleep+0x2c>
    return 0;
    22d4:	00150004 	move	$r4,$r0
}
    22d8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    22dc:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    22e0:	24000064 	ldptr.w	$r4,$r3,0
}
    22e4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    22e8:	4c000020 	jirl	$r0,$r1,0

00000000000022ec <set_priority>:
    register long a7 __asm__("a7") = n;
    22ec:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    22f0:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    22f4:	00408084 	slli.w	$r4,$r4,0x0
}
    22f8:	4c000020 	jirl	$r0,$r1,0

00000000000022fc <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    22fc:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2300:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2304:	4c000020 	jirl	$r0,$r1,0

0000000000002308 <munmap>:
    register long a7 __asm__("a7") = n;
    2308:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    230c:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2310:	00408084 	slli.w	$r4,$r4,0x0
}
    2314:	4c000020 	jirl	$r0,$r1,0

0000000000002318 <wait>:

int wait(int *code)
{
    2318:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    231c:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2320:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2324:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2328:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    232c:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2330:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2334:	4c000020 	jirl	$r0,$r1,0

0000000000002338 <spawn>:
    register long a7 __asm__("a7") = n;
    2338:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    233c:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2340:	00408084 	slli.w	$r4,$r4,0x0
}
    2344:	4c000020 	jirl	$r0,$r1,0

0000000000002348 <mailread>:
    register long a7 __asm__("a7") = n;
    2348:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    234c:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2350:	00408084 	slli.w	$r4,$r4,0x0
}
    2354:	4c000020 	jirl	$r0,$r1,0

0000000000002358 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2358:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    235c:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2360:	00408084 	slli.w	$r4,$r4,0x0
}
    2364:	4c000020 	jirl	$r0,$r1,0

0000000000002368 <fstat>:
    register long a7 __asm__("a7") = n;
    2368:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    236c:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2370:	00408084 	slli.w	$r4,$r4,0x0
}
    2374:	4c000020 	jirl	$r0,$r1,0

0000000000002378 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2378:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    237c:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2380:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2384:	00408084 	slli.w	$r4,$r4,0x0
}
    2388:	4c000020 	jirl	$r0,$r1,0

000000000000238c <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    238c:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2390:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2394:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2398:	00408084 	slli.w	$r4,$r4,0x0
}
    239c:	4c000020 	jirl	$r0,$r1,0

00000000000023a0 <link>:

int link(char *old_path, char *new_path)
{
    23a0:	0015008c 	move	$r12,$r4
    23a4:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    23a8:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    23ac:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    23b0:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    23b4:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    23b8:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    23bc:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    23c0:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    23c4:	4c000020 	jirl	$r0,$r1,0

00000000000023c8 <unlink>:

int unlink(char *path)
{
    23c8:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23cc:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    23d0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    23d4:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23d8:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <uname>:
    register long a7 __asm__("a7") = n;
    23e4:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    23e8:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    23ec:	00408084 	slli.w	$r4,$r4,0x0
}
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <brk>:
    register long a7 __asm__("a7") = n;
    23f4:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    23f8:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <getcwd>:
    register long a7 __asm__("a7") = n;
    2404:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2408:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <chdir>:
    register long a7 __asm__("a7") = n;
    2410:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2414:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2420:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2424:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2428:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    242c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2430:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2434:	002b0000 	syscall	0x0
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <getdents>:
    register long a7 __asm__("a7") = n;
    2440:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2444:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2448:	00408084 	slli.w	$r4,$r4,0x0
}
    244c:	4c000020 	jirl	$r0,$r1,0

0000000000002450 <pipe>:
    register long a7 __asm__("a7") = n;
    2450:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2454:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2458:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <dup>:
    register long a7 __asm__("a7") = n;
    2464:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2468:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <dup2>:
    register long a7 __asm__("a7") = n;
    2474:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2478:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    247c:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <mount>:
    register long a7 __asm__("a7") = n;
    2488:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    248c:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2490:	00408084 	slli.w	$r4,$r4,0x0
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <umount>:
    register long a7 __asm__("a7") = n;
    2498:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    249c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24a0:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    24a4:	00408084 	slli.w	$r4,$r4,0x0
}
    24a8:	4c000020 	jirl	$r0,$r1,0

00000000000024ac <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    24ac:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    24b0:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    24b4:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    24b8:	001500c4 	move	$r4,$r6
	move $a2, $a4
    24bc:	00150106 	move	$r6,$r8
	move $a3, $a5
    24c0:	00150127 	move	$r7,$r9
	move $a4, $a6
    24c4:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    24c8:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    24cc:	002b0000 	syscall	0x0

	beqz $a0, 1f
    24d0:	40000880 	beqz	$r4,8(0x8) # 24d8 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    24d4:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    24d8:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    24dc:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    24e0:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    24e4:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    24e8:	002b0000 	syscall	0x0
