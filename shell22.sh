# Check whether a given string iis Palindrome or not
# That string will be called a palindrome string is the reverse of the string is same as the original string

# As example: malayalam, dad, mom, radar, wow, racecar, sis, madam, opo, peep, stats, rotator, level, refer, sagas, civic, noon etc.

echo -en "\nPlease enter your string: "
read orgstr
orgstr=`echo $orgstr | tr "[A-Z]" "[a-z]"`
strlen=`expr length $orgstr`

echo -e "\nStrategy - 1"
echo "------------"
revstr=""
for (( i = strlen; i >= 1; i-- )) ; do
	char=`echo $orgstr | cut -c$i`
	revstr=$revstr$char
done

if [ $revstr == $orgstr ] ; then
	echo "The given string is a PALINDROME String..."
else
	echo "The given string is NOT a PALINDROME String..."
fi

echo -e "\nSTRATEGY - 2"
echo "------------"
# Case study: "malayalam" strlen = 9
# 
#     i   j
#   ---------
#     1   9   i -> 1 to (strlen / 2)
#     2   8   j -> (strlen - i + 1)
#     3   7
#     4   6
#   --------- Tracing table for logic building
# 
flag=0
for (( i = 1; i <= (strlen / 2); i++ )) ; do
	position=`expr $strlen - $i + 1`
	char1=`echo $orgstr | cut -c$i`
	char2=`echo $orgstr | cut -c$position`
	echo "Comparing $char1 at $i and $char2 at $position..."
	if [ $char1 != $char2 ] ; then
		flag=1
		break
	fi
done

if [ $flag == 0 ] ; then
	echo "The given string is a PALINDROME String..."
else
	echo "The given string is NOT a PALINDROME String..."
fi

echo -e "\nEnd of the shell script...\n"
