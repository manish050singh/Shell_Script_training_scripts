# User defined functions in shell script

# defining the function body
hello() {
	echo "Hello world...!!!"
}

my_hello() {
	echo "Hello to $1 $2"
}

my_addition() {
	echo "Adding values $1 and $2..."
	result=`expr $1 + $2`
	return $result
}


# calling or invoking the user defined function
hello
hello
hello

echo
my_hello Rita Sen
my_hello Agnibha Agarwal
my_hello Bidhun Biswas

echo
my_addition 30 40
return_value=$?
echo "So the calculated sum is $return_value..."

echo
my_addition 100 150
return_value=$?
echo "So the calculated sum is $return_value..."

echo
my_addition 100 200
return_value=$?
echo "So the calculated sum is $return_value..."

echo
my_addition 150 250
return_value=$?
echo "So the calculated sum is $return_value..."


# user defined function can return value of size one Byte only. Using this value only positive intergers can be represented with value ranging from 0 to 255.

# 300 = 256 + 44 = 256 + 32 + 8 + 4 = 0000 0001 0010 1100
#                                     --------- ---------
#                                     High Byte Low Byte
#                                        (1)      (44)

# 400 = 256 + 144 = 256 + 128 + 16 =  0000 0001 1001 0000
#                                     --------- ---------
#                                     High Byte Low Byte
#                                        (1)      (144)













