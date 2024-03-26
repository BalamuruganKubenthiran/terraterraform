provider "aws" {
  region = "ap-south-1"
  access_key = "***********"
  secret_key = "***********"
}

resource "aws_instance" "example-1" {
  ami           = "ami-0187337106779cdf8"
  instance_type = "t2.micro"
  key_name = "balakuben"
  count = "2"
  tags = {
    Name = "balaterraform"
  }
}
