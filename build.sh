#!/bin/bash

docker build -t dinghz/elasticsearch-kibana .

# docker run -dti -p 9200:9200 -p 9300:9300 -p 5601:5601 --name elasticsearch-kibana dinghz/elasticsearch-kibana
