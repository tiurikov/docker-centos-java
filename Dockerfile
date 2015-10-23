# centos + jre 1.8.0_65
FROM centos:latest
MAINTAINER "Stanislav Tyurikov"

RUN \
curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jre-8u65-linux-x64.rpm \
&& rpm -Uvh jre-8u65-linux-x64.rpm \
&& rm jre-8u65-linux-x64.rpm \
&& yum clean all \
&& rm -rf /var/cache