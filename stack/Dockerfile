From centos:7

MAINTAINER linker

WORKDIR /linker
ADD gnutls-2.8.5-18.el6.x86_64.rpm /linker/gnutls-2.8.5-18.el6.x86_64.rpm
RUN chmod 755 /linker/gnutls-2.8.5-18.el6.x86_64.rpm
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN rpm -ivh /linker/gnutls-2.8.5-18.el6.x86_64.rpm --force --nodeps

RUN yum -y install protobuf.x86_64 protobuf-c.x86_64 protobuf-c-devel.x86_64
RUN yum install -y lksctp-tools.x86_64 lksctp-tools-devel.x86_64

RUN ln -s /usr/lib64/libtasn1.so.6.2.3 /usr/lib64/libtasn1.so.3

RUN yum install -y openssl

ADD stack.tgz /linker/

ADD run.sh /run.sh
RUN chmod 755 /run.sh

CMD /run.sh
