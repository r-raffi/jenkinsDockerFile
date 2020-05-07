FROM centos
MAINTAINER rafi<raficse@gmail.com>
WORKDIR /root
RUN mkdir software && \
    dnf update -y && \	
    dnf -y install java-1.8.0-openjdk-devel && \ 
    dnf -y install git && \
    dnf -y install maven && \
    dnf clean all	
ADD apache-tomcat-8.5.51.tar.gz /root/software/
#COPY jenkins.war /root/software/apache-tomcat-8.5.51/webapps/jenkins.war
EXPOSE 80
CMD ["/root/software/apache-tomcat-8.5.51/bin/catalina.sh", "run"]
