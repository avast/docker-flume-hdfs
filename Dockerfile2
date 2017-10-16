FROM develar/java:8u45
MAINTAINER Petr Krebs, Avast
RUN wget -q http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.0.1ubuntu2.17_amd64.deb -O apt.deb
RUN dpkg -i apt.deb
RUN apt-get install openssh-server 
RUN apk add --update bash && rm -rf /var/cache/apk/*
ENV FLUME_VERSION 1.6.0
ENV FLUME_HOME /opt/lib/flume
RUN mkdir -p /opt/lib && \
    wget -q http://www.eu.apache.org/dist/flume/$FLUME_VERSION/apache-flume-$FLUME_VERSION-bin.tar.gz -O /opt/lib/apache-flume-$FLUME_VERSION-bin.tar.gz && \
    tar xzf /opt/lib/apache-flume-$FLUME_VERSION-bin.tar.gz -C /opt/lib && \
    mv /opt/lib/apache-flume-$FLUME_VERSION-bin /opt/lib/flume && \
    rm /opt/lib/apache-flume-$FLUME_VERSION-bin.tar.gz && \
    mv $FLUME_HOME/conf/flume-conf.properties.template $FLUME_HOME/conf/flume-conf.properties
VOLUME [ "/opt/lib/flume/conf" ]
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
