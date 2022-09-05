#!/bin/bash

# Source the header file.
source disable-gnome-extensions.h.sh

# Source the module file(s) sequentially.
for i in "${extensions[@]}"; do
	gnome-extensions disable $i
done
