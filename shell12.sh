# Printing first n numbers of Fibonacci Series
# Fibonacci Series:
#   index ->  1  2  3  4  5  6  7  8  9 10 ... 
# numbers ->  0  1  1  2  3  5  8 13 21 34 ...
# In Fibonacci Series, the first two terms are 0 and 1. And any next term is equal to the sum of the previous two terms.

echo -e "\nPlease enter the number of terms: \c"
read n

f1=0
if [ $n -ge 1 ] ; then
	echo -n "$f1, "
fi

f2=1
if [ $n -ge 2 ] ; then
	echo -n "$f2, "
fi

place_no=3
while [ $place_no -le $n ] ; do
	f3=`expr $f1 + $f2`
	echo -n "$f3, "
	f1=$f2
	f2=$f3
	place_no=`expr $place_no + 1`
done

echo -e "\n\nEnd of the shell script...\n"
