#!/bin/sh
if [ "$(find /etc/haproxy -type f | wc -l)" = "0" ]; then
    echo '[ /etc/haproxy directory has no files. so copy from /var/origin/haproxy/* to /etc/haproxy ]'
    cp -a /var/origin/haproxy/* /etc/haproxy/
  else
    echo '[ /etc/haproxy directory has files. nothing to do ]'
fi

mkdir -p /run/haproxy
haproxy -d -f /etc/haproxy/haproxy.cfg