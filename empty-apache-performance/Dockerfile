FROM ubuntu
RUN apt-get update && apt-get install -y apache2 && apt-get clean

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]