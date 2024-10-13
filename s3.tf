resource "aws_s3_bucket" "example" {
  bucket = "yotto5278-terraform"
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}
