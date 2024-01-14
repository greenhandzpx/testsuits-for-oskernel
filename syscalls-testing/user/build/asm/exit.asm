
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/exit:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400d400 	bl	212(0xd4) # 10d8 <__start_main>

0000000000001008 <test_exit>:
 * 测试成功则输出：
 * "exit OK."
 * 测试失败则输出：
 * "exit ERR."
 */
void test_exit(void){
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d61084 	addi.d	$r4,$r4,1412(0x584)
void test_exit(void){
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c04077 	st.d	$r23,$r3,16(0x10)
    TEST_START(__func__);
    101c:	5403c400 	bl	964(0x3c4) # 13e0 <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02d7c084 	addi.d	$r4,$r4,1520(0x5f0)
    1028:	5403b800 	bl	952(0x3b8) # 13e0 <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d5f084 	addi.d	$r4,$r4,1404(0x57c)
    1034:	5403ac00 	bl	940(0x3ac) # 13e0 <puts>
    int cpid, waitret, wstatus;
    cpid = fork();
    1038:	54121c00 	bl	4636(0x121c) # 2254 <fork>
    assert(cpid != -1);
    103c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    cpid = fork();
    1040:	00150097 	move	$r23,$r4
    assert(cpid != -1);
    1044:	5800408c 	beq	$r4,$r12,64(0x40) # 1084 <test_exit+0x7c>
    if(cpid == 0){
    1048:	44004880 	bnez	$r4,72(0x48) # 1090 <test_exit+0x88>
        exit(0);
    104c:	54124000 	bl	4672(0x1240) # 228c <exit>
    }else{
        waitret = wait(&wstatus);
        if(waitret == cpid) printf("exit OK.\n");
        else printf("exit ERR.\n");
    }
    TEST_END(__func__);
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d6a084 	addi.d	$r4,$r4,1448(0x5a8)
    1058:	54038800 	bl	904(0x388) # 13e0 <puts>
    105c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1060:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    1064:	54037c00 	bl	892(0x37c) # 13e0 <puts>
    1068:	1c000024 	pcaddu12i	$r4,1(0x1)
    106c:	02d50084 	addi.d	$r4,$r4,1344(0x540)
    1070:	54037000 	bl	880(0x370) # 13e0 <puts>
}
    1074:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1078:	28c04077 	ld.d	$r23,$r3,16(0x10)
    107c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1080:	4c000020 	jirl	$r0,$r1,0
    assert(cpid != -1);
    1084:	1c000024 	pcaddu12i	$r4,1(0x1)
    1088:	02d4d084 	addi.d	$r4,$r4,1332(0x534)
    108c:	54069c00 	bl	1692(0x69c) # 1728 <panic>
        waitret = wait(&wstatus);
    1090:	02c03064 	addi.d	$r4,$r3,12(0xc)
    1094:	54132800 	bl	4904(0x1328) # 23bc <wait>
        if(waitret == cpid) printf("exit OK.\n");
    1098:	580016e4 	beq	$r23,$r4,20(0x14) # 10ac <test_exit+0xa4>
        else printf("exit ERR.\n");
    109c:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a0:	02d53084 	addi.d	$r4,$r4,1356(0x54c)
    10a4:	54037400 	bl	884(0x374) # 1418 <printf>
    10a8:	53ffabff 	b	-88(0xfffffa8) # 1050 <test_exit+0x48>
        if(waitret == cpid) printf("exit OK.\n");
    10ac:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b0:	02d4b084 	addi.d	$r4,$r4,1324(0x52c)
    10b4:	54036400 	bl	868(0x364) # 1418 <printf>
    10b8:	53ff9bff 	b	-104(0xfffff98) # 1050 <test_exit+0x48>

00000000000010bc <main>:

int main(void){
    10bc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10c0:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_exit();
    10c4:	57ff47ff 	bl	-188(0xfffff44) # 1008 <test_exit>
    return 0;
}
    10c8:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10cc:	00150004 	move	$r4,$r0
    10d0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10d4:	4c000020 	jirl	$r0,$r1,0

00000000000010d8 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10d8:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    10dc:	24000084 	ldptr.w	$r4,$r4,0
{
    10e0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    10e4:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    10e8:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    10ec:	57ffd3ff 	bl	-48(0xfffffd0) # 10bc <main>
    10f0:	54119c00 	bl	4508(0x119c) # 228c <exit>
	return 0;
}
    10f4:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10f8:	00150004 	move	$r4,$r0
    10fc:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1100:	4c000020 	jirl	$r0,$r1,0

0000000000001104 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1104:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1108:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    110c:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12d8 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1110:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1114:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1118:	02d4318c 	addi.d	$r12,$r12,1292(0x50c)
    111c:	002195cf 	mod.wu	$r15,$r14,$r5
    1120:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1128 <printint.constprop.0+0x24>
    1124:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1128:	002115cd 	div.wu	$r13,$r14,$r5
    112c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1134 <printint.constprop.0+0x30>
    1130:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1134:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1138:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    113c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1140:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1144:	680219c5 	bltu	$r14,$r5,536(0x218) # 135c <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    1148:	002195af 	mod.wu	$r15,$r13,$r5
    114c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1154 <printint.constprop.0+0x50>
    1150:	002a0007 	break	0x7
    1154:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1158:	002115ae 	div.wu	$r14,$r13,$r5
    115c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1164 <printint.constprop.0+0x60>
    1160:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1164:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1168:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    116c:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 132c <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1170:	002195cf 	mod.wu	$r15,$r14,$r5
    1174:	5c0008a0 	bne	$r5,$r0,8(0x8) # 117c <printint.constprop.0+0x78>
    1178:	002a0007 	break	0x7
    117c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1180:	002115cd 	div.wu	$r13,$r14,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0x88>
    1188:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    118c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1190:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1194:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 1338 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1198:	002195af 	mod.wu	$r15,$r13,$r5
    119c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a4 <printint.constprop.0+0xa0>
    11a0:	002a0007 	break	0x7
    11a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a8:	002115ae 	div.wu	$r14,$r13,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0xb0>
    11b0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b8:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11bc:	680189a5 	bltu	$r13,$r5,392(0x188) # 1344 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11c0:	002195cf 	mod.wu	$r15,$r14,$r5
    11c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11cc <printint.constprop.0+0xc8>
    11c8:	002a0007 	break	0x7
    11cc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11d0:	002115cd 	div.wu	$r13,$r14,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0xd8>
    11d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11dc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11e0:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    11e4:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1350 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    11e8:	002195af 	mod.wu	$r15,$r13,$r5
    11ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f4 <printint.constprop.0+0xf0>
    11f0:	002a0007 	break	0x7
    11f4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f8:	002115ae 	div.wu	$r14,$r13,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0x100>
    1200:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1204:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1208:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    120c:	680115a5 	bltu	$r13,$r5,276(0x114) # 1320 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1210:	002195cf 	mod.wu	$r15,$r14,$r5
    1214:	5c0008a0 	bne	$r5,$r0,8(0x8) # 121c <printint.constprop.0+0x118>
    1218:	002a0007 	break	0x7
    121c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1220:	002115cd 	div.wu	$r13,$r14,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0x128>
    1228:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    122c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1230:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1234:	680131c5 	bltu	$r14,$r5,304(0x130) # 1364 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    1238:	002195af 	mod.wu	$r15,$r13,$r5
    123c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1244 <printint.constprop.0+0x140>
    1240:	002a0007 	break	0x7
    1244:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1248:	002115ae 	div.wu	$r14,$r13,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0x150>
    1250:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1254:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1258:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    125c:	680115a5 	bltu	$r13,$r5,276(0x114) # 1370 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1260:	002195cf 	mod.wu	$r15,$r14,$r5
    1264:	5c0008a0 	bne	$r5,$r0,8(0x8) # 126c <printint.constprop.0+0x168>
    1268:	002a0007 	break	0x7
    126c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1270:	002115cd 	div.wu	$r13,$r14,$r5
    1274:	5c0008a0 	bne	$r5,$r0,8(0x8) # 127c <printint.constprop.0+0x178>
    1278:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    127c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1280:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1284:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 137c <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1288:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    128c:	3820358d 	ldx.bu	$r13,$r12,$r13
    1290:	02801805 	addi.w	$r5,$r0,6(0x6)
    1294:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1298:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    129c:	64001880 	bge	$r4,$r0,24(0x18) # 12b4 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12a0:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12a4:	0010b1ad 	add.d	$r13,$r13,$r12
    12a8:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12ac:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12b0:	00150185 	move	$r5,$r12
    write(f, s, l);
    12b4:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12b8:	02804006 	addi.w	$r6,$r0,16(0x10)
    12bc:	001114c6 	sub.w	$r6,$r6,$r5
    12c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    12c4:	00109585 	add.d	$r5,$r12,$r5
    12c8:	540f5000 	bl	3920(0xf50) # 2218 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12cc:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12d0:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12d4:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12d8:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    12dc:	1c00002c 	pcaddu12i	$r12,1(0x1)
    12e0:	02cd118c 	addi.d	$r12,$r12,836(0x344)
    12e4:	002195cf 	mod.wu	$r15,$r14,$r5
    12e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12f0 <printint.constprop.0+0x1ec>
    12ec:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    12f0:	002115cd 	div.wu	$r13,$r14,$r5
    12f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12fc <printint.constprop.0+0x1f8>
    12f8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12fc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1300:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1304:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1308:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    130c:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 1148 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1310:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1314:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    1318:	02803805 	addi.w	$r5,$r0,14(0xe)
    131c:	53ff9bff 	b	-104(0xfffff98) # 12b4 <printint.constprop.0+0x1b0>
    1320:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1324:	02802805 	addi.w	$r5,$r0,10(0xa)
    1328:	53ff77ff 	b	-140(0xfffff74) # 129c <printint.constprop.0+0x198>
    132c:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1330:	02803805 	addi.w	$r5,$r0,14(0xe)
    1334:	53ff6bff 	b	-152(0xfffff68) # 129c <printint.constprop.0+0x198>
    1338:	0280300c 	addi.w	$r12,$r0,12(0xc)
    133c:	02803405 	addi.w	$r5,$r0,13(0xd)
    1340:	53ff5fff 	b	-164(0xfffff5c) # 129c <printint.constprop.0+0x198>
    1344:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    1348:	02803005 	addi.w	$r5,$r0,12(0xc)
    134c:	53ff53ff 	b	-176(0xfffff50) # 129c <printint.constprop.0+0x198>
    1350:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1354:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1358:	53ff47ff 	b	-188(0xfffff44) # 129c <printint.constprop.0+0x198>
    i = 15;
    135c:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1360:	53ff57ff 	b	-172(0xfffff54) # 12b4 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1364:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1368:	02802405 	addi.w	$r5,$r0,9(0x9)
    136c:	53ff33ff 	b	-208(0xfffff30) # 129c <printint.constprop.0+0x198>
    1370:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1374:	02802005 	addi.w	$r5,$r0,8(0x8)
    1378:	53ff27ff 	b	-220(0xfffff24) # 129c <printint.constprop.0+0x198>
    137c:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1380:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1384:	53ff1bff 	b	-232(0xfffff18) # 129c <printint.constprop.0+0x198>

0000000000001388 <getchar>:
{
    1388:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    138c:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1390:	02800406 	addi.w	$r6,$r0,1(0x1)
    1394:	00150004 	move	$r4,$r0
{
    1398:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    139c:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13a0:	540e6c00 	bl	3692(0xe6c) # 220c <read>
}
    13a4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13a8:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13ac:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13b0:	4c000020 	jirl	$r0,$r1,0

00000000000013b4 <putchar>:
{
    13b4:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13b8:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13bc:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13c0:	02800406 	addi.w	$r6,$r0,1(0x1)
    13c4:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13c8:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13cc:	540e4c00 	bl	3660(0xe4c) # 2218 <write>
}
    13d0:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13d4:	00408084 	slli.w	$r4,$r4,0x0
}
    13d8:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13dc:	4c000020 	jirl	$r0,$r1,0

00000000000013e0 <puts>:
{
    13e0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    13e4:	29c02061 	st.d	$r1,$r3,8(0x8)
    13e8:	27000077 	stptr.d	$r23,$r3,0
    13ec:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    13f0:	5406d400 	bl	1748(0x6d4) # 1ac4 <strlen>
    13f4:	00150086 	move	$r6,$r4
    13f8:	001502e5 	move	$r5,$r23
    13fc:	02800404 	addi.w	$r4,$r0,1(0x1)
    1400:	540e1800 	bl	3608(0xe18) # 2218 <write>
}
    1404:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1408:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    140c:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1410:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1414:	4c000020 	jirl	$r0,$r1,0

0000000000001418 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    1418:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    141c:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1420:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1424:	140000fa 	lu12i.w	$r26,7(0x7)
{
    1428:	29c14079 	st.d	$r25,$r3,80(0x50)
    142c:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1430:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1434:	29c1a061 	st.d	$r1,$r3,104(0x68)
    1438:	29c18077 	st.d	$r23,$r3,96(0x60)
    143c:	29c16078 	st.d	$r24,$r3,88(0x58)
    1440:	0015009b 	move	$r27,$r4
    1444:	29c1e065 	st.d	$r5,$r3,120(0x78)
    1448:	29c20066 	st.d	$r6,$r3,128(0x80)
    144c:	29c22067 	st.d	$r7,$r3,136(0x88)
    1450:	29c24068 	st.d	$r8,$r3,144(0x90)
    1454:	29c26069 	st.d	$r9,$r3,152(0x98)
    1458:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    145c:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1460:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1464:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1468:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    146c:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1470:	02c6d39c 	addi.d	$r28,$r28,436(0x1b4)
        if (!*s)
    1474:	2800036c 	ld.b	$r12,$r27,0
    1478:	40008980 	beqz	$r12,136(0x88) # 1500 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    147c:	58027d99 	beq	$r12,$r25,636(0x27c) # 16f8 <printf+0x2e0>
    1480:	00150366 	move	$r6,$r27
    1484:	50000800 	b	8(0x8) # 148c <printf+0x74>
    1488:	58009d99 	beq	$r12,$r25,156(0x9c) # 1524 <printf+0x10c>
    148c:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1490:	280000cc 	ld.b	$r12,$r6,0
    1494:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1488 <printf+0x70>
    1498:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    149c:	0011ecd7 	sub.d	$r23,$r6,$r27
    14a0:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14a4:	001502e6 	move	$r6,$r23
    14a8:	00150365 	move	$r5,$r27
    14ac:	02800404 	addi.w	$r4,$r0,1(0x1)
    14b0:	540d6800 	bl	3432(0xd68) # 2218 <write>
        out(f, a, l);
        if (l)
    14b4:	4400b6e0 	bnez	$r23,180(0xb4) # 1568 <printf+0x150>
            continue;
        if (s[1] == 0)
    14b8:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14bc:	40004580 	beqz	$r12,68(0x44) # 1500 <printf+0xe8>
            break;
        switch (s[1])
    14c0:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14c4:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1598 <printf+0x180>
    14c8:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1570 <printf+0x158>
    14cc:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14d0:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16c0 <printf+0x2a8>
    14d4:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14d8:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1688 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    14dc:	2600006c 	ldptr.d	$r12,$r3,0
    14e0:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    14e4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    14e8:	24000184 	ldptr.w	$r4,$r12,0
    14ec:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    14f0:	2700006c 	stptr.d	$r12,$r3,0
    14f4:	57fc13ff 	bl	-1008(0xffffc10) # 1104 <printint.constprop.0>
        if (!*s)
    14f8:	2800036c 	ld.b	$r12,$r27,0
    14fc:	47ff819f 	bnez	$r12,-128(0x7fff80) # 147c <printf+0x64>
    }
    va_end(ap);
}
    1500:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1504:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1508:	28c16078 	ld.d	$r24,$r3,88(0x58)
    150c:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1510:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1514:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    1518:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    151c:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1520:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1524:	280004cc 	ld.b	$r12,$r6,1(0x1)
    1528:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1498 <printf+0x80>
    152c:	001500d8 	move	$r24,$r6
    1530:	50000c00 	b	12(0xc) # 153c <printf+0x124>
    1534:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1538:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 149c <printf+0x84>
    153c:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1540:	2800030c 	ld.b	$r12,$r24,0
    1544:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1548:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1534 <printf+0x11c>
        l = z - a;
    154c:	0011ecd7 	sub.d	$r23,$r6,$r27
    1550:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1554:	001502e6 	move	$r6,$r23
    1558:	00150365 	move	$r5,$r27
    155c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1560:	540cb800 	bl	3256(0xcb8) # 2218 <write>
        if (l)
    1564:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14b8 <printf+0xa0>
    1568:	0015031b 	move	$r27,$r24
    156c:	53ff0bff 	b	-248(0xfffff08) # 1474 <printf+0x5c>
        switch (s[1])
    1570:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1574:	5c01158d 	bne	$r12,$r13,276(0x114) # 1688 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1578:	2600006c 	ldptr.d	$r12,$r3,0
    157c:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1580:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1584:	24000184 	ldptr.w	$r4,$r12,0
    1588:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    158c:	2700006c 	stptr.d	$r12,$r3,0
    1590:	57fb77ff 	bl	-1164(0xffffb74) # 1104 <printint.constprop.0>
        s += 2;
    1594:	53ff67ff 	b	-156(0xfffff64) # 14f8 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1598:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    159c:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15a0:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15a4:	260001ac 	ldptr.d	$r12,$r13,0
    15a8:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15ac:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15b0:	0045f18a 	srli.d	$r10,$r12,0x3c
    15b4:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15b8:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15bc:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15c0:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15c4:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15c8:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15cc:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15d0:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15d4:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15d8:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    15dc:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    15e0:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    15e4:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    15e8:	38202b8b 	ldx.bu	$r11,$r28,$r10
    15ec:	3820278a 	ldx.bu	$r10,$r28,$r9
    15f0:	38202389 	ldx.bu	$r9,$r28,$r8
    15f4:	38201f88 	ldx.bu	$r8,$r28,$r7
    15f8:	38201787 	ldx.bu	$r7,$r28,$r5
    15fc:	38201385 	ldx.bu	$r5,$r28,$r4
    1600:	38205384 	ldx.bu	$r4,$r28,$r20
    1604:	38204f94 	ldx.bu	$r20,$r28,$r19
    1608:	38204b93 	ldx.bu	$r19,$r28,$r18
    160c:	38204792 	ldx.bu	$r18,$r28,$r17
    1610:	38204391 	ldx.bu	$r17,$r28,$r16
    1614:	38203f90 	ldx.bu	$r16,$r28,$r15
    1618:	38203b8f 	ldx.bu	$r15,$r28,$r14
    161c:	3820378e 	ldx.bu	$r14,$r28,$r13
    1620:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1624:	03403d8c 	andi	$r12,$r12,0xf
    1628:	2900286b 	st.b	$r11,$r3,10(0xa)
    162c:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1630:	29003069 	st.b	$r9,$r3,12(0xc)
    1634:	29003468 	st.b	$r8,$r3,13(0xd)
    1638:	29003867 	st.b	$r7,$r3,14(0xe)
    163c:	29003c65 	st.b	$r5,$r3,15(0xf)
    1640:	29004064 	st.b	$r4,$r3,16(0x10)
    1644:	29004474 	st.b	$r20,$r3,17(0x11)
    1648:	29004873 	st.b	$r19,$r3,18(0x12)
    164c:	29004c72 	st.b	$r18,$r3,19(0x13)
    1650:	29005071 	st.b	$r17,$r3,20(0x14)
    1654:	29005470 	st.b	$r16,$r3,21(0x15)
    1658:	2900586f 	st.b	$r15,$r3,22(0x16)
    165c:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1660:	3820378d 	ldx.bu	$r13,$r28,$r13
    1664:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1668:	02c02065 	addi.d	$r5,$r3,8(0x8)
    166c:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1670:	2900606d 	st.b	$r13,$r3,24(0x18)
    1674:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1678:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    167c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1680:	540b9800 	bl	2968(0xb98) # 2218 <write>
        s += 2;
    1684:	53fe77ff 	b	-396(0xffffe74) # 14f8 <printf+0xe0>
    char byte = c;
    1688:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    168c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1690:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1694:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1698:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    169c:	540b7c00 	bl	2940(0xb7c) # 2218 <write>
    char byte = c;
    16a0:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16a4:	02800406 	addi.w	$r6,$r0,1(0x1)
    16a8:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16ac:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16b0:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16b4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16b8:	540b6000 	bl	2912(0xb60) # 2218 <write>
        s += 2;
    16bc:	53fe3fff 	b	-452(0xffffe3c) # 14f8 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16c0:	2600006c 	ldptr.d	$r12,$r3,0
    16c4:	26000197 	ldptr.d	$r23,$r12,0
    16c8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16cc:	2700006c 	stptr.d	$r12,$r3,0
    16d0:	40004ee0 	beqz	$r23,76(0x4c) # 171c <printf+0x304>
            l = strnlen(a, 200);
    16d4:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16d8:	001502e4 	move	$r4,$r23
    16dc:	5405d000 	bl	1488(0x5d0) # 1cac <strnlen>
    16e0:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    16e4:	001502e5 	move	$r5,$r23
    16e8:	02800404 	addi.w	$r4,$r0,1(0x1)
    16ec:	540b2c00 	bl	2860(0xb2c) # 2218 <write>
        s += 2;
    16f0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    16f4:	53fe07ff 	b	-508(0xffffe04) # 14f8 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    16f8:	2800076c 	ld.b	$r12,$r27,1(0x1)
    16fc:	00150366 	move	$r6,$r27
    1700:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 152c <printf+0x114>
    write(f, s, l);
    1704:	00150006 	move	$r6,$r0
    1708:	00150365 	move	$r5,$r27
    170c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1710:	540b0800 	bl	2824(0xb08) # 2218 <write>
    1714:	00150378 	move	$r24,$r27
    1718:	53fda3ff 	b	-608(0xffffda0) # 14b8 <printf+0xa0>
                a = "(null)";
    171c:	1c000037 	pcaddu12i	$r23,1(0x1)
    1720:	02fbb2f7 	addi.d	$r23,$r23,-276(0xeec)
    1724:	53ffb3ff 	b	-80(0xfffffb0) # 16d4 <printf+0x2bc>

0000000000001728 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    1728:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    172c:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1730:	57fcb3ff 	bl	-848(0xffffcb0) # 13e0 <puts>
    exit(-100);
}
    1734:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    1738:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    173c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1740:	500b4c00 	b	2892(0xb4c) # 228c <exit>

0000000000001744 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1744:	0280800c 	addi.w	$r12,$r0,32(0x20)
    1748:	5800108c 	beq	$r4,$r12,16(0x10) # 1758 <isspace+0x14>
    174c:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1750:	02401484 	sltui	$r4,$r4,5(0x5)
    1754:	4c000020 	jirl	$r0,$r1,0
    1758:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    175c:	4c000020 	jirl	$r0,$r1,0

0000000000001760 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1760:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1764:	02402884 	sltui	$r4,$r4,10(0xa)
    1768:	4c000020 	jirl	$r0,$r1,0

000000000000176c <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    176c:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1770:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1774:	2800008d 	ld.b	$r13,$r4,0
    1778:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    177c:	580061ae 	beq	$r13,$r14,96(0x60) # 17dc <atoi+0x70>
    1780:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 17dc <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1784:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1788:	580065ac 	beq	$r13,$r12,100(0x64) # 17ec <atoi+0x80>
    178c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1790:	58007dac 	beq	$r13,$r12,124(0x7c) # 180c <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1794:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1798:	0280240e 	addi.w	$r14,$r0,9(0x9)
    179c:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17a0:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17a4:	680061cf 	bltu	$r14,$r15,96(0x60) # 1804 <atoi+0x98>
    int n = 0, neg = 0;
    17a8:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17ac:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17b0:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17b4:	001c126f 	mul.w	$r15,$r19,$r4
    17b8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17bc:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17c0:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17c4:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17c8:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17cc:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17d0:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17b4 <atoi+0x48>
    return neg ? n : -n;
    17d4:	40001280 	beqz	$r20,16(0x10) # 17e4 <atoi+0x78>
}
    17d8:	4c000020 	jirl	$r0,$r1,0
        s++;
    17dc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    17e0:	53ff97ff 	b	-108(0xfffff94) # 1774 <atoi+0x8>
    17e4:	00113e04 	sub.w	$r4,$r16,$r15
    17e8:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    17ec:	2800048d 	ld.b	$r13,$r4,1(0x1)
    17f0:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    17f4:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    17f8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    17fc:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1800:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17a8 <atoi+0x3c>
    1804:	00150004 	move	$r4,$r0
}
    1808:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    180c:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1810:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1814:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1818:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    181c:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1804 <atoi+0x98>
        neg = 1;
    1820:	02800414 	addi.w	$r20,$r0,1(0x1)
    1824:	53ff87ff 	b	-124(0xfffff84) # 17a8 <atoi+0x3c>

0000000000001828 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    1828:	400198c0 	beqz	$r6,408(0x198) # 19c0 <memset+0x198>
    182c:	0011900c 	sub.d	$r12,$r0,$r4
    1830:	03401d8c 	andi	$r12,$r12,0x7
    1834:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    1838:	02402dae 	sltui	$r14,$r13,11(0xb)
    183c:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1840:	0013b9ad 	masknez	$r13,$r13,$r14
    1844:	001339ee 	maskeqz	$r14,$r15,$r14
    1848:	001539ad 	or	$r13,$r13,$r14
    184c:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1850:	00005ca5 	ext.w.b	$r5,$r5
    1854:	680191ed 	bltu	$r15,$r13,400(0x190) # 19e4 <memset+0x1bc>
    1858:	40018180 	beqz	$r12,384(0x180) # 19d8 <memset+0x1b0>
    185c:	29000085 	st.b	$r5,$r4,0
    1860:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1864:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1868:	5801698d 	beq	$r12,$r13,360(0x168) # 19d0 <memset+0x1a8>
    186c:	29000485 	st.b	$r5,$r4,1(0x1)
    1870:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1874:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1878:	5801798d 	beq	$r12,$r13,376(0x178) # 19f0 <memset+0x1c8>
    187c:	29000885 	st.b	$r5,$r4,2(0x2)
    1880:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1884:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1888:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19c4 <memset+0x19c>
    188c:	29000c85 	st.b	$r5,$r4,3(0x3)
    1890:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1894:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1898:	5801618d 	beq	$r12,$r13,352(0x160) # 19f8 <memset+0x1d0>
    189c:	29001085 	st.b	$r5,$r4,4(0x4)
    18a0:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18a4:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18a8:	5801598d 	beq	$r12,$r13,344(0x158) # 1a00 <memset+0x1d8>
    18ac:	29001485 	st.b	$r5,$r4,5(0x5)
    18b0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18b4:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18b8:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a08 <memset+0x1e0>
    18bc:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18c0:	29001885 	st.b	$r5,$r4,6(0x6)
    18c4:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18c8:	0015000d 	move	$r13,$r0
    18cc:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18d0:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18d4:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18d8:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    18dc:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    18e0:	0011b0d0 	sub.d	$r16,$r6,$r12
    18e4:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    18e8:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    18ec:	0010b08c 	add.d	$r12,$r4,$r12
    18f0:	00450e0f 	srli.d	$r15,$r16,0x3
    18f4:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    18f8:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    18fc:	2700018d 	stptr.d	$r13,$r12,0
    1900:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1904:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 18fc <memset+0xd4>
    1908:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    190c:	0014be0f 	and	$r15,$r16,$r15
    1910:	004081ed 	slli.w	$r13,$r15,0x0
    1914:	0010bdcc 	add.d	$r12,$r14,$r15
    1918:	001045ad 	add.w	$r13,$r13,$r17
    191c:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19cc <memset+0x1a4>
    1920:	29000185 	st.b	$r5,$r12,0
    1924:	028005ae 	addi.w	$r14,$r13,1(0x1)
    1928:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19c0 <memset+0x198>
    192c:	29000585 	st.b	$r5,$r12,1(0x1)
    1930:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1934:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19c0 <memset+0x198>
    1938:	29000985 	st.b	$r5,$r12,2(0x2)
    193c:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1940:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19c0 <memset+0x198>
    1944:	29000d85 	st.b	$r5,$r12,3(0x3)
    1948:	028011ae 	addi.w	$r14,$r13,4(0x4)
    194c:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19c0 <memset+0x198>
    1950:	29001185 	st.b	$r5,$r12,4(0x4)
    1954:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1958:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19c0 <memset+0x198>
    195c:	29001585 	st.b	$r5,$r12,5(0x5)
    1960:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1964:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19c0 <memset+0x198>
    1968:	29001985 	st.b	$r5,$r12,6(0x6)
    196c:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1970:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19c0 <memset+0x198>
    1974:	29001d85 	st.b	$r5,$r12,7(0x7)
    1978:	028021ae 	addi.w	$r14,$r13,8(0x8)
    197c:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19c0 <memset+0x198>
    1980:	29002185 	st.b	$r5,$r12,8(0x8)
    1984:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1988:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19c0 <memset+0x198>
    198c:	29002585 	st.b	$r5,$r12,9(0x9)
    1990:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1994:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19c0 <memset+0x198>
    1998:	29002985 	st.b	$r5,$r12,10(0xa)
    199c:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19a0:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19c0 <memset+0x198>
    19a4:	29002d85 	st.b	$r5,$r12,11(0xb)
    19a8:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19ac:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19c0 <memset+0x198>
    19b0:	29003185 	st.b	$r5,$r12,12(0xc)
    19b4:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19b8:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19c0 <memset+0x198>
    19bc:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19c0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19c4:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19c8:	53ff03ff 	b	-256(0xfffff00) # 18c8 <memset+0xa0>
    19cc:	4c000020 	jirl	$r0,$r1,0
    19d0:	02800411 	addi.w	$r17,$r0,1(0x1)
    19d4:	53fef7ff 	b	-268(0xffffef4) # 18c8 <memset+0xa0>
    19d8:	0015008e 	move	$r14,$r4
    19dc:	00150011 	move	$r17,$r0
    19e0:	53feebff 	b	-280(0xffffee8) # 18c8 <memset+0xa0>
    19e4:	0015008c 	move	$r12,$r4
    19e8:	0015000d 	move	$r13,$r0
    19ec:	53ff37ff 	b	-204(0xfffff34) # 1920 <memset+0xf8>
    19f0:	02800811 	addi.w	$r17,$r0,2(0x2)
    19f4:	53fed7ff 	b	-300(0xffffed4) # 18c8 <memset+0xa0>
    19f8:	02801011 	addi.w	$r17,$r0,4(0x4)
    19fc:	53fecfff 	b	-308(0xffffecc) # 18c8 <memset+0xa0>
    1a00:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a04:	53fec7ff 	b	-316(0xffffec4) # 18c8 <memset+0xa0>
    1a08:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a0c:	53febfff 	b	-324(0xffffebc) # 18c8 <memset+0xa0>

0000000000001a10 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a10:	2800008c 	ld.b	$r12,$r4,0
    1a14:	280000ae 	ld.b	$r14,$r5,0
    1a18:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a4c <strcmp+0x3c>
    1a1c:	40003980 	beqz	$r12,56(0x38) # 1a54 <strcmp+0x44>
    1a20:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a24:	50000800 	b	8(0x8) # 1a2c <strcmp+0x1c>
    1a28:	400019a0 	beqz	$r13,24(0x18) # 1a40 <strcmp+0x30>
    1a2c:	3800308d 	ldx.b	$r13,$r4,$r12
    1a30:	380030ae 	ldx.b	$r14,$r5,$r12
    1a34:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a38:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a28 <strcmp+0x18>
    1a3c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a40:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a44:	001111a4 	sub.w	$r4,$r13,$r4
    1a48:	4c000020 	jirl	$r0,$r1,0
    1a4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a50:	53fff3ff 	b	-16(0xffffff0) # 1a40 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a54:	0015000d 	move	$r13,$r0
    1a58:	53ffebff 	b	-24(0xfffffe8) # 1a40 <strcmp+0x30>

0000000000001a5c <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a5c:	400054c0 	beqz	$r6,84(0x54) # 1ab0 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a60:	2a00008d 	ld.bu	$r13,$r4,0
    1a64:	2a0000ae 	ld.bu	$r14,$r5,0
    1a68:	40003da0 	beqz	$r13,60(0x3c) # 1aa4 <strncmp+0x48>
    1a6c:	40003dc0 	beqz	$r14,60(0x3c) # 1aa8 <strncmp+0x4c>
    if (!n--)
    1a70:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a74:	400034c0 	beqz	$r6,52(0x34) # 1aa8 <strncmp+0x4c>
    1a78:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a7c:	580019ae 	beq	$r13,$r14,24(0x18) # 1a94 <strncmp+0x38>
    1a80:	50002800 	b	40(0x28) # 1aa8 <strncmp+0x4c>
    1a84:	400035c0 	beqz	$r14,52(0x34) # 1ab8 <strncmp+0x5c>
    1a88:	580020cc 	beq	$r6,$r12,32(0x20) # 1aa8 <strncmp+0x4c>
    1a8c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a90:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1ab8 <strncmp+0x5c>
    1a94:	3820308d 	ldx.bu	$r13,$r4,$r12
    1a98:	382030ae 	ldx.bu	$r14,$r5,$r12
    1a9c:	001501af 	move	$r15,$r13
    1aa0:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1a84 <strncmp+0x28>
    1aa4:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1aa8:	001139a4 	sub.w	$r4,$r13,$r14
    1aac:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ab0:	00150004 	move	$r4,$r0
}
    1ab4:	4c000020 	jirl	$r0,$r1,0
    1ab8:	001501ed 	move	$r13,$r15
    return *l - *r;
    1abc:	001139a4 	sub.w	$r4,$r13,$r14
    1ac0:	4c000020 	jirl	$r0,$r1,0

0000000000001ac4 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ac4:	03401c8c 	andi	$r12,$r4,0x7
    1ac8:	4000b180 	beqz	$r12,176(0xb0) # 1b78 <strlen+0xb4>
        if (!*s)
    1acc:	2800008c 	ld.b	$r12,$r4,0
    1ad0:	4000b180 	beqz	$r12,176(0xb0) # 1b80 <strlen+0xbc>
    1ad4:	0015008c 	move	$r12,$r4
    1ad8:	50000c00 	b	12(0xc) # 1ae4 <strlen+0x20>
    1adc:	2800018d 	ld.b	$r13,$r12,0
    1ae0:	400091a0 	beqz	$r13,144(0x90) # 1b70 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1ae4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ae8:	03401d8d 	andi	$r13,$r12,0x7
    1aec:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1adc <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1af0:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1af4:	2600018f 	ldptr.d	$r15,$r12,0
    1af8:	03bbfdad 	ori	$r13,$r13,0xeff
    1afc:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b00:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b04:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b08:	038201ce 	ori	$r14,$r14,0x80
    1b0c:	0010b5ed 	add.d	$r13,$r15,$r13
    1b10:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b14:	0016bdad 	andn	$r13,$r13,$r15
    1b18:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b1c:	0014b9ae 	and	$r14,$r13,$r14
    1b20:	440049c0 	bnez	$r14,72(0x48) # 1b68 <strlen+0xa4>
    1b24:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b28:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b2c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b30:	2600018e 	ldptr.d	$r14,$r12,0
    1b34:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b38:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b3c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b40:	0382020f 	ori	$r15,$r16,0x80
    1b44:	0010b5cd 	add.d	$r13,$r14,$r13
    1b48:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b4c:	0016b9ad 	andn	$r13,$r13,$r14
    1b50:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b54:	0014bdad 	and	$r13,$r13,$r15
    1b58:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b2c <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b5c:	2800018d 	ld.b	$r13,$r12,0
    1b60:	400011a0 	beqz	$r13,16(0x10) # 1b70 <strlen+0xac>
    1b64:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b68:	2800018d 	ld.b	$r13,$r12,0
    1b6c:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b64 <strlen+0xa0>
        ;
    return s - a;
    1b70:	00119184 	sub.d	$r4,$r12,$r4
}
    1b74:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b78:	0015008c 	move	$r12,$r4
    1b7c:	53ff77ff 	b	-140(0xfffff74) # 1af0 <strlen+0x2c>
        if (!*s)
    1b80:	00150004 	move	$r4,$r0
            return s - a;
    1b84:	4c000020 	jirl	$r0,$r1,0

0000000000001b88 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1b88:	03401c8c 	andi	$r12,$r4,0x7
    1b8c:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1b90:	44002180 	bnez	$r12,32(0x20) # 1bb0 <memchr+0x28>
    1b94:	50002c00 	b	44(0x2c) # 1bc0 <memchr+0x38>
    1b98:	2a00008c 	ld.bu	$r12,$r4,0
    1b9c:	5800f985 	beq	$r12,$r5,248(0xf8) # 1c94 <memchr+0x10c>
    1ba0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ba4:	03401c8c 	andi	$r12,$r4,0x7
    1ba8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bac:	40001580 	beqz	$r12,20(0x14) # 1bc0 <memchr+0x38>
    1bb0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1b98 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bb4:	0015000d 	move	$r13,$r0
}
    1bb8:	001501a4 	move	$r4,$r13
    1bbc:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1bc0:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1bc4:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bb8 <memchr+0x30>
    1bc8:	2a00008c 	ld.bu	$r12,$r4,0
    1bcc:	5800c985 	beq	$r12,$r5,200(0xc8) # 1c94 <memchr+0x10c>
        size_t k = ONES * c;
    1bd0:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bd4:	0384058c 	ori	$r12,$r12,0x101
    1bd8:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1bdc:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1be0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1be4:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1be8:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1ca4 <memchr+0x11c>
    1bec:	2600008d 	ldptr.d	$r13,$r4,0
    1bf0:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bf4:	038201ce 	ori	$r14,$r14,0x80
    1bf8:	0015b60d 	xor	$r13,$r16,$r13
    1bfc:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c00:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c04:	0016b58c 	andn	$r12,$r12,$r13
    1c08:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c0c:	0014b98c 	and	$r12,$r12,$r14
    1c10:	44009580 	bnez	$r12,148(0x94) # 1ca4 <memchr+0x11c>
    1c14:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c18:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c1c:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c20:	50002000 	b	32(0x20) # 1c40 <memchr+0xb8>
    1c24:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c28:	0015b20c 	xor	$r12,$r16,$r12
    1c2c:	0010b98e 	add.d	$r14,$r12,$r14
    1c30:	0016b1cc 	andn	$r12,$r14,$r12
    1c34:	0014bd8c 	and	$r12,$r12,$r15
    1c38:	44006580 	bnez	$r12,100(0x64) # 1c9c <memchr+0x114>
    1c3c:	001501a4 	move	$r4,$r13
    1c40:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c44:	0382022f 	ori	$r15,$r17,0x80
    1c48:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c4c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c50:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c54:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c58:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c5c:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c60:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c24 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c64:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bb4 <memchr+0x2c>
    1c68:	2a0001ac 	ld.bu	$r12,$r13,0
    1c6c:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bb8 <memchr+0x30>
    1c70:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c74:	001099a6 	add.d	$r6,$r13,$r6
    1c78:	50001000 	b	16(0x10) # 1c88 <memchr+0x100>
    1c7c:	2a00018e 	ld.bu	$r14,$r12,0
    1c80:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c84:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bb8 <memchr+0x30>
    1c88:	0015018d 	move	$r13,$r12
    1c8c:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1c7c <memchr+0xf4>
    1c90:	53ff27ff 	b	-220(0xfffff24) # 1bb4 <memchr+0x2c>
    1c94:	0015008d 	move	$r13,$r4
    1c98:	53ffd3ff 	b	-48(0xfffffd0) # 1c68 <memchr+0xe0>
    1c9c:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1ca0:	53ffcfff 	b	-52(0xfffffcc) # 1c6c <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1ca4:	0015008d 	move	$r13,$r4
    1ca8:	53ffcbff 	b	-56(0xfffffc8) # 1c70 <memchr+0xe8>

0000000000001cac <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cac:	03401c8c 	andi	$r12,$r4,0x7
    1cb0:	40011980 	beqz	$r12,280(0x118) # 1dc8 <strnlen+0x11c>
    1cb4:	4000f4a0 	beqz	$r5,244(0xf4) # 1da8 <strnlen+0xfc>
    1cb8:	2a00008c 	ld.bu	$r12,$r4,0
    1cbc:	4000f580 	beqz	$r12,244(0xf4) # 1db0 <strnlen+0x104>
    1cc0:	001500ac 	move	$r12,$r5
    1cc4:	0015008d 	move	$r13,$r4
    1cc8:	50001000 	b	16(0x10) # 1cd8 <strnlen+0x2c>
    1ccc:	4000dd80 	beqz	$r12,220(0xdc) # 1da8 <strnlen+0xfc>
    1cd0:	2a0001ae 	ld.bu	$r14,$r13,0
    1cd4:	4000e5c0 	beqz	$r14,228(0xe4) # 1db8 <strnlen+0x10c>
    1cd8:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1cdc:	03401dae 	andi	$r14,$r13,0x7
    1ce0:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1ce4:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1ccc <strnlen+0x20>
    if (n && *s != c)
    1ce8:	4000c180 	beqz	$r12,192(0xc0) # 1da8 <strnlen+0xfc>
    1cec:	2a0001ae 	ld.bu	$r14,$r13,0
    1cf0:	4000c9c0 	beqz	$r14,200(0xc8) # 1db8 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cf4:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1cf8:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1dd4 <strnlen+0x128>
    1cfc:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d00:	260001b0 	ldptr.d	$r16,$r13,0
    1d04:	03bbfdce 	ori	$r14,$r14,0xeff
    1d08:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d0c:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d10:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d14:	038201ef 	ori	$r15,$r15,0x80
    1d18:	0010ba0e 	add.d	$r14,$r16,$r14
    1d1c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d20:	0016c1ce 	andn	$r14,$r14,$r16
    1d24:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d28:	0014bdcf 	and	$r15,$r14,$r15
    1d2c:	4400a9e0 	bnez	$r15,168(0xa8) # 1dd4 <strnlen+0x128>
    1d30:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d34:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d38:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d3c:	50001c00 	b	28(0x1c) # 1d58 <strnlen+0xac>
    1d40:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d44:	0010b9ee 	add.d	$r14,$r15,$r14
    1d48:	0016bdce 	andn	$r14,$r14,$r15
    1d4c:	0014c1ce 	and	$r14,$r14,$r16
    1d50:	440071c0 	bnez	$r14,112(0x70) # 1dc0 <strnlen+0x114>
    1d54:	0015022d 	move	$r13,$r17
    1d58:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d5c:	03820250 	ori	$r16,$r18,0x80
    1d60:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d64:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d68:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d6c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d70:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d74:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d78:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d40 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1d7c:	40002d80 	beqz	$r12,44(0x2c) # 1da8 <strnlen+0xfc>
    1d80:	2a00022d 	ld.bu	$r13,$r17,0
    1d84:	400021a0 	beqz	$r13,32(0x20) # 1da4 <strnlen+0xf8>
    1d88:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1d8c:	0010b22c 	add.d	$r12,$r17,$r12
    1d90:	001501b1 	move	$r17,$r13
    1d94:	5800158d 	beq	$r12,$r13,20(0x14) # 1da8 <strnlen+0xfc>
    1d98:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d9c:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1da0:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1d90 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1da4:	00119225 	sub.d	$r5,$r17,$r4
}
    1da8:	001500a4 	move	$r4,$r5
    1dac:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1db0:	001500ac 	move	$r12,$r5
    1db4:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1db8:	001501b1 	move	$r17,$r13
    1dbc:	53ffc7ff 	b	-60(0xfffffc4) # 1d80 <strnlen+0xd4>
    1dc0:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1dc4:	53ffc3ff 	b	-64(0xfffffc0) # 1d84 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dc8:	001500ac 	move	$r12,$r5
    1dcc:	0015008d 	move	$r13,$r4
    1dd0:	53ff1bff 	b	-232(0xfffff18) # 1ce8 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1dd4:	001501b1 	move	$r17,$r13
    1dd8:	53ffb3ff 	b	-80(0xfffffb0) # 1d88 <strnlen+0xdc>

0000000000001ddc <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1ddc:	0015948c 	xor	$r12,$r4,$r5
    1de0:	03401d8c 	andi	$r12,$r12,0x7
    1de4:	4400ad80 	bnez	$r12,172(0xac) # 1e90 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1de8:	03401cac 	andi	$r12,$r5,0x7
    1dec:	40003180 	beqz	$r12,48(0x30) # 1e1c <strcpy+0x40>
            if (!(*d = *s))
    1df0:	280000ac 	ld.b	$r12,$r5,0
    1df4:	2900008c 	st.b	$r12,$r4,0
    1df8:	44001580 	bnez	$r12,20(0x14) # 1e0c <strcpy+0x30>
    1dfc:	5000bc00 	b	188(0xbc) # 1eb8 <strcpy+0xdc>
    1e00:	280000ac 	ld.b	$r12,$r5,0
    1e04:	2900008c 	st.b	$r12,$r4,0
    1e08:	4000a980 	beqz	$r12,168(0xa8) # 1eb0 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e0c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e10:	03401cac 	andi	$r12,$r5,0x7
    1e14:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e18:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e00 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e1c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e20:	260000ae 	ldptr.d	$r14,$r5,0
    1e24:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e28:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e2c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e30:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e34:	038201ad 	ori	$r13,$r13,0x80
    1e38:	0010b1cc 	add.d	$r12,$r14,$r12
    1e3c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e40:	0016b98c 	andn	$r12,$r12,$r14
    1e44:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e48:	0014b58c 	and	$r12,$r12,$r13
    1e4c:	44004580 	bnez	$r12,68(0x44) # 1e90 <strcpy+0xb4>
    1e50:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e54:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e58:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e5c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e60:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e64:	260000ae 	ldptr.d	$r14,$r5,0
    1e68:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e6c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e70:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e74:	038201ed 	ori	$r13,$r15,0x80
    1e78:	0010b1cc 	add.d	$r12,$r14,$r12
    1e7c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1e80:	0016b98c 	andn	$r12,$r12,$r14
    1e84:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1e88:	0014b58c 	and	$r12,$r12,$r13
    1e8c:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e58 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1e90:	280000ac 	ld.b	$r12,$r5,0
    1e94:	2900008c 	st.b	$r12,$r4,0
    1e98:	40001d80 	beqz	$r12,28(0x1c) # 1eb4 <strcpy+0xd8>
    1e9c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ea0:	280000ac 	ld.b	$r12,$r5,0
    1ea4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ea8:	2900008c 	st.b	$r12,$r4,0
    1eac:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1e9c <strcpy+0xc0>
        ;
    return d;
}
    1eb0:	4c000020 	jirl	$r0,$r1,0
    1eb4:	4c000020 	jirl	$r0,$r1,0
    1eb8:	4c000020 	jirl	$r0,$r1,0

0000000000001ebc <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ebc:	0015948c 	xor	$r12,$r4,$r5
    1ec0:	03401d8c 	andi	$r12,$r12,0x7
    1ec4:	4400ad80 	bnez	$r12,172(0xac) # 1f70 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1ec8:	03401cac 	andi	$r12,$r5,0x7
    1ecc:	44010180 	bnez	$r12,256(0x100) # 1fcc <strncpy+0x110>
            ;
        if (!n || !*s)
    1ed0:	400100c0 	beqz	$r6,256(0x100) # 1fd0 <strncpy+0x114>
    1ed4:	280000af 	ld.b	$r15,$r5,0
    1ed8:	400105e0 	beqz	$r15,260(0x104) # 1fdc <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1edc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1ee0:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21b8 <strncpy+0x2fc>
    1ee4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ee8:	260000ae 	ldptr.d	$r14,$r5,0
    1eec:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ef0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ef4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ef8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1efc:	038201ad 	ori	$r13,$r13,0x80
    1f00:	0010b1cc 	add.d	$r12,$r14,$r12
    1f04:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f08:	0016b98c 	andn	$r12,$r12,$r14
    1f0c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f10:	0014b58c 	and	$r12,$r12,$r13
    1f14:	4402a580 	bnez	$r12,676(0x2a4) # 21b8 <strncpy+0x2fc>
    1f18:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f1c:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f20:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f24:	50001c00 	b	28(0x1c) # 1f40 <strncpy+0x84>
    1f28:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f2c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f30:	0016b98c 	andn	$r12,$r12,$r14
    1f34:	0014b58c 	and	$r12,$r12,$r13
    1f38:	44024580 	bnez	$r12,580(0x244) # 217c <strncpy+0x2c0>
    1f3c:	001501e5 	move	$r5,$r15
    1f40:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f44:	0382020d 	ori	$r13,$r16,0x80
    1f48:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f4c:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f50:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f54:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f58:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f5c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f60:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f64:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f68:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f28 <strncpy+0x6c>
    1f6c:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f70:	400060c0 	beqz	$r6,96(0x60) # 1fd0 <strncpy+0x114>
    1f74:	280000ac 	ld.b	$r12,$r5,0
    1f78:	0015008d 	move	$r13,$r4
    1f7c:	2900008c 	st.b	$r12,$r4,0
    1f80:	44001580 	bnez	$r12,20(0x14) # 1f94 <strncpy+0xd8>
    1f84:	50005c00 	b	92(0x5c) # 1fe0 <strncpy+0x124>
    1f88:	280000ac 	ld.b	$r12,$r5,0
    1f8c:	290001ac 	st.b	$r12,$r13,0
    1f90:	40005180 	beqz	$r12,80(0x50) # 1fe0 <strncpy+0x124>
    1f94:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1f98:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f9c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fa0:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1f88 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fa4:	001501a4 	move	$r4,$r13
    1fa8:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fac:	280000ac 	ld.b	$r12,$r5,0
    1fb0:	2900008c 	st.b	$r12,$r4,0
    1fb4:	40002980 	beqz	$r12,40(0x28) # 1fdc <strncpy+0x120>
    1fb8:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fbc:	03401cac 	andi	$r12,$r5,0x7
    1fc0:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fc4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fc8:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ed0 <strncpy+0x14>
    1fcc:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fac <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1fd0:	0015008d 	move	$r13,$r4
}
    1fd4:	001501a4 	move	$r4,$r13
    1fd8:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    1fdc:	0015008d 	move	$r13,$r4
    1fe0:	0011b40c 	sub.d	$r12,$r0,$r13
    1fe4:	03401d8c 	andi	$r12,$r12,0x7
    1fe8:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    1fec:	02402dcf 	sltui	$r15,$r14,11(0xb)
    1ff0:	02802c10 	addi.w	$r16,$r0,11(0xb)
    1ff4:	0013bdce 	masknez	$r14,$r14,$r15
    1ff8:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    1ffc:	00133e0f 	maskeqz	$r15,$r16,$r15
    2000:	00153dce 	or	$r14,$r14,$r15
    2004:	024004d0 	sltui	$r16,$r6,1(0x1)
    2008:	00131a31 	maskeqz	$r17,$r17,$r6
    200c:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2010:	001540d0 	or	$r16,$r6,$r16
    2014:	68017a2e 	bltu	$r17,$r14,376(0x178) # 218c <strncpy+0x2d0>
    2018:	40015980 	beqz	$r12,344(0x158) # 2170 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    201c:	290001a0 	st.b	$r0,$r13,0
    2020:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2024:	5801458f 	beq	$r12,$r15,324(0x144) # 2168 <strncpy+0x2ac>
    2028:	290005a0 	st.b	$r0,$r13,1(0x1)
    202c:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2030:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2034:	5801658f 	beq	$r12,$r15,356(0x164) # 2198 <strncpy+0x2dc>
    2038:	290009a0 	st.b	$r0,$r13,2(0x2)
    203c:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2040:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2044:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2160 <strncpy+0x2a4>
    2048:	29000da0 	st.b	$r0,$r13,3(0x3)
    204c:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2050:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2054:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21a0 <strncpy+0x2e4>
    2058:	290011a0 	st.b	$r0,$r13,4(0x4)
    205c:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2060:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2064:	5801458f 	beq	$r12,$r15,324(0x144) # 21a8 <strncpy+0x2ec>
    2068:	290015a0 	st.b	$r0,$r13,5(0x5)
    206c:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2070:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2074:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21b0 <strncpy+0x2f4>
    2078:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    207c:	290019a0 	st.b	$r0,$r13,6(0x6)
    2080:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2084:	0011b210 	sub.d	$r16,$r16,$r12
    2088:	00450e11 	srli.d	$r17,$r16,0x3
    208c:	0010b1ac 	add.d	$r12,$r13,$r12
    2090:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2094:	27000180 	stptr.d	$r0,$r12,0
    2098:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    209c:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2094 <strncpy+0x1d8>
    20a0:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20a4:	0014c611 	and	$r17,$r16,$r17
    20a8:	0040822f 	slli.w	$r15,$r17,0x0
    20ac:	001049ef 	add.w	$r15,$r15,$r18
    20b0:	0010c5cc 	add.d	$r12,$r14,$r17
    20b4:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fa4 <strncpy+0xe8>
    20b8:	29000180 	st.b	$r0,$r12,0
    20bc:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20c0:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fa4 <strncpy+0xe8>
    20c4:	29000580 	st.b	$r0,$r12,1(0x1)
    20c8:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20cc:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fa4 <strncpy+0xe8>
    20d0:	29000980 	st.b	$r0,$r12,2(0x2)
    20d4:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20d8:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fa4 <strncpy+0xe8>
    20dc:	29000d80 	st.b	$r0,$r12,3(0x3)
    20e0:	028011ee 	addi.w	$r14,$r15,4(0x4)
    20e4:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fa4 <strncpy+0xe8>
    20e8:	29001180 	st.b	$r0,$r12,4(0x4)
    20ec:	028015ee 	addi.w	$r14,$r15,5(0x5)
    20f0:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fa4 <strncpy+0xe8>
    20f4:	29001580 	st.b	$r0,$r12,5(0x5)
    20f8:	028019ee 	addi.w	$r14,$r15,6(0x6)
    20fc:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fa4 <strncpy+0xe8>
    2100:	29001980 	st.b	$r0,$r12,6(0x6)
    2104:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2108:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fa4 <strncpy+0xe8>
    210c:	29001d80 	st.b	$r0,$r12,7(0x7)
    2110:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2114:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fa4 <strncpy+0xe8>
    2118:	29002180 	st.b	$r0,$r12,8(0x8)
    211c:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2120:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fa4 <strncpy+0xe8>
    2124:	29002580 	st.b	$r0,$r12,9(0x9)
    2128:	028029ee 	addi.w	$r14,$r15,10(0xa)
    212c:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fa4 <strncpy+0xe8>
    2130:	29002980 	st.b	$r0,$r12,10(0xa)
    2134:	02802dee 	addi.w	$r14,$r15,11(0xb)
    2138:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fa4 <strncpy+0xe8>
    213c:	29002d80 	st.b	$r0,$r12,11(0xb)
    2140:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2144:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fa4 <strncpy+0xe8>
    2148:	29003180 	st.b	$r0,$r12,12(0xc)
    214c:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2150:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fa4 <strncpy+0xe8>
    2154:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2158:	001501a4 	move	$r4,$r13
    215c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2160:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2164:	53ff23ff 	b	-224(0xfffff20) # 2084 <strncpy+0x1c8>
    2168:	02800412 	addi.w	$r18,$r0,1(0x1)
    216c:	53ff1bff 	b	-232(0xfffff18) # 2084 <strncpy+0x1c8>
    2170:	001501ae 	move	$r14,$r13
    2174:	00150012 	move	$r18,$r0
    2178:	53ff0fff 	b	-244(0xfffff0c) # 2084 <strncpy+0x1c8>
    217c:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2180:	0015008d 	move	$r13,$r4
    2184:	001501e5 	move	$r5,$r15
    2188:	53fdf7ff 	b	-524(0xffffdf4) # 1f7c <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    218c:	001501ac 	move	$r12,$r13
    2190:	0015000f 	move	$r15,$r0
    2194:	53ff27ff 	b	-220(0xfffff24) # 20b8 <strncpy+0x1fc>
    2198:	02800812 	addi.w	$r18,$r0,2(0x2)
    219c:	53feebff 	b	-280(0xffffee8) # 2084 <strncpy+0x1c8>
    21a0:	02801012 	addi.w	$r18,$r0,4(0x4)
    21a4:	53fee3ff 	b	-288(0xffffee0) # 2084 <strncpy+0x1c8>
    21a8:	02801412 	addi.w	$r18,$r0,5(0x5)
    21ac:	53fedbff 	b	-296(0xffffed8) # 2084 <strncpy+0x1c8>
    21b0:	02801812 	addi.w	$r18,$r0,6(0x6)
    21b4:	53fed3ff 	b	-304(0xffffed0) # 2084 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21b8:	2900008f 	st.b	$r15,$r4,0
    21bc:	0015008d 	move	$r13,$r4
    21c0:	53fdd7ff 	b	-556(0xffffdd4) # 1f94 <strncpy+0xd8>

00000000000021c4 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21c4:	0015008c 	move	$r12,$r4
    21c8:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21cc:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21d0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21d4:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21d8:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21dc:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    21e0:	00408084 	slli.w	$r4,$r4,0x0
}
    21e4:	4c000020 	jirl	$r0,$r1,0

00000000000021e8 <openat>:
    register long a7 __asm__("a7") = n;
    21e8:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    21ec:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    21f0:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    21f4:	00408084 	slli.w	$r4,$r4,0x0
}
    21f8:	4c000020 	jirl	$r0,$r1,0

00000000000021fc <close>:
    register long a7 __asm__("a7") = n;
    21fc:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2200:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2204:	00408084 	slli.w	$r4,$r4,0x0
}
    2208:	4c000020 	jirl	$r0,$r1,0

000000000000220c <read>:
    register long a7 __asm__("a7") = n;
    220c:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2210:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2214:	4c000020 	jirl	$r0,$r1,0

0000000000002218 <write>:
    register long a7 __asm__("a7") = n;
    2218:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    221c:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2220:	4c000020 	jirl	$r0,$r1,0

0000000000002224 <getpid>:
    register long a7 __asm__("a7") = n;
    2224:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    2228:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    222c:	00408084 	slli.w	$r4,$r4,0x0
}
    2230:	4c000020 	jirl	$r0,$r1,0

0000000000002234 <getppid>:
    register long a7 __asm__("a7") = n;
    2234:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    2238:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    223c:	00408084 	slli.w	$r4,$r4,0x0
}
    2240:	4c000020 	jirl	$r0,$r1,0

0000000000002244 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2244:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    2248:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    224c:	00408084 	slli.w	$r4,$r4,0x0
}
    2250:	4c000020 	jirl	$r0,$r1,0

0000000000002254 <fork>:
    register long a7 __asm__("a7") = n;
    2254:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2258:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    225c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2260:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2264:	00408084 	slli.w	$r4,$r4,0x0
}
    2268:	4c000020 	jirl	$r0,$r1,0

000000000000226c <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    226c:	001500c5 	move	$r5,$r6
    if (stack)
    2270:	400008c0 	beqz	$r6,8(0x8) # 2278 <clone+0xc>
	stack += stack_size;
    2274:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2278:	00408106 	slli.w	$r6,$r8,0x0
    227c:	00150009 	move	$r9,$r0
    2280:	00150008 	move	$r8,$r0
    2284:	00150007 	move	$r7,$r0
    2288:	5002c800 	b	712(0x2c8) # 2550 <__clone>

000000000000228c <exit>:
    register long a7 __asm__("a7") = n;
    228c:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2290:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <waitpid>:
    register long a7 __asm__("a7") = n;
    2298:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    229c:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22a0:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22a4:	00408084 	slli.w	$r4,$r4,0x0
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <exec>:
    register long a7 __asm__("a7") = n;
    22ac:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22b0:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22b4:	00408084 	slli.w	$r4,$r4,0x0
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <execve>:
    register long a7 __asm__("a7") = n;
    22bc:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22c0:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <times>:
    register long a7 __asm__("a7") = n;
    22cc:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22d0:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22d4:	00408084 	slli.w	$r4,$r4,0x0
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <get_time>:

int64 get_time()
{
    22dc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    22e0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    22e4:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    22e8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22ec:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    22f0:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    22f4:	44003c80 	bnez	$r4,60(0x3c) # 2330 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    22f8:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    22fc:	039f3c8c 	ori	$r12,$r4,0x7cf
    2300:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2304:	2a40006d 	ld.hu	$r13,$r3,0
    2308:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    230c:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2310:	00450c84 	srli.d	$r4,$r4,0x3
    2314:	001eb084 	mulh.du	$r4,$r4,$r12
    2318:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    231c:	001db1ac 	mul.d	$r12,$r13,$r12
    2320:	00451084 	srli.d	$r4,$r4,0x4
    2324:	00109184 	add.d	$r4,$r12,$r4
}
    2328:	02c04063 	addi.d	$r3,$r3,16(0x10)
    232c:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2330:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2334:	53fff7ff 	b	-12(0xffffff4) # 2328 <get_time+0x4c>

0000000000002338 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    2338:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    233c:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2340:	00408084 	slli.w	$r4,$r4,0x0
}
    2344:	4c000020 	jirl	$r0,$r1,0

0000000000002348 <time>:
    register long a7 __asm__("a7") = n;
    2348:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    234c:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2350:	00408084 	slli.w	$r4,$r4,0x0
}
    2354:	4c000020 	jirl	$r0,$r1,0

0000000000002358 <sleep>:

int sleep(unsigned long long time)
{
    2358:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    235c:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2360:	00150064 	move	$r4,$r3
    2364:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2368:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    236c:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2370:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2374:	44001080 	bnez	$r4,16(0x10) # 2384 <sleep+0x2c>
    return 0;
    2378:	00150004 	move	$r4,$r0
}
    237c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2380:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2384:	24000064 	ldptr.w	$r4,$r3,0
}
    2388:	02c04063 	addi.d	$r3,$r3,16(0x10)
    238c:	4c000020 	jirl	$r0,$r1,0

0000000000002390 <set_priority>:
    register long a7 __asm__("a7") = n;
    2390:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2394:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2398:	00408084 	slli.w	$r4,$r4,0x0
}
    239c:	4c000020 	jirl	$r0,$r1,0

00000000000023a0 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23a0:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23a4:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23a8:	4c000020 	jirl	$r0,$r1,0

00000000000023ac <munmap>:
    register long a7 __asm__("a7") = n;
    23ac:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23b0:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23b4:	00408084 	slli.w	$r4,$r4,0x0
}
    23b8:	4c000020 	jirl	$r0,$r1,0

00000000000023bc <wait>:

int wait(int *code)
{
    23bc:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23c0:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23c4:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23c8:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23cc:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23d0:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23d4:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23d8:	4c000020 	jirl	$r0,$r1,0

00000000000023dc <spawn>:
    register long a7 __asm__("a7") = n;
    23dc:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    23e0:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    23e4:	00408084 	slli.w	$r4,$r4,0x0
}
    23e8:	4c000020 	jirl	$r0,$r1,0

00000000000023ec <mailread>:
    register long a7 __asm__("a7") = n;
    23ec:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23f0:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    23f4:	00408084 	slli.w	$r4,$r4,0x0
}
    23f8:	4c000020 	jirl	$r0,$r1,0

00000000000023fc <mailwrite>:
    register long a7 __asm__("a7") = n;
    23fc:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2400:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2404:	00408084 	slli.w	$r4,$r4,0x0
}
    2408:	4c000020 	jirl	$r0,$r1,0

000000000000240c <fstat>:
    register long a7 __asm__("a7") = n;
    240c:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2410:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2414:	00408084 	slli.w	$r4,$r4,0x0
}
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <sys_linkat>:
    register long a7 __asm__("a7") = n;
    241c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2420:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2424:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2430:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2434:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2438:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <link>:

int link(char *old_path, char *new_path)
{
    2444:	0015008c 	move	$r12,$r4
    2448:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    244c:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2450:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2454:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2458:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    245c:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2460:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2464:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2468:	4c000020 	jirl	$r0,$r1,0

000000000000246c <unlink>:

int unlink(char *path)
{
    246c:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2470:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2474:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2478:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    247c:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2480:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <uname>:
    register long a7 __asm__("a7") = n;
    2488:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    248c:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2490:	00408084 	slli.w	$r4,$r4,0x0
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <brk>:
    register long a7 __asm__("a7") = n;
    2498:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    249c:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24a0:	00408084 	slli.w	$r4,$r4,0x0
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <getcwd>:
    register long a7 __asm__("a7") = n;
    24a8:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24ac:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24b0:	4c000020 	jirl	$r0,$r1,0

00000000000024b4 <chdir>:
    register long a7 __asm__("a7") = n;
    24b4:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24b8:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24bc:	00408084 	slli.w	$r4,$r4,0x0
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24c4:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24c8:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24cc:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24d0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24d4:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24d8:	002b0000 	syscall	0x0
    24dc:	00408084 	slli.w	$r4,$r4,0x0
}
    24e0:	4c000020 	jirl	$r0,$r1,0

00000000000024e4 <getdents>:
    register long a7 __asm__("a7") = n;
    24e4:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24e8:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    24ec:	00408084 	slli.w	$r4,$r4,0x0
}
    24f0:	4c000020 	jirl	$r0,$r1,0

00000000000024f4 <pipe>:
    register long a7 __asm__("a7") = n;
    24f4:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    24f8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24fc:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <dup>:
    register long a7 __asm__("a7") = n;
    2508:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    250c:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2510:	00408084 	slli.w	$r4,$r4,0x0
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <dup2>:
    register long a7 __asm__("a7") = n;
    2518:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    251c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2520:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2524:	00408084 	slli.w	$r4,$r4,0x0
}
    2528:	4c000020 	jirl	$r0,$r1,0

000000000000252c <mount>:
    register long a7 __asm__("a7") = n;
    252c:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2530:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <umount>:
    register long a7 __asm__("a7") = n;
    253c:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2540:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2544:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2550:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2554:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2558:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    255c:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2560:	00150106 	move	$r6,$r8
	move $a3, $a5
    2564:	00150127 	move	$r7,$r9
	move $a4, $a6
    2568:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    256c:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2570:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2574:	40000880 	beqz	$r4,8(0x8) # 257c <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2578:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    257c:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2580:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2584:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2588:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    258c:	002b0000 	syscall	0x0
