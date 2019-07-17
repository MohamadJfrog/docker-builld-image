FROM ubuntu

RUN apt-get update && apt-get install -y apt-utils && apt-get install -y curl && apt-get install -y gnupg2
RUN apt-get install -y default-jdk
RUN echo "deb https://jfrog.bintray.com/artifactory-pro-debs xenial main" | tee -a /etc/apt/sources.list
RUN curl https://bintray.com/user/downloadSubjectPublicKey?username=jfrog > key.txt
RUN apt-key add key.txt
RUN apt-get update
RUN apt-get install -y jfrog-artifactory-pro
RUN service artifactory start

EXPOSE 8081
