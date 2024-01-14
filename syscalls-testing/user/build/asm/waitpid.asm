
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/waitpid:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54013800 	bl	312(0x138) # 113c <__start_main>

0000000000001008 <test_waitpid>:
#include "stdio.h"
#include "stdlib.h"
#include "unistd.h"

int i = 1000;
void test_waitpid(void){
    1008:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d7b084 	addi.d	$r4,$r4,1516(0x5ec)
void test_waitpid(void){
    1014:	29c0a061 	st.d	$r1,$r3,40(0x28)
    1018:	29c08077 	st.d	$r23,$r3,32(0x20)
    101c:	29c06078 	st.d	$r24,$r3,24(0x18)
    TEST_START(__func__);
    1020:	54042400 	bl	1060(0x424) # 1444 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02da3084 	addi.d	$r4,$r4,1676(0x68c)
    102c:	54041800 	bl	1048(0x418) # 1444 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d78084 	addi.d	$r4,$r4,1504(0x5e0)
    1038:	54040c00 	bl	1036(0x40c) # 1444 <puts>
    int cpid, wstatus;
    cpid = fork();
    103c:	54127c00 	bl	4732(0x127c) # 22b8 <fork>
    assert(cpid != -1);
    1040:	02bffc18 	addi.w	$r24,$r0,-1(0xfff)
    cpid = fork();
    1044:	00150097 	move	$r23,$r4
    assert(cpid != -1);
    1048:	58006498 	beq	$r4,$r24,100(0x64) # 10ac <test_waitpid+0xa4>
    if(cpid == 0){
    104c:	44009080 	bnez	$r4,144(0x90) # 10dc <test_waitpid+0xd4>
	while(i--);
    1050:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1054:	02d9618c 	addi.d	$r12,$r12,1624(0x658)
    1058:	25000198 	stptr.w	$r24,$r12,0
	sched_yield();
    105c:	54124c00 	bl	4684(0x124c) # 22a8 <sched_yield>
	printf("This is child process\n");
    1060:	1c000024 	pcaddu12i	$r4,1(0x1)
    1064:	02d78084 	addi.d	$r4,$r4,1504(0x5e0)
    1068:	54041400 	bl	1044(0x414) # 147c <printf>
        exit(3);
    106c:	02800c04 	addi.w	$r4,$r0,3(0x3)
    1070:	54128000 	bl	4736(0x1280) # 22f0 <exit>
	    printf("waitpid successfully.\nwstatus: %x\n", WEXITSTATUS(wstatus));
	else
	    printf("waitpid error.\n");

    }
    TEST_END(__func__);
    1074:	1c000024 	pcaddu12i	$r4,1(0x1)
    1078:	02d87084 	addi.d	$r4,$r4,1564(0x61c)
    107c:	5403c800 	bl	968(0x3c8) # 1444 <puts>
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d8c084 	addi.d	$r4,$r4,1584(0x630)
    1088:	5403bc00 	bl	956(0x3bc) # 1444 <puts>
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    1094:	5403b000 	bl	944(0x3b0) # 1444 <puts>
}
    1098:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    109c:	28c08077 	ld.d	$r23,$r3,32(0x20)
    10a0:	28c06078 	ld.d	$r24,$r3,24(0x18)
    10a4:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    10a8:	4c000020 	jirl	$r0,$r1,0
    assert(cpid != -1);
    10ac:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b0:	02d5d084 	addi.d	$r4,$r4,1396(0x574)
    10b4:	5406d800 	bl	1752(0x6d8) # 178c <panic>
	pid_t ret = waitpid(cpid, &wstatus, 0);
    10b8:	00150006 	move	$r6,$r0
    10bc:	02c03065 	addi.d	$r5,$r3,12(0xc)
    10c0:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    10c4:	54123800 	bl	4664(0x1238) # 22fc <waitpid>
	assert(ret != -1);
    10c8:	58002497 	beq	$r4,$r23,36(0x24) # 10ec <test_waitpid+0xe4>
	    printf("waitpid error.\n");
    10cc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d0:	02d6d084 	addi.d	$r4,$r4,1460(0x5b4)
    10d4:	5403a800 	bl	936(0x3a8) # 147c <printf>
    10d8:	53ff9fff 	b	-100(0xfffff9c) # 1074 <test_waitpid+0x6c>
	pid_t ret = waitpid(cpid, &wstatus, 0);
    10dc:	00150006 	move	$r6,$r0
    10e0:	02c03065 	addi.d	$r5,$r3,12(0xc)
    10e4:	54121800 	bl	4632(0x1218) # 22fc <waitpid>
	assert(ret != -1);
    10e8:	5c001498 	bne	$r4,$r24,20(0x14) # 10fc <test_waitpid+0xf4>
    10ec:	1c000024 	pcaddu12i	$r4,1(0x1)
    10f0:	02d4d084 	addi.d	$r4,$r4,1332(0x534)
    10f4:	54069800 	bl	1688(0x698) # 178c <panic>
    10f8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
	if(ret == cpid && WEXITSTATUS(wstatus) == 3)
    10fc:	5fffd2e4 	bne	$r23,$r4,-48(0x3ffd0) # 10cc <test_waitpid+0xc4>
    1100:	2a00346d 	ld.bu	$r13,$r3,13(0xd)
    1104:	02800c0c 	addi.w	$r12,$r0,3(0x3)
    1108:	5fffc5ac 	bne	$r13,$r12,-60(0x3ffc4) # 10cc <test_waitpid+0xc4>
	    printf("waitpid successfully.\nwstatus: %x\n", WEXITSTATUS(wstatus));
    110c:	02800c05 	addi.w	$r5,$r0,3(0x3)
    1110:	1c000024 	pcaddu12i	$r4,1(0x1)
    1114:	02d52084 	addi.d	$r4,$r4,1352(0x548)
    1118:	54036400 	bl	868(0x364) # 147c <printf>
    111c:	53ff5bff 	b	-168(0xfffff58) # 1074 <test_waitpid+0x6c>

0000000000001120 <main>:

int main(void){
    1120:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1124:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_waitpid();
    1128:	57fee3ff 	bl	-288(0xffffee0) # 1008 <test_waitpid>
    return 0;
}
    112c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1130:	00150004 	move	$r4,$r0
    1134:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1138:	4c000020 	jirl	$r0,$r1,0

000000000000113c <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    113c:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1140:	24000084 	ldptr.w	$r4,$r4,0
{
    1144:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1148:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    114c:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1150:	57ffd3ff 	bl	-48(0xfffffd0) # 1120 <main>
    1154:	54119c00 	bl	4508(0x119c) # 22f0 <exit>
	return 0;
}
    1158:	28c02061 	ld.d	$r1,$r3,8(0x8)
    115c:	00150004 	move	$r4,$r0
    1160:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1164:	4c000020 	jirl	$r0,$r1,0

0000000000001168 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1168:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    116c:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1170:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 133c <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1174:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    1178:	1c00002c 	pcaddu12i	$r12,1(0x1)
    117c:	02d5218c 	addi.d	$r12,$r12,1352(0x548)
    1180:	002195cf 	mod.wu	$r15,$r14,$r5
    1184:	5c0008a0 	bne	$r5,$r0,8(0x8) # 118c <printint.constprop.0+0x24>
    1188:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    118c:	002115cd 	div.wu	$r13,$r14,$r5
    1190:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1198 <printint.constprop.0+0x30>
    1194:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1198:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    119c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    11a0:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    11a4:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    11a8:	680219c5 	bltu	$r14,$r5,536(0x218) # 13c0 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    11ac:	002195af 	mod.wu	$r15,$r13,$r5
    11b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b8 <printint.constprop.0+0x50>
    11b4:	002a0007 	break	0x7
    11b8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11bc:	002115ae 	div.wu	$r14,$r13,$r5
    11c0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c8 <printint.constprop.0+0x60>
    11c4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11cc:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11d0:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 1390 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11d4:	002195cf 	mod.wu	$r15,$r14,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0x78>
    11dc:	002a0007 	break	0x7
    11e0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e4:	002115cd 	div.wu	$r13,$r14,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0x88>
    11ec:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f4:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    11f8:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 139c <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    11fc:	002195af 	mod.wu	$r15,$r13,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0xa0>
    1204:	002a0007 	break	0x7
    1208:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    120c:	002115ae 	div.wu	$r14,$r13,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0xb0>
    1214:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1218:	38203d8f 	ldx.bu	$r15,$r12,$r15
    121c:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1220:	680189a5 	bltu	$r13,$r5,392(0x188) # 13a8 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1224:	002195cf 	mod.wu	$r15,$r14,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0xc8>
    122c:	002a0007 	break	0x7
    1230:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1234:	002115cd 	div.wu	$r13,$r14,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0xd8>
    123c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1240:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1244:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1248:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 13b4 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    124c:	002195af 	mod.wu	$r15,$r13,$r5
    1250:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1258 <printint.constprop.0+0xf0>
    1254:	002a0007 	break	0x7
    1258:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    125c:	002115ae 	div.wu	$r14,$r13,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0x100>
    1264:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1268:	38203d8f 	ldx.bu	$r15,$r12,$r15
    126c:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1270:	680115a5 	bltu	$r13,$r5,276(0x114) # 1384 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1274:	002195cf 	mod.wu	$r15,$r14,$r5
    1278:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1280 <printint.constprop.0+0x118>
    127c:	002a0007 	break	0x7
    1280:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1284:	002115cd 	div.wu	$r13,$r14,$r5
    1288:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1290 <printint.constprop.0+0x128>
    128c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1290:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1294:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    1298:	680131c5 	bltu	$r14,$r5,304(0x130) # 13c8 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    129c:	002195af 	mod.wu	$r15,$r13,$r5
    12a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a8 <printint.constprop.0+0x140>
    12a4:	002a0007 	break	0x7
    12a8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12ac:	002115ae 	div.wu	$r14,$r13,$r5
    12b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b8 <printint.constprop.0+0x150>
    12b4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12bc:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    12c0:	680115a5 	bltu	$r13,$r5,276(0x114) # 13d4 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    12c4:	002195cf 	mod.wu	$r15,$r14,$r5
    12c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d0 <printint.constprop.0+0x168>
    12cc:	002a0007 	break	0x7
    12d0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12d4:	002115cd 	div.wu	$r13,$r14,$r5
    12d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12e0 <printint.constprop.0+0x178>
    12dc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12e4:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    12e8:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 13e0 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    12ec:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    12f0:	3820358d 	ldx.bu	$r13,$r12,$r13
    12f4:	02801805 	addi.w	$r5,$r0,6(0x6)
    12f8:	0280140c 	addi.w	$r12,$r0,5(0x5)
    12fc:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1300:	64001880 	bge	$r4,$r0,24(0x18) # 1318 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1304:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1308:	0010b1ad 	add.d	$r13,$r13,$r12
    130c:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1310:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1314:	00150185 	move	$r5,$r12
    write(f, s, l);
    1318:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    131c:	02804006 	addi.w	$r6,$r0,16(0x10)
    1320:	001114c6 	sub.w	$r6,$r6,$r5
    1324:	02800404 	addi.w	$r4,$r0,1(0x1)
    1328:	00109585 	add.d	$r5,$r12,$r5
    132c:	540f5000 	bl	3920(0xf50) # 227c <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1330:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1334:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1338:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    133c:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1340:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1344:	02ce018c 	addi.d	$r12,$r12,896(0x380)
    1348:	002195cf 	mod.wu	$r15,$r14,$r5
    134c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1354 <printint.constprop.0+0x1ec>
    1350:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1354:	002115cd 	div.wu	$r13,$r14,$r5
    1358:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1360 <printint.constprop.0+0x1f8>
    135c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1360:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1364:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1368:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    136c:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1370:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 11ac <printint.constprop.0+0x44>
        buf[i--] = '-';
    1374:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1378:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    137c:	02803805 	addi.w	$r5,$r0,14(0xe)
    1380:	53ff9bff 	b	-104(0xfffff98) # 1318 <printint.constprop.0+0x1b0>
    1384:	0280240c 	addi.w	$r12,$r0,9(0x9)
    1388:	02802805 	addi.w	$r5,$r0,10(0xa)
    138c:	53ff77ff 	b	-140(0xfffff74) # 1300 <printint.constprop.0+0x198>
    1390:	0280340c 	addi.w	$r12,$r0,13(0xd)
    1394:	02803805 	addi.w	$r5,$r0,14(0xe)
    1398:	53ff6bff 	b	-152(0xfffff68) # 1300 <printint.constprop.0+0x198>
    139c:	0280300c 	addi.w	$r12,$r0,12(0xc)
    13a0:	02803405 	addi.w	$r5,$r0,13(0xd)
    13a4:	53ff5fff 	b	-164(0xfffff5c) # 1300 <printint.constprop.0+0x198>
    13a8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    13ac:	02803005 	addi.w	$r5,$r0,12(0xc)
    13b0:	53ff53ff 	b	-176(0xfffff50) # 1300 <printint.constprop.0+0x198>
    13b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
    13b8:	02802c05 	addi.w	$r5,$r0,11(0xb)
    13bc:	53ff47ff 	b	-188(0xfffff44) # 1300 <printint.constprop.0+0x198>
    i = 15;
    13c0:	02803c05 	addi.w	$r5,$r0,15(0xf)
    13c4:	53ff57ff 	b	-172(0xfffff54) # 1318 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    13c8:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13cc:	02802405 	addi.w	$r5,$r0,9(0x9)
    13d0:	53ff33ff 	b	-208(0xfffff30) # 1300 <printint.constprop.0+0x198>
    13d4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13d8:	02802005 	addi.w	$r5,$r0,8(0x8)
    13dc:	53ff27ff 	b	-220(0xfffff24) # 1300 <printint.constprop.0+0x198>
    13e0:	0280180c 	addi.w	$r12,$r0,6(0x6)
    13e4:	02801c05 	addi.w	$r5,$r0,7(0x7)
    13e8:	53ff1bff 	b	-232(0xfffff18) # 1300 <printint.constprop.0+0x198>

00000000000013ec <getchar>:
{
    13ec:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    13f0:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    13f4:	02800406 	addi.w	$r6,$r0,1(0x1)
    13f8:	00150004 	move	$r4,$r0
{
    13fc:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1400:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1404:	540e6c00 	bl	3692(0xe6c) # 2270 <read>
}
    1408:	28c06061 	ld.d	$r1,$r3,24(0x18)
    140c:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1410:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1414:	4c000020 	jirl	$r0,$r1,0

0000000000001418 <putchar>:
{
    1418:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    141c:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1420:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1424:	02800406 	addi.w	$r6,$r0,1(0x1)
    1428:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    142c:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1430:	540e4c00 	bl	3660(0xe4c) # 227c <write>
}
    1434:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1438:	00408084 	slli.w	$r4,$r4,0x0
}
    143c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1440:	4c000020 	jirl	$r0,$r1,0

0000000000001444 <puts>:
{
    1444:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1448:	29c02061 	st.d	$r1,$r3,8(0x8)
    144c:	27000077 	stptr.d	$r23,$r3,0
    1450:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1454:	5406d400 	bl	1748(0x6d4) # 1b28 <strlen>
    1458:	00150086 	move	$r6,$r4
    145c:	001502e5 	move	$r5,$r23
    1460:	02800404 	addi.w	$r4,$r0,1(0x1)
    1464:	540e1800 	bl	3608(0xe18) # 227c <write>
}
    1468:	28c02061 	ld.d	$r1,$r3,8(0x8)
    146c:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1470:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1474:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1478:	4c000020 	jirl	$r0,$r1,0

000000000000147c <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    147c:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    1480:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    1484:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    1488:	140000fa 	lu12i.w	$r26,7(0x7)
{
    148c:	29c14079 	st.d	$r25,$r3,80(0x50)
    1490:	29c1007b 	st.d	$r27,$r3,64(0x40)
    1494:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    1498:	29c1a061 	st.d	$r1,$r3,104(0x68)
    149c:	29c18077 	st.d	$r23,$r3,96(0x60)
    14a0:	29c16078 	st.d	$r24,$r3,88(0x58)
    14a4:	0015009b 	move	$r27,$r4
    14a8:	29c1e065 	st.d	$r5,$r3,120(0x78)
    14ac:	29c20066 	st.d	$r6,$r3,128(0x80)
    14b0:	29c22067 	st.d	$r7,$r3,136(0x88)
    14b4:	29c24068 	st.d	$r8,$r3,144(0x90)
    14b8:	29c26069 	st.d	$r9,$r3,152(0x98)
    14bc:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    14c0:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    14c4:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    14c8:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14cc:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14d0:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14d4:	02c7c39c 	addi.d	$r28,$r28,496(0x1f0)
        if (!*s)
    14d8:	2800036c 	ld.b	$r12,$r27,0
    14dc:	40008980 	beqz	$r12,136(0x88) # 1564 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    14e0:	58027d99 	beq	$r12,$r25,636(0x27c) # 175c <printf+0x2e0>
    14e4:	00150366 	move	$r6,$r27
    14e8:	50000800 	b	8(0x8) # 14f0 <printf+0x74>
    14ec:	58009d99 	beq	$r12,$r25,156(0x9c) # 1588 <printf+0x10c>
    14f0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    14f4:	280000cc 	ld.b	$r12,$r6,0
    14f8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 14ec <printf+0x70>
    14fc:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1500:	0011ecd7 	sub.d	$r23,$r6,$r27
    1504:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1508:	001502e6 	move	$r6,$r23
    150c:	00150365 	move	$r5,$r27
    1510:	02800404 	addi.w	$r4,$r0,1(0x1)
    1514:	540d6800 	bl	3432(0xd68) # 227c <write>
        out(f, a, l);
        if (l)
    1518:	4400b6e0 	bnez	$r23,180(0xb4) # 15cc <printf+0x150>
            continue;
        if (s[1] == 0)
    151c:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1520:	40004580 	beqz	$r12,68(0x44) # 1564 <printf+0xe8>
            break;
        switch (s[1])
    1524:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1528:	5800d58d 	beq	$r12,$r13,212(0xd4) # 15fc <printf+0x180>
    152c:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15d4 <printf+0x158>
    1530:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1534:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1724 <printf+0x2a8>
    1538:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    153c:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 16ec <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1540:	2600006c 	ldptr.d	$r12,$r3,0
    1544:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1548:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    154c:	24000184 	ldptr.w	$r4,$r12,0
    1550:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1554:	2700006c 	stptr.d	$r12,$r3,0
    1558:	57fc13ff 	bl	-1008(0xffffc10) # 1168 <printint.constprop.0>
        if (!*s)
    155c:	2800036c 	ld.b	$r12,$r27,0
    1560:	47ff819f 	bnez	$r12,-128(0x7fff80) # 14e0 <printf+0x64>
    }
    va_end(ap);
}
    1564:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1568:	28c18077 	ld.d	$r23,$r3,96(0x60)
    156c:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1570:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1574:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    1578:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    157c:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    1580:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    1584:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1588:	280004cc 	ld.b	$r12,$r6,1(0x1)
    158c:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 14fc <printf+0x80>
    1590:	001500d8 	move	$r24,$r6
    1594:	50000c00 	b	12(0xc) # 15a0 <printf+0x124>
    1598:	2800070c 	ld.b	$r12,$r24,1(0x1)
    159c:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1500 <printf+0x84>
    15a0:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    15a4:	2800030c 	ld.b	$r12,$r24,0
    15a8:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    15ac:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 1598 <printf+0x11c>
        l = z - a;
    15b0:	0011ecd7 	sub.d	$r23,$r6,$r27
    15b4:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    15b8:	001502e6 	move	$r6,$r23
    15bc:	00150365 	move	$r5,$r27
    15c0:	02800404 	addi.w	$r4,$r0,1(0x1)
    15c4:	540cb800 	bl	3256(0xcb8) # 227c <write>
        if (l)
    15c8:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 151c <printf+0xa0>
    15cc:	0015031b 	move	$r27,$r24
    15d0:	53ff0bff 	b	-248(0xfffff08) # 14d8 <printf+0x5c>
        switch (s[1])
    15d4:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15d8:	5c01158d 	bne	$r12,$r13,276(0x114) # 16ec <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    15dc:	2600006c 	ldptr.d	$r12,$r3,0
    15e0:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    15e4:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    15e8:	24000184 	ldptr.w	$r4,$r12,0
    15ec:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    15f0:	2700006c 	stptr.d	$r12,$r3,0
    15f4:	57fb77ff 	bl	-1164(0xffffb74) # 1168 <printint.constprop.0>
        s += 2;
    15f8:	53ff67ff 	b	-156(0xfffff64) # 155c <printf+0xe0>
            printptr(va_arg(ap, uint64));
    15fc:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1600:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1604:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1608:	260001ac 	ldptr.d	$r12,$r13,0
    160c:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1610:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1614:	0045f18a 	srli.d	$r10,$r12,0x3c
    1618:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    161c:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1620:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1624:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1628:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    162c:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1630:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1634:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1638:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    163c:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1640:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1644:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1648:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    164c:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1650:	3820278a 	ldx.bu	$r10,$r28,$r9
    1654:	38202389 	ldx.bu	$r9,$r28,$r8
    1658:	38201f88 	ldx.bu	$r8,$r28,$r7
    165c:	38201787 	ldx.bu	$r7,$r28,$r5
    1660:	38201385 	ldx.bu	$r5,$r28,$r4
    1664:	38205384 	ldx.bu	$r4,$r28,$r20
    1668:	38204f94 	ldx.bu	$r20,$r28,$r19
    166c:	38204b93 	ldx.bu	$r19,$r28,$r18
    1670:	38204792 	ldx.bu	$r18,$r28,$r17
    1674:	38204391 	ldx.bu	$r17,$r28,$r16
    1678:	38203f90 	ldx.bu	$r16,$r28,$r15
    167c:	38203b8f 	ldx.bu	$r15,$r28,$r14
    1680:	3820378e 	ldx.bu	$r14,$r28,$r13
    1684:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    1688:	03403d8c 	andi	$r12,$r12,0xf
    168c:	2900286b 	st.b	$r11,$r3,10(0xa)
    1690:	29002c6a 	st.b	$r10,$r3,11(0xb)
    1694:	29003069 	st.b	$r9,$r3,12(0xc)
    1698:	29003468 	st.b	$r8,$r3,13(0xd)
    169c:	29003867 	st.b	$r7,$r3,14(0xe)
    16a0:	29003c65 	st.b	$r5,$r3,15(0xf)
    16a4:	29004064 	st.b	$r4,$r3,16(0x10)
    16a8:	29004474 	st.b	$r20,$r3,17(0x11)
    16ac:	29004873 	st.b	$r19,$r3,18(0x12)
    16b0:	29004c72 	st.b	$r18,$r3,19(0x13)
    16b4:	29005071 	st.b	$r17,$r3,20(0x14)
    16b8:	29005470 	st.b	$r16,$r3,21(0x15)
    16bc:	2900586f 	st.b	$r15,$r3,22(0x16)
    16c0:	29005c6e 	st.b	$r14,$r3,23(0x17)
    16c4:	3820378d 	ldx.bu	$r13,$r28,$r13
    16c8:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16cc:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16d0:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16d4:	2900606d 	st.b	$r13,$r3,24(0x18)
    16d8:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    16dc:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    16e0:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    16e4:	540b9800 	bl	2968(0xb98) # 227c <write>
        s += 2;
    16e8:	53fe77ff 	b	-396(0xffffe74) # 155c <printf+0xe0>
    char byte = c;
    16ec:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    16f0:	02800406 	addi.w	$r6,$r0,1(0x1)
    16f4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16f8:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    16fc:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1700:	540b7c00 	bl	2940(0xb7c) # 227c <write>
    char byte = c;
    1704:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1708:	02800406 	addi.w	$r6,$r0,1(0x1)
    170c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1710:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1714:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1718:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    171c:	540b6000 	bl	2912(0xb60) # 227c <write>
        s += 2;
    1720:	53fe3fff 	b	-452(0xffffe3c) # 155c <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1724:	2600006c 	ldptr.d	$r12,$r3,0
    1728:	26000197 	ldptr.d	$r23,$r12,0
    172c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1730:	2700006c 	stptr.d	$r12,$r3,0
    1734:	40004ee0 	beqz	$r23,76(0x4c) # 1780 <printf+0x304>
            l = strnlen(a, 200);
    1738:	02832005 	addi.w	$r5,$r0,200(0xc8)
    173c:	001502e4 	move	$r4,$r23
    1740:	5405d000 	bl	1488(0x5d0) # 1d10 <strnlen>
    1744:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1748:	001502e5 	move	$r5,$r23
    174c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1750:	540b2c00 	bl	2860(0xb2c) # 227c <write>
        s += 2;
    1754:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1758:	53fe07ff 	b	-508(0xffffe04) # 155c <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    175c:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1760:	00150366 	move	$r6,$r27
    1764:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 1590 <printf+0x114>
    write(f, s, l);
    1768:	00150006 	move	$r6,$r0
    176c:	00150365 	move	$r5,$r27
    1770:	02800404 	addi.w	$r4,$r0,1(0x1)
    1774:	540b0800 	bl	2824(0xb08) # 227c <write>
    1778:	00150378 	move	$r24,$r27
    177c:	53fda3ff 	b	-608(0xffffda0) # 151c <printf+0xa0>
                a = "(null)";
    1780:	1c000037 	pcaddu12i	$r23,1(0x1)
    1784:	02fc82f7 	addi.d	$r23,$r23,-224(0xf20)
    1788:	53ffb3ff 	b	-80(0xfffffb0) # 1738 <printf+0x2bc>

000000000000178c <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    178c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1790:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    1794:	57fcb3ff 	bl	-848(0xffffcb0) # 1444 <puts>
    exit(-100);
}
    1798:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    179c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    17a0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    17a4:	500b4c00 	b	2892(0xb4c) # 22f0 <exit>

00000000000017a8 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    17a8:	0280800c 	addi.w	$r12,$r0,32(0x20)
    17ac:	5800108c 	beq	$r4,$r12,16(0x10) # 17bc <isspace+0x14>
    17b0:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    17b4:	02401484 	sltui	$r4,$r4,5(0x5)
    17b8:	4c000020 	jirl	$r0,$r1,0
    17bc:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    17c0:	4c000020 	jirl	$r0,$r1,0

00000000000017c4 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    17c4:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    17c8:	02402884 	sltui	$r4,$r4,10(0xa)
    17cc:	4c000020 	jirl	$r0,$r1,0

00000000000017d0 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17d0:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17d4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17d8:	2800008d 	ld.b	$r13,$r4,0
    17dc:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    17e0:	580061ae 	beq	$r13,$r14,96(0x60) # 1840 <atoi+0x70>
    17e4:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1840 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    17e8:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    17ec:	580065ac 	beq	$r13,$r12,100(0x64) # 1850 <atoi+0x80>
    17f0:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    17f4:	58007dac 	beq	$r13,$r12,124(0x7c) # 1870 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    17f8:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    17fc:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1800:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1804:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1808:	680061cf 	bltu	$r14,$r15,96(0x60) # 1868 <atoi+0x98>
    int n = 0, neg = 0;
    180c:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1810:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1814:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1818:	001c126f 	mul.w	$r15,$r19,$r4
    181c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1820:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1824:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1828:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    182c:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1830:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1834:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1818 <atoi+0x48>
    return neg ? n : -n;
    1838:	40001280 	beqz	$r20,16(0x10) # 1848 <atoi+0x78>
}
    183c:	4c000020 	jirl	$r0,$r1,0
        s++;
    1840:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1844:	53ff97ff 	b	-108(0xfffff94) # 17d8 <atoi+0x8>
    1848:	00113e04 	sub.w	$r4,$r16,$r15
    184c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1850:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1854:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1858:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    185c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1860:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1864:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 180c <atoi+0x3c>
    1868:	00150004 	move	$r4,$r0
}
    186c:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1870:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1874:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1878:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    187c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1880:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1868 <atoi+0x98>
        neg = 1;
    1884:	02800414 	addi.w	$r20,$r0,1(0x1)
    1888:	53ff87ff 	b	-124(0xfffff84) # 180c <atoi+0x3c>

000000000000188c <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    188c:	400198c0 	beqz	$r6,408(0x198) # 1a24 <memset+0x198>
    1890:	0011900c 	sub.d	$r12,$r0,$r4
    1894:	03401d8c 	andi	$r12,$r12,0x7
    1898:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    189c:	02402dae 	sltui	$r14,$r13,11(0xb)
    18a0:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    18a4:	0013b9ad 	masknez	$r13,$r13,$r14
    18a8:	001339ee 	maskeqz	$r14,$r15,$r14
    18ac:	001539ad 	or	$r13,$r13,$r14
    18b0:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    18b4:	00005ca5 	ext.w.b	$r5,$r5
    18b8:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a48 <memset+0x1bc>
    18bc:	40018180 	beqz	$r12,384(0x180) # 1a3c <memset+0x1b0>
    18c0:	29000085 	st.b	$r5,$r4,0
    18c4:	0280040d 	addi.w	$r13,$r0,1(0x1)
    18c8:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18cc:	5801698d 	beq	$r12,$r13,360(0x168) # 1a34 <memset+0x1a8>
    18d0:	29000485 	st.b	$r5,$r4,1(0x1)
    18d4:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18d8:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    18dc:	5801798d 	beq	$r12,$r13,376(0x178) # 1a54 <memset+0x1c8>
    18e0:	29000885 	st.b	$r5,$r4,2(0x2)
    18e4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    18e8:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    18ec:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a28 <memset+0x19c>
    18f0:	29000c85 	st.b	$r5,$r4,3(0x3)
    18f4:	0280100d 	addi.w	$r13,$r0,4(0x4)
    18f8:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    18fc:	5801618d 	beq	$r12,$r13,352(0x160) # 1a5c <memset+0x1d0>
    1900:	29001085 	st.b	$r5,$r4,4(0x4)
    1904:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1908:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    190c:	5801598d 	beq	$r12,$r13,344(0x158) # 1a64 <memset+0x1d8>
    1910:	29001485 	st.b	$r5,$r4,5(0x5)
    1914:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1918:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    191c:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a6c <memset+0x1e0>
    1920:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1924:	29001885 	st.b	$r5,$r4,6(0x6)
    1928:	02801c11 	addi.w	$r17,$r0,7(0x7)
    192c:	0015000d 	move	$r13,$r0
    1930:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1934:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1938:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    193c:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1940:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1944:	0011b0d0 	sub.d	$r16,$r6,$r12
    1948:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    194c:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1950:	0010b08c 	add.d	$r12,$r4,$r12
    1954:	00450e0f 	srli.d	$r15,$r16,0x3
    1958:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    195c:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1960:	2700018d 	stptr.d	$r13,$r12,0
    1964:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1968:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1960 <memset+0xd4>
    196c:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1970:	0014be0f 	and	$r15,$r16,$r15
    1974:	004081ed 	slli.w	$r13,$r15,0x0
    1978:	0010bdcc 	add.d	$r12,$r14,$r15
    197c:	001045ad 	add.w	$r13,$r13,$r17
    1980:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a30 <memset+0x1a4>
    1984:	29000185 	st.b	$r5,$r12,0
    1988:	028005ae 	addi.w	$r14,$r13,1(0x1)
    198c:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a24 <memset+0x198>
    1990:	29000585 	st.b	$r5,$r12,1(0x1)
    1994:	028009ae 	addi.w	$r14,$r13,2(0x2)
    1998:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a24 <memset+0x198>
    199c:	29000985 	st.b	$r5,$r12,2(0x2)
    19a0:	02800dae 	addi.w	$r14,$r13,3(0x3)
    19a4:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a24 <memset+0x198>
    19a8:	29000d85 	st.b	$r5,$r12,3(0x3)
    19ac:	028011ae 	addi.w	$r14,$r13,4(0x4)
    19b0:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a24 <memset+0x198>
    19b4:	29001185 	st.b	$r5,$r12,4(0x4)
    19b8:	028015ae 	addi.w	$r14,$r13,5(0x5)
    19bc:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a24 <memset+0x198>
    19c0:	29001585 	st.b	$r5,$r12,5(0x5)
    19c4:	028019ae 	addi.w	$r14,$r13,6(0x6)
    19c8:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a24 <memset+0x198>
    19cc:	29001985 	st.b	$r5,$r12,6(0x6)
    19d0:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19d4:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a24 <memset+0x198>
    19d8:	29001d85 	st.b	$r5,$r12,7(0x7)
    19dc:	028021ae 	addi.w	$r14,$r13,8(0x8)
    19e0:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a24 <memset+0x198>
    19e4:	29002185 	st.b	$r5,$r12,8(0x8)
    19e8:	028025ae 	addi.w	$r14,$r13,9(0x9)
    19ec:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a24 <memset+0x198>
    19f0:	29002585 	st.b	$r5,$r12,9(0x9)
    19f4:	028029ae 	addi.w	$r14,$r13,10(0xa)
    19f8:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a24 <memset+0x198>
    19fc:	29002985 	st.b	$r5,$r12,10(0xa)
    1a00:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1a04:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a24 <memset+0x198>
    1a08:	29002d85 	st.b	$r5,$r12,11(0xb)
    1a0c:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1a10:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a24 <memset+0x198>
    1a14:	29003185 	st.b	$r5,$r12,12(0xc)
    1a18:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1a1c:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a24 <memset+0x198>
    1a20:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a24:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a28:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a2c:	53ff03ff 	b	-256(0xfffff00) # 192c <memset+0xa0>
    1a30:	4c000020 	jirl	$r0,$r1,0
    1a34:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a38:	53fef7ff 	b	-268(0xffffef4) # 192c <memset+0xa0>
    1a3c:	0015008e 	move	$r14,$r4
    1a40:	00150011 	move	$r17,$r0
    1a44:	53feebff 	b	-280(0xffffee8) # 192c <memset+0xa0>
    1a48:	0015008c 	move	$r12,$r4
    1a4c:	0015000d 	move	$r13,$r0
    1a50:	53ff37ff 	b	-204(0xfffff34) # 1984 <memset+0xf8>
    1a54:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a58:	53fed7ff 	b	-300(0xffffed4) # 192c <memset+0xa0>
    1a5c:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a60:	53fecfff 	b	-308(0xffffecc) # 192c <memset+0xa0>
    1a64:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a68:	53fec7ff 	b	-316(0xffffec4) # 192c <memset+0xa0>
    1a6c:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a70:	53febfff 	b	-324(0xffffebc) # 192c <memset+0xa0>

0000000000001a74 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a74:	2800008c 	ld.b	$r12,$r4,0
    1a78:	280000ae 	ld.b	$r14,$r5,0
    1a7c:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1ab0 <strcmp+0x3c>
    1a80:	40003980 	beqz	$r12,56(0x38) # 1ab8 <strcmp+0x44>
    1a84:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1a88:	50000800 	b	8(0x8) # 1a90 <strcmp+0x1c>
    1a8c:	400019a0 	beqz	$r13,24(0x18) # 1aa4 <strcmp+0x30>
    1a90:	3800308d 	ldx.b	$r13,$r4,$r12
    1a94:	380030ae 	ldx.b	$r14,$r5,$r12
    1a98:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1a9c:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1a8c <strcmp+0x18>
    1aa0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1aa4:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1aa8:	001111a4 	sub.w	$r4,$r13,$r4
    1aac:	4c000020 	jirl	$r0,$r1,0
    1ab0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1ab4:	53fff3ff 	b	-16(0xffffff0) # 1aa4 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1ab8:	0015000d 	move	$r13,$r0
    1abc:	53ffebff 	b	-24(0xfffffe8) # 1aa4 <strcmp+0x30>

0000000000001ac0 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1ac0:	400054c0 	beqz	$r6,84(0x54) # 1b14 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1ac4:	2a00008d 	ld.bu	$r13,$r4,0
    1ac8:	2a0000ae 	ld.bu	$r14,$r5,0
    1acc:	40003da0 	beqz	$r13,60(0x3c) # 1b08 <strncmp+0x48>
    1ad0:	40003dc0 	beqz	$r14,60(0x3c) # 1b0c <strncmp+0x4c>
    if (!n--)
    1ad4:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1ad8:	400034c0 	beqz	$r6,52(0x34) # 1b0c <strncmp+0x4c>
    1adc:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ae0:	580019ae 	beq	$r13,$r14,24(0x18) # 1af8 <strncmp+0x38>
    1ae4:	50002800 	b	40(0x28) # 1b0c <strncmp+0x4c>
    1ae8:	400035c0 	beqz	$r14,52(0x34) # 1b1c <strncmp+0x5c>
    1aec:	580020cc 	beq	$r6,$r12,32(0x20) # 1b0c <strncmp+0x4c>
    1af0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1af4:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1b1c <strncmp+0x5c>
    1af8:	3820308d 	ldx.bu	$r13,$r4,$r12
    1afc:	382030ae 	ldx.bu	$r14,$r5,$r12
    1b00:	001501af 	move	$r15,$r13
    1b04:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1ae8 <strncmp+0x28>
    1b08:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1b0c:	001139a4 	sub.w	$r4,$r13,$r14
    1b10:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1b14:	00150004 	move	$r4,$r0
}
    1b18:	4c000020 	jirl	$r0,$r1,0
    1b1c:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b20:	001139a4 	sub.w	$r4,$r13,$r14
    1b24:	4c000020 	jirl	$r0,$r1,0

0000000000001b28 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b28:	03401c8c 	andi	$r12,$r4,0x7
    1b2c:	4000b180 	beqz	$r12,176(0xb0) # 1bdc <strlen+0xb4>
        if (!*s)
    1b30:	2800008c 	ld.b	$r12,$r4,0
    1b34:	4000b180 	beqz	$r12,176(0xb0) # 1be4 <strlen+0xbc>
    1b38:	0015008c 	move	$r12,$r4
    1b3c:	50000c00 	b	12(0xc) # 1b48 <strlen+0x20>
    1b40:	2800018d 	ld.b	$r13,$r12,0
    1b44:	400091a0 	beqz	$r13,144(0x90) # 1bd4 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b48:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b4c:	03401d8d 	andi	$r13,$r12,0x7
    1b50:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b40 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b54:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b58:	2600018f 	ldptr.d	$r15,$r12,0
    1b5c:	03bbfdad 	ori	$r13,$r13,0xeff
    1b60:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b64:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b68:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b6c:	038201ce 	ori	$r14,$r14,0x80
    1b70:	0010b5ed 	add.d	$r13,$r15,$r13
    1b74:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b78:	0016bdad 	andn	$r13,$r13,$r15
    1b7c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1b80:	0014b9ae 	and	$r14,$r13,$r14
    1b84:	440049c0 	bnez	$r14,72(0x48) # 1bcc <strlen+0xa4>
    1b88:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1b8c:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1b90:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1b94:	2600018e 	ldptr.d	$r14,$r12,0
    1b98:	03bbfe2d 	ori	$r13,$r17,0xeff
    1b9c:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ba0:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1ba4:	0382020f 	ori	$r15,$r16,0x80
    1ba8:	0010b5cd 	add.d	$r13,$r14,$r13
    1bac:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1bb0:	0016b9ad 	andn	$r13,$r13,$r14
    1bb4:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bb8:	0014bdad 	and	$r13,$r13,$r15
    1bbc:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1b90 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1bc0:	2800018d 	ld.b	$r13,$r12,0
    1bc4:	400011a0 	beqz	$r13,16(0x10) # 1bd4 <strlen+0xac>
    1bc8:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1bcc:	2800018d 	ld.b	$r13,$r12,0
    1bd0:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1bc8 <strlen+0xa0>
        ;
    return s - a;
    1bd4:	00119184 	sub.d	$r4,$r12,$r4
}
    1bd8:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1bdc:	0015008c 	move	$r12,$r4
    1be0:	53ff77ff 	b	-140(0xfffff74) # 1b54 <strlen+0x2c>
        if (!*s)
    1be4:	00150004 	move	$r4,$r0
            return s - a;
    1be8:	4c000020 	jirl	$r0,$r1,0

0000000000001bec <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1bec:	03401c8c 	andi	$r12,$r4,0x7
    1bf0:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1bf4:	44002180 	bnez	$r12,32(0x20) # 1c14 <memchr+0x28>
    1bf8:	50002c00 	b	44(0x2c) # 1c24 <memchr+0x38>
    1bfc:	2a00008c 	ld.bu	$r12,$r4,0
    1c00:	5800f985 	beq	$r12,$r5,248(0xf8) # 1cf8 <memchr+0x10c>
    1c04:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1c08:	03401c8c 	andi	$r12,$r4,0x7
    1c0c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1c10:	40001580 	beqz	$r12,20(0x14) # 1c24 <memchr+0x38>
    1c14:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1bfc <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1c18:	0015000d 	move	$r13,$r0
}
    1c1c:	001501a4 	move	$r4,$r13
    1c20:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c24:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c28:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1c1c <memchr+0x30>
    1c2c:	2a00008c 	ld.bu	$r12,$r4,0
    1c30:	5800c985 	beq	$r12,$r5,200(0xc8) # 1cf8 <memchr+0x10c>
        size_t k = ONES * c;
    1c34:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c38:	0384058c 	ori	$r12,$r12,0x101
    1c3c:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c40:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c44:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c48:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c4c:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1d08 <memchr+0x11c>
    1c50:	2600008d 	ldptr.d	$r13,$r4,0
    1c54:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c58:	038201ce 	ori	$r14,$r14,0x80
    1c5c:	0015b60d 	xor	$r13,$r16,$r13
    1c60:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c64:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c68:	0016b58c 	andn	$r12,$r12,$r13
    1c6c:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c70:	0014b98c 	and	$r12,$r12,$r14
    1c74:	44009580 	bnez	$r12,148(0x94) # 1d08 <memchr+0x11c>
    1c78:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1c7c:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1c80:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1c84:	50002000 	b	32(0x20) # 1ca4 <memchr+0xb8>
    1c88:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1c8c:	0015b20c 	xor	$r12,$r16,$r12
    1c90:	0010b98e 	add.d	$r14,$r12,$r14
    1c94:	0016b1cc 	andn	$r12,$r14,$r12
    1c98:	0014bd8c 	and	$r12,$r12,$r15
    1c9c:	44006580 	bnez	$r12,100(0x64) # 1d00 <memchr+0x114>
    1ca0:	001501a4 	move	$r4,$r13
    1ca4:	03bbfe4e 	ori	$r14,$r18,0xeff
    1ca8:	0382022f 	ori	$r15,$r17,0x80
    1cac:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cb0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cb4:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1cb8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1cbc:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1cc0:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1cc4:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1c88 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1cc8:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1c18 <memchr+0x2c>
    1ccc:	2a0001ac 	ld.bu	$r12,$r13,0
    1cd0:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1c1c <memchr+0x30>
    1cd4:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1cd8:	001099a6 	add.d	$r6,$r13,$r6
    1cdc:	50001000 	b	16(0x10) # 1cec <memchr+0x100>
    1ce0:	2a00018e 	ld.bu	$r14,$r12,0
    1ce4:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ce8:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1c1c <memchr+0x30>
    1cec:	0015018d 	move	$r13,$r12
    1cf0:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1ce0 <memchr+0xf4>
    1cf4:	53ff27ff 	b	-220(0xfffff24) # 1c18 <memchr+0x2c>
    1cf8:	0015008d 	move	$r13,$r4
    1cfc:	53ffd3ff 	b	-48(0xfffffd0) # 1ccc <memchr+0xe0>
    1d00:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1d04:	53ffcfff 	b	-52(0xfffffcc) # 1cd0 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d08:	0015008d 	move	$r13,$r4
    1d0c:	53ffcbff 	b	-56(0xfffffc8) # 1cd4 <memchr+0xe8>

0000000000001d10 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d10:	03401c8c 	andi	$r12,$r4,0x7
    1d14:	40011980 	beqz	$r12,280(0x118) # 1e2c <strnlen+0x11c>
    1d18:	4000f4a0 	beqz	$r5,244(0xf4) # 1e0c <strnlen+0xfc>
    1d1c:	2a00008c 	ld.bu	$r12,$r4,0
    1d20:	4000f580 	beqz	$r12,244(0xf4) # 1e14 <strnlen+0x104>
    1d24:	001500ac 	move	$r12,$r5
    1d28:	0015008d 	move	$r13,$r4
    1d2c:	50001000 	b	16(0x10) # 1d3c <strnlen+0x2c>
    1d30:	4000dd80 	beqz	$r12,220(0xdc) # 1e0c <strnlen+0xfc>
    1d34:	2a0001ae 	ld.bu	$r14,$r13,0
    1d38:	4000e5c0 	beqz	$r14,228(0xe4) # 1e1c <strnlen+0x10c>
    1d3c:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d40:	03401dae 	andi	$r14,$r13,0x7
    1d44:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d48:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d30 <strnlen+0x20>
    if (n && *s != c)
    1d4c:	4000c180 	beqz	$r12,192(0xc0) # 1e0c <strnlen+0xfc>
    1d50:	2a0001ae 	ld.bu	$r14,$r13,0
    1d54:	4000c9c0 	beqz	$r14,200(0xc8) # 1e1c <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d58:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d5c:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e38 <strnlen+0x128>
    1d60:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d64:	260001b0 	ldptr.d	$r16,$r13,0
    1d68:	03bbfdce 	ori	$r14,$r14,0xeff
    1d6c:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d70:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d74:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d78:	038201ef 	ori	$r15,$r15,0x80
    1d7c:	0010ba0e 	add.d	$r14,$r16,$r14
    1d80:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1d84:	0016c1ce 	andn	$r14,$r14,$r16
    1d88:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d8c:	0014bdcf 	and	$r15,$r14,$r15
    1d90:	4400a9e0 	bnez	$r15,168(0xa8) # 1e38 <strnlen+0x128>
    1d94:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1d98:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1d9c:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1da0:	50001c00 	b	28(0x1c) # 1dbc <strnlen+0xac>
    1da4:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1da8:	0010b9ee 	add.d	$r14,$r15,$r14
    1dac:	0016bdce 	andn	$r14,$r14,$r15
    1db0:	0014c1ce 	and	$r14,$r14,$r16
    1db4:	440071c0 	bnez	$r14,112(0x70) # 1e24 <strnlen+0x114>
    1db8:	0015022d 	move	$r13,$r17
    1dbc:	03bbfe6e 	ori	$r14,$r19,0xeff
    1dc0:	03820250 	ori	$r16,$r18,0x80
    1dc4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1dc8:	16101010 	lu32i.d	$r16,32896(0x8080)
    1dcc:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1dd0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1dd4:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1dd8:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1ddc:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1da4 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1de0:	40002d80 	beqz	$r12,44(0x2c) # 1e0c <strnlen+0xfc>
    1de4:	2a00022d 	ld.bu	$r13,$r17,0
    1de8:	400021a0 	beqz	$r13,32(0x20) # 1e08 <strnlen+0xf8>
    1dec:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1df0:	0010b22c 	add.d	$r12,$r17,$r12
    1df4:	001501b1 	move	$r17,$r13
    1df8:	5800158d 	beq	$r12,$r13,20(0x14) # 1e0c <strnlen+0xfc>
    1dfc:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1e00:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1e04:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1df4 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1e08:	00119225 	sub.d	$r5,$r17,$r4
}
    1e0c:	001500a4 	move	$r4,$r5
    1e10:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e14:	001500ac 	move	$r12,$r5
    1e18:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1e1c:	001501b1 	move	$r17,$r13
    1e20:	53ffc7ff 	b	-60(0xfffffc4) # 1de4 <strnlen+0xd4>
    1e24:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e28:	53ffc3ff 	b	-64(0xfffffc0) # 1de8 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e2c:	001500ac 	move	$r12,$r5
    1e30:	0015008d 	move	$r13,$r4
    1e34:	53ff1bff 	b	-232(0xfffff18) # 1d4c <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e38:	001501b1 	move	$r17,$r13
    1e3c:	53ffb3ff 	b	-80(0xfffffb0) # 1dec <strnlen+0xdc>

0000000000001e40 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e40:	0015948c 	xor	$r12,$r4,$r5
    1e44:	03401d8c 	andi	$r12,$r12,0x7
    1e48:	4400ad80 	bnez	$r12,172(0xac) # 1ef4 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e4c:	03401cac 	andi	$r12,$r5,0x7
    1e50:	40003180 	beqz	$r12,48(0x30) # 1e80 <strcpy+0x40>
            if (!(*d = *s))
    1e54:	280000ac 	ld.b	$r12,$r5,0
    1e58:	2900008c 	st.b	$r12,$r4,0
    1e5c:	44001580 	bnez	$r12,20(0x14) # 1e70 <strcpy+0x30>
    1e60:	5000bc00 	b	188(0xbc) # 1f1c <strcpy+0xdc>
    1e64:	280000ac 	ld.b	$r12,$r5,0
    1e68:	2900008c 	st.b	$r12,$r4,0
    1e6c:	4000a980 	beqz	$r12,168(0xa8) # 1f14 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e70:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e74:	03401cac 	andi	$r12,$r5,0x7
    1e78:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1e7c:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e64 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1e80:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1e84:	260000ae 	ldptr.d	$r14,$r5,0
    1e88:	03bbfd8c 	ori	$r12,$r12,0xeff
    1e8c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1e90:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1e94:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1e98:	038201ad 	ori	$r13,$r13,0x80
    1e9c:	0010b1cc 	add.d	$r12,$r14,$r12
    1ea0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ea4:	0016b98c 	andn	$r12,$r12,$r14
    1ea8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1eac:	0014b58c 	and	$r12,$r12,$r13
    1eb0:	44004580 	bnez	$r12,68(0x44) # 1ef4 <strcpy+0xb4>
    1eb4:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1eb8:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ebc:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ec0:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1ec4:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1ec8:	260000ae 	ldptr.d	$r14,$r5,0
    1ecc:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ed0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ed4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ed8:	038201ed 	ori	$r13,$r15,0x80
    1edc:	0010b1cc 	add.d	$r12,$r14,$r12
    1ee0:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ee4:	0016b98c 	andn	$r12,$r12,$r14
    1ee8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1eec:	0014b58c 	and	$r12,$r12,$r13
    1ef0:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1ebc <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1ef4:	280000ac 	ld.b	$r12,$r5,0
    1ef8:	2900008c 	st.b	$r12,$r4,0
    1efc:	40001d80 	beqz	$r12,28(0x1c) # 1f18 <strcpy+0xd8>
    1f00:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f04:	280000ac 	ld.b	$r12,$r5,0
    1f08:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f0c:	2900008c 	st.b	$r12,$r4,0
    1f10:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1f00 <strcpy+0xc0>
        ;
    return d;
}
    1f14:	4c000020 	jirl	$r0,$r1,0
    1f18:	4c000020 	jirl	$r0,$r1,0
    1f1c:	4c000020 	jirl	$r0,$r1,0

0000000000001f20 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f20:	0015948c 	xor	$r12,$r4,$r5
    1f24:	03401d8c 	andi	$r12,$r12,0x7
    1f28:	4400ad80 	bnez	$r12,172(0xac) # 1fd4 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f2c:	03401cac 	andi	$r12,$r5,0x7
    1f30:	44010180 	bnez	$r12,256(0x100) # 2030 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f34:	400100c0 	beqz	$r6,256(0x100) # 2034 <strncpy+0x114>
    1f38:	280000af 	ld.b	$r15,$r5,0
    1f3c:	400105e0 	beqz	$r15,260(0x104) # 2040 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f40:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f44:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 221c <strncpy+0x2fc>
    1f48:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f4c:	260000ae 	ldptr.d	$r14,$r5,0
    1f50:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f54:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f58:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f5c:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f60:	038201ad 	ori	$r13,$r13,0x80
    1f64:	0010b1cc 	add.d	$r12,$r14,$r12
    1f68:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f6c:	0016b98c 	andn	$r12,$r12,$r14
    1f70:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f74:	0014b58c 	and	$r12,$r12,$r13
    1f78:	4402a580 	bnez	$r12,676(0x2a4) # 221c <strncpy+0x2fc>
    1f7c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1f80:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1f84:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1f88:	50001c00 	b	28(0x1c) # 1fa4 <strncpy+0x84>
    1f8c:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1f90:	0010b1cc 	add.d	$r12,$r14,$r12
    1f94:	0016b98c 	andn	$r12,$r12,$r14
    1f98:	0014b58c 	and	$r12,$r12,$r13
    1f9c:	44024580 	bnez	$r12,580(0x244) # 21e0 <strncpy+0x2c0>
    1fa0:	001501e5 	move	$r5,$r15
    1fa4:	03bbfe2c 	ori	$r12,$r17,0xeff
    1fa8:	0382020d 	ori	$r13,$r16,0x80
    1fac:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1fb0:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1fb4:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1fb8:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1fbc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fc0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fc4:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1fc8:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1fcc:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1f8c <strncpy+0x6c>
    1fd0:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1fd4:	400060c0 	beqz	$r6,96(0x60) # 2034 <strncpy+0x114>
    1fd8:	280000ac 	ld.b	$r12,$r5,0
    1fdc:	0015008d 	move	$r13,$r4
    1fe0:	2900008c 	st.b	$r12,$r4,0
    1fe4:	44001580 	bnez	$r12,20(0x14) # 1ff8 <strncpy+0xd8>
    1fe8:	50005c00 	b	92(0x5c) # 2044 <strncpy+0x124>
    1fec:	280000ac 	ld.b	$r12,$r5,0
    1ff0:	290001ac 	st.b	$r12,$r13,0
    1ff4:	40005180 	beqz	$r12,80(0x50) # 2044 <strncpy+0x124>
    1ff8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1ffc:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2000:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    2004:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1fec <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    2008:	001501a4 	move	$r4,$r13
    200c:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    2010:	280000ac 	ld.b	$r12,$r5,0
    2014:	2900008c 	st.b	$r12,$r4,0
    2018:	40002980 	beqz	$r12,40(0x28) # 2040 <strncpy+0x120>
    201c:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2020:	03401cac 	andi	$r12,$r5,0x7
    2024:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2028:	02c00484 	addi.d	$r4,$r4,1(0x1)
    202c:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f34 <strncpy+0x14>
    2030:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 2010 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2034:	0015008d 	move	$r13,$r4
}
    2038:	001501a4 	move	$r4,$r13
    203c:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2040:	0015008d 	move	$r13,$r4
    2044:	0011b40c 	sub.d	$r12,$r0,$r13
    2048:	03401d8c 	andi	$r12,$r12,0x7
    204c:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2050:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2054:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2058:	0013bdce 	masknez	$r14,$r14,$r15
    205c:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2060:	00133e0f 	maskeqz	$r15,$r16,$r15
    2064:	00153dce 	or	$r14,$r14,$r15
    2068:	024004d0 	sltui	$r16,$r6,1(0x1)
    206c:	00131a31 	maskeqz	$r17,$r17,$r6
    2070:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2074:	001540d0 	or	$r16,$r6,$r16
    2078:	68017a2e 	bltu	$r17,$r14,376(0x178) # 21f0 <strncpy+0x2d0>
    207c:	40015980 	beqz	$r12,344(0x158) # 21d4 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2080:	290001a0 	st.b	$r0,$r13,0
    2084:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    2088:	5801458f 	beq	$r12,$r15,324(0x144) # 21cc <strncpy+0x2ac>
    208c:	290005a0 	st.b	$r0,$r13,1(0x1)
    2090:	0280080f 	addi.w	$r15,$r0,2(0x2)
    2094:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    2098:	5801658f 	beq	$r12,$r15,356(0x164) # 21fc <strncpy+0x2dc>
    209c:	290009a0 	st.b	$r0,$r13,2(0x2)
    20a0:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    20a4:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    20a8:	58011d8f 	beq	$r12,$r15,284(0x11c) # 21c4 <strncpy+0x2a4>
    20ac:	29000da0 	st.b	$r0,$r13,3(0x3)
    20b0:	0280100f 	addi.w	$r15,$r0,4(0x4)
    20b4:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    20b8:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2204 <strncpy+0x2e4>
    20bc:	290011a0 	st.b	$r0,$r13,4(0x4)
    20c0:	0280140f 	addi.w	$r15,$r0,5(0x5)
    20c4:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    20c8:	5801458f 	beq	$r12,$r15,324(0x144) # 220c <strncpy+0x2ec>
    20cc:	290015a0 	st.b	$r0,$r13,5(0x5)
    20d0:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20d4:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20d8:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2214 <strncpy+0x2f4>
    20dc:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    20e0:	290019a0 	st.b	$r0,$r13,6(0x6)
    20e4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    20e8:	0011b210 	sub.d	$r16,$r16,$r12
    20ec:	00450e11 	srli.d	$r17,$r16,0x3
    20f0:	0010b1ac 	add.d	$r12,$r13,$r12
    20f4:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    20f8:	27000180 	stptr.d	$r0,$r12,0
    20fc:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2100:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 20f8 <strncpy+0x1d8>
    2104:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2108:	0014c611 	and	$r17,$r16,$r17
    210c:	0040822f 	slli.w	$r15,$r17,0x0
    2110:	001049ef 	add.w	$r15,$r15,$r18
    2114:	0010c5cc 	add.d	$r12,$r14,$r17
    2118:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 2008 <strncpy+0xe8>
    211c:	29000180 	st.b	$r0,$r12,0
    2120:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2124:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 2008 <strncpy+0xe8>
    2128:	29000580 	st.b	$r0,$r12,1(0x1)
    212c:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2130:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 2008 <strncpy+0xe8>
    2134:	29000980 	st.b	$r0,$r12,2(0x2)
    2138:	02800dee 	addi.w	$r14,$r15,3(0x3)
    213c:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 2008 <strncpy+0xe8>
    2140:	29000d80 	st.b	$r0,$r12,3(0x3)
    2144:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2148:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 2008 <strncpy+0xe8>
    214c:	29001180 	st.b	$r0,$r12,4(0x4)
    2150:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2154:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 2008 <strncpy+0xe8>
    2158:	29001580 	st.b	$r0,$r12,5(0x5)
    215c:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2160:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 2008 <strncpy+0xe8>
    2164:	29001980 	st.b	$r0,$r12,6(0x6)
    2168:	02801dee 	addi.w	$r14,$r15,7(0x7)
    216c:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 2008 <strncpy+0xe8>
    2170:	29001d80 	st.b	$r0,$r12,7(0x7)
    2174:	028021ee 	addi.w	$r14,$r15,8(0x8)
    2178:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 2008 <strncpy+0xe8>
    217c:	29002180 	st.b	$r0,$r12,8(0x8)
    2180:	028025ee 	addi.w	$r14,$r15,9(0x9)
    2184:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 2008 <strncpy+0xe8>
    2188:	29002580 	st.b	$r0,$r12,9(0x9)
    218c:	028029ee 	addi.w	$r14,$r15,10(0xa)
    2190:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 2008 <strncpy+0xe8>
    2194:	29002980 	st.b	$r0,$r12,10(0xa)
    2198:	02802dee 	addi.w	$r14,$r15,11(0xb)
    219c:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 2008 <strncpy+0xe8>
    21a0:	29002d80 	st.b	$r0,$r12,11(0xb)
    21a4:	028031ee 	addi.w	$r14,$r15,12(0xc)
    21a8:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 2008 <strncpy+0xe8>
    21ac:	29003180 	st.b	$r0,$r12,12(0xc)
    21b0:	028035ef 	addi.w	$r15,$r15,13(0xd)
    21b4:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 2008 <strncpy+0xe8>
    21b8:	29003580 	st.b	$r0,$r12,13(0xd)
}
    21bc:	001501a4 	move	$r4,$r13
    21c0:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    21c4:	02800c12 	addi.w	$r18,$r0,3(0x3)
    21c8:	53ff23ff 	b	-224(0xfffff20) # 20e8 <strncpy+0x1c8>
    21cc:	02800412 	addi.w	$r18,$r0,1(0x1)
    21d0:	53ff1bff 	b	-232(0xfffff18) # 20e8 <strncpy+0x1c8>
    21d4:	001501ae 	move	$r14,$r13
    21d8:	00150012 	move	$r18,$r0
    21dc:	53ff0fff 	b	-244(0xfffff0c) # 20e8 <strncpy+0x1c8>
    21e0:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    21e4:	0015008d 	move	$r13,$r4
    21e8:	001501e5 	move	$r5,$r15
    21ec:	53fdf7ff 	b	-524(0xffffdf4) # 1fe0 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    21f0:	001501ac 	move	$r12,$r13
    21f4:	0015000f 	move	$r15,$r0
    21f8:	53ff27ff 	b	-220(0xfffff24) # 211c <strncpy+0x1fc>
    21fc:	02800812 	addi.w	$r18,$r0,2(0x2)
    2200:	53feebff 	b	-280(0xffffee8) # 20e8 <strncpy+0x1c8>
    2204:	02801012 	addi.w	$r18,$r0,4(0x4)
    2208:	53fee3ff 	b	-288(0xffffee0) # 20e8 <strncpy+0x1c8>
    220c:	02801412 	addi.w	$r18,$r0,5(0x5)
    2210:	53fedbff 	b	-296(0xffffed8) # 20e8 <strncpy+0x1c8>
    2214:	02801812 	addi.w	$r18,$r0,6(0x6)
    2218:	53fed3ff 	b	-304(0xffffed0) # 20e8 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    221c:	2900008f 	st.b	$r15,$r4,0
    2220:	0015008d 	move	$r13,$r4
    2224:	53fdd7ff 	b	-556(0xffffdd4) # 1ff8 <strncpy+0xd8>

0000000000002228 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2228:	0015008c 	move	$r12,$r4
    222c:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2230:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2234:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2238:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    223c:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2240:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2244:	00408084 	slli.w	$r4,$r4,0x0
}
    2248:	4c000020 	jirl	$r0,$r1,0

000000000000224c <openat>:
    register long a7 __asm__("a7") = n;
    224c:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2250:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2254:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2258:	00408084 	slli.w	$r4,$r4,0x0
}
    225c:	4c000020 	jirl	$r0,$r1,0

0000000000002260 <close>:
    register long a7 __asm__("a7") = n;
    2260:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2264:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2268:	00408084 	slli.w	$r4,$r4,0x0
}
    226c:	4c000020 	jirl	$r0,$r1,0

0000000000002270 <read>:
    register long a7 __asm__("a7") = n;
    2270:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2274:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    2278:	4c000020 	jirl	$r0,$r1,0

000000000000227c <write>:
    register long a7 __asm__("a7") = n;
    227c:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2280:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <getpid>:
    register long a7 __asm__("a7") = n;
    2288:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    228c:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    2290:	00408084 	slli.w	$r4,$r4,0x0
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <getppid>:
    register long a7 __asm__("a7") = n;
    2298:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    229c:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    22a0:	00408084 	slli.w	$r4,$r4,0x0
}
    22a4:	4c000020 	jirl	$r0,$r1,0

00000000000022a8 <sched_yield>:
    register long a7 __asm__("a7") = n;
    22a8:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    22ac:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    22b0:	00408084 	slli.w	$r4,$r4,0x0
}
    22b4:	4c000020 	jirl	$r0,$r1,0

00000000000022b8 <fork>:
    register long a7 __asm__("a7") = n;
    22b8:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    22bc:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    22c0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22c4:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22d0:	001500c5 	move	$r5,$r6
    if (stack)
    22d4:	400008c0 	beqz	$r6,8(0x8) # 22dc <clone+0xc>
	stack += stack_size;
    22d8:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    22dc:	00408106 	slli.w	$r6,$r8,0x0
    22e0:	00150009 	move	$r9,$r0
    22e4:	00150008 	move	$r8,$r0
    22e8:	00150007 	move	$r7,$r0
    22ec:	5002c800 	b	712(0x2c8) # 25b4 <__clone>

00000000000022f0 <exit>:
    register long a7 __asm__("a7") = n;
    22f0:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    22f4:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    22f8:	4c000020 	jirl	$r0,$r1,0

00000000000022fc <waitpid>:
    register long a7 __asm__("a7") = n;
    22fc:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2300:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2304:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2308:	00408084 	slli.w	$r4,$r4,0x0
}
    230c:	4c000020 	jirl	$r0,$r1,0

0000000000002310 <exec>:
    register long a7 __asm__("a7") = n;
    2310:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2314:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2318:	00408084 	slli.w	$r4,$r4,0x0
}
    231c:	4c000020 	jirl	$r0,$r1,0

0000000000002320 <execve>:
    register long a7 __asm__("a7") = n;
    2320:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2324:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2328:	00408084 	slli.w	$r4,$r4,0x0
}
    232c:	4c000020 	jirl	$r0,$r1,0

0000000000002330 <times>:
    register long a7 __asm__("a7") = n;
    2330:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2334:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2338:	00408084 	slli.w	$r4,$r4,0x0
}
    233c:	4c000020 	jirl	$r0,$r1,0

0000000000002340 <get_time>:

int64 get_time()
{
    2340:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2344:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2348:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    234c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2350:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2354:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2358:	44003c80 	bnez	$r4,60(0x3c) # 2394 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    235c:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2360:	039f3c8c 	ori	$r12,$r4,0x7cf
    2364:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2368:	2a40006d 	ld.hu	$r13,$r3,0
    236c:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2370:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2374:	00450c84 	srli.d	$r4,$r4,0x3
    2378:	001eb084 	mulh.du	$r4,$r4,$r12
    237c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    2380:	001db1ac 	mul.d	$r12,$r13,$r12
    2384:	00451084 	srli.d	$r4,$r4,0x4
    2388:	00109184 	add.d	$r4,$r12,$r4
}
    238c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2390:	4c000020 	jirl	$r0,$r1,0
        return -1;
    2394:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    2398:	53fff7ff 	b	-12(0xffffff4) # 238c <get_time+0x4c>

000000000000239c <sys_get_time>:
    register long a7 __asm__("a7") = n;
    239c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23a0:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    23a4:	00408084 	slli.w	$r4,$r4,0x0
}
    23a8:	4c000020 	jirl	$r0,$r1,0

00000000000023ac <time>:
    register long a7 __asm__("a7") = n;
    23ac:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    23b0:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    23b4:	00408084 	slli.w	$r4,$r4,0x0
}
    23b8:	4c000020 	jirl	$r0,$r1,0

00000000000023bc <sleep>:

int sleep(unsigned long long time)
{
    23bc:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    23c0:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    23c4:	00150064 	move	$r4,$r3
    23c8:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23cc:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23d0:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23d4:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23d8:	44001080 	bnez	$r4,16(0x10) # 23e8 <sleep+0x2c>
    return 0;
    23dc:	00150004 	move	$r4,$r0
}
    23e0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23e4:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23e8:	24000064 	ldptr.w	$r4,$r3,0
}
    23ec:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23f0:	4c000020 	jirl	$r0,$r1,0

00000000000023f4 <set_priority>:
    register long a7 __asm__("a7") = n;
    23f4:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    23f8:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    23fc:	00408084 	slli.w	$r4,$r4,0x0
}
    2400:	4c000020 	jirl	$r0,$r1,0

0000000000002404 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2404:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2408:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    240c:	4c000020 	jirl	$r0,$r1,0

0000000000002410 <munmap>:
    register long a7 __asm__("a7") = n;
    2410:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2414:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2418:	00408084 	slli.w	$r4,$r4,0x0
}
    241c:	4c000020 	jirl	$r0,$r1,0

0000000000002420 <wait>:

int wait(int *code)
{
    2420:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2424:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2428:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    242c:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2430:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2434:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2438:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    243c:	4c000020 	jirl	$r0,$r1,0

0000000000002440 <spawn>:
    register long a7 __asm__("a7") = n;
    2440:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2444:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2448:	00408084 	slli.w	$r4,$r4,0x0
}
    244c:	4c000020 	jirl	$r0,$r1,0

0000000000002450 <mailread>:
    register long a7 __asm__("a7") = n;
    2450:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2454:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2458:	00408084 	slli.w	$r4,$r4,0x0
}
    245c:	4c000020 	jirl	$r0,$r1,0

0000000000002460 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2460:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2464:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2468:	00408084 	slli.w	$r4,$r4,0x0
}
    246c:	4c000020 	jirl	$r0,$r1,0

0000000000002470 <fstat>:
    register long a7 __asm__("a7") = n;
    2470:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2474:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    2478:	00408084 	slli.w	$r4,$r4,0x0
}
    247c:	4c000020 	jirl	$r0,$r1,0

0000000000002480 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    2480:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    2484:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2488:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    248c:	00408084 	slli.w	$r4,$r4,0x0
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    2494:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    2498:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    249c:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24a0:	00408084 	slli.w	$r4,$r4,0x0
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <link>:

int link(char *old_path, char *new_path)
{
    24a8:	0015008c 	move	$r12,$r4
    24ac:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    24b0:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    24b4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24b8:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    24bc:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    24c0:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24c4:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24c8:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24cc:	4c000020 	jirl	$r0,$r1,0

00000000000024d0 <unlink>:

int unlink(char *path)
{
    24d0:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24d4:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24d8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    24dc:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24e0:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <uname>:
    register long a7 __asm__("a7") = n;
    24ec:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    24f0:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    24f4:	00408084 	slli.w	$r4,$r4,0x0
}
    24f8:	4c000020 	jirl	$r0,$r1,0

00000000000024fc <brk>:
    register long a7 __asm__("a7") = n;
    24fc:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2500:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2504:	00408084 	slli.w	$r4,$r4,0x0
}
    2508:	4c000020 	jirl	$r0,$r1,0

000000000000250c <getcwd>:
    register long a7 __asm__("a7") = n;
    250c:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2510:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2514:	4c000020 	jirl	$r0,$r1,0

0000000000002518 <chdir>:
    register long a7 __asm__("a7") = n;
    2518:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    251c:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2520:	00408084 	slli.w	$r4,$r4,0x0
}
    2524:	4c000020 	jirl	$r0,$r1,0

0000000000002528 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2528:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    252c:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2530:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2534:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2538:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    253c:	002b0000 	syscall	0x0
    2540:	00408084 	slli.w	$r4,$r4,0x0
}
    2544:	4c000020 	jirl	$r0,$r1,0

0000000000002548 <getdents>:
    register long a7 __asm__("a7") = n;
    2548:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    254c:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2550:	00408084 	slli.w	$r4,$r4,0x0
}
    2554:	4c000020 	jirl	$r0,$r1,0

0000000000002558 <pipe>:
    register long a7 __asm__("a7") = n;
    2558:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    255c:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2560:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2564:	00408084 	slli.w	$r4,$r4,0x0
}
    2568:	4c000020 	jirl	$r0,$r1,0

000000000000256c <dup>:
    register long a7 __asm__("a7") = n;
    256c:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2570:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2574:	00408084 	slli.w	$r4,$r4,0x0
}
    2578:	4c000020 	jirl	$r0,$r1,0

000000000000257c <dup2>:
    register long a7 __asm__("a7") = n;
    257c:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    2580:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2584:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    2588:	00408084 	slli.w	$r4,$r4,0x0
}
    258c:	4c000020 	jirl	$r0,$r1,0

0000000000002590 <mount>:
    register long a7 __asm__("a7") = n;
    2590:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2594:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    2598:	00408084 	slli.w	$r4,$r4,0x0
}
    259c:	4c000020 	jirl	$r0,$r1,0

00000000000025a0 <umount>:
    register long a7 __asm__("a7") = n;
    25a0:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    25a4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    25a8:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    25ac:	00408084 	slli.w	$r4,$r4,0x0
}
    25b0:	4c000020 	jirl	$r0,$r1,0

00000000000025b4 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    25b4:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    25b8:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    25bc:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    25c0:	001500c4 	move	$r4,$r6
	move $a2, $a4
    25c4:	00150106 	move	$r6,$r8
	move $a3, $a5
    25c8:	00150127 	move	$r7,$r9
	move $a4, $a6
    25cc:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25d0:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25d4:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25d8:	40000880 	beqz	$r4,8(0x8) # 25e0 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    25dc:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    25e0:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    25e4:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    25e8:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    25ec:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    25f0:	002b0000 	syscall	0x0
