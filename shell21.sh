# Making one input name proper
# input_name="moHAn daS kaRAM chAnd gaNDHi"
# output_nmae="Mohan Das Karam Chand Gandhi"

input_name="moHAn daS kaRAM chAnd gaNDHi"
echo "The original unprocessed input name is: $input_name..."

echo -e "\nSTRATEGY - 1"
echo "------------"
output_name=""
for each_name in `echo $input_name` ; do
	name_length=`expr length $each_name`
	index=1
	flag=1
	while [ $index -le $name_length ] ; do
		char=`echo $each_name | cut -c$index`
		if [ $flag -eq 1 ] ; then
			processed_char=`echo $char | tr "[a-z]" "[A-Z]"`
			output_name=$output_name$processed_char
			flag=0
		else
			processed_char=`echo $char | tr "[A-Z]" "[a-z]"`
			output_name=$output_name$processed_char
		fi
		index=`expr $index + 1`
	done
	output_name=$output_name" "
done

echo "Processed output_name string is: $output_name..."


echo -e "\nSTRATEGY - 2"
echo "------------"
output_name=""
for each_name in `echo $input_name` ; do
	first_character=`echo $each_name | cut -c1 | tr "[a-z]" "[A-Z]"`
	last_part=`echo $each_name | cut -c2- | tr "[A-Z]" "[a-z]"`
	output_name=$output_name$first_character$last_part" "
done

echo "Processed output_name string is: $output_name..."

echo -e "\nEnd of the  shell script...\n"










