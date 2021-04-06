output "pub_sg_id" {
  value = aws_security_group.pub_sg.id
}

output "not_priv_sg_id" {
  value = aws_security_group.not_priv_sg.id
}

output "not_priv_rds_sg_id" {
  value = aws_security_group.not_priv_rds_sg.id
}

