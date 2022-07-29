RELEASE_VERSION 									:= 0.0.1

.PHONY: init
init:
	echo "version: ${RELEASE_VERSION}"
	yarn install

.PHONY: run
run:
	yarn tauri dev

.PHONY: build
build:
	yarn tauri build
