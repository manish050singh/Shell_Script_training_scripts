# More on user defined functions

# function definition to check the global scopes of the variables
called_function() {
	echo $1 $2 $3
	total=`expr $1 + $2 + $3`
	return $total
}

my_function() {
	var1=2000
	var2=3000
	if (( var1 % 2 == 0 )) ; then
		var3=8000
	fi
	sum=$(( $var1 + $var2 + $var3 ))
}

# calling the function
called_function 10 20 30
result=$?
echo "So the sum is $result..."
echo "So the sum is $total..."

echo
called_function 100 200 300
result=$?
echo "So the sum is $result..."
echo "So the sum is $total..."

# 100 + 200 + 300 = 600 = 512 + 88 = 512 + 64 + 16 + 8
#                 = 0000 0010 0101 1000
#                   --------- ---------
#                    Hi byte  low byte
#                      (2)     (88)

echo
var1=100
var2=200
echo "So var1 = $var1, var2 =  $var2, and var3 = $var3..."
my_function
echo "So var1 = $var1, var2 =  $var2, and var3 = $var3..."
echo "And sum = $sum..." 

echo -e "\nEnd of the shell script...\n"

# It proves that all function variables are having the global scope...








