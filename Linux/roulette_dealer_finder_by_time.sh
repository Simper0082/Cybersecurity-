#!/bin/bash

awk -F" " '{$1, $2, $5, $6}'$1_Dealer_schedule | grep -i $2 | grep -i $3

