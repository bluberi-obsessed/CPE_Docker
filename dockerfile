FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    apache2 \
    mysql-server && \
    apt-get clean

EXPOSE 80 3306

CMD service apache2 start && service mysql start && bash
