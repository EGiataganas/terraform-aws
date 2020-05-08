# Configure the AWS Provider
provider "aws" {
  version = "~> 2.8"
  region  = "eu-west-2"
  profile = "default"
}

# Create an EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-01a6e31ac994bbc09"
  instance_type = "t2.micro"
}

# Create an Elastic IP associated with EC2 instance
resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.my_ec2_instance.id
}
