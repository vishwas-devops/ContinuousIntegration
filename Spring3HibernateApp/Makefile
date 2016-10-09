build-mysql:
	sudo docker build -t opstree/mysql --file `pwd`/Dockerfile.mysql `pwd`
run-mysql:
	# sudo docker rm -vf mysql
	sudo docker run -it -d -P --name mysql  opstree/mysql

build-run-mysql:
	make build-mysql
	make run-mysql

build-tomcat:
	sudo docker build -t opstree/tomcat --file `pwd`/Dockerfile.tomcat `pwd`
run-tomcat:
	# sudo docker rm -vf mysql
	sudo docker run -it -d -P --name tomcat --link mysql:mysql  opstree/tomcat
build-run-tomcat:
	make build-tomcat
	make run-tomcat

build-run:
	make build-run-mysql
	make build-run-tomcat
