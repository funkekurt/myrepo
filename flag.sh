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


while getopts 'abc' OPTION; do
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
  esac
done



