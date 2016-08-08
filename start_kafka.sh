#!/bin/bash
sleep 10
#start zookeeper
cd /opt
sed -i "/zookeeper.connect=/c\zookeeper.connect=zk:2181" /opt/kafka_2.10-0.8.2.0/config/server.properties 
/opt/kafka_2.10-0.8.2.0/bin/kafka-server-start.sh /opt/kafka_2.10-0.8.2.0/config/server.properties 
