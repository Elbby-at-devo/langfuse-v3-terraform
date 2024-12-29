data "aws_caller_identity" "current" {}

module "langfuse" {
  source             = "../../modules/langfuse"
  env                = "dev"
  identity_name      = "tubone24"
  region             = var.region
  vpc_id             = "vpc-xxxxxxxxxxxxx"
  private_subnet_ids = ["subnet-xxxxxxxxxxxxxx", "subnet-xxxxxxxxxxx"]
  web_next_secret    = "generated-base64"
  web_salt           = "generated-base64"
  encryption_key     = "generated-hex-key"
  custom_domain_id   = aws_route53_zone.example-com.id
  custom_domain_name = aws_route53_zone.example-com.name
}