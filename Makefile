install: install-deps
	npx simple-git-hooks

install-deps:
	npm ci

run:
	bin/nodejs-package.js 'World'

global-install: install
	npm link

global-uninstall:
	npm uninstall --global nodejs-package

global-run:
	nodejs-package 'World'

test:
	npm test

test-coverage:
	npm test -- --coverage --coverageProvider=v8

lint:
	npx eslint .

publish:
	npm publish

publish-test:
	npm publish --dry-run

.PHONY: test
