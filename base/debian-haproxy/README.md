
docker pull setyourmindpark/debian-haproxy:1.8  

you should confiure in /etc/haproxy/haproxy.cfg ( auto create using command below in your volume path )

docker run -d --name haproxy \
-v /your/path:/etc/haproxy \
-p default_port:80 \
-p ssl_port:443 \
haproxy