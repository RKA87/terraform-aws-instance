resource "aws_instance" "ec2_instance" {
  count         = length(var.instances)
  ami           = var.ami_id
  region        = var.region
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids
  tags = local.final_tags
  }
