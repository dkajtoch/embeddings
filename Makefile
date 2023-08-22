build_docker:
	docker build -t clarin/embeddings:local .
test:
	docker run -ti --rm -v `pwd`:/code  clarin/embeddings:local -- 'poetry run poe test'
check:
	docker run -ti --rm -v `pwd`:/code  clarin/embeddings:local -- 'poetry run poe check'
fix:
	docker run -ti --rm -v `pwd`:/code  clarin/embeddings:local -- 'poetry run poe fix'

upgrade:
	pip install --upgrade wheel setuptools build pip

install-poetry: upgrade
	pip install --no-cache-dir poetry==1.2.2

install:
	poetry install