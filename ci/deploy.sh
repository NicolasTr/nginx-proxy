#!/bin/bash -ex

sudo docker push quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_BRANCH}
