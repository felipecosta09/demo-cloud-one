# Resource to create s3 bucket
resource "aws_s3_bucket" "demo-bucket"{
  bucket = "ck-demo-bucket"

  tags = {
    Name = "S3Bucket"
  }
}
