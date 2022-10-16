#! /bin/bash/ -x

echo " 1. Convert Celsius to Fahrenheit "
echo " 2. Convert Fahrenheit to Celsius "
echo " Your choice( 1 0r 2 ) :- "

read ch

function checkTemperature(){

	case $ch in
		1)
			echo " Enter temperature in Celsius :- "
			read temp
			fahrenheit=$((180*temp/100 + 32))
			echo $fahrenheit
		;;
		2)
			echo " Enter temperature in Fahrenheit :- "
			read temp
			celsius=$(( (($temp-32)*5/9) ))
			echo $celsius
		;;
		*)
			echo "Wrong Choice"
		;;
	esac
}

checkTemperature



#echo " 1. Convert Celsius to Fahrenheit "
#echo " 2. Convert Fahrenheit to Celsius "
#echo " Your choice( 1 0r 2 ) :- "

#read ch

#if [ $ch -eq 1 ]
#then
#	echo " Enter temperature in Celsius :- "
#	read temp
#	fahrenheit=$((180*temp/100 + 32))
#	echo $fahrenheit

#elif [ $ch -eq 2 ]
#then
#	echo " Enter temperature in Fahrenheit :- "
#	read temp
#	celsius=$(( (($temp-32)*5/9) ))
#	echo $celsius
#else
#	echo "Wrong Choice"

#fi




