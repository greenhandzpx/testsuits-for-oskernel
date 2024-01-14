
/home/zpx/code/testsuits-for-oskernel/riscv-syscalls-testing/user/build/loongarch64/umount:     file format elf64-loongarch


Disassembly of section .text:

0000000000001000 <_start>:
.section .text.entry
.globl _start
_start:
    add.d $a0, $zero, $sp
    1000:	00108c04 	add.d	$r4,$r0,$r3
    bl __start_main
    1004:	54016000 	bl	352(0x160) # 1164 <__start_main>

0000000000001008 <test_umount>:

static char mntpoint[64] = "./mnt";
static char device[64] = "/dev/vda2";
static const char *fs_type = "vfat";

void test_umount() {
    1008:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
	TEST_START(__func__);
    100c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1010:	02d85084 	addi.d	$r4,$r4,1556(0x614)
void test_umount() {
    1014:	29c06061 	st.d	$r1,$r3,24(0x18)
    1018:	29c04077 	st.d	$r23,$r3,16(0x10)
	TEST_START(__func__);
    101c:	54045000 	bl	1104(0x450) # 146c <puts>
    1020:	1c000024 	pcaddu12i	$r4,1(0x1)
    1024:	02dce084 	addi.d	$r4,$r4,1848(0x738)
    1028:	54044400 	bl	1092(0x444) # 146c <puts>
    102c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1030:	02d83084 	addi.d	$r4,$r4,1548(0x60c)
    1034:	54043800 	bl	1080(0x438) # 146c <puts>

	printf("Mounting dev:%s to %s\n", device, mntpoint);
    1038:	1c000026 	pcaddu12i	$r6,1(0x1)
    103c:	02db80c6 	addi.d	$r6,$r6,1760(0x6e0)
    1040:	1c000025 	pcaddu12i	$r5,1(0x1)
    1044:	02da60a5 	addi.d	$r5,$r5,1688(0x698)
    1048:	1c000024 	pcaddu12i	$r4,1(0x1)
    104c:	02d80084 	addi.d	$r4,$r4,1536(0x600)
    1050:	54045400 	bl	1108(0x454) # 14a4 <printf>
	int ret = mount(device, mntpoint, fs_type, 0, NULL);
    1054:	1c000025 	pcaddu12i	$r5,1(0x1)
    1058:	02db10a5 	addi.d	$r5,$r5,1732(0x6c4)
    105c:	00150008 	move	$r8,$r0
    1060:	00150007 	move	$r7,$r0
    1064:	1c000026 	pcaddu12i	$r6,1(0x1)
    1068:	02d7f0c6 	addi.d	$r6,$r6,1532(0x5fc)
    106c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1070:	02d9b084 	addi.d	$r4,$r4,1644(0x66c)
    1074:	54154400 	bl	5444(0x1544) # 25b8 <mount>
    1078:	00150097 	move	$r23,$r4
	printf("mount return: %d\n", ret);
    107c:	00150085 	move	$r5,$r4
    1080:	1c000024 	pcaddu12i	$r4,1(0x1)
    1084:	02d7a084 	addi.d	$r4,$r4,1512(0x5e8)
    1088:	54041c00 	bl	1052(0x41c) # 14a4 <printf>

	if (ret == 0) {
    108c:	400036e0 	beqz	$r23,52(0x34) # 10c0 <test_umount+0xb8>
		ret = umount(mntpoint);
		assert(ret == 0);
		printf("umount success.\nreturn: %d\n", ret);
	}

	TEST_END(__func__);
    1090:	1c000024 	pcaddu12i	$r4,1(0x1)
    1094:	02d8c084 	addi.d	$r4,$r4,1584(0x630)
    1098:	5403d400 	bl	980(0x3d4) # 146c <puts>
    109c:	1c000024 	pcaddu12i	$r4,1(0x1)
    10a0:	02daf084 	addi.d	$r4,$r4,1724(0x6bc)
    10a4:	5403c800 	bl	968(0x3c8) # 146c <puts>
}
    10a8:	28c06061 	ld.d	$r1,$r3,24(0x18)
    10ac:	28c04077 	ld.d	$r23,$r3,16(0x10)
	TEST_END(__func__);
    10b0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10b4:	02d62084 	addi.d	$r4,$r4,1416(0x588)
}
    10b8:	02c08063 	addi.d	$r3,$r3,32(0x20)
	TEST_END(__func__);
    10bc:	5003b000 	b	944(0x3b0) # 146c <puts>
		ret = umount(mntpoint);
    10c0:	1c000024 	pcaddu12i	$r4,1(0x1)
    10c4:	02d96084 	addi.d	$r4,$r4,1624(0x658)
    10c8:	54150000 	bl	5376(0x1500) # 25c8 <umount>
    10cc:	00150085 	move	$r5,$r4
		assert(ret == 0);
    10d0:	44001480 	bnez	$r4,20(0x14) # 10e4 <test_umount+0xdc>
		printf("umount success.\nreturn: %d\n", ret);
    10d4:	1c000024 	pcaddu12i	$r4,1(0x1)
    10d8:	02d73084 	addi.d	$r4,$r4,1484(0x5cc)
    10dc:	5403c800 	bl	968(0x3c8) # 14a4 <printf>
    10e0:	53ffb3ff 	b	-80(0xfffffb0) # 1090 <test_umount+0x88>
    10e4:	29c02064 	st.d	$r4,$r3,8(0x8)
		assert(ret == 0);
    10e8:	1c000024 	pcaddu12i	$r4,1(0x1)
    10ec:	02d66084 	addi.d	$r4,$r4,1432(0x598)
    10f0:	5406c400 	bl	1732(0x6c4) # 17b4 <panic>
    10f4:	28c02065 	ld.d	$r5,$r3,8(0x8)
    10f8:	53ffdfff 	b	-36(0xfffffdc) # 10d4 <test_umount+0xcc>

00000000000010fc <main>:

int main(int argc,char *argv[]) {
    10fc:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    1100:	29c06061 	st.d	$r1,$r3,24(0x18)
    1104:	29c04077 	st.d	$r23,$r3,16(0x10)
    1108:	29c02078 	st.d	$r24,$r3,8(0x8)
	if(argc >= 2){
    110c:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1110:	60002184 	blt	$r12,$r4,32(0x20) # 1130 <main+0x34>

	if(argc >= 3){
		strcpy(mntpoint, argv[2]);
	}

	test_umount();
    1114:	57fef7ff 	bl	-268(0xffffef4) # 1008 <test_umount>
	return 0;
}
    1118:	28c06061 	ld.d	$r1,$r3,24(0x18)
    111c:	28c04077 	ld.d	$r23,$r3,16(0x10)
    1120:	28c02078 	ld.d	$r24,$r3,8(0x8)
    1124:	00150004 	move	$r4,$r0
    1128:	02c08063 	addi.d	$r3,$r3,32(0x20)
    112c:	4c000020 	jirl	$r0,$r1,0
		strcpy(device, argv[1]);
    1130:	001500b8 	move	$r24,$r5
    1134:	28c020a5 	ld.d	$r5,$r5,8(0x8)
    1138:	00150097 	move	$r23,$r4
    113c:	1c000024 	pcaddu12i	$r4,1(0x1)
    1140:	02d67084 	addi.d	$r4,$r4,1436(0x59c)
    1144:	540d2400 	bl	3364(0xd24) # 1e68 <strcpy>
	if(argc >= 3){
    1148:	0280080c 	addi.w	$r12,$r0,2(0x2)
    114c:	5bffcaec 	beq	$r23,$r12,-56(0x3ffc8) # 1114 <main+0x18>
		strcpy(mntpoint, argv[2]);
    1150:	28c04305 	ld.d	$r5,$r24,16(0x10)
    1154:	1c000024 	pcaddu12i	$r4,1(0x1)
    1158:	02d71084 	addi.d	$r4,$r4,1476(0x5c4)
    115c:	540d0c00 	bl	3340(0xd0c) # 1e68 <strcpy>
    1160:	53ffb7ff 	b	-76(0xfffffb4) # 1114 <main+0x18>

0000000000001164 <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long *p)
{
    1164:	00150085 	move	$r5,$r4
	int argc = p[0];
	char **argv = (void *)(p+1);

	exit(main(argc, argv));
    1168:	24000084 	ldptr.w	$r4,$r4,0
{
    116c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
	exit(main(argc, argv));
    1170:	02c020a5 	addi.d	$r5,$r5,8(0x8)
{
    1174:	29c02061 	st.d	$r1,$r3,8(0x8)
	exit(main(argc, argv));
    1178:	57ff87ff 	bl	-124(0xfffff84) # 10fc <main>
    117c:	54119c00 	bl	4508(0x119c) # 2318 <exit>
	return 0;
}
    1180:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1184:	00150004 	move	$r4,$r0
    1188:	02c04063 	addi.d	$r3,$r3,16(0x10)
    118c:	4c000020 	jirl	$r0,$r1,0

0000000000001190 <printint.constprop.0>:
    write(f, s, l);
}

static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign)
    1190:	02ff4063 	addi.d	$r3,$r3,-48(0xfd0)
    1194:	29c0a061 	st.d	$r1,$r3,40(0x28)
{
    char buf[16 + 1];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    1198:	6001cc80 	blt	$r4,$r0,460(0x1cc) # 1364 <printint.constprop.0+0x1d4>
        x = -xx;
    else
        x = xx;
    119c:	0015008e 	move	$r14,$r4

    buf[16] = 0;
    i = 15;
    do
    {
        buf[i--] = digits[x % base];
    11a0:	1c00002c 	pcaddu12i	$r12,1(0x1)
    11a4:	02d7218c 	addi.d	$r12,$r12,1480(0x5c8)
    11a8:	002195cf 	mod.wu	$r15,$r14,$r5
    11ac:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11b4 <printint.constprop.0+0x24>
    11b0:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    11b4:	002115cd 	div.wu	$r13,$r14,$r5
    11b8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11c0 <printint.constprop.0+0x30>
    11bc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11c0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    11c4:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    11c8:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    11cc:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    11d0:	680219c5 	bltu	$r14,$r5,536(0x218) # 13e8 <printint.constprop.0+0x258>
        buf[i--] = digits[x % base];
    11d4:	002195af 	mod.wu	$r15,$r13,$r5
    11d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11e0 <printint.constprop.0+0x50>
    11dc:	002a0007 	break	0x7
    11e0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    11e4:	002115ae 	div.wu	$r14,$r13,$r5
    11e8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 11f0 <printint.constprop.0+0x60>
    11ec:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    11f0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    11f4:	2900586f 	st.b	$r15,$r3,22(0x16)
    } while ((x /= base) != 0);
    11f8:	6801c1a5 	bltu	$r13,$r5,448(0x1c0) # 13b8 <printint.constprop.0+0x228>
        buf[i--] = digits[x % base];
    11fc:	002195cf 	mod.wu	$r15,$r14,$r5
    1200:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1208 <printint.constprop.0+0x78>
    1204:	002a0007 	break	0x7
    1208:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    120c:	002115cd 	div.wu	$r13,$r14,$r5
    1210:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1218 <printint.constprop.0+0x88>
    1214:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1218:	38203d8f 	ldx.bu	$r15,$r12,$r15
    121c:	2900546f 	st.b	$r15,$r3,21(0x15)
    } while ((x /= base) != 0);
    1220:	6801a5c5 	bltu	$r14,$r5,420(0x1a4) # 13c4 <printint.constprop.0+0x234>
        buf[i--] = digits[x % base];
    1224:	002195af 	mod.wu	$r15,$r13,$r5
    1228:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1230 <printint.constprop.0+0xa0>
    122c:	002a0007 	break	0x7
    1230:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1234:	002115ae 	div.wu	$r14,$r13,$r5
    1238:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1240 <printint.constprop.0+0xb0>
    123c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1240:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1244:	2900506f 	st.b	$r15,$r3,20(0x14)
    } while ((x /= base) != 0);
    1248:	680189a5 	bltu	$r13,$r5,392(0x188) # 13d0 <printint.constprop.0+0x240>
        buf[i--] = digits[x % base];
    124c:	002195cf 	mod.wu	$r15,$r14,$r5
    1250:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1258 <printint.constprop.0+0xc8>
    1254:	002a0007 	break	0x7
    1258:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    125c:	002115cd 	div.wu	$r13,$r14,$r5
    1260:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1268 <printint.constprop.0+0xd8>
    1264:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1268:	38203d8f 	ldx.bu	$r15,$r12,$r15
    126c:	29004c6f 	st.b	$r15,$r3,19(0x13)
    } while ((x /= base) != 0);
    1270:	68016dc5 	bltu	$r14,$r5,364(0x16c) # 13dc <printint.constprop.0+0x24c>
        buf[i--] = digits[x % base];
    1274:	002195af 	mod.wu	$r15,$r13,$r5
    1278:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1280 <printint.constprop.0+0xf0>
    127c:	002a0007 	break	0x7
    1280:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    1284:	002115ae 	div.wu	$r14,$r13,$r5
    1288:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1290 <printint.constprop.0+0x100>
    128c:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1290:	38203d8f 	ldx.bu	$r15,$r12,$r15
    1294:	2900486f 	st.b	$r15,$r3,18(0x12)
    } while ((x /= base) != 0);
    1298:	680115a5 	bltu	$r13,$r5,276(0x114) # 13ac <printint.constprop.0+0x21c>
        buf[i--] = digits[x % base];
    129c:	002195cf 	mod.wu	$r15,$r14,$r5
    12a0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12a8 <printint.constprop.0+0x118>
    12a4:	002a0007 	break	0x7
    12a8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12ac:	002115cd 	div.wu	$r13,$r14,$r5
    12b0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12b8 <printint.constprop.0+0x128>
    12b4:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12b8:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12bc:	2900446f 	st.b	$r15,$r3,17(0x11)
    } while ((x /= base) != 0);
    12c0:	680131c5 	bltu	$r14,$r5,304(0x130) # 13f0 <printint.constprop.0+0x260>
        buf[i--] = digits[x % base];
    12c4:	002195af 	mod.wu	$r15,$r13,$r5
    12c8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12d0 <printint.constprop.0+0x140>
    12cc:	002a0007 	break	0x7
    12d0:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12d4:	002115ae 	div.wu	$r14,$r13,$r5
    12d8:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12e0 <printint.constprop.0+0x150>
    12dc:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    12e0:	38203d8f 	ldx.bu	$r15,$r12,$r15
    12e4:	2900406f 	st.b	$r15,$r3,16(0x10)
    } while ((x /= base) != 0);
    12e8:	680115a5 	bltu	$r13,$r5,276(0x114) # 13fc <printint.constprop.0+0x26c>
        buf[i--] = digits[x % base];
    12ec:	002195cf 	mod.wu	$r15,$r14,$r5
    12f0:	5c0008a0 	bne	$r5,$r0,8(0x8) # 12f8 <printint.constprop.0+0x168>
    12f4:	002a0007 	break	0x7
    12f8:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    } while ((x /= base) != 0);
    12fc:	002115cd 	div.wu	$r13,$r14,$r5
    1300:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1308 <printint.constprop.0+0x178>
    1304:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1308:	38203d8f 	ldx.bu	$r15,$r12,$r15
    130c:	29003c6f 	st.b	$r15,$r3,15(0xf)
    } while ((x /= base) != 0);
    1310:	6800f9c5 	bltu	$r14,$r5,248(0xf8) # 1408 <printint.constprop.0+0x278>
        buf[i--] = digits[x % base];
    1314:	00df01ad 	bstrpick.d	$r13,$r13,0x1f,0x0
    1318:	3820358d 	ldx.bu	$r13,$r12,$r13
    131c:	02801805 	addi.w	$r5,$r0,6(0x6)
    1320:	0280140c 	addi.w	$r12,$r0,5(0x5)
    1324:	2900386d 	st.b	$r13,$r3,14(0xe)

    if (sign)
    1328:	64001880 	bge	$r4,$r0,24(0x18) # 1340 <printint.constprop.0+0x1b0>
        buf[i--] = '-';
    132c:	02c0806d 	addi.d	$r13,$r3,32(0x20)
    1330:	0010b1ad 	add.d	$r13,$r13,$r12
    1334:	0280b40e 	addi.w	$r14,$r0,45(0x2d)
    1338:	293fa1ae 	st.b	$r14,$r13,-24(0xfe8)
    133c:	00150185 	move	$r5,$r12
    write(f, s, l);
    1340:	02c0206c 	addi.d	$r12,$r3,8(0x8)
    1344:	02804006 	addi.w	$r6,$r0,16(0x10)
    1348:	001114c6 	sub.w	$r6,$r6,$r5
    134c:	02800404 	addi.w	$r4,$r0,1(0x1)
    1350:	00109585 	add.d	$r5,$r12,$r5
    1354:	540f5000 	bl	3920(0xf50) # 22a4 <write>
    i++;
    if (i < 0)
        puts("printint error");
    out(stdout, buf + i, 16 - i);
}
    1358:	28c0a061 	ld.d	$r1,$r3,40(0x28)
    135c:	02c0c063 	addi.d	$r3,$r3,48(0x30)
    1360:	4c000020 	jirl	$r0,$r1,0
        x = -xx;
    1364:	0011100e 	sub.w	$r14,$r0,$r4
        buf[i--] = digits[x % base];
    1368:	1c00002c 	pcaddu12i	$r12,1(0x1)
    136c:	02d0018c 	addi.d	$r12,$r12,1024(0x400)
    1370:	002195cf 	mod.wu	$r15,$r14,$r5
    1374:	5c0008a0 	bne	$r5,$r0,8(0x8) # 137c <printint.constprop.0+0x1ec>
    1378:	002a0007 	break	0x7
    } while ((x /= base) != 0);
    137c:	002115cd 	div.wu	$r13,$r14,$r5
    1380:	5c0008a0 	bne	$r5,$r0,8(0x8) # 1388 <printint.constprop.0+0x1f8>
    1384:	002a0007 	break	0x7
        buf[i--] = digits[x % base];
    1388:	00df01ef 	bstrpick.d	$r15,$r15,0x1f,0x0
    138c:	38203d8f 	ldx.bu	$r15,$r12,$r15
    buf[16] = 0;
    1390:	29006060 	st.b	$r0,$r3,24(0x18)
        buf[i--] = digits[x % base];
    1394:	29005c6f 	st.b	$r15,$r3,23(0x17)
    } while ((x /= base) != 0);
    1398:	6ffe3dc5 	bgeu	$r14,$r5,-452(0x3fe3c) # 11d4 <printint.constprop.0+0x44>
        buf[i--] = '-';
    139c:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    13a0:	2900586c 	st.b	$r12,$r3,22(0x16)
        buf[i--] = digits[x % base];
    13a4:	02803805 	addi.w	$r5,$r0,14(0xe)
    13a8:	53ff9bff 	b	-104(0xfffff98) # 1340 <printint.constprop.0+0x1b0>
    13ac:	0280240c 	addi.w	$r12,$r0,9(0x9)
    13b0:	02802805 	addi.w	$r5,$r0,10(0xa)
    13b4:	53ff77ff 	b	-140(0xfffff74) # 1328 <printint.constprop.0+0x198>
    13b8:	0280340c 	addi.w	$r12,$r0,13(0xd)
    13bc:	02803805 	addi.w	$r5,$r0,14(0xe)
    13c0:	53ff6bff 	b	-152(0xfffff68) # 1328 <printint.constprop.0+0x198>
    13c4:	0280300c 	addi.w	$r12,$r0,12(0xc)
    13c8:	02803405 	addi.w	$r5,$r0,13(0xd)
    13cc:	53ff5fff 	b	-164(0xfffff5c) # 1328 <printint.constprop.0+0x198>
    13d0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
    13d4:	02803005 	addi.w	$r5,$r0,12(0xc)
    13d8:	53ff53ff 	b	-176(0xfffff50) # 1328 <printint.constprop.0+0x198>
    13dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
    13e0:	02802c05 	addi.w	$r5,$r0,11(0xb)
    13e4:	53ff47ff 	b	-188(0xfffff44) # 1328 <printint.constprop.0+0x198>
    i = 15;
    13e8:	02803c05 	addi.w	$r5,$r0,15(0xf)
    13ec:	53ff57ff 	b	-172(0xfffff54) # 1340 <printint.constprop.0+0x1b0>
        buf[i--] = digits[x % base];
    13f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
    13f4:	02802405 	addi.w	$r5,$r0,9(0x9)
    13f8:	53ff33ff 	b	-208(0xfffff30) # 1328 <printint.constprop.0+0x198>
    13fc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1400:	02802005 	addi.w	$r5,$r0,8(0x8)
    1404:	53ff27ff 	b	-220(0xfffff24) # 1328 <printint.constprop.0+0x198>
    1408:	0280180c 	addi.w	$r12,$r0,6(0x6)
    140c:	02801c05 	addi.w	$r5,$r0,7(0x7)
    1410:	53ff1bff 	b	-232(0xfffff18) # 1328 <printint.constprop.0+0x198>

0000000000001414 <getchar>:
{
    1414:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    read(stdin, &byte, 1);
    1418:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    141c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1420:	00150004 	move	$r4,$r0
{
    1424:	29c06061 	st.d	$r1,$r3,24(0x18)
    char byte = 0;
    1428:	29003c60 	st.b	$r0,$r3,15(0xf)
    read(stdin, &byte, 1);
    142c:	540e6c00 	bl	3692(0xe6c) # 2298 <read>
}
    1430:	28c06061 	ld.d	$r1,$r3,24(0x18)
    1434:	28003c64 	ld.b	$r4,$r3,15(0xf)
    1438:	02c08063 	addi.d	$r3,$r3,32(0x20)
    143c:	4c000020 	jirl	$r0,$r1,0

0000000000001440 <putchar>:
{
    1440:	02ff8063 	addi.d	$r3,$r3,-32(0xfe0)
    char byte = c;
    1444:	29003c64 	st.b	$r4,$r3,15(0xf)
    return write(stdout, &byte, 1);
    1448:	02c03c65 	addi.d	$r5,$r3,15(0xf)
    144c:	02800406 	addi.w	$r6,$r0,1(0x1)
    1450:	02800404 	addi.w	$r4,$r0,1(0x1)
{
    1454:	29c06061 	st.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1458:	540e4c00 	bl	3660(0xe4c) # 22a4 <write>
}
    145c:	28c06061 	ld.d	$r1,$r3,24(0x18)
    return write(stdout, &byte, 1);
    1460:	00408084 	slli.w	$r4,$r4,0x0
}
    1464:	02c08063 	addi.d	$r3,$r3,32(0x20)
    1468:	4c000020 	jirl	$r0,$r1,0

000000000000146c <puts>:
{
    146c:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    1470:	29c02061 	st.d	$r1,$r3,8(0x8)
    1474:	27000077 	stptr.d	$r23,$r3,0
    1478:	00150097 	move	$r23,$r4
    r = -(write(stdout, s, strlen(s)) < 0);
    147c:	5406d400 	bl	1748(0x6d4) # 1b50 <strlen>
    1480:	00150086 	move	$r6,$r4
    1484:	001502e5 	move	$r5,$r23
    1488:	02800404 	addi.w	$r4,$r0,1(0x1)
    148c:	540e1800 	bl	3608(0xe18) # 22a4 <write>
}
    1490:	28c02061 	ld.d	$r1,$r3,8(0x8)
    1494:	26000077 	ldptr.d	$r23,$r3,0
    r = -(write(stdout, s, strlen(s)) < 0);
    1498:	0049fc84 	srai.d	$r4,$r4,0x3f
}
    149c:	02c04063 	addi.d	$r3,$r3,16(0x10)
    14a0:	4c000020 	jirl	$r0,$r1,0

00000000000014a4 <printf>:
    out(stdout, buf, i);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(const char *fmt, ...)
{
    14a4:	02fd4063 	addi.d	$r3,$r3,-176(0xf50)
    14a8:	29c1207a 	st.d	$r26,$r3,72(0x48)
    va_list ap;
    int cnt = 0, l = 0;
    char *a, *z, *s = (char *)fmt, str;
    int f = stdout;

    va_start(ap, fmt);
    14ac:	02c1e06c 	addi.d	$r12,$r3,120(0x78)
    buf[i++] = '0';
    14b0:	140000fa 	lu12i.w	$r26,7(0x7)
{
    14b4:	29c14079 	st.d	$r25,$r3,80(0x50)
    14b8:	29c1007b 	st.d	$r27,$r3,64(0x40)
    14bc:	29c0e07c 	st.d	$r28,$r3,56(0x38)
    14c0:	29c1a061 	st.d	$r1,$r3,104(0x68)
    14c4:	29c18077 	st.d	$r23,$r3,96(0x60)
    14c8:	29c16078 	st.d	$r24,$r3,88(0x58)
    14cc:	0015009b 	move	$r27,$r4
    14d0:	29c1e065 	st.d	$r5,$r3,120(0x78)
    14d4:	29c20066 	st.d	$r6,$r3,128(0x80)
    14d8:	29c22067 	st.d	$r7,$r3,136(0x88)
    14dc:	29c24068 	st.d	$r8,$r3,144(0x90)
    14e0:	29c26069 	st.d	$r9,$r3,152(0x98)
    14e4:	29c2806a 	st.d	$r10,$r3,160(0xa0)
    14e8:	29c2a06b 	st.d	$r11,$r3,168(0xa8)
    va_start(ap, fmt);
    14ec:	2700006c 	stptr.d	$r12,$r3,0
    for (;;)
    {
        if (!*s)
            break;
        for (a = s; *s && *s != '%'; s++)
    14f0:	02809419 	addi.w	$r25,$r0,37(0x25)
    buf[i++] = '0';
    14f4:	03a0c35a 	ori	$r26,$r26,0x830
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    14f8:	1c00003c 	pcaddu12i	$r28,1(0x1)
    14fc:	02c9c39c 	addi.d	$r28,$r28,624(0x270)
        if (!*s)
    1500:	2800036c 	ld.b	$r12,$r27,0
    1504:	40008980 	beqz	$r12,136(0x88) # 158c <printf+0xe8>
        for (a = s; *s && *s != '%'; s++)
    1508:	58027d99 	beq	$r12,$r25,636(0x27c) # 1784 <printf+0x2e0>
    150c:	00150366 	move	$r6,$r27
    1510:	50000800 	b	8(0x8) # 1518 <printf+0x74>
    1514:	58009d99 	beq	$r12,$r25,156(0x9c) # 15b0 <printf+0x10c>
    1518:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    151c:	280000cc 	ld.b	$r12,$r6,0
    1520:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1514 <printf+0x70>
    1524:	001500d8 	move	$r24,$r6
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        l = z - a;
    1528:	0011ecd7 	sub.d	$r23,$r6,$r27
    152c:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    1530:	001502e6 	move	$r6,$r23
    1534:	00150365 	move	$r5,$r27
    1538:	02800404 	addi.w	$r4,$r0,1(0x1)
    153c:	540d6800 	bl	3432(0xd68) # 22a4 <write>
        out(f, a, l);
        if (l)
    1540:	4400b6e0 	bnez	$r23,180(0xb4) # 15f4 <printf+0x150>
            continue;
        if (s[1] == 0)
    1544:	2800070c 	ld.b	$r12,$r24,1(0x1)
    1548:	40004580 	beqz	$r12,68(0x44) # 158c <printf+0xe8>
            break;
        switch (s[1])
    154c:	0281c00d 	addi.w	$r13,$r0,112(0x70)
    1550:	5800d58d 	beq	$r12,$r13,212(0xd4) # 1624 <printf+0x180>
    1554:	6400a9ac 	bge	$r13,$r12,168(0xa8) # 15fc <printf+0x158>
    1558:	0281cc0d 	addi.w	$r13,$r0,115(0x73)
    155c:	5801f18d 	beq	$r12,$r13,496(0x1f0) # 174c <printf+0x2a8>
    1560:	0281e00d 	addi.w	$r13,$r0,120(0x78)
    1564:	5c01b18d 	bne	$r12,$r13,432(0x1b0) # 1714 <printf+0x270>
        {
        case 'd':
            printint(va_arg(ap, int), 10, 1);
            break;
        case 'x':
            printint(va_arg(ap, int), 16, 1);
    1568:	2600006c 	ldptr.d	$r12,$r3,0
    156c:	02804005 	addi.w	$r5,$r0,16(0x10)
            // Print unknown % sequence to draw attention.
            putchar('%');
            putchar(s[1]);
            break;
        }
        s += 2;
    1570:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 16, 1);
    1574:	24000184 	ldptr.w	$r4,$r12,0
    1578:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    157c:	2700006c 	stptr.d	$r12,$r3,0
    1580:	57fc13ff 	bl	-1008(0xffffc10) # 1190 <printint.constprop.0>
        if (!*s)
    1584:	2800036c 	ld.b	$r12,$r27,0
    1588:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1508 <printf+0x64>
    }
    va_end(ap);
}
    158c:	28c1a061 	ld.d	$r1,$r3,104(0x68)
    1590:	28c18077 	ld.d	$r23,$r3,96(0x60)
    1594:	28c16078 	ld.d	$r24,$r3,88(0x58)
    1598:	28c14079 	ld.d	$r25,$r3,80(0x50)
    159c:	28c1207a 	ld.d	$r26,$r3,72(0x48)
    15a0:	28c1007b 	ld.d	$r27,$r3,64(0x40)
    15a4:	28c0e07c 	ld.d	$r28,$r3,56(0x38)
    15a8:	02c2c063 	addi.d	$r3,$r3,176(0xb0)
    15ac:	4c000020 	jirl	$r0,$r1,0
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    15b0:	280004cc 	ld.b	$r12,$r6,1(0x1)
    15b4:	5fff7199 	bne	$r12,$r25,-144(0x3ff70) # 1524 <printf+0x80>
    15b8:	001500d8 	move	$r24,$r6
    15bc:	50000c00 	b	12(0xc) # 15c8 <printf+0x124>
    15c0:	2800070c 	ld.b	$r12,$r24,1(0x1)
    15c4:	5fff6599 	bne	$r12,$r25,-156(0x3ff64) # 1528 <printf+0x84>
    15c8:	02c00b18 	addi.d	$r24,$r24,2(0x2)
    15cc:	2800030c 	ld.b	$r12,$r24,0
    15d0:	02c004c6 	addi.d	$r6,$r6,1(0x1)
    15d4:	5bffed99 	beq	$r12,$r25,-20(0x3ffec) # 15c0 <printf+0x11c>
        l = z - a;
    15d8:	0011ecd7 	sub.d	$r23,$r6,$r27
    15dc:	004082f7 	slli.w	$r23,$r23,0x0
    write(f, s, l);
    15e0:	001502e6 	move	$r6,$r23
    15e4:	00150365 	move	$r5,$r27
    15e8:	02800404 	addi.w	$r4,$r0,1(0x1)
    15ec:	540cb800 	bl	3256(0xcb8) # 22a4 <write>
        if (l)
    15f0:	43ff56ff 	beqz	$r23,-172(0x7fff54) # 1544 <printf+0xa0>
    15f4:	0015031b 	move	$r27,$r24
    15f8:	53ff0bff 	b	-248(0xfffff08) # 1500 <printf+0x5c>
        switch (s[1])
    15fc:	0281900d 	addi.w	$r13,$r0,100(0x64)
    1600:	5c01158d 	bne	$r12,$r13,276(0x114) # 1714 <printf+0x270>
            printint(va_arg(ap, int), 10, 1);
    1604:	2600006c 	ldptr.d	$r12,$r3,0
    1608:	02802805 	addi.w	$r5,$r0,10(0xa)
        s += 2;
    160c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
            printint(va_arg(ap, int), 10, 1);
    1610:	24000184 	ldptr.w	$r4,$r12,0
    1614:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1618:	2700006c 	stptr.d	$r12,$r3,0
    161c:	57fb77ff 	bl	-1164(0xffffb74) # 1190 <printint.constprop.0>
        s += 2;
    1620:	53ff67ff 	b	-156(0xfffff64) # 1584 <printf+0xe0>
            printptr(va_arg(ap, uint64));
    1624:	2600006d 	ldptr.d	$r13,$r3,0
    buf[i++] = '0';
    1628:	2940207a 	st.h	$r26,$r3,8(0x8)
    write(f, s, l);
    162c:	02804806 	addi.w	$r6,$r0,18(0x12)
            printptr(va_arg(ap, uint64));
    1630:	260001ac 	ldptr.d	$r12,$r13,0
    1634:	02c021ad 	addi.d	$r13,$r13,8(0x8)
    1638:	2700006d 	stptr.d	$r13,$r3,0
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    163c:	0045f18a 	srli.d	$r10,$r12,0x3c
    1640:	00fbe189 	bstrpick.d	$r9,$r12,0x3b,0x38
    1644:	00f7d188 	bstrpick.d	$r8,$r12,0x37,0x34
    1648:	00f3c187 	bstrpick.d	$r7,$r12,0x33,0x30
    164c:	00efb185 	bstrpick.d	$r5,$r12,0x2f,0x2c
    1650:	00eba184 	bstrpick.d	$r4,$r12,0x2b,0x28
    1654:	00e79194 	bstrpick.d	$r20,$r12,0x27,0x24
    1658:	00e38193 	bstrpick.d	$r19,$r12,0x23,0x20
    165c:	00df7192 	bstrpick.d	$r18,$r12,0x1f,0x1c
    1660:	00db6191 	bstrpick.d	$r17,$r12,0x1b,0x18
    1664:	00d75190 	bstrpick.d	$r16,$r12,0x17,0x14
    1668:	00d3418f 	bstrpick.d	$r15,$r12,0x13,0x10
    166c:	00cf318e 	bstrpick.d	$r14,$r12,0xf,0xc
    1670:	00cb218d 	bstrpick.d	$r13,$r12,0xb,0x8
    1674:	38202b8b 	ldx.bu	$r11,$r28,$r10
    1678:	3820278a 	ldx.bu	$r10,$r28,$r9
    167c:	38202389 	ldx.bu	$r9,$r28,$r8
    1680:	38201f88 	ldx.bu	$r8,$r28,$r7
    1684:	38201787 	ldx.bu	$r7,$r28,$r5
    1688:	38201385 	ldx.bu	$r5,$r28,$r4
    168c:	38205384 	ldx.bu	$r4,$r28,$r20
    1690:	38204f94 	ldx.bu	$r20,$r28,$r19
    1694:	38204b93 	ldx.bu	$r19,$r28,$r18
    1698:	38204792 	ldx.bu	$r18,$r28,$r17
    169c:	38204391 	ldx.bu	$r17,$r28,$r16
    16a0:	38203f90 	ldx.bu	$r16,$r28,$r15
    16a4:	38203b8f 	ldx.bu	$r15,$r28,$r14
    16a8:	3820378e 	ldx.bu	$r14,$r28,$r13
    16ac:	00c7118d 	bstrpick.d	$r13,$r12,0x7,0x4
    16b0:	03403d8c 	andi	$r12,$r12,0xf
    16b4:	2900286b 	st.b	$r11,$r3,10(0xa)
    16b8:	29002c6a 	st.b	$r10,$r3,11(0xb)
    16bc:	29003069 	st.b	$r9,$r3,12(0xc)
    16c0:	29003468 	st.b	$r8,$r3,13(0xd)
    16c4:	29003867 	st.b	$r7,$r3,14(0xe)
    16c8:	29003c65 	st.b	$r5,$r3,15(0xf)
    16cc:	29004064 	st.b	$r4,$r3,16(0x10)
    16d0:	29004474 	st.b	$r20,$r3,17(0x11)
    16d4:	29004873 	st.b	$r19,$r3,18(0x12)
    16d8:	29004c72 	st.b	$r18,$r3,19(0x13)
    16dc:	29005071 	st.b	$r17,$r3,20(0x14)
    16e0:	29005470 	st.b	$r16,$r3,21(0x15)
    16e4:	2900586f 	st.b	$r15,$r3,22(0x16)
    16e8:	29005c6e 	st.b	$r14,$r3,23(0x17)
    16ec:	3820378d 	ldx.bu	$r13,$r28,$r13
    16f0:	3820338c 	ldx.bu	$r12,$r28,$r12
    write(f, s, l);
    16f4:	02c02065 	addi.d	$r5,$r3,8(0x8)
    16f8:	02800404 	addi.w	$r4,$r0,1(0x1)
        buf[i++] = digits[x >> (sizeof(uint64) * 8 - 4)];
    16fc:	2900606d 	st.b	$r13,$r3,24(0x18)
    1700:	2900646c 	st.b	$r12,$r3,25(0x19)
    buf[i] = 0;
    1704:	29006860 	st.b	$r0,$r3,26(0x1a)
        s += 2;
    1708:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    write(f, s, l);
    170c:	540b9800 	bl	2968(0xb98) # 22a4 <write>
        s += 2;
    1710:	53fe77ff 	b	-396(0xffffe74) # 1584 <printf+0xe0>
    char byte = c;
    1714:	0280940c 	addi.w	$r12,$r0,37(0x25)
    return write(stdout, &byte, 1);
    1718:	02800406 	addi.w	$r6,$r0,1(0x1)
    171c:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1720:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    1724:	2900206c 	st.b	$r12,$r3,8(0x8)
    return write(stdout, &byte, 1);
    1728:	540b7c00 	bl	2940(0xb7c) # 22a4 <write>
    char byte = c;
    172c:	2a00070c 	ld.bu	$r12,$r24,1(0x1)
    return write(stdout, &byte, 1);
    1730:	02800406 	addi.w	$r6,$r0,1(0x1)
    1734:	02c02065 	addi.d	$r5,$r3,8(0x8)
    1738:	02800404 	addi.w	$r4,$r0,1(0x1)
    char byte = c;
    173c:	2900206c 	st.b	$r12,$r3,8(0x8)
        s += 2;
    1740:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    return write(stdout, &byte, 1);
    1744:	540b6000 	bl	2912(0xb60) # 22a4 <write>
        s += 2;
    1748:	53fe3fff 	b	-452(0xffffe3c) # 1584 <printf+0xe0>
            if ((a = va_arg(ap, char *)) == 0)
    174c:	2600006c 	ldptr.d	$r12,$r3,0
    1750:	26000197 	ldptr.d	$r23,$r12,0
    1754:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1758:	2700006c 	stptr.d	$r12,$r3,0
    175c:	40004ee0 	beqz	$r23,76(0x4c) # 17a8 <printf+0x304>
            l = strnlen(a, 200);
    1760:	02832005 	addi.w	$r5,$r0,200(0xc8)
    1764:	001502e4 	move	$r4,$r23
    1768:	5405d000 	bl	1488(0x5d0) # 1d38 <strnlen>
    176c:	00408086 	slli.w	$r6,$r4,0x0
    write(f, s, l);
    1770:	001502e5 	move	$r5,$r23
    1774:	02800404 	addi.w	$r4,$r0,1(0x1)
    1778:	540b2c00 	bl	2860(0xb2c) # 22a4 <write>
        s += 2;
    177c:	02c00b1b 	addi.d	$r27,$r24,2(0x2)
    1780:	53fe07ff 	b	-508(0xffffe04) # 1584 <printf+0xe0>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
    1784:	2800076c 	ld.b	$r12,$r27,1(0x1)
    1788:	00150366 	move	$r6,$r27
    178c:	5bfe2d99 	beq	$r12,$r25,-468(0x3fe2c) # 15b8 <printf+0x114>
    write(f, s, l);
    1790:	00150006 	move	$r6,$r0
    1794:	00150365 	move	$r5,$r27
    1798:	02800404 	addi.w	$r4,$r0,1(0x1)
    179c:	540b0800 	bl	2824(0xb08) # 22a4 <write>
    17a0:	00150378 	move	$r24,$r27
    17a4:	53fda3ff 	b	-608(0xffffda0) # 1544 <printf+0xa0>
                a = "(null)";
    17a8:	1c000037 	pcaddu12i	$r23,1(0x1)
    17ac:	02fca2f7 	addi.d	$r23,$r23,-216(0xf28)
    17b0:	53ffb3ff 	b	-80(0xfffffb0) # 1760 <printf+0x2bc>

00000000000017b4 <panic>:
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

void panic(char *m)
{
    17b4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    17b8:	29c02061 	st.d	$r1,$r3,8(0x8)
    puts(m);
    17bc:	57fcb3ff 	bl	-848(0xffffcb0) # 146c <puts>
    exit(-100);
}
    17c0:	28c02061 	ld.d	$r1,$r3,8(0x8)
    exit(-100);
    17c4:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
}
    17c8:	02c04063 	addi.d	$r3,$r3,16(0x10)
    exit(-100);
    17cc:	500b4c00 	b	2892(0xb4c) # 2318 <exit>

00000000000017d0 <isspace>:
#define HIGHS (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x)&HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
    17d0:	0280800c 	addi.w	$r12,$r0,32(0x20)
    17d4:	5800108c 	beq	$r4,$r12,16(0x10) # 17e4 <isspace+0x14>
    17d8:	02bfdc84 	addi.w	$r4,$r4,-9(0xff7)
    17dc:	02401484 	sltui	$r4,$r4,5(0x5)
    17e0:	4c000020 	jirl	$r0,$r1,0
    17e4:	02800404 	addi.w	$r4,$r0,1(0x1)
}
    17e8:	4c000020 	jirl	$r0,$r1,0

00000000000017ec <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
    17ec:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
}
    17f0:	02402884 	sltui	$r4,$r4,10(0xa)
    17f4:	4c000020 	jirl	$r0,$r1,0

00000000000017f8 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
    17f8:	0280800e 	addi.w	$r14,$r0,32(0x20)
    17fc:	0280100f 	addi.w	$r15,$r0,4(0x4)
    1800:	2800008d 	ld.b	$r13,$r4,0
    1804:	02bfddac 	addi.w	$r12,$r13,-9(0xff7)
    1808:	580061ae 	beq	$r13,$r14,96(0x60) # 1868 <atoi+0x70>
    180c:	6c005dec 	bgeu	$r15,$r12,92(0x5c) # 1868 <atoi+0x70>
int atoi(const char *s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
        s++;
    switch (*s)
    1810:	0280ac0c 	addi.w	$r12,$r0,43(0x2b)
    1814:	580065ac 	beq	$r13,$r12,100(0x64) # 1878 <atoi+0x80>
    1818:	0280b40c 	addi.w	$r12,$r0,45(0x2d)
    181c:	58007dac 	beq	$r13,$r12,124(0x7c) # 1898 <atoi+0xa0>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
    1820:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    1824:	0280240e 	addi.w	$r14,$r0,9(0x9)
    1828:	0015008c 	move	$r12,$r4
    int n = 0, neg = 0;
    182c:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    1830:	680061cf 	bltu	$r14,$r15,96(0x60) # 1890 <atoi+0x98>
    int n = 0, neg = 0;
    1834:	00150004 	move	$r4,$r0
        n = 10 * n - (*s++ - '0');
    1838:	02802813 	addi.w	$r19,$r0,10(0xa)
    while (isdigit(*s))
    183c:	02802412 	addi.w	$r18,$r0,9(0x9)
        n = 10 * n - (*s++ - '0');
    1840:	001c126f 	mul.w	$r15,$r19,$r4
    1844:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    while (isdigit(*s))
    1848:	2800018e 	ld.b	$r14,$r12,0
        n = 10 * n - (*s++ - '0');
    184c:	02bf41b0 	addi.w	$r16,$r13,-48(0xfd0)
    while (isdigit(*s))
    1850:	02bf41d1 	addi.w	$r17,$r14,-48(0xfd0)
    1854:	001501cd 	move	$r13,$r14
        n = 10 * n - (*s++ - '0');
    1858:	001141e4 	sub.w	$r4,$r15,$r16
    while (isdigit(*s))
    185c:	6fffe651 	bgeu	$r18,$r17,-28(0x3ffe4) # 1840 <atoi+0x48>
    return neg ? n : -n;
    1860:	40001280 	beqz	$r20,16(0x10) # 1870 <atoi+0x78>
}
    1864:	4c000020 	jirl	$r0,$r1,0
        s++;
    1868:	02c00484 	addi.d	$r4,$r4,1(0x1)
    186c:	53ff97ff 	b	-108(0xfffff94) # 1800 <atoi+0x8>
    1870:	00113e04 	sub.w	$r4,$r16,$r15
    1874:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1878:	2800048d 	ld.b	$r13,$r4,1(0x1)
    187c:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    1880:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    1884:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    int n = 0, neg = 0;
    1888:	00150014 	move	$r20,$r0
    while (isdigit(*s))
    188c:	6fffa9cf 	bgeu	$r14,$r15,-88(0x3ffa8) # 1834 <atoi+0x3c>
    1890:	00150004 	move	$r4,$r0
}
    1894:	4c000020 	jirl	$r0,$r1,0
    while (isdigit(*s))
    1898:	2800048d 	ld.b	$r13,$r4,1(0x1)
    189c:	0280240e 	addi.w	$r14,$r0,9(0x9)
        s++;
    18a0:	02c0048c 	addi.d	$r12,$r4,1(0x1)
    while (isdigit(*s))
    18a4:	02bf41af 	addi.w	$r15,$r13,-48(0xfd0)
    18a8:	6bffe9cf 	bltu	$r14,$r15,-24(0x3ffe8) # 1890 <atoi+0x98>
        neg = 1;
    18ac:	02800414 	addi.w	$r20,$r0,1(0x1)
    18b0:	53ff87ff 	b	-124(0xfffff84) # 1834 <atoi+0x3c>

00000000000018b4 <memset>:

void *memset(void *dest, int c, size_t n)
{
    char *p = dest;
    for (int i = 0; i < n; ++i, *(p++) = c)
    18b4:	400198c0 	beqz	$r6,408(0x198) # 1a4c <memset+0x198>
    18b8:	0011900c 	sub.d	$r12,$r0,$r4
    18bc:	03401d8c 	andi	$r12,$r12,0x7
    18c0:	02c01d8d 	addi.d	$r13,$r12,7(0x7)
    18c4:	02402dae 	sltui	$r14,$r13,11(0xb)
    18c8:	02802c0f 	addi.w	$r15,$r0,11(0xb)
    18cc:	0013b9ad 	masknez	$r13,$r13,$r14
    18d0:	001339ee 	maskeqz	$r14,$r15,$r14
    18d4:	001539ad 	or	$r13,$r13,$r14
    18d8:	02fffccf 	addi.d	$r15,$r6,-1(0xfff)
    18dc:	00005ca5 	ext.w.b	$r5,$r5
    18e0:	680191ed 	bltu	$r15,$r13,400(0x190) # 1a70 <memset+0x1bc>
    18e4:	40018180 	beqz	$r12,384(0x180) # 1a64 <memset+0x1b0>
    18e8:	29000085 	st.b	$r5,$r4,0
    18ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
    18f0:	02c0048e 	addi.d	$r14,$r4,1(0x1)
    18f4:	5801698d 	beq	$r12,$r13,360(0x168) # 1a5c <memset+0x1a8>
    18f8:	29000485 	st.b	$r5,$r4,1(0x1)
    18fc:	0280080d 	addi.w	$r13,$r0,2(0x2)
    1900:	02c0088e 	addi.d	$r14,$r4,2(0x2)
    1904:	5801798d 	beq	$r12,$r13,376(0x178) # 1a7c <memset+0x1c8>
    1908:	29000885 	st.b	$r5,$r4,2(0x2)
    190c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
    1910:	02c00c8e 	addi.d	$r14,$r4,3(0x3)
    1914:	58013d8d 	beq	$r12,$r13,316(0x13c) # 1a50 <memset+0x19c>
    1918:	29000c85 	st.b	$r5,$r4,3(0x3)
    191c:	0280100d 	addi.w	$r13,$r0,4(0x4)
    1920:	02c0108e 	addi.d	$r14,$r4,4(0x4)
    1924:	5801618d 	beq	$r12,$r13,352(0x160) # 1a84 <memset+0x1d0>
    1928:	29001085 	st.b	$r5,$r4,4(0x4)
    192c:	0280140d 	addi.w	$r13,$r0,5(0x5)
    1930:	02c0148e 	addi.d	$r14,$r4,5(0x5)
    1934:	5801598d 	beq	$r12,$r13,344(0x158) # 1a8c <memset+0x1d8>
    1938:	29001485 	st.b	$r5,$r4,5(0x5)
    193c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
    1940:	02c0188e 	addi.d	$r14,$r4,6(0x6)
    1944:	5c01518d 	bne	$r12,$r13,336(0x150) # 1a94 <memset+0x1e0>
    1948:	02c01c8e 	addi.d	$r14,$r4,7(0x7)
    194c:	29001885 	st.b	$r5,$r4,6(0x6)
    1950:	02801c11 	addi.w	$r17,$r0,7(0x7)
    1954:	0015000d 	move	$r13,$r0
    1958:	008700ad 	bstrins.d	$r13,$r5,0x7,0x0
    195c:	008f20ad 	bstrins.d	$r13,$r5,0xf,0x8
    1960:	009740ad 	bstrins.d	$r13,$r5,0x17,0x10
    1964:	009f60ad 	bstrins.d	$r13,$r5,0x1f,0x18
    1968:	00a780ad 	bstrins.d	$r13,$r5,0x27,0x20
    196c:	0011b0d0 	sub.d	$r16,$r6,$r12
    1970:	00afa0ad 	bstrins.d	$r13,$r5,0x2f,0x28
    1974:	00b7c0ad 	bstrins.d	$r13,$r5,0x37,0x30
    1978:	0010b08c 	add.d	$r12,$r4,$r12
    197c:	00450e0f 	srli.d	$r15,$r16,0x3
    1980:	00bfe0ad 	bstrins.d	$r13,$r5,0x3f,0x38
    1984:	002d31ef 	alsl.d	$r15,$r15,$r12,0x3
    1988:	2700018d 	stptr.d	$r13,$r12,0
    198c:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1990:	5ffff98f 	bne	$r12,$r15,-8(0x3fff8) # 1988 <memset+0xd4>
    1994:	02bfe00f 	addi.w	$r15,$r0,-8(0xff8)
    1998:	0014be0f 	and	$r15,$r16,$r15
    199c:	004081ed 	slli.w	$r13,$r15,0x0
    19a0:	0010bdcc 	add.d	$r12,$r14,$r15
    19a4:	001045ad 	add.w	$r13,$r13,$r17
    19a8:	5800b20f 	beq	$r16,$r15,176(0xb0) # 1a58 <memset+0x1a4>
    19ac:	29000185 	st.b	$r5,$r12,0
    19b0:	028005ae 	addi.w	$r14,$r13,1(0x1)
    19b4:	6c0099c6 	bgeu	$r14,$r6,152(0x98) # 1a4c <memset+0x198>
    19b8:	29000585 	st.b	$r5,$r12,1(0x1)
    19bc:	028009ae 	addi.w	$r14,$r13,2(0x2)
    19c0:	6c008dc6 	bgeu	$r14,$r6,140(0x8c) # 1a4c <memset+0x198>
    19c4:	29000985 	st.b	$r5,$r12,2(0x2)
    19c8:	02800dae 	addi.w	$r14,$r13,3(0x3)
    19cc:	6c0081c6 	bgeu	$r14,$r6,128(0x80) # 1a4c <memset+0x198>
    19d0:	29000d85 	st.b	$r5,$r12,3(0x3)
    19d4:	028011ae 	addi.w	$r14,$r13,4(0x4)
    19d8:	6c0075c6 	bgeu	$r14,$r6,116(0x74) # 1a4c <memset+0x198>
    19dc:	29001185 	st.b	$r5,$r12,4(0x4)
    19e0:	028015ae 	addi.w	$r14,$r13,5(0x5)
    19e4:	6c0069c6 	bgeu	$r14,$r6,104(0x68) # 1a4c <memset+0x198>
    19e8:	29001585 	st.b	$r5,$r12,5(0x5)
    19ec:	028019ae 	addi.w	$r14,$r13,6(0x6)
    19f0:	6c005dc6 	bgeu	$r14,$r6,92(0x5c) # 1a4c <memset+0x198>
    19f4:	29001985 	st.b	$r5,$r12,6(0x6)
    19f8:	02801dae 	addi.w	$r14,$r13,7(0x7)
    19fc:	6c0051c6 	bgeu	$r14,$r6,80(0x50) # 1a4c <memset+0x198>
    1a00:	29001d85 	st.b	$r5,$r12,7(0x7)
    1a04:	028021ae 	addi.w	$r14,$r13,8(0x8)
    1a08:	6c0045c6 	bgeu	$r14,$r6,68(0x44) # 1a4c <memset+0x198>
    1a0c:	29002185 	st.b	$r5,$r12,8(0x8)
    1a10:	028025ae 	addi.w	$r14,$r13,9(0x9)
    1a14:	6c0039c6 	bgeu	$r14,$r6,56(0x38) # 1a4c <memset+0x198>
    1a18:	29002585 	st.b	$r5,$r12,9(0x9)
    1a1c:	028029ae 	addi.w	$r14,$r13,10(0xa)
    1a20:	6c002dc6 	bgeu	$r14,$r6,44(0x2c) # 1a4c <memset+0x198>
    1a24:	29002985 	st.b	$r5,$r12,10(0xa)
    1a28:	02802dae 	addi.w	$r14,$r13,11(0xb)
    1a2c:	6c0021c6 	bgeu	$r14,$r6,32(0x20) # 1a4c <memset+0x198>
    1a30:	29002d85 	st.b	$r5,$r12,11(0xb)
    1a34:	028031ae 	addi.w	$r14,$r13,12(0xc)
    1a38:	6c0015c6 	bgeu	$r14,$r6,20(0x14) # 1a4c <memset+0x198>
    1a3c:	29003185 	st.b	$r5,$r12,12(0xc)
    1a40:	028035ad 	addi.w	$r13,$r13,13(0xd)
    1a44:	6c0009a6 	bgeu	$r13,$r6,8(0x8) # 1a4c <memset+0x198>
    1a48:	29003585 	st.b	$r5,$r12,13(0xd)
        ;
    return dest;
}
    1a4c:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    1a50:	02800c11 	addi.w	$r17,$r0,3(0x3)
    1a54:	53ff03ff 	b	-256(0xfffff00) # 1954 <memset+0xa0>
    1a58:	4c000020 	jirl	$r0,$r1,0
    1a5c:	02800411 	addi.w	$r17,$r0,1(0x1)
    1a60:	53fef7ff 	b	-268(0xffffef4) # 1954 <memset+0xa0>
    1a64:	0015008e 	move	$r14,$r4
    1a68:	00150011 	move	$r17,$r0
    1a6c:	53feebff 	b	-280(0xffffee8) # 1954 <memset+0xa0>
    1a70:	0015008c 	move	$r12,$r4
    1a74:	0015000d 	move	$r13,$r0
    1a78:	53ff37ff 	b	-204(0xfffff34) # 19ac <memset+0xf8>
    1a7c:	02800811 	addi.w	$r17,$r0,2(0x2)
    1a80:	53fed7ff 	b	-300(0xffffed4) # 1954 <memset+0xa0>
    1a84:	02801011 	addi.w	$r17,$r0,4(0x4)
    1a88:	53fecfff 	b	-308(0xffffecc) # 1954 <memset+0xa0>
    1a8c:	02801411 	addi.w	$r17,$r0,5(0x5)
    1a90:	53fec7ff 	b	-316(0xffffec4) # 1954 <memset+0xa0>
    1a94:	02801811 	addi.w	$r17,$r0,6(0x6)
    1a98:	53febfff 	b	-324(0xffffebc) # 1954 <memset+0xa0>

0000000000001a9c <strcmp>:

int strcmp(const char *l, const char *r)
{
    for (; *l == *r && *l; l++, r++)
    1a9c:	2800008c 	ld.b	$r12,$r4,0
    1aa0:	280000ae 	ld.b	$r14,$r5,0
    1aa4:	5c0035cc 	bne	$r14,$r12,52(0x34) # 1ad8 <strcmp+0x3c>
    1aa8:	40003980 	beqz	$r12,56(0x38) # 1ae0 <strcmp+0x44>
    1aac:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1ab0:	50000800 	b	8(0x8) # 1ab8 <strcmp+0x1c>
    1ab4:	400019a0 	beqz	$r13,24(0x18) # 1acc <strcmp+0x30>
    1ab8:	3800308d 	ldx.b	$r13,$r4,$r12
    1abc:	380030ae 	ldx.b	$r14,$r5,$r12
    1ac0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1ac4:	5bfff1ae 	beq	$r13,$r14,-16(0x3fff0) # 1ab4 <strcmp+0x18>
    1ac8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
        ;
    return *(unsigned char *)l - *(unsigned char *)r;
    1acc:	006781c4 	bstrpick.w	$r4,$r14,0x7,0x0
}
    1ad0:	001111a4 	sub.w	$r4,$r13,$r4
    1ad4:	4c000020 	jirl	$r0,$r1,0
    1ad8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
    1adc:	53fff3ff 	b	-16(0xffffff0) # 1acc <strcmp+0x30>
    for (; *l == *r && *l; l++, r++)
    1ae0:	0015000d 	move	$r13,$r0
    1ae4:	53ffebff 	b	-24(0xfffffe8) # 1acc <strcmp+0x30>

0000000000001ae8 <strncmp>:

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l = (void *)_l, *r = (void *)_r;
    if (!n--)
    1ae8:	400054c0 	beqz	$r6,84(0x54) # 1b3c <strncmp+0x54>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1aec:	2a00008d 	ld.bu	$r13,$r4,0
    1af0:	2a0000ae 	ld.bu	$r14,$r5,0
    1af4:	40003da0 	beqz	$r13,60(0x3c) # 1b30 <strncmp+0x48>
    1af8:	40003dc0 	beqz	$r14,60(0x3c) # 1b34 <strncmp+0x4c>
    if (!n--)
    1afc:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    for (; *l && *r && n && *l == *r; l++, r++, n--)
    1b00:	400034c0 	beqz	$r6,52(0x34) # 1b34 <strncmp+0x4c>
    1b04:	0280040c 	addi.w	$r12,$r0,1(0x1)
    1b08:	580019ae 	beq	$r13,$r14,24(0x18) # 1b20 <strncmp+0x38>
    1b0c:	50002800 	b	40(0x28) # 1b34 <strncmp+0x4c>
    1b10:	400035c0 	beqz	$r14,52(0x34) # 1b44 <strncmp+0x5c>
    1b14:	580020cc 	beq	$r6,$r12,32(0x20) # 1b34 <strncmp+0x4c>
    1b18:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b1c:	5c0029ee 	bne	$r15,$r14,40(0x28) # 1b44 <strncmp+0x5c>
    1b20:	3820308d 	ldx.bu	$r13,$r4,$r12
    1b24:	382030ae 	ldx.bu	$r14,$r5,$r12
    1b28:	001501af 	move	$r15,$r13
    1b2c:	47ffe5bf 	bnez	$r13,-28(0x7fffe4) # 1b10 <strncmp+0x28>
    1b30:	0015000d 	move	$r13,$r0
        ;
    return *l - *r;
    1b34:	001139a4 	sub.w	$r4,$r13,$r14
    1b38:	4c000020 	jirl	$r0,$r1,0
        return 0;
    1b3c:	00150004 	move	$r4,$r0
}
    1b40:	4c000020 	jirl	$r0,$r1,0
    1b44:	001501ed 	move	$r13,$r15
    return *l - *r;
    1b48:	001139a4 	sub.w	$r4,$r13,$r14
    1b4c:	4c000020 	jirl	$r0,$r1,0

0000000000001b50 <strlen>:
size_t strlen(const char *s)
{
    const char *a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word *w;
    for (; (uintptr_t)s % SS; s++)
    1b50:	03401c8c 	andi	$r12,$r4,0x7
    1b54:	4000b180 	beqz	$r12,176(0xb0) # 1c04 <strlen+0xb4>
        if (!*s)
    1b58:	2800008c 	ld.b	$r12,$r4,0
    1b5c:	4000b180 	beqz	$r12,176(0xb0) # 1c0c <strlen+0xbc>
    1b60:	0015008c 	move	$r12,$r4
    1b64:	50000c00 	b	12(0xc) # 1b70 <strlen+0x20>
    1b68:	2800018d 	ld.b	$r13,$r12,0
    1b6c:	400091a0 	beqz	$r13,144(0x90) # 1bfc <strlen+0xac>
    for (; (uintptr_t)s % SS; s++)
    1b70:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1b74:	03401d8d 	andi	$r13,$r12,0x7
    1b78:	47fff1bf 	bnez	$r13,-16(0x7ffff0) # 1b68 <strlen+0x18>
            return s - a;
    for (w = (const void *)s; !HASZERO(*w); w++)
    1b7c:	15fdfded 	lu12i.w	$r13,-4113(0xfefef)
    1b80:	2600018f 	ldptr.d	$r15,$r12,0
    1b84:	03bbfdad 	ori	$r13,$r13,0xeff
    1b88:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1b8c:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1b90:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1b94:	038201ce 	ori	$r14,$r14,0x80
    1b98:	0010b5ed 	add.d	$r13,$r15,$r13
    1b9c:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1ba0:	0016bdad 	andn	$r13,$r13,$r15
    1ba4:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1ba8:	0014b9ae 	and	$r14,$r13,$r14
    1bac:	440049c0 	bnez	$r14,72(0x48) # 1bf4 <strlen+0xa4>
    1bb0:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1bb4:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1bb8:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    1bbc:	2600018e 	ldptr.d	$r14,$r12,0
    1bc0:	03bbfe2d 	ori	$r13,$r17,0xeff
    1bc4:	17dfdfcd 	lu32i.d	$r13,-65794(0xefefe)
    1bc8:	033fbdad 	lu52i.d	$r13,$r13,-17(0xfef)
    1bcc:	0382020f 	ori	$r15,$r16,0x80
    1bd0:	0010b5cd 	add.d	$r13,$r14,$r13
    1bd4:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1bd8:	0016b9ad 	andn	$r13,$r13,$r14
    1bdc:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1be0:	0014bdad 	and	$r13,$r13,$r15
    1be4:	43ffd5bf 	beqz	$r13,-44(0x7fffd4) # 1bb8 <strlen+0x68>
        ;
    s = (const void *)w;
    for (; *s; s++)
    1be8:	2800018d 	ld.b	$r13,$r12,0
    1bec:	400011a0 	beqz	$r13,16(0x10) # 1bfc <strlen+0xac>
    1bf0:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1bf4:	2800018d 	ld.b	$r13,$r12,0
    1bf8:	47fff9bf 	bnez	$r13,-8(0x7ffff8) # 1bf0 <strlen+0xa0>
        ;
    return s - a;
    1bfc:	00119184 	sub.d	$r4,$r12,$r4
}
    1c00:	4c000020 	jirl	$r0,$r1,0
    for (; (uintptr_t)s % SS; s++)
    1c04:	0015008c 	move	$r12,$r4
    1c08:	53ff77ff 	b	-140(0xfffff74) # 1b7c <strlen+0x2c>
        if (!*s)
    1c0c:	00150004 	move	$r4,$r0
            return s - a;
    1c10:	4c000020 	jirl	$r0,$r1,0

0000000000001c14 <memchr>:

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1c14:	03401c8c 	andi	$r12,$r4,0x7
    1c18:	006780a5 	bstrpick.w	$r5,$r5,0x7,0x0
    1c1c:	44002180 	bnez	$r12,32(0x20) # 1c3c <memchr+0x28>
    1c20:	50002c00 	b	44(0x2c) # 1c4c <memchr+0x38>
    1c24:	2a00008c 	ld.bu	$r12,$r4,0
    1c28:	5800f985 	beq	$r12,$r5,248(0xf8) # 1d20 <memchr+0x10c>
    1c2c:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1c30:	03401c8c 	andi	$r12,$r4,0x7
    1c34:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    1c38:	40001580 	beqz	$r12,20(0x14) # 1c4c <memchr+0x38>
    1c3c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 1c24 <memchr+0x10>
            ;
        s = (const void *)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void *)s : 0;
    1c40:	0015000d 	move	$r13,$r0
}
    1c44:	001501a4 	move	$r4,$r13
    1c48:	4c000020 	jirl	$r0,$r1,0
    return n ? (void *)s : 0;
    1c4c:	0015000d 	move	$r13,$r0
    if (n && *s != c)
    1c50:	43fff4df 	beqz	$r6,-12(0x7ffff4) # 1c44 <memchr+0x30>
    1c54:	2a00008c 	ld.bu	$r12,$r4,0
    1c58:	5800c985 	beq	$r12,$r5,200(0xc8) # 1d20 <memchr+0x10c>
        size_t k = ONES * c;
    1c5c:	1402020c 	lu12i.w	$r12,4112(0x1010)
    1c60:	0384058c 	ori	$r12,$r12,0x101
    1c64:	1620202c 	lu32i.d	$r12,65793(0x10101)
    1c68:	0300418c 	lu52i.d	$r12,$r12,16(0x10)
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c6c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
        size_t k = ONES * c;
    1c70:	001db0b0 	mul.d	$r16,$r5,$r12
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1c74:	6c00bda6 	bgeu	$r13,$r6,188(0xbc) # 1d30 <memchr+0x11c>
    1c78:	2600008d 	ldptr.d	$r13,$r4,0
    1c7c:	1501010e 	lu12i.w	$r14,-522232(0x80808)
    1c80:	038201ce 	ori	$r14,$r14,0x80
    1c84:	0015b60d 	xor	$r13,$r16,$r13
    1c88:	0011b1ac 	sub.d	$r12,$r13,$r12
    1c8c:	1610100e 	lu32i.d	$r14,32896(0x8080)
    1c90:	0016b58c 	andn	$r12,$r12,$r13
    1c94:	032021ce 	lu52i.d	$r14,$r14,-2040(0x808)
    1c98:	0014b98c 	and	$r12,$r12,$r14
    1c9c:	44009580 	bnez	$r12,148(0x94) # 1d30 <memchr+0x11c>
    1ca0:	02801c13 	addi.w	$r19,$r0,7(0x7)
    1ca4:	15fdfdf2 	lu12i.w	$r18,-4113(0xfefef)
    1ca8:	15010111 	lu12i.w	$r17,-522232(0x80808)
    1cac:	50002000 	b	32(0x20) # 1ccc <memchr+0xb8>
    1cb0:	28c0208c 	ld.d	$r12,$r4,8(0x8)
    1cb4:	0015b20c 	xor	$r12,$r16,$r12
    1cb8:	0010b98e 	add.d	$r14,$r12,$r14
    1cbc:	0016b1cc 	andn	$r12,$r14,$r12
    1cc0:	0014bd8c 	and	$r12,$r12,$r15
    1cc4:	44006580 	bnez	$r12,100(0x64) # 1d28 <memchr+0x114>
    1cc8:	001501a4 	move	$r4,$r13
    1ccc:	03bbfe4e 	ori	$r14,$r18,0xeff
    1cd0:	0382022f 	ori	$r15,$r17,0x80
    1cd4:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1cd8:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1cdc:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1ce0:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1ce4:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1ce8:	02c0208d 	addi.d	$r13,$r4,8(0x8)
    1cec:	6bffc666 	bltu	$r19,$r6,-60(0x3ffc4) # 1cb0 <memchr+0x9c>
    for (; n && *s != c; s++, n--)
    1cf0:	43ff50df 	beqz	$r6,-176(0x7fff50) # 1c40 <memchr+0x2c>
    1cf4:	2a0001ac 	ld.bu	$r12,$r13,0
    1cf8:	5bff4cac 	beq	$r5,$r12,-180(0x3ff4c) # 1c44 <memchr+0x30>
    1cfc:	02c005ac 	addi.d	$r12,$r13,1(0x1)
    1d00:	001099a6 	add.d	$r6,$r13,$r6
    1d04:	50001000 	b	16(0x10) # 1d14 <memchr+0x100>
    1d08:	2a00018e 	ld.bu	$r14,$r12,0
    1d0c:	02c0058c 	addi.d	$r12,$r12,1(0x1)
    1d10:	5bff35c5 	beq	$r14,$r5,-204(0x3ff34) # 1c44 <memchr+0x30>
    1d14:	0015018d 	move	$r13,$r12
    1d18:	5ffff0cc 	bne	$r6,$r12,-16(0x3fff0) # 1d08 <memchr+0xf4>
    1d1c:	53ff27ff 	b	-220(0xfffff24) # 1c40 <memchr+0x2c>
    1d20:	0015008d 	move	$r13,$r4
    1d24:	53ffd3ff 	b	-48(0xfffffd0) # 1cf4 <memchr+0xe0>
    1d28:	2a00208c 	ld.bu	$r12,$r4,8(0x8)
    1d2c:	53ffcfff 	b	-52(0xfffffcc) # 1cf8 <memchr+0xe4>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d30:	0015008d 	move	$r13,$r4
    1d34:	53ffcbff 	b	-56(0xfffffc8) # 1cfc <memchr+0xe8>

0000000000001d38 <strnlen>:
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1d38:	03401c8c 	andi	$r12,$r4,0x7
    1d3c:	40011980 	beqz	$r12,280(0x118) # 1e54 <strnlen+0x11c>
    1d40:	4000f4a0 	beqz	$r5,244(0xf4) # 1e34 <strnlen+0xfc>
    1d44:	2a00008c 	ld.bu	$r12,$r4,0
    1d48:	4000f580 	beqz	$r12,244(0xf4) # 1e3c <strnlen+0x104>
    1d4c:	001500ac 	move	$r12,$r5
    1d50:	0015008d 	move	$r13,$r4
    1d54:	50001000 	b	16(0x10) # 1d64 <strnlen+0x2c>
    1d58:	4000dd80 	beqz	$r12,220(0xdc) # 1e34 <strnlen+0xfc>
    1d5c:	2a0001ae 	ld.bu	$r14,$r13,0
    1d60:	4000e5c0 	beqz	$r14,228(0xe4) # 1e44 <strnlen+0x10c>
    1d64:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1d68:	03401dae 	andi	$r14,$r13,0x7
    1d6c:	02fffd8c 	addi.d	$r12,$r12,-1(0xfff)
    1d70:	47ffe9df 	bnez	$r14,-24(0x7fffe8) # 1d58 <strnlen+0x20>
    if (n && *s != c)
    1d74:	4000c180 	beqz	$r12,192(0xc0) # 1e34 <strnlen+0xfc>
    1d78:	2a0001ae 	ld.bu	$r14,$r13,0
    1d7c:	4000c9c0 	beqz	$r14,200(0xc8) # 1e44 <strnlen+0x10c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1d80:	02801c0e 	addi.w	$r14,$r0,7(0x7)
    1d84:	6c00ddcc 	bgeu	$r14,$r12,220(0xdc) # 1e60 <strnlen+0x128>
    1d88:	15fdfdee 	lu12i.w	$r14,-4113(0xfefef)
    1d8c:	260001b0 	ldptr.d	$r16,$r13,0
    1d90:	03bbfdce 	ori	$r14,$r14,0xeff
    1d94:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1d98:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1d9c:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1da0:	038201ef 	ori	$r15,$r15,0x80
    1da4:	0010ba0e 	add.d	$r14,$r16,$r14
    1da8:	1610100f 	lu32i.d	$r15,32896(0x8080)
    1dac:	0016c1ce 	andn	$r14,$r14,$r16
    1db0:	032021ef 	lu52i.d	$r15,$r15,-2040(0x808)
    1db4:	0014bdcf 	and	$r15,$r14,$r15
    1db8:	4400a9e0 	bnez	$r15,168(0xa8) # 1e60 <strnlen+0x128>
    1dbc:	02801c14 	addi.w	$r20,$r0,7(0x7)
    1dc0:	15fdfdf3 	lu12i.w	$r19,-4113(0xfefef)
    1dc4:	15010112 	lu12i.w	$r18,-522232(0x80808)
    1dc8:	50001c00 	b	28(0x1c) # 1de4 <strnlen+0xac>
    1dcc:	28c021af 	ld.d	$r15,$r13,8(0x8)
    1dd0:	0010b9ee 	add.d	$r14,$r15,$r14
    1dd4:	0016bdce 	andn	$r14,$r14,$r15
    1dd8:	0014c1ce 	and	$r14,$r14,$r16
    1ddc:	440071c0 	bnez	$r14,112(0x70) # 1e4c <strnlen+0x114>
    1de0:	0015022d 	move	$r13,$r17
    1de4:	03bbfe6e 	ori	$r14,$r19,0xeff
    1de8:	03820250 	ori	$r16,$r18,0x80
    1dec:	17dfdfce 	lu32i.d	$r14,-65794(0xefefe)
    1df0:	16101010 	lu32i.d	$r16,32896(0x8080)
    1df4:	02ffe18c 	addi.d	$r12,$r12,-8(0xff8)
    1df8:	033fbdce 	lu52i.d	$r14,$r14,-17(0xfef)
    1dfc:	03202210 	lu52i.d	$r16,$r16,-2040(0x808)
    1e00:	02c021b1 	addi.d	$r17,$r13,8(0x8)
    1e04:	6bffca8c 	bltu	$r20,$r12,-56(0x3ffc8) # 1dcc <strnlen+0x94>
    for (; n && *s != c; s++, n--)
    1e08:	40002d80 	beqz	$r12,44(0x2c) # 1e34 <strnlen+0xfc>
    1e0c:	2a00022d 	ld.bu	$r13,$r17,0
    1e10:	400021a0 	beqz	$r13,32(0x20) # 1e30 <strnlen+0xf8>
    1e14:	02c0062d 	addi.d	$r13,$r17,1(0x1)
    1e18:	0010b22c 	add.d	$r12,$r17,$r12
    1e1c:	001501b1 	move	$r17,$r13
    1e20:	5800158d 	beq	$r12,$r13,20(0x14) # 1e34 <strnlen+0xfc>
    1e24:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    1e28:	2a3ffdae 	ld.bu	$r14,$r13,-1(0xfff)
    1e2c:	47fff1df 	bnez	$r14,-16(0x7ffff0) # 1e1c <strnlen+0xe4>

size_t strnlen(const char *s, size_t n)
{
    const char *p = memchr(s, 0, n);
    return p ? p - s : n;
    1e30:	00119225 	sub.d	$r5,$r17,$r4
}
    1e34:	001500a4 	move	$r4,$r5
    1e38:	4c000020 	jirl	$r0,$r1,0
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e3c:	001500ac 	move	$r12,$r5
    1e40:	0015008d 	move	$r13,$r4
    if (n && *s != c)
    1e44:	001501b1 	move	$r17,$r13
    1e48:	53ffc7ff 	b	-60(0xfffffc4) # 1e0c <strnlen+0xd4>
    1e4c:	2a0021ad 	ld.bu	$r13,$r13,8(0x8)
    1e50:	53ffc3ff 	b	-64(0xfffffc0) # 1e10 <strnlen+0xd8>
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
    1e54:	001500ac 	move	$r12,$r5
    1e58:	0015008d 	move	$r13,$r4
    1e5c:	53ff1bff 	b	-232(0xfffff18) # 1d74 <strnlen+0x3c>
        for (w = (const void *)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
    1e60:	001501b1 	move	$r17,$r13
    1e64:	53ffb3ff 	b	-80(0xfffffb0) # 1e14 <strnlen+0xdc>

0000000000001e68 <strcpy>:
char *strcpy(char *restrict d, const char *s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS)
    1e68:	0015948c 	xor	$r12,$r4,$r5
    1e6c:	03401d8c 	andi	$r12,$r12,0x7
    1e70:	4400ad80 	bnez	$r12,172(0xac) # 1f1c <strcpy+0xb4>
    {
        for (; (uintptr_t)s % SS; s++, d++)
    1e74:	03401cac 	andi	$r12,$r5,0x7
    1e78:	40003180 	beqz	$r12,48(0x30) # 1ea8 <strcpy+0x40>
            if (!(*d = *s))
    1e7c:	280000ac 	ld.b	$r12,$r5,0
    1e80:	2900008c 	st.b	$r12,$r4,0
    1e84:	44001580 	bnez	$r12,20(0x14) # 1e98 <strcpy+0x30>
    1e88:	5000bc00 	b	188(0xbc) # 1f44 <strcpy+0xdc>
    1e8c:	280000ac 	ld.b	$r12,$r5,0
    1e90:	2900008c 	st.b	$r12,$r4,0
    1e94:	4000a980 	beqz	$r12,168(0xa8) # 1f3c <strcpy+0xd4>
        for (; (uintptr_t)s % SS; s++, d++)
    1e98:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1e9c:	03401cac 	andi	$r12,$r5,0x7
    1ea0:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1ea4:	47ffe99f 	bnez	$r12,-24(0x7fffe8) # 1e8c <strcpy+0x24>
                return d;
        wd = (void *)d;
        ws = (const void *)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
    1ea8:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1eac:	260000ae 	ldptr.d	$r14,$r5,0
    1eb0:	03bbfd8c 	ori	$r12,$r12,0xeff
    1eb4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1eb8:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1ebc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1ec0:	038201ad 	ori	$r13,$r13,0x80
    1ec4:	0010b1cc 	add.d	$r12,$r14,$r12
    1ec8:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1ecc:	0016b98c 	andn	$r12,$r12,$r14
    1ed0:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1ed4:	0014b58c 	and	$r12,$r12,$r13
    1ed8:	44004580 	bnez	$r12,68(0x44) # 1f1c <strcpy+0xb4>
    1edc:	15fdfdf0 	lu12i.w	$r16,-4113(0xfefef)
    1ee0:	1501010f 	lu12i.w	$r15,-522232(0x80808)
    1ee4:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ee8:	02c020a5 	addi.d	$r5,$r5,8(0x8)
    1eec:	29ffe08e 	st.d	$r14,$r4,-8(0xff8)
    1ef0:	260000ae 	ldptr.d	$r14,$r5,0
    1ef4:	03bbfe0c 	ori	$r12,$r16,0xeff
    1ef8:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1efc:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f00:	038201ed 	ori	$r13,$r15,0x80
    1f04:	0010b1cc 	add.d	$r12,$r14,$r12
    1f08:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f0c:	0016b98c 	andn	$r12,$r12,$r14
    1f10:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f14:	0014b58c 	and	$r12,$r12,$r13
    1f18:	43ffcd9f 	beqz	$r12,-52(0x7fffcc) # 1ee4 <strcpy+0x7c>
            ;
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; (*d = *s); s++, d++)
    1f1c:	280000ac 	ld.b	$r12,$r5,0
    1f20:	2900008c 	st.b	$r12,$r4,0
    1f24:	40001d80 	beqz	$r12,28(0x1c) # 1f40 <strcpy+0xd8>
    1f28:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    1f2c:	280000ac 	ld.b	$r12,$r5,0
    1f30:	02c00484 	addi.d	$r4,$r4,1(0x1)
    1f34:	2900008c 	st.b	$r12,$r4,0
    1f38:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1f28 <strcpy+0xc0>
        ;
    return d;
}
    1f3c:	4c000020 	jirl	$r0,$r1,0
    1f40:	4c000020 	jirl	$r0,$r1,0
    1f44:	4c000020 	jirl	$r0,$r1,0

0000000000001f48 <strncpy>:
char *strncpy(char *restrict d, const char *s, size_t n)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word *wd;
    const word *ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN))
    1f48:	0015948c 	xor	$r12,$r4,$r5
    1f4c:	03401d8c 	andi	$r12,$r12,0x7
    1f50:	4400ad80 	bnez	$r12,172(0xac) # 1ffc <strncpy+0xb4>
    {
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    1f54:	03401cac 	andi	$r12,$r5,0x7
    1f58:	44010180 	bnez	$r12,256(0x100) # 2058 <strncpy+0x110>
            ;
        if (!n || !*s)
    1f5c:	400100c0 	beqz	$r6,256(0x100) # 205c <strncpy+0x114>
    1f60:	280000af 	ld.b	$r15,$r5,0
    1f64:	400105e0 	beqz	$r15,260(0x104) # 2068 <strncpy+0x120>
            goto tail;
        wd = (void *)d;
        ws = (const void *)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1f68:	02801c0c 	addi.w	$r12,$r0,7(0x7)
    1f6c:	6c02d986 	bgeu	$r12,$r6,728(0x2d8) # 2244 <strncpy+0x2fc>
    1f70:	15fdfdec 	lu12i.w	$r12,-4113(0xfefef)
    1f74:	260000ae 	ldptr.d	$r14,$r5,0
    1f78:	03bbfd8c 	ori	$r12,$r12,0xeff
    1f7c:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1f80:	1501010d 	lu12i.w	$r13,-522232(0x80808)
    1f84:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1f88:	038201ad 	ori	$r13,$r13,0x80
    1f8c:	0010b1cc 	add.d	$r12,$r14,$r12
    1f90:	1610100d 	lu32i.d	$r13,32896(0x8080)
    1f94:	0016b98c 	andn	$r12,$r12,$r14
    1f98:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1f9c:	0014b58c 	and	$r12,$r12,$r13
    1fa0:	4402a580 	bnez	$r12,676(0x2a4) # 2244 <strncpy+0x2fc>
    1fa4:	02801c12 	addi.w	$r18,$r0,7(0x7)
    1fa8:	15fdfdf1 	lu12i.w	$r17,-4113(0xfefef)
    1fac:	15010110 	lu12i.w	$r16,-522232(0x80808)
    1fb0:	50001c00 	b	28(0x1c) # 1fcc <strncpy+0x84>
    1fb4:	28c020ae 	ld.d	$r14,$r5,8(0x8)
    1fb8:	0010b1cc 	add.d	$r12,$r14,$r12
    1fbc:	0016b98c 	andn	$r12,$r12,$r14
    1fc0:	0014b58c 	and	$r12,$r12,$r13
    1fc4:	44024580 	bnez	$r12,580(0x244) # 2208 <strncpy+0x2c0>
    1fc8:	001501e5 	move	$r5,$r15
    1fcc:	03bbfe2c 	ori	$r12,$r17,0xeff
    1fd0:	0382020d 	ori	$r13,$r16,0x80
    1fd4:	17dfdfcc 	lu32i.d	$r12,-65794(0xefefe)
    1fd8:	1610100d 	lu32i.d	$r13,32896(0x8080)
            *wd = *ws;
    1fdc:	2700008e 	stptr.d	$r14,$r4,0
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    1fe0:	02ffe0c6 	addi.d	$r6,$r6,-8(0xff8)
    1fe4:	033fbd8c 	lu52i.d	$r12,$r12,-17(0xfef)
    1fe8:	032021ad 	lu52i.d	$r13,$r13,-2040(0x808)
    1fec:	02c020af 	addi.d	$r15,$r5,8(0x8)
    1ff0:	02c02084 	addi.d	$r4,$r4,8(0x8)
    1ff4:	6bffc246 	bltu	$r18,$r6,-64(0x3ffc0) # 1fb4 <strncpy+0x6c>
    1ff8:	001501e5 	move	$r5,$r15
        d = (void *)wd;
        s = (const void *)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
    1ffc:	400060c0 	beqz	$r6,96(0x60) # 205c <strncpy+0x114>
    2000:	280000ac 	ld.b	$r12,$r5,0
    2004:	0015008d 	move	$r13,$r4
    2008:	2900008c 	st.b	$r12,$r4,0
    200c:	44001580 	bnez	$r12,20(0x14) # 2020 <strncpy+0xd8>
    2010:	50005c00 	b	92(0x5c) # 206c <strncpy+0x124>
    2014:	280000ac 	ld.b	$r12,$r5,0
    2018:	290001ac 	st.b	$r12,$r13,0
    201c:	40005180 	beqz	$r12,80(0x50) # 206c <strncpy+0x124>
    2020:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2024:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2028:	02c005ad 	addi.d	$r13,$r13,1(0x1)
    202c:	47ffe8df 	bnez	$r6,-24(0x7fffe8) # 2014 <strncpy+0xcc>
        ;
tail:
    memset(d, 0, n);
    return d;
}
    2030:	001501a4 	move	$r4,$r13
    2034:	4c000020 	jirl	$r0,$r1,0
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
    2038:	280000ac 	ld.b	$r12,$r5,0
    203c:	2900008c 	st.b	$r12,$r4,0
    2040:	40002980 	beqz	$r12,40(0x28) # 2068 <strncpy+0x120>
    2044:	02c004a5 	addi.d	$r5,$r5,1(0x1)
    2048:	03401cac 	andi	$r12,$r5,0x7
    204c:	02fffcc6 	addi.d	$r6,$r6,-1(0xfff)
    2050:	02c00484 	addi.d	$r4,$r4,1(0x1)
    2054:	43ff099f 	beqz	$r12,-248(0x7fff08) # 1f5c <strncpy+0x14>
    2058:	47ffe0df 	bnez	$r6,-32(0x7fffe0) # 2038 <strncpy+0xf0>
    for (; n && (*d = *s); n--, s++, d++)
    205c:	0015008d 	move	$r13,$r4
}
    2060:	001501a4 	move	$r4,$r13
    2064:	4c000020 	jirl	$r0,$r1,0
    for (; n && (*d = *s); n--, s++, d++)
    2068:	0015008d 	move	$r13,$r4
    206c:	0011b40c 	sub.d	$r12,$r0,$r13
    2070:	03401d8c 	andi	$r12,$r12,0x7
    2074:	02c01d8e 	addi.d	$r14,$r12,7(0x7)
    2078:	02402dcf 	sltui	$r15,$r14,11(0xb)
    207c:	02802c10 	addi.w	$r16,$r0,11(0xb)
    2080:	0013bdce 	masknez	$r14,$r14,$r15
    2084:	02fffcd1 	addi.d	$r17,$r6,-1(0xfff)
    2088:	00133e0f 	maskeqz	$r15,$r16,$r15
    208c:	00153dce 	or	$r14,$r14,$r15
    2090:	024004d0 	sltui	$r16,$r6,1(0x1)
    2094:	00131a31 	maskeqz	$r17,$r17,$r6
    2098:	0280040f 	addi.w	$r15,$r0,1(0x1)
    209c:	001540d0 	or	$r16,$r6,$r16
    20a0:	68017a2e 	bltu	$r17,$r14,376(0x178) # 2218 <strncpy+0x2d0>
    20a4:	40015980 	beqz	$r12,344(0x158) # 21fc <strncpy+0x2b4>
    for (int i = 0; i < n; ++i, *(p++) = c)
    20a8:	290001a0 	st.b	$r0,$r13,0
    20ac:	02c005ae 	addi.d	$r14,$r13,1(0x1)
    20b0:	5801458f 	beq	$r12,$r15,324(0x144) # 21f4 <strncpy+0x2ac>
    20b4:	290005a0 	st.b	$r0,$r13,1(0x1)
    20b8:	0280080f 	addi.w	$r15,$r0,2(0x2)
    20bc:	02c009ae 	addi.d	$r14,$r13,2(0x2)
    20c0:	5801658f 	beq	$r12,$r15,356(0x164) # 2224 <strncpy+0x2dc>
    20c4:	290009a0 	st.b	$r0,$r13,2(0x2)
    20c8:	02800c0f 	addi.w	$r15,$r0,3(0x3)
    20cc:	02c00dae 	addi.d	$r14,$r13,3(0x3)
    20d0:	58011d8f 	beq	$r12,$r15,284(0x11c) # 21ec <strncpy+0x2a4>
    20d4:	29000da0 	st.b	$r0,$r13,3(0x3)
    20d8:	0280100f 	addi.w	$r15,$r0,4(0x4)
    20dc:	02c011ae 	addi.d	$r14,$r13,4(0x4)
    20e0:	58014d8f 	beq	$r12,$r15,332(0x14c) # 222c <strncpy+0x2e4>
    20e4:	290011a0 	st.b	$r0,$r13,4(0x4)
    20e8:	0280140f 	addi.w	$r15,$r0,5(0x5)
    20ec:	02c015ae 	addi.d	$r14,$r13,5(0x5)
    20f0:	5801458f 	beq	$r12,$r15,324(0x144) # 2234 <strncpy+0x2ec>
    20f4:	290015a0 	st.b	$r0,$r13,5(0x5)
    20f8:	02801c0f 	addi.w	$r15,$r0,7(0x7)
    20fc:	02c019ae 	addi.d	$r14,$r13,6(0x6)
    2100:	5c013d8f 	bne	$r12,$r15,316(0x13c) # 223c <strncpy+0x2f4>
    2104:	02c01dae 	addi.d	$r14,$r13,7(0x7)
    2108:	290019a0 	st.b	$r0,$r13,6(0x6)
    210c:	02801c12 	addi.w	$r18,$r0,7(0x7)
    2110:	0011b210 	sub.d	$r16,$r16,$r12
    2114:	00450e11 	srli.d	$r17,$r16,0x3
    2118:	0010b1ac 	add.d	$r12,$r13,$r12
    211c:	002d3231 	alsl.d	$r17,$r17,$r12,0x3
    2120:	27000180 	stptr.d	$r0,$r12,0
    2124:	02c0218c 	addi.d	$r12,$r12,8(0x8)
    2128:	5ffff991 	bne	$r12,$r17,-8(0x3fff8) # 2120 <strncpy+0x1d8>
    212c:	02bfe011 	addi.w	$r17,$r0,-8(0xff8)
    2130:	0014c611 	and	$r17,$r16,$r17
    2134:	0040822f 	slli.w	$r15,$r17,0x0
    2138:	001049ef 	add.w	$r15,$r15,$r18
    213c:	0010c5cc 	add.d	$r12,$r14,$r17
    2140:	5bfef211 	beq	$r16,$r17,-272(0x3fef0) # 2030 <strncpy+0xe8>
    2144:	29000180 	st.b	$r0,$r12,0
    2148:	028005ee 	addi.w	$r14,$r15,1(0x1)
    214c:	6ffee5c6 	bgeu	$r14,$r6,-284(0x3fee4) # 2030 <strncpy+0xe8>
    2150:	29000580 	st.b	$r0,$r12,1(0x1)
    2154:	028009ee 	addi.w	$r14,$r15,2(0x2)
    2158:	6ffed9c6 	bgeu	$r14,$r6,-296(0x3fed8) # 2030 <strncpy+0xe8>
    215c:	29000980 	st.b	$r0,$r12,2(0x2)
    2160:	02800dee 	addi.w	$r14,$r15,3(0x3)
    2164:	6ffecdc6 	bgeu	$r14,$r6,-308(0x3fecc) # 2030 <strncpy+0xe8>
    2168:	29000d80 	st.b	$r0,$r12,3(0x3)
    216c:	028011ee 	addi.w	$r14,$r15,4(0x4)
    2170:	6ffec1c6 	bgeu	$r14,$r6,-320(0x3fec0) # 2030 <strncpy+0xe8>
    2174:	29001180 	st.b	$r0,$r12,4(0x4)
    2178:	028015ee 	addi.w	$r14,$r15,5(0x5)
    217c:	6ffeb5c6 	bgeu	$r14,$r6,-332(0x3feb4) # 2030 <strncpy+0xe8>
    2180:	29001580 	st.b	$r0,$r12,5(0x5)
    2184:	028019ee 	addi.w	$r14,$r15,6(0x6)
    2188:	6ffea9c6 	bgeu	$r14,$r6,-344(0x3fea8) # 2030 <strncpy+0xe8>
    218c:	29001980 	st.b	$r0,$r12,6(0x6)
    2190:	02801dee 	addi.w	$r14,$r15,7(0x7)
    2194:	6ffe9dc6 	bgeu	$r14,$r6,-356(0x3fe9c) # 2030 <strncpy+0xe8>
    2198:	29001d80 	st.b	$r0,$r12,7(0x7)
    219c:	028021ee 	addi.w	$r14,$r15,8(0x8)
    21a0:	6ffe91c6 	bgeu	$r14,$r6,-368(0x3fe90) # 2030 <strncpy+0xe8>
    21a4:	29002180 	st.b	$r0,$r12,8(0x8)
    21a8:	028025ee 	addi.w	$r14,$r15,9(0x9)
    21ac:	6ffe85c6 	bgeu	$r14,$r6,-380(0x3fe84) # 2030 <strncpy+0xe8>
    21b0:	29002580 	st.b	$r0,$r12,9(0x9)
    21b4:	028029ee 	addi.w	$r14,$r15,10(0xa)
    21b8:	6ffe79c6 	bgeu	$r14,$r6,-392(0x3fe78) # 2030 <strncpy+0xe8>
    21bc:	29002980 	st.b	$r0,$r12,10(0xa)
    21c0:	02802dee 	addi.w	$r14,$r15,11(0xb)
    21c4:	6ffe6dc6 	bgeu	$r14,$r6,-404(0x3fe6c) # 2030 <strncpy+0xe8>
    21c8:	29002d80 	st.b	$r0,$r12,11(0xb)
    21cc:	028031ee 	addi.w	$r14,$r15,12(0xc)
    21d0:	6ffe61c6 	bgeu	$r14,$r6,-416(0x3fe60) # 2030 <strncpy+0xe8>
    21d4:	29003180 	st.b	$r0,$r12,12(0xc)
    21d8:	028035ef 	addi.w	$r15,$r15,13(0xd)
    21dc:	6ffe55e6 	bgeu	$r15,$r6,-428(0x3fe54) # 2030 <strncpy+0xe8>
    21e0:	29003580 	st.b	$r0,$r12,13(0xd)
}
    21e4:	001501a4 	move	$r4,$r13
    21e8:	4c000020 	jirl	$r0,$r1,0
    for (int i = 0; i < n; ++i, *(p++) = c)
    21ec:	02800c12 	addi.w	$r18,$r0,3(0x3)
    21f0:	53ff23ff 	b	-224(0xfffff20) # 2110 <strncpy+0x1c8>
    21f4:	02800412 	addi.w	$r18,$r0,1(0x1)
    21f8:	53ff1bff 	b	-232(0xfffff18) # 2110 <strncpy+0x1c8>
    21fc:	001501ae 	move	$r14,$r13
    2200:	00150012 	move	$r18,$r0
    2204:	53ff0fff 	b	-244(0xfffff0c) # 2110 <strncpy+0x1c8>
    2208:	280020ac 	ld.b	$r12,$r5,8(0x8)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
    220c:	0015008d 	move	$r13,$r4
    2210:	001501e5 	move	$r5,$r15
    2214:	53fdf7ff 	b	-524(0xffffdf4) # 2008 <strncpy+0xc0>
    for (int i = 0; i < n; ++i, *(p++) = c)
    2218:	001501ac 	move	$r12,$r13
    221c:	0015000f 	move	$r15,$r0
    2220:	53ff27ff 	b	-220(0xfffff24) # 2144 <strncpy+0x1fc>
    2224:	02800812 	addi.w	$r18,$r0,2(0x2)
    2228:	53feebff 	b	-280(0xffffee8) # 2110 <strncpy+0x1c8>
    222c:	02801012 	addi.w	$r18,$r0,4(0x4)
    2230:	53fee3ff 	b	-288(0xffffee0) # 2110 <strncpy+0x1c8>
    2234:	02801412 	addi.w	$r18,$r0,5(0x5)
    2238:	53fedbff 	b	-296(0xffffed8) # 2110 <strncpy+0x1c8>
    223c:	02801812 	addi.w	$r18,$r0,6(0x6)
    2240:	53fed3ff 	b	-304(0xffffed0) # 2110 <strncpy+0x1c8>
    for (; n && (*d = *s); n--, s++, d++)
    2244:	2900008f 	st.b	$r15,$r4,0
    2248:	0015008d 	move	$r13,$r4
    224c:	53fdd7ff 	b	-556(0xffffdd4) # 2020 <strncpy+0xd8>

0000000000002250 <open>:
#include <unistd.h>

#include "syscall.h"

int open(const char *path, int flags)
{
    2250:	0015008c 	move	$r12,$r4
    2254:	001500a6 	move	$r6,$r5
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
}

static inline long __syscall4(long n, long a, long b, long c, long d)
{
    register long a7 __asm__("a7") = n;
    2258:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a0 __asm__("a0") = a;
    225c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2260:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    2264:	02800807 	addi.w	$r7,$r0,2(0x2)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    2268:	002b0000 	syscall	0x0
    return syscall(SYS_openat, AT_FDCWD, path, flags, O_RDWR);
    226c:	00408084 	slli.w	$r4,$r4,0x0
}
    2270:	4c000020 	jirl	$r0,$r1,0

0000000000002274 <openat>:
    register long a7 __asm__("a7") = n;
    2274:	0280e00b 	addi.w	$r11,$r0,56(0x38)
    register long a3 __asm__("a3") = d;
    2278:	02860007 	addi.w	$r7,$r0,384(0x180)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    227c:	002b0000 	syscall	0x0

int openat(int dirfd,const char *path, int flags)
{
    return syscall(SYS_openat, dirfd, path, flags, 0600);
    2280:	00408084 	slli.w	$r4,$r4,0x0
}
    2284:	4c000020 	jirl	$r0,$r1,0

0000000000002288 <close>:
    register long a7 __asm__("a7") = n;
    2288:	0280e40b 	addi.w	$r11,$r0,57(0x39)
    __asm_syscall("r"(a7), "0"(a0))
    228c:	002b0000 	syscall	0x0

int close(int fd)
{
    return syscall(SYS_close, fd);
    2290:	00408084 	slli.w	$r4,$r4,0x0
}
    2294:	4c000020 	jirl	$r0,$r1,0

0000000000002298 <read>:
    register long a7 __asm__("a7") = n;
    2298:	0280fc0b 	addi.w	$r11,$r0,63(0x3f)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    229c:	002b0000 	syscall	0x0

ssize_t read(int fd, void *buf, size_t len)
{
    return syscall(SYS_read, fd, buf, len);
}
    22a0:	4c000020 	jirl	$r0,$r1,0

00000000000022a4 <write>:
    register long a7 __asm__("a7") = n;
    22a4:	0281000b 	addi.w	$r11,$r0,64(0x40)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    22a8:	002b0000 	syscall	0x0

ssize_t write(int fd, const void *buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
    22ac:	4c000020 	jirl	$r0,$r1,0

00000000000022b0 <getpid>:
    register long a7 __asm__("a7") = n;
    22b0:	0282b00b 	addi.w	$r11,$r0,172(0xac)
    __asm_syscall("r"(a7))
    22b4:	002b0000 	syscall	0x0

pid_t getpid(void)
{
    return syscall(SYS_getpid);
    22b8:	00408084 	slli.w	$r4,$r4,0x0
}
    22bc:	4c000020 	jirl	$r0,$r1,0

00000000000022c0 <getppid>:
    register long a7 __asm__("a7") = n;
    22c0:	0282b40b 	addi.w	$r11,$r0,173(0xad)
    __asm_syscall("r"(a7))
    22c4:	002b0000 	syscall	0x0

pid_t getppid(void)
{
    return syscall(SYS_getppid);
    22c8:	00408084 	slli.w	$r4,$r4,0x0
}
    22cc:	4c000020 	jirl	$r0,$r1,0

00000000000022d0 <sched_yield>:
    register long a7 __asm__("a7") = n;
    22d0:	0281f00b 	addi.w	$r11,$r0,124(0x7c)
    __asm_syscall("r"(a7))
    22d4:	002b0000 	syscall	0x0

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
    22d8:	00408084 	slli.w	$r4,$r4,0x0
}
    22dc:	4c000020 	jirl	$r0,$r1,0

00000000000022e0 <fork>:
    register long a7 __asm__("a7") = n;
    22e0:	0283700b 	addi.w	$r11,$r0,220(0xdc)
    register long a0 __asm__("a0") = a;
    22e4:	02804404 	addi.w	$r4,$r0,17(0x11)
    register long a1 __asm__("a1") = b;
    22e8:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    22ec:	002b0000 	syscall	0x0

pid_t fork(void)
{
    return syscall(SYS_clone, SIGCHLD, 0);
    22f0:	00408084 	slli.w	$r4,$r4,0x0
}
    22f4:	4c000020 	jirl	$r0,$r1,0

00000000000022f8 <clone>:

pid_t clone(int (*fn)(void *arg), void *arg, void *stack, size_t stack_size, unsigned long flags)
{
    22f8:	001500c5 	move	$r5,$r6
    if (stack)
    22fc:	400008c0 	beqz	$r6,8(0x8) # 2304 <clone+0xc>
	stack += stack_size;
    2300:	00109cc5 	add.d	$r5,$r6,$r7

    return __clone(fn, stack, flags, NULL, NULL, NULL);
    2304:	00408106 	slli.w	$r6,$r8,0x0
    2308:	00150009 	move	$r9,$r0
    230c:	00150008 	move	$r8,$r0
    2310:	00150007 	move	$r7,$r0
    2314:	5002c800 	b	712(0x2c8) # 25dc <__clone>

0000000000002318 <exit>:
    register long a7 __asm__("a7") = n;
    2318:	0281740b 	addi.w	$r11,$r0,93(0x5d)
    __asm_syscall("r"(a7), "0"(a0))
    231c:	002b0000 	syscall	0x0
    //return syscall(SYS_clone, fn, stack, flags, NULL, NULL, NULL);
}
void exit(int code)
{
    syscall(SYS_exit, code);
}
    2320:	4c000020 	jirl	$r0,$r1,0

0000000000002324 <waitpid>:
    register long a7 __asm__("a7") = n;
    2324:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a3 __asm__("a3") = d;
    2328:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    232c:	002b0000 	syscall	0x0

int waitpid(int pid, int *code, int options)
{
    return syscall(SYS_wait4, pid, code, options, 0);
    2330:	00408084 	slli.w	$r4,$r4,0x0
}
    2334:	4c000020 	jirl	$r0,$r1,0

0000000000002338 <exec>:
    register long a7 __asm__("a7") = n;
    2338:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0))
    233c:	002b0000 	syscall	0x0

int exec(char *name)
{
    return syscall(SYS_execve, name);
    2340:	00408084 	slli.w	$r4,$r4,0x0
}
    2344:	4c000020 	jirl	$r0,$r1,0

0000000000002348 <execve>:
    register long a7 __asm__("a7") = n;
    2348:	0283740b 	addi.w	$r11,$r0,221(0xdd)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    234c:	002b0000 	syscall	0x0

int execve(const char *name, char *const argv[], char *const argp[])
{
    return syscall(SYS_execve, name, argv, argp);
    2350:	00408084 	slli.w	$r4,$r4,0x0
}
    2354:	4c000020 	jirl	$r0,$r1,0

0000000000002358 <times>:
    register long a7 __asm__("a7") = n;
    2358:	0282640b 	addi.w	$r11,$r0,153(0x99)
    __asm_syscall("r"(a7), "0"(a0))
    235c:	002b0000 	syscall	0x0

int times(void *mytimes)
{
	return syscall(SYS_times, mytimes);
    2360:	00408084 	slli.w	$r4,$r4,0x0
}
    2364:	4c000020 	jirl	$r0,$r1,0

0000000000002368 <get_time>:

int64 get_time()
{
    2368:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    register long a7 __asm__("a7") = n;
    236c:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    register long a0 __asm__("a0") = a;
    2370:	00150064 	move	$r4,$r3
    register long a1 __asm__("a1") = b;
    2374:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2378:	002b0000 	syscall	0x0
    }
}

int sys_get_time(TimeVal *ts, int tz)
{
    return syscall(SYS_gettimeofday, ts, tz);
    237c:	00408084 	slli.w	$r4,$r4,0x0
    if (err == 0)
    2380:	44003c80 	bnez	$r4,60(0x3c) # 23bc <get_time+0x54>
        return ((time.sec & 0xffff) * 1000 + time.usec / 1000);
    2384:	15c6a7e4 	lu12i.w	$r4,-117441(0xe353f)
    2388:	039f3c8c 	ori	$r12,$r4,0x7cf
    238c:	28c02064 	ld.d	$r4,$r3,8(0x8)
    2390:	2a40006d 	ld.hu	$r13,$r3,0
    2394:	169374ac 	lu32i.d	$r12,301989(0x49ba5)
    2398:	0308318c 	lu52i.d	$r12,$r12,524(0x20c)
    239c:	00450c84 	srli.d	$r4,$r4,0x3
    23a0:	001eb084 	mulh.du	$r4,$r4,$r12
    23a4:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
    23a8:	001db1ac 	mul.d	$r12,$r13,$r12
    23ac:	00451084 	srli.d	$r4,$r4,0x4
    23b0:	00109184 	add.d	$r4,$r12,$r4
}
    23b4:	02c04063 	addi.d	$r3,$r3,16(0x10)
    23b8:	4c000020 	jirl	$r0,$r1,0
        return -1;
    23bc:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    23c0:	53fff7ff 	b	-12(0xffffff4) # 23b4 <get_time+0x4c>

00000000000023c4 <sys_get_time>:
    register long a7 __asm__("a7") = n;
    23c4:	0282a40b 	addi.w	$r11,$r0,169(0xa9)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23c8:	002b0000 	syscall	0x0
    return syscall(SYS_gettimeofday, ts, tz);
    23cc:	00408084 	slli.w	$r4,$r4,0x0
}
    23d0:	4c000020 	jirl	$r0,$r1,0

00000000000023d4 <time>:
    register long a7 __asm__("a7") = n;
    23d4:	0290980b 	addi.w	$r11,$r0,1062(0x426)
    __asm_syscall("r"(a7), "0"(a0))
    23d8:	002b0000 	syscall	0x0

int time(unsigned long *tloc)
{
    return syscall(SYS_time, tloc);
    23dc:	00408084 	slli.w	$r4,$r4,0x0
}
    23e0:	4c000020 	jirl	$r0,$r1,0

00000000000023e4 <sleep>:

int sleep(unsigned long long time)
{
    23e4:	02ffc063 	addi.d	$r3,$r3,-16(0xff0)
    TimeVal tv = {.sec = time, .usec = 0};
    23e8:	27000064 	stptr.d	$r4,$r3,0
    register long a0 __asm__("a0") = a;
    23ec:	00150064 	move	$r4,$r3
    23f0:	29c02060 	st.d	$r0,$r3,8(0x8)
    register long a7 __asm__("a7") = n;
    23f4:	0281940b 	addi.w	$r11,$r0,101(0x65)
    register long a1 __asm__("a1") = b;
    23f8:	00150085 	move	$r5,$r4
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    23fc:	002b0000 	syscall	0x0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2400:	44001080 	bnez	$r4,16(0x10) # 2410 <sleep+0x2c>
    return 0;
    2404:	00150004 	move	$r4,$r0
}
    2408:	02c04063 	addi.d	$r3,$r3,16(0x10)
    240c:	4c000020 	jirl	$r0,$r1,0
    if (syscall(SYS_nanosleep, &tv, &tv)) return tv.sec;
    2410:	24000064 	ldptr.w	$r4,$r3,0
}
    2414:	02c04063 	addi.d	$r3,$r3,16(0x10)
    2418:	4c000020 	jirl	$r0,$r1,0

000000000000241c <set_priority>:
    register long a7 __asm__("a7") = n;
    241c:	0282300b 	addi.w	$r11,$r0,140(0x8c)
    __asm_syscall("r"(a7), "0"(a0))
    2420:	002b0000 	syscall	0x0

int set_priority(int prio)
{
    return syscall(SYS_setpriority, prio);
    2424:	00408084 	slli.w	$r4,$r4,0x0
}
    2428:	4c000020 	jirl	$r0,$r1,0

000000000000242c <mmap>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
}

static inline long __syscall6(long n, long a, long b, long c, long d, long e, long f)
{
    register long a7 __asm__("a7") = n;
    242c:	0283780b 	addi.w	$r11,$r0,222(0xde)
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    register long a3 __asm__("a3") = d;
    register long a4 __asm__("a4") = e;
    register long a5 __asm__("a5") = f;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5))
    2430:	002b0000 	syscall	0x0

void *mmap(void *start, size_t len, int prot, int flags, int fd, off_t off)
{
    return syscall(SYS_mmap, start, len, prot, flags, fd, off);
}
    2434:	4c000020 	jirl	$r0,$r1,0

0000000000002438 <munmap>:
    register long a7 __asm__("a7") = n;
    2438:	02835c0b 	addi.w	$r11,$r0,215(0xd7)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    243c:	002b0000 	syscall	0x0

int munmap(void *start, size_t len)
{
    return syscall(SYS_munmap, start, len);
    2440:	00408084 	slli.w	$r4,$r4,0x0
}
    2444:	4c000020 	jirl	$r0,$r1,0

0000000000002448 <wait>:

int wait(int *code)
{
    2448:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    244c:	0284100b 	addi.w	$r11,$r0,260(0x104)
    register long a0 __asm__("a0") = a;
    2450:	02bffc04 	addi.w	$r4,$r0,-1(0xfff)
    register long a2 __asm__("a2") = c;
    2454:	00150006 	move	$r6,$r0
    register long a3 __asm__("a3") = d;
    2458:	00150007 	move	$r7,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3))
    245c:	002b0000 	syscall	0x0
    return syscall(SYS_wait4, pid, code, options, 0);
    2460:	00408084 	slli.w	$r4,$r4,0x0
    return waitpid((int)-1, code, 0);
}
    2464:	4c000020 	jirl	$r0,$r1,0

0000000000002468 <spawn>:
    register long a7 __asm__("a7") = n;
    2468:	0286400b 	addi.w	$r11,$r0,400(0x190)
    __asm_syscall("r"(a7), "0"(a0))
    246c:	002b0000 	syscall	0x0

int spawn(char *file)
{
    return syscall(SYS_spawn, file);
    2470:	00408084 	slli.w	$r4,$r4,0x0
}
    2474:	4c000020 	jirl	$r0,$r1,0

0000000000002478 <mailread>:
    register long a7 __asm__("a7") = n;
    2478:	0286440b 	addi.w	$r11,$r0,401(0x191)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    247c:	002b0000 	syscall	0x0

int mailread(void *buf, int len)
{
    return syscall(SYS_mailread, buf, len);
    2480:	00408084 	slli.w	$r4,$r4,0x0
}
    2484:	4c000020 	jirl	$r0,$r1,0

0000000000002488 <mailwrite>:
    register long a7 __asm__("a7") = n;
    2488:	0286480b 	addi.w	$r11,$r0,402(0x192)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    248c:	002b0000 	syscall	0x0

int mailwrite(int pid, void *buf, int len)
{
    return syscall(SYS_mailwrite, pid, buf, len);
    2490:	00408084 	slli.w	$r4,$r4,0x0
}
    2494:	4c000020 	jirl	$r0,$r1,0

0000000000002498 <fstat>:
    register long a7 __asm__("a7") = n;
    2498:	0281400b 	addi.w	$r11,$r0,80(0x50)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    249c:	002b0000 	syscall	0x0

int fstat(int fd, struct kstat *st)
{
    return syscall(SYS_fstat, fd, st);
    24a0:	00408084 	slli.w	$r4,$r4,0x0
}
    24a4:	4c000020 	jirl	$r0,$r1,0

00000000000024a8 <sys_linkat>:
    register long a7 __asm__("a7") = n;
    24a8:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a4 __asm__("a4") = e;
    24ac:	00df0108 	bstrpick.d	$r8,$r8,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24b0:	002b0000 	syscall	0x0

int sys_linkat(int olddirfd, char *oldpath, int newdirfd, char *newpath, unsigned int flags)
{
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24b4:	00408084 	slli.w	$r4,$r4,0x0
}
    24b8:	4c000020 	jirl	$r0,$r1,0

00000000000024bc <sys_unlinkat>:
    register long a7 __asm__("a7") = n;
    24bc:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a2 __asm__("a2") = c;
    24c0:	00df00c6 	bstrpick.d	$r6,$r6,0x1f,0x0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    24c4:	002b0000 	syscall	0x0

int sys_unlinkat(int dirfd, char *path, unsigned int flags)
{
    return syscall(SYS_unlinkat, dirfd, path, flags);
    24c8:	00408084 	slli.w	$r4,$r4,0x0
}
    24cc:	4c000020 	jirl	$r0,$r1,0

00000000000024d0 <link>:

int link(char *old_path, char *new_path)
{
    24d0:	0015008c 	move	$r12,$r4
    24d4:	001500a7 	move	$r7,$r5
    register long a7 __asm__("a7") = n;
    24d8:	0280940b 	addi.w	$r11,$r0,37(0x25)
    register long a0 __asm__("a0") = a;
    24dc:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    24e0:	00150185 	move	$r5,$r12
    register long a2 __asm__("a2") = c;
    24e4:	02be7006 	addi.w	$r6,$r0,-100(0xf9c)
    register long a4 __asm__("a4") = e;
    24e8:	00150008 	move	$r8,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    24ec:	002b0000 	syscall	0x0
    return syscall(SYS_linkat, olddirfd, oldpath, newdirfd, newpath, flags);
    24f0:	00408084 	slli.w	$r4,$r4,0x0
    return sys_linkat(AT_FDCWD, old_path, AT_FDCWD, new_path, 0);
}
    24f4:	4c000020 	jirl	$r0,$r1,0

00000000000024f8 <unlink>:

int unlink(char *path)
{
    24f8:	00150085 	move	$r5,$r4
    register long a7 __asm__("a7") = n;
    24fc:	02808c0b 	addi.w	$r11,$r0,35(0x23)
    register long a0 __asm__("a0") = a;
    2500:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a2 __asm__("a2") = c;
    2504:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2508:	002b0000 	syscall	0x0
    return syscall(SYS_unlinkat, dirfd, path, flags);
    250c:	00408084 	slli.w	$r4,$r4,0x0
    return sys_unlinkat(AT_FDCWD, path, 0);
}
    2510:	4c000020 	jirl	$r0,$r1,0

0000000000002514 <uname>:
    register long a7 __asm__("a7") = n;
    2514:	0282800b 	addi.w	$r11,$r0,160(0xa0)
    __asm_syscall("r"(a7), "0"(a0))
    2518:	002b0000 	syscall	0x0

int uname(void *buf)
{
    return syscall(SYS_uname, buf);
    251c:	00408084 	slli.w	$r4,$r4,0x0
}
    2520:	4c000020 	jirl	$r0,$r1,0

0000000000002524 <brk>:
    register long a7 __asm__("a7") = n;
    2524:	0283580b 	addi.w	$r11,$r0,214(0xd6)
    __asm_syscall("r"(a7), "0"(a0))
    2528:	002b0000 	syscall	0x0

int brk(void *addr)
{
    return syscall(SYS_brk, addr);
    252c:	00408084 	slli.w	$r4,$r4,0x0
}
    2530:	4c000020 	jirl	$r0,$r1,0

0000000000002534 <getcwd>:
    register long a7 __asm__("a7") = n;
    2534:	0280440b 	addi.w	$r11,$r0,17(0x11)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2538:	002b0000 	syscall	0x0

char *getcwd(char *buf, size_t size){
    return syscall(SYS_getcwd, buf, size);
}
    253c:	4c000020 	jirl	$r0,$r1,0

0000000000002540 <chdir>:
    register long a7 __asm__("a7") = n;
    2540:	0280c40b 	addi.w	$r11,$r0,49(0x31)
    __asm_syscall("r"(a7), "0"(a0))
    2544:	002b0000 	syscall	0x0

int chdir(const char *path){
    return syscall(SYS_chdir, path);
    2548:	00408084 	slli.w	$r4,$r4,0x0
}
    254c:	4c000020 	jirl	$r0,$r1,0

0000000000002550 <mkdir>:

int mkdir(const char *path, mode_t mode){
    2550:	0015008c 	move	$r12,$r4
    return syscall(SYS_mkdirat, AT_FDCWD, path, mode);
    2554:	00df00a6 	bstrpick.d	$r6,$r5,0x1f,0x0
    register long a7 __asm__("a7") = n;
    2558:	0280880b 	addi.w	$r11,$r0,34(0x22)
    register long a0 __asm__("a0") = a;
    255c:	02be7004 	addi.w	$r4,$r0,-100(0xf9c)
    register long a1 __asm__("a1") = b;
    2560:	00150185 	move	$r5,$r12
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2564:	002b0000 	syscall	0x0
    2568:	00408084 	slli.w	$r4,$r4,0x0
}
    256c:	4c000020 	jirl	$r0,$r1,0

0000000000002570 <getdents>:
    register long a7 __asm__("a7") = n;
    2570:	0280f40b 	addi.w	$r11,$r0,61(0x3d)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    2574:	002b0000 	syscall	0x0

int getdents(int fd, struct linux_dirent64 *dirp64, unsigned long len){
    //return syscall(SYS_getdents64, fd, dirp64, len);
    return syscall(SYS_getdents64, fd, dirp64, len);
    2578:	00408084 	slli.w	$r4,$r4,0x0
}
    257c:	4c000020 	jirl	$r0,$r1,0

0000000000002580 <pipe>:
    register long a7 __asm__("a7") = n;
    2580:	0280ec0b 	addi.w	$r11,$r0,59(0x3b)
    register long a1 __asm__("a1") = b;
    2584:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    2588:	002b0000 	syscall	0x0

int pipe(int fd[2]){
    return syscall(SYS_pipe2, fd, 0);
    258c:	00408084 	slli.w	$r4,$r4,0x0
}
    2590:	4c000020 	jirl	$r0,$r1,0

0000000000002594 <dup>:
    register long a7 __asm__("a7") = n;
    2594:	02805c0b 	addi.w	$r11,$r0,23(0x17)
    __asm_syscall("r"(a7), "0"(a0))
    2598:	002b0000 	syscall	0x0

int dup(int fd){
    return syscall(SYS_dup, fd);
    259c:	00408084 	slli.w	$r4,$r4,0x0
}
    25a0:	4c000020 	jirl	$r0,$r1,0

00000000000025a4 <dup2>:
    register long a7 __asm__("a7") = n;
    25a4:	0280600b 	addi.w	$r11,$r0,24(0x18)
    register long a2 __asm__("a2") = c;
    25a8:	00150006 	move	$r6,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
    25ac:	002b0000 	syscall	0x0

int dup2(int old, int new){
    return syscall(SYS_dup3, old, new, 0);
    25b0:	00408084 	slli.w	$r4,$r4,0x0
}
    25b4:	4c000020 	jirl	$r0,$r1,0

00000000000025b8 <mount>:
    register long a7 __asm__("a7") = n;
    25b8:	0280a00b 	addi.w	$r11,$r0,40(0x28)
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4))
    25bc:	002b0000 	syscall	0x0

int mount(const char *special, const char *dir, const char *fstype, unsigned long flags, const void *data)
{
        return syscall(SYS_mount, special, dir, fstype, flags, data);
    25c0:	00408084 	slli.w	$r4,$r4,0x0
}
    25c4:	4c000020 	jirl	$r0,$r1,0

00000000000025c8 <umount>:
    register long a7 __asm__("a7") = n;
    25c8:	02809c0b 	addi.w	$r11,$r0,39(0x27)
    register long a1 __asm__("a1") = b;
    25cc:	00150005 	move	$r5,$r0
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
    25d0:	002b0000 	syscall	0x0

int umount(const char *special)
{
        return syscall(SYS_umount2, special, 0);
    25d4:	00408084 	slli.w	$r4,$r4,0x0
}
    25d8:	4c000020 	jirl	$r0,$r1,0

00000000000025dc <__clone>:

.global __clone
.type  __clone, %function
__clone:
	# Save func and arg to stack
	addi.d $a1, $a1, -16
    25dc:	02ffc0a5 	addi.d	$r5,$r5,-16(0xff0)
	st.d $a0, $a1, 0
    25e0:	29c000a4 	st.d	$r4,$r5,0
	st.d $a3, $a1, 8
    25e4:	29c020a7 	st.d	$r7,$r5,8(0x8)

	# Call SYS_clone
	move $a0, $a2
    25e8:	001500c4 	move	$r4,$r6
	move $a2, $a4
    25ec:	00150106 	move	$r6,$r8
	move $a3, $a5
    25f0:	00150127 	move	$r7,$r9
	move $a4, $a6
    25f4:	00150148 	move	$r8,$r10
	li.d $a7, 220 # SYS_clone
    25f8:	0383700b 	ori	$r11,$r0,0xdc
	syscall 0
    25fc:	002b0000 	syscall	0x0

	beqz $a0, 1f
    2600:	40000880 	beqz	$r4,8(0x8) # 2608 <__clone+0x2c>
	# Parent
	jirl	$zero, $ra, 0
    2604:	4c000020 	jirl	$r0,$r1,0

	# Child
1:      ld.d $a1, $sp, 0
    2608:	28c00065 	ld.d	$r5,$r3,0
	ld.d $a0, $sp, 8
    260c:	28c02064 	ld.d	$r4,$r3,8(0x8)
	jirl $zero, $a1, 0
    2610:	4c0000a0 	jirl	$r0,$r5,0

	# Exit
	li.d $a7, 93 # SYS_exit
    2614:	0381740b 	ori	$r11,$r0,0x5d
	syscall 0
    2618:	002b0000 	syscall	0x0
