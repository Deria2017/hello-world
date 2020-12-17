FROM tomcat
RUN Yum update -y
RUN mkdir war-file
RUN cd war-file
COPY .  /var/lib/jenkins/workspace/new-test/webapp/target/webapp.war
ADD gameoflife.war /usr/local/tomcat/webapps 
CMD “catalina.sh” “run”
EXPOSE 8080






# Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps

