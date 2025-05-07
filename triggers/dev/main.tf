provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  ami             = "ami-084568db4383264d4"
  instance_type   = "t2.micro"
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "Jenkins Trigger Dev Pull SCM"
  }
}
