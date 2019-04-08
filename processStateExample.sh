#!/usr/bin/bash
states="D R S T t W X Z"

for state in $states

do
	echo $state

	pid=$(ps -eo pid,cmd,stat|grep -v PID | grep -v CMD | grep $state | head -1 | awk '{print $1}')

	if [ -z $pid ]
		then
			echo "No current process in state $state"
	elif [ ! -z pid ]
		then
			echo "$pid"
#			ps -eo pid,cmd,stat|grep -v PID|grep -v CMD|grep $state
	fi
done
