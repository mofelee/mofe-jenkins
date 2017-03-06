FROM jenkins:2.32.3-alpine

RUN install-plugins.sh git blueocean ansicolor workflow-aggregator \
    pipeline-stage-view cloudbees-folder ec2
