FROM linkerrepository/linker_centos_java

RUN yum -y update; yum clean all; \
    yum install -y memcached && \
    ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum install -y python-setuptools && \
    easy_install supervisor

ENV HSS_HOME /opt/linker-hss-1.0.0-SNAPSHOT

ADD entrypoint.sh /entrypoint.sh
ADD linker-hss-1.0.0-SNAPSHOT.tar.gz /opt/
ADD supervisord.conf /etc/supervisord.conf

RUN chmod 755 /*.sh
RUN chmod 755 $HSS_HOME/*.sh


EXPOSE 5001 5002

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
