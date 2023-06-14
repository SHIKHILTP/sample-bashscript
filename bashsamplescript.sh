ubuntu@ip-172-31-91-26:~$ vi aws_resource_tracker.sh

# AWS s3
# AWS EC2
# AWS Lamda
# AWS IAM Users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


# list lambda
echo "print list of lambda"
aws lambda list-functions

# list IAM users
echo "print list of IAM users"
aws iam list-users
