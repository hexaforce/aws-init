#bin/sh -xe

export AWS_RDS_IP=`getent hosts aws_sqs | awk '{ print $1 }'`

mysql -h ${AWS_RDS_IP} -u user -ppassword -e 'show databases;'
