# Creating text report using awk command

BEGIN { printf "\n\t\tResult for the Students of Class - XII (A)"
        printf "\n\t\t------------------------------------------"
        printf ("\n%8s %6s %6s %6s %6s %6s %6s %5s %8s", "NAME", "MARKS1", "MARKS2", "MARKS3", "MARKS4", "MARKS5", "TOTAL", "AVERAGE", "GRADE")
        printf "\n========================================================================="
}        
{
	total = ($2 + $3 + $4 + $5 + $6)
	average = total / 5
	if (average <= 40)
		grade = "Grade-C"
	else if (average <= 60)
		grade = "Grade-B"
	else
		grade = "Grade-A"
		
	printf "\n%8s %6s %6s %6s %6s %6s %6s %5.2f %10s", $1, $2, $3, $4, $5, $6, total, average, grade
}
END {
        printf "\n=========================================================================\n\n\n"        
}
