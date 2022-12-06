provider "aws" {
  region = "us-east-1"
}

terraform {
    backend "s3" {
      encrypt = true
      bucket = "BUCKET_NAME"
      key = "states/lambda/terraform.tfstate"
      region = "us-east-1"
  }
}
