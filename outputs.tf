output "website_url" {
  description = "URL of the web server"
  value       = "http://${aws_instance.web_server.public_ip}"
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_server.id
}
