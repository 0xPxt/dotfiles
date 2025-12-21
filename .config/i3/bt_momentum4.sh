bluetoothctl power on
bluetoothctl agent on
bluetoothctl connect 80:C3:BA:4A:45:C7

pactl set-card-profile bluez_card.80_C3_BA_4A_45_C7 a2dp_sink
# When failing :
# pulseaudio -k 
# pulseaudio --start
