#!/bin/bash
sudo apt update -y
sudo apt install -y docker.io docker-compose
sudo systemctl enable docker
sudo systemctl start docker
