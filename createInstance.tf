provider "aws" {
    access_key = "AKIA4I3L325NNQ5HIZZE"
    secret_key = "SECRETKEY"
    region     = "us-east-2"
}
resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = "ami-05803413c51f242b7"
  instance_type = "t2.micro"
  }
