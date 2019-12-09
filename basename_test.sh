#!/bin/bash

expected="sources.list"
result=`basename /etc/apt/sources.list 2>&1`
basename /etc/apt/sources.list > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi