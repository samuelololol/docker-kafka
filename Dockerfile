FROM docker-centos-java:1.8.0_91
MAINTAINER samuelololol <samuelololol@gmail.com>
RUN cd /opt;\
    wget http://apache.mivzakim.net/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz; \
    tar -zxvf kafka_2.10-0.8.2.0.tgz;
COPY ./start_zk.sh /bin/start_zk.sh
COPY ./start_kafka.sh /bin/start_kafka.sh
WORKDIR /opt/kafka_2.10-0.8.2.0

