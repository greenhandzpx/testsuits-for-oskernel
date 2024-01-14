
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/pipe:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54017c00 	bl	380(0x17c) # 1180 <__start_main>

0000000000001008 <test_pipe>:
 * 成功测试时的输出：
 * "  Write to pipe successfully."
 */
static int fd[2];

void test_pipe(void){
    1008:	02fd8063 	addi.d	$r3,$r3,-160(0xf60)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d8b084 	addi.d	$r4,$r4,1580(0x62c)
void test_pipe(void){
    1014:	29c26061 	st.d	$r1,$r3,152(0x98)
    1018:	29c24077 	st.d	$r23,$r3,144(0x90)
    101c:	29c22078 	st.d	$r24,$r3,136(0x88)
    TEST_START(__func__);
    1020:	54046800 	bl	1128(0x468) # 1488 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02dab084 	addi.d	$r4,$r4,1708(0x6ac)
    102c:	54045c00 	bl	1116(0x45c) # 1488 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d88084 	addi.d	$r4,$r4,1568(0x620)
    1038:	54045000 	bl	1104(0x450) # 1488 <puts>
    int cpid;
    char buf[128] = {0};
    103c:	02820006 	addi.w	$r6,$r0,128(0x80)
    1040:	00150005 	move	$r5,$r0
    1044:	00150064 	move	$r4,$r3
    1048:	54088800 	bl	2184(0x888) # 18d0 <memset>
    int ret = pipe(fd);
    104c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1050:	02d9f084 	addi.d	$r4,$r4,1660(0x67c)
    1054:	54154800 	bl	5448(0x1548) # 259c <pipe>
    assert(ret != -1);
    1058:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    105c:	5800f88c 	beq	$r4,$r12,248(0xf8) # 1154 <test_pipe+0x14c>
    const char *data = "  Write to pipe successfully.\n";
    cpid = fork();
    1060:	54129c00 	bl	4764(0x129c) # 22fc <fork>
    1064:	00150097 	move	$r23,$r4
    printf("cpid: %d\n", cpid);
    1068:	00150085 	move	$r5,$r4
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d85084 	addi.d	$r4,$r4,1556(0x614)
    1074:	54044c00 	bl	1100(0x44c) # 14c0 <printf>
    if(cpid > 0){
    1078:	64009417 	bge	$r0,$r23,148(0x94) # 110c <test_pipe+0x104>
	close(fd[1]);
    107c:	1c000037 	pcaddu12i	$r23,1(0x1)
    1080:	02d932f7 	addi.d	$r23,$r23,1612(0x64c)
    1084:	240006e4 	ldptr.w	$r4,$r23,4(0x4)
    1088:	54121c00 	bl	4636(0x121c) # 22a4 <close>
	while(read(fd[0], buf, 1) > 0)
    108c:	50000c00 	b	12(0xc) # 1098 <test_pipe+0x90>
            write(STDOUT, buf, 1);
    1090:	02800404 	addi.w	$r4,$r0,1(0x1)
    1094:	54122c00 	bl	4652(0x122c) # 22c0 <write>
	while(read(fd[0], buf, 1) > 0)
    1098:	240002e4 	ldptr.w	$r4,$r23,0
    109c:	02800406 	addi.w	$r6,$r0,1(0x1)
    10a0:	00150065 	move	$r5,$r3
    10a4:	54121000 	bl	4624(0x1210) # 22b4 <read>
            write(STDOUT, buf, 1);
    10a8:	02800406 	addi.w	$r6,$r0,1(0x1)
    10ac:	00150065 	move	$r5,$r3
	while(read(fd[0], buf, 1) > 0)
    10b0:	63ffe004 	blt	$r0,$r4,-32(0x3ffe0) # 1090 <test_pipe+0x88>
	write(STDOUT, "\n", 1);
    10b4:	1c000025 	pcaddu12i	$r5,1(0x1)
    10b8:	02d710a5 	addi.d	$r5,$r5,1476(0x5c4)
    10bc:	02800404 	addi.w	$r4,$r0,1(0x1)
    10c0:	54120000 	bl	4608(0x1200) # 22c0 <write>
	close(fd[0]);
    10c4:	240002e4 	ldptr.w	$r4,$r23,0
    10c8:	5411dc00 	bl	4572(0x11dc) # 22a4 <close>
	wait(NULL);
    10cc:	00150004 	move	$r4,$r0
    10d0:	54139400 	bl	5012(0x1394) # 2464 <wait>
	close(fd[0]);
	write(fd[1], data, strlen(data));
	close(fd[1]);
	exit(0);
    }
    TEST_END(__func__);
    10d4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d8:	02d77084 	addi.d	$r4,$r4,1500(0x5dc)
    10dc:	5403ac00 	bl	940(0x3ac) # 1488 <puts>
    10e0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e4:	02d7c084 	addi.d	$r4,$r4,1520(0x5f0)
    10e8:	5403a000 	bl	928(0x3a0) # 1488 <puts>
    10ec:	1c000024 	pcaddu12i	$r4,1(0x1)
    10f0:	02d59084 	addi.d	$r4,$r4,1380(0x564)
    10f4:	54039400 	bl	916(0x394) # 1488 <puts>
}
    10f8:	28c26061 	ld.d	$r1,$r3,152(0x98)
    10fc:	28c24077 	ld.d	$r23,$r3,144(0x90)
    1100:	28c22078 	ld.d	$r24,$r3,136(0x88)
    1104:	02c28063 	addi.d	$r3,$r3,160(0xa0)
    1108:	4c000020 	jirl	$r0,$r1,0
	close(fd[0]);
    110c:	1c000037 	pcaddu12i	$r23,1(0x1)
    1110:	02d6f2f7 	addi.d	$r23,$r23,1468(0x5bc)
    1114:	240002e4 	ldptr.w	$r4,$r23,0
    1118:	54118c00 	bl	4492(0x118c) # 22a4 <close>
	write(fd[1], data, strlen(data));
    111c:	240006f8 	ldptr.w	$r24,$r23,4(0x4)
    1120:	1c000024 	pcaddu12i	$r4,1(0x1)
    1124:	02d5c084 	addi.d	$r4,$r4,1392(0x570)
    1128:	540a4400 	bl	2628(0xa44) # 1b6c <strlen>
    112c:	00150086 	move	$r6,$r4
    1130:	1c000025 	pcaddu12i	$r5,1(0x1)
    1134:	02d580a5 	addi.d	$r5,$r5,1376(0x560)
    1138:	00150304 	move	$r4,$r24
    113c:	54118400 	bl	4484(0x1184) # 22c0 <write>
	close(fd[1]);
    1140:	240006e4 	ldptr.w	$r4,$r23,4(0x4)
    1144:	54116000 	bl	4448(0x1160) # 22a4 <close>
	exit(0);
    1148:	00150004 	move	$r4,$r0
    114c:	5411e800 	bl	4584(0x11e8) # 2334 <exit>
    1150:	53ff87ff 	b	-124(0xfffff84) # 10d4 <test_pipe+0xcc>
    assert(ret != -1);
    1154:	1c000024 	pcaddu12i	$r4,1(0x1)
    1158:	02d43084 	addi.d	$r4,$r4,1292(0x50c)
    115c:	54067400 	bl	1652(0x674) # 17d0 <panic>
    1160:	53ff03ff 	b	-256(0xfffff00) # 1060 <test_pipe+0x58>

0000000000001164 <main>:

int main(void){
    1164:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1168:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_pipe();
    116c:	57fe9fff 	bl	-356(0xffffe9c) # 1008 <test_pipe>
    return 0;
}
    1170:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1174:	00150004 	move	$r4,$r0
    1178:	02c04063 	addi.d	$r3,$r3,16(0x10)
    117c:	4c000020 	jirl	$r0,$r1,0

0000000000001180 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1180:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1184:	24000084 	ldptr.w	$r4,$r4,0
{
    1188:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    118c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1190:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1194:	57ffd3ff 	bl	-48(0xfffffd0) # 1164 <main>
    1198:	54119c00 	bl	4508(0x119c) # 2334 <exit>
	return 0;
}
    119c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    11a0:	00150004 	move	$r4,$r0
    11a4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    11a8:	4c000020 	jirl	$r0,$r1,0

00000000000011ac <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    11ac:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    11b0:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    11b4:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1380 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    11b8:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    11bc:	1c00002c 	pcaddu12i	$r12,1(0x1)
    11c0:	02d4918c 	addi.d	$r12,$r12,1316(0x524)
    11c4:	002195cf 	mod.wu	$r15,$r14,$r5
    11c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11d0 <printint.constprop.0+0x24>
    11cc:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    11d0:	002115cd 	div.wu	$r13,$r14,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0x30>
    11d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11dc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    11e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    11e4:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    11e8:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    11ec:	680219c5 	bltu	$r14,$r5,536(0x218) # 1404 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    11f0:	002195af 	mod.wu	$r15,$r13,$r5
    11f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11fc <printint.constprop.0+0x50>
    11f8:	002a0007 	break	0x7
    11fc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1200:	002115ae 	div.wu	$r14,$r13,$r5
    1204:	5c0008a0 	bne	$r5,$r0,8(0x8) # 120c <printint.constprop.0+0x60>
    1208:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    120c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1210:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    1214:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 13d4 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    1218:	002195cf 	mod.wu	$r15,$r14,$r5
    121c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1224 <printint.constprop.0+0x78>
    1220:	002a0007 	break	0x7
    1224:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1228:	002115cd 	div.wu	$r13,$r14,$r5
    122c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1234 <printint.constprop.0+0x88>
    1230:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1234:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1238:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    123c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 13e0 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1240:	002195af 	mod.wu	$r15,$r13,$r5
    1244:	5c0008a0 	bne	$r5,$r0,8(0x8) # 124c <printint.constprop.0+0xa0>
    1248:	002a0007 	break	0x7
    124c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1250:	002115ae 	div.wu	$r14,$r13,$r5
    1254:	5c0008a0 	bne	$r5,$r0,8(0x8) # 125c <printint.constprop.0+0xb0>
    1258:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    125c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1260:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1264:	680189a5 	bltu	$r13,$r5,392(0x188) # 13ec <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1268:	002195cf 	mod.wu	$r15,$r14,$r5
    126c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1274 <printint.constprop.0+0xc8>
    1270:	002a0007 	break	0x7
    1274:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1278:	002115cd 	div.wu	$r13,$r14,$r5
    127c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1284 <printint.constprop.0+0xd8>
    1280:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1284:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1288:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    128c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 13f8 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1290:	002195af 	mod.wu	$r15,$r13,$r5
    1294:	5c0008a0 	bne	$r5,$r0,8(0x8) # 129c <printint.constprop.0+0xf0>
    1298:	002a0007 	break	0x7
    129c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12a0:	002115ae 	div.wu	$r14,$r13,$r5
    12a4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12ac <printint.constprop.0+0x100>
    12a8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12ac:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12b0:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    12b4:	680115a5 	bltu	$r13,$r5,276(0x114) # 13c8 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    12b8:	002195cf 	mod.wu	$r15,$r14,$r5
    12bc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12c4 <printint.constprop.0+0x118>
    12c0:	002a0007 	break	0x7
    12c4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12c8:	002115cd 	div.wu	$r13,$r14,$r5
    12cc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d4 <printint.constprop.0+0x128>
    12d0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12d4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12d8:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    12dc:	680131c5 	bltu	$r14,$r5,304(0x130) # 140c <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    12e0:	002195af 	mod.wu	$r15,$r13,$r5
    12e4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12ec <printint.constprop.0+0x140>
    12e8:	002a0007 	break	0x7
    12ec:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12f0:	002115ae 	div.wu	$r14,$r13,$r5
    12f4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12fc <printint.constprop.0+0x150>
    12f8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12fc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1300:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    1304:	680115a5 	bltu	$r13,$r5,276(0x114) # 1418 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    1308:	002195cf 	mod.wu	$r15,$r14,$r5
    130c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1314 <printint.constprop.0+0x168>
    1310:	002a0007 	break	0x7
    1314:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1318:	002115cd 	div.wu	$r13,$r14,$r5
    131c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1324 <printint.constprop.0+0x178>
    1320:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1324:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1328:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    132c:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1424 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1330:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1334:	3820358d 	ldx.bu	$r13,$r12,$r13
    1338:	02801805 	addi.w	$r5,$r0,6(0x6)
    133c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1340:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1344:	64001880 	bge	$r4,$r0,24(0x18) # 135c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1348:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    134c:	0010b1ad 	add.d	$r13,$r13,$r12
    1350:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1354:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1358:	00150185 	move	$r5,$r12
    write(f, s, l);
    135c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1360:	02804006 	addi.w	$r6,$r0,16(0x10)
    1364:	001114c6 	sub.w	$r6,$r6,$r5
    1368:	02800404 	addi.w	$r4,$r0,1(0x1)
    136c:	00109585 	add.d	$r5,$r12,$r5
    1370:	540f5000 	bl	3920(0xf50) # 22c0 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1374:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1378:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    137c:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1380:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1384:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1388:	02cd718c 	addi.d	$r12,$r12,860(0x35c)
    138c:	002195cf 	mod.wu	$r15,$r14,$r5
    1390:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1398 <printint.constprop.0+0x1ec>
    1394:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1398:	002115cd 	div.wu	$r13,$r14,$r5
    139c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 13a4 <printint.constprop.0+0x1f8>
    13a0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    13a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    13a8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    13ac:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    13b0:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    13b4:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 11f0 <printint.constprop.0+0x44>
        buf[i--] = '-';
    13b8:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    13bc:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    13c0:	02803805 	addi.w	$r5,$r0,14(0xe)
    13c4:	53ff9bff 	b	-104(0xfffff98) # 135c <printint.constprop.0+0x1b0>
    13c8:	0280240c 	addi.w	$r12,$r0,9(0x9)
    13cc:	02802805 	addi.w	$r5,$r0,10(0xa)
    13d0:	53ff77ff 	b	-140(0xfffff74) # 1344 <printint.constprop.0+0x198>
    13d4:	0280340c 	addi.w	$r12,$r0,13(0xd)
    13d8:	02803805 	addi.w	$r5,$r0,14(0xe)
    13dc:	53ff6bff 	b	-152(0xfffff68) # 1344 <printint.constprop.0+0x198>
    13e0:	0280300c 	addi.w	$r12,$r0,12(0xc)
    13e4:	02803405 	addi.w	$r5,$r0,13(0xd)
    13e8:	53ff5fff 	b	-164(0xfffff5c) # 1344 <printint.constprop.0+0x198>
    13ec:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    13f0:	02803005 	addi.w	$r5,$r0,12(0xc)
    13f4:	53ff53ff 	b	-176(0xfffff50) # 1344 <printint.constprop.0+0x198>
    13f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
    13fc:	02802c05 	addi.w	$r5,$r0,11(0xb)
    1400:	53ff47ff 	b	-188(0xfffff44) # 1344 <printint.constprop.0+0x198>
    i = 15;
    1404:	02803c05 	addi.w	$r5,$r0,15(0xf)
    1408:	53ff57ff 	b	-172(0xfffff54) # 135c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    140c:	0280200c 	addi.w	$r12,$r0,8(0x8)
    1410:	02802405 	addi.w	$r5,$r0,9(0x9)
    1414:	53ff33ff 	b	-208(0xfffff30) # 1344 <printint.constprop.0+0x198>
    1418:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    141c:	02802005 	addi.w	$r5,$r0,8(0x8)
    1420:	53ff27ff 	b	-220(0xfffff24) # 1344 <printint.constprop.0+0x198>
    1424:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1428:	02801c05 	addi.w	$r5,$r0,7(0x7)
    142c:	53ff1bff 	b	-232(0xfffff18) # 1344 <printint.constprop.0+0x198>

0000000000001430 <getchar>:
{
    1430:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1434:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1438:	02800406 	addi.w	$r6,$r0,1(0x1)
    143c:	00150004 	move	$r4,$r0
{
    1440:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1444:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1448:	540e6c00 	bl	3692(0xe6c) # 22b4 <read>
}
    144c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1450:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1454:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1458:	4c000020 	jirl	$r0,$r1,0

000000000000145c <putchar>:
{
    145c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1460:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1464:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1468:	02800406 	addi.w	$r6,$r0,1(0x1)
    146c:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1470:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1474:	540e4c00 	bl	3660(0xe4c) # 22c0 <write>
}
    1478:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    147c:	00408084 	slli.w	$r4,$r4,0x0
}
    1480:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1484:	4c000020 	jirl	$r0,$r1,0

0000000000001488 <puts>:
{
    1488:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    148c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1490:	27000077 	stptr.d	$r23,$r3,0
    1494:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1498:	5406d400 	bl	1748(0x6d4) # 1b6c <strlen>
    149c:	00150086 	move	$r6,$r4
    14a0:	001502e5 	move	$r5,$r23
    14a4:	02800404 	addi.w	$r4,$r0,1(0x1)
    14a8:	540e1800 	bl	3608(0xe18) # 22c0 <write>
}
    14ac:	28c02061 	ld.d	$r1,$r3,8(0x8)
    14b0:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    14b4:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    14b8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    14bc:	4c000020 	jirl	$r0,$r1,0

00000000000014c0 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    14c0:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    14c4:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    14c8:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    14cc:	140000fa 	lu12i.w	$r26,7(0x7)
{
    14d0:	29c14079 	st.d	$r25,$r3,80(0x50)
    14d4:	29c1007b 	st.d	$r27,$r3,64(0x40)
    14d8:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    14dc:	29c1a061 	st.d	$r1,$r3,104(0x68)
    14e0:	29c18077 	st.d	$r23,$r3,96(0x60)
    14e4:	29c16078 	st.d	$r24,$r3,88(0x58)
    14e8:	0015009b 	move	$r27,$r4
    14ec:	29c1e065 	st.d	$r5,$r3,120(0x78)
    14f0:	29c20066 	st.d	$r6,$r3,128(0x80)
    14f4:	29c22067 	st.d	$r7,$r3,136(0x88)
    14f8:	29c24068 	st.d	$r8,$r3,144(0x90)
    14fc:	29c26069 	st.d	$r9,$r3,152(0x98)
    1500:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    1504:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    1508:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    150c:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    1510:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1514:	1c00003c 	pcaddu12i	$r28,1(0x1)
    1518:	02c7339c 	addi.d	$r28,$r28,460(0x1cc)
        if (!*s)
    151c:	2800036c 	ld.b	$r12,$r27,0
    1520:	40008980 	beqz	$r12,136(0x88) # 15a8 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1524:	58027d99 	beq	$r12,$r25,636(0x27c) # 17a0 <printf+0x2e0>
    1528:	00150366 	move	$r6,$r27
    152c:	50000800 	b	8(0x8) # 1534 <printf+0x74>
    1530:	58009d99 	beq	$r12,$r25,156(0x9c) # 15cc <printf+0x10c>
    1534:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1538:	280000cc 	ld.b	$r12,$r6,0
    153c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1530 <printf+0x70>
    1540:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1544:	0011ecd7 	sub.d	$r23,$r6,$r27
    1548:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    154c:	001502e6 	move	$r6,$r23
    1550:	00150365 	move	$r5,$r27
    1554:	02800404 	addi.w	$r4,$r0,1(0x1)
    1558:	540d6800 	bl	3432(0xd68) # 22c0 <write>
        out(f, a, l);
        if (l)
    155c:	4400b6e0 	bnez	$r23,180(0xb4) # 1610 <printf+0x150>
            continue;
        if (s[1] == 0)
    1560:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1564:	40004580 	beqz	$r12,68(0x44) # 15a8 <printf+0xe8>
            break;
        switch (s[1])
    1568:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    156c:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1640 <printf+0x180>
    1570:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 1618 <printf+0x158>
    1574:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1578:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1768 <printf+0x2a8>
    157c:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1580:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1730 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1584:	2600006c 	ldptr.d	$r12,$r3,0
    1588:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    158c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1590:	24000184 	ldptr.w	$r4,$r12,0
    1594:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1598:	2700006c 	stptr.d	$r12,$r3,0
    159c:	57fc13ff 	bl	-1008(0xffffc10) # 11ac <printint.constprop.0>
        if (!*s)
    15a0:	2800036c 	ld.b	$r12,$r27,0
    15a4:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1524 <printf+0x64>
    }
    va_end(ap);
}
    15a8:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    15ac:	28c18077 	ld.d	$r23,$r3,96(0x60)
    15b0:	28c16078 	ld.d	$r24,$r3,88(0x58)
    15b4:	28c14079 	ld.d	$r25,$r3,80(0x50)
    15b8:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    15bc:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    15c0:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    15c4:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    15c8:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    15cc:	280004cc 	ld.b	$r12,$r6,1(0x1)
    15d0:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1540 <printf+0x80>
    15d4:	001500d8 	move	$r24,$r6
    15d8:	50000c00 	b	12(0xc) # 15e4 <printf+0x124>
    15dc:	2800070c 	ld.b	$r12,$r24,1(0x1)
    15e0:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1544 <printf+0x84>
    15e4:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    15e8:	2800030c 	ld.b	$r12,$r24,0
    15ec:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    15f0:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 15dc <printf+0x11c>
        l = z - a;
    15f4:	0011ecd7 	sub.d	$r23,$r6,$r27
    15f8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    15fc:	001502e6 	move	$r6,$r23
    1600:	00150365 	move	$r5,$r27
    1604:	02800404 	addi.w	$r4,$r0,1(0x1)
    1608:	540cb800 	bl	3256(0xcb8) # 22c0 <write>
        if (l)
    160c:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1560 <printf+0xa0>
    1610:	0015031b 	move	$r27,$r24
    1614:	53ff0bff 	b	-248(0xfffff08) # 151c <printf+0x5c>
        switch (s[1])
    1618:	0281900d 	addi.w	$r13,$r0,100(0x64)
    161c:	5c01158d 	bne	$r12,$r13,276(0x114) # 1730 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1620:	2600006c 	ldptr.d	$r12,$r3,0
    1624:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1628:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    162c:	24000184 	ldptr.w	$r4,$r12,0
    1630:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1634:	2700006c 	stptr.d	$r12,$r3,0
    1638:	57fb77ff 	bl	-1164(0xffffb74) # 11ac <printint.constprop.0>
        s += 2;
    163c:	53ff67ff 	b	-156(0xfffff64) # 15a0 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1640:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1644:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1648:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    164c:	260001ac 	ldptr.d	$r12,$r13,0
    1650:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1654:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1658:	0045f18a 	srli.d	$r10,$r12,0x3c
    165c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1660:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1664:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1668:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    166c:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1670:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1674:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1678:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    167c:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1680:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1684:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1688:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    168c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1690:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1694:	3820278a 	ldx.bu	$r10,$r28,$r9
    1698:	38202389 	ldx.bu	$r9,$r28,$r8
    169c:	38201f88 	ldx.bu	$r8,$r28,$r7
    16a0:	38201787 	ldx.bu	$r7,$r28,$r5
    16a4:	38201385 	ldx.bu	$r5,$r28,$r4
    16a8:	38205384 	ldx.bu	$r4,$r28,$r20
    16ac:	38204f94 	ldx.bu	$r20,$r28,$r19
    16b0:	38204b93 	ldx.bu	$r19,$r28,$r18
    16b4:	38204792 	ldx.bu	$r18,$r28,$r17
    16b8:	38204391 	ldx.bu	$r17,$r28,$r16
    16bc:	38203f90 	ldx.bu	$r16,$r28,$r15
    16c0:	38203b8f 	ldx.bu	$r15,$r28,$r14
    16c4:	3820378e 	ldx.bu	$r14,$r28,$r13
    16c8:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    16cc:	03403d8c 	andi	$r12,$r12,0xf
    16d0:	2900286b 	st.b	$r11,$r3,10(0xa)
    16d4:	29002c6a 	st.b	$r10,$r3,11(0xb)
    16d8:	29003069 	st.b	$r9,$r3,12(0xc)
    16dc:	29003468 	st.b	$r8,$r3,13(0xd)
    16e0:	29003867 	st.b	$r7,$r3,14(0xe)
    16e4:	29003c65 	st.b	$r5,$r3,15(0xf)
    16e8:	29004064 	st.b	$r4,$r3,16(0x10)
    16ec:	29004474 	st.b	$r20,$r3,17(0x11)
    16f0:	29004873 	st.b	$r19,$r3,18(0x12)
    16f4:	29004c72 	st.b	$r18,$r3,19(0x13)
    16f8:	29005071 	st.b	$r17,$r3,20(0x14)
    16fc:	29005470 	st.b	$r16,$r3,21(0x15)
    1700:	2900586f 	st.b	$r15,$r3,22(0x16)
    1704:	29005c6e 	st.b	$r14,$r3,23(0x17)
    1708:	3820378d 	ldx.bu	$r13,$r28,$r13
    170c:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    1710:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1714:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1718:	2900606d 	st.b	$r13,$r3,24(0x18)
    171c:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1720:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1724:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1728:	540b9800 	bl	2968(0xb98) # 22c0 <write>
        s += 2;
    172c:	53fe77ff 	b	-396(0xffffe74) # 15a0 <printf+0xe0>
    char byte = c;
    1730:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1734:	02800406 	addi.w	$r6,$r0,1(0x1)
    1738:	02c02065 	addi.d	$r5,$r3,8(0x8)
    173c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1740:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1744:	540b7c00 	bl	2940(0xb7c) # 22c0 <write>
    char byte = c;
    1748:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    174c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1750:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1754:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1758:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    175c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1760:	540b6000 	bl	2912(0xb60) # 22c0 <write>
        s += 2;
    1764:	53fe3fff 	b	-452(0xffffe3c) # 15a0 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1768:	2600006c 	ldptr.d	$r12,$r3,0
    176c:	26000197 	ldptr.d	$r23,$r12,0
    1770:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1774:	2700006c 	stptr.d	$r12,$r3,0
    1778:	40004ee0 	beqz	$r23,76(0x4c) # 17c4 <printf+0x304>
            l = strnlen(a, 200);
    177c:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1780:	001502e4 	move	$r4,$r23
    1784:	5405d000 	bl	1488(0x5d0) # 1d54 <strnlen>
    1788:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    178c:	001502e5 	move	$r5,$r23
    1790:	02800404 	addi.w	$r4,$r0,1(0x1)
    1794:	540b2c00 	bl	2860(0xb2c) # 22c0 <write>
        s += 2;
    1798:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    179c:	53fe07ff 	b	-508(0xffffe04) # 15a0 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    17a0:	2800076c 	ld.b	$r12,$r27,1(0x1)
    17a4:	00150366 	move	$r6,$r27
    17a8:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 15d4 <printf+0x114>
    write(f, s, l);
    17ac:	00150006 	move	$r6,$r0
    17b0:	00150365 	move	$r5,$r27
    17b4:	02800404 	addi.w	$r4,$r0,1(0x1)
    17b8:	540b0800 	bl	2824(0xb08) # 22c0 <write>
    17bc:	00150378 	move	$r24,$r27
    17c0:	53fda3ff 	b	-608(0xffffda0) # 1560 <printf+0xa0>
                a = "(null)";
    17c4:	1c000037 	pcaddu12i	$r23,1(0x1)
    17c8:	02fbf2f7 	addi.d	$r23,$r23,-260(0xefc)
    17cc:	53ffb3ff 	b	-80(0xfffffb0) # 177c <printf+0x2bc>

00000000000017d0 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    17d0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    17d4:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    17d8:	57fcb3ff 	bl	-848(0xffffcb0) # 1488 <puts>
    exit(-100);
}
    17dc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    17e0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    17e4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    17e8:	500b4c00 	b	2892(0xb4c) # 2334 <exit>

00000000000017ec <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    17ec:	0280800c 	addi.w	$r12,$r0,32(0x20)
    17f0:	5800108c 	beq	$r4,$r12,16(0x10) # 1800 <isspace+0x14>
    17f4:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    17f8:	02401484 	sltui	$r4,$r4,5(0x5)
    17fc:	4c000020 	jirl	$r0,$r1,0
    1800:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    1804:	4c000020 	jirl	$r0,$r1,0

0000000000001808 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    1808:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    180c:	02402884 	sltui	$r4,$r4,10(0xa)
    1810:	4c000020 	jirl	$r0,$r1,0

0000000000001814 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    1814:	0280800e 	addi.w	$r14,$r0,32(0x20)
    1818:	0280100f 	addi.w	$r15,$r0,4(0x4)
    181c:	2800008d 	ld.b	$r13,$r4,0
    1820:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1824:	580061ae 	beq	$r13,$r14,96(0x60) # 1884 <atoi+0x70>
    1828:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1884 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    182c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1830:	580065ac 	beq	$r13,$r12,100(0x64) # 1894 <atoi+0x80>
    1834:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1838:	58007dac 	beq	$r13,$r12,124(0x7c) # 18b4 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    183c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1840:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1844:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1848:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    184c:	680061cf 	bltu	$r14,$r15,96(0x60) # 18ac <atoi+0x98>
    int n = 0, neg = 0;
    1850:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1854:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1858:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    185c:	001c126f 	mul.w	$r15,$r19,$r4
    1860:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1864:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1868:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    186c:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1870:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1874:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1878:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 185c <atoi+0x48>
    return neg ? n : -n;
    187c:	40001280 	beqz	$r20,16(0x10) # 188c <atoi+0x78>
}
    1880:	4c000020 	jirl	$r0,$r1,0
        s++;
    1884:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1888:	53ff97ff 	b	-108(0xfffff94) # 181c <atoi+0x8>
    188c:	00113e04 	sub.w	$r4,$r16,$r15
    1890:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1894:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1898:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    189c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    18a0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    18a4:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    18a8:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1850 <atoi+0x3c>
    18ac:	00150004 	move	$r4,$r0
}
    18b0:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    18b4:	2800048d 	ld.b	$r13,$r4,1(0x1)
    18b8:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    18bc:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    18c0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    18c4:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 18ac <atoi+0x98>
        neg = 1;
    18c8:	02800414 	addi.w	$r20,$r0,1(0x1)
    18cc:	53ff87ff 	b	-124(0xfffff84) # 1850 <atoi+0x3c>

00000000000018d0 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    18d0:	400198c0 	beqz	$r6,408(0x198) # 1a68 <memset+0x198>
    18d4:	0011900c 	sub.d	$r12,$r0,$r4
    18d8:	03401d8c 	andi	$r12,$r12,0x7
    18dc:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    18e0:	02402dae 	sltui	$r14,$r13,11(0xb)
    18e4:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    18e8:	0013b9ad 	masknez	$r13,$r13,$r14
    18ec:	001339ee 	maskeqz	$r14,$r15,$r14
    18f0:	001539ad 	or	$r13,$r13,$r14
    18f4:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    18f8:	00005ca5 	ext.w.b	$r5,$r5
    18fc:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a8c <memset+0x1bc>
    1900:	40018180 	beqz	$r12,384(0x180) # 1a80 <memset+0x1b0>
    1904:	29000085 	st.b	$r5,$r4,0
    1908:	0280040d 	addi.w	$r13,$r0,1(0x1)
    190c:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    1910:	5801698d 	beq	$r12,$r13,360(0x168) # 1a78 <memset+0x1a8>
    1914:	29000485 	st.b	$r5,$r4,1(0x1)
    1918:	0280080d 	addi.w	$r13,$r0,2(0x2)
    191c:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1920:	5801798d 	beq	$r12,$r13,376(0x178) # 1a98 <memset+0x1c8>
    1924:	29000885 	st.b	$r5,$r4,2(0x2)
    1928:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    192c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1930:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a6c <memset+0x19c>
    1934:	29000c85 	st.b	$r5,$r4,3(0x3)
    1938:	0280100d 	addi.w	$r13,$r0,4(0x4)
    193c:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1940:	5801618d 	beq	$r12,$r13,352(0x160) # 1aa0 <memset+0x1d0>
    1944:	29001085 	st.b	$r5,$r4,4(0x4)
    1948:	0280140d 	addi.w	$r13,$r0,5(0x5)
    194c:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1950:	5801598d 	beq	$r12,$r13,344(0x158) # 1aa8 <memset+0x1d8>
    1954:	29001485 	st.b	$r5,$r4,5(0x5)
    1958:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    195c:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1960:	5c01518d 	bne	$r12,$r13,336(0x150) # 1ab0 <memset+0x1e0>
    1964:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1968:	29001885 	st.b	$r5,$r4,6(0x6)
    196c:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1970:	0015000d 	move	$r13,$r0
    1974:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1978:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    197c:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1980:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1984:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1988:	0011b0d0 	sub.d	$r16,$r6,$r12
    198c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1990:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1994:	0010b08c 	add.d	$r12,$r4,$r12
    1998:	00450e0f 	srli.d	$r15,$r16,0x3
    199c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    19a0:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    19a4:	2700018d 	stptr.d	$r13,$r12,0
    19a8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    19ac:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 19a4 <memset+0xd4>
    19b0:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    19b4:	0014be0f 	and	$r15,$r16,$r15
    19b8:	004081ed 	slli.w	$r13,$r15,0x0
    19bc:	0010bdcc 	add.d	$r12,$r14,$r15
    19c0:	001045ad 	add.w	$r13,$r13,$r17
    19c4:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a74 <memset+0x1a4>
    19c8:	29000185 	st.b	$r5,$r12,0
    19cc:	028005ae 	addi.w	$r14,$r13,1(0x1)
    19d0:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a68 <memset+0x198>
    19d4:	29000585 	st.b	$r5,$r12,1(0x1)
    19d8:	028009ae 	addi.w	$r14,$r13,2(0x2)
    19dc:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a68 <memset+0x198>
    19e0:	29000985 	st.b	$r5,$r12,2(0x2)
    19e4:	02800dae 	addi.w	$r14,$r13,3(0x3)
    19e8:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a68 <memset+0x198>
    19ec:	29000d85 	st.b	$r5,$r12,3(0x3)
    19f0:	028011ae 	addi.w	$r14,$r13,4(0x4)
    19f4:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a68 <memset+0x198>
    19f8:	29001185 	st.b	$r5,$r12,4(0x4)
    19fc:	028015ae 	addi.w	$r14,$r13,5(0x5)
    1a00:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a68 <memset+0x198>
    1a04:	29001585 	st.b	$r5,$r12,5(0x5)
    1a08:	028019ae 	addi.w	$r14,$r13,6(0x6)
    1a0c:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a68 <memset+0x198>
    1a10:	29001985 	st.b	$r5,$r12,6(0x6)
    1a14:	02801dae 	addi.w	$r14,$r13,7(0x7)
    1a18:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a68 <memset+0x198>
    1a1c:	29001d85 	st.b	$r5,$r12,7(0x7)
    1a20:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1a24:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a68 <memset+0x198>
    1a28:	29002185 	st.b	$r5,$r12,8(0x8)
    1a2c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1a30:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a68 <memset+0x198>
    1a34:	29002585 	st.b	$r5,$r12,9(0x9)
    1a38:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1a3c:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a68 <memset+0x198>
    1a40:	29002985 	st.b	$r5,$r12,10(0xa)
    1a44:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1a48:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a68 <memset+0x198>
    1a4c:	29002d85 	st.b	$r5,$r12,11(0xb)
    1a50:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1a54:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a68 <memset+0x198>
    1a58:	29003185 	st.b	$r5,$r12,12(0xc)
    1a5c:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1a60:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a68 <memset+0x198>
    1a64:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a68:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a6c:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a70:	53ff03ff 	b	-256(0xfffff00) # 1970 <memset+0xa0>
    1a74:	4c000020 	jirl	$r0,$r1,0
    1a78:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a7c:	53fef7ff 	b	-268(0xffffef4) # 1970 <memset+0xa0>
    1a80:	0015008e 	move	$r14,$r4
    1a84:	00150011 	move	$r17,$r0
    1a88:	53feebff 	b	-280(0xffffee8) # 1970 <memset+0xa0>
    1a8c:	0015008c 	move	$r12,$r4
    1a90:	0015000d 	move	$r13,$r0
    1a94:	53ff37ff 	b	-204(0xfffff34) # 19c8 <memset+0xf8>
    1a98:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a9c:	53fed7ff 	b	-300(0xffffed4) # 1970 <memset+0xa0>
    1aa0:	02801011 	addi.w	$r17,$r0,4(0x4)
    1aa4:	53fecfff 	b	-308(0xffffecc) # 1970 <memset+0xa0>
    1aa8:	02801411 	addi.w	$r17,$r0,5(0x5)
    1aac:	53fec7ff 	b	-316(0xffffec4) # 1970 <memset+0xa0>
    1ab0:	02801811 	addi.w	$r17,$r0,6(0x6)
    1ab4:	53febfff 	b	-324(0xffffebc) # 1970 <memset+0xa0>

0000000000001ab8 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1ab8:	2800008c 	ld.b	$r12,$r4,0
    1abc:	280000ae 	ld.b	$r14,$r5,0
    1ac0:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1af4 <strcmp+0x3c>
    1ac4:	40003980 	beqz	$r12,56(0x38) # 1afc <strcmp+0x44>
    1ac8:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1acc:	50000800 	b	8(0x8) # 1ad4 <strcmp+0x1c>
    1ad0:	400019a0 	beqz	$r13,24(0x18) # 1ae8 <strcmp+0x30>
    1ad4:	3800308d 	ldx.b	$r13,$r4,$r12
    1ad8:	380030ae 	ldx.b	$r14,$r5,$r12
    1adc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ae0:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1ad0 <strcmp+0x18>
    1ae4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1ae8:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1aec:	001111a4 	sub.w	$r4,$r13,$r4
    1af0:	4c000020 	jirl	$r0,$r1,0
    1af4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1af8:	53fff3ff 	b	-16(0xffffff0) # 1ae8 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1afc:	0015000d 	move	$r13,$r0
    1b00:	53ffebff 	b	-24(0xfffffe8) # 1ae8 <strcmp+0x30>

0000000000001b04 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1b04:	400054c0 	beqz	$r6,84(0x54) # 1b58 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1b08:	2a00008d 	ld.bu	$r13,$r4,0
    1b0c:	2a0000ae 	ld.bu	$r14,$r5,0
    1b10:	40003da0 	beqz	$r13,60(0x3c) # 1b4c <strncmp+0x48>
    1b14:	40003dc0 	beqz	$r14,60(0x3c) # 1b50 <strncmp+0x4c>
    if (!n--)
    1b18:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1b1c:	400034c0 	beqz	$r6,52(0x34) # 1b50 <strncmp+0x4c>
    1b20:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1b24:	580019ae 	beq	$r13,$r14,24(0x18) # 1b3c <strncmp+0x38>
    1b28:	50002800 	b	40(0x28) # 1b50 <strncmp+0x4c>
    1b2c:	400035c0 	beqz	$r14,52(0x34) # 1b60 <strncmp+0x5c>
    1b30:	580020cc 	beq	$r6,$r12,32(0x20) # 1b50 <strncmp+0x4c>
    1b34:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b38:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1b60 <strncmp+0x5c>
    1b3c:	3820308d 	ldx.bu	$r13,$r4,$r12
    1b40:	382030ae 	ldx.bu	$r14,$r5,$r12
    1b44:	001501af 	move	$r15,$r13
    1b48:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1b2c <strncmp+0x28>
    1b4c:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1b50:	001139a4 	sub.w	$r4,$r13,$r14
    1b54:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1b58:	00150004 	move	$r4,$r0
}
    1b5c:	4c000020 	jirl	$r0,$r1,0
    1b60:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b64:	001139a4 	sub.w	$r4,$r13,$r14
    1b68:	4c000020 	jirl	$r0,$r1,0

0000000000001b6c <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b6c:	03401c8c 	andi	$r12,$r4,0x7
    1b70:	4000b180 	beqz	$r12,176(0xb0) # 1c20 <strlen+0xb4>
        if (!*s)
    1b74:	2800008c 	ld.b	$r12,$r4,0
    1b78:	4000b180 	beqz	$r12,176(0xb0) # 1c28 <strlen+0xbc>
    1b7c:	0015008c 	move	$r12,$r4
    1b80:	50000c00 	b	12(0xc) # 1b8c <strlen+0x20>
    1b84:	2800018d 	ld.b	$r13,$r12,0
    1b88:	400091a0 	beqz	$r13,144(0x90) # 1c18 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b8c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b90:	03401d8d 	andi	$r13,$r12,0x7
    1b94:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b84 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b98:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b9c:	2600018f 	ldptr.d	$r15,$r12,0
    1ba0:	03bbfdad 	ori	$r13,$r13,0xeff
    1ba4:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1ba8:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1bac:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1bb0:	038201ce 	ori	$r14,$r14,0x80
    1bb4:	0010b5ed 	add.d	$r13,$r15,$r13
    1bb8:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1bbc:	0016bdad 	andn	$r13,$r13,$r15
    1bc0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1bc4:	0014b9ae 	and	$r14,$r13,$r14
    1bc8:	440049c0 	bnez	$r14,72(0x48) # 1c10 <strlen+0xa4>
    1bcc:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1bd0:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1bd4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1bd8:	2600018e 	ldptr.d	$r14,$r12,0
    1bdc:	03bbfe2d 	ori	$r13,$r17,0xeff
    1be0:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1be4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1be8:	0382020f 	ori	$r15,$r16,0x80
    1bec:	0010b5cd 	add.d	$r13,$r14,$r13
    1bf0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1bf4:	0016b9ad 	andn	$r13,$r13,$r14
    1bf8:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bfc:	0014bdad 	and	$r13,$r13,$r15
    1c00:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1bd4 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1c04:	2800018d 	ld.b	$r13,$r12,0
    1c08:	400011a0 	beqz	$r13,16(0x10) # 1c18 <strlen+0xac>
    1c0c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1c10:	2800018d 	ld.b	$r13,$r12,0
    1c14:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1c0c <strlen+0xa0>
        ;
    return s - a;
    1c18:	00119184 	sub.d	$r4,$r12,$r4
}
    1c1c:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1c20:	0015008c 	move	$r12,$r4
    1c24:	53ff77ff 	b	-140(0xfffff74) # 1b98 <strlen+0x2c>
        if (!*s)
    1c28:	00150004 	move	$r4,$r0
            return s - a;
    1c2c:	4c000020 	jirl	$r0,$r1,0

0000000000001c30 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c30:	03401c8c 	andi	$r12,$r4,0x7
    1c34:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1c38:	44002180 	bnez	$r12,32(0x20) # 1c58 <memchr+0x28>
    1c3c:	50002c00 	b	44(0x2c) # 1c68 <memchr+0x38>
    1c40:	2a00008c 	ld.bu	$r12,$r4,0
    1c44:	5800f985 	beq	$r12,$r5,248(0xf8) # 1d3c <memchr+0x10c>
    1c48:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1c4c:	03401c8c 	andi	$r12,$r4,0x7
    1c50:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1c54:	40001580 	beqz	$r12,20(0x14) # 1c68 <memchr+0x38>
    1c58:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1c40 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1c5c:	0015000d 	move	$r13,$r0
}
    1c60:	001501a4 	move	$r4,$r13
    1c64:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c68:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c6c:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1c60 <memchr+0x30>
    1c70:	2a00008c 	ld.bu	$r12,$r4,0
    1c74:	5800c985 	beq	$r12,$r5,200(0xc8) # 1d3c <memchr+0x10c>
        size_t k = ONES * c;
    1c78:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c7c:	0384058c 	ori	$r12,$r12,0x101
    1c80:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c84:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c88:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c8c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c90:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1d4c <memchr+0x11c>
    1c94:	2600008d 	ldptr.d	$r13,$r4,0
    1c98:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c9c:	038201ce 	ori	$r14,$r14,0x80
    1ca0:	0015b60d 	xor	$r13,$r16,$r13
    1ca4:	0011b1ac 	sub.d	$r12,$r13,$r12
    1ca8:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1cac:	0016b58c 	andn	$r12,$r12,$r13
    1cb0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1cb4:	0014b98c 	and	$r12,$r12,$r14
    1cb8:	44009580 	bnez	$r12,148(0x94) # 1d4c <memchr+0x11c>
    1cbc:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1cc0:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1cc4:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1cc8:	50002000 	b	32(0x20) # 1ce8 <memchr+0xb8>
    1ccc:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1cd0:	0015b20c 	xor	$r12,$r16,$r12
    1cd4:	0010b98e 	add.d	$r14,$r12,$r14
    1cd8:	0016b1cc 	andn	$r12,$r14,$r12
    1cdc:	0014bd8c 	and	$r12,$r12,$r15
    1ce0:	44006580 	bnez	$r12,100(0x64) # 1d44 <memchr+0x114>
    1ce4:	001501a4 	move	$r4,$r13
    1ce8:	03bbfe4e 	ori	$r14,$r18,0xeff
    1cec:	0382022f 	ori	$r15,$r17,0x80
    1cf0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cf4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cf8:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1cfc:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d00:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1d04:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1d08:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1ccc <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1d0c:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1c5c <memchr+0x2c>
    1d10:	2a0001ac 	ld.bu	$r12,$r13,0
    1d14:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1c60 <memchr+0x30>
    1d18:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1d1c:	001099a6 	add.d	$r6,$r13,$r6
    1d20:	50001000 	b	16(0x10) # 1d30 <memchr+0x100>
    1d24:	2a00018e 	ld.bu	$r14,$r12,0
    1d28:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1d2c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1c60 <memchr+0x30>
    1d30:	0015018d 	move	$r13,$r12
    1d34:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1d24 <memchr+0xf4>
    1d38:	53ff27ff 	b	-220(0xfffff24) # 1c5c <memchr+0x2c>
    1d3c:	0015008d 	move	$r13,$r4
    1d40:	53ffd3ff 	b	-48(0xfffffd0) # 1d10 <memchr+0xe0>
    1d44:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1d48:	53ffcfff 	b	-52(0xfffffcc) # 1d14 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d4c:	0015008d 	move	$r13,$r4
    1d50:	53ffcbff 	b	-56(0xfffffc8) # 1d18 <memchr+0xe8>

0000000000001d54 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d54:	03401c8c 	andi	$r12,$r4,0x7
    1d58:	40011980 	beqz	$r12,280(0x118) # 1e70 <strnlen+0x11c>
    1d5c:	4000f4a0 	beqz	$r5,244(0xf4) # 1e50 <strnlen+0xfc>
    1d60:	2a00008c 	ld.bu	$r12,$r4,0
    1d64:	4000f580 	beqz	$r12,244(0xf4) # 1e58 <strnlen+0x104>
    1d68:	001500ac 	move	$r12,$r5
    1d6c:	0015008d 	move	$r13,$r4
    1d70:	50001000 	b	16(0x10) # 1d80 <strnlen+0x2c>
    1d74:	4000dd80 	beqz	$r12,220(0xdc) # 1e50 <strnlen+0xfc>
    1d78:	2a0001ae 	ld.bu	$r14,$r13,0
    1d7c:	4000e5c0 	beqz	$r14,228(0xe4) # 1e60 <strnlen+0x10c>
    1d80:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d84:	03401dae 	andi	$r14,$r13,0x7
    1d88:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d8c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d74 <strnlen+0x20>
    if (n && *s != c)
    1d90:	4000c180 	beqz	$r12,192(0xc0) # 1e50 <strnlen+0xfc>
    1d94:	2a0001ae 	ld.bu	$r14,$r13,0
    1d98:	4000c9c0 	beqz	$r14,200(0xc8) # 1e60 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d9c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1da0:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e7c <strnlen+0x128>
    1da4:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1da8:	260001b0 	ldptr.d	$r16,$r13,0
    1dac:	03bbfdce 	ori	$r14,$r14,0xeff
    1db0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1db4:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1db8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1dbc:	038201ef 	ori	$r15,$r15,0x80
    1dc0:	0010ba0e 	add.d	$r14,$r16,$r14
    1dc4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1dc8:	0016c1ce 	andn	$r14,$r14,$r16
    1dcc:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1dd0:	0014bdcf 	and	$r15,$r14,$r15
    1dd4:	4400a9e0 	bnez	$r15,168(0xa8) # 1e7c <strnlen+0x128>
    1dd8:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1ddc:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1de0:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1de4:	50001c00 	b	28(0x1c) # 1e00 <strnlen+0xac>
    1de8:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1dec:	0010b9ee 	add.d	$r14,$r15,$r14
    1df0:	0016bdce 	andn	$r14,$r14,$r15
    1df4:	0014c1ce 	and	$r14,$r14,$r16
    1df8:	440071c0 	bnez	$r14,112(0x70) # 1e68 <strnlen+0x114>
    1dfc:	0015022d 	move	$r13,$r17
    1e00:	03bbfe6e 	ori	$r14,$r19,0xeff
    1e04:	03820250 	ori	$r16,$r18,0x80
    1e08:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1e0c:	16101010 	lu32i.d	$r16,32896(0x8080)
    1e10:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1e14:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1e18:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1e1c:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1e20:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1de8 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1e24:	40002d80 	beqz	$r12,44(0x2c) # 1e50 <strnlen+0xfc>
    1e28:	2a00022d 	ld.bu	$r13,$r17,0
    1e2c:	400021a0 	beqz	$r13,32(0x20) # 1e4c <strnlen+0xf8>
    1e30:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1e34:	0010b22c 	add.d	$r12,$r17,$r12
    1e38:	001501b1 	move	$r17,$r13
    1e3c:	5800158d 	beq	$r12,$r13,20(0x14) # 1e50 <strnlen+0xfc>
    1e40:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1e44:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1e48:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1e38 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1e4c:	00119225 	sub.d	$r5,$r17,$r4
}
    1e50:	001500a4 	move	$r4,$r5
    1e54:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e58:	001500ac 	move	$r12,$r5
    1e5c:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1e60:	001501b1 	move	$r17,$r13
    1e64:	53ffc7ff 	b	-60(0xfffffc4) # 1e28 <strnlen+0xd4>
    1e68:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e6c:	53ffc3ff 	b	-64(0xfffffc0) # 1e2c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e70:	001500ac 	move	$r12,$r5
    1e74:	0015008d 	move	$r13,$r4
    1e78:	53ff1bff 	b	-232(0xfffff18) # 1d90 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e7c:	001501b1 	move	$r17,$r13
    1e80:	53ffb3ff 	b	-80(0xfffffb0) # 1e30 <strnlen+0xdc>

0000000000001e84 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e84:	0015948c 	xor	$r12,$r4,$r5
    1e88:	03401d8c 	andi	$r12,$r12,0x7
    1e8c:	4400ad80 	bnez	$r12,172(0xac) # 1f38 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e90:	03401cac 	andi	$r12,$r5,0x7
    1e94:	40003180 	beqz	$r12,48(0x30) # 1ec4 <strcpy+0x40>
            if (!(*d = *s))
    1e98:	280000ac 	ld.b	$r12,$r5,0
    1e9c:	2900008c 	st.b	$r12,$r4,0
    1ea0:	44001580 	bnez	$r12,20(0x14) # 1eb4 <strcpy+0x30>
    1ea4:	5000bc00 	b	188(0xbc) # 1f60 <strcpy+0xdc>
    1ea8:	280000ac 	ld.b	$r12,$r5,0
    1eac:	2900008c 	st.b	$r12,$r4,0
    1eb0:	4000a980 	beqz	$r12,168(0xa8) # 1f58 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1eb4:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1eb8:	03401cac 	andi	$r12,$r5,0x7
    1ebc:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ec0:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1ea8 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1ec4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ec8:	260000ae 	ldptr.d	$r14,$r5,0
    1ecc:	03bbfd8c 	ori	$r12,$r12,0xeff
    1ed0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ed4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ed8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1edc:	038201ad 	ori	$r13,$r13,0x80
    1ee0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ee4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ee8:	0016b98c 	andn	$r12,$r12,$r14
    1eec:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ef0:	0014b58c 	and	$r12,$r12,$r13
    1ef4:	44004580 	bnez	$r12,68(0x44) # 1f38 <strcpy+0xb4>
    1ef8:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1efc:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1f00:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1f04:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1f08:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1f0c:	260000ae 	ldptr.d	$r14,$r5,0
    1f10:	03bbfe0c 	ori	$r12,$r16,0xeff
    1f14:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f18:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f1c:	038201ed 	ori	$r13,$r15,0x80
    1f20:	0010b1cc 	add.d	$r12,$r14,$r12
    1f24:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f28:	0016b98c 	andn	$r12,$r12,$r14
    1f2c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f30:	0014b58c 	and	$r12,$r12,$r13
    1f34:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1f00 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1f38:	280000ac 	ld.b	$r12,$r5,0
    1f3c:	2900008c 	st.b	$r12,$r4,0
    1f40:	40001d80 	beqz	$r12,28(0x1c) # 1f5c <strcpy+0xd8>
    1f44:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f48:	280000ac 	ld.b	$r12,$r5,0
    1f4c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f50:	2900008c 	st.b	$r12,$r4,0
    1f54:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1f44 <strcpy+0xc0>
        ;
    return d;
}
    1f58:	4c000020 	jirl	$r0,$r1,0
    1f5c:	4c000020 	jirl	$r0,$r1,0
    1f60:	4c000020 	jirl	$r0,$r1,0

0000000000001f64 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f64:	0015948c 	xor	$r12,$r4,$r5
    1f68:	03401d8c 	andi	$r12,$r12,0x7
    1f6c:	4400ad80 	bnez	$r12,172(0xac) # 2018 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f70:	03401cac 	andi	$r12,$r5,0x7
    1f74:	44010180 	bnez	$r12,256(0x100) # 2074 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f78:	400100c0 	beqz	$r6,256(0x100) # 2078 <strncpy+0x114>
    1f7c:	280000af 	ld.b	$r15,$r5,0
    1f80:	400105e0 	beqz	$r15,260(0x104) # 2084 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f84:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f88:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2260 <strncpy+0x2fc>
    1f8c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f90:	260000ae 	ldptr.d	$r14,$r5,0
    1f94:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f98:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f9c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1fa0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fa4:	038201ad 	ori	$r13,$r13,0x80
    1fa8:	0010b1cc 	add.d	$r12,$r14,$r12
    1fac:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1fb0:	0016b98c 	andn	$r12,$r12,$r14
    1fb4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fb8:	0014b58c 	and	$r12,$r12,$r13
    1fbc:	4402a580 	bnez	$r12,676(0x2a4) # 2260 <strncpy+0x2fc>
    1fc0:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1fc4:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1fc8:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1fcc:	50001c00 	b	28(0x1c) # 1fe8 <strncpy+0x84>
    1fd0:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1fd4:	0010b1cc 	add.d	$r12,$r14,$r12
    1fd8:	0016b98c 	andn	$r12,$r12,$r14
    1fdc:	0014b58c 	and	$r12,$r12,$r13
    1fe0:	44024580 	bnez	$r12,580(0x244) # 2224 <strncpy+0x2c0>
    1fe4:	001501e5 	move	$r5,$r15
    1fe8:	03bbfe2c 	ori	$r12,$r17,0xeff
    1fec:	0382020d 	ori	$r13,$r16,0x80
    1ff0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ff4:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1ff8:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1ffc:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    2000:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    2004:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    2008:	02c020af 	addi.d	$r15,$r5,8(0x8)
    200c:	02c02084 	addi.d	$r4,$r4,8(0x8)
    2010:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1fd0 <strncpy+0x6c>
    2014:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    2018:	400060c0 	beqz	$r6,96(0x60) # 2078 <strncpy+0x114>
    201c:	280000ac 	ld.b	$r12,$r5,0
    2020:	0015008d 	move	$r13,$r4
    2024:	2900008c 	st.b	$r12,$r4,0
    2028:	44001580 	bnez	$r12,20(0x14) # 203c <strncpy+0xd8>
    202c:	50005c00 	b	92(0x5c) # 2088 <strncpy+0x124>
    2030:	280000ac 	ld.b	$r12,$r5,0
    2034:	290001ac 	st.b	$r12,$r13,0
    2038:	40005180 	beqz	$r12,80(0x50) # 2088 <strncpy+0x124>
    203c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2040:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2044:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    2048:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 2030 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    204c:	001501a4 	move	$r4,$r13
    2050:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    2054:	280000ac 	ld.b	$r12,$r5,0
    2058:	2900008c 	st.b	$r12,$r4,0
    205c:	40002980 	beqz	$r12,40(0x28) # 2084 <strncpy+0x120>
    2060:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2064:	03401cac 	andi	$r12,$r5,0x7
    2068:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    206c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    2070:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f78 <strncpy+0x14>
    2074:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 2054 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2078:	0015008d 	move	$r13,$r4
}
    207c:	001501a4 	move	$r4,$r13
    2080:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2084:	0015008d 	move	$r13,$r4
    2088:	0011b40c 	sub.d	$r12,$r0,$r13
    208c:	03401d8c 	andi	$r12,$r12,0x7
    2090:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2094:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2098:	02802c10 	addi.w	$r16,$r0,11(0xb)
    209c:	0013bdce 	masknez	$r14,$r14,$r15
    20a0:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    20a4:	00133e0f 	maskeqz	$r15,$r16,$r15
    20a8:	00153dce 	or	$r14,$r14,$r15
    20ac:	024004d0 	sltui	$r16,$r6,1(0x1)
    20b0:	00131a31 	maskeqz	$r17,$r17,$r6
    20b4:	0280040f 	addi.w	$r15,$r0,1(0x1)
    20b8:	001540d0 	or	$r16,$r6,$r16
    20bc:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2234 <strncpy+0x2d0>
    20c0:	40015980 	beqz	$r12,344(0x158) # 2218 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    20c4:	290001a0 	st.b	$r0,$r13,0
    20c8:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    20cc:	5801458f 	beq	$r12,$r15,324(0x144) # 2210 <strncpy+0x2ac>
    20d0:	290005a0 	st.b	$r0,$r13,1(0x1)
    20d4:	0280080f 	addi.w	$r15,$r0,2(0x2)
    20d8:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    20dc:	5801658f 	beq	$r12,$r15,356(0x164) # 2240 <strncpy+0x2dc>
    20e0:	290009a0 	st.b	$r0,$r13,2(0x2)
    20e4:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    20e8:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    20ec:	58011d8f 	beq	$r12,$r15,284(0x11c) # 2208 <strncpy+0x2a4>
    20f0:	29000da0 	st.b	$r0,$r13,3(0x3)
    20f4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    20f8:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    20fc:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2248 <strncpy+0x2e4>
    2100:	290011a0 	st.b	$r0,$r13,4(0x4)
    2104:	0280140f 	addi.w	$r15,$r0,5(0x5)
    2108:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    210c:	5801458f 	beq	$r12,$r15,324(0x144) # 2250 <strncpy+0x2ec>
    2110:	290015a0 	st.b	$r0,$r13,5(0x5)
    2114:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    2118:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    211c:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2258 <strncpy+0x2f4>
    2120:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2124:	290019a0 	st.b	$r0,$r13,6(0x6)
    2128:	02801c12 	addi.w	$r18,$r0,7(0x7)
    212c:	0011b210 	sub.d	$r16,$r16,$r12
    2130:	00450e11 	srli.d	$r17,$r16,0x3
    2134:	0010b1ac 	add.d	$r12,$r13,$r12
    2138:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    213c:	27000180 	stptr.d	$r0,$r12,0
    2140:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2144:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 213c <strncpy+0x1d8>
    2148:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    214c:	0014c611 	and	$r17,$r16,$r17
    2150:	0040822f 	slli.w	$r15,$r17,0x0
    2154:	001049ef 	add.w	$r15,$r15,$r18
    2158:	0010c5cc 	add.d	$r12,$r14,$r17
    215c:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 204c <strncpy+0xe8>
    2160:	29000180 	st.b	$r0,$r12,0
    2164:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2168:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 204c <strncpy+0xe8>
    216c:	29000580 	st.b	$r0,$r12,1(0x1)
    2170:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2174:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 204c <strncpy+0xe8>
    2178:	29000980 	st.b	$r0,$r12,2(0x2)
    217c:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2180:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 204c <strncpy+0xe8>
    2184:	29000d80 	st.b	$r0,$r12,3(0x3)
    2188:	028011ee 	addi.w	$r14,$r15,4(0x4)
    218c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 204c <strncpy+0xe8>
    2190:	29001180 	st.b	$r0,$r12,4(0x4)
    2194:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2198:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 204c <strncpy+0xe8>
    219c:	29001580 	st.b	$r0,$r12,5(0x5)
    21a0:	028019ee 	addi.w	$r14,$r15,6(0x6)
    21a4:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 204c <strncpy+0xe8>
    21a8:	29001980 	st.b	$r0,$r12,6(0x6)
    21ac:	02801dee 	addi.w	$r14,$r15,7(0x7)
    21b0:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 204c <strncpy+0xe8>
    21b4:	29001d80 	st.b	$r0,$r12,7(0x7)
    21b8:	028021ee 	addi.w	$r14,$r15,8(0x8)
    21bc:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 204c <strncpy+0xe8>
    21c0:	29002180 	st.b	$r0,$r12,8(0x8)
    21c4:	028025ee 	addi.w	$r14,$r15,9(0x9)
    21c8:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 204c <strncpy+0xe8>
    21cc:	29002580 	st.b	$r0,$r12,9(0x9)
    21d0:	028029ee 	addi.w	$r14,$r15,10(0xa)
    21d4:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 204c <strncpy+0xe8>
    21d8:	29002980 	st.b	$r0,$r12,10(0xa)
    21dc:	02802dee 	addi.w	$r14,$r15,11(0xb)
    21e0:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 204c <strncpy+0xe8>
    21e4:	29002d80 	st.b	$r0,$r12,11(0xb)
    21e8:	028031ee 	addi.w	$r14,$r15,12(0xc)
    21ec:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 204c <strncpy+0xe8>
    21f0:	29003180 	st.b	$r0,$r12,12(0xc)
    21f4:	028035ef 	addi.w	$r15,$r15,13(0xd)
    21f8:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 204c <strncpy+0xe8>
    21fc:	29003580 	st.b	$r0,$r12,13(0xd)
}
    2200:	001501a4 	move	$r4,$r13
    2204:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    2208:	02800c12 	addi.w	$r18,$r0,3(0x3)
    220c:	53ff23ff 	b	-224(0xfffff20) # 212c <strncpy+0x1c8>
    2210:	02800412 	addi.w	$r18,$r0,1(0x1)
    2214:	53ff1bff 	b	-232(0xfffff18) # 212c <strncpy+0x1c8>
    2218:	001501ae 	move	$r14,$r13
    221c:	00150012 	move	$r18,$r0
    2220:	53ff0fff 	b	-244(0xfffff0c) # 212c <strncpy+0x1c8>
    2224:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2228:	0015008d 	move	$r13,$r4
    222c:	001501e5 	move	$r5,$r15
    2230:	53fdf7ff 	b	-524(0xffffdf4) # 2024 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2234:	001501ac 	move	$r12,$r13
    2238:	0015000f 	move	$r15,$r0
    223c:	53ff27ff 	b	-220(0xfffff24) # 2160 <strncpy+0x1fc>
    2240:	02800812 	addi.w	$r18,$r0,2(0x2)
    2244:	53feebff 	b	-280(0xffffee8) # 212c <strncpy+0x1c8>
    2248:	02801012 	addi.w	$r18,$r0,4(0x4)
    224c:	53fee3ff 	b	-288(0xffffee0) # 212c <strncpy+0x1c8>
    2250:	02801412 	addi.w	$r18,$r0,5(0x5)
    2254:	53fedbff 	b	-296(0xffffed8) # 212c <strncpy+0x1c8>
    2258:	02801812 	addi.w	$r18,$r0,6(0x6)
    225c:	53fed3ff 	b	-304(0xffffed0) # 212c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2260:	2900008f 	st.b	$r15,$r4,0
    2264:	0015008d 	move	$r13,$r4
    2268:	53fdd7ff 	b	-556(0xffffdd4) # 203c <strncpy+0xd8>

000000000000226c <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    226c:	0015008c 	move	$r12,$r4
    2270:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2274:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2278:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    227c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2280:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2284:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2288:	00408084 	slli.w	$r4,$r4,0x0
}
    228c:	4c000020 	jirl	$r0,$r1,0

0000000000002290 <openat>:
    register long a7 __asm__("a7") = n;
    2290:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2294:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2298:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    229c:	00408084 	slli.w	$r4,$r4,0x0
}
    22a0:	4c000020 	jirl	$r0,$r1,0

00000000000022a4 <close>:
    register long a7 __asm__("a7") = n;
    22a4:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    22a8:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    22ac:	00408084 	slli.w	$r4,$r4,0x0
}
    22b0:	4c000020 	jirl	$r0,$r1,0

00000000000022b4 <read>:
    register long a7 __asm__("a7") = n;
    22b4:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22b8:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    22bc:	4c000020 	jirl	$r0,$r1,0

00000000000022c0 <write>:
    register long a7 __asm__("a7") = n;
    22c0:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22c4:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <getpid>:
    register long a7 __asm__("a7") = n;
    22cc:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    22d0:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    22d4:	00408084 	slli.w	$r4,$r4,0x0
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <getppid>:
    register long a7 __asm__("a7") = n;
    22dc:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    22e0:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    22e4:	00408084 	slli.w	$r4,$r4,0x0
}
    22e8:	4c000020 	jirl	$r0,$r1,0

00000000000022ec <sched_yield>:
    register long a7 __asm__("a7") = n;
    22ec:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    22f0:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    22f4:	00408084 	slli.w	$r4,$r4,0x0
}
    22f8:	4c000020 	jirl	$r0,$r1,0

00000000000022fc <fork>:
    register long a7 __asm__("a7") = n;
    22fc:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    2300:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    2304:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2308:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    230c:	00408084 	slli.w	$r4,$r4,0x0
}
    2310:	4c000020 	jirl	$r0,$r1,0

0000000000002314 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    2314:	001500c5 	move	$r5,$r6
    if (stack)
    2318:	400008c0 	beqz	$r6,8(0x8) # 2320 <clone+0xc>
	stack += stack_size;
    231c:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2320:	00408106 	slli.w	$r6,$r8,0x0
    2324:	00150009 	move	$r9,$r0
    2328:	00150008 	move	$r8,$r0
    232c:	00150007 	move	$r7,$r0
    2330:	5002c800 	b	712(0x2c8) # 25f8 <__clone>

0000000000002334 <exit>:
    register long a7 __asm__("a7") = n;
    2334:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2338:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    233c:	4c000020 	jirl	$r0,$r1,0

0000000000002340 <waitpid>:
    register long a7 __asm__("a7") = n;
    2340:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2344:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2348:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    234c:	00408084 	slli.w	$r4,$r4,0x0
}
    2350:	4c000020 	jirl	$r0,$r1,0

0000000000002354 <exec>:
    register long a7 __asm__("a7") = n;
    2354:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2358:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    235c:	00408084 	slli.w	$r4,$r4,0x0
}
    2360:	4c000020 	jirl	$r0,$r1,0

0000000000002364 <execve>:
    register long a7 __asm__("a7") = n;
    2364:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2368:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    236c:	00408084 	slli.w	$r4,$r4,0x0
}
    2370:	4c000020 	jirl	$r0,$r1,0

0000000000002374 <times>:
    register long a7 __asm__("a7") = n;
    2374:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2378:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    237c:	00408084 	slli.w	$r4,$r4,0x0
}
    2380:	4c000020 	jirl	$r0,$r1,0

0000000000002384 <get_time>:

int64 get_time()
{
    2384:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2388:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    238c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2390:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2394:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2398:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    239c:	44003c80 	bnez	$r4,60(0x3c) # 23d8 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    23a0:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    23a4:	039f3c8c 	ori	$r12,$r4,0x7cf
    23a8:	28c02064 	ld.d	$r4,$r3,8(0x8)
    23ac:	2a40006d 	ld.hu	$r13,$r3,0
    23b0:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    23b4:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    23b8:	00450c84 	srli.d	$r4,$r4,0x3
    23bc:	001eb084 	mulh.du	$r4,$r4,$r12
    23c0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    23c4:	001db1ac 	mul.d	$r12,$r13,$r12
    23c8:	00451084 	srli.d	$r4,$r4,0x4
    23cc:	00109184 	add.d	$r4,$r12,$r4
}
    23d0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23d4:	4c000020 	jirl	$r0,$r1,0
        return -1;
    23d8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    23dc:	53fff7ff 	b	-12(0xffffff4) # 23d0 <get_time+0x4c>

00000000000023e0 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    23e0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23e4:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    23e8:	00408084 	slli.w	$r4,$r4,0x0
}
    23ec:	4c000020 	jirl	$r0,$r1,0

00000000000023f0 <time>:
    register long a7 __asm__("a7") = n;
    23f0:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    23f4:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    23f8:	00408084 	slli.w	$r4,$r4,0x0
}
    23fc:	4c000020 	jirl	$r0,$r1,0

0000000000002400 <sleep>:

int sleep(unsigned long long time)
{
    2400:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    2404:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    2408:	00150064 	move	$r4,$r3
    240c:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    2410:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    2414:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2418:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    241c:	44001080 	bnez	$r4,16(0x10) # 242c <sleep+0x2c>
    return 0;
    2420:	00150004 	move	$r4,$r0
}
    2424:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2428:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    242c:	24000064 	ldptr.w	$r4,$r3,0
}
    2430:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <set_priority>:
    register long a7 __asm__("a7") = n;
    2438:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    243c:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2440:	00408084 	slli.w	$r4,$r4,0x0
}
    2444:	4c000020 	jirl	$r0,$r1,0

0000000000002448 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2448:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    244c:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2450:	4c000020 	jirl	$r0,$r1,0

0000000000002454 <munmap>:
    register long a7 __asm__("a7") = n;
    2454:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2458:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    245c:	00408084 	slli.w	$r4,$r4,0x0
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <wait>:

int wait(int *code)
{
    2464:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2468:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    246c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2470:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2474:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2478:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    247c:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2480:	4c000020 	jirl	$r0,$r1,0

0000000000002484 <spawn>:
    register long a7 __asm__("a7") = n;
    2484:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2488:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    248c:	00408084 	slli.w	$r4,$r4,0x0
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <mailread>:
    register long a7 __asm__("a7") = n;
    2494:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2498:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    249c:	00408084 	slli.w	$r4,$r4,0x0
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <mailwrite>:
    register long a7 __asm__("a7") = n;
    24a4:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24a8:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    24ac:	00408084 	slli.w	$r4,$r4,0x0
}
    24b0:	4c000020 	jirl	$r0,$r1,0

00000000000024b4 <fstat>:
    register long a7 __asm__("a7") = n;
    24b4:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    24b8:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    24bc:	00408084 	slli.w	$r4,$r4,0x0
}
    24c0:	4c000020 	jirl	$r0,$r1,0

00000000000024c4 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    24c4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    24c8:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24cc:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24d0:	00408084 	slli.w	$r4,$r4,0x0
}
    24d4:	4c000020 	jirl	$r0,$r1,0

00000000000024d8 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    24d8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    24dc:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24e0:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24e4:	00408084 	slli.w	$r4,$r4,0x0
}
    24e8:	4c000020 	jirl	$r0,$r1,0

00000000000024ec <link>:

int link(char *old_path, char *new_path)
{
    24ec:	0015008c 	move	$r12,$r4
    24f0:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    24f4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    24f8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24fc:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    2500:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    2504:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    2508:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    250c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    2510:	4c000020 	jirl	$r0,$r1,0

0000000000002514 <unlink>:

int unlink(char *path)
{
    2514:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2518:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    251c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2520:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2524:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2528:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <uname>:
    register long a7 __asm__("a7") = n;
    2530:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2534:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2538:	00408084 	slli.w	$r4,$r4,0x0
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <brk>:
    register long a7 __asm__("a7") = n;
    2540:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2544:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <getcwd>:
    register long a7 __asm__("a7") = n;
    2550:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2554:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2558:	4c000020 	jirl	$r0,$r1,0

000000000000255c <chdir>:
    register long a7 __asm__("a7") = n;
    255c:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2560:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2564:	00408084 	slli.w	$r4,$r4,0x0
}
    2568:	4c000020 	jirl	$r0,$r1,0

000000000000256c <mkdir>:

int mkdir(const char *path, mode_t mode){
    256c:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2570:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2574:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2578:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    257c:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2580:	002b0000 	syscall	0x0
    2584:	00408084 	slli.w	$r4,$r4,0x0
}
    2588:	4c000020 	jirl	$r0,$r1,0

000000000000258c <getdents>:
    register long a7 __asm__("a7") = n;
    258c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2590:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2594:	00408084 	slli.w	$r4,$r4,0x0
}
    2598:	4c000020 	jirl	$r0,$r1,0

000000000000259c <pipe>:
    register long a7 __asm__("a7") = n;
    259c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    25a0:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    25a4:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    25a8:	00408084 	slli.w	$r4,$r4,0x0
}
    25ac:	4c000020 	jirl	$r0,$r1,0

00000000000025b0 <dup>:
    register long a7 __asm__("a7") = n;
    25b0:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    25b4:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    25b8:	00408084 	slli.w	$r4,$r4,0x0
}
    25bc:	4c000020 	jirl	$r0,$r1,0

00000000000025c0 <dup2>:
    register long a7 __asm__("a7") = n;
    25c0:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    25c4:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    25c8:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    25cc:	00408084 	slli.w	$r4,$r4,0x0
}
    25d0:	4c000020 	jirl	$r0,$r1,0

00000000000025d4 <mount>:
    register long a7 __asm__("a7") = n;
    25d4:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    25d8:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    25dc:	00408084 	slli.w	$r4,$r4,0x0
}
    25e0:	4c000020 	jirl	$r0,$r1,0

00000000000025e4 <umount>:
    register long a7 __asm__("a7") = n;
    25e4:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    25e8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    25ec:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    25f0:	00408084 	slli.w	$r4,$r4,0x0
}
    25f4:	4c000020 	jirl	$r0,$r1,0

00000000000025f8 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    25f8:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    25fc:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    2600:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    2604:	001500c4 	move	$r4,$r6
	move $a2, $a4
    2608:	00150106 	move	$r6,$r8
	move $a3, $a5
    260c:	00150127 	move	$r7,$r9
	move $a4, $a6
    2610:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    2614:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    2618:	002b0000 	syscall	0x0

	beqz $a0, 1f
    261c:	40000880 	beqz	$r4,8(0x8) # 2624 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2620:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2624:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2628:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    262c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2630:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2634:	002b0000 	syscall	0x0
