#!/bin/bash
if [ $(sudo pacman -Qtdq | sudo pacman -Rns -) ]; then
echo >> /dev/null # Idk the proper technique lol
fi
