#!/bin/bash

expected="1000000"
result=`expr 1000 \* 1000 2>&1`
expr 1000 \* 1000 > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi