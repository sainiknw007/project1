resource "aws_s3_bucket" "example" {
  bucket = "example-bucket908712-terraform"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example.id
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
