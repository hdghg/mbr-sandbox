#!/bin/sh
rm -rf build/
mkdir build
fasm main.asm build/main.bin
dd if=/dev/zero of=build/floppy.img bs=1024 count=1440
dd if=build/main.bin of=build/floppy.img conv=notrunc
echo "Built artifact: build/floppy.img"

