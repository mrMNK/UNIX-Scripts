#!/bin/bash

expected="Nice"
printf Nice > temp_for_printf_test > /dev/null 2>&1
retcode=$?
result=`cat temp_for_printf_test 2>&1`

for (( i = 1; i < 1001; i++ ))
do
  if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  rm temp_for_printf_test
  printf Nice > temp_for_printf_test > /dev/null 2>&1
  retcode=$?
  result=`cat temp_for_printf_test 2>&1`
else
  echo test failed on "$i" iteration
  rm temp_for_printf_test.sh
  exit
fi
done
echo test passed
rm temp_for_printf_test.sh