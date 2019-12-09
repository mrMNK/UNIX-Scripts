#!/bin/bash

expected="/bin/mv"
result=`which mv 2>&1`
which mv > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi