resource "aws_instance" "roboshop" {
  count = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small" 
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = merge(
    var.common_tags,
    {
      component = var.instances[count.index]
      Name = var.instances[count.index]
    }
  )
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
    tags = merge(
      var.common_tags,
      {
        Name = "allow-all"
      }
    )
}