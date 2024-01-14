
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/fork:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400c800 	bl	200(0xc8) # 10cc <__start_main>

0000000000001008 <test_fork>:
 * 成功测试时子进程的输出：
 * "  child process."
 */
static int fd[2];

void test_fork(void){
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
void test_fork(void){
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    TEST_START(__func__);
    1018:	5403bc00 	bl	956(0x3bc) # 13d4 <puts>
    101c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1020:	02d81084 	addi.d	$r4,$r4,1540(0x604)
    1024:	5403b000 	bl	944(0x3b0) # 13d4 <puts>
    1028:	1c000024 	pcaddu12i	$r4,1(0x1)
    102c:	02d5e084 	addi.d	$r4,$r4,1400(0x578)
    1030:	5403a400 	bl	932(0x3a4) # 13d4 <puts>
    int cpid, wstatus;
    cpid = fork();
    1034:	54121400 	bl	4628(0x1214) # 2248 <fork>
    assert(cpid != -1);
    1038:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    103c:	5800508c 	beq	$r4,$r12,80(0x50) # 108c <test_fork+0x84>

    if(cpid > 0){
    1040:	64005804 	bge	$r0,$r4,88(0x58) # 1098 <test_fork+0x90>
	wait(&wstatus);
    1044:	02c03064 	addi.d	$r4,$r3,12(0xc)
    1048:	54136800 	bl	4968(0x1368) # 23b0 <wait>
	printf("  parent process. wstatus:%d\n", wstatus);
    104c:	24000c65 	ldptr.w	$r5,$r3,12(0xc)
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d60084 	addi.d	$r4,$r4,1408(0x580)
    1058:	5403b400 	bl	948(0x3b4) # 140c <printf>
    }else{
	printf("  child process.\n");
	exit(0);
    }
    TEST_END(__func__);
    105c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1060:	02d6b084 	addi.d	$r4,$r4,1452(0x5ac)
    1064:	54037000 	bl	880(0x370) # 13d4 <puts>
    1068:	1c000024 	pcaddu12i	$r4,1(0x1)
    106c:	02d6e084 	addi.d	$r4,$r4,1464(0x5b8)
    1070:	54036400 	bl	868(0x364) # 13d4 <puts>
    1074:	1c000024 	pcaddu12i	$r4,1(0x1)
    1078:	02d4b084 	addi.d	$r4,$r4,1324(0x52c)
    107c:	54035800 	bl	856(0x358) # 13d4 <puts>
}
    1080:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1084:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1088:	4c000020 	jirl	$r0,$r1,0
    assert(cpid != -1);
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d49084 	addi.d	$r4,$r4,1316(0x524)
    1094:	54068800 	bl	1672(0x688) # 171c <panic>
	printf("  child process.\n");
    1098:	1c000024 	pcaddu12i	$r4,1(0x1)
    109c:	02d56084 	addi.d	$r4,$r4,1368(0x558)
    10a0:	54036c00 	bl	876(0x36c) # 140c <printf>
	exit(0);
    10a4:	00150004 	move	$r4,$r0
    10a8:	5411d800 	bl	4568(0x11d8) # 2280 <exit>
    10ac:	53ffb3ff 	b	-80(0xfffffb0) # 105c <test_fork+0x54>

00000000000010b0 <main>:

int main(void){
    10b0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10b4:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_fork();
    10b8:	57ff53ff 	bl	-176(0xfffff50) # 1008 <test_fork>
    return 0;
}
    10bc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10c0:	00150004 	move	$r4,$r0
    10c4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10c8:	4c000020 	jirl	$r0,$r1,0

00000000000010cc <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10cc:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10d0:	24000084 	ldptr.w	$r4,$r4,0
{
    10d4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10d8:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10dc:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10e0:	57ffd3ff 	bl	-48(0xfffffd0) # 10b0 <main>
    10e4:	54119c00 	bl	4508(0x119c) # 2280 <exit>
	return 0;
}
    10e8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10ec:	00150004 	move	$r4,$r0
    10f0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10f4:	4c000020 	jirl	$r0,$r1,0

00000000000010f8 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    10f8:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    10fc:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1100:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12cc <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1104:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1108:	1c00002c 	pcaddu12i	$r12,1(0x1)
    110c:	02d4a18c 	addi.d	$r12,$r12,1320(0x528)
    1110:	002195cf 	mod.wu	$r15,$r14,$r5
    1114:	5c0008a0 	bne	$r5,$r0,8(0x8) # 111c <printint.constprop.0+0x24>
    1118:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    111c:	002115cd 	div.wu	$r13,$r14,$r5
    1120:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1128 <printint.constprop.0+0x30>
    1124:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1128:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    112c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1130:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1134:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1138:	680219c5 	bltu	$r14,$r5,536(0x218) # 1350 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    113c:	002195af 	mod.wu	$r15,$r13,$r5
    1140:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1148 <printint.constprop.0+0x50>
    1144:	002a0007 	break	0x7
    1148:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    114c:	002115ae 	div.wu	$r14,$r13,$r5
    1150:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1158 <printint.constprop.0+0x60>
    1154:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1158:	38203d8f 	ldx.bu	$r15,$r12,$r15
    115c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1160:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1320 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1164:	002195cf 	mod.wu	$r15,$r14,$r5
    1168:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1170 <printint.constprop.0+0x78>
    116c:	002a0007 	break	0x7
    1170:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1174:	002115cd 	div.wu	$r13,$r14,$r5
    1178:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1180 <printint.constprop.0+0x88>
    117c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1180:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1184:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1188:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 132c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    118c:	002195af 	mod.wu	$r15,$r13,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0xa0>
    1194:	002a0007 	break	0x7
    1198:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    119c:	002115ae 	div.wu	$r14,$r13,$r5
    11a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a8 <printint.constprop.0+0xb0>
    11a4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11a8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11ac:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11b0:	680189a5 	bltu	$r13,$r5,392(0x188) # 1338 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11b4:	002195cf 	mod.wu	$r15,$r14,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0xc8>
    11bc:	002a0007 	break	0x7
    11c0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11c4:	002115cd 	div.wu	$r13,$r14,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0xd8>
    11cc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11d4:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11d8:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1344 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11dc:	002195af 	mod.wu	$r15,$r13,$r5
    11e0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e8 <printint.constprop.0+0xf0>
    11e4:	002a0007 	break	0x7
    11e8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11ec:	002115ae 	div.wu	$r14,$r13,$r5
    11f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f8 <printint.constprop.0+0x100>
    11f4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11fc:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1200:	680115a5 	bltu	$r13,$r5,276(0x114) # 1314 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1204:	002195cf 	mod.wu	$r15,$r14,$r5
    1208:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1210 <printint.constprop.0+0x118>
    120c:	002a0007 	break	0x7
    1210:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1214:	002115cd 	div.wu	$r13,$r14,$r5
    1218:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1220 <printint.constprop.0+0x128>
    121c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1220:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1224:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1228:	680131c5 	bltu	$r14,$r5,304(0x130) # 1358 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    122c:	002195af 	mod.wu	$r15,$r13,$r5
    1230:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1238 <printint.constprop.0+0x140>
    1234:	002a0007 	break	0x7
    1238:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    123c:	002115ae 	div.wu	$r14,$r13,$r5
    1240:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1248 <printint.constprop.0+0x150>
    1244:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1248:	38203d8f 	ldx.bu	$r15,$r12,$r15
    124c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1250:	680115a5 	bltu	$r13,$r5,276(0x114) # 1364 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1254:	002195cf 	mod.wu	$r15,$r14,$r5
    1258:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1260 <printint.constprop.0+0x168>
    125c:	002a0007 	break	0x7
    1260:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1264:	002115cd 	div.wu	$r13,$r14,$r5
    1268:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1270 <printint.constprop.0+0x178>
    126c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1270:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1274:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1278:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1370 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    127c:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1280:	3820358d 	ldx.bu	$r13,$r12,$r13
    1284:	02801805 	addi.w	$r5,$r0,6(0x6)
    1288:	0280140c 	addi.w	$r12,$r0,5(0x5)
    128c:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1290:	64001880 	bge	$r4,$r0,24(0x18) # 12a8 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1294:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1298:	0010b1ad 	add.d	$r13,$r13,$r12
    129c:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12a0:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12a4:	00150185 	move	$r5,$r12
    write(f, s, l);
    12a8:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12ac:	02804006 	addi.w	$r6,$r0,16(0x10)
    12b0:	001114c6 	sub.w	$r6,$r6,$r5
    12b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    12b8:	00109585 	add.d	$r5,$r12,$r5
    12bc:	540f5000 	bl	3920(0xf50) # 220c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12c0:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12c4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12c8:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12cc:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12d0:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12d4:	02cd818c 	addi.d	$r12,$r12,864(0x360)
    12d8:	002195cf 	mod.wu	$r15,$r14,$r5
    12dc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12e4 <printint.constprop.0+0x1ec>
    12e0:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12e4:	002115cd 	div.wu	$r13,$r14,$r5
    12e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12f0 <printint.constprop.0+0x1f8>
    12ec:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12f0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    12f4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    12f8:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    12fc:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1300:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 113c <printint.constprop.0+0x44>
        buf[i--] = '-';
    1304:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1308:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    130c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1310:	53ff9bff 	b	-104(0xfffff98) # 12a8 <printint.constprop.0+0x1b0>
    1314:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1318:	02802805 	addi.w	$r5,$r0,10(0xa)
    131c:	53ff77ff 	b	-140(0xfffff74) # 1290 <printint.constprop.0+0x198>
    1320:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1324:	02803805 	addi.w	$r5,$r0,14(0xe)
    1328:	53ff6bff 	b	-152(0xfffff68) # 1290 <printint.constprop.0+0x198>
    132c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1330:	02803405 	addi.w	$r5,$r0,13(0xd)
    1334:	53ff5fff 	b	-164(0xfffff5c) # 1290 <printint.constprop.0+0x198>
    1338:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    133c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1340:	53ff53ff 	b	-176(0xfffff50) # 1290 <printint.constprop.0+0x198>
    1344:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1348:	02802c05 	addi.w	$r5,$r0,11(0xb)
    134c:	53ff47ff 	b	-188(0xfffff44) # 1290 <printint.constprop.0+0x198>
    i = 15;
    1350:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1354:	53ff57ff 	b	-172(0xfffff54) # 12a8 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1358:	0280200c 	addi.w	$r12,$r0,8(0x8)
    135c:	02802405 	addi.w	$r5,$r0,9(0x9)
    1360:	53ff33ff 	b	-208(0xfffff30) # 1290 <printint.constprop.0+0x198>
    1364:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1368:	02802005 	addi.w	$r5,$r0,8(0x8)
    136c:	53ff27ff 	b	-220(0xfffff24) # 1290 <printint.constprop.0+0x198>
    1370:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1374:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1378:	53ff1bff 	b	-232(0xfffff18) # 1290 <printint.constprop.0+0x198>

000000000000137c <getchar>:
{
    137c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1380:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1384:	02800406 	addi.w	$r6,$r0,1(0x1)
    1388:	00150004 	move	$r4,$r0
{
    138c:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1390:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1394:	540e6c00 	bl	3692(0xe6c) # 2200 <read>
}
    1398:	28c06061 	ld.d	$r1,$r3,24(0x18)
    139c:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13a0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13a4:	4c000020 	jirl	$r0,$r1,0

00000000000013a8 <putchar>:
{
    13a8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13ac:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13b0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13b4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13b8:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13bc:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13c0:	540e4c00 	bl	3660(0xe4c) # 220c <write>
}
    13c4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13c8:	00408084 	slli.w	$r4,$r4,0x0
}
    13cc:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13d0:	4c000020 	jirl	$r0,$r1,0

00000000000013d4 <puts>:
{
    13d4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13d8:	29c02061 	st.d	$r1,$r3,8(0x8)
    13dc:	27000077 	stptr.d	$r23,$r3,0
    13e0:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13e4:	5406d400 	bl	1748(0x6d4) # 1ab8 <strlen>
    13e8:	00150086 	move	$r6,$r4
    13ec:	001502e5 	move	$r5,$r23
    13f0:	02800404 	addi.w	$r4,$r0,1(0x1)
    13f4:	540e1800 	bl	3608(0xe18) # 220c <write>
}
    13f8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    13fc:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1400:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1404:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1408:	4c000020 	jirl	$r0,$r1,0

000000000000140c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    140c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1410:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1414:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1418:	140000fa 	lu12i.w	$r26,7(0x7)
{
    141c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1420:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1424:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1428:	29c1a061 	st.d	$r1,$r3,104(0x68)
    142c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1430:	29c16078 	st.d	$r24,$r3,88(0x58)
    1434:	0015009b 	move	$r27,$r4
    1438:	29c1e065 	st.d	$r5,$r3,120(0x78)
    143c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1440:	29c22067 	st.d	$r7,$r3,136(0x88)
    1444:	29c24068 	st.d	$r8,$r3,144(0x90)
    1448:	29c26069 	st.d	$r9,$r3,152(0x98)
    144c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1450:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1454:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1458:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    145c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1460:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1464:	02c7439c 	addi.d	$r28,$r28,464(0x1d0)
        if (!*s)
    1468:	2800036c 	ld.b	$r12,$r27,0
    146c:	40008980 	beqz	$r12,136(0x88) # 14f4 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1470:	58027d99 	beq	$r12,$r25,636(0x27c) # 16ec <printf+0x2e0>
    1474:	00150366 	move	$r6,$r27
    1478:	50000800 	b	8(0x8) # 1480 <printf+0x74>
    147c:	58009d99 	beq	$r12,$r25,156(0x9c) # 1518 <printf+0x10c>
    1480:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1484:	280000cc 	ld.b	$r12,$r6,0
    1488:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 147c <printf+0x70>
    148c:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1490:	0011ecd7 	sub.d	$r23,$r6,$r27
    1494:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1498:	001502e6 	move	$r6,$r23
    149c:	00150365 	move	$r5,$r27
    14a0:	02800404 	addi.w	$r4,$r0,1(0x1)
    14a4:	540d6800 	bl	3432(0xd68) # 220c <write>
        out(f, a, l);
        if (l)
    14a8:	4400b6e0 	bnez	$r23,180(0xb4) # 155c <printf+0x150>
            continue;
        if (s[1] == 0)
    14ac:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14b0:	40004580 	beqz	$r12,68(0x44) # 14f4 <printf+0xe8>
            break;
        switch (s[1])
    14b4:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14b8:	5800d58d 	beq	$r12,$r13,212(0xd4) # 158c <printf+0x180>
    14bc:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1564 <printf+0x158>
    14c0:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14c4:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16b4 <printf+0x2a8>
    14c8:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14cc:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 167c <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14d0:	2600006c 	ldptr.d	$r12,$r3,0
    14d4:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14d8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14dc:	24000184 	ldptr.w	$r4,$r12,0
    14e0:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14e4:	2700006c 	stptr.d	$r12,$r3,0
    14e8:	57fc13ff 	bl	-1008(0xffffc10) # 10f8 <printint.constprop.0>
        if (!*s)
    14ec:	2800036c 	ld.b	$r12,$r27,0
    14f0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1470 <printf+0x64>
    }
    va_end(ap);
}
    14f4:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    14f8:	28c18077 	ld.d	$r23,$r3,96(0x60)
    14fc:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1500:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1504:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1508:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    150c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1510:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1514:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1518:	280004cc 	ld.b	$r12,$r6,1(0x1)
    151c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 148c <printf+0x80>
    1520:	001500d8 	move	$r24,$r6
    1524:	50000c00 	b	12(0xc) # 1530 <printf+0x124>
    1528:	2800070c 	ld.b	$r12,$r24,1(0x1)
    152c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1490 <printf+0x84>
    1530:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1534:	2800030c 	ld.b	$r12,$r24,0
    1538:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    153c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1528 <printf+0x11c>
        l = z - a;
    1540:	0011ecd7 	sub.d	$r23,$r6,$r27
    1544:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1548:	001502e6 	move	$r6,$r23
    154c:	00150365 	move	$r5,$r27
    1550:	02800404 	addi.w	$r4,$r0,1(0x1)
    1554:	540cb800 	bl	3256(0xcb8) # 220c <write>
        if (l)
    1558:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14ac <printf+0xa0>
    155c:	0015031b 	move	$r27,$r24
    1560:	53ff0bff 	b	-248(0xfffff08) # 1468 <printf+0x5c>
        switch (s[1])
    1564:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1568:	5c01158d 	bne	$r12,$r13,276(0x114) # 167c <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    156c:	2600006c 	ldptr.d	$r12,$r3,0
    1570:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1574:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1578:	24000184 	ldptr.w	$r4,$r12,0
    157c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1580:	2700006c 	stptr.d	$r12,$r3,0
    1584:	57fb77ff 	bl	-1164(0xffffb74) # 10f8 <printint.constprop.0>
        s += 2;
    1588:	53ff67ff 	b	-156(0xfffff64) # 14ec <printf+0xe0>
            printptr(va_arg(ap, uint64));
    158c:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1590:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1594:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1598:	260001ac 	ldptr.d	$r12,$r13,0
    159c:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15a0:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15a4:	0045f18a 	srli.d	$r10,$r12,0x3c
    15a8:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15ac:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15b0:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15b4:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15b8:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15bc:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15c0:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15c4:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15c8:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15cc:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15d0:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15d4:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15d8:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15dc:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15e0:	3820278a 	ldx.bu	$r10,$r28,$r9
    15e4:	38202389 	ldx.bu	$r9,$r28,$r8
    15e8:	38201f88 	ldx.bu	$r8,$r28,$r7
    15ec:	38201787 	ldx.bu	$r7,$r28,$r5
    15f0:	38201385 	ldx.bu	$r5,$r28,$r4
    15f4:	38205384 	ldx.bu	$r4,$r28,$r20
    15f8:	38204f94 	ldx.bu	$r20,$r28,$r19
    15fc:	38204b93 	ldx.bu	$r19,$r28,$r18
    1600:	38204792 	ldx.bu	$r18,$r28,$r17
    1604:	38204391 	ldx.bu	$r17,$r28,$r16
    1608:	38203f90 	ldx.bu	$r16,$r28,$r15
    160c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1610:	3820378e 	ldx.bu	$r14,$r28,$r13
    1614:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1618:	03403d8c 	andi	$r12,$r12,0xf
    161c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1620:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1624:	29003069 	st.b	$r9,$r3,12(0xc)
    1628:	29003468 	st.b	$r8,$r3,13(0xd)
    162c:	29003867 	st.b	$r7,$r3,14(0xe)
    1630:	29003c65 	st.b	$r5,$r3,15(0xf)
    1634:	29004064 	st.b	$r4,$r3,16(0x10)
    1638:	29004474 	st.b	$r20,$r3,17(0x11)
    163c:	29004873 	st.b	$r19,$r3,18(0x12)
    1640:	29004c72 	st.b	$r18,$r3,19(0x13)
    1644:	29005071 	st.b	$r17,$r3,20(0x14)
    1648:	29005470 	st.b	$r16,$r3,21(0x15)
    164c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1650:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1654:	3820378d 	ldx.bu	$r13,$r28,$r13
    1658:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    165c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1660:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1664:	2900606d 	st.b	$r13,$r3,24(0x18)
    1668:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    166c:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1670:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1674:	540b9800 	bl	2968(0xb98) # 220c <write>
        s += 2;
    1678:	53fe77ff 	b	-396(0xffffe74) # 14ec <printf+0xe0>
    char byte = c;
    167c:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1680:	02800406 	addi.w	$r6,$r0,1(0x1)
    1684:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1688:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    168c:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1690:	540b7c00 	bl	2940(0xb7c) # 220c <write>
    char byte = c;
    1694:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1698:	02800406 	addi.w	$r6,$r0,1(0x1)
    169c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16a0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16a4:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16a8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16ac:	540b6000 	bl	2912(0xb60) # 220c <write>
        s += 2;
    16b0:	53fe3fff 	b	-452(0xffffe3c) # 14ec <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16b4:	2600006c 	ldptr.d	$r12,$r3,0
    16b8:	26000197 	ldptr.d	$r23,$r12,0
    16bc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16c0:	2700006c 	stptr.d	$r12,$r3,0
    16c4:	40004ee0 	beqz	$r23,76(0x4c) # 1710 <printf+0x304>
            l = strnlen(a, 200);
    16c8:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16cc:	001502e4 	move	$r4,$r23
    16d0:	5405d000 	bl	1488(0x5d0) # 1ca0 <strnlen>
    16d4:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16d8:	001502e5 	move	$r5,$r23
    16dc:	02800404 	addi.w	$r4,$r0,1(0x1)
    16e0:	540b2c00 	bl	2860(0xb2c) # 220c <write>
        s += 2;
    16e4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16e8:	53fe07ff 	b	-508(0xffffe04) # 14ec <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16ec:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16f0:	00150366 	move	$r6,$r27
    16f4:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1520 <printf+0x114>
    write(f, s, l);
    16f8:	00150006 	move	$r6,$r0
    16fc:	00150365 	move	$r5,$r27
    1700:	02800404 	addi.w	$r4,$r0,1(0x1)
    1704:	540b0800 	bl	2824(0xb08) # 220c <write>
    1708:	00150378 	move	$r24,$r27
    170c:	53fda3ff 	b	-608(0xffffda0) # 14ac <printf+0xa0>
                a = "(null)";
    1710:	1c000037 	pcaddu12i	$r23,1(0x1)
    1714:	02fc22f7 	addi.d	$r23,$r23,-248(0xf08)
    1718:	53ffb3ff 	b	-80(0xfffffb0) # 16c8 <printf+0x2bc>

000000000000171c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    171c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1720:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1724:	57fcb3ff 	bl	-848(0xffffcb0) # 13d4 <puts>
    exit(-100);
}
    1728:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    172c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1730:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1734:	500b4c00 	b	2892(0xb4c) # 2280 <exit>

0000000000001738 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1738:	0280800c 	addi.w	$r12,$r0,32(0x20)
    173c:	5800108c 	beq	$r4,$r12,16(0x10) # 174c <isspace+0x14>
    1740:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1744:	02401484 	sltui	$r4,$r4,5(0x5)
    1748:	4c000020 	jirl	$r0,$r1,0
    174c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1750:	4c000020 	jirl	$r0,$r1,0

0000000000001754 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1754:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1758:	02402884 	sltui	$r4,$r4,10(0xa)
    175c:	4c000020 	jirl	$r0,$r1,0

0000000000001760 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1760:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1764:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1768:	2800008d 	ld.b	$r13,$r4,0
    176c:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1770:	580061ae 	beq	$r13,$r14,96(0x60) # 17d0 <atoi+0x70>
    1774:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17d0 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1778:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    177c:	580065ac 	beq	$r13,$r12,100(0x64) # 17e0 <atoi+0x80>
    1780:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1784:	58007dac 	beq	$r13,$r12,124(0x7c) # 1800 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1788:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    178c:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1790:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1794:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1798:	680061cf 	bltu	$r14,$r15,96(0x60) # 17f8 <atoi+0x98>
    int n = 0, neg = 0;
    179c:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17a0:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17a4:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17a8:	001c126f 	mul.w	$r15,$r19,$r4
    17ac:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17b0:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17b4:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17b8:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17bc:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17c0:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17c4:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17a8 <atoi+0x48>
    return neg ? n : -n;
    17c8:	40001280 	beqz	$r20,16(0x10) # 17d8 <atoi+0x78>
}
    17cc:	4c000020 	jirl	$r0,$r1,0
        s++;
    17d0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17d4:	53ff97ff 	b	-108(0xfffff94) # 1768 <atoi+0x8>
    17d8:	00113e04 	sub.w	$r4,$r16,$r15
    17dc:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17e0:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17e4:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17e8:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17ec:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17f0:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17f4:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 179c <atoi+0x3c>
    17f8:	00150004 	move	$r4,$r0
}
    17fc:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1800:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1804:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1808:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    180c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1810:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 17f8 <atoi+0x98>
        neg = 1;
    1814:	02800414 	addi.w	$r20,$r0,1(0x1)
    1818:	53ff87ff 	b	-124(0xfffff84) # 179c <atoi+0x3c>

000000000000181c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    181c:	400198c0 	beqz	$r6,408(0x198) # 19b4 <memset+0x198>
    1820:	0011900c 	sub.d	$r12,$r0,$r4
    1824:	03401d8c 	andi	$r12,$r12,0x7
    1828:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    182c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1830:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1834:	0013b9ad 	masknez	$r13,$r13,$r14
    1838:	001339ee 	maskeqz	$r14,$r15,$r14
    183c:	001539ad 	or	$r13,$r13,$r14
    1840:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1844:	00005ca5 	ext.w.b	$r5,$r5
    1848:	680191ed 	bltu	$r15,$r13,400(0x190) # 19d8 <memset+0x1bc>
    184c:	40018180 	beqz	$r12,384(0x180) # 19cc <memset+0x1b0>
    1850:	29000085 	st.b	$r5,$r4,0
    1854:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1858:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    185c:	5801698d 	beq	$r12,$r13,360(0x168) # 19c4 <memset+0x1a8>
    1860:	29000485 	st.b	$r5,$r4,1(0x1)
    1864:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1868:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    186c:	5801798d 	beq	$r12,$r13,376(0x178) # 19e4 <memset+0x1c8>
    1870:	29000885 	st.b	$r5,$r4,2(0x2)
    1874:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1878:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    187c:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19b8 <memset+0x19c>
    1880:	29000c85 	st.b	$r5,$r4,3(0x3)
    1884:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1888:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    188c:	5801618d 	beq	$r12,$r13,352(0x160) # 19ec <memset+0x1d0>
    1890:	29001085 	st.b	$r5,$r4,4(0x4)
    1894:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1898:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    189c:	5801598d 	beq	$r12,$r13,344(0x158) # 19f4 <memset+0x1d8>
    18a0:	29001485 	st.b	$r5,$r4,5(0x5)
    18a4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18a8:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18ac:	5c01518d 	bne	$r12,$r13,336(0x150) # 19fc <memset+0x1e0>
    18b0:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18b4:	29001885 	st.b	$r5,$r4,6(0x6)
    18b8:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18bc:	0015000d 	move	$r13,$r0
    18c0:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18c4:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18c8:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18cc:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18d0:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18d4:	0011b0d0 	sub.d	$r16,$r6,$r12
    18d8:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18dc:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18e0:	0010b08c 	add.d	$r12,$r4,$r12
    18e4:	00450e0f 	srli.d	$r15,$r16,0x3
    18e8:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18ec:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18f0:	2700018d 	stptr.d	$r13,$r12,0
    18f4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    18f8:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18f0 <memset+0xd4>
    18fc:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1900:	0014be0f 	and	$r15,$r16,$r15
    1904:	004081ed 	slli.w	$r13,$r15,0x0
    1908:	0010bdcc 	add.d	$r12,$r14,$r15
    190c:	001045ad 	add.w	$r13,$r13,$r17
    1910:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19c0 <memset+0x1a4>
    1914:	29000185 	st.b	$r5,$r12,0
    1918:	028005ae 	addi.w	$r14,$r13,1(0x1)
    191c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19b4 <memset+0x198>
    1920:	29000585 	st.b	$r5,$r12,1(0x1)
    1924:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1928:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19b4 <memset+0x198>
    192c:	29000985 	st.b	$r5,$r12,2(0x2)
    1930:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1934:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19b4 <memset+0x198>
    1938:	29000d85 	st.b	$r5,$r12,3(0x3)
    193c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1940:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19b4 <memset+0x198>
    1944:	29001185 	st.b	$r5,$r12,4(0x4)
    1948:	028015ae 	addi.w	$r14,$r13,5(0x5)
    194c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19b4 <memset+0x198>
    1950:	29001585 	st.b	$r5,$r12,5(0x5)
    1954:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1958:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19b4 <memset+0x198>
    195c:	29001985 	st.b	$r5,$r12,6(0x6)
    1960:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1964:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19b4 <memset+0x198>
    1968:	29001d85 	st.b	$r5,$r12,7(0x7)
    196c:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1970:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19b4 <memset+0x198>
    1974:	29002185 	st.b	$r5,$r12,8(0x8)
    1978:	028025ae 	addi.w	$r14,$r13,9(0x9)
    197c:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19b4 <memset+0x198>
    1980:	29002585 	st.b	$r5,$r12,9(0x9)
    1984:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1988:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19b4 <memset+0x198>
    198c:	29002985 	st.b	$r5,$r12,10(0xa)
    1990:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1994:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19b4 <memset+0x198>
    1998:	29002d85 	st.b	$r5,$r12,11(0xb)
    199c:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19a0:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19b4 <memset+0x198>
    19a4:	29003185 	st.b	$r5,$r12,12(0xc)
    19a8:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19ac:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19b4 <memset+0x198>
    19b0:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19b4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19b8:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19bc:	53ff03ff 	b	-256(0xfffff00) # 18bc <memset+0xa0>
    19c0:	4c000020 	jirl	$r0,$r1,0
    19c4:	02800411 	addi.w	$r17,$r0,1(0x1)
    19c8:	53fef7ff 	b	-268(0xffffef4) # 18bc <memset+0xa0>
    19cc:	0015008e 	move	$r14,$r4
    19d0:	00150011 	move	$r17,$r0
    19d4:	53feebff 	b	-280(0xffffee8) # 18bc <memset+0xa0>
    19d8:	0015008c 	move	$r12,$r4
    19dc:	0015000d 	move	$r13,$r0
    19e0:	53ff37ff 	b	-204(0xfffff34) # 1914 <memset+0xf8>
    19e4:	02800811 	addi.w	$r17,$r0,2(0x2)
    19e8:	53fed7ff 	b	-300(0xffffed4) # 18bc <memset+0xa0>
    19ec:	02801011 	addi.w	$r17,$r0,4(0x4)
    19f0:	53fecfff 	b	-308(0xffffecc) # 18bc <memset+0xa0>
    19f4:	02801411 	addi.w	$r17,$r0,5(0x5)
    19f8:	53fec7ff 	b	-316(0xffffec4) # 18bc <memset+0xa0>
    19fc:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a00:	53febfff 	b	-324(0xffffebc) # 18bc <memset+0xa0>

0000000000001a04 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a04:	2800008c 	ld.b	$r12,$r4,0
    1a08:	280000ae 	ld.b	$r14,$r5,0
    1a0c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a40 <strcmp+0x3c>
    1a10:	40003980 	beqz	$r12,56(0x38) # 1a48 <strcmp+0x44>
    1a14:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a18:	50000800 	b	8(0x8) # 1a20 <strcmp+0x1c>
    1a1c:	400019a0 	beqz	$r13,24(0x18) # 1a34 <strcmp+0x30>
    1a20:	3800308d 	ldx.b	$r13,$r4,$r12
    1a24:	380030ae 	ldx.b	$r14,$r5,$r12
    1a28:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a2c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a1c <strcmp+0x18>
    1a30:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a34:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a38:	001111a4 	sub.w	$r4,$r13,$r4
    1a3c:	4c000020 	jirl	$r0,$r1,0
    1a40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a44:	53fff3ff 	b	-16(0xffffff0) # 1a34 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a48:	0015000d 	move	$r13,$r0
    1a4c:	53ffebff 	b	-24(0xfffffe8) # 1a34 <strcmp+0x30>

0000000000001a50 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a50:	400054c0 	beqz	$r6,84(0x54) # 1aa4 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a54:	2a00008d 	ld.bu	$r13,$r4,0
    1a58:	2a0000ae 	ld.bu	$r14,$r5,0
    1a5c:	40003da0 	beqz	$r13,60(0x3c) # 1a98 <strncmp+0x48>
    1a60:	40003dc0 	beqz	$r14,60(0x3c) # 1a9c <strncmp+0x4c>
    if (!n--)
    1a64:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a68:	400034c0 	beqz	$r6,52(0x34) # 1a9c <strncmp+0x4c>
    1a6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a70:	580019ae 	beq	$r13,$r14,24(0x18) # 1a88 <strncmp+0x38>
    1a74:	50002800 	b	40(0x28) # 1a9c <strncmp+0x4c>
    1a78:	400035c0 	beqz	$r14,52(0x34) # 1aac <strncmp+0x5c>
    1a7c:	580020cc 	beq	$r6,$r12,32(0x20) # 1a9c <strncmp+0x4c>
    1a80:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a84:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1aac <strncmp+0x5c>
    1a88:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a8c:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a90:	001501af 	move	$r15,$r13
    1a94:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a78 <strncmp+0x28>
    1a98:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1a9c:	001139a4 	sub.w	$r4,$r13,$r14
    1aa0:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1aa4:	00150004 	move	$r4,$r0
}
    1aa8:	4c000020 	jirl	$r0,$r1,0
    1aac:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ab0:	001139a4 	sub.w	$r4,$r13,$r14
    1ab4:	4c000020 	jirl	$r0,$r1,0

0000000000001ab8 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ab8:	03401c8c 	andi	$r12,$r4,0x7
    1abc:	4000b180 	beqz	$r12,176(0xb0) # 1b6c <strlen+0xb4>
        if (!*s)
    1ac0:	2800008c 	ld.b	$r12,$r4,0
    1ac4:	4000b180 	beqz	$r12,176(0xb0) # 1b74 <strlen+0xbc>
    1ac8:	0015008c 	move	$r12,$r4
    1acc:	50000c00 	b	12(0xc) # 1ad8 <strlen+0x20>
    1ad0:	2800018d 	ld.b	$r13,$r12,0
    1ad4:	400091a0 	beqz	$r13,144(0x90) # 1b64 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ad8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1adc:	03401d8d 	andi	$r13,$r12,0x7
    1ae0:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1ad0 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1ae4:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1ae8:	2600018f 	ldptr.d	$r15,$r12,0
    1aec:	03bbfdad 	ori	$r13,$r13,0xeff
    1af0:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1af4:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1af8:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1afc:	038201ce 	ori	$r14,$r14,0x80
    1b00:	0010b5ed 	add.d	$r13,$r15,$r13
    1b04:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b08:	0016bdad 	andn	$r13,$r13,$r15
    1b0c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b10:	0014b9ae 	and	$r14,$r13,$r14
    1b14:	440049c0 	bnez	$r14,72(0x48) # 1b5c <strlen+0xa4>
    1b18:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b1c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b20:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b24:	2600018e 	ldptr.d	$r14,$r12,0
    1b28:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b2c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b30:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b34:	0382020f 	ori	$r15,$r16,0x80
    1b38:	0010b5cd 	add.d	$r13,$r14,$r13
    1b3c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b40:	0016b9ad 	andn	$r13,$r13,$r14
    1b44:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b48:	0014bdad 	and	$r13,$r13,$r15
    1b4c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b20 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b50:	2800018d 	ld.b	$r13,$r12,0
    1b54:	400011a0 	beqz	$r13,16(0x10) # 1b64 <strlen+0xac>
    1b58:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b5c:	2800018d 	ld.b	$r13,$r12,0
    1b60:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b58 <strlen+0xa0>
        ;
    return s - a;
    1b64:	00119184 	sub.d	$r4,$r12,$r4
}
    1b68:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b6c:	0015008c 	move	$r12,$r4
    1b70:	53ff77ff 	b	-140(0xfffff74) # 1ae4 <strlen+0x2c>
        if (!*s)
    1b74:	00150004 	move	$r4,$r0
            return s - a;
    1b78:	4c000020 	jirl	$r0,$r1,0

0000000000001b7c <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b7c:	03401c8c 	andi	$r12,$r4,0x7
    1b80:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b84:	44002180 	bnez	$r12,32(0x20) # 1ba4 <memchr+0x28>
    1b88:	50002c00 	b	44(0x2c) # 1bb4 <memchr+0x38>
    1b8c:	2a00008c 	ld.bu	$r12,$r4,0
    1b90:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c88 <memchr+0x10c>
    1b94:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1b98:	03401c8c 	andi	$r12,$r4,0x7
    1b9c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ba0:	40001580 	beqz	$r12,20(0x14) # 1bb4 <memchr+0x38>
    1ba4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b8c <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1ba8:	0015000d 	move	$r13,$r0
}
    1bac:	001501a4 	move	$r4,$r13
    1bb0:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bb4:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bb8:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bac <memchr+0x30>
    1bbc:	2a00008c 	ld.bu	$r12,$r4,0
    1bc0:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c88 <memchr+0x10c>
        size_t k = ONES * c;
    1bc4:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bc8:	0384058c 	ori	$r12,$r12,0x101
    1bcc:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bd0:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bd4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bd8:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bdc:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1c98 <memchr+0x11c>
    1be0:	2600008d 	ldptr.d	$r13,$r4,0
    1be4:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1be8:	038201ce 	ori	$r14,$r14,0x80
    1bec:	0015b60d 	xor	$r13,$r16,$r13
    1bf0:	0011b1ac 	sub.d	$r12,$r13,$r12
    1bf4:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bf8:	0016b58c 	andn	$r12,$r12,$r13
    1bfc:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c00:	0014b98c 	and	$r12,$r12,$r14
    1c04:	44009580 	bnez	$r12,148(0x94) # 1c98 <memchr+0x11c>
    1c08:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c0c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c10:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c14:	50002000 	b	32(0x20) # 1c34 <memchr+0xb8>
    1c18:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c1c:	0015b20c 	xor	$r12,$r16,$r12
    1c20:	0010b98e 	add.d	$r14,$r12,$r14
    1c24:	0016b1cc 	andn	$r12,$r14,$r12
    1c28:	0014bd8c 	and	$r12,$r12,$r15
    1c2c:	44006580 	bnez	$r12,100(0x64) # 1c90 <memchr+0x114>
    1c30:	001501a4 	move	$r4,$r13
    1c34:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c38:	0382022f 	ori	$r15,$r17,0x80
    1c3c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c40:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c44:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c48:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c4c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c50:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c54:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c18 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c58:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1ba8 <memchr+0x2c>
    1c5c:	2a0001ac 	ld.bu	$r12,$r13,0
    1c60:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bac <memchr+0x30>
    1c64:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c68:	001099a6 	add.d	$r6,$r13,$r6
    1c6c:	50001000 	b	16(0x10) # 1c7c <memchr+0x100>
    1c70:	2a00018e 	ld.bu	$r14,$r12,0
    1c74:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c78:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bac <memchr+0x30>
    1c7c:	0015018d 	move	$r13,$r12
    1c80:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c70 <memchr+0xf4>
    1c84:	53ff27ff 	b	-220(0xfffff24) # 1ba8 <memchr+0x2c>
    1c88:	0015008d 	move	$r13,$r4
    1c8c:	53ffd3ff 	b	-48(0xfffffd0) # 1c5c <memchr+0xe0>
    1c90:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1c94:	53ffcfff 	b	-52(0xfffffcc) # 1c60 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c98:	0015008d 	move	$r13,$r4
    1c9c:	53ffcbff 	b	-56(0xfffffc8) # 1c64 <memchr+0xe8>

0000000000001ca0 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1ca0:	03401c8c 	andi	$r12,$r4,0x7
    1ca4:	40011980 	beqz	$r12,280(0x118) # 1dbc <strnlen+0x11c>
    1ca8:	4000f4a0 	beqz	$r5,244(0xf4) # 1d9c <strnlen+0xfc>
    1cac:	2a00008c 	ld.bu	$r12,$r4,0
    1cb0:	4000f580 	beqz	$r12,244(0xf4) # 1da4 <strnlen+0x104>
    1cb4:	001500ac 	move	$r12,$r5
    1cb8:	0015008d 	move	$r13,$r4
    1cbc:	50001000 	b	16(0x10) # 1ccc <strnlen+0x2c>
    1cc0:	4000dd80 	beqz	$r12,220(0xdc) # 1d9c <strnlen+0xfc>
    1cc4:	2a0001ae 	ld.bu	$r14,$r13,0
    1cc8:	4000e5c0 	beqz	$r14,228(0xe4) # 1dac <strnlen+0x10c>
    1ccc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cd0:	03401dae 	andi	$r14,$r13,0x7
    1cd4:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cd8:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cc0 <strnlen+0x20>
    if (n && *s != c)
    1cdc:	4000c180 	beqz	$r12,192(0xc0) # 1d9c <strnlen+0xfc>
    1ce0:	2a0001ae 	ld.bu	$r14,$r13,0
    1ce4:	4000c9c0 	beqz	$r14,200(0xc8) # 1dac <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ce8:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1cec:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dc8 <strnlen+0x128>
    1cf0:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1cf4:	260001b0 	ldptr.d	$r16,$r13,0
    1cf8:	03bbfdce 	ori	$r14,$r14,0xeff
    1cfc:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d00:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d04:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d08:	038201ef 	ori	$r15,$r15,0x80
    1d0c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d10:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d14:	0016c1ce 	andn	$r14,$r14,$r16
    1d18:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d1c:	0014bdcf 	and	$r15,$r14,$r15
    1d20:	4400a9e0 	bnez	$r15,168(0xa8) # 1dc8 <strnlen+0x128>
    1d24:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d28:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d2c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d30:	50001c00 	b	28(0x1c) # 1d4c <strnlen+0xac>
    1d34:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d38:	0010b9ee 	add.d	$r14,$r15,$r14
    1d3c:	0016bdce 	andn	$r14,$r14,$r15
    1d40:	0014c1ce 	and	$r14,$r14,$r16
    1d44:	440071c0 	bnez	$r14,112(0x70) # 1db4 <strnlen+0x114>
    1d48:	0015022d 	move	$r13,$r17
    1d4c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d50:	03820250 	ori	$r16,$r18,0x80
    1d54:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d58:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d5c:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d60:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d64:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d68:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d6c:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d34 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d70:	40002d80 	beqz	$r12,44(0x2c) # 1d9c <strnlen+0xfc>
    1d74:	2a00022d 	ld.bu	$r13,$r17,0
    1d78:	400021a0 	beqz	$r13,32(0x20) # 1d98 <strnlen+0xf8>
    1d7c:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d80:	0010b22c 	add.d	$r12,$r17,$r12
    1d84:	001501b1 	move	$r17,$r13
    1d88:	5800158d 	beq	$r12,$r13,20(0x14) # 1d9c <strnlen+0xfc>
    1d8c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d90:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1d94:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d84 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1d98:	00119225 	sub.d	$r5,$r17,$r4
}
    1d9c:	001500a4 	move	$r4,$r5
    1da0:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1da4:	001500ac 	move	$r12,$r5
    1da8:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dac:	001501b1 	move	$r17,$r13
    1db0:	53ffc7ff 	b	-60(0xfffffc4) # 1d74 <strnlen+0xd4>
    1db4:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1db8:	53ffc3ff 	b	-64(0xfffffc0) # 1d78 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dbc:	001500ac 	move	$r12,$r5
    1dc0:	0015008d 	move	$r13,$r4
    1dc4:	53ff1bff 	b	-232(0xfffff18) # 1cdc <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dc8:	001501b1 	move	$r17,$r13
    1dcc:	53ffb3ff 	b	-80(0xfffffb0) # 1d7c <strnlen+0xdc>

0000000000001dd0 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dd0:	0015948c 	xor	$r12,$r4,$r5
    1dd4:	03401d8c 	andi	$r12,$r12,0x7
    1dd8:	4400ad80 	bnez	$r12,172(0xac) # 1e84 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1ddc:	03401cac 	andi	$r12,$r5,0x7
    1de0:	40003180 	beqz	$r12,48(0x30) # 1e10 <strcpy+0x40>
            if (!(*d = *s))
    1de4:	280000ac 	ld.b	$r12,$r5,0
    1de8:	2900008c 	st.b	$r12,$r4,0
    1dec:	44001580 	bnez	$r12,20(0x14) # 1e00 <strcpy+0x30>
    1df0:	5000bc00 	b	188(0xbc) # 1eac <strcpy+0xdc>
    1df4:	280000ac 	ld.b	$r12,$r5,0
    1df8:	2900008c 	st.b	$r12,$r4,0
    1dfc:	4000a980 	beqz	$r12,168(0xa8) # 1ea4 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e00:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e04:	03401cac 	andi	$r12,$r5,0x7
    1e08:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e0c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1df4 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e10:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e14:	260000ae 	ldptr.d	$r14,$r5,0
    1e18:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e1c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e20:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e24:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e28:	038201ad 	ori	$r13,$r13,0x80
    1e2c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e30:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e34:	0016b98c 	andn	$r12,$r12,$r14
    1e38:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e3c:	0014b58c 	and	$r12,$r12,$r13
    1e40:	44004580 	bnez	$r12,68(0x44) # 1e84 <strcpy+0xb4>
    1e44:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e48:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e4c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e50:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e54:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e58:	260000ae 	ldptr.d	$r14,$r5,0
    1e5c:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e60:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e64:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e68:	038201ed 	ori	$r13,$r15,0x80
    1e6c:	0010b1cc 	add.d	$r12,$r14,$r12
    1e70:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e74:	0016b98c 	andn	$r12,$r12,$r14
    1e78:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e7c:	0014b58c 	and	$r12,$r12,$r13
    1e80:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e4c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e84:	280000ac 	ld.b	$r12,$r5,0
    1e88:	2900008c 	st.b	$r12,$r4,0
    1e8c:	40001d80 	beqz	$r12,28(0x1c) # 1ea8 <strcpy+0xd8>
    1e90:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e94:	280000ac 	ld.b	$r12,$r5,0
    1e98:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e9c:	2900008c 	st.b	$r12,$r4,0
    1ea0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e90 <strcpy+0xc0>
        ;
    return d;
}
    1ea4:	4c000020 	jirl	$r0,$r1,0
    1ea8:	4c000020 	jirl	$r0,$r1,0
    1eac:	4c000020 	jirl	$r0,$r1,0

0000000000001eb0 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1eb0:	0015948c 	xor	$r12,$r4,$r5
    1eb4:	03401d8c 	andi	$r12,$r12,0x7
    1eb8:	4400ad80 	bnez	$r12,172(0xac) # 1f64 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ebc:	03401cac 	andi	$r12,$r5,0x7
    1ec0:	44010180 	bnez	$r12,256(0x100) # 1fc0 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ec4:	400100c0 	beqz	$r6,256(0x100) # 1fc4 <strncpy+0x114>
    1ec8:	280000af 	ld.b	$r15,$r5,0
    1ecc:	400105e0 	beqz	$r15,260(0x104) # 1fd0 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ed0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ed4:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21ac <strncpy+0x2fc>
    1ed8:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1edc:	260000ae 	ldptr.d	$r14,$r5,0
    1ee0:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ee4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ee8:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1eec:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ef0:	038201ad 	ori	$r13,$r13,0x80
    1ef4:	0010b1cc 	add.d	$r12,$r14,$r12
    1ef8:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1efc:	0016b98c 	andn	$r12,$r12,$r14
    1f00:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f04:	0014b58c 	and	$r12,$r12,$r13
    1f08:	4402a580 	bnez	$r12,676(0x2a4) # 21ac <strncpy+0x2fc>
    1f0c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f10:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f14:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f18:	50001c00 	b	28(0x1c) # 1f34 <strncpy+0x84>
    1f1c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f20:	0010b1cc 	add.d	$r12,$r14,$r12
    1f24:	0016b98c 	andn	$r12,$r12,$r14
    1f28:	0014b58c 	and	$r12,$r12,$r13
    1f2c:	44024580 	bnez	$r12,580(0x244) # 2170 <strncpy+0x2c0>
    1f30:	001501e5 	move	$r5,$r15
    1f34:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f38:	0382020d 	ori	$r13,$r16,0x80
    1f3c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f40:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f44:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f48:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f4c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f50:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f54:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f58:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f5c:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f1c <strncpy+0x6c>
    1f60:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f64:	400060c0 	beqz	$r6,96(0x60) # 1fc4 <strncpy+0x114>
    1f68:	280000ac 	ld.b	$r12,$r5,0
    1f6c:	0015008d 	move	$r13,$r4
    1f70:	2900008c 	st.b	$r12,$r4,0
    1f74:	44001580 	bnez	$r12,20(0x14) # 1f88 <strncpy+0xd8>
    1f78:	50005c00 	b	92(0x5c) # 1fd4 <strncpy+0x124>
    1f7c:	280000ac 	ld.b	$r12,$r5,0
    1f80:	290001ac 	st.b	$r12,$r13,0
    1f84:	40005180 	beqz	$r12,80(0x50) # 1fd4 <strncpy+0x124>
    1f88:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f8c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f90:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1f94:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f7c <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1f98:	001501a4 	move	$r4,$r13
    1f9c:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fa0:	280000ac 	ld.b	$r12,$r5,0
    1fa4:	2900008c 	st.b	$r12,$r4,0
    1fa8:	40002980 	beqz	$r12,40(0x28) # 1fd0 <strncpy+0x120>
    1fac:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fb0:	03401cac 	andi	$r12,$r5,0x7
    1fb4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fb8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fbc:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ec4 <strncpy+0x14>
    1fc0:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fa0 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fc4:	0015008d 	move	$r13,$r4
}
    1fc8:	001501a4 	move	$r4,$r13
    1fcc:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fd0:	0015008d 	move	$r13,$r4
    1fd4:	0011b40c 	sub.d	$r12,$r0,$r13
    1fd8:	03401d8c 	andi	$r12,$r12,0x7
    1fdc:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fe0:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1fe4:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1fe8:	0013bdce 	masknez	$r14,$r14,$r15
    1fec:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1ff0:	00133e0f 	maskeqz	$r15,$r16,$r15
    1ff4:	00153dce 	or	$r14,$r14,$r15
    1ff8:	024004d0 	sltui	$r16,$r6,1(0x1)
    1ffc:	00131a31 	maskeqz	$r17,$r17,$r6
    2000:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2004:	001540d0 	or	$r16,$r6,$r16
    2008:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2180 <strncpy+0x2d0>
    200c:	40015980 	beqz	$r12,344(0x158) # 2164 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2010:	290001a0 	st.b	$r0,$r13,0
    2014:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2018:	5801458f 	beq	$r12,$r15,324(0x144) # 215c <strncpy+0x2ac>
    201c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2020:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2024:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2028:	5801658f 	beq	$r12,$r15,356(0x164) # 218c <strncpy+0x2dc>
    202c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2030:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2034:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2038:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2154 <strncpy+0x2a4>
    203c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2040:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2044:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2048:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2194 <strncpy+0x2e4>
    204c:	290011a0 	st.b	$r0,$r13,4(0x4)
    2050:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2054:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2058:	5801458f 	beq	$r12,$r15,324(0x144) # 219c <strncpy+0x2ec>
    205c:	290015a0 	st.b	$r0,$r13,5(0x5)
    2060:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2064:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2068:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21a4 <strncpy+0x2f4>
    206c:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2070:	290019a0 	st.b	$r0,$r13,6(0x6)
    2074:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2078:	0011b210 	sub.d	$r16,$r16,$r12
    207c:	00450e11 	srli.d	$r17,$r16,0x3
    2080:	0010b1ac 	add.d	$r12,$r13,$r12
    2084:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2088:	27000180 	stptr.d	$r0,$r12,0
    208c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2090:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2088 <strncpy+0x1d8>
    2094:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2098:	0014c611 	and	$r17,$r16,$r17
    209c:	0040822f 	slli.w	$r15,$r17,0x0
    20a0:	001049ef 	add.w	$r15,$r15,$r18
    20a4:	0010c5cc 	add.d	$r12,$r14,$r17
    20a8:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1f98 <strncpy+0xe8>
    20ac:	29000180 	st.b	$r0,$r12,0
    20b0:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20b4:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1f98 <strncpy+0xe8>
    20b8:	29000580 	st.b	$r0,$r12,1(0x1)
    20bc:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20c0:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1f98 <strncpy+0xe8>
    20c4:	29000980 	st.b	$r0,$r12,2(0x2)
    20c8:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20cc:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1f98 <strncpy+0xe8>
    20d0:	29000d80 	st.b	$r0,$r12,3(0x3)
    20d4:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20d8:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1f98 <strncpy+0xe8>
    20dc:	29001180 	st.b	$r0,$r12,4(0x4)
    20e0:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20e4:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1f98 <strncpy+0xe8>
    20e8:	29001580 	st.b	$r0,$r12,5(0x5)
    20ec:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20f0:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1f98 <strncpy+0xe8>
    20f4:	29001980 	st.b	$r0,$r12,6(0x6)
    20f8:	02801dee 	addi.w	$r14,$r15,7(0x7)
    20fc:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1f98 <strncpy+0xe8>
    2100:	29001d80 	st.b	$r0,$r12,7(0x7)
    2104:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2108:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1f98 <strncpy+0xe8>
    210c:	29002180 	st.b	$r0,$r12,8(0x8)
    2110:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2114:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1f98 <strncpy+0xe8>
    2118:	29002580 	st.b	$r0,$r12,9(0x9)
    211c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2120:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1f98 <strncpy+0xe8>
    2124:	29002980 	st.b	$r0,$r12,10(0xa)
    2128:	02802dee 	addi.w	$r14,$r15,11(0xb)
    212c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1f98 <strncpy+0xe8>
    2130:	29002d80 	st.b	$r0,$r12,11(0xb)
    2134:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2138:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1f98 <strncpy+0xe8>
    213c:	29003180 	st.b	$r0,$r12,12(0xc)
    2140:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2144:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1f98 <strncpy+0xe8>
    2148:	29003580 	st.b	$r0,$r12,13(0xd)
}
    214c:	001501a4 	move	$r4,$r13
    2150:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2154:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2158:	53ff23ff 	b	-224(0xfffff20) # 2078 <strncpy+0x1c8>
    215c:	02800412 	addi.w	$r18,$r0,1(0x1)
    2160:	53ff1bff 	b	-232(0xfffff18) # 2078 <strncpy+0x1c8>
    2164:	001501ae 	move	$r14,$r13
    2168:	00150012 	move	$r18,$r0
    216c:	53ff0fff 	b	-244(0xfffff0c) # 2078 <strncpy+0x1c8>
    2170:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2174:	0015008d 	move	$r13,$r4
    2178:	001501e5 	move	$r5,$r15
    217c:	53fdf7ff 	b	-524(0xffffdf4) # 1f70 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2180:	001501ac 	move	$r12,$r13
    2184:	0015000f 	move	$r15,$r0
    2188:	53ff27ff 	b	-220(0xfffff24) # 20ac <strncpy+0x1fc>
    218c:	02800812 	addi.w	$r18,$r0,2(0x2)
    2190:	53feebff 	b	-280(0xffffee8) # 2078 <strncpy+0x1c8>
    2194:	02801012 	addi.w	$r18,$r0,4(0x4)
    2198:	53fee3ff 	b	-288(0xffffee0) # 2078 <strncpy+0x1c8>
    219c:	02801412 	addi.w	$r18,$r0,5(0x5)
    21a0:	53fedbff 	b	-296(0xffffed8) # 2078 <strncpy+0x1c8>
    21a4:	02801812 	addi.w	$r18,$r0,6(0x6)
    21a8:	53fed3ff 	b	-304(0xffffed0) # 2078 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21ac:	2900008f 	st.b	$r15,$r4,0
    21b0:	0015008d 	move	$r13,$r4
    21b4:	53fdd7ff 	b	-556(0xffffdd4) # 1f88 <strncpy+0xd8>

00000000000021b8 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21b8:	0015008c 	move	$r12,$r4
    21bc:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21c0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21c4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21c8:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21cc:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21d0:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21d4:	00408084 	slli.w	$r4,$r4,0x0
}
    21d8:	4c000020 	jirl	$r0,$r1,0

00000000000021dc <openat>:
    register long a7 __asm__("a7") = n;
    21dc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21e0:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21e4:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21e8:	00408084 	slli.w	$r4,$r4,0x0
}
    21ec:	4c000020 	jirl	$r0,$r1,0

00000000000021f0 <close>:
    register long a7 __asm__("a7") = n;
    21f0:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    21f4:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    21f8:	00408084 	slli.w	$r4,$r4,0x0
}
    21fc:	4c000020 	jirl	$r0,$r1,0

0000000000002200 <read>:
    register long a7 __asm__("a7") = n;
    2200:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2204:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2208:	4c000020 	jirl	$r0,$r1,0

000000000000220c <write>:
    register long a7 __asm__("a7") = n;
    220c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2210:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2214:	4c000020 	jirl	$r0,$r1,0

0000000000002218 <getpid>:
    register long a7 __asm__("a7") = n;
    2218:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    221c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2220:	00408084 	slli.w	$r4,$r4,0x0
}
    2224:	4c000020 	jirl	$r0,$r1,0

0000000000002228 <getppid>:
    register long a7 __asm__("a7") = n;
    2228:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    222c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2230:	00408084 	slli.w	$r4,$r4,0x0
}
    2234:	4c000020 	jirl	$r0,$r1,0

0000000000002238 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2238:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    223c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2240:	00408084 	slli.w	$r4,$r4,0x0
}
    2244:	4c000020 	jirl	$r0,$r1,0

0000000000002248 <fork>:
    register long a7 __asm__("a7") = n;
    2248:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    224c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2250:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2254:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2258:	00408084 	slli.w	$r4,$r4,0x0
}
    225c:	4c000020 	jirl	$r0,$r1,0

0000000000002260 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2260:	001500c5 	move	$r5,$r6
    if (stack)
    2264:	400008c0 	beqz	$r6,8(0x8) # 226c <clone+0xc>
	stack += stack_size;
    2268:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    226c:	00408106 	slli.w	$r6,$r8,0x0
    2270:	00150009 	move	$r9,$r0
    2274:	00150008 	move	$r8,$r0
    2278:	00150007 	move	$r7,$r0
    227c:	5002c800 	b	712(0x2c8) # 2544 <__clone>

0000000000002280 <exit>:
    register long a7 __asm__("a7") = n;
    2280:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2284:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2288:	4c000020 	jirl	$r0,$r1,0

000000000000228c <waitpid>:
    register long a7 __asm__("a7") = n;
    228c:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2290:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2294:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2298:	00408084 	slli.w	$r4,$r4,0x0
}
    229c:	4c000020 	jirl	$r0,$r1,0

00000000000022a0 <exec>:
    register long a7 __asm__("a7") = n;
    22a0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22a4:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22a8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ac:	4c000020 	jirl	$r0,$r1,0

00000000000022b0 <execve>:
    register long a7 __asm__("a7") = n;
    22b0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22b4:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22b8:	00408084 	slli.w	$r4,$r4,0x0
}
    22bc:	4c000020 	jirl	$r0,$r1,0

00000000000022c0 <times>:
    register long a7 __asm__("a7") = n;
    22c0:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22c4:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <get_time>:

int64 get_time()
{
    22d0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22d4:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22d8:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22dc:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22e0:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22e4:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22e8:	44003c80 	bnez	$r4,60(0x3c) # 2324 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22ec:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22f0:	039f3c8c 	ori	$r12,$r4,0x7cf
    22f4:	28c02064 	ld.d	$r4,$r3,8(0x8)
    22f8:	2a40006d 	ld.hu	$r13,$r3,0
    22fc:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2300:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2304:	00450c84 	srli.d	$r4,$r4,0x3
    2308:	001eb084 	mulh.du	$r4,$r4,$r12
    230c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2310:	001db1ac 	mul.d	$r12,$r13,$r12
    2314:	00451084 	srli.d	$r4,$r4,0x4
    2318:	00109184 	add.d	$r4,$r12,$r4
}
    231c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2320:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2324:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2328:	53fff7ff 	b	-12(0xffffff4) # 231c <get_time+0x4c>

000000000000232c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    232c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2330:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2334:	00408084 	slli.w	$r4,$r4,0x0
}
    2338:	4c000020 	jirl	$r0,$r1,0

000000000000233c <time>:
    register long a7 __asm__("a7") = n;
    233c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2340:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2344:	00408084 	slli.w	$r4,$r4,0x0
}
    2348:	4c000020 	jirl	$r0,$r1,0

000000000000234c <sleep>:

int sleep(unsigned long long time)
{
    234c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2350:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2354:	00150064 	move	$r4,$r3
    2358:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    235c:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2360:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2364:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2368:	44001080 	bnez	$r4,16(0x10) # 2378 <sleep+0x2c>
    return 0;
    236c:	00150004 	move	$r4,$r0
}
    2370:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2374:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2378:	24000064 	ldptr.w	$r4,$r3,0
}
    237c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2380:	4c000020 	jirl	$r0,$r1,0

0000000000002384 <set_priority>:
    register long a7 __asm__("a7") = n;
    2384:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2388:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    238c:	00408084 	slli.w	$r4,$r4,0x0
}
    2390:	4c000020 	jirl	$r0,$r1,0

0000000000002394 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2394:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2398:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    239c:	4c000020 	jirl	$r0,$r1,0

00000000000023a0 <munmap>:
    register long a7 __asm__("a7") = n;
    23a0:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a4:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23a8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ac:	4c000020 	jirl	$r0,$r1,0

00000000000023b0 <wait>:

int wait(int *code)
{
    23b0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23b4:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23b8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23bc:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23c0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23c4:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23c8:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23cc:	4c000020 	jirl	$r0,$r1,0

00000000000023d0 <spawn>:
    register long a7 __asm__("a7") = n;
    23d0:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23d4:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23d8:	00408084 	slli.w	$r4,$r4,0x0
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <mailread>:
    register long a7 __asm__("a7") = n;
    23e0:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e4:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23e8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <mailwrite>:
    register long a7 __asm__("a7") = n;
    23f0:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    23f4:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    23f8:	00408084 	slli.w	$r4,$r4,0x0
}
    23fc:	4c000020 	jirl	$r0,$r1,0

0000000000002400 <fstat>:
    register long a7 __asm__("a7") = n;
    2400:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2404:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2408:	00408084 	slli.w	$r4,$r4,0x0
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2410:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2414:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2418:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    241c:	00408084 	slli.w	$r4,$r4,0x0
}
    2420:	4c000020 	jirl	$r0,$r1,0

0000000000002424 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2424:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2428:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    242c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2430:	00408084 	slli.w	$r4,$r4,0x0
}
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <link>:

int link(char *old_path, char *new_path)
{
    2438:	0015008c 	move	$r12,$r4
    243c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2440:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2444:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2448:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    244c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2450:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2454:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2458:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    245c:	4c000020 	jirl	$r0,$r1,0

0000000000002460 <unlink>:

int unlink(char *path)
{
    2460:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2464:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2468:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    246c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2470:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2474:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2478:	4c000020 	jirl	$r0,$r1,0

000000000000247c <uname>:
    register long a7 __asm__("a7") = n;
    247c:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2480:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2484:	00408084 	slli.w	$r4,$r4,0x0
}
    2488:	4c000020 	jirl	$r0,$r1,0

000000000000248c <brk>:
    register long a7 __asm__("a7") = n;
    248c:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2490:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2494:	00408084 	slli.w	$r4,$r4,0x0
}
    2498:	4c000020 	jirl	$r0,$r1,0

000000000000249c <getcwd>:
    register long a7 __asm__("a7") = n;
    249c:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24a0:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <chdir>:
    register long a7 __asm__("a7") = n;
    24a8:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24ac:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24b8:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24bc:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24c0:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24c4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24c8:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24cc:	002b0000 	syscall	0x0
    24d0:	00408084 	slli.w	$r4,$r4,0x0
}
    24d4:	4c000020 	jirl	$r0,$r1,0

00000000000024d8 <getdents>:
    register long a7 __asm__("a7") = n;
    24d8:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24dc:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24e0:	00408084 	slli.w	$r4,$r4,0x0
}
    24e4:	4c000020 	jirl	$r0,$r1,0

00000000000024e8 <pipe>:
    register long a7 __asm__("a7") = n;
    24e8:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24ec:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24f0:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    24f4:	00408084 	slli.w	$r4,$r4,0x0
}
    24f8:	4c000020 	jirl	$r0,$r1,0

00000000000024fc <dup>:
    register long a7 __asm__("a7") = n;
    24fc:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2500:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2504:	00408084 	slli.w	$r4,$r4,0x0
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <dup2>:
    register long a7 __asm__("a7") = n;
    250c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2510:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2514:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2518:	00408084 	slli.w	$r4,$r4,0x0
}
    251c:	4c000020 	jirl	$r0,$r1,0

0000000000002520 <mount>:
    register long a7 __asm__("a7") = n;
    2520:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2524:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2528:	00408084 	slli.w	$r4,$r4,0x0
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <umount>:
    register long a7 __asm__("a7") = n;
    2530:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2534:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2538:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    253c:	00408084 	slli.w	$r4,$r4,0x0
}
    2540:	4c000020 	jirl	$r0,$r1,0

0000000000002544 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2544:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2548:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    254c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2550:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2554:	00150106 	move	$r6,$r8
	move $a3, $a5
    2558:	00150127 	move	$r7,$r9
	move $a4, $a6
    255c:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2560:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2564:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2568:	40000880 	beqz	$r4,8(0x8) # 2570 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    256c:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2570:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2574:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2578:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    257c:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2580:	002b0000 	syscall	0x0
