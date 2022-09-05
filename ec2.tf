# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "serverinstance" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.serversg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")
  tags = {
    Name = "My Public Instance"
  }
}
# Creating 2nd EC2 instance in Public Subnet
resource "aws_instance" "serverinstance1" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.serversg.id}"]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")
  tags = {
    Name = "My Public Instance 2"
  }
}