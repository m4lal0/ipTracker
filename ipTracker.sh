#!/bin/bash

#by @m4lal0

# Regular Colors
Black='\033[0;30m'      # Black
Red='\033[0;31m'        # Red
Green='\033[0;32m'      # Green
Yellow='\033[0;33m'     # Yellow
Blue='\033[0;34m'       # Blue
Purple='\033[0;35m'     # Purple
Cyan='\033[0;36m'       # Cyan
White='\033[0;97m'      # White
Color_Off='\033[0m'     # Text Reset

# Additional colors
LGray='\033[0;37m'      # Ligth Gray
DGray='\033[0;90m'      # Dark Gray
LRed='\033[0;91m'       # Ligth Red
LGreen='\033[0;92m'     # Ligth Green
LYellow='\033[0;93m'    # Ligth Yellow
LBlue='\033[0;94m'      # Ligth Blue
LPurple='\033[0;95m'    # Light Purple
LCyan='\033[0;96m'      # Ligth Cyan

# Bold
BBlack='\033[1;30m'     # Black
BGray='\033[1;37m'		# Gray
BRed='\033[1;31m'       # Red
BGreen='\033[1;32m'     # Green
BYellow='\033[1;33m'    # Yellow
BBlue='\033[1;34m'      # Blue
BPurple='\033[1;35m'    # Purple
BCyan='\033[1;36m'      # Cyan
BWhite='\033[1;37m'     # White

# Underline
UBlack='\033[4;30m'     # Black
UGray='\033[4;37m'		# Gray
URed='\033[4;31m'       # Red
UGreen='\033[4;32m'     # Green
UYellow='\033[4;33m'    # Yellow
UBlue='\033[4;34m'      # Blue
UPurple='\033[4;35m'    # Purple
UCyan='\033[4;36m'      # Cyan
UWhite='\033[4;37m'     # White

# Background
On_Black='\033[40m'     # Black
On_Red='\033[41m'       # Red
On_Green='\033[42m'     # Green
On_Yellow='\033[43m'    # Yellow
On_Blue='\033[44m'      # Blue
On_Purple='\033[45m'    # Purple
On_Cyan='\033[46m'      # Cyan
On_White='\033[47m'     # White

trap ctrl_c INT

function ctrl_c(){
    echo -e "\n\n${Cyan}[${BYellow}!${Cyan}] ${BRed}Saliendo de la aplicación...${Color_Off}"
    tput cnorm
    exit 1
}

### Banner
function banner(){
    echo -e "${BGreen}"
    sleep 0.15 && echo -e "\t░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
    sleep 0.15 && echo -e "\t░   ░        ░░░░░░░░░           ░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ░░░░░░░░░░░░░░░░░░░░░░░░"
    sleep 0.15 && echo -e "\t▒   ▒   ▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
    sleep 0.15 && echo -e "\t▒   ▒   ▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒  ▒    ▒▒▒▒   ▒▒▒▒▒▒▒▒    ▒   ▒▒   ▒▒▒▒   ▒▒▒▒▒  ▒    "
    sleep 0.15 && echo -e "\t▓   ▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓   ▓▓▓▓▓   ▓▓   ▓▓▓   ▓▓▓▓   ▓   ▓▓▓  ▓▓▓   ▓▓▓   ▓▓▓"
    sleep 0.15 && echo -e "\t▓   ▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓   ▓▓▓▓   ▓▓▓   ▓▓   ▓▓▓▓▓     ▓▓▓▓         ▓▓▓   ▓▓▓"
    sleep 0.15 && echo -e "\t▓   ▓   ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓   ▓▓▓▓   ▓▓▓   ▓▓▓   ▓▓▓▓   ▓   ▓▓  ▓▓▓▓▓▓▓▓▓▓   ▓▓▓"
    sleep 0.15 && echo -e "\t█   █   ██████████████████   █████    ██████   █    ████    █   ██   ███     ████    ███"
    sleep 0.15 && echo -e "\t████████████████████████████████████████████████████████████████████████████████████████"
    echo -e "${Off_Color}"
	sleep 0.15 && echo -e "\t\t    ${Green}---[ Github: https://github.com/m4lal0/ipTracker.git ]--- ${Color_Off}"
    sleep 0.15 && echo -e "\t\t\t\t    ${Green} +--==[ By ${BBLue}@m4lal0${Green} ]==-- +${Color_Off}\n\n"
	tput civis
}

function helpPanel(){
    banner
    echo -e "\t${BGray}Herramienta para rastrear una IP pública, puede ser su IP o alguna otra IP.${Color_Off}"
    echo -e "\n\t${BGray}USO:${Color_Off}"
    echo -e "\t\t${BPurple}Para saber su propia IP: ${BGreen}./ipTracker.sh${Color_Off}"
    echo -e "\n\t${BGray}OPCIONES:${Color_Off}"
    echo -e "\n\t\t ${Cyan}[${BRed}-i <ip-address>${Cyan}] ${BPurple}\tRastrear otra IP.${Color_Off}"
    echo -e "\t\t ${Cyan}[${BRed}-h${Cyan}] ${BPurple}\t\t\tMostrar este panel de ayuda.${Color_Off}\n"
    tput cnorm
    exit 0
}

function tracker(){
    banner
    STATUS=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="query":)[^},]*' | tr -d '"')
    if [ $STATUS ]; then
        IP=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="query":)[^},]*' | tr -d '"')
        COUNTRY=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="country":)[^},]*' | tr -d '"')
        CITY=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="city":)[^},]*' | tr -d '"')
        REGION=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="regionName":)[^},]*' | tr -d '"')
        LAT=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="lat":)[^},]*' | tr -d '"')
        LON=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="lon":)[^},]*' | tr -d '"')
        ISP=$(curl -s http://ip-api.com/json/$HOST_IP | grep -Po '(?<="isp":)[^},]*' | tr -d '"')
        echo -e "${BGray}\tIP: ${On_Green}${BGreen}$IP${Color_Off}"
        echo -e "${BGray}\tPais: ${BGreen}$COUNTRY${Color_Off}"
        echo -e "${BGray}\tCiudad: ${BGreen}$CITY${Color_Off}"
        echo -e "${BGray}\tRegion: ${BGreen}$REGION${Color_Off}"
        echo -e "${BGray}\tLatitud: ${BGreen}$LAT${Color_Off}"
        echo -e "${BGray}\tLongitud: ${BGreen}$LON${Color_Off}"
        echo -e "${BGray}\tISP: ${BGreen}$ISP${Color_Off}\n"
        tput cnorm
        exit 0
    else
        echo -e "\t\n${Cyan}[${BRed}✘${Cyan}] ${BRed}Error - No hay información de la IP${Color_Off}\n"
        tput cnorm
        exit 1
    fi
}

function main(){
    banner
    STATUS=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="query":)[^},]*' | tr -d '"')
    if [ $STATUS ]; then
        IP=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="query":)[^},]*' | tr -d '"')
        COUNTRY=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="country":)[^},]*' | tr -d '"')
        CITY=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="city":)[^},]*' | tr -d '"')
        REGION=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="regionName":)[^},]*' | tr -d '"')
        LAT=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="lat":)[^},]*' | tr -d '"')
        LON=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="lon":)[^},]*' | tr -d '"')
        ISP=$(curl -s http://ip-api.com/json/ | grep -Po '(?<="isp":)[^},]*' | tr -d '"')
        echo -e "${BGray}\tIP: ${On_Green}${BGreen}$IP${Color_Off}"
        echo -e "${BGray}\tPais: ${BGreen}$COUNTRY${Color_Off}"
        echo -e "${BGray}\tCiudad: ${BGreen}$CITY${Color_Off}"
        echo -e "${BGray}\tRegion: ${BGreen}$REGION${Color_Off}"
        echo -e "${BGray}\tLatitud: ${BGreen}$LAT${Color_Off}"
        echo -e "${BGray}\tLongitud: ${BGreen}$LON${Color_Off}"
        echo -e "${BGray}\tISP: ${BGreen}$ISP${Color_Off}\n"
        tput cnorm
        exit 0
    else
        echo -e "\t\n${Cyan}[${BRed}✘${Cyan}] ${BRed}Error - No hay información de la IP${Color_Off}\n"
        tput cnorm
        exit 1
    fi
}

while getopts ":i:h" arg; do
    case $arg in
        i) HOST_IP=$OPTARG; tracker;;
        h) helpPanel;;
        *) exit 1;
    esac
done

main