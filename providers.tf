terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "my-ec2-instance" {
  source = "./aws-instance"
  ami    = "ami-00beae93a2d981137"
  type   = "t2.micro"

}

output "instance_ip" {
  value = module.my-ec2-instance.instance_ip
}

