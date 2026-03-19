locals {
  common_tags = {
    Project     = var.project
    Environment = var.environment
    Deployment  = "terraform"
    Owner       = "Rakesh"
  }
  final_tags = merge(local.common_tags, var.tags)
}