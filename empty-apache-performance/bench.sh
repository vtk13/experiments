#!/bin/bash
docker run -d --name empty-apache-performance -p 8080:80 vtk13/empty-apache-performance
/usr/sbin/ab -c 10 -n 1000 http://127.0.0.1:8080/
docker rm -f empty-apache-performance
