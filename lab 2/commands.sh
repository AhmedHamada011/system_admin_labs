#!/bin/bash
mkdir iti-0
cd iti-0
touch file1.txt
echo "hell9 all" > file1.txt
cat file1.txt | tr "9" "o" > file2.txt
rm file1.txt
ls /var > listing.txt
mv listing.txt list_output.txt
nl list_output.txt > list_output_number.txt
tail -n 5 list_output_number.txt
