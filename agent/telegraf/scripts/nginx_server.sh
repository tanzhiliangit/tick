#!/bin/bash
hostname=`hostname`

NGINX_PORT=`netstat -anputl |grep -i LISTEN |grep ':80 ' |wc -l`
NGINX_PID=`pidof nginx |wc -l`

if [ $NGINX_PORT -gt 0 -a $NGINX_PID -gt 0 ];then
    echo "nginx_up,host=$hostname nginx_status=$NGINX_PORT"
else
    echo "nginx_up,host=$hostname nginx_status=0"
fi
