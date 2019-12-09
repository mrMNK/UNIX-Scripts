#!/bin/bash

echo testtesttest > temp_file
expected="temp_file: ASCII text"
result=`file temp_file 2>&1`
file temp_filet > /dev/null 2>&1
retcode=$?


if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi

rm temp_file