#!/bin/bash

#author :H&H

cpuinfo_full=$(cat /proc/cpuinfo | awk '/processor/{print}/physical id/{print}')
echo $cpuinfo_full>cpu_info.txt
temp=$(cat cpu_info.txt | cut -d ":" -f2)
echo $temp>cpu_index_full.txt
cpuinfo=$(cat cpu_index_full.txt | sed s/[[:space:]]//g)
echo $cpuinfo>cpu_index.txt
rm -rf cpu_index_full.txt
