#!/usr/bin/bash

mem(){
  free -h 
}

disk(){
  df 
}

sys(){
  neofetch
  }


usage(){
  echo -e "\nUsage: ${0} [-a] [-b] [-c]" >&2
  echo -e '\n Zeigt den Status des Systems'
  echo '-a Speicher mem'
  echo '-b Speicher disk'
  echo '-c Speicher sys'
}

while getopts 'abch' OPTION; do
  case "$OPTION" in
    a)
        mem
        ;;
    b)  
        disk
        ;;
    c)  
        sys
        ;;
    ?) 
        usage
        ;;
  esac
done



