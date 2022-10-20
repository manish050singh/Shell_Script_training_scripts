# Pattern printing - 3
# 
# n = 11 (user given ODD layer number)
#                i    .    *   m = (n + 1) / 2 = 6
#             -----------------
# .....*         1    5    1       (n, m, i)
# ....***        2    4    3  . => (m - i)
# ...*****       3    3    5
# ..*******      4    2    7  * => (2 * i - 1)
# .*********     5    1    9
# *********** ___6____0__ 11___
# .*********     7    1    9
# ..*******      8    2    7  . => (i - m)
# ...*****       9    3    5
# ....***       10    4    3  * => (2 * (n - i) + 1)
# .....*        11    5    1
#            -----------------
#             Tracing Table (For finding logic)
# 

while [ true ] ; do
	echo -n "Please enter the ODD number of layers: "
	read n
	if (( n % 2 == 1 )) ; then
		break
	fi
done
m=$(((n + 1) / 2))
for (( i = 1; i <= n; i++ )) ; do
	if (( i > m )) ; then
		blank=$(( i - m ))
		star=$(( 2 * (n - i) + 1 ))
	else
		blank=$(( m - i ))
		star=$(( 2 * i - 1 ))
	fi
	for (( j = 1; j <= blank; j++ )) ; do
		echo -n "."
	done
	for (( j = 1; j <= star; j++ )) ; do
		echo -n "*"
	done
	echo ""
done

echo -e "\nEnd of the shell script...\n"

