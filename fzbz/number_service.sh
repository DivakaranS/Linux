#!/bin/bash
arg=$1
if [[ $arg == "start" ]] 
then
 :>number_service.log
 :>fizzbuzz.log 
 echo "FizzBuzz number service started." 
./number_fizzbuzz.sh & 
elif [[ $arg == "stop" ]] 
then
	proc_id=$(pidof -x number_fizzbuzz.sh)
    	kill $proc_id
	echo "FizzBuzz number service stop."
elif [[ $arg == "status" ]]
then
	proc_id=$(pidof -x number_fizzbuzz.sh)
	if [[ $proc_id -ne "" ]]
	then
	echo "FizzBuzz number service running..."
	else
	echo "FizzBuzz number service stop."	
	fi
fi


