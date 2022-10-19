# Dealing with the virtual array also called associative array

# Array means against one variable we can store multiple values at its different subscript or index location. That is why we say array as a subscripted variable. 

# Variables a1, a2, a2, a4 => a$i,  i=`expr $i + 1`

echo -e "\nPlease enter the number of data items: \c"
read n

echo -e "\nCreating and initializing the virtual array..."
i=1
while [ $i -le $n ] ; do
	var=a$i
	echo -e "\tEnter item value for the location number $i: \c"
	read $var
	i=`expr $i + 1`
done

echo -e "\nDisplaying the content of the virtual array..."
i=1
while [ $i -le $n ] ; do
	var=a$i
	b=$var
	echo -e "\tLocation number: $b\c"
	eval value=\$$b
	echo " and content: $value..."
	i=`expr $i + 1`
done

# Take a search value from the user and search it in the virtual array

echo -e "\nEnd of the shell script...\n"

