FROM centos:latest
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip maker.zip
 RUN cp -rvf maker/* .
 RUN rm -rf maker  maker.zip
 CMD ["/usr/bin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
