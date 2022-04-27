variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default = "us-east-1"
}
variable "ami" {
  description = "Ubuntu 20.04"
  default = "ami-09e67e426f25ce0d7"
}
variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}
variable "key_path" {
  description = "SSH Public Key path"
  type = string
}
variable "key_name" {
  description = "Desired name of Keypair..."
  default = "admin-logu"
}
variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install_docker.sh"
}