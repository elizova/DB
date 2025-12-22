start:
	docker compose -f docker-compose.yml up --build -d

update-api:
	docker compose -f docker-compose.yml exec -w /core api rm -r src
	docker compose -f docker-compose.yml cp ./api/src api:core

update-db:
	docker compose -f docker-compose.yml exec -w /core api python -m alembic upgrade head

update-pkgs:
	docker compose -f docker-compose.yml cp ./api/requirements.txt api:/core
	docker compose -f docker-compose.yml exec -w /core api pip install -r requirements.txt
	docker compose -f docker-compose.yml restart api

new-migr:
	docker compose -f docker-compose.yml cp ./api/src/database api:/core/src
	docker compose -f docker-compose.yml exec -w /core api python -m alembic revision --autogenerate -m "$(name)"
	docker compose -f docker-compose.yml cp api:/core/src/migrations/versions ./api/src/migrations

see-db:
	docker compose -f docker-compose.yml exec database psql -U postgres

see-api:
	docker compose -f docker-compose.yml logs -f api --since $(time)

gen-dump:
	docker compose -f docker-compose.yml exec database sh -c 'pg_dump -h 127.0.0.1 --username=postgres -d postgres > dumps/$$(date +'%Y-%m-%d_%H-%M-%S').dump'
