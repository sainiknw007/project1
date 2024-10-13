terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket-project-terraform-batch-01"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
