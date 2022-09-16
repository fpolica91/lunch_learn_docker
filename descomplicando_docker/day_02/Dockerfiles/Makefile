file-one-build: 
		@docker image build -t my_apache:1.0.0 -f Dockerfile.1 .
file-one-run: 
		@docker container run -ti -p 8080:80 my_apache:1.0.0
file-one-deamon: 
		@docker container run -d -p 8080:80 my_apache:1.0.0
find-apache:
		dpkg -l | grep apache