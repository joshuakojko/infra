#!/usr/bin/env bash
set -euo pipefail

sudo dnf -y update
sudo dnf -y install docker
sudo systemctl start --now docker
sudo usermod -aG docker $USER
newgrp docker