FROM anapsix/alpine-java:8_server-jre_unlimited
ADD *.jar myapp.jar
ENTRYPOINT [ "sh", "-c", "java $java_option -Djava.security.egd=file:/dev/./urandom -jar myapp.jar"]
EXPOSE 8999