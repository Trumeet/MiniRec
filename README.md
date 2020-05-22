# MiniRec

An experimental project that builds a minimal Linux system with the capability of repairing a broken system (a.k.a. recovery disc).

## Highlights

* Only 19M! (Although it's still way too big)

* Uses buildroot to compile the kernel as well as programs

* Contains various of commonly used packages, for example, `zip`, `xz`, `unrar`, `p7zip`, and various of FS tools and programs.

* Uses BusyBox as its init system as well as shell. BusyBox provides numerous of utilities.

* Self-contained EFI Stub application, with root image builtin.

* Network is not supported.

* Various of FS support in kernel (for example, Btrfs, Xfs, NTFS...). NVME support enabled.

* My experimental project :D

## Why not ArchLinux ISO?

* Focuses on repairing.

* Tiny. ArchLinux ISO is about ~650MB in size. 

* Trying compiling Linux from "scratch" (although buildroot had done so many things for me)

## Usage

* Download the latest `.efi` in the releases page. (Comming Soon)

* Boot the `.efi` application. 

* Login as `root`.

* That's it!

## Build

Make sure you have 7G free space of disk.

* Clone this repo with submodules.

* cd to buildroot

* `make -jN BR2_EXTERNAL=../minirec_tree/ minirec_defconfig`

* `make -jN`

Sit back and relax. 请坐和放宽。

This might take several ~~minutes~~ hours. Depending on your environment. It took half a hour on my machine with `-j9` (XPS 13 9360). 

Output: `output/images/linux.efi`.

## Development

1. Do not make changes directly to `buildroot/.config`. Use `make nconfig` instead.

2. After making changes to your buildroot config, use `make -jN savedefconfig` to export the puerified config to the board tree.

3. If you wish to change the kernel config, use `make -jN linux-nconfig`. The same, use `make -jN linux-update-defconfig` to export the puerified linux kernel config.

4. Make sure `buildroot/` is clean (no changes are made), by using `git status`.

5. All changes should be made in the device tree.

## Disclaimer

This is an experimental project. It's only used for:

* Debugging & Learning for myself.

* Experiencing the path myself.

* Doing some side-projects.

It does not:

* Guarantee any SLA.

* Work for all of you.

* Guarantee to not damage your data. Your data may be damaged as potential bugs.

* Provide LTS, or actively maintenance.

* Provide fixes or feedbacks on issues.

* Be end user friendly, or have a highly detailed document.

Use it as your own risk.

## Licenses

GPL v2. 

`linuxx64.efi.stub` comes from systemd.
