#! /bin/bash
### BEGIN INIT INFO
# Provides: <NAME>
# Required-Start: $local_fs $network $named $time $syslog
# required-Stop:  $local_fs $network $named $time $syslog
# Default-Start:  2 3 4 5
# default-Stop    0 1 6
# Description: 	  <DESCRIPTION>
### END INIT INFO

start() {
 :> /home/divakaran/Documents/Workspace/Linux/fzbz/number_service.log
 :> /home/divakaran/Documents/Workspace/Linux/fzbz/fizzbuzz.log 
 echo "FizzBuzz number service started." 
 /home/divakaran/Documents/Workspace/Linux/fzbz/number_fizzbuzz.sh & 
}
stop() {
	proc_id=$(pidof -x /home/divakaran/Documents/Workspace/Linux/fzbz/number_fizzbuzz.sh)
    	kill $proc_id
	echo "FizzBuzz number service stop."
}

status() {
	proc_id=$(pidof -x /home/divakaran/Documents/Workspace/Linux/fzbz/number_fizzbuzz.sh)
	if [[ $proc_id -ne "" ]]
	then
	echo "FizzBuzz number service running..."
	else
	echo "FizzBuzz number service stop."	
}
case "$1" in
	start) start;
	stop) stop;
	status) status;
	*) echo "usage $0 start|status|stop" >&2
	exit 1
	;;
esac


