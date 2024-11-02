# Dockerfile for dbserver
FROM ubuntu-ssh

# Install MySQL and necessary dependencies
RUN apt update && apt install -y mysql-server python3-pip

# Install PyMySQL using pip
RUN pip3 install PyMySQL

# Create the necessary directories for the MySQL socket
RUN mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld

# Configure MySQL to listen on all interfaces
RUN echo "[mysqld]\nskip-networking=0\nskip-bind-address" >> /etc/mysql/mysql.conf.d/mysqld.cnf

# Expose SSH and MySQL ports
EXPOSE 22 3306

# Start MySQL and SSH services
CMD service mysql start && service ssh start && tail -f /var/log/mysql/error.log
