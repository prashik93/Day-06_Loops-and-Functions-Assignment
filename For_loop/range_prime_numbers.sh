#! /bin/bash/ -x

echo "Enter a number upto which you want a prime numbers :- "
read num
count=0

for((n=2; n<=$num; n++))
do
	t=1
	if [ $n -lt 2 ]
	then
		echo "Please give other numbers other than 0 & 1"
	else
		for((i=2; i<$n; i++))
		do
			if (($n%i==0))
			then
				echo "$n is not a prime number"
				t=0
				break
			fi
		done
	if [ $t == 1 ]
	then
		echo "$n is a prime number"
		count=`expr $count + 1`
	fi
fi
done
echo "Total prime numbers upto $num are $count"
