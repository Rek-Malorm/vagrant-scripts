#!/usr/bin/env bash

apt update -y && apt upgrade -y

echo Install base applications
apt install -y vim

echo Install Java 11
apt install -y openjdk-11-jre openjdk-11-jdk maven