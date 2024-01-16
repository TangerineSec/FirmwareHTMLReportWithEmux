#
# Copyright (C) 2013 lintel<lintel.huang@gmail.com>
#

preinit_ralink_create_drivers() {
	mknod /dev/rdm0 c 253 0
}

boot_hook_add preinit_main preinit_ralink_create_drivers
