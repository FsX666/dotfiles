#!/bin/bash

LOCKSCREEN_TIME="5"

killall -q xautolock 
xautolock -detectsleep -time $LOCKSCREEN_TIME -locker blurlock
