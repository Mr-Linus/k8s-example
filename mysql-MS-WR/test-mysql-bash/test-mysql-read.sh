#!/bin/bash

password=

kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --\
  mysql -h mysql-read -uroot -p${password} -e "SELECT * FROM test.messages"
