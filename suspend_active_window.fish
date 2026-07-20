#!/bin/fish
set pid (niri msg focused-window | grep PID: | tr -d 'PID: \t')
if ps -o stat -p$pid | grep ^T
	kill -CONT $pid
else 
	kill -STOP $pid
end
