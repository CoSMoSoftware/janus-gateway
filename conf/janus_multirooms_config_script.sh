#!/bin/bash
# Script used to fill up the config file with 100 rooms
# Could be useful for  similar works
numberOfLines=100

for ((i=1;i<=$numberOfLines;i++)); do
  echo 'cat >> janus.plugin.videoroom.cfg  <<EOF
; Room $roomId of $numberOfLines rooms for multiple rooms test
[$roomId]
description = Demo Room
secret = adminpwd
publishers = 40
bitrate = 5000000
fir_freq = 10
;audiocodec = opus
;videocodec = vp8
record = false
;rec_dir = /path/to/recordings-folder
 EOF' | sudo -s roomId=$i numberOfLines=$numberOfLines
done