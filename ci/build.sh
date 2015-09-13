#!/bin/bash -ex

# To use the cache as much as possible to minimise deployment time
find . -exec touch -t 200001010000.00 {} ";"

sudo docker pull quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_BRANCH} || true

# Build the image
sudo docker build -t quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_BRANCH} .
