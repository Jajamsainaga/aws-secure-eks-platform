module "vpc" {
  source = "../../modules/vpc"

  environment = "prod"
  aws_region  = var.aws_region
}
