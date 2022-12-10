#!/usr/bin/env bash

apt-get update && apt-get upgrade

echo Install base applications
sudo apt-get install -y build-essential gcc cmake flatpak
