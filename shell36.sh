# Dealing with the grep command

# two databases with fields/attributes: emp_id, emp_name, emp_designation, emp_department, emp_doj and emp_salary
# We are using two data files -
# 1. emp.lst -> Fixed width data file on employee database
# 2. emp1.lst -> Delimited file on employee database with '|' as the field delimiter

# grep is a pattern searching command
# grep scans its input for a pattern and displays lines corresponding to the pattern, the line numbers of the file names where the pattern exists.
# grep command syntax is: grep options pattern filename(s)

# to display all sales records
grep "sales" emp.lst
grep "sales" emp1.lst

# unsuccessful pattern searching
grep "president" emp.lst
grep "president" emp1.lst
# for unsuccessful grep search no error message will be produce.

# searching for a pattern on multiple files at the same time
grep "director" emp.lst emp1.lst

# for case insensitive searching use the option -i
grep "jai sharma" emp.lst
grep "jai sharma" emp1.lst
grep "JAI SHARMA" emp.lst
grep "JAI SHARMA" emp1.lst

grep "jai Sharma" emp.lst
grep "jai Sharma" emp1.lst

grep -i "jai sharma" emp.lst
grep -i "jai sharma" emp1.lst
grep -i "JAI SHARMA" emp.lst
grep -i "JAI SHARMA" emp1.lst
# here -i option is for case insensitive

# displaying all the records except record with designation director
grep "director" emp.lst
grep "director" emp1.lst

grep -v "director" emp.lst
grep -v "director" emp1.lst

# displaying records matching with pattern with line numbers
grep "marketing" emp.lst
grep "marketing" emp1.lst

grep -n "marketing" emp.lst
grep -n "marketing" emp1.lst

# displaying the number of records with designation 'director'
grep "director" emp.lst
grep "director" emp1.lst

grep -c "director" emp.lst
grep -c "director" emp1.lst

director_count=`grep -c "director" emp.lst`
echo "So the number of director is $director_count..."

# searching for multiple patterns in a same grep command with option -e
grep -e "agarwal" -e "aggarwal" -e "agrawal" emp.lst
grep -e "agarwal" -e "aggarwal" -e "agrawal" emp1.lst

# grep with regular expressions
grep "[aA]g[ar][ar]wal" emp.lst
grep "[aA]g[ar][ar]wal" emp1.lst

grep "[aA]gg*[ar][ar]wal" emp.lst
grep "[aA]gg*[ar][ar]wal" emp1.lst

grep "j.*saxena" emp.lst
grep "j.*saxena" emp1.lst

# printing those records starting with '2'
grep "^2" emp.lst
grep "^2" emp1.lst 

# those records having last but 4th character 7 at the end of the record
grep '7...$' emp.lst
grep '7...$' emp1.lst

# using extended search using -E option
grep -E "[aA]gg?arwal" emp.lst
grep -E "[aA]gg?arwal" emp1.lst

grep -E "sengupta|dasgupta" emp.lst
grep -E "sengupta|dasgupta" emp1.lst

grep -E "(sen|das)gupta" emp.lst
grep -E "(sen|das)gupta" emp.lst

# Regular Expession Rules:
# ------------------------
# g* means no 'g' or multiple 'g' characters i.e. null, 'g', 'gg', 'ggg', 'gggg' and so on...
# g+ means single or multiple 'g' characters i.e. 'g', 'gg', 'ggg', 'gggg' and so on...
# * means any substring including null
# . means any one character
# a? meand either a single 'a' or no 'a'

