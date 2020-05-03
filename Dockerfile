FROM openjdk:8-jre-alpine
ADD target/camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar  camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar
CMD ["/bin/sh","-c","java -jar /camel-ose-springboot-xml-1.0.0-SNAPSHOT.jar"]