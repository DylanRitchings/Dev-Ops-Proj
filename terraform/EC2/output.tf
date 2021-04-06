output "jenkins_ip" {
  value = aws_instance.build_vm.public_ip
}