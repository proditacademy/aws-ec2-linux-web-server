#!/bin/bash
set -e

sudo dnf install nginx -y
sudo systemctl enable --now nginx

echo "Nginx installation completed."
sudo systemctl status nginx --no-pager
