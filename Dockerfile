# Dockerfile
FROM ubuntu:20.04

# Establecer la variable de entorno para evitar interacciones durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar SSH, Python y sudo
RUN apt-get update && \
    apt-get install -y openssh-server sudo python3 python3-pip && \
    mkdir /var/run/sshd && \
    echo 'root:password' | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    service ssh restart

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
