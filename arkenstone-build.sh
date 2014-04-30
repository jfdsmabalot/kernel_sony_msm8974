#!/bin/bash


#

#  The Arkenstone Kernel

#


echo ""

echo ""

echo "The Arkenstone Kernel S5"

echo ""

echo ""


clear

echo ""
echo ""
echo "The Arkenstone Kenel"
echo ""
echo ""

make clean

git checkout master
export ARCH=arm
export CROSS_COMPILE=~/tmp/arm-eabi-4.9/bin/arm-eabi-
export ENABLE_GRAPHITE=true
make arkenstone_defconfig
time make -j3 2>&1 | tee kernel.log

echo ""
echo ""
echo "Gnome@xda-developers.com"
echo ""
echo ""
