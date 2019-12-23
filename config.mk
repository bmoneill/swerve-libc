VERSION = 0.01a-dev

# user configurable options

ARCH = i386
ARCH_PREFIX = $(ARCH)-swerve


PREFIX = "/usr/local"

CC=$(ARCH_PREFIX)-gcc
LD=$(CC)
AR=$(ARCH_PREFIX)-ar
RANLIB=$(ARCH_PREFIX)-ranlib
CPPFLAGS = -D__is_libk
CFLAGS = $(CPPFLAGS) -Wall -Os -ffreestanding -fno-pie -std=c99 -pedantic -nostdinc \
		-I$(SRC_DIR)/drivers -I$(LIBC_DIR)/include -nostdlib
TARGET=libc.a
