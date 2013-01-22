#!/bin/bash
set -e

export PATH=/pub/android-toolchain-r8b/bin:$PATH
export ARCH=arm-linux-androideabi
export CXX=$ARCH-g++
export CC=$ARCH-gcc

scons \
	ARCH='arm' \
	BUILD='release' \
	\
	CC=$CC \
	CXX=$CXX \
	\
	NOCURL=1 \
	TARGET_ANDROID=0 \
	TARGET_D3XP=0 \
	\
	BASEFLAGS='' \
	$*
