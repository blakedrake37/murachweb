FROM tomcat:10.0-jdk15-adoptopenjdk-openj9
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD ch05_ex2_email.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]