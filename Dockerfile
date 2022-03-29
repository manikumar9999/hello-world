FROM centos:7
MAINTAINER surgammanikumar@gmail.com
RUN yum update -y && yum install httpd -y
EXPOSE 80
COPY mani.html /var/www/html/mani.html
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
