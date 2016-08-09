
# launch zookeeper and kafka

```
# docker-compose up -d
Creating dockerkafka_zk_1
Creating dockerkafka_kafka_1

# docker ps
CONTAINER ID  IMAGE                      COMMAND                CREATED        STATUS        PORTS  NAMES
29b054694b3a  docker-kafka:2.10-0.8.2.0  "/bin/start_kafka.sh"  6 minutes ago  Up 6 minutes         dockerkafka_kafka_1
737acc42ef4a  docker-kafka:2.10-0.8.2.0  "/bin/start_zk.sh"     6 minutes ago  Up 6 minutes         dockerkafka_zk_1
```

# enter container

```
# docker exec -it dockerkafka_kafka_1 /bin/bash
[root@29b054694b3a kafka_2.10-0.8.2.0]#

```
