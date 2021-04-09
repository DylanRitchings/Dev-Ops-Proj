output "pub_sub_id" {
  value = aws_subnet.pub_sub.id
}

output "not_priv_sub_id" {
  value = aws_subnet.not_priv_sub.id
}

output "not_priv_rds_sub_id1" {
  value = aws_subnet.not_priv_rds_sub1.id
}

output "not_priv_rds_sub_id2" {
  value = aws_subnet.not_priv_rds_sub2.id
}

output "vpc_id" {
    value = aws_vpc.vpc.id 
}


