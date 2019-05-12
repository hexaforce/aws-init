#bin/sh -xe

export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_DEFAULT_OUTPUT=json
export AWS_DYNAMODB_IP=`getent hosts aws_dynamodb | awk '{ print $1 }'`
aws configure list

aws dynamodb create-table \
    --table-name Music \
    --attribute-definitions \
        AttributeName=Artist,AttributeType=S \
        AttributeName=SongTitle,AttributeType=S \
    --key-schema AttributeName=Artist,KeyType=HASH AttributeName=SongTitle,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --endpoint-url http://${AWS_DYNAMODB_IP}:8000

aws dynamodb list-tables \
    --endpoint-url http://${AWS_DYNAMODB_IP}:8000

