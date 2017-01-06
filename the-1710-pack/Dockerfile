FROM openjdk:8-jre-alpine
MAINTAINER Simone <chaufnet@gmail.com>

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache --virtual=.build-deps wget unzip \
	&& apk add --no-cache bash \
	&& wget -O /tmp/minecraft.zip http://solder.endermedia.com/repository/downloads/the-1710-pack/the-1710-pack_0.9.5.zip \
	&& unzip /tmp/minecraft.zip \
	&& rm -f /tmp/minecraft.zip \
	&& apk del .build-deps
RUN java -server -Xmx4G -XX:PermSize=256M -Dfml.queryResult=confirm -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar \
	&& sed -i 's/false/true/g' /app/eula.txt || true

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
VOLUME ["/data"]
