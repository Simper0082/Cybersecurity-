#!/bin/bash

#chekc UID
if [ $UID -ne 0 ]
then
   echo "Please run this script with sudo"
   exit
fi

#define variables
output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
exes=$(find /home -type f -perm 777 2>  /dev/null)
files=$(ls /etc/shadow /etc/passwd)
info=('uname -a' 'date' 'hostname -s'
#check for research directory. Create if needed.
if [ ! -d $HOME/research ]
then
   mkdir $HOME/research
fi

echo "A Quick System Audit Script" > $output
for command in ${info[@]};
do 
    echo "The results of $command are:
done
>> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo -e "$MACHTYPE /n" >> $output
for command in ${info[@]};
do 
    echo "The results of $command are:
done
 >> $output
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> $output
for command in ${info[@]};
do 
    echo "The results of $command are:
done
>> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who -a) \n" >> $output
echo -e "\nSUID Files:" >> $output
find / -type f -perm /4000 >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output


#for loop for permissions in passwd and shadow 
for file in ${files[@]};
do 
    ls -lah
done


#for loop for date, uname and hostname commands
for command in ${info[@]};
do 
    echo "The results of $command are:
done
