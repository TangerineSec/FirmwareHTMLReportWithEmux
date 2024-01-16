#!/bin/sh

for PID in `/bin/ps | grep mjpg_streamer | grep -v grep | awk  '{print $1}'`
do
	/bin/kill -9 $PID
done
sleep 2
/usr/bin/mjpg_streamer -i "input_uvc.so -y -d /dev/video0 -r 320x240" -o "output_http.so -p 8801 -w /www/webcam" &
