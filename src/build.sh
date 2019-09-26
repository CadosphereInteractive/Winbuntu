#!/bin/bash

parentDir="$(dirname $PWD)"

xorriso -as mkisofs \
  -isohybrid-mbr ../usr/lib/syslinux/mbr/isohdpfx.bin \
  -c ../isolinux/boot.cat \
  -b ../isolinux/isolinux.bin \
  -no-emul-boot \
  -boot-load-size 4 \
  -boot-info-table \
  -eltorito-alt-boot \
  -e ../boot/grub/efi.img \
  -no-emul-boot \
  -isohybrid-gpt-basdat \
  -o winbuntu.iso \
  $parentDir