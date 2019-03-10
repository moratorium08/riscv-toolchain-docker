#!/bin/sh

git clone https://github.com/riscv/riscv-gnu-toolchain --recursive --depth 1 /riscv/
cd /riscv/
ls
./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d
make linux -j4
cd ..
rm -rf /riscv
