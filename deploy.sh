#!/bin/bash

export AWS_PROFILE=default

set -e

FUNCTION_NAME=persist-event-loop
ROLE_NAME="$FUNCTION_NAME-role"

# Collect dependencies and code
mkdir -p build
rm -rf build/*

# pip install -r requirements.txt -t build/

cp main.py build/

cd build

# Remove garbage
# rm -rf `tree -if | grep __pycache__`
# rm -rf *.dist-info

# Prepare archive, upload it to S3 and update function code
rm -f ../build.zip
zip -r9 ../build.zip .

# aws iam create-role \
#    --role-name $ROLE_NAME \
#    --assume-role-policy-document file://../role-policy.json

# aws lambda create-function \
#     --function-name $FUNCTION_NAME \
#     --runtime python3.7 \
#     --zip-file fileb://../build.zip \
#     --handler 'main.main' \
#     --timeout 300 \
#     --role arn:aws:iam::354347593674:role/persist-event-loop-role

# aws lambda update-function-code \
#     --function-name $FUNCTION_NAME \
#    --region us-east-1 \
#     --zip-file fileb://../build.zip

# aws lambda update-function-configuration \
#     --function-name $FUNCTION_NAME \
#     --handler "main.main" \
#     --timeout 300

for i in {1..5} ; do
    echo "Attempt #$i:"
    aws lambda invoke --function-name $FUNCTION_NAME /dev/stdout # 1>/dev/null
done
