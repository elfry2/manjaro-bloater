#!/bin/bash

# Source the header file.
source install-aur-packages.h.sh

# Install the packages
yay -Syu --noconfirm --needed ${packages[@]}
