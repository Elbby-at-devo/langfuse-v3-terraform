data "aws_caller_identity" "current" {}

# VPC Module
module "vpc" {
  source = "../modules/vpc"
  
  name_prefix        = "devo_test"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  enable_nat_gateway = true  # Required for ECS tasks to pull images
}

# Langfuse Module
module "langfuse" {
  source             = "../modules/langfuse"
  env                = "dev"
  identity_name      = "devo_test"
  region             = var.region
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  web_next_secret    = "generated-base64"
  web_salt           = "generated-base64"
  encryption_key     = "generated-hex-key"
  custom_domain_id   = data.aws_route53_zone.example-com.id
  custom_domain_name = data.aws_route53_zone.example-com.name
}
