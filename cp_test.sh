#!/bin/bash

touch file1
echo Test > file1
expected=`cat file1`
cp file1 file2 > /dev/null 2>&1
retcode=$?
result=`cat file2 2>&1`

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  test failed
fi
rm file1
rm file2
