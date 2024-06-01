


module "my-sg" {
  source = "../aws-security-group"
}


locals {
  test = module.my-sg.security_groups
}

resource "aws_key_pair" "task-key" {
  key_name = "task-key"
  public_key = file("${path.module}/../id_rsa.pub")

}



resource "aws_instance" "tf-test" {
  ami = var.ami
  instance_type = var.type
  key_name = aws_key_pair.task-key.key_name
  vpc_security_group_ids = [local.test]
  tags = {
    Name = "tf-test"
   }

  provisioner "local-exec" {
  command = "ansible/script.sh"
  }

  provisioner "local-exec" {
  command = "ansible-playbook -i ansible/inventory.ini postrges.yaml"
  }
}

