# centos + jdk 1.8.0_65
FROM centos:latest
MAINTAINER "Stanislav Tyurikov"

RUN \
curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm \
&& rpm -Uvh jdk-8u65-linux-x64.rpm \
&& rm jdk-8u65-linux-x64.rpm

RUN yum clean all
RUN rm -rf /var/cache
