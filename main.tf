resource "aws_instance" "ec2_instance" {
  count         = length(var.instances)
  ami           = data.aws_ami.devopsredhat.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  tags = local.final_tags
  }
