FROM damm/java
MAINTAINER <scott@likens.us>
RUN mkdir -p /data/elasticsearch/shared
RUN mkdir -p /data/elasticsearch/releases
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.tar.gz /data/elasticsearch/releases
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-1.0.0/config/elasticsearch.yml
RUN /data/elasticsearch/releases/elasticsearch-1.0.0/bin/plugin -i mobz/elasticsearch-head
RUN /data/elasticsearch/releases/elasticsearch-1.0.0/bin/plugin -i elasticsearch/marvel/latest
EXPOSE 9200
ENTRYPOINT /data/elasticsearch/releases/elasticsearch-1.0.0/bin/elasticsearch -f
VOLUME ["/data/elasticsearch/shared"]