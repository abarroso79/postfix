FROM centos

RUN yum install -y https://mirrors.fedoraproject.org/metalink?repo=fedora-34&arch=x86_64/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum install -y postfix

RUN sed -i "s/inet_interfaces = localhost/inet_interfaces = all/g" /etc/postfix/main.cf
RUN echo mynetworks = 172.0.0.0/8, 10.0.0.0/8, 127.0.0.0/8, 192.168.0.0/16 >> /etc/postfix/main.cf
