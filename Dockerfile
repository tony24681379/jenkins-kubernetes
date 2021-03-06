FROM jenkins:2.46.1
RUN /usr/local/bin/install-plugins.sh \
    workflow-aggregator \
    docker-workflow \
    kubernetes \
    workflow-durable-task-step \
    script-security \
    ansicolor \
    blueocean \
    log-parser \
    git \
    ansible \
    http_request \
    cucumber-testresult-plugin \
    job-dsl

ENV JAVA_OPTS="-Dorg.apache.commons.jelly.tags.fmt.timeZone=Asia/Taipei -Djenkins.install.runSetupWizard=false"

COPY init.groovy.d /usr/share/jenkins/ref/init.groovy.d
