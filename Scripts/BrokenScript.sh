#!/bin/bash

echo "what is your name"
read name
echo "Hello, $name! Welcome"

#today's date.
#date = "date %Y-%m-%d"
echo "Today is $(date)"

#create a directory named after the user
mkdir -p /home/$USER/${name}_dir

#create a file called "welcome.txt" inside the new directory
touch /home/$USER/${name}_dir/welcome.txt

#Write a welcome message in the file
echo "Welcome to your folder,$name!" > /home/$USER/${name}_dir/welcome.txt

