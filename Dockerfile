FROM ubuntu:14.04
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

# Install Java
RUN apt-get update && apt-get install -y openjdk-7-jre

# Install Selenium Server
RUN apt-get install -y curl && mkdir -p /usr/local/share/selenium && \
	curl -sLo /usr/local/share/selenium/selenium-server.jar http://selenium-release.storage.googleapis.com/2.42/selenium-server-standalone-2.42.2.jar

# Install XVFB
RUN apt-get install -y xvfb

# Install Firefox
RUN apt-get install -y firefox

ENV DISPLAY ":1"
CMD ["/usr/bin/xvfb-run", "/usr/bin/java", "-jar", "/usr/local/share/selenium/selenium-server.jar", "-role", "node", "-hub", "http://selenium-hub:4444/grid/register"]
