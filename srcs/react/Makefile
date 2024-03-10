IMAGE_NAME = react

BUILD_PATH_TAR = /usr/src/app/public/build.js.tar
HOST_PATH_TAR = ./public/build.js.tar
HOST_PATH_BUILD = ./public/build.js
HOST_PATH = ./public/

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d $(IMAGE_NAME)

 # I don't why the tar commands work the way they do, possibly because the archive was archived again

copy-build: build
	@id=$$(docker create $(IMAGE_NAME)); \
	docker cp $$id:$(BUILD_PATH_TAR) $(HOST_PATH_TAR); \
	docker rm -v $$id; \
	cd $(HOST_PATH) && \
	tar -xf build.js.tar && \
	tar -xf build.js && \
	rm -f build.js.tar build.js

.PHONY: build run