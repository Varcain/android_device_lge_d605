cmd_/opt/android/system/device/lge/d605/zram/zram.mod.o := /opt/android/system/kernel/lge/d605/scripts/gcc-wrapper.py arm-eabi-gcc -Wp,-MD,/opt/android/system/device/lge/d605/zram/.zram.mod.o.d  -nostdinc -isystem /opt/android/system/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include -I/opt/android/system/kernel/lge/d605/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/opt/android/system/kernel/lge/d605/include -include /opt/android/system/kernel/lge/d605/include/linux/kconfig.h   -I/opt/android/system/device/lge/d605/zram -D__KERNEL__ -mlittle-endian   -I/opt/android/system/kernel/lge/d605/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -Os -marm -fno-dwarf2-cfi-asm -fstack-protector -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=1024 -Wno-unused-but-set-variable -fomit-frame-pointer -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Wall -Wdeprecated-declarations  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(zram.mod)"  -D"KBUILD_MODNAME=KBUILD_STR(zram)" -DMODULE  -c -o /opt/android/system/device/lge/d605/zram/zram.mod.o /opt/android/system/device/lge/d605/zram/zram.mod.c

source_/opt/android/system/device/lge/d605/zram/zram.mod.o := /opt/android/system/device/lge/d605/zram/zram.mod.c

deps_/opt/android/system/device/lge/d605/zram/zram.mod.o := \
    $(wildcard include/config/module/unload.h) \
  /opt/android/system/kernel/lge/d605/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /opt/android/system/kernel/lge/d605/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /opt/android/system/kernel/lge/d605/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/types.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitsperlong.h \
  /opt/android/system/kernel/lge/d605/include/linux/posix_types.h \
  /opt/android/system/kernel/lge/d605/include/linux/stddef.h \
  /opt/android/system/kernel/lge/d605/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /opt/android/system/kernel/lge/d605/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /opt/android/system/kernel/lge/d605/include/linux/compiler-gcc4.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/posix_types.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/posix_types.h \
  /opt/android/system/kernel/lge/d605/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /opt/android/system/kernel/lge/d605/include/linux/const.h \
  /opt/android/system/kernel/lge/d605/include/linux/stat.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/stat.h \
  /opt/android/system/kernel/lge/d605/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /opt/android/system/kernel/lge/d605/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /opt/android/system/kernel/lge/d605/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/lge/crash/handler.h) \
    $(wildcard include/config/cpu/cp15/mmu.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
  /opt/android/system/kernel/lge/d605/include/linux/sysinfo.h \
  /opt/android/system/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/../lib/gcc/arm-eabi/4.6.x-google/include/stdarg.h \
  /opt/android/system/kernel/lge/d605/include/linux/linkage.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/linkage.h \
  /opt/android/system/kernel/lge/d605/include/linux/bitops.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/bitops.h \
  /opt/android/system/kernel/lge/d605/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /opt/android/system/kernel/lge/d605/include/linux/typecheck.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/irqflags.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/hwcap.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/non-atomic.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/fls64.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/sched.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/hweight.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/arch_hweight.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/const_hweight.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/lock.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/le.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/byteorder.h \
  /opt/android/system/kernel/lge/d605/include/linux/byteorder/little_endian.h \
  /opt/android/system/kernel/lge/d605/include/linux/swab.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/swab.h \
  /opt/android/system/kernel/lge/d605/include/linux/byteorder/generic.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /opt/android/system/kernel/lge/d605/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /opt/android/system/kernel/lge/d605/include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /opt/android/system/kernel/lge/d605/include/linux/init.h \
    $(wildcard include/config/hotplug.h) \
  /opt/android/system/kernel/lge/d605/include/linux/dynamic_debug.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/div64.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/compiler.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /opt/android/system/kernel/lge/d605/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /opt/android/system/kernel/lge/d605/include/linux/seqlock.h \
  /opt/android/system/kernel/lge/d605/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /opt/android/system/kernel/lge/d605/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /opt/android/system/kernel/lge/d605/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/domain.h \
    $(wildcard include/config/verify/permission/fault.h) \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/emulate/domain/manager/v7.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /opt/android/system/kernel/lge/d605/include/linux/stringify.h \
  /opt/android/system/kernel/lge/d605/include/linux/bottom_half.h \
  /opt/android/system/kernel/lge/d605/include/linux/spinlock_types.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/spinlock_types.h \
  /opt/android/system/kernel/lge/d605/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rwlock_types.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/spinlock.h \
    $(wildcard include/config/msm/krait/wfe/fixup.h) \
    $(wildcard include/config/arm/ticket/locks.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/hw_breakpoint.h \
  /opt/android/system/kernel/lge/d605/include/linux/rwlock.h \
  /opt/android/system/kernel/lge/d605/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /opt/android/system/kernel/lge/d605/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/atomic.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /opt/android/system/kernel/lge/d605/include/asm-generic/cmpxchg-local.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/atomic-long.h \
  /opt/android/system/kernel/lge/d605/include/linux/math64.h \
  /opt/android/system/kernel/lge/d605/include/linux/kmod.h \
  /opt/android/system/kernel/lge/d605/include/linux/gfp.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
  /opt/android/system/kernel/lge/d605/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /opt/android/system/kernel/lge/d605/include/linux/wait.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/current.h \
  /opt/android/system/kernel/lge/d605/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /opt/android/system/kernel/lge/d605/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /opt/android/system/kernel/lge/d605/include/linux/nodemask.h \
  /opt/android/system/kernel/lge/d605/include/linux/bitmap.h \
  /opt/android/system/kernel/lge/d605/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/string.h \
  /opt/android/system/kernel/lge/d605/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/glue.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/pgtable-2level-types.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  arch/arm/include/generated/asm/sizes.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/sizes.h \
  /opt/android/system/kernel/lge/d605/arch/arm/mach-msm/include/mach/memory.h \
    $(wildcard include/config/arch/msm7x30.h) \
    $(wildcard include/config/vmsplit/3g.h) \
    $(wildcard include/config/arch/msm/arm11.h) \
    $(wildcard include/config/arch/msm/cortex/a5.h) \
    $(wildcard include/config/cache/l2x0.h) \
    $(wildcard include/config/arch/msm8x60.h) \
    $(wildcard include/config/arch/msm8960.h) \
    $(wildcard include/config/dont/map/hole/after/membank0.h) \
    $(wildcard include/config/arch/msm/scorpion.h) \
    $(wildcard include/config/arch/msm/krait.h) \
    $(wildcard include/config/arch/msm7x27.h) \
  /opt/android/system/kernel/lge/d605/include/asm-generic/memory_model.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /opt/android/system/kernel/lge/d605/include/asm-generic/getorder.h \
  /opt/android/system/kernel/lge/d605/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /opt/android/system/kernel/lge/d605/include/linux/notifier.h \
  /opt/android/system/kernel/lge/d605/include/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/errno.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/errno-base.h \
  /opt/android/system/kernel/lge/d605/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rwsem-spinlock.h \
  /opt/android/system/kernel/lge/d605/include/linux/srcu.h \
  /opt/android/system/kernel/lge/d605/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/preempt/rt.h) \
  /opt/android/system/kernel/lge/d605/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /opt/android/system/kernel/lge/d605/include/linux/bug.h \
  /opt/android/system/kernel/lge/d605/include/linux/completion.h \
  /opt/android/system/kernel/lge/d605/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rcutree.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/sparsemem.h \
  /opt/android/system/kernel/lge/d605/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /opt/android/system/kernel/lge/d605/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/smp.h \
  /opt/android/system/kernel/lge/d605/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /opt/android/system/kernel/lge/d605/include/linux/pfn.h \
  arch/arm/include/generated/asm/percpu.h \
  /opt/android/system/kernel/lge/d605/include/asm-generic/percpu.h \
  /opt/android/system/kernel/lge/d605/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /opt/android/system/kernel/lge/d605/include/asm-generic/topology.h \
  /opt/android/system/kernel/lge/d605/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /opt/android/system/kernel/lge/d605/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /opt/android/system/kernel/lge/d605/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /opt/android/system/kernel/lge/d605/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /opt/android/system/kernel/lge/d605/include/linux/jiffies.h \
  /opt/android/system/kernel/lge/d605/include/linux/timex.h \
  /opt/android/system/kernel/lge/d605/include/linux/param.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/timex.h \
  /opt/android/system/kernel/lge/d605/arch/arm/mach-msm/include/mach/timex.h \
    $(wildcard include/config/have/arch/has/current/timer.h) \
  /opt/android/system/kernel/lge/d605/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /opt/android/system/kernel/lge/d605/include/linux/rbtree.h \
  /opt/android/system/kernel/lge/d605/include/linux/elf.h \
  /opt/android/system/kernel/lge/d605/include/linux/elf-em.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/elf.h \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/user.h \
  /opt/android/system/kernel/lge/d605/include/linux/kobject.h \
  /opt/android/system/kernel/lge/d605/include/linux/sysfs.h \
  /opt/android/system/kernel/lge/d605/include/linux/kobject_ns.h \
  /opt/android/system/kernel/lge/d605/include/linux/kref.h \
  /opt/android/system/kernel/lge/d605/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /opt/android/system/kernel/lge/d605/include/linux/tracepoint.h \
  /opt/android/system/kernel/lge/d605/include/linux/static_key.h \
  /opt/android/system/kernel/lge/d605/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /opt/android/system/kernel/lge/d605/include/linux/export.h \
    $(wildcard include/config/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /opt/android/system/kernel/lge/d605/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  /opt/android/system/kernel/lge/d605/include/linux/vermagic.h \
  include/generated/utsrelease.h \

/opt/android/system/device/lge/d605/zram/zram.mod.o: $(deps_/opt/android/system/device/lge/d605/zram/zram.mod.o)

$(deps_/opt/android/system/device/lge/d605/zram/zram.mod.o):
