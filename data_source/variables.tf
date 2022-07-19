variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIA4I3L325NNQ5HIZZE"
}

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
        us-west-2 = "ami-0352d5a37fb4f603f"
        us-west-1 = "ami-0f40c8f97004632f9"
    }
}
