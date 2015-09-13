nginx: nginx
dockergen: docker-gen -watch -only-exposed -notify "nginx -s reload" /app/nginx.tmpl /etc/nginx/conf.d/default.conf
registration: docker-gen -watch -notify "bash -ex /app/aws.sh" /app/aws.tmpl /app/aws.sh

