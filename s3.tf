terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "mybucket" {
   bucket = "mybucket"
   tags = {
     Name = "mybucket"
     Environment = "Staging"
     Role = "Dev"
     Owner = "Felipe"
   }
}
