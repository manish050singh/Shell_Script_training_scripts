# Prime check function
# # prime_check() function will take a number a an input argument and checks whether the number is prime or not. If prime number then return 1 otherwise return 0

# Prime number is that number which can be divide by 1 and by that number only. So it has only two factors. E.g. 101, 13, 19 etc.

# prime_check() function code
prime_check() {
	num=$1
	for (( factor = 2; factor < num; factor++ )) ; do
		remainder=`expr $num % $factor`
		if [ $remainder -eq 0 ] ; then
			return 0
		fi
	done
	return 1
}

# main code
echo -n "Please enter one integer: "
read number
echo "Now checking whether $number is a PRIME number or not..."
prime_check $number
result=$?
if [ $result -eq 1 ] ; then
	echo "$number is a PRIME number..."
else
	echo "$number is NOT a PRIME number..."
fi

echo -e "\nEnd of the shell script...\n"
