FROM jenkins/jenkins:2.96

USER root

ENV TZ=America/Brasilia

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN cat /etc/os-release

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install -y build-essential nodejs

RUN nodejs --version

RUN npm --version

RUN npm install -g @vue/cli

RUN vue --version

RUN npm install -g quasar-cli

RUN apt-get -y install openjdk-8-jdk

FROM maven:3.5-jdk-8-alpine

RUN mvn --version

USER jenkins

#docker build -t jenkins/vue-quasar .
#docker run -p 8080:8080 -p 50000:50000 jenkins/vue-quasar
