#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo "%{F#ffee00}<U+F0FC2> %{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"

else
	echo "%{F#ffee00}<U+F0FC2> %{F#ffffff}%{u-} No VPN"
fi