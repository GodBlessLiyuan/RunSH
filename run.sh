#!/bin/sh
PIDS=`ps -ef |grep /data/smartindustry/yinghong/wms/basicmanage/ | grep -v grep | awk '{print $2}'`
if [ "$PIDS" != "" ]; then kill -9 $PIDS; fi
nohup java -Xms64m -Xmx256m -Djava.io.tmpdir=/data/tmp -Dloader.path=/data/smartindustry/yinghong/wms/basicmanage/lib,/data/smartindustry/yinghong/wms/common-lib -jar /data/smartindustry/yinghong/wms/basicmanage/$1 --spring.profiles.active=prod >/data/smartindustry/yinghong/wms/basicmanage/logs/basicmanage.log 2>&1 &
