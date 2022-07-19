variable "AWS_ACCESS_KEY" {}
 
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}
variable "Security_Group"{
    type = list
    default = ["sg-10001", "sg-10002", "sg-10003"]

}
 