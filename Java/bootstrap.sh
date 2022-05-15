#!/usr/bin/env bash

apt-get update

echo install Java 11
apt-get install -y openjdk-11-jre openjdk-11-jdk maven

export JAVA_HOME=/usr/lib/jvm/openjdk-11-jdk
export PATH=$PATH:$JAVA_HOME/bin

java --version