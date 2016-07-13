FROM java:8-jre-alpine

ADD https://raw.githubusercontent.com/crossbrowsertesting/cbt-tunnel-java/master/cbttunnel.jar /opt/cbttunnel/cbttunnel.jar

STOPSIGNAL SIGKILL

CMD ["sh", "-c", "java -jar /opt/cbttunnel/cbttunnel.jar -authkey ${CBT_TUNNEL_AUTHKEY}"]
