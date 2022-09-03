#!/bin/bash

# Source the header file.
source install-pacman-packages.h.sh

# Install the packages
sudo pacman -Syu --noconfirm --needed ${packages[@]}
