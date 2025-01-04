#!/bin/bash

echo "Enter file name (eg HelloWorld): "
read tempName

arm-none-eabi-as -o "$tempName.o" "$tempName.asm"
arm-none-eabi-ld -o "$tempName" "$tempName.o"
qemu-arm "./$tempName"