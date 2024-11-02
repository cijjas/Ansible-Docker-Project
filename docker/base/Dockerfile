# Dockerfile for base
FROM ubuntu:20.04

# Install SSH and set up the SSH service
RUN apt update && apt install -y openssh-server && mkdir /var/run/sshd

# Create user 'ansible' with sudo privileges
RUN useradd -m -d /home/ansible -s /bin/bash ansible && echo 'ansible:ansible' | chpasswd && usermod -aG sudo ansible

# Configure SSH for password authentication (only for testing)
RUN sed -i 's/.*PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/.*PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]
