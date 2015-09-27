output "sbn_id" {
  value = "${aws_subnet.sbn.id}"
}
output "availability_zone" {
  value = "${var.availability_zone}"
}