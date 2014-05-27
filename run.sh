#!/bin/sh
set -e
ulimit -l unlimited
/data/elasticsearch/releases/elasticsearch-1.2.0/bin/elasticsearch
