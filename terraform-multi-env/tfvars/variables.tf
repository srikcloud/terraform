variable "project" {
    default = "roboshop"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

variable "sg_name"{
     default = "allow-all"
}

variable "sg_description"{

    default = "allowing all ports from all IP"
}

variable "instances" {
    default = ["mongodb", "redis"]
    
}