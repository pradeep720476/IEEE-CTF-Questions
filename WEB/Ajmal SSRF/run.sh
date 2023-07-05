#!/bin/bash
apt-get update && \
apt-get -y install sudo
sudo iptables -I FORWARD -i docker0 -d 169.254.169.254 \ -p tcp -m multiport --dports 80,443 -j REJECT 
python3 -m http.server 3301 --bind 127.0.0.1 --directory /app/flag &
P1=$!
node app.js
P2=$!
wait $P1 $P2
