
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/clone:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54012c00 	bl	300(0x12c) # 1130 <__start_main>

0000000000001008 <child_func>:
#include "unistd.h"

size_t stack[1024] = {0};
static int child_pid;

static int child_func(void){
    1008:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    printf("  Child says successfully!\n");
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d77084 	addi.d	$r4,$r4,1500(0x5dc)
static int child_func(void){
    1014:	29c02061 	st.d	$r1,$r3,8(0x8)
    printf("  Child says successfully!\n");
    1018:	54045800 	bl	1112(0x458) # 1470 <printf>
    return 0;
}
    101c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1020:	00150004 	move	$r4,$r0
    1024:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1028:	4c000020 	jirl	$r0,$r1,0

000000000000102c <test_clone>:

void test_clone(void){
    102c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d76084 	addi.d	$r4,$r4,1496(0x5d8)
void test_clone(void){
    1038:	29c06061 	st.d	$r1,$r3,24(0x18)
    103c:	29c04077 	st.d	$r23,$r3,16(0x10)
    TEST_START(__func__);
    1040:	5403f800 	bl	1016(0x3f8) # 1438 <puts>
    1044:	1c000064 	pcaddu12i	$r4,3(0x3)
    1048:	02d9b084 	addi.d	$r4,$r4,1644(0x66c)
    104c:	5403ec00 	bl	1004(0x3ec) # 1438 <puts>
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d74084 	addi.d	$r4,$r4,1488(0x5d0)
    1058:	5403e000 	bl	992(0x3e0) # 1438 <puts>
    int wstatus;
    child_pid = clone(child_func, NULL, stack, 1024, SIGCHLD);
    105c:	02804408 	addi.w	$r8,$r0,17(0x11)
    1060:	02900007 	addi.w	$r7,$r0,1024(0x400)
    1064:	1c000026 	pcaddu12i	$r6,1(0x1)
    1068:	02d910c6 	addi.d	$r6,$r6,1604(0x644)
    106c:	00150005 	move	$r5,$r0
    1070:	1c000004 	pcaddu12i	$r4,0
    1074:	02fe6084 	addi.d	$r4,$r4,-104(0xf98)
    1078:	54124c00 	bl	4684(0x124c) # 22c4 <clone>
    107c:	1c000077 	pcaddu12i	$r23,3(0x3)
    1080:	02d8b2f7 	addi.d	$r23,$r23,1580(0x62c)
    1084:	250002e4 	stptr.w	$r4,$r23,0
    assert(child_pid != -1);
    1088:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    108c:	5800608c 	beq	$r4,$r12,96(0x60) # 10ec <test_clone+0xc0>
    if (child_pid == 0){
    1090:	44003c80 	bnez	$r4,60(0x3c) # 10cc <test_clone+0xa0>
	exit(0);
    1094:	54125000 	bl	4688(0x1250) # 22e4 <exit>
	    printf("clone process successfully.\npid:%d\n", child_pid);
	else
	    printf("clone process error.\n");
    }

    TEST_END(__func__);
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d7e084 	addi.d	$r4,$r4,1528(0x5f8)
    10a0:	54039800 	bl	920(0x398) # 1438 <puts>
    10a4:	1c000064 	pcaddu12i	$r4,3(0x3)
    10a8:	02d83084 	addi.d	$r4,$r4,1548(0x60c)
    10ac:	54038c00 	bl	908(0x38c) # 1438 <puts>
    10b0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b4:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    10b8:	54038000 	bl	896(0x380) # 1438 <puts>
}
    10bc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    10c0:	28c04077 	ld.d	$r23,$r3,16(0x10)
    10c4:	02c08063 	addi.d	$r3,$r3,32(0x20)
    10c8:	4c000020 	jirl	$r0,$r1,0
	if(wait(&wstatus) == child_pid)
    10cc:	02c03064 	addi.d	$r4,$r3,12(0xc)
    10d0:	54134400 	bl	4932(0x1344) # 2414 <wait>
    10d4:	240002ec 	ldptr.w	$r12,$r23,0
    10d8:	5800288c 	beq	$r4,$r12,40(0x28) # 1100 <test_clone+0xd4>
	    printf("clone process error.\n");
    10dc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e0:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    10e4:	54038c00 	bl	908(0x38c) # 1470 <printf>
    10e8:	53ffb3ff 	b	-80(0xfffffb0) # 1098 <test_clone+0x6c>
    assert(child_pid != -1);
    10ec:	1c000024 	pcaddu12i	$r4,1(0x1)
    10f0:	02d51084 	addi.d	$r4,$r4,1348(0x544)
    10f4:	54068c00 	bl	1676(0x68c) # 1780 <panic>
    10f8:	240002e4 	ldptr.w	$r4,$r23,0
    10fc:	53ff97ff 	b	-108(0xfffff94) # 1090 <test_clone+0x64>
	    printf("clone process successfully.\npid:%d\n", child_pid);
    1100:	00150085 	move	$r5,$r4
    1104:	1c000024 	pcaddu12i	$r4,1(0x1)
    1108:	02d53084 	addi.d	$r4,$r4,1356(0x54c)
    110c:	54036400 	bl	868(0x364) # 1470 <printf>
    1110:	53ff8bff 	b	-120(0xfffff88) # 1098 <test_clone+0x6c>

0000000000001114 <main>:

int main(void){
    1114:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1118:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_clone();
    111c:	57ff13ff 	bl	-240(0xfffff10) # 102c <test_clone>
    return 0;
}
    1120:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1124:	00150004 	move	$r4,$r0
    1128:	02c04063 	addi.d	$r3,$r3,16(0x10)
    112c:	4c000020 	jirl	$r0,$r1,0

0000000000001130 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1130:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1134:	24000084 	ldptr.w	$r4,$r4,0
{
    1138:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    113c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1140:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1144:	57ffd3ff 	bl	-48(0xfffffd0) # 1114 <main>
    1148:	54119c00 	bl	4508(0x119c) # 22e4 <exit>
	return 0;
}
    114c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1150:	00150004 	move	$r4,$r0
    1154:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1158:	4c000020 	jirl	$r0,$r1,0

000000000000115c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    115c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1160:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1164:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1330 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1168:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    116c:	1c00006c 	pcaddu12i	$r12,3(0x3)
    1170:	02d5518c 	addi.d	$r12,$r12,1364(0x554)
    1174:	002195cf 	mod.wu	$r15,$r14,$r5
    1178:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1180 <printint.constprop.0+0x24>
    117c:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1180:	002115cd 	div.wu	$r13,$r14,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0x30>
    1188:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    118c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1190:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1194:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1198:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    119c:	680219c5 	bltu	$r14,$r5,536(0x218) # 13b4 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    11a0:	002195af 	mod.wu	$r15,$r13,$r5
    11a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ac <printint.constprop.0+0x50>
    11a8:	002a0007 	break	0x7
    11ac:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11b0:	002115ae 	div.wu	$r14,$r13,$r5
    11b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11bc <printint.constprop.0+0x60>
    11b8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11bc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11c0:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11c4:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1384 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11c8:	002195cf 	mod.wu	$r15,$r14,$r5
    11cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d4 <printint.constprop.0+0x78>
    11d0:	002a0007 	break	0x7
    11d4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d8:	002115cd 	div.wu	$r13,$r14,$r5
    11dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e4 <printint.constprop.0+0x88>
    11e0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e8:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11ec:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1390 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11f0:	002195af 	mod.wu	$r15,$r13,$r5
    11f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11fc <printint.constprop.0+0xa0>
    11f8:	002a0007 	break	0x7
    11fc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1200:	002115ae 	div.wu	$r14,$r13,$r5
    1204:	5c0008a0 	bne	$r5,$r0,8(0x8) # 120c <printint.constprop.0+0xb0>
    1208:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    120c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1210:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1214:	680189a5 	bltu	$r13,$r5,392(0x188) # 139c <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1218:	002195cf 	mod.wu	$r15,$r14,$r5
    121c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1224 <printint.constprop.0+0xc8>
    1220:	002a0007 	break	0x7
    1224:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1228:	002115cd 	div.wu	$r13,$r14,$r5
    122c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1234 <printint.constprop.0+0xd8>
    1230:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1234:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1238:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    123c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 13a8 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1240:	002195af 	mod.wu	$r15,$r13,$r5
    1244:	5c0008a0 	bne	$r5,$r0,8(0x8) # 124c <printint.constprop.0+0xf0>
    1248:	002a0007 	break	0x7
    124c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1250:	002115ae 	div.wu	$r14,$r13,$r5
    1254:	5c0008a0 	bne	$r5,$r0,8(0x8) # 125c <printint.constprop.0+0x100>
    1258:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    125c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1260:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1264:	680115a5 	bltu	$r13,$r5,276(0x114) # 1378 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1268:	002195cf 	mod.wu	$r15,$r14,$r5
    126c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1274 <printint.constprop.0+0x118>
    1270:	002a0007 	break	0x7
    1274:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1278:	002115cd 	div.wu	$r13,$r14,$r5
    127c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1284 <printint.constprop.0+0x128>
    1280:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1284:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1288:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    128c:	680131c5 	bltu	$r14,$r5,304(0x130) # 13bc <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1290:	002195af 	mod.wu	$r15,$r13,$r5
    1294:	5c0008a0 	bne	$r5,$r0,8(0x8) # 129c <printint.constprop.0+0x140>
    1298:	002a0007 	break	0x7
    129c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12a0:	002115ae 	div.wu	$r14,$r13,$r5
    12a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12ac <printint.constprop.0+0x150>
    12a8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12ac:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12b0:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    12b4:	680115a5 	bltu	$r13,$r5,276(0x114) # 13c8 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    12b8:	002195cf 	mod.wu	$r15,$r14,$r5
    12bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c4 <printint.constprop.0+0x168>
    12c0:	002a0007 	break	0x7
    12c4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12c8:	002115cd 	div.wu	$r13,$r14,$r5
    12cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d4 <printint.constprop.0+0x178>
    12d0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12d4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12d8:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12dc:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13d4 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12e0:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12e4:	3820358d 	ldx.bu	$r13,$r12,$r13
    12e8:	02801805 	addi.w	$r5,$r0,6(0x6)
    12ec:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12f0:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12f4:	64001880 	bge	$r4,$r0,24(0x18) # 130c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12f8:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12fc:	0010b1ad 	add.d	$r13,$r13,$r12
    1300:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1304:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1308:	00150185 	move	$r5,$r12
    write(f, s, l);
    130c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1310:	02804006 	addi.w	$r6,$r0,16(0x10)
    1314:	001114c6 	sub.w	$r6,$r6,$r5
    1318:	02800404 	addi.w	$r4,$r0,1(0x1)
    131c:	00109585 	add.d	$r5,$r12,$r5
    1320:	540f5000 	bl	3920(0xf50) # 2270 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1324:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1328:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    132c:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1330:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1334:	1c00006c 	pcaddu12i	$r12,3(0x3)
    1338:	02ce318c 	addi.d	$r12,$r12,908(0x38c)
    133c:	002195cf 	mod.wu	$r15,$r14,$r5
    1340:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1348 <printint.constprop.0+0x1ec>
    1344:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1348:	002115cd 	div.wu	$r13,$r14,$r5
    134c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1354 <printint.constprop.0+0x1f8>
    1350:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1354:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1358:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    135c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1360:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1364:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 11a0 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1368:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    136c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1370:	02803805 	addi.w	$r5,$r0,14(0xe)
    1374:	53ff9bff 	b	-104(0xfffff98) # 130c <printint.constprop.0+0x1b0>
    1378:	0280240c 	addi.w	$r12,$r0,9(0x9)
    137c:	02802805 	addi.w	$r5,$r0,10(0xa)
    1380:	53ff77ff 	b	-140(0xfffff74) # 12f4 <printint.constprop.0+0x198>
    1384:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1388:	02803805 	addi.w	$r5,$r0,14(0xe)
    138c:	53ff6bff 	b	-152(0xfffff68) # 12f4 <printint.constprop.0+0x198>
    1390:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1394:	02803405 	addi.w	$r5,$r0,13(0xd)
    1398:	53ff5fff 	b	-164(0xfffff5c) # 12f4 <printint.constprop.0+0x198>
    139c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    13a0:	02803005 	addi.w	$r5,$r0,12(0xc)
    13a4:	53ff53ff 	b	-176(0xfffff50) # 12f4 <printint.constprop.0+0x198>
    13a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
    13ac:	02802c05 	addi.w	$r5,$r0,11(0xb)
    13b0:	53ff47ff 	b	-188(0xfffff44) # 12f4 <printint.constprop.0+0x198>
    i = 15;
    13b4:	02803c05 	addi.w	$r5,$r0,15(0xf)
    13b8:	53ff57ff 	b	-172(0xfffff54) # 130c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    13bc:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13c0:	02802405 	addi.w	$r5,$r0,9(0x9)
    13c4:	53ff33ff 	b	-208(0xfffff30) # 12f4 <printint.constprop.0+0x198>
    13c8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13cc:	02802005 	addi.w	$r5,$r0,8(0x8)
    13d0:	53ff27ff 	b	-220(0xfffff24) # 12f4 <printint.constprop.0+0x198>
    13d4:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13d8:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13dc:	53ff1bff 	b	-232(0xfffff18) # 12f4 <printint.constprop.0+0x198>

00000000000013e0 <getchar>:
{
    13e0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13e4:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13e8:	02800406 	addi.w	$r6,$r0,1(0x1)
    13ec:	00150004 	move	$r4,$r0
{
    13f0:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13f4:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13f8:	540e6c00 	bl	3692(0xe6c) # 2264 <read>
}
    13fc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1400:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1404:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1408:	4c000020 	jirl	$r0,$r1,0

000000000000140c <putchar>:
{
    140c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1410:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1414:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1418:	02800406 	addi.w	$r6,$r0,1(0x1)
    141c:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1420:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1424:	540e4c00 	bl	3660(0xe4c) # 2270 <write>
}
    1428:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    142c:	00408084 	slli.w	$r4,$r4,0x0
}
    1430:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1434:	4c000020 	jirl	$r0,$r1,0

0000000000001438 <puts>:
{
    1438:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    143c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1440:	27000077 	stptr.d	$r23,$r3,0
    1444:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1448:	5406d400 	bl	1748(0x6d4) # 1b1c <strlen>
    144c:	00150086 	move	$r6,$r4
    1450:	001502e5 	move	$r5,$r23
    1454:	02800404 	addi.w	$r4,$r0,1(0x1)
    1458:	540e1800 	bl	3608(0xe18) # 2270 <write>
}
    145c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1460:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1464:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1468:	02c04063 	addi.d	$r3,$r3,16(0x10)
    146c:	4c000020 	jirl	$r0,$r1,0

0000000000001470 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1470:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1474:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1478:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    147c:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1480:	29c14079 	st.d	$r25,$r3,80(0x50)
    1484:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1488:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    148c:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1490:	29c18077 	st.d	$r23,$r3,96(0x60)
    1494:	29c16078 	st.d	$r24,$r3,88(0x58)
    1498:	0015009b 	move	$r27,$r4
    149c:	29c1e065 	st.d	$r5,$r3,120(0x78)
    14a0:	29c20066 	st.d	$r6,$r3,128(0x80)
    14a4:	29c22067 	st.d	$r7,$r3,136(0x88)
    14a8:	29c24068 	st.d	$r8,$r3,144(0x90)
    14ac:	29c26069 	st.d	$r9,$r3,152(0x98)
    14b0:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    14b4:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    14b8:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    14bc:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14c0:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14c4:	1c00007c 	pcaddu12i	$r28,3(0x3)
    14c8:	02c7f39c 	addi.d	$r28,$r28,508(0x1fc)
        if (!*s)
    14cc:	2800036c 	ld.b	$r12,$r27,0
    14d0:	40008980 	beqz	$r12,136(0x88) # 1558 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14d4:	58027d99 	beq	$r12,$r25,636(0x27c) # 1750 <printf+0x2e0>
    14d8:	00150366 	move	$r6,$r27
    14dc:	50000800 	b	8(0x8) # 14e4 <printf+0x74>
    14e0:	58009d99 	beq	$r12,$r25,156(0x9c) # 157c <printf+0x10c>
    14e4:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14e8:	280000cc 	ld.b	$r12,$r6,0
    14ec:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14e0 <printf+0x70>
    14f0:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14f4:	0011ecd7 	sub.d	$r23,$r6,$r27
    14f8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14fc:	001502e6 	move	$r6,$r23
    1500:	00150365 	move	$r5,$r27
    1504:	02800404 	addi.w	$r4,$r0,1(0x1)
    1508:	540d6800 	bl	3432(0xd68) # 2270 <write>
        out(f, a, l);
        if (l)
    150c:	4400b6e0 	bnez	$r23,180(0xb4) # 15c0 <printf+0x150>
            continue;
        if (s[1] == 0)
    1510:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1514:	40004580 	beqz	$r12,68(0x44) # 1558 <printf+0xe8>
            break;
        switch (s[1])
    1518:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    151c:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15f0 <printf+0x180>
    1520:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15c8 <printf+0x158>
    1524:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1528:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1718 <printf+0x2a8>
    152c:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1530:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16e0 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1534:	2600006c 	ldptr.d	$r12,$r3,0
    1538:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    153c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1540:	24000184 	ldptr.w	$r4,$r12,0
    1544:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1548:	2700006c 	stptr.d	$r12,$r3,0
    154c:	57fc13ff 	bl	-1008(0xffffc10) # 115c <printint.constprop.0>
        if (!*s)
    1550:	2800036c 	ld.b	$r12,$r27,0
    1554:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14d4 <printf+0x64>
    }
    va_end(ap);
}
    1558:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    155c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1560:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1564:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1568:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    156c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1570:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1574:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1578:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    157c:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1580:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14f0 <printf+0x80>
    1584:	001500d8 	move	$r24,$r6
    1588:	50000c00 	b	12(0xc) # 1594 <printf+0x124>
    158c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1590:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14f4 <printf+0x84>
    1594:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1598:	2800030c 	ld.b	$r12,$r24,0
    159c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    15a0:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 158c <printf+0x11c>
        l = z - a;
    15a4:	0011ecd7 	sub.d	$r23,$r6,$r27
    15a8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    15ac:	001502e6 	move	$r6,$r23
    15b0:	00150365 	move	$r5,$r27
    15b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    15b8:	540cb800 	bl	3256(0xcb8) # 2270 <write>
        if (l)
    15bc:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1510 <printf+0xa0>
    15c0:	0015031b 	move	$r27,$r24
    15c4:	53ff0bff 	b	-248(0xfffff08) # 14cc <printf+0x5c>
        switch (s[1])
    15c8:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15cc:	5c01158d 	bne	$r12,$r13,276(0x114) # 16e0 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15d0:	2600006c 	ldptr.d	$r12,$r3,0
    15d4:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15d8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15dc:	24000184 	ldptr.w	$r4,$r12,0
    15e0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15e4:	2700006c 	stptr.d	$r12,$r3,0
    15e8:	57fb77ff 	bl	-1164(0xffffb74) # 115c <printint.constprop.0>
        s += 2;
    15ec:	53ff67ff 	b	-156(0xfffff64) # 1550 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15f0:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15f4:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15f8:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15fc:	260001ac 	ldptr.d	$r12,$r13,0
    1600:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1604:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1608:	0045f18a 	srli.d	$r10,$r12,0x3c
    160c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1610:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1614:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1618:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    161c:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1620:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1624:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1628:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    162c:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1630:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1634:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1638:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    163c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1640:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1644:	3820278a 	ldx.bu	$r10,$r28,$r9
    1648:	38202389 	ldx.bu	$r9,$r28,$r8
    164c:	38201f88 	ldx.bu	$r8,$r28,$r7
    1650:	38201787 	ldx.bu	$r7,$r28,$r5
    1654:	38201385 	ldx.bu	$r5,$r28,$r4
    1658:	38205384 	ldx.bu	$r4,$r28,$r20
    165c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1660:	38204b93 	ldx.bu	$r19,$r28,$r18
    1664:	38204792 	ldx.bu	$r18,$r28,$r17
    1668:	38204391 	ldx.bu	$r17,$r28,$r16
    166c:	38203f90 	ldx.bu	$r16,$r28,$r15
    1670:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1674:	3820378e 	ldx.bu	$r14,$r28,$r13
    1678:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    167c:	03403d8c 	andi	$r12,$r12,0xf
    1680:	2900286b 	st.b	$r11,$r3,10(0xa)
    1684:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1688:	29003069 	st.b	$r9,$r3,12(0xc)
    168c:	29003468 	st.b	$r8,$r3,13(0xd)
    1690:	29003867 	st.b	$r7,$r3,14(0xe)
    1694:	29003c65 	st.b	$r5,$r3,15(0xf)
    1698:	29004064 	st.b	$r4,$r3,16(0x10)
    169c:	29004474 	st.b	$r20,$r3,17(0x11)
    16a0:	29004873 	st.b	$r19,$r3,18(0x12)
    16a4:	29004c72 	st.b	$r18,$r3,19(0x13)
    16a8:	29005071 	st.b	$r17,$r3,20(0x14)
    16ac:	29005470 	st.b	$r16,$r3,21(0x15)
    16b0:	2900586f 	st.b	$r15,$r3,22(0x16)
    16b4:	29005c6e 	st.b	$r14,$r3,23(0x17)
    16b8:	3820378d 	ldx.bu	$r13,$r28,$r13
    16bc:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16c0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16c4:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16c8:	2900606d 	st.b	$r13,$r3,24(0x18)
    16cc:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16d0:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16d4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16d8:	540b9800 	bl	2968(0xb98) # 2270 <write>
        s += 2;
    16dc:	53fe77ff 	b	-396(0xffffe74) # 1550 <printf+0xe0>
    char byte = c;
    16e0:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16e4:	02800406 	addi.w	$r6,$r0,1(0x1)
    16e8:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16ec:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16f0:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16f4:	540b7c00 	bl	2940(0xb7c) # 2270 <write>
    char byte = c;
    16f8:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16fc:	02800406 	addi.w	$r6,$r0,1(0x1)
    1700:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1704:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1708:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    170c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1710:	540b6000 	bl	2912(0xb60) # 2270 <write>
        s += 2;
    1714:	53fe3fff 	b	-452(0xffffe3c) # 1550 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1718:	2600006c 	ldptr.d	$r12,$r3,0
    171c:	26000197 	ldptr.d	$r23,$r12,0
    1720:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1724:	2700006c 	stptr.d	$r12,$r3,0
    1728:	40004ee0 	beqz	$r23,76(0x4c) # 1774 <printf+0x304>
            l = strnlen(a, 200);
    172c:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1730:	001502e4 	move	$r4,$r23
    1734:	5405d000 	bl	1488(0x5d0) # 1d04 <strnlen>
    1738:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    173c:	001502e5 	move	$r5,$r23
    1740:	02800404 	addi.w	$r4,$r0,1(0x1)
    1744:	540b2c00 	bl	2860(0xb2c) # 2270 <write>
        s += 2;
    1748:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    174c:	53fe07ff 	b	-508(0xffffe04) # 1550 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1750:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1754:	00150366 	move	$r6,$r27
    1758:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1584 <printf+0x114>
    write(f, s, l);
    175c:	00150006 	move	$r6,$r0
    1760:	00150365 	move	$r5,$r27
    1764:	02800404 	addi.w	$r4,$r0,1(0x1)
    1768:	540b0800 	bl	2824(0xb08) # 2270 <write>
    176c:	00150378 	move	$r24,$r27
    1770:	53fda3ff 	b	-608(0xffffda0) # 1510 <printf+0xa0>
                a = "(null)";
    1774:	1c000037 	pcaddu12i	$r23,1(0x1)
    1778:	02fcb2f7 	addi.d	$r23,$r23,-212(0xf2c)
    177c:	53ffb3ff 	b	-80(0xfffffb0) # 172c <printf+0x2bc>

0000000000001780 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1780:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1784:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1788:	57fcb3ff 	bl	-848(0xffffcb0) # 1438 <puts>
    exit(-100);
}
    178c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1790:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1794:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1798:	500b4c00 	b	2892(0xb4c) # 22e4 <exit>

000000000000179c <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    179c:	0280800c 	addi.w	$r12,$r0,32(0x20)
    17a0:	5800108c 	beq	$r4,$r12,16(0x10) # 17b0 <isspace+0x14>
    17a4:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    17a8:	02401484 	sltui	$r4,$r4,5(0x5)
    17ac:	4c000020 	jirl	$r0,$r1,0
    17b0:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    17b4:	4c000020 	jirl	$r0,$r1,0

00000000000017b8 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    17b8:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    17bc:	02402884 	sltui	$r4,$r4,10(0xa)
    17c0:	4c000020 	jirl	$r0,$r1,0

00000000000017c4 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17c4:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17c8:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17cc:	2800008d 	ld.b	$r13,$r4,0
    17d0:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17d4:	580061ae 	beq	$r13,$r14,96(0x60) # 1834 <atoi+0x70>
    17d8:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1834 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17dc:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17e0:	580065ac 	beq	$r13,$r12,100(0x64) # 1844 <atoi+0x80>
    17e4:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17e8:	58007dac 	beq	$r13,$r12,124(0x7c) # 1864 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17ec:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17f0:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17f4:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17f8:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17fc:	680061cf 	bltu	$r14,$r15,96(0x60) # 185c <atoi+0x98>
    int n = 0, neg = 0;
    1800:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1804:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1808:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    180c:	001c126f 	mul.w	$r15,$r19,$r4
    1810:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1814:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1818:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    181c:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1820:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1824:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1828:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 180c <atoi+0x48>
    return neg ? n : -n;
    182c:	40001280 	beqz	$r20,16(0x10) # 183c <atoi+0x78>
}
    1830:	4c000020 	jirl	$r0,$r1,0
        s++;
    1834:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1838:	53ff97ff 	b	-108(0xfffff94) # 17cc <atoi+0x8>
    183c:	00113e04 	sub.w	$r4,$r16,$r15
    1840:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1844:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1848:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    184c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1850:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1854:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1858:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1800 <atoi+0x3c>
    185c:	00150004 	move	$r4,$r0
}
    1860:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1864:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1868:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    186c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1870:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1874:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 185c <atoi+0x98>
        neg = 1;
    1878:	02800414 	addi.w	$r20,$r0,1(0x1)
    187c:	53ff87ff 	b	-124(0xfffff84) # 1800 <atoi+0x3c>

0000000000001880 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1880:	400198c0 	beqz	$r6,408(0x198) # 1a18 <memset+0x198>
    1884:	0011900c 	sub.d	$r12,$r0,$r4
    1888:	03401d8c 	andi	$r12,$r12,0x7
    188c:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1890:	02402dae 	sltui	$r14,$r13,11(0xb)
    1894:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1898:	0013b9ad 	masknez	$r13,$r13,$r14
    189c:	001339ee 	maskeqz	$r14,$r15,$r14
    18a0:	001539ad 	or	$r13,$r13,$r14
    18a4:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    18a8:	00005ca5 	ext.w.b	$r5,$r5
    18ac:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a3c <memset+0x1bc>
    18b0:	40018180 	beqz	$r12,384(0x180) # 1a30 <memset+0x1b0>
    18b4:	29000085 	st.b	$r5,$r4,0
    18b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
    18bc:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18c0:	5801698d 	beq	$r12,$r13,360(0x168) # 1a28 <memset+0x1a8>
    18c4:	29000485 	st.b	$r5,$r4,1(0x1)
    18c8:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18cc:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18d0:	5801798d 	beq	$r12,$r13,376(0x178) # 1a48 <memset+0x1c8>
    18d4:	29000885 	st.b	$r5,$r4,2(0x2)
    18d8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18dc:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18e0:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a1c <memset+0x19c>
    18e4:	29000c85 	st.b	$r5,$r4,3(0x3)
    18e8:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18ec:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18f0:	5801618d 	beq	$r12,$r13,352(0x160) # 1a50 <memset+0x1d0>
    18f4:	29001085 	st.b	$r5,$r4,4(0x4)
    18f8:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18fc:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1900:	5801598d 	beq	$r12,$r13,344(0x158) # 1a58 <memset+0x1d8>
    1904:	29001485 	st.b	$r5,$r4,5(0x5)
    1908:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    190c:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1910:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a60 <memset+0x1e0>
    1914:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1918:	29001885 	st.b	$r5,$r4,6(0x6)
    191c:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1920:	0015000d 	move	$r13,$r0
    1924:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1928:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    192c:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1930:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1934:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1938:	0011b0d0 	sub.d	$r16,$r6,$r12
    193c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1940:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1944:	0010b08c 	add.d	$r12,$r4,$r12
    1948:	00450e0f 	srli.d	$r15,$r16,0x3
    194c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1950:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1954:	2700018d 	stptr.d	$r13,$r12,0
    1958:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    195c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1954 <memset+0xd4>
    1960:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1964:	0014be0f 	and	$r15,$r16,$r15
    1968:	004081ed 	slli.w	$r13,$r15,0x0
    196c:	0010bdcc 	add.d	$r12,$r14,$r15
    1970:	001045ad 	add.w	$r13,$r13,$r17
    1974:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a24 <memset+0x1a4>
    1978:	29000185 	st.b	$r5,$r12,0
    197c:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1980:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a18 <memset+0x198>
    1984:	29000585 	st.b	$r5,$r12,1(0x1)
    1988:	028009ae 	addi.w	$r14,$r13,2(0x2)
    198c:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a18 <memset+0x198>
    1990:	29000985 	st.b	$r5,$r12,2(0x2)
    1994:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1998:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a18 <memset+0x198>
    199c:	29000d85 	st.b	$r5,$r12,3(0x3)
    19a0:	028011ae 	addi.w	$r14,$r13,4(0x4)
    19a4:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a18 <memset+0x198>
    19a8:	29001185 	st.b	$r5,$r12,4(0x4)
    19ac:	028015ae 	addi.w	$r14,$r13,5(0x5)
    19b0:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a18 <memset+0x198>
    19b4:	29001585 	st.b	$r5,$r12,5(0x5)
    19b8:	028019ae 	addi.w	$r14,$r13,6(0x6)
    19bc:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a18 <memset+0x198>
    19c0:	29001985 	st.b	$r5,$r12,6(0x6)
    19c4:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19c8:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a18 <memset+0x198>
    19cc:	29001d85 	st.b	$r5,$r12,7(0x7)
    19d0:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19d4:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a18 <memset+0x198>
    19d8:	29002185 	st.b	$r5,$r12,8(0x8)
    19dc:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19e0:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a18 <memset+0x198>
    19e4:	29002585 	st.b	$r5,$r12,9(0x9)
    19e8:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19ec:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a18 <memset+0x198>
    19f0:	29002985 	st.b	$r5,$r12,10(0xa)
    19f4:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19f8:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a18 <memset+0x198>
    19fc:	29002d85 	st.b	$r5,$r12,11(0xb)
    1a00:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1a04:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a18 <memset+0x198>
    1a08:	29003185 	st.b	$r5,$r12,12(0xc)
    1a0c:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1a10:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a18 <memset+0x198>
    1a14:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a18:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a1c:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a20:	53ff03ff 	b	-256(0xfffff00) # 1920 <memset+0xa0>
    1a24:	4c000020 	jirl	$r0,$r1,0
    1a28:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a2c:	53fef7ff 	b	-268(0xffffef4) # 1920 <memset+0xa0>
    1a30:	0015008e 	move	$r14,$r4
    1a34:	00150011 	move	$r17,$r0
    1a38:	53feebff 	b	-280(0xffffee8) # 1920 <memset+0xa0>
    1a3c:	0015008c 	move	$r12,$r4
    1a40:	0015000d 	move	$r13,$r0
    1a44:	53ff37ff 	b	-204(0xfffff34) # 1978 <memset+0xf8>
    1a48:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a4c:	53fed7ff 	b	-300(0xffffed4) # 1920 <memset+0xa0>
    1a50:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a54:	53fecfff 	b	-308(0xffffecc) # 1920 <memset+0xa0>
    1a58:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a5c:	53fec7ff 	b	-316(0xffffec4) # 1920 <memset+0xa0>
    1a60:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a64:	53febfff 	b	-324(0xffffebc) # 1920 <memset+0xa0>

0000000000001a68 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a68:	2800008c 	ld.b	$r12,$r4,0
    1a6c:	280000ae 	ld.b	$r14,$r5,0
    1a70:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1aa4 <strcmp+0x3c>
    1a74:	40003980 	beqz	$r12,56(0x38) # 1aac <strcmp+0x44>
    1a78:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a7c:	50000800 	b	8(0x8) # 1a84 <strcmp+0x1c>
    1a80:	400019a0 	beqz	$r13,24(0x18) # 1a98 <strcmp+0x30>
    1a84:	3800308d 	ldx.b	$r13,$r4,$r12
    1a88:	380030ae 	ldx.b	$r14,$r5,$r12
    1a8c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a90:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a80 <strcmp+0x18>
    1a94:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a98:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a9c:	001111a4 	sub.w	$r4,$r13,$r4
    1aa0:	4c000020 	jirl	$r0,$r1,0
    1aa4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1aa8:	53fff3ff 	b	-16(0xffffff0) # 1a98 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1aac:	0015000d 	move	$r13,$r0
    1ab0:	53ffebff 	b	-24(0xfffffe8) # 1a98 <strcmp+0x30>

0000000000001ab4 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1ab4:	400054c0 	beqz	$r6,84(0x54) # 1b08 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1ab8:	2a00008d 	ld.bu	$r13,$r4,0
    1abc:	2a0000ae 	ld.bu	$r14,$r5,0
    1ac0:	40003da0 	beqz	$r13,60(0x3c) # 1afc <strncmp+0x48>
    1ac4:	40003dc0 	beqz	$r14,60(0x3c) # 1b00 <strncmp+0x4c>
    if (!n--)
    1ac8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1acc:	400034c0 	beqz	$r6,52(0x34) # 1b00 <strncmp+0x4c>
    1ad0:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ad4:	580019ae 	beq	$r13,$r14,24(0x18) # 1aec <strncmp+0x38>
    1ad8:	50002800 	b	40(0x28) # 1b00 <strncmp+0x4c>
    1adc:	400035c0 	beqz	$r14,52(0x34) # 1b10 <strncmp+0x5c>
    1ae0:	580020cc 	beq	$r6,$r12,32(0x20) # 1b00 <strncmp+0x4c>
    1ae4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ae8:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1b10 <strncmp+0x5c>
    1aec:	3820308d 	ldx.bu	$r13,$r4,$r12
    1af0:	382030ae 	ldx.bu	$r14,$r5,$r12
    1af4:	001501af 	move	$r15,$r13
    1af8:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1adc <strncmp+0x28>
    1afc:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1b00:	001139a4 	sub.w	$r4,$r13,$r14
    1b04:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1b08:	00150004 	move	$r4,$r0
}
    1b0c:	4c000020 	jirl	$r0,$r1,0
    1b10:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b14:	001139a4 	sub.w	$r4,$r13,$r14
    1b18:	4c000020 	jirl	$r0,$r1,0

0000000000001b1c <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b1c:	03401c8c 	andi	$r12,$r4,0x7
    1b20:	4000b180 	beqz	$r12,176(0xb0) # 1bd0 <strlen+0xb4>
        if (!*s)
    1b24:	2800008c 	ld.b	$r12,$r4,0
    1b28:	4000b180 	beqz	$r12,176(0xb0) # 1bd8 <strlen+0xbc>
    1b2c:	0015008c 	move	$r12,$r4
    1b30:	50000c00 	b	12(0xc) # 1b3c <strlen+0x20>
    1b34:	2800018d 	ld.b	$r13,$r12,0
    1b38:	400091a0 	beqz	$r13,144(0x90) # 1bc8 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b3c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b40:	03401d8d 	andi	$r13,$r12,0x7
    1b44:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b34 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b48:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b4c:	2600018f 	ldptr.d	$r15,$r12,0
    1b50:	03bbfdad 	ori	$r13,$r13,0xeff
    1b54:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b58:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b5c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b60:	038201ce 	ori	$r14,$r14,0x80
    1b64:	0010b5ed 	add.d	$r13,$r15,$r13
    1b68:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b6c:	0016bdad 	andn	$r13,$r13,$r15
    1b70:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b74:	0014b9ae 	and	$r14,$r13,$r14
    1b78:	440049c0 	bnez	$r14,72(0x48) # 1bc0 <strlen+0xa4>
    1b7c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b80:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b84:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b88:	2600018e 	ldptr.d	$r14,$r12,0
    1b8c:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b90:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b94:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b98:	0382020f 	ori	$r15,$r16,0x80
    1b9c:	0010b5cd 	add.d	$r13,$r14,$r13
    1ba0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1ba4:	0016b9ad 	andn	$r13,$r13,$r14
    1ba8:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bac:	0014bdad 	and	$r13,$r13,$r15
    1bb0:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b84 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1bb4:	2800018d 	ld.b	$r13,$r12,0
    1bb8:	400011a0 	beqz	$r13,16(0x10) # 1bc8 <strlen+0xac>
    1bbc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1bc0:	2800018d 	ld.b	$r13,$r12,0
    1bc4:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1bbc <strlen+0xa0>
        ;
    return s - a;
    1bc8:	00119184 	sub.d	$r4,$r12,$r4
}
    1bcc:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1bd0:	0015008c 	move	$r12,$r4
    1bd4:	53ff77ff 	b	-140(0xfffff74) # 1b48 <strlen+0x2c>
        if (!*s)
    1bd8:	00150004 	move	$r4,$r0
            return s - a;
    1bdc:	4c000020 	jirl	$r0,$r1,0

0000000000001be0 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1be0:	03401c8c 	andi	$r12,$r4,0x7
    1be4:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1be8:	44002180 	bnez	$r12,32(0x20) # 1c08 <memchr+0x28>
    1bec:	50002c00 	b	44(0x2c) # 1c18 <memchr+0x38>
    1bf0:	2a00008c 	ld.bu	$r12,$r4,0
    1bf4:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cec <memchr+0x10c>
    1bf8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bfc:	03401c8c 	andi	$r12,$r4,0x7
    1c00:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1c04:	40001580 	beqz	$r12,20(0x14) # 1c18 <memchr+0x38>
    1c08:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bf0 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1c0c:	0015000d 	move	$r13,$r0
}
    1c10:	001501a4 	move	$r4,$r13
    1c14:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c18:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c1c:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1c10 <memchr+0x30>
    1c20:	2a00008c 	ld.bu	$r12,$r4,0
    1c24:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cec <memchr+0x10c>
        size_t k = ONES * c;
    1c28:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c2c:	0384058c 	ori	$r12,$r12,0x101
    1c30:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c34:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c38:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c3c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c40:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cfc <memchr+0x11c>
    1c44:	2600008d 	ldptr.d	$r13,$r4,0
    1c48:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c4c:	038201ce 	ori	$r14,$r14,0x80
    1c50:	0015b60d 	xor	$r13,$r16,$r13
    1c54:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c58:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c5c:	0016b58c 	andn	$r12,$r12,$r13
    1c60:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c64:	0014b98c 	and	$r12,$r12,$r14
    1c68:	44009580 	bnez	$r12,148(0x94) # 1cfc <memchr+0x11c>
    1c6c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c70:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c74:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c78:	50002000 	b	32(0x20) # 1c98 <memchr+0xb8>
    1c7c:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c80:	0015b20c 	xor	$r12,$r16,$r12
    1c84:	0010b98e 	add.d	$r14,$r12,$r14
    1c88:	0016b1cc 	andn	$r12,$r14,$r12
    1c8c:	0014bd8c 	and	$r12,$r12,$r15
    1c90:	44006580 	bnez	$r12,100(0x64) # 1cf4 <memchr+0x114>
    1c94:	001501a4 	move	$r4,$r13
    1c98:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c9c:	0382022f 	ori	$r15,$r17,0x80
    1ca0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1ca4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1ca8:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1cac:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cb0:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cb4:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1cb8:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c7c <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1cbc:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1c0c <memchr+0x2c>
    1cc0:	2a0001ac 	ld.bu	$r12,$r13,0
    1cc4:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1c10 <memchr+0x30>
    1cc8:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1ccc:	001099a6 	add.d	$r6,$r13,$r6
    1cd0:	50001000 	b	16(0x10) # 1ce0 <memchr+0x100>
    1cd4:	2a00018e 	ld.bu	$r14,$r12,0
    1cd8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1cdc:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1c10 <memchr+0x30>
    1ce0:	0015018d 	move	$r13,$r12
    1ce4:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1cd4 <memchr+0xf4>
    1ce8:	53ff27ff 	b	-220(0xfffff24) # 1c0c <memchr+0x2c>
    1cec:	0015008d 	move	$r13,$r4
    1cf0:	53ffd3ff 	b	-48(0xfffffd0) # 1cc0 <memchr+0xe0>
    1cf4:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cf8:	53ffcfff 	b	-52(0xfffffcc) # 1cc4 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cfc:	0015008d 	move	$r13,$r4
    1d00:	53ffcbff 	b	-56(0xfffffc8) # 1cc8 <memchr+0xe8>

0000000000001d04 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d04:	03401c8c 	andi	$r12,$r4,0x7
    1d08:	40011980 	beqz	$r12,280(0x118) # 1e20 <strnlen+0x11c>
    1d0c:	4000f4a0 	beqz	$r5,244(0xf4) # 1e00 <strnlen+0xfc>
    1d10:	2a00008c 	ld.bu	$r12,$r4,0
    1d14:	4000f580 	beqz	$r12,244(0xf4) # 1e08 <strnlen+0x104>
    1d18:	001500ac 	move	$r12,$r5
    1d1c:	0015008d 	move	$r13,$r4
    1d20:	50001000 	b	16(0x10) # 1d30 <strnlen+0x2c>
    1d24:	4000dd80 	beqz	$r12,220(0xdc) # 1e00 <strnlen+0xfc>
    1d28:	2a0001ae 	ld.bu	$r14,$r13,0
    1d2c:	4000e5c0 	beqz	$r14,228(0xe4) # 1e10 <strnlen+0x10c>
    1d30:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d34:	03401dae 	andi	$r14,$r13,0x7
    1d38:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d3c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d24 <strnlen+0x20>
    if (n && *s != c)
    1d40:	4000c180 	beqz	$r12,192(0xc0) # 1e00 <strnlen+0xfc>
    1d44:	2a0001ae 	ld.bu	$r14,$r13,0
    1d48:	4000c9c0 	beqz	$r14,200(0xc8) # 1e10 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d4c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d50:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e2c <strnlen+0x128>
    1d54:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d58:	260001b0 	ldptr.d	$r16,$r13,0
    1d5c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d60:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d64:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d68:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d6c:	038201ef 	ori	$r15,$r15,0x80
    1d70:	0010ba0e 	add.d	$r14,$r16,$r14
    1d74:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d78:	0016c1ce 	andn	$r14,$r14,$r16
    1d7c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d80:	0014bdcf 	and	$r15,$r14,$r15
    1d84:	4400a9e0 	bnez	$r15,168(0xa8) # 1e2c <strnlen+0x128>
    1d88:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d8c:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d90:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d94:	50001c00 	b	28(0x1c) # 1db0 <strnlen+0xac>
    1d98:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d9c:	0010b9ee 	add.d	$r14,$r15,$r14
    1da0:	0016bdce 	andn	$r14,$r14,$r15
    1da4:	0014c1ce 	and	$r14,$r14,$r16
    1da8:	440071c0 	bnez	$r14,112(0x70) # 1e18 <strnlen+0x114>
    1dac:	0015022d 	move	$r13,$r17
    1db0:	03bbfe6e 	ori	$r14,$r19,0xeff
    1db4:	03820250 	ori	$r16,$r18,0x80
    1db8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1dbc:	16101010 	lu32i.d	$r16,32896(0x8080)
    1dc0:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1dc4:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1dc8:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1dcc:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1dd0:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d98 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1dd4:	40002d80 	beqz	$r12,44(0x2c) # 1e00 <strnlen+0xfc>
    1dd8:	2a00022d 	ld.bu	$r13,$r17,0
    1ddc:	400021a0 	beqz	$r13,32(0x20) # 1dfc <strnlen+0xf8>
    1de0:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1de4:	0010b22c 	add.d	$r12,$r17,$r12
    1de8:	001501b1 	move	$r17,$r13
    1dec:	5800158d 	beq	$r12,$r13,20(0x14) # 1e00 <strnlen+0xfc>
    1df0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1df4:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1df8:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1de8 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dfc:	00119225 	sub.d	$r5,$r17,$r4
}
    1e00:	001500a4 	move	$r4,$r5
    1e04:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e08:	001500ac 	move	$r12,$r5
    1e0c:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1e10:	001501b1 	move	$r17,$r13
    1e14:	53ffc7ff 	b	-60(0xfffffc4) # 1dd8 <strnlen+0xd4>
    1e18:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e1c:	53ffc3ff 	b	-64(0xfffffc0) # 1ddc <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e20:	001500ac 	move	$r12,$r5
    1e24:	0015008d 	move	$r13,$r4
    1e28:	53ff1bff 	b	-232(0xfffff18) # 1d40 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e2c:	001501b1 	move	$r17,$r13
    1e30:	53ffb3ff 	b	-80(0xfffffb0) # 1de0 <strnlen+0xdc>

0000000000001e34 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e34:	0015948c 	xor	$r12,$r4,$r5
    1e38:	03401d8c 	andi	$r12,$r12,0x7
    1e3c:	4400ad80 	bnez	$r12,172(0xac) # 1ee8 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e40:	03401cac 	andi	$r12,$r5,0x7
    1e44:	40003180 	beqz	$r12,48(0x30) # 1e74 <strcpy+0x40>
            if (!(*d = *s))
    1e48:	280000ac 	ld.b	$r12,$r5,0
    1e4c:	2900008c 	st.b	$r12,$r4,0
    1e50:	44001580 	bnez	$r12,20(0x14) # 1e64 <strcpy+0x30>
    1e54:	5000bc00 	b	188(0xbc) # 1f10 <strcpy+0xdc>
    1e58:	280000ac 	ld.b	$r12,$r5,0
    1e5c:	2900008c 	st.b	$r12,$r4,0
    1e60:	4000a980 	beqz	$r12,168(0xa8) # 1f08 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e64:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e68:	03401cac 	andi	$r12,$r5,0x7
    1e6c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e70:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e58 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e74:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e78:	260000ae 	ldptr.d	$r14,$r5,0
    1e7c:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e80:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e84:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e88:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e8c:	038201ad 	ori	$r13,$r13,0x80
    1e90:	0010b1cc 	add.d	$r12,$r14,$r12
    1e94:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e98:	0016b98c 	andn	$r12,$r12,$r14
    1e9c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ea0:	0014b58c 	and	$r12,$r12,$r13
    1ea4:	44004580 	bnez	$r12,68(0x44) # 1ee8 <strcpy+0xb4>
    1ea8:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1eac:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1eb0:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1eb4:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1eb8:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1ebc:	260000ae 	ldptr.d	$r14,$r5,0
    1ec0:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ec4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ec8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ecc:	038201ed 	ori	$r13,$r15,0x80
    1ed0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ed4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ed8:	0016b98c 	andn	$r12,$r12,$r14
    1edc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ee0:	0014b58c 	and	$r12,$r12,$r13
    1ee4:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1eb0 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ee8:	280000ac 	ld.b	$r12,$r5,0
    1eec:	2900008c 	st.b	$r12,$r4,0
    1ef0:	40001d80 	beqz	$r12,28(0x1c) # 1f0c <strcpy+0xd8>
    1ef4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ef8:	280000ac 	ld.b	$r12,$r5,0
    1efc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f00:	2900008c 	st.b	$r12,$r4,0
    1f04:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ef4 <strcpy+0xc0>
        ;
    return d;
}
    1f08:	4c000020 	jirl	$r0,$r1,0
    1f0c:	4c000020 	jirl	$r0,$r1,0
    1f10:	4c000020 	jirl	$r0,$r1,0

0000000000001f14 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f14:	0015948c 	xor	$r12,$r4,$r5
    1f18:	03401d8c 	andi	$r12,$r12,0x7
    1f1c:	4400ad80 	bnez	$r12,172(0xac) # 1fc8 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f20:	03401cac 	andi	$r12,$r5,0x7
    1f24:	44010180 	bnez	$r12,256(0x100) # 2024 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f28:	400100c0 	beqz	$r6,256(0x100) # 2028 <strncpy+0x114>
    1f2c:	280000af 	ld.b	$r15,$r5,0
    1f30:	400105e0 	beqz	$r15,260(0x104) # 2034 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f34:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f38:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2210 <strncpy+0x2fc>
    1f3c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f40:	260000ae 	ldptr.d	$r14,$r5,0
    1f44:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f48:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f4c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f50:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f54:	038201ad 	ori	$r13,$r13,0x80
    1f58:	0010b1cc 	add.d	$r12,$r14,$r12
    1f5c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f60:	0016b98c 	andn	$r12,$r12,$r14
    1f64:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f68:	0014b58c 	and	$r12,$r12,$r13
    1f6c:	4402a580 	bnez	$r12,676(0x2a4) # 2210 <strncpy+0x2fc>
    1f70:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f74:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f78:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f7c:	50001c00 	b	28(0x1c) # 1f98 <strncpy+0x84>
    1f80:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f84:	0010b1cc 	add.d	$r12,$r14,$r12
    1f88:	0016b98c 	andn	$r12,$r12,$r14
    1f8c:	0014b58c 	and	$r12,$r12,$r13
    1f90:	44024580 	bnez	$r12,580(0x244) # 21d4 <strncpy+0x2c0>
    1f94:	001501e5 	move	$r5,$r15
    1f98:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f9c:	0382020d 	ori	$r13,$r16,0x80
    1fa0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1fa4:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1fa8:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1fac:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1fb0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fb4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fb8:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1fbc:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1fc0:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f80 <strncpy+0x6c>
    1fc4:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1fc8:	400060c0 	beqz	$r6,96(0x60) # 2028 <strncpy+0x114>
    1fcc:	280000ac 	ld.b	$r12,$r5,0
    1fd0:	0015008d 	move	$r13,$r4
    1fd4:	2900008c 	st.b	$r12,$r4,0
    1fd8:	44001580 	bnez	$r12,20(0x14) # 1fec <strncpy+0xd8>
    1fdc:	50005c00 	b	92(0x5c) # 2038 <strncpy+0x124>
    1fe0:	280000ac 	ld.b	$r12,$r5,0
    1fe4:	290001ac 	st.b	$r12,$r13,0
    1fe8:	40005180 	beqz	$r12,80(0x50) # 2038 <strncpy+0x124>
    1fec:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ff0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ff4:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1ff8:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fe0 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1ffc:	001501a4 	move	$r4,$r13
    2000:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    2004:	280000ac 	ld.b	$r12,$r5,0
    2008:	2900008c 	st.b	$r12,$r4,0
    200c:	40002980 	beqz	$r12,40(0x28) # 2034 <strncpy+0x120>
    2010:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2014:	03401cac 	andi	$r12,$r5,0x7
    2018:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    201c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    2020:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f28 <strncpy+0x14>
    2024:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 2004 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2028:	0015008d 	move	$r13,$r4
}
    202c:	001501a4 	move	$r4,$r13
    2030:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2034:	0015008d 	move	$r13,$r4
    2038:	0011b40c 	sub.d	$r12,$r0,$r13
    203c:	03401d8c 	andi	$r12,$r12,0x7
    2040:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2044:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2048:	02802c10 	addi.w	$r16,$r0,11(0xb)
    204c:	0013bdce 	masknez	$r14,$r14,$r15
    2050:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2054:	00133e0f 	maskeqz	$r15,$r16,$r15
    2058:	00153dce 	or	$r14,$r14,$r15
    205c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2060:	00131a31 	maskeqz	$r17,$r17,$r6
    2064:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2068:	001540d0 	or	$r16,$r6,$r16
    206c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21e4 <strncpy+0x2d0>
    2070:	40015980 	beqz	$r12,344(0x158) # 21c8 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2074:	290001a0 	st.b	$r0,$r13,0
    2078:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    207c:	5801458f 	beq	$r12,$r15,324(0x144) # 21c0 <strncpy+0x2ac>
    2080:	290005a0 	st.b	$r0,$r13,1(0x1)
    2084:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2088:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    208c:	5801658f 	beq	$r12,$r15,356(0x164) # 21f0 <strncpy+0x2dc>
    2090:	290009a0 	st.b	$r0,$r13,2(0x2)
    2094:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2098:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    209c:	58011d8f 	beq	$r12,$r15,284(0x11c) # 21b8 <strncpy+0x2a4>
    20a0:	29000da0 	st.b	$r0,$r13,3(0x3)
    20a4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    20a8:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    20ac:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21f8 <strncpy+0x2e4>
    20b0:	290011a0 	st.b	$r0,$r13,4(0x4)
    20b4:	0280140f 	addi.w	$r15,$r0,5(0x5)
    20b8:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    20bc:	5801458f 	beq	$r12,$r15,324(0x144) # 2200 <strncpy+0x2ec>
    20c0:	290015a0 	st.b	$r0,$r13,5(0x5)
    20c4:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20c8:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20cc:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2208 <strncpy+0x2f4>
    20d0:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20d4:	290019a0 	st.b	$r0,$r13,6(0x6)
    20d8:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20dc:	0011b210 	sub.d	$r16,$r16,$r12
    20e0:	00450e11 	srli.d	$r17,$r16,0x3
    20e4:	0010b1ac 	add.d	$r12,$r13,$r12
    20e8:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20ec:	27000180 	stptr.d	$r0,$r12,0
    20f0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20f4:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20ec <strncpy+0x1d8>
    20f8:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20fc:	0014c611 	and	$r17,$r16,$r17
    2100:	0040822f 	slli.w	$r15,$r17,0x0
    2104:	001049ef 	add.w	$r15,$r15,$r18
    2108:	0010c5cc 	add.d	$r12,$r14,$r17
    210c:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1ffc <strncpy+0xe8>
    2110:	29000180 	st.b	$r0,$r12,0
    2114:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2118:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1ffc <strncpy+0xe8>
    211c:	29000580 	st.b	$r0,$r12,1(0x1)
    2120:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2124:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1ffc <strncpy+0xe8>
    2128:	29000980 	st.b	$r0,$r12,2(0x2)
    212c:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2130:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1ffc <strncpy+0xe8>
    2134:	29000d80 	st.b	$r0,$r12,3(0x3)
    2138:	028011ee 	addi.w	$r14,$r15,4(0x4)
    213c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1ffc <strncpy+0xe8>
    2140:	29001180 	st.b	$r0,$r12,4(0x4)
    2144:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2148:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1ffc <strncpy+0xe8>
    214c:	29001580 	st.b	$r0,$r12,5(0x5)
    2150:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2154:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1ffc <strncpy+0xe8>
    2158:	29001980 	st.b	$r0,$r12,6(0x6)
    215c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2160:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1ffc <strncpy+0xe8>
    2164:	29001d80 	st.b	$r0,$r12,7(0x7)
    2168:	028021ee 	addi.w	$r14,$r15,8(0x8)
    216c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1ffc <strncpy+0xe8>
    2170:	29002180 	st.b	$r0,$r12,8(0x8)
    2174:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2178:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1ffc <strncpy+0xe8>
    217c:	29002580 	st.b	$r0,$r12,9(0x9)
    2180:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2184:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1ffc <strncpy+0xe8>
    2188:	29002980 	st.b	$r0,$r12,10(0xa)
    218c:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2190:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1ffc <strncpy+0xe8>
    2194:	29002d80 	st.b	$r0,$r12,11(0xb)
    2198:	028031ee 	addi.w	$r14,$r15,12(0xc)
    219c:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1ffc <strncpy+0xe8>
    21a0:	29003180 	st.b	$r0,$r12,12(0xc)
    21a4:	028035ef 	addi.w	$r15,$r15,13(0xd)
    21a8:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1ffc <strncpy+0xe8>
    21ac:	29003580 	st.b	$r0,$r12,13(0xd)
}
    21b0:	001501a4 	move	$r4,$r13
    21b4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    21b8:	02800c12 	addi.w	$r18,$r0,3(0x3)
    21bc:	53ff23ff 	b	-224(0xfffff20) # 20dc <strncpy+0x1c8>
    21c0:	02800412 	addi.w	$r18,$r0,1(0x1)
    21c4:	53ff1bff 	b	-232(0xfffff18) # 20dc <strncpy+0x1c8>
    21c8:	001501ae 	move	$r14,$r13
    21cc:	00150012 	move	$r18,$r0
    21d0:	53ff0fff 	b	-244(0xfffff0c) # 20dc <strncpy+0x1c8>
    21d4:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21d8:	0015008d 	move	$r13,$r4
    21dc:	001501e5 	move	$r5,$r15
    21e0:	53fdf7ff 	b	-524(0xffffdf4) # 1fd4 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21e4:	001501ac 	move	$r12,$r13
    21e8:	0015000f 	move	$r15,$r0
    21ec:	53ff27ff 	b	-220(0xfffff24) # 2110 <strncpy+0x1fc>
    21f0:	02800812 	addi.w	$r18,$r0,2(0x2)
    21f4:	53feebff 	b	-280(0xffffee8) # 20dc <strncpy+0x1c8>
    21f8:	02801012 	addi.w	$r18,$r0,4(0x4)
    21fc:	53fee3ff 	b	-288(0xffffee0) # 20dc <strncpy+0x1c8>
    2200:	02801412 	addi.w	$r18,$r0,5(0x5)
    2204:	53fedbff 	b	-296(0xffffed8) # 20dc <strncpy+0x1c8>
    2208:	02801812 	addi.w	$r18,$r0,6(0x6)
    220c:	53fed3ff 	b	-304(0xffffed0) # 20dc <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2210:	2900008f 	st.b	$r15,$r4,0
    2214:	0015008d 	move	$r13,$r4
    2218:	53fdd7ff 	b	-556(0xffffdd4) # 1fec <strncpy+0xd8>

000000000000221c <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    221c:	0015008c 	move	$r12,$r4
    2220:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2224:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2228:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    222c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2230:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2234:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2238:	00408084 	slli.w	$r4,$r4,0x0
}
    223c:	4c000020 	jirl	$r0,$r1,0

0000000000002240 <openat>:
    register long a7 __asm__("a7") = n;
    2240:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2244:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2248:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    224c:	00408084 	slli.w	$r4,$r4,0x0
}
    2250:	4c000020 	jirl	$r0,$r1,0

0000000000002254 <close>:
    register long a7 __asm__("a7") = n;
    2254:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2258:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    225c:	00408084 	slli.w	$r4,$r4,0x0
}
    2260:	4c000020 	jirl	$r0,$r1,0

0000000000002264 <read>:
    register long a7 __asm__("a7") = n;
    2264:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2268:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    226c:	4c000020 	jirl	$r0,$r1,0

0000000000002270 <write>:
    register long a7 __asm__("a7") = n;
    2270:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2274:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <getpid>:
    register long a7 __asm__("a7") = n;
    227c:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2280:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2284:	00408084 	slli.w	$r4,$r4,0x0
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <getppid>:
    register long a7 __asm__("a7") = n;
    228c:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2290:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2294:	00408084 	slli.w	$r4,$r4,0x0
}
    2298:	4c000020 	jirl	$r0,$r1,0

000000000000229c <sched_yield>:
    register long a7 __asm__("a7") = n;
    229c:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    22a0:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    22a4:	00408084 	slli.w	$r4,$r4,0x0
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <fork>:
    register long a7 __asm__("a7") = n;
    22ac:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    22b0:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    22b4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22b8:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    22bc:	00408084 	slli.w	$r4,$r4,0x0
}
    22c0:	4c000020 	jirl	$r0,$r1,0

00000000000022c4 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22c4:	001500c5 	move	$r5,$r6
    if (stack)
    22c8:	400008c0 	beqz	$r6,8(0x8) # 22d0 <clone+0xc>
	stack += stack_size;
    22cc:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22d0:	00408106 	slli.w	$r6,$r8,0x0
    22d4:	00150009 	move	$r9,$r0
    22d8:	00150008 	move	$r8,$r0
    22dc:	00150007 	move	$r7,$r0
    22e0:	5002c800 	b	712(0x2c8) # 25a8 <__clone>

00000000000022e4 <exit>:
    register long a7 __asm__("a7") = n;
    22e4:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22e8:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <waitpid>:
    register long a7 __asm__("a7") = n;
    22f0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22f4:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22f8:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2300:	4c000020 	jirl	$r0,$r1,0

0000000000002304 <exec>:
    register long a7 __asm__("a7") = n;
    2304:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2308:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    230c:	00408084 	slli.w	$r4,$r4,0x0
}
    2310:	4c000020 	jirl	$r0,$r1,0

0000000000002314 <execve>:
    register long a7 __asm__("a7") = n;
    2314:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2318:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    231c:	00408084 	slli.w	$r4,$r4,0x0
}
    2320:	4c000020 	jirl	$r0,$r1,0

0000000000002324 <times>:
    register long a7 __asm__("a7") = n;
    2324:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2328:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    232c:	00408084 	slli.w	$r4,$r4,0x0
}
    2330:	4c000020 	jirl	$r0,$r1,0

0000000000002334 <get_time>:

int64 get_time()
{
    2334:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2338:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    233c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2340:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2344:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2348:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    234c:	44003c80 	bnez	$r4,60(0x3c) # 2388 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2350:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2354:	039f3c8c 	ori	$r12,$r4,0x7cf
    2358:	28c02064 	ld.d	$r4,$r3,8(0x8)
    235c:	2a40006d 	ld.hu	$r13,$r3,0
    2360:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2364:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2368:	00450c84 	srli.d	$r4,$r4,0x3
    236c:	001eb084 	mulh.du	$r4,$r4,$r12
    2370:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2374:	001db1ac 	mul.d	$r12,$r13,$r12
    2378:	00451084 	srli.d	$r4,$r4,0x4
    237c:	00109184 	add.d	$r4,$r12,$r4
}
    2380:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2384:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2388:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    238c:	53fff7ff 	b	-12(0xffffff4) # 2380 <get_time+0x4c>

0000000000002390 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2390:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2394:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2398:	00408084 	slli.w	$r4,$r4,0x0
}
    239c:	4c000020 	jirl	$r0,$r1,0

00000000000023a0 <time>:
    register long a7 __asm__("a7") = n;
    23a0:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    23a4:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    23a8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ac:	4c000020 	jirl	$r0,$r1,0

00000000000023b0 <sleep>:

int sleep(unsigned long long time)
{
    23b0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    23b4:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    23b8:	00150064 	move	$r4,$r3
    23bc:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23c0:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23c4:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c8:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23cc:	44001080 	bnez	$r4,16(0x10) # 23dc <sleep+0x2c>
    return 0;
    23d0:	00150004 	move	$r4,$r0
}
    23d4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23d8:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23dc:	24000064 	ldptr.w	$r4,$r3,0
}
    23e0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23e4:	4c000020 	jirl	$r0,$r1,0

00000000000023e8 <set_priority>:
    register long a7 __asm__("a7") = n;
    23e8:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23ec:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23f0:	00408084 	slli.w	$r4,$r4,0x0
}
    23f4:	4c000020 	jirl	$r0,$r1,0

00000000000023f8 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23f8:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23fc:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <munmap>:
    register long a7 __asm__("a7") = n;
    2404:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2408:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    240c:	00408084 	slli.w	$r4,$r4,0x0
}
    2410:	4c000020 	jirl	$r0,$r1,0

0000000000002414 <wait>:

int wait(int *code)
{
    2414:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2418:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    241c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2420:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2424:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2428:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    242c:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <spawn>:
    register long a7 __asm__("a7") = n;
    2434:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2438:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <mailread>:
    register long a7 __asm__("a7") = n;
    2444:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2448:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    244c:	00408084 	slli.w	$r4,$r4,0x0
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2454:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2458:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <fstat>:
    register long a7 __asm__("a7") = n;
    2464:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2468:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2474:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2478:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    247c:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2488:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    248c:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2490:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2494:	00408084 	slli.w	$r4,$r4,0x0
}
    2498:	4c000020 	jirl	$r0,$r1,0

000000000000249c <link>:

int link(char *old_path, char *new_path)
{
    249c:	0015008c 	move	$r12,$r4
    24a0:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    24a4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    24a8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24ac:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    24b0:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    24b4:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24b8:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24bc:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <unlink>:

int unlink(char *path)
{
    24c4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24c8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24cc:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24d0:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24d4:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24d8:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24dc:	4c000020 	jirl	$r0,$r1,0

00000000000024e0 <uname>:
    register long a7 __asm__("a7") = n;
    24e0:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24e4:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24e8:	00408084 	slli.w	$r4,$r4,0x0
}
    24ec:	4c000020 	jirl	$r0,$r1,0

00000000000024f0 <brk>:
    register long a7 __asm__("a7") = n;
    24f0:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24f4:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24f8:	00408084 	slli.w	$r4,$r4,0x0
}
    24fc:	4c000020 	jirl	$r0,$r1,0

0000000000002500 <getcwd>:
    register long a7 __asm__("a7") = n;
    2500:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2504:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <chdir>:
    register long a7 __asm__("a7") = n;
    250c:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2510:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2514:	00408084 	slli.w	$r4,$r4,0x0
}
    2518:	4c000020 	jirl	$r0,$r1,0

000000000000251c <mkdir>:

int mkdir(const char *path, mode_t mode){
    251c:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2520:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2524:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2528:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    252c:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2530:	002b0000 	syscall	0x0
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <getdents>:
    register long a7 __asm__("a7") = n;
    253c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2540:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <pipe>:
    register long a7 __asm__("a7") = n;
    254c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2550:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2554:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2558:	00408084 	slli.w	$r4,$r4,0x0
}
    255c:	4c000020 	jirl	$r0,$r1,0

0000000000002560 <dup>:
    register long a7 __asm__("a7") = n;
    2560:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2564:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2568:	00408084 	slli.w	$r4,$r4,0x0
}
    256c:	4c000020 	jirl	$r0,$r1,0

0000000000002570 <dup2>:
    register long a7 __asm__("a7") = n;
    2570:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2574:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2578:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    257c:	00408084 	slli.w	$r4,$r4,0x0
}
    2580:	4c000020 	jirl	$r0,$r1,0

0000000000002584 <mount>:
    register long a7 __asm__("a7") = n;
    2584:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2588:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    258c:	00408084 	slli.w	$r4,$r4,0x0
}
    2590:	4c000020 	jirl	$r0,$r1,0

0000000000002594 <umount>:
    register long a7 __asm__("a7") = n;
    2594:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2598:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    259c:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    25a0:	00408084 	slli.w	$r4,$r4,0x0
}
    25a4:	4c000020 	jirl	$r0,$r1,0

00000000000025a8 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    25a8:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    25ac:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    25b0:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    25b4:	001500c4 	move	$r4,$r6
	move $a2, $a4
    25b8:	00150106 	move	$r6,$r8
	move $a3, $a5
    25bc:	00150127 	move	$r7,$r9
	move $a4, $a6
    25c0:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25c4:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25c8:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25cc:	40000880 	beqz	$r4,8(0x8) # 25d4 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25d0:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25d4:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25d8:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25dc:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25e0:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25e4:	002b0000 	syscall	0x0
