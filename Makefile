css:
	sass docs/extra.scss docs/extra.css


build: css
	mkdocs build

deploy: build
	echo 'build done'
