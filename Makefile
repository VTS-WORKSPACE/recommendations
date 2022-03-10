all: setup build-js-production release

setup:
	npm ci

build-js-production:
	npm run build

release:
	zip -r release.zip . -x "node_modules/*" "tests/*" "vendor/*" ".github/*"