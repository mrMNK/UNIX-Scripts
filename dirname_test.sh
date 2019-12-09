#!/bin/bash

expected="/etc/apt"
result=`dirname /etc/apt/sources.list 2>&1`
dirname /etc/apt/sources.list > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi

