#!/bin/bash

# https://pimylifeup.com/raspberry-pi-docker/

source _00_script_utils.sh

check_internet

curl -sSL https://get.docker.com | sh || error "Failed to install Docker."
sudo usermod -aG docker "$USER" || error "Failed to add user to the Docker usergroup."
echo "Remember to logoff/reboot for the changes to take effect."
