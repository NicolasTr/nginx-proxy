#!/bin/bash -ex

if [ -n "${SSL_ZIP_PATH}" ]
then
    aws s3 cp s3://${SSL_ZIP_PATH} /tmp/certs.zip
    unzip -d /etc/nginx/certs/ /tmp/certs.zip
    rm /tmp/certs.zip
fi
