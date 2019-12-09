#!/bin/bash

expected="mrmnk"
result=`whoami 2>&1`
whoami > /dev/null 2>&1
retcode=$?

for (( i = 1; i < 1001; i++ ))
do
  if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  result=`whoami 2>&1`
  whoami > /dev/null 2>&1
  retcode=$?
else
  echo test failed on "$i" iteration
  exit
fi
done
echo test passed