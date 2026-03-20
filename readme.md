# Terraform AWS EC2 Isntance Build

# Using this module requries the below inputs

# Inputs
- region (Required): AWS region where the EC2 instance will be created

- instance_type(Required): User must provide the type of instance in string type

- environment(Required): User must provide the environment (dev, prod, uat) in string type

- ami(Required): User must provide the image id in string type

- sg_ids(Required): User must provide the security group id's in a list type, even it is a one security group it must be list

- instances (Optional) - User can provide the required no of instances in a list(string) type or else one default instance will be created

- tags(Optional): map type, if user want to provide the extra required tags on his own else default tags will be created

## Outptus
This module will create the instances and outputs will be generated for other use case

- instance_id: The ID of the created EC2 instance(s)

- private_ip: The priviate ip address of the created ec2 instance(s)

- public_ip: The public ip address of the created ec2 instance(s)


