resource "aws_key_pair" "prometheus_grafana" {
  key_name   = "prometheus"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}