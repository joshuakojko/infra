#!/usr/bin/env bash
set -euo pipefail

sudo dnf -y update
sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m) -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
docker compose version