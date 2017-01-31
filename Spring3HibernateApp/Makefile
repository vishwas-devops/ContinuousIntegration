build-app-war:
	docker run -it --rm --name my-maven-project -v `PWD`:/usr/src/mymaven -w /usr/src/mymaven maven:3.2-jdk-7 mvn clean package

build-mysql:
	docker build -t opstree/mysql --file `pwd`/Dockerfile.mysql `pwd`

run-mysql:
	docker run -it --rm --name mysql  opstree/mysql

build-run-mysql:
	make build-mysql
	sleep 2
	make run-mysql

build-tomcat:
	make build-app-war
	docker build -t opstree/tomcat --file `pwd`/Dockerfile.tomcat `pwd`

run-tomcat:
	docker run -it --rm -P --name tomcat --link mysql:mysql  opstree/tomcat

build-run-tomcat:
	make build-tomcat
	sleep 1
	make run-tomcat


build-nginx:
	sudo docker build -t opstree/nginx --file `pwd`/Dockerfile.nginx `pwd`
run-nginx:
	sudo docker run -it -d -P --name nginx --link tomcat:tomcat  opstree/nginx

build-run-nginx:
	make build-nginx
	sleep 1
	make run-nginx


build-run:
	make build-run-mysql
	sleep 10
	make build-run-tomcat
	sleep 5
	make build-run-nginx
