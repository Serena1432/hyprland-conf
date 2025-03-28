#!/bin/bash

echo "----------------------------------------------------"
echo "Harpae's Acer Nitro 5 Fan Control for Linux"
echo "----------------------------------------------------"
echo "[1] Auto Set Speed"
echo "[2] Maximum Speed"
echo "[3] Specify Manually"
echo "----------------------------------------------------"

function fc {
    read -p "Select an option: " option
    if [ $option == "1" ]; then
    sudo nbfc set -a -f 0
    sudo nbfc set -a -f 1
    elif [ $option == "2" ]; then
    sudo nbfc set -s 100 -f 0
    sudo nbfc set -s 100 -f 1
    elif [ $option == "3" ]; then
    read -p "Input a specific % of Fan Speed: " pc
    sudo nbfc set -s $pc -f 0
    sudo nbfc set -s $pc -f 1
    else fc
    fi
}

fc
