Elasticsearch
=========

This image is one way to deploy Logstash using [Docker][docker].  It uses [damm/java][dammjava] to provide Java.

Usage
======

+ Start Elasticsearch

```shell
docker run -d -name elasticsearch -p 9200:9200 -v /data/elasticsearch/shared:/data/elasticsearch/shared damm/elasticsearch
```

+ More Memory?

```shell
docker run -d -name elasticsearch -p 9200:9200 -v /data/elasticsearch/shared:/data/elasticsearch/shared -e ES_MIN_MEM=512m -e ES_MAX_MEM=4g damm/elasticsearch
```


[docker]: http://www.docker.io
[dammjava]: http://github.com/damm/docker-java
[dammelasticsearch]: http://github.com/damm/docker-elasticsearch
[dammredis]: http://github.com/damm/damm-redis

License and Author
-------------------

The MIT License (MIT)

Copyright (c) 2014, Scott M. Likens

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
