#!/bin/bash

password=YourPassword

kubectl run -n mysql  mysql-client --image=mysql:5.7 -i --rm --restart=Never --\
  mysql -h mysql-0.mysql -uroot -p${password} <<EOF
CREATE TABLE SYSTEMLIB.test (message VARCHAR(250));
INSERT INTO SYSTEMLIB.test VALUES ('hello');
EOF
#CREATE DATABASE test;
#CREATE TABLE test.messages (message VARCHAR(250));
#INSERT INTO test.messages VALUES ('hello');
