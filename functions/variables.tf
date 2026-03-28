variable "common_tags" {
    default = {
        Project = "roboshop"
        terraform = "true"
        Environment = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Name = "ec2 functions-demo"
        Environment = "Prod"
    }
}

variable "sg_tags" {
    default = {
        Name = "sg functions-demo"
        Environment = "Dev"
    }
}