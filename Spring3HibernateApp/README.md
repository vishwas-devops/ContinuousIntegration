# Dockerization of   a java application
In this repo you will find a Makefile  which  will perform all the things for you . To run the application  you  only needs to run the following command in the same place where Makefile exist.
```
$ make build-run  
```
To remove all the containers you can run below command.
```
$ docker rm -vf $(docker ps -a -q)
```
