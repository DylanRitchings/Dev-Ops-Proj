output "public_subnetA_id" {
  value = aws_subnet.My_Subnet.id
}

output "public_subnetB_id" {
  value = aws_subnet.My_Subnet_2.id
}

output "vpc_id" {
    value = aws_vpc.vpc.id 
}

