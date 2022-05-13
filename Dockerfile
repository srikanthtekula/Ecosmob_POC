FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat && chmod 775 /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz -O /tmp/apache-tomcat-8.5.78.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-8.5.78.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.78/* /usr/local/tomcat/
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
