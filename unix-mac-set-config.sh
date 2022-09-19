#!/bin/bash
sudo apt-get install network-manager
$connectedInterface = $(nmcli -t -f NAME c show --active)
cat /etc/resolv.conf
sudo nmcli connection modify "$connectedInterface" ipv4.dns 1.1.1.1
sudo nmcli connection modify "$connectedInterface" ipv4.dns 8.8.8.8