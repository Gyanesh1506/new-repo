FROM tomcat
USER Root
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

