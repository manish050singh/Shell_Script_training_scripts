# Pattern printing - 2 (Class Assignment - 1 / Day-2)
# 
# n = 6 (user given number)
#                i    .    *
#             -----------------
# ***********    1    0   11       (n, i)
# .*********     2    1    9  . => (i - 1)
# ..*******      3    2    7
# ...*****       4    3    5  * => (2 * (n - i) + 1)
# ....***        5    4    3
# .....*         6    5    1
#             -----------------
#             Tracing Table (For finding logic)
# 

echo -n "Please enter the number of layers: "
read n
i=1
while [ $i -le $n ] ; do
	blank=`expr $i - 1`
	j=1
	while [ $j -le $blank ] ; do
		echo -n "."
		j=`expr $j + 1`
	done

	star=`expr 2 \* \( $n - $i \) + 1`
	j=1
	while [ $j -le $star ] ; do
		echo -n "*"
		j=`expr $j + 1`
	done
	echo ""
	i=`expr $i + 1`
done

echo -e "\nEnd of the shell script...\n"

