FROM debian:sid
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get clean

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]