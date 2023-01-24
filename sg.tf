# Worker nodes security group to allow port 1337 and 443


resource "aws_security_group" "main_sg" {
  description = "security group"
  name        = "prod_sg"
  vpc_id      = aws_vpc.main.id
  ingress {
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    to_port     = 0
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    to_port     = 0
  }
}


