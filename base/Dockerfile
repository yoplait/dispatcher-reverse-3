# DOCKER-VERSION 1.0.1

FROM centos:centos6

MAINTAINER Juan Carlos Perez <perezpardojc@gmail.com>

# Update and install wget
RUN yum -y update; 
RUN yum -y clean all
RUN yum -y install wget 
#RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u76-b13/jre-7u76-linux-x64.rpm && \
RUN wget --no-check-certificate --no-cookies https://mirror.its.sfu.ca/mirror/CentOS-Third-Party/NSG/common/x86_64/jre-7u76-linux-x64.rpm && \
echo "02ec5613512692c3d0c41fde4484d4e3  jre-7u76-linux-x64.rpm" >> MD5SUM && \
md5sum -c MD5SUM
RUN rpm -Uvh jre-7u76-linux-x64.rpm 
RUN rm -f jre-7u76-linux-x64.rpm MD5SUM
RUN yum -y update; yum clean all



