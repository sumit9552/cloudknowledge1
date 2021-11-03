FROM centos:latest
MAINTAINER sp9552609226.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
run rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-d". "FOREGROUND"]
EXPOSE 80
