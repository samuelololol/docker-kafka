FROM docker-centos-java:1.8.0_91
MAINTAINER samuelololol <samuelololol@gmail.com>
RUN cd /opt;\
    wget http://apache.mivzakim.net/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz; \
    tar -zxvf kafka_2.10-0.8.2.0.tgz;
COPY ./start_zk.sh           /bin/start_zk.sh
COPY ./start_kafka.sh        /bin/start_kafka.sh
COPY ./kafka_create_topic.sh /bin/kafka_create_topic.sh
COPY ./kafka_list_topics.sh  /bin/kafka_list_topics.sh
EXPOSE 2181 2888 3888 9092
WORKDIR /opt/kafka_2.10-0.8.2.0

