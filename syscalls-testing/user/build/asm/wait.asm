
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/wait:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	5400f800 	bl	248(0xf8) # 10fc <__start_main>

0000000000001008 <test_wait>:
#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"

void test_wait(void){
    1008:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d6b084 	addi.d	$r4,$r4,1452(0x5ac)
void test_wait(void){
    1014:	29c0a061 	st.d	$r1,$r3,40(0x28)
    1018:	29c08077 	st.d	$r23,$r3,32(0x20)
    101c:	29c06078 	st.d	$r24,$r3,24(0x18)
    TEST_START(__func__);
    1020:	5403e400 	bl	996(0x3e4) # 1404 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02d93084 	addi.d	$r4,$r4,1612(0x64c)
    102c:	5403d800 	bl	984(0x3d8) # 1404 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d68084 	addi.d	$r4,$r4,1440(0x5a0)
    1038:	5403cc00 	bl	972(0x3cc) # 1404 <puts>
    int cpid, wstatus;
    cpid = fork();
    103c:	54123c00 	bl	4668(0x123c) # 2278 <fork>
    if(cpid == 0){
    1040:	44005080 	bnez	$r4,80(0x50) # 1090 <test_wait+0x88>
	printf("This is child process\n");
    1044:	1c000024 	pcaddu12i	$r4,1(0x1)
    1048:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    104c:	5403f000 	bl	1008(0x3f0) # 143c <printf>
        exit(0);
    1050:	00150004 	move	$r4,$r0
    1054:	54125c00 	bl	4700(0x125c) # 22b0 <exit>
	if(ret == cpid)
	    printf("wait child success.\nwstatus: %d\n", wstatus);
	else
	    printf("wait child error.\n");
    }
    TEST_END(__func__);
    1058:	1c000024 	pcaddu12i	$r4,1(0x1)
    105c:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1060:	5403a400 	bl	932(0x3a4) # 1404 <puts>
    1064:	1c000024 	pcaddu12i	$r4,1(0x1)
    1068:	02d83084 	addi.d	$r4,$r4,1548(0x60c)
    106c:	54039800 	bl	920(0x398) # 1404 <puts>
    1070:	1c000024 	pcaddu12i	$r4,1(0x1)
    1074:	02d58084 	addi.d	$r4,$r4,1376(0x560)
    1078:	54038c00 	bl	908(0x38c) # 1404 <puts>
}
    107c:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1080:	28c08077 	ld.d	$r23,$r3,32(0x20)
    1084:	28c06078 	ld.d	$r24,$r3,24(0x18)
    1088:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    108c:	4c000020 	jirl	$r0,$r1,0
	pid_t ret = wait(&wstatus);
    1090:	00150097 	move	$r23,$r4
    1094:	02c03064 	addi.d	$r4,$r3,12(0xc)
    1098:	54134800 	bl	4936(0x1348) # 23e0 <wait>
	assert(ret != -1);
    109c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
	pid_t ret = wait(&wstatus);
    10a0:	00150098 	move	$r24,$r4
	assert(ret != -1);
    10a4:	58002c8c 	beq	$r4,$r12,44(0x2c) # 10d0 <test_wait+0xc8>
	if(ret == cpid)
    10a8:	580016f8 	beq	$r23,$r24,20(0x14) # 10bc <test_wait+0xb4>
	    printf("wait child error.\n");
    10ac:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b0:	02d65084 	addi.d	$r4,$r4,1428(0x594)
    10b4:	54038800 	bl	904(0x388) # 143c <printf>
    10b8:	53ffa3ff 	b	-96(0xfffffa0) # 1058 <test_wait+0x50>
	    printf("wait child success.\nwstatus: %d\n", wstatus);
    10bc:	24000c65 	ldptr.w	$r5,$r3,12(0xc)
    10c0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c4:	02d56084 	addi.d	$r4,$r4,1368(0x558)
    10c8:	54037400 	bl	884(0x374) # 143c <printf>
    10cc:	53ff8fff 	b	-116(0xfffff8c) # 1058 <test_wait+0x50>
	assert(ret != -1);
    10d0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d4:	02d4a084 	addi.d	$r4,$r4,1320(0x528)
    10d8:	54067400 	bl	1652(0x674) # 174c <panic>
    10dc:	53ffcfff 	b	-52(0xfffffcc) # 10a8 <test_wait+0xa0>

00000000000010e0 <main>:

int main(void){
    10e0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    10e4:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_wait();
    10e8:	57ff23ff 	bl	-224(0xfffff20) # 1008 <test_wait>
    return 0;
}
    10ec:	28c02061 	ld.d	$r1,$r3,8(0x8)
    10f0:	00150004 	move	$r4,$r0
    10f4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    10f8:	4c000020 	jirl	$r0,$r1,0

00000000000010fc <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    10fc:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1100:	24000084 	ldptr.w	$r4,$r4,0
{
    1104:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1108:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    110c:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1110:	57ffd3ff 	bl	-48(0xfffffd0) # 10e0 <main>
    1114:	54119c00 	bl	4508(0x119c) # 22b0 <exit>
	return 0;
}
    1118:	28c02061 	ld.d	$r1,$r3,8(0x8)
    111c:	00150004 	move	$r4,$r0
    1120:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1124:	4c000020 	jirl	$r0,$r1,0

0000000000001128 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1128:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    112c:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1130:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 12fc <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1134:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1138:	1c00002c 	pcaddu12i	$r12,1(0x1)
    113c:	02d5218c 	addi.d	$r12,$r12,1352(0x548)
    1140:	002195cf 	mod.wu	$r15,$r14,$r5
    1144:	5c0008a0 	bne	$r5,$r0,8(0x8) # 114c <printint.constprop.0+0x24>
    1148:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    114c:	002115cd 	div.wu	$r13,$r14,$r5
    1150:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1158 <printint.constprop.0+0x30>
    1154:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1158:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    115c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1160:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1164:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1168:	680219c5 	bltu	$r14,$r5,536(0x218) # 1380 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    116c:	002195af 	mod.wu	$r15,$r13,$r5
    1170:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1178 <printint.constprop.0+0x50>
    1174:	002a0007 	break	0x7
    1178:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    117c:	002115ae 	div.wu	$r14,$r13,$r5
    1180:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1188 <printint.constprop.0+0x60>
    1184:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1188:	38203d8f 	ldx.bu	$r15,$r12,$r15
    118c:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1190:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1350 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1194:	002195cf 	mod.wu	$r15,$r14,$r5
    1198:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11a0 <printint.constprop.0+0x78>
    119c:	002a0007 	break	0x7
    11a0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11a4:	002115cd 	div.wu	$r13,$r14,$r5
    11a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b0 <printint.constprop.0+0x88>
    11ac:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11b0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11b4:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11b8:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 135c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11bc:	002195af 	mod.wu	$r15,$r13,$r5
    11c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c8 <printint.constprop.0+0xa0>
    11c4:	002a0007 	break	0x7
    11c8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11cc:	002115ae 	div.wu	$r14,$r13,$r5
    11d0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d8 <printint.constprop.0+0xb0>
    11d4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11d8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11dc:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    11e0:	680189a5 	bltu	$r13,$r5,392(0x188) # 1368 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    11e4:	002195cf 	mod.wu	$r15,$r14,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0xc8>
    11ec:	002a0007 	break	0x7
    11f0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11f4:	002115cd 	div.wu	$r13,$r14,$r5
    11f8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1200 <printint.constprop.0+0xd8>
    11fc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1200:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1204:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1208:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 1374 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    120c:	002195af 	mod.wu	$r15,$r13,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0xf0>
    1214:	002a0007 	break	0x7
    1218:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    121c:	002115ae 	div.wu	$r14,$r13,$r5
    1220:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1228 <printint.constprop.0+0x100>
    1224:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1228:	38203d8f 	ldx.bu	$r15,$r12,$r15
    122c:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1230:	680115a5 	bltu	$r13,$r5,276(0x114) # 1344 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1234:	002195cf 	mod.wu	$r15,$r14,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0x118>
    123c:	002a0007 	break	0x7
    1240:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1244:	002115cd 	div.wu	$r13,$r14,$r5
    1248:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1250 <printint.constprop.0+0x128>
    124c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1250:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1254:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1258:	680131c5 	bltu	$r14,$r5,304(0x130) # 1388 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    125c:	002195af 	mod.wu	$r15,$r13,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0x140>
    1264:	002a0007 	break	0x7
    1268:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    126c:	002115ae 	div.wu	$r14,$r13,$r5
    1270:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1278 <printint.constprop.0+0x150>
    1274:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1278:	38203d8f 	ldx.bu	$r15,$r12,$r15
    127c:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1280:	680115a5 	bltu	$r13,$r5,276(0x114) # 1394 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1284:	002195cf 	mod.wu	$r15,$r14,$r5
    1288:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1290 <printint.constprop.0+0x168>
    128c:	002a0007 	break	0x7
    1290:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1294:	002115cd 	div.wu	$r13,$r14,$r5
    1298:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a0 <printint.constprop.0+0x178>
    129c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12a0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12a4:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12a8:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13a0 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12ac:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12b0:	3820358d 	ldx.bu	$r13,$r12,$r13
    12b4:	02801805 	addi.w	$r5,$r0,6(0x6)
    12b8:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12bc:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    12c0:	64001880 	bge	$r4,$r0,24(0x18) # 12d8 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    12c4:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    12c8:	0010b1ad 	add.d	$r13,$r13,$r12
    12cc:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    12d0:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    12d4:	00150185 	move	$r5,$r12
    write(f, s, l);
    12d8:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    12dc:	02804006 	addi.w	$r6,$r0,16(0x10)
    12e0:	001114c6 	sub.w	$r6,$r6,$r5
    12e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    12e8:	00109585 	add.d	$r5,$r12,$r5
    12ec:	540f5000 	bl	3920(0xf50) # 223c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    12f0:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    12f4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    12f8:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    12fc:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1300:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1304:	02ce018c 	addi.d	$r12,$r12,896(0x380)
    1308:	002195cf 	mod.wu	$r15,$r14,$r5
    130c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1314 <printint.constprop.0+0x1ec>
    1310:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1314:	002115cd 	div.wu	$r13,$r14,$r5
    1318:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1320 <printint.constprop.0+0x1f8>
    131c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1320:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1324:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1328:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    132c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1330:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 116c <printint.constprop.0+0x44>
        buf[i--] = '-';
    1334:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1338:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    133c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1340:	53ff9bff 	b	-104(0xfffff98) # 12d8 <printint.constprop.0+0x1b0>
    1344:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1348:	02802805 	addi.w	$r5,$r0,10(0xa)
    134c:	53ff77ff 	b	-140(0xfffff74) # 12c0 <printint.constprop.0+0x198>
    1350:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1354:	02803805 	addi.w	$r5,$r0,14(0xe)
    1358:	53ff6bff 	b	-152(0xfffff68) # 12c0 <printint.constprop.0+0x198>
    135c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    1360:	02803405 	addi.w	$r5,$r0,13(0xd)
    1364:	53ff5fff 	b	-164(0xfffff5c) # 12c0 <printint.constprop.0+0x198>
    1368:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    136c:	02803005 	addi.w	$r5,$r0,12(0xc)
    1370:	53ff53ff 	b	-176(0xfffff50) # 12c0 <printint.constprop.0+0x198>
    1374:	0280280c 	addi.w	$r12,$r0,10(0xa)
    1378:	02802c05 	addi.w	$r5,$r0,11(0xb)
    137c:	53ff47ff 	b	-188(0xfffff44) # 12c0 <printint.constprop.0+0x198>
    i = 15;
    1380:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1384:	53ff57ff 	b	-172(0xfffff54) # 12d8 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    1388:	0280200c 	addi.w	$r12,$r0,8(0x8)
    138c:	02802405 	addi.w	$r5,$r0,9(0x9)
    1390:	53ff33ff 	b	-208(0xfffff30) # 12c0 <printint.constprop.0+0x198>
    1394:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1398:	02802005 	addi.w	$r5,$r0,8(0x8)
    139c:	53ff27ff 	b	-220(0xfffff24) # 12c0 <printint.constprop.0+0x198>
    13a0:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13a4:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13a8:	53ff1bff 	b	-232(0xfffff18) # 12c0 <printint.constprop.0+0x198>

00000000000013ac <getchar>:
{
    13ac:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13b0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13b4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13b8:	00150004 	move	$r4,$r0
{
    13bc:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    13c0:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    13c4:	540e6c00 	bl	3692(0xe6c) # 2230 <read>
}
    13c8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    13cc:	28003c64 	ld.b	$r4,$r3,15(0xf)
    13d0:	02c08063 	addi.d	$r3,$r3,32(0x20)
    13d4:	4c000020 	jirl	$r0,$r1,0

00000000000013d8 <putchar>:
{
    13d8:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    13dc:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    13e0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13e4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13e8:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    13ec:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13f0:	540e4c00 	bl	3660(0xe4c) # 223c <write>
}
    13f4:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    13f8:	00408084 	slli.w	$r4,$r4,0x0
}
    13fc:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1400:	4c000020 	jirl	$r0,$r1,0

0000000000001404 <puts>:
{
    1404:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1408:	29c02061 	st.d	$r1,$r3,8(0x8)
    140c:	27000077 	stptr.d	$r23,$r3,0
    1410:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1414:	5406d400 	bl	1748(0x6d4) # 1ae8 <strlen>
    1418:	00150086 	move	$r6,$r4
    141c:	001502e5 	move	$r5,$r23
    1420:	02800404 	addi.w	$r4,$r0,1(0x1)
    1424:	540e1800 	bl	3608(0xe18) # 223c <write>
}
    1428:	28c02061 	ld.d	$r1,$r3,8(0x8)
    142c:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1430:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1434:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1438:	4c000020 	jirl	$r0,$r1,0

000000000000143c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    143c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1440:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1444:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1448:	140000fa 	lu12i.w	$r26,7(0x7)
{
    144c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1450:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1454:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1458:	29c1a061 	st.d	$r1,$r3,104(0x68)
    145c:	29c18077 	st.d	$r23,$r3,96(0x60)
    1460:	29c16078 	st.d	$r24,$r3,88(0x58)
    1464:	0015009b 	move	$r27,$r4
    1468:	29c1e065 	st.d	$r5,$r3,120(0x78)
    146c:	29c20066 	st.d	$r6,$r3,128(0x80)
    1470:	29c22067 	st.d	$r7,$r3,136(0x88)
    1474:	29c24068 	st.d	$r8,$r3,144(0x90)
    1478:	29c26069 	st.d	$r9,$r3,152(0x98)
    147c:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1480:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1484:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    1488:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    148c:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1490:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1494:	02c7c39c 	addi.d	$r28,$r28,496(0x1f0)
        if (!*s)
    1498:	2800036c 	ld.b	$r12,$r27,0
    149c:	40008980 	beqz	$r12,136(0x88) # 1524 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14a0:	58027d99 	beq	$r12,$r25,636(0x27c) # 171c <printf+0x2e0>
    14a4:	00150366 	move	$r6,$r27
    14a8:	50000800 	b	8(0x8) # 14b0 <printf+0x74>
    14ac:	58009d99 	beq	$r12,$r25,156(0x9c) # 1548 <printf+0x10c>
    14b0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14b4:	280000cc 	ld.b	$r12,$r6,0
    14b8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14ac <printf+0x70>
    14bc:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    14c0:	0011ecd7 	sub.d	$r23,$r6,$r27
    14c4:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    14c8:	001502e6 	move	$r6,$r23
    14cc:	00150365 	move	$r5,$r27
    14d0:	02800404 	addi.w	$r4,$r0,1(0x1)
    14d4:	540d6800 	bl	3432(0xd68) # 223c <write>
        out(f, a, l);
        if (l)
    14d8:	4400b6e0 	bnez	$r23,180(0xb4) # 158c <printf+0x150>
            continue;
        if (s[1] == 0)
    14dc:	2800070c 	ld.b	$r12,$r24,1(0x1)
    14e0:	40004580 	beqz	$r12,68(0x44) # 1524 <printf+0xe8>
            break;
        switch (s[1])
    14e4:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    14e8:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15bc <printf+0x180>
    14ec:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1594 <printf+0x158>
    14f0:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    14f4:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 16e4 <printf+0x2a8>
    14f8:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    14fc:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16ac <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1500:	2600006c 	ldptr.d	$r12,$r3,0
    1504:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1508:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    150c:	24000184 	ldptr.w	$r4,$r12,0
    1510:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1514:	2700006c 	stptr.d	$r12,$r3,0
    1518:	57fc13ff 	bl	-1008(0xffffc10) # 1128 <printint.constprop.0>
        if (!*s)
    151c:	2800036c 	ld.b	$r12,$r27,0
    1520:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14a0 <printf+0x64>
    }
    va_end(ap);
}
    1524:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1528:	28c18077 	ld.d	$r23,$r3,96(0x60)
    152c:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1530:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1534:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1538:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    153c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1540:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1544:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1548:	280004cc 	ld.b	$r12,$r6,1(0x1)
    154c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14bc <printf+0x80>
    1550:	001500d8 	move	$r24,$r6
    1554:	50000c00 	b	12(0xc) # 1560 <printf+0x124>
    1558:	2800070c 	ld.b	$r12,$r24,1(0x1)
    155c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 14c0 <printf+0x84>
    1560:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    1564:	2800030c 	ld.b	$r12,$r24,0
    1568:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    156c:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1558 <printf+0x11c>
        l = z - a;
    1570:	0011ecd7 	sub.d	$r23,$r6,$r27
    1574:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1578:	001502e6 	move	$r6,$r23
    157c:	00150365 	move	$r5,$r27
    1580:	02800404 	addi.w	$r4,$r0,1(0x1)
    1584:	540cb800 	bl	3256(0xcb8) # 223c <write>
        if (l)
    1588:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 14dc <printf+0xa0>
    158c:	0015031b 	move	$r27,$r24
    1590:	53ff0bff 	b	-248(0xfffff08) # 1498 <printf+0x5c>
        switch (s[1])
    1594:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1598:	5c01158d 	bne	$r12,$r13,276(0x114) # 16ac <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    159c:	2600006c 	ldptr.d	$r12,$r3,0
    15a0:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15a4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15a8:	24000184 	ldptr.w	$r4,$r12,0
    15ac:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15b0:	2700006c 	stptr.d	$r12,$r3,0
    15b4:	57fb77ff 	bl	-1164(0xffffb74) # 1128 <printint.constprop.0>
        s += 2;
    15b8:	53ff67ff 	b	-156(0xfffff64) # 151c <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15bc:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    15c0:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    15c4:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    15c8:	260001ac 	ldptr.d	$r12,$r13,0
    15cc:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    15d0:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    15d4:	0045f18a 	srli.d	$r10,$r12,0x3c
    15d8:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    15dc:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    15e0:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    15e4:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    15e8:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    15ec:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    15f0:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    15f4:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    15f8:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    15fc:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1600:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1604:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1608:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    160c:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1610:	3820278a 	ldx.bu	$r10,$r28,$r9
    1614:	38202389 	ldx.bu	$r9,$r28,$r8
    1618:	38201f88 	ldx.bu	$r8,$r28,$r7
    161c:	38201787 	ldx.bu	$r7,$r28,$r5
    1620:	38201385 	ldx.bu	$r5,$r28,$r4
    1624:	38205384 	ldx.bu	$r4,$r28,$r20
    1628:	38204f94 	ldx.bu	$r20,$r28,$r19
    162c:	38204b93 	ldx.bu	$r19,$r28,$r18
    1630:	38204792 	ldx.bu	$r18,$r28,$r17
    1634:	38204391 	ldx.bu	$r17,$r28,$r16
    1638:	38203f90 	ldx.bu	$r16,$r28,$r15
    163c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1640:	3820378e 	ldx.bu	$r14,$r28,$r13
    1644:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1648:	03403d8c 	andi	$r12,$r12,0xf
    164c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1650:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1654:	29003069 	st.b	$r9,$r3,12(0xc)
    1658:	29003468 	st.b	$r8,$r3,13(0xd)
    165c:	29003867 	st.b	$r7,$r3,14(0xe)
    1660:	29003c65 	st.b	$r5,$r3,15(0xf)
    1664:	29004064 	st.b	$r4,$r3,16(0x10)
    1668:	29004474 	st.b	$r20,$r3,17(0x11)
    166c:	29004873 	st.b	$r19,$r3,18(0x12)
    1670:	29004c72 	st.b	$r18,$r3,19(0x13)
    1674:	29005071 	st.b	$r17,$r3,20(0x14)
    1678:	29005470 	st.b	$r16,$r3,21(0x15)
    167c:	2900586f 	st.b	$r15,$r3,22(0x16)
    1680:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1684:	3820378d 	ldx.bu	$r13,$r28,$r13
    1688:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    168c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1690:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1694:	2900606d 	st.b	$r13,$r3,24(0x18)
    1698:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    169c:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16a0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16a4:	540b9800 	bl	2968(0xb98) # 223c <write>
        s += 2;
    16a8:	53fe77ff 	b	-396(0xffffe74) # 151c <printf+0xe0>
    char byte = c;
    16ac:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16b0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16b4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16b8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16bc:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    16c0:	540b7c00 	bl	2940(0xb7c) # 223c <write>
    char byte = c;
    16c4:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    16c8:	02800406 	addi.w	$r6,$r0,1(0x1)
    16cc:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16d0:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16d4:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    16d8:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    16dc:	540b6000 	bl	2912(0xb60) # 223c <write>
        s += 2;
    16e0:	53fe3fff 	b	-452(0xffffe3c) # 151c <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    16e4:	2600006c 	ldptr.d	$r12,$r3,0
    16e8:	26000197 	ldptr.d	$r23,$r12,0
    16ec:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    16f0:	2700006c 	stptr.d	$r12,$r3,0
    16f4:	40004ee0 	beqz	$r23,76(0x4c) # 1740 <printf+0x304>
            l = strnlen(a, 200);
    16f8:	02832005 	addi.w	$r5,$r0,200(0xc8)
    16fc:	001502e4 	move	$r4,$r23
    1700:	5405d000 	bl	1488(0x5d0) # 1cd0 <strnlen>
    1704:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1708:	001502e5 	move	$r5,$r23
    170c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1710:	540b2c00 	bl	2860(0xb2c) # 223c <write>
        s += 2;
    1714:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1718:	53fe07ff 	b	-508(0xffffe04) # 151c <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    171c:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1720:	00150366 	move	$r6,$r27
    1724:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1550 <printf+0x114>
    write(f, s, l);
    1728:	00150006 	move	$r6,$r0
    172c:	00150365 	move	$r5,$r27
    1730:	02800404 	addi.w	$r4,$r0,1(0x1)
    1734:	540b0800 	bl	2824(0xb08) # 223c <write>
    1738:	00150378 	move	$r24,$r27
    173c:	53fda3ff 	b	-608(0xffffda0) # 14dc <printf+0xa0>
                a = "(null)";
    1740:	1c000037 	pcaddu12i	$r23,1(0x1)
    1744:	02fca2f7 	addi.d	$r23,$r23,-216(0xf28)
    1748:	53ffb3ff 	b	-80(0xfffffb0) # 16f8 <printf+0x2bc>

000000000000174c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    174c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1750:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1754:	57fcb3ff 	bl	-848(0xffffcb0) # 1404 <puts>
    exit(-100);
}
    1758:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    175c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    1760:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    1764:	500b4c00 	b	2892(0xb4c) # 22b0 <exit>

0000000000001768 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    1768:	0280800c 	addi.w	$r12,$r0,32(0x20)
    176c:	5800108c 	beq	$r4,$r12,16(0x10) # 177c <isspace+0x14>
    1770:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    1774:	02401484 	sltui	$r4,$r4,5(0x5)
    1778:	4c000020 	jirl	$r0,$r1,0
    177c:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1780:	4c000020 	jirl	$r0,$r1,0

0000000000001784 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1784:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    1788:	02402884 	sltui	$r4,$r4,10(0xa)
    178c:	4c000020 	jirl	$r0,$r1,0

0000000000001790 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1790:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1794:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1798:	2800008d 	ld.b	$r13,$r4,0
    179c:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17a0:	580061ae 	beq	$r13,$r14,96(0x60) # 1800 <atoi+0x70>
    17a4:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1800 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17a8:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17ac:	580065ac 	beq	$r13,$r12,100(0x64) # 1810 <atoi+0x80>
    17b0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17b4:	58007dac 	beq	$r13,$r12,124(0x7c) # 1830 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17b8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17bc:	0280240e 	addi.w	$r14,$r0,9(0x9)
    17c0:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    17c4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    17c8:	680061cf 	bltu	$r14,$r15,96(0x60) # 1828 <atoi+0x98>
    int n = 0, neg = 0;
    17cc:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    17d0:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    17d4:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    17d8:	001c126f 	mul.w	$r15,$r19,$r4
    17dc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    17e0:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    17e4:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    17e8:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    17ec:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    17f0:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    17f4:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 17d8 <atoi+0x48>
    return neg ? n : -n;
    17f8:	40001280 	beqz	$r20,16(0x10) # 1808 <atoi+0x78>
}
    17fc:	4c000020 	jirl	$r0,$r1,0
        s++;
    1800:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1804:	53ff97ff 	b	-108(0xfffff94) # 1798 <atoi+0x8>
    1808:	00113e04 	sub.w	$r4,$r16,$r15
    180c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1810:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1814:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1818:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    181c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1820:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1824:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 17cc <atoi+0x3c>
    1828:	00150004 	move	$r4,$r0
}
    182c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1830:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1834:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1838:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    183c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1840:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1828 <atoi+0x98>
        neg = 1;
    1844:	02800414 	addi.w	$r20,$r0,1(0x1)
    1848:	53ff87ff 	b	-124(0xfffff84) # 17cc <atoi+0x3c>

000000000000184c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    184c:	400198c0 	beqz	$r6,408(0x198) # 19e4 <memset+0x198>
    1850:	0011900c 	sub.d	$r12,$r0,$r4
    1854:	03401d8c 	andi	$r12,$r12,0x7
    1858:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    185c:	02402dae 	sltui	$r14,$r13,11(0xb)
    1860:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    1864:	0013b9ad 	masknez	$r13,$r13,$r14
    1868:	001339ee 	maskeqz	$r14,$r15,$r14
    186c:	001539ad 	or	$r13,$r13,$r14
    1870:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    1874:	00005ca5 	ext.w.b	$r5,$r5
    1878:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a08 <memset+0x1bc>
    187c:	40018180 	beqz	$r12,384(0x180) # 19fc <memset+0x1b0>
    1880:	29000085 	st.b	$r5,$r4,0
    1884:	0280040d 	addi.w	$r13,$r0,1(0x1)
    1888:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    188c:	5801698d 	beq	$r12,$r13,360(0x168) # 19f4 <memset+0x1a8>
    1890:	29000485 	st.b	$r5,$r4,1(0x1)
    1894:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1898:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    189c:	5801798d 	beq	$r12,$r13,376(0x178) # 1a14 <memset+0x1c8>
    18a0:	29000885 	st.b	$r5,$r4,2(0x2)
    18a4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18a8:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18ac:	58013d8d 	beq	$r12,$r13,316(0x13c) # 19e8 <memset+0x19c>
    18b0:	29000c85 	st.b	$r5,$r4,3(0x3)
    18b4:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18b8:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18bc:	5801618d 	beq	$r12,$r13,352(0x160) # 1a1c <memset+0x1d0>
    18c0:	29001085 	st.b	$r5,$r4,4(0x4)
    18c4:	0280140d 	addi.w	$r13,$r0,5(0x5)
    18c8:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    18cc:	5801598d 	beq	$r12,$r13,344(0x158) # 1a24 <memset+0x1d8>
    18d0:	29001485 	st.b	$r5,$r4,5(0x5)
    18d4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    18d8:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    18dc:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a2c <memset+0x1e0>
    18e0:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    18e4:	29001885 	st.b	$r5,$r4,6(0x6)
    18e8:	02801c11 	addi.w	$r17,$r0,7(0x7)
    18ec:	0015000d 	move	$r13,$r0
    18f0:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    18f4:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    18f8:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    18fc:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1900:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1904:	0011b0d0 	sub.d	$r16,$r6,$r12
    1908:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    190c:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1910:	0010b08c 	add.d	$r12,$r4,$r12
    1914:	00450e0f 	srli.d	$r15,$r16,0x3
    1918:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    191c:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1920:	2700018d 	stptr.d	$r13,$r12,0
    1924:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1928:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1920 <memset+0xd4>
    192c:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1930:	0014be0f 	and	$r15,$r16,$r15
    1934:	004081ed 	slli.w	$r13,$r15,0x0
    1938:	0010bdcc 	add.d	$r12,$r14,$r15
    193c:	001045ad 	add.w	$r13,$r13,$r17
    1940:	5800b20f 	beq	$r16,$r15,176(0xb0) # 19f0 <memset+0x1a4>
    1944:	29000185 	st.b	$r5,$r12,0
    1948:	028005ae 	addi.w	$r14,$r13,1(0x1)
    194c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 19e4 <memset+0x198>
    1950:	29000585 	st.b	$r5,$r12,1(0x1)
    1954:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1958:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 19e4 <memset+0x198>
    195c:	29000985 	st.b	$r5,$r12,2(0x2)
    1960:	02800dae 	addi.w	$r14,$r13,3(0x3)
    1964:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 19e4 <memset+0x198>
    1968:	29000d85 	st.b	$r5,$r12,3(0x3)
    196c:	028011ae 	addi.w	$r14,$r13,4(0x4)
    1970:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 19e4 <memset+0x198>
    1974:	29001185 	st.b	$r5,$r12,4(0x4)
    1978:	028015ae 	addi.w	$r14,$r13,5(0x5)
    197c:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 19e4 <memset+0x198>
    1980:	29001585 	st.b	$r5,$r12,5(0x5)
    1984:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1988:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 19e4 <memset+0x198>
    198c:	29001985 	st.b	$r5,$r12,6(0x6)
    1990:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1994:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 19e4 <memset+0x198>
    1998:	29001d85 	st.b	$r5,$r12,7(0x7)
    199c:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19a0:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 19e4 <memset+0x198>
    19a4:	29002185 	st.b	$r5,$r12,8(0x8)
    19a8:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19ac:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 19e4 <memset+0x198>
    19b0:	29002585 	st.b	$r5,$r12,9(0x9)
    19b4:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19b8:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 19e4 <memset+0x198>
    19bc:	29002985 	st.b	$r5,$r12,10(0xa)
    19c0:	02802dae 	addi.w	$r14,$r13,11(0xb)
    19c4:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 19e4 <memset+0x198>
    19c8:	29002d85 	st.b	$r5,$r12,11(0xb)
    19cc:	028031ae 	addi.w	$r14,$r13,12(0xc)
    19d0:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 19e4 <memset+0x198>
    19d4:	29003185 	st.b	$r5,$r12,12(0xc)
    19d8:	028035ad 	addi.w	$r13,$r13,13(0xd)
    19dc:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 19e4 <memset+0x198>
    19e0:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    19e4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    19e8:	02800c11 	addi.w	$r17,$r0,3(0x3)
    19ec:	53ff03ff 	b	-256(0xfffff00) # 18ec <memset+0xa0>
    19f0:	4c000020 	jirl	$r0,$r1,0
    19f4:	02800411 	addi.w	$r17,$r0,1(0x1)
    19f8:	53fef7ff 	b	-268(0xffffef4) # 18ec <memset+0xa0>
    19fc:	0015008e 	move	$r14,$r4
    1a00:	00150011 	move	$r17,$r0
    1a04:	53feebff 	b	-280(0xffffee8) # 18ec <memset+0xa0>
    1a08:	0015008c 	move	$r12,$r4
    1a0c:	0015000d 	move	$r13,$r0
    1a10:	53ff37ff 	b	-204(0xfffff34) # 1944 <memset+0xf8>
    1a14:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a18:	53fed7ff 	b	-300(0xffffed4) # 18ec <memset+0xa0>
    1a1c:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a20:	53fecfff 	b	-308(0xffffecc) # 18ec <memset+0xa0>
    1a24:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a28:	53fec7ff 	b	-316(0xffffec4) # 18ec <memset+0xa0>
    1a2c:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a30:	53febfff 	b	-324(0xffffebc) # 18ec <memset+0xa0>

0000000000001a34 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a34:	2800008c 	ld.b	$r12,$r4,0
    1a38:	280000ae 	ld.b	$r14,$r5,0
    1a3c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1a70 <strcmp+0x3c>
    1a40:	40003980 	beqz	$r12,56(0x38) # 1a78 <strcmp+0x44>
    1a44:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a48:	50000800 	b	8(0x8) # 1a50 <strcmp+0x1c>
    1a4c:	400019a0 	beqz	$r13,24(0x18) # 1a64 <strcmp+0x30>
    1a50:	3800308d 	ldx.b	$r13,$r4,$r12
    1a54:	380030ae 	ldx.b	$r14,$r5,$r12
    1a58:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a5c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a4c <strcmp+0x18>
    1a60:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1a64:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1a68:	001111a4 	sub.w	$r4,$r13,$r4
    1a6c:	4c000020 	jirl	$r0,$r1,0
    1a70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1a74:	53fff3ff 	b	-16(0xffffff0) # 1a64 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1a78:	0015000d 	move	$r13,$r0
    1a7c:	53ffebff 	b	-24(0xfffffe8) # 1a64 <strcmp+0x30>

0000000000001a80 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1a80:	400054c0 	beqz	$r6,84(0x54) # 1ad4 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a84:	2a00008d 	ld.bu	$r13,$r4,0
    1a88:	2a0000ae 	ld.bu	$r14,$r5,0
    1a8c:	40003da0 	beqz	$r13,60(0x3c) # 1ac8 <strncmp+0x48>
    1a90:	40003dc0 	beqz	$r14,60(0x3c) # 1acc <strncmp+0x4c>
    if (!n--)
    1a94:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1a98:	400034c0 	beqz	$r6,52(0x34) # 1acc <strncmp+0x4c>
    1a9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1aa0:	580019ae 	beq	$r13,$r14,24(0x18) # 1ab8 <strncmp+0x38>
    1aa4:	50002800 	b	40(0x28) # 1acc <strncmp+0x4c>
    1aa8:	400035c0 	beqz	$r14,52(0x34) # 1adc <strncmp+0x5c>
    1aac:	580020cc 	beq	$r6,$r12,32(0x20) # 1acc <strncmp+0x4c>
    1ab0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ab4:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1adc <strncmp+0x5c>
    1ab8:	3820308d 	ldx.bu	$r13,$r4,$r12
    1abc:	382030ae 	ldx.bu	$r14,$r5,$r12
    1ac0:	001501af 	move	$r15,$r13
    1ac4:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1aa8 <strncmp+0x28>
    1ac8:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1acc:	001139a4 	sub.w	$r4,$r13,$r14
    1ad0:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1ad4:	00150004 	move	$r4,$r0
}
    1ad8:	4c000020 	jirl	$r0,$r1,0
    1adc:	001501ed 	move	$r13,$r15
    return *l - *r;
    1ae0:	001139a4 	sub.w	$r4,$r13,$r14
    1ae4:	4c000020 	jirl	$r0,$r1,0

0000000000001ae8 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1ae8:	03401c8c 	andi	$r12,$r4,0x7
    1aec:	4000b180 	beqz	$r12,176(0xb0) # 1b9c <strlen+0xb4>
        if (!*s)
    1af0:	2800008c 	ld.b	$r12,$r4,0
    1af4:	4000b180 	beqz	$r12,176(0xb0) # 1ba4 <strlen+0xbc>
    1af8:	0015008c 	move	$r12,$r4
    1afc:	50000c00 	b	12(0xc) # 1b08 <strlen+0x20>
    1b00:	2800018d 	ld.b	$r13,$r12,0
    1b04:	400091a0 	beqz	$r13,144(0x90) # 1b94 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b08:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b0c:	03401d8d 	andi	$r13,$r12,0x7
    1b10:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b00 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b14:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b18:	2600018f 	ldptr.d	$r15,$r12,0
    1b1c:	03bbfdad 	ori	$r13,$r13,0xeff
    1b20:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b24:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b28:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b2c:	038201ce 	ori	$r14,$r14,0x80
    1b30:	0010b5ed 	add.d	$r13,$r15,$r13
    1b34:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b38:	0016bdad 	andn	$r13,$r13,$r15
    1b3c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b40:	0014b9ae 	and	$r14,$r13,$r14
    1b44:	440049c0 	bnez	$r14,72(0x48) # 1b8c <strlen+0xa4>
    1b48:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b4c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b50:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b54:	2600018e 	ldptr.d	$r14,$r12,0
    1b58:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b5c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b60:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b64:	0382020f 	ori	$r15,$r16,0x80
    1b68:	0010b5cd 	add.d	$r13,$r14,$r13
    1b6c:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1b70:	0016b9ad 	andn	$r13,$r13,$r14
    1b74:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1b78:	0014bdad 	and	$r13,$r13,$r15
    1b7c:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b50 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1b80:	2800018d 	ld.b	$r13,$r12,0
    1b84:	400011a0 	beqz	$r13,16(0x10) # 1b94 <strlen+0xac>
    1b88:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b8c:	2800018d 	ld.b	$r13,$r12,0
    1b90:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1b88 <strlen+0xa0>
        ;
    return s - a;
    1b94:	00119184 	sub.d	$r4,$r12,$r4
}
    1b98:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1b9c:	0015008c 	move	$r12,$r4
    1ba0:	53ff77ff 	b	-140(0xfffff74) # 1b14 <strlen+0x2c>
        if (!*s)
    1ba4:	00150004 	move	$r4,$r0
            return s - a;
    1ba8:	4c000020 	jirl	$r0,$r1,0

0000000000001bac <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bac:	03401c8c 	andi	$r12,$r4,0x7
    1bb0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bb4:	44002180 	bnez	$r12,32(0x20) # 1bd4 <memchr+0x28>
    1bb8:	50002c00 	b	44(0x2c) # 1be4 <memchr+0x38>
    1bbc:	2a00008c 	ld.bu	$r12,$r4,0
    1bc0:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cb8 <memchr+0x10c>
    1bc4:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1bc8:	03401c8c 	andi	$r12,$r4,0x7
    1bcc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1bd0:	40001580 	beqz	$r12,20(0x14) # 1be4 <memchr+0x38>
    1bd4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bbc <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1bd8:	0015000d 	move	$r13,$r0
}
    1bdc:	001501a4 	move	$r4,$r13
    1be0:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1be4:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1be8:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1bdc <memchr+0x30>
    1bec:	2a00008c 	ld.bu	$r12,$r4,0
    1bf0:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cb8 <memchr+0x10c>
        size_t k = ONES * c;
    1bf4:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1bf8:	0384058c 	ori	$r12,$r12,0x101
    1bfc:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c00:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c04:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c08:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c0c:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1cc8 <memchr+0x11c>
    1c10:	2600008d 	ldptr.d	$r13,$r4,0
    1c14:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c18:	038201ce 	ori	$r14,$r14,0x80
    1c1c:	0015b60d 	xor	$r13,$r16,$r13
    1c20:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c24:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c28:	0016b58c 	andn	$r12,$r12,$r13
    1c2c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c30:	0014b98c 	and	$r12,$r12,$r14
    1c34:	44009580 	bnez	$r12,148(0x94) # 1cc8 <memchr+0x11c>
    1c38:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c3c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c40:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c44:	50002000 	b	32(0x20) # 1c64 <memchr+0xb8>
    1c48:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c4c:	0015b20c 	xor	$r12,$r16,$r12
    1c50:	0010b98e 	add.d	$r14,$r12,$r14
    1c54:	0016b1cc 	andn	$r12,$r14,$r12
    1c58:	0014bd8c 	and	$r12,$r12,$r15
    1c5c:	44006580 	bnez	$r12,100(0x64) # 1cc0 <memchr+0x114>
    1c60:	001501a4 	move	$r4,$r13
    1c64:	03bbfe4e 	ori	$r14,$r18,0xeff
    1c68:	0382022f 	ori	$r15,$r17,0x80
    1c6c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1c70:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1c74:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1c78:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1c7c:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1c80:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1c84:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c48 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1c88:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1bd8 <memchr+0x2c>
    1c8c:	2a0001ac 	ld.bu	$r12,$r13,0
    1c90:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1bdc <memchr+0x30>
    1c94:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1c98:	001099a6 	add.d	$r6,$r13,$r6
    1c9c:	50001000 	b	16(0x10) # 1cac <memchr+0x100>
    1ca0:	2a00018e 	ld.bu	$r14,$r12,0
    1ca4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ca8:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1bdc <memchr+0x30>
    1cac:	0015018d 	move	$r13,$r12
    1cb0:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1ca0 <memchr+0xf4>
    1cb4:	53ff27ff 	b	-220(0xfffff24) # 1bd8 <memchr+0x2c>
    1cb8:	0015008d 	move	$r13,$r4
    1cbc:	53ffd3ff 	b	-48(0xfffffd0) # 1c8c <memchr+0xe0>
    1cc0:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1cc4:	53ffcfff 	b	-52(0xfffffcc) # 1c90 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1cc8:	0015008d 	move	$r13,$r4
    1ccc:	53ffcbff 	b	-56(0xfffffc8) # 1c94 <memchr+0xe8>

0000000000001cd0 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1cd0:	03401c8c 	andi	$r12,$r4,0x7
    1cd4:	40011980 	beqz	$r12,280(0x118) # 1dec <strnlen+0x11c>
    1cd8:	4000f4a0 	beqz	$r5,244(0xf4) # 1dcc <strnlen+0xfc>
    1cdc:	2a00008c 	ld.bu	$r12,$r4,0
    1ce0:	4000f580 	beqz	$r12,244(0xf4) # 1dd4 <strnlen+0x104>
    1ce4:	001500ac 	move	$r12,$r5
    1ce8:	0015008d 	move	$r13,$r4
    1cec:	50001000 	b	16(0x10) # 1cfc <strnlen+0x2c>
    1cf0:	4000dd80 	beqz	$r12,220(0xdc) # 1dcc <strnlen+0xfc>
    1cf4:	2a0001ae 	ld.bu	$r14,$r13,0
    1cf8:	4000e5c0 	beqz	$r14,228(0xe4) # 1ddc <strnlen+0x10c>
    1cfc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d00:	03401dae 	andi	$r14,$r13,0x7
    1d04:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d08:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1cf0 <strnlen+0x20>
    if (n && *s != c)
    1d0c:	4000c180 	beqz	$r12,192(0xc0) # 1dcc <strnlen+0xfc>
    1d10:	2a0001ae 	ld.bu	$r14,$r13,0
    1d14:	4000c9c0 	beqz	$r14,200(0xc8) # 1ddc <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d18:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d1c:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1df8 <strnlen+0x128>
    1d20:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d24:	260001b0 	ldptr.d	$r16,$r13,0
    1d28:	03bbfdce 	ori	$r14,$r14,0xeff
    1d2c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d30:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d34:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d38:	038201ef 	ori	$r15,$r15,0x80
    1d3c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d40:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d44:	0016c1ce 	andn	$r14,$r14,$r16
    1d48:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d4c:	0014bdcf 	and	$r15,$r14,$r15
    1d50:	4400a9e0 	bnez	$r15,168(0xa8) # 1df8 <strnlen+0x128>
    1d54:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d58:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d5c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1d60:	50001c00 	b	28(0x1c) # 1d7c <strnlen+0xac>
    1d64:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1d68:	0010b9ee 	add.d	$r14,$r15,$r14
    1d6c:	0016bdce 	andn	$r14,$r14,$r15
    1d70:	0014c1ce 	and	$r14,$r14,$r16
    1d74:	440071c0 	bnez	$r14,112(0x70) # 1de4 <strnlen+0x114>
    1d78:	0015022d 	move	$r13,$r17
    1d7c:	03bbfe6e 	ori	$r14,$r19,0xeff
    1d80:	03820250 	ori	$r16,$r18,0x80
    1d84:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d88:	16101010 	lu32i.d	$r16,32896(0x8080)
    1d8c:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1d90:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d94:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1d98:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1d9c:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1d64 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1da0:	40002d80 	beqz	$r12,44(0x2c) # 1dcc <strnlen+0xfc>
    1da4:	2a00022d 	ld.bu	$r13,$r17,0
    1da8:	400021a0 	beqz	$r13,32(0x20) # 1dc8 <strnlen+0xf8>
    1dac:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1db0:	0010b22c 	add.d	$r12,$r17,$r12
    1db4:	001501b1 	move	$r17,$r13
    1db8:	5800158d 	beq	$r12,$r13,20(0x14) # 1dcc <strnlen+0xfc>
    1dbc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1dc0:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1dc4:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1db4 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1dc8:	00119225 	sub.d	$r5,$r17,$r4
}
    1dcc:	001500a4 	move	$r4,$r5
    1dd0:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dd4:	001500ac 	move	$r12,$r5
    1dd8:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1ddc:	001501b1 	move	$r17,$r13
    1de0:	53ffc7ff 	b	-60(0xfffffc4) # 1da4 <strnlen+0xd4>
    1de4:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1de8:	53ffc3ff 	b	-64(0xfffffc0) # 1da8 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1dec:	001500ac 	move	$r12,$r5
    1df0:	0015008d 	move	$r13,$r4
    1df4:	53ff1bff 	b	-232(0xfffff18) # 1d0c <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1df8:	001501b1 	move	$r17,$r13
    1dfc:	53ffb3ff 	b	-80(0xfffffb0) # 1dac <strnlen+0xdc>

0000000000001e00 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e00:	0015948c 	xor	$r12,$r4,$r5
    1e04:	03401d8c 	andi	$r12,$r12,0x7
    1e08:	4400ad80 	bnez	$r12,172(0xac) # 1eb4 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e0c:	03401cac 	andi	$r12,$r5,0x7
    1e10:	40003180 	beqz	$r12,48(0x30) # 1e40 <strcpy+0x40>
            if (!(*d = *s))
    1e14:	280000ac 	ld.b	$r12,$r5,0
    1e18:	2900008c 	st.b	$r12,$r4,0
    1e1c:	44001580 	bnez	$r12,20(0x14) # 1e30 <strcpy+0x30>
    1e20:	5000bc00 	b	188(0xbc) # 1edc <strcpy+0xdc>
    1e24:	280000ac 	ld.b	$r12,$r5,0
    1e28:	2900008c 	st.b	$r12,$r4,0
    1e2c:	4000a980 	beqz	$r12,168(0xa8) # 1ed4 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e30:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e34:	03401cac 	andi	$r12,$r5,0x7
    1e38:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e3c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e24 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
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
    1e70:	44004580 	bnez	$r12,68(0x44) # 1eb4 <strcpy+0xb4>
    1e74:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1e78:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1e7c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1e80:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1e84:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1e88:	260000ae 	ldptr.d	$r14,$r5,0
    1e8c:	03bbfe0c 	ori	$r12,$r16,0xeff
    1e90:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e94:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e98:	038201ed 	ori	$r13,$r15,0x80
    1e9c:	0010b1cc 	add.d	$r12,$r14,$r12
    1ea0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ea4:	0016b98c 	andn	$r12,$r12,$r14
    1ea8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1eac:	0014b58c 	and	$r12,$r12,$r13
    1eb0:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1e7c <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1eb4:	280000ac 	ld.b	$r12,$r5,0
    1eb8:	2900008c 	st.b	$r12,$r4,0
    1ebc:	40001d80 	beqz	$r12,28(0x1c) # 1ed8 <strcpy+0xd8>
    1ec0:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1ec4:	280000ac 	ld.b	$r12,$r5,0
    1ec8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ecc:	2900008c 	st.b	$r12,$r4,0
    1ed0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1ec0 <strcpy+0xc0>
        ;
    return d;
}
    1ed4:	4c000020 	jirl	$r0,$r1,0
    1ed8:	4c000020 	jirl	$r0,$r1,0
    1edc:	4c000020 	jirl	$r0,$r1,0

0000000000001ee0 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1ee0:	0015948c 	xor	$r12,$r4,$r5
    1ee4:	03401d8c 	andi	$r12,$r12,0x7
    1ee8:	4400ad80 	bnez	$r12,172(0xac) # 1f94 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1eec:	03401cac 	andi	$r12,$r5,0x7
    1ef0:	44010180 	bnez	$r12,256(0x100) # 1ff0 <strncpy+0x110>
            ;
        if (!n || !*s)
    1ef4:	400100c0 	beqz	$r6,256(0x100) # 1ff4 <strncpy+0x114>
    1ef8:	280000af 	ld.b	$r15,$r5,0
    1efc:	400105e0 	beqz	$r15,260(0x104) # 2000 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f00:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f04:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 21dc <strncpy+0x2fc>
    1f08:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f0c:	260000ae 	ldptr.d	$r14,$r5,0
    1f10:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f14:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f18:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f1c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f20:	038201ad 	ori	$r13,$r13,0x80
    1f24:	0010b1cc 	add.d	$r12,$r14,$r12
    1f28:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f2c:	0016b98c 	andn	$r12,$r12,$r14
    1f30:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f34:	0014b58c 	and	$r12,$r12,$r13
    1f38:	4402a580 	bnez	$r12,676(0x2a4) # 21dc <strncpy+0x2fc>
    1f3c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f40:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f44:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f48:	50001c00 	b	28(0x1c) # 1f64 <strncpy+0x84>
    1f4c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f50:	0010b1cc 	add.d	$r12,$r14,$r12
    1f54:	0016b98c 	andn	$r12,$r12,$r14
    1f58:	0014b58c 	and	$r12,$r12,$r13
    1f5c:	44024580 	bnez	$r12,580(0x244) # 21a0 <strncpy+0x2c0>
    1f60:	001501e5 	move	$r5,$r15
    1f64:	03bbfe2c 	ori	$r12,$r17,0xeff
    1f68:	0382020d 	ori	$r13,$r16,0x80
    1f6c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f70:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1f74:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f78:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1f7c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f80:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f84:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1f88:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f8c:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f4c <strncpy+0x6c>
    1f90:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1f94:	400060c0 	beqz	$r6,96(0x60) # 1ff4 <strncpy+0x114>
    1f98:	280000ac 	ld.b	$r12,$r5,0
    1f9c:	0015008d 	move	$r13,$r4
    1fa0:	2900008c 	st.b	$r12,$r4,0
    1fa4:	44001580 	bnez	$r12,20(0x14) # 1fb8 <strncpy+0xd8>
    1fa8:	50005c00 	b	92(0x5c) # 2004 <strncpy+0x124>
    1fac:	280000ac 	ld.b	$r12,$r5,0
    1fb0:	290001ac 	st.b	$r12,$r13,0
    1fb4:	40005180 	beqz	$r12,80(0x50) # 2004 <strncpy+0x124>
    1fb8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fbc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fc0:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1fc4:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fac <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    1fc8:	001501a4 	move	$r4,$r13
    1fcc:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1fd0:	280000ac 	ld.b	$r12,$r5,0
    1fd4:	2900008c 	st.b	$r12,$r4,0
    1fd8:	40002980 	beqz	$r12,40(0x28) # 2000 <strncpy+0x120>
    1fdc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1fe0:	03401cac 	andi	$r12,$r5,0x7
    1fe4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1fe8:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1fec:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1ef4 <strncpy+0x14>
    1ff0:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 1fd0 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    1ff4:	0015008d 	move	$r13,$r4
}
    1ff8:	001501a4 	move	$r4,$r13
    1ffc:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2000:	0015008d 	move	$r13,$r4
    2004:	0011b40c 	sub.d	$r12,$r0,$r13
    2008:	03401d8c 	andi	$r12,$r12,0x7
    200c:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2010:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2014:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2018:	0013bdce 	masknez	$r14,$r14,$r15
    201c:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2020:	00133e0f 	maskeqz	$r15,$r16,$r15
    2024:	00153dce 	or	$r14,$r14,$r15
    2028:	024004d0 	sltui	$r16,$r6,1(0x1)
    202c:	00131a31 	maskeqz	$r17,$r17,$r6
    2030:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2034:	001540d0 	or	$r16,$r6,$r16
    2038:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21b0 <strncpy+0x2d0>
    203c:	40015980 	beqz	$r12,344(0x158) # 2194 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2040:	290001a0 	st.b	$r0,$r13,0
    2044:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2048:	5801458f 	beq	$r12,$r15,324(0x144) # 218c <strncpy+0x2ac>
    204c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2050:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2054:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2058:	5801658f 	beq	$r12,$r15,356(0x164) # 21bc <strncpy+0x2dc>
    205c:	290009a0 	st.b	$r0,$r13,2(0x2)
    2060:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    2064:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    2068:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2184 <strncpy+0x2a4>
    206c:	29000da0 	st.b	$r0,$r13,3(0x3)
    2070:	0280100f 	addi.w	$r15,$r0,4(0x4)
    2074:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    2078:	58014d8f 	beq	$r12,$r15,332(0x14c) # 21c4 <strncpy+0x2e4>
    207c:	290011a0 	st.b	$r0,$r13,4(0x4)
    2080:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2084:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    2088:	5801458f 	beq	$r12,$r15,324(0x144) # 21cc <strncpy+0x2ec>
    208c:	290015a0 	st.b	$r0,$r13,5(0x5)
    2090:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2094:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2098:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 21d4 <strncpy+0x2f4>
    209c:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20a0:	290019a0 	st.b	$r0,$r13,6(0x6)
    20a4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20a8:	0011b210 	sub.d	$r16,$r16,$r12
    20ac:	00450e11 	srli.d	$r17,$r16,0x3
    20b0:	0010b1ac 	add.d	$r12,$r13,$r12
    20b4:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20b8:	27000180 	stptr.d	$r0,$r12,0
    20bc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    20c0:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20b8 <strncpy+0x1d8>
    20c4:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    20c8:	0014c611 	and	$r17,$r16,$r17
    20cc:	0040822f 	slli.w	$r15,$r17,0x0
    20d0:	001049ef 	add.w	$r15,$r15,$r18
    20d4:	0010c5cc 	add.d	$r12,$r14,$r17
    20d8:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 1fc8 <strncpy+0xe8>
    20dc:	29000180 	st.b	$r0,$r12,0
    20e0:	028005ee 	addi.w	$r14,$r15,1(0x1)
    20e4:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 1fc8 <strncpy+0xe8>
    20e8:	29000580 	st.b	$r0,$r12,1(0x1)
    20ec:	028009ee 	addi.w	$r14,$r15,2(0x2)
    20f0:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 1fc8 <strncpy+0xe8>
    20f4:	29000980 	st.b	$r0,$r12,2(0x2)
    20f8:	02800dee 	addi.w	$r14,$r15,3(0x3)
    20fc:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 1fc8 <strncpy+0xe8>
    2100:	29000d80 	st.b	$r0,$r12,3(0x3)
    2104:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2108:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 1fc8 <strncpy+0xe8>
    210c:	29001180 	st.b	$r0,$r12,4(0x4)
    2110:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2114:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 1fc8 <strncpy+0xe8>
    2118:	29001580 	st.b	$r0,$r12,5(0x5)
    211c:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2120:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 1fc8 <strncpy+0xe8>
    2124:	29001980 	st.b	$r0,$r12,6(0x6)
    2128:	02801dee 	addi.w	$r14,$r15,7(0x7)
    212c:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 1fc8 <strncpy+0xe8>
    2130:	29001d80 	st.b	$r0,$r12,7(0x7)
    2134:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2138:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 1fc8 <strncpy+0xe8>
    213c:	29002180 	st.b	$r0,$r12,8(0x8)
    2140:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2144:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 1fc8 <strncpy+0xe8>
    2148:	29002580 	st.b	$r0,$r12,9(0x9)
    214c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2150:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 1fc8 <strncpy+0xe8>
    2154:	29002980 	st.b	$r0,$r12,10(0xa)
    2158:	02802dee 	addi.w	$r14,$r15,11(0xb)
    215c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 1fc8 <strncpy+0xe8>
    2160:	29002d80 	st.b	$r0,$r12,11(0xb)
    2164:	028031ee 	addi.w	$r14,$r15,12(0xc)
    2168:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 1fc8 <strncpy+0xe8>
    216c:	29003180 	st.b	$r0,$r12,12(0xc)
    2170:	028035ef 	addi.w	$r15,$r15,13(0xd)
    2174:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 1fc8 <strncpy+0xe8>
    2178:	29003580 	st.b	$r0,$r12,13(0xd)
}
    217c:	001501a4 	move	$r4,$r13
    2180:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2184:	02800c12 	addi.w	$r18,$r0,3(0x3)
    2188:	53ff23ff 	b	-224(0xfffff20) # 20a8 <strncpy+0x1c8>
    218c:	02800412 	addi.w	$r18,$r0,1(0x1)
    2190:	53ff1bff 	b	-232(0xfffff18) # 20a8 <strncpy+0x1c8>
    2194:	001501ae 	move	$r14,$r13
    2198:	00150012 	move	$r18,$r0
    219c:	53ff0fff 	b	-244(0xfffff0c) # 20a8 <strncpy+0x1c8>
    21a0:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21a4:	0015008d 	move	$r13,$r4
    21a8:	001501e5 	move	$r5,$r15
    21ac:	53fdf7ff 	b	-524(0xffffdf4) # 1fa0 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21b0:	001501ac 	move	$r12,$r13
    21b4:	0015000f 	move	$r15,$r0
    21b8:	53ff27ff 	b	-220(0xfffff24) # 20dc <strncpy+0x1fc>
    21bc:	02800812 	addi.w	$r18,$r0,2(0x2)
    21c0:	53feebff 	b	-280(0xffffee8) # 20a8 <strncpy+0x1c8>
    21c4:	02801012 	addi.w	$r18,$r0,4(0x4)
    21c8:	53fee3ff 	b	-288(0xffffee0) # 20a8 <strncpy+0x1c8>
    21cc:	02801412 	addi.w	$r18,$r0,5(0x5)
    21d0:	53fedbff 	b	-296(0xffffed8) # 20a8 <strncpy+0x1c8>
    21d4:	02801812 	addi.w	$r18,$r0,6(0x6)
    21d8:	53fed3ff 	b	-304(0xffffed0) # 20a8 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    21dc:	2900008f 	st.b	$r15,$r4,0
    21e0:	0015008d 	move	$r13,$r4
    21e4:	53fdd7ff 	b	-556(0xffffdd4) # 1fb8 <strncpy+0xd8>

00000000000021e8 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    21e8:	0015008c 	move	$r12,$r4
    21ec:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    21f0:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    21f4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    21f8:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    21fc:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2200:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2204:	00408084 	slli.w	$r4,$r4,0x0
}
    2208:	4c000020 	jirl	$r0,$r1,0

000000000000220c <openat>:
    register long a7 __asm__("a7") = n;
    220c:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2210:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2214:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2218:	00408084 	slli.w	$r4,$r4,0x0
}
    221c:	4c000020 	jirl	$r0,$r1,0

0000000000002220 <close>:
    register long a7 __asm__("a7") = n;
    2220:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2224:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2228:	00408084 	slli.w	$r4,$r4,0x0
}
    222c:	4c000020 	jirl	$r0,$r1,0

0000000000002230 <read>:
    register long a7 __asm__("a7") = n;
    2230:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2234:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2238:	4c000020 	jirl	$r0,$r1,0

000000000000223c <write>:
    register long a7 __asm__("a7") = n;
    223c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2240:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2244:	4c000020 	jirl	$r0,$r1,0

0000000000002248 <getpid>:
    register long a7 __asm__("a7") = n;
    2248:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    224c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2250:	00408084 	slli.w	$r4,$r4,0x0
}
    2254:	4c000020 	jirl	$r0,$r1,0

0000000000002258 <getppid>:
    register long a7 __asm__("a7") = n;
    2258:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    225c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    2260:	00408084 	slli.w	$r4,$r4,0x0
}
    2264:	4c000020 	jirl	$r0,$r1,0

0000000000002268 <sched_yield>:
    register long a7 __asm__("a7") = n;
    2268:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    226c:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    2270:	00408084 	slli.w	$r4,$r4,0x0
}
    2274:	4c000020 	jirl	$r0,$r1,0

0000000000002278 <fork>:
    register long a7 __asm__("a7") = n;
    2278:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    227c:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2280:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2284:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    2288:	00408084 	slli.w	$r4,$r4,0x0
}
    228c:	4c000020 	jirl	$r0,$r1,0

0000000000002290 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2290:	001500c5 	move	$r5,$r6
    if (stack)
    2294:	400008c0 	beqz	$r6,8(0x8) # 229c <clone+0xc>
	stack += stack_size;
    2298:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    229c:	00408106 	slli.w	$r6,$r8,0x0
    22a0:	00150009 	move	$r9,$r0
    22a4:	00150008 	move	$r8,$r0
    22a8:	00150007 	move	$r7,$r0
    22ac:	5002c800 	b	712(0x2c8) # 2574 <__clone>

00000000000022b0 <exit>:
    register long a7 __asm__("a7") = n;
    22b0:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22b4:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <waitpid>:
    register long a7 __asm__("a7") = n;
    22bc:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    22c0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    22c4:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <exec>:
    register long a7 __asm__("a7") = n;
    22d0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    22d4:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    22d8:	00408084 	slli.w	$r4,$r4,0x0
}
    22dc:	4c000020 	jirl	$r0,$r1,0

00000000000022e0 <execve>:
    register long a7 __asm__("a7") = n;
    22e0:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22e4:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    22e8:	00408084 	slli.w	$r4,$r4,0x0
}
    22ec:	4c000020 	jirl	$r0,$r1,0

00000000000022f0 <times>:
    register long a7 __asm__("a7") = n;
    22f0:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    22f4:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    22f8:	00408084 	slli.w	$r4,$r4,0x0
}
    22fc:	4c000020 	jirl	$r0,$r1,0

0000000000002300 <get_time>:

int64 get_time()
{
    2300:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2304:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2308:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    230c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2310:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2314:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2318:	44003c80 	bnez	$r4,60(0x3c) # 2354 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    231c:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2320:	039f3c8c 	ori	$r12,$r4,0x7cf
    2324:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2328:	2a40006d 	ld.hu	$r13,$r3,0
    232c:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2330:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2334:	00450c84 	srli.d	$r4,$r4,0x3
    2338:	001eb084 	mulh.du	$r4,$r4,$r12
    233c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2340:	001db1ac 	mul.d	$r12,$r13,$r12
    2344:	00451084 	srli.d	$r4,$r4,0x4
    2348:	00109184 	add.d	$r4,$r12,$r4
}
    234c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2350:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2354:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2358:	53fff7ff 	b	-12(0xffffff4) # 234c <get_time+0x4c>

000000000000235c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    235c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2360:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    2364:	00408084 	slli.w	$r4,$r4,0x0
}
    2368:	4c000020 	jirl	$r0,$r1,0

000000000000236c <time>:
    register long a7 __asm__("a7") = n;
    236c:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    2370:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    2374:	00408084 	slli.w	$r4,$r4,0x0
}
    2378:	4c000020 	jirl	$r0,$r1,0

000000000000237c <sleep>:

int sleep(unsigned long long time)
{
    237c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2380:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2384:	00150064 	move	$r4,$r3
    2388:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    238c:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2390:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2394:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2398:	44001080 	bnez	$r4,16(0x10) # 23a8 <sleep+0x2c>
    return 0;
    239c:	00150004 	move	$r4,$r0
}
    23a0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23a4:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23a8:	24000064 	ldptr.w	$r4,$r3,0
}
    23ac:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b0:	4c000020 	jirl	$r0,$r1,0

00000000000023b4 <set_priority>:
    register long a7 __asm__("a7") = n;
    23b4:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23b8:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23bc:	00408084 	slli.w	$r4,$r4,0x0
}
    23c0:	4c000020 	jirl	$r0,$r1,0

00000000000023c4 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    23c4:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    23c8:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    23cc:	4c000020 	jirl	$r0,$r1,0

00000000000023d0 <munmap>:
    register long a7 __asm__("a7") = n;
    23d0:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23d4:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    23d8:	00408084 	slli.w	$r4,$r4,0x0
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <wait>:

int wait(int *code)
{
    23e0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    23e4:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    23e8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    23ec:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    23f0:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    23f4:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    23f8:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    23fc:	4c000020 	jirl	$r0,$r1,0

0000000000002400 <spawn>:
    register long a7 __asm__("a7") = n;
    2400:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2404:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2408:	00408084 	slli.w	$r4,$r4,0x0
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <mailread>:
    register long a7 __asm__("a7") = n;
    2410:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2414:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2420:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2424:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2428:	00408084 	slli.w	$r4,$r4,0x0
}
    242c:	4c000020 	jirl	$r0,$r1,0

0000000000002430 <fstat>:
    register long a7 __asm__("a7") = n;
    2430:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2434:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2438:	00408084 	slli.w	$r4,$r4,0x0
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2440:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2444:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2448:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    244c:	00408084 	slli.w	$r4,$r4,0x0
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2454:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2458:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    245c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2460:	00408084 	slli.w	$r4,$r4,0x0
}
    2464:	4c000020 	jirl	$r0,$r1,0

0000000000002468 <link>:

int link(char *old_path, char *new_path)
{
    2468:	0015008c 	move	$r12,$r4
    246c:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    2470:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    2474:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2478:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    247c:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2480:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2484:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    2488:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    248c:	4c000020 	jirl	$r0,$r1,0

0000000000002490 <unlink>:

int unlink(char *path)
{
    2490:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2494:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2498:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    249c:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24a0:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24a4:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24a8:	4c000020 	jirl	$r0,$r1,0

00000000000024ac <uname>:
    register long a7 __asm__("a7") = n;
    24ac:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24b0:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24b4:	00408084 	slli.w	$r4,$r4,0x0
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <brk>:
    register long a7 __asm__("a7") = n;
    24bc:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    24c0:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <getcwd>:
    register long a7 __asm__("a7") = n;
    24cc:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24d0:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    24d4:	4c000020 	jirl	$r0,$r1,0

00000000000024d8 <chdir>:
    register long a7 __asm__("a7") = n;
    24d8:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    24dc:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    24e0:	00408084 	slli.w	$r4,$r4,0x0
}
    24e4:	4c000020 	jirl	$r0,$r1,0

00000000000024e8 <mkdir>:

int mkdir(const char *path, mode_t mode){
    24e8:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    24ec:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    24f0:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    24f4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24f8:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24fc:	002b0000 	syscall	0x0
    2500:	00408084 	slli.w	$r4,$r4,0x0
}
    2504:	4c000020 	jirl	$r0,$r1,0

0000000000002508 <getdents>:
    register long a7 __asm__("a7") = n;
    2508:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    250c:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2510:	00408084 	slli.w	$r4,$r4,0x0
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <pipe>:
    register long a7 __asm__("a7") = n;
    2518:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    251c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2520:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2524:	00408084 	slli.w	$r4,$r4,0x0
}
    2528:	4c000020 	jirl	$r0,$r1,0

000000000000252c <dup>:
    register long a7 __asm__("a7") = n;
    252c:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2530:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2534:	00408084 	slli.w	$r4,$r4,0x0
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <dup2>:
    register long a7 __asm__("a7") = n;
    253c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2540:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2544:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <mount>:
    register long a7 __asm__("a7") = n;
    2550:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2554:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2558:	00408084 	slli.w	$r4,$r4,0x0
}
    255c:	4c000020 	jirl	$r0,$r1,0

0000000000002560 <umount>:
    register long a7 __asm__("a7") = n;
    2560:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    2564:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2568:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    256c:	00408084 	slli.w	$r4,$r4,0x0
}
    2570:	4c000020 	jirl	$r0,$r1,0

0000000000002574 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    2574:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    2578:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    257c:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2580:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2584:	00150106 	move	$r6,$r8
	move $a3, $a5
    2588:	00150127 	move	$r7,$r9
	move $a4, $a6
    258c:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2590:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2594:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2598:	40000880 	beqz	$r4,8(0x8) # 25a0 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    259c:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25a0:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25a4:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25a8:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25ac:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25b0:	002b0000 	syscall	0x0
