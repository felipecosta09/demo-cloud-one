terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# Provider profile and region in which all the resources will create
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource to create s3 bucket
resource "aws_s3_bucket" "demo-bucket"{
  bucket = "ck-demo-bucket"

  tags = {
    Name = "S3Bucket"
  }
}

# Resource to create sns topic
resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}
