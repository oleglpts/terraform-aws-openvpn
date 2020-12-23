// -----------------------------------------------------------------------------
//                                 OpenVPN                                     -
// -----------------------------------------------------------------------------

resource "aws_security_group" "allow_ssh" {
  name = "openVPN-allow_ssh"
  description = "OpenVPN allow ssh to the server"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH to OpenVPN server"
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_vpn" {
  name = "openVPN-allow_vpn-connection"
  description = "OpenVPN allow VPN client to connect"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 1194
    to_port = 1194
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow VPN Client to connect to OpenVPN server"
  }

  ingress {
    from_port = 1195
    to_port = 1195
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow VPN Client to connect to OpenVPN server"
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
