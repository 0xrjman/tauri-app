RELEASE_VERSION 									:= 0.0.1

.PHONY: init
init:
	echo "version: ${RELEASE_VERSION}"
	pnpm install

.PHONY: run
run:
	pnpm tauri dev

.PHONY: build
build:
	pnpm tauri build

.PHONY: build-osx
build-osx:
	pnpm tauri build --target aarch64-apple-darwin
