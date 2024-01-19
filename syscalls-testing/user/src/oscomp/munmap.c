#include "unistd.h"
#include "string.h"
#include "stdio.h"
#include "stdlib.h"

/*
 * 测试成功时输出：
 * "  Hello, mmap success"
 * 测试失败时输出：
 * "mmap error."
 */
static struct statx stx;
void test_munmap(void){
    TEST_START(__func__);
    char *array;
    const char *str = "  Hello, mmap successfully!";
    int fd;

    fd = open("test_mmap.txt", O_RDWR | O_CREATE);
    write(fd, str, strlen(str));
    statx(AT_FDCWD, "test_mmap.txt", &stx);
    printf("file len: %d\n", stx.stx_size);
    array = mmap(NULL, stx.stx_size, PROT_WRITE | PROT_READ, MAP_FILE | MAP_SHARED, fd, 0);
    //printf("return array: %x\n", array);

    if (array == MAP_FAILED) {
	    printf("mmap error.\n");
    } else {
        //printf("mmap content: %s\n", array);
        int ret = munmap(array, stx.stx_size);
        printf("munmap return: %d\n",ret);
        assert(ret == 0);

        if (ret == 0)
            printf("munmap successfully!\n");
    }
    close(fd);

    TEST_END(__func__);
}

int main(void){
    test_munmap();
    return 0;
}
