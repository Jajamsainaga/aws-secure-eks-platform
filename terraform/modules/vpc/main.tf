variable "environment" {
  description = "Environment name (dev or prod)"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "vpc-${var.environment}"
    Environment = var.environment
  }
}
