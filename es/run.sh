#!/bin/sh

BASE=/elasticsearch

# allow for memlock
ulimit -l unlimited

# Set a random node name if not set.
if [ -z "${NODE_NAME}" ]; then
	NODE_NAME=$(uuidgen)
fi
export NODE_NAME=${NODE_NAME}

yes | $BASE/bin/elasticsearch-plugin install io.fabric8:elasticsearch-cloud-kubernetes:5.5.2

# run
chown -R elasticsearch:elasticsearch $BASE
chown -R elasticsearch:elasticsearch /data
su-exec elasticsearch $BASE/bin/elasticsearch
