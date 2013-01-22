#!/bin/bash
set -e

scons \
	ARCH='arm' \
	BUILD='release' \
	\
	NOCURL=1 \
	TARGET_RASPI=1 \
	TARGET_D3XP=0 \
	\
	BASEFLAGS='-I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads' \
	$*
