FROM jenkins/jenkins

USER root
RUN apt-get update \
      && apt-get install -y libltdl7 sudo \
      && rm -rf /var/lib/apt/lists/* 
CMD DOCKER_GID=$(stat -c '%g' /var/run/docker.sock) && \
    groupadd -for -g ${DOCKER_GID} docker && \
    usermod -aG docker jenkins && \
    sudo -E -H -u jenkins bash -c /usr/local/bin/jenkins.sh