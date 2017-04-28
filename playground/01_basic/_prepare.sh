#!/bin/bash

# Create topic
kafka-topics --zookeeper localhost:2181 --create --topic poem --partitions 1 --replication-factor 1

# Create source 'poem'
curl -X POST -H "Content-Type: application/json" --data '{"name":"poem","config":{"connector.class":"org.apache.kafka.connect.file.FileStreamSourceConnector","file":"/tmp/totail.txt","name":"poem","topic":"poem"}}' http://localhost:8083/connectors

# Create sink 'poem_dump'
curl -X POST -H "Content-Type: application/json" --data '{"name":"poem_dump","config":{"connector.class":"org.apache.kafka.connect.file.FileStreamSinkConnector","file":"/tmp/dump.txt","topics":"poem","name":"poem_dump"}}' http://localhost:8083/connectors
