# Adding all command line arguments

total=0

for arg in $@ ; do
	total=`expr $total + $arg`
	echo "After adding $arg, the current value in total is $total..."
done

echo -e "\nSo the final total is $total..."

echo -e "\nEnd of the shell script...\n"


