# AWS EC2 Linux Web Server

A beginner-friendly AWS project by **Prod IT Academy** demonstrating how to deploy a Linux web server using Amazon EC2 and Nginx.

## 🎯 Project Objective

Launch a Linux EC2 instance, configure secure access, install Nginx, and host a simple website.

## 🏗️ Architecture

```text
             User / Browser
                   |
                   | HTTP (Port 80)
                   v
               Internet
                   |
                   v
            Security Group
             Allow HTTP 80
                   |
                   v
             Linux EC2
                   |
                   v
                Nginx
                   |
                   v
             Sample Website
```

SSH administration uses TCP port 22 and should be restricted to a trusted source.

## 🛠️ AWS Services and Technologies

- **Amazon EC2:** Virtual Linux server
- **Amazon VPC:** Network hosting the instance
- **Security Groups:** Control inbound and outbound traffic
- **SSH:** Secure remote administration
- **Nginx:** Web server software
- **AWS IAM:** Identity and access management

## 📋 Prerequisites

- An AWS account with appropriate permissions
- Basic understanding of EC2 and Linux
- An SSH client
- An EC2 key pair, stored securely

## 🚀 Implementation Steps

### 1. Launch an EC2 instance

1. Open the Amazon EC2 console.
2. Select a suitable Amazon Linux AMI.
3. Choose an instance type appropriate for the lab and current pricing.
4. Select a key pair.
5. Configure the VPC, subnet, and public connectivity as required.
6. Configure the Security Group.
7. Launch the instance.

### 2. Configure the Security Group

Allow only the traffic required for the lab:

| Protocol | Port | Purpose |
|---|---:|---|
| SSH | 22 | Server administration |
| HTTP | 80 | Website access |

Restrict SSH to your trusted public IP address where possible. Do not expose SSH to the entire internet as a production practice.

### 3. Connect to Linux

Use SSH with your private key. For an Amazon Linux instance, the default username is commonly `ec2-user`.

Example:

```bash
ssh -i /path/to/your-key.pem ec2-user@YOUR_PUBLIC_IP
```

Replace the placeholders with your local key path and instance public IP.

### 4. Install and start Nginx

For a compatible Amazon Linux 2023 instance:

```bash
sudo dnf update -y
sudo dnf install nginx -y
sudo systemctl enable --now nginx
sudo systemctl status nginx
```

### 5. Create a sample web page

```bash
echo '<h1>Welcome to Prod IT Academy</h1>' | sudo tee /usr/share/nginx/html/index.html
```

### 6. Test the website

Open this address in your browser:

```text
http://YOUR_PUBLIC_IP
```

The page should display the Prod IT Academy welcome message if the instance, web server, network route, and Security Group are configured correctly.

## 🔐 Security Best Practices

- Never upload private SSH keys, passwords, or AWS access keys.
- Use IAM roles and least-privilege permissions where applicable.
- Restrict SSH access to trusted sources.
- Do not store confidential company or customer information in this repository.
- Use HTTPS and a suitable domain/certificate configuration for production deployments.
- Review AWS charges and remove unused resources after testing.

## 💰 Cleanup

After completing the lab:

1. Stop or terminate the EC2 instance according to your lab requirements.
2. Delete unused EBS volumes, snapshots, and allocated Elastic IPs where applicable.
3. Check the AWS Billing console for remaining resources and charges.

Stopping an instance does not eliminate every possible charge.

## 📸 Project Evidence

Add your own screenshots after completing and testing the lab:

- EC2 instance running
- Security Group configuration with sensitive details removed
- Nginx service status
- Website displayed in a browser

## 📚 Learning Outcomes

By completing this project, learners practice:

- Launching and connecting to a Linux EC2 instance
- Basic Linux administration
- Configuring Security Groups
- Installing and managing Nginx
- Hosting a basic website on AWS
- Applying security and cost-awareness practices

**Created for practical learning by Prod IT Academy.**
