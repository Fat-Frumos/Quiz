FROM centos:7
MAINTAINER This is centos:ssh

# Install SSH and other service packages
RUN yum update && yum install -y openssh* net-tools lsof telnet passwd

# Change root user password
RUN echo "123456" | passwd --stdin root

# Set not to use the ssh service side pam module
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

# Create asymmetric key
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key

# Turn off the ssh session module of pam.d
RUN sed -i '/^sessions+requireds+pam_loginuid.so/s/^ /#/' /etc/pam.d/sshd

# Create ssh working directory and set permissions
RUN mkdir -p /root/.ssh && chown root.root /root && chmod 700 /root/.ssh

# Expose port
EXPOSE 22

# Start sshd service
CMD ["/usr/sbin/sshd", "-D"]
