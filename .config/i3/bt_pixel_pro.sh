bluetoothctl power on
bluetoothctl agent on
bluetoothctl connect B8:7B:D4:03:59:CB

pactl set-card-profile bluez_card.B8_7B_D4_03_59_CB a2dp_sink
# When failing :
# pulseaudio -k 
# pulseaudio --start
