#!/bin/sh
if [ "$(find /etc/nginx -type f | wc -l)" = "0" ]; then
    echo '[ /etc/nginx directory has no files. so copy from /var/origin/nginx/* to /etc/nginx ]'
    cp -a /var/origin/nginx/* /etc/nginx/
  else
    echo '[ /etc/nginx directory has files. nothing to do ]'
fi

nginx -g "daemon off;"
