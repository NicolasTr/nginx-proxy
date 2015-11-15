nginx: aws s3 cp s3://${SSL_ZIP_PATH} /tmp/certs.zip && unzip -d /etc/nginx/certs/ /tmp/certs.zip && rm /tmp/certs.zip && nginx
dockergen: docker-gen -watch -only-exposed -notify "nginx -s reload" /app/nginx.tmpl /etc/nginx/conf.d/default.conf
registration: docker-gen -watch -notify "bash -ex /app/aws.sh" /app/aws.tmpl /app/aws.sh

