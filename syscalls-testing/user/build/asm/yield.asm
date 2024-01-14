
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/yield:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54010000 	bl	256(0x100) # 1104 <__start_main>

0000000000001008 <test_yield>:

/*
理想结果：三个子进程交替输出
*/

int test_yield(){
    1008:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d65084 	addi.d	$r4,$r4,1428(0x594)
int test_yield(){
    1014:	29c0a061 	st.d	$r1,$r3,40(0x28)
    1018:	29c08077 	st.d	$r23,$r3,32(0x20)
    101c:	29c04079 	st.d	$r25,$r3,16(0x10)
    1020:	29c0207a 	st.d	$r26,$r3,8(0x8)
    1024:	29c06078 	st.d	$r24,$r3,24(0x18)
    TEST_START(__func__);
    1028:	5403e400 	bl	996(0x3e4) # 140c <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d79084 	addi.d	$r4,$r4,1508(0x5e4)
    1034:	5403d800 	bl	984(0x3d8) # 140c <puts>
    1038:	1c000024 	pcaddu12i	$r4,1(0x1)
    103c:	02d60084 	addi.d	$r4,$r4,1408(0x580)
    1040:	5403cc00 	bl	972(0x3cc) # 140c <puts>

    for (int i = 0; i < 3; ++i){
    1044:	00150017 	move	$r23,$r0
        if(fork() == 0){
	    for (int j = 0; j< 5; ++j){
                sched_yield();
                printf("  I am child process: %d. iteration %d.\n", getpid(), i);
    1048:	1c000039 	pcaddu12i	$r25,1(0x1)
    104c:	02d60339 	addi.d	$r25,$r25,1408(0x580)
    for (int i = 0; i < 3; ++i){
    1050:	02800c1a 	addi.w	$r26,$r0,3(0x3)
        if(fork() == 0){
    1054:	54121000 	bl	4624(0x1210) # 2264 <fork>
    1058:	40006080 	beqz	$r4,96(0x60) # 10b8 <test_yield+0xb0>
    for (int i = 0; i < 3; ++i){
    105c:	028006f7 	addi.w	$r23,$r23,1(0x1)
    1060:	5ffff6fa 	bne	$r23,$r26,-12(0x3fff4) # 1054 <test_yield+0x4c>
	    }
	    exit(0);
        }
    }
    wait(NULL);
    1064:	00150004 	move	$r4,$r0
    1068:	54136400 	bl	4964(0x1364) # 23cc <wait>
    wait(NULL);
    106c:	00150004 	move	$r4,$r0
    1070:	54135c00 	bl	4956(0x135c) # 23cc <wait>
    wait(NULL);
    1074:	00150004 	move	$r4,$r0
    1078:	54135400 	bl	4948(0x1354) # 23cc <wait>
    TEST_END(__func__);
    107c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1080:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
    1084:	54038800 	bl	904(0x388) # 140c <puts>
    1088:	1c000024 	pcaddu12i	$r4,1(0x1)
    108c:	02d62084 	addi.d	$r4,$r4,1416(0x588)
    1090:	54037c00 	bl	892(0x37c) # 140c <puts>
}
    1094:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1098:	28c08077 	ld.d	$r23,$r3,32(0x20)
    109c:	28c06078 	ld.d	$r24,$r3,24(0x18)
    10a0:	28c04079 	ld.d	$r25,$r3,16(0x10)
    10a4:	28c0207a 	ld.d	$r26,$r3,8(0x8)
    TEST_END(__func__);
    10a8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10ac:	02d44084 	addi.d	$r4,$r4,1296(0x510)
}
    10b0:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    TEST_END(__func__);
    10b4:	50035800 	b	856(0x358) # 140c <puts>
    10b8:	02801418 	addi.w	$r24,$r0,5(0x5)
                sched_yield();
    10bc:	54119800 	bl	4504(0x1198) # 2254 <sched_yield>
                printf("  I am child process: %d. iteration %d.\n", getpid(), i);
    10c0:	54117400 	bl	4468(0x1174) # 2234 <getpid>
    10c4:	00150085 	move	$r5,$r4
    10c8:	02bfff18 	addi.w	$r24,$r24,-1(0xfff)
    10cc:	001502e6 	move	$r6,$r23
    10d0:	00150324 	move	$r4,$r25
    10d4:	54037000 	bl	880(0x370) # 1444 <printf>
	    for (int j = 0; j< 5; ++j){
    10d8:	47ffe71f 	bnez	$r24,-28(0x7fffe4) # 10bc <test_yield+0xb4>
	    exit(0);
    10dc:	00150004 	move	$r4,$r0
    10e0:	5411bc00 	bl	4540(0x11bc) # 229c <exit>
    10e4:	53ff7bff 	b	-136(0xfffff78) # 105c <test_yield+0x54>

00000000000010e8 <main>:

int main(void) {
    10e8:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10ec:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_yield();
    10f0:	57ff1bff 	bl	-232(0xfffff18) # 1008 <test_yield>
    return 0;
}
    10f4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10f8:	00150004 	move	$r4,$r0
    10fc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1100:	4c000020 	jirl	$r0,$r1,0

0000000000001104 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1104:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1108:	24000084 	ldptr.w	$r4,$r4,0
{
    110c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1110:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1114:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1118:	57ffd3ff 	bl	-48(0xfffffd0) # 10e8 <main>
    111c:	54118000 	bl	4480(0x1180) # 229c <exit>
	return 0;
}
    1120:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1124:	00150004 	move	$r4,$r0
    1128:	02c04063 	addi.d	$r3,$r3,16(0x10)
    112c:	4c000020 	jirl	$r0,$r1,0

0000000000001130 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1130:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1134:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1138:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1304 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    113c:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1140:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1144:	02d3818c 	addi.d	$r12,$r12,1248(0x4e0)
    1148:	002195cf 	mod.wu	$r15,$r14,$r5
    114c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1154 <printint.constprop.0+0x24>
    1150:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1154:	002115cd 	div.wu	$r13,$r14,$r5
    1158:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1160 <printint.constprop.0+0x30>
    115c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1160:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1164:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1168:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    116c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1170:	680219c5 	bltu	$r14,$r5,536(0x218) # 1388 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1174:	002195af 	mod.wu	$r15,$r13,$r5
    1178:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1180 <printint.constprop.0+0x50>
    117c:	002a0007 	break	0x7
    1180:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1184:	002115ae 	div.wu	$r14,$r13,$r5
    1188:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1190 <printint.constprop.0+0x60>
    118c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1190:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1194:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1198:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1358 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    119c:	002195cf 	mod.wu	$r15,$r14,$r5
    11a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a8 <printint.constprop.0+0x78>
    11a4:	002a0007 	break	0x7
    11a8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11ac:	002115cd 	div.wu	$r13,$r14,$r5
    11b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b8 <printint.constprop.0+0x88>
    11b4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11bc:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11c0:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1364 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11c4:	002195af 	mod.wu	$r15,$r13,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0xa0>
    11cc:	002a0007 	break	0x7
    11d0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d4:	002115ae 	div.wu	$r14,$r13,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0xb0>
    11dc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e4:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11e8:	680189a5 	bltu	$r13,$r5,392(0x188) # 1370 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11ec:	002195cf 	mod.wu	$r15,$r14,$r5
    11f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f8 <printint.constprop.0+0xc8>
    11f4:	002a0007 	break	0x7
    11f8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11fc:	002115cd 	div.wu	$r13,$r14,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0xd8>
    1204:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1208:	38203d8f 	ldx.bu	$r15,$r12,$r15
    120c:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1210:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 137c <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1214:	002195af 	mod.wu	$r15,$r13,$r5
    1218:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1220 <printint.constprop.0+0xf0>
    121c:	002a0007 	break	0x7
    1220:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1224:	002115ae 	div.wu	$r14,$r13,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0x100>
    122c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1230:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1234:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1238:	680115a5 	bltu	$r13,$r5,276(0x114) # 134c <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    123c:	002195cf 	mod.wu	$r15,$r14,$r5
    1240:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1248 <printint.constprop.0+0x118>
    1244:	002a0007 	break	0x7
    1248:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    124c:	002115cd 	div.wu	$r13,$r14,$r5
    1250:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1258 <printint.constprop.0+0x128>
    1254:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1258:	38203d8f 	ldx.bu	$r15,$r12,$r15
    125c:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1260:	680131c5 	bltu	$r14,$r5,304(0x130) # 1390 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1264:	002195af 	mod.wu	$r15,$r13,$r5
    1268:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1270 <printint.constprop.0+0x140>
    126c:	002a0007 	break	0x7
    1270:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1274:	002115ae 	div.wu	$r14,$r13,$r5
    1278:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1280 <printint.constprop.0+0x150>
    127c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1280:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1284:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1288:	680115a5 	bltu	$r13,$r5,276(0x114) # 139c <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    128c:	002195cf 	mod.wu	$r15,$r14,$r5
    1290:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1298 <printint.constprop.0+0x168>
    1294:	002a0007 	break	0x7
    1298:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    129c:	002115cd 	div.wu	$r13,$r14,$r5
    12a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a8 <printint.constprop.0+0x178>
    12a4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12a8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12ac:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12b0:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13a8 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12b4:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12b8:	3820358d 	ldx.bu	$r13,$r12,$r13
    12bc:	02801805 	addi.w	$r5,$r0,6(0x6)
    12c0:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12c4:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12c8:	64001880 	bge	$r4,$r0,24(0x18) # 12e0 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12cc:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12d0:	0010b1ad 	add.d	$r13,$r13,$r12
    12d4:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12d8:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12dc:	00150185 	move	$r5,$r12
    write(f, s, l);
    12e0:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12e4:	02804006 	addi.w	$r6,$r0,16(0x10)
    12e8:	001114c6 	sub.w	$r6,$r6,$r5
    12ec:	02800404 	addi.w	$r4,$r0,1(0x1)
    12f0:	00109585 	add.d	$r5,$r12,$r5
    12f4:	540f3400 	bl	3892(0xf34) # 2228 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12f8:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12fc:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1300:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1304:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1308:	1c00002c 	pcaddu12i	$r12,1(0x1)
    130c:	02cc618c 	addi.d	$r12,$r12,792(0x318)
    1310:	002195cf 	mod.wu	$r15,$r14,$r5
    1314:	5c0008a0 	bne	$r5,$r0,8(0x8) # 131c <printint.constprop.0+0x1ec>
    1318:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    131c:	002115cd 	div.wu	$r13,$r14,$r5
    1320:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1328 <printint.constprop.0+0x1f8>
    1324:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1328:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    132c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1330:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1334:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1338:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1174 <printint.constprop.0+0x44>
        buf[i--] = '-';
    133c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1340:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1344:	02803805 	addi.w	$r5,$r0,14(0xe)
    1348:	53ff9bff 	b	-104(0xfffff98) # 12e0 <printint.constprop.0+0x1b0>
    134c:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1350:	02802805 	addi.w	$r5,$r0,10(0xa)
    1354:	53ff77ff 	b	-140(0xfffff74) # 12c8 <printint.constprop.0+0x198>
    1358:	0280340c 	addi.w	$r12,$r0,13(0xd)
    135c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1360:	53ff6bff 	b	-152(0xfffff68) # 12c8 <printint.constprop.0+0x198>
    1364:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1368:	02803405 	addi.w	$r5,$r0,13(0xd)
    136c:	53ff5fff 	b	-164(0xfffff5c) # 12c8 <printint.constprop.0+0x198>
    1370:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1374:	02803005 	addi.w	$r5,$r0,12(0xc)
    1378:	53ff53ff 	b	-176(0xfffff50) # 12c8 <printint.constprop.0+0x198>
    137c:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1380:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1384:	53ff47ff 	b	-188(0xfffff44) # 12c8 <printint.constprop.0+0x198>
    i = 15;
    1388:	02803c05 	addi.w	$r5,$r0,15(0xf)
    138c:	53ff57ff 	b	-172(0xfffff54) # 12e0 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1390:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1394:	02802405 	addi.w	$r5,$r0,9(0x9)
    1398:	53ff33ff 	b	-208(0xfffff30) # 12c8 <printint.constprop.0+0x198>
    139c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13a0:	02802005 	addi.w	$r5,$r0,8(0x8)
    13a4:	53ff27ff 	b	-220(0xfffff24) # 12c8 <printint.constprop.0+0x198>
    13a8:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13ac:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13b0:	53ff1bff 	b	-232(0xfffff18) # 12c8 <printint.constprop.0+0x198>

00000000000013b4 <getchar>:
{
    13b4:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13b8:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13bc:	02800406 	addi.w	$r6,$r0,1(0x1)
    13c0:	00150004 	move	$r4,$r0
{
    13c4:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13c8:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13cc:	540e5000 	bl	3664(0xe50) # 221c <read>
}
    13d0:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13d4:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13d8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13dc:	4c000020 	jirl	$r0,$r1,0

00000000000013e0 <putchar>:
{
    13e0:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13e4:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13e8:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13ec:	02800406 	addi.w	$r6,$r0,1(0x1)
    13f0:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13f4:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13f8:	540e3000 	bl	3632(0xe30) # 2228 <write>
}
    13fc:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1400:	00408084 	slli.w	$r4,$r4,0x0
}
    1404:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1408:	4c000020 	jirl	$r0,$r1,0

000000000000140c <puts>:
{
    140c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1410:	29c02061 	st.d	$r1,$r3,8(0x8)
    1414:	27000077 	stptr.d	$r23,$r3,0
    1418:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    141c:	5406b800 	bl	1720(0x6b8) # 1ad4 <strlen>
    1420:	00150086 	move	$r6,$r4
    1424:	001502e5 	move	$r5,$r23
    1428:	02800404 	addi.w	$r4,$r0,1(0x1)
    142c:	540dfc00 	bl	3580(0xdfc) # 2228 <write>
}
    1430:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1434:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1438:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    143c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1440:	4c000020 	jirl	$r0,$r1,0

0000000000001444 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1444:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1448:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    144c:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1450:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1454:	29c14079 	st.d	$r25,$r3,80(0x50)
    1458:	29c1007b 	st.d	$r27,$r3,64(0x40)
    145c:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1460:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1464:	29c18077 	st.d	$r23,$r3,96(0x60)
    1468:	29c16078 	st.d	$r24,$r3,88(0x58)
    146c:	0015009b 	move	$r27,$r4
    1470:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1474:	29c20066 	st.d	$r6,$r3,128(0x80)
    1478:	29c22067 	st.d	$r7,$r3,136(0x88)
    147c:	29c24068 	st.d	$r8,$r3,144(0x90)
    1480:	29c26069 	st.d	$r9,$r3,152(0x98)
    1484:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1488:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    148c:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1490:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1494:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1498:	1c00003c 	pcaddu12i	$r28,1(0x1)
    149c:	02c6239c 	addi.d	$r28,$r28,392(0x188)
        if (!*s)
    14a0:	2800036c 	ld.b	$r12,$r27,0
    14a4:	40008980 	beqz	$r12,136(0x88) # 152c <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14a8:	58027d99 	beq	$r12,$r25,636(0x27c) # 1724 <printf+0x2e0>
    14ac:	00150366 	move	$r6,$r27
    14b0:	50000800 	b	8(0x8) # 14b8 <printf+0x74>
    14b4:	58009d99 	beq	$r12,$r25,156(0x9c) # 1550 <printf+0x10c>
    14b8:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14bc:	280000cc 	ld.b	$r12,$r6,0
    14c0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14b4 <printf+0x70>
    14c4:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14c8:	0011ecd7 	sub.d	$r23,$r6,$r27
    14cc:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14d0:	001502e6 	move	$r6,$r23
    14d4:	00150365 	move	$r5,$r27
    14d8:	02800404 	addi.w	$r4,$r0,1(0x1)
    14dc:	540d4c00 	bl	3404(0xd4c) # 2228 <write>
        out(f, a, l);
        if (l)
    14e0:	4400b6e0 	bnez	$r23,180(0xb4) # 1594 <printf+0x150>
            continue;
        if (s[1] == 0)
    14e4:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14e8:	40004580 	beqz	$r12,68(0x44) # 152c <printf+0xe8>
            break;
        switch (s[1])
    14ec:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14f0:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15c4 <printf+0x180>
    14f4:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 159c <printf+0x158>
    14f8:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14fc:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16ec <printf+0x2a8>
    1500:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1504:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16b4 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1508:	2600006c 	ldptr.d	$r12,$r3,0
    150c:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1510:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1514:	24000184 	ldptr.w	$r4,$r12,0
    1518:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    151c:	2700006c 	stptr.d	$r12,$r3,0
    1520:	57fc13ff 	bl	-1008(0xffffc10) # 1130 <printint.constprop.0>
        if (!*s)
    1524:	2800036c 	ld.b	$r12,$r27,0
    1528:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14a8 <printf+0x64>
    }
    va_end(ap);
}
    152c:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1530:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1534:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1538:	28c14079 	ld.d	$r25,$r3,80(0x50)
    153c:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1540:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1544:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1548:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    154c:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1550:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1554:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14c4 <printf+0x80>
    1558:	001500d8 	move	$r24,$r6
    155c:	50000c00 	b	12(0xc) # 1568 <printf+0x124>
    1560:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1564:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14c8 <printf+0x84>
    1568:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    156c:	2800030c 	ld.b	$r12,$r24,0
    1570:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1574:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1560 <printf+0x11c>
        l = z - a;
    1578:	0011ecd7 	sub.d	$r23,$r6,$r27
    157c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1580:	001502e6 	move	$r6,$r23
    1584:	00150365 	move	$r5,$r27
    1588:	02800404 	addi.w	$r4,$r0,1(0x1)
    158c:	540c9c00 	bl	3228(0xc9c) # 2228 <write>
        if (l)
    1590:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14e4 <printf+0xa0>
    1594:	0015031b 	move	$r27,$r24
    1598:	53ff0bff 	b	-248(0xfffff08) # 14a0 <printf+0x5c>
        switch (s[1])
    159c:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15a0:	5c01158d 	bne	$r12,$r13,276(0x114) # 16b4 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15a4:	2600006c 	ldptr.d	$r12,$r3,0
    15a8:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15ac:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15b0:	24000184 	ldptr.w	$r4,$r12,0
    15b4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15b8:	2700006c 	stptr.d	$r12,$r3,0
    15bc:	57fb77ff 	bl	-1164(0xffffb74) # 1130 <printint.constprop.0>
        s += 2;
    15c0:	53ff67ff 	b	-156(0xfffff64) # 1524 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15c4:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15c8:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15cc:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15d0:	260001ac 	ldptr.d	$r12,$r13,0
    15d4:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15d8:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15dc:	0045f18a 	srli.d	$r10,$r12,0x3c
    15e0:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15e4:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15e8:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15ec:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15f0:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15f4:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15f8:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15fc:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1600:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1604:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1608:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    160c:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1610:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1614:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1618:	3820278a 	ldx.bu	$r10,$r28,$r9
    161c:	38202389 	ldx.bu	$r9,$r28,$r8
    1620:	38201f88 	ldx.bu	$r8,$r28,$r7
    1624:	38201787 	ldx.bu	$r7,$r28,$r5
    1628:	38201385 	ldx.bu	$r5,$r28,$r4
    162c:	38205384 	ldx.bu	$r4,$r28,$r20
    1630:	38204f94 	ldx.bu	$r20,$r28,$r19
    1634:	38204b93 	ldx.bu	$r19,$r28,$r18
    1638:	38204792 	ldx.bu	$r18,$r28,$r17
    163c:	38204391 	ldx.bu	$r17,$r28,$r16
    1640:	38203f90 	ldx.bu	$r16,$r28,$r15
    1644:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1648:	3820378e 	ldx.bu	$r14,$r28,$r13
    164c:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1650:	03403d8c 	andi	$r12,$r12,0xf
    1654:	2900286b 	st.b	$r11,$r3,10(0xa)
    1658:	29002c6a 	st.b	$r10,$r3,11(0xb)
    165c:	29003069 	st.b	$r9,$r3,12(0xc)
    1660:	29003468 	st.b	$r8,$r3,13(0xd)
    1664:	29003867 	st.b	$r7,$r3,14(0xe)
    1668:	29003c65 	st.b	$r5,$r3,15(0xf)
    166c:	29004064 	st.b	$r4,$r3,16(0x10)
    1670:	29004474 	st.b	$r20,$r3,17(0x11)
    1674:	29004873 	st.b	$r19,$r3,18(0x12)
    1678:	29004c72 	st.b	$r18,$r3,19(0x13)
    167c:	29005071 	st.b	$r17,$r3,20(0x14)
    1680:	29005470 	st.b	$r16,$r3,21(0x15)
    1684:	2900586f 	st.b	$r15,$r3,22(0x16)
    1688:	29005c6e 	st.b	$r14,$r3,23(0x17)
    168c:	3820378d 	ldx.bu	$r13,$r28,$r13
    1690:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1694:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1698:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    169c:	2900606d 	st.b	$r13,$r3,24(0x18)
    16a0:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16a4:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16a8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16ac:	540b7c00 	bl	2940(0xb7c) # 2228 <write>
        s += 2;
    16b0:	53fe77ff 	b	-396(0xffffe74) # 1524 <printf+0xe0>
    char byte = c;
    16b4:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16b8:	02800406 	addi.w	$r6,$r0,1(0x1)
    16bc:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16c4:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16c8:	540b6000 	bl	2912(0xb60) # 2228 <write>
    char byte = c;
    16cc:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16d0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16d4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16d8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16dc:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16e0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16e4:	540b4400 	bl	2884(0xb44) # 2228 <write>
        s += 2;
    16e8:	53fe3fff 	b	-452(0xffffe3c) # 1524 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16ec:	2600006c 	ldptr.d	$r12,$r3,0
    16f0:	26000197 	ldptr.d	$r23,$r12,0
    16f4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16f8:	2700006c 	stptr.d	$r12,$r3,0
    16fc:	40004ee0 	beqz	$r23,76(0x4c) # 1748 <printf+0x304>
            l = strnlen(a, 200);
    1700:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1704:	001502e4 	move	$r4,$r23
    1708:	5405b400 	bl	1460(0x5b4) # 1cbc <strnlen>
    170c:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1710:	001502e5 	move	$r5,$r23
    1714:	02800404 	addi.w	$r4,$r0,1(0x1)
    1718:	540b1000 	bl	2832(0xb10) # 2228 <write>
        s += 2;
    171c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1720:	53fe07ff 	b	-508(0xffffe04) # 1524 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1724:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1728:	00150366 	move	$r6,$r27
    172c:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1558 <printf+0x114>
    write(f, s, l);
    1730:	00150006 	move	$r6,$r0
    1734:	00150365 	move	$r5,$r27
    1738:	02800404 	addi.w	$r4,$r0,1(0x1)
    173c:	540aec00 	bl	2796(0xaec) # 2228 <write>
    1740:	00150378 	move	$r24,$r27
    1744:	53fda3ff 	b	-608(0xffffda0) # 14e4 <printf+0xa0>
                a = "(null)";
    1748:	1c000037 	pcaddu12i	$r23,1(0x1)
    174c:	02fb02f7 	addi.d	$r23,$r23,-320(0xec0)
    1750:	53ffb3ff 	b	-80(0xfffffb0) # 1700 <printf+0x2bc>

0000000000001754 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1754:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1758:	5800108c 	beq	$r4,$r12,16(0x10) # 1768 <isspace+0x14>
    175c:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1760:	02401484 	sltui	$r4,$r4,5(0x5)
    1764:	4c000020 	jirl	$r0,$r1,0
    1768:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    176c:	4c000020 	jirl	$r0,$r1,0

0000000000001770 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1770:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1774:	02402884 	sltui	$r4,$r4,10(0xa)
    1778:	4c000020 	jirl	$r0,$r1,0

000000000000177c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    177c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1780:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1784:	2800008d 	ld.b	$r13,$r4,0
    1788:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    178c:	580061ae 	beq	$r13,$r14,96(0x60) # 17ec <atoi+0x70>
    1790:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17ec <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1794:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1798:	580065ac 	beq	$r13,$r12,100(0x64) # 17fc <atoi+0x80>
    179c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17a0:	58007dac 	beq	$r13,$r12,124(0x7c) # 181c <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17a4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17a8:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17ac:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17b0:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17b4:	680061cf 	bltu	$r14,$r15,96(0x60) # 1814 <atoi+0x98>
    int n = 0, neg = 0;
    17b8:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17bc:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17c0:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17c4:	001c126f 	mul.w	$r15,$r19,$r4
    17c8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17cc:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17d0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17d4:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17d8:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17dc:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17e0:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17c4 <atoi+0x48>
    return neg ? n : -n;
    17e4:	40001280 	beqz	$r20,16(0x10) # 17f4 <atoi+0x78>
}
    17e8:	4c000020 	jirl	$r0,$r1,0
        s++;
    17ec:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17f0:	53ff97ff 	b	-108(0xfffff94) # 1784 <atoi+0x8>
    17f4:	00113e04 	sub.w	$r4,$r16,$r15
    17f8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17fc:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1800:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1804:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1808:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    180c:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1810:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17b8 <atoi+0x3c>
    1814:	00150004 	move	$r4,$r0
}
    1818:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    181c:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1820:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1824:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1828:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    182c:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1814 <atoi+0x98>
        neg = 1;
    1830:	02800414 	addi.w	$r20,$r0,1(0x1)
    1834:	53ff87ff 	b	-124(0xfffff84) # 17b8 <atoi+0x3c>

0000000000001838 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1838:	400198c0 	beqz	$r6,408(0x198) # 19d0 <memset+0x198>
    183c:	0011900c 	sub.d	$r12,$r0,$r4
    1840:	03401d8c 	andi	$r12,$r12,0x7
    1844:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1848:	02402dae 	sltui	$r14,$r13,11(0xb)
    184c:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1850:	0013b9ad 	masknez	$r13,$r13,$r14
    1854:	001339ee 	maskeqz	$r14,$r15,$r14
    1858:	001539ad 	or	$r13,$r13,$r14
    185c:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1860:	00005ca5 	ext.w.b	$r5,$r5
    1864:	680191ed 	bltu	$r15,$r13,400(0x190) # 19f4 <memset+0x1bc>
    1868:	40018180 	beqz	$r12,384(0x180) # 19e8 <memset+0x1b0>
    186c:	29000085 	st.b	$r5,$r4,0
    1870:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1874:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1878:	5801698d 	beq	$r12,$r13,360(0x168) # 19e0 <memset+0x1a8>
    187c:	29000485 	st.b	$r5,$r4,1(0x1)
    1880:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1884:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1888:	5801798d 	beq	$r12,$r13,376(0x178) # 1a00 <memset+0x1c8>
    188c:	29000885 	st.b	$r5,$r4,2(0x2)
    1890:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1894:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1898:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19d4 <memset+0x19c>
    189c:	29000c85 	st.b	$r5,$r4,3(0x3)
    18a0:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18a4:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18a8:	5801618d 	beq	$r12,$r13,352(0x160) # 1a08 <memset+0x1d0>
    18ac:	29001085 	st.b	$r5,$r4,4(0x4)
    18b0:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18b4:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18b8:	5801598d 	beq	$r12,$r13,344(0x158) # 1a10 <memset+0x1d8>
    18bc:	29001485 	st.b	$r5,$r4,5(0x5)
    18c0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18c4:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18c8:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a18 <memset+0x1e0>
    18cc:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18d0:	29001885 	st.b	$r5,$r4,6(0x6)
    18d4:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18d8:	0015000d 	move	$r13,$r0
    18dc:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18e0:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18e4:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18e8:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18ec:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18f0:	0011b0d0 	sub.d	$r16,$r6,$r12
    18f4:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18f8:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18fc:	0010b08c 	add.d	$r12,$r4,$r12
    1900:	00450e0f 	srli.d	$r15,$r16,0x3
    1904:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1908:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    190c:	2700018d 	stptr.d	$r13,$r12,0
    1910:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1914:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 190c <memset+0xd4>
    1918:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    191c:	0014be0f 	and	$r15,$r16,$r15
    1920:	004081ed 	slli.w	$r13,$r15,0x0
    1924:	0010bdcc 	add.d	$r12,$r14,$r15
    1928:	001045ad 	add.w	$r13,$r13,$r17
    192c:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19dc <memset+0x1a4>
    1930:	29000185 	st.b	$r5,$r12,0
    1934:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1938:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19d0 <memset+0x198>
    193c:	29000585 	st.b	$r5,$r12,1(0x1)
    1940:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1944:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19d0 <memset+0x198>
    1948:	29000985 	st.b	$r5,$r12,2(0x2)
    194c:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1950:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19d0 <memset+0x198>
    1954:	29000d85 	st.b	$r5,$r12,3(0x3)
    1958:	028011ae 	addi.w	$r14,$r13,4(0x4)
    195c:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19d0 <memset+0x198>
    1960:	29001185 	st.b	$r5,$r12,4(0x4)
    1964:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1968:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19d0 <memset+0x198>
    196c:	29001585 	st.b	$r5,$r12,5(0x5)
    1970:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1974:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19d0 <memset+0x198>
    1978:	29001985 	st.b	$r5,$r12,6(0x6)
    197c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1980:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19d0 <memset+0x198>
    1984:	29001d85 	st.b	$r5,$r12,7(0x7)
    1988:	028021ae 	addi.w	$r14,$r13,8(0x8)
    198c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19d0 <memset+0x198>
    1990:	29002185 	st.b	$r5,$r12,8(0x8)
    1994:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1998:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19d0 <memset+0x198>
    199c:	29002585 	st.b	$r5,$r12,9(0x9)
    19a0:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19a4:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19d0 <memset+0x198>
    19a8:	29002985 	st.b	$r5,$r12,10(0xa)
    19ac:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19b0:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19d0 <memset+0x198>
    19b4:	29002d85 	st.b	$r5,$r12,11(0xb)
    19b8:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19bc:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19d0 <memset+0x198>
    19c0:	29003185 	st.b	$r5,$r12,12(0xc)
    19c4:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19c8:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19d0 <memset+0x198>
    19cc:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19d0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19d4:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19d8:	53ff03ff 	b	-256(0xfffff00) # 18d8 <memset+0xa0>
    19dc:	4c000020 	jirl	$r0,$r1,0
    19e0:	02800411 	addi.w	$r17,$r0,1(0x1)
    19e4:	53fef7ff 	b	-268(0xffffef4) # 18d8 <memset+0xa0>
    19e8:	0015008e 	move	$r14,$r4
    19ec:	00150011 	move	$r17,$r0
    19f0:	53feebff 	b	-280(0xffffee8) # 18d8 <memset+0xa0>
    19f4:	0015008c 	move	$r12,$r4
    19f8:	0015000d 	move	$r13,$r0
    19fc:	53ff37ff 	b	-204(0xfffff34) # 1930 <memset+0xf8>
    1a00:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a04:	53fed7ff 	b	-300(0xffffed4) # 18d8 <memset+0xa0>
    1a08:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a0c:	53fecfff 	b	-308(0xffffecc) # 18d8 <memset+0xa0>
    1a10:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a14:	53fec7ff 	b	-316(0xffffec4) # 18d8 <memset+0xa0>
    1a18:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a1c:	53febfff 	b	-324(0xffffebc) # 18d8 <memset+0xa0>

0000000000001a20 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a20:	2800008c 	ld.b	$r12,$r4,0
    1a24:	280000ae 	ld.b	$r14,$r5,0
    1a28:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a5c <strcmp+0x3c>
    1a2c:	40003980 	beqz	$r12,56(0x38) # 1a64 <strcmp+0x44>
    1a30:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a34:	50000800 	b	8(0x8) # 1a3c <strcmp+0x1c>
    1a38:	400019a0 	beqz	$r13,24(0x18) # 1a50 <strcmp+0x30>
    1a3c:	3800308d 	ldx.b	$r13,$r4,$r12
    1a40:	380030ae 	ldx.b	$r14,$r5,$r12
    1a44:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a48:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a38 <strcmp+0x18>
    1a4c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a50:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a54:	001111a4 	sub.w	$r4,$r13,$r4
    1a58:	4c000020 	jirl	$r0,$r1,0
    1a5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a60:	53fff3ff 	b	-16(0xffffff0) # 1a50 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a64:	0015000d 	move	$r13,$r0
    1a68:	53ffebff 	b	-24(0xfffffe8) # 1a50 <strcmp+0x30>

0000000000001a6c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a6c:	400054c0 	beqz	$r6,84(0x54) # 1ac0 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a70:	2a00008d 	ld.bu	$r13,$r4,0
    1a74:	2a0000ae 	ld.bu	$r14,$r5,0
    1a78:	40003da0 	beqz	$r13,60(0x3c) # 1ab4 <strncmp+0x48>
    1a7c:	40003dc0 	beqz	$r14,60(0x3c) # 1ab8 <strncmp+0x4c>
    if (!n--)
    1a80:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a84:	400034c0 	beqz	$r6,52(0x34) # 1ab8 <strncmp+0x4c>
    1a88:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a8c:	580019ae 	beq	$r13,$r14,24(0x18) # 1aa4 <strncmp+0x38>
    1a90:	50002800 	b	40(0x28) # 1ab8 <strncmp+0x4c>
    1a94:	400035c0 	beqz	$r14,52(0x34) # 1ac8 <strncmp+0x5c>
    1a98:	580020cc 	beq	$r6,$r12,32(0x20) # 1ab8 <strncmp+0x4c>
    1a9c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1aa0:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ac8 <strncmp+0x5c>
    1aa4:	3820308d 	ldx.bu	$r13,$r4,$r12
    1aa8:	382030ae 	ldx.bu	$r14,$r5,$r12
    1aac:	001501af 	move	$r15,$r13
    1ab0:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a94 <strncmp+0x28>
    1ab4:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1ab8:	001139a4 	sub.w	$r4,$r13,$r14
    1abc:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ac0:	00150004 	move	$r4,$r0
}
    1ac4:	4c000020 	jirl	$r0,$r1,0
    1ac8:	001501ed 	move	$r13,$r15
    return *l - *r;
    1acc:	001139a4 	sub.w	$r4,$r13,$r14
    1ad0:	4c000020 	jirl	$r0,$r1,0

0000000000001ad4 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ad4:	03401c8c 	andi	$r12,$r4,0x7
    1ad8:	4000b180 	beqz	$r12,176(0xb0) # 1b88 <strlen+0xb4>
        if (!*s)
    1adc:	2800008c 	ld.b	$r12,$r4,0
    1ae0:	4000b180 	beqz	$r12,176(0xb0) # 1b90 <strlen+0xbc>
    1ae4:	0015008c 	move	$r12,$r4
    1ae8:	50000c00 	b	12(0xc) # 1af4 <strlen+0x20>
    1aec:	2800018d 	ld.b	$r13,$r12,0
    1af0:	400091a0 	beqz	$r13,144(0x90) # 1b80 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1af4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1af8:	03401d8d 	andi	$r13,$r12,0x7
    1afc:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1aec <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b00:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b04:	2600018f 	ldptr.d	$r15,$r12,0
    1b08:	03bbfdad 	ori	$r13,$r13,0xeff
    1b0c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b10:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b14:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b18:	038201ce 	ori	$r14,$r14,0x80
    1b1c:	0010b5ed 	add.d	$r13,$r15,$r13
    1b20:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b24:	0016bdad 	andn	$r13,$r13,$r15
    1b28:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b2c:	0014b9ae 	and	$r14,$r13,$r14
    1b30:	440049c0 	bnez	$r14,72(0x48) # 1b78 <strlen+0xa4>
    1b34:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b38:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b3c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b40:	2600018e 	ldptr.d	$r14,$r12,0
    1b44:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b48:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b4c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b50:	0382020f 	ori	$r15,$r16,0x80
    1b54:	0010b5cd 	add.d	$r13,$r14,$r13
    1b58:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b5c:	0016b9ad 	andn	$r13,$r13,$r14
    1b60:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b64:	0014bdad 	and	$r13,$r13,$r15
    1b68:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b3c <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b6c:	2800018d 	ld.b	$r13,$r12,0
    1b70:	400011a0 	beqz	$r13,16(0x10) # 1b80 <strlen+0xac>
    1b74:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b78:	2800018d 	ld.b	$r13,$r12,0
    1b7c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b74 <strlen+0xa0>
        ;
    return s - a;
    1b80:	00119184 	sub.d	$r4,$r12,$r4
}
    1b84:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b88:	0015008c 	move	$r12,$r4
    1b8c:	53ff77ff 	b	-140(0xfffff74) # 1b00 <strlen+0x2c>
        if (!*s)
    1b90:	00150004 	move	$r4,$r0
            return s - a;
    1b94:	4c000020 	jirl	$r0,$r1,0

0000000000001b98 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b98:	03401c8c 	andi	$r12,$r4,0x7
    1b9c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1ba0:	44002180 	bnez	$r12,32(0x20) # 1bc0 <memchr+0x28>
    1ba4:	50002c00 	b	44(0x2c) # 1bd0 <memchr+0x38>
    1ba8:	2a00008c 	ld.bu	$r12,$r4,0
    1bac:	5800f985 	beq	$r12,$r5,248(0xf8) # 1ca4 <memchr+0x10c>
    1bb0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bb4:	03401c8c 	andi	$r12,$r4,0x7
    1bb8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bbc:	40001580 	beqz	$r12,20(0x14) # 1bd0 <memchr+0x38>
    1bc0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1ba8 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bc4:	0015000d 	move	$r13,$r0
}
    1bc8:	001501a4 	move	$r4,$r13
    1bcc:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bd0:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bd4:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bc8 <memchr+0x30>
    1bd8:	2a00008c 	ld.bu	$r12,$r4,0
    1bdc:	5800c985 	beq	$r12,$r5,200(0xc8) # 1ca4 <memchr+0x10c>
        size_t k = ONES * c;
    1be0:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1be4:	0384058c 	ori	$r12,$r12,0x101
    1be8:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bec:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bf0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1bf4:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1bf8:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cb4 <memchr+0x11c>
    1bfc:	2600008d 	ldptr.d	$r13,$r4,0
    1c00:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c04:	038201ce 	ori	$r14,$r14,0x80
    1c08:	0015b60d 	xor	$r13,$r16,$r13
    1c0c:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c10:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c14:	0016b58c 	andn	$r12,$r12,$r13
    1c18:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c1c:	0014b98c 	and	$r12,$r12,$r14
    1c20:	44009580 	bnez	$r12,148(0x94) # 1cb4 <memchr+0x11c>
    1c24:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c28:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c2c:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c30:	50002000 	b	32(0x20) # 1c50 <memchr+0xb8>
    1c34:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c38:	0015b20c 	xor	$r12,$r16,$r12
    1c3c:	0010b98e 	add.d	$r14,$r12,$r14
    1c40:	0016b1cc 	andn	$r12,$r14,$r12
    1c44:	0014bd8c 	and	$r12,$r12,$r15
    1c48:	44006580 	bnez	$r12,100(0x64) # 1cac <memchr+0x114>
    1c4c:	001501a4 	move	$r4,$r13
    1c50:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c54:	0382022f 	ori	$r15,$r17,0x80
    1c58:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c5c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c60:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c64:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c68:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c6c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c70:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c34 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c74:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bc4 <memchr+0x2c>
    1c78:	2a0001ac 	ld.bu	$r12,$r13,0
    1c7c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bc8 <memchr+0x30>
    1c80:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c84:	001099a6 	add.d	$r6,$r13,$r6
    1c88:	50001000 	b	16(0x10) # 1c98 <memchr+0x100>
    1c8c:	2a00018e 	ld.bu	$r14,$r12,0
    1c90:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c94:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bc8 <memchr+0x30>
    1c98:	0015018d 	move	$r13,$r12
    1c9c:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c8c <memchr+0xf4>
    1ca0:	53ff27ff 	b	-220(0xfffff24) # 1bc4 <memchr+0x2c>
    1ca4:	0015008d 	move	$r13,$r4
    1ca8:	53ffd3ff 	b	-48(0xfffffd0) # 1c78 <memchr+0xe0>
    1cac:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cb0:	53ffcfff 	b	-52(0xfffffcc) # 1c7c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cb4:	0015008d 	move	$r13,$r4
    1cb8:	53ffcbff 	b	-56(0xfffffc8) # 1c80 <memchr+0xe8>

0000000000001cbc <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cbc:	03401c8c 	andi	$r12,$r4,0x7
    1cc0:	40011980 	beqz	$r12,280(0x118) # 1dd8 <strnlen+0x11c>
    1cc4:	4000f4a0 	beqz	$r5,244(0xf4) # 1db8 <strnlen+0xfc>
    1cc8:	2a00008c 	ld.bu	$r12,$r4,0
    1ccc:	4000f580 	beqz	$r12,244(0xf4) # 1dc0 <strnlen+0x104>
    1cd0:	001500ac 	move	$r12,$r5
    1cd4:	0015008d 	move	$r13,$r4
    1cd8:	50001000 	b	16(0x10) # 1ce8 <strnlen+0x2c>
    1cdc:	4000dd80 	beqz	$r12,220(0xdc) # 1db8 <strnlen+0xfc>
    1ce0:	2a0001ae 	ld.bu	$r14,$r13,0
    1ce4:	4000e5c0 	beqz	$r14,228(0xe4) # 1dc8 <strnlen+0x10c>
    1ce8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cec:	03401dae 	andi	$r14,$r13,0x7
    1cf0:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1cf4:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cdc <strnlen+0x20>
    if (n && *s != c)
    1cf8:	4000c180 	beqz	$r12,192(0xc0) # 1db8 <strnlen+0xfc>
    1cfc:	2a0001ae 	ld.bu	$r14,$r13,0
    1d00:	4000c9c0 	beqz	$r14,200(0xc8) # 1dc8 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d04:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d08:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1de4 <strnlen+0x128>
    1d0c:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d10:	260001b0 	ldptr.d	$r16,$r13,0
    1d14:	03bbfdce 	ori	$r14,$r14,0xeff
    1d18:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d1c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d20:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d24:	038201ef 	ori	$r15,$r15,0x80
    1d28:	0010ba0e 	add.d	$r14,$r16,$r14
    1d2c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d30:	0016c1ce 	andn	$r14,$r14,$r16
    1d34:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d38:	0014bdcf 	and	$r15,$r14,$r15
    1d3c:	4400a9e0 	bnez	$r15,168(0xa8) # 1de4 <strnlen+0x128>
    1d40:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d44:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d48:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d4c:	50001c00 	b	28(0x1c) # 1d68 <strnlen+0xac>
    1d50:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d54:	0010b9ee 	add.d	$r14,$r15,$r14
    1d58:	0016bdce 	andn	$r14,$r14,$r15
    1d5c:	0014c1ce 	and	$r14,$r14,$r16
    1d60:	440071c0 	bnez	$r14,112(0x70) # 1dd0 <strnlen+0x114>
    1d64:	0015022d 	move	$r13,$r17
    1d68:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d6c:	03820250 	ori	$r16,$r18,0x80
    1d70:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d74:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d78:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d7c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d80:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d84:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d88:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d50 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d8c:	40002d80 	beqz	$r12,44(0x2c) # 1db8 <strnlen+0xfc>
    1d90:	2a00022d 	ld.bu	$r13,$r17,0
    1d94:	400021a0 	beqz	$r13,32(0x20) # 1db4 <strnlen+0xf8>
    1d98:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d9c:	0010b22c 	add.d	$r12,$r17,$r12
    1da0:	001501b1 	move	$r17,$r13
    1da4:	5800158d 	beq	$r12,$r13,20(0x14) # 1db8 <strnlen+0xfc>
    1da8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dac:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1db0:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1da0 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1db4:	00119225 	sub.d	$r5,$r17,$r4
}
    1db8:	001500a4 	move	$r4,$r5
    1dbc:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dc0:	001500ac 	move	$r12,$r5
    1dc4:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1dc8:	001501b1 	move	$r17,$r13
    1dcc:	53ffc7ff 	b	-60(0xfffffc4) # 1d90 <strnlen+0xd4>
    1dd0:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dd4:	53ffc3ff 	b	-64(0xfffffc0) # 1d94 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dd8:	001500ac 	move	$r12,$r5
    1ddc:	0015008d 	move	$r13,$r4
    1de0:	53ff1bff 	b	-232(0xfffff18) # 1cf8 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1de4:	001501b1 	move	$r17,$r13
    1de8:	53ffb3ff 	b	-80(0xfffffb0) # 1d98 <strnlen+0xdc>

0000000000001dec <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1dec:	0015948c 	xor	$r12,$r4,$r5
    1df0:	03401d8c 	andi	$r12,$r12,0x7
    1df4:	4400ad80 	bnez	$r12,172(0xac) # 1ea0 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1df8:	03401cac 	andi	$r12,$r5,0x7
    1dfc:	40003180 	beqz	$r12,48(0x30) # 1e2c <strcpy+0x40>
            if (!(*d = *s))
    1e00:	280000ac 	ld.b	$r12,$r5,0
    1e04:	2900008c 	st.b	$r12,$r4,0
    1e08:	44001580 	bnez	$r12,20(0x14) # 1e1c <strcpy+0x30>
    1e0c:	5000bc00 	b	188(0xbc) # 1ec8 <strcpy+0xdc>
    1e10:	280000ac 	ld.b	$r12,$r5,0
    1e14:	2900008c 	st.b	$r12,$r4,0
    1e18:	4000a980 	beqz	$r12,168(0xa8) # 1ec0 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e1c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e20:	03401cac 	andi	$r12,$r5,0x7
    1e24:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e28:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e10 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e2c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e30:	260000ae 	ldptr.d	$r14,$r5,0
    1e34:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e38:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e3c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e40:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e44:	038201ad 	ori	$r13,$r13,0x80
    1e48:	0010b1cc 	add.d	$r12,$r14,$r12
    1e4c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e50:	0016b98c 	andn	$r12,$r12,$r14
    1e54:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e58:	0014b58c 	and	$r12,$r12,$r13
    1e5c:	44004580 	bnez	$r12,68(0x44) # 1ea0 <strcpy+0xb4>
    1e60:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e64:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e68:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e6c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e70:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e74:	260000ae 	ldptr.d	$r14,$r5,0
    1e78:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e7c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e80:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e84:	038201ed 	ori	$r13,$r15,0x80
    1e88:	0010b1cc 	add.d	$r12,$r14,$r12
    1e8c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e90:	0016b98c 	andn	$r12,$r12,$r14
    1e94:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e98:	0014b58c 	and	$r12,$r12,$r13
    1e9c:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e68 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ea0:	280000ac 	ld.b	$r12,$r5,0
    1ea4:	2900008c 	st.b	$r12,$r4,0
    1ea8:	40001d80 	beqz	$r12,28(0x1c) # 1ec4 <strcpy+0xd8>
    1eac:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1eb0:	280000ac 	ld.b	$r12,$r5,0
    1eb4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1eb8:	2900008c 	st.b	$r12,$r4,0
    1ebc:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1eac <strcpy+0xc0>
        ;
    return d;
}
    1ec0:	4c000020 	jirl	$r0,$r1,0
    1ec4:	4c000020 	jirl	$r0,$r1,0
    1ec8:	4c000020 	jirl	$r0,$r1,0

0000000000001ecc <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ecc:	0015948c 	xor	$r12,$r4,$r5
    1ed0:	03401d8c 	andi	$r12,$r12,0x7
    1ed4:	4400ad80 	bnez	$r12,172(0xac) # 1f80 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ed8:	03401cac 	andi	$r12,$r5,0x7
    1edc:	44010180 	bnez	$r12,256(0x100) # 1fdc <strncpy+0x110>
            ;
        if (!n || !*s)
    1ee0:	400100c0 	beqz	$r6,256(0x100) # 1fe0 <strncpy+0x114>
    1ee4:	280000af 	ld.b	$r15,$r5,0
    1ee8:	400105e0 	beqz	$r15,260(0x104) # 1fec <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1eec:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ef0:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21c8 <strncpy+0x2fc>
    1ef4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ef8:	260000ae 	ldptr.d	$r14,$r5,0
    1efc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f00:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f04:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f08:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f0c:	038201ad 	ori	$r13,$r13,0x80
    1f10:	0010b1cc 	add.d	$r12,$r14,$r12
    1f14:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f18:	0016b98c 	andn	$r12,$r12,$r14
    1f1c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f20:	0014b58c 	and	$r12,$r12,$r13
    1f24:	4402a580 	bnez	$r12,676(0x2a4) # 21c8 <strncpy+0x2fc>
    1f28:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f2c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f30:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f34:	50001c00 	b	28(0x1c) # 1f50 <strncpy+0x84>
    1f38:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f3c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f40:	0016b98c 	andn	$r12,$r12,$r14
    1f44:	0014b58c 	and	$r12,$r12,$r13
    1f48:	44024580 	bnez	$r12,580(0x244) # 218c <strncpy+0x2c0>
    1f4c:	001501e5 	move	$r5,$r15
    1f50:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f54:	0382020d 	ori	$r13,$r16,0x80
    1f58:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f5c:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f60:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f64:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f68:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f6c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f70:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f74:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f78:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f38 <strncpy+0x6c>
    1f7c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f80:	400060c0 	beqz	$r6,96(0x60) # 1fe0 <strncpy+0x114>
    1f84:	280000ac 	ld.b	$r12,$r5,0
    1f88:	0015008d 	move	$r13,$r4
    1f8c:	2900008c 	st.b	$r12,$r4,0
    1f90:	44001580 	bnez	$r12,20(0x14) # 1fa4 <strncpy+0xd8>
    1f94:	50005c00 	b	92(0x5c) # 1ff0 <strncpy+0x124>
    1f98:	280000ac 	ld.b	$r12,$r5,0
    1f9c:	290001ac 	st.b	$r12,$r13,0
    1fa0:	40005180 	beqz	$r12,80(0x50) # 1ff0 <strncpy+0x124>
    1fa4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fa8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fac:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fb0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f98 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fb4:	001501a4 	move	$r4,$r13
    1fb8:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fbc:	280000ac 	ld.b	$r12,$r5,0
    1fc0:	2900008c 	st.b	$r12,$r4,0
    1fc4:	40002980 	beqz	$r12,40(0x28) # 1fec <strncpy+0x120>
    1fc8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fcc:	03401cac 	andi	$r12,$r5,0x7
    1fd0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fd4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fd8:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ee0 <strncpy+0x14>
    1fdc:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fbc <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fe0:	0015008d 	move	$r13,$r4
}
    1fe4:	001501a4 	move	$r4,$r13
    1fe8:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fec:	0015008d 	move	$r13,$r4
    1ff0:	0011b40c 	sub.d	$r12,$r0,$r13
    1ff4:	03401d8c 	andi	$r12,$r12,0x7
    1ff8:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1ffc:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2000:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2004:	0013bdce 	masknez	$r14,$r14,$r15
    2008:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    200c:	00133e0f 	maskeqz	$r15,$r16,$r15
    2010:	00153dce 	or	$r14,$r14,$r15
    2014:	024004d0 	sltui	$r16,$r6,1(0x1)
    2018:	00131a31 	maskeqz	$r17,$r17,$r6
    201c:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2020:	001540d0 	or	$r16,$r6,$r16
    2024:	68017a2e 	bltu	$r17,$r14,376(0x178) # 219c <strncpy+0x2d0>
    2028:	40015980 	beqz	$r12,344(0x158) # 2180 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    202c:	290001a0 	st.b	$r0,$r13,0
    2030:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2034:	5801458f 	beq	$r12,$r15,324(0x144) # 2178 <strncpy+0x2ac>
    2038:	290005a0 	st.b	$r0,$r13,1(0x1)
    203c:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2040:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2044:	5801658f 	beq	$r12,$r15,356(0x164) # 21a8 <strncpy+0x2dc>
    2048:	290009a0 	st.b	$r0,$r13,2(0x2)
    204c:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2050:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2054:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2170 <strncpy+0x2a4>
    2058:	29000da0 	st.b	$r0,$r13,3(0x3)
    205c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2060:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2064:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21b0 <strncpy+0x2e4>
    2068:	290011a0 	st.b	$r0,$r13,4(0x4)
    206c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2070:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2074:	5801458f 	beq	$r12,$r15,324(0x144) # 21b8 <strncpy+0x2ec>
    2078:	290015a0 	st.b	$r0,$r13,5(0x5)
    207c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2080:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2084:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21c0 <strncpy+0x2f4>
    2088:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    208c:	290019a0 	st.b	$r0,$r13,6(0x6)
    2090:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2094:	0011b210 	sub.d	$r16,$r16,$r12
    2098:	00450e11 	srli.d	$r17,$r16,0x3
    209c:	0010b1ac 	add.d	$r12,$r13,$r12
    20a0:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20a4:	27000180 	stptr.d	$r0,$r12,0
    20a8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20ac:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20a4 <strncpy+0x1d8>
    20b0:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20b4:	0014c611 	and	$r17,$r16,$r17
    20b8:	0040822f 	slli.w	$r15,$r17,0x0
    20bc:	001049ef 	add.w	$r15,$r15,$r18
    20c0:	0010c5cc 	add.d	$r12,$r14,$r17
    20c4:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fb4 <strncpy+0xe8>
    20c8:	29000180 	st.b	$r0,$r12,0
    20cc:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20d0:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fb4 <strncpy+0xe8>
    20d4:	29000580 	st.b	$r0,$r12,1(0x1)
    20d8:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20dc:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fb4 <strncpy+0xe8>
    20e0:	29000980 	st.b	$r0,$r12,2(0x2)
    20e4:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20e8:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fb4 <strncpy+0xe8>
    20ec:	29000d80 	st.b	$r0,$r12,3(0x3)
    20f0:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20f4:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fb4 <strncpy+0xe8>
    20f8:	29001180 	st.b	$r0,$r12,4(0x4)
    20fc:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2100:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fb4 <strncpy+0xe8>
    2104:	29001580 	st.b	$r0,$r12,5(0x5)
    2108:	028019ee 	addi.w	$r14,$r15,6(0x6)
    210c:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fb4 <strncpy+0xe8>
    2110:	29001980 	st.b	$r0,$r12,6(0x6)
    2114:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2118:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fb4 <strncpy+0xe8>
    211c:	29001d80 	st.b	$r0,$r12,7(0x7)
    2120:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2124:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fb4 <strncpy+0xe8>
    2128:	29002180 	st.b	$r0,$r12,8(0x8)
    212c:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2130:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fb4 <strncpy+0xe8>
    2134:	29002580 	st.b	$r0,$r12,9(0x9)
    2138:	028029ee 	addi.w	$r14,$r15,10(0xa)
    213c:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fb4 <strncpy+0xe8>
    2140:	29002980 	st.b	$r0,$r12,10(0xa)
    2144:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2148:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fb4 <strncpy+0xe8>
    214c:	29002d80 	st.b	$r0,$r12,11(0xb)
    2150:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2154:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fb4 <strncpy+0xe8>
    2158:	29003180 	st.b	$r0,$r12,12(0xc)
    215c:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2160:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fb4 <strncpy+0xe8>
    2164:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2168:	001501a4 	move	$r4,$r13
    216c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2170:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2174:	53ff23ff 	b	-224(0xfffff20) # 2094 <strncpy+0x1c8>
    2178:	02800412 	addi.w	$r18,$r0,1(0x1)
    217c:	53ff1bff 	b	-232(0xfffff18) # 2094 <strncpy+0x1c8>
    2180:	001501ae 	move	$r14,$r13
    2184:	00150012 	move	$r18,$r0
    2188:	53ff0fff 	b	-244(0xfffff0c) # 2094 <strncpy+0x1c8>
    218c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2190:	0015008d 	move	$r13,$r4
    2194:	001501e5 	move	$r5,$r15
    2198:	53fdf7ff 	b	-524(0xffffdf4) # 1f8c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    219c:	001501ac 	move	$r12,$r13
    21a0:	0015000f 	move	$r15,$r0
    21a4:	53ff27ff 	b	-220(0xfffff24) # 20c8 <strncpy+0x1fc>
    21a8:	02800812 	addi.w	$r18,$r0,2(0x2)
    21ac:	53feebff 	b	-280(0xffffee8) # 2094 <strncpy+0x1c8>
    21b0:	02801012 	addi.w	$r18,$r0,4(0x4)
    21b4:	53fee3ff 	b	-288(0xffffee0) # 2094 <strncpy+0x1c8>
    21b8:	02801412 	addi.w	$r18,$r0,5(0x5)
    21bc:	53fedbff 	b	-296(0xffffed8) # 2094 <strncpy+0x1c8>
    21c0:	02801812 	addi.w	$r18,$r0,6(0x6)
    21c4:	53fed3ff 	b	-304(0xffffed0) # 2094 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21c8:	2900008f 	st.b	$r15,$r4,0
    21cc:	0015008d 	move	$r13,$r4
    21d0:	53fdd7ff 	b	-556(0xffffdd4) # 1fa4 <strncpy+0xd8>

00000000000021d4 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21d4:	0015008c 	move	$r12,$r4
    21d8:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21dc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21e0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21e4:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21e8:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21ec:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21f0:	00408084 	slli.w	$r4,$r4,0x0
}
    21f4:	4c000020 	jirl	$r0,$r1,0

00000000000021f8 <openat>:
    register long a7 __asm__("a7") = n;
    21f8:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21fc:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2200:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2204:	00408084 	slli.w	$r4,$r4,0x0
}
    2208:	4c000020 	jirl	$r0,$r1,0

000000000000220c <close>:
    register long a7 __asm__("a7") = n;
    220c:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2210:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2214:	00408084 	slli.w	$r4,$r4,0x0
}
    2218:	4c000020 	jirl	$r0,$r1,0

000000000000221c <read>:
    register long a7 __asm__("a7") = n;
    221c:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2220:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2224:	4c000020 	jirl	$r0,$r1,0

0000000000002228 <write>:
    register long a7 __asm__("a7") = n;
    2228:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    222c:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <getpid>:
    register long a7 __asm__("a7") = n;
    2234:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2238:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <getppid>:
    register long a7 __asm__("a7") = n;
    2244:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2248:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    224c:	00408084 	slli.w	$r4,$r4,0x0
}
    2250:	4c000020 	jirl	$r0,$r1,0

0000000000002254 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2254:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2258:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    225c:	00408084 	slli.w	$r4,$r4,0x0
}
    2260:	4c000020 	jirl	$r0,$r1,0

0000000000002264 <fork>:
    register long a7 __asm__("a7") = n;
    2264:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2268:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    226c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2270:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2274:	00408084 	slli.w	$r4,$r4,0x0
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    227c:	001500c5 	move	$r5,$r6
    if (stack)
    2280:	400008c0 	beqz	$r6,8(0x8) # 2288 <clone+0xc>
	stack += stack_size;
    2284:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2288:	00408106 	slli.w	$r6,$r8,0x0
    228c:	00150009 	move	$r9,$r0
    2290:	00150008 	move	$r8,$r0
    2294:	00150007 	move	$r7,$r0
    2298:	5002c800 	b	712(0x2c8) # 2560 <__clone>

000000000000229c <exit>:
    register long a7 __asm__("a7") = n;
    229c:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22a0:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22a4:	4c000020 	jirl	$r0,$r1,0

00000000000022a8 <waitpid>:
    register long a7 __asm__("a7") = n;
    22a8:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22ac:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22b0:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22b4:	00408084 	slli.w	$r4,$r4,0x0
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <exec>:
    register long a7 __asm__("a7") = n;
    22bc:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22c0:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <execve>:
    register long a7 __asm__("a7") = n;
    22cc:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22d0:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22d4:	00408084 	slli.w	$r4,$r4,0x0
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <times>:
    register long a7 __asm__("a7") = n;
    22dc:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22e0:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22e4:	00408084 	slli.w	$r4,$r4,0x0
}
    22e8:	4c000020 	jirl	$r0,$r1,0

00000000000022ec <get_time>:

int64 get_time()
{
    22ec:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22f0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22f4:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22f8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22fc:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2300:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2304:	44003c80 	bnez	$r4,60(0x3c) # 2340 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2308:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    230c:	039f3c8c 	ori	$r12,$r4,0x7cf
    2310:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2314:	2a40006d 	ld.hu	$r13,$r3,0
    2318:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    231c:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2320:	00450c84 	srli.d	$r4,$r4,0x3
    2324:	001eb084 	mulh.du	$r4,$r4,$r12
    2328:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    232c:	001db1ac 	mul.d	$r12,$r13,$r12
    2330:	00451084 	srli.d	$r4,$r4,0x4
    2334:	00109184 	add.d	$r4,$r12,$r4
}
    2338:	02c04063 	addi.d	$r3,$r3,16(0x10)
    233c:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2340:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2344:	53fff7ff 	b	-12(0xffffff4) # 2338 <get_time+0x4c>

0000000000002348 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2348:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    234c:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2350:	00408084 	slli.w	$r4,$r4,0x0
}
    2354:	4c000020 	jirl	$r0,$r1,0

0000000000002358 <time>:
    register long a7 __asm__("a7") = n;
    2358:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    235c:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2360:	00408084 	slli.w	$r4,$r4,0x0
}
    2364:	4c000020 	jirl	$r0,$r1,0

0000000000002368 <sleep>:

int sleep(unsigned long long time)
{
    2368:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    236c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2370:	00150064 	move	$r4,$r3
    2374:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2378:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    237c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2380:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2384:	44001080 	bnez	$r4,16(0x10) # 2394 <sleep+0x2c>
    return 0;
    2388:	00150004 	move	$r4,$r0
}
    238c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2390:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2394:	24000064 	ldptr.w	$r4,$r3,0
}
    2398:	02c04063 	addi.d	$r3,$r3,16(0x10)
    239c:	4c000020 	jirl	$r0,$r1,0

00000000000023a0 <set_priority>:
    register long a7 __asm__("a7") = n;
    23a0:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23a4:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23a8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ac:	4c000020 	jirl	$r0,$r1,0

00000000000023b0 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23b0:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23b4:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23b8:	4c000020 	jirl	$r0,$r1,0

00000000000023bc <munmap>:
    register long a7 __asm__("a7") = n;
    23bc:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c0:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23c4:	00408084 	slli.w	$r4,$r4,0x0
}
    23c8:	4c000020 	jirl	$r0,$r1,0

00000000000023cc <wait>:

int wait(int *code)
{
    23cc:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23d0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23d4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23d8:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23dc:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23e0:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23e4:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23e8:	4c000020 	jirl	$r0,$r1,0

00000000000023ec <spawn>:
    register long a7 __asm__("a7") = n;
    23ec:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23f0:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <mailread>:
    register long a7 __asm__("a7") = n;
    23fc:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2400:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2404:	00408084 	slli.w	$r4,$r4,0x0
}
    2408:	4c000020 	jirl	$r0,$r1,0

000000000000240c <mailwrite>:
    register long a7 __asm__("a7") = n;
    240c:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2410:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2414:	00408084 	slli.w	$r4,$r4,0x0
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <fstat>:
    register long a7 __asm__("a7") = n;
    241c:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2420:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2424:	00408084 	slli.w	$r4,$r4,0x0
}
    2428:	4c000020 	jirl	$r0,$r1,0

000000000000242c <sys_linkat>:
    register long a7 __asm__("a7") = n;
    242c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2430:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2434:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2440:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2444:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2448:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    244c:	00408084 	slli.w	$r4,$r4,0x0
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <link>:

int link(char *old_path, char *new_path)
{
    2454:	0015008c 	move	$r12,$r4
    2458:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    245c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2460:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2464:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2468:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    246c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2470:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2474:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2478:	4c000020 	jirl	$r0,$r1,0

000000000000247c <unlink>:

int unlink(char *path)
{
    247c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2480:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2484:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2488:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    248c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2490:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <uname>:
    register long a7 __asm__("a7") = n;
    2498:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    249c:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24a0:	00408084 	slli.w	$r4,$r4,0x0
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <brk>:
    register long a7 __asm__("a7") = n;
    24a8:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24ac:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <getcwd>:
    register long a7 __asm__("a7") = n;
    24b8:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24bc:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <chdir>:
    register long a7 __asm__("a7") = n;
    24c4:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24c8:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24cc:	00408084 	slli.w	$r4,$r4,0x0
}
    24d0:	4c000020 	jirl	$r0,$r1,0

00000000000024d4 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24d4:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24d8:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24dc:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24e0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24e4:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24e8:	002b0000 	syscall	0x0
    24ec:	00408084 	slli.w	$r4,$r4,0x0
}
    24f0:	4c000020 	jirl	$r0,$r1,0

00000000000024f4 <getdents>:
    register long a7 __asm__("a7") = n;
    24f4:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24f8:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2500:	4c000020 	jirl	$r0,$r1,0

0000000000002504 <pipe>:
    register long a7 __asm__("a7") = n;
    2504:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2508:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    250c:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2510:	00408084 	slli.w	$r4,$r4,0x0
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <dup>:
    register long a7 __asm__("a7") = n;
    2518:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    251c:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <dup2>:
    register long a7 __asm__("a7") = n;
    2528:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    252c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2530:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <mount>:
    register long a7 __asm__("a7") = n;
    253c:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2540:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <umount>:
    register long a7 __asm__("a7") = n;
    254c:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2550:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2554:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2558:	00408084 	slli.w	$r4,$r4,0x0
}
    255c:	4c000020 	jirl	$r0,$r1,0

0000000000002560 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2560:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2564:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2568:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    256c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2570:	00150106 	move	$r6,$r8
	move $a3, $a5
    2574:	00150127 	move	$r7,$r9
	move $a4, $a6
    2578:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    257c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2580:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2584:	40000880 	beqz	$r4,8(0x8) # 258c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2588:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    258c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2590:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2594:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2598:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    259c:	002b0000 	syscall	0x0
