#!/bin/bash
# Update system and install web server
yum update -y
yum install -y httpd

# Start and enable web server
systemctl start httpd
systemctl enable httpd

# Create a simple landing page
echo "<html>
<head>
    <title>Secure Web Server</title>
</head>
<body>
    <h1>Hello from my Terraform-managed secure web server!</h1>
    <p>This demonstrates Infrastructure as Code with security considerations.</p>
    <ul>
        <li>Deployed in custom VPC</li>
        <li>Minimal security group rules</li>
        <li>Automated deployment</li>
    </ul>
</body>
</html>" > /var/www/html/index.html
