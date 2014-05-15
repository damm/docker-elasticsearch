#!/bin/sh
set -e
ulimit -l unlimited
/data/elasticsearch/releases/elasticsearch-1.1.1/bin/elasticsearch
