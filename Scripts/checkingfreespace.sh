#!/bin/bash

SpaceUsed=$(df -h | awk '{print $5}' | sed -n '4p' | cut -d "%" -f1 -)
 echo $SpaceUsed

case  $SpaceUsed in
	[0-69]*) echo "You're good, you have only used up" $SpaceUsed"%" "space" ;;
	[70-89]*) echo "Keep an eye out, you've used up" $SpaceUsed "of your space" ;;
	9[1-8]*)
		echo "Is this correct?" ;;
	[99]) echo "I'm drowning oveer here! Home is at" $SpaceUsed"%" "!" ;;
	*) echo "It's too late for me..." ;;
esac

