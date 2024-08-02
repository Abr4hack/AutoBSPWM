#!/bin/sh

echo "%{F#2495e7}<U+F0A60> %{F#ffffff}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"