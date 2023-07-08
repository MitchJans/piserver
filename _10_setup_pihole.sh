#!/bin/bash

# https://pimylifeup.com/raspberry-pi-pi-hole/
# - Use Quad9 encrypted DNSSEC as upstream
# - Check if router has pihole set as DNS server

curl -sSL https://install.pi-hole.net | sudo bash || error "couldn't pull and run pihole setup script"
