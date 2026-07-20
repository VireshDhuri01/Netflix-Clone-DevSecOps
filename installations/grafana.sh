#!/bin/bash

#Port - 3000

sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common

sudo mkdir -p /etc/apt/keyrings

#Download and save the Grafana GPG key
curl -fsSL https://packages.grafana.com/gpg.key | \
sudo gpg --dearmor -o /etc/apt/keyrings/grafana.gpg

#Add the Grafana repository
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://packages.grafana.com/oss/deb stable main" | \
sudo tee /etc/apt/sources.list.d/grafana.listAdd the Grafana repository

#check the grafana file and rename it
ls -l /etc/apt/sources.list.d/
sudo mv /etc/apt/sources.list.d/grafana.listAdd /etc/apt/sources.list.d/grafana.list

sudo apt update
sudo apt install grafana -y



##Copy the Below Part and Remove it Before running the Script##
#start grafana
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
sudo systemctl status grafana-server
