resource "aws_internet_gateway" "internet_gatewary" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "sample"
  }
}
