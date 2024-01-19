#!/bin/sh

BIOS=./edk2-loongarch64-code.fd 
IMG=archlinux-minimal-2023.12.13-loong64.qcow2
DISK=pre-disk.img

# test mount of the OS
dd if=/dev/zero of=${DISK} bs=1M count=64
mkfs.vfat ${DISK}

qemu-system-loongarch64 \
    -m 8G \
    -cpu la464-loongarch-cpu \
    -machine virt \
    -smp 4 \
    -bios ${BIOS} \
    -device virtio-gpu-pci \
    -net nic -net user,hostfwd=tcp::3333-:22 \
    -device nec-usb-xhci,id=xhci,addr=0x1b \
    -device usb-tablet,id=tablet,bus=xhci.0,port=1 \
    -device usb-kbd,id=keyboard,bus=xhci.0,port=2 \
    -hda ${IMG} \
    -hdb ${DISK}
    # -serial "mon:stdio"
