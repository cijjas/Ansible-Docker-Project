# Ansible Docker Project

Este proyecto implementa una infraestructura utilizando Ansible y Docker para desplegar servidores web y de base de datos.

## Requisitos

- Docker
- Ansible
- Docker Compose

## Estructura del Proyecto

- **ansible/**: Contiene los playbooks, roles y configuraciones de Ansible.
- **docker/**: Incluye los Dockerfiles y el archivo `docker-compose.yml` para los contenedores.
- **awx/**: Configuración para desplegar AWX con Docker.

## Requisitos Previos

- Docker
- Docker Compose
- Ansible

## Instalación y Configuración

1. **Clonar el repositorio:**

   ```bash
   git clone https://github.com/tu_usuario/ansible-docker-project.git
   cd ansible-docker-project

# Docker

Restart

```sh
docker ps -a

docker rm -f web1 web2 db1 db2

```

```sh
docker-compose -f ./docker/docker-compose.yml  down 
docker-compose -f ./docker/docker-compose.yml  up --build -d

```

Start building

```sh
docker build -t ubuntu-ssh ./docker/base
docker build -t webserver-image ./docker/webserver
docker build -t dbserver-image ./docker/dbserver

```

up

```sh
docker-compose -f ./docker/docker-compose.yml up -d
docker ps

```

```sh
ssh-keygen -f "/home/chris/.ssh/known_hosts" -R "[localhost]:2224"
ssh-keygen -f "/home/chris/.ssh/known_hosts" -R "[localhost]:2225"
ssh-keygen -f "/home/chris/.ssh/known_hosts" -R "[localhost]:2222"
ssh-keygen -f "/home/chris/.ssh/known_hosts" -R "[localhost]:2223"

```

# Ansible

```sh
sudo apt update
sudo apt install sshpass

```

```sh
ANSIBLE_HOST_KEY_CHECKING=False ansible all -m ping -i ./ansible/inventories/hosts.ini

```

Sin tener esta carpeta creada

```sh
ansible-galaxy init ./ansible/roles/webserver
ansible-galaxy init ./ansible/roles/dbserver

```

```sh
ansible-galaxy install webserver
ansible-galaxy install dbserver

```

```sh
ansible-playbook ./ansible/playbooks/site.yml -i ./ansible/inventories/hosts.ini

```