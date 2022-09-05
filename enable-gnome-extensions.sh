#!/bin/bash

# Source the header file.
source enable-gnome-extensions.h.sh

# Source the module file(s) sequentially.
for i in "${extensions[@]}"; do
	gnome-extensions enable $i
done

echo "Extensions enabled. If \"Extension ... does not exist\" error occurs, try logging out, log back in, and execute this script again."
