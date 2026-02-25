#!/usr/bin/env bas
set -euo pipefail

cd /opt/infra

while IFS=$'\t' read -r name value; do
  export "${name##*/}"="$value"
done < <(aws ssm get-parameters-by-path \
  --path "/joshuako/prod" \
  --with-decryption \
  --query "Parameters[*].[Name,Value]" \
  --output text)

docker compose pull
docker compose up -d --remove-orphans

docker image prune -f