init:
	touch ./data/logs/access.log ./data/logs/traefik.log
	cp ./.env-example ./.env
	docker network create proxy

.PHONY: init