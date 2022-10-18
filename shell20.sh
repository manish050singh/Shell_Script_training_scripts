#  Upper case to lower case conversion and vice versa

mystr="calCUTta unIVersiTY"
echo "The original string is $mystr..."

# here tr command stands for translate

mystr_upper=`echo $mystr | tr "[a-z]" "[A-Z]"`
echo "So the processed string in Upper Case is $mystr_upper..."

mystr_lower=`echo $mystr | tr "[A-Z]" "[a-z]"`
echo "So the processed string in Lower Case is $mystr_lower..."

echo -e "\nEnd of the shell script...\n"
