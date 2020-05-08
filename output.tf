# Shows the public IP address of the ELP
output "ip" {
  value = aws_eip.ip.public_ip
}
