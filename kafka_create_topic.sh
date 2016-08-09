#!/bin/bash
/opt/kafka_2.10-0.8.2.0/bin/kafka-topics.sh --create \
  --zookeeper zk:2181 --replication-factor 1 \
  --partitions 1 --topic $@


