resource "aws_s3_bucket" "my-s3-bucket1" {
  bucket_prefix = var.bucket_prefix
  
  tags = var.tags
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
  acl    = "var.acl"
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my-s3-bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}
