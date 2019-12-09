#!/bin/bash

expected="MSK"
result=`date +%Z 2>&1`
date +%Z > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi
