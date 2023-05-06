#!/bin/bash

if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
	echo "$(date + %d-%m-%Y)"
elif [[ "$1" == "--logs" ]] || [[ "$1" == "-l" ]]; then
	for i in $(seq 1 "$2"); do
		filename="log${i}.txt"
		echo "$filename" >> $filename
		echo "$0" >> $filename
		echo "$(date)" >> $filename
	done
elif [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
	echo "usage: skrypt.sh [OPTION] [NUMBER]"
	echo "-d, --date		Prints out current date"
	echo "-l, --logs [N]	Creates N files named logx.txt, where x is a number from 1 to N"
else
	echo "Error!"
fi
