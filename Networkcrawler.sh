#!/bin/bash
banner() {
    echo "                 _      "
    echo "  ____  _  ____ |•| /  _ "
    echo " |• • \( )/•••• |•|//  \ \  //"
    echo " |•| )•|•|•|    |•|\\    \ \//   THE 769_•BOY"
    echo " |• •_•|•|•|___ |•| \\     //"
    echo " |•| \•\•|\_•_•_|•|  \\   //  "    "|THIS TOOL IS" 
    echo "                             " "|MADE FOR ONLY"
    echo "  Network Scanning Tool      "       "|EDUCATIONAL PURPOS"
    echo "••D E V E L O P E D   B Y:   " "|ONLY.OUR TEAM DOESN'T"
    echo "••R I C K Y_B R O K E N⁷⁶⁹®  " "|RESPONSIBLE FOR ANY KIND OF"
    echo "                             " "|ILLEGEL ACTIVITY.."
    echo "Powered by:adminstrator_769  " "|THANKS ALL GUYS"
    echo "                	     " "|HERES IS CONTACT NUMBER"
    echo "Remember bro! hacking is     " "|OF DEVELOPER"
    echo "not a midnight achievement!  " "|@Whatsapp••03448062763"
    echo "________________________________________________________________ "
 }


clear
banner
echo "==Choose your scan method=="
echo "1:scan with nmap"
echo "2:scan with angry_ip_scanner"
echo "3:Find my ip"
echo "4:John passwd_carcker"
read -p  "Choose:  " method
if [ "$method" == 1 ];then
read -p "Enter scan type example -sV,-sP: " scan
read -p "Enter the IP range or target (e.g., 192.168.1.0/24 or 198.168.1.1====:" ip
nmap --unprivileged  $scan $ip
   #if [ "n.sh: line 29: nmap: command not found" ];then
   #sudo apt  install nmap
  # fi
elif [ "$method" == 3 ];then
ifconfig
elif [ "$method" == 2 ];then
read -p "Enter the IP range or target (e.g., 192.168.1.0/24): " tip
angry_ip_scan $tip
   if [ "n.sh: line 33: angry_ip_scan: command not found" ];then
   echo "[+] INSTALLING ANGRY IP SCANNER"
   sudo apt install angry_ip_scan
   fi 

elif [ "$method" == 4 ];then
read -p "[+] Enter format name: " format
read -p "[+] Enter wordlist path: " wordlist
read -p "[+] Enter file to crack: " file
john --format=$format --wordlist=$wordlist $file
else
echo "please chose valid scan type:  "
fi
echo "THANKS FOR USING"


