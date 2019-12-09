#!/bin/bash

expected="mrmnk"
result=`logname 2>&1`
logname > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi