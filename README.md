*This project has been created as part of the 42 curriculum by nadahman.*

## Description
[cite_start]This project, **Inception**, aims to broaden knowledge of system administration by using **Docker**[cite: 14]. [cite_start]The goal is to set up a small infrastructure composed of several services running in dedicated containers[cite: 74, 77]. 
The stack includes:
- [cite_start]**NGINX**: The only entry point via port 443 with TLSv1.2/v1.3[cite: 85, 120].
- [cite_start]**WordPress + php-fpm**: The website engine[cite: 86].
- [cite_start]**MariaDB**: The relational database[cite: 87].

[cite_start]All services are virtualized using **Docker Compose** and built from the **penultimate stable version of Debian** (Bullseye)[cite: 75, 78, 81].

## Instructions
### Compilation and Execution
[cite_start]To set up and start the entire application, use the provided **Makefile** at the root of the directory[cite: 21, 22]:
- `make`: Builds the Docker images and starts the containers in detached mode.
- `make down`: Stops and removes the containers.
- `make clean`: Stops containers and removes images.
- `make fclean`: Full cleanup (containers, images, and persistent data volumes).
- `make re`: Rebuilds and restarts the entire stack.

### Accessing the Website
1. [cite_start]Ensure your domain name is configured in `/etc/hosts`: `127.0.0.1 nadahman.42.fr`[cite: 111, 112].
2. [cite_start]Open your browser and go to `https://nadahman.42.fr`[cite: 120].

## Technical Choices & Comparisons
### Virtual Machines vs Docker
- **Virtual Machines (VM)**: Virtualize the hardware. Each VM includes a full guest OS, making them heavy and slow to start.
- **Docker**: Virtualizes the Operating System kernel. [cite_start]Containers share the host's kernel, making them lightweight, fast, and highly portable[cite: 213].

### Secrets vs Environment Variables
- **Environment Variables**: Useful for non-sensitive configuration (e.g., domain names). However, they can be visible via `docker inspect`.
- **Secrets**: Encrypted and only accessible to the specific service at runtime. [cite_start]They are the preferred method for sensitive data like passwords to ensure security[cite: 118, 214].

### Docker Network vs Host Network
- **Host Network**: The container shares the host's IP and ports directly. This reduces isolation.
- **Docker Network (Bridge)**: Creates an isolated private network for containers. [cite_start]Communication is internal, and only specific ports (like 443 for NGINX) are exposed to the outside world, enhancing security[cite: 92, 100, 215].

### Docker Volumes vs Bind Mounts
- **Bind Mounts**: Link a specific path on the host to the container. Highly dependent on the host's file structure.
- **Docker Volumes**: Managed by Docker. Named volumes are more portable and secure. [cite_start]In this project, we use named volumes with a bind driver to meet the requirement of storing data in `/home/nadahman/data`[cite: 88, 90, 216].

## Resources
- [Docker Documentation](https://docs.docker.com/)
- [NGINX Documentation](https://nginx.org/en/docs/)
- [MariaDB Documentation](https://mariadb.com/kb/en/documentation/)

### Use of AI
[cite_start]AI was used in this project for the following tasks:
- **Architecture Audit**: Verifying the compliance of the `docker-compose.yml` with the project subject.
- **Configuration Support**: Assistance in writing specific SSL generation commands and PHP-FPM pool configurations.
- **Documentation Structure**: Help in organizing mandatory Markdown files according to the 42 evaluation criteria.