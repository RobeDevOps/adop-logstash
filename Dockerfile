FROM docker.elastic.co/logstash/logstash:6.4.3

LABEL MAINTAINER="roberto cardenas" 
LABEL CONTACT="rcardenas20@gmail.com"

ADD ./pipeline/ /usr/share/logstash/pipeline/
ADD ./config/pipelines.yml /usr/share/logstash/config/pipelines.yml
RUN rm /usr/share/logstash/pipeline/logstash.yml
