#!/bin/bash
DIR_CURRENT=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

docker run -d --name empty-django-performance \
    -v ${DIR_CURRENT}/django_test:/var/www/html:ro \
    -v ${DIR_CURRENT}/django.conf:/etc/apache2/sites-available/000-default.conf:ro \
    -p 8080:80 vtk13/empty-django-performance
