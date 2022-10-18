# Conditional statements (if-elif-else-fi) (maximummm of three user given numbers)

echo -n "Please enter the first number: "
read num1
echo -n "Please enter the second number: "
read num2
echo -n "Please enter the third number: "
read num3

# comparison / relational operators in shell script: -ge -gt -le -lt -eq -ne
# In other programming languages: > >= < <= == <> !=
# In FORTRAN programming language: .gt. .ge. .lt. .le. .eq. .ne.

echo -e "\nSo input numbers are $num1, $num2 and $num3...\n"

echo "STRATEGY - 1..."
echo "---------------" 
if [ $num1 -gt $num2 ]
then
	if [ $num1 -gt $num3 ] 
	then
		echo "So the first number num1 = $num1 is the maximum number..."
	else
		echo "So the third number num3 = $num3 is the maximum number..."		
	fi
elif [ $num2 -gt $num3 ]
then
	echo "So the second number num2 = $num2 is the maximum number..."
else
	echo "So the third number num3 = $num3 is the maximum number..."
fi

echo -e "\nSTRATEGY - 2..."
echo "---------------" 
if [ $num1 -gt $num2 ] ; then
	if [ $num1 -gt $num3 ] ; then
		echo "So the first number num1 = $num1 is the maximum number..."
	else
		echo "So the third number num3 = $num3 is the maximum number..."		
	fi
elif [ $num2 -gt $num3 ] ; then
	echo "So the second number num2 = $num2 is the maximum number..."
else
	echo "So the third number num3 = $num3 is the maximum number..."
fi

echo -e "\nSTRATEGY - 3..."
echo "---------------" 
if [ \( $num1 -gt $num2 \) -a \( $num1 -gt $num3 \) ] ; then
		echo "So the first number num1 = $num1 is the maximum number..."
elif [ $num2 -gt $num3 ] ; then
	echo "So the second number num2 = $num2 is the maximum number..."
else
	echo "So the third number num3 = $num3 is the maximum number..."
fi

echo -e "\nEnd of the shell scrupt...\n"


# -a => AND logic
# -o => OR Logic

