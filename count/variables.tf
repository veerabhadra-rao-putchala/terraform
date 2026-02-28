variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
    default = "Z00265291C135XOB3I1R7"
}

variable "domain_name" {
  default = "pvraolearns.online"
}

variable "fruits" {
  type = list(string)
  default = ["apple", "banana", "apple", "orange"]
}

variable "fruits_set" {
  type = set(string)
  default = ["apple", "banana", "apple", "orange"]
}