provider "aws" {
region = "us-east-2"
access_key = ""
secret_key = ""
}
resource "aws_instance" "example" {
ami = "ami-02f3416038bdb17fb"
instance_type = "t2.micro"
#vpc_security_group_ids = [aws_security_group.instance.id]
key_name = "terraform"
tags = {
Name = "terraform-area51"
}
}
