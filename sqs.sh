#bin/sh -xe

export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_DEFAULT_OUTPUT=json
export AWS_SQS_IP=`getent hosts aws_sqs | awk '{ print $1 }'`
aws configure list

aws sqs create-queue \
    --queue-name example \
    --endpoint-url http://${AWS_SQS_IP}:9324

aws sqs list-queues \
    --endpoint-url http://${AWS_SQS_IP}:9324
