

# Define webserver inside the public subnet
resource "aws_instance" "linux" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "project"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${var.aws_vpc_security_group.ids}"]
   associate_public_ip_address = true
   source_dest_check = false
   

  tags {
    Name = "linux"
  }
}