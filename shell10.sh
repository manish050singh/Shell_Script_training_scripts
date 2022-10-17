# Dealing with the conditional statements

echo -e "\nDoing comparisons with the numeric (non-categorical) data value...\n"
value=10
echo "value = $value..."

if [ $value = 10 ] ; then
	echo "It is working-1..."
else
	echo "It is not working-1..."
fi

if [ $value == 10 ] ; then
	echo "It is working-2..."
else
	echo "It is not working-2..."
fi

if [ $value -eq 10 ] ; then
	echo "It is working-3..."
else
	echo "It is not working-3..."
fi

if [ $value != 100 ] ; then
	echo "It is working-4..."
else
	echo "It is not working-4..."
fi

echo -e "\nDoing comparisons with the non-numeric (categorical) data value..."
value="ten"
echo -e "\nvalue = $value..."

if [ $value = "ten" ] ; then
	echo "It is working-5..."
else
	echo "It is not working-5..."
fi

if [ $value == "ten" ] ; then
	echo "It is working-6..."
else
	echo "It is not working-6..."
fi

# it proves that -eq works with only numerical comparisons
if [ $value -eq "ten" ] ; then  # It is not working
	echo "It is working-7..."
else
	echo "It is not working-7..."
fi

if [ $value != "hundred" ] ; then
	echo "It is working-8..."
else
	echo "It is not working-8..."
fi

echo -e "\nEnd of the shell script...\n"
