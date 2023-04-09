#!/bin/bash

bestFrame=''
frameProduct=0
while read p;
do
	newProduct=`echo "${p// /*}" | bc`
	if [ "$frameProduct" -lt "$newProduct" ]
	then
		frameProduct="$newProduct"
		bestFrame="$p"
	fi

done 
echo "$bestFrame"
 