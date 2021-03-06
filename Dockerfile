FROM docker.elastic.co/logstash/logstash:6.4.3

LABEL MAINTAINER="roberto cardenas <rcardenas20@gmail.com>"

RUN rm /usr/share/logstash/pipeline/logstash.conf
ADD ./pipeline/ /usr/share/logstash/pipeline/
ADD ./config/pipelines.yml /usr/share/logstash/config/pipelines.yml
ADD ./config/logstash.yml /usr/share/logstash/config/logstash.yml
