FROM jenkins/jenkins
MAINTAINER kai.nahrgang@edu.fh-joanneum.at

USER root
RUN apt-get update \
      && apt-get install -y libltdl7 sudo gem \
      && rm -rf /var/lib/apt/lists/* 
CMD DOCKER_GID=$(stat -c '%g' /var/run/docker.sock) && \
    groupadd -for -g ${DOCKER_GID} docker && \
    usermod -aG docker jenkins && \
    gem install gauntlt
    sudo -E -H -u jenkins bash -c /usr/local/bin/jenkins.sh
