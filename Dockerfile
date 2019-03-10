FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
	autoconf \
	automake \
	autotools-dev \
	curl \
	libmpc-dev \
	libmpfr-dev  \
	libgmp-dev  \
	gawk  \
	build-essential  \
	bison  \
	flex  \
	texinfo  \
	gperf  \
	libtool  \
	patchutils  \
	bc  \
	zlib1g-dev  \
	libexpat-dev \
	git

ENV TOP /riscv/
ENV RISCV /riscv/build/
ENV PATH /opt/riscv/bin:${PATH}

COPY install.sh /install.sh
RUN /install.sh
