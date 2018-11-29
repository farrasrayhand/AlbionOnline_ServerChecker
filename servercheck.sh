#!/bin/bash
mytitle="Albion Online Status"
echo -e '\033]2;'$mytitle'\007'
clear
while true; do echo -e "-Albion Url" && curl serverstatus.albiononline.com:9099 && echo -e "\n\n-Maintenance Url" && curl http://live.albiononline.com/status.txt && echo -e "\n"
COLUMNS=$(tput cols) 
title="$(date)" 
printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
sleep 5s
done
