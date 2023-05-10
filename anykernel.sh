# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=SiLonT Kernel
maintainer.string1=by azrim @Hiitagiii
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=surya
device.name2=karna
supported.versions=11-13
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot
write_boot
## end install
