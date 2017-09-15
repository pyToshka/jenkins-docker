provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-1"
}


resource "aws_instance" "jenkins" {
  ami                  = "${var.ami_id}"
  instance_type        = "${var.instance_type}"
  count                = 1

  tags {
    Name          = "jenkins-master"
  }

  key_name               = "${var.aws_key_name}"
  subnet_id              = "${var.subnet_id}"
  security_groups        = ["${var.security_group}"]
  vpc_security_group_ids = ["${var.security_group}"]
}