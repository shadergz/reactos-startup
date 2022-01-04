#! /bin/bash

IMAGE="ReactOS-0.4.14.iso"
STORAGE="ROSdisk.qcow2"
STORAGE_SIZE="1024M"

SYS_RAM="1024"

QEMU_TARGET="x86_64"

QEMU="qemu-system-$QEMU_TARGET"

QEMU_SPECS="-smp cores=2 -m $SYS_RAM"

# Checking if the storage file exist
if [ -f $STORAGE ]; then
# Do a file checking sum and dump the result to a file
    openssl dgst -sha224 $STORAGE > ROS.chk
else
# Instead create a new storage file
    qemu-img create -f qcow2 $STORAGE $STORAGE_SIZE  
    $QEMU $QEMU_SPECS -cdrom $IMAGE -boot d $STORAGE
fi

$QEMU $QEMU_SPECS -hda $STORAGE
