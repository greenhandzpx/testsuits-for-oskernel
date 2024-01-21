# Loongarch Archlinux QEMU镜像

## 使用方法

- 下载release中的`archlinux-minimal-2023.12.13-loong64.qcow2.tar.gz`并放到当前目录
- 解压镜像
```shell
tar xf archlinux-minimal-2023.12.13-loong64.qcow2.tar.gz
```
- 编译QEMU
```shell
# 下载QEMU源码
wget https://download.qemu.org/qemu-8.2.0.tar.xz
# 安装依赖
sudo apt install clang
sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build
sudo apt-get install git-email
sudo apt-get install libaio-dev libbluetooth-dev libcapstone-dev libbrlapi-dev libbz2-dev
sudo apt-get install libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev
sudo apt-get install libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev
sudo apt-get install librbd-dev librdmacm-dev
sudo apt-get install libsasl2-dev libsdl2-dev libseccomp-dev libsnappy-dev libssh-dev
sudo apt-get install libvde-dev libvdeplug-dev libvte-2.91-dev libxen-dev liblzo2-dev
sudo apt-get install valgrind xfslibs-dev 
sudo apt-get install libnfs-dev libiscsi-dev
sudo apt-get install libslirp-dev
# 编译
tar xf qemu-7.2.0.tar.gz
cd qemu-7.2.0
cd build/
../configure  --enable-slirp --target-list=loongarch64-linux-user,loongarch64-softmmu 
make -j$(nproc)
```
- 把`QEMU源码路径/qemu-8.2.0/build`添加进环境路径`PATH`
- 用tmux或者zellij之类的后台任务软件开启一个session，启动虚拟机：
```shell
# 启动QEMU
./run-LA.sh
```
- 稍等一会待虚拟机启动完毕后，再开一个终端，由于我们将宿主机的3333端口映射至虚拟机的22端口，可以通过ssh连接至虚拟机，密码是123：
```shell
ssh -p 3333 root@localhost
```
- 初赛的测试用例已经放在`/root/syscall-tests`下面