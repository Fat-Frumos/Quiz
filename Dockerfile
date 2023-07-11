FROM centos:7

RUN yum update -y && yum install -y openssh* net-tools lsof telnet passwd curl

RUN echo "123456" | passwd --stdin root

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key

RUN sed -i '/^sessions+requireds+pam_loginuid.so/s/^ /#/' /etc/pam.d/sshd

RUN mkdir -p /root/.ssh && chown root.root /root && chmod 700 /root/.ssh

RUN ssh-keygen -t rsa -f mykey -N ""
RUN cat mykey
RUN cat mykey.pub
RUN useradd -m newuser
RUN echo "newuser:password" | chpasswd
RUN ifconfig
RUN netstat -ntlp
RUN netstat -nulp
RUN ifconfig -a
RUN curl ifconfig.me

ENV USER=newuser
ENV PASSWORD=password
ENV PORT=22

COPY start.sh /start.sh

RUN yum install -y epel-release
RUN yum install -y nginx

EXPOSE 22 8080 80

CMD nginx && /usr/sbin/sshd -D
