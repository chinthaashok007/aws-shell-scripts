#!/bin/bash

###############################
# author: ashok
# Date: 27-10-2025
# 
# version: v1
#
# This script will report the aws resource usage
##############################################################

# aws s3
# aws ec2
# aws lambda
# aws IAM users

set -x

# list s3 buckets
aws s3 ls

# list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list aws lambda
aws lambda list-functions

# list IAM users
aws iam list-users | jq '.Users[].UserName'
