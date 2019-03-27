resource "aws_key_pair" "project" {
  key_name = "project"
  public_key = "${var.key_name}"
}

# Define webserver inside the public subnet
resource "aws_instance" "linux-web" {
   ami  = "${var.ami}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.project.id}"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
   associate_public_ip_address = true
   source_dest_check = false
   

  tags {
    Name = "webserver"
  }
}