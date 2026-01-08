# Script to Install Apache Web Server #
```bash

### Virtual Machine 1 (Linux - Ubuntu 24.04) ###

sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Welcome to the Logistics Web App from Instance 1 - Azure</h1>" | sudo tee /var/www/html/index.html


## Virtual Machine 2 (Linux - Ubuntu 24.04) ##

sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Welcome to the Logistics Web App from Instance 2 - Azure</h1>" | sudo tee /var/www/html/index.html

# User data script to install Apache Web Server

## EC2 Instance1: (Amazon Linux)

#!/bin/bash
sudo yum install -y httpd
sudo systemctl start httpd
echo "<h1>Welcome to the Logistics Web App from Instance 1 - AWS</h1>" | sudo tee /var/www/html/index.html

## EC2 Instance1: (Amazon Linux)

#!/bin/bash
sudo yum install -y httpd
sudo systemctl start httpd
echo "<h1>Welcome to the Logistics Web App from Instance 2 - AWS</h1>" | sudo tee /var/www/html/index.html




