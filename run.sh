#!/bin/sh
set -e
su -m - elasticsearch -c '/data/elasticsearch/current/bin/elasticsearch'
