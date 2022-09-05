#!/bin/bash

# Source the header file.
source main.h.sh
last_exit_code=0

# Ensure that all of the file(s) listed in the modules array exist(s) before
# sourcing them.
for i in "${modules[@]}"; do
	if [ ! -f "$i" ]; then
		echo "Module file $i does not exist. Exiting..."
		exit
	fi
done

# Source the module file(s) sequentially.
for i in "${modules[@]}"; do
	if [ $last_exit_code == 0 ]; then
		echo
		echo "Now executing $i..."
		source $i
		last_exit_code=$?
	fi
done
