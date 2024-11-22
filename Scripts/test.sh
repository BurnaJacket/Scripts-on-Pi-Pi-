#!/bin/bash

read -p "enter answer" answer

if [ $answer = "1" ]; then
	echo "laugh"
fi

read -p "shutdown?" response

if [ $response = "yes" ]; then
	sudo shutdown now
fi
