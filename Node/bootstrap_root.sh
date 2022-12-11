#!/usr/bin/env bash

echo Add flatpak repository
add-apt-repository ppa:flatpak/stable

echo Upgrade existing Applications
apt update -y && apt upgrade -y

echo Install Flatpak
apt install -y flatpak
echo Install build essentials
apt install -y build-essential gcc cmake

echo Install node
apt install -y npm nodejs

echo Install Firefox
apt install -y firefox