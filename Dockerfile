FROM	centos:latest
MAINTAINER	tanya.gulati@mykaarma.com
RUN	yum install httpd wget vim -y
COPY	index.html /var/www/html
#COPY	test.txt /var/www/html
WORKDIR	/var/www/html
EXPOSE	80
CMD	/usr/sbin/httpd -DFOREGROUND
