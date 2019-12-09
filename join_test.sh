#!/bin/bash

expected="str1 test1 test11"
echo "str1 test1" > temp1
echo "str1 test11" > temp2
result=`join temp1 temp2 2>&1`
join temp1 temp2 > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi

rm temp1
rm temp2