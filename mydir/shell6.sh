# Experiments with expr
# result = ((a * b) + c)   # 2500
a=100
b=20
c=500

# result = ((100 * 20) + 500) = 2500
result=`expr \( \( $a \* $b \) + $c \)`
echo "So the final result is $result..."

result=$((( $a * $b ) + $c ))
echo "So the final result is $result..."

result=$((( a * b ) + c ))
echo "So the final result is $result..."

result=$(((a*b)+c))
echo "So the final result is $result..."

date_variable=`date`
echo "So date_variable = $date_variable..."

date_variable=$(date)
echo "So date_variable = $date_variable..."

echo -e "\nEnd of the shell script...\n"
