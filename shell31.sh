# Generating Fibonacci series using user defined recursive function

# Fibonacci numbers:  1  1  2  3  5  8 13 21 34 55 ...
#   Fibonacci index:  1  2  3  4  5  6  7  8  9 10 ...
# Recursive function has two cases:
# 1) Base Case: For certain inputs outputs are pre-known to us. At these base cases, then recursion terminates.
# 2) Recursive Case: The function will call itself.

fibo () {
	if [ $1 -eq 1 -o $1 -eq 2 ] ; then
		echo 1    # base case
	else
		pos1=`expr $1 - 2`
		pos2=`expr $1 - 1`
		f1=`fibo $pos1`    # recursive case
		f2=`fibo $pos2`    # recursive case
		f3=`expr $f1 + $f2`
		echo $f3
	fi
}

echo -e "\nPlease enter the number of terms: \c"
read n

i=1
while [ $i -le $n ] ; do
	fibo $i
	i=`expr $i + 1`
done

echo -e "\nEnd of the shell script...\n"
