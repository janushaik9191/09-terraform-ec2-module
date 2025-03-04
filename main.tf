# by using resource definition

resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
}

# ny using module concept

module "ec2" {
    source = "../07-terraform/ec2"
}