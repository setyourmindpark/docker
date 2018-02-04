docker pull setyourmindpark/debian-nginx ( latest )  

docker run -d --name some-container \
-p 80:80 \
-p 443:443 \
-v /your/path/nginx:/etc/nginx \
setyourmindpark/debian-nginx
