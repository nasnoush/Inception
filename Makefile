DOCKER_COMPOSE = srcs/docker-compose.yml
NAME = Inception

all: up

up:
	mkdir -p ~/data/mariadb
	mkdir -p ~/data/wordpress
	docker compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker compose -f $(DOCKER_COMPOSE) down

fclean: down
	docker volume rm srcs_db_data srcs_wp_data 2> /dev/null || true
	rm -rf ~/data/mariadb ~/data/wordpress
	rm -rf Inception

clean: down
	docker rmi srcs-nginx srcs-wordpress srcs-mariadb || true

