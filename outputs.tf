output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "instance_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.ec2_instance.private_ip
}

# since ther is no list defined in instances, we cannot use for loop to iterate over the instances and get the output values.
# output "multiple_instances_output" {
#   value = {
#     for index, instance in aws_instance.ec2_instance : index => {
#         id         = instance.id
#         private_ip = instance.private_ip
#         public_ip  = instance.public_ip
#     }
#   }
# }  

# output is single instance mode only
output "instance_output" {
  value = {
    id         = aws_instance.ec2_instance.id
    private_ip = aws_instance.ec2_instance.private_ip
    public_ip  = aws_instance.ec2_instance.public_ip
  }
}
