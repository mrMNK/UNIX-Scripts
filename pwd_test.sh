#!/bin/bash

cd /etc
result=`pwd 2>&1`
pwd > /dev/null 2>&1
retcode=$?

if [[ "$result" = "/etc" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi


