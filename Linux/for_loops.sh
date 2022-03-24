#!/bin/bash

#Variable List
States=('utah' 'illinios' 'hawaii' 'calorado' 'texas')

#checking for hawaii
for States in ${States[@]}
do 
    if [ $States = 'hawaii']
    then 
         echo "Hawaii is the best"
    else 
         echo "I'm not fond of Hawaii"
fi
done

