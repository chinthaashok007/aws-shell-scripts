# 🧩 AWS Resource Tracker Script

This script lists important AWS resources such as S3 buckets, EC2 instances, Lambda functions, and IAM users.  
It helps track your AWS resource usage and can be automated using `cron`.

---

## 📜 Script: `aws_resource_tracker.sh`

```bash
#!/bin/bash

###############################
# Author: Ashok
# Date: 27-10-2025
# Version: v1
#
# Description:
# This script reports AWS resource usage.
###############################

set -x

# List S3 buckets
aws s3 ls

# List EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda functions
aws lambda list-functions

# List IAM users
aws iam list-users | jq '.Users[].UserName'
