#!/usr/bin/env sh
ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
subnet="$ip/32"
echo client subnet: $subnet
dnsmasq \
  --user=root \
  --no-daemon \
  --add-subnet=$subnet
