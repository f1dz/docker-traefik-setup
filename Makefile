init:
	mkdir ./data/logs
	touch ./data/logs/access.log 
	touch ./data/logs/traefik.log
	cp ./.env-example ./.env
	docker network create proxy

.PHONY: init