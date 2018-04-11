FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk
RUN apt-get install wget -y
RUN mkdir /opt/tomcat
WORKDIR "/opt/tomcat"
RUN cd /opt/tomcat
RUN wget http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
RUN tar xzvf apache-tomcat-8.0.50.tar.gz
EXPOSE 8080
COPY Spring3HibernateApp.war /opt/tomcat/apache-tomcat-8.0.50/webapps/
