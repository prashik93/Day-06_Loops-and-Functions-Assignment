#! /bin/bash/ -x

echo " 1.To check number is prime or not :- "
echo " 2.To check number is palindrome or not :- "
echo " 3.To check palindrome number is also prime or not :- "

read ch

case $ch in
	1)
		echo "Check Number is prime or not---------------------"
		echo "Enter number :- "
		read num
		function prime(){
			for((i=2; i<=$num/2; i++))
			do
				res=$(( num%i ))
				if [ $res -eq 0 ]
				then
					echo "$num is not a prime number"
					exit
				fi
			done
			echo "$num is a prime number"
		}
		prime
	;;
	2)
		echo "Check NUmber palindrome or not-------------------"
		echo "Enter number :- "
		read num

		temp=$num
		rev=0
		function palindrome(){
			while [[ $num -gt 0 ]]
			do
				rem=$((num%10))
				rev=$(( (($rev*10)+$rem) ))
				num=$((num/10))
			done
			if [ $temp -eq $rev ]
			then
				echo "$num is palindrome"
			else
				echo "$num is not palindrome"
			fi
		}
		palindrome
	;;
	3)
		echo "Check palindrome number is prime or not"
		echo "Enter palindrome number :- "
		read num

		temp=$num
		rev=0
		while [[ num -gt 0 ]]
		do
			rem=$((num%10))
			rev=$(( (($rev*10)+$rem) ))
			num=$((num/10))
		done
		if [ $temp -eq $rev ]
		then
			echo "$num is palindrome"
			pal=$rev

			for ((i=2; i<=$pal/2; i++))
			do
				res=$(( $pal%i ))
				if [ $res -eq 0 ]
				then
					echo "$pal is not prime number"
					exit
				fi
			done
			echo "$pal is prime number"

		else
			echo "$num is not palindrome"
		fi
	;;
	*)
		echo "Choose between 1 to 3"
	;;
esac
