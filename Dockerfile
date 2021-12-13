FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install sudo -y
RUN apt-get update && apt-get install vim -y
RUN apt-get install apache2-utils -y
RUN apt-get install net-tools -y
RUN apt-get install iputils-ping -y
RUN apt-get install curl -y
RUN apt-get install apache2 -y

RUN a2enmod userdir
RUN a2enmod autoindex
RUN a2enmod alias
RUN sudo groupadd cit384

RUN sudo adduser user1
RUN sudo passwd -d user1
RUN sudo usermod -g cit384 user1
COPY user1index.html /home/user1/public_html/index.html

RUN sudo adduser user2
RUN sudo passwd -d user2
RUN sudo usermod -g cit384 user2
COPY user2index.html /home/user2/public_html/index.html

COPY mywebsite.cit384.conf /etc/apache2/sites-available
COPY special.cit384.conf /etc/apache2/sites-available
COPY final.cit384.conf /etc/apache2/sites-available

RUN sudo mkdir -p /var/www//html/mywebsite.cit384/public_html
COPY mywebsite.html /var/www/html/mywebsite.cit384/public_html/index.html
RUN a2ensite mywebsite.cit384.conf

RUN sudo mkdir -p /var/www/html/special.cit384/public_html
COPY special.html /var/www/html/special.cit384/public_html/index.html
RUN a2ensite special.cit384.conf

RUN a2ensite final.cit384.conf

RUN sudo htpasswd -bc /home/submission.txt user1 passw0rd
RUN sudo mkdir -p /var/www/html/final.cit384/public_html/submission
COPY submission.md /var/www/html/final.cit384/public_html/submission
COPY .htaccess /var/www/html/final.cit384/public_html/submission

Label Maintainer: "edgar.aguilar.189@my.csun.edu"
Expose 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
