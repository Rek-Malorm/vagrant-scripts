#!/usr/bin/env bash

export JAVA_HOME=/usr/lib/jvm/openjdk-11-jdk
export PATH=$PATH:$JAVA_HOME/bin

java --version

wget -O ideaIU.tar.gz -q https://download.jetbrains.com/idea/ideaIU-2022.3.tar.gz
sudo tar -xzf ideaIU.tar.gz -C /opt