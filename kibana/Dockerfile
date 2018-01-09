FROM centos:latest

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk.x86_64 wget

RUN useradd kibana && \
    chown -R kibana:kibana /opt

USER kibana
WORKDIR /opt

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-5.5.2-linux-x86_64.tar.gz && \
    tar -xzf kibana-5.5.2-linux-x86_64.tar.gz

WORKDIR kibana-5.5.2-linux-x86_64
COPY kibana.yml config/kibana.yml

USER root
RUN chown -R kibana:kibana config/
USER kibana

CMD bin/kibana
