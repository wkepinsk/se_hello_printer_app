
.PHONY: test

deps:
	pip install -r requirements.txt; \
	$ pip install -r test_requirements.txt

test:
	PYTHONPATH=. py.test  --verbose -s

lint:
	flake8 hello_world test

run:
	 PYTHONPATH=. FLASK_APP=hello_world flask run

docker_build:
	  docker build -t hello-world-printer .

USERNAME=wwojtek13
TAG=$(USERNAME)/hello_world_printer

docker_push: docker_build
		@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
		docker tag hello_world_printer $(TAG); \
		docker_push $(TAG);
		docker logout;
