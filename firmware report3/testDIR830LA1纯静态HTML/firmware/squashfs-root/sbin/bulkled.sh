## @file led.sh
## @Author Andrew Tong
## @Date 2013-06-14
## @brief Led Control
## @param 0 ./led.sh 0 not support
## @param 1 ./led.sh 1 fail
## @param 2 ./led.sh 2 process
## @param 3 ./led.sh 3 success
## @param 4 ./led.sh 4 finish

case $1 in
    820)
	case $2 in
	0)
	        echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 40 > /proc/gpio_led;
		echo 21 > /proc/gpio_led;echo 41 > /proc/gpio_led;echo 0;;
        1)
	        echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 40 > /proc/gpio_led;
		echo 21 > /proc/gpio_led;echo 41 > /proc/gpio_led;echo 1;;
        2)
	        echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 40 > /proc/gpio_led;
		echo 14 > /proc/gpio_led;echo 2;;
        3)
	        echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 40 > /proc/gpio_led;
		echo 14 > /proc/gpio_led;echo 3;;
        4)
	        echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 40 > /proc/gpio_led;
		echo 11 > /proc/gpio_led;echo 4;;
        esac;;
    813)
	case $2 in
	    0)
		echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 0;;
	    1)
		./bulkled.sh $1 0;
		echo 14 > /proc/gpio_led;echo 30 > /proc/gpio_led;echo 1;;
	    2)
		./bulkled.sh $1 0;
		echo 14 > /proc/gpio_led;echo 31 > /proc/gpio_led;echo 2;;
	    3)
		./bulkled.sh $1 0;
		echo 10 > /proc/gpio_led;echo 34 > /proc/gpio_led;echo 3;;
	    4)
		./bulkled.sh $1 0;
		echo 11 > /proc/gpio_led;echo 34 > /proc/gpio_led;echo 4;;
	esac;;
    731711)
	case $2 in
	    0)
		echo 10 > /proc/gpio_led;echo 20 > /proc/gpio_led;echo 0;;
	    1)
		./bulkled.sh $1 0;echo 1;;
	    2)
		./bulkled.sh $1 0;
		echo 14 > /proc/gpio_led;echo 24 > /proc/gpio_led;echo 2;;
	    3)
		./bulkled.sh $1 0;
		echo 11 > /proc/gpio_led;echo 21 > /proc/gpio_led;echo 3;;
	    4)
		./bulkled.sh $1 0;
		echo 11 > /proc/gpio_led;echo 21 > /proc/gpio_led;echo 4;;
	esac;;
    870)
	case $2 in
	    0)
		echo 0 > /sys/class/gpio/gpio49/value;
		echo 1 > /sys/class/gpio/gpio50/value;
		echo 0 > /sys/class/leds/internet:green/brightness;
		echo 1 > /sys/class/leds/internet:orange/brightness;
		echo 1 > /sys/class/gpio/gpio83/value;
		echo 1 > /sys/class/gpio/gpio84/value;
		echo 1 > /sys/class/gpio/gpio51/value;echo 0;;
	    1)
		./bulkled.sh $1 0;echo 1;;
	    2)
		echo 1 > /sys/class/gpio/gpio49/value;
		echo 1 > /sys/class/gpio/gpio50/value;
		echo 0 > /sys/class/leds/internet:orange/brightness;
		echo 1 > /sys/class/gpio/gpio83/value;
		echo 1 > /sys/class/gpio/gpio84/value;
		echo 1 > /sys/class/gpio/gpio51/value;
		echo timer > /sys/class/leds/internet:green/trigger;
		echo 500 > /sys/class/leds/internet:green/delay_on;
		echo 250 > /sys/class/leds/internet:green/delay_off;
		echo 2;;
	    3)
		./bulkled.sh $1 2;echo 3;;
	    4)
		echo 1 > /sys/class/gpio/gpio49/value;
		echo 0 > /sys/class/gpio/gpio50/value;
		echo 0 > /sys/class/leds/internet:green/brightness;
		echo 0 > /sys/class/leds/internet:orange/brightness;
		echo 1 > /sys/class/gpio/gpio83/value;
		echo 1 > /sys/class/gpio/gpio84/value;
		echo 1 > /sys/class/gpio/gpio51/value;
		echo 4;;
	esac;;
    5402)
	case $2 in
	    0)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo "11 1 9 9" > /proc/ncc;
		echo "13 1 9 9" > /proc/ncc;
		echo 0;;
	    1)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo "11 1 9 9" > /proc/ncc;
		echo "13 1 9 9" > /proc/ncc;
		echo 1;;
	    2)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo "8 2 9 9" > /proc/ncc;
		echo 2;;
	    3)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo "7 1 9 9" > /proc/ncc;
		echo "8 1 9 9" > /proc/ncc;
		echo 3;;
	    4)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo "8 1 9 9" > /proc/ncc;
		echo 4;;
	    5)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		for i in 0 2 3 4 5 6 7 8 9 10 12 14 15
		do
			echo "$i 1 9 9" > /proc/ncc;
		done
		echo 5;;
	    6)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		for i in 1 11 13
		do
			echo "$i 1 9 9" > /proc/ncc;
		done
		echo 6;;
	    7)
		for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		do
			echo "$i 0 9 9" > /proc/ncc;
		done
		echo 7;;
	esac;;
esac
exit 0

