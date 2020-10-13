build:
	docker-compose build 
start: create tail
stop: destroy
create:
	docker-compose up -d
destroy:
	docker-compose down
restart: stop start
tail:
	docker-compose logs -f
shell:
	docker-compose exec app ash