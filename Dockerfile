FROM docker.elastic.co/logstash/logstash:6.4.3

LABEL MAINTAINER="roberto cardenas" 
LABEL CONTACT="rcardenas20@gmail.com"

ADD ./pipeline /usr/share/logstash/pipeline