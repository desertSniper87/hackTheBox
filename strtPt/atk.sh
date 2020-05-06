#!/bin/bash
# Author            : desertsniper87 <torshobuet@gmail.com>
# Date              : 04.05.2020
# Last Modified Date: 04.05.2020

 ports=$(nmap -p- --min-rate=1000 -T4 10.10.10.27 | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)
 nmap -sC -sV -p$ports 10.10.10.27
