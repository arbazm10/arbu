FROM centos:7
MAINTAINER arbazmtn@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/coto.zip  /var/www/html/
 WORKDIR  /var/www/html
 RUN unzip coto.zip
 RUN cp -rvf html/* .
 RUN rm -rf html  coto.zip
 CMD ["/usr/sbin/httpd", "-D",   "FOREGROUND"]
 EXPOSE 80
 
# FROM  centos:7
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
