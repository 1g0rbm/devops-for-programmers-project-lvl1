start-dev:
	docker-compose up -d

stop-dev:
	docker-compose down --remove-orphans

ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

start:
	docker run -p 8080:8080 1g0rbm/devops-for-programmers-project-lvl1 npm run dev

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app

create-env:
	cp .env.example .env