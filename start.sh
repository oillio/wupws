#!/bin/bash

env | sed 's/^\(.*\)$/export \1/g' > /env.sh
chmod a+x /env.sh

service cron start
touch /tmp/output.log
tail -f /tmp/output.log
