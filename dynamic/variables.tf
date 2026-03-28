variable "ingress_rules" {
    default = [
        {
             port = 22
             cidr_blocks = ["0.0.0.0/0"]
             description = "allowing port 22"
        },
        {
             port = 443
             cidr_blocks = ["0.0.0.0/0"]
             description = "allowing port 443"
        },
        {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port 3306"
        }
    ]
}