DOCKER_COMPOSE = ./srcs/docker-compose.yml
LOGIN = nadahman
DATA_PATH = /home/$(LOGIN)/data

all: up

up:
	@sudo mkdir -p $(DATA_PATH)/mariadb
	@sudo mkdir -p $(DATA_PATH)/wordpress
	docker compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker compose -f $(DOCKER_COMPOSE) down

clean:
	docker compose -f $(DOCKER_COMPOSE) down --rmi all

fclean: clean
	docker system prune -a --volumes -f
	@sudo rm -rf $(DATA_PATH)
	@echo "Nettoyage complet effectué."

re: fclean all

.PHONY: all up down clean fclean re