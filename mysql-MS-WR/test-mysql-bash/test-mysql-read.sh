#!/bin/bash

password=YourPassword

kubectl run -n mysql  mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --\
  mysql -h mysql-read -P 3311 -uroot -p${password} -e "SELECT * FROM SYSTEMLIB.test"
# "SELECT * FROM test.messages"
