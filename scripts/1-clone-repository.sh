#!/usr/bin/env bash
set -euo pipefail

sudo dnf -y update
sudo dnf -y install git
sudo mkdir -p /opt/infra
sudo chown $USER:$USER /opt/infra
git clone https://github.com/joshuakojko/infra.git /opt/infra
cd /opt/infra
chmod +x scripts/*.sh