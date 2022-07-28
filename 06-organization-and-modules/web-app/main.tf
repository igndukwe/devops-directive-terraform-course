terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  # See /code/03-basics/aws-backend
  backend "s3" {
    bucket = "devops-directive-tf-state-anyi"
    key    = "03-basics/web-app/terraform.tfstate"
    #key            = "06-organization-and-modules/web-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "db_pass_1" {
  description = "password for database #1"
  type        = string
  sensitive   = true
}

variable "db_pass_2" {
  description = "password for database #2"
  type        = string
  sensitive   = true
}

# We can now have multiple copies of a webapp

# web-app-copy-1
module "web_app_1" {
  # referes to the web-app-module folder
  source = "../web-app-module"

  # Input Variables
  bucket_name      = "web-app-1-devops-directive-web-app-data-anyi"
  domain           = "anyioneta.com"
  app_name         = "web-app-1"
  environment_name = "production"
  instance_type    = "t2.small"
  create_dns_zone  = true
  db_name          = "webapp1db"
  db_user          = "foo"
  db_pass          = var.db_pass_1
}

# web-app-copy-1
module "web_app_2" {
  # referes to the web-app-module folder
  source = "../web-app-module"

  # Input Variables
  bucket_name      = "web-app-2-devops-directive-web-app-data-anyi"
  domain           = "another.com"
  app_name         = "web-app-2"
  environment_name = "production"
  instance_type    = "t2.small"
  create_dns_zone  = true
  db_name          = "webapp2db"
  db_user          = "bar"
  db_pass          = var.db_pass_2
}
