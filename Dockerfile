FROM damm/java8
MAINTAINER <scott@likens.us>
RUN mkdir -p /data/elasticsearch/shared
RUN mkdir -p /data/elasticsearch/releases
RUN cd /data/elasticsearch/releases;wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz && tar zxf elasticsearch-1.1.1.tar.gz
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-1.1.1/config/elasticsearch.yml
RUN /data/elasticsearch/releases/elasticsearch-1.1.1/bin/plugin -i mobz/elasticsearch-head
EXPOSE 9200
ENTRYPOINT /data/elasticsearch/releases/elasticsearch-1.1.1/bin/elasticsearch
VOLUME ["/data/elasticsearch/shared"]
