#!/usr/bin/env sh
# 208.67.222.222 = resolver1.opendns.com
ip=$(dig +short myip.opendns.com @208.67.222.222)
subnet="$ip/32"
echo client subnet: $subnet
dnsmasq \
  --user=root \
  --no-daemon \
  --add-subnet=$subnet
