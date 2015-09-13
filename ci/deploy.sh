#!/bin/bash -ex

sudo docker push quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_BRANCH}

sudo docker tag quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_BRANCH} quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_SHA1}
sudo docker push quay.io/nicolastr11/${CIRCLE_PROJECT_REPONAME}:${CIRCLE_SHA1}
