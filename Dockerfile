FROM openjdk:8-jre-alpine
CMD ["mkdir", "xqy"]
COPY target/classes/xquery/test1.txt xqy/test1.txt
ADD target/camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar  camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar
CMD ["/bin/sh","-c","java -jar /camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar"]