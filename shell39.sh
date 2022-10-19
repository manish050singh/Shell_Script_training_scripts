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

# to run this script (awk script) issue the following command -
# awk -f shell39.sh student_marks.dat
# 
# 'student_marks.dat' data file content
# Samrat 30 40 50 60 70
# Titli 35 45 56 67 78
# Agnibha 44 66 55 77 88
# Sanjib 12 14 34 23 35
# Bidhun 34 45 32 44 35
# Titas 56 47 56 67 56
# Sambhu 34 23 12 67 45
# Samar 44 55 33 66 55

