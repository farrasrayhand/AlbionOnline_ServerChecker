#!/bin/bash
mytitle="Albion Online Status"
echo -e '\033]2;'$mytitle'\007'
clear
while true; do sleep 1; curl serverstatus.albiononline.com:9099; echo -e "\n" $(date)
sleep 5s
done

