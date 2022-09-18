FROM debian

RUN apt-get update && apt-get install -y apache2 curl

ENV APACHE_LOCK_DIR "/var/lock"
ENV APACHE_PID_FILE "/var/run/apache2.pid"
ENV APACHE_RUN_USER "www-data"
ENV APACHE_RUN_GROUP "www-data"
ENV APACHE_LOG_DIR "/var/log/apache2"


ADD index.html /var/www/html/ 
HEALTHCHECK --interval=1m --timeout=3s \ 
  CMD curl -f http://localhost/ || exit 1


WORKDIR /var/www/html

LABEL description="Webserver"

VOLUME /var/www/html

EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apachectl" ]
CMD [ "-D", "FOREGROUND" ]