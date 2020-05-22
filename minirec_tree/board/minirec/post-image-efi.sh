#!/bin/sh
echo Executing Post Image EFI script: $(pwd)
echo $BR2_EXTERNAL_minirec_tree_PATH
objcopy \
	--add-section .linux="./output/images/bzImage" \
	--change-section-vma .linux=0x40000 "$BR2_EXTERNAL_minirec_tree_PATH/linuxx64.efi.stub" \
	./output/images/linux.efi
