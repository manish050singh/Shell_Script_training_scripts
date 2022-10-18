# Calendar shell script with roman month number as command line argument (Class Assignment - 2 / Day-2)

# Write a shell script to modify the cal command of Linux/Unix so that it prints the calendar of the corresponding month against the given year when the month number is given in roman. E.g. I, II, III, IV, ..., XII. Where I is for April, II is for May and in this way XI is for February and XII is for March.

# So as a result 'shell23.sh X 2020' will generate January 2020 calendar as output.
# So 'shell23.sh X 2020' is equivalent to 'cal 1 2020'

if [ $# -eq 2 ] ; then
 	case $1 in
 		I|i) cal 4 $2
 		     ;;
 		II|ii) cal 5 $2
 		     ;;
 		III|iii) cal 6 $2
 		     ;;
 		IV|iv) cal 7 $2
 		     ;;
 		V|v) cal 8 $2
 		     ;;
 		VI|vi) cal 9 $2
 		     ;;
 		VII|vii) cal 10 $2
 		     ;;
 		VIII|viii) cal 11 $2
 		     ;;
 		IX|ix) cal 12 $2
 		     ;;
 		X|x) cal 1 $2
 		     ;;
 		XI|xi) cal 2 $2
 		     ;;
 		XII|xii) cal 3 $2
 		     ;; 		     
 	esac
elif [ $# -eq 1 ] ; then
	cal $1
else
	echo "Invalid number of arguments have been provided..."
	echo "USAGE: $0 month_no_in_roman year_no"
	echo "Try Again...!!!"
fi

echo -e "\nEnd of the shell script...\n"

