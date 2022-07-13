start-dev:
	docker-compose --env-file ./app/.env up -d

stop-dev:
	docker-compose --env-file ./app/.env down --remove-orphans

test:
	docker-compose -f docker-compose.yml --env-file ./app/.env up --abort-on-container-exit

start:
	docker run -p 8080:8080 1g0rbm/devops-for-programmers-project-lvl1 npm run dev

build:
	docker build -t 1g0rbm/devops-for-programmers-project-lvl1 -f Dockerfile.production .

push:
	docker push 1g0rbm/devops-for-programmers-project-lvl1

create-env:
	cp ./app/.env.example ./app/.env