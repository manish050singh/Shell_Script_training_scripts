# While, For, Until loop constructs
# relational operators are: -lt -le -gt -ge -eq -ne
echo -e "\nLooping - 1 (While loop)"
echo "-----------"
count=1
while [ $count -le 5 ] ; do
	echo "Looping for count = $count..."
	count=`expr $count + 1`
done

# while loop in bash syntax
# relational operators are: < <= > >= != =
echo -e "\nLooping - 2 {While loop in bash syntax)"
echo "-----------"
count=1
while (( count <= 5 )) ; do
	echo "Looping for count = $count..."
	count=$(( count + 1 ))
done

# for loop in bash syntax
echo -e "\nLooping - 3 (For loop in bash syntax)"
echo "-----------"
for (( count = 1; count <= 10; count+=2 )) ; do
	echo "Looping for count = $count..."
done

# for-each loop
echo -e "\nLooping - 4 (For loop)"
echo "-----------"
echo "All alphabets in lower case are -"
# for each_alphabet in a b d e f g h i j k l m ; do
for each_alphabet in `cat alphabets.txt` ; do
	echo -n "$each_alphabet, "
done
echo ""

# until loop
echo -e "\nLooping - 5 (Until loop)"
echo "-----------"
count=1
until [ $count -gt 5 ] ;do
	echo "Looping for count = $count..."
	count=`expr $count + 1`
done

# multiplication table generation
echo -e "\nLooping - 6 (For-each loop)"
echo "-----------"
n=5
for i in 1 2 3 4 5 6 7 8 9 10 ; do
	product=`expr $n \* $i`
	echo "$n x $i = $product..."
done


echo -e "\nEnd of the shell script...\n"

# In case of for and while loops, the loop executes when the condition is true. On the other hand in case of until, the loop executes when the condition is false.

# nested loops
echo -e "\nLooping - 7 (Nested Looping)"
echo "-----------"
echo "Visit Doctor"    # will execute for 1 time
total_medi=0
for (( day = 1; day <= 5; day++ )) ; do
	echo "Good Morning to all..."    # will execute for 5 times
	medicount=1
	while (( medicount <= 3 )) ; do
		echo "Day No. = $day and Medicine count = $medicount..."
		medicount=$(( medicount + 1))  # will execute for 15 times
		total_medi=$(( total_medi + 1 ))
	done
	echo "Good Night to all..."    # will execute for 5 times
	echo "--------------------------------------------"
done
echo "Thanks to Doctor..."    # will execute for 1 time 
echo "Total number of medicine consumed is $total_medi..."

echo -e "\nEnd of the story...\n"

