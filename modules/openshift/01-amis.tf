# Define the CentOS 7 AMI by:
# Latest, x86_64, EBS, HVM, Centos7
# data "aws_ami" "centos7" {
#   most_recent = true
#   id = "ami-e9b9b58f"
# }

# Define an Amazon Linux AMI.
data "aws_ami" "amazonlinux" {
  most_recent = true

  owners = ["137112412989"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*"]
  }
}
