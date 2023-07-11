#!/bin/bash
mkdir -p /usr/share/nginx/html

IP=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}')
echo "<h1>$USER, $PASSWORD, $PORT, $IP</h1>" > /usr/share/nginx/html/index.html

cd /usr/share/nginx/html/
chown -R nginx:nginx *
chmod 644 index.html
find . -type d -exec chmod 755 {} \;

ls -la

ifconfig && netstat -ntlp && netstat -nulp && ifconfig -a && curl ifconfig.me && /usr/sbin/sshd -D
