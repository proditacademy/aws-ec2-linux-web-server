# AWS EC2 Linux Web Server — Architecture

## Overview

This project hosts a simple website on a Linux EC2 instance using Nginx.

## Request Flow

1. A user opens the website in a browser.
2. The request reaches the EC2 instance through its public IP address.
3. The Security Group allows HTTP traffic on TCP port 80.
4. Nginx receives the request and serves the HTML page.

## Architecture Diagram

```text
User Browser
     |
     | HTTP - TCP 80
     v
Internet
     |
     v
EC2 Security Group
     |
     v
Linux EC2 Instance
     |
     v
Nginx Web Server
     |
     v
Website
```

## Security

- Allow HTTP only when needed for the lab.
- Restrict SSH access on TCP port 22 to a trusted IP address.
- Never publish private keys or credentials.
- For production, configure HTTPS and appropriate access controls.

## Learning Objectives

- Understand a basic EC2 web-hosting architecture.
- Explain how Security Groups control traffic.
- Understand how Nginx serves website content.
