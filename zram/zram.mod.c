#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x2caa2c26, "module_layout" },
	{ 0x487bd9f1, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x4d02c89d, "alloc_disk" },
	{ 0x9786e7aa, "blk_cleanup_queue" },
	{ 0xf6bb0afc, "up_read" },
	{ 0x9cd519f8, "blk_queue_io_opt" },
	{ 0x178ba18c, "_raw_spin_unlock" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x14f2ea84, "blk_queue_io_min" },
	{ 0xf087137d, "__dynamic_pr_debug" },
	{ 0x999e8297, "vfree" },
	{ 0x91715312, "sprintf" },
	{ 0x8d342a3e, "sysfs_remove_group" },
	{ 0xc6461973, "__alloc_pages_nodemask" },
	{ 0x3c1ea6eb, "down_read" },
	{ 0x6a9e3454, "fsync_bdev" },
	{ 0xde9360ba, "totalram_pages" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0x7ab3b50e, "kmap_atomic" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x60ea2d6, "kstrtoull" },
	{ 0xc5c67c76, "blk_alloc_queue" },
	{ 0x27e1a049, "printk" },
	{ 0x92b211b6, "sysfs_create_group" },
	{ 0x85281c8a, "del_gendisk" },
	{ 0xed93f29e, "__kunmap_atomic" },
	{ 0x71a50dbc, "register_blkdev" },
	{ 0x27b06b76, "up_write" },
	{ 0xa4a94b1d, "down_write" },
	{ 0xe1a123b2, "contig_page_data" },
	{ 0xa4bb59ff, "bio_endio" },
	{ 0xb5a459dc, "unregister_blkdev" },
	{ 0x40a9b349, "vzalloc" },
	{ 0xdb1ead25, "__free_pages" },
	{ 0x8afd64eb, "blk_queue_make_request" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0x4af47e33, "blk_queue_physical_block_size" },
	{ 0x86a4889a, "kmalloc_order_trace" },
	{ 0x67ea481b, "put_disk" },
	{ 0x5ac15bae, "kstrtou16" },
	{ 0x2df7165, "kmem_cache_alloc_trace" },
	{ 0xc4097c34, "_raw_spin_lock" },
	{ 0x4302d0eb, "free_pages" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x96a6ed45, "add_disk" },
	{ 0x56b63670, "lzo1x_1_compress" },
	{ 0xf30fda27, "lzo1x_decompress_safe" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x676bbc0f, "_set_bit" },
	{ 0xb81960ca, "snprintf" },
	{ 0xc35532c3, "blk_queue_logical_block_size" },
	{ 0x6d044c26, "param_ops_uint" },
	{ 0xad6c6ff5, "bdget_disk" },
	{ 0xfa088897, "__init_rwsem" },
	{ 0x8adb71ca, "flush_dcache_page" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

