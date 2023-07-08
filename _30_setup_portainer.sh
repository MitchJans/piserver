#!/bin/bash

source _00_script_utils.sh

check_internet

sudo docker pull portainer/portainer-ce:latest || error "Failed to pull latest Portainer docker image!"
sudo docker run -d -p 9000:9000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest --logo "https://pi-hosted.com/pi-hosted-logo.png" || error "Failed to run Portainer docker image!"
