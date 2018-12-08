FROM centos7

LABEL mantainer="B-Flexx"
LABEL version="1.0"

ENV JAVA_HOME="/opt/jdk-8u191-linux-x64"
ENV CATALINA_HOME="/opt/apache-tomcat-8.5.9"
ENV PATH="$CATALINA_HOME/bin:$PATH"

RUN sudo yum install epel-release && sudo yum update && sudo yum install git wget freetds -y

WORKDIR /opt

RUN wget https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz
RUN wget http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.9/bin/apache-tomcat-8.5.9.tar.gz
RUN tar -zxf jdk-8u191-linux-x64.tar.gz 
RUN tar -zxf apache-tomcat-8.5.9.tar.gz

COPY ${CUSTOMER}/freetds /etc/freetds.conf
COPY ${CUSTOMER}/context.xml ${CATALINA_HOME}/conf
COPY ${CUSTOMER}/bflexx_start.sh ${CATALINA_HOME}/bin
COPY ${CUSTOMER}/warfile.war ${CATALINA_HOME}/war

CMD [ "catalina.sh", "run" ]

EXPOSE 8080