all: build

check-vars:
ifndef WAVEFRONT_URL
	$(error env var WAVEFRONT_URL
endif
ifndef WAVEFRONT_TOKEN
	$(error env var WAVEFRONT_TOKEN
endif

build:
	docker stack deploy -c docker-compose.yml wavefront

refresh: destroy build

destroy:
	docker stack rm wavefront
	sleep 2
