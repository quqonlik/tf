variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}
variable "Security_Group"{ 
    type = list
    default = ["sg-10001", "sg-10002", "sg-10003"]
    }

variable "AMIS" {
    type = map
    default = {
        us-east-1 = ami-0b0ea68c435eb488d
        us-east-2 = ami-05803413c51f242b7
        us-west-1 = ami-01d9a63b83a0d25ee
        us-west-2 = ami-0688ba7eeeeefe3cd
    }
  
}
