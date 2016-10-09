build-cd:
	sudo docker build -t opstree/mysql --file `pwd`/Dockerfile.mysql `pwd`
run-cd:
	# sudo docker rm -vf mysql
	sudo docker run -it -d -P --name mysql  opstree/mysql

build-run:
	make build-cd
	make run-cd
