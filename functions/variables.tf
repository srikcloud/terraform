variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "ec2_tags" {
    type = map(string)
  default = {
    Name = "Roboshop"
    Purpose = "variables-demo"
  }
}
variable "sg_name" {
    default = "allow_all"

}
variable "sg_description" {
  default = "allowing all ports from internet"
}
variable "from_port" {
    default = 0
}
variable "to_port" {
  type = number
  default = 0
}
variable "cidr_blocks" {
 type = list(string)
 default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}
variable "environment" {
default = "dev"  
}
variable "instances" {
 default = ["mongodb", "redis", "mysql", "rabbitmq"] 
}
variable "zone_id" {
  default = "Z09795462K7LFC60CJ3VQ"
}
variable "domain_name" {
  default = "srikanth553.store"
}
variable "common_tags" {
  default = {
     Project = "roboshop"
     Terraform = "true"
  }
}