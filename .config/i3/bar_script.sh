q#!/bin/bash

while :
do
	battery=$(acpi -V | grep Battery | head -n 1 | grep -oP "\d*%")
	date=$(date)
	volume=$(pactl list sinks | grep "Description: sof-hda-dsp Speaker + Headphones" -C 7 | grep Volume | grep -oP "\d+%" | head -n 1)
	echo "BAT: ${battery} | ${date} | Vol: ${volume}"
	sleep 1
done
