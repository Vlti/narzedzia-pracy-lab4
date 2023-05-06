#!/bin/bash

if [[ "$1" == "--date" ]]; then
	echo "$(date + %d-%m-%Y)"
else
	echo "Error!"
fi
