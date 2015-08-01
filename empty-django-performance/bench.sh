#!/bin/bash
DIR_CURRENT=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
${DIR_CURRENT}/build.sh

docker run -d --name empty-django-performance \
    -v ${DIR_CURRENT}/django_test:/var/www/html:ro \
    -v ${DIR_CURRENT}/django.conf:/etc/apache2/sites-available/000-default.conf:ro \
    -p 8080:80 vtk13/empty-django-performance

# warm up
/usr/sbin/ab -n 10 http://127.0.0.1:8080/ >/dev/null 2>&1
/usr/sbin/ab -c 10 -n 1000 http://127.0.0.1:8080/
docker rm -f empty-django-performance
