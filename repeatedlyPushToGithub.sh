#!/bin/bash
while true; do
	subject="auto update"
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
		minutes=$(($i/60))
		echo $minutes minutes and $seconds seconds until next push
		sleep 1
	done
done