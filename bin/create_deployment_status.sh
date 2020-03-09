#!/bin/sh

REPO=$1
DEPLOYMENT_ID=$2
STATE=$3

curl \
  -s \
  -H "Authorization: token ${GITHUB_TOKEN}" \
  -d "{ \"state\": \"${STATE}\" }" \
  https://api.github.com/repos/${REPO}/deployments/${DEPLOYMENT_ID}/statuses
