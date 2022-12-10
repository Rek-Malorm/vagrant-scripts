#!/usr/bin/env bash

apt-get update

echo Install base applications
apt-get install vim

echo Install Java 11
apt-get install -y openjdk-11-jre openjdk-11-jdk maven