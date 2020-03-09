#!/bin/sh

REPO=$1
REF=$2

DEPLOYMENT=$(curl \
  -s \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -d "{ \"ref\": \"${REF}\", \"auto_merge\": false }" \
  https://api.github.com/repos/${REPO}/deployments)

echo "${DEPLOYMENT}"

DEPLOYMENT_ID=$(echo "${DEPLOYMENT}" | jq -r ".id")

echo "${DEPLOYMENT_ID}"
