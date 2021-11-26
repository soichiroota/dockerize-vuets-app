build:
	docker-compose build

up:
	docker-compose up

up--build:
	docker-compose up --build

down:
	docker-compose down

install:
	docker-compose run --rm vue npm install

test:
	docker-compose run --rm vue npm run test:unit

lint:
	docker-compose run --rm vue npm run lint

build--report--production:
	docker-compose run --rm vue npm run build --report

up--build--production:
	docker build -t vue-app ./app
	docker run -it -p 8080:80 --rm --name vue-app-1 vue-app