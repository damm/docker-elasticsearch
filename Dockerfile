FROM damm/java8
MAINTAINER <scott@likens.us>
RUN useradd -m elasticsearch
RUN mkdir -p /data/elasticsearch/shared && mkdir -p /data/elasticsearch/releases && chown elasticsearch:elasticsearch -R /data/elasticsearch
RUN chown -R elasticsearch:elasticsearch /data/elasticsearch/shared
ADD elasticsearch.conf /etc/security/limits.conf
ADD su /etc/pam.d/su
ADD run.sh /run.sh
RUN chmod +x /run.sh
USER elasticsearch
ENV VERSION 1.5.2
RUN cd /data/elasticsearch/releases;wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-${VERSION}.tar.gz && tar zxf elasticsearch-${VERSION}.tar.gz && cd /data/elasticsearch;ln -sf /data/elasticsearch/releases/elasticsearch-${VERSION} /data/elasticsearch/current
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-${VERSION}/config/elasticsearch.yml
RUN /data/elasticsearch/current/bin/plugin -i mobz/elasticsearch-head
RUN /data/elasticsearch/current/bin/plugin -i lmenezes/elasticsearch-kopf
EXPOSE 9200
USER root
ENTRYPOINT /run.sh
