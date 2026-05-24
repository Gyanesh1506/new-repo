FROM tomcat
USER root
RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
COPY index.jsp  /usr/local/tomcat/webapps/ROOT

