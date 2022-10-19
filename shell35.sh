# Sorting of array contents using bubble sort algorithm

# BUBBLE SORT TRACING:
# --------------------
#  index ->  1   2   3   4   5                    n = 5
# values -> 55  44  33  22  11            pass (i)   #comparisons (j)
#           ------                      -------------------------------
#           44  55  33  22  11                1        4    i => 1 to (n - 1) times
#               ------                        2        3
#           44  33  55  22  11                3        2    j => i to (n - i) times
#                   ------                    4        1
#           44  33  22  55  11          -------------------------------
#                       ------
#           44  33  22  11  55
#           ------
# ----------------------------------- Pass-1 Ends (55 placed) (4 comparisons)
#           33  44  22  11  55
#               ------
#           33  22  44  11  55
#                   ------
#           33  22  11  44  55
#           ------
# ----------------------------------- Pass-2 Ends (44 placed) (3 comparisons)
#           22  33  11  44  55
#               ------
#           22  11  33  44  55
#           ------
# ----------------------------------- Pass-3 Ends (33 placed) (2 comparisons)
#           11  22  33  44  55
# ----------------------------------- Pass-4 Ends (22 placed) (1 comparison)
#
# BUBBLE SORT ALGORITHM:
# ----------------------
# for i = 1 to (n - 1)
#     for j = 1 to (n - i)
#         if (a[j] > a[j + 1]) then
#             temp = a[j]
#             a[j] = a[j + 1]
#             a[j + 1] = temp
#         end if
#     end for
# end for

echo -en "\nPlease enter the number of elements: "
read n

echo -e "\nCreating and initializing the content of the array..."
i=1
while (( i <= n )) ; do
	echo -en "\tPlease enter item element for the inde $i: "
	read a[$i]
	i=$(( i + 1 ))
done 

echo -e "\nDisplaying the content of the unsorted array..."
i=1
while (( i <= n )) ; do
	echo -e "\tSo index number: $i and content: ${a[i]} and content: $((a[i]))..."
	i=$(( i + 1 ))
done

echo -e "\nSorting the content of the array using Bubble Sort algorithm..."

# BUBBLE SORT ALGORITHM:
# ----------------------
# for i = 1 to (n - 1)
#     for j = 1 to (n - i)
#         if (a[j] > a[j + 1]) then
#             temp = a[j]
#             a[j] = a[j + 1]
#             a[j + 1] = temp
#         end if
#     end for
# end for

for (( i = 1; i <= (n - 1); i++ )) ; do
	for (( j = 1; j <= (n - i); j++ )) ; do
		if (( a[j] > a[j + 1] )) ; then
			# swap a[j] and a[j + 1]
			temp=$((a[j]))
			a[j]=${a[j + 1]}
			a[j + 1]=$temp
		fi
	done	
done 

echo -e "\nDisplaying the content of the sorted array..."
i=1
while (( i <= n )) ; do
	echo -e "\tSo index number: $i and content: ${a[i]} and content: $((a[i]))..."
	i=$(( i + 1 ))
done

echo -e "\nEnd of the shell script...\n"
