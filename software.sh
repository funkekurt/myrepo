#!/bin/bash   

# Aufruf:
# ./software.sh a

hallo()
{

  red='\033[31m'
  reset='\033[0m'
  echo -e "${reset}"

  clear
  figlet R-System
  echo -e "\n--------------------------"
  echo -e "(c)2024 by R-System"
  echo -e "--------------------------"
  echo -e " \033[5m ${red} Das ist ein roter Text\n"
  sleep 5
  echo -e "${reset}"
  uname -a
}

datenbank()
{
  # clear
  sleep 1
  echo -e "\n\t--------------------------"
  echo -e "\t(c)2024 by R-System"
  echo -e "\t--------------------------"
  echo -e "\nStarte Datenbank ..."
#  sqlite3 
  sleep 2
  echo -e "\nDatenbank wurde beendet\n"
}

programmierung(){
  ipython3
  echo "thank you ..."
  sleep 2
  clear
  }


running_time(){
  uptime
  }

box(){
  dialog --yesno "Please select yes or no" 0 0 && dialog --title "R-System" --msgbox "Hallo Welt" 0 0 || clear

  echo "goodbye"
  sleep 2
  clear
}

lok(){
  sl
  sleep 1
  clear
  echo "Ab in die Matrix"
  sleep 1
  cmatrix
  clear
}


usage(){
  echo -e "\nUsage: ${0} [a] [b] [c] [d] [e] "
  echo -e '\nAuswahlmenü'
  echo -e '-a Hallo'
  echo -e '-b Datenbank'
  echo -e '-c Programmierung'
  echo -e '-d box'
  echo -e '-e lok'
}

while getopts 'abcde' OPTION; do
  case "$OPTION" in
    a)  
        hallo
        ;;

    b)
        datenbank
        ;;
    c)
        programmierung
        ;;
    d)
        box
        ;;

    e)
        lok
        ;;
    ?)
        usage
        ;;
  esac
done





