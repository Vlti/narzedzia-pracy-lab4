#!/bin/bash

if [[ "$1" == "--date" ]]; then
	echo "$(date + %d-%m-%Y)"
elif [[ "$1" == "--logs" ]]; then
	for i in $(seq 1 100); do
		filename="log${i}.txt"
		echo "$filename" >> $filename
		echo "$0" >> $filename
		echo "$(date)" >> $filename
	done
else
	echo "Error!"
fi
