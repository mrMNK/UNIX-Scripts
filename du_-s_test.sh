#!/bin/bash

mkdir temp
cd ./temp
echo testtesttest > temp_for_du_-s_test
expected="8	./temp"
cd ../
result=`du -s ./temp 2>&1`
du -s ./temp > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi
rm -r ./temp
