#!/bin/bash

expected="19"
result=`date +%y 2>&1`
date +%y > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi