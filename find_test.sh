#!/bin/bash

expected="temp_for_find_test.txt"
touch temp_for_find_test.txt
result=`find temp_for_find_test.txt 2>&1`
find temp_for_find_test.txt > /dev/null 2>&1
retcode=$?

for (( i = 1; i < 1001; i++ ))
do
  if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  result=`find temp_for_find_test.txt 2>&1`
  find temp_for_find_test.txt > /dev/null 2>&1
  retcode=$?
else
  echo test failed on "$i" iteration
  rm temp_for_find_test.txt
  exit
fi
done
echo test passed
rm temp_for_find_test.txt