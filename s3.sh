#bin/sh -xe

export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_DEFAULT_OUTPUT=json
export AWS_S3_IP=`getent hosts aws_s3 | awk '{ print $1 }'`
aws configure list

aws s3api list-buckets \
    --endpoint-url http://${AWS_S3_IP}:9000

