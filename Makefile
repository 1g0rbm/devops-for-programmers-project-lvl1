start-dev:
	docker-compose --env-file ./app/.env up -d

stop-dev:
	docker-compose --env-file ./app/.env down --remove-orphans

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	docker run -p 8080:8080 1g0rbm/devops-for-programmers-project-lvl1 npm run dev

build:
	docker-compose -f docker-compose.yml --env-file ./app/.env build app

push:
	docker-compose -f docker-compose.yml push app
