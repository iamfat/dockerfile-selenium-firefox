FROM debian:7.6
MAINTAINER jia.huang@geneegroup.com

ENV DEBIAN_FRONTEND noninteractive

# Install Java
RUN apt-get update && apt-get install -y openjdk-7-jre-headless

# Install Selenium Server
RUN apt-get install -y curl && mkdir -p /usr/local/share/selenium && \
	curl -sLo /usr/local/share/selenium/selenium-server.jar http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar

# Install XVFB
RUN apt-get install -y xvfb

# Install Firefox
RUN apt-get install -y iceweasel

ENV HUB_HOST 172.17.42.1
ENV HUB_PORT 4444

CMD /usr/bin/xvfb-run /usr/bin/java -jar /usr/local/share/selenium/selenium-server.jar -role node -hub http://$HUB_HOST:$HUB_PORT/grid/register
