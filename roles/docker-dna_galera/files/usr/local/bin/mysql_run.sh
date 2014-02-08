#!/bin/bash

/usr/local/bin/pyclustercheck -p 9200 &
/usr/bin/mysqld_safe $@
