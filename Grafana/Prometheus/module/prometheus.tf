data "aws_ami" "ami_image" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}
resource "aws_instance" "prometheus" {
  ami           = "${data.aws_ami.ami_image.id}"
  instance_type = "${var.instance_type}"
  key_name     = "${aws_key_pair.prometheus_grafana.key_name}"
  iam_instance_profile = "${aws_iam_instance_profile.prometheus_profile.name}"
  subnet_id  = "subnet-055af3961c92efa08"
  #security_groups = ["allow_ssh_and_prometheus"]
  provisioner "file" {
    source      = "./module/prometheus.sh"
    destination = "/tmp/prometheus.sh"
    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
    }
  }
  provisioner "remote-exec" {
    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "chmod +x /tmp/prometheus.sh",
      "sudo bash /tmp/prometheus.sh"
    ]
  }
  tags = {
    Name = "Prometheus"
  }
}