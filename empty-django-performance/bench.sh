#!/bin/bash
DIR_CURRENT=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
${DIR_CURRENT}/build.sh
ID=`${DIR_CURRENT}/start.sh`
# warm up
/usr/sbin/ab -n 10 http://127.0.0.1:8080/ >/dev/null 2>&1
# bench
/usr/sbin/ab -c 10 -n 1000 http://127.0.0.1:8080/
# clean up
docker rm -f ${ID}
