#!/bin/sh

REPO=$1
REF=$2

DEPLOYMENTS=$(curl \
  -s \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  https://api.github.com/repos/${REPO}/deployments?ref=${REF})

DEPLOYMENT_ID=$(echo "${DEPLOYMENTS}" | jq -r ".[0] | .id")

echo "${DEPLOYMENT_ID}"
