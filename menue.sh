#!/bin/bash
# 
# Skriptname: Menue.sh
# Quelle:
# https://youtu.be/VOTclQFMbmM?si=DNSp2JkTrGORP_S2
#

trap '' 2
while true
do
  clear
  echo "====================="
  echo "Menue"
  echo "====================="
  echo "Enter 1 to show logo "
  echo "Enter 2 to show database "
  echo "Enter 3 to show tmux "
  echo "Enter 4 to show calendar "

  echo "Enter q to exit menue "
  echo -e "\n"
  echo -e "Enter your selection \c"
  read answer
  case "$answer" in
    1) ./software.sh -a ;;
    2) sqlite3 ~/datenbank/project_02/version_2/db2.db "select name,ek from t1" 
       uptime ;;
    3) tmux a ;;
    4) cal ;;
    q) exit ;;
  esac
  echo -e "Enter return to continue \c"
  read input
done
  



