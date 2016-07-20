FROM java:8-jre-alpine

RUN apk --no-cache add tini

ADD https://raw.githubusercontent.com/crossbrowsertesting/cbt-tunnel-java/master/cbttunnel.jar /opt/cbttunnel/cbttunnel.jar
ADD ./files /

STOPSIGNAL SIGKILL

CMD ["/sbin/tini", "--", "/opt/cbttunnel/monitor-tunnel"]
