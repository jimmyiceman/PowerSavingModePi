echo "##############################################################"
echo "# This script is to toggle power saving mode on Raspberry pi #"
echo "# Author: Jimmy  #############################################"
echo "##############################################################"
echo ""
echo ""

if [ -e /etc/modprobe.d/8192cu.conf ]
then
        echo "Power Saving mode OFF"
	echo "Do you want to turn Power Saving ON?(y/n): "
	read text
	if [ $text = "y" ]
	then
		echo "You have selected YES and I am turning ON power Saving boss"
		sudo rm -r /etc/modprobe.d/8192cu.conf
		sudo reboot
	else
		echo "You have selected NO, so I am doing nothing boss"
	fi


else
        echo "Power Saving mode ON"
	echo "Do you want to turn Power Saving OFF?(y/n): "
        read text
        if [ $text = "y" ]
        then
		echo "You have selected YES and I am Turning OFF Power Saving mode boss"
		sudo cp /home/pi/Desktop/8192cu.conf /etc/modprobe.d/
		sudo reboot
        else
                echo "You have selected NO, so I am doing nothing boss"
        fi

fi
