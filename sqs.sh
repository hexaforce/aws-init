#bin/sh -xe

aws configure list

aws sqs create-queue \
    --queue-name example \
    --endpoint-url http://localhost:9324

aws sqs list-queues \
    --endpoint-url http://localhost:9324
