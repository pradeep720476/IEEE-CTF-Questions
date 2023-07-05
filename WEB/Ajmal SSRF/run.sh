#!/bin/bash
python3 -m http.server 3301 --bind 127.0.0.1 --directory /app/flag &
P1=$!
node app.js
P2=$!
iptables -A OUTPUT -d 169.254.169.254 -j DROP
P3=$!
wait $P1 $P2 $P3
