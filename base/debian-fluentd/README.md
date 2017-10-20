docker pull setyourmindpark/debian-fluentd
docker run -d --name some-container \
-p 24224:24224 \
-p 9292:9292 \
-v /your/path/config:/etc/td-agent \
-v /your/path/log:/var/log/td-agent \
-v /your/path/service-log:/log \
-v /your/path/ui-data:/opt/td-agent/data \
-v /your/path/gems:/opt/td-agent/embedded/lib/ruby/gems \
setyourmindpark/debian-fluentd

if you gather application logs, you should configure the path to /log
