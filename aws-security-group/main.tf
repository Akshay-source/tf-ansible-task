resource "aws_security_group" "my-sg" {
  name = "my-sg"
  description = "this is managed by tf"
  
  ingress  {
    description = "Allow 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress  {
    description = "Allow 5432"
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}