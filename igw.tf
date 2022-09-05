# Creating Internet Gateway 
resource "aws_internet_gateway" "servergateway" {
  vpc_id = aws_vpc.servervpc.id
}