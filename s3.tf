resource "aws_s3_bucket" "my-s3-bucket1" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
  tags = var.tags
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my-s3-bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}
