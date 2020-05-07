resource "aws_route_table" "r1" {
  vpc_id = "${aws_vpc.main.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.ngw.id}"
}
 tags = "${var.tags}"
}

   
resource "aws_route_table_association" "dev1" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_route_table.r1.id}"

}
resource "aws_route_table_association" "dev2" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.r1.id}"
  
}
resource "aws_route_table_association" "dev3" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_route_table.r1.id}"
 
}