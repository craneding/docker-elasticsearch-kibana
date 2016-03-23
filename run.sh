#!/bin/bash

chown -R elastic:elastic /opt/elasticsearch-$ELASTICSEARCH_VERSION/

chown -R elastic:elastic /opt/kibana-$KIBANA_VERSION-linux-x64/

su elastic -l -c "cd /opt/elasticsearch-$ELASTICSEARCH_VERSION/; ./bin/elasticsearch > ./catalina.out 2>&1 &"

su elastic -l -c "cd /opt/kibana-$KIBANA_VERSION-linux-x64/; ./bin/kibana > ./catalina.out 2>&1 &"
