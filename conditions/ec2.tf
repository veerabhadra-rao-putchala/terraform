resource "aws_instance" "example" {
  ami           = var.ami_id
  # if dev t3.micro, else t3.small
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.sg_discription

  egress {   # all outbound traffic 
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidrs_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {  # all inbound traffic 
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidrs_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
 
  tags = var.sg_tags
}

