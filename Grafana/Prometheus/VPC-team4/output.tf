output "vpc" {
  value = "${aws_vpc.main.id}"
}


output "Public Subnets" {
   value = [
   "${aws_subnet.public1.id}                          ${aws_subnet.public1.cidr_block}",
   "${aws_subnet.public2.id}                          ${aws_subnet.public2.cidr_block}",
   "${aws_subnet.public3.id}                          ${aws_subnet.public3.cidr_block}",
   ]

}

output "Private Subnets" {
   value = [
   "${aws_subnet.private1.id}                          ${aws_subnet.private1.cidr_block}",
   "${aws_subnet.private2.id}                          ${aws_subnet.private2.cidr_block}",
   "${aws_subnet.private3.id}                          ${aws_subnet.private3.cidr_block}",
   ]
}

output "region" {
   value = "${var.region}               ${var.region_name}",
}

output "Tags" {
    value = "${var.tags}"
}

# output "aws_vpc_peering_connection" {
#    value = "${aws_vpc_peering_connection.peer.id}"
# }

# output "aws_route_peering1" {
#    value = "${aws_route.r.id}"
# }

# output "aws_route_peering" {
#    value = "${aws_route.r1.id}"
# }
# output "instance_id" {
#   value = "${aws_instance.dev.id}"
# }
# output  "instance_public_ip" {
#   value = "${aws_instance.dev.public_ip}"
#}
# output  "message" {
#   value = "Task VPC PEERING CONNECTION"
# }