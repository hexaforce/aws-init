#bin/sh -xe

export AWS_RDS_IP=`getent hosts aws_rds | awk '{ print $1 }'`

mysql -h ${AWS_RDS_IP} -u user -ppassword -e 'show databases;'

mysql -h aws_rds -u user -ppassword -e 'show databases;'
