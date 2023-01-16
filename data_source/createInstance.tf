
data "aws_availability_zones" "available" {}

data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners = ["099720109477"]

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "MyFirstInstnace" {
  ami           = data.aws_ami.latest-ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.levelup_key.key_name
  availability_zone = data.aws_availability_zones.available.names[1]

  provisioner "local-exec" {
    command = "echo ${aws_instance.MyFirstInstnace.private_ip} >> my_private_ips.txt"
  }

  tags = {
    Name = "custom_instance"
  }

 connection {
    host        = coalesce(self.public_ip, self.private_ip)
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = file(var.PATH_TO_PRIVATE_KEY)
  }

}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}