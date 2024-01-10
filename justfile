default:
  just --list

up:
  docker-compose up -d

kill:
  docker-compose kill

build:
  docker-compose build

ps:
  docker-compose ps

exec *args:
  docker-compose exec app {{args}}

logs *args:
    docker-compose logs {{args}} -f

ruff *args:
  docker compose exec app ruff {{args}} src
  docker compose exec app ruff format src

lint:
  just ruff --fix
