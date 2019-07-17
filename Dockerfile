FROM ubuntu

RUN sudo apt-get update && sudo apt-get install java-jdk
RUN echo "deb https://jfrog.bintray.com/artifactory-pro-debs xenial main" | sudo tee -a /etc/apt/sources.list
RUN curl https://bintray.com/user/downloadSubjectPublicKey?username=jfrog | sudo apt-key add -
RUN sudo apt-get update
RUN sudo apt-get install jfrog-artifactory-pro

EXPOSE 8081
