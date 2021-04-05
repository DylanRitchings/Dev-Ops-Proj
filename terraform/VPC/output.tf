output "public_subnetA_id" {
  value = aws_subnet.subnet1.id
}

output "public_subnetB_id" {
  value = aws_subnet.subnet2.id
}

output "vpc_id" {
    value = aws_vpc.vpc.id 
}

