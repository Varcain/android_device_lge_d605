#!/system/bin/sh
# Copyright (c) 2012, Code Aurora Forum. All rights reserved.
# Copyright (c) 2012, LG Electronics Inc. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of Code Aurora Forum, Inc. nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

#
# Allow unique persistent serial numbers for devices connected via usb
# User needs to set unique usb serial number to persist.usb.serialno and
# if persistent serial number is not set then Update USB serial number if
# passed from command line
#

#
# Instead of ro.serialno, we use model name + chipset id as usb serial number.
#
serialno=`getprop persist.usb.serialno`
case "$serialno" in
    "")
    # usb serial number is not acceptable such as "VS930 4G"
    # so, we apply model name without space. note that it is only for VS930.
    # CAUTION: DON'T USE THIS CODE FOR OTHER MODEL!
    # model="FX3"
    model=`getprop ro.product.model`
    serialnum=`getprop ro.serialno`
    chipsetid=`cat /sys/devices/system/soc/soc0/serial_number`
    case "chipsetid" in
        "")
        echo "$model-$serialnum" > /sys/class/android_usb/android0/iSerial
        ;;
        * )
        echo "$model-$chipsetid" > /sys/class/android_usb/android0/iSerial
        ;;
    esac
    ;;
    * )
    echo "$serialno" > /sys/class/android_usb/android0/iSerial
esac

chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup

#
# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
#
# target=`getprop ro.board.platform`
# usbchgdisabled=`getprop persist.usb.chgdisabled`
# case "$usbchgdisabled" in
#   "") ;; #Do nothing here
#    * )
#    case $target in
#        "msm8660")
#        echo "$usbchgdisabled" > /sys/module/pmic8058_charger/parameters/disabled
#        echo "$usbchgdisabled" > /sys/module/smb137b/parameters/disabled
#	;;
#        "msm8960")
#        echo "$usbchgdisabled" > /sys/module/pm8921_charger/parameters/disabled
#	;;
#    esac
#esac

devicename=`getprop ro.product.model`
case $devicename in
	"");;
	* )
	    echo "$devicename" > /sys/devices/platform/lge_android_usb/model_name
	;;
esac
swversion=`getprop ro.lge.swversion`
case $swversion in
	"");;
	* )
	    echo "$swversion" > /sys/devices/platform/lge_android_usb/sw_version
	;;
esac
subversion=`getprop ro.lge.swversion_rev`
case $subversion in
	"");;
	* )
	    echo "$subversion" > /sys/devices/platform/lge_android_usb/sub_version
	;;
esac

echo 1  > /sys/class/android_usb/f_mass_storage/lun/nofua
echo 1  > /sys/class/android_usb/f_cdrom_storage/lun/nofua
