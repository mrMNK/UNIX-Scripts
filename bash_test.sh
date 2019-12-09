#!/bin/bash

expected="Nice"
printf '#!/bin/bash\necho Nice' > temp_for_bash_test.sh
result=`bash temp_for_bash_test.sh 2>&1`
bash temp_for_bash_test.sh > /dev/null 2>&1
retcode=$?

for (( i = 1; i < 1001; i++ ))
do
  if [[ "$result" = "$expected" ]] && [[ $retcode -eq 0 ]]
then
  rm temp_for_bash_test.sh
  printf '#!/bin/bash\necho Nice' > temp_for_bash_test.sh
  result=`bash temp_for_bash_test.sh 2>&1`
  bash temp_for_bash_test.sh > /dev/null 2>&1
  retcode=$?
else
  echo test failed on "$i" iteration
  rm temp_for_bash_test.sh
  exit
fi
done
echo test passed
rm temp_for_bash_test.sh