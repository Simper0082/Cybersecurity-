#!/bin/bash 

name="Jake"
echo "hello $name"
echo -e "\n this is my script\n"
echo -e "The files in $PWD are \n$(ls)"
echo -e "\nCopying the passwd file to your current directory. \n"
cp /etc/passwd $PWD
echo -e "The files in $PWD are now \n$(ls -lah)"
echo "BYE"
