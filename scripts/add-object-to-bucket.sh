#!/bin/bash

# Takes in required parameters to upload objects to S3 buckets, make sure to have already configured your profile
# Arguments:
#   bucket_name: Specifies the bucket name of your choice. It must be unique across all AWS accounts.
#   key: Specifies the name you want to assign to your object in the bucket
#   body: Specifies the file name (complete path) to upload from your local system
#
# Example call:
#   ./add-object-to-bucket.sh gustavo-484236353667-bucket index.html ../project-1/udacity-starter-website/index.html UdacityLab
#

# imports
# shellcheck disable=SC1091
source common.sh

center "Running object upload to S3 bucket"

bucket_name=$1
key=$2
body=$3
profile=$4

echo "bucket_name: $bucket_name"
echo "key........: $key"
echo "body.......: $body"
echo "profile....: $profile"
echo

code "aws s3api put-object --bucket $bucket_name --key $key --body $body --profile $profile"
echo
ensure aws s3api put-object --bucket "$bucket_name" --key "$key" --body "$body" --profile "$profile"
