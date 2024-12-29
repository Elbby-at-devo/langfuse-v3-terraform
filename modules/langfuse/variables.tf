variable "identity_name" {
  description = "Unique identity name for S3 bucket"
  type        = string
  default     = "tubone24"
}

variable "env" {
  description = "Environment name for S3 bucket"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "AWS region on which to deploy"
  type        = string
  default     = "us-east-1"
}

variable "availability_zones" {
  description = "Availability zones for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_id" {
  description = "VPC ID for Your Langfuse Environment"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs on which to deploy Langfuse worker / Clickhouse / Aurora Serverless v2 / ElastiCache"
  type        = list(string)
}

variable "database_user" {
  description = "Database user for Langfuse Aurora Serverless v2"
  type        = string
  default     = "langfuse"
}

variable "web_next_secret" {
  description = "Used to validate login session cookies, generate secret with at least 256 entropy using openssl rand -base64 32."
  type        = string
}

variable "web_salt" {
  description = "Used to salt hashed API keys, generate secret with at least 256 entropy using openssl rand -base64 32."
  type        = string
}

variable "custom_domain_name" {
  description = "Langfuse and Grafana custom domain name. If you set example.com, the domain will be langfuse.example.com and grafana.example.com"
  type        = string
}

variable "custom_domain_id" {
  description = "Route53 Hosted Zone ID for custom domain"
  type        = string
}

variable "cache_node_type" {
  description = "Node type for Langfuse Cache/Queue(ElastiCache)"
  default     = "cache.t2.micro"
}

variable "is_spot_instance" {
  description = "Whether to use spot instances for Langfuse Worker(s) / Clickhouse node"
  type        = bool
  default     = false
}

variable "worker_desire_count" {
  description = "Desired count for Langfuse Worker(s)"
  type        = number
  default     = 1
}

variable "encryption_key" {
  description = "Used to encrypt sensitive data. Must be 256 bits, 64 string characters in hex format, generate via: openssl rand -hex 32."
  type        = string
}

variable "database_max_capacity" {
  description = "Maximum capacity for Langfuse DB Aurora Serverless v2"
  type        = number
  default     = 10
}

variable "database_min_capacity" {
  description = "Minimum capacity for Langfuse DB Aurora Serverless v2"
  type        = number
  default     = 0.5
}