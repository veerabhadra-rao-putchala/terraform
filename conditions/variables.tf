variable "environment" {
  default = "prod"
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL9 Image"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map 
    default = {
        Name = "variables-demo"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "sg_name" {
     default = "allow_all-terraform" # this is for AWS account 
     type = string
}

variable "sg_discription" {
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
  type = number
  default = 0
}

variable "sg_to_port" {
  type = number
  default = 0
}

variable "cidrs_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map
  default = {
    Name = "allow_all-terraform"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}