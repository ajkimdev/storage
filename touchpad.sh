#!/bin/bash

device=12
state=$(xinput list-props "$device" | grep "Device Enabled" | grep -o "[01]$")

if [ $state == '1' ];then
	xinput --disable "$device"
	notify-send -i "touchpad_disabled" "Touchpad" "Disabled"
else
	xinput --enable "$device"
	notify-send -i "touchpad_enabled" "Touchpad" "Enabled"
fi
