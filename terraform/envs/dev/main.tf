module "vpc" {
  source = "../../modules/vpc"

  environment = "dev"
  aws_region  = var.aws_region
}
