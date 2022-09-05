.PHONY: build
build:
	docker build -t vuetify/vuetify .

.PHONY: run
run:
	docker run --rm -d -p 8000:8000 --name vuetify-docs vuetify/vuetify

.PHONY: start
start:
	make build && make run

.PHONY: stop
stop:
	docker stop genio-docs
