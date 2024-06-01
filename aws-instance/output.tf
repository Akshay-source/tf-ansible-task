output "instance_ip" {
  value = aws_instance.tf-test.public_ip
}