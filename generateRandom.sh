#!/usr/bin/env bash


var1=$1
digits=0987654321

for (( i=0;i<var1;i++ ))
do
	r=''
	for (( j=0;j<var1;j++ ))
	do
		# r+=" $(( $RANDOM % 90 + 10 ))"
		r="$r ${digits:$(( RANDOM % ${#digits} )):1}${digits:$(( RANDOM % ${#digits} )):1}"
	done
	echo $r  
done

