#!/bin/bash
while true; do
	check=true
	while $check; do
		read -p "Please enter a subject for the commit: " subject
		if [ ! -z "$subject" -a "$subject" != " " ]; then
			while true; do
				read -p "Are you sure you want the subject to be \"$subject\"? (y/n) " yn
				case $yn in
					[Yy]* ) check=false; break;;
					[Nn]* ) break;;
					* ) echo "Please answer \"y\" or \"n.\"";;
				esac
			done
		else
			echo "You cannot leave the subject blank."
		fi
	done
	echo $subject
	git init
	git remote add origin https://github.com/aallen170/ad332_project4.git
	git add .
	git commit -m "$subject"
	git push -u origin master
	for (( i=600; i >= 0; --i ))
	do
		clear
		seconds=$(($i%60))
		minutes=$(($i/100))
		echo $minutes minutes and $seconds seconds until next push
		sleep 1
	done
done