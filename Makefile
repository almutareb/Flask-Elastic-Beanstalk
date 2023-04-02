install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv test_app.py
	
deploy:
	echo "Deploying app"
	eb deploy flask-elastic-beanstalk-env
	
all: install lint test