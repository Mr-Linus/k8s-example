#!/bin/bash

password=

kubectl run mysql-client-loop --image=mysql:5.7 -i -t --rm --restart=Never --\
  bash -ic "while sleep 1; do mysql -h mysql-read -uroot -p${password} -e 'SELECT @@server_id,NOW()'; done"
