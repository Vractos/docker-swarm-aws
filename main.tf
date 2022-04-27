terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  # vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
  user_data = "${file("${var.bootstrap_path}")}"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

# resource "aws_instance" "worker1" {
#   ami = "${var.ami}"
#   instance_type = "${var.instance_type}"
#   key_name = "${var.key_name}"
#   vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
#   user_data = "${file("${var.bootstrap_path}")}"

#   tags = {
#     Name = "ExampleAppServerInstance"
#   }
# }

# resource "aws_instance" "worker2" {
#   ami = "${var.ami}"
#   instance_type = "${var.instance_type}"
#   key_name = "${var.key_name}"
#   vpc_security_group_ids = ["${aws_security_group.sgswarm.id}"]
#   user_data = "${file("${var.bootstrap_path}")}"

#   tags = {
#     Name = "ExampleAppServerInstance"
#   }
# }
