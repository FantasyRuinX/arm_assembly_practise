#!/bin/bash

echo "Enter file name (eg HelloWorld): "
read tempName

if arm-none-eabi-gcc --version | grep "arm-none-eabi-gcc"; then
    arm-none-eabi-as -o "$tempName.o" "$tempName.asm"
    arm-none-eabi-ld -o "$tempName" "$tempName.o"
else
    echo "Please install arm-none-eabi-gcc to use this script"
fi

if qemu-arm --version | grep "qemu-arm"; then
    qemu-arm "./$tempName"
else
    echo "Please install qemu-arm to use this script"
fi