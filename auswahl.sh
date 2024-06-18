#!/bin/bash
# 
# Skriptname: auswahl.sh
#


clear

echo "select loop menue steuerung"
echo "___________________________"
echo 

select name in Peter Mark John
do 
  echo "$name selected"
done


