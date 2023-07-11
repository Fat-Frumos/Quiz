FROM centos:7

RUN yum update -y && yum install -y openssh* net-tools lsof telnet passwd

RUN echo "123456" | passwd --stdin root

RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key

RUN sed -i '/^sessions+requireds+pam_loginuid.so/s/^ /#/' /etc/pam.d/sshd

RUN mkdir -p /root/.ssh && chown root.root /root && chmod 700 /root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
