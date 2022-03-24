#!/bin/bash

awk -F" " '{print $1, $2, $3, $4 $5, $6, $7 ,$8}' $1_Dealer_schedule | grep -i $2

