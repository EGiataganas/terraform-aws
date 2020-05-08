# Configure the AWS Provider
provider "aws" {
  version = "~> 2.8"
  region  = "eu-west-2"
  profile = "default"
}

# Create an EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0596aab74a1ce3983"
  instance_type = "t2.micro"
}
