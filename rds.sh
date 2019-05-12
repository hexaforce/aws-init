#bin/sh -xe

mysql -h aws_rds -u user -ppassword -e 'show databases;'
