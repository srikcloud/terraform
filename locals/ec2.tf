resource "aws_instance" "roboshop" {
  # for_each = var.instances
  for_each = toset(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  #instance_type = each.key
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = { 
    Name = each.key
  }
}

resource "aws_security_group" "allow_all" {
    name = "allow_all"
    description = "allow all traffic"
   
    ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
    Name = "allow_all"
    }
}