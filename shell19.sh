# Check whether a given username is valid or not (Strategy - 1 to 6)

echo -n "Please enter a username: "
read username
echo -e "\nSearching for the given username $username..."

echo -e "\nSTRATEGY - 1"
echo "------------"
username1=$username":"
echo $username, $username1
if grep ^"$username1" /etc/passwd > /dev/null ; then
	echo "STRATEGY-1: $username is a VALID username..."
else
	echo "STRATEGY-1: $username is NOT a VALID username..."
fi

echo -e "\nSTRATEGY - 2"
echo "------------"
if grep -w ^"$username" /etc/passwd > /dev/null ; then
	echo "STRATEGY-2: $username is a VALID username..."
else
	echo "STRATEGY-2: $username is NOT a VALID username..."
fi

echo -e "\nSTRATEGY - 3"
echo "------------"
my_flag=0
exec < /etc/passwd
while read each_row ; do
	first_field=`echo $each_row | cut -d":" -f1`
	if [ $first_field = $username ] ; then
		echo "STRATEGY-3: $username is a VALID username..."
		my_flag=1
		break
	fi
done
if [ $my_flag = 0 ] ; then
	echo "STRATEGY-3: $username is NOT a VALID username..."
fi

echo -e "\nSTRATEGY - 4"
echo "------------"
my_flag=0
while read each_row ; do
	first_field=`echo $each_row | cut -d":" -f1`
	if [ $first_field = $username ] ; then
		echo "STRATEGY-4: $username is a VALID username..."
		my_flag=1
		break
	fi
done < <(cat /etc/passwd)
if [ $my_flag = 0 ] ; then
	echo "STRATEGY-4: $username is NOT a VALID username..."
fi

echo -e "\nSTRATEGY - 5"
echo "------------"
my_flag=0
for each_first_field in `cat /etc/passwd | cut -d":" -f1` ; do
	if [ $each_first_field = $username ] ; then
		echo "STRATEGY-5: $username is a VALID username..."
		my_flag=1
		break
	fi
done
if [ $my_flag = 0 ] ; then
	echo "STRATEGY-5: $username is NOT a VALID username..."
fi

echo -e "\nSTRATEGY - 6"
echo "------------"
username1=$username":"
length_name=`expr length $username1`
my_flag=0
for each_username in `cat /etc/passwd | cut -c1-$length_name` ; do
	if [ $each_username = $username1 ] ; then
		echo "STRATEGY-6: $username is a VALID username..."
		my_flag=1
		break
	fi
done
if [ $my_flag = 0 ] ; then
	echo "STRATEGY-6: $username is NOT a VALID username..."
fi

echo -e "\nEnd of the shell script...\n"

