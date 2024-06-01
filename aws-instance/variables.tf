variable "ami" {
  type = string
  default = "ami-0c49162b3a67fb8e8"
}

variable "type" {
  type = string
  default = "t2.micro"
}

# variable "security_groups" {
#   type = list(string)
# }