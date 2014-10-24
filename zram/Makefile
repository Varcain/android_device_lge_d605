KERNELDIR ?= $(OUT)/obj/KERNEL_OBJ

XVM = sub-projects/allocators/xvmalloc-kmod
EXTRA_CFLAGS	:=	-Wall -Wdeprecated-declarations

obj-m		+=	zram.o
zram-objs	:=	zram_drv.o zram_sysfs.o $(XVM)/xvmalloc.o

all:
	make -C $(KERNELDIR) M=$(PWD) modules

clean:
	make -C $(KERNELDIR) M=$(PWD) clean
	@rm -rf *.ko
