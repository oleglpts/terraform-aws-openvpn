// -----------------------------------------------------------------------------
//                                  Region                                     -
// -----------------------------------------------------------------------------

variable "region" {
  default = "eu-central-1"
}

// -----------------------------------------------------------------------------
//                             Network and subnets                             -
// -----------------------------------------------------------------------------

variable "vpc_name" {
  default = "main"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_name" {
  default = "public subnet"
}

variable "public_cidr_block" {
  default = "10.0.2.0/24"
}

variable "route_table_cidr_block" {
  default = "0.0.0.0/0"
}

// -----------------------------------------------------------------------------
//                                 OpenVPN                                     -
// -----------------------------------------------------------------------------

variable "openvpn_ami" {
  default = "ami-0502e817a62226e03"
}

// af-south-1       ami-01231db8966c15acd
// ap-east-1        ami-81e2a0f0
// ap-northeast-1   ami-0f2dd5fc989207c82
// ap-northeast-2   ami-007b7745d0725de95
// ap-northeast-3   ami-029ae728cd655b533
// ap-south-1       ami-0a4a70bd98c6d6441
// ap-southeast-1   ami-0c20b8b385217763f
// ap-southeast-2   ami-07fbdcfe29326c4fb
// ca-central-1     ami-02e44367276fe7adc
// eu-central-1     ami-0502e817a62226e03
// eu-north-1       ami-0a3a4169ad7cb0d77
// eu-south-1       ami-0f510832e2392e9da
// eu-west-1        ami-0aef57767f5404a3c
// eu-west-2        ami-0ff4c8fb495a5a50d
// eu-west-3        ami-0d3f551818b21ed81
// me-south-1       ami-0394d2ceb736ed2c6
// sa-east-1        ami-0c3c87b7d583d618f
// us-east-1        ami-0885b1f6bd170450c
// us-east-2        ami-0a91cd140a1fc148a
// us-west-1        ami-00831fc7c1e3ddc60
// us-west-2        ami-07dd19a7900a1f049
// cn-north-1       ami-00cc446c1f9e0b72a
// cn-northwest-1   ami-05b363127143238ba
// us-gov-west-1    ami-84556de5
// us-gov-east-1    ami-dee008af

variable "openvpn_instance_type" {
  default = "t2.micro"
}
