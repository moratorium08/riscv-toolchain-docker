# riscv-toolchain-docker

This repository is a Dockerfile for building 32-bit version of [riscv-toolchain](https://github.com/riscv/riscv-gnu-toolchain).

## rv32gc Image [moratorium08/moratorium08/riscv-toolchain:rv32gc](https://hub.docker.com/r/moratorium08/riscv-toolchain)

This image includes riscv-toolchain binaries built for rv32gc(32 bit version). Base image is ubuntu:18:04. Image size is 1.62GB.


## Getting started

Install docker. Then do followings (<strong>note: Linux needs root permission</strong>)

```
$ docker pull moratorium08/riscv-toolchain:rv32gc
$ docker run -it moratorium08/riscv-toolchain:rv32gc
```

You may see bash prompt. You can run these riscv32 tools

```
root@4e72ca9a943f:/# riscv32-unknown-linux-gnu-
riscv32-unknown-linux-gnu-addr2line      riscv32-unknown-linux-gnu-gcc-nm         riscv32-unknown-linux-gnu-nm
riscv32-unknown-linux-gnu-ar             riscv32-unknown-linux-gnu-gcc-ranlib     riscv32-unknown-linux-gnu-objcopy
riscv32-unknown-linux-gnu-as             riscv32-unknown-linux-gnu-gcov           riscv32-unknown-linux-gnu-objdump
riscv32-unknown-linux-gnu-c++            riscv32-unknown-linux-gnu-gcov-dump      riscv32-unknown-linux-gnu-ranlib
riscv32-unknown-linux-gnu-c++filt        riscv32-unknown-linux-gnu-gcov-tool      riscv32-unknown-linux-gnu-readelf
riscv32-unknown-linux-gnu-cpp            riscv32-unknown-linux-gnu-gdb            riscv32-unknown-linux-gnu-run
riscv32-unknown-linux-gnu-elfedit        riscv32-unknown-linux-gnu-gdb-add-index  riscv32-unknown-linux-gnu-size
riscv32-unknown-linux-gnu-g++            riscv32-unknown-linux-gnu-gfortran       riscv32-unknown-linux-gnu-strings
riscv32-unknown-linux-gnu-gcc            riscv32-unknown-linux-gnu-gprof          riscv32-unknown-linux-gnu-strip
riscv32-unknown-linux-gnu-gcc-8.2.0      riscv32-unknown-linux-gnu-ld
riscv32-unknown-linux-gnu-gcc-ar         riscv32-unknown-linux-gnu-ld.bfd
```

When you want to use them to your programs, attach your directory which contains the programs. 


```
$ sudo docker run -it -w $PWD -v $PWD:$PWD moratorium08/riscv-toolchain:rv32gc
```

