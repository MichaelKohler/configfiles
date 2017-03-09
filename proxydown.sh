#!/usr/bin/env bash
INTERFACE=Wi-Fi
sudo -v
sudo networksetup -setsocksfirewallproxystate $INTERFACE off
echo "SOCKS proxy 127.0.0.1:9050 disabled."
