# BPI-R3 u-boot #

- create bootable sdcard
- bootup with sdcard and with bl2+fip for spi-nand on card or usb-stick
- flash bl2+fip to spi-nand
- powerdown and change sw2 and sw6 to emmc
- bootup from spi-nand and flash gpt+bl2+fip to emmc
- optional: load a linux-kernel with initrd and emmc-fdt to unpack rootfs+kernel to emmc rootfs
- change back sw2 and sw1 to do next boot from emmc
