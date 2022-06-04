#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
DEFCONFIG=mt7986a_sd_rfb_defconfig
DEFCFGFILE=configs/$DEFCONFIG

#DTSFILE=$(grep '^CONFIG_DEFAULT_DEVICE_TREE' $DEFCFGFILE | sed -e 's/^.*="\([a-z0-9_-]\+\)"$/arch\/arm\/dts\/\1.dts/')
DTSFILE=arch/arm/dts/mt7986a-sd-rfb.dts
DTSIFILE=arch/arm/dts/mt7986.dtsi

case $1 in
	"dts")
		nano $DTSFILE
	;;
	"dtsi")
		nano $DTSIFILE
	;;
	"defconfig")
		nano $DEFCFGFILE
	;;
	"importconfig")
		make $DEFCONFIG
	;;
	"config")
		make menuconfig
	;;
	"build")
		make
	;;
	"")
		$0 build
	;;
esac
