FROM docker.elastic.co/logstash/logstash:5.5.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN /usr/share/logstash/bin/logstash-plugin remove x-pack
COPY logstash.yml /usr/share/logstash/config/logstash.yml
USER root
RUN chown -R logstash:logstash /usr/share/logstash/{config,pipeline}
USER logstash
