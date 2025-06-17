module "vpc" {
    source = "../terraform-aws-vpc"
    project = "roboshop"
    Environment = "dev"
}