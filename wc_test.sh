#!/bin/bash

expected="1 1 4 temp"
echo 123 > temp
result=`wc temp 2>&1`
wc temp > /dev/null 2>&1
retcode=$?

for (( i = 1; i < 1001; i++ ))
do
  if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo 123 > temp
  result=`wc temp 2>&1`
  wc temp > /dev/null 2>&1
  retcode=$?
else
  echo test failed on "$i" iteration
  rm temp
  exit
fi
done
echo test passed
rm temp