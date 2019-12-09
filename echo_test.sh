#!/bin/bash

text="TEST_TEXT_BLABLABLA"
result=`echo $text 2>&1`
echo $text > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$text" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi

