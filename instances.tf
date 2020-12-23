// -----------------------------------------------------------------------------
//                                 OpenVPN                                     -
// -----------------------------------------------------------------------------

resource "aws_instance" "openvpn" {

  ami = var.openvpn_ami
  instance_type = var.openvpn_instance_type
  key_name = aws_key_pair.openvpn.key_name
  subnet_id = aws_subnet.pub_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id,
                            aws_security_group.allow_vpn.id]
  tags = { Name = "OpenVPN server" }
  user_data = data.template_file.openvpn-init.rendered
  depends_on = [aws_security_group.allow_ssh, aws_security_group.allow_vpn]
}
