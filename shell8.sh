# Calculator program using the conditional statements
# Dealing with operators : + - \* / %

echo -n "Please enter the first integer: "
read num1
echo -e "Please enter the second integer: \c"
read num2
echo -e "\nSo the input numbers are $num1 and $num2..."

echo -e "\nM A I N  M E N U ..."
echo "--------------------"
echo "1 >  A D D I T I O N  O P E R A T I O N ..."
echo "2 >  S U B T R A C T I O N  O P E R A T I O N ..."
echo "3 >  M U L T I P L I C A T I O N  O P E R A T I O N ..."
echo "4 >  D I V I S I O N  O P E R A T I O N ..."
echo "5 >  M O D U L U S  O P E R A T I O N ..."
echo "* >  E X I T  O P E R A T I O N ..."
echo -e "Please enter your option number: \c"
read choice_no

if [ $choice_no -eq 1 ] ; then
	echo -e "\nADDITION Operation has been selected..."
  	result=`expr $num1 + $num2`
	echo "So the required result is $result = $num1 + $num2..."
elif [ $choice_no -eq 2 ] ; then
	echo -e "\nSUBTRACTION Operation has been selected..."
	result=`expr $num1 - $num2`
	echo "So the required result is $result = $num1 - $num2..."
elif [ $choice_no -eq 3 ] ; then
	echo -e "\nMULTIPLICATION Operation has been selected..."
	result=`expr $num1 \* $num2`
	echo "So the required result is $result = $num1 * $num2..."
elif [ $choice_no -eq 4 ] ; then
	echo -e "\nDIVISION Operation has been selected..."
	if [ $num2 -eq 0 ] ; then
		echo "DIVISION by ZERO is Illegal...!!!"
		echo "Try Again...!!!"
	else
		result=`expr $num1 / $num2`
		echo "So the required result is $result = $num1 / $num2..."
	fi
elif [ $choice_no -eq 5 ] ; then
	echo -e "\nMODULUS Operation has been selected..."
	result=`expr $num1 % $num2`
	echo "So the required result is $result = $num1 % $num2..."
else
	echo -e "\nInvalid choice number has been provided..."
	echo "Try Again...!!!"
fi

echo -e "\n\nEnd of the shell script...\n"

