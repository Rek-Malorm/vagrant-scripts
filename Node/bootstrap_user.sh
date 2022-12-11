#!/usr/bin/env bash

echo Enable corepack
sudo npm install -g corepack
corepack enable

echo Install yarn
corepack prepare yarn@stable --activate

wget -O ideaIU.tar.gz -q https://download.jetbrains.com/idea/ideaIU-2022.3.tar.gz
sudo tar -xzf ideaIU.tar.gz -C /opt