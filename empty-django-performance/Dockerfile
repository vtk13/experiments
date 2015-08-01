FROM debian:sid
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y python3-django
RUN apt-get install -y libapache2-mod-wsgi-py3
RUN apt-get clean

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]