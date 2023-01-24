resource "aws_vpc" "main" {
  # this is the cdr block for the vpc
  cidr_block = "10.0.0.0/16"

  enable_dns_support = true

  enable_dns_hostnames = true
  # gives the instance shared ability on the host
  instance_tenancy = "default"

  assign_generated_ipv6_cidr_block = false

  tags = {
    name = "main"
  }

}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id."
  # Setting an output value as sensitive prevents Terraform from showing its value in plan and apply.
  sensitive = false
}

resource "aws_key_pair" "chinedu_auth" {
  key_name   = "chinedukeys"
  public_key = file("~/.ssh/chinedukeys.pub")
}

resource "aws_instance" "prod_node" {
  instance_type = "t2.micro"
  ami = data.aws_ami.server_ami.id
  key_name =  aws_key_pair.chinedu_auth.id
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  subnet_id = aws_subnet.public_1.id
  user_data = file("userdata.tpl")

  root_block_device {
    volume_size = 10
  }
  
  tags = {
    Name = "prod-node"
  }

  

  
}