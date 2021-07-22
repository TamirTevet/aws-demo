#!/bin/sh
amazon-linux-extras install epel -y
yum install nginx -y
systemctl enable nginx
systemctl restart nginx
