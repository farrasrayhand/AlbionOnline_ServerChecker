#!/bin/bash
mytitle="Albion Online Status"
echo -e '\033]2;'$mytitle'\007'
clear
while true;
do
COLUMNS=$(tput cols)
title="$(date)"
printf "%*s" $(((${#title}+$COLUMNS) /2)) "$title"
echo -e "\n"
echo -e "-Albion Url" && curl serverstatus.albiononline.com:9099 && echo -e "\n\n-Maintenance Url" && curl http://live.albiononline.com/status.txt
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
sleep 5s
done
