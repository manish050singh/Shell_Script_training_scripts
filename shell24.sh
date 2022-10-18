# Dealing with comm and diff commands

# commands used for 'comm' command demonstration:
# comm commdata1.dat commdata2.dat    # displays all the unique and common names in both files
# comm -12 commdata1.dat commdata2.dat  # displays all the common names only
# comm -23 commdata1.dat commdata2.dat  # displays all the unique names in the first file
# comm -2 commdata1.dat commdata2.dat   # displays a;; the unique names in the first file and common names inboth the files
#
# diff commdata1.dat commdata2.dat # displaying differences between two files
# diff commdata1.dat commdata1.dat # no difference and hence no output

cat commdata1.dat
amal
bimal
chanchal
firoz
haraprasad


cat commadata2.dat
amal
bimal
chandan
firoz
gulzar
haraprasad

