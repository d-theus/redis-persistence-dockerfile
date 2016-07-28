FROM centos:centos7

RUN yum -y update && yum -y install epel-release && yum -y update && yum -y install redis && yum clean all

WORKDIR /var/redis
ADD redis.conf /var/redis
RUN chown -R redis /var/redis
USER redis
EXPOSE 6379
CMD redis-server redis.conf
