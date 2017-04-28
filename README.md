# vagrant-confluent-platform

Vagrantfile to start a virtual machine running the Confluent Platform 3.2.x.
The following services are all bundled up and exposed to to host machine: 

- Zookeeper; port 2181
- Apache Kafka; port 9092
- Confluent Kafka REST Proxy; port 8082
- Confluent Schema Registry; port 8081
- Confluent Kafka Connect (Distributed); port 8083
- Confluent Control Center; port 9021

## Prerequisites

- VirtualBox
- Vagrant
- Ansible

## Usage

To use simply clone the repository and run:

`vagrant up`

## Confluent Control Center

Data Streams monitoring is available once there is at least one
source and sink connector. See the `playground/01_basic` directory 
for a simple example.
