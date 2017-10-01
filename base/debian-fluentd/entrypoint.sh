#!/bin/sh
if [ "$(find /etc/td-agent -type f | wc -l)" = "0" ]; then
    echo '[ /etc/td-agent directory has no files. so copy from /var/origin/td-agent/* to /etc/td-agent ]'
    cp -a /var/origin/td-agent/* /etc/td-agent/
  else
    echo '[ /etc/td-agent directory has files. nothing to do ]'
fi

if [ "$(find /opt/td-agent/embedded/lib/ruby/gems -type f | wc -l)" = "0" ]; then
    echo '[ /opt/td-agent/embedded/lib/ruby/gems directory has no directories. so copy from /var/origin/gems/* to /opt/td-agent/embedded/lib/ruby/gems ]'
    cp -a /var/origin/gems/* /opt/td-agent/embedded/lib/ruby/gems
  else
    echo '[ /opt/td-agent/embedded/lib/ruby/gems directory has directories. nothing to do ]'
fi

mkdir /log
chown td-agent:td-agent /log
chmod 755 /log

chown -R td-agent:td-agent /var/log/td-agent
chmod 755 /var/log/td-agent

service td-agent start
/usr/sbin/td-agent-ui start
