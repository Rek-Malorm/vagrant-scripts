#!/usr/bin/env bash

apt update -y && apt upgrade -y

echo Install base applications
apt install -y build-essential gcc cmake flatpak
