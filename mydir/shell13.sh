# Pattern printing - 1
# 
# n = 6 (user given number)
#                i    .    *
#             -----------------
# .....*         1    5    1       (n, i)
# ....***        2    4    3  . => (n - i)
# ...*****       3    3    5
# ..*******      4    2    7  * => (2 * i - 1)
# .*********     5    1    9
# ***********    6    0   11
#             -----------------
#             Tracing Table (For finding logic)
# 

echo -n "Please enter the number of layers: "
read n
i=1
while [ $i -le $n ] ; do
	blank=`expr $n - $i`
	j=1
	while [ $j -le $blank ] ; do
		echo -n "."
		j=`expr $j + 1`
	done

	star=`expr 2 \* $i - 1`
	j=1
	while [ $j -le $star ] ; do
		echo -n "*"
		j=`expr $j + 1`
	done
	echo ""
	i=`expr $i + 1`
done

echo -e "\nEnd of the shell script...\n"

