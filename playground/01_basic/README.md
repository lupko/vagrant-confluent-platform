# Basic Source-Sink Test

This test streams data appended to source file `/tmp/totail.txt` through Kafka and into `/tmp/dump.txt`. It is a basic, Rube-Goldberg machine demonstration of the Confluent Platform:

- New Kafka topic `poem` is created
- Source and sink connectors are defined through REST API
- Rows are appended to `/tmp/totail.txt`
- Rows pop up in `/tmp/dump.txt`
- Confluent Control Center (http://localhost:9021) can be used to monitor Kafka and the data stream

It is based on example published in Confluent Control Center docs.

## Run test

0. Log into vagrant machine `vagrant ssh`
1. Run `/vagrant/tests/01_basic/_prepare.sh`. This will create Kafka topic, one source and one sink. 
2. Run `/vagrant/tests/01_basic/totail.sh`. This will start appending data to `/tmp/totail.txt` and run until killed.
3. Observe the greatness. Check http://localhost:9021

Fun exercise is to create another connector sink reading from the `poem` topic but writing to another destination. Take `curl` command from prepare script, update payload so that the connector is named differently.
