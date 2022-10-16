#! /bin/bash/ -x

echo "Enter first number :- "
echo "Enter second number :- "

read num1
read num2

function palindromeCheck(){
	if [ $num1 -eq $num2 ]
	then
		echo "Palindrome"
	else
		echo "Not Palindrome"
	fi
}

palindromeCheck
