FROM jenkinsci/jenkins:alpine

RUN install-plugins.sh git blueocean ansicolor workflow-aggregator \
    pipeline-stage-view cloudbees-folder ec2

ENV JAVA_OPTS -Xms512m -Xmx1536m
