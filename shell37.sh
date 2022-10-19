# Dealing with the sed command (uses emp.lst and emp1.lst files)

# sed stands for "Stream Editor".
# sed is a multipurpose tool which combines the work of several filters.
# sed performs non-interactive operations on a data stream - hence its name.
# It uses very few options but has lots of features that allows us to select lines and run instructions on them. Learning sed will prepare us well for the Perl programming which uses many of its features.

# two databases with fields/attributes: emp_id, emp_name, emp_designation, emp_department, emp_doj and emp_salary
# We are using two data files -
# 1. emp.lst -> Fixed width data file on employee database
# 2. emp1.lst -> Delimited file on employee database with '|' as the field delimiter

# print the first 3 records and then quit (q)
sed '3q' emp.lst
sed '3q' emp1.lst
# the above command is same as
cat emp.lst | head -3
cat emp1.lst | head -3
head -3 emp.lst
head -3 emp1.lst

# print (p) records within start and end record numbers mentioned
sed -n '1,2p' emp.lst
sed -n '1,2p' emp1.lst
sed -n '2,6p' emp.lst
sed -n '2,6p' emp1.lst
sed -n '4,7p' emp.lst
sed -n '4,7p' emp1.lst

# print (p) from start records tp last ($) record number as mentioned
sed -n '$p' emp.lst
sed -n '$p' emp1.lst

sed -n '8,$p' emp.lst
sed -n '8,$p' emp1.lst

sed -n '10,$p' emp.lst
sed -n '10,$p' emp1.lst

# print other than 3,$ records
sed -n '3,$!p' emp.lst
sed -n '3,$!p' emp1.lst
# here ! denotes negation. same as '1,2p'

# print multiple discrete ranges of records using -e option
sed -n -e '1,2p' -e '7,9p' -e '$p' emp.lst

# it is known as 'context addressing'
# prints records matching with patterns
sed -n '/director/p' emp.lst
sed -n '/director/p' emp1.lst

# using the regular expression
sed -n '/[aA]gg*[ar][ar]wal/p' emp.lst
sed -n '/[aA]gg*[ar][ar]wal/p' emp1.lst

sed -n '/sa[kx]s*ena/p' emp.lst
sed -n '/sa[kx]s*ena/p' emp1.lst

# Regular Expession Rules:
# ------------------------
# g* means no 'g' or multiple 'g' characters i.e. null, 'g', 'gg', 'ggg', 'gggg' and so on...
# g+ means single or multiple 'g' characters i.e. 'g', 'gg', 'ggg', 'gggg' and so on...
# * means any substring including null
# . means any one character
# a? means either a single 'a' or no 'a'
