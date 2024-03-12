# these will speed up builds, for docker-compose >= 1.25
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

build:
	docker-compose build

up:
	docker-compose up -d app

down:
	docker-compose down

logs:
	docker-compose logs app | tail -100

test-unit: up
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/unit

test-integration: up
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/integration

test-e2e: up
	docker-compose run --rm --no-deps --entrypoint=pytest app /tests/e2e
