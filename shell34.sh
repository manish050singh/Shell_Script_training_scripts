# Dealing with indexed array in bash shell syntax
echo -ne "\nPlease enter the number of elements: "
read n

echo -e "\nCreating and initializing the content of the array..."
i=1
while (( i <= n )) ; do
	echo -ne "\tPlease enter element for the index $i: "
	read a[$i]
	i=$(( i + 1 ))
done

echo -e "\nDisplaying the content of the array..."
i=1
while (( i <= n )) ; do
	echo -e "\tIndex number: $i and content: ${a[i]} and content: $((a[i]))..."
	i=$(( i + 1 ))
done

echo -e "\nSearching an element in the contents of the array..."
echo -e "Please enter your search iterm: \c"
read search_item
my_flag=0
i=1
while (( i <= n )) ; do
	if (( search_item == a[i] )) ; then
		echo -e "\tSuccessful Searching..."
		echo -e "\tData item $search_item has been found at the location $i..."
		my_flag=1
		break
	fi
	i=$(( i + 1 ))
done

if (( my_flag == 0 )) ; then
	echo -e "\tUnsuccesful Searching..."
	echo -e "\tData item $search_item could not be found in the array..."
fi

echo -e "\nProcessing the content of the array..."
max_item=$(( a[1] ))
min_item=${a[1]}
total_item=${a[1]}
i=2
while (( i <= n )) ; do
	if (( max_item < a[i] )) ; then
		max_item=${a[i]}
	fi
	if (( min_item > a[i] )) ; then
		min_item=${a[i]}
	fi
	total_item=$(( total_item + a[i] ))
	i=$(( i + 1 ))
done

echo -e "\tMaximum of all data items of the array is: $max_item..."
echo -e "\tMinimum of all data items of the array is: $min_item..."
echo -e "\tTotal of all data items of the array is: $total_item..."
average_item=$(( total_item / n ))
echo -e "\tAverage of all data items of the array is: $average_item..."

echo -e "\nEnd of the shell script...\n"











