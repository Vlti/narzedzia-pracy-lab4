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
elif [[ "$1" == "--init" ]]; then
	$(git + clone + https://github.com/Vlti/narzedzia-pracy-lab4)
	set PATH=%PATH;$pwd\narzedzia-pracy-lab4\
elif [[ "$1" == "--error" ]] || [[ "$1" == "-e" ]]; then
	for i in $(seq 1 "$2"); do
		mkdir "error${i}"
		$(touch + "error${i}/error${i}.txt")
	done
elif [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
	echo "usage: skrypt.sh [OPTION] [NUMBER]"
	echo "-d, --date		Prints out current date"
	echo "-l, --logs [N]	Creates N files named logx.txt, where x is a number from 1 to N"
	echo "--init		Clones repo to working directory and adds to PATH"
	echo "-e, --error [N]	Creates N files named errorx.txt in errorx directory, where x is a number from 1 to N"
else
	echo "Error!"
fi
