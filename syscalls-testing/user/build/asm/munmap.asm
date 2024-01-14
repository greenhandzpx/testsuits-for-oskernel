
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/munmap:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54015c00 	bl	348(0x15c) # 1160 <__start_main>

0000000000001008 <test_munmap>:
 * "  Hello, mmap success"
 * 测试失败时输出：
 * "mmap error."
 */
static struct kstat kst;
void test_munmap(void){
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d83084 	addi.d	$r4,$r4,1548(0x60c)
void test_munmap(void){
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c04077 	st.d	$r23,$r3,16(0x10)
    101c:	29c02078 	st.d	$r24,$r3,8(0x8)
    TEST_START(__func__);
    1020:	54044800 	bl	1096(0x448) # 1468 <puts>
    1024:	1c000024 	pcaddu12i	$r4,1(0x1)
    1028:	02dd5084 	addi.d	$r4,$r4,1876(0x754)
    102c:	54043c00 	bl	1084(0x43c) # 1468 <puts>
    1030:	1c000024 	pcaddu12i	$r4,1(0x1)
    1034:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1038:	54043000 	bl	1072(0x430) # 1468 <puts>
    char *array;
    const char *str = "  Hello, mmap successfully!";
    int fd;

    fd = open("test_mmap.txt", O_RDWR | O_CREATE);
    103c:	02810805 	addi.w	$r5,$r0,66(0x42)
    1040:	1c000024 	pcaddu12i	$r4,1(0x1)
    1044:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1048:	54120400 	bl	4612(0x1204) # 224c <open>
    104c:	00150097 	move	$r23,$r4
    write(fd, str, strlen(str));
    1050:	1c000024 	pcaddu12i	$r4,1(0x1)
    1054:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1058:	540af400 	bl	2804(0xaf4) # 1b4c <strlen>
    105c:	00150086 	move	$r6,$r4
    1060:	1c000025 	pcaddu12i	$r5,1(0x1)
    1064:	02d7c0a5 	addi.d	$r5,$r5,1520(0x5f0)
    1068:	001502e4 	move	$r4,$r23
    106c:	54123400 	bl	4660(0x1234) # 22a0 <write>
    fstat(fd, &kst);
    1070:	1c000025 	pcaddu12i	$r5,1(0x1)
    1074:	02da20a5 	addi.d	$r5,$r5,1672(0x688)
    1078:	001502e4 	move	$r4,$r23
    107c:	54141800 	bl	5144(0x1418) # 2494 <fstat>
    printf("file len: %d\n", kst.st_size);
    1080:	1c000038 	pcaddu12i	$r24,1(0x1)
    1084:	02d9e318 	addi.d	$r24,$r24,1656(0x678)
    1088:	28c0c305 	ld.d	$r5,$r24,48(0x30)
    108c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1090:	02d79084 	addi.d	$r4,$r4,1508(0x5e4)
    1094:	54040c00 	bl	1036(0x40c) # 14a0 <printf>
    array = mmap(NULL, kst.st_size, PROT_WRITE | PROT_READ, MAP_FILE | MAP_SHARED, fd, 0);
    1098:	28c0c305 	ld.d	$r5,$r24,48(0x30)
    109c:	00150009 	move	$r9,$r0
    10a0:	001502e8 	move	$r8,$r23
    10a4:	02800407 	addi.w	$r7,$r0,1(0x1)
    10a8:	02800c06 	addi.w	$r6,$r0,3(0x3)
    10ac:	00150004 	move	$r4,$r0
    10b0:	54137800 	bl	4984(0x1378) # 2428 <mmap>
    //printf("return array: %x\n", array);

    if (array == MAP_FAILED) {
    10b4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
    10b8:	58007c8c 	beq	$r4,$r12,124(0x7c) # 1134 <test_munmap+0x12c>
	printf("mmap error.\n");
    }else{
	//printf("mmap content: %s\n", array);

    	int ret = munmap(array, kst.st_size);
    10bc:	28c0c305 	ld.d	$r5,$r24,48(0x30)
    10c0:	54137400 	bl	4980(0x1374) # 2434 <munmap>
    10c4:	00150098 	move	$r24,$r4
	printf("munmap return: %d\n",ret);
    10c8:	00150085 	move	$r5,$r4
    10cc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d0:	02d71084 	addi.d	$r4,$r4,1476(0x5c4)
    10d4:	5403cc00 	bl	972(0x3cc) # 14a0 <printf>
	assert(ret == 0);
    10d8:	44004f00 	bnez	$r24,76(0x4c) # 1124 <test_munmap+0x11c>

	if (ret == 0)
		printf("munmap successfully!\n");
    10dc:	1c000024 	pcaddu12i	$r4,1(0x1)
    10e0:	02d7f084 	addi.d	$r4,$r4,1532(0x5fc)
    10e4:	5403bc00 	bl	956(0x3bc) # 14a0 <printf>
    }
    close(fd);
    10e8:	001502e4 	move	$r4,$r23
    10ec:	54119800 	bl	4504(0x1198) # 2284 <close>

    TEST_END(__func__);
    10f0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10f4:	02d76084 	addi.d	$r4,$r4,1496(0x5d8)
    10f8:	54037000 	bl	880(0x370) # 1468 <puts>
    10fc:	1c000024 	pcaddu12i	$r4,1(0x1)
    1100:	02d9f084 	addi.d	$r4,$r4,1660(0x67c)
    1104:	54036400 	bl	868(0x364) # 1468 <puts>
}
    1108:	28c06061 	ld.d	$r1,$r3,24(0x18)
    110c:	28c04077 	ld.d	$r23,$r3,16(0x10)
    1110:	28c02078 	ld.d	$r24,$r3,8(0x8)
    TEST_END(__func__);
    1114:	1c000024 	pcaddu12i	$r4,1(0x1)
    1118:	02d47084 	addi.d	$r4,$r4,1308(0x51c)
}
    111c:	02c08063 	addi.d	$r3,$r3,32(0x20)
    TEST_END(__func__);
    1120:	50034800 	b	840(0x348) # 1468 <puts>
	assert(ret == 0);
    1124:	1c000024 	pcaddu12i	$r4,1(0x1)
    1128:	02d61084 	addi.d	$r4,$r4,1412(0x584)
    112c:	54068400 	bl	1668(0x684) # 17b0 <panic>
	if (ret == 0)
    1130:	53ffbbff 	b	-72(0xfffffb8) # 10e8 <test_munmap+0xe0>
	printf("mmap error.\n");
    1134:	1c000024 	pcaddu12i	$r4,1(0x1)
    1138:	02d53084 	addi.d	$r4,$r4,1356(0x54c)
    113c:	54036400 	bl	868(0x364) # 14a0 <printf>
    1140:	53ffabff 	b	-88(0xfffffa8) # 10e8 <test_munmap+0xe0>

0000000000001144 <main>:

int main(void){
    1144:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1148:	29c02061 	st.d	$r1,$r3,8(0x8)
    test_munmap();
    114c:	57febfff 	bl	-324(0xffffebc) # 1008 <test_munmap>
    return 0;
}
    1150:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1154:	00150004 	move	$r4,$r0
    1158:	02c04063 	addi.d	$r3,$r3,16(0x10)
    115c:	4c000020 	jirl	$r0,$r1,0

0000000000001160 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1160:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1164:	24000084 	ldptr.w	$r4,$r4,0
{
    1168:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    116c:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1170:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1174:	57ffd3ff 	bl	-48(0xfffffd0) # 1144 <main>
    1178:	54119c00 	bl	4508(0x119c) # 2314 <exit>
	return 0;
}
    117c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1180:	00150004 	move	$r4,$r0
    1184:	02c04063 	addi.d	$r3,$r3,16(0x10)
    1188:	4c000020 	jirl	$r0,$r1,0

000000000000118c <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    118c:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1190:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1194:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1360 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    1198:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    119c:	1c00002c 	pcaddu12i	$r12,1(0x1)
    11a0:	02d7b18c 	addi.d	$r12,$r12,1516(0x5ec)
    11a4:	002195cf 	mod.wu	$r15,$r14,$r5
    11a8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b0 <printint.constprop.0+0x24>
    11ac:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    11b0:	002115cd 	div.wu	$r13,$r14,$r5
    11b4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11bc <printint.constprop.0+0x30>
    11b8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11bc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    11c0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    11c4:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    11c8:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    11cc:	680219c5 	bltu	$r14,$r5,536(0x218) # 13e4 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    11d0:	002195af 	mod.wu	$r15,$r13,$r5
    11d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11dc <printint.constprop.0+0x50>
    11d8:	002a0007 	break	0x7
    11dc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e0:	002115ae 	div.wu	$r14,$r13,$r5
    11e4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11ec <printint.constprop.0+0x60>
    11e8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11ec:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f0:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11f4:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 13b4 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11f8:	002195cf 	mod.wu	$r15,$r14,$r5
    11fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1204 <printint.constprop.0+0x78>
    1200:	002a0007 	break	0x7
    1204:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1208:	002115cd 	div.wu	$r13,$r14,$r5
    120c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1214 <printint.constprop.0+0x88>
    1210:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1214:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1218:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    121c:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 13c0 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1220:	002195af 	mod.wu	$r15,$r13,$r5
    1224:	5c0008a0 	bne	$r5,$r0,8(0x8) # 122c <printint.constprop.0+0xa0>
    1228:	002a0007 	break	0x7
    122c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1230:	002115ae 	div.wu	$r14,$r13,$r5
    1234:	5c0008a0 	bne	$r5,$r0,8(0x8) # 123c <printint.constprop.0+0xb0>
    1238:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    123c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1240:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1244:	680189a5 	bltu	$r13,$r5,392(0x188) # 13cc <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    1248:	002195cf 	mod.wu	$r15,$r14,$r5
    124c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1254 <printint.constprop.0+0xc8>
    1250:	002a0007 	break	0x7
    1254:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1258:	002115cd 	div.wu	$r13,$r14,$r5
    125c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1264 <printint.constprop.0+0xd8>
    1260:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1264:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1268:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    126c:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 13d8 <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1270:	002195af 	mod.wu	$r15,$r13,$r5
    1274:	5c0008a0 	bne	$r5,$r0,8(0x8) # 127c <printint.constprop.0+0xf0>
    1278:	002a0007 	break	0x7
    127c:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1280:	002115ae 	div.wu	$r14,$r13,$r5
    1284:	5c0008a0 	bne	$r5,$r0,8(0x8) # 128c <printint.constprop.0+0x100>
    1288:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    128c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1290:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1294:	680115a5 	bltu	$r13,$r5,276(0x114) # 13a8 <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    1298:	002195cf 	mod.wu	$r15,$r14,$r5
    129c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a4 <printint.constprop.0+0x118>
    12a0:	002a0007 	break	0x7
    12a4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12a8:	002115cd 	div.wu	$r13,$r14,$r5
    12ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b4 <printint.constprop.0+0x128>
    12b0:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12b8:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    12bc:	680131c5 	bltu	$r14,$r5,304(0x130) # 13ec <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    12c0:	002195af 	mod.wu	$r15,$r13,$r5
    12c4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12cc <printint.constprop.0+0x140>
    12c8:	002a0007 	break	0x7
    12cc:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12d0:	002115ae 	div.wu	$r14,$r13,$r5
    12d4:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12dc <printint.constprop.0+0x150>
    12d8:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12dc:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12e0:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    12e4:	680115a5 	bltu	$r13,$r5,276(0x114) # 13f8 <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    12e8:	002195cf 	mod.wu	$r15,$r14,$r5
    12ec:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12f4 <printint.constprop.0+0x168>
    12f0:	002a0007 	break	0x7
    12f4:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12f8:	002115cd 	div.wu	$r13,$r14,$r5
    12fc:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1304 <printint.constprop.0+0x178>
    1300:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1304:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1308:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    130c:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1404 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1310:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1314:	3820358d 	ldx.bu	$r13,$r12,$r13
    1318:	02801805 	addi.w	$r5,$r0,6(0x6)
    131c:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1320:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1324:	64001880 	bge	$r4,$r0,24(0x18) # 133c <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    1328:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    132c:	0010b1ad 	add.d	$r13,$r13,$r12
    1330:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1334:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    1338:	00150185 	move	$r5,$r12
    write(f, s, l);
    133c:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1340:	02804006 	addi.w	$r6,$r0,16(0x10)
    1344:	001114c6 	sub.w	$r6,$r6,$r5
    1348:	02800404 	addi.w	$r4,$r0,1(0x1)
    134c:	00109585 	add.d	$r5,$r12,$r5
    1350:	540f5000 	bl	3920(0xf50) # 22a0 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1354:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    1358:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    135c:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1360:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1364:	1c00002c 	pcaddu12i	$r12,1(0x1)
    1368:	02d0918c 	addi.d	$r12,$r12,1060(0x424)
    136c:	002195cf 	mod.wu	$r15,$r14,$r5
    1370:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1378 <printint.constprop.0+0x1ec>
    1374:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    1378:	002115cd 	div.wu	$r13,$r14,$r5
    137c:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1384 <printint.constprop.0+0x1f8>
    1380:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1384:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    1388:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    138c:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1390:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1394:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 11d0 <printint.constprop.0+0x44>
        buf[i--] = '-';
    1398:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    139c:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    13a0:	02803805 	addi.w	$r5,$r0,14(0xe)
    13a4:	53ff9bff 	b	-104(0xfffff98) # 133c <printint.constprop.0+0x1b0>
    13a8:	0280240c 	addi.w	$r12,$r0,9(0x9)
    13ac:	02802805 	addi.w	$r5,$r0,10(0xa)
    13b0:	53ff77ff 	b	-140(0xfffff74) # 1324 <printint.constprop.0+0x198>
    13b4:	0280340c 	addi.w	$r12,$r0,13(0xd)
    13b8:	02803805 	addi.w	$r5,$r0,14(0xe)
    13bc:	53ff6bff 	b	-152(0xfffff68) # 1324 <printint.constprop.0+0x198>
    13c0:	0280300c 	addi.w	$r12,$r0,12(0xc)
    13c4:	02803405 	addi.w	$r5,$r0,13(0xd)
    13c8:	53ff5fff 	b	-164(0xfffff5c) # 1324 <printint.constprop.0+0x198>
    13cc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    13d0:	02803005 	addi.w	$r5,$r0,12(0xc)
    13d4:	53ff53ff 	b	-176(0xfffff50) # 1324 <printint.constprop.0+0x198>
    13d8:	0280280c 	addi.w	$r12,$r0,10(0xa)
    13dc:	02802c05 	addi.w	$r5,$r0,11(0xb)
    13e0:	53ff47ff 	b	-188(0xfffff44) # 1324 <printint.constprop.0+0x198>
    i = 15;
    13e4:	02803c05 	addi.w	$r5,$r0,15(0xf)
    13e8:	53ff57ff 	b	-172(0xfffff54) # 133c <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    13ec:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13f0:	02802405 	addi.w	$r5,$r0,9(0x9)
    13f4:	53ff33ff 	b	-208(0xfffff30) # 1324 <printint.constprop.0+0x198>
    13f8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    13fc:	02802005 	addi.w	$r5,$r0,8(0x8)
    1400:	53ff27ff 	b	-220(0xfffff24) # 1324 <printint.constprop.0+0x198>
    1404:	0280180c 	addi.w	$r12,$r0,6(0x6)
    1408:	02801c05 	addi.w	$r5,$r0,7(0x7)
    140c:	53ff1bff 	b	-232(0xfffff18) # 1324 <printint.constprop.0+0x198>

0000000000001410 <getchar>:
{
    1410:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1414:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1418:	02800406 	addi.w	$r6,$r0,1(0x1)
    141c:	00150004 	move	$r4,$r0
{
    1420:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1424:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    1428:	540e6c00 	bl	3692(0xe6c) # 2294 <read>
}
    142c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1430:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1434:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1438:	4c000020 	jirl	$r0,$r1,0

000000000000143c <putchar>:
{
    143c:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1440:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1444:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    1448:	02800406 	addi.w	$r6,$r0,1(0x1)
    144c:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1450:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1454:	540e4c00 	bl	3660(0xe4c) # 22a0 <write>
}
    1458:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    145c:	00408084 	slli.w	$r4,$r4,0x0
}
    1460:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1464:	4c000020 	jirl	$r0,$r1,0

0000000000001468 <puts>:
{
    1468:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    146c:	29c02061 	st.d	$r1,$r3,8(0x8)
    1470:	27000077 	stptr.d	$r23,$r3,0
    1474:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    1478:	5406d400 	bl	1748(0x6d4) # 1b4c <strlen>
    147c:	00150086 	move	$r6,$r4
    1480:	001502e5 	move	$r5,$r23
    1484:	02800404 	addi.w	$r4,$r0,1(0x1)
    1488:	540e1800 	bl	3608(0xe18) # 22a0 <write>
}
    148c:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1490:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1494:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    1498:	02c04063 	addi.d	$r3,$r3,16(0x10)
    149c:	4c000020 	jirl	$r0,$r1,0

00000000000014a0 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    14a0:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    14a4:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    14a8:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    14ac:	140000fa 	lu12i.w	$r26,7(0x7)
{
    14b0:	29c14079 	st.d	$r25,$r3,80(0x50)
    14b4:	29c1007b 	st.d	$r27,$r3,64(0x40)
    14b8:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    14bc:	29c1a061 	st.d	$r1,$r3,104(0x68)
    14c0:	29c18077 	st.d	$r23,$r3,96(0x60)
    14c4:	29c16078 	st.d	$r24,$r3,88(0x58)
    14c8:	0015009b 	move	$r27,$r4
    14cc:	29c1e065 	st.d	$r5,$r3,120(0x78)
    14d0:	29c20066 	st.d	$r6,$r3,128(0x80)
    14d4:	29c22067 	st.d	$r7,$r3,136(0x88)
    14d8:	29c24068 	st.d	$r8,$r3,144(0x90)
    14dc:	29c26069 	st.d	$r9,$r3,152(0x98)
    14e0:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    14e4:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    14e8:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    14ec:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14f0:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14f4:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14f8:	02ca539c 	addi.d	$r28,$r28,660(0x294)
        if (!*s)
    14fc:	2800036c 	ld.b	$r12,$r27,0
    1500:	40008980 	beqz	$r12,136(0x88) # 1588 <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1504:	58027d99 	beq	$r12,$r25,636(0x27c) # 1780 <printf+0x2e0>
    1508:	00150366 	move	$r6,$r27
    150c:	50000800 	b	8(0x8) # 1514 <printf+0x74>
    1510:	58009d99 	beq	$r12,$r25,156(0x9c) # 15ac <printf+0x10c>
    1514:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    1518:	280000cc 	ld.b	$r12,$r6,0
    151c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1510 <printf+0x70>
    1520:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1524:	0011ecd7 	sub.d	$r23,$r6,$r27
    1528:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    152c:	001502e6 	move	$r6,$r23
    1530:	00150365 	move	$r5,$r27
    1534:	02800404 	addi.w	$r4,$r0,1(0x1)
    1538:	540d6800 	bl	3432(0xd68) # 22a0 <write>
        out(f, a, l);
        if (l)
    153c:	4400b6e0 	bnez	$r23,180(0xb4) # 15f0 <printf+0x150>
            continue;
        if (s[1] == 0)
    1540:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1544:	40004580 	beqz	$r12,68(0x44) # 1588 <printf+0xe8>
            break;
        switch (s[1])
    1548:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    154c:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1620 <printf+0x180>
    1550:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15f8 <printf+0x158>
    1554:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    1558:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 1748 <printf+0x2a8>
    155c:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1560:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1710 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1564:	2600006c 	ldptr.d	$r12,$r3,0
    1568:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    156c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1570:	24000184 	ldptr.w	$r4,$r12,0
    1574:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1578:	2700006c 	stptr.d	$r12,$r3,0
    157c:	57fc13ff 	bl	-1008(0xffffc10) # 118c <printint.constprop.0>
        if (!*s)
    1580:	2800036c 	ld.b	$r12,$r27,0
    1584:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1504 <printf+0x64>
    }
    va_end(ap);
}
    1588:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    158c:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1590:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1594:	28c14079 	ld.d	$r25,$r3,80(0x50)
    1598:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    159c:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    15a0:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    15a4:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    15a8:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    15ac:	280004cc 	ld.b	$r12,$r6,1(0x1)
    15b0:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1520 <printf+0x80>
    15b4:	001500d8 	move	$r24,$r6
    15b8:	50000c00 	b	12(0xc) # 15c4 <printf+0x124>
    15bc:	2800070c 	ld.b	$r12,$r24,1(0x1)
    15c0:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1524 <printf+0x84>
    15c4:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    15c8:	2800030c 	ld.b	$r12,$r24,0
    15cc:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    15d0:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 15bc <printf+0x11c>
        l = z - a;
    15d4:	0011ecd7 	sub.d	$r23,$r6,$r27
    15d8:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    15dc:	001502e6 	move	$r6,$r23
    15e0:	00150365 	move	$r5,$r27
    15e4:	02800404 	addi.w	$r4,$r0,1(0x1)
    15e8:	540cb800 	bl	3256(0xcb8) # 22a0 <write>
        if (l)
    15ec:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1540 <printf+0xa0>
    15f0:	0015031b 	move	$r27,$r24
    15f4:	53ff0bff 	b	-248(0xfffff08) # 14fc <printf+0x5c>
        switch (s[1])
    15f8:	0281900d 	addi.w	$r13,$r0,100(0x64)
    15fc:	5c01158d 	bne	$r12,$r13,276(0x114) # 1710 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1600:	2600006c 	ldptr.d	$r12,$r3,0
    1604:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    1608:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    160c:	24000184 	ldptr.w	$r4,$r12,0
    1610:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1614:	2700006c 	stptr.d	$r12,$r3,0
    1618:	57fb77ff 	bl	-1164(0xffffb74) # 118c <printint.constprop.0>
        s += 2;
    161c:	53ff67ff 	b	-156(0xfffff64) # 1580 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1620:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1624:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    1628:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    162c:	260001ac 	ldptr.d	$r12,$r13,0
    1630:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1634:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    1638:	0045f18a 	srli.d	$r10,$r12,0x3c
    163c:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1640:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1644:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    1648:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    164c:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1650:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1654:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    1658:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    165c:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1660:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1664:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    1668:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    166c:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1670:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1674:	3820278a 	ldx.bu	$r10,$r28,$r9
    1678:	38202389 	ldx.bu	$r9,$r28,$r8
    167c:	38201f88 	ldx.bu	$r8,$r28,$r7
    1680:	38201787 	ldx.bu	$r7,$r28,$r5
    1684:	38201385 	ldx.bu	$r5,$r28,$r4
    1688:	38205384 	ldx.bu	$r4,$r28,$r20
    168c:	38204f94 	ldx.bu	$r20,$r28,$r19
    1690:	38204b93 	ldx.bu	$r19,$r28,$r18
    1694:	38204792 	ldx.bu	$r18,$r28,$r17
    1698:	38204391 	ldx.bu	$r17,$r28,$r16
    169c:	38203f90 	ldx.bu	$r16,$r28,$r15
    16a0:	38203b8f 	ldx.bu	$r15,$r28,$r14
    16a4:	3820378e 	ldx.bu	$r14,$r28,$r13
    16a8:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    16ac:	03403d8c 	andi	$r12,$r12,0xf
    16b0:	2900286b 	st.b	$r11,$r3,10(0xa)
    16b4:	29002c6a 	st.b	$r10,$r3,11(0xb)
    16b8:	29003069 	st.b	$r9,$r3,12(0xc)
    16bc:	29003468 	st.b	$r8,$r3,13(0xd)
    16c0:	29003867 	st.b	$r7,$r3,14(0xe)
    16c4:	29003c65 	st.b	$r5,$r3,15(0xf)
    16c8:	29004064 	st.b	$r4,$r3,16(0x10)
    16cc:	29004474 	st.b	$r20,$r3,17(0x11)
    16d0:	29004873 	st.b	$r19,$r3,18(0x12)
    16d4:	29004c72 	st.b	$r18,$r3,19(0x13)
    16d8:	29005071 	st.b	$r17,$r3,20(0x14)
    16dc:	29005470 	st.b	$r16,$r3,21(0x15)
    16e0:	2900586f 	st.b	$r15,$r3,22(0x16)
    16e4:	29005c6e 	st.b	$r14,$r3,23(0x17)
    16e8:	3820378d 	ldx.bu	$r13,$r28,$r13
    16ec:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16f0:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16f4:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16f8:	2900606d 	st.b	$r13,$r3,24(0x18)
    16fc:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1700:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1704:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    1708:	540b9800 	bl	2968(0xb98) # 22a0 <write>
        s += 2;
    170c:	53fe77ff 	b	-396(0xffffe74) # 1580 <printf+0xe0>
    char byte = c;
    1710:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1714:	02800406 	addi.w	$r6,$r0,1(0x1)
    1718:	02c02065 	addi.d	$r5,$r3,8(0x8)
    171c:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1720:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1724:	540b7c00 	bl	2940(0xb7c) # 22a0 <write>
    char byte = c;
    1728:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    172c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1730:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1734:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1738:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    173c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1740:	540b6000 	bl	2912(0xb60) # 22a0 <write>
        s += 2;
    1744:	53fe3fff 	b	-452(0xffffe3c) # 1580 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    1748:	2600006c 	ldptr.d	$r12,$r3,0
    174c:	26000197 	ldptr.d	$r23,$r12,0
    1750:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1754:	2700006c 	stptr.d	$r12,$r3,0
    1758:	40004ee0 	beqz	$r23,76(0x4c) # 17a4 <printf+0x304>
            l = strnlen(a, 200);
    175c:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1760:	001502e4 	move	$r4,$r23
    1764:	5405d000 	bl	1488(0x5d0) # 1d34 <strnlen>
    1768:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    176c:	001502e5 	move	$r5,$r23
    1770:	02800404 	addi.w	$r4,$r0,1(0x1)
    1774:	540b2c00 	bl	2860(0xb2c) # 22a0 <write>
        s += 2;
    1778:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    177c:	53fe07ff 	b	-508(0xffffe04) # 1580 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1780:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1784:	00150366 	move	$r6,$r27
    1788:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 15b4 <printf+0x114>
    write(f, s, l);
    178c:	00150006 	move	$r6,$r0
    1790:	00150365 	move	$r5,$r27
    1794:	02800404 	addi.w	$r4,$r0,1(0x1)
    1798:	540b0800 	bl	2824(0xb08) # 22a0 <write>
    179c:	00150378 	move	$r24,$r27
    17a0:	53fda3ff 	b	-608(0xffffda0) # 1540 <printf+0xa0>
                a = "(null)";
    17a4:	1c000037 	pcaddu12i	$r23,1(0x1)
    17a8:	02fd32f7 	addi.d	$r23,$r23,-180(0xf4c)
    17ac:	53ffb3ff 	b	-80(0xfffffb0) # 175c <printf+0x2bc>

00000000000017b0 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    17b0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    17b4:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    17b8:	57fcb3ff 	bl	-848(0xffffcb0) # 1468 <puts>
    exit(-100);
}
    17bc:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    17c0:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    17c4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    17c8:	500b4c00 	b	2892(0xb4c) # 2314 <exit>

00000000000017cc <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    17cc:	0280800c 	addi.w	$r12,$r0,32(0x20)
    17d0:	5800108c 	beq	$r4,$r12,16(0x10) # 17e0 <isspace+0x14>
    17d4:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    17d8:	02401484 	sltui	$r4,$r4,5(0x5)
    17dc:	4c000020 	jirl	$r0,$r1,0
    17e0:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    17e4:	4c000020 	jirl	$r0,$r1,0

00000000000017e8 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    17e8:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    17ec:	02402884 	sltui	$r4,$r4,10(0xa)
    17f0:	4c000020 	jirl	$r0,$r1,0

00000000000017f4 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17f4:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17f8:	0280100f 	addi.w	$r15,$r0,4(0x4)
    17fc:	2800008d 	ld.b	$r13,$r4,0
    1800:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1804:	580061ae 	beq	$r13,$r14,96(0x60) # 1864 <atoi+0x70>
    1808:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1864 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    180c:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1810:	580065ac 	beq	$r13,$r12,100(0x64) # 1874 <atoi+0x80>
    1814:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    1818:	58007dac 	beq	$r13,$r12,124(0x7c) # 1894 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    181c:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1820:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1824:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    1828:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    182c:	680061cf 	bltu	$r14,$r15,96(0x60) # 188c <atoi+0x98>
    int n = 0, neg = 0;
    1830:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1834:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    1838:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    183c:	001c126f 	mul.w	$r15,$r19,$r4
    1840:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1844:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    1848:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    184c:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1850:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1854:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    1858:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 183c <atoi+0x48>
    return neg ? n : -n;
    185c:	40001280 	beqz	$r20,16(0x10) # 186c <atoi+0x78>
}
    1860:	4c000020 	jirl	$r0,$r1,0
        s++;
    1864:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1868:	53ff97ff 	b	-108(0xfffff94) # 17fc <atoi+0x8>
    186c:	00113e04 	sub.w	$r4,$r16,$r15
    1870:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1874:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1878:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    187c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1880:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1884:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1888:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1830 <atoi+0x3c>
    188c:	00150004 	move	$r4,$r0
}
    1890:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1894:	2800048d 	ld.b	$r13,$r4,1(0x1)
    1898:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    189c:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    18a0:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    18a4:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 188c <atoi+0x98>
        neg = 1;
    18a8:	02800414 	addi.w	$r20,$r0,1(0x1)
    18ac:	53ff87ff 	b	-124(0xfffff84) # 1830 <atoi+0x3c>

00000000000018b0 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    18b0:	400198c0 	beqz	$r6,408(0x198) # 1a48 <memset+0x198>
    18b4:	0011900c 	sub.d	$r12,$r0,$r4
    18b8:	03401d8c 	andi	$r12,$r12,0x7
    18bc:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    18c0:	02402dae 	sltui	$r14,$r13,11(0xb)
    18c4:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    18c8:	0013b9ad 	masknez	$r13,$r13,$r14
    18cc:	001339ee 	maskeqz	$r14,$r15,$r14
    18d0:	001539ad 	or	$r13,$r13,$r14
    18d4:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    18d8:	00005ca5 	ext.w.b	$r5,$r5
    18dc:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a6c <memset+0x1bc>
    18e0:	40018180 	beqz	$r12,384(0x180) # 1a60 <memset+0x1b0>
    18e4:	29000085 	st.b	$r5,$r4,0
    18e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
    18ec:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18f0:	5801698d 	beq	$r12,$r13,360(0x168) # 1a58 <memset+0x1a8>
    18f4:	29000485 	st.b	$r5,$r4,1(0x1)
    18f8:	0280080d 	addi.w	$r13,$r0,2(0x2)
    18fc:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1900:	5801798d 	beq	$r12,$r13,376(0x178) # 1a78 <memset+0x1c8>
    1904:	29000885 	st.b	$r5,$r4,2(0x2)
    1908:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    190c:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1910:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a4c <memset+0x19c>
    1914:	29000c85 	st.b	$r5,$r4,3(0x3)
    1918:	0280100d 	addi.w	$r13,$r0,4(0x4)
    191c:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1920:	5801618d 	beq	$r12,$r13,352(0x160) # 1a80 <memset+0x1d0>
    1924:	29001085 	st.b	$r5,$r4,4(0x4)
    1928:	0280140d 	addi.w	$r13,$r0,5(0x5)
    192c:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1930:	5801598d 	beq	$r12,$r13,344(0x158) # 1a88 <memset+0x1d8>
    1934:	29001485 	st.b	$r5,$r4,5(0x5)
    1938:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    193c:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1940:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a90 <memset+0x1e0>
    1944:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    1948:	29001885 	st.b	$r5,$r4,6(0x6)
    194c:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1950:	0015000d 	move	$r13,$r0
    1954:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    1958:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    195c:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1960:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1964:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    1968:	0011b0d0 	sub.d	$r16,$r6,$r12
    196c:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1970:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1974:	0010b08c 	add.d	$r12,$r4,$r12
    1978:	00450e0f 	srli.d	$r15,$r16,0x3
    197c:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1980:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1984:	2700018d 	stptr.d	$r13,$r12,0
    1988:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    198c:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1984 <memset+0xd4>
    1990:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1994:	0014be0f 	and	$r15,$r16,$r15
    1998:	004081ed 	slli.w	$r13,$r15,0x0
    199c:	0010bdcc 	add.d	$r12,$r14,$r15
    19a0:	001045ad 	add.w	$r13,$r13,$r17
    19a4:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a54 <memset+0x1a4>
    19a8:	29000185 	st.b	$r5,$r12,0
    19ac:	028005ae 	addi.w	$r14,$r13,1(0x1)
    19b0:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a48 <memset+0x198>
    19b4:	29000585 	st.b	$r5,$r12,1(0x1)
    19b8:	028009ae 	addi.w	$r14,$r13,2(0x2)
    19bc:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a48 <memset+0x198>
    19c0:	29000985 	st.b	$r5,$r12,2(0x2)
    19c4:	02800dae 	addi.w	$r14,$r13,3(0x3)
    19c8:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a48 <memset+0x198>
    19cc:	29000d85 	st.b	$r5,$r12,3(0x3)
    19d0:	028011ae 	addi.w	$r14,$r13,4(0x4)
    19d4:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a48 <memset+0x198>
    19d8:	29001185 	st.b	$r5,$r12,4(0x4)
    19dc:	028015ae 	addi.w	$r14,$r13,5(0x5)
    19e0:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a48 <memset+0x198>
    19e4:	29001585 	st.b	$r5,$r12,5(0x5)
    19e8:	028019ae 	addi.w	$r14,$r13,6(0x6)
    19ec:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a48 <memset+0x198>
    19f0:	29001985 	st.b	$r5,$r12,6(0x6)
    19f4:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19f8:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a48 <memset+0x198>
    19fc:	29001d85 	st.b	$r5,$r12,7(0x7)
    1a00:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1a04:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a48 <memset+0x198>
    1a08:	29002185 	st.b	$r5,$r12,8(0x8)
    1a0c:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1a10:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a48 <memset+0x198>
    1a14:	29002585 	st.b	$r5,$r12,9(0x9)
    1a18:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1a1c:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a48 <memset+0x198>
    1a20:	29002985 	st.b	$r5,$r12,10(0xa)
    1a24:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1a28:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a48 <memset+0x198>
    1a2c:	29002d85 	st.b	$r5,$r12,11(0xb)
    1a30:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1a34:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a48 <memset+0x198>
    1a38:	29003185 	st.b	$r5,$r12,12(0xc)
    1a3c:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1a40:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a48 <memset+0x198>
    1a44:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a48:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a4c:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a50:	53ff03ff 	b	-256(0xfffff00) # 1950 <memset+0xa0>
    1a54:	4c000020 	jirl	$r0,$r1,0
    1a58:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a5c:	53fef7ff 	b	-268(0xffffef4) # 1950 <memset+0xa0>
    1a60:	0015008e 	move	$r14,$r4
    1a64:	00150011 	move	$r17,$r0
    1a68:	53feebff 	b	-280(0xffffee8) # 1950 <memset+0xa0>
    1a6c:	0015008c 	move	$r12,$r4
    1a70:	0015000d 	move	$r13,$r0
    1a74:	53ff37ff 	b	-204(0xfffff34) # 19a8 <memset+0xf8>
    1a78:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a7c:	53fed7ff 	b	-300(0xffffed4) # 1950 <memset+0xa0>
    1a80:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a84:	53fecfff 	b	-308(0xffffecc) # 1950 <memset+0xa0>
    1a88:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a8c:	53fec7ff 	b	-316(0xffffec4) # 1950 <memset+0xa0>
    1a90:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a94:	53febfff 	b	-324(0xffffebc) # 1950 <memset+0xa0>

0000000000001a98 <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a98:	2800008c 	ld.b	$r12,$r4,0
    1a9c:	280000ae 	ld.b	$r14,$r5,0
    1aa0:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1ad4 <strcmp+0x3c>
    1aa4:	40003980 	beqz	$r12,56(0x38) # 1adc <strcmp+0x44>
    1aa8:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1aac:	50000800 	b	8(0x8) # 1ab4 <strcmp+0x1c>
    1ab0:	400019a0 	beqz	$r13,24(0x18) # 1ac8 <strcmp+0x30>
    1ab4:	3800308d 	ldx.b	$r13,$r4,$r12
    1ab8:	380030ae 	ldx.b	$r14,$r5,$r12
    1abc:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac0:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1ab0 <strcmp+0x18>
    1ac4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1ac8:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1acc:	001111a4 	sub.w	$r4,$r13,$r4
    1ad0:	4c000020 	jirl	$r0,$r1,0
    1ad4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1ad8:	53fff3ff 	b	-16(0xffffff0) # 1ac8 <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1adc:	0015000d 	move	$r13,$r0
    1ae0:	53ffebff 	b	-24(0xfffffe8) # 1ac8 <strcmp+0x30>

0000000000001ae4 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1ae4:	400054c0 	beqz	$r6,84(0x54) # 1b38 <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1ae8:	2a00008d 	ld.bu	$r13,$r4,0
    1aec:	2a0000ae 	ld.bu	$r14,$r5,0
    1af0:	40003da0 	beqz	$r13,60(0x3c) # 1b2c <strncmp+0x48>
    1af4:	40003dc0 	beqz	$r14,60(0x3c) # 1b30 <strncmp+0x4c>
    if (!n--)
    1af8:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1afc:	400034c0 	beqz	$r6,52(0x34) # 1b30 <strncmp+0x4c>
    1b00:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1b04:	580019ae 	beq	$r13,$r14,24(0x18) # 1b1c <strncmp+0x38>
    1b08:	50002800 	b	40(0x28) # 1b30 <strncmp+0x4c>
    1b0c:	400035c0 	beqz	$r14,52(0x34) # 1b40 <strncmp+0x5c>
    1b10:	580020cc 	beq	$r6,$r12,32(0x20) # 1b30 <strncmp+0x4c>
    1b14:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b18:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1b40 <strncmp+0x5c>
    1b1c:	3820308d 	ldx.bu	$r13,$r4,$r12
    1b20:	382030ae 	ldx.bu	$r14,$r5,$r12
    1b24:	001501af 	move	$r15,$r13
    1b28:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1b0c <strncmp+0x28>
    1b2c:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1b30:	001139a4 	sub.w	$r4,$r13,$r14
    1b34:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1b38:	00150004 	move	$r4,$r0
}
    1b3c:	4c000020 	jirl	$r0,$r1,0
    1b40:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b44:	001139a4 	sub.w	$r4,$r13,$r14
    1b48:	4c000020 	jirl	$r0,$r1,0

0000000000001b4c <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b4c:	03401c8c 	andi	$r12,$r4,0x7
    1b50:	4000b180 	beqz	$r12,176(0xb0) # 1c00 <strlen+0xb4>
        if (!*s)
    1b54:	2800008c 	ld.b	$r12,$r4,0
    1b58:	4000b180 	beqz	$r12,176(0xb0) # 1c08 <strlen+0xbc>
    1b5c:	0015008c 	move	$r12,$r4
    1b60:	50000c00 	b	12(0xc) # 1b6c <strlen+0x20>
    1b64:	2800018d 	ld.b	$r13,$r12,0
    1b68:	400091a0 	beqz	$r13,144(0x90) # 1bf8 <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b6c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b70:	03401d8d 	andi	$r13,$r12,0x7
    1b74:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b64 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b78:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b7c:	2600018f 	ldptr.d	$r15,$r12,0
    1b80:	03bbfdad 	ori	$r13,$r13,0xeff
    1b84:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b88:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b8c:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b90:	038201ce 	ori	$r14,$r14,0x80
    1b94:	0010b5ed 	add.d	$r13,$r15,$r13
    1b98:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1b9c:	0016bdad 	andn	$r13,$r13,$r15
    1ba0:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1ba4:	0014b9ae 	and	$r14,$r13,$r14
    1ba8:	440049c0 	bnez	$r14,72(0x48) # 1bf0 <strlen+0xa4>
    1bac:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1bb0:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1bb4:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1bb8:	2600018e 	ldptr.d	$r14,$r12,0
    1bbc:	03bbfe2d 	ori	$r13,$r17,0xeff
    1bc0:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1bc4:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1bc8:	0382020f 	ori	$r15,$r16,0x80
    1bcc:	0010b5cd 	add.d	$r13,$r14,$r13
    1bd0:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1bd4:	0016b9ad 	andn	$r13,$r13,$r14
    1bd8:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1bdc:	0014bdad 	and	$r13,$r13,$r15
    1be0:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1bb4 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1be4:	2800018d 	ld.b	$r13,$r12,0
    1be8:	400011a0 	beqz	$r13,16(0x10) # 1bf8 <strlen+0xac>
    1bec:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1bf0:	2800018d 	ld.b	$r13,$r12,0
    1bf4:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1bec <strlen+0xa0>
        ;
    return s - a;
    1bf8:	00119184 	sub.d	$r4,$r12,$r4
}
    1bfc:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1c00:	0015008c 	move	$r12,$r4
    1c04:	53ff77ff 	b	-140(0xfffff74) # 1b78 <strlen+0x2c>
        if (!*s)
    1c08:	00150004 	move	$r4,$r0
            return s - a;
    1c0c:	4c000020 	jirl	$r0,$r1,0

0000000000001c10 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c10:	03401c8c 	andi	$r12,$r4,0x7
    1c14:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1c18:	44002180 	bnez	$r12,32(0x20) # 1c38 <memchr+0x28>
    1c1c:	50002c00 	b	44(0x2c) # 1c48 <memchr+0x38>
    1c20:	2a00008c 	ld.bu	$r12,$r4,0
    1c24:	5800f985 	beq	$r12,$r5,248(0xf8) # 1d1c <memchr+0x10c>
    1c28:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1c2c:	03401c8c 	andi	$r12,$r4,0x7
    1c30:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1c34:	40001580 	beqz	$r12,20(0x14) # 1c48 <memchr+0x38>
    1c38:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1c20 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1c3c:	0015000d 	move	$r13,$r0
}
    1c40:	001501a4 	move	$r4,$r13
    1c44:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c48:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c4c:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1c40 <memchr+0x30>
    1c50:	2a00008c 	ld.bu	$r12,$r4,0
    1c54:	5800c985 	beq	$r12,$r5,200(0xc8) # 1d1c <memchr+0x10c>
        size_t k = ONES * c;
    1c58:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c5c:	0384058c 	ori	$r12,$r12,0x101
    1c60:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c64:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c68:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c6c:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c70:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1d2c <memchr+0x11c>
    1c74:	2600008d 	ldptr.d	$r13,$r4,0
    1c78:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c7c:	038201ce 	ori	$r14,$r14,0x80
    1c80:	0015b60d 	xor	$r13,$r16,$r13
    1c84:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c88:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c8c:	0016b58c 	andn	$r12,$r12,$r13
    1c90:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c94:	0014b98c 	and	$r12,$r12,$r14
    1c98:	44009580 	bnez	$r12,148(0x94) # 1d2c <memchr+0x11c>
    1c9c:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1ca0:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1ca4:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1ca8:	50002000 	b	32(0x20) # 1cc8 <memchr+0xb8>
    1cac:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1cb0:	0015b20c 	xor	$r12,$r16,$r12
    1cb4:	0010b98e 	add.d	$r14,$r12,$r14
    1cb8:	0016b1cc 	andn	$r12,$r14,$r12
    1cbc:	0014bd8c 	and	$r12,$r12,$r15
    1cc0:	44006580 	bnez	$r12,100(0x64) # 1d24 <memchr+0x114>
    1cc4:	001501a4 	move	$r4,$r13
    1cc8:	03bbfe4e 	ori	$r14,$r18,0xeff
    1ccc:	0382022f 	ori	$r15,$r17,0x80
    1cd0:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cd4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cd8:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1cdc:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1ce0:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1ce4:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1ce8:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1cac <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1cec:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1c3c <memchr+0x2c>
    1cf0:	2a0001ac 	ld.bu	$r12,$r13,0
    1cf4:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1c40 <memchr+0x30>
    1cf8:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1cfc:	001099a6 	add.d	$r6,$r13,$r6
    1d00:	50001000 	b	16(0x10) # 1d10 <memchr+0x100>
    1d04:	2a00018e 	ld.bu	$r14,$r12,0
    1d08:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1d0c:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1c40 <memchr+0x30>
    1d10:	0015018d 	move	$r13,$r12
    1d14:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1d04 <memchr+0xf4>
    1d18:	53ff27ff 	b	-220(0xfffff24) # 1c3c <memchr+0x2c>
    1d1c:	0015008d 	move	$r13,$r4
    1d20:	53ffd3ff 	b	-48(0xfffffd0) # 1cf0 <memchr+0xe0>
    1d24:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1d28:	53ffcfff 	b	-52(0xfffffcc) # 1cf4 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d2c:	0015008d 	move	$r13,$r4
    1d30:	53ffcbff 	b	-56(0xfffffc8) # 1cf8 <memchr+0xe8>

0000000000001d34 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d34:	03401c8c 	andi	$r12,$r4,0x7
    1d38:	40011980 	beqz	$r12,280(0x118) # 1e50 <strnlen+0x11c>
    1d3c:	4000f4a0 	beqz	$r5,244(0xf4) # 1e30 <strnlen+0xfc>
    1d40:	2a00008c 	ld.bu	$r12,$r4,0
    1d44:	4000f580 	beqz	$r12,244(0xf4) # 1e38 <strnlen+0x104>
    1d48:	001500ac 	move	$r12,$r5
    1d4c:	0015008d 	move	$r13,$r4
    1d50:	50001000 	b	16(0x10) # 1d60 <strnlen+0x2c>
    1d54:	4000dd80 	beqz	$r12,220(0xdc) # 1e30 <strnlen+0xfc>
    1d58:	2a0001ae 	ld.bu	$r14,$r13,0
    1d5c:	4000e5c0 	beqz	$r14,228(0xe4) # 1e40 <strnlen+0x10c>
    1d60:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d64:	03401dae 	andi	$r14,$r13,0x7
    1d68:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d6c:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d54 <strnlen+0x20>
    if (n && *s != c)
    1d70:	4000c180 	beqz	$r12,192(0xc0) # 1e30 <strnlen+0xfc>
    1d74:	2a0001ae 	ld.bu	$r14,$r13,0
    1d78:	4000c9c0 	beqz	$r14,200(0xc8) # 1e40 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d7c:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d80:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e5c <strnlen+0x128>
    1d84:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d88:	260001b0 	ldptr.d	$r16,$r13,0
    1d8c:	03bbfdce 	ori	$r14,$r14,0xeff
    1d90:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d94:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d98:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1d9c:	038201ef 	ori	$r15,$r15,0x80
    1da0:	0010ba0e 	add.d	$r14,$r16,$r14
    1da4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1da8:	0016c1ce 	andn	$r14,$r14,$r16
    1dac:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1db0:	0014bdcf 	and	$r15,$r14,$r15
    1db4:	4400a9e0 	bnez	$r15,168(0xa8) # 1e5c <strnlen+0x128>
    1db8:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1dbc:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1dc0:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1dc4:	50001c00 	b	28(0x1c) # 1de0 <strnlen+0xac>
    1dc8:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1dcc:	0010b9ee 	add.d	$r14,$r15,$r14
    1dd0:	0016bdce 	andn	$r14,$r14,$r15
    1dd4:	0014c1ce 	and	$r14,$r14,$r16
    1dd8:	440071c0 	bnez	$r14,112(0x70) # 1e48 <strnlen+0x114>
    1ddc:	0015022d 	move	$r13,$r17
    1de0:	03bbfe6e 	ori	$r14,$r19,0xeff
    1de4:	03820250 	ori	$r16,$r18,0x80
    1de8:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1dec:	16101010 	lu32i.d	$r16,32896(0x8080)
    1df0:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1df4:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1df8:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1dfc:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1e00:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1dc8 <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1e04:	40002d80 	beqz	$r12,44(0x2c) # 1e30 <strnlen+0xfc>
    1e08:	2a00022d 	ld.bu	$r13,$r17,0
    1e0c:	400021a0 	beqz	$r13,32(0x20) # 1e2c <strnlen+0xf8>
    1e10:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1e14:	0010b22c 	add.d	$r12,$r17,$r12
    1e18:	001501b1 	move	$r17,$r13
    1e1c:	5800158d 	beq	$r12,$r13,20(0x14) # 1e30 <strnlen+0xfc>
    1e20:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1e24:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1e28:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1e18 <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1e2c:	00119225 	sub.d	$r5,$r17,$r4
}
    1e30:	001500a4 	move	$r4,$r5
    1e34:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e38:	001500ac 	move	$r12,$r5
    1e3c:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1e40:	001501b1 	move	$r17,$r13
    1e44:	53ffc7ff 	b	-60(0xfffffc4) # 1e08 <strnlen+0xd4>
    1e48:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e4c:	53ffc3ff 	b	-64(0xfffffc0) # 1e0c <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e50:	001500ac 	move	$r12,$r5
    1e54:	0015008d 	move	$r13,$r4
    1e58:	53ff1bff 	b	-232(0xfffff18) # 1d70 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e5c:	001501b1 	move	$r17,$r13
    1e60:	53ffb3ff 	b	-80(0xfffffb0) # 1e10 <strnlen+0xdc>

0000000000001e64 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e64:	0015948c 	xor	$r12,$r4,$r5
    1e68:	03401d8c 	andi	$r12,$r12,0x7
    1e6c:	4400ad80 	bnez	$r12,172(0xac) # 1f18 <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e70:	03401cac 	andi	$r12,$r5,0x7
    1e74:	40003180 	beqz	$r12,48(0x30) # 1ea4 <strcpy+0x40>
            if (!(*d = *s))
    1e78:	280000ac 	ld.b	$r12,$r5,0
    1e7c:	2900008c 	st.b	$r12,$r4,0
    1e80:	44001580 	bnez	$r12,20(0x14) # 1e94 <strcpy+0x30>
    1e84:	5000bc00 	b	188(0xbc) # 1f40 <strcpy+0xdc>
    1e88:	280000ac 	ld.b	$r12,$r5,0
    1e8c:	2900008c 	st.b	$r12,$r4,0
    1e90:	4000a980 	beqz	$r12,168(0xa8) # 1f38 <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e94:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e98:	03401cac 	andi	$r12,$r5,0x7
    1e9c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ea0:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e88 <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1ea4:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1ea8:	260000ae 	ldptr.d	$r14,$r5,0
    1eac:	03bbfd8c 	ori	$r12,$r12,0xeff
    1eb0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1eb4:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1eb8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ebc:	038201ad 	ori	$r13,$r13,0x80
    1ec0:	0010b1cc 	add.d	$r12,$r14,$r12
    1ec4:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ec8:	0016b98c 	andn	$r12,$r12,$r14
    1ecc:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ed0:	0014b58c 	and	$r12,$r12,$r13
    1ed4:	44004580 	bnez	$r12,68(0x44) # 1f18 <strcpy+0xb4>
    1ed8:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1edc:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ee0:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ee4:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1ee8:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1eec:	260000ae 	ldptr.d	$r14,$r5,0
    1ef0:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ef4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1ef8:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1efc:	038201ed 	ori	$r13,$r15,0x80
    1f00:	0010b1cc 	add.d	$r12,$r14,$r12
    1f04:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f08:	0016b98c 	andn	$r12,$r12,$r14
    1f0c:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f10:	0014b58c 	and	$r12,$r12,$r13
    1f14:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1ee0 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1f18:	280000ac 	ld.b	$r12,$r5,0
    1f1c:	2900008c 	st.b	$r12,$r4,0
    1f20:	40001d80 	beqz	$r12,28(0x1c) # 1f3c <strcpy+0xd8>
    1f24:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f28:	280000ac 	ld.b	$r12,$r5,0
    1f2c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f30:	2900008c 	st.b	$r12,$r4,0
    1f34:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1f24 <strcpy+0xc0>
        ;
    return d;
}
    1f38:	4c000020 	jirl	$r0,$r1,0
    1f3c:	4c000020 	jirl	$r0,$r1,0
    1f40:	4c000020 	jirl	$r0,$r1,0

0000000000001f44 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f44:	0015948c 	xor	$r12,$r4,$r5
    1f48:	03401d8c 	andi	$r12,$r12,0x7
    1f4c:	4400ad80 	bnez	$r12,172(0xac) # 1ff8 <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f50:	03401cac 	andi	$r12,$r5,0x7
    1f54:	44010180 	bnez	$r12,256(0x100) # 2054 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f58:	400100c0 	beqz	$r6,256(0x100) # 2058 <strncpy+0x114>
    1f5c:	280000af 	ld.b	$r15,$r5,0
    1f60:	400105e0 	beqz	$r15,260(0x104) # 2064 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f64:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f68:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2240 <strncpy+0x2fc>
    1f6c:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f70:	260000ae 	ldptr.d	$r14,$r5,0
    1f74:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f78:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f7c:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f80:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f84:	038201ad 	ori	$r13,$r13,0x80
    1f88:	0010b1cc 	add.d	$r12,$r14,$r12
    1f8c:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f90:	0016b98c 	andn	$r12,$r12,$r14
    1f94:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f98:	0014b58c 	and	$r12,$r12,$r13
    1f9c:	4402a580 	bnez	$r12,676(0x2a4) # 2240 <strncpy+0x2fc>
    1fa0:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1fa4:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1fa8:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1fac:	50001c00 	b	28(0x1c) # 1fc8 <strncpy+0x84>
    1fb0:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1fb4:	0010b1cc 	add.d	$r12,$r14,$r12
    1fb8:	0016b98c 	andn	$r12,$r12,$r14
    1fbc:	0014b58c 	and	$r12,$r12,$r13
    1fc0:	44024580 	bnez	$r12,580(0x244) # 2204 <strncpy+0x2c0>
    1fc4:	001501e5 	move	$r5,$r15
    1fc8:	03bbfe2c 	ori	$r12,$r17,0xeff
    1fcc:	0382020d 	ori	$r13,$r16,0x80
    1fd0:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1fd4:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1fd8:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1fdc:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1fe0:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fe4:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fe8:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1fec:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ff0:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1fb0 <strncpy+0x6c>
    1ff4:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1ff8:	400060c0 	beqz	$r6,96(0x60) # 2058 <strncpy+0x114>
    1ffc:	280000ac 	ld.b	$r12,$r5,0
    2000:	0015008d 	move	$r13,$r4
    2004:	2900008c 	st.b	$r12,$r4,0
    2008:	44001580 	bnez	$r12,20(0x14) # 201c <strncpy+0xd8>
    200c:	50005c00 	b	92(0x5c) # 2068 <strncpy+0x124>
    2010:	280000ac 	ld.b	$r12,$r5,0
    2014:	290001ac 	st.b	$r12,$r13,0
    2018:	40005180 	beqz	$r12,80(0x50) # 2068 <strncpy+0x124>
    201c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2020:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2024:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    2028:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 2010 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    202c:	001501a4 	move	$r4,$r13
    2030:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    2034:	280000ac 	ld.b	$r12,$r5,0
    2038:	2900008c 	st.b	$r12,$r4,0
    203c:	40002980 	beqz	$r12,40(0x28) # 2064 <strncpy+0x120>
    2040:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2044:	03401cac 	andi	$r12,$r5,0x7
    2048:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    204c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    2050:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f58 <strncpy+0x14>
    2054:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 2034 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    2058:	0015008d 	move	$r13,$r4
}
    205c:	001501a4 	move	$r4,$r13
    2060:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2064:	0015008d 	move	$r13,$r4
    2068:	0011b40c 	sub.d	$r12,$r0,$r13
    206c:	03401d8c 	andi	$r12,$r12,0x7
    2070:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2074:	02402dcf 	sltui	$r15,$r14,11(0xb)
    2078:	02802c10 	addi.w	$r16,$r0,11(0xb)
    207c:	0013bdce 	masknez	$r14,$r14,$r15
    2080:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2084:	00133e0f 	maskeqz	$r15,$r16,$r15
    2088:	00153dce 	or	$r14,$r14,$r15
    208c:	024004d0 	sltui	$r16,$r6,1(0x1)
    2090:	00131a31 	maskeqz	$r17,$r17,$r6
    2094:	0280040f 	addi.w	$r15,$r0,1(0x1)
    2098:	001540d0 	or	$r16,$r6,$r16
    209c:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2214 <strncpy+0x2d0>
    20a0:	40015980 	beqz	$r12,344(0x158) # 21f8 <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    20a4:	290001a0 	st.b	$r0,$r13,0
    20a8:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    20ac:	5801458f 	beq	$r12,$r15,324(0x144) # 21f0 <strncpy+0x2ac>
    20b0:	290005a0 	st.b	$r0,$r13,1(0x1)
    20b4:	0280080f 	addi.w	$r15,$r0,2(0x2)
    20b8:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    20bc:	5801658f 	beq	$r12,$r15,356(0x164) # 2220 <strncpy+0x2dc>
    20c0:	290009a0 	st.b	$r0,$r13,2(0x2)
    20c4:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    20c8:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    20cc:	58011d8f 	beq	$r12,$r15,284(0x11c) # 21e8 <strncpy+0x2a4>
    20d0:	29000da0 	st.b	$r0,$r13,3(0x3)
    20d4:	0280100f 	addi.w	$r15,$r0,4(0x4)
    20d8:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    20dc:	58014d8f 	beq	$r12,$r15,332(0x14c) # 2228 <strncpy+0x2e4>
    20e0:	290011a0 	st.b	$r0,$r13,4(0x4)
    20e4:	0280140f 	addi.w	$r15,$r0,5(0x5)
    20e8:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    20ec:	5801458f 	beq	$r12,$r15,324(0x144) # 2230 <strncpy+0x2ec>
    20f0:	290015a0 	st.b	$r0,$r13,5(0x5)
    20f4:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20f8:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    20fc:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 2238 <strncpy+0x2f4>
    2100:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2104:	290019a0 	st.b	$r0,$r13,6(0x6)
    2108:	02801c12 	addi.w	$r18,$r0,7(0x7)
    210c:	0011b210 	sub.d	$r16,$r16,$r12
    2110:	00450e11 	srli.d	$r17,$r16,0x3
    2114:	0010b1ac 	add.d	$r12,$r13,$r12
    2118:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    211c:	27000180 	stptr.d	$r0,$r12,0
    2120:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2124:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 211c <strncpy+0x1d8>
    2128:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    212c:	0014c611 	and	$r17,$r16,$r17
    2130:	0040822f 	slli.w	$r15,$r17,0x0
    2134:	001049ef 	add.w	$r15,$r15,$r18
    2138:	0010c5cc 	add.d	$r12,$r14,$r17
    213c:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 202c <strncpy+0xe8>
    2140:	29000180 	st.b	$r0,$r12,0
    2144:	028005ee 	addi.w	$r14,$r15,1(0x1)
    2148:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 202c <strncpy+0xe8>
    214c:	29000580 	st.b	$r0,$r12,1(0x1)
    2150:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2154:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 202c <strncpy+0xe8>
    2158:	29000980 	st.b	$r0,$r12,2(0x2)
    215c:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2160:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 202c <strncpy+0xe8>
    2164:	29000d80 	st.b	$r0,$r12,3(0x3)
    2168:	028011ee 	addi.w	$r14,$r15,4(0x4)
    216c:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 202c <strncpy+0xe8>
    2170:	29001180 	st.b	$r0,$r12,4(0x4)
    2174:	028015ee 	addi.w	$r14,$r15,5(0x5)
    2178:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 202c <strncpy+0xe8>
    217c:	29001580 	st.b	$r0,$r12,5(0x5)
    2180:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2184:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 202c <strncpy+0xe8>
    2188:	29001980 	st.b	$r0,$r12,6(0x6)
    218c:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2190:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 202c <strncpy+0xe8>
    2194:	29001d80 	st.b	$r0,$r12,7(0x7)
    2198:	028021ee 	addi.w	$r14,$r15,8(0x8)
    219c:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 202c <strncpy+0xe8>
    21a0:	29002180 	st.b	$r0,$r12,8(0x8)
    21a4:	028025ee 	addi.w	$r14,$r15,9(0x9)
    21a8:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 202c <strncpy+0xe8>
    21ac:	29002580 	st.b	$r0,$r12,9(0x9)
    21b0:	028029ee 	addi.w	$r14,$r15,10(0xa)
    21b4:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 202c <strncpy+0xe8>
    21b8:	29002980 	st.b	$r0,$r12,10(0xa)
    21bc:	02802dee 	addi.w	$r14,$r15,11(0xb)
    21c0:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 202c <strncpy+0xe8>
    21c4:	29002d80 	st.b	$r0,$r12,11(0xb)
    21c8:	028031ee 	addi.w	$r14,$r15,12(0xc)
    21cc:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 202c <strncpy+0xe8>
    21d0:	29003180 	st.b	$r0,$r12,12(0xc)
    21d4:	028035ef 	addi.w	$r15,$r15,13(0xd)
    21d8:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 202c <strncpy+0xe8>
    21dc:	29003580 	st.b	$r0,$r12,13(0xd)
}
    21e0:	001501a4 	move	$r4,$r13
    21e4:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    21e8:	02800c12 	addi.w	$r18,$r0,3(0x3)
    21ec:	53ff23ff 	b	-224(0xfffff20) # 210c <strncpy+0x1c8>
    21f0:	02800412 	addi.w	$r18,$r0,1(0x1)
    21f4:	53ff1bff 	b	-232(0xfffff18) # 210c <strncpy+0x1c8>
    21f8:	001501ae 	move	$r14,$r13
    21fc:	00150012 	move	$r18,$r0
    2200:	53ff0fff 	b	-244(0xfffff0c) # 210c <strncpy+0x1c8>
    2204:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    2208:	0015008d 	move	$r13,$r4
    220c:	001501e5 	move	$r5,$r15
    2210:	53fdf7ff 	b	-524(0xffffdf4) # 2004 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2214:	001501ac 	move	$r12,$r13
    2218:	0015000f 	move	$r15,$r0
    221c:	53ff27ff 	b	-220(0xfffff24) # 2140 <strncpy+0x1fc>
    2220:	02800812 	addi.w	$r18,$r0,2(0x2)
    2224:	53feebff 	b	-280(0xffffee8) # 210c <strncpy+0x1c8>
    2228:	02801012 	addi.w	$r18,$r0,4(0x4)
    222c:	53fee3ff 	b	-288(0xffffee0) # 210c <strncpy+0x1c8>
    2230:	02801412 	addi.w	$r18,$r0,5(0x5)
    2234:	53fedbff 	b	-296(0xffffed8) # 210c <strncpy+0x1c8>
    2238:	02801812 	addi.w	$r18,$r0,6(0x6)
    223c:	53fed3ff 	b	-304(0xffffed0) # 210c <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2240:	2900008f 	st.b	$r15,$r4,0
    2244:	0015008d 	move	$r13,$r4
    2248:	53fdd7ff 	b	-556(0xffffdd4) # 201c <strncpy+0xd8>

000000000000224c <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    224c:	0015008c 	move	$r12,$r4
    2250:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2254:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    2258:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    225c:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2260:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2264:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    2268:	00408084 	slli.w	$r4,$r4,0x0
}
    226c:	4c000020 	jirl	$r0,$r1,0

0000000000002270 <openat>:
    register long a7 __asm__("a7") = n;
    2270:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2274:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2278:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    227c:	00408084 	slli.w	$r4,$r4,0x0
}
    2280:	4c000020 	jirl	$r0,$r1,0

0000000000002284 <close>:
    register long a7 __asm__("a7") = n;
    2284:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    2288:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    228c:	00408084 	slli.w	$r4,$r4,0x0
}
    2290:	4c000020 	jirl	$r0,$r1,0

0000000000002294 <read>:
    register long a7 __asm__("a7") = n;
    2294:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2298:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    229c:	4c000020 	jirl	$r0,$r1,0

00000000000022a0 <write>:
    register long a7 __asm__("a7") = n;
    22a0:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22a4:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    22a8:	4c000020 	jirl	$r0,$r1,0

00000000000022ac <getpid>:
    register long a7 __asm__("a7") = n;
    22ac:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    22b0:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    22b4:	00408084 	slli.w	$r4,$r4,0x0
}
    22b8:	4c000020 	jirl	$r0,$r1,0

00000000000022bc <getppid>:
    register long a7 __asm__("a7") = n;
    22bc:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    22c0:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    22c4:	00408084 	slli.w	$r4,$r4,0x0
}
    22c8:	4c000020 	jirl	$r0,$r1,0

00000000000022cc <sched_yield>:
    register long a7 __asm__("a7") = n;
    22cc:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    22d0:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    22d4:	00408084 	slli.w	$r4,$r4,0x0
}
    22d8:	4c000020 	jirl	$r0,$r1,0

00000000000022dc <fork>:
    register long a7 __asm__("a7") = n;
    22dc:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    22e0:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    22e4:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22e8:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    22ec:	00408084 	slli.w	$r4,$r4,0x0
}
    22f0:	4c000020 	jirl	$r0,$r1,0

00000000000022f4 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22f4:	001500c5 	move	$r5,$r6
    if (stack)
    22f8:	400008c0 	beqz	$r6,8(0x8) # 2300 <clone+0xc>
	stack += stack_size;
    22fc:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2300:	00408106 	slli.w	$r6,$r8,0x0
    2304:	00150009 	move	$r9,$r0
    2308:	00150008 	move	$r8,$r0
    230c:	00150007 	move	$r7,$r0
    2310:	5002c800 	b	712(0x2c8) # 25d8 <__clone>

0000000000002314 <exit>:
    register long a7 __asm__("a7") = n;
    2314:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    2318:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    231c:	4c000020 	jirl	$r0,$r1,0

0000000000002320 <waitpid>:
    register long a7 __asm__("a7") = n;
    2320:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2324:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2328:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    232c:	00408084 	slli.w	$r4,$r4,0x0
}
    2330:	4c000020 	jirl	$r0,$r1,0

0000000000002334 <exec>:
    register long a7 __asm__("a7") = n;
    2334:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    2338:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    233c:	00408084 	slli.w	$r4,$r4,0x0
}
    2340:	4c000020 	jirl	$r0,$r1,0

0000000000002344 <execve>:
    register long a7 __asm__("a7") = n;
    2344:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2348:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    234c:	00408084 	slli.w	$r4,$r4,0x0
}
    2350:	4c000020 	jirl	$r0,$r1,0

0000000000002354 <times>:
    register long a7 __asm__("a7") = n;
    2354:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    2358:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    235c:	00408084 	slli.w	$r4,$r4,0x0
}
    2360:	4c000020 	jirl	$r0,$r1,0

0000000000002364 <get_time>:

int64 get_time()
{
    2364:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    2368:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    236c:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2370:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2374:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    2378:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    237c:	44003c80 	bnez	$r4,60(0x3c) # 23b8 <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2380:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2384:	039f3c8c 	ori	$r12,$r4,0x7cf
    2388:	28c02064 	ld.d	$r4,$r3,8(0x8)
    238c:	2a40006d 	ld.hu	$r13,$r3,0
    2390:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2394:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    2398:	00450c84 	srli.d	$r4,$r4,0x3
    239c:	001eb084 	mulh.du	$r4,$r4,$r12
    23a0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    23a4:	001db1ac 	mul.d	$r12,$r13,$r12
    23a8:	00451084 	srli.d	$r4,$r4,0x4
    23ac:	00109184 	add.d	$r4,$r12,$r4
}
    23b0:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b4:	4c000020 	jirl	$r0,$r1,0
        return -1;
    23b8:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    23bc:	53fff7ff 	b	-12(0xffffff4) # 23b0 <get_time+0x4c>

00000000000023c0 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    23c0:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c4:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    23c8:	00408084 	slli.w	$r4,$r4,0x0
}
    23cc:	4c000020 	jirl	$r0,$r1,0

00000000000023d0 <time>:
    register long a7 __asm__("a7") = n;
    23d0:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    23d4:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    23d8:	00408084 	slli.w	$r4,$r4,0x0
}
    23dc:	4c000020 	jirl	$r0,$r1,0

00000000000023e0 <sleep>:

int sleep(unsigned long long time)
{
    23e0:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    23e4:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    23e8:	00150064 	move	$r4,$r3
    23ec:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23f0:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23f4:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23f8:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    23fc:	44001080 	bnez	$r4,16(0x10) # 240c <sleep+0x2c>
    return 0;
    2400:	00150004 	move	$r4,$r0
}
    2404:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2408:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    240c:	24000064 	ldptr.w	$r4,$r3,0
}
    2410:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2414:	4c000020 	jirl	$r0,$r1,0

0000000000002418 <set_priority>:
    register long a7 __asm__("a7") = n;
    2418:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    241c:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2420:	00408084 	slli.w	$r4,$r4,0x0
}
    2424:	4c000020 	jirl	$r0,$r1,0

0000000000002428 <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    2428:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    242c:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2430:	4c000020 	jirl	$r0,$r1,0

0000000000002434 <munmap>:
    register long a7 __asm__("a7") = n;
    2434:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2438:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    243c:	00408084 	slli.w	$r4,$r4,0x0
}
    2440:	4c000020 	jirl	$r0,$r1,0

0000000000002444 <wait>:

int wait(int *code)
{
    2444:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    2448:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    244c:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2450:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2454:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2458:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    245c:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2460:	4c000020 	jirl	$r0,$r1,0

0000000000002464 <spawn>:
    register long a7 __asm__("a7") = n;
    2464:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    2468:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    246c:	00408084 	slli.w	$r4,$r4,0x0
}
    2470:	4c000020 	jirl	$r0,$r1,0

0000000000002474 <mailread>:
    register long a7 __asm__("a7") = n;
    2474:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2478:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    247c:	00408084 	slli.w	$r4,$r4,0x0
}
    2480:	4c000020 	jirl	$r0,$r1,0

0000000000002484 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2484:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2488:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    248c:	00408084 	slli.w	$r4,$r4,0x0
}
    2490:	4c000020 	jirl	$r0,$r1,0

0000000000002494 <fstat>:
    register long a7 __asm__("a7") = n;
    2494:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2498:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    249c:	00408084 	slli.w	$r4,$r4,0x0
}
    24a0:	4c000020 	jirl	$r0,$r1,0

00000000000024a4 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    24a4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    24a8:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24ac:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24b0:	00408084 	slli.w	$r4,$r4,0x0
}
    24b4:	4c000020 	jirl	$r0,$r1,0

00000000000024b8 <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    24b8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    24bc:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c0:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24c4:	00408084 	slli.w	$r4,$r4,0x0
}
    24c8:	4c000020 	jirl	$r0,$r1,0

00000000000024cc <link>:

int link(char *old_path, char *new_path)
{
    24cc:	0015008c 	move	$r12,$r4
    24d0:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    24d4:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    24d8:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24dc:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    24e0:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    24e4:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24e8:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24ec:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24f0:	4c000020 	jirl	$r0,$r1,0

00000000000024f4 <unlink>:

int unlink(char *path)
{
    24f4:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24f8:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    24fc:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2500:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2504:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    2508:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    250c:	4c000020 	jirl	$r0,$r1,0

0000000000002510 <uname>:
    register long a7 __asm__("a7") = n;
    2510:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2514:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    2518:	00408084 	slli.w	$r4,$r4,0x0
}
    251c:	4c000020 	jirl	$r0,$r1,0

0000000000002520 <brk>:
    register long a7 __asm__("a7") = n;
    2520:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2524:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    2528:	00408084 	slli.w	$r4,$r4,0x0
}
    252c:	4c000020 	jirl	$r0,$r1,0

0000000000002530 <getcwd>:
    register long a7 __asm__("a7") = n;
    2530:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2534:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    2538:	4c000020 	jirl	$r0,$r1,0

000000000000253c <chdir>:
    register long a7 __asm__("a7") = n;
    253c:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2540:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2544:	00408084 	slli.w	$r4,$r4,0x0
}
    2548:	4c000020 	jirl	$r0,$r1,0

000000000000254c <mkdir>:

int mkdir(const char *path, mode_t mode){
    254c:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2550:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2554:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    2558:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    255c:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2560:	002b0000 	syscall	0x0
    2564:	00408084 	slli.w	$r4,$r4,0x0
}
    2568:	4c000020 	jirl	$r0,$r1,0

000000000000256c <getdents>:
    register long a7 __asm__("a7") = n;
    256c:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2570:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2574:	00408084 	slli.w	$r4,$r4,0x0
}
    2578:	4c000020 	jirl	$r0,$r1,0

000000000000257c <pipe>:
    register long a7 __asm__("a7") = n;
    257c:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2580:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2584:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    2588:	00408084 	slli.w	$r4,$r4,0x0
}
    258c:	4c000020 	jirl	$r0,$r1,0

0000000000002590 <dup>:
    register long a7 __asm__("a7") = n;
    2590:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2594:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    2598:	00408084 	slli.w	$r4,$r4,0x0
}
    259c:	4c000020 	jirl	$r0,$r1,0

00000000000025a0 <dup2>:
    register long a7 __asm__("a7") = n;
    25a0:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    25a4:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    25a8:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    25ac:	00408084 	slli.w	$r4,$r4,0x0
}
    25b0:	4c000020 	jirl	$r0,$r1,0

00000000000025b4 <mount>:
    register long a7 __asm__("a7") = n;
    25b4:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    25b8:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    25bc:	00408084 	slli.w	$r4,$r4,0x0
}
    25c0:	4c000020 	jirl	$r0,$r1,0

00000000000025c4 <umount>:
    register long a7 __asm__("a7") = n;
    25c4:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    25c8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    25cc:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    25d0:	00408084 	slli.w	$r4,$r4,0x0
}
    25d4:	4c000020 	jirl	$r0,$r1,0

00000000000025d8 <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    25d8:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    25dc:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    25e0:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    25e4:	001500c4 	move	$r4,$r6
	move $a2, $a4
    25e8:	00150106 	move	$r6,$r8
	move $a3, $a5
    25ec:	00150127 	move	$r7,$r9
	move $a4, $a6
    25f0:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25f4:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25f8:	002b0000 	syscall	0x0

	beqz $a0, 1f
    25fc:	40000880 	beqz	$r4,8(0x8) # 2604 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2600:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2604:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    2608:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    260c:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2610:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2614:	002b0000 	syscall	0x0
