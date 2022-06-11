FROM ubuntu:latest

RUN apt update && \
    apt install apache2 -y && \
    apt install apache2-utils -y

COPY ./index.html /var/www/html/index.html
COPY ./apache2.conf /etc/apache2/apache2.conf

EXPOSE 80

ENTRYPOINT apache2ctl start && \
            sleep 60000000000
    