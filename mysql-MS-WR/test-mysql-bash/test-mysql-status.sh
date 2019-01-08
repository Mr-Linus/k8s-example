#!/bin/bash

password=YourPassword

kubectl run -n mysql  mysql-client-loop --image=mysql:5.7 -i -t --rm --restart=Never --\
  bash -ic "while sleep 1; do mysql -h mysql-read -uroot -P3311 -p${password} -e 'SELECT @@server_id,NOW()'; done"
