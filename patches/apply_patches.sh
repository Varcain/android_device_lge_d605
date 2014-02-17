#!/bin/sh

cp backlight_earlysuspend.patch ../../../../frameworks/base
cp bluetooth_dbus_wait.patch ../../../../frameworks/base
cp ril.patch ../../../../hardware/ril

cd ../../../../frameworks/base
patch -p1 <backlight_earlysuspend.patch
patch -p1 <bluetooth_dbus_wait.patch

cd ../../hardware/ril
patch -p1 <ril.patch
