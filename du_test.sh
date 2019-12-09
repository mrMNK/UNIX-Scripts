#!/bin/bash

expected="4	temp_for_du_test"
echo testtesttest > temp_for_du_test
result=`du temp_for_du_test 2>&1`
du temp_for_du_test > /dev/null 2>&1
retcode=$?

if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  echo test passed
else
  echo test failed
fi

rm temp_for_du_test
