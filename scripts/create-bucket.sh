#!/bin/bash

# Takes in required parameters to create an S3 bucket, make sure to have already configured your profile
# Arguments:
#   bucket_name: Specifies the bucket name of your choice. It must be unique across all AWS accounts.
#   permissions: Specifies the accessibility level
#   region: Specifies the AWS region where you want to create this bucket
#   profile: Specifies the profile whose credentials will be verified for authorization before accessing the S3 service. This option is OPTIONAL. If skipped, the aws CLI will use the default profile stored in your system.
#
# Example call:
#   ./create-bucket.sh gustavo-484236353667-bucket public-read-write us-east-1 UdacityLab

# imports
# shellcheck disable=SC1091
source common.sh

bucket_name=$1
permissions=$2
region=$3
profile=$4

center "Running create S3 bucket"

echo "bucket_name: $bucket_name"
echo "permissions: $permissions"
echo "region.....: $region"
echo "profile....: $profile"
echo


code "aws s3api create-bucket --bucket $bucket_name --acl $permissions --region $region --profile $profile"
echo
ensure aws s3api create-bucket --bucket "$bucket_name" --acl "$permissions" --region "$region" --profile "$profile"
#aws s3api  create-bucket --bucket gustavo-033212455158-bucket --acl public-read-write --region us-east-1 --profile UdacityLab
