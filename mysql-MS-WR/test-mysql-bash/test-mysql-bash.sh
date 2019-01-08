#!/bin/bash

password=Yourpassword

kubectl run -n mysql  mysql-client --image=mysql:5.7 -i -t --rm --restart=Never /bin/bash
# "SELECT * FROM test.messages"
