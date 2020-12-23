resource "aws_key_pair" "openvpn" {
  key_name   = "public_key_name"
  public_key = "public_key_data"
}
