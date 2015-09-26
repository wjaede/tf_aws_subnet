/* Setup our aws provider */
provider "aws" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "${var.region}"
}
/* Public subnet */
resource "aws_subnet" "sbn" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.sbn_cidr}"
  availability_zone = "${var.availability_zone}"
  map_public_ip_on_launch = false
  /* depends_on = ["aws_internet_gateway.default"] */
  tags {
    Name = "sbn_${var.sbn_name}"
  }
}