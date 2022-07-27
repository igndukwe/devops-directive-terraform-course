## 02 - Overview + Setup

## Install Terraform

Official installation instructions from HashiCorp: https://learn.hashicorp.com/tutorials/terraform/install-cli

## AWS Account Setup

AWS Terraform provider documentation: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication

1. create non-root AWS user (e.g., terraform-user)
2. Add the necessary IAM roles
   - AmazonRDSFullAccess
   - AmazonEC2FullAccess
   - IAMFullAccess
   - AmazonS3FullAccess
   - AmazonDynamoDBFullAccess
   - AmazonRoute53FullAccess
3. Install AWS CLI
   (https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
   - use `aws configure` command to enter the following
     - AWS Access Key ID
     - AWS Secret Access Key
     - Default region name
     - Default output format
   - or save Access key + secret key (not secured)
     NOTE: This info populates the ~/.aws/credentials file

## Hello World

`./main.tf` contains minimal configuration to provision an EC2 instance.

## AWS CLI

1. `aws configure`

## Terraform CLI

2. `terraform init`
3. `terraform plan`
4. `terraform apply`
5. `terraform apply -auto-approve`
6. `terraform destroy`
7. `terraform destroy -auto-approve`
