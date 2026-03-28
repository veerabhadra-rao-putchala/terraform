# Map
/* variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
        shipping = "t3.micro"
    }  
} */

# This should be converted into Set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}
variable "zone_id" {
    default = "Z00265291C135XOB3I1R7"
}

variable "domain_name" {
  default = "pvraolearns.online"
}