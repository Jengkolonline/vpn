#!/bin/bash

###########

echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install OHP              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp.sh && chmod +x ohp.sh && ./ohp.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install Backup              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
rm /root/ohp-dropbear.sh >/dev/null 2>&1
rm /root/ohp-ssh.sh >/dev/null 2>&1
rm /root/ohp.sh >/dev/null 2>&1
echo -ne "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi

