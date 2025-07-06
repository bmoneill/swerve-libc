# swerve libc

The standard C library for [swerve](https://github.com/bmoneill/swerve).

## Prerequisites for building

* GNU Binutils cross-compiled for swerve
* GCC cross-compiled for swerve
* GNU Make

## Building

1. Edit `config.mk` to your liking
1. Run `make -j2` (note: you should change 2 to the number of processor threads
   you have)

## Copying

All of the source code for the libc are licensed under the GNU GPL v3 (see
LICENSE.gpl), unless otherwise noted. All documentation (in the doc directory)
is licensed under the GNU FDL v1.3 (see LICENSE.gfdl), unless otherwise noted.
All videos, images, and audio are licensed under the Creative Commons
Attribution Share-Alike 3.0 Unported License
(<http://creativecommons.org/licenses/by-sa/3.0/>).
