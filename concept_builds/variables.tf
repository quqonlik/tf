variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIA4I3L325NLAUWVVXQ"
}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}

variable "Security_Group"{
    type = list
    default = ["sg-0001", "sg-0002", "sg-0003"]
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0b0ea68c435eb488d"
        us-east-2 = "ami-05803413c51f242b7"
        us-west-1 = "ami-01d9a63b83a0d25ee"
        us-west-2 = "ami-0688ba7eeeeefe3cd"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "/tmp/levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "/tmp/levelup_key.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}