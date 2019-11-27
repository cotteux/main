while true
do
while true
do
	clear
	echo "   Plug your Phone with a data usb cable"
	echo "	"
	echo "   When your device appear, check your phone."
	echo  " " 
    echo "   Accept the connection on the phone (Developper mode need to be activated)"
    echo "   "
    echo "   When the status changed from unauthorized to device, then press any key "
    echo "  "

	adb devices
	sleep 1
done &

while read -sn 1 QUIT && [[ $QUIT != '' ]];
do
	echo "press a key"
done
kill %1
scrcpy -f
done