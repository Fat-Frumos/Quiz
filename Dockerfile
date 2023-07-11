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

EXPOSE 22 8080 80

CMD ifconfig && netstat -ntlp && netstat -nulp && ifconfig -a && curl ifconfig.me && /usr/sbin/sshd -D
