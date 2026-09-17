provider "aws" {

}

terraform {
  backend "s3" {
    bucket = "tf-resources-github"
    region = "us-east-2"
    key = "github-actions/terraform.tfstate"
    encrypt = true
    dynamodb_table = "tf-resources-github-lock"
    
  }
}