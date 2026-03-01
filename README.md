*This project has been created as part of the 42 curriculum by nadahman.*

## Description
This project, **Inception**, is a system administration exercise designed to deepen the understanding of virtualization using **Docker**. The objective is to build a small-scale, secure infrastructure composed of several services running in dedicated containers.

The project includes:
- **NGINX**: Configured with TLSv1.2 or TLSv1.3 only, acting as the unique entry point.
- **WordPress + php-fpm**: A pre-configured CMS running independently of the web server.
- **MariaDB**: A relational database dedicated to the WordPress installation.

All images are built from the penultimate stable version of **Debian** (Bullseye) using custom **Dockerfiles**.

## Instructions
### Compilation and Execution
A **Makefile** is provided at the root of the repository to manage the entire lifecycle of the application:

* `make`: Automatically creates required host directories, builds the images, and starts the containers.
* `make down`: Stops all running containers.
* `make clean`: Stops containers and removes the built images.
* `make fclean`: Performs a full cleanup, including the deletion of persistent data in `/home/nadahman/data`.
* `make re`: Restarts the entire build and deployment process.

### Configuration
1.  Ensure a `.env` file is present in the `srcs/` directory with all necessary credentials.
2.  Update your local `/etc/hosts` file to map the domain:
    `127.0.0.1 nadahman.42.fr`
3.  Access the site at: `https://nadahman.42.fr`

## Technical Comparisons
### Virtual Machines vs Docker
- **Virtual Machines**: Emulate an entire hardware system, including a full guest operating system. This results in high resource consumption and slow startup times.
- **Docker**: Utilizes containerization to share the host's OS kernel. It is lightweight, starts almost instantly, and ensures environment consistency across different machines.

### Secrets vs Environment Variables
- **Environment Variables**: Great for non-sensitive configuration but can be exposed via process listings or Docker inspection.
- **Secrets**: Specifically designed to handle sensitive data (passwords, keys). They are encrypted and only accessible to the authorized services at runtime, providing a higher level of security.

### Docker Network vs Host Network
- **Host Network**: The container shares the host's networking namespace directly, exposing all container ports to the host's IP.
- **Docker Network (Bridge)**: Provides an isolated network for containers. Services can communicate with each other using container names, while only specific ports (like 443 for NGINX) are exposed to the outside world.

### Docker Volumes vs Bind Mounts
- **Bind Mounts**: Rely on the specific directory structure of the host machine, making them less portable.
- **Docker Volumes**: Managed by Docker itself. In this project, we use **Named Volumes** with a local driver to ensure data persists in the mandatory `/home/nadahman/data` directory while remaining managed by the Docker engine.

## Resources
- [Official Docker Documentation](https://docs.docker.com/)
- [NGINX SSL Termination Guide](https://docs.nginx.com/nginx/admin-guide/security-controls/terminating-ssl-http/)
- [WordPress CLI Handbook](https://make.wordpress.org/cli/handbook/)

### Use of AI
AI tools were used during this project for the following tasks:
- **Architecture Validation**: Comparing the `docker-compose.yml` structure against the project's strict constraints (named volumes, networking).
- **SSL Configuration**: Assistance in formatting the `openssl` subject parameters and NGINX TLS protocols.
- **Understant Concepts**: Learn and understand concepts quickly and efficiently.