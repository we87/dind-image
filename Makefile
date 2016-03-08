
all: image

TAG = v1.10.2
PREFIX = we87

image:
	docker build -t $(PREFIX)/dind:$(TAG) .
