FROM damm/java
MAINTAINER <scott@likens.us>
RUN mkdir -p /data/elasticsearch/shared
RUN mkdir -p /data/elasticsearch/releases
RUN cd /data/elasticsearch/releases;wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.0.tar.gz && tar zxf elasticsearch-1.2.0.tar.gz
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-1.2.0/config/elasticsearch.yml
RUN /data/elasticsearch/releases/elasticsearch-1.2.0/bin/plugin -i mobz/elasticsearch-head
EXPOSE 9200
ADD run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT /run.sh
VOLUME ["/data/elasticsearch/shared"]
