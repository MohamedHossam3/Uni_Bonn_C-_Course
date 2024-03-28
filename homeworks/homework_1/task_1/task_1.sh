#!/bin/bash

# wc -l data.dat
# wc -w data.dat
# wc -c data.dat
file="data.dat"

num_lines=$(wc -l "$file")
echo "1- Number of lines in the file: $num_lines"
echo "*****************************************************"

num_lines_2=$(grep -E "dolor|dalor" "$file" | wc -l)
echo "2- Number of lines starts with dolor or dalor: $num_lines_2"
echo "*****************************************************"

num_words=$(wc -w "$file")
echo "3- Number of words in the file: $num_words"
echo "*****************************************************"

num_words_2=$(grep -o "\<mol\w*" "$file" | wc -l)
echo "4- Number of words in the file start with “mol”: $num_words_2"
echo "*****************************************************"

# # Display the content of the variable
# echo "$wc_output"


# # Run the wc command and capture its output
# wc_output=$(wc data.dat)
