# syscalls简单测试用例

### 配置
先把riscv或者loongarch的交叉编译链的路径放到环境变量PATH中，例如`export PATH=$PATH:/path/to/kendryte-toolchain/bin`
<br>
推荐使用本仓库提供的[K210交叉编译器](res/kendryte-toolchain-ubuntu-amd64-8.2.0-20190409.tar.xz)以及[loongarch交叉编译器](res/toolchain-loongarch64-linux-gnu-gcc8-host-x86_64-2022-07-18.tar.xz)

### 编译
编译所有的syscalls测试用例：
```
cd user
# 编译risc-v64架构的测试用例
./build-oscomp.sh riscv64
# 编译loongarch64架构的测试用例
./build-oscomp.sh loongarch64
```
<!-- 之后也可以使用脚本`src/oscomp/build-single-testcase.sh`来编译单个测例 -->

### 运行
syscalls测试用例程序会生成到目录：
```
# riscv64
user/build/riscv64
# loongarch64
user/build/loongarch64
```
把此文件夹放到待测OS的Fat32文件系统中即可；
