#!/bin/bash
hostname=`hostname`

PHP_FPM_PORT=`netstat -anputl |grep -i LISTEN |grep ':9000 ' |wc -l`
PHP_FPM_PID=`pidof php-fpm |wc -l`

if [ $PHP_FPM_PORT -gt 0 -a $PHP_FPM_PID -gt 0 ];then
    echo "php-fpm_up,host=$hostname php-fpm_status=$PHP_FPM_PORT"
else
    echo "php-fpm_up,host=$hostname php-fpm_status=0"
fi
