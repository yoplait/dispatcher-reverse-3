# DOCKER-VERSION 1.0.1

FROM perezpardojc/base

MAINTAINER Juan Carlos Perez <perezpardojc@gmail.com>

# Install Apache
RUN yum install -y --enablerepo=centosplus libselinux-devel
RUN yum install -y --enablerepo=centosplus httpd
RUN yum install -y tar 

# Download the Dispatcher
RUN wget https://www.adobeaemcloud.com/content/companies/public/adobe/dispatcher/dispatcher/_jcr_content/top/download_24/file.res/dispatcher-apache2.2-linux-x86-64-4.2.3.tar.gz
RUN mkdir mkdir -p dispatcher
RUN tar -C dispatcher -zxvf dispatcher-apache2.2-linux-x86-64-4.2.3.tar.gz
RUN ls ./dispatcher

# Copy Dispatcher
RUN cp "./dispatcher/dispatcher-apache2.2-4.2.3.so" "/etc/httpd/modules/dispatcher-apache2.2-4.2.3.so"
RUN ln -s /etc/httpd/modules/dispatcher-apache2.2-4.2.3.so /etc/httpd/modules/mod_dispatcher.so

# Add config files
ADD https://raw.githubusercontent.com/yoplait/dispatcher-reverse-2/master/httpd/httpd.conf /etc/httpd/conf/httpd.conf
ADD https://raw.githubusercontent.com/yoplait/dispatcher-reverse-2/master/rules/dispatcher.any /etc/httpd/conf/dispatcher.any
ADD https://raw.githubusercontent.com/yoplait/dispatcher-reverse-2/master/rules/cache.any /etc/httpd/conf/cache.any
ADD https://raw.githubusercontent.com/yoplait/dispatcher-reverse-2/master/rules/filter.any /etc/httpd/conf/filter.any
    

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]

EXPOSE 80 443
