terraform {
  backend "s3" {
    bucket         = "example-terraform-state-bucket"
    key            = "aws-secure-eks-platform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
