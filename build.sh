#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
case $1 in
	"importconfig")
		make mt7986_rfb_sdmmc_defconfig
	;;
	"config")
		make menuconfig
	;;
	"build")
		make
	;;
	*)
		$0 build
	;;
esac
