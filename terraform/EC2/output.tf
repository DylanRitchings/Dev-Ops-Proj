output "build_ip" {
  value = aws_instance.build_vm.public_ip
}

output "test_ip" {
  value = aws_instance.test_vm.public_ip
}

output "app_ip" {
  value = aws_instance.app_vm.public_ip
}