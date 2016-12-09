FROM alpine:edge
MAINTAINER wangjh <wangjh@bcc.ac.cn>
RUN cat /etc/apk/repositories
ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /
RUN apk add --no-cache ttf-dejavu openjdk8-jre nodejs git
CMD ["java", "-jar", "/jenkins.war"]
