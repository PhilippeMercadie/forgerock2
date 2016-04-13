FROM tomcat:8-jre8

MAINTAINER warren.strange@gmail.com

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME
RUN mkdir -p /opt/openam
VOLUME /opt/openam


RUN chown -R 1001:1001 /opt/openam \
    && chmod -R 777 /opt/openam/* 

# download openam nightly build war
# Trick taken from wadahiro/docker-openam-nightly!
RUN curl http://download.forgerock.org/downloads/openam/openam_link.js | \
   grep -o "http://.*\.war" | xargs curl -o webapps/openam.war

ADD run-openam.sh /tmp/run-openam.sh

EXPOSE 8080
USER 1001

CMD ["/tmp/run-openam.sh"]
