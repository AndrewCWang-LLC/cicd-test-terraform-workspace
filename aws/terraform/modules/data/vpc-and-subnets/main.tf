# data "aws_vpc" "main" {
#   default = true
# }
#
# data "aws_subnets" "private_subnet_and_replica" {
#   filter {
#     name   = "tag:Name"
#     values = ["Private subnet", "Private subnet replica"]
#   }
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.main.id]
#   }
# }
#
#
# data "aws_subnets" "private_extended_subnet_and_replica" {
#   filter {
#     name = "tag:Name"
#     values = [
#       "Private extended subnet - us-east-2a",
#       "Private extended subnet - us-east-2b",
#     ]
#   }
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.main.id]
#   }
# }
#
# data "aws_subnets" "public_subnet_and_replica" {
#   filter {
#     name   = "tag:Name"
#     values = ["Public Subnet", "Public subnet replica"]
#   }
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.main.id]
#   }
# }
#
# data "aws_subnets" "public_extended_subnet_and_replica" {
#   filter {
#     name = "tag:Name"
#     values = [
#       "Public extended subnet - us-east-2a",
#       "Public extended subnet - us-east-2b",
#       "Public extended subnet - us-east-2c"
#     ]
#   }
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.main.id]
#   }
# }
#
#
# data "aws_network_acls" "main_network_acl" {
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.main.id]
#   }
# }
#
# data "aws_route_tables" "public_route_table" {
#   filter {
#     name   = "tag:Name"
#     values = ["Public (has IG)"]
#   }
# }
#
# data "aws_route_tables" "private_route_table" {
#   filter {
#     name   = "tag:Name"
#     values = ["Private (behind NAT)"]
#   }
# }
