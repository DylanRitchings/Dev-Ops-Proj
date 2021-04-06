output "test_rds_endpoint" {
    value = aws_db_instance.test_db.endpoint
}

output "prod_rds_endpoint" {
    value = aws_db_instance.prod_db.endpoint
}
