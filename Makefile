
all: image

TAG = v1.9.1
PREFIX = we87

image:
	docker build -t $(PREFIX)/dind:$(TAG) .
