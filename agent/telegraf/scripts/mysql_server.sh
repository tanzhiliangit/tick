#!/bin/bash
hostname=`hostname`

MYSQL_PORT=`netstat -anputl |grep -i LISTEN |grep ':3306 ' |wc -l`
MYSQL_PID=`pidof mysqld |wc -l`

if [ $MYSQL_PORT -gt 0 -a $MYSQL_PID -gt 0 ];then
    echo "mysql_up,host=$hostname mysql_status=$MYSQL_PORT"
else
    echo "mysql_up,host=$hostname mysql_status=0"
fi
