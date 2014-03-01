#!/bin/bash

if test -d /etc/mysql;
then
  /etc/init.d/mysql start
  /usr/local/bin/pyclustercheck -p 9200 &
fi
/usr/sbin/sshd -D $@
