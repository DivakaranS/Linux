#!/bin/bash
n=0
for (( ; ; ))
 do
	 (( n++ ))
	 sleep 1
	 echo "$n" >> number_service.log
	 if [[ $((n%3)) == 0 ]] && [[ $((n%5)) == 0 ]]
	  then
		  echo "FizzBuzz"
	  elif [ $((n%3)) == 0 ]
	  then
		  echo "Fizz"
	  elif [ $((n%5)) == 0 ]
	  then
		  echo "Buzz"
	  else
		  echo "$n"
	  fi
  done > fizzbuzz.log

