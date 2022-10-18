# Using prime check function we shall find all prime numbers within a user given range
# We shall list the all the prime numbers available within the user given range and display them on the console and also write them on to a data file

# prime_check_optimized() function code
prime_check_optimized() {
	num=$1
	sqrt_num=`echo "scale=0; (sqrt($num))" | bc -l`
	# for (( factor = 2; factor < num; factor++ )) ; do
	for (( factor = 2; factor <= sqrt_num; factor++ )) ; do
		remainder=`expr $num % $factor`
		if [ $remainder -eq 0 ] ; then
			return 0
		fi
	done
	return 1
}

# 100 => (1, 100), (2, 50), (4, 25), (5, 20), (10, 10)
# Always factors will come in paris, That means if x is a factor of n then another factor is n/x.
# To get all the distinct facctors os n we should search upto sqrt(n) starting from 1.

# main code
if [ $# -lt 3 ] ; then
	echo "Insufficient number of command line arguments apssed..."
	echo "USAGE: SHELL_PROGRAM_NAME LOWER_LIMIT UPPER_LIMIT OUTPUT_FILE_NAME"
	echo "Try again...!!!"
else
	llimit=$1
	ulimit=$2
	file_name=$3
	echo -e "So all the Prime Numbers within range $llimit to $ulimit are:\n"
	echo -e "So all the Prime Numbers within range $llimit to $ulimit are:\n" > $file_name
	output_str=""
	for (( num = llimit; num <= ulimit; num++ )) ; do
		prime_check_optimized $num
		result=$?
		if [ $result -eq 1 ] ; then
			echo -n "$num, "
			echo $num >> $file_name
			output_str=$output_str$num", "
		fi
	done
fi
echo $output_str >> $file_name
echo -e "\n\nEnd of the shell script...\n"
