#Public subnet
resource "aws_subnet" "public1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_public1}"
    map_public_ip_on_launch = true
    availability_zone = "${var.region}${var.az1}"

    tags = "${var.tags}"
}

resource "aws_subnet" "public2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_public2}"
    map_public_ip_on_launch = true
    availability_zone = "${var.region}${var.az2}"

    tags = "${var.tags}"
}

resource "aws_subnet" "public3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.cidr_block_public3}"
    map_public_ip_on_launch = true
    availability_zone = "${var.region}${var.az3}"

    tags = "${var.tags}"
}
# Internet gateway

#resource "aws_internet_gateway" "gw1" {
 # vpc_id = "${aws_vpc.main.id}"
  #tags = "${var.tags}"
#}