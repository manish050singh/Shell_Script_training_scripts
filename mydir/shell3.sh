# Case-switch usage (Version - 2) (with bc)
# Dealing with operators : + - /* / % ^

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
echo "6 >  E X P O N E N T I A T I O N  O P E R A T I O N ..."
echo "* >  E X I T  O P E R A T I O N ..."
echo -e "Please enter your option number: \c"
read choice_no

case $choice_no in
	1) echo -e "\nADDITION Operation has been selected..."
	   result=`echo $num1 + $num2 | bc`
	   echo "So the required result is $result = $num1 + $num2..."
	   ;;
	2) echo -e "\nSUBTRACTION Operation has been selected..."
	   result=`echo $num1 - $num2 | bc`  # | > >>
	   echo "So the required result is $result = $num1 - $num2..."
	   ;;
	3) echo -e "\nMULTIPLICATION Operation has been selected..."
	   result=`echo $num1 \* $num2 | bc`
	   echo "So the required result is $result = $num1 * $num2..."
	   ;;
	4) echo -e "\nDIVISION Operation has been selected..."
	   result=`echo $num1 / $num2 | bc`
	   echo "So the required result is $result = $num1 / $num2..."
	   ;;
	5) echo -e "\nMODULUS Operation has been selected..."
	   result=`echo $num1 % $num2 | bc`
	   echo "So the required result is $result = $num1 % $num2..."
	   ;;
	6) echo -e "\nEXPONENTIATION Operation has been selected..."
	   result=`echo $num1 ^ $num2 | bc`
	   echo "So the required result is $result = $num1 ^ $num2..."
	   ;;
	*) echo -e "\nInvalid choice number has been provided..."
	   echo "Try Again...!!!"
	   ;;	  
esac

echo -e "\n\nEnd of the shell script...\n"

# bc can handle both integer and floating point arithmetic
