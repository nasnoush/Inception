NAME = Inception

build:
	docker compose up -d --build

down:
	docker compose down

kill:
	docker compose kill
